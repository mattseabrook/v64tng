; Linear entry 0656C (1000:656c)
; Ghidra working symbol: FUN_1000_656c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0656c_part_00 0
    %%fragment_start:
func_0656c:
    %%insn_0656c:
    push bp ; 0656C 55
    %if ($ - %%insn_0656c) > 1
        %error "LONG_0656C"
    %endif
    times 1 - ($ - %%insn_0656c) db 0
    db 0x8B, 0xEC ; 0656D 8BEC | mov bp,sp | encoding preserved
    %%insn_0656f:
    sub sp,0xa ; 0656F 83EC0A
    %if ($ - %%insn_0656f) > 3
        %error "LONG_0656F"
    %endif
    times 3 - ($ - %%insn_0656f) db 0
    %%insn_06572:
    push bx ; 06572 53
    %if ($ - %%insn_06572) > 1
        %error "LONG_06572"
    %endif
    times 1 - ($ - %%insn_06572) db 0
    %%insn_06573:
    push dx ; 06573 52
    %if ($ - %%insn_06573) > 1
        %error "LONG_06573"
    %endif
    times 1 - ($ - %%insn_06573) db 0
    %%insn_06574:
    push ax ; 06574 50
    %if ($ - %%insn_06574) > 1
        %error "LONG_06574"
    %endif
    times 1 - ($ - %%insn_06574) db 0
    %%insn_06575:
    push di ; 06575 57
    %if ($ - %%insn_06575) > 1
        %error "LONG_06575"
    %endif
    times 1 - ($ - %%insn_06575) db 0
    %%insn_06576:
    push si ; 06576 56
    %if ($ - %%insn_06576) > 1
        %error "LONG_06576"
    %endif
    times 1 - ($ - %%insn_06576) db 0
    %%insn_06577:
    mov bx,[0xe903] ; 06577 8B1E03E9
    %if ($ - %%insn_06577) > 4
        %error "LONG_06577"
    %endif
    times 4 - ($ - %%insn_06577) db 0
    %%insn_0657b:
    mov cx,0x1c ; 0657B B91C00
    %if ($ - %%insn_0657b) > 3
        %error "LONG_0657B"
    %endif
    times 3 - ($ - %%insn_0657b) db 0
    %%insn_0657e:
    lea di,[bx-0x16dd] ; 0657E 8DBF23E9
    %if ($ - %%insn_0657e) > 4
        %error "LONG_0657E"
    %endif
    times 4 - ($ - %%insn_0657e) db 0
    %%insn_06582:
    mov si,0xe484 ; 06582 BE84E4
    %if ($ - %%insn_06582) > 3
        %error "LONG_06582"
    %endif
    times 3 - ($ - %%insn_06582) db 0
    %%insn_06585:
    push ds ; 06585 1E
    %if ($ - %%insn_06585) > 1
        %error "LONG_06585"
    %endif
    times 1 - ($ - %%insn_06585) db 0
    %%insn_06586:
    pop es ; 06586 07
    %if ($ - %%insn_06586) > 1
        %error "LONG_06586"
    %endif
    times 1 - ($ - %%insn_06586) db 0
    %%insn_06587:
    rep movsw ; 06587 F3A5
    %if ($ - %%insn_06587) > 2
        %error "LONG_06587"
    %endif
    times 2 - ($ - %%insn_06587) db 0
    %%insn_06589:
    movsb ; 06589 A4
    %if ($ - %%insn_06589) > 1
        %error "LONG_06589"
    %endif
    times 1 - ($ - %%insn_06589) db 0
    %%insn_0658a:
    add word [0xe903],0x39 ; 0658A 830603E939
    %if ($ - %%insn_0658a) > 5
        %error "LONG_0658A"
    %endif
    times 5 - ($ - %%insn_0658a) db 0
    %%insn_0658f:
    mov ax,0xe484 ; 0658F B884E4
    %if ($ - %%insn_0658f) > 3
        %error "LONG_0658F"
    %endif
    times 3 - ($ - %%insn_0658f) db 0
    %%insn_06592:
    mov cx,0x1a ; 06592 B91A00
    %if ($ - %%insn_06592) > 3
        %error "LONG_06592"
    %endif
    times 3 - ($ - %%insn_06592) db 0
    db 0x8B, 0xF8 ; 06595 8BF8 | mov di,ax | encoding preserved
    %%insn_06597:
    mov si,0xeb96 ; 06597 BE96EB
    %if ($ - %%insn_06597) > 3
        %error "LONG_06597"
    %endif
    times 3 - ($ - %%insn_06597) db 0
    %%insn_0659a:
    rep movsw ; 0659A F3A5
    %if ($ - %%insn_0659a) > 2
        %error "LONG_0659A"
    %endif
    times 2 - ($ - %%insn_0659a) db 0
    %%insn_0659c:
    movsb ; 0659C A4
    %if ($ - %%insn_0659c) > 1
        %error "LONG_0659C"
    %endif
    times 1 - ($ - %%insn_0659c) db 0
    %%insn_0659d:
    mov al,[bp-0xe] ; 0659D 8A46F2
    %if ($ - %%insn_0659d) > 3
        %error "LONG_0659D"
    %endif
    times 3 - ($ - %%insn_0659d) db 0
    %%insn_065a0:
    mov [bp-0x7],al ; 065A0 8846F9
    %if ($ - %%insn_065a0) > 3
        %error "LONG_065A0"
    %endif
    times 3 - ($ - %%insn_065a0) db 0
    db 0x2B, 0xFF ; 065A3 2BFF | sub di,di | encoding preserved
    %%insn_065a5:
    inc byte [bp-0x7] ; 065A5 FE46F9
    %if ($ - %%insn_065a5) > 3
        %error "LONG_065A5"
    %endif
    times 3 - ($ - %%insn_065a5) db 0
    %%insn_065a8:
    cmp byte [bp-0x7],0x4 ; 065A8 807EF904
    %if ($ - %%insn_065a8) > 4
        %error "LONG_065A8"
    %endif
    times 4 - ($ - %%insn_065a8) db 0
    %%insn_065ac:
    jng short 0x65b2 ; 065AC 7E04
    %if ($ - %%insn_065ac) > 2
        %error "LONG_065AC"
    %endif
    times 2 - ($ - %%insn_065ac) db 0
    %%insn_065ae:
    mov byte [bp-0x7],0x1 ; 065AE C646F901
    %if ($ - %%insn_065ae) > 4
        %error "LONG_065AE"
    %endif
    times 4 - ($ - %%insn_065ae) db 0
    %%insn_065b2:
    mov al,[bp-0x7] ; 065B2 8A46F9
    %if ($ - %%insn_065b2) > 3
        %error "LONG_065B2"
    %endif
    times 3 - ($ - %%insn_065b2) db 0
    %%insn_065b5:
    cbw ; 065B5 98
    %if ($ - %%insn_065b5) > 1
        %error "LONG_065B5"
    %endif
    times 1 - ($ - %%insn_065b5) db 0
    db 0x8B, 0xD8 ; 065B6 8BD8 | mov bx,ax | encoding preserved
    %%insn_065b8:
    mov al,[bx-0x1b4c] ; 065B8 8A87B4E4
    %if ($ - %%insn_065b8) > 4
        %error "LONG_065B8"
    %endif
    times 4 - ($ - %%insn_065b8) db 0
    %%insn_065bc:
    mov [bp-0xa],al ; 065BC 8846F6
    %if ($ - %%insn_065bc) > 3
        %error "LONG_065BC"
    %endif
    times 3 - ($ - %%insn_065bc) db 0
    db 0x0A, 0xC0 ; 065BF 0AC0 | or al,al | encoding preserved
    %%insn_065c1:
    jz short 0x6610 ; 065C1 744D
    %if ($ - %%insn_065c1) > 2
        %error "LONG_065C1"
    %endif
    times 2 - ($ - %%insn_065c1) db 0
    %%insn_065c3:
    mov al,[0xe4b5] ; 065C3 A0B5E4
    %if ($ - %%insn_065c3) > 3
        %error "LONG_065C3"
    %endif
    times 3 - ($ - %%insn_065c3) db 0
    %%insn_065c6:
    cbw ; 065C6 98
    %if ($ - %%insn_065c6) > 1
        %error "LONG_065C6"
    %endif
    times 1 - ($ - %%insn_065c6) db 0
    db 0x2D, 0x31, 0x00 ; 065C7 2D3100 | sub ax,0x31 | encoding preserved
    %%insn_065ca:
    neg ax ; 065CA F7D8
    %if ($ - %%insn_065ca) > 2
        %error "LONG_065CA"
    %endif
    times 2 - ($ - %%insn_065ca) db 0
    db 0x8B, 0xC8 ; 065CC 8BC8 | mov cx,ax | encoding preserved
    %%insn_065ce:
    mov al,[0xe4b6] ; 065CE A0B6E4
    %if ($ - %%insn_065ce) > 3
        %error "LONG_065CE"
    %endif
    times 3 - ($ - %%insn_065ce) db 0
    %%insn_065d1:
    cbw ; 065D1 98
    %if ($ - %%insn_065d1) > 1
        %error "LONG_065D1"
    %endif
    times 1 - ($ - %%insn_065d1) db 0
    db 0x2B, 0xC8 ; 065D2 2BC8 | sub cx,ax | encoding preserved
    %%insn_065d4:
    mov al,[0xe4b7] ; 065D4 A0B7E4
    %if ($ - %%insn_065d4) > 3
        %error "LONG_065D4"
    %endif
    times 3 - ($ - %%insn_065d4) db 0
    %%insn_065d7:
    cbw ; 065D7 98
    %if ($ - %%insn_065d7) > 1
        %error "LONG_065D7"
    %endif
    times 1 - ($ - %%insn_065d7) db 0
    db 0x2B, 0xC8 ; 065D8 2BC8 | sub cx,ax | encoding preserved
    %%insn_065da:
    mov al,[0xe4b8] ; 065DA A0B8E4
    %if ($ - %%insn_065da) > 3
        %error "LONG_065DA"
    %endif
    times 3 - ($ - %%insn_065da) db 0
    %%insn_065dd:
    cbw ; 065DD 98
    %if ($ - %%insn_065dd) > 1
        %error "LONG_065DD"
    %endif
    times 1 - ($ - %%insn_065dd) db 0
    db 0x2B, 0xC8 ; 065DE 2BC8 | sub cx,ax | encoding preserved
    %%insn_065e0:
    mov al,[bp-0xa] ; 065E0 8A46F6
    %if ($ - %%insn_065e0) > 3
        %error "LONG_065E0"
    %endif
    times 3 - ($ - %%insn_065e0) db 0
    %%insn_065e3:
    cbw ; 065E3 98
    %if ($ - %%insn_065e3) > 1
        %error "LONG_065E3"
    %endif
    times 1 - ($ - %%insn_065e3) db 0
    db 0x3B, 0xC8 ; 065E4 3BC8 | cmp cx,ax | encoding preserved
    %%insn_065e6:
    jng short 0x65fe ; 065E6 7E16
    %if ($ - %%insn_065e6) > 2
        %error "LONG_065E6"
    %endif
    times 2 - ($ - %%insn_065e6) db 0
    %%insn_065e8:
    call 0x5fb6 ; 065E8 E8CBF9
    %if ($ - %%insn_065e8) > 3
        %error "LONG_065E8"
    %endif
    times 3 - ($ - %%insn_065e8) db 0
    %%insn_065eb:
    mov word [bp-0x6],0x5fe4 ; 065EB C746FAE45F
    %if ($ - %%insn_065eb) > 5
        %error "LONG_065EB"
    %endif
    times 5 - ($ - %%insn_065eb) db 0
    %%insn_065f0:
    cmp word [bp-0xc],0x1 ; 065F0 837EF401
    %if ($ - %%insn_065f0) > 4
        %error "LONG_065F0"
    %endif
    times 4 - ($ - %%insn_065f0) db 0
    %%insn_065f4:
    jnz short 0x6606 ; 065F4 7510
    %if ($ - %%insn_065f4) > 2
        %error "LONG_065F4"
    %endif
    times 2 - ($ - %%insn_065f4) db 0
    %%insn_065f6:
    mov word [bp-0x6],0x60d0 ; 065F6 C746FAD060
    %if ($ - %%insn_065f6) > 5
        %error "LONG_065F6"
    %endif
    times 5 - ($ - %%insn_065f6) db 0
    %%insn_065fb:
    jmp short 0x6606 ; 065FB EB09
    %if ($ - %%insn_065fb) > 2
        %error "LONG_065FB"
    %endif
    times 2 - ($ - %%insn_065fb) db 0
    %if ($ - %%fragment_start) != 145
        %error "SIZE_0656C"
    %endif
