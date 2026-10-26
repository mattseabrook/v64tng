; Linear entry 0572A (1000:572a)
; Ghidra working symbol: FUN_1000_572a
; Verified role; provisional analyzer boundaries retained.
; Contract: Call INT 2Fh/150Dh with ES:E3F2 as the drive-letter list destination.
; Cross-reference: 055FCh establishes runtime ES before calling. This helper does not set ES itself; the original API returns zero-based drive-letter bytes.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_get_mscdex_drive_letters_part_00 0
    %%fragment_start:
get_mscdex_drive_letters:
    %%insn_0572a:
    mov bx,0xe3f2 ; 0572A BBF2E3
    %if ($ - %%insn_0572a) > 3
        %error "LONG_0572A"
    %endif
    times 3 - ($ - %%insn_0572a) db 0
    %%insn_0572d:
    mov ax,0x150d ; 0572D B80D15
    %if ($ - %%insn_0572d) > 3
        %error "LONG_0572D"
    %endif
    times 3 - ($ - %%insn_0572d) db 0
    %%insn_05730:
    int byte 0x2f ; 05730 CD2F
    %if ($ - %%insn_05730) > 2
        %error "LONG_05730"
    %endif
    times 2 - ($ - %%insn_05730) db 0
    %%insn_05732:
    ret ; 05732 C3
    %if ($ - %%insn_05732) > 1
        %error "LONG_05732"
    %endif
    times 1 - ($ - %%insn_05732) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_0572A"
    %endif
%endmacro
