; Linear entry 0765E (1702:063e)
; Ghidra working symbol: FUN_1702_063e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0765e_part_00 0
    %%fragment_start:
func_0765e:
    %%insn_0765e:
    push ds ; 0765E 1E
    %if ($ - %%insn_0765e) > 1
        %error "LONG_0765E"
    %endif
    times 1 - ($ - %%insn_0765e) db 0
    %%insn_0765f:
    push si ; 0765F 56
    %if ($ - %%insn_0765f) > 1
        %error "LONG_0765F"
    %endif
    times 1 - ($ - %%insn_0765f) db 0
    %%insn_07660:
    push di ; 07660 57
    %if ($ - %%insn_07660) > 1
        %error "LONG_07660"
    %endif
    times 1 - ($ - %%insn_07660) db 0
    %%insn_07661:
    pushf ; 07661 9C
    %if ($ - %%insn_07661) > 1
        %error "LONG_07661"
    %endif
    times 1 - ($ - %%insn_07661) db 0
    %%insn_07662:
    cli ; 07662 FA
    %if ($ - %%insn_07662) > 1
        %error "LONG_07662"
    %endif
    times 1 - ($ - %%insn_07662) db 0
    %%insn_07663:
    cld ; 07663 FC
    %if ($ - %%insn_07663) > 1
        %error "LONG_07663"
    %endif
    times 1 - ($ - %%insn_07663) db 0
    %%insn_07664:
    mov word [cs:0x124],0xffff ; 07664 2EC7062401FFFF
    %if ($ - %%insn_07664) > 7
        %error "LONG_07664"
    %endif
    times 7 - ($ - %%insn_07664) db 0
    %%insn_0766b:
    mov word [cs:0x126],0xffff ; 0766B 2EC7062601FFFF
    %if ($ - %%insn_0766b) > 7
        %error "LONG_0766B"
    %endif
    times 7 - ($ - %%insn_0766b) db 0
    %%insn_07672:
    mov si,0x0 ; 07672 BE0000
    %if ($ - %%insn_07672) > 3
        %error "LONG_07672"
    %endif
    times 3 - ($ - %%insn_07672) db 0
    db 0x8B, 0xDE ; 07675 8BDE | mov bx,si | encoding preserved
    %%insn_07677:
    shl bx,1 ; 07677 D1E3
    %if ($ - %%insn_07677) > 2
        %error "LONG_07677"
    %endif
    times 2 - ($ - %%insn_07677) db 0
    db 0x2E, 0x83, 0xBF, 0x70, 0x00, 0x00 ; 07679 2E83BF700000 | cmp word [cs:bx+0x70],0x0 | encoding preserved
    %%insn_0767f:
    jz short 0x76a6 ; 0767F 7425
    %if ($ - %%insn_0767f) > 2
        %error "LONG_0767F"
    %endif
    times 2 - ($ - %%insn_0767f) db 0
    %%insn_07681:
    shl bx,1 ; 07681 D1E3
    %if ($ - %%insn_07681) > 2
        %error "LONG_07681"
    %endif
    times 2 - ($ - %%insn_07681) db 0
    %%insn_07683:
    mov ax,[cs:bx+0xd6] ; 07683 2E8B87D600
    %if ($ - %%insn_07683) > 5
        %error "LONG_07683"
    %endif
    times 5 - ($ - %%insn_07683) db 0
    %%insn_07688:
    mov dx,[cs:bx+0xd8] ; 07688 2E8B97D800
    %if ($ - %%insn_07688) > 5
        %error "LONG_07688"
    %endif
    times 5 - ($ - %%insn_07688) db 0
    %%insn_0768d:
    cmp dx,[cs:0x126] ; 0768D 2E3B162601
    %if ($ - %%insn_0768d) > 5
        %error "LONG_0768D"
    %endif
    times 5 - ($ - %%insn_0768d) db 0
    %%insn_07692:
    jc short 0x769d ; 07692 7209
    %if ($ - %%insn_07692) > 2
        %error "LONG_07692"
    %endif
    times 2 - ($ - %%insn_07692) db 0
    %%insn_07694:
    ja short 0x76a6 ; 07694 7710
    %if ($ - %%insn_07694) > 2
        %error "LONG_07694"
    %endif
    times 2 - ($ - %%insn_07694) db 0
    %%insn_07696:
    cmp ax,[cs:0x124] ; 07696 2E3B062401
    %if ($ - %%insn_07696) > 5
        %error "LONG_07696"
    %endif
    times 5 - ($ - %%insn_07696) db 0
    %%insn_0769b:
    jnc short 0x76a6 ; 0769B 7309
    %if ($ - %%insn_0769b) > 2
        %error "LONG_0769B"
    %endif
    times 2 - ($ - %%insn_0769b) db 0
    %%insn_0769d:
    mov [cs:0x124],ax ; 0769D 2EA32401
    %if ($ - %%insn_0769d) > 4
        %error "LONG_0769D"
    %endif
    times 4 - ($ - %%insn_0769d) db 0
    %%insn_076a1:
    mov [cs:0x126],dx ; 076A1 2E89162601
    %if ($ - %%insn_076a1) > 5
        %error "LONG_076A1"
    %endif
    times 5 - ($ - %%insn_076a1) db 0
    %%insn_076a6:
    inc si ; 076A6 46
    %if ($ - %%insn_076a6) > 1
        %error "LONG_076A6"
    %endif
    times 1 - ($ - %%insn_076a6) db 0
    %%insn_076a7:
    cmp si,0x10 ; 076A7 83FE10
    %if ($ - %%insn_076a7) > 3
        %error "LONG_076A7"
    %endif
    times 3 - ($ - %%insn_076a7) db 0
    %%insn_076aa:
    jna short 0x7675 ; 076AA 76C9
    %if ($ - %%insn_076aa) > 2
        %error "LONG_076AA"
    %endif
    times 2 - ($ - %%insn_076aa) db 0
    %%insn_076ac:
    mov ax,[cs:0x124] ; 076AC 2EA12401
    %if ($ - %%insn_076ac) > 4
        %error "LONG_076AC"
    %endif
    times 4 - ($ - %%insn_076ac) db 0
    %%insn_076b0:
    mov dx,[cs:0x126] ; 076B0 2E8B162601
    %if ($ - %%insn_076b0) > 5
        %error "LONG_076B0"
    %endif
    times 5 - ($ - %%insn_076b0) db 0
    %%insn_076b5:
    cmp ax,[cs:0x11a] ; 076B5 2E3B061A01
    %if ($ - %%insn_076b5) > 5
        %error "LONG_076B5"
    %endif
    times 5 - ($ - %%insn_076b5) db 0
    %%insn_076ba:
    jnz short 0x76c3 ; 076BA 7507
    %if ($ - %%insn_076ba) > 2
        %error "LONG_076BA"
    %endif
    times 2 - ($ - %%insn_076ba) db 0
    %%insn_076bc:
    cmp dx,[cs:0x11c] ; 076BC 2E3B161C01
    %if ($ - %%insn_076bc) > 5
        %error "LONG_076BC"
    %endif
    times 5 - ($ - %%insn_076bc) db 0
    %%insn_076c1:
    jz short 0x76e8 ; 076C1 7425
    %if ($ - %%insn_076c1) > 2
        %error "LONG_076C1"
    %endif
    times 2 - ($ - %%insn_076c1) db 0
    %%insn_076c3:
    mov word [cs:0x122],0xffff ; 076C3 2EC7062201FFFF
    %if ($ - %%insn_076c3) > 7
        %error "LONG_076C3"
    %endif
    times 7 - ($ - %%insn_076c3) db 0
    %%insn_076ca:
    mov [cs:0x11a],ax ; 076CA 2EA31A01
    %if ($ - %%insn_076ca) > 4
        %error "LONG_076CA"
    %endif
    times 4 - ($ - %%insn_076ca) db 0
    %%insn_076ce:
    mov [cs:0x11c],dx ; 076CE 2E89161C01
    %if ($ - %%insn_076ce) > 5
        %error "LONG_076CE"
    %endif
    times 5 - ($ - %%insn_076ce) db 0
    %%insn_076d3:
    push ax ; 076D3 50
    %if ($ - %%insn_076d3) > 1
        %error "LONG_076D3"
    %endif
    times 1 - ($ - %%insn_076d3) db 0
    %%insn_076d4:
    push cs ; 076D4 0E
    %if ($ - %%insn_076d4) > 1
        %error "LONG_076D4"
    %endif
    times 1 - ($ - %%insn_076d4) db 0
    %%insn_076d5:
    call 0x75e9 ; 076D5 E811FF
    %if ($ - %%insn_076d5) > 3
        %error "LONG_076D5"
    %endif
    times 3 - ($ - %%insn_076d5) db 0
    %%insn_076d8:
    add sp,0x2 ; 076D8 83C402
    %if ($ - %%insn_076d8) > 3
        %error "LONG_076D8"
    %endif
    times 3 - ($ - %%insn_076d8) db 0
    %%insn_076db:
    push cs ; 076DB 0E
    %if ($ - %%insn_076db) > 1
        %error "LONG_076DB"
    %endif
    times 1 - ($ - %%insn_076db) db 0
    %%insn_076dc:
    pop es ; 076DC 07
    %if ($ - %%insn_076dc) > 1
        %error "LONG_076DC"
    %endif
    times 1 - ($ - %%insn_076dc) db 0
    %%insn_076dd:
    mov di,0x92 ; 076DD BF9200
    %if ($ - %%insn_076dd) > 3
        %error "LONG_076DD"
    %endif
    times 3 - ($ - %%insn_076dd) db 0
    %%insn_076e0:
    mov cx,0x22 ; 076E0 B92200
    %if ($ - %%insn_076e0) > 3
        %error "LONG_076E0"
    %endif
    times 3 - ($ - %%insn_076e0) db 0
    %%insn_076e3:
    mov ax,0x0 ; 076E3 B80000
    %if ($ - %%insn_076e3) > 3
        %error "LONG_076E3"
    %endif
    times 3 - ($ - %%insn_076e3) db 0
    %%insn_076e6:
    rep stosw ; 076E6 F3AB
    %if ($ - %%insn_076e6) > 2
        %error "LONG_076E6"
    %endif
    times 2 - ($ - %%insn_076e6) db 0
    %%insn_076e8:
    db 0x80 ; 076E8 80
    %if ($ - %%insn_076e8) > 1
        %error "LONG_076E8"
    %endif
    times 1 - ($ - %%insn_076e8) db 0
    %if ($ - %%fragment_start) != 139
        %error "SIZE_0765E"
    %endif
%endmacro

%macro emit_func_0765e_part_01 0
    %%fragment_start:
    %%insn_076ea:
    add [0xfae8],cl ; 076EA 000EE8FA
    %if ($ - %%insn_076ea) > 4
        %error "LONG_076EA"
    %endif
    times 4 - ($ - %%insn_076ea) db 0
    %%insn_076ee:
    call word far [bx+0x5e] ; 076EE FF5F5E
    %if ($ - %%insn_076ee) > 3
        %error "LONG_076EE"
    %endif
    times 3 - ($ - %%insn_076ee) db 0
    %%insn_076f1:
    pop ds ; 076F1 1F
    %if ($ - %%insn_076f1) > 1
        %error "LONG_076F1"
    %endif
    times 1 - ($ - %%insn_076f1) db 0
    %%insn_076f2:
    retf ; 076F2 CB
    %if ($ - %%insn_076f2) > 1
        %error "LONG_076F2"
    %endif
    times 1 - ($ - %%insn_076f2) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_076EA"
    %endif
%endmacro
