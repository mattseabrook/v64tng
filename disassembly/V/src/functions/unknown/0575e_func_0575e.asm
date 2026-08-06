; Linear entry 0575E (1000:575e)
; Ghidra working symbol: FUN_1000_575e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0575e_part_00 0
    %%fragment_start:
func_0575e:
    %%insn_0575e:
    mov bx,[bp-0x1b7f] ; 0575E 8B9E81E4
    %if ($ - %%insn_0575e) > 4
        %error "LONG_0575E"
    %endif
    times 4 - ($ - %%insn_0575e) db 0
    db 0x33, 0xC9 ; 05762 33C9 | xor cx,cx | encoding preserved
    db 0x33, 0xD2 ; 05764 33D2 | xor dx,dx | encoding preserved
    db 0x33, 0xC0 ; 05766 33C0 | xor ax,ax | encoding preserved
    %%insn_05768:
    mov ax,0x4200 ; 05768 B80042
    %if ($ - %%insn_05768) > 3
        %error "LONG_05768"
    %endif
    times 3 - ($ - %%insn_05768) db 0
    %%insn_0576b:
    int byte 0x21 ; 0576B CD21
    %if ($ - %%insn_0576b) > 2
        %error "LONG_0576B"
    %endif
    times 2 - ($ - %%insn_0576b) db 0
    %%insn_0576d:
    ret ; 0576D C3
    %if ($ - %%insn_0576d) > 1
        %error "LONG_0576D"
    %endif
    times 1 - ($ - %%insn_0576d) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_0575E"
    %endif
%endmacro
