#!/bin/bash

# Build script for v64tng game engine - Linux to Windows cross-compilation
# Requires: clang, lld, mingw-w64-binutils (for windres only)

set -e  # Exit on any error

# --- Color & Emoji Support ------------------------------------------------
# Check if terminal supports colors
if [[ -t 1 ]] && command -v tput >/dev/null 2>&1 && [[ $(tput colors 2>/dev/null || echo 0) -ge 8 ]]; then
  COLOR_RESET="\033[0m"
  COLOR_BOLD="\033[1m"
  COLOR_DIM="\033[2m"
  COLOR_RED="\033[31m"
  COLOR_GREEN="\033[32m"
  COLOR_YELLOW="\033[33m"
  COLOR_BLUE="\033[34m"
  COLOR_MAGENTA="\033[35m"
  COLOR_CYAN="\033[36m"
else
  COLOR_RESET=""
  COLOR_BOLD=""
  COLOR_DIM=""
  COLOR_RED=""
  COLOR_GREEN=""
  COLOR_YELLOW=""
  COLOR_BLUE=""
  COLOR_MAGENTA=""
  COLOR_CYAN=""
fi

# Emoji support (fallback to ASCII if needed)
if [[ "${LANG:-}" =~ UTF-8 ]] || [[ "${LC_ALL:-}" =~ UTF-8 ]]; then
  EMOJI_SUCCESS="✅"
  EMOJI_CACHED="⚡"
  EMOJI_FAILED="❌"
  EMOJI_WARNING="⚠️"
  EMOJI_ROCKET="🚀"
  EMOJI_WRENCH="🔧"
  EMOJI_PACKAGE="📦"
  EMOJI_FIRE="🔥"
else
  EMOJI_SUCCESS="[OK]"
  EMOJI_CACHED="[==]"
  EMOJI_FAILED="[!!]"
  EMOJI_WARNING="[!]"
  EMOJI_ROCKET=">>>"
  EMOJI_WRENCH="[*]"
  EMOJI_PACKAGE="[+]"
  EMOJI_FIRE="[X]"
fi

# Configuration
TARGET_TRIPLE="x86_64-pc-windows-msvc"
BUILD_DIR="build"
TARGET_DIR="/mnt/T7G"
WINSDK_BASE="/opt/winsdk"
VULKAN_DIR="/opt/VulkanSDK/1.4.313.2"

# Third-party library paths (these will be built for Windows target)
ZLIB_DIR="/opt/windows-libs/zlib"
LIBPNG_DIR="/opt/windows-libs/libpng"
ADLMIDI_DIR="/opt/windows-libs/ADLMIDI"

# Parallel compilation settings
MAX_JOBS=$(nproc)
COMPILE_JOBS=$MAX_JOBS

# Build logging
BUILD_LOG="build.log"

#===============================================================================
# Utility Functions
#===============================================================================

# Banner for section headers (from speedboards.sh)
banner() {
    local w=78
    local line="$(printf '%*s' "$w" | tr ' ' '=')"
    printf "\n${COLOR_BOLD}${COLOR_CYAN}%s\n" "$line"
    printf "  %s\n" "$1"
    printf "%s${COLOR_RESET}\n\n" "$line"
}

# Initialize build log (clear it)
init_log() {
    rm -f "$BUILD_LOG"
    touch "$BUILD_LOG"
}

# Log warnings and errors only
log_output() {
    local tmp_file="$1"
    if [[ -f "$tmp_file" ]]; then
        if grep -qiE '(warning|error):' "$tmp_file"; then
            cat "$tmp_file" >> "$BUILD_LOG"
        fi
        rm -f "$tmp_file"
    fi
}

#===============================================================================
# Windows SDK Setup
#===============================================================================

