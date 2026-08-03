; PE virtual entry 00417520
; Ghidra working symbol: FUN_00417520
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00417520_part_00 0
    %%fragment_start:
func_00417520:
    %%insn_00417520:
    push ebx ; 00417520 53
    %if ($ - %%insn_00417520) > 1
        %error "LONG_00417520"
    %endif
    times 1 - ($ - %%insn_00417520) db 0
    %%insn_00417521:
    push ebp ; 00417521 55
    %if ($ - %%insn_00417521) > 1
        %error "LONG_00417521"
    %endif
    times 1 - ($ - %%insn_00417521) db 0
    %%insn_00417522:
    push esi ; 00417522 56
    %if ($ - %%insn_00417522) > 1
        %error "LONG_00417522"
    %endif
    times 1 - ($ - %%insn_00417522) db 0
    %%insn_00417523:
    push edi ; 00417523 57
    %if ($ - %%insn_00417523) > 1
        %error "LONG_00417523"
    %endif
    times 1 - ($ - %%insn_00417523) db 0
    %%insn_00417524:
    mov edi,[esp+0x14] ; 00417524 8B7C2414
    %if ($ - %%insn_00417524) > 4
        %error "LONG_00417524"
    %endif
    times 4 - ($ - %%insn_00417524) db 0
    %%insn_00417528:
    cmp dword [0x41f044],0x1 ; 00417528 833D44F0410001
    %if ($ - %%insn_00417528) > 7
        %error "LONG_00417528"
    %endif
    times 7 - ($ - %%insn_00417528) db 0
    %%insn_0041752f:
    jng short 0x417542 ; 0041752F 7E11
    %if ($ - %%insn_0041752f) > 2
        %error "LONG_0041752F"
    %endif
    times 2 - ($ - %%insn_0041752f) db 0
    db 0x33, 0xC0 ; 00417531 33C0 | xor eax,eax | encoding preserved
    %%insn_00417533:
    push dword 0x8 ; 00417533 6A08
    %if ($ - %%insn_00417533) > 2
        %error "LONG_00417533"
    %endif
    times 2 - ($ - %%insn_00417533) db 0
    %%insn_00417535:
    mov al,[edi] ; 00417535 8A07
    %if ($ - %%insn_00417535) > 2
        %error "LONG_00417535"
    %endif
    times 2 - ($ - %%insn_00417535) db 0
    %%insn_00417537:
    push eax ; 00417537 50
    %if ($ - %%insn_00417537) > 1
        %error "LONG_00417537"
    %endif
    times 1 - ($ - %%insn_00417537) db 0
    %%insn_00417538:
    call 0x414da0 ; 00417538 E863D8FFFF
    %if ($ - %%insn_00417538) > 5
        %error "LONG_00417538"
    %endif
    times 5 - ($ - %%insn_00417538) db 0
    %%insn_0041753d:
    add esp,0x8 ; 0041753D 83C408
    %if ($ - %%insn_0041753d) > 3
        %error "LONG_0041753D"
    %endif
    times 3 - ($ - %%insn_0041753d) db 0
    %%insn_00417540:
    jmp short 0x417552 ; 00417540 EB10
    %if ($ - %%insn_00417540) > 2
        %error "LONG_00417540"
    %endif
    times 2 - ($ - %%insn_00417540) db 0
    %%insn_00417542:
    mov edx,[0x41e640] ; 00417542 8B1540E64100
    %if ($ - %%insn_00417542) > 6
        %error "LONG_00417542"
    %endif
    times 6 - ($ - %%insn_00417542) db 0
    db 0x33, 0xC9 ; 00417548 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0041754a:
    mov cl,[edi] ; 0041754A 8A0F
    %if ($ - %%insn_0041754a) > 2
        %error "LONG_0041754A"
    %endif
    times 2 - ($ - %%insn_0041754a) db 0
    %%insn_0041754c:
    mov al,[edx+ecx*2] ; 0041754C 8A044A
    %if ($ - %%insn_0041754c) > 3
        %error "LONG_0041754C"
    %endif
    times 3 - ($ - %%insn_0041754c) db 0
    %%insn_0041754f:
    and eax,0x8 ; 0041754F 83E008
    %if ($ - %%insn_0041754f) > 3
        %error "LONG_0041754F"
    %endif
    times 3 - ($ - %%insn_0041754f) db 0
    %%insn_00417552:
    test eax,eax ; 00417552 85C0
    %if ($ - %%insn_00417552) > 2
        %error "LONG_00417552"
    %endif
    times 2 - ($ - %%insn_00417552) db 0
    %%insn_00417554:
    jz short 0x417559 ; 00417554 7403
    %if ($ - %%insn_00417554) > 2
        %error "LONG_00417554"
    %endif
    times 2 - ($ - %%insn_00417554) db 0
    %%insn_00417556:
    inc edi ; 00417556 47
    %if ($ - %%insn_00417556) > 1
        %error "LONG_00417556"
    %endif
    times 1 - ($ - %%insn_00417556) db 0
    %%insn_00417557:
    jmp short 0x417528 ; 00417557 EBCF
    %if ($ - %%insn_00417557) > 2
        %error "LONG_00417557"
    %endif
    times 2 - ($ - %%insn_00417557) db 0
    db 0x33, 0xC0 ; 00417559 33C0 | xor eax,eax | encoding preserved
    %%insn_0041755b:
    mov al,[edi] ; 0041755B 8A07
    %if ($ - %%insn_0041755b) > 2
        %error "LONG_0041755B"
    %endif
    times 2 - ($ - %%insn_0041755b) db 0
    %%insn_0041755d:
    inc edi ; 0041755D 47
    %if ($ - %%insn_0041755d) > 1
        %error "LONG_0041755D"
    %endif
    times 1 - ($ - %%insn_0041755d) db 0
    db 0x8B, 0xF0 ; 0041755E 8BF0 | mov esi,eax | encoding preserved
    %%insn_00417560:
    cmp esi,0x2d ; 00417560 83FE2D
    %if ($ - %%insn_00417560) > 3
        %error "LONG_00417560"
    %endif
    times 3 - ($ - %%insn_00417560) db 0
    db 0x8B, 0xEE ; 00417563 8BEE | mov ebp,esi | encoding preserved
    %%insn_00417565:
    jz short 0x41756c ; 00417565 7405
    %if ($ - %%insn_00417565) > 2
        %error "LONG_00417565"
    %endif
    times 2 - ($ - %%insn_00417565) db 0
    %%insn_00417567:
    cmp esi,0x2b ; 00417567 83FE2B
    %if ($ - %%insn_00417567) > 3
        %error "LONG_00417567"
    %endif
    times 3 - ($ - %%insn_00417567) db 0
    %%insn_0041756a:
    jnz short 0x417573 ; 0041756A 7507
    %if ($ - %%insn_0041756a) > 2
        %error "LONG_0041756A"
    %endif
    times 2 - ($ - %%insn_0041756a) db 0
    db 0x33, 0xC9 ; 0041756C 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0041756e:
    mov cl,[edi] ; 0041756E 8A0F
    %if ($ - %%insn_0041756e) > 2
        %error "LONG_0041756E"
    %endif
    times 2 - ($ - %%insn_0041756e) db 0
    %%insn_00417570:
    inc edi ; 00417570 47
    %if ($ - %%insn_00417570) > 1
        %error "LONG_00417570"
    %endif
    times 1 - ($ - %%insn_00417570) db 0
    db 0x8B, 0xF1 ; 00417571 8BF1 | mov esi,ecx | encoding preserved
    db 0x33, 0xDB ; 00417573 33DB | xor ebx,ebx | encoding preserved
    %%insn_00417575:
    cmp dword [0x41f044],0x1 ; 00417575 833D44F0410001
    %if ($ - %%insn_00417575) > 7
        %error "LONG_00417575"
    %endif
    times 7 - ($ - %%insn_00417575) db 0
    %%insn_0041757c:
    jng short 0x41758b ; 0041757C 7E0D
    %if ($ - %%insn_0041757c) > 2
        %error "LONG_0041757C"
    %endif
    times 2 - ($ - %%insn_0041757c) db 0
    %%insn_0041757e:
    push dword 0x4 ; 0041757E 6A04
    %if ($ - %%insn_0041757e) > 2
        %error "LONG_0041757E"
    %endif
    times 2 - ($ - %%insn_0041757e) db 0
    %%insn_00417580:
    push esi ; 00417580 56
    %if ($ - %%insn_00417580) > 1
        %error "LONG_00417580"
    %endif
    times 1 - ($ - %%insn_00417580) db 0
    %%insn_00417581:
    call 0x414da0 ; 00417581 E81AD8FFFF
    %if ($ - %%insn_00417581) > 5
        %error "LONG_00417581"
    %endif
    times 5 - ($ - %%insn_00417581) db 0
    %%insn_00417586:
    add esp,0x8 ; 00417586 83C408
    %if ($ - %%insn_00417586) > 3
        %error "LONG_00417586"
    %endif
    times 3 - ($ - %%insn_00417586) db 0
    %%insn_00417589:
    jmp short 0x417597 ; 00417589 EB0C
    %if ($ - %%insn_00417589) > 2
        %error "LONG_00417589"
    %endif
    times 2 - ($ - %%insn_00417589) db 0
    %%insn_0041758b:
    mov edx,[0x41e640] ; 0041758B 8B1540E64100
    %if ($ - %%insn_0041758b) > 6
        %error "LONG_0041758B"
    %endif
    times 6 - ($ - %%insn_0041758b) db 0
    %%insn_00417591:
    mov al,[edx+esi*2] ; 00417591 8A0472
    %if ($ - %%insn_00417591) > 3
        %error "LONG_00417591"
    %endif
    times 3 - ($ - %%insn_00417591) db 0
    %%insn_00417594:
    and eax,0x4 ; 00417594 83E004
    %if ($ - %%insn_00417594) > 3
        %error "LONG_00417594"
    %endif
    times 3 - ($ - %%insn_00417594) db 0
    %%insn_00417597:
    test eax,eax ; 00417597 85C0
    %if ($ - %%insn_00417597) > 2
        %error "LONG_00417597"
    %endif
    times 2 - ($ - %%insn_00417597) db 0
    %%insn_00417599:
    jz short 0x4175ab ; 00417599 7410
    %if ($ - %%insn_00417599) > 2
        %error "LONG_00417599"
    %endif
    times 2 - ($ - %%insn_00417599) db 0
    %%insn_0041759b:
    lea eax,[ebx+ebx*4] ; 0041759B 8D049B
    %if ($ - %%insn_0041759b) > 3
        %error "LONG_0041759B"
    %endif
    times 3 - ($ - %%insn_0041759b) db 0
    db 0x33, 0xC9 ; 0041759E 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004175a0:
    mov cl,[edi] ; 004175A0 8A0F
    %if ($ - %%insn_004175a0) > 2
        %error "LONG_004175A0"
    %endif
    times 2 - ($ - %%insn_004175a0) db 0
    %%insn_004175a2:
    inc edi ; 004175A2 47
    %if ($ - %%insn_004175a2) > 1
        %error "LONG_004175A2"
    %endif
    times 1 - ($ - %%insn_004175a2) db 0
    %%insn_004175a3:
    lea ebx,[esi+eax*2-0x30] ; 004175A3 8D5C46D0
    %if ($ - %%insn_004175a3) > 4
        %error "LONG_004175A3"
    %endif
    times 4 - ($ - %%insn_004175a3) db 0
    db 0x8B, 0xF1 ; 004175A7 8BF1 | mov esi,ecx | encoding preserved
    %%insn_004175a9:
    jmp short 0x417575 ; 004175A9 EBCA
    %if ($ - %%insn_004175a9) > 2
        %error "LONG_004175A9"
    %endif
    times 2 - ($ - %%insn_004175a9) db 0
    %%insn_004175ab:
    cmp ebp,0x2d ; 004175AB 83FD2D
    %if ($ - %%insn_004175ab) > 3
        %error "LONG_004175AB"
    %endif
    times 3 - ($ - %%insn_004175ab) db 0
    db 0x8B, 0xC3 ; 004175AE 8BC3 | mov eax,ebx | encoding preserved
    %%insn_004175b0:
    jnz short 0x4175b4 ; 004175B0 7502
    %if ($ - %%insn_004175b0) > 2
        %error "LONG_004175B0"
    %endif
    times 2 - ($ - %%insn_004175b0) db 0
    %%insn_004175b2:
    neg eax ; 004175B2 F7D8
    %if ($ - %%insn_004175b2) > 2
        %error "LONG_004175B2"
    %endif
    times 2 - ($ - %%insn_004175b2) db 0
    %%insn_004175b4:
    pop edi ; 004175B4 5F
    %if ($ - %%insn_004175b4) > 1
        %error "LONG_004175B4"
    %endif
    times 1 - ($ - %%insn_004175b4) db 0
    %%insn_004175b5:
    pop esi ; 004175B5 5E
    %if ($ - %%insn_004175b5) > 1
        %error "LONG_004175B5"
    %endif
    times 1 - ($ - %%insn_004175b5) db 0
    %%insn_004175b6:
    pop ebp ; 004175B6 5D
    %if ($ - %%insn_004175b6) > 1
        %error "LONG_004175B6"
    %endif
    times 1 - ($ - %%insn_004175b6) db 0
    %%insn_004175b7:
    pop ebx ; 004175B7 5B
    %if ($ - %%insn_004175b7) > 1
        %error "LONG_004175B7"
    %endif
    times 1 - ($ - %%insn_004175b7) db 0
    %%insn_004175b8:
    ret ; 004175B8 C3
    %if ($ - %%insn_004175b8) > 1
        %error "LONG_004175B8"
    %endif
    times 1 - ($ - %%insn_004175b8) db 0
    %if ($ - %%fragment_start) != 153
        %error "function fragment size drift: 00417520"
    %endif
%endmacro
