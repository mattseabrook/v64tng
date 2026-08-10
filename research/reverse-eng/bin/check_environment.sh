#!/usr/bin/env bash
set -euo pipefail

missing=0
for command_name in git java nasm ndisasm objdump python3 rg sha256sum cmp; do
    if command -v "$command_name" >/dev/null 2>&1; then
        command_path="$(command -v "$command_name")"
        printf '%-16s %s\n' "$command_name" "$command_path"
    else
        printf '%-16s MISSING\n' "$command_name" >&2
        missing=1
    fi
done

ghidra_headless="${GHIDRA_HEADLESS:-/opt/ghidra/support/analyzeHeadless}"
if [[ -x "$ghidra_headless" ]]; then
    printf '%-16s %s\n' "analyzeHeadless" "$ghidra_headless"
else
    printf '%-16s MISSING (%s)\n' "analyzeHeadless" "$ghidra_headless" >&2
    missing=1
fi

if (( missing != 0 )); then
    echo "Reverse-engineering environment is incomplete." >&2
    exit 1
fi

echo "Reverse-engineering environment is ready."
