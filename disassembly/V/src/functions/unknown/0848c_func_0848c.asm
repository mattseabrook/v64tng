; Linear entry 0848C (1000:848c)
; Ghidra working symbol: FUN_1000_848c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0848c_part_00 0
    %%fragment_start:
func_0848c:
    %%insn_0848c:
    push bp ; 0848C 55
    %if ($ - %%insn_0848c) > 1
        %error "LONG_0848C"
    %endif
    times 1 - ($ - %%insn_0848c) db 0
    db 0x8B, 0xEC ; 0848D 8BEC | mov bp,sp | encoding preserved
    %%insn_0848f:
    push ds ; 0848F 1E
    %if ($ - %%insn_0848f) > 1
        %error "LONG_0848F"
    %endif
    times 1 - ($ - %%insn_0848f) db 0
    %%insn_08490:
    push si ; 08490 56
    %if ($ - %%insn_08490) > 1
        %error "LONG_08490"
    %endif
    times 1 - ($ - %%insn_08490) db 0
    %%insn_08491:
    push di ; 08491 57
    %if ($ - %%insn_08491) > 1
        %error "LONG_08491"
    %endif
    times 1 - ($ - %%insn_08491) db 0
    %%insn_08492:
    push ax ; 08492 50
    %if ($ - %%insn_08492) > 1
        %error "LONG_08492"
    %endif
    times 1 - ($ - %%insn_08492) db 0
    %%insn_08493:
    push bp ; 08493 55
    %if ($ - %%insn_08493) > 1
        %error "LONG_08493"
    %endif
    times 1 - ($ - %%insn_08493) db 0
    db 0x8B, 0xEC ; 08494 8BEC | mov bp,sp | encoding preserved
    %%insn_08496:
    mov word [bp+0x2],0x0 ; 08496 C746020000
    %if ($ - %%insn_08496) > 5
        %error "LONG_08496"
    %endif
    times 5 - ($ - %%insn_08496) db 0
    %%insn_0849b:
    pop bp ; 0849B 5D
    %if ($ - %%insn_0849b) > 1
        %error "LONG_0849B"
    %endif
    times 1 - ($ - %%insn_0849b) db 0
    %%insn_0849c:
    push ax ; 0849C 50
    %if ($ - %%insn_0849c) > 1
        %error "LONG_0849C"
    %endif
    times 1 - ($ - %%insn_0849c) db 0
    %%insn_0849d:
    push bp ; 0849D 55
    %if ($ - %%insn_0849d) > 1
        %error "LONG_0849D"
    %endif
    times 1 - ($ - %%insn_0849d) db 0
    db 0x8B, 0xEC ; 0849E 8BEC | mov bp,sp | encoding preserved
    %%insn_084a0:
    mov word [bp+0x2],0x0 ; 084A0 C746020000
    %if ($ - %%insn_084a0) > 5
        %error "LONG_084A0"
    %endif
    times 5 - ($ - %%insn_084a0) db 0
    %%insn_084a5:
    pop bp ; 084A5 5D
    %if ($ - %%insn_084a5) > 1
        %error "LONG_084A5"
    %endif
    times 1 - ($ - %%insn_084a5) db 0
    %%insn_084a6:
    push cs ; 084A6 0E
    %if ($ - %%insn_084a6) > 1
        %error "LONG_084A6"
    %endif
    times 1 - ($ - %%insn_084a6) db 0
    %%insn_084a7:
    call 0x77a3 ; 084A7 E8F9F2
    %if ($ - %%insn_084a7) > 3
        %error "LONG_084A7"
    %endif
    times 3 - ($ - %%insn_084a7) db 0
    %%insn_084aa:
    add sp,0x4 ; 084AA 83C404
    %if ($ - %%insn_084aa) > 3
        %error "LONG_084AA"
    %endif
    times 3 - ($ - %%insn_084aa) db 0
    %%insn_084ad:
    mov [cs:0xe7c],ax ; 084AD 2EA37C0E
    %if ($ - %%insn_084ad) > 4
        %error "LONG_084AD"
    %endif
    times 4 - ($ - %%insn_084ad) db 0
    %%insn_084b1:
    mov word [cs:0xe7e],0x1 ; 084B1 2EC7067E0E0100
    %if ($ - %%insn_084b1) > 7
        %error "LONG_084B1"
    %endif
    times 7 - ($ - %%insn_084b1) db 0
    %%insn_084b8:
    push ax ; 084B8 50
    %if ($ - %%insn_084b8) > 1
        %error "LONG_084B8"
    %endif
    times 1 - ($ - %%insn_084b8) db 0
    %%insn_084b9:
    push bp ; 084B9 55
    %if ($ - %%insn_084b9) > 1
        %error "LONG_084B9"
    %endif
    times 1 - ($ - %%insn_084b9) db 0
    db 0x8B, 0xEC ; 084BA 8BEC | mov bp,sp | encoding preserved
    %%insn_084bc:
    mov word [bp+0x2],0x0 ; 084BC C746020000
    %if ($ - %%insn_084bc) > 5
        %error "LONG_084BC"
    %endif
    times 5 - ($ - %%insn_084bc) db 0
    %%insn_084c1:
    pop bp ; 084C1 5D
    %if ($ - %%insn_084c1) > 1
        %error "LONG_084C1"
    %endif
    times 1 - ($ - %%insn_084c1) db 0
    %%insn_084c2:
    push cs ; 084C2 0E
    %if ($ - %%insn_084c2) > 1
        %error "LONG_084C2"
    %endif
    times 1 - ($ - %%insn_084c2) db 0
    %%insn_084c3:
    call 0x83fe ; 084C3 E838FF
    %if ($ - %%insn_084c3) > 3
        %error "LONG_084C3"
    %endif
    times 3 - ($ - %%insn_084c3) db 0
    %%insn_084c6:
    add sp,0x2 ; 084C6 83C402
    %if ($ - %%insn_084c6) > 3
        %error "LONG_084C6"
    %endif
    times 3 - ($ - %%insn_084c6) db 0
    %%insn_084c9:
    mov word [cs:0xe6e],0x0 ; 084C9 2EC7066E0E0000
    %if ($ - %%insn_084c9) > 7
        %error "LONG_084C9"
    %endif
    times 7 - ($ - %%insn_084c9) db 0
    %%insn_084d0:
    mov word [cs:0xe62],0x0 ; 084D0 2EC706620E0000
    %if ($ - %%insn_084d0) > 7
        %error "LONG_084D0"
    %endif
    times 7 - ($ - %%insn_084d0) db 0
    %%insn_084d7:
    mov word [cs:0xe60],0x1 ; 084D7 2EC706600E0100
    %if ($ - %%insn_084d7) > 7
        %error "LONG_084D7"
    %endif
    times 7 - ($ - %%insn_084d7) db 0
    %%insn_084de:
    mov word [cs:0xe5c],0x3 ; 084DE 2EC7065C0E0300
    %if ($ - %%insn_084de) > 7
        %error "LONG_084DE"
    %endif
    times 7 - ($ - %%insn_084de) db 0
    %%insn_084e5:
    mov word [cs:0xe5e],0x3 ; 084E5 2EC7065E0E0300
    %if ($ - %%insn_084e5) > 7
        %error "LONG_084E5"
    %endif
    times 7 - ($ - %%insn_084e5) db 0
    %%insn_084ec:
    pop di ; 084EC 5F
    %if ($ - %%insn_084ec) > 1
        %error "LONG_084EC"
    %endif
    times 1 - ($ - %%insn_084ec) db 0
    %%insn_084ed:
    pop si ; 084ED 5E
    %if ($ - %%insn_084ed) > 1
        %error "LONG_084ED"
    %endif
    times 1 - ($ - %%insn_084ed) db 0
    %%insn_084ee:
    pop ds ; 084EE 1F
    %if ($ - %%insn_084ee) > 1
        %error "LONG_084EE"
    %endif
    times 1 - ($ - %%insn_084ee) db 0
    %%insn_084ef:
    pop bp ; 084EF 5D
    %if ($ - %%insn_084ef) > 1
        %error "LONG_084EF"
    %endif
    times 1 - ($ - %%insn_084ef) db 0
    %%insn_084f0:
    retf ; 084F0 CB
    %if ($ - %%insn_084f0) > 1
        %error "LONG_084F0"
    %endif
    times 1 - ($ - %%insn_084f0) db 0
    %if ($ - %%fragment_start) != 101
        %error "SIZE_0848C"
    %endif
%endmacro
