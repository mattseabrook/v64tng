; Linear entry 04A7B (1000:4a7b)
; Ghidra working symbol: FUN_1000_4a7b
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04a7b_part_00 0
    %%fragment_start:
func_04a7b:
    %%insn_04a7b:
    cmp word [bp-0x2620],0x0 ; 04A7B 83BEE0D900
    %if ($ - %%insn_04a7b) > 5
        %error "LONG_04A7B"
    %endif
    times 5 - ($ - %%insn_04a7b) db 0
    %%insn_04a80:
    jnz short 0x4a83 ; 04A80 7501
    %if ($ - %%insn_04a80) > 2
        %error "LONG_04A80"
    %endif
    times 2 - ($ - %%insn_04a80) db 0
    %%insn_04a82:
    ret ; 04A82 C3
    %if ($ - %%insn_04a82) > 1
        %error "LONG_04A82"
    %endif
    times 1 - ($ - %%insn_04a82) db 0
    %%insn_04a83:
    push di ; 04A83 57
    %if ($ - %%insn_04a83) > 1
        %error "LONG_04A83"
    %endif
    times 1 - ($ - %%insn_04a83) db 0
    %%insn_04a84:
    push si ; 04A84 56
    %if ($ - %%insn_04a84) > 1
        %error "LONG_04A84"
    %endif
    times 1 - ($ - %%insn_04a84) db 0
    %%insn_04a85:
    push ds ; 04A85 1E
    %if ($ - %%insn_04a85) > 1
        %error "LONG_04A85"
    %endif
    times 1 - ($ - %%insn_04a85) db 0
    %%insn_04a86:
    push es ; 04A86 06
    %if ($ - %%insn_04a86) > 1
        %error "LONG_04A86"
    %endif
    times 1 - ($ - %%insn_04a86) db 0
    %%insn_04a87:
    push bx ; 04A87 53
    %if ($ - %%insn_04a87) > 1
        %error "LONG_04A87"
    %endif
    times 1 - ($ - %%insn_04a87) db 0
    %%insn_04a88:
    mov ax,0x893 ; 04A88 B89308
    %if ($ - %%insn_04a88) > 3
        %error "LONG_04A88"
    %endif
    times 3 - ($ - %%insn_04a88) db 0
    %%insn_04a8b:
    mov ds,ax ; 04A8B 8ED8
    %if ($ - %%insn_04a8b) > 2
        %error "LONG_04A8B"
    %endif
    times 2 - ($ - %%insn_04a8b) db 0
    %%insn_04a8d:
    mov ax,0x3 ; 04A8D B80300
    %if ($ - %%insn_04a8d) > 3
        %error "LONG_04A8D"
    %endif
    times 3 - ($ - %%insn_04a8d) db 0
    %%insn_04a90:
    int byte 0x33 ; 04A90 CD33
    %if ($ - %%insn_04a90) > 2
        %error "LONG_04A90"
    %endif
    times 2 - ($ - %%insn_04a90) db 0
    %%insn_04a92:
    cmp cx,[bp-0x263e] ; 04A92 3B8EC2D9
    %if ($ - %%insn_04a92) > 4
        %error "LONG_04A92"
    %endif
    times 4 - ($ - %%insn_04a92) db 0
    %%insn_04a96:
    jna short 0x4a9c ; 04A96 7604
    %if ($ - %%insn_04a96) > 2
        %error "LONG_04A96"
    %endif
    times 2 - ($ - %%insn_04a96) db 0
    %%insn_04a98:
    mov cx,[bp-0x263e] ; 04A98 8B8EC2D9
    %if ($ - %%insn_04a98) > 4
        %error "LONG_04A98"
    %endif
    times 4 - ($ - %%insn_04a98) db 0
    %%insn_04a9c:
    mov [bp-0x262e],cx ; 04A9C 898ED2D9
    %if ($ - %%insn_04a9c) > 4
        %error "LONG_04A9C"
    %endif
    times 4 - ($ - %%insn_04a9c) db 0
    db 0x03, 0xD2 ; 04AA0 03D2 | add dx,dx | encoding preserved
    %%insn_04aa2:
    cmp dx,[bp-0x263c] ; 04AA2 3B96C4D9
    %if ($ - %%insn_04aa2) > 4
        %error "LONG_04AA2"
    %endif
    times 4 - ($ - %%insn_04aa2) db 0
    %%insn_04aa6:
    jnc short 0x4aae ; 04AA6 7306
    %if ($ - %%insn_04aa6) > 2
        %error "LONG_04AA6"
    %endif
    times 2 - ($ - %%insn_04aa6) db 0
    %%insn_04aa8:
    mov dx,[bp-0x263c] ; 04AA8 8B96C4D9
    %if ($ - %%insn_04aa8) > 4
        %error "LONG_04AA8"
    %endif
    times 4 - ($ - %%insn_04aa8) db 0
    %%insn_04aac:
    jmp short 0x4ab8 ; 04AAC EB0A
    %if ($ - %%insn_04aac) > 2
        %error "LONG_04AAC"
    %endif
    times 2 - ($ - %%insn_04aac) db 0
    %%insn_04aae:
    cmp dx,[bp-0x263a] ; 04AAE 3B96C6D9
    %if ($ - %%insn_04aae) > 4
        %error "LONG_04AAE"
    %endif
    times 4 - ($ - %%insn_04aae) db 0
    %%insn_04ab2:
    jna short 0x4ab8 ; 04AB2 7604
    %if ($ - %%insn_04ab2) > 2
        %error "LONG_04AB2"
    %endif
    times 2 - ($ - %%insn_04ab2) db 0
    %%insn_04ab4:
    mov dx,[bp-0x263a] ; 04AB4 8B96C6D9
    %if ($ - %%insn_04ab4) > 4
        %error "LONG_04AB4"
    %endif
    times 4 - ($ - %%insn_04ab4) db 0
    %%insn_04ab8:
    mov [bp-0x262c],dx ; 04AB8 8996D4D9
    %if ($ - %%insn_04ab8) > 4
        %error "LONG_04AB8"
    %endif
    times 4 - ($ - %%insn_04ab8) db 0
    %%insn_04abc:
    mov [bp-0x2622],bx ; 04ABC 899EDED9
    %if ($ - %%insn_04abc) > 4
        %error "LONG_04ABC"
    %endif
    times 4 - ($ - %%insn_04abc) db 0
    %%insn_04ac0:
    mov si,[bp-0x2648] ; 04AC0 8BB6B8D9
    %if ($ - %%insn_04ac0) > 4
        %error "LONG_04AC0"
    %endif
    times 4 - ($ - %%insn_04ac0) db 0
    %%insn_04ac4:
    mov cx,[bp-0x262e] ; 04AC4 8B8ED2D9
    %if ($ - %%insn_04ac4) > 4
        %error "LONG_04AC4"
    %endif
    times 4 - ($ - %%insn_04ac4) db 0
    %%insn_04ac8:
    mov dx,[bp-0x262c] ; 04AC8 8B96D4D9
    %if ($ - %%insn_04ac8) > 4
        %error "LONG_04AC8"
    %endif
    times 4 - ($ - %%insn_04ac8) db 0
    %%insn_04acc:
    cmp si,[bp-0x2618] ; 04ACC 3BB6E8D9
    %if ($ - %%insn_04acc) > 4
        %error "LONG_04ACC"
    %endif
    times 4 - ($ - %%insn_04acc) db 0
    %%insn_04ad0:
    jz short 0x4b2d ; 04AD0 745B
    %if ($ - %%insn_04ad0) > 2
        %error "LONG_04AD0"
    %endif
    times 2 - ($ - %%insn_04ad0) db 0
    %%insn_04ad2:
    pusha ; 04AD2 60
    %if ($ - %%insn_04ad2) > 1
        %error "LONG_04AD2"
    %endif
    times 1 - ($ - %%insn_04ad2) db 0
    %%insn_04ad3:
    push es ; 04AD3 06
    %if ($ - %%insn_04ad3) > 1
        %error "LONG_04AD3"
    %endif
    times 1 - ($ - %%insn_04ad3) db 0
    %%insn_04ad4:
    push ds ; 04AD4 1E
    %if ($ - %%insn_04ad4) > 1
        %error "LONG_04AD4"
    %endif
    times 1 - ($ - %%insn_04ad4) db 0
    %%insn_04ad5:
    mov [bp-0x2618],si ; 04AD5 89B6E8D9
    %if ($ - %%insn_04ad5) > 4
        %error "LONG_04AD5"
    %endif
    times 4 - ($ - %%insn_04ad5) db 0
    %%insn_04ad9:
    mov byte [bp-0x2789],0x0 ; 04AD9 C68677D800
    %if ($ - %%insn_04ad9) > 5
        %error "LONG_04AD9"
    %endif
    times 5 - ($ - %%insn_04ad9) db 0
    %%insn_04ade:
    mov word [bp-0x2624],0xffff ; 04ADE C786DCD9FFFF
    %if ($ - %%insn_04ade) > 6
        %error "LONG_04ADE"
    %endif
    times 6 - ($ - %%insn_04ade) db 0
    %%insn_04ae4:
    mov ax,[bp-0x2aaa] ; 04AE4 8B8656D5
    %if ($ - %%insn_04ae4) > 4
        %error "LONG_04AE4"
    %endif
    times 4 - ($ - %%insn_04ae4) db 0
    %%insn_04ae8:
    mov es,ax ; 04AE8 8EC0
    %if ($ - %%insn_04ae8) > 2
        %error "LONG_04AE8"
    %endif
    times 2 - ($ - %%insn_04ae8) db 0
    db 0x33, 0xFF ; 04AEA 33FF | xor di,di | encoding preserved
    %%insn_04aec:
    call 0x230f ; 04AEC E820D8
    %if ($ - %%insn_04aec) > 3
        %error "LONG_04AEC"
    %endif
    times 3 - ($ - %%insn_04aec) db 0
    %%insn_04aef:
    mov ax,[bp-0x2646] ; 04AEF 8B86BAD9
    %if ($ - %%insn_04aef) > 4
        %error "LONG_04AEF"
    %endif
    times 4 - ($ - %%insn_04aef) db 0
    %%insn_04af3:
    mov [bp-0x2644],ax ; 04AF3 8986BCD9
    %if ($ - %%insn_04af3) > 4
        %error "LONG_04AF3"
    %endif
    times 4 - ($ - %%insn_04af3) db 0
    %%insn_04af7:
    cmp word [bp-0x262a],0x0 ; 04AF7 83BED6D900
    %if ($ - %%insn_04af7) > 5
        %error "LONG_04AF7"
    %endif
    times 5 - ($ - %%insn_04af7) db 0
    %%insn_04afc:
    jz short 0x4b0f ; 04AFC 7411
    %if ($ - %%insn_04afc) > 2
        %error "LONG_04AFC"
    %endif
    times 2 - ($ - %%insn_04afc) db 0
    %%insn_04afe:
    mov ax,[bp-0x2aaa] ; 04AFE 8B8656D5
    %if ($ - %%insn_04afe) > 4
        %error "LONG_04AFE"
    %endif
    times 4 - ($ - %%insn_04afe) db 0
    %%insn_04b02:
    mov ds,ax ; 04B02 8ED8
    %if ($ - %%insn_04b02) > 2
        %error "LONG_04B02"
    %endif
    times 2 - ($ - %%insn_04b02) db 0
    %%insn_04b04:
    mov cx,[bp-0x2628] ; 04B04 8B8ED8D9
    %if ($ - %%insn_04b04) > 4
        %error "LONG_04B04"
    %endif
    times 4 - ($ - %%insn_04b04) db 0
    %%insn_04b08:
    mov dx,[bp-0x2626] ; 04B08 8B96DAD9
    %if ($ - %%insn_04b08) > 4
        %error "LONG_04B08"
    %endif
    times 4 - ($ - %%insn_04b08) db 0
    %%insn_04b0c:
    call 0x4eae ; 04B0C E89F03
    %if ($ - %%insn_04b0c) > 3
        %error "LONG_04B0C"
    %endif
    times 3 - ($ - %%insn_04b0c) db 0
    %%insn_04b0f:
    call 0x4980 ; 04B0F E86EFE
    %if ($ - %%insn_04b0f) > 3
        %error "LONG_04B0F"
    %endif
    times 3 - ($ - %%insn_04b0f) db 0
    %%insn_04b12:
    pop ds ; 04B12 1F
    %if ($ - %%insn_04b12) > 1
        %error "LONG_04B12"
    %endif
    times 1 - ($ - %%insn_04b12) db 0
    %%insn_04b13:
    pop es ; 04B13 07
    %if ($ - %%insn_04b13) > 1
        %error "LONG_04B13"
    %endif
    times 1 - ($ - %%insn_04b13) db 0
    %%insn_04b14:
    popa ; 04B14 61
    %if ($ - %%insn_04b14) > 1
        %error "LONG_04B14"
    %endif
    times 1 - ($ - %%insn_04b14) db 0
    %%insn_04b15:
    mov word [bp-0x262a],0x0 ; 04B15 C786D6D90000
    %if ($ - %%insn_04b15) > 6
        %error "LONG_04B15"
    %endif
    times 6 - ($ - %%insn_04b15) db 0
    %%insn_04b1b:
    cmp word [bp-0x2648],0x0 ; 04B1B 83BEB8D900
    %if ($ - %%insn_04b1b) > 5
        %error "LONG_04B1B"
    %endif
    times 5 - ($ - %%insn_04b1b) db 0
    %%insn_04b20:
    jnz short 0x4b2d ; 04B20 750B
    %if ($ - %%insn_04b20) > 2
        %error "LONG_04B20"
    %endif
    times 2 - ($ - %%insn_04b20) db 0
    %%insn_04b22:
    push ds ; 04B22 1E
    %if ($ - %%insn_04b22) > 1
        %error "LONG_04B22"
    %endif
    times 1 - ($ - %%insn_04b22) db 0
    %%insn_04b23:
    mov ds,word [bp-0x2aaa] ; 04B23 8E9E56D5
    %if ($ - %%insn_04b23) > 4
        %error "LONG_04B23"
    %endif
    times 4 - ($ - %%insn_04b23) db 0
    db 0x33, 0xF6 ; 04B27 33F6 | xor si,si | encoding preserved
    %%insn_04b29:
    inc byte [si+0x2] ; 04B29 FE4402
    %if ($ - %%insn_04b29) > 3
        %error "LONG_04B29"
    %endif
    times 3 - ($ - %%insn_04b29) db 0
    %%insn_04b2c:
    pop ds ; 04B2C 1F
    %if ($ - %%insn_04b2c) > 1
        %error "LONG_04B2C"
    %endif
    times 1 - ($ - %%insn_04b2c) db 0
    %%insn_04b2d:
    mov ax,[bp-0x2646] ; 04B2D 8B86BAD9
    %if ($ - %%insn_04b2d) > 4
        %error "LONG_04B2D"
    %endif
    times 4 - ($ - %%insn_04b2d) db 0
    %%insn_04b31:
    cmp ax,[bp-0x2644] ; 04B31 3B86BCD9
    %if ($ - %%insn_04b31) > 4
        %error "LONG_04B31"
    %endif
    times 4 - ($ - %%insn_04b31) db 0
    %%insn_04b35:
    jz short 0x4b40 ; 04B35 7409
    %if ($ - %%insn_04b35) > 2
        %error "LONG_04B35"
    %endif
    times 2 - ($ - %%insn_04b35) db 0
    %%insn_04b37:
    pusha ; 04B37 60
    %if ($ - %%insn_04b37) > 1
        %error "LONG_04B37"
    %endif
    times 1 - ($ - %%insn_04b37) db 0
    %%insn_04b38:
    push es ; 04B38 06
    %if ($ - %%insn_04b38) > 1
        %error "LONG_04B38"
    %endif
    times 1 - ($ - %%insn_04b38) db 0
    %%insn_04b39:
    push ds ; 04B39 1E
    %if ($ - %%insn_04b39) > 1
        %error "LONG_04B39"
    %endif
    times 1 - ($ - %%insn_04b39) db 0
    %%insn_04b3a:
    mov es,word [bp-0x2aaa] ; 04B3A 8E8656D5
    %if ($ - %%insn_04b3a) > 4
        %error "LONG_04B3A"
    %endif
    times 4 - ($ - %%insn_04b3a) db 0
    %%insn_04b3e:
    jmp short 0x4aef ; 04B3E EBAF
    %if ($ - %%insn_04b3e) > 2
        %error "LONG_04B3E"
    %endif
    times 2 - ($ - %%insn_04b3e) db 0
    %%insn_04b40:
    mov ds,word [bp-0x2aaa] ; 04B40 8E9E56D5
    %if ($ - %%insn_04b40) > 4
        %error "LONG_04B40"
    %endif
    times 4 - ($ - %%insn_04b40) db 0
    %%insn_04b44:
    cmp word [bp-0x262a],0x0 ; 04B44 83BED6D900
    %if ($ - %%insn_04b44) > 5
        %error "LONG_04B44"
    %endif
    times 5 - ($ - %%insn_04b44) db 0
    %%insn_04b49:
    jnz short 0x4b6b ; 04B49 7520
    %if ($ - %%insn_04b49) > 2
        %error "LONG_04B49"
    %endif
    times 2 - ($ - %%insn_04b49) db 0
    %%insn_04b4b:
    inc word [bp-0x262a] ; 04B4B FF86D6D9
    %if ($ - %%insn_04b4b) > 4
        %error "LONG_04B4B"
    %endif
    times 4 - ($ - %%insn_04b4b) db 0
    %%insn_04b4f:
    mov [bp-0x2628],cx ; 04B4F 898ED8D9
    %if ($ - %%insn_04b4f) > 4
        %error "LONG_04B4F"
    %endif
    times 4 - ($ - %%insn_04b4f) db 0
    %%insn_04b53:
    mov [bp-0x2626],dx ; 04B53 8996DAD9
    %if ($ - %%insn_04b53) > 4
        %error "LONG_04B53"
    %endif
    times 4 - ($ - %%insn_04b53) db 0
    %%insn_04b57:
    mov [bp-0x2624],si ; 04B57 89B6DCD9
    %if ($ - %%insn_04b57) > 4
        %error "LONG_04B57"
    %endif
    times 4 - ($ - %%insn_04b57) db 0
    %%insn_04b5b:
    mov byte [bp-0x2789],0x0 ; 04B5B C68677D800
    %if ($ - %%insn_04b5b) > 5
        %error "LONG_04B5B"
    %endif
    times 5 - ($ - %%insn_04b5b) db 0
    db 0x33, 0xF6 ; 04B60 33F6 | xor si,si | encoding preserved
    %%insn_04b62:
    call 0x4c27 ; 04B62 E8C200
    %if ($ - %%insn_04b62) > 3
        %error "LONG_04B62"
    %endif
    times 3 - ($ - %%insn_04b62) db 0
    %%insn_04b65:
    jmp 0x4bef ; 04B65 E98700
    %if ($ - %%insn_04b65) > 3
        %error "LONG_04B65"
    %endif
    times 3 - ($ - %%insn_04b65) db 0
    %if ($ - %%fragment_start) != 237
        %error "SIZE_04A7B"
    %endif
