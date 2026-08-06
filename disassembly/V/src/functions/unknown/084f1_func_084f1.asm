; Linear entry 084F1 (1000:84f1)
; Ghidra working symbol: FUN_1000_84f1
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_084f1_part_00 0
    %%fragment_start:
func_084f1:
    %%insn_084f1:
    push bp ; 084F1 55
    %if ($ - %%insn_084f1) > 1
        %error "LONG_084F1"
    %endif
    times 1 - ($ - %%insn_084f1) db 0
    db 0x8B, 0xEC ; 084F2 8BEC | mov bp,sp | encoding preserved
    %%insn_084f4:
    push ds ; 084F4 1E
    %if ($ - %%insn_084f4) > 1
        %error "LONG_084F4"
    %endif
    times 1 - ($ - %%insn_084f4) db 0
    %%insn_084f5:
    push si ; 084F5 56
    %if ($ - %%insn_084f5) > 1
        %error "LONG_084F5"
    %endif
    times 1 - ($ - %%insn_084f5) db 0
    %%insn_084f6:
    push di ; 084F6 57
    %if ($ - %%insn_084f6) > 1
        %error "LONG_084F6"
    %endif
    times 1 - ($ - %%insn_084f6) db 0
    %%insn_084f7:
    push cs ; 084F7 0E
    %if ($ - %%insn_084f7) > 1
        %error "LONG_084F7"
    %endif
    times 1 - ($ - %%insn_084f7) db 0
    %%insn_084f8:
    call 0x88d9 ; 084F8 E8DE03
    %if ($ - %%insn_084f8) > 3
        %error "LONG_084F8"
    %endif
    times 3 - ($ - %%insn_084f8) db 0
    %%insn_084fb:
    les di,word [cs:0xe2a] ; 084FB 2EC43E2A0E
    %if ($ - %%insn_084fb) > 5
        %error "LONG_084FB"
    %endif
    times 5 - ($ - %%insn_084fb) db 0
    %%insn_08500:
    mov word [cs:0xe22],es ; 08500 2E8C06220E
    %if ($ - %%insn_08500) > 5
        %error "LONG_08500"
    %endif
    times 5 - ($ - %%insn_08500) db 0
    %%insn_08505:
    add di,0x103 ; 08505 81C70301
    %if ($ - %%insn_08505) > 4
        %error "LONG_08505"
    %endif
    times 4 - ($ - %%insn_08505) db 0
    %%insn_08509:
    mov [cs:0xe20],di ; 08509 2E893E200E
    %if ($ - %%insn_08509) > 5
        %error "LONG_08509"
    %endif
    times 5 - ($ - %%insn_08509) db 0
    %%insn_0850e:
    call word far [cs:0xe20] ; 0850E 2EFF1E200E
    %if ($ - %%insn_0850e) > 5
        %error "LONG_0850E"
    %endif
    times 5 - ($ - %%insn_0850e) db 0
    %%insn_08513:
    push word [cs:0xe7c] ; 08513 2EFF367C0E
    %if ($ - %%insn_08513) > 5
        %error "LONG_08513"
    %endif
    times 5 - ($ - %%insn_08513) db 0
    %%insn_08518:
    push cs ; 08518 0E
    %if ($ - %%insn_08518) > 1
        %error "LONG_08518"
    %endif
    times 1 - ($ - %%insn_08518) db 0
    %%insn_08519:
    call 0x786e ; 08519 E852F3
    %if ($ - %%insn_08519) > 3
        %error "LONG_08519"
    %endif
    times 3 - ($ - %%insn_08519) db 0
    %%insn_0851c:
    add sp,0x2 ; 0851C 83C402
    %if ($ - %%insn_0851c) > 3
        %error "LONG_0851C"
    %endif
    times 3 - ($ - %%insn_0851c) db 0
    %%insn_0851f:
    pop di ; 0851F 5F
    %if ($ - %%insn_0851f) > 1
        %error "LONG_0851F"
    %endif
    times 1 - ($ - %%insn_0851f) db 0
    %%insn_08520:
    pop si ; 08520 5E
    %if ($ - %%insn_08520) > 1
        %error "LONG_08520"
    %endif
    times 1 - ($ - %%insn_08520) db 0
    %%insn_08521:
    pop ds ; 08521 1F
    %if ($ - %%insn_08521) > 1
        %error "LONG_08521"
    %endif
    times 1 - ($ - %%insn_08521) db 0
    %%insn_08522:
    pop bp ; 08522 5D
    %if ($ - %%insn_08522) > 1
        %error "LONG_08522"
    %endif
    times 1 - ($ - %%insn_08522) db 0
    %%insn_08523:
    retf ; 08523 CB
    %if ($ - %%insn_08523) > 1
        %error "LONG_08523"
    %endif
    times 1 - ($ - %%insn_08523) db 0
    %if ($ - %%fragment_start) != 51
        %error "SIZE_084F1"
    %endif
%endmacro
