#!/usr/bin/env bash
# update.sh — prepara, commitea y sube los cambios a origin.
# Uso: ./update.sh "mensaje del commit"
#   Si no se da mensaje, usa "Actualizar skills" con fecha y hora.
# Se ejecuta desde el ordenador donde se editan los skills (Marc).

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

MSG="${1:-Actualizar skills ($(date -u +%Y-%m-%d_%H:%M:%SZ))}"

if ! git rev-parse --git-dir > /dev/null 2>&1; then
  echo "ERROR: $REPO_DIR no es un repositorio git." >&2
  exit 1
fi

git add -A

if git diff --cached --quiet; then
  echo "No hay cambios que commitear."
else
  git commit -m "$MSG"
  echo "Commit hecho: $MSG"
fi

if git remote get-url origin > /dev/null 2>&1; then
  git push origin HEAD
  echo "Subido a origin."
else
  echo "AVISO: no hay remoto 'origin' configurado — no se sube nada."
fi
