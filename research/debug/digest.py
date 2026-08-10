#!/usr/bin/env python3
"""
v64tng trace digester.

Turns a raw events.ndjson capture into paste-ready scene digests:

    python digest.py <trace-dir-or-events.ndjson>

- Splits the stream at your session.mark events (F9 / typed labels).
- Uses direct script PC/bytes from trace schema 2; retains clearly labelled
  best-effort register calibration for legacy schema-1 traces.
- Decodes GRV instructions to mnemonics, reports state/resource/media
  evidence, and dedupes only exact consecutive instruction repeats.
- Writes digest/<scene>.txt — copy/paste those into your agent.
"""
import argparse
import hashlib
import json
import os
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

# ------------------------------------------------------- opcode metadata ----

MN = [
    "NOP","RESERVED_01","PLAYSONG","FADEIN_NEXT_VIDEO","PALFADEOUT",
    "FIRSTFRAME_NEXT_VIDEO","VIDEOFLAG6_ON","VIDEOFLAG7_ON","SETBACKGROUNDSONG",
    "VIDEOREF","VIDEOFLAG5_ON","INPUTLOOPSTART","KEYACTION","HOTSPOT_RECT",
    "HOTSPOT_LEFT","HOTSPOT_RIGHT","HOTSPOT_CENTER","HOTSPOT_CENTER_2",
    "HOTSPOT_CURRENT","INPUTLOOPEND","RANDOM","JMP","LOADSTRING","RET",
    "CALL","SLEEP","STRCMP_NE_JMP","XOR_OBFUSCATE","VIDEO_TRANSITION_REF",
    "SWAP","RESERVED_1E","INC","DEC","STRCMP_NE_JMP_INDIRECT",
    "COPY_BG_TO_FG","STRCMP_EQ_JMP","MOV","ADD","VIDEO_NAME",
    "VIDEO_TRANSITION_NAME","RESERVED_28","STOP_OR_WAIT_MIDI","ENDSCRIPT",
    "NOP_2B","SET_HOTSPOT_TOP","SET_HOTSPOT_BOTTOM","LOADGAME","SAVEGAME",
    "HOTSPOT_BOTTOM_4","MIDI_CONTROL","JNE_INDIRECT","LOADSTRING_INDIRECT",
    "CHAR_GREATER_JMP","VIDEOFLAG7_OFF","CHAR_LESS_JMP","COPY_RECT_TO_BG",
    "RESTORESTACK","GRID_SWAP","PRINTSTRING","HOTSPOT_SAVE_SLOT",
    "CHECK_VALID_SAVES","RESETVARS","MOD","LOADSCRIPT","SET_VIDEO_ORIGIN",
    "SUB","GAMELOGIC","RETURNSCRIPT","SET_HOTSPOT_RIGHT","SET_HOTSPOT_LEFT",
    "RESOURCE_CONTEXT_SAVE","RESOURCE_CONTEXT_RESTORE","SET_VDX_RATE_OVERRIDE",
    "PALETTE_MERGE_ONCE","MIDI_DRIVER_PARAM","SET_VIDEO_MODE","GETCD","PLAYCD",
    "MUSICDELAY","RESERVED_4F","RESERVED_50","SET_VIDEO_SKIP_CANDIDATE",
    "COMMIT_OVERLAY","HOTSPOT_OUTSIDE_RECT","NOP_54","SET_SCRIPT_END_CANDIDATE",
    "RESERVED_SOUND_SHAPE","MASK_VIDEO_REF32","MASK_VIDEO_NAME",
    "CHECK_SOUND_OVERLAY_SHAPE","UNSUPPORTED_T7G",
]

ARCH = ["AT","B","CH","D","DR","FH","GA","HDISK","HTBD","INTRO","JHEK",
        "K","LA","LI","MB","MC","MU","N","P","XMI","GAMWAV"]

def ref_str(r):
    a = (r >> 10) & 0x3F
    name = ARCH[a] if a < len(ARCH) else f"A{a}"
    return f"0x{r:04X}={name}[{r & 0x3FF}]"

# ------------------------------------------------- byte-level instruction ----

def skip_char(b, o):
    if o >= len(b):
        return None, 0
    last = b[o]; o += 1
    if (last & 0x7F) == 0x23 and o < len(b):
        last = b[o]; o += 1
    return o, last

