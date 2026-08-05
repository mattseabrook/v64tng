; Linear entry 03A5B (1000:3a5b)
; Ghidra working symbol: FUN_1000_3a5b
; Verified selected resource open/read/close path into the GRV media buffer.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_load_selected_resource_file_part_00 0
    %%fragment_start:
load_selected_resource_file:
    %%insn_03a5b:
    cmp word [bp-0x2652],0x0 ; 03A5B 83BEAED900
    %if ($ - %%insn_03a5b) > 5
        %error "LONG_03A5B"
    %endif
    times 5 - ($ - %%insn_03a5b) db 0
    %%insn_03a60:
    jnz short 0x3a67 ; 03A60 7505
    %if ($ - %%insn_03a60) > 2
        %error "LONG_03A60"
    %endif
    times 2 - ($ - %%insn_03a60) db 0
    %%insn_03a62:
    mov dx,0xd894 ; 03A62 BA94D8
    %if ($ - %%insn_03a62) > 3
        %error "LONG_03A62"
    %endif
    times 3 - ($ - %%insn_03a62) db 0
    %%insn_03a65:
    jmp short 0x3a6a ; 03A65 EB03
    %if ($ - %%insn_03a65) > 2
        %error "LONG_03A65"
    %endif
    times 2 - ($ - %%insn_03a65) db 0
    %%insn_03a67:
    mov dx,0xd8a0 ; 03A67 BAA0D8
    %if ($ - %%insn_03a67) > 3
        %error "LONG_03A67"
    %endif
    times 3 - ($ - %%insn_03a67) db 0
    %%insn_03a6a:
    call 0x3a31 ; 03A6A E8C4FF
    %if ($ - %%insn_03a6a) > 3
        %error "LONG_03A6A"
    %endif
    times 3 - ($ - %%insn_03a6a) db 0
    db 0x3D, 0xFF, 0xFF ; 03A6D 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_03a70:
    jnz short 0x3a78 ; 03A70 7506
    %if ($ - %%insn_03a70) > 2
        %error "LONG_03A70"
    %endif
    times 2 - ($ - %%insn_03a70) db 0
    %%insn_03a72:
    mov ax,0x7a0 ; 03A72 B8A007
    %if ($ - %%insn_03a72) > 3
        %error "LONG_03A72"
    %endif
    times 3 - ($ - %%insn_03a72) db 0
    %%insn_03a75:
    jmp 0x5ced ; 03A75 E97522
    %if ($ - %%insn_03a75) > 3
        %error "LONG_03A75"
    %endif
    times 3 - ($ - %%insn_03a75) db 0
    %%insn_03a78:
    push ds ; 03A78 1E
    %if ($ - %%insn_03a78) > 1
        %error "LONG_03A78"
    %endif
    times 1 - ($ - %%insn_03a78) db 0
    %%insn_03a79:
    mov ds,word [bp-0x2605] ; 03A79 8E9EFBD9
    %if ($ - %%insn_03a79) > 4
        %error "LONG_03A79"
    %endif
    times 4 - ($ - %%insn_03a79) db 0
    %%insn_03a7d:
    mov dx,0x0 ; 03A7D BA0000
    %if ($ - %%insn_03a7d) > 3
        %error "LONG_03A7D"
    %endif
    times 3 - ($ - %%insn_03a7d) db 0
    %%insn_03a80:
    mov cx,0xfffa ; 03A80 B9FAFF
    %if ($ - %%insn_03a80) > 3
        %error "LONG_03A80"
    %endif
    times 3 - ($ - %%insn_03a80) db 0
    %%insn_03a83:
    call 0x3a51 ; 03A83 E8CBFF
    %if ($ - %%insn_03a83) > 3
        %error "LONG_03A83"
    %endif
    times 3 - ($ - %%insn_03a83) db 0
    %%insn_03a86:
    pop ds ; 03A86 1F
    %if ($ - %%insn_03a86) > 1
        %error "LONG_03A86"
    %endif
    times 1 - ($ - %%insn_03a86) db 0
    db 0x3D, 0xFA, 0xFF ; 03A87 3DFAFF | cmp ax,0xfffa | encoding preserved
    %%insn_03a8a:
    jnz short 0x3a92 ; 03A8A 7506
    %if ($ - %%insn_03a8a) > 2
        %error "LONG_03A8A"
    %endif
    times 2 - ($ - %%insn_03a8a) db 0
    %%insn_03a8c:
    mov ax,0x7ce ; 03A8C B8CE07
    %if ($ - %%insn_03a8c) > 3
        %error "LONG_03A8C"
    %endif
    times 3 - ($ - %%insn_03a8c) db 0
    %%insn_03a8f:
    jmp 0x5ced ; 03A8F E95B22
    %if ($ - %%insn_03a8f) > 3
        %error "LONG_03A8F"
    %endif
    times 3 - ($ - %%insn_03a8f) db 0
    %%insn_03a92:
    call 0x3a47 ; 03A92 E8B2FF
    %if ($ - %%insn_03a92) > 3
        %error "LONG_03A92"
    %endif
    times 3 - ($ - %%insn_03a92) db 0
    %%insn_03a95:
    ret ; 03A95 C3
    %if ($ - %%insn_03a95) > 1
        %error "LONG_03A95"
    %endif
    times 1 - ($ - %%insn_03a95) db 0
    %if ($ - %%fragment_start) != 59
        %error "SIZE_03A5B"
    %endif
%endmacro
