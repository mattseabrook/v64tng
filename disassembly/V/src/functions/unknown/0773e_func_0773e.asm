; Linear entry 0773E (1702:071e)
; Ghidra working symbol: FUN_1702_071e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0773e_part_00 0
    %%fragment_start:
func_0773e:
    %%insn_0773e:
    push bp ; 0773E 55
    %if ($ - %%insn_0773e) > 1
        %error "LONG_0773E"
    %endif
    times 1 - ($ - %%insn_0773e) db 0
    db 0x8B, 0xEC ; 0773F 8BEC | mov bp,sp | encoding preserved
    %%insn_07741:
    push ds ; 07741 1E
    %if ($ - %%insn_07741) > 1
        %error "LONG_07741"
    %endif
    times 1 - ($ - %%insn_07741) db 0
    %%insn_07742:
    push si ; 07742 56
    %if ($ - %%insn_07742) > 1
        %error "LONG_07742"
    %endif
    times 1 - ($ - %%insn_07742) db 0
    %%insn_07743:
    push di ; 07743 57
    %if ($ - %%insn_07743) > 1
        %error "LONG_07743"
    %endif
    times 1 - ($ - %%insn_07743) db 0
    %%insn_07744:
    pushf ; 07744 9C
    %if ($ - %%insn_07744) > 1
        %error "LONG_07744"
    %endif
    times 1 - ($ - %%insn_07744) db 0
    %%insn_07745:
    cli ; 07745 FA
    %if ($ - %%insn_07745) > 1
        %error "LONG_07745"
    %endif
    times 1 - ($ - %%insn_07745) db 0
    %%insn_07746:
    mov word [cs:0x1ae],0x0 ; 07746 2EC706AE010000
    %if ($ - %%insn_07746) > 7
        %error "LONG_07746"
    %endif
    times 7 - ($ - %%insn_07746) db 0
    %%insn_0774d:
    mov si,[cs:0x1ae] ; 0774D 2E8B36AE01
    %if ($ - %%insn_0774d) > 5
        %error "LONG_0774D"
    %endif
    times 5 - ($ - %%insn_0774d) db 0
    %%insn_07752:
    shl si,1 ; 07752 D1E6
    %if ($ - %%insn_07752) > 2
        %error "LONG_07752"
    %endif
    times 2 - ($ - %%insn_07752) db 0
    %%insn_07754:
    mov dx,[cs:si+0x16a] ; 07754 2E8B946A01
    %if ($ - %%insn_07754) > 5
        %error "LONG_07754"
    %endif
    times 5 - ($ - %%insn_07754) db 0
    %%insn_07759:
    shl si,1 ; 07759 D1E6
    %if ($ - %%insn_07759) > 2
        %error "LONG_07759"
    %endif
    times 2 - ($ - %%insn_07759) db 0
    %%insn_0775b:
    mov ax,[cs:si+0x12a] ; 0775B 2E8B842A01
    %if ($ - %%insn_0775b) > 5
        %error "LONG_0775B"
    %endif
    times 5 - ($ - %%insn_0775b) db 0
    %%insn_07760:
    or ax,[cs:si+0x12c] ; 07760 2E0B842C01
    %if ($ - %%insn_07760) > 5
        %error "LONG_07760"
    %endif
    times 5 - ($ - %%insn_07760) db 0
    %%insn_07765:
    jz short 0x7786 ; 07765 741F
    %if ($ - %%insn_07765) > 2
        %error "LONG_07765"
    %endif
    times 2 - ($ - %%insn_07765) db 0
    %%insn_07767:
    cmp dx,0xffffffffffffffff ; 07767 83FAFF
    %if ($ - %%insn_07767) > 3
        %error "LONG_07767"
    %endif
    times 3 - ($ - %%insn_07767) db 0
    %%insn_0776a:
    jz short 0x7774 ; 0776A 7408
    %if ($ - %%insn_0776a) > 2
        %error "LONG_0776A"
    %endif
    times 2 - ($ - %%insn_0776a) db 0
    %%insn_0776c:
    push dx ; 0776C 52
    %if ($ - %%insn_0776c) > 1
        %error "LONG_0776C"
    %endif
    times 1 - ($ - %%insn_0776c) db 0
    %%insn_0776d:
    push cs ; 0776D 0E
    %if ($ - %%insn_0776d) > 1
        %error "LONG_0776D"
    %endif
    times 1 - ($ - %%insn_0776d) db 0
    %%insn_0776e:
    call 0x786e ; 0776E E8FD00
    %if ($ - %%insn_0776e) > 3
        %error "LONG_0776E"
    %endif
    times 3 - ($ - %%insn_0776e) db 0
    %%insn_07771:
    add sp,0x2 ; 07771 83C402
    %if ($ - %%insn_07771) > 3
        %error "LONG_07771"
    %endif
    times 3 - ($ - %%insn_07771) db 0
    %%insn_07774:
    push word [bp+0x8] ; 07774 FF7608
    %if ($ - %%insn_07774) > 3
        %error "LONG_07774"
    %endif
    times 3 - ($ - %%insn_07774) db 0
    %%insn_07777:
    push word [bp+0x6] ; 07777 FF7606
    %if ($ - %%insn_07777) > 3
        %error "LONG_07777"
    %endif
    times 3 - ($ - %%insn_07777) db 0
    %%insn_0777a:
    push word [cs:0x1ae] ; 0777A 2EFF36AE01
    %if ($ - %%insn_0777a) > 5
        %error "LONG_0777A"
    %endif
    times 5 - ($ - %%insn_0777a) db 0
    %%insn_0777f:
    push cs ; 0777F 0E
    %if ($ - %%insn_0777f) > 1
        %error "LONG_0777F"
    %endif
    times 1 - ($ - %%insn_0777f) db 0
    %%insn_07780:
    call 0x7c4f ; 07780 E8CC04
    %if ($ - %%insn_07780) > 3
        %error "LONG_07780"
    %endif
    times 3 - ($ - %%insn_07780) db 0
    %%insn_07783:
    add sp,0x6 ; 07783 83C406
    %if ($ - %%insn_07783) > 3
        %error "LONG_07783"
    %endif
    times 3 - ($ - %%insn_07783) db 0
    %%insn_07786:
    inc word [cs:0x1ae] ; 07786 2EFF06AE01
    %if ($ - %%insn_07786) > 5
        %error "LONG_07786"
    %endif
    times 5 - ($ - %%insn_07786) db 0
    %%insn_0778b:
    cmp word [cs:0x1ae],0x10 ; 0778B 2E833EAE0110
    %if ($ - %%insn_0778b) > 6
        %error "LONG_0778B"
    %endif
    times 6 - ($ - %%insn_0778b) db 0
    %%insn_07791:
    jnz short 0x774d ; 07791 75BA
    %if ($ - %%insn_07791) > 2
        %error "LONG_07791"
    %endif
    times 2 - ($ - %%insn_07791) db 0
    %%insn_07793:
    push cs ; 07793 0E
    %if ($ - %%insn_07793) > 1
        %error "LONG_07793"
    %endif
    times 1 - ($ - %%insn_07793) db 0
    %%insn_07794:
    call 0x78b7 ; 07794 E82001
    %if ($ - %%insn_07794) > 3
        %error "LONG_07794"
    %endif
    times 3 - ($ - %%insn_07794) db 0
    %%insn_07797:
    db 0x80 ; 07797 80
    %if ($ - %%insn_07797) > 1
        %error "LONG_07797"
    %endif
    times 1 - ($ - %%insn_07797) db 0
    %if ($ - %%fragment_start) != 90
        %error "SIZE_0773E"
    %endif
%endmacro

%macro emit_func_0773e_part_01 0
    %%fragment_start:
    %%insn_07799:
    add [0xfae8],cl ; 07799 000EE8FA
    %if ($ - %%insn_07799) > 4
        %error "LONG_07799"
    %endif
    times 4 - ($ - %%insn_07799) db 0
    %%insn_0779d:
    call word far [bx+0x5e] ; 0779D FF5F5E
    %if ($ - %%insn_0779d) > 3
        %error "LONG_0779D"
    %endif
    times 3 - ($ - %%insn_0779d) db 0
    %%insn_077a0:
    pop ds ; 077A0 1F
    %if ($ - %%insn_077a0) > 1
        %error "LONG_077A0"
    %endif
    times 1 - ($ - %%insn_077a0) db 0
    %%insn_077a1:
    pop bp ; 077A1 5D
    %if ($ - %%insn_077a1) > 1
        %error "LONG_077A1"
    %endif
    times 1 - ($ - %%insn_077a1) db 0
    %%insn_077a2:
    retf ; 077A2 CB
    %if ($ - %%insn_077a2) > 1
        %error "LONG_077A2"
    %endif
    times 1 - ($ - %%insn_077a2) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_07799"
    %endif
%endmacro