# Setup Windows SDK
setup_winsdk() {
    banner "${EMOJI_WRENCH} Setting up Windows SDK"
    
    if [[ ! -d "$WINSDK_BASE" ]]; then
        echo "Windows SDK not found at $WINSDK_BASE"
        echo ""
        echo "Installing Windows SDK using xwin..."
        
        # Check if xwin is installed
        if ! command -v xwin &> /dev/null; then
            echo "Installing xwin..."
            cargo install xwin
        fi
        
        # Create the directory and install SDK
        sudo mkdir -p "$WINSDK_BASE"
        sudo chown $USER:$USER "$WINSDK_BASE"
        
        xwin --accept-license splat --output "$WINSDK_BASE"
        
        if [[ $? -ne 0 ]]; then
            echo "ERROR: Failed to install Windows SDK with xwin"
            exit 1
        fi
    fi
    
    # Verify the SDK structure and detect actual layout
    echo "Detecting Windows SDK structure..."
    echo "Contents of $WINSDK_BASE:"
    ls -la "$WINSDK_BASE/"
    
    # xwin creates different structure - let's detect it
    local sdk_include_base=""
    local sdk_lib_base=""
    local ucrt_include_base=""
    local ucrt_lib_base=""
    
    # Look for SDK includes
    if [[ -d "$WINSDK_BASE/sdk/include" ]]; then
        sdk_include_base="$WINSDK_BASE/sdk/include"
    elif [[ -d "$WINSDK_BASE/Include" ]]; then
        sdk_include_base="$WINSDK_BASE/Include"
    fi
    
    # Look for SDK libs  
    if [[ -d "$WINSDK_BASE/sdk/lib" ]]; then
        sdk_lib_base="$WINSDK_BASE/sdk/lib"
    elif [[ -d "$WINSDK_BASE/Lib" ]]; then
        sdk_lib_base="$WINSDK_BASE/Lib"
    fi
    
    # Look for CRT includes
    if [[ -d "$WINSDK_BASE/crt/include" ]]; then
        ucrt_include_base="$WINSDK_BASE/crt/include"
    fi
    
    # Look for CRT libs
    if [[ -d "$WINSDK_BASE/crt/lib" ]]; then
        ucrt_lib_base="$WINSDK_BASE/crt/lib"
    fi
    
    echo "Detected paths:"
    echo "  SDK includes: $sdk_include_base"
    echo "  SDK libs: $sdk_lib_base"  
    echo "  CRT includes: $ucrt_include_base"
    echo "  CRT libs: $ucrt_lib_base"
    
    # Find SDK version
    local actual_sdk_version=""
    if [[ -d "$sdk_include_base" ]]; then
        # Look for version directories
        for version_dir in "$sdk_include_base"/*/; do
            if [[ -d "$version_dir" ]]; then
                actual_sdk_version=$(basename "$version_dir")
                echo "Found SDK version: $actual_sdk_version"
                break
            fi
        done
    fi
    
    # Update global variables with detected paths
    if [[ -n "$actual_sdk_version" ]]; then
        export DETECTED_SDK_VERSION="$actual_sdk_version"
    else
        export DETECTED_SDK_VERSION="10.0.26100"  # Fallback to known version
    fi
    
    # Export detected paths
    export DETECTED_SDK_INCLUDE="$sdk_include_base"
    export DETECTED_SDK_LIB="$sdk_lib_base"
    export DETECTED_CRT_INCLUDE="$ucrt_include_base"
    export DETECTED_CRT_LIB="$ucrt_lib_base"
    
    # Verify critical paths exist with detected structure
    local critical_paths=()
    
    # For includes, try both versioned and non-versioned paths
    if [[ -n "$sdk_include_base" ]]; then
        if [[ -n "$DETECTED_SDK_VERSION" && -d "$sdk_include_base/$DETECTED_SDK_VERSION" ]]; then
            # Traditional Windows SDK structure
            critical_paths+=(
                "$sdk_include_base/$DETECTED_SDK_VERSION/um"
                "$sdk_include_base/$DETECTED_SDK_VERSION/shared"
            )
        else
            # xwin structure (flat)
            critical_paths+=(
                "$sdk_include_base/um"
                "$sdk_include_base/shared"
                "$sdk_include_base/ucrt"
            )
        fi
    fi
    
    if [[ -n "$ucrt_include_base" ]]; then
        critical_paths+=("$ucrt_include_base")
    fi
    
    # For libraries, detect xwin vs traditional structure
    if [[ -n "$sdk_lib_base" ]]; then
        if [[ -d "$sdk_lib_base/um/x86_64" ]]; then
            # xwin structure
            critical_paths+=(
                "$sdk_lib_base/um/x86_64"
                "$sdk_lib_base/ucrt/x86_64"
            )
        elif [[ -n "$DETECTED_SDK_VERSION" && -d "$sdk_lib_base/$DETECTED_SDK_VERSION/um/x64" ]]; then
            # Traditional structure
            critical_paths+=("$sdk_lib_base/$DETECTED_SDK_VERSION/um/x64")
        fi
    fi
    
    if [[ -n "$ucrt_lib_base" ]]; then
        if [[ -d "$ucrt_lib_base/x86_64" ]]; then
            # xwin structure
            critical_paths+=("$ucrt_lib_base/x86_64")
        elif [[ -d "$ucrt_lib_base/x64" ]]; then
            # Traditional structure
            critical_paths+=("$ucrt_lib_base/x64")
        fi
    fi
    
    echo "Verifying critical paths..."
    for path in "${critical_paths[@]}"; do
        if [[ ! -d "$path" ]]; then
            echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Critical SDK path missing: $path${COLOR_RESET}"
            exit 1
        else
            echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Found: $path${COLOR_RESET}"
        fi
    done
    
    # Detect library architecture
    local detected_lib_arch=""
    if [[ -d "$ucrt_lib_base/x86_64" ]] || [[ -d "$sdk_lib_base/um/x86_64" ]]; then
        detected_lib_arch="x86_64"
    elif [[ -d "$ucrt_lib_base/x64" ]] || [[ -d "$sdk_lib_base/$DETECTED_SDK_VERSION/um/x64" ]]; then
        detected_lib_arch="x64"
    fi
    
    export DETECTED_LIB_ARCH="$detected_lib_arch"
    
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} SDK version: $DETECTED_SDK_VERSION${COLOR_RESET}"
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Library arch: $detected_lib_arch${COLOR_RESET}"
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} All critical paths verified${COLOR_RESET}"
}

#===============================================================================
# Clean Target
#===============================================================================

clean() {
    banner "${EMOJI_FIRE} Cleaning Build Artifacts"
    
    rm -rf "$BUILD_DIR"
    rm -f v64tng.exe v64tng-debug.exe *.pdb
    rm -f "$BUILD_LOG"
    
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Cleaned build directory${COLOR_RESET}"
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Removed executables${COLOR_RESET}"
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Removed build log${COLOR_RESET}"
}

#===============================================================================
# Main Build
#===============================================================================

# Initialize build log
init_log

# Call setups
setup_winsdk

# Clean target
if [[ "$1" == "clean" ]]; then
    clean
    exit 0
fi

# Determine build type
BUILD_TYPE="Release"
if [[ "$1" == "debug" ]]; then
    BUILD_TYPE="Debug"
    echo "Debug build selected."
elif [[ "$1" == "super" ]]; then
    BUILD_TYPE="SuperRelease"
    echo "Super-release (LTO) build selected."
else
    echo "Release build selected."
fi

# Create build directory
mkdir -p "$BUILD_DIR"

# Compile resources using mingw windres (only thing we use from mingw)
banner "${EMOJI_PACKAGE} Compiling Resources"

RESOURCE_RES="$BUILD_DIR/resource.res"
RESOURCE_RC="resource.rc"

if [[ -f "$RESOURCE_RC" ]] && ([[ ! -f "$RESOURCE_RES" ]] || [[ "$RESOURCE_RC" -nt "$RESOURCE_RES" ]]); then
    echo "Compiling resource file..."
    res_log="$BUILD_DIR/resource.log"
    if x86_64-w64-mingw32-windres \
        -I "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/um" \
        -I "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/shared" \
        -I "$DETECTED_SDK_INCLUDE/ucrt" \
        -I "$DETECTED_CRT_INCLUDE" \
        -o "$RESOURCE_RES" "$RESOURCE_RC" 2>"$res_log"; then
        log_output "$res_log"
        echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Resource compiled${COLOR_RESET}"
    else
        log_output "$res_log"
        cat "$res_log"
        echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Resource compilation failed${COLOR_RESET}"
        exit 1
    fi
else
    echo -e "${COLOR_DIM}${EMOJI_CACHED} Resource up to date${COLOR_RESET}"
fi

#===============================================================================
# Shader Compilation
#===============================================================================

banner "${EMOJI_FIRE} Compiling Shaders"

# Helper function to compile Vulkan GLSL to SPIR-V header
compile_vulkan_shader() {
    local shader_src="$1"
    local spv_out="$2"
    local header_out="$3"
    local shader_name=$(basename "$shader_src" .comp)
    
    local regen=false
    if [[ ! -f "$header_out" ]]; then regen=true; fi
    if [[ -f "$shader_src" && -f "$header_out" && "$shader_src" -nt "$header_out" ]]; then regen=true; fi
    
    if [[ "$regen" == true ]]; then
        echo -e "${COLOR_CYAN}${EMOJI_WRENCH} Compiling Vulkan shader: $shader_name...${COLOR_RESET}"
        glslc -fshader-stage=compute "$shader_src" -o "$spv_out"
        if command -v xxd >/dev/null 2>&1; then
            xxd -i "$spv_out" > "$header_out"
        else
            echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: xxd not found (often provided by vim-common). Please install it.${COLOR_RESET}"
            exit 1
        fi
        echo -e "${COLOR_DIM}  Generated: $header_out${COLOR_RESET}"
    else
        echo -e "${COLOR_DIM}${EMOJI_CACHED} Vulkan shader cached: $shader_name${COLOR_RESET}"
    fi
}

# Helper function to embed shader source as C++ header (for runtime compilation)
embed_shader_source() {
    local shader_src="$1"
    local header_out="$2"
    local var_name="$3"
    local shader_name=$(basename "$shader_src")
    
    local regen=false
    if [[ ! -f "$header_out" ]]; then regen=true; fi
    if [[ -f "$shader_src" && -f "$header_out" && "$shader_src" -nt "$header_out" ]]; then regen=true; fi
    
    if [[ "$regen" == true ]]; then
        echo -e "${COLOR_CYAN}${EMOJI_WRENCH} Embedding shader source: $shader_name...${COLOR_RESET}"
        
        # Read shader file and escape for C string
        local escaped_content=$(cat "$shader_src" | sed 's/\\/\\\\/g' | sed 's/"/\\"/g' | awk '{printf "%s\\n", $0}')
        
        # Generate header
        cat > "$header_out" << EOF
// Auto-generated embedded shader source: $shader_name
#ifndef ${var_name}_H
#define ${var_name}_H

static const char* ${var_name} = R"SHADER(
$(cat "$shader_src")
)SHADER";

#endif // ${var_name}_H
EOF
        echo -e "${COLOR_DIM}  Generated: $header_out${COLOR_RESET}"
    else
        echo -e "${COLOR_DIM}${EMOJI_CACHED} Shader source cached: $shader_name${COLOR_RESET}"
    fi
}

# Helper function to compile D3D11 HLSL to CSO (compiled shader object) header
compile_d3d11_shader() {
    local shader_src="$1"
    local header_out="$2"
    local var_name="$3"
    
    # For D3D11, we embed the source code since we compile at runtime with D3DCompile
    embed_shader_source "$shader_src" "$header_out" "$var_name"
}

# Compile Vulkan shaders to SPIR-V (binary embedded)
compile_vulkan_shader \
    "shaders/vk_rgb_to_bgra.comp" \
    "$BUILD_DIR/rgb_to_bgra.spv" \
    "$BUILD_DIR/rgb_to_bgra_spv.h"

compile_vulkan_shader \
    "shaders/vk_raycast.comp" \
    "$BUILD_DIR/vk_raycast.spv" \
    "$BUILD_DIR/vk_raycast_spv.h"

# Embed D3D11 shader sources (compiled at runtime, but source is in exe)
compile_d3d11_shader \
    "shaders/d3d11_rgb_to_bgra.hlsl" \
    "$BUILD_DIR/d3d11_rgb_to_bgra.h" \
    "g_d3d11_rgb_to_bgra_hlsl"

compile_d3d11_shader \
    "shaders/d3d11_raycast.hlsl" \
    "$BUILD_DIR/d3d11_raycast.h" \
    "g_d3d11_raycast_hlsl"

echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Shader compilation complete${COLOR_RESET}"

#===============================================================================
# Source File Scanning
#===============================================================================

banner "${EMOJI_WRENCH} Scanning Source Files"

# Get source files
SOURCES=($(find src -name "*.cpp" | sort))
echo "Found ${#SOURCES[@]} source files"

# Generate object file paths
OBJECTS=()
for src in "${SOURCES[@]}"; do
    obj_name="$(basename "${src%.cpp}").o"
    OBJECTS+=("$BUILD_DIR/$obj_name")
done

SYSTEM_INCLUDES=(
    "-imsvc/opt/msvc/include"
)

# Add CRT include (for stdlib.h, etc.)
if [[ -n "$DETECTED_CRT_INCLUDE" ]]; then
    SYSTEM_INCLUDES+=("-imsvc$DETECTED_CRT_INCLUDE")
fi

# Add SDK includes based on detected structure
if [[ -n "$DETECTED_SDK_INCLUDE" ]]; then
    if [[ -d "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION" ]]; then
        # Traditional versioned structure
        SYSTEM_INCLUDES+=(
            "-imsvc$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/ucrt"
            "-imsvc$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/um" 
            "-imsvc$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/shared"
            "-imsvc$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/winrt"
        )
    else
        # xwin flat structure
        SYSTEM_INCLUDES+=(
            "-imsvc$DETECTED_SDK_INCLUDE/ucrt"
            "-imsvc$DETECTED_SDK_INCLUDE/um"
            "-imsvc$DETECTED_SDK_INCLUDE/shared" 
            "-imsvc$DETECTED_SDK_INCLUDE/winrt"
        )
    fi
fi

# Add cppwinrt if it exists
if [[ -d "$DETECTED_SDK_INCLUDE/cppwinrt" ]]; then
    SYSTEM_INCLUDES+=("-imsvc$DETECTED_SDK_INCLUDE/cppwinrt")
fi

USER_INCLUDES=(
    "-I./include"
    "-I$BUILD_DIR"
    "-I$ZLIB_DIR/include"
    "-I$LIBPNG_DIR/include"
    "-I$ADLMIDI_DIR/include"
    "-I$VULKAN_DIR/Include"
)

COMMON_FLAGS=(
    "--target=$TARGET_TRIPLE"
    "-fuse-ld=lld-link"
    "-DUNICODE"
    "-D_UNICODE"
    "/std:c++latest"
    "/EHsc"
    "/MT"
    "-fexceptions"
    "-fcxx-exceptions"
    "-fopenmp"
    "-msse2"
    "-msse3"
    "-mssse3"
    "-msse4.1"
    "-msse4.2"
    "-D__SSE2__"
    "-D__SSSE3__"
    "-fms-compatibility"
    "-fms-compatibility-version=19.37"
    "-D_MT"
    "-Wall"
    "-Wextra"
    "-Wpedantic"
    "-Wshadow"
    "-Wnon-virtual-dtor"
    "-Wold-style-cast"
    "-Wcast-align"
    "-Wunused"
    "-Woverloaded-virtual"
    "-Wno-unknown-argument"
    "-Wno-unused-command-line-argument"
    "-Wno-c++98-compat"
    "-Wno-c++98-compat-pedantic"
    "-Wno-nonportable-system-include-path"
)

if [[ "$BUILD_TYPE" == "Debug" ]]; then
    CLANG_FLAGS=(
        "${COMMON_FLAGS[@]}"
        "${SYSTEM_INCLUDES[@]}"
        "${USER_INCLUDES[@]}"
        "-O0"
        "-g"
        "-gcodeview"
    )
elif [[ "$BUILD_TYPE" == "SuperRelease" ]]; then
    CLANG_FLAGS=(
        "${COMMON_FLAGS[@]}"
        "${SYSTEM_INCLUDES[@]}"
        "${USER_INCLUDES[@]}"
        "-O3"
        "-DNDEBUG"
        "-fno-rtti"
        "-flto"
    )
else
    CLANG_FLAGS=(
        "${COMMON_FLAGS[@]}"
        "${SYSTEM_INCLUDES[@]}"
        "${USER_INCLUDES[@]}"
        "-O3"
        "-DNDEBUG"
        "-fno-rtti"
    )
fi

# Function to check if compilation is needed
needs_compile() {
    local src="$1"
    local obj="$2"
    local dep_file="$BUILD_DIR/$(basename "${src%.cpp}").d"
    
    # Object doesn't exist
    [[ ! -f "$obj" ]] && return 0
    
    # Source is newer
    [[ "$src" -nt "$obj" ]] && return 0
    
    # Check dependencies
    if [[ -f "$dep_file" ]]; then
        while read -r dep; do
            # Skip the target part and empty lines
            dep=$(echo "$dep" | sed 's/^[^:]*:\s*//' | tr ' ' '\n' | head -1)
            [[ -z "$dep" ]] && continue
            [[ "$dep" -nt "$obj" ]] && return 0
        done < "$dep_file"
    fi
    
    # Object file has zero size
    [[ ! -s "$obj" ]] && return 0
    
    return 1
}

