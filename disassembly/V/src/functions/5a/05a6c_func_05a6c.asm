; Linear entry 05A6C (1000:5a6c)
; Ghidra working symbol: FUN_1000_5a6c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05a6c_part_00 0
    %%fragment_start:
func_05a6c:
    %%insn_05a6c:
    push si ; 05A6C 56
    %if ($ - %%insn_05a6c) > 1
        %error "LONG_05A6C"
    %endif
    times 1 - ($ - %%insn_05a6c) db 0
    %%insn_05a6d:
    cmp dx,[bp-0x1bbc] ; 05A6D 3B9644E4
    %if ($ - %%insn_05a6d) > 4
        %error "LONG_05A6D"
    %endif
    times 4 - ($ - %%insn_05a6d) db 0
    %%insn_05a71:
    jz short 0x5a89 ; 05A71 7416
    %if ($ - %%insn_05a71) > 2
        %error "LONG_05A71"
    %endif
    times 2 - ($ - %%insn_05a71) db 0
    %%insn_05a73:
    mov [bp-0x1bbc],dx ; 05A73 899644E4
    %if ($ - %%insn_05a73) > 4
        %error "LONG_05A73"
    %endif
    times 4 - ($ - %%insn_05a73) db 0
    %%insn_05a77:
    push ax ; 05A77 50
    %if ($ - %%insn_05a77) > 1
        %error "LONG_05A77"
    %endif
    times 1 - ($ - %%insn_05a77) db 0
    %%insn_05a78:
    push dx ; 05A78 52
    %if ($ - %%insn_05a78) > 1
        %error "LONG_05A78"
    %endif
    times 1 - ($ - %%insn_05a78) db 0
    %%insn_05a79:
    push word [bp-0x1bc8] ; 05A79 FFB638E4
    %if ($ - %%insn_05a79) > 4
        %error "LONG_05A79"
    %endif
    times 4 - ($ - %%insn_05a79) db 0
    %%insn_05a7d:
    push word [bp-0x1bce] ; 05A7D FFB632E4
    %if ($ - %%insn_05a7d) > 4
        %error "LONG_05A7D"
    %endif
    times 4 - ($ - %%insn_05a7d) db 0
    %%insn_05a81:
    call word 0x702:word 0xd1c ; 05A81 9A1C0D0207
    %if ($ - %%insn_05a81) > 5
        %error "LONG_05A81"
    %endif
    times 5 - ($ - %%insn_05a81) db 0
    %%insn_05a86:
    add sp,0x8 ; 05A86 83C408
    %if ($ - %%insn_05a86) > 3
        %error "LONG_05A86"
    %endif
    times 3 - ($ - %%insn_05a86) db 0
    %%insn_05a89:
    pop si ; 05A89 5E
    %if ($ - %%insn_05a89) > 1
        %error "LONG_05A89"
    %endif
    times 1 - ($ - %%insn_05a89) db 0
    %%insn_05a8a:
    ret ; 05A8A C3
    %if ($ - %%insn_05a8a) > 1
        %error "LONG_05A8A"
    %endif
    times 1 - ($ - %%insn_05a8a) db 0
    %if ($ - %%fragment_start) != 31
        %error "SIZE_05A6C"
    %endif
%endmacro
