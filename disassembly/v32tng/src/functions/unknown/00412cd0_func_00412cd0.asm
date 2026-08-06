; PE virtual entry 00412CD0
; Ghidra working symbol: FUN_00412cd0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412cd0_part_00 0
    %%fragment_start:
func_00412cd0:
    %%insn_00412cd0:
    push ebx ; 00412CD0 53
    %if ($ - %%insn_00412cd0) > 1
        %error "LONG_00412CD0"
    %endif
    times 1 - ($ - %%insn_00412cd0) db 0
    %%insn_00412cd1:
    push esi ; 00412CD1 56
    %if ($ - %%insn_00412cd1) > 1
        %error "LONG_00412CD1"
    %endif
    times 1 - ($ - %%insn_00412cd1) db 0
    %%insn_00412cd2:
    push edi ; 00412CD2 57
    %if ($ - %%insn_00412cd2) > 1
        %error "LONG_00412CD2"
    %endif
    times 1 - ($ - %%insn_00412cd2) db 0
    %%insn_00412cd3:
    push dword 0x423588 ; 00412CD3 6888354200
    %if ($ - %%insn_00412cd3) > 5
        %error "LONG_00412CD3"
    %endif
    times 5 - ($ - %%insn_00412cd3) db 0
    %%insn_00412cd8:
    call dword near [0x4243b4] ; 00412CD8 FF15B4434200
    %if ($ - %%insn_00412cd8) > 6
        %error "LONG_00412CD8"
    %endif
    times 6 - ($ - %%insn_00412cd8) db 0
    %%insn_00412cde:
    mov eax,[0x423584] ; 00412CDE A184354200
    %if ($ - %%insn_00412cde) > 5
        %error "LONG_00412CDE"
    %endif
    times 5 - ($ - %%insn_00412cde) db 0
    %%insn_00412ce3:
    mov edi,[0x4243e0] ; 00412CE3 8B3DE0434200
    %if ($ - %%insn_00412ce3) > 6
        %error "LONG_00412CE3"
    %endif
    times 6 - ($ - %%insn_00412ce3) db 0
    %%insn_00412ce9:
    test eax,eax ; 00412CE9 85C0
    %if ($ - %%insn_00412ce9) > 2
        %error "LONG_00412CE9"
    %endif
    times 2 - ($ - %%insn_00412ce9) db 0
    %%insn_00412ceb:
    jz short 0x412d05 ; 00412CEB 7418
    %if ($ - %%insn_00412ceb) > 2
        %error "LONG_00412CEB"
    %endif
    times 2 - ($ - %%insn_00412ceb) db 0
    %%insn_00412ced:
    push dword 0x423588 ; 00412CED 6888354200
    %if ($ - %%insn_00412ced) > 5
        %error "LONG_00412CED"
    %endif
    times 5 - ($ - %%insn_00412ced) db 0
    %%insn_00412cf2:
    call edi ; 00412CF2 FFD7
    %if ($ - %%insn_00412cf2) > 2
        %error "LONG_00412CF2"
    %endif
    times 2 - ($ - %%insn_00412cf2) db 0
    %%insn_00412cf4:
    push dword 0x13 ; 00412CF4 6A13
    %if ($ - %%insn_00412cf4) > 2
        %error "LONG_00412CF4"
    %endif
    times 2 - ($ - %%insn_00412cf4) db 0
    %%insn_00412cf6:
    call 0x40df00 ; 00412CF6 E805B2FFFF
    %if ($ - %%insn_00412cf6) > 5
        %error "LONG_00412CF6"
    %endif
    times 5 - ($ - %%insn_00412cf6) db 0
    %%insn_00412cfb:
    add esp,0x4 ; 00412CFB 83C404
    %if ($ - %%insn_00412cfb) > 3
        %error "LONG_00412CFB"
    %endif
    times 3 - ($ - %%insn_00412cfb) db 0
    %%insn_00412cfe:
    mov esi,0x1 ; 00412CFE BE01000000
    %if ($ - %%insn_00412cfe) > 5
        %error "LONG_00412CFE"
    %endif
    times 5 - ($ - %%insn_00412cfe) db 0
    %%insn_00412d03:
    jmp short 0x412d07 ; 00412D03 EB02
    %if ($ - %%insn_00412d03) > 2
        %error "LONG_00412D03"
    %endif
    times 2 - ($ - %%insn_00412d03) db 0
    db 0x33, 0xF6 ; 00412D05 33F6 | xor esi,esi | encoding preserved
    %%insn_00412d07:
    mov eax,[esp+0x14] ; 00412D07 8B442414
    %if ($ - %%insn_00412d07) > 4
        %error "LONG_00412D07"
    %endif
    times 4 - ($ - %%insn_00412d07) db 0
    %%insn_00412d0b:
    mov ecx,[esp+0x10] ; 00412D0B 8B4C2410
    %if ($ - %%insn_00412d0b) > 4
        %error "LONG_00412D0B"
    %endif
    times 4 - ($ - %%insn_00412d0b) db 0
    %%insn_00412d0f:
    push eax ; 00412D0F 50
    %if ($ - %%insn_00412d0f) > 1
        %error "LONG_00412D0F"
    %endif
    times 1 - ($ - %%insn_00412d0f) db 0
    %%insn_00412d10:
    push ecx ; 00412D10 51
    %if ($ - %%insn_00412d10) > 1
        %error "LONG_00412D10"
    %endif
    times 1 - ($ - %%insn_00412d10) db 0
    %%insn_00412d11:
    call 0x412d40 ; 00412D11 E82A000000
    %if ($ - %%insn_00412d11) > 5
        %error "LONG_00412D11"
    %endif
    times 5 - ($ - %%insn_00412d11) db 0
    %%insn_00412d16:
    add esp,0x8 ; 00412D16 83C408
    %if ($ - %%insn_00412d16) > 3
        %error "LONG_00412D16"
    %endif
    times 3 - ($ - %%insn_00412d16) db 0
    db 0x8B, 0xD8 ; 00412D19 8BD8 | mov ebx,eax | encoding preserved
    %%insn_00412d1b:
    test esi,esi ; 00412D1B 85F6
    %if ($ - %%insn_00412d1b) > 2
        %error "LONG_00412D1B"
    %endif
    times 2 - ($ - %%insn_00412d1b) db 0
    %%insn_00412d1d:
    jz short 0x412d2f ; 00412D1D 7410
    %if ($ - %%insn_00412d1d) > 2
        %error "LONG_00412D1D"
    %endif
    times 2 - ($ - %%insn_00412d1d) db 0
    %%insn_00412d1f:
    push dword 0x13 ; 00412D1F 6A13
    %if ($ - %%insn_00412d1f) > 2
        %error "LONG_00412D1F"
    %endif
    times 2 - ($ - %%insn_00412d1f) db 0
    %%insn_00412d21:
    call 0x40df80 ; 00412D21 E85AB2FFFF
    %if ($ - %%insn_00412d21) > 5
        %error "LONG_00412D21"
    %endif
    times 5 - ($ - %%insn_00412d21) db 0
    %%insn_00412d26:
    add esp,0x4 ; 00412D26 83C404
    %if ($ - %%insn_00412d26) > 3
        %error "LONG_00412D26"
    %endif
    times 3 - ($ - %%insn_00412d26) db 0
    db 0x8B, 0xC3 ; 00412D29 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00412d2b:
    pop edi ; 00412D2B 5F
    %if ($ - %%insn_00412d2b) > 1
        %error "LONG_00412D2B"
    %endif
    times 1 - ($ - %%insn_00412d2b) db 0
    %%insn_00412d2c:
    pop esi ; 00412D2C 5E
    %if ($ - %%insn_00412d2c) > 1
        %error "LONG_00412D2C"
    %endif
    times 1 - ($ - %%insn_00412d2c) db 0
    %%insn_00412d2d:
    pop ebx ; 00412D2D 5B
    %if ($ - %%insn_00412d2d) > 1
        %error "LONG_00412D2D"
    %endif
    times 1 - ($ - %%insn_00412d2d) db 0
    %%insn_00412d2e:
    ret ; 00412D2E C3
    %if ($ - %%insn_00412d2e) > 1
        %error "LONG_00412D2E"
    %endif
    times 1 - ($ - %%insn_00412d2e) db 0
    %%insn_00412d2f:
    push dword 0x423588 ; 00412D2F 6888354200
    %if ($ - %%insn_00412d2f) > 5
        %error "LONG_00412D2F"
    %endif
    times 5 - ($ - %%insn_00412d2f) db 0
    %%insn_00412d34:
    call edi ; 00412D34 FFD7
    %if ($ - %%insn_00412d34) > 2
        %error "LONG_00412D34"
    %endif
    times 2 - ($ - %%insn_00412d34) db 0
    %%insn_00412d36:
    pop edi ; 00412D36 5F
    %if ($ - %%insn_00412d36) > 1
        %error "LONG_00412D36"
    %endif
    times 1 - ($ - %%insn_00412d36) db 0
    db 0x8B, 0xC3 ; 00412D37 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00412d39:
    pop esi ; 00412D39 5E
    %if ($ - %%insn_00412d39) > 1
        %error "LONG_00412D39"
    %endif
    times 1 - ($ - %%insn_00412d39) db 0
    %%insn_00412d3a:
    pop ebx ; 00412D3A 5B
    %if ($ - %%insn_00412d3a) > 1
        %error "LONG_00412D3A"
    %endif
    times 1 - ($ - %%insn_00412d3a) db 0
    %%insn_00412d3b:
    ret ; 00412D3B C3
    %if ($ - %%insn_00412d3b) > 1
        %error "LONG_00412D3B"
    %endif
    times 1 - ($ - %%insn_00412d3b) db 0
    %if ($ - %%fragment_start) != 108
        %error "function fragment size drift: 00412CD0"
    %endif
%endmacro