# Compile batch of sources in parallel (from phantom.sh)
compile_batch() {
    local batch_sources=("$@")
    local pids=()
    local temp_outputs=()
    
    for src in "${batch_sources[@]}"; do
        obj="$BUILD_DIR/$(basename "${src%.cpp}").o"
        
        if needs_compile "$src" "$obj"; then
            local temp_out="$BUILD_DIR/$(basename "${src%.cpp}").compile.tmp"
            temp_outputs+=("$temp_out")
            
            {
                if clang-cl -c "$src" -o "$obj" "${CLANG_FLAGS[@]}" 2>"$temp_out"; then
                    echo -e "  ${COLOR_GREEN}${EMOJI_SUCCESS} $(basename "$src")${COLOR_RESET}" > "$temp_out.status"
                else
                    echo -e "  ${COLOR_RED}${EMOJI_FAILED} FAILED: $(basename "$src")${COLOR_RESET}" > "$temp_out.status"
                    echo "1" > "$temp_out.failed"
                fi
            } &
            pids+=($!)
        else
            echo -e "  ${COLOR_DIM}${EMOJI_CACHED} $(basename "$src") (cached)${COLOR_RESET}"
        fi
    done
    
    # Wait for all jobs in this batch
    local any_failed=0
    for pid in "${pids[@]}"; do
        wait "$pid" || any_failed=1
    done
    
    # Now print all outputs in order (keep the nice formatting)
    for temp_out in "${temp_outputs[@]}"; do
        if [[ -f "$temp_out.status" ]]; then
            cat "$temp_out.status"
        fi
        
        # Filter and show warnings/errors (exclude nlohmann/json.hpp spam)
        if [[ -s "$temp_out" ]]; then
            # Show warnings/errors but filter out nlohmann JSON library noise
            grep -v "nlohmann/json.hpp" "$temp_out" || true
            
            # Still log everything to build.log for completeness
            cat "$temp_out" >> "$BUILD_LOG"
        fi
        
        # Check if this one failed
        if [[ -f "$temp_out.failed" ]]; then
            any_failed=1
        fi
        
        # Cleanup temp files
        rm -f "$temp_out" "$temp_out.status" "$temp_out.failed"
    done
    
    return $any_failed
}

