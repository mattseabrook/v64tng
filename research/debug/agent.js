'use strict';

// The host replaces this token with one selected, hash-checked profile.
const CONFIG = __V64TNG_CONFIG__;
const PROFILE = CONFIG.profile;
const IMAGE_BASE = ptr(PROFILE.image_base);
const GROUPS = new Set(CONFIG.groups);
const WINDOW_BYTES = CONFIG.instruction_window || 256;
const VARIABLE_COUNT = CONFIG.variable_count || 0x400;
const CAPTURE_VARIABLES = CONFIG.capture_variables !== false;
const NULL_POINTER = ptr('0');

let mod = null;
for (const name of PROFILE.module_names) {
  try {
    mod = Process.getModuleByName(name);
    break;
  } catch (_) {}
}
if (mod === null)
  mod = Process.enumerateModules()[0];

function atVa(value) {
  return mod.base.add(ptr(value).sub(IMAGE_BASE));
}

function globalAddress(name) {
  return atVa(PROFILE.globals[name]);
}

function asHex(value, width) {
  let result = (value >>> 0).toString(16);
  return '0x' + result.padStart(width || 8, '0');
}

function pointerHex(value) {
  try { return value.toString(); } catch (_) { return null; }
}

function readBytes(address, count) {
  try {
    if (address.isNull())
      return null;
    const raw = address.readByteArray(count);
    if (raw === null)
      return null;
    const bytes = new Uint8Array(raw);
    let text = '';
    for (let i = 0; i < bytes.length; ++i)
      text += bytes[i].toString(16).padStart(2, '0');
    return text;
  } catch (_) {
    return null;
  }
}

function readU16(address) {
  try { return address.readU16(); } catch (_) { return null; }
}

function readU32(address) {
  try { return address.readU32(); } catch (_) { return null; }
}

function readPointerGlobal(name) {
  try { return globalAddress(name).readPointer(); } catch (_) { return NULL_POINTER; }
}

function readCString(address, limit) {
  try {
    if (address.isNull())
      return null;
    return address.readUtf8String(limit || 260);
  } catch (_) {
    return null;
  }
}

function emit(probe, fields) {
  const event = fields || {};
  event.probe = probe;
  event.target_ms = Date.now();
  send(event);
}

function stackArgs(args, count) {
  const values = [];
  for (let i = 0; i < count; ++i) {
    try { values.push(pointerHex(args[i])); }
    catch (_) { values.push(null); }
  }
  return values;
}

function streamState(stream) {
  if (stream === null || stream.isNull())
    return { stream: null };
  const packed = readU16(stream.add(0x10));
  return {
    stream: pointerHex(stream),
    packed: packed === null ? null : asHex(packed, 4),
    type: packed === null ? null : packed & 0xff,
    coding: packed === null ? null : (packed >>> 8) & 0xff,
    payload_size: readU32(stream.add(0x12)),
    payload: pointerHex((() => {
      try { return stream.add(0x1c).readPointer(); } catch (_) { return NULL_POINTER; }
    })()),
    field_4c: readU32(stream.add(0x4c)),
    field_50: readU32(stream.add(0x50)),
    field_54: readU32(stream.add(0x54)),
    header_rate: readU16(stream.add(0x60)),
    flags: readU16(stream.add(0x62))
  };
}

let currentScript = 'SCRIPT.GRV';
const scriptNames = {};
let previousVariables = null;
let previousInstruction = null;
let variableReadFailures = 0;

function variableSnapshot() {
  if (!CAPTURE_VARIABLES)
    return null;
  try {
    const base = readPointerGlobal('variable_base');
    if (base.isNull())
      return null;
    const raw = base.readByteArray(VARIABLE_COUNT);
    return raw === null ? null : new Uint8Array(raw);
  } catch (_) {
    variableReadFailures++;
    return null;
  }
}

