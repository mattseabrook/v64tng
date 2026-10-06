; Semantic role: detect_and_reset_mouse_driver
; Contract: Reset the mouse driver through INT 33h and record whether a driver responds.
; Evidence: static instructions and connected callers; original symbol unknown.
; Analyzer boundaries retained; no runtime validation claimed.
; Linear entry 03671 (1000:3671)
; Ghidra working symbol: FUN_1000_3671
; Verified static semantic role; analyzer boundary remains provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_detect_and_reset_mouse_driver_part_00 0
    %%fragment_start:
detect_and_reset_mouse_driver:
    db 0x33, 0xC0 ; 03671 33C0 | xor ax,ax | encoding preserved
    %%insn_03673:
    int byte 0x33 ; 03673 CD33
    %if ($ - %%insn_03673) > 2
        %error "LONG_03673"
    %endif
    times 2 - ($ - %%insn_03673) db 0
    db 0x23, 0xC0 ; 03675 23C0 | and ax,ax | encoding preserved
    %%insn_03677:
    jnz short 0x3681 ; 03677 7508
    %if ($ - %%insn_03677) > 2
        %error "LONG_03677"
    %endif
    times 2 - ($ - %%insn_03677) db 0
    %%insn_03679:
    mov word [bp-0x298c],0x0 ; 03679 C78674D60000
    %if ($ - %%insn_03679) > 6
        %error "LONG_03679"
    %endif
    times 6 - ($ - %%insn_03679) db 0
    %%insn_0367f:
    jmp short 0x3687 ; 0367F EB06
    %if ($ - %%insn_0367f) > 2
        %error "LONG_0367F"
    %endif
    times 2 - ($ - %%insn_0367f) db 0
    %%insn_03681:
    mov word [bp-0x298c],0x1 ; 03681 C78674D60100
    %if ($ - %%insn_03681) > 6
        %error "LONG_03681"
    %endif
    times 6 - ($ - %%insn_03681) db 0
    %%insn_03687:
    ret ; 03687 C3
    %if ($ - %%insn_03687) > 1
        %error "LONG_03687"
    %endif
    times 1 - ($ - %%insn_03687) db 0
    %if ($ - %%fragment_start) != 23
        %error "SIZE_03671"
    %endif
%endmacro
