; PE virtual entry 0040D4D0
; Ghidra working symbol: _strlen
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d4d0_part_00 0
    %%fragment_start:
func_0040d4d0:
    %%insn_0040d4d0:
    mov ecx,[esp+0x4] ; 0040D4D0 8B4C2404
    %if ($ - %%insn_0040d4d0) > 4
        %error "LONG_0040D4D0"
    %endif
    times 4 - ($ - %%insn_0040d4d0) db 0
    %%insn_0040d4d4:
    test ecx,0x3 ; 0040D4D4 F7C103000000
    %if ($ - %%insn_0040d4d4) > 6
        %error "LONG_0040D4D4"
    %endif
    times 6 - ($ - %%insn_0040d4d4) db 0
    %%insn_0040d4da:
    jz short 0x40d4f0 ; 0040D4DA 7414
    %if ($ - %%insn_0040d4da) > 2
        %error "LONG_0040D4DA"
    %endif
    times 2 - ($ - %%insn_0040d4da) db 0
    %%insn_0040d4dc:
    mov al,[ecx] ; 0040D4DC 8A01
    %if ($ - %%insn_0040d4dc) > 2
        %error "LONG_0040D4DC"
    %endif
    times 2 - ($ - %%insn_0040d4dc) db 0
    %%insn_0040d4de:
    inc ecx ; 0040D4DE 41
    %if ($ - %%insn_0040d4de) > 1
        %error "LONG_0040D4DE"
    %endif
    times 1 - ($ - %%insn_0040d4de) db 0
    %%insn_0040d4df:
    test al,al ; 0040D4DF 84C0
    %if ($ - %%insn_0040d4df) > 2
        %error "LONG_0040D4DF"
    %endif
    times 2 - ($ - %%insn_0040d4df) db 0
    %%insn_0040d4e1:
    jz short 0x40d523 ; 0040D4E1 7440
    %if ($ - %%insn_0040d4e1) > 2
        %error "LONG_0040D4E1"
    %endif
    times 2 - ($ - %%insn_0040d4e1) db 0
    %%insn_0040d4e3:
    test ecx,0x3 ; 0040D4E3 F7C103000000
    %if ($ - %%insn_0040d4e3) > 6
        %error "LONG_0040D4E3"
    %endif
    times 6 - ($ - %%insn_0040d4e3) db 0
    %%insn_0040d4e9:
    jnz short 0x40d4dc ; 0040D4E9 75F1
    %if ($ - %%insn_0040d4e9) > 2
        %error "LONG_0040D4E9"
    %endif
    times 2 - ($ - %%insn_0040d4e9) db 0
    db 0x05, 0x00, 0x00, 0x00, 0x00 ; 0040D4EB 0500000000 | add eax,0x0 | encoding preserved
    %%insn_0040d4f0:
    mov eax,[ecx] ; 0040D4F0 8B01
    %if ($ - %%insn_0040d4f0) > 2
        %error "LONG_0040D4F0"
    %endif
    times 2 - ($ - %%insn_0040d4f0) db 0
    %%insn_0040d4f2:
    mov edx,0x7efefeff ; 0040D4F2 BAFFFEFE7E
    %if ($ - %%insn_0040d4f2) > 5
        %error "LONG_0040D4F2"
    %endif
    times 5 - ($ - %%insn_0040d4f2) db 0
    db 0x03, 0xD0 ; 0040D4F7 03D0 | add edx,eax | encoding preserved
    %%insn_0040d4f9:
    xor eax,0xffffffffffffffff ; 0040D4F9 83F0FF
    %if ($ - %%insn_0040d4f9) > 3
        %error "LONG_0040D4F9"
    %endif
    times 3 - ($ - %%insn_0040d4f9) db 0
    db 0x33, 0xC2 ; 0040D4FC 33C2 | xor eax,edx | encoding preserved
    %%insn_0040d4fe:
    add ecx,0x4 ; 0040D4FE 83C104
    %if ($ - %%insn_0040d4fe) > 3
        %error "LONG_0040D4FE"
    %endif
    times 3 - ($ - %%insn_0040d4fe) db 0
    %%insn_0040d501:
    test eax,0x81010100 ; 0040D501 A900010181
    %if ($ - %%insn_0040d501) > 5
        %error "LONG_0040D501"
    %endif
    times 5 - ($ - %%insn_0040d501) db 0
    %%insn_0040d506:
    jz short 0x40d4f0 ; 0040D506 74E8
    %if ($ - %%insn_0040d506) > 2
        %error "LONG_0040D506"
    %endif
    times 2 - ($ - %%insn_0040d506) db 0
    %%insn_0040d508:
    mov eax,[ecx-0x4] ; 0040D508 8B41FC
    %if ($ - %%insn_0040d508) > 3
        %error "LONG_0040D508"
    %endif
    times 3 - ($ - %%insn_0040d508) db 0
    %%insn_0040d50b:
    test al,al ; 0040D50B 84C0
    %if ($ - %%insn_0040d50b) > 2
        %error "LONG_0040D50B"
    %endif
    times 2 - ($ - %%insn_0040d50b) db 0
    %%insn_0040d50d:
    jz short 0x40d541 ; 0040D50D 7432
    %if ($ - %%insn_0040d50d) > 2
        %error "LONG_0040D50D"
    %endif
    times 2 - ($ - %%insn_0040d50d) db 0
    %%insn_0040d50f:
    test ah,ah ; 0040D50F 84E4
    %if ($ - %%insn_0040d50f) > 2
        %error "LONG_0040D50F"
    %endif
    times 2 - ($ - %%insn_0040d50f) db 0
    %%insn_0040d511:
    jz short 0x40d537 ; 0040D511 7424
    %if ($ - %%insn_0040d511) > 2
        %error "LONG_0040D511"
    %endif
    times 2 - ($ - %%insn_0040d511) db 0
    %%insn_0040d513:
    test eax,0xff0000 ; 0040D513 A90000FF00
    %if ($ - %%insn_0040d513) > 5
        %error "LONG_0040D513"
    %endif
    times 5 - ($ - %%insn_0040d513) db 0
    %%insn_0040d518:
    jz short 0x40d52d ; 0040D518 7413
    %if ($ - %%insn_0040d518) > 2
        %error "LONG_0040D518"
    %endif
    times 2 - ($ - %%insn_0040d518) db 0
    %%insn_0040d51a:
    test eax,0xff000000 ; 0040D51A A9000000FF
    %if ($ - %%insn_0040d51a) > 5
        %error "LONG_0040D51A"
    %endif
    times 5 - ($ - %%insn_0040d51a) db 0
    %%insn_0040d51f:
    jz short 0x40d523 ; 0040D51F 7402
    %if ($ - %%insn_0040d51f) > 2
        %error "LONG_0040D51F"
    %endif
    times 2 - ($ - %%insn_0040d51f) db 0
    %%insn_0040d521:
    jmp short 0x40d4f0 ; 0040D521 EBCD
    %if ($ - %%insn_0040d521) > 2
        %error "LONG_0040D521"
    %endif
    times 2 - ($ - %%insn_0040d521) db 0
    %%insn_0040d523:
    lea eax,[ecx-0x1] ; 0040D523 8D41FF
    %if ($ - %%insn_0040d523) > 3
        %error "LONG_0040D523"
    %endif
    times 3 - ($ - %%insn_0040d523) db 0
    %%insn_0040d526:
    mov ecx,[esp+0x4] ; 0040D526 8B4C2404
    %if ($ - %%insn_0040d526) > 4
        %error "LONG_0040D526"
    %endif
    times 4 - ($ - %%insn_0040d526) db 0
    db 0x2B, 0xC1 ; 0040D52A 2BC1 | sub eax,ecx | encoding preserved
    %%insn_0040d52c:
    ret ; 0040D52C C3
    %if ($ - %%insn_0040d52c) > 1
        %error "LONG_0040D52C"
    %endif
    times 1 - ($ - %%insn_0040d52c) db 0
    %%insn_0040d52d:
    lea eax,[ecx-0x2] ; 0040D52D 8D41FE
    %if ($ - %%insn_0040d52d) > 3
        %error "LONG_0040D52D"
    %endif
    times 3 - ($ - %%insn_0040d52d) db 0
    %%insn_0040d530:
    mov ecx,[esp+0x4] ; 0040D530 8B4C2404
    %if ($ - %%insn_0040d530) > 4
        %error "LONG_0040D530"
    %endif
    times 4 - ($ - %%insn_0040d530) db 0
    db 0x2B, 0xC1 ; 0040D534 2BC1 | sub eax,ecx | encoding preserved
    %%insn_0040d536:
    ret ; 0040D536 C3
    %if ($ - %%insn_0040d536) > 1
        %error "LONG_0040D536"
    %endif
    times 1 - ($ - %%insn_0040d536) db 0
    %%insn_0040d537:
    lea eax,[ecx-0x3] ; 0040D537 8D41FD
    %if ($ - %%insn_0040d537) > 3
        %error "LONG_0040D537"
    %endif
    times 3 - ($ - %%insn_0040d537) db 0
    %%insn_0040d53a:
    mov ecx,[esp+0x4] ; 0040D53A 8B4C2404
    %if ($ - %%insn_0040d53a) > 4
        %error "LONG_0040D53A"
    %endif
    times 4 - ($ - %%insn_0040d53a) db 0
    db 0x2B, 0xC1 ; 0040D53E 2BC1 | sub eax,ecx | encoding preserved
    %%insn_0040d540:
    ret ; 0040D540 C3
    %if ($ - %%insn_0040d540) > 1
        %error "LONG_0040D540"
    %endif
    times 1 - ($ - %%insn_0040d540) db 0
    %%insn_0040d541:
    lea eax,[ecx-0x4] ; 0040D541 8D41FC
    %if ($ - %%insn_0040d541) > 3
        %error "LONG_0040D541"
    %endif
    times 3 - ($ - %%insn_0040d541) db 0
    %%insn_0040d544:
    mov ecx,[esp+0x4] ; 0040D544 8B4C2404
    %if ($ - %%insn_0040d544) > 4
        %error "LONG_0040D544"
    %endif
    times 4 - ($ - %%insn_0040d544) db 0
    db 0x2B, 0xC1 ; 0040D548 2BC1 | sub eax,ecx | encoding preserved
    %%insn_0040d54a:
    ret ; 0040D54A C3
    %if ($ - %%insn_0040d54a) > 1
        %error "LONG_0040D54A"
    %endif
    times 1 - ($ - %%insn_0040d54a) db 0
    %if ($ - %%fragment_start) != 123
        %error "function fragment size drift: 0040D4D0"
    %endif
%endmacro
