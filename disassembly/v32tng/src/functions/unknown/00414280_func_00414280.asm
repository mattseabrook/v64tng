; PE virtual entry 00414280
; Ghidra working symbol: _strncpy
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414280_part_00 0
    %%fragment_start:
func_00414280:
    %%insn_00414280:
    mov ecx,[esp+0xc] ; 00414280 8B4C240C
    %if ($ - %%insn_00414280) > 4
        %error "LONG_00414280"
    %endif
    times 4 - ($ - %%insn_00414280) db 0
    %%insn_00414284:
    push edi ; 00414284 57
    %if ($ - %%insn_00414284) > 1
        %error "LONG_00414284"
    %endif
    times 1 - ($ - %%insn_00414284) db 0
    %%insn_00414285:
    test ecx,ecx ; 00414285 85C9
    %if ($ - %%insn_00414285) > 2
        %error "LONG_00414285"
    %endif
    times 2 - ($ - %%insn_00414285) db 0
    %%insn_00414287:
    jz short 0x414303 ; 00414287 747A
    %if ($ - %%insn_00414287) > 2
        %error "LONG_00414287"
    %endif
    times 2 - ($ - %%insn_00414287) db 0
    %%insn_00414289:
    push esi ; 00414289 56
    %if ($ - %%insn_00414289) > 1
        %error "LONG_00414289"
    %endif
    times 1 - ($ - %%insn_00414289) db 0
    %%insn_0041428a:
    push ebx ; 0041428A 53
    %if ($ - %%insn_0041428a) > 1
        %error "LONG_0041428A"
    %endif
    times 1 - ($ - %%insn_0041428a) db 0
    db 0x8B, 0xD9 ; 0041428B 8BD9 | mov ebx,ecx | encoding preserved
    %%insn_0041428d:
    mov esi,[esp+0x14] ; 0041428D 8B742414
    %if ($ - %%insn_0041428d) > 4
        %error "LONG_0041428D"
    %endif
    times 4 - ($ - %%insn_0041428d) db 0
    %%insn_00414291:
    test esi,0x3 ; 00414291 F7C603000000
    %if ($ - %%insn_00414291) > 6
        %error "LONG_00414291"
    %endif
    times 6 - ($ - %%insn_00414291) db 0
    %%insn_00414297:
    mov edi,[esp+0x10] ; 00414297 8B7C2410
    %if ($ - %%insn_00414297) > 4
        %error "LONG_00414297"
    %endif
    times 4 - ($ - %%insn_00414297) db 0
    %%insn_0041429b:
    jnz short 0x4142a4 ; 0041429B 7507
    %if ($ - %%insn_0041429b) > 2
        %error "LONG_0041429B"
    %endif
    times 2 - ($ - %%insn_0041429b) db 0
    %%insn_0041429d:
    shr ecx,byte 0x2 ; 0041429D C1E902
    %if ($ - %%insn_0041429d) > 3
        %error "LONG_0041429D"
    %endif
    times 3 - ($ - %%insn_0041429d) db 0
    %%insn_004142a0:
    jnz short 0x414311 ; 004142A0 756F
    %if ($ - %%insn_004142a0) > 2
        %error "LONG_004142A0"
    %endif
    times 2 - ($ - %%insn_004142a0) db 0
    %%insn_004142a2:
    jmp short 0x4142c5 ; 004142A2 EB21
    %if ($ - %%insn_004142a2) > 2
        %error "LONG_004142A2"
    %endif
    times 2 - ($ - %%insn_004142a2) db 0
    %%insn_004142a4:
    mov al,[esi] ; 004142A4 8A06
    %if ($ - %%insn_004142a4) > 2
        %error "LONG_004142A4"
    %endif
    times 2 - ($ - %%insn_004142a4) db 0
    %%insn_004142a6:
    inc esi ; 004142A6 46
    %if ($ - %%insn_004142a6) > 1
        %error "LONG_004142A6"
    %endif
    times 1 - ($ - %%insn_004142a6) db 0
    %%insn_004142a7:
    mov [edi],al ; 004142A7 8807
    %if ($ - %%insn_004142a7) > 2
        %error "LONG_004142A7"
    %endif
    times 2 - ($ - %%insn_004142a7) db 0
    %%insn_004142a9:
    inc edi ; 004142A9 47
    %if ($ - %%insn_004142a9) > 1
        %error "LONG_004142A9"
    %endif
    times 1 - ($ - %%insn_004142a9) db 0
    %%insn_004142aa:
    dec ecx ; 004142AA 49
    %if ($ - %%insn_004142aa) > 1
        %error "LONG_004142AA"
    %endif
    times 1 - ($ - %%insn_004142aa) db 0
    %%insn_004142ab:
    jz short 0x4142d2 ; 004142AB 7425
    %if ($ - %%insn_004142ab) > 2
        %error "LONG_004142AB"
    %endif
    times 2 - ($ - %%insn_004142ab) db 0
    %%insn_004142ad:
    test al,al ; 004142AD 84C0
    %if ($ - %%insn_004142ad) > 2
        %error "LONG_004142AD"
    %endif
    times 2 - ($ - %%insn_004142ad) db 0
    %%insn_004142af:
    jz short 0x4142da ; 004142AF 7429
    %if ($ - %%insn_004142af) > 2
        %error "LONG_004142AF"
    %endif
    times 2 - ($ - %%insn_004142af) db 0
    %%insn_004142b1:
    test esi,0x3 ; 004142B1 F7C603000000
    %if ($ - %%insn_004142b1) > 6
        %error "LONG_004142B1"
    %endif
    times 6 - ($ - %%insn_004142b1) db 0
    %%insn_004142b7:
    jnz short 0x4142a4 ; 004142B7 75EB
    %if ($ - %%insn_004142b7) > 2
        %error "LONG_004142B7"
    %endif
    times 2 - ($ - %%insn_004142b7) db 0
    db 0x8B, 0xD9 ; 004142B9 8BD9 | mov ebx,ecx | encoding preserved
    %%insn_004142bb:
    shr ecx,byte 0x2 ; 004142BB C1E902
    %if ($ - %%insn_004142bb) > 3
        %error "LONG_004142BB"
    %endif
    times 3 - ($ - %%insn_004142bb) db 0
    %%insn_004142be:
    jnz short 0x414311 ; 004142BE 7551
    %if ($ - %%insn_004142be) > 2
        %error "LONG_004142BE"
    %endif
    times 2 - ($ - %%insn_004142be) db 0
    %%insn_004142c0:
    and ebx,0x3 ; 004142C0 83E303
    %if ($ - %%insn_004142c0) > 3
        %error "LONG_004142C0"
    %endif
    times 3 - ($ - %%insn_004142c0) db 0
    %%insn_004142c3:
    jz short 0x4142d2 ; 004142C3 740D
    %if ($ - %%insn_004142c3) > 2
        %error "LONG_004142C3"
    %endif
    times 2 - ($ - %%insn_004142c3) db 0
    %%insn_004142c5:
    mov al,[esi] ; 004142C5 8A06
    %if ($ - %%insn_004142c5) > 2
        %error "LONG_004142C5"
    %endif
    times 2 - ($ - %%insn_004142c5) db 0
    %%insn_004142c7:
    inc esi ; 004142C7 46
    %if ($ - %%insn_004142c7) > 1
        %error "LONG_004142C7"
    %endif
    times 1 - ($ - %%insn_004142c7) db 0
    %%insn_004142c8:
    mov [edi],al ; 004142C8 8807
    %if ($ - %%insn_004142c8) > 2
        %error "LONG_004142C8"
    %endif
    times 2 - ($ - %%insn_004142c8) db 0
    %%insn_004142ca:
    inc edi ; 004142CA 47
    %if ($ - %%insn_004142ca) > 1
        %error "LONG_004142CA"
    %endif
    times 1 - ($ - %%insn_004142ca) db 0
    %%insn_004142cb:
    test al,al ; 004142CB 84C0
    %if ($ - %%insn_004142cb) > 2
        %error "LONG_004142CB"
    %endif
    times 2 - ($ - %%insn_004142cb) db 0
    %%insn_004142cd:
    jz short 0x4142fe ; 004142CD 742F
    %if ($ - %%insn_004142cd) > 2
        %error "LONG_004142CD"
    %endif
    times 2 - ($ - %%insn_004142cd) db 0
    %%insn_004142cf:
    dec ebx ; 004142CF 4B
    %if ($ - %%insn_004142cf) > 1
        %error "LONG_004142CF"
    %endif
    times 1 - ($ - %%insn_004142cf) db 0
    %%insn_004142d0:
    jnz short 0x4142c5 ; 004142D0 75F3
    %if ($ - %%insn_004142d0) > 2
        %error "LONG_004142D0"
    %endif
    times 2 - ($ - %%insn_004142d0) db 0
    %%insn_004142d2:
    mov eax,[esp+0x10] ; 004142D2 8B442410
    %if ($ - %%insn_004142d2) > 4
        %error "LONG_004142D2"
    %endif
    times 4 - ($ - %%insn_004142d2) db 0
    %%insn_004142d6:
    pop ebx ; 004142D6 5B
    %if ($ - %%insn_004142d6) > 1
        %error "LONG_004142D6"
    %endif
    times 1 - ($ - %%insn_004142d6) db 0
    %%insn_004142d7:
    pop esi ; 004142D7 5E
    %if ($ - %%insn_004142d7) > 1
        %error "LONG_004142D7"
    %endif
    times 1 - ($ - %%insn_004142d7) db 0
    %%insn_004142d8:
    pop edi ; 004142D8 5F
    %if ($ - %%insn_004142d8) > 1
        %error "LONG_004142D8"
    %endif
    times 1 - ($ - %%insn_004142d8) db 0
    %%insn_004142d9:
    ret ; 004142D9 C3
    %if ($ - %%insn_004142d9) > 1
        %error "LONG_004142D9"
    %endif
    times 1 - ($ - %%insn_004142d9) db 0
    %%insn_004142da:
    test edi,0x3 ; 004142DA F7C703000000
    %if ($ - %%insn_004142da) > 6
        %error "LONG_004142DA"
    %endif
    times 6 - ($ - %%insn_004142da) db 0
    %%insn_004142e0:
    jz short 0x4142f4 ; 004142E0 7412
    %if ($ - %%insn_004142e0) > 2
        %error "LONG_004142E0"
    %endif
    times 2 - ($ - %%insn_004142e0) db 0
    %%insn_004142e2:
    mov [edi],al ; 004142E2 8807
    %if ($ - %%insn_004142e2) > 2
        %error "LONG_004142E2"
    %endif
    times 2 - ($ - %%insn_004142e2) db 0
    %%insn_004142e4:
    inc edi ; 004142E4 47
    %if ($ - %%insn_004142e4) > 1
        %error "LONG_004142E4"
    %endif
    times 1 - ($ - %%insn_004142e4) db 0
    %%insn_004142e5:
    dec ecx ; 004142E5 49
    %if ($ - %%insn_004142e5) > 1
        %error "LONG_004142E5"
    %endif
    times 1 - ($ - %%insn_004142e5) db 0
    %%insn_004142e6:
    jz 0x414376 ; 004142E6 0F848A000000
    %if ($ - %%insn_004142e6) > 6
        %error "LONG_004142E6"
    %endif
    times 6 - ($ - %%insn_004142e6) db 0
    %%insn_004142ec:
    test edi,0x3 ; 004142EC F7C703000000
    %if ($ - %%insn_004142ec) > 6
        %error "LONG_004142EC"
    %endif
    times 6 - ($ - %%insn_004142ec) db 0
    %%insn_004142f2:
    jnz short 0x4142e2 ; 004142F2 75EE
    %if ($ - %%insn_004142f2) > 2
        %error "LONG_004142F2"
    %endif
    times 2 - ($ - %%insn_004142f2) db 0
    db 0x8B, 0xD9 ; 004142F4 8BD9 | mov ebx,ecx | encoding preserved
    %%insn_004142f6:
    shr ecx,byte 0x2 ; 004142F6 C1E902
    %if ($ - %%insn_004142f6) > 3
        %error "LONG_004142F6"
    %endif
    times 3 - ($ - %%insn_004142f6) db 0
    %%insn_004142f9:
    jnz short 0x414367 ; 004142F9 756C
    %if ($ - %%insn_004142f9) > 2
        %error "LONG_004142F9"
    %endif
    times 2 - ($ - %%insn_004142f9) db 0
    %%insn_004142fb:
    mov [edi],al ; 004142FB 8807
    %if ($ - %%insn_004142fb) > 2
        %error "LONG_004142FB"
    %endif
    times 2 - ($ - %%insn_004142fb) db 0
    %%insn_004142fd:
    inc edi ; 004142FD 47
    %if ($ - %%insn_004142fd) > 1
        %error "LONG_004142FD"
    %endif
    times 1 - ($ - %%insn_004142fd) db 0
    %%insn_004142fe:
    dec ebx ; 004142FE 4B
    %if ($ - %%insn_004142fe) > 1
        %error "LONG_004142FE"
    %endif
    times 1 - ($ - %%insn_004142fe) db 0
    %%insn_004142ff:
    jnz short 0x4142fb ; 004142FF 75FA
    %if ($ - %%insn_004142ff) > 2
        %error "LONG_004142FF"
    %endif
    times 2 - ($ - %%insn_004142ff) db 0
    %%insn_00414301:
    pop ebx ; 00414301 5B
    %if ($ - %%insn_00414301) > 1
        %error "LONG_00414301"
    %endif
    times 1 - ($ - %%insn_00414301) db 0
    %%insn_00414302:
    pop esi ; 00414302 5E
    %if ($ - %%insn_00414302) > 1
        %error "LONG_00414302"
    %endif
    times 1 - ($ - %%insn_00414302) db 0
    %%insn_00414303:
    mov eax,[esp+0x8] ; 00414303 8B442408
    %if ($ - %%insn_00414303) > 4
        %error "LONG_00414303"
    %endif
    times 4 - ($ - %%insn_00414303) db 0
    %%insn_00414307:
    pop edi ; 00414307 5F
    %if ($ - %%insn_00414307) > 1
        %error "LONG_00414307"
    %endif
    times 1 - ($ - %%insn_00414307) db 0
    %%insn_00414308:
    ret ; 00414308 C3
    %if ($ - %%insn_00414308) > 1
        %error "LONG_00414308"
    %endif
    times 1 - ($ - %%insn_00414308) db 0
    %%insn_00414309:
    mov [edi],edx ; 00414309 8917
    %if ($ - %%insn_00414309) > 2
        %error "LONG_00414309"
    %endif
    times 2 - ($ - %%insn_00414309) db 0
    %%insn_0041430b:
    add edi,0x4 ; 0041430B 83C704
    %if ($ - %%insn_0041430b) > 3
        %error "LONG_0041430B"
    %endif
    times 3 - ($ - %%insn_0041430b) db 0
    %%insn_0041430e:
    dec ecx ; 0041430E 49
    %if ($ - %%insn_0041430e) > 1
        %error "LONG_0041430E"
    %endif
    times 1 - ($ - %%insn_0041430e) db 0
    %%insn_0041430f:
    jz short 0x4142c0 ; 0041430F 74AF
    %if ($ - %%insn_0041430f) > 2
        %error "LONG_0041430F"
    %endif
    times 2 - ($ - %%insn_0041430f) db 0
    %%insn_00414311:
    mov edx,0x7efefeff ; 00414311 BAFFFEFE7E
    %if ($ - %%insn_00414311) > 5
        %error "LONG_00414311"
    %endif
    times 5 - ($ - %%insn_00414311) db 0
    %%insn_00414316:
    mov eax,[esi] ; 00414316 8B06
    %if ($ - %%insn_00414316) > 2
        %error "LONG_00414316"
    %endif
    times 2 - ($ - %%insn_00414316) db 0
    db 0x03, 0xD0 ; 00414318 03D0 | add edx,eax | encoding preserved
    %%insn_0041431a:
    xor eax,0xffffffffffffffff ; 0041431A 83F0FF
    %if ($ - %%insn_0041431a) > 3
        %error "LONG_0041431A"
    %endif
    times 3 - ($ - %%insn_0041431a) db 0
    db 0x33, 0xC2 ; 0041431D 33C2 | xor eax,edx | encoding preserved
    %%insn_0041431f:
    mov edx,[esi] ; 0041431F 8B16
    %if ($ - %%insn_0041431f) > 2
        %error "LONG_0041431F"
    %endif
    times 2 - ($ - %%insn_0041431f) db 0
    %%insn_00414321:
    add esi,0x4 ; 00414321 83C604
    %if ($ - %%insn_00414321) > 3
        %error "LONG_00414321"
    %endif
    times 3 - ($ - %%insn_00414321) db 0
    %%insn_00414324:
    test eax,0x81010100 ; 00414324 A900010181
    %if ($ - %%insn_00414324) > 5
        %error "LONG_00414324"
    %endif
    times 5 - ($ - %%insn_00414324) db 0
    %%insn_00414329:
    jz short 0x414309 ; 00414329 74DE
    %if ($ - %%insn_00414329) > 2
        %error "LONG_00414329"
    %endif
    times 2 - ($ - %%insn_00414329) db 0
    %%insn_0041432b:
    test dl,dl ; 0041432B 84D2
    %if ($ - %%insn_0041432b) > 2
        %error "LONG_0041432B"
    %endif
    times 2 - ($ - %%insn_0041432b) db 0
    %%insn_0041432d:
    jz short 0x41435b ; 0041432D 742C
    %if ($ - %%insn_0041432d) > 2
        %error "LONG_0041432D"
    %endif
    times 2 - ($ - %%insn_0041432d) db 0
    %%insn_0041432f:
    test dh,dh ; 0041432F 84F6
    %if ($ - %%insn_0041432f) > 2
        %error "LONG_0041432F"
    %endif
    times 2 - ($ - %%insn_0041432f) db 0
    %%insn_00414331:
    jz short 0x414351 ; 00414331 741E
    %if ($ - %%insn_00414331) > 2
        %error "LONG_00414331"
    %endif
    times 2 - ($ - %%insn_00414331) db 0
    %%insn_00414333:
    test edx,0xff0000 ; 00414333 F7C20000FF00
    %if ($ - %%insn_00414333) > 6
        %error "LONG_00414333"
    %endif
    times 6 - ($ - %%insn_00414333) db 0
    %%insn_00414339:
    jz short 0x414347 ; 00414339 740C
    %if ($ - %%insn_00414339) > 2
        %error "LONG_00414339"
    %endif
    times 2 - ($ - %%insn_00414339) db 0
    %%insn_0041433b:
    test edx,0xff000000 ; 0041433B F7C2000000FF
    %if ($ - %%insn_0041433b) > 6
        %error "LONG_0041433B"
    %endif
    times 6 - ($ - %%insn_0041433b) db 0
    %%insn_00414341:
    jnz short 0x414309 ; 00414341 75C6
    %if ($ - %%insn_00414341) > 2
        %error "LONG_00414341"
    %endif
    times 2 - ($ - %%insn_00414341) db 0
    %%insn_00414343:
    mov [edi],edx ; 00414343 8917
    %if ($ - %%insn_00414343) > 2
        %error "LONG_00414343"
    %endif
    times 2 - ($ - %%insn_00414343) db 0
    %%insn_00414345:
    jmp short 0x41435f ; 00414345 EB18
    %if ($ - %%insn_00414345) > 2
        %error "LONG_00414345"
    %endif
    times 2 - ($ - %%insn_00414345) db 0
    %%insn_00414347:
    and edx,0xffff ; 00414347 81E2FFFF0000
    %if ($ - %%insn_00414347) > 6
        %error "LONG_00414347"
    %endif
    times 6 - ($ - %%insn_00414347) db 0
    %%insn_0041434d:
    mov [edi],edx ; 0041434D 8917
    %if ($ - %%insn_0041434d) > 2
        %error "LONG_0041434D"
    %endif
    times 2 - ($ - %%insn_0041434d) db 0
    %%insn_0041434f:
    jmp short 0x41435f ; 0041434F EB0E
    %if ($ - %%insn_0041434f) > 2
        %error "LONG_0041434F"
    %endif
    times 2 - ($ - %%insn_0041434f) db 0
    %%insn_00414351:
    and edx,0xff ; 00414351 81E2FF000000
    %if ($ - %%insn_00414351) > 6
        %error "LONG_00414351"
    %endif
    times 6 - ($ - %%insn_00414351) db 0
    %%insn_00414357:
    mov [edi],edx ; 00414357 8917
    %if ($ - %%insn_00414357) > 2
        %error "LONG_00414357"
    %endif
    times 2 - ($ - %%insn_00414357) db 0
    %%insn_00414359:
    jmp short 0x41435f ; 00414359 EB04
    %if ($ - %%insn_00414359) > 2
        %error "LONG_00414359"
    %endif
    times 2 - ($ - %%insn_00414359) db 0
    db 0x33, 0xD2 ; 0041435B 33D2 | xor edx,edx | encoding preserved
    %%insn_0041435d:
    mov [edi],edx ; 0041435D 8917
    %if ($ - %%insn_0041435d) > 2
        %error "LONG_0041435D"
    %endif
    times 2 - ($ - %%insn_0041435d) db 0
    %%insn_0041435f:
    add edi,0x4 ; 0041435F 83C704
    %if ($ - %%insn_0041435f) > 3
        %error "LONG_0041435F"
    %endif
    times 3 - ($ - %%insn_0041435f) db 0
    db 0x33, 0xC0 ; 00414362 33C0 | xor eax,eax | encoding preserved
    %%insn_00414364:
    dec ecx ; 00414364 49
    %if ($ - %%insn_00414364) > 1
        %error "LONG_00414364"
    %endif
    times 1 - ($ - %%insn_00414364) db 0
    %%insn_00414365:
    jz short 0x414371 ; 00414365 740A
    %if ($ - %%insn_00414365) > 2
        %error "LONG_00414365"
    %endif
    times 2 - ($ - %%insn_00414365) db 0
    db 0x33, 0xC0 ; 00414367 33C0 | xor eax,eax | encoding preserved
    %%insn_00414369:
    mov [edi],eax ; 00414369 8907
    %if ($ - %%insn_00414369) > 2
        %error "LONG_00414369"
    %endif
    times 2 - ($ - %%insn_00414369) db 0
    %%insn_0041436b:
    add edi,0x4 ; 0041436B 83C704
    %if ($ - %%insn_0041436b) > 3
        %error "LONG_0041436B"
    %endif
    times 3 - ($ - %%insn_0041436b) db 0
    %%insn_0041436e:
    dec ecx ; 0041436E 49
    %if ($ - %%insn_0041436e) > 1
        %error "LONG_0041436E"
    %endif
    times 1 - ($ - %%insn_0041436e) db 0
    %%insn_0041436f:
    jnz short 0x414369 ; 0041436F 75F8
    %if ($ - %%insn_0041436f) > 2
        %error "LONG_0041436F"
    %endif
    times 2 - ($ - %%insn_0041436f) db 0
    %%insn_00414371:
    and ebx,0x3 ; 00414371 83E303
    %if ($ - %%insn_00414371) > 3
        %error "LONG_00414371"
    %endif
    times 3 - ($ - %%insn_00414371) db 0
    %%insn_00414374:
    jnz short 0x4142fb ; 00414374 7585
    %if ($ - %%insn_00414374) > 2
        %error "LONG_00414374"
    %endif
    times 2 - ($ - %%insn_00414374) db 0
    %%insn_00414376:
    mov eax,[esp+0x10] ; 00414376 8B442410
    %if ($ - %%insn_00414376) > 4
        %error "LONG_00414376"
    %endif
    times 4 - ($ - %%insn_00414376) db 0
    %%insn_0041437a:
    pop ebx ; 0041437A 5B
    %if ($ - %%insn_0041437a) > 1
        %error "LONG_0041437A"
    %endif
    times 1 - ($ - %%insn_0041437a) db 0
    %%insn_0041437b:
    pop esi ; 0041437B 5E
    %if ($ - %%insn_0041437b) > 1
        %error "LONG_0041437B"
    %endif
    times 1 - ($ - %%insn_0041437b) db 0
    %%insn_0041437c:
    pop edi ; 0041437C 5F
    %if ($ - %%insn_0041437c) > 1
        %error "LONG_0041437C"
    %endif
    times 1 - ($ - %%insn_0041437c) db 0
    %%insn_0041437d:
    ret ; 0041437D C3
    %if ($ - %%insn_0041437d) > 1
        %error "LONG_0041437D"
    %endif
    times 1 - ($ - %%insn_0041437d) db 0
    %if ($ - %%fragment_start) != 254
        %error "function fragment size drift: 00414280"
    %endif
%endmacro
