; PE virtual entry 00418340
; Ghidra working symbol: FUN_00418340
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418340_part_00 0
    %%fragment_start:
func_00418340:
    %%insn_00418340:
    mov eax,[0x420f20] ; 00418340 A1200F4200
    %if ($ - %%insn_00418340) > 5
        %error "LONG_00418340"
    %endif
    times 5 - ($ - %%insn_00418340) db 0
    %%insn_00418345:
    test eax,eax ; 00418345 85C0
    %if ($ - %%insn_00418345) > 2
        %error "LONG_00418345"
    %endif
    times 2 - ($ - %%insn_00418345) db 0
    %%insn_00418347:
    jnz short 0x41835f ; 00418347 7516
    %if ($ - %%insn_00418347) > 2
        %error "LONG_00418347"
    %endif
    times 2 - ($ - %%insn_00418347) db 0
    %%insn_00418349:
    mov eax,[esp+0x4] ; 00418349 8B442404
    %if ($ - %%insn_00418349) > 4
        %error "LONG_00418349"
    %endif
    times 4 - ($ - %%insn_00418349) db 0
    db 0x66, 0x3D, 0x61, 0x00 ; 0041834D 663D6100 | cmp ax,0x61 | encoding preserved
    %%insn_00418351:
    jc short 0x4183c7 ; 00418351 7274
    %if ($ - %%insn_00418351) > 2
        %error "LONG_00418351"
    %endif
    times 2 - ($ - %%insn_00418351) db 0
    db 0x66, 0x3D, 0x7A, 0x00 ; 00418353 663D7A00 | cmp ax,0x7a | encoding preserved
    %%insn_00418357:
    ja short 0x4183c7 ; 00418357 776E
    %if ($ - %%insn_00418357) > 2
        %error "LONG_00418357"
    %endif
    times 2 - ($ - %%insn_00418357) db 0
    %%insn_00418359:
    add eax,0xffe0 ; 00418359 05E0FF0000
    %if ($ - %%insn_00418359) > 5
        %error "LONG_00418359"
    %endif
    times 5 - ($ - %%insn_00418359) db 0
    %%insn_0041835e:
    ret ; 0041835E C3
    %if ($ - %%insn_0041835e) > 1
        %error "LONG_0041835E"
    %endif
    times 1 - ($ - %%insn_0041835e) db 0
    %%insn_0041835f:
    push edi ; 0041835F 57
    %if ($ - %%insn_0041835f) > 1
        %error "LONG_0041835F"
    %endif
    times 1 - ($ - %%insn_0041835f) db 0
    %%insn_00418360:
    push esi ; 00418360 56
    %if ($ - %%insn_00418360) > 1
        %error "LONG_00418360"
    %endif
    times 1 - ($ - %%insn_00418360) db 0
    %%insn_00418361:
    push ebx ; 00418361 53
    %if ($ - %%insn_00418361) > 1
        %error "LONG_00418361"
    %endif
    times 1 - ($ - %%insn_00418361) db 0
    %%insn_00418362:
    push dword 0x423588 ; 00418362 6888354200
    %if ($ - %%insn_00418362) > 5
        %error "LONG_00418362"
    %endif
    times 5 - ($ - %%insn_00418362) db 0
    %%insn_00418367:
    call dword near [0x4243b4] ; 00418367 FF15B4434200
    %if ($ - %%insn_00418367) > 6
        %error "LONG_00418367"
    %endif
    times 6 - ($ - %%insn_00418367) db 0
    %%insn_0041836d:
    mov eax,[0x423584] ; 0041836D A184354200
    %if ($ - %%insn_0041836d) > 5
        %error "LONG_0041836D"
    %endif
    times 5 - ($ - %%insn_0041836d) db 0
    %%insn_00418372:
    mov edi,[0x4243e0] ; 00418372 8B3DE0434200
    %if ($ - %%insn_00418372) > 6
        %error "LONG_00418372"
    %endif
    times 6 - ($ - %%insn_00418372) db 0
    %%insn_00418378:
    test eax,eax ; 00418378 85C0
    %if ($ - %%insn_00418378) > 2
        %error "LONG_00418378"
    %endif
    times 2 - ($ - %%insn_00418378) db 0
    %%insn_0041837a:
    jz short 0x418394 ; 0041837A 7418
    %if ($ - %%insn_0041837a) > 2
        %error "LONG_0041837A"
    %endif
    times 2 - ($ - %%insn_0041837a) db 0
    %%insn_0041837c:
    push dword 0x423588 ; 0041837C 6888354200
    %if ($ - %%insn_0041837c) > 5
        %error "LONG_0041837C"
    %endif
    times 5 - ($ - %%insn_0041837c) db 0
    %%insn_00418381:
    call edi ; 00418381 FFD7
    %if ($ - %%insn_00418381) > 2
        %error "LONG_00418381"
    %endif
    times 2 - ($ - %%insn_00418381) db 0
    %%insn_00418383:
    push dword 0x13 ; 00418383 6A13
    %if ($ - %%insn_00418383) > 2
        %error "LONG_00418383"
    %endif
    times 2 - ($ - %%insn_00418383) db 0
    %%insn_00418385:
    call 0x40df00 ; 00418385 E8765BFFFF
    %if ($ - %%insn_00418385) > 5
        %error "LONG_00418385"
    %endif
    times 5 - ($ - %%insn_00418385) db 0
    %%insn_0041838a:
    add esp,0x4 ; 0041838A 83C404
    %if ($ - %%insn_0041838a) > 3
        %error "LONG_0041838A"
    %endif
    times 3 - ($ - %%insn_0041838a) db 0
    %%insn_0041838d:
    mov esi,0x1 ; 0041838D BE01000000
    %if ($ - %%insn_0041838d) > 5
        %error "LONG_0041838D"
    %endif
    times 5 - ($ - %%insn_0041838d) db 0
    %%insn_00418392:
    jmp short 0x418396 ; 00418392 EB02
    %if ($ - %%insn_00418392) > 2
        %error "LONG_00418392"
    %endif
    times 2 - ($ - %%insn_00418392) db 0
    db 0x33, 0xF6 ; 00418394 33F6 | xor esi,esi | encoding preserved
    %%insn_00418396:
    mov eax,[esp+0x10] ; 00418396 8B442410
    %if ($ - %%insn_00418396) > 4
        %error "LONG_00418396"
    %endif
    times 4 - ($ - %%insn_00418396) db 0
    %%insn_0041839a:
    push eax ; 0041839A 50
    %if ($ - %%insn_0041839a) > 1
        %error "LONG_0041839A"
    %endif
    times 1 - ($ - %%insn_0041839a) db 0
    %%insn_0041839b:
    call 0x4183d0 ; 0041839B E830000000
    %if ($ - %%insn_0041839b) > 5
        %error "LONG_0041839B"
    %endif
    times 5 - ($ - %%insn_0041839b) db 0
    %%insn_004183a0:
    add esp,0x4 ; 004183A0 83C404
    %if ($ - %%insn_004183a0) > 3
        %error "LONG_004183A0"
    %endif
    times 3 - ($ - %%insn_004183a0) db 0
    db 0x8B, 0xD8 ; 004183A3 8BD8 | mov ebx,eax | encoding preserved
    %%insn_004183a5:
    test esi,esi ; 004183A5 85F6
    %if ($ - %%insn_004183a5) > 2
        %error "LONG_004183A5"
    %endif
    times 2 - ($ - %%insn_004183a5) db 0
    %%insn_004183a7:
    jz short 0x4183ba ; 004183A7 7411
    %if ($ - %%insn_004183a7) > 2
        %error "LONG_004183A7"
    %endif
    times 2 - ($ - %%insn_004183a7) db 0
    %%insn_004183a9:
    push dword 0x13 ; 004183A9 6A13
    %if ($ - %%insn_004183a9) > 2
        %error "LONG_004183A9"
    %endif
    times 2 - ($ - %%insn_004183a9) db 0
    %%insn_004183ab:
    call 0x40df80 ; 004183AB E8D05BFFFF
    %if ($ - %%insn_004183ab) > 5
        %error "LONG_004183AB"
    %endif
    times 5 - ($ - %%insn_004183ab) db 0
    %%insn_004183b0:
    add esp,0x4 ; 004183B0 83C404
    %if ($ - %%insn_004183b0) > 3
        %error "LONG_004183B0"
    %endif
    times 3 - ($ - %%insn_004183b0) db 0
    db 0x66, 0x8B, 0xC3 ; 004183B3 668BC3 | mov ax,bx | encoding preserved
    %%insn_004183b6:
    pop ebx ; 004183B6 5B
    %if ($ - %%insn_004183b6) > 1
        %error "LONG_004183B6"
    %endif
    times 1 - ($ - %%insn_004183b6) db 0
    %%insn_004183b7:
    pop esi ; 004183B7 5E
    %if ($ - %%insn_004183b7) > 1
        %error "LONG_004183B7"
    %endif
    times 1 - ($ - %%insn_004183b7) db 0
    %%insn_004183b8:
    pop edi ; 004183B8 5F
    %if ($ - %%insn_004183b8) > 1
        %error "LONG_004183B8"
    %endif
    times 1 - ($ - %%insn_004183b8) db 0
    %%insn_004183b9:
    ret ; 004183B9 C3
    %if ($ - %%insn_004183b9) > 1
        %error "LONG_004183B9"
    %endif
    times 1 - ($ - %%insn_004183b9) db 0
    %%insn_004183ba:
    push dword 0x423588 ; 004183BA 6888354200
    %if ($ - %%insn_004183ba) > 5
        %error "LONG_004183BA"
    %endif
    times 5 - ($ - %%insn_004183ba) db 0
    %%insn_004183bf:
    call edi ; 004183BF FFD7
    %if ($ - %%insn_004183bf) > 2
        %error "LONG_004183BF"
    %endif
    times 2 - ($ - %%insn_004183bf) db 0
    db 0x66, 0x8B, 0xC3 ; 004183C1 668BC3 | mov ax,bx | encoding preserved
    %%insn_004183c4:
    pop ebx ; 004183C4 5B
    %if ($ - %%insn_004183c4) > 1
        %error "LONG_004183C4"
    %endif
    times 1 - ($ - %%insn_004183c4) db 0
    %%insn_004183c5:
    pop esi ; 004183C5 5E
    %if ($ - %%insn_004183c5) > 1
        %error "LONG_004183C5"
    %endif
    times 1 - ($ - %%insn_004183c5) db 0
    %%insn_004183c6:
    pop edi ; 004183C6 5F
    %if ($ - %%insn_004183c6) > 1
        %error "LONG_004183C6"
    %endif
    times 1 - ($ - %%insn_004183c6) db 0
    %%insn_004183c7:
    ret ; 004183C7 C3
    %if ($ - %%insn_004183c7) > 1
        %error "LONG_004183C7"
    %endif
    times 1 - ($ - %%insn_004183c7) db 0
    %if ($ - %%fragment_start) != 136
        %error "function fragment size drift: 00418340"
    %endif
%endmacro
