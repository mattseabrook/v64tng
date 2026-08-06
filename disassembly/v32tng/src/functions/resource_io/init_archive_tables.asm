; PE virtual entry 0040C180
; Ghidra working symbol: FUN_0040c180
; Verified archive table initialization role.
; Generated losslessly; preserve byte identity after edits.

%macro emit_init_archive_tables_part_00 0
    %%fragment_start:
init_archive_tables:
    %%insn_0040c180:
    push ebp ; 0040C180 55
    %if ($ - %%insn_0040c180) > 1
        %error "LONG_0040C180"
    %endif
    times 1 - ($ - %%insn_0040c180) db 0
    db 0x8B, 0xEC ; 0040C181 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c183:
    push dword 0x32000 ; 0040C183 6800200300
    %if ($ - %%insn_0040c183) > 5
        %error "LONG_0040C183"
    %endif
    times 5 - ($ - %%insn_0040c183) db 0
    %%insn_0040c188:
    call 0x40cdc0 ; 0040C188 E8330C0000
    %if ($ - %%insn_0040c188) > 5
        %error "LONG_0040C188"
    %endif
    times 5 - ($ - %%insn_0040c188) db 0
    %%insn_0040c18d:
    add esp,0x4 ; 0040C18D 83C404
    %if ($ - %%insn_0040c18d) > 3
        %error "LONG_0040C18D"
    %endif
    times 3 - ($ - %%insn_0040c18d) db 0
    %%insn_0040c190:
    mov [0x4212d0],eax ; 0040C190 A3D0124200
    %if ($ - %%insn_0040c190) > 5
        %error "LONG_0040C190"
    %endif
    times 5 - ($ - %%insn_0040c190) db 0
    %%insn_0040c195:
    pop ebp ; 0040C195 5D
    %if ($ - %%insn_0040c195) > 1
        %error "LONG_0040C195"
    %endif
    times 1 - ($ - %%insn_0040c195) db 0
    %%insn_0040c196:
    ret ; 0040C196 C3
    %if ($ - %%insn_0040c196) > 1
        %error "LONG_0040C196"
    %endif
    times 1 - ($ - %%insn_0040c196) db 0
    %if ($ - %%fragment_start) != 23
        %error "function fragment size drift: 0040C180"
    %endif
%endmacro
