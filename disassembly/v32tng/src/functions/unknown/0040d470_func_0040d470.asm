; PE virtual entry 0040D470
; Ghidra working symbol: _memset
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d470_part_00 0
    %%fragment_start:
func_0040d470:
    %%insn_0040d470:
    mov edx,[esp+0xc] ; 0040D470 8B54240C
    %if ($ - %%insn_0040d470) > 4
        %error "LONG_0040D470"
    %endif
    times 4 - ($ - %%insn_0040d470) db 0
    %%insn_0040d474:
    mov ecx,[esp+0x4] ; 0040D474 8B4C2404
    %if ($ - %%insn_0040d474) > 4
        %error "LONG_0040D474"
    %endif
    times 4 - ($ - %%insn_0040d474) db 0
    %%insn_0040d478:
    test edx,edx ; 0040D478 85D2
    %if ($ - %%insn_0040d478) > 2
        %error "LONG_0040D478"
    %endif
    times 2 - ($ - %%insn_0040d478) db 0
    %%insn_0040d47a:
    jz short 0x40d4c3 ; 0040D47A 7447
    %if ($ - %%insn_0040d47a) > 2
        %error "LONG_0040D47A"
    %endif
    times 2 - ($ - %%insn_0040d47a) db 0
    db 0x33, 0xC0 ; 0040D47C 33C0 | xor eax,eax | encoding preserved
    %%insn_0040d47e:
    mov al,[esp+0x8] ; 0040D47E 8A442408
    %if ($ - %%insn_0040d47e) > 4
        %error "LONG_0040D47E"
    %endif
    times 4 - ($ - %%insn_0040d47e) db 0
    %%insn_0040d482:
    push edi ; 0040D482 57
    %if ($ - %%insn_0040d482) > 1
        %error "LONG_0040D482"
    %endif
    times 1 - ($ - %%insn_0040d482) db 0
    db 0x8B, 0xF9 ; 0040D483 8BF9 | mov edi,ecx | encoding preserved
    %%insn_0040d485:
    cmp edx,0x4 ; 0040D485 83FA04
    %if ($ - %%insn_0040d485) > 3
        %error "LONG_0040D485"
    %endif
    times 3 - ($ - %%insn_0040d485) db 0
    %%insn_0040d488:
    jc short 0x40d4b7 ; 0040D488 722D
    %if ($ - %%insn_0040d488) > 2
        %error "LONG_0040D488"
    %endif
    times 2 - ($ - %%insn_0040d488) db 0
    %%insn_0040d48a:
    neg ecx ; 0040D48A F7D9
    %if ($ - %%insn_0040d48a) > 2
        %error "LONG_0040D48A"
    %endif
    times 2 - ($ - %%insn_0040d48a) db 0
    %%insn_0040d48c:
    and ecx,0x3 ; 0040D48C 83E103
    %if ($ - %%insn_0040d48c) > 3
        %error "LONG_0040D48C"
    %endif
    times 3 - ($ - %%insn_0040d48c) db 0
    %%insn_0040d48f:
    jz short 0x40d499 ; 0040D48F 7408
    %if ($ - %%insn_0040d48f) > 2
        %error "LONG_0040D48F"
    %endif
    times 2 - ($ - %%insn_0040d48f) db 0
    db 0x2B, 0xD1 ; 0040D491 2BD1 | sub edx,ecx | encoding preserved
    %%insn_0040d493:
    mov [edi],al ; 0040D493 8807
    %if ($ - %%insn_0040d493) > 2
        %error "LONG_0040D493"
    %endif
    times 2 - ($ - %%insn_0040d493) db 0
    %%insn_0040d495:
    inc edi ; 0040D495 47
    %if ($ - %%insn_0040d495) > 1
        %error "LONG_0040D495"
    %endif
    times 1 - ($ - %%insn_0040d495) db 0
    %%insn_0040d496:
    dec ecx ; 0040D496 49
    %if ($ - %%insn_0040d496) > 1
        %error "LONG_0040D496"
    %endif
    times 1 - ($ - %%insn_0040d496) db 0
    %%insn_0040d497:
    jnz short 0x40d493 ; 0040D497 75FA
    %if ($ - %%insn_0040d497) > 2
        %error "LONG_0040D497"
    %endif
    times 2 - ($ - %%insn_0040d497) db 0
    db 0x8B, 0xC8 ; 0040D499 8BC8 | mov ecx,eax | encoding preserved
    %%insn_0040d49b:
    shl eax,byte 0x8 ; 0040D49B C1E008
    %if ($ - %%insn_0040d49b) > 3
        %error "LONG_0040D49B"
    %endif
    times 3 - ($ - %%insn_0040d49b) db 0
    db 0x03, 0xC1 ; 0040D49E 03C1 | add eax,ecx | encoding preserved
    db 0x8B, 0xC8 ; 0040D4A0 8BC8 | mov ecx,eax | encoding preserved
    %%insn_0040d4a2:
    shl eax,byte 0x10 ; 0040D4A2 C1E010
    %if ($ - %%insn_0040d4a2) > 3
        %error "LONG_0040D4A2"
    %endif
    times 3 - ($ - %%insn_0040d4a2) db 0
    db 0x03, 0xC1 ; 0040D4A5 03C1 | add eax,ecx | encoding preserved
    db 0x8B, 0xCA ; 0040D4A7 8BCA | mov ecx,edx | encoding preserved
    %%insn_0040d4a9:
    and edx,0x3 ; 0040D4A9 83E203
    %if ($ - %%insn_0040d4a9) > 3
        %error "LONG_0040D4A9"
    %endif
    times 3 - ($ - %%insn_0040d4a9) db 0
    %%insn_0040d4ac:
    shr ecx,byte 0x2 ; 0040D4AC C1E902
    %if ($ - %%insn_0040d4ac) > 3
        %error "LONG_0040D4AC"
    %endif
    times 3 - ($ - %%insn_0040d4ac) db 0
    %%insn_0040d4af:
    jz short 0x40d4b7 ; 0040D4AF 7406
    %if ($ - %%insn_0040d4af) > 2
        %error "LONG_0040D4AF"
    %endif
    times 2 - ($ - %%insn_0040d4af) db 0
    %%insn_0040d4b1:
    rep stosd ; 0040D4B1 F3AB
    %if ($ - %%insn_0040d4b1) > 2
        %error "LONG_0040D4B1"
    %endif
    times 2 - ($ - %%insn_0040d4b1) db 0
    %%insn_0040d4b3:
    test edx,edx ; 0040D4B3 85D2
    %if ($ - %%insn_0040d4b3) > 2
        %error "LONG_0040D4B3"
    %endif
    times 2 - ($ - %%insn_0040d4b3) db 0
    %%insn_0040d4b5:
    jz short 0x40d4bd ; 0040D4B5 7406
    %if ($ - %%insn_0040d4b5) > 2
        %error "LONG_0040D4B5"
    %endif
    times 2 - ($ - %%insn_0040d4b5) db 0
    %%insn_0040d4b7:
    mov [edi],al ; 0040D4B7 8807
    %if ($ - %%insn_0040d4b7) > 2
        %error "LONG_0040D4B7"
    %endif
    times 2 - ($ - %%insn_0040d4b7) db 0
    %%insn_0040d4b9:
    inc edi ; 0040D4B9 47
    %if ($ - %%insn_0040d4b9) > 1
        %error "LONG_0040D4B9"
    %endif
    times 1 - ($ - %%insn_0040d4b9) db 0
    %%insn_0040d4ba:
    dec edx ; 0040D4BA 4A
    %if ($ - %%insn_0040d4ba) > 1
        %error "LONG_0040D4BA"
    %endif
    times 1 - ($ - %%insn_0040d4ba) db 0
    %%insn_0040d4bb:
    jnz short 0x40d4b7 ; 0040D4BB 75FA
    %if ($ - %%insn_0040d4bb) > 2
        %error "LONG_0040D4BB"
    %endif
    times 2 - ($ - %%insn_0040d4bb) db 0
    %%insn_0040d4bd:
    mov eax,[esp+0x8] ; 0040D4BD 8B442408
    %if ($ - %%insn_0040d4bd) > 4
        %error "LONG_0040D4BD"
    %endif
    times 4 - ($ - %%insn_0040d4bd) db 0
    %%insn_0040d4c1:
    pop edi ; 0040D4C1 5F
    %if ($ - %%insn_0040d4c1) > 1
        %error "LONG_0040D4C1"
    %endif
    times 1 - ($ - %%insn_0040d4c1) db 0
    %%insn_0040d4c2:
    ret ; 0040D4C2 C3
    %if ($ - %%insn_0040d4c2) > 1
        %error "LONG_0040D4C2"
    %endif
    times 1 - ($ - %%insn_0040d4c2) db 0
    %%insn_0040d4c3:
    mov eax,[esp+0x4] ; 0040D4C3 8B442404
    %if ($ - %%insn_0040d4c3) > 4
        %error "LONG_0040D4C3"
    %endif
    times 4 - ($ - %%insn_0040d4c3) db 0
    %%insn_0040d4c7:
    ret ; 0040D4C7 C3
    %if ($ - %%insn_0040d4c7) > 1
        %error "LONG_0040D4C7"
    %endif
    times 1 - ($ - %%insn_0040d4c7) db 0
    %if ($ - %%fragment_start) != 88
        %error "function fragment size drift: 0040D470"
    %endif
%endmacro
