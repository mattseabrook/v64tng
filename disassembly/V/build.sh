#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd -- "$project_dir/../.." && pwd)"
build_dir="$project_dir/build"
tool_dir="$build_dir/toolchain"

mkdir -p "$build_dir/reference" "$tool_dir"

find_unlzexe() {
    if command -v unlzexe >/dev/null 2>&1; then
        command -v unlzexe
        return
    fi
    if [[ -x "$tool_dir/bin/unlzexe" ]]; then
        printf '%s\n' "$tool_dir/bin/unlzexe"
        return
    fi
    if ! command -v cargo >/dev/null 2>&1; then
        echo "error: unlzexe is absent and cargo is unavailable" >&2
        exit 1
    fi
    echo "Bootstrapping pinned MIT-licensed lzexe 0.1.1 tool..." >&2
    cargo install lzexe --version 0.1.1 --locked --root "$tool_dir" >&2
    printf '%s\n' "$tool_dir/bin/unlzexe"
}

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

packed="$repo_dir/research/DOS/130/V.EXE"
reference="$build_dir/reference/V130-unpacked.exe"
rebuilt="$build_dir/V130-rebuilt-unpacked.exe"
packed_hash="e01c3a49cede63ad409e67ce10fdb9f98c6f42600cdfd67124b0d03f1c001585"
unpacked_hash="f2f7febb70b5008ee94e535b0224e918eeec4c71404c899c0d6b50f10c0816c4"

verify_hash "$packed" "$packed_hash"

if rg --line-number '^[[:space:]]*incbin([[:space:]]|$)' \
    "$project_dir/main.asm" "$project_dir/src"; then
    echo "error: lossless source tree contains an incbin directive" >&2
    exit 1
fi

unpacker="$(find_unlzexe)"
"$unpacker" "$packed" "$reference"
verify_hash "$reference" "$unpacked_hash"

(
    cd "$project_dir"
    nasm -f bin -o "$rebuilt" main.asm
)

verify_hash "$rebuilt" "$unpacked_hash"
cmp --silent "$reference" "$rebuilt"
echo "V 1.30: byte-identical unpacked rebuild verified"
