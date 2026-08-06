; Linear entry 075E9 (1702:05c9)
; Ghidra working symbol: FUN_1702_05c9
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_075e9_part_00 0
    %%fragment_start:
func_075e9:
    %%insn_075e9:
    push bp ; 075E9 55
    %if ($ - %%insn_075e9) > 1
        %error "LONG_075E9"
    %endif
    times 1 - ($ - %%insn_075e9) db 0
    db 0x8B, 0xEC ; 075EA 8BEC | mov bp,sp | encoding preserved
    %%insn_075ec:
    push ds ; 075EC 1E
    %if ($ - %%insn_075ec) > 1
        %error "LONG_075EC"
    %endif
    times 1 - ($ - %%insn_075ec) db 0
    %%insn_075ed:
    push si ; 075ED 56
    %if ($ - %%insn_075ed) > 1
        %error "LONG_075ED"
    %endif
    times 1 - ($ - %%insn_075ed) db 0
    %%insn_075ee:
    push di ; 075EE 57
    %if ($ - %%insn_075ee) > 1
        %error "LONG_075EE"
    %endif
    times 1 - ($ - %%insn_075ee) db 0
    %%insn_075ef:
    mov ax,0x0 ; 075EF B80000
    %if ($ - %%insn_075ef) > 3
        %error "LONG_075EF"
    %endif
    times 3 - ($ - %%insn_075ef) db 0
    %%insn_075f2:
    cmp word [bp+0x6],0xd68d ; 075F2 817E068DD6
    %if ($ - %%insn_075f2) > 5
        %error "LONG_075F2"
    %endif
    times 5 - ($ - %%insn_075f2) db 0
    %%insn_075f7:
    jnc short 0x7606 ; 075F7 730D
    %if ($ - %%insn_075f7) > 2
        %error "LONG_075F7"
    %endif
    times 2 - ($ - %%insn_075f7) db 0
    %%insn_075f9:
    mov ax,[bp+0x6] ; 075F9 8B4606
    %if ($ - %%insn_075f9) > 3
        %error "LONG_075F9"
    %endif
    times 3 - ($ - %%insn_075f9) db 0
    %%insn_075fc:
    mov bx,0x20bc ; 075FC BBBC20
    %if ($ - %%insn_075fc) > 3
        %error "LONG_075FC"
    %endif
    times 3 - ($ - %%insn_075fc) db 0
    %%insn_075ff:
    mov cx,0x2710 ; 075FF B91027
    %if ($ - %%insn_075ff) > 3
        %error "LONG_075FF"
    %endif
    times 3 - ($ - %%insn_075ff) db 0
    %%insn_07602:
    mul cx ; 07602 F7E1
    %if ($ - %%insn_07602) > 2
        %error "LONG_07602"
    %endif
    times 2 - ($ - %%insn_07602) db 0
    %%insn_07604:
    div bx ; 07604 F7F3
    %if ($ - %%insn_07604) > 2
        %error "LONG_07604"
    %endif
    times 2 - ($ - %%insn_07604) db 0
    %%insn_07606:
    push ax ; 07606 50
    %if ($ - %%insn_07606) > 1
        %error "LONG_07606"
    %endif
    times 1 - ($ - %%insn_07606) db 0
    %%insn_07607:
    push cs ; 07607 0E
    %if ($ - %%insn_07607) > 1
        %error "LONG_07607"
    %endif
    times 1 - ($ - %%insn_07607) db 0
    %%insn_07608:
    call 0x75c0 ; 07608 E8B5FF
    %if ($ - %%insn_07608) > 3
        %error "LONG_07608"
    %endif
    times 3 - ($ - %%insn_07608) db 0
    %%insn_0760b:
    add sp,0x2 ; 0760B 83C402
    %if ($ - %%insn_0760b) > 3
        %error "LONG_0760B"
    %endif
    times 3 - ($ - %%insn_0760b) db 0
    %%insn_0760e:
    pop di ; 0760E 5F
    %if ($ - %%insn_0760e) > 1
        %error "LONG_0760E"
    %endif
    times 1 - ($ - %%insn_0760e) db 0
    %%insn_0760f:
    pop si ; 0760F 5E
    %if ($ - %%insn_0760f) > 1
        %error "LONG_0760F"
    %endif
    times 1 - ($ - %%insn_0760f) db 0
    %%insn_07610:
    pop ds ; 07610 1F
    %if ($ - %%insn_07610) > 1
        %error "LONG_07610"
    %endif
    times 1 - ($ - %%insn_07610) db 0
    %%insn_07611:
    pop bp ; 07611 5D
    %if ($ - %%insn_07611) > 1
        %error "LONG_07611"
    %endif
    times 1 - ($ - %%insn_07611) db 0
    %%insn_07612:
    retf ; 07612 CB
    %if ($ - %%insn_07612) > 1
        %error "LONG_07612"
    %endif
    times 1 - ($ - %%insn_07612) db 0
    %if ($ - %%fragment_start) != 42
        %error "SIZE_075E9"
    %endif
%endmacro
