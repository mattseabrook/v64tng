; Linear entry 04103 (1000:4103)
; Ghidra working symbol: FUN_1000_4103
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04103_part_00 0
    %%fragment_start:
func_04103:
    %%insn_04103:
    call 0x400a ; 04103 E804FF
    %if ($ - %%insn_04103) > 3
        %error "LONG_04103"
    %endif
    times 3 - ($ - %%insn_04103) db 0
    %%insn_04106:
    mov bx,0xdba2 ; 04106 BBA2DB
    %if ($ - %%insn_04106) > 3
        %error "LONG_04106"
    %endif
    times 3 - ($ - %%insn_04106) db 0
    db 0x03, 0xD8 ; 04109 03D8 | add bx,ax | encoding preserved
    %%insn_0410b:
    dec byte [ss:bx] ; 0410B 36FE0F
    %if ($ - %%insn_0410b) > 3
        %error "LONG_0410B"
    %endif
    times 3 - ($ - %%insn_0410b) db 0
    %%insn_0410e:
    ret ; 0410E C3
    %if ($ - %%insn_0410e) > 1
        %error "LONG_0410E"
    %endif
    times 1 - ($ - %%insn_0410e) db 0
    %if ($ - %%fragment_start) != 12
        %error "SIZE_04103"
    %endif
%endmacro
