; PE virtual entry 00416590
; Ghidra working symbol: FUN_00416590
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00416590_part_00 0
    %%fragment_start:
func_00416590:
    %%insn_00416590:
    mov eax,[0x4211d8] ; 00416590 A1D8114200
    %if ($ - %%insn_00416590) > 5
        %error "LONG_00416590"
    %endif
    times 5 - ($ - %%insn_00416590) db 0
    %%insn_00416595:
    push ebx ; 00416595 53
    %if ($ - %%insn_00416595) > 1
        %error "LONG_00416595"
    %endif
    times 1 - ($ - %%insn_00416595) db 0
    %%insn_00416596:
    push ebp ; 00416596 55
    %if ($ - %%insn_00416596) > 1
        %error "LONG_00416596"
    %endif
    times 1 - ($ - %%insn_00416596) db 0
    %%insn_00416597:
    push esi ; 00416597 56
    %if ($ - %%insn_00416597) > 1
        %error "LONG_00416597"
    %endif
    times 1 - ($ - %%insn_00416597) db 0
    %%insn_00416598:
    push edi ; 00416598 57
    %if ($ - %%insn_00416598) > 1
        %error "LONG_00416598"
    %endif
    times 1 - ($ - %%insn_00416598) db 0
    db 0x33, 0xFF ; 00416599 33FF | xor edi,edi | encoding preserved
    %%insn_0041659b:
    test eax,eax ; 0041659B 85C0
    %if ($ - %%insn_0041659b) > 2
        %error "LONG_0041659B"
    %endif
    times 2 - ($ - %%insn_0041659b) db 0
    %%insn_0041659d:
    jz short 0x4165bb ; 0041659D 741C
    %if ($ - %%insn_0041659d) > 2
        %error "LONG_0041659D"
    %endif
    times 2 - ($ - %%insn_0041659d) db 0
    %%insn_0041659f:
    mov eax,[esp+0x20] ; 0041659F 8B442420
    %if ($ - %%insn_0041659f) > 4
        %error "LONG_0041659F"
    %endif
    times 4 - ($ - %%insn_0041659f) db 0
    %%insn_004165a3:
    mov ecx,[esp+0x1c] ; 004165A3 8B4C241C
    %if ($ - %%insn_004165a3) > 4
        %error "LONG_004165A3"
    %endif
    times 4 - ($ - %%insn_004165a3) db 0
    %%insn_004165a7:
    mov edx,[esp+0x14] ; 004165A7 8B542414
    %if ($ - %%insn_004165a7) > 4
        %error "LONG_004165A7"
    %endif
    times 4 - ($ - %%insn_004165a7) db 0
    %%insn_004165ab:
    push eax ; 004165AB 50
    %if ($ - %%insn_004165ab) > 1
        %error "LONG_004165AB"
    %endif
    times 1 - ($ - %%insn_004165ab) db 0
    %%insn_004165ac:
    push ecx ; 004165AC 51
    %if ($ - %%insn_004165ac) > 1
        %error "LONG_004165AC"
    %endif
    times 1 - ($ - %%insn_004165ac) db 0
    %%insn_004165ad:
    push edx ; 004165AD 52
    %if ($ - %%insn_004165ad) > 1
        %error "LONG_004165AD"
    %endif
    times 1 - ($ - %%insn_004165ad) db 0
    %%insn_004165ae:
    call 0x416630 ; 004165AE E87D000000
    %if ($ - %%insn_004165ae) > 5
        %error "LONG_004165AE"
    %endif
    times 5 - ($ - %%insn_004165ae) db 0
    %%insn_004165b3:
    add esp,0xc ; 004165B3 83C40C
    %if ($ - %%insn_004165b3) > 3
        %error "LONG_004165B3"
    %endif
    times 3 - ($ - %%insn_004165b3) db 0
    %%insn_004165b6:
    pop edi ; 004165B6 5F
    %if ($ - %%insn_004165b6) > 1
        %error "LONG_004165B6"
    %endif
    times 1 - ($ - %%insn_004165b6) db 0
    %%insn_004165b7:
    pop esi ; 004165B7 5E
    %if ($ - %%insn_004165b7) > 1
        %error "LONG_004165B7"
    %endif
    times 1 - ($ - %%insn_004165b7) db 0
    %%insn_004165b8:
    pop ebp ; 004165B8 5D
    %if ($ - %%insn_004165b8) > 1
        %error "LONG_004165B8"
    %endif
    times 1 - ($ - %%insn_004165b8) db 0
    %%insn_004165b9:
    pop ebx ; 004165B9 5B
    %if ($ - %%insn_004165b9) > 1
        %error "LONG_004165B9"
    %endif
    times 1 - ($ - %%insn_004165b9) db 0
    %%insn_004165ba:
    ret ; 004165BA C3
    %if ($ - %%insn_004165ba) > 1
        %error "LONG_004165BA"
    %endif
    times 1 - ($ - %%insn_004165ba) db 0
    %%insn_004165bb:
    mov eax,[esp+0x20] ; 004165BB 8B442420
    %if ($ - %%insn_004165bb) > 4
        %error "LONG_004165BB"
    %endif
    times 4 - ($ - %%insn_004165bb) db 0
    %%insn_004165bf:
    mov ecx,[esp+0x18] ; 004165BF 8B4C2418
    %if ($ - %%insn_004165bf) > 4
        %error "LONG_004165BF"
    %endif
    times 4 - ($ - %%insn_004165bf) db 0
    %%insn_004165c3:
    cmp ecx,[eax] ; 004165C3 3B08
    %if ($ - %%insn_004165c3) > 2
        %error "LONG_004165C3"
    %endif
    times 2 - ($ - %%insn_004165c3) db 0
    %%insn_004165c5:
    jnc short 0x416618 ; 004165C5 7351
    %if ($ - %%insn_004165c5) > 2
        %error "LONG_004165C5"
    %endif
    times 2 - ($ - %%insn_004165c5) db 0
    %%insn_004165c7:
    mov ebx,[esp+0x1c] ; 004165C7 8B5C241C
    %if ($ - %%insn_004165c7) > 4
        %error "LONG_004165C7"
    %endif
    times 4 - ($ - %%insn_004165c7) db 0
    %%insn_004165cb:
    dec ecx ; 004165CB 49
    %if ($ - %%insn_004165cb) > 1
        %error "LONG_004165CB"
    %endif
    times 1 - ($ - %%insn_004165cb) db 0
    %%insn_004165cc:
    lea edx,[ecx+0x1] ; 004165CC 8D5101
    %if ($ - %%insn_004165cc) > 3
        %error "LONG_004165CC"
    %endif
    times 3 - ($ - %%insn_004165cc) db 0
    %%insn_004165cf:
    test edx,edx ; 004165CF 85D2
    %if ($ - %%insn_004165cf) > 2
        %error "LONG_004165CF"
    %endif
    times 2 - ($ - %%insn_004165cf) db 0
    %%insn_004165d1:
    jz short 0x416607 ; 004165D1 7434
    %if ($ - %%insn_004165d1) > 2
        %error "LONG_004165D1"
    %endif
    times 2 - ($ - %%insn_004165d1) db 0
    %%insn_004165d3:
    mov esi,[esp+0x14] ; 004165D3 8B742414
    %if ($ - %%insn_004165d3) > 4
        %error "LONG_004165D3"
    %endif
    times 4 - ($ - %%insn_004165d3) db 0
    db 0x8B, 0xC6 ; 004165D7 8BC6 | mov eax,esi | encoding preserved
    %%insn_004165d9:
    mov ebp,0xa ; 004165D9 BD0A000000
    %if ($ - %%insn_004165d9) > 5
        %error "LONG_004165D9"
    %endif
    times 5 - ($ - %%insn_004165d9) db 0
    %%insn_004165de:
    cdq ; 004165DE 99
    %if ($ - %%insn_004165de) > 1
        %error "LONG_004165DE"
    %endif
    times 1 - ($ - %%insn_004165de) db 0
    %%insn_004165df:
    idiv ebp ; 004165DF F7FD
    %if ($ - %%insn_004165df) > 2
        %error "LONG_004165DF"
    %endif
    times 2 - ($ - %%insn_004165df) db 0
    %%insn_004165e1:
    mov eax,[ebx] ; 004165E1 8B03
    %if ($ - %%insn_004165e1) > 2
        %error "LONG_004165E1"
    %endif
    times 2 - ($ - %%insn_004165e1) db 0
    %%insn_004165e3:
    add dl,0x30 ; 004165E3 80C230
    %if ($ - %%insn_004165e3) > 3
        %error "LONG_004165E3"
    %endif
    times 3 - ($ - %%insn_004165e3) db 0
    %%insn_004165e6:
    mov [eax+ecx],dl ; 004165E6 881408
    %if ($ - %%insn_004165e6) > 3
        %error "LONG_004165E6"
    %endif
    times 3 - ($ - %%insn_004165e6) db 0
    %%insn_004165e9:
    mov eax,0x66666667 ; 004165E9 B867666666
    %if ($ - %%insn_004165e9) > 5
        %error "LONG_004165E9"
    %endif
    times 5 - ($ - %%insn_004165e9) db 0
    %%insn_004165ee:
    imul esi ; 004165EE F7EE
    %if ($ - %%insn_004165ee) > 2
        %error "LONG_004165EE"
    %endif
    times 2 - ($ - %%insn_004165ee) db 0
    %%insn_004165f0:
    sar edx,byte 0x2 ; 004165F0 C1FA02
    %if ($ - %%insn_004165f0) > 3
        %error "LONG_004165F0"
    %endif
    times 3 - ($ - %%insn_004165f0) db 0
    db 0x8B, 0xC2 ; 004165F3 8BC2 | mov eax,edx | encoding preserved
    %%insn_004165f5:
    shr eax,byte 0x1f ; 004165F5 C1E81F
    %if ($ - %%insn_004165f5) > 3
        %error "LONG_004165F5"
    %endif
    times 3 - ($ - %%insn_004165f5) db 0
    db 0x03, 0xD0 ; 004165F8 03D0 | add edx,eax | encoding preserved
    %%insn_004165fa:
    inc edi ; 004165FA 47
    %if ($ - %%insn_004165fa) > 1
        %error "LONG_004165FA"
    %endif
    times 1 - ($ - %%insn_004165fa) db 0
    %%insn_004165fb:
    dec ecx ; 004165FB 49
    %if ($ - %%insn_004165fb) > 1
        %error "LONG_004165FB"
    %endif
    times 1 - ($ - %%insn_004165fb) db 0
    db 0x8B, 0xF2 ; 004165FC 8BF2 | mov esi,edx | encoding preserved
    %%insn_004165fe:
    cmp ecx,0xffffffffffffffff ; 004165FE 83F9FF
    %if ($ - %%insn_004165fe) > 3
        %error "LONG_004165FE"
    %endif
    times 3 - ($ - %%insn_004165fe) db 0
    %%insn_00416601:
    jnz short 0x4165d7 ; 00416601 75D4
    %if ($ - %%insn_00416601) > 2
        %error "LONG_00416601"
    %endif
    times 2 - ($ - %%insn_00416601) db 0
    %%insn_00416603:
    mov eax,[esp+0x20] ; 00416603 8B442420
    %if ($ - %%insn_00416603) > 4
        %error "LONG_00416603"
    %endif
    times 4 - ($ - %%insn_00416603) db 0
    %%insn_00416607:
    mov edx,[ebx] ; 00416607 8B13
    %if ($ - %%insn_00416607) > 2
        %error "LONG_00416607"
    %endif
    times 2 - ($ - %%insn_00416607) db 0
    db 0x03, 0xD7 ; 00416609 03D7 | add edx,edi | encoding preserved
    %%insn_0041660b:
    mov [ebx],edx ; 0041660B 8913
    %if ($ - %%insn_0041660b) > 2
        %error "LONG_0041660B"
    %endif
    times 2 - ($ - %%insn_0041660b) db 0
    %%insn_0041660d:
    mov ecx,[eax] ; 0041660D 8B08
    %if ($ - %%insn_0041660d) > 2
        %error "LONG_0041660D"
    %endif
    times 2 - ($ - %%insn_0041660d) db 0
    db 0x2B, 0xCF ; 0041660F 2BCF | sub ecx,edi | encoding preserved
    %%insn_00416611:
    mov [eax],ecx ; 00416611 8908
    %if ($ - %%insn_00416611) > 2
        %error "LONG_00416611"
    %endif
    times 2 - ($ - %%insn_00416611) db 0
    %%insn_00416613:
    pop edi ; 00416613 5F
    %if ($ - %%insn_00416613) > 1
        %error "LONG_00416613"
    %endif
    times 1 - ($ - %%insn_00416613) db 0
    %%insn_00416614:
    pop esi ; 00416614 5E
    %if ($ - %%insn_00416614) > 1
        %error "LONG_00416614"
    %endif
    times 1 - ($ - %%insn_00416614) db 0
    %%insn_00416615:
    pop ebp ; 00416615 5D
    %if ($ - %%insn_00416615) > 1
        %error "LONG_00416615"
    %endif
    times 1 - ($ - %%insn_00416615) db 0
    %%insn_00416616:
    pop ebx ; 00416616 5B
    %if ($ - %%insn_00416616) > 1
        %error "LONG_00416616"
    %endif
    times 1 - ($ - %%insn_00416616) db 0
    %%insn_00416617:
    ret ; 00416617 C3
    %if ($ - %%insn_00416617) > 1
        %error "LONG_00416617"
    %endif
    times 1 - ($ - %%insn_00416617) db 0
    %%insn_00416618:
    pop edi ; 00416618 5F
    %if ($ - %%insn_00416618) > 1
        %error "LONG_00416618"
    %endif
    times 1 - ($ - %%insn_00416618) db 0
    %%insn_00416619:
    pop esi ; 00416619 5E
    %if ($ - %%insn_00416619) > 1
        %error "LONG_00416619"
    %endif
    times 1 - ($ - %%insn_00416619) db 0
    %%insn_0041661a:
    pop ebp ; 0041661A 5D
    %if ($ - %%insn_0041661a) > 1
        %error "LONG_0041661A"
    %endif
    times 1 - ($ - %%insn_0041661a) db 0
    %%insn_0041661b:
    mov dword [eax],0x0 ; 0041661B C70000000000
    %if ($ - %%insn_0041661b) > 6
        %error "LONG_0041661B"
    %endif
    times 6 - ($ - %%insn_0041661b) db 0
    %%insn_00416621:
    pop ebx ; 00416621 5B
    %if ($ - %%insn_00416621) > 1
        %error "LONG_00416621"
    %endif
    times 1 - ($ - %%insn_00416621) db 0
    %%insn_00416622:
    ret ; 00416622 C3
    %if ($ - %%insn_00416622) > 1
        %error "LONG_00416622"
    %endif
    times 1 - ($ - %%insn_00416622) db 0
    %if ($ - %%fragment_start) != 147
        %error "function fragment size drift: 00416590"
    %endif
%endmacro