%endmacro

%macro emit_func_0656c_part_01 0
    %%fragment_start:
    %%insn_065fe:
    call 0x5fd8 ; 065FE E8D7F9
    %if ($ - %%insn_065fe) > 3
        %error "LONG_065FE"
    %endif
    times 3 - ($ - %%insn_065fe) db 0
    %%insn_06601:
    mov word [bp-0x6],0x61d0 ; 06601 C746FAD061
    %if ($ - %%insn_06601) > 5
        %error "LONG_06601"
    %endif
    times 5 - ($ - %%insn_06601) db 0
    %%insn_06606:
    mov al,[bp-0x7] ; 06606 8A46F9
    %if ($ - %%insn_06606) > 3
        %error "LONG_06606"
    %endif
    times 3 - ($ - %%insn_06606) db 0
    %%insn_06609:
    call word near [bp-0x6] ; 06609 FF56FA
    %if ($ - %%insn_06609) > 3
        %error "LONG_06609"
    %endif
    times 3 - ($ - %%insn_06609) db 0
    db 0x0B, 0xC0 ; 0660C 0BC0 | or ax,ax | encoding preserved
    %%insn_0660e:
    jnz short 0x661a ; 0660E 750A
    %if ($ - %%insn_0660e) > 2
        %error "LONG_0660E"
    %endif
    times 2 - ($ - %%insn_0660e) db 0
    %%insn_06610:
    inc di ; 06610 47
    %if ($ - %%insn_06610) > 1
        %error "LONG_06610"
    %endif
    times 1 - ($ - %%insn_06610) db 0
    %%insn_06611:
    cmp di,0x4 ; 06611 83FF04
    %if ($ - %%insn_06611) > 3
        %error "LONG_06611"
    %endif
    times 3 - ($ - %%insn_06611) db 0
    %%insn_06614:
    jl short 0x65a5 ; 06614 7C8F
    %if ($ - %%insn_06614) > 2
        %error "LONG_06614"
    %endif
    times 2 - ($ - %%insn_06614) db 0
    %%insn_06616:
    jmp 0x67fc ; 06616 E9E301
    %if ($ - %%insn_06616) > 3
        %error "LONG_06616"
    %endif
    times 3 - ($ - %%insn_06616) db 0
    %if ($ - %%fragment_start) != 27
        %error "SIZE_065FE"
    %endif
%endmacro

