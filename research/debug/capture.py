#!/usr/bin/env python3
"""Capture semantic evidence from the verified Win32 v32tng.exe build."""

from __future__ import annotations

import argparse
import ctypes
import hashlib
import json
import os
import platform
import sys
import threading
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

try:
    import frida
except ImportError:
    frida = None


HERE = Path(__file__).resolve().parent
PROFILE_PATH = HERE / "profiles.json"
AGENT_PATH = HERE / "agent.js"
SCHEMA = "v64tng.trace/2"
MODE_GROUPS = {
    "core": ["grv", "resource"],
    "media": ["vdx"],
    "full": ["grv", "resource", "vdx", "input"],
}


def utc_now() -> str:
    return datetime.now(timezone.utc).isoformat(timespec="seconds")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1 << 20), b""):
            digest.update(chunk)
    return digest.hexdigest()


def load_profiles() -> list[dict[str, Any]]:
    with PROFILE_PATH.open(encoding="utf-8") as handle:
        document = json.load(handle)
    if document.get("schema") != "v64tng.win32-profiles/1":
        raise RuntimeError(f"unsupported profile schema in {PROFILE_PATH}")
    return document["profiles"]


def select_profile(
    profiles: list[dict[str, Any]],
    executable_hash: str,
    requested: str | None,
    allow_unknown: bool,
) -> tuple[dict[str, Any], bool]:
    if requested:
        matches = [profile for profile in profiles if profile["id"] == requested]
        if not matches:
            choices = ", ".join(profile["id"] for profile in profiles)
            raise RuntimeError(f"unknown profile {requested!r}; choices: {choices}")
        profile = matches[0]
    else:
        matches = [profile for profile in profiles if profile["sha256"] == executable_hash]
        if matches:
            return matches[0], True
        profile = profiles[0]

    exact = profile["sha256"] == executable_hash
    if not exact and not allow_unknown:
        raise RuntimeError(
            "executable hash is not recognized; refusing to inject hard-coded probes\n"
            f"  actual:   {executable_hash}\n"
            f"  profile:  {profile['sha256']} ({profile['id']})\n"
            "Use the verified 1.02b1 executable, or use --allow-unknown-build only "
            "for an intentional probe-byte validation run."
        )
    return profile, exact


