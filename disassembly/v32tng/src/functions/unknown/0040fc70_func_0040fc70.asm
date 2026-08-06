; PE virtual entry 0040FC70
; Ghidra working symbol: FUN_0040fc70
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040fc70_part_00 0
    %%fragment_start:
func_0040fc70:
    %%insn_0040fc70:
    mov ecx,[esp+0x8] ; 0040FC70 8B4C2408
    %if ($ - %%insn_0040fc70) > 4
        %error "LONG_0040FC70"
    %endif
    times 4 - ($ - %%insn_0040fc70) db 0
    %%insn_0040fc74:
    push ebx ; 0040FC74 53
    %if ($ - %%insn_0040fc74) > 1
        %error "LONG_0040FC74"
    %endif
    times 1 - ($ - %%insn_0040fc74) db 0
    %%insn_0040fc75:
    push ebp ; 0040FC75 55
    %if ($ - %%insn_0040fc75) > 1
        %error "LONG_0040FC75"
    %endif
    times 1 - ($ - %%insn_0040fc75) db 0
    %%insn_0040fc76:
    push esi ; 0040FC76 56
    %if ($ - %%insn_0040fc76) > 1
        %error "LONG_0040FC76"
    %endif
    times 1 - ($ - %%insn_0040fc76) db 0
    %%insn_0040fc77:
    mov al,[ecx] ; 0040FC77 8A01
    %if ($ - %%insn_0040fc77) > 2
        %error "LONG_0040FC77"
    %endif
    times 2 - ($ - %%insn_0040fc77) db 0
    db 0x33, 0xD2 ; 0040FC79 33D2 | xor edx,edx | encoding preserved
    db 0x33, 0xED ; 0040FC7B 33ED | xor ebp,ebp | encoding preserved
    %%insn_0040fc7d:
    push edi ; 0040FC7D 57
    %if ($ - %%insn_0040fc7d) > 1
        %error "LONG_0040FC7D"
    %endif
    times 1 - ($ - %%insn_0040fc7d) db 0
    %%insn_0040fc7e:
    mov edi,[0x421178] ; 0040FC7E 8B3D78114200
    %if ($ - %%insn_0040fc7e) > 6
        %error "LONG_0040FC7E"
    %endif
    times 6 - ($ - %%insn_0040fc7e) db 0
    %%insn_0040fc84:
    cmp al,0x61 ; 0040FC84 3C61
    %if ($ - %%insn_0040fc84) > 2
        %error "LONG_0040FC84"
    %endif
    times 2 - ($ - %%insn_0040fc84) db 0
    %%insn_0040fc86:
    jz short 0x40fca5 ; 0040FC86 741D
    %if ($ - %%insn_0040fc86) > 2
        %error "LONG_0040FC86"
    %endif
    times 2 - ($ - %%insn_0040fc86) db 0
    %%insn_0040fc88:
    cmp al,0x72 ; 0040FC88 3C72
    %if ($ - %%insn_0040fc88) > 2
        %error "LONG_0040FC88"
    %endif
    times 2 - ($ - %%insn_0040fc88) db 0
    %%insn_0040fc8a:
    jz short 0x40fc9e ; 0040FC8A 7412
    %if ($ - %%insn_0040fc8a) > 2
        %error "LONG_0040FC8A"
    %endif
    times 2 - ($ - %%insn_0040fc8a) db 0
    %%insn_0040fc8c:
    cmp al,0x77 ; 0040FC8C 3C77
    %if ($ - %%insn_0040fc8c) > 2
        %error "LONG_0040FC8C"
    %endif
    times 2 - ($ - %%insn_0040fc8c) db 0
    %%insn_0040fc8e:
    jz short 0x40fc97 ; 0040FC8E 7407
    %if ($ - %%insn_0040fc8e) > 2
        %error "LONG_0040FC8E"
    %endif
    times 2 - ($ - %%insn_0040fc8e) db 0
    db 0x33, 0xC0 ; 0040FC90 33C0 | xor eax,eax | encoding preserved
    %%insn_0040fc92:
    pop edi ; 0040FC92 5F
    %if ($ - %%insn_0040fc92) > 1
        %error "LONG_0040FC92"
    %endif
    times 1 - ($ - %%insn_0040fc92) db 0
    %%insn_0040fc93:
    pop esi ; 0040FC93 5E
    %if ($ - %%insn_0040fc93) > 1
        %error "LONG_0040FC93"
    %endif
    times 1 - ($ - %%insn_0040fc93) db 0
    %%insn_0040fc94:
    pop ebp ; 0040FC94 5D
    %if ($ - %%insn_0040fc94) > 1
        %error "LONG_0040FC94"
    %endif
    times 1 - ($ - %%insn_0040fc94) db 0
    %%insn_0040fc95:
    pop ebx ; 0040FC95 5B
    %if ($ - %%insn_0040fc95) > 1
        %error "LONG_0040FC95"
    %endif
    times 1 - ($ - %%insn_0040fc95) db 0
    %%insn_0040fc96:
    ret ; 0040FC96 C3
    %if ($ - %%insn_0040fc96) > 1
        %error "LONG_0040FC96"
    %endif
    times 1 - ($ - %%insn_0040fc96) db 0
    %%insn_0040fc97:
    mov eax,0x301 ; 0040FC97 B801030000
    %if ($ - %%insn_0040fc97) > 5
        %error "LONG_0040FC97"
    %endif
    times 5 - ($ - %%insn_0040fc97) db 0
    %%insn_0040fc9c:
    jmp short 0x40fcaa ; 0040FC9C EB0C
    %if ($ - %%insn_0040fc9c) > 2
        %error "LONG_0040FC9C"
    %endif
    times 2 - ($ - %%insn_0040fc9c) db 0
    db 0x33, 0xC0 ; 0040FC9E 33C0 | xor eax,eax | encoding preserved
    %%insn_0040fca0:
    or edi,0x1 ; 0040FCA0 83CF01
    %if ($ - %%insn_0040fca0) > 3
        %error "LONG_0040FCA0"
    %endif
    times 3 - ($ - %%insn_0040fca0) db 0
    %%insn_0040fca3:
    jmp short 0x40fcad ; 0040FCA3 EB08
    %if ($ - %%insn_0040fca3) > 2
        %error "LONG_0040FCA3"
    %endif
    times 2 - ($ - %%insn_0040fca3) db 0
    %%insn_0040fca5:
    mov eax,0x109 ; 0040FCA5 B809010000
    %if ($ - %%insn_0040fca5) > 5
        %error "LONG_0040FCA5"
    %endif
    times 5 - ($ - %%insn_0040fca5) db 0
    %%insn_0040fcaa:
    or edi,0x2 ; 0040FCAA 83CF02
    %if ($ - %%insn_0040fcaa) > 3
        %error "LONG_0040FCAA"
    %endif
    times 3 - ($ - %%insn_0040fcaa) db 0
    %%insn_0040fcad:
    inc ecx ; 0040FCAD 41
    %if ($ - %%insn_0040fcad) > 1
        %error "LONG_0040FCAD"
    %endif
    times 1 - ($ - %%insn_0040fcad) db 0
    %%insn_0040fcae:
    mov esi,0x1 ; 0040FCAE BE01000000
    %if ($ - %%insn_0040fcae) > 5
        %error "LONG_0040FCAE"
    %endif
    times 5 - ($ - %%insn_0040fcae) db 0
    %%insn_0040fcb3:
    mov [esp+0x18],ecx ; 0040FCB3 894C2418
    %if ($ - %%insn_0040fcb3) > 4
        %error "LONG_0040FCB3"
    %endif
    times 4 - ($ - %%insn_0040fcb3) db 0
    %%insn_0040fcb7:
    mov cl,[ecx] ; 0040FCB7 8A09
    %if ($ - %%insn_0040fcb7) > 2
        %error "LONG_0040FCB7"
    %endif
    times 2 - ($ - %%insn_0040fcb7) db 0
    %%insn_0040fcb9:
    test cl,cl ; 0040FCB9 84C9
    %if ($ - %%insn_0040fcb9) > 2
        %error "LONG_0040FCB9"
    %endif
    times 2 - ($ - %%insn_0040fcb9) db 0
    %%insn_0040fcbb:
    jz 0x40fd71 ; 0040FCBB 0F84B0000000
    %if ($ - %%insn_0040fcbb) > 6
        %error "LONG_0040FCBB"
    %endif
    times 6 - ($ - %%insn_0040fcbb) db 0
    %%insn_0040fcc1:
    test esi,esi ; 0040FCC1 85F6
    %if ($ - %%insn_0040fcc1) > 2
        %error "LONG_0040FCC1"
    %endif
    times 2 - ($ - %%insn_0040fcc1) db 0
    %%insn_0040fcc3:
    jz 0x40fd71 ; 0040FCC3 0F84A8000000
    %if ($ - %%insn_0040fcc3) > 6
        %error "LONG_0040FCC3"
    %endif
    times 6 - ($ - %%insn_0040fcc3) db 0
    %%insn_0040fcc9:
    movsx ecx,cl ; 0040FCC9 0FBEC9
    %if ($ - %%insn_0040fcc9) > 3
        %error "LONG_0040FCC9"
    %endif
    times 3 - ($ - %%insn_0040fcc9) db 0
    %%insn_0040fccc:
    add ecx,0xffffffffffffffd5 ; 0040FCCC 83C1D5
    %if ($ - %%insn_0040fccc) > 3
        %error "LONG_0040FCCC"
    %endif
    times 3 - ($ - %%insn_0040fccc) db 0
    %%insn_0040fccf:
    cmp ecx,0x49 ; 0040FCCF 83F949
    %if ($ - %%insn_0040fccf) > 3
        %error "LONG_0040FCCF"
    %endif
    times 3 - ($ - %%insn_0040fccf) db 0
    %%insn_0040fcd2:
    ja 0x40fd5c ; 0040FCD2 0F8784000000
    %if ($ - %%insn_0040fcd2) > 6
        %error "LONG_0040FCD2"
    %endif
    times 6 - ($ - %%insn_0040fcd2) db 0
    db 0x33, 0xDB ; 0040FCD8 33DB | xor ebx,ebx | encoding preserved
    %%insn_0040fcda:
    mov bl,[ecx+0x40fdf4] ; 0040FCDA 8A99F4FD4000
    %if ($ - %%insn_0040fcda) > 6
        %error "LONG_0040FCDA"
    %endif
    times 6 - ($ - %%insn_0040fcda) db 0
    %%insn_0040fce0:
    jmp dword near [ebx*4+0x40fdcc] ; 0040FCE0 FF249DCCFD4000
    %if ($ - %%insn_0040fce0) > 7
        %error "LONG_0040FCE0"
    %endif
    times 7 - ($ - %%insn_0040fce0) db 0
    %%insn_0040fce7:
    test al,0x2 ; 0040FCE7 A802
    %if ($ - %%insn_0040fce7) > 2
        %error "LONG_0040FCE7"
    %endif
    times 2 - ($ - %%insn_0040fce7) db 0
    %%insn_0040fce9:
    jnz short 0x40fd5c ; 0040FCE9 7571
    %if ($ - %%insn_0040fce9) > 2
        %error "LONG_0040FCE9"
    %endif
    times 2 - ($ - %%insn_0040fce9) db 0
    %%insn_0040fceb:
    and al,0xfe ; 0040FCEB 24FE
    %if ($ - %%insn_0040fceb) > 2
        %error "LONG_0040FCEB"
    %endif
    times 2 - ($ - %%insn_0040fceb) db 0
    %%insn_0040fced:
    and edi,0xfffffffffffffffc ; 0040FCED 83E7FC
    %if ($ - %%insn_0040fced) > 3
        %error "LONG_0040FCED"
    %endif
    times 3 - ($ - %%insn_0040fced) db 0
    %%insn_0040fcf0:
    or al,0x2 ; 0040FCF0 0C02
    %if ($ - %%insn_0040fcf0) > 2
        %error "LONG_0040FCF0"
    %endif
    times 2 - ($ - %%insn_0040fcf0) db 0
    %%insn_0040fcf2:
    or edi,0x80 ; 0040FCF2 81CF80000000
    %if ($ - %%insn_0040fcf2) > 6
        %error "LONG_0040FCF2"
    %endif
    times 6 - ($ - %%insn_0040fcf2) db 0
    %%insn_0040fcf8:
    jmp short 0x40fd5e ; 0040FCF8 EB64
    %if ($ - %%insn_0040fcf8) > 2
        %error "LONG_0040FCF8"
    %endif
    times 2 - ($ - %%insn_0040fcf8) db 0
    %%insn_0040fcfa:
    test ah,0xc0 ; 0040FCFA F6C4C0
    %if ($ - %%insn_0040fcfa) > 3
        %error "LONG_0040FCFA"
    %endif
    times 3 - ($ - %%insn_0040fcfa) db 0
    %%insn_0040fcfd:
    jnz short 0x40fd5c ; 0040FCFD 755D
    %if ($ - %%insn_0040fcfd) > 2
        %error "LONG_0040FCFD"
    %endif
    times 2 - ($ - %%insn_0040fcfd) db 0
    %%insn_0040fcff:
    or ah,0x80 ; 0040FCFF 80CC80
    %if ($ - %%insn_0040fcff) > 3
        %error "LONG_0040FCFF"
    %endif
    times 3 - ($ - %%insn_0040fcff) db 0
    %%insn_0040fd02:
    jmp short 0x40fd5e ; 0040FD02 EB5A
    %if ($ - %%insn_0040fd02) > 2
        %error "LONG_0040FD02"
    %endif
    times 2 - ($ - %%insn_0040fd02) db 0
    %%insn_0040fd04:
    test ah,0xc0 ; 0040FD04 F6C4C0
    %if ($ - %%insn_0040fd04) > 3
        %error "LONG_0040FD04"
    %endif
    times 3 - ($ - %%insn_0040fd04) db 0
    %%insn_0040fd07:
    jnz short 0x40fd5c ; 0040FD07 7553
    %if ($ - %%insn_0040fd07) > 2
        %error "LONG_0040FD07"
    %endif
    times 2 - ($ - %%insn_0040fd07) db 0
    %%insn_0040fd09:
    or ah,0x40 ; 0040FD09 80CC40
    %if ($ - %%insn_0040fd09) > 3
        %error "LONG_0040FD09"
    %endif
    times 3 - ($ - %%insn_0040fd09) db 0
    %%insn_0040fd0c:
    jmp short 0x40fd5e ; 0040FD0C EB50
    %if ($ - %%insn_0040fd0c) > 2
        %error "LONG_0040FD0C"
    %endif
    times 2 - ($ - %%insn_0040fd0c) db 0
    %%insn_0040fd0e:
    test edx,edx ; 0040FD0E 85D2
    %if ($ - %%insn_0040fd0e) > 2
        %error "LONG_0040FD0E"
    %endif
    times 2 - ($ - %%insn_0040fd0e) db 0
    %%insn_0040fd10:
    jnz short 0x40fd5c ; 0040FD10 754A
    %if ($ - %%insn_0040fd10) > 2
        %error "LONG_0040FD10"
    %endif
    times 2 - ($ - %%insn_0040fd10) db 0
    %%insn_0040fd12:
    mov edx,0x1 ; 0040FD12 BA01000000
    %if ($ - %%insn_0040fd12) > 5
        %error "LONG_0040FD12"
    %endif
    times 5 - ($ - %%insn_0040fd12) db 0
    %%insn_0040fd17:
    or edi,0x4000 ; 0040FD17 81CF00400000
    %if ($ - %%insn_0040fd17) > 6
        %error "LONG_0040FD17"
    %endif
    times 6 - ($ - %%insn_0040fd17) db 0
    %%insn_0040fd1d:
    jmp short 0x40fd5e ; 0040FD1D EB3F
    %if ($ - %%insn_0040fd1d) > 2
        %error "LONG_0040FD1D"
    %endif
    times 2 - ($ - %%insn_0040fd1d) db 0
    %%insn_0040fd1f:
    test edx,edx ; 0040FD1F 85D2
    %if ($ - %%insn_0040fd1f) > 2
        %error "LONG_0040FD1F"
    %endif
    times 2 - ($ - %%insn_0040fd1f) db 0
    %%insn_0040fd21:
    jnz short 0x40fd5c ; 0040FD21 7539
    %if ($ - %%insn_0040fd21) > 2
        %error "LONG_0040FD21"
    %endif
    times 2 - ($ - %%insn_0040fd21) db 0
    %%insn_0040fd23:
    mov edx,0x1 ; 0040FD23 BA01000000
    %if ($ - %%insn_0040fd23) > 5
        %error "LONG_0040FD23"
    %endif
    times 5 - ($ - %%insn_0040fd23) db 0
    %%insn_0040fd28:
    and edi,0xffffbfff ; 0040FD28 81E7FFBFFFFF
    %if ($ - %%insn_0040fd28) > 6
        %error "LONG_0040FD28"
    %endif
    times 6 - ($ - %%insn_0040fd28) db 0
    %%insn_0040fd2e:
    jmp short 0x40fd5e ; 0040FD2E EB2E
    %if ($ - %%insn_0040fd2e) > 2
        %error "LONG_0040FD2E"
    %endif
    times 2 - ($ - %%insn_0040fd2e) db 0
    %%insn_0040fd30:
    test ebp,ebp ; 0040FD30 85ED
    %if ($ - %%insn_0040fd30) > 2
        %error "LONG_0040FD30"
    %endif
    times 2 - ($ - %%insn_0040fd30) db 0
    %%insn_0040fd32:
    jnz short 0x40fd5c ; 0040FD32 7528
    %if ($ - %%insn_0040fd32) > 2
        %error "LONG_0040FD32"
    %endif
    times 2 - ($ - %%insn_0040fd32) db 0
    %%insn_0040fd34:
    mov ebp,0x1 ; 0040FD34 BD01000000
    %if ($ - %%insn_0040fd34) > 5
        %error "LONG_0040FD34"
    %endif
    times 5 - ($ - %%insn_0040fd34) db 0
    %%insn_0040fd39:
    or al,0x20 ; 0040FD39 0C20
    %if ($ - %%insn_0040fd39) > 2
        %error "LONG_0040FD39"
    %endif
    times 2 - ($ - %%insn_0040fd39) db 0
    %%insn_0040fd3b:
    jmp short 0x40fd5e ; 0040FD3B EB21
    %if ($ - %%insn_0040fd3b) > 2
        %error "LONG_0040FD3B"
    %endif
    times 2 - ($ - %%insn_0040fd3b) db 0
    %%insn_0040fd3d:
    test ebp,ebp ; 0040FD3D 85ED
    %if ($ - %%insn_0040fd3d) > 2
        %error "LONG_0040FD3D"
    %endif
    times 2 - ($ - %%insn_0040fd3d) db 0
    %%insn_0040fd3f:
    jnz short 0x40fd5c ; 0040FD3F 751B
    %if ($ - %%insn_0040fd3f) > 2
        %error "LONG_0040FD3F"
    %endif
    times 2 - ($ - %%insn_0040fd3f) db 0
    %%insn_0040fd41:
    mov ebp,0x1 ; 0040FD41 BD01000000
    %if ($ - %%insn_0040fd41) > 5
        %error "LONG_0040FD41"
    %endif
    times 5 - ($ - %%insn_0040fd41) db 0
    %%insn_0040fd46:
    or al,0x10 ; 0040FD46 0C10
    %if ($ - %%insn_0040fd46) > 2
        %error "LONG_0040FD46"
    %endif
    times 2 - ($ - %%insn_0040fd46) db 0
    %%insn_0040fd48:
    jmp short 0x40fd5e ; 0040FD48 EB14
    %if ($ - %%insn_0040fd48) > 2
        %error "LONG_0040FD48"
    %endif
    times 2 - ($ - %%insn_0040fd48) db 0
    %%insn_0040fd4a:
    test ah,0x10 ; 0040FD4A F6C410
    %if ($ - %%insn_0040fd4a) > 3
        %error "LONG_0040FD4A"
    %endif
    times 3 - ($ - %%insn_0040fd4a) db 0
    %%insn_0040fd4d:
    jnz short 0x40fd5c ; 0040FD4D 750D
    %if ($ - %%insn_0040fd4d) > 2
        %error "LONG_0040FD4D"
    %endif
    times 2 - ($ - %%insn_0040fd4d) db 0
    %%insn_0040fd4f:
    or ah,0x10 ; 0040FD4F 80CC10
    %if ($ - %%insn_0040fd4f) > 3
        %error "LONG_0040FD4F"
    %endif
    times 3 - ($ - %%insn_0040fd4f) db 0
    %%insn_0040fd52:
    jmp short 0x40fd5e ; 0040FD52 EB0A
    %if ($ - %%insn_0040fd52) > 2
        %error "LONG_0040FD52"
    %endif
    times 2 - ($ - %%insn_0040fd52) db 0
    %%insn_0040fd54:
    test al,0x40 ; 0040FD54 A840
    %if ($ - %%insn_0040fd54) > 2
        %error "LONG_0040FD54"
    %endif
    times 2 - ($ - %%insn_0040fd54) db 0
    %%insn_0040fd56:
    jnz short 0x40fd5c ; 0040FD56 7504
    %if ($ - %%insn_0040fd56) > 2
        %error "LONG_0040FD56"
    %endif
    times 2 - ($ - %%insn_0040fd56) db 0
    %%insn_0040fd58:
    or al,0x40 ; 0040FD58 0C40
    %if ($ - %%insn_0040fd58) > 2
        %error "LONG_0040FD58"
    %endif
    times 2 - ($ - %%insn_0040fd58) db 0
    %%insn_0040fd5a:
    jmp short 0x40fd5e ; 0040FD5A EB02
    %if ($ - %%insn_0040fd5a) > 2
        %error "LONG_0040FD5A"
    %endif
    times 2 - ($ - %%insn_0040fd5a) db 0
    db 0x33, 0xF6 ; 0040FD5C 33F6 | xor esi,esi | encoding preserved
    %%insn_0040fd5e:
    mov ecx,[esp+0x18] ; 0040FD5E 8B4C2418
    %if ($ - %%insn_0040fd5e) > 4
        %error "LONG_0040FD5E"
    %endif
    times 4 - ($ - %%insn_0040fd5e) db 0
    %%insn_0040fd62:
    inc ecx ; 0040FD62 41
    %if ($ - %%insn_0040fd62) > 1
        %error "LONG_0040FD62"
    %endif
    times 1 - ($ - %%insn_0040fd62) db 0
    %%insn_0040fd63:
    mov [esp+0x18],ecx ; 0040FD63 894C2418
    %if ($ - %%insn_0040fd63) > 4
        %error "LONG_0040FD63"
    %endif
    times 4 - ($ - %%insn_0040fd63) db 0
    %%insn_0040fd67:
    mov cl,[ecx] ; 0040FD67 8A09
    %if ($ - %%insn_0040fd67) > 2
        %error "LONG_0040FD67"
    %endif
    times 2 - ($ - %%insn_0040fd67) db 0
    %%insn_0040fd69:
    test cl,cl ; 0040FD69 84C9
    %if ($ - %%insn_0040fd69) > 2
        %error "LONG_0040FD69"
    %endif
    times 2 - ($ - %%insn_0040fd69) db 0
    %%insn_0040fd6b:
    jnz 0x40fcc1 ; 0040FD6B 0F8550FFFFFF
    %if ($ - %%insn_0040fd6b) > 6
        %error "LONG_0040FD6B"
    %endif
    times 6 - ($ - %%insn_0040fd6b) db 0
    %%insn_0040fd71:
    mov ecx,[esp+0x1c] ; 0040FD71 8B4C241C
    %if ($ - %%insn_0040fd71) > 4
        %error "LONG_0040FD71"
    %endif
    times 4 - ($ - %%insn_0040fd71) db 0
    %%insn_0040fd75:
    mov edx,[esp+0x14] ; 0040FD75 8B542414
    %if ($ - %%insn_0040fd75) > 4
        %error "LONG_0040FD75"
    %endif
    times 4 - ($ - %%insn_0040fd75) db 0
    %%insn_0040fd79:
    push dword 0x1a4 ; 0040FD79 68A4010000
    %if ($ - %%insn_0040fd79) > 5
        %error "LONG_0040FD79"
    %endif
    times 5 - ($ - %%insn_0040fd79) db 0
    %%insn_0040fd7e:
    push ecx ; 0040FD7E 51
    %if ($ - %%insn_0040fd7e) > 1
        %error "LONG_0040FD7E"
    %endif
    times 1 - ($ - %%insn_0040fd7e) db 0
    %%insn_0040fd7f:
    push eax ; 0040FD7F 50
    %if ($ - %%insn_0040fd7f) > 1
        %error "LONG_0040FD7F"
    %endif
    times 1 - ($ - %%insn_0040fd7f) db 0
    %%insn_0040fd80:
    push edx ; 0040FD80 52
    %if ($ - %%insn_0040fd80) > 1
        %error "LONG_0040FD80"
    %endif
    times 1 - ($ - %%insn_0040fd80) db 0
    %%insn_0040fd81:
    call 0x412f70 ; 0040FD81 E8EA310000
    %if ($ - %%insn_0040fd81) > 5
        %error "LONG_0040FD81"
    %endif
    times 5 - ($ - %%insn_0040fd81) db 0
    db 0x8B, 0xC8 ; 0040FD86 8BC8 | mov ecx,eax | encoding preserved
    %%insn_0040fd88:
    add esp,0x10 ; 0040FD88 83C410
    %if ($ - %%insn_0040fd88) > 3
        %error "LONG_0040FD88"
    %endif
    times 3 - ($ - %%insn_0040fd88) db 0
    %%insn_0040fd8b:
    test ecx,ecx ; 0040FD8B 85C9
    %if ($ - %%insn_0040fd8b) > 2
        %error "LONG_0040FD8B"
    %endif
    times 2 - ($ - %%insn_0040fd8b) db 0
    %%insn_0040fd8d:
    jnl short 0x40fd96 ; 0040FD8D 7D07
    %if ($ - %%insn_0040fd8d) > 2
        %error "LONG_0040FD8D"
    %endif
    times 2 - ($ - %%insn_0040fd8d) db 0
    db 0x33, 0xC0 ; 0040FD8F 33C0 | xor eax,eax | encoding preserved
    %%insn_0040fd91:
    pop edi ; 0040FD91 5F
    %if ($ - %%insn_0040fd91) > 1
        %error "LONG_0040FD91"
    %endif
    times 1 - ($ - %%insn_0040fd91) db 0
    %%insn_0040fd92:
    pop esi ; 0040FD92 5E
    %if ($ - %%insn_0040fd92) > 1
        %error "LONG_0040FD92"
    %endif
    times 1 - ($ - %%insn_0040fd92) db 0
    %%insn_0040fd93:
    pop ebp ; 0040FD93 5D
    %if ($ - %%insn_0040fd93) > 1
        %error "LONG_0040FD93"
    %endif
    times 1 - ($ - %%insn_0040fd93) db 0
    %%insn_0040fd94:
    pop ebx ; 0040FD94 5B
    %if ($ - %%insn_0040fd94) > 1
        %error "LONG_0040FD94"
    %endif
    times 1 - ($ - %%insn_0040fd94) db 0
    %%insn_0040fd95:
    ret ; 0040FD95 C3
    %if ($ - %%insn_0040fd95) > 1
        %error "LONG_0040FD95"
    %endif
    times 1 - ($ - %%insn_0040fd95) db 0
    %%insn_0040fd96:
    mov eax,[0x421174] ; 0040FD96 A174114200
    %if ($ - %%insn_0040fd96) > 5
        %error "LONG_0040FD96"
    %endif
    times 5 - ($ - %%insn_0040fd96) db 0
    %%insn_0040fd9b:
    inc eax ; 0040FD9B 40
    %if ($ - %%insn_0040fd9b) > 1
        %error "LONG_0040FD9B"
    %endif
    times 1 - ($ - %%insn_0040fd9b) db 0
    %%insn_0040fd9c:
    mov [0x421174],eax ; 0040FD9C A374114200
    %if ($ - %%insn_0040fd9c) > 5
        %error "LONG_0040FD9C"
    %endif
    times 5 - ($ - %%insn_0040fd9c) db 0
    %%insn_0040fda1:
    mov eax,[esp+0x20] ; 0040FDA1 8B442420
    %if ($ - %%insn_0040fda1) > 4
        %error "LONG_0040FDA1"
    %endif
    times 4 - ($ - %%insn_0040fda1) db 0
    %%insn_0040fda5:
    mov [eax+0xc],edi ; 0040FDA5 89780C
    %if ($ - %%insn_0040fda5) > 3
        %error "LONG_0040FDA5"
    %endif
    times 3 - ($ - %%insn_0040fda5) db 0
    %%insn_0040fda8:
    pop edi ; 0040FDA8 5F
    %if ($ - %%insn_0040fda8) > 1
        %error "LONG_0040FDA8"
    %endif
    times 1 - ($ - %%insn_0040fda8) db 0
    %%insn_0040fda9:
    pop esi ; 0040FDA9 5E
    %if ($ - %%insn_0040fda9) > 1
        %error "LONG_0040FDA9"
    %endif
    times 1 - ($ - %%insn_0040fda9) db 0
    %%insn_0040fdaa:
    pop ebp ; 0040FDAA 5D
    %if ($ - %%insn_0040fdaa) > 1
        %error "LONG_0040FDAA"
    %endif
    times 1 - ($ - %%insn_0040fdaa) db 0
    %%insn_0040fdab:
    mov dword [eax+0x4],0x0 ; 0040FDAB C7400400000000
    %if ($ - %%insn_0040fdab) > 7
        %error "LONG_0040FDAB"
    %endif
    times 7 - ($ - %%insn_0040fdab) db 0
    %%insn_0040fdb2:
    mov dword [eax],0x0 ; 0040FDB2 C70000000000
    %if ($ - %%insn_0040fdb2) > 6
        %error "LONG_0040FDB2"
    %endif
    times 6 - ($ - %%insn_0040fdb2) db 0
    %%insn_0040fdb8:
    mov dword [eax+0x8],0x0 ; 0040FDB8 C7400800000000
    %if ($ - %%insn_0040fdb8) > 7
        %error "LONG_0040FDB8"
    %endif
    times 7 - ($ - %%insn_0040fdb8) db 0
    %%insn_0040fdbf:
    mov dword [eax+0x1c],0x0 ; 0040FDBF C7401C00000000
    %if ($ - %%insn_0040fdbf) > 7
        %error "LONG_0040FDBF"
    %endif
    times 7 - ($ - %%insn_0040fdbf) db 0
    %%insn_0040fdc6:
    mov [eax+0x10],ecx ; 0040FDC6 894810
    %if ($ - %%insn_0040fdc6) > 3
        %error "LONG_0040FDC6"
    %endif
    times 3 - ($ - %%insn_0040fdc6) db 0
    %%insn_0040fdc9:
    pop ebx ; 0040FDC9 5B
    %if ($ - %%insn_0040fdc9) > 1
        %error "LONG_0040FDC9"
    %endif
    times 1 - ($ - %%insn_0040fdc9) db 0
    %%insn_0040fdca:
    ret ; 0040FDCA C3
    %if ($ - %%insn_0040fdca) > 1
        %error "LONG_0040FDCA"
    %endif
    times 1 - ($ - %%insn_0040fdca) db 0
    %if ($ - %%fragment_start) != 347
        %error "function fragment size drift: 0040FC70"
    %endif
%endmacro
