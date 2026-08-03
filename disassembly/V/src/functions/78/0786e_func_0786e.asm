; Linear entry 0786E (1702:084e)
; Ghidra working symbol: FUN_1702_084e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0786e_part_00 0
    %%fragment_start:
func_0786e:
    %%insn_0786e:
    push bp ; 0786E 55
    %if ($ - %%insn_0786e) > 1
        %error "LONG_0786E"
    %endif
    times 1 - ($ - %%insn_0786e) db 0
    db 0x8B, 0xEC ; 0786F 8BEC | mov bp,sp | encoding preserved
    %%insn_07871:
    push ds ; 07871 1E
    %if ($ - %%insn_07871) > 1
        %error "LONG_07871"
    %endif
    times 1 - ($ - %%insn_07871) db 0
    %%insn_07872:
    push si ; 07872 56
    %if ($ - %%insn_07872) > 1
        %error "LONG_07872"
    %endif
    times 1 - ($ - %%insn_07872) db 0
    %%insn_07873:
    push di ; 07873 57
    %if ($ - %%insn_07873) > 1
        %error "LONG_07873"
    %endif
    times 1 - ($ - %%insn_07873) db 0
    %%insn_07874:
    pushf ; 07874 9C
    %if ($ - %%insn_07874) > 1
        %error "LONG_07874"
    %endif
    times 1 - ($ - %%insn_07874) db 0
    %%insn_07875:
    cli ; 07875 FA
    %if ($ - %%insn_07875) > 1
        %error "LONG_07875"
    %endif
    times 1 - ($ - %%insn_07875) db 0
    %%insn_07876:
    mov bx,[bp+0x6] ; 07876 8B5E06
    %if ($ - %%insn_07876) > 3
        %error "LONG_07876"
    %endif
    times 3 - ($ - %%insn_07876) db 0
    %%insn_07879:
    cmp bx,0xffffffffffffffff ; 07879 83FBFF
    %if ($ - %%insn_07879) > 3
        %error "LONG_07879"
    %endif
    times 3 - ($ - %%insn_07879) db 0
    %%insn_0787c:
    jz short 0x78ab ; 0787C 742D
    %if ($ - %%insn_0787c) > 2
        %error "LONG_0787C"
    %endif
    times 2 - ($ - %%insn_0787c) db 0
    %%insn_0787e:
    shl bx,1 ; 0787E D1E3
    %if ($ - %%insn_0787e) > 2
        %error "LONG_0787E"
    %endif
    times 2 - ($ - %%insn_0787e) db 0
    db 0x2E, 0x83, 0xBF, 0x70, 0x00, 0x00 ; 07880 2E83BF700000 | cmp word [cs:bx+0x70],0x0 | encoding preserved
    %%insn_07886:
    jz short 0x78ab ; 07886 7423
    %if ($ - %%insn_07886) > 2
        %error "LONG_07886"
    %endif
    times 2 - ($ - %%insn_07886) db 0
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x00, 0x00 ; 07888 2EC78770000000 | mov word [cs:bx+0x70],0x0 | encoding preserved
    %%insn_0788f:
    dec word [cs:0x6] ; 0788F 2EFF0E0600
    %if ($ - %%insn_0788f) > 5
        %error "LONG_0788F"
    %endif
    times 5 - ($ - %%insn_0788f) db 0
    %%insn_07894:
    jnz short 0x78ab ; 07894 7515
    %if ($ - %%insn_07894) > 2
        %error "LONG_07894"
    %endif
    times 2 - ($ - %%insn_07894) db 0
    %%insn_07896:
    push ax ; 07896 50
    %if ($ - %%insn_07896) > 1
        %error "LONG_07896"
    %endif
    times 1 - ($ - %%insn_07896) db 0
    %%insn_07897:
    push bp ; 07897 55
    %if ($ - %%insn_07897) > 1
        %error "LONG_07897"
    %endif
    times 1 - ($ - %%insn_07897) db 0
    db 0x8B, 0xEC ; 07898 8BEC | mov bp,sp | encoding preserved
    %%insn_0789a:
    mov word [bp+0x2],0x0 ; 0789A C746020000
    %if ($ - %%insn_0789a) > 5
        %error "LONG_0789A"
    %endif
    times 5 - ($ - %%insn_0789a) db 0
    %%insn_0789f:
    pop bp ; 0789F 5D
    %if ($ - %%insn_0789f) > 1
        %error "LONG_0789F"
    %endif
    times 1 - ($ - %%insn_0789f) db 0
    %%insn_078a0:
    push cs ; 078A0 0E
    %if ($ - %%insn_078a0) > 1
        %error "LONG_078A0"
    %endif
    times 1 - ($ - %%insn_078a0) db 0
    %%insn_078a1:
    call 0x75c0 ; 078A1 E81CFD
    %if ($ - %%insn_078a1) > 3
        %error "LONG_078A1"
    %endif
    times 3 - ($ - %%insn_078a1) db 0
    %%insn_078a4:
    add sp,0x2 ; 078A4 83C402
    %if ($ - %%insn_078a4) > 3
        %error "LONG_078A4"
    %endif
    times 3 - ($ - %%insn_078a4) db 0
    %%insn_078a7:
    push cs ; 078A7 0E
    %if ($ - %%insn_078a7) > 1
        %error "LONG_078A7"
    %endif
    times 1 - ($ - %%insn_078a7) db 0
    %%insn_078a8:
    call 0x7590 ; 078A8 E8E5FC
    %if ($ - %%insn_078a8) > 3
        %error "LONG_078A8"
    %endif
    times 3 - ($ - %%insn_078a8) db 0
    %%insn_078ab:
    db 0x80 ; 078AB 80
    %if ($ - %%insn_078ab) > 1
        %error "LONG_078AB"
    %endif
    times 1 - ($ - %%insn_078ab) db 0
    %if ($ - %%fragment_start) != 62
        %error "SIZE_0786E"
    %endif
%endmacro

%macro emit_func_0786e_part_01 0
    %%fragment_start:
    %%insn_078ad:
    add [0xfae8],cl ; 078AD 000EE8FA
    %if ($ - %%insn_078ad) > 4
        %error "LONG_078AD"
    %endif
    times 4 - ($ - %%insn_078ad) db 0
    %%insn_078b1:
    call word far [bx+0x5e] ; 078B1 FF5F5E
    %if ($ - %%insn_078b1) > 3
        %error "LONG_078B1"
    %endif
    times 3 - ($ - %%insn_078b1) db 0
    %%insn_078b4:
    pop ds ; 078B4 1F
    %if ($ - %%insn_078b4) > 1
        %error "LONG_078B4"
    %endif
    times 1 - ($ - %%insn_078b4) db 0
    %%insn_078b5:
    pop bp ; 078B5 5D
    %if ($ - %%insn_078b5) > 1
        %error "LONG_078B5"
    %endif
    times 1 - ($ - %%insn_078b5) db 0
    %%insn_078b6:
    retf ; 078B6 CB
    %if ($ - %%insn_078b6) > 1
        %error "LONG_078B6"
    %endif
    times 1 - ($ - %%insn_078b6) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_078AD"
    %endif
%endmacro