def skip_seq(b, o):
    while o < len(b):
        if (b[o] & 0x7F) == 0x7C:
            o += 1
            o, _ = skip_char(b, o)
            if o is None: return None
            o, last = skip_char(b, o)
            if o is None: return None
        else:
            o, last = skip_char(b, o)
            if o is None: return None
        if last & 0x80:
            break
    return o

def skip_str(b, o, interp):
    while o < len(b):
        ch = b[o]; o += 1
        if ch == 0:
            break
        if interp and ch == 0x23 and o < len(b):
            o += 1
        elif interp and ch == 0x7C:
            o, _ = skip_char(b, o)
            if o is None: return None
            o, _ = skip_char(b, o)
            if o is None: return None
    return o

def instr_end(b, o):
    """Mirror of grv_runtime.cpp instructionEnd(). None = truncated."""
    if o >= len(b):
        return None
    raw = b[o]; op = raw & 0x7F
    vb = 1 if (raw & 0x80) else 2
    p = o + 1
    def fixed(n):
        return p + n if p + n <= len(b) else None
    if op in (0x02, 0x08, 0x09, 0x1C): return fixed(2)
    if op == 0x0C: return fixed(3)
    if op == 0x0D: return fixed(11)
    if 0x0E <= op <= 0x12 or op in (0x15, 0x18, 0x44, 0x45): return fixed(2)
    if op == 0x14: return fixed(vb + 1)
    if op in (0x16, 0x33): return skip_seq(b, p + vb)
    if op in (0x17, 0x42, 0x43, 0x48, 0x4B, 0x4D, 0x52): return fixed(1)
    if op == 0x19: return fixed(2)
    if op in (0x1A, 0x21, 0x23, 0x34, 0x36):
        e = skip_seq(b, p + vb)
        return None if e is None or e + 2 > len(b) else e + 2
    if op == 0x1B:
        q = p + vb
        while q < len(b):
            c = b[q]; q += 1
            if c & 0x80: break
        return q
    if op in (0x1D, 0x24, 0x25, 0x41): return fixed(vb + 2)
    if op == 0x1E: return fixed(1)
    if op in (0x1F, 0x20, 0x2E, 0x2F): return fixed(vb)
    if op in (0x26, 0x27): return skip_str(b, p, True)
    if op in (0x28, 0x4A, 0x4E, 0x4F, 0x50, 0x51, 0x55): return fixed(2)
    if op in (0x2C, 0x2D): return fixed(3)
    if op == 0x30: return fixed(2)
    if op == 0x31: return fixed(4)
    if op == 0x32: return fixed(vb + 4)
    if op == 0x37: return fixed(8)
    if op == 0x39:
        q = p
        for _ in range(4):
            q, _ = skip_char(b, q)
            if q is None: return None
        return q
    if op == 0x3A: return skip_seq(b, p)
    if op == 0x3B: return fixed(12)
    if op == 0x3E: return fixed(vb + 1)
    if op == 0x3F: return skip_str(b, p, False)
    if op == 0x40: return fixed(4)
    if op == 0x53: return fixed(10)
    if op == 0x56: return fixed(6)
    if op == 0x57: return fixed(4)
    if op == 0x59: return fixed(vb + 1)
    return p  # everything else is one byte

def seq_elem(b, o):
    last = b[o]; o += 1
    tok = last & 0x7F
    if tok == 0x23 and o < len(b):
        sel = b[o]; o += 1
        return f"v[0x{(sel & 0x7F) - 0x61:03X}]", o, sel
    if tok == 0x7C:
        t1, o, _ = seq_elem(b, o)
        t2, o, last2 = seq_elem(b, o)
        return f"grid[{t1},{t2}]", o, last2
    return str((tok - 0x30) & 0xFF), o, last

def seq_display(b, o, cap=12):
    parts = []
    last = 0
    for _ in range(cap):
        if o >= len(b):
            parts.append("…")
            return "[" + ",".join(parts) + "]", o
        t, o, last = seq_elem(b, o)
        parts.append(t)
        if last & 0x80:
            return "[" + ",".join(parts) + "]", o
    parts.append("…")
    return "[" + ",".join(parts) + "]", o

