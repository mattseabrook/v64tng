#!/usr/bin/env bash
# build.sh — root builder (C++23 / clang++ / libc++)
set -Eeuo pipefail
[[ "${SBL_DEBUG:-0}" == "1" ]] && set -x

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

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
BACKEND_DIR="$PROJECT_ROOT/back-end"
FRONTEND_DIR="$PROJECT_ROOT/front-end"

BUILD_ROOT="$PROJECT_ROOT/build"
STAGE_PROJECT="$BUILD_ROOT/project"
STAGE_BACKEND="$STAGE_PROJECT/back-end"
STAGE_FRONTEND="$STAGE_PROJECT/front-end"
STAGE_INCLUDE_DIR="$STAGE_BACKEND/include"
STAGE_SOURCE_DIR="$STAGE_BACKEND/src"

OBJ_DIR_SRC="$BUILD_ROOT/obj/src"
OBJ_DIR_ASSETS="$BUILD_ROOT/obj/assets"
EXECUTABLE="$PROJECT_ROOT/speedboards"

# --- Parallel Compilation Settings -------------------------------------------
MAX_JOBS=$(nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 4)
COMPILE_JOBS=${SBL_JOBS:-$MAX_JOBS}

# --- Toolchain: clang++ + stdlib detection + lld ----------------------------
CXX="clang++"
USE_LLD=""
if command -v ld.lld >/dev/null 2>&1; then USE_LLD="-fuse-ld=lld"; fi

# Auto-detect best C++ standard library (libc++ preferred, fallback to libstdc++)
STDLIB_FLAG=""
if echo '#include <string>' | "$CXX" -stdlib=libc++ -x c++ -c - -o /dev/null 2>/dev/null; then
  STDLIB_FLAG="-stdlib=libc++"
  echo "Detected: libc++ available"
elif echo '#include <string>' | "$CXX" -x c++ -c - -o /dev/null 2>/dev/null; then
  STDLIB_FLAG=""  # Use default (libstdc++ on most Linux)
  echo "Detected: using default stdlib (libstdc++)"
else
  echo "ERROR: No working C++ standard library found"
  exit 1
fi

# compile flags (no linker flags here)
CXXFLAGS="-std=c++23 -O3 -DNDEBUG -march=native -fPIC -pipe \
          -Wall -Wextra -Wpedantic -flto ${STDLIB_FLAG} -MD -MP"
INCFLAGS="-I${STAGE_INCLUDE_DIR}"

# Add PostgreSQL include/lib paths if available (for libpq)
if command -v pg_config >/dev/null 2>&1; then
  PG_INC="$(pg_config --includedir)"
  PG_LIB="$(pg_config --libdir)"
  INCFLAGS+=" -I${PG_INC}"
  LDFLAGS+=" -L${PG_LIB}"
fi

# link flags (lld only used at link)
LDFLAGS="${STDLIB_FLAG} -flto -pthread -lsystemd -lcurl -lpq -lcrypto -lssl ${USE_LLD}"

banner() {
  local w=70 line; line="$(printf '%*s' "$w" | tr ' ' '-')"
  printf "\n${COLOR_BOLD}${COLOR_CYAN}+%s+\n| %-*s |\n+%s+${COLOR_RESET}\n" "$line" "$w" "$1" "$line"
}
need_cmd(){ 
  command -v "$1" >/dev/null 2>&1 || { 
    echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: missing '$1'${COLOR_RESET}"; 
    exit 1; 
  }
}
on_err(){ 
  echo -e "${COLOR_RED}${EMOJI_FIRE} Build flatlined. Line $1${COLOR_RESET}"; 
}
trap 'on_err $LINENO' ERR

# Strip HTML comments from stdin for production artifacts only (does not edit source files).
# Controlled by SBL_STRIP_HTML_COMMENTS (default=1). Set to 0 to disable.
strip_html_comments(){
  if [[ "${SBL_STRIP_HTML_COMMENTS:-1}" != "1" ]]; then cat; return 0; fi
  if command -v perl >/dev/null 2>&1; then
    perl -0777 -pe 's/<!--.*?-->//sg'
  else
    # sed fallback (less robust for nested edge cases)
    sed -E ':a; /<!--/ {N; /-->/! ba}; s/<!--([^-]|-[^-])*-->//g'
  fi
}

# Collapse whitespace to create a single-line ("wall of text") production HTML artifact.
# Controlled by SBL_MINIFY_HTML (default=1). Set to 0 to disable.
html_minify_stream(){
  if [[ "${SBL_MINIFY_HTML:-1}" != "1" ]]; then cat; return 0; fi
  if command -v npx >/dev/null 2>&1; then
    # Aggressive settings for production minification.
    if npx --yes html-minifier-terser \
        --collapse-whitespace \
        --remove-comments \
        --remove-optional-tags \
        --remove-redundant-attributes \
        --remove-script-type-attributes \
        --remove-style-link-type-attributes \
        --minify-css true \
        --minify-js true 2>/dev/null; then
      return 0
    fi
  fi
  # Fallback: collapse whitespace between tags but preserve single spaces and end tags.
  if command -v perl >/dev/null 2>&1; then
    perl -0777 -pe 's/\r//g; s/[\t ]+/ /g; s/>\s+</></g; s/\n/ /g; s/^ //; s/ $//;'
  else
    tr '\r\n\t' '   ' | sed -E 's/>[ ]+</></g; s/  +/ /g; s/^ //; s/ $//'
  fi
}

# Write to file only if content changed (preserve mtimes for incremental builds)
write_if_changed(){
  local target="$1"; shift || true
  local tmp="${target}.tmp"
  cat > "$tmp"
  if [[ -f "$target" ]] && cmp -s "$tmp" "$target"; then
    rm -f "$tmp"
  return 1  # unchanged
  else
    mv "$tmp" "$target"
  return 0  # changed
  fi
}

