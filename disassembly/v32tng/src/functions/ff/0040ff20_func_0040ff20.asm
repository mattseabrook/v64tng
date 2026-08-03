; PE virtual entry 0040FF20
; Ghidra working symbol: FUN_0040ff20
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040ff20_part_00 0
    %%fragment_start:
func_0040ff20:
    %%insn_0040ff20:
    push esi ; 0040FF20 56
    %if ($ - %%insn_0040ff20) > 1
        %error "LONG_0040FF20"
    %endif
    times 1 - ($ - %%insn_0040ff20) db 0
    %%insn_0040ff21:
    mov esi,[esp+0x8] ; 0040FF21 8B742408
    %if ($ - %%insn_0040ff21) > 4
        %error "LONG_0040FF21"
    %endif
    times 4 - ($ - %%insn_0040ff21) db 0
    %%insn_0040ff25:
    push edi ; 0040FF25 57
    %if ($ - %%insn_0040ff25) > 1
        %error "LONG_0040FF25"
    %endif
    times 1 - ($ - %%insn_0040ff25) db 0
    %%insn_0040ff26:
    mov eax,[esi+0xc] ; 0040FF26 8B460C
    %if ($ - %%insn_0040ff26) > 3
        %error "LONG_0040FF26"
    %endif
    times 3 - ($ - %%insn_0040ff26) db 0
    %%insn_0040ff29:
    test al,0x83 ; 0040FF29 A883
    %if ($ - %%insn_0040ff29) > 2
        %error "LONG_0040FF29"
    %endif
    times 2 - ($ - %%insn_0040ff29) db 0
    %%insn_0040ff2b:
    jz 0x410009 ; 0040FF2B 0F84D8000000
    %if ($ - %%insn_0040ff2b) > 6
        %error "LONG_0040FF2B"
    %endif
    times 6 - ($ - %%insn_0040ff2b) db 0
    %%insn_0040ff31:
    test al,0x40 ; 0040FF31 A840
    %if ($ - %%insn_0040ff31) > 2
        %error "LONG_0040FF31"
    %endif
    times 2 - ($ - %%insn_0040ff31) db 0
    %%insn_0040ff33:
    jnz 0x410009 ; 0040FF33 0F85D0000000
    %if ($ - %%insn_0040ff33) > 6
        %error "LONG_0040FF33"
    %endif
    times 6 - ($ - %%insn_0040ff33) db 0
    %%insn_0040ff39:
    test al,0x2 ; 0040FF39 A802
    %if ($ - %%insn_0040ff39) > 2
        %error "LONG_0040FF39"
    %endif
    times 2 - ($ - %%insn_0040ff39) db 0
    %%insn_0040ff3b:
    jz short 0x40ff48 ; 0040FF3B 740B
    %if ($ - %%insn_0040ff3b) > 2
        %error "LONG_0040FF3B"
    %endif
    times 2 - ($ - %%insn_0040ff3b) db 0
    %%insn_0040ff3d:
    or al,0x20 ; 0040FF3D 0C20
    %if ($ - %%insn_0040ff3d) > 2
        %error "LONG_0040FF3D"
    %endif
    times 2 - ($ - %%insn_0040ff3d) db 0
    %%insn_0040ff3f:
    mov [esi+0xc],eax ; 0040FF3F 89460C
    %if ($ - %%insn_0040ff3f) > 3
        %error "LONG_0040FF3F"
    %endif
    times 3 - ($ - %%insn_0040ff3f) db 0
    %%insn_0040ff42:
    or eax,0xffffffffffffffff ; 0040FF42 83C8FF
    %if ($ - %%insn_0040ff42) > 3
        %error "LONG_0040FF42"
    %endif
    times 3 - ($ - %%insn_0040ff42) db 0
    %%insn_0040ff45:
    pop edi ; 0040FF45 5F
    %if ($ - %%insn_0040ff45) > 1
        %error "LONG_0040FF45"
    %endif
    times 1 - ($ - %%insn_0040ff45) db 0
    %%insn_0040ff46:
    pop esi ; 0040FF46 5E
    %if ($ - %%insn_0040ff46) > 1
        %error "LONG_0040FF46"
    %endif
    times 1 - ($ - %%insn_0040ff46) db 0
    %%insn_0040ff47:
    ret ; 0040FF47 C3
    %if ($ - %%insn_0040ff47) > 1
        %error "LONG_0040FF47"
    %endif
    times 1 - ($ - %%insn_0040ff47) db 0
    %%insn_0040ff48:
    or al,0x1 ; 0040FF48 0C01
    %if ($ - %%insn_0040ff48) > 2
        %error "LONG_0040FF48"
    %endif
    times 2 - ($ - %%insn_0040ff48) db 0
    %%insn_0040ff4a:
    test eax,0x10c ; 0040FF4A A90C010000
    %if ($ - %%insn_0040ff4a) > 5
        %error "LONG_0040FF4A"
    %endif
    times 5 - ($ - %%insn_0040ff4a) db 0
    %%insn_0040ff4f:
    mov [esi+0xc],eax ; 0040FF4F 89460C
    %if ($ - %%insn_0040ff4f) > 3
        %error "LONG_0040FF4F"
    %endif
    times 3 - ($ - %%insn_0040ff4f) db 0
    %%insn_0040ff52:
    jnz short 0x40ff5f ; 0040FF52 750B
    %if ($ - %%insn_0040ff52) > 2
        %error "LONG_0040FF52"
    %endif
    times 2 - ($ - %%insn_0040ff52) db 0
    %%insn_0040ff54:
    push esi ; 0040FF54 56
    %if ($ - %%insn_0040ff54) > 1
        %error "LONG_0040FF54"
    %endif
    times 1 - ($ - %%insn_0040ff54) db 0
    %%insn_0040ff55:
    call 0x412c40 ; 0040FF55 E8E62C0000
    %if ($ - %%insn_0040ff55) > 5
        %error "LONG_0040FF55"
    %endif
    times 5 - ($ - %%insn_0040ff55) db 0
    %%insn_0040ff5a:
    add esp,0x4 ; 0040FF5A 83C404
    %if ($ - %%insn_0040ff5a) > 3
        %error "LONG_0040FF5A"
    %endif
    times 3 - ($ - %%insn_0040ff5a) db 0
    %%insn_0040ff5d:
    jmp short 0x40ff64 ; 0040FF5D EB05
    %if ($ - %%insn_0040ff5d) > 2
        %error "LONG_0040FF5D"
    %endif
    times 2 - ($ - %%insn_0040ff5d) db 0
    %%insn_0040ff5f:
    mov eax,[esi+0x8] ; 0040FF5F 8B4608
    %if ($ - %%insn_0040ff5f) > 3
        %error "LONG_0040FF5F"
    %endif
    times 3 - ($ - %%insn_0040ff5f) db 0
    %%insn_0040ff62:
    mov [esi],eax ; 0040FF62 8906
    %if ($ - %%insn_0040ff62) > 2
        %error "LONG_0040FF62"
    %endif
    times 2 - ($ - %%insn_0040ff62) db 0
    %%insn_0040ff64:
    mov ecx,[esi+0x18] ; 0040FF64 8B4E18
    %if ($ - %%insn_0040ff64) > 3
        %error "LONG_0040FF64"
    %endif
    times 3 - ($ - %%insn_0040ff64) db 0
    %%insn_0040ff67:
    mov edx,[esi+0x8] ; 0040FF67 8B5608
    %if ($ - %%insn_0040ff67) > 3
        %error "LONG_0040FF67"
    %endif
    times 3 - ($ - %%insn_0040ff67) db 0
    %%insn_0040ff6a:
    mov eax,[esi+0x10] ; 0040FF6A 8B4610
    %if ($ - %%insn_0040ff6a) > 3
        %error "LONG_0040FF6A"
    %endif
    times 3 - ($ - %%insn_0040ff6a) db 0
    %%insn_0040ff6d:
    push ecx ; 0040FF6D 51
    %if ($ - %%insn_0040ff6d) > 1
        %error "LONG_0040FF6D"
    %endif
    times 1 - ($ - %%insn_0040ff6d) db 0
    %%insn_0040ff6e:
    push edx ; 0040FF6E 52
    %if ($ - %%insn_0040ff6e) > 1
        %error "LONG_0040FF6E"
    %endif
    times 1 - ($ - %%insn_0040ff6e) db 0
    %%insn_0040ff6f:
    push eax ; 0040FF6F 50
    %if ($ - %%insn_0040ff6f) > 1
        %error "LONG_0040FF6F"
    %endif
    times 1 - ($ - %%insn_0040ff6f) db 0
    %%insn_0040ff70:
    call 0x410010 ; 0040FF70 E89B000000
    %if ($ - %%insn_0040ff70) > 5
        %error "LONG_0040FF70"
    %endif
    times 5 - ($ - %%insn_0040ff70) db 0
    %%insn_0040ff75:
    add esp,0xc ; 0040FF75 83C40C
    %if ($ - %%insn_0040ff75) > 3
        %error "LONG_0040FF75"
    %endif
    times 3 - ($ - %%insn_0040ff75) db 0
    %%insn_0040ff78:
    mov [esi+0x4],eax ; 0040FF78 894604
    %if ($ - %%insn_0040ff78) > 3
        %error "LONG_0040FF78"
    %endif
    times 3 - ($ - %%insn_0040ff78) db 0
    %%insn_0040ff7b:
    test eax,eax ; 0040FF7B 85C0
    %if ($ - %%insn_0040ff7b) > 2
        %error "LONG_0040FF7B"
    %endif
    times 2 - ($ - %%insn_0040ff7b) db 0
    %%insn_0040ff7d:
    jz short 0x40fff0 ; 0040FF7D 7471
    %if ($ - %%insn_0040ff7d) > 2
        %error "LONG_0040FF7D"
    %endif
    times 2 - ($ - %%insn_0040ff7d) db 0
    %%insn_0040ff7f:
    cmp eax,0xffffffffffffffff ; 0040FF7F 83F8FF
    %if ($ - %%insn_0040ff7f) > 3
        %error "LONG_0040FF7F"
    %endif
    times 3 - ($ - %%insn_0040ff7f) db 0
    %%insn_0040ff82:
    jz short 0x40fff0 ; 0040FF82 746C
    %if ($ - %%insn_0040ff82) > 2
        %error "LONG_0040FF82"
    %endif
    times 2 - ($ - %%insn_0040ff82) db 0
    %%insn_0040ff84:
    mov edx,[esi+0xc] ; 0040FF84 8B560C
    %if ($ - %%insn_0040ff84) > 3
        %error "LONG_0040FF84"
    %endif
    times 3 - ($ - %%insn_0040ff84) db 0
    %%insn_0040ff87:
    test dl,0x82 ; 0040FF87 F6C282
    %if ($ - %%insn_0040ff87) > 3
        %error "LONG_0040FF87"
    %endif
    times 3 - ($ - %%insn_0040ff87) db 0
    %%insn_0040ff8a:
    jnz short 0x40ffc1 ; 0040FF8A 7535
    %if ($ - %%insn_0040ff8a) > 2
        %error "LONG_0040FF8A"
    %endif
    times 2 - ($ - %%insn_0040ff8a) db 0
    %%insn_0040ff8c:
    mov ecx,[esi+0x10] ; 0040FF8C 8B4E10
    %if ($ - %%insn_0040ff8c) > 3
        %error "LONG_0040FF8C"
    %endif
    times 3 - ($ - %%insn_0040ff8c) db 0
    %%insn_0040ff8f:
    cmp ecx,0xffffffffffffffff ; 0040FF8F 83F9FF
    %if ($ - %%insn_0040ff8f) > 3
        %error "LONG_0040FF8F"
    %endif
    times 3 - ($ - %%insn_0040ff8f) db 0
    %%insn_0040ff92:
    jz short 0x40ffab ; 0040FF92 7417
    %if ($ - %%insn_0040ff92) > 2
        %error "LONG_0040FF92"
    %endif
    times 2 - ($ - %%insn_0040ff92) db 0
    db 0x8B, 0xF9 ; 0040FF94 8BF9 | mov edi,ecx | encoding preserved
    %%insn_0040ff96:
    sar edi,byte 0x5 ; 0040FF96 C1FF05
    %if ($ - %%insn_0040ff96) > 3
        %error "LONG_0040FF96"
    %endif
    times 3 - ($ - %%insn_0040ff96) db 0
    %%insn_0040ff99:
    and ecx,0x1f ; 0040FF99 83E11F
    %if ($ - %%insn_0040ff99) > 3
        %error "LONG_0040FF99"
    %endif
    times 3 - ($ - %%insn_0040ff99) db 0
    %%insn_0040ff9c:
    mov edi,[edi*4+0x423480] ; 0040FF9C 8B3CBD80344200
    %if ($ - %%insn_0040ff9c) > 7
        %error "LONG_0040FF9C"
    %endif
    times 7 - ($ - %%insn_0040ff9c) db 0
    %%insn_0040ffa3:
    lea ecx,[ecx+ecx*8] ; 0040FFA3 8D0CC9
    %if ($ - %%insn_0040ffa3) > 3
        %error "LONG_0040FFA3"
    %endif
    times 3 - ($ - %%insn_0040ffa3) db 0
    %%insn_0040ffa6:
    lea ecx,[edi+ecx*4] ; 0040FFA6 8D0C8F
    %if ($ - %%insn_0040ffa6) > 3
        %error "LONG_0040FFA6"
    %endif
    times 3 - ($ - %%insn_0040ffa6) db 0
    %%insn_0040ffa9:
    jmp short 0x40ffb0 ; 0040FFA9 EB05
    %if ($ - %%insn_0040ffa9) > 2
        %error "LONG_0040FFA9"
    %endif
    times 2 - ($ - %%insn_0040ffa9) db 0
    %%insn_0040ffab:
    mov ecx,0x41e158 ; 0040FFAB B958E14100
    %if ($ - %%insn_0040ffab) > 5
        %error "LONG_0040FFAB"
    %endif
    times 5 - ($ - %%insn_0040ffab) db 0
    %%insn_0040ffb0:
    mov cl,[ecx+0x4] ; 0040FFB0 8A4904
    %if ($ - %%insn_0040ffb0) > 3
        %error "LONG_0040FFB0"
    %endif
    times 3 - ($ - %%insn_0040ffb0) db 0
    %%insn_0040ffb3:
    and cl,0x82 ; 0040FFB3 80E182
    %if ($ - %%insn_0040ffb3) > 3
        %error "LONG_0040FFB3"
    %endif
    times 3 - ($ - %%insn_0040ffb3) db 0
    %%insn_0040ffb6:
    cmp cl,0x82 ; 0040FFB6 80F982
    %if ($ - %%insn_0040ffb6) > 3
        %error "LONG_0040FFB6"
    %endif
    times 3 - ($ - %%insn_0040ffb6) db 0
    %%insn_0040ffb9:
    jnz short 0x40ffc1 ; 0040FFB9 7506
    %if ($ - %%insn_0040ffb9) > 2
        %error "LONG_0040FFB9"
    %endif
    times 2 - ($ - %%insn_0040ffb9) db 0
    %%insn_0040ffbb:
    or dh,0x20 ; 0040FFBB 80CE20
    %if ($ - %%insn_0040ffbb) > 3
        %error "LONG_0040FFBB"
    %endif
    times 3 - ($ - %%insn_0040ffbb) db 0
    %%insn_0040ffbe:
    mov [esi+0xc],edx ; 0040FFBE 89560C
    %if ($ - %%insn_0040ffbe) > 3
        %error "LONG_0040FFBE"
    %endif
    times 3 - ($ - %%insn_0040ffbe) db 0
    %%insn_0040ffc1:
    cmp dword [esi+0x18],0x200 ; 0040FFC1 817E1800020000
    %if ($ - %%insn_0040ffc1) > 7
        %error "LONG_0040FFC1"
    %endif
    times 7 - ($ - %%insn_0040ffc1) db 0
    %%insn_0040ffc8:
    jnz short 0x40ffde ; 0040FFC8 7514
    %if ($ - %%insn_0040ffc8) > 2
        %error "LONG_0040FFC8"
    %endif
    times 2 - ($ - %%insn_0040ffc8) db 0
    %%insn_0040ffca:
    mov ecx,[esi+0xc] ; 0040FFCA 8B4E0C
    %if ($ - %%insn_0040ffca) > 3
        %error "LONG_0040FFCA"
    %endif
    times 3 - ($ - %%insn_0040ffca) db 0
    %%insn_0040ffcd:
    test cl,0x8 ; 0040FFCD F6C108
    %if ($ - %%insn_0040ffcd) > 3
        %error "LONG_0040FFCD"
    %endif
    times 3 - ($ - %%insn_0040ffcd) db 0
    %%insn_0040ffd0:
    jz short 0x40ffde ; 0040FFD0 740C
    %if ($ - %%insn_0040ffd0) > 2
        %error "LONG_0040FFD0"
    %endif
    times 2 - ($ - %%insn_0040ffd0) db 0
    %%insn_0040ffd2:
    test ch,0x4 ; 0040FFD2 F6C504
    %if ($ - %%insn_0040ffd2) > 3
        %error "LONG_0040FFD2"
    %endif
    times 3 - ($ - %%insn_0040ffd2) db 0
    %%insn_0040ffd5:
    jnz short 0x40ffde ; 0040FFD5 7507
    %if ($ - %%insn_0040ffd5) > 2
        %error "LONG_0040FFD5"
    %endif
    times 2 - ($ - %%insn_0040ffd5) db 0
    %%insn_0040ffd7:
    mov dword [esi+0x18],0x1000 ; 0040FFD7 C7461800100000
    %if ($ - %%insn_0040ffd7) > 7
        %error "LONG_0040FFD7"
    %endif
    times 7 - ($ - %%insn_0040ffd7) db 0
    %%insn_0040ffde:
    dec eax ; 0040FFDE 48
    %if ($ - %%insn_0040ffde) > 1
        %error "LONG_0040FFDE"
    %endif
    times 1 - ($ - %%insn_0040ffde) db 0
    db 0x33, 0xD2 ; 0040FFDF 33D2 | xor edx,edx | encoding preserved
    %%insn_0040ffe1:
    mov [esi+0x4],eax ; 0040FFE1 894604
    %if ($ - %%insn_0040ffe1) > 3
        %error "LONG_0040FFE1"
    %endif
    times 3 - ($ - %%insn_0040ffe1) db 0
    %%insn_0040ffe4:
    mov eax,[esi] ; 0040FFE4 8B06
    %if ($ - %%insn_0040ffe4) > 2
        %error "LONG_0040FFE4"
    %endif
    times 2 - ($ - %%insn_0040ffe4) db 0
    %%insn_0040ffe6:
    mov dl,[eax] ; 0040FFE6 8A10
    %if ($ - %%insn_0040ffe6) > 2
        %error "LONG_0040FFE6"
    %endif
    times 2 - ($ - %%insn_0040ffe6) db 0
    %%insn_0040ffe8:
    inc eax ; 0040FFE8 40
    %if ($ - %%insn_0040ffe8) > 1
        %error "LONG_0040FFE8"
    %endif
    times 1 - ($ - %%insn_0040ffe8) db 0
    %%insn_0040ffe9:
    mov [esi],eax ; 0040FFE9 8906
    %if ($ - %%insn_0040ffe9) > 2
        %error "LONG_0040FFE9"
    %endif
    times 2 - ($ - %%insn_0040ffe9) db 0
    db 0x8B, 0xC2 ; 0040FFEB 8BC2 | mov eax,edx | encoding preserved
    %%insn_0040ffed:
    pop edi ; 0040FFED 5F
    %if ($ - %%insn_0040ffed) > 1
        %error "LONG_0040FFED"
    %endif
    times 1 - ($ - %%insn_0040ffed) db 0
    %%insn_0040ffee:
    pop esi ; 0040FFEE 5E
    %if ($ - %%insn_0040ffee) > 1
        %error "LONG_0040FFEE"
    %endif
    times 1 - ($ - %%insn_0040ffee) db 0
    %%insn_0040ffef:
    ret ; 0040FFEF C3
    %if ($ - %%insn_0040ffef) > 1
        %error "LONG_0040FFEF"
    %endif
    times 1 - ($ - %%insn_0040ffef) db 0
    %%insn_0040fff0:
    mov ecx,[esi+0xc] ; 0040FFF0 8B4E0C
    %if ($ - %%insn_0040fff0) > 3
        %error "LONG_0040FFF0"
    %endif
    times 3 - ($ - %%insn_0040fff0) db 0
    %%insn_0040fff3:
    mov dword [esi+0x4],0x0 ; 0040FFF3 C7460400000000
    %if ($ - %%insn_0040fff3) > 7
        %error "LONG_0040FFF3"
    %endif
    times 7 - ($ - %%insn_0040fff3) db 0
    %%insn_0040fffa:
    neg eax ; 0040FFFA F7D8
    %if ($ - %%insn_0040fffa) > 2
        %error "LONG_0040FFFA"
    %endif
    times 2 - ($ - %%insn_0040fffa) db 0
    db 0x1B, 0xC0 ; 0040FFFC 1BC0 | sbb eax,eax | encoding preserved
    %%insn_0040fffe:
    and eax,0x10 ; 0040FFFE 83E010
    %if ($ - %%insn_0040fffe) > 3
        %error "LONG_0040FFFE"
    %endif
    times 3 - ($ - %%insn_0040fffe) db 0
    %%insn_00410001:
    add eax,0x10 ; 00410001 83C010
    %if ($ - %%insn_00410001) > 3
        %error "LONG_00410001"
    %endif
    times 3 - ($ - %%insn_00410001) db 0
    db 0x0B, 0xC8 ; 00410004 0BC8 | or ecx,eax | encoding preserved
    %%insn_00410006:
    mov [esi+0xc],ecx ; 00410006 894E0C
    %if ($ - %%insn_00410006) > 3
        %error "LONG_00410006"
    %endif
    times 3 - ($ - %%insn_00410006) db 0
    %%insn_00410009:
    pop edi ; 00410009 5F
    %if ($ - %%insn_00410009) > 1
        %error "LONG_00410009"
    %endif
    times 1 - ($ - %%insn_00410009) db 0
    %%insn_0041000a:
    or eax,0xffffffffffffffff ; 0041000A 83C8FF
    %if ($ - %%insn_0041000a) > 3
        %error "LONG_0041000A"
    %endif
    times 3 - ($ - %%insn_0041000a) db 0
    %%insn_0041000d:
    pop esi ; 0041000D 5E
    %if ($ - %%insn_0041000d) > 1
        %error "LONG_0041000D"
    %endif
    times 1 - ($ - %%insn_0041000d) db 0
    %%insn_0041000e:
    ret ; 0041000E C3
    %if ($ - %%insn_0041000e) > 1
        %error "LONG_0041000E"
    %endif
    times 1 - ($ - %%insn_0041000e) db 0
    %if ($ - %%fragment_start) != 239
        %error "function fragment size drift: 0040FF20"
    %endif
%endmacro