#===============================================================================
# Parallel Compilation
#===============================================================================

banner "${EMOJI_FIRE} Parallel Compilation ($COMPILE_JOBS jobs)"

# Set environment variables for clang-cl to find headers (same as library builds)
include_paths=""
[[ -d "$DETECTED_CRT_INCLUDE" ]] && include_paths+="$DETECTED_CRT_INCLUDE;"
[[ -d "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/um" ]] && include_paths+="$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/um;"
[[ -d "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/shared" ]] && include_paths+="$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/shared;"
[[ -d "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/ucrt" ]] && include_paths+="$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/ucrt;"

lib_paths=""
[[ -d "$DETECTED_CRT_LIB/$DETECTED_LIB_ARCH" ]] && lib_paths+="$DETECTED_CRT_LIB/$DETECTED_LIB_ARCH;"
[[ -d "$DETECTED_SDK_LIB/um/$DETECTED_LIB_ARCH" ]] && lib_paths+="$DETECTED_SDK_LIB/um/$DETECTED_LIB_ARCH;"
[[ -d "$DETECTED_SDK_LIB/ucrt/$DETECTED_LIB_ARCH" ]] && lib_paths+="$DETECTED_SDK_LIB/ucrt/$DETECTED_LIB_ARCH;"

export INCLUDE="$include_paths"
export LIB="$lib_paths"

