; Linear entry 026E5 (1000:26e5)
; Ghidra working symbol: FUN_1000_26e5
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_026e5_part_00 0
    %%fragment_start:
func_026e5:
    %%insn_026e5:
    pusha ; 026E5 60
    %if ($ - %%insn_026e5) > 1
        %error "LONG_026E5"
    %endif
    times 1 - ($ - %%insn_026e5) db 0
    %%insn_026e6:
    cmp word [bp-0x2650],0x0 ; 026E6 83BEB0D900
    %if ($ - %%insn_026e6) > 5
        %error "LONG_026E6"
    %endif
    times 5 - ($ - %%insn_026e6) db 0
    %%insn_026eb:
    jz short 0x26f6 ; 026EB 7409
    %if ($ - %%insn_026eb) > 2
        %error "LONG_026EB"
    %endif
    times 2 - ($ - %%insn_026eb) db 0
    %%insn_026ed:
    call 0x276d ; 026ED E87D00
    %if ($ - %%insn_026ed) > 3
        %error "LONG_026ED"
    %endif
    times 3 - ($ - %%insn_026ed) db 0
    %%insn_026f0:
    mov word [bp-0x2650],0x0 ; 026F0 C786B0D90000
    %if ($ - %%insn_026f0) > 6
        %error "LONG_026F0"
    %endif
    times 6 - ($ - %%insn_026f0) db 0
    %%insn_026f6:
    mov di,0xcf8c ; 026F6 BF8CCF
    %if ($ - %%insn_026f6) > 3
        %error "LONG_026F6"
    %endif
    times 3 - ($ - %%insn_026f6) db 0
    %%insn_026f9:
    mov bx,0xcb20 ; 026F9 BB20CB
    %if ($ - %%insn_026f9) > 3
        %error "LONG_026F9"
    %endif
    times 3 - ($ - %%insn_026f9) db 0
    %%insn_026fc:
    mov byte [ss:bx],0x1 ; 026FC 36C60701
    %if ($ - %%insn_026fc) > 4
        %error "LONG_026FC"
    %endif
    times 4 - ($ - %%insn_026fc) db 0
    db 0x33, 0xC9 ; 02700 33C9 | xor cx,cx | encoding preserved
    db 0x33, 0xD2 ; 02702 33D2 | xor dx,dx | encoding preserved
    %%insn_02704:
    cmp byte [ss:bx],0x0 ; 02704 36803F00
    %if ($ - %%insn_02704) > 4
        %error "LONG_02704"
    %endif
    times 4 - ($ - %%insn_02704) db 0
    %%insn_02708:
    jnz short 0x2737 ; 02708 752D
    %if ($ - %%insn_02708) > 2
        %error "LONG_02708"
    %endif
    times 2 - ($ - %%insn_02708) db 0
    %%insn_0270a:
    mov al,[es:si] ; 0270A 268A04
    %if ($ - %%insn_0270a) > 3
        %error "LONG_0270A"
    %endif
    times 3 - ($ - %%insn_0270a) db 0
    %%insn_0270d:
    shr al,byte 0x2 ; 0270D C0E802
    %if ($ - %%insn_0270d) > 3
        %error "LONG_0270D"
    %endif
    times 3 - ($ - %%insn_0270d) db 0
    %%insn_02710:
    mov [ss:di],al ; 02710 368805
    %if ($ - %%insn_02710) > 3
        %error "LONG_02710"
    %endif
    times 3 - ($ - %%insn_02710) db 0
    %%insn_02713:
    mov al,[es:si+0x1] ; 02713 268A4401
    %if ($ - %%insn_02713) > 4
        %error "LONG_02713"
    %endif
    times 4 - ($ - %%insn_02713) db 0
    %%insn_02717:
    shr al,byte 0x2 ; 02717 C0E802
    %if ($ - %%insn_02717) > 3
        %error "LONG_02717"
    %endif
    times 3 - ($ - %%insn_02717) db 0
    %%insn_0271a:
    mov [ss:di+0x1],al ; 0271A 36884501
    %if ($ - %%insn_0271a) > 4
        %error "LONG_0271A"
    %endif
    times 4 - ($ - %%insn_0271a) db 0
    %%insn_0271e:
    mov al,[es:si+0x2] ; 0271E 268A4402
    %if ($ - %%insn_0271e) > 4
        %error "LONG_0271E"
    %endif
    times 4 - ($ - %%insn_0271e) db 0
    %%insn_02722:
    shr al,byte 0x2 ; 02722 C0E802
    %if ($ - %%insn_02722) > 3
        %error "LONG_02722"
    %endif
    times 3 - ($ - %%insn_02722) db 0
    %%insn_02725:
    mov [ss:di+0x2],al ; 02725 36884502
    %if ($ - %%insn_02725) > 4
        %error "LONG_02725"
    %endif
    times 4 - ($ - %%insn_02725) db 0
    %%insn_02729:
    add si,0x3 ; 02729 83C603
    %if ($ - %%insn_02729) > 3
        %error "LONG_02729"
    %endif
    times 3 - ($ - %%insn_02729) db 0
    %%insn_0272c:
    inc dx ; 0272C 42
    %if ($ - %%insn_0272c) > 1
        %error "LONG_0272C"
    %endif
    times 1 - ($ - %%insn_0272c) db 0
    %%insn_0272d:
    push si ; 0272D 56
    %if ($ - %%insn_0272d) > 1
        %error "LONG_0272D"
    %endif
    times 1 - ($ - %%insn_0272d) db 0
    %%insn_0272e:
    mov si,0xe166 ; 0272E BE66E1
    %if ($ - %%insn_0272e) > 3
        %error "LONG_0272E"
    %endif
    times 3 - ($ - %%insn_0272e) db 0
    db 0x03, 0xF2 ; 02731 03F2 | add si,dx | encoding preserved
    %%insn_02733:
    mov [ss:si],cl ; 02733 36880C
    %if ($ - %%insn_02733) > 3
        %error "LONG_02733"
    %endif
    times 3 - ($ - %%insn_02733) db 0
    %%insn_02736:
    pop si ; 02736 5E
    %if ($ - %%insn_02736) > 1
        %error "LONG_02736"
    %endif
    times 1 - ($ - %%insn_02736) db 0
    %%insn_02737:
    add di,0x3 ; 02737 83C703
    %if ($ - %%insn_02737) > 3
        %error "LONG_02737"
    %endif
    times 3 - ($ - %%insn_02737) db 0
    %%insn_0273a:
    inc bx ; 0273A 43
    %if ($ - %%insn_0273a) > 1
        %error "LONG_0273A"
    %endif
    times 1 - ($ - %%insn_0273a) db 0
    %%insn_0273b:
    cmp dx,0x20 ; 0273B 83FA20
    %if ($ - %%insn_0273b) > 3
        %error "LONG_0273B"
    %endif
    times 3 - ($ - %%insn_0273b) db 0
    %%insn_0273e:
    jz short 0x2747 ; 0273E 7407
    %if ($ - %%insn_0273e) > 2
        %error "LONG_0273E"
    %endif
    times 2 - ($ - %%insn_0273e) db 0
    %%insn_02740:
    inc cx ; 02740 41
    %if ($ - %%insn_02740) > 1
        %error "LONG_02740"
    %endif
    times 1 - ($ - %%insn_02740) db 0
    %%insn_02741:
    cmp cx,0x100 ; 02741 81F90001
    %if ($ - %%insn_02741) > 4
        %error "LONG_02741"
    %endif
    times 4 - ($ - %%insn_02741) db 0
    %%insn_02745:
    jnz short 0x2704 ; 02745 75BD
    %if ($ - %%insn_02745) > 2
        %error "LONG_02745"
    %endif
    times 2 - ($ - %%insn_02745) db 0
    %%insn_02747:
    push dx ; 02747 52
    %if ($ - %%insn_02747) > 1
        %error "LONG_02747"
    %endif
    times 1 - ($ - %%insn_02747) db 0
    %%insn_02748:
    mov dx,0x3da ; 02748 BADA03
    %if ($ - %%insn_02748) > 3
        %error "LONG_02748"
    %endif
    times 3 - ($ - %%insn_02748) db 0
    %%insn_0274b:
    in al,dx ; 0274B EC
    %if ($ - %%insn_0274b) > 1
        %error "LONG_0274B"
    %endif
    times 1 - ($ - %%insn_0274b) db 0
    %%insn_0274c:
    and al,0x8 ; 0274C 2408
    %if ($ - %%insn_0274c) > 2
        %error "LONG_0274C"
    %endif
    times 2 - ($ - %%insn_0274c) db 0
    %%insn_0274e:
    jmp short 0x2750 ; 0274E EB00
    %if ($ - %%insn_0274e) > 2
        %error "LONG_0274E"
    %endif
    times 2 - ($ - %%insn_0274e) db 0
    %%insn_02750:
    jnz short 0x274b ; 02750 75F9
    %if ($ - %%insn_02750) > 2
        %error "LONG_02750"
    %endif
    times 2 - ($ - %%insn_02750) db 0
    %%insn_02752:
    in al,dx ; 02752 EC
    %if ($ - %%insn_02752) > 1
        %error "LONG_02752"
    %endif
    times 1 - ($ - %%insn_02752) db 0
    %%insn_02753:
    and al,0x8 ; 02753 2408
    %if ($ - %%insn_02753) > 2
        %error "LONG_02753"
    %endif
    times 2 - ($ - %%insn_02753) db 0
    %%insn_02755:
    jmp short 0x2757 ; 02755 EB00
    %if ($ - %%insn_02755) > 2
        %error "LONG_02755"
    %endif
    times 2 - ($ - %%insn_02755) db 0
    %%insn_02757:
    jz short 0x2752 ; 02757 74F9
    %if ($ - %%insn_02757) > 2
        %error "LONG_02757"
    %endif
    times 2 - ($ - %%insn_02757) db 0
    %%insn_02759:
    pop dx ; 02759 5A
    %if ($ - %%insn_02759) > 1
        %error "LONG_02759"
    %endif
    times 1 - ($ - %%insn_02759) db 0
    %%insn_0275a:
    mov dx,0x3c8 ; 0275A BAC803
    %if ($ - %%insn_0275a) > 3
        %error "LONG_0275A"
    %endif
    times 3 - ($ - %%insn_0275a) db 0
    db 0x32, 0xC0 ; 0275D 32C0 | xor al,al | encoding preserved
    %%insn_0275f:
    out dx,al ; 0275F EE
    %if ($ - %%insn_0275f) > 1
        %error "LONG_0275F"
    %endif
    times 1 - ($ - %%insn_0275f) db 0
    %%insn_02760:
    inc dx ; 02760 42
    %if ($ - %%insn_02760) > 1
        %error "LONG_02760"
    %endif
    times 1 - ($ - %%insn_02760) db 0
    %%insn_02761:
    mov cx,0x300 ; 02761 B90003
    %if ($ - %%insn_02761) > 3
        %error "LONG_02761"
    %endif
    times 3 - ($ - %%insn_02761) db 0
    %%insn_02764:
    mov si,0xcf8c ; 02764 BE8CCF
    %if ($ - %%insn_02764) > 3
        %error "LONG_02764"
    %endif
    times 3 - ($ - %%insn_02764) db 0
    %%insn_02767:
    outsb ; 02767 6E
    %if ($ - %%insn_02767) > 1
        %error "LONG_02767"
    %endif
    times 1 - ($ - %%insn_02767) db 0
    %%insn_02768:
    dec cx ; 02768 49
    %if ($ - %%insn_02768) > 1
        %error "LONG_02768"
    %endif
    times 1 - ($ - %%insn_02768) db 0
    %%insn_02769:
    jnz short 0x2767 ; 02769 75FC
    %if ($ - %%insn_02769) > 2
        %error "LONG_02769"
    %endif
    times 2 - ($ - %%insn_02769) db 0
    %%insn_0276b:
    popa ; 0276B 61
    %if ($ - %%insn_0276b) > 1
        %error "LONG_0276B"
    %endif
    times 1 - ($ - %%insn_0276b) db 0
    %%insn_0276c:
    ret ; 0276C C3
    %if ($ - %%insn_0276c) > 1
        %error "LONG_0276C"
    %endif
    times 1 - ($ - %%insn_0276c) db 0
    %if ($ - %%fragment_start) != 136
        %error "SIZE_026E5"
    %endif
%endmacro
