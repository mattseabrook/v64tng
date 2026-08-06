; Linear entry 0426A (1000:426a)
; Ghidra working symbol: FUN_1000_426a
; Verified GRV JNE_INDIRECT (32h) variable-indirection branch handler.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_jump_if_indirect_not_equal_part_00 0
    %%fragment_start:
grv_jump_if_indirect_not_equal:
    %%insn_0426a:
    call 0x400a ; 0426A E89DFD
    %if ($ - %%insn_0426a) > 3
        %error "LONG_0426A"
    %endif
    times 3 - ($ - %%insn_0426a) db 0
    %%insn_0426d:
    mov bx,0xdba2 ; 0426D BBA2DB
    %if ($ - %%insn_0426d) > 3
        %error "LONG_0426D"
    %endif
    times 3 - ($ - %%insn_0426d) db 0
    db 0x03, 0xD8 ; 04270 03D8 | add bx,ax | encoding preserved
    %%insn_04272:
    mov al,[ss:bx] ; 04272 368A07
    %if ($ - %%insn_04272) > 3
        %error "LONG_04272"
    %endif
    times 3 - ($ - %%insn_04272) db 0
    %%insn_04275:
    sub al,0x31 ; 04275 2C31
    %if ($ - %%insn_04275) > 2
        %error "LONG_04275"
    %endif
    times 2 - ($ - %%insn_04275) db 0
    %%insn_04277:
    mov bx,0xdba2 ; 04277 BBA2DB
    %if ($ - %%insn_04277) > 3
        %error "LONG_04277"
    %endif
    times 3 - ($ - %%insn_04277) db 0
    db 0x03, 0xD8 ; 0427A 03D8 | add bx,ax | encoding preserved
    %%insn_0427c:
    lodsw ; 0427C AD
    %if ($ - %%insn_0427c) > 1
        %error "LONG_0427C"
    %endif
    times 1 - ($ - %%insn_0427c) db 0
    %%insn_0427d:
    mov di,0xdba2 ; 0427D BFA2DB
    %if ($ - %%insn_0427d) > 3
        %error "LONG_0427D"
    %endif
    times 3 - ($ - %%insn_0427d) db 0
    db 0x03, 0xF8 ; 04280 03F8 | add di,ax | encoding preserved
    %%insn_04282:
    mov al,[ss:bx] ; 04282 368A07
    %if ($ - %%insn_04282) > 3
        %error "LONG_04282"
    %endif
    times 3 - ($ - %%insn_04282) db 0
    %%insn_04285:
    cmp al,[ss:di] ; 04285 363A05
    %if ($ - %%insn_04285) > 3
        %error "LONG_04285"
    %endif
    times 3 - ($ - %%insn_04285) db 0
    %%insn_04288:
    jnz short 0x428f ; 04288 7505
    %if ($ - %%insn_04288) > 2
        %error "LONG_04288"
    %endif
    times 2 - ($ - %%insn_04288) db 0
    %%insn_0428a:
    add si,0x2 ; 0428A 83C602
    %if ($ - %%insn_0428a) > 3
        %error "LONG_0428A"
    %endif
    times 3 - ($ - %%insn_0428a) db 0
    %%insn_0428d:
    jmp short 0x4291 ; 0428D EB02
    %if ($ - %%insn_0428d) > 2
        %error "LONG_0428D"
    %endif
    times 2 - ($ - %%insn_0428d) db 0
    %%insn_0428f:
    mov si,[si] ; 0428F 8B34
    %if ($ - %%insn_0428f) > 2
        %error "LONG_0428F"
    %endif
    times 2 - ($ - %%insn_0428f) db 0
    %%insn_04291:
    ret ; 04291 C3
    %if ($ - %%insn_04291) > 1
        %error "LONG_04291"
    %endif
    times 1 - ($ - %%insn_04291) db 0
    %if ($ - %%fragment_start) != 40
        %error "SIZE_0426A"
    %endif
%endmacro
