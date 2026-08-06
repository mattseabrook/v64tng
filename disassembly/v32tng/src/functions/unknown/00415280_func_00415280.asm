; PE virtual entry 00415280
; Ghidra working symbol: FUN_00415280
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00415280_part_00 0
    %%fragment_start:
func_00415280:
    %%insn_00415280:
    push ecx ; 00415280 51
    %if ($ - %%insn_00415280) > 1
        %error "LONG_00415280"
    %endif
    times 1 - ($ - %%insn_00415280) db 0
    %%insn_00415281:
    push ebx ; 00415281 53
    %if ($ - %%insn_00415281) > 1
        %error "LONG_00415281"
    %endif
    times 1 - ($ - %%insn_00415281) db 0
    %%insn_00415282:
    push ebp ; 00415282 55
    %if ($ - %%insn_00415282) > 1
        %error "LONG_00415282"
    %endif
    times 1 - ($ - %%insn_00415282) db 0
    %%insn_00415283:
    mov ebp,[esp+0x10] ; 00415283 8B6C2410
    %if ($ - %%insn_00415283) > 4
        %error "LONG_00415283"
    %endif
    times 4 - ($ - %%insn_00415283) db 0
    %%insn_00415287:
    push esi ; 00415287 56
    %if ($ - %%insn_00415287) > 1
        %error "LONG_00415287"
    %endif
    times 1 - ($ - %%insn_00415287) db 0
    %%insn_00415288:
    push edi ; 00415288 57
    %if ($ - %%insn_00415288) > 1
        %error "LONG_00415288"
    %endif
    times 1 - ($ - %%insn_00415288) db 0
    db 0x8B, 0xD5 ; 00415289 8BD5 | mov edx,ebp | encoding preserved
    %%insn_0041528b:
    mov edi,[ebp+0x0] ; 0041528B 8B7D00
    %if ($ - %%insn_0041528b) > 3
        %error "LONG_0041528B"
    %endif
    times 3 - ($ - %%insn_0041528b) db 0
    %%insn_0041528e:
    mov esi,0x2 ; 0041528E BE02000000
    %if ($ - %%insn_0041528e) > 5
        %error "LONG_0041528E"
    %endif
    times 5 - ($ - %%insn_0041528e) db 0
    %%insn_00415293:
    test edi,edi ; 00415293 85FF
    %if ($ - %%insn_00415293) > 2
        %error "LONG_00415293"
    %endif
    times 2 - ($ - %%insn_00415293) db 0
    %%insn_00415295:
    jz short 0x4152ae ; 00415295 7417
    %if ($ - %%insn_00415295) > 2
        %error "LONG_00415295"
    %endif
    times 2 - ($ - %%insn_00415295) db 0
    %%insn_00415297:
    or ecx,0xffffffffffffffff ; 00415297 83C9FF
    %if ($ - %%insn_00415297) > 3
        %error "LONG_00415297"
    %endif
    times 3 - ($ - %%insn_00415297) db 0
    db 0x33, 0xC0 ; 0041529A 33C0 | xor eax,eax | encoding preserved
    %%insn_0041529c:
    add edx,0x4 ; 0041529C 83C204
    %if ($ - %%insn_0041529c) > 3
        %error "LONG_0041529C"
    %endif
    times 3 - ($ - %%insn_0041529c) db 0
    %%insn_0041529f:
    repne scasb ; 0041529F F2AE
    %if ($ - %%insn_0041529f) > 2
        %error "LONG_0041529F"
    %endif
    times 2 - ($ - %%insn_0041529f) db 0
    %%insn_004152a1:
    mov edi,[edx] ; 004152A1 8B3A
    %if ($ - %%insn_004152a1) > 2
        %error "LONG_004152A1"
    %endif
    times 2 - ($ - %%insn_004152a1) db 0
    %%insn_004152a3:
    not ecx ; 004152A3 F7D1
    %if ($ - %%insn_004152a3) > 2
        %error "LONG_004152A3"
    %endif
    times 2 - ($ - %%insn_004152a3) db 0
    %%insn_004152a5:
    dec ecx ; 004152A5 49
    %if ($ - %%insn_004152a5) > 1
        %error "LONG_004152A5"
    %endif
    times 1 - ($ - %%insn_004152a5) db 0
    %%insn_004152a6:
    test edi,edi ; 004152A6 85FF
    %if ($ - %%insn_004152a6) > 2
        %error "LONG_004152A6"
    %endif
    times 2 - ($ - %%insn_004152a6) db 0
    %%insn_004152a8:
    lea esi,[esi+ecx+0x1] ; 004152A8 8D740E01
    %if ($ - %%insn_004152a8) > 4
        %error "LONG_004152A8"
    %endif
    times 4 - ($ - %%insn_004152a8) db 0
    %%insn_004152ac:
    jnz short 0x415297 ; 004152AC 75E9
    %if ($ - %%insn_004152ac) > 2
        %error "LONG_004152AC"
    %endif
    times 2 - ($ - %%insn_004152ac) db 0
    %%insn_004152ae:
    push esi ; 004152AE 56
    %if ($ - %%insn_004152ae) > 1
        %error "LONG_004152AE"
    %endif
    times 1 - ($ - %%insn_004152ae) db 0
    %%insn_004152af:
    call 0x40cdc0 ; 004152AF E80C7BFFFF
    %if ($ - %%insn_004152af) > 5
        %error "LONG_004152AF"
    %endif
    times 5 - ($ - %%insn_004152af) db 0
    %%insn_004152b4:
    mov ecx,[esp+0x24] ; 004152B4 8B4C2424
    %if ($ - %%insn_004152b4) > 4
        %error "LONG_004152B4"
    %endif
    times 4 - ($ - %%insn_004152b4) db 0
    %%insn_004152b8:
    add esp,0x4 ; 004152B8 83C404
    %if ($ - %%insn_004152b8) > 3
        %error "LONG_004152B8"
    %endif
    times 3 - ($ - %%insn_004152b8) db 0
    %%insn_004152bb:
    test eax,eax ; 004152BB 85C0
    %if ($ - %%insn_004152bb) > 2
        %error "LONG_004152BB"
    %endif
    times 2 - ($ - %%insn_004152bb) db 0
    %%insn_004152bd:
    mov [ecx],eax ; 004152BD 8901
    %if ($ - %%insn_004152bd) > 2
        %error "LONG_004152BD"
    %endif
    times 2 - ($ - %%insn_004152bd) db 0
    %%insn_004152bf:
    jnz short 0x4152cc ; 004152BF 750B
    %if ($ - %%insn_004152bf) > 2
        %error "LONG_004152BF"
    %endif
    times 2 - ($ - %%insn_004152bf) db 0
    %%insn_004152c1:
    mov edx,[esp+0x24] ; 004152C1 8B542424
    %if ($ - %%insn_004152c1) > 4
        %error "LONG_004152C1"
    %endif
    times 4 - ($ - %%insn_004152c1) db 0
    %%insn_004152c5:
    mov [edx],eax ; 004152C5 8902
    %if ($ - %%insn_004152c5) > 2
        %error "LONG_004152C5"
    %endif
    times 2 - ($ - %%insn_004152c5) db 0
    %%insn_004152c7:
    jmp 0x4153cc ; 004152C7 E900010000
    %if ($ - %%insn_004152c7) > 5
        %error "LONG_004152C7"
    %endif
    times 5 - ($ - %%insn_004152c7) db 0
    %%insn_004152cc:
    mov edx,[esp+0x1c] ; 004152CC 8B54241C
    %if ($ - %%insn_004152cc) > 4
        %error "LONG_004152CC"
    %endif
    times 4 - ($ - %%insn_004152cc) db 0
    %%insn_004152d0:
    test edx,edx ; 004152D0 85D2
    %if ($ - %%insn_004152d0) > 2
        %error "LONG_004152D0"
    %endif
    times 2 - ($ - %%insn_004152d0) db 0
    %%insn_004152d2:
    jz short 0x4152f6 ; 004152D2 7422
    %if ($ - %%insn_004152d2) > 2
        %error "LONG_004152D2"
    %endif
    times 2 - ($ - %%insn_004152d2) db 0
    %%insn_004152d4:
    mov edi,[edx] ; 004152D4 8B3A
    %if ($ - %%insn_004152d4) > 2
        %error "LONG_004152D4"
    %endif
    times 2 - ($ - %%insn_004152d4) db 0
    %%insn_004152d6:
    mov esi,0x2 ; 004152D6 BE02000000
    %if ($ - %%insn_004152d6) > 5
        %error "LONG_004152D6"
    %endif
    times 5 - ($ - %%insn_004152d6) db 0
    %%insn_004152db:
    test edi,edi ; 004152DB 85FF
    %if ($ - %%insn_004152db) > 2
        %error "LONG_004152DB"
    %endif
    times 2 - ($ - %%insn_004152db) db 0
    %%insn_004152dd:
    jz short 0x4152f6 ; 004152DD 7417
    %if ($ - %%insn_004152dd) > 2
        %error "LONG_004152DD"
    %endif
    times 2 - ($ - %%insn_004152dd) db 0
    %%insn_004152df:
    or ecx,0xffffffffffffffff ; 004152DF 83C9FF
    %if ($ - %%insn_004152df) > 3
        %error "LONG_004152DF"
    %endif
    times 3 - ($ - %%insn_004152df) db 0
    db 0x33, 0xC0 ; 004152E2 33C0 | xor eax,eax | encoding preserved
    %%insn_004152e4:
    add edx,0x4 ; 004152E4 83C204
    %if ($ - %%insn_004152e4) > 3
        %error "LONG_004152E4"
    %endif
    times 3 - ($ - %%insn_004152e4) db 0
    %%insn_004152e7:
    repne scasb ; 004152E7 F2AE
    %if ($ - %%insn_004152e7) > 2
        %error "LONG_004152E7"
    %endif
    times 2 - ($ - %%insn_004152e7) db 0
    %%insn_004152e9:
    mov edi,[edx] ; 004152E9 8B3A
    %if ($ - %%insn_004152e9) > 2
        %error "LONG_004152E9"
    %endif
    times 2 - ($ - %%insn_004152e9) db 0
    %%insn_004152eb:
    not ecx ; 004152EB F7D1
    %if ($ - %%insn_004152eb) > 2
        %error "LONG_004152EB"
    %endif
    times 2 - ($ - %%insn_004152eb) db 0
    %%insn_004152ed:
    dec ecx ; 004152ED 49
    %if ($ - %%insn_004152ed) > 1
        %error "LONG_004152ED"
    %endif
    times 1 - ($ - %%insn_004152ed) db 0
    %%insn_004152ee:
    test edi,edi ; 004152EE 85FF
    %if ($ - %%insn_004152ee) > 2
        %error "LONG_004152EE"
    %endif
    times 2 - ($ - %%insn_004152ee) db 0
    %%insn_004152f0:
    lea esi,[esi+ecx+0x1] ; 004152F0 8D740E01
    %if ($ - %%insn_004152f0) > 4
        %error "LONG_004152F0"
    %endif
    times 4 - ($ - %%insn_004152f0) db 0
    %%insn_004152f4:
    jnz short 0x4152df ; 004152F4 75E9
    %if ($ - %%insn_004152f4) > 2
        %error "LONG_004152F4"
    %endif
    times 2 - ($ - %%insn_004152f4) db 0
    %%insn_004152f6:
    mov eax,[esp+0x1c] ; 004152F6 8B44241C
    %if ($ - %%insn_004152f6) > 4
        %error "LONG_004152F6"
    %endif
    times 4 - ($ - %%insn_004152f6) db 0
    %%insn_004152fa:
    test eax,eax ; 004152FA 85C0
    %if ($ - %%insn_004152fa) > 2
        %error "LONG_004152FA"
    %endif
    times 2 - ($ - %%insn_004152fa) db 0
    %%insn_004152fc:
    jnz short 0x415311 ; 004152FC 7513
    %if ($ - %%insn_004152fc) > 2
        %error "LONG_004152FC"
    %endif
    times 2 - ($ - %%insn_004152fc) db 0
    %%insn_004152fe:
    mov eax,[esp+0x24] ; 004152FE 8B442424
    %if ($ - %%insn_004152fe) > 4
        %error "LONG_004152FE"
    %endif
    times 4 - ($ - %%insn_004152fe) db 0
    %%insn_00415302:
    mov ebx,[esp+0x24] ; 00415302 8B5C2424
    %if ($ - %%insn_00415302) > 4
        %error "LONG_00415302"
    %endif
    times 4 - ($ - %%insn_00415302) db 0
    %%insn_00415306:
    mov dword [eax],0x0 ; 00415306 C70000000000
    %if ($ - %%insn_00415306) > 6
        %error "LONG_00415306"
    %endif
    times 6 - ($ - %%insn_00415306) db 0
    %%insn_0041530c:
    jmp 0x4153ef ; 0041530C E9DE000000
    %if ($ - %%insn_0041530c) > 5
        %error "LONG_0041530C"
    %endif
    times 5 - ($ - %%insn_0041530c) db 0
    %%insn_00415311:
    mov ebp,[0x420e98] ; 00415311 8B2D980E4200
    %if ($ - %%insn_00415311) > 6
        %error "LONG_00415311"
    %endif
    times 6 - ($ - %%insn_00415311) db 0
    %%insn_00415317:
    test ebp,ebp ; 00415317 85ED
    %if ($ - %%insn_00415317) > 2
        %error "LONG_00415317"
    %endif
    times 2 - ($ - %%insn_00415317) db 0
    %%insn_00415319:
    jnz short 0x415335 ; 00415319 751A
    %if ($ - %%insn_00415319) > 2
        %error "LONG_00415319"
    %endif
    times 2 - ($ - %%insn_00415319) db 0
    %%insn_0041531b:
    call 0x4122a0 ; 0041531B E880CFFFFF
    %if ($ - %%insn_0041531b) > 5
        %error "LONG_0041531B"
    %endif
    times 5 - ($ - %%insn_0041531b) db 0
    db 0x8B, 0xE8 ; 00415320 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00415322:
    test ebp,ebp ; 00415322 85ED
    %if ($ - %%insn_00415322) > 2
        %error "LONG_00415322"
    %endif
    times 2 - ($ - %%insn_00415322) db 0
    %%insn_00415324:
    mov [0x420e98],ebp ; 00415324 892D980E4200
    %if ($ - %%insn_00415324) > 6
        %error "LONG_00415324"
    %endif
    times 6 - ($ - %%insn_00415324) db 0
    %%insn_0041532a:
    jnz short 0x415335 ; 0041532A 7509
    %if ($ - %%insn_0041532a) > 2
        %error "LONG_0041532A"
    %endif
    times 2 - ($ - %%insn_0041532a) db 0
    %%insn_0041532c:
    or eax,0xffffffffffffffff ; 0041532C 83C8FF
    %if ($ - %%insn_0041532c) > 3
        %error "LONG_0041532C"
    %endif
    times 3 - ($ - %%insn_0041532c) db 0
    %%insn_0041532f:
    pop edi ; 0041532F 5F
    %if ($ - %%insn_0041532f) > 1
        %error "LONG_0041532F"
    %endif
    times 1 - ($ - %%insn_0041532f) db 0
    %%insn_00415330:
    pop esi ; 00415330 5E
    %if ($ - %%insn_00415330) > 1
        %error "LONG_00415330"
    %endif
    times 1 - ($ - %%insn_00415330) db 0
    %%insn_00415331:
    pop ebp ; 00415331 5D
    %if ($ - %%insn_00415331) > 1
        %error "LONG_00415331"
    %endif
    times 1 - ($ - %%insn_00415331) db 0
    %%insn_00415332:
    pop ebx ; 00415332 5B
    %if ($ - %%insn_00415332) > 1
        %error "LONG_00415332"
    %endif
    times 1 - ($ - %%insn_00415332) db 0
    %%insn_00415333:
    pop ecx ; 00415333 59
    %if ($ - %%insn_00415333) > 1
        %error "LONG_00415333"
    %endif
    times 1 - ($ - %%insn_00415333) db 0
    %%insn_00415334:
    ret ; 00415334 C3
    %if ($ - %%insn_00415334) > 1
        %error "LONG_00415334"
    %endif
    times 1 - ($ - %%insn_00415334) db 0
    %%insn_00415335:
    mov al,[ebp+0x0] ; 00415335 8A4500
    %if ($ - %%insn_00415335) > 3
        %error "LONG_00415335"
    %endif
    times 3 - ($ - %%insn_00415335) db 0
    db 0x33, 0xD2 ; 00415338 33D2 | xor edx,edx | encoding preserved
    %%insn_0041533a:
    test al,al ; 0041533A 84C0
    %if ($ - %%insn_0041533a) > 2
        %error "LONG_0041533A"
    %endif
    times 2 - ($ - %%insn_0041533a) db 0
    %%insn_0041533c:
    mov [esp+0x10],edx ; 0041533C 89542410
    %if ($ - %%insn_0041533c) > 4
        %error "LONG_0041533C"
    %endif
    times 4 - ($ - %%insn_0041533c) db 0
    %%insn_00415340:
    jz short 0x415368 ; 00415340 7426
    %if ($ - %%insn_00415340) > 2
        %error "LONG_00415340"
    %endif
    times 2 - ($ - %%insn_00415340) db 0
    db 0x8B, 0xFD ; 00415342 8BFD | mov edi,ebp | encoding preserved
    %%insn_00415344:
    mov al,[edi] ; 00415344 8A07
    %if ($ - %%insn_00415344) > 2
        %error "LONG_00415344"
    %endif
    times 2 - ($ - %%insn_00415344) db 0
    %%insn_00415346:
    cmp al,0x3d ; 00415346 3C3D
    %if ($ - %%insn_00415346) > 2
        %error "LONG_00415346"
    %endif
    times 2 - ($ - %%insn_00415346) db 0
    %%insn_00415348:
    jz short 0x415368 ; 00415348 741E
    %if ($ - %%insn_00415348) > 2
        %error "LONG_00415348"
    %endif
    times 2 - ($ - %%insn_00415348) db 0
    %%insn_0041534a:
    or ecx,0xffffffffffffffff ; 0041534A 83C9FF
    %if ($ - %%insn_0041534a) > 3
        %error "LONG_0041534A"
    %endif
    times 3 - ($ - %%insn_0041534a) db 0
    db 0x33, 0xC0 ; 0041534D 33C0 | xor eax,eax | encoding preserved
    %%insn_0041534f:
    repne scasb ; 0041534F F2AE
    %if ($ - %%insn_0041534f) > 2
        %error "LONG_0041534F"
    %endif
    times 2 - ($ - %%insn_0041534f) db 0
    %%insn_00415351:
    not ecx ; 00415351 F7D1
    %if ($ - %%insn_00415351) > 2
        %error "LONG_00415351"
    %endif
    times 2 - ($ - %%insn_00415351) db 0
    %%insn_00415353:
    dec ecx ; 00415353 49
    %if ($ - %%insn_00415353) > 1
        %error "LONG_00415353"
    %endif
    times 1 - ($ - %%insn_00415353) db 0
    %%insn_00415354:
    lea edi,[edx+ecx+0x1] ; 00415354 8D7C0A01
    %if ($ - %%insn_00415354) > 4
        %error "LONG_00415354"
    %endif
    times 4 - ($ - %%insn_00415354) db 0
    %%insn_00415358:
    mov [esp+0x10],edi ; 00415358 897C2410
    %if ($ - %%insn_00415358) > 4
        %error "LONG_00415358"
    %endif
    times 4 - ($ - %%insn_00415358) db 0
    db 0x03, 0xFD ; 0041535C 03FD | add edi,ebp | encoding preserved
    %%insn_0041535e:
    mov edx,[esp+0x10] ; 0041535E 8B542410
    %if ($ - %%insn_0041535e) > 4
        %error "LONG_0041535E"
    %endif
    times 4 - ($ - %%insn_0041535e) db 0
    %%insn_00415362:
    mov al,[edi] ; 00415362 8A07
    %if ($ - %%insn_00415362) > 2
        %error "LONG_00415362"
    %endif
    times 2 - ($ - %%insn_00415362) db 0
    %%insn_00415364:
    test al,al ; 00415364 84C0
    %if ($ - %%insn_00415364) > 2
        %error "LONG_00415364"
    %endif
    times 2 - ($ - %%insn_00415364) db 0
    %%insn_00415366:
    jnz short 0x415346 ; 00415366 75DE
    %if ($ - %%insn_00415366) > 2
        %error "LONG_00415366"
    %endif
    times 2 - ($ - %%insn_00415366) db 0
    %%insn_00415368:
    mov al,[edx+ebp] ; 00415368 8A042A
    %if ($ - %%insn_00415368) > 3
        %error "LONG_00415368"
    %endif
    times 3 - ($ - %%insn_00415368) db 0
    db 0x8B, 0xDA ; 0041536B 8BDA | mov ebx,edx | encoding preserved
    %%insn_0041536d:
    cmp al,0x3d ; 0041536D 3C3D
    %if ($ - %%insn_0041536d) > 2
        %error "LONG_0041536D"
    %endif
    times 2 - ($ - %%insn_0041536d) db 0
    %%insn_0041536f:
    jnz short 0x41539f ; 0041536F 752E
    %if ($ - %%insn_0041536f) > 2
        %error "LONG_0041536F"
    %endif
    times 2 - ($ - %%insn_0041536f) db 0
    %%insn_00415371:
    mov al,[ebx+ebp+0x1] ; 00415371 8A442B01
    %if ($ - %%insn_00415371) > 4
        %error "LONG_00415371"
    %endif
    times 4 - ($ - %%insn_00415371) db 0
    %%insn_00415375:
    test al,al ; 00415375 84C0
    %if ($ - %%insn_00415375) > 2
        %error "LONG_00415375"
    %endif
    times 2 - ($ - %%insn_00415375) db 0
    %%insn_00415377:
    jz short 0x41539f ; 00415377 7426
    %if ($ - %%insn_00415377) > 2
        %error "LONG_00415377"
    %endif
    times 2 - ($ - %%insn_00415377) db 0
    %%insn_00415379:
    cmp byte [ebx+ebp+0x2],0x3a ; 00415379 807C2B023A
    %if ($ - %%insn_00415379) > 5
        %error "LONG_00415379"
    %endif
    times 5 - ($ - %%insn_00415379) db 0
    %%insn_0041537e:
    jnz short 0x41539f ; 0041537E 751F
    %if ($ - %%insn_0041537e) > 2
        %error "LONG_0041537E"
    %endif
    times 2 - ($ - %%insn_0041537e) db 0
    %%insn_00415380:
    cmp byte [ebx+ebp+0x3],0x3d ; 00415380 807C2B033D
    %if ($ - %%insn_00415380) > 5
        %error "LONG_00415380"
    %endif
    times 5 - ($ - %%insn_00415380) db 0
    %%insn_00415385:
    jnz short 0x41539f ; 00415385 7518
    %if ($ - %%insn_00415385) > 2
        %error "LONG_00415385"
    %endif
    times 2 - ($ - %%insn_00415385) db 0
    %%insn_00415387:
    lea edi,[ebx+ebp+0x4] ; 00415387 8D7C2B04
    %if ($ - %%insn_00415387) > 4
        %error "LONG_00415387"
    %endif
    times 4 - ($ - %%insn_00415387) db 0
    %%insn_0041538b:
    or ecx,0xffffffffffffffff ; 0041538B 83C9FF
    %if ($ - %%insn_0041538b) > 3
        %error "LONG_0041538B"
    %endif
    times 3 - ($ - %%insn_0041538b) db 0
    db 0x33, 0xC0 ; 0041538E 33C0 | xor eax,eax | encoding preserved
    %%insn_00415390:
    repne scasb ; 00415390 F2AE
    %if ($ - %%insn_00415390) > 2
        %error "LONG_00415390"
    %endif
    times 2 - ($ - %%insn_00415390) db 0
    %%insn_00415392:
    not ecx ; 00415392 F7D1
    %if ($ - %%insn_00415392) > 2
        %error "LONG_00415392"
    %endif
    times 2 - ($ - %%insn_00415392) db 0
    %%insn_00415394:
    dec ecx ; 00415394 49
    %if ($ - %%insn_00415394) > 1
        %error "LONG_00415394"
    %endif
    times 1 - ($ - %%insn_00415394) db 0
    %%insn_00415395:
    lea ebx,[ebx+ecx+0x5] ; 00415395 8D5C0B05
    %if ($ - %%insn_00415395) > 4
        %error "LONG_00415395"
    %endif
    times 4 - ($ - %%insn_00415395) db 0
    %%insn_00415399:
    cmp byte [ebx+ebp],0x3d ; 00415399 803C2B3D
    %if ($ - %%insn_00415399) > 4
        %error "LONG_00415399"
    %endif
    times 4 - ($ - %%insn_00415399) db 0
    %%insn_0041539d:
    jz short 0x415371 ; 0041539D 74D2
    %if ($ - %%insn_0041539d) > 2
        %error "LONG_0041539D"
    %endif
    times 2 - ($ - %%insn_0041539d) db 0
    %%insn_0041539f:
    lea ecx,[ebx+esi] ; 0041539F 8D0C33
    %if ($ - %%insn_0041539f) > 3
        %error "LONG_0041539F"
    %endif
    times 3 - ($ - %%insn_0041539f) db 0
    db 0x2B, 0xCA ; 004153A2 2BCA | sub ecx,edx | encoding preserved
    %%insn_004153a4:
    push ecx ; 004153A4 51
    %if ($ - %%insn_004153a4) > 1
        %error "LONG_004153A4"
    %endif
    times 1 - ($ - %%insn_004153a4) db 0
    %%insn_004153a5:
    call 0x40cdc0 ; 004153A5 E8167AFFFF
    %if ($ - %%insn_004153a5) > 5
        %error "LONG_004153A5"
    %endif
    times 5 - ($ - %%insn_004153a5) db 0
    %%insn_004153aa:
    mov edx,[esp+0x28] ; 004153AA 8B542428
    %if ($ - %%insn_004153aa) > 4
        %error "LONG_004153AA"
    %endif
    times 4 - ($ - %%insn_004153aa) db 0
    %%insn_004153ae:
    add esp,0x4 ; 004153AE 83C404
    %if ($ - %%insn_004153ae) > 3
        %error "LONG_004153AE"
    %endif
    times 3 - ($ - %%insn_004153ae) db 0
    %%insn_004153b1:
    test eax,eax ; 004153B1 85C0
    %if ($ - %%insn_004153b1) > 2
        %error "LONG_004153B1"
    %endif
    times 2 - ($ - %%insn_004153b1) db 0
    %%insn_004153b3:
    mov [edx],eax ; 004153B3 8902
    %if ($ - %%insn_004153b3) > 2
        %error "LONG_004153B3"
    %endif
    times 2 - ($ - %%insn_004153b3) db 0
    %%insn_004153b5:
    jnz short 0x4153eb ; 004153B5 7534
    %if ($ - %%insn_004153b5) > 2
        %error "LONG_004153B5"
    %endif
    times 2 - ($ - %%insn_004153b5) db 0
    %%insn_004153b7:
    mov esi,[esp+0x20] ; 004153B7 8B742420
    %if ($ - %%insn_004153b7) > 4
        %error "LONG_004153B7"
    %endif
    times 4 - ($ - %%insn_004153b7) db 0
    %%insn_004153bb:
    mov eax,[esi] ; 004153BB 8B06
    %if ($ - %%insn_004153bb) > 2
        %error "LONG_004153BB"
    %endif
    times 2 - ($ - %%insn_004153bb) db 0
    %%insn_004153bd:
    push eax ; 004153BD 50
    %if ($ - %%insn_004153bd) > 1
        %error "LONG_004153BD"
    %endif
    times 1 - ($ - %%insn_004153bd) db 0
    %%insn_004153be:
    call 0x40c9a0 ; 004153BE E8DD75FFFF
    %if ($ - %%insn_004153be) > 5
        %error "LONG_004153BE"
    %endif
    times 5 - ($ - %%insn_004153be) db 0
    %%insn_004153c3:
    add esp,0x4 ; 004153C3 83C404
    %if ($ - %%insn_004153c3) > 3
        %error "LONG_004153C3"
    %endif
    times 3 - ($ - %%insn_004153c3) db 0
    %%insn_004153c6:
    mov dword [esi],0x0 ; 004153C6 C70600000000
    %if ($ - %%insn_004153c6) > 6
        %error "LONG_004153C6"
    %endif
    times 6 - ($ - %%insn_004153c6) db 0
    %%insn_004153cc:
    call 0x410e10 ; 004153CC E83FBAFFFF
    %if ($ - %%insn_004153cc) > 5
        %error "LONG_004153CC"
    %endif
    times 5 - ($ - %%insn_004153cc) db 0
    %%insn_004153d1:
    mov dword [eax],0xc ; 004153D1 C7000C000000
    %if ($ - %%insn_004153d1) > 6
        %error "LONG_004153D1"
    %endif
    times 6 - ($ - %%insn_004153d1) db 0
    %%insn_004153d7:
    call 0x410e20 ; 004153D7 E844BAFFFF
    %if ($ - %%insn_004153d7) > 5
        %error "LONG_004153D7"
    %endif
    times 5 - ($ - %%insn_004153d7) db 0
    %%insn_004153dc:
    mov dword [eax],0x8 ; 004153DC C70008000000
    %if ($ - %%insn_004153dc) > 6
        %error "LONG_004153DC"
    %endif
    times 6 - ($ - %%insn_004153dc) db 0
    %%insn_004153e2:
    or eax,0xffffffffffffffff ; 004153E2 83C8FF
    %if ($ - %%insn_004153e2) > 3
        %error "LONG_004153E2"
    %endif
    times 3 - ($ - %%insn_004153e2) db 0
    %%insn_004153e5:
    pop edi ; 004153E5 5F
    %if ($ - %%insn_004153e5) > 1
        %error "LONG_004153E5"
    %endif
    times 1 - ($ - %%insn_004153e5) db 0
    %%insn_004153e6:
    pop esi ; 004153E6 5E
    %if ($ - %%insn_004153e6) > 1
        %error "LONG_004153E6"
    %endif
    times 1 - ($ - %%insn_004153e6) db 0
    %%insn_004153e7:
    pop ebp ; 004153E7 5D
    %if ($ - %%insn_004153e7) > 1
        %error "LONG_004153E7"
    %endif
    times 1 - ($ - %%insn_004153e7) db 0
    %%insn_004153e8:
    pop ebx ; 004153E8 5B
    %if ($ - %%insn_004153e8) > 1
        %error "LONG_004153E8"
    %endif
    times 1 - ($ - %%insn_004153e8) db 0
    %%insn_004153e9:
    pop ecx ; 004153E9 59
    %if ($ - %%insn_004153e9) > 1
        %error "LONG_004153E9"
    %endif
    times 1 - ($ - %%insn_004153e9) db 0
    %%insn_004153ea:
    ret ; 004153EA C3
    %if ($ - %%insn_004153ea) > 1
        %error "LONG_004153EA"
    %endif
    times 1 - ($ - %%insn_004153ea) db 0
    %%insn_004153eb:
    mov ebp,[esp+0x18] ; 004153EB 8B6C2418
    %if ($ - %%insn_004153eb) > 4
        %error "LONG_004153EB"
    %endif
    times 4 - ($ - %%insn_004153eb) db 0
    %%insn_004153ef:
    mov eax,[esp+0x18] ; 004153EF 8B442418
    %if ($ - %%insn_004153ef) > 4
        %error "LONG_004153EF"
    %endif
    times 4 - ($ - %%insn_004153ef) db 0
    %%insn_004153f3:
    mov ecx,[esp+0x20] ; 004153F3 8B4C2420
    %if ($ - %%insn_004153f3) > 4
        %error "LONG_004153F3"
    %endif
    times 4 - ($ - %%insn_004153f3) db 0
    %%insn_004153f7:
    mov edi,[eax] ; 004153F7 8B38
    %if ($ - %%insn_004153f7) > 2
        %error "LONG_004153F7"
    %endif
    times 2 - ($ - %%insn_004153f7) db 0
    %%insn_004153f9:
    mov edx,[ecx] ; 004153F9 8B11
    %if ($ - %%insn_004153f9) > 2
        %error "LONG_004153F9"
    %endif
    times 2 - ($ - %%insn_004153f9) db 0
    %%insn_004153fb:
    test edi,edi ; 004153FB 85FF
    %if ($ - %%insn_004153fb) > 2
        %error "LONG_004153FB"
    %endif
    times 2 - ($ - %%insn_004153fb) db 0
    %%insn_004153fd:
    jnz short 0x415402 ; 004153FD 7503
    %if ($ - %%insn_004153fd) > 2
        %error "LONG_004153FD"
    %endif
    times 2 - ($ - %%insn_004153fd) db 0
    %%insn_004153ff:
    inc edx ; 004153FF 42
    %if ($ - %%insn_004153ff) > 1
        %error "LONG_004153FF"
    %endif
    times 1 - ($ - %%insn_004153ff) db 0
    %%insn_00415400:
    jmp short 0x415436 ; 00415400 EB34
    %if ($ - %%insn_00415400) > 2
        %error "LONG_00415400"
    %endif
    times 2 - ($ - %%insn_00415400) db 0
    %%insn_00415402:
    or ecx,0xffffffffffffffff ; 00415402 83C9FF
    %if ($ - %%insn_00415402) > 3
        %error "LONG_00415402"
    %endif
    times 3 - ($ - %%insn_00415402) db 0
    db 0x33, 0xC0 ; 00415405 33C0 | xor eax,eax | encoding preserved
    %%insn_00415407:
    repne scasb ; 00415407 F2AE
    %if ($ - %%insn_00415407) > 2
        %error "LONG_00415407"
    %endif
    times 2 - ($ - %%insn_00415407) db 0
    %%insn_00415409:
    not ecx ; 00415409 F7D1
    %if ($ - %%insn_00415409) > 2
        %error "LONG_00415409"
    %endif
    times 2 - ($ - %%insn_00415409) db 0
    db 0x2B, 0xF9 ; 0041540B 2BF9 | sub edi,ecx | encoding preserved
    db 0x8B, 0xC1 ; 0041540D 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xF7 ; 0041540F 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xFA ; 00415411 8BFA | mov edi,edx | encoding preserved
    %%insn_00415413:
    shr ecx,byte 0x2 ; 00415413 C1E902
    %if ($ - %%insn_00415413) > 3
        %error "LONG_00415413"
    %endif
    times 3 - ($ - %%insn_00415413) db 0
    %%insn_00415416:
    rep movsd ; 00415416 F3A5
    %if ($ - %%insn_00415416) > 2
        %error "LONG_00415416"
    %endif
    times 2 - ($ - %%insn_00415416) db 0
    db 0x8B, 0xC8 ; 00415418 8BC8 | mov ecx,eax | encoding preserved
    %%insn_0041541a:
    mov eax,[esp+0x18] ; 0041541A 8B442418
    %if ($ - %%insn_0041541a) > 4
        %error "LONG_0041541A"
    %endif
    times 4 - ($ - %%insn_0041541a) db 0
    %%insn_0041541e:
    and ecx,0x3 ; 0041541E 83E103
    %if ($ - %%insn_0041541e) > 3
        %error "LONG_0041541E"
    %endif
    times 3 - ($ - %%insn_0041541e) db 0
    %%insn_00415421:
    rep movsb ; 00415421 F3A4
    %if ($ - %%insn_00415421) > 2
        %error "LONG_00415421"
    %endif
    times 2 - ($ - %%insn_00415421) db 0
    %%insn_00415423:
    mov edi,[eax] ; 00415423 8B38
    %if ($ - %%insn_00415423) > 2
        %error "LONG_00415423"
    %endif
    times 2 - ($ - %%insn_00415423) db 0
    %%insn_00415425:
    lea ebp,[eax+0x4] ; 00415425 8D6804
    %if ($ - %%insn_00415425) > 3
        %error "LONG_00415425"
    %endif
    times 3 - ($ - %%insn_00415425) db 0
    %%insn_00415428:
    or ecx,0xffffffffffffffff ; 00415428 83C9FF
    %if ($ - %%insn_00415428) > 3
        %error "LONG_00415428"
    %endif
    times 3 - ($ - %%insn_00415428) db 0
    db 0x33, 0xC0 ; 0041542B 33C0 | xor eax,eax | encoding preserved
    %%insn_0041542d:
    repne scasb ; 0041542D F2AE
    %if ($ - %%insn_0041542d) > 2
        %error "LONG_0041542D"
    %endif
    times 2 - ($ - %%insn_0041542d) db 0
    %%insn_0041542f:
    not ecx ; 0041542F F7D1
    %if ($ - %%insn_0041542f) > 2
        %error "LONG_0041542F"
    %endif
    times 2 - ($ - %%insn_0041542f) db 0
    %%insn_00415431:
    dec ecx ; 00415431 49
    %if ($ - %%insn_00415431) > 1
        %error "LONG_00415431"
    %endif
    times 1 - ($ - %%insn_00415431) db 0
    %%insn_00415432:
    lea edx,[edx+ecx+0x1] ; 00415432 8D540A01
    %if ($ - %%insn_00415432) > 4
        %error "LONG_00415432"
    %endif
    times 4 - ($ - %%insn_00415432) db 0
    %%insn_00415436:
    mov edi,[ebp+0x0] ; 00415436 8B7D00
    %if ($ - %%insn_00415436) > 3
        %error "LONG_00415436"
    %endif
    times 3 - ($ - %%insn_00415436) db 0
    %%insn_00415439:
    test edi,edi ; 00415439 85FF
    %if ($ - %%insn_00415439) > 2
        %error "LONG_00415439"
    %endif
    times 2 - ($ - %%insn_00415439) db 0
    %%insn_0041543b:
    jz short 0x415477 ; 0041543B 743A
    %if ($ - %%insn_0041543b) > 2
        %error "LONG_0041543B"
    %endif
    times 2 - ($ - %%insn_0041543b) db 0
    %%insn_0041543d:
    or ecx,0xffffffffffffffff ; 0041543D 83C9FF
    %if ($ - %%insn_0041543d) > 3
        %error "LONG_0041543D"
    %endif
    times 3 - ($ - %%insn_0041543d) db 0
    db 0x33, 0xC0 ; 00415440 33C0 | xor eax,eax | encoding preserved
    %%insn_00415442:
    repne scasb ; 00415442 F2AE
    %if ($ - %%insn_00415442) > 2
        %error "LONG_00415442"
    %endif
    times 2 - ($ - %%insn_00415442) db 0
    %%insn_00415444:
    not ecx ; 00415444 F7D1
    %if ($ - %%insn_00415444) > 2
        %error "LONG_00415444"
    %endif
    times 2 - ($ - %%insn_00415444) db 0
    db 0x2B, 0xF9 ; 00415446 2BF9 | sub edi,ecx | encoding preserved
    %%insn_00415448:
    add ebp,0x4 ; 00415448 83C504
    %if ($ - %%insn_00415448) > 3
        %error "LONG_00415448"
    %endif
    times 3 - ($ - %%insn_00415448) db 0
    db 0x8B, 0xC1 ; 0041544B 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xF7 ; 0041544D 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xFA ; 0041544F 8BFA | mov edi,edx | encoding preserved
    %%insn_00415451:
    shr ecx,byte 0x2 ; 00415451 C1E902
    %if ($ - %%insn_00415451) > 3
        %error "LONG_00415451"
    %endif
    times 3 - ($ - %%insn_00415451) db 0
    %%insn_00415454:
    rep movsd ; 00415454 F3A5
    %if ($ - %%insn_00415454) > 2
        %error "LONG_00415454"
    %endif
    times 2 - ($ - %%insn_00415454) db 0
    db 0x8B, 0xC8 ; 00415456 8BC8 | mov ecx,eax | encoding preserved
    db 0x33, 0xC0 ; 00415458 33C0 | xor eax,eax | encoding preserved
    %%insn_0041545a:
    and ecx,0x3 ; 0041545A 83E103
    %if ($ - %%insn_0041545a) > 3
        %error "LONG_0041545A"
    %endif
    times 3 - ($ - %%insn_0041545a) db 0
    %%insn_0041545d:
    rep movsb ; 0041545D F3A4
    %if ($ - %%insn_0041545d) > 2
        %error "LONG_0041545D"
    %endif
    times 2 - ($ - %%insn_0041545d) db 0
    %%insn_0041545f:
    mov edi,[ebp-0x4] ; 0041545F 8B7DFC
    %if ($ - %%insn_0041545f) > 3
        %error "LONG_0041545F"
    %endif
    times 3 - ($ - %%insn_0041545f) db 0
    %%insn_00415462:
    or ecx,0xffffffffffffffff ; 00415462 83C9FF
    %if ($ - %%insn_00415462) > 3
        %error "LONG_00415462"
    %endif
    times 3 - ($ - %%insn_00415462) db 0
    %%insn_00415465:
    repne scasb ; 00415465 F2AE
    %if ($ - %%insn_00415465) > 2
        %error "LONG_00415465"
    %endif
    times 2 - ($ - %%insn_00415465) db 0
    %%insn_00415467:
    not ecx ; 00415467 F7D1
    %if ($ - %%insn_00415467) > 2
        %error "LONG_00415467"
    %endif
    times 2 - ($ - %%insn_00415467) db 0
    %%insn_00415469:
    dec ecx ; 00415469 49
    %if ($ - %%insn_00415469) > 1
        %error "LONG_00415469"
    %endif
    times 1 - ($ - %%insn_00415469) db 0
    db 0x03, 0xD1 ; 0041546A 03D1 | add edx,ecx | encoding preserved
    %%insn_0041546c:
    mov byte [edx],0x20 ; 0041546C C60220
    %if ($ - %%insn_0041546c) > 3
        %error "LONG_0041546C"
    %endif
    times 3 - ($ - %%insn_0041546c) db 0
    %%insn_0041546f:
    mov edi,[ebp+0x0] ; 0041546F 8B7D00
    %if ($ - %%insn_0041546f) > 3
        %error "LONG_0041546F"
    %endif
    times 3 - ($ - %%insn_0041546f) db 0
    %%insn_00415472:
    inc edx ; 00415472 42
    %if ($ - %%insn_00415472) > 1
        %error "LONG_00415472"
    %endif
    times 1 - ($ - %%insn_00415472) db 0
    %%insn_00415473:
    test edi,edi ; 00415473 85FF
    %if ($ - %%insn_00415473) > 2
        %error "LONG_00415473"
    %endif
    times 2 - ($ - %%insn_00415473) db 0
    %%insn_00415475:
    jnz short 0x41543d ; 00415475 75C6
    %if ($ - %%insn_00415475) > 2
        %error "LONG_00415475"
    %endif
    times 2 - ($ - %%insn_00415475) db 0
    %%insn_00415477:
    mov ecx,[esp+0x24] ; 00415477 8B4C2424
    %if ($ - %%insn_00415477) > 4
        %error "LONG_00415477"
    %endif
    times 4 - ($ - %%insn_00415477) db 0
    %%insn_0041547b:
    mov eax,[esp+0x1c] ; 0041547B 8B44241C
    %if ($ - %%insn_0041547b) > 4
        %error "LONG_0041547B"
    %endif
    times 4 - ($ - %%insn_0041547b) db 0
    %%insn_0041547f:
    mov byte [edx-0x1],0x0 ; 0041547F C642FF00
    %if ($ - %%insn_0041547f) > 4
        %error "LONG_0041547F"
    %endif
    times 4 - ($ - %%insn_0041547f) db 0
    %%insn_00415483:
    mov byte [edx],0x0 ; 00415483 C60200
    %if ($ - %%insn_00415483) > 3
        %error "LONG_00415483"
    %endif
    times 3 - ($ - %%insn_00415483) db 0
    %%insn_00415486:
    mov edx,[ecx] ; 00415486 8B11
    %if ($ - %%insn_00415486) > 2
        %error "LONG_00415486"
    %endif
    times 2 - ($ - %%insn_00415486) db 0
    %%insn_00415488:
    test eax,eax ; 00415488 85C0
    %if ($ - %%insn_00415488) > 2
        %error "LONG_00415488"
    %endif
    times 2 - ($ - %%insn_00415488) db 0
    %%insn_0041548a:
    jz short 0x4154f3 ; 0041548A 7467
    %if ($ - %%insn_0041548a) > 2
        %error "LONG_0041548A"
    %endif
    times 2 - ($ - %%insn_0041548a) db 0
    %%insn_0041548c:
    mov eax,[esp+0x10] ; 0041548C 8B442410
    %if ($ - %%insn_0041548c) > 4
        %error "LONG_0041548C"
    %endif
    times 4 - ($ - %%insn_0041548c) db 0
    %%insn_00415490:
    mov esi,[0x420e98] ; 00415490 8B35980E4200
    %if ($ - %%insn_00415490) > 6
        %error "LONG_00415490"
    %endif
    times 6 - ($ - %%insn_00415490) db 0
    db 0x8B, 0xCB ; 00415496 8BCB | mov ecx,ebx | encoding preserved
    db 0x03, 0xF0 ; 00415498 03F0 | add esi,eax | encoding preserved
    db 0x2B, 0xC8 ; 0041549A 2BC8 | sub ecx,eax | encoding preserved
    db 0x8B, 0xFA ; 0041549C 8BFA | mov edi,edx | encoding preserved
    db 0x8B, 0xC1 ; 0041549E 8BC1 | mov eax,ecx | encoding preserved
    %%insn_004154a0:
    shr ecx,byte 0x2 ; 004154A0 C1E902
    %if ($ - %%insn_004154a0) > 3
        %error "LONG_004154A0"
    %endif
    times 3 - ($ - %%insn_004154a0) db 0
    %%insn_004154a3:
    rep movsd ; 004154A3 F3A5
    %if ($ - %%insn_004154a3) > 2
        %error "LONG_004154A3"
    %endif
    times 2 - ($ - %%insn_004154a3) db 0
    db 0x8B, 0xC8 ; 004154A5 8BC8 | mov ecx,eax | encoding preserved
    %%insn_004154a7:
    and ecx,0x3 ; 004154A7 83E103
    %if ($ - %%insn_004154a7) > 3
        %error "LONG_004154A7"
    %endif
    times 3 - ($ - %%insn_004154a7) db 0
    %%insn_004154aa:
    rep movsb ; 004154AA F3A4
    %if ($ - %%insn_004154aa) > 2
        %error "LONG_004154AA"
    %endif
    times 2 - ($ - %%insn_004154aa) db 0
    %%insn_004154ac:
    sub ebx,[esp+0x10] ; 004154AC 2B5C2410
    %if ($ - %%insn_004154ac) > 4
        %error "LONG_004154AC"
    %endif
    times 4 - ($ - %%insn_004154ac) db 0
    db 0x03, 0xD3 ; 004154B0 03D3 | add edx,ebx | encoding preserved
    %%insn_004154b2:
    mov ebx,[esp+0x1c] ; 004154B2 8B5C241C
    %if ($ - %%insn_004154b2) > 4
        %error "LONG_004154B2"
    %endif
    times 4 - ($ - %%insn_004154b2) db 0
    %%insn_004154b6:
    mov edi,[ebx] ; 004154B6 8B3B
    %if ($ - %%insn_004154b6) > 2
        %error "LONG_004154B6"
    %endif
    times 2 - ($ - %%insn_004154b6) db 0
    %%insn_004154b8:
    test edi,edi ; 004154B8 85FF
    %if ($ - %%insn_004154b8) > 2
        %error "LONG_004154B8"
    %endif
    times 2 - ($ - %%insn_004154b8) db 0
    %%insn_004154ba:
    jz short 0x4154f3 ; 004154BA 7437
    %if ($ - %%insn_004154ba) > 2
        %error "LONG_004154BA"
    %endif
    times 2 - ($ - %%insn_004154ba) db 0
    %%insn_004154bc:
    or ecx,0xffffffffffffffff ; 004154BC 83C9FF
    %if ($ - %%insn_004154bc) > 3
        %error "LONG_004154BC"
    %endif
    times 3 - ($ - %%insn_004154bc) db 0
    db 0x33, 0xC0 ; 004154BF 33C0 | xor eax,eax | encoding preserved
    %%insn_004154c1:
    repne scasb ; 004154C1 F2AE
    %if ($ - %%insn_004154c1) > 2
        %error "LONG_004154C1"
    %endif
    times 2 - ($ - %%insn_004154c1) db 0
    %%insn_004154c3:
    not ecx ; 004154C3 F7D1
    %if ($ - %%insn_004154c3) > 2
        %error "LONG_004154C3"
    %endif
    times 2 - ($ - %%insn_004154c3) db 0
    db 0x2B, 0xF9 ; 004154C5 2BF9 | sub edi,ecx | encoding preserved
    %%insn_004154c7:
    add ebx,0x4 ; 004154C7 83C304
    %if ($ - %%insn_004154c7) > 3
        %error "LONG_004154C7"
    %endif
    times 3 - ($ - %%insn_004154c7) db 0
    db 0x8B, 0xC1 ; 004154CA 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xF7 ; 004154CC 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xFA ; 004154CE 8BFA | mov edi,edx | encoding preserved
    %%insn_004154d0:
    shr ecx,byte 0x2 ; 004154D0 C1E902
    %if ($ - %%insn_004154d0) > 3
        %error "LONG_004154D0"
    %endif
    times 3 - ($ - %%insn_004154d0) db 0
    %%insn_004154d3:
    rep movsd ; 004154D3 F3A5
    %if ($ - %%insn_004154d3) > 2
        %error "LONG_004154D3"
    %endif
    times 2 - ($ - %%insn_004154d3) db 0
    db 0x8B, 0xC8 ; 004154D5 8BC8 | mov ecx,eax | encoding preserved
    db 0x33, 0xC0 ; 004154D7 33C0 | xor eax,eax | encoding preserved
    %%insn_004154d9:
    and ecx,0x3 ; 004154D9 83E103
    %if ($ - %%insn_004154d9) > 3
        %error "LONG_004154D9"
    %endif
    times 3 - ($ - %%insn_004154d9) db 0
    %%insn_004154dc:
    rep movsb ; 004154DC F3A4
    %if ($ - %%insn_004154dc) > 2
        %error "LONG_004154DC"
    %endif
    times 2 - ($ - %%insn_004154dc) db 0
    %%insn_004154de:
    mov edi,[ebx-0x4] ; 004154DE 8B7BFC
    %if ($ - %%insn_004154de) > 3
        %error "LONG_004154DE"
    %endif
    times 3 - ($ - %%insn_004154de) db 0
    %%insn_004154e1:
    or ecx,0xffffffffffffffff ; 004154E1 83C9FF
    %if ($ - %%insn_004154e1) > 3
        %error "LONG_004154E1"
    %endif
    times 3 - ($ - %%insn_004154e1) db 0
    %%insn_004154e4:
    repne scasb ; 004154E4 F2AE
    %if ($ - %%insn_004154e4) > 2
        %error "LONG_004154E4"
    %endif
    times 2 - ($ - %%insn_004154e4) db 0
    %%insn_004154e6:
    mov edi,[ebx] ; 004154E6 8B3B
    %if ($ - %%insn_004154e6) > 2
        %error "LONG_004154E6"
    %endif
    times 2 - ($ - %%insn_004154e6) db 0
    %%insn_004154e8:
    not ecx ; 004154E8 F7D1
    %if ($ - %%insn_004154e8) > 2
        %error "LONG_004154E8"
    %endif
    times 2 - ($ - %%insn_004154e8) db 0
    %%insn_004154ea:
    dec ecx ; 004154EA 49
    %if ($ - %%insn_004154ea) > 1
        %error "LONG_004154EA"
    %endif
    times 1 - ($ - %%insn_004154ea) db 0
    %%insn_004154eb:
    test edi,edi ; 004154EB 85FF
    %if ($ - %%insn_004154eb) > 2
        %error "LONG_004154EB"
    %endif
    times 2 - ($ - %%insn_004154eb) db 0
    %%insn_004154ed:
    lea edx,[edx+ecx+0x1] ; 004154ED 8D540A01
    %if ($ - %%insn_004154ed) > 4
        %error "LONG_004154ED"
    %endif
    times 4 - ($ - %%insn_004154ed) db 0
    %%insn_004154f1:
    jnz short 0x4154bc ; 004154F1 75C9
    %if ($ - %%insn_004154f1) > 2
        %error "LONG_004154F1"
    %endif
    times 2 - ($ - %%insn_004154f1) db 0
    %%insn_004154f3:
    test edx,edx ; 004154F3 85D2
    %if ($ - %%insn_004154f3) > 2
        %error "LONG_004154F3"
    %endif
    times 2 - ($ - %%insn_004154f3) db 0
    %%insn_004154f5:
    jz short 0x415506 ; 004154F5 740F
    %if ($ - %%insn_004154f5) > 2
        %error "LONG_004154F5"
    %endif
    times 2 - ($ - %%insn_004154f5) db 0
    %%insn_004154f7:
    mov ecx,[esp+0x24] ; 004154F7 8B4C2424
    %if ($ - %%insn_004154f7) > 4
        %error "LONG_004154F7"
    %endif
    times 4 - ($ - %%insn_004154f7) db 0
    %%insn_004154fb:
    cmp edx,[ecx] ; 004154FB 3B11
    %if ($ - %%insn_004154fb) > 2
        %error "LONG_004154FB"
    %endif
    times 2 - ($ - %%insn_004154fb) db 0
    %%insn_004154fd:
    jnz short 0x415503 ; 004154FD 7504
    %if ($ - %%insn_004154fd) > 2
        %error "LONG_004154FD"
    %endif
    times 2 - ($ - %%insn_004154fd) db 0
    %%insn_004154ff:
    mov byte [edx],0x0 ; 004154FF C60200
    %if ($ - %%insn_004154ff) > 3
        %error "LONG_004154FF"
    %endif
    times 3 - ($ - %%insn_004154ff) db 0
    %%insn_00415502:
    inc edx ; 00415502 42
    %if ($ - %%insn_00415502) > 1
        %error "LONG_00415502"
    %endif
    times 1 - ($ - %%insn_00415502) db 0
    %%insn_00415503:
    mov byte [edx],0x0 ; 00415503 C60200
    %if ($ - %%insn_00415503) > 3
        %error "LONG_00415503"
    %endif
    times 3 - ($ - %%insn_00415503) db 0
    %%insn_00415506:
    mov edx,[0x420e98] ; 00415506 8B15980E4200
    %if ($ - %%insn_00415506) > 6
        %error "LONG_00415506"
    %endif
    times 6 - ($ - %%insn_00415506) db 0
    %%insn_0041550c:
    push edx ; 0041550C 52
    %if ($ - %%insn_0041550c) > 1
        %error "LONG_0041550C"
    %endif
    times 1 - ($ - %%insn_0041550c) db 0
    %%insn_0041550d:
    call 0x40c9a0 ; 0041550D E88E74FFFF
    %if ($ - %%insn_0041550d) > 5
        %error "LONG_0041550D"
    %endif
    times 5 - ($ - %%insn_0041550d) db 0
    %%insn_00415512:
    add esp,0x4 ; 00415512 83C404
    %if ($ - %%insn_00415512) > 3
        %error "LONG_00415512"
    %endif
    times 3 - ($ - %%insn_00415512) db 0
    %%insn_00415515:
    mov dword [0x420e98],0x0 ; 00415515 C705980E420000000000
    %if ($ - %%insn_00415515) > 10
        %error "LONG_00415515"
    %endif
    times 10 - ($ - %%insn_00415515) db 0
    db 0x33, 0xC0 ; 0041551F 33C0 | xor eax,eax | encoding preserved
    %%insn_00415521:
    pop edi ; 00415521 5F
    %if ($ - %%insn_00415521) > 1
        %error "LONG_00415521"
    %endif
    times 1 - ($ - %%insn_00415521) db 0
    %%insn_00415522:
    pop esi ; 00415522 5E
    %if ($ - %%insn_00415522) > 1
        %error "LONG_00415522"
    %endif
    times 1 - ($ - %%insn_00415522) db 0
    %%insn_00415523:
    pop ebp ; 00415523 5D
    %if ($ - %%insn_00415523) > 1
        %error "LONG_00415523"
    %endif
    times 1 - ($ - %%insn_00415523) db 0
    %%insn_00415524:
    pop ebx ; 00415524 5B
    %if ($ - %%insn_00415524) > 1
        %error "LONG_00415524"
    %endif
    times 1 - ($ - %%insn_00415524) db 0
    %%insn_00415525:
    pop ecx ; 00415525 59
    %if ($ - %%insn_00415525) > 1
        %error "LONG_00415525"
    %endif
    times 1 - ($ - %%insn_00415525) db 0
    %%insn_00415526:
    ret ; 00415526 C3
    %if ($ - %%insn_00415526) > 1
        %error "LONG_00415526"
    %endif
    times 1 - ($ - %%insn_00415526) db 0
    %if ($ - %%fragment_start) != 679
        %error "function fragment size drift: 00415280"
    %endif
%endmacro
