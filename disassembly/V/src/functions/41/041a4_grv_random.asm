; Linear entry 041A4 (1000:41a4)
; Ghidra working symbol: FUN_1000_41a4
; Verified GRV RANDOM (14h) bounded random-byte handler.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_random_part_00 0
    %%fragment_start:
grv_random:
    %%insn_041a4:
    push ax ; 041A4 50
    %if ($ - %%insn_041a4) > 1
        %error "LONG_041A4"
    %endif
    times 1 - ($ - %%insn_041a4) db 0
    %%insn_041a5:
    mov ax,[cs:0x5cde] ; 041A5 2EA1DE5C
    %if ($ - %%insn_041a5) > 4
        %error "LONG_041A5"
    %endif
    times 4 - ($ - %%insn_041a5) db 0
    %%insn_041a9:
    adc [bp-0x2600],al ; 041A9 108600DA
    %if ($ - %%insn_041a9) > 4
        %error "LONG_041A9"
    %endif
    times 4 - ($ - %%insn_041a9) db 0
    %%insn_041ad:
    adc [bp-0x25ff],ah ; 041AD 10A601DA
    %if ($ - %%insn_041ad) > 4
        %error "LONG_041AD"
    %endif
    times 4 - ($ - %%insn_041ad) db 0
    %%insn_041b1:
    pop ax ; 041B1 58
    %if ($ - %%insn_041b1) > 1
        %error "LONG_041B1"
    %endif
    times 1 - ($ - %%insn_041b1) db 0
    %%insn_041b2:
    call 0x400a ; 041B2 E855FE
    %if ($ - %%insn_041b2) > 3
        %error "LONG_041B2"
    %endif
    times 3 - ($ - %%insn_041b2) db 0
    %%insn_041b5:
    mov bx,0xdba2 ; 041B5 BBA2DB
    %if ($ - %%insn_041b5) > 3
        %error "LONG_041B5"
    %endif
    times 3 - ($ - %%insn_041b5) db 0
    db 0x03, 0xD8 ; 041B8 03D8 | add bx,ax | encoding preserved
    %%insn_041ba:
    lodsb ; 041BA AC
    %if ($ - %%insn_041ba) > 1
        %error "LONG_041BA"
    %endif
    times 1 - ($ - %%insn_041ba) db 0
    %%insn_041bb:
    call 0x42f1 ; 041BB E83301
    %if ($ - %%insn_041bb) > 3
        %error "LONG_041BB"
    %endif
    times 3 - ($ - %%insn_041bb) db 0
    %%insn_041be:
    and ah,0xf ; 041BE 80E40F
    %if ($ - %%insn_041be) > 3
        %error "LONG_041BE"
    %endif
    times 3 - ($ - %%insn_041be) db 0
    db 0x3A, 0xE0 ; 041C1 3AE0 | cmp ah,al | encoding preserved
    %%insn_041c3:
    jna short 0x41c7 ; 041C3 7602
    %if ($ - %%insn_041c3) > 2
        %error "LONG_041C3"
    %endif
    times 2 - ($ - %%insn_041c3) db 0
    %%insn_041c5:
    jmp short 0x41bb ; 041C5 EBF4
    %if ($ - %%insn_041c5) > 2
        %error "LONG_041C5"
    %endif
    times 2 - ($ - %%insn_041c5) db 0
    %%insn_041c7:
    mov [ss:bx],ah ; 041C7 368827
    %if ($ - %%insn_041c7) > 3
        %error "LONG_041C7"
    %endif
    times 3 - ($ - %%insn_041c7) db 0
    %%insn_041ca:
    ret ; 041CA C3
    %if ($ - %%insn_041ca) > 1
        %error "LONG_041CA"
    %endif
    times 1 - ($ - %%insn_041ca) db 0
    %if ($ - %%fragment_start) != 39
        %error "SIZE_041A4"
    %endif
%endmacro
