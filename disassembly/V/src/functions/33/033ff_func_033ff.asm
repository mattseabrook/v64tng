; Linear entry 033FF (1000:33ff)
; Ghidra working symbol: FUN_1000_33ff
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_033ff_part_00 0
    %%fragment_start:
func_033ff:
    %%insn_033ff:
    mov di,0xb800 ; 033FF BF00B8
    %if ($ - %%insn_033ff) > 3
        %error "LONG_033FF"
    %endif
    times 3 - ($ - %%insn_033ff) db 0
    %%insn_03402:
    mov es,di ; 03402 8EC7
    %if ($ - %%insn_03402) > 2
        %error "LONG_03402"
    %endif
    times 2 - ($ - %%insn_03402) db 0
    db 0x33, 0xFF ; 03404 33FF | xor di,di | encoding preserved
    %%insn_03406:
    mov bx,0x1234 ; 03406 BB3412
    %if ($ - %%insn_03406) > 3
        %error "LONG_03406"
    %endif
    times 3 - ($ - %%insn_03406) db 0
    %%insn_03409:
    call 0x341a ; 03409 E80E00
    %if ($ - %%insn_03409) > 3
        %error "LONG_03409"
    %endif
    times 3 - ($ - %%insn_03409) db 0
    %%insn_0340c:
    jnz short 0x3418 ; 0340C 750A
    %if ($ - %%insn_0340c) > 2
        %error "LONG_0340C"
    %endif
    times 2 - ($ - %%insn_0340c) db 0
    %%insn_0340e:
    mov bx,0x4321 ; 0340E BB2143
    %if ($ - %%insn_0340e) > 3
        %error "LONG_0340E"
    %endif
    times 3 - ($ - %%insn_0340e) db 0
    %%insn_03411:
    call 0x341a ; 03411 E80600
    %if ($ - %%insn_03411) > 3
        %error "LONG_03411"
    %endif
    times 3 - ($ - %%insn_03411) db 0
    %%insn_03414:
    jnz short 0x3418 ; 03414 7502
    %if ($ - %%insn_03414) > 2
        %error "LONG_03414"
    %endif
    times 2 - ($ - %%insn_03414) db 0
    %%insn_03416:
    clc ; 03416 F8
    %if ($ - %%insn_03416) > 1
        %error "LONG_03416"
    %endif
    times 1 - ($ - %%insn_03416) db 0
    %%insn_03417:
    ret ; 03417 C3
    %if ($ - %%insn_03417) > 1
        %error "LONG_03417"
    %endif
    times 1 - ($ - %%insn_03417) db 0
    %%insn_03418:
    stc ; 03418 F9
    %if ($ - %%insn_03418) > 1
        %error "LONG_03418"
    %endif
    times 1 - ($ - %%insn_03418) db 0
    %%insn_03419:
    ret ; 03419 C3
    %if ($ - %%insn_03419) > 1
        %error "LONG_03419"
    %endif
    times 1 - ($ - %%insn_03419) db 0
    %if ($ - %%fragment_start) != 27
        %error "SIZE_033FF"
    %endif
%endmacro
