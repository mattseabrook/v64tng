; PE virtual entry 004185A0
; Ghidra working symbol: FUN_004185a0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004185a0_part_00 0
    %%fragment_start:
func_004185a0:
    %%insn_004185a0:
    push ecx ; 004185A0 51
    %if ($ - %%insn_004185a0) > 1
        %error "LONG_004185A0"
    %endif
    times 1 - ($ - %%insn_004185a0) db 0
    %%insn_004185a1:
    push ebx ; 004185A1 53
    %if ($ - %%insn_004185a1) > 1
        %error "LONG_004185A1"
    %endif
    times 1 - ($ - %%insn_004185a1) db 0
    %%insn_004185a2:
    push ebp ; 004185A2 55
    %if ($ - %%insn_004185a2) > 1
        %error "LONG_004185A2"
    %endif
    times 1 - ($ - %%insn_004185a2) db 0
    %%insn_004185a3:
    mov ebp,[esp+0x18] ; 004185A3 8B6C2418
    %if ($ - %%insn_004185a3) > 4
        %error "LONG_004185A3"
    %endif
    times 4 - ($ - %%insn_004185a3) db 0
    %%insn_004185a7:
    push esi ; 004185A7 56
    %if ($ - %%insn_004185a7) > 1
        %error "LONG_004185A7"
    %endif
    times 1 - ($ - %%insn_004185a7) db 0
    %%insn_004185a8:
    push edi ; 004185A8 57
    %if ($ - %%insn_004185a8) > 1
        %error "LONG_004185A8"
    %endif
    times 1 - ($ - %%insn_004185a8) db 0
    %%insn_004185a9:
    mov edi,[esp+0x18] ; 004185A9 8B7C2418
    %if ($ - %%insn_004185a9) > 4
        %error "LONG_004185A9"
    %endif
    times 4 - ($ - %%insn_004185a9) db 0
    db 0x33, 0xC0 ; 004185AD 33C0 | xor eax,eax | encoding preserved
    %%insn_004185af:
    test edi,edi ; 004185AF 85FF
    %if ($ - %%insn_004185af) > 2
        %error "LONG_004185AF"
    %endif
    times 2 - ($ - %%insn_004185af) db 0
    %%insn_004185b1:
    mov [esp+0x10],eax ; 004185B1 89442410
    %if ($ - %%insn_004185b1) > 4
        %error "LONG_004185B1"
    %endif
    times 4 - ($ - %%insn_004185b1) db 0
    %%insn_004185b5:
    jz short 0x4185c1 ; 004185B5 740A
    %if ($ - %%insn_004185b5) > 2
        %error "LONG_004185B5"
    %endif
    times 2 - ($ - %%insn_004185b5) db 0
    %%insn_004185b7:
    test ebp,ebp ; 004185B7 85ED
    %if ($ - %%insn_004185b7) > 2
        %error "LONG_004185B7"
    %endif
    times 2 - ($ - %%insn_004185b7) db 0
    %%insn_004185b9:
    jnz short 0x4185c1 ; 004185B9 7506
    %if ($ - %%insn_004185b9) > 2
        %error "LONG_004185B9"
    %endif
    times 2 - ($ - %%insn_004185b9) db 0
    %%insn_004185bb:
    pop edi ; 004185BB 5F
    %if ($ - %%insn_004185bb) > 1
        %error "LONG_004185BB"
    %endif
    times 1 - ($ - %%insn_004185bb) db 0
    %%insn_004185bc:
    pop esi ; 004185BC 5E
    %if ($ - %%insn_004185bc) > 1
        %error "LONG_004185BC"
    %endif
    times 1 - ($ - %%insn_004185bc) db 0
    %%insn_004185bd:
    pop ebp ; 004185BD 5D
    %if ($ - %%insn_004185bd) > 1
        %error "LONG_004185BD"
    %endif
    times 1 - ($ - %%insn_004185bd) db 0
    %%insn_004185be:
    pop ebx ; 004185BE 5B
    %if ($ - %%insn_004185be) > 1
        %error "LONG_004185BE"
    %endif
    times 1 - ($ - %%insn_004185be) db 0
    %%insn_004185bf:
    pop ecx ; 004185BF 59
    %if ($ - %%insn_004185bf) > 1
        %error "LONG_004185BF"
    %endif
    times 1 - ($ - %%insn_004185bf) db 0
    %%insn_004185c0:
    ret ; 004185C0 C3
    %if ($ - %%insn_004185c0) > 1
        %error "LONG_004185C0"
    %endif
    times 1 - ($ - %%insn_004185c0) db 0
    %%insn_004185c1:
    test edi,edi ; 004185C1 85FF
    %if ($ - %%insn_004185c1) > 2
        %error "LONG_004185C1"
    %endif
    times 2 - ($ - %%insn_004185c1) db 0
    %%insn_004185c3:
    jz 0x418724 ; 004185C3 0F845B010000
    %if ($ - %%insn_004185c3) > 6
        %error "LONG_004185C3"
    %endif
    times 6 - ($ - %%insn_004185c3) db 0
    %%insn_004185c9:
    mov ecx,[0x420f20] ; 004185C9 8B0D200F4200
    %if ($ - %%insn_004185c9) > 6
        %error "LONG_004185C9"
    %endif
    times 6 - ($ - %%insn_004185c9) db 0
    %%insn_004185cf:
    test ecx,ecx ; 004185CF 85C9
    %if ($ - %%insn_004185cf) > 2
        %error "LONG_004185CF"
    %endif
    times 2 - ($ - %%insn_004185cf) db 0
    %%insn_004185d1:
    jnz short 0x41860a ; 004185D1 7537
    %if ($ - %%insn_004185d1) > 2
        %error "LONG_004185D1"
    %endif
    times 2 - ($ - %%insn_004185d1) db 0
    %%insn_004185d3:
    test ebp,ebp ; 004185D3 85ED
    %if ($ - %%insn_004185d3) > 2
        %error "LONG_004185D3"
    %endif
    times 2 - ($ - %%insn_004185d3) db 0
    %%insn_004185d5:
    jna 0x418784 ; 004185D5 0F86A9010000
    %if ($ - %%insn_004185d5) > 6
        %error "LONG_004185D5"
    %endif
    times 6 - ($ - %%insn_004185d5) db 0
    %%insn_004185db:
    mov ecx,[esp+0x1c] ; 004185DB 8B4C241C
    %if ($ - %%insn_004185db) > 4
        %error "LONG_004185DB"
    %endif
    times 4 - ($ - %%insn_004185db) db 0
    %%insn_004185df:
    cmp word [ecx],0xff ; 004185DF 668139FF00
    %if ($ - %%insn_004185df) > 5
        %error "LONG_004185DF"
    %endif
    times 5 - ($ - %%insn_004185df) db 0
    %%insn_004185e4:
    ja 0x418776 ; 004185E4 0F878C010000
    %if ($ - %%insn_004185e4) > 6
        %error "LONG_004185E4"
    %endif
    times 6 - ($ - %%insn_004185e4) db 0
    %%insn_004185ea:
    mov dl,[ecx] ; 004185EA 8A11
    %if ($ - %%insn_004185ea) > 2
        %error "LONG_004185EA"
    %endif
    times 2 - ($ - %%insn_004185ea) db 0
    %%insn_004185ec:
    add ecx,0x2 ; 004185EC 83C102
    %if ($ - %%insn_004185ec) > 3
        %error "LONG_004185EC"
    %endif
    times 3 - ($ - %%insn_004185ec) db 0
    %%insn_004185ef:
    mov [eax+edi],dl ; 004185EF 881438
    %if ($ - %%insn_004185ef) > 3
        %error "LONG_004185EF"
    %endif
    times 3 - ($ - %%insn_004185ef) db 0
    %%insn_004185f2:
    mov dx,[ecx-0x2] ; 004185F2 668B51FE
    %if ($ - %%insn_004185f2) > 4
        %error "LONG_004185F2"
    %endif
    times 4 - ($ - %%insn_004185f2) db 0
    %%insn_004185f6:
    test dx,dx ; 004185F6 6685D2
    %if ($ - %%insn_004185f6) > 3
        %error "LONG_004185F6"
    %endif
    times 3 - ($ - %%insn_004185f6) db 0
    %%insn_004185f9:
    jz 0x418784 ; 004185F9 0F8485010000
    %if ($ - %%insn_004185f9) > 6
        %error "LONG_004185F9"
    %endif
    times 6 - ($ - %%insn_004185f9) db 0
    %%insn_004185ff:
    inc eax ; 004185FF 40
    %if ($ - %%insn_004185ff) > 1
        %error "LONG_004185FF"
    %endif
    times 1 - ($ - %%insn_004185ff) db 0
    db 0x3B, 0xC5 ; 00418600 3BC5 | cmp eax,ebp | encoding preserved
    %%insn_00418602:
    jc short 0x4185df ; 00418602 72DB
    %if ($ - %%insn_00418602) > 2
        %error "LONG_00418602"
    %endif
    times 2 - ($ - %%insn_00418602) db 0
    %%insn_00418604:
    pop edi ; 00418604 5F
    %if ($ - %%insn_00418604) > 1
        %error "LONG_00418604"
    %endif
    times 1 - ($ - %%insn_00418604) db 0
    %%insn_00418605:
    pop esi ; 00418605 5E
    %if ($ - %%insn_00418605) > 1
        %error "LONG_00418605"
    %endif
    times 1 - ($ - %%insn_00418605) db 0
    %%insn_00418606:
    pop ebp ; 00418606 5D
    %if ($ - %%insn_00418606) > 1
        %error "LONG_00418606"
    %endif
    times 1 - ($ - %%insn_00418606) db 0
    %%insn_00418607:
    pop ebx ; 00418607 5B
    %if ($ - %%insn_00418607) > 1
        %error "LONG_00418607"
    %endif
    times 1 - ($ - %%insn_00418607) db 0
    %%insn_00418608:
    pop ecx ; 00418608 59
    %if ($ - %%insn_00418608) > 1
        %error "LONG_00418608"
    %endif
    times 1 - ($ - %%insn_00418608) db 0
    %%insn_00418609:
    ret ; 00418609 C3
    %if ($ - %%insn_00418609) > 1
        %error "LONG_00418609"
    %endif
    times 1 - ($ - %%insn_00418609) db 0
    %%insn_0041860a:
    cmp dword [0x41f044],0x1 ; 0041860A 833D44F0410001
    %if ($ - %%insn_0041860a) > 7
        %error "LONG_0041860A"
    %endif
    times 7 - ($ - %%insn_0041860a) db 0
    %%insn_00418611:
    jnz short 0x41866b ; 00418611 7558
    %if ($ - %%insn_00418611) > 2
        %error "LONG_00418611"
    %endif
    times 2 - ($ - %%insn_00418611) db 0
    %%insn_00418613:
    mov esi,[esp+0x1c] ; 00418613 8B74241C
    %if ($ - %%insn_00418613) > 4
        %error "LONG_00418613"
    %endif
    times 4 - ($ - %%insn_00418613) db 0
    %%insn_00418617:
    test ebp,ebp ; 00418617 85ED
    %if ($ - %%insn_00418617) > 2
        %error "LONG_00418617"
    %endif
    times 2 - ($ - %%insn_00418617) db 0
    %%insn_00418619:
    jna short 0x418627 ; 00418619 760C
    %if ($ - %%insn_00418619) > 2
        %error "LONG_00418619"
    %endif
    times 2 - ($ - %%insn_00418619) db 0
    %%insn_0041861b:
    push ebp ; 0041861B 55
    %if ($ - %%insn_0041861b) > 1
        %error "LONG_0041861B"
    %endif
    times 1 - ($ - %%insn_0041861b) db 0
    %%insn_0041861c:
    push esi ; 0041861C 56
    %if ($ - %%insn_0041861c) > 1
        %error "LONG_0041861C"
    %endif
    times 1 - ($ - %%insn_0041861c) db 0
    %%insn_0041861d:
    call 0x418790 ; 0041861D E86E010000
    %if ($ - %%insn_0041861d) > 5
        %error "LONG_0041861D"
    %endif
    times 5 - ($ - %%insn_0041861d) db 0
    %%insn_00418622:
    add esp,0x8 ; 00418622 83C408
    %if ($ - %%insn_00418622) > 3
        %error "LONG_00418622"
    %endif
    times 3 - ($ - %%insn_00418622) db 0
    db 0x8B, 0xE8 ; 00418625 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00418627:
    mov ecx,[0x420f30] ; 00418627 8B0D300F4200
    %if ($ - %%insn_00418627) > 6
        %error "LONG_00418627"
    %endif
    times 6 - ($ - %%insn_00418627) db 0
    %%insn_0041862d:
    lea eax,[esp+0x10] ; 0041862D 8D442410
    %if ($ - %%insn_0041862d) > 4
        %error "LONG_0041862D"
    %endif
    times 4 - ($ - %%insn_0041862d) db 0
    %%insn_00418631:
    push eax ; 00418631 50
    %if ($ - %%insn_00418631) > 1
        %error "LONG_00418631"
    %endif
    times 1 - ($ - %%insn_00418631) db 0
    %%insn_00418632:
    push dword 0x0 ; 00418632 6A00
    %if ($ - %%insn_00418632) > 2
        %error "LONG_00418632"
    %endif
    times 2 - ($ - %%insn_00418632) db 0
    %%insn_00418634:
    push ebp ; 00418634 55
    %if ($ - %%insn_00418634) > 1
        %error "LONG_00418634"
    %endif
    times 1 - ($ - %%insn_00418634) db 0
    %%insn_00418635:
    push edi ; 00418635 57
    %if ($ - %%insn_00418635) > 1
        %error "LONG_00418635"
    %endif
    times 1 - ($ - %%insn_00418635) db 0
    %%insn_00418636:
    push ebp ; 00418636 55
    %if ($ - %%insn_00418636) > 1
        %error "LONG_00418636"
    %endif
    times 1 - ($ - %%insn_00418636) db 0
    %%insn_00418637:
    push esi ; 00418637 56
    %if ($ - %%insn_00418637) > 1
        %error "LONG_00418637"
    %endif
    times 1 - ($ - %%insn_00418637) db 0
    %%insn_00418638:
    push dword 0x220 ; 00418638 6820020000
    %if ($ - %%insn_00418638) > 5
        %error "LONG_00418638"
    %endif
    times 5 - ($ - %%insn_00418638) db 0
    %%insn_0041863d:
    push ecx ; 0041863D 51
    %if ($ - %%insn_0041863d) > 1
        %error "LONG_0041863D"
    %endif
    times 1 - ($ - %%insn_0041863d) db 0
    %%insn_0041863e:
    call dword near [0x4244d0] ; 0041863E FF15D0444200
    %if ($ - %%insn_0041863e) > 6
        %error "LONG_0041863E"
    %endif
    times 6 - ($ - %%insn_0041863e) db 0
    %%insn_00418644:
    test eax,eax ; 00418644 85C0
    %if ($ - %%insn_00418644) > 2
        %error "LONG_00418644"
    %endif
    times 2 - ($ - %%insn_00418644) db 0
    %%insn_00418646:
    jz 0x418776 ; 00418646 0F842A010000
    %if ($ - %%insn_00418646) > 6
        %error "LONG_00418646"
    %endif
    times 6 - ($ - %%insn_00418646) db 0
    %%insn_0041864c:
    mov ecx,[esp+0x10] ; 0041864C 8B4C2410
    %if ($ - %%insn_0041864c) > 4
        %error "LONG_0041864C"
    %endif
    times 4 - ($ - %%insn_0041864c) db 0
    %%insn_00418650:
    test ecx,ecx ; 00418650 85C9
    %if ($ - %%insn_00418650) > 2
        %error "LONG_00418650"
    %endif
    times 2 - ($ - %%insn_00418650) db 0
    %%insn_00418652:
    jnz 0x418776 ; 00418652 0F851E010000
    %if ($ - %%insn_00418652) > 6
        %error "LONG_00418652"
    %endif
    times 6 - ($ - %%insn_00418652) db 0
    %%insn_00418658:
    mov cl,[eax+edi-0x1] ; 00418658 8A4C38FF
    %if ($ - %%insn_00418658) > 4
        %error "LONG_00418658"
    %endif
    times 4 - ($ - %%insn_00418658) db 0
    %%insn_0041865c:
    test cl,cl ; 0041865C 84C9
    %if ($ - %%insn_0041865c) > 2
        %error "LONG_0041865C"
    %endif
    times 2 - ($ - %%insn_0041865c) db 0
    %%insn_0041865e:
    jnz 0x418784 ; 0041865E 0F8520010000
    %if ($ - %%insn_0041865e) > 6
        %error "LONG_0041865E"
    %endif
    times 6 - ($ - %%insn_0041865e) db 0
    %%insn_00418664:
    dec eax ; 00418664 48
    %if ($ - %%insn_00418664) > 1
        %error "LONG_00418664"
    %endif
    times 1 - ($ - %%insn_00418664) db 0
    %%insn_00418665:
    pop edi ; 00418665 5F
    %if ($ - %%insn_00418665) > 1
        %error "LONG_00418665"
    %endif
    times 1 - ($ - %%insn_00418665) db 0
    %%insn_00418666:
    pop esi ; 00418666 5E
    %if ($ - %%insn_00418666) > 1
        %error "LONG_00418666"
    %endif
    times 1 - ($ - %%insn_00418666) db 0
    %%insn_00418667:
    pop ebp ; 00418667 5D
    %if ($ - %%insn_00418667) > 1
        %error "LONG_00418667"
    %endif
    times 1 - ($ - %%insn_00418667) db 0
    %%insn_00418668:
    pop ebx ; 00418668 5B
    %if ($ - %%insn_00418668) > 1
        %error "LONG_00418668"
    %endif
    times 1 - ($ - %%insn_00418668) db 0
    %%insn_00418669:
    pop ecx ; 00418669 59
    %if ($ - %%insn_00418669) > 1
        %error "LONG_00418669"
    %endif
    times 1 - ($ - %%insn_00418669) db 0
    %%insn_0041866a:
    ret ; 0041866A C3
    %if ($ - %%insn_0041866a) > 1
        %error "LONG_0041866A"
    %endif
    times 1 - ($ - %%insn_0041866a) db 0
    %%insn_0041866b:
    mov ebx,[esp+0x1c] ; 0041866B 8B5C241C
    %if ($ - %%insn_0041866b) > 4
        %error "LONG_0041866B"
    %endif
    times 4 - ($ - %%insn_0041866b) db 0
    %%insn_0041866f:
    mov eax,[0x420f30] ; 0041866F A1300F4200
    %if ($ - %%insn_0041866f) > 5
        %error "LONG_0041866F"
    %endif
    times 5 - ($ - %%insn_0041866f) db 0
    %%insn_00418674:
    lea edx,[esp+0x10] ; 00418674 8D542410
    %if ($ - %%insn_00418674) > 4
        %error "LONG_00418674"
    %endif
    times 4 - ($ - %%insn_00418674) db 0
    %%insn_00418678:
    push edx ; 00418678 52
    %if ($ - %%insn_00418678) > 1
        %error "LONG_00418678"
    %endif
    times 1 - ($ - %%insn_00418678) db 0
    %%insn_00418679:
    push dword 0x0 ; 00418679 6A00
    %if ($ - %%insn_00418679) > 2
        %error "LONG_00418679"
    %endif
    times 2 - ($ - %%insn_00418679) db 0
    %%insn_0041867b:
    push ebp ; 0041867B 55
    %if ($ - %%insn_0041867b) > 1
        %error "LONG_0041867B"
    %endif
    times 1 - ($ - %%insn_0041867b) db 0
    %%insn_0041867c:
    push edi ; 0041867C 57
    %if ($ - %%insn_0041867c) > 1
        %error "LONG_0041867C"
    %endif
    times 1 - ($ - %%insn_0041867c) db 0
    %%insn_0041867d:
    push dword 0xffffffffffffffff ; 0041867D 6AFF
    %if ($ - %%insn_0041867d) > 2
        %error "LONG_0041867D"
    %endif
    times 2 - ($ - %%insn_0041867d) db 0
    %%insn_0041867f:
    push ebx ; 0041867F 53
    %if ($ - %%insn_0041867f) > 1
        %error "LONG_0041867F"
    %endif
    times 1 - ($ - %%insn_0041867f) db 0
    %%insn_00418680:
    push dword 0x220 ; 00418680 6820020000
    %if ($ - %%insn_00418680) > 5
        %error "LONG_00418680"
    %endif
    times 5 - ($ - %%insn_00418680) db 0
    %%insn_00418685:
    push eax ; 00418685 50
    %if ($ - %%insn_00418685) > 1
        %error "LONG_00418685"
    %endif
    times 1 - ($ - %%insn_00418685) db 0
    %%insn_00418686:
    call dword near [0x4244d0] ; 00418686 FF15D0444200
    %if ($ - %%insn_00418686) > 6
        %error "LONG_00418686"
    %endif
    times 6 - ($ - %%insn_00418686) db 0
    db 0x8B, 0xF0 ; 0041868C 8BF0 | mov esi,eax | encoding preserved
    %%insn_0041868e:
    mov eax,[esp+0x10] ; 0041868E 8B442410
    %if ($ - %%insn_0041868e) > 4
        %error "LONG_0041868E"
    %endif
    times 4 - ($ - %%insn_0041868e) db 0
    %%insn_00418692:
    test esi,esi ; 00418692 85F6
    %if ($ - %%insn_00418692) > 2
        %error "LONG_00418692"
    %endif
    times 2 - ($ - %%insn_00418692) db 0
    %%insn_00418694:
    jz short 0x4186a7 ; 00418694 7411
    %if ($ - %%insn_00418694) > 2
        %error "LONG_00418694"
    %endif
    times 2 - ($ - %%insn_00418694) db 0
    %%insn_00418696:
    test eax,eax ; 00418696 85C0
    %if ($ - %%insn_00418696) > 2
        %error "LONG_00418696"
    %endif
    times 2 - ($ - %%insn_00418696) db 0
    %%insn_00418698:
    jnz 0x418776 ; 00418698 0F85D8000000
    %if ($ - %%insn_00418698) > 6
        %error "LONG_00418698"
    %endif
    times 6 - ($ - %%insn_00418698) db 0
    %%insn_0041869e:
    lea eax,[esi-0x1] ; 0041869E 8D46FF
    %if ($ - %%insn_0041869e) > 3
        %error "LONG_0041869E"
    %endif
    times 3 - ($ - %%insn_0041869e) db 0
    %%insn_004186a1:
    pop edi ; 004186A1 5F
    %if ($ - %%insn_004186a1) > 1
        %error "LONG_004186A1"
    %endif
    times 1 - ($ - %%insn_004186a1) db 0
    %%insn_004186a2:
    pop esi ; 004186A2 5E
    %if ($ - %%insn_004186a2) > 1
        %error "LONG_004186A2"
    %endif
    times 1 - ($ - %%insn_004186a2) db 0
    %%insn_004186a3:
    pop ebp ; 004186A3 5D
    %if ($ - %%insn_004186a3) > 1
        %error "LONG_004186A3"
    %endif
    times 1 - ($ - %%insn_004186a3) db 0
    %%insn_004186a4:
    pop ebx ; 004186A4 5B
    %if ($ - %%insn_004186a4) > 1
        %error "LONG_004186A4"
    %endif
    times 1 - ($ - %%insn_004186a4) db 0
    %%insn_004186a5:
    pop ecx ; 004186A5 59
    %if ($ - %%insn_004186a5) > 1
        %error "LONG_004186A5"
    %endif
    times 1 - ($ - %%insn_004186a5) db 0
    %%insn_004186a6:
    ret ; 004186A6 C3
    %if ($ - %%insn_004186a6) > 1
        %error "LONG_004186A6"
    %endif
    times 1 - ($ - %%insn_004186a6) db 0
    %%insn_004186a7:
    test eax,eax ; 004186A7 85C0
    %if ($ - %%insn_004186a7) > 2
        %error "LONG_004186A7"
    %endif
    times 2 - ($ - %%insn_004186a7) db 0
    %%insn_004186a9:
    jnz 0x418776 ; 004186A9 0F85C7000000
    %if ($ - %%insn_004186a9) > 6
        %error "LONG_004186A9"
    %endif
    times 6 - ($ - %%insn_004186a9) db 0
    %%insn_004186af:
    call dword near [0x4243c4] ; 004186AF FF15C4434200
    %if ($ - %%insn_004186af) > 6
        %error "LONG_004186AF"
    %endif
    times 6 - ($ - %%insn_004186af) db 0
    %%insn_004186b5:
    cmp eax,0x7a ; 004186B5 83F87A
    %if ($ - %%insn_004186b5) > 3
        %error "LONG_004186B5"
    %endif
    times 3 - ($ - %%insn_004186b5) db 0
    %%insn_004186b8:
    jnz 0x418776 ; 004186B8 0F85B8000000
    %if ($ - %%insn_004186b8) > 6
        %error "LONG_004186B8"
    %endif
    times 6 - ($ - %%insn_004186b8) db 0
    db 0x3B, 0xF5 ; 004186BE 3BF5 | cmp esi,ebp | encoding preserved
    %%insn_004186c0:
    jnc short 0x41871c ; 004186C0 735A
    %if ($ - %%insn_004186c0) > 2
        %error "LONG_004186C0"
    %endif
    times 2 - ($ - %%insn_004186c0) db 0
    %%insn_004186c2:
    mov edx,[0x41f044] ; 004186C2 8B1544F04100
    %if ($ - %%insn_004186c2) > 6
        %error "LONG_004186C2"
    %endif
    times 6 - ($ - %%insn_004186c2) db 0
    %%insn_004186c8:
    lea ecx,[esp+0x10] ; 004186C8 8D4C2410
    %if ($ - %%insn_004186c8) > 4
        %error "LONG_004186C8"
    %endif
    times 4 - ($ - %%insn_004186c8) db 0
    %%insn_004186cc:
    push ecx ; 004186CC 51
    %if ($ - %%insn_004186cc) > 1
        %error "LONG_004186CC"
    %endif
    times 1 - ($ - %%insn_004186cc) db 0
    %%insn_004186cd:
    mov ecx,[0x420f30] ; 004186CD 8B0D300F4200
    %if ($ - %%insn_004186cd) > 6
        %error "LONG_004186CD"
    %endif
    times 6 - ($ - %%insn_004186cd) db 0
    %%insn_004186d3:
    push dword 0x0 ; 004186D3 6A00
    %if ($ - %%insn_004186d3) > 2
        %error "LONG_004186D3"
    %endif
    times 2 - ($ - %%insn_004186d3) db 0
    %%insn_004186d5:
    lea eax,[esp+0x24] ; 004186D5 8D442424
    %if ($ - %%insn_004186d5) > 4
        %error "LONG_004186D5"
    %endif
    times 4 - ($ - %%insn_004186d5) db 0
    %%insn_004186d9:
    push edx ; 004186D9 52
    %if ($ - %%insn_004186d9) > 1
        %error "LONG_004186D9"
    %endif
    times 1 - ($ - %%insn_004186d9) db 0
    %%insn_004186da:
    push eax ; 004186DA 50
    %if ($ - %%insn_004186da) > 1
        %error "LONG_004186DA"
    %endif
    times 1 - ($ - %%insn_004186da) db 0
    %%insn_004186db:
    push dword 0x1 ; 004186DB 6A01
    %if ($ - %%insn_004186db) > 2
        %error "LONG_004186DB"
    %endif
    times 2 - ($ - %%insn_004186db) db 0
    %%insn_004186dd:
    push ebx ; 004186DD 53
    %if ($ - %%insn_004186dd) > 1
        %error "LONG_004186DD"
    %endif
    times 1 - ($ - %%insn_004186dd) db 0
    %%insn_004186de:
    push dword 0x0 ; 004186DE 6A00
    %if ($ - %%insn_004186de) > 2
        %error "LONG_004186DE"
    %endif
    times 2 - ($ - %%insn_004186de) db 0
    %%insn_004186e0:
    push ecx ; 004186E0 51
    %if ($ - %%insn_004186e0) > 1
        %error "LONG_004186E0"
    %endif
    times 1 - ($ - %%insn_004186e0) db 0
    %%insn_004186e1:
    call dword near [0x4244d0] ; 004186E1 FF15D0444200
    %if ($ - %%insn_004186e1) > 6
        %error "LONG_004186E1"
    %endif
    times 6 - ($ - %%insn_004186e1) db 0
    %%insn_004186e7:
    test eax,eax ; 004186E7 85C0
    %if ($ - %%insn_004186e7) > 2
        %error "LONG_004186E7"
    %endif
    times 2 - ($ - %%insn_004186e7) db 0
    %%insn_004186e9:
    jz 0x418776 ; 004186E9 0F8487000000
    %if ($ - %%insn_004186e9) > 6
        %error "LONG_004186E9"
    %endif
    times 6 - ($ - %%insn_004186e9) db 0
    %%insn_004186ef:
    mov ecx,[esp+0x10] ; 004186EF 8B4C2410
    %if ($ - %%insn_004186ef) > 4
        %error "LONG_004186EF"
    %endif
    times 4 - ($ - %%insn_004186ef) db 0
    %%insn_004186f3:
    test ecx,ecx ; 004186F3 85C9
    %if ($ - %%insn_004186f3) > 2
        %error "LONG_004186F3"
    %endif
    times 2 - ($ - %%insn_004186f3) db 0
    %%insn_004186f5:
    jnz short 0x418776 ; 004186F5 757F
    %if ($ - %%insn_004186f5) > 2
        %error "LONG_004186F5"
    %endif
    times 2 - ($ - %%insn_004186f5) db 0
    %%insn_004186f7:
    lea edx,[eax+esi] ; 004186F7 8D1430
    %if ($ - %%insn_004186f7) > 3
        %error "LONG_004186F7"
    %endif
    times 3 - ($ - %%insn_004186f7) db 0
    db 0x3B, 0xD5 ; 004186FA 3BD5 | cmp edx,ebp | encoding preserved
    %%insn_004186fc:
    ja short 0x41871c ; 004186FC 771E
    %if ($ - %%insn_004186fc) > 2
        %error "LONG_004186FC"
    %endif
    times 2 - ($ - %%insn_004186fc) db 0
    db 0x33, 0xD2 ; 004186FE 33D2 | xor edx,edx | encoding preserved
    %%insn_00418700:
    test eax,eax ; 00418700 85C0
    %if ($ - %%insn_00418700) > 2
        %error "LONG_00418700"
    %endif
    times 2 - ($ - %%insn_00418700) db 0
    %%insn_00418702:
    jng short 0x418715 ; 00418702 7E11
    %if ($ - %%insn_00418702) > 2
        %error "LONG_00418702"
    %endif
    times 2 - ($ - %%insn_00418702) db 0
    %%insn_00418704:
    mov cl,[esp+edx+0x1c] ; 00418704 8A4C141C
    %if ($ - %%insn_00418704) > 4
        %error "LONG_00418704"
    %endif
    times 4 - ($ - %%insn_00418704) db 0
    %%insn_00418708:
    test cl,cl ; 00418708 84C9
    %if ($ - %%insn_00418708) > 2
        %error "LONG_00418708"
    %endif
    times 2 - ($ - %%insn_00418708) db 0
    %%insn_0041870a:
    mov [esi+edi],cl ; 0041870A 880C3E
    %if ($ - %%insn_0041870a) > 3
        %error "LONG_0041870A"
    %endif
    times 3 - ($ - %%insn_0041870a) db 0
    %%insn_0041870d:
    jz short 0x41871c ; 0041870D 740D
    %if ($ - %%insn_0041870d) > 2
        %error "LONG_0041870D"
    %endif
    times 2 - ($ - %%insn_0041870d) db 0
    %%insn_0041870f:
    inc edx ; 0041870F 42
    %if ($ - %%insn_0041870f) > 1
        %error "LONG_0041870F"
    %endif
    times 1 - ($ - %%insn_0041870f) db 0
    %%insn_00418710:
    inc esi ; 00418710 46
    %if ($ - %%insn_00418710) > 1
        %error "LONG_00418710"
    %endif
    times 1 - ($ - %%insn_00418710) db 0
    db 0x3B, 0xD0 ; 00418711 3BD0 | cmp edx,eax | encoding preserved
    %%insn_00418713:
    jl short 0x418704 ; 00418713 7CEF
    %if ($ - %%insn_00418713) > 2
        %error "LONG_00418713"
    %endif
    times 2 - ($ - %%insn_00418713) db 0
    %%insn_00418715:
    add ebx,0x2 ; 00418715 83C302
    %if ($ - %%insn_00418715) > 3
        %error "LONG_00418715"
    %endif
    times 3 - ($ - %%insn_00418715) db 0
    db 0x3B, 0xF5 ; 00418718 3BF5 | cmp esi,ebp | encoding preserved
    %%insn_0041871a:
    jc short 0x4186c2 ; 0041871A 72A6
    %if ($ - %%insn_0041871a) > 2
        %error "LONG_0041871A"
    %endif
    times 2 - ($ - %%insn_0041871a) db 0
    db 0x8B, 0xC6 ; 0041871C 8BC6 | mov eax,esi | encoding preserved
    %%insn_0041871e:
    pop edi ; 0041871E 5F
    %if ($ - %%insn_0041871e) > 1
        %error "LONG_0041871E"
    %endif
    times 1 - ($ - %%insn_0041871e) db 0
    %%insn_0041871f:
    pop esi ; 0041871F 5E
    %if ($ - %%insn_0041871f) > 1
        %error "LONG_0041871F"
    %endif
    times 1 - ($ - %%insn_0041871f) db 0
    %%insn_00418720:
    pop ebp ; 00418720 5D
    %if ($ - %%insn_00418720) > 1
        %error "LONG_00418720"
    %endif
    times 1 - ($ - %%insn_00418720) db 0
    %%insn_00418721:
    pop ebx ; 00418721 5B
    %if ($ - %%insn_00418721) > 1
        %error "LONG_00418721"
    %endif
    times 1 - ($ - %%insn_00418721) db 0
    %%insn_00418722:
    pop ecx ; 00418722 59
    %if ($ - %%insn_00418722) > 1
        %error "LONG_00418722"
    %endif
    times 1 - ($ - %%insn_00418722) db 0
    %%insn_00418723:
    ret ; 00418723 C3
    %if ($ - %%insn_00418723) > 1
        %error "LONG_00418723"
    %endif
    times 1 - ($ - %%insn_00418723) db 0
    %%insn_00418724:
    mov eax,[0x420f20] ; 00418724 A1200F4200
    %if ($ - %%insn_00418724) > 5
        %error "LONG_00418724"
    %endif
    times 5 - ($ - %%insn_00418724) db 0
    %%insn_00418729:
    test eax,eax ; 00418729 85C0
    %if ($ - %%insn_00418729) > 2
        %error "LONG_00418729"
    %endif
    times 2 - ($ - %%insn_00418729) db 0
    %%insn_0041872b:
    jnz short 0x418740 ; 0041872B 7513
    %if ($ - %%insn_0041872b) > 2
        %error "LONG_0041872B"
    %endif
    times 2 - ($ - %%insn_0041872b) db 0
    %%insn_0041872d:
    mov eax,[esp+0x1c] ; 0041872D 8B44241C
    %if ($ - %%insn_0041872d) > 4
        %error "LONG_0041872D"
    %endif
    times 4 - ($ - %%insn_0041872d) db 0
    %%insn_00418731:
    push eax ; 00418731 50
    %if ($ - %%insn_00418731) > 1
        %error "LONG_00418731"
    %endif
    times 1 - ($ - %%insn_00418731) db 0
    %%insn_00418732:
    call 0x415530 ; 00418732 E8F9CDFFFF
    %if ($ - %%insn_00418732) > 5
        %error "LONG_00418732"
    %endif
    times 5 - ($ - %%insn_00418732) db 0
    %%insn_00418737:
    add esp,0x4 ; 00418737 83C404
    %if ($ - %%insn_00418737) > 3
        %error "LONG_00418737"
    %endif
    times 3 - ($ - %%insn_00418737) db 0
    %%insn_0041873a:
    pop edi ; 0041873A 5F
    %if ($ - %%insn_0041873a) > 1
        %error "LONG_0041873A"
    %endif
    times 1 - ($ - %%insn_0041873a) db 0
    %%insn_0041873b:
    pop esi ; 0041873B 5E
    %if ($ - %%insn_0041873b) > 1
        %error "LONG_0041873B"
    %endif
    times 1 - ($ - %%insn_0041873b) db 0
    %%insn_0041873c:
    pop ebp ; 0041873C 5D
    %if ($ - %%insn_0041873c) > 1
        %error "LONG_0041873C"
    %endif
    times 1 - ($ - %%insn_0041873c) db 0
    %%insn_0041873d:
    pop ebx ; 0041873D 5B
    %if ($ - %%insn_0041873d) > 1
        %error "LONG_0041873D"
    %endif
    times 1 - ($ - %%insn_0041873d) db 0
    %%insn_0041873e:
    pop ecx ; 0041873E 59
    %if ($ - %%insn_0041873e) > 1
        %error "LONG_0041873E"
    %endif
    times 1 - ($ - %%insn_0041873e) db 0
    %%insn_0041873f:
    ret ; 0041873F C3
    %if ($ - %%insn_0041873f) > 1
        %error "LONG_0041873F"
    %endif
    times 1 - ($ - %%insn_0041873f) db 0
    %%insn_00418740:
    mov edx,[esp+0x1c] ; 00418740 8B54241C
    %if ($ - %%insn_00418740) > 4
        %error "LONG_00418740"
    %endif
    times 4 - ($ - %%insn_00418740) db 0
    %%insn_00418744:
    mov eax,[0x420f30] ; 00418744 A1300F4200
    %if ($ - %%insn_00418744) > 5
        %error "LONG_00418744"
    %endif
    times 5 - ($ - %%insn_00418744) db 0
    %%insn_00418749:
    lea ecx,[esp+0x10] ; 00418749 8D4C2410
    %if ($ - %%insn_00418749) > 4
        %error "LONG_00418749"
    %endif
    times 4 - ($ - %%insn_00418749) db 0
    %%insn_0041874d:
    push ecx ; 0041874D 51
    %if ($ - %%insn_0041874d) > 1
        %error "LONG_0041874D"
    %endif
    times 1 - ($ - %%insn_0041874d) db 0
    %%insn_0041874e:
    push dword 0x0 ; 0041874E 6A00
    %if ($ - %%insn_0041874e) > 2
        %error "LONG_0041874E"
    %endif
    times 2 - ($ - %%insn_0041874e) db 0
    %%insn_00418750:
    push dword 0x0 ; 00418750 6A00
    %if ($ - %%insn_00418750) > 2
        %error "LONG_00418750"
    %endif
    times 2 - ($ - %%insn_00418750) db 0
    %%insn_00418752:
    push dword 0x0 ; 00418752 6A00
    %if ($ - %%insn_00418752) > 2
        %error "LONG_00418752"
    %endif
    times 2 - ($ - %%insn_00418752) db 0
    %%insn_00418754:
    push dword 0xffffffffffffffff ; 00418754 6AFF
    %if ($ - %%insn_00418754) > 2
        %error "LONG_00418754"
    %endif
    times 2 - ($ - %%insn_00418754) db 0
    %%insn_00418756:
    push edx ; 00418756 52
    %if ($ - %%insn_00418756) > 1
        %error "LONG_00418756"
    %endif
    times 1 - ($ - %%insn_00418756) db 0
    %%insn_00418757:
    push dword 0x220 ; 00418757 6820020000
    %if ($ - %%insn_00418757) > 5
        %error "LONG_00418757"
    %endif
    times 5 - ($ - %%insn_00418757) db 0
    %%insn_0041875c:
    push eax ; 0041875C 50
    %if ($ - %%insn_0041875c) > 1
        %error "LONG_0041875C"
    %endif
    times 1 - ($ - %%insn_0041875c) db 0
    %%insn_0041875d:
    call dword near [0x4244d0] ; 0041875D FF15D0444200
    %if ($ - %%insn_0041875d) > 6
        %error "LONG_0041875D"
    %endif
    times 6 - ($ - %%insn_0041875d) db 0
    %%insn_00418763:
    test eax,eax ; 00418763 85C0
    %if ($ - %%insn_00418763) > 2
        %error "LONG_00418763"
    %endif
    times 2 - ($ - %%insn_00418763) db 0
    %%insn_00418765:
    jz short 0x418776 ; 00418765 740F
    %if ($ - %%insn_00418765) > 2
        %error "LONG_00418765"
    %endif
    times 2 - ($ - %%insn_00418765) db 0
    %%insn_00418767:
    mov ecx,[esp+0x10] ; 00418767 8B4C2410
    %if ($ - %%insn_00418767) > 4
        %error "LONG_00418767"
    %endif
    times 4 - ($ - %%insn_00418767) db 0
    %%insn_0041876b:
    test ecx,ecx ; 0041876B 85C9
    %if ($ - %%insn_0041876b) > 2
        %error "LONG_0041876B"
    %endif
    times 2 - ($ - %%insn_0041876b) db 0
    %%insn_0041876d:
    jnz short 0x418776 ; 0041876D 7507
    %if ($ - %%insn_0041876d) > 2
        %error "LONG_0041876D"
    %endif
    times 2 - ($ - %%insn_0041876d) db 0
    %%insn_0041876f:
    dec eax ; 0041876F 48
    %if ($ - %%insn_0041876f) > 1
        %error "LONG_0041876F"
    %endif
    times 1 - ($ - %%insn_0041876f) db 0
    %%insn_00418770:
    pop edi ; 00418770 5F
    %if ($ - %%insn_00418770) > 1
        %error "LONG_00418770"
    %endif
    times 1 - ($ - %%insn_00418770) db 0
    %%insn_00418771:
    pop esi ; 00418771 5E
    %if ($ - %%insn_00418771) > 1
        %error "LONG_00418771"
    %endif
    times 1 - ($ - %%insn_00418771) db 0
    %%insn_00418772:
    pop ebp ; 00418772 5D
    %if ($ - %%insn_00418772) > 1
        %error "LONG_00418772"
    %endif
    times 1 - ($ - %%insn_00418772) db 0
    %%insn_00418773:
    pop ebx ; 00418773 5B
    %if ($ - %%insn_00418773) > 1
        %error "LONG_00418773"
    %endif
    times 1 - ($ - %%insn_00418773) db 0
    %%insn_00418774:
    pop ecx ; 00418774 59
    %if ($ - %%insn_00418774) > 1
        %error "LONG_00418774"
    %endif
    times 1 - ($ - %%insn_00418774) db 0
    %%insn_00418775:
    ret ; 00418775 C3
    %if ($ - %%insn_00418775) > 1
        %error "LONG_00418775"
    %endif
    times 1 - ($ - %%insn_00418775) db 0
    %%insn_00418776:
    call 0x410e10 ; 00418776 E89586FFFF
    %if ($ - %%insn_00418776) > 5
        %error "LONG_00418776"
    %endif
    times 5 - ($ - %%insn_00418776) db 0
    %%insn_0041877b:
    mov dword [eax],0x2a ; 0041877B C7002A000000
    %if ($ - %%insn_0041877b) > 6
        %error "LONG_0041877B"
    %endif
    times 6 - ($ - %%insn_0041877b) db 0
    %%insn_00418781:
    or eax,0xffffffffffffffff ; 00418781 83C8FF
    %if ($ - %%insn_00418781) > 3
        %error "LONG_00418781"
    %endif
    times 3 - ($ - %%insn_00418781) db 0
    %%insn_00418784:
    pop edi ; 00418784 5F
    %if ($ - %%insn_00418784) > 1
        %error "LONG_00418784"
    %endif
    times 1 - ($ - %%insn_00418784) db 0
    %%insn_00418785:
    pop esi ; 00418785 5E
    %if ($ - %%insn_00418785) > 1
        %error "LONG_00418785"
    %endif
    times 1 - ($ - %%insn_00418785) db 0
    %%insn_00418786:
    pop ebp ; 00418786 5D
    %if ($ - %%insn_00418786) > 1
        %error "LONG_00418786"
    %endif
    times 1 - ($ - %%insn_00418786) db 0
    %%insn_00418787:
    pop ebx ; 00418787 5B
    %if ($ - %%insn_00418787) > 1
        %error "LONG_00418787"
    %endif
    times 1 - ($ - %%insn_00418787) db 0
    %%insn_00418788:
    pop ecx ; 00418788 59
    %if ($ - %%insn_00418788) > 1
        %error "LONG_00418788"
    %endif
    times 1 - ($ - %%insn_00418788) db 0
    %%insn_00418789:
    ret ; 00418789 C3
    %if ($ - %%insn_00418789) > 1
        %error "LONG_00418789"
    %endif
    times 1 - ($ - %%insn_00418789) db 0
    %if ($ - %%fragment_start) != 490
        %error "function fragment size drift: 004185A0"
    %endif
%endmacro
