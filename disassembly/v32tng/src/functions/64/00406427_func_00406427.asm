; PE virtual entry 00406427
; Ghidra working symbol: FUN_00406427
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406427_part_00 0
    %%fragment_start:
func_00406427:
    %%insn_00406427:
    push ebp ; 00406427 55
    %if ($ - %%insn_00406427) > 1
        %error "LONG_00406427"
    %endif
    times 1 - ($ - %%insn_00406427) db 0
    db 0x8B, 0xEC ; 00406428 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040642a:
    sub esp,0x10 ; 0040642A 83EC10
    %if ($ - %%insn_0040642a) > 3
        %error "LONG_0040642A"
    %endif
    times 3 - ($ - %%insn_0040642a) db 0
    %%insn_0040642d:
    mov word [ebp+0xc],0x1 ; 0040642D 66C7450C0100
    %if ($ - %%insn_0040642d) > 6
        %error "LONG_0040642D"
    %endif
    times 6 - ($ - %%insn_0040642d) db 0
    %%insn_00406433:
    push dword 0x421580 ; 00406433 6880154200
    %if ($ - %%insn_00406433) > 5
        %error "LONG_00406433"
    %endif
    times 5 - ($ - %%insn_00406433) db 0
    %%insn_00406438:
    call 0x404f90 ; 00406438 E853EBFFFF
    %if ($ - %%insn_00406438) > 5
        %error "LONG_00406438"
    %endif
    times 5 - ($ - %%insn_00406438) db 0
    %%insn_0040643d:
    add esp,0x4 ; 0040643D 83C404
    %if ($ - %%insn_0040643d) > 3
        %error "LONG_0040643D"
    %endif
    times 3 - ($ - %%insn_0040643d) db 0
    %%insn_00406440:
    call 0x4062fd ; 00406440 E8B8FEFFFF
    %if ($ - %%insn_00406440) > 5
        %error "LONG_00406440"
    %endif
    times 5 - ($ - %%insn_00406440) db 0
    %%insn_00406445:
    movsx eax,byte [ebp+0x8] ; 00406445 0FBE4508
    %if ($ - %%insn_00406445) > 4
        %error "LONG_00406445"
    %endif
    times 4 - ($ - %%insn_00406445) db 0
    %%insn_00406449:
    movsx ecx,byte [eax+0x4215b0] ; 00406449 0FBE88B0154200
    %if ($ - %%insn_00406449) > 7
        %error "LONG_00406449"
    %endif
    times 7 - ($ - %%insn_00406449) db 0
    %%insn_00406450:
    movsx edx,byte [0x4215b1] ; 00406450 0FBE15B1154200
    %if ($ - %%insn_00406450) > 7
        %error "LONG_00406450"
    %endif
    times 7 - ($ - %%insn_00406450) db 0
    %%insn_00406457:
    mov eax,0x31 ; 00406457 B831000000
    %if ($ - %%insn_00406457) > 5
        %error "LONG_00406457"
    %endif
    times 5 - ($ - %%insn_00406457) db 0
    db 0x2B, 0xC2 ; 0040645C 2BC2 | sub eax,edx | encoding preserved
    %%insn_0040645e:
    movsx edx,byte [0x4215b2] ; 0040645E 0FBE15B2154200
    %if ($ - %%insn_0040645e) > 7
        %error "LONG_0040645E"
    %endif
    times 7 - ($ - %%insn_0040645e) db 0
    db 0x2B, 0xC2 ; 00406465 2BC2 | sub eax,edx | encoding preserved
    %%insn_00406467:
    movsx edx,byte [0x4215b3] ; 00406467 0FBE15B3154200
    %if ($ - %%insn_00406467) > 7
        %error "LONG_00406467"
    %endif
    times 7 - ($ - %%insn_00406467) db 0
    db 0x2B, 0xC2 ; 0040646E 2BC2 | sub eax,edx | encoding preserved
    %%insn_00406470:
    movsx edx,byte [0x4215b4] ; 00406470 0FBE15B4154200
    %if ($ - %%insn_00406470) > 7
        %error "LONG_00406470"
    %endif
    times 7 - ($ - %%insn_00406470) db 0
    db 0x2B, 0xC2 ; 00406477 2BC2 | sub eax,edx | encoding preserved
    db 0x3B, 0xC8 ; 00406479 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0040647b:
    jnl short 0x40648b ; 0040647B 7D0E
    %if ($ - %%insn_0040647b) > 2
        %error "LONG_0040647B"
    %endif
    times 2 - ($ - %%insn_0040647b) db 0
    %%insn_0040647d:
    call 0x405045 ; 0040647D E8C3EBFFFF
    %if ($ - %%insn_0040647d) > 5
        %error "LONG_0040647D"
    %endif
    times 5 - ($ - %%insn_0040647d) db 0
    %%insn_00406482:
    mov dword [ebp-0xc],0x4050af ; 00406482 C745F4AF504000
    %if ($ - %%insn_00406482) > 7
        %error "LONG_00406482"
    %endif
    times 7 - ($ - %%insn_00406482) db 0
    %%insn_00406489:
    jmp short 0x406497 ; 00406489 EB0C
    %if ($ - %%insn_00406489) > 2
        %error "LONG_00406489"
    %endif
    times 2 - ($ - %%insn_00406489) db 0
    %%insn_0040648b:
    call 0x405095 ; 0040648B E805ECFFFF
    %if ($ - %%insn_0040648b) > 5
        %error "LONG_0040648B"
    %endif
    times 5 - ($ - %%insn_0040648b) db 0
    %%insn_00406490:
    mov dword [ebp-0xc],0x4054b4 ; 00406490 C745F4B4544000
    %if ($ - %%insn_00406490) > 7
        %error "LONG_00406490"
    %endif
    times 7 - ($ - %%insn_00406490) db 0
    %%insn_00406497:
    mov al,[ebp+0x8] ; 00406497 8A4508
    %if ($ - %%insn_00406497) > 3
        %error "LONG_00406497"
    %endif
    times 3 - ($ - %%insn_00406497) db 0
    %%insn_0040649a:
    push eax ; 0040649A 50
    %if ($ - %%insn_0040649a) > 1
        %error "LONG_0040649A"
    %endif
    times 1 - ($ - %%insn_0040649a) db 0
    %%insn_0040649b:
    call dword near [ebp-0xc] ; 0040649B FF55F4
    %if ($ - %%insn_0040649b) > 3
        %error "LONG_0040649B"
    %endif
    times 3 - ($ - %%insn_0040649b) db 0
    %%insn_0040649e:
    add esp,0x4 ; 0040649E 83C404
    %if ($ - %%insn_0040649e) > 3
        %error "LONG_0040649E"
    %endif
    times 3 - ($ - %%insn_0040649e) db 0
    %%insn_004064a1:
    movsx ecx,ax ; 004064A1 0FBFC8
    %if ($ - %%insn_004064a1) > 3
        %error "LONG_004064A1"
    %endif
    times 3 - ($ - %%insn_004064a1) db 0
    %%insn_004064a4:
    test ecx,ecx ; 004064A4 85C9
    %if ($ - %%insn_004064a4) > 2
        %error "LONG_004064A4"
    %endif
    times 2 - ($ - %%insn_004064a4) db 0
    %%insn_004064a6:
    jnz short 0x4064b0 ; 004064A6 7508
    %if ($ - %%insn_004064a6) > 2
        %error "LONG_004064A6"
    %endif
    times 2 - ($ - %%insn_004064a6) db 0
    db 0x66, 0x33, 0xC0 ; 004064A8 6633C0 | xor ax,ax | encoding preserved
    %%insn_004064ab:
    jmp 0x4066a5 ; 004064AB E9F5010000
    %if ($ - %%insn_004064ab) > 5
        %error "LONG_004064AB"
    %endif
    times 5 - ($ - %%insn_004064ab) db 0
    %%insn_004064b0:
    movsx edx,byte [ebp+0x8] ; 004064B0 0FBE5508
    %if ($ - %%insn_004064b0) > 4
        %error "LONG_004064B0"
    %endif
    times 4 - ($ - %%insn_004064b0) db 0
    %%insn_004064b4:
    movsx eax,byte [edx+0x4215b0] ; 004064B4 0FBE82B0154200
    %if ($ - %%insn_004064b4) > 7
        %error "LONG_004064B4"
    %endif
    times 7 - ($ - %%insn_004064b4) db 0
    %%insn_004064bb:
    movsx ecx,byte [0x4215b1] ; 004064BB 0FBE0DB1154200
    %if ($ - %%insn_004064bb) > 7
        %error "LONG_004064BB"
    %endif
    times 7 - ($ - %%insn_004064bb) db 0
    db 0x2B, 0xC1 ; 004064C2 2BC1 | sub eax,ecx | encoding preserved
    %%insn_004064c4:
    movsx edx,byte [0x4215b2] ; 004064C4 0FBE15B2154200
    %if ($ - %%insn_004064c4) > 7
        %error "LONG_004064C4"
    %endif
    times 7 - ($ - %%insn_004064c4) db 0
    db 0x2B, 0xC2 ; 004064CB 2BC2 | sub eax,edx | encoding preserved
    %%insn_004064cd:
    movsx ecx,byte [0x4215b3] ; 004064CD 0FBE0DB3154200
    %if ($ - %%insn_004064cd) > 7
        %error "LONG_004064CD"
    %endif
    times 7 - ($ - %%insn_004064cd) db 0
    db 0x2B, 0xC1 ; 004064D4 2BC1 | sub eax,ecx | encoding preserved
    %%insn_004064d6:
    movsx edx,byte [0x4215b4] ; 004064D6 0FBE15B4154200
    %if ($ - %%insn_004064d6) > 7
        %error "LONG_004064D6"
    %endif
    times 7 - ($ - %%insn_004064d6) db 0
    db 0x2B, 0xC2 ; 004064DD 2BC2 | sub eax,edx | encoding preserved
    %%insn_004064df:
    test eax,eax ; 004064DF 85C0
    %if ($ - %%insn_004064df) > 2
        %error "LONG_004064DF"
    %endif
    times 2 - ($ - %%insn_004064df) db 0
    %%insn_004064e1:
    jnz short 0x4064e9 ; 004064E1 7506
    %if ($ - %%insn_004064e1) > 2
        %error "LONG_004064E1"
    %endif
    times 2 - ($ - %%insn_004064e1) db 0
    %%insn_004064e3:
    mov word [ebp+0xc],0x0 ; 004064E3 66C7450C0000
    %if ($ - %%insn_004064e3) > 6
        %error "LONG_004064E3"
    %endif
    times 6 - ($ - %%insn_004064e3) db 0
    %%insn_004064e9:
    mov byte [0x41f45c],0x0 ; 004064E9 C6055CF4410000
    %if ($ - %%insn_004064e9) > 7
        %error "LONG_004064E9"
    %endif
    times 7 - ($ - %%insn_004064e9) db 0
    %%insn_004064f0:
    movsx eax,byte [0x4215b7] ; 004064F0 0FBE05B7154200
    %if ($ - %%insn_004064f0) > 7
        %error "LONG_004064F0"
    %endif
    times 7 - ($ - %%insn_004064f0) db 0
    %%insn_004064f7:
    cmp eax,0x1 ; 004064F7 83F801
    %if ($ - %%insn_004064f7) > 3
        %error "LONG_004064F7"
    %endif
    times 3 - ($ - %%insn_004064f7) db 0
    %%insn_004064fa:
    jnz short 0x406503 ; 004064FA 7507
    %if ($ - %%insn_004064fa) > 2
        %error "LONG_004064FA"
    %endif
    times 2 - ($ - %%insn_004064fa) db 0
    %%insn_004064fc:
    mov byte [0x41f45c],0x1 ; 004064FC C6055CF4410001
    %if ($ - %%insn_004064fc) > 7
        %error "LONG_004064FC"
    %endif
    times 7 - ($ - %%insn_004064fc) db 0
    %%insn_00406503:
    movsx ecx,word [ebp+0xc] ; 00406503 0FBF4D0C
    %if ($ - %%insn_00406503) > 4
        %error "LONG_00406503"
    %endif
    times 4 - ($ - %%insn_00406503) db 0
    %%insn_00406507:
    test ecx,ecx ; 00406507 85C9
    %if ($ - %%insn_00406507) > 2
        %error "LONG_00406507"
    %endif
    times 2 - ($ - %%insn_00406507) db 0
    %%insn_00406509:
    jz short 0x40656b ; 00406509 7460
    %if ($ - %%insn_00406509) > 2
        %error "LONG_00406509"
    %endif
    times 2 - ($ - %%insn_00406509) db 0
    %%insn_0040650b:
    mov dl,[ebp+0x8] ; 0040650B 8A5508
    %if ($ - %%insn_0040650b) > 3
        %error "LONG_0040650B"
    %endif
    times 3 - ($ - %%insn_0040650b) db 0
    %%insn_0040650e:
    push edx ; 0040650E 52
    %if ($ - %%insn_0040650e) > 1
        %error "LONG_0040650E"
    %endif
    times 1 - ($ - %%insn_0040650e) db 0
    %%insn_0040650f:
    call 0x40563c ; 0040650F E828F1FFFF
    %if ($ - %%insn_0040650f) > 5
        %error "LONG_0040650F"
    %endif
    times 5 - ($ - %%insn_0040650f) db 0
    %%insn_00406514:
    add esp,0x4 ; 00406514 83C404
    %if ($ - %%insn_00406514) > 3
        %error "LONG_00406514"
    %endif
    times 3 - ($ - %%insn_00406514) db 0
    %%insn_00406517:
    mov word [0x41f470],0x0 ; 00406517 66C70570F441000000
    %if ($ - %%insn_00406517) > 9
        %error "LONG_00406517"
    %endif
    times 9 - ($ - %%insn_00406517) db 0
    %%insn_00406520:
    cmp dword [ebp-0xc],0x4054b4 ; 00406520 817DF4B4544000
    %if ($ - %%insn_00406520) > 7
        %error "LONG_00406520"
    %endif
    times 7 - ($ - %%insn_00406520) db 0
    %%insn_00406527:
    jnz short 0x406545 ; 00406527 751C
    %if ($ - %%insn_00406527) > 2
        %error "LONG_00406527"
    %endif
    times 2 - ($ - %%insn_00406527) db 0
    %%insn_00406529:
    push dword 0xffffffffffffff81 ; 00406529 6A81
    %if ($ - %%insn_00406529) > 2
        %error "LONG_00406529"
    %endif
    times 2 - ($ - %%insn_00406529) db 0
    %%insn_0040652b:
    mov ax,[ebp+0xc] ; 0040652B 668B450C
    %if ($ - %%insn_0040652b) > 4
        %error "LONG_0040652B"
    %endif
    times 4 - ($ - %%insn_0040652b) db 0
    %%insn_0040652f:
    push eax ; 0040652F 50
    %if ($ - %%insn_0040652f) > 1
        %error "LONG_0040652F"
    %endif
    times 1 - ($ - %%insn_0040652f) db 0
    %%insn_00406530:
    mov cl,[ebp+0x8] ; 00406530 8A4D08
    %if ($ - %%insn_00406530) > 3
        %error "LONG_00406530"
    %endif
    times 3 - ($ - %%insn_00406530) db 0
    %%insn_00406533:
    push ecx ; 00406533 51
    %if ($ - %%insn_00406533) > 1
        %error "LONG_00406533"
    %endif
    times 1 - ($ - %%insn_00406533) db 0
    %%insn_00406534:
    mov dl,[ebp+0x8] ; 00406534 8A5508
    %if ($ - %%insn_00406534) > 3
        %error "LONG_00406534"
    %endif
    times 3 - ($ - %%insn_00406534) db 0
    %%insn_00406537:
    push edx ; 00406537 52
    %if ($ - %%insn_00406537) > 1
        %error "LONG_00406537"
    %endif
    times 1 - ($ - %%insn_00406537) db 0
    %%insn_00406538:
    call 0x405cbb ; 00406538 E87EF7FFFF
    %if ($ - %%insn_00406538) > 5
        %error "LONG_00406538"
    %endif
    times 5 - ($ - %%insn_00406538) db 0
    %%insn_0040653d:
    add esp,0x10 ; 0040653D 83C410
    %if ($ - %%insn_0040653d) > 3
        %error "LONG_0040653D"
    %endif
    times 3 - ($ - %%insn_0040653d) db 0
    %%insn_00406540:
    mov [ebp-0x4],al ; 00406540 8845FC
    %if ($ - %%insn_00406540) > 3
        %error "LONG_00406540"
    %endif
    times 3 - ($ - %%insn_00406540) db 0
    %%insn_00406543:
    jmp short 0x406569 ; 00406543 EB24
    %if ($ - %%insn_00406543) > 2
        %error "LONG_00406543"
    %endif
    times 2 - ($ - %%insn_00406543) db 0
    %%insn_00406545:
    call 0x405c15 ; 00406545 E8CBF6FFFF
    %if ($ - %%insn_00406545) > 5
        %error "LONG_00406545"
    %endif
    times 5 - ($ - %%insn_00406545) db 0
    %%insn_0040654a:
    push dword 0xffffffffffffff81 ; 0040654A 6A81
    %if ($ - %%insn_0040654a) > 2
        %error "LONG_0040654A"
    %endif
    times 2 - ($ - %%insn_0040654a) db 0
    %%insn_0040654c:
    mov ax,[ebp+0xc] ; 0040654C 668B450C
    %if ($ - %%insn_0040654c) > 4
        %error "LONG_0040654C"
    %endif
    times 4 - ($ - %%insn_0040654c) db 0
    %%insn_00406550:
    push eax ; 00406550 50
    %if ($ - %%insn_00406550) > 1
        %error "LONG_00406550"
    %endif
    times 1 - ($ - %%insn_00406550) db 0
    %%insn_00406551:
    mov cl,[ebp+0x8] ; 00406551 8A4D08
    %if ($ - %%insn_00406551) > 3
        %error "LONG_00406551"
    %endif
    times 3 - ($ - %%insn_00406551) db 0
    %%insn_00406554:
    push ecx ; 00406554 51
    %if ($ - %%insn_00406554) > 1
        %error "LONG_00406554"
    %endif
    times 1 - ($ - %%insn_00406554) db 0
    %%insn_00406555:
    mov dl,[ebp+0x8] ; 00406555 8A5508
    %if ($ - %%insn_00406555) > 3
        %error "LONG_00406555"
    %endif
    times 3 - ($ - %%insn_00406555) db 0
    %%insn_00406558:
    push edx ; 00406558 52
    %if ($ - %%insn_00406558) > 1
        %error "LONG_00406558"
    %endif
    times 1 - ($ - %%insn_00406558) db 0
    %%insn_00406559:
    call 0x405cbb ; 00406559 E85DF7FFFF
    %if ($ - %%insn_00406559) > 5
        %error "LONG_00406559"
    %endif
    times 5 - ($ - %%insn_00406559) db 0
    %%insn_0040655e:
    add esp,0x10 ; 0040655E 83C410
    %if ($ - %%insn_0040655e) > 3
        %error "LONG_0040655E"
    %endif
    times 3 - ($ - %%insn_0040655e) db 0
    %%insn_00406561:
    mov [ebp-0x4],al ; 00406561 8845FC
    %if ($ - %%insn_00406561) > 3
        %error "LONG_00406561"
    %endif
    times 3 - ($ - %%insn_00406561) db 0
    %%insn_00406564:
    call 0x405c68 ; 00406564 E8FFF6FFFF
    %if ($ - %%insn_00406564) > 5
        %error "LONG_00406564"
    %endif
    times 5 - ($ - %%insn_00406564) db 0
    %%insn_00406569:
    jmp short 0x40657e ; 00406569 EB13
    %if ($ - %%insn_00406569) > 2
        %error "LONG_00406569"
    %endif
    times 2 - ($ - %%insn_00406569) db 0
    %%insn_0040656b:
    mov al,[ebp+0x8] ; 0040656B 8A4508
    %if ($ - %%insn_0040656b) > 3
        %error "LONG_0040656B"
    %endif
    times 3 - ($ - %%insn_0040656b) db 0
    %%insn_0040656e:
    push eax ; 0040656E 50
    %if ($ - %%insn_0040656e) > 1
        %error "LONG_0040656E"
    %endif
    times 1 - ($ - %%insn_0040656e) db 0
    %%insn_0040656f:
    mov cl,[ebp+0x8] ; 0040656F 8A4D08
    %if ($ - %%insn_0040656f) > 3
        %error "LONG_0040656F"
    %endif
    times 3 - ($ - %%insn_0040656f) db 0
    %%insn_00406572:
    push ecx ; 00406572 51
    %if ($ - %%insn_00406572) > 1
        %error "LONG_00406572"
    %endif
    times 1 - ($ - %%insn_00406572) db 0
    %%insn_00406573:
    call 0x4056b2 ; 00406573 E83AF1FFFF
    %if ($ - %%insn_00406573) > 5
        %error "LONG_00406573"
    %endif
    times 5 - ($ - %%insn_00406573) db 0
    %%insn_00406578:
    add esp,0x8 ; 00406578 83C408
    %if ($ - %%insn_00406578) > 3
        %error "LONG_00406578"
    %endif
    times 3 - ($ - %%insn_00406578) db 0
    %%insn_0040657b:
    mov [ebp-0x4],al ; 0040657B 8845FC
    %if ($ - %%insn_0040657b) > 3
        %error "LONG_0040657B"
    %endif
    times 3 - ($ - %%insn_0040657b) db 0
    %%insn_0040657e:
    mov dl,[ebp-0x4] ; 0040657E 8A55FC
    %if ($ - %%insn_0040657e) > 3
        %error "LONG_0040657E"
    %endif
    times 3 - ($ - %%insn_0040657e) db 0
    %%insn_00406581:
    push edx ; 00406581 52
    %if ($ - %%insn_00406581) > 1
        %error "LONG_00406581"
    %endif
    times 1 - ($ - %%insn_00406581) db 0
    %%insn_00406582:
    call 0x406324 ; 00406582 E89DFDFFFF
    %if ($ - %%insn_00406582) > 5
        %error "LONG_00406582"
    %endif
    times 5 - ($ - %%insn_00406582) db 0
    %%insn_00406587:
    add esp,0x4 ; 00406587 83C404
    %if ($ - %%insn_00406587) > 3
        %error "LONG_00406587"
    %endif
    times 3 - ($ - %%insn_00406587) db 0
    %%insn_0040658a:
    movsx eax,byte [ebp+0x8] ; 0040658A 0FBE4508
    %if ($ - %%insn_0040658a) > 4
        %error "LONG_0040658A"
    %endif
    times 4 - ($ - %%insn_0040658a) db 0
    %%insn_0040658e:
    movsx ecx,byte [eax+0x4215b0] ; 0040658E 0FBE88B0154200
    %if ($ - %%insn_0040658e) > 7
        %error "LONG_0040658E"
    %endif
    times 7 - ($ - %%insn_0040658e) db 0
    %%insn_00406595:
    shl ecx,1 ; 00406595 D1E1
    %if ($ - %%insn_00406595) > 2
        %error "LONG_00406595"
    %endif
    times 2 - ($ - %%insn_00406595) db 0
    %%insn_00406597:
    movsx edx,byte [0x4215b1] ; 00406597 0FBE15B1154200
    %if ($ - %%insn_00406597) > 7
        %error "LONG_00406597"
    %endif
    times 7 - ($ - %%insn_00406597) db 0
    db 0x2B, 0xCA ; 0040659E 2BCA | sub ecx,edx | encoding preserved
    %%insn_004065a0:
    movsx eax,byte [0x4215b2] ; 004065A0 0FBE05B2154200
    %if ($ - %%insn_004065a0) > 7
        %error "LONG_004065A0"
    %endif
    times 7 - ($ - %%insn_004065a0) db 0
    db 0x2B, 0xC8 ; 004065A7 2BC8 | sub ecx,eax | encoding preserved
    %%insn_004065a9:
    movsx edx,byte [0x4215b3] ; 004065A9 0FBE15B3154200
    %if ($ - %%insn_004065a9) > 7
        %error "LONG_004065A9"
    %endif
    times 7 - ($ - %%insn_004065a9) db 0
    db 0x2B, 0xCA ; 004065B0 2BCA | sub ecx,edx | encoding preserved
    %%insn_004065b2:
    movsx eax,byte [0x4215b4] ; 004065B2 0FBE05B4154200
    %if ($ - %%insn_004065b2) > 7
        %error "LONG_004065B2"
    %endif
    times 7 - ($ - %%insn_004065b2) db 0
    db 0x2B, 0xC8 ; 004065B9 2BC8 | sub ecx,eax | encoding preserved
    %%insn_004065bb:
    shl ecx,1 ; 004065BB D1E1
    %if ($ - %%insn_004065bb) > 2
        %error "LONG_004065BB"
    %endif
    times 2 - ($ - %%insn_004065bb) db 0
    %%insn_004065bd:
    mov [ebp-0x8],cl ; 004065BD 884DF8
    %if ($ - %%insn_004065bd) > 3
        %error "LONG_004065BD"
    %endif
    times 3 - ($ - %%insn_004065bd) db 0
    %%insn_004065c0:
    mov cl,[ebp+0x8] ; 004065C0 8A4D08
    %if ($ - %%insn_004065c0) > 3
        %error "LONG_004065C0"
    %endif
    times 3 - ($ - %%insn_004065c0) db 0
    %%insn_004065c3:
    push ecx ; 004065C3 51
    %if ($ - %%insn_004065c3) > 1
        %error "LONG_004065C3"
    %endif
    times 1 - ($ - %%insn_004065c3) db 0
    %%insn_004065c4:
    call dword near [ebp-0xc] ; 004065C4 FF55F4
    %if ($ - %%insn_004065c4) > 3
        %error "LONG_004065C4"
    %endif
    times 3 - ($ - %%insn_004065c4) db 0
    %%insn_004065c7:
    add esp,0x4 ; 004065C7 83C404
    %if ($ - %%insn_004065c7) > 3
        %error "LONG_004065C7"
    %endif
    times 3 - ($ - %%insn_004065c7) db 0
    %%insn_004065ca:
    movsx edx,ax ; 004065CA 0FBFD0
    %if ($ - %%insn_004065ca) > 3
        %error "LONG_004065CA"
    %endif
    times 3 - ($ - %%insn_004065ca) db 0
    %%insn_004065cd:
    test edx,edx ; 004065CD 85D2
    %if ($ - %%insn_004065cd) > 2
        %error "LONG_004065CD"
    %endif
    times 2 - ($ - %%insn_004065cd) db 0
    %%insn_004065cf:
    jz 0x4066a1 ; 004065CF 0F84CC000000
    %if ($ - %%insn_004065cf) > 6
        %error "LONG_004065CF"
    %endif
    times 6 - ($ - %%insn_004065cf) db 0
    %%insn_004065d5:
    movsx eax,byte [0x41f458] ; 004065D5 0FBE0558F44100
    %if ($ - %%insn_004065d5) > 7
        %error "LONG_004065D5"
    %endif
    times 7 - ($ - %%insn_004065d5) db 0
    %%insn_004065dc:
    test eax,eax ; 004065DC 85C0
    %if ($ - %%insn_004065dc) > 2
        %error "LONG_004065DC"
    %endif
    times 2 - ($ - %%insn_004065dc) db 0
    %%insn_004065de:
    jz short 0x4065e5 ; 004065DE 7405
    %if ($ - %%insn_004065de) > 2
        %error "LONG_004065DE"
    %endif
    times 2 - ($ - %%insn_004065de) db 0
    %%insn_004065e0:
    jmp 0x4066a1 ; 004065E0 E9BC000000
    %if ($ - %%insn_004065e0) > 5
        %error "LONG_004065E0"
    %endif
    times 5 - ($ - %%insn_004065e0) db 0
    %%insn_004065e5:
    mov byte [0x41f45c],0x0 ; 004065E5 C6055CF4410000
    %if ($ - %%insn_004065e5) > 7
        %error "LONG_004065E5"
    %endif
    times 7 - ($ - %%insn_004065e5) db 0
    %%insn_004065ec:
    movsx ecx,byte [0x4215b7] ; 004065EC 0FBE0DB7154200
    %if ($ - %%insn_004065ec) > 7
        %error "LONG_004065EC"
    %endif
    times 7 - ($ - %%insn_004065ec) db 0
    %%insn_004065f3:
    cmp ecx,0x1 ; 004065F3 83F901
    %if ($ - %%insn_004065f3) > 3
        %error "LONG_004065F3"
    %endif
    times 3 - ($ - %%insn_004065f3) db 0
    %%insn_004065f6:
    jnz short 0x4065ff ; 004065F6 7507
    %if ($ - %%insn_004065f6) > 2
        %error "LONG_004065F6"
    %endif
    times 2 - ($ - %%insn_004065f6) db 0
    %%insn_004065f8:
    mov byte [0x41f45c],0x1 ; 004065F8 C6055CF4410001
    %if ($ - %%insn_004065f8) > 7
        %error "LONG_004065F8"
    %endif
    times 7 - ($ - %%insn_004065f8) db 0
    %%insn_004065ff:
    movsx edx,word [ebp+0xc] ; 004065FF 0FBF550C
    %if ($ - %%insn_004065ff) > 4
        %error "LONG_004065FF"
    %endif
    times 4 - ($ - %%insn_004065ff) db 0
    %%insn_00406603:
    test edx,edx ; 00406603 85D2
    %if ($ - %%insn_00406603) > 2
        %error "LONG_00406603"
    %endif
    times 2 - ($ - %%insn_00406603) db 0
    %%insn_00406605:
    jz short 0x40666b ; 00406605 7464
    %if ($ - %%insn_00406605) > 2
        %error "LONG_00406605"
    %endif
    times 2 - ($ - %%insn_00406605) db 0
    %%insn_00406607:
    mov al,[ebp+0x8] ; 00406607 8A4508
    %if ($ - %%insn_00406607) > 3
        %error "LONG_00406607"
    %endif
    times 3 - ($ - %%insn_00406607) db 0
    %%insn_0040660a:
    push eax ; 0040660A 50
    %if ($ - %%insn_0040660a) > 1
        %error "LONG_0040660A"
    %endif
    times 1 - ($ - %%insn_0040660a) db 0
    %%insn_0040660b:
    call 0x40563c ; 0040660B E82CF0FFFF
    %if ($ - %%insn_0040660b) > 5
        %error "LONG_0040660B"
    %endif
    times 5 - ($ - %%insn_0040660b) db 0
    %%insn_00406610:
    add esp,0x4 ; 00406610 83C404
    %if ($ - %%insn_00406610) > 3
        %error "LONG_00406610"
    %endif
    times 3 - ($ - %%insn_00406610) db 0
    %%insn_00406613:
    mov word [0x41f470],0x0 ; 00406613 66C70570F441000000
    %if ($ - %%insn_00406613) > 9
        %error "LONG_00406613"
    %endif
    times 9 - ($ - %%insn_00406613) db 0
    %%insn_0040661c:
    cmp dword [ebp-0xc],0x4054b4 ; 0040661C 817DF4B4544000
    %if ($ - %%insn_0040661c) > 7
        %error "LONG_0040661C"
    %endif
    times 7 - ($ - %%insn_0040661c) db 0
    %%insn_00406623:
    jnz short 0x406643 ; 00406623 751E
    %if ($ - %%insn_00406623) > 2
        %error "LONG_00406623"
    %endif
    times 2 - ($ - %%insn_00406623) db 0
    %%insn_00406625:
    mov cl,[ebp-0x4] ; 00406625 8A4DFC
    %if ($ - %%insn_00406625) > 3
        %error "LONG_00406625"
    %endif
    times 3 - ($ - %%insn_00406625) db 0
    %%insn_00406628:
    push ecx ; 00406628 51
    %if ($ - %%insn_00406628) > 1
        %error "LONG_00406628"
    %endif
    times 1 - ($ - %%insn_00406628) db 0
    %%insn_00406629:
    mov dx,[ebp+0xc] ; 00406629 668B550C
    %if ($ - %%insn_00406629) > 4
        %error "LONG_00406629"
    %endif
    times 4 - ($ - %%insn_00406629) db 0
    %%insn_0040662d:
    push edx ; 0040662D 52
    %if ($ - %%insn_0040662d) > 1
        %error "LONG_0040662D"
    %endif
    times 1 - ($ - %%insn_0040662d) db 0
    %%insn_0040662e:
    mov al,[ebp+0x8] ; 0040662E 8A4508
    %if ($ - %%insn_0040662e) > 3
        %error "LONG_0040662E"
    %endif
    times 3 - ($ - %%insn_0040662e) db 0
    %%insn_00406631:
    push eax ; 00406631 50
    %if ($ - %%insn_00406631) > 1
        %error "LONG_00406631"
    %endif
    times 1 - ($ - %%insn_00406631) db 0
    %%insn_00406632:
    mov cl,[ebp+0x8] ; 00406632 8A4D08
    %if ($ - %%insn_00406632) > 3
        %error "LONG_00406632"
    %endif
    times 3 - ($ - %%insn_00406632) db 0
    %%insn_00406635:
    push ecx ; 00406635 51
    %if ($ - %%insn_00406635) > 1
        %error "LONG_00406635"
    %endif
    times 1 - ($ - %%insn_00406635) db 0
    %%insn_00406636:
    call 0x405cbb ; 00406636 E880F6FFFF
    %if ($ - %%insn_00406636) > 5
        %error "LONG_00406636"
    %endif
    times 5 - ($ - %%insn_00406636) db 0
    %%insn_0040663b:
    add esp,0x10 ; 0040663B 83C410
    %if ($ - %%insn_0040663b) > 3
        %error "LONG_0040663B"
    %endif
    times 3 - ($ - %%insn_0040663b) db 0
    %%insn_0040663e:
    mov [ebp-0x10],al ; 0040663E 8845F0
    %if ($ - %%insn_0040663e) > 3
        %error "LONG_0040663E"
    %endif
    times 3 - ($ - %%insn_0040663e) db 0
    %%insn_00406641:
    jmp short 0x406669 ; 00406641 EB26
    %if ($ - %%insn_00406641) > 2
        %error "LONG_00406641"
    %endif
    times 2 - ($ - %%insn_00406641) db 0
    %%insn_00406643:
    call 0x405c15 ; 00406643 E8CDF5FFFF
    %if ($ - %%insn_00406643) > 5
        %error "LONG_00406643"
    %endif
    times 5 - ($ - %%insn_00406643) db 0
    %%insn_00406648:
    mov dl,[ebp-0x4] ; 00406648 8A55FC
    %if ($ - %%insn_00406648) > 3
        %error "LONG_00406648"
    %endif
    times 3 - ($ - %%insn_00406648) db 0
    %%insn_0040664b:
    push edx ; 0040664B 52
    %if ($ - %%insn_0040664b) > 1
        %error "LONG_0040664B"
    %endif
    times 1 - ($ - %%insn_0040664b) db 0
    %%insn_0040664c:
    mov ax,[ebp+0xc] ; 0040664C 668B450C
    %if ($ - %%insn_0040664c) > 4
        %error "LONG_0040664C"
    %endif
    times 4 - ($ - %%insn_0040664c) db 0
    %%insn_00406650:
    push eax ; 00406650 50
    %if ($ - %%insn_00406650) > 1
        %error "LONG_00406650"
    %endif
    times 1 - ($ - %%insn_00406650) db 0
    %%insn_00406651:
    mov cl,[ebp+0x8] ; 00406651 8A4D08
    %if ($ - %%insn_00406651) > 3
        %error "LONG_00406651"
    %endif
    times 3 - ($ - %%insn_00406651) db 0
    %%insn_00406654:
    push ecx ; 00406654 51
    %if ($ - %%insn_00406654) > 1
        %error "LONG_00406654"
    %endif
    times 1 - ($ - %%insn_00406654) db 0
    %%insn_00406655:
    mov dl,[ebp+0x8] ; 00406655 8A5508
    %if ($ - %%insn_00406655) > 3
        %error "LONG_00406655"
    %endif
    times 3 - ($ - %%insn_00406655) db 0
    %%insn_00406658:
    push edx ; 00406658 52
    %if ($ - %%insn_00406658) > 1
        %error "LONG_00406658"
    %endif
    times 1 - ($ - %%insn_00406658) db 0
    %%insn_00406659:
    call 0x405cbb ; 00406659 E85DF6FFFF
    %if ($ - %%insn_00406659) > 5
        %error "LONG_00406659"
    %endif
    times 5 - ($ - %%insn_00406659) db 0
    %%insn_0040665e:
    add esp,0x10 ; 0040665E 83C410
    %if ($ - %%insn_0040665e) > 3
        %error "LONG_0040665E"
    %endif
    times 3 - ($ - %%insn_0040665e) db 0
    %%insn_00406661:
    mov [ebp-0x10],al ; 00406661 8845F0
    %if ($ - %%insn_00406661) > 3
        %error "LONG_00406661"
    %endif
    times 3 - ($ - %%insn_00406661) db 0
    %%insn_00406664:
    call 0x405c68 ; 00406664 E8FFF5FFFF
    %if ($ - %%insn_00406664) > 5
        %error "LONG_00406664"
    %endif
    times 5 - ($ - %%insn_00406664) db 0
    %%insn_00406669:
    jmp short 0x40667e ; 00406669 EB13
    %if ($ - %%insn_00406669) > 2
        %error "LONG_00406669"
    %endif
    times 2 - ($ - %%insn_00406669) db 0
    %%insn_0040666b:
    mov al,[ebp+0x8] ; 0040666B 8A4508
    %if ($ - %%insn_0040666b) > 3
        %error "LONG_0040666B"
    %endif
    times 3 - ($ - %%insn_0040666b) db 0
    %%insn_0040666e:
    push eax ; 0040666E 50
    %if ($ - %%insn_0040666e) > 1
        %error "LONG_0040666E"
    %endif
    times 1 - ($ - %%insn_0040666e) db 0
    %%insn_0040666f:
    mov cl,[ebp+0x8] ; 0040666F 8A4D08
    %if ($ - %%insn_0040666f) > 3
        %error "LONG_0040666F"
    %endif
    times 3 - ($ - %%insn_0040666f) db 0
    %%insn_00406672:
    push ecx ; 00406672 51
    %if ($ - %%insn_00406672) > 1
        %error "LONG_00406672"
    %endif
    times 1 - ($ - %%insn_00406672) db 0
    %%insn_00406673:
    call 0x4056b2 ; 00406673 E83AF0FFFF
    %if ($ - %%insn_00406673) > 5
        %error "LONG_00406673"
    %endif
    times 5 - ($ - %%insn_00406673) db 0
    %%insn_00406678:
    add esp,0x8 ; 00406678 83C408
    %if ($ - %%insn_00406678) > 3
        %error "LONG_00406678"
    %endif
    times 3 - ($ - %%insn_00406678) db 0
    %%insn_0040667b:
    mov [ebp-0x10],al ; 0040667B 8845F0
    %if ($ - %%insn_0040667b) > 3
        %error "LONG_0040667B"
    %endif
    times 3 - ($ - %%insn_0040667b) db 0
    %%insn_0040667e:
    mov dl,[ebp-0x10] ; 0040667E 8A55F0
    %if ($ - %%insn_0040667e) > 3
        %error "LONG_0040667E"
    %endif
    times 3 - ($ - %%insn_0040667e) db 0
    %%insn_00406681:
    push edx ; 00406681 52
    %if ($ - %%insn_00406681) > 1
        %error "LONG_00406681"
    %endif
    times 1 - ($ - %%insn_00406681) db 0
    %%insn_00406682:
    call 0x406324 ; 00406682 E89DFCFFFF
    %if ($ - %%insn_00406682) > 5
        %error "LONG_00406682"
    %endif
    times 5 - ($ - %%insn_00406682) db 0
    %%insn_00406687:
    add esp,0x4 ; 00406687 83C404
    %if ($ - %%insn_00406687) > 3
        %error "LONG_00406687"
    %endif
    times 3 - ($ - %%insn_00406687) db 0
    %%insn_0040668a:
    movsx eax,byte [ebp-0x10] ; 0040668A 0FBE45F0
    %if ($ - %%insn_0040668a) > 4
        %error "LONG_0040668A"
    %endif
    times 4 - ($ - %%insn_0040668a) db 0
    %%insn_0040668e:
    movsx ecx,byte [ebp-0x4] ; 0040668E 0FBE4DFC
    %if ($ - %%insn_0040668e) > 4
        %error "LONG_0040668E"
    %endif
    times 4 - ($ - %%insn_0040668e) db 0
    db 0x3B, 0xC1 ; 00406692 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00406694:
    jng short 0x40669c ; 00406694 7E06
    %if ($ - %%insn_00406694) > 2
        %error "LONG_00406694"
    %endif
    times 2 - ($ - %%insn_00406694) db 0
    %%insn_00406696:
    mov dl,[ebp-0x10] ; 00406696 8A55F0
    %if ($ - %%insn_00406696) > 3
        %error "LONG_00406696"
    %endif
    times 3 - ($ - %%insn_00406696) db 0
    %%insn_00406699:
    mov [ebp-0x4],dl ; 00406699 8855FC
    %if ($ - %%insn_00406699) > 3
        %error "LONG_00406699"
    %endif
    times 3 - ($ - %%insn_00406699) db 0
    %%insn_0040669c:
    jmp 0x4065c0 ; 0040669C E91FFFFFFF
    %if ($ - %%insn_0040669c) > 5
        %error "LONG_0040669C"
    %endif
    times 5 - ($ - %%insn_0040669c) db 0
    %%insn_004066a1:
    mov ax,0x1 ; 004066A1 66B80100
    %if ($ - %%insn_004066a1) > 4
        %error "LONG_004066A1"
    %endif
    times 4 - ($ - %%insn_004066a1) db 0
    db 0x8B, 0xE5 ; 004066A5 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004066a7:
    pop ebp ; 004066A7 5D
    %if ($ - %%insn_004066a7) > 1
        %error "LONG_004066A7"
    %endif
    times 1 - ($ - %%insn_004066a7) db 0
    %%insn_004066a8:
    ret ; 004066A8 C3
    %if ($ - %%insn_004066a8) > 1
        %error "LONG_004066A8"
    %endif
    times 1 - ($ - %%insn_004066a8) db 0
    %if ($ - %%fragment_start) != 642
        %error "function fragment size drift: 00406427"
    %endif
%endmacro