def zstr(b, o, interp):
    out = []
    while o < len(b):
        ch = b[o]; o += 1
        if ch == 0:
            break
        if interp and ch == 0x23 and o < len(b):
            sel = b[o]; o += 1
            out.append(f"{{v{(sel & 0x7F) - 0x61:03X}}}")
        elif 0x20 <= ch < 0x7F:
            out.append(chr(ch))
        else:
            out.append(f"\\x{ch:02x}")
    return "".join(out)

def decode(b, o):
    raw = b[o]; op = raw & 0x7F
    sf = bool(raw & 0x80)
    name = MN[op] if op < len(MN) else f"OP{op:02X}"
    vlen = 1 if sf else 2
    def u16(at): return b[at] | (b[at + 1] << 8) if at + 1 < len(b) else 0
    def var(at): return b[at] if sf else u16(at)
    try:
        if op in (0x02, 0x08, 0x09, 0x1C):
            return f"{name} {ref_str(u16(o + 1))}"
        if op == 0x0C:
            k = b[o + 1]
            ch = chr(k) if 32 <= k < 127 else "."
            return f"KEYACTION 0x{k:02X}('{ch}') -> 0x{u16(o + 2):04X}"
        if op == 0x0D:
            return (f"HOTSPOT_RECT ({u16(o+1)},{u16(o+3)})-({u16(o+5)},{u16(o+7)})"
                    f" -> 0x{u16(o+9):04X} cur={b[o+11] if o+11 < len(b) else '?'}")
        if op in (0x0E, 0x0F, 0x10, 0x11, 0x12, 0x15, 0x18, 0x30, 0x44, 0x45):
            return f"{name} -> 0x{u16(o + 1):04X}"
        if op == 0x17: return f"RET {b[o + 1]}"
        if op == 0x19: return f"SLEEP {u16(o + 1)}"
        if op in (0x1A, 0x21, 0x23, 0x34, 0x36):
            txt, e = seq_display(b, o + 1 + vlen)
            tgt = u16(e) if e + 2 <= len(b) else 0
            return f"{name} v[0x{var(o+1):03X}] {txt} -> 0x{tgt:04X}"
        if op in (0x16, 0x33):
            txt, _ = seq_display(b, o + 1 + vlen)
            return f"{name} v[0x{var(o+1):03X}] = {txt}"
        if op in (0x1F, 0x20):
            return f"{name} v[0x{var(o + 1):03X}]"
        if op in (0x1D, 0x24, 0x25, 0x41):
            return f"{name} v[0x{var(o+1):03X}], v[0x{u16(o+1+vlen):03X}]"
        if op in (0x14, 0x2E, 0x2F, 0x3E):
            return f"{name} v[0x{var(o+1):03X}], {b[o+1+vlen] if o+1+vlen < len(b) else '?'}"
        if op in (0x26, 0x27):
            return f"{name} \"{zstr(b, o + 1, True)}\""
        if op == 0x3F:
            return f"LOADSCRIPT \"{zstr(b, o + 1, False)}\""
        if op in (0x2C, 0x2D):
            return f"{name} -> 0x{u16(o+1):04X} cur={b[o+3] if o+3 < len(b) else '?'}"
        if op == 0x48: return f"SET_VDX_RATE_OVERRIDE {b[o + 1]}"
        if op == 0x3B:
            return f"HOTSPOT_SAVE_SLOT slot={b[o+1]} -> 0x{u16(o+10):04X}"
    except IndexError:
        return name + " …"
    return name

# ------------------------------------------------------------- calibration ----

CANDIDATE_REGS = ["esi", "edi", "ebx", "edx", "ecx", "eax"]

def parse_win(s):
    p, _, h = s.partition(":")
    try:
        return int(p, 16), bytes.fromhex(h)
    except ValueError:
        return None, None

def score_reg(events, reg):
    score = 0
    used = 0
    for ev in events[:120]:
        w = ev.get("mem", {}).get(reg)
        if not w:
            continue
        _, buf = parse_win(w)
        if not buf:
            continue
        used += 1
        e1 = instr_end(buf, 0)
        if e1 is not None and (buf[0] & 0x7F) < len(MN) and e1 > 1:
            score += 1
            if e1 < len(buf) and instr_end(buf, e1) is not None and (buf[e1] & 0x7F) < len(MN):
                score += 1
    return score, used

# -------------------------------------------------------------------- run ----

