; Linear entry 0400A (1000:400a)
; Ghidra working symbol: FUN_1000_400a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0400a_part_00 0
    %%fragment_start:
func_0400a:
    %%insn_0400a:
    cmp ah,0x80 ; 0400A 80FC80
    %if ($ - %%insn_0400a) > 3
        %error "LONG_0400A"
    %endif
    times 3 - ($ - %%insn_0400a) db 0
    %%insn_0400d:
    jnc short 0x4012 ; 0400D 7303
    %if ($ - %%insn_0400d) > 2
        %error "LONG_0400D"
    %endif
    times 2 - ($ - %%insn_0400d) db 0
    %%insn_0400f:
    lodsw ; 0400F AD
    %if ($ - %%insn_0400f) > 1
        %error "LONG_0400F"
    %endif
    times 1 - ($ - %%insn_0400f) db 0
    %%insn_04010:
    jmp short 0x4015 ; 04010 EB03
    %if ($ - %%insn_04010) > 2
        %error "LONG_04010"
    %endif
    times 2 - ($ - %%insn_04010) db 0
    %%insn_04012:
    lodsb ; 04012 AC
    %if ($ - %%insn_04012) > 1
        %error "LONG_04012"
    %endif
    times 1 - ($ - %%insn_04012) db 0
    db 0x32, 0xE4 ; 04013 32E4 | xor ah,ah | encoding preserved
    %%insn_04015:
    ret ; 04015 C3
    %if ($ - %%insn_04015) > 1
        %error "LONG_04015"
    %endif
    times 1 - ($ - %%insn_04015) db 0
    %if ($ - %%fragment_start) != 12
        %error "SIZE_0400A"
    %endif
%endmacro
