; Linear entry 07590 (1702:0570)
; Ghidra working symbol: FUN_1702_0570
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07590_part_00 0
    %%fragment_start:
func_07590:
    %%insn_07590:
    push ds ; 07590 1E
    %if ($ - %%insn_07590) > 1
        %error "LONG_07590"
    %endif
    times 1 - ($ - %%insn_07590) db 0
    %%insn_07591:
    push si ; 07591 56
    %if ($ - %%insn_07591) > 1
        %error "LONG_07591"
    %endif
    times 1 - ($ - %%insn_07591) db 0
    %%insn_07592:
    push di ; 07592 57
    %if ($ - %%insn_07592) > 1
        %error "LONG_07592"
    %endif
    times 1 - ($ - %%insn_07592) db 0
    %%insn_07593:
    pushf ; 07593 9C
    %if ($ - %%insn_07593) > 1
        %error "LONG_07593"
    %endif
    times 1 - ($ - %%insn_07593) db 0
    %%insn_07594:
    cli ; 07594 FA
    %if ($ - %%insn_07594) > 1
        %error "LONG_07594"
    %endif
    times 1 - ($ - %%insn_07594) db 0
    %%insn_07595:
    mov word [cs:0x122],0xffff ; 07595 2EC7062201FFFF
    %if ($ - %%insn_07595) > 7
        %error "LONG_07595"
    %endif
    times 7 - ($ - %%insn_07595) db 0
    %%insn_0759c:
    mov dx,[cs:0x11e] ; 0759C 2E8B161E01
    %if ($ - %%insn_0759c) > 5
        %error "LONG_0759C"
    %endif
    times 5 - ($ - %%insn_0759c) db 0
    %%insn_075a1:
    mov ds,word [cs:0x120] ; 075A1 2E8E1E2001
    %if ($ - %%insn_075a1) > 5
        %error "LONG_075A1"
    %endif
    times 5 - ($ - %%insn_075a1) db 0
    %%insn_075a6:
    mov ax,0x0 ; 075A6 B80000
    %if ($ - %%insn_075a6) > 3
        %error "LONG_075A6"
    %endif
    times 3 - ($ - %%insn_075a6) db 0
    %%insn_075a9:
    mov es,ax ; 075A9 8EC0
    %if ($ - %%insn_075a9) > 2
        %error "LONG_075A9"
    %endif
    times 2 - ($ - %%insn_075a9) db 0
    %%insn_075ab:
    mov [es:0x20],dx ; 075AB 2689162000
    %if ($ - %%insn_075ab) > 5
        %error "LONG_075AB"
    %endif
    times 5 - ($ - %%insn_075ab) db 0
    %%insn_075b0:
    mov word [es:0x22],ds ; 075B0 268C1E2200
    %if ($ - %%insn_075b0) > 5
        %error "LONG_075B0"
    %endif
    times 5 - ($ - %%insn_075b0) db 0
    %%insn_075b5:
    db 0x80 ; 075B5 80
    %if ($ - %%insn_075b5) > 1
        %error "LONG_075B5"
    %endif
    times 1 - ($ - %%insn_075b5) db 0
    %if ($ - %%fragment_start) != 38
        %error "SIZE_07590"
    %endif
%endmacro

%macro emit_func_07590_part_01 0
    %%fragment_start:
    %%insn_075b7:
    add [0xfae8],cl ; 075B7 000EE8FA
    %if ($ - %%insn_075b7) > 4
        %error "LONG_075B7"
    %endif
    times 4 - ($ - %%insn_075b7) db 0
    %%insn_075bb:
    call word far [bx+0x5e] ; 075BB FF5F5E
    %if ($ - %%insn_075bb) > 3
        %error "LONG_075BB"
    %endif
    times 3 - ($ - %%insn_075bb) db 0
    %%insn_075be:
    pop ds ; 075BE 1F
    %if ($ - %%insn_075be) > 1
        %error "LONG_075BE"
    %endif
    times 1 - ($ - %%insn_075be) db 0
    %%insn_075bf:
    retf ; 075BF CB
    %if ($ - %%insn_075bf) > 1
        %error "LONG_075BF"
    %endif
    times 1 - ($ - %%insn_075bf) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_075B7"
    %endif
%endmacro
