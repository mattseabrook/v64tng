; PE virtual entry 00416630
; Ghidra working symbol: FUN_00416630
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00416630_part_00 0
    %%fragment_start:
func_00416630:
    %%insn_00416630:
    push ebx ; 00416630 53
    %if ($ - %%insn_00416630) > 1
        %error "LONG_00416630"
    %endif
    times 1 - ($ - %%insn_00416630) db 0
    %%insn_00416631:
    push ebp ; 00416631 55
    %if ($ - %%insn_00416631) > 1
        %error "LONG_00416631"
    %endif
    times 1 - ($ - %%insn_00416631) db 0
    %%insn_00416632:
    mov ebp,[esp+0x10] ; 00416632 8B6C2410
    %if ($ - %%insn_00416632) > 4
        %error "LONG_00416632"
    %endif
    times 4 - ($ - %%insn_00416632) db 0
    %%insn_00416636:
    push esi ; 00416636 56
    %if ($ - %%insn_00416636) > 1
        %error "LONG_00416636"
    %endif
    times 1 - ($ - %%insn_00416636) db 0
    %%insn_00416637:
    push edi ; 00416637 57
    %if ($ - %%insn_00416637) > 1
        %error "LONG_00416637"
    %endif
    times 1 - ($ - %%insn_00416637) db 0
    %%insn_00416638:
    mov edi,[esp+0x1c] ; 00416638 8B7C241C
    %if ($ - %%insn_00416638) > 4
        %error "LONG_00416638"
    %endif
    times 4 - ($ - %%insn_00416638) db 0
    %%insn_0041663c:
    mov esi,[ebp+0x0] ; 0041663C 8B7500
    %if ($ - %%insn_0041663c) > 3
        %error "LONG_0041663C"
    %endif
    times 3 - ($ - %%insn_0041663c) db 0
    %%insn_0041663f:
    cmp dword [edi],0x1 ; 0041663F 833F01
    %if ($ - %%insn_0041663f) > 3
        %error "LONG_0041663F"
    %endif
    times 3 - ($ - %%insn_0041663f) db 0
    %%insn_00416642:
    jna short 0x41667b ; 00416642 7637
    %if ($ - %%insn_00416642) > 2
        %error "LONG_00416642"
    %endif
    times 2 - ($ - %%insn_00416642) db 0
    %%insn_00416644:
    mov ecx,[esp+0x14] ; 00416644 8B4C2414
    %if ($ - %%insn_00416644) > 4
        %error "LONG_00416644"
    %endif
    times 4 - ($ - %%insn_00416644) db 0
    db 0x8B, 0xC1 ; 00416648 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0041664a:
    mov ebx,0xa ; 0041664A BB0A000000
    %if ($ - %%insn_0041664a) > 5
        %error "LONG_0041664A"
    %endif
    times 5 - ($ - %%insn_0041664a) db 0
    %%insn_0041664f:
    cdq ; 0041664F 99
    %if ($ - %%insn_0041664f) > 1
        %error "LONG_0041664F"
    %endif
    times 1 - ($ - %%insn_0041664f) db 0
    %%insn_00416650:
    idiv ebx ; 00416650 F7FB
    %if ($ - %%insn_00416650) > 2
        %error "LONG_00416650"
    %endif
    times 2 - ($ - %%insn_00416650) db 0
    %%insn_00416652:
    mov eax,0x66666667 ; 00416652 B867666666
    %if ($ - %%insn_00416652) > 5
        %error "LONG_00416652"
    %endif
    times 5 - ($ - %%insn_00416652) db 0
    %%insn_00416657:
    add dl,0x30 ; 00416657 80C230
    %if ($ - %%insn_00416657) > 3
        %error "LONG_00416657"
    %endif
    times 3 - ($ - %%insn_00416657) db 0
    %%insn_0041665a:
    mov [esi],dl ; 0041665A 8816
    %if ($ - %%insn_0041665a) > 2
        %error "LONG_0041665A"
    %endif
    times 2 - ($ - %%insn_0041665a) db 0
    %%insn_0041665c:
    mov edx,[edi] ; 0041665C 8B17
    %if ($ - %%insn_0041665c) > 2
        %error "LONG_0041665C"
    %endif
    times 2 - ($ - %%insn_0041665c) db 0
    %%insn_0041665e:
    inc esi ; 0041665E 46
    %if ($ - %%insn_0041665e) > 1
        %error "LONG_0041665E"
    %endif
    times 1 - ($ - %%insn_0041665e) db 0
    %%insn_0041665f:
    dec edx ; 0041665F 4A
    %if ($ - %%insn_0041665f) > 1
        %error "LONG_0041665F"
    %endif
    times 1 - ($ - %%insn_0041665f) db 0
    %%insn_00416660:
    mov [edi],edx ; 00416660 8917
    %if ($ - %%insn_00416660) > 2
        %error "LONG_00416660"
    %endif
    times 2 - ($ - %%insn_00416660) db 0
    db 0x8B, 0xDA ; 00416662 8BDA | mov ebx,edx | encoding preserved
    %%insn_00416664:
    imul ecx ; 00416664 F7E9
    %if ($ - %%insn_00416664) > 2
        %error "LONG_00416664"
    %endif
    times 2 - ($ - %%insn_00416664) db 0
    %%insn_00416666:
    sar edx,byte 0x2 ; 00416666 C1FA02
    %if ($ - %%insn_00416666) > 3
        %error "LONG_00416666"
    %endif
    times 3 - ($ - %%insn_00416666) db 0
    db 0x8B, 0xC2 ; 00416669 8BC2 | mov eax,edx | encoding preserved
    %%insn_0041666b:
    shr eax,byte 0x1f ; 0041666B C1E81F
    %if ($ - %%insn_0041666b) > 3
        %error "LONG_0041666B"
    %endif
    times 3 - ($ - %%insn_0041666b) db 0
    db 0x03, 0xD0 ; 0041666E 03D0 | add edx,eax | encoding preserved
    db 0x8B, 0xCA ; 00416670 8BCA | mov ecx,edx | encoding preserved
    %%insn_00416672:
    test ecx,ecx ; 00416672 85C9
    %if ($ - %%insn_00416672) > 2
        %error "LONG_00416672"
    %endif
    times 2 - ($ - %%insn_00416672) db 0
    %%insn_00416674:
    jng short 0x41667b ; 00416674 7E05
    %if ($ - %%insn_00416674) > 2
        %error "LONG_00416674"
    %endif
    times 2 - ($ - %%insn_00416674) db 0
    %%insn_00416676:
    cmp ebx,0x1 ; 00416676 83FB01
    %if ($ - %%insn_00416676) > 3
        %error "LONG_00416676"
    %endif
    times 3 - ($ - %%insn_00416676) db 0
    %%insn_00416679:
    ja short 0x416648 ; 00416679 77CD
    %if ($ - %%insn_00416679) > 2
        %error "LONG_00416679"
    %endif
    times 2 - ($ - %%insn_00416679) db 0
    %%insn_0041667b:
    mov eax,[ebp+0x0] ; 0041667B 8B4500
    %if ($ - %%insn_0041667b) > 3
        %error "LONG_0041667B"
    %endif
    times 3 - ($ - %%insn_0041667b) db 0
    %%insn_0041667e:
    mov [ebp+0x0],esi ; 0041667E 897500
    %if ($ - %%insn_0041667e) > 3
        %error "LONG_0041667E"
    %endif
    times 3 - ($ - %%insn_0041667e) db 0
    %%insn_00416681:
    dec esi ; 00416681 4E
    %if ($ - %%insn_00416681) > 1
        %error "LONG_00416681"
    %endif
    times 1 - ($ - %%insn_00416681) db 0
    %%insn_00416682:
    mov dl,[eax] ; 00416682 8A10
    %if ($ - %%insn_00416682) > 2
        %error "LONG_00416682"
    %endif
    times 2 - ($ - %%insn_00416682) db 0
    %%insn_00416684:
    mov cl,[esi] ; 00416684 8A0E
    %if ($ - %%insn_00416684) > 2
        %error "LONG_00416684"
    %endif
    times 2 - ($ - %%insn_00416684) db 0
    %%insn_00416686:
    mov [esi],dl ; 00416686 8816
    %if ($ - %%insn_00416686) > 2
        %error "LONG_00416686"
    %endif
    times 2 - ($ - %%insn_00416686) db 0
    %%insn_00416688:
    dec esi ; 00416688 4E
    %if ($ - %%insn_00416688) > 1
        %error "LONG_00416688"
    %endif
    times 1 - ($ - %%insn_00416688) db 0
    %%insn_00416689:
    mov [eax],cl ; 00416689 8808
    %if ($ - %%insn_00416689) > 2
        %error "LONG_00416689"
    %endif
    times 2 - ($ - %%insn_00416689) db 0
    %%insn_0041668b:
    inc eax ; 0041668B 40
    %if ($ - %%insn_0041668b) > 1
        %error "LONG_0041668B"
    %endif
    times 1 - ($ - %%insn_0041668b) db 0
    db 0x3B, 0xC6 ; 0041668C 3BC6 | cmp eax,esi | encoding preserved
    %%insn_0041668e:
    jc short 0x416682 ; 0041668E 72F2
    %if ($ - %%insn_0041668e) > 2
        %error "LONG_0041668E"
    %endif
    times 2 - ($ - %%insn_0041668e) db 0
    %%insn_00416690:
    pop edi ; 00416690 5F
    %if ($ - %%insn_00416690) > 1
        %error "LONG_00416690"
    %endif
    times 1 - ($ - %%insn_00416690) db 0
    %%insn_00416691:
    pop esi ; 00416691 5E
    %if ($ - %%insn_00416691) > 1
        %error "LONG_00416691"
    %endif
    times 1 - ($ - %%insn_00416691) db 0
    %%insn_00416692:
    pop ebp ; 00416692 5D
    %if ($ - %%insn_00416692) > 1
        %error "LONG_00416692"
    %endif
    times 1 - ($ - %%insn_00416692) db 0
    %%insn_00416693:
    pop ebx ; 00416693 5B
    %if ($ - %%insn_00416693) > 1
        %error "LONG_00416693"
    %endif
    times 1 - ($ - %%insn_00416693) db 0
    %%insn_00416694:
    ret ; 00416694 C3
    %if ($ - %%insn_00416694) > 1
        %error "LONG_00416694"
    %endif
    times 1 - ($ - %%insn_00416694) db 0
    %if ($ - %%fragment_start) != 101
        %error "function fragment size drift: 00416630"
    %endif
%endmacro