function emitVariableChanges(next) {
  if (next === null) {
    previousVariables = null;
    return;
  }
  if (previousVariables !== null) {
    const changes = [];
    for (let i = 0; i < next.length; ++i) {
      if (next[i] !== previousVariables[i])
        changes.push({ index: i, old: previousVariables[i], new: next[i] });
    }
    if (changes.length !== 0) {
      if (previousInstruction !== null) {
        emit('grv.variables', {
          script: previousInstruction.script,
          script_base: previousInstruction.script_base,
          origin: 'grv.instruction',
          origin_pc: previousInstruction.pc,
          origin_opcode: previousInstruction.opcode,
          changes: changes
        });
      } else {
        const scriptBase = readPointerGlobal('script_base');
        emit('grv.variables', {
          script: scriptIdentity(scriptBase),
          script_base: pointerHex(scriptBase),
          origin: 'between_vm_calls',
          origin_pc: null,
          origin_opcode: null,
          changes: changes
        });
      }
    }
  }
  previousVariables = next;
}

function genericRegisters(context) {
  const result = {};
  for (const name of ['eax', 'ebx', 'ecx', 'edx', 'esi', 'edi', 'ebp', 'esp', 'eip']) {
    try { result[name] = pointerHex(context[name]); } catch (_) {}
  }
  return result;
}

function scriptIdentity(scriptBase) {
  const key = pointerHex(scriptBase);
  return scriptNames[key] || (key === null ? '<unknown>' : `<script@${key}>`);
}

function emitGrvSaveBoundary(probe) {
  const scriptBase = readPointerGlobal('script_base');
  emit(probe, {
    script: scriptIdentity(scriptBase),
    script_base: pointerHex(scriptBase),
    pc_after_opcode: readU32(globalAddress('script_pc'))
  });
}

