; Linear entry 05EA9 (1000:5ea9)
; Ghidra working symbol: FUN_1000_5ea9
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05ea9_part_00 0
    %%fragment_start:
func_05ea9:
    %%insn_05ea9:
    jcxz short 0x5ec7 ; 05EA9 E31C
    %if ($ - %%insn_05ea9) > 2
        %error "LONG_05EA9"
    %endif
    times 2 - ($ - %%insn_05ea9) db 0
    db 0x8B, 0xC1 ; 05EAB 8BC1 | mov ax,cx | encoding preserved
    db 0x05, 0x0F, 0x00 ; 05EAD 050F00 | add ax,0xf | encoding preserved
    %%insn_05eb0:
    jc short 0x5ec7 ; 05EB0 7215
    %if ($ - %%insn_05eb0) > 2
        %error "LONG_05EB0"
    %endif
    times 2 - ($ - %%insn_05eb0) db 0
    %%insn_05eb2:
    and al,0xf0 ; 05EB2 24F0
    %if ($ - %%insn_05eb2) > 2
        %error "LONG_05EB2"
    %endif
    times 2 - ($ - %%insn_05eb2) db 0
    %%insn_05eb4:
    push bx ; 05EB4 53
    %if ($ - %%insn_05eb4) > 1
        %error "LONG_05EB4"
    %endif
    times 1 - ($ - %%insn_05eb4) db 0
    %%insn_05eb5:
    shr ax,byte 0x4 ; 05EB5 C1E804
    %if ($ - %%insn_05eb5) > 3
        %error "LONG_05EB5"
    %endif
    times 3 - ($ - %%insn_05eb5) db 0
    db 0x8B, 0xD8 ; 05EB8 8BD8 | mov bx,ax | encoding preserved
    %%insn_05eba:
    mov ah,0x48 ; 05EBA B448
    %if ($ - %%insn_05eba) > 2
        %error "LONG_05EBA"
    %endif
    times 2 - ($ - %%insn_05eba) db 0
    %%insn_05ebc:
    int byte 0x21 ; 05EBC CD21
    %if ($ - %%insn_05ebc) > 2
        %error "LONG_05EBC"
    %endif
    times 2 - ($ - %%insn_05ebc) db 0
    %%insn_05ebe:
    jnc short 0x5ec6 ; 05EBE 7306
    %if ($ - %%insn_05ebe) > 2
        %error "LONG_05EBE"
    %endif
    times 2 - ($ - %%insn_05ebe) db 0
    %%insn_05ec0:
    mov ax,0xadc ; 05EC0 B8DC0A
    %if ($ - %%insn_05ec0) > 3
        %error "LONG_05EC0"
    %endif
    times 3 - ($ - %%insn_05ec0) db 0
    %%insn_05ec3:
    jmp 0x5ced ; 05EC3 E927FE
    %if ($ - %%insn_05ec3) > 3
        %error "LONG_05EC3"
    %endif
    times 3 - ($ - %%insn_05ec3) db 0
    %%insn_05ec6:
    pop bx ; 05EC6 5B
    %if ($ - %%insn_05ec6) > 1
        %error "LONG_05EC6"
    %endif
    times 1 - ($ - %%insn_05ec6) db 0
    %%insn_05ec7:
    ret ; 05EC7 C3
    %if ($ - %%insn_05ec7) > 1
        %error "LONG_05EC7"
    %endif
    times 1 - ($ - %%insn_05ec7) db 0
    %if ($ - %%fragment_start) != 31
        %error "SIZE_05EA9"
    %endif
%endmacro
