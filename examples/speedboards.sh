#!/usr/bin/env bash
# build.sh — root builder (C++23 / clang++ / libc++)
set -Eeuo pipefail
[[ "${SBL_DEBUG:-0}" == "1" ]] && set -x

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
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

# --- Toolchain: clang++ + libc++ + lld ---------------------------------------
CXX="clang++"
USE_LLD=""
if command -v ld.lld >/dev/null 2>&1; then USE_LLD="-fuse-ld=lld"; fi

# compile flags (no linker flags here)
CXXFLAGS="-std=c++23 -O3 -DNDEBUG -march=native -fPIC -pipe \
          -Wall -Wextra -Wpedantic -flto -stdlib=libc++"
INCFLAGS="-I${STAGE_INCLUDE_DIR}"

# Add PostgreSQL include/lib paths if available (for libpq)
if command -v pg_config >/dev/null 2>&1; then
  PG_INC="$(pg_config --includedir)"
  PG_LIB="$(pg_config --libdir)"
  INCFLAGS+=" -I${PG_INC}"
  LDFLAGS+=" -L${PG_LIB}"
fi

# link flags (lld only used at link)
LDFLAGS="-stdlib=libc++ -flto -pthread -lsystemd -lcurl -lpq -lcrypto -lssl ${USE_LLD}"

banner() {
  local w=70 line; line="$(printf '%*s' "$w" | tr ' ' '-')"
  printf "\n+%s+\n| %-*s|\n+%s+\n" "$line" "$w" "$1" "$line"
}
need_cmd(){ command -v "$1" >/dev/null 2>&1 || { echo "ERROR: missing '$1'"; exit 1; }; }
on_err(){ echo "Build flatlined. Line $1"; }
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
  banner "stage"
  echo "Sandboxing: $PROJECT_ROOT -> $STAGE_PROJECT"
  rm -rf "$STAGE_PROJECT"
  mkdir -p "$STAGE_PROJECT" "$OBJ_DIR_SRC" "$OBJ_DIR_ASSETS"
  if command -v rsync >/dev/null 2>&1; then
    rsync -a --delete --exclude '/build' --exclude '.git' --exclude 'node_modules' --exclude 'speedboards' \
      "$PROJECT_ROOT"/ "$STAGE_PROJECT"/
  else
    ( cd "$PROJECT_ROOT"
      for item in * .*; do
        [[ "$item" == "." || "$item" == ".." ]] && continue
        [[ "$item" == "build" || "$item" == ".git" || "$item" == "node_modules" || "$item" == "speedboards" ]] && continue
        cp -a "$item" "$STAGE_PROJECT/" 2>/dev/null || true
      done
    )
  fi
  [[ -d "$STAGE_BACKEND" ]] || { echo "ERROR: staged back-end missing: $STAGE_BACKEND"; exit 1; }
  echo "Stage online at $STAGE_PROJECT"
}

# Inject version/build string into staged boilerplate footer
inject_footer_version(){
  banner "pre / inject footer version"
  [[ -f "$STAGE_FRONTEND/boilerplate.html" ]] || { echo "(skip) no boilerplate: $STAGE_FRONTEND/boilerplate.html"; return 0; }

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
  echo "Footer version injected: $version"
}

