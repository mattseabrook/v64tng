; PE virtual entry 00413980
; Ghidra working symbol: FUN_00413980
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00413980_part_00 0
    %%fragment_start:
func_00413980:
    %%insn_00413980:
    sub esp,0x8 ; 00413980 83EC08
    %if ($ - %%insn_00413980) > 3
        %error "LONG_00413980"
    %endif
    times 3 - ($ - %%insn_00413980) db 0
    %%insn_00413983:
    push esi ; 00413983 56
    %if ($ - %%insn_00413983) > 1
        %error "LONG_00413983"
    %endif
    times 1 - ($ - %%insn_00413983) db 0
    %%insn_00413984:
    lea eax,[esp+0x8] ; 00413984 8D442408
    %if ($ - %%insn_00413984) > 4
        %error "LONG_00413984"
    %endif
    times 4 - ($ - %%insn_00413984) db 0
    %%insn_00413988:
    push edi ; 00413988 57
    %if ($ - %%insn_00413988) > 1
        %error "LONG_00413988"
    %endif
    times 1 - ($ - %%insn_00413988) db 0
    %%insn_00413989:
    mov edi,[esp+0x14] ; 00413989 8B7C2414
    %if ($ - %%insn_00413989) > 4
        %error "LONG_00413989"
    %endif
    times 4 - ($ - %%insn_00413989) db 0
    %%insn_0041398d:
    push eax ; 0041398D 50
    %if ($ - %%insn_0041398d) > 1
        %error "LONG_0041398D"
    %endif
    times 1 - ($ - %%insn_0041398d) db 0
    %%insn_0041398e:
    push dword 0x23 ; 0041398E 6A23
    %if ($ - %%insn_0041398e) > 2
        %error "LONG_0041398E"
    %endif
    times 2 - ($ - %%insn_0041398e) db 0
    %%insn_00413990:
    push edi ; 00413990 57
    %if ($ - %%insn_00413990) > 1
        %error "LONG_00413990"
    %endif
    times 1 - ($ - %%insn_00413990) db 0
    %%insn_00413991:
    push dword 0x0 ; 00413991 6A00
    %if ($ - %%insn_00413991) > 2
        %error "LONG_00413991"
    %endif
    times 2 - ($ - %%insn_00413991) db 0
    %%insn_00413993:
    mov dword [esp+0x1c],0x0 ; 00413993 C744241C00000000
    %if ($ - %%insn_00413993) > 8
        %error "LONG_00413993"
    %endif
    times 8 - ($ - %%insn_00413993) db 0
    %%insn_0041399b:
    mov dword [esp+0x18],0x0 ; 0041399B C744241800000000
    %if ($ - %%insn_0041399b) > 8
        %error "LONG_0041399B"
    %endif
    times 8 - ($ - %%insn_0041399b) db 0
    %%insn_004139a3:
    call 0x4169f0 ; 004139A3 E848300000
    %if ($ - %%insn_004139a3) > 5
        %error "LONG_004139A3"
    %endif
    times 5 - ($ - %%insn_004139a3) db 0
    %%insn_004139a8:
    add esp,0x10 ; 004139A8 83C410
    %if ($ - %%insn_004139a8) > 3
        %error "LONG_004139A8"
    %endif
    times 3 - ($ - %%insn_004139a8) db 0
    %%insn_004139ab:
    lea ecx,[esp+0x8] ; 004139AB 8D4C2408
    %if ($ - %%insn_004139ab) > 4
        %error "LONG_004139AB"
    %endif
    times 4 - ($ - %%insn_004139ab) db 0
    db 0x8B, 0xF0 ; 004139AF 8BF0 | mov esi,eax | encoding preserved
    %%insn_004139b1:
    push ecx ; 004139B1 51
    %if ($ - %%insn_004139b1) > 1
        %error "LONG_004139B1"
    %endif
    times 1 - ($ - %%insn_004139b1) db 0
    %%insn_004139b2:
    push dword 0x25 ; 004139B2 6A25
    %if ($ - %%insn_004139b2) > 2
        %error "LONG_004139B2"
    %endif
    times 2 - ($ - %%insn_004139b2) db 0
    %%insn_004139b4:
    push edi ; 004139B4 57
    %if ($ - %%insn_004139b4) > 1
        %error "LONG_004139B4"
    %endif
    times 1 - ($ - %%insn_004139b4) db 0
    %%insn_004139b5:
    push dword 0x0 ; 004139B5 6A00
    %if ($ - %%insn_004139b5) > 2
        %error "LONG_004139B5"
    %endif
    times 2 - ($ - %%insn_004139b5) db 0
    %%insn_004139b7:
    call 0x4169f0 ; 004139B7 E834300000
    %if ($ - %%insn_004139b7) > 5
        %error "LONG_004139B7"
    %endif
    times 5 - ($ - %%insn_004139b7) db 0
    %%insn_004139bc:
    add esp,0x10 ; 004139BC 83C410
    %if ($ - %%insn_004139bc) > 3
        %error "LONG_004139BC"
    %endif
    times 3 - ($ - %%insn_004139bc) db 0
    %%insn_004139bf:
    lea edx,[esp+0x14] ; 004139BF 8D542414
    %if ($ - %%insn_004139bf) > 4
        %error "LONG_004139BF"
    %endif
    times 4 - ($ - %%insn_004139bf) db 0
    db 0x0B, 0xF0 ; 004139C3 0BF0 | or esi,eax | encoding preserved
    %%insn_004139c5:
    push edx ; 004139C5 52
    %if ($ - %%insn_004139c5) > 1
        %error "LONG_004139C5"
    %endif
    times 1 - ($ - %%insn_004139c5) db 0
    %%insn_004139c6:
    push dword 0x1e ; 004139C6 6A1E
    %if ($ - %%insn_004139c6) > 2
        %error "LONG_004139C6"
    %endif
    times 2 - ($ - %%insn_004139c6) db 0
    %%insn_004139c8:
    push edi ; 004139C8 57
    %if ($ - %%insn_004139c8) > 1
        %error "LONG_004139C8"
    %endif
    times 1 - ($ - %%insn_004139c8) db 0
    %%insn_004139c9:
    push dword 0x1 ; 004139C9 6A01
    %if ($ - %%insn_004139c9) > 2
        %error "LONG_004139C9"
    %endif
    times 2 - ($ - %%insn_004139c9) db 0
    %%insn_004139cb:
    call 0x4169f0 ; 004139CB E820300000
    %if ($ - %%insn_004139cb) > 5
        %error "LONG_004139CB"
    %endif
    times 5 - ($ - %%insn_004139cb) db 0
    %%insn_004139d0:
    add esp,0x10 ; 004139D0 83C410
    %if ($ - %%insn_004139d0) > 3
        %error "LONG_004139D0"
    %endif
    times 3 - ($ - %%insn_004139d0) db 0
    db 0x0B, 0xF0 ; 004139D3 0BF0 | or esi,eax | encoding preserved
    %%insn_004139d5:
    jz short 0x4139df ; 004139D5 7408
    %if ($ - %%insn_004139d5) > 2
        %error "LONG_004139D5"
    %endif
    times 2 - ($ - %%insn_004139d5) db 0
    db 0x8B, 0xC6 ; 004139D7 8BC6 | mov eax,esi | encoding preserved
    %%insn_004139d9:
    pop edi ; 004139D9 5F
    %if ($ - %%insn_004139d9) > 1
        %error "LONG_004139D9"
    %endif
    times 1 - ($ - %%insn_004139d9) db 0
    %%insn_004139da:
    pop esi ; 004139DA 5E
    %if ($ - %%insn_004139da) > 1
        %error "LONG_004139DA"
    %endif
    times 1 - ($ - %%insn_004139da) db 0
    %%insn_004139db:
    add esp,0x8 ; 004139DB 83C408
    %if ($ - %%insn_004139db) > 3
        %error "LONG_004139DB"
    %endif
    times 3 - ($ - %%insn_004139db) db 0
    %%insn_004139de:
    ret ; 004139DE C3
    %if ($ - %%insn_004139de) > 1
        %error "LONG_004139DE"
    %endif
    times 1 - ($ - %%insn_004139de) db 0
    %%insn_004139df:
    push dword 0xd ; 004139DF 6A0D
    %if ($ - %%insn_004139df) > 2
        %error "LONG_004139DF"
    %endif
    times 2 - ($ - %%insn_004139df) db 0
    %%insn_004139e1:
    call 0x40cdc0 ; 004139E1 E8DA93FFFF
    %if ($ - %%insn_004139e1) > 5
        %error "LONG_004139E1"
    %endif
    times 5 - ($ - %%insn_004139e1) db 0
    %%insn_004139e6:
    mov ecx,[esp+0x1c] ; 004139E6 8B4C241C
    %if ($ - %%insn_004139e6) > 4
        %error "LONG_004139E6"
    %endif
    times 4 - ($ - %%insn_004139e6) db 0
    %%insn_004139ea:
    add esp,0x4 ; 004139EA 83C404
    %if ($ - %%insn_004139ea) > 3
        %error "LONG_004139EA"
    %endif
    times 3 - ($ - %%insn_004139ea) db 0
    %%insn_004139ed:
    mov [ecx+0xa8],eax ; 004139ED 8981A8000000
    %if ($ - %%insn_004139ed) > 6
        %error "LONG_004139ED"
    %endif
    times 6 - ($ - %%insn_004139ed) db 0
    %%insn_004139f3:
    mov ecx,[esp+0xc] ; 004139F3 8B4C240C
    %if ($ - %%insn_004139f3) > 4
        %error "LONG_004139F3"
    %endif
    times 4 - ($ - %%insn_004139f3) db 0
    %%insn_004139f7:
    test ecx,ecx ; 004139F7 85C9
    %if ($ - %%insn_004139f7) > 2
        %error "LONG_004139F7"
    %endif
    times 2 - ($ - %%insn_004139f7) db 0
    %%insn_004139f9:
    jz short 0x413a0c ; 004139F9 7411
    %if ($ - %%insn_004139f9) > 2
        %error "LONG_004139F9"
    %endif
    times 2 - ($ - %%insn_004139f9) db 0
    %%insn_004139fb:
    mov byte [eax],0x48 ; 004139FB C60048
    %if ($ - %%insn_004139fb) > 3
        %error "LONG_004139FB"
    %endif
    times 3 - ($ - %%insn_004139fb) db 0
    %%insn_004139fe:
    mov ecx,[esp+0x8] ; 004139FE 8B4C2408
    %if ($ - %%insn_004139fe) > 4
        %error "LONG_004139FE"
    %endif
    times 4 - ($ - %%insn_004139fe) db 0
    %%insn_00413a02:
    inc eax ; 00413A02 40
    %if ($ - %%insn_00413a02) > 1
        %error "LONG_00413A02"
    %endif
    times 1 - ($ - %%insn_00413a02) db 0
    %%insn_00413a03:
    test ecx,ecx ; 00413A03 85C9
    %if ($ - %%insn_00413a03) > 2
        %error "LONG_00413A03"
    %endif
    times 2 - ($ - %%insn_00413a03) db 0
    %%insn_00413a05:
    jz short 0x413a1c ; 00413A05 7415
    %if ($ - %%insn_00413a05) > 2
        %error "LONG_00413A05"
    %endif
    times 2 - ($ - %%insn_00413a05) db 0
    %%insn_00413a07:
    mov byte [eax],0x48 ; 00413A07 C60048
    %if ($ - %%insn_00413a07) > 3
        %error "LONG_00413A07"
    %endif
    times 3 - ($ - %%insn_00413a07) db 0
    %%insn_00413a0a:
    jmp short 0x413a1b ; 00413A0A EB0F
    %if ($ - %%insn_00413a0a) > 2
        %error "LONG_00413A0A"
    %endif
    times 2 - ($ - %%insn_00413a0a) db 0
    %%insn_00413a0c:
    mov byte [eax],0x68 ; 00413A0C C60068
    %if ($ - %%insn_00413a0c) > 3
        %error "LONG_00413A0C"
    %endif
    times 3 - ($ - %%insn_00413a0c) db 0
    %%insn_00413a0f:
    mov ecx,[esp+0x8] ; 00413A0F 8B4C2408
    %if ($ - %%insn_00413a0f) > 4
        %error "LONG_00413A0F"
    %endif
    times 4 - ($ - %%insn_00413a0f) db 0
    %%insn_00413a13:
    inc eax ; 00413A13 40
    %if ($ - %%insn_00413a13) > 1
        %error "LONG_00413A13"
    %endif
    times 1 - ($ - %%insn_00413a13) db 0
    %%insn_00413a14:
    test ecx,ecx ; 00413A14 85C9
    %if ($ - %%insn_00413a14) > 2
        %error "LONG_00413A14"
    %endif
    times 2 - ($ - %%insn_00413a14) db 0
    %%insn_00413a16:
    jz short 0x413a1c ; 00413A16 7404
    %if ($ - %%insn_00413a16) > 2
        %error "LONG_00413A16"
    %endif
    times 2 - ($ - %%insn_00413a16) db 0
    %%insn_00413a18:
    mov byte [eax],0x68 ; 00413A18 C60068
    %if ($ - %%insn_00413a18) > 3
        %error "LONG_00413A18"
    %endif
    times 3 - ($ - %%insn_00413a18) db 0
    %%insn_00413a1b:
    inc eax ; 00413A1B 40
    %if ($ - %%insn_00413a1b) > 1
        %error "LONG_00413A1B"
    %endif
    times 1 - ($ - %%insn_00413a1b) db 0
    %%insn_00413a1c:
    mov edx,[esp+0x14] ; 00413A1C 8B542414
    %if ($ - %%insn_00413a1c) > 4
        %error "LONG_00413A1C"
    %endif
    times 4 - ($ - %%insn_00413a1c) db 0
    %%insn_00413a20:
    mov cl,[edx] ; 00413A20 8A0A
    %if ($ - %%insn_00413a20) > 2
        %error "LONG_00413A20"
    %endif
    times 2 - ($ - %%insn_00413a20) db 0
    %%insn_00413a22:
    test cl,cl ; 00413A22 84C9
    %if ($ - %%insn_00413a22) > 2
        %error "LONG_00413A22"
    %endif
    times 2 - ($ - %%insn_00413a22) db 0
    %%insn_00413a24:
    jz short 0x413a31 ; 00413A24 740B
    %if ($ - %%insn_00413a24) > 2
        %error "LONG_00413A24"
    %endif
    times 2 - ($ - %%insn_00413a24) db 0
    %%insn_00413a26:
    mov [eax],cl ; 00413A26 8808
    %if ($ - %%insn_00413a26) > 2
        %error "LONG_00413A26"
    %endif
    times 2 - ($ - %%insn_00413a26) db 0
    %%insn_00413a28:
    mov cl,[edx+0x1] ; 00413A28 8A4A01
    %if ($ - %%insn_00413a28) > 3
        %error "LONG_00413A28"
    %endif
    times 3 - ($ - %%insn_00413a28) db 0
    %%insn_00413a2b:
    inc eax ; 00413A2B 40
    %if ($ - %%insn_00413a2b) > 1
        %error "LONG_00413A2B"
    %endif
    times 1 - ($ - %%insn_00413a2b) db 0
    %%insn_00413a2c:
    inc edx ; 00413A2C 42
    %if ($ - %%insn_00413a2c) > 1
        %error "LONG_00413A2C"
    %endif
    times 1 - ($ - %%insn_00413a2c) db 0
    %%insn_00413a2d:
    test cl,cl ; 00413A2D 84C9
    %if ($ - %%insn_00413a2d) > 2
        %error "LONG_00413A2D"
    %endif
    times 2 - ($ - %%insn_00413a2d) db 0
    %%insn_00413a2f:
    jnz short 0x413a26 ; 00413A2F 75F5
    %if ($ - %%insn_00413a2f) > 2
        %error "LONG_00413A2F"
    %endif
    times 2 - ($ - %%insn_00413a2f) db 0
    %%insn_00413a31:
    mov byte [eax],0x6d ; 00413A31 C6006D
    %if ($ - %%insn_00413a31) > 3
        %error "LONG_00413A31"
    %endif
    times 3 - ($ - %%insn_00413a31) db 0
    %%insn_00413a34:
    mov ecx,[esp+0x8] ; 00413A34 8B4C2408
    %if ($ - %%insn_00413a34) > 4
        %error "LONG_00413A34"
    %endif
    times 4 - ($ - %%insn_00413a34) db 0
    %%insn_00413a38:
    inc eax ; 00413A38 40
    %if ($ - %%insn_00413a38) > 1
        %error "LONG_00413A38"
    %endif
    times 1 - ($ - %%insn_00413a38) db 0
    %%insn_00413a39:
    test ecx,ecx ; 00413A39 85C9
    %if ($ - %%insn_00413a39) > 2
        %error "LONG_00413A39"
    %endif
    times 2 - ($ - %%insn_00413a39) db 0
    %%insn_00413a3b:
    jz short 0x413a41 ; 00413A3B 7404
    %if ($ - %%insn_00413a3b) > 2
        %error "LONG_00413A3B"
    %endif
    times 2 - ($ - %%insn_00413a3b) db 0
    %%insn_00413a3d:
    mov byte [eax],0x6d ; 00413A3D C6006D
    %if ($ - %%insn_00413a3d) > 3
        %error "LONG_00413A3D"
    %endif
    times 3 - ($ - %%insn_00413a3d) db 0
    %%insn_00413a40:
    inc eax ; 00413A40 40
    %if ($ - %%insn_00413a40) > 1
        %error "LONG_00413A40"
    %endif
    times 1 - ($ - %%insn_00413a40) db 0
    %%insn_00413a41:
    mov edx,[esp+0x14] ; 00413A41 8B542414
    %if ($ - %%insn_00413a41) > 4
        %error "LONG_00413A41"
    %endif
    times 4 - ($ - %%insn_00413a41) db 0
    %%insn_00413a45:
    mov cl,[edx] ; 00413A45 8A0A
    %if ($ - %%insn_00413a45) > 2
        %error "LONG_00413A45"
    %endif
    times 2 - ($ - %%insn_00413a45) db 0
    %%insn_00413a47:
    test cl,cl ; 00413A47 84C9
    %if ($ - %%insn_00413a47) > 2
        %error "LONG_00413A47"
    %endif
    times 2 - ($ - %%insn_00413a47) db 0
    %%insn_00413a49:
    jz short 0x413a56 ; 00413A49 740B
    %if ($ - %%insn_00413a49) > 2
        %error "LONG_00413A49"
    %endif
    times 2 - ($ - %%insn_00413a49) db 0
    %%insn_00413a4b:
    mov [eax],cl ; 00413A4B 8808
    %if ($ - %%insn_00413a4b) > 2
        %error "LONG_00413A4B"
    %endif
    times 2 - ($ - %%insn_00413a4b) db 0
    %%insn_00413a4d:
    mov cl,[edx+0x1] ; 00413A4D 8A4A01
    %if ($ - %%insn_00413a4d) > 3
        %error "LONG_00413A4D"
    %endif
    times 3 - ($ - %%insn_00413a4d) db 0
    %%insn_00413a50:
    inc eax ; 00413A50 40
    %if ($ - %%insn_00413a50) > 1
        %error "LONG_00413A50"
    %endif
    times 1 - ($ - %%insn_00413a50) db 0
    %%insn_00413a51:
    inc edx ; 00413A51 42
    %if ($ - %%insn_00413a51) > 1
        %error "LONG_00413A51"
    %endif
    times 1 - ($ - %%insn_00413a51) db 0
    %%insn_00413a52:
    test cl,cl ; 00413A52 84C9
    %if ($ - %%insn_00413a52) > 2
        %error "LONG_00413A52"
    %endif
    times 2 - ($ - %%insn_00413a52) db 0
    %%insn_00413a54:
    jnz short 0x413a4b ; 00413A54 75F5
    %if ($ - %%insn_00413a54) > 2
        %error "LONG_00413A54"
    %endif
    times 2 - ($ - %%insn_00413a54) db 0
    %%insn_00413a56:
    mov byte [eax],0x73 ; 00413A56 C60073
    %if ($ - %%insn_00413a56) > 3
        %error "LONG_00413A56"
    %endif
    times 3 - ($ - %%insn_00413a56) db 0
    %%insn_00413a59:
    inc eax ; 00413A59 40
    %if ($ - %%insn_00413a59) > 1
        %error "LONG_00413A59"
    %endif
    times 1 - ($ - %%insn_00413a59) db 0
    %%insn_00413a5a:
    mov byte [eax],0x73 ; 00413A5A C60073
    %if ($ - %%insn_00413a5a) > 3
        %error "LONG_00413A5A"
    %endif
    times 3 - ($ - %%insn_00413a5a) db 0
    %%insn_00413a5d:
    mov byte [eax+0x1],0x0 ; 00413A5D C6400100
    %if ($ - %%insn_00413a5d) > 4
        %error "LONG_00413A5D"
    %endif
    times 4 - ($ - %%insn_00413a5d) db 0
    %%insn_00413a61:
    mov edx,[esp+0x14] ; 00413A61 8B542414
    %if ($ - %%insn_00413a61) > 4
        %error "LONG_00413A61"
    %endif
    times 4 - ($ - %%insn_00413a61) db 0
    %%insn_00413a65:
    push edx ; 00413A65 52
    %if ($ - %%insn_00413a65) > 1
        %error "LONG_00413A65"
    %endif
    times 1 - ($ - %%insn_00413a65) db 0
    %%insn_00413a66:
    call 0x40c9a0 ; 00413A66 E8358FFFFF
    %if ($ - %%insn_00413a66) > 5
        %error "LONG_00413A66"
    %endif
    times 5 - ($ - %%insn_00413a66) db 0
    %%insn_00413a6b:
    add esp,0x4 ; 00413A6B 83C404
    %if ($ - %%insn_00413a6b) > 3
        %error "LONG_00413A6B"
    %endif
    times 3 - ($ - %%insn_00413a6b) db 0
    db 0x33, 0xC0 ; 00413A6E 33C0 | xor eax,eax | encoding preserved
    %%insn_00413a70:
    pop edi ; 00413A70 5F
    %if ($ - %%insn_00413a70) > 1
        %error "LONG_00413A70"
    %endif
    times 1 - ($ - %%insn_00413a70) db 0
    %%insn_00413a71:
    pop esi ; 00413A71 5E
    %if ($ - %%insn_00413a71) > 1
        %error "LONG_00413A71"
    %endif
    times 1 - ($ - %%insn_00413a71) db 0
    %%insn_00413a72:
    add esp,0x8 ; 00413A72 83C408
    %if ($ - %%insn_00413a72) > 3
        %error "LONG_00413A72"
    %endif
    times 3 - ($ - %%insn_00413a72) db 0
    %%insn_00413a75:
    ret ; 00413A75 C3
    %if ($ - %%insn_00413a75) > 1
        %error "LONG_00413A75"
    %endif
    times 1 - ($ - %%insn_00413a75) db 0
    %if ($ - %%fragment_start) != 246
        %error "function fragment size drift: 00413980"
    %endif
%endmacro
