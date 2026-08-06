; Linear entry 04CD2 (1000:4cd2)
; Ghidra working symbol: FUN_1000_4cd2
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04cd2_part_00 0
    %%fragment_start:
func_04cd2:
    %%insn_04cd2:
    cmp word [bp-0x30de],0x0 ; 04CD2 83BE22CF00
    %if ($ - %%insn_04cd2) > 5
        %error "LONG_04CD2"
    %endif
    times 5 - ($ - %%insn_04cd2) db 0
    %%insn_04cd7:
    jz short 0x4cdc ; 04CD7 7403
    %if ($ - %%insn_04cd7) > 2
        %error "LONG_04CD7"
    %endif
    times 2 - ($ - %%insn_04cd7) db 0
    %%insn_04cd9:
    jmp 0x4e1f ; 04CD9 E94301
    %if ($ - %%insn_04cd9) > 3
        %error "LONG_04CD9"
    %endif
    times 3 - ($ - %%insn_04cd9) db 0
    %%insn_04cdc:
    push es ; 04CDC 06
    %if ($ - %%insn_04cdc) > 1
        %error "LONG_04CDC"
    %endif
    times 1 - ($ - %%insn_04cdc) db 0
    %%insn_04cdd:
    push ds ; 04CDD 1E
    %if ($ - %%insn_04cdd) > 1
        %error "LONG_04CDD"
    %endif
    times 1 - ($ - %%insn_04cdd) db 0
    %%insn_04cde:
    mov ax,0xa000 ; 04CDE B800A0
    %if ($ - %%insn_04cde) > 3
        %error "LONG_04CDE"
    %endif
    times 3 - ($ - %%insn_04cde) db 0
    %%insn_04ce1:
    mov es,ax ; 04CE1 8EC0
    %if ($ - %%insn_04ce1) > 2
        %error "LONG_04CE1"
    %endif
    times 2 - ($ - %%insn_04ce1) db 0
    db 0x8B, 0xD9 ; 04CE3 8BD9 | mov bx,cx | encoding preserved
    %%insn_04ce5:
    mov cx,[bp-0x2996] ; 04CE5 8B8E6AD6
    %if ($ - %%insn_04ce5) > 4
        %error "LONG_04CE5"
    %endif
    times 4 - ($ - %%insn_04ce5) db 0
    db 0x8B, 0xC2 ; 04CE9 8BC2 | mov ax,dx | encoding preserved
    %%insn_04ceb:
    mul cx ; 04CEB F7E1
    %if ($ - %%insn_04ceb) > 2
        %error "LONG_04CEB"
    %endif
    times 2 - ($ - %%insn_04ceb) db 0
    db 0x8B, 0xF8 ; 04CED 8BF8 | mov di,ax | encoding preserved
    db 0x8A, 0xC2 ; 04CEF 8AC2 | mov al,dl | encoding preserved
    db 0x03, 0xFB ; 04CF1 03FB | add di,bx | encoding preserved
    %%insn_04cf3:
    adc al,0x0 ; 04CF3 1400
    %if ($ - %%insn_04cf3) > 2
        %error "LONG_04CF3"
    %endif
    times 2 - ($ - %%insn_04cf3) db 0
    %%insn_04cf5:
    cmp al,[bp-0x3076] ; 04CF5 3A868ACF
    %if ($ - %%insn_04cf5) > 4
        %error "LONG_04CF5"
    %endif
    times 4 - ($ - %%insn_04cf5) db 0
    %%insn_04cf9:
    jz short 0x4d01 ; 04CF9 7406
    %if ($ - %%insn_04cf9) > 2
        %error "LONG_04CF9"
    %endif
    times 2 - ($ - %%insn_04cf9) db 0
    %%insn_04cfb:
    call 0x2d50 ; 04CFB E852E0
    %if ($ - %%insn_04cfb) > 3
        %error "LONG_04CFB"
    %endif
    times 3 - ($ - %%insn_04cfb) db 0
    %%insn_04cfe:
    call 0x2d5a ; 04CFE E859E0
    %if ($ - %%insn_04cfe) > 3
        %error "LONG_04CFE"
    %endif
    times 3 - ($ - %%insn_04cfe) db 0
    %%insn_04d01:
    lodsb ; 04D01 AC
    %if ($ - %%insn_04d01) > 1
        %error "LONG_04D01"
    %endif
    times 1 - ($ - %%insn_04d01) db 0
    db 0x8A, 0xE8 ; 04D02 8AE8 | mov ch,al | encoding preserved
    %%insn_04d04:
    lodsb ; 04D04 AC
    %if ($ - %%insn_04d04) > 1
        %error "LONG_04D04"
    %endif
    times 1 - ($ - %%insn_04d04) db 0
    db 0x8A, 0xC8 ; 04D05 8AC8 | mov cl,al | encoding preserved
    %%insn_04d07:
    inc si ; 04D07 46
    %if ($ - %%insn_04d07) > 1
        %error "LONG_04D07"
    %endif
    times 1 - ($ - %%insn_04d07) db 0
    %%insn_04d08:
    push cx ; 04D08 51
    %if ($ - %%insn_04d08) > 1
        %error "LONG_04D08"
    %endif
    times 1 - ($ - %%insn_04d08) db 0
    db 0x33, 0xC9 ; 04D09 33C9 | xor cx,cx | encoding preserved
    db 0x33, 0xD2 ; 04D0B 33D2 | xor dx,dx | encoding preserved
    %%insn_04d0d:
    lodsw ; 04D0D AD
    %if ($ - %%insn_04d0d) > 1
        %error "LONG_04D0D"
    %endif
    times 1 - ($ - %%insn_04d0d) db 0
    %%insn_04d0e:
    mov cl,[bp-0x2789] ; 04D0E 8A8E77D8
    %if ($ - %%insn_04d0e) > 4
        %error "LONG_04D0E"
    %endif
    times 4 - ($ - %%insn_04d0e) db 0
    %%insn_04d12:
    mul cx ; 04D12 F7E1
    %if ($ - %%insn_04d12) > 2
        %error "LONG_04D12"
    %endif
    times 2 - ($ - %%insn_04d12) db 0
    db 0x03, 0xF0 ; 04D14 03F0 | add si,ax | encoding preserved
    %%insn_04d16:
    pop cx ; 04D16 59
    %if ($ - %%insn_04d16) > 1
        %error "LONG_04D16"
    %endif
    times 1 - ($ - %%insn_04d16) db 0
    %%insn_04d17:
    push dx ; 04D17 52
    %if ($ - %%insn_04d17) > 1
        %error "LONG_04D17"
    %endif
    times 1 - ($ - %%insn_04d17) db 0
    %%insn_04d18:
    mov dx,0x3da ; 04D18 BADA03
    %if ($ - %%insn_04d18) > 3
        %error "LONG_04D18"
    %endif
    times 3 - ($ - %%insn_04d18) db 0
    %%insn_04d1b:
    in al,dx ; 04D1B EC
    %if ($ - %%insn_04d1b) > 1
        %error "LONG_04D1B"
    %endif
    times 1 - ($ - %%insn_04d1b) db 0
    %%insn_04d1c:
    and al,0x8 ; 04D1C 2408
    %if ($ - %%insn_04d1c) > 2
        %error "LONG_04D1C"
    %endif
    times 2 - ($ - %%insn_04d1c) db 0
    %%insn_04d1e:
    jmp short 0x4d20 ; 04D1E EB00
    %if ($ - %%insn_04d1e) > 2
        %error "LONG_04D1E"
    %endif
    times 2 - ($ - %%insn_04d1e) db 0
    %%insn_04d20:
    jnz short 0x4d1b ; 04D20 75F9
    %if ($ - %%insn_04d20) > 2
        %error "LONG_04D20"
    %endif
    times 2 - ($ - %%insn_04d20) db 0
    %%insn_04d22:
    in al,dx ; 04D22 EC
    %if ($ - %%insn_04d22) > 1
        %error "LONG_04D22"
    %endif
    times 1 - ($ - %%insn_04d22) db 0
    %%insn_04d23:
    and al,0x8 ; 04D23 2408
    %if ($ - %%insn_04d23) > 2
        %error "LONG_04D23"
    %endif
    times 2 - ($ - %%insn_04d23) db 0
    %%insn_04d25:
    jmp short 0x4d27 ; 04D25 EB00
    %if ($ - %%insn_04d25) > 2
        %error "LONG_04D25"
    %endif
    times 2 - ($ - %%insn_04d25) db 0
    %%insn_04d27:
    jz short 0x4d22 ; 04D27 74F9
    %if ($ - %%insn_04d27) > 2
        %error "LONG_04D27"
    %endif
    times 2 - ($ - %%insn_04d27) db 0
    %%insn_04d29:
    pop dx ; 04D29 5A
    %if ($ - %%insn_04d29) > 1
        %error "LONG_04D29"
    %endif
    times 1 - ($ - %%insn_04d29) db 0
    %%insn_04d2a:
    mov [bp-0x264e],cx ; 04D2A 898EB2D9
    %if ($ - %%insn_04d2a) > 4
        %error "LONG_04D2A"
    %endif
    times 4 - ($ - %%insn_04d2a) db 0
    db 0x8B, 0xD3 ; 04D2E 8BD3 | mov dx,bx | encoding preserved
    %%insn_04d30:
    mov bx,0xc000 ; 04D30 BB00C0
    %if ($ - %%insn_04d30) > 3
        %error "LONG_04D30"
    %endif
    times 3 - ($ - %%insn_04d30) db 0
    %%insn_04d33:
    push cx ; 04D33 51
    %if ($ - %%insn_04d33) > 1
        %error "LONG_04D33"
    %endif
    times 1 - ($ - %%insn_04d33) db 0
    %%insn_04d34:
    push di ; 04D34 57
    %if ($ - %%insn_04d34) > 1
        %error "LONG_04D34"
    %endif
    times 1 - ($ - %%insn_04d34) db 0
    %%insn_04d35:
    mov al,[bp-0x3076] ; 04D35 8A868ACF
    %if ($ - %%insn_04d35) > 4
        %error "LONG_04D35"
    %endif
    times 4 - ($ - %%insn_04d35) db 0
    %%insn_04d39:
    push ax ; 04D39 50
    %if ($ - %%insn_04d39) > 1
        %error "LONG_04D39"
    %endif
    times 1 - ($ - %%insn_04d39) db 0
    db 0x32, 0xE4 ; 04D3A 32E4 | xor ah,ah | encoding preserved
    %%insn_04d3c:
    lodsb ; 04D3C AC
    %if ($ - %%insn_04d3c) > 1
        %error "LONG_04D3C"
    %endif
    times 1 - ($ - %%insn_04d3c) db 0
    db 0x22, 0xC0 ; 04D3D 22C0 | and al,al | encoding preserved
    %%insn_04d3f:
    jz short 0x4d52 ; 04D3F 7411
    %if ($ - %%insn_04d3f) > 2
        %error "LONG_04D3F"
    %endif
    times 2 - ($ - %%insn_04d3f) db 0
    db 0x8B, 0xD3 ; 04D41 8BD3 | mov dx,bx | encoding preserved
    db 0x8A, 0xD8 ; 04D43 8AD8 | mov bl,al | encoding preserved
    db 0x32, 0xFF ; 04D45 32FF | xor bh,bh | encoding preserved
    %%insn_04d47:
    add bx,0xe166 ; 04D47 81C366E1
    %if ($ - %%insn_04d47) > 4
        %error "LONG_04D47"
    %endif
    times 4 - ($ - %%insn_04d47) db 0
    %%insn_04d4b:
    mov al,[ss:bx] ; 04D4B 368A07
    %if ($ - %%insn_04d4b) > 3
        %error "LONG_04D4B"
    %endif
    times 3 - ($ - %%insn_04d4b) db 0
    db 0x8B, 0xDA ; 04D4E 8BDA | mov bx,dx | encoding preserved
    %%insn_04d50:
    jmp short 0x4d54 ; 04D50 EB02
    %if ($ - %%insn_04d50) > 2
        %error "LONG_04D50"
    %endif
    times 2 - ($ - %%insn_04d50) db 0
    %%insn_04d52:
    mov al,[bx] ; 04D52 8A07
    %if ($ - %%insn_04d52) > 2
        %error "LONG_04D52"
    %endif
    times 2 - ($ - %%insn_04d52) db 0
    %%insn_04d54:
    stosb ; 04D54 AA
    %if ($ - %%insn_04d54) > 1
        %error "LONG_04D54"
    %endif
    times 1 - ($ - %%insn_04d54) db 0
    %%insn_04d55:
    inc bx ; 04D55 43
    %if ($ - %%insn_04d55) > 1
        %error "LONG_04D55"
    %endif
    times 1 - ($ - %%insn_04d55) db 0
    db 0x23, 0xFF ; 04D56 23FF | and di,di | encoding preserved
    %%insn_04d58:
    jnz short 0x4d68 ; 04D58 750E
    %if ($ - %%insn_04d58) > 2
        %error "LONG_04D58"
    %endif
    times 2 - ($ - %%insn_04d58) db 0
    %%insn_04d5a:
    mov al,[bp-0x3076] ; 04D5A 8A868ACF
    %if ($ - %%insn_04d5a) > 4
        %error "LONG_04D5A"
    %endif
    times 4 - ($ - %%insn_04d5a) db 0
    %%insn_04d5e:
    inc al ; 04D5E FEC0
    %if ($ - %%insn_04d5e) > 2
        %error "LONG_04D5E"
    %endif
    times 2 - ($ - %%insn_04d5e) db 0
    %%insn_04d60:
    push cx ; 04D60 51
    %if ($ - %%insn_04d60) > 1
        %error "LONG_04D60"
    %endif
    times 1 - ($ - %%insn_04d60) db 0
    %%insn_04d61:
    call 0x2d50 ; 04D61 E8ECDF
    %if ($ - %%insn_04d61) > 3
        %error "LONG_04D61"
    %endif
    times 3 - ($ - %%insn_04d61) db 0
    %%insn_04d64:
    call 0x2d5a ; 04D64 E8F3DF
    %if ($ - %%insn_04d64) > 3
        %error "LONG_04D64"
    %endif
    times 3 - ($ - %%insn_04d64) db 0
    %%insn_04d67:
    pop cx ; 04D67 59
    %if ($ - %%insn_04d67) > 1
        %error "LONG_04D67"
    %endif
    times 1 - ($ - %%insn_04d67) db 0
    %%insn_04d68:
    dec ch ; 04D68 FECD
    %if ($ - %%insn_04d68) > 2
        %error "LONG_04D68"
    %endif
    times 2 - ($ - %%insn_04d68) db 0
    %%insn_04d6a:
    jnz short 0x4d3c ; 04D6A 75D0
    %if ($ - %%insn_04d6a) > 2
        %error "LONG_04D6A"
    %endif
    times 2 - ($ - %%insn_04d6a) db 0
    %%insn_04d6c:
    pop cx ; 04D6C 59
    %if ($ - %%insn_04d6c) > 1
        %error "LONG_04D6C"
    %endif
    times 1 - ($ - %%insn_04d6c) db 0
    %%insn_04d6d:
    pop di ; 04D6D 5F
    %if ($ - %%insn_04d6d) > 1
        %error "LONG_04D6D"
    %endif
    times 1 - ($ - %%insn_04d6d) db 0
    %%insn_04d6e:
    add di,[bp-0x2996] ; 04D6E 03BE6AD6
    %if ($ - %%insn_04d6e) > 4
        %error "LONG_04D6E"
    %endif
    times 4 - ($ - %%insn_04d6e) db 0
    %%insn_04d72:
    jnc short 0x4d84 ; 04D72 7310
    %if ($ - %%insn_04d72) > 2
        %error "LONG_04D72"
    %endif
    times 2 - ($ - %%insn_04d72) db 0
    %%insn_04d74:
    mov al,[bp-0x3076] ; 04D74 8A868ACF
    %if ($ - %%insn_04d74) > 4
        %error "LONG_04D74"
    %endif
    times 4 - ($ - %%insn_04d74) db 0
    db 0x3A, 0xC1 ; 04D78 3AC1 | cmp al,cl | encoding preserved
    %%insn_04d7a:
    jnz short 0x4d84 ; 04D7A 7508
    %if ($ - %%insn_04d7a) > 2
        %error "LONG_04D7A"
    %endif
    times 2 - ($ - %%insn_04d7a) db 0
    %%insn_04d7c:
    inc al ; 04D7C FEC0
    %if ($ - %%insn_04d7c) > 2
        %error "LONG_04D7C"
    %endif
    times 2 - ($ - %%insn_04d7c) db 0
    %%insn_04d7e:
    call 0x2d50 ; 04D7E E8CFDF
    %if ($ - %%insn_04d7e) > 3
        %error "LONG_04D7E"
    %endif
    times 3 - ($ - %%insn_04d7e) db 0
    %%insn_04d81:
    call 0x2d5a ; 04D81 E8D6DF
    %if ($ - %%insn_04d81) > 3
        %error "LONG_04D81"
    %endif
    times 3 - ($ - %%insn_04d81) db 0
    %%insn_04d84:
    pop cx ; 04D84 59
    %if ($ - %%insn_04d84) > 1
        %error "LONG_04D84"
    %endif
    times 1 - ($ - %%insn_04d84) db 0
    %%insn_04d85:
    dec cl ; 04D85 FEC9
    %if ($ - %%insn_04d85) > 2
        %error "LONG_04D85"
    %endif
    times 2 - ($ - %%insn_04d85) db 0
    %%insn_04d87:
    jnz short 0x4d33 ; 04D87 75AA
    %if ($ - %%insn_04d87) > 2
        %error "LONG_04D87"
    %endif
    times 2 - ($ - %%insn_04d87) db 0
    %%insn_04d89:
    pop ds ; 04D89 1F
    %if ($ - %%insn_04d89) > 1
        %error "LONG_04D89"
    %endif
    times 1 - ($ - %%insn_04d89) db 0
    %%insn_04d8a:
    pop es ; 04D8A 07
    %if ($ - %%insn_04d8a) > 1
        %error "LONG_04D8A"
    %endif
    times 1 - ($ - %%insn_04d8a) db 0
    %%insn_04d8b:
    ret ; 04D8B C3
    %if ($ - %%insn_04d8b) > 1
        %error "LONG_04D8B"
    %endif
    times 1 - ($ - %%insn_04d8b) db 0
    %if ($ - %%fragment_start) != 186
        %error "SIZE_04CD2"
    %endif
%endmacro
