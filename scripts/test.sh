#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

# The base-only scaffold has no source tests yet. This confirms every project configures.
./gradlew --no-daemon check
