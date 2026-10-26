; Linear entry 047AC (1000:47ac)
; Ghidra working symbol: FUN_1000_47ac
; Verified role; analyzer boundary remains provisional.
; Contract: Copy the GRV target word to the built-in rectangle, then test it through 047DCh using DS:E083h.
; Evidence: Input-loop 0447Bh dispatches opcode 11h to this wrapper. Selects the 11-byte rectangle at DS:E083h and tail-jumps to the shared hit test. Reads DS:SI without advancing SI before replacing DS with 0893h.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_test_center_hotspot_cursor_zero_part_00 0
    %%fragment_start:
grv_test_center_hotspot_cursor_zero:
    %%insn_047ac:
    mov bx,[si] ; 047AC 8B1C
    %if ($ - %%insn_047ac) > 2
        %error "LONG_047AC"
    %endif
    times 2 - ($ - %%insn_047ac) db 0
    %%insn_047ae:
    mov [bp-0x1f75],bx ; 047AE 899E8BE0
    %if ($ - %%insn_047ae) > 4
        %error "LONG_047AE"
    %endif
    times 4 - ($ - %%insn_047ae) db 0
    %%insn_047b2:
    mov si,0xe083 ; 047B2 BE83E0
    %if ($ - %%insn_047b2) > 3
        %error "LONG_047B2"
    %endif
    times 3 - ($ - %%insn_047b2) db 0
    %%insn_047b5:
    mov ax,0x893 ; 047B5 B89308
    %if ($ - %%insn_047b5) > 3
        %error "LONG_047B5"
    %endif
    times 3 - ($ - %%insn_047b5) db 0
    %%insn_047b8:
    mov ds,ax ; 047B8 8ED8
    %if ($ - %%insn_047b8) > 2
        %error "LONG_047B8"
    %endif
    times 2 - ($ - %%insn_047b8) db 0
    %%insn_047ba:
    jmp short 0x47dc ; 047BA EB20
    %if ($ - %%insn_047ba) > 2
        %error "LONG_047BA"
    %endif
    times 2 - ($ - %%insn_047ba) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_047AC"
    %endif
%endmacro
