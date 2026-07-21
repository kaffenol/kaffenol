#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

# A Kotlin formatter will be wired in when Kotlin source is introduced.
./gradlew --no-daemon help >/dev/null
echo "No source formatter is configured during the scaffold phase."
