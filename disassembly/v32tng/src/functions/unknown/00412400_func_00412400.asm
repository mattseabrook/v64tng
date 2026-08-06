; PE virtual entry 00412400
; Ghidra working symbol: FUN_00412400
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412400_part_00 0
    %%fragment_start:
func_00412400:
    %%insn_00412400:
    sub esp,0x14 ; 00412400 83EC14
    %if ($ - %%insn_00412400) > 3
        %error "LONG_00412400"
    %endif
    times 3 - ($ - %%insn_00412400) db 0
    %%insn_00412403:
    push ebx ; 00412403 53
    %if ($ - %%insn_00412403) > 1
        %error "LONG_00412403"
    %endif
    times 1 - ($ - %%insn_00412403) db 0
    %%insn_00412404:
    push ebp ; 00412404 55
    %if ($ - %%insn_00412404) > 1
        %error "LONG_00412404"
    %endif
    times 1 - ($ - %%insn_00412404) db 0
    %%insn_00412405:
    push esi ; 00412405 56
    %if ($ - %%insn_00412405) > 1
        %error "LONG_00412405"
    %endif
    times 1 - ($ - %%insn_00412405) db 0
    %%insn_00412406:
    push edi ; 00412406 57
    %if ($ - %%insn_00412406) > 1
        %error "LONG_00412406"
    %endif
    times 1 - ($ - %%insn_00412406) db 0
    %%insn_00412407:
    push dword 0x19 ; 00412407 6A19
    %if ($ - %%insn_00412407) > 2
        %error "LONG_00412407"
    %endif
    times 2 - ($ - %%insn_00412407) db 0
    %%insn_00412409:
    call 0x40df00 ; 00412409 E8F2BAFFFF
    %if ($ - %%insn_00412409) > 5
        %error "LONG_00412409"
    %endif
    times 5 - ($ - %%insn_00412409) db 0
    %%insn_0041240e:
    mov eax,[esp+0x2c] ; 0041240E 8B44242C
    %if ($ - %%insn_0041240e) > 4
        %error "LONG_0041240E"
    %endif
    times 4 - ($ - %%insn_0041240e) db 0
    %%insn_00412412:
    add esp,0x4 ; 00412412 83C404
    %if ($ - %%insn_00412412) > 3
        %error "LONG_00412412"
    %endif
    times 3 - ($ - %%insn_00412412) db 0
    %%insn_00412415:
    push eax ; 00412415 50
    %if ($ - %%insn_00412415) > 1
        %error "LONG_00412415"
    %endif
    times 1 - ($ - %%insn_00412415) db 0
    %%insn_00412416:
    call 0x412620 ; 00412416 E805020000
    %if ($ - %%insn_00412416) > 5
        %error "LONG_00412416"
    %endif
    times 5 - ($ - %%insn_00412416) db 0
    db 0x8B, 0xE8 ; 0041241B 8BE8 | mov ebp,eax | encoding preserved
    %%insn_0041241d:
    mov eax,[0x421154] ; 0041241D A154114200
    %if ($ - %%insn_0041241d) > 5
        %error "LONG_0041241D"
    %endif
    times 5 - ($ - %%insn_0041241d) db 0
    %%insn_00412422:
    add esp,0x4 ; 00412422 83C404
    %if ($ - %%insn_00412422) > 3
        %error "LONG_00412422"
    %endif
    times 3 - ($ - %%insn_00412422) db 0
    db 0x3B, 0xE8 ; 00412425 3BE8 | cmp ebp,eax | encoding preserved
    %%insn_00412427:
    mov [esp+0x28],ebp ; 00412427 896C2428
    %if ($ - %%insn_00412427) > 4
        %error "LONG_00412427"
    %endif
    times 4 - ($ - %%insn_00412427) db 0
    %%insn_0041242b:
    jnz short 0x412441 ; 0041242B 7514
    %if ($ - %%insn_0041242b) > 2
        %error "LONG_0041242B"
    %endif
    times 2 - ($ - %%insn_0041242b) db 0
    %%insn_0041242d:
    push dword 0x19 ; 0041242D 6A19
    %if ($ - %%insn_0041242d) > 2
        %error "LONG_0041242D"
    %endif
    times 2 - ($ - %%insn_0041242d) db 0
    %%insn_0041242f:
    call 0x40df80 ; 0041242F E84CBBFFFF
    %if ($ - %%insn_0041242f) > 5
        %error "LONG_0041242F"
    %endif
    times 5 - ($ - %%insn_0041242f) db 0
    %%insn_00412434:
    add esp,0x4 ; 00412434 83C404
    %if ($ - %%insn_00412434) > 3
        %error "LONG_00412434"
    %endif
    times 3 - ($ - %%insn_00412434) db 0
    db 0x33, 0xC0 ; 00412437 33C0 | xor eax,eax | encoding preserved
    %%insn_00412439:
    pop edi ; 00412439 5F
    %if ($ - %%insn_00412439) > 1
        %error "LONG_00412439"
    %endif
    times 1 - ($ - %%insn_00412439) db 0
    %%insn_0041243a:
    pop esi ; 0041243A 5E
    %if ($ - %%insn_0041243a) > 1
        %error "LONG_0041243A"
    %endif
    times 1 - ($ - %%insn_0041243a) db 0
    %%insn_0041243b:
    pop ebp ; 0041243B 5D
    %if ($ - %%insn_0041243b) > 1
        %error "LONG_0041243B"
    %endif
    times 1 - ($ - %%insn_0041243b) db 0
    %%insn_0041243c:
    pop ebx ; 0041243C 5B
    %if ($ - %%insn_0041243c) > 1
        %error "LONG_0041243C"
    %endif
    times 1 - ($ - %%insn_0041243c) db 0
    %%insn_0041243d:
    add esp,0x14 ; 0041243D 83C414
    %if ($ - %%insn_0041243d) > 3
        %error "LONG_0041243D"
    %endif
    times 3 - ($ - %%insn_0041243d) db 0
    %%insn_00412440:
    ret ; 00412440 C3
    %if ($ - %%insn_00412440) > 1
        %error "LONG_00412440"
    %endif
    times 1 - ($ - %%insn_00412440) db 0
    db 0x33, 0xF6 ; 00412441 33F6 | xor esi,esi | encoding preserved
    db 0x3B, 0xEE ; 00412443 3BEE | cmp ebp,esi | encoding preserved
    %%insn_00412445:
    jz 0x41253d ; 00412445 0F84F2000000
    %if ($ - %%insn_00412445) > 6
        %error "LONG_00412445"
    %endif
    times 6 - ($ - %%insn_00412445) db 0
    db 0x33, 0xD2 ; 0041244B 33D2 | xor edx,edx | encoding preserved
    %%insn_0041244d:
    mov eax,0x41e220 ; 0041244D B820E24100
    %if ($ - %%insn_0041244d) > 5
        %error "LONG_0041244D"
    %endif
    times 5 - ($ - %%insn_0041244d) db 0
    %%insn_00412452:
    cmp [eax],ebp ; 00412452 3928
    %if ($ - %%insn_00412452) > 2
        %error "LONG_00412452"
    %endif
    times 2 - ($ - %%insn_00412452) db 0
    %%insn_00412454:
    jz 0x41256b ; 00412454 0F8411010000
    %if ($ - %%insn_00412454) > 6
        %error "LONG_00412454"
    %endif
    times 6 - ($ - %%insn_00412454) db 0
    %%insn_0041245a:
    add eax,0x30 ; 0041245A 83C030
    %if ($ - %%insn_0041245a) > 3
        %error "LONG_0041245A"
    %endif
    times 3 - ($ - %%insn_0041245a) db 0
    %%insn_0041245d:
    inc edx ; 0041245D 42
    %if ($ - %%insn_0041245d) > 1
        %error "LONG_0041245D"
    %endif
    times 1 - ($ - %%insn_0041245d) db 0
    %%insn_0041245e:
    cmp eax,0x41e310 ; 0041245E 3D10E34100
    %if ($ - %%insn_0041245e) > 5
        %error "LONG_0041245E"
    %endif
    times 5 - ($ - %%insn_0041245e) db 0
    %%insn_00412463:
    jc short 0x412452 ; 00412463 72ED
    %if ($ - %%insn_00412463) > 2
        %error "LONG_00412463"
    %endif
    times 2 - ($ - %%insn_00412463) db 0
    %%insn_00412465:
    lea ecx,[esp+0x10] ; 00412465 8D4C2410
    %if ($ - %%insn_00412465) > 4
        %error "LONG_00412465"
    %endif
    times 4 - ($ - %%insn_00412465) db 0
    %%insn_00412469:
    push ecx ; 00412469 51
    %if ($ - %%insn_00412469) > 1
        %error "LONG_00412469"
    %endif
    times 1 - ($ - %%insn_00412469) db 0
    %%insn_0041246a:
    push ebp ; 0041246A 55
    %if ($ - %%insn_0041246a) > 1
        %error "LONG_0041246A"
    %endif
    times 1 - ($ - %%insn_0041246a) db 0
    %%insn_0041246b:
    call dword near [0x4244e0] ; 0041246B FF15E0444200
    %if ($ - %%insn_0041246b) > 6
        %error "LONG_0041246B"
    %endif
    times 6 - ($ - %%insn_0041246b) db 0
    %%insn_00412471:
    cmp eax,0x1 ; 00412471 83F801
    %if ($ - %%insn_00412471) > 3
        %error "LONG_00412471"
    %endif
    times 3 - ($ - %%insn_00412471) db 0
    %%insn_00412474:
    jnz 0x412535 ; 00412474 0F85BB000000
    %if ($ - %%insn_00412474) > 6
        %error "LONG_00412474"
    %endif
    times 6 - ($ - %%insn_00412474) db 0
    %%insn_0041247a:
    mov ecx,0x40 ; 0041247A B940000000
    %if ($ - %%insn_0041247a) > 5
        %error "LONG_0041247A"
    %endif
    times 5 - ($ - %%insn_0041247a) db 0
    db 0x33, 0xC0 ; 0041247F 33C0 | xor eax,eax | encoding preserved
    %%insn_00412481:
    mov edi,0x421050 ; 00412481 BF50104200
    %if ($ - %%insn_00412481) > 5
        %error "LONG_00412481"
    %endif
    times 5 - ($ - %%insn_00412481) db 0
    %%insn_00412486:
    rep stosd ; 00412486 F3AB
    %if ($ - %%insn_00412486) > 2
        %error "LONG_00412486"
    %endif
    times 2 - ($ - %%insn_00412486) db 0
    %%insn_00412488:
    stosb ; 00412488 AA
    %if ($ - %%insn_00412488) > 1
        %error "LONG_00412488"
    %endif
    times 1 - ($ - %%insn_00412488) db 0
    %%insn_00412489:
    cmp dword [esp+0x10],0x1 ; 00412489 837C241001
    %if ($ - %%insn_00412489) > 5
        %error "LONG_00412489"
    %endif
    times 5 - ($ - %%insn_00412489) db 0
    %%insn_0041248e:
    jna short 0x412501 ; 0041248E 7671
    %if ($ - %%insn_0041248e) > 2
        %error "LONG_0041248E"
    %endif
    times 2 - ($ - %%insn_0041248e) db 0
    %%insn_00412490:
    mov al,[esp+0x16] ; 00412490 8A442416
    %if ($ - %%insn_00412490) > 4
        %error "LONG_00412490"
    %endif
    times 4 - ($ - %%insn_00412490) db 0
    %%insn_00412494:
    test al,al ; 00412494 84C0
    %if ($ - %%insn_00412494) > 2
        %error "LONG_00412494"
    %endif
    times 2 - ($ - %%insn_00412494) db 0
    %%insn_00412496:
    jz short 0x4124cf ; 00412496 7437
    %if ($ - %%insn_00412496) > 2
        %error "LONG_00412496"
    %endif
    times 2 - ($ - %%insn_00412496) db 0
    %%insn_00412498:
    lea edx,[esp+0x17] ; 00412498 8D542417
    %if ($ - %%insn_00412498) > 4
        %error "LONG_00412498"
    %endif
    times 4 - ($ - %%insn_00412498) db 0
    %%insn_0041249c:
    mov cl,[edx] ; 0041249C 8A0A
    %if ($ - %%insn_0041249c) > 2
        %error "LONG_0041249C"
    %endif
    times 2 - ($ - %%insn_0041249c) db 0
    %%insn_0041249e:
    test cl,cl ; 0041249E 84C9
    %if ($ - %%insn_0041249e) > 2
        %error "LONG_0041249E"
    %endif
    times 2 - ($ - %%insn_0041249e) db 0
    %%insn_004124a0:
    jz short 0x4124cf ; 004124A0 742D
    %if ($ - %%insn_004124a0) > 2
        %error "LONG_004124A0"
    %endif
    times 2 - ($ - %%insn_004124a0) db 0
    db 0x33, 0xC0 ; 004124A2 33C0 | xor eax,eax | encoding preserved
    %%insn_004124a4:
    and ecx,0xff ; 004124A4 81E1FF000000
    %if ($ - %%insn_004124a4) > 6
        %error "LONG_004124A4"
    %endif
    times 6 - ($ - %%insn_004124a4) db 0
    %%insn_004124aa:
    mov al,[edx-0x1] ; 004124AA 8A42FF
    %if ($ - %%insn_004124aa) > 3
        %error "LONG_004124AA"
    %endif
    times 3 - ($ - %%insn_004124aa) db 0
    db 0x3B, 0xC1 ; 004124AD 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004124af:
    ja short 0x4124c5 ; 004124AF 7714
    %if ($ - %%insn_004124af) > 2
        %error "LONG_004124AF"
    %endif
    times 2 - ($ - %%insn_004124af) db 0
    %%insn_004124b1:
    mov bl,[eax+0x421051] ; 004124B1 8A9851104200
    %if ($ - %%insn_004124b1) > 6
        %error "LONG_004124B1"
    %endif
    times 6 - ($ - %%insn_004124b1) db 0
    %%insn_004124b7:
    or bl,0x4 ; 004124B7 80CB04
    %if ($ - %%insn_004124b7) > 3
        %error "LONG_004124B7"
    %endif
    times 3 - ($ - %%insn_004124b7) db 0
    %%insn_004124ba:
    mov [eax+0x421051],bl ; 004124BA 889851104200
    %if ($ - %%insn_004124ba) > 6
        %error "LONG_004124BA"
    %endif
    times 6 - ($ - %%insn_004124ba) db 0
    %%insn_004124c0:
    inc eax ; 004124C0 40
    %if ($ - %%insn_004124c0) > 1
        %error "LONG_004124C0"
    %endif
    times 1 - ($ - %%insn_004124c0) db 0
    db 0x3B, 0xC1 ; 004124C1 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004124c3:
    jna short 0x4124b1 ; 004124C3 76EC
    %if ($ - %%insn_004124c3) > 2
        %error "LONG_004124C3"
    %endif
    times 2 - ($ - %%insn_004124c3) db 0
    %%insn_004124c5:
    mov al,[edx+0x1] ; 004124C5 8A4201
    %if ($ - %%insn_004124c5) > 3
        %error "LONG_004124C5"
    %endif
    times 3 - ($ - %%insn_004124c5) db 0
    %%insn_004124c8:
    add edx,0x2 ; 004124C8 83C202
    %if ($ - %%insn_004124c8) > 3
        %error "LONG_004124C8"
    %endif
    times 3 - ($ - %%insn_004124c8) db 0
    %%insn_004124cb:
    test al,al ; 004124CB 84C0
    %if ($ - %%insn_004124cb) > 2
        %error "LONG_004124CB"
    %endif
    times 2 - ($ - %%insn_004124cb) db 0
    %%insn_004124cd:
    jnz short 0x41249c ; 004124CD 75CD
    %if ($ - %%insn_004124cd) > 2
        %error "LONG_004124CD"
    %endif
    times 2 - ($ - %%insn_004124cd) db 0
    %%insn_004124cf:
    mov eax,0x1 ; 004124CF B801000000
    %if ($ - %%insn_004124cf) > 5
        %error "LONG_004124CF"
    %endif
    times 5 - ($ - %%insn_004124cf) db 0
    %%insn_004124d4:
    mov bl,[eax+0x421051] ; 004124D4 8A9851104200
    %if ($ - %%insn_004124d4) > 6
        %error "LONG_004124D4"
    %endif
    times 6 - ($ - %%insn_004124d4) db 0
    %%insn_004124da:
    or bl,0x8 ; 004124DA 80CB08
    %if ($ - %%insn_004124da) > 3
        %error "LONG_004124DA"
    %endif
    times 3 - ($ - %%insn_004124da) db 0
    %%insn_004124dd:
    mov [eax+0x421051],bl ; 004124DD 889851104200
    %if ($ - %%insn_004124dd) > 6
        %error "LONG_004124DD"
    %endif
    times 6 - ($ - %%insn_004124dd) db 0
    %%insn_004124e3:
    inc eax ; 004124E3 40
    %if ($ - %%insn_004124e3) > 1
        %error "LONG_004124E3"
    %endif
    times 1 - ($ - %%insn_004124e3) db 0
    %%insn_004124e4:
    cmp eax,0xff ; 004124E4 3DFF000000
    %if ($ - %%insn_004124e4) > 5
        %error "LONG_004124E4"
    %endif
    times 5 - ($ - %%insn_004124e4) db 0
    %%insn_004124e9:
    jc short 0x4124d4 ; 004124E9 72E9
    %if ($ - %%insn_004124e9) > 2
        %error "LONG_004124E9"
    %endif
    times 2 - ($ - %%insn_004124e9) db 0
    %%insn_004124eb:
    push ebp ; 004124EB 55
    %if ($ - %%insn_004124eb) > 1
        %error "LONG_004124EB"
    %endif
    times 1 - ($ - %%insn_004124eb) db 0
    %%insn_004124ec:
    mov [0x421154],ebp ; 004124EC 892D54114200
    %if ($ - %%insn_004124ec) > 6
        %error "LONG_004124EC"
    %endif
    times 6 - ($ - %%insn_004124ec) db 0
    %%insn_004124f2:
    call 0x412670 ; 004124F2 E879010000
    %if ($ - %%insn_004124f2) > 5
        %error "LONG_004124F2"
    %endif
    times 5 - ($ - %%insn_004124f2) db 0
    %%insn_004124f7:
    add esp,0x4 ; 004124F7 83C404
    %if ($ - %%insn_004124f7) > 3
        %error "LONG_004124F7"
    %endif
    times 3 - ($ - %%insn_004124f7) db 0
    %%insn_004124fa:
    mov [0x421158],eax ; 004124FA A358114200
    %if ($ - %%insn_004124fa) > 5
        %error "LONG_004124FA"
    %endif
    times 5 - ($ - %%insn_004124fa) db 0
    %%insn_004124ff:
    jmp short 0x41250d ; 004124FF EB0C
    %if ($ - %%insn_004124ff) > 2
        %error "LONG_004124FF"
    %endif
    times 2 - ($ - %%insn_004124ff) db 0
    %%insn_00412501:
    mov [0x421154],esi ; 00412501 893554114200
    %if ($ - %%insn_00412501) > 6
        %error "LONG_00412501"
    %endif
    times 6 - ($ - %%insn_00412501) db 0
    %%insn_00412507:
    mov [0x421158],esi ; 00412507 893558114200
    %if ($ - %%insn_00412507) > 6
        %error "LONG_00412507"
    %endif
    times 6 - ($ - %%insn_00412507) db 0
    db 0x33, 0xD2 ; 0041250D 33D2 | xor edx,edx | encoding preserved
    %%insn_0041250f:
    push dword 0x19 ; 0041250F 6A19
    %if ($ - %%insn_0041250f) > 2
        %error "LONG_0041250F"
    %endif
    times 2 - ($ - %%insn_0041250f) db 0
    %%insn_00412511:
    mov [0x421160],edx ; 00412511 891560114200
    %if ($ - %%insn_00412511) > 6
        %error "LONG_00412511"
    %endif
    times 6 - ($ - %%insn_00412511) db 0
    %%insn_00412517:
    mov [0x421164],edx ; 00412517 891564114200
    %if ($ - %%insn_00412517) > 6
        %error "LONG_00412517"
    %endif
    times 6 - ($ - %%insn_00412517) db 0
    %%insn_0041251d:
    mov [0x421168],edx ; 0041251D 891568114200
    %if ($ - %%insn_0041251d) > 6
        %error "LONG_0041251D"
    %endif
    times 6 - ($ - %%insn_0041251d) db 0
    %%insn_00412523:
    call 0x40df80 ; 00412523 E858BAFFFF
    %if ($ - %%insn_00412523) > 5
        %error "LONG_00412523"
    %endif
    times 5 - ($ - %%insn_00412523) db 0
    %%insn_00412528:
    add esp,0x4 ; 00412528 83C404
    %if ($ - %%insn_00412528) > 3
        %error "LONG_00412528"
    %endif
    times 3 - ($ - %%insn_00412528) db 0
    db 0x33, 0xC0 ; 0041252B 33C0 | xor eax,eax | encoding preserved
    %%insn_0041252d:
    pop edi ; 0041252D 5F
    %if ($ - %%insn_0041252d) > 1
        %error "LONG_0041252D"
    %endif
    times 1 - ($ - %%insn_0041252d) db 0
    %%insn_0041252e:
    pop esi ; 0041252E 5E
    %if ($ - %%insn_0041252e) > 1
        %error "LONG_0041252E"
    %endif
    times 1 - ($ - %%insn_0041252e) db 0
    %%insn_0041252f:
    pop ebp ; 0041252F 5D
    %if ($ - %%insn_0041252f) > 1
        %error "LONG_0041252F"
    %endif
    times 1 - ($ - %%insn_0041252f) db 0
    %%insn_00412530:
    pop ebx ; 00412530 5B
    %if ($ - %%insn_00412530) > 1
        %error "LONG_00412530"
    %endif
    times 1 - ($ - %%insn_00412530) db 0
    %%insn_00412531:
    add esp,0x14 ; 00412531 83C414
    %if ($ - %%insn_00412531) > 3
        %error "LONG_00412531"
    %endif
    times 3 - ($ - %%insn_00412531) db 0
    %%insn_00412534:
    ret ; 00412534 C3
    %if ($ - %%insn_00412534) > 1
        %error "LONG_00412534"
    %endif
    times 1 - ($ - %%insn_00412534) db 0
    %%insn_00412535:
    cmp [0x42116c],esi ; 00412535 39356C114200
    %if ($ - %%insn_00412535) > 6
        %error "LONG_00412535"
    %endif
    times 6 - ($ - %%insn_00412535) db 0
    %%insn_0041253b:
    jz short 0x412556 ; 0041253B 7419
    %if ($ - %%insn_0041253b) > 2
        %error "LONG_0041253B"
    %endif
    times 2 - ($ - %%insn_0041253b) db 0
    %%insn_0041253d:
    call 0x4126d0 ; 0041253D E88E010000
    %if ($ - %%insn_0041253d) > 5
        %error "LONG_0041253D"
    %endif
    times 5 - ($ - %%insn_0041253d) db 0
    %%insn_00412542:
    push dword 0x19 ; 00412542 6A19
    %if ($ - %%insn_00412542) > 2
        %error "LONG_00412542"
    %endif
    times 2 - ($ - %%insn_00412542) db 0
    %%insn_00412544:
    call 0x40df80 ; 00412544 E837BAFFFF
    %if ($ - %%insn_00412544) > 5
        %error "LONG_00412544"
    %endif
    times 5 - ($ - %%insn_00412544) db 0
    %%insn_00412549:
    add esp,0x4 ; 00412549 83C404
    %if ($ - %%insn_00412549) > 3
        %error "LONG_00412549"
    %endif
    times 3 - ($ - %%insn_00412549) db 0
    db 0x33, 0xC0 ; 0041254C 33C0 | xor eax,eax | encoding preserved
    %%insn_0041254e:
    pop edi ; 0041254E 5F
    %if ($ - %%insn_0041254e) > 1
        %error "LONG_0041254E"
    %endif
    times 1 - ($ - %%insn_0041254e) db 0
    %%insn_0041254f:
    pop esi ; 0041254F 5E
    %if ($ - %%insn_0041254f) > 1
        %error "LONG_0041254F"
    %endif
    times 1 - ($ - %%insn_0041254f) db 0
    %%insn_00412550:
    pop ebp ; 00412550 5D
    %if ($ - %%insn_00412550) > 1
        %error "LONG_00412550"
    %endif
    times 1 - ($ - %%insn_00412550) db 0
    %%insn_00412551:
    pop ebx ; 00412551 5B
    %if ($ - %%insn_00412551) > 1
        %error "LONG_00412551"
    %endif
    times 1 - ($ - %%insn_00412551) db 0
    %%insn_00412552:
    add esp,0x14 ; 00412552 83C414
    %if ($ - %%insn_00412552) > 3
        %error "LONG_00412552"
    %endif
    times 3 - ($ - %%insn_00412552) db 0
    %%insn_00412555:
    ret ; 00412555 C3
    %if ($ - %%insn_00412555) > 1
        %error "LONG_00412555"
    %endif
    times 1 - ($ - %%insn_00412555) db 0
    %%insn_00412556:
    push dword 0x19 ; 00412556 6A19
    %if ($ - %%insn_00412556) > 2
        %error "LONG_00412556"
    %endif
    times 2 - ($ - %%insn_00412556) db 0
    %%insn_00412558:
    call 0x40df80 ; 00412558 E823BAFFFF
    %if ($ - %%insn_00412558) > 5
        %error "LONG_00412558"
    %endif
    times 5 - ($ - %%insn_00412558) db 0
    %%insn_0041255d:
    add esp,0x4 ; 0041255D 83C404
    %if ($ - %%insn_0041255d) > 3
        %error "LONG_0041255D"
    %endif
    times 3 - ($ - %%insn_0041255d) db 0
    %%insn_00412560:
    or eax,0xffffffffffffffff ; 00412560 83C8FF
    %if ($ - %%insn_00412560) > 3
        %error "LONG_00412560"
    %endif
    times 3 - ($ - %%insn_00412560) db 0
    %%insn_00412563:
    pop edi ; 00412563 5F
    %if ($ - %%insn_00412563) > 1
        %error "LONG_00412563"
    %endif
    times 1 - ($ - %%insn_00412563) db 0
    %%insn_00412564:
    pop esi ; 00412564 5E
    %if ($ - %%insn_00412564) > 1
        %error "LONG_00412564"
    %endif
    times 1 - ($ - %%insn_00412564) db 0
    %%insn_00412565:
    pop ebp ; 00412565 5D
    %if ($ - %%insn_00412565) > 1
        %error "LONG_00412565"
    %endif
    times 1 - ($ - %%insn_00412565) db 0
    %%insn_00412566:
    pop ebx ; 00412566 5B
    %if ($ - %%insn_00412566) > 1
        %error "LONG_00412566"
    %endif
    times 1 - ($ - %%insn_00412566) db 0
    %%insn_00412567:
    add esp,0x14 ; 00412567 83C414
    %if ($ - %%insn_00412567) > 3
        %error "LONG_00412567"
    %endif
    times 3 - ($ - %%insn_00412567) db 0
    %%insn_0041256a:
    ret ; 0041256A C3
    %if ($ - %%insn_0041256a) > 1
        %error "LONG_0041256A"
    %endif
    times 1 - ($ - %%insn_0041256a) db 0
    %%insn_0041256b:
    mov ecx,0x40 ; 0041256B B940000000
    %if ($ - %%insn_0041256b) > 5
        %error "LONG_0041256B"
    %endif
    times 5 - ($ - %%insn_0041256b) db 0
    db 0x33, 0xC0 ; 00412570 33C0 | xor eax,eax | encoding preserved
    %%insn_00412572:
    mov edi,0x421050 ; 00412572 BF50104200
    %if ($ - %%insn_00412572) > 5
        %error "LONG_00412572"
    %endif
    times 5 - ($ - %%insn_00412572) db 0
    %%insn_00412577:
    lea ebx,[edx+edx*2] ; 00412577 8D1C52
    %if ($ - %%insn_00412577) > 3
        %error "LONG_00412577"
    %endif
    times 3 - ($ - %%insn_00412577) db 0
    %%insn_0041257a:
    rep stosd ; 0041257A F3AB
    %if ($ - %%insn_0041257a) > 2
        %error "LONG_0041257A"
    %endif
    times 2 - ($ - %%insn_0041257a) db 0
    %%insn_0041257c:
    stosb ; 0041257C AA
    %if ($ - %%insn_0041257c) > 1
        %error "LONG_0041257C"
    %endif
    times 1 - ($ - %%insn_0041257c) db 0
    db 0x33, 0xFF ; 0041257D 33FF | xor edi,edi | encoding preserved
    %%insn_0041257f:
    shl ebx,byte 0x4 ; 0041257F C1E304
    %if ($ - %%insn_0041257f) > 3
        %error "LONG_0041257F"
    %endif
    times 3 - ($ - %%insn_0041257f) db 0
    %%insn_00412582:
    lea ebp,[ebx+0x41e230] ; 00412582 8DAB30E24100
    %if ($ - %%insn_00412582) > 6
        %error "LONG_00412582"
    %endif
    times 6 - ($ - %%insn_00412582) db 0
    %%insn_00412588:
    mov al,[ebp+0x0] ; 00412588 8A4500
    %if ($ - %%insn_00412588) > 3
        %error "LONG_00412588"
    %endif
    times 3 - ($ - %%insn_00412588) db 0
    db 0x8B, 0xF5 ; 0041258B 8BF5 | mov esi,ebp | encoding preserved
    %%insn_0041258d:
    test al,al ; 0041258D 84C0
    %if ($ - %%insn_0041258d) > 2
        %error "LONG_0041258D"
    %endif
    times 2 - ($ - %%insn_0041258d) db 0
    %%insn_0041258f:
    jz short 0x4125c1 ; 0041258F 7430
    %if ($ - %%insn_0041258f) > 2
        %error "LONG_0041258F"
    %endif
    times 2 - ($ - %%insn_0041258f) db 0
    %%insn_00412591:
    mov cl,[esi+0x1] ; 00412591 8A4E01
    %if ($ - %%insn_00412591) > 3
        %error "LONG_00412591"
    %endif
    times 3 - ($ - %%insn_00412591) db 0
    %%insn_00412594:
    test cl,cl ; 00412594 84C9
    %if ($ - %%insn_00412594) > 2
        %error "LONG_00412594"
    %endif
    times 2 - ($ - %%insn_00412594) db 0
    %%insn_00412596:
    jz short 0x4125c1 ; 00412596 7429
    %if ($ - %%insn_00412596) > 2
        %error "LONG_00412596"
    %endif
    times 2 - ($ - %%insn_00412596) db 0
    db 0x33, 0xC0 ; 00412598 33C0 | xor eax,eax | encoding preserved
    %%insn_0041259a:
    and ecx,0xff ; 0041259A 81E1FF000000
    %if ($ - %%insn_0041259a) > 6
        %error "LONG_0041259A"
    %endif
    times 6 - ($ - %%insn_0041259a) db 0
    %%insn_004125a0:
    mov al,[esi] ; 004125A0 8A06
    %if ($ - %%insn_004125a0) > 2
        %error "LONG_004125A0"
    %endif
    times 2 - ($ - %%insn_004125a0) db 0
    db 0x3B, 0xC1 ; 004125A2 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004125a4:
    ja short 0x4125b7 ; 004125A4 7711
    %if ($ - %%insn_004125a4) > 2
        %error "LONG_004125A4"
    %endif
    times 2 - ($ - %%insn_004125a4) db 0
    %%insn_004125a6:
    mov dl,[edi+0x41e218] ; 004125A6 8A9718E24100
    %if ($ - %%insn_004125a6) > 6
        %error "LONG_004125A6"
    %endif
    times 6 - ($ - %%insn_004125a6) db 0
    %%insn_004125ac:
    or [eax+0x421051],dl ; 004125AC 089051104200
    %if ($ - %%insn_004125ac) > 6
        %error "LONG_004125AC"
    %endif
    times 6 - ($ - %%insn_004125ac) db 0
    %%insn_004125b2:
    inc eax ; 004125B2 40
    %if ($ - %%insn_004125b2) > 1
        %error "LONG_004125B2"
    %endif
    times 1 - ($ - %%insn_004125b2) db 0
    db 0x3B, 0xC1 ; 004125B3 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004125b5:
    jna short 0x4125ac ; 004125B5 76F5
    %if ($ - %%insn_004125b5) > 2
        %error "LONG_004125B5"
    %endif
    times 2 - ($ - %%insn_004125b5) db 0
    %%insn_004125b7:
    mov al,[esi+0x2] ; 004125B7 8A4602
    %if ($ - %%insn_004125b7) > 3
        %error "LONG_004125B7"
    %endif
    times 3 - ($ - %%insn_004125b7) db 0
    %%insn_004125ba:
    add esi,0x2 ; 004125BA 83C602
    %if ($ - %%insn_004125ba) > 3
        %error "LONG_004125BA"
    %endif
    times 3 - ($ - %%insn_004125ba) db 0
    %%insn_004125bd:
    test al,al ; 004125BD 84C0
    %if ($ - %%insn_004125bd) > 2
        %error "LONG_004125BD"
    %endif
    times 2 - ($ - %%insn_004125bd) db 0
    %%insn_004125bf:
    jnz short 0x412591 ; 004125BF 75D0
    %if ($ - %%insn_004125bf) > 2
        %error "LONG_004125BF"
    %endif
    times 2 - ($ - %%insn_004125bf) db 0
    %%insn_004125c1:
    inc edi ; 004125C1 47
    %if ($ - %%insn_004125c1) > 1
        %error "LONG_004125C1"
    %endif
    times 1 - ($ - %%insn_004125c1) db 0
    %%insn_004125c2:
    add ebp,0x8 ; 004125C2 83C508
    %if ($ - %%insn_004125c2) > 3
        %error "LONG_004125C2"
    %endif
    times 3 - ($ - %%insn_004125c2) db 0
    %%insn_004125c5:
    cmp edi,0x4 ; 004125C5 83FF04
    %if ($ - %%insn_004125c5) > 3
        %error "LONG_004125C5"
    %endif
    times 3 - ($ - %%insn_004125c5) db 0
    %%insn_004125c8:
    jc short 0x412588 ; 004125C8 72BE
    %if ($ - %%insn_004125c8) > 2
        %error "LONG_004125C8"
    %endif
    times 2 - ($ - %%insn_004125c8) db 0
    %%insn_004125ca:
    mov eax,[esp+0x28] ; 004125CA 8B442428
    %if ($ - %%insn_004125ca) > 4
        %error "LONG_004125CA"
    %endif
    times 4 - ($ - %%insn_004125ca) db 0
    %%insn_004125ce:
    push eax ; 004125CE 50
    %if ($ - %%insn_004125ce) > 1
        %error "LONG_004125CE"
    %endif
    times 1 - ($ - %%insn_004125ce) db 0
    %%insn_004125cf:
    mov [0x421154],eax ; 004125CF A354114200
    %if ($ - %%insn_004125cf) > 5
        %error "LONG_004125CF"
    %endif
    times 5 - ($ - %%insn_004125cf) db 0
    %%insn_004125d4:
    call 0x412670 ; 004125D4 E897000000
    %if ($ - %%insn_004125d4) > 5
        %error "LONG_004125D4"
    %endif
    times 5 - ($ - %%insn_004125d4) db 0
    %%insn_004125d9:
    mov ecx,[ebx+0x41e224] ; 004125D9 8B8B24E24100
    %if ($ - %%insn_004125d9) > 6
        %error "LONG_004125D9"
    %endif
    times 6 - ($ - %%insn_004125d9) db 0
    %%insn_004125df:
    mov edx,[ebx+0x41e228] ; 004125DF 8B9328E24100
    %if ($ - %%insn_004125df) > 6
        %error "LONG_004125DF"
    %endif
    times 6 - ($ - %%insn_004125df) db 0
    %%insn_004125e5:
    mov [0x421158],eax ; 004125E5 A358114200
    %if ($ - %%insn_004125e5) > 5
        %error "LONG_004125E5"
    %endif
    times 5 - ($ - %%insn_004125e5) db 0
    %%insn_004125ea:
    lea eax,[ebx+0x41e224] ; 004125EA 8D8324E24100
    %if ($ - %%insn_004125ea) > 6
        %error "LONG_004125EA"
    %endif
    times 6 - ($ - %%insn_004125ea) db 0
    %%insn_004125f0:
    add esp,0x4 ; 004125F0 83C404
    %if ($ - %%insn_004125f0) > 3
        %error "LONG_004125F0"
    %endif
    times 3 - ($ - %%insn_004125f0) db 0
    %%insn_004125f3:
    mov [0x421160],ecx ; 004125F3 890D60114200
    %if ($ - %%insn_004125f3) > 6
        %error "LONG_004125F3"
    %endif
    times 6 - ($ - %%insn_004125f3) db 0
    %%insn_004125f9:
    mov eax,[eax+0x8] ; 004125F9 8B4008
    %if ($ - %%insn_004125f9) > 3
        %error "LONG_004125F9"
    %endif
    times 3 - ($ - %%insn_004125f9) db 0
    %%insn_004125fc:
    mov [0x421164],edx ; 004125FC 891564114200
    %if ($ - %%insn_004125fc) > 6
        %error "LONG_004125FC"
    %endif
    times 6 - ($ - %%insn_004125fc) db 0
    %%insn_00412602:
    push dword 0x19 ; 00412602 6A19
    %if ($ - %%insn_00412602) > 2
        %error "LONG_00412602"
    %endif
    times 2 - ($ - %%insn_00412602) db 0
    %%insn_00412604:
    mov [0x421168],eax ; 00412604 A368114200
    %if ($ - %%insn_00412604) > 5
        %error "LONG_00412604"
    %endif
    times 5 - ($ - %%insn_00412604) db 0
    %%insn_00412609:
    call 0x40df80 ; 00412609 E872B9FFFF
    %if ($ - %%insn_00412609) > 5
        %error "LONG_00412609"
    %endif
    times 5 - ($ - %%insn_00412609) db 0
    %%insn_0041260e:
    add esp,0x4 ; 0041260E 83C404
    %if ($ - %%insn_0041260e) > 3
        %error "LONG_0041260E"
    %endif
    times 3 - ($ - %%insn_0041260e) db 0
    db 0x33, 0xC0 ; 00412611 33C0 | xor eax,eax | encoding preserved
    %%insn_00412613:
    pop edi ; 00412613 5F
    %if ($ - %%insn_00412613) > 1
        %error "LONG_00412613"
    %endif
    times 1 - ($ - %%insn_00412613) db 0
    %%insn_00412614:
    pop esi ; 00412614 5E
    %if ($ - %%insn_00412614) > 1
        %error "LONG_00412614"
    %endif
    times 1 - ($ - %%insn_00412614) db 0
    %%insn_00412615:
    pop ebp ; 00412615 5D
    %if ($ - %%insn_00412615) > 1
        %error "LONG_00412615"
    %endif
    times 1 - ($ - %%insn_00412615) db 0
    %%insn_00412616:
    pop ebx ; 00412616 5B
    %if ($ - %%insn_00412616) > 1
        %error "LONG_00412616"
    %endif
    times 1 - ($ - %%insn_00412616) db 0
    %%insn_00412617:
    add esp,0x14 ; 00412617 83C414
    %if ($ - %%insn_00412617) > 3
        %error "LONG_00412617"
    %endif
    times 3 - ($ - %%insn_00412617) db 0
    %%insn_0041261a:
    ret ; 0041261A C3
    %if ($ - %%insn_0041261a) > 1
        %error "LONG_0041261A"
    %endif
    times 1 - ($ - %%insn_0041261a) db 0
    %if ($ - %%fragment_start) != 539
        %error "function fragment size drift: 00412400"
    %endif
%endmacro
