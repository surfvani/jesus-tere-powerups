#!/usr/bin/env bash
# pull.sh — actualiza este repo desde origin para recibir los skills nuevos.
# Se ejecuta desde los ordenadores de Jesús y Tere (se puede programar con cron).

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

if ! git rev-parse --git-dir > /dev/null 2>&1; then
  echo "ERROR: $REPO_DIR no es un repositorio git." >&2
  exit 1
fi

if ! git remote get-url origin > /dev/null 2>&1; then
  echo "ERROR: no hay remoto 'origin' configurado. Clona el repo de nuevo o ejecuta 'git remote add origin <url>' a mano." >&2
  exit 1
fi

git pull --ff-only origin "$(git rev-parse --abbrev-ref HEAD)"
echo "Al día."

# Auto-ejecuta install.sh para que cualquier skill nuevo / herramienta / venv
# quede conectado inmediatamente. install.sh es idempotente — seguro en cada pull.
"$REPO_DIR/install.sh"
