; Linear entry 0443A (1000:443a)
; Ghidra working symbol: FUN_1000_443a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0443a_part_00 0
    %%fragment_start:
func_0443a:
    %%insn_0443a:
    lodsw ; 0443A AD
    %if ($ - %%insn_0443a) > 1
        %error "LONG_0443A"
    %endif
    times 1 - ($ - %%insn_0443a) db 0
    %%insn_0443b:
    push si ; 0443B 56
    %if ($ - %%insn_0443b) > 1
        %error "LONG_0443B"
    %endif
    times 1 - ($ - %%insn_0443b) db 0
    %%insn_0443c:
    mov word [bp-0x30d2],0x1 ; 0443C C7862ECF0100
    %if ($ - %%insn_0443c) > 6
        %error "LONG_0443C"
    %endif
    times 6 - ($ - %%insn_0443c) db 0
    %%insn_04442:
    call 0x3941 ; 04442 E8FCF4
    %if ($ - %%insn_04442) > 3
        %error "LONG_04442"
    %endif
    times 3 - ($ - %%insn_04442) db 0
    %%insn_04445:
    call 0x5bd1 ; 04445 E88917
    %if ($ - %%insn_04445) > 3
        %error "LONG_04445"
    %endif
    times 3 - ($ - %%insn_04445) db 0
    %%insn_04448:
    pop si ; 04448 5E
    %if ($ - %%insn_04448) > 1
        %error "LONG_04448"
    %endif
    times 1 - ($ - %%insn_04448) db 0
    %%insn_04449:
    ret ; 04449 C3
    %if ($ - %%insn_04449) > 1
        %error "LONG_04449"
    %endif
    times 1 - ($ - %%insn_04449) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_0443A"
    %endif
%endmacro
