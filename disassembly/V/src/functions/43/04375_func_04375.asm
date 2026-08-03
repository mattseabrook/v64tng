; Linear entry 04375 (1000:4375)
; Ghidra working symbol: FUN_1000_4375
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04375_part_00 0
    %%fragment_start:
func_04375:
    %%insn_04375:
    push es ; 04375 06
    %if ($ - %%insn_04375) > 1
        %error "LONG_04375"
    %endif
    times 1 - ($ - %%insn_04375) db 0
    %%insn_04376:
    cmp ah,0x80 ; 04376 80FC80
    %if ($ - %%insn_04376) > 3
        %error "LONG_04376"
    %endif
    times 3 - ($ - %%insn_04376) db 0
    %%insn_04379:
    jc short 0x4380 ; 04379 7205
    %if ($ - %%insn_04379) > 2
        %error "LONG_04379"
    %endif
    times 2 - ($ - %%insn_04379) db 0
    %%insn_0437b:
    mov byte [bp-0x2607],0xff ; 0437B C686F9D9FF
    %if ($ - %%insn_0437b) > 5
        %error "LONG_0437B"
    %endif
    times 5 - ($ - %%insn_0437b) db 0
    %%insn_04380:
    mov byte [bp-0x2606],0x1 ; 04380 C686FAD901
    %if ($ - %%insn_04380) > 5
        %error "LONG_04380"
    %endif
    times 5 - ($ - %%insn_04380) db 0
    %%insn_04385:
    mov word [bp-0x30d2],0x1 ; 04385 C7862ECF0100
    %if ($ - %%insn_04385) > 6
        %error "LONG_04385"
    %endif
    times 6 - ($ - %%insn_04385) db 0
    %%insn_0438b:
    call 0x4849 ; 0438B E8BB04
    %if ($ - %%insn_0438b) > 3
        %error "LONG_0438B"
    %endif
    times 3 - ($ - %%insn_0438b) db 0
    %%insn_0438e:
    push si ; 0438E 56
    %if ($ - %%insn_0438e) > 1
        %error "LONG_0438E"
    %endif
    times 1 - ($ - %%insn_0438e) db 0
    %%insn_0438f:
    call 0x378f ; 0438F E8FDF3
    %if ($ - %%insn_0438f) > 3
        %error "LONG_0438F"
    %endif
    times 3 - ($ - %%insn_0438f) db 0
    %%insn_04392:
    call 0x6fa9 ; 04392 E8142C
    %if ($ - %%insn_04392) > 3
        %error "LONG_04392"
    %endif
    times 3 - ($ - %%insn_04392) db 0
    %%insn_04395:
    cmp word [bp-0xcea],0x1 ; 04395 83BE16F301
    %if ($ - %%insn_04395) > 5
        %error "LONG_04395"
    %endif
    times 5 - ($ - %%insn_04395) db 0
    %%insn_0439a:
    jnz short 0x439f ; 0439A 7503
    %if ($ - %%insn_0439a) > 2
        %error "LONG_0439A"
    %endif
    times 2 - ($ - %%insn_0439a) db 0
    %%insn_0439c:
    call 0x388a ; 0439C E8EBF4
    %if ($ - %%insn_0439c) > 3
        %error "LONG_0439C"
    %endif
    times 3 - ($ - %%insn_0439c) db 0
    %%insn_0439f:
    call 0x89 ; 0439F E8E7BC
    %if ($ - %%insn_0439f) > 3
        %error "LONG_0439F"
    %endif
    times 3 - ($ - %%insn_0439f) db 0
    %%insn_043a2:
    call 0x3a5b ; 043A2 E8B6F6
    %if ($ - %%insn_043a2) > 3
        %error "LONG_043A2"
    %endif
    times 3 - ($ - %%insn_043a2) db 0
    %%insn_043a5:
    mov word [bp-0x2638],0x0 ; 043A5 C786C8D90000
    %if ($ - %%insn_043a5) > 6
        %error "LONG_043A5"
    %endif
    times 6 - ($ - %%insn_043a5) db 0
    %%insn_043ab:
    mov word [bp-0x2636],0x0 ; 043AB C786CAD90000
    %if ($ - %%insn_043ab) > 6
        %error "LONG_043AB"
    %endif
    times 6 - ($ - %%insn_043ab) db 0
    %%insn_043b1:
    mov byte [bp-0x2606],0x2 ; 043B1 C686FAD902
    %if ($ - %%insn_043b1) > 5
        %error "LONG_043B1"
    %endif
    times 5 - ($ - %%insn_043b1) db 0
    %%insn_043b6:
    mov byte [bp-0x2607],0x0 ; 043B6 C686F9D900
    %if ($ - %%insn_043b6) > 5
        %error "LONG_043B6"
    %endif
    times 5 - ($ - %%insn_043b6) db 0
    %%insn_043bb:
    mov word [bp-0x30d2],0x0 ; 043BB C7862ECF0000
    %if ($ - %%insn_043bb) > 6
        %error "LONG_043BB"
    %endif
    times 6 - ($ - %%insn_043bb) db 0
    %%insn_043c1:
    mov byte [bp-0x265b],0x0 ; 043C1 C686A5D900
    %if ($ - %%insn_043c1) > 5
        %error "LONG_043C1"
    %endif
    times 5 - ($ - %%insn_043c1) db 0
    %%insn_043c6:
    pop si ; 043C6 5E
    %if ($ - %%insn_043c6) > 1
        %error "LONG_043C6"
    %endif
    times 1 - ($ - %%insn_043c6) db 0
    %%insn_043c7:
    pop es ; 043C7 07
    %if ($ - %%insn_043c7) > 1
        %error "LONG_043C7"
    %endif
    times 1 - ($ - %%insn_043c7) db 0
    %%insn_043c8:
    ret ; 043C8 C3
    %if ($ - %%insn_043c8) > 1
        %error "LONG_043C8"
    %endif
    times 1 - ($ - %%insn_043c8) db 0
    %if ($ - %%fragment_start) != 84
        %error "SIZE_04375"
    %endif
%endmacro