%macro emit_func_0656c_part_02 0
    %%fragment_start:
    %%insn_0661a:
    cmp byte [0xe8fb],0x0 ; 0661A 803EFBE800
    %if ($ - %%insn_0661a) > 5
        %error "LONG_0661A"
    %endif
    times 5 - ($ - %%insn_0661a) db 0
    %%insn_0661f:
    jz short 0x6644 ; 0661F 7423
    %if ($ - %%insn_0661f) > 2
        %error "LONG_0661F"
    %endif
    times 2 - ($ - %%insn_0661f) db 0
    %%insn_06621:
    sub word [0xe903],0x39 ; 06621 832E03E939
    %if ($ - %%insn_06621) > 5
        %error "LONG_06621"
    %endif
    times 5 - ($ - %%insn_06621) db 0
    %%insn_06626:
    mov ax,0xe484 ; 06626 B884E4
    %if ($ - %%insn_06626) > 3
        %error "LONG_06626"
    %endif
    times 3 - ($ - %%insn_06626) db 0
    %%insn_06629:
    mov bx,[0xe903] ; 06629 8B1E03E9
    %if ($ - %%insn_06629) > 4
        %error "LONG_06629"
    %endif
    times 4 - ($ - %%insn_06629) db 0
    %%insn_0662d:
    mov cx,0x1c ; 0662D B91C00
    %if ($ - %%insn_0662d) > 3
        %error "LONG_0662D"
    %endif
    times 3 - ($ - %%insn_0662d) db 0
    db 0x8B, 0xF8 ; 06630 8BF8 | mov di,ax | encoding preserved
    %%insn_06632:
    lea si,[bx-0x16dd] ; 06632 8DB723E9
    %if ($ - %%insn_06632) > 4
        %error "LONG_06632"
    %endif
    times 4 - ($ - %%insn_06632) db 0
    %%insn_06636:
    push ds ; 06636 1E
    %if ($ - %%insn_06636) > 1
        %error "LONG_06636"
    %endif
    times 1 - ($ - %%insn_06636) db 0
    %%insn_06637:
    pop es ; 06637 07
    %if ($ - %%insn_06637) > 1
        %error "LONG_06637"
    %endif
    times 1 - ($ - %%insn_06637) db 0
    %%insn_06638:
    rep movsw ; 06638 F3A5
    %if ($ - %%insn_06638) > 2
        %error "LONG_06638"
    %endif
    times 2 - ($ - %%insn_06638) db 0
    %%insn_0663a:
    movsb ; 0663A A4
    %if ($ - %%insn_0663a) > 1
        %error "LONG_0663A"
    %endif
    times 1 - ($ - %%insn_0663a) db 0
    %%insn_0663b:
    mov al,[bp+0x4] ; 0663B 8A4604
    %if ($ - %%insn_0663b) > 3
        %error "LONG_0663B"
    %endif
    times 3 - ($ - %%insn_0663b) db 0
    %%insn_0663e:
    inc al ; 0663E FEC0
    %if ($ - %%insn_0663e) > 2
        %error "LONG_0663E"
    %endif
    times 2 - ($ - %%insn_0663e) db 0
    %%insn_06640:
    jmp 0x683e ; 06640 E9FB01
    %if ($ - %%insn_06640) > 3
        %error "LONG_06640"
    %endif
    times 3 - ($ - %%insn_06640) db 0
    %if ($ - %%fragment_start) != 41
        %error "SIZE_0661A"
    %endif
%endmacro

