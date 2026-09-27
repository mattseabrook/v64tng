# Basement example: complete static resource inventory

Generated from the retail `GRATE.GRV` and `MAZE.GRV`, with every listing byte
and SHA-256 verified. No dungeon gameplay trace was used or created. This is
an inventory of all direct references, including unvisited code; it does not
claim that every branch is feasible or recover runtime timing/compositing.

| Script | Bytes | Instructions | Input loops | Resource selection sites | Unique references |
|---|---:|---:|---:|---:|---:|
| GRATE.GRV | 1,086 | 277 | 1 | 55 | 53 |
| MAZE.GRV | 3,652 | 1,432 | 128 | 617 | 43 |

**95 distinct resources** (24,696,607 original asset bytes): 76 MC, 15 GAMWAV,
3 XMI and 1 INTRO. There are no dynamic filename or child-script sites in
these two listings, and no resource bounds, chunk or decompression errors.
One reference is shared by the scripts. Sixteen referenced VDXs contain
audio, totaling 1,944,029 decoded PCM bytes. Audio is exported as 8-bit mono
22,050 Hz WAV; original VDX/XMI files remain separately available.

Reproduce from the repository root:

```sh
python3 research/debug/script_inventory.py --scripts GRATE MAZE --extract --audio
```

Output is local and ignored: `research/basement-inventory/inventory.json`,
exact GRVs, and `assets/<archive>/<filename>`. The JSON includes resource
and PCM hashes, RL hashes, archive offsets, all instruction bytes, branch
and hotspot targets, reference sites, and VDX chunk maps. Missing resources
or unresolved dynamic/child-script references result in a nonzero exit.
Use `--trace path/to/events.ndjson` to mark assets absent from an existing
playthrough; the comparison does not assert which script branch executed.

The basement ghost is `MC/m_ghostb.vdx`, 318,926 bytes, selected at
`MAZE.GRV:003B`. The entry sequence also references `MC/mg_thru.vdx` and
`GAMWAV/8_s_11.vdx`. Later taunts and wrong-turn selections are collected
from all of the script, so they do not require individual playthroughs to
obtain their original media. Actual trigger conditions remain script/runtime
research. v64tng currently switches to its replacement raycaster after
`mg_thru`; extraction does not change that game behavior.

