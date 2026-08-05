; Linear entry 02997 (1000:2997)
; Ghidra working symbol: FUN_1000_2997
; Verified VDX chunk-stream/refill path; distinguishes interleaved 80h PCM from visual chunks while one VIDEOREF remains synchronous.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_stream_media_buffer_part_00 0
    %%fragment_start:
stream_media_buffer:
    %%insn_02997:
    cmp word [bp-0x1b8a],0x80 ; 02997 81BE76E48000
    %if ($ - %%insn_02997) > 6
        %error "LONG_02997"
    %endif
    times 6 - ($ - %%insn_02997) db 0
    %%insn_0299d:
    jnz short 0x29a3 ; 0299D 7504
    %if ($ - %%insn_0299d) > 2
        %error "LONG_0299D"
    %endif
    times 2 - ($ - %%insn_0299d) db 0
    %%insn_0299f:
    call 0x21b ; 0299F E879D8
    %if ($ - %%insn_0299f) > 3
        %error "LONG_0299F"
    %endif
    times 3 - ($ - %%insn_0299f) db 0
    %%insn_029a2:
    ret ; 029A2 C3
    %if ($ - %%insn_029a2) > 1
        %error "LONG_029A2"
    %endif
    times 1 - ($ - %%insn_029a2) db 0
    %%insn_029a3:
    push es ; 029A3 06
    %if ($ - %%insn_029a3) > 1
        %error "LONG_029A3"
    %endif
    times 1 - ($ - %%insn_029a3) db 0
    %%insn_029a4:
    push ds ; 029A4 1E
    %if ($ - %%insn_029a4) > 1
        %error "LONG_029A4"
    %endif
    times 1 - ($ - %%insn_029a4) db 0
    %%insn_029a5:
    pusha ; 029A5 60
    %if ($ - %%insn_029a5) > 1
        %error "LONG_029A5"
    %endif
    times 1 - ($ - %%insn_029a5) db 0
    %%insn_029a6:
    cmp ah,0x77 ; 029A6 80FC77
    %if ($ - %%insn_029a6) > 3
        %error "LONG_029A6"
    %endif
    times 3 - ($ - %%insn_029a6) db 0
    %%insn_029a9:
    jnz short 0x29df ; 029A9 7534
    %if ($ - %%insn_029a9) > 2
        %error "LONG_029A9"
    %endif
    times 2 - ($ - %%insn_029a9) db 0
    %%insn_029ab:
    mov ax,[si+0x6] ; 029AB 8B4406
    %if ($ - %%insn_029ab) > 3
        %error "LONG_029AB"
    %endif
    times 3 - ($ - %%insn_029ab) db 0
    %%insn_029ae:
    mov [cs:0x2383],ah ; 029AE 2E88268323
    %if ($ - %%insn_029ae) > 5
        %error "LONG_029AE"
    %endif
    times 5 - ($ - %%insn_029ae) db 0
    %%insn_029b3:
    mov [cs:0x2386],al ; 029B3 2EA28623
    %if ($ - %%insn_029b3) > 4
        %error "LONG_029B3"
    %endif
    times 4 - ($ - %%insn_029b3) db 0
    %%insn_029b7:
    mov ax,[bp-0x2aac] ; 029B7 8B8654D5
    %if ($ - %%insn_029b7) > 4
        %error "LONG_029B7"
    %endif
    times 4 - ($ - %%insn_029b7) db 0
    %%insn_029bb:
    mov ds,ax ; 029BB 8ED8
    %if ($ - %%insn_029bb) > 2
        %error "LONG_029BB"
    %endif
    times 2 - ($ - %%insn_029bb) db 0
    %%insn_029bd:
    call 0x21b ; 029BD E85BD8
    %if ($ - %%insn_029bd) > 3
        %error "LONG_029BD"
    %endif
    times 3 - ($ - %%insn_029bd) db 0
    %%insn_029c0:
    mov es,word [bp-0x2ab2] ; 029C0 8E864ED5
    %if ($ - %%insn_029c0) > 4
        %error "LONG_029C0"
    %endif
    times 4 - ($ - %%insn_029c0) db 0
    db 0x33, 0xF6 ; 029C4 33F6 | xor si,si | encoding preserved
    %%insn_029c6:
    mov di,[bp-0x2b76] ; 029C6 8BBE8AD4
    %if ($ - %%insn_029c6) > 4
        %error "LONG_029C6"
    %endif
    times 4 - ($ - %%insn_029c6) db 0
    %%insn_029ca:
    add di,[bp-0x2b78] ; 029CA 03BE88D4
    %if ($ - %%insn_029ca) > 4
        %error "LONG_029CA"
    %endif
    times 4 - ($ - %%insn_029ca) db 0
    %%insn_029ce:
    call 0x236a ; 029CE E899F9
    %if ($ - %%insn_029ce) > 3
        %error "LONG_029CE"
    %endif
    times 3 - ($ - %%insn_029ce) db 0
    %%insn_029d1:
    sub di,[bp-0x2b76] ; 029D1 2BBE8AD4
    %if ($ - %%insn_029d1) > 4
        %error "LONG_029D1"
    %endif
    times 4 - ($ - %%insn_029d1) db 0
    %%insn_029d5:
    sub di,[bp-0x2b78] ; 029D5 2BBE88D4
    %if ($ - %%insn_029d5) > 4
        %error "LONG_029D5"
    %endif
    times 4 - ($ - %%insn_029d5) db 0
    %%insn_029d9:
    add [bp-0x2b78],di ; 029D9 01BE88D4
    %if ($ - %%insn_029d9) > 4
        %error "LONG_029D9"
    %endif
    times 4 - ($ - %%insn_029d9) db 0
    %%insn_029dd:
    jmp short 0x2a0f ; 029DD EB30
    %if ($ - %%insn_029dd) > 2
        %error "LONG_029DD"
    %endif
    times 2 - ($ - %%insn_029dd) db 0
    %%insn_029df:
    mov ds,word [bp-0x2ab2] ; 029DF 8E9E4ED5
    %if ($ - %%insn_029df) > 4
        %error "LONG_029DF"
    %endif
    times 4 - ($ - %%insn_029df) db 0
    %%insn_029e3:
    mov dx,[bp-0x2b76] ; 029E3 8B968AD4
    %if ($ - %%insn_029e3) > 4
        %error "LONG_029E3"
    %endif
    times 4 - ($ - %%insn_029e3) db 0
    %%insn_029e7:
    add dx,[bp-0x2b78] ; 029E7 039688D4
    %if ($ - %%insn_029e7) > 4
        %error "LONG_029E7"
    %endif
    times 4 - ($ - %%insn_029e7) db 0
    %%insn_029eb:
    add [bp-0x2b78],cx ; 029EB 018E88D4
    %if ($ - %%insn_029eb) > 4
        %error "LONG_029EB"
    %endif
    times 4 - ($ - %%insn_029eb) db 0
    db 0x8B, 0xC2 ; 029EF 8BC2 | mov ax,dx | encoding preserved
    db 0x03, 0xC1 ; 029F1 03C1 | add ax,cx | encoding preserved
    %%insn_029f3:
    jnc short 0x2a0c ; 029F3 7317
    %if ($ - %%insn_029f3) > 2
        %error "LONG_029F3"
    %endif
    times 2 - ($ - %%insn_029f3) db 0
    db 0x2B, 0xC8 ; 029F5 2BC8 | sub cx,ax | encoding preserved
    %%insn_029f7:
    push ax ; 029F7 50
    %if ($ - %%insn_029f7) > 1
        %error "LONG_029F7"
    %endif
    times 1 - ($ - %%insn_029f7) db 0
    %%insn_029f8:
    push word [bp-0x30ca] ; 029F8 FFB636CF
    %if ($ - %%insn_029f8) > 4
        %error "LONG_029F8"
    %endif
    times 4 - ($ - %%insn_029f8) db 0
    %%insn_029fc:
    mov word [bp-0x30ca],0x0 ; 029FC C78636CF0000
    %if ($ - %%insn_029fc) > 6
        %error "LONG_029FC"
    %endif
    times 6 - ($ - %%insn_029fc) db 0
    %%insn_02a02:
    call 0x21b ; 02A02 E816D8
    %if ($ - %%insn_02a02) > 3
        %error "LONG_02A02"
    %endif
    times 3 - ($ - %%insn_02a02) db 0
    %%insn_02a05:
    pop word [bp-0x30ca] ; 02A05 8F8636CF
    %if ($ - %%insn_02a05) > 4
        %error "LONG_02A05"
    %endif
    times 4 - ($ - %%insn_02a05) db 0
    %%insn_02a09:
    pop cx ; 02A09 59
    %if ($ - %%insn_02a09) > 1
        %error "LONG_02A09"
    %endif
    times 1 - ($ - %%insn_02a09) db 0
    db 0x33, 0xD2 ; 02A0A 33D2 | xor dx,dx | encoding preserved
    %%insn_02a0c:
    call 0x21b ; 02A0C E80CD8
    %if ($ - %%insn_02a0c) > 3
        %error "LONG_02A0C"
    %endif
    times 3 - ($ - %%insn_02a0c) db 0
    %%insn_02a0f:
    cmp byte [bp-0x1f3a],0x0 ; 02A0F 80BEC6E000
    %if ($ - %%insn_02a0f) > 5
        %error "LONG_02A0F"
    %endif
    times 5 - ($ - %%insn_02a0f) db 0
    %%insn_02a14:
    jnz 0x2b19 ; 02A14 0F850101
    %if ($ - %%insn_02a14) > 4
        %error "LONG_02A14"
    %endif
    times 4 - ($ - %%insn_02a14) db 0
    %%insn_02a18:
    mov ds,word [bp-0x2aae] ; 02A18 8E9E52D5
    %if ($ - %%insn_02a18) > 4
        %error "LONG_02A18"
    %endif
    times 4 - ($ - %%insn_02a18) db 0
    db 0x33, 0xC0 ; 02A1C 33C0 | xor ax,ax | encoding preserved
    %%insn_02a1e:
    push ds ; 02A1E 1E
    %if ($ - %%insn_02a1e) > 1
        %error "LONG_02A1E"
    %endif
    times 1 - ($ - %%insn_02a1e) db 0
    %%insn_02a1f:
    push ax ; 02A1F 50
    %if ($ - %%insn_02a1f) > 1
        %error "LONG_02A1F"
    %endif
    times 1 - ($ - %%insn_02a1f) db 0
    %%insn_02a20:
    push word [0xe434] ; 02A20 FF3634E4
    %if ($ - %%insn_02a20) > 4
        %error "LONG_02A20"
    %endif
    times 4 - ($ - %%insn_02a20) db 0
    %%insn_02a24:
    call word 0x702:word 0xc74 ; 02A24 9A740C0207
    %if ($ - %%insn_02a24) > 5
        %error "LONG_02A24"
    %endif
    times 5 - ($ - %%insn_02a24) db 0
    %%insn_02a29:
    add sp,0x4 ; 02A29 83C404
    %if ($ - %%insn_02a29) > 3
        %error "LONG_02A29"
    %endif
    times 3 - ($ - %%insn_02a29) db 0
    %%insn_02a2c:
    pop ds ; 02A2C 1F
    %if ($ - %%insn_02a2c) > 1
        %error "LONG_02A2C"
    %endif
    times 1 - ($ - %%insn_02a2c) db 0
    %%insn_02a2d:
    mov [0xcf64],ax ; 02A2D A364CF
    %if ($ - %%insn_02a2d) > 3
        %error "LONG_02A2D"
    %endif
    times 3 - ($ - %%insn_02a2d) db 0
    %%insn_02a30:
    cmp word [0xcf64],0x3 ; 02A30 833E64CF03
    %if ($ - %%insn_02a30) > 5
        %error "LONG_02A30"
    %endif
    times 5 - ($ - %%insn_02a30) db 0
    %%insn_02a35:
    jnz short 0x2a8e ; 02A35 7557
    %if ($ - %%insn_02a35) > 2
        %error "LONG_02A35"
    %endif
    times 2 - ($ - %%insn_02a35) db 0
    %%insn_02a37:
    mov cx,[0xd488] ; 02A37 8B0E88D4
    %if ($ - %%insn_02a37) > 4
        %error "LONG_02A37"
    %endif
    times 4 - ($ - %%insn_02a37) db 0
    db 0x23, 0xC9 ; 02A3B 23C9 | and cx,cx | encoding preserved
    %%insn_02a3d:
    jz short 0x2a8e ; 02A3D 744F
    %if ($ - %%insn_02a3d) > 2
        %error "LONG_02A3D"
    %endif
    times 2 - ($ - %%insn_02a3d) db 0
    %%insn_02a3f:
    cmp cx,[0xd9a8] ; 02A3F 3B0EA8D9
    %if ($ - %%insn_02a3f) > 4
        %error "LONG_02A3F"
    %endif
    times 4 - ($ - %%insn_02a3f) db 0
    %%insn_02a43:
    jna short 0x2a49 ; 02A43 7604
    %if ($ - %%insn_02a43) > 2
        %error "LONG_02A43"
    %endif
    times 2 - ($ - %%insn_02a43) db 0
    %%insn_02a45:
    mov cx,[0xd9a8] ; 02A45 8B0EA8D9
    %if ($ - %%insn_02a45) > 4
        %error "LONG_02A45"
    %endif
    times 4 - ($ - %%insn_02a45) db 0
    %%insn_02a49:
    sub [0xd488],cx ; 02A49 290E88D4
    %if ($ - %%insn_02a49) > 4
        %error "LONG_02A49"
    %endif
    times 4 - ($ - %%insn_02a49) db 0
    %%insn_02a4d:
    mov si,[0xd48a] ; 02A4D 8B368AD4
    %if ($ - %%insn_02a4d) > 4
        %error "LONG_02A4D"
    %endif
    times 4 - ($ - %%insn_02a4d) db 0
    %%insn_02a51:
    mov ax,[0xd9a8] ; 02A51 A1A8D9
    %if ($ - %%insn_02a51) > 3
        %error "LONG_02A51"
    %endif
    times 3 - ($ - %%insn_02a51) db 0
    %%insn_02a54:
    add [0xd48a],ax ; 02A54 01068AD4
    %if ($ - %%insn_02a54) > 4
        %error "LONG_02A54"
    %endif
    times 4 - ($ - %%insn_02a54) db 0
    %%insn_02a58:
    mov di,0xe41a ; 02A58 BF1AE4
    %if ($ - %%insn_02a58) > 3
        %error "LONG_02A58"
    %endif
    times 3 - ($ - %%insn_02a58) db 0
    %%insn_02a5b:
    mov ax,[0xd54e] ; 02A5B A14ED5
    %if ($ - %%insn_02a5b) > 3
        %error "LONG_02A5B"
    %endif
    times 3 - ($ - %%insn_02a5b) db 0
    %%insn_02a5e:
    mov [di+0x4],si ; 02A5E 897504
    %if ($ - %%insn_02a5e) > 3
        %error "LONG_02A5E"
    %endif
    times 3 - ($ - %%insn_02a5e) db 0
    %%insn_02a61:
    mov [di+0x6],ax ; 02A61 894506
    %if ($ - %%insn_02a61) > 3
        %error "LONG_02A61"
    %endif
    times 3 - ($ - %%insn_02a61) db 0
    %%insn_02a64:
    mov [di+0x8],cx ; 02A64 894D08
    %if ($ - %%insn_02a64) > 3
        %error "LONG_02A64"
    %endif
    times 3 - ($ - %%insn_02a64) db 0
    %%insn_02a67:
    push di ; 02A67 57
    %if ($ - %%insn_02a67) > 1
        %error "LONG_02A67"
    %endif
    times 1 - ($ - %%insn_02a67) db 0
    %%insn_02a68:
    push ds ; 02A68 1E
    %if ($ - %%insn_02a68) > 1
        %error "LONG_02A68"
    %endif
    times 1 - ($ - %%insn_02a68) db 0
    %%insn_02a69:
    push word 0x893 ; 02A69 689308
    %if ($ - %%insn_02a69) > 3
        %error "LONG_02A69"
    %endif
    times 3 - ($ - %%insn_02a69) db 0
    %%insn_02a6c:
    push di ; 02A6C 57
    %if ($ - %%insn_02a6c) > 1
        %error "LONG_02A6C"
    %endif
    times 1 - ($ - %%insn_02a6c) db 0
    %%insn_02a6d:
    push word [0xe434] ; 02A6D FF3634E4
    %if ($ - %%insn_02a6d) > 4
        %error "LONG_02A6D"
    %endif
    times 4 - ($ - %%insn_02a6d) db 0
    %%insn_02a71:
    call word 0x702:word 0xc6e ; 02A71 9A6E0C0207
    %if ($ - %%insn_02a71) > 5
        %error "LONG_02A71"
    %endif
    times 5 - ($ - %%insn_02a71) db 0
    %%insn_02a76:
    add sp,0x6 ; 02A76 83C406
    %if ($ - %%insn_02a76) > 3
        %error "LONG_02A76"
    %endif
    times 3 - ($ - %%insn_02a76) db 0
    %%insn_02a79:
    pop ds ; 02A79 1F
    %if ($ - %%insn_02a79) > 1
        %error "LONG_02A79"
    %endif
    times 1 - ($ - %%insn_02a79) db 0
    %%insn_02a7a:
    pop di ; 02A7A 5F
    %if ($ - %%insn_02a7a) > 1
        %error "LONG_02A7A"
    %endif
    times 1 - ($ - %%insn_02a7a) db 0
    db 0x33, 0xC0 ; 02A7B 33C0 | xor ax,ax | encoding preserved
    %%insn_02a7d:
    push word 0x893 ; 02A7D 689308
    %if ($ - %%insn_02a7d) > 3
        %error "LONG_02A7D"
    %endif
    times 3 - ($ - %%insn_02a7d) db 0
    %%insn_02a80:
    push di ; 02A80 57
    %if ($ - %%insn_02a80) > 1
        %error "LONG_02A80"
    %endif
    times 1 - ($ - %%insn_02a80) db 0
    %%insn_02a81:
    push ax ; 02A81 50
    %if ($ - %%insn_02a81) > 1
        %error "LONG_02A81"
    %endif
    times 1 - ($ - %%insn_02a81) db 0
    %%insn_02a82:
    push word [0xe434] ; 02A82 FF3634E4
    %if ($ - %%insn_02a82) > 4
        %error "LONG_02A82"
    %endif
    times 4 - ($ - %%insn_02a82) db 0
    %%insn_02a86:
    call word 0x702:word 0xc68 ; 02A86 9A680C0207
    %if ($ - %%insn_02a86) > 5
        %error "LONG_02A86"
    %endif
    times 5 - ($ - %%insn_02a86) db 0
    %%insn_02a8b:
    add sp,0x8 ; 02A8B 83C408
    %if ($ - %%insn_02a8b) > 3
        %error "LONG_02A8B"
    %endif
    times 3 - ($ - %%insn_02a8b) db 0
    %%insn_02a8e:
    mov ds,word [bp-0x2aae] ; 02A8E 8E9E52D5
    %if ($ - %%insn_02a8e) > 4
        %error "LONG_02A8E"
    %endif
    times 4 - ($ - %%insn_02a8e) db 0
    %%insn_02a92:
    mov ax,0x1 ; 02A92 B80100
    %if ($ - %%insn_02a92) > 3
        %error "LONG_02A92"
    %endif
    times 3 - ($ - %%insn_02a92) db 0
    %%insn_02a95:
    push ds ; 02A95 1E
    %if ($ - %%insn_02a95) > 1
        %error "LONG_02A95"
    %endif
    times 1 - ($ - %%insn_02a95) db 0
    %%insn_02a96:
    push ax ; 02A96 50
    %if ($ - %%insn_02a96) > 1
        %error "LONG_02A96"
    %endif
    times 1 - ($ - %%insn_02a96) db 0
    %%insn_02a97:
    push word [0xe434] ; 02A97 FF3634E4
    %if ($ - %%insn_02a97) > 4
        %error "LONG_02A97"
    %endif
    times 4 - ($ - %%insn_02a97) db 0
    %%insn_02a9b:
    call word 0x702:word 0xc74 ; 02A9B 9A740C0207
    %if ($ - %%insn_02a9b) > 5
        %error "LONG_02A9B"
    %endif
    times 5 - ($ - %%insn_02a9b) db 0
    %%insn_02aa0:
    add sp,0x4 ; 02AA0 83C404
    %if ($ - %%insn_02aa0) > 3
        %error "LONG_02AA0"
    %endif
    times 3 - ($ - %%insn_02aa0) db 0
    %%insn_02aa3:
    pop ds ; 02AA3 1F
    %if ($ - %%insn_02aa3) > 1
        %error "LONG_02AA3"
    %endif
    times 1 - ($ - %%insn_02aa3) db 0
    %%insn_02aa4:
    mov [0xcf66],ax ; 02AA4 A366CF
    %if ($ - %%insn_02aa4) > 3
        %error "LONG_02AA4"
    %endif
    times 3 - ($ - %%insn_02aa4) db 0
    %%insn_02aa7:
    cmp word [0xcf66],0x3 ; 02AA7 833E66CF03
    %if ($ - %%insn_02aa7) > 5
        %error "LONG_02AA7"
    %endif
    times 5 - ($ - %%insn_02aa7) db 0
    %%insn_02aac:
    jnz short 0x2b06 ; 02AAC 7558
    %if ($ - %%insn_02aac) > 2
        %error "LONG_02AAC"
    %endif
    times 2 - ($ - %%insn_02aac) db 0
    %%insn_02aae:
    mov cx,[0xd488] ; 02AAE 8B0E88D4
    %if ($ - %%insn_02aae) > 4
        %error "LONG_02AAE"
    %endif
    times 4 - ($ - %%insn_02aae) db 0
    db 0x23, 0xC9 ; 02AB2 23C9 | and cx,cx | encoding preserved
    %%insn_02ab4:
    jz short 0x2b06 ; 02AB4 7450
    %if ($ - %%insn_02ab4) > 2
        %error "LONG_02AB4"
    %endif
    times 2 - ($ - %%insn_02ab4) db 0
    %%insn_02ab6:
    cmp cx,[0xd9a8] ; 02AB6 3B0EA8D9
    %if ($ - %%insn_02ab6) > 4
        %error "LONG_02AB6"
    %endif
    times 4 - ($ - %%insn_02ab6) db 0
    %%insn_02aba:
    jna short 0x2ac0 ; 02ABA 7604
    %if ($ - %%insn_02aba) > 2
        %error "LONG_02ABA"
    %endif
    times 2 - ($ - %%insn_02aba) db 0
    %%insn_02abc:
    mov cx,[0xd9a8] ; 02ABC 8B0EA8D9
    %if ($ - %%insn_02abc) > 4
        %error "LONG_02ABC"
    %endif
    times 4 - ($ - %%insn_02abc) db 0
    %%insn_02ac0:
    sub [0xd488],cx ; 02AC0 290E88D4
    %if ($ - %%insn_02ac0) > 4
        %error "LONG_02AC0"
    %endif
    times 4 - ($ - %%insn_02ac0) db 0
    %%insn_02ac4:
    mov si,[0xd48a] ; 02AC4 8B368AD4
    %if ($ - %%insn_02ac4) > 4
        %error "LONG_02AC4"
    %endif
    times 4 - ($ - %%insn_02ac4) db 0
    %%insn_02ac8:
    mov ax,[0xd9a8] ; 02AC8 A1A8D9
    %if ($ - %%insn_02ac8) > 3
        %error "LONG_02AC8"
    %endif
    times 3 - ($ - %%insn_02ac8) db 0
    %%insn_02acb:
    add [0xd48a],ax ; 02ACB 01068AD4
    %if ($ - %%insn_02acb) > 4
        %error "LONG_02ACB"
    %endif
    times 4 - ($ - %%insn_02acb) db 0
    %%insn_02acf:
    mov di,0xe41a ; 02ACF BF1AE4
    %if ($ - %%insn_02acf) > 3
        %error "LONG_02ACF"
    %endif
    times 3 - ($ - %%insn_02acf) db 0
    %%insn_02ad2:
    mov ax,[0xd54e] ; 02AD2 A14ED5
    %if ($ - %%insn_02ad2) > 3
        %error "LONG_02AD2"
    %endif
    times 3 - ($ - %%insn_02ad2) db 0
    %%insn_02ad5:
    mov [di+0x4],si ; 02AD5 897504
    %if ($ - %%insn_02ad5) > 3
        %error "LONG_02AD5"
    %endif
    times 3 - ($ - %%insn_02ad5) db 0
    %%insn_02ad8:
    mov [di+0x6],ax ; 02AD8 894506
    %if ($ - %%insn_02ad8) > 3
        %error "LONG_02AD8"
    %endif
    times 3 - ($ - %%insn_02ad8) db 0
    %%insn_02adb:
    mov [di+0x8],cx ; 02ADB 894D08
    %if ($ - %%insn_02adb) > 3
        %error "LONG_02ADB"
    %endif
    times 3 - ($ - %%insn_02adb) db 0
    %%insn_02ade:
    push di ; 02ADE 57
    %if ($ - %%insn_02ade) > 1
        %error "LONG_02ADE"
    %endif
    times 1 - ($ - %%insn_02ade) db 0
    %%insn_02adf:
    push ds ; 02ADF 1E
    %if ($ - %%insn_02adf) > 1
        %error "LONG_02ADF"
    %endif
    times 1 - ($ - %%insn_02adf) db 0
    %%insn_02ae0:
    push word 0x893 ; 02AE0 689308
    %if ($ - %%insn_02ae0) > 3
        %error "LONG_02AE0"
    %endif
    times 3 - ($ - %%insn_02ae0) db 0
    %%insn_02ae3:
    push di ; 02AE3 57
    %if ($ - %%insn_02ae3) > 1
        %error "LONG_02AE3"
    %endif
    times 1 - ($ - %%insn_02ae3) db 0
    %%insn_02ae4:
    push word [0xe434] ; 02AE4 FF3634E4
    %if ($ - %%insn_02ae4) > 4
        %error "LONG_02AE4"
    %endif
    times 4 - ($ - %%insn_02ae4) db 0
    %%insn_02ae8:
    call word 0x702:word 0xc6e ; 02AE8 9A6E0C0207
    %if ($ - %%insn_02ae8) > 5
        %error "LONG_02AE8"
    %endif
    times 5 - ($ - %%insn_02ae8) db 0
    %%insn_02aed:
    add sp,0x6 ; 02AED 83C406
    %if ($ - %%insn_02aed) > 3
        %error "LONG_02AED"
    %endif
    times 3 - ($ - %%insn_02aed) db 0
    %%insn_02af0:
    pop ds ; 02AF0 1F
    %if ($ - %%insn_02af0) > 1
        %error "LONG_02AF0"
    %endif
    times 1 - ($ - %%insn_02af0) db 0
    %%insn_02af1:
    pop di ; 02AF1 5F
    %if ($ - %%insn_02af1) > 1
        %error "LONG_02AF1"
    %endif
    times 1 - ($ - %%insn_02af1) db 0
    %%insn_02af2:
    mov ax,0x1 ; 02AF2 B80100
    %if ($ - %%insn_02af2) > 3
        %error "LONG_02AF2"
    %endif
    times 3 - ($ - %%insn_02af2) db 0
    %%insn_02af5:
    push word 0x893 ; 02AF5 689308
    %if ($ - %%insn_02af5) > 3
        %error "LONG_02AF5"
    %endif
    times 3 - ($ - %%insn_02af5) db 0
    %%insn_02af8:
    push di ; 02AF8 57
    %if ($ - %%insn_02af8) > 1
        %error "LONG_02AF8"
    %endif
    times 1 - ($ - %%insn_02af8) db 0
    %%insn_02af9:
    push ax ; 02AF9 50
    %if ($ - %%insn_02af9) > 1
        %error "LONG_02AF9"
    %endif
    times 1 - ($ - %%insn_02af9) db 0
    %%insn_02afa:
    push word [0xe434] ; 02AFA FF3634E4
    %if ($ - %%insn_02afa) > 4
        %error "LONG_02AFA"
    %endif
    times 4 - ($ - %%insn_02afa) db 0
    %%insn_02afe:
    call word 0x702:word 0xc68 ; 02AFE 9A680C0207
    %if ($ - %%insn_02afe) > 5
        %error "LONG_02AFE"
    %endif
    times 5 - ($ - %%insn_02afe) db 0
    %%insn_02b03:
    add sp,0x8 ; 02B03 83C408
    %if ($ - %%insn_02b03) > 3
        %error "LONG_02B03"
    %endif
    times 3 - ($ - %%insn_02b03) db 0
    %%insn_02b06:
    mov ds,word [bp-0x2aae] ; 02B06 8E9E52D5
    %if ($ - %%insn_02b06) > 4
        %error "LONG_02B06"
    %endif
    times 4 - ($ - %%insn_02b06) db 0
    %%insn_02b0a:
    push word [0xe434] ; 02B0A FF3634E4
    %if ($ - %%insn_02b0a) > 4
        %error "LONG_02B0A"
    %endif
    times 4 - ($ - %%insn_02b0a) db 0
    %%insn_02b0e:
    call word 0x702:word 0xc8c ; 02B0E 9A8C0C0207
    %if ($ - %%insn_02b0e) > 5
        %error "LONG_02B0E"
    %endif
    times 5 - ($ - %%insn_02b0e) db 0
    %%insn_02b13:
    add sp,0x2 ; 02B13 83C402
    %if ($ - %%insn_02b13) > 3
        %error "LONG_02B13"
    %endif
    times 3 - ($ - %%insn_02b13) db 0
    %%insn_02b16:
    jmp 0x2be4 ; 02B16 E9CB00
    %if ($ - %%insn_02b16) > 3
        %error "LONG_02B16"
    %endif
    times 3 - ($ - %%insn_02b16) db 0
    %%insn_02b19:
    cmp byte [bp-0x30bc],0x0 ; 02B19 80BE44CF00
    %if ($ - %%insn_02b19) > 5
        %error "LONG_02B19"
    %endif
    times 5 - ($ - %%insn_02b19) db 0
    %%insn_02b1e:
    jnz 0x2bb4 ; 02B1E 0F859200
    %if ($ - %%insn_02b1e) > 4
        %error "LONG_02B1E"
    %endif
    times 4 - ($ - %%insn_02b1e) db 0
    %%insn_02b22:
    cmp word [bp-0x2b78],0x0 ; 02B22 83BE88D400
    %if ($ - %%insn_02b22) > 5
        %error "LONG_02B22"
    %endif
    times 5 - ($ - %%insn_02b22) db 0
    %%insn_02b27:
    jz 0x2bb2 ; 02B27 0F848700
    %if ($ - %%insn_02b27) > 4
        %error "LONG_02B27"
    %endif
    times 4 - ($ - %%insn_02b27) db 0
    %%insn_02b2b:
    cmp byte [bp-0x30bb],0x0 ; 02B2B 80BE45CF00
    %if ($ - %%insn_02b2b) > 5
        %error "LONG_02B2B"
    %endif
    times 5 - ($ - %%insn_02b2b) db 0
    %%insn_02b30:
    jnz short 0x2b60 ; 02B30 752E
    %if ($ - %%insn_02b30) > 2
        %error "LONG_02B30"
    %endif
    times 2 - ($ - %%insn_02b30) db 0
    %%insn_02b32:
    push ds ; 02B32 1E
    %if ($ - %%insn_02b32) > 1
        %error "LONG_02B32"
    %endif
    times 1 - ($ - %%insn_02b32) db 0
    %%insn_02b33:
    push es ; 02B33 06
    %if ($ - %%insn_02b33) > 1
        %error "LONG_02B33"
    %endif
    times 1 - ($ - %%insn_02b33) db 0
    %%insn_02b34:
    mov ax,0x3515 ; 02B34 B81535
    %if ($ - %%insn_02b34) > 3
        %error "LONG_02B34"
    %endif
    times 3 - ($ - %%insn_02b34) db 0
    %%insn_02b37:
    int byte 0x21 ; 02B37 CD21
    %if ($ - %%insn_02b37) > 2
        %error "LONG_02B37"
    %endif
    times 2 - ($ - %%insn_02b37) db 0
    %%insn_02b39:
    mov [cs:0x2bec],bx ; 02B39 2E891EEC2B
    %if ($ - %%insn_02b39) > 5
        %error "LONG_02B39"
    %endif
    times 5 - ($ - %%insn_02b39) db 0
    %%insn_02b3e:
    mov word [cs:0x2bee],es ; 02B3E 2E8C06EE2B
    %if ($ - %%insn_02b3e) > 5
        %error "LONG_02B3E"
    %endif
    times 5 - ($ - %%insn_02b3e) db 0
    %%insn_02b43:
    mov [cs:0x2be8],bx ; 02B43 2E891EE82B
    %if ($ - %%insn_02b43) > 5
        %error "LONG_02B43"
    %endif
    times 5 - ($ - %%insn_02b43) db 0
    %%insn_02b48:
    mov word [cs:0x2bea],es ; 02B48 2E8C06EA2B
    %if ($ - %%insn_02b48) > 5
        %error "LONG_02B48"
    %endif
    times 5 - ($ - %%insn_02b48) db 0
    %%insn_02b4d:
    mov ax,0x0 ; 02B4D B80000
    %if ($ - %%insn_02b4d) > 3
        %error "LONG_02B4D"
    %endif
    times 3 - ($ - %%insn_02b4d) db 0
    %%insn_02b50:
    mov ds,ax ; 02B50 8ED8
    %if ($ - %%insn_02b50) > 2
        %error "LONG_02B50"
    %endif
    times 2 - ($ - %%insn_02b50) db 0
    %%insn_02b52:
    mov dx,0x2bf0 ; 02B52 BAF02B
    %if ($ - %%insn_02b52) > 3
        %error "LONG_02B52"
    %endif
    times 3 - ($ - %%insn_02b52) db 0
    %%insn_02b55:
    mov ax,0x2515 ; 02B55 B81525
    %if ($ - %%insn_02b55) > 3
        %error "LONG_02B55"
    %endif
    times 3 - ($ - %%insn_02b55) db 0
    %%insn_02b58:
    int byte 0x21 ; 02B58 CD21
    %if ($ - %%insn_02b58) > 2
        %error "LONG_02B58"
    %endif
    times 2 - ($ - %%insn_02b58) db 0
    %%insn_02b5a:
    pop es ; 02B5A 07
    %if ($ - %%insn_02b5a) > 1
        %error "LONG_02B5A"
    %endif
    times 1 - ($ - %%insn_02b5a) db 0
    %%insn_02b5b:
    pop ds ; 02B5B 1F
    %if ($ - %%insn_02b5b) > 1
        %error "LONG_02B5B"
    %endif
    times 1 - ($ - %%insn_02b5b) db 0
    %%insn_02b5c:
    inc byte [bp-0x30bb] ; 02B5C FE8645CF
    %if ($ - %%insn_02b5c) > 4
        %error "LONG_02B5C"
    %endif
    times 4 - ($ - %%insn_02b5c) db 0
    %%insn_02b60:
    mov cx,0x4000 ; 02B60 B90040
    %if ($ - %%insn_02b60) > 3
        %error "LONG_02B60"
    %endif
    times 3 - ($ - %%insn_02b60) db 0
    %%insn_02b63:
    cmp word [bp-0x2b78],0x4000 ; 02B63 81BE88D40040
    %if ($ - %%insn_02b63) > 6
        %error "LONG_02B63"
    %endif
    times 6 - ($ - %%insn_02b63) db 0
    %%insn_02b69:
    jnc short 0x2b6f ; 02B69 7304
    %if ($ - %%insn_02b69) > 2
        %error "LONG_02B69"
    %endif
    times 2 - ($ - %%insn_02b69) db 0
    %%insn_02b6b:
    mov cx,[bp-0x2b78] ; 02B6B 8B8E88D4
    %if ($ - %%insn_02b6b) > 4
        %error "LONG_02B6B"
    %endif
    times 4 - ($ - %%insn_02b6b) db 0
    db 0x33, 0xDB ; 02B6F 33DB | xor bx,bx | encoding preserved
    %%insn_02b71:
    mov es,word [bp-0x2ab2] ; 02B71 8E864ED5
    %if ($ - %%insn_02b71) > 4
        %error "LONG_02B71"
    %endif
    times 4 - ($ - %%insn_02b71) db 0
    %%insn_02b75:
    mov dx,0xa2 ; 02B75 BAA200
    %if ($ - %%insn_02b75) > 3
        %error "LONG_02B75"
    %endif
    times 3 - ($ - %%insn_02b75) db 0
    %%insn_02b78:
    mov ah,0x83 ; 02B78 B483
    %if ($ - %%insn_02b78) > 2
        %error "LONG_02B78"
    %endif
    times 2 - ($ - %%insn_02b78) db 0
    %%insn_02b7a:
    mov al,0x7 ; 02B7A B007
    %if ($ - %%insn_02b7a) > 2
        %error "LONG_02B7A"
    %endif
    times 2 - ($ - %%insn_02b7a) db 0
    %%insn_02b7c:
    int byte 0x1a ; 02B7C CD1A
    %if ($ - %%insn_02b7c) > 2
        %error "LONG_02B7C"
    %endif
    times 2 - ($ - %%insn_02b7c) db 0
    %%insn_02b7e:
    mov cx,0x8000 ; 02B7E B90080
    %if ($ - %%insn_02b7e) > 3
        %error "LONG_02B7E"
    %endif
    times 3 - ($ - %%insn_02b7e) db 0
    %%insn_02b81:
    cmp word [bp-0x2b78],0x8000 ; 02B81 81BE88D40080
    %if ($ - %%insn_02b81) > 6
        %error "LONG_02B81"
    %endif
    times 6 - ($ - %%insn_02b81) db 0
    %%insn_02b87:
    jnc short 0x2b8d ; 02B87 7304
    %if ($ - %%insn_02b87) > 2
        %error "LONG_02B87"
    %endif
    times 2 - ($ - %%insn_02b87) db 0
    %%insn_02b89:
    mov cx,[bp-0x2b78] ; 02B89 8B8E88D4
    %if ($ - %%insn_02b89) > 4
        %error "LONG_02B89"
    %endif
    times 4 - ($ - %%insn_02b89) db 0
    %%insn_02b8d:
    sub [bp-0x2b78],cx ; 02B8D 298E88D4
    %if ($ - %%insn_02b8d) > 4
        %error "LONG_02B8D"
    %endif
    times 4 - ($ - %%insn_02b8d) db 0
    %%insn_02b91:
    add [bp-0x2b76],cx ; 02B91 018E8AD4
    %if ($ - %%insn_02b91) > 4
        %error "LONG_02B91"
    %endif
    times 4 - ($ - %%insn_02b91) db 0
    %%insn_02b95:
    mov word [bp-0x30be],0x4000 ; 02B95 C78642CF0040
    %if ($ - %%insn_02b95) > 6
        %error "LONG_02B95"
    %endif
    times 6 - ($ - %%insn_02b95) db 0
    %%insn_02b9b:
    cmp cx,0x4000 ; 02B9B 81F90040
    %if ($ - %%insn_02b9b) > 4
        %error "LONG_02B9B"
    %endif
    times 4 - ($ - %%insn_02b9b) db 0
    %%insn_02b9f:
    jna short 0x2ba7 ; 02B9F 7606
    %if ($ - %%insn_02b9f) > 2
        %error "LONG_02B9F"
    %endif
    times 2 - ($ - %%insn_02b9f) db 0
    %%insn_02ba1:
    sub cx,0x4000 ; 02BA1 81E90040
    %if ($ - %%insn_02ba1) > 4
        %error "LONG_02BA1"
    %endif
    times 4 - ($ - %%insn_02ba1) db 0
    %%insn_02ba5:
    jmp short 0x2ba9 ; 02BA5 EB02
    %if ($ - %%insn_02ba5) > 2
        %error "LONG_02BA5"
    %endif
    times 2 - ($ - %%insn_02ba5) db 0
    db 0x33, 0xC9 ; 02BA7 33C9 | xor cx,cx | encoding preserved
    %%insn_02ba9:
    mov [bp-0x30c0],cx ; 02BA9 898E40CF
    %if ($ - %%insn_02ba9) > 4
        %error "LONG_02BA9"
    %endif
    times 4 - ($ - %%insn_02ba9) db 0
    %%insn_02bad:
    mov byte [bp-0x30bc],0x1 ; 02BAD C68644CF01
    %if ($ - %%insn_02bad) > 5
        %error "LONG_02BAD"
    %endif
    times 5 - ($ - %%insn_02bad) db 0
    %%insn_02bb2:
    jmp short 0x2be4 ; 02BB2 EB30
    %if ($ - %%insn_02bb2) > 2
        %error "LONG_02BB2"
    %endif
    times 2 - ($ - %%insn_02bb2) db 0
    %%insn_02bb4:
    cmp word [bp-0x30c0],0x0 ; 02BB4 83BE40CF00
    %if ($ - %%insn_02bb4) > 5
        %error "LONG_02BB4"
    %endif
    times 5 - ($ - %%insn_02bb4) db 0
    %%insn_02bb9:
    jnz short 0x2be4 ; 02BB9 7529
    %if ($ - %%insn_02bb9) > 2
        %error "LONG_02BB9"
    %endif
    times 2 - ($ - %%insn_02bb9) db 0
    %%insn_02bbb:
    cmp word [bp-0x2b78],0x0 ; 02BBB 83BE88D400
    %if ($ - %%insn_02bbb) > 5
        %error "LONG_02BBB"
    %endif
    times 5 - ($ - %%insn_02bbb) db 0
    %%insn_02bc0:
    jz short 0x2be4 ; 02BC0 7422
    %if ($ - %%insn_02bc0) > 2
        %error "LONG_02BC0"
    %endif
    times 2 - ($ - %%insn_02bc0) db 0
    %%insn_02bc2:
    mov ax,[bp-0x2b78] ; 02BC2 8B8688D4
    %if ($ - %%insn_02bc2) > 4
        %error "LONG_02BC2"
    %endif
    times 4 - ($ - %%insn_02bc2) db 0
    %%insn_02bc6:
    cmp ax,0x4000 ; 02BC6 3D0040
    %if ($ - %%insn_02bc6) > 3
        %error "LONG_02BC6"
    %endif
    times 3 - ($ - %%insn_02bc6) db 0
    %%insn_02bc9:
    jna short 0x2bce ; 02BC9 7603
    %if ($ - %%insn_02bc9) > 2
        %error "LONG_02BC9"
    %endif
    times 2 - ($ - %%insn_02bc9) db 0
    %%insn_02bcb:
    mov ax,0x4000 ; 02BCB B80040
    %if ($ - %%insn_02bcb) > 3
        %error "LONG_02BCB"
    %endif
    times 3 - ($ - %%insn_02bcb) db 0
    %%insn_02bce:
    mov [bp-0x30c0],ax ; 02BCE 898640CF
    %if ($ - %%insn_02bce) > 4
        %error "LONG_02BCE"
    %endif
    times 4 - ($ - %%insn_02bce) db 0
    %%insn_02bd2:
    sub [bp-0x2b78],ax ; 02BD2 298688D4
    %if ($ - %%insn_02bd2) > 4
        %error "LONG_02BD2"
    %endif
    times 4 - ($ - %%insn_02bd2) db 0
    %%insn_02bd6:
    mov ax,[bp-0x2b76] ; 02BD6 8B868AD4
    %if ($ - %%insn_02bd6) > 4
        %error "LONG_02BD6"
    %endif
    times 4 - ($ - %%insn_02bd6) db 0
    %%insn_02bda:
    mov [bp-0x30be],ax ; 02BDA 898642CF
    %if ($ - %%insn_02bda) > 4
        %error "LONG_02BDA"
    %endif
    times 4 - ($ - %%insn_02bda) db 0
    %%insn_02bde:
    add word [bp-0x2b76],0x4000 ; 02BDE 81868AD40040
    %if ($ - %%insn_02bde) > 6
        %error "LONG_02BDE"
    %endif
    times 6 - ($ - %%insn_02bde) db 0
    %%insn_02be4:
    popa ; 02BE4 61
    %if ($ - %%insn_02be4) > 1
        %error "LONG_02BE4"
    %endif
    times 1 - ($ - %%insn_02be4) db 0
    %%insn_02be5:
    pop ds ; 02BE5 1F
    %if ($ - %%insn_02be5) > 1
        %error "LONG_02BE5"
    %endif
    times 1 - ($ - %%insn_02be5) db 0
    %%insn_02be6:
    pop es ; 02BE6 07
    %if ($ - %%insn_02be6) > 1
        %error "LONG_02BE6"
    %endif
    times 1 - ($ - %%insn_02be6) db 0
    %%insn_02be7:
    ret ; 02BE7 C3
    %if ($ - %%insn_02be7) > 1
        %error "LONG_02BE7"
    %endif
    times 1 - ($ - %%insn_02be7) db 0
    %if ($ - %%fragment_start) != 593
        %error "SIZE_02997"
    %endif
%endmacro
