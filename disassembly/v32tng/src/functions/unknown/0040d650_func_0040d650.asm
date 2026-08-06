; PE virtual entry 0040D650
; Ghidra working symbol: FUN_0040d650
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d650_part_00 0
    %%fragment_start:
func_0040d650:
    %%insn_0040d650:
    push ebx ; 0040D650 53
    %if ($ - %%insn_0040d650) > 1
        %error "LONG_0040D650"
    %endif
    times 1 - ($ - %%insn_0040d650) db 0
    %%insn_0040d651:
    push ebp ; 0040D651 55
    %if ($ - %%insn_0040d651) > 1
        %error "LONG_0040D651"
    %endif
    times 1 - ($ - %%insn_0040d651) db 0
    %%insn_0040d652:
    push esi ; 0040D652 56
    %if ($ - %%insn_0040d652) > 1
        %error "LONG_0040D652"
    %endif
    times 1 - ($ - %%insn_0040d652) db 0
    %%insn_0040d653:
    call 0x40d710 ; 0040D653 E8B8000000
    %if ($ - %%insn_0040d653) > 5
        %error "LONG_0040D653"
    %endif
    times 5 - ($ - %%insn_0040d653) db 0
    %%insn_0040d658:
    mov eax,[0x420e94] ; 0040D658 A1940E4200
    %if ($ - %%insn_0040d658) > 5
        %error "LONG_0040D658"
    %endif
    times 5 - ($ - %%insn_0040d658) db 0
    %%insn_0040d65d:
    mov ebp,[esp+0x10] ; 0040D65D 8B6C2410
    %if ($ - %%insn_0040d65d) > 4
        %error "LONG_0040D65D"
    %endif
    times 4 - ($ - %%insn_0040d65d) db 0
    %%insn_0040d661:
    cmp eax,0x1 ; 0040D661 83F801
    %if ($ - %%insn_0040d661) > 3
        %error "LONG_0040D661"
    %endif
    times 3 - ($ - %%insn_0040d661) db 0
    %%insn_0040d664:
    jnz short 0x40d674 ; 0040D664 750E
    %if ($ - %%insn_0040d664) > 2
        %error "LONG_0040D664"
    %endif
    times 2 - ($ - %%insn_0040d664) db 0
    %%insn_0040d666:
    push ebp ; 0040D666 55
    %if ($ - %%insn_0040d666) > 1
        %error "LONG_0040D666"
    %endif
    times 1 - ($ - %%insn_0040d666) db 0
    %%insn_0040d667:
    call dword near [0x424434] ; 0040D667 FF1534444200
    %if ($ - %%insn_0040d667) > 6
        %error "LONG_0040D667"
    %endif
    times 6 - ($ - %%insn_0040d667) db 0
    %%insn_0040d66d:
    push eax ; 0040D66D 50
    %if ($ - %%insn_0040d66d) > 1
        %error "LONG_0040D66D"
    %endif
    times 1 - ($ - %%insn_0040d66d) db 0
    %%insn_0040d66e:
    call dword near [0x424438] ; 0040D66E FF1538444200
    %if ($ - %%insn_0040d66e) > 6
        %error "LONG_0040D66E"
    %endif
    times 6 - ($ - %%insn_0040d66e) db 0
    %%insn_0040d674:
    mov eax,[esp+0x14] ; 0040D674 8B442414
    %if ($ - %%insn_0040d674) > 4
        %error "LONG_0040D674"
    %endif
    times 4 - ($ - %%insn_0040d674) db 0
    %%insn_0040d678:
    mov ebx,[esp+0x18] ; 0040D678 8B5C2418
    %if ($ - %%insn_0040d678) > 4
        %error "LONG_0040D678"
    %endif
    times 4 - ($ - %%insn_0040d678) db 0
    %%insn_0040d67c:
    test eax,eax ; 0040D67C 85C0
    %if ($ - %%insn_0040d67c) > 2
        %error "LONG_0040D67C"
    %endif
    times 2 - ($ - %%insn_0040d67c) db 0
    %%insn_0040d67e:
    mov dword [0x420e90],0x1 ; 0040D67E C705900E420001000000
    %if ($ - %%insn_0040d67e) > 10
        %error "LONG_0040D67E"
    %endif
    times 10 - ($ - %%insn_0040d67e) db 0
    %%insn_0040d688:
    mov [0x420e8c],bl ; 0040D688 881D8C0E4200
    %if ($ - %%insn_0040d688) > 6
        %error "LONG_0040D688"
    %endif
    times 6 - ($ - %%insn_0040d688) db 0
    %%insn_0040d68e:
    jnz short 0x40d6ce ; 0040D68E 753E
    %if ($ - %%insn_0040d68e) > 2
        %error "LONG_0040D68E"
    %endif
    times 2 - ($ - %%insn_0040d68e) db 0
    %%insn_0040d690:
    mov ecx,[0x423598] ; 0040D690 8B0D98354200
    %if ($ - %%insn_0040d690) > 6
        %error "LONG_0040D690"
    %endif
    times 6 - ($ - %%insn_0040d690) db 0
    %%insn_0040d696:
    test ecx,ecx ; 0040D696 85C9
    %if ($ - %%insn_0040d696) > 2
        %error "LONG_0040D696"
    %endif
    times 2 - ($ - %%insn_0040d696) db 0
    %%insn_0040d698:
    jz short 0x40d6bc ; 0040D698 7422
    %if ($ - %%insn_0040d698) > 2
        %error "LONG_0040D698"
    %endif
    times 2 - ($ - %%insn_0040d698) db 0
    %%insn_0040d69a:
    mov esi,[0x423594] ; 0040D69A 8B3594354200
    %if ($ - %%insn_0040d69a) > 6
        %error "LONG_0040D69A"
    %endif
    times 6 - ($ - %%insn_0040d69a) db 0
    %%insn_0040d6a0:
    sub esi,0x4 ; 0040D6A0 83EE04
    %if ($ - %%insn_0040d6a0) > 3
        %error "LONG_0040D6A0"
    %endif
    times 3 - ($ - %%insn_0040d6a0) db 0
    db 0x3B, 0xF1 ; 0040D6A3 3BF1 | cmp esi,ecx | encoding preserved
    %%insn_0040d6a5:
    jc short 0x40d6bc ; 0040D6A5 7215
    %if ($ - %%insn_0040d6a5) > 2
        %error "LONG_0040D6A5"
    %endif
    times 2 - ($ - %%insn_0040d6a5) db 0
    %%insn_0040d6a7:
    mov eax,[esi] ; 0040D6A7 8B06
    %if ($ - %%insn_0040d6a7) > 2
        %error "LONG_0040D6A7"
    %endif
    times 2 - ($ - %%insn_0040d6a7) db 0
    %%insn_0040d6a9:
    test eax,eax ; 0040D6A9 85C0
    %if ($ - %%insn_0040d6a9) > 2
        %error "LONG_0040D6A9"
    %endif
    times 2 - ($ - %%insn_0040d6a9) db 0
    %%insn_0040d6ab:
    jz short 0x40d6b5 ; 0040D6AB 7408
    %if ($ - %%insn_0040d6ab) > 2
        %error "LONG_0040D6AB"
    %endif
    times 2 - ($ - %%insn_0040d6ab) db 0
    %%insn_0040d6ad:
    call eax ; 0040D6AD FFD0
    %if ($ - %%insn_0040d6ad) > 2
        %error "LONG_0040D6AD"
    %endif
    times 2 - ($ - %%insn_0040d6ad) db 0
    %%insn_0040d6af:
    mov ecx,[0x423598] ; 0040D6AF 8B0D98354200
    %if ($ - %%insn_0040d6af) > 6
        %error "LONG_0040D6AF"
    %endif
    times 6 - ($ - %%insn_0040d6af) db 0
    %%insn_0040d6b5:
    sub esi,0x4 ; 0040D6B5 83EE04
    %if ($ - %%insn_0040d6b5) > 3
        %error "LONG_0040D6B5"
    %endif
    times 3 - ($ - %%insn_0040d6b5) db 0
    db 0x3B, 0xF1 ; 0040D6B8 3BF1 | cmp esi,ecx | encoding preserved
    %%insn_0040d6ba:
    jnc short 0x40d6a7 ; 0040D6BA 73EB
    %if ($ - %%insn_0040d6ba) > 2
        %error "LONG_0040D6BA"
    %endif
    times 2 - ($ - %%insn_0040d6ba) db 0
    %%insn_0040d6bc:
    push dword 0x41b01c ; 0040D6BC 681CB04100
    %if ($ - %%insn_0040d6bc) > 5
        %error "LONG_0040D6BC"
    %endif
    times 5 - ($ - %%insn_0040d6bc) db 0
    %%insn_0040d6c1:
    push dword 0x41b014 ; 0040D6C1 6814B04100
    %if ($ - %%insn_0040d6c1) > 5
        %error "LONG_0040D6C1"
    %endif
    times 5 - ($ - %%insn_0040d6c1) db 0
    %%insn_0040d6c6:
    call 0x40d730 ; 0040D6C6 E865000000
    %if ($ - %%insn_0040d6c6) > 5
        %error "LONG_0040D6C6"
    %endif
    times 5 - ($ - %%insn_0040d6c6) db 0
    %%insn_0040d6cb:
    add esp,0x8 ; 0040D6CB 83C408
    %if ($ - %%insn_0040d6cb) > 3
        %error "LONG_0040D6CB"
    %endif
    times 3 - ($ - %%insn_0040d6cb) db 0
    %%insn_0040d6ce:
    push dword 0x41b024 ; 0040D6CE 6824B04100
    %if ($ - %%insn_0040d6ce) > 5
        %error "LONG_0040D6CE"
    %endif
    times 5 - ($ - %%insn_0040d6ce) db 0
    %%insn_0040d6d3:
    push dword 0x41b020 ; 0040D6D3 6820B04100
    %if ($ - %%insn_0040d6d3) > 5
        %error "LONG_0040D6D3"
    %endif
    times 5 - ($ - %%insn_0040d6d3) db 0
    %%insn_0040d6d8:
    call 0x40d730 ; 0040D6D8 E853000000
    %if ($ - %%insn_0040d6d8) > 5
        %error "LONG_0040D6D8"
    %endif
    times 5 - ($ - %%insn_0040d6d8) db 0
    %%insn_0040d6dd:
    add esp,0x8 ; 0040D6DD 83C408
    %if ($ - %%insn_0040d6dd) > 3
        %error "LONG_0040D6DD"
    %endif
    times 3 - ($ - %%insn_0040d6dd) db 0
    %%insn_0040d6e0:
    test ebx,ebx ; 0040D6E0 85DB
    %if ($ - %%insn_0040d6e0) > 2
        %error "LONG_0040D6E0"
    %endif
    times 2 - ($ - %%insn_0040d6e0) db 0
    %%insn_0040d6e2:
    jz short 0x40d6ed ; 0040D6E2 7409
    %if ($ - %%insn_0040d6e2) > 2
        %error "LONG_0040D6E2"
    %endif
    times 2 - ($ - %%insn_0040d6e2) db 0
    %%insn_0040d6e4:
    call 0x40d720 ; 0040D6E4 E837000000
    %if ($ - %%insn_0040d6e4) > 5
        %error "LONG_0040D6E4"
    %endif
    times 5 - ($ - %%insn_0040d6e4) db 0
    %%insn_0040d6e9:
    pop esi ; 0040D6E9 5E
    %if ($ - %%insn_0040d6e9) > 1
        %error "LONG_0040D6E9"
    %endif
    times 1 - ($ - %%insn_0040d6e9) db 0
    %%insn_0040d6ea:
    pop ebp ; 0040D6EA 5D
    %if ($ - %%insn_0040d6ea) > 1
        %error "LONG_0040D6EA"
    %endif
    times 1 - ($ - %%insn_0040d6ea) db 0
    %%insn_0040d6eb:
    pop ebx ; 0040D6EB 5B
    %if ($ - %%insn_0040d6eb) > 1
        %error "LONG_0040D6EB"
    %endif
    times 1 - ($ - %%insn_0040d6eb) db 0
    %%insn_0040d6ec:
    ret ; 0040D6EC C3
    %if ($ - %%insn_0040d6ec) > 1
        %error "LONG_0040D6EC"
    %endif
    times 1 - ($ - %%insn_0040d6ec) db 0
    %%insn_0040d6ed:
    push ebp ; 0040D6ED 55
    %if ($ - %%insn_0040d6ed) > 1
        %error "LONG_0040D6ED"
    %endif
    times 1 - ($ - %%insn_0040d6ed) db 0
    %%insn_0040d6ee:
    mov dword [0x420e94],0x1 ; 0040D6EE C705940E420001000000
    %if ($ - %%insn_0040d6ee) > 10
        %error "LONG_0040D6EE"
    %endif
    times 10 - ($ - %%insn_0040d6ee) db 0
    %%insn_0040d6f8:
    call dword near [0x42443c] ; 0040D6F8 FF153C444200
    %if ($ - %%insn_0040d6f8) > 6
        %error "LONG_0040D6F8"
    %endif
    times 6 - ($ - %%insn_0040d6f8) db 0
    %if ($ - %%fragment_start) != 174
        %error "function fragment size drift: 0040D650"
    %endif
%endmacro
