#!/usr/bin/env bash
# Build only the Windows static libraries actually linked by v64tng.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CACHE_ROOT="${V64TNG_DEPS_CACHE:-${XDG_CACHE_HOME:-$HOME/.cache}/v64tng}"
INSTALL_PREFIX="${WINDOWS_LIBS_DIR:-/opt/windows-libs}"
WINSDK_BASE="${WINSDK_BASE:-/opt/winsdk}"
BUILD_DIR="${WINDOWS_LIBS_BUILD_DIR:-$CACHE_ROOT/windows-libs-build}"
JOBS="${V64TNG_JOBS:-$(nproc)}"

source "$SCRIPT_DIR/scripts/dependency_versions.sh"

# xwin places the MSVC C/C++ headers in crt/include. Existing installations may
# also have a separate, newer MSVC include tree.
if [[ -z "${MSVC_INCLUDE:-}" ]]; then
    MSVC_INCLUDE="$WINSDK_BASE/crt/include"
    if [[ -d /opt/msvc/include && "$WINSDK_BASE" == /opt/winsdk ]]; then
        MSVC_INCLUDE="${V64TNG_MSVC_INCLUDE:-/opt/msvc/include}"
    fi
fi
SDK_INCLUDE="$WINSDK_BASE/sdk/include"
SDK_LIB="$WINSDK_BASE/sdk/lib"
CRT_INCLUDE="$WINSDK_BASE/crt/include"
CRT_LIB="$WINSDK_BASE/crt/lib"
SDK_VERSION=""
if [[ ! -d "$SDK_INCLUDE/um" ]]; then
    SDK_VERSION="$(find "$SDK_INCLUDE" -mindepth 1 -maxdepth 1 -type d -name '10.*' -printf '%f\n' | sort -V | tail -1)"
    SDK_INCLUDE="$SDK_INCLUDE/$SDK_VERSION"
fi
LIB_ARCH=x86_64
if [[ ! -d "$CRT_LIB/$LIB_ARCH" ]]; then LIB_ARCH=x64; fi
if [[ ! -d "$SDK_LIB/um/$LIB_ARCH" ]]; then SDK_LIB="$SDK_LIB/$SDK_VERSION"; fi
mkdir -p "$BUILD_DIR" "$INSTALL_PREFIX"

TOOLCHAIN="$BUILD_DIR/windows-cross.cmake"
cat > "$TOOLCHAIN" <<EOF
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR AMD64)
set(CMAKE_POLICY_DEFAULT_CMP0091 NEW)
set(CMAKE_C_COMPILER clang-cl)
set(CMAKE_CXX_COMPILER clang-cl)
set(CMAKE_C_COMPILER_TARGET x86_64-pc-windows-msvc)
set(CMAKE_CXX_COMPILER_TARGET x86_64-pc-windows-msvc)
set(CMAKE_AR llvm-lib)
set(CMAKE_LINKER lld-link)
set(CMAKE_RC_COMPILER x86_64-w64-mingw32-windres)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_MSVC_RUNTIME_LIBRARY MultiThreaded)
set(CMAKE_C_FLAGS_INIT "-imsvc$MSVC_INCLUDE -imsvc$CRT_INCLUDE -imsvc$SDK_INCLUDE/ucrt -imsvc$SDK_INCLUDE/um -imsvc$SDK_INCLUDE/shared /D_CRT_SECURE_NO_WARNINGS")
set(CMAKE_CXX_FLAGS_INIT "-imsvc$MSVC_INCLUDE -imsvc$CRT_INCLUDE -imsvc$SDK_INCLUDE/ucrt -imsvc$SDK_INCLUDE/um -imsvc$SDK_INCLUDE/shared /D_CRT_SECURE_NO_WARNINGS")
set(CMAKE_EXE_LINKER_FLAGS_INIT "/libpath:$CRT_LIB/$LIB_ARCH /libpath:$SDK_LIB/ucrt/$LIB_ARCH /libpath:$SDK_LIB/um/$LIB_ARCH")
set(CMAKE_FIND_ROOT_PATH "$WINSDK_BASE" "$INSTALL_PREFIX")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
EOF

fetch_source() {
    local directory="$1" archive="$2" url="$3"
    if [[ ! -d "$BUILD_DIR/$directory" ]]; then
        if [[ ! -f "$BUILD_DIR/$archive" ]]; then
            curl --fail --location --retry 3 "$url" -o "$BUILD_DIR/$archive.partial"
            mv "$BUILD_DIR/$archive.partial" "$BUILD_DIR/$archive"
        fi
        tar -xf "$BUILD_DIR/$archive" -C "$BUILD_DIR"
    fi
}

configure() {
    local source="$1" build="$2" prefix="$3"
    shift 3
    cmake -S "$source" -B "$build" -G Ninja \
        -DCMAKE_TOOLCHAIN_FILE="$TOOLCHAIN" \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.15 \
        -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="$prefix" \
        -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded \
        -DBUILD_SHARED_LIBS=OFF -DBUILD_TESTING=OFF "$@"
}

record_version() {
    printf '%s\n' "$2" > "$INSTALL_PREFIX/$1/.v64tng-version"
}

