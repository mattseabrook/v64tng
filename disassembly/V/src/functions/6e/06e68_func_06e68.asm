; Linear entry 06E68 (1000:6e68)
; Ghidra working symbol: FUN_1000_6e68
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06e68_part_00 0
    %%fragment_start:
func_06e68:
    %%insn_06e68:
    nop ; 06E68 90
    %if ($ - %%insn_06e68) > 1
        %error "LONG_06E68"
    %endif
    times 1 - ($ - %%insn_06e68) db 0
    %%insn_06e69:
    push cs ; 06E69 0E
    %if ($ - %%insn_06e69) > 1
        %error "LONG_06E69"
    %endif
    times 1 - ($ - %%insn_06e69) db 0
    %%insn_06e6a:
    call 0x4327 ; 06E6A E8BAD4
    %if ($ - %%insn_06e6a) > 3
        %error "LONG_06E6A"
    %endif
    times 3 - ($ - %%insn_06e6a) db 0
    db 0x8A, 0xC4 ; 06E6D 8AC4 | mov al,ah | encoding preserved
    db 0x2A, 0xE4 ; 06E6F 2AE4 | sub ah,ah | encoding preserved
    %%insn_06e71:
    ret ; 06E71 C3
    %if ($ - %%insn_06e71) > 1
        %error "LONG_06E71"
    %endif
    times 1 - ($ - %%insn_06e71) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_06E68"
    %endif
%endmacro
