; PE virtual entry 004133C0
; Ghidra working symbol: FUN_004133c0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004133c0_part_00 0
    %%fragment_start:
func_004133c0:
    %%insn_004133c0:
    push ebx ; 004133C0 53
    %if ($ - %%insn_004133c0) > 1
        %error "LONG_004133C0"
    %endif
    times 1 - ($ - %%insn_004133c0) db 0
    %%insn_004133c1:
    push ebp ; 004133C1 55
    %if ($ - %%insn_004133c1) > 1
        %error "LONG_004133C1"
    %endif
    times 1 - ($ - %%insn_004133c1) db 0
    %%insn_004133c2:
    push edi ; 004133C2 57
    %if ($ - %%insn_004133c2) > 1
        %error "LONG_004133C2"
    %endif
    times 1 - ($ - %%insn_004133c2) db 0
    %%insn_004133c3:
    mov edi,[esp+0x10] ; 004133C3 8B7C2410
    %if ($ - %%insn_004133c3) > 4
        %error "LONG_004133C3"
    %endif
    times 4 - ($ - %%insn_004133c3) db 0
    db 0x33, 0xDB ; 004133C7 33DB | xor ebx,ebx | encoding preserved
    db 0x33, 0xED ; 004133C9 33ED | xor ebp,ebp | encoding preserved
    %%insn_004133cb:
    mov bx,[0x4211b6] ; 004133CB 668B1DB6114200
    %if ($ - %%insn_004133cb) > 7
        %error "LONG_004133CB"
    %endif
    times 7 - ($ - %%insn_004133cb) db 0
    %%insn_004133d2:
    mov bp,[0x4211b8] ; 004133D2 668B2DB8114200
    %if ($ - %%insn_004133d2) > 7
        %error "LONG_004133D2"
    %endif
    times 7 - ($ - %%insn_004133d2) db 0
    %%insn_004133d9:
    test edi,edi ; 004133D9 85FF
    %if ($ - %%insn_004133d9) > 2
        %error "LONG_004133D9"
    %endif
    times 2 - ($ - %%insn_004133d9) db 0
    %%insn_004133db:
    jnz short 0x4133e4 ; 004133DB 7507
    %if ($ - %%insn_004133db) > 2
        %error "LONG_004133DB"
    %endif
    times 2 - ($ - %%insn_004133db) db 0
    %%insn_004133dd:
    or eax,0xffffffffffffffff ; 004133DD 83C8FF
    %if ($ - %%insn_004133dd) > 3
        %error "LONG_004133DD"
    %endif
    times 3 - ($ - %%insn_004133dd) db 0
    %%insn_004133e0:
    pop edi ; 004133E0 5F
    %if ($ - %%insn_004133e0) > 1
        %error "LONG_004133E0"
    %endif
    times 1 - ($ - %%insn_004133e0) db 0
    %%insn_004133e1:
    pop ebp ; 004133E1 5D
    %if ($ - %%insn_004133e1) > 1
        %error "LONG_004133E1"
    %endif
    times 1 - ($ - %%insn_004133e1) db 0
    %%insn_004133e2:
    pop ebx ; 004133E2 5B
    %if ($ - %%insn_004133e2) > 1
        %error "LONG_004133E2"
    %endif
    times 1 - ($ - %%insn_004133e2) db 0
    %%insn_004133e3:
    ret ; 004133E3 C3
    %if ($ - %%insn_004133e3) > 1
        %error "LONG_004133E3"
    %endif
    times 1 - ($ - %%insn_004133e3) db 0
    %%insn_004133e4:
    lea eax,[edi+0x4] ; 004133E4 8D4704
    %if ($ - %%insn_004133e4) > 3
        %error "LONG_004133E4"
    %endif
    times 3 - ($ - %%insn_004133e4) db 0
    %%insn_004133e7:
    push esi ; 004133E7 56
    %if ($ - %%insn_004133e7) > 1
        %error "LONG_004133E7"
    %endif
    times 1 - ($ - %%insn_004133e7) db 0
    %%insn_004133e8:
    push eax ; 004133E8 50
    %if ($ - %%insn_004133e8) > 1
        %error "LONG_004133E8"
    %endif
    times 1 - ($ - %%insn_004133e8) db 0
    %%insn_004133e9:
    push dword 0x31 ; 004133E9 6A31
    %if ($ - %%insn_004133e9) > 2
        %error "LONG_004133E9"
    %endif
    times 2 - ($ - %%insn_004133e9) db 0
    %%insn_004133eb:
    push ebx ; 004133EB 53
    %if ($ - %%insn_004133eb) > 1
        %error "LONG_004133EB"
    %endif
    times 1 - ($ - %%insn_004133eb) db 0
    %%insn_004133ec:
    push dword 0x1 ; 004133EC 6A01
    %if ($ - %%insn_004133ec) > 2
        %error "LONG_004133EC"
    %endif
    times 2 - ($ - %%insn_004133ec) db 0
    %%insn_004133ee:
    call 0x4169f0 ; 004133EE E8FD350000
    %if ($ - %%insn_004133ee) > 5
        %error "LONG_004133EE"
    %endif
    times 5 - ($ - %%insn_004133ee) db 0
    %%insn_004133f3:
    add esp,0x10 ; 004133F3 83C410
    %if ($ - %%insn_004133f3) > 3
        %error "LONG_004133F3"
    %endif
    times 3 - ($ - %%insn_004133f3) db 0
    %%insn_004133f6:
    lea ecx,[edi+0x8] ; 004133F6 8D4F08
    %if ($ - %%insn_004133f6) > 3
        %error "LONG_004133F6"
    %endif
    times 3 - ($ - %%insn_004133f6) db 0
    db 0x8B, 0xF0 ; 004133F9 8BF0 | mov esi,eax | encoding preserved
    %%insn_004133fb:
    push ecx ; 004133FB 51
    %if ($ - %%insn_004133fb) > 1
        %error "LONG_004133FB"
    %endif
    times 1 - ($ - %%insn_004133fb) db 0
    %%insn_004133fc:
    push dword 0x32 ; 004133FC 6A32
    %if ($ - %%insn_004133fc) > 2
        %error "LONG_004133FC"
    %endif
    times 2 - ($ - %%insn_004133fc) db 0
    %%insn_004133fe:
    push ebx ; 004133FE 53
    %if ($ - %%insn_004133fe) > 1
        %error "LONG_004133FE"
    %endif
    times 1 - ($ - %%insn_004133fe) db 0
    %%insn_004133ff:
    push dword 0x1 ; 004133FF 6A01
    %if ($ - %%insn_004133ff) > 2
        %error "LONG_004133FF"
    %endif
    times 2 - ($ - %%insn_004133ff) db 0
    %%insn_00413401:
    call 0x4169f0 ; 00413401 E8EA350000
    %if ($ - %%insn_00413401) > 5
        %error "LONG_00413401"
    %endif
    times 5 - ($ - %%insn_00413401) db 0
    %%insn_00413406:
    add esp,0x10 ; 00413406 83C410
    %if ($ - %%insn_00413406) > 3
        %error "LONG_00413406"
    %endif
    times 3 - ($ - %%insn_00413406) db 0
    %%insn_00413409:
    lea edx,[edi+0xc] ; 00413409 8D570C
    %if ($ - %%insn_00413409) > 3
        %error "LONG_00413409"
    %endif
    times 3 - ($ - %%insn_00413409) db 0
    db 0x0B, 0xF0 ; 0041340C 0BF0 | or esi,eax | encoding preserved
    %%insn_0041340e:
    push edx ; 0041340E 52
    %if ($ - %%insn_0041340e) > 1
        %error "LONG_0041340E"
    %endif
    times 1 - ($ - %%insn_0041340e) db 0
    %%insn_0041340f:
    push dword 0x33 ; 0041340F 6A33
    %if ($ - %%insn_0041340f) > 2
        %error "LONG_0041340F"
    %endif
    times 2 - ($ - %%insn_0041340f) db 0
    %%insn_00413411:
    push ebx ; 00413411 53
    %if ($ - %%insn_00413411) > 1
        %error "LONG_00413411"
    %endif
    times 1 - ($ - %%insn_00413411) db 0
    %%insn_00413412:
    push dword 0x1 ; 00413412 6A01
    %if ($ - %%insn_00413412) > 2
        %error "LONG_00413412"
    %endif
    times 2 - ($ - %%insn_00413412) db 0
    %%insn_00413414:
    call 0x4169f0 ; 00413414 E8D7350000
    %if ($ - %%insn_00413414) > 5
        %error "LONG_00413414"
    %endif
    times 5 - ($ - %%insn_00413414) db 0
    %%insn_00413419:
    add esp,0x10 ; 00413419 83C410
    %if ($ - %%insn_00413419) > 3
        %error "LONG_00413419"
    %endif
    times 3 - ($ - %%insn_00413419) db 0
    db 0x0B, 0xF0 ; 0041341C 0BF0 | or esi,eax | encoding preserved
    %%insn_0041341e:
    lea eax,[edi+0x10] ; 0041341E 8D4710
    %if ($ - %%insn_0041341e) > 3
        %error "LONG_0041341E"
    %endif
    times 3 - ($ - %%insn_0041341e) db 0
    %%insn_00413421:
    push eax ; 00413421 50
    %if ($ - %%insn_00413421) > 1
        %error "LONG_00413421"
    %endif
    times 1 - ($ - %%insn_00413421) db 0
    %%insn_00413422:
    push dword 0x34 ; 00413422 6A34
    %if ($ - %%insn_00413422) > 2
        %error "LONG_00413422"
    %endif
    times 2 - ($ - %%insn_00413422) db 0
    %%insn_00413424:
    push ebx ; 00413424 53
    %if ($ - %%insn_00413424) > 1
        %error "LONG_00413424"
    %endif
    times 1 - ($ - %%insn_00413424) db 0
    %%insn_00413425:
    push dword 0x1 ; 00413425 6A01
    %if ($ - %%insn_00413425) > 2
        %error "LONG_00413425"
    %endif
    times 2 - ($ - %%insn_00413425) db 0
    %%insn_00413427:
    call 0x4169f0 ; 00413427 E8C4350000
    %if ($ - %%insn_00413427) > 5
        %error "LONG_00413427"
    %endif
    times 5 - ($ - %%insn_00413427) db 0
    %%insn_0041342c:
    add esp,0x10 ; 0041342C 83C410
    %if ($ - %%insn_0041342c) > 3
        %error "LONG_0041342C"
    %endif
    times 3 - ($ - %%insn_0041342c) db 0
    %%insn_0041342f:
    lea ecx,[edi+0x14] ; 0041342F 8D4F14
    %if ($ - %%insn_0041342f) > 3
        %error "LONG_0041342F"
    %endif
    times 3 - ($ - %%insn_0041342f) db 0
    db 0x0B, 0xF0 ; 00413432 0BF0 | or esi,eax | encoding preserved
    %%insn_00413434:
    push ecx ; 00413434 51
    %if ($ - %%insn_00413434) > 1
        %error "LONG_00413434"
    %endif
    times 1 - ($ - %%insn_00413434) db 0
    %%insn_00413435:
    push dword 0x35 ; 00413435 6A35
    %if ($ - %%insn_00413435) > 2
        %error "LONG_00413435"
    %endif
    times 2 - ($ - %%insn_00413435) db 0
    %%insn_00413437:
    push ebx ; 00413437 53
    %if ($ - %%insn_00413437) > 1
        %error "LONG_00413437"
    %endif
    times 1 - ($ - %%insn_00413437) db 0
    %%insn_00413438:
    push dword 0x1 ; 00413438 6A01
    %if ($ - %%insn_00413438) > 2
        %error "LONG_00413438"
    %endif
    times 2 - ($ - %%insn_00413438) db 0
    %%insn_0041343a:
    call 0x4169f0 ; 0041343A E8B1350000
    %if ($ - %%insn_0041343a) > 5
        %error "LONG_0041343A"
    %endif
    times 5 - ($ - %%insn_0041343a) db 0
    %%insn_0041343f:
    add esp,0x10 ; 0041343F 83C410
    %if ($ - %%insn_0041343f) > 3
        %error "LONG_0041343F"
    %endif
    times 3 - ($ - %%insn_0041343f) db 0
    %%insn_00413442:
    lea edx,[edi+0x18] ; 00413442 8D5718
    %if ($ - %%insn_00413442) > 3
        %error "LONG_00413442"
    %endif
    times 3 - ($ - %%insn_00413442) db 0
    db 0x0B, 0xF0 ; 00413445 0BF0 | or esi,eax | encoding preserved
    %%insn_00413447:
    push edx ; 00413447 52
    %if ($ - %%insn_00413447) > 1
        %error "LONG_00413447"
    %endif
    times 1 - ($ - %%insn_00413447) db 0
    %%insn_00413448:
    push dword 0x36 ; 00413448 6A36
    %if ($ - %%insn_00413448) > 2
        %error "LONG_00413448"
    %endif
    times 2 - ($ - %%insn_00413448) db 0
    %%insn_0041344a:
    push ebx ; 0041344A 53
    %if ($ - %%insn_0041344a) > 1
        %error "LONG_0041344A"
    %endif
    times 1 - ($ - %%insn_0041344a) db 0
    %%insn_0041344b:
    push dword 0x1 ; 0041344B 6A01
    %if ($ - %%insn_0041344b) > 2
        %error "LONG_0041344B"
    %endif
    times 2 - ($ - %%insn_0041344b) db 0
    %%insn_0041344d:
    call 0x4169f0 ; 0041344D E89E350000
    %if ($ - %%insn_0041344d) > 5
        %error "LONG_0041344D"
    %endif
    times 5 - ($ - %%insn_0041344d) db 0
    %%insn_00413452:
    add esp,0x10 ; 00413452 83C410
    %if ($ - %%insn_00413452) > 3
        %error "LONG_00413452"
    %endif
    times 3 - ($ - %%insn_00413452) db 0
    db 0x0B, 0xF0 ; 00413455 0BF0 | or esi,eax | encoding preserved
    %%insn_00413457:
    push edi ; 00413457 57
    %if ($ - %%insn_00413457) > 1
        %error "LONG_00413457"
    %endif
    times 1 - ($ - %%insn_00413457) db 0
    %%insn_00413458:
    push dword 0x37 ; 00413458 6A37
    %if ($ - %%insn_00413458) > 2
        %error "LONG_00413458"
    %endif
    times 2 - ($ - %%insn_00413458) db 0
    %%insn_0041345a:
    push ebx ; 0041345A 53
    %if ($ - %%insn_0041345a) > 1
        %error "LONG_0041345A"
    %endif
    times 1 - ($ - %%insn_0041345a) db 0
    %%insn_0041345b:
    push dword 0x1 ; 0041345B 6A01
    %if ($ - %%insn_0041345b) > 2
        %error "LONG_0041345B"
    %endif
    times 2 - ($ - %%insn_0041345b) db 0
    %%insn_0041345d:
    call 0x4169f0 ; 0041345D E88E350000
    %if ($ - %%insn_0041345d) > 5
        %error "LONG_0041345D"
    %endif
    times 5 - ($ - %%insn_0041345d) db 0
    %%insn_00413462:
    add esp,0x10 ; 00413462 83C410
    %if ($ - %%insn_00413462) > 3
        %error "LONG_00413462"
    %endif
    times 3 - ($ - %%insn_00413462) db 0
    db 0x0B, 0xF0 ; 00413465 0BF0 | or esi,eax | encoding preserved
    %%insn_00413467:
    lea eax,[edi+0x20] ; 00413467 8D4720
    %if ($ - %%insn_00413467) > 3
        %error "LONG_00413467"
    %endif
    times 3 - ($ - %%insn_00413467) db 0
    %%insn_0041346a:
    push eax ; 0041346A 50
    %if ($ - %%insn_0041346a) > 1
        %error "LONG_0041346A"
    %endif
    times 1 - ($ - %%insn_0041346a) db 0
    %%insn_0041346b:
    push dword 0x2a ; 0041346B 6A2A
    %if ($ - %%insn_0041346b) > 2
        %error "LONG_0041346B"
    %endif
    times 2 - ($ - %%insn_0041346b) db 0
    %%insn_0041346d:
    push ebx ; 0041346D 53
    %if ($ - %%insn_0041346d) > 1
        %error "LONG_0041346D"
    %endif
    times 1 - ($ - %%insn_0041346d) db 0
    %%insn_0041346e:
    push dword 0x1 ; 0041346E 6A01
    %if ($ - %%insn_0041346e) > 2
        %error "LONG_0041346E"
    %endif
    times 2 - ($ - %%insn_0041346e) db 0
    %%insn_00413470:
    call 0x4169f0 ; 00413470 E87B350000
    %if ($ - %%insn_00413470) > 5
        %error "LONG_00413470"
    %endif
    times 5 - ($ - %%insn_00413470) db 0
    %%insn_00413475:
    add esp,0x10 ; 00413475 83C410
    %if ($ - %%insn_00413475) > 3
        %error "LONG_00413475"
    %endif
    times 3 - ($ - %%insn_00413475) db 0
    %%insn_00413478:
    lea ecx,[edi+0x24] ; 00413478 8D4F24
    %if ($ - %%insn_00413478) > 3
        %error "LONG_00413478"
    %endif
    times 3 - ($ - %%insn_00413478) db 0
    db 0x0B, 0xF0 ; 0041347B 0BF0 | or esi,eax | encoding preserved
    %%insn_0041347d:
    push ecx ; 0041347D 51
    %if ($ - %%insn_0041347d) > 1
        %error "LONG_0041347D"
    %endif
    times 1 - ($ - %%insn_0041347d) db 0
    %%insn_0041347e:
    push dword 0x2b ; 0041347E 6A2B
    %if ($ - %%insn_0041347e) > 2
        %error "LONG_0041347E"
    %endif
    times 2 - ($ - %%insn_0041347e) db 0
    %%insn_00413480:
    push ebx ; 00413480 53
    %if ($ - %%insn_00413480) > 1
        %error "LONG_00413480"
    %endif
    times 1 - ($ - %%insn_00413480) db 0
    %%insn_00413481:
    push dword 0x1 ; 00413481 6A01
    %if ($ - %%insn_00413481) > 2
        %error "LONG_00413481"
    %endif
    times 2 - ($ - %%insn_00413481) db 0
    %%insn_00413483:
    call 0x4169f0 ; 00413483 E868350000
    %if ($ - %%insn_00413483) > 5
        %error "LONG_00413483"
    %endif
    times 5 - ($ - %%insn_00413483) db 0
    %%insn_00413488:
    add esp,0x10 ; 00413488 83C410
    %if ($ - %%insn_00413488) > 3
        %error "LONG_00413488"
    %endif
    times 3 - ($ - %%insn_00413488) db 0
    %%insn_0041348b:
    lea edx,[edi+0x28] ; 0041348B 8D5728
    %if ($ - %%insn_0041348b) > 3
        %error "LONG_0041348B"
    %endif
    times 3 - ($ - %%insn_0041348b) db 0
    db 0x0B, 0xF0 ; 0041348E 0BF0 | or esi,eax | encoding preserved
    %%insn_00413490:
    push edx ; 00413490 52
    %if ($ - %%insn_00413490) > 1
        %error "LONG_00413490"
    %endif
    times 1 - ($ - %%insn_00413490) db 0
    %%insn_00413491:
    push dword 0x2c ; 00413491 6A2C
    %if ($ - %%insn_00413491) > 2
        %error "LONG_00413491"
    %endif
    times 2 - ($ - %%insn_00413491) db 0
    %%insn_00413493:
    push ebx ; 00413493 53
    %if ($ - %%insn_00413493) > 1
        %error "LONG_00413493"
    %endif
    times 1 - ($ - %%insn_00413493) db 0
    %%insn_00413494:
    push dword 0x1 ; 00413494 6A01
    %if ($ - %%insn_00413494) > 2
        %error "LONG_00413494"
    %endif
    times 2 - ($ - %%insn_00413494) db 0
    %%insn_00413496:
    call 0x4169f0 ; 00413496 E855350000
    %if ($ - %%insn_00413496) > 5
        %error "LONG_00413496"
    %endif
    times 5 - ($ - %%insn_00413496) db 0
    %%insn_0041349b:
    add esp,0x10 ; 0041349B 83C410
    %if ($ - %%insn_0041349b) > 3
        %error "LONG_0041349B"
    %endif
    times 3 - ($ - %%insn_0041349b) db 0
    db 0x0B, 0xF0 ; 0041349E 0BF0 | or esi,eax | encoding preserved
    %%insn_004134a0:
    lea eax,[edi+0x2c] ; 004134A0 8D472C
    %if ($ - %%insn_004134a0) > 3
        %error "LONG_004134A0"
    %endif
    times 3 - ($ - %%insn_004134a0) db 0
    %%insn_004134a3:
    push eax ; 004134A3 50
    %if ($ - %%insn_004134a3) > 1
        %error "LONG_004134A3"
    %endif
    times 1 - ($ - %%insn_004134a3) db 0
    %%insn_004134a4:
    push dword 0x2d ; 004134A4 6A2D
    %if ($ - %%insn_004134a4) > 2
        %error "LONG_004134A4"
    %endif
    times 2 - ($ - %%insn_004134a4) db 0
    %%insn_004134a6:
    push ebx ; 004134A6 53
    %if ($ - %%insn_004134a6) > 1
        %error "LONG_004134A6"
    %endif
    times 1 - ($ - %%insn_004134a6) db 0
    %%insn_004134a7:
    push dword 0x1 ; 004134A7 6A01
    %if ($ - %%insn_004134a7) > 2
        %error "LONG_004134A7"
    %endif
    times 2 - ($ - %%insn_004134a7) db 0
    %%insn_004134a9:
    call 0x4169f0 ; 004134A9 E842350000
    %if ($ - %%insn_004134a9) > 5
        %error "LONG_004134A9"
    %endif
    times 5 - ($ - %%insn_004134a9) db 0
    %%insn_004134ae:
    add esp,0x10 ; 004134AE 83C410
    %if ($ - %%insn_004134ae) > 3
        %error "LONG_004134AE"
    %endif
    times 3 - ($ - %%insn_004134ae) db 0
    %%insn_004134b1:
    lea ecx,[edi+0x30] ; 004134B1 8D4F30
    %if ($ - %%insn_004134b1) > 3
        %error "LONG_004134B1"
    %endif
    times 3 - ($ - %%insn_004134b1) db 0
    db 0x0B, 0xF0 ; 004134B4 0BF0 | or esi,eax | encoding preserved
    %%insn_004134b6:
    push ecx ; 004134B6 51
    %if ($ - %%insn_004134b6) > 1
        %error "LONG_004134B6"
    %endif
    times 1 - ($ - %%insn_004134b6) db 0
    %%insn_004134b7:
    push dword 0x2e ; 004134B7 6A2E
    %if ($ - %%insn_004134b7) > 2
        %error "LONG_004134B7"
    %endif
    times 2 - ($ - %%insn_004134b7) db 0
    %%insn_004134b9:
    push ebx ; 004134B9 53
    %if ($ - %%insn_004134b9) > 1
        %error "LONG_004134B9"
    %endif
    times 1 - ($ - %%insn_004134b9) db 0
    %%insn_004134ba:
    push dword 0x1 ; 004134BA 6A01
    %if ($ - %%insn_004134ba) > 2
        %error "LONG_004134BA"
    %endif
    times 2 - ($ - %%insn_004134ba) db 0
    %%insn_004134bc:
    call 0x4169f0 ; 004134BC E82F350000
    %if ($ - %%insn_004134bc) > 5
        %error "LONG_004134BC"
    %endif
    times 5 - ($ - %%insn_004134bc) db 0
    %%insn_004134c1:
    add esp,0x10 ; 004134C1 83C410
    %if ($ - %%insn_004134c1) > 3
        %error "LONG_004134C1"
    %endif
    times 3 - ($ - %%insn_004134c1) db 0
    %%insn_004134c4:
    lea edx,[edi+0x34] ; 004134C4 8D5734
    %if ($ - %%insn_004134c4) > 3
        %error "LONG_004134C4"
    %endif
    times 3 - ($ - %%insn_004134c4) db 0
    db 0x0B, 0xF0 ; 004134C7 0BF0 | or esi,eax | encoding preserved
    %%insn_004134c9:
    push edx ; 004134C9 52
    %if ($ - %%insn_004134c9) > 1
        %error "LONG_004134C9"
    %endif
    times 1 - ($ - %%insn_004134c9) db 0
    %%insn_004134ca:
    push dword 0x2f ; 004134CA 6A2F
    %if ($ - %%insn_004134ca) > 2
        %error "LONG_004134CA"
    %endif
    times 2 - ($ - %%insn_004134ca) db 0
    %%insn_004134cc:
    push ebx ; 004134CC 53
    %if ($ - %%insn_004134cc) > 1
        %error "LONG_004134CC"
    %endif
    times 1 - ($ - %%insn_004134cc) db 0
    %%insn_004134cd:
    push dword 0x1 ; 004134CD 6A01
    %if ($ - %%insn_004134cd) > 2
        %error "LONG_004134CD"
    %endif
    times 2 - ($ - %%insn_004134cd) db 0
    %%insn_004134cf:
    call 0x4169f0 ; 004134CF E81C350000
    %if ($ - %%insn_004134cf) > 5
        %error "LONG_004134CF"
    %endif
    times 5 - ($ - %%insn_004134cf) db 0
    %%insn_004134d4:
    add esp,0x10 ; 004134D4 83C410
    %if ($ - %%insn_004134d4) > 3
        %error "LONG_004134D4"
    %endif
    times 3 - ($ - %%insn_004134d4) db 0
    db 0x0B, 0xF0 ; 004134D7 0BF0 | or esi,eax | encoding preserved
    %%insn_004134d9:
    lea eax,[edi+0x1c] ; 004134D9 8D471C
    %if ($ - %%insn_004134d9) > 3
        %error "LONG_004134D9"
    %endif
    times 3 - ($ - %%insn_004134d9) db 0
    %%insn_004134dc:
    push eax ; 004134DC 50
    %if ($ - %%insn_004134dc) > 1
        %error "LONG_004134DC"
    %endif
    times 1 - ($ - %%insn_004134dc) db 0
    %%insn_004134dd:
    push dword 0x30 ; 004134DD 6A30
    %if ($ - %%insn_004134dd) > 2
        %error "LONG_004134DD"
    %endif
    times 2 - ($ - %%insn_004134dd) db 0
    %%insn_004134df:
    push ebx ; 004134DF 53
    %if ($ - %%insn_004134df) > 1
        %error "LONG_004134DF"
    %endif
    times 1 - ($ - %%insn_004134df) db 0
    %%insn_004134e0:
    push dword 0x1 ; 004134E0 6A01
    %if ($ - %%insn_004134e0) > 2
        %error "LONG_004134E0"
    %endif
    times 2 - ($ - %%insn_004134e0) db 0
    %%insn_004134e2:
    call 0x4169f0 ; 004134E2 E809350000
    %if ($ - %%insn_004134e2) > 5
        %error "LONG_004134E2"
    %endif
    times 5 - ($ - %%insn_004134e2) db 0
    %%insn_004134e7:
    add esp,0x10 ; 004134E7 83C410
    %if ($ - %%insn_004134e7) > 3
        %error "LONG_004134E7"
    %endif
    times 3 - ($ - %%insn_004134e7) db 0
    %%insn_004134ea:
    lea ecx,[edi+0x38] ; 004134EA 8D4F38
    %if ($ - %%insn_004134ea) > 3
        %error "LONG_004134EA"
    %endif
    times 3 - ($ - %%insn_004134ea) db 0
    db 0x0B, 0xF0 ; 004134ED 0BF0 | or esi,eax | encoding preserved
    %%insn_004134ef:
    push ecx ; 004134EF 51
    %if ($ - %%insn_004134ef) > 1
        %error "LONG_004134EF"
    %endif
    times 1 - ($ - %%insn_004134ef) db 0
    %%insn_004134f0:
    push dword 0x44 ; 004134F0 6A44
    %if ($ - %%insn_004134f0) > 2
        %error "LONG_004134F0"
    %endif
    times 2 - ($ - %%insn_004134f0) db 0
    %%insn_004134f2:
    push ebx ; 004134F2 53
    %if ($ - %%insn_004134f2) > 1
        %error "LONG_004134F2"
    %endif
    times 1 - ($ - %%insn_004134f2) db 0
    %%insn_004134f3:
    push dword 0x1 ; 004134F3 6A01
    %if ($ - %%insn_004134f3) > 2
        %error "LONG_004134F3"
    %endif
    times 2 - ($ - %%insn_004134f3) db 0
    %%insn_004134f5:
    call 0x4169f0 ; 004134F5 E8F6340000
    %if ($ - %%insn_004134f5) > 5
        %error "LONG_004134F5"
    %endif
    times 5 - ($ - %%insn_004134f5) db 0
    %%insn_004134fa:
    add esp,0x10 ; 004134FA 83C410
    %if ($ - %%insn_004134fa) > 3
        %error "LONG_004134FA"
    %endif
    times 3 - ($ - %%insn_004134fa) db 0
    %%insn_004134fd:
    lea edx,[edi+0x3c] ; 004134FD 8D573C
    %if ($ - %%insn_004134fd) > 3
        %error "LONG_004134FD"
    %endif
    times 3 - ($ - %%insn_004134fd) db 0
    db 0x0B, 0xF0 ; 00413500 0BF0 | or esi,eax | encoding preserved
    %%insn_00413502:
    push edx ; 00413502 52
    %if ($ - %%insn_00413502) > 1
        %error "LONG_00413502"
    %endif
    times 1 - ($ - %%insn_00413502) db 0
    %%insn_00413503:
    push dword 0x45 ; 00413503 6A45
    %if ($ - %%insn_00413503) > 2
        %error "LONG_00413503"
    %endif
    times 2 - ($ - %%insn_00413503) db 0
    %%insn_00413505:
    push ebx ; 00413505 53
    %if ($ - %%insn_00413505) > 1
        %error "LONG_00413505"
    %endif
    times 1 - ($ - %%insn_00413505) db 0
    %%insn_00413506:
    push dword 0x1 ; 00413506 6A01
    %if ($ - %%insn_00413506) > 2
        %error "LONG_00413506"
    %endif
    times 2 - ($ - %%insn_00413506) db 0
    %%insn_00413508:
    call 0x4169f0 ; 00413508 E8E3340000
    %if ($ - %%insn_00413508) > 5
        %error "LONG_00413508"
    %endif
    times 5 - ($ - %%insn_00413508) db 0
    %%insn_0041350d:
    add esp,0x10 ; 0041350D 83C410
    %if ($ - %%insn_0041350d) > 3
        %error "LONG_0041350D"
    %endif
    times 3 - ($ - %%insn_0041350d) db 0
    db 0x0B, 0xF0 ; 00413510 0BF0 | or esi,eax | encoding preserved
    %%insn_00413512:
    lea eax,[edi+0x40] ; 00413512 8D4740
    %if ($ - %%insn_00413512) > 3
        %error "LONG_00413512"
    %endif
    times 3 - ($ - %%insn_00413512) db 0
    %%insn_00413515:
    push eax ; 00413515 50
    %if ($ - %%insn_00413515) > 1
        %error "LONG_00413515"
    %endif
    times 1 - ($ - %%insn_00413515) db 0
    %%insn_00413516:
    push dword 0x46 ; 00413516 6A46
    %if ($ - %%insn_00413516) > 2
        %error "LONG_00413516"
    %endif
    times 2 - ($ - %%insn_00413516) db 0
    %%insn_00413518:
    push ebx ; 00413518 53
    %if ($ - %%insn_00413518) > 1
        %error "LONG_00413518"
    %endif
    times 1 - ($ - %%insn_00413518) db 0
    %%insn_00413519:
    push dword 0x1 ; 00413519 6A01
    %if ($ - %%insn_00413519) > 2
        %error "LONG_00413519"
    %endif
    times 2 - ($ - %%insn_00413519) db 0
    %%insn_0041351b:
    call 0x4169f0 ; 0041351B E8D0340000
    %if ($ - %%insn_0041351b) > 5
        %error "LONG_0041351B"
    %endif
    times 5 - ($ - %%insn_0041351b) db 0
    %%insn_00413520:
    add esp,0x10 ; 00413520 83C410
    %if ($ - %%insn_00413520) > 3
        %error "LONG_00413520"
    %endif
    times 3 - ($ - %%insn_00413520) db 0
    %%insn_00413523:
    lea ecx,[edi+0x44] ; 00413523 8D4F44
    %if ($ - %%insn_00413523) > 3
        %error "LONG_00413523"
    %endif
    times 3 - ($ - %%insn_00413523) db 0
    db 0x0B, 0xF0 ; 00413526 0BF0 | or esi,eax | encoding preserved
    %%insn_00413528:
    push ecx ; 00413528 51
    %if ($ - %%insn_00413528) > 1
        %error "LONG_00413528"
    %endif
    times 1 - ($ - %%insn_00413528) db 0
    %%insn_00413529:
    push dword 0x47 ; 00413529 6A47
    %if ($ - %%insn_00413529) > 2
        %error "LONG_00413529"
    %endif
    times 2 - ($ - %%insn_00413529) db 0
    %%insn_0041352b:
    push ebx ; 0041352B 53
    %if ($ - %%insn_0041352b) > 1
        %error "LONG_0041352B"
    %endif
    times 1 - ($ - %%insn_0041352b) db 0
    %%insn_0041352c:
    push dword 0x1 ; 0041352C 6A01
    %if ($ - %%insn_0041352c) > 2
        %error "LONG_0041352C"
    %endif
    times 2 - ($ - %%insn_0041352c) db 0
    %%insn_0041352e:
    call 0x4169f0 ; 0041352E E8BD340000
    %if ($ - %%insn_0041352e) > 5
        %error "LONG_0041352E"
    %endif
    times 5 - ($ - %%insn_0041352e) db 0
    %%insn_00413533:
    add esp,0x10 ; 00413533 83C410
    %if ($ - %%insn_00413533) > 3
        %error "LONG_00413533"
    %endif
    times 3 - ($ - %%insn_00413533) db 0
    %%insn_00413536:
    lea edx,[edi+0x48] ; 00413536 8D5748
    %if ($ - %%insn_00413536) > 3
        %error "LONG_00413536"
    %endif
    times 3 - ($ - %%insn_00413536) db 0
    db 0x0B, 0xF0 ; 00413539 0BF0 | or esi,eax | encoding preserved
    %%insn_0041353b:
    push edx ; 0041353B 52
    %if ($ - %%insn_0041353b) > 1
        %error "LONG_0041353B"
    %endif
    times 1 - ($ - %%insn_0041353b) db 0
    %%insn_0041353c:
    push dword 0x48 ; 0041353C 6A48
    %if ($ - %%insn_0041353c) > 2
        %error "LONG_0041353C"
    %endif
    times 2 - ($ - %%insn_0041353c) db 0
    %%insn_0041353e:
    push ebx ; 0041353E 53
    %if ($ - %%insn_0041353e) > 1
        %error "LONG_0041353E"
    %endif
    times 1 - ($ - %%insn_0041353e) db 0
    %%insn_0041353f:
    push dword 0x1 ; 0041353F 6A01
    %if ($ - %%insn_0041353f) > 2
        %error "LONG_0041353F"
    %endif
    times 2 - ($ - %%insn_0041353f) db 0
    %%insn_00413541:
    call 0x4169f0 ; 00413541 E8AA340000
    %if ($ - %%insn_00413541) > 5
        %error "LONG_00413541"
    %endif
    times 5 - ($ - %%insn_00413541) db 0
    %%insn_00413546:
    add esp,0x10 ; 00413546 83C410
    %if ($ - %%insn_00413546) > 3
        %error "LONG_00413546"
    %endif
    times 3 - ($ - %%insn_00413546) db 0
    db 0x0B, 0xF0 ; 00413549 0BF0 | or esi,eax | encoding preserved
    %%insn_0041354b:
    lea eax,[edi+0x4c] ; 0041354B 8D474C
    %if ($ - %%insn_0041354b) > 3
        %error "LONG_0041354B"
    %endif
    times 3 - ($ - %%insn_0041354b) db 0
    %%insn_0041354e:
    push eax ; 0041354E 50
    %if ($ - %%insn_0041354e) > 1
        %error "LONG_0041354E"
    %endif
    times 1 - ($ - %%insn_0041354e) db 0
    %%insn_0041354f:
    push dword 0x49 ; 0041354F 6A49
    %if ($ - %%insn_0041354f) > 2
        %error "LONG_0041354F"
    %endif
    times 2 - ($ - %%insn_0041354f) db 0
    %%insn_00413551:
    push ebx ; 00413551 53
    %if ($ - %%insn_00413551) > 1
        %error "LONG_00413551"
    %endif
    times 1 - ($ - %%insn_00413551) db 0
    %%insn_00413552:
    push dword 0x1 ; 00413552 6A01
    %if ($ - %%insn_00413552) > 2
        %error "LONG_00413552"
    %endif
    times 2 - ($ - %%insn_00413552) db 0
    %%insn_00413554:
    call 0x4169f0 ; 00413554 E897340000
    %if ($ - %%insn_00413554) > 5
        %error "LONG_00413554"
    %endif
    times 5 - ($ - %%insn_00413554) db 0
    %%insn_00413559:
    add esp,0x10 ; 00413559 83C410
    %if ($ - %%insn_00413559) > 3
        %error "LONG_00413559"
    %endif
    times 3 - ($ - %%insn_00413559) db 0
    %%insn_0041355c:
    lea ecx,[edi+0x50] ; 0041355C 8D4F50
    %if ($ - %%insn_0041355c) > 3
        %error "LONG_0041355C"
    %endif
    times 3 - ($ - %%insn_0041355c) db 0
    db 0x0B, 0xF0 ; 0041355F 0BF0 | or esi,eax | encoding preserved
    %%insn_00413561:
    push ecx ; 00413561 51
    %if ($ - %%insn_00413561) > 1
        %error "LONG_00413561"
    %endif
    times 1 - ($ - %%insn_00413561) db 0
    %%insn_00413562:
    push dword 0x4a ; 00413562 6A4A
    %if ($ - %%insn_00413562) > 2
        %error "LONG_00413562"
    %endif
    times 2 - ($ - %%insn_00413562) db 0
    %%insn_00413564:
    push ebx ; 00413564 53
    %if ($ - %%insn_00413564) > 1
        %error "LONG_00413564"
    %endif
    times 1 - ($ - %%insn_00413564) db 0
    %%insn_00413565:
    push dword 0x1 ; 00413565 6A01
    %if ($ - %%insn_00413565) > 2
        %error "LONG_00413565"
    %endif
    times 2 - ($ - %%insn_00413565) db 0
    %%insn_00413567:
    call 0x4169f0 ; 00413567 E884340000
    %if ($ - %%insn_00413567) > 5
        %error "LONG_00413567"
    %endif
    times 5 - ($ - %%insn_00413567) db 0
    %%insn_0041356c:
    add esp,0x10 ; 0041356C 83C410
    %if ($ - %%insn_0041356c) > 3
        %error "LONG_0041356C"
    %endif
    times 3 - ($ - %%insn_0041356c) db 0
    %%insn_0041356f:
    lea edx,[edi+0x54] ; 0041356F 8D5754
    %if ($ - %%insn_0041356f) > 3
        %error "LONG_0041356F"
    %endif
    times 3 - ($ - %%insn_0041356f) db 0
    db 0x0B, 0xF0 ; 00413572 0BF0 | or esi,eax | encoding preserved
    %%insn_00413574:
    push edx ; 00413574 52
    %if ($ - %%insn_00413574) > 1
        %error "LONG_00413574"
    %endif
    times 1 - ($ - %%insn_00413574) db 0
    %%insn_00413575:
    push dword 0x4b ; 00413575 6A4B
    %if ($ - %%insn_00413575) > 2
        %error "LONG_00413575"
    %endif
    times 2 - ($ - %%insn_00413575) db 0
    %%insn_00413577:
    push ebx ; 00413577 53
    %if ($ - %%insn_00413577) > 1
        %error "LONG_00413577"
    %endif
    times 1 - ($ - %%insn_00413577) db 0
    %%insn_00413578:
    push dword 0x1 ; 00413578 6A01
    %if ($ - %%insn_00413578) > 2
        %error "LONG_00413578"
    %endif
    times 2 - ($ - %%insn_00413578) db 0
    %%insn_0041357a:
    call 0x4169f0 ; 0041357A E871340000
    %if ($ - %%insn_0041357a) > 5
        %error "LONG_0041357A"
    %endif
    times 5 - ($ - %%insn_0041357a) db 0
    %%insn_0041357f:
    add esp,0x10 ; 0041357F 83C410
    %if ($ - %%insn_0041357f) > 3
        %error "LONG_0041357F"
    %endif
    times 3 - ($ - %%insn_0041357f) db 0
    db 0x0B, 0xF0 ; 00413582 0BF0 | or esi,eax | encoding preserved
    %%insn_00413584:
    lea eax,[edi+0x58] ; 00413584 8D4758
    %if ($ - %%insn_00413584) > 3
        %error "LONG_00413584"
    %endif
    times 3 - ($ - %%insn_00413584) db 0
    %%insn_00413587:
    push eax ; 00413587 50
    %if ($ - %%insn_00413587) > 1
        %error "LONG_00413587"
    %endif
    times 1 - ($ - %%insn_00413587) db 0
    %%insn_00413588:
    push dword 0x4c ; 00413588 6A4C
    %if ($ - %%insn_00413588) > 2
        %error "LONG_00413588"
    %endif
    times 2 - ($ - %%insn_00413588) db 0
    %%insn_0041358a:
    push ebx ; 0041358A 53
    %if ($ - %%insn_0041358a) > 1
        %error "LONG_0041358A"
    %endif
    times 1 - ($ - %%insn_0041358a) db 0
    %%insn_0041358b:
    push dword 0x1 ; 0041358B 6A01
    %if ($ - %%insn_0041358b) > 2
        %error "LONG_0041358B"
    %endif
    times 2 - ($ - %%insn_0041358b) db 0
    %%insn_0041358d:
    call 0x4169f0 ; 0041358D E85E340000
    %if ($ - %%insn_0041358d) > 5
        %error "LONG_0041358D"
    %endif
    times 5 - ($ - %%insn_0041358d) db 0
    %%insn_00413592:
    add esp,0x10 ; 00413592 83C410
    %if ($ - %%insn_00413592) > 3
        %error "LONG_00413592"
    %endif
    times 3 - ($ - %%insn_00413592) db 0
    %%insn_00413595:
    lea ecx,[edi+0x5c] ; 00413595 8D4F5C
    %if ($ - %%insn_00413595) > 3
        %error "LONG_00413595"
    %endif
    times 3 - ($ - %%insn_00413595) db 0
    db 0x0B, 0xF0 ; 00413598 0BF0 | or esi,eax | encoding preserved
    %%insn_0041359a:
    push ecx ; 0041359A 51
    %if ($ - %%insn_0041359a) > 1
        %error "LONG_0041359A"
    %endif
    times 1 - ($ - %%insn_0041359a) db 0
    %%insn_0041359b:
    push dword 0x4d ; 0041359B 6A4D
    %if ($ - %%insn_0041359b) > 2
        %error "LONG_0041359B"
    %endif
    times 2 - ($ - %%insn_0041359b) db 0
    %%insn_0041359d:
    push ebx ; 0041359D 53
    %if ($ - %%insn_0041359d) > 1
        %error "LONG_0041359D"
    %endif
    times 1 - ($ - %%insn_0041359d) db 0
    %%insn_0041359e:
    push dword 0x1 ; 0041359E 6A01
    %if ($ - %%insn_0041359e) > 2
        %error "LONG_0041359E"
    %endif
    times 2 - ($ - %%insn_0041359e) db 0
    %%insn_004135a0:
    call 0x4169f0 ; 004135A0 E84B340000
    %if ($ - %%insn_004135a0) > 5
        %error "LONG_004135A0"
    %endif
    times 5 - ($ - %%insn_004135a0) db 0
    %%insn_004135a5:
    add esp,0x10 ; 004135A5 83C410
    %if ($ - %%insn_004135a5) > 3
        %error "LONG_004135A5"
    %endif
    times 3 - ($ - %%insn_004135a5) db 0
    %%insn_004135a8:
    lea edx,[edi+0x60] ; 004135A8 8D5760
    %if ($ - %%insn_004135a8) > 3
        %error "LONG_004135A8"
    %endif
    times 3 - ($ - %%insn_004135a8) db 0
    db 0x0B, 0xF0 ; 004135AB 0BF0 | or esi,eax | encoding preserved
    %%insn_004135ad:
    push edx ; 004135AD 52
    %if ($ - %%insn_004135ad) > 1
        %error "LONG_004135AD"
    %endif
    times 1 - ($ - %%insn_004135ad) db 0
    %%insn_004135ae:
    push dword 0x4e ; 004135AE 6A4E
    %if ($ - %%insn_004135ae) > 2
        %error "LONG_004135AE"
    %endif
    times 2 - ($ - %%insn_004135ae) db 0
    %%insn_004135b0:
    push ebx ; 004135B0 53
    %if ($ - %%insn_004135b0) > 1
        %error "LONG_004135B0"
    %endif
    times 1 - ($ - %%insn_004135b0) db 0
    %%insn_004135b1:
    push dword 0x1 ; 004135B1 6A01
    %if ($ - %%insn_004135b1) > 2
        %error "LONG_004135B1"
    %endif
    times 2 - ($ - %%insn_004135b1) db 0
    %%insn_004135b3:
    call 0x4169f0 ; 004135B3 E838340000
    %if ($ - %%insn_004135b3) > 5
        %error "LONG_004135B3"
    %endif
    times 5 - ($ - %%insn_004135b3) db 0
    %%insn_004135b8:
    add esp,0x10 ; 004135B8 83C410
    %if ($ - %%insn_004135b8) > 3
        %error "LONG_004135B8"
    %endif
    times 3 - ($ - %%insn_004135b8) db 0
    db 0x0B, 0xF0 ; 004135BB 0BF0 | or esi,eax | encoding preserved
    %%insn_004135bd:
    lea eax,[edi+0x64] ; 004135BD 8D4764
    %if ($ - %%insn_004135bd) > 3
        %error "LONG_004135BD"
    %endif
    times 3 - ($ - %%insn_004135bd) db 0
    %%insn_004135c0:
    push eax ; 004135C0 50
    %if ($ - %%insn_004135c0) > 1
        %error "LONG_004135C0"
    %endif
    times 1 - ($ - %%insn_004135c0) db 0
    %%insn_004135c1:
    push dword 0x4f ; 004135C1 6A4F
    %if ($ - %%insn_004135c1) > 2
        %error "LONG_004135C1"
    %endif
    times 2 - ($ - %%insn_004135c1) db 0
    %%insn_004135c3:
    push ebx ; 004135C3 53
    %if ($ - %%insn_004135c3) > 1
        %error "LONG_004135C3"
    %endif
    times 1 - ($ - %%insn_004135c3) db 0
    %%insn_004135c4:
    push dword 0x1 ; 004135C4 6A01
    %if ($ - %%insn_004135c4) > 2
        %error "LONG_004135C4"
    %endif
    times 2 - ($ - %%insn_004135c4) db 0
    %%insn_004135c6:
    call 0x4169f0 ; 004135C6 E825340000
    %if ($ - %%insn_004135c6) > 5
        %error "LONG_004135C6"
    %endif
    times 5 - ($ - %%insn_004135c6) db 0
    %%insn_004135cb:
    add esp,0x10 ; 004135CB 83C410
    %if ($ - %%insn_004135cb) > 3
        %error "LONG_004135CB"
    %endif
    times 3 - ($ - %%insn_004135cb) db 0
    %%insn_004135ce:
    lea ecx,[edi+0x68] ; 004135CE 8D4F68
    %if ($ - %%insn_004135ce) > 3
        %error "LONG_004135CE"
    %endif
    times 3 - ($ - %%insn_004135ce) db 0
    db 0x0B, 0xF0 ; 004135D1 0BF0 | or esi,eax | encoding preserved
    %%insn_004135d3:
    push ecx ; 004135D3 51
    %if ($ - %%insn_004135d3) > 1
        %error "LONG_004135D3"
    %endif
    times 1 - ($ - %%insn_004135d3) db 0
    %%insn_004135d4:
    push dword 0x38 ; 004135D4 6A38
    %if ($ - %%insn_004135d4) > 2
        %error "LONG_004135D4"
    %endif
    times 2 - ($ - %%insn_004135d4) db 0
    %%insn_004135d6:
    push ebx ; 004135D6 53
    %if ($ - %%insn_004135d6) > 1
        %error "LONG_004135D6"
    %endif
    times 1 - ($ - %%insn_004135d6) db 0
    %%insn_004135d7:
    push dword 0x1 ; 004135D7 6A01
    %if ($ - %%insn_004135d7) > 2
        %error "LONG_004135D7"
    %endif
    times 2 - ($ - %%insn_004135d7) db 0
    %%insn_004135d9:
    call 0x4169f0 ; 004135D9 E812340000
    %if ($ - %%insn_004135d9) > 5
        %error "LONG_004135D9"
    %endif
    times 5 - ($ - %%insn_004135d9) db 0
    %%insn_004135de:
    add esp,0x10 ; 004135DE 83C410
    %if ($ - %%insn_004135de) > 3
        %error "LONG_004135DE"
    %endif
    times 3 - ($ - %%insn_004135de) db 0
    %%insn_004135e1:
    lea edx,[edi+0x6c] ; 004135E1 8D576C
    %if ($ - %%insn_004135e1) > 3
        %error "LONG_004135E1"
    %endif
    times 3 - ($ - %%insn_004135e1) db 0
    db 0x0B, 0xF0 ; 004135E4 0BF0 | or esi,eax | encoding preserved
    %%insn_004135e6:
    push edx ; 004135E6 52
    %if ($ - %%insn_004135e6) > 1
        %error "LONG_004135E6"
    %endif
    times 1 - ($ - %%insn_004135e6) db 0
    %%insn_004135e7:
    push dword 0x39 ; 004135E7 6A39
    %if ($ - %%insn_004135e7) > 2
        %error "LONG_004135E7"
    %endif
    times 2 - ($ - %%insn_004135e7) db 0
    %%insn_004135e9:
    push ebx ; 004135E9 53
    %if ($ - %%insn_004135e9) > 1
        %error "LONG_004135E9"
    %endif
    times 1 - ($ - %%insn_004135e9) db 0
    %%insn_004135ea:
    push dword 0x1 ; 004135EA 6A01
    %if ($ - %%insn_004135ea) > 2
        %error "LONG_004135EA"
    %endif
    times 2 - ($ - %%insn_004135ea) db 0
    %%insn_004135ec:
    call 0x4169f0 ; 004135EC E8FF330000
    %if ($ - %%insn_004135ec) > 5
        %error "LONG_004135EC"
    %endif
    times 5 - ($ - %%insn_004135ec) db 0
    %%insn_004135f1:
    add esp,0x10 ; 004135F1 83C410
    %if ($ - %%insn_004135f1) > 3
        %error "LONG_004135F1"
    %endif
    times 3 - ($ - %%insn_004135f1) db 0
    db 0x0B, 0xF0 ; 004135F4 0BF0 | or esi,eax | encoding preserved
    %%insn_004135f6:
    lea eax,[edi+0x70] ; 004135F6 8D4770
    %if ($ - %%insn_004135f6) > 3
        %error "LONG_004135F6"
    %endif
    times 3 - ($ - %%insn_004135f6) db 0
    %%insn_004135f9:
    push eax ; 004135F9 50
    %if ($ - %%insn_004135f9) > 1
        %error "LONG_004135F9"
    %endif
    times 1 - ($ - %%insn_004135f9) db 0
    %%insn_004135fa:
    push dword 0x3a ; 004135FA 6A3A
    %if ($ - %%insn_004135fa) > 2
        %error "LONG_004135FA"
    %endif
    times 2 - ($ - %%insn_004135fa) db 0
    %%insn_004135fc:
    push ebx ; 004135FC 53
    %if ($ - %%insn_004135fc) > 1
        %error "LONG_004135FC"
    %endif
    times 1 - ($ - %%insn_004135fc) db 0
    %%insn_004135fd:
    push dword 0x1 ; 004135FD 6A01
    %if ($ - %%insn_004135fd) > 2
        %error "LONG_004135FD"
    %endif
    times 2 - ($ - %%insn_004135fd) db 0
    %%insn_004135ff:
    call 0x4169f0 ; 004135FF E8EC330000
    %if ($ - %%insn_004135ff) > 5
        %error "LONG_004135FF"
    %endif
    times 5 - ($ - %%insn_004135ff) db 0
    %%insn_00413604:
    add esp,0x10 ; 00413604 83C410
    %if ($ - %%insn_00413604) > 3
        %error "LONG_00413604"
    %endif
    times 3 - ($ - %%insn_00413604) db 0
    %%insn_00413607:
    lea ecx,[edi+0x74] ; 00413607 8D4F74
    %if ($ - %%insn_00413607) > 3
        %error "LONG_00413607"
    %endif
    times 3 - ($ - %%insn_00413607) db 0
    db 0x0B, 0xF0 ; 0041360A 0BF0 | or esi,eax | encoding preserved
    %%insn_0041360c:
    push ecx ; 0041360C 51
    %if ($ - %%insn_0041360c) > 1
        %error "LONG_0041360C"
    %endif
    times 1 - ($ - %%insn_0041360c) db 0
    %%insn_0041360d:
    push dword 0x3b ; 0041360D 6A3B
    %if ($ - %%insn_0041360d) > 2
        %error "LONG_0041360D"
    %endif
    times 2 - ($ - %%insn_0041360d) db 0
    %%insn_0041360f:
    push ebx ; 0041360F 53
    %if ($ - %%insn_0041360f) > 1
        %error "LONG_0041360F"
    %endif
    times 1 - ($ - %%insn_0041360f) db 0
    %%insn_00413610:
    push dword 0x1 ; 00413610 6A01
    %if ($ - %%insn_00413610) > 2
        %error "LONG_00413610"
    %endif
    times 2 - ($ - %%insn_00413610) db 0
    %%insn_00413612:
    call 0x4169f0 ; 00413612 E8D9330000
    %if ($ - %%insn_00413612) > 5
        %error "LONG_00413612"
    %endif
    times 5 - ($ - %%insn_00413612) db 0
    %%insn_00413617:
    add esp,0x10 ; 00413617 83C410
    %if ($ - %%insn_00413617) > 3
        %error "LONG_00413617"
    %endif
    times 3 - ($ - %%insn_00413617) db 0
    %%insn_0041361a:
    lea edx,[edi+0x78] ; 0041361A 8D5778
    %if ($ - %%insn_0041361a) > 3
        %error "LONG_0041361A"
    %endif
    times 3 - ($ - %%insn_0041361a) db 0
    db 0x0B, 0xF0 ; 0041361D 0BF0 | or esi,eax | encoding preserved
    %%insn_0041361f:
    push edx ; 0041361F 52
    %if ($ - %%insn_0041361f) > 1
        %error "LONG_0041361F"
    %endif
    times 1 - ($ - %%insn_0041361f) db 0
    %%insn_00413620:
    push dword 0x3c ; 00413620 6A3C
    %if ($ - %%insn_00413620) > 2
        %error "LONG_00413620"
    %endif
    times 2 - ($ - %%insn_00413620) db 0
    %%insn_00413622:
    push ebx ; 00413622 53
    %if ($ - %%insn_00413622) > 1
        %error "LONG_00413622"
    %endif
    times 1 - ($ - %%insn_00413622) db 0
    %%insn_00413623:
    push dword 0x1 ; 00413623 6A01
    %if ($ - %%insn_00413623) > 2
        %error "LONG_00413623"
    %endif
    times 2 - ($ - %%insn_00413623) db 0
    %%insn_00413625:
    call 0x4169f0 ; 00413625 E8C6330000
    %if ($ - %%insn_00413625) > 5
        %error "LONG_00413625"
    %endif
    times 5 - ($ - %%insn_00413625) db 0
    %%insn_0041362a:
    add esp,0x10 ; 0041362A 83C410
    %if ($ - %%insn_0041362a) > 3
        %error "LONG_0041362A"
    %endif
    times 3 - ($ - %%insn_0041362a) db 0
    db 0x0B, 0xF0 ; 0041362D 0BF0 | or esi,eax | encoding preserved
    %%insn_0041362f:
    lea eax,[edi+0x7c] ; 0041362F 8D477C
    %if ($ - %%insn_0041362f) > 3
        %error "LONG_0041362F"
    %endif
    times 3 - ($ - %%insn_0041362f) db 0
    %%insn_00413632:
    push eax ; 00413632 50
    %if ($ - %%insn_00413632) > 1
        %error "LONG_00413632"
    %endif
    times 1 - ($ - %%insn_00413632) db 0
    %%insn_00413633:
    push dword 0x3d ; 00413633 6A3D
    %if ($ - %%insn_00413633) > 2
        %error "LONG_00413633"
    %endif
    times 2 - ($ - %%insn_00413633) db 0
    %%insn_00413635:
    push ebx ; 00413635 53
    %if ($ - %%insn_00413635) > 1
        %error "LONG_00413635"
    %endif
    times 1 - ($ - %%insn_00413635) db 0
    %%insn_00413636:
    push dword 0x1 ; 00413636 6A01
    %if ($ - %%insn_00413636) > 2
        %error "LONG_00413636"
    %endif
    times 2 - ($ - %%insn_00413636) db 0
    %%insn_00413638:
    call 0x4169f0 ; 00413638 E8B3330000
    %if ($ - %%insn_00413638) > 5
        %error "LONG_00413638"
    %endif
    times 5 - ($ - %%insn_00413638) db 0
    %%insn_0041363d:
    add esp,0x10 ; 0041363D 83C410
    %if ($ - %%insn_0041363d) > 3
        %error "LONG_0041363D"
    %endif
    times 3 - ($ - %%insn_0041363d) db 0
    %%insn_00413640:
    lea ecx,[edi+0x80] ; 00413640 8D8F80000000
    %if ($ - %%insn_00413640) > 6
        %error "LONG_00413640"
    %endif
    times 6 - ($ - %%insn_00413640) db 0
    db 0x0B, 0xF0 ; 00413646 0BF0 | or esi,eax | encoding preserved
    %%insn_00413648:
    push ecx ; 00413648 51
    %if ($ - %%insn_00413648) > 1
        %error "LONG_00413648"
    %endif
    times 1 - ($ - %%insn_00413648) db 0
    %%insn_00413649:
    push dword 0x3e ; 00413649 6A3E
    %if ($ - %%insn_00413649) > 2
        %error "LONG_00413649"
    %endif
    times 2 - ($ - %%insn_00413649) db 0
    %%insn_0041364b:
    push ebx ; 0041364B 53
    %if ($ - %%insn_0041364b) > 1
        %error "LONG_0041364B"
    %endif
    times 1 - ($ - %%insn_0041364b) db 0
    %%insn_0041364c:
    push dword 0x1 ; 0041364C 6A01
    %if ($ - %%insn_0041364c) > 2
        %error "LONG_0041364C"
    %endif
    times 2 - ($ - %%insn_0041364c) db 0
    %%insn_0041364e:
    call 0x4169f0 ; 0041364E E89D330000
    %if ($ - %%insn_0041364e) > 5
        %error "LONG_0041364E"
    %endif
    times 5 - ($ - %%insn_0041364e) db 0
    %%insn_00413653:
    add esp,0x10 ; 00413653 83C410
    %if ($ - %%insn_00413653) > 3
        %error "LONG_00413653"
    %endif
    times 3 - ($ - %%insn_00413653) db 0
    %%insn_00413656:
    lea edx,[edi+0x84] ; 00413656 8D9784000000
    %if ($ - %%insn_00413656) > 6
        %error "LONG_00413656"
    %endif
    times 6 - ($ - %%insn_00413656) db 0
    db 0x0B, 0xF0 ; 0041365C 0BF0 | or esi,eax | encoding preserved
    %%insn_0041365e:
    push edx ; 0041365E 52
    %if ($ - %%insn_0041365e) > 1
        %error "LONG_0041365E"
    %endif
    times 1 - ($ - %%insn_0041365e) db 0
    %%insn_0041365f:
    push dword 0x3f ; 0041365F 6A3F
    %if ($ - %%insn_0041365f) > 2
        %error "LONG_0041365F"
    %endif
    times 2 - ($ - %%insn_0041365f) db 0
    %%insn_00413661:
    push ebx ; 00413661 53
    %if ($ - %%insn_00413661) > 1
        %error "LONG_00413661"
    %endif
    times 1 - ($ - %%insn_00413661) db 0
    %%insn_00413662:
    push dword 0x1 ; 00413662 6A01
    %if ($ - %%insn_00413662) > 2
        %error "LONG_00413662"
    %endif
    times 2 - ($ - %%insn_00413662) db 0
    %%insn_00413664:
    call 0x4169f0 ; 00413664 E887330000
    %if ($ - %%insn_00413664) > 5
        %error "LONG_00413664"
    %endif
    times 5 - ($ - %%insn_00413664) db 0
    %%insn_00413669:
    add esp,0x10 ; 00413669 83C410
    %if ($ - %%insn_00413669) > 3
        %error "LONG_00413669"
    %endif
    times 3 - ($ - %%insn_00413669) db 0
    db 0x0B, 0xF0 ; 0041366C 0BF0 | or esi,eax | encoding preserved
    %%insn_0041366e:
    lea eax,[edi+0x88] ; 0041366E 8D8788000000
    %if ($ - %%insn_0041366e) > 6
        %error "LONG_0041366E"
    %endif
    times 6 - ($ - %%insn_0041366e) db 0
    %%insn_00413674:
    push eax ; 00413674 50
    %if ($ - %%insn_00413674) > 1
        %error "LONG_00413674"
    %endif
    times 1 - ($ - %%insn_00413674) db 0
    %%insn_00413675:
    push dword 0x40 ; 00413675 6A40
    %if ($ - %%insn_00413675) > 2
        %error "LONG_00413675"
    %endif
    times 2 - ($ - %%insn_00413675) db 0
    %%insn_00413677:
    push ebx ; 00413677 53
    %if ($ - %%insn_00413677) > 1
        %error "LONG_00413677"
    %endif
    times 1 - ($ - %%insn_00413677) db 0
    %%insn_00413678:
    push dword 0x1 ; 00413678 6A01
    %if ($ - %%insn_00413678) > 2
        %error "LONG_00413678"
    %endif
    times 2 - ($ - %%insn_00413678) db 0
    %%insn_0041367a:
    call 0x4169f0 ; 0041367A E871330000
    %if ($ - %%insn_0041367a) > 5
        %error "LONG_0041367A"
    %endif
    times 5 - ($ - %%insn_0041367a) db 0
    %%insn_0041367f:
    add esp,0x10 ; 0041367F 83C410
    %if ($ - %%insn_0041367f) > 3
        %error "LONG_0041367F"
    %endif
    times 3 - ($ - %%insn_0041367f) db 0
    %%insn_00413682:
    lea ecx,[edi+0x8c] ; 00413682 8D8F8C000000
    %if ($ - %%insn_00413682) > 6
        %error "LONG_00413682"
    %endif
    times 6 - ($ - %%insn_00413682) db 0
    db 0x0B, 0xF0 ; 00413688 0BF0 | or esi,eax | encoding preserved
    %%insn_0041368a:
    push ecx ; 0041368A 51
    %if ($ - %%insn_0041368a) > 1
        %error "LONG_0041368A"
    %endif
    times 1 - ($ - %%insn_0041368a) db 0
    %%insn_0041368b:
    push dword 0x41 ; 0041368B 6A41
    %if ($ - %%insn_0041368b) > 2
        %error "LONG_0041368B"
    %endif
    times 2 - ($ - %%insn_0041368b) db 0
    %%insn_0041368d:
    push ebx ; 0041368D 53
    %if ($ - %%insn_0041368d) > 1
        %error "LONG_0041368D"
    %endif
    times 1 - ($ - %%insn_0041368d) db 0
    %%insn_0041368e:
    push dword 0x1 ; 0041368E 6A01
    %if ($ - %%insn_0041368e) > 2
        %error "LONG_0041368E"
    %endif
    times 2 - ($ - %%insn_0041368e) db 0
    %%insn_00413690:
    call 0x4169f0 ; 00413690 E85B330000
    %if ($ - %%insn_00413690) > 5
        %error "LONG_00413690"
    %endif
    times 5 - ($ - %%insn_00413690) db 0
    %%insn_00413695:
    add esp,0x10 ; 00413695 83C410
    %if ($ - %%insn_00413695) > 3
        %error "LONG_00413695"
    %endif
    times 3 - ($ - %%insn_00413695) db 0
    %%insn_00413698:
    lea edx,[edi+0x90] ; 00413698 8D9790000000
    %if ($ - %%insn_00413698) > 6
        %error "LONG_00413698"
    %endif
    times 6 - ($ - %%insn_00413698) db 0
    db 0x0B, 0xF0 ; 0041369E 0BF0 | or esi,eax | encoding preserved
    %%insn_004136a0:
    push edx ; 004136A0 52
    %if ($ - %%insn_004136a0) > 1
        %error "LONG_004136A0"
    %endif
    times 1 - ($ - %%insn_004136a0) db 0
    %%insn_004136a1:
    push dword 0x42 ; 004136A1 6A42
    %if ($ - %%insn_004136a1) > 2
        %error "LONG_004136A1"
    %endif
    times 2 - ($ - %%insn_004136a1) db 0
    %%insn_004136a3:
    push ebx ; 004136A3 53
    %if ($ - %%insn_004136a3) > 1
        %error "LONG_004136A3"
    %endif
    times 1 - ($ - %%insn_004136a3) db 0
    %%insn_004136a4:
    push dword 0x1 ; 004136A4 6A01
    %if ($ - %%insn_004136a4) > 2
        %error "LONG_004136A4"
    %endif
    times 2 - ($ - %%insn_004136a4) db 0
    %%insn_004136a6:
    call 0x4169f0 ; 004136A6 E845330000
    %if ($ - %%insn_004136a6) > 5
        %error "LONG_004136A6"
    %endif
    times 5 - ($ - %%insn_004136a6) db 0
    %%insn_004136ab:
    add esp,0x10 ; 004136AB 83C410
    %if ($ - %%insn_004136ab) > 3
        %error "LONG_004136AB"
    %endif
    times 3 - ($ - %%insn_004136ab) db 0
    db 0x0B, 0xF0 ; 004136AE 0BF0 | or esi,eax | encoding preserved
    %%insn_004136b0:
    lea eax,[edi+0x94] ; 004136B0 8D8794000000
    %if ($ - %%insn_004136b0) > 6
        %error "LONG_004136B0"
    %endif
    times 6 - ($ - %%insn_004136b0) db 0
    %%insn_004136b6:
    push eax ; 004136B6 50
    %if ($ - %%insn_004136b6) > 1
        %error "LONG_004136B6"
    %endif
    times 1 - ($ - %%insn_004136b6) db 0
    %%insn_004136b7:
    push dword 0x43 ; 004136B7 6A43
    %if ($ - %%insn_004136b7) > 2
        %error "LONG_004136B7"
    %endif
    times 2 - ($ - %%insn_004136b7) db 0
    %%insn_004136b9:
    push ebx ; 004136B9 53
    %if ($ - %%insn_004136b9) > 1
        %error "LONG_004136B9"
    %endif
    times 1 - ($ - %%insn_004136b9) db 0
    %%insn_004136ba:
    push dword 0x1 ; 004136BA 6A01
    %if ($ - %%insn_004136ba) > 2
        %error "LONG_004136BA"
    %endif
    times 2 - ($ - %%insn_004136ba) db 0
    %%insn_004136bc:
    call 0x4169f0 ; 004136BC E82F330000
    %if ($ - %%insn_004136bc) > 5
        %error "LONG_004136BC"
    %endif
    times 5 - ($ - %%insn_004136bc) db 0
    %%insn_004136c1:
    add esp,0x10 ; 004136C1 83C410
    %if ($ - %%insn_004136c1) > 3
        %error "LONG_004136C1"
    %endif
    times 3 - ($ - %%insn_004136c1) db 0
    %%insn_004136c4:
    lea ecx,[edi+0x98] ; 004136C4 8D8F98000000
    %if ($ - %%insn_004136c4) > 6
        %error "LONG_004136C4"
    %endif
    times 6 - ($ - %%insn_004136c4) db 0
    db 0x0B, 0xF0 ; 004136CA 0BF0 | or esi,eax | encoding preserved
    %%insn_004136cc:
    push ecx ; 004136CC 51
    %if ($ - %%insn_004136cc) > 1
        %error "LONG_004136CC"
    %endif
    times 1 - ($ - %%insn_004136cc) db 0
    %%insn_004136cd:
    push dword 0x28 ; 004136CD 6A28
    %if ($ - %%insn_004136cd) > 2
        %error "LONG_004136CD"
    %endif
    times 2 - ($ - %%insn_004136cd) db 0
    %%insn_004136cf:
    push ebx ; 004136CF 53
    %if ($ - %%insn_004136cf) > 1
        %error "LONG_004136CF"
    %endif
    times 1 - ($ - %%insn_004136cf) db 0
    %%insn_004136d0:
    push dword 0x1 ; 004136D0 6A01
    %if ($ - %%insn_004136d0) > 2
        %error "LONG_004136D0"
    %endif
    times 2 - ($ - %%insn_004136d0) db 0
    %%insn_004136d2:
    call 0x4169f0 ; 004136D2 E819330000
    %if ($ - %%insn_004136d2) > 5
        %error "LONG_004136D2"
    %endif
    times 5 - ($ - %%insn_004136d2) db 0
    %%insn_004136d7:
    add esp,0x10 ; 004136D7 83C410
    %if ($ - %%insn_004136d7) > 3
        %error "LONG_004136D7"
    %endif
    times 3 - ($ - %%insn_004136d7) db 0
    %%insn_004136da:
    lea edx,[edi+0x9c] ; 004136DA 8D979C000000
    %if ($ - %%insn_004136da) > 6
        %error "LONG_004136DA"
    %endif
    times 6 - ($ - %%insn_004136da) db 0
    db 0x0B, 0xF0 ; 004136E0 0BF0 | or esi,eax | encoding preserved
    %%insn_004136e2:
    push edx ; 004136E2 52
    %if ($ - %%insn_004136e2) > 1
        %error "LONG_004136E2"
    %endif
    times 1 - ($ - %%insn_004136e2) db 0
    %%insn_004136e3:
    push dword 0x29 ; 004136E3 6A29
    %if ($ - %%insn_004136e3) > 2
        %error "LONG_004136E3"
    %endif
    times 2 - ($ - %%insn_004136e3) db 0
    %%insn_004136e5:
    push ebx ; 004136E5 53
    %if ($ - %%insn_004136e5) > 1
        %error "LONG_004136E5"
    %endif
    times 1 - ($ - %%insn_004136e5) db 0
    %%insn_004136e6:
    push dword 0x1 ; 004136E6 6A01
    %if ($ - %%insn_004136e6) > 2
        %error "LONG_004136E6"
    %endif
    times 2 - ($ - %%insn_004136e6) db 0
    %%insn_004136e8:
    call 0x4169f0 ; 004136E8 E803330000
    %if ($ - %%insn_004136e8) > 5
        %error "LONG_004136E8"
    %endif
    times 5 - ($ - %%insn_004136e8) db 0
    %%insn_004136ed:
    add esp,0x10 ; 004136ED 83C410
    %if ($ - %%insn_004136ed) > 3
        %error "LONG_004136ED"
    %endif
    times 3 - ($ - %%insn_004136ed) db 0
    db 0x0B, 0xF0 ; 004136F0 0BF0 | or esi,eax | encoding preserved
    %%insn_004136f2:
    lea eax,[edi+0xa0] ; 004136F2 8D87A0000000
    %if ($ - %%insn_004136f2) > 6
        %error "LONG_004136F2"
    %endif
    times 6 - ($ - %%insn_004136f2) db 0
    %%insn_004136f8:
    push eax ; 004136F8 50
    %if ($ - %%insn_004136f8) > 1
        %error "LONG_004136F8"
    %endif
    times 1 - ($ - %%insn_004136f8) db 0
    %%insn_004136f9:
    push dword 0x1f ; 004136F9 6A1F
    %if ($ - %%insn_004136f9) > 2
        %error "LONG_004136F9"
    %endif
    times 2 - ($ - %%insn_004136f9) db 0
    %%insn_004136fb:
    push ebp ; 004136FB 55
    %if ($ - %%insn_004136fb) > 1
        %error "LONG_004136FB"
    %endif
    times 1 - ($ - %%insn_004136fb) db 0
    %%insn_004136fc:
    push dword 0x1 ; 004136FC 6A01
    %if ($ - %%insn_004136fc) > 2
        %error "LONG_004136FC"
    %endif
    times 2 - ($ - %%insn_004136fc) db 0
    %%insn_004136fe:
    call 0x4169f0 ; 004136FE E8ED320000
    %if ($ - %%insn_004136fe) > 5
        %error "LONG_004136FE"
    %endif
    times 5 - ($ - %%insn_004136fe) db 0
    %%insn_00413703:
    add esp,0x10 ; 00413703 83C410
    %if ($ - %%insn_00413703) > 3
        %error "LONG_00413703"
    %endif
    times 3 - ($ - %%insn_00413703) db 0
    %%insn_00413706:
    lea ecx,[edi+0xa4] ; 00413706 8D8FA4000000
    %if ($ - %%insn_00413706) > 6
        %error "LONG_00413706"
    %endif
    times 6 - ($ - %%insn_00413706) db 0
    db 0x0B, 0xF0 ; 0041370C 0BF0 | or esi,eax | encoding preserved
    %%insn_0041370e:
    push ecx ; 0041370E 51
    %if ($ - %%insn_0041370e) > 1
        %error "LONG_0041370E"
    %endif
    times 1 - ($ - %%insn_0041370e) db 0
    %%insn_0041370f:
    push dword 0x20 ; 0041370F 6A20
    %if ($ - %%insn_0041370f) > 2
        %error "LONG_0041370F"
    %endif
    times 2 - ($ - %%insn_0041370f) db 0
    %%insn_00413711:
    push ebp ; 00413711 55
    %if ($ - %%insn_00413711) > 1
        %error "LONG_00413711"
    %endif
    times 1 - ($ - %%insn_00413711) db 0
    %%insn_00413712:
    push dword 0x1 ; 00413712 6A01
    %if ($ - %%insn_00413712) > 2
        %error "LONG_00413712"
    %endif
    times 2 - ($ - %%insn_00413712) db 0
    %%insn_00413714:
    call 0x4169f0 ; 00413714 E8D7320000
    %if ($ - %%insn_00413714) > 5
        %error "LONG_00413714"
    %endif
    times 5 - ($ - %%insn_00413714) db 0
    %%insn_00413719:
    add esp,0x10 ; 00413719 83C410
    %if ($ - %%insn_00413719) > 3
        %error "LONG_00413719"
    %endif
    times 3 - ($ - %%insn_00413719) db 0
    db 0x0B, 0xF0 ; 0041371C 0BF0 | or esi,eax | encoding preserved
    %%insn_0041371e:
    push edi ; 0041371E 57
    %if ($ - %%insn_0041371e) > 1
        %error "LONG_0041371E"
    %endif
    times 1 - ($ - %%insn_0041371e) db 0
    %%insn_0041371f:
    push ebp ; 0041371F 55
    %if ($ - %%insn_0041371f) > 1
        %error "LONG_0041371F"
    %endif
    times 1 - ($ - %%insn_0041371f) db 0
    %%insn_00413720:
    call 0x413980 ; 00413720 E85B020000
    %if ($ - %%insn_00413720) > 5
        %error "LONG_00413720"
    %endif
    times 5 - ($ - %%insn_00413720) db 0
    %%insn_00413725:
    add esp,0x8 ; 00413725 83C408
    %if ($ - %%insn_00413725) > 3
        %error "LONG_00413725"
    %endif
    times 3 - ($ - %%insn_00413725) db 0
    db 0x0B, 0xF0 ; 00413728 0BF0 | or esi,eax | encoding preserved
    db 0x8B, 0xC6 ; 0041372A 8BC6 | mov eax,esi | encoding preserved
    %%insn_0041372c:
    pop esi ; 0041372C 5E
    %if ($ - %%insn_0041372c) > 1
        %error "LONG_0041372C"
    %endif
    times 1 - ($ - %%insn_0041372c) db 0
    %%insn_0041372d:
    pop edi ; 0041372D 5F
    %if ($ - %%insn_0041372d) > 1
        %error "LONG_0041372D"
    %endif
    times 1 - ($ - %%insn_0041372d) db 0
    %%insn_0041372e:
    pop ebp ; 0041372E 5D
    %if ($ - %%insn_0041372e) > 1
        %error "LONG_0041372E"
    %endif
    times 1 - ($ - %%insn_0041372e) db 0
    %%insn_0041372f:
    pop ebx ; 0041372F 5B
    %if ($ - %%insn_0041372f) > 1
        %error "LONG_0041372F"
    %endif
    times 1 - ($ - %%insn_0041372f) db 0
    %%insn_00413730:
    ret ; 00413730 C3
    %if ($ - %%insn_00413730) > 1
        %error "LONG_00413730"
    %endif
    times 1 - ($ - %%insn_00413730) db 0
    %if ($ - %%fragment_start) != 881
        %error "function fragment size drift: 004133C0"
    %endif
%endmacro
