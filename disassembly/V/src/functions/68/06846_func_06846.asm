; Linear entry 06846 (1000:6846)
; Ghidra working symbol: FUN_1000_6846
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06846_part_00 0
    %%fragment_start:
func_06846:
    %%insn_06846:
    push bp ; 06846 55
    %if ($ - %%insn_06846) > 1
        %error "LONG_06846"
    %endif
    times 1 - ($ - %%insn_06846) db 0
    db 0x8B, 0xEC ; 06847 8BEC | mov bp,sp | encoding preserved
    %%insn_06849:
    sub sp,0x8 ; 06849 83EC08
    %if ($ - %%insn_06849) > 3
        %error "LONG_06849"
    %endif
    times 3 - ($ - %%insn_06849) db 0
    %%insn_0684c:
    push dx ; 0684C 52
    %if ($ - %%insn_0684c) > 1
        %error "LONG_0684C"
    %endif
    times 1 - ($ - %%insn_0684c) db 0
    %%insn_0684d:
    push ax ; 0684D 50
    %if ($ - %%insn_0684d) > 1
        %error "LONG_0684D"
    %endif
    times 1 - ($ - %%insn_0684d) db 0
    %%insn_0684e:
    push di ; 0684E 57
    %if ($ - %%insn_0684e) > 1
        %error "LONG_0684E"
    %endif
    times 1 - ($ - %%insn_0684e) db 0
    %%insn_0684f:
    push si ; 0684F 56
    %if ($ - %%insn_0684f) > 1
        %error "LONG_0684F"
    %endif
    times 1 - ($ - %%insn_0684f) db 0
    %%insn_06850:
    mov bx,0xe484 ; 06850 BB84E4
    %if ($ - %%insn_06850) > 3
        %error "LONG_06850"
    %endif
    times 3 - ($ - %%insn_06850) db 0
    %%insn_06853:
    call 0x5f6c ; 06853 E816F7
    %if ($ - %%insn_06853) > 3
        %error "LONG_06853"
    %endif
    times 3 - ($ - %%insn_06853) db 0
    %%insn_06856:
    mov al,[0xe4b5] ; 06856 A0B5E4
    %if ($ - %%insn_06856) > 3
        %error "LONG_06856"
    %endif
    times 3 - ($ - %%insn_06856) db 0
    %%insn_06859:
    cbw ; 06859 98
    %if ($ - %%insn_06859) > 1
        %error "LONG_06859"
    %endif
    times 1 - ($ - %%insn_06859) db 0
    db 0x2D, 0x31, 0x00 ; 0685A 2D3100 | sub ax,0x31 | encoding preserved
    %%insn_0685d:
    neg ax ; 0685D F7D8
    %if ($ - %%insn_0685d) > 2
        %error "LONG_0685D"
    %endif
    times 2 - ($ - %%insn_0685d) db 0
    db 0x8B, 0xC8 ; 0685F 8BC8 | mov cx,ax | encoding preserved
    %%insn_06861:
    mov al,[0xe4b6] ; 06861 A0B6E4
    %if ($ - %%insn_06861) > 3
        %error "LONG_06861"
    %endif
    times 3 - ($ - %%insn_06861) db 0
    %%insn_06864:
    cbw ; 06864 98
    %if ($ - %%insn_06864) > 1
        %error "LONG_06864"
    %endif
    times 1 - ($ - %%insn_06864) db 0
    db 0x2B, 0xC8 ; 06865 2BC8 | sub cx,ax | encoding preserved
    %%insn_06867:
    mov al,[0xe4b7] ; 06867 A0B7E4
    %if ($ - %%insn_06867) > 3
        %error "LONG_06867"
    %endif
    times 3 - ($ - %%insn_06867) db 0
    %%insn_0686a:
    cbw ; 0686A 98
    %if ($ - %%insn_0686a) > 1
        %error "LONG_0686A"
    %endif
    times 1 - ($ - %%insn_0686a) db 0
    db 0x2B, 0xC8 ; 0686B 2BC8 | sub cx,ax | encoding preserved
    %%insn_0686d:
    mov al,[0xe4b8] ; 0686D A0B8E4
    %if ($ - %%insn_0686d) > 3
        %error "LONG_0686D"
    %endif
    times 3 - ($ - %%insn_0686d) db 0
    %%insn_06870:
    cbw ; 06870 98
    %if ($ - %%insn_06870) > 1
        %error "LONG_06870"
    %endif
    times 1 - ($ - %%insn_06870) db 0
    db 0x2B, 0xC8 ; 06871 2BC8 | sub cx,ax | encoding preserved
    %%insn_06873:
    mov al,[bp-0xc] ; 06873 8A46F4
    %if ($ - %%insn_06873) > 3
        %error "LONG_06873"
    %endif
    times 3 - ($ - %%insn_06873) db 0
    %%insn_06876:
    cbw ; 06876 98
    %if ($ - %%insn_06876) > 1
        %error "LONG_06876"
    %endif
    times 1 - ($ - %%insn_06876) db 0
    db 0x8B, 0xD8 ; 06877 8BD8 | mov bx,ax | encoding preserved
    %%insn_06879:
    add bx,0xe4b4 ; 06879 81C3B4E4
    %if ($ - %%insn_06879) > 4
        %error "LONG_06879"
    %endif
    times 4 - ($ - %%insn_06879) db 0
    %%insn_0687d:
    mov [bp-0x8],bx ; 0687D 895EF8
    %if ($ - %%insn_0687d) > 3
        %error "LONG_0687D"
    %endif
    times 3 - ($ - %%insn_0687d) db 0
    %%insn_06880:
    mov al,[bx] ; 06880 8A07
    %if ($ - %%insn_06880) > 2
        %error "LONG_06880"
    %endif
    times 2 - ($ - %%insn_06880) db 0
    %%insn_06882:
    cbw ; 06882 98
    %if ($ - %%insn_06882) > 1
        %error "LONG_06882"
    %endif
    times 1 - ($ - %%insn_06882) db 0
    db 0x3B, 0xC8 ; 06883 3BC8 | cmp cx,ax | encoding preserved
    %%insn_06885:
    jng short 0x6891 ; 06885 7E0A
    %if ($ - %%insn_06885) > 2
        %error "LONG_06885"
    %endif
    times 2 - ($ - %%insn_06885) db 0
    %%insn_06887:
    call 0x5fb6 ; 06887 E82CF7
    %if ($ - %%insn_06887) > 3
        %error "LONG_06887"
    %endif
    times 3 - ($ - %%insn_06887) db 0
    %%insn_0688a:
    mov word [bp-0x4],0x5fe4 ; 0688A C746FCE45F
    %if ($ - %%insn_0688a) > 5
        %error "LONG_0688A"
    %endif
    times 5 - ($ - %%insn_0688a) db 0
    %%insn_0688f:
    jmp short 0x6899 ; 0688F EB08
    %if ($ - %%insn_0688f) > 2
        %error "LONG_0688F"
    %endif
    times 2 - ($ - %%insn_0688f) db 0
    %%insn_06891:
    call 0x5fd8 ; 06891 E844F7
    %if ($ - %%insn_06891) > 3
        %error "LONG_06891"
    %endif
    times 3 - ($ - %%insn_06891) db 0
    %%insn_06894:
    mov word [bp-0x4],0x61d0 ; 06894 C746FCD061
    %if ($ - %%insn_06894) > 5
        %error "LONG_06894"
    %endif
    times 5 - ($ - %%insn_06894) db 0
    %%insn_06899:
    mov al,[bp-0xc] ; 06899 8A46F4
    %if ($ - %%insn_06899) > 3
        %error "LONG_06899"
    %endif
    times 3 - ($ - %%insn_06899) db 0
    %%insn_0689c:
    call word near [bp-0x4] ; 0689C FF56FC
    %if ($ - %%insn_0689c) > 3
        %error "LONG_0689C"
    %endif
    times 3 - ($ - %%insn_0689c) db 0
    db 0x0B, 0xC0 ; 0689F 0BC0 | or ax,ax | encoding preserved
    %%insn_068a1:
    jnz short 0x68a6 ; 068A1 7503
    %if ($ - %%insn_068a1) > 2
        %error "LONG_068A1"
    %endif
    times 2 - ($ - %%insn_068a1) db 0
    %%insn_068a3:
    jmp 0x6a66 ; 068A3 E9C001
    %if ($ - %%insn_068a3) > 3
        %error "LONG_068A3"
    %endif
    times 3 - ($ - %%insn_068a3) db 0
    %%insn_068a6:
    mov al,[0xe4b5] ; 068A6 A0B5E4
    %if ($ - %%insn_068a6) > 3
        %error "LONG_068A6"
    %endif
    times 3 - ($ - %%insn_068a6) db 0
    %%insn_068a9:
    cbw ; 068A9 98
    %if ($ - %%insn_068a9) > 1
        %error "LONG_068A9"
    %endif
    times 1 - ($ - %%insn_068a9) db 0
    %%insn_068aa:
    mov bx,[bp-0x8] ; 068AA 8B5EF8
    %if ($ - %%insn_068aa) > 3
        %error "LONG_068AA"
    %endif
    times 3 - ($ - %%insn_068aa) db 0
    db 0x8B, 0xC8 ; 068AD 8BC8 | mov cx,ax | encoding preserved
    %%insn_068af:
    mov al,[bx] ; 068AF 8A07
    %if ($ - %%insn_068af) > 2
        %error "LONG_068AF"
    %endif
    times 2 - ($ - %%insn_068af) db 0
    %%insn_068b1:
    cbw ; 068B1 98
    %if ($ - %%insn_068b1) > 1
        %error "LONG_068B1"
    %endif
    times 1 - ($ - %%insn_068b1) db 0
    db 0x2B, 0xC1 ; 068B2 2BC1 | sub ax,cx | encoding preserved
    db 0x8B, 0xC8 ; 068B4 8BC8 | mov cx,ax | encoding preserved
    %%insn_068b6:
    mov al,[0xe4b6] ; 068B6 A0B6E4
    %if ($ - %%insn_068b6) > 3
        %error "LONG_068B6"
    %endif
    times 3 - ($ - %%insn_068b6) db 0
    %%insn_068b9:
    cbw ; 068B9 98
    %if ($ - %%insn_068b9) > 1
        %error "LONG_068B9"
    %endif
    times 1 - ($ - %%insn_068b9) db 0
    db 0x2B, 0xC8 ; 068BA 2BC8 | sub cx,ax | encoding preserved
    %%insn_068bc:
    mov al,[0xe4b7] ; 068BC A0B7E4
    %if ($ - %%insn_068bc) > 3
        %error "LONG_068BC"
    %endif
    times 3 - ($ - %%insn_068bc) db 0
    %%insn_068bf:
    cbw ; 068BF 98
    %if ($ - %%insn_068bf) > 1
        %error "LONG_068BF"
    %endif
    times 1 - ($ - %%insn_068bf) db 0
    db 0x2B, 0xC8 ; 068C0 2BC8 | sub cx,ax | encoding preserved
    %%insn_068c2:
    mov al,[0xe4b8] ; 068C2 A0B8E4
    %if ($ - %%insn_068c2) > 3
        %error "LONG_068C2"
    %endif
    times 3 - ($ - %%insn_068c2) db 0
    %%insn_068c5:
    cbw ; 068C5 98
    %if ($ - %%insn_068c5) > 1
        %error "LONG_068C5"
    %endif
    times 1 - ($ - %%insn_068c5) db 0
    db 0x3B, 0xC8 ; 068C6 3BC8 | cmp cx,ax | encoding preserved
    %%insn_068c8:
    jnz short 0x68cf ; 068C8 7505
    %if ($ - %%insn_068c8) > 2
        %error "LONG_068C8"
    %endif
    times 2 - ($ - %%insn_068c8) db 0
    %%insn_068ca:
    mov word [bp-0xa],0x0 ; 068CA C746F60000
    %if ($ - %%insn_068ca) > 5
        %error "LONG_068CA"
    %endif
    times 5 - ($ - %%insn_068ca) db 0
    %%insn_068cf:
    mov byte [0xe8fc],0x0 ; 068CF C606FCE800
    %if ($ - %%insn_068cf) > 5
        %error "LONG_068CF"
    %endif
    times 5 - ($ - %%insn_068cf) db 0
    %%insn_068d4:
    cmp byte [0xe4bb],0x1 ; 068D4 803EBBE401
    %if ($ - %%insn_068d4) > 5
        %error "LONG_068D4"
    %endif
    times 5 - ($ - %%insn_068d4) db 0
    %%insn_068d9:
    jnz short 0x68e0 ; 068D9 7505
    %if ($ - %%insn_068d9) > 2
        %error "LONG_068D9"
    %endif
    times 2 - ($ - %%insn_068d9) db 0
    %%insn_068db:
    mov byte [0xe8fc],0x1 ; 068DB C606FCE801
    %if ($ - %%insn_068db) > 5
        %error "LONG_068DB"
    %endif
    times 5 - ($ - %%insn_068db) db 0
    %%insn_068e0:
    call 0x641c ; 068E0 E839FB
    %if ($ - %%insn_068e0) > 3
        %error "LONG_068E0"
    %endif
    times 3 - ($ - %%insn_068e0) db 0
    %%insn_068e3:
    cmp word [bp-0xa],0x0 ; 068E3 837EF600
    %if ($ - %%insn_068e3) > 4
        %error "LONG_068E3"
    %endif
    times 4 - ($ - %%insn_068e3) db 0
    %%insn_068e7:
    jz short 0x6953 ; 068E7 746A
    %if ($ - %%insn_068e7) > 2
        %error "LONG_068E7"
    %endif
    times 2 - ($ - %%insn_068e7) db 0
    %%insn_068e9:
    mov al,[bp-0xc] ; 068E9 8A46F4
    %if ($ - %%insn_068e9) > 3
        %error "LONG_068E9"
    %endif
    times 3 - ($ - %%insn_068e9) db 0
    %%insn_068ec:
    call 0x6290 ; 068EC E8A1F9
    %if ($ - %%insn_068ec) > 3
        %error "LONG_068EC"
    %endif
    times 3 - ($ - %%insn_068ec) db 0
    %%insn_068ef:
    mov word [0xe905],0x0 ; 068EF C70605E90000
    %if ($ - %%insn_068ef) > 6
        %error "LONG_068EF"
    %endif
    times 6 - ($ - %%insn_068ef) db 0
    %%insn_068f5:
    cmp word [bp-0x4],0x61d0 ; 068F5 817EFCD061
    %if ($ - %%insn_068f5) > 5
        %error "LONG_068F5"
    %endif
    times 5 - ($ - %%insn_068f5) db 0
    %%insn_068fa:
    jnz short 0x690d ; 068FA 7511
    %if ($ - %%insn_068fa) > 2
        %error "LONG_068FA"
    %endif
    times 2 - ($ - %%insn_068fa) db 0
    %%insn_068fc:
    mov al,0x81 ; 068FC B081
    %if ($ - %%insn_068fc) > 2
        %error "LONG_068FC"
    %endif
    times 2 - ($ - %%insn_068fc) db 0
    %%insn_068fe:
    push ax ; 068FE 50
    %if ($ - %%insn_068fe) > 1
        %error "LONG_068FE"
    %endif
    times 1 - ($ - %%insn_068fe) db 0
    %%insn_068ff:
    mov al,[bp-0xc] ; 068FF 8A46F4
    %if ($ - %%insn_068ff) > 3
        %error "LONG_068FF"
    %endif
    times 3 - ($ - %%insn_068ff) db 0
    db 0x8A, 0xD0 ; 06902 8AD0 | mov dl,al | encoding preserved
    %%insn_06904:
    mov bx,[bp-0xa] ; 06904 8B5EF6
    %if ($ - %%insn_06904) > 3
        %error "LONG_06904"
    %endif
    times 3 - ($ - %%insn_06904) db 0
    %%insn_06907:
    call 0x656c ; 06907 E862FC
    %if ($ - %%insn_06907) > 3
        %error "LONG_06907"
    %endif
    times 3 - ($ - %%insn_06907) db 0
    %%insn_0690a:
    jmp short 0x695b ; 0690A EB4F
    %if ($ - %%insn_0690a) > 2
        %error "LONG_0690A"
    %endif
    times 2 - ($ - %%insn_0690a) db 0
    %if ($ - %%fragment_start) != 198
        %error "SIZE_06846"
    %endif
