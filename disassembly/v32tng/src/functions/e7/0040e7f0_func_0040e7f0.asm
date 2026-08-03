; PE virtual entry 0040E7F0
; Ghidra working symbol: FUN_0040e7f0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e7f0_part_00 0
    %%fragment_start:
func_0040e7f0:
    %%insn_0040e7f0:
    mov ecx,[esp+0x4] ; 0040E7F0 8B4C2404
    %if ($ - %%insn_0040e7f0) > 4
        %error "LONG_0040E7F0"
    %endif
    times 4 - ($ - %%insn_0040e7f0) db 0
    %%insn_0040e7f4:
    push ebx ; 0040E7F4 53
    %if ($ - %%insn_0040e7f4) > 1
        %error "LONG_0040E7F4"
    %endif
    times 1 - ($ - %%insn_0040e7f4) db 0
    %%insn_0040e7f5:
    push ebp ; 0040E7F5 55
    %if ($ - %%insn_0040e7f5) > 1
        %error "LONG_0040E7F5"
    %endif
    times 1 - ($ - %%insn_0040e7f5) db 0
    %%insn_0040e7f6:
    mov ebp,[esp+0x10] ; 0040E7F6 8B6C2410
    %if ($ - %%insn_0040e7f6) > 4
        %error "LONG_0040E7F6"
    %endif
    times 4 - ($ - %%insn_0040e7f6) db 0
    %%insn_0040e7fa:
    push esi ; 0040E7FA 56
    %if ($ - %%insn_0040e7fa) > 1
        %error "LONG_0040E7FA"
    %endif
    times 1 - ($ - %%insn_0040e7fa) db 0
    %%insn_0040e7fb:
    push edi ; 0040E7FB 57
    %if ($ - %%insn_0040e7fb) > 1
        %error "LONG_0040E7FB"
    %endif
    times 1 - ($ - %%insn_0040e7fb) db 0
    %%insn_0040e7fc:
    mov edi,[ecx+0x10] ; 0040E7FC 8B7910
    %if ($ - %%insn_0040e7fc) > 3
        %error "LONG_0040E7FC"
    %endif
    times 3 - ($ - %%insn_0040e7fc) db 0
    db 0x8B, 0xD5 ; 0040E7FF 8BD5 | mov edx,ebp | encoding preserved
    db 0x2B, 0xD7 ; 0040E801 2BD7 | sub edx,edi | encoding preserved
    %%insn_0040e803:
    mov edi,[esp+0x1c] ; 0040E803 8B7C241C
    %if ($ - %%insn_0040e803) > 4
        %error "LONG_0040E803"
    %endif
    times 4 - ($ - %%insn_0040e803) db 0
    %%insn_0040e807:
    sar edx,byte 0xc ; 0040E807 C1FA0C
    %if ($ - %%insn_0040e807) > 3
        %error "LONG_0040E807"
    %endif
    times 3 - ($ - %%insn_0040e807) db 0
    %%insn_0040e80a:
    mov ebx,[esp+0x20] ; 0040E80A 8B5C2420
    %if ($ - %%insn_0040e80a) > 4
        %error "LONG_0040E80A"
    %endif
    times 4 - ($ - %%insn_0040e80a) db 0
    db 0x33, 0xC0 ; 0040E80E 33C0 | xor eax,eax | encoding preserved
    %%insn_0040e810:
    lea ecx,[ecx+edx*8+0x18] ; 0040E810 8D4CD118
    %if ($ - %%insn_0040e810) > 4
        %error "LONG_0040E810"
    %endif
    times 4 - ($ - %%insn_0040e810) db 0
    db 0x33, 0xD2 ; 0040E814 33D2 | xor edx,edx | encoding preserved
    %%insn_0040e816:
    mov dl,[edi] ; 0040E816 8A17
    %if ($ - %%insn_0040e816) > 2
        %error "LONG_0040E816"
    %endif
    times 2 - ($ - %%insn_0040e816) db 0
    %%insn_0040e818:
    mov [esp+0x18],ecx ; 0040E818 894C2418
    %if ($ - %%insn_0040e818) > 4
        %error "LONG_0040E818"
    %endif
    times 4 - ($ - %%insn_0040e818) db 0
    db 0x8B, 0xF2 ; 0040E81C 8BF2 | mov esi,edx | encoding preserved
    db 0x3B, 0xF3 ; 0040E81E 3BF3 | cmp esi,ebx | encoding preserved
    %%insn_0040e820:
    jna short 0x40e83d ; 0040E820 761B
    %if ($ - %%insn_0040e820) > 2
        %error "LONG_0040E820"
    %endif
    times 2 - ($ - %%insn_0040e820) db 0
    %%insn_0040e822:
    mov [edi],bl ; 0040E822 881F
    %if ($ - %%insn_0040e822) > 2
        %error "LONG_0040E822"
    %endif
    times 2 - ($ - %%insn_0040e822) db 0
    %%insn_0040e824:
    mov eax,[ecx] ; 0040E824 8B01
    %if ($ - %%insn_0040e824) > 2
        %error "LONG_0040E824"
    %endif
    times 2 - ($ - %%insn_0040e824) db 0
    db 0x2B, 0xF3 ; 0040E826 2BF3 | sub esi,ebx | encoding preserved
    %%insn_0040e828:
    mov dword [ecx+0x4],0xf1 ; 0040E828 C74104F1000000
    %if ($ - %%insn_0040e828) > 7
        %error "LONG_0040E828"
    %endif
    times 7 - ($ - %%insn_0040e828) db 0
    db 0x03, 0xC6 ; 0040E82F 03C6 | add eax,esi | encoding preserved
    %%insn_0040e831:
    mov [ecx],eax ; 0040E831 8901
    %if ($ - %%insn_0040e831) > 2
        %error "LONG_0040E831"
    %endif
    times 2 - ($ - %%insn_0040e831) db 0
    %%insn_0040e833:
    mov eax,0x1 ; 0040E833 B801000000
    %if ($ - %%insn_0040e833) > 5
        %error "LONG_0040E833"
    %endif
    times 5 - ($ - %%insn_0040e833) db 0
    %%insn_0040e838:
    pop edi ; 0040E838 5F
    %if ($ - %%insn_0040e838) > 1
        %error "LONG_0040E838"
    %endif
    times 1 - ($ - %%insn_0040e838) db 0
    %%insn_0040e839:
    pop esi ; 0040E839 5E
    %if ($ - %%insn_0040e839) > 1
        %error "LONG_0040E839"
    %endif
    times 1 - ($ - %%insn_0040e839) db 0
    %%insn_0040e83a:
    pop ebp ; 0040E83A 5D
    %if ($ - %%insn_0040e83a) > 1
        %error "LONG_0040E83A"
    %endif
    times 1 - ($ - %%insn_0040e83a) db 0
    %%insn_0040e83b:
    pop ebx ; 0040E83B 5B
    %if ($ - %%insn_0040e83b) > 1
        %error "LONG_0040E83B"
    %endif
    times 1 - ($ - %%insn_0040e83b) db 0
    %%insn_0040e83c:
    ret ; 0040E83C C3
    %if ($ - %%insn_0040e83c) > 1
        %error "LONG_0040E83C"
    %endif
    times 1 - ($ - %%insn_0040e83c) db 0
    %%insn_0040e83d:
    jnc short 0x40e8af ; 0040E83D 7370
    %if ($ - %%insn_0040e83d) > 2
        %error "LONG_0040E83D"
    %endif
    times 2 - ($ - %%insn_0040e83d) db 0
    %%insn_0040e83f:
    lea ecx,[ebx+edi] ; 0040E83F 8D0C3B
    %if ($ - %%insn_0040e83f) > 3
        %error "LONG_0040E83F"
    %endif
    times 3 - ($ - %%insn_0040e83f) db 0
    %%insn_0040e842:
    lea edx,[ebp+0xf8] ; 0040E842 8D95F8000000
    %if ($ - %%insn_0040e842) > 6
        %error "LONG_0040E842"
    %endif
    times 6 - ($ - %%insn_0040e842) db 0
    db 0x3B, 0xCA ; 0040E848 3BCA | cmp ecx,edx | encoding preserved
    %%insn_0040e84a:
    ja short 0x40e8af ; 0040E84A 7763
    %if ($ - %%insn_0040e84a) > 2
        %error "LONG_0040E84A"
    %endif
    times 2 - ($ - %%insn_0040e84a) db 0
    %%insn_0040e84c:
    lea edx,[esi+edi] ; 0040E84C 8D143E
    %if ($ - %%insn_0040e84c) > 3
        %error "LONG_0040E84C"
    %endif
    times 3 - ($ - %%insn_0040e84c) db 0
    db 0x3B, 0xD1 ; 0040E84F 3BD1 | cmp edx,ecx | encoding preserved
    %%insn_0040e851:
    jnc short 0x40e85f ; 0040E851 730C
    %if ($ - %%insn_0040e851) > 2
        %error "LONG_0040E851"
    %endif
    times 2 - ($ - %%insn_0040e851) db 0
    %%insn_0040e853:
    cmp byte [edx],0x0 ; 0040E853 803A00
    %if ($ - %%insn_0040e853) > 3
        %error "LONG_0040E853"
    %endif
    times 3 - ($ - %%insn_0040e853) db 0
    %%insn_0040e856:
    jnz short 0x40e85d ; 0040E856 7505
    %if ($ - %%insn_0040e856) > 2
        %error "LONG_0040E856"
    %endif
    times 2 - ($ - %%insn_0040e856) db 0
    %%insn_0040e858:
    inc edx ; 0040E858 42
    %if ($ - %%insn_0040e858) > 1
        %error "LONG_0040E858"
    %endif
    times 1 - ($ - %%insn_0040e858) db 0
    db 0x3B, 0xD1 ; 0040E859 3BD1 | cmp edx,ecx | encoding preserved
    %%insn_0040e85b:
    jc short 0x40e853 ; 0040E85B 72F6
    %if ($ - %%insn_0040e85b) > 2
        %error "LONG_0040E85B"
    %endif
    times 2 - ($ - %%insn_0040e85b) db 0
    db 0x3B, 0xD1 ; 0040E85D 3BD1 | cmp edx,ecx | encoding preserved
    %%insn_0040e85f:
    jnz short 0x40e8af ; 0040E85F 754E
    %if ($ - %%insn_0040e85f) > 2
        %error "LONG_0040E85F"
    %endif
    times 2 - ($ - %%insn_0040e85f) db 0
    %%insn_0040e861:
    mov [edi],bl ; 0040E861 881F
    %if ($ - %%insn_0040e861) > 2
        %error "LONG_0040E861"
    %endif
    times 2 - ($ - %%insn_0040e861) db 0
    %%insn_0040e863:
    mov eax,[ebp+0x0] ; 0040E863 8B4500
    %if ($ - %%insn_0040e863) > 3
        %error "LONG_0040E863"
    %endif
    times 3 - ($ - %%insn_0040e863) db 0
    db 0x3B, 0xF8 ; 0040E866 3BF8 | cmp edi,eax | encoding preserved
    %%insn_0040e868:
    ja short 0x40e89e ; 0040E868 7734
    %if ($ - %%insn_0040e868) > 2
        %error "LONG_0040E868"
    %endif
    times 2 - ($ - %%insn_0040e868) db 0
    db 0x3B, 0xC8 ; 0040E86A 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0040e86c:
    jna short 0x40e89e ; 0040E86C 7630
    %if ($ - %%insn_0040e86c) > 2
        %error "LONG_0040E86C"
    %endif
    times 2 - ($ - %%insn_0040e86c) db 0
    %%insn_0040e86e:
    lea eax,[ebp+0xf8] ; 0040E86E 8D85F8000000
    %if ($ - %%insn_0040e86e) > 6
        %error "LONG_0040E86E"
    %endif
    times 6 - ($ - %%insn_0040e86e) db 0
    db 0x3B, 0xC8 ; 0040E874 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0040e876:
    jnc short 0x40e891 ; 0040E876 7319
    %if ($ - %%insn_0040e876) > 2
        %error "LONG_0040E876"
    %endif
    times 2 - ($ - %%insn_0040e876) db 0
    %%insn_0040e878:
    mov [ebp+0x0],ecx ; 0040E878 894D00
    %if ($ - %%insn_0040e878) > 3
        %error "LONG_0040E878"
    %endif
    times 3 - ($ - %%insn_0040e878) db 0
    %%insn_0040e87b:
    mov dl,[ecx] ; 0040E87B 8A11
    %if ($ - %%insn_0040e87b) > 2
        %error "LONG_0040E87B"
    %endif
    times 2 - ($ - %%insn_0040e87b) db 0
    db 0x33, 0xC0 ; 0040E87D 33C0 | xor eax,eax | encoding preserved
    %%insn_0040e87f:
    test dl,dl ; 0040E87F 84D2
    %if ($ - %%insn_0040e87f) > 2
        %error "LONG_0040E87F"
    %endif
    times 2 - ($ - %%insn_0040e87f) db 0
    %%insn_0040e881:
    jnz short 0x40e88c ; 0040E881 7509
    %if ($ - %%insn_0040e881) > 2
        %error "LONG_0040E881"
    %endif
    times 2 - ($ - %%insn_0040e881) db 0
    %%insn_0040e883:
    mov dl,[eax+ecx+0x1] ; 0040E883 8A540801
    %if ($ - %%insn_0040e883) > 4
        %error "LONG_0040E883"
    %endif
    times 4 - ($ - %%insn_0040e883) db 0
    %%insn_0040e887:
    inc eax ; 0040E887 40
    %if ($ - %%insn_0040e887) > 1
        %error "LONG_0040E887"
    %endif
    times 1 - ($ - %%insn_0040e887) db 0
    %%insn_0040e888:
    test dl,dl ; 0040E888 84D2
    %if ($ - %%insn_0040e888) > 2
        %error "LONG_0040E888"
    %endif
    times 2 - ($ - %%insn_0040e888) db 0
    %%insn_0040e88a:
    jz short 0x40e883 ; 0040E88A 74F7
    %if ($ - %%insn_0040e88a) > 2
        %error "LONG_0040E88A"
    %endif
    times 2 - ($ - %%insn_0040e88a) db 0
    %%insn_0040e88c:
    mov [ebp+0x4],eax ; 0040E88C 894504
    %if ($ - %%insn_0040e88c) > 3
        %error "LONG_0040E88C"
    %endif
    times 3 - ($ - %%insn_0040e88c) db 0
    %%insn_0040e88f:
    jmp short 0x40e89e ; 0040E88F EB0D
    %if ($ - %%insn_0040e88f) > 2
        %error "LONG_0040E88F"
    %endif
    times 2 - ($ - %%insn_0040e88f) db 0
    %%insn_0040e891:
    lea eax,[ebp+0x8] ; 0040E891 8D4508
    %if ($ - %%insn_0040e891) > 3
        %error "LONG_0040E891"
    %endif
    times 3 - ($ - %%insn_0040e891) db 0
    %%insn_0040e894:
    mov dword [ebp+0x4],0x0 ; 0040E894 C7450400000000
    %if ($ - %%insn_0040e894) > 7
        %error "LONG_0040E894"
    %endif
    times 7 - ($ - %%insn_0040e894) db 0
    %%insn_0040e89b:
    mov [ebp+0x0],eax ; 0040E89B 894500
    %if ($ - %%insn_0040e89b) > 3
        %error "LONG_0040E89B"
    %endif
    times 3 - ($ - %%insn_0040e89b) db 0
    %%insn_0040e89e:
    mov eax,[esp+0x18] ; 0040E89E 8B442418
    %if ($ - %%insn_0040e89e) > 4
        %error "LONG_0040E89E"
    %endif
    times 4 - ($ - %%insn_0040e89e) db 0
    db 0x2B, 0xF3 ; 0040E8A2 2BF3 | sub esi,ebx | encoding preserved
    %%insn_0040e8a4:
    mov ecx,[eax] ; 0040E8A4 8B08
    %if ($ - %%insn_0040e8a4) > 2
        %error "LONG_0040E8A4"
    %endif
    times 2 - ($ - %%insn_0040e8a4) db 0
    db 0x03, 0xCE ; 0040E8A6 03CE | add ecx,esi | encoding preserved
    %%insn_0040e8a8:
    mov [eax],ecx ; 0040E8A8 8908
    %if ($ - %%insn_0040e8a8) > 2
        %error "LONG_0040E8A8"
    %endif
    times 2 - ($ - %%insn_0040e8a8) db 0
    %%insn_0040e8aa:
    mov eax,0x1 ; 0040E8AA B801000000
    %if ($ - %%insn_0040e8aa) > 5
        %error "LONG_0040E8AA"
    %endif
    times 5 - ($ - %%insn_0040e8aa) db 0
    %%insn_0040e8af:
    pop edi ; 0040E8AF 5F
    %if ($ - %%insn_0040e8af) > 1
        %error "LONG_0040E8AF"
    %endif
    times 1 - ($ - %%insn_0040e8af) db 0
    %%insn_0040e8b0:
    pop esi ; 0040E8B0 5E
    %if ($ - %%insn_0040e8b0) > 1
        %error "LONG_0040E8B0"
    %endif
    times 1 - ($ - %%insn_0040e8b0) db 0
    %%insn_0040e8b1:
    pop ebp ; 0040E8B1 5D
    %if ($ - %%insn_0040e8b1) > 1
        %error "LONG_0040E8B1"
    %endif
    times 1 - ($ - %%insn_0040e8b1) db 0
    %%insn_0040e8b2:
    pop ebx ; 0040E8B2 5B
    %if ($ - %%insn_0040e8b2) > 1
        %error "LONG_0040E8B2"
    %endif
    times 1 - ($ - %%insn_0040e8b2) db 0
    %%insn_0040e8b3:
    ret ; 0040E8B3 C3
    %if ($ - %%insn_0040e8b3) > 1
        %error "LONG_0040E8B3"
    %endif
    times 1 - ($ - %%insn_0040e8b3) db 0
    %if ($ - %%fragment_start) != 196
        %error "function fragment size drift: 0040E7F0"
    %endif
%endmacro
