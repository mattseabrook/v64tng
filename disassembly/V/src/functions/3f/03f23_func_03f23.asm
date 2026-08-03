; Linear entry 03F23 (1000:3f23)
; Ghidra working symbol: FUN_1000_3f23
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_03f23_part_00 0
    %%fragment_start:
func_03f23:
    %%insn_03f23:
    lodsw ; 03F23 AD
    %if ($ - %%insn_03f23) > 1
        %error "LONG_03F23"
    %endif
    times 1 - ($ - %%insn_03f23) db 0
    %%insn_03f24:
    mov bx,0xdba2 ; 03F24 BBA2DB
    %if ($ - %%insn_03f24) > 3
        %error "LONG_03F24"
    %endif
    times 3 - ($ - %%insn_03f24) db 0
    db 0x03, 0xD8 ; 03F27 03D8 | add bx,ax | encoding preserved
    %%insn_03f29:
    mov al,[ss:bx] ; 03F29 368A07
    %if ($ - %%insn_03f29) > 3
        %error "LONG_03F29"
    %endif
    times 3 - ($ - %%insn_03f29) db 0
    %%insn_03f2c:
    add al,0x30 ; 03F2C 0430
    %if ($ - %%insn_03f2c) > 2
        %error "LONG_03F2C"
    %endif
    times 2 - ($ - %%insn_03f2c) db 0
    %%insn_03f2e:
    mov [bp-0x271f],al ; 03F2E 8886E1D8
    %if ($ - %%insn_03f2e) > 4
        %error "LONG_03F2E"
    %endif
    times 4 - ($ - %%insn_03f2e) db 0
    %%insn_03f32:
    push ds ; 03F32 1E
    %if ($ - %%insn_03f32) > 1
        %error "LONG_03F32"
    %endif
    times 1 - ($ - %%insn_03f32) db 0
    %%insn_03f33:
    mov ax,0x893 ; 03F33 B89308
    %if ($ - %%insn_03f33) > 3
        %error "LONG_03F33"
    %endif
    times 3 - ($ - %%insn_03f33) db 0
    %%insn_03f36:
    mov ds,ax ; 03F36 8ED8
    %if ($ - %%insn_03f36) > 2
        %error "LONG_03F36"
    %endif
    times 2 - ($ - %%insn_03f36) db 0
    %%insn_03f38:
    mov dx,0xd8db ; 03F38 BADBD8
    %if ($ - %%insn_03f38) > 3
        %error "LONG_03F38"
    %endif
    times 3 - ($ - %%insn_03f38) db 0
    %%insn_03f3b:
    call 0x39f8 ; 03F3B E8BAFA
    %if ($ - %%insn_03f3b) > 3
        %error "LONG_03F3B"
    %endif
    times 3 - ($ - %%insn_03f3b) db 0
    db 0x33, 0xC9 ; 03F3E 33C9 | xor cx,cx | encoding preserved
    %%insn_03f40:
    mov ax,0x3c00 ; 03F40 B8003C
    %if ($ - %%insn_03f40) > 3
        %error "LONG_03F40"
    %endif
    times 3 - ($ - %%insn_03f40) db 0
    %%insn_03f43:
    int byte 0x21 ; 03F43 CD21
    %if ($ - %%insn_03f43) > 2
        %error "LONG_03F43"
    %endif
    times 2 - ($ - %%insn_03f43) db 0
    %%insn_03f45:
    jc short 0x3f4d ; 03F45 7206
    %if ($ - %%insn_03f45) > 2
        %error "LONG_03F45"
    %endif
    times 2 - ($ - %%insn_03f45) db 0
    %%insn_03f47:
    mov [bp-0x2634],ax ; 03F47 8986CCD9
    %if ($ - %%insn_03f47) > 4
        %error "LONG_03F47"
    %endif
    times 4 - ($ - %%insn_03f47) db 0
    %%insn_03f4b:
    jmp short 0x3f56 ; 03F4B EB09
    %if ($ - %%insn_03f4b) > 2
        %error "LONG_03F4B"
    %endif
    times 2 - ($ - %%insn_03f4b) db 0
    %%insn_03f4d:
    mov ax,0x804 ; 03F4D B80408
    %if ($ - %%insn_03f4d) > 3
        %error "LONG_03F4D"
    %endif
    times 3 - ($ - %%insn_03f4d) db 0
    %%insn_03f50:
    mov bp,0x1 ; 03F50 BD0100
    %if ($ - %%insn_03f50) > 3
        %error "LONG_03F50"
    %endif
    times 3 - ($ - %%insn_03f50) db 0
    %%insn_03f53:
    jmp 0x5ced ; 03F53 E9971D
    %if ($ - %%insn_03f53) > 3
        %error "LONG_03F53"
    %endif
    times 3 - ($ - %%insn_03f53) db 0
    %%insn_03f56:
    mov dx,0xdba2 ; 03F56 BAA2DB
    %if ($ - %%insn_03f56) > 3
        %error "LONG_03F56"
    %endif
    times 3 - ($ - %%insn_03f56) db 0
    %%insn_03f59:
    mov cx,0x523 ; 03F59 B92305
    %if ($ - %%insn_03f59) > 3
        %error "LONG_03F59"
    %endif
    times 3 - ($ - %%insn_03f59) db 0
    %%insn_03f5c:
    mov bx,[bp-0x2634] ; 03F5C 8B9ECCD9
    %if ($ - %%insn_03f5c) > 4
        %error "LONG_03F5C"
    %endif
    times 4 - ($ - %%insn_03f5c) db 0
    %%insn_03f60:
    mov ax,0x4000 ; 03F60 B80040
    %if ($ - %%insn_03f60) > 3
        %error "LONG_03F60"
    %endif
    times 3 - ($ - %%insn_03f60) db 0
    %%insn_03f63:
    int byte 0x21 ; 03F63 CD21
    %if ($ - %%insn_03f63) > 2
        %error "LONG_03F63"
    %endif
    times 2 - ($ - %%insn_03f63) db 0
    db 0x3B, 0xC1 ; 03F65 3BC1 | cmp ax,cx | encoding preserved
    %%insn_03f67:
    jz short 0x3f72 ; 03F67 7409
    %if ($ - %%insn_03f67) > 2
        %error "LONG_03F67"
    %endif
    times 2 - ($ - %%insn_03f67) db 0
    %%insn_03f69:
    mov ax,0x804 ; 03F69 B80408
    %if ($ - %%insn_03f69) > 3
        %error "LONG_03F69"
    %endif
    times 3 - ($ - %%insn_03f69) db 0
    %%insn_03f6c:
    mov bp,0x1 ; 03F6C BD0100
    %if ($ - %%insn_03f6c) > 3
        %error "LONG_03F6C"
    %endif
    times 3 - ($ - %%insn_03f6c) db 0
    %%insn_03f6f:
    jmp 0x5ced ; 03F6F E97B1D
    %if ($ - %%insn_03f6f) > 3
        %error "LONG_03F6F"
    %endif
    times 3 - ($ - %%insn_03f6f) db 0
    %%insn_03f72:
    call 0x3a47 ; 03F72 E8D2FA
    %if ($ - %%insn_03f72) > 3
        %error "LONG_03F72"
    %endif
    times 3 - ($ - %%insn_03f72) db 0
    %%insn_03f75:
    pop ds ; 03F75 1F
    %if ($ - %%insn_03f75) > 1
        %error "LONG_03F75"
    %endif
    times 1 - ($ - %%insn_03f75) db 0
    %%insn_03f76:
    ret ; 03F76 C3
    %if ($ - %%insn_03f76) > 1
        %error "LONG_03F76"
    %endif
    times 1 - ($ - %%insn_03f76) db 0
    %if ($ - %%fragment_start) != 84
        %error "SIZE_03F23"
    %endif
%endmacro