%endmacro

%macro emit_func_06846_part_01 0
    %%fragment_start:
    %%insn_0690d:
    mov bx,[0xe903] ; 0690D 8B1E03E9
    %if ($ - %%insn_0690d) > 4
        %error "LONG_0690D"
    %endif
    times 4 - ($ - %%insn_0690d) db 0
    %%insn_06911:
    mov cx,0x1c ; 06911 B91C00
    %if ($ - %%insn_06911) > 3
        %error "LONG_06911"
    %endif
    times 3 - ($ - %%insn_06911) db 0
    %%insn_06914:
    lea di,[bx-0x16dd] ; 06914 8DBF23E9
    %if ($ - %%insn_06914) > 4
        %error "LONG_06914"
    %endif
    times 4 - ($ - %%insn_06914) db 0
    %%insn_06918:
    mov si,0xeb5d ; 06918 BE5DEB
    %if ($ - %%insn_06918) > 3
        %error "LONG_06918"
    %endif
    times 3 - ($ - %%insn_06918) db 0
    %%insn_0691b:
    push ds ; 0691B 1E
    %if ($ - %%insn_0691b) > 1
        %error "LONG_0691B"
    %endif
    times 1 - ($ - %%insn_0691b) db 0
    %%insn_0691c:
    pop es ; 0691C 07
    %if ($ - %%insn_0691c) > 1
        %error "LONG_0691C"
    %endif
    times 1 - ($ - %%insn_0691c) db 0
    %%insn_0691d:
    rep movsw ; 0691D F3A5
    %if ($ - %%insn_0691d) > 2
        %error "LONG_0691D"
    %endif
    times 2 - ($ - %%insn_0691d) db 0
    %%insn_0691f:
    movsb ; 0691F A4
    %if ($ - %%insn_0691f) > 1
        %error "LONG_0691F"
    %endif
    times 1 - ($ - %%insn_0691f) db 0
    %%insn_06920:
    add word [0xe903],0x39 ; 06920 830603E939
    %if ($ - %%insn_06920) > 5
        %error "LONG_06920"
    %endif
    times 5 - ($ - %%insn_06920) db 0
    %%insn_06925:
    mov al,0x81 ; 06925 B081
    %if ($ - %%insn_06925) > 2
        %error "LONG_06925"
    %endif
    times 2 - ($ - %%insn_06925) db 0
    %%insn_06927:
    push ax ; 06927 50
    %if ($ - %%insn_06927) > 1
        %error "LONG_06927"
    %endif
    times 1 - ($ - %%insn_06927) db 0
    %%insn_06928:
    mov al,[bp-0xc] ; 06928 8A46F4
    %if ($ - %%insn_06928) > 3
        %error "LONG_06928"
    %endif
    times 3 - ($ - %%insn_06928) db 0
    db 0x8A, 0xD0 ; 0692B 8AD0 | mov dl,al | encoding preserved
    %%insn_0692d:
    mov bx,[bp-0xa] ; 0692D 8B5EF6
    %if ($ - %%insn_0692d) > 3
        %error "LONG_0692D"
    %endif
    times 3 - ($ - %%insn_0692d) db 0
    %%insn_06930:
    call 0x656c ; 06930 E839FC
    %if ($ - %%insn_06930) > 3
        %error "LONG_06930"
    %endif
    times 3 - ($ - %%insn_06930) db 0
    %%insn_06933:
    mov [bp-0x2],al ; 06933 8846FE
    %if ($ - %%insn_06933) > 3
        %error "LONG_06933"
    %endif
    times 3 - ($ - %%insn_06933) db 0
    %%insn_06936:
    sub word [0xe903],0x39 ; 06936 832E03E939
    %if ($ - %%insn_06936) > 5
        %error "LONG_06936"
    %endif
    times 5 - ($ - %%insn_06936) db 0
    %%insn_0693b:
    mov ax,0xeb5d ; 0693B B85DEB
    %if ($ - %%insn_0693b) > 3
        %error "LONG_0693B"
    %endif
    times 3 - ($ - %%insn_0693b) db 0
    %%insn_0693e:
    mov bx,[0xe903] ; 0693E 8B1E03E9
    %if ($ - %%insn_0693e) > 4
        %error "LONG_0693E"
    %endif
    times 4 - ($ - %%insn_0693e) db 0
    %%insn_06942:
    mov cx,0x1c ; 06942 B91C00
    %if ($ - %%insn_06942) > 3
        %error "LONG_06942"
    %endif
    times 3 - ($ - %%insn_06942) db 0
    db 0x8B, 0xF8 ; 06945 8BF8 | mov di,ax | encoding preserved
    %%insn_06947:
    lea si,[bx-0x16dd] ; 06947 8DB723E9
    %if ($ - %%insn_06947) > 4
        %error "LONG_06947"
    %endif
    times 4 - ($ - %%insn_06947) db 0
    %%insn_0694b:
    push ds ; 0694B 1E
    %if ($ - %%insn_0694b) > 1
        %error "LONG_0694B"
    %endif
    times 1 - ($ - %%insn_0694b) db 0
    %%insn_0694c:
    pop es ; 0694C 07
    %if ($ - %%insn_0694c) > 1
        %error "LONG_0694C"
    %endif
    times 1 - ($ - %%insn_0694c) db 0
    %%insn_0694d:
    rep movsw ; 0694D F3A5
    %if ($ - %%insn_0694d) > 2
        %error "LONG_0694D"
    %endif
    times 2 - ($ - %%insn_0694d) db 0
    %%insn_0694f:
    movsb ; 0694F A4
    %if ($ - %%insn_0694f) > 1
        %error "LONG_0694F"
    %endif
    times 1 - ($ - %%insn_0694f) db 0
    %%insn_06950:
    jmp short 0x695e ; 06950 EB0C
    %if ($ - %%insn_06950) > 2
        %error "LONG_06950"
    %endif
    times 2 - ($ - %%insn_06950) db 0
    %if ($ - %%fragment_start) != 69
        %error "SIZE_0690D"
    %endif
