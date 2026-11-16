#!/usr/bin/env bash
# Install missing build prerequisites and prepare the Windows dependency paths.
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
source "$SCRIPT_DIR/dependency_versions.sh"
CACHE_ROOT="${V64TNG_DEPS_CACHE:-${XDG_CACHE_HOME:-$HOME/.cache}/v64tng}"
ENV_FILE="${1:-$REPO_DIR/build/dependencies.env}"
export PATH="$CACHE_ROOT/tools/bin:$PATH"

required=(clang-cl lld-link llvm-lib llvm-dlltool cmake ninja curl tar od awk pkg-config glslc x86_64-w64-mingw32-windres)
missing=()
for tool in "${required[@]}"; do
    if ! command -v "$tool" >/dev/null 2>&1; then missing+=("$tool"); fi
done
if ((${#missing[@]})); then
    printf 'Installing missing build tools: %s\n' "${missing[*]}" >&2
    if ! command -v pacman >/dev/null 2>&1; then
        printf 'Automatic host-package installation currently supports Arch Linux. Required commands: %s\n' "${required[*]}" >&2
        exit 1
    fi
    elevate=()
    if ((EUID != 0)); then elevate=(sudo); fi
    # Arch requires a full upgrade when synchronizing package databases.
    "${elevate[@]}" pacman -Syu --needed clang lld llvm cmake ninja curl tar coreutils gawk pkgconf shaderc mingw-w64-binutils >&2
fi

if [[ -z "${WINSDK_BASE:-}" ]]; then
    if [[ -d /opt/winsdk/crt/include ]]; then WINSDK_BASE=/opt/winsdk;
    else WINSDK_BASE="$CACHE_ROOT/winsdk"; fi
fi
available_cpp="${MSVC_INCLUDE:-$WINSDK_BASE/crt/include}"
if [[ -z "${MSVC_INCLUDE:-}" && "$WINSDK_BASE" == /opt/winsdk && -f /opt/msvc/include/vector ]]; then
    available_cpp="${V64TNG_MSVC_INCLUDE:-/opt/msvc/include}"
fi
have_sdk_headers=false
for header_root in "$WINSDK_BASE/sdk/include" "$WINSDK_BASE/sdk/include"/10.*; do
    if [[ ( -f "$header_root/um/windows.h" || -f "$header_root/um/Windows.h" ) &&
          -f "$header_root/ucrt/corecrt.h" ]]; then have_sdk_headers=true; fi
done
have_sdk_libraries=false
for architecture in x86_64 x64; do
    if [[ ! -f "$WINSDK_BASE/crt/lib/$architecture/libcmt.lib" ||
          ! -f "$WINSDK_BASE/crt/lib/$architecture/libcpmt.lib" ]]; then continue; fi
    for library_root in "$WINSDK_BASE/sdk/lib" "$WINSDK_BASE/sdk/lib"/10.*; do
        if [[ -f "$library_root/um/$architecture/kernel32.lib" &&
              -f "$library_root/um/$architecture/user32.lib" &&
              -f "$library_root/ucrt/$architecture/libucrt.lib" ]]; then have_sdk_libraries=true; fi
    done
done
if [[ ! -f "$available_cpp/vector" || "$have_sdk_headers" == false || "$have_sdk_libraries" == false ]]; then
    if ! command -v xwin >/dev/null 2>&1; then
        if ! command -v cargo >/dev/null 2>&1; then
            if ! command -v pacman >/dev/null 2>&1; then
                echo 'Install Rust/cargo so xwin can obtain the Windows SDK.' >&2; exit 1
            fi
            elevate=(); if ((EUID != 0)); then elevate=(sudo); fi
            "${elevate[@]}" pacman -Syu --needed rust >&2
        fi
        CC=clang CXX=clang++ RUSTFLAGS="${RUSTFLAGS:+$RUSTFLAGS }-C linker=clang" \
            cargo install --locked xwin --root "$CACHE_ROOT/tools" >&2
    fi
    if [[ -e "$WINSDK_BASE" && ! -w "$WINSDK_BASE" ]]; then WINSDK_BASE="$CACHE_ROOT/winsdk"; fi
    mkdir -p "$WINSDK_BASE"
    xwin --accept-license splat --output "$WINSDK_BASE" >&2
fi

if [[ -z "${VULKAN_DIR:-}" ]]; then
    if [[ -f "/opt/VulkanSDK/$V64TNG_VULKAN_SDK_VERSION/Lib/vulkan-1.lib" ]]; then
        VULKAN_DIR="/opt/VulkanSDK/$V64TNG_VULKAN_SDK_VERSION"
    else VULKAN_DIR="$CACHE_ROOT/VulkanSDK/$V64TNG_VULKAN_SDK_VERSION"; fi
fi
vulkan_complete=true
for file in Include/vulkan/vulkan.h Include/vulkan/vulkan_core.h Include/vulkan/vulkan_win32.h Lib/vulkan-1.lib; do
    if [[ ! -f "$VULKAN_DIR/$file" ]]; then vulkan_complete=false; fi
done
if [[ "$vulkan_complete" == false ]]; then
    if [[ -e "$VULKAN_DIR" && ! -w "$VULKAN_DIR" ]]; then VULKAN_DIR="$CACHE_ROOT/VulkanSDK/$V64TNG_VULKAN_SDK_VERSION"; fi
    # Headers plus the official loader export definition are sufficient for
    # this program. Avoid downloading an entire Windows SDK installer merely
    # to obtain its import archive; the system shaderc supplies native glslc.
    stage="$CACHE_ROOT/vulkan-$V64TNG_VULKAN_SDK_VERSION-source"
    mkdir -p "$stage" "$VULKAN_DIR/Include" "$VULKAN_DIR/Lib"
    if [[ ! -d "$stage/Vulkan-Headers-vulkan-sdk-$V64TNG_VULKAN_SDK_VERSION" ]]; then
        curl --fail --location --retry 3 \
            "https://github.com/KhronosGroup/Vulkan-Headers/archive/refs/tags/vulkan-sdk-$V64TNG_VULKAN_SDK_VERSION.tar.gz" \
            -o "$stage/headers.tar.gz"
        tar -xf "$stage/headers.tar.gz" -C "$stage"
    fi
    cp -R "$stage/Vulkan-Headers-vulkan-sdk-$V64TNG_VULKAN_SDK_VERSION/include/." "$VULKAN_DIR/Include/"
    curl --fail --location --retry 3 \
        "https://raw.githubusercontent.com/KhronosGroup/Vulkan-Loader/vulkan-sdk-$V64TNG_VULKAN_SDK_VERSION/loader/vulkan-1.def" \
        -o "$stage/vulkan-1.def"
    llvm-dlltool -m i386:x86-64 -D vulkan-1.dll -d "$stage/vulkan-1.def" -l "$VULKAN_DIR/Lib/vulkan-1.lib"
fi
GLSLC="${GLSLC:-$(command -v glslc)}"
if [[ -z "${MSVC_INCLUDE:-}" ]]; then
    MSVC_INCLUDE="$WINSDK_BASE/crt/include"
    if [[ "$WINSDK_BASE" == /opt/winsdk && -d /opt/msvc/include ]]; then
        MSVC_INCLUDE="${V64TNG_MSVC_INCLUDE:-/opt/msvc/include}"
    fi
fi
if [[ -z "${WINDOWS_LIBS_DIR:-}" ]]; then
    if [[ -d /opt/windows-libs && -w /opt/windows-libs ]]; then WINDOWS_LIBS_DIR=/opt/windows-libs;
    else WINDOWS_LIBS_DIR="$CACHE_ROOT/windows-libs"; fi
fi
needs_libraries=false
for spec in "zlib:$ZLIB_VERSION:lib/zlib.lib:include/zlib.h" \
            "libpng:$LIBPNG_VERSION:lib/libpng.lib:include/png.h" \
            "libogg:$LIBOGG_VERSION:lib/ogg.lib:include/ogg/ogg.h" \
            "libvorbis:$LIBVORBIS_VERSION:lib/vorbisfile.lib:include/vorbis/vorbisfile.h" \
            "ADLMIDI:$ADLMIDI_VERSION:lib/ADLMIDI.lib:include/adlmidi.h"; do
    IFS=: read -r name version archive header <<< "$spec"
    installed=""
    if [[ -f "$WINDOWS_LIBS_DIR/$name/.v64tng-version" ]]; then installed="$(cat "$WINDOWS_LIBS_DIR/$name/.v64tng-version")"; fi
    if [[ "$installed" != "$version" || ! -f "$WINDOWS_LIBS_DIR/$name/$archive" || ! -f "$WINDOWS_LIBS_DIR/$name/$header" ]]; then needs_libraries=true; fi
done
for file in zlib/include/zconf.h libpng/include/pngconf.h libpng/include/pnglibconf.h             libogg/include/ogg/config_types.h libvorbis/lib/vorbis.lib libvorbis/include/vorbis/codec.h; do
    if [[ ! -f "$WINDOWS_LIBS_DIR/$file" ]]; then needs_libraries=true; fi
done
export WINSDK_BASE WINDOWS_LIBS_DIR MSVC_INCLUDE
if [[ "$needs_libraries" == true ]]; then
    bash "$REPO_DIR/build_windows_libs.sh" all >&2
fi
mkdir -p "$(dirname "$ENV_FILE")"
{
    printf 'export WINSDK_BASE=%q\n' "$WINSDK_BASE"
    printf 'export VULKAN_DIR=%q\n' "$VULKAN_DIR"
    printf 'export GLSLC=%q\n' "$GLSLC"
    printf 'export MSVC_INCLUDE=%q\n' "$MSVC_INCLUDE"
    printf 'export WINDOWS_LIBS_DIR=%q\n' "$WINDOWS_LIBS_DIR"
    for pair in ZLIB:zlib LIBPNG:libpng ADLMIDI:ADLMIDI OGG:libogg VORBIS:libvorbis; do
        printf 'export %s_DIR=%q\n' "${pair%%:*}" "$WINDOWS_LIBS_DIR/${pair#*:}"
    done
} > "$ENV_FILE"
