; Linear entry 04292 (1000:4292)
; Ghidra working symbol: FUN_1000_4292
; Verified GRV LOADSTRING_INDIRECT (33h): dereferences pointerVar, subtracts 31h, then writes the decoded sequence.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_load_string_indirect_part_00 0
    %%fragment_start:
grv_load_string_indirect:
    %%insn_04292:
    call 0x400a ; 04292 E875FD
    %if ($ - %%insn_04292) > 3
        %error "LONG_04292"
    %endif
    times 3 - ($ - %%insn_04292) db 0
    %%insn_04295:
    mov bx,0xdba2 ; 04295 BBA2DB
    %if ($ - %%insn_04295) > 3
        %error "LONG_04295"
    %endif
    times 3 - ($ - %%insn_04295) db 0
    db 0x03, 0xD8 ; 04298 03D8 | add bx,ax | encoding preserved
    %%insn_0429a:
    mov al,[ss:bx] ; 0429A 368A07
    %if ($ - %%insn_0429a) > 3
        %error "LONG_0429A"
    %endif
    times 3 - ($ - %%insn_0429a) db 0
    %%insn_0429d:
    sub al,0x31 ; 0429D 2C31
    %if ($ - %%insn_0429d) > 2
        %error "LONG_0429D"
    %endif
    times 2 - ($ - %%insn_0429d) db 0
    %%insn_0429f:
    mov bx,0xdba2 ; 0429F BBA2DB
    %if ($ - %%insn_0429f) > 3
        %error "LONG_0429F"
    %endif
    times 3 - ($ - %%insn_0429f) db 0
    db 0x03, 0xD8 ; 042A2 03D8 | add bx,ax | encoding preserved
    %%insn_042a4:
    call 0x4016 ; 042A4 E86FFD
    %if ($ - %%insn_042a4) > 3
        %error "LONG_042A4"
    %endif
    times 3 - ($ - %%insn_042a4) db 0
    %%insn_042a7:
    mov [ss:bx],al ; 042A7 368807
    %if ($ - %%insn_042a7) > 3
        %error "LONG_042A7"
    %endif
    times 3 - ($ - %%insn_042a7) db 0
    %%insn_042aa:
    inc bx ; 042AA 43
    %if ($ - %%insn_042aa) > 1
        %error "LONG_042AA"
    %endif
    times 1 - ($ - %%insn_042aa) db 0
    %%insn_042ab:
    cmp dh,0x80 ; 042AB 80FE80
    %if ($ - %%insn_042ab) > 3
        %error "LONG_042AB"
    %endif
    times 3 - ($ - %%insn_042ab) db 0
    %%insn_042ae:
    jc short 0x42a4 ; 042AE 72F4
    %if ($ - %%insn_042ae) > 2
        %error "LONG_042AE"
    %endif
    times 2 - ($ - %%insn_042ae) db 0
    %%insn_042b0:
    ret ; 042B0 C3
    %if ($ - %%insn_042b0) > 1
        %error "LONG_042B0"
    %endif
    times 1 - ($ - %%insn_042b0) db 0
    %if ($ - %%fragment_start) != 31
        %error "SIZE_04292"
    %endif
%endmacro
