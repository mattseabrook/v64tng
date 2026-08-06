#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
build_dir="$project_dir/build"

mkdir -p "$build_dir"

verify_hash() {
    local file="$1"
    local expected="$2"
    local actual
    actual="$(sha256sum "$file" | cut -d' ' -f1)"
    if [[ "$actual" != "$expected" ]]; then
        echo "error: hash mismatch for $file" >&2
        echo "expected $expected" >&2
        echo "actual   $actual" >&2
        exit 1
    fi
}

if [[ $# -ne 0 ]]; then
    echo "usage: ./build.sh" >&2
    exit 2
fi

rebuilt="$build_dir/V130-rebuilt-unpacked.exe"
deploy_dir="/mnt/T7G"
deployed="$deploy_dir/T7G.EXE"
unpacked_hash="f2f7febb70b5008ee94e535b0224e918eeec4c71404c899c0d6b50f10c0816c4"

if rg --line-number '^[[:space:]]*incbin([[:space:]]|$)' \
    "$project_dir/src"; then
    echo "error: lossless source tree contains an incbin directive" >&2
    exit 1
fi

(
    cd "$project_dir"
    nasm -f bin -o "$rebuilt" src/main.asm
)

verify_hash "$rebuilt" "$unpacked_hash"
echo "V 1.30: canonical unpacked SHA-256 verified"

if [[ "${V_DISASSEMBLY_NO_DEPLOY:-0}" != "1" ]]; then
    sudo mkdir -p "$deploy_dir"
    sudo install -m 0755 "$rebuilt" "$deployed"
    verify_hash "$deployed" "$unpacked_hash"
    echo "V 1.30: deployed rebuilt player to $deployed"
else
    echo "V 1.30: deployment skipped (V_DISASSEMBLY_NO_DEPLOY=1)"
fi
