#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

if [ -d ".venv" ]; then
  echo ".venv already exists. To recreate, remove it first: rm -rf .venv"
  exit 0
fi

echo "Creating virtualenv in $ROOT_DIR/.venv"
if command -v python3 >/dev/null 2>&1; then
  python3 -m venv .venv
else
  python -m venv .venv
fi

echo "Created .venv. Activate with: source .venv/bin/activate"
