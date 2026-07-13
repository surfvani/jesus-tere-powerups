#!/usr/bin/env bash
# install.sh — conecta cada skill de skills/ con Claude Code, más cualquier
# herramienta incluida en un skill y sus entornos (venv). Idempotente: se
# puede re-ejecutar sin peligro.
#
# Qué hace, por cada skill:
#   1. Crea un enlace simbólico de la carpeta del skill en ~/.claude/skills/<nombre>/.
#   2. Busca "herramientas incluidas" — archivos ejecutables en la raíz del skill
#      cuya extensión NO sea {md,txt,json,yaml,yml} (ni archivos ocultos) —
#      y enlaza cada una en ~/.local/bin/<nombre>.
#   3. Si existe skills/<nombre>/requirements.txt Y NO existe
#      ~/.config/<nombre>/venv/, crea el venv ahí e instala los requisitos
#      con pip (una sola vez por ordenador).
#
# Re-ejecutar en un ordenador ya configurado: los enlaces se reconcilian,
# los venv se dejan en paz (borra el venv para forzar reconstrucción).

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$REPO_DIR/skills"
SKILLS_DEST="$HOME/.claude/skills"
BIN_DEST="$HOME/.local/bin"
CONFIG_BASE="$HOME/.config"

if [[ ! -d "$SKILLS_SRC" ]]; then
  echo "ERROR: $SKILLS_SRC no existe." >&2
  exit 1
fi

mkdir -p "$SKILLS_DEST" "$BIN_DEST"

# ────────── ayudante: ¿este archivo es una herramienta incluida en el skill? ──────────
is_bundled_tool() {
  local f="$1"
  local base
  base="$(basename "$f")"
  # Saltar archivos ocultos
  [[ "$base" == .* ]] && return 1
  # Saltar extensiones conocidas de documentación/configuración
  case "$base" in
    *.md|*.txt|*.json|*.yaml|*.yml) return 1 ;;
  esac
  # Debe ser un archivo normal y ejecutable
  [[ -f "$f" && -x "$f" ]]
}

# ────────── ayudante: enlazar una herramienta incluida en ~/.local/bin/ ──────────
link_bundled_tool() {
  local src="$1"
  local skill_name="$2"
  local base
  base="$(basename "$src")"
  local target="$BIN_DEST/$base"

  if [[ -L "$target" ]]; then
    local current
    current="$(readlink "$target")"
    if [[ "$current" == "$src" ]]; then
      echo "  OK     $skill_name/$base -> $BIN_DEST (enlace ya correcto)"
      return 0
    fi
    echo "  FIX    $skill_name/$base -> $BIN_DEST (apuntaba a $current, re-apuntando)"
    rm "$target"
    ln -s "$src" "$target"
    return 0
  fi

  if [[ -e "$target" ]]; then
    echo "  ERROR: $target existe y NO es un enlace simbólico. Me niego a sobrescribirlo." >&2
    exit 1
  fi

  ln -s "$src" "$target"
  echo "  LINK   $skill_name/$base -> $BIN_DEST"
}

# ────────── ayudante: asegurar el venv del skill ──────────
ensure_skill_venv() {
  local skill_path="$1"
  local skill_name="$2"
  local req="$skill_path/requirements.txt"

  [[ -f "$req" ]] || return 0  # sin requirements.txt = no hace falta venv

  local venv_dir="$CONFIG_BASE/$skill_name/venv"
  if [[ -d "$venv_dir" ]]; then
    echo "  OK     el venv de $skill_name ya existe en $venv_dir (bórralo para reconstruir)"
    return 0
  fi

  if ! command -v python3 >/dev/null 2>&1; then
    echo "  AVISO  $skill_name necesita un venv pero python3 no está en el PATH — lo salto" >&2
    return 0
  fi

  echo "  VENV   $skill_name → $venv_dir (puede tardar un minuto)"
  mkdir -p "$(dirname "$venv_dir")"
  python3 -m venv "$venv_dir"
  "$venv_dir/bin/pip" install --quiet --upgrade pip
  "$venv_dir/bin/pip" install --quiet -r "$req"
  echo "  LISTO  venv de $skill_name preparado"
}

# ────────── bucle principal ──────────
shopt -s nullglob
for skill_path in "$SKILLS_SRC"/*/; do
  skill_name="$(basename "$skill_path")"
  skill_path_clean="${skill_path%/}"
  target="$SKILLS_DEST/$skill_name"

  echo "→ $skill_name"

  # 1. Enlazar la carpeta del skill en ~/.claude/skills/
  if [[ -L "$target" ]]; then
    current="$(readlink "$target")"
    if [[ "$current" == "$skill_path_clean" ]]; then
      echo "  OK     carpeta del skill (enlace ya correcto)"
    else
      echo "  FIX    carpeta del skill (apuntaba a $current, re-apuntando)"
      rm "$target"
      ln -s "$skill_path_clean" "$target"
    fi
  elif [[ -e "$target" ]]; then
    echo "  ERROR: $target existe y NO es un enlace simbólico. Me niego a sobrescribirlo." >&2
    exit 1
  else
    ln -s "$skill_path_clean" "$target"
    echo "  LINK   carpeta del skill -> $SKILLS_DEST"
  fi

  # 2. Enlazar las herramientas incluidas en ~/.local/bin/
  for f in "$skill_path"*; do
    if is_bundled_tool "$f"; then
      link_bundled_tool "$f" "$skill_name"
    fi
  done

  # 3. Asegurar el venv del skill si hay requirements.txt
  ensure_skill_venv "$skill_path_clean" "$skill_name"
done

echo
echo "Hecho."
echo "  Skills:                 $SKILLS_DEST"
echo "  Herramientas incluidas: $BIN_DEST"
echo "  Venvs de skills:        $CONFIG_BASE/<nombre-skill>/venv (cuando hay requirements.txt)"
