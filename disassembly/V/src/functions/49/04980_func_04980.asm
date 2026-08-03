; Linear entry 04980 (1000:4980)
; Ghidra working symbol: FUN_1000_4980
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04980_part_00 0
    %%fragment_start:
func_04980:
    %%insn_04980:
    push ds ; 04980 1E
    %if ($ - %%insn_04980) > 1
        %error "LONG_04980"
    %endif
    times 1 - ($ - %%insn_04980) db 0
    %%insn_04981:
    push es ; 04981 06
    %if ($ - %%insn_04981) > 1
        %error "LONG_04981"
    %endif
    times 1 - ($ - %%insn_04981) db 0
    %%insn_04982:
    mov ax,0x893 ; 04982 B89308
    %if ($ - %%insn_04982) > 3
        %error "LONG_04982"
    %endif
    times 3 - ($ - %%insn_04982) db 0
    %%insn_04985:
    mov ds,ax ; 04985 8ED8
    %if ($ - %%insn_04985) > 2
        %error "LONG_04985"
    %endif
    times 2 - ($ - %%insn_04985) db 0
    %%insn_04987:
    mov es,ax ; 04987 8EC0
    %if ($ - %%insn_04987) > 2
        %error "LONG_04987"
    %endif
    times 2 - ($ - %%insn_04987) db 0
    %%insn_04989:
    mov di,0xe166 ; 04989 BF66E1
    %if ($ - %%insn_04989) > 3
        %error "LONG_04989"
    %endif
    times 3 - ($ - %%insn_04989) db 0
    %%insn_0498c:
    mov cx,0x100 ; 0498C B90001
    %if ($ - %%insn_0498c) > 3
        %error "LONG_0498C"
    %endif
    times 3 - ($ - %%insn_0498c) db 0
    %%insn_0498f:
    mov byte [ss:di],0x0 ; 0498F 36C60500
    %if ($ - %%insn_0498f) > 4
        %error "LONG_0498F"
    %endif
    times 4 - ($ - %%insn_0498f) db 0
    %%insn_04993:
    inc di ; 04993 47
    %if ($ - %%insn_04993) > 1
        %error "LONG_04993"
    %endif
    times 1 - ($ - %%insn_04993) db 0
    %%insn_04994:
    dec cx ; 04994 49
    %if ($ - %%insn_04994) > 1
        %error "LONG_04994"
    %endif
    times 1 - ($ - %%insn_04994) db 0
    %%insn_04995:
    jnz short 0x498f ; 04995 75F8
    %if ($ - %%insn_04995) > 2
        %error "LONG_04995"
    %endif
    times 2 - ($ - %%insn_04995) db 0
    %%insn_04997:
    mov si,[bp-0x2646] ; 04997 8BB6BAD9
    %if ($ - %%insn_04997) > 4
        %error "LONG_04997"
    %endif
    times 4 - ($ - %%insn_04997) db 0
    %%insn_0499b:
    add si,0x3 ; 0499B 83C603
    %if ($ - %%insn_0499b) > 3
        %error "LONG_0499B"
    %endif
    times 3 - ($ - %%insn_0499b) db 0
    %%insn_0499e:
    call 0x26e5 ; 0499E E844DD
    %if ($ - %%insn_0499e) > 3
        %error "LONG_0499E"
    %endif
    times 3 - ($ - %%insn_0499e) db 0
    %%insn_049a1:
    mov di,0xe167 ; 049A1 BF67E1
    %if ($ - %%insn_049a1) > 3
        %error "LONG_049A1"
    %endif
    times 3 - ($ - %%insn_049a1) db 0
    %%insn_049a4:
    mov cx,0x1f ; 049A4 B91F00
    %if ($ - %%insn_049a4) > 3
        %error "LONG_049A4"
    %endif
    times 3 - ($ - %%insn_049a4) db 0
    %%insn_049a7:
    cmp byte [ss:di],0x0 ; 049A7 36803D00
    %if ($ - %%insn_049a7) > 4
        %error "LONG_049A7"
    %endif
    times 4 - ($ - %%insn_049a7) db 0
    %%insn_049ab:
    jnz short 0x4a19 ; 049AB 756C
    %if ($ - %%insn_049ab) > 2
        %error "LONG_049AB"
    %endif
    times 2 - ($ - %%insn_049ab) db 0
    %%insn_049ad:
    mov bx,0xcf8f ; 049AD BB8FCF
    %if ($ - %%insn_049ad) > 3
        %error "LONG_049AD"
    %endif
    times 3 - ($ - %%insn_049ad) db 0
    %%insn_049b0:
    push cx ; 049B0 51
    %if ($ - %%insn_049b0) > 1
        %error "LONG_049B0"
    %endif
    times 1 - ($ - %%insn_049b0) db 0
    %%insn_049b1:
    mov word [bp-0x261e],0x8000 ; 049B1 C786E2D90080
    %if ($ - %%insn_049b1) > 6
        %error "LONG_049B1"
    %endif
    times 6 - ($ - %%insn_049b1) db 0
    %%insn_049b7:
    mov cx,0x1 ; 049B7 B90100
    %if ($ - %%insn_049b7) > 3
        %error "LONG_049B7"
    %endif
    times 3 - ($ - %%insn_049b7) db 0
    %%insn_049ba:
    push cx ; 049BA 51
    %if ($ - %%insn_049ba) > 1
        %error "LONG_049BA"
    %endif
    times 1 - ($ - %%insn_049ba) db 0
    db 0x32, 0xE4 ; 049BB 32E4 | xor ah,ah | encoding preserved
    %%insn_049bd:
    mov al,[ss:bx] ; 049BD 368A07
    %if ($ - %%insn_049bd) > 3
        %error "LONG_049BD"
    %endif
    times 3 - ($ - %%insn_049bd) db 0
    %%insn_049c0:
    shl ax,byte 0x2 ; 049C0 C1E002
    %if ($ - %%insn_049c0) > 3
        %error "LONG_049C0"
    %endif
    times 3 - ($ - %%insn_049c0) db 0
    %%insn_049c3:
    mov cl,[es:si] ; 049C3 268A0C
    %if ($ - %%insn_049c3) > 3
        %error "LONG_049C3"
    %endif
    times 3 - ($ - %%insn_049c3) db 0
    db 0x2B, 0xC1 ; 049C6 2BC1 | sub ax,cx | encoding preserved
    %%insn_049c8:
    jnc short 0x49ce ; 049C8 7304
    %if ($ - %%insn_049c8) > 2
        %error "LONG_049C8"
    %endif
    times 2 - ($ - %%insn_049c8) db 0
    db 0x2B, 0xC8 ; 049CA 2BC8 | sub cx,ax | encoding preserved
    db 0x8B, 0xC1 ; 049CC 8BC1 | mov ax,cx | encoding preserved
    db 0x8B, 0xD0 ; 049CE 8BD0 | mov dx,ax | encoding preserved
    %%insn_049d0:
    inc bx ; 049D0 43
    %if ($ - %%insn_049d0) > 1
        %error "LONG_049D0"
    %endif
    times 1 - ($ - %%insn_049d0) db 0
    db 0x32, 0xE4 ; 049D1 32E4 | xor ah,ah | encoding preserved
    %%insn_049d3:
    mov al,[ss:bx] ; 049D3 368A07
    %if ($ - %%insn_049d3) > 3
        %error "LONG_049D3"
    %endif
    times 3 - ($ - %%insn_049d3) db 0
    %%insn_049d6:
    shl ax,byte 0x2 ; 049D6 C1E002
    %if ($ - %%insn_049d6) > 3
        %error "LONG_049D6"
    %endif
    times 3 - ($ - %%insn_049d6) db 0
    %%insn_049d9:
    mov cl,[es:si+0x1] ; 049D9 268A4C01
    %if ($ - %%insn_049d9) > 4
        %error "LONG_049D9"
    %endif
    times 4 - ($ - %%insn_049d9) db 0
    db 0x2B, 0xC1 ; 049DD 2BC1 | sub ax,cx | encoding preserved
    %%insn_049df:
    jnc short 0x49e5 ; 049DF 7304
    %if ($ - %%insn_049df) > 2
        %error "LONG_049DF"
    %endif
    times 2 - ($ - %%insn_049df) db 0
    db 0x2B, 0xC8 ; 049E1 2BC8 | sub cx,ax | encoding preserved
    db 0x8B, 0xC1 ; 049E3 8BC1 | mov ax,cx | encoding preserved
    db 0x03, 0xD0 ; 049E5 03D0 | add dx,ax | encoding preserved
    %%insn_049e7:
    inc bx ; 049E7 43
    %if ($ - %%insn_049e7) > 1
        %error "LONG_049E7"
    %endif
    times 1 - ($ - %%insn_049e7) db 0
    db 0x32, 0xE4 ; 049E8 32E4 | xor ah,ah | encoding preserved
    %%insn_049ea:
    mov al,[ss:bx] ; 049EA 368A07
    %if ($ - %%insn_049ea) > 3
        %error "LONG_049EA"
    %endif
    times 3 - ($ - %%insn_049ea) db 0
    %%insn_049ed:
    shl ax,byte 0x2 ; 049ED C1E002
    %if ($ - %%insn_049ed) > 3
        %error "LONG_049ED"
    %endif
    times 3 - ($ - %%insn_049ed) db 0
    %%insn_049f0:
    mov cl,[es:si+0x2] ; 049F0 268A4C02
    %if ($ - %%insn_049f0) > 4
        %error "LONG_049F0"
    %endif
    times 4 - ($ - %%insn_049f0) db 0
    db 0x2B, 0xC1 ; 049F4 2BC1 | sub ax,cx | encoding preserved
    %%insn_049f6:
    jnc short 0x49fc ; 049F6 7304
    %if ($ - %%insn_049f6) > 2
        %error "LONG_049F6"
    %endif
    times 2 - ($ - %%insn_049f6) db 0
    db 0x2B, 0xC8 ; 049F8 2BC8 | sub cx,ax | encoding preserved
    db 0x8B, 0xC1 ; 049FA 8BC1 | mov ax,cx | encoding preserved
    db 0x03, 0xD0 ; 049FC 03D0 | add dx,ax | encoding preserved
    %%insn_049fe:
    inc bx ; 049FE 43
    %if ($ - %%insn_049fe) > 1
        %error "LONG_049FE"
    %endif
    times 1 - ($ - %%insn_049fe) db 0
    %%insn_049ff:
    pop cx ; 049FF 59
    %if ($ - %%insn_049ff) > 1
        %error "LONG_049FF"
    %endif
    times 1 - ($ - %%insn_049ff) db 0
    %%insn_04a00:
    cmp dx,[bp-0x261e] ; 04A00 3B96E2D9
    %if ($ - %%insn_04a00) > 4
        %error "LONG_04A00"
    %endif
    times 4 - ($ - %%insn_04a00) db 0
    %%insn_04a04:
    jnc short 0x4a0d ; 04A04 7307
    %if ($ - %%insn_04a04) > 2
        %error "LONG_04A04"
    %endif
    times 2 - ($ - %%insn_04a04) db 0
    %%insn_04a06:
    mov [ss:di],cl ; 04A06 36880D
    %if ($ - %%insn_04a06) > 3
        %error "LONG_04A06"
    %endif
    times 3 - ($ - %%insn_04a06) db 0
    %%insn_04a09:
    mov [bp-0x261e],dx ; 04A09 8996E2D9
    %if ($ - %%insn_04a09) > 4
        %error "LONG_04A09"
    %endif
    times 4 - ($ - %%insn_04a09) db 0
    db 0x23, 0xD2 ; 04A0D 23D2 | and dx,dx | encoding preserved
    %%insn_04a0f:
    jz short 0x4a18 ; 04A0F 7407
    %if ($ - %%insn_04a0f) > 2
        %error "LONG_04A0F"
    %endif
    times 2 - ($ - %%insn_04a0f) db 0
    %%insn_04a11:
    inc cx ; 04A11 41
    %if ($ - %%insn_04a11) > 1
        %error "LONG_04A11"
    %endif
    times 1 - ($ - %%insn_04a11) db 0
    %%insn_04a12:
    cmp cx,0x100 ; 04A12 81F90001
    %if ($ - %%insn_04a12) > 4
        %error "LONG_04A12"
    %endif
    times 4 - ($ - %%insn_04a12) db 0
    %%insn_04a16:
    jnz short 0x49ba ; 04A16 75A2
    %if ($ - %%insn_04a16) > 2
        %error "LONG_04A16"
    %endif
    times 2 - ($ - %%insn_04a16) db 0
    %%insn_04a18:
    pop cx ; 04A18 59
    %if ($ - %%insn_04a18) > 1
        %error "LONG_04A18"
    %endif
    times 1 - ($ - %%insn_04a18) db 0
    %%insn_04a19:
    add si,0x3 ; 04A19 83C603
    %if ($ - %%insn_04a19) > 3
        %error "LONG_04A19"
    %endif
    times 3 - ($ - %%insn_04a19) db 0
    %%insn_04a1c:
    inc di ; 04A1C 47
    %if ($ - %%insn_04a1c) > 1
        %error "LONG_04A1C"
    %endif
    times 1 - ($ - %%insn_04a1c) db 0
    %%insn_04a1d:
    dec cx ; 04A1D 49
    %if ($ - %%insn_04a1d) > 1
        %error "LONG_04A1D"
    %endif
    times 1 - ($ - %%insn_04a1d) db 0
    %%insn_04a1e:
    jnz short 0x49a7 ; 04A1E 7587
    %if ($ - %%insn_04a1e) > 2
        %error "LONG_04A1E"
    %endif
    times 2 - ($ - %%insn_04a1e) db 0
    %%insn_04a20:
    pop es ; 04A20 07
    %if ($ - %%insn_04a20) > 1
        %error "LONG_04A20"
    %endif
    times 1 - ($ - %%insn_04a20) db 0
    %%insn_04a21:
    pop ds ; 04A21 1F
    %if ($ - %%insn_04a21) > 1
        %error "LONG_04A21"
    %endif
    times 1 - ($ - %%insn_04a21) db 0
    %%insn_04a22:
    ret ; 04A22 C3
    %if ($ - %%insn_04a22) > 1
        %error "LONG_04A22"
    %endif
    times 1 - ($ - %%insn_04a22) db 0
    %if ($ - %%fragment_start) != 163
        %error "SIZE_04980"
    %endif
%endmacro