| Archive | Resource | Bytes | Still / delta chunks | PCM bytes | Reference sites |
|---|---|---:|---:|---:|---:|
| INTRO | fade.vdx | 95,911 | 1 / 57 | 0 | 2 |
| MC | ga_1-2.vdx | 31,769 | 1 / 16 | 0 | 1 |
| MC | ga_1-4.vdx | 21,561 | 1 / 11 | 0 | 1 |
| MC | ga_2-1.vdx | 31,814 | 1 / 16 | 0 | 1 |
| MC | ga_2-3.vdx | 31,869 | 1 / 16 | 0 | 1 |
| MC | ga_2-5.vdx | 20,598 | 1 / 11 | 0 | 1 |
| MC | ga_3-2.vdx | 31,815 | 1 / 16 | 0 | 1 |
| MC | ga_3-6.vdx | 21,314 | 1 / 11 | 0 | 1 |
| MC | ga_4-1.vdx | 21,980 | 1 / 11 | 0 | 1 |
| MC | ga_4-5.vdx | 30,963 | 1 / 16 | 0 | 1 |
| MC | ga_5-2.vdx | 21,075 | 1 / 11 | 0 | 1 |
| MC | ga_5-4.vdx | 31,095 | 1 / 16 | 0 | 1 |
| MC | ga_5-6.vdx | 31,237 | 1 / 16 | 0 | 1 |
| MC | ga_6-3.vdx | 21,739 | 1 / 11 | 0 | 1 |
| MC | ga_6-5.vdx | 31,140 | 1 / 16 | 0 | 1 |
| MC | gu_1-2.vdx | 34,696 | 1 / 16 | 0 | 1 |
| MC | gu_1-4.vdx | 24,181 | 1 / 11 | 0 | 1 |
| MC | gu_2-1.vdx | 34,843 | 1 / 16 | 0 | 1 |
| MC | gu_2-3.vdx | 35,201 | 1 / 16 | 0 | 1 |
| MC | gu_2-5.vdx | 22,222 | 1 / 11 | 0 | 1 |
| MC | gu_3-2.vdx | 35,290 | 1 / 16 | 0 | 1 |
| MC | gu_3-6.vdx | 23,999 | 1 / 11 | 0 | 1 |
| MC | gu_4-1.vdx | 23,793 | 1 / 11 | 0 | 1 |
| MC | gu_4-5.vdx | 33,948 | 1 / 16 | 0 | 1 |
| MC | gu_5-2.vdx | 21,741 | 1 / 11 | 0 | 1 |
| MC | gu_5-4.vdx | 34,062 | 1 / 16 | 0 | 1 |
| MC | gu_5-6.vdx | 34,205 | 1 / 16 | 0 | 1 |
| MC | gu_6-3.vdx | 23,715 | 1 / 11 | 0 | 1 |
| MC | gu_6-5.vdx | 34,297 | 1 / 16 | 0 | 1 |
| MC | gx_1-2.vdx | 54,994 | 1 / 16 | 0 | 1 |
| MC | gx_1-4.vdx | 36,346 | 1 / 11 | 0 | 1 |
| MC | gx_2-1.vdx | 55,036 | 1 / 16 | 0 | 1 |
| MC | gx_2-3.vdx | 55,118 | 1 / 16 | 0 | 1 |
| MC | gx_2-5.vdx | 33,288 | 1 / 11 | 0 | 1 |
| MC | gx_3-2.vdx | 55,030 | 1 / 16 | 0 | 1 |
| MC | gx_3-6.vdx | 35,096 | 1 / 11 | 0 | 1 |
| MC | gx_4-1.vdx | 36,333 | 1 / 11 | 0 | 1 |
| MC | gx_4-5.vdx | 51,935 | 1 / 16 | 0 | 1 |
| MC | gx_5-2.vdx | 33,243 | 1 / 11 | 0 | 1 |
| MC | gx_5-4.vdx | 52,044 | 1 / 16 | 0 | 1 |
| MC | gx_5-6.vdx | 51,846 | 1 / 16 | 0 | 1 |
| MC | gx_6-3.vdx | 35,168 | 1 / 11 | 0 | 1 |
| MC | gx_6-5.vdx | 51,748 | 1 / 16 | 0 | 1 |
| MC | mc_left.vdx | 1,139,904 | 1 / 29 | 0 | 8 |
| MC | mc_rite.vdx | 1,134,706 | 1 / 29 | 0 | 8 |
| MC | md_in.vdx | 580,401 | 1 / 14 | 0 | 1 |
| MC | md_out.vdx | 937,692 | 1 / 24 | 0 | 1 |
| MC | mgpuzbkd.vdx | 25,547 | 1 / 0 | 0 | 1 |
| MC | mg_exin.vdx | 696,946 | 1 / 18 | 0 | 1 |
| MC | mg_exit.vdx | 937,598 | 1 / 24 | 0 | 1 |
| MC | mg_exout.vdx | 1,156,663 | 1 / 40 | 0 | 1 |
| MC | mg_in_b.vdx | 614,634 | 1 / 20 | 0 | 2 |
| MC | mg_thru.vdx | 1,000,235 | 1 / 30 | 0 | 1 |
| MC | mh_left.vdx | 408,723 | 1 / 9 | 0 | 26 |
| MC | mh_l_go.vdx | 422,813 | 1 / 10 | 0 | 26 |
| MC | mh_l_st.vdx | 791,963 | 1 / 20 | 0 | 26 |
| MC | mh_l_tu.vdx | 395,855 | 1 / 9 | 0 | 26 |
| MC | mh_rite.vdx | 408,216 | 1 / 9 | 0 | 26 |
| MC | mh_r_go.vdx | 421,538 | 1 / 10 | 0 | 26 |
| MC | mh_r_st.vdx | 790,192 | 1 / 20 | 0 | 26 |
| MC | mh_r_tu.vdx | 395,505 | 1 / 9 | 0 | 26 |
| MC | ms.vdx | 940,448 | 1 / 24 | 0 | 172 |
| MC | mt_left.vdx | 409,559 | 1 / 9 | 0 | 16 |
| MC | mt_l_go.vdx | 427,959 | 1 / 10 | 0 | 16 |
| MC | mt_l_st.vdx | 793,380 | 1 / 20 | 0 | 16 |
| MC | mt_l_tu.vdx | 390,870 | 1 / 9 | 0 | 16 |
| MC | mt_rite.vdx | 408,075 | 1 / 9 | 0 | 16 |
| MC | mt_r_go.vdx | 425,682 | 1 / 10 | 0 | 16 |
| MC | mt_r_st.vdx | 793,700 | 1 / 20 | 0 | 16 |
| MC | mt_r_tu.vdx | 389,365 | 1 / 9 | 0 | 16 |
| MC | mt_stop.vdx | 803,007 | 1 / 20 | 0 | 16 |
| MC | mu_left.vdx | 1,473,561 | 1 / 38 | 0 | 24 |
| MC | mu_rite.vdx | 1,470,214 | 1 / 38 | 0 | 24 |
| MC | my.vdx | 692,292 | 1 / 22 | 0 | 1 |
| MC | stkb.vdx | 18,388 | 1 / 8 | 0 | 2 |
| MC | stkf.vdx | 20,351 | 1 / 8 | 0 | 1 |
| MC | m_ghostb.vdx | 318,926 | 1 / 104 | 195,351 | 1 |
| XMI | gu15.xmi | 1,532 | 0 / 0 | 0 | 3 |
| XMI | gu18.xmi | 3,754 | 0 / 0 | 0 | 1 |
| XMI | gu56.xmi | 13,614 | 0 / 0 | 0 | 4 |
| GAMWAV | 8_e_1.vdx | 67,935 | 1 / 0 | 133,042 | 1 |
| GAMWAV | 8_e_2.vdx | 51,553 | 1 / 0 | 75,884 | 1 |
| GAMWAV | 8_s_6.vdx | 92,196 | 1 / 0 | 117,398 | 1 |
| GAMWAV | 8_s_7.vdx | 67,609 | 1 / 0 | 104,488 | 1 |
| GAMWAV | 8_s_8.vdx | 97,529 | 1 / 0 | 120,625 | 3 |
| GAMWAV | 8_s_9.vdx | 125,771 | 1 / 0 | 184,367 | 1 |
| GAMWAV | 8_s_10.vdx | 60,830 | 1 / 0 | 85,930 | 1 |
| GAMWAV | 8_s_11.vdx | 133,166 | 1 / 0 | 298,515 | 1 |
| GAMWAV | 8_s_12.vdx | 36,696 | 1 / 0 | 57,176 | 1 |
| GAMWAV | 8_s_13.vdx | 57,093 | 1 / 0 | 75,231 | 1 |
| GAMWAV | 8_s_14.vdx | 113,297 | 1 / 0 | 180,553 | 2 |
| GAMWAV | 8_s_15.vdx | 95,066 | 1 / 0 | 126,144 | 1 |
| GAMWAV | gen_e_1.vdx | 12,767 | 1 / 0 | 23,557 | 1 |
| GAMWAV | gen_e_5.vdx | 19,210 | 1 / 0 | 39,132 | 1 |
| GAMWAV | gen_s_6.vdx | 82,783 | 1 / 0 | 126,636 | 1 |

Static extraction supplies all referenced compressed/decoded audio and original
video data. Establishing displayed ghost animation frames, palette state, input
semantics, taunt timing and original-versus-v64tng fidelity still requires
targeted native evidence; the GRV alone cannot supply every runtime state.

See [capture tooling](../research/debug/README.md) and
[the semantic evidence record](SEMANTIC_CAPTURE_ADVANCE.md).
