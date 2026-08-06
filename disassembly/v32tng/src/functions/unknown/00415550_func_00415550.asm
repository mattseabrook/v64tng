; PE virtual entry 00415550
; Ghidra working symbol: FUN_00415550
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00415550_part_00 0
    %%fragment_start:
func_00415550:
    %%insn_00415550:
    push ebx ; 00415550 53
    %if ($ - %%insn_00415550) > 1
        %error "LONG_00415550"
    %endif
    times 1 - ($ - %%insn_00415550) db 0
    %%insn_00415551:
    mov ebx,[esp+0xc] ; 00415551 8B5C240C
    %if ($ - %%insn_00415551) > 4
        %error "LONG_00415551"
    %endif
    times 4 - ($ - %%insn_00415551) db 0
    %%insn_00415555:
    imul ebx,[esp+0x8] ; 00415555 0FAF5C2408
    %if ($ - %%insn_00415555) > 5
        %error "LONG_00415555"
    %endif
    times 5 - ($ - %%insn_00415555) db 0
    %%insn_0041555a:
    push ebp ; 0041555A 55
    %if ($ - %%insn_0041555a) > 1
        %error "LONG_0041555A"
    %endif
    times 1 - ($ - %%insn_0041555a) db 0
    %%insn_0041555b:
    push esi ; 0041555B 56
    %if ($ - %%insn_0041555b) > 1
        %error "LONG_0041555B"
    %endif
    times 1 - ($ - %%insn_0041555b) db 0
    %%insn_0041555c:
    cmp ebx,0xffffffffffffffe0 ; 0041555C 83FBE0
    %if ($ - %%insn_0041555c) > 3
        %error "LONG_0041555C"
    %endif
    times 3 - ($ - %%insn_0041555c) db 0
    %%insn_0041555f:
    push edi ; 0041555F 57
    %if ($ - %%insn_0041555f) > 1
        %error "LONG_0041555F"
    %endif
    times 1 - ($ - %%insn_0041555f) db 0
    %%insn_00415560:
    ja short 0x415573 ; 00415560 7711
    %if ($ - %%insn_00415560) > 2
        %error "LONG_00415560"
    %endif
    times 2 - ($ - %%insn_00415560) db 0
    %%insn_00415562:
    test ebx,ebx ; 00415562 85DB
    %if ($ - %%insn_00415562) > 2
        %error "LONG_00415562"
    %endif
    times 2 - ($ - %%insn_00415562) db 0
    %%insn_00415564:
    jna short 0x41556e ; 00415564 7608
    %if ($ - %%insn_00415564) > 2
        %error "LONG_00415564"
    %endif
    times 2 - ($ - %%insn_00415564) db 0
    %%insn_00415566:
    add ebx,0xf ; 00415566 83C30F
    %if ($ - %%insn_00415566) > 3
        %error "LONG_00415566"
    %endif
    times 3 - ($ - %%insn_00415566) db 0
    %%insn_00415569:
    and ebx,0xfffffffffffffff0 ; 00415569 83E3F0
    %if ($ - %%insn_00415569) > 3
        %error "LONG_00415569"
    %endif
    times 3 - ($ - %%insn_00415569) db 0
    %%insn_0041556c:
    jmp short 0x415573 ; 0041556C EB05
    %if ($ - %%insn_0041556c) > 2
        %error "LONG_0041556C"
    %endif
    times 2 - ($ - %%insn_0041556c) db 0
    %%insn_0041556e:
    mov ebx,0x10 ; 0041556E BB10000000
    %if ($ - %%insn_0041556e) > 5
        %error "LONG_0041556E"
    %endif
    times 5 - ($ - %%insn_0041556e) db 0
    %%insn_00415573:
    mov ebp,[0x424440] ; 00415573 8B2D40444200
    %if ($ - %%insn_00415573) > 6
        %error "LONG_00415573"
    %endif
    times 6 - ($ - %%insn_00415573) db 0
    db 0x33, 0xF6 ; 00415579 33F6 | xor esi,esi | encoding preserved
    %%insn_0041557b:
    cmp ebx,0xffffffffffffffe0 ; 0041557B 83FBE0
    %if ($ - %%insn_0041557b) > 3
        %error "LONG_0041557B"
    %endif
    times 3 - ($ - %%insn_0041557b) db 0
    %%insn_0041557e:
    ja short 0x4155d5 ; 0041557E 7755
    %if ($ - %%insn_0041557e) > 2
        %error "LONG_0041557E"
    %endif
    times 2 - ($ - %%insn_0041557e) db 0
    %%insn_00415580:
    cmp ebx,[0x41de84] ; 00415580 3B1D84DE4100
    %if ($ - %%insn_00415580) > 6
        %error "LONG_00415580"
    %endif
    times 6 - ($ - %%insn_00415580) db 0
    %%insn_00415586:
    ja short 0x4155c4 ; 00415586 773C
    %if ($ - %%insn_00415586) > 2
        %error "LONG_00415586"
    %endif
    times 2 - ($ - %%insn_00415586) db 0
    %%insn_00415588:
    push dword 0x9 ; 00415588 6A09
    %if ($ - %%insn_00415588) > 2
        %error "LONG_00415588"
    %endif
    times 2 - ($ - %%insn_00415588) db 0
    %%insn_0041558a:
    call 0x40df00 ; 0041558A E87189FFFF
    %if ($ - %%insn_0041558a) > 5
        %error "LONG_0041558A"
    %endif
    times 5 - ($ - %%insn_0041558a) db 0
    db 0x8B, 0xC3 ; 0041558F 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00415591:
    add esp,0x4 ; 00415591 83C404
    %if ($ - %%insn_00415591) > 3
        %error "LONG_00415591"
    %endif
    times 3 - ($ - %%insn_00415591) db 0
    %%insn_00415594:
    shr eax,byte 0x4 ; 00415594 C1E804
    %if ($ - %%insn_00415594) > 3
        %error "LONG_00415594"
    %endif
    times 3 - ($ - %%insn_00415594) db 0
    %%insn_00415597:
    push eax ; 00415597 50
    %if ($ - %%insn_00415597) > 1
        %error "LONG_00415597"
    %endif
    times 1 - ($ - %%insn_00415597) db 0
    %%insn_00415598:
    call 0x40e430 ; 00415598 E8938EFFFF
    %if ($ - %%insn_00415598) > 5
        %error "LONG_00415598"
    %endif
    times 5 - ($ - %%insn_00415598) db 0
    %%insn_0041559d:
    add esp,0x4 ; 0041559D 83C404
    %if ($ - %%insn_0041559d) > 3
        %error "LONG_0041559D"
    %endif
    times 3 - ($ - %%insn_0041559d) db 0
    db 0x8B, 0xF0 ; 004155A0 8BF0 | mov esi,eax | encoding preserved
    %%insn_004155a2:
    push dword 0x9 ; 004155A2 6A09
    %if ($ - %%insn_004155a2) > 2
        %error "LONG_004155A2"
    %endif
    times 2 - ($ - %%insn_004155a2) db 0
    %%insn_004155a4:
    call 0x40df80 ; 004155A4 E8D789FFFF
    %if ($ - %%insn_004155a4) > 5
        %error "LONG_004155A4"
    %endif
    times 5 - ($ - %%insn_004155a4) db 0
    %%insn_004155a9:
    add esp,0x4 ; 004155A9 83C404
    %if ($ - %%insn_004155a9) > 3
        %error "LONG_004155A9"
    %endif
    times 3 - ($ - %%insn_004155a9) db 0
    %%insn_004155ac:
    test esi,esi ; 004155AC 85F6
    %if ($ - %%insn_004155ac) > 2
        %error "LONG_004155AC"
    %endif
    times 2 - ($ - %%insn_004155ac) db 0
    %%insn_004155ae:
    jz short 0x4155c8 ; 004155AE 7418
    %if ($ - %%insn_004155ae) > 2
        %error "LONG_004155AE"
    %endif
    times 2 - ($ - %%insn_004155ae) db 0
    db 0x8B, 0xCB ; 004155B0 8BCB | mov ecx,ebx | encoding preserved
    db 0x33, 0xC0 ; 004155B2 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xD1 ; 004155B4 8BD1 | mov edx,ecx | encoding preserved
    db 0x8B, 0xFE ; 004155B6 8BFE | mov edi,esi | encoding preserved
    %%insn_004155b8:
    shr ecx,byte 0x2 ; 004155B8 C1E902
    %if ($ - %%insn_004155b8) > 3
        %error "LONG_004155B8"
    %endif
    times 3 - ($ - %%insn_004155b8) db 0
    %%insn_004155bb:
    rep stosd ; 004155BB F3AB
    %if ($ - %%insn_004155bb) > 2
        %error "LONG_004155BB"
    %endif
    times 2 - ($ - %%insn_004155bb) db 0
    db 0x8B, 0xCA ; 004155BD 8BCA | mov ecx,edx | encoding preserved
    %%insn_004155bf:
    and ecx,0x3 ; 004155BF 83E103
    %if ($ - %%insn_004155bf) > 3
        %error "LONG_004155BF"
    %endif
    times 3 - ($ - %%insn_004155bf) db 0
    %%insn_004155c2:
    rep stosb ; 004155C2 F3AA
    %if ($ - %%insn_004155c2) > 2
        %error "LONG_004155C2"
    %endif
    times 2 - ($ - %%insn_004155c2) db 0
    %%insn_004155c4:
    test esi,esi ; 004155C4 85F6
    %if ($ - %%insn_004155c4) > 2
        %error "LONG_004155C4"
    %endif
    times 2 - ($ - %%insn_004155c4) db 0
    %%insn_004155c6:
    jnz short 0x4155f4 ; 004155C6 752C
    %if ($ - %%insn_004155c6) > 2
        %error "LONG_004155C6"
    %endif
    times 2 - ($ - %%insn_004155c6) db 0
    %%insn_004155c8:
    mov eax,[0x42358c] ; 004155C8 A18C354200
    %if ($ - %%insn_004155c8) > 5
        %error "LONG_004155C8"
    %endif
    times 5 - ($ - %%insn_004155c8) db 0
    %%insn_004155cd:
    push ebx ; 004155CD 53
    %if ($ - %%insn_004155cd) > 1
        %error "LONG_004155CD"
    %endif
    times 1 - ($ - %%insn_004155cd) db 0
    %%insn_004155ce:
    push dword 0x8 ; 004155CE 6A08
    %if ($ - %%insn_004155ce) > 2
        %error "LONG_004155CE"
    %endif
    times 2 - ($ - %%insn_004155ce) db 0
    %%insn_004155d0:
    push eax ; 004155D0 50
    %if ($ - %%insn_004155d0) > 1
        %error "LONG_004155D0"
    %endif
    times 1 - ($ - %%insn_004155d0) db 0
    %%insn_004155d1:
    call ebp ; 004155D1 FFD5
    %if ($ - %%insn_004155d1) > 2
        %error "LONG_004155D1"
    %endif
    times 2 - ($ - %%insn_004155d1) db 0
    db 0x8B, 0xF0 ; 004155D3 8BF0 | mov esi,eax | encoding preserved
    %%insn_004155d5:
    test esi,esi ; 004155D5 85F6
    %if ($ - %%insn_004155d5) > 2
        %error "LONG_004155D5"
    %endif
    times 2 - ($ - %%insn_004155d5) db 0
    %%insn_004155d7:
    jnz short 0x4155f4 ; 004155D7 751B
    %if ($ - %%insn_004155d7) > 2
        %error "LONG_004155D7"
    %endif
    times 2 - ($ - %%insn_004155d7) db 0
    %%insn_004155d9:
    mov eax,[0x420f0c] ; 004155D9 A10C0F4200
    %if ($ - %%insn_004155d9) > 5
        %error "LONG_004155D9"
    %endif
    times 5 - ($ - %%insn_004155d9) db 0
    %%insn_004155de:
    test eax,eax ; 004155DE 85C0
    %if ($ - %%insn_004155de) > 2
        %error "LONG_004155DE"
    %endif
    times 2 - ($ - %%insn_004155de) db 0
    %%insn_004155e0:
    jz short 0x4155f4 ; 004155E0 7412
    %if ($ - %%insn_004155e0) > 2
        %error "LONG_004155E0"
    %endif
    times 2 - ($ - %%insn_004155e0) db 0
    %%insn_004155e2:
    push ebx ; 004155E2 53
    %if ($ - %%insn_004155e2) > 1
        %error "LONG_004155E2"
    %endif
    times 1 - ($ - %%insn_004155e2) db 0
    %%insn_004155e3:
    call 0x40f6c0 ; 004155E3 E8D8A0FFFF
    %if ($ - %%insn_004155e3) > 5
        %error "LONG_004155E3"
    %endif
    times 5 - ($ - %%insn_004155e3) db 0
    %%insn_004155e8:
    add esp,0x4 ; 004155E8 83C404
    %if ($ - %%insn_004155e8) > 3
        %error "LONG_004155E8"
    %endif
    times 3 - ($ - %%insn_004155e8) db 0
    %%insn_004155eb:
    test eax,eax ; 004155EB 85C0
    %if ($ - %%insn_004155eb) > 2
        %error "LONG_004155EB"
    %endif
    times 2 - ($ - %%insn_004155eb) db 0
    %%insn_004155ed:
    jnz short 0x415579 ; 004155ED 758A
    %if ($ - %%insn_004155ed) > 2
        %error "LONG_004155ED"
    %endif
    times 2 - ($ - %%insn_004155ed) db 0
    %%insn_004155ef:
    pop edi ; 004155EF 5F
    %if ($ - %%insn_004155ef) > 1
        %error "LONG_004155EF"
    %endif
    times 1 - ($ - %%insn_004155ef) db 0
    %%insn_004155f0:
    pop esi ; 004155F0 5E
    %if ($ - %%insn_004155f0) > 1
        %error "LONG_004155F0"
    %endif
    times 1 - ($ - %%insn_004155f0) db 0
    %%insn_004155f1:
    pop ebp ; 004155F1 5D
    %if ($ - %%insn_004155f1) > 1
        %error "LONG_004155F1"
    %endif
    times 1 - ($ - %%insn_004155f1) db 0
    %%insn_004155f2:
    pop ebx ; 004155F2 5B
    %if ($ - %%insn_004155f2) > 1
        %error "LONG_004155F2"
    %endif
    times 1 - ($ - %%insn_004155f2) db 0
    %%insn_004155f3:
    ret ; 004155F3 C3
    %if ($ - %%insn_004155f3) > 1
        %error "LONG_004155F3"
    %endif
    times 1 - ($ - %%insn_004155f3) db 0
    db 0x8B, 0xC6 ; 004155F4 8BC6 | mov eax,esi | encoding preserved
    %%insn_004155f6:
    pop edi ; 004155F6 5F
    %if ($ - %%insn_004155f6) > 1
        %error "LONG_004155F6"
    %endif
    times 1 - ($ - %%insn_004155f6) db 0
    %%insn_004155f7:
    pop esi ; 004155F7 5E
    %if ($ - %%insn_004155f7) > 1
        %error "LONG_004155F7"
    %endif
    times 1 - ($ - %%insn_004155f7) db 0
    %%insn_004155f8:
    pop ebp ; 004155F8 5D
    %if ($ - %%insn_004155f8) > 1
        %error "LONG_004155F8"
    %endif
    times 1 - ($ - %%insn_004155f8) db 0
    %%insn_004155f9:
    pop ebx ; 004155F9 5B
    %if ($ - %%insn_004155f9) > 1
        %error "LONG_004155F9"
    %endif
    times 1 - ($ - %%insn_004155f9) db 0
    %%insn_004155fa:
    ret ; 004155FA C3
    %if ($ - %%insn_004155fa) > 1
        %error "LONG_004155FA"
    %endif
    times 1 - ($ - %%insn_004155fa) db 0
    %if ($ - %%fragment_start) != 171
        %error "function fragment size drift: 00415550"
    %endif
%endmacro