stage_project(){
  banner "${EMOJI_PACKAGE} staging project"
  echo -e "${COLOR_DIM}Sandboxing: $PROJECT_ROOT -> $STAGE_PROJECT${COLOR_RESET}"
  rm -rf "$STAGE_PROJECT"
  mkdir -p "$STAGE_PROJECT" "$OBJ_DIR_SRC" "$OBJ_DIR_ASSETS"
  if command -v rsync >/dev/null 2>&1; then
    rsync -a --delete --exclude '/build' --exclude '.git' --exclude 'node_modules' --exclude 'speedboards' \
      "$PROJECT_ROOT"/ "$STAGE_PROJECT"/
  else
    echo -e "${COLOR_YELLOW}${EMOJI_WARNING} rsync not found, using fallback copy (slower)${COLOR_RESET}"
    ( cd "$PROJECT_ROOT"
      for item in * .*; do
        [[ "$item" == "." || "$item" == ".." ]] && continue
        [[ "$item" == "build" || "$item" == ".git" || "$item" == "node_modules" || "$item" == "speedboards" ]] && continue
        cp -a "$item" "$STAGE_PROJECT/" 2>/dev/null || true
      done
    )
  fi
  [[ -d "$STAGE_BACKEND" ]] || { echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: staged back-end missing: $STAGE_BACKEND${COLOR_RESET}"; exit 1; }
  echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Stage online at $STAGE_PROJECT${COLOR_RESET}"
}

# Inject version/build string into staged boilerplate footer
inject_footer_version(){
  banner "${EMOJI_WRENCH} inject footer version"
  [[ -f "$STAGE_FRONTEND/boilerplate.html" ]] || { echo -e "${COLOR_DIM}(skip) no boilerplate: $STAGE_FRONTEND/boilerplate.html${COLOR_RESET}"; return 0; }

  local build_date build_time counts_file build_int version tmp
  build_date="$(date +%Y%m%d)"
  build_time="$(date +%H%M%S)"
  counts_file="$PROJECT_ROOT/.sbl_build_counts"
  build_int=1

  if [[ -f "$counts_file" ]]; then
    if grep -q "^$build_date " "$counts_file"; then
      build_int=$(awk -v d="$build_date" '$1==d {print $2}' "$counts_file")
      [[ -n "$build_int" ]] || build_int=0
      build_int=$((build_int + 1))
      awk -v d="$build_date" -v c="$build_int" 'BEGIN{found=0} {if($1==d){$2=c;found=1} print $1, $2} END{if(!found) print d, c}' "$counts_file" > "$counts_file.tmp" && mv "$counts_file.tmp" "$counts_file"
    else
      printf "%s %d\n" "$build_date" 1 >> "$counts_file"; build_int=1
    fi
  else
    printf "%s %d\n" "$build_date" 1 > "$counts_file"; build_int=1
  fi

  version="v.0.5 build ${build_date}.${build_time}.${build_int}"
  tmp="$STAGE_FRONTEND/boilerplate.html.tmp"
  # Preserve existing copyright text and append build line (single-line match)
  sed -E "s#<div[[:space:]]+id=\"version\">([^<]*)</div>#<div id=\"version\">\1<br><span id=\"build\">${version}</span></div>#" \
    "$STAGE_FRONTEND/boilerplate.html" > "$tmp" && mv "$tmp" "$STAGE_FRONTEND/boilerplate.html"
  echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Footer version injected: ${COLOR_BOLD}${version}${COLOR_RESET}"
  
  # Also generate version header for C++ code
  generate_version_header "$version"
}

generate_version_header(){
  local version="$1"
  local hdr="$STAGE_INCLUDE_DIR/version.h"
  mkdir -p "$STAGE_INCLUDE_DIR"
  
  if {
    cat <<EOF
#pragma once
// Auto-generated version header - DO NOT EDIT
// Generated: $(date -u +"%Y-%m-%d %H:%M:%S UTC")

namespace speedboards {
  constexpr const char* kVersion = "${version}";
}
EOF
  } | write_if_changed "$hdr"; then
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} wrote ${hdr#$PROJECT_ROOT/}${COLOR_RESET}"
  else
    echo -e "${COLOR_DIM}${EMOJI_CACHED} (unchanged) ${hdr#$PROJECT_ROOT/}${COLOR_RESET}"
  fi
}

minify(){
  banner "${EMOJI_WRENCH} minify assets"
  [[ -d "$STAGE_FRONTEND" ]] || { echo -e "${COLOR_DIM}(skip) no front-end: $STAGE_FRONTEND${COLOR_RESET}"; return 0; }
  need_cmd npx
  shopt -s nullglob
  local any=0
  # JS -> .min.js
  for f in "$STAGE_FRONTEND"/*.js; do
    [[ -e "$f" ]] || continue
    [[ "$f" == *.min.js ]] && continue
    any=1
    local out="${f%.js}.min.js"
    if [[ ! -f "$out" || "$f" -nt "$out" ]]; then
      echo -e "${COLOR_CYAN}${EMOJI_WRENCH} minify ${f#$STAGE_PROJECT/} → ${out#$STAGE_PROJECT/}${COLOR_RESET}"
      npx --yes terser "$f" --compress --mangle -o "$out" 2>&1 | grep -v "npm notice" || true
    fi
  done
  # CSS -> .min.css
  for f in "$STAGE_FRONTEND"/*.css; do
    [[ -e "$f" ]] || continue
    [[ "$f" == *.min.css ]] && continue
    any=1
    local out="${f%.css}.min.css"
    if [[ ! -f "$out" || "$f" -nt "$out" ]]; then
      echo -e "${COLOR_CYAN}${EMOJI_WRENCH} minify ${f#$STAGE_PROJECT/} → ${out#$STAGE_PROJECT/}${COLOR_RESET}"
      npx --yes uglifycss "$f" --output "$out" 2>&1 | grep -v "npm notice" || true
    fi
  done
  if [[ $any -eq 0 ]]; then echo -e "${COLOR_DIM}(no JS/CSS to minify)${COLOR_RESET}"; fi
}

generate_text_registry(){
  banner "${EMOJI_WRENCH} generate text registry"
  [[ -d "$STAGE_FRONTEND" ]] || { echo -e "${COLOR_DIM}(skip) no front-end: $STAGE_FRONTEND${COLOR_RESET}"; return 0; }
  local hdr="$STAGE_INCLUDE_DIR/txt_registry.h" delim="SBL"
  mkdir -p "$STAGE_INCLUDE_DIR"
  if {
    cat <<'HDR1'
#pragma once
#include <string>
#include <string_view>
#include <unordered_map>

static constexpr std::string_view kHeaderGuest = R"HTML(
HDR1
    if [[ -f "$STAGE_FRONTEND/boilerplate.html" ]]; then
      sed -n '/<!--GUEST-HEADER-->/, /<!--END-GUEST-HEADER-->/p' "$STAGE_FRONTEND/boilerplate.html" \
        | sed -E '1{/^\s*$/d}; ${/^[[:space:]]*$/d}' \
        | strip_html_comments | html_minify_stream | tr -d '\n' 
    fi
    cat <<'HDR2'
)HTML";

static constexpr std::string_view kHeaderUser = R"HTML(
HDR2
    if [[ -f "$STAGE_FRONTEND/boilerplate.html" ]]; then
      sed -n '/<!--USER-HEADER-->/, /<!--END-USER-HEADER-->/p' "$STAGE_FRONTEND/boilerplate.html" \
        | sed -E '1{/^\s*$/d}; ${/^[[:space:]]*$/d}' \
        | strip_html_comments | html_minify_stream | tr -d '\n' 
    fi
    cat <<'HDR3'
)HTML";

static constexpr std::string_view kFooter = R"HTML(
HDR3
    if [[ -f "$STAGE_FRONTEND/boilerplate.html" ]]; then
      sed -n '/<footer>/,/<\/footer>/p' "$STAGE_FRONTEND/boilerplate.html" \
        | sed -E '1{/^\s*$/d}; ${/^[[:space:]]*$/d}' \
        | strip_html_comments | html_minify_stream | tr -d '\n' 
    fi
    cat <<'HDR4'
)HTML";

static const std::unordered_map<std::string, std::string> kTextRegistry = {
HDR4
    shopt -s nullglob
    local first=1
    # Include explicit head/home if present
    if [[ -f "$STAGE_FRONTEND/head.html" ]]; then
      [[ $first -eq 0 ]] && echo ","; first=0
      echo -n '      {"head.html", R"SBL('
      # No longer injecting localization script here - handled dynamically by localization_script_block()
      sed 's/app\.js/app.min.js/g; s/style\.css/style.min.css/g' "$STAGE_FRONTEND/head.html" \
        | strip_html_comments | html_minify_stream
      echo ')SBL"}'
    fi
    if [[ -f "$STAGE_FRONTEND/home.html" ]]; then
      [[ $first -eq 0 ]] && echo ","; first=0
      echo -n '      {"home.html", R"SBL('
      sed 's/app\\.js/app.min.js/g; s/style\\.css/style.min.css/g' "$STAGE_FRONTEND/home.html" | strip_html_comments | html_minify_stream
      echo ')SBL"}'
    fi
    if [[ -f "$STAGE_FRONTEND/dashboard.html" ]]; then
      [[ $first -eq 0 ]] && echo ","; first=0
      echo -n '      {"dashboard.html", R"SBL('
      sed 's/app\\.js/app.min.js/g; s/style\\.css/style.min.css/g' "$STAGE_FRONTEND/dashboard.html" | strip_html_comments | html_minify_stream
      echo ')SBL"}'
    fi
    # Derive head/home from legacy index.html only if missing
    if [[ -f "$STAGE_FRONTEND/index.html" ]]; then
      if [[ ! -f "$STAGE_FRONTEND/head.html" ]]; then
        [[ $first -eq 0 ]] && echo ","; first=0
        echo -n '      {"head.html", R"SBL('
        # Fallback head extraction from index.html (no static localization injection)
        sed -n '/<head>/,/<\/head>/p' "$STAGE_FRONTEND/index.html" | sed 's/app\.js/app.min.js/g; s/style\.css/style.min.css/g' \
          | strip_html_comments | html_minify_stream
        echo ')SBL"}'
      fi
      if [[ ! -f "$STAGE_FRONTEND/home.html" ]]; then
        [[ $first -eq 0 ]] && echo ","; first=0
        echo -n '      {"home.html", R"SBL('
        sed -n '/<body>/,/<\/body>/p' "$STAGE_FRONTEND/index.html" \
          | sed '1,/<header>/d' \
          | sed '/<\/body>/,$d' \
          | strip_html_comments | html_minify_stream
        echo ')SBL"}'
      fi
    fi
    # Add remaining minified assets and other html (excluding boilerplate/index/head/home)
    for f in "$STAGE_FRONTEND"/*.min.js "$STAGE_FRONTEND"/*.umd.js "$STAGE_FRONTEND"/*.min.css "$STAGE_FRONTEND"/*.html; do
      [[ -e "$f" ]] || continue
      base="$(basename "$f")"
       [[ "$base" == "boilerplate.html" || "$base" == "index.html" || "$base" == "head.html" || "$base" == "home.html" || "$base" == "dashboard.html" ]] && continue
      [[ $first -eq 0 ]] && echo ","; first=0
      printf '      {"%s", R"%s(' "$base" "$delim"
      if [[ "$base" == *.html ]]; then
        strip_html_comments < "$f" | html_minify_stream
      else
        # Already minified (js/css); avoid passing through HTML minifier
        cat "$f"
      fi
      printf ')%s"}\n' "$delim"
    done
    echo "};"
  } | write_if_changed "$hdr"; then
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} wrote ${hdr#$PROJECT_ROOT/}${COLOR_RESET}"
  else
    echo -e "${COLOR_DIM}${EMOJI_CACHED} (unchanged) ${hdr#$PROJECT_ROOT/}${COLOR_RESET}"
  fi
}

generate_localization_header(){
  banner "${EMOJI_WRENCH} localization embed"
  local src_json="$STAGE_BACKEND/localization.json"
  local cpp_file="$STAGE_SOURCE_DIR/localization.cpp"
  mkdir -p "$STAGE_SOURCE_DIR"
  
  # First, ensure we have the base localization.cpp file
  local base_cpp="$PROJECT_ROOT/back-end/src/localization.cpp"
  if [[ -f "$base_cpp" ]]; then
    cp "$base_cpp" "$cpp_file"
  else
    echo "ERROR: base localization.cpp not found at $base_cpp"
    return 1
  fi
  
  # Now modify localization.cpp to embed the localization data
  if [[ -f "$src_json" ]]; then
    # Create a temporary file with the new definition
    local temp_file="$cpp_file.tmp"
    local delim="LOCJSON"
    
    # Write the new definition to temp file
    {
      printf '// Embedded localization data (generated by build script)\n'
      printf 'const char kLocalizationJSON[] = R"%s(\n' "$delim"
      cat "$src_json"
      printf '\n)%s";\n' "$delim"
    } > "$temp_file"
    
    # Replace the placeholder line with the new definition
    if sed -i '/const char kLocalizationJSON\[\] = R"JSON({})JSON";/{
      r '"$temp_file"'
      d
    }' "$cpp_file"; then
        echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} embedded localization.json → ${cpp_file#$PROJECT_ROOT/}${COLOR_RESET}"
        rm -f "$temp_file"
    else
        echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: failed to embed localization.json${COLOR_RESET}"
        rm -f "$temp_file"
        return 1
    fi
  else
    echo -e "${COLOR_YELLOW}${EMOJI_WARNING} WARN: no localization.json found at $src_json (using placeholder)${COLOR_RESET}"
    # Placeholder is already in the file
  fi
}

generate_binary_registry(){
  banner "${EMOJI_WRENCH} generate binary registry"
  [[ -d "$STAGE_FRONTEND" ]] || { echo -e "${COLOR_DIM}(skip) no front-end: $STAGE_FRONTEND${COLOR_RESET}"; return 0; }
  need_cmd objcopy; need_cmd nm
  local hdr="$STAGE_INCLUDE_DIR/bin_registry.h" externs="" entries=()
  mkdir -p "$STAGE_INCLUDE_DIR" "$OBJ_DIR_ASSETS"
  shopt -s nullglob
  for f in "$STAGE_FRONTEND"/*.png "$STAGE_FRONTEND"/*.ico "$STAGE_FRONTEND"/*.svg \
           "$STAGE_FRONTEND"/*.ttf "$STAGE_PROJECT"/*.ttf; do
    [[ -e "$f" ]] || continue
    local name stem obj
    name="$(basename "$f")"
    stem="${name%.*}"
    obj="$OBJ_DIR_ASSETS/${stem}.o"
    if [[ ! -f "$obj" || "$f" -nt "$obj" ]]; then
      echo -e "${COLOR_CYAN}${EMOJI_PACKAGE} embed ${f#$STAGE_PROJECT/} → ${obj#$PROJECT_ROOT/}${COLOR_RESET}"
      objcopy --input binary --output elf64-x86-64 --binary-architecture i386:x86-64 "$f" "$obj"
    fi
    local start_sym="" size_sym="" end_sym=""
    while IFS= read -r sym; do
      case "$sym" in *_start) start_sym="$sym";; *_size) size_sym="$sym";; *_end) end_sym="$sym";; esac
    done < <(nm -g "$obj" | awk '{print $3}')
    [[ -z "$start_sym" || -z "$size_sym" || -z "$end_sym" ]] && { echo -e "${COLOR_YELLOW}${EMOJI_WARNING} WARN: symbols not resolved for $name${COLOR_RESET}"; continue; }
    externs+=$'\n'"extern const char ${start_sym}[];"
    externs+=$'\n'"extern const size_t ${size_sym};"
    externs+=$'\n'"extern const char ${end_sym}[];"
    entries+=( "      {\"$name\", {${end_sym}, (size_t)&${size_sym}}}" )
  done
  if {
    cat <<EOF
#pragma once
#include <cstddef>
#include <string>
#include <unordered_map>
$externs
struct BinEntry { const char* data; size_t size; };
static const std::unordered_map<std::string, BinEntry> kBinaryRegistry = {
EOF
    local i n=${#entries[@]}
    for ((i=0; i<n; ++i)); do
      if (( i+1 < n )); then echo "${entries[$i]},"; else echo "${entries[$i]}"; fi
    done
    echo "};"
  } | write_if_changed "$hdr"; then
    echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} wrote ${hdr#$PROJECT_ROOT/}${COLOR_RESET}"
  else
    echo -e "${COLOR_DIM}${EMOJI_CACHED} (unchanged) ${hdr#$PROJECT_ROOT/}${COLOR_RESET}"
  fi
}

# Function to check if compilation is needed (with dependency tracking)
needs_compile() {
  local src="$1"
  local obj="$2"
  local dep_file="${obj%.o}.d"
  
  # Object doesn't exist
  [[ ! -f "$obj" ]] && return 0
  
  # Source is newer
  [[ "$src" -nt "$obj" ]] && return 0
  
  # Check dependency file (.d) for header changes
  if [[ -f "$dep_file" ]]; then
    while IFS= read -r line; do
      # Parse dependencies from .d file (skip target and backslashes)
      local deps=$(echo "$line" | sed 's/^[^:]*://; s/\\$//; s/^[[:space:]]*//')
      for dep in $deps; do
        [[ -z "$dep" || ! -f "$dep" ]] && continue
        [[ "$dep" -nt "$obj" ]] && return 0
      done
    done < "$dep_file"
  fi
  
  # Object file has zero size (corrupted)
  [[ ! -s "$obj" ]] && return 0
  
  return 1
}

# Compile batch of sources in parallel
compile_batch() {
  local batch_sources=("$@")
  local pids=()
  local temp_outputs=()
  
  for src in "${batch_sources[@]}"; do
    local obj="$OBJ_DIR_SRC/$(basename "${src%.cpp}").o"
    
    if needs_compile "$src" "$obj"; then
      local temp_out="$OBJ_DIR_SRC/$(basename "${src%.cpp}").compile.tmp"
      temp_outputs+=("$temp_out")
      
      {
        if "$CXX" -c "$src" -o "$obj" $INCFLAGS $CXXFLAGS 2>"$temp_out"; then
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
  
  # Print all outputs in order
  for temp_out in "${temp_outputs[@]}"; do
    if [[ -f "$temp_out.status" ]]; then
      cat "$temp_out.status"
    fi
    
    # Show warnings/errors (filter out common library noise)
    if [[ -s "$temp_out" ]]; then
      grep -v "nlohmann/json.hpp" "$temp_out" || true
    fi
    
    # Check if this one failed
    if [[ -f "$temp_out.failed" ]]; then
      any_failed=1
      cat "$temp_out" # Show full error on failure
    fi
    
    # Cleanup temp files
    rm -f "$temp_out" "$temp_out.status" "$temp_out.failed"
  done
  
  return $any_failed
}

compile(){
  banner "${EMOJI_FIRE} compile (${COMPILE_JOBS} parallel jobs)"
  mkdir -p "$OBJ_DIR_SRC"
  mapfile -d '' sources < <(find "$STAGE_SOURCE_DIR" -type f -name '*.cpp' -print0 | sort -z)
  if ((${#sources[@]}==0)); then echo -e "${COLOR_YELLOW}${EMOJI_WARNING} No C++ sources under ${STAGE_SOURCE_DIR#$PROJECT_ROOT/}${COLOR_RESET}"; return 0; fi
  
  # Detect flag changes to force rebuild
  mkdir -p "$BUILD_ROOT"
  local flags_file="$BUILD_ROOT/.cxxflags" new_flags
  new_flags="CXX=$CXX
CXXFLAGS=$CXXFLAGS
INCFLAGS=$INCFLAGS
LDFLAGS=$LDFLAGS"
  
  if [[ ! -f "$flags_file" ]] || ! cmp -s <(printf "%s" "$new_flags") "$flags_file"; then
    echo -e "${COLOR_YELLOW}${EMOJI_WARNING} Build flags changed, forcing full rebuild${COLOR_RESET}"
    printf "%s" "$new_flags" > "$flags_file"
    # Clean objects to force rebuild
    rm -f "$OBJ_DIR_SRC"/*.o "$OBJ_DIR_SRC"/*.d
  fi
  
  local START_TIME=$(date +%s)
  
  # Process sources in batches
  local BATCH_SIZE=$COMPILE_JOBS
  for ((i=0; i<${#sources[@]}; i+=BATCH_SIZE)); do
    batch=("${sources[@]:i:BATCH_SIZE}")
    compile_batch "${batch[@]}" || { echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Compilation failed${COLOR_RESET}"; exit 1; }
  done
  
  # Verify all compilations succeeded
  local FAILED_COUNT=0
  for src in "${sources[@]}"; do
    local obj="$OBJ_DIR_SRC/$(basename "${src%.cpp}").o"
    if [[ ! -f "$obj" ]] || [[ ! -s "$obj" ]]; then
      echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Compilation failed for $(basename "$src")${COLOR_RESET}"
      ((FAILED_COUNT++))
    fi
  done
  
  if [[ $FAILED_COUNT -gt 0 ]]; then
    echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: $FAILED_COUNT source files failed to compile${COLOR_RESET}"
    exit 1
  fi
  
  local END_TIME=$(date +%s)
  local DURATION=$((END_TIME - START_TIME))
  echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Compilation completed in ${DURATION}s${COLOR_RESET}"
}

link_binary(){
  banner "${EMOJI_WRENCH} link"
  
  local obj_count_src=$(find "$OBJ_DIR_SRC" -name '*.o' 2>/dev/null | wc -l)
  local obj_count_assets=$(find "$OBJ_DIR_ASSETS" -name '*.o' 2>/dev/null | wc -l)
  local obj_count_total=$((obj_count_src + obj_count_assets))
  
  echo -e "${COLOR_DIM}Source objects:   ${obj_count_src}${COLOR_RESET}"
  echo -e "${COLOR_DIM}Asset objects:    ${obj_count_assets}${COLOR_RESET}"
  echo -e "${COLOR_CYAN}Total objects:    ${obj_count_total}${COLOR_RESET}"
  echo ""
  
  # Relink only if needed
  local need_link=0
  if [[ ! -f "$EXECUTABLE" ]]; then
    need_link=1
    echo -e "${COLOR_YELLOW}Reason: Binary does not exist${COLOR_RESET}"
  else
    local exe_ts
    exe_ts=$(stat -c %Y "$EXECUTABLE" 2>/dev/null || stat -f %m "$EXECUTABLE")
    # If any object newer than exe, relink
    while IFS= read -r o; do
      local o_ts
      o_ts=$(stat -c %Y "$o" 2>/dev/null || stat -f %m "$o")
      if (( o_ts > exe_ts )); then 
        need_link=1
        echo -e "${COLOR_YELLOW}Reason: Object files newer than binary${COLOR_RESET}"
        break
      fi
    done < <(find "$BUILD_ROOT/obj" -type f -name '*.o')
  fi
  
  if [[ $need_link -eq 1 ]]; then
    echo -e "${COLOR_MAGENTA}Linking ${EXECUTABLE#$PROJECT_ROOT/}...${COLOR_RESET}"
    echo -e "${COLOR_DIM}Linker:   $CXX${COLOR_RESET}"
    echo -e "${COLOR_DIM}Flags:    $LDFLAGS${COLOR_RESET}"
    echo ""
    
    local LINK_START=$(date +%s)
    "$CXX" \
      $(find "$OBJ_DIR_SRC" -name '*.o' -print0 | xargs -0 echo) \
      $(find "$OBJ_DIR_ASSETS" -name '*.o' -print0 | xargs -0 echo) \
      -o "$EXECUTABLE" $LDFLAGS
    local LINK_END=$(date +%s)
    local LINK_DURATION=$((LINK_END - LINK_START))
    
    if [[ -f "$EXECUTABLE" ]]; then
      local bin_size=$(stat -c%s "$EXECUTABLE" 2>/dev/null || stat -f%z "$EXECUTABLE" 2>/dev/null || echo "0")
      if [[ "$bin_size" != "0" ]] && command -v numfmt >/dev/null 2>&1; then
        bin_size=$(echo "$bin_size" | numfmt --to=iec-i --suffix=B)
      else
        bin_size="${bin_size} bytes"
      fi
      echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Binary created: ${COLOR_BOLD}${EXECUTABLE#$PROJECT_ROOT/}${COLOR_RESET} ${COLOR_DIM}(${bin_size})${COLOR_RESET}"
      echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Link completed in ${LINK_DURATION}s${COLOR_RESET}"
    else
      echo -e "${COLOR_RED}${EMOJI_FAILED} Link failed!${COLOR_RESET}"
      exit 1
    fi
  else
    echo -e "${COLOR_DIM}${EMOJI_CACHED} Binary up to date: ${EXECUTABLE#$PROJECT_ROOT/}${COLOR_RESET}"
  fi
}

post_compile(){ 
  banner "${EMOJI_ROCKET} build complete"
  echo -e "${COLOR_DIM}Stage:   $STAGE_PROJECT${COLOR_RESET}"
  echo -e "${COLOR_DIM}Objects: $BUILD_ROOT/obj${COLOR_RESET}"
  echo -e "${COLOR_GREEN}${COLOR_BOLD}Binary:  $EXECUTABLE${COLOR_RESET}"
}

clean(){ 
  banner "${EMOJI_FIRE} clean"
  rm -rf "$BUILD_ROOT"
  rm -f "$EXECUTABLE"
  echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Flatlined ./build and ./speedboards${COLOR_RESET}"
}

case "${1:-}" in
  clean) clean ;;
  deploy)
    banner "${EMOJI_ROCKET} deploy (local/datacenter)"
    need_cmd systemctl
    [[ -f "$EXECUTABLE" ]] || { echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: $EXECUTABLE not found. Build first.${COLOR_RESET}"; exit 1; }
    if [[ $EUID -ne 0 ]]; then SUDO="sudo"; else SUDO=""; fi
    echo -e "${COLOR_YELLOW}Stopping service: speedboards${COLOR_RESET}"; $SUDO systemctl stop speedboards || true
    echo -e "${COLOR_CYAN}Deploying binary to /opt/speedboards${COLOR_RESET}"; $SUDO rm -f "/opt/speedboards" || true
    $SUDO cp -f "$EXECUTABLE" "/opt/speedboards"; $SUDO chmod 0755 "/opt/speedboards"
    echo -e "${COLOR_GREEN}Starting service: speedboards${COLOR_RESET}"; $SUDO systemctl start speedboards || true
    $SUDO systemctl is-active --quiet speedboards && echo -e "${COLOR_GREEN}${EMOJI_SUCCESS} Service active${COLOR_RESET}" || { echo -e "${COLOR_RED}${EMOJI_FAILED} Service not active${COLOR_RESET}"; $SUDO systemctl status --no-pager -l speedboards || true; exit 1; }
    ;;
  deploy-remote)
    banner "${EMOJI_ROCKET} deploy (remote over SSH)"
    [[ -f "$EXECUTABLE" ]] || { echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: $EXECUTABLE not found. Build first.${COLOR_RESET}"; exit 1; }
    
    # Configuration (can be overridden with environment variables)
    REMOTE_HOST="${SBL_REMOTE_HOST:-speedboards.live}"
    REMOTE_USER="${SBL_REMOTE_USER:-info}"
    REMOTE_PATH="${SBL_REMOTE_PATH:-/opt/speedboards}"
    SSH_KEY="${SBL_SSH_KEY:-$HOME/.ssh/speedboards_deploy}"
    
    echo -e "${COLOR_CYAN}Remote deployment configuration:${COLOR_RESET}"
    echo -e "${COLOR_DIM}  Host: ${REMOTE_USER}@${REMOTE_HOST}${COLOR_RESET}"
    echo -e "${COLOR_DIM}  Path: ${REMOTE_PATH}${COLOR_RESET}"
    echo -e "${COLOR_DIM}  SSH Key: ${SSH_KEY}${COLOR_RESET}"
    echo ""
    
    # Verify SSH key exists
    if [[ ! -f "$SSH_KEY" ]]; then
      echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: SSH key not found: $SSH_KEY${COLOR_RESET}"
      echo -e "${COLOR_YELLOW}Run './build.sh setup-deploy' to create and configure SSH keys${COLOR_RESET}"
      exit 1
    fi
    
    # Test SSH connection
    echo -e "${COLOR_CYAN}Testing SSH connection...${COLOR_RESET}"
    if ! ssh -i "$SSH_KEY" -o ConnectTimeout=10 -o BatchMode=yes "${REMOTE_USER}@${REMOTE_HOST}" "echo 'Connection successful'" 2>/dev/null; then
      echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Cannot connect to ${REMOTE_USER}@${REMOTE_HOST}${COLOR_RESET}"
      echo -e "${COLOR_YELLOW}Verify:${COLOR_RESET}"
      echo -e "${COLOR_DIM}  1. SSH key is configured: ${SSH_KEY}${COLOR_RESET}"
      echo -e "${COLOR_DIM}  2. Public key is in remote ~/.ssh/authorized_keys${COLOR_RESET}"
      echo -e "${COLOR_DIM}  3. Remote host is reachable${COLOR_RESET}"
      exit 1
    fi
    
    # Create temporary deployment script
    DEPLOY_SCRIPT=$(mktemp)
    cat > "$DEPLOY_SCRIPT" << 'EOFSCRIPT'
#!/bin/bash
set -e
BINARY="$1"
TARGET_PATH="$2"

echo "Stopping speedboards service..."
sudo systemctl stop speedboards || true

echo "Backing up current binary..."
if [[ -f "$TARGET_PATH" ]]; then
  sudo cp "$TARGET_PATH" "${TARGET_PATH}.backup"
fi

echo "Installing new binary..."
sudo mv "$BINARY" "$TARGET_PATH"
sudo chmod 0755 "$TARGET_PATH"
sudo chown root:root "$TARGET_PATH"

echo "Starting speedboards service..."
sudo systemctl start speedboards

echo "Verifying service status..."
sleep 2
if sudo systemctl is-active --quiet speedboards; then
  echo "✓ Service started successfully"
  # Clean up backup on success
  sudo rm -f "${TARGET_PATH}.backup"
else
  echo "ERROR: Service failed to start"
  echo "Rolling back to previous version..."
  if [[ -f "${TARGET_PATH}.backup" ]]; then
    sudo mv "${TARGET_PATH}.backup" "$TARGET_PATH"
    sudo systemctl start speedboards
  fi
  sudo systemctl status speedboards --no-pager -l || true
  exit 1
fi
EOFSCRIPT
    
    BINARY_SIZE=$(stat -c%s "$EXECUTABLE" 2>/dev/null || stat -f%z "$EXECUTABLE" 2>/dev/null || echo "unknown")
    if [[ "$BINARY_SIZE" != "unknown" ]] && command -v numfmt >/dev/null 2>&1; then
      BINARY_SIZE=$(echo "$BINARY_SIZE" | numfmt --to=iec-i --suffix=B)
    fi
    echo -e "${COLOR_CYAN}Transferring binary (${BINARY_SIZE})...${COLOR_RESET}"
    REMOTE_TMP="/tmp/speedboards.$$"
    
    # Try rsync first (fast), fallback to scp (slower but more compatible)
    if command -v rsync >/dev/null 2>&1; then
      if ! rsync -avz --progress -e "ssh -i $SSH_KEY" "$EXECUTABLE" "${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_TMP}"; then
        echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Failed to transfer binary${COLOR_RESET}"
        rm -f "$DEPLOY_SCRIPT"
        exit 1
      fi
    else
      echo -e "${COLOR_YELLOW}${EMOJI_WARNING} rsync not found, using scp (slower)${COLOR_RESET}"
      if ! scp -i "$SSH_KEY" "$EXECUTABLE" "${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_TMP}"; then
        echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Failed to transfer binary${COLOR_RESET}"
        rm -f "$DEPLOY_SCRIPT"
        exit 1
      fi
    fi
    
    # Transfer and execute deployment script
    echo -e "${COLOR_CYAN}Executing remote deployment...${COLOR_RESET}"
    if ssh -i "$SSH_KEY" "${REMOTE_USER}@${REMOTE_HOST}" "bash -s" -- "$REMOTE_TMP" "$REMOTE_PATH" < "$DEPLOY_SCRIPT"; then
      echo ""
      echo -e "${COLOR_GREEN}${COLOR_BOLD}${EMOJI_ROCKET} Remote deployment successful!${COLOR_RESET}"
      echo -e "${COLOR_DIM}  Binary deployed to: ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}${COLOR_RESET}"
      
      # Cleanup remote temp file
      ssh -i "$SSH_KEY" "${REMOTE_USER}@${REMOTE_HOST}" "rm -f ${REMOTE_TMP}" || true
    else
      echo -e "${COLOR_RED}${EMOJI_FAILED} ERROR: Remote deployment failed${COLOR_RESET}"
      # Cleanup on failure
      ssh -i "$SSH_KEY" "${REMOTE_USER}@${REMOTE_HOST}" "rm -f ${REMOTE_TMP}" || true
      rm -f "$DEPLOY_SCRIPT"
      exit 1
    fi
    
    rm -f "$DEPLOY_SCRIPT"
    ;;
  setup-deploy)
    banner "setup remote deployment"
    
    echo "This will configure SSH key-based authentication for remote deployment."
    echo ""
    
    # Get configuration
    read -p "Remote hostname (e.g., speedboards.live or IP): " REMOTE_HOST
    read -p "Remote username (default: info): " REMOTE_USER
    REMOTE_USER="${REMOTE_USER:-info}"
    
    SSH_KEY="$HOME/.ssh/speedboards_deploy"
    
    echo ""
    echo "Configuration:"
    echo "  Remote: ${REMOTE_USER}@${REMOTE_HOST}"
    echo "  SSH Key: ${SSH_KEY}"
    echo ""
    read -p "Continue? (y/N): " confirm
    [[ "$confirm" != "y" && "$confirm" != "Y" ]] && { echo "Aborted."; exit 0; }
    
    # Generate SSH key if it doesn't exist
    if [[ ! -f "$SSH_KEY" ]]; then
      echo ""
      echo "Generating SSH key pair..."
      mkdir -p "$HOME/.ssh"
      chmod 700 "$HOME/.ssh"
      ssh-keygen -t ed25519 -C "speedboards-deploy@$(hostname)" -f "$SSH_KEY" -N ""
      echo "✓ SSH key generated: ${SSH_KEY}"
    else
      echo "✓ SSH key already exists: ${SSH_KEY}"
    fi
    
    # Copy public key to remote
    echo ""
    echo "Installing public key on remote server..."
    echo "You will be prompted for the remote user's password."
    echo ""
    
    if ssh-copy-id -i "${SSH_KEY}.pub" "${REMOTE_USER}@${REMOTE_HOST}"; then
      echo "✓ Public key installed on remote server"
    else
      echo "ERROR: Failed to install public key"
      echo ""
      echo "Manual setup:"
      echo "1. Copy this public key:"
      cat "${SSH_KEY}.pub"
      echo ""
      echo "2. Add it to remote ~/.ssh/authorized_keys:"
      echo "   ssh ${REMOTE_USER}@${REMOTE_HOST}"
      echo "   mkdir -p ~/.ssh"
      echo "   chmod 700 ~/.ssh"
      echo "   nano ~/.ssh/authorized_keys  # paste the public key"
      echo "   chmod 600 ~/.ssh/authorized_keys"
      exit 1
    fi
    
    # Test connection
    echo ""
    echo "Testing SSH connection..."
    if ssh -i "$SSH_KEY" -o BatchMode=yes "${REMOTE_USER}@${REMOTE_HOST}" "echo 'Connection successful'"; then
      echo "✓ SSH connection successful"
    else
      echo "ERROR: SSH connection failed"
      exit 1
    fi
    
    # Configure sudo on remote (optional)
    echo ""
    echo "Remote deployment requires sudo access to:"
    echo "  - systemctl stop/start/status speedboards"
    echo "  - cp/mv/chmod/chown files to /opt/speedboards"
    echo ""
    read -p "Configure passwordless sudo for deployment? (y/N): " setup_sudo
    
    if [[ "$setup_sudo" == "y" || "$setup_sudo" == "Y" ]]; then
      echo ""
      echo "Creating sudoers configuration on remote..."
      SUDOERS_CONTENT="${REMOTE_USER} ALL=(root) NOPASSWD: /usr/bin/systemctl stop speedboards, /usr/bin/systemctl start speedboards, /usr/bin/systemctl status speedboards, /usr/bin/systemctl is-active speedboards, /usr/bin/cp * /opt/speedboards, /usr/bin/mv * /opt/speedboards, /usr/bin/chmod * /opt/speedboards, /usr/bin/chown * /opt/speedboards, /usr/bin/rm -f /opt/speedboards.backup"
      
      ssh -i "$SSH_KEY" "${REMOTE_USER}@${REMOTE_HOST}" "echo '${SUDOERS_CONTENT}' | sudo tee /etc/sudoers.d/speedboards-deploy > /dev/null && sudo chmod 440 /etc/sudoers.d/speedboards-deploy"
      echo "✓ Passwordless sudo configured"
    else
      echo ""
      echo "Manual sudo setup required. Add to /etc/sudoers.d/speedboards-deploy on remote:"
      echo "${REMOTE_USER} ALL=(root) NOPASSWD: /usr/bin/systemctl stop speedboards, /usr/bin/systemctl start speedboards, /usr/bin/systemctl status speedboards, /usr/bin/systemctl is-active speedboards, /usr/bin/cp * /opt/speedboards, /usr/bin/mv * /opt/speedboards, /usr/bin/chmod * /opt/speedboards, /usr/bin/chown * /opt/speedboards, /usr/bin/rm -f /opt/speedboards.backup"
    fi
    
    # Save configuration
    CONFIG_FILE="$HOME/.config/speedboards/deploy.conf"
    mkdir -p "$(dirname "$CONFIG_FILE")"
    cat > "$CONFIG_FILE" << EOFCONFIG
# Speedboards Remote Deployment Configuration
# Generated: $(date)
SBL_REMOTE_HOST="${REMOTE_HOST}"
SBL_REMOTE_USER="${REMOTE_USER}"
SBL_REMOTE_PATH="/opt/speedboards"
SBL_SSH_KEY="${SSH_KEY}"
EOFCONFIG
    
    echo ""
    echo "✓ Configuration saved to: ${CONFIG_FILE}"
    echo ""
    echo "To use remote deployment, you can either:"
    echo "  1. Export environment variables before building:"
    echo "     source ${CONFIG_FILE}"
    echo "     ./build.sh && ./build.sh deploy-remote"
    echo ""
    echo "  2. Or specify them inline:"
    echo "     SBL_REMOTE_HOST=${REMOTE_HOST} ./build.sh deploy-remote"
    echo ""
    echo "✓ Remote deployment setup complete!"
    ;;
  *) stage_project; minify; inject_footer_version; generate_text_registry; generate_localization_header; generate_binary_registry; compile; link_binary; post_compile ;;
esac