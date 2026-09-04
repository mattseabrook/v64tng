; PE virtual entry 0040716E
; Ghidra working symbol: FUN_0040716e
; Verified role: forwards volume and ramp time to AIL_set_sequence_volume for
; the active Miles MIDI sequence. Called by GRV opcode 31h.
; Generated losslessly; preserve byte identity after edits.

%macro emit_set_active_midi_sequence_volume_ramp_part_00 0
    %%fragment_start:
set_active_midi_sequence_volume_ramp:
    %%insn_0040716e:
    push ebp ; 0040716E 55
    %if ($ - %%insn_0040716e) > 1
        %error "LONG_0040716E"
    %endif
    times 1 - ($ - %%insn_0040716e) db 0
    db 0x8B, 0xEC ; 0040716F 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407171:
    mov eax,[ebp+0xc] ; 00407171 8B450C
    %if ($ - %%insn_00407171) > 3
        %error "LONG_00407171"
    %endif
    times 3 - ($ - %%insn_00407171) db 0
    %%insn_00407174:
    push eax ; 00407174 50
    %if ($ - %%insn_00407174) > 1
        %error "LONG_00407174"
    %endif
    times 1 - ($ - %%insn_00407174) db 0
    %%insn_00407175:
    mov ecx,[ebp+0x8] ; 00407175 8B4D08
    %if ($ - %%insn_00407175) > 3
        %error "LONG_00407175"
    %endif
    times 3 - ($ - %%insn_00407175) db 0
    %%insn_00407178:
    push ecx ; 00407178 51
    %if ($ - %%insn_00407178) > 1
        %error "LONG_00407178"
    %endif
    times 1 - ($ - %%insn_00407178) db 0
    %%insn_00407179:
    mov edx,[0x421448] ; 00407179 8B1548144200
    %if ($ - %%insn_00407179) > 6
        %error "LONG_00407179"
    %endif
    times 6 - ($ - %%insn_00407179) db 0
    %%insn_0040717f:
    push edx ; 0040717F 52
    %if ($ - %%insn_0040717f) > 1
        %error "LONG_0040717F"
    %endif
    times 1 - ($ - %%insn_0040717f) db 0
    %%insn_00407180:
    call dword near [0x424624] ; 00407180 FF1524464200
    %if ($ - %%insn_00407180) > 6
        %error "LONG_00407180"
    %endif
    times 6 - ($ - %%insn_00407180) db 0
    %%insn_00407186:
    pop ebp ; 00407186 5D
    %if ($ - %%insn_00407186) > 1
        %error "LONG_00407186"
    %endif
    times 1 - ($ - %%insn_00407186) db 0
    %%insn_00407187:
    ret ; 00407187 C3
    %if ($ - %%insn_00407187) > 1
        %error "LONG_00407187"
    %endif
    times 1 - ($ - %%insn_00407187) db 0
    %if ($ - %%fragment_start) != 26
        %error "function fragment size drift: 0040716E"
    %endif
%endmacro
