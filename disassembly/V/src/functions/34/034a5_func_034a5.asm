; Linear entry 034A5 (1000:34a5)
; Ghidra working symbol: FUN_1000_34a5
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_034a5_part_00 0
    %%fragment_start:
func_034a5:
    %%insn_034a5:
    mov ax,0x893 ; 034A5 B89308
    %if ($ - %%insn_034a5) > 3
        %error "LONG_034A5"
    %endif
    times 3 - ($ - %%insn_034a5) db 0
    %%insn_034a8:
    mov ds,ax ; 034A8 8ED8
    %if ($ - %%insn_034a8) > 2
        %error "LONG_034A8"
    %endif
    times 2 - ($ - %%insn_034a8) db 0
    %%insn_034aa:
    call 0x2f84 ; 034AA E8D7FA
    %if ($ - %%insn_034aa) > 3
        %error "LONG_034AA"
    %endif
    times 3 - ($ - %%insn_034aa) db 0
    %%insn_034ad:
    cmp word [0xd696],0x0 ; 034AD 833E96D600
    %if ($ - %%insn_034ad) > 5
        %error "LONG_034AD"
    %endif
    times 5 - ($ - %%insn_034ad) db 0
    %%insn_034b2:
    jz short 0x34bd ; 034B2 7409
    %if ($ - %%insn_034b2) > 2
        %error "LONG_034B2"
    %endif
    times 2 - ($ - %%insn_034b2) db 0
    %%insn_034b4:
    mov ax,0x4f02 ; 034B4 B8024F
    %if ($ - %%insn_034b4) > 3
        %error "LONG_034B4"
    %endif
    times 3 - ($ - %%insn_034b4) db 0
    %%insn_034b7:
    mov bx,0x101 ; 034B7 BB0101
    %if ($ - %%insn_034b7) > 3
        %error "LONG_034B7"
    %endif
    times 3 - ($ - %%insn_034b7) db 0
    %%insn_034ba:
    jmp 0x3558 ; 034BA E99B00
    %if ($ - %%insn_034ba) > 3
        %error "LONG_034BA"
    %endif
    times 3 - ($ - %%insn_034ba) db 0
    %%insn_034bd:
    cmp word [0xd694],0x0 ; 034BD 833E94D600
    %if ($ - %%insn_034bd) > 5
        %error "LONG_034BD"
    %endif
    times 5 - ($ - %%insn_034bd) db 0
    %%insn_034c2:
    jz short 0x34ca ; 034C2 7406
    %if ($ - %%insn_034c2) > 2
        %error "LONG_034C2"
    %endif
    times 2 - ($ - %%insn_034c2) db 0
    %%insn_034c4:
    mov ax,0x2e ; 034C4 B82E00
    %if ($ - %%insn_034c4) > 3
        %error "LONG_034C4"
    %endif
    times 3 - ($ - %%insn_034c4) db 0
    %%insn_034c7:
    jmp 0x3558 ; 034C7 E98E00
    %if ($ - %%insn_034c7) > 3
        %error "LONG_034C7"
    %endif
    times 3 - ($ - %%insn_034c7) db 0
    %%insn_034ca:
    cmp word [0xd690],0x0 ; 034CA 833E90D600
    %if ($ - %%insn_034ca) > 5
        %error "LONG_034CA"
    %endif
    times 5 - ($ - %%insn_034ca) db 0
    %%insn_034cf:
    jz short 0x34d7 ; 034CF 7406
    %if ($ - %%insn_034cf) > 2
        %error "LONG_034CF"
    %endif
    times 2 - ($ - %%insn_034cf) db 0
    %%insn_034d1:
    mov ax,0x5c ; 034D1 B85C00
    %if ($ - %%insn_034d1) > 3
        %error "LONG_034D1"
    %endif
    times 3 - ($ - %%insn_034d1) db 0
    %%insn_034d4:
    jmp 0x3558 ; 034D4 E98100
    %if ($ - %%insn_034d4) > 3
        %error "LONG_034D4"
    %endif
    times 3 - ($ - %%insn_034d4) db 0
    %%insn_034d7:
    cmp word [0xd692],0x0 ; 034D7 833E92D600
    %if ($ - %%insn_034d7) > 5
        %error "LONG_034D7"
    %endif
    times 5 - ($ - %%insn_034d7) db 0
    %%insn_034dc:
    jz short 0x34e3 ; 034DC 7405
    %if ($ - %%insn_034dc) > 2
        %error "LONG_034DC"
    %endif
    times 2 - ($ - %%insn_034dc) db 0
    %%insn_034de:
    mov ax,0x5f ; 034DE B85F00
    %if ($ - %%insn_034de) > 3
        %error "LONG_034DE"
    %endif
    times 3 - ($ - %%insn_034de) db 0
    %%insn_034e1:
    jmp short 0x3558 ; 034E1 EB75
    %if ($ - %%insn_034e1) > 2
        %error "LONG_034E1"
    %endif
    times 2 - ($ - %%insn_034e1) db 0
    %%insn_034e3:
    cmp word [0xd688],0x0 ; 034E3 833E88D600
    %if ($ - %%insn_034e3) > 5
        %error "LONG_034E3"
    %endif
    times 5 - ($ - %%insn_034e3) db 0
    %%insn_034e8:
    jz short 0x34ef ; 034E8 7405
    %if ($ - %%insn_034e8) > 2
        %error "LONG_034E8"
    %endif
    times 2 - ($ - %%insn_034e8) db 0
    %%insn_034ea:
    mov ax,0x53 ; 034EA B85300
    %if ($ - %%insn_034ea) > 3
        %error "LONG_034EA"
    %endif
    times 3 - ($ - %%insn_034ea) db 0
    %%insn_034ed:
    jmp short 0x3558 ; 034ED EB69
    %if ($ - %%insn_034ed) > 2
        %error "LONG_034ED"
    %endif
    times 2 - ($ - %%insn_034ed) db 0
    %%insn_034ef:
    cmp word [0xd684],0x0 ; 034EF 833E84D600
    %if ($ - %%insn_034ef) > 5
        %error "LONG_034EF"
    %endif
    times 5 - ($ - %%insn_034ef) db 0
    %%insn_034f4:
    jnz short 0x34fd ; 034F4 7507
    %if ($ - %%insn_034f4) > 2
        %error "LONG_034F4"
    %endif
    times 2 - ($ - %%insn_034f4) db 0
    %%insn_034f6:
    cmp word [0xd686],0x0 ; 034F6 833E86D600
    %if ($ - %%insn_034f6) > 5
        %error "LONG_034F6"
    %endif
    times 5 - ($ - %%insn_034f6) db 0
    %%insn_034fb:
    jz short 0x3502 ; 034FB 7405
    %if ($ - %%insn_034fb) > 2
        %error "LONG_034FB"
    %endif
    times 2 - ($ - %%insn_034fb) db 0
    %%insn_034fd:
    mov ax,0x61 ; 034FD B86100
    %if ($ - %%insn_034fd) > 3
        %error "LONG_034FD"
    %endif
    times 3 - ($ - %%insn_034fd) db 0
    %%insn_03500:
    jmp short 0x3558 ; 03500 EB56
    %if ($ - %%insn_03500) > 2
        %error "LONG_03500"
    %endif
    times 2 - ($ - %%insn_03500) db 0
    %%insn_03502:
    cmp word [0xd678],0x0 ; 03502 833E78D600
    %if ($ - %%insn_03502) > 5
        %error "LONG_03502"
    %endif
    times 5 - ($ - %%insn_03502) db 0
    %%insn_03507:
    jz short 0x3510 ; 03507 7407
    %if ($ - %%insn_03507) > 2
        %error "LONG_03507"
    %endif
    times 2 - ($ - %%insn_03507) db 0
    %%insn_03509:
    mov ax,0x70 ; 03509 B87000
    %if ($ - %%insn_03509) > 3
        %error "LONG_03509"
    %endif
    times 3 - ($ - %%insn_03509) db 0
    %%insn_0350c:
    mov bl,0x30 ; 0350C B330
    %if ($ - %%insn_0350c) > 2
        %error "LONG_0350C"
    %endif
    times 2 - ($ - %%insn_0350c) db 0
    %%insn_0350e:
    jmp short 0x3558 ; 0350E EB48
    %if ($ - %%insn_0350e) > 2
        %error "LONG_0350E"
    %endif
    times 2 - ($ - %%insn_0350e) db 0
    %%insn_03510:
    cmp word [0xd682],0x0 ; 03510 833E82D600
    %if ($ - %%insn_03510) > 5
        %error "LONG_03510"
    %endif
    times 5 - ($ - %%insn_03510) db 0
    %%insn_03515:
    jz short 0x351c ; 03515 7405
    %if ($ - %%insn_03515) > 2
        %error "LONG_03515"
    %endif
    times 2 - ($ - %%insn_03515) db 0
    %%insn_03517:
    mov ax,0x62 ; 03517 B86200
    %if ($ - %%insn_03517) > 3
        %error "LONG_03517"
    %endif
    times 3 - ($ - %%insn_03517) db 0
    %%insn_0351a:
    jmp short 0x3558 ; 0351A EB3C
    %if ($ - %%insn_0351a) > 2
        %error "LONG_0351A"
    %endif
    times 2 - ($ - %%insn_0351a) db 0
    %%insn_0351c:
    cmp word [0xd67e],0x0 ; 0351C 833E7ED600
    %if ($ - %%insn_0351c) > 5
        %error "LONG_0351C"
    %endif
    times 5 - ($ - %%insn_0351c) db 0
    %%insn_03521:
    jz short 0x3528 ; 03521 7405
    %if ($ - %%insn_03521) > 2
        %error "LONG_03521"
    %endif
    times 2 - ($ - %%insn_03521) db 0
    %%insn_03523:
    mov ax,0x5d ; 03523 B85D00
    %if ($ - %%insn_03523) > 3
        %error "LONG_03523"
    %endif
    times 3 - ($ - %%insn_03523) db 0
    %%insn_03526:
    jmp short 0x3558 ; 03526 EB30
    %if ($ - %%insn_03526) > 2
        %error "LONG_03526"
    %endif
    times 2 - ($ - %%insn_03526) db 0
    %%insn_03528:
    cmp word [0xd68a],0x0 ; 03528 833E8AD600
    %if ($ - %%insn_03528) > 5
        %error "LONG_03528"
    %endif
    times 5 - ($ - %%insn_03528) db 0
    %%insn_0352d:
    jz short 0x3536 ; 0352D 7407
    %if ($ - %%insn_0352d) > 2
        %error "LONG_0352D"
    %endif
    times 2 - ($ - %%insn_0352d) db 0
    %%insn_0352f:
    mov ax,0x6f05 ; 0352F B8056F
    %if ($ - %%insn_0352f) > 3
        %error "LONG_0352F"
    %endif
    times 3 - ($ - %%insn_0352f) db 0
    %%insn_03532:
    mov bl,0x67 ; 03532 B367
    %if ($ - %%insn_03532) > 2
        %error "LONG_03532"
    %endif
    times 2 - ($ - %%insn_03532) db 0
    %%insn_03534:
    jmp short 0x3558 ; 03534 EB22
    %if ($ - %%insn_03534) > 2
        %error "LONG_03534"
    %endif
    times 2 - ($ - %%insn_03534) db 0
    %%insn_03536:
    cmp word [0xd68c],0x0 ; 03536 833E8CD600
    %if ($ - %%insn_03536) > 5
        %error "LONG_03536"
    %endif
    times 5 - ($ - %%insn_03536) db 0
    %%insn_0353b:
    jz short 0x3542 ; 0353B 7405
    %if ($ - %%insn_0353b) > 2
        %error "LONG_0353B"
    %endif
    times 2 - ($ - %%insn_0353b) db 0
    %%insn_0353d:
    mov ax,0x79 ; 0353D B87900
    %if ($ - %%insn_0353d) > 3
        %error "LONG_0353D"
    %endif
    times 3 - ($ - %%insn_0353d) db 0
    %%insn_03540:
    jmp short 0x3558 ; 03540 EB16
    %if ($ - %%insn_03540) > 2
        %error "LONG_03540"
    %endif
    times 2 - ($ - %%insn_03540) db 0
    %%insn_03542:
    cmp word [0xd67a],0x0 ; 03542 833E7AD600
    %if ($ - %%insn_03542) > 5
        %error "LONG_03542"
    %endif
    times 5 - ($ - %%insn_03542) db 0
    %%insn_03547:
    jz short 0x354e ; 03547 7405
    %if ($ - %%insn_03547) > 2
        %error "LONG_03547"
    %endif
    times 2 - ($ - %%insn_03547) db 0
    %%insn_03549:
    mov ax,0x5f ; 03549 B85F00
    %if ($ - %%insn_03549) > 3
        %error "LONG_03549"
    %endif
    times 3 - ($ - %%insn_03549) db 0
    %%insn_0354c:
    jmp short 0x3558 ; 0354C EB0A
    %if ($ - %%insn_0354c) > 2
        %error "LONG_0354C"
    %endif
    times 2 - ($ - %%insn_0354c) db 0
    %%insn_0354e:
    cmp word [0xd67c],0x0 ; 0354E 833E7CD600
    %if ($ - %%insn_0354e) > 5
        %error "LONG_0354E"
    %endif
    times 5 - ($ - %%insn_0354e) db 0
    %%insn_03553:
    jz short 0x3585 ; 03553 7430
    %if ($ - %%insn_03553) > 2
        %error "LONG_03553"
    %endif
    times 2 - ($ - %%insn_03553) db 0
    %%insn_03555:
    mov ax,0x2e ; 03555 B82E00
    %if ($ - %%insn_03555) > 3
        %error "LONG_03555"
    %endif
    times 3 - ($ - %%insn_03555) db 0
    %%insn_03558:
    int byte 0x10 ; 03558 CD10
    %if ($ - %%insn_03558) > 2
        %error "LONG_03558"
    %endif
    times 2 - ($ - %%insn_03558) db 0
    %%insn_0355a:
    mov word [0xcf8a],0xffff ; 0355A C7068ACFFFFF
    %if ($ - %%insn_0355a) > 6
        %error "LONG_0355A"
    %endif
    times 6 - ($ - %%insn_0355a) db 0
    %%insn_03560:
    mov ax,0x280 ; 03560 B88002
    %if ($ - %%insn_03560) > 3
        %error "LONG_03560"
    %endif
    times 3 - ($ - %%insn_03560) db 0
    %%insn_03563:
    mov [0xd6b1],ax ; 03563 A3B1D6
    %if ($ - %%insn_03563) > 3
        %error "LONG_03563"
    %endif
    times 3 - ($ - %%insn_03563) db 0
    %%insn_03566:
    cmp word [0xd694],0x0 ; 03566 833E94D600
    %if ($ - %%insn_03566) > 5
        %error "LONG_03566"
    %endif
    times 5 - ($ - %%insn_03566) db 0
    %%insn_0356b:
    jz short 0x3570 ; 0356B 7403
    %if ($ - %%insn_0356b) > 2
        %error "LONG_0356B"
    %endif
    times 2 - ($ - %%insn_0356b) db 0
    %%insn_0356d:
    mov ax,0x400 ; 0356D B80004
    %if ($ - %%insn_0356d) > 3
        %error "LONG_0356D"
    %endif
    times 3 - ($ - %%insn_0356d) db 0
    %%insn_03570:
    mov [0xd6b5],ax ; 03570 A3B5D6
    %if ($ - %%insn_03570) > 3
        %error "LONG_03570"
    %endif
    times 3 - ($ - %%insn_03570) db 0
    %%insn_03573:
    mov ax,0x40 ; 03573 B84000
    %if ($ - %%insn_03573) > 3
        %error "LONG_03573"
    %endif
    times 3 - ($ - %%insn_03573) db 0
    %%insn_03576:
    mov es,ax ; 03576 8EC0
    %if ($ - %%insn_03576) > 2
        %error "LONG_03576"
    %endif
    times 2 - ($ - %%insn_03576) db 0
    %%insn_03578:
    mov al,[es:0x84] ; 03578 26A08400
    %if ($ - %%insn_03578) > 4
        %error "LONG_03578"
    %endif
    times 4 - ($ - %%insn_03578) db 0
    %%insn_0357c:
    mul byte [es:0x85] ; 0357C 26F6268500
    %if ($ - %%insn_0357c) > 5
        %error "LONG_0357C"
    %endif
    times 5 - ($ - %%insn_0357c) db 0
    %%insn_03581:
    mov [0xd6b3],ax ; 03581 A3B3D6
    %if ($ - %%insn_03581) > 3
        %error "LONG_03581"
    %endif
    times 3 - ($ - %%insn_03581) db 0
    %%insn_03584:
    ret ; 03584 C3
    %if ($ - %%insn_03584) > 1
        %error "LONG_03584"
    %endif
    times 1 - ($ - %%insn_03584) db 0
    db 0x33, 0xC0 ; 03585 33C0 | xor ax,ax | encoding preserved
    %%insn_03587:
    jmp 0x5ced ; 03587 E96327
    %if ($ - %%insn_03587) > 3
        %error "LONG_03587"
    %endif
    times 3 - ($ - %%insn_03587) db 0
    %if ($ - %%fragment_start) != 229
        %error "SIZE_034A5"
    %endif
%endmacro
