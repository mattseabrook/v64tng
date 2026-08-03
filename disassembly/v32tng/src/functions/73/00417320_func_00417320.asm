; PE virtual entry 00417320
; Ghidra working symbol: FUN_00417320
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00417320_part_00 0
    %%fragment_start:
func_00417320:
    %%insn_00417320:
    push ebx ; 00417320 53
    %if ($ - %%insn_00417320) > 1
        %error "LONG_00417320"
    %endif
    times 1 - ($ - %%insn_00417320) db 0
    %%insn_00417321:
    push ebp ; 00417321 55
    %if ($ - %%insn_00417321) > 1
        %error "LONG_00417321"
    %endif
    times 1 - ($ - %%insn_00417321) db 0
    %%insn_00417322:
    push esi ; 00417322 56
    %if ($ - %%insn_00417322) > 1
        %error "LONG_00417322"
    %endif
    times 1 - ($ - %%insn_00417322) db 0
    %%insn_00417323:
    push edi ; 00417323 57
    %if ($ - %%insn_00417323) > 1
        %error "LONG_00417323"
    %endif
    times 1 - ($ - %%insn_00417323) db 0
    %%insn_00417324:
    mov edi,[esp+0x14] ; 00417324 8B7C2414
    %if ($ - %%insn_00417324) > 4
        %error "LONG_00417324"
    %endif
    times 4 - ($ - %%insn_00417324) db 0
    %%insn_00417328:
    push dword 0x8 ; 00417328 6A08
    %if ($ - %%insn_00417328) > 2
        %error "LONG_00417328"
    %endif
    times 2 - ($ - %%insn_00417328) db 0
    db 0x33, 0xDB ; 0041732A 33DB | xor ebx,ebx | encoding preserved
    %%insn_0041732c:
    mov si,[edi] ; 0041732C 668B37
    %if ($ - %%insn_0041732c) > 3
        %error "LONG_0041732C"
    %endif
    times 3 - ($ - %%insn_0041732c) db 0
    %%insn_0041732f:
    add edi,0x2 ; 0041732F 83C702
    %if ($ - %%insn_0041732f) > 3
        %error "LONG_0041732F"
    %endif
    times 3 - ($ - %%insn_0041732f) db 0
    %%insn_00417332:
    push esi ; 00417332 56
    %if ($ - %%insn_00417332) > 1
        %error "LONG_00417332"
    %endif
    times 1 - ($ - %%insn_00417332) db 0
    %%insn_00417333:
    call 0x418450 ; 00417333 E818110000
    %if ($ - %%insn_00417333) > 5
        %error "LONG_00417333"
    %endif
    times 5 - ($ - %%insn_00417333) db 0
    %%insn_00417338:
    add esp,0x8 ; 00417338 83C408
    %if ($ - %%insn_00417338) > 3
        %error "LONG_00417338"
    %endif
    times 3 - ($ - %%insn_00417338) db 0
    %%insn_0041733b:
    test eax,eax ; 0041733B 85C0
    %if ($ - %%insn_0041733b) > 2
        %error "LONG_0041733B"
    %endif
    times 2 - ($ - %%insn_0041733b) db 0
    %%insn_0041733d:
    jz short 0x417354 ; 0041733D 7415
    %if ($ - %%insn_0041733d) > 2
        %error "LONG_0041733D"
    %endif
    times 2 - ($ - %%insn_0041733d) db 0
    %%insn_0041733f:
    mov si,[edi] ; 0041733F 668B37
    %if ($ - %%insn_0041733f) > 3
        %error "LONG_0041733F"
    %endif
    times 3 - ($ - %%insn_0041733f) db 0
    %%insn_00417342:
    push dword 0x8 ; 00417342 6A08
    %if ($ - %%insn_00417342) > 2
        %error "LONG_00417342"
    %endif
    times 2 - ($ - %%insn_00417342) db 0
    %%insn_00417344:
    push esi ; 00417344 56
    %if ($ - %%insn_00417344) > 1
        %error "LONG_00417344"
    %endif
    times 1 - ($ - %%insn_00417344) db 0
    %%insn_00417345:
    add edi,0x2 ; 00417345 83C702
    %if ($ - %%insn_00417345) > 3
        %error "LONG_00417345"
    %endif
    times 3 - ($ - %%insn_00417345) db 0
    %%insn_00417348:
    call 0x418450 ; 00417348 E803110000
    %if ($ - %%insn_00417348) > 5
        %error "LONG_00417348"
    %endif
    times 5 - ($ - %%insn_00417348) db 0
    %%insn_0041734d:
    add esp,0x8 ; 0041734D 83C408
    %if ($ - %%insn_0041734d) > 3
        %error "LONG_0041734D"
    %endif
    times 3 - ($ - %%insn_0041734d) db 0
    %%insn_00417350:
    test eax,eax ; 00417350 85C0
    %if ($ - %%insn_00417350) > 2
        %error "LONG_00417350"
    %endif
    times 2 - ($ - %%insn_00417350) db 0
    %%insn_00417352:
    jnz short 0x41733f ; 00417352 75EB
    %if ($ - %%insn_00417352) > 2
        %error "LONG_00417352"
    %endif
    times 2 - ($ - %%insn_00417352) db 0
    %%insn_00417354:
    cmp si,0x2d ; 00417354 6683FE2D
    %if ($ - %%insn_00417354) > 4
        %error "LONG_00417354"
    %endif
    times 4 - ($ - %%insn_00417354) db 0
    %%insn_00417358:
    jnz short 0x417361 ; 00417358 7507
    %if ($ - %%insn_00417358) > 2
        %error "LONG_00417358"
    %endif
    times 2 - ($ - %%insn_00417358) db 0
    %%insn_0041735a:
    or dword [esp+0x20],0x2 ; 0041735A 834C242002
    %if ($ - %%insn_0041735a) > 5
        %error "LONG_0041735A"
    %endif
    times 5 - ($ - %%insn_0041735a) db 0
    %%insn_0041735f:
    jmp short 0x417367 ; 0041735F EB06
    %if ($ - %%insn_0041735f) > 2
        %error "LONG_0041735F"
    %endif
    times 2 - ($ - %%insn_0041735f) db 0
    %%insn_00417361:
    cmp si,0x2b ; 00417361 6683FE2B
    %if ($ - %%insn_00417361) > 4
        %error "LONG_00417361"
    %endif
    times 4 - ($ - %%insn_00417361) db 0
    %%insn_00417365:
    jnz short 0x41736d ; 00417365 7506
    %if ($ - %%insn_00417365) > 2
        %error "LONG_00417365"
    %endif
    times 2 - ($ - %%insn_00417365) db 0
    %%insn_00417367:
    mov si,[edi] ; 00417367 668B37
    %if ($ - %%insn_00417367) > 3
        %error "LONG_00417367"
    %endif
    times 3 - ($ - %%insn_00417367) db 0
    %%insn_0041736a:
    add edi,0x2 ; 0041736A 83C702
    %if ($ - %%insn_0041736a) > 3
        %error "LONG_0041736A"
    %endif
    times 3 - ($ - %%insn_0041736a) db 0
    %%insn_0041736d:
    mov ebp,[esp+0x1c] ; 0041736D 8B6C241C
    %if ($ - %%insn_0041736d) > 4
        %error "LONG_0041736D"
    %endif
    times 4 - ($ - %%insn_0041736d) db 0
    %%insn_00417371:
    test ebp,ebp ; 00417371 85ED
    %if ($ - %%insn_00417371) > 2
        %error "LONG_00417371"
    %endif
    times 2 - ($ - %%insn_00417371) db 0
    %%insn_00417373:
    jl 0x4174eb ; 00417373 0F8C72010000
    %if ($ - %%insn_00417373) > 6
        %error "LONG_00417373"
    %endif
    times 6 - ($ - %%insn_00417373) db 0
    %%insn_00417379:
    cmp ebp,0x1 ; 00417379 83FD01
    %if ($ - %%insn_00417379) > 3
        %error "LONG_00417379"
    %endif
    times 3 - ($ - %%insn_00417379) db 0
    %%insn_0041737c:
    jz 0x4174eb ; 0041737C 0F8469010000
    %if ($ - %%insn_0041737c) > 6
        %error "LONG_0041737C"
    %endif
    times 6 - ($ - %%insn_0041737c) db 0
    %%insn_00417382:
    cmp ebp,0x24 ; 00417382 83FD24
    %if ($ - %%insn_00417382) > 3
        %error "LONG_00417382"
    %endif
    times 3 - ($ - %%insn_00417382) db 0
    %%insn_00417385:
    jg 0x4174eb ; 00417385 0F8F60010000
    %if ($ - %%insn_00417385) > 6
        %error "LONG_00417385"
    %endif
    times 6 - ($ - %%insn_00417385) db 0
    %%insn_0041738b:
    test ebp,ebp ; 0041738B 85ED
    %if ($ - %%insn_0041738b) > 2
        %error "LONG_0041738B"
    %endif
    times 2 - ($ - %%insn_0041738b) db 0
    %%insn_0041738d:
    jnz short 0x4173b5 ; 0041738D 7526
    %if ($ - %%insn_0041738d) > 2
        %error "LONG_0041738D"
    %endif
    times 2 - ($ - %%insn_0041738d) db 0
    %%insn_0041738f:
    cmp si,0x30 ; 0041738F 6683FE30
    %if ($ - %%insn_0041738f) > 4
        %error "LONG_0041738F"
    %endif
    times 4 - ($ - %%insn_0041738f) db 0
    %%insn_00417393:
    jz short 0x41739c ; 00417393 7407
    %if ($ - %%insn_00417393) > 2
        %error "LONG_00417393"
    %endif
    times 2 - ($ - %%insn_00417393) db 0
    %%insn_00417395:
    mov ebp,0xa ; 00417395 BD0A000000
    %if ($ - %%insn_00417395) > 5
        %error "LONG_00417395"
    %endif
    times 5 - ($ - %%insn_00417395) db 0
    %%insn_0041739a:
    jmp short 0x4173b5 ; 0041739A EB19
    %if ($ - %%insn_0041739a) > 2
        %error "LONG_0041739A"
    %endif
    times 2 - ($ - %%insn_0041739a) db 0
    %%insn_0041739c:
    mov ax,[edi] ; 0041739C 668B07
    %if ($ - %%insn_0041739c) > 3
        %error "LONG_0041739C"
    %endif
    times 3 - ($ - %%insn_0041739c) db 0
    db 0x66, 0x3D, 0x78, 0x00 ; 0041739F 663D7800 | cmp ax,0x78 | encoding preserved
    %%insn_004173a3:
    jz short 0x4173b0 ; 004173A3 740B
    %if ($ - %%insn_004173a3) > 2
        %error "LONG_004173A3"
    %endif
    times 2 - ($ - %%insn_004173a3) db 0
    db 0x66, 0x3D, 0x58, 0x00 ; 004173A5 663D5800 | cmp ax,0x58 | encoding preserved
    %%insn_004173a9:
    mov ebp,0x8 ; 004173A9 BD08000000
    %if ($ - %%insn_004173a9) > 5
        %error "LONG_004173A9"
    %endif
    times 5 - ($ - %%insn_004173a9) db 0
    %%insn_004173ae:
    jnz short 0x4173b5 ; 004173AE 7505
    %if ($ - %%insn_004173ae) > 2
        %error "LONG_004173AE"
    %endif
    times 2 - ($ - %%insn_004173ae) db 0
    %%insn_004173b0:
    mov ebp,0x10 ; 004173B0 BD10000000
    %if ($ - %%insn_004173b0) > 5
        %error "LONG_004173B0"
    %endif
    times 5 - ($ - %%insn_004173b0) db 0
    %%insn_004173b5:
    cmp ebp,0x10 ; 004173B5 83FD10
    %if ($ - %%insn_004173b5) > 3
        %error "LONG_004173B5"
    %endif
    times 3 - ($ - %%insn_004173b5) db 0
    %%insn_004173b8:
    jnz short 0x4173d9 ; 004173B8 751F
    %if ($ - %%insn_004173b8) > 2
        %error "LONG_004173B8"
    %endif
    times 2 - ($ - %%insn_004173b8) db 0
    %%insn_004173ba:
    cmp si,0x30 ; 004173BA 6683FE30
    %if ($ - %%insn_004173ba) > 4
        %error "LONG_004173BA"
    %endif
    times 4 - ($ - %%insn_004173ba) db 0
    %%insn_004173be:
    jnz short 0x4173d9 ; 004173BE 7519
    %if ($ - %%insn_004173be) > 2
        %error "LONG_004173BE"
    %endif
    times 2 - ($ - %%insn_004173be) db 0
    %%insn_004173c0:
    mov ax,[edi] ; 004173C0 668B07
    %if ($ - %%insn_004173c0) > 3
        %error "LONG_004173C0"
    %endif
    times 3 - ($ - %%insn_004173c0) db 0
    db 0x66, 0x3D, 0x78, 0x00 ; 004173C3 663D7800 | cmp ax,0x78 | encoding preserved
    %%insn_004173c7:
    jz short 0x4173cf ; 004173C7 7406
    %if ($ - %%insn_004173c7) > 2
        %error "LONG_004173C7"
    %endif
    times 2 - ($ - %%insn_004173c7) db 0
    db 0x66, 0x3D, 0x58, 0x00 ; 004173C9 663D5800 | cmp ax,0x58 | encoding preserved
    %%insn_004173cd:
    jnz short 0x4173d9 ; 004173CD 750A
    %if ($ - %%insn_004173cd) > 2
        %error "LONG_004173CD"
    %endif
    times 2 - ($ - %%insn_004173cd) db 0
    %%insn_004173cf:
    mov si,[edi+0x2] ; 004173CF 668B7702
    %if ($ - %%insn_004173cf) > 4
        %error "LONG_004173CF"
    %endif
    times 4 - ($ - %%insn_004173cf) db 0
    %%insn_004173d3:
    add edi,0x2 ; 004173D3 83C702
    %if ($ - %%insn_004173d3) > 3
        %error "LONG_004173D3"
    %endif
    times 3 - ($ - %%insn_004173d3) db 0
    %%insn_004173d6:
    add edi,0x2 ; 004173D6 83C702
    %if ($ - %%insn_004173d6) > 3
        %error "LONG_004173D6"
    %endif
    times 3 - ($ - %%insn_004173d6) db 0
    %%insn_004173d9:
    or eax,0xffffffffffffffff ; 004173D9 83C8FF
    %if ($ - %%insn_004173d9) > 3
        %error "LONG_004173D9"
    %endif
    times 3 - ($ - %%insn_004173d9) db 0
    db 0x33, 0xD2 ; 004173DC 33D2 | xor edx,edx | encoding preserved
    %%insn_004173de:
    div ebp ; 004173DE F7F5
    %if ($ - %%insn_004173de) > 2
        %error "LONG_004173DE"
    %endif
    times 2 - ($ - %%insn_004173de) db 0
    %%insn_004173e0:
    mov [esp+0x1c],eax ; 004173E0 8944241C
    %if ($ - %%insn_004173e0) > 4
        %error "LONG_004173E0"
    %endif
    times 4 - ($ - %%insn_004173e0) db 0
    %%insn_004173e4:
    push dword 0x4 ; 004173E4 6A04
    %if ($ - %%insn_004173e4) > 2
        %error "LONG_004173E4"
    %endif
    times 2 - ($ - %%insn_004173e4) db 0
    %%insn_004173e6:
    push esi ; 004173E6 56
    %if ($ - %%insn_004173e6) > 1
        %error "LONG_004173E6"
    %endif
    times 1 - ($ - %%insn_004173e6) db 0
    %%insn_004173e7:
    call 0x418450 ; 004173E7 E864100000
    %if ($ - %%insn_004173e7) > 5
        %error "LONG_004173E7"
    %endif
    times 5 - ($ - %%insn_004173e7) db 0
    %%insn_004173ec:
    add esp,0x8 ; 004173EC 83C408
    %if ($ - %%insn_004173ec) > 3
        %error "LONG_004173EC"
    %endif
    times 3 - ($ - %%insn_004173ec) db 0
    %%insn_004173ef:
    test eax,eax ; 004173EF 85C0
    %if ($ - %%insn_004173ef) > 2
        %error "LONG_004173EF"
    %endif
    times 2 - ($ - %%insn_004173ef) db 0
    %%insn_004173f1:
    jz short 0x4173fe ; 004173F1 740B
    %if ($ - %%insn_004173f1) > 2
        %error "LONG_004173F1"
    %endif
    times 2 - ($ - %%insn_004173f1) db 0
    %%insn_004173f3:
    and esi,0xffff ; 004173F3 81E6FFFF0000
    %if ($ - %%insn_004173f3) > 6
        %error "LONG_004173F3"
    %endif
    times 6 - ($ - %%insn_004173f3) db 0
    %%insn_004173f9:
    sub esi,0x30 ; 004173F9 83EE30
    %if ($ - %%insn_004173f9) > 3
        %error "LONG_004173F9"
    %endif
    times 3 - ($ - %%insn_004173f9) db 0
    %%insn_004173fc:
    jmp short 0x417425 ; 004173FC EB27
    %if ($ - %%insn_004173fc) > 2
        %error "LONG_004173FC"
    %endif
    times 2 - ($ - %%insn_004173fc) db 0
    %%insn_004173fe:
    push dword 0x103 ; 004173FE 6803010000
    %if ($ - %%insn_004173fe) > 5
        %error "LONG_004173FE"
    %endif
    times 5 - ($ - %%insn_004173fe) db 0
    %%insn_00417403:
    push esi ; 00417403 56
    %if ($ - %%insn_00417403) > 1
        %error "LONG_00417403"
    %endif
    times 1 - ($ - %%insn_00417403) db 0
    %%insn_00417404:
    call 0x418450 ; 00417404 E847100000
    %if ($ - %%insn_00417404) > 5
        %error "LONG_00417404"
    %endif
    times 5 - ($ - %%insn_00417404) db 0
    %%insn_00417409:
    add esp,0x8 ; 00417409 83C408
    %if ($ - %%insn_00417409) > 3
        %error "LONG_00417409"
    %endif
    times 3 - ($ - %%insn_00417409) db 0
    %%insn_0041740c:
    test eax,eax ; 0041740C 85C0
    %if ($ - %%insn_0041740c) > 2
        %error "LONG_0041740C"
    %endif
    times 2 - ($ - %%insn_0041740c) db 0
    %%insn_0041740e:
    jz short 0x41746b ; 0041740E 745B
    %if ($ - %%insn_0041740e) > 2
        %error "LONG_0041740E"
    %endif
    times 2 - ($ - %%insn_0041740e) db 0
    %%insn_00417410:
    push esi ; 00417410 56
    %if ($ - %%insn_00417410) > 1
        %error "LONG_00417410"
    %endif
    times 1 - ($ - %%insn_00417410) db 0
    %%insn_00417411:
    call 0x418340 ; 00417411 E82A0F0000
    %if ($ - %%insn_00417411) > 5
        %error "LONG_00417411"
    %endif
    times 5 - ($ - %%insn_00417411) db 0
    db 0x66, 0x8B, 0xF0 ; 00417416 668BF0 | mov si,ax | encoding preserved
    %%insn_00417419:
    add esp,0x4 ; 00417419 83C404
    %if ($ - %%insn_00417419) > 3
        %error "LONG_00417419"
    %endif
    times 3 - ($ - %%insn_00417419) db 0
    %%insn_0041741c:
    and esi,0xffff ; 0041741C 81E6FFFF0000
    %if ($ - %%insn_0041741c) > 6
        %error "LONG_0041741C"
    %endif
    times 6 - ($ - %%insn_0041741c) db 0
    %%insn_00417422:
    sub esi,0x37 ; 00417422 83EE37
    %if ($ - %%insn_00417422) > 3
        %error "LONG_00417422"
    %endif
    times 3 - ($ - %%insn_00417422) db 0
    db 0x3B, 0xF5 ; 00417425 3BF5 | cmp esi,ebp | encoding preserved
    %%insn_00417427:
    jnc short 0x41746b ; 00417427 7342
    %if ($ - %%insn_00417427) > 2
        %error "LONG_00417427"
    %endif
    times 2 - ($ - %%insn_00417427) db 0
    %%insn_00417429:
    mov edx,[esp+0x20] ; 00417429 8B542420
    %if ($ - %%insn_00417429) > 4
        %error "LONG_00417429"
    %endif
    times 4 - ($ - %%insn_00417429) db 0
    %%insn_0041742d:
    mov eax,[esp+0x1c] ; 0041742D 8B44241C
    %if ($ - %%insn_0041742d) > 4
        %error "LONG_0041742D"
    %endif
    times 4 - ($ - %%insn_0041742d) db 0
    %%insn_00417431:
    or edx,0x8 ; 00417431 83CA08
    %if ($ - %%insn_00417431) > 3
        %error "LONG_00417431"
    %endif
    times 3 - ($ - %%insn_00417431) db 0
    db 0x3B, 0xD8 ; 00417434 3BD8 | cmp ebx,eax | encoding preserved
    %%insn_00417436:
    mov [esp+0x20],edx ; 00417436 89542420
    %if ($ - %%insn_00417436) > 4
        %error "LONG_00417436"
    %endif
    times 4 - ($ - %%insn_00417436) db 0
    %%insn_0041743a:
    jc short 0x41745b ; 0041743A 721F
    %if ($ - %%insn_0041743a) > 2
        %error "LONG_0041743A"
    %endif
    times 2 - ($ - %%insn_0041743a) db 0
    %%insn_0041743c:
    jnz short 0x417449 ; 0041743C 750B
    %if ($ - %%insn_0041743c) > 2
        %error "LONG_0041743C"
    %endif
    times 2 - ($ - %%insn_0041743c) db 0
    %%insn_0041743e:
    or eax,0xffffffffffffffff ; 0041743E 83C8FF
    %if ($ - %%insn_0041743e) > 3
        %error "LONG_0041743E"
    %endif
    times 3 - ($ - %%insn_0041743e) db 0
    db 0x33, 0xD2 ; 00417441 33D2 | xor edx,edx | encoding preserved
    %%insn_00417443:
    div ebp ; 00417443 F7F5
    %if ($ - %%insn_00417443) > 2
        %error "LONG_00417443"
    %endif
    times 2 - ($ - %%insn_00417443) db 0
    db 0x3B, 0xF2 ; 00417445 3BF2 | cmp esi,edx | encoding preserved
    %%insn_00417447:
    jna short 0x41745b ; 00417447 7612
    %if ($ - %%insn_00417447) > 2
        %error "LONG_00417447"
    %endif
    times 2 - ($ - %%insn_00417447) db 0
    %%insn_00417449:
    mov eax,[esp+0x20] ; 00417449 8B442420
    %if ($ - %%insn_00417449) > 4
        %error "LONG_00417449"
    %endif
    times 4 - ($ - %%insn_00417449) db 0
    %%insn_0041744d:
    mov si,[edi] ; 0041744D 668B37
    %if ($ - %%insn_0041744d) > 3
        %error "LONG_0041744D"
    %endif
    times 3 - ($ - %%insn_0041744d) db 0
    %%insn_00417450:
    or al,0x4 ; 00417450 0C04
    %if ($ - %%insn_00417450) > 2
        %error "LONG_00417450"
    %endif
    times 2 - ($ - %%insn_00417450) db 0
    %%insn_00417452:
    add edi,0x2 ; 00417452 83C702
    %if ($ - %%insn_00417452) > 3
        %error "LONG_00417452"
    %endif
    times 3 - ($ - %%insn_00417452) db 0
    %%insn_00417455:
    mov [esp+0x20],eax ; 00417455 89442420
    %if ($ - %%insn_00417455) > 4
        %error "LONG_00417455"
    %endif
    times 4 - ($ - %%insn_00417455) db 0
    %%insn_00417459:
    jmp short 0x4173e4 ; 00417459 EB89
    %if ($ - %%insn_00417459) > 2
        %error "LONG_00417459"
    %endif
    times 2 - ($ - %%insn_00417459) db 0
    %%insn_0041745b:
    imul ebx,ebp ; 0041745B 0FAFDD
    %if ($ - %%insn_0041745b) > 3
        %error "LONG_0041745B"
    %endif
    times 3 - ($ - %%insn_0041745b) db 0
    db 0x03, 0xDE ; 0041745E 03DE | add ebx,esi | encoding preserved
    %%insn_00417460:
    mov si,[edi] ; 00417460 668B37
    %if ($ - %%insn_00417460) > 3
        %error "LONG_00417460"
    %endif
    times 3 - ($ - %%insn_00417460) db 0
    %%insn_00417463:
    add edi,0x2 ; 00417463 83C702
    %if ($ - %%insn_00417463) > 3
        %error "LONG_00417463"
    %endif
    times 3 - ($ - %%insn_00417463) db 0
    %%insn_00417466:
    jmp 0x4173e4 ; 00417466 E979FFFFFF
    %if ($ - %%insn_00417466) > 5
        %error "LONG_00417466"
    %endif
    times 5 - ($ - %%insn_00417466) db 0
    %%insn_0041746b:
    mov ecx,[esp+0x20] ; 0041746B 8B4C2420
    %if ($ - %%insn_0041746b) > 4
        %error "LONG_0041746B"
    %endif
    times 4 - ($ - %%insn_0041746b) db 0
    %%insn_0041746f:
    mov esi,[esp+0x18] ; 0041746F 8B742418
    %if ($ - %%insn_0041746f) > 4
        %error "LONG_0041746F"
    %endif
    times 4 - ($ - %%insn_0041746f) db 0
    %%insn_00417473:
    sub edi,0x2 ; 00417473 83EF02
    %if ($ - %%insn_00417473) > 3
        %error "LONG_00417473"
    %endif
    times 3 - ($ - %%insn_00417473) db 0
    %%insn_00417476:
    test cl,0x8 ; 00417476 F6C108
    %if ($ - %%insn_00417476) > 3
        %error "LONG_00417476"
    %endif
    times 3 - ($ - %%insn_00417476) db 0
    %%insn_00417479:
    jnz short 0x417487 ; 00417479 750C
    %if ($ - %%insn_00417479) > 2
        %error "LONG_00417479"
    %endif
    times 2 - ($ - %%insn_00417479) db 0
    %%insn_0041747b:
    test esi,esi ; 0041747B 85F6
    %if ($ - %%insn_0041747b) > 2
        %error "LONG_0041747B"
    %endif
    times 2 - ($ - %%insn_0041747b) db 0
    %%insn_0041747d:
    jz short 0x417483 ; 0041747D 7404
    %if ($ - %%insn_0041747d) > 2
        %error "LONG_0041747D"
    %endif
    times 2 - ($ - %%insn_0041747d) db 0
    %%insn_0041747f:
    mov edi,[esp+0x14] ; 0041747F 8B7C2414
    %if ($ - %%insn_0041747f) > 4
        %error "LONG_0041747F"
    %endif
    times 4 - ($ - %%insn_0041747f) db 0
    db 0x33, 0xDB ; 00417483 33DB | xor ebx,ebx | encoding preserved
    %%insn_00417485:
    jmp short 0x4174d7 ; 00417485 EB50
    %if ($ - %%insn_00417485) > 2
        %error "LONG_00417485"
    %endif
    times 2 - ($ - %%insn_00417485) db 0
    %%insn_00417487:
    test cl,0x4 ; 00417487 F6C104
    %if ($ - %%insn_00417487) > 3
        %error "LONG_00417487"
    %endif
    times 3 - ($ - %%insn_00417487) db 0
    %%insn_0041748a:
    jnz short 0x4174ac ; 0041748A 7520
    %if ($ - %%insn_0041748a) > 2
        %error "LONG_0041748A"
    %endif
    times 2 - ($ - %%insn_0041748a) db 0
    %%insn_0041748c:
    test cl,0x1 ; 0041748C F6C101
    %if ($ - %%insn_0041748c) > 3
        %error "LONG_0041748C"
    %endif
    times 3 - ($ - %%insn_0041748c) db 0
    %%insn_0041748f:
    jnz short 0x4174d7 ; 0041748F 7546
    %if ($ - %%insn_0041748f) > 2
        %error "LONG_0041748F"
    %endif
    times 2 - ($ - %%insn_0041748f) db 0
    db 0x8B, 0xC1 ; 00417491 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00417493:
    and eax,0x2 ; 00417493 83E002
    %if ($ - %%insn_00417493) > 3
        %error "LONG_00417493"
    %endif
    times 3 - ($ - %%insn_00417493) db 0
    %%insn_00417496:
    jz short 0x4174a0 ; 00417496 7408
    %if ($ - %%insn_00417496) > 2
        %error "LONG_00417496"
    %endif
    times 2 - ($ - %%insn_00417496) db 0
    %%insn_00417498:
    cmp ebx,0x80000000 ; 00417498 81FB00000080
    %if ($ - %%insn_00417498) > 6
        %error "LONG_00417498"
    %endif
    times 6 - ($ - %%insn_00417498) db 0
    %%insn_0041749e:
    ja short 0x4174ac ; 0041749E 770C
    %if ($ - %%insn_0041749e) > 2
        %error "LONG_0041749E"
    %endif
    times 2 - ($ - %%insn_0041749e) db 0
    %%insn_004174a0:
    test eax,eax ; 004174A0 85C0
    %if ($ - %%insn_004174a0) > 2
        %error "LONG_004174A0"
    %endif
    times 2 - ($ - %%insn_004174a0) db 0
    %%insn_004174a2:
    jnz short 0x4174d7 ; 004174A2 7533
    %if ($ - %%insn_004174a2) > 2
        %error "LONG_004174A2"
    %endif
    times 2 - ($ - %%insn_004174a2) db 0
    %%insn_004174a4:
    cmp ebx,0x7fffffff ; 004174A4 81FBFFFFFF7F
    %if ($ - %%insn_004174a4) > 6
        %error "LONG_004174A4"
    %endif
    times 6 - ($ - %%insn_004174a4) db 0
    %%insn_004174aa:
    jna short 0x4174d7 ; 004174AA 762B
    %if ($ - %%insn_004174aa) > 2
        %error "LONG_004174AA"
    %endif
    times 2 - ($ - %%insn_004174aa) db 0
    %%insn_004174ac:
    call 0x410e10 ; 004174AC E85F99FFFF
    %if ($ - %%insn_004174ac) > 5
        %error "LONG_004174AC"
    %endif
    times 5 - ($ - %%insn_004174ac) db 0
    %%insn_004174b1:
    mov dword [eax],0x22 ; 004174B1 C70022000000
    %if ($ - %%insn_004174b1) > 6
        %error "LONG_004174B1"
    %endif
    times 6 - ($ - %%insn_004174b1) db 0
    %%insn_004174b7:
    mov eax,[esp+0x20] ; 004174B7 8B442420
    %if ($ - %%insn_004174b7) > 4
        %error "LONG_004174B7"
    %endif
    times 4 - ($ - %%insn_004174b7) db 0
    %%insn_004174bb:
    test al,0x1 ; 004174BB A801
    %if ($ - %%insn_004174bb) > 2
        %error "LONG_004174BB"
    %endif
    times 2 - ($ - %%insn_004174bb) db 0
    %%insn_004174bd:
    jz short 0x4174c4 ; 004174BD 7405
    %if ($ - %%insn_004174bd) > 2
        %error "LONG_004174BD"
    %endif
    times 2 - ($ - %%insn_004174bd) db 0
    %%insn_004174bf:
    or ebx,0xffffffffffffffff ; 004174BF 83CBFF
    %if ($ - %%insn_004174bf) > 3
        %error "LONG_004174BF"
    %endif
    times 3 - ($ - %%insn_004174bf) db 0
    %%insn_004174c2:
    jmp short 0x4174d3 ; 004174C2 EB0F
    %if ($ - %%insn_004174c2) > 2
        %error "LONG_004174C2"
    %endif
    times 2 - ($ - %%insn_004174c2) db 0
    %%insn_004174c4:
    and al,0x2 ; 004174C4 2402
    %if ($ - %%insn_004174c4) > 2
        %error "LONG_004174C4"
    %endif
    times 2 - ($ - %%insn_004174c4) db 0
    %%insn_004174c6:
    neg al ; 004174C6 F6D8
    %if ($ - %%insn_004174c6) > 2
        %error "LONG_004174C6"
    %endif
    times 2 - ($ - %%insn_004174c6) db 0
    db 0x1B, 0xC0 ; 004174C8 1BC0 | sbb eax,eax | encoding preserved
    %%insn_004174ca:
    neg eax ; 004174CA F7D8
    %if ($ - %%insn_004174ca) > 2
        %error "LONG_004174CA"
    %endif
    times 2 - ($ - %%insn_004174ca) db 0
    %%insn_004174cc:
    add eax,0x7fffffff ; 004174CC 05FFFFFF7F
    %if ($ - %%insn_004174cc) > 5
        %error "LONG_004174CC"
    %endif
    times 5 - ($ - %%insn_004174cc) db 0
    db 0x8B, 0xD8 ; 004174D1 8BD8 | mov ebx,eax | encoding preserved
    %%insn_004174d3:
    mov ecx,[esp+0x20] ; 004174D3 8B4C2420
    %if ($ - %%insn_004174d3) > 4
        %error "LONG_004174D3"
    %endif
    times 4 - ($ - %%insn_004174d3) db 0
    %%insn_004174d7:
    test esi,esi ; 004174D7 85F6
    %if ($ - %%insn_004174d7) > 2
        %error "LONG_004174D7"
    %endif
    times 2 - ($ - %%insn_004174d7) db 0
    %%insn_004174d9:
    jz short 0x4174dd ; 004174D9 7402
    %if ($ - %%insn_004174d9) > 2
        %error "LONG_004174D9"
    %endif
    times 2 - ($ - %%insn_004174d9) db 0
    %%insn_004174db:
    mov [esi],edi ; 004174DB 893E
    %if ($ - %%insn_004174db) > 2
        %error "LONG_004174DB"
    %endif
    times 2 - ($ - %%insn_004174db) db 0
    %%insn_004174dd:
    test cl,0x2 ; 004174DD F6C102
    %if ($ - %%insn_004174dd) > 3
        %error "LONG_004174DD"
    %endif
    times 3 - ($ - %%insn_004174dd) db 0
    %%insn_004174e0:
    jz short 0x4174e4 ; 004174E0 7402
    %if ($ - %%insn_004174e0) > 2
        %error "LONG_004174E0"
    %endif
    times 2 - ($ - %%insn_004174e0) db 0
    %%insn_004174e2:
    neg ebx ; 004174E2 F7DB
    %if ($ - %%insn_004174e2) > 2
        %error "LONG_004174E2"
    %endif
    times 2 - ($ - %%insn_004174e2) db 0
    db 0x8B, 0xC3 ; 004174E4 8BC3 | mov eax,ebx | encoding preserved
    %%insn_004174e6:
    pop edi ; 004174E6 5F
    %if ($ - %%insn_004174e6) > 1
        %error "LONG_004174E6"
    %endif
    times 1 - ($ - %%insn_004174e6) db 0
    %%insn_004174e7:
    pop esi ; 004174E7 5E
    %if ($ - %%insn_004174e7) > 1
        %error "LONG_004174E7"
    %endif
    times 1 - ($ - %%insn_004174e7) db 0
    %%insn_004174e8:
    pop ebp ; 004174E8 5D
    %if ($ - %%insn_004174e8) > 1
        %error "LONG_004174E8"
    %endif
    times 1 - ($ - %%insn_004174e8) db 0
    %%insn_004174e9:
    pop ebx ; 004174E9 5B
    %if ($ - %%insn_004174e9) > 1
        %error "LONG_004174E9"
    %endif
    times 1 - ($ - %%insn_004174e9) db 0
    %%insn_004174ea:
    ret ; 004174EA C3
    %if ($ - %%insn_004174ea) > 1
        %error "LONG_004174EA"
    %endif
    times 1 - ($ - %%insn_004174ea) db 0
    %%insn_004174eb:
    mov eax,[esp+0x18] ; 004174EB 8B442418
    %if ($ - %%insn_004174eb) > 4
        %error "LONG_004174EB"
    %endif
    times 4 - ($ - %%insn_004174eb) db 0
    %%insn_004174ef:
    test eax,eax ; 004174EF 85C0
    %if ($ - %%insn_004174ef) > 2
        %error "LONG_004174EF"
    %endif
    times 2 - ($ - %%insn_004174ef) db 0
    %%insn_004174f1:
    jz short 0x4174f9 ; 004174F1 7406
    %if ($ - %%insn_004174f1) > 2
        %error "LONG_004174F1"
    %endif
    times 2 - ($ - %%insn_004174f1) db 0
    %%insn_004174f3:
    mov ecx,[esp+0x14] ; 004174F3 8B4C2414
    %if ($ - %%insn_004174f3) > 4
        %error "LONG_004174F3"
    %endif
    times 4 - ($ - %%insn_004174f3) db 0
    %%insn_004174f7:
    mov [eax],ecx ; 004174F7 8908
    %if ($ - %%insn_004174f7) > 2
        %error "LONG_004174F7"
    %endif
    times 2 - ($ - %%insn_004174f7) db 0
    %%insn_004174f9:
    pop edi ; 004174F9 5F
    %if ($ - %%insn_004174f9) > 1
        %error "LONG_004174F9"
    %endif
    times 1 - ($ - %%insn_004174f9) db 0
    %%insn_004174fa:
    pop esi ; 004174FA 5E
    %if ($ - %%insn_004174fa) > 1
        %error "LONG_004174FA"
    %endif
    times 1 - ($ - %%insn_004174fa) db 0
    %%insn_004174fb:
    pop ebp ; 004174FB 5D
    %if ($ - %%insn_004174fb) > 1
        %error "LONG_004174FB"
    %endif
    times 1 - ($ - %%insn_004174fb) db 0
    db 0x33, 0xC0 ; 004174FC 33C0 | xor eax,eax | encoding preserved
    %%insn_004174fe:
    pop ebx ; 004174FE 5B
    %if ($ - %%insn_004174fe) > 1
        %error "LONG_004174FE"
    %endif
    times 1 - ($ - %%insn_004174fe) db 0
    %%insn_004174ff:
    ret ; 004174FF C3
    %if ($ - %%insn_004174ff) > 1
        %error "LONG_004174FF"
    %endif
    times 1 - ($ - %%insn_004174ff) db 0
    %if ($ - %%fragment_start) != 480
        %error "function fragment size drift: 00417320"
    %endif
%endmacro
