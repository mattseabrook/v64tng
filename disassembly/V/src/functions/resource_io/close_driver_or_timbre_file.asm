; Linear entry 0574A (1000:574a)
; Ghidra working symbol: FUN_1000_574a
; Verified role; analyzer boundary remains provisional.
; Contract: Close the handle in SS:E481h using DOS service 3Eh, leaving the stored handle unchanged.
; Evidence: Called after driver loading by 0576Eh and timbre loading by 05AACh; shares the handle slot written at 0573Eh.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_close_driver_or_timbre_file_part_00 0
    %%fragment_start:
close_driver_or_timbre_file:
    %%insn_0574a:
    mov bx,[bp-0x1b7f] ; 0574A 8B9E81E4
    %if ($ - %%insn_0574a) > 4
        %error "LONG_0574A"
    %endif
    times 4 - ($ - %%insn_0574a) db 0
    %%insn_0574e:
    mov ax,0x3e00 ; 0574E B8003E
    %if ($ - %%insn_0574e) > 3
        %error "LONG_0574E"
    %endif
    times 3 - ($ - %%insn_0574e) db 0
    %%insn_05751:
    int byte 0x21 ; 05751 CD21
    %if ($ - %%insn_05751) > 2
        %error "LONG_05751"
    %endif
    times 2 - ($ - %%insn_05751) db 0
    %%insn_05753:
    ret ; 05753 C3
    %if ($ - %%insn_05753) > 1
        %error "LONG_05753"
    %endif
    times 1 - ($ - %%insn_05753) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_0574A"
    %endif
%endmacro
