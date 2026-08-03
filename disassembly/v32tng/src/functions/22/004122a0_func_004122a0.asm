; PE virtual entry 004122A0
; Ghidra working symbol: FUN_004122a0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004122a0_part_00 0
    %%fragment_start:
func_004122a0:
    %%insn_004122a0:
    mov eax,[0x421048] ; 004122A0 A148104200
    %if ($ - %%insn_004122a0) > 5
        %error "LONG_004122A0"
    %endif
    times 5 - ($ - %%insn_004122a0) db 0
    %%insn_004122a5:
    push ebx ; 004122A5 53
    %if ($ - %%insn_004122a5) > 1
        %error "LONG_004122A5"
    %endif
    times 1 - ($ - %%insn_004122a5) db 0
    %%insn_004122a6:
    push ebp ; 004122A6 55
    %if ($ - %%insn_004122a6) > 1
        %error "LONG_004122A6"
    %endif
    times 1 - ($ - %%insn_004122a6) db 0
    %%insn_004122a7:
    mov ebp,[0x4244d4] ; 004122A7 8B2DD4444200
    %if ($ - %%insn_004122a7) > 6
        %error "LONG_004122A7"
    %endif
    times 6 - ($ - %%insn_004122a7) db 0
    %%insn_004122ad:
    push esi ; 004122AD 56
    %if ($ - %%insn_004122ad) > 1
        %error "LONG_004122AD"
    %endif
    times 1 - ($ - %%insn_004122ad) db 0
    db 0x33, 0xF6 ; 004122AE 33F6 | xor esi,esi | encoding preserved
    db 0x33, 0xDB ; 004122B0 33DB | xor ebx,ebx | encoding preserved
    %%insn_004122b2:
    push edi ; 004122B2 57
    %if ($ - %%insn_004122b2) > 1
        %error "LONG_004122B2"
    %endif
    times 1 - ($ - %%insn_004122b2) db 0
    %%insn_004122b3:
    mov edi,[0x4244e4] ; 004122B3 8B3DE4444200
    %if ($ - %%insn_004122b3) > 6
        %error "LONG_004122B3"
    %endif
    times 6 - ($ - %%insn_004122b3) db 0
    %%insn_004122b9:
    test eax,eax ; 004122B9 85C0
    %if ($ - %%insn_004122b9) > 2
        %error "LONG_004122B9"
    %endif
    times 2 - ($ - %%insn_004122b9) db 0
    %%insn_004122bb:
    jnz short 0x4122e2 ; 004122BB 7525
    %if ($ - %%insn_004122bb) > 2
        %error "LONG_004122BB"
    %endif
    times 2 - ($ - %%insn_004122bb) db 0
    %%insn_004122bd:
    call edi ; 004122BD FFD7
    %if ($ - %%insn_004122bd) > 2
        %error "LONG_004122BD"
    %endif
    times 2 - ($ - %%insn_004122bd) db 0
    db 0x8B, 0xF0 ; 004122BF 8BF0 | mov esi,eax | encoding preserved
    %%insn_004122c1:
    test esi,esi ; 004122C1 85F6
    %if ($ - %%insn_004122c1) > 2
        %error "LONG_004122C1"
    %endif
    times 2 - ($ - %%insn_004122c1) db 0
    %%insn_004122c3:
    jz short 0x4122cc ; 004122C3 7407
    %if ($ - %%insn_004122c3) > 2
        %error "LONG_004122C3"
    %endif
    times 2 - ($ - %%insn_004122c3) db 0
    %%insn_004122c5:
    mov eax,0x1 ; 004122C5 B801000000
    %if ($ - %%insn_004122c5) > 5
        %error "LONG_004122C5"
    %endif
    times 5 - ($ - %%insn_004122c5) db 0
    %%insn_004122ca:
    jmp short 0x4122dd ; 004122CA EB11
    %if ($ - %%insn_004122ca) > 2
        %error "LONG_004122CA"
    %endif
    times 2 - ($ - %%insn_004122ca) db 0
    %%insn_004122cc:
    call ebp ; 004122CC FFD5
    %if ($ - %%insn_004122cc) > 2
        %error "LONG_004122CC"
    %endif
    times 2 - ($ - %%insn_004122cc) db 0
    db 0x8B, 0xD8 ; 004122CE 8BD8 | mov ebx,eax | encoding preserved
    %%insn_004122d0:
    test ebx,ebx ; 004122D0 85DB
    %if ($ - %%insn_004122d0) > 2
        %error "LONG_004122D0"
    %endif
    times 2 - ($ - %%insn_004122d0) db 0
    %%insn_004122d2:
    jz 0x4123ef ; 004122D2 0F8417010000
    %if ($ - %%insn_004122d2) > 6
        %error "LONG_004122D2"
    %endif
    times 6 - ($ - %%insn_004122d2) db 0
    %%insn_004122d8:
    mov eax,0x2 ; 004122D8 B802000000
    %if ($ - %%insn_004122d8) > 5
        %error "LONG_004122D8"
    %endif
    times 5 - ($ - %%insn_004122d8) db 0
    %%insn_004122dd:
    mov [0x421048],eax ; 004122DD A348104200
    %if ($ - %%insn_004122dd) > 5
        %error "LONG_004122DD"
    %endif
    times 5 - ($ - %%insn_004122dd) db 0
    %%insn_004122e2:
    cmp eax,0x1 ; 004122E2 83F801
    %if ($ - %%insn_004122e2) > 3
        %error "LONG_004122E2"
    %endif
    times 3 - ($ - %%insn_004122e2) db 0
    %%insn_004122e5:
    jnz 0x412382 ; 004122E5 0F8597000000
    %if ($ - %%insn_004122e5) > 6
        %error "LONG_004122E5"
    %endif
    times 6 - ($ - %%insn_004122e5) db 0
    %%insn_004122eb:
    test esi,esi ; 004122EB 85F6
    %if ($ - %%insn_004122eb) > 2
        %error "LONG_004122EB"
    %endif
    times 2 - ($ - %%insn_004122eb) db 0
    %%insn_004122ed:
    jnz short 0x4122fb ; 004122ED 750C
    %if ($ - %%insn_004122ed) > 2
        %error "LONG_004122ED"
    %endif
    times 2 - ($ - %%insn_004122ed) db 0
    %%insn_004122ef:
    call edi ; 004122EF FFD7
    %if ($ - %%insn_004122ef) > 2
        %error "LONG_004122EF"
    %endif
    times 2 - ($ - %%insn_004122ef) db 0
    db 0x8B, 0xF0 ; 004122F1 8BF0 | mov esi,eax | encoding preserved
    %%insn_004122f3:
    test esi,esi ; 004122F3 85F6
    %if ($ - %%insn_004122f3) > 2
        %error "LONG_004122F3"
    %endif
    times 2 - ($ - %%insn_004122f3) db 0
    %%insn_004122f5:
    jz 0x4123ef ; 004122F5 0F84F4000000
    %if ($ - %%insn_004122f5) > 6
        %error "LONG_004122F5"
    %endif
    times 6 - ($ - %%insn_004122f5) db 0
    %%insn_004122fb:
    cmp word [esi],0x0 ; 004122FB 66833E00
    %if ($ - %%insn_004122fb) > 4
        %error "LONG_004122FB"
    %endif
    times 4 - ($ - %%insn_004122fb) db 0
    db 0x8B, 0xC6 ; 004122FF 8BC6 | mov eax,esi | encoding preserved
    %%insn_00412301:
    jz short 0x412315 ; 00412301 7412
    %if ($ - %%insn_00412301) > 2
        %error "LONG_00412301"
    %endif
    times 2 - ($ - %%insn_00412301) db 0
    %%insn_00412303:
    add eax,0x2 ; 00412303 83C002
    %if ($ - %%insn_00412303) > 3
        %error "LONG_00412303"
    %endif
    times 3 - ($ - %%insn_00412303) db 0
    %%insn_00412306:
    cmp word [eax],0x0 ; 00412306 66833800
    %if ($ - %%insn_00412306) > 4
        %error "LONG_00412306"
    %endif
    times 4 - ($ - %%insn_00412306) db 0
    %%insn_0041230a:
    jnz short 0x412303 ; 0041230A 75F7
    %if ($ - %%insn_0041230a) > 2
        %error "LONG_0041230A"
    %endif
    times 2 - ($ - %%insn_0041230a) db 0
    %%insn_0041230c:
    add eax,0x2 ; 0041230C 83C002
    %if ($ - %%insn_0041230c) > 3
        %error "LONG_0041230C"
    %endif
    times 3 - ($ - %%insn_0041230c) db 0
    %%insn_0041230f:
    cmp word [eax],0x0 ; 0041230F 66833800
    %if ($ - %%insn_0041230f) > 4
        %error "LONG_0041230F"
    %endif
    times 4 - ($ - %%insn_0041230f) db 0
    %%insn_00412313:
    jnz short 0x412303 ; 00412313 75EE
    %if ($ - %%insn_00412313) > 2
        %error "LONG_00412313"
    %endif
    times 2 - ($ - %%insn_00412313) db 0
    db 0x2B, 0xC6 ; 00412315 2BC6 | sub eax,esi | encoding preserved
    %%insn_00412317:
    push dword 0x0 ; 00412317 6A00
    %if ($ - %%insn_00412317) > 2
        %error "LONG_00412317"
    %endif
    times 2 - ($ - %%insn_00412317) db 0
    %%insn_00412319:
    sar eax,1 ; 00412319 D1F8
    %if ($ - %%insn_00412319) > 2
        %error "LONG_00412319"
    %endif
    times 2 - ($ - %%insn_00412319) db 0
    %%insn_0041231b:
    inc eax ; 0041231B 40
    %if ($ - %%insn_0041231b) > 1
        %error "LONG_0041231B"
    %endif
    times 1 - ($ - %%insn_0041231b) db 0
    %%insn_0041231c:
    push dword 0x0 ; 0041231C 6A00
    %if ($ - %%insn_0041231c) > 2
        %error "LONG_0041231C"
    %endif
    times 2 - ($ - %%insn_0041231c) db 0
    db 0x8B, 0xE8 ; 0041231E 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00412320:
    push dword 0x0 ; 00412320 6A00
    %if ($ - %%insn_00412320) > 2
        %error "LONG_00412320"
    %endif
    times 2 - ($ - %%insn_00412320) db 0
    %%insn_00412322:
    push dword 0x0 ; 00412322 6A00
    %if ($ - %%insn_00412322) > 2
        %error "LONG_00412322"
    %endif
    times 2 - ($ - %%insn_00412322) db 0
    %%insn_00412324:
    push ebp ; 00412324 55
    %if ($ - %%insn_00412324) > 1
        %error "LONG_00412324"
    %endif
    times 1 - ($ - %%insn_00412324) db 0
    %%insn_00412325:
    push esi ; 00412325 56
    %if ($ - %%insn_00412325) > 1
        %error "LONG_00412325"
    %endif
    times 1 - ($ - %%insn_00412325) db 0
    %%insn_00412326:
    push dword 0x0 ; 00412326 6A00
    %if ($ - %%insn_00412326) > 2
        %error "LONG_00412326"
    %endif
    times 2 - ($ - %%insn_00412326) db 0
    %%insn_00412328:
    push dword 0x0 ; 00412328 6A00
    %if ($ - %%insn_00412328) > 2
        %error "LONG_00412328"
    %endif
    times 2 - ($ - %%insn_00412328) db 0
    %%insn_0041232a:
    call dword near [0x4244d0] ; 0041232A FF15D0444200
    %if ($ - %%insn_0041232a) > 6
        %error "LONG_0041232A"
    %endif
    times 6 - ($ - %%insn_0041232a) db 0
    db 0x8B, 0xF8 ; 00412330 8BF8 | mov edi,eax | encoding preserved
    %%insn_00412332:
    test edi,edi ; 00412332 85FF
    %if ($ - %%insn_00412332) > 2
        %error "LONG_00412332"
    %endif
    times 2 - ($ - %%insn_00412332) db 0
    %%insn_00412334:
    jz short 0x412374 ; 00412334 743E
    %if ($ - %%insn_00412334) > 2
        %error "LONG_00412334"
    %endif
    times 2 - ($ - %%insn_00412334) db 0
    %%insn_00412336:
    push edi ; 00412336 57
    %if ($ - %%insn_00412336) > 1
        %error "LONG_00412336"
    %endif
    times 1 - ($ - %%insn_00412336) db 0
    %%insn_00412337:
    call 0x40cdc0 ; 00412337 E884AAFFFF
    %if ($ - %%insn_00412337) > 5
        %error "LONG_00412337"
    %endif
    times 5 - ($ - %%insn_00412337) db 0
    db 0x8B, 0xD8 ; 0041233C 8BD8 | mov ebx,eax | encoding preserved
    %%insn_0041233e:
    add esp,0x4 ; 0041233E 83C404
    %if ($ - %%insn_0041233e) > 3
        %error "LONG_0041233E"
    %endif
    times 3 - ($ - %%insn_0041233e) db 0
    %%insn_00412341:
    test ebx,ebx ; 00412341 85DB
    %if ($ - %%insn_00412341) > 2
        %error "LONG_00412341"
    %endif
    times 2 - ($ - %%insn_00412341) db 0
    %%insn_00412343:
    jz short 0x412374 ; 00412343 742F
    %if ($ - %%insn_00412343) > 2
        %error "LONG_00412343"
    %endif
    times 2 - ($ - %%insn_00412343) db 0
    %%insn_00412345:
    push dword 0x0 ; 00412345 6A00
    %if ($ - %%insn_00412345) > 2
        %error "LONG_00412345"
    %endif
    times 2 - ($ - %%insn_00412345) db 0
    %%insn_00412347:
    push dword 0x0 ; 00412347 6A00
    %if ($ - %%insn_00412347) > 2
        %error "LONG_00412347"
    %endif
    times 2 - ($ - %%insn_00412347) db 0
    %%insn_00412349:
    push edi ; 00412349 57
    %if ($ - %%insn_00412349) > 1
        %error "LONG_00412349"
    %endif
    times 1 - ($ - %%insn_00412349) db 0
    %%insn_0041234a:
    push ebx ; 0041234A 53
    %if ($ - %%insn_0041234a) > 1
        %error "LONG_0041234A"
    %endif
    times 1 - ($ - %%insn_0041234a) db 0
    %%insn_0041234b:
    push ebp ; 0041234B 55
    %if ($ - %%insn_0041234b) > 1
        %error "LONG_0041234B"
    %endif
    times 1 - ($ - %%insn_0041234b) db 0
    %%insn_0041234c:
    push esi ; 0041234C 56
    %if ($ - %%insn_0041234c) > 1
        %error "LONG_0041234C"
    %endif
    times 1 - ($ - %%insn_0041234c) db 0
    %%insn_0041234d:
    push dword 0x0 ; 0041234D 6A00
    %if ($ - %%insn_0041234d) > 2
        %error "LONG_0041234D"
    %endif
    times 2 - ($ - %%insn_0041234d) db 0
    %%insn_0041234f:
    push dword 0x0 ; 0041234F 6A00
    %if ($ - %%insn_0041234f) > 2
        %error "LONG_0041234F"
    %endif
    times 2 - ($ - %%insn_0041234f) db 0
    %%insn_00412351:
    call dword near [0x4244d0] ; 00412351 FF15D0444200
    %if ($ - %%insn_00412351) > 6
        %error "LONG_00412351"
    %endif
    times 6 - ($ - %%insn_00412351) db 0
    %%insn_00412357:
    test eax,eax ; 00412357 85C0
    %if ($ - %%insn_00412357) > 2
        %error "LONG_00412357"
    %endif
    times 2 - ($ - %%insn_00412357) db 0
    %%insn_00412359:
    jnz short 0x412366 ; 00412359 750B
    %if ($ - %%insn_00412359) > 2
        %error "LONG_00412359"
    %endif
    times 2 - ($ - %%insn_00412359) db 0
    %%insn_0041235b:
    push ebx ; 0041235B 53
    %if ($ - %%insn_0041235b) > 1
        %error "LONG_0041235B"
    %endif
    times 1 - ($ - %%insn_0041235b) db 0
    %%insn_0041235c:
    call 0x40c9a0 ; 0041235C E83FA6FFFF
    %if ($ - %%insn_0041235c) > 5
        %error "LONG_0041235C"
    %endif
    times 5 - ($ - %%insn_0041235c) db 0
    %%insn_00412361:
    add esp,0x4 ; 00412361 83C404
    %if ($ - %%insn_00412361) > 3
        %error "LONG_00412361"
    %endif
    times 3 - ($ - %%insn_00412361) db 0
    db 0x33, 0xDB ; 00412364 33DB | xor ebx,ebx | encoding preserved
    %%insn_00412366:
    push esi ; 00412366 56
    %if ($ - %%insn_00412366) > 1
        %error "LONG_00412366"
    %endif
    times 1 - ($ - %%insn_00412366) db 0
    %%insn_00412367:
    call dword near [0x4244d8] ; 00412367 FF15D8444200
    %if ($ - %%insn_00412367) > 6
        %error "LONG_00412367"
    %endif
    times 6 - ($ - %%insn_00412367) db 0
    db 0x8B, 0xC3 ; 0041236D 8BC3 | mov eax,ebx | encoding preserved
    %%insn_0041236f:
    pop edi ; 0041236F 5F
    %if ($ - %%insn_0041236f) > 1
        %error "LONG_0041236F"
    %endif
    times 1 - ($ - %%insn_0041236f) db 0
    %%insn_00412370:
    pop esi ; 00412370 5E
    %if ($ - %%insn_00412370) > 1
        %error "LONG_00412370"
    %endif
    times 1 - ($ - %%insn_00412370) db 0
    %%insn_00412371:
    pop ebp ; 00412371 5D
    %if ($ - %%insn_00412371) > 1
        %error "LONG_00412371"
    %endif
    times 1 - ($ - %%insn_00412371) db 0
    %%insn_00412372:
    pop ebx ; 00412372 5B
    %if ($ - %%insn_00412372) > 1
        %error "LONG_00412372"
    %endif
    times 1 - ($ - %%insn_00412372) db 0
    %%insn_00412373:
    ret ; 00412373 C3
    %if ($ - %%insn_00412373) > 1
        %error "LONG_00412373"
    %endif
    times 1 - ($ - %%insn_00412373) db 0
    %%insn_00412374:
    push esi ; 00412374 56
    %if ($ - %%insn_00412374) > 1
        %error "LONG_00412374"
    %endif
    times 1 - ($ - %%insn_00412374) db 0
    %%insn_00412375:
    call dword near [0x4244d8] ; 00412375 FF15D8444200
    %if ($ - %%insn_00412375) > 6
        %error "LONG_00412375"
    %endif
    times 6 - ($ - %%insn_00412375) db 0
    db 0x33, 0xC0 ; 0041237B 33C0 | xor eax,eax | encoding preserved
    %%insn_0041237d:
    pop edi ; 0041237D 5F
    %if ($ - %%insn_0041237d) > 1
        %error "LONG_0041237D"
    %endif
    times 1 - ($ - %%insn_0041237d) db 0
    %%insn_0041237e:
    pop esi ; 0041237E 5E
    %if ($ - %%insn_0041237e) > 1
        %error "LONG_0041237E"
    %endif
    times 1 - ($ - %%insn_0041237e) db 0
    %%insn_0041237f:
    pop ebp ; 0041237F 5D
    %if ($ - %%insn_0041237f) > 1
        %error "LONG_0041237F"
    %endif
    times 1 - ($ - %%insn_0041237f) db 0
    %%insn_00412380:
    pop ebx ; 00412380 5B
    %if ($ - %%insn_00412380) > 1
        %error "LONG_00412380"
    %endif
    times 1 - ($ - %%insn_00412380) db 0
    %%insn_00412381:
    ret ; 00412381 C3
    %if ($ - %%insn_00412381) > 1
        %error "LONG_00412381"
    %endif
    times 1 - ($ - %%insn_00412381) db 0
    %%insn_00412382:
    cmp eax,0x2 ; 00412382 83F802
    %if ($ - %%insn_00412382) > 3
        %error "LONG_00412382"
    %endif
    times 3 - ($ - %%insn_00412382) db 0
    %%insn_00412385:
    jnz short 0x4123ef ; 00412385 7568
    %if ($ - %%insn_00412385) > 2
        %error "LONG_00412385"
    %endif
    times 2 - ($ - %%insn_00412385) db 0
    %%insn_00412387:
    test ebx,ebx ; 00412387 85DB
    %if ($ - %%insn_00412387) > 2
        %error "LONG_00412387"
    %endif
    times 2 - ($ - %%insn_00412387) db 0
    %%insn_00412389:
    jnz short 0x412393 ; 00412389 7508
    %if ($ - %%insn_00412389) > 2
        %error "LONG_00412389"
    %endif
    times 2 - ($ - %%insn_00412389) db 0
    %%insn_0041238b:
    call ebp ; 0041238B FFD5
    %if ($ - %%insn_0041238b) > 2
        %error "LONG_0041238B"
    %endif
    times 2 - ($ - %%insn_0041238b) db 0
    db 0x8B, 0xD8 ; 0041238D 8BD8 | mov ebx,eax | encoding preserved
    %%insn_0041238f:
    test ebx,ebx ; 0041238F 85DB
    %if ($ - %%insn_0041238f) > 2
        %error "LONG_0041238F"
    %endif
    times 2 - ($ - %%insn_0041238f) db 0
    %%insn_00412391:
    jz short 0x4123ef ; 00412391 745C
    %if ($ - %%insn_00412391) > 2
        %error "LONG_00412391"
    %endif
    times 2 - ($ - %%insn_00412391) db 0
    %%insn_00412393:
    mov cl,[ebx] ; 00412393 8A0B
    %if ($ - %%insn_00412393) > 2
        %error "LONG_00412393"
    %endif
    times 2 - ($ - %%insn_00412393) db 0
    db 0x8B, 0xC3 ; 00412395 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00412397:
    test cl,cl ; 00412397 84C9
    %if ($ - %%insn_00412397) > 2
        %error "LONG_00412397"
    %endif
    times 2 - ($ - %%insn_00412397) db 0
    %%insn_00412399:
    jz short 0x4123ab ; 00412399 7410
    %if ($ - %%insn_00412399) > 2
        %error "LONG_00412399"
    %endif
    times 2 - ($ - %%insn_00412399) db 0
    %%insn_0041239b:
    mov cl,[eax+0x1] ; 0041239B 8A4801
    %if ($ - %%insn_0041239b) > 3
        %error "LONG_0041239B"
    %endif
    times 3 - ($ - %%insn_0041239b) db 0
    %%insn_0041239e:
    inc eax ; 0041239E 40
    %if ($ - %%insn_0041239e) > 1
        %error "LONG_0041239E"
    %endif
    times 1 - ($ - %%insn_0041239e) db 0
    %%insn_0041239f:
    test cl,cl ; 0041239F 84C9
    %if ($ - %%insn_0041239f) > 2
        %error "LONG_0041239F"
    %endif
    times 2 - ($ - %%insn_0041239f) db 0
    %%insn_004123a1:
    jnz short 0x41239b ; 004123A1 75F8
    %if ($ - %%insn_004123a1) > 2
        %error "LONG_004123A1"
    %endif
    times 2 - ($ - %%insn_004123a1) db 0
    %%insn_004123a3:
    mov cl,[eax+0x1] ; 004123A3 8A4801
    %if ($ - %%insn_004123a3) > 3
        %error "LONG_004123A3"
    %endif
    times 3 - ($ - %%insn_004123a3) db 0
    %%insn_004123a6:
    inc eax ; 004123A6 40
    %if ($ - %%insn_004123a6) > 1
        %error "LONG_004123A6"
    %endif
    times 1 - ($ - %%insn_004123a6) db 0
    %%insn_004123a7:
    test cl,cl ; 004123A7 84C9
    %if ($ - %%insn_004123a7) > 2
        %error "LONG_004123A7"
    %endif
    times 2 - ($ - %%insn_004123a7) db 0
    %%insn_004123a9:
    jnz short 0x41239b ; 004123A9 75F0
    %if ($ - %%insn_004123a9) > 2
        %error "LONG_004123A9"
    %endif
    times 2 - ($ - %%insn_004123a9) db 0
    db 0x2B, 0xC3 ; 004123AB 2BC3 | sub eax,ebx | encoding preserved
    %%insn_004123ad:
    inc eax ; 004123AD 40
    %if ($ - %%insn_004123ad) > 1
        %error "LONG_004123AD"
    %endif
    times 1 - ($ - %%insn_004123ad) db 0
    db 0x8B, 0xF0 ; 004123AE 8BF0 | mov esi,eax | encoding preserved
    %%insn_004123b0:
    push esi ; 004123B0 56
    %if ($ - %%insn_004123b0) > 1
        %error "LONG_004123B0"
    %endif
    times 1 - ($ - %%insn_004123b0) db 0
    %%insn_004123b1:
    call 0x40cdc0 ; 004123B1 E80AAAFFFF
    %if ($ - %%insn_004123b1) > 5
        %error "LONG_004123B1"
    %endif
    times 5 - ($ - %%insn_004123b1) db 0
    db 0x8B, 0xE8 ; 004123B6 8BE8 | mov ebp,eax | encoding preserved
    %%insn_004123b8:
    add esp,0x4 ; 004123B8 83C404
    %if ($ - %%insn_004123b8) > 3
        %error "LONG_004123B8"
    %endif
    times 3 - ($ - %%insn_004123b8) db 0
    %%insn_004123bb:
    test ebp,ebp ; 004123BB 85ED
    %if ($ - %%insn_004123bb) > 2
        %error "LONG_004123BB"
    %endif
    times 2 - ($ - %%insn_004123bb) db 0
    %%insn_004123bd:
    jnz short 0x4123cd ; 004123BD 750E
    %if ($ - %%insn_004123bd) > 2
        %error "LONG_004123BD"
    %endif
    times 2 - ($ - %%insn_004123bd) db 0
    %%insn_004123bf:
    push ebx ; 004123BF 53
    %if ($ - %%insn_004123bf) > 1
        %error "LONG_004123BF"
    %endif
    times 1 - ($ - %%insn_004123bf) db 0
    %%insn_004123c0:
    call dword near [0x424460] ; 004123C0 FF1560444200
    %if ($ - %%insn_004123c0) > 6
        %error "LONG_004123C0"
    %endif
    times 6 - ($ - %%insn_004123c0) db 0
    db 0x33, 0xC0 ; 004123C6 33C0 | xor eax,eax | encoding preserved
    %%insn_004123c8:
    pop edi ; 004123C8 5F
    %if ($ - %%insn_004123c8) > 1
        %error "LONG_004123C8"
    %endif
    times 1 - ($ - %%insn_004123c8) db 0
    %%insn_004123c9:
    pop esi ; 004123C9 5E
    %if ($ - %%insn_004123c9) > 1
        %error "LONG_004123C9"
    %endif
    times 1 - ($ - %%insn_004123c9) db 0
    %%insn_004123ca:
    pop ebp ; 004123CA 5D
    %if ($ - %%insn_004123ca) > 1
        %error "LONG_004123CA"
    %endif
    times 1 - ($ - %%insn_004123ca) db 0
    %%insn_004123cb:
    pop ebx ; 004123CB 5B
    %if ($ - %%insn_004123cb) > 1
        %error "LONG_004123CB"
    %endif
    times 1 - ($ - %%insn_004123cb) db 0
    %%insn_004123cc:
    ret ; 004123CC C3
    %if ($ - %%insn_004123cc) > 1
        %error "LONG_004123CC"
    %endif
    times 1 - ($ - %%insn_004123cc) db 0
    db 0x8B, 0xCE ; 004123CD 8BCE | mov ecx,esi | encoding preserved
    db 0x8B, 0xF3 ; 004123CF 8BF3 | mov esi,ebx | encoding preserved
    db 0x8B, 0xC1 ; 004123D1 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xFD ; 004123D3 8BFD | mov edi,ebp | encoding preserved
    %%insn_004123d5:
    shr ecx,byte 0x2 ; 004123D5 C1E902
    %if ($ - %%insn_004123d5) > 3
        %error "LONG_004123D5"
    %endif
    times 3 - ($ - %%insn_004123d5) db 0
    %%insn_004123d8:
    rep movsd ; 004123D8 F3A5
    %if ($ - %%insn_004123d8) > 2
        %error "LONG_004123D8"
    %endif
    times 2 - ($ - %%insn_004123d8) db 0
    db 0x8B, 0xC8 ; 004123DA 8BC8 | mov ecx,eax | encoding preserved
    %%insn_004123dc:
    push ebx ; 004123DC 53
    %if ($ - %%insn_004123dc) > 1
        %error "LONG_004123DC"
    %endif
    times 1 - ($ - %%insn_004123dc) db 0
    %%insn_004123dd:
    and ecx,0x3 ; 004123DD 83E103
    %if ($ - %%insn_004123dd) > 3
        %error "LONG_004123DD"
    %endif
    times 3 - ($ - %%insn_004123dd) db 0
    %%insn_004123e0:
    rep movsb ; 004123E0 F3A4
    %if ($ - %%insn_004123e0) > 2
        %error "LONG_004123E0"
    %endif
    times 2 - ($ - %%insn_004123e0) db 0
    %%insn_004123e2:
    call dword near [0x424460] ; 004123E2 FF1560444200
    %if ($ - %%insn_004123e2) > 6
        %error "LONG_004123E2"
    %endif
    times 6 - ($ - %%insn_004123e2) db 0
    db 0x8B, 0xC5 ; 004123E8 8BC5 | mov eax,ebp | encoding preserved
    %%insn_004123ea:
    pop edi ; 004123EA 5F
    %if ($ - %%insn_004123ea) > 1
        %error "LONG_004123EA"
    %endif
    times 1 - ($ - %%insn_004123ea) db 0
    %%insn_004123eb:
    pop esi ; 004123EB 5E
    %if ($ - %%insn_004123eb) > 1
        %error "LONG_004123EB"
    %endif
    times 1 - ($ - %%insn_004123eb) db 0
    %%insn_004123ec:
    pop ebp ; 004123EC 5D
    %if ($ - %%insn_004123ec) > 1
        %error "LONG_004123EC"
    %endif
    times 1 - ($ - %%insn_004123ec) db 0
    %%insn_004123ed:
    pop ebx ; 004123ED 5B
    %if ($ - %%insn_004123ed) > 1
        %error "LONG_004123ED"
    %endif
    times 1 - ($ - %%insn_004123ed) db 0
    %%insn_004123ee:
    ret ; 004123EE C3
    %if ($ - %%insn_004123ee) > 1
        %error "LONG_004123EE"
    %endif
    times 1 - ($ - %%insn_004123ee) db 0
    %%insn_004123ef:
    pop edi ; 004123EF 5F
    %if ($ - %%insn_004123ef) > 1
        %error "LONG_004123EF"
    %endif
    times 1 - ($ - %%insn_004123ef) db 0
    %%insn_004123f0:
    pop esi ; 004123F0 5E
    %if ($ - %%insn_004123f0) > 1
        %error "LONG_004123F0"
    %endif
    times 1 - ($ - %%insn_004123f0) db 0
    %%insn_004123f1:
    pop ebp ; 004123F1 5D
    %if ($ - %%insn_004123f1) > 1
        %error "LONG_004123F1"
    %endif
    times 1 - ($ - %%insn_004123f1) db 0
    db 0x33, 0xC0 ; 004123F2 33C0 | xor eax,eax | encoding preserved
    %%insn_004123f4:
    pop ebx ; 004123F4 5B
    %if ($ - %%insn_004123f4) > 1
        %error "LONG_004123F4"
    %endif
    times 1 - ($ - %%insn_004123f4) db 0
    %%insn_004123f5:
    ret ; 004123F5 C3
    %if ($ - %%insn_004123f5) > 1
        %error "LONG_004123F5"
    %endif
    times 1 - ($ - %%insn_004123f5) db 0
    %if ($ - %%fragment_start) != 342
        %error "function fragment size drift: 004122A0"
    %endif
%endmacro