%macro emit_func_0656c_part_03 0
    %%fragment_start:
    %%insn_06644:
    dec word [bp-0xc] ; 06644 FF4EF4
    %if ($ - %%insn_06644) > 3
        %error "LONG_06644"
    %endif
    times 3 - ($ - %%insn_06644) db 0
    %%insn_06647:
    jz short 0x66b0 ; 06647 7467
    %if ($ - %%insn_06647) > 2
        %error "LONG_06647"
    %endif
    times 2 - ($ - %%insn_06647) db 0
    %%insn_06649:
    mov al,[bp-0x7] ; 06649 8A46F9
    %if ($ - %%insn_06649) > 3
        %error "LONG_06649"
    %endif
    times 3 - ($ - %%insn_06649) db 0
    %%insn_0664c:
    call 0x6290 ; 0664C E841FC
    %if ($ - %%insn_0664c) > 3
        %error "LONG_0664C"
    %endif
    times 3 - ($ - %%insn_0664c) db 0
    %%insn_0664f:
    cmp word [bp-0x6],0x61d0 ; 0664F 817EFAD061
    %if ($ - %%insn_0664f) > 5
        %error "LONG_0664F"
    %endif
    times 5 - ($ - %%insn_0664f) db 0
    %%insn_06654:
    jnz short 0x6668 ; 06654 7512
    %if ($ - %%insn_06654) > 2
        %error "LONG_06654"
    %endif
    times 2 - ($ - %%insn_06654) db 0
    %%insn_06656:
    mov al,[bp+0x4] ; 06656 8A4604
    %if ($ - %%insn_06656) > 3
        %error "LONG_06656"
    %endif
    times 3 - ($ - %%insn_06656) db 0
    %%insn_06659:
    push ax ; 06659 50
    %if ($ - %%insn_06659) > 1
        %error "LONG_06659"
    %endif
    times 1 - ($ - %%insn_06659) db 0
    %%insn_0665a:
    mov al,[bp-0x10] ; 0665A 8A46F0
    %if ($ - %%insn_0665a) > 3
        %error "LONG_0665A"
    %endif
    times 3 - ($ - %%insn_0665a) db 0
    %%insn_0665d:
    mov dl,[bp-0x7] ; 0665D 8A56F9
    %if ($ - %%insn_0665d) > 3
        %error "LONG_0665D"
    %endif
    times 3 - ($ - %%insn_0665d) db 0
    %%insn_06660:
    mov bx,[bp-0xc] ; 06660 8B5EF4
    %if ($ - %%insn_06660) > 3
        %error "LONG_06660"
    %endif
    times 3 - ($ - %%insn_06660) db 0
    %%insn_06663:
    call 0x656c ; 06663 E806FF
    %if ($ - %%insn_06663) > 3
        %error "LONG_06663"
    %endif
    times 3 - ($ - %%insn_06663) db 0
    %%insn_06666:
    jmp short 0x66b9 ; 06666 EB51
    %if ($ - %%insn_06666) > 2
        %error "LONG_06666"
    %endif
    times 2 - ($ - %%insn_06666) db 0
    %%insn_06668:
    mov bx,[0xe903] ; 06668 8B1E03E9
    %if ($ - %%insn_06668) > 4
        %error "LONG_06668"
    %endif
    times 4 - ($ - %%insn_06668) db 0
    %%insn_0666c:
    mov cx,0x1c ; 0666C B91C00
    %if ($ - %%insn_0666c) > 3
        %error "LONG_0666C"
    %endif
    times 3 - ($ - %%insn_0666c) db 0
    %%insn_0666f:
    lea di,[bx-0x16dd] ; 0666F 8DBF23E9
    %if ($ - %%insn_0666f) > 4
        %error "LONG_0666F"
    %endif
    times 4 - ($ - %%insn_0666f) db 0
    %%insn_06673:
    mov si,0xeb5d ; 06673 BE5DEB
    %if ($ - %%insn_06673) > 3
        %error "LONG_06673"
    %endif
    times 3 - ($ - %%insn_06673) db 0
    %%insn_06676:
    push ds ; 06676 1E
    %if ($ - %%insn_06676) > 1
        %error "LONG_06676"
    %endif
    times 1 - ($ - %%insn_06676) db 0
    %%insn_06677:
    pop es ; 06677 07
    %if ($ - %%insn_06677) > 1
        %error "LONG_06677"
    %endif
    times 1 - ($ - %%insn_06677) db 0
    %%insn_06678:
    rep movsw ; 06678 F3A5
    %if ($ - %%insn_06678) > 2
        %error "LONG_06678"
    %endif
    times 2 - ($ - %%insn_06678) db 0
    %%insn_0667a:
    movsb ; 0667A A4
    %if ($ - %%insn_0667a) > 1
        %error "LONG_0667A"
    %endif
    times 1 - ($ - %%insn_0667a) db 0
    %%insn_0667b:
    add word [0xe903],0x39 ; 0667B 830603E939
    %if ($ - %%insn_0667b) > 5
        %error "LONG_0667B"
    %endif
    times 5 - ($ - %%insn_0667b) db 0
    %%insn_06680:
    mov al,[bp+0x4] ; 06680 8A4604
    %if ($ - %%insn_06680) > 3
        %error "LONG_06680"
    %endif
    times 3 - ($ - %%insn_06680) db 0
    %%insn_06683:
    push ax ; 06683 50
    %if ($ - %%insn_06683) > 1
        %error "LONG_06683"
    %endif
    times 1 - ($ - %%insn_06683) db 0
    %%insn_06684:
    mov al,[bp-0x10] ; 06684 8A46F0
    %if ($ - %%insn_06684) > 3
        %error "LONG_06684"
    %endif
    times 3 - ($ - %%insn_06684) db 0
    %%insn_06687:
    mov dl,[bp-0x7] ; 06687 8A56F9
    %if ($ - %%insn_06687) > 3
        %error "LONG_06687"
    %endif
    times 3 - ($ - %%insn_06687) db 0
    %%insn_0668a:
    mov bx,[bp-0xc] ; 0668A 8B5EF4
    %if ($ - %%insn_0668a) > 3
        %error "LONG_0668A"
    %endif
    times 3 - ($ - %%insn_0668a) db 0
    %%insn_0668d:
    call 0x656c ; 0668D E8DCFE
    %if ($ - %%insn_0668d) > 3
        %error "LONG_0668D"
    %endif
    times 3 - ($ - %%insn_0668d) db 0
    %%insn_06690:
    mov [bp-0x2],al ; 06690 8846FE
    %if ($ - %%insn_06690) > 3
        %error "LONG_06690"
    %endif
    times 3 - ($ - %%insn_06690) db 0
    %%insn_06693:
    sub word [0xe903],0x39 ; 06693 832E03E939
    %if ($ - %%insn_06693) > 5
        %error "LONG_06693"
    %endif
    times 5 - ($ - %%insn_06693) db 0
    %%insn_06698:
    mov ax,0xeb5d ; 06698 B85DEB
    %if ($ - %%insn_06698) > 3
        %error "LONG_06698"
    %endif
    times 3 - ($ - %%insn_06698) db 0
    %%insn_0669b:
    mov bx,[0xe903] ; 0669B 8B1E03E9
    %if ($ - %%insn_0669b) > 4
        %error "LONG_0669B"
    %endif
    times 4 - ($ - %%insn_0669b) db 0
    %%insn_0669f:
    mov cx,0x1c ; 0669F B91C00
    %if ($ - %%insn_0669f) > 3
        %error "LONG_0669F"
    %endif
    times 3 - ($ - %%insn_0669f) db 0
    db 0x8B, 0xF8 ; 066A2 8BF8 | mov di,ax | encoding preserved
    %%insn_066a4:
    lea si,[bx-0x16dd] ; 066A4 8DB723E9
    %if ($ - %%insn_066a4) > 4
        %error "LONG_066A4"
    %endif
    times 4 - ($ - %%insn_066a4) db 0
    %%insn_066a8:
    push ds ; 066A8 1E
    %if ($ - %%insn_066a8) > 1
        %error "LONG_066A8"
    %endif
    times 1 - ($ - %%insn_066a8) db 0
    %%insn_066a9:
    pop es ; 066A9 07
    %if ($ - %%insn_066a9) > 1
        %error "LONG_066A9"
    %endif
    times 1 - ($ - %%insn_066a9) db 0
    %%insn_066aa:
    rep movsw ; 066AA F3A5
    %if ($ - %%insn_066aa) > 2
        %error "LONG_066AA"
    %endif
    times 2 - ($ - %%insn_066aa) db 0
    %%insn_066ac:
    movsb ; 066AC A4
    %if ($ - %%insn_066ac) > 1
        %error "LONG_066AC"
    %endif
    times 1 - ($ - %%insn_066ac) db 0
    %%insn_066ad:
    jmp short 0x66bc ; 066AD EB0D
    %if ($ - %%insn_066ad) > 2
        %error "LONG_066AD"
    %endif
    times 2 - ($ - %%insn_066ad) db 0
    %if ($ - %%fragment_start) != 107
        %error "SIZE_06644"
    %endif
%endmacro

