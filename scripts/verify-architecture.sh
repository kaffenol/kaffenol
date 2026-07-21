#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

required=(
    AGENTS.md
    README.md
    settings.gradle.kts
    docs/INDEX.md
    docs/product/vision.md
    docs/architecture/overview.md
    docs/architecture/module-boundaries.md
)

for path in "${required[@]}"; do
    if [[ ! -f "$path" ]]; then
        echo "Missing required repository file: $path" >&2
        exit 1
    fi
done

if find core -type f \( -name '*.kt' -o -name '*.kts' \) -print0 | xargs -0 -r grep -En '(^|[^[:alnum:]_])(android\.|androidx\.compose|java\.awt|javax\.swing|javafx\.)' ; then
    echo "A core source file imports a forbidden UI or platform API." >&2
    exit 1
fi

echo "Repository structure and current architecture boundaries verified."
