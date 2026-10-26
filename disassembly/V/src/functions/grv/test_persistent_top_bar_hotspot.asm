; Linear entry 04754 (1000:4754)
; Ghidra working symbol: FUN_1000_4754
; Verified role; analyzer boundary remains provisional.
; Contract: Test the persistent built-in rectangle through 047DCh using DS:E0A4h.
; Evidence: Input-loop 0447Bh dispatches opcode 2Ch persistent state to this wrapper. Selects the 11-byte rectangle at DS:E0A4h and tail-jumps to the shared hit test. The VM installs the target/cursor in this table; this wrapper consumes no operands.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_test_persistent_top_bar_hotspot_part_00 0
    %%fragment_start:
test_persistent_top_bar_hotspot:
    %%insn_04754:
    mov si,0xe0a4 ; 04754 BEA4E0
    %if ($ - %%insn_04754) > 3
        %error "LONG_04754"
    %endif
    times 3 - ($ - %%insn_04754) db 0
    %%insn_04757:
    mov ax,0x893 ; 04757 B89308
    %if ($ - %%insn_04757) > 3
        %error "LONG_04757"
    %endif
    times 3 - ($ - %%insn_04757) db 0
    %%insn_0475a:
    mov ds,ax ; 0475A 8ED8
    %if ($ - %%insn_0475a) > 2
        %error "LONG_0475A"
    %endif
    times 2 - ($ - %%insn_0475a) db 0
    %%insn_0475c:
    jmp short 0x47dc ; 0475C EB7E
    %if ($ - %%insn_0475c) > 2
        %error "LONG_0475C"
    %endif
    times 2 - ($ - %%insn_0475c) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_04754"
    %endif
%endmacro