%macro emit_func_0656c_part_04 0
    %%fragment_start:
    %%insn_066b0:
    mov al,[bp-0x10] ; 066B0 8A46F0
    %if ($ - %%insn_066b0) > 3
        %error "LONG_066B0"
    %endif
    times 3 - ($ - %%insn_066b0) db 0
    %%insn_066b3:
    mov dl,[bp-0x7] ; 066B3 8A56F9
    %if ($ - %%insn_066b3) > 3
        %error "LONG_066B3"
    %endif
    times 3 - ($ - %%insn_066b3) db 0
    %%insn_066b6:
    call 0x62ea ; 066B6 E831FC
    %if ($ - %%insn_066b6) > 3
        %error "LONG_066B6"
    %endif
    times 3 - ($ - %%insn_066b6) db 0
    %%insn_066b9:
    mov [bp-0x2],al ; 066B9 8846FE
    %if ($ - %%insn_066b9) > 3
        %error "LONG_066B9"
    %endif
    times 3 - ($ - %%insn_066b9) db 0
    %%insn_066bc:
    mov al,[bp+0x4] ; 066BC 8A4604
    %if ($ - %%insn_066bc) > 3
        %error "LONG_066BC"
    %endif
    times 3 - ($ - %%insn_066bc) db 0
    %%insn_066bf:
    cmp [bp-0x2],al ; 066BF 3846FE
    %if ($ - %%insn_066bf) > 3
        %error "LONG_066BF"
    %endif
    times 3 - ($ - %%insn_066bf) db 0
    %%insn_066c2:
    jnl short 0x66cf ; 066C2 7D0B
    %if ($ - %%insn_066c2) > 2
        %error "LONG_066C2"
    %endif
    times 2 - ($ - %%insn_066c2) db 0
    %%insn_066c4:
    mov al,[bp-0x7] ; 066C4 8A46F9
    %if ($ - %%insn_066c4) > 3
        %error "LONG_066C4"
    %endif
    times 3 - ($ - %%insn_066c4) db 0
    %%insn_066c7:
    cmp [bp-0x10],al ; 066C7 3846F0
    %if ($ - %%insn_066c7) > 3
        %error "LONG_066C7"
    %endif
    times 3 - ($ - %%insn_066c7) db 0
    %%insn_066ca:
    jz short 0x66cf ; 066CA 7403
    %if ($ - %%insn_066ca) > 2
        %error "LONG_066CA"
    %endif
    times 2 - ($ - %%insn_066ca) db 0
    %%insn_066cc:
    jmp 0x6821 ; 066CC E95201
    %if ($ - %%insn_066cc) > 3
        %error "LONG_066CC"
    %endif
    times 3 - ($ - %%insn_066cc) db 0
    %%insn_066cf:
    cmp word [0xe905],0x0 ; 066CF 833E05E900
    %if ($ - %%insn_066cf) > 5
        %error "LONG_066CF"
    %endif
    times 5 - ($ - %%insn_066cf) db 0
    %%insn_066d4:
    jz short 0x66d9 ; 066D4 7403
    %if ($ - %%insn_066d4) > 2
        %error "LONG_066D4"
    %endif
    times 2 - ($ - %%insn_066d4) db 0
    %%insn_066d6:
    jmp 0x6821 ; 066D6 E94801
    %if ($ - %%insn_066d6) > 3
        %error "LONG_066D6"
    %endif
    times 3 - ($ - %%insn_066d6) db 0
    %%insn_066d9:
    mov al,[bp-0x10] ; 066D9 8A46F0
    %if ($ - %%insn_066d9) > 3
        %error "LONG_066D9"
    %endif
    times 3 - ($ - %%insn_066d9) db 0
    %%insn_066dc:
    cbw ; 066DC 98
    %if ($ - %%insn_066dc) > 1
        %error "LONG_066DC"
    %endif
    times 1 - ($ - %%insn_066dc) db 0
    db 0x8B, 0xD8 ; 066DD 8BD8 | mov bx,ax | encoding preserved
    %%insn_066df:
    mov al,[bx-0x1b4c] ; 066DF 8A87B4E4
    %if ($ - %%insn_066df) > 4
        %error "LONG_066DF"
    %endif
    times 4 - ($ - %%insn_066df) db 0
    %%insn_066e3:
    shl al,1 ; 066E3 D0E0
    %if ($ - %%insn_066e3) > 2
        %error "LONG_066E3"
    %endif
    times 2 - ($ - %%insn_066e3) db 0
    %%insn_066e5:
    sub al,[0xe4b5] ; 066E5 2A06B5E4
    %if ($ - %%insn_066e5) > 4
        %error "LONG_066E5"
    %endif
    times 4 - ($ - %%insn_066e5) db 0
    %%insn_066e9:
    sub al,[0xe4b6] ; 066E9 2A06B6E4
    %if ($ - %%insn_066e9) > 4
        %error "LONG_066E9"
    %endif
    times 4 - ($ - %%insn_066e9) db 0
    %%insn_066ed:
    sub al,[0xe4b7] ; 066ED 2A06B7E4
    %if ($ - %%insn_066ed) > 4
        %error "LONG_066ED"
    %endif
    times 4 - ($ - %%insn_066ed) db 0
    %%insn_066f1:
    sub al,[0xe4b8] ; 066F1 2A06B8E4
    %if ($ - %%insn_066f1) > 4
        %error "LONG_066F1"
    %endif
    times 4 - ($ - %%insn_066f1) db 0
    %%insn_066f5:
    shl al,1 ; 066F5 D0E0
    %if ($ - %%insn_066f5) > 2
        %error "LONG_066F5"
    %endif
    times 2 - ($ - %%insn_066f5) db 0
    %%insn_066f7:
    add al,[0xe8fc] ; 066F7 0206FCE8
    %if ($ - %%insn_066f7) > 4
        %error "LONG_066F7"
    %endif
    times 4 - ($ - %%insn_066f7) db 0
    %%insn_066fb:
    mov [bp-0x3],al ; 066FB 8846FD
    %if ($ - %%insn_066fb) > 3
        %error "LONG_066FB"
    %endif
    times 3 - ($ - %%insn_066fb) db 0
    %%insn_066fe:
    mov al,[bp-0x7] ; 066FE 8A46F9
    %if ($ - %%insn_066fe) > 3
        %error "LONG_066FE"
    %endif
    times 3 - ($ - %%insn_066fe) db 0
    %%insn_06701:
    call word near [bp-0x6] ; 06701 FF56FA
    %if ($ - %%insn_06701) > 3
        %error "LONG_06701"
    %endif
    times 3 - ($ - %%insn_06701) db 0
    db 0x0B, 0xC0 ; 06704 0BC0 | or ax,ax | encoding preserved
    %%insn_06706:
    jnz short 0x670b ; 06706 7503
    %if ($ - %%insn_06706) > 2
        %error "LONG_06706"
    %endif
    times 2 - ($ - %%insn_06706) db 0
    %%insn_06708:
    jmp 0x6821 ; 06708 E91601
    %if ($ - %%insn_06708) > 3
        %error "LONG_06708"
    %endif
    times 3 - ($ - %%insn_06708) db 0
    %%insn_0670b:
    cmp byte [0xe8fb],0x0 ; 0670B 803EFBE800
    %if ($ - %%insn_0670b) > 5
        %error "LONG_0670B"
    %endif
    times 5 - ($ - %%insn_0670b) db 0
    %%insn_06710:
    jz short 0x6715 ; 06710 7403
    %if ($ - %%insn_06710) > 2
        %error "LONG_06710"
    %endif
    times 2 - ($ - %%insn_06710) db 0
    %%insn_06712:
    jmp 0x6621 ; 06712 E90CFF
    %if ($ - %%insn_06712) > 3
        %error "LONG_06712"
    %endif
    times 3 - ($ - %%insn_06712) db 0
    %%insn_06715:
    cmp byte [0xe4bb],0x2 ; 06715 803EBBE402
    %if ($ - %%insn_06715) > 5
        %error "LONG_06715"
    %endif
    times 5 - ($ - %%insn_06715) db 0
    %%insn_0671a:
    jnz short 0x672a ; 0671A 750E
    %if ($ - %%insn_0671a) > 2
        %error "LONG_0671A"
    %endif
    times 2 - ($ - %%insn_0671a) db 0
    %%insn_0671c:
    mov al,[bp-0x10] ; 0671C 8A46F0
    %if ($ - %%insn_0671c) > 3
        %error "LONG_0671C"
    %endif
    times 3 - ($ - %%insn_0671c) db 0
    %%insn_0671f:
    mov dl,[bp-0x7] ; 0671F 8A56F9
    %if ($ - %%insn_0671f) > 3
        %error "LONG_0671F"
    %endif
    times 3 - ($ - %%insn_0671f) db 0
    %%insn_06722:
    call 0x62ea ; 06722 E8C5FB
    %if ($ - %%insn_06722) > 3
        %error "LONG_06722"
    %endif
    times 3 - ($ - %%insn_06722) db 0
    %%insn_06725:
    cmp al,[bp-0x3] ; 06725 3A46FD
    %if ($ - %%insn_06725) > 3
        %error "LONG_06725"
    %endif
    times 3 - ($ - %%insn_06725) db 0
    %%insn_06728:
    jz short 0x66fe ; 06728 74D4
    %if ($ - %%insn_06728) > 2
        %error "LONG_06728"
    %endif
    times 2 - ($ - %%insn_06728) db 0
    %%insn_0672a:
    cmp word [bp-0xc],0x0 ; 0672A 837EF400
    %if ($ - %%insn_0672a) > 4
        %error "LONG_0672A"
    %endif
    times 4 - ($ - %%insn_0672a) db 0
    %%insn_0672e:
    jz short 0x679a ; 0672E 746A
    %if ($ - %%insn_0672e) > 2
        %error "LONG_0672E"
    %endif
    times 2 - ($ - %%insn_0672e) db 0
    %%insn_06730:
    mov al,[bp-0x7] ; 06730 8A46F9
    %if ($ - %%insn_06730) > 3
        %error "LONG_06730"
    %endif
    times 3 - ($ - %%insn_06730) db 0
    %%insn_06733:
    call 0x6290 ; 06733 E85AFB
    %if ($ - %%insn_06733) > 3
        %error "LONG_06733"
    %endif
    times 3 - ($ - %%insn_06733) db 0
    %%insn_06736:
    cmp word [bp-0x6],0x61d0 ; 06736 817EFAD061
    %if ($ - %%insn_06736) > 5
        %error "LONG_06736"
    %endif
    times 5 - ($ - %%insn_06736) db 0
    %%insn_0673b:
    jnz short 0x6752 ; 0673B 7515
    %if ($ - %%insn_0673b) > 2
        %error "LONG_0673B"
    %endif
    times 2 - ($ - %%insn_0673b) db 0
    %%insn_0673d:
    mov al,[bp+0x4] ; 0673D 8A4604
    %if ($ - %%insn_0673d) > 3
        %error "LONG_0673D"
    %endif
    times 3 - ($ - %%insn_0673d) db 0
    %%insn_06740:
    push ax ; 06740 50
    %if ($ - %%insn_06740) > 1
        %error "LONG_06740"
    %endif
    times 1 - ($ - %%insn_06740) db 0
    %%insn_06741:
    mov al,[bp-0x10] ; 06741 8A46F0
    %if ($ - %%insn_06741) > 3
        %error "LONG_06741"
    %endif
    times 3 - ($ - %%insn_06741) db 0
    %%insn_06744:
    mov dl,[bp-0x7] ; 06744 8A56F9
    %if ($ - %%insn_06744) > 3
        %error "LONG_06744"
    %endif
    times 3 - ($ - %%insn_06744) db 0
    %%insn_06747:
    mov bx,[bp-0xc] ; 06747 8B5EF4
    %if ($ - %%insn_06747) > 3
        %error "LONG_06747"
    %endif
    times 3 - ($ - %%insn_06747) db 0
    %%insn_0674a:
    call 0x656c ; 0674A E81FFE
    %if ($ - %%insn_0674a) > 3
        %error "LONG_0674A"
    %endif
    times 3 - ($ - %%insn_0674a) db 0
    %%insn_0674d:
    mov [bp-0x1],al ; 0674D 8846FF
    %if ($ - %%insn_0674d) > 3
        %error "LONG_0674D"
    %endif
    times 3 - ($ - %%insn_0674d) db 0
    %%insn_06750:
    jmp short 0x67b9 ; 06750 EB67
    %if ($ - %%insn_06750) > 2
        %error "LONG_06750"
    %endif
    times 2 - ($ - %%insn_06750) db 0
    %%insn_06752:
    mov bx,[0xe903] ; 06752 8B1E03E9
    %if ($ - %%insn_06752) > 4
        %error "LONG_06752"
    %endif
    times 4 - ($ - %%insn_06752) db 0
    %%insn_06756:
    mov cx,0x1c ; 06756 B91C00
    %if ($ - %%insn_06756) > 3
        %error "LONG_06756"
    %endif
    times 3 - ($ - %%insn_06756) db 0
    %%insn_06759:
    lea di,[bx-0x16dd] ; 06759 8DBF23E9
    %if ($ - %%insn_06759) > 4
        %error "LONG_06759"
    %endif
    times 4 - ($ - %%insn_06759) db 0
    %%insn_0675d:
    mov si,0xeb5d ; 0675D BE5DEB
    %if ($ - %%insn_0675d) > 3
        %error "LONG_0675D"
    %endif
    times 3 - ($ - %%insn_0675d) db 0
    %%insn_06760:
    push ds ; 06760 1E
    %if ($ - %%insn_06760) > 1
        %error "LONG_06760"
    %endif
    times 1 - ($ - %%insn_06760) db 0
    %%insn_06761:
    pop es ; 06761 07
    %if ($ - %%insn_06761) > 1
        %error "LONG_06761"
    %endif
    times 1 - ($ - %%insn_06761) db 0
    %%insn_06762:
    rep movsw ; 06762 F3A5
    %if ($ - %%insn_06762) > 2
        %error "LONG_06762"
    %endif
    times 2 - ($ - %%insn_06762) db 0
    %%insn_06764:
    movsb ; 06764 A4
    %if ($ - %%insn_06764) > 1
        %error "LONG_06764"
    %endif
    times 1 - ($ - %%insn_06764) db 0
    %%insn_06765:
    add word [0xe903],0x39 ; 06765 830603E939
    %if ($ - %%insn_06765) > 5
        %error "LONG_06765"
    %endif
    times 5 - ($ - %%insn_06765) db 0
    %%insn_0676a:
    mov al,[bp+0x4] ; 0676A 8A4604
    %if ($ - %%insn_0676a) > 3
        %error "LONG_0676A"
    %endif
    times 3 - ($ - %%insn_0676a) db 0
    %%insn_0676d:
    push ax ; 0676D 50
    %if ($ - %%insn_0676d) > 1
        %error "LONG_0676D"
    %endif
    times 1 - ($ - %%insn_0676d) db 0
    %%insn_0676e:
    mov al,[bp-0x10] ; 0676E 8A46F0
    %if ($ - %%insn_0676e) > 3
        %error "LONG_0676E"
    %endif
    times 3 - ($ - %%insn_0676e) db 0
    %%insn_06771:
    mov dl,[bp-0x7] ; 06771 8A56F9
    %if ($ - %%insn_06771) > 3
        %error "LONG_06771"
    %endif
    times 3 - ($ - %%insn_06771) db 0
    %%insn_06774:
    mov bx,[bp-0xc] ; 06774 8B5EF4
    %if ($ - %%insn_06774) > 3
        %error "LONG_06774"
    %endif
    times 3 - ($ - %%insn_06774) db 0
    %%insn_06777:
    call 0x656c ; 06777 E8F2FD
    %if ($ - %%insn_06777) > 3
        %error "LONG_06777"
    %endif
    times 3 - ($ - %%insn_06777) db 0
    %%insn_0677a:
    mov [bp-0x1],al ; 0677A 8846FF
    %if ($ - %%insn_0677a) > 3
        %error "LONG_0677A"
    %endif
    times 3 - ($ - %%insn_0677a) db 0
    %%insn_0677d:
    sub word [0xe903],0x39 ; 0677D 832E03E939
    %if ($ - %%insn_0677d) > 5
        %error "LONG_0677D"
    %endif
    times 5 - ($ - %%insn_0677d) db 0
    %%insn_06782:
    mov ax,0xeb5d ; 06782 B85DEB
    %if ($ - %%insn_06782) > 3
        %error "LONG_06782"
    %endif
    times 3 - ($ - %%insn_06782) db 0
    %%insn_06785:
    mov bx,[0xe903] ; 06785 8B1E03E9
    %if ($ - %%insn_06785) > 4
        %error "LONG_06785"
    %endif
    times 4 - ($ - %%insn_06785) db 0
    %%insn_06789:
    mov cx,0x1c ; 06789 B91C00
    %if ($ - %%insn_06789) > 3
        %error "LONG_06789"
    %endif
    times 3 - ($ - %%insn_06789) db 0
    db 0x8B, 0xF8 ; 0678C 8BF8 | mov di,ax | encoding preserved
    %%insn_0678e:
    lea si,[bx-0x16dd] ; 0678E 8DB723E9
    %if ($ - %%insn_0678e) > 4
        %error "LONG_0678E"
    %endif
    times 4 - ($ - %%insn_0678e) db 0
    %%insn_06792:
    push ds ; 06792 1E
    %if ($ - %%insn_06792) > 1
        %error "LONG_06792"
    %endif
    times 1 - ($ - %%insn_06792) db 0
    %%insn_06793:
    pop es ; 06793 07
    %if ($ - %%insn_06793) > 1
        %error "LONG_06793"
    %endif
    times 1 - ($ - %%insn_06793) db 0
    %%insn_06794:
    rep movsw ; 06794 F3A5
    %if ($ - %%insn_06794) > 2
        %error "LONG_06794"
    %endif
    times 2 - ($ - %%insn_06794) db 0
    %%insn_06796:
    movsb ; 06796 A4
    %if ($ - %%insn_06796) > 1
        %error "LONG_06796"
    %endif
    times 1 - ($ - %%insn_06796) db 0
    %%insn_06797:
    jmp short 0x67b9 ; 06797 EB20
    %if ($ - %%insn_06797) > 2
        %error "LONG_06797"
    %endif
    times 2 - ($ - %%insn_06797) db 0
    %if ($ - %%fragment_start) != 233
        %error "SIZE_066B0"
    %endif
