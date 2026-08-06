; Linear entry 042B1 (1000:42b1)
; Ghidra working symbol: FUN_1000_42b1
; Verified GRV STRCMP_NE_JMP_INDIRECT (21h) handler.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_compare_indirect_and_jump_part_00 0
    %%fragment_start:
grv_compare_indirect_and_jump:
    %%insn_042b1:
    call 0x400a ; 042B1 E856FD
    %if ($ - %%insn_042b1) > 3
        %error "LONG_042B1"
    %endif
    times 3 - ($ - %%insn_042b1) db 0
    %%insn_042b4:
    mov bx,0xdba2 ; 042B4 BBA2DB
    %if ($ - %%insn_042b4) > 3
        %error "LONG_042B4"
    %endif
    times 3 - ($ - %%insn_042b4) db 0
    db 0x03, 0xD8 ; 042B7 03D8 | add bx,ax | encoding preserved
    %%insn_042b9:
    mov al,[bx] ; 042B9 8A07
    %if ($ - %%insn_042b9) > 2
        %error "LONG_042B9"
    %endif
    times 2 - ($ - %%insn_042b9) db 0
    %%insn_042bb:
    cmp al,0x9 ; 042BB 3C09
    %if ($ - %%insn_042bb) > 2
        %error "LONG_042BB"
    %endif
    times 2 - ($ - %%insn_042bb) db 0
    %%insn_042bd:
    jna short 0x42c1 ; 042BD 7602
    %if ($ - %%insn_042bd) > 2
        %error "LONG_042BD"
    %endif
    times 2 - ($ - %%insn_042bd) db 0
    %%insn_042bf:
    sub al,0x7 ; 042BF 2C07
    %if ($ - %%insn_042bf) > 2
        %error "LONG_042BF"
    %endif
    times 2 - ($ - %%insn_042bf) db 0
    %%insn_042c1:
    mov bx,0xdbbb ; 042C1 BBBBDB
    %if ($ - %%insn_042c1) > 3
        %error "LONG_042C1"
    %endif
    times 3 - ($ - %%insn_042c1) db 0
    db 0x03, 0xD8 ; 042C4 03D8 | add bx,ax | encoding preserved
    db 0x33, 0xD2 ; 042C6 33D2 | xor dx,dx | encoding preserved
    %%insn_042c8:
    jmp 0x4202 ; 042C8 E937FF
    %if ($ - %%insn_042c8) > 3
        %error "LONG_042C8"
    %endif
    times 3 - ($ - %%insn_042c8) db 0
    %if ($ - %%fragment_start) != 26
        %error "SIZE_042B1"
    %endif
%endmacro
