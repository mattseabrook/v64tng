; PE virtual entry 0040D2F0
; Ghidra working symbol: FUN_0040d2f0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d2f0_part_00 0
    %%fragment_start:
func_0040d2f0:
    %%insn_0040d2f0:
    push ebp ; 0040D2F0 55
    %if ($ - %%insn_0040d2f0) > 1
        %error "LONG_0040D2F0"
    %endif
    times 1 - ($ - %%insn_0040d2f0) db 0
    db 0x8B, 0xEC ; 0040D2F1 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040d2f3:
    push edi ; 0040D2F3 57
    %if ($ - %%insn_0040d2f3) > 1
        %error "LONG_0040D2F3"
    %endif
    times 1 - ($ - %%insn_0040d2f3) db 0
    %%insn_0040d2f4:
    push esi ; 0040D2F4 56
    %if ($ - %%insn_0040d2f4) > 1
        %error "LONG_0040D2F4"
    %endif
    times 1 - ($ - %%insn_0040d2f4) db 0
    %%insn_0040d2f5:
    push ebx ; 0040D2F5 53
    %if ($ - %%insn_0040d2f5) > 1
        %error "LONG_0040D2F5"
    %endif
    times 1 - ($ - %%insn_0040d2f5) db 0
    %%insn_0040d2f6:
    mov esi,[ebp+0xc] ; 0040D2F6 8B750C
    %if ($ - %%insn_0040d2f6) > 3
        %error "LONG_0040D2F6"
    %endif
    times 3 - ($ - %%insn_0040d2f6) db 0
    %%insn_0040d2f9:
    mov edi,[ebp+0x8] ; 0040D2F9 8B7D08
    %if ($ - %%insn_0040d2f9) > 3
        %error "LONG_0040D2F9"
    %endif
    times 3 - ($ - %%insn_0040d2f9) db 0
    %%insn_0040d2fc:
    lea eax,[0x420f18] ; 0040D2FC 8D05180F4200
    %if ($ - %%insn_0040d2fc) > 6
        %error "LONG_0040D2FC"
    %endif
    times 6 - ($ - %%insn_0040d2fc) db 0
    %%insn_0040d302:
    cmp dword [eax+0x8],0x0 ; 0040D302 83780800
    %if ($ - %%insn_0040d302) > 4
        %error "LONG_0040D302"
    %endif
    times 4 - ($ - %%insn_0040d302) db 0
    %%insn_0040d306:
    jnz short 0x40d343 ; 0040D306 753B
    %if ($ - %%insn_0040d306) > 2
        %error "LONG_0040D306"
    %endif
    times 2 - ($ - %%insn_0040d306) db 0
    %%insn_0040d308:
    mov al,0xff ; 0040D308 B0FF
    %if ($ - %%insn_0040d308) > 2
        %error "LONG_0040D308"
    %endif
    times 2 - ($ - %%insn_0040d308) db 0
    db 0x8B, 0xC0 ; 0040D30A 8BC0 | mov eax,eax | encoding preserved
    db 0x0A, 0xC0 ; 0040D30C 0AC0 | or al,al | encoding preserved
    %%insn_0040d30e:
    jz short 0x40d33e ; 0040D30E 742E
    %if ($ - %%insn_0040d30e) > 2
        %error "LONG_0040D30E"
    %endif
    times 2 - ($ - %%insn_0040d30e) db 0
    %%insn_0040d310:
    mov al,[esi] ; 0040D310 8A06
    %if ($ - %%insn_0040d310) > 2
        %error "LONG_0040D310"
    %endif
    times 2 - ($ - %%insn_0040d310) db 0
    %%insn_0040d312:
    inc esi ; 0040D312 46
    %if ($ - %%insn_0040d312) > 1
        %error "LONG_0040D312"
    %endif
    times 1 - ($ - %%insn_0040d312) db 0
    %%insn_0040d313:
    mov ah,[edi] ; 0040D313 8A27
    %if ($ - %%insn_0040d313) > 2
        %error "LONG_0040D313"
    %endif
    times 2 - ($ - %%insn_0040d313) db 0
    %%insn_0040d315:
    inc edi ; 0040D315 47
    %if ($ - %%insn_0040d315) > 1
        %error "LONG_0040D315"
    %endif
    times 1 - ($ - %%insn_0040d315) db 0
    %%insn_0040d316:
    cmp ah,al ; 0040D316 38C4
    %if ($ - %%insn_0040d316) > 2
        %error "LONG_0040D316"
    %endif
    times 2 - ($ - %%insn_0040d316) db 0
    %%insn_0040d318:
    jz short 0x40d30c ; 0040D318 74F2
    %if ($ - %%insn_0040d318) > 2
        %error "LONG_0040D318"
    %endif
    times 2 - ($ - %%insn_0040d318) db 0
    %%insn_0040d31a:
    sub al,0x41 ; 0040D31A 2C41
    %if ($ - %%insn_0040d31a) > 2
        %error "LONG_0040D31A"
    %endif
    times 2 - ($ - %%insn_0040d31a) db 0
    %%insn_0040d31c:
    cmp al,0x1a ; 0040D31C 3C1A
    %if ($ - %%insn_0040d31c) > 2
        %error "LONG_0040D31C"
    %endif
    times 2 - ($ - %%insn_0040d31c) db 0
    db 0x1A, 0xC9 ; 0040D31E 1AC9 | sbb cl,cl | encoding preserved
    %%insn_0040d320:
    and cl,0x20 ; 0040D320 80E120
    %if ($ - %%insn_0040d320) > 3
        %error "LONG_0040D320"
    %endif
    times 3 - ($ - %%insn_0040d320) db 0
    db 0x02, 0xC1 ; 0040D323 02C1 | add al,cl | encoding preserved
    %%insn_0040d325:
    add al,0x41 ; 0040D325 0441
    %if ($ - %%insn_0040d325) > 2
        %error "LONG_0040D325"
    %endif
    times 2 - ($ - %%insn_0040d325) db 0
    %%insn_0040d327:
    xchg ah,al ; 0040D327 86E0
    %if ($ - %%insn_0040d327) > 2
        %error "LONG_0040D327"
    %endif
    times 2 - ($ - %%insn_0040d327) db 0
    %%insn_0040d329:
    sub al,0x41 ; 0040D329 2C41
    %if ($ - %%insn_0040d329) > 2
        %error "LONG_0040D329"
    %endif
    times 2 - ($ - %%insn_0040d329) db 0
    %%insn_0040d32b:
    cmp al,0x1a ; 0040D32B 3C1A
    %if ($ - %%insn_0040d32b) > 2
        %error "LONG_0040D32B"
    %endif
    times 2 - ($ - %%insn_0040d32b) db 0
    db 0x1A, 0xC9 ; 0040D32D 1AC9 | sbb cl,cl | encoding preserved
    %%insn_0040d32f:
    and cl,0x20 ; 0040D32F 80E120
    %if ($ - %%insn_0040d32f) > 3
        %error "LONG_0040D32F"
    %endif
    times 3 - ($ - %%insn_0040d32f) db 0
    db 0x02, 0xC1 ; 0040D332 02C1 | add al,cl | encoding preserved
    %%insn_0040d334:
    add al,0x41 ; 0040D334 0441
    %if ($ - %%insn_0040d334) > 2
        %error "LONG_0040D334"
    %endif
    times 2 - ($ - %%insn_0040d334) db 0
    %%insn_0040d336:
    cmp al,ah ; 0040D336 38E0
    %if ($ - %%insn_0040d336) > 2
        %error "LONG_0040D336"
    %endif
    times 2 - ($ - %%insn_0040d336) db 0
    %%insn_0040d338:
    jz short 0x40d30c ; 0040D338 74D2
    %if ($ - %%insn_0040d338) > 2
        %error "LONG_0040D338"
    %endif
    times 2 - ($ - %%insn_0040d338) db 0
    db 0x1A, 0xC0 ; 0040D33A 1AC0 | sbb al,al | encoding preserved
    %%insn_0040d33c:
    sbb al,0xff ; 0040D33C 1CFF
    %if ($ - %%insn_0040d33c) > 2
        %error "LONG_0040D33C"
    %endif
    times 2 - ($ - %%insn_0040d33c) db 0
    %%insn_0040d33e:
    movsx eax,al ; 0040D33E 0FBEC0
    %if ($ - %%insn_0040d33e) > 3
        %error "LONG_0040D33E"
    %endif
    times 3 - ($ - %%insn_0040d33e) db 0
    %%insn_0040d341:
    jmp short 0x40d3bb ; 0040D341 EB78
    %if ($ - %%insn_0040d341) > 2
        %error "LONG_0040D341"
    %endif
    times 2 - ($ - %%insn_0040d341) db 0
    %%insn_0040d343:
    lock inc dword [0x423588] ; 0040D343 F0FF0588354200
    %if ($ - %%insn_0040d343) > 7
        %error "LONG_0040D343"
    %endif
    times 7 - ($ - %%insn_0040d343) db 0
    %%insn_0040d34a:
    cmp dword [0x423584],0x0 ; 0040D34A 833D8435420000
    %if ($ - %%insn_0040d34a) > 7
        %error "LONG_0040D34A"
    %endif
    times 7 - ($ - %%insn_0040d34a) db 0
    %%insn_0040d351:
    jg short 0x40d357 ; 0040D351 7F04
    %if ($ - %%insn_0040d351) > 2
        %error "LONG_0040D351"
    %endif
    times 2 - ($ - %%insn_0040d351) db 0
    %%insn_0040d353:
    push dword 0x0 ; 0040D353 6A00
    %if ($ - %%insn_0040d353) > 2
        %error "LONG_0040D353"
    %endif
    times 2 - ($ - %%insn_0040d353) db 0
    %%insn_0040d355:
    jmp short 0x40d36c ; 0040D355 EB15
    %if ($ - %%insn_0040d355) > 2
        %error "LONG_0040D355"
    %endif
    times 2 - ($ - %%insn_0040d355) db 0
    %%insn_0040d357:
    lock dec dword [0x423588] ; 0040D357 F0FF0D88354200
    %if ($ - %%insn_0040d357) > 7
        %error "LONG_0040D357"
    %endif
    times 7 - ($ - %%insn_0040d357) db 0
    %%insn_0040d35e:
    push dword 0x13 ; 0040D35E 6A13
    %if ($ - %%insn_0040d35e) > 2
        %error "LONG_0040D35E"
    %endif
    times 2 - ($ - %%insn_0040d35e) db 0
    %%insn_0040d360:
    call 0x40df00 ; 0040D360 E89B0B0000
    %if ($ - %%insn_0040d360) > 5
        %error "LONG_0040D360"
    %endif
    times 5 - ($ - %%insn_0040d360) db 0
    %%insn_0040d365:
    mov dword [esp],0x1 ; 0040D365 C7042401000000
    %if ($ - %%insn_0040d365) > 7
        %error "LONG_0040D365"
    %endif
    times 7 - ($ - %%insn_0040d365) db 0
    %%insn_0040d36c:
    mov eax,0xff ; 0040D36C B8FF000000
    %if ($ - %%insn_0040d36c) > 5
        %error "LONG_0040D36C"
    %endif
    times 5 - ($ - %%insn_0040d36c) db 0
    db 0x33, 0xDB ; 0040D371 33DB | xor ebx,ebx | encoding preserved
    %%insn_0040d373:
    nop ; 0040D373 90
    %if ($ - %%insn_0040d373) > 1
        %error "LONG_0040D373"
    %endif
    times 1 - ($ - %%insn_0040d373) db 0
    db 0x0A, 0xC0 ; 0040D374 0AC0 | or al,al | encoding preserved
    %%insn_0040d376:
    jz short 0x40d39f ; 0040D376 7427
    %if ($ - %%insn_0040d376) > 2
        %error "LONG_0040D376"
    %endif
    times 2 - ($ - %%insn_0040d376) db 0
    %%insn_0040d378:
    mov al,[esi] ; 0040D378 8A06
    %if ($ - %%insn_0040d378) > 2
        %error "LONG_0040D378"
    %endif
    times 2 - ($ - %%insn_0040d378) db 0
    %%insn_0040d37a:
    inc esi ; 0040D37A 46
    %if ($ - %%insn_0040d37a) > 1
        %error "LONG_0040D37A"
    %endif
    times 1 - ($ - %%insn_0040d37a) db 0
    %%insn_0040d37b:
    mov bl,[edi] ; 0040D37B 8A1F
    %if ($ - %%insn_0040d37b) > 2
        %error "LONG_0040D37B"
    %endif
    times 2 - ($ - %%insn_0040d37b) db 0
    %%insn_0040d37d:
    inc edi ; 0040D37D 47
    %if ($ - %%insn_0040d37d) > 1
        %error "LONG_0040D37D"
    %endif
    times 1 - ($ - %%insn_0040d37d) db 0
    %%insn_0040d37e:
    cmp al,bl ; 0040D37E 38D8
    %if ($ - %%insn_0040d37e) > 2
        %error "LONG_0040D37E"
    %endif
    times 2 - ($ - %%insn_0040d37e) db 0
    %%insn_0040d380:
    jz short 0x40d374 ; 0040D380 74F2
    %if ($ - %%insn_0040d380) > 2
        %error "LONG_0040D380"
    %endif
    times 2 - ($ - %%insn_0040d380) db 0
    %%insn_0040d382:
    push eax ; 0040D382 50
    %if ($ - %%insn_0040d382) > 1
        %error "LONG_0040D382"
    %endif
    times 1 - ($ - %%insn_0040d382) db 0
    %%insn_0040d383:
    push ebx ; 0040D383 53
    %if ($ - %%insn_0040d383) > 1
        %error "LONG_0040D383"
    %endif
    times 1 - ($ - %%insn_0040d383) db 0
    %%insn_0040d384:
    call 0x410c90 ; 0040D384 E807390000
    %if ($ - %%insn_0040d384) > 5
        %error "LONG_0040D384"
    %endif
    times 5 - ($ - %%insn_0040d384) db 0
    db 0x8B, 0xD8 ; 0040D389 8BD8 | mov ebx,eax | encoding preserved
    %%insn_0040d38b:
    add esp,0x4 ; 0040D38B 83C404
    %if ($ - %%insn_0040d38b) > 3
        %error "LONG_0040D38B"
    %endif
    times 3 - ($ - %%insn_0040d38b) db 0
    %%insn_0040d38e:
    call 0x410c90 ; 0040D38E E8FD380000
    %if ($ - %%insn_0040d38e) > 5
        %error "LONG_0040D38E"
    %endif
    times 5 - ($ - %%insn_0040d38e) db 0
    %%insn_0040d393:
    add esp,0x4 ; 0040D393 83C404
    %if ($ - %%insn_0040d393) > 3
        %error "LONG_0040D393"
    %endif
    times 3 - ($ - %%insn_0040d393) db 0
    %%insn_0040d396:
    cmp bl,al ; 0040D396 38C3
    %if ($ - %%insn_0040d396) > 2
        %error "LONG_0040D396"
    %endif
    times 2 - ($ - %%insn_0040d396) db 0
    %%insn_0040d398:
    jz short 0x40d374 ; 0040D398 74DA
    %if ($ - %%insn_0040d398) > 2
        %error "LONG_0040D398"
    %endif
    times 2 - ($ - %%insn_0040d398) db 0
    db 0x1B, 0xC0 ; 0040D39A 1BC0 | sbb eax,eax | encoding preserved
    %%insn_0040d39c:
    sbb eax,0xffffffffffffffff ; 0040D39C 83D8FF
    %if ($ - %%insn_0040d39c) > 3
        %error "LONG_0040D39C"
    %endif
    times 3 - ($ - %%insn_0040d39c) db 0
    db 0x8B, 0xD8 ; 0040D39F 8BD8 | mov ebx,eax | encoding preserved
    %%insn_0040d3a1:
    pop eax ; 0040D3A1 58
    %if ($ - %%insn_0040d3a1) > 1
        %error "LONG_0040D3A1"
    %endif
    times 1 - ($ - %%insn_0040d3a1) db 0
    db 0x0B, 0xC0 ; 0040D3A2 0BC0 | or eax,eax | encoding preserved
    %%insn_0040d3a4:
    jnz short 0x40d3af ; 0040D3A4 7509
    %if ($ - %%insn_0040d3a4) > 2
        %error "LONG_0040D3A4"
    %endif
    times 2 - ($ - %%insn_0040d3a4) db 0
    %%insn_0040d3a6:
    lock dec dword [0x423588] ; 0040D3A6 F0FF0D88354200
    %if ($ - %%insn_0040d3a6) > 7
        %error "LONG_0040D3A6"
    %endif
    times 7 - ($ - %%insn_0040d3a6) db 0
    %%insn_0040d3ad:
    jmp short 0x40d3b9 ; 0040D3AD EB0A
    %if ($ - %%insn_0040d3ad) > 2
        %error "LONG_0040D3AD"
    %endif
    times 2 - ($ - %%insn_0040d3ad) db 0
    %%insn_0040d3af:
    push dword 0x13 ; 0040D3AF 6A13
    %if ($ - %%insn_0040d3af) > 2
        %error "LONG_0040D3AF"
    %endif
    times 2 - ($ - %%insn_0040d3af) db 0
    %%insn_0040d3b1:
    call 0x40df80 ; 0040D3B1 E8CA0B0000
    %if ($ - %%insn_0040d3b1) > 5
        %error "LONG_0040D3B1"
    %endif
    times 5 - ($ - %%insn_0040d3b1) db 0
    %%insn_0040d3b6:
    add esp,0x4 ; 0040D3B6 83C404
    %if ($ - %%insn_0040d3b6) > 3
        %error "LONG_0040D3B6"
    %endif
    times 3 - ($ - %%insn_0040d3b6) db 0
    db 0x8B, 0xC3 ; 0040D3B9 8BC3 | mov eax,ebx | encoding preserved
    %%insn_0040d3bb:
    pop ebx ; 0040D3BB 5B
    %if ($ - %%insn_0040d3bb) > 1
        %error "LONG_0040D3BB"
    %endif
    times 1 - ($ - %%insn_0040d3bb) db 0
    %%insn_0040d3bc:
    pop esi ; 0040D3BC 5E
    %if ($ - %%insn_0040d3bc) > 1
        %error "LONG_0040D3BC"
    %endif
    times 1 - ($ - %%insn_0040d3bc) db 0
    %%insn_0040d3bd:
    pop edi ; 0040D3BD 5F
    %if ($ - %%insn_0040d3bd) > 1
        %error "LONG_0040D3BD"
    %endif
    times 1 - ($ - %%insn_0040d3bd) db 0
    %%insn_0040d3be:
    leave ; 0040D3BE C9
    %if ($ - %%insn_0040d3be) > 1
        %error "LONG_0040D3BE"
    %endif
    times 1 - ($ - %%insn_0040d3be) db 0
    %%insn_0040d3bf:
    ret ; 0040D3BF C3
    %if ($ - %%insn_0040d3bf) > 1
        %error "LONG_0040D3BF"
    %endif
    times 1 - ($ - %%insn_0040d3bf) db 0
    %if ($ - %%fragment_start) != 208
        %error "function fragment size drift: 0040D2F0"
    %endif
%endmacro
