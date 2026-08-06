; Linear entry 0574A (1000:574a)
; Ghidra working symbol: FUN_1000_574a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0574a_part_00 0
    %%fragment_start:
func_0574a:
    %%insn_0574a:
    mov bx,[bp-0x1b7f] ; 0574A 8B9E81E4
    %if ($ - %%insn_0574a) > 4
        %error "LONG_0574A"
    %endif
    times 4 - ($ - %%insn_0574a) db 0
    %%insn_0574e:
    mov ax,0x3e00 ; 0574E B8003E
    %if ($ - %%insn_0574e) > 3
        %error "LONG_0574E"
    %endif
    times 3 - ($ - %%insn_0574e) db 0
    %%insn_05751:
    int byte 0x21 ; 05751 CD21
    %if ($ - %%insn_05751) > 2
        %error "LONG_05751"
    %endif
    times 2 - ($ - %%insn_05751) db 0
    %%insn_05753:
    ret ; 05753 C3
    %if ($ - %%insn_05753) > 1
        %error "LONG_05753"
    %endif
    times 1 - ($ - %%insn_05753) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_0574A"
    %endif
%endmacro
