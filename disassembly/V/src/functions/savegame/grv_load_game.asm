; Linear entry 03FC4 (1000:3fc4)
; Ghidra working symbol: FUN_1000_3fc4
; Verified GRV LOADGAME (2Eh): opens save.N and reads 523h bytes beginning at
; the DOS GRV persistent-state base.  A missing file returns without mutation.
; Win32 trace 20260809-212141 independently confirms the shared opcode number
; and slot-variable convention (with that port's 400h-byte st7g.N format).
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_load_game_part_00 0
    %%fragment_start:
grv_load_game:
    %%insn_03fc4:
    lodsw ; 03FC4 AD
    %if ($ - %%insn_03fc4) > 1
        %error "LONG_03FC4"
    %endif
    times 1 - ($ - %%insn_03fc4) db 0
    %%insn_03fc5:
    mov bx,0xdba2 ; 03FC5 BBA2DB
    %if ($ - %%insn_03fc5) > 3
        %error "LONG_03FC5"
    %endif
    times 3 - ($ - %%insn_03fc5) db 0
    db 0x03, 0xD8 ; 03FC8 03D8 | add bx,ax | encoding preserved
    %%insn_03fca:
    mov al,[ss:bx] ; 03FCA 368A07
    %if ($ - %%insn_03fca) > 3
        %error "LONG_03FCA"
    %endif
    times 3 - ($ - %%insn_03fca) db 0
    %%insn_03fcd:
    add al,0x30 ; 03FCD 0430
    %if ($ - %%insn_03fcd) > 2
        %error "LONG_03FCD"
    %endif
    times 2 - ($ - %%insn_03fcd) db 0
    %%insn_03fcf:
    mov [bp-0x271f],al ; 03FCF 8886E1D8
    %if ($ - %%insn_03fcf) > 4
        %error "LONG_03FCF"
    %endif
    times 4 - ($ - %%insn_03fcf) db 0
    %%insn_03fd3:
    push ds ; 03FD3 1E
    %if ($ - %%insn_03fd3) > 1
        %error "LONG_03FD3"
    %endif
    times 1 - ($ - %%insn_03fd3) db 0
    %%insn_03fd4:
    mov ax,0x893 ; 03FD4 B89308
    %if ($ - %%insn_03fd4) > 3
        %error "LONG_03FD4"
    %endif
    times 3 - ($ - %%insn_03fd4) db 0
    %%insn_03fd7:
    mov ds,ax ; 03FD7 8ED8
    %if ($ - %%insn_03fd7) > 2
        %error "LONG_03FD7"
    %endif
    times 2 - ($ - %%insn_03fd7) db 0
    %%insn_03fd9:
    mov dx,0xd8db ; 03FD9 BADBD8
    %if ($ - %%insn_03fd9) > 3
        %error "LONG_03FD9"
    %endif
    times 3 - ($ - %%insn_03fd9) db 0
    %%insn_03fdc:
    call 0x39f8 ; 03FDC E819FA
    %if ($ - %%insn_03fdc) > 3
        %error "LONG_03FDC"
    %endif
    times 3 - ($ - %%insn_03fdc) db 0
    %%insn_03fdf:
    mov ax,0x3d00 ; 03FDF B8003D
    %if ($ - %%insn_03fdf) > 3
        %error "LONG_03FDF"
    %endif
    times 3 - ($ - %%insn_03fdf) db 0
    %%insn_03fe2:
    int byte 0x21 ; 03FE2 CD21
    %if ($ - %%insn_03fe2) > 2
        %error "LONG_03FE2"
    %endif
    times 2 - ($ - %%insn_03fe2) db 0
    %%insn_03fe4:
    jc short 0x3fec ; 03FE4 7206
    %if ($ - %%insn_03fe4) > 2
        %error "LONG_03FE4"
    %endif
    times 2 - ($ - %%insn_03fe4) db 0
    %%insn_03fe6:
    mov [bp-0x2634],ax ; 03FE6 8986CCD9
    %if ($ - %%insn_03fe6) > 4
        %error "LONG_03FE6"
    %endif
    times 4 - ($ - %%insn_03fe6) db 0
    %%insn_03fea:
    jmp short 0x3fed ; 03FEA EB01
    %if ($ - %%insn_03fea) > 2
        %error "LONG_03FEA"
    %endif
    times 2 - ($ - %%insn_03fea) db 0
    %%insn_03fec:
    ret ; 03FEC C3
    %if ($ - %%insn_03fec) > 1
        %error "LONG_03FEC"
    %endif
    times 1 - ($ - %%insn_03fec) db 0
    %%insn_03fed:
    mov dx,0xdba2 ; 03FED BAA2DB
    %if ($ - %%insn_03fed) > 3
        %error "LONG_03FED"
    %endif
    times 3 - ($ - %%insn_03fed) db 0
    %%insn_03ff0:
    mov cx,0x523 ; 03FF0 B92305
    %if ($ - %%insn_03ff0) > 3
        %error "LONG_03FF0"
    %endif
    times 3 - ($ - %%insn_03ff0) db 0
    %%insn_03ff3:
    mov bx,[bp-0x2634] ; 03FF3 8B9ECCD9
    %if ($ - %%insn_03ff3) > 4
        %error "LONG_03FF3"
    %endif
    times 4 - ($ - %%insn_03ff3) db 0
    %%insn_03ff7:
    mov ax,0x3f00 ; 03FF7 B8003F
    %if ($ - %%insn_03ff7) > 3
        %error "LONG_03FF7"
    %endif
    times 3 - ($ - %%insn_03ff7) db 0
    %%insn_03ffa:
    int byte 0x21 ; 03FFA CD21
    %if ($ - %%insn_03ffa) > 2
        %error "LONG_03FFA"
    %endif
    times 2 - ($ - %%insn_03ffa) db 0
    %%insn_03ffc:
    call 0x3a47 ; 03FFC E848FA
    %if ($ - %%insn_03ffc) > 3
        %error "LONG_03FFC"
    %endif
    times 3 - ($ - %%insn_03ffc) db 0
    %%insn_03fff:
    pop ds ; 03FFF 1F
    %if ($ - %%insn_03fff) > 1
        %error "LONG_03FFF"
    %endif
    times 1 - ($ - %%insn_03fff) db 0
    %%insn_04000:
    ret ; 04000 C3
    %if ($ - %%insn_04000) > 1
        %error "LONG_04000"
    %endif
    times 1 - ($ - %%insn_04000) db 0
    %if ($ - %%fragment_start) != 61
        %error "SIZE_03FC4"
    %endif
%endmacro
