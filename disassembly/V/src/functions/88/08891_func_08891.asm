; Linear entry 08891 (1000:8891)
; Ghidra working symbol: FUN_1000_8891
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_08891_part_00 0
    %%fragment_start:
func_08891:
    %%insn_08891:
    push bp ; 08891 55
    %if ($ - %%insn_08891) > 1
        %error "LONG_08891"
    %endif
    times 1 - ($ - %%insn_08891) db 0
    db 0x8B, 0xEC ; 08892 8BEC | mov bp,sp | encoding preserved
    %%insn_08894:
    push ds ; 08894 1E
    %if ($ - %%insn_08894) > 1
        %error "LONG_08894"
    %endif
    times 1 - ($ - %%insn_08894) db 0
    %%insn_08895:
    push si ; 08895 56
    %if ($ - %%insn_08895) > 1
        %error "LONG_08895"
    %endif
    times 1 - ($ - %%insn_08895) db 0
    %%insn_08896:
    push di ; 08896 57
    %if ($ - %%insn_08896) > 1
        %error "LONG_08896"
    %endif
    times 1 - ($ - %%insn_08896) db 0
    %%insn_08897:
    cmp word [cs:0xe60],0x0 ; 08897 2E833E600E00
    %if ($ - %%insn_08897) > 6
        %error "LONG_08897"
    %endif
    times 6 - ($ - %%insn_08897) db 0
    %%insn_0889d:
    jz short 0x88c1 ; 0889D 7422
    %if ($ - %%insn_0889d) > 2
        %error "LONG_0889D"
    %endif
    times 2 - ($ - %%insn_0889d) db 0
    %%insn_0889f:
    cmp word [cs:0xe62],0x2 ; 0889F 2E833E620E02
    %if ($ - %%insn_0889f) > 6
        %error "LONG_0889F"
    %endif
    times 6 - ($ - %%insn_0889f) db 0
    %%insn_088a5:
    jz short 0x88d4 ; 088A5 742D
    %if ($ - %%insn_088a5) > 2
        %error "LONG_088A5"
    %endif
    times 2 - ($ - %%insn_088a5) db 0
    %%insn_088a7:
    push cs ; 088A7 0E
    %if ($ - %%insn_088a7) > 1
        %error "LONG_088A7"
    %endif
    times 1 - ($ - %%insn_088a7) db 0
    %%insn_088a8:
    call 0x812b ; 088A8 E880F8
    %if ($ - %%insn_088a8) > 3
        %error "LONG_088A8"
    %endif
    times 3 - ($ - %%insn_088a8) db 0
    db 0x3D, 0xFF, 0xFF ; 088AB 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_088ae:
    jz short 0x88d4 ; 088AE 7424
    %if ($ - %%insn_088ae) > 2
        %error "LONG_088AE"
    %endif
    times 2 - ($ - %%insn_088ae) db 0
    %%insn_088b0:
    mov word [cs:0xe62],0x2 ; 088B0 2EC706620E0200
    %if ($ - %%insn_088b0) > 7
        %error "LONG_088B0"
    %endif
    times 7 - ($ - %%insn_088b0) db 0
    %%insn_088b7:
    push ax ; 088B7 50
    %if ($ - %%insn_088b7) > 1
        %error "LONG_088B7"
    %endif
    times 1 - ($ - %%insn_088b7) db 0
    %%insn_088b8:
    push cs ; 088B8 0E
    %if ($ - %%insn_088b8) > 1
        %error "LONG_088B8"
    %endif
    times 1 - ($ - %%insn_088b8) db 0
    %%insn_088b9:
    call 0x82a9 ; 088B9 E8EDF9
    %if ($ - %%insn_088b9) > 3
        %error "LONG_088B9"
    %endif
    times 3 - ($ - %%insn_088b9) db 0
    %%insn_088bc:
    add sp,0x2 ; 088BC 83C402
    %if ($ - %%insn_088bc) > 3
        %error "LONG_088BC"
    %endif
    times 3 - ($ - %%insn_088bc) db 0
    %%insn_088bf:
    jmp short 0x88d4 ; 088BF EB13
    %if ($ - %%insn_088bf) > 2
        %error "LONG_088BF"
    %endif
    times 2 - ($ - %%insn_088bf) db 0
    %%insn_088c1:
    cmp word [cs:0xe62],0x0 ; 088C1 2E833E620E00
    %if ($ - %%insn_088c1) > 6
        %error "LONG_088C1"
    %endif
    times 6 - ($ - %%insn_088c1) db 0
    %%insn_088c7:
    jnz short 0x88d4 ; 088C7 750B
    %if ($ - %%insn_088c7) > 2
        %error "LONG_088C7"
    %endif
    times 2 - ($ - %%insn_088c7) db 0
    %%insn_088c9:
    mov word [cs:0xe62],0x2 ; 088C9 2EC706620E0200
    %if ($ - %%insn_088c9) > 7
        %error "LONG_088C9"
    %endif
    times 7 - ($ - %%insn_088c9) db 0
    %%insn_088d0:
    push cs ; 088D0 0E
    %if ($ - %%insn_088d0) > 1
        %error "LONG_088D0"
    %endif
    times 1 - ($ - %%insn_088d0) db 0
    %%insn_088d1:
    call 0x8152 ; 088D1 E87EF8
    %if ($ - %%insn_088d1) > 3
        %error "LONG_088D1"
    %endif
    times 3 - ($ - %%insn_088d1) db 0
    %%insn_088d4:
    pop di ; 088D4 5F
    %if ($ - %%insn_088d4) > 1
        %error "LONG_088D4"
    %endif
    times 1 - ($ - %%insn_088d4) db 0
    %%insn_088d5:
    pop si ; 088D5 5E
    %if ($ - %%insn_088d5) > 1
        %error "LONG_088D5"
    %endif
    times 1 - ($ - %%insn_088d5) db 0
    %%insn_088d6:
    pop ds ; 088D6 1F
    %if ($ - %%insn_088d6) > 1
        %error "LONG_088D6"
    %endif
    times 1 - ($ - %%insn_088d6) db 0
    %%insn_088d7:
    pop bp ; 088D7 5D
    %if ($ - %%insn_088d7) > 1
        %error "LONG_088D7"
    %endif
    times 1 - ($ - %%insn_088d7) db 0
    %%insn_088d8:
    retf ; 088D8 CB
    %if ($ - %%insn_088d8) > 1
        %error "LONG_088D8"
    %endif
    times 1 - ($ - %%insn_088d8) db 0
    %if ($ - %%fragment_start) != 72
        %error "SIZE_08891"
    %endif
%endmacro