%endmacro

%macro emit_func_06846_part_02 0
    %%fragment_start:
    %%insn_06953:
    mov al,[bp-0xc] ; 06953 8A46F4
    %if ($ - %%insn_06953) > 3
        %error "LONG_06953"
    %endif
    times 3 - ($ - %%insn_06953) db 0
    db 0x8A, 0xD0 ; 06956 8AD0 | mov dl,al | encoding preserved
    %%insn_06958:
    call 0x62ea ; 06958 E88FF9
    %if ($ - %%insn_06958) > 3
        %error "LONG_06958"
    %endif
    times 3 - ($ - %%insn_06958) db 0
    %%insn_0695b:
    mov [bp-0x2],al ; 0695B 8846FE
    %if ($ - %%insn_0695b) > 3
        %error "LONG_0695B"
    %endif
    times 3 - ($ - %%insn_0695b) db 0
    %%insn_0695e:
    mov bx,[bp-0x8] ; 0695E 8B5EF8
    %if ($ - %%insn_0695e) > 3
        %error "LONG_0695E"
    %endif
    times 3 - ($ - %%insn_0695e) db 0
    %%insn_06961:
    mov al,[bx] ; 06961 8A07
    %if ($ - %%insn_06961) > 2
        %error "LONG_06961"
    %endif
    times 2 - ($ - %%insn_06961) db 0
    %%insn_06963:
    shl al,1 ; 06963 D0E0
    %if ($ - %%insn_06963) > 2
        %error "LONG_06963"
    %endif
    times 2 - ($ - %%insn_06963) db 0
    %%insn_06965:
    sub al,[0xe4b5] ; 06965 2A06B5E4
    %if ($ - %%insn_06965) > 4
        %error "LONG_06965"
    %endif
    times 4 - ($ - %%insn_06965) db 0
    %%insn_06969:
    sub al,[0xe4b6] ; 06969 2A06B6E4
    %if ($ - %%insn_06969) > 4
        %error "LONG_06969"
    %endif
    times 4 - ($ - %%insn_06969) db 0
    %%insn_0696d:
    sub al,[0xe4b7] ; 0696D 2A06B7E4
    %if ($ - %%insn_0696d) > 4
        %error "LONG_0696D"
    %endif
    times 4 - ($ - %%insn_0696d) db 0
    %%insn_06971:
    sub al,[0xe4b8] ; 06971 2A06B8E4
    %if ($ - %%insn_06971) > 4
        %error "LONG_06971"
    %endif
    times 4 - ($ - %%insn_06971) db 0
    %%insn_06975:
    shl al,1 ; 06975 D0E0
    %if ($ - %%insn_06975) > 2
        %error "LONG_06975"
    %endif
    times 2 - ($ - %%insn_06975) db 0
    %%insn_06977:
    mov [bp-0x5],al ; 06977 8846FB
    %if ($ - %%insn_06977) > 3
        %error "LONG_06977"
    %endif
    times 3 - ($ - %%insn_06977) db 0
    %%insn_0697a:
    mov al,[bp-0xc] ; 0697A 8A46F4
    %if ($ - %%insn_0697a) > 3
        %error "LONG_0697A"
    %endif
    times 3 - ($ - %%insn_0697a) db 0
    %%insn_0697d:
    call word near [bp-0x4] ; 0697D FF56FC
    %if ($ - %%insn_0697d) > 3
        %error "LONG_0697D"
    %endif
    times 3 - ($ - %%insn_0697d) db 0
    db 0x0B, 0xC0 ; 06980 0BC0 | or ax,ax | encoding preserved
    %%insn_06982:
    jnz short 0x6987 ; 06982 7503
    %if ($ - %%insn_06982) > 2
        %error "LONG_06982"
    %endif
    times 2 - ($ - %%insn_06982) db 0
    %%insn_06984:
    jmp 0x6a5d ; 06984 E9D600
    %if ($ - %%insn_06984) > 3
        %error "LONG_06984"
    %endif
    times 3 - ($ - %%insn_06984) db 0
    %%insn_06987:
    cmp byte [0xe8fb],0x0 ; 06987 803EFBE800
    %if ($ - %%insn_06987) > 5
        %error "LONG_06987"
    %endif
    times 5 - ($ - %%insn_06987) db 0
    %%insn_0698c:
    jz short 0x6991 ; 0698C 7403
    %if ($ - %%insn_0698c) > 2
        %error "LONG_0698C"
    %endif
    times 2 - ($ - %%insn_0698c) db 0
    %%insn_0698e:
    jmp 0x6a5d ; 0698E E9CC00
    %if ($ - %%insn_0698e) > 3
        %error "LONG_0698E"
    %endif
    times 3 - ($ - %%insn_0698e) db 0
    %%insn_06991:
    mov byte [0xe8fc],0x0 ; 06991 C606FCE800
    %if ($ - %%insn_06991) > 5
        %error "LONG_06991"
    %endif
    times 5 - ($ - %%insn_06991) db 0
    %%insn_06996:
    cmp byte [0xe4bb],0x2 ; 06996 803EBBE402
    %if ($ - %%insn_06996) > 5
        %error "LONG_06996"
    %endif
    times 5 - ($ - %%insn_06996) db 0
    %%insn_0699b:
    jnz short 0x69ad ; 0699B 7510
    %if ($ - %%insn_0699b) > 2
        %error "LONG_0699B"
    %endif
    times 2 - ($ - %%insn_0699b) db 0
    %%insn_0699d:
    mov al,[bp-0xc] ; 0699D 8A46F4
    %if ($ - %%insn_0699d) > 3
        %error "LONG_0699D"
    %endif
    times 3 - ($ - %%insn_0699d) db 0
    db 0x8A, 0xD0 ; 069A0 8AD0 | mov dl,al | encoding preserved
    %%insn_069a2:
    call 0x62ea ; 069A2 E845F9
    %if ($ - %%insn_069a2) > 3
        %error "LONG_069A2"
    %endif
    times 3 - ($ - %%insn_069a2) db 0
    %%insn_069a5:
    cmp al,[bp-0x5] ; 069A5 3A46FB
    %if ($ - %%insn_069a5) > 3
        %error "LONG_069A5"
    %endif
    times 3 - ($ - %%insn_069a5) db 0
    %%insn_069a8:
    jnz short 0x69ad ; 069A8 7503
    %if ($ - %%insn_069a8) > 2
        %error "LONG_069A8"
    %endif
    times 2 - ($ - %%insn_069a8) db 0
    %%insn_069aa:
    jmp 0x6a50 ; 069AA E9A300
    %if ($ - %%insn_069aa) > 3
        %error "LONG_069AA"
    %endif
    times 3 - ($ - %%insn_069aa) db 0
    %%insn_069ad:
    cmp byte [0xe4bb],0x1 ; 069AD 803EBBE401
    %if ($ - %%insn_069ad) > 5
        %error "LONG_069AD"
    %endif
    times 5 - ($ - %%insn_069ad) db 0
    %%insn_069b2:
    jnz short 0x69b9 ; 069B2 7505
    %if ($ - %%insn_069b2) > 2
        %error "LONG_069B2"
    %endif
    times 2 - ($ - %%insn_069b2) db 0
    %%insn_069b4:
    mov byte [0xe8fc],0x1 ; 069B4 C606FCE801
    %if ($ - %%insn_069b4) > 5
        %error "LONG_069B4"
    %endif
    times 5 - ($ - %%insn_069b4) db 0
    %%insn_069b9:
    cmp word [bp-0xa],0x0 ; 069B9 837EF600
    %if ($ - %%insn_069b9) > 4
        %error "LONG_069B9"
    %endif
    times 4 - ($ - %%insn_069b9) db 0
    %%insn_069bd:
    jz short 0x6a29 ; 069BD 746A
    %if ($ - %%insn_069bd) > 2
        %error "LONG_069BD"
    %endif
    times 2 - ($ - %%insn_069bd) db 0
    %%insn_069bf:
    mov al,[bp-0xc] ; 069BF 8A46F4
    %if ($ - %%insn_069bf) > 3
        %error "LONG_069BF"
    %endif
    times 3 - ($ - %%insn_069bf) db 0
    %%insn_069c2:
    call 0x6290 ; 069C2 E8CBF8
    %if ($ - %%insn_069c2) > 3
        %error "LONG_069C2"
    %endif
    times 3 - ($ - %%insn_069c2) db 0
    %%insn_069c5:
    mov word [0xe905],0x0 ; 069C5 C70605E90000
    %if ($ - %%insn_069c5) > 6
        %error "LONG_069C5"
    %endif
    times 6 - ($ - %%insn_069c5) db 0
    %%insn_069cb:
    cmp word [bp-0x4],0x61d0 ; 069CB 817EFCD061
    %if ($ - %%insn_069cb) > 5
        %error "LONG_069CB"
    %endif
    times 5 - ($ - %%insn_069cb) db 0
    %%insn_069d0:
    jnz short 0x69e3 ; 069D0 7511
    %if ($ - %%insn_069d0) > 2
        %error "LONG_069D0"
    %endif
    times 2 - ($ - %%insn_069d0) db 0
    %%insn_069d2:
    mov al,[bp-0x2] ; 069D2 8A46FE
    %if ($ - %%insn_069d2) > 3
        %error "LONG_069D2"
    %endif
    times 3 - ($ - %%insn_069d2) db 0
    %%insn_069d5:
    push ax ; 069D5 50
    %if ($ - %%insn_069d5) > 1
        %error "LONG_069D5"
    %endif
    times 1 - ($ - %%insn_069d5) db 0
    %%insn_069d6:
    mov al,[bp-0xc] ; 069D6 8A46F4
    %if ($ - %%insn_069d6) > 3
        %error "LONG_069D6"
    %endif
    times 3 - ($ - %%insn_069d6) db 0
    db 0x8A, 0xD0 ; 069D9 8AD0 | mov dl,al | encoding preserved
    %%insn_069db:
    mov bx,[bp-0xa] ; 069DB 8B5EF6
    %if ($ - %%insn_069db) > 3
        %error "LONG_069DB"
    %endif
    times 3 - ($ - %%insn_069db) db 0
    %%insn_069de:
    call 0x656c ; 069DE E88BFB
    %if ($ - %%insn_069de) > 3
        %error "LONG_069DE"
    %endif
    times 3 - ($ - %%insn_069de) db 0
    %%insn_069e1:
    jmp short 0x6a31 ; 069E1 EB4E
    %if ($ - %%insn_069e1) > 2
        %error "LONG_069E1"
    %endif
    times 2 - ($ - %%insn_069e1) db 0
    %%insn_069e3:
    mov bx,[0xe903] ; 069E3 8B1E03E9
    %if ($ - %%insn_069e3) > 4
        %error "LONG_069E3"
    %endif
    times 4 - ($ - %%insn_069e3) db 0
    %%insn_069e7:
    mov cx,0x1c ; 069E7 B91C00
    %if ($ - %%insn_069e7) > 3
        %error "LONG_069E7"
    %endif
    times 3 - ($ - %%insn_069e7) db 0
    %%insn_069ea:
    lea di,[bx-0x16dd] ; 069EA 8DBF23E9
    %if ($ - %%insn_069ea) > 4
        %error "LONG_069EA"
    %endif
    times 4 - ($ - %%insn_069ea) db 0
    %%insn_069ee:
    mov si,0xeb5d ; 069EE BE5DEB
    %if ($ - %%insn_069ee) > 3
        %error "LONG_069EE"
    %endif
    times 3 - ($ - %%insn_069ee) db 0
    %%insn_069f1:
    push ds ; 069F1 1E
    %if ($ - %%insn_069f1) > 1
        %error "LONG_069F1"
    %endif
    times 1 - ($ - %%insn_069f1) db 0
    %%insn_069f2:
    pop es ; 069F2 07
    %if ($ - %%insn_069f2) > 1
        %error "LONG_069F2"
    %endif
    times 1 - ($ - %%insn_069f2) db 0
    %%insn_069f3:
    rep movsw ; 069F3 F3A5
    %if ($ - %%insn_069f3) > 2
        %error "LONG_069F3"
    %endif
    times 2 - ($ - %%insn_069f3) db 0
    %%insn_069f5:
    movsb ; 069F5 A4
    %if ($ - %%insn_069f5) > 1
        %error "LONG_069F5"
    %endif
    times 1 - ($ - %%insn_069f5) db 0
    %%insn_069f6:
    add word [0xe903],0x39 ; 069F6 830603E939
    %if ($ - %%insn_069f6) > 5
        %error "LONG_069F6"
    %endif
    times 5 - ($ - %%insn_069f6) db 0
    %%insn_069fb:
    mov al,[bp-0x2] ; 069FB 8A46FE
    %if ($ - %%insn_069fb) > 3
        %error "LONG_069FB"
    %endif
    times 3 - ($ - %%insn_069fb) db 0
    %%insn_069fe:
    push ax ; 069FE 50
    %if ($ - %%insn_069fe) > 1
        %error "LONG_069FE"
    %endif
    times 1 - ($ - %%insn_069fe) db 0
    %%insn_069ff:
    mov al,[bp-0xc] ; 069FF 8A46F4
    %if ($ - %%insn_069ff) > 3
        %error "LONG_069FF"
    %endif
    times 3 - ($ - %%insn_069ff) db 0
    db 0x8A, 0xD0 ; 06A02 8AD0 | mov dl,al | encoding preserved
    %%insn_06a04:
    mov bx,[bp-0xa] ; 06A04 8B5EF6
    %if ($ - %%insn_06a04) > 3
        %error "LONG_06A04"
    %endif
    times 3 - ($ - %%insn_06a04) db 0
    %%insn_06a07:
    call 0x656c ; 06A07 E862FB
    %if ($ - %%insn_06a07) > 3
        %error "LONG_06A07"
    %endif
    times 3 - ($ - %%insn_06a07) db 0
    %%insn_06a0a:
    mov [bp-0x1],al ; 06A0A 8846FF
    %if ($ - %%insn_06a0a) > 3
        %error "LONG_06A0A"
    %endif
    times 3 - ($ - %%insn_06a0a) db 0
    %%insn_06a0d:
    sub word [0xe903],0x39 ; 06A0D 832E03E939
    %if ($ - %%insn_06a0d) > 5
        %error "LONG_06A0D"
    %endif
    times 5 - ($ - %%insn_06a0d) db 0
    %%insn_06a12:
    mov ax,0xeb5d ; 06A12 B85DEB
    %if ($ - %%insn_06a12) > 3
        %error "LONG_06A12"
    %endif
    times 3 - ($ - %%insn_06a12) db 0
    %%insn_06a15:
    mov bx,[0xe903] ; 06A15 8B1E03E9
    %if ($ - %%insn_06a15) > 4
        %error "LONG_06A15"
    %endif
    times 4 - ($ - %%insn_06a15) db 0
    %%insn_06a19:
    mov cx,0x1c ; 06A19 B91C00
    %if ($ - %%insn_06a19) > 3
        %error "LONG_06A19"
    %endif
    times 3 - ($ - %%insn_06a19) db 0
    db 0x8B, 0xF8 ; 06A1C 8BF8 | mov di,ax | encoding preserved
    %%insn_06a1e:
    lea si,[bx-0x16dd] ; 06A1E 8DB723E9
    %if ($ - %%insn_06a1e) > 4
        %error "LONG_06A1E"
    %endif
    times 4 - ($ - %%insn_06a1e) db 0
    %%insn_06a22:
    push ds ; 06A22 1E
    %if ($ - %%insn_06a22) > 1
        %error "LONG_06A22"
    %endif
    times 1 - ($ - %%insn_06a22) db 0
    %%insn_06a23:
    pop es ; 06A23 07
    %if ($ - %%insn_06a23) > 1
        %error "LONG_06A23"
    %endif
    times 1 - ($ - %%insn_06a23) db 0
    %%insn_06a24:
    rep movsw ; 06A24 F3A5
    %if ($ - %%insn_06a24) > 2
        %error "LONG_06A24"
    %endif
    times 2 - ($ - %%insn_06a24) db 0
    %%insn_06a26:
    movsb ; 06A26 A4
    %if ($ - %%insn_06a26) > 1
        %error "LONG_06A26"
    %endif
    times 1 - ($ - %%insn_06a26) db 0
    %%insn_06a27:
    jmp short 0x6a34 ; 06A27 EB0B
    %if ($ - %%insn_06a27) > 2
        %error "LONG_06A27"
    %endif
    times 2 - ($ - %%insn_06a27) db 0
    %%insn_06a29:
    mov al,[bp-0xc] ; 06A29 8A46F4
    %if ($ - %%insn_06a29) > 3
        %error "LONG_06A29"
    %endif
    times 3 - ($ - %%insn_06a29) db 0
    db 0x8A, 0xD0 ; 06A2C 8AD0 | mov dl,al | encoding preserved
    %%insn_06a2e:
    call 0x62ea ; 06A2E E8B9F8
    %if ($ - %%insn_06a2e) > 3
        %error "LONG_06A2E"
    %endif
    times 3 - ($ - %%insn_06a2e) db 0
    %%insn_06a31:
    mov [bp-0x1],al ; 06A31 8846FF
    %if ($ - %%insn_06a31) > 3
        %error "LONG_06A31"
    %endif
    times 3 - ($ - %%insn_06a31) db 0
    %%insn_06a34:
    mov al,[bp-0x1] ; 06A34 8A46FF
    %if ($ - %%insn_06a34) > 3
        %error "LONG_06A34"
    %endif
    times 3 - ($ - %%insn_06a34) db 0
    %%insn_06a37:
    cmp [bp-0x2],al ; 06A37 3846FE
    %if ($ - %%insn_06a37) > 3
        %error "LONG_06A37"
    %endif
    times 3 - ($ - %%insn_06a37) db 0
    %%insn_06a3a:
    jnz short 0x6a3f ; 06A3A 7503
    %if ($ - %%insn_06a3a) > 2
        %error "LONG_06A3A"
    %endif
    times 2 - ($ - %%insn_06a3a) db 0
    %%insn_06a3c:
    call 0x6436 ; 06A3C E8F7F9
    %if ($ - %%insn_06a3c) > 3
        %error "LONG_06A3C"
    %endif
    times 3 - ($ - %%insn_06a3c) db 0
    %%insn_06a3f:
    mov al,[bp-0x1] ; 06A3F 8A46FF
    %if ($ - %%insn_06a3f) > 3
        %error "LONG_06A3F"
    %endif
    times 3 - ($ - %%insn_06a3f) db 0
    %%insn_06a42:
    cmp [bp-0x2],al ; 06A42 3846FE
    %if ($ - %%insn_06a42) > 3
        %error "LONG_06A42"
    %endif
    times 3 - ($ - %%insn_06a42) db 0
    %%insn_06a45:
    jnl short 0x6a50 ; 06A45 7D09
    %if ($ - %%insn_06a45) > 2
        %error "LONG_06A45"
    %endif
    times 2 - ($ - %%insn_06a45) db 0
    %%insn_06a47:
    call 0x641c ; 06A47 E8D2F9
    %if ($ - %%insn_06a47) > 3
        %error "LONG_06A47"
    %endif
    times 3 - ($ - %%insn_06a47) db 0
    %%insn_06a4a:
    mov al,[bp-0x1] ; 06A4A 8A46FF
    %if ($ - %%insn_06a4a) > 3
        %error "LONG_06A4A"
    %endif
    times 3 - ($ - %%insn_06a4a) db 0
    %%insn_06a4d:
    mov [bp-0x2],al ; 06A4D 8846FE
    %if ($ - %%insn_06a4d) > 3
        %error "LONG_06A4D"
    %endif
    times 3 - ($ - %%insn_06a4d) db 0
    %%insn_06a50:
    mov al,[bp-0xc] ; 06A50 8A46F4
    %if ($ - %%insn_06a50) > 3
        %error "LONG_06A50"
    %endif
    times 3 - ($ - %%insn_06a50) db 0
    %%insn_06a53:
    call word near [bp-0x4] ; 06A53 FF56FC
    %if ($ - %%insn_06a53) > 3
        %error "LONG_06A53"
    %endif
    times 3 - ($ - %%insn_06a53) db 0
    db 0x0B, 0xC0 ; 06A56 0BC0 | or ax,ax | encoding preserved
    %%insn_06a58:
    jz short 0x6a5d ; 06A58 7403
    %if ($ - %%insn_06a58) > 2
        %error "LONG_06A58"
    %endif
    times 2 - ($ - %%insn_06a58) db 0
    %%insn_06a5a:
    jmp 0x6987 ; 06A5A E92AFF
    %if ($ - %%insn_06a5a) > 3
        %error "LONG_06A5A"
    %endif
    times 3 - ($ - %%insn_06a5a) db 0
    %%insn_06a5d:
    mov al,[bp-0xc] ; 06A5D 8A46F4
    %if ($ - %%insn_06a5d) > 3
        %error "LONG_06A5D"
    %endif
    times 3 - ($ - %%insn_06a5d) db 0
    %%insn_06a60:
    call 0x6458 ; 06A60 E8F5F9
    %if ($ - %%insn_06a60) > 3
        %error "LONG_06A60"
    %endif
    times 3 - ($ - %%insn_06a60) db 0
    %%insn_06a63:
    mov ax,0x1 ; 06A63 B80100
    %if ($ - %%insn_06a63) > 3
        %error "LONG_06A63"
    %endif
    times 3 - ($ - %%insn_06a63) db 0
    %%insn_06a66:
    pop si ; 06A66 5E
    %if ($ - %%insn_06a66) > 1
        %error "LONG_06A66"
    %endif
    times 1 - ($ - %%insn_06a66) db 0
    %%insn_06a67:
    pop di ; 06A67 5F
    %if ($ - %%insn_06a67) > 1
        %error "LONG_06A67"
    %endif
    times 1 - ($ - %%insn_06a67) db 0
    db 0x8B, 0xE5 ; 06A68 8BE5 | mov sp,bp | encoding preserved
    %%insn_06a6a:
    pop bp ; 06A6A 5D
    %if ($ - %%insn_06a6a) > 1
        %error "LONG_06A6A"
    %endif
    times 1 - ($ - %%insn_06a6a) db 0
    %%insn_06a6b:
    ret ; 06A6B C3
    %if ($ - %%insn_06a6b) > 1
        %error "LONG_06A6B"
    %endif
    times 1 - ($ - %%insn_06a6b) db 0
    %if ($ - %%fragment_start) != 281
        %error "SIZE_06953"
    %endif
%endmacro