class TraceWriter:
    def __init__(self, root: Path, source: str):
        root.mkdir(parents=True, exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d-%H%M%S")
        directory = root / stamp
        suffix = 1
        while directory.exists():
            suffix += 1
            directory = root / f"{stamp}-{suffix:02d}"
        directory.mkdir()

        self.directory = directory
        self.path = directory / "events.ndjson"
        self.handle = self.path.open("w", encoding="utf-8", buffering=1)
        self.session = directory.name
        self.source = source
        self.seq = 0
        self.counts: dict[str, int] = {}
        self.started_monotonic = time.monotonic()
        self.lock = threading.Lock()
        self.closed = False

    def write(self, payload: dict[str, Any]) -> int:
        with self.lock:
            if self.closed:
                return self.seq
            self.seq += 1
            record = {
                "schema": SCHEMA,
                "seq": self.seq,
                "session": self.session,
                "source": self.source,
                "host_ms": int((time.monotonic() - self.started_monotonic) * 1000),
            }
            record.update(payload)
            self.handle.write(json.dumps(record, separators=(",", ":")) + "\n")
            probe = str(payload.get("probe", "unknown"))
            self.counts[probe] = self.counts.get(probe, 0) + 1
            return self.seq

    def mark(self, label: str) -> None:
        seq = self.write({"probe": "session.mark", "label": label})
        print(f"\n*** MARK {label} (event {seq}) ***", flush=True)

    def close(self) -> None:
        with self.lock:
            if self.closed:
                return
            self.handle.flush()
            try:
                os.fsync(self.handle.fileno())
            except OSError:
                pass
            self.handle.close()
            self.closed = True


def hotkey_worker(writer: TraceWriter, stop: threading.Event) -> None:
    """Drop a marker on the rising edge of F9, even while the game has focus."""
    if os.name != "nt":
        return
    try:
        user32 = ctypes.windll.user32
    except (AttributeError, OSError):
        return

    marker = 0
    was_down = False
    while not stop.wait(0.05):
        down = bool(user32.GetAsyncKeyState(0x78) & 0x8000)
        if down and not was_down:
            marker += 1
            writer.mark(f"mark-{marker}")
        was_down = down


def stdin_worker(writer: TraceWriter, stop: threading.Event) -> None:
    while not stop.is_set():
        try:
            line = sys.stdin.readline()
        except (EOFError, OSError):
            return
        if not line or stop.is_set():
            return
        label = line.strip()
        if label:
            writer.mark(label)


def write_manifest(path: Path, manifest: dict[str, Any]) -> None:
    temporary = path.with_suffix(".json.tmp")
    with temporary.open("w", encoding="utf-8") as handle:
        json.dump(manifest, handle, indent=2, sort_keys=True)
        handle.write("\n")
    os.replace(temporary, path)


def render_agent(profile: dict[str, Any], groups: list[str], args: argparse.Namespace) -> str:
    source = AGENT_PATH.read_text(encoding="utf-8")
    token = "__V64TNG_CONFIG__"
    if source.count(token) != 1:
        raise RuntimeError(f"{AGENT_PATH} must contain exactly one {token} token")
    config = {
        "profile": profile,
        "groups": groups,
        "instruction_window": args.instruction_window,
        "variable_count": 0x400,
        "capture_variables": not args.no_variables,
    }
    return source.replace(token, json.dumps(config, separators=(",", ":")))


def doctor(profiles: list[dict[str, Any]], executable: Path | None) -> int:
    checks = [
        ("Python", platform.python_version()),
        ("platform", platform.platform()),
        ("agent", str(AGENT_PATH) if AGENT_PATH.is_file() else "MISSING"),
        ("profiles", ", ".join(profile["id"] for profile in profiles)),
        ("Frida Python package", getattr(frida, "__version__", "MISSING") if frida else "MISSING"),
    ]
    if executable is not None:
        if executable.is_file():
            digest = sha256_file(executable)
            match = next((p["id"] for p in profiles if p["sha256"] == digest), "UNRECOGNIZED")
            checks.append(("executable SHA-256", digest))
            checks.append(("profile match", match))
        else:
            checks.append(("executable", f"MISSING: {executable}"))

    width = max(len(name) for name, _ in checks)
    for name, value in checks:
        print(f"{name:<{width}} : {value}")
    if sys.version_info < (3, 10):
        print("ERROR: Python 3.10 or newer is required.")
        return 1
    if frida is None:
        print("ERROR: install Frida with: py -m pip install --upgrade frida-tools")
        return 1
    return 0


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Capture GRV/resource/VDX/input evidence from v32tng.exe."
    )
    parser.add_argument("--exe", type=Path, default=Path(r"C:\T7G\v32tng.exe"))
    parser.add_argument(
        "--attach",
        help="attach to a running process name or PID instead of spawning --exe",
    )
    parser.add_argument("--out", type=Path, default=HERE / "trace")
    parser.add_argument("--mode", choices=MODE_GROUPS, default="full")
    parser.add_argument("--profile", help="force a named address profile")
    parser.add_argument(
        "--allow-unknown-build",
        action="store_true",
        help="allow a hash mismatch; every probe still requires an expected-byte match",
    )
    parser.add_argument(
        "--no-variables",
        action="store_true",
        help="disable 0x400-byte GRV variable snapshots/diffs",
    )
    parser.add_argument(
        "--instruction-window",
        type=int,
        default=256,
        metavar="BYTES",
        help="bounded script bytes captured at each GRV dispatch (64-2048; default 256)",
    )
    parser.add_argument("--doctor", action="store_true", help="check the setup and exit")
    parser.add_argument("--list-profiles", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    profiles = load_profiles()

    if args.list_profiles:
        for profile in profiles:
            print(f"{profile['id']}  {profile['sha256']}  {profile['description']}")
        return 0
    if args.doctor:
        return doctor(profiles, args.exe)
    if sys.version_info < (3, 10):
        print("ERROR: Python 3.10 or newer is required.", file=sys.stderr)
        return 2
    if frida is None:
        print(
            "ERROR: Frida is not installed.\n"
            "Run: py -m pip install --upgrade pip frida-tools",
            file=sys.stderr,
        )
        return 2
    if not 64 <= args.instruction_window <= 2048:
        print("ERROR: --instruction-window must be between 64 and 2048", file=sys.stderr)
        return 2

    executable = args.exe.expanduser().resolve()
    if not executable.is_file():
        print(
            f"ERROR: executable not found: {executable}\n"
            "Pass its actual path with --exe, including when using --attach.",
            file=sys.stderr,
        )
        return 2

    executable_hash = sha256_file(executable)
    try:
        profile, exact_profile = select_profile(
            profiles, executable_hash, args.profile, args.allow_unknown_build
        )
    except RuntimeError as error:
        print(f"ERROR: {error}", file=sys.stderr)
        return 2

    groups = MODE_GROUPS[args.mode]
    writer = TraceWriter(args.out.expanduser().resolve(), profile["id"])
    manifest_path = writer.directory / "manifest.json"
    manifest: dict[str, Any] = {
        "schema": "v64tng.capture-manifest/2",
        "session": writer.session,
        "started_utc": utc_now(),
        "completed": False,
        "mode": args.mode,
        "groups": groups,
        "profile": profile["id"],
        "profile_exact_hash_match": exact_profile,
        "executable": {
            "path": str(executable),
            "name": executable.name,
            "size": executable.stat().st_size,
            "sha256": executable_hash,
        },
        "tools": {
            "python": platform.python_version(),
            "python_architecture": platform.architecture()[0],
            "frida": getattr(frida, "__version__", "unknown"),
            "agent_sha256": sha256_file(AGENT_PATH),
            "profiles_sha256": sha256_file(PROFILE_PATH),
        },
        "capture": {
            "attach": args.attach,
            "instruction_window": args.instruction_window,
            "variable_diffs": not args.no_variables,
            "command": [str(item) for item in sys.argv],
        },
    }
    write_manifest(manifest_path, manifest)
    writer.write(
        {
            "probe": "session.start",
            "profile": profile["id"],
            "exe_sha256": executable_hash,
            "mode": args.mode,
        }
    )

    device = None
    session = None
    pid = None
    spawn_resumed = False
    stop = threading.Event()
    ready = threading.Event()
    ready_payload: dict[str, Any] = {}
    detach_details: dict[str, Any] = {}
    return_code = 0

    try:
        device = frida.get_local_device()
        if args.attach:
            target: str | int = int(args.attach) if args.attach.isdigit() else args.attach
            session = device.attach(target)
            print(f"attached to {target}")
        else:
            # This beta expects relative data files in its installation directory.
            try:
                pid = device.spawn([str(executable)], cwd=str(executable.parent))
            except TypeError:
                old_cwd = Path.cwd()
                os.chdir(executable.parent)
                try:
                    pid = device.spawn([str(executable)])
                finally:
                    os.chdir(old_cwd)
            session = device.attach(pid)
            print(f"spawned suspended process {pid}")

        def on_detached(*details: Any) -> None:
            detach_details["details"] = [str(item) for item in details]
            writer.write({"probe": "session.detached", "details": detach_details["details"]})
            stop.set()

        session.on("detached", on_detached)
        script = session.create_script(render_agent(profile, groups, args))

        def on_message(message: dict[str, Any], data: bytes | None) -> None:
            if message.get("type") == "send":
                payload = message.get("payload")
                if not isinstance(payload, dict):
                    payload = {"probe": "tracer.message", "payload": payload}
                writer.write(payload)
                probe = payload.get("probe")
                if probe == "tracer.ready":
                    ready_payload.update(payload)
                    ready.set()
                    attached = payload.get("attached", [])
                    failures = payload.get("failures", [])
                    print(
                        f"tracer ready: {len(attached)} semantic probes attached; "
                        f"{len(failures)} failures; input hooks "
                        f"{payload.get('input_hooks', [])}"
                    )
                elif probe == "tracer.attach_fail":
                    print(f"!! probe rejected: {payload}", flush=True)
                elif probe == "tracer.read_fail":
                    print(f"!! bounded read failed: {payload}", flush=True)
            elif message.get("type") == "error":
                payload = {
                    "probe": "tracer.script_error",
                    "description": message.get("description"),
                    "stack": message.get("stack"),
                }
                writer.write(payload)
                print(f"!! agent error: {payload['description']}", flush=True)

        script.on("message", on_message)
        script.load()
        if not ready.wait(5):
            raise RuntimeError("Frida agent did not report ready within five seconds")
        if ready_payload.get("failures"):
            raise RuntimeError(
                "one or more required semantic probes failed; refusing to run a "
                "partial evidence capture (see events.ndjson)"
            )
        module_path_text = ready_payload.get("module_path")
        if module_path_text:
            module_path = Path(module_path_text)
            if module_path.is_file():
                module_hash = sha256_file(module_path)
                manifest["target_module"] = {
                    "path": str(module_path),
                    "sha256": module_hash,
                }
                write_manifest(manifest_path, manifest)
                if module_hash != executable_hash:
                    raise RuntimeError(
                        "attached process module does not match the executable "
                        "verified by --exe"
                    )
        if pid is not None:
            device.resume(pid)
            spawn_resumed = True
            print(f"resumed process {pid}")

        threading.Thread(
            target=hotkey_worker, args=(writer, stop), daemon=True, name="scene-hotkey"
        ).start()
        threading.Thread(
            target=stdin_worker, args=(writer, stop), daemon=True, name="scene-labels"
        ).start()

        print("\nCapturing. F9 = scene marker; type a label + Enter = named marker.")
        print("Quit the game or press Ctrl+C here to stop.\n")
        last = -1
        while not stop.wait(2):
            if writer.seq == last:
                continue
            last = writer.seq
            top = sorted(writer.counts.items(), key=lambda item: -item[1])[:6]
            summary = "  ".join(f"{name}:{count}" for name, count in top)
            elapsed = int(time.monotonic() - writer.started_monotonic)
            print(f"[{elapsed:>5}s] {writer.seq} events  {summary}", flush=True)
    except KeyboardInterrupt:
        print("\nstopping capture...")
    except Exception as error:
        writer.write({"probe": "session.error", "error": str(error)})
        print(f"ERROR: {error}", file=sys.stderr)
        return_code = 1
    else:
        return_code = 0
    finally:
        writer.write({"probe": "session.stop", "reason": "host-stop"})
        stop.set()
        if session is not None:
            try:
                session.detach()
            except Exception:
                pass
        if pid is not None and not spawn_resumed and device is not None:
            try:
                device.kill(pid)
            except Exception:
                pass
        writer.close()
        manifest.update(
            {
                "ended_utc": utc_now(),
                "completed": return_code == 0,
                "event_count": writer.seq,
                "event_counts": dict(sorted(writer.counts.items())),
                "agent_ready": ready_payload,
                "detach": detach_details,
            }
        )
        write_manifest(manifest_path, manifest)
        print(f"\ntrace: {writer.path}")
        print(f"next:  py digest.py \"{writer.directory}\"")

    return return_code


if __name__ == "__main__":
    raise SystemExit(main())
