; Linear entry 04FF6 (1000:4ff6)
; Ghidra working symbol: FUN_1000_4ff6
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04ff6_part_00 0
    %%fragment_start:
func_04ff6:
    %%insn_04ff6:
    push di ; 04FF6 57
    %if ($ - %%insn_04ff6) > 1
        %error "LONG_04FF6"
    %endif
    times 1 - ($ - %%insn_04ff6) db 0
    %%insn_04ff7:
    push si ; 04FF7 56
    %if ($ - %%insn_04ff7) > 1
        %error "LONG_04FF7"
    %endif
    times 1 - ($ - %%insn_04ff7) db 0
    %%insn_04ff8:
    mov ah,[es:di] ; 04FF8 268A25
    %if ($ - %%insn_04ff8) > 3
        %error "LONG_04FF8"
    %endif
    times 3 - ($ - %%insn_04ff8) db 0
    %%insn_04ffb:
    lodsb ; 04FFB AC
    %if ($ - %%insn_04ffb) > 1
        %error "LONG_04FFB"
    %endif
    times 1 - ($ - %%insn_04ffb) db 0
    db 0x0B, 0xC0 ; 04FFC 0BC0 | or ax,ax | encoding preserved
    %%insn_04ffe:
    jz short 0x500d ; 04FFE 740D
    %if ($ - %%insn_04ffe) > 2
        %error "LONG_04FFE"
    %endif
    times 2 - ($ - %%insn_04ffe) db 0
    %%insn_05000:
    inc di ; 05000 47
    %if ($ - %%insn_05000) > 1
        %error "LONG_05000"
    %endif
    times 1 - ($ - %%insn_05000) db 0
    %%insn_05001:
    call 0x4feb ; 05001 E8E7FF
    %if ($ - %%insn_05001) > 3
        %error "LONG_05001"
    %endif
    times 3 - ($ - %%insn_05001) db 0
    %%insn_05004:
    xchg al,ah ; 05004 86C4
    %if ($ - %%insn_05004) > 2
        %error "LONG_05004"
    %endif
    times 2 - ($ - %%insn_05004) db 0
    %%insn_05006:
    call 0x4feb ; 05006 E8E2FF
    %if ($ - %%insn_05006) > 3
        %error "LONG_05006"
    %endif
    times 3 - ($ - %%insn_05006) db 0
    db 0x3A, 0xE0 ; 05009 3AE0 | cmp ah,al | encoding preserved
    %%insn_0500b:
    jz short 0x4ff8 ; 0500B 74EB
    %if ($ - %%insn_0500b) > 2
        %error "LONG_0500B"
    %endif
    times 2 - ($ - %%insn_0500b) db 0
    %%insn_0500d:
    pop si ; 0500D 5E
    %if ($ - %%insn_0500d) > 1
        %error "LONG_0500D"
    %endif
    times 1 - ($ - %%insn_0500d) db 0
    %%insn_0500e:
    pop di ; 0500E 5F
    %if ($ - %%insn_0500e) > 1
        %error "LONG_0500E"
    %endif
    times 1 - ($ - %%insn_0500e) db 0
    %%insn_0500f:
    ret ; 0500F C3
    %if ($ - %%insn_0500f) > 1
        %error "LONG_0500F"
    %endif
    times 1 - ($ - %%insn_0500f) db 0
    %if ($ - %%fragment_start) != 26
        %error "SIZE_04FF6"
    %endif
%endmacro
