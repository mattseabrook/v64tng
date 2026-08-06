; Linear entry 001E1 (1000:01e1)
; Ghidra working symbol: FUN_1000_01e1
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_001e1_part_00 0
    %%fragment_start:
func_001e1:
    %%insn_001e1:
    cmp word [bp-0x30d2],0x0 ; 001E1 83BE2ECF00
    %if ($ - %%insn_001e1) > 5
        %error "LONG_001E1"
    %endif
    times 5 - ($ - %%insn_001e1) db 0
    %%insn_001e6:
    jnz short 0x1ff ; 001E6 7517
    %if ($ - %%insn_001e6) > 2
        %error "LONG_001E6"
    %endif
    times 2 - ($ - %%insn_001e6) db 0
    %%insn_001e8:
    mov dx,0xcf68 ; 001E8 BA68CF
    %if ($ - %%insn_001e8) > 3
        %error "LONG_001E8"
    %endif
    times 3 - ($ - %%insn_001e8) db 0
    %%insn_001eb:
    mov ax,0x3d00 ; 001EB B8003D
    %if ($ - %%insn_001eb) > 3
        %error "LONG_001EB"
    %endif
    times 3 - ($ - %%insn_001eb) db 0
    %%insn_001ee:
    int byte 0x21 ; 001EE CD21
    %if ($ - %%insn_001ee) > 2
        %error "LONG_001EE"
    %endif
    times 2 - ($ - %%insn_001ee) db 0
    %%insn_001f0:
    jc short 0x1fa ; 001F0 7208
    %if ($ - %%insn_001f0) > 2
        %error "LONG_001F0"
    %endif
    times 2 - ($ - %%insn_001f0) db 0
    %%insn_001f2:
    mov [bp-0x2b82],ax ; 001F2 89867ED4
    %if ($ - %%insn_001f2) > 4
        %error "LONG_001F2"
    %endif
    times 4 - ($ - %%insn_001f2) db 0
    db 0x33, 0xC0 ; 001F6 33C0 | xor ax,ax | encoding preserved
    %%insn_001f8:
    jmp short 0x1fd ; 001F8 EB03
    %if ($ - %%insn_001f8) > 2
        %error "LONG_001F8"
    %endif
    times 2 - ($ - %%insn_001f8) db 0
    %%insn_001fa:
    mov ax,0xffff ; 001FA B8FFFF
    %if ($ - %%insn_001fa) > 3
        %error "LONG_001FA"
    %endif
    times 3 - ($ - %%insn_001fa) db 0
    %%insn_001fd:
    jmp short 0x209 ; 001FD EB0A
    %if ($ - %%insn_001fd) > 2
        %error "LONG_001FD"
    %endif
    times 2 - ($ - %%insn_001fd) db 0
    %%insn_001ff:
    mov ax,[bp-0x27b7] ; 001FF 8B8649D8
    %if ($ - %%insn_001ff) > 4
        %error "LONG_001FF"
    %endif
    times 4 - ($ - %%insn_001ff) db 0
    %%insn_00203:
    mov [bp-0x2b82],ax ; 00203 89867ED4
    %if ($ - %%insn_00203) > 4
        %error "LONG_00203"
    %endif
    times 4 - ($ - %%insn_00203) db 0
    db 0x33, 0xC0 ; 00207 33C0 | xor ax,ax | encoding preserved
    %%insn_00209:
    ret ; 00209 C3
    %if ($ - %%insn_00209) > 1
        %error "LONG_00209"
    %endif
    times 1 - ($ - %%insn_00209) db 0
    %if ($ - %%fragment_start) != 41
        %error "SIZE_001E1"
    %endif
%endmacro
