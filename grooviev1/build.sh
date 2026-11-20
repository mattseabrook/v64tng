#!/usr/bin/env bash
# Native host builds plus explicit Windows x64, Linux and macOS targets.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$ROOT_DIR")"
OUT_DIR="$ROOT_DIR/build"
CACHE_ROOT="${V64TNG_DEPS_CACHE:-${XDG_CACHE_HOME:-$HOME/.cache}/v64tng}"

case "$(uname -s)" in
    Linux) HOST_OS=linux ;;
    Darwin) HOST_OS=macos ;;
    MINGW*|MSYS*|CYGWIN*) HOST_OS=windows ;;
    *) echo "Unsupported host operating system: $(uname -s)" >&2; exit 1 ;;
esac

usage() {
    cat <<EOF
Usage: ./build.sh [windows|linux|macos]

No target: build for this host ($HOST_OS).
  windows  Native Windows x64 PE/COFF executable; Clang/MSVC ABI and static /MT CRT.
  linux    Native Linux CLI; CXX_LINUX, CXX_NATIVE or CXX can select its compiler.
  macos    Native macOS CLI; Apple Clang by default, or an explicit CXX_MACOS.

Windows: build/grooviev1.exe
Linux:   build/grooviev1-linux
macOS:   build/grooviev1-macos
Native host builds also provide build/grooviev1-native and build/grooviev1 aliases.

Cross-Windows builds need clang-cl, lld-link and Microsoft SDK/CRT files.
Existing /opt/winsdk or the shared v64tng cache is detected automatically;
if SDK files are absent, xwin downloads them (accepting the Microsoft SDK license).
Cross-macOS builds need osxcross, or CXX_MACOS, or SDKROOT plus Clang/ld64.lld.
Cross-Linux builds need an explicit CXX_LINUX cross compiler and its Linux sysroot.

Windows deployment defaults to ../T7G; GROOVIEV1_NO_DEPLOY=1 disables it.
GROOVIEV1_DEPLOY_DIR overrides the Windows deployment directory.
Help: -h, --h, -help, --help.
EOF
}

if (($# > 1)); then usage >&2; exit 1; fi
case "${1:-$HOST_OS}" in
    -h|--h|-help|--help) usage; exit 0 ;;
    windows|linux|macos) TARGET_OS="${1:-$HOST_OS}" ;;
    *) echo "Unknown target: $1" >&2; usage >&2; exit 1 ;;
esac

require_tool() {
    if ! command -v "$1" >/dev/null 2>&1; then
        echo "Missing required tool: $1. $2" >&2
        exit 1
    fi
}

# Prevent Git Bash/MSYS from interpreting /MT and /link as Unix paths. Convert
# the actual source/output/SDK paths explicitly when invoking Windows tools.
windows_path() {
    if [[ "$HOST_OS" == windows ]]; then cygpath -m "$1"; else printf '%s\n' "$1"; fi
}

