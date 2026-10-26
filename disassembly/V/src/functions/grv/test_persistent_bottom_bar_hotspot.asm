; Linear entry 04772 (1000:4772)
; Ghidra working symbol: FUN_1000_4772
; Verified role; analyzer boundary remains provisional.
; Contract: Test the persistent built-in rectangle through 047DCh using DS:E0AFh.
; Evidence: Input-loop 0447Bh dispatches opcode 2Dh persistent state to this wrapper. Selects the 11-byte rectangle at DS:E0AFh and tail-jumps to the shared hit test. The VM installs the target/cursor in this table; this wrapper consumes no operands.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_test_persistent_bottom_bar_hotspot_part_00 0
    %%fragment_start:
test_persistent_bottom_bar_hotspot:
    %%insn_04772:
    mov si,0xe0af ; 04772 BEAFE0
    %if ($ - %%insn_04772) > 3
        %error "LONG_04772"
    %endif
    times 3 - ($ - %%insn_04772) db 0
    %%insn_04775:
    mov ax,0x893 ; 04775 B89308
    %if ($ - %%insn_04775) > 3
        %error "LONG_04775"
    %endif
    times 3 - ($ - %%insn_04775) db 0
    %%insn_04778:
    mov ds,ax ; 04778 8ED8
    %if ($ - %%insn_04778) > 2
        %error "LONG_04778"
    %endif
    times 2 - ($ - %%insn_04778) db 0
    %%insn_0477a:
    jmp short 0x47dc ; 0477A EB60
    %if ($ - %%insn_0477a) > 2
        %error "LONG_0477A"
    %endif
    times 2 - ($ - %%insn_0477a) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_04772"
    %endif
%endmacro
