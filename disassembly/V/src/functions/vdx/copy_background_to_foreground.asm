; Linear entry 02591 (1000:2591)
; Ghidra working symbol: FUN_1000_2591
; Verified GRV background restore implementation.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_copy_background_to_foreground_part_00 0
    %%fragment_start:
copy_background_to_foreground:
    %%insn_02591:
    push ds ; 02591 1E
    %if ($ - %%insn_02591) > 1
        %error "LONG_02591"
    %endif
    times 1 - ($ - %%insn_02591) db 0
    %%insn_02592:
    push es ; 02592 06
    %if ($ - %%insn_02592) > 1
        %error "LONG_02592"
    %endif
    times 1 - ($ - %%insn_02592) db 0
    %%insn_02593:
    pusha ; 02593 60
    %if ($ - %%insn_02593) > 1
        %error "LONG_02593"
    %endif
    times 1 - ($ - %%insn_02593) db 0
    %%insn_02594:
    mov ds,word [bp-0x2aa8] ; 02594 8E9E58D5
    %if ($ - %%insn_02594) > 4
        %error "LONG_02594"
    %endif
    times 4 - ($ - %%insn_02594) db 0
    %%insn_02598:
    cmp word [bp-0x30de],0x0 ; 02598 83BE22CF00
    %if ($ - %%insn_02598) > 5
        %error "LONG_02598"
    %endif
    times 5 - ($ - %%insn_02598) db 0
    %%insn_0259d:
    jz short 0x25fc ; 0259D 745D
    %if ($ - %%insn_0259d) > 2
        %error "LONG_0259D"
    %endif
    times 2 - ($ - %%insn_0259d) db 0
    %%insn_0259f:
    mov ax,[bp-0x2aac] ; 0259F 8B8654D5
    %if ($ - %%insn_0259f) > 4
        %error "LONG_0259F"
    %endif
    times 4 - ($ - %%insn_0259f) db 0
    %%insn_025a3:
    mov es,ax ; 025A3 8EC0
    %if ($ - %%insn_025a3) > 2
        %error "LONG_025A3"
    %endif
    times 2 - ($ - %%insn_025a3) db 0
    db 0x33, 0xF6 ; 025A5 33F6 | xor si,si | encoding preserved
    db 0x33, 0xFF ; 025A7 33FF | xor di,di | encoding preserved
    %%insn_025a9:
    mov cx,0x7d00 ; 025A9 B9007D
    %if ($ - %%insn_025a9) > 3
        %error "LONG_025A9"
    %endif
    times 3 - ($ - %%insn_025a9) db 0
    %%insn_025ac:
    rep movsw ; 025AC F3A5
    %if ($ - %%insn_025ac) > 2
        %error "LONG_025AC"
    %endif
    times 2 - ($ - %%insn_025ac) db 0
    %%insn_025ae:
    mov byte [bp-0x3076],0x0 ; 025AE C6868ACF00
    %if ($ - %%insn_025ae) > 5
        %error "LONG_025AE"
    %endif
    times 5 - ($ - %%insn_025ae) db 0
    %%insn_025b3:
    pusha ; 025B3 60
    %if ($ - %%insn_025b3) > 1
        %error "LONG_025B3"
    %endif
    times 1 - ($ - %%insn_025b3) db 0
    %%insn_025b4:
    push ds ; 025B4 1E
    %if ($ - %%insn_025b4) > 1
        %error "LONG_025B4"
    %endif
    times 1 - ($ - %%insn_025b4) db 0
    %%insn_025b5:
    mov ds,word [bp-0x2aae] ; 025B5 8E9E52D5
    %if ($ - %%insn_025b5) > 4
        %error "LONG_025B5"
    %endif
    times 4 - ($ - %%insn_025b5) db 0
    %%insn_025b9:
    mov ax,[bp-0x2aac] ; 025B9 8B8654D5
    %if ($ - %%insn_025b9) > 4
        %error "LONG_025B9"
    %endif
    times 4 - ($ - %%insn_025b9) db 0
    %%insn_025bd:
    mov dword [bp-0x2b92],0x10000 ; 025BD 66C7866ED400000100
    %if ($ - %%insn_025bd) > 9
        %error "LONG_025BD"
    %endif
    times 9 - ($ - %%insn_025bd) db 0
    %%insn_025c6:
    mov word [bp-0x2b8e],0x0 ; 025C6 C78672D40000
    %if ($ - %%insn_025c6) > 6
        %error "LONG_025C6"
    %endif
    times 6 - ($ - %%insn_025c6) db 0
    %%insn_025cc:
    mov word [bp-0x2b8c],0x0 ; 025CC C78674D40000
    %if ($ - %%insn_025cc) > 6
        %error "LONG_025CC"
    %endif
    times 6 - ($ - %%insn_025cc) db 0
    %%insn_025d2:
    mov [bp-0x2b8a],ax ; 025D2 898676D4
    %if ($ - %%insn_025d2) > 4
        %error "LONG_025D2"
    %endif
    times 4 - ($ - %%insn_025d2) db 0
    %%insn_025d6:
    mov ax,[bp-0x2ab0] ; 025D6 8B8650D5
    %if ($ - %%insn_025d6) > 4
        %error "LONG_025D6"
    %endif
    times 4 - ($ - %%insn_025d6) db 0
    %%insn_025da:
    mov [bp-0x2b88],ax ; 025DA 898678D4
    %if ($ - %%insn_025da) > 4
        %error "LONG_025DA"
    %endif
    times 4 - ($ - %%insn_025da) db 0
    %%insn_025de:
    mov al,[bp-0x3076] ; 025DE 8A868ACF
    %if ($ - %%insn_025de) > 4
        %error "LONG_025DE"
    %endif
    times 4 - ($ - %%insn_025de) db 0
    db 0x32, 0xE4 ; 025E2 32E4 | xor ah,ah | encoding preserved
    %%insn_025e4:
    shl eax,byte 0x10 ; 025E4 66C1E010
    %if ($ - %%insn_025e4) > 4
        %error "LONG_025E4"
    %endif
    times 4 - ($ - %%insn_025e4) db 0
    %%insn_025e8:
    mov [bp-0x2b86],eax ; 025E8 6689867AD4
    %if ($ - %%insn_025e8) > 5
        %error "LONG_025E8"
    %endif
    times 5 - ($ - %%insn_025e8) db 0
    %%insn_025ed:
    mov ah,0xb ; 025ED B40B
    %if ($ - %%insn_025ed) > 2
        %error "LONG_025ED"
    %endif
    times 2 - ($ - %%insn_025ed) db 0
    %%insn_025ef:
    mov si,0xd46e ; 025EF BE6ED4
    %if ($ - %%insn_025ef) > 3
        %error "LONG_025EF"
    %endif
    times 3 - ($ - %%insn_025ef) db 0
    %%insn_025f2:
    call word far [cs:0x3688] ; 025F2 2EFF1E8836
    %if ($ - %%insn_025f2) > 5
        %error "LONG_025F2"
    %endif
    times 5 - ($ - %%insn_025f2) db 0
    %%insn_025f7:
    pop ds ; 025F7 1F
    %if ($ - %%insn_025f7) > 1
        %error "LONG_025F7"
    %endif
    times 1 - ($ - %%insn_025f7) db 0
    %%insn_025f8:
    popa ; 025F8 61
    %if ($ - %%insn_025f8) > 1
        %error "LONG_025F8"
    %endif
    times 1 - ($ - %%insn_025f8) db 0
    %%insn_025f9:
    jmp 0x26e1 ; 025F9 E9E500
    %if ($ - %%insn_025f9) > 3
        %error "LONG_025F9"
    %endif
    times 3 - ($ - %%insn_025f9) db 0
    %%insn_025fc:
    mov ax,0x50 ; 025FC B85000
    %if ($ - %%insn_025fc) > 3
        %error "LONG_025FC"
    %endif
    times 3 - ($ - %%insn_025fc) db 0
    %%insn_025ff:
    mul word [bp-0x2996] ; 025FF F7A66AD6
    %if ($ - %%insn_025ff) > 4
        %error "LONG_025FF"
    %endif
    times 4 - ($ - %%insn_025ff) db 0
    db 0x8B, 0xF8 ; 02603 8BF8 | mov di,ax | encoding preserved
    db 0x8B, 0xF7 ; 02605 8BF7 | mov si,di | encoding preserved
    %%insn_02607:
    mov al,0x0 ; 02607 B000
    %if ($ - %%insn_02607) > 2
        %error "LONG_02607"
    %endif
    times 2 - ($ - %%insn_02607) db 0
    %%insn_02609:
    adc al,0x0 ; 02609 1400
    %if ($ - %%insn_02609) > 2
        %error "LONG_02609"
    %endif
    times 2 - ($ - %%insn_02609) db 0
    db 0x32, 0xE4 ; 0260B 32E4 | xor ah,ah | encoding preserved
    %%insn_0260d:
    mov [bp-0x3076],al ; 0260D 88868ACF
    %if ($ - %%insn_0260d) > 4
        %error "LONG_0260D"
    %endif
    times 4 - ($ - %%insn_0260d) db 0
    %%insn_02611:
    call word near [ss:0xd660] ; 02611 36FF1660D6
    %if ($ - %%insn_02611) > 5
        %error "LONG_02611"
    %endif
    times 5 - ($ - %%insn_02611) db 0
    %%insn_02616:
    call 0x2d5a ; 02616 E84107
    %if ($ - %%insn_02616) > 3
        %error "LONG_02616"
    %endif
    times 3 - ($ - %%insn_02616) db 0
    %%insn_02619:
    mov es,word [bp-0x2aac] ; 02619 8E8654D5
    %if ($ - %%insn_02619) > 4
        %error "LONG_02619"
    %endif
    times 4 - ($ - %%insn_02619) db 0
    %%insn_0261d:
    mov cx,0x140 ; 0261D B94001
    %if ($ - %%insn_0261d) > 3
        %error "LONG_0261D"
    %endif
    times 3 - ($ - %%insn_0261d) db 0
    %%insn_02620:
    push cx ; 02620 51
    %if ($ - %%insn_02620) > 1
        %error "LONG_02620"
    %endif
    times 1 - ($ - %%insn_02620) db 0
    %%insn_02621:
    mov cx,[bp-0x2996] ; 02621 8B8E6AD6
    %if ($ - %%insn_02621) > 4
        %error "LONG_02621"
    %endif
    times 4 - ($ - %%insn_02621) db 0
    %%insn_02625:
    shr cx,1 ; 02625 D1E9
    %if ($ - %%insn_02625) > 2
        %error "LONG_02625"
    %endif
    times 2 - ($ - %%insn_02625) db 0
    %%insn_02627:
    lodsw ; 02627 AD
    %if ($ - %%insn_02627) > 1
        %error "LONG_02627"
    %endif
    times 1 - ($ - %%insn_02627) db 0
    %%insn_02628:
    cmp al,0xff ; 02628 3CFF
    %if ($ - %%insn_02628) > 2
        %error "LONG_02628"
    %endif
    times 2 - ($ - %%insn_02628) db 0
    %%insn_0262a:
    jnz short 0x262e ; 0262A 7502
    %if ($ - %%insn_0262a) > 2
        %error "LONG_0262A"
    %endif
    times 2 - ($ - %%insn_0262a) db 0
    %%insn_0262c:
    mov al,0xfe ; 0262C B0FE
    %if ($ - %%insn_0262c) > 2
        %error "LONG_0262C"
    %endif
    times 2 - ($ - %%insn_0262c) db 0
    %%insn_0262e:
    cmp ah,0xff ; 0262E 80FCFF
    %if ($ - %%insn_0262e) > 3
        %error "LONG_0262E"
    %endif
    times 3 - ($ - %%insn_0262e) db 0
    %%insn_02631:
    jnz short 0x2635 ; 02631 7502
    %if ($ - %%insn_02631) > 2
        %error "LONG_02631"
    %endif
    times 2 - ($ - %%insn_02631) db 0
    %%insn_02633:
    mov ah,0xfe ; 02633 B4FE
    %if ($ - %%insn_02633) > 2
        %error "LONG_02633"
    %endif
    times 2 - ($ - %%insn_02633) db 0
    %%insn_02635:
    stosw ; 02635 AB
    %if ($ - %%insn_02635) > 1
        %error "LONG_02635"
    %endif
    times 1 - ($ - %%insn_02635) db 0
    db 0x23, 0xF6 ; 02636 23F6 | and si,si | encoding preserved
    %%insn_02638:
    jnz short 0x2694 ; 02638 755A
    %if ($ - %%insn_02638) > 2
        %error "LONG_02638"
    %endif
    times 2 - ($ - %%insn_02638) db 0
    %%insn_0263a:
    pusha ; 0263A 60
    %if ($ - %%insn_0263a) > 1
        %error "LONG_0263A"
    %endif
    times 1 - ($ - %%insn_0263a) db 0
    %%insn_0263b:
    push ds ; 0263B 1E
    %if ($ - %%insn_0263b) > 1
        %error "LONG_0263B"
    %endif
    times 1 - ($ - %%insn_0263b) db 0
    %%insn_0263c:
    mov ds,word [bp-0x2aae] ; 0263C 8E9E52D5
    %if ($ - %%insn_0263c) > 4
        %error "LONG_0263C"
    %endif
    times 4 - ($ - %%insn_0263c) db 0
    %%insn_02640:
    mov ax,[bp-0x2aac] ; 02640 8B8654D5
    %if ($ - %%insn_02640) > 4
        %error "LONG_02640"
    %endif
    times 4 - ($ - %%insn_02640) db 0
    %%insn_02644:
    mov dword [bp-0x2b92],0x10000 ; 02644 66C7866ED400000100
    %if ($ - %%insn_02644) > 9
        %error "LONG_02644"
    %endif
    times 9 - ($ - %%insn_02644) db 0
    %%insn_0264d:
    mov word [bp-0x2b8e],0x0 ; 0264D C78672D40000
    %if ($ - %%insn_0264d) > 6
        %error "LONG_0264D"
    %endif
    times 6 - ($ - %%insn_0264d) db 0
    %%insn_02653:
    mov word [bp-0x2b8c],0x0 ; 02653 C78674D40000
    %if ($ - %%insn_02653) > 6
        %error "LONG_02653"
    %endif
    times 6 - ($ - %%insn_02653) db 0
    %%insn_02659:
    mov [bp-0x2b8a],ax ; 02659 898676D4
    %if ($ - %%insn_02659) > 4
        %error "LONG_02659"
    %endif
    times 4 - ($ - %%insn_02659) db 0
    %%insn_0265d:
    mov ax,[bp-0x2ab0] ; 0265D 8B8650D5
    %if ($ - %%insn_0265d) > 4
        %error "LONG_0265D"
    %endif
    times 4 - ($ - %%insn_0265d) db 0
    %%insn_02661:
    mov [bp-0x2b88],ax ; 02661 898678D4
    %if ($ - %%insn_02661) > 4
        %error "LONG_02661"
    %endif
    times 4 - ($ - %%insn_02661) db 0
    %%insn_02665:
    mov al,[bp-0x3076] ; 02665 8A868ACF
    %if ($ - %%insn_02665) > 4
        %error "LONG_02665"
    %endif
    times 4 - ($ - %%insn_02665) db 0
    db 0x32, 0xE4 ; 02669 32E4 | xor ah,ah | encoding preserved
    %%insn_0266b:
    shl eax,byte 0x10 ; 0266B 66C1E010
    %if ($ - %%insn_0266b) > 4
        %error "LONG_0266B"
    %endif
    times 4 - ($ - %%insn_0266b) db 0
    %%insn_0266f:
    mov [bp-0x2b86],eax ; 0266F 6689867AD4
    %if ($ - %%insn_0266f) > 5
        %error "LONG_0266F"
    %endif
    times 5 - ($ - %%insn_0266f) db 0
    %%insn_02674:
    mov ah,0xb ; 02674 B40B
    %if ($ - %%insn_02674) > 2
        %error "LONG_02674"
    %endif
    times 2 - ($ - %%insn_02674) db 0
    %%insn_02676:
    mov si,0xd46e ; 02676 BE6ED4
    %if ($ - %%insn_02676) > 3
        %error "LONG_02676"
    %endif
    times 3 - ($ - %%insn_02676) db 0
    %%insn_02679:
    call word far [cs:0x3688] ; 02679 2EFF1E8836
    %if ($ - %%insn_02679) > 5
        %error "LONG_02679"
    %endif
    times 5 - ($ - %%insn_02679) db 0
    %%insn_0267e:
    pop ds ; 0267E 1F
    %if ($ - %%insn_0267e) > 1
        %error "LONG_0267E"
    %endif
    times 1 - ($ - %%insn_0267e) db 0
    %%insn_0267f:
    popa ; 0267F 61
    %if ($ - %%insn_0267f) > 1
        %error "LONG_0267F"
    %endif
    times 1 - ($ - %%insn_0267f) db 0
    %%insn_02680:
    mov al,[bp-0x3076] ; 02680 8A868ACF
    %if ($ - %%insn_02680) > 4
        %error "LONG_02680"
    %endif
    times 4 - ($ - %%insn_02680) db 0
    %%insn_02684:
    inc al ; 02684 FEC0
    %if ($ - %%insn_02684) > 2
        %error "LONG_02684"
    %endif
    times 2 - ($ - %%insn_02684) db 0
    db 0x32, 0xE4 ; 02686 32E4 | xor ah,ah | encoding preserved
    %%insn_02688:
    mov [bp-0x3076],al ; 02688 88868ACF
    %if ($ - %%insn_02688) > 4
        %error "LONG_02688"
    %endif
    times 4 - ($ - %%insn_02688) db 0
    %%insn_0268c:
    call word near [ss:0xd660] ; 0268C 36FF1660D6
    %if ($ - %%insn_0268c) > 5
        %error "LONG_0268C"
    %endif
    times 5 - ($ - %%insn_0268c) db 0
    %%insn_02691:
    call 0x2d5a ; 02691 E8C606
    %if ($ - %%insn_02691) > 3
        %error "LONG_02691"
    %endif
    times 3 - ($ - %%insn_02691) db 0
    %%insn_02694:
    dec cx ; 02694 49
    %if ($ - %%insn_02694) > 1
        %error "LONG_02694"
    %endif
    times 1 - ($ - %%insn_02694) db 0
    %%insn_02695:
    jnz short 0x2627 ; 02695 7590
    %if ($ - %%insn_02695) > 2
        %error "LONG_02695"
    %endif
    times 2 - ($ - %%insn_02695) db 0
    %%insn_02697:
    pop cx ; 02697 59
    %if ($ - %%insn_02697) > 1
        %error "LONG_02697"
    %endif
    times 1 - ($ - %%insn_02697) db 0
    %%insn_02698:
    dec cx ; 02698 49
    %if ($ - %%insn_02698) > 1
        %error "LONG_02698"
    %endif
    times 1 - ($ - %%insn_02698) db 0
    %%insn_02699:
    jnz short 0x2620 ; 02699 7585
    %if ($ - %%insn_02699) > 2
        %error "LONG_02699"
    %endif
    times 2 - ($ - %%insn_02699) db 0
    %%insn_0269b:
    pusha ; 0269B 60
    %if ($ - %%insn_0269b) > 1
        %error "LONG_0269B"
    %endif
    times 1 - ($ - %%insn_0269b) db 0
    %%insn_0269c:
    push ds ; 0269C 1E
    %if ($ - %%insn_0269c) > 1
        %error "LONG_0269C"
    %endif
    times 1 - ($ - %%insn_0269c) db 0
    %%insn_0269d:
    mov ds,word [bp-0x2aae] ; 0269D 8E9E52D5
    %if ($ - %%insn_0269d) > 4
        %error "LONG_0269D"
    %endif
    times 4 - ($ - %%insn_0269d) db 0
    %%insn_026a1:
    mov ax,[bp-0x2aac] ; 026A1 8B8654D5
    %if ($ - %%insn_026a1) > 4
        %error "LONG_026A1"
    %endif
    times 4 - ($ - %%insn_026a1) db 0
    %%insn_026a5:
    mov dword [bp-0x2b92],0x10000 ; 026A5 66C7866ED400000100
    %if ($ - %%insn_026a5) > 9
        %error "LONG_026A5"
    %endif
    times 9 - ($ - %%insn_026a5) db 0
    %%insn_026ae:
    mov word [bp-0x2b8e],0x0 ; 026AE C78672D40000
    %if ($ - %%insn_026ae) > 6
        %error "LONG_026AE"
    %endif
    times 6 - ($ - %%insn_026ae) db 0
    %%insn_026b4:
    mov word [bp-0x2b8c],0x0 ; 026B4 C78674D40000
    %if ($ - %%insn_026b4) > 6
        %error "LONG_026B4"
    %endif
    times 6 - ($ - %%insn_026b4) db 0
    %%insn_026ba:
    mov [bp-0x2b8a],ax ; 026BA 898676D4
    %if ($ - %%insn_026ba) > 4
        %error "LONG_026BA"
    %endif
    times 4 - ($ - %%insn_026ba) db 0
    %%insn_026be:
    mov ax,[bp-0x2ab0] ; 026BE 8B8650D5
    %if ($ - %%insn_026be) > 4
        %error "LONG_026BE"
    %endif
    times 4 - ($ - %%insn_026be) db 0
    %%insn_026c2:
    mov [bp-0x2b88],ax ; 026C2 898678D4
    %if ($ - %%insn_026c2) > 4
        %error "LONG_026C2"
    %endif
    times 4 - ($ - %%insn_026c2) db 0
    %%insn_026c6:
    mov al,[bp-0x3076] ; 026C6 8A868ACF
    %if ($ - %%insn_026c6) > 4
        %error "LONG_026C6"
    %endif
    times 4 - ($ - %%insn_026c6) db 0
    db 0x32, 0xE4 ; 026CA 32E4 | xor ah,ah | encoding preserved
    %%insn_026cc:
    shl eax,byte 0x10 ; 026CC 66C1E010
    %if ($ - %%insn_026cc) > 4
        %error "LONG_026CC"
    %endif
    times 4 - ($ - %%insn_026cc) db 0
    %%insn_026d0:
    mov [bp-0x2b86],eax ; 026D0 6689867AD4
    %if ($ - %%insn_026d0) > 5
        %error "LONG_026D0"
    %endif
    times 5 - ($ - %%insn_026d0) db 0
    %%insn_026d5:
    mov ah,0xb ; 026D5 B40B
    %if ($ - %%insn_026d5) > 2
        %error "LONG_026D5"
    %endif
    times 2 - ($ - %%insn_026d5) db 0
    %%insn_026d7:
    mov si,0xd46e ; 026D7 BE6ED4
    %if ($ - %%insn_026d7) > 3
        %error "LONG_026D7"
    %endif
    times 3 - ($ - %%insn_026d7) db 0
    %%insn_026da:
    call word far [cs:0x3688] ; 026DA 2EFF1E8836
    %if ($ - %%insn_026da) > 5
        %error "LONG_026DA"
    %endif
    times 5 - ($ - %%insn_026da) db 0
    %%insn_026df:
    pop ds ; 026DF 1F
    %if ($ - %%insn_026df) > 1
        %error "LONG_026DF"
    %endif
    times 1 - ($ - %%insn_026df) db 0
    %%insn_026e0:
    popa ; 026E0 61
    %if ($ - %%insn_026e0) > 1
        %error "LONG_026E0"
    %endif
    times 1 - ($ - %%insn_026e0) db 0
    %%insn_026e1:
    popa ; 026E1 61
    %if ($ - %%insn_026e1) > 1
        %error "LONG_026E1"
    %endif
    times 1 - ($ - %%insn_026e1) db 0
    %%insn_026e2:
    pop es ; 026E2 07
    %if ($ - %%insn_026e2) > 1
        %error "LONG_026E2"
    %endif
    times 1 - ($ - %%insn_026e2) db 0
    %%insn_026e3:
    pop ds ; 026E3 1F
    %if ($ - %%insn_026e3) > 1
        %error "LONG_026E3"
    %endif
    times 1 - ($ - %%insn_026e3) db 0
    %%insn_026e4:
    ret ; 026E4 C3
    %if ($ - %%insn_026e4) > 1
        %error "LONG_026E4"
    %endif
    times 1 - ($ - %%insn_026e4) db 0
    %if ($ - %%fragment_start) != 340
        %error "SIZE_02591"
    %endif
%endmacro
