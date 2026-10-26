; Linear entry 0475E (1000:475e)
; Ghidra working symbol: FUN_1000_475e
; Verified role; analyzer boundary remains provisional.
; Contract: Test the persistent built-in rectangle through 047DCh using DS:E057h.
; Evidence: Input-loop 0447Bh dispatches opcode 44h persistent state to this wrapper. Selects the 11-byte rectangle at DS:E057h and tail-jumps to the shared hit test. The VM installs the target/cursor in this table; this wrapper consumes no operands.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_test_persistent_right_hotspot_part_00 0
    %%fragment_start:
test_persistent_right_hotspot:
    %%insn_0475e:
    mov si,0xe057 ; 0475E BE57E0
    %if ($ - %%insn_0475e) > 3
        %error "LONG_0475E"
    %endif
    times 3 - ($ - %%insn_0475e) db 0
    %%insn_04761:
    mov ax,0x893 ; 04761 B89308
    %if ($ - %%insn_04761) > 3
        %error "LONG_04761"
    %endif
    times 3 - ($ - %%insn_04761) db 0
    %%insn_04764:
    mov ds,ax ; 04764 8ED8
    %if ($ - %%insn_04764) > 2
        %error "LONG_04764"
    %endif
    times 2 - ($ - %%insn_04764) db 0
    %%insn_04766:
    jmp short 0x47dc ; 04766 EB74
    %if ($ - %%insn_04766) > 2
        %error "LONG_04766"
    %endif
    times 2 - ($ - %%insn_04766) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_0475E"
    %endif
%endmacro