%endmacro

%macro emit_func_0656c_part_05 0
    %%fragment_start:
    %%insn_0679a:
    mov al,[bp-0x10] ; 0679A 8A46F0
    %if ($ - %%insn_0679a) > 3
        %error "LONG_0679A"
    %endif
    times 3 - ($ - %%insn_0679a) db 0
    %%insn_0679d:
    mov dl,[bp-0x7] ; 0679D 8A56F9
    %if ($ - %%insn_0679d) > 3
        %error "LONG_0679D"
    %endif
    times 3 - ($ - %%insn_0679d) db 0
    %%insn_067a0:
    call 0x62ea ; 067A0 E847FB
    %if ($ - %%insn_067a0) > 3
        %error "LONG_067A0"
    %endif
    times 3 - ($ - %%insn_067a0) db 0
    %%insn_067a3:
    mov [bp-0x1],al ; 067A3 8846FF
    %if ($ - %%insn_067a3) > 3
        %error "LONG_067A3"
    %endif
    times 3 - ($ - %%insn_067a3) db 0
    %%insn_067a6:
    cmp word [bp-0x6],0x61d0 ; 067A6 817EFAD061
    %if ($ - %%insn_067a6) > 5
        %error "LONG_067A6"
    %endif
    times 5 - ($ - %%insn_067a6) db 0
    %%insn_067ab:
    jnz short 0x67b9 ; 067AB 750C
    %if ($ - %%insn_067ab) > 2
        %error "LONG_067AB"
    %endif
    times 2 - ($ - %%insn_067ab) db 0
    %%insn_067ad:
    cmp byte [0xe4bb],0x2 ; 067AD 803EBBE402
    %if ($ - %%insn_067ad) > 5
        %error "LONG_067AD"
    %endif
    times 5 - ($ - %%insn_067ad) db 0
    %%insn_067b2:
    jnz short 0x67b9 ; 067B2 7505
    %if ($ - %%insn_067b2) > 2
        %error "LONG_067B2"
    %endif
    times 2 - ($ - %%insn_067b2) db 0
    %%insn_067b4:
    mov byte [0xe4bc],0x10 ; 067B4 C606BCE410
    %if ($ - %%insn_067b4) > 5
        %error "LONG_067B4"
    %endif
    times 5 - ($ - %%insn_067b4) db 0
    %%insn_067b9:
    mov al,[bp-0x1] ; 067B9 8A46FF
    %if ($ - %%insn_067b9) > 3
        %error "LONG_067B9"
    %endif
    times 3 - ($ - %%insn_067b9) db 0
    %%insn_067bc:
    cmp [bp-0x2],al ; 067BC 3846FE
    %if ($ - %%insn_067bc) > 3
        %error "LONG_067BC"
    %endif
    times 3 - ($ - %%insn_067bc) db 0
    %%insn_067bf:
    jng short 0x67c9 ; 067BF 7E08
    %if ($ - %%insn_067bf) > 2
        %error "LONG_067BF"
    %endif
    times 2 - ($ - %%insn_067bf) db 0
    %%insn_067c1:
    mov al,[bp-0x7] ; 067C1 8A46F9
    %if ($ - %%insn_067c1) > 3
        %error "LONG_067C1"
    %endif
    times 3 - ($ - %%insn_067c1) db 0
    %%insn_067c4:
    cmp [bp-0x10],al ; 067C4 3846F0
    %if ($ - %%insn_067c4) > 3
        %error "LONG_067C4"
    %endif
    times 3 - ($ - %%insn_067c4) db 0
    %%insn_067c7:
    jnz short 0x67d9 ; 067C7 7510
    %if ($ - %%insn_067c7) > 2
        %error "LONG_067C7"
    %endif
    times 2 - ($ - %%insn_067c7) db 0
    %%insn_067c9:
    mov al,[bp-0x1] ; 067C9 8A46FF
    %if ($ - %%insn_067c9) > 3
        %error "LONG_067C9"
    %endif
    times 3 - ($ - %%insn_067c9) db 0
    %%insn_067cc:
    cmp [bp-0x2],al ; 067CC 3846FE
    %if ($ - %%insn_067cc) > 3
        %error "LONG_067CC"
    %endif
    times 3 - ($ - %%insn_067cc) db 0
    %%insn_067cf:
    jnl short 0x67df ; 067CF 7D0E
    %if ($ - %%insn_067cf) > 2
        %error "LONG_067CF"
    %endif
    times 2 - ($ - %%insn_067cf) db 0
    %%insn_067d1:
    mov al,[bp-0x7] ; 067D1 8A46F9
    %if ($ - %%insn_067d1) > 3
        %error "LONG_067D1"
    %endif
    times 3 - ($ - %%insn_067d1) db 0
    %%insn_067d4:
    cmp [bp-0x10],al ; 067D4 3846F0
    %if ($ - %%insn_067d4) > 3
        %error "LONG_067D4"
    %endif
    times 3 - ($ - %%insn_067d4) db 0
    %%insn_067d7:
    jnz short 0x67df ; 067D7 7506
    %if ($ - %%insn_067d7) > 2
        %error "LONG_067D7"
    %endif
    times 2 - ($ - %%insn_067d7) db 0
    %%insn_067d9:
    mov al,[bp-0x1] ; 067D9 8A46FF
    %if ($ - %%insn_067d9) > 3
        %error "LONG_067D9"
    %endif
    times 3 - ($ - %%insn_067d9) db 0
    %%insn_067dc:
    mov [bp-0x2],al ; 067DC 8846FE
    %if ($ - %%insn_067dc) > 3
        %error "LONG_067DC"
    %endif
    times 3 - ($ - %%insn_067dc) db 0
    %%insn_067df:
    mov al,[bp+0x4] ; 067DF 8A4604
    %if ($ - %%insn_067df) > 3
        %error "LONG_067DF"
    %endif
    times 3 - ($ - %%insn_067df) db 0
    %%insn_067e2:
    cmp [bp-0x2],al ; 067E2 3846FE
    %if ($ - %%insn_067e2) > 3
        %error "LONG_067E2"
    %endif
    times 3 - ($ - %%insn_067e2) db 0
    %%insn_067e5:
    jnl short 0x67ef ; 067E5 7D08
    %if ($ - %%insn_067e5) > 2
        %error "LONG_067E5"
    %endif
    times 2 - ($ - %%insn_067e5) db 0
    %%insn_067e7:
    mov al,[bp-0x7] ; 067E7 8A46F9
    %if ($ - %%insn_067e7) > 3
        %error "LONG_067E7"
    %endif
    times 3 - ($ - %%insn_067e7) db 0
    %%insn_067ea:
    cmp [bp-0x10],al ; 067EA 3846F0
    %if ($ - %%insn_067ea) > 3
        %error "LONG_067EA"
    %endif
    times 3 - ($ - %%insn_067ea) db 0
    %%insn_067ed:
    jnz short 0x6821 ; 067ED 7532
    %if ($ - %%insn_067ed) > 2
        %error "LONG_067ED"
    %endif
    times 2 - ($ - %%insn_067ed) db 0
    %%insn_067ef:
    cmp word [0xe905],0x0 ; 067EF 833E05E900
    %if ($ - %%insn_067ef) > 5
        %error "LONG_067EF"
    %endif
    times 5 - ($ - %%insn_067ef) db 0
    %%insn_067f4:
    jnz short 0x67f9 ; 067F4 7503
    %if ($ - %%insn_067f4) > 2
        %error "LONG_067F4"
    %endif
    times 2 - ($ - %%insn_067f4) db 0
    %%insn_067f6:
    jmp 0x66fe ; 067F6 E905FF
    %if ($ - %%insn_067f6) > 3
        %error "LONG_067F6"
    %endif
    times 3 - ($ - %%insn_067f6) db 0
    %%insn_067f9:
    jmp short 0x6821 ; 067F9 EB26
    %if ($ - %%insn_067f9) > 2
        %error "LONG_067F9"
    %endif
    times 2 - ($ - %%insn_067f9) db 0
    %if ($ - %%fragment_start) != 97
        %error "SIZE_0679A"
    %endif
