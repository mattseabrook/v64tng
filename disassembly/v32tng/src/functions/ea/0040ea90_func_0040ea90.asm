; PE virtual entry 0040EA90
; Ghidra working symbol: FUN_0040ea90
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040ea90_part_00 0
    %%fragment_start:
func_0040ea90:
    %%insn_0040ea90:
    push ebx ; 0040EA90 53
    %if ($ - %%insn_0040ea90) > 1
        %error "LONG_0040EA90"
    %endif
    times 1 - ($ - %%insn_0040ea90) db 0
    %%insn_0040ea91:
    push ebp ; 0040EA91 55
    %if ($ - %%insn_0040ea91) > 1
        %error "LONG_0040EA91"
    %endif
    times 1 - ($ - %%insn_0040ea91) db 0
    %%insn_0040ea92:
    push esi ; 0040EA92 56
    %if ($ - %%insn_0040ea92) > 1
        %error "LONG_0040EA92"
    %endif
    times 1 - ($ - %%insn_0040ea92) db 0
    %%insn_0040ea93:
    mov esi,[esp+0x14] ; 0040EA93 8B742414
    %if ($ - %%insn_0040ea93) > 4
        %error "LONG_0040EA93"
    %endif
    times 4 - ($ - %%insn_0040ea93) db 0
    %%insn_0040ea97:
    push edi ; 0040EA97 57
    %if ($ - %%insn_0040ea97) > 1
        %error "LONG_0040EA97"
    %endif
    times 1 - ($ - %%insn_0040ea97) db 0
    %%insn_0040ea98:
    mov eax,[esi+0xc] ; 0040EA98 8B460C
    %if ($ - %%insn_0040ea98) > 3
        %error "LONG_0040EA98"
    %endif
    times 3 - ($ - %%insn_0040ea98) db 0
    %%insn_0040ea9b:
    mov ebp,[esi+0x10] ; 0040EA9B 8B6E10
    %if ($ - %%insn_0040ea9b) > 3
        %error "LONG_0040EA9B"
    %endif
    times 3 - ($ - %%insn_0040ea9b) db 0
    %%insn_0040ea9e:
    test al,0x82 ; 0040EA9E A882
    %if ($ - %%insn_0040ea9e) > 2
        %error "LONG_0040EA9E"
    %endif
    times 2 - ($ - %%insn_0040ea9e) db 0
    %%insn_0040eaa0:
    jz 0x40ebb3 ; 0040EAA0 0F840D010000
    %if ($ - %%insn_0040eaa0) > 6
        %error "LONG_0040EAA0"
    %endif
    times 6 - ($ - %%insn_0040eaa0) db 0
    %%insn_0040eaa6:
    test al,0x40 ; 0040EAA6 A840
    %if ($ - %%insn_0040eaa6) > 2
        %error "LONG_0040EAA6"
    %endif
    times 2 - ($ - %%insn_0040eaa6) db 0
    %%insn_0040eaa8:
    jnz 0x40ebb3 ; 0040EAA8 0F8505010000
    %if ($ - %%insn_0040eaa8) > 6
        %error "LONG_0040EAA8"
    %endif
    times 6 - ($ - %%insn_0040eaa8) db 0
    db 0x33, 0xDB ; 0040EAAE 33DB | xor ebx,ebx | encoding preserved
    %%insn_0040eab0:
    test al,0x1 ; 0040EAB0 A801
    %if ($ - %%insn_0040eab0) > 2
        %error "LONG_0040EAB0"
    %endif
    times 2 - ($ - %%insn_0040eab0) db 0
    %%insn_0040eab2:
    jz short 0x40eac9 ; 0040EAB2 7415
    %if ($ - %%insn_0040eab2) > 2
        %error "LONG_0040EAB2"
    %endif
    times 2 - ($ - %%insn_0040eab2) db 0
    %%insn_0040eab4:
    test al,0x10 ; 0040EAB4 A810
    %if ($ - %%insn_0040eab4) > 2
        %error "LONG_0040EAB4"
    %endif
    times 2 - ($ - %%insn_0040eab4) db 0
    %%insn_0040eab6:
    mov [esi+0x4],ebx ; 0040EAB6 895E04
    %if ($ - %%insn_0040eab6) > 3
        %error "LONG_0040EAB6"
    %endif
    times 3 - ($ - %%insn_0040eab6) db 0
    %%insn_0040eab9:
    jz 0x40ebb3 ; 0040EAB9 0F84F4000000
    %if ($ - %%insn_0040eab9) > 6
        %error "LONG_0040EAB9"
    %endif
    times 6 - ($ - %%insn_0040eab9) db 0
    %%insn_0040eabf:
    mov ecx,[esi+0x8] ; 0040EABF 8B4E08
    %if ($ - %%insn_0040eabf) > 3
        %error "LONG_0040EABF"
    %endif
    times 3 - ($ - %%insn_0040eabf) db 0
    %%insn_0040eac2:
    and al,0xfe ; 0040EAC2 24FE
    %if ($ - %%insn_0040eac2) > 2
        %error "LONG_0040EAC2"
    %endif
    times 2 - ($ - %%insn_0040eac2) db 0
    %%insn_0040eac4:
    mov [esi],ecx ; 0040EAC4 890E
    %if ($ - %%insn_0040eac4) > 2
        %error "LONG_0040EAC4"
    %endif
    times 2 - ($ - %%insn_0040eac4) db 0
    %%insn_0040eac6:
    mov [esi+0xc],eax ; 0040EAC6 89460C
    %if ($ - %%insn_0040eac6) > 3
        %error "LONG_0040EAC6"
    %endif
    times 3 - ($ - %%insn_0040eac6) db 0
    %%insn_0040eac9:
    mov eax,[esi+0xc] ; 0040EAC9 8B460C
    %if ($ - %%insn_0040eac9) > 3
        %error "LONG_0040EAC9"
    %endif
    times 3 - ($ - %%insn_0040eac9) db 0
    %%insn_0040eacc:
    mov [esi+0x4],ebx ; 0040EACC 895E04
    %if ($ - %%insn_0040eacc) > 3
        %error "LONG_0040EACC"
    %endif
    times 3 - ($ - %%insn_0040eacc) db 0
    %%insn_0040eacf:
    and al,0xef ; 0040EACF 24EF
    %if ($ - %%insn_0040eacf) > 2
        %error "LONG_0040EACF"
    %endif
    times 2 - ($ - %%insn_0040eacf) db 0
    %%insn_0040ead1:
    or al,0x2 ; 0040EAD1 0C02
    %if ($ - %%insn_0040ead1) > 2
        %error "LONG_0040EAD1"
    %endif
    times 2 - ($ - %%insn_0040ead1) db 0
    %%insn_0040ead3:
    test eax,0x10c ; 0040EAD3 A90C010000
    %if ($ - %%insn_0040ead3) > 5
        %error "LONG_0040EAD3"
    %endif
    times 5 - ($ - %%insn_0040ead3) db 0
    %%insn_0040ead8:
    mov [esi+0xc],eax ; 0040EAD8 89460C
    %if ($ - %%insn_0040ead8) > 3
        %error "LONG_0040EAD8"
    %endif
    times 3 - ($ - %%insn_0040ead8) db 0
    %%insn_0040eadb:
    jnz short 0x40eb03 ; 0040EADB 7526
    %if ($ - %%insn_0040eadb) > 2
        %error "LONG_0040EADB"
    %endif
    times 2 - ($ - %%insn_0040eadb) db 0
    %%insn_0040eadd:
    cmp esi,0x41e3c8 ; 0040EADD 81FEC8E34100
    %if ($ - %%insn_0040eadd) > 6
        %error "LONG_0040EADD"
    %endif
    times 6 - ($ - %%insn_0040eadd) db 0
    %%insn_0040eae3:
    jz short 0x40eaed ; 0040EAE3 7408
    %if ($ - %%insn_0040eae3) > 2
        %error "LONG_0040EAE3"
    %endif
    times 2 - ($ - %%insn_0040eae3) db 0
    %%insn_0040eae5:
    cmp esi,0x41e3e8 ; 0040EAE5 81FEE8E34100
    %if ($ - %%insn_0040eae5) > 6
        %error "LONG_0040EAE5"
    %endif
    times 6 - ($ - %%insn_0040eae5) db 0
    %%insn_0040eaeb:
    jnz short 0x40eafa ; 0040EAEB 750D
    %if ($ - %%insn_0040eaeb) > 2
        %error "LONG_0040EAEB"
    %endif
    times 2 - ($ - %%insn_0040eaeb) db 0
    %%insn_0040eaed:
    push ebp ; 0040EAED 55
    %if ($ - %%insn_0040eaed) > 1
        %error "LONG_0040EAED"
    %endif
    times 1 - ($ - %%insn_0040eaed) db 0
    %%insn_0040eaee:
    call 0x412ca0 ; 0040EAEE E8AD410000
    %if ($ - %%insn_0040eaee) > 5
        %error "LONG_0040EAEE"
    %endif
    times 5 - ($ - %%insn_0040eaee) db 0
    %%insn_0040eaf3:
    add esp,0x4 ; 0040EAF3 83C404
    %if ($ - %%insn_0040eaf3) > 3
        %error "LONG_0040EAF3"
    %endif
    times 3 - ($ - %%insn_0040eaf3) db 0
    %%insn_0040eaf6:
    test eax,eax ; 0040EAF6 85C0
    %if ($ - %%insn_0040eaf6) > 2
        %error "LONG_0040EAF6"
    %endif
    times 2 - ($ - %%insn_0040eaf6) db 0
    %%insn_0040eaf8:
    jnz short 0x40eb03 ; 0040EAF8 7509
    %if ($ - %%insn_0040eaf8) > 2
        %error "LONG_0040EAF8"
    %endif
    times 2 - ($ - %%insn_0040eaf8) db 0
    %%insn_0040eafa:
    push esi ; 0040EAFA 56
    %if ($ - %%insn_0040eafa) > 1
        %error "LONG_0040EAFA"
    %endif
    times 1 - ($ - %%insn_0040eafa) db 0
    %%insn_0040eafb:
    call 0x412c40 ; 0040EAFB E840410000
    %if ($ - %%insn_0040eafb) > 5
        %error "LONG_0040EAFB"
    %endif
    times 5 - ($ - %%insn_0040eafb) db 0
    %%insn_0040eb00:
    add esp,0x4 ; 0040EB00 83C404
    %if ($ - %%insn_0040eb00) > 3
        %error "LONG_0040EB00"
    %endif
    times 3 - ($ - %%insn_0040eb00) db 0
    %%insn_0040eb03:
    test dword [esi+0xc],0x108 ; 0040EB03 F7460C08010000
    %if ($ - %%insn_0040eb03) > 7
        %error "LONG_0040EB03"
    %endif
    times 7 - ($ - %%insn_0040eb03) db 0
    %%insn_0040eb0a:
    jz short 0x40eb7b ; 0040EB0A 746F
    %if ($ - %%insn_0040eb0a) > 2
        %error "LONG_0040EB0A"
    %endif
    times 2 - ($ - %%insn_0040eb0a) db 0
    %%insn_0040eb0c:
    mov eax,[esi+0x8] ; 0040EB0C 8B4608
    %if ($ - %%insn_0040eb0c) > 3
        %error "LONG_0040EB0C"
    %endif
    times 3 - ($ - %%insn_0040eb0c) db 0
    %%insn_0040eb0f:
    mov edi,[esi] ; 0040EB0F 8B3E
    %if ($ - %%insn_0040eb0f) > 2
        %error "LONG_0040EB0F"
    %endif
    times 2 - ($ - %%insn_0040eb0f) db 0
    %%insn_0040eb11:
    mov ecx,[esi+0x18] ; 0040EB11 8B4E18
    %if ($ - %%insn_0040eb11) > 3
        %error "LONG_0040EB11"
    %endif
    times 3 - ($ - %%insn_0040eb11) db 0
    db 0x2B, 0xF8 ; 0040EB14 2BF8 | sub edi,eax | encoding preserved
    %%insn_0040eb16:
    lea edx,[eax+0x1] ; 0040EB16 8D5001
    %if ($ - %%insn_0040eb16) > 3
        %error "LONG_0040EB16"
    %endif
    times 3 - ($ - %%insn_0040eb16) db 0
    %%insn_0040eb19:
    dec ecx ; 0040EB19 49
    %if ($ - %%insn_0040eb19) > 1
        %error "LONG_0040EB19"
    %endif
    times 1 - ($ - %%insn_0040eb19) db 0
    db 0x3B, 0xFB ; 0040EB1A 3BFB | cmp edi,ebx | encoding preserved
    %%insn_0040eb1c:
    mov [esi],edx ; 0040EB1C 8916
    %if ($ - %%insn_0040eb1c) > 2
        %error "LONG_0040EB1C"
    %endif
    times 2 - ($ - %%insn_0040eb1c) db 0
    %%insn_0040eb1e:
    mov [esi+0x4],ecx ; 0040EB1E 894E04
    %if ($ - %%insn_0040eb1e) > 3
        %error "LONG_0040EB1E"
    %endif
    times 3 - ($ - %%insn_0040eb1e) db 0
    %%insn_0040eb21:
    jng short 0x40eb3b ; 0040EB21 7E18
    %if ($ - %%insn_0040eb21) > 2
        %error "LONG_0040EB21"
    %endif
    times 2 - ($ - %%insn_0040eb21) db 0
    %%insn_0040eb23:
    push edi ; 0040EB23 57
    %if ($ - %%insn_0040eb23) > 1
        %error "LONG_0040EB23"
    %endif
    times 1 - ($ - %%insn_0040eb23) db 0
    %%insn_0040eb24:
    push eax ; 0040EB24 50
    %if ($ - %%insn_0040eb24) > 1
        %error "LONG_0040EB24"
    %endif
    times 1 - ($ - %%insn_0040eb24) db 0
    %%insn_0040eb25:
    push ebp ; 0040EB25 55
    %if ($ - %%insn_0040eb25) > 1
        %error "LONG_0040EB25"
    %endif
    times 1 - ($ - %%insn_0040eb25) db 0
    %%insn_0040eb26:
    call 0x40f9e0 ; 0040EB26 E8B50E0000
    %if ($ - %%insn_0040eb26) > 5
        %error "LONG_0040EB26"
    %endif
    times 5 - ($ - %%insn_0040eb26) db 0
    %%insn_0040eb2b:
    mov edx,[esi+0x8] ; 0040EB2B 8B5608
    %if ($ - %%insn_0040eb2b) > 3
        %error "LONG_0040EB2B"
    %endif
    times 3 - ($ - %%insn_0040eb2b) db 0
    db 0x8B, 0xD8 ; 0040EB2E 8BD8 | mov ebx,eax | encoding preserved
    %%insn_0040eb30:
    mov al,[esp+0x20] ; 0040EB30 8A442420
    %if ($ - %%insn_0040eb30) > 4
        %error "LONG_0040EB30"
    %endif
    times 4 - ($ - %%insn_0040eb30) db 0
    %%insn_0040eb34:
    add esp,0xc ; 0040EB34 83C40C
    %if ($ - %%insn_0040eb34) > 3
        %error "LONG_0040EB34"
    %endif
    times 3 - ($ - %%insn_0040eb34) db 0
    %%insn_0040eb37:
    mov [edx],al ; 0040EB37 8802
    %if ($ - %%insn_0040eb37) > 2
        %error "LONG_0040EB37"
    %endif
    times 2 - ($ - %%insn_0040eb37) db 0
    %%insn_0040eb39:
    jmp short 0x40eb91 ; 0040EB39 EB56
    %if ($ - %%insn_0040eb39) > 2
        %error "LONG_0040EB39"
    %endif
    times 2 - ($ - %%insn_0040eb39) db 0
    %%insn_0040eb3b:
    cmp ebp,0xffffffffffffffff ; 0040EB3B 83FDFF
    %if ($ - %%insn_0040eb3b) > 3
        %error "LONG_0040EB3B"
    %endif
    times 3 - ($ - %%insn_0040eb3b) db 0
    %%insn_0040eb3e:
    jz short 0x40eb59 ; 0040EB3E 7419
    %if ($ - %%insn_0040eb3e) > 2
        %error "LONG_0040EB3E"
    %endif
    times 2 - ($ - %%insn_0040eb3e) db 0
    db 0x8B, 0xD5 ; 0040EB40 8BD5 | mov edx,ebp | encoding preserved
    db 0x8B, 0xC5 ; 0040EB42 8BC5 | mov eax,ebp | encoding preserved
    %%insn_0040eb44:
    sar edx,byte 0x5 ; 0040EB44 C1FA05
    %if ($ - %%insn_0040eb44) > 3
        %error "LONG_0040EB44"
    %endif
    times 3 - ($ - %%insn_0040eb44) db 0
    %%insn_0040eb47:
    and eax,0x1f ; 0040EB47 83E01F
    %if ($ - %%insn_0040eb47) > 3
        %error "LONG_0040EB47"
    %endif
    times 3 - ($ - %%insn_0040eb47) db 0
    %%insn_0040eb4a:
    mov ecx,[edx*4+0x423480] ; 0040EB4A 8B0C9580344200
    %if ($ - %%insn_0040eb4a) > 7
        %error "LONG_0040EB4A"
    %endif
    times 7 - ($ - %%insn_0040eb4a) db 0
    %%insn_0040eb51:
    lea eax,[eax+eax*8] ; 0040EB51 8D04C0
    %if ($ - %%insn_0040eb51) > 3
        %error "LONG_0040EB51"
    %endif
    times 3 - ($ - %%insn_0040eb51) db 0
    %%insn_0040eb54:
    lea eax,[ecx+eax*4] ; 0040EB54 8D0481
    %if ($ - %%insn_0040eb54) > 3
        %error "LONG_0040EB54"
    %endif
    times 3 - ($ - %%insn_0040eb54) db 0
    %%insn_0040eb57:
    jmp short 0x40eb5e ; 0040EB57 EB05
    %if ($ - %%insn_0040eb57) > 2
        %error "LONG_0040EB57"
    %endif
    times 2 - ($ - %%insn_0040eb57) db 0
    %%insn_0040eb59:
    mov eax,0x41e158 ; 0040EB59 B858E14100
    %if ($ - %%insn_0040eb59) > 5
        %error "LONG_0040EB59"
    %endif
    times 5 - ($ - %%insn_0040eb59) db 0
    %%insn_0040eb5e:
    test byte [eax+0x4],0x20 ; 0040EB5E F6400420
    %if ($ - %%insn_0040eb5e) > 4
        %error "LONG_0040EB5E"
    %endif
    times 4 - ($ - %%insn_0040eb5e) db 0
    %%insn_0040eb62:
    jz short 0x40eb70 ; 0040EB62 740C
    %if ($ - %%insn_0040eb62) > 2
        %error "LONG_0040EB62"
    %endif
    times 2 - ($ - %%insn_0040eb62) db 0
    %%insn_0040eb64:
    push dword 0x2 ; 0040EB64 6A02
    %if ($ - %%insn_0040eb64) > 2
        %error "LONG_0040EB64"
    %endif
    times 2 - ($ - %%insn_0040eb64) db 0
    %%insn_0040eb66:
    push ebx ; 0040EB66 53
    %if ($ - %%insn_0040eb66) > 1
        %error "LONG_0040EB66"
    %endif
    times 1 - ($ - %%insn_0040eb66) db 0
    %%insn_0040eb67:
    push ebp ; 0040EB67 55
    %if ($ - %%insn_0040eb67) > 1
        %error "LONG_0040EB67"
    %endif
    times 1 - ($ - %%insn_0040eb67) db 0
    %%insn_0040eb68:
    call 0x411290 ; 0040EB68 E823270000
    %if ($ - %%insn_0040eb68) > 5
        %error "LONG_0040EB68"
    %endif
    times 5 - ($ - %%insn_0040eb68) db 0
    %%insn_0040eb6d:
    add esp,0xc ; 0040EB6D 83C40C
    %if ($ - %%insn_0040eb6d) > 3
        %error "LONG_0040EB6D"
    %endif
    times 3 - ($ - %%insn_0040eb6d) db 0
    %%insn_0040eb70:
    mov edx,[esi+0x8] ; 0040EB70 8B5608
    %if ($ - %%insn_0040eb70) > 3
        %error "LONG_0040EB70"
    %endif
    times 3 - ($ - %%insn_0040eb70) db 0
    %%insn_0040eb73:
    mov al,[esp+0x14] ; 0040EB73 8A442414
    %if ($ - %%insn_0040eb73) > 4
        %error "LONG_0040EB73"
    %endif
    times 4 - ($ - %%insn_0040eb73) db 0
    %%insn_0040eb77:
    mov [edx],al ; 0040EB77 8802
    %if ($ - %%insn_0040eb77) > 2
        %error "LONG_0040EB77"
    %endif
    times 2 - ($ - %%insn_0040eb77) db 0
    %%insn_0040eb79:
    jmp short 0x40eb91 ; 0040EB79 EB16
    %if ($ - %%insn_0040eb79) > 2
        %error "LONG_0040EB79"
    %endif
    times 2 - ($ - %%insn_0040eb79) db 0
    %%insn_0040eb7b:
    mov edi,0x1 ; 0040EB7B BF01000000
    %if ($ - %%insn_0040eb7b) > 5
        %error "LONG_0040EB7B"
    %endif
    times 5 - ($ - %%insn_0040eb7b) db 0
    %%insn_0040eb80:
    lea ecx,[esp+0x14] ; 0040EB80 8D4C2414
    %if ($ - %%insn_0040eb80) > 4
        %error "LONG_0040EB80"
    %endif
    times 4 - ($ - %%insn_0040eb80) db 0
    %%insn_0040eb84:
    push edi ; 0040EB84 57
    %if ($ - %%insn_0040eb84) > 1
        %error "LONG_0040EB84"
    %endif
    times 1 - ($ - %%insn_0040eb84) db 0
    %%insn_0040eb85:
    push ecx ; 0040EB85 51
    %if ($ - %%insn_0040eb85) > 1
        %error "LONG_0040EB85"
    %endif
    times 1 - ($ - %%insn_0040eb85) db 0
    %%insn_0040eb86:
    push ebp ; 0040EB86 55
    %if ($ - %%insn_0040eb86) > 1
        %error "LONG_0040EB86"
    %endif
    times 1 - ($ - %%insn_0040eb86) db 0
    %%insn_0040eb87:
    call 0x40f9e0 ; 0040EB87 E8540E0000
    %if ($ - %%insn_0040eb87) > 5
        %error "LONG_0040EB87"
    %endif
    times 5 - ($ - %%insn_0040eb87) db 0
    %%insn_0040eb8c:
    add esp,0xc ; 0040EB8C 83C40C
    %if ($ - %%insn_0040eb8c) > 3
        %error "LONG_0040EB8C"
    %endif
    times 3 - ($ - %%insn_0040eb8c) db 0
    db 0x8B, 0xD8 ; 0040EB8F 8BD8 | mov ebx,eax | encoding preserved
    db 0x3B, 0xDF ; 0040EB91 3BDF | cmp ebx,edi | encoding preserved
    %%insn_0040eb93:
    jz short 0x40eba5 ; 0040EB93 7410
    %if ($ - %%insn_0040eb93) > 2
        %error "LONG_0040EB93"
    %endif
    times 2 - ($ - %%insn_0040eb93) db 0
    %%insn_0040eb95:
    mov eax,[esi+0xc] ; 0040EB95 8B460C
    %if ($ - %%insn_0040eb95) > 3
        %error "LONG_0040EB95"
    %endif
    times 3 - ($ - %%insn_0040eb95) db 0
    %%insn_0040eb98:
    or al,0x20 ; 0040EB98 0C20
    %if ($ - %%insn_0040eb98) > 2
        %error "LONG_0040EB98"
    %endif
    times 2 - ($ - %%insn_0040eb98) db 0
    %%insn_0040eb9a:
    mov [esi+0xc],eax ; 0040EB9A 89460C
    %if ($ - %%insn_0040eb9a) > 3
        %error "LONG_0040EB9A"
    %endif
    times 3 - ($ - %%insn_0040eb9a) db 0
    %%insn_0040eb9d:
    or eax,0xffffffffffffffff ; 0040EB9D 83C8FF
    %if ($ - %%insn_0040eb9d) > 3
        %error "LONG_0040EB9D"
    %endif
    times 3 - ($ - %%insn_0040eb9d) db 0
    %%insn_0040eba0:
    pop edi ; 0040EBA0 5F
    %if ($ - %%insn_0040eba0) > 1
        %error "LONG_0040EBA0"
    %endif
    times 1 - ($ - %%insn_0040eba0) db 0
    %%insn_0040eba1:
    pop esi ; 0040EBA1 5E
    %if ($ - %%insn_0040eba1) > 1
        %error "LONG_0040EBA1"
    %endif
    times 1 - ($ - %%insn_0040eba1) db 0
    %%insn_0040eba2:
    pop ebp ; 0040EBA2 5D
    %if ($ - %%insn_0040eba2) > 1
        %error "LONG_0040EBA2"
    %endif
    times 1 - ($ - %%insn_0040eba2) db 0
    %%insn_0040eba3:
    pop ebx ; 0040EBA3 5B
    %if ($ - %%insn_0040eba3) > 1
        %error "LONG_0040EBA3"
    %endif
    times 1 - ($ - %%insn_0040eba3) db 0
    %%insn_0040eba4:
    ret ; 0040EBA4 C3
    %if ($ - %%insn_0040eba4) > 1
        %error "LONG_0040EBA4"
    %endif
    times 1 - ($ - %%insn_0040eba4) db 0
    %%insn_0040eba5:
    mov eax,[esp+0x14] ; 0040EBA5 8B442414
    %if ($ - %%insn_0040eba5) > 4
        %error "LONG_0040EBA5"
    %endif
    times 4 - ($ - %%insn_0040eba5) db 0
    %%insn_0040eba9:
    and eax,0xff ; 0040EBA9 25FF000000
    %if ($ - %%insn_0040eba9) > 5
        %error "LONG_0040EBA9"
    %endif
    times 5 - ($ - %%insn_0040eba9) db 0
    %%insn_0040ebae:
    pop edi ; 0040EBAE 5F
    %if ($ - %%insn_0040ebae) > 1
        %error "LONG_0040EBAE"
    %endif
    times 1 - ($ - %%insn_0040ebae) db 0
    %%insn_0040ebaf:
    pop esi ; 0040EBAF 5E
    %if ($ - %%insn_0040ebaf) > 1
        %error "LONG_0040EBAF"
    %endif
    times 1 - ($ - %%insn_0040ebaf) db 0
    %%insn_0040ebb0:
    pop ebp ; 0040EBB0 5D
    %if ($ - %%insn_0040ebb0) > 1
        %error "LONG_0040EBB0"
    %endif
    times 1 - ($ - %%insn_0040ebb0) db 0
    %%insn_0040ebb1:
    pop ebx ; 0040EBB1 5B
    %if ($ - %%insn_0040ebb1) > 1
        %error "LONG_0040EBB1"
    %endif
    times 1 - ($ - %%insn_0040ebb1) db 0
    %%insn_0040ebb2:
    ret ; 0040EBB2 C3
    %if ($ - %%insn_0040ebb2) > 1
        %error "LONG_0040EBB2"
    %endif
    times 1 - ($ - %%insn_0040ebb2) db 0
    %%insn_0040ebb3:
    or al,0x20 ; 0040EBB3 0C20
    %if ($ - %%insn_0040ebb3) > 2
        %error "LONG_0040EBB3"
    %endif
    times 2 - ($ - %%insn_0040ebb3) db 0
    %%insn_0040ebb5:
    pop edi ; 0040EBB5 5F
    %if ($ - %%insn_0040ebb5) > 1
        %error "LONG_0040EBB5"
    %endif
    times 1 - ($ - %%insn_0040ebb5) db 0
    %%insn_0040ebb6:
    mov [esi+0xc],eax ; 0040EBB6 89460C
    %if ($ - %%insn_0040ebb6) > 3
        %error "LONG_0040EBB6"
    %endif
    times 3 - ($ - %%insn_0040ebb6) db 0
    %%insn_0040ebb9:
    pop esi ; 0040EBB9 5E
    %if ($ - %%insn_0040ebb9) > 1
        %error "LONG_0040EBB9"
    %endif
    times 1 - ($ - %%insn_0040ebb9) db 0
    %%insn_0040ebba:
    pop ebp ; 0040EBBA 5D
    %if ($ - %%insn_0040ebba) > 1
        %error "LONG_0040EBBA"
    %endif
    times 1 - ($ - %%insn_0040ebba) db 0
    %%insn_0040ebbb:
    or eax,0xffffffffffffffff ; 0040EBBB 83C8FF
    %if ($ - %%insn_0040ebbb) > 3
        %error "LONG_0040EBBB"
    %endif
    times 3 - ($ - %%insn_0040ebbb) db 0
    %%insn_0040ebbe:
    pop ebx ; 0040EBBE 5B
    %if ($ - %%insn_0040ebbe) > 1
        %error "LONG_0040EBBE"
    %endif
    times 1 - ($ - %%insn_0040ebbe) db 0
    %%insn_0040ebbf:
    ret ; 0040EBBF C3
    %if ($ - %%insn_0040ebbf) > 1
        %error "LONG_0040EBBF"
    %endif
    times 1 - ($ - %%insn_0040ebbf) db 0
    %if ($ - %%fragment_start) != 304
        %error "function fragment size drift: 0040EA90"
    %endif
%endmacro
