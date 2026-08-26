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

# ────────── personas: enlazar personas/*.md en ~/.claude/personas/ ──────────
#
# Solo se tocan las personas QUE VIENEN EN EL REPO. Las personas propias del
# ordenador (las que no están en personas/) se quedan intactas — nunca se leen,
# ni se mueven, ni se borran.
#
# Si en ~/.claude/personas/ ya hay un archivo real con el nombre de una persona
# del repo, MANDA EL REPO: se guarda una copia de seguridad al lado
# (nombre.md.copia_AAAA-MM-DD) y se sustituye por el enlace al repo. A partir de
# ahí, cada ./pull.sh actualiza esa persona automáticamente.
PERSONAS_SRC="$REPO_DIR/personas"
PERSONAS_DEST="$HOME/.claude/personas"

if [[ -d "$PERSONAS_SRC" ]]; then
  mkdir -p "$PERSONAS_DEST"
  for persona_file in "$PERSONAS_SRC"/*.md; do
    [[ -e "$persona_file" ]] || continue
    base="$(basename "$persona_file")"
    target="$PERSONAS_DEST/$base"
    echo "→ persona: $base"
    if [[ -L "$target" ]]; then
      current="$(readlink "$target")"
      if [[ "$current" == "$persona_file" ]]; then
        echo "  OK     persona (enlace ya correcto)"
      else
        echo "  FIX    persona (apuntaba a $current, re-apuntando)"
        rm "$target"
        ln -s "$persona_file" "$target"
      fi
    elif [[ -e "$target" ]]; then
      # Archivo real con el nombre de una persona del repo: manda el repo.
      # Copia de seguridad al lado y se sustituye por el enlace.
      backup="$target.copia_$(date +%Y-%m-%d)"
      n=1
      while [[ -e "$backup" ]]; do
        backup="$target.copia_$(date +%Y-%m-%d)-$n"
        n=$((n + 1))
      done
      mv "$target" "$backup"
      ln -s "$persona_file" "$target"
      echo "  REEMPL persona (copia de seguridad: $(basename "$backup"))"
    else
      ln -s "$persona_file" "$target"
      echo "  LINK   persona -> $PERSONAS_DEST"
    fi
  done
fi

# ────────── bloque global en ~/.claude/CLAUDE.md ──────────
#
# ~/.claude/CLAUDE.md son las reglas globales: se cargan en TODAS las sesiones,
# se elija la persona que se elija — o ninguna. El repo mantiene ahí UN bloque
# delimitado por marcadores. Todo lo que el usuario haya escrito FUERA de los
# marcadores se respeta: no se lee, no se mueve, no se borra.
#
#   - No existe el archivo          → se crea con el bloque.
#   - Existe y ya tiene marcadores  → se sustituye SOLO lo de dentro.
#   - Existe y no tiene marcadores  → el bloque se añade al final.
#   - No hay nada que cambiar       → no se toca el archivo ni se hace copia.
#
# Antes de cualquier modificación real se guarda CLAUDE.md.copia_AAAA-MM-DD.

GLOBAL_SRC="$REPO_DIR/global/REGISTRO.md"
CLAUDE_MD="$HOME/.claude/CLAUDE.md"
BEGIN_MARK="<!-- BEGIN jesus-tere-powerups — no editar a mano -->"
END_MARK="<!-- END jesus-tere-powerups -->"

if [[ -f "$GLOBAL_SRC" ]]; then
  echo "→ bloque global: ~/.claude/CLAUDE.md"
  mkdir -p "$(dirname "$CLAUDE_MD")"
  tmp="$(mktemp "$(dirname "$CLAUDE_MD")/.jtp_claudemd.XXXXXX")"

  if [[ ! -f "$CLAUDE_MD" ]]; then
    { printf '%s\n' "$BEGIN_MARK"; cat "$GLOBAL_SRC"; printf '%s\n' "$END_MARK"; } > "$tmp"
  elif grep -qF -- "$BEGIN_MARK" "$CLAUDE_MD" && grep -qF -- "$END_MARK" "$CLAUDE_MD"; then
    awk -v b="$BEGIN_MARK" -v e="$END_MARK" -v f="$GLOBAL_SRC" '
      $0 == b { print; while ((getline l < f) > 0) print l; close(f); skip = 1; next }
      $0 == e { skip = 0 }
      !skip   { print }
    ' "$CLAUDE_MD" > "$tmp"
  else
    { cat "$CLAUDE_MD"; printf '\n'; printf '%s\n' "$BEGIN_MARK"; cat "$GLOBAL_SRC"; printf '%s\n' "$END_MARK"; } > "$tmp"
  fi

  if [[ -f "$CLAUDE_MD" ]] && cmp -s "$tmp" "$CLAUDE_MD"; then
    echo "  OK     bloque ya al día (archivo intacto)"
    rm -f "$tmp"
  else
    if [[ -f "$CLAUDE_MD" ]]; then
      backup="$CLAUDE_MD.copia_$(date +%Y-%m-%d)"
      n=1
      while [[ -e "$backup" ]]; do
        backup="$CLAUDE_MD.copia_$(date +%Y-%m-%d)-$n"
        n=$((n + 1))
      done
      cp "$CLAUDE_MD" "$backup"
      echo "  COPIA  $(basename "$backup")"
    fi
    mv "$tmp" "$CLAUDE_MD"
    chmod 644 "$CLAUDE_MD"
    echo "  ESCRITO bloque del Registro por defecto"
  fi
fi

# ────────── ajuste de Claude Code: herramientas de tareas ──────────
#
# Casi todos los skills de este repo dicen «empieza creando una lista de tareas».
# En las versiones nuevas de Claude Code esas herramientas (TaskCreate,
# TaskUpdate, TaskList, TaskGet) vienen APAGADAS por defecto con los modelos
# nuevos — así que el skill pediría una herramienta que no existe y la lista no
# se crearía, en silencio.
#
# Se encienden con una variable dentro de ~/.claude/settings.json:
#     "env": { "CLAUDE_CODE_ENABLE_TODO_TOOLS": "1" }
#
# Aquí se AÑADE esa clave respetando todo lo demás del archivo (modelo, tema,
# permisos, plugins, lo que haya). Antes de cualquier cambio real se guarda
# settings.json.copia_AAAA-MM-DD. Es idempotente: si ya está puesta, no se toca
# el archivo ni se hace copia. Al final se relee el archivo YA INSTALADO para
# comprobar que la clave ha aterrizado de verdad — un fallo silencioso aquí
# dejaría las listas de tareas muertas sin que nadie se enterase.

SETTINGS="$HOME/.claude/settings.json"
TODO_KEY="CLAUDE_CODE_ENABLE_TODO_TOOLS"

echo "→ ajuste: herramientas de tareas ($TODO_KEY)"

if ! command -v python3 >/dev/null 2>&1; then
  echo "  AVISO  python3 no está en el PATH — no puedo tocar settings.json." >&2
  echo "         Añádelo a mano en $SETTINGS:  \"env\": { \"$TODO_KEY\": \"1\" }" >&2
else
  mkdir -p "$(dirname "$SETTINGS")"

  if python3 - "$SETTINGS" "$TODO_KEY" <<'PY'
import datetime, json, os, shutil, sys

path, key = sys.argv[1], sys.argv[2]

if os.path.exists(path):
    try:
        with open(path, encoding="utf-8") as fh:
            data = json.load(fh)
    except (ValueError, OSError):
        print("  AVISO  settings.json no es JSON válido — lo dejo intacto.")
        sys.exit(0)
    if not isinstance(data, dict):
        print("  AVISO  settings.json no tiene la forma esperada — lo dejo intacto.")
        sys.exit(0)
else:
    data = {}

env = data.get("env")
if not isinstance(env, dict):
    env = {}

if env.get(key) == "1":
    print("  OK     ya estaba puesto (archivo intacto)")
    sys.exit(0)

if os.path.exists(path):
    stamp = datetime.date.today().isoformat()
    backup = "%s.copia_%s" % (path, stamp)
    n = 1
    while os.path.exists(backup):
        backup = "%s.copia_%s-%d" % (path, stamp, n)
        n += 1
    shutil.copy2(path, backup)
    print("  COPIA  %s" % os.path.basename(backup))

env[key] = "1"
data["env"] = env

tmp = path + ".jtp_tmp"
with open(tmp, "w", encoding="utf-8") as fh:
    json.dump(data, fh, indent=2, ensure_ascii=False)
    fh.write("\n")
os.replace(tmp, path)
print("  ESCRITO %s=1" % key)
PY
  then :; else
    echo "  AVISO  no he podido escribir settings.json — habrá que ponerlo a mano." >&2
  fi

  # Verificación: releer el archivo YA INSTALADO y comprobar la clave.
  if python3 - "$SETTINGS" "$TODO_KEY" <<'PY'
import json, sys

path, key = sys.argv[1], sys.argv[2]
try:
    with open(path, encoding="utf-8") as fh:
        got = json.load(fh).get("env", {}).get(key)
except Exception:
    got = None

if got == "1":
    print("  OK     verificado en ~/.claude/settings.json")
    sys.exit(0)

print("  FALLO  %s no ha quedado puesto (encontrado: %r)" % (key, got))
print("         Las listas de tareas de los skills no funcionarán en las sesiones nuevas.")
sys.exit(1)
PY
  then :; else
    true   # el aviso ya está impreso; esto no debe abortar la instalación
  fi
fi

echo
echo "Hecho."
echo "  Skills:                 $SKILLS_DEST"
echo "  Personas:               $PERSONAS_DEST"
echo "  Reglas globales:        $CLAUDE_MD (solo el bloque entre marcadores)"
echo "  Ajuste de tareas:       $SETTINGS (clave $TODO_KEY)"
echo "  Herramientas incluidas: $BIN_DEST"
echo "  Venvs de skills:        $CONFIG_BASE/<nombre-skill>/venv (cuando hay requirements.txt)"
echo
echo "Cierra esta sesión de Claude Code y abre una nueva para que todo esté activo."