const handlers = {
  'grv.load_script': {
    onEnter(args) {
      this.name = readCString(args[0], 260) || '<unreadable>';
      emit('grv.load_script.enter', { script: this.name });
    },
    onLeave(retval) {
      currentScript = this.name;
      previousVariables = null;
      previousInstruction = null;
      const scriptBase = readPointerGlobal('script_base');
      scriptNames[pointerHex(scriptBase)] = this.name;
      emit('grv.load_script.leave', {
        script: this.name,
        script_base: pointerHex(scriptBase),
        result: pointerHex(retval)
      });
    }
  },

  'grv.vm_entry': {
    onEnter() {
      const scriptBase = readPointerGlobal('script_base');
      emit('grv.vm.enter', {
        script: scriptIdentity(scriptBase),
        script_base: pointerHex(scriptBase),
        pc: readU32(globalAddress('script_pc'))
      });
    },
    onLeave(retval) {
      emitVariableChanges(variableSnapshot());
      const scriptBase = readPointerGlobal('script_base');
      emit('grv.vm.leave', {
        script: scriptIdentity(scriptBase),
        script_base: pointerHex(scriptBase),
        pc: readU32(globalAddress('script_pc')),
        result: pointerHex(retval)
      });
      previousInstruction = null;
    }
  },

  'grv.dispatch': {
    onEnter() {
      const scriptBase = readPointerGlobal('script_base');
      const scriptName = scriptIdentity(scriptBase);
      const pc = readU32(globalAddress('script_pc'));
      if (scriptBase.isNull() || pc === null) {
        emit('tracer.read_fail', { site: 'grv.dispatch', reason: 'script base or PC unavailable' });
        return;
      }

      const instruction = scriptBase.add(pc);
      const window = readBytes(instruction, WINDOW_BYTES);
      const rawOpcode = window === null || window.length < 2
        ? null
        : parseInt(window.slice(0, 2), 16);

      emitVariableChanges(variableSnapshot());
      emit('grv.dispatch', {
        script: scriptName,
        script_base: pointerHex(scriptBase),
        pc: pc,
        raw_opcode: rawOpcode,
        opcode: rawOpcode === null ? null : rawOpcode & 0x7f,
        bytes: window,
        state: {
          call_depth: readU32(globalAddress('call_depth')),
          call_stack: pointerHex(readPointerGlobal('call_stack')),
          video_flags: readU16(globalAddress('video_flags'))
        }
      });
      previousInstruction = {
        script: scriptName,
        script_base: pointerHex(scriptBase),
        pc: pc,
        opcode: rawOpcode === null ? null : rawOpcode & 0x7f
      };
    }
  },

  // These are verified internal opcode-handler boundaries, not function
  // entries. Variable effects are captured at the next GRV dispatch.
  'grv.load_game': {
    onEnter() { emitGrvSaveBoundary('grv.load_game'); }
  },

  'grv.save_game': {
    onEnter() { emitGrvSaveBoundary('grv.save_game'); }
  },

  'grv.check_valid_saves': {
    onEnter() { emitGrvSaveBoundary('grv.check_valid_saves'); }
  },

  'grv.video_select': {
    onEnter(args) {
      const ref = args[0].toUInt32();
      emit('grv.video_select', {
        ref: ref & 0xffff,
        archive: (ref >>> 10) & 0x3f,
        resource_index: ref & 0x3ff
      });
    }
  },

  'grv.song_select': {
    onEnter(args) {
      const ref = args[0].toUInt32();
      emit('grv.song_select', {
        ref: ref & 0xffff,
        archive: (ref >>> 10) & 0x3f,
        resource_index: ref & 0x3ff
      });
    }
  },

  'vdx.configure': {
    onEnter(args) {
      this.stream = args[0];
      emit('vdx.configure.enter', streamState(this.stream));
    },
    onLeave(retval) {
      const state = streamState(this.stream);
      state.result = pointerHex(retval);
      emit('vdx.configure.leave', state);
    }
  },

  'vdx.stream': {
    onEnter(args) {
      this.stream = args[0];
      emit('vdx.stream.enter', streamState(this.stream));
    },
    onLeave(retval) {
      const state = streamState(this.stream);
      state.result = pointerHex(retval);
      emit('vdx.stream.leave', state);
    }
  },

  'vdx.chunk': {
    onEnter() {
      let stream = NULL_POINTER;
      try { stream = this.context.ebp.add(8).readPointer(); } catch (_) {}
      const state = streamState(stream);
      const packed = this.context.ecx.toUInt32() & 0xffff;
      state.packed = asHex(packed, 4);
      state.type = packed & 0xff;
      state.coding = (packed >>> 8) & 0xff;
      emit('vdx.chunk', state);
    }
  },

  'vdx.decompress_chunk': {
    onEnter(args) {
      this.args = stackArgs(args, 5);
      emit('vdx.decompress_chunk.enter', {
        input: this.args[0],
        length_mask: args[1].toUInt32() & 0xffff,
        length_bits: args[2].toUInt32() & 0xffff,
        decoded_size_out: this.args[4]
      });
    },
    onLeave(retval) {
      let decodedSize = null;
      try { decodedSize = ptr(this.args[4]).readU32(); } catch (_) {}
      emit('vdx.decompress_chunk.leave', {
        output: pointerHex(retval),
        decoded_size: decodedSize
      });
    }
  },

  'vdx.lzss': {
    onEnter(args) {
      this.args = stackArgs(args, 4);
      emit('vdx.lzss.enter', {
        input: this.args[0],
        output: this.args[1],
        length_mask: args[2].toUInt32() & 0xffff,
        length_bits: args[3].toUInt32() & 0xffff
      });
    },
    onLeave(retval) {
      emit('vdx.lzss.leave', {
        input: this.args[0],
        output: this.args[1],
        decoded_size: retval.toUInt32()
      });
    }
  },

  'vdx.still20': {
    onEnter(args) {
      this.args = stackArgs(args, 5);
      emit('vdx.still20.enter', {
        payload: this.args[0],
        output: this.args[1],
        arg2: args[2].toUInt32(),
        arg3: args[3].toUInt32(),
        arg4: args[4].toUInt32()
      });
    },
    onLeave(retval) {
      emit('vdx.still20.leave', { result: pointerHex(retval) });
    }
  },

  'vdx.delta25': {
    onEnter(args) {
      this.args = stackArgs(args, 5);
      emit('vdx.delta25.enter', {
        payload: this.args[0],
        output: this.args[1],
        arg2: args[2].toUInt32(),
        arg3: args[3].toUInt32(),
        arg4: args[4].toUInt32()
      });
    },
    onLeave(retval) {
      emit('vdx.delta25.leave', { result: pointerHex(retval) });
    }
  }
};

