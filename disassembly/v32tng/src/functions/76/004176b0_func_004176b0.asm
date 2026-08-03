; PE virtual entry 004176B0
; Ghidra working symbol: _strchr
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004176b0_part_00 0
    %%fragment_start:
    %%insn_004176a0:
    lea eax,[edx-0x1] ; 004176A0 8D42FF
    %if ($ - %%insn_004176a0) > 3
        %error "LONG_004176A0"
    %endif
    times 3 - ($ - %%insn_004176a0) db 0
    %%insn_004176a3:
    pop ebx ; 004176A3 5B
    %if ($ - %%insn_004176a3) > 1
        %error "LONG_004176A3"
    %endif
    times 1 - ($ - %%insn_004176a3) db 0
    %%insn_004176a4:
    ret ; 004176A4 C3
    %if ($ - %%insn_004176a4) > 1
        %error "LONG_004176A4"
    %endif
    times 1 - ($ - %%insn_004176a4) db 0
    %if ($ - %%fragment_start) != 5
        %error "function fragment size drift: 004176A0"
    %endif
%endmacro

%macro emit_func_004176b0_part_01 0
    %%fragment_start:
func_004176b0:
    db 0x33, 0xC0 ; 004176B0 33C0 | xor eax,eax | encoding preserved
    %%insn_004176b2:
    mov al,[esp+0x8] ; 004176B2 8A442408
    %if ($ - %%insn_004176b2) > 4
        %error "LONG_004176B2"
    %endif
    times 4 - ($ - %%insn_004176b2) db 0
    %%insn_004176b6:
    push ebx ; 004176B6 53
    %if ($ - %%insn_004176b6) > 1
        %error "LONG_004176B6"
    %endif
    times 1 - ($ - %%insn_004176b6) db 0
    db 0x8B, 0xD8 ; 004176B7 8BD8 | mov ebx,eax | encoding preserved
    %%insn_004176b9:
    shl eax,byte 0x8 ; 004176B9 C1E008
    %if ($ - %%insn_004176b9) > 3
        %error "LONG_004176B9"
    %endif
    times 3 - ($ - %%insn_004176b9) db 0
    %%insn_004176bc:
    mov edx,[esp+0x8] ; 004176BC 8B542408
    %if ($ - %%insn_004176bc) > 4
        %error "LONG_004176BC"
    %endif
    times 4 - ($ - %%insn_004176bc) db 0
    %%insn_004176c0:
    test edx,0x3 ; 004176C0 F7C203000000
    %if ($ - %%insn_004176c0) > 6
        %error "LONG_004176C0"
    %endif
    times 6 - ($ - %%insn_004176c0) db 0
    %%insn_004176c6:
    jz short 0x4176db ; 004176C6 7413
    %if ($ - %%insn_004176c6) > 2
        %error "LONG_004176C6"
    %endif
    times 2 - ($ - %%insn_004176c6) db 0
    %%insn_004176c8:
    mov cl,[edx] ; 004176C8 8A0A
    %if ($ - %%insn_004176c8) > 2
        %error "LONG_004176C8"
    %endif
    times 2 - ($ - %%insn_004176c8) db 0
    %%insn_004176ca:
    inc edx ; 004176CA 42
    %if ($ - %%insn_004176ca) > 1
        %error "LONG_004176CA"
    %endif
    times 1 - ($ - %%insn_004176ca) db 0
    %%insn_004176cb:
    cmp cl,bl ; 004176CB 38D9
    %if ($ - %%insn_004176cb) > 2
        %error "LONG_004176CB"
    %endif
    times 2 - ($ - %%insn_004176cb) db 0
    %%insn_004176cd:
    jz short 0x4176a0 ; 004176CD 74D1
    %if ($ - %%insn_004176cd) > 2
        %error "LONG_004176CD"
    %endif
    times 2 - ($ - %%insn_004176cd) db 0
    %%insn_004176cf:
    test cl,cl ; 004176CF 84C9
    %if ($ - %%insn_004176cf) > 2
        %error "LONG_004176CF"
    %endif
    times 2 - ($ - %%insn_004176cf) db 0
    %%insn_004176d1:
    jz short 0x417724 ; 004176D1 7451
    %if ($ - %%insn_004176d1) > 2
        %error "LONG_004176D1"
    %endif
    times 2 - ($ - %%insn_004176d1) db 0
    %%insn_004176d3:
    test edx,0x3 ; 004176D3 F7C203000000
    %if ($ - %%insn_004176d3) > 6
        %error "LONG_004176D3"
    %endif
    times 6 - ($ - %%insn_004176d3) db 0
    %%insn_004176d9:
    jnz short 0x4176c8 ; 004176D9 75ED
    %if ($ - %%insn_004176d9) > 2
        %error "LONG_004176D9"
    %endif
    times 2 - ($ - %%insn_004176d9) db 0
    db 0x0B, 0xD8 ; 004176DB 0BD8 | or ebx,eax | encoding preserved
    %%insn_004176dd:
    push edi ; 004176DD 57
    %if ($ - %%insn_004176dd) > 1
        %error "LONG_004176DD"
    %endif
    times 1 - ($ - %%insn_004176dd) db 0
    db 0x8B, 0xC3 ; 004176DE 8BC3 | mov eax,ebx | encoding preserved
    %%insn_004176e0:
    shl ebx,byte 0x10 ; 004176E0 C1E310
    %if ($ - %%insn_004176e0) > 3
        %error "LONG_004176E0"
    %endif
    times 3 - ($ - %%insn_004176e0) db 0
    %%insn_004176e3:
    push esi ; 004176E3 56
    %if ($ - %%insn_004176e3) > 1
        %error "LONG_004176E3"
    %endif
    times 1 - ($ - %%insn_004176e3) db 0
    db 0x0B, 0xD8 ; 004176E4 0BD8 | or ebx,eax | encoding preserved
    %%insn_004176e6:
    mov ecx,[edx] ; 004176E6 8B0A
    %if ($ - %%insn_004176e6) > 2
        %error "LONG_004176E6"
    %endif
    times 2 - ($ - %%insn_004176e6) db 0
    %%insn_004176e8:
    mov edi,0x7efefeff ; 004176E8 BFFFFEFE7E
    %if ($ - %%insn_004176e8) > 5
        %error "LONG_004176E8"
    %endif
    times 5 - ($ - %%insn_004176e8) db 0
    db 0x8B, 0xC1 ; 004176ED 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xF7 ; 004176EF 8BF7 | mov esi,edi | encoding preserved
    db 0x33, 0xCB ; 004176F1 33CB | xor ecx,ebx | encoding preserved
    db 0x03, 0xF0 ; 004176F3 03F0 | add esi,eax | encoding preserved
    db 0x03, 0xF9 ; 004176F5 03F9 | add edi,ecx | encoding preserved
    %%insn_004176f7:
    xor ecx,0xffffffffffffffff ; 004176F7 83F1FF
    %if ($ - %%insn_004176f7) > 3
        %error "LONG_004176F7"
    %endif
    times 3 - ($ - %%insn_004176f7) db 0
    %%insn_004176fa:
    xor eax,0xffffffffffffffff ; 004176FA 83F0FF
    %if ($ - %%insn_004176fa) > 3
        %error "LONG_004176FA"
    %endif
    times 3 - ($ - %%insn_004176fa) db 0
    db 0x33, 0xCF ; 004176FD 33CF | xor ecx,edi | encoding preserved
    db 0x33, 0xC6 ; 004176FF 33C6 | xor eax,esi | encoding preserved
    %%insn_00417701:
    add edx,0x4 ; 00417701 83C204
    %if ($ - %%insn_00417701) > 3
        %error "LONG_00417701"
    %endif
    times 3 - ($ - %%insn_00417701) db 0
    %%insn_00417704:
    and ecx,0x81010100 ; 00417704 81E100010181
    %if ($ - %%insn_00417704) > 6
        %error "LONG_00417704"
    %endif
    times 6 - ($ - %%insn_00417704) db 0
    %%insn_0041770a:
    jnz short 0x417728 ; 0041770A 751C
    %if ($ - %%insn_0041770a) > 2
        %error "LONG_0041770A"
    %endif
    times 2 - ($ - %%insn_0041770a) db 0
    %%insn_0041770c:
    and eax,0x81010100 ; 0041770C 2500010181
    %if ($ - %%insn_0041770c) > 5
        %error "LONG_0041770C"
    %endif
    times 5 - ($ - %%insn_0041770c) db 0
    %%insn_00417711:
    jz short 0x4176e6 ; 00417711 74D3
    %if ($ - %%insn_00417711) > 2
        %error "LONG_00417711"
    %endif
    times 2 - ($ - %%insn_00417711) db 0
    %%insn_00417713:
    and eax,0x1010100 ; 00417713 2500010101
    %if ($ - %%insn_00417713) > 5
        %error "LONG_00417713"
    %endif
    times 5 - ($ - %%insn_00417713) db 0
    %%insn_00417718:
    jnz short 0x417722 ; 00417718 7508
    %if ($ - %%insn_00417718) > 2
        %error "LONG_00417718"
    %endif
    times 2 - ($ - %%insn_00417718) db 0
    %%insn_0041771a:
    and esi,0x80000000 ; 0041771A 81E600000080
    %if ($ - %%insn_0041771a) > 6
        %error "LONG_0041771A"
    %endif
    times 6 - ($ - %%insn_0041771a) db 0
    %%insn_00417720:
    jnz short 0x4176e6 ; 00417720 75C4
    %if ($ - %%insn_00417720) > 2
        %error "LONG_00417720"
    %endif
    times 2 - ($ - %%insn_00417720) db 0
    %%insn_00417722:
    pop esi ; 00417722 5E
    %if ($ - %%insn_00417722) > 1
        %error "LONG_00417722"
    %endif
    times 1 - ($ - %%insn_00417722) db 0
    %%insn_00417723:
    pop edi ; 00417723 5F
    %if ($ - %%insn_00417723) > 1
        %error "LONG_00417723"
    %endif
    times 1 - ($ - %%insn_00417723) db 0
    %%insn_00417724:
    pop ebx ; 00417724 5B
    %if ($ - %%insn_00417724) > 1
        %error "LONG_00417724"
    %endif
    times 1 - ($ - %%insn_00417724) db 0
    db 0x33, 0xC0 ; 00417725 33C0 | xor eax,eax | encoding preserved
    %%insn_00417727:
    ret ; 00417727 C3
    %if ($ - %%insn_00417727) > 1
        %error "LONG_00417727"
    %endif
    times 1 - ($ - %%insn_00417727) db 0
    %%insn_00417728:
    mov eax,[edx-0x4] ; 00417728 8B42FC
    %if ($ - %%insn_00417728) > 3
        %error "LONG_00417728"
    %endif
    times 3 - ($ - %%insn_00417728) db 0
    %%insn_0041772b:
    cmp al,bl ; 0041772B 38D8
    %if ($ - %%insn_0041772b) > 2
        %error "LONG_0041772B"
    %endif
    times 2 - ($ - %%insn_0041772b) db 0
    %%insn_0041772d:
    jz short 0x417765 ; 0041772D 7436
    %if ($ - %%insn_0041772d) > 2
        %error "LONG_0041772D"
    %endif
    times 2 - ($ - %%insn_0041772d) db 0
    %%insn_0041772f:
    test al,al ; 0041772F 84C0
    %if ($ - %%insn_0041772f) > 2
        %error "LONG_0041772F"
    %endif
    times 2 - ($ - %%insn_0041772f) db 0
    %%insn_00417731:
    jz short 0x417722 ; 00417731 74EF
    %if ($ - %%insn_00417731) > 2
        %error "LONG_00417731"
    %endif
    times 2 - ($ - %%insn_00417731) db 0
    %%insn_00417733:
    cmp ah,bl ; 00417733 38DC
    %if ($ - %%insn_00417733) > 2
        %error "LONG_00417733"
    %endif
    times 2 - ($ - %%insn_00417733) db 0
    %%insn_00417735:
    jz short 0x41775e ; 00417735 7427
    %if ($ - %%insn_00417735) > 2
        %error "LONG_00417735"
    %endif
    times 2 - ($ - %%insn_00417735) db 0
    %%insn_00417737:
    test ah,ah ; 00417737 84E4
    %if ($ - %%insn_00417737) > 2
        %error "LONG_00417737"
    %endif
    times 2 - ($ - %%insn_00417737) db 0
    %%insn_00417739:
    jz short 0x417722 ; 00417739 74E7
    %if ($ - %%insn_00417739) > 2
        %error "LONG_00417739"
    %endif
    times 2 - ($ - %%insn_00417739) db 0
    %%insn_0041773b:
    shr eax,byte 0x10 ; 0041773B C1E810
    %if ($ - %%insn_0041773b) > 3
        %error "LONG_0041773B"
    %endif
    times 3 - ($ - %%insn_0041773b) db 0
    %%insn_0041773e:
    cmp al,bl ; 0041773E 38D8
    %if ($ - %%insn_0041773e) > 2
        %error "LONG_0041773E"
    %endif
    times 2 - ($ - %%insn_0041773e) db 0
    %%insn_00417740:
    jz short 0x417757 ; 00417740 7415
    %if ($ - %%insn_00417740) > 2
        %error "LONG_00417740"
    %endif
    times 2 - ($ - %%insn_00417740) db 0
    %%insn_00417742:
    test al,al ; 00417742 84C0
    %if ($ - %%insn_00417742) > 2
        %error "LONG_00417742"
    %endif
    times 2 - ($ - %%insn_00417742) db 0
    %%insn_00417744:
    jz short 0x417722 ; 00417744 74DC
    %if ($ - %%insn_00417744) > 2
        %error "LONG_00417744"
    %endif
    times 2 - ($ - %%insn_00417744) db 0
    %%insn_00417746:
    cmp ah,bl ; 00417746 38DC
    %if ($ - %%insn_00417746) > 2
        %error "LONG_00417746"
    %endif
    times 2 - ($ - %%insn_00417746) db 0
    %%insn_00417748:
    jz short 0x417750 ; 00417748 7406
    %if ($ - %%insn_00417748) > 2
        %error "LONG_00417748"
    %endif
    times 2 - ($ - %%insn_00417748) db 0
    %%insn_0041774a:
    test ah,ah ; 0041774A 84E4
    %if ($ - %%insn_0041774a) > 2
        %error "LONG_0041774A"
    %endif
    times 2 - ($ - %%insn_0041774a) db 0
    %%insn_0041774c:
    jz short 0x417722 ; 0041774C 74D4
    %if ($ - %%insn_0041774c) > 2
        %error "LONG_0041774C"
    %endif
    times 2 - ($ - %%insn_0041774c) db 0
    %%insn_0041774e:
    jmp short 0x4176e6 ; 0041774E EB96
    %if ($ - %%insn_0041774e) > 2
        %error "LONG_0041774E"
    %endif
    times 2 - ($ - %%insn_0041774e) db 0
    %%insn_00417750:
    pop esi ; 00417750 5E
    %if ($ - %%insn_00417750) > 1
        %error "LONG_00417750"
    %endif
    times 1 - ($ - %%insn_00417750) db 0
    %%insn_00417751:
    pop edi ; 00417751 5F
    %if ($ - %%insn_00417751) > 1
        %error "LONG_00417751"
    %endif
    times 1 - ($ - %%insn_00417751) db 0
    %%insn_00417752:
    lea eax,[edx-0x1] ; 00417752 8D42FF
    %if ($ - %%insn_00417752) > 3
        %error "LONG_00417752"
    %endif
    times 3 - ($ - %%insn_00417752) db 0
    %%insn_00417755:
    pop ebx ; 00417755 5B
    %if ($ - %%insn_00417755) > 1
        %error "LONG_00417755"
    %endif
    times 1 - ($ - %%insn_00417755) db 0
    %%insn_00417756:
    ret ; 00417756 C3
    %if ($ - %%insn_00417756) > 1
        %error "LONG_00417756"
    %endif
    times 1 - ($ - %%insn_00417756) db 0
    %%insn_00417757:
    lea eax,[edx-0x2] ; 00417757 8D42FE
    %if ($ - %%insn_00417757) > 3
        %error "LONG_00417757"
    %endif
    times 3 - ($ - %%insn_00417757) db 0
    %%insn_0041775a:
    pop esi ; 0041775A 5E
    %if ($ - %%insn_0041775a) > 1
        %error "LONG_0041775A"
    %endif
    times 1 - ($ - %%insn_0041775a) db 0
    %%insn_0041775b:
    pop edi ; 0041775B 5F
    %if ($ - %%insn_0041775b) > 1
        %error "LONG_0041775B"
    %endif
    times 1 - ($ - %%insn_0041775b) db 0
    %%insn_0041775c:
    pop ebx ; 0041775C 5B
    %if ($ - %%insn_0041775c) > 1
        %error "LONG_0041775C"
    %endif
    times 1 - ($ - %%insn_0041775c) db 0
    %%insn_0041775d:
    ret ; 0041775D C3
    %if ($ - %%insn_0041775d) > 1
        %error "LONG_0041775D"
    %endif
    times 1 - ($ - %%insn_0041775d) db 0
    %%insn_0041775e:
    lea eax,[edx-0x3] ; 0041775E 8D42FD
    %if ($ - %%insn_0041775e) > 3
        %error "LONG_0041775E"
    %endif
    times 3 - ($ - %%insn_0041775e) db 0
    %%insn_00417761:
    pop esi ; 00417761 5E
    %if ($ - %%insn_00417761) > 1
        %error "LONG_00417761"
    %endif
    times 1 - ($ - %%insn_00417761) db 0
    %%insn_00417762:
    pop edi ; 00417762 5F
    %if ($ - %%insn_00417762) > 1
        %error "LONG_00417762"
    %endif
    times 1 - ($ - %%insn_00417762) db 0
    %%insn_00417763:
    pop ebx ; 00417763 5B
    %if ($ - %%insn_00417763) > 1
        %error "LONG_00417763"
    %endif
    times 1 - ($ - %%insn_00417763) db 0
    %%insn_00417764:
    ret ; 00417764 C3
    %if ($ - %%insn_00417764) > 1
        %error "LONG_00417764"
    %endif
    times 1 - ($ - %%insn_00417764) db 0
    %%insn_00417765:
    lea eax,[edx-0x4] ; 00417765 8D42FC
    %if ($ - %%insn_00417765) > 3
        %error "LONG_00417765"
    %endif
    times 3 - ($ - %%insn_00417765) db 0
    %%insn_00417768:
    pop esi ; 00417768 5E
    %if ($ - %%insn_00417768) > 1
        %error "LONG_00417768"
    %endif
    times 1 - ($ - %%insn_00417768) db 0
    %%insn_00417769:
    pop edi ; 00417769 5F
    %if ($ - %%insn_00417769) > 1
        %error "LONG_00417769"
    %endif
    times 1 - ($ - %%insn_00417769) db 0
    %%insn_0041776a:
    pop ebx ; 0041776A 5B
    %if ($ - %%insn_0041776a) > 1
        %error "LONG_0041776A"
    %endif
    times 1 - ($ - %%insn_0041776a) db 0
    %%insn_0041776b:
    ret ; 0041776B C3
    %if ($ - %%insn_0041776b) > 1
        %error "LONG_0041776B"
    %endif
    times 1 - ($ - %%insn_0041776b) db 0
    %if ($ - %%fragment_start) != 188
        %error "function fragment size drift: 004176B0"
    %endif
%endmacro