def load_events(path):
    events = []
    malformed = []
    with open(path, encoding="utf-8") as f:
        for line_number, line in enumerate(f, start=1):
            line = line.strip()
            if not line:
                continue
            try:
                value = json.loads(line)
                if not isinstance(value, dict):
                    raise ValueError("record is not an object")
                events.append(value)
            except (json.JSONDecodeError, ValueError) as error:
                malformed.append((line_number, str(error)))
    return events, malformed


def parse_args():
    parser = argparse.ArgumentParser(
        description="Turn a v64tng Win32 NDJSON trace into per-scene semantic evidence."
    )
    parser.add_argument("trace", help="trace directory or events.ndjson")
    parser.add_argument("--out", help="output directory (default: <trace>/digest)")
    parser.add_argument("--max-trace-lines", type=int, default=6000)
    return parser.parse_args()


def legacy_calibration(events):
    dispatch = [event for event in events if event.get("probe") == "grv.dispatch"]
    cal = {reg: score_reg(dispatch, reg) for reg in CANDIDATE_REGS}
    best = max(CANDIDATE_REGS, key=lambda reg: (cal[reg][0], -CANDIDATE_REGS.index(reg)))
    confident = cal[best][0] >= 20
    base = None
    for event in events:
        if event.get("probe") in ("grv.vm_entry", "grv.vm.enter"):
            base = None
        elif event.get("probe") == "grv.dispatch":
            window = event.get("mem", {}).get(best)
            if not window:
                continue
            pointer, buf = parse_win(window)
            if pointer is None:
                continue
            if base is None:
                base = pointer
            event["_legacy_pc"] = (pointer - base) & 0xFFFFFFFF
            event["_legacy_bytes"] = buf
    text = ", ".join(f"{reg}={cal[reg][0]}/{cal[reg][1]}" for reg in CANDIDATE_REGS)
    return best, confident, text


def discover_legacy_ref_slot(events):
    slot_hits = Counter()
    for event in events:
        if event.get("probe") != "grv.video_select":
            continue
        for index, word in enumerate(event.get("stack", [])[1:], start=1):
            try:
                value = int(word, 16)
            except (TypeError, ValueError):
                continue
            if (value >> 10) < len(ARCH) and 0 < (value & 0x3FF) < 0x300 and value < 0x10000:
                slot_hits[index] += 1
    return slot_hits.most_common(1)[0][0] if slot_hits else None


def event_ref(event, legacy_slot=None):
    value = event.get("ref")
    if isinstance(value, int):
        return value & 0xFFFF
    if legacy_slot is not None:
        try:
            return int(event["stack"][legacy_slot], 16) & 0xFFFF
        except (KeyError, IndexError, TypeError, ValueError):
            pass
    return None


def instruction_from_event(event, legacy_confident):
    pc = event.get("pc")
    data = event.get("bytes")
    if isinstance(pc, int) and isinstance(data, str):
        try:
            buf = bytes.fromhex(data)
        except ValueError:
            return None
        return {
            "pc": pc,
            "bytes": buf,
            "script": event.get("script", "<unknown>"),
            "script_base": event.get("script_base"),
            "host_ms": event.get("host_ms", 0),
            "state": event.get("state", {}),
            "trusted": True,
        }
    if "_legacy_pc" in event and "_legacy_bytes" in event:
        return {
            "pc": event["_legacy_pc"],
            "bytes": event["_legacy_bytes"],
            "script": "<legacy-unknown>",
            "script_base": None,
            "host_ms": event.get("host_ms", 0),
            "state": {},
            "trusted": legacy_confident,
        }
    return None


def decode_instruction(item):
    buf = item["bytes"]
    if not buf:
        return {
            **item, "text": "<no bytes>", "length": None, "raw": "", "opcode": None,
            "anomaly": "empty instruction window",
        }
    end = instr_end(buf, 0)
    opcode = buf[0] & 0x7F
    if end is None:
        return {
            **item,
            "text": f"{MN[opcode] if opcode < len(MN) else f'OP{opcode:02X}'} <truncated>",
            "length": None,
            "raw": buf[:32].hex(),
            "opcode": opcode,
            "anomaly": "truncated instruction window",
        }
    raw = buf[:end].hex()
    text = decode(buf, 0) if item["trusted"] else raw
    return {
        **item, "text": text, "length": end, "raw": raw, "opcode": opcode, "anomaly": None,
    }


