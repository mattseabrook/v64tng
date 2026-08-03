; Linear entry 03F77 (1000:3f77)
; Ghidra working symbol: FUN_1000_3f77
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_03f77_part_00 0
    %%fragment_start:
func_03f77:
    %%insn_03f77:
    mov ds,word [bp-0x2aae] ; 03F77 8E9E52D5
    %if ($ - %%insn_03f77) > 4
        %error "LONG_03F77"
    %endif
    times 4 - ($ - %%insn_03f77) db 0
    %%insn_03f7b:
    mov byte [0xd8e1],0x7a ; 03F7B C606E1D87A
    %if ($ - %%insn_03f7b) > 5
        %error "LONG_03F7B"
    %endif
    times 5 - ($ - %%insn_03f7b) db 0
    %%insn_03f80:
    mov byte [0xdba2],0x11 ; 03F80 C606A2DB11
    %if ($ - %%insn_03f80) > 5
        %error "LONG_03F80"
    %endif
    times 5 - ($ - %%insn_03f80) db 0
    %%insn_03f85:
    mov byte [0xdba3],0x12 ; 03F85 C606A3DB12
    %if ($ - %%insn_03f85) > 5
        %error "LONG_03F85"
    %endif
    times 5 - ($ - %%insn_03f85) db 0
    %%insn_03f8a:
    mov byte [0xdba4],0x1f ; 03F8A C606A4DB1F
    %if ($ - %%insn_03f8a) > 5
        %error "LONG_03F8A"
    %endif
    times 5 - ($ - %%insn_03f8a) db 0
    %%insn_03f8f:
    mov byte [0xdba5],0x22 ; 03F8F C606A5DB22
    %if ($ - %%insn_03f8f) > 5
        %error "LONG_03F8F"
    %endif
    times 5 - ($ - %%insn_03f8f) db 0
    %%insn_03f94:
    mov byte [0xdba6],0x24 ; 03F94 C606A6DB24
    %if ($ - %%insn_03f94) > 5
        %error "LONG_03F94"
    %endif
    times 5 - ($ - %%insn_03f94) db 0
    %%insn_03f99:
    mov byte [0xdba7],0x15 ; 03F99 C606A7DB15
    %if ($ - %%insn_03f99) > 5
        %error "LONG_03F99"
    %endif
    times 5 - ($ - %%insn_03f99) db 0
    %%insn_03f9e:
    mov byte [0xdba8],0x14 ; 03F9E C606A8DB14
    %if ($ - %%insn_03f9e) > 5
        %error "LONG_03F9E"
    %endif
    times 5 - ($ - %%insn_03f9e) db 0
    %%insn_03fa3:
    mov byte [0xdba9],0x10 ; 03FA3 C606A9DB10
    %if ($ - %%insn_03fa3) > 5
        %error "LONG_03FA3"
    %endif
    times 5 - ($ - %%insn_03fa3) db 0
    %%insn_03fa8:
    mov byte [0xdbaa],0x17 ; 03FA8 C606AADB17
    %if ($ - %%insn_03fa8) > 5
        %error "LONG_03FA8"
    %endif
    times 5 - ($ - %%insn_03fa8) db 0
    %%insn_03fad:
    mov byte [0xdbab],0x11 ; 03FAD C606ABDB11
    %if ($ - %%insn_03fad) > 5
        %error "LONG_03FAD"
    %endif
    times 5 - ($ - %%insn_03fad) db 0
    %%insn_03fb2:
    mov byte [0xdbac],0x1d ; 03FB2 C606ACDB1D
    %if ($ - %%insn_03fb2) > 5
        %error "LONG_03FB2"
    %endif
    times 5 - ($ - %%insn_03fb2) db 0
    %%insn_03fb7:
    mov byte [0xdbad],0x15 ; 03FB7 C606ADDB15
    %if ($ - %%insn_03fb7) > 5
        %error "LONG_03FB7"
    %endif
    times 5 - ($ - %%insn_03fb7) db 0
    %%insn_03fbc:
    mov byte [0xdbae],0xf4 ; 03FBC C606AEDBF4
    %if ($ - %%insn_03fbc) > 5
        %error "LONG_03FBC"
    %endif
    times 5 - ($ - %%insn_03fbc) db 0
    %%insn_03fc1:
    jmp 0x3f32 ; 03FC1 E96EFF
    %if ($ - %%insn_03fc1) > 3
        %error "LONG_03FC1"
    %endif
    times 3 - ($ - %%insn_03fc1) db 0
    %if ($ - %%fragment_start) != 77
        %error "SIZE_03F77"
    %endif
%endmacro
