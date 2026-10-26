; Linear entry 03774 (1000:3774)
; Ghidra working symbol: FUN_1000_3774
; Verified role; analyzer boundary remains provisional.
; Contract: Close the video archive handle SS:D849h with DOS service 3Eh; retain the stored handle and return DOS flags/status.
; Evidence: 0388Ah and 03838h manage SS:D849h as the video archive handle. Both close the previous archive through this helper.
; Isolated machine-code checks: grooviev1/verify_dos_hotspot_io_helpers.py.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_close_video_archive_part_00 0
    %%fragment_start:
close_video_archive:
    %%insn_03774:
    mov bx,[bp-0x27b7] ; 03774 8B9E49D8
    %if ($ - %%insn_03774) > 4
        %error "LONG_03774"
    %endif
    times 4 - ($ - %%insn_03774) db 0
    %%insn_03778:
    mov ax,0x3e00 ; 03778 B8003E
    %if ($ - %%insn_03778) > 3
        %error "LONG_03778"
    %endif
    times 3 - ($ - %%insn_03778) db 0
    %%insn_0377b:
    int byte 0x21 ; 0377B CD21
    %if ($ - %%insn_0377b) > 2
        %error "LONG_0377B"
    %endif
    times 2 - ($ - %%insn_0377b) db 0
    %%insn_0377d:
    ret ; 0377D C3
    %if ($ - %%insn_0377d) > 1
        %error "LONG_0377D"
    %endif
    times 1 - ($ - %%insn_0377d) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_03774"
    %endif
%endmacro
