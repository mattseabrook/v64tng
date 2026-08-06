; PE virtual entry 0040D5C0
; Ghidra working symbol: FUN_0040d5c0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d5c0_part_00 0
    %%fragment_start:
func_0040d5c0:
    %%insn_0040d5c0:
    mov eax,[0x42359c] ; 0040D5C0 A19C354200
    %if ($ - %%insn_0040d5c0) > 5
        %error "LONG_0040D5C0"
    %endif
    times 5 - ($ - %%insn_0040d5c0) db 0
    %%insn_0040d5c5:
    test eax,eax ; 0040D5C5 85C0
    %if ($ - %%insn_0040d5c5) > 2
        %error "LONG_0040D5C5"
    %endif
    times 2 - ($ - %%insn_0040d5c5) db 0
    %%insn_0040d5c7:
    jz short 0x40d5cb ; 0040D5C7 7402
    %if ($ - %%insn_0040d5c7) > 2
        %error "LONG_0040D5C7"
    %endif
    times 2 - ($ - %%insn_0040d5c7) db 0
    %%insn_0040d5c9:
    call eax ; 0040D5C9 FFD0
    %if ($ - %%insn_0040d5c9) > 2
        %error "LONG_0040D5C9"
    %endif
    times 2 - ($ - %%insn_0040d5c9) db 0
    %%insn_0040d5cb:
    push dword 0x41b010 ; 0040D5CB 6810B04100
    %if ($ - %%insn_0040d5cb) > 5
        %error "LONG_0040D5CB"
    %endif
    times 5 - ($ - %%insn_0040d5cb) db 0
    %%insn_0040d5d0:
    push dword 0x41b008 ; 0040D5D0 6808B04100
    %if ($ - %%insn_0040d5d0) > 5
        %error "LONG_0040D5D0"
    %endif
    times 5 - ($ - %%insn_0040d5d0) db 0
    %%insn_0040d5d5:
    call 0x40d730 ; 0040D5D5 E856010000
    %if ($ - %%insn_0040d5d5) > 5
        %error "LONG_0040D5D5"
    %endif
    times 5 - ($ - %%insn_0040d5d5) db 0
    %%insn_0040d5da:
    add esp,0x8 ; 0040D5DA 83C408
    %if ($ - %%insn_0040d5da) > 3
        %error "LONG_0040D5DA"
    %endif
    times 3 - ($ - %%insn_0040d5da) db 0
    %%insn_0040d5dd:
    push dword 0x41b004 ; 0040D5DD 6804B04100
    %if ($ - %%insn_0040d5dd) > 5
        %error "LONG_0040D5DD"
    %endif
    times 5 - ($ - %%insn_0040d5dd) db 0
    %%insn_0040d5e2:
    push dword 0x41b000 ; 0040D5E2 6800B04100
    %if ($ - %%insn_0040d5e2) > 5
        %error "LONG_0040D5E2"
    %endif
    times 5 - ($ - %%insn_0040d5e2) db 0
    %%insn_0040d5e7:
    call 0x40d730 ; 0040D5E7 E844010000
    %if ($ - %%insn_0040d5e7) > 5
        %error "LONG_0040D5E7"
    %endif
    times 5 - ($ - %%insn_0040d5e7) db 0
    %%insn_0040d5ec:
    add esp,0x8 ; 0040D5EC 83C408
    %if ($ - %%insn_0040d5ec) > 3
        %error "LONG_0040D5EC"
    %endif
    times 3 - ($ - %%insn_0040d5ec) db 0
    %%insn_0040d5ef:
    ret ; 0040D5EF C3
    %if ($ - %%insn_0040d5ef) > 1
        %error "LONG_0040D5EF"
    %endif
    times 1 - ($ - %%insn_0040d5ef) db 0
    %if ($ - %%fragment_start) != 48
        %error "function fragment size drift: 0040D5C0"
    %endif
%endmacro
