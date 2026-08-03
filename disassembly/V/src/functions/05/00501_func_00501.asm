; Linear entry 00501 (1000:0501)
; Ghidra working symbol: FUN_1000_0501
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_00501_part_00 0
    %%fragment_start:
func_00501:
    %%insn_00501:
    cmp byte [bp-0x2606],0x2 ; 00501 80BEFAD902
    %if ($ - %%insn_00501) > 5
        %error "LONG_00501"
    %endif
    times 5 - ($ - %%insn_00501) db 0
    %%insn_00506:
    jnz short 0x509 ; 00506 7501
    %if ($ - %%insn_00506) > 2
        %error "LONG_00506"
    %endif
    times 2 - ($ - %%insn_00506) db 0
    %%insn_00508:
    ret ; 00508 C3
    %if ($ - %%insn_00508) > 1
        %error "LONG_00508"
    %endif
    times 1 - ($ - %%insn_00508) db 0
    %%insn_00509:
    cmp word [bp-0x30e0],0x0 ; 00509 83BE20CF00
    %if ($ - %%insn_00509) > 5
        %error "LONG_00509"
    %endif
    times 5 - ($ - %%insn_00509) db 0
    %%insn_0050e:
    jz short 0x586 ; 0050E 7476
    %if ($ - %%insn_0050e) > 2
        %error "LONG_0050E"
    %endif
    times 2 - ($ - %%insn_0050e) db 0
    %%insn_00510:
    test word [bp-0x30b4],0x1 ; 00510 F7864CCF0100
    %if ($ - %%insn_00510) > 6
        %error "LONG_00510"
    %endif
    times 6 - ($ - %%insn_00510) db 0
    %%insn_00516:
    jnz short 0x545 ; 00516 752D
    %if ($ - %%insn_00516) > 2
        %error "LONG_00516"
    %endif
    times 2 - ($ - %%insn_00516) db 0
    %%insn_00518:
    push dx ; 00518 52
    %if ($ - %%insn_00518) > 1
        %error "LONG_00518"
    %endif
    times 1 - ($ - %%insn_00518) db 0
    %%insn_00519:
    mov dx,0x3da ; 00519 BADA03
    %if ($ - %%insn_00519) > 3
        %error "LONG_00519"
    %endif
    times 3 - ($ - %%insn_00519) db 0
    %%insn_0051c:
    in al,dx ; 0051C EC
    %if ($ - %%insn_0051c) > 1
        %error "LONG_0051C"
    %endif
    times 1 - ($ - %%insn_0051c) db 0
    %%insn_0051d:
    and al,0x8 ; 0051D 2408
    %if ($ - %%insn_0051d) > 2
        %error "LONG_0051D"
    %endif
    times 2 - ($ - %%insn_0051d) db 0
    %%insn_0051f:
    jmp short 0x521 ; 0051F EB00
    %if ($ - %%insn_0051f) > 2
        %error "LONG_0051F"
    %endif
    times 2 - ($ - %%insn_0051f) db 0
    %%insn_00521:
    jnz short 0x51c ; 00521 75F9
    %if ($ - %%insn_00521) > 2
        %error "LONG_00521"
    %endif
    times 2 - ($ - %%insn_00521) db 0
    %%insn_00523:
    in al,dx ; 00523 EC
    %if ($ - %%insn_00523) > 1
        %error "LONG_00523"
    %endif
    times 1 - ($ - %%insn_00523) db 0
    %%insn_00524:
    and al,0x8 ; 00524 2408
    %if ($ - %%insn_00524) > 2
        %error "LONG_00524"
    %endif
    times 2 - ($ - %%insn_00524) db 0
    %%insn_00526:
    jmp short 0x528 ; 00526 EB00
    %if ($ - %%insn_00526) > 2
        %error "LONG_00526"
    %endif
    times 2 - ($ - %%insn_00526) db 0
    %%insn_00528:
    jz short 0x523 ; 00528 74F9
    %if ($ - %%insn_00528) > 2
        %error "LONG_00528"
    %endif
    times 2 - ($ - %%insn_00528) db 0
    %%insn_0052a:
    pop dx ; 0052A 5A
    %if ($ - %%insn_0052a) > 1
        %error "LONG_0052A"
    %endif
    times 1 - ($ - %%insn_0052a) db 0
    %%insn_0052b:
    push ds ; 0052B 1E
    %if ($ - %%insn_0052b) > 1
        %error "LONG_0052B"
    %endif
    times 1 - ($ - %%insn_0052b) db 0
    %%insn_0052c:
    mov ds,word [bp-0x2aae] ; 0052C 8E9E52D5
    %if ($ - %%insn_0052c) > 4
        %error "LONG_0052C"
    %endif
    times 4 - ($ - %%insn_0052c) db 0
    %%insn_00530:
    mov dx,0x3c8 ; 00530 BAC803
    %if ($ - %%insn_00530) > 3
        %error "LONG_00530"
    %endif
    times 3 - ($ - %%insn_00530) db 0
    db 0x32, 0xC0 ; 00533 32C0 | xor al,al | encoding preserved
    %%insn_00535:
    out dx,al ; 00535 EE
    %if ($ - %%insn_00535) > 1
        %error "LONG_00535"
    %endif
    times 1 - ($ - %%insn_00535) db 0
    %%insn_00536:
    inc dx ; 00536 42
    %if ($ - %%insn_00536) > 1
        %error "LONG_00536"
    %endif
    times 1 - ($ - %%insn_00536) db 0
    %%insn_00537:
    mov cx,0x300 ; 00537 B90003
    %if ($ - %%insn_00537) > 3
        %error "LONG_00537"
    %endif
    times 3 - ($ - %%insn_00537) db 0
    %%insn_0053a:
    mov si,0xcf8c ; 0053A BE8CCF
    %if ($ - %%insn_0053a) > 3
        %error "LONG_0053A"
    %endif
    times 3 - ($ - %%insn_0053a) db 0
    %%insn_0053d:
    lodsb ; 0053D AC
    %if ($ - %%insn_0053d) > 1
        %error "LONG_0053D"
    %endif
    times 1 - ($ - %%insn_0053d) db 0
    %%insn_0053e:
    out dx,al ; 0053E EE
    %if ($ - %%insn_0053e) > 1
        %error "LONG_0053E"
    %endif
    times 1 - ($ - %%insn_0053e) db 0
    %%insn_0053f:
    dec cx ; 0053F 49
    %if ($ - %%insn_0053f) > 1
        %error "LONG_0053F"
    %endif
    times 1 - ($ - %%insn_0053f) db 0
    %%insn_00540:
    jnz short 0x53d ; 00540 75FB
    %if ($ - %%insn_00540) > 2
        %error "LONG_00540"
    %endif
    times 2 - ($ - %%insn_00540) db 0
    %%insn_00542:
    pop ds ; 00542 1F
    %if ($ - %%insn_00542) > 1
        %error "LONG_00542"
    %endif
    times 1 - ($ - %%insn_00542) db 0
    %%insn_00543:
    jmp short 0x586 ; 00543 EB41
    %if ($ - %%insn_00543) > 2
        %error "LONG_00543"
    %endif
    times 2 - ($ - %%insn_00543) db 0
    %%insn_00545:
    push dx ; 00545 52
    %if ($ - %%insn_00545) > 1
        %error "LONG_00545"
    %endif
    times 1 - ($ - %%insn_00545) db 0
    %%insn_00546:
    mov dx,0x3da ; 00546 BADA03
    %if ($ - %%insn_00546) > 3
        %error "LONG_00546"
    %endif
    times 3 - ($ - %%insn_00546) db 0
    %%insn_00549:
    in al,dx ; 00549 EC
    %if ($ - %%insn_00549) > 1
        %error "LONG_00549"
    %endif
    times 1 - ($ - %%insn_00549) db 0
    %%insn_0054a:
    and al,0x8 ; 0054A 2408
    %if ($ - %%insn_0054a) > 2
        %error "LONG_0054A"
    %endif
    times 2 - ($ - %%insn_0054a) db 0
    %%insn_0054c:
    jmp short 0x54e ; 0054C EB00
    %if ($ - %%insn_0054c) > 2
        %error "LONG_0054C"
    %endif
    times 2 - ($ - %%insn_0054c) db 0
    %%insn_0054e:
    jnz short 0x549 ; 0054E 75F9
    %if ($ - %%insn_0054e) > 2
        %error "LONG_0054E"
    %endif
    times 2 - ($ - %%insn_0054e) db 0
    %%insn_00550:
    in al,dx ; 00550 EC
    %if ($ - %%insn_00550) > 1
        %error "LONG_00550"
    %endif
    times 1 - ($ - %%insn_00550) db 0
    %%insn_00551:
    and al,0x8 ; 00551 2408
    %if ($ - %%insn_00551) > 2
        %error "LONG_00551"
    %endif
    times 2 - ($ - %%insn_00551) db 0
    %%insn_00553:
    jmp short 0x555 ; 00553 EB00
    %if ($ - %%insn_00553) > 2
        %error "LONG_00553"
    %endif
    times 2 - ($ - %%insn_00553) db 0
    %%insn_00555:
    jz short 0x550 ; 00555 74F9
    %if ($ - %%insn_00555) > 2
        %error "LONG_00555"
    %endif
    times 2 - ($ - %%insn_00555) db 0
    %%insn_00557:
    pop dx ; 00557 5A
    %if ($ - %%insn_00557) > 1
        %error "LONG_00557"
    %endif
    times 1 - ($ - %%insn_00557) db 0
    %%insn_00558:
    push ds ; 00558 1E
    %if ($ - %%insn_00558) > 1
        %error "LONG_00558"
    %endif
    times 1 - ($ - %%insn_00558) db 0
    %%insn_00559:
    push es ; 00559 06
    %if ($ - %%insn_00559) > 1
        %error "LONG_00559"
    %endif
    times 1 - ($ - %%insn_00559) db 0
    %%insn_0055a:
    mov es,word [bp-0x2aae] ; 0055A 8E8652D5
    %if ($ - %%insn_0055a) > 4
        %error "LONG_0055A"
    %endif
    times 4 - ($ - %%insn_0055a) db 0
    %%insn_0055e:
    mov ds,word [bp-0x2aae] ; 0055E 8E9E52D5
    %if ($ - %%insn_0055e) > 4
        %error "LONG_0055E"
    %endif
    times 4 - ($ - %%insn_0055e) db 0
    %%insn_00562:
    mov di,0xcb20 ; 00562 BF20CB
    %if ($ - %%insn_00562) > 3
        %error "LONG_00562"
    %endif
    times 3 - ($ - %%insn_00562) db 0
    %%insn_00565:
    mov cx,0x180 ; 00565 B98001
    %if ($ - %%insn_00565) > 3
        %error "LONG_00565"
    %endif
    times 3 - ($ - %%insn_00565) db 0
    db 0x33, 0xC0 ; 00568 33C0 | xor ax,ax | encoding preserved
    %%insn_0056a:
    rep stosw ; 0056A F3AB
    %if ($ - %%insn_0056a) > 2
        %error "LONG_0056A"
    %endif
    times 2 - ($ - %%insn_0056a) db 0
    %%insn_0056c:
    mov dx,0x3c8 ; 0056C BAC803
    %if ($ - %%insn_0056c) > 3
        %error "LONG_0056C"
    %endif
    times 3 - ($ - %%insn_0056c) db 0
    db 0x32, 0xC0 ; 0056F 32C0 | xor al,al | encoding preserved
    %%insn_00571:
    out dx,al ; 00571 EE
    %if ($ - %%insn_00571) > 1
        %error "LONG_00571"
    %endif
    times 1 - ($ - %%insn_00571) db 0
    %%insn_00572:
    inc dx ; 00572 42
    %if ($ - %%insn_00572) > 1
        %error "LONG_00572"
    %endif
    times 1 - ($ - %%insn_00572) db 0
    %%insn_00573:
    mov cx,0x300 ; 00573 B90003
    %if ($ - %%insn_00573) > 3
        %error "LONG_00573"
    %endif
    times 3 - ($ - %%insn_00573) db 0
    %%insn_00576:
    mov si,0xcb20 ; 00576 BE20CB
    %if ($ - %%insn_00576) > 3
        %error "LONG_00576"
    %endif
    times 3 - ($ - %%insn_00576) db 0
    %%insn_00579:
    lodsb ; 00579 AC
    %if ($ - %%insn_00579) > 1
        %error "LONG_00579"
    %endif
    times 1 - ($ - %%insn_00579) db 0
    %%insn_0057a:
    out dx,al ; 0057A EE
    %if ($ - %%insn_0057a) > 1
        %error "LONG_0057A"
    %endif
    times 1 - ($ - %%insn_0057a) db 0
    %%insn_0057b:
    dec cx ; 0057B 49
    %if ($ - %%insn_0057b) > 1
        %error "LONG_0057B"
    %endif
    times 1 - ($ - %%insn_0057b) db 0
    %%insn_0057c:
    jnz short 0x579 ; 0057C 75FB
    %if ($ - %%insn_0057c) > 2
        %error "LONG_0057C"
    %endif
    times 2 - ($ - %%insn_0057c) db 0
    %%insn_0057e:
    mov word [bp-0x30b2],0x10 ; 0057E C7864ECF1000
    %if ($ - %%insn_0057e) > 6
        %error "LONG_0057E"
    %endif
    times 6 - ($ - %%insn_0057e) db 0
    %%insn_00584:
    pop es ; 00584 07
    %if ($ - %%insn_00584) > 1
        %error "LONG_00584"
    %endif
    times 1 - ($ - %%insn_00584) db 0
    %%insn_00585:
    pop ds ; 00585 1F
    %if ($ - %%insn_00585) > 1
        %error "LONG_00585"
    %endif
    times 1 - ($ - %%insn_00585) db 0
    %%insn_00586:
    ret ; 00586 C3
    %if ($ - %%insn_00586) > 1
        %error "LONG_00586"
    %endif
    times 1 - ($ - %%insn_00586) db 0
    %if ($ - %%fragment_start) != 134
        %error "SIZE_00501"
    %endif
%endmacro
