; Linear entry 04768 (1000:4768)
; Ghidra working symbol: FUN_1000_4768
; Verified role; analyzer boundary remains provisional.
; Contract: Test the persistent built-in rectangle through 047DCh using DS:E062h.
; Evidence: Input-loop 0447Bh dispatches opcode 45h persistent state to this wrapper. Selects the 11-byte rectangle at DS:E062h and tail-jumps to the shared hit test. The VM installs the target/cursor in this table; this wrapper consumes no operands.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_test_persistent_left_hotspot_part_00 0
    %%fragment_start:
test_persistent_left_hotspot:
    %%insn_04768:
    mov si,0xe062 ; 04768 BE62E0
    %if ($ - %%insn_04768) > 3
        %error "LONG_04768"
    %endif
    times 3 - ($ - %%insn_04768) db 0
    %%insn_0476b:
    mov ax,0x893 ; 0476B B89308
    %if ($ - %%insn_0476b) > 3
        %error "LONG_0476B"
    %endif
    times 3 - ($ - %%insn_0476b) db 0
    %%insn_0476e:
    mov ds,ax ; 0476E 8ED8
    %if ($ - %%insn_0476e) > 2
        %error "LONG_0476E"
    %endif
    times 2 - ($ - %%insn_0476e) db 0
    %%insn_04770:
    jmp short 0x47dc ; 04770 EB6A
    %if ($ - %%insn_04770) > 2
        %error "LONG_04770"
    %endif
    times 2 - ($ - %%insn_04770) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_04768"
    %endif
%endmacro
