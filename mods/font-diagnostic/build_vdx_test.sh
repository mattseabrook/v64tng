#!/usr/bin/env bash
set -euo pipefail

mod_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd -- "$mod_dir/../.." && pwd)"
tool="$repo_dir/grooviev1/build/grooviev1-native"
game_dir="$repo_dir/T7G"
glyph_dir="$repo_dir/grooviev1/build/font-atlas-glyphs"

if [[ ! -x "$tool" ]]; then
    echo "error: build grooviev1 first: $repo_dir/grooviev1/build.sh" >&2
    exit 1
fi
if ! command -v magick >/dev/null 2>&1; then
    echo "error: ImageMagick 'magick' is required" >&2
    exit 1
fi

mkdir -p "$glyph_dir"
"$tool" fnt-extract --fnt "$game_dir/SPHINX.FNT" --out-dir "$glyph_dir"

atlas_args=(-size 640x320 xc:black)
for glyph_index in {0..36}; do
    printf -v glyph_name 'glyph_%02d.bmp' "$glyph_index"
    glyph_x=$(( (glyph_index % 8) * 80 ))
    glyph_y=$(( (glyph_index / 8) * 64 ))
    atlas_args+=("$glyph_dir/$glyph_name" -geometry "+${glyph_x}+${glyph_y}" -composite)
done

# Keep the exact 15-level FNT intensities as a reference. The 20h VDX format
# can select only two palette entries per 4x4 tile, so the encode-comparison
# PNG uses an exact black/white occupancy rendering of the same glyph pixels.
magick "${atlas_args[@]}" -type TrueColor -strip \
    "$game_dir/test-font-grayscale.png"
magick "$game_dir/test-font-grayscale.png" \
    -threshold 0 -type TrueColor -strip "$game_dir/test.png"
magick "$game_dir/test.png" -depth 8 "rgb:$game_dir/test.rgb"

# DOS V decodes the initial 20h still without spending one pacing interval.
# Exactly 75 subsequent 00h chunks therefore hold it for 5 seconds at 15 Hz.
# Keep TEST.VDX raw and canonical while the first native-player milestone is
# under test; compression remains available as an explicitly named comparison.
"$tool" --output "$game_dir/test.vdx" --raw --width 640 --height 320 \
    --fps 15 --hold-frames 75 --no-compress "$game_dir/test.rgb"
"$tool" --output "$game_dir/test-compressed.vdx" --raw --width 640 --height 320 \
    --fps 15 --hold-frames 75 --compress "$game_dir/test.rgb"

sha256sum "$game_dir/test.png" "$game_dir/test-font-grayscale.png" \
    "$game_dir/test.vdx" "$game_dir/test-compressed.vdx"
