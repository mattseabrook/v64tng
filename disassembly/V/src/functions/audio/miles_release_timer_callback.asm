; Linear entry 0786E (1702:084e)
; Ghidra working symbol: FUN_1702_084e
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: For a non-FFFFh handle with a nonzero state, clear the timer state and decrement registrations; on the last release reset PIT count and restore INT 08h.
; Evidence: Called by release-all, driver shutdown and 07C4Fh. Besides the FFFFh sentinel it performs no bounds check before indexing timer state.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_release_timer_callback_part_00 0
    %%fragment_start:
miles_release_timer_callback:
    %%insn_0786e:
    push bp ; 0786E 55
    %if ($ - %%insn_0786e) != 1
        %error "MILES_INSTRUCTION_SIZE_0786E"
    %endif
    db 0x8B, 0xEC ; 0786F 8BEC | mov bp,sp | encoding preserved
    %%insn_07871:
    push ds ; 07871 1E
    %if ($ - %%insn_07871) != 1
        %error "MILES_INSTRUCTION_SIZE_07871"
    %endif
    %%insn_07872:
    push si ; 07872 56
    %if ($ - %%insn_07872) != 1
        %error "MILES_INSTRUCTION_SIZE_07872"
    %endif
    %%insn_07873:
    push di ; 07873 57
    %if ($ - %%insn_07873) != 1
        %error "MILES_INSTRUCTION_SIZE_07873"
    %endif
    %%insn_07874:
    pushf ; 07874 9C
    %if ($ - %%insn_07874) != 1
        %error "MILES_INSTRUCTION_SIZE_07874"
    %endif
    %%insn_07875:
    cli ; 07875 FA
    %if ($ - %%insn_07875) != 1
        %error "MILES_INSTRUCTION_SIZE_07875"
    %endif
    %%insn_07876:
    mov bx,[bp+0x6] ; 07876 8B5E06
    %if ($ - %%insn_07876) != 3
        %error "MILES_INSTRUCTION_SIZE_07876"
    %endif
    %%insn_07879:
    cmp bx,0xffffffffffffffff ; 07879 83FBFF
    %if ($ - %%insn_07879) != 3
        %error "MILES_INSTRUCTION_SIZE_07879"
    %endif
    %%insn_0787c:
    jz short 0x78ab ; 0787C 742D
    %if ($ - %%insn_0787c) != 2
        %error "MILES_INSTRUCTION_SIZE_0787C"
    %endif
    %%insn_0787e:
    shl bx,1 ; 0787E D1E3
    %if ($ - %%insn_0787e) != 2
        %error "MILES_INSTRUCTION_SIZE_0787E"
    %endif
    db 0x2E, 0x83, 0xBF, 0x70, 0x00, 0x00 ; 07880 2E83BF700000 | cmp word [cs:bx+0x70],0x0 | encoding preserved
    %%insn_07886:
    jz short 0x78ab ; 07886 7423
    %if ($ - %%insn_07886) != 2
        %error "MILES_INSTRUCTION_SIZE_07886"
    %endif
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x00, 0x00 ; 07888 2EC78770000000 | mov word [cs:bx+0x70],0x0 | encoding preserved
    %%insn_0788f:
    dec word [cs:0x6] ; 0788F 2EFF0E0600
    %if ($ - %%insn_0788f) != 5
        %error "MILES_INSTRUCTION_SIZE_0788F"
    %endif
    %%insn_07894:
    jnz short 0x78ab ; 07894 7515
    %if ($ - %%insn_07894) != 2
        %error "MILES_INSTRUCTION_SIZE_07894"
    %endif
    %%insn_07896:
    push ax ; 07896 50
    %if ($ - %%insn_07896) != 1
        %error "MILES_INSTRUCTION_SIZE_07896"
    %endif
    %%insn_07897:
    push bp ; 07897 55
    %if ($ - %%insn_07897) != 1
        %error "MILES_INSTRUCTION_SIZE_07897"
    %endif
    db 0x8B, 0xEC ; 07898 8BEC | mov bp,sp | encoding preserved
    %%insn_0789a:
    mov word [bp+0x2],0x0 ; 0789A C746020000
    %if ($ - %%insn_0789a) != 5
        %error "MILES_INSTRUCTION_SIZE_0789A"
    %endif
    %%insn_0789f:
    pop bp ; 0789F 5D
    %if ($ - %%insn_0789f) != 1
        %error "MILES_INSTRUCTION_SIZE_0789F"
    %endif
    %%insn_078a0:
    push cs ; 078A0 0E
    %if ($ - %%insn_078a0) != 1
        %error "MILES_INSTRUCTION_SIZE_078A0"
    %endif
    %%insn_078a1:
    call 0x75c0 ; 078A1 E81CFD
    %if ($ - %%insn_078a1) != 3
        %error "MILES_INSTRUCTION_SIZE_078A1"
    %endif
    %%insn_078a4:
    add sp,0x2 ; 078A4 83C402
    %if ($ - %%insn_078a4) != 3
        %error "MILES_INSTRUCTION_SIZE_078A4"
    %endif
    %%insn_078a7:
    push cs ; 078A7 0E
    %if ($ - %%insn_078a7) != 1
        %error "MILES_INSTRUCTION_SIZE_078A7"
    %endif
    %%insn_078a8:
    call 0x7590 ; 078A8 E8E5FC
    %if ($ - %%insn_078a8) != 3
        %error "MILES_INSTRUCTION_SIZE_078A8"
    %endif
    %%insn_078ab:
    or bh,0x0 ; 078AB 80CF00
    %if ($ - %%insn_078ab) != 3
        %error "MILES_INSTRUCTION_SIZE_078AB"
    %endif
    miles_release_timer_callback_restore_flags_iret equ $ - 2 ; alternate entry 078AC: IRET
    %%insn_078ae:
    push cs ; 078AE 0E
    %if ($ - %%insn_078ae) != 1
        %error "MILES_INSTRUCTION_SIZE_078AE"
    %endif
    %%insn_078af:
    call 0x78ac ; 078AF E8FAFF
    %if ($ - %%insn_078af) != 3
        %error "MILES_INSTRUCTION_SIZE_078AF"
    %endif
    %%insn_078b2:
    pop di ; 078B2 5F
    %if ($ - %%insn_078b2) != 1
        %error "MILES_INSTRUCTION_SIZE_078B2"
    %endif
    %%insn_078b3:
    pop si ; 078B3 5E
    %if ($ - %%insn_078b3) != 1
        %error "MILES_INSTRUCTION_SIZE_078B3"
    %endif
    %%insn_078b4:
    pop ds ; 078B4 1F
    %if ($ - %%insn_078b4) != 1
        %error "MILES_INSTRUCTION_SIZE_078B4"
    %endif
    %%insn_078b5:
    pop bp ; 078B5 5D
    %if ($ - %%insn_078b5) != 1
        %error "MILES_INSTRUCTION_SIZE_078B5"
    %endif
    %%insn_078b6:
    retf ; 078B6 CB
    %if ($ - %%insn_078b6) != 1
        %error "MILES_INSTRUCTION_SIZE_078B6"
    %endif
    %if ($ - %%fragment_start) != 73
        %error "MILES_FUNCTION_SIZE_0786E"
    %endif
%endmacro