# Detect flag changes to force rebuild
flags_file="$BUILD_DIR/.cxxflags"
new_flags="CLANG_FLAGS=${CLANG_FLAGS[*]}
INCLUDE=$include_paths
LIB=$lib_paths"

if [[ ! -f "$flags_file" ]] || ! cmp -s <(printf "%s" "$new_flags") "$flags_file"; then
    echo -e "${COLOR_YELLOW}${EMOJI_WARNING} Build flags changed, forcing full rebuild${COLOR_RESET}"
    printf "%s" "$new_flags" > "$flags_file"
    # Clean objects to force rebuild
    rm -f "$BUILD_DIR"/*.o "$BUILD_DIR"/*.d
fi

START_TIME=$(date +%s)

# Process sources in batches
BATCH_SIZE=$COMPILE_JOBS
for ((i=0; i<${#SOURCES[@]}; i+=BATCH_SIZE)); do
    batch=("${SOURCES[@]:i:BATCH_SIZE}")
    compile_batch "${batch[@]}" || exit 1
done

# Verify all compilations succeeded
FAILED_COUNT=0
for src in "${SOURCES[@]}"; do
    obj="$BUILD_DIR/$(basename "${src%.cpp}").o"
    if [[ ! -f "$obj" ]] || [[ ! -s "$obj" ]]; then
        echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Compilation failed for $(basename "$src")${COLOR_RESET}"
        ((FAILED_COUNT++))
    fi
done

if [[ $FAILED_COUNT -gt 0 ]]; then
    echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: $FAILED_COUNT source files failed to compile${COLOR_RESET}"
    exit 1
fi

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))

echo ""
echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Compilation completed in ${DURATION}s${COLOR_RESET}"

#===============================================================================
# Linking
#===============================================================================

banner "${EMOJI_WRENCH} Linking Executable"

# Count objects
obj_count=$(find "$BUILD_DIR" -name '*.o' 2>/dev/null | wc -l)
res_count=0
[[ -f "$RESOURCE_RES" ]] && res_count=1
obj_count_total=$((obj_count + res_count))

echo -e "${COLOR_DIM}Source objects:   ${obj_count}${COLOR_RESET}"
echo -e "${COLOR_DIM}Resource objects: ${res_count}${COLOR_RESET}"
echo -e "${COLOR_CYAN}Total objects:    ${obj_count_total}${COLOR_RESET}"
echo ""

# Compiler arguments
COMPILER_ARGS=(
    "--target=$TARGET_TRIPLE"
    "-fuse-ld=lld-link"
    "${OBJECTS[@]}"
)

# Add resource
[[ -f "$RESOURCE_RES" ]] && COMPILER_ARGS+=("$RESOURCE_RES")

# Linker arguments (passed after /link)
LINKER_ARGS=(
"/subsystem:windows"
    "/defaultlib:libcmt"
    "/defaultlib:libucrt"
    "/nodefaultlib:msvcrt.lib"
    "/nodefaultlib:ucrt.lib"
    "/libpath:$ZLIB_DIR/lib"
    "/libpath:$LIBPNG_DIR/lib"
    "/libpath:$ADLMIDI_DIR/lib"
    "/libpath:$VULKAN_DIR/Lib"
    "/libpath:$DETECTED_SDK_LIB/um/$DETECTED_LIB_ARCH"
    "/libpath:$DETECTED_SDK_LIB/ucrt/$DETECTED_LIB_ARCH"
    "/libpath:$DETECTED_CRT_LIB/$DETECTED_LIB_ARCH"
    "zlib.lib"
    "libpng.lib"
    "ADLMIDI.lib"
    "vulkan-1.lib"
    "libomp.lib"
    "user32.lib"
    "gdi32.lib"
    "shlwapi.lib"
    "shell32.lib"
    "d2d1.lib"
    "d3d11.lib"
    "dxgi.lib"
    "d3dcompiler.lib"
    "ole32.lib"
    "uuid.lib"
    "winmm.lib"
)

if [[ "$BUILD_TYPE" == "Debug" ]]; then
    OUTPUT_EXE="v64tng-debug.exe"
    LINKER_ARGS+=("/debug:full")
elif [[ "$BUILD_TYPE" == "SuperRelease" ]]; then
    OUTPUT_EXE="v64tng.exe"
    LINKER_ARGS+=("/opt:ref" "/LTCG")
else
    OUTPUT_EXE="v64tng.exe"
    LINKER_ARGS+=("/opt:ref")
fi

LINK_LOG="$BUILD_DIR/link.log"

echo -e "${COLOR_MAGENTA}Linking ${OUTPUT_EXE}...${COLOR_RESET}"
echo -e "${COLOR_DIM}Linker:   clang-cl${COLOR_RESET}"
echo -e "${COLOR_DIM}Subsystem: Windows${COLOR_RESET}"
if [[ "$BUILD_TYPE" == "Debug" ]]; then
    echo -e "${COLOR_DIM}Debug:    Full symbols${COLOR_RESET}"
elif [[ "$BUILD_TYPE" == "SuperRelease" ]]; then
    echo -e "${COLOR_DIM}Optimize: /opt:ref + /LTCG (LTO)${COLOR_RESET}"
else
    echo -e "${COLOR_DIM}Optimize: /opt:ref${COLOR_RESET}"
fi
echo ""

LINK_START=$(date +%s)

if clang-cl "${COMPILER_ARGS[@]}" -o "$OUTPUT_EXE" /link "${LINKER_ARGS[@]}" 2>"$LINK_LOG"; then
    log_output "$LINK_LOG"
    
    LINK_END=$(date +%s)
    LINK_DURATION=$((LINK_END - LINK_START))
    
    if [[ -f "$OUTPUT_EXE" ]]; then
        bin_size=$(stat -c%s "$OUTPUT_EXE" 2>/dev/null || stat -f%z "$OUTPUT_EXE" 2>/dev/null || echo "0")
        bin_size_human="$bin_size bytes"
        if command -v numfmt >/dev/null 2>&1; then
            bin_size_human=$(echo "$bin_size" | numfmt --to=iec-i --suffix=B)
        fi
        
        echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Linked: $OUTPUT_EXE${COLOR_RESET}"
        echo -e "${COLOR_DIM}Size:     ${bin_size_human}${COLOR_RESET}"
        echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Link completed in ${LINK_DURATION}s${COLOR_RESET}"
    fi
else
    log_output "$LINK_LOG"
    cat "$LINK_LOG"
    echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Linking failed${COLOR_RESET}"
    exit 1
fi

#===============================================================================
# Deployment
#===============================================================================

banner "${EMOJI_ROCKET} Deployment"

mkdir -p "$TARGET_DIR"
sudo rm -f "$TARGET_DIR"/*.exe "$TARGET_DIR"/*.pdb
sudo cp "$OUTPUT_EXE" "$TARGET_DIR/"

echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Deployed to $TARGET_DIR${COLOR_RESET}"

#===============================================================================
# Build Complete
#===============================================================================

banner "${EMOJI_ROCKET} Build Complete"

bin_size=$(stat -c%s "$OUTPUT_EXE" 2>/dev/null || stat -f%z "$OUTPUT_EXE" 2>/dev/null || echo "0")
bin_size_human="$bin_size bytes"
if command -v numfmt >/dev/null 2>&1; then
    bin_size_human=$(echo "$bin_size" | numfmt --to=iec-i --suffix=B)
fi

echo -e "${COLOR_DIM}Build dir:  $BUILD_DIR${COLOR_RESET}"
echo -e "${COLOR_DIM}Target dir: $TARGET_DIR${COLOR_RESET}"
echo -e "${COLOR_GREEN}${COLOR_BOLD}Output:     $OUTPUT_EXE${COLOR_RESET}"
echo -e "${COLOR_CYAN}Size:       ${bin_size_human}${COLOR_RESET}"
echo -e "${COLOR_CYAN}Build type: $BUILD_TYPE${COLOR_RESET}"
echo ""

# Check if there were any warnings/errors logged
if [[ -s "$BUILD_LOG" ]]; then
    echo -e "${COLOR_YELLOW}${EMOJI_WARNING} Warnings/errors logged to: $BUILD_LOG${COLOR_RESET}"
else
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} No warnings or errors${COLOR_RESET}"
fi