; PE virtual entry 004071D4
; Ghidra working symbol: FUN_004071d4
; Verified Miles AIL Red Book query. Returns zero without an open device.
; Generated losslessly; preserve byte identity after edits.

%macro emit_get_active_redbook_track_part_00 0
    %%fragment_start:
get_active_redbook_track:
    %%insn_004071d4:
    push ebp ; 004071D4 55
    %if ($ - %%insn_004071d4) > 1
        %error "LONG_004071D4"
    %endif
    times 1 - ($ - %%insn_004071d4) db 0
    db 0x8B, 0xEC ; 004071D5 8BEC | mov ebp,esp | encoding preserved
    %%insn_004071d7:
    cmp dword [0x421444],0x0 ; 004071D7 833D4414420000
    %if ($ - %%insn_004071d7) > 7
        %error "LONG_004071D7"
    %endif
    times 7 - ($ - %%insn_004071d7) db 0
    %%insn_004071de:
    jnz short 0x4071e4 ; 004071DE 7504
    %if ($ - %%insn_004071de) > 2
        %error "LONG_004071DE"
    %endif
    times 2 - ($ - %%insn_004071de) db 0
    db 0x33, 0xC0 ; 004071E0 33C0 | xor eax,eax | encoding preserved
    %%insn_004071e2:
    jmp short 0x4071f0 ; 004071E2 EB0C
    %if ($ - %%insn_004071e2) > 2
        %error "LONG_004071E2"
    %endif
    times 2 - ($ - %%insn_004071e2) db 0
    %%insn_004071e4:
    mov eax,[0x421444] ; 004071E4 A144144200
    %if ($ - %%insn_004071e4) > 5
        %error "LONG_004071E4"
    %endif
    times 5 - ($ - %%insn_004071e4) db 0
    %%insn_004071e9:
    push eax ; 004071E9 50
    %if ($ - %%insn_004071e9) > 1
        %error "LONG_004071E9"
    %endif
    times 1 - ($ - %%insn_004071e9) db 0
    %%insn_004071ea:
    call dword near [0x424630] ; 004071EA FF1530464200 | _AIL_redbook_track@4
    %if ($ - %%insn_004071ea) > 6
        %error "LONG_004071EA"
    %endif
    times 6 - ($ - %%insn_004071ea) db 0
    %%insn_004071f0:
    pop ebp ; 004071F0 5D
    %if ($ - %%insn_004071f0) > 1
        %error "LONG_004071F0"
    %endif
    times 1 - ($ - %%insn_004071f0) db 0
    %%insn_004071f1:
    ret ; 004071F1 C3
    %if ($ - %%insn_004071f1) > 1
        %error "LONG_004071F1"
    %endif
    times 1 - ($ - %%insn_004071f1) db 0
    %if ($ - %%fragment_start) != 30
        %error "function fragment size drift: 004071D4"
    %endif
%endmacro
