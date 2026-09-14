# Actor masks and colour recovery

## Implemented: human mask projects

The brush edits a binary actor-support mask at native VDX resolution. It starts
from the selected frame's delta-write mask. Left-drag includes pixels, right-drag
excludes them, and Shift-right-drag returns them to the seed. Reset Brush resets
the current frame. All selected actors share one mask; individual identities are
not yet annotated. Edits do not modify the game files or decoded RGB.

Autosave writes dirty frames after a stroke, on capture loss, after Reset Brush,
and on a one-second timer during long strokes. Pending changes are also saved
before replacing a clip and closing Tools. Ordinary save failures retain dirty
edits and block those two actions. A sudden process termination can lose changes
since the latest successful save. Each file is written to a temporary sibling,
closed, and replaced using Windows MoveFileEx with write-through. This does not
provide a multi-file transaction or revision history.

Storage is `.\ActorMasks\<content-key>\`. The key is a
64-bit FNV-1a digest of the original VDX bytes followed by their byte count.
It is a lookup key, not a security hash: an existing `source.vdx` is compared
byte-for-byte with the loaded clip before accepting a project. Identical VDX
content shares a project whether loaded directly or from an archive; different
content with the same filename does not. A mismatch or invalid mask disables
painting for that load, preserving existing files.

Copy the entire project folder to back it up or move it to another working directory's
ActorMasks directory. `source.vdx` preserves the exact clip, including palettes,
frame timing, original chunks and background bitmaps. It is copied on first save.

Each zero-based frame file, e.g. `00455.vdxmask`, is UTF-8 JSON:

| Field | Meaning |
| --- | --- |
| `format`, `version` | `v64tng.actor-mask`, `1` |
| `source_name`, `source_key`, `source_bytes` | Original name, content lookup key, byte count |
| `width`, `height`, `frame_count` | Native dimensions and decoded frame count |
| `frame`, `chunk` | Zero-based decoded frame and original source chunk index |
| `seed` | `vdx-delta-writes-v1` |
| `mask_kind` | `binary-actor-support`, not recovered optical opacity |
| `review_status` | `in-progress`; painting does not certify a finished silhouette |
| `edits_rle` | Brush overrides: 0 = seed, 1 = exclude, 255 = include |
| `support_rle` | Complete effective binary mask: 0 = background, 255 = actor |

RLE arrays contain `[count, value]` pairs in top-to-bottom, left-to-right order.
Counts must be positive and sum to width × height. Both layers are saved even
when Reset Brush leaves all overrides zero. The current editor reloads overrides
onto its seed; the complete support layer is saved for downstream recovery so it
can consume the mask without decoding delta-write provenance. The seed version
must be migrated explicitly if that decoder behavior changes.

Preview and PNG export apply the same overrides. Select Alpha Mode and the
transparent background for masked RGBA PNGs. Chroma backgrounds deliberately
produce opaque PNGs; Alpha Mode off exports the complete source composite.
PNG export is independent of the persistent mask project.

## Proposed next stage: Isolate Actors

This is a design for subsequent implementation, not an implemented recovery
button or a claim that colour recovery is already solved.

The human mask defines where the actors are. It does not specify their original
colour or optical opacity. In the model C = aF + (1-a)B, knowing the composite C,
background B and actor support still leaves F and a ambiguous. Even a perfect
silhouette cannot by itself determine how much background is baked into a coat.

The proposed workflow on the same Tools screen is:

1. Finish and explicitly mark a handful of masks as reviewed. Preserve those
   annotations as constraints; predicted masks must live in a separate layer.
2. Select the matching clean background plate. Keep it associated with each shot;
   a clip's first bitmap must not automatically be assumed to be a clean plate.
3. Reconstruct original RGB, indices and palette history at native resolution.
   Inspect masked regions for background matching, spatial dither and possible
   blending. Palette changes and codec skips must not be treated as opacity.
4. Track small interior actor patches across nearby frames. Reject occlusions,
   inconsistent forward/backward matches and poorly textured regions. Multiple
   actors and overlapping silhouettes require separate tracks even if the human
   support mask contains all actors together.
5. For accepted tracks, fit C_t = K + q B_t with robust constrained estimation,
   where q = 1-a and K = aF. This assumes approximately stable actor appearance
   and opacity over that short track; illumination changes and moving folds can
   violate it. Require varied background colours, small residuals and reliable
   correspondence before accepting recovered colour. Avoid division near a = 0.
6. Save recovered foreground RGB, soft opacity, confidence and failure reasons
   separately from human support and original RGB. Uncertain pixels remain
   unresolved or retain the source colour as a clearly identified fallback.
7. Refine boundaries and address chroma spill only after inspecting the recovery.
   If a learned matting model is later evaluated, constrain it with the human
   masks and preserve its predictions separately. Upscaling comes after recovery.

The UI should offer Original / Human Mask / Recovered / Confidence views and a
separate Export Isolated PNG action. A recovered export must identify whether it
uses soft optical alpha or intentionally opaque actors, and whether fallback
pixels remain. Ordinary Save Frame continues to export the current mask/source
view. Never silently overwrite annotations with a model output.

Start with six reviewed frames from one shot, their nearby source frames and
one confirmed clean background. Use these to assess mask completeness and the
colour model before building a large inference pipeline. No model selection,
external processing, benchmarks or recovery experiments were performed as part
of the mask-persistence change.
