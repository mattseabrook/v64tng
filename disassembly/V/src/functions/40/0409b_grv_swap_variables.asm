; Linear entry 0409B (1000:409b)
; Ghidra working symbol: FUN_1000_409b
; Verified GRV SWAP (1Dh) byte-variable handler.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_swap_variables_part_00 0
    %%fragment_start:
grv_swap_variables:
    %%insn_0409b:
    call 0x400a ; 0409B E86CFF
    %if ($ - %%insn_0409b) > 3
        %error "LONG_0409B"
    %endif
    times 3 - ($ - %%insn_0409b) db 0
    %%insn_0409e:
    mov bx,0xdba2 ; 0409E BBA2DB
    %if ($ - %%insn_0409e) > 3
        %error "LONG_0409E"
    %endif
    times 3 - ($ - %%insn_0409e) db 0
    db 0x03, 0xD8 ; 040A1 03D8 | add bx,ax | encoding preserved
    %%insn_040a3:
    lodsw ; 040A3 AD
    %if ($ - %%insn_040a3) > 1
        %error "LONG_040A3"
    %endif
    times 1 - ($ - %%insn_040a3) db 0
    %%insn_040a4:
    mov di,0xdba2 ; 040A4 BFA2DB
    %if ($ - %%insn_040a4) > 3
        %error "LONG_040A4"
    %endif
    times 3 - ($ - %%insn_040a4) db 0
    db 0x03, 0xF8 ; 040A7 03F8 | add di,ax | encoding preserved
    %%insn_040a9:
    mov al,[ss:bx] ; 040A9 368A07
    %if ($ - %%insn_040a9) > 3
        %error "LONG_040A9"
    %endif
    times 3 - ($ - %%insn_040a9) db 0
    %%insn_040ac:
    xchg al,[bp+di] ; 040AC 8603
    %if ($ - %%insn_040ac) > 2
        %error "LONG_040AC"
    %endif
    times 2 - ($ - %%insn_040ac) db 0
    %%insn_040ae:
    mov [ss:bx],al ; 040AE 368807
    %if ($ - %%insn_040ae) > 3
        %error "LONG_040AE"
    %endif
    times 3 - ($ - %%insn_040ae) db 0
    %%insn_040b1:
    ret ; 040B1 C3
    %if ($ - %%insn_040b1) > 1
        %error "LONG_040B1"
    %endif
    times 1 - ($ - %%insn_040b1) db 0
    %if ($ - %%fragment_start) != 23
        %error "SIZE_0409B"
    %endif
%endmacro
