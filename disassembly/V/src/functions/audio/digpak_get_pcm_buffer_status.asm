; Linear entry 086AB (1000:86ab)
; Ghidra working symbol: FUN_1000_86ab
; Verified descriptive role; analyzer entry and original bytes retained.
; Contract: Return the status word for the supplied slot index, ignoring the first driver-handle argument and performing no local bounds check.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_digpak_get_pcm_buffer_status_part_00 0
    %%fragment_start:
digpak_get_pcm_buffer_status:
    %%insn_086ab:
    push bp ; 086AB 55
    %if ($ - %%insn_086ab) > 1
        %error "LONG_086AB"
    %endif
    times 1 - ($ - %%insn_086ab) db 0
    db 0x8B, 0xEC ; 086AC 8BEC | mov bp,sp | encoding preserved
    %%insn_086ae:
    push ds ; 086AE 1E
    %if ($ - %%insn_086ae) > 1
        %error "LONG_086AE"
    %endif
    times 1 - ($ - %%insn_086ae) db 0
    %%insn_086af:
    push si ; 086AF 56
    %if ($ - %%insn_086af) > 1
        %error "LONG_086AF"
    %endif
    times 1 - ($ - %%insn_086af) db 0
    %%insn_086b0:
    push di ; 086B0 57
    %if ($ - %%insn_086b0) > 1
        %error "LONG_086B0"
    %endif
    times 1 - ($ - %%insn_086b0) db 0
    %%insn_086b1:
    mov bx,[bp+0x8] ; 086B1 8B5E08
    %if ($ - %%insn_086b1) > 3
        %error "LONG_086B1"
    %endif
    times 3 - ($ - %%insn_086b1) db 0
    %%insn_086b4:
    shl bx,1 ; 086B4 D1E3
    %if ($ - %%insn_086b4) > 2
        %error "LONG_086B4"
    %endif
    times 2 - ($ - %%insn_086b4) db 0
    %%insn_086b6:
    mov ax,[cs:bx+0xe5c] ; 086B6 2E8B875C0E
    %if ($ - %%insn_086b6) > 5
        %error "LONG_086B6"
    %endif
    times 5 - ($ - %%insn_086b6) db 0
    %%insn_086bb:
    pop di ; 086BB 5F
    %if ($ - %%insn_086bb) > 1
        %error "LONG_086BB"
    %endif
    times 1 - ($ - %%insn_086bb) db 0
    %%insn_086bc:
    pop si ; 086BC 5E
    %if ($ - %%insn_086bc) > 1
        %error "LONG_086BC"
    %endif
    times 1 - ($ - %%insn_086bc) db 0
    %%insn_086bd:
    pop ds ; 086BD 1F
    %if ($ - %%insn_086bd) > 1
        %error "LONG_086BD"
    %endif
    times 1 - ($ - %%insn_086bd) db 0
    %%insn_086be:
    pop bp ; 086BE 5D
    %if ($ - %%insn_086be) > 1
        %error "LONG_086BE"
    %endif
    times 1 - ($ - %%insn_086be) db 0
    %%insn_086bf:
    retf ; 086BF CB
    %if ($ - %%insn_086bf) > 1
        %error "LONG_086BF"
    %endif
    times 1 - ($ - %%insn_086bf) db 0
    %if ($ - %%fragment_start) != 21
        %error "SIZE_086AB"
    %endif
%endmacro