prepare_windows_sdk() {
    if [[ "$HOST_OS" == windows && -z "${WINSDK_BASE:-}" ]]; then
        # clang-cl on Windows discovers Visual Studio/Windows SDK installations,
        # or uses INCLUDE/LIB inherited from an x64 developer shell.
        WINDOWS_INCLUDES=()
        WINDOWS_LIBPATHS=()
        return
    fi
    if [[ -z "${WINSDK_BASE:-}" ]]; then
        if [[ -d /opt/winsdk/crt/include ]]; then WINSDK_BASE=/opt/winsdk;
        else WINSDK_BASE="$CACHE_ROOT/winsdk"; fi
    fi
    local cpp_include="${MSVC_INCLUDE:-$WINSDK_BASE/crt/include}"
    if [[ -z "${MSVC_INCLUDE:-}" && "$WINSDK_BASE" == /opt/winsdk && -f /opt/msvc/include/vector ]]; then
        cpp_include="${V64TNG_MSVC_INCLUDE:-/opt/msvc/include}"
    fi
    if [[ ! -f "$cpp_include/vector" || ! -d "$WINSDK_BASE/sdk/lib" ]]; then
        require_tool xwin 'Install xwin, or set WINSDK_BASE to an existing Microsoft SDK/CRT installation.'
        if [[ -e "$WINSDK_BASE" && ! -w "$WINSDK_BASE" ]]; then WINSDK_BASE="$CACHE_ROOT/winsdk"; fi
        mkdir -p "$WINSDK_BASE"
        xwin --accept-license splat --output "$WINSDK_BASE"
        cpp_include="${MSVC_INCLUDE:-$WINSDK_BASE/crt/include}"
    fi
    local sdk_include="$WINSDK_BASE/sdk/include"
    local sdk_lib="$WINSDK_BASE/sdk/lib"
    local sdk_version=""
    local arch=x86_64
    if [[ ! -d "$sdk_include/um" ]]; then
        sdk_version="$(find "$sdk_include" -mindepth 1 -maxdepth 1 -type d -name '10.*' -print | sort -V | tail -1)"
        if [[ -z "$sdk_version" ]]; then echo 'Cannot locate Microsoft SDK headers.' >&2; exit 1; fi
        sdk_include="$sdk_version"
    fi
    if [[ ! -d "$WINSDK_BASE/crt/lib/$arch" ]]; then arch=x64; fi
    if [[ ! -d "$sdk_lib/um/$arch" ]]; then sdk_lib="$sdk_lib/$(basename "$sdk_version")"; fi
    WINDOWS_INCLUDES=(
        "-imsvc$(windows_path "$cpp_include")"
        "-imsvc$(windows_path "$WINSDK_BASE/crt/include")"
        "-imsvc$(windows_path "$sdk_include/ucrt")"
        "-imsvc$(windows_path "$sdk_include/um")"
        "-imsvc$(windows_path "$sdk_include/shared")"
    )
    WINDOWS_LIBPATHS=(
        "/libpath:$(windows_path "$WINSDK_BASE/crt/lib/$arch")"
        "/libpath:$(windows_path "$sdk_lib/um/$arch")"
        "/libpath:$(windows_path "$sdk_lib/ucrt/$arch")"
    )
}

build_windows() {
    require_tool clang-cl 'Install LLVM Clang; Windows builds do not use GCC or the MinGW ABI.'
    require_tool lld-link 'Install the LLVM linker.'
    if [[ "$HOST_OS" == windows ]]; then
        require_tool cygpath 'Run this script in Git Bash, MSYS2 or Cygwin.'
        export MSYS_NO_PATHCONV=1 MSYS2_ARG_CONV_EXCL='*'
    fi
    prepare_windows_sdk
    local objects_dir="$OUT_DIR/windows-x64"
    mkdir -p "$objects_dir"
    local flags=(
        --target=x86_64-pc-windows-msvc -fuse-ld=lld-link
        /std:c++latest /EHsc /MT /O2 /DNDEBUG /D_MT
        -fms-compatibility -fms-compatibility-version=19.37
        "${WINDOWS_INCLUDES[@]}" "-I$(windows_path "$REPO_DIR/include")"
    )
    local objects=() source object
    for source in "${SOURCES[@]}"; do
        object="$objects_dir/$(basename "${source%.cpp}").obj"
        clang-cl /c -o "$(windows_path "$object")" "${flags[@]}" -- "$(windows_path "$source")"
        objects+=("windows-x64/$(basename "$object")")
    done
    (
        cd "$OUT_DIR"
        clang-cl --target=x86_64-pc-windows-msvc -fuse-ld=lld-link \
            "${objects[@]}" -o grooviev1.exe /link \
            /machine:x64 /subsystem:console /incremental:no /opt:ref /opt:icf /Brepro \
            /defaultlib:libcmt /defaultlib:libcpmt /defaultlib:libucrt \
            /nodefaultlib:msvcrt.lib /nodefaultlib:ucrt.lib \
            "${WINDOWS_LIBPATHS[@]}" kernel32.lib ole32.lib uuid.lib windowscodecs.lib
    )
    echo "Built native Windows x64 executable with Clang/MSVC: $OUT_DIR/grooviev1.exe"
    if [[ "${GROOVIEV1_NO_DEPLOY:-0}" != 1 ]]; then
        local destination="${GROOVIEV1_DEPLOY_DIR:-$REPO_DIR/T7G}"
        mkdir -p "$destination"
        install -m 0755 "$OUT_DIR/grooviev1.exe" "$destination/grooviev1.exe"
        echo "Deployed: $destination/grooviev1.exe"
    fi
}

