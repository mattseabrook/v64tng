; Linear entry 05754 (1000:5754)
; Ghidra working symbol: FUN_1000_5754
; Verified role; analyzer boundary remains provisional.
; Contract: Read up to CX bytes from SS:E481h into DS:DX using DOS service 3Fh; return DOS AX/flags.
; Evidence: 0576Eh reads a driver into staging memory to determine its byte count, rewinds, then reads it into the allocated driver segment through this helper.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_read_driver_or_timbre_file_part_00 0
    %%fragment_start:
read_driver_or_timbre_file:
    %%insn_05754:
    mov bx,[bp-0x1b7f] ; 05754 8B9E81E4
    %if ($ - %%insn_05754) > 4
        %error "LONG_05754"
    %endif
    times 4 - ($ - %%insn_05754) db 0
    %%insn_05758:
    mov ax,0x3f00 ; 05758 B8003F
    %if ($ - %%insn_05758) > 3
        %error "LONG_05758"
    %endif
    times 3 - ($ - %%insn_05758) db 0
    %%insn_0575b:
    int byte 0x21 ; 0575B CD21
    %if ($ - %%insn_0575b) > 2
        %error "LONG_0575B"
    %endif
    times 2 - ($ - %%insn_0575b) db 0
    %%insn_0575d:
    ret ; 0575D C3
    %if ($ - %%insn_0575d) > 1
        %error "LONG_0575D"
    %endif
    times 1 - ($ - %%insn_0575d) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_05754"
    %endif
%endmacro