def split_scenes(events):
    scenes = []
    current = {"label": "boot", "events": []}
    for event in events:
        if event.get("probe") == "session.mark":
            scenes.append(current)
            current = {"label": str(event.get("label", "mark")), "events": []}
        else:
            current["events"].append(event)
    scenes.append(current)
    return scenes


def safe_label(label):
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", label).strip("._") or "scene"


def fmt_hex(value, width=4):
    return f"0x{value:0{width}X}" if isinstance(value, int) else "?"


def append_resource_section(lines, events, legacy_slot):
    for probe, heading in (
        ("grv.video_select", "video resources"),
        ("grv.song_select", "song resources"),
    ):
        refs = Counter()
        for event in events:
            if event.get("probe") == probe:
                value = event_ref(event, legacy_slot)
                if value is not None:
                    refs[value] += 1
        if refs:
            lines.append(f"{heading}:")
            for value, count in refs.most_common():
                lines.append(f"  {ref_str(value):24s} x{count}")
            lines.append("")

    scripts = Counter(
        str(event.get("script"))
        for event in events
        if event.get("probe") == "grv.load_script.enter" and event.get("script")
    )
    if scripts:
        lines.append("scripts loaded:")
        for name, count in scripts.most_common():
            lines.append(f"  {name} x{count}")
        lines.append("")


def append_vdx_section(lines, events):
    chunks = Counter()
    sizes = defaultdict(Counter)
    for event in events:
        if event.get("probe") != "vdx.chunk":
            continue
        chunk_type = event.get("type")
        coding = event.get("coding")
        chunks[(chunk_type, coding)] += 1
        if isinstance(event.get("payload_size"), int):
            sizes[(chunk_type, coding)][event["payload_size"]] += 1
    if chunks:
        lines.append("VDX chunks:")
        for (chunk_type, coding), count in chunks.most_common():
            label = {
                0x00: "end",
                0x20: "still",
                0x25: "delta",
                0x80: "audio",
            }.get(chunk_type, "unknown")
            observed = ",".join(str(size) for size in sorted(sizes[(chunk_type, coding)]))
            suffix = f" sizes={observed}" if observed else ""
            lines.append(
                f"  type={fmt_hex(chunk_type, 2)} ({label}) "
                f"coding={fmt_hex(coding, 2)} x{count}{suffix}"
            )
        lines.append("")

    codecs = Counter()
    for event in events:
        probe = event.get("probe", "")
        if probe in ("vdx.lzss.leave", "vdx.decompress_chunk.leave"):
            codecs[(probe, event.get("decoded_size"))] += 1
        elif probe in ("vdx.still20.enter", "vdx.delta25.enter"):
            codecs[
                (probe, (event.get("arg2"), event.get("arg3"), event.get("arg4")))
            ] += 1
    if codecs:
        lines.append("VDX decoder calls:")
        for (probe, detail), count in codecs.most_common():
            lines.append(f"  {probe:28s} {detail!s:16s} x{count}")
        lines.append("")


def append_variable_section(lines, events):
    changes = []
    counts = Counter()
    for event in events:
        if event.get("probe") != "grv.variables":
            continue
        for change in event.get("changes", []):
            if not isinstance(change, dict) or not isinstance(change.get("index"), int):
                continue
            counts[change["index"]] += 1
            changes.append(
                (
                    event.get("origin_pc"),
                    event.get("origin_opcode"),
                    change["index"],
                    change.get("old"),
                    change.get("new"),
                )
            )
    if not changes:
        return
    lines.append(f"GRV variable writes ({len(changes)} changes, {len(counts)} variables):")
    lines.append(
        "  hottest: "
        + ", ".join(f"v[0x{index:03X}] x{count}" for index, count in counts.most_common(16))
    )
    for pc, opcode, index, old, new in changes[:500]:
        lines.append(
            f"  pc={fmt_hex(pc)} op={fmt_hex(opcode, 2)} "
            f"v[0x{index:03X}] {old} -> {new}"
        )
    if len(changes) > 500:
        lines.append(f"  … {len(changes) - 500} more; see events.ndjson")
    lines.append("")


