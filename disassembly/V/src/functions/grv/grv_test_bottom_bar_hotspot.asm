; Linear entry 0477C (1000:477c)
; Ghidra working symbol: FUN_1000_477c
; Verified role; analyzer boundary remains provisional.
; Contract: Copy the GRV target word to the built-in rectangle, then test it through 047DCh using DS:E0BAh.
; Evidence: Input-loop 0447Bh dispatches opcode 30h to this wrapper. Selects the 11-byte rectangle at DS:E0BAh and tail-jumps to the shared hit test. Reads DS:SI without advancing SI before replacing DS with 0893h.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_test_bottom_bar_hotspot_part_00 0
    %%fragment_start:
grv_test_bottom_bar_hotspot:
    %%insn_0477c:
    mov bx,[si] ; 0477C 8B1C
    %if ($ - %%insn_0477c) > 2
        %error "LONG_0477C"
    %endif
    times 2 - ($ - %%insn_0477c) db 0
    %%insn_0477e:
    mov [bp-0x1f3e],bx ; 0477E 899EC2E0
    %if ($ - %%insn_0477e) > 4
        %error "LONG_0477E"
    %endif
    times 4 - ($ - %%insn_0477e) db 0
    %%insn_04782:
    mov si,0xe0ba ; 04782 BEBAE0
    %if ($ - %%insn_04782) > 3
        %error "LONG_04782"
    %endif
    times 3 - ($ - %%insn_04782) db 0
    %%insn_04785:
    mov ax,0x893 ; 04785 B89308
    %if ($ - %%insn_04785) > 3
        %error "LONG_04785"
    %endif
    times 3 - ($ - %%insn_04785) db 0
    %%insn_04788:
    mov ds,ax ; 04788 8ED8
    %if ($ - %%insn_04788) > 2
        %error "LONG_04788"
    %endif
    times 2 - ($ - %%insn_04788) db 0
    %%insn_0478a:
    jmp short 0x47dc ; 0478A EB50
    %if ($ - %%insn_0478a) > 2
        %error "LONG_0478A"
    %endif
    times 2 - ($ - %%insn_0478a) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_0477C"
    %endif
%endmacro
