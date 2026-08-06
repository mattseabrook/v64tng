; Linear entry 04461 (1000:4461)
; Ghidra working symbol: FUN_1000_4461
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04461_part_00 0
    %%fragment_start:
func_04461:
    %%insn_04461:
    inc word [bp-0x21d9] ; 04461 FF8627DE
    %if ($ - %%insn_04461) > 4
        %error "LONG_04461"
    %endif
    times 4 - ($ - %%insn_04461) db 0
    %%insn_04465:
    mov ax,[bp-0x21d9] ; 04465 8B8627DE
    %if ($ - %%insn_04465) > 4
        %error "LONG_04465"
    %endif
    times 4 - ($ - %%insn_04465) db 0
    db 0x03, 0xC0 ; 04469 03C0 | add ax,ax | encoding preserved
    %%insn_0446b:
    mov di,0xde27 ; 0446B BF27DE
    %if ($ - %%insn_0446b) > 3
        %error "LONG_0446B"
    %endif
    times 3 - ($ - %%insn_0446b) db 0
    db 0x03, 0xF8 ; 0446E 03F8 | add di,ax | encoding preserved
    %%insn_04470:
    mov bx,[si] ; 04470 8B1C
    %if ($ - %%insn_04470) > 2
        %error "LONG_04470"
    %endif
    times 2 - ($ - %%insn_04470) db 0
    %%insn_04472:
    add si,0x2 ; 04472 83C602
    %if ($ - %%insn_04472) > 3
        %error "LONG_04472"
    %endif
    times 3 - ($ - %%insn_04472) db 0
    %%insn_04475:
    mov [ss:di],si ; 04475 368935
    %if ($ - %%insn_04475) > 3
        %error "LONG_04475"
    %endif
    times 3 - ($ - %%insn_04475) db 0
    db 0x8B, 0xF3 ; 04478 8BF3 | mov si,bx | encoding preserved
    %%insn_0447a:
    ret ; 0447A C3
    %if ($ - %%insn_0447a) > 1
        %error "LONG_0447A"
    %endif
    times 1 - ($ - %%insn_0447a) db 0
    %if ($ - %%fragment_start) != 26
        %error "SIZE_04461"
    %endif
%endmacro
