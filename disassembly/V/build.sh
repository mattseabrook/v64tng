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
packed="$build_dir/V130-rebuilt-packed.exe"
deploy_dir="$project_dir/../../T7G"
deployed="$deploy_dir/V.EXE"
packed_backup="$deploy_dir/V.EXE.BAK"
unpacked_hash="f2f7febb70b5008ee94e535b0224e918eeec4c71404c899c0d6b50f10c0816c4"
packed_hash="e01c3a49cede63ad409e67ce10fdb9f98c6f42600cdfd67124b0d03f1c001585"

if rg --line-number '^[[:space:]]*incbin([[:space:]]|$)' \
    "$project_dir/src" "$project_dir/tools" -g '*.asm'; then
    echo "error: lossless source tree contains an incbin directive" >&2
    exit 1
fi

stage="$(mktemp -d "$build_dir/.v130.XXXXXX")"
trap 'rm -rf -- "$stage"' EXIT
unpacked_stage="$stage/$(basename "$rebuilt")"
packed_stage="$stage/$(basename "$packed")"

(
    cd "$project_dir"
    nasm -f bin -o "$unpacked_stage" src/main.asm
)
verify_hash "$unpacked_stage" "$unpacked_hash"
echo "V 1.30: canonical unpacked SHA-256 verified"

nasm -f bin -o "$stage/lzexe91-stub.bin" "$project_dir/tools/lzexe91_stub.asm"
python3 "$project_dir/tools/pack_lzexe.py" \
    "$unpacked_stage" "$stage/lzexe91-stub.bin" "$packed_stage"
verify_hash "$packed_stage" "$packed_hash"
echo "V 1.30: retail LZEXE-packed SHA-256 verified"

mv -f -- "$unpacked_stage" "$rebuilt"
mv -f -- "$packed_stage" "$packed"

if [[ "${V_DISASSEMBLY_NO_DEPLOY:-0}" != "1" ]]; then
    mkdir -p "$deploy_dir"
    if [[ -f "$deployed" && ! -e "$packed_backup" ]]; then
        verify_hash "$deployed" "$packed_hash"
        cp --preserve=mode,timestamps "$deployed" "$packed_backup"
    fi
    install -m 0755 "$rebuilt" "$deployed"
    verify_hash "$deployed" "$unpacked_hash"
    echo "V 1.30: deployed rebuilt player to $deployed"
else
    echo "V 1.30: deployment skipped (V_DISASSEMBLY_NO_DEPLOY=1)"
fi
