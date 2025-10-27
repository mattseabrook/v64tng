#!/bin/bash

# Build script for v64tng game engine - Linux to Windows cross-compilation
# Requires: clang, lld, mingw-w64-binutils (for windres only)

set -e  # Exit on any error

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
    printf "\n%s\n" "$line"
    printf "  %s\n" "$1"
    printf "%s\n\n" "$line"
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
    banner "Setting up Windows SDK"
    
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
            echo "ERROR: Critical SDK path missing: $path"
            exit 1
        else
            echo "✓ Found: $path"
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
    
    echo "✓ SDK version: $DETECTED_SDK_VERSION"
    echo "✓ Library arch: $detected_lib_arch"
    echo "✓ All critical paths verified"
}

#===============================================================================
# Clean Target
#===============================================================================

clean() {
    banner "Cleaning Build Artifacts"
    
    rm -rf "$BUILD_DIR"
    rm -f v64tng.exe v64tng-debug.exe *.pdb
    rm -f "$BUILD_LOG"
    
    echo "✓ Cleaned build directory"
    echo "✓ Removed executables"
    echo "✓ Removed build log"
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
else
    echo "Release build selected."
fi

# Create build directory
mkdir -p "$BUILD_DIR"

# Compile resources using mingw windres (only thing we use from mingw)
banner "Compiling Resources"

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
        echo "✓ Resource compiled"
    else
        log_output "$res_log"
        cat "$res_log"
        echo "ERROR: Resource compilation failed"
        exit 1
    fi
else
    echo "✓ Resource up to date"
fi

#===============================================================================
# Shader Compilation
#===============================================================================

banner "Compiling Shaders"

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
        echo "Compiling Vulkan shader: $shader_name..."
        glslc -fshader-stage=compute "$shader_src" -o "$spv_out"
        if command -v xxd >/dev/null 2>&1; then
            xxd -i "$spv_out" > "$header_out"
        else
            echo "ERROR: xxd not found (often provided by vim-common). Please install it."
            exit 1
        fi
        echo "  Generated: $header_out"
    else
        echo "Vulkan shader cached: $shader_name"
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
        echo "Embedding shader source: $shader_name..."
        
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
        echo "  Generated: $header_out"
    else
        echo "Shader source cached: $shader_name"
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

echo "✓ Shader compilation complete"

#===============================================================================
# Source File Scanning
#===============================================================================

banner "Scanning Source Files"

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
                    echo "  ✓ $(basename "$src")" > "$temp_out.status"
                else
                    echo "  ✗ FAILED: $(basename "$src")" > "$temp_out.status"
                    echo "1" > "$temp_out.failed"
                fi
            } &
            pids+=($!)
        else
            echo "  ≡ $(basename "$src") (cached)"
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

banner "Parallel Compilation ($COMPILE_JOBS jobs)"

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
        echo "ERROR: Compilation failed for $(basename "$src")"
        ((FAILED_COUNT++))
    fi
done

if [[ $FAILED_COUNT -gt 0 ]]; then
    echo "ERROR: $FAILED_COUNT source files failed to compile"
    exit 1
fi

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))

echo ""
echo "✓ Compilation completed in ${DURATION}s"

#===============================================================================
# Linking
#===============================================================================

banner "Linking Executable"

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
else
    OUTPUT_EXE="v64tng.exe"
    LINKER_ARGS+=("/opt:ref")
fi

LINK_LOG="$BUILD_DIR/link.log"

if clang-cl "${COMPILER_ARGS[@]}" -o "$OUTPUT_EXE" /link "${LINKER_ARGS[@]}" 2>"$LINK_LOG"; then
    log_output "$LINK_LOG"
    echo "✓ Linked: $OUTPUT_EXE"
else
    log_output "$LINK_LOG"
    cat "$LINK_LOG"
    echo "ERROR: Linking failed"
    exit 1
fi

#===============================================================================
# Deployment
#===============================================================================

banner "Deployment"

mkdir -p "$TARGET_DIR"
sudo rm -f "$TARGET_DIR"/*.exe "$TARGET_DIR"/*.pdb
sudo cp "$OUTPUT_EXE" "$TARGET_DIR/"

echo "✓ Deployed to $TARGET_DIR"

#===============================================================================
# Build Complete
#===============================================================================

banner "Build Complete"

echo "Output:     $OUTPUT_EXE"
echo "Size:       $(stat -c%s "$OUTPUT_EXE" | numfmt --to=iec-i --suffix=B)"
echo "Build type: $BUILD_TYPE"
echo ""

# Check if there were any warnings/errors logged
if [[ -s "$BUILD_LOG" ]]; then
    echo "⚠  Warnings/errors logged to: $BUILD_LOG"
else
    echo "✓ No warnings or errors"
fi