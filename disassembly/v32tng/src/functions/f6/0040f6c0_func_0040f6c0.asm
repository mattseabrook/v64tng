; PE virtual entry 0040F6C0
; Ghidra working symbol: FUN_0040f6c0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f6c0_part_00 0
    %%fragment_start:
func_0040f6c0:
    %%insn_0040f6c0:
    mov eax,[0x420f10] ; 0040F6C0 A1100F4200
    %if ($ - %%insn_0040f6c0) > 5
        %error "LONG_0040F6C0"
    %endif
    times 5 - ($ - %%insn_0040f6c0) db 0
    %%insn_0040f6c5:
    test eax,eax ; 0040F6C5 85C0
    %if ($ - %%insn_0040f6c5) > 2
        %error "LONG_0040F6C5"
    %endif
    times 2 - ($ - %%insn_0040f6c5) db 0
    %%insn_0040f6c7:
    jz short 0x40f6dd ; 0040F6C7 7414
    %if ($ - %%insn_0040f6c7) > 2
        %error "LONG_0040F6C7"
    %endif
    times 2 - ($ - %%insn_0040f6c7) db 0
    %%insn_0040f6c9:
    mov ecx,[esp+0x4] ; 0040F6C9 8B4C2404
    %if ($ - %%insn_0040f6c9) > 4
        %error "LONG_0040F6C9"
    %endif
    times 4 - ($ - %%insn_0040f6c9) db 0
    %%insn_0040f6cd:
    push ecx ; 0040F6CD 51
    %if ($ - %%insn_0040f6cd) > 1
        %error "LONG_0040F6CD"
    %endif
    times 1 - ($ - %%insn_0040f6cd) db 0
    %%insn_0040f6ce:
    call eax ; 0040F6CE FFD0
    %if ($ - %%insn_0040f6ce) > 2
        %error "LONG_0040F6CE"
    %endif
    times 2 - ($ - %%insn_0040f6ce) db 0
    %%insn_0040f6d0:
    add esp,0x4 ; 0040F6D0 83C404
    %if ($ - %%insn_0040f6d0) > 3
        %error "LONG_0040F6D0"
    %endif
    times 3 - ($ - %%insn_0040f6d0) db 0
    %%insn_0040f6d3:
    test eax,eax ; 0040F6D3 85C0
    %if ($ - %%insn_0040f6d3) > 2
        %error "LONG_0040F6D3"
    %endif
    times 2 - ($ - %%insn_0040f6d3) db 0
    %%insn_0040f6d5:
    jz short 0x40f6dd ; 0040F6D5 7406
    %if ($ - %%insn_0040f6d5) > 2
        %error "LONG_0040F6D5"
    %endif
    times 2 - ($ - %%insn_0040f6d5) db 0
    %%insn_0040f6d7:
    mov eax,0x1 ; 0040F6D7 B801000000
    %if ($ - %%insn_0040f6d7) > 5
        %error "LONG_0040F6D7"
    %endif
    times 5 - ($ - %%insn_0040f6d7) db 0
    %%insn_0040f6dc:
    ret ; 0040F6DC C3
    %if ($ - %%insn_0040f6dc) > 1
        %error "LONG_0040F6DC"
    %endif
    times 1 - ($ - %%insn_0040f6dc) db 0
    db 0x33, 0xC0 ; 0040F6DD 33C0 | xor eax,eax | encoding preserved
    %%insn_0040f6df:
    ret ; 0040F6DF C3
    %if ($ - %%insn_0040f6df) > 1
        %error "LONG_0040F6DF"
    %endif
    times 1 - ($ - %%insn_0040f6df) db 0
    %if ($ - %%fragment_start) != 32
        %error "function fragment size drift: 0040F6C0"
    %endif
%endmacro
