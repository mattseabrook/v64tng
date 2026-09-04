#!/usr/bin/env bash
set -euo pipefail

mod_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
nasm -f bin "$mod_dir/DEMO.GRV.asm" -o "$mod_dir/DEMO.GRV"

actual_size="$(stat -c '%s' "$mod_dir/DEMO.GRV")"
if [[ "$actual_size" != "57" ]]; then
    echo "error: unexpected DEMO.GRV size: $actual_size (expected 57)" >&2
    exit 1
fi

sha256sum "$mod_dir/DEMO.GRV"

