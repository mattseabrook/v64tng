#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd -- "$project_dir/../.." && pwd)"
reference="$repo_dir/research/v32tng/v32tng.exe"
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
verify_hash "$reference"

(
    cd "$project_dir"
    nasm -f bin \
        -DREFERENCE_FILE="\"$reference\"" \
        -o "$rebuilt" \
        main.asm
)

verify_hash "$rebuilt"
cmp --silent "$reference" "$rebuilt"
echo "v32tng 1.02b1: byte-identical PE rebuild verified"
