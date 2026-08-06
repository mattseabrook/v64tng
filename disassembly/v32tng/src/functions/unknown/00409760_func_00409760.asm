; PE virtual entry 00409760
; Ghidra working symbol: FUN_00409760
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409760_part_00 0
    %%fragment_start:
func_00409760:
    %%insn_00409760:
    push ebp ; 00409760 55
    %if ($ - %%insn_00409760) > 1
        %error "LONG_00409760"
    %endif
    times 1 - ($ - %%insn_00409760) db 0
    db 0x8B, 0xEC ; 00409761 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409763:
    mov eax,[ebp+0x8] ; 00409763 8B4508
    %if ($ - %%insn_00409763) > 3
        %error "LONG_00409763"
    %endif
    times 3 - ($ - %%insn_00409763) db 0
    %%insn_00409766:
    push eax ; 00409766 50
    %if ($ - %%insn_00409766) > 1
        %error "LONG_00409766"
    %endif
    times 1 - ($ - %%insn_00409766) db 0
    %%insn_00409767:
    call 0x4096f0 ; 00409767 E884FFFFFF
    %if ($ - %%insn_00409767) > 5
        %error "LONG_00409767"
    %endif
    times 5 - ($ - %%insn_00409767) db 0
    %%insn_0040976c:
    add esp,0x4 ; 0040976C 83C404
    %if ($ - %%insn_0040976c) > 3
        %error "LONG_0040976C"
    %endif
    times 3 - ($ - %%insn_0040976c) db 0
    %%insn_0040976f:
    push dword 0x1 ; 0040976F 6A01
    %if ($ - %%insn_0040976f) > 2
        %error "LONG_0040976F"
    %endif
    times 2 - ($ - %%insn_0040976f) db 0
    %%insn_00409771:
    call 0x40d5f0 ; 00409771 E87A3E0000
    %if ($ - %%insn_00409771) > 5
        %error "LONG_00409771"
    %endif
    times 5 - ($ - %%insn_00409771) db 0
    %%insn_00409776:
    add esp,0x4 ; 00409776 83C404
    %if ($ - %%insn_00409776) > 3
        %error "LONG_00409776"
    %endif
    times 3 - ($ - %%insn_00409776) db 0
    %%insn_00409779:
    pop ebp ; 00409779 5D
    %if ($ - %%insn_00409779) > 1
        %error "LONG_00409779"
    %endif
    times 1 - ($ - %%insn_00409779) db 0
    %%insn_0040977a:
    ret ; 0040977A C3
    %if ($ - %%insn_0040977a) > 1
        %error "LONG_0040977A"
    %endif
    times 1 - ($ - %%insn_0040977a) db 0
    %if ($ - %%fragment_start) != 27
        %error "function fragment size drift: 00409760"
    %endif
%endmacro