build_zlib() {
    local name="zlib-$ZLIB_VERSION" build="$BUILD_DIR/zlib-windows-$ZLIB_VERSION"
    fetch_source "$name" "$name.tar.gz" "https://github.com/madler/zlib/releases/download/v$ZLIB_VERSION/$name.tar.gz"
    configure "$BUILD_DIR/$name" "$build" "$INSTALL_PREFIX/zlib" \
        -DZLIB_BUILD_SHARED=OFF -DZLIB_BUILD_STATIC=ON -DZLIB_BUILD_TESTING=OFF
    cmake --build "$build" --target zlibstatic --parallel "$JOBS"
    cmake --install "$build"
    # Keep the link name stable across zlib's MSVC archive naming changes.
    cp "$build/libzs.lib" "$INSTALL_PREFIX/zlib/lib/zlib.lib"
    record_version zlib "$ZLIB_VERSION"
}

build_libpng() {
    local name="libpng-$LIBPNG_VERSION" build="$BUILD_DIR/libpng-windows-$LIBPNG_VERSION"
    fetch_source "$name" "$name.tar.gz" "https://github.com/pnggroup/libpng/archive/refs/tags/v$LIBPNG_VERSION.tar.gz"
    configure "$BUILD_DIR/$name" "$build" "$INSTALL_PREFIX/libpng" \
        -DPNG_SHARED=OFF -DPNG_STATIC=ON -DPNG_TESTS=OFF -DPNG_TOOLS=OFF \
        -DZLIB_INCLUDE_DIR="$INSTALL_PREFIX/zlib/include" \
        -DZLIB_LIBRARY="$INSTALL_PREFIX/zlib/lib/zlib.lib"
    cmake --build "$build" --parallel "$JOBS"
    # Upstream Windows installs can request Unix .pc files that are not generated.
    # v64tng needs only the static archive and these public/generated headers.
    mkdir -p "$INSTALL_PREFIX/libpng/lib" "$INSTALL_PREFIX/libpng/include"
    cp "$build/libpng16_static.lib" "$INSTALL_PREFIX/libpng/lib/libpng.lib"
    cp "$BUILD_DIR/$name/png.h" "$BUILD_DIR/$name/pngconf.h" "$build/pnglibconf.h" "$INSTALL_PREFIX/libpng/include/"
    record_version libpng "$LIBPNG_VERSION"
}

build_libogg() {
    local name="libogg-$LIBOGG_VERSION" build="$BUILD_DIR/libogg-windows-$LIBOGG_VERSION"
    fetch_source "$name" "$name.tar.xz" "https://downloads.xiph.org/releases/ogg/$name.tar.xz"
    configure "$BUILD_DIR/$name" "$build" "$INSTALL_PREFIX/libogg" -DINSTALL_DOCS=OFF
    cmake --build "$build" --target ogg --parallel "$JOBS"
    cmake --install "$build"
    record_version libogg "$LIBOGG_VERSION"
}

build_libvorbis() {
    local name="libvorbis-$LIBVORBIS_VERSION" build="$BUILD_DIR/libvorbis-windows-$LIBVORBIS_VERSION"
    fetch_source "$name" "$name.tar.xz" "https://downloads.xiph.org/releases/vorbis/$name.tar.xz"
    configure "$BUILD_DIR/$name" "$build" "$INSTALL_PREFIX/libvorbis" \
        -DCMAKE_PREFIX_PATH="$INSTALL_PREFIX/libogg" -DOGG_ROOT="$INSTALL_PREFIX/libogg" \
        -DOGG_INCLUDE_DIR="$INSTALL_PREFIX/libogg/include" -DOGG_LIBRARY="$INSTALL_PREFIX/libogg/lib/ogg.lib" \
        -DBUILD_EXAMPLES=OFF
    cmake --build "$build" --parallel "$JOBS"
    cmake --install "$build"
    record_version libvorbis "$LIBVORBIS_VERSION"
}

build_adlmidi() {
    local name="libADLMIDI-$ADLMIDI_VERSION" build="$BUILD_DIR/adlmidi-windows-$ADLMIDI_VERSION"
    fetch_source "$name" "$name.tar.gz" "https://github.com/Wohlstand/libADLMIDI/archive/refs/tags/v$ADLMIDI_VERSION.tar.gz"
    configure "$BUILD_DIR/$name" "$build" "$INSTALL_PREFIX/ADLMIDI" \
        -DlibADLMIDI_STATIC=ON -DlibADLMIDI_SHARED=OFF \
        -DWITH_MIDIPLAY=OFF -DWITH_OLD_UTILS=OFF -DWITH_VLC_PLUGIN=OFF \
        -DWITH_UNIT_TESTS=OFF -DWITH_GENADLDATA=OFF
    cmake --build "$build" --target ADLMIDI_static --parallel "$JOBS"
    cmake --install "$build"
    record_version ADLMIDI "$ADLMIDI_VERSION"
}

case "${1:-all}" in
    setup) printf 'Windows SDK: %s\nStatic libraries: %s\n' "$WINSDK_BASE" "$INSTALL_PREFIX" ;;
    zlib) build_zlib ;;
    libpng) build_zlib; build_libpng ;;
    libogg) build_libogg ;;
    vorbis) build_libogg; build_libvorbis ;;
    adlmidi) build_adlmidi ;;
    all) build_zlib; build_libpng; build_libogg; build_libvorbis; build_adlmidi ;;
    *) printf 'Usage: %s {setup|zlib|libpng|libogg|vorbis|adlmidi|all}\n' "$0" >&2; exit 1 ;;
esac
