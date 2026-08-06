; PE virtual entry 00408A80
; Ghidra working symbol: FUN_00408a80
; Verified parameterized VDX LZSS decoder: LSB-first flags, zero-word terminator, length=(token&mask)+3, and overlapping output-distance copies.
; Generated losslessly; preserve byte identity after edits.

%macro emit_decompress_vdx_lzss_part_00 0
    %%fragment_start:
decompress_vdx_lzss:
    %%insn_00408a80:
    push ebp ; 00408A80 55
    %if ($ - %%insn_00408a80) > 1
        %error "LONG_00408A80"
    %endif
    times 1 - ($ - %%insn_00408a80) db 0
    db 0x8B, 0xEC ; 00408A81 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408a83:
    sub esp,0x18 ; 00408A83 83EC18
    %if ($ - %%insn_00408a83) > 3
        %error "LONG_00408A83"
    %endif
    times 3 - ($ - %%insn_00408a83) db 0
    %%insn_00408a86:
    mov dword [ebp-0xc],0x0 ; 00408A86 C745F400000000
    %if ($ - %%insn_00408a86) > 7
        %error "LONG_00408A86"
    %endif
    times 7 - ($ - %%insn_00408a86) db 0
    %%insn_00408a8d:
    mov byte [ebp-0x14],0x1 ; 00408A8D C645EC01
    %if ($ - %%insn_00408a8d) > 4
        %error "LONG_00408A8D"
    %endif
    times 4 - ($ - %%insn_00408a8d) db 0
    %%insn_00408a91:
    mov byte [ebp-0x4],0x0 ; 00408A91 C645FC00
    %if ($ - %%insn_00408a91) > 4
        %error "LONG_00408A91"
    %endif
    times 4 - ($ - %%insn_00408a91) db 0
    %%insn_00408a95:
    mov al,[ebp-0x14] ; 00408A95 8A45EC
    %if ($ - %%insn_00408a95) > 3
        %error "LONG_00408A95"
    %endif
    times 3 - ($ - %%insn_00408a95) db 0
    %%insn_00408a98:
    sub al,0x1 ; 00408A98 2C01
    %if ($ - %%insn_00408a98) > 2
        %error "LONG_00408A98"
    %endif
    times 2 - ($ - %%insn_00408a98) db 0
    %%insn_00408a9a:
    mov [ebp-0x14],al ; 00408A9A 8845EC
    %if ($ - %%insn_00408a9a) > 3
        %error "LONG_00408A9A"
    %endif
    times 3 - ($ - %%insn_00408a9a) db 0
    %%insn_00408a9d:
    mov ecx,[ebp-0x14] ; 00408A9D 8B4DEC
    %if ($ - %%insn_00408a9d) > 3
        %error "LONG_00408A9D"
    %endif
    times 3 - ($ - %%insn_00408a9d) db 0
    %%insn_00408aa0:
    and ecx,0xff ; 00408AA0 81E1FF000000
    %if ($ - %%insn_00408aa0) > 6
        %error "LONG_00408AA0"
    %endif
    times 6 - ($ - %%insn_00408aa0) db 0
    %%insn_00408aa6:
    test ecx,ecx ; 00408AA6 85C9
    %if ($ - %%insn_00408aa6) > 2
        %error "LONG_00408AA6"
    %endif
    times 2 - ($ - %%insn_00408aa6) db 0
    %%insn_00408aa8:
    jnz short 0x408abf ; 00408AA8 7515
    %if ($ - %%insn_00408aa8) > 2
        %error "LONG_00408AA8"
    %endif
    times 2 - ($ - %%insn_00408aa8) db 0
    %%insn_00408aaa:
    mov edx,[ebp+0x8] ; 00408AAA 8B5508
    %if ($ - %%insn_00408aaa) > 3
        %error "LONG_00408AAA"
    %endif
    times 3 - ($ - %%insn_00408aaa) db 0
    %%insn_00408aad:
    mov al,[edx] ; 00408AAD 8A02
    %if ($ - %%insn_00408aad) > 2
        %error "LONG_00408AAD"
    %endif
    times 2 - ($ - %%insn_00408aad) db 0
    %%insn_00408aaf:
    mov [ebp-0x4],al ; 00408AAF 8845FC
    %if ($ - %%insn_00408aaf) > 3
        %error "LONG_00408AAF"
    %endif
    times 3 - ($ - %%insn_00408aaf) db 0
    %%insn_00408ab2:
    mov ecx,[ebp+0x8] ; 00408AB2 8B4D08
    %if ($ - %%insn_00408ab2) > 3
        %error "LONG_00408AB2"
    %endif
    times 3 - ($ - %%insn_00408ab2) db 0
    %%insn_00408ab5:
    add ecx,0x1 ; 00408AB5 83C101
    %if ($ - %%insn_00408ab5) > 3
        %error "LONG_00408AB5"
    %endif
    times 3 - ($ - %%insn_00408ab5) db 0
    %%insn_00408ab8:
    mov [ebp+0x8],ecx ; 00408AB8 894D08
    %if ($ - %%insn_00408ab8) > 3
        %error "LONG_00408AB8"
    %endif
    times 3 - ($ - %%insn_00408ab8) db 0
    %%insn_00408abb:
    mov byte [ebp-0x14],0x8 ; 00408ABB C645EC08
    %if ($ - %%insn_00408abb) > 4
        %error "LONG_00408ABB"
    %endif
    times 4 - ($ - %%insn_00408abb) db 0
    %%insn_00408abf:
    mov edx,[ebp-0x4] ; 00408ABF 8B55FC
    %if ($ - %%insn_00408abf) > 3
        %error "LONG_00408ABF"
    %endif
    times 3 - ($ - %%insn_00408abf) db 0
    %%insn_00408ac2:
    and edx,0xff ; 00408AC2 81E2FF000000
    %if ($ - %%insn_00408ac2) > 6
        %error "LONG_00408AC2"
    %endif
    times 6 - ($ - %%insn_00408ac2) db 0
    %%insn_00408ac8:
    and edx,0x1 ; 00408AC8 83E201
    %if ($ - %%insn_00408ac8) > 3
        %error "LONG_00408AC8"
    %endif
    times 3 - ($ - %%insn_00408ac8) db 0
    %%insn_00408acb:
    test edx,edx ; 00408ACB 85D2
    %if ($ - %%insn_00408acb) > 2
        %error "LONG_00408ACB"
    %endif
    times 2 - ($ - %%insn_00408acb) db 0
    %%insn_00408acd:
    jz short 0x408af9 ; 00408ACD 742A
    %if ($ - %%insn_00408acd) > 2
        %error "LONG_00408ACD"
    %endif
    times 2 - ($ - %%insn_00408acd) db 0
    %%insn_00408acf:
    mov eax,[ebp+0xc] ; 00408ACF 8B450C
    %if ($ - %%insn_00408acf) > 3
        %error "LONG_00408ACF"
    %endif
    times 3 - ($ - %%insn_00408acf) db 0
    %%insn_00408ad2:
    mov ecx,[ebp+0x8] ; 00408AD2 8B4D08
    %if ($ - %%insn_00408ad2) > 3
        %error "LONG_00408AD2"
    %endif
    times 3 - ($ - %%insn_00408ad2) db 0
    %%insn_00408ad5:
    mov dl,[ecx] ; 00408AD5 8A11
    %if ($ - %%insn_00408ad5) > 2
        %error "LONG_00408AD5"
    %endif
    times 2 - ($ - %%insn_00408ad5) db 0
    %%insn_00408ad7:
    mov [eax],dl ; 00408AD7 8810
    %if ($ - %%insn_00408ad7) > 2
        %error "LONG_00408AD7"
    %endif
    times 2 - ($ - %%insn_00408ad7) db 0
    %%insn_00408ad9:
    mov eax,[ebp+0xc] ; 00408AD9 8B450C
    %if ($ - %%insn_00408ad9) > 3
        %error "LONG_00408AD9"
    %endif
    times 3 - ($ - %%insn_00408ad9) db 0
    %%insn_00408adc:
    add eax,0x1 ; 00408ADC 83C001
    %if ($ - %%insn_00408adc) > 3
        %error "LONG_00408ADC"
    %endif
    times 3 - ($ - %%insn_00408adc) db 0
    %%insn_00408adf:
    mov [ebp+0xc],eax ; 00408ADF 89450C
    %if ($ - %%insn_00408adf) > 3
        %error "LONG_00408ADF"
    %endif
    times 3 - ($ - %%insn_00408adf) db 0
    %%insn_00408ae2:
    mov ecx,[ebp+0x8] ; 00408AE2 8B4D08
    %if ($ - %%insn_00408ae2) > 3
        %error "LONG_00408AE2"
    %endif
    times 3 - ($ - %%insn_00408ae2) db 0
    %%insn_00408ae5:
    add ecx,0x1 ; 00408AE5 83C101
    %if ($ - %%insn_00408ae5) > 3
        %error "LONG_00408AE5"
    %endif
    times 3 - ($ - %%insn_00408ae5) db 0
    %%insn_00408ae8:
    mov [ebp+0x8],ecx ; 00408AE8 894D08
    %if ($ - %%insn_00408ae8) > 3
        %error "LONG_00408AE8"
    %endif
    times 3 - ($ - %%insn_00408ae8) db 0
    %%insn_00408aeb:
    mov edx,[ebp-0xc] ; 00408AEB 8B55F4
    %if ($ - %%insn_00408aeb) > 3
        %error "LONG_00408AEB"
    %endif
    times 3 - ($ - %%insn_00408aeb) db 0
    %%insn_00408aee:
    add edx,0x1 ; 00408AEE 83C201
    %if ($ - %%insn_00408aee) > 3
        %error "LONG_00408AEE"
    %endif
    times 3 - ($ - %%insn_00408aee) db 0
    %%insn_00408af1:
    mov [ebp-0xc],edx ; 00408AF1 8955F4
    %if ($ - %%insn_00408af1) > 3
        %error "LONG_00408AF1"
    %endif
    times 3 - ($ - %%insn_00408af1) db 0
    %%insn_00408af4:
    jmp 0x408ba0 ; 00408AF4 E9A7000000
    %if ($ - %%insn_00408af4) > 5
        %error "LONG_00408AF4"
    %endif
    times 5 - ($ - %%insn_00408af4) db 0
    %%insn_00408af9:
    mov eax,[ebp+0x8] ; 00408AF9 8B4508
    %if ($ - %%insn_00408af9) > 3
        %error "LONG_00408AF9"
    %endif
    times 3 - ($ - %%insn_00408af9) db 0
    %%insn_00408afc:
    movzx cx,byte [eax] ; 00408AFC 660FB608
    %if ($ - %%insn_00408afc) > 4
        %error "LONG_00408AFC"
    %endif
    times 4 - ($ - %%insn_00408afc) db 0
    %%insn_00408b00:
    mov [ebp-0x8],cx ; 00408B00 66894DF8
    %if ($ - %%insn_00408b00) > 4
        %error "LONG_00408B00"
    %endif
    times 4 - ($ - %%insn_00408b00) db 0
    %%insn_00408b04:
    mov edx,[ebp+0x8] ; 00408B04 8B5508
    %if ($ - %%insn_00408b04) > 3
        %error "LONG_00408B04"
    %endif
    times 3 - ($ - %%insn_00408b04) db 0
    %%insn_00408b07:
    add edx,0x1 ; 00408B07 83C201
    %if ($ - %%insn_00408b07) > 3
        %error "LONG_00408B07"
    %endif
    times 3 - ($ - %%insn_00408b07) db 0
    %%insn_00408b0a:
    mov [ebp+0x8],edx ; 00408B0A 895508
    %if ($ - %%insn_00408b0a) > 3
        %error "LONG_00408B0A"
    %endif
    times 3 - ($ - %%insn_00408b0a) db 0
    %%insn_00408b0d:
    mov eax,[ebp+0x8] ; 00408B0D 8B4508
    %if ($ - %%insn_00408b0d) > 3
        %error "LONG_00408B0D"
    %endif
    times 3 - ($ - %%insn_00408b0d) db 0
    db 0x33, 0xC9 ; 00408B10 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00408b12:
    mov cl,[eax] ; 00408B12 8A08
    %if ($ - %%insn_00408b12) > 2
        %error "LONG_00408B12"
    %endif
    times 2 - ($ - %%insn_00408b12) db 0
    %%insn_00408b14:
    shl ecx,byte 0x8 ; 00408B14 C1E108
    %if ($ - %%insn_00408b14) > 3
        %error "LONG_00408B14"
    %endif
    times 3 - ($ - %%insn_00408b14) db 0
    %%insn_00408b17:
    mov dx,[ebp-0x8] ; 00408B17 668B55F8
    %if ($ - %%insn_00408b17) > 4
        %error "LONG_00408B17"
    %endif
    times 4 - ($ - %%insn_00408b17) db 0
    db 0x66, 0x03, 0xD1 ; 00408B1B 6603D1 | add dx,cx | encoding preserved
    %%insn_00408b1e:
    mov [ebp-0x8],dx ; 00408B1E 668955F8
    %if ($ - %%insn_00408b1e) > 4
        %error "LONG_00408B1E"
    %endif
    times 4 - ($ - %%insn_00408b1e) db 0
    %%insn_00408b22:
    mov eax,[ebp+0x8] ; 00408B22 8B4508
    %if ($ - %%insn_00408b22) > 3
        %error "LONG_00408B22"
    %endif
    times 3 - ($ - %%insn_00408b22) db 0
    %%insn_00408b25:
    add eax,0x1 ; 00408B25 83C001
    %if ($ - %%insn_00408b25) > 3
        %error "LONG_00408B25"
    %endif
    times 3 - ($ - %%insn_00408b25) db 0
    %%insn_00408b28:
    mov [ebp+0x8],eax ; 00408B28 894508
    %if ($ - %%insn_00408b28) > 3
        %error "LONG_00408B28"
    %endif
    times 3 - ($ - %%insn_00408b28) db 0
    %%insn_00408b2b:
    mov ecx,[ebp-0x8] ; 00408B2B 8B4DF8
    %if ($ - %%insn_00408b2b) > 3
        %error "LONG_00408B2B"
    %endif
    times 3 - ($ - %%insn_00408b2b) db 0
    %%insn_00408b2e:
    and ecx,0xffff ; 00408B2E 81E1FFFF0000
    %if ($ - %%insn_00408b2e) > 6
        %error "LONG_00408B2E"
    %endif
    times 6 - ($ - %%insn_00408b2e) db 0
    %%insn_00408b34:
    test ecx,ecx ; 00408B34 85C9
    %if ($ - %%insn_00408b34) > 2
        %error "LONG_00408B34"
    %endif
    times 2 - ($ - %%insn_00408b34) db 0
    %%insn_00408b36:
    jnz short 0x408b3a ; 00408B36 7502
    %if ($ - %%insn_00408b36) > 2
        %error "LONG_00408B36"
    %endif
    times 2 - ($ - %%insn_00408b36) db 0
    %%insn_00408b38:
    jmp short 0x408bad ; 00408B38 EB73
    %if ($ - %%insn_00408b38) > 2
        %error "LONG_00408B38"
    %endif
    times 2 - ($ - %%insn_00408b38) db 0
    %%insn_00408b3a:
    mov edx,[ebp-0x8] ; 00408B3A 8B55F8
    %if ($ - %%insn_00408b3a) > 3
        %error "LONG_00408B3A"
    %endif
    times 3 - ($ - %%insn_00408b3a) db 0
    %%insn_00408b3d:
    and edx,0xffff ; 00408B3D 81E2FFFF0000
    %if ($ - %%insn_00408b3d) > 6
        %error "LONG_00408B3D"
    %endif
    times 6 - ($ - %%insn_00408b3d) db 0
    %%insn_00408b43:
    movsx eax,word [ebp+0x10] ; 00408B43 0FBF4510
    %if ($ - %%insn_00408b43) > 4
        %error "LONG_00408B43"
    %endif
    times 4 - ($ - %%insn_00408b43) db 0
    db 0x23, 0xD0 ; 00408B47 23D0 | and edx,eax | encoding preserved
    %%insn_00408b49:
    add edx,0x3 ; 00408B49 83C203
    %if ($ - %%insn_00408b49) > 3
        %error "LONG_00408B49"
    %endif
    times 3 - ($ - %%insn_00408b49) db 0
    %%insn_00408b4c:
    mov [ebp-0x18],dx ; 00408B4C 668955E8
    %if ($ - %%insn_00408b4c) > 4
        %error "LONG_00408B4C"
    %endif
    times 4 - ($ - %%insn_00408b4c) db 0
    %%insn_00408b50:
    mov edx,[ebp-0x8] ; 00408B50 8B55F8
    %if ($ - %%insn_00408b50) > 3
        %error "LONG_00408B50"
    %endif
    times 3 - ($ - %%insn_00408b50) db 0
    %%insn_00408b53:
    and edx,0xffff ; 00408B53 81E2FFFF0000
    %if ($ - %%insn_00408b53) > 6
        %error "LONG_00408B53"
    %endif
    times 6 - ($ - %%insn_00408b53) db 0
    %%insn_00408b59:
    movsx ecx,word [ebp+0x14] ; 00408B59 0FBF4D14
    %if ($ - %%insn_00408b59) > 4
        %error "LONG_00408B59"
    %endif
    times 4 - ($ - %%insn_00408b59) db 0
    %%insn_00408b5d:
    sar edx,cl ; 00408B5D D3FA
    %if ($ - %%insn_00408b5d) > 2
        %error "LONG_00408B5D"
    %endif
    times 2 - ($ - %%insn_00408b5d) db 0
    %%insn_00408b5f:
    mov [ebp-0x10],dx ; 00408B5F 668955F0
    %if ($ - %%insn_00408b5f) > 4
        %error "LONG_00408B5F"
    %endif
    times 4 - ($ - %%insn_00408b5f) db 0
    %%insn_00408b63:
    movsx eax,word [ebp-0x18] ; 00408B63 0FBF45E8
    %if ($ - %%insn_00408b63) > 4
        %error "LONG_00408B63"
    %endif
    times 4 - ($ - %%insn_00408b63) db 0
    %%insn_00408b67:
    mov ecx,[ebp-0xc] ; 00408B67 8B4DF4
    %if ($ - %%insn_00408b67) > 3
        %error "LONG_00408B67"
    %endif
    times 3 - ($ - %%insn_00408b67) db 0
    db 0x03, 0xC8 ; 00408B6A 03C8 | add ecx,eax | encoding preserved
    %%insn_00408b6c:
    mov [ebp-0xc],ecx ; 00408B6C 894DF4
    %if ($ - %%insn_00408b6c) > 3
        %error "LONG_00408B6C"
    %endif
    times 3 - ($ - %%insn_00408b6c) db 0
    %%insn_00408b6f:
    jmp short 0x408b86 ; 00408B6F EB15
    %if ($ - %%insn_00408b6f) > 2
        %error "LONG_00408B6F"
    %endif
    times 2 - ($ - %%insn_00408b6f) db 0
    %%insn_00408b71:
    mov dx,[ebp-0x18] ; 00408B71 668B55E8
    %if ($ - %%insn_00408b71) > 4
        %error "LONG_00408B71"
    %endif
    times 4 - ($ - %%insn_00408b71) db 0
    %%insn_00408b75:
    sub dx,0x1 ; 00408B75 6683EA01
    %if ($ - %%insn_00408b75) > 4
        %error "LONG_00408B75"
    %endif
    times 4 - ($ - %%insn_00408b75) db 0
    %%insn_00408b79:
    mov [ebp-0x18],dx ; 00408B79 668955E8
    %if ($ - %%insn_00408b79) > 4
        %error "LONG_00408B79"
    %endif
    times 4 - ($ - %%insn_00408b79) db 0
    %%insn_00408b7d:
    mov eax,[ebp+0xc] ; 00408B7D 8B450C
    %if ($ - %%insn_00408b7d) > 3
        %error "LONG_00408B7D"
    %endif
    times 3 - ($ - %%insn_00408b7d) db 0
    %%insn_00408b80:
    add eax,0x1 ; 00408B80 83C001
    %if ($ - %%insn_00408b80) > 3
        %error "LONG_00408B80"
    %endif
    times 3 - ($ - %%insn_00408b80) db 0
    %%insn_00408b83:
    mov [ebp+0xc],eax ; 00408B83 89450C
    %if ($ - %%insn_00408b83) > 3
        %error "LONG_00408B83"
    %endif
    times 3 - ($ - %%insn_00408b83) db 0
    %%insn_00408b86:
    movsx ecx,word [ebp-0x18] ; 00408B86 0FBF4DE8
    %if ($ - %%insn_00408b86) > 4
        %error "LONG_00408B86"
    %endif
    times 4 - ($ - %%insn_00408b86) db 0
    %%insn_00408b8a:
    test ecx,ecx ; 00408B8A 85C9
    %if ($ - %%insn_00408b8a) > 2
        %error "LONG_00408B8A"
    %endif
    times 2 - ($ - %%insn_00408b8a) db 0
    %%insn_00408b8c:
    jng short 0x408ba0 ; 00408B8C 7E12
    %if ($ - %%insn_00408b8c) > 2
        %error "LONG_00408B8C"
    %endif
    times 2 - ($ - %%insn_00408b8c) db 0
    %%insn_00408b8e:
    movsx edx,word [ebp-0x10] ; 00408B8E 0FBF55F0
    %if ($ - %%insn_00408b8e) > 4
        %error "LONG_00408B8E"
    %endif
    times 4 - ($ - %%insn_00408b8e) db 0
    %%insn_00408b92:
    mov eax,[ebp+0xc] ; 00408B92 8B450C
    %if ($ - %%insn_00408b92) > 3
        %error "LONG_00408B92"
    %endif
    times 3 - ($ - %%insn_00408b92) db 0
    db 0x2B, 0xC2 ; 00408B95 2BC2 | sub eax,edx | encoding preserved
    %%insn_00408b97:
    mov ecx,[ebp+0xc] ; 00408B97 8B4D0C
    %if ($ - %%insn_00408b97) > 3
        %error "LONG_00408B97"
    %endif
    times 3 - ($ - %%insn_00408b97) db 0
    %%insn_00408b9a:
    mov dl,[eax] ; 00408B9A 8A10
    %if ($ - %%insn_00408b9a) > 2
        %error "LONG_00408B9A"
    %endif
    times 2 - ($ - %%insn_00408b9a) db 0
    %%insn_00408b9c:
    mov [ecx],dl ; 00408B9C 8811
    %if ($ - %%insn_00408b9c) > 2
        %error "LONG_00408B9C"
    %endif
    times 2 - ($ - %%insn_00408b9c) db 0
    %%insn_00408b9e:
    jmp short 0x408b71 ; 00408B9E EBD1
    %if ($ - %%insn_00408b9e) > 2
        %error "LONG_00408B9E"
    %endif
    times 2 - ($ - %%insn_00408b9e) db 0
    %%insn_00408ba0:
    mov al,[ebp-0x4] ; 00408BA0 8A45FC
    %if ($ - %%insn_00408ba0) > 3
        %error "LONG_00408BA0"
    %endif
    times 3 - ($ - %%insn_00408ba0) db 0
    %%insn_00408ba3:
    shr al,1 ; 00408BA3 D0E8
    %if ($ - %%insn_00408ba3) > 2
        %error "LONG_00408BA3"
    %endif
    times 2 - ($ - %%insn_00408ba3) db 0
    %%insn_00408ba5:
    mov [ebp-0x4],al ; 00408BA5 8845FC
    %if ($ - %%insn_00408ba5) > 3
        %error "LONG_00408BA5"
    %endif
    times 3 - ($ - %%insn_00408ba5) db 0
    %%insn_00408ba8:
    jmp 0x408a95 ; 00408BA8 E9E8FEFFFF
    %if ($ - %%insn_00408ba8) > 5
        %error "LONG_00408BA8"
    %endif
    times 5 - ($ - %%insn_00408ba8) db 0
    %%insn_00408bad:
    mov eax,[ebp-0xc] ; 00408BAD 8B45F4
    %if ($ - %%insn_00408bad) > 3
        %error "LONG_00408BAD"
    %endif
    times 3 - ($ - %%insn_00408bad) db 0
    db 0x8B, 0xE5 ; 00408BB0 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00408bb2:
    pop ebp ; 00408BB2 5D
    %if ($ - %%insn_00408bb2) > 1
        %error "LONG_00408BB2"
    %endif
    times 1 - ($ - %%insn_00408bb2) db 0
    %%insn_00408bb3:
    ret ; 00408BB3 C3
    %if ($ - %%insn_00408bb3) > 1
        %error "LONG_00408BB3"
    %endif
    times 1 - ($ - %%insn_00408bb3) db 0
    %if ($ - %%fragment_start) != 308
        %error "function fragment size drift: 00408A80"
    %endif
%endmacro
