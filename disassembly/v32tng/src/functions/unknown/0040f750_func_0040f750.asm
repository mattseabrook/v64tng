; PE virtual entry 0040F750
; Ghidra working symbol: FUN_0040f750
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f750_part_00 0
    %%fragment_start:
func_0040f750:
    %%insn_0040f750:
    push esi ; 0040F750 56
    %if ($ - %%insn_0040f750) > 1
        %error "LONG_0040F750"
    %endif
    times 1 - ($ - %%insn_0040f750) db 0
    %%insn_0040f751:
    mov esi,[esp+0x8] ; 0040F751 8B742408
    %if ($ - %%insn_0040f751) > 4
        %error "LONG_0040F751"
    %endif
    times 4 - ($ - %%insn_0040f751) db 0
    %%insn_0040f755:
    push edi ; 0040F755 57
    %if ($ - %%insn_0040f755) > 1
        %error "LONG_0040F755"
    %endif
    times 1 - ($ - %%insn_0040f755) db 0
    %%insn_0040f756:
    push esi ; 0040F756 56
    %if ($ - %%insn_0040f756) > 1
        %error "LONG_0040F756"
    %endif
    times 1 - ($ - %%insn_0040f756) db 0
    %%insn_0040f757:
    call 0x4110f0 ; 0040F757 E894190000
    %if ($ - %%insn_0040f757) > 5
        %error "LONG_0040F757"
    %endif
    times 5 - ($ - %%insn_0040f757) db 0
    %%insn_0040f75c:
    add esp,0x4 ; 0040F75C 83C404
    %if ($ - %%insn_0040f75c) > 3
        %error "LONG_0040F75C"
    %endif
    times 3 - ($ - %%insn_0040f75c) db 0
    %%insn_0040f75f:
    cmp eax,0xffffffffffffffff ; 0040F75F 83F8FF
    %if ($ - %%insn_0040f75f) > 3
        %error "LONG_0040F75F"
    %endif
    times 3 - ($ - %%insn_0040f75f) db 0
    %%insn_0040f762:
    jz short 0x40f7a6 ; 0040F762 7442
    %if ($ - %%insn_0040f762) > 2
        %error "LONG_0040F762"
    %endif
    times 2 - ($ - %%insn_0040f762) db 0
    %%insn_0040f764:
    cmp esi,0x1 ; 0040F764 83FE01
    %if ($ - %%insn_0040f764) > 3
        %error "LONG_0040F764"
    %endif
    times 3 - ($ - %%insn_0040f764) db 0
    %%insn_0040f767:
    jz short 0x40f76e ; 0040F767 7405
    %if ($ - %%insn_0040f767) > 2
        %error "LONG_0040F767"
    %endif
    times 2 - ($ - %%insn_0040f767) db 0
    %%insn_0040f769:
    cmp esi,0x2 ; 0040F769 83FE02
    %if ($ - %%insn_0040f769) > 3
        %error "LONG_0040F769"
    %endif
    times 3 - ($ - %%insn_0040f769) db 0
    %%insn_0040f76c:
    jnz short 0x40f788 ; 0040F76C 751A
    %if ($ - %%insn_0040f76c) > 2
        %error "LONG_0040F76C"
    %endif
    times 2 - ($ - %%insn_0040f76c) db 0
    %%insn_0040f76e:
    push dword 0x1 ; 0040F76E 6A01
    %if ($ - %%insn_0040f76e) > 2
        %error "LONG_0040F76E"
    %endif
    times 2 - ($ - %%insn_0040f76e) db 0
    %%insn_0040f770:
    call 0x4110f0 ; 0040F770 E87B190000
    %if ($ - %%insn_0040f770) > 5
        %error "LONG_0040F770"
    %endif
    times 5 - ($ - %%insn_0040f770) db 0
    %%insn_0040f775:
    add esp,0x4 ; 0040F775 83C404
    %if ($ - %%insn_0040f775) > 3
        %error "LONG_0040F775"
    %endif
    times 3 - ($ - %%insn_0040f775) db 0
    db 0x8B, 0xF8 ; 0040F778 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040f77a:
    push dword 0x2 ; 0040F77A 6A02
    %if ($ - %%insn_0040f77a) > 2
        %error "LONG_0040F77A"
    %endif
    times 2 - ($ - %%insn_0040f77a) db 0
    %%insn_0040f77c:
    call 0x4110f0 ; 0040F77C E86F190000
    %if ($ - %%insn_0040f77c) > 5
        %error "LONG_0040F77C"
    %endif
    times 5 - ($ - %%insn_0040f77c) db 0
    %%insn_0040f781:
    add esp,0x4 ; 0040F781 83C404
    %if ($ - %%insn_0040f781) > 3
        %error "LONG_0040F781"
    %endif
    times 3 - ($ - %%insn_0040f781) db 0
    db 0x3B, 0xF8 ; 0040F784 3BF8 | cmp edi,eax | encoding preserved
    %%insn_0040f786:
    jz short 0x40f7a6 ; 0040F786 741E
    %if ($ - %%insn_0040f786) > 2
        %error "LONG_0040F786"
    %endif
    times 2 - ($ - %%insn_0040f786) db 0
    %%insn_0040f788:
    push esi ; 0040F788 56
    %if ($ - %%insn_0040f788) > 1
        %error "LONG_0040F788"
    %endif
    times 1 - ($ - %%insn_0040f788) db 0
    %%insn_0040f789:
    call 0x4110f0 ; 0040F789 E862190000
    %if ($ - %%insn_0040f789) > 5
        %error "LONG_0040F789"
    %endif
    times 5 - ($ - %%insn_0040f789) db 0
    %%insn_0040f78e:
    add esp,0x4 ; 0040F78E 83C404
    %if ($ - %%insn_0040f78e) > 3
        %error "LONG_0040F78E"
    %endif
    times 3 - ($ - %%insn_0040f78e) db 0
    %%insn_0040f791:
    push eax ; 0040F791 50
    %if ($ - %%insn_0040f791) > 1
        %error "LONG_0040F791"
    %endif
    times 1 - ($ - %%insn_0040f791) db 0
    %%insn_0040f792:
    call dword near [0x4243c8] ; 0040F792 FF15C8434200
    %if ($ - %%insn_0040f792) > 6
        %error "LONG_0040F792"
    %endif
    times 6 - ($ - %%insn_0040f792) db 0
    %%insn_0040f798:
    test eax,eax ; 0040F798 85C0
    %if ($ - %%insn_0040f798) > 2
        %error "LONG_0040F798"
    %endif
    times 2 - ($ - %%insn_0040f798) db 0
    %%insn_0040f79a:
    jnz short 0x40f7a6 ; 0040F79A 750A
    %if ($ - %%insn_0040f79a) > 2
        %error "LONG_0040F79A"
    %endif
    times 2 - ($ - %%insn_0040f79a) db 0
    %%insn_0040f79c:
    call dword near [0x4243c4] ; 0040F79C FF15C4434200
    %if ($ - %%insn_0040f79c) > 6
        %error "LONG_0040F79C"
    %endif
    times 6 - ($ - %%insn_0040f79c) db 0
    db 0x8B, 0xF8 ; 0040F7A2 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040f7a4:
    jmp short 0x40f7a8 ; 0040F7A4 EB02
    %if ($ - %%insn_0040f7a4) > 2
        %error "LONG_0040F7A4"
    %endif
    times 2 - ($ - %%insn_0040f7a4) db 0
    db 0x33, 0xFF ; 0040F7A6 33FF | xor edi,edi | encoding preserved
    %%insn_0040f7a8:
    push esi ; 0040F7A8 56
    %if ($ - %%insn_0040f7a8) > 1
        %error "LONG_0040F7A8"
    %endif
    times 1 - ($ - %%insn_0040f7a8) db 0
    %%insn_0040f7a9:
    call 0x411050 ; 0040F7A9 E8A2180000
    %if ($ - %%insn_0040f7a9) > 5
        %error "LONG_0040F7A9"
    %endif
    times 5 - ($ - %%insn_0040f7a9) db 0
    db 0x8B, 0xC6 ; 0040F7AE 8BC6 | mov eax,esi | encoding preserved
    %%insn_0040f7b0:
    and esi,0x1f ; 0040F7B0 83E61F
    %if ($ - %%insn_0040f7b0) > 3
        %error "LONG_0040F7B0"
    %endif
    times 3 - ($ - %%insn_0040f7b0) db 0
    %%insn_0040f7b3:
    sar eax,byte 0x5 ; 0040F7B3 C1F805
    %if ($ - %%insn_0040f7b3) > 3
        %error "LONG_0040F7B3"
    %endif
    times 3 - ($ - %%insn_0040f7b3) db 0
    %%insn_0040f7b6:
    lea ecx,[esi+esi*8] ; 0040F7B6 8D0CF6
    %if ($ - %%insn_0040f7b6) > 3
        %error "LONG_0040F7B6"
    %endif
    times 3 - ($ - %%insn_0040f7b6) db 0
    %%insn_0040f7b9:
    add esp,0x4 ; 0040F7B9 83C404
    %if ($ - %%insn_0040f7b9) > 3
        %error "LONG_0040F7B9"
    %endif
    times 3 - ($ - %%insn_0040f7b9) db 0
    %%insn_0040f7bc:
    mov edx,[eax*4+0x423480] ; 0040F7BC 8B148580344200
    %if ($ - %%insn_0040f7bc) > 7
        %error "LONG_0040F7BC"
    %endif
    times 7 - ($ - %%insn_0040f7bc) db 0
    %%insn_0040f7c3:
    test edi,edi ; 0040F7C3 85FF
    %if ($ - %%insn_0040f7c3) > 2
        %error "LONG_0040F7C3"
    %endif
    times 2 - ($ - %%insn_0040f7c3) db 0
    %%insn_0040f7c5:
    mov byte [edx+ecx*4+0x4],0x0 ; 0040F7C5 C6448A0400
    %if ($ - %%insn_0040f7c5) > 5
        %error "LONG_0040F7C5"
    %endif
    times 5 - ($ - %%insn_0040f7c5) db 0
    %%insn_0040f7ca:
    jz short 0x40f7db ; 0040F7CA 740F
    %if ($ - %%insn_0040f7ca) > 2
        %error "LONG_0040F7CA"
    %endif
    times 2 - ($ - %%insn_0040f7ca) db 0
    %%insn_0040f7cc:
    push edi ; 0040F7CC 57
    %if ($ - %%insn_0040f7cc) > 1
        %error "LONG_0040F7CC"
    %endif
    times 1 - ($ - %%insn_0040f7cc) db 0
    %%insn_0040f7cd:
    call 0x410d90 ; 0040F7CD E8BE150000
    %if ($ - %%insn_0040f7cd) > 5
        %error "LONG_0040F7CD"
    %endif
    times 5 - ($ - %%insn_0040f7cd) db 0
    %%insn_0040f7d2:
    add esp,0x4 ; 0040F7D2 83C404
    %if ($ - %%insn_0040f7d2) > 3
        %error "LONG_0040F7D2"
    %endif
    times 3 - ($ - %%insn_0040f7d2) db 0
    %%insn_0040f7d5:
    or eax,0xffffffffffffffff ; 0040F7D5 83C8FF
    %if ($ - %%insn_0040f7d5) > 3
        %error "LONG_0040F7D5"
    %endif
    times 3 - ($ - %%insn_0040f7d5) db 0
    %%insn_0040f7d8:
    pop edi ; 0040F7D8 5F
    %if ($ - %%insn_0040f7d8) > 1
        %error "LONG_0040F7D8"
    %endif
    times 1 - ($ - %%insn_0040f7d8) db 0
    %%insn_0040f7d9:
    pop esi ; 0040F7D9 5E
    %if ($ - %%insn_0040f7d9) > 1
        %error "LONG_0040F7D9"
    %endif
    times 1 - ($ - %%insn_0040f7d9) db 0
    %%insn_0040f7da:
    ret ; 0040F7DA C3
    %if ($ - %%insn_0040f7da) > 1
        %error "LONG_0040F7DA"
    %endif
    times 1 - ($ - %%insn_0040f7da) db 0
    %%insn_0040f7db:
    pop edi ; 0040F7DB 5F
    %if ($ - %%insn_0040f7db) > 1
        %error "LONG_0040F7DB"
    %endif
    times 1 - ($ - %%insn_0040f7db) db 0
    db 0x33, 0xC0 ; 0040F7DC 33C0 | xor eax,eax | encoding preserved
    %%insn_0040f7de:
    pop esi ; 0040F7DE 5E
    %if ($ - %%insn_0040f7de) > 1
        %error "LONG_0040F7DE"
    %endif
    times 1 - ($ - %%insn_0040f7de) db 0
    %%insn_0040f7df:
    ret ; 0040F7DF C3
    %if ($ - %%insn_0040f7df) > 1
        %error "LONG_0040F7DF"
    %endif
    times 1 - ($ - %%insn_0040f7df) db 0
    %if ($ - %%fragment_start) != 144
        %error "function fragment size drift: 0040F750"
    %endif
%endmacro
