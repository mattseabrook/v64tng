; Linear entry 051FF (1000:51ff)
; Ghidra working symbol: FUN_1000_51ff
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_051ff_part_00 0
    %%fragment_start:
func_051ff:
    %%insn_051ff:
    mov ax,[bx] ; 051FF 8B07
    %if ($ - %%insn_051ff) > 2
        %error "LONG_051FF"
    %endif
    times 2 - ($ - %%insn_051ff) db 0
    %%insn_05201:
    cmp ax,0x666f ; 05201 3D6F66
    %if ($ - %%insn_05201) > 3
        %error "LONG_05201"
    %endif
    times 3 - ($ - %%insn_05201) db 0
    %%insn_05204:
    jnz short 0x5211 ; 05204 750B
    %if ($ - %%insn_05204) > 2
        %error "LONG_05204"
    %endif
    times 2 - ($ - %%insn_05204) db 0
    %%insn_05206:
    mov word [bp-0x30de],0xffff ; 05206 C78622CFFFFF
    %if ($ - %%insn_05206) > 6
        %error "LONG_05206"
    %endif
    times 6 - ($ - %%insn_05206) db 0
    %%insn_0520c:
    mov byte [bp-0x2359],0xff ; 0520C C686A7DCFF
    %if ($ - %%insn_0520c) > 5
        %error "LONG_0520C"
    %endif
    times 5 - ($ - %%insn_0520c) db 0
    %%insn_05211:
    mov byte [bp-0x2612],0x1 ; 05211 C686EED901
    %if ($ - %%insn_05211) > 5
        %error "LONG_05211"
    %endif
    times 5 - ($ - %%insn_05211) db 0
    %%insn_05216:
    ret ; 05216 C3
    %if ($ - %%insn_05216) > 1
        %error "LONG_05216"
    %endif
    times 1 - ($ - %%insn_05216) db 0
    %if ($ - %%fragment_start) != 24
        %error "SIZE_051FF"
    %endif
%endmacro