build_linux() {
    local compiler="${CXX_LINUX:-${CXX_NATIVE:-${CXX:-}}}"
    local flags=(-std=c++23 -O2)
    if [[ "$HOST_OS" != linux && -z "${CXX_LINUX:-}" ]]; then
        echo 'Cross-Linux builds require CXX_LINUX pointing to a configured Linux cross compiler/sysroot.' >&2
        exit 1
    fi
    if [[ -z "$compiler" ]]; then
        if command -v clang++ >/dev/null 2>&1; then compiler=clang++; else compiler=g++; fi
    fi
    require_tool "$compiler" 'Install a C++23 compiler and its native C++ standard library.'
    if [[ -n "${LINUX_SYSROOT:-}" ]]; then flags+=("--sysroot=$LINUX_SYSROOT"); fi
    "$compiler" "${SOURCES[@]}" "-I$REPO_DIR/include" "${flags[@]}" -o "$OUT_DIR/grooviev1-linux"
    echo "Built Linux executable with $compiler: $OUT_DIR/grooviev1-linux"
}

build_macos() {
    local compiler="${CXX_MACOS:-${CXX:-}}"
    local sdk="${SDKROOT:-}"
    local flags=(-std=c++23 -stdlib=libc++ -O2)
    if [[ "$HOST_OS" == macos ]]; then
        require_tool xcrun 'Install Xcode Command Line Tools with xcode-select --install.'
        if [[ -z "$compiler" ]]; then compiler="$(xcrun --find clang++)"; fi
        if [[ -z "$sdk" ]]; then sdk="$(xcrun --sdk macosx --show-sdk-path)"; fi
    elif [[ -z "${CXX_MACOS:-}" ]]; then
        if command -v o64-clang++ >/dev/null 2>&1; then
            compiler=o64-clang++
        elif [[ -n "$sdk" ]]; then
            compiler=clang++
            require_tool ld64.lld 'Install LLVM with the Mach-O linker for cross-macOS builds.'
            flags+=("--target=${GROOVIEV1_MACOS_ARCH:-x86_64}-apple-macos${MACOSX_DEPLOYMENT_TARGET:-14.0}" -fuse-ld=lld)
        else
            echo 'Cross-macOS builds require osxcross, CXX_MACOS, or an Apple SDK in SDKROOT plus Clang/ld64.lld.' >&2
            echo 'Apple SDK files must be supplied under their license; no emulator is used.' >&2
            exit 1
        fi
    fi
    require_tool "$compiler" 'Install a Clang macOS toolchain with C++23/libc++ support.'
    if [[ -n "$sdk" ]]; then flags+=(-isysroot "$sdk"); fi
    if [[ -n "${MACOSX_DEPLOYMENT_TARGET:-}" ]]; then flags+=("-mmacosx-version-min=$MACOSX_DEPLOYMENT_TARGET"); fi
    "$compiler" "${SOURCES[@]}" "-I$REPO_DIR/include" "${flags[@]}" -o "$OUT_DIR/grooviev1-macos"
    echo "Built macOS executable with $compiler: $OUT_DIR/grooviev1-macos"
}

mkdir -p "$OUT_DIR"
SOURCES=("$ROOT_DIR/main.cpp" "$REPO_DIR"/src/{bitmap,delta,grv,lzss,rl}.cpp)
case "$TARGET_OS" in
    windows) build_windows ;;
    linux) build_linux ;;
    macos) build_macos ;;
esac
if [[ "$TARGET_OS" == "$HOST_OS" && "$HOST_OS" != windows ]]; then
    ln -sfn "grooviev1-$TARGET_OS" "$OUT_DIR/grooviev1-native"
    ln -sfn "grooviev1-$TARGET_OS" "$OUT_DIR/grooviev1"
fi
