; Linear entry 054F9 (1000:54f9)
; Ghidra working symbol: FUN_1000_54f9
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_054f9_part_00 0
    %%fragment_start:
func_054f9:
    %%insn_054f9:
    cmp word [bp-0x30de],0x0 ; 054F9 83BE22CF00
    %if ($ - %%insn_054f9) > 5
        %error "LONG_054F9"
    %endif
    times 5 - ($ - %%insn_054f9) db 0
    %%insn_054fe:
    jz short 0x5501 ; 054FE 7401
    %if ($ - %%insn_054fe) > 2
        %error "LONG_054FE"
    %endif
    times 2 - ($ - %%insn_054fe) db 0
    %%insn_05500:
    ret ; 05500 C3
    %if ($ - %%insn_05500) > 1
        %error "LONG_05500"
    %endif
    times 1 - ($ - %%insn_05500) db 0
    %%insn_05501:
    pusha ; 05501 60
    %if ($ - %%insn_05501) > 1
        %error "LONG_05501"
    %endif
    times 1 - ($ - %%insn_05501) db 0
    %%insn_05502:
    mov es,word [bp-0x2aa8] ; 05502 8E8658D5
    %if ($ - %%insn_05502) > 4
        %error "LONG_05502"
    %endif
    times 4 - ($ - %%insn_05502) db 0
    db 0x32, 0xC0 ; 05506 32C0 | xor al,al | encoding preserved
    db 0x32, 0xE4 ; 05508 32E4 | xor ah,ah | encoding preserved
    %%insn_0550a:
    mov [bp-0x3076],al ; 0550A 88868ACF
    %if ($ - %%insn_0550a) > 4
        %error "LONG_0550A"
    %endif
    times 4 - ($ - %%insn_0550a) db 0
    %%insn_0550e:
    call word near [ss:0xd660] ; 0550E 36FF1660D6
    %if ($ - %%insn_0550e) > 5
        %error "LONG_0550E"
    %endif
    times 5 - ($ - %%insn_0550e) db 0
    %%insn_05513:
    mov di,0x2800 ; 05513 BF0028
    %if ($ - %%insn_05513) > 3
        %error "LONG_05513"
    %endif
    times 3 - ($ - %%insn_05513) db 0
    %%insn_05516:
    mov es,word [bp-0x2aa8] ; 05516 8E8658D5
    %if ($ - %%insn_05516) > 4
        %error "LONG_05516"
    %endif
    times 4 - ($ - %%insn_05516) db 0
    %%insn_0551a:
    mov cx,0x2800 ; 0551A B90028
    %if ($ - %%insn_0551a) > 3
        %error "LONG_0551A"
    %endif
    times 3 - ($ - %%insn_0551a) db 0
    db 0x33, 0xC0 ; 0551D 33C0 | xor ax,ax | encoding preserved
    %%insn_0551f:
    rep stosw ; 0551F F3AB
    %if ($ - %%insn_0551f) > 2
        %error "LONG_0551F"
    %endif
    times 2 - ($ - %%insn_0551f) db 0
    %%insn_05521:
    popa ; 05521 61
    %if ($ - %%insn_05521) > 1
        %error "LONG_05521"
    %endif
    times 1 - ($ - %%insn_05521) db 0
    %%insn_05522:
    ret ; 05522 C3
    %if ($ - %%insn_05522) > 1
        %error "LONG_05522"
    %endif
    times 1 - ($ - %%insn_05522) db 0
    %if ($ - %%fragment_start) != 42
        %error "SIZE_054F9"
    %endif
%endmacro
