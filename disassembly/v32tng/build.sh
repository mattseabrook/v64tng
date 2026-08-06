#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
build_dir="$project_dir/build"
rebuilt="$build_dir/v32tng-rebuilt.exe"
expected_hash="3c8c3fd3edc27717ae2a08b1f98c7a58f72bd91860a080a29e40d1da8854c36c"

verify_hash() {
    local file="$1"
    local actual
    actual="$(sha256sum "$file" | cut -d' ' -f1)"
    if [[ "$actual" != "$expected_hash" ]]; then
        echo "error: hash mismatch for $file" >&2
        echo "expected $expected_hash" >&2
        echo "actual   $actual" >&2
        exit 1
    fi
}

mkdir -p "$build_dir"

if rg --line-number '^[[:space:]]*incbin([[:space:]]|$)' \
    "$project_dir/src"; then
    echo "error: lossless source tree contains an incbin directive" >&2
    exit 1
fi

(
    cd "$project_dir"
    nasm -f bin -o "$rebuilt" src/main.asm
)

verify_hash "$rebuilt"
echo "v32tng 1.02b1: canonical PE SHA-256 verified"
