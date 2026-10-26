; Linear entry 07430, recovered from former emit_gap_092_07430.
; Additional verified code entry outside the 261-entry analyzer inventory.
; Contract: Account elapsed periods for 17 running timer slots, invoke due callbacks with saved DS on a private stack, send PIC EOI, and IRET when the Test guard matches.
; Original byte identity is enforced by this project’s build.sh.

%macro emit_miles_timer_interrupt_part_00 0
    %%fragment_start:
miles_timer_interrupt:
    %%insn_07430:
    inc word [cs:0x8] ; 07430 2EFF060800
    %if ($ - %%insn_07430) != 5
        %error "MILES_EXTRA_INSN_07430"
    %endif
    %%insn_07435:
    cld ; 07435 FC
    %if ($ - %%insn_07435) != 1
        %error "MILES_EXTRA_INSN_07435"
    %endif
    %%insn_07436:
    push ax ; 07436 50
    %if ($ - %%insn_07436) != 1
        %error "MILES_EXTRA_INSN_07436"
    %endif
    %%insn_07437:
    push bx ; 07437 53
    %if ($ - %%insn_07437) != 1
        %error "MILES_EXTRA_INSN_07437"
    %endif
    %%insn_07438:
    push cx ; 07438 51
    %if ($ - %%insn_07438) != 1
        %error "MILES_EXTRA_INSN_07438"
    %endif
    %%insn_07439:
    push dx ; 07439 52
    %if ($ - %%insn_07439) != 1
        %error "MILES_EXTRA_INSN_07439"
    %endif
    %%insn_0743a:
    push si ; 0743A 56
    %if ($ - %%insn_0743a) != 1
        %error "MILES_EXTRA_INSN_0743A"
    %endif
    %%insn_0743b:
    push di ; 0743B 57
    %if ($ - %%insn_0743b) != 1
        %error "MILES_EXTRA_INSN_0743B"
    %endif
    %%insn_0743c:
    push bp ; 0743C 55
    %if ($ - %%insn_0743c) != 1
        %error "MILES_EXTRA_INSN_0743C"
    %endif
    %%insn_0743d:
    push es ; 0743D 06
    %if ($ - %%insn_0743d) != 1
        %error "MILES_EXTRA_INSN_0743D"
    %endif
    %%insn_0743e:
    push ds ; 0743E 1E
    %if ($ - %%insn_0743e) != 1
        %error "MILES_EXTRA_INSN_0743E"
    %endif
    %%insn_0743f:
    cmp word [cs:0x8],0x1 ; 0743F 2E833E080001
    %if ($ - %%insn_0743f) != 6
        %error "MILES_EXTRA_INSN_0743F"
    %endif
    %%insn_07445:
    jz short 0x744a ; 07445 7403
    %if ($ - %%insn_07445) != 2
        %error "MILES_EXTRA_INSN_07445"
    %endif
    %%insn_07447:
    jmp 0x74d8 ; 07447 E98E00
    %if ($ - %%insn_07447) != 3
        %error "MILES_EXTRA_INSN_07447"
    %endif
    %%insn_0744a:
    mov word [cs:0x3ba],ss ; 0744A 2E8C16BA03
    %if ($ - %%insn_0744a) != 5
        %error "MILES_EXTRA_INSN_0744A"
    %endif
    %%insn_0744f:
    mov [cs:0x3bc],sp ; 0744F 2E8926BC03
    %if ($ - %%insn_0744f) != 5
        %error "MILES_EXTRA_INSN_0744F"
    %endif
    %%insn_07454:
    mov ax,cs ; 07454 8CC8
    %if ($ - %%insn_07454) != 2
        %error "MILES_EXTRA_INSN_07454"
    %endif
    %%insn_07456:
    mov ss,ax ; 07456 8ED0
    %if ($ - %%insn_07456) != 2
        %error "MILES_EXTRA_INSN_07456"
    %endif
    %%insn_07458:
    mov sp,0x3ba ; 07458 BCBA03
    %if ($ - %%insn_07458) != 3
        %error "MILES_EXTRA_INSN_07458"
    %endif
    %%insn_0745b:
    mov word [cs:0x122],0x0 ; 0745B 2EC70622010000
    %if ($ - %%insn_0745b) != 7
        %error "MILES_EXTRA_INSN_0745B"
    %endif
    %%insn_07462:
    mov si,[cs:0x122] ; 07462 2E8B362201
    %if ($ - %%insn_07462) != 5
        %error "MILES_EXTRA_INSN_07462"
    %endif
    %%insn_07467:
    shl si,1 ; 07467 D1E6
    %if ($ - %%insn_07467) != 2
        %error "MILES_EXTRA_INSN_07467"
    %endif
    db 0x2E, 0x83, 0xBC, 0x70, 0x00, 0x02 ; 07469 2E83BC700002 | cmp word [cs:si+0x70],0x2 | encoding preserved
    %%insn_0746f:
    jnz short 0x74c1 ; 0746F 7550
    %if ($ - %%insn_0746f) != 2
        %error "MILES_EXTRA_INSN_0746F"
    %endif
    db 0x2E, 0x8E, 0x9C, 0x4E, 0x00 ; 07471 2E8E9C4E00 | mov ds,word [cs:si+0x4e] | encoding preserved
    %%insn_07476:
    shl si,1 ; 07476 D1E6
    %if ($ - %%insn_07476) != 2
        %error "MILES_EXTRA_INSN_07476"
    %endif
    %%insn_07478:
    mov ax,[cs:si+0x92] ; 07478 2E8B849200
    %if ($ - %%insn_07478) != 5
        %error "MILES_EXTRA_INSN_07478"
    %endif
    %%insn_0747d:
    mov dx,[cs:si+0x94] ; 0747D 2E8B949400
    %if ($ - %%insn_0747d) != 5
        %error "MILES_EXTRA_INSN_0747D"
    %endif
    %%insn_07482:
    add ax,[cs:0x11a] ; 07482 2E03061A01
    %if ($ - %%insn_07482) != 5
        %error "MILES_EXTRA_INSN_07482"
    %endif
    %%insn_07487:
    adc dx,[cs:0x11c] ; 07487 2E13161C01
    %if ($ - %%insn_07487) != 5
        %error "MILES_EXTRA_INSN_07487"
    %endif
    %%insn_0748c:
    cmp dx,[cs:si+0xd8] ; 0748C 2E3B94D800
    %if ($ - %%insn_0748c) != 5
        %error "MILES_EXTRA_INSN_0748C"
    %endif
    %%insn_07491:
    jc short 0x749c ; 07491 7209
    %if ($ - %%insn_07491) != 2
        %error "MILES_EXTRA_INSN_07491"
    %endif
    %%insn_07493:
    ja short 0x74a8 ; 07493 7713
    %if ($ - %%insn_07493) != 2
        %error "MILES_EXTRA_INSN_07493"
    %endif
    %%insn_07495:
    cmp ax,[cs:si+0xd6] ; 07495 2E3B84D600
    %if ($ - %%insn_07495) != 5
        %error "MILES_EXTRA_INSN_07495"
    %endif
    %%insn_0749a:
    jnc short 0x74a8 ; 0749A 730C
    %if ($ - %%insn_0749a) != 2
        %error "MILES_EXTRA_INSN_0749A"
    %endif
    %%insn_0749c:
    mov [cs:si+0x92],ax ; 0749C 2E89849200
    %if ($ - %%insn_0749c) != 5
        %error "MILES_EXTRA_INSN_0749C"
    %endif
    %%insn_074a1:
    mov [cs:si+0x94],dx ; 074A1 2E89949400
    %if ($ - %%insn_074a1) != 5
        %error "MILES_EXTRA_INSN_074A1"
    %endif
    %%insn_074a6:
    jmp short 0x74c1 ; 074A6 EB19
    %if ($ - %%insn_074a6) != 2
        %error "MILES_EXTRA_INSN_074A6"
    %endif
    %%insn_074a8:
    sub ax,[cs:si+0xd6] ; 074A8 2E2B84D600
    %if ($ - %%insn_074a8) != 5
        %error "MILES_EXTRA_INSN_074A8"
    %endif
    %%insn_074ad:
    sbb dx,[cs:si+0xd8] ; 074AD 2E1B94D800
    %if ($ - %%insn_074ad) != 5
        %error "MILES_EXTRA_INSN_074AD"
    %endif
    %%insn_074b2:
    mov [cs:si+0x92],ax ; 074B2 2E89849200
    %if ($ - %%insn_074b2) != 5
        %error "MILES_EXTRA_INSN_074B2"
    %endif
    %%insn_074b7:
    mov [cs:si+0x94],dx ; 074B7 2E89949400
    %if ($ - %%insn_074b7) != 5
        %error "MILES_EXTRA_INSN_074B7"
    %endif
    db 0x2E, 0xFF, 0x9C, 0x0A, 0x00 ; 074BC 2EFF9C0A00 | call word far [cs:si+0xa] | encoding preserved
    %%insn_074c1:
    inc word [cs:0x122] ; 074C1 2EFF062201
    %if ($ - %%insn_074c1) != 5
        %error "MILES_EXTRA_INSN_074C1"
    %endif
    %%insn_074c6:
    cmp word [cs:0x122],0x10 ; 074C6 2E833E220110
    %if ($ - %%insn_074c6) != 6
        %error "MILES_EXTRA_INSN_074C6"
    %endif
    %%insn_074cc:
    jna short 0x7462 ; 074CC 7694
    %if ($ - %%insn_074cc) != 2
        %error "MILES_EXTRA_INSN_074CC"
    %endif
    %%insn_074ce:
    mov ss,word [cs:0x3ba] ; 074CE 2E8E16BA03
    %if ($ - %%insn_074ce) != 5
        %error "MILES_EXTRA_INSN_074CE"
    %endif
    %%insn_074d3:
    mov sp,[cs:0x3bc] ; 074D3 2E8B26BC03
    %if ($ - %%insn_074d3) != 5
        %error "MILES_EXTRA_INSN_074D3"
    %endif
    %%insn_074d8:
    pop ds ; 074D8 1F
    %if ($ - %%insn_074d8) != 1
        %error "MILES_EXTRA_INSN_074D8"
    %endif
    %%insn_074d9:
    pop es ; 074D9 07
    %if ($ - %%insn_074d9) != 1
        %error "MILES_EXTRA_INSN_074D9"
    %endif
    %%insn_074da:
    pop bp ; 074DA 5D
    %if ($ - %%insn_074da) != 1
        %error "MILES_EXTRA_INSN_074DA"
    %endif
    %%insn_074db:
    pop di ; 074DB 5F
    %if ($ - %%insn_074db) != 1
        %error "MILES_EXTRA_INSN_074DB"
    %endif
    %%insn_074dc:
    pop si ; 074DC 5E
    %if ($ - %%insn_074dc) != 1
        %error "MILES_EXTRA_INSN_074DC"
    %endif
    %%insn_074dd:
    pop dx ; 074DD 5A
    %if ($ - %%insn_074dd) != 1
        %error "MILES_EXTRA_INSN_074DD"
    %endif
    %%insn_074de:
    pop cx ; 074DE 59
    %if ($ - %%insn_074de) != 1
        %error "MILES_EXTRA_INSN_074DE"
    %endif
    %%insn_074df:
    pop bx ; 074DF 5B
    %if ($ - %%insn_074df) != 1
        %error "MILES_EXTRA_INSN_074DF"
    %endif
    %%insn_074e0:
    mov al,0x20 ; 074E0 B020
    %if ($ - %%insn_074e0) != 2
        %error "MILES_EXTRA_INSN_074E0"
    %endif
    %%insn_074e2:
    out byte 0x20,al ; 074E2 E620
    %if ($ - %%insn_074e2) != 2
        %error "MILES_EXTRA_INSN_074E2"
    %endif
    %%insn_074e4:
    pop ax ; 074E4 58
    %if ($ - %%insn_074e4) != 1
        %error "MILES_EXTRA_INSN_074E4"
    %endif
    %%insn_074e5:
    cmp word [cs:0x1b6],0x6554 ; 074E5 2E813EB6015465
    %if ($ - %%insn_074e5) != 7
        %error "MILES_EXTRA_INSN_074E5"
    %endif
    %%insn_074ec:
    jnz short 0x74fd ; 074EC 750F
    %if ($ - %%insn_074ec) != 2
        %error "MILES_EXTRA_INSN_074EC"
    %endif
    %%insn_074ee:
    cmp word [cs:0x1b8],0x7473 ; 074EE 2E813EB8017374
    %if ($ - %%insn_074ee) != 7
        %error "MILES_EXTRA_INSN_074EE"
    %endif
    %%insn_074f5:
    jnz short 0x74fd ; 074F5 7506
    %if ($ - %%insn_074f5) != 2
        %error "MILES_EXTRA_INSN_074F5"
    %endif
    %%insn_074f7:
    dec word [cs:0x8] ; 074F7 2EFF0E0800
    %if ($ - %%insn_074f7) != 5
        %error "MILES_EXTRA_INSN_074F7"
    %endif
    %%insn_074fc:
    iret ; 074FC CF
    %if ($ - %%insn_074fc) != 1
        %error "MILES_EXTRA_INSN_074FC"
    %endif
    %%insn_074fd:
    sti ; 074FD FB
    %if ($ - %%insn_074fd) != 1
        %error "MILES_EXTRA_INSN_074FD"
    %endif
    %%insn_074fe:
    int3 ; 074FE CC
    %if ($ - %%insn_074fe) != 1
        %error "MILES_EXTRA_INSN_074FE"
    %endif
    %%insn_074ff:
    jmp short 0x74fd ; 074FF EBFC
    %if ($ - %%insn_074ff) != 2
        %error "MILES_EXTRA_INSN_074FF"
    %endif
    %if ($ - %%fragment_start) != 209
        %error "MILES_EXTRA_SIZE_07430"
    %endif
%endmacro
