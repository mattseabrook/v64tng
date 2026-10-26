; Linear entry 043C9 (1000:43c9)
; Ghidra working symbol: FUN_1000_43c9
; Verified role; analyzer boundary remains provisional.
; Contract: Set SS:D9CEh to one for opcode 01h, preserving SI and consuming no operands.
; Evidence: The main VM dispatch at 03C5Ch selects this helper for opcode 01h. The only instruction with a data side effect is the word store at 043CAh; no gameplay meaning is asserted.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_set_reserved_flag_d9ce_part_00 0
    %%fragment_start:
grv_set_reserved_flag_d9ce:
    %%insn_043c9:
    push si ; 043C9 56
    %if ($ - %%insn_043c9) > 1
        %error "LONG_043C9"
    %endif
    times 1 - ($ - %%insn_043c9) db 0
    %%insn_043ca:
    mov word [bp-0x2632],0x1 ; 043CA C786CED90100
    %if ($ - %%insn_043ca) > 6
        %error "LONG_043CA"
    %endif
    times 6 - ($ - %%insn_043ca) db 0
    %%insn_043d0:
    pop si ; 043D0 5E
    %if ($ - %%insn_043d0) > 1
        %error "LONG_043D0"
    %endif
    times 1 - ($ - %%insn_043d0) db 0
    %%insn_043d1:
    ret ; 043D1 C3
    %if ($ - %%insn_043d1) > 1
        %error "LONG_043D1"
    %endif
    times 1 - ($ - %%insn_043d1) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_043C9"
    %endif
%endmacro
