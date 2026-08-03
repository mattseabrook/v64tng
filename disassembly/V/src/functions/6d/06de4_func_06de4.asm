; Linear entry 06DE4 (1000:6de4)
; Ghidra working symbol: FUN_1000_6de4
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06de4_part_00 0
    %%fragment_start:
func_06de4:
    %%insn_06de4:
    push bp ; 06DE4 55
    %if ($ - %%insn_06de4) > 1
        %error "LONG_06DE4"
    %endif
    times 1 - ($ - %%insn_06de4) db 0
    db 0x8B, 0xEC ; 06DE5 8BEC | mov bp,sp | encoding preserved
    %%insn_06de7:
    push di ; 06DE7 57
    %if ($ - %%insn_06de7) > 1
        %error "LONG_06DE7"
    %endif
    times 1 - ($ - %%insn_06de7) db 0
    %%insn_06de8:
    push si ; 06DE8 56
    %if ($ - %%insn_06de8) > 1
        %error "LONG_06DE8"
    %endif
    times 1 - ($ - %%insn_06de8) db 0
    %%insn_06de9:
    mov si,[bp+0x8] ; 06DE9 8B7608
    %if ($ - %%insn_06de9) > 3
        %error "LONG_06DE9"
    %endif
    times 3 - ($ - %%insn_06de9) db 0
    %%insn_06dec:
    mov byte [0xe8fb],0x0 ; 06DEC C606FBE800
    %if ($ - %%insn_06dec) > 5
        %error "LONG_06DEC"
    %endif
    times 5 - ($ - %%insn_06dec) db 0
    %%insn_06df1:
    inc word [0xe91c] ; 06DF1 FF061CE9
    %if ($ - %%insn_06df1) > 4
        %error "LONG_06DF1"
    %endif
    times 4 - ($ - %%insn_06df1) db 0
    db 0x0B, 0xF6 ; 06DF5 0BF6 | or si,si | encoding preserved
    %%insn_06df7:
    jnz short 0x6e0c ; 06DF7 7513
    %if ($ - %%insn_06df7) > 2
        %error "LONG_06DF7"
    %endif
    times 2 - ($ - %%insn_06df7) db 0
    %%insn_06df9:
    mov [0xe8fd],si ; 06DF9 8936FDE8
    %if ($ - %%insn_06df9) > 4
        %error "LONG_06DF9"
    %endif
    times 4 - ($ - %%insn_06df9) db 0
    %%insn_06dfd:
    mov al,[bp+0x6] ; 06DFD 8A4606
    %if ($ - %%insn_06dfd) > 3
        %error "LONG_06DFD"
    %endif
    times 3 - ($ - %%insn_06dfd) db 0
    db 0x8B, 0xD6 ; 06E00 8BD6 | mov dx,si | encoding preserved
    %%insn_06e02:
    call 0x6846 ; 06E02 E841FA
    %if ($ - %%insn_06e02) > 3
        %error "LONG_06E02"
    %endif
    times 3 - ($ - %%insn_06e02) db 0
    %%insn_06e05:
    pop si ; 06E05 5E
    %if ($ - %%insn_06e05) > 1
        %error "LONG_06E05"
    %endif
    times 1 - ($ - %%insn_06e05) db 0
    %%insn_06e06:
    pop di ; 06E06 5F
    %if ($ - %%insn_06e06) > 1
        %error "LONG_06E06"
    %endif
    times 1 - ($ - %%insn_06e06) db 0
    db 0x8B, 0xE5 ; 06E07 8BE5 | mov sp,bp | encoding preserved
    %%insn_06e09:
    pop bp ; 06E09 5D
    %if ($ - %%insn_06e09) > 1
        %error "LONG_06E09"
    %endif
    times 1 - ($ - %%insn_06e09) db 0
    %%insn_06e0a:
    retf ; 06E0A CB
    %if ($ - %%insn_06e0a) > 1
        %error "LONG_06E0A"
    %endif
    times 1 - ($ - %%insn_06e0a) db 0
    %if ($ - %%fragment_start) != 39
        %error "SIZE_06DE4"
    %endif
%endmacro