minify(){
  banner "pre / minify"
  [[ -d "$STAGE_FRONTEND" ]] || { echo "(skip) no front-end: $STAGE_FRONTEND"; return 0; }
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
      echo "minify ${f#$STAGE_PROJECT/} -> ${out#$STAGE_PROJECT/}"
      npx --yes terser "$f" --compress --mangle -o "$out"
    fi
  done
  # CSS -> .min.css
  for f in "$STAGE_FRONTEND"/*.css; do
    [[ -e "$f" ]] || continue
    [[ "$f" == *.min.css ]] && continue
    any=1
    local out="${f%.css}.min.css"
    if [[ ! -f "$out" || "$f" -nt "$out" ]]; then
      echo "minify ${f#$STAGE_PROJECT/} -> ${out#$STAGE_PROJECT/}"
      npx --yes uglifycss "$f" --output "$out"
    fi
  done
  if [[ $any -eq 0 ]]; then echo "(no JS/CSS to minify)"; fi
}

generate_text_registry(){
  banner "pre / text registry"
  [[ -d "$STAGE_FRONTEND" ]] || { echo "(skip) no front-end: $STAGE_FRONTEND"; return 0; }
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
    echo "wrote ${hdr#$PROJECT_ROOT/}"
  else
    echo "(unchanged) ${hdr#$PROJECT_ROOT/}"
  fi
}

generate_localization_header(){
  banner "pre / localization embed"
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
        echo "embedded localization.json -> ${cpp_file#$PROJECT_ROOT/}"
        rm -f "$temp_file"
    else
        echo "ERROR: failed to embed localization.json"
        rm -f "$temp_file"
        return 1
    fi
  else
    echo "WARN: no localization.json found at $src_json (using placeholder)"
    # Placeholder is already in the file
  fi
}

generate_binary_registry(){
  banner "pre / binary registry"
  [[ -d "$STAGE_FRONTEND" ]] || { echo "(skip) no front-end: $STAGE_FRONTEND"; return 0; }
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
      echo "embed ${f#$STAGE_PROJECT/} -> ${obj#$PROJECT_ROOT/}"
      objcopy --input binary --output elf64-x86-64 --binary-architecture i386:x86-64 "$f" "$obj"
    fi
    local start_sym="" size_sym="" end_sym=""
    while IFS= read -r sym; do
      case "$sym" in *_start) start_sym="$sym";; *_size) size_sym="$sym";; *_end) end_sym="$sym";; esac
    done < <(nm -g "$obj" | awk '{print $3}')
    [[ -z "$start_sym" || -z "$size_sym" || -z "$end_sym" ]] && { echo "WARN: symbols not resolved for $name"; continue; }
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
    echo "wrote ${hdr#$PROJECT_ROOT/}"
  else
    echo "(unchanged) ${hdr#$PROJECT_ROOT/}"
  fi
}

compile(){
  banner "compile"
  mkdir -p "$OBJ_DIR_SRC"
  mapfile -d '' sources < <(find "$STAGE_SOURCE_DIR" -type f -name '*.cpp' -print0)
  if ((${#sources[@]}==0)); then echo "No C++ sources under ${STAGE_SOURCE_DIR#$PROJECT_ROOT/}"; return 0; fi
  # Detect flag changes to force rebuild
  mkdir -p "$BUILD_ROOT"
  local flags_file="$BUILD_ROOT/.cxxflags" new_flags
  new_flags="CXX=$CXX
CXXFLAGS=$CXXFLAGS
INCFLAGS=$INCFLAGS
LDFLAGS=$LDFLAGS"
  local rebuild_all=0
  if [[ ! -f "$flags_file" ]] || ! cmp -s <(printf "%s" "$new_flags") "$flags_file"; then
    rebuild_all=1
    printf "%s" "$new_flags" > "$flags_file"
  fi
  # Compute newest header mtime across staged include/src (e.g., txt_registry.h)
  local newest_hdr_ts=0 ts
  ts=$(find "$STAGE_INCLUDE_DIR" "$STAGE_SOURCE_DIR" -type f \( -name '*.h' -o -name '*.hpp' \) -printf '%T@\n' 2>/dev/null | sort -nr | head -n1 || true)
  if [[ -n "$ts" ]]; then newest_hdr_ts=${ts%.*}; else newest_hdr_ts=0; fi

  local compiled_any=0
  for src in "${sources[@]}"; do
    local obj="$OBJ_DIR_SRC/$(basename "${src%.cpp}").o"
    if [[ $rebuild_all -eq 1 || ! -f "$obj" || "$src" -nt "$obj" ]]; then
      echo "C++  ${src#$STAGE_PROJECT/}"
      "$CXX" -c "$src" -o "$obj" $INCFLAGS $CXXFLAGS
      compiled_any=1
    else
      # Rebuild if headers are newer than object
      if (( newest_hdr_ts > 0 )); then
        local obj_ts
        obj_ts=$(stat -c %Y "$obj" 2>/dev/null || stat -f %m "$obj")
        if (( newest_hdr_ts > obj_ts )); then
          echo "C++  ${src#$STAGE_PROJECT/} (headers newer)"
          "$CXX" -c "$src" -o "$obj" $INCFLAGS $CXXFLAGS
          compiled_any=1
        fi
      fi
    fi
  done
  # Relink only if needed
  local need_link=0
  if [[ ! -f "$EXECUTABLE" || $rebuild_all -eq 1 ]]; then
    need_link=1
  else
    local exe_ts
    exe_ts=$(stat -c %Y "$EXECUTABLE" 2>/dev/null || stat -f %m "$EXECUTABLE")
    # If any object newer than exe, relink
    while IFS= read -r o; do
      local o_ts
      o_ts=$(stat -c %Y "$o" 2>/dev/null || stat -f %m "$o")
      if (( o_ts > exe_ts )); then need_link=1; break; fi
    done < <(find "$BUILD_ROOT/obj" -type f -name '*.o')
  fi
  if [[ $need_link -eq 1 ]]; then
    echo "LINK ${EXECUTABLE#$PROJECT_ROOT/}"
    "$CXX" \
      $(find "$OBJ_DIR_SRC" -name '*.o' -print0 | xargs -0 echo) \
      $(find "$OBJ_DIR_ASSETS" -name '*.o' -print0 | xargs -0 echo) \
      -o "$EXECUTABLE" $LDFLAGS
  else
    echo "(link up to date) ${EXECUTABLE#$PROJECT_ROOT/}"
  fi
}

post_compile(){ banner "post compile"; echo "Stage: $STAGE_PROJECT"; echo "Objects: $BUILD_ROOT/obj"; echo "Binary: $EXECUTABLE"; }

clean(){ banner "clean"; rm -rf "$BUILD_ROOT"; rm -f "$EXECUTABLE"; echo "Flatlined ./build and ./speedboards"; }

case "${1:-}" in
  clean) clean ;;
  deploy)
    banner "deploy"
    need_cmd systemctl
  [[ -f "$EXECUTABLE" ]] || { echo "ERROR: $EXECUTABLE not found. Build first."; exit 1; }
  if [[ $EUID -ne 0 ]]; then SUDO="sudo"; else SUDO=""; fi
  echo "Stopping service: speedboards"; $SUDO systemctl stop speedboards || true
  echo "Deploying binary to /opt/speedboards"; $SUDO rm -f "/opt/speedboards" || true
  $SUDO cp -f "$EXECUTABLE" "/opt/speedboards"; $SUDO chmod 0755 "/opt/speedboards"
  echo "Starting service: speedboards"; $SUDO systemctl start speedboards || true
  $SUDO systemctl is-active --quiet speedboards && echo "Service active" || { echo "Service not active"; $SUDO systemctl status --no-pager -l speedboards || true; exit 1; }
    ;;
  *) stage_project; minify; inject_footer_version; generate_text_registry; generate_localization_header; generate_binary_registry; compile; post_compile ;;
esac