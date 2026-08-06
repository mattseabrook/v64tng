; Linear entry 079B6 (1702:0996)
; Ghidra working symbol: FUN_1702_0996
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_079b6_part_00 0
    %%fragment_start:
func_079b6:
    %%insn_079b6:
    push bp ; 079B6 55
    %if ($ - %%insn_079b6) > 1
        %error "LONG_079B6"
    %endif
    times 1 - ($ - %%insn_079b6) db 0
    db 0x8B, 0xEC ; 079B7 8BEC | mov bp,sp | encoding preserved
    %%insn_079b9:
    push ds ; 079B9 1E
    %if ($ - %%insn_079b9) > 1
        %error "LONG_079B9"
    %endif
    times 1 - ($ - %%insn_079b9) db 0
    %%insn_079ba:
    push si ; 079BA 56
    %if ($ - %%insn_079ba) > 1
        %error "LONG_079BA"
    %endif
    times 1 - ($ - %%insn_079ba) db 0
    %%insn_079bb:
    push di ; 079BB 57
    %if ($ - %%insn_079bb) > 1
        %error "LONG_079BB"
    %endif
    times 1 - ($ - %%insn_079bb) db 0
    %%insn_079bc:
    pushf ; 079BC 9C
    %if ($ - %%insn_079bc) > 1
        %error "LONG_079BC"
    %endif
    times 1 - ($ - %%insn_079bc) db 0
    %%insn_079bd:
    cli ; 079BD FA
    %if ($ - %%insn_079bd) > 1
        %error "LONG_079BD"
    %endif
    times 1 - ($ - %%insn_079bd) db 0
    %%insn_079be:
    push word [bp+0xa] ; 079BE FF760A
    %if ($ - %%insn_079be) > 3
        %error "LONG_079BE"
    %endif
    times 3 - ($ - %%insn_079be) db 0
    %%insn_079c1:
    push word [bp+0x8] ; 079C1 FF7608
    %if ($ - %%insn_079c1) > 3
        %error "LONG_079C1"
    %endif
    times 3 - ($ - %%insn_079c1) db 0
    %%insn_079c4:
    push ax ; 079C4 50
    %if ($ - %%insn_079c4) > 1
        %error "LONG_079C4"
    %endif
    times 1 - ($ - %%insn_079c4) db 0
    %%insn_079c5:
    push bp ; 079C5 55
    %if ($ - %%insn_079c5) > 1
        %error "LONG_079C5"
    %endif
    times 1 - ($ - %%insn_079c5) db 0
    db 0x8B, 0xEC ; 079C6 8BEC | mov bp,sp | encoding preserved
    %%insn_079c8:
    mov word [bp+0x2],0xf ; 079C8 C746020F00
    %if ($ - %%insn_079c8) > 5
        %error "LONG_079C8"
    %endif
    times 5 - ($ - %%insn_079c8) db 0
    %%insn_079cd:
    pop bp ; 079CD 5D
    %if ($ - %%insn_079cd) > 1
        %error "LONG_079CD"
    %endif
    times 1 - ($ - %%insn_079cd) db 0
    %%insn_079ce:
    push ax ; 079CE 50
    %if ($ - %%insn_079ce) > 1
        %error "LONG_079CE"
    %endif
    times 1 - ($ - %%insn_079ce) db 0
    %%insn_079cf:
    push bp ; 079CF 55
    %if ($ - %%insn_079cf) > 1
        %error "LONG_079CF"
    %endif
    times 1 - ($ - %%insn_079cf) db 0
    db 0x8B, 0xEC ; 079D0 8BEC | mov bp,sp | encoding preserved
    %%insn_079d2:
    mov word [bp+0x2],0x4240 ; 079D2 C746024042
    %if ($ - %%insn_079d2) > 5
        %error "LONG_079D2"
    %endif
    times 5 - ($ - %%insn_079d2) db 0
    %%insn_079d7:
    pop bp ; 079D7 5D
    %if ($ - %%insn_079d7) > 1
        %error "LONG_079D7"
    %endif
    times 1 - ($ - %%insn_079d7) db 0
    %%insn_079d8:
    push cs ; 079D8 0E
    %if ($ - %%insn_079d8) > 1
        %error "LONG_079D8"
    %endif
    times 1 - ($ - %%insn_079d8) db 0
    %%insn_079d9:
    call 0x7613 ; 079D9 E837FC
    %if ($ - %%insn_079d9) > 3
        %error "LONG_079D9"
    %endif
    times 3 - ($ - %%insn_079d9) db 0
    %%insn_079dc:
    add sp,0x8 ; 079DC 83C408
    %if ($ - %%insn_079dc) > 3
        %error "LONG_079DC"
    %endif
    times 3 - ($ - %%insn_079dc) db 0
    %%insn_079df:
    push dx ; 079DF 52
    %if ($ - %%insn_079df) > 1
        %error "LONG_079DF"
    %endif
    times 1 - ($ - %%insn_079df) db 0
    %%insn_079e0:
    push ax ; 079E0 50
    %if ($ - %%insn_079e0) > 1
        %error "LONG_079E0"
    %endif
    times 1 - ($ - %%insn_079e0) db 0
    %%insn_079e1:
    push word [bp+0x6] ; 079E1 FF7606
    %if ($ - %%insn_079e1) > 3
        %error "LONG_079E1"
    %endif
    times 3 - ($ - %%insn_079e1) db 0
    %%insn_079e4:
    push cs ; 079E4 0E
    %if ($ - %%insn_079e4) > 1
        %error "LONG_079E4"
    %endif
    times 1 - ($ - %%insn_079e4) db 0
    %%insn_079e5:
    call 0x7961 ; 079E5 E879FF
    %if ($ - %%insn_079e5) > 3
        %error "LONG_079E5"
    %endif
    times 3 - ($ - %%insn_079e5) db 0
    %%insn_079e8:
    add sp,0x6 ; 079E8 83C406
    %if ($ - %%insn_079e8) > 3
        %error "LONG_079E8"
    %endif
    times 3 - ($ - %%insn_079e8) db 0
    %%insn_079eb:
    db 0x80 ; 079EB 80
    %if ($ - %%insn_079eb) > 1
        %error "LONG_079EB"
    %endif
    times 1 - ($ - %%insn_079eb) db 0
    %if ($ - %%fragment_start) != 54
        %error "SIZE_079B6"
    %endif
%endmacro

%macro emit_func_079b6_part_01 0
    %%fragment_start:
    %%insn_079ed:
    add [0xfae8],cl ; 079ED 000EE8FA
    %if ($ - %%insn_079ed) > 4
        %error "LONG_079ED"
    %endif
    times 4 - ($ - %%insn_079ed) db 0
    %%insn_079f1:
    call word far [bx+0x5e] ; 079F1 FF5F5E
    %if ($ - %%insn_079f1) > 3
        %error "LONG_079F1"
    %endif
    times 3 - ($ - %%insn_079f1) db 0
    %%insn_079f4:
    pop ds ; 079F4 1F
    %if ($ - %%insn_079f4) > 1
        %error "LONG_079F4"
    %endif
    times 1 - ($ - %%insn_079f4) db 0
    %%insn_079f5:
    pop bp ; 079F5 5D
    %if ($ - %%insn_079f5) > 1
        %error "LONG_079F5"
    %endif
    times 1 - ($ - %%insn_079f5) db 0
    %%insn_079f6:
    retf ; 079F6 CB
    %if ($ - %%insn_079f6) > 1
        %error "LONG_079F6"
    %endif
    times 1 - ($ - %%insn_079f6) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_079ED"
    %endif
%endmacro
