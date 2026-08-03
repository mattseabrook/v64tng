; PE virtual entry 0040E670
; Ghidra working symbol: FUN_0040e670
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e670_part_00 0
    %%fragment_start:
func_0040e670:
    %%insn_0040e670:
    mov edx,[esp+0xc] ; 0040E670 8B54240C
    %if ($ - %%insn_0040e670) > 4
        %error "LONG_0040E670"
    %endif
    times 4 - ($ - %%insn_0040e670) db 0
    %%insn_0040e674:
    push ebx ; 0040E674 53
    %if ($ - %%insn_0040e674) > 1
        %error "LONG_0040E674"
    %endif
    times 1 - ($ - %%insn_0040e674) db 0
    %%insn_0040e675:
    push ebp ; 0040E675 55
    %if ($ - %%insn_0040e675) > 1
        %error "LONG_0040E675"
    %endif
    times 1 - ($ - %%insn_0040e675) db 0
    %%insn_0040e676:
    push esi ; 0040E676 56
    %if ($ - %%insn_0040e676) > 1
        %error "LONG_0040E676"
    %endif
    times 1 - ($ - %%insn_0040e676) db 0
    %%insn_0040e677:
    push edi ; 0040E677 57
    %if ($ - %%insn_0040e677) > 1
        %error "LONG_0040E677"
    %endif
    times 1 - ($ - %%insn_0040e677) db 0
    %%insn_0040e678:
    mov edi,[esp+0x14] ; 0040E678 8B7C2414
    %if ($ - %%insn_0040e678) > 4
        %error "LONG_0040E678"
    %endif
    times 4 - ($ - %%insn_0040e678) db 0
    %%insn_0040e67c:
    mov eax,[edi+0x4] ; 0040E67C 8B4704
    %if ($ - %%insn_0040e67c) > 3
        %error "LONG_0040E67C"
    %endif
    times 3 - ($ - %%insn_0040e67c) db 0
    %%insn_0040e67f:
    mov ecx,[edi] ; 0040E67F 8B0F
    %if ($ - %%insn_0040e67f) > 2
        %error "LONG_0040E67F"
    %endif
    times 2 - ($ - %%insn_0040e67f) db 0
    db 0x3B, 0xC2 ; 0040E681 3BC2 | cmp eax,edx | encoding preserved
    %%insn_0040e683:
    mov [esp+0x14],ecx ; 0040E683 894C2414
    %if ($ - %%insn_0040e683) > 4
        %error "LONG_0040E683"
    %endif
    times 4 - ($ - %%insn_0040e683) db 0
    db 0x8B, 0xF1 ; 0040E687 8BF1 | mov esi,ecx | encoding preserved
    %%insn_0040e689:
    lea ebx,[edi+0xf8] ; 0040E689 8D9FF8000000
    %if ($ - %%insn_0040e689) > 6
        %error "LONG_0040E689"
    %endif
    times 6 - ($ - %%insn_0040e689) db 0
    %%insn_0040e68f:
    jc short 0x40e6cb ; 0040E68F 723A
    %if ($ - %%insn_0040e68f) > 2
        %error "LONG_0040E68F"
    %endif
    times 2 - ($ - %%insn_0040e68f) db 0
    %%insn_0040e691:
    lea eax,[ecx+edx] ; 0040E691 8D0411
    %if ($ - %%insn_0040e691) > 3
        %error "LONG_0040E691"
    %endif
    times 3 - ($ - %%insn_0040e691) db 0
    %%insn_0040e694:
    mov [ecx],dl ; 0040E694 8811
    %if ($ - %%insn_0040e694) > 2
        %error "LONG_0040E694"
    %endif
    times 2 - ($ - %%insn_0040e694) db 0
    db 0x3B, 0xC3 ; 0040E696 3BC3 | cmp eax,ebx | encoding preserved
    %%insn_0040e698:
    jnc short 0x40e6aa ; 0040E698 7310
    %if ($ - %%insn_0040e698) > 2
        %error "LONG_0040E698"
    %endif
    times 2 - ($ - %%insn_0040e698) db 0
    %%insn_0040e69a:
    mov esi,[edi] ; 0040E69A 8B37
    %if ($ - %%insn_0040e69a) > 2
        %error "LONG_0040E69A"
    %endif
    times 2 - ($ - %%insn_0040e69a) db 0
    %%insn_0040e69c:
    mov eax,[edi+0x4] ; 0040E69C 8B4704
    %if ($ - %%insn_0040e69c) > 3
        %error "LONG_0040E69C"
    %endif
    times 3 - ($ - %%insn_0040e69c) db 0
    db 0x03, 0xF2 ; 0040E69F 03F2 | add esi,edx | encoding preserved
    db 0x2B, 0xC2 ; 0040E6A1 2BC2 | sub eax,edx | encoding preserved
    %%insn_0040e6a3:
    mov [edi],esi ; 0040E6A3 8937
    %if ($ - %%insn_0040e6a3) > 2
        %error "LONG_0040E6A3"
    %endif
    times 2 - ($ - %%insn_0040e6a3) db 0
    %%insn_0040e6a5:
    mov [edi+0x4],eax ; 0040E6A5 894704
    %if ($ - %%insn_0040e6a5) > 3
        %error "LONG_0040E6A5"
    %endif
    times 3 - ($ - %%insn_0040e6a5) db 0
    %%insn_0040e6a8:
    jmp short 0x40e6b6 ; 0040E6A8 EB0C
    %if ($ - %%insn_0040e6a8) > 2
        %error "LONG_0040E6A8"
    %endif
    times 2 - ($ - %%insn_0040e6a8) db 0
    %%insn_0040e6aa:
    lea edx,[edi+0x8] ; 0040E6AA 8D5708
    %if ($ - %%insn_0040e6aa) > 3
        %error "LONG_0040E6AA"
    %endif
    times 3 - ($ - %%insn_0040e6aa) db 0
    %%insn_0040e6ad:
    mov dword [edi+0x4],0x0 ; 0040E6AD C7470400000000
    %if ($ - %%insn_0040e6ad) > 7
        %error "LONG_0040E6AD"
    %endif
    times 7 - ($ - %%insn_0040e6ad) db 0
    %%insn_0040e6b4:
    mov [edi],edx ; 0040E6B4 8917
    %if ($ - %%insn_0040e6b4) > 2
        %error "LONG_0040E6B4"
    %endif
    times 2 - ($ - %%insn_0040e6b4) db 0
    %%insn_0040e6b6:
    lea eax,[edi+edi*2] ; 0040E6B6 8D047F
    %if ($ - %%insn_0040e6b6) > 3
        %error "LONG_0040E6B6"
    %endif
    times 3 - ($ - %%insn_0040e6b6) db 0
    %%insn_0040e6b9:
    lea eax,[eax+eax*4] ; 0040E6B9 8D0480
    %if ($ - %%insn_0040e6b9) > 3
        %error "LONG_0040E6B9"
    %endif
    times 3 - ($ - %%insn_0040e6b9) db 0
    db 0x8B, 0xD0 ; 0040E6BC 8BD0 | mov edx,eax | encoding preserved
    %%insn_0040e6be:
    lea eax,[ecx+0x8] ; 0040E6BE 8D4108
    %if ($ - %%insn_0040e6be) > 3
        %error "LONG_0040E6BE"
    %endif
    times 3 - ($ - %%insn_0040e6be) db 0
    %%insn_0040e6c1:
    shl eax,byte 0x4 ; 0040E6C1 C1E004
    %if ($ - %%insn_0040e6c1) > 3
        %error "LONG_0040E6C1"
    %endif
    times 3 - ($ - %%insn_0040e6c1) db 0
    db 0x2B, 0xC2 ; 0040E6C4 2BC2 | sub eax,edx | encoding preserved
    %%insn_0040e6c6:
    pop edi ; 0040E6C6 5F
    %if ($ - %%insn_0040e6c6) > 1
        %error "LONG_0040E6C6"
    %endif
    times 1 - ($ - %%insn_0040e6c6) db 0
    %%insn_0040e6c7:
    pop esi ; 0040E6C7 5E
    %if ($ - %%insn_0040e6c7) > 1
        %error "LONG_0040E6C7"
    %endif
    times 1 - ($ - %%insn_0040e6c7) db 0
    %%insn_0040e6c8:
    pop ebp ; 0040E6C8 5D
    %if ($ - %%insn_0040e6c8) > 1
        %error "LONG_0040E6C8"
    %endif
    times 1 - ($ - %%insn_0040e6c8) db 0
    %%insn_0040e6c9:
    pop ebx ; 0040E6C9 5B
    %if ($ - %%insn_0040e6c9) > 1
        %error "LONG_0040E6C9"
    %endif
    times 1 - ($ - %%insn_0040e6c9) db 0
    %%insn_0040e6ca:
    ret ; 0040E6CA C3
    %if ($ - %%insn_0040e6ca) > 1
        %error "LONG_0040E6CA"
    %endif
    times 1 - ($ - %%insn_0040e6ca) db 0
    db 0x03, 0xC1 ; 0040E6CB 03C1 | add eax,ecx | encoding preserved
    %%insn_0040e6cd:
    cmp byte [eax],0x0 ; 0040E6CD 803800
    %if ($ - %%insn_0040e6cd) > 3
        %error "LONG_0040E6CD"
    %endif
    times 3 - ($ - %%insn_0040e6cd) db 0
    %%insn_0040e6d0:
    jz short 0x40e6d4 ; 0040E6D0 7402
    %if ($ - %%insn_0040e6d0) > 2
        %error "LONG_0040E6D0"
    %endif
    times 2 - ($ - %%insn_0040e6d0) db 0
    db 0x8B, 0xF0 ; 0040E6D2 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040e6d4:
    lea eax,[esi+edx] ; 0040E6D4 8D0416
    %if ($ - %%insn_0040e6d4) > 3
        %error "LONG_0040E6D4"
    %endif
    times 3 - ($ - %%insn_0040e6d4) db 0
    db 0x3B, 0xC3 ; 0040E6D7 3BC3 | cmp eax,ebx | encoding preserved
    %%insn_0040e6d9:
    mov ebx,[esp+0x18] ; 0040E6D9 8B5C2418
    %if ($ - %%insn_0040e6d9) > 4
        %error "LONG_0040E6D9"
    %endif
    times 4 - ($ - %%insn_0040e6d9) db 0
    %%insn_0040e6dd:
    jnc short 0x40e754 ; 0040E6DD 7375
    %if ($ - %%insn_0040e6dd) > 2
        %error "LONG_0040E6DD"
    %endif
    times 2 - ($ - %%insn_0040e6dd) db 0
    %%insn_0040e6df:
    mov al,[esi] ; 0040E6DF 8A06
    %if ($ - %%insn_0040e6df) > 2
        %error "LONG_0040E6DF"
    %endif
    times 2 - ($ - %%insn_0040e6df) db 0
    %%insn_0040e6e1:
    test al,al ; 0040E6E1 84C0
    %if ($ - %%insn_0040e6e1) > 2
        %error "LONG_0040E6E1"
    %endif
    times 2 - ($ - %%insn_0040e6e1) db 0
    %%insn_0040e6e3:
    jnz short 0x40e721 ; 0040E6E3 753C
    %if ($ - %%insn_0040e6e3) > 2
        %error "LONG_0040E6E3"
    %endif
    times 2 - ($ - %%insn_0040e6e3) db 0
    %%insn_0040e6e5:
    cmp byte [esi+0x1],0x0 ; 0040E6E5 807E0100
    %if ($ - %%insn_0040e6e5) > 4
        %error "LONG_0040E6E5"
    %endif
    times 4 - ($ - %%insn_0040e6e5) db 0
    %%insn_0040e6e9:
    lea eax,[esi+0x1] ; 0040E6E9 8D4601
    %if ($ - %%insn_0040e6e9) > 3
        %error "LONG_0040E6E9"
    %endif
    times 3 - ($ - %%insn_0040e6e9) db 0
    %%insn_0040e6ec:
    mov ecx,0x1 ; 0040E6EC B901000000
    %if ($ - %%insn_0040e6ec) > 5
        %error "LONG_0040E6EC"
    %endif
    times 5 - ($ - %%insn_0040e6ec) db 0
    %%insn_0040e6f1:
    jnz short 0x40e6fa ; 0040E6F1 7507
    %if ($ - %%insn_0040e6f1) > 2
        %error "LONG_0040E6F1"
    %endif
    times 2 - ($ - %%insn_0040e6f1) db 0
    %%insn_0040e6f3:
    inc eax ; 0040E6F3 40
    %if ($ - %%insn_0040e6f3) > 1
        %error "LONG_0040E6F3"
    %endif
    times 1 - ($ - %%insn_0040e6f3) db 0
    %%insn_0040e6f4:
    inc ecx ; 0040E6F4 41
    %if ($ - %%insn_0040e6f4) > 1
        %error "LONG_0040E6F4"
    %endif
    times 1 - ($ - %%insn_0040e6f4) db 0
    %%insn_0040e6f5:
    cmp byte [eax],0x0 ; 0040E6F5 803800
    %if ($ - %%insn_0040e6f5) > 3
        %error "LONG_0040E6F5"
    %endif
    times 3 - ($ - %%insn_0040e6f5) db 0
    %%insn_0040e6f8:
    jz short 0x40e6f3 ; 0040E6F8 74F9
    %if ($ - %%insn_0040e6f8) > 2
        %error "LONG_0040E6F8"
    %endif
    times 2 - ($ - %%insn_0040e6f8) db 0
    db 0x3B, 0xCA ; 0040E6FA 3BCA | cmp ecx,edx | encoding preserved
    %%insn_0040e6fc:
    jnc short 0x40e737 ; 0040E6FC 7339
    %if ($ - %%insn_0040e6fc) > 2
        %error "LONG_0040E6FC"
    %endif
    times 2 - ($ - %%insn_0040e6fc) db 0
    %%insn_0040e6fe:
    mov ebp,[esp+0x14] ; 0040E6FE 8B6C2414
    %if ($ - %%insn_0040e6fe) > 4
        %error "LONG_0040E6FE"
    %endif
    times 4 - ($ - %%insn_0040e6fe) db 0
    db 0x3B, 0xF5 ; 0040E702 3BF5 | cmp esi,ebp | encoding preserved
    %%insn_0040e704:
    jnz short 0x40e70f ; 0040E704 7509
    %if ($ - %%insn_0040e704) > 2
        %error "LONG_0040E704"
    %endif
    times 2 - ($ - %%insn_0040e704) db 0
    %%insn_0040e706:
    mov [edi+0x4],ecx ; 0040E706 894F04
    %if ($ - %%insn_0040e706) > 3
        %error "LONG_0040E706"
    %endif
    times 3 - ($ - %%insn_0040e706) db 0
    db 0x8B, 0xF0 ; 0040E709 8BF0 | mov esi,eax | encoding preserved
    db 0x8B, 0xCD ; 0040E70B 8BCD | mov ecx,ebp | encoding preserved
    %%insn_0040e70d:
    jmp short 0x40e728 ; 0040E70D EB19
    %if ($ - %%insn_0040e70d) > 2
        %error "LONG_0040E70D"
    %endif
    times 2 - ($ - %%insn_0040e70d) db 0
    db 0x2B, 0xD9 ; 0040E70F 2BD9 | sub ebx,ecx | encoding preserved
    db 0x3B, 0xDA ; 0040E711 3BDA | cmp ebx,edx | encoding preserved
    %%insn_0040e713:
    jc 0x40e7db ; 0040E713 0F82C2000000
    %if ($ - %%insn_0040e713) > 6
        %error "LONG_0040E713"
    %endif
    times 6 - ($ - %%insn_0040e713) db 0
    %%insn_0040e719:
    mov ecx,[esp+0x14] ; 0040E719 8B4C2414
    %if ($ - %%insn_0040e719) > 4
        %error "LONG_0040E719"
    %endif
    times 4 - ($ - %%insn_0040e719) db 0
    db 0x8B, 0xF0 ; 0040E71D 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040e71f:
    jmp short 0x40e728 ; 0040E71F EB07
    %if ($ - %%insn_0040e71f) > 2
        %error "LONG_0040E71F"
    %endif
    times 2 - ($ - %%insn_0040e71f) db 0
    %%insn_0040e721:
    and eax,0xff ; 0040E721 25FF000000
    %if ($ - %%insn_0040e721) > 5
        %error "LONG_0040E721"
    %endif
    times 5 - ($ - %%insn_0040e721) db 0
    db 0x03, 0xF0 ; 0040E726 03F0 | add esi,eax | encoding preserved
    %%insn_0040e728:
    lea ebp,[esi+edx] ; 0040E728 8D2C16
    %if ($ - %%insn_0040e728) > 3
        %error "LONG_0040E728"
    %endif
    times 3 - ($ - %%insn_0040e728) db 0
    %%insn_0040e72b:
    lea eax,[edi+0xf8] ; 0040E72B 8D87F8000000
    %if ($ - %%insn_0040e72b) > 6
        %error "LONG_0040E72B"
    %endif
    times 6 - ($ - %%insn_0040e72b) db 0
    db 0x3B, 0xE8 ; 0040E731 3BE8 | cmp ebp,eax | encoding preserved
    %%insn_0040e733:
    jc short 0x40e6df ; 0040E733 72AA
    %if ($ - %%insn_0040e733) > 2
        %error "LONG_0040E733"
    %endif
    times 2 - ($ - %%insn_0040e733) db 0
    %%insn_0040e735:
    jmp short 0x40e754 ; 0040E735 EB1D
    %if ($ - %%insn_0040e735) > 2
        %error "LONG_0040E735"
    %endif
    times 2 - ($ - %%insn_0040e735) db 0
    %%insn_0040e737:
    lea eax,[esi+edx] ; 0040E737 8D0416
    %if ($ - %%insn_0040e737) > 3
        %error "LONG_0040E737"
    %endif
    times 3 - ($ - %%insn_0040e737) db 0
    %%insn_0040e73a:
    lea ebx,[edi+0xf8] ; 0040E73A 8D9FF8000000
    %if ($ - %%insn_0040e73a) > 6
        %error "LONG_0040E73A"
    %endif
    times 6 - ($ - %%insn_0040e73a) db 0
    db 0x3B, 0xC3 ; 0040E740 3BC3 | cmp eax,ebx | encoding preserved
    %%insn_0040e742:
    jnc short 0x40e74d ; 0040E742 7309
    %if ($ - %%insn_0040e742) > 2
        %error "LONG_0040E742"
    %endif
    times 2 - ($ - %%insn_0040e742) db 0
    db 0x2B, 0xCA ; 0040E744 2BCA | sub ecx,edx | encoding preserved
    %%insn_0040e746:
    mov [edi],eax ; 0040E746 8907
    %if ($ - %%insn_0040e746) > 2
        %error "LONG_0040E746"
    %endif
    times 2 - ($ - %%insn_0040e746) db 0
    %%insn_0040e748:
    mov [edi+0x4],ecx ; 0040E748 894F04
    %if ($ - %%insn_0040e748) > 3
        %error "LONG_0040E748"
    %endif
    times 3 - ($ - %%insn_0040e748) db 0
    %%insn_0040e74b:
    jmp short 0x40e7c6 ; 0040E74B EB79
    %if ($ - %%insn_0040e74b) > 2
        %error "LONG_0040E74B"
    %endif
    times 2 - ($ - %%insn_0040e74b) db 0
    %%insn_0040e74d:
    lea ecx,[edi+0x8] ; 0040E74D 8D4F08
    %if ($ - %%insn_0040e74d) > 3
        %error "LONG_0040E74D"
    %endif
    times 3 - ($ - %%insn_0040e74d) db 0
    %%insn_0040e750:
    mov [edi],ecx ; 0040E750 890F
    %if ($ - %%insn_0040e750) > 2
        %error "LONG_0040E750"
    %endif
    times 2 - ($ - %%insn_0040e750) db 0
    %%insn_0040e752:
    jmp short 0x40e7bf ; 0040E752 EB6B
    %if ($ - %%insn_0040e752) > 2
        %error "LONG_0040E752"
    %endif
    times 2 - ($ - %%insn_0040e752) db 0
    %%insn_0040e754:
    lea ebp,[edi+0x8] ; 0040E754 8D6F08
    %if ($ - %%insn_0040e754) > 3
        %error "LONG_0040E754"
    %endif
    times 3 - ($ - %%insn_0040e754) db 0
    db 0x8B, 0xF5 ; 0040E757 8BF5 | mov esi,ebp | encoding preserved
    db 0x3B, 0xF1 ; 0040E759 3BF1 | cmp esi,ecx | encoding preserved
    %%insn_0040e75b:
    jnc short 0x40e7db ; 0040E75B 737E
    %if ($ - %%insn_0040e75b) > 2
        %error "LONG_0040E75B"
    %endif
    times 2 - ($ - %%insn_0040e75b) db 0
    %%insn_0040e75d:
    lea ecx,[esi+edx] ; 0040E75D 8D0C16
    %if ($ - %%insn_0040e75d) > 3
        %error "LONG_0040E75D"
    %endif
    times 3 - ($ - %%insn_0040e75d) db 0
    %%insn_0040e760:
    lea eax,[edi+0xf8] ; 0040E760 8D87F8000000
    %if ($ - %%insn_0040e760) > 6
        %error "LONG_0040E760"
    %endif
    times 6 - ($ - %%insn_0040e760) db 0
    db 0x3B, 0xC8 ; 0040E766 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0040e768:
    jnc short 0x40e7db ; 0040E768 7371
    %if ($ - %%insn_0040e768) > 2
        %error "LONG_0040E768"
    %endif
    times 2 - ($ - %%insn_0040e768) db 0
    %%insn_0040e76a:
    mov al,[esi] ; 0040E76A 8A06
    %if ($ - %%insn_0040e76a) > 2
        %error "LONG_0040E76A"
    %endif
    times 2 - ($ - %%insn_0040e76a) db 0
    %%insn_0040e76c:
    test al,al ; 0040E76C 84C0
    %if ($ - %%insn_0040e76c) > 2
        %error "LONG_0040E76C"
    %endif
    times 2 - ($ - %%insn_0040e76c) db 0
    %%insn_0040e76e:
    jnz short 0x40e793 ; 0040E76E 7523
    %if ($ - %%insn_0040e76e) > 2
        %error "LONG_0040E76E"
    %endif
    times 2 - ($ - %%insn_0040e76e) db 0
    %%insn_0040e770:
    cmp byte [esi+0x1],0x0 ; 0040E770 807E0100
    %if ($ - %%insn_0040e770) > 4
        %error "LONG_0040E770"
    %endif
    times 4 - ($ - %%insn_0040e770) db 0
    %%insn_0040e774:
    lea eax,[esi+0x1] ; 0040E774 8D4601
    %if ($ - %%insn_0040e774) > 3
        %error "LONG_0040E774"
    %endif
    times 3 - ($ - %%insn_0040e774) db 0
    %%insn_0040e777:
    mov ecx,0x1 ; 0040E777 B901000000
    %if ($ - %%insn_0040e777) > 5
        %error "LONG_0040E777"
    %endif
    times 5 - ($ - %%insn_0040e777) db 0
    %%insn_0040e77c:
    jnz short 0x40e785 ; 0040E77C 7507
    %if ($ - %%insn_0040e77c) > 2
        %error "LONG_0040E77C"
    %endif
    times 2 - ($ - %%insn_0040e77c) db 0
    %%insn_0040e77e:
    inc eax ; 0040E77E 40
    %if ($ - %%insn_0040e77e) > 1
        %error "LONG_0040E77E"
    %endif
    times 1 - ($ - %%insn_0040e77e) db 0
    %%insn_0040e77f:
    inc ecx ; 0040E77F 41
    %if ($ - %%insn_0040e77f) > 1
        %error "LONG_0040E77F"
    %endif
    times 1 - ($ - %%insn_0040e77f) db 0
    %%insn_0040e780:
    cmp byte [eax],0x0 ; 0040E780 803800
    %if ($ - %%insn_0040e780) > 3
        %error "LONG_0040E780"
    %endif
    times 3 - ($ - %%insn_0040e780) db 0
    %%insn_0040e783:
    jz short 0x40e77e ; 0040E783 74F9
    %if ($ - %%insn_0040e783) > 2
        %error "LONG_0040E783"
    %endif
    times 2 - ($ - %%insn_0040e783) db 0
    db 0x3B, 0xCA ; 0040E785 3BCA | cmp ecx,edx | encoding preserved
    %%insn_0040e787:
    jnc short 0x40e7a7 ; 0040E787 731E
    %if ($ - %%insn_0040e787) > 2
        %error "LONG_0040E787"
    %endif
    times 2 - ($ - %%insn_0040e787) db 0
    db 0x2B, 0xD9 ; 0040E789 2BD9 | sub ebx,ecx | encoding preserved
    db 0x3B, 0xDA ; 0040E78B 3BDA | cmp ebx,edx | encoding preserved
    %%insn_0040e78d:
    jc short 0x40e7db ; 0040E78D 724C
    %if ($ - %%insn_0040e78d) > 2
        %error "LONG_0040E78D"
    %endif
    times 2 - ($ - %%insn_0040e78d) db 0
    db 0x8B, 0xF0 ; 0040E78F 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040e791:
    jmp short 0x40e79a ; 0040E791 EB07
    %if ($ - %%insn_0040e791) > 2
        %error "LONG_0040E791"
    %endif
    times 2 - ($ - %%insn_0040e791) db 0
    %%insn_0040e793:
    and eax,0xff ; 0040E793 25FF000000
    %if ($ - %%insn_0040e793) > 5
        %error "LONG_0040E793"
    %endif
    times 5 - ($ - %%insn_0040e793) db 0
    db 0x03, 0xF0 ; 0040E798 03F0 | add esi,eax | encoding preserved
    %%insn_0040e79a:
    cmp esi,[esp+0x14] ; 0040E79A 3B742414
    %if ($ - %%insn_0040e79a) > 4
        %error "LONG_0040E79A"
    %endif
    times 4 - ($ - %%insn_0040e79a) db 0
    %%insn_0040e79e:
    jc short 0x40e75d ; 0040E79E 72BD
    %if ($ - %%insn_0040e79e) > 2
        %error "LONG_0040E79E"
    %endif
    times 2 - ($ - %%insn_0040e79e) db 0
    db 0x33, 0xC0 ; 0040E7A0 33C0 | xor eax,eax | encoding preserved
    %%insn_0040e7a2:
    pop edi ; 0040E7A2 5F
    %if ($ - %%insn_0040e7a2) > 1
        %error "LONG_0040E7A2"
    %endif
    times 1 - ($ - %%insn_0040e7a2) db 0
    %%insn_0040e7a3:
    pop esi ; 0040E7A3 5E
    %if ($ - %%insn_0040e7a3) > 1
        %error "LONG_0040E7A3"
    %endif
    times 1 - ($ - %%insn_0040e7a3) db 0
    %%insn_0040e7a4:
    pop ebp ; 0040E7A4 5D
    %if ($ - %%insn_0040e7a4) > 1
        %error "LONG_0040E7A4"
    %endif
    times 1 - ($ - %%insn_0040e7a4) db 0
    %%insn_0040e7a5:
    pop ebx ; 0040E7A5 5B
    %if ($ - %%insn_0040e7a5) > 1
        %error "LONG_0040E7A5"
    %endif
    times 1 - ($ - %%insn_0040e7a5) db 0
    %%insn_0040e7a6:
    ret ; 0040E7A6 C3
    %if ($ - %%insn_0040e7a6) > 1
        %error "LONG_0040E7A6"
    %endif
    times 1 - ($ - %%insn_0040e7a6) db 0
    %%insn_0040e7a7:
    lea eax,[esi+edx] ; 0040E7A7 8D0416
    %if ($ - %%insn_0040e7a7) > 3
        %error "LONG_0040E7A7"
    %endif
    times 3 - ($ - %%insn_0040e7a7) db 0
    %%insn_0040e7aa:
    lea ebx,[edi+0xf8] ; 0040E7AA 8D9FF8000000
    %if ($ - %%insn_0040e7aa) > 6
        %error "LONG_0040E7AA"
    %endif
    times 6 - ($ - %%insn_0040e7aa) db 0
    db 0x3B, 0xC3 ; 0040E7B0 3BC3 | cmp eax,ebx | encoding preserved
    %%insn_0040e7b2:
    jnc short 0x40e7bd ; 0040E7B2 7309
    %if ($ - %%insn_0040e7b2) > 2
        %error "LONG_0040E7B2"
    %endif
    times 2 - ($ - %%insn_0040e7b2) db 0
    db 0x2B, 0xCA ; 0040E7B4 2BCA | sub ecx,edx | encoding preserved
    %%insn_0040e7b6:
    mov [edi],eax ; 0040E7B6 8907
    %if ($ - %%insn_0040e7b6) > 2
        %error "LONG_0040E7B6"
    %endif
    times 2 - ($ - %%insn_0040e7b6) db 0
    %%insn_0040e7b8:
    mov [edi+0x4],ecx ; 0040E7B8 894F04
    %if ($ - %%insn_0040e7b8) > 3
        %error "LONG_0040E7B8"
    %endif
    times 3 - ($ - %%insn_0040e7b8) db 0
    %%insn_0040e7bb:
    jmp short 0x40e7c6 ; 0040E7BB EB09
    %if ($ - %%insn_0040e7bb) > 2
        %error "LONG_0040E7BB"
    %endif
    times 2 - ($ - %%insn_0040e7bb) db 0
    %%insn_0040e7bd:
    mov [edi],ebp ; 0040E7BD 892F
    %if ($ - %%insn_0040e7bd) > 2
        %error "LONG_0040E7BD"
    %endif
    times 2 - ($ - %%insn_0040e7bd) db 0
    %%insn_0040e7bf:
    mov dword [edi+0x4],0x0 ; 0040E7BF C7470400000000
    %if ($ - %%insn_0040e7bf) > 7
        %error "LONG_0040E7BF"
    %endif
    times 7 - ($ - %%insn_0040e7bf) db 0
    %%insn_0040e7c6:
    lea eax,[edi+edi*2] ; 0040E7C6 8D047F
    %if ($ - %%insn_0040e7c6) > 3
        %error "LONG_0040E7C6"
    %endif
    times 3 - ($ - %%insn_0040e7c6) db 0
    %%insn_0040e7c9:
    mov [esi],dl ; 0040E7C9 8816
    %if ($ - %%insn_0040e7c9) > 2
        %error "LONG_0040E7C9"
    %endif
    times 2 - ($ - %%insn_0040e7c9) db 0
    %%insn_0040e7cb:
    lea edx,[eax+eax*4] ; 0040E7CB 8D1480
    %if ($ - %%insn_0040e7cb) > 3
        %error "LONG_0040E7CB"
    %endif
    times 3 - ($ - %%insn_0040e7cb) db 0
    %%insn_0040e7ce:
    lea eax,[esi+0x8] ; 0040E7CE 8D4608
    %if ($ - %%insn_0040e7ce) > 3
        %error "LONG_0040E7CE"
    %endif
    times 3 - ($ - %%insn_0040e7ce) db 0
    %%insn_0040e7d1:
    shl eax,byte 0x4 ; 0040E7D1 C1E004
    %if ($ - %%insn_0040e7d1) > 3
        %error "LONG_0040E7D1"
    %endif
    times 3 - ($ - %%insn_0040e7d1) db 0
    db 0x2B, 0xC2 ; 0040E7D4 2BC2 | sub eax,edx | encoding preserved
    %%insn_0040e7d6:
    pop edi ; 0040E7D6 5F
    %if ($ - %%insn_0040e7d6) > 1
        %error "LONG_0040E7D6"
    %endif
    times 1 - ($ - %%insn_0040e7d6) db 0
    %%insn_0040e7d7:
    pop esi ; 0040E7D7 5E
    %if ($ - %%insn_0040e7d7) > 1
        %error "LONG_0040E7D7"
    %endif
    times 1 - ($ - %%insn_0040e7d7) db 0
    %%insn_0040e7d8:
    pop ebp ; 0040E7D8 5D
    %if ($ - %%insn_0040e7d8) > 1
        %error "LONG_0040E7D8"
    %endif
    times 1 - ($ - %%insn_0040e7d8) db 0
    %%insn_0040e7d9:
    pop ebx ; 0040E7D9 5B
    %if ($ - %%insn_0040e7d9) > 1
        %error "LONG_0040E7D9"
    %endif
    times 1 - ($ - %%insn_0040e7d9) db 0
    %%insn_0040e7da:
    ret ; 0040E7DA C3
    %if ($ - %%insn_0040e7da) > 1
        %error "LONG_0040E7DA"
    %endif
    times 1 - ($ - %%insn_0040e7da) db 0
    %%insn_0040e7db:
    pop edi ; 0040E7DB 5F
    %if ($ - %%insn_0040e7db) > 1
        %error "LONG_0040E7DB"
    %endif
    times 1 - ($ - %%insn_0040e7db) db 0
    %%insn_0040e7dc:
    pop esi ; 0040E7DC 5E
    %if ($ - %%insn_0040e7dc) > 1
        %error "LONG_0040E7DC"
    %endif
    times 1 - ($ - %%insn_0040e7dc) db 0
    %%insn_0040e7dd:
    pop ebp ; 0040E7DD 5D
    %if ($ - %%insn_0040e7dd) > 1
        %error "LONG_0040E7DD"
    %endif
    times 1 - ($ - %%insn_0040e7dd) db 0
    db 0x33, 0xC0 ; 0040E7DE 33C0 | xor eax,eax | encoding preserved
    %%insn_0040e7e0:
    pop ebx ; 0040E7E0 5B
    %if ($ - %%insn_0040e7e0) > 1
        %error "LONG_0040E7E0"
    %endif
    times 1 - ($ - %%insn_0040e7e0) db 0
    %%insn_0040e7e1:
    ret ; 0040E7E1 C3
    %if ($ - %%insn_0040e7e1) > 1
        %error "LONG_0040E7E1"
    %endif
    times 1 - ($ - %%insn_0040e7e1) db 0
    %if ($ - %%fragment_start) != 370
        %error "function fragment size drift: 0040E670"
    %endif
%endmacro