%endmacro

%macro emit_func_04a7b_part_01 0
    %%fragment_start:
    %%insn_04b6b:
    mov ax,[cs:0x5cde] ; 04B6B 2EA1DE5C
    %if ($ - %%insn_04b6b) > 4
        %error "LONG_04B6B"
    %endif
    times 4 - ($ - %%insn_04b6b) db 0
    %%insn_04b6f:
    shr ax,byte 0x4 ; 04B6F C1E804
    %if ($ - %%insn_04b6f) > 3
        %error "LONG_04B6F"
    %endif
    times 3 - ($ - %%insn_04b6f) db 0
    %%insn_04b72:
    cmp ax,[bp-0x278b] ; 04B72 3B8675D8
    %if ($ - %%insn_04b72) > 4
        %error "LONG_04B72"
    %endif
    times 4 - ($ - %%insn_04b72) db 0
    %%insn_04b76:
    jz short 0x4bae ; 04B76 7436
    %if ($ - %%insn_04b76) > 2
        %error "LONG_04B76"
    %endif
    times 2 - ($ - %%insn_04b76) db 0
    %%insn_04b78:
    push si ; 04B78 56
    %if ($ - %%insn_04b78) > 1
        %error "LONG_04B78"
    %endif
    times 1 - ($ - %%insn_04b78) db 0
    db 0x33, 0xF6 ; 04B79 33F6 | xor si,si | encoding preserved
    %%insn_04b7b:
    mov [bp-0x278b],ax ; 04B7B 898675D8
    %if ($ - %%insn_04b7b) > 4
        %error "LONG_04B7B"
    %endif
    times 4 - ($ - %%insn_04b7b) db 0
    %%insn_04b7f:
    mov al,[bp-0x2789] ; 04B7F 8A8677D8
    %if ($ - %%insn_04b7f) > 4
        %error "LONG_04B7F"
    %endif
    times 4 - ($ - %%insn_04b7f) db 0
    %%insn_04b83:
    inc al ; 04B83 FEC0
    %if ($ - %%insn_04b83) > 2
        %error "LONG_04B83"
    %endif
    times 2 - ($ - %%insn_04b83) db 0
    %%insn_04b85:
    cmp al,[si+0x2] ; 04B85 3A4402
    %if ($ - %%insn_04b85) > 3
        %error "LONG_04B85"
    %endif
    times 3 - ($ - %%insn_04b85) db 0
    %%insn_04b88:
    jc short 0x4b8c ; 04B88 7202
    %if ($ - %%insn_04b88) > 2
        %error "LONG_04B88"
    %endif
    times 2 - ($ - %%insn_04b88) db 0
    db 0x32, 0xC0 ; 04B8A 32C0 | xor al,al | encoding preserved
    %%insn_04b8c:
    mov [bp-0x2789],al ; 04B8C 888677D8
    %if ($ - %%insn_04b8c) > 4
        %error "LONG_04B8C"
    %endif
    times 4 - ($ - %%insn_04b8c) db 0
    %%insn_04b90:
    pop si ; 04B90 5E
    %if ($ - %%insn_04b90) > 1
        %error "LONG_04B90"
    %endif
    times 1 - ($ - %%insn_04b90) db 0
    %%insn_04b91:
    cmp si,[bp-0x2624] ; 04B91 3BB6DCD9
    %if ($ - %%insn_04b91) > 4
        %error "LONG_04B91"
    %endif
    times 4 - ($ - %%insn_04b91) db 0
    %%insn_04b95:
    jnz short 0x4baa ; 04B95 7513
    %if ($ - %%insn_04b95) > 2
        %error "LONG_04B95"
    %endif
    times 2 - ($ - %%insn_04b95) db 0
    %%insn_04b97:
    cmp cx,[bp-0x2628] ; 04B97 3B8ED8D9
    %if ($ - %%insn_04b97) > 4
        %error "LONG_04B97"
    %endif
    times 4 - ($ - %%insn_04b97) db 0
    %%insn_04b9b:
    jnz short 0x4baa ; 04B9B 750D
    %if ($ - %%insn_04b9b) > 2
        %error "LONG_04B9B"
    %endif
    times 2 - ($ - %%insn_04b9b) db 0
    %%insn_04b9d:
    cmp dx,[bp-0x2626] ; 04B9D 3B96DAD9
    %if ($ - %%insn_04b9d) > 4
        %error "LONG_04B9D"
    %endif
    times 4 - ($ - %%insn_04b9d) db 0
    %%insn_04ba1:
    jnz short 0x4baa ; 04BA1 7507
    %if ($ - %%insn_04ba1) > 2
        %error "LONG_04BA1"
    %endif
    times 2 - ($ - %%insn_04ba1) db 0
    db 0x33, 0xF6 ; 04BA3 33F6 | xor si,si | encoding preserved
    %%insn_04ba5:
    call 0x4cd2 ; 04BA5 E82A01
    %if ($ - %%insn_04ba5) > 3
        %error "LONG_04BA5"
    %endif
    times 3 - ($ - %%insn_04ba5) db 0
    %%insn_04ba8:
    jmp short 0x4bef ; 04BA8 EB45
    %if ($ - %%insn_04ba8) > 2
        %error "LONG_04BA8"
    %endif
    times 2 - ($ - %%insn_04ba8) db 0
    %%insn_04baa:
    jmp short 0x4bc2 ; 04BAA EB16
    %if ($ - %%insn_04baa) > 2
        %error "LONG_04BAA"
    %endif
    times 2 - ($ - %%insn_04baa) db 0
    %if ($ - %%fragment_start) != 65
        %error "SIZE_04B6B"
    %endif
