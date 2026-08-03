; PE virtual entry 00411C50
; Ghidra working symbol: FUN_00411c50
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411c50_part_00 0
    %%fragment_start:
func_00411c50:
    %%insn_00411c50:
    mov eax,[esp+0x4] ; 00411C50 8B442404
    %if ($ - %%insn_00411c50) > 4
        %error "LONG_00411C50"
    %endif
    times 4 - ($ - %%insn_00411c50) db 0
    %%insn_00411c54:
    push dword 0x4 ; 00411C54 6A04
    %if ($ - %%insn_00411c54) > 2
        %error "LONG_00411C54"
    %endif
    times 2 - ($ - %%insn_00411c54) db 0
    %%insn_00411c56:
    push dword 0x0 ; 00411C56 6A00
    %if ($ - %%insn_00411c56) > 2
        %error "LONG_00411C56"
    %endif
    times 2 - ($ - %%insn_00411c56) db 0
    %%insn_00411c58:
    push eax ; 00411C58 50
    %if ($ - %%insn_00411c58) > 1
        %error "LONG_00411C58"
    %endif
    times 1 - ($ - %%insn_00411c58) db 0
    %%insn_00411c59:
    call 0x411cc0 ; 00411C59 E862000000
    %if ($ - %%insn_00411c59) > 5
        %error "LONG_00411C59"
    %endif
    times 5 - ($ - %%insn_00411c59) db 0
    %%insn_00411c5e:
    add esp,0xc ; 00411C5E 83C40C
    %if ($ - %%insn_00411c5e) > 3
        %error "LONG_00411C5E"
    %endif
    times 3 - ($ - %%insn_00411c5e) db 0
    %%insn_00411c61:
    ret ; 00411C61 C3
    %if ($ - %%insn_00411c61) > 1
        %error "LONG_00411C61"
    %endif
    times 1 - ($ - %%insn_00411c61) db 0
    %if ($ - %%fragment_start) != 18
        %error "function fragment size drift: 00411C50"
    %endif
%endmacro