%endmacro

%macro emit_func_0656c_part_06 0
    %%fragment_start:
    %%insn_067fc:
    mov al,[bp-0x10] ; 067FC 8A46F0
    %if ($ - %%insn_067fc) > 3
        %error "LONG_067FC"
    %endif
    times 3 - ($ - %%insn_067fc) db 0
    %%insn_067ff:
    cbw ; 067FF 98
    %if ($ - %%insn_067ff) > 1
        %error "LONG_067FF"
    %endif
    times 1 - ($ - %%insn_067ff) db 0
    db 0x8B, 0xD8 ; 06800 8BD8 | mov bx,ax | encoding preserved
    %%insn_06802:
    mov al,[bx-0x1b4c] ; 06802 8A87B4E4
    %if ($ - %%insn_06802) > 4
        %error "LONG_06802"
    %endif
    times 4 - ($ - %%insn_06802) db 0
    %%insn_06806:
    shl al,1 ; 06806 D0E0
    %if ($ - %%insn_06806) > 2
        %error "LONG_06806"
    %endif
    times 2 - ($ - %%insn_06806) db 0
    %%insn_06808:
    sub al,[0xe4b5] ; 06808 2A06B5E4
    %if ($ - %%insn_06808) > 4
        %error "LONG_06808"
    %endif
    times 4 - ($ - %%insn_06808) db 0
    %%insn_0680c:
    sub al,[0xe4b6] ; 0680C 2A06B6E4
    %if ($ - %%insn_0680c) > 4
        %error "LONG_0680C"
    %endif
    times 4 - ($ - %%insn_0680c) db 0
    %%insn_06810:
    sub al,[0xe4b7] ; 06810 2A06B7E4
    %if ($ - %%insn_06810) > 4
        %error "LONG_06810"
    %endif
    times 4 - ($ - %%insn_06810) db 0
    %%insn_06814:
    sub al,[0xe4b8] ; 06814 2A06B8E4
    %if ($ - %%insn_06814) > 4
        %error "LONG_06814"
    %endif
    times 4 - ($ - %%insn_06814) db 0
    %%insn_06818:
    shl al,1 ; 06818 D0E0
    %if ($ - %%insn_06818) > 2
        %error "LONG_06818"
    %endif
    times 2 - ($ - %%insn_06818) db 0
    %%insn_0681a:
    add al,[0xe8fc] ; 0681A 0206FCE8
    %if ($ - %%insn_0681a) > 4
        %error "LONG_0681A"
    %endif
    times 4 - ($ - %%insn_0681a) db 0
    %%insn_0681e:
    mov [bp-0x2],al ; 0681E 8846FE
    %if ($ - %%insn_0681e) > 3
        %error "LONG_0681E"
    %endif
    times 3 - ($ - %%insn_0681e) db 0
    %%insn_06821:
    sub word [0xe903],0x39 ; 06821 832E03E939
    %if ($ - %%insn_06821) > 5
        %error "LONG_06821"
    %endif
    times 5 - ($ - %%insn_06821) db 0
    %%insn_06826:
    mov ax,0xe484 ; 06826 B884E4
    %if ($ - %%insn_06826) > 3
        %error "LONG_06826"
    %endif
    times 3 - ($ - %%insn_06826) db 0
    %%insn_06829:
    mov bx,[0xe903] ; 06829 8B1E03E9
    %if ($ - %%insn_06829) > 4
        %error "LONG_06829"
    %endif
    times 4 - ($ - %%insn_06829) db 0
    %%insn_0682d:
    mov cx,0x1c ; 0682D B91C00
    %if ($ - %%insn_0682d) > 3
        %error "LONG_0682D"
    %endif
    times 3 - ($ - %%insn_0682d) db 0
    db 0x8B, 0xF8 ; 06830 8BF8 | mov di,ax | encoding preserved
    %%insn_06832:
    lea si,[bx-0x16dd] ; 06832 8DB723E9
    %if ($ - %%insn_06832) > 4
        %error "LONG_06832"
    %endif
    times 4 - ($ - %%insn_06832) db 0
    %%insn_06836:
    push ds ; 06836 1E
    %if ($ - %%insn_06836) > 1
        %error "LONG_06836"
    %endif
    times 1 - ($ - %%insn_06836) db 0
    %%insn_06837:
    pop es ; 06837 07
    %if ($ - %%insn_06837) > 1
        %error "LONG_06837"
    %endif
    times 1 - ($ - %%insn_06837) db 0
    %%insn_06838:
    rep movsw ; 06838 F3A5
    %if ($ - %%insn_06838) > 2
        %error "LONG_06838"
    %endif
    times 2 - ($ - %%insn_06838) db 0
    %%insn_0683a:
    movsb ; 0683A A4
    %if ($ - %%insn_0683a) > 1
        %error "LONG_0683A"
    %endif
    times 1 - ($ - %%insn_0683a) db 0
    %%insn_0683b:
    mov al,[bp-0x2] ; 0683B 8A46FE
    %if ($ - %%insn_0683b) > 3
        %error "LONG_0683B"
    %endif
    times 3 - ($ - %%insn_0683b) db 0
    %%insn_0683e:
    pop si ; 0683E 5E
    %if ($ - %%insn_0683e) > 1
        %error "LONG_0683E"
    %endif
    times 1 - ($ - %%insn_0683e) db 0
    %%insn_0683f:
    pop di ; 0683F 5F
    %if ($ - %%insn_0683f) > 1
        %error "LONG_0683F"
    %endif
    times 1 - ($ - %%insn_0683f) db 0
    db 0x8B, 0xE5 ; 06840 8BE5 | mov sp,bp | encoding preserved
    %%insn_06842:
    pop bp ; 06842 5D
    %if ($ - %%insn_06842) > 1
        %error "LONG_06842"
    %endif
    times 1 - ($ - %%insn_06842) db 0
    %%insn_06843:
    ret word 0x2 ; 06843 C20200
    %if ($ - %%insn_06843) > 3
        %error "LONG_06843"
    %endif
    times 3 - ($ - %%insn_06843) db 0
    %if ($ - %%fragment_start) != 74
        %error "SIZE_067FC"
    %endif
%endmacro
