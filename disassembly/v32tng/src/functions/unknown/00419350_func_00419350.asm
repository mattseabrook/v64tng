; PE virtual entry 00419350
; Ghidra working symbol: FUN_00419350
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00419350_part_00 0
    %%fragment_start:
func_00419350:
    %%insn_00419350:
    push ebx ; 00419350 53
    %if ($ - %%insn_00419350) > 1
        %error "LONG_00419350"
    %endif
    times 1 - ($ - %%insn_00419350) db 0
    %%insn_00419351:
    push esi ; 00419351 56
    %if ($ - %%insn_00419351) > 1
        %error "LONG_00419351"
    %endif
    times 1 - ($ - %%insn_00419351) db 0
    %%insn_00419352:
    mov esi,[esp+0xc] ; 00419352 8B74240C
    %if ($ - %%insn_00419352) > 4
        %error "LONG_00419352"
    %endif
    times 4 - ($ - %%insn_00419352) db 0
    %%insn_00419356:
    push edi ; 00419356 57
    %if ($ - %%insn_00419356) > 1
        %error "LONG_00419356"
    %endif
    times 1 - ($ - %%insn_00419356) db 0
    %%insn_00419357:
    test esi,esi ; 00419357 85F6
    %if ($ - %%insn_00419357) > 2
        %error "LONG_00419357"
    %endif
    times 2 - ($ - %%insn_00419357) db 0
    %%insn_00419359:
    jz short 0x41939a ; 00419359 743F
    %if ($ - %%insn_00419359) > 2
        %error "LONG_00419359"
    %endif
    times 2 - ($ - %%insn_00419359) db 0
    db 0x8B, 0xFE ; 0041935B 8BFE | mov edi,esi | encoding preserved
    %%insn_0041935d:
    or ecx,0xffffffffffffffff ; 0041935D 83C9FF
    %if ($ - %%insn_0041935d) > 3
        %error "LONG_0041935D"
    %endif
    times 3 - ($ - %%insn_0041935d) db 0
    db 0x33, 0xC0 ; 00419360 33C0 | xor eax,eax | encoding preserved
    %%insn_00419362:
    repne scasb ; 00419362 F2AE
    %if ($ - %%insn_00419362) > 2
        %error "LONG_00419362"
    %endif
    times 2 - ($ - %%insn_00419362) db 0
    %%insn_00419364:
    not ecx ; 00419364 F7D1
    %if ($ - %%insn_00419364) > 2
        %error "LONG_00419364"
    %endif
    times 2 - ($ - %%insn_00419364) db 0
    %%insn_00419366:
    push ecx ; 00419366 51
    %if ($ - %%insn_00419366) > 1
        %error "LONG_00419366"
    %endif
    times 1 - ($ - %%insn_00419366) db 0
    %%insn_00419367:
    call 0x40cdc0 ; 00419367 E8543AFFFF
    %if ($ - %%insn_00419367) > 5
        %error "LONG_00419367"
    %endif
    times 5 - ($ - %%insn_00419367) db 0
    db 0x8B, 0xD0 ; 0041936C 8BD0 | mov edx,eax | encoding preserved
    %%insn_0041936e:
    add esp,0x4 ; 0041936E 83C404
    %if ($ - %%insn_0041936e) > 3
        %error "LONG_0041936E"
    %endif
    times 3 - ($ - %%insn_0041936e) db 0
    %%insn_00419371:
    test edx,edx ; 00419371 85D2
    %if ($ - %%insn_00419371) > 2
        %error "LONG_00419371"
    %endif
    times 2 - ($ - %%insn_00419371) db 0
    %%insn_00419373:
    jz short 0x41939a ; 00419373 7425
    %if ($ - %%insn_00419373) > 2
        %error "LONG_00419373"
    %endif
    times 2 - ($ - %%insn_00419373) db 0
    db 0x8B, 0xFE ; 00419375 8BFE | mov edi,esi | encoding preserved
    %%insn_00419377:
    or ecx,0xffffffffffffffff ; 00419377 83C9FF
    %if ($ - %%insn_00419377) > 3
        %error "LONG_00419377"
    %endif
    times 3 - ($ - %%insn_00419377) db 0
    db 0x33, 0xC0 ; 0041937A 33C0 | xor eax,eax | encoding preserved
    %%insn_0041937c:
    repne scasb ; 0041937C F2AE
    %if ($ - %%insn_0041937c) > 2
        %error "LONG_0041937C"
    %endif
    times 2 - ($ - %%insn_0041937c) db 0
    %%insn_0041937e:
    not ecx ; 0041937E F7D1
    %if ($ - %%insn_0041937e) > 2
        %error "LONG_0041937E"
    %endif
    times 2 - ($ - %%insn_0041937e) db 0
    db 0x2B, 0xF9 ; 00419380 2BF9 | sub edi,ecx | encoding preserved
    db 0x8B, 0xF7 ; 00419382 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xD9 ; 00419384 8BD9 | mov ebx,ecx | encoding preserved
    db 0x8B, 0xFA ; 00419386 8BFA | mov edi,edx | encoding preserved
    db 0x8B, 0xC7 ; 00419388 8BC7 | mov eax,edi | encoding preserved
    %%insn_0041938a:
    shr ecx,byte 0x2 ; 0041938A C1E902
    %if ($ - %%insn_0041938a) > 3
        %error "LONG_0041938A"
    %endif
    times 3 - ($ - %%insn_0041938a) db 0
    %%insn_0041938d:
    rep movsd ; 0041938D F3A5
    %if ($ - %%insn_0041938d) > 2
        %error "LONG_0041938D"
    %endif
    times 2 - ($ - %%insn_0041938d) db 0
    db 0x8B, 0xCB ; 0041938F 8BCB | mov ecx,ebx | encoding preserved
    %%insn_00419391:
    and ecx,0x3 ; 00419391 83E103
    %if ($ - %%insn_00419391) > 3
        %error "LONG_00419391"
    %endif
    times 3 - ($ - %%insn_00419391) db 0
    %%insn_00419394:
    rep movsb ; 00419394 F3A4
    %if ($ - %%insn_00419394) > 2
        %error "LONG_00419394"
    %endif
    times 2 - ($ - %%insn_00419394) db 0
    %%insn_00419396:
    pop edi ; 00419396 5F
    %if ($ - %%insn_00419396) > 1
        %error "LONG_00419396"
    %endif
    times 1 - ($ - %%insn_00419396) db 0
    %%insn_00419397:
    pop esi ; 00419397 5E
    %if ($ - %%insn_00419397) > 1
        %error "LONG_00419397"
    %endif
    times 1 - ($ - %%insn_00419397) db 0
    %%insn_00419398:
    pop ebx ; 00419398 5B
    %if ($ - %%insn_00419398) > 1
        %error "LONG_00419398"
    %endif
    times 1 - ($ - %%insn_00419398) db 0
    %%insn_00419399:
    ret ; 00419399 C3
    %if ($ - %%insn_00419399) > 1
        %error "LONG_00419399"
    %endif
    times 1 - ($ - %%insn_00419399) db 0
    %%insn_0041939a:
    pop edi ; 0041939A 5F
    %if ($ - %%insn_0041939a) > 1
        %error "LONG_0041939A"
    %endif
    times 1 - ($ - %%insn_0041939a) db 0
    %%insn_0041939b:
    pop esi ; 0041939B 5E
    %if ($ - %%insn_0041939b) > 1
        %error "LONG_0041939B"
    %endif
    times 1 - ($ - %%insn_0041939b) db 0
    db 0x33, 0xC0 ; 0041939C 33C0 | xor eax,eax | encoding preserved
    %%insn_0041939e:
    pop ebx ; 0041939E 5B
    %if ($ - %%insn_0041939e) > 1
        %error "LONG_0041939E"
    %endif
    times 1 - ($ - %%insn_0041939e) db 0
    %%insn_0041939f:
    ret ; 0041939F C3
    %if ($ - %%insn_0041939f) > 1
        %error "LONG_0041939F"
    %endif
    times 1 - ($ - %%insn_0041939f) db 0
    %if ($ - %%fragment_start) != 80
        %error "function fragment size drift: 00419350"
    %endif
%endmacro