def append_save_section(lines, events):
    boundaries = Counter(
        event.get("probe")
        for event in events
        if event.get("probe") in (
            "grv.load_game", "grv.save_game", "grv.check_valid_saves"
        )
    )
    file_events = [
        event for event in events
        if str(event.get("probe", "")).startswith("save.file_")
    ]
    if not boundaries and not file_events:
        return

    lines.append("Save-system evidence:")
    for probe, count in boundaries.items():
        lines.append(f"  {probe}: x{count}")
    # The menu polls candidate slots every VM pass.  Preserve ordering while
    # collapsing only adjacent identical open attempts, so a successful
    # write/read later in the scene can never be hidden by the old 100-line cap.
    rendered_events = []
    for event in file_events:
        probe = str(event.get("probe"))
        if probe == "save.file_open":
            identity = (
                probe,
                event.get("path"),
                event.get("access"),
                event.get("creation_disposition"),
                event.get("success"),
            )
            if rendered_events and rendered_events[-1][0] == identity:
                rendered_events[-1] = (identity, rendered_events[-1][1], rendered_events[-1][2] + 1)
                continue
            rendered_events.append((identity, event, 1))
        else:
            rendered_events.append((None, event, 1))

    for _, event, repeats in rendered_events:
        probe = str(event.get("probe"))
        path = event.get("path", "?")
        if probe == "save.file_open":
            suffix = f" x{repeats}" if repeats > 1 else ""
            lines.append(
                f"  open {path} access={event.get('access')} "
                f"disposition={event.get('creation_disposition')} "
                f"success={event.get('success')}{suffix}"
            )
        elif probe in ("save.file_read", "save.file_write"):
            payload = event.get("data")
            digest = "unavailable"
            captured = 0
            if isinstance(payload, str):
                try:
                    raw = bytes.fromhex(payload)
                    actual = event.get("actual")
                    if isinstance(actual, int) and 0 <= actual <= len(raw):
                        raw = raw[:actual]
                    captured = len(raw)
                    digest = hashlib.sha256(raw).hexdigest()
                except ValueError:
                    digest = "malformed-hex"
            operation = "read" if probe.endswith("read") else "write"
            lines.append(
                f"  {operation} {path} requested={event.get('requested')} "
                f"actual={event.get('actual')} captured={captured} "
                f"sha256={digest} success={event.get('success')}"
            )
            if operation == "write" and captured in (0x400, 0x523):
                native = "Win32 st7g.N" if captured == 0x400 else "DOS save.N"
                description = raw[:15]
                used = description.split(b"\xf4", 1)[0]
                decoded = bytes((value + 0x30) & 0xFF for value in used)
                printable = "".join(
                    chr(value) if 0x20 <= value < 0x7F else "." for value in decoded
                )
                lines.append(
                    f"    native-format={native}; description-codes="
                    f"{used.hex(' ')}; GRV-plus-0x30-text={printable!r}"
                )
        elif probe == "save.file_close":
            lines.append(f"  close {path} success={event.get('success')}")
        elif probe == "save.file_delete":
            lines.append(f"  delete {path} success={event.get('success')}")
    lines.append("")


def make_trace_rows(events, legacy_confident):
    rows = []
    anomalies = []
    for event in events:
        if event.get("probe") != "grv.dispatch":
            continue
        item = instruction_from_event(event, legacy_confident)
        if item is None:
            anomalies.append(f"event {event.get('seq', '?')}: dispatch has no usable PC/bytes")
            continue
        row = decode_instruction(item)
        rows.append(row)
        if row["anomaly"]:
            anomalies.append(
                f"event {event.get('seq', '?')} pc={fmt_hex(row['pc'])}: {row['anomaly']}"
            )

    for index, row in enumerate(rows[:-1]):
        nxt = rows[index + 1]
        if row["length"] is None:
            continue
        same_script = (
            row["script"] == nxt["script"]
            and (
                row["script_base"] is None
                or nxt["script_base"] is None
                or row["script_base"] == nxt["script_base"]
            )
        )
        expected = (row["pc"] + row["length"]) & 0xFFFFFFFF
        if same_script and nxt["pc"] != expected:
            row["flow"] = f"next {fmt_hex(nxt['pc'])} (fallthrough {fmt_hex(expected)})"
        else:
            row["flow"] = None
    if rows:
        rows[-1]["flow"] = None
    return rows, anomalies


