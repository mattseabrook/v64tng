; Linear entry 05A37 (1000:5a37)
; Ghidra working symbol: FUN_1000_5a37
; Verified GRV opcode 29h implementation. Polls the active Miles sequence
; status entry point until it no longer reports the playing state.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_wait_for_midi_sequence_completion_part_00 0
    %%fragment_start:
wait_for_midi_sequence_completion:
    %%insn_05a37:
    push si ; 05A37 56
    %if ($ - %%insn_05a37) > 1
        %error "LONG_05A37"
    %endif
    times 1 - ($ - %%insn_05a37) db 0
    %%insn_05a38:
    push word [bp-0x1bc8] ; 05A38 FFB638E4
    %if ($ - %%insn_05a38) > 4
        %error "LONG_05A38"
    %endif
    times 4 - ($ - %%insn_05a38) db 0
    %%insn_05a3c:
    push word [bp-0x1bce] ; 05A3C FFB632E4
    %if ($ - %%insn_05a3c) > 4
        %error "LONG_05A3C"
    %endif
    times 4 - ($ - %%insn_05a3c) db 0
    %%insn_05a40:
    call word 0x702:word 0xd0a ; 05A40 9A0A0D0207
    %if ($ - %%insn_05a40) > 5
        %error "LONG_05A40"
    %endif
    times 5 - ($ - %%insn_05a40) db 0
    %%insn_05a45:
    add sp,0x4 ; 05A45 83C404
    %if ($ - %%insn_05a45) > 3
        %error "LONG_05A45"
    %endif
    times 3 - ($ - %%insn_05a45) db 0
    db 0x3D, 0x01, 0x00 ; 05A48 3D0100 | cmp ax,0x1 | encoding preserved
    %%insn_05a4b:
    jz short 0x5a38 ; 05A4B 74EB
    %if ($ - %%insn_05a4b) > 2
        %error "LONG_05A4B"
    %endif
    times 2 - ($ - %%insn_05a4b) db 0
    %%insn_05a4d:
    pop si ; 05A4D 5E
    %if ($ - %%insn_05a4d) > 1
        %error "LONG_05A4D"
    %endif
    times 1 - ($ - %%insn_05a4d) db 0
    %%insn_05a4e:
    ret ; 05A4E C3
    %if ($ - %%insn_05a4e) > 1
        %error "LONG_05A4E"
    %endif
    times 1 - ($ - %%insn_05a4e) db 0
    %if ($ - %%fragment_start) != 24
        %error "SIZE_05A37"
    %endif
%endmacro
