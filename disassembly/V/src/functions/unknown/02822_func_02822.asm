; Linear entry 02822 (1000:2822)
; Ghidra working symbol: FUN_1000_2822
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_02822_part_00 0
    %%fragment_start:
func_02822:
    %%insn_02822:
    pusha ; 02822 60
    %if ($ - %%insn_02822) > 1
        %error "LONG_02822"
    %endif
    times 1 - ($ - %%insn_02822) db 0
    %%insn_02823:
    mov bx,0xcc20 ; 02823 BB20CC
    %if ($ - %%insn_02823) > 3
        %error "LONG_02823"
    %endif
    times 3 - ($ - %%insn_02823) db 0
    %%insn_02826:
    mov di,0xcf8c ; 02826 BF8CCF
    %if ($ - %%insn_02826) > 3
        %error "LONG_02826"
    %endif
    times 3 - ($ - %%insn_02826) db 0
    %%insn_02829:
    mov cx,0x300 ; 02829 B90003
    %if ($ - %%insn_02829) > 3
        %error "LONG_02829"
    %endif
    times 3 - ($ - %%insn_02829) db 0
    %%insn_0282c:
    mov al,[ss:bx] ; 0282C 368A07
    %if ($ - %%insn_0282c) > 3
        %error "LONG_0282C"
    %endif
    times 3 - ($ - %%insn_0282c) db 0
    %%insn_0282f:
    mov [ss:di],al ; 0282F 368805
    %if ($ - %%insn_0282f) > 3
        %error "LONG_0282F"
    %endif
    times 3 - ($ - %%insn_0282f) db 0
    %%insn_02832:
    inc bx ; 02832 43
    %if ($ - %%insn_02832) > 1
        %error "LONG_02832"
    %endif
    times 1 - ($ - %%insn_02832) db 0
    %%insn_02833:
    inc di ; 02833 47
    %if ($ - %%insn_02833) > 1
        %error "LONG_02833"
    %endif
    times 1 - ($ - %%insn_02833) db 0
    %%insn_02834:
    dec cx ; 02834 49
    %if ($ - %%insn_02834) > 1
        %error "LONG_02834"
    %endif
    times 1 - ($ - %%insn_02834) db 0
    %%insn_02835:
    jnz short 0x282c ; 02835 75F5
    %if ($ - %%insn_02835) > 2
        %error "LONG_02835"
    %endif
    times 2 - ($ - %%insn_02835) db 0
    %%insn_02837:
    push dx ; 02837 52
    %if ($ - %%insn_02837) > 1
        %error "LONG_02837"
    %endif
    times 1 - ($ - %%insn_02837) db 0
    %%insn_02838:
    mov dx,0x3da ; 02838 BADA03
    %if ($ - %%insn_02838) > 3
        %error "LONG_02838"
    %endif
    times 3 - ($ - %%insn_02838) db 0
    %%insn_0283b:
    in al,dx ; 0283B EC
    %if ($ - %%insn_0283b) > 1
        %error "LONG_0283B"
    %endif
    times 1 - ($ - %%insn_0283b) db 0
    %%insn_0283c:
    and al,0x8 ; 0283C 2408
    %if ($ - %%insn_0283c) > 2
        %error "LONG_0283C"
    %endif
    times 2 - ($ - %%insn_0283c) db 0
    %%insn_0283e:
    jmp short 0x2840 ; 0283E EB00
    %if ($ - %%insn_0283e) > 2
        %error "LONG_0283E"
    %endif
    times 2 - ($ - %%insn_0283e) db 0
    %%insn_02840:
    jnz short 0x283b ; 02840 75F9
    %if ($ - %%insn_02840) > 2
        %error "LONG_02840"
    %endif
    times 2 - ($ - %%insn_02840) db 0
    %%insn_02842:
    in al,dx ; 02842 EC
    %if ($ - %%insn_02842) > 1
        %error "LONG_02842"
    %endif
    times 1 - ($ - %%insn_02842) db 0
    %%insn_02843:
    and al,0x8 ; 02843 2408
    %if ($ - %%insn_02843) > 2
        %error "LONG_02843"
    %endif
    times 2 - ($ - %%insn_02843) db 0
    %%insn_02845:
    jmp short 0x2847 ; 02845 EB00
    %if ($ - %%insn_02845) > 2
        %error "LONG_02845"
    %endif
    times 2 - ($ - %%insn_02845) db 0
    %%insn_02847:
    jz short 0x2842 ; 02847 74F9
    %if ($ - %%insn_02847) > 2
        %error "LONG_02847"
    %endif
    times 2 - ($ - %%insn_02847) db 0
    %%insn_02849:
    pop dx ; 02849 5A
    %if ($ - %%insn_02849) > 1
        %error "LONG_02849"
    %endif
    times 1 - ($ - %%insn_02849) db 0
    %%insn_0284a:
    mov dx,0x3c8 ; 0284A BAC803
    %if ($ - %%insn_0284a) > 3
        %error "LONG_0284A"
    %endif
    times 3 - ($ - %%insn_0284a) db 0
    db 0x32, 0xC0 ; 0284D 32C0 | xor al,al | encoding preserved
    %%insn_0284f:
    out dx,al ; 0284F EE
    %if ($ - %%insn_0284f) > 1
        %error "LONG_0284F"
    %endif
    times 1 - ($ - %%insn_0284f) db 0
    %%insn_02850:
    inc dx ; 02850 42
    %if ($ - %%insn_02850) > 1
        %error "LONG_02850"
    %endif
    times 1 - ($ - %%insn_02850) db 0
    %%insn_02851:
    mov cx,0x300 ; 02851 B90003
    %if ($ - %%insn_02851) > 3
        %error "LONG_02851"
    %endif
    times 3 - ($ - %%insn_02851) db 0
    %%insn_02854:
    mov si,0xcf8c ; 02854 BE8CCF
    %if ($ - %%insn_02854) > 3
        %error "LONG_02854"
    %endif
    times 3 - ($ - %%insn_02854) db 0
    %%insn_02857:
    outsb ; 02857 6E
    %if ($ - %%insn_02857) > 1
        %error "LONG_02857"
    %endif
    times 1 - ($ - %%insn_02857) db 0
    %%insn_02858:
    dec cx ; 02858 49
    %if ($ - %%insn_02858) > 1
        %error "LONG_02858"
    %endif
    times 1 - ($ - %%insn_02858) db 0
    %%insn_02859:
    jnz short 0x2857 ; 02859 75FC
    %if ($ - %%insn_02859) > 2
        %error "LONG_02859"
    %endif
    times 2 - ($ - %%insn_02859) db 0
    %%insn_0285b:
    popa ; 0285B 61
    %if ($ - %%insn_0285b) > 1
        %error "LONG_0285B"
    %endif
    times 1 - ($ - %%insn_0285b) db 0
    %%insn_0285c:
    ret ; 0285C C3
    %if ($ - %%insn_0285c) > 1
        %error "LONG_0285C"
    %endif
    times 1 - ($ - %%insn_0285c) db 0
    %if ($ - %%fragment_start) != 59
        %error "SIZE_02822"
    %endif
%endmacro