def append_trace_section(lines, rows, start_ms, max_lines):
    lines.append("GRV trace (exact instruction bytes; consecutive duplicates collapsed):")
    emitted = 0
    index = 0
    while index < len(rows) and emitted < max_lines:
        row = rows[index]
        run = 1
        signature = (
            row["script"], row["pc"], row["raw"], row.get("flow"), row.get("state", {}).get("video_flags")
        )
        while index + run < len(rows):
            candidate = rows[index + run]
            candidate_signature = (
                candidate["script"],
                candidate["pc"],
                candidate["raw"],
                candidate.get("flow"),
                candidate.get("state", {}).get("video_flags"),
            )
            if candidate_signature != signature:
                break
            run += 1
        relative = (row["host_ms"] - start_ms) / 1000.0
        flow = f"  => {row['flow']}" if row.get("flow") else ""
        repeated = f"  x{run}" if run > 1 else ""
        script = row["script"]
        raw = row["raw"]
        lines.append(
            f"  [+{relative:8.3f}s] {script} +{fmt_hex(row['pc'])[2:]} "
            f"{raw:<32s} {row['text']}{flow}{repeated}"
        )
        emitted += 1
        index += run
    if index < len(rows):
        lines.append(
            f"  … trace text capped at {max_lines} lines; "
            "raw events remain complete (use F9 for smaller scenes)"
        )
    lines.append("")