function expectedBytesMatch(spec, address) {
  const actual = readBytes(address, spec.expected.length / 2);
  return actual !== null && actual.toLowerCase() === spec.expected.toLowerCase();
}

const attached = [];
const failures = [];
for (const spec of PROFILE.probes) {
  if (!GROUPS.has(spec.group))
    continue;
  const address = atVa(spec.va);
  if (!expectedBytesMatch(spec, address)) {
    const failure = {
      name: spec.name,
      va: spec.va,
      runtime: pointerHex(address),
      reason: 'expected bytes do not match',
      expected: spec.expected,
      actual: readBytes(address, spec.expected.length / 2)
    };
    failures.push(failure);
    emit('tracer.attach_fail', failure);
    continue;
  }
  try {
    Interceptor.attach(address, handlers[spec.name]);
    attached.push(spec.name);
  } catch (error) {
    const failure = {
      name: spec.name,
      va: spec.va,
      runtime: pointerHex(address),
      reason: String(error)
    };
    failures.push(failure);
    emit('tracer.attach_fail', failure);
  }
}

function isInterestingMessage(message) {
  if (message >= 0x0100 && message <= 0x0109)
    return true;
  return [
    0x0201, 0x0202, 0x0204, 0x0205, 0x0207, 0x0208,
    0x020a, 0x020b, 0x020c, 0x020d, 0x020e
  ].indexOf(message) !== -1;
}

function emitWin32Message(msgPointer, api) {
  try {
    if (msgPointer.isNull())
      return;
    const message = msgPointer.add(Process.pointerSize).readU32();
    if (!isInterestingMessage(message))
      return;
    const wparam = msgPointer.add(Process.pointerSize + 4).readPointer();
    const lparam = msgPointer.add(Process.pointerSize * 2 + 4).readPointer();
    const packed = lparam.toUInt32();
    const event = {
      api: api,
      message: asHex(message, 4),
      wparam: pointerHex(wparam),
      lparam: pointerHex(lparam)
    };
    if (message >= 0x0200) {
      event.x = (packed << 16) >> 16;
      event.y = packed >> 16;
    }
    emit('input.win32_message', event);
  } catch (error) {
    emit('tracer.read_fail', { site: api, reason: String(error) });
  }
}

const inputHooks = [];
const inputFailures = [];
if (GROUPS.has('input')) {
  for (const api of ['GetMessageA', 'PeekMessageA']) {
    let address = null;
    if (typeof Module.findGlobalExportByName === 'function')
      address = Module.findGlobalExportByName(api);
    else if (typeof Module.findExportByName === 'function')
      address = Module.findExportByName(null, api);
    if (address === null)
      continue;
    try {
      Interceptor.attach(address, {
        onEnter(args) {
          this.msg = args[0];
          this.removed = api === 'GetMessageA' || (args[4].toUInt32() & 1) !== 0;
        },
        onLeave(retval) {
          if (this.removed && retval.toInt32() > 0)
            emitWin32Message(this.msg, api);
        }
      });
      inputHooks.push(api);
    } catch (error) {
      inputFailures.push({ name: 'input.' + api, reason: String(error) });
    }
  }
}

// Capture the exact st7g.N payloads used by the menu's load/save operations.
// Other game/resource file traffic is deliberately ignored.
const saveFileHooks = [];
const saveHandles = new Map();

