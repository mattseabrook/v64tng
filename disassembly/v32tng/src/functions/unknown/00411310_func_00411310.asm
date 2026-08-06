; PE virtual entry 00411310
; Ghidra working symbol: FUN_00411310
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411310_part_00 0
    %%fragment_start:
func_00411310:
    %%insn_00411310:
    push esi ; 00411310 56
    %if ($ - %%insn_00411310) > 1
        %error "LONG_00411310"
    %endif
    times 1 - ($ - %%insn_00411310) db 0
    %%insn_00411311:
    mov esi,[esp+0x8] ; 00411311 8B742408
    %if ($ - %%insn_00411311) > 4
        %error "LONG_00411311"
    %endif
    times 4 - ($ - %%insn_00411311) db 0
    %%insn_00411315:
    push edi ; 00411315 57
    %if ($ - %%insn_00411315) > 1
        %error "LONG_00411315"
    %endif
    times 1 - ($ - %%insn_00411315) db 0
    %%insn_00411316:
    push esi ; 00411316 56
    %if ($ - %%insn_00411316) > 1
        %error "LONG_00411316"
    %endif
    times 1 - ($ - %%insn_00411316) db 0
    %%insn_00411317:
    call 0x4110f0 ; 00411317 E8D4FDFFFF
    %if ($ - %%insn_00411317) > 5
        %error "LONG_00411317"
    %endif
    times 5 - ($ - %%insn_00411317) db 0
    %%insn_0041131c:
    add esp,0x4 ; 0041131C 83C404
    %if ($ - %%insn_0041131c) > 3
        %error "LONG_0041131C"
    %endif
    times 3 - ($ - %%insn_0041131c) db 0
    %%insn_0041131f:
    cmp eax,0xffffffffffffffff ; 0041131F 83F8FF
    %if ($ - %%insn_0041131f) > 3
        %error "LONG_0041131F"
    %endif
    times 3 - ($ - %%insn_0041131f) db 0
    %%insn_00411322:
    jnz short 0x411335 ; 00411322 7511
    %if ($ - %%insn_00411322) > 2
        %error "LONG_00411322"
    %endif
    times 2 - ($ - %%insn_00411322) db 0
    %%insn_00411324:
    call 0x410e10 ; 00411324 E8E7FAFFFF
    %if ($ - %%insn_00411324) > 5
        %error "LONG_00411324"
    %endif
    times 5 - ($ - %%insn_00411324) db 0
    %%insn_00411329:
    mov dword [eax],0x9 ; 00411329 C70009000000
    %if ($ - %%insn_00411329) > 6
        %error "LONG_00411329"
    %endif
    times 6 - ($ - %%insn_00411329) db 0
    %%insn_0041132f:
    or eax,0xffffffffffffffff ; 0041132F 83C8FF
    %if ($ - %%insn_0041132f) > 3
        %error "LONG_0041132F"
    %endif
    times 3 - ($ - %%insn_0041132f) db 0
    %%insn_00411332:
    pop edi ; 00411332 5F
    %if ($ - %%insn_00411332) > 1
        %error "LONG_00411332"
    %endif
    times 1 - ($ - %%insn_00411332) db 0
    %%insn_00411333:
    pop esi ; 00411333 5E
    %if ($ - %%insn_00411333) > 1
        %error "LONG_00411333"
    %endif
    times 1 - ($ - %%insn_00411333) db 0
    %%insn_00411334:
    ret ; 00411334 C3
    %if ($ - %%insn_00411334) > 1
        %error "LONG_00411334"
    %endif
    times 1 - ($ - %%insn_00411334) db 0
    %%insn_00411335:
    mov ecx,[esp+0x14] ; 00411335 8B4C2414
    %if ($ - %%insn_00411335) > 4
        %error "LONG_00411335"
    %endif
    times 4 - ($ - %%insn_00411335) db 0
    %%insn_00411339:
    mov edx,[esp+0x10] ; 00411339 8B542410
    %if ($ - %%insn_00411339) > 4
        %error "LONG_00411339"
    %endif
    times 4 - ($ - %%insn_00411339) db 0
    %%insn_0041133d:
    push ecx ; 0041133D 51
    %if ($ - %%insn_0041133d) > 1
        %error "LONG_0041133D"
    %endif
    times 1 - ($ - %%insn_0041133d) db 0
    %%insn_0041133e:
    push dword 0x0 ; 0041133E 6A00
    %if ($ - %%insn_0041133e) > 2
        %error "LONG_0041133E"
    %endif
    times 2 - ($ - %%insn_0041133e) db 0
    %%insn_00411340:
    push edx ; 00411340 52
    %if ($ - %%insn_00411340) > 1
        %error "LONG_00411340"
    %endif
    times 1 - ($ - %%insn_00411340) db 0
    %%insn_00411341:
    push eax ; 00411341 50
    %if ($ - %%insn_00411341) > 1
        %error "LONG_00411341"
    %endif
    times 1 - ($ - %%insn_00411341) db 0
    %%insn_00411342:
    call dword near [0x424450] ; 00411342 FF1550444200
    %if ($ - %%insn_00411342) > 6
        %error "LONG_00411342"
    %endif
    times 6 - ($ - %%insn_00411342) db 0
    db 0x8B, 0xF8 ; 00411348 8BF8 | mov edi,eax | encoding preserved
    %%insn_0041134a:
    cmp edi,0xffffffffffffffff ; 0041134A 83FFFF
    %if ($ - %%insn_0041134a) > 3
        %error "LONG_0041134A"
    %endif
    times 3 - ($ - %%insn_0041134a) db 0
    %%insn_0041134d:
    jnz short 0x411357 ; 0041134D 7508
    %if ($ - %%insn_0041134d) > 2
        %error "LONG_0041134D"
    %endif
    times 2 - ($ - %%insn_0041134d) db 0
    %%insn_0041134f:
    call dword near [0x4243c4] ; 0041134F FF15C4434200
    %if ($ - %%insn_0041134f) > 6
        %error "LONG_0041134F"
    %endif
    times 6 - ($ - %%insn_0041134f) db 0
    %%insn_00411355:
    jmp short 0x411359 ; 00411355 EB02
    %if ($ - %%insn_00411355) > 2
        %error "LONG_00411355"
    %endif
    times 2 - ($ - %%insn_00411355) db 0
    db 0x33, 0xC0 ; 00411357 33C0 | xor eax,eax | encoding preserved
    %%insn_00411359:
    test eax,eax ; 00411359 85C0
    %if ($ - %%insn_00411359) > 2
        %error "LONG_00411359"
    %endif
    times 2 - ($ - %%insn_00411359) db 0
    %%insn_0041135b:
    jz short 0x41136c ; 0041135B 740F
    %if ($ - %%insn_0041135b) > 2
        %error "LONG_0041135B"
    %endif
    times 2 - ($ - %%insn_0041135b) db 0
    %%insn_0041135d:
    push eax ; 0041135D 50
    %if ($ - %%insn_0041135d) > 1
        %error "LONG_0041135D"
    %endif
    times 1 - ($ - %%insn_0041135d) db 0
    %%insn_0041135e:
    call 0x410d90 ; 0041135E E82DFAFFFF
    %if ($ - %%insn_0041135e) > 5
        %error "LONG_0041135E"
    %endif
    times 5 - ($ - %%insn_0041135e) db 0
    %%insn_00411363:
    add esp,0x4 ; 00411363 83C404
    %if ($ - %%insn_00411363) > 3
        %error "LONG_00411363"
    %endif
    times 3 - ($ - %%insn_00411363) db 0
    %%insn_00411366:
    or eax,0xffffffffffffffff ; 00411366 83C8FF
    %if ($ - %%insn_00411366) > 3
        %error "LONG_00411366"
    %endif
    times 3 - ($ - %%insn_00411366) db 0
    %%insn_00411369:
    pop edi ; 00411369 5F
    %if ($ - %%insn_00411369) > 1
        %error "LONG_00411369"
    %endif
    times 1 - ($ - %%insn_00411369) db 0
    %%insn_0041136a:
    pop esi ; 0041136A 5E
    %if ($ - %%insn_0041136a) > 1
        %error "LONG_0041136A"
    %endif
    times 1 - ($ - %%insn_0041136a) db 0
    %%insn_0041136b:
    ret ; 0041136B C3
    %if ($ - %%insn_0041136b) > 1
        %error "LONG_0041136B"
    %endif
    times 1 - ($ - %%insn_0041136b) db 0
    db 0x8B, 0xC6 ; 0041136C 8BC6 | mov eax,esi | encoding preserved
    %%insn_0041136e:
    and esi,0x1f ; 0041136E 83E61F
    %if ($ - %%insn_0041136e) > 3
        %error "LONG_0041136E"
    %endif
    times 3 - ($ - %%insn_0041136e) db 0
    %%insn_00411371:
    sar eax,byte 0x5 ; 00411371 C1F805
    %if ($ - %%insn_00411371) > 3
        %error "LONG_00411371"
    %endif
    times 3 - ($ - %%insn_00411371) db 0
    %%insn_00411374:
    lea ecx,[esi+esi*8] ; 00411374 8D0CF6
    %if ($ - %%insn_00411374) > 3
        %error "LONG_00411374"
    %endif
    times 3 - ($ - %%insn_00411374) db 0
    %%insn_00411377:
    mov edx,[eax*4+0x423480] ; 00411377 8B148580344200
    %if ($ - %%insn_00411377) > 7
        %error "LONG_00411377"
    %endif
    times 7 - ($ - %%insn_00411377) db 0
    %%insn_0041137e:
    lea eax,[edx+ecx*4+0x4] ; 0041137E 8D448A04
    %if ($ - %%insn_0041137e) > 4
        %error "LONG_0041137E"
    %endif
    times 4 - ($ - %%insn_0041137e) db 0
    %%insn_00411382:
    mov cl,[edx+ecx*4+0x4] ; 00411382 8A4C8A04
    %if ($ - %%insn_00411382) > 4
        %error "LONG_00411382"
    %endif
    times 4 - ($ - %%insn_00411382) db 0
    %%insn_00411386:
    and cl,0xfd ; 00411386 80E1FD
    %if ($ - %%insn_00411386) > 3
        %error "LONG_00411386"
    %endif
    times 3 - ($ - %%insn_00411386) db 0
    %%insn_00411389:
    mov [eax],cl ; 00411389 8808
    %if ($ - %%insn_00411389) > 2
        %error "LONG_00411389"
    %endif
    times 2 - ($ - %%insn_00411389) db 0
    db 0x8B, 0xC7 ; 0041138B 8BC7 | mov eax,edi | encoding preserved
    %%insn_0041138d:
    pop edi ; 0041138D 5F
    %if ($ - %%insn_0041138d) > 1
        %error "LONG_0041138D"
    %endif
    times 1 - ($ - %%insn_0041138d) db 0
    %%insn_0041138e:
    pop esi ; 0041138E 5E
    %if ($ - %%insn_0041138e) > 1
        %error "LONG_0041138E"
    %endif
    times 1 - ($ - %%insn_0041138e) db 0
    %%insn_0041138f:
    ret ; 0041138F C3
    %if ($ - %%insn_0041138f) > 1
        %error "LONG_0041138F"
    %endif
    times 1 - ($ - %%insn_0041138f) db 0
    %if ($ - %%fragment_start) != 128
        %error "function fragment size drift: 00411310"
    %endif
%endmacro
