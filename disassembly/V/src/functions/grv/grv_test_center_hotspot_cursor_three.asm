; Linear entry 047BC (1000:47bc)
; Ghidra working symbol: FUN_1000_47bc
; Verified role; analyzer boundary remains provisional.
; Contract: Copy the GRV target word to the built-in rectangle, then test it through 047DCh using DS:E099h.
; Evidence: Input-loop 0447Bh dispatches opcode 10h to this wrapper. Selects the 11-byte rectangle at DS:E099h and tail-jumps to the shared hit test. Reads DS:SI without advancing SI before replacing DS with 0893h.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_test_center_hotspot_cursor_three_part_00 0
    %%fragment_start:
grv_test_center_hotspot_cursor_three:
    %%insn_047bc:
    mov bx,[si] ; 047BC 8B1C
    %if ($ - %%insn_047bc) > 2
        %error "LONG_047BC"
    %endif
    times 2 - ($ - %%insn_047bc) db 0
    %%insn_047be:
    mov [bp-0x1f5f],bx ; 047BE 899EA1E0
    %if ($ - %%insn_047be) > 4
        %error "LONG_047BE"
    %endif
    times 4 - ($ - %%insn_047be) db 0
    %%insn_047c2:
    mov si,0xe099 ; 047C2 BE99E0
    %if ($ - %%insn_047c2) > 3
        %error "LONG_047C2"
    %endif
    times 3 - ($ - %%insn_047c2) db 0
    %%insn_047c5:
    mov ax,0x893 ; 047C5 B89308
    %if ($ - %%insn_047c5) > 3
        %error "LONG_047C5"
    %endif
    times 3 - ($ - %%insn_047c5) db 0
    %%insn_047c8:
    mov ds,ax ; 047C8 8ED8
    %if ($ - %%insn_047c8) > 2
        %error "LONG_047C8"
    %endif
    times 2 - ($ - %%insn_047c8) db 0
    %%insn_047ca:
    jmp short 0x47dc ; 047CA EB10
    %if ($ - %%insn_047ca) > 2
        %error "LONG_047CA"
    %endif
    times 2 - ($ - %%insn_047ca) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_047BC"
    %endif
%endmacro
