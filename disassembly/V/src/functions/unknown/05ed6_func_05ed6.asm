; Linear entry 05ED6 (1000:5ed6)
; Ghidra working symbol: FUN_1000_5ed6
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05ed6_part_00 0
    %%fragment_start:
func_05ed6:
    %%insn_05ed6:
    push si ; 05ED6 56
    %if ($ - %%insn_05ed6) > 1
        %error "LONG_05ED6"
    %endif
    times 1 - ($ - %%insn_05ed6) db 0
    %%insn_05ed7:
    push ds ; 05ED7 1E
    %if ($ - %%insn_05ed7) > 1
        %error "LONG_05ED7"
    %endif
    times 1 - ($ - %%insn_05ed7) db 0
    %%insn_05ed8:
    push es ; 05ED8 06
    %if ($ - %%insn_05ed8) > 1
        %error "LONG_05ED8"
    %endif
    times 1 - ($ - %%insn_05ed8) db 0
    db 0x32, 0xE4 ; 05ED9 32E4 | xor ah,ah | encoding preserved
    %%insn_05edb:
    push ax ; 05EDB 50
    %if ($ - %%insn_05edb) > 1
        %error "LONG_05EDB"
    %endif
    times 1 - ($ - %%insn_05edb) db 0
    %%insn_05edc:
    mov ax,0x893 ; 05EDC B89308
    %if ($ - %%insn_05edc) > 3
        %error "LONG_05EDC"
    %endif
    times 3 - ($ - %%insn_05edc) db 0
    %%insn_05edf:
    mov es,ax ; 05EDF 8EC0
    %if ($ - %%insn_05edf) > 2
        %error "LONG_05EDF"
    %endif
    times 2 - ($ - %%insn_05edf) db 0
    %%insn_05ee1:
    mov di,0xe484 ; 05EE1 BF84E4
    %if ($ - %%insn_05ee1) > 3
        %error "LONG_05EE1"
    %endif
    times 3 - ($ - %%insn_05ee1) db 0
    %%insn_05ee4:
    mov cx,0x31 ; 05EE4 B93100
    %if ($ - %%insn_05ee4) > 3
        %error "LONG_05EE4"
    %endif
    times 3 - ($ - %%insn_05ee4) db 0
    %%insn_05ee7:
    lodsb ; 05EE7 AC
    %if ($ - %%insn_05ee7) > 1
        %error "LONG_05EE7"
    %endif
    times 1 - ($ - %%insn_05ee7) db 0
    %%insn_05ee8:
    cmp al,0x42 ; 05EE8 3C42
    %if ($ - %%insn_05ee8) > 2
        %error "LONG_05EE8"
    %endif
    times 2 - ($ - %%insn_05ee8) db 0
    %%insn_05eea:
    jnz short 0x5eee ; 05EEA 7502
    %if ($ - %%insn_05eea) > 2
        %error "LONG_05EEA"
    %endif
    times 2 - ($ - %%insn_05eea) db 0
    %%insn_05eec:
    mov al,0x2 ; 05EEC B002
    %if ($ - %%insn_05eec) > 2
        %error "LONG_05EEC"
    %endif
    times 2 - ($ - %%insn_05eec) db 0
    %%insn_05eee:
    cmp al,0x32 ; 05EEE 3C32
    %if ($ - %%insn_05eee) > 2
        %error "LONG_05EEE"
    %endif
    times 2 - ($ - %%insn_05eee) db 0
    %%insn_05ef0:
    jnz short 0x5ef4 ; 05EF0 7502
    %if ($ - %%insn_05ef0) > 2
        %error "LONG_05EF0"
    %endif
    times 2 - ($ - %%insn_05ef0) db 0
    %%insn_05ef2:
    mov al,0x1 ; 05EF2 B001
    %if ($ - %%insn_05ef2) > 2
        %error "LONG_05EF2"
    %endif
    times 2 - ($ - %%insn_05ef2) db 0
    %%insn_05ef4:
    stosb ; 05EF4 AA
    %if ($ - %%insn_05ef4) > 1
        %error "LONG_05EF4"
    %endif
    times 1 - ($ - %%insn_05ef4) db 0
    %%insn_05ef5:
    loop short 0x5ee7 ; 05EF5 E2F0
    %if ($ - %%insn_05ef5) > 2
        %error "LONG_05EF5"
    %endif
    times 2 - ($ - %%insn_05ef5) db 0
    %%insn_05ef7:
    mov ax,0x2 ; 05EF7 B80200
    %if ($ - %%insn_05ef7) > 3
        %error "LONG_05EF7"
    %endif
    times 3 - ($ - %%insn_05ef7) db 0
    %%insn_05efa:
    push ax ; 05EFA 50
    %if ($ - %%insn_05efa) > 1
        %error "LONG_05EFA"
    %endif
    times 1 - ($ - %%insn_05efa) db 0
    %%insn_05efb:
    mov ax,0x893 ; 05EFB B89308
    %if ($ - %%insn_05efb) > 3
        %error "LONG_05EFB"
    %endif
    times 3 - ($ - %%insn_05efb) db 0
    %%insn_05efe:
    mov ds,ax ; 05EFE 8ED8
    %if ($ - %%insn_05efe) > 2
        %error "LONG_05EFE"
    %endif
    times 2 - ($ - %%insn_05efe) db 0
    %%insn_05f00:
    nop ; 05F00 90
    %if ($ - %%insn_05f00) > 1
        %error "LONG_05F00"
    %endif
    times 1 - ($ - %%insn_05f00) db 0
    %%insn_05f01:
    push cs ; 05F01 0E
    %if ($ - %%insn_05f01) > 1
        %error "LONG_05F01"
    %endif
    times 1 - ($ - %%insn_05f01) db 0
    %%insn_05f02:
    call 0x6de4 ; 05F02 E8DF0E
    %if ($ - %%insn_05f02) > 3
        %error "LONG_05F02"
    %endif
    times 3 - ($ - %%insn_05f02) db 0
    %%insn_05f05:
    add sp,0x4 ; 05F05 83C404
    %if ($ - %%insn_05f05) > 3
        %error "LONG_05F05"
    %endif
    times 3 - ($ - %%insn_05f05) db 0
    %%insn_05f08:
    mov ax,[0xe8ff] ; 05F08 A1FFE8
    %if ($ - %%insn_05f08) > 3
        %error "LONG_05F08"
    %endif
    times 3 - ($ - %%insn_05f08) db 0
    %%insn_05f0b:
    mov cl,0x7 ; 05F0B B107
    %if ($ - %%insn_05f0b) > 2
        %error "LONG_05F0B"
    %endif
    times 2 - ($ - %%insn_05f0b) db 0
    %%insn_05f0d:
    div cl ; 05F0D F6F1
    %if ($ - %%insn_05f0d) > 2
        %error "LONG_05F0D"
    %endif
    times 2 - ($ - %%insn_05f0d) db 0
    %%insn_05f0f:
    push ax ; 05F0F 50
    %if ($ - %%insn_05f0f) > 1
        %error "LONG_05F0F"
    %endif
    times 1 - ($ - %%insn_05f0f) db 0
    %%insn_05f10:
    mov ax,[0xe901] ; 05F10 A101E9
    %if ($ - %%insn_05f10) > 3
        %error "LONG_05F10"
    %endif
    times 3 - ($ - %%insn_05f10) db 0
    %%insn_05f13:
    div cl ; 05F13 F6F1
    %if ($ - %%insn_05f13) > 2
        %error "LONG_05F13"
    %endif
    times 2 - ($ - %%insn_05f13) db 0
    db 0x8B, 0xD8 ; 05F15 8BD8 | mov bx,ax | encoding preserved
    %%insn_05f17:
    pop ax ; 05F17 58
    %if ($ - %%insn_05f17) > 1
        %error "LONG_05F17"
    %endif
    times 1 - ($ - %%insn_05f17) db 0
    %%insn_05f18:
    pop es ; 05F18 07
    %if ($ - %%insn_05f18) > 1
        %error "LONG_05F18"
    %endif
    times 1 - ($ - %%insn_05f18) db 0
    %%insn_05f19:
    pop ds ; 05F19 1F
    %if ($ - %%insn_05f19) > 1
        %error "LONG_05F19"
    %endif
    times 1 - ($ - %%insn_05f19) db 0
    %%insn_05f1a:
    pop si ; 05F1A 5E
    %if ($ - %%insn_05f1a) > 1
        %error "LONG_05F1A"
    %endif
    times 1 - ($ - %%insn_05f1a) db 0
    %%insn_05f1b:
    ret ; 05F1B C3
    %if ($ - %%insn_05f1b) > 1
        %error "LONG_05F1B"
    %endif
    times 1 - ($ - %%insn_05f1b) db 0
    %if ($ - %%fragment_start) != 70
        %error "SIZE_05ED6"
    %endif
%endmacro
