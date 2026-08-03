; Linear entry 088D9 (1702:18b9)
; Ghidra working symbol: FUN_1702_18b9
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_088d9_part_00 0
    %%fragment_start:
func_088d9:
    %%insn_088d9:
    push bp ; 088D9 55
    %if ($ - %%insn_088d9) > 1
        %error "LONG_088D9"
    %endif
    times 1 - ($ - %%insn_088d9) db 0
    db 0x8B, 0xEC ; 088DA 8BEC | mov bp,sp | encoding preserved
    %%insn_088dc:
    push ds ; 088DC 1E
    %if ($ - %%insn_088dc) > 1
        %error "LONG_088DC"
    %endif
    times 1 - ($ - %%insn_088dc) db 0
    %%insn_088dd:
    push si ; 088DD 56
    %if ($ - %%insn_088dd) > 1
        %error "LONG_088DD"
    %endif
    times 1 - ($ - %%insn_088dd) db 0
    %%insn_088de:
    push di ; 088DE 57
    %if ($ - %%insn_088de) > 1
        %error "LONG_088DE"
    %endif
    times 1 - ($ - %%insn_088de) db 0
    %%insn_088df:
    mov word [cs:0xe62],0x0 ; 088DF 2EC706620E0000
    %if ($ - %%insn_088df) > 7
        %error "LONG_088DF"
    %endif
    times 7 - ($ - %%insn_088df) db 0
    %%insn_088e6:
    push ax ; 088E6 50
    %if ($ - %%insn_088e6) > 1
        %error "LONG_088E6"
    %endif
    times 1 - ($ - %%insn_088e6) db 0
    %%insn_088e7:
    push bp ; 088E7 55
    %if ($ - %%insn_088e7) > 1
        %error "LONG_088E7"
    %endif
    times 1 - ($ - %%insn_088e7) db 0
    db 0x8B, 0xEC ; 088E8 8BEC | mov bp,sp | encoding preserved
    %%insn_088ea:
    mov word [bp+0x2],0x0 ; 088EA C746020000
    %if ($ - %%insn_088ea) > 5
        %error "LONG_088EA"
    %endif
    times 5 - ($ - %%insn_088ea) db 0
    %%insn_088ef:
    pop bp ; 088EF 5D
    %if ($ - %%insn_088ef) > 1
        %error "LONG_088EF"
    %endif
    times 1 - ($ - %%insn_088ef) db 0
    %%insn_088f0:
    push ax ; 088F0 50
    %if ($ - %%insn_088f0) > 1
        %error "LONG_088F0"
    %endif
    times 1 - ($ - %%insn_088f0) db 0
    %%insn_088f1:
    push bp ; 088F1 55
    %if ($ - %%insn_088f1) > 1
        %error "LONG_088F1"
    %endif
    times 1 - ($ - %%insn_088f1) db 0
    db 0x8B, 0xEC ; 088F2 8BEC | mov bp,sp | encoding preserved
    %%insn_088f4:
    mov word [bp+0x2],0x0 ; 088F4 C746020000
    %if ($ - %%insn_088f4) > 5
        %error "LONG_088F4"
    %endif
    times 5 - ($ - %%insn_088f4) db 0
    %%insn_088f9:
    pop bp ; 088F9 5D
    %if ($ - %%insn_088f9) > 1
        %error "LONG_088F9"
    %endif
    times 1 - ($ - %%insn_088f9) db 0
    %%insn_088fa:
    push cs ; 088FA 0E
    %if ($ - %%insn_088fa) > 1
        %error "LONG_088FA"
    %endif
    times 1 - ($ - %%insn_088fa) db 0
    %%insn_088fb:
    call 0x8069 ; 088FB E86BF7
    %if ($ - %%insn_088fb) > 3
        %error "LONG_088FB"
    %endif
    times 3 - ($ - %%insn_088fb) db 0
    %%insn_088fe:
    add sp,0x4 ; 088FE 83C404
    %if ($ - %%insn_088fe) > 3
        %error "LONG_088FE"
    %endif
    times 3 - ($ - %%insn_088fe) db 0
    %%insn_08901:
    mov ax,0x68f ; 08901 B88F06
    %if ($ - %%insn_08901) > 3
        %error "LONG_08901"
    %endif
    times 3 - ($ - %%insn_08901) db 0
    %%insn_08904:
    int byte 0x66 ; 08904 CD66
    %if ($ - %%insn_08904) > 2
        %error "LONG_08904"
    %endif
    times 2 - ($ - %%insn_08904) db 0
    %%insn_08906:
    mov word [cs:0xe5c],0x3 ; 08906 2EC7065C0E0300
    %if ($ - %%insn_08906) > 7
        %error "LONG_08906"
    %endif
    times 7 - ($ - %%insn_08906) db 0
    %%insn_0890d:
    mov word [cs:0xe5e],0x3 ; 0890D 2EC7065E0E0300
    %if ($ - %%insn_0890d) > 7
        %error "LONG_0890D"
    %endif
    times 7 - ($ - %%insn_0890d) db 0
    %%insn_08914:
    push cs ; 08914 0E
    %if ($ - %%insn_08914) > 1
        %error "LONG_08914"
    %endif
    times 1 - ($ - %%insn_08914) db 0
    %%insn_08915:
    call 0x7ed7 ; 08915 E8BFF5
    %if ($ - %%insn_08915) > 3
        %error "LONG_08915"
    %endif
    times 3 - ($ - %%insn_08915) db 0
    %%insn_08918:
    pop di ; 08918 5F
    %if ($ - %%insn_08918) > 1
        %error "LONG_08918"
    %endif
    times 1 - ($ - %%insn_08918) db 0
    %%insn_08919:
    pop si ; 08919 5E
    %if ($ - %%insn_08919) > 1
        %error "LONG_08919"
    %endif
    times 1 - ($ - %%insn_08919) db 0
    %%insn_0891a:
    pop ds ; 0891A 1F
    %if ($ - %%insn_0891a) > 1
        %error "LONG_0891A"
    %endif
    times 1 - ($ - %%insn_0891a) db 0
    %%insn_0891b:
    pop bp ; 0891B 5D
    %if ($ - %%insn_0891b) > 1
        %error "LONG_0891B"
    %endif
    times 1 - ($ - %%insn_0891b) db 0
    %%insn_0891c:
    retf ; 0891C CB
    %if ($ - %%insn_0891c) > 1
        %error "LONG_0891C"
    %endif
    times 1 - ($ - %%insn_0891c) db 0
    %if ($ - %%fragment_start) != 68
        %error "SIZE_088D9"
    %endif
%endmacro