%macro emit_func_06de4_part_01 0
    %%fragment_start:
    %%insn_06e0c:
    cmp si,0x1 ; 06E0C 83FE01
    %if ($ - %%insn_06e0c) > 3
        %error "LONG_06E0C"
    %endif
    times 3 - ($ - %%insn_06e0c) db 0
    %%insn_06e0f:
    jnz short 0x6e1c ; 06E0F 750B
    %if ($ - %%insn_06e0f) > 2
        %error "LONG_06E0F"
    %endif
    times 2 - ($ - %%insn_06e0f) db 0
    %%insn_06e11:
    mov [0xe8fd],si ; 06E11 8936FDE8
    %if ($ - %%insn_06e11) > 4
        %error "LONG_06E11"
    %endif
    times 4 - ($ - %%insn_06e11) db 0
    %%insn_06e15:
    mov al,[bp+0x6] ; 06E15 8A4606
    %if ($ - %%insn_06e15) > 3
        %error "LONG_06E15"
    %endif
    times 3 - ($ - %%insn_06e15) db 0
    db 0x2B, 0xD2 ; 06E18 2BD2 | sub dx,dx | encoding preserved
    %%insn_06e1a:
    jmp short 0x6e02 ; 06E1A EBE6
    %if ($ - %%insn_06e1a) > 2
        %error "LONG_06E1A"
    %endif
    times 2 - ($ - %%insn_06e1a) db 0
    %%insn_06e1c:
    mov word [0xe8fd],0x1 ; 06E1C C706FDE80100
    %if ($ - %%insn_06e1c) > 6
        %error "LONG_06E1C"
    %endif
    times 6 - ($ - %%insn_06e1c) db 0
    %%insn_06e22:
    mov ax,[0xe91c] ; 06E22 A11CE9
    %if ($ - %%insn_06e22) > 3
        %error "LONG_06E22"
    %endif
    times 3 - ($ - %%insn_06e22) db 0
    %%insn_06e25:
    mov cx,0x3 ; 06E25 B90300
    %if ($ - %%insn_06e25) > 3
        %error "LONG_06E25"
    %endif
    times 3 - ($ - %%insn_06e25) db 0
    %%insn_06e28:
    cwd ; 06E28 99
    %if ($ - %%insn_06e28) > 1
        %error "LONG_06E28"
    %endif
    times 1 - ($ - %%insn_06e28) db 0
    %%insn_06e29:
    idiv cx ; 06E29 F7F9
    %if ($ - %%insn_06e29) > 2
        %error "LONG_06E29"
    %endif
    times 2 - ($ - %%insn_06e29) db 0
    db 0x8B, 0xC6 ; 06E2B 8BC6 | mov ax,si | encoding preserved
    %%insn_06e2d:
    shl si,1 ; 06E2D D1E6
    %if ($ - %%insn_06e2d) > 2
        %error "LONG_06E2D"
    %endif
    times 2 - ($ - %%insn_06e2d) db 0
    db 0x03, 0xF0 ; 06E2F 03F0 | add si,ax | encoding preserved
    db 0x8B, 0xDA ; 06E31 8BDA | mov bx,dx | encoding preserved
    %%insn_06e33:
    mov al,[bx+si-0x16ff] ; 06E33 8A8001E9
    %if ($ - %%insn_06e33) > 4
        %error "LONG_06E33"
    %endif
    times 4 - ($ - %%insn_06e33) db 0
    %%insn_06e37:
    cbw ; 06E37 98
    %if ($ - %%insn_06e37) > 1
        %error "LONG_06E37"
    %endif
    times 1 - ($ - %%insn_06e37) db 0
    db 0x8B, 0xF8 ; 06E38 8BF8 | mov di,ax | encoding preserved
    %%insn_06e3a:
    cmp di,0x2 ; 06E3A 83FF02
    %if ($ - %%insn_06e3a) > 3
        %error "LONG_06E3A"
    %endif
    times 3 - ($ - %%insn_06e3a) db 0
    %%insn_06e3d:
    jnl short 0x6e46 ; 06E3D 7D07
    %if ($ - %%insn_06e3d) > 2
        %error "LONG_06E3D"
    %endif
    times 2 - ($ - %%insn_06e3d) db 0
    %%insn_06e3f:
    mov al,[bp+0x6] ; 06E3F 8A4606
    %if ($ - %%insn_06e3f) > 3
        %error "LONG_06E3F"
    %endif
    times 3 - ($ - %%insn_06e3f) db 0
    db 0x8B, 0xD7 ; 06E42 8BD7 | mov dx,di | encoding preserved
    %%insn_06e44:
    jmp short 0x6e02 ; 06E44 EBBC
    %if ($ - %%insn_06e44) > 2
        %error "LONG_06E44"
    %endif
    times 2 - ($ - %%insn_06e44) db 0
    %%insn_06e46:
    mov al,[bp+0x6] ; 06E46 8A4606
    %if ($ - %%insn_06e46) > 3
        %error "LONG_06E46"
    %endif
    times 3 - ($ - %%insn_06e46) db 0
    db 0x8B, 0xD7 ; 06E49 8BD7 | mov dx,di | encoding preserved
    %%insn_06e4b:
    call 0x6aef ; 06E4B E8A1FC
    %if ($ - %%insn_06e4b) > 3
        %error "LONG_06E4B"
    %endif
    times 3 - ($ - %%insn_06e4b) db 0
    db 0x0B, 0xC0 ; 06E4E 0BC0 | or ax,ax | encoding preserved
    %%insn_06e50:
    jz short 0x6e60 ; 06E50 740E
    %if ($ - %%insn_06e50) > 2
        %error "LONG_06E50"
    %endif
    times 2 - ($ - %%insn_06e50) db 0
    db 0x8B, 0xD7 ; 06E52 8BD7 | mov dx,di | encoding preserved
    %%insn_06e54:
    mov al,[bp+0x6] ; 06E54 8A4606
    %if ($ - %%insn_06e54) > 3
        %error "LONG_06E54"
    %endif
    times 3 - ($ - %%insn_06e54) db 0
    %%insn_06e57:
    call 0x6d0e ; 06E57 E8B4FE
    %if ($ - %%insn_06e57) > 3
        %error "LONG_06E57"
    %endif
    times 3 - ($ - %%insn_06e57) db 0
    %%insn_06e5a:
    pop si ; 06E5A 5E
    %if ($ - %%insn_06e5a) > 1
        %error "LONG_06E5A"
    %endif
    times 1 - ($ - %%insn_06e5a) db 0
    %%insn_06e5b:
    pop di ; 06E5B 5F
    %if ($ - %%insn_06e5b) > 1
        %error "LONG_06E5B"
    %endif
    times 1 - ($ - %%insn_06e5b) db 0
    db 0x8B, 0xE5 ; 06E5C 8BE5 | mov sp,bp | encoding preserved
    %%insn_06e5e:
    pop bp ; 06E5E 5D
    %if ($ - %%insn_06e5e) > 1
        %error "LONG_06E5E"
    %endif
    times 1 - ($ - %%insn_06e5e) db 0
    %%insn_06e5f:
    retf ; 06E5F CB
    %if ($ - %%insn_06e5f) > 1
        %error "LONG_06E5F"
    %endif
    times 1 - ($ - %%insn_06e5f) db 0
    db 0x2B, 0xC0 ; 06E60 2BC0 | sub ax,ax | encoding preserved
    %%insn_06e62:
    pop si ; 06E62 5E
    %if ($ - %%insn_06e62) > 1
        %error "LONG_06E62"
    %endif
    times 1 - ($ - %%insn_06e62) db 0
    %%insn_06e63:
    pop di ; 06E63 5F
    %if ($ - %%insn_06e63) > 1
        %error "LONG_06E63"
    %endif
    times 1 - ($ - %%insn_06e63) db 0
    db 0x8B, 0xE5 ; 06E64 8BE5 | mov sp,bp | encoding preserved
    %%insn_06e66:
    pop bp ; 06E66 5D
    %if ($ - %%insn_06e66) > 1
        %error "LONG_06E66"
    %endif
    times 1 - ($ - %%insn_06e66) db 0
    %%insn_06e67:
    retf ; 06E67 CB
    %if ($ - %%insn_06e67) > 1
        %error "LONG_06E67"
    %endif
    times 1 - ($ - %%insn_06e67) db 0
    %if ($ - %%fragment_start) != 92
        %error "SIZE_06E0C"
    %endif
%endmacro