def main():
    args = parse_args()
    source = Path(args.trace).expanduser().resolve()
    path = source / "events.ndjson" if source.is_dir() else source
    if not path.is_file():
        print(f"ERROR: trace not found: {path}", file=sys.stderr)
        return 2
    outdir = Path(args.out).expanduser().resolve() if args.out else path.parent / "digest"
    outdir.mkdir(parents=True, exist_ok=True)

    events, malformed = load_events(path)
    if not events:
        print("ERROR: trace is empty or wholly malformed", file=sys.stderr)
        return 2

    sequences = [event.get("seq") for event in events if isinstance(event.get("seq"), int)]
    gaps = []
    for left, right in zip(sequences, sequences[1:]):
        if right != left + 1:
            gaps.append((left, right))

    direct = any(
        event.get("probe") == "grv.dispatch"
        and isinstance(event.get("pc"), int)
        and isinstance(event.get("bytes"), str)
        for event in events
    )
    schema2 = any(event.get("schema") == "v64tng.trace/2" for event in events)
    if direct:
        legacy_reg, legacy_confident, legacy_scores = None, True, "not needed"
        semantic_source = "direct profile globals (trusted)"
    elif schema2:
        legacy_reg, legacy_confident, legacy_scores = None, True, "not needed"
        semantic_source = "schema 2; no GRV dispatch events in this capture"
    else:
        legacy_reg, legacy_confident, legacy_scores = legacy_calibration(events)
        semantic_source = (
            f"legacy register calibration: {legacy_reg}, "
            f"confidence {'OK' if legacy_confident else 'LOW'}"
        )
    legacy_slot = discover_legacy_ref_slot(events)

    manifest = {}
    manifest_path = path.parent / "manifest.json"
    if manifest_path.is_file():
        try:
            manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
        except (json.JSONDecodeError, OSError):
            manifest = {}

    ready = next((event for event in events if event.get("probe") == "tracer.ready"), {})
    attached_value = ready.get("attached", [])
    attached_count = (
        len(attached_value)
        if isinstance(attached_value, list)
        else attached_value
        if isinstance(attached_value, int)
        else 0
    )
    ready_failures = ready.get("failures", [])
    ready_failure_count = len(ready_failures) if isinstance(ready_failures, list) else 0
    failures = [
        event
        for event in events
        if event.get("probe") in (
            "tracer.attach_fail", "tracer.script_error", "tracer.read_fail", "session.error"
        )
    ]
    scenes = split_scenes(events)
    index_lines = [
        "v64tng Win32 semantic capture digest",
        f"trace: {path}",
        f"profile: {manifest.get('profile', ready.get('profile', 'unknown'))}",
        f"executable SHA-256: {manifest.get('executable', {}).get('sha256', 'unknown')}",
        f"semantic source: {semantic_source}",
        f"events: {len(events)}; malformed lines: {len(malformed)}; sequence gaps: {len(gaps)}",
        (
            f"probe health: {attached_count} attached, "
            f"{ready_failure_count} rejected, "
            f"input hooks={ready.get('input_hooks', [])}, "
            f"save hooks={ready.get('save_file_hooks', [])}"
        ),
        "",
        "scenes:",
    ]
    report = {
        "schema": "v64tng.digest/2",
        "trace": str(path),
        "profile": manifest.get("profile", ready.get("profile")),
        "semantic_source": semantic_source,
        "event_count": len(events),
        "malformed_lines": malformed,
        "sequence_gaps": gaps,
        "probe_failures": failures,
        "scenes": [],
    }
    diagnostics = [
        "v64tng Win32 capture diagnostics",
        f"malformed lines: {len(malformed)}",
        f"sequence gaps: {len(gaps)}",
        f"probe/script/read failures: {len(failures)}",
        "",
    ]
    diagnostics.extend(f"line {line}: {error}" for line, error in malformed)
    diagnostics.extend(f"sequence {left} -> {right}" for left, right in gaps)
    diagnostics.extend(json.dumps(event, sort_keys=True) for event in failures)
    if not direct and not schema2:
        diagnostics.extend(["", "legacy calibration scores:", legacy_scores])

    written = 0
    for scene_number, scene in enumerate(scenes):
        scene_events = scene["events"]
        if not scene_events:
            continue
        written += 1
        start_ms = scene_events[0].get("host_ms", 0)
        end_ms = scene_events[-1].get("host_ms", start_ms)
        span = max(0, end_ms - start_ms) / 1000.0
        hits = Counter(str(event.get("probe", "unknown")) for event in scene_events)
        rows, anomalies = make_trace_rows(scene_events, legacy_confident)
        pcs = {row["pc"] for row in rows}
        opcodes = Counter(row["opcode"] for row in rows if row["opcode"] is not None)

        lines = [
            f'=== SCENE {scene_number}: "{scene["label"]}" ===',
            f"events: {len(scene_events)}; duration: {span:.3f}s",
            "",
            "probe hits:",
        ]
        for probe, count in hits.most_common():
            lines.append(f"  {probe:30s} {count}")
        lines.append("")

        append_resource_section(lines, scene_events, legacy_slot)
        append_vdx_section(lines, scene_events)
        append_variable_section(lines, scene_events)
        append_save_section(lines, scene_events)

        inputs = Counter(
            event.get("message")
            for event in scene_events
            if event.get("probe") == "input.win32_message"
        )
        if inputs:
            lines.append("Win32 input messages:")
            for message, count in inputs.most_common():
                lines.append(f"  {message} x{count}")
            lines.append("")

        if opcodes:
            lines.append("GRV opcode coverage:")
            for opcode, count in sorted(opcodes.items()):
                name = MN[opcode] if opcode < len(MN) else f"OP{opcode:02X}"
                lines.append(f"  0x{opcode:02X} {name:32s} x{count}")
            lines.append("")

        append_trace_section(lines, rows, start_ms, args.max_trace_lines)
        lines.append(f"distinct GRV PCs touched: {len(pcs)}")
        lines.append(f"distinct GRV opcodes touched: {len(opcodes)}")
        lines.append(f"decode anomalies: {len(anomalies)}")
        if anomalies:
            lines.append("")
            lines.append("anomalies:")
            lines.extend(f"  {item}" for item in anomalies[:100])

        filename = f"{scene_number:02d}-{safe_label(scene['label'])}.txt"
        (outdir / filename).write_text("\n".join(lines) + "\n", encoding="utf-8")
        summary = (
            f"  {filename}  events={len(scene_events)} duration={span:.3f}s "
            f"GRV-PCs={len(pcs)} opcodes={len(opcodes)} anomalies={len(anomalies)}"
        )
        index_lines.append(summary)
        report["scenes"].append(
            {
                "number": scene_number,
                "label": scene["label"],
                "file": filename,
                "event_count": len(scene_events),
                "duration_seconds": span,
                "distinct_grv_pcs": len(pcs),
                "opcode_counts": {f"0x{opcode:02X}": count for opcode, count in opcodes.items()},
                "decode_anomalies": anomalies,
            }
        )

    if written == 0:
        index_lines.append("  (no non-empty scenes)")
    (outdir / "INDEX.txt").write_text("\n".join(index_lines) + "\n", encoding="utf-8")
    (outdir / "DIAGNOSTICS.txt").write_text(
        "\n".join(diagnostics) + "\n", encoding="utf-8"
    )
    (outdir / "report.json").write_text(
        json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )

    print(f"{len(events)} events -> {written} scene files in {outdir}")
    print("\n".join(index_lines[-written:] if written else index_lines[-1:]))
    if failures or malformed or gaps:
        print("WARNING: see DIAGNOSTICS.txt")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
