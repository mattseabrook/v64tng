; Linear entry 0773E (1702:071e)
; Ghidra working symbol: FUN_1702_071e
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Walk 16 registered driver slots, release associated timers and call driver teardown with the supplied two words, then release all user timers.
; Evidence: Shutdown 05CEDh calls 0702h:071Eh. Per-driver teardown is 07C4Fh; the final 078B7h sweep covers user timer slots 15 down to 0.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_shutdown_drivers_and_timers_part_00 0
    %%fragment_start:
miles_shutdown_drivers_and_timers:
    %%insn_0773e:
    push bp ; 0773E 55
    %if ($ - %%insn_0773e) != 1
        %error "MILES_INSTRUCTION_SIZE_0773E"
    %endif
    db 0x8B, 0xEC ; 0773F 8BEC | mov bp,sp | encoding preserved
    %%insn_07741:
    push ds ; 07741 1E
    %if ($ - %%insn_07741) != 1
        %error "MILES_INSTRUCTION_SIZE_07741"
    %endif
    %%insn_07742:
    push si ; 07742 56
    %if ($ - %%insn_07742) != 1
        %error "MILES_INSTRUCTION_SIZE_07742"
    %endif
    %%insn_07743:
    push di ; 07743 57
    %if ($ - %%insn_07743) != 1
        %error "MILES_INSTRUCTION_SIZE_07743"
    %endif
    %%insn_07744:
    pushf ; 07744 9C
    %if ($ - %%insn_07744) != 1
        %error "MILES_INSTRUCTION_SIZE_07744"
    %endif
    %%insn_07745:
    cli ; 07745 FA
    %if ($ - %%insn_07745) != 1
        %error "MILES_INSTRUCTION_SIZE_07745"
    %endif
    %%insn_07746:
    mov word [cs:0x1ae],0x0 ; 07746 2EC706AE010000
    %if ($ - %%insn_07746) != 7
        %error "MILES_INSTRUCTION_SIZE_07746"
    %endif
    %%insn_0774d:
    mov si,[cs:0x1ae] ; 0774D 2E8B36AE01
    %if ($ - %%insn_0774d) != 5
        %error "MILES_INSTRUCTION_SIZE_0774D"
    %endif
    %%insn_07752:
    shl si,1 ; 07752 D1E6
    %if ($ - %%insn_07752) != 2
        %error "MILES_INSTRUCTION_SIZE_07752"
    %endif
    %%insn_07754:
    mov dx,[cs:si+0x16a] ; 07754 2E8B946A01
    %if ($ - %%insn_07754) != 5
        %error "MILES_INSTRUCTION_SIZE_07754"
    %endif
    %%insn_07759:
    shl si,1 ; 07759 D1E6
    %if ($ - %%insn_07759) != 2
        %error "MILES_INSTRUCTION_SIZE_07759"
    %endif
    %%insn_0775b:
    mov ax,[cs:si+0x12a] ; 0775B 2E8B842A01
    %if ($ - %%insn_0775b) != 5
        %error "MILES_INSTRUCTION_SIZE_0775B"
    %endif
    %%insn_07760:
    or ax,[cs:si+0x12c] ; 07760 2E0B842C01
    %if ($ - %%insn_07760) != 5
        %error "MILES_INSTRUCTION_SIZE_07760"
    %endif
    %%insn_07765:
    jz short 0x7786 ; 07765 741F
    %if ($ - %%insn_07765) != 2
        %error "MILES_INSTRUCTION_SIZE_07765"
    %endif
    %%insn_07767:
    cmp dx,0xffffffffffffffff ; 07767 83FAFF
    %if ($ - %%insn_07767) != 3
        %error "MILES_INSTRUCTION_SIZE_07767"
    %endif
    %%insn_0776a:
    jz short 0x7774 ; 0776A 7408
    %if ($ - %%insn_0776a) != 2
        %error "MILES_INSTRUCTION_SIZE_0776A"
    %endif
    %%insn_0776c:
    push dx ; 0776C 52
    %if ($ - %%insn_0776c) != 1
        %error "MILES_INSTRUCTION_SIZE_0776C"
    %endif
    %%insn_0776d:
    push cs ; 0776D 0E
    %if ($ - %%insn_0776d) != 1
        %error "MILES_INSTRUCTION_SIZE_0776D"
    %endif
    %%insn_0776e:
    call 0x786e ; 0776E E8FD00
    %if ($ - %%insn_0776e) != 3
        %error "MILES_INSTRUCTION_SIZE_0776E"
    %endif
    %%insn_07771:
    add sp,0x2 ; 07771 83C402
    %if ($ - %%insn_07771) != 3
        %error "MILES_INSTRUCTION_SIZE_07771"
    %endif
    %%insn_07774:
    push word [bp+0x8] ; 07774 FF7608
    %if ($ - %%insn_07774) != 3
        %error "MILES_INSTRUCTION_SIZE_07774"
    %endif
    %%insn_07777:
    push word [bp+0x6] ; 07777 FF7606
    %if ($ - %%insn_07777) != 3
        %error "MILES_INSTRUCTION_SIZE_07777"
    %endif
    %%insn_0777a:
    push word [cs:0x1ae] ; 0777A 2EFF36AE01
    %if ($ - %%insn_0777a) != 5
        %error "MILES_INSTRUCTION_SIZE_0777A"
    %endif
    %%insn_0777f:
    push cs ; 0777F 0E
    %if ($ - %%insn_0777f) != 1
        %error "MILES_INSTRUCTION_SIZE_0777F"
    %endif
    %%insn_07780:
    call 0x7c4f ; 07780 E8CC04
    %if ($ - %%insn_07780) != 3
        %error "MILES_INSTRUCTION_SIZE_07780"
    %endif
    %%insn_07783:
    add sp,0x6 ; 07783 83C406
    %if ($ - %%insn_07783) != 3
        %error "MILES_INSTRUCTION_SIZE_07783"
    %endif
    %%insn_07786:
    inc word [cs:0x1ae] ; 07786 2EFF06AE01
    %if ($ - %%insn_07786) != 5
        %error "MILES_INSTRUCTION_SIZE_07786"
    %endif
    %%insn_0778b:
    cmp word [cs:0x1ae],0x10 ; 0778B 2E833EAE0110
    %if ($ - %%insn_0778b) != 6
        %error "MILES_INSTRUCTION_SIZE_0778B"
    %endif
    %%insn_07791:
    jnz short 0x774d ; 07791 75BA
    %if ($ - %%insn_07791) != 2
        %error "MILES_INSTRUCTION_SIZE_07791"
    %endif
    %%insn_07793:
    push cs ; 07793 0E
    %if ($ - %%insn_07793) != 1
        %error "MILES_INSTRUCTION_SIZE_07793"
    %endif
    %%insn_07794:
    call 0x78b7 ; 07794 E82001
    %if ($ - %%insn_07794) != 3
        %error "MILES_INSTRUCTION_SIZE_07794"
    %endif
    %%insn_07797:
    or bh,0x0 ; 07797 80CF00
    %if ($ - %%insn_07797) != 3
        %error "MILES_INSTRUCTION_SIZE_07797"
    %endif
    miles_shutdown_drivers_and_timers_restore_flags_iret equ $ - 2 ; alternate entry 07798: IRET
    %%insn_0779a:
    push cs ; 0779A 0E
    %if ($ - %%insn_0779a) != 1
        %error "MILES_INSTRUCTION_SIZE_0779A"
    %endif
    %%insn_0779b:
    call 0x7798 ; 0779B E8FAFF
    %if ($ - %%insn_0779b) != 3
        %error "MILES_INSTRUCTION_SIZE_0779B"
    %endif
    %%insn_0779e:
    pop di ; 0779E 5F
    %if ($ - %%insn_0779e) != 1
        %error "MILES_INSTRUCTION_SIZE_0779E"
    %endif
    %%insn_0779f:
    pop si ; 0779F 5E
    %if ($ - %%insn_0779f) != 1
        %error "MILES_INSTRUCTION_SIZE_0779F"
    %endif
    %%insn_077a0:
    pop ds ; 077A0 1F
    %if ($ - %%insn_077a0) != 1
        %error "MILES_INSTRUCTION_SIZE_077A0"
    %endif
    %%insn_077a1:
    pop bp ; 077A1 5D
    %if ($ - %%insn_077a1) != 1
        %error "MILES_INSTRUCTION_SIZE_077A1"
    %endif
    %%insn_077a2:
    retf ; 077A2 CB
    %if ($ - %%insn_077a2) != 1
        %error "MILES_INSTRUCTION_SIZE_077A2"
    %endif
    %if ($ - %%fragment_start) != 101
        %error "MILES_FUNCTION_SIZE_0773E"
    %endif
%endmacro
