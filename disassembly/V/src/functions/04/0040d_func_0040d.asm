; Linear entry 0040D (1000:040d)
; Ghidra working symbol: FUN_1000_040d
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0040d_part_00 0
    %%fragment_start:
func_0040d:
    %%insn_0040d:
    cmp byte [bp-0x2606],0x2 ; 0040D 80BEFAD902
    %if ($ - %%insn_0040d) > 5
        %error "LONG_0040D"
    %endif
    times 5 - ($ - %%insn_0040d) db 0
    %%insn_00412:
    jnz short 0x415 ; 00412 7501
    %if ($ - %%insn_00412) > 2
        %error "LONG_00412"
    %endif
    times 2 - ($ - %%insn_00412) db 0
    %%insn_00414:
    ret ; 00414 C3
    %if ($ - %%insn_00414) > 1
        %error "LONG_00414"
    %endif
    times 1 - ($ - %%insn_00414) db 0
    %%insn_00415:
    mov bx,0xcf8c ; 00415 BB8CCF
    %if ($ - %%insn_00415) > 3
        %error "LONG_00415"
    %endif
    times 3 - ($ - %%insn_00415) db 0
    %%insn_00418:
    mov si,0x22 ; 00418 BE2200
    %if ($ - %%insn_00418) > 3
        %error "LONG_00418"
    %endif
    times 3 - ($ - %%insn_00418) db 0
    %%insn_0041b:
    mov di,0x2 ; 0041B BF0200
    %if ($ - %%insn_0041b) > 3
        %error "LONG_0041B"
    %endif
    times 3 - ($ - %%insn_0041b) db 0
    db 0x33, 0xC9 ; 0041E 33C9 | xor cx,cx | encoding preserved
    db 0x32, 0xE4 ; 00420 32E4 | xor ah,ah | encoding preserved
    db 0x22, 0xE4 ; 00422 22E4 | and ah,ah | encoding preserved
    %%insn_00424:
    jnz short 0x43b ; 00424 7515
    %if ($ - %%insn_00424) > 2
        %error "LONG_00424"
    %endif
    times 2 - ($ - %%insn_00424) db 0
    %%insn_00426:
    mov dx,[di] ; 00426 8B15
    %if ($ - %%insn_00426) > 2
        %error "LONG_00426"
    %endif
    times 2 - ($ - %%insn_00426) db 0
    %%insn_00428:
    add di,0x2 ; 00428 83C702
    %if ($ - %%insn_00428) > 3
        %error "LONG_00428"
    %endif
    times 3 - ($ - %%insn_00428) db 0
    %%insn_0042b:
    mov ah,0x10 ; 0042B B410
    %if ($ - %%insn_0042b) > 2
        %error "LONG_0042B"
    %endif
    times 2 - ($ - %%insn_0042b) db 0
    db 0x23, 0xD2 ; 0042D 23D2 | and dx,dx | encoding preserved
    %%insn_0042f:
    jnz short 0x43b ; 0042F 750A
    %if ($ - %%insn_0042f) > 2
        %error "LONG_0042F"
    %endif
    times 2 - ($ - %%insn_0042f) db 0
    %%insn_00431:
    add cx,0x10 ; 00431 83C110
    %if ($ - %%insn_00431) > 3
        %error "LONG_00431"
    %endif
    times 3 - ($ - %%insn_00431) db 0
    %%insn_00434:
    add bx,0x30 ; 00434 83C330
    %if ($ - %%insn_00434) > 3
        %error "LONG_00434"
    %endif
    times 3 - ($ - %%insn_00434) db 0
    db 0x32, 0xE4 ; 00437 32E4 | xor ah,ah | encoding preserved
    %%insn_00439:
    jmp short 0x471 ; 00439 EB36
    %if ($ - %%insn_00439) > 2
        %error "LONG_00439"
    %endif
    times 2 - ($ - %%insn_00439) db 0
    %%insn_0043b:
    dec ah ; 0043B FECC
    %if ($ - %%insn_0043b) > 2
        %error "LONG_0043B"
    %endif
    times 2 - ($ - %%insn_0043b) db 0
    %%insn_0043d:
    test dh,0x80 ; 0043D F6C680
    %if ($ - %%insn_0043d) > 3
        %error "LONG_0043D"
    %endif
    times 3 - ($ - %%insn_0043d) db 0
    %%insn_00440:
    jz short 0x46b ; 00440 7429
    %if ($ - %%insn_00440) > 2
        %error "LONG_00440"
    %endif
    times 2 - ($ - %%insn_00440) db 0
    %%insn_00442:
    push dx ; 00442 52
    %if ($ - %%insn_00442) > 1
        %error "LONG_00442"
    %endif
    times 1 - ($ - %%insn_00442) db 0
    %%insn_00443:
    mov dx,0x3c8 ; 00443 BAC803
    %if ($ - %%insn_00443) > 3
        %error "LONG_00443"
    %endif
    times 3 - ($ - %%insn_00443) db 0
    db 0x8A, 0xC1 ; 00446 8AC1 | mov al,cl | encoding preserved
    %%insn_00448:
    out dx,al ; 00448 EE
    %if ($ - %%insn_00448) > 1
        %error "LONG_00448"
    %endif
    times 1 - ($ - %%insn_00448) db 0
    %%insn_00449:
    inc dx ; 00449 42
    %if ($ - %%insn_00449) > 1
        %error "LONG_00449"
    %endif
    times 1 - ($ - %%insn_00449) db 0
    %%insn_0044a:
    mov al,[si] ; 0044A 8A04
    %if ($ - %%insn_0044a) > 2
        %error "LONG_0044A"
    %endif
    times 2 - ($ - %%insn_0044a) db 0
    %%insn_0044c:
    inc si ; 0044C 46
    %if ($ - %%insn_0044c) > 1
        %error "LONG_0044C"
    %endif
    times 1 - ($ - %%insn_0044c) db 0
    %%insn_0044d:
    shr al,byte 0x2 ; 0044D C0E802
    %if ($ - %%insn_0044d) > 3
        %error "LONG_0044D"
    %endif
    times 3 - ($ - %%insn_0044d) db 0
    %%insn_00450:
    out dx,al ; 00450 EE
    %if ($ - %%insn_00450) > 1
        %error "LONG_00450"
    %endif
    times 1 - ($ - %%insn_00450) db 0
    %%insn_00451:
    mov [ss:bx],al ; 00451 368807
    %if ($ - %%insn_00451) > 3
        %error "LONG_00451"
    %endif
    times 3 - ($ - %%insn_00451) db 0
    %%insn_00454:
    mov al,[si] ; 00454 8A04
    %if ($ - %%insn_00454) > 2
        %error "LONG_00454"
    %endif
    times 2 - ($ - %%insn_00454) db 0
    %%insn_00456:
    inc si ; 00456 46
    %if ($ - %%insn_00456) > 1
        %error "LONG_00456"
    %endif
    times 1 - ($ - %%insn_00456) db 0
    %%insn_00457:
    shr al,byte 0x2 ; 00457 C0E802
    %if ($ - %%insn_00457) > 3
        %error "LONG_00457"
    %endif
    times 3 - ($ - %%insn_00457) db 0
    %%insn_0045a:
    out dx,al ; 0045A EE
    %if ($ - %%insn_0045a) > 1
        %error "LONG_0045A"
    %endif
    times 1 - ($ - %%insn_0045a) db 0
    %%insn_0045b:
    mov [ss:bx+0x1],al ; 0045B 36884701
    %if ($ - %%insn_0045b) > 4
        %error "LONG_0045B"
    %endif
    times 4 - ($ - %%insn_0045b) db 0
    %%insn_0045f:
    mov al,[si] ; 0045F 8A04
    %if ($ - %%insn_0045f) > 2
        %error "LONG_0045F"
    %endif
    times 2 - ($ - %%insn_0045f) db 0
    %%insn_00461:
    inc si ; 00461 46
    %if ($ - %%insn_00461) > 1
        %error "LONG_00461"
    %endif
    times 1 - ($ - %%insn_00461) db 0
    %%insn_00462:
    shr al,byte 0x2 ; 00462 C0E802
    %if ($ - %%insn_00462) > 3
        %error "LONG_00462"
    %endif
    times 3 - ($ - %%insn_00462) db 0
    %%insn_00465:
    out dx,al ; 00465 EE
    %if ($ - %%insn_00465) > 1
        %error "LONG_00465"
    %endif
    times 1 - ($ - %%insn_00465) db 0
    %%insn_00466:
    mov [ss:bx+0x2],al ; 00466 36884702
    %if ($ - %%insn_00466) > 4
        %error "LONG_00466"
    %endif
    times 4 - ($ - %%insn_00466) db 0
    %%insn_0046a:
    pop dx ; 0046A 5A
    %if ($ - %%insn_0046a) > 1
        %error "LONG_0046A"
    %endif
    times 1 - ($ - %%insn_0046a) db 0
    %%insn_0046b:
    add bx,0x3 ; 0046B 83C303
    %if ($ - %%insn_0046b) > 3
        %error "LONG_0046B"
    %endif
    times 3 - ($ - %%insn_0046b) db 0
    %%insn_0046e:
    shl dx,1 ; 0046E D1E2
    %if ($ - %%insn_0046e) > 2
        %error "LONG_0046E"
    %endif
    times 2 - ($ - %%insn_0046e) db 0
    %%insn_00470:
    inc cx ; 00470 41
    %if ($ - %%insn_00470) > 1
        %error "LONG_00470"
    %endif
    times 1 - ($ - %%insn_00470) db 0
    db 0x22, 0xED ; 00471 22ED | and ch,ch | encoding preserved
    %%insn_00473:
    jz short 0x422 ; 00473 74AD
    %if ($ - %%insn_00473) > 2
        %error "LONG_00473"
    %endif
    times 2 - ($ - %%insn_00473) db 0
    %%insn_00475:
    ret ; 00475 C3
    %if ($ - %%insn_00475) > 1
        %error "LONG_00475"
    %endif
    times 1 - ($ - %%insn_00475) db 0
    %if ($ - %%fragment_start) != 105
        %error "SIZE_0040D"
    %endif
%endmacro
