; Linear entry 05EC8 (1000:5ec8)
; Ghidra working symbol: FUN_1000_5ec8
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05ec8_part_00 0
    %%fragment_start:
func_05ec8:
    %%insn_05ec8:
    mov ah,0x48 ; 05EC8 B448
    %if ($ - %%insn_05ec8) > 2
        %error "LONG_05EC8"
    %endif
    times 2 - ($ - %%insn_05ec8) db 0
    %%insn_05eca:
    int byte 0x21 ; 05ECA CD21
    %if ($ - %%insn_05eca) > 2
        %error "LONG_05ECA"
    %endif
    times 2 - ($ - %%insn_05eca) db 0
    %%insn_05ecc:
    jnc short 0x5ed4 ; 05ECC 7306
    %if ($ - %%insn_05ecc) > 2
        %error "LONG_05ECC"
    %endif
    times 2 - ($ - %%insn_05ecc) db 0
    %%insn_05ece:
    mov ax,0xadc ; 05ECE B8DC0A
    %if ($ - %%insn_05ece) > 3
        %error "LONG_05ECE"
    %endif
    times 3 - ($ - %%insn_05ece) db 0
    %%insn_05ed1:
    jmp 0x5ced ; 05ED1 E919FE
    %if ($ - %%insn_05ed1) > 3
        %error "LONG_05ED1"
    %endif
    times 3 - ($ - %%insn_05ed1) db 0
    %%insn_05ed4:
    ret ; 05ED4 C3
    %if ($ - %%insn_05ed4) > 1
        %error "LONG_05ED4"
    %endif
    times 1 - ($ - %%insn_05ed4) db 0
    %if ($ - %%fragment_start) != 13
        %error "SIZE_05EC8"
    %endif
%endmacro
