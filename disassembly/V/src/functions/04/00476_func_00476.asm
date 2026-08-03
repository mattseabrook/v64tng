; Linear entry 00476 (1000:0476)
; Ghidra working symbol: FUN_1000_0476
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_00476_part_00 0
    %%fragment_start:
func_00476:
    %%insn_00476:
    cmp byte [bp-0x2606],0x2 ; 00476 80BEFAD902
    %if ($ - %%insn_00476) > 5
        %error "LONG_00476"
    %endif
    times 5 - ($ - %%insn_00476) db 0
    %%insn_0047b:
    jnz short 0x47e ; 0047B 7501
    %if ($ - %%insn_0047b) > 2
        %error "LONG_0047B"
    %endif
    times 2 - ($ - %%insn_0047b) db 0
    %%insn_0047d:
    ret ; 0047D C3
    %if ($ - %%insn_0047d) > 1
        %error "LONG_0047D"
    %endif
    times 1 - ($ - %%insn_0047d) db 0
    %%insn_0047e:
    cmp word [bp-0x30dc],0x0 ; 0047E 83BE24CF00
    %if ($ - %%insn_0047e) > 5
        %error "LONG_0047E"
    %endif
    times 5 - ($ - %%insn_0047e) db 0
    %%insn_00483:
    jnz short 0x500 ; 00483 757B
    %if ($ - %%insn_00483) > 2
        %error "LONG_00483"
    %endif
    times 2 - ($ - %%insn_00483) db 0
    %%insn_00485:
    cmp byte [bp-0x265a],0x0 ; 00485 80BEA6D900
    %if ($ - %%insn_00485) > 5
        %error "LONG_00485"
    %endif
    times 5 - ($ - %%insn_00485) db 0
    %%insn_0048a:
    jnz short 0x4b8 ; 0048A 752C
    %if ($ - %%insn_0048a) > 2
        %error "LONG_0048A"
    %endif
    times 2 - ($ - %%insn_0048a) db 0
    %%insn_0048c:
    mov si,0x6 ; 0048C BE0600
    %if ($ - %%insn_0048c) > 3
        %error "LONG_0048C"
    %endif
    times 3 - ($ - %%insn_0048c) db 0
    %%insn_0048f:
    mov di,0xcf8c ; 0048F BF8CCF
    %if ($ - %%insn_0048f) > 3
        %error "LONG_0048F"
    %endif
    times 3 - ($ - %%insn_0048f) db 0
    %%insn_00492:
    mov cx,0x100 ; 00492 B90001
    %if ($ - %%insn_00492) > 3
        %error "LONG_00492"
    %endif
    times 3 - ($ - %%insn_00492) db 0
    %%insn_00495:
    mov al,[si] ; 00495 8A04
    %if ($ - %%insn_00495) > 2
        %error "LONG_00495"
    %endif
    times 2 - ($ - %%insn_00495) db 0
    %%insn_00497:
    inc si ; 00497 46
    %if ($ - %%insn_00497) > 1
        %error "LONG_00497"
    %endif
    times 1 - ($ - %%insn_00497) db 0
    %%insn_00498:
    shr al,byte 0x2 ; 00498 C0E802
    %if ($ - %%insn_00498) > 3
        %error "LONG_00498"
    %endif
    times 3 - ($ - %%insn_00498) db 0
    %%insn_0049b:
    mov [ss:di],al ; 0049B 368805
    %if ($ - %%insn_0049b) > 3
        %error "LONG_0049B"
    %endif
    times 3 - ($ - %%insn_0049b) db 0
    %%insn_0049e:
    inc di ; 0049E 47
    %if ($ - %%insn_0049e) > 1
        %error "LONG_0049E"
    %endif
    times 1 - ($ - %%insn_0049e) db 0
    %%insn_0049f:
    mov al,[si] ; 0049F 8A04
    %if ($ - %%insn_0049f) > 2
        %error "LONG_0049F"
    %endif
    times 2 - ($ - %%insn_0049f) db 0
    %%insn_004a1:
    inc si ; 004A1 46
    %if ($ - %%insn_004a1) > 1
        %error "LONG_004A1"
    %endif
    times 1 - ($ - %%insn_004a1) db 0
    %%insn_004a2:
    shr al,byte 0x2 ; 004A2 C0E802
    %if ($ - %%insn_004a2) > 3
        %error "LONG_004A2"
    %endif
    times 3 - ($ - %%insn_004a2) db 0
    %%insn_004a5:
    mov [ss:di],al ; 004A5 368805
    %if ($ - %%insn_004a5) > 3
        %error "LONG_004A5"
    %endif
    times 3 - ($ - %%insn_004a5) db 0
    %%insn_004a8:
    inc di ; 004A8 47
    %if ($ - %%insn_004a8) > 1
        %error "LONG_004A8"
    %endif
    times 1 - ($ - %%insn_004a8) db 0
    %%insn_004a9:
    mov al,[si] ; 004A9 8A04
    %if ($ - %%insn_004a9) > 2
        %error "LONG_004A9"
    %endif
    times 2 - ($ - %%insn_004a9) db 0
    %%insn_004ab:
    inc si ; 004AB 46
    %if ($ - %%insn_004ab) > 1
        %error "LONG_004AB"
    %endif
    times 1 - ($ - %%insn_004ab) db 0
    %%insn_004ac:
    shr al,byte 0x2 ; 004AC C0E802
    %if ($ - %%insn_004ac) > 3
        %error "LONG_004AC"
    %endif
    times 3 - ($ - %%insn_004ac) db 0
    %%insn_004af:
    mov [ss:di],al ; 004AF 368805
    %if ($ - %%insn_004af) > 3
        %error "LONG_004AF"
    %endif
    times 3 - ($ - %%insn_004af) db 0
    %%insn_004b2:
    inc di ; 004B2 47
    %if ($ - %%insn_004b2) > 1
        %error "LONG_004B2"
    %endif
    times 1 - ($ - %%insn_004b2) db 0
    %%insn_004b3:
    dec cx ; 004B3 49
    %if ($ - %%insn_004b3) > 1
        %error "LONG_004B3"
    %endif
    times 1 - ($ - %%insn_004b3) db 0
    %%insn_004b4:
    jnz short 0x495 ; 004B4 75DF
    %if ($ - %%insn_004b4) > 2
        %error "LONG_004B4"
    %endif
    times 2 - ($ - %%insn_004b4) db 0
    %%insn_004b6:
    jmp short 0x500 ; 004B6 EB48
    %if ($ - %%insn_004b6) > 2
        %error "LONG_004B6"
    %endif
    times 2 - ($ - %%insn_004b6) db 0
    %%insn_004b8:
    call 0x276d ; 004B8 E8B222
    %if ($ - %%insn_004b8) > 3
        %error "LONG_004B8"
    %endif
    times 3 - ($ - %%insn_004b8) db 0
    %%insn_004bb:
    mov si,0x6 ; 004BB BE0600
    %if ($ - %%insn_004bb) > 3
        %error "LONG_004BB"
    %endif
    times 3 - ($ - %%insn_004bb) db 0
    %%insn_004be:
    mov di,0xcf8c ; 004BE BF8CCF
    %if ($ - %%insn_004be) > 3
        %error "LONG_004BE"
    %endif
    times 3 - ($ - %%insn_004be) db 0
    %%insn_004c1:
    mov bx,0xcb20 ; 004C1 BB20CB
    %if ($ - %%insn_004c1) > 3
        %error "LONG_004C1"
    %endif
    times 3 - ($ - %%insn_004c1) db 0
    %%insn_004c4:
    mov cx,0x100 ; 004C4 B90001
    %if ($ - %%insn_004c4) > 3
        %error "LONG_004C4"
    %endif
    times 3 - ($ - %%insn_004c4) db 0
    %%insn_004c7:
    mov al,[si] ; 004C7 8A04
    %if ($ - %%insn_004c7) > 2
        %error "LONG_004C7"
    %endif
    times 2 - ($ - %%insn_004c7) db 0
    %%insn_004c9:
    inc si ; 004C9 46
    %if ($ - %%insn_004c9) > 1
        %error "LONG_004C9"
    %endif
    times 1 - ($ - %%insn_004c9) db 0
    %%insn_004ca:
    cmp byte [ss:bx],0x0 ; 004CA 36803F00
    %if ($ - %%insn_004ca) > 4
        %error "LONG_004CA"
    %endif
    times 4 - ($ - %%insn_004ca) db 0
    %%insn_004ce:
    jnz short 0x4d6 ; 004CE 7506
    %if ($ - %%insn_004ce) > 2
        %error "LONG_004CE"
    %endif
    times 2 - ($ - %%insn_004ce) db 0
    %%insn_004d0:
    shr al,byte 0x2 ; 004D0 C0E802
    %if ($ - %%insn_004d0) > 3
        %error "LONG_004D0"
    %endif
    times 3 - ($ - %%insn_004d0) db 0
    %%insn_004d3:
    mov [ss:di],al ; 004D3 368805
    %if ($ - %%insn_004d3) > 3
        %error "LONG_004D3"
    %endif
    times 3 - ($ - %%insn_004d3) db 0
    %%insn_004d6:
    inc di ; 004D6 47
    %if ($ - %%insn_004d6) > 1
        %error "LONG_004D6"
    %endif
    times 1 - ($ - %%insn_004d6) db 0
    %%insn_004d7:
    mov al,[si] ; 004D7 8A04
    %if ($ - %%insn_004d7) > 2
        %error "LONG_004D7"
    %endif
    times 2 - ($ - %%insn_004d7) db 0
    %%insn_004d9:
    inc si ; 004D9 46
    %if ($ - %%insn_004d9) > 1
        %error "LONG_004D9"
    %endif
    times 1 - ($ - %%insn_004d9) db 0
    %%insn_004da:
    cmp byte [ss:bx],0x0 ; 004DA 36803F00
    %if ($ - %%insn_004da) > 4
        %error "LONG_004DA"
    %endif
    times 4 - ($ - %%insn_004da) db 0
    %%insn_004de:
    jnz short 0x4e6 ; 004DE 7506
    %if ($ - %%insn_004de) > 2
        %error "LONG_004DE"
    %endif
    times 2 - ($ - %%insn_004de) db 0
    %%insn_004e0:
    shr al,byte 0x2 ; 004E0 C0E802
    %if ($ - %%insn_004e0) > 3
        %error "LONG_004E0"
    %endif
    times 3 - ($ - %%insn_004e0) db 0
    %%insn_004e3:
    mov [ss:di],al ; 004E3 368805
    %if ($ - %%insn_004e3) > 3
        %error "LONG_004E3"
    %endif
    times 3 - ($ - %%insn_004e3) db 0
    %%insn_004e6:
    inc di ; 004E6 47
    %if ($ - %%insn_004e6) > 1
        %error "LONG_004E6"
    %endif
    times 1 - ($ - %%insn_004e6) db 0
    %%insn_004e7:
    mov al,[si] ; 004E7 8A04
    %if ($ - %%insn_004e7) > 2
        %error "LONG_004E7"
    %endif
    times 2 - ($ - %%insn_004e7) db 0
    %%insn_004e9:
    inc si ; 004E9 46
    %if ($ - %%insn_004e9) > 1
        %error "LONG_004E9"
    %endif
    times 1 - ($ - %%insn_004e9) db 0
    %%insn_004ea:
    cmp byte [ss:bx],0x0 ; 004EA 36803F00
    %if ($ - %%insn_004ea) > 4
        %error "LONG_004EA"
    %endif
    times 4 - ($ - %%insn_004ea) db 0
    %%insn_004ee:
    jnz short 0x4f6 ; 004EE 7506
    %if ($ - %%insn_004ee) > 2
        %error "LONG_004EE"
    %endif
    times 2 - ($ - %%insn_004ee) db 0
    %%insn_004f0:
    shr al,byte 0x2 ; 004F0 C0E802
    %if ($ - %%insn_004f0) > 3
        %error "LONG_004F0"
    %endif
    times 3 - ($ - %%insn_004f0) db 0
    %%insn_004f3:
    mov [ss:di],al ; 004F3 368805
    %if ($ - %%insn_004f3) > 3
        %error "LONG_004F3"
    %endif
    times 3 - ($ - %%insn_004f3) db 0
    %%insn_004f6:
    inc di ; 004F6 47
    %if ($ - %%insn_004f6) > 1
        %error "LONG_004F6"
    %endif
    times 1 - ($ - %%insn_004f6) db 0
    %%insn_004f7:
    inc bx ; 004F7 43
    %if ($ - %%insn_004f7) > 1
        %error "LONG_004F7"
    %endif
    times 1 - ($ - %%insn_004f7) db 0
    %%insn_004f8:
    dec cx ; 004F8 49
    %if ($ - %%insn_004f8) > 1
        %error "LONG_004F8"
    %endif
    times 1 - ($ - %%insn_004f8) db 0
    %%insn_004f9:
    jnz short 0x4c7 ; 004F9 75CC
    %if ($ - %%insn_004f9) > 2
        %error "LONG_004F9"
    %endif
    times 2 - ($ - %%insn_004f9) db 0
    %%insn_004fb:
    mov byte [bp-0x265a],0x0 ; 004FB C686A6D900
    %if ($ - %%insn_004fb) > 5
        %error "LONG_004FB"
    %endif
    times 5 - ($ - %%insn_004fb) db 0
    %%insn_00500:
    ret ; 00500 C3
    %if ($ - %%insn_00500) > 1
        %error "LONG_00500"
    %endif
    times 1 - ($ - %%insn_00500) db 0
    %if ($ - %%fragment_start) != 139
        %error "SIZE_00476"
    %endif
%endmacro