function globalExport(name) {
  if (typeof Module.findGlobalExportByName === 'function')
    return Module.findGlobalExportByName(name);
  if (typeof Module.findExportByName === 'function')
    return Module.findExportByName(null, name);
  return null;
}

function savePath(path) {
  return path !== null && /(^|[\\/])st7g\.[0-9]+$/i.test(path);
}

function attachSaveFileHook(api, callbacks) {
  const address = globalExport(api);
  if (address === null)
    return;
  try {
    Interceptor.attach(address, callbacks);
    saveFileHooks.push(api);
  } catch (error) {
    emit('tracer.attach_fail', { name: 'save.' + api, reason: String(error) });
  }
}

if (GROUPS.has('grv')) {
  attachSaveFileHook('CreateFileA', {
    onEnter(args) {
      this.path = readCString(args[0], 1024);
      this.interesting = savePath(this.path);
      if (!this.interesting)
        return;
      this.access = args[1].toUInt32();
      this.creationDisposition = args[4].toUInt32();
    },
    onLeave(retval) {
      if (!this.interesting)
        return;
      const failed = retval.equals(ptr(-1));
      if (!failed)
        saveHandles.set(pointerHex(retval), this.path);
      emit('save.file_open', {
        path: this.path,
        access: asHex(this.access),
        creation_disposition: this.creationDisposition,
        handle: pointerHex(retval),
        success: !failed
      });
    }
  });

  attachSaveFileHook('WriteFile', {
    onEnter(args) {
      this.handle = pointerHex(args[0]);
      this.path = saveHandles.get(this.handle) || null;
      if (this.path === null)
        return;
      this.requested = args[2].toUInt32();
      this.written = args[3];
      this.data = readBytes(args[1], Math.min(this.requested, 0x2000));
    },
    onLeave(retval) {
      if (this.path === null)
        return;
      emit('save.file_write', {
        path: this.path,
        handle: this.handle,
        requested: this.requested,
        actual: readU32(this.written),
        success: retval.toInt32() !== 0,
        data: this.data
      });
    }
  });

  attachSaveFileHook('ReadFile', {
    onEnter(args) {
      this.handle = pointerHex(args[0]);
      this.path = saveHandles.get(this.handle) || null;
      if (this.path === null)
        return;
      this.buffer = args[1];
      this.requested = args[2].toUInt32();
      this.read = args[3];
    },
    onLeave(retval) {
      if (this.path === null)
        return;
      const actual = readU32(this.read);
      emit('save.file_read', {
        path: this.path,
        handle: this.handle,
        requested: this.requested,
        actual: actual,
        success: retval.toInt32() !== 0,
        data: actual === null ? null : readBytes(this.buffer, Math.min(actual, 0x2000))
      });
    }
  });

  attachSaveFileHook('CloseHandle', {
    onEnter(args) {
      this.handle = pointerHex(args[0]);
      this.path = saveHandles.get(this.handle) || null;
      if (this.path !== null)
        saveHandles.delete(this.handle);
    },
    onLeave(retval) {
      if (this.path !== null)
        emit('save.file_close', { path: this.path, handle: this.handle, success: retval.toInt32() !== 0 });
    }
  });

  attachSaveFileHook('DeleteFileA', {
    onEnter(args) {
      this.path = readCString(args[0], 1024);
      this.interesting = savePath(this.path);
    },
    onLeave(retval) {
      if (this.interesting)
        emit('save.file_delete', { path: this.path, success: retval.toInt32() !== 0 });
    }
  });
}

emit('tracer.ready', {
  profile: PROFILE.id,
  module: mod.name,
  module_path: mod.path,
  base: pointerHex(mod.base),
  groups: Array.from(GROUPS),
  attached: attached,
  input_hooks: inputHooks,
  input_failures: inputFailures,
  save_file_hooks: saveFileHooks,
  failures: failures,
  variable_count: VARIABLE_COUNT,
  variable_diffs: CAPTURE_VARIABLES,
  instruction_window: WINDOW_BYTES
});
