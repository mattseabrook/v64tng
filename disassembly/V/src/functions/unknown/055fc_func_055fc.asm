; Linear entry 055FC (1000:55fc)
; Ghidra working symbol: FUN_1000_55fc
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_055fc_part_00 0
    %%fragment_start:
func_055fc:
    %%insn_055fc:
    pusha ; 055FC 60
    %if ($ - %%insn_055fc) > 1
        %error "LONG_055FC"
    %endif
    times 1 - ($ - %%insn_055fc) db 0
    db 0x3D, 0x03, 0x00 ; 055FD 3D0300 | cmp ax,0x3 | encoding preserved
    %%insn_05600:
    jnz short 0x560c ; 05600 750A
    %if ($ - %%insn_05600) > 2
        %error "LONG_05600"
    %endif
    times 2 - ($ - %%insn_05600) db 0
    %%insn_05602:
    mov byte [bp-0x2659],0x1 ; 05602 C686A7D901
    %if ($ - %%insn_05602) > 5
        %error "LONG_05602"
    %endif
    times 5 - ($ - %%insn_05602) db 0
    %%insn_05607:
    mov ax,0x2 ; 05607 B80200
    %if ($ - %%insn_05607) > 3
        %error "LONG_05607"
    %endif
    times 3 - ($ - %%insn_05607) db 0
    %%insn_0560a:
    jmp short 0x5611 ; 0560A EB05
    %if ($ - %%insn_0560a) > 2
        %error "LONG_0560A"
    %endif
    times 2 - ($ - %%insn_0560a) db 0
    %%insn_0560c:
    mov byte [bp-0x2659],0x0 ; 0560C C686A7D900
    %if ($ - %%insn_0560c) > 5
        %error "LONG_0560C"
    %endif
    times 5 - ($ - %%insn_0560c) db 0
    %%insn_05611:
    push ax ; 05611 50
    %if ($ - %%insn_05611) > 1
        %error "LONG_05611"
    %endif
    times 1 - ($ - %%insn_05611) db 0
    %%insn_05612:
    mov ax,0x893 ; 05612 B89308
    %if ($ - %%insn_05612) > 3
        %error "LONG_05612"
    %endif
    times 3 - ($ - %%insn_05612) db 0
    %%insn_05615:
    mov ds,ax ; 05615 8ED8
    %if ($ - %%insn_05615) > 2
        %error "LONG_05615"
    %endif
    times 2 - ($ - %%insn_05615) db 0
    %%insn_05617:
    mov es,ax ; 05617 8EC0
    %if ($ - %%insn_05617) > 2
        %error "LONG_05617"
    %endif
    times 2 - ($ - %%insn_05617) db 0
    %%insn_05619:
    call 0x572a ; 05619 E80E01
    %if ($ - %%insn_05619) > 3
        %error "LONG_05619"
    %endif
    times 3 - ($ - %%insn_05619) db 0
    %%insn_0561c:
    pop ax ; 0561C 58
    %if ($ - %%insn_0561c) > 1
        %error "LONG_0561C"
    %endif
    times 1 - ($ - %%insn_0561c) db 0
    db 0x3D, 0x62, 0x00 ; 0561D 3D6200 | cmp ax,0x62 | encoding preserved
    %%insn_05620:
    jz short 0x562e ; 05620 740C
    %if ($ - %%insn_05620) > 2
        %error "LONG_05620"
    %endif
    times 2 - ($ - %%insn_05620) db 0
    %%insn_05622:
    push ax ; 05622 50
    %if ($ - %%insn_05622) > 1
        %error "LONG_05622"
    %endif
    times 1 - ($ - %%insn_05622) db 0
    %%insn_05623:
    call 0x5719 ; 05623 E8F300
    %if ($ - %%insn_05623) > 3
        %error "LONG_05623"
    %endif
    times 3 - ($ - %%insn_05623) db 0
    %%insn_05626:
    pop ax ; 05626 58
    %if ($ - %%insn_05626) > 1
        %error "LONG_05626"
    %endif
    times 1 - ($ - %%insn_05626) db 0
    db 0x3D, 0x63, 0x00 ; 05627 3D6300 | cmp ax,0x63 | encoding preserved
    %%insn_0562a:
    jnz short 0x5636 ; 0562A 750A
    %if ($ - %%insn_0562a) > 2
        %error "LONG_0562A"
    %endif
    times 2 - ($ - %%insn_0562a) db 0
    %%insn_0562c:
    popa ; 0562C 61
    %if ($ - %%insn_0562c) > 1
        %error "LONG_0562C"
    %endif
    times 1 - ($ - %%insn_0562c) db 0
    %%insn_0562d:
    ret ; 0562D C3
    %if ($ - %%insn_0562d) > 1
        %error "LONG_0562D"
    %endif
    times 1 - ($ - %%insn_0562d) db 0
    %%insn_0562e:
    call 0x5729 ; 0562E E8F800
    %if ($ - %%insn_0562e) > 3
        %error "LONG_0562E"
    %endif
    times 3 - ($ - %%insn_0562e) db 0
    %%insn_05631:
    call 0x5719 ; 05631 E8E500
    %if ($ - %%insn_05631) > 3
        %error "LONG_05631"
    %endif
    times 3 - ($ - %%insn_05631) db 0
    %%insn_05634:
    popa ; 05634 61
    %if ($ - %%insn_05634) > 1
        %error "LONG_05634"
    %endif
    times 1 - ($ - %%insn_05634) db 0
    %%insn_05635:
    ret ; 05635 C3
    %if ($ - %%insn_05635) > 1
        %error "LONG_05635"
    %endif
    times 1 - ($ - %%insn_05635) db 0
    %%insn_05636:
    mov [0xe381],al ; 05636 A281E3
    %if ($ - %%insn_05636) > 3
        %error "LONG_05636"
    %endif
    times 3 - ($ - %%insn_05636) db 0
    %%insn_05639:
    mov ax,0xe380 ; 05639 B880E3
    %if ($ - %%insn_05639) > 3
        %error "LONG_05639"
    %endif
    times 3 - ($ - %%insn_05639) db 0
    %%insn_0563c:
    mov [0xe374],ax ; 0563C A374E3
    %if ($ - %%insn_0563c) > 3
        %error "LONG_0563C"
    %endif
    times 3 - ($ - %%insn_0563c) db 0
    %%insn_0563f:
    mov ax,0x893 ; 0563F B89308
    %if ($ - %%insn_0563f) > 3
        %error "LONG_0563F"
    %endif
    times 3 - ($ - %%insn_0563f) db 0
    %%insn_05642:
    mov [0xe376],ax ; 05642 A376E3
    %if ($ - %%insn_05642) > 3
        %error "LONG_05642"
    %endif
    times 3 - ($ - %%insn_05642) db 0
    %%insn_05645:
    mov cl,[0xe3f2] ; 05645 8A0EF2E3
    %if ($ - %%insn_05645) > 4
        %error "LONG_05645"
    %endif
    times 4 - ($ - %%insn_05645) db 0
    db 0x32, 0xED ; 05649 32ED | xor ch,ch | encoding preserved
    %%insn_0564b:
    mov bx,0xe366 ; 0564B BB66E3
    %if ($ - %%insn_0564b) > 3
        %error "LONG_0564B"
    %endif
    times 3 - ($ - %%insn_0564b) db 0
    %%insn_0564e:
    mov ax,0x1510 ; 0564E B81015
    %if ($ - %%insn_0564e) > 3
        %error "LONG_0564E"
    %endif
    times 3 - ($ - %%insn_0564e) db 0
    %%insn_05651:
    int byte 0x2f ; 05651 CD2F
    %if ($ - %%insn_05651) > 2
        %error "LONG_05651"
    %endif
    times 2 - ($ - %%insn_05651) db 0
    %%insn_05653:
    mov eax,[0xe382] ; 05653 66A182E3
    %if ($ - %%insn_05653) > 4
        %error "LONG_05653"
    %endif
    times 4 - ($ - %%insn_05653) db 0
    %%insn_05657:
    cmp byte [bp-0x2659],0x1 ; 05657 80BEA7D901
    %if ($ - %%insn_05657) > 5
        %error "LONG_05657"
    %endif
    times 5 - ($ - %%insn_05657) db 0
    %%insn_0565c:
    jnz short 0x5672 ; 0565C 7514
    %if ($ - %%insn_0565c) > 2
        %error "LONG_0565C"
    %endif
    times 2 - ($ - %%insn_0565c) db 0
    %%insn_0565e:
    add eax,0x171100 ; 0565E 660500111700
    %if ($ - %%insn_0565e) > 6
        %error "LONG_0565E"
    %endif
    times 6 - ($ - %%insn_0565e) db 0
    %%insn_05664:
    cmp ah,0x3b ; 05664 80FC3B
    %if ($ - %%insn_05664) > 3
        %error "LONG_05664"
    %endif
    times 3 - ($ - %%insn_05664) db 0
    %%insn_05667:
    jna short 0x5672 ; 05667 7609
    %if ($ - %%insn_05667) > 2
        %error "LONG_05667"
    %endif
    times 2 - ($ - %%insn_05667) db 0
    %%insn_05669:
    sub ah,0x3c ; 05669 80EC3C
    %if ($ - %%insn_05669) > 3
        %error "LONG_05669"
    %endif
    times 3 - ($ - %%insn_05669) db 0
    %%insn_0566c:
    add eax,0x10000 ; 0566C 660500000100
    %if ($ - %%insn_0566c) > 6
        %error "LONG_0566C"
    %endif
    times 6 - ($ - %%insn_0566c) db 0
    %%insn_05672:
    mov [0xe3dd],eax ; 05672 66A3DDE3
    %if ($ - %%insn_05672) > 4
        %error "LONG_05672"
    %endif
    times 4 - ($ - %%insn_05672) db 0
    %%insn_05676:
    inc byte [0xe381] ; 05676 FE0681E3
    %if ($ - %%insn_05676) > 4
        %error "LONG_05676"
    %endif
    times 4 - ($ - %%insn_05676) db 0
    %%insn_0567a:
    mov ax,0xe380 ; 0567A B880E3
    %if ($ - %%insn_0567a) > 3
        %error "LONG_0567A"
    %endif
    times 3 - ($ - %%insn_0567a) db 0
    %%insn_0567d:
    mov [0xe374],ax ; 0567D A374E3
    %if ($ - %%insn_0567d) > 3
        %error "LONG_0567D"
    %endif
    times 3 - ($ - %%insn_0567d) db 0
    %%insn_05680:
    mov ax,0x893 ; 05680 B89308
    %if ($ - %%insn_05680) > 3
        %error "LONG_05680"
    %endif
    times 3 - ($ - %%insn_05680) db 0
    %%insn_05683:
    mov [0xe376],ax ; 05683 A376E3
    %if ($ - %%insn_05683) > 3
        %error "LONG_05683"
    %endif
    times 3 - ($ - %%insn_05683) db 0
    %%insn_05686:
    mov cl,[0xe3f2] ; 05686 8A0EF2E3
    %if ($ - %%insn_05686) > 4
        %error "LONG_05686"
    %endif
    times 4 - ($ - %%insn_05686) db 0
    db 0x32, 0xED ; 0568A 32ED | xor ch,ch | encoding preserved
    %%insn_0568c:
    mov bx,0xe366 ; 0568C BB66E3
    %if ($ - %%insn_0568c) > 3
        %error "LONG_0568C"
    %endif
    times 3 - ($ - %%insn_0568c) db 0
    %%insn_0568f:
    mov ax,0x1510 ; 0568F B81015
    %if ($ - %%insn_0568f) > 3
        %error "LONG_0568F"
    %endif
    times 3 - ($ - %%insn_0568f) db 0
    %%insn_05692:
    int byte 0x2f ; 05692 CD2F
    %if ($ - %%insn_05692) > 2
        %error "LONG_05692"
    %endif
    times 2 - ($ - %%insn_05692) db 0
    %%insn_05694:
    mov al,[0xe384] ; 05694 A084E3
    %if ($ - %%insn_05694) > 3
        %error "LONG_05694"
    %endif
    times 3 - ($ - %%insn_05694) db 0
    db 0x32, 0xE4 ; 05697 32E4 | xor ah,ah | encoding preserved
    db 0x33, 0xD2 ; 05699 33D2 | xor dx,dx | encoding preserved
    %%insn_0569b:
    mov cx,0x1194 ; 0569B B99411
    %if ($ - %%insn_0569b) > 3
        %error "LONG_0569B"
    %endif
    times 3 - ($ - %%insn_0569b) db 0
    %%insn_0569e:
    mul cx ; 0569E F7E1
    %if ($ - %%insn_0569e) > 2
        %error "LONG_0569E"
    %endif
    times 2 - ($ - %%insn_0569e) db 0
    db 0x8B, 0xCA ; 056A0 8BCA | mov cx,dx | encoding preserved
    db 0x8B, 0xD8 ; 056A2 8BD8 | mov bx,ax | encoding preserved
    %%insn_056a4:
    mov al,[0xe383] ; 056A4 A083E3
    %if ($ - %%insn_056a4) > 3
        %error "LONG_056A4"
    %endif
    times 3 - ($ - %%insn_056a4) db 0
    db 0x32, 0xE4 ; 056A7 32E4 | xor ah,ah | encoding preserved
    db 0x33, 0xD2 ; 056A9 33D2 | xor dx,dx | encoding preserved
    %%insn_056ab:
    mov cx,0x4b ; 056AB B94B00
    %if ($ - %%insn_056ab) > 3
        %error "LONG_056AB"
    %endif
    times 3 - ($ - %%insn_056ab) db 0
    %%insn_056ae:
    mul cx ; 056AE F7E1
    %if ($ - %%insn_056ae) > 2
        %error "LONG_056AE"
    %endif
    times 2 - ($ - %%insn_056ae) db 0
    db 0x03, 0xC3 ; 056B0 03C3 | add ax,bx | encoding preserved
    db 0x13, 0xD1 ; 056B2 13D1 | adc dx,cx | encoding preserved
    %%insn_056b4:
    mov bl,[0xe382] ; 056B4 8A1E82E3
    %if ($ - %%insn_056b4) > 4
        %error "LONG_056B4"
    %endif
    times 4 - ($ - %%insn_056b4) db 0
    db 0x32, 0xFF ; 056B8 32FF | xor bh,bh | encoding preserved
    db 0x03, 0xC3 ; 056BA 03C3 | add ax,bx | encoding preserved
    %%insn_056bc:
    adc dx,0x0 ; 056BC 83D200
    %if ($ - %%insn_056bc) > 3
        %error "LONG_056BC"
    %endif
    times 3 - ($ - %%insn_056bc) db 0
    %%insn_056bf:
    push ax ; 056BF 50
    %if ($ - %%insn_056bf) > 1
        %error "LONG_056BF"
    %endif
    times 1 - ($ - %%insn_056bf) db 0
    %%insn_056c0:
    push dx ; 056C0 52
    %if ($ - %%insn_056c0) > 1
        %error "LONG_056C0"
    %endif
    times 1 - ($ - %%insn_056c0) db 0
    %%insn_056c1:
    mov al,[0xe3df] ; 056C1 A0DFE3
    %if ($ - %%insn_056c1) > 3
        %error "LONG_056C1"
    %endif
    times 3 - ($ - %%insn_056c1) db 0
    db 0x32, 0xE4 ; 056C4 32E4 | xor ah,ah | encoding preserved
    db 0x33, 0xD2 ; 056C6 33D2 | xor dx,dx | encoding preserved
    %%insn_056c8:
    mov cx,0x1194 ; 056C8 B99411
    %if ($ - %%insn_056c8) > 3
        %error "LONG_056C8"
    %endif
    times 3 - ($ - %%insn_056c8) db 0
    %%insn_056cb:
    mul cx ; 056CB F7E1
    %if ($ - %%insn_056cb) > 2
        %error "LONG_056CB"
    %endif
    times 2 - ($ - %%insn_056cb) db 0
    db 0x8B, 0xCA ; 056CD 8BCA | mov cx,dx | encoding preserved
    db 0x8B, 0xD8 ; 056CF 8BD8 | mov bx,ax | encoding preserved
    %%insn_056d1:
    mov al,[0xe3de] ; 056D1 A0DEE3
    %if ($ - %%insn_056d1) > 3
        %error "LONG_056D1"
    %endif
    times 3 - ($ - %%insn_056d1) db 0
    db 0x32, 0xE4 ; 056D4 32E4 | xor ah,ah | encoding preserved
    db 0x33, 0xD2 ; 056D6 33D2 | xor dx,dx | encoding preserved
    %%insn_056d8:
    mov cx,0x4b ; 056D8 B94B00
    %if ($ - %%insn_056d8) > 3
        %error "LONG_056D8"
    %endif
    times 3 - ($ - %%insn_056d8) db 0
    %%insn_056db:
    mul cx ; 056DB F7E1
    %if ($ - %%insn_056db) > 2
        %error "LONG_056DB"
    %endif
    times 2 - ($ - %%insn_056db) db 0
    db 0x03, 0xC3 ; 056DD 03C3 | add ax,bx | encoding preserved
    db 0x13, 0xD1 ; 056DF 13D1 | adc dx,cx | encoding preserved
    %%insn_056e1:
    mov bl,[0xe3dd] ; 056E1 8A1EDDE3
    %if ($ - %%insn_056e1) > 4
        %error "LONG_056E1"
    %endif
    times 4 - ($ - %%insn_056e1) db 0
    db 0x32, 0xFF ; 056E5 32FF | xor bh,bh | encoding preserved
    db 0x03, 0xC3 ; 056E7 03C3 | add ax,bx | encoding preserved
    %%insn_056e9:
    adc dx,0x0 ; 056E9 83D200
    %if ($ - %%insn_056e9) > 3
        %error "LONG_056E9"
    %endif
    times 3 - ($ - %%insn_056e9) db 0
    %%insn_056ec:
    pop cx ; 056EC 59
    %if ($ - %%insn_056ec) > 1
        %error "LONG_056EC"
    %endif
    times 1 - ($ - %%insn_056ec) db 0
    %%insn_056ed:
    pop bx ; 056ED 5B
    %if ($ - %%insn_056ed) > 1
        %error "LONG_056ED"
    %endif
    times 1 - ($ - %%insn_056ed) db 0
    db 0x2B, 0xD8 ; 056EE 2BD8 | sub bx,ax | encoding preserved
    db 0x1B, 0xCA ; 056F0 1BCA | sbb cx,dx | encoding preserved
    %%insn_056f2:
    cmp byte [bp-0x2659],0x1 ; 056F2 80BEA7D901
    %if ($ - %%insn_056f2) > 5
        %error "LONG_056F2"
    %endif
    times 5 - ($ - %%insn_056f2) db 0
    %%insn_056f7:
    jnz short 0x56fe ; 056F7 7505
    %if ($ - %%insn_056f7) > 2
        %error "LONG_056F7"
    %endif
    times 2 - ($ - %%insn_056f7) db 0
    %%insn_056f9:
    mov bx,0x4858 ; 056F9 BB5848
    %if ($ - %%insn_056f9) > 3
        %error "LONG_056F9"
    %endif
    times 3 - ($ - %%insn_056f9) db 0
    db 0x33, 0xC9 ; 056FC 33C9 | xor cx,cx | encoding preserved
    %%insn_056fe:
    mov [0xe3e1],bx ; 056FE 891EE1E3
    %if ($ - %%insn_056fe) > 4
        %error "LONG_056FE"
    %endif
    times 4 - ($ - %%insn_056fe) db 0
    %%insn_05702:
    mov [0xe3e3],cx ; 05702 890EE3E3
    %if ($ - %%insn_05702) > 4
        %error "LONG_05702"
    %endif
    times 4 - ($ - %%insn_05702) db 0
    %%insn_05706:
    mov cl,[0xe3f2] ; 05706 8A0EF2E3
    %if ($ - %%insn_05706) > 4
        %error "LONG_05706"
    %endif
    times 4 - ($ - %%insn_05706) db 0
    db 0x32, 0xED ; 0570A 32ED | xor ch,ch | encoding preserved
    %%insn_0570c:
    mov bx,0xe3cf ; 0570C BBCFE3
    %if ($ - %%insn_0570c) > 3
        %error "LONG_0570C"
    %endif
    times 3 - ($ - %%insn_0570c) db 0
    %%insn_0570f:
    mov ax,0x1510 ; 0570F B81015
    %if ($ - %%insn_0570f) > 3
        %error "LONG_0570F"
    %endif
    times 3 - ($ - %%insn_0570f) db 0
    %%insn_05712:
    int byte 0x2f ; 05712 CD2F
    %if ($ - %%insn_05712) > 2
        %error "LONG_05712"
    %endif
    times 2 - ($ - %%insn_05712) db 0
    %%insn_05714:
    call 0x5728 ; 05714 E81100
    %if ($ - %%insn_05714) > 3
        %error "LONG_05714"
    %endif
    times 3 - ($ - %%insn_05714) db 0
    %%insn_05717:
    popa ; 05717 61
    %if ($ - %%insn_05717) > 1
        %error "LONG_05717"
    %endif
    times 1 - ($ - %%insn_05717) db 0
    %%insn_05718:
    ret ; 05718 C3
    %if ($ - %%insn_05718) > 1
        %error "LONG_05718"
    %endif
    times 1 - ($ - %%insn_05718) db 0
    %if ($ - %%fragment_start) != 285
        %error "SIZE_055FC"
    %endif
%endmacro
