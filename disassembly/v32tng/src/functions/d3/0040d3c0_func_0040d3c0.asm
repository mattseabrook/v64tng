; PE virtual entry 0040D3C0
; Ghidra working symbol: FUN_0040d3c0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d3c0_part_00 0
    %%fragment_start:
func_0040d3c0:
    %%insn_0040d3c0:
    mov eax,[0x423580] ; 0040D3C0 A180354200
    %if ($ - %%insn_0040d3c0) > 5
        %error "LONG_0040D3C0"
    %endif
    times 5 - ($ - %%insn_0040d3c0) db 0
    %%insn_0040d3c5:
    push ebx ; 0040D3C5 53
    %if ($ - %%insn_0040d3c5) > 1
        %error "LONG_0040D3C5"
    %endif
    times 1 - ($ - %%insn_0040d3c5) db 0
    %%insn_0040d3c6:
    push esi ; 0040D3C6 56
    %if ($ - %%insn_0040d3c6) > 1
        %error "LONG_0040D3C6"
    %endif
    times 1 - ($ - %%insn_0040d3c6) db 0
    %%insn_0040d3c7:
    mov esi,[esp+0xc] ; 0040D3C7 8B74240C
    %if ($ - %%insn_0040d3c7) > 4
        %error "LONG_0040D3C7"
    %endif
    times 4 - ($ - %%insn_0040d3c7) db 0
    db 0x3B, 0xF0 ; 0040D3CB 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0040d3cd:
    push edi ; 0040D3CD 57
    %if ($ - %%insn_0040d3cd) > 1
        %error "LONG_0040D3CD"
    %endif
    times 1 - ($ - %%insn_0040d3cd) db 0
    %%insn_0040d3ce:
    jnc short 0x40d447 ; 0040D3CE 7377
    %if ($ - %%insn_0040d3ce) > 2
        %error "LONG_0040D3CE"
    %endif
    times 2 - ($ - %%insn_0040d3ce) db 0
    db 0x8B, 0xC6 ; 0040D3D0 8BC6 | mov eax,esi | encoding preserved
    db 0x8B, 0xCE ; 0040D3D2 8BCE | mov ecx,esi | encoding preserved
    %%insn_0040d3d4:
    and eax,0x1f ; 0040D3D4 83E01F
    %if ($ - %%insn_0040d3d4) > 3
        %error "LONG_0040D3D4"
    %endif
    times 3 - ($ - %%insn_0040d3d4) db 0
    %%insn_0040d3d7:
    sar ecx,byte 0x5 ; 0040D3D7 C1F905
    %if ($ - %%insn_0040d3d7) > 3
        %error "LONG_0040D3D7"
    %endif
    times 3 - ($ - %%insn_0040d3d7) db 0
    %%insn_0040d3da:
    lea edx,[eax+eax*8] ; 0040D3DA 8D14C0
    %if ($ - %%insn_0040d3da) > 3
        %error "LONG_0040D3DA"
    %endif
    times 3 - ($ - %%insn_0040d3da) db 0
    %%insn_0040d3dd:
    mov eax,[ecx*4+0x423480] ; 0040D3DD 8B048D80344200
    %if ($ - %%insn_0040d3dd) > 7
        %error "LONG_0040D3DD"
    %endif
    times 7 - ($ - %%insn_0040d3dd) db 0
    %%insn_0040d3e4:
    test byte [eax+edx*4+0x4],0x1 ; 0040D3E4 F644900401
    %if ($ - %%insn_0040d3e4) > 5
        %error "LONG_0040D3E4"
    %endif
    times 5 - ($ - %%insn_0040d3e4) db 0
    %%insn_0040d3e9:
    jz short 0x40d447 ; 0040D3E9 745C
    %if ($ - %%insn_0040d3e9) > 2
        %error "LONG_0040D3E9"
    %endif
    times 2 - ($ - %%insn_0040d3e9) db 0
    %%insn_0040d3eb:
    push esi ; 0040D3EB 56
    %if ($ - %%insn_0040d3eb) > 1
        %error "LONG_0040D3EB"
    %endif
    times 1 - ($ - %%insn_0040d3eb) db 0
    %%insn_0040d3ec:
    call 0x4111f0 ; 0040D3EC E8FF3D0000
    %if ($ - %%insn_0040d3ec) > 5
        %error "LONG_0040D3EC"
    %endif
    times 5 - ($ - %%insn_0040d3ec) db 0
    %%insn_0040d3f1:
    add esp,0x4 ; 0040D3F1 83C404
    %if ($ - %%insn_0040d3f1) > 3
        %error "LONG_0040D3F1"
    %endif
    times 3 - ($ - %%insn_0040d3f1) db 0
    %%insn_0040d3f4:
    push dword 0x1 ; 0040D3F4 6A01
    %if ($ - %%insn_0040d3f4) > 2
        %error "LONG_0040D3F4"
    %endif
    times 2 - ($ - %%insn_0040d3f4) db 0
    %%insn_0040d3f6:
    push dword 0x0 ; 0040D3F6 6A00
    %if ($ - %%insn_0040d3f6) > 2
        %error "LONG_0040D3F6"
    %endif
    times 2 - ($ - %%insn_0040d3f6) db 0
    %%insn_0040d3f8:
    push esi ; 0040D3F8 56
    %if ($ - %%insn_0040d3f8) > 1
        %error "LONG_0040D3F8"
    %endif
    times 1 - ($ - %%insn_0040d3f8) db 0
    %%insn_0040d3f9:
    call 0x411310 ; 0040D3F9 E8123F0000
    %if ($ - %%insn_0040d3f9) > 5
        %error "LONG_0040D3F9"
    %endif
    times 5 - ($ - %%insn_0040d3f9) db 0
    db 0x8B, 0xF8 ; 0040D3FE 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040d400:
    add esp,0xc ; 0040D400 83C40C
    %if ($ - %%insn_0040d400) > 3
        %error "LONG_0040D400"
    %endif
    times 3 - ($ - %%insn_0040d400) db 0
    %%insn_0040d403:
    cmp edi,0xffffffffffffffff ; 0040D403 83FFFF
    %if ($ - %%insn_0040d403) > 3
        %error "LONG_0040D403"
    %endif
    times 3 - ($ - %%insn_0040d403) db 0
    %%insn_0040d406:
    jnz short 0x40d419 ; 0040D406 7511
    %if ($ - %%insn_0040d406) > 2
        %error "LONG_0040D406"
    %endif
    times 2 - ($ - %%insn_0040d406) db 0
    %%insn_0040d408:
    push esi ; 0040D408 56
    %if ($ - %%insn_0040d408) > 1
        %error "LONG_0040D408"
    %endif
    times 1 - ($ - %%insn_0040d408) db 0
    db 0x0B, 0xD8 ; 0040D409 0BD8 | or ebx,eax | encoding preserved
    %%insn_0040d40b:
    call 0x411260 ; 0040D40B E8503E0000
    %if ($ - %%insn_0040d40b) > 5
        %error "LONG_0040D40B"
    %endif
    times 5 - ($ - %%insn_0040d40b) db 0
    %%insn_0040d410:
    add esp,0x4 ; 0040D410 83C404
    %if ($ - %%insn_0040d410) > 3
        %error "LONG_0040D410"
    %endif
    times 3 - ($ - %%insn_0040d410) db 0
    db 0x8B, 0xC3 ; 0040D413 8BC3 | mov eax,ebx | encoding preserved
    %%insn_0040d415:
    pop edi ; 0040D415 5F
    %if ($ - %%insn_0040d415) > 1
        %error "LONG_0040D415"
    %endif
    times 1 - ($ - %%insn_0040d415) db 0
    %%insn_0040d416:
    pop esi ; 0040D416 5E
    %if ($ - %%insn_0040d416) > 1
        %error "LONG_0040D416"
    %endif
    times 1 - ($ - %%insn_0040d416) db 0
    %%insn_0040d417:
    pop ebx ; 0040D417 5B
    %if ($ - %%insn_0040d417) > 1
        %error "LONG_0040D417"
    %endif
    times 1 - ($ - %%insn_0040d417) db 0
    %%insn_0040d418:
    ret ; 0040D418 C3
    %if ($ - %%insn_0040d418) > 1
        %error "LONG_0040D418"
    %endif
    times 1 - ($ - %%insn_0040d418) db 0
    %%insn_0040d419:
    push dword 0x2 ; 0040D419 6A02
    %if ($ - %%insn_0040d419) > 2
        %error "LONG_0040D419"
    %endif
    times 2 - ($ - %%insn_0040d419) db 0
    %%insn_0040d41b:
    push dword 0x0 ; 0040D41B 6A00
    %if ($ - %%insn_0040d41b) > 2
        %error "LONG_0040D41B"
    %endif
    times 2 - ($ - %%insn_0040d41b) db 0
    %%insn_0040d41d:
    push esi ; 0040D41D 56
    %if ($ - %%insn_0040d41d) > 1
        %error "LONG_0040D41D"
    %endif
    times 1 - ($ - %%insn_0040d41d) db 0
    %%insn_0040d41e:
    call 0x411310 ; 0040D41E E8ED3E0000
    %if ($ - %%insn_0040d41e) > 5
        %error "LONG_0040D41E"
    %endif
    times 5 - ($ - %%insn_0040d41e) db 0
    db 0x8B, 0xD8 ; 0040D423 8BD8 | mov ebx,eax | encoding preserved
    %%insn_0040d425:
    add esp,0xc ; 0040D425 83C40C
    %if ($ - %%insn_0040d425) > 3
        %error "LONG_0040D425"
    %endif
    times 3 - ($ - %%insn_0040d425) db 0
    db 0x3B, 0xFB ; 0040D428 3BFB | cmp edi,ebx | encoding preserved
    %%insn_0040d42a:
    jz short 0x40d438 ; 0040D42A 740C
    %if ($ - %%insn_0040d42a) > 2
        %error "LONG_0040D42A"
    %endif
    times 2 - ($ - %%insn_0040d42a) db 0
    %%insn_0040d42c:
    push dword 0x0 ; 0040D42C 6A00
    %if ($ - %%insn_0040d42c) > 2
        %error "LONG_0040D42C"
    %endif
    times 2 - ($ - %%insn_0040d42c) db 0
    %%insn_0040d42e:
    push edi ; 0040D42E 57
    %if ($ - %%insn_0040d42e) > 1
        %error "LONG_0040D42E"
    %endif
    times 1 - ($ - %%insn_0040d42e) db 0
    %%insn_0040d42f:
    push esi ; 0040D42F 56
    %if ($ - %%insn_0040d42f) > 1
        %error "LONG_0040D42F"
    %endif
    times 1 - ($ - %%insn_0040d42f) db 0
    %%insn_0040d430:
    call 0x411310 ; 0040D430 E8DB3E0000
    %if ($ - %%insn_0040d430) > 5
        %error "LONG_0040D430"
    %endif
    times 5 - ($ - %%insn_0040d430) db 0
    %%insn_0040d435:
    add esp,0xc ; 0040D435 83C40C
    %if ($ - %%insn_0040d435) > 3
        %error "LONG_0040D435"
    %endif
    times 3 - ($ - %%insn_0040d435) db 0
    %%insn_0040d438:
    push esi ; 0040D438 56
    %if ($ - %%insn_0040d438) > 1
        %error "LONG_0040D438"
    %endif
    times 1 - ($ - %%insn_0040d438) db 0
    %%insn_0040d439:
    call 0x411260 ; 0040D439 E8223E0000
    %if ($ - %%insn_0040d439) > 5
        %error "LONG_0040D439"
    %endif
    times 5 - ($ - %%insn_0040d439) db 0
    %%insn_0040d43e:
    add esp,0x4 ; 0040D43E 83C404
    %if ($ - %%insn_0040d43e) > 3
        %error "LONG_0040D43E"
    %endif
    times 3 - ($ - %%insn_0040d43e) db 0
    db 0x8B, 0xC3 ; 0040D441 8BC3 | mov eax,ebx | encoding preserved
    %%insn_0040d443:
    pop edi ; 0040D443 5F
    %if ($ - %%insn_0040d443) > 1
        %error "LONG_0040D443"
    %endif
    times 1 - ($ - %%insn_0040d443) db 0
    %%insn_0040d444:
    pop esi ; 0040D444 5E
    %if ($ - %%insn_0040d444) > 1
        %error "LONG_0040D444"
    %endif
    times 1 - ($ - %%insn_0040d444) db 0
    %%insn_0040d445:
    pop ebx ; 0040D445 5B
    %if ($ - %%insn_0040d445) > 1
        %error "LONG_0040D445"
    %endif
    times 1 - ($ - %%insn_0040d445) db 0
    %%insn_0040d446:
    ret ; 0040D446 C3
    %if ($ - %%insn_0040d446) > 1
        %error "LONG_0040D446"
    %endif
    times 1 - ($ - %%insn_0040d446) db 0
    %%insn_0040d447:
    call 0x410e10 ; 0040D447 E8C4390000
    %if ($ - %%insn_0040d447) > 5
        %error "LONG_0040D447"
    %endif
    times 5 - ($ - %%insn_0040d447) db 0
    %%insn_0040d44c:
    mov dword [eax],0x9 ; 0040D44C C70009000000
    %if ($ - %%insn_0040d44c) > 6
        %error "LONG_0040D44C"
    %endif
    times 6 - ($ - %%insn_0040d44c) db 0
    %%insn_0040d452:
    call 0x410e20 ; 0040D452 E8C9390000
    %if ($ - %%insn_0040d452) > 5
        %error "LONG_0040D452"
    %endif
    times 5 - ($ - %%insn_0040d452) db 0
    %%insn_0040d457:
    pop edi ; 0040D457 5F
    %if ($ - %%insn_0040d457) > 1
        %error "LONG_0040D457"
    %endif
    times 1 - ($ - %%insn_0040d457) db 0
    %%insn_0040d458:
    mov dword [eax],0x0 ; 0040D458 C70000000000
    %if ($ - %%insn_0040d458) > 6
        %error "LONG_0040D458"
    %endif
    times 6 - ($ - %%insn_0040d458) db 0
    %%insn_0040d45e:
    pop esi ; 0040D45E 5E
    %if ($ - %%insn_0040d45e) > 1
        %error "LONG_0040D45E"
    %endif
    times 1 - ($ - %%insn_0040d45e) db 0
    %%insn_0040d45f:
    or eax,0xffffffffffffffff ; 0040D45F 83C8FF
    %if ($ - %%insn_0040d45f) > 3
        %error "LONG_0040D45F"
    %endif
    times 3 - ($ - %%insn_0040d45f) db 0
    %%insn_0040d462:
    pop ebx ; 0040D462 5B
    %if ($ - %%insn_0040d462) > 1
        %error "LONG_0040D462"
    %endif
    times 1 - ($ - %%insn_0040d462) db 0
    %%insn_0040d463:
    ret ; 0040D463 C3
    %if ($ - %%insn_0040d463) > 1
        %error "LONG_0040D463"
    %endif
    times 1 - ($ - %%insn_0040d463) db 0
    %if ($ - %%fragment_start) != 164
        %error "function fragment size drift: 0040D3C0"
    %endif
%endmacro
