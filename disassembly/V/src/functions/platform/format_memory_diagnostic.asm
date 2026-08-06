; Linear entry 036D2 (1000:36d2)
; Ghidra working symbol: FUN_1000_36d2
; Verified diagnostic memory-number formatter.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_format_memory_diagnostic_part_00 0
    %%fragment_start:
format_memory_diagnostic:
    %%insn_036d2:
    push si ; 036D2 56
    %if ($ - %%insn_036d2) > 1
        %error "LONG_036D2"
    %endif
    times 1 - ($ - %%insn_036d2) db 0
    db 0x33, 0xF6 ; 036D3 33F6 | xor si,si | encoding preserved
    %%insn_036d5:
    mov cx,0x2710 ; 036D5 B91027
    %if ($ - %%insn_036d5) > 3
        %error "LONG_036D5"
    %endif
    times 3 - ($ - %%insn_036d5) db 0
    db 0x33, 0xD2 ; 036D8 33D2 | xor dx,dx | encoding preserved
    %%insn_036da:
    div cx ; 036DA F7F1
    %if ($ - %%insn_036da) > 2
        %error "LONG_036DA"
    %endif
    times 2 - ($ - %%insn_036da) db 0
    %%insn_036dc:
    add al,0x30 ; 036DC 0430
    %if ($ - %%insn_036dc) > 2
        %error "LONG_036DC"
    %endif
    times 2 - ($ - %%insn_036dc) db 0
    %%insn_036de:
    cmp al,0x30 ; 036DE 3C30
    %if ($ - %%insn_036de) > 2
        %error "LONG_036DE"
    %endif
    times 2 - ($ - %%insn_036de) db 0
    %%insn_036e0:
    jnz short 0x36e7 ; 036E0 7505
    %if ($ - %%insn_036e0) > 2
        %error "LONG_036E0"
    %endif
    times 2 - ($ - %%insn_036e0) db 0
    %%insn_036e2:
    mov byte [bx],0x20 ; 036E2 C60720
    %if ($ - %%insn_036e2) > 3
        %error "LONG_036E2"
    %endif
    times 3 - ($ - %%insn_036e2) db 0
    %%insn_036e5:
    jmp short 0x36ea ; 036E5 EB03
    %if ($ - %%insn_036e5) > 2
        %error "LONG_036E5"
    %endif
    times 2 - ($ - %%insn_036e5) db 0
    %%insn_036e7:
    inc si ; 036E7 46
    %if ($ - %%insn_036e7) > 1
        %error "LONG_036E7"
    %endif
    times 1 - ($ - %%insn_036e7) db 0
    %%insn_036e8:
    mov [bx],al ; 036E8 8807
    %if ($ - %%insn_036e8) > 2
        %error "LONG_036E8"
    %endif
    times 2 - ($ - %%insn_036e8) db 0
    %%insn_036ea:
    inc bx ; 036EA 43
    %if ($ - %%insn_036ea) > 1
        %error "LONG_036EA"
    %endif
    times 1 - ($ - %%insn_036ea) db 0
    db 0x8B, 0xC2 ; 036EB 8BC2 | mov ax,dx | encoding preserved
    %%insn_036ed:
    mov cx,0x3e8 ; 036ED B9E803
    %if ($ - %%insn_036ed) > 3
        %error "LONG_036ED"
    %endif
    times 3 - ($ - %%insn_036ed) db 0
    db 0x33, 0xD2 ; 036F0 33D2 | xor dx,dx | encoding preserved
    %%insn_036f2:
    div cx ; 036F2 F7F1
    %if ($ - %%insn_036f2) > 2
        %error "LONG_036F2"
    %endif
    times 2 - ($ - %%insn_036f2) db 0
    %%insn_036f4:
    add al,0x30 ; 036F4 0430
    %if ($ - %%insn_036f4) > 2
        %error "LONG_036F4"
    %endif
    times 2 - ($ - %%insn_036f4) db 0
    %%insn_036f6:
    cmp al,0x30 ; 036F6 3C30
    %if ($ - %%insn_036f6) > 2
        %error "LONG_036F6"
    %endif
    times 2 - ($ - %%insn_036f6) db 0
    %%insn_036f8:
    jnz short 0x3703 ; 036F8 7509
    %if ($ - %%insn_036f8) > 2
        %error "LONG_036F8"
    %endif
    times 2 - ($ - %%insn_036f8) db 0
    %%insn_036fa:
    cmp si,0x0 ; 036FA 83FE00
    %if ($ - %%insn_036fa) > 3
        %error "LONG_036FA"
    %endif
    times 3 - ($ - %%insn_036fa) db 0
    %%insn_036fd:
    jnz short 0x3701 ; 036FD 7502
    %if ($ - %%insn_036fd) > 2
        %error "LONG_036FD"
    %endif
    times 2 - ($ - %%insn_036fd) db 0
    %%insn_036ff:
    mov al,0x20 ; 036FF B020
    %if ($ - %%insn_036ff) > 2
        %error "LONG_036FF"
    %endif
    times 2 - ($ - %%insn_036ff) db 0
    %%insn_03701:
    jmp short 0x3704 ; 03701 EB01
    %if ($ - %%insn_03701) > 2
        %error "LONG_03701"
    %endif
    times 2 - ($ - %%insn_03701) db 0
    %%insn_03703:
    inc si ; 03703 46
    %if ($ - %%insn_03703) > 1
        %error "LONG_03703"
    %endif
    times 1 - ($ - %%insn_03703) db 0
    %%insn_03704:
    mov [bx],al ; 03704 8807
    %if ($ - %%insn_03704) > 2
        %error "LONG_03704"
    %endif
    times 2 - ($ - %%insn_03704) db 0
    %%insn_03706:
    inc bx ; 03706 43
    %if ($ - %%insn_03706) > 1
        %error "LONG_03706"
    %endif
    times 1 - ($ - %%insn_03706) db 0
    %%insn_03707:
    cmp si,0x0 ; 03707 83FE00
    %if ($ - %%insn_03707) > 3
        %error "LONG_03707"
    %endif
    times 3 - ($ - %%insn_03707) db 0
    %%insn_0370a:
    jnz short 0x3710 ; 0370A 7504
    %if ($ - %%insn_0370a) > 2
        %error "LONG_0370A"
    %endif
    times 2 - ($ - %%insn_0370a) db 0
    %%insn_0370c:
    mov al,0x20 ; 0370C B020
    %if ($ - %%insn_0370c) > 2
        %error "LONG_0370C"
    %endif
    times 2 - ($ - %%insn_0370c) db 0
    %%insn_0370e:
    jmp short 0x3712 ; 0370E EB02
    %if ($ - %%insn_0370e) > 2
        %error "LONG_0370E"
    %endif
    times 2 - ($ - %%insn_0370e) db 0
    %%insn_03710:
    mov al,0x2c ; 03710 B02C
    %if ($ - %%insn_03710) > 2
        %error "LONG_03710"
    %endif
    times 2 - ($ - %%insn_03710) db 0
    %%insn_03712:
    mov [bx],al ; 03712 8807
    %if ($ - %%insn_03712) > 2
        %error "LONG_03712"
    %endif
    times 2 - ($ - %%insn_03712) db 0
    %%insn_03714:
    inc bx ; 03714 43
    %if ($ - %%insn_03714) > 1
        %error "LONG_03714"
    %endif
    times 1 - ($ - %%insn_03714) db 0
    db 0x8B, 0xC2 ; 03715 8BC2 | mov ax,dx | encoding preserved
    %%insn_03717:
    mov cx,0x64 ; 03717 B96400
    %if ($ - %%insn_03717) > 3
        %error "LONG_03717"
    %endif
    times 3 - ($ - %%insn_03717) db 0
    db 0x33, 0xD2 ; 0371A 33D2 | xor dx,dx | encoding preserved
    %%insn_0371c:
    div cx ; 0371C F7F1
    %if ($ - %%insn_0371c) > 2
        %error "LONG_0371C"
    %endif
    times 2 - ($ - %%insn_0371c) db 0
    %%insn_0371e:
    add al,0x30 ; 0371E 0430
    %if ($ - %%insn_0371e) > 2
        %error "LONG_0371E"
    %endif
    times 2 - ($ - %%insn_0371e) db 0
    %%insn_03720:
    cmp al,0x30 ; 03720 3C30
    %if ($ - %%insn_03720) > 2
        %error "LONG_03720"
    %endif
    times 2 - ($ - %%insn_03720) db 0
    %%insn_03722:
    jnz short 0x372d ; 03722 7509
    %if ($ - %%insn_03722) > 2
        %error "LONG_03722"
    %endif
    times 2 - ($ - %%insn_03722) db 0
    %%insn_03724:
    cmp si,0x0 ; 03724 83FE00
    %if ($ - %%insn_03724) > 3
        %error "LONG_03724"
    %endif
    times 3 - ($ - %%insn_03724) db 0
    %%insn_03727:
    jnz short 0x372b ; 03727 7502
    %if ($ - %%insn_03727) > 2
        %error "LONG_03727"
    %endif
    times 2 - ($ - %%insn_03727) db 0
    %%insn_03729:
    mov al,0x20 ; 03729 B020
    %if ($ - %%insn_03729) > 2
        %error "LONG_03729"
    %endif
    times 2 - ($ - %%insn_03729) db 0
    %%insn_0372b:
    jmp short 0x372e ; 0372B EB01
    %if ($ - %%insn_0372b) > 2
        %error "LONG_0372B"
    %endif
    times 2 - ($ - %%insn_0372b) db 0
    %%insn_0372d:
    inc si ; 0372D 46
    %if ($ - %%insn_0372d) > 1
        %error "LONG_0372D"
    %endif
    times 1 - ($ - %%insn_0372d) db 0
    %%insn_0372e:
    mov [bx],al ; 0372E 8807
    %if ($ - %%insn_0372e) > 2
        %error "LONG_0372E"
    %endif
    times 2 - ($ - %%insn_0372e) db 0
    %%insn_03730:
    inc bx ; 03730 43
    %if ($ - %%insn_03730) > 1
        %error "LONG_03730"
    %endif
    times 1 - ($ - %%insn_03730) db 0
    db 0x8B, 0xC2 ; 03731 8BC2 | mov ax,dx | encoding preserved
    %%insn_03733:
    mov cx,0xa ; 03733 B90A00
    %if ($ - %%insn_03733) > 3
        %error "LONG_03733"
    %endif
    times 3 - ($ - %%insn_03733) db 0
    db 0x33, 0xD2 ; 03736 33D2 | xor dx,dx | encoding preserved
    %%insn_03738:
    div cx ; 03738 F7F1
    %if ($ - %%insn_03738) > 2
        %error "LONG_03738"
    %endif
    times 2 - ($ - %%insn_03738) db 0
    %%insn_0373a:
    add al,0x30 ; 0373A 0430
    %if ($ - %%insn_0373a) > 2
        %error "LONG_0373A"
    %endif
    times 2 - ($ - %%insn_0373a) db 0
    %%insn_0373c:
    cmp al,0x30 ; 0373C 3C30
    %if ($ - %%insn_0373c) > 2
        %error "LONG_0373C"
    %endif
    times 2 - ($ - %%insn_0373c) db 0
    %%insn_0373e:
    jnz short 0x3749 ; 0373E 7509
    %if ($ - %%insn_0373e) > 2
        %error "LONG_0373E"
    %endif
    times 2 - ($ - %%insn_0373e) db 0
    %%insn_03740:
    cmp si,0x0 ; 03740 83FE00
    %if ($ - %%insn_03740) > 3
        %error "LONG_03740"
    %endif
    times 3 - ($ - %%insn_03740) db 0
    %%insn_03743:
    jnz short 0x3747 ; 03743 7502
    %if ($ - %%insn_03743) > 2
        %error "LONG_03743"
    %endif
    times 2 - ($ - %%insn_03743) db 0
    %%insn_03745:
    mov al,0x20 ; 03745 B020
    %if ($ - %%insn_03745) > 2
        %error "LONG_03745"
    %endif
    times 2 - ($ - %%insn_03745) db 0
    %%insn_03747:
    jmp short 0x374a ; 03747 EB01
    %if ($ - %%insn_03747) > 2
        %error "LONG_03747"
    %endif
    times 2 - ($ - %%insn_03747) db 0
    %%insn_03749:
    inc si ; 03749 46
    %if ($ - %%insn_03749) > 1
        %error "LONG_03749"
    %endif
    times 1 - ($ - %%insn_03749) db 0
    %%insn_0374a:
    mov [bx],al ; 0374A 8807
    %if ($ - %%insn_0374a) > 2
        %error "LONG_0374A"
    %endif
    times 2 - ($ - %%insn_0374a) db 0
    %%insn_0374c:
    inc bx ; 0374C 43
    %if ($ - %%insn_0374c) > 1
        %error "LONG_0374C"
    %endif
    times 1 - ($ - %%insn_0374c) db 0
    db 0x8B, 0xC2 ; 0374D 8BC2 | mov ax,dx | encoding preserved
    %%insn_0374f:
    add al,0x30 ; 0374F 0430
    %if ($ - %%insn_0374f) > 2
        %error "LONG_0374F"
    %endif
    times 2 - ($ - %%insn_0374f) db 0
    %%insn_03751:
    mov [bx],al ; 03751 8807
    %if ($ - %%insn_03751) > 2
        %error "LONG_03751"
    %endif
    times 2 - ($ - %%insn_03751) db 0
    %%insn_03753:
    inc bx ; 03753 43
    %if ($ - %%insn_03753) > 1
        %error "LONG_03753"
    %endif
    times 1 - ($ - %%insn_03753) db 0
    %%insn_03754:
    pop si ; 03754 5E
    %if ($ - %%insn_03754) > 1
        %error "LONG_03754"
    %endif
    times 1 - ($ - %%insn_03754) db 0
    %%insn_03755:
    ret ; 03755 C3
    %if ($ - %%insn_03755) > 1
        %error "LONG_03755"
    %endif
    times 1 - ($ - %%insn_03755) db 0
    %if ($ - %%fragment_start) != 132
        %error "SIZE_036D2"
    %endif
%endmacro