%endmacro

%macro emit_func_04a7b_part_02 0
    %%fragment_start:
    %%insn_04bae:
    cmp si,[bp-0x2624] ; 04BAE 3BB6DCD9
    %if ($ - %%insn_04bae) > 4
        %error "LONG_04BAE"
    %endif
    times 4 - ($ - %%insn_04bae) db 0
    %%insn_04bb2:
    jnz short 0x4bc2 ; 04BB2 750E
    %if ($ - %%insn_04bb2) > 2
        %error "LONG_04BB2"
    %endif
    times 2 - ($ - %%insn_04bb2) db 0
    %%insn_04bb4:
    cmp cx,[bp-0x2628] ; 04BB4 3B8ED8D9
    %if ($ - %%insn_04bb4) > 4
        %error "LONG_04BB4"
    %endif
    times 4 - ($ - %%insn_04bb4) db 0
    %%insn_04bb8:
    jnz short 0x4bc2 ; 04BB8 7508
    %if ($ - %%insn_04bb8) > 2
        %error "LONG_04BB8"
    %endif
    times 2 - ($ - %%insn_04bb8) db 0
    %%insn_04bba:
    cmp dx,[bp-0x2626] ; 04BBA 3B96DAD9
    %if ($ - %%insn_04bba) > 4
        %error "LONG_04BBA"
    %endif
    times 4 - ($ - %%insn_04bba) db 0
    %%insn_04bbe:
    jnz short 0x4bc2 ; 04BBE 7502
    %if ($ - %%insn_04bbe) > 2
        %error "LONG_04BBE"
    %endif
    times 2 - ($ - %%insn_04bbe) db 0
    %%insn_04bc0:
    jmp short 0x4bef ; 04BC0 EB2D
    %if ($ - %%insn_04bc0) > 2
        %error "LONG_04BC0"
    %endif
    times 2 - ($ - %%insn_04bc0) db 0
    %%insn_04bc2:
    mov ax,[bp-0x2628] ; 04BC2 8B86D8D9
    %if ($ - %%insn_04bc2) > 4
        %error "LONG_04BC2"
    %endif
    times 4 - ($ - %%insn_04bc2) db 0
    %%insn_04bc6:
    mov bx,[bp-0x2626] ; 04BC6 8B9EDAD9
    %if ($ - %%insn_04bc6) > 4
        %error "LONG_04BC6"
    %endif
    times 4 - ($ - %%insn_04bc6) db 0
    %%insn_04bca:
    push word [bp-0x2624] ; 04BCA FFB6DCD9
    %if ($ - %%insn_04bca) > 4
        %error "LONG_04BCA"
    %endif
    times 4 - ($ - %%insn_04bca) db 0
    %%insn_04bce:
    mov [bp-0x2628],cx ; 04BCE 898ED8D9
    %if ($ - %%insn_04bce) > 4
        %error "LONG_04BCE"
    %endif
    times 4 - ($ - %%insn_04bce) db 0
    %%insn_04bd2:
    mov [bp-0x2626],dx ; 04BD2 8996DAD9
    %if ($ - %%insn_04bd2) > 4
        %error "LONG_04BD2"
    %endif
    times 4 - ($ - %%insn_04bd2) db 0
    %%insn_04bd6:
    mov [bp-0x2624],si ; 04BD6 89B6DCD9
    %if ($ - %%insn_04bd6) > 4
        %error "LONG_04BD6"
    %endif
    times 4 - ($ - %%insn_04bd6) db 0
    %%insn_04bda:
    pop si ; 04BDA 5E
    %if ($ - %%insn_04bda) > 1
        %error "LONG_04BDA"
    %endif
    times 1 - ($ - %%insn_04bda) db 0
    db 0x8B, 0xC8 ; 04BDB 8BC8 | mov cx,ax | encoding preserved
    db 0x8B, 0xD3 ; 04BDD 8BD3 | mov dx,bx | encoding preserved
    %%insn_04bdf:
    call 0x4eae ; 04BDF E8CC02
    %if ($ - %%insn_04bdf) > 3
        %error "LONG_04BDF"
    %endif
    times 3 - ($ - %%insn_04bdf) db 0
    %%insn_04be2:
    mov cx,[bp-0x262e] ; 04BE2 8B8ED2D9
    %if ($ - %%insn_04be2) > 4
        %error "LONG_04BE2"
    %endif
    times 4 - ($ - %%insn_04be2) db 0
    %%insn_04be6:
    mov dx,[bp-0x262c] ; 04BE6 8B96D4D9
    %if ($ - %%insn_04be6) > 4
        %error "LONG_04BE6"
    %endif
    times 4 - ($ - %%insn_04be6) db 0
    db 0x33, 0xF6 ; 04BEA 33F6 | xor si,si | encoding preserved
    %%insn_04bec:
    call 0x4c27 ; 04BEC E83800
    %if ($ - %%insn_04bec) > 3
        %error "LONG_04BEC"
    %endif
    times 3 - ($ - %%insn_04bec) db 0
    %%insn_04bef:
    pop bx ; 04BEF 5B
    %if ($ - %%insn_04bef) > 1
        %error "LONG_04BEF"
    %endif
    times 1 - ($ - %%insn_04bef) db 0
    %%insn_04bf0:
    pop ds ; 04BF0 1F
    %if ($ - %%insn_04bf0) > 1
        %error "LONG_04BF0"
    %endif
    times 1 - ($ - %%insn_04bf0) db 0
    %%insn_04bf1:
    pop es ; 04BF1 07
    %if ($ - %%insn_04bf1) > 1
        %error "LONG_04BF1"
    %endif
    times 1 - ($ - %%insn_04bf1) db 0
    %%insn_04bf2:
    pop si ; 04BF2 5E
    %if ($ - %%insn_04bf2) > 1
        %error "LONG_04BF2"
    %endif
    times 1 - ($ - %%insn_04bf2) db 0
    %%insn_04bf3:
    pop di ; 04BF3 5F
    %if ($ - %%insn_04bf3) > 1
        %error "LONG_04BF3"
    %endif
    times 1 - ($ - %%insn_04bf3) db 0
    %%insn_04bf4:
    ret ; 04BF4 C3
    %if ($ - %%insn_04bf4) > 1
        %error "LONG_04BF4"
    %endif
    times 1 - ($ - %%insn_04bf4) db 0
    %if ($ - %%fragment_start) != 71
        %error "SIZE_04BAE"
    %endif
%endmacro
