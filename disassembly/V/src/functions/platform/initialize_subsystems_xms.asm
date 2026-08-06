; Linear entry 0576E (1000:576e)
; Ghidra working symbol: FUN_1000_576e
; Cross-version mapped main subsystem/XMS initialization.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_initialize_subsystems_xms_part_00 0
    %%fragment_start:
initialize_subsystems_xms:
    %%insn_0576e:
    pusha ; 0576E 60
    %if ($ - %%insn_0576e) > 1
        %error "LONG_0576E"
    %endif
    times 1 - ($ - %%insn_0576e) db 0
    %%insn_0576f:
    push es ; 0576F 06
    %if ($ - %%insn_0576f) > 1
        %error "LONG_0576F"
    %endif
    times 1 - ($ - %%insn_0576f) db 0
    %%insn_05770:
    push ds ; 05770 1E
    %if ($ - %%insn_05770) > 1
        %error "LONG_05770"
    %endif
    times 1 - ($ - %%insn_05770) db 0
    %%insn_05771:
    call word 0x702:word 0x6d3 ; 05771 9AD3060207
    %if ($ - %%insn_05771) > 5
        %error "LONG_05771"
    %endif
    times 5 - ($ - %%insn_05771) db 0
    db 0x33, 0xED ; 05776 33ED | xor bp,bp | encoding preserved
    %%insn_05778:
    call 0x5057 ; 05778 E8DCF8
    %if ($ - %%insn_05778) > 3
        %error "LONG_05778"
    %endif
    times 3 - ($ - %%insn_05778) db 0
    %%insn_0577b:
    cmp word [bp-0x1b8a],0x80 ; 0577B 81BE76E48000
    %if ($ - %%insn_0577b) > 6
        %error "LONG_0577B"
    %endif
    times 6 - ($ - %%insn_0577b) db 0
    %%insn_05781:
    jz 0x59dc ; 05781 0F845702
    %if ($ - %%insn_05781) > 4
        %error "LONG_05781"
    %endif
    times 4 - ($ - %%insn_05781) db 0
    %%insn_05785:
    push ds ; 05785 1E
    %if ($ - %%insn_05785) > 1
        %error "LONG_05785"
    %endif
    times 1 - ($ - %%insn_05785) db 0
    %%insn_05786:
    mov ax,0x893 ; 05786 B89308
    %if ($ - %%insn_05786) > 3
        %error "LONG_05786"
    %endif
    times 3 - ($ - %%insn_05786) db 0
    %%insn_05789:
    mov ds,ax ; 05789 8ED8
    %if ($ - %%insn_05789) > 2
        %error "LONG_05789"
    %endif
    times 2 - ($ - %%insn_05789) db 0
    %%insn_0578b:
    mov dx,0xe454 ; 0578B BA54E4
    %if ($ - %%insn_0578b) > 3
        %error "LONG_0578B"
    %endif
    times 3 - ($ - %%insn_0578b) db 0
    %%insn_0578e:
    call 0x5734 ; 0578E E8A3FF
    %if ($ - %%insn_0578e) > 3
        %error "LONG_0578E"
    %endif
    times 3 - ($ - %%insn_0578e) db 0
    db 0x3D, 0xFF, 0xFF ; 05791 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_05794:
    jnz short 0x579c ; 05794 7506
    %if ($ - %%insn_05794) > 2
        %error "LONG_05794"
    %endif
    times 2 - ($ - %%insn_05794) db 0
    %%insn_05796:
    mov ax,0x935 ; 05796 B83509
    %if ($ - %%insn_05796) > 3
        %error "LONG_05796"
    %endif
    times 3 - ($ - %%insn_05796) db 0
    %%insn_05799:
    jmp 0x5ced ; 05799 E95105
    %if ($ - %%insn_05799) > 3
        %error "LONG_05799"
    %endif
    times 3 - ($ - %%insn_05799) db 0
    db 0x33, 0xD2 ; 0579C 33D2 | xor dx,dx | encoding preserved
    %%insn_0579e:
    mov cx,0xffff ; 0579E B9FFFF
    %if ($ - %%insn_0579e) > 3
        %error "LONG_0579E"
    %endif
    times 3 - ($ - %%insn_0579e) db 0
    %%insn_057a1:
    mov ds,word [bp-0x2aaa] ; 057A1 8E9E56D5
    %if ($ - %%insn_057a1) > 4
        %error "LONG_057A1"
    %endif
    times 4 - ($ - %%insn_057a1) db 0
    %%insn_057a5:
    call 0x5754 ; 057A5 E8ACFF
    %if ($ - %%insn_057a5) > 3
        %error "LONG_057A5"
    %endif
    times 3 - ($ - %%insn_057a5) db 0
    %%insn_057a8:
    mov [bp-0x1bee],ax ; 057A8 898612E4
    %if ($ - %%insn_057a8) > 4
        %error "LONG_057A8"
    %endif
    times 4 - ($ - %%insn_057a8) db 0
    db 0x8B, 0xC8 ; 057AC 8BC8 | mov cx,ax | encoding preserved
    %%insn_057ae:
    call 0x5ea9 ; 057AE E8F806
    %if ($ - %%insn_057ae) > 3
        %error "LONG_057AE"
    %endif
    times 3 - ($ - %%insn_057ae) db 0
    %%insn_057b1:
    mov [bp-0x1bd4],ax ; 057B1 89862CE4
    %if ($ - %%insn_057b1) > 4
        %error "LONG_057B1"
    %endif
    times 4 - ($ - %%insn_057b1) db 0
    %%insn_057b5:
    call 0x575e ; 057B5 E8A6FF
    %if ($ - %%insn_057b5) > 3
        %error "LONG_057B5"
    %endif
    times 3 - ($ - %%insn_057b5) db 0
    db 0x33, 0xD2 ; 057B8 33D2 | xor dx,dx | encoding preserved
    %%insn_057ba:
    mov cx,[bp-0x1bee] ; 057BA 8B8E12E4
    %if ($ - %%insn_057ba) > 4
        %error "LONG_057BA"
    %endif
    times 4 - ($ - %%insn_057ba) db 0
    %%insn_057be:
    mov ds,word [bp-0x1bd4] ; 057BE 8E9E2CE4
    %if ($ - %%insn_057be) > 4
        %error "LONG_057BE"
    %endif
    times 4 - ($ - %%insn_057be) db 0
    %%insn_057c2:
    call 0x5754 ; 057C2 E88FFF
    %if ($ - %%insn_057c2) > 3
        %error "LONG_057C2"
    %endif
    times 3 - ($ - %%insn_057c2) db 0
    %%insn_057c5:
    call 0x574a ; 057C5 E882FF
    %if ($ - %%insn_057c5) > 3
        %error "LONG_057C5"
    %endif
    times 3 - ($ - %%insn_057c5) db 0
    %%insn_057c8:
    mov ds,word [bp-0x2aae] ; 057C8 8E9E52D5
    %if ($ - %%insn_057c8) > 4
        %error "LONG_057C8"
    %endif
    times 4 - ($ - %%insn_057c8) db 0
    %%insn_057cc:
    cmp byte [bp-0x1f3a],0x0 ; 057CC 80BEC6E000
    %if ($ - %%insn_057cc) > 5
        %error "LONG_057CC"
    %endif
    times 5 - ($ - %%insn_057cc) db 0
    %%insn_057d1:
    jnz short 0x5810 ; 057D1 753D
    %if ($ - %%insn_057d1) > 2
        %error "LONG_057D1"
    %endif
    times 2 - ($ - %%insn_057d1) db 0
    %%insn_057d3:
    mov dx,0xe468 ; 057D3 BA68E4
    %if ($ - %%insn_057d3) > 3
        %error "LONG_057D3"
    %endif
    times 3 - ($ - %%insn_057d3) db 0
    %%insn_057d6:
    call 0x5734 ; 057D6 E85BFF
    %if ($ - %%insn_057d6) > 3
        %error "LONG_057D6"
    %endif
    times 3 - ($ - %%insn_057d6) db 0
    db 0x3D, 0xFF, 0xFF ; 057D9 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_057dc:
    jnz short 0x57e4 ; 057DC 7506
    %if ($ - %%insn_057dc) > 2
        %error "LONG_057DC"
    %endif
    times 2 - ($ - %%insn_057dc) db 0
    %%insn_057de:
    mov ax,0x935 ; 057DE B83509
    %if ($ - %%insn_057de) > 3
        %error "LONG_057DE"
    %endif
    times 3 - ($ - %%insn_057de) db 0
    %%insn_057e1:
    jmp 0x5ced ; 057E1 E90905
    %if ($ - %%insn_057e1) > 3
        %error "LONG_057E1"
    %endif
    times 3 - ($ - %%insn_057e1) db 0
    db 0x33, 0xD2 ; 057E4 33D2 | xor dx,dx | encoding preserved
    %%insn_057e6:
    mov cx,0xffff ; 057E6 B9FFFF
    %if ($ - %%insn_057e6) > 3
        %error "LONG_057E6"
    %endif
    times 3 - ($ - %%insn_057e6) db 0
    %%insn_057e9:
    mov ds,word [bp-0x2aaa] ; 057E9 8E9E56D5
    %if ($ - %%insn_057e9) > 4
        %error "LONG_057E9"
    %endif
    times 4 - ($ - %%insn_057e9) db 0
    %%insn_057ed:
    call 0x5754 ; 057ED E864FF
    %if ($ - %%insn_057ed) > 3
        %error "LONG_057ED"
    %endif
    times 3 - ($ - %%insn_057ed) db 0
    %%insn_057f0:
    mov [bp-0x1bf0],ax ; 057F0 898610E4
    %if ($ - %%insn_057f0) > 4
        %error "LONG_057F0"
    %endif
    times 4 - ($ - %%insn_057f0) db 0
    db 0x8B, 0xC8 ; 057F4 8BC8 | mov cx,ax | encoding preserved
    %%insn_057f6:
    call 0x5ea9 ; 057F6 E8B006
    %if ($ - %%insn_057f6) > 3
        %error "LONG_057F6"
    %endif
    times 3 - ($ - %%insn_057f6) db 0
    %%insn_057f9:
    mov [bp-0x1bd6],ax ; 057F9 89862AE4
    %if ($ - %%insn_057f9) > 4
        %error "LONG_057F9"
    %endif
    times 4 - ($ - %%insn_057f9) db 0
    %%insn_057fd:
    call 0x575e ; 057FD E85EFF
    %if ($ - %%insn_057fd) > 3
        %error "LONG_057FD"
    %endif
    times 3 - ($ - %%insn_057fd) db 0
    db 0x33, 0xD2 ; 05800 33D2 | xor dx,dx | encoding preserved
    %%insn_05802:
    mov cx,[bp-0x1bf0] ; 05802 8B8E10E4
    %if ($ - %%insn_05802) > 4
        %error "LONG_05802"
    %endif
    times 4 - ($ - %%insn_05802) db 0
    %%insn_05806:
    mov ds,word [bp-0x1bd6] ; 05806 8E9E2AE4
    %if ($ - %%insn_05806) > 4
        %error "LONG_05806"
    %endif
    times 4 - ($ - %%insn_05806) db 0
    %%insn_0580a:
    call 0x5754 ; 0580A E847FF
    %if ($ - %%insn_0580a) > 3
        %error "LONG_0580A"
    %endif
    times 3 - ($ - %%insn_0580a) db 0
    %%insn_0580d:
    call 0x574a ; 0580D E83AFF
    %if ($ - %%insn_0580d) > 3
        %error "LONG_0580D"
    %endif
    times 3 - ($ - %%insn_0580d) db 0
    %%insn_05810:
    pop ds ; 05810 1F
    %if ($ - %%insn_05810) > 1
        %error "LONG_05810"
    %endif
    times 1 - ($ - %%insn_05810) db 0
    %%insn_05811:
    cmp byte [bp-0x1f3a],0x0 ; 05811 80BEC6E000
    %if ($ - %%insn_05811) > 5
        %error "LONG_05811"
    %endif
    times 5 - ($ - %%insn_05811) db 0
    %%insn_05816:
    jnz 0x58f6 ; 05816 0F85DC00
    %if ($ - %%insn_05816) > 4
        %error "LONG_05816"
    %endif
    times 4 - ($ - %%insn_05816) db 0
    db 0x33, 0xF6 ; 0581A 33F6 | xor si,si | encoding preserved
    %%insn_0581c:
    mov ax,[bp-0x1bd6] ; 0581C 8B862AE4
    %if ($ - %%insn_0581c) > 4
        %error "LONG_0581C"
    %endif
    times 4 - ($ - %%insn_0581c) db 0
    %%insn_05820:
    push ax ; 05820 50
    %if ($ - %%insn_05820) > 1
        %error "LONG_05820"
    %endif
    times 1 - ($ - %%insn_05820) db 0
    %%insn_05821:
    push si ; 05821 56
    %if ($ - %%insn_05821) > 1
        %error "LONG_05821"
    %endif
    times 1 - ($ - %%insn_05821) db 0
    %%insn_05822:
    call word 0x702:word 0xa27 ; 05822 9A270A0207
    %if ($ - %%insn_05822) > 5
        %error "LONG_05822"
    %endif
    times 5 - ($ - %%insn_05822) db 0
    %%insn_05827:
    add sp,0x4 ; 05827 83C404
    %if ($ - %%insn_05827) > 3
        %error "LONG_05827"
    %endif
    times 3 - ($ - %%insn_05827) db 0
    db 0x3D, 0xFF, 0xFF ; 0582A 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_0582d:
    jnz short 0x5835 ; 0582D 7506
    %if ($ - %%insn_0582d) > 2
        %error "LONG_0582D"
    %endif
    times 2 - ($ - %%insn_0582d) db 0
    %%insn_0582f:
    mov ax,0x956 ; 0582F B85609
    %if ($ - %%insn_0582f) > 3
        %error "LONG_0582F"
    %endif
    times 3 - ($ - %%insn_0582f) db 0
    %%insn_05832:
    jmp 0x5ced ; 05832 E9B804
    %if ($ - %%insn_05832) > 3
        %error "LONG_05832"
    %endif
    times 3 - ($ - %%insn_05832) db 0
    %%insn_05835:
    mov [bp-0x1bcc],ax ; 05835 898634E4
    %if ($ - %%insn_05835) > 4
        %error "LONG_05835"
    %endif
    times 4 - ($ - %%insn_05835) db 0
    %%insn_05839:
    mov word [bp-0x1be6],0x0 ; 05839 C7861AE40000
    %if ($ - %%insn_05839) > 6
        %error "LONG_05839"
    %endif
    times 6 - ($ - %%insn_05839) db 0
    %%insn_0583f:
    mov word [bp-0x1be4],0xd3 ; 0583F C7861CE4D300
    %if ($ - %%insn_0583f) > 6
        %error "LONG_0583F"
    %endif
    times 6 - ($ - %%insn_0583f) db 0
    %%insn_05845:
    mov dword [bp-0x1be2],0x0 ; 05845 66C7861EE400000000
    %if ($ - %%insn_05845) > 9
        %error "LONG_05845"
    %endif
    times 9 - ($ - %%insn_05845) db 0
    %%insn_0584e:
    mov dword [bp-0x1bde],0x0 ; 0584E 66C78622E400000000
    %if ($ - %%insn_0584e) > 9
        %error "LONG_0584E"
    %endif
    times 9 - ($ - %%insn_0584e) db 0
    %%insn_05857:
    push word [bp-0x1bcc] ; 05857 FFB634E4
    %if ($ - %%insn_05857) > 4
        %error "LONG_05857"
    %endif
    times 4 - ($ - %%insn_05857) db 0
    %%insn_0585b:
    call word 0x702:word 0xb51 ; 0585B 9A510B0207
    %if ($ - %%insn_0585b) > 5
        %error "LONG_0585B"
    %endif
    times 5 - ($ - %%insn_0585b) db 0
    %%insn_05860:
    add sp,0x2 ; 05860 83C402
    %if ($ - %%insn_05860) > 3
        %error "LONG_05860"
    %endif
    times 3 - ($ - %%insn_05860) db 0
    %%insn_05863:
    mov es,dx ; 05863 8EC2
    %if ($ - %%insn_05863) > 2
        %error "LONG_05863"
    %endif
    times 2 - ($ - %%insn_05863) db 0
    db 0x8B, 0xF8 ; 05865 8BF8 | mov di,ax | encoding preserved
    %%insn_05867:
    mov [bp-0x1bb4],dx ; 05867 89964CE4
    %if ($ - %%insn_05867) > 4
        %error "LONG_05867"
    %endif
    times 4 - ($ - %%insn_05867) db 0
    %%insn_0586b:
    mov [bp-0x1bb2],ax ; 0586B 89864EE4
    %if ($ - %%insn_0586b) > 4
        %error "LONG_0586B"
    %endif
    times 4 - ($ - %%insn_0586b) db 0
    %%insn_0586f:
    mov dx,[es:di+0x2] ; 0586F 268B5502
    %if ($ - %%insn_0586f) > 4
        %error "LONG_0586F"
    %endif
    times 4 - ($ - %%insn_0586f) db 0
    %%insn_05873:
    cmp dx,0x2 ; 05873 83FA02
    %if ($ - %%insn_05873) > 3
        %error "LONG_05873"
    %endif
    times 3 - ($ - %%insn_05873) db 0
    %%insn_05876:
    jz short 0x587e ; 05876 7406
    %if ($ - %%insn_05876) > 2
        %error "LONG_05876"
    %endif
    times 2 - ($ - %%insn_05876) db 0
    %%insn_05878:
    mov ax,0x838 ; 05878 B83808
    %if ($ - %%insn_05878) > 3
        %error "LONG_05878"
    %endif
    times 3 - ($ - %%insn_05878) db 0
    %%insn_0587b:
    jmp 0x5ced ; 0587B E96F04
    %if ($ - %%insn_0587b) > 3
        %error "LONG_0587B"
    %endif
    times 3 - ($ - %%insn_0587b) db 0
    %%insn_0587e:
    cmp word [bp-0x1b9e],0xffffffffffffffff ; 0587E 83BE62E4FF
    %if ($ - %%insn_0587e) > 5
        %error "LONG_0587E"
    %endif
    times 5 - ($ - %%insn_0587e) db 0
    %%insn_05883:
    jz short 0x588d ; 05883 7408
    %if ($ - %%insn_05883) > 2
        %error "LONG_05883"
    %endif
    times 2 - ($ - %%insn_05883) db 0
    %%insn_05885:
    mov ax,[bp-0x1b9e] ; 05885 8B8662E4
    %if ($ - %%insn_05885) > 4
        %error "LONG_05885"
    %endif
    times 4 - ($ - %%insn_05885) db 0
    %%insn_05889:
    mov [es:di+0xe],ax ; 05889 2689450E
    %if ($ - %%insn_05889) > 4
        %error "LONG_05889"
    %endif
    times 4 - ($ - %%insn_05889) db 0
    %%insn_0588d:
    cmp word [bp-0x1b9c],0xffffffffffffffff ; 0588D 83BE64E4FF
    %if ($ - %%insn_0588d) > 5
        %error "LONG_0588D"
    %endif
    times 5 - ($ - %%insn_0588d) db 0
    %%insn_05892:
    jz short 0x589c ; 05892 7408
    %if ($ - %%insn_05892) > 2
        %error "LONG_05892"
    %endif
    times 2 - ($ - %%insn_05892) db 0
    %%insn_05894:
    mov ax,[bp-0x1b9c] ; 05894 8B8664E4
    %if ($ - %%insn_05894) > 4
        %error "LONG_05894"
    %endif
    times 4 - ($ - %%insn_05894) db 0
    %%insn_05898:
    mov [es:di+0xc],ax ; 05898 2689450C
    %if ($ - %%insn_05898) > 4
        %error "LONG_05898"
    %endif
    times 4 - ($ - %%insn_05898) db 0
    %%insn_0589c:
    cmp word [bp-0x1b9a],0xffffffffffffffff ; 0589C 83BE66E4FF
    %if ($ - %%insn_0589c) > 5
        %error "LONG_0589C"
    %endif
    times 5 - ($ - %%insn_0589c) db 0
    %%insn_058a1:
    jz short 0x58ab ; 058A1 7408
    %if ($ - %%insn_058a1) > 2
        %error "LONG_058A1"
    %endif
    times 2 - ($ - %%insn_058a1) db 0
    %%insn_058a3:
    mov ax,[bp-0x1b9a] ; 058A3 8B8666E4
    %if ($ - %%insn_058a3) > 4
        %error "LONG_058A3"
    %endif
    times 4 - ($ - %%insn_058a3) db 0
    %%insn_058a7:
    mov [es:di+0x10],ax ; 058A7 26894510
    %if ($ - %%insn_058a7) > 4
        %error "LONG_058A7"
    %endif
    times 4 - ($ - %%insn_058a7) db 0
    %%insn_058ab:
    push word [es:di+0x12] ; 058AB 26FF7512
    %if ($ - %%insn_058ab) > 4
        %error "LONG_058AB"
    %endif
    times 4 - ($ - %%insn_058ab) db 0
    %%insn_058af:
    push word [es:di+0x10] ; 058AF 26FF7510
    %if ($ - %%insn_058af) > 4
        %error "LONG_058AF"
    %endif
    times 4 - ($ - %%insn_058af) db 0
    %%insn_058b3:
    push word [es:di+0xe] ; 058B3 26FF750E
    %if ($ - %%insn_058b3) > 4
        %error "LONG_058B3"
    %endif
    times 4 - ($ - %%insn_058b3) db 0
    %%insn_058b7:
    push word [es:di+0xc] ; 058B7 26FF750C
    %if ($ - %%insn_058b7) > 4
        %error "LONG_058B7"
    %endif
    times 4 - ($ - %%insn_058b7) db 0
    %%insn_058bb:
    push word [bp-0x1bcc] ; 058BB FFB634E4
    %if ($ - %%insn_058bb) > 4
        %error "LONG_058BB"
    %endif
    times 4 - ($ - %%insn_058bb) db 0
    %%insn_058bf:
    call word 0x702:word 0xb77 ; 058BF 9A770B0207
    %if ($ - %%insn_058bf) > 5
        %error "LONG_058BF"
    %endif
    times 5 - ($ - %%insn_058bf) db 0
    %%insn_058c4:
    add sp,0xa ; 058C4 83C40A
    %if ($ - %%insn_058c4) > 3
        %error "LONG_058C4"
    %endif
    times 3 - ($ - %%insn_058c4) db 0
    db 0x3D, 0x00, 0x00 ; 058C7 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_058ca:
    jnz short 0x58d2 ; 058CA 7506
    %if ($ - %%insn_058ca) > 2
        %error "LONG_058CA"
    %endif
    times 2 - ($ - %%insn_058ca) db 0
    %%insn_058cc:
    mov ax,0x978 ; 058CC B87809
    %if ($ - %%insn_058cc) > 3
        %error "LONG_058CC"
    %endif
    times 3 - ($ - %%insn_058cc) db 0
    %%insn_058cf:
    jmp 0x5ced ; 058CF E91B04
    %if ($ - %%insn_058cf) > 3
        %error "LONG_058CF"
    %endif
    times 3 - ($ - %%insn_058cf) db 0
    %%insn_058d2:
    mov es,word [bp-0x1bb4] ; 058D2 8E864CE4
    %if ($ - %%insn_058d2) > 4
        %error "LONG_058D2"
    %endif
    times 4 - ($ - %%insn_058d2) db 0
    %%insn_058d6:
    mov di,[bp-0x1bb2] ; 058D6 8BBE4EE4
    %if ($ - %%insn_058d6) > 4
        %error "LONG_058D6"
    %endif
    times 4 - ($ - %%insn_058d6) db 0
    %%insn_058da:
    push word [es:di+0x12] ; 058DA 26FF7512
    %if ($ - %%insn_058da) > 4
        %error "LONG_058DA"
    %endif
    times 4 - ($ - %%insn_058da) db 0
    %%insn_058de:
    push word [es:di+0x10] ; 058DE 26FF7510
    %if ($ - %%insn_058de) > 4
        %error "LONG_058DE"
    %endif
    times 4 - ($ - %%insn_058de) db 0
    %%insn_058e2:
    push word [es:di+0xe] ; 058E2 26FF750E
    %if ($ - %%insn_058e2) > 4
        %error "LONG_058E2"
    %endif
    times 4 - ($ - %%insn_058e2) db 0
    %%insn_058e6:
    push word [es:di+0xc] ; 058E6 26FF750C
    %if ($ - %%insn_058e6) > 4
        %error "LONG_058E6"
    %endif
    times 4 - ($ - %%insn_058e6) db 0
    %%insn_058ea:
    push word [bp-0x1bcc] ; 058EA FFB634E4
    %if ($ - %%insn_058ea) > 4
        %error "LONG_058EA"
    %endif
    times 4 - ($ - %%insn_058ea) db 0
    %%insn_058ee:
    call word 0x702:word 0xb7d ; 058EE 9A7D0B0207
    %if ($ - %%insn_058ee) > 5
        %error "LONG_058EE"
    %endif
    times 5 - ($ - %%insn_058ee) db 0
    %%insn_058f3:
    add sp,0xa ; 058F3 83C40A
    %if ($ - %%insn_058f3) > 3
        %error "LONG_058F3"
    %endif
    times 3 - ($ - %%insn_058f3) db 0
    db 0x33, 0xF6 ; 058F6 33F6 | xor si,si | encoding preserved
    %%insn_058f8:
    mov ax,[bp-0x1bd4] ; 058F8 8B862CE4
    %if ($ - %%insn_058f8) > 4
        %error "LONG_058F8"
    %endif
    times 4 - ($ - %%insn_058f8) db 0
    %%insn_058fc:
    push ax ; 058FC 50
    %if ($ - %%insn_058fc) > 1
        %error "LONG_058FC"
    %endif
    times 1 - ($ - %%insn_058fc) db 0
    %%insn_058fd:
    push si ; 058FD 56
    %if ($ - %%insn_058fd) > 1
        %error "LONG_058FD"
    %endif
    times 1 - ($ - %%insn_058fd) db 0
    %%insn_058fe:
    call word 0x702:word 0xa27 ; 058FE 9A270A0207
    %if ($ - %%insn_058fe) > 5
        %error "LONG_058FE"
    %endif
    times 5 - ($ - %%insn_058fe) db 0
    %%insn_05903:
    add sp,0x4 ; 05903 83C404
    %if ($ - %%insn_05903) > 3
        %error "LONG_05903"
    %endif
    times 3 - ($ - %%insn_05903) db 0
    db 0x3D, 0xFF, 0xFF ; 05906 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_05909:
    jnz short 0x5911 ; 05909 7506
    %if ($ - %%insn_05909) > 2
        %error "LONG_05909"
    %endif
    times 2 - ($ - %%insn_05909) db 0
    %%insn_0590b:
    mov ax,0x956 ; 0590B B85609
    %if ($ - %%insn_0590b) > 3
        %error "LONG_0590B"
    %endif
    times 3 - ($ - %%insn_0590b) db 0
    %%insn_0590e:
    jmp 0x5ced ; 0590E E9DC03
    %if ($ - %%insn_0590e) > 3
        %error "LONG_0590E"
    %endif
    times 3 - ($ - %%insn_0590e) db 0
    %%insn_05911:
    mov [bp-0x1bce],ax ; 05911 898632E4
    %if ($ - %%insn_05911) > 4
        %error "LONG_05911"
    %endif
    times 4 - ($ - %%insn_05911) db 0
    %%insn_05915:
    push word [bp-0x1bce] ; 05915 FFB632E4
    %if ($ - %%insn_05915) > 4
        %error "LONG_05915"
    %endif
    times 4 - ($ - %%insn_05915) db 0
    %%insn_05919:
    call word 0x702:word 0xb51 ; 05919 9A510B0207
    %if ($ - %%insn_05919) > 5
        %error "LONG_05919"
    %endif
    times 5 - ($ - %%insn_05919) db 0
    %%insn_0591e:
    add sp,0x2 ; 0591E 83C402
    %if ($ - %%insn_0591e) > 3
        %error "LONG_0591E"
    %endif
    times 3 - ($ - %%insn_0591e) db 0
    %%insn_05921:
    mov es,dx ; 05921 8EC2
    %if ($ - %%insn_05921) > 2
        %error "LONG_05921"
    %endif
    times 2 - ($ - %%insn_05921) db 0
    db 0x8B, 0xF8 ; 05923 8BF8 | mov di,ax | encoding preserved
    %%insn_05925:
    mov [bp-0x1bb8],dx ; 05925 899648E4
    %if ($ - %%insn_05925) > 4
        %error "LONG_05925"
    %endif
    times 4 - ($ - %%insn_05925) db 0
    %%insn_05929:
    mov [bp-0x1bb6],ax ; 05929 89864AE4
    %if ($ - %%insn_05929) > 4
        %error "LONG_05929"
    %endif
    times 4 - ($ - %%insn_05929) db 0
    %%insn_0592d:
    mov dx,[es:di+0x2] ; 0592D 268B5502
    %if ($ - %%insn_0592d) > 4
        %error "LONG_0592D"
    %endif
    times 4 - ($ - %%insn_0592d) db 0
    %%insn_05931:
    cmp dx,0x3 ; 05931 83FA03
    %if ($ - %%insn_05931) > 3
        %error "LONG_05931"
    %endif
    times 3 - ($ - %%insn_05931) db 0
    %%insn_05934:
    jz short 0x593c ; 05934 7406
    %if ($ - %%insn_05934) > 2
        %error "LONG_05934"
    %endif
    times 2 - ($ - %%insn_05934) db 0
    %%insn_05936:
    mov ax,0x838 ; 05936 B83808
    %if ($ - %%insn_05936) > 3
        %error "LONG_05936"
    %endif
    times 3 - ($ - %%insn_05936) db 0
    %%insn_05939:
    jmp 0x5ced ; 05939 E9B103
    %if ($ - %%insn_05939) > 3
        %error "LONG_05939"
    %endif
    times 3 - ($ - %%insn_05939) db 0
    %%insn_0593c:
    cmp word [bp-0x1bb0],0xffffffffffffffff ; 0593C 83BE50E4FF
    %if ($ - %%insn_0593c) > 5
        %error "LONG_0593C"
    %endif
    times 5 - ($ - %%insn_0593c) db 0
    %%insn_05941:
    jz short 0x594b ; 05941 7408
    %if ($ - %%insn_05941) > 2
        %error "LONG_05941"
    %endif
    times 2 - ($ - %%insn_05941) db 0
    %%insn_05943:
    mov ax,[bp-0x1bb0] ; 05943 8B8650E4
    %if ($ - %%insn_05943) > 4
        %error "LONG_05943"
    %endif
    times 4 - ($ - %%insn_05943) db 0
    %%insn_05947:
    mov [es:di+0xe],ax ; 05947 2689450E
    %if ($ - %%insn_05947) > 4
        %error "LONG_05947"
    %endif
    times 4 - ($ - %%insn_05947) db 0
    %%insn_0594b:
    cmp word [bp-0x1bae],0xffffffffffffffff ; 0594B 83BE52E4FF
    %if ($ - %%insn_0594b) > 5
        %error "LONG_0594B"
    %endif
    times 5 - ($ - %%insn_0594b) db 0
    %%insn_05950:
    jz short 0x595a ; 05950 7408
    %if ($ - %%insn_05950) > 2
        %error "LONG_05950"
    %endif
    times 2 - ($ - %%insn_05950) db 0
    %%insn_05952:
    mov ax,[bp-0x1bae] ; 05952 8B8652E4
    %if ($ - %%insn_05952) > 4
        %error "LONG_05952"
    %endif
    times 4 - ($ - %%insn_05952) db 0
    %%insn_05956:
    mov [es:di+0xc],ax ; 05956 2689450C
    %if ($ - %%insn_05956) > 4
        %error "LONG_05956"
    %endif
    times 4 - ($ - %%insn_05956) db 0
    %%insn_0595a:
    push word [es:di+0x12] ; 0595A 26FF7512
    %if ($ - %%insn_0595a) > 4
        %error "LONG_0595A"
    %endif
    times 4 - ($ - %%insn_0595a) db 0
    %%insn_0595e:
    push word [es:di+0x10] ; 0595E 26FF7510
    %if ($ - %%insn_0595e) > 4
        %error "LONG_0595E"
    %endif
    times 4 - ($ - %%insn_0595e) db 0
    %%insn_05962:
    push word [es:di+0xe] ; 05962 26FF750E
    %if ($ - %%insn_05962) > 4
        %error "LONG_05962"
    %endif
    times 4 - ($ - %%insn_05962) db 0
    %%insn_05966:
    push word [es:di+0xc] ; 05966 26FF750C
    %if ($ - %%insn_05966) > 4
        %error "LONG_05966"
    %endif
    times 4 - ($ - %%insn_05966) db 0
    %%insn_0596a:
    push word [bp-0x1bce] ; 0596A FFB632E4
    %if ($ - %%insn_0596a) > 4
        %error "LONG_0596A"
    %endif
    times 4 - ($ - %%insn_0596a) db 0
    %%insn_0596e:
    call word 0x702:word 0xb77 ; 0596E 9A770B0207
    %if ($ - %%insn_0596e) > 5
        %error "LONG_0596E"
    %endif
    times 5 - ($ - %%insn_0596e) db 0
    %%insn_05973:
    add sp,0xa ; 05973 83C40A
    %if ($ - %%insn_05973) > 3
        %error "LONG_05973"
    %endif
    times 3 - ($ - %%insn_05973) db 0
    db 0x3D, 0x00, 0x00 ; 05976 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_05979:
    jnz short 0x5981 ; 05979 7506
    %if ($ - %%insn_05979) > 2
        %error "LONG_05979"
    %endif
    times 2 - ($ - %%insn_05979) db 0
    %%insn_0597b:
    mov ax,0xa2a ; 0597B B82A0A
    %if ($ - %%insn_0597b) > 3
        %error "LONG_0597B"
    %endif
    times 3 - ($ - %%insn_0597b) db 0
    %%insn_0597e:
    jmp 0x5ced ; 0597E E96C03
    %if ($ - %%insn_0597e) > 3
        %error "LONG_0597E"
    %endif
    times 3 - ($ - %%insn_0597e) db 0
    %%insn_05981:
    mov es,word [bp-0x1bb8] ; 05981 8E8648E4
    %if ($ - %%insn_05981) > 4
        %error "LONG_05981"
    %endif
    times 4 - ($ - %%insn_05981) db 0
    %%insn_05985:
    mov di,[bp-0x1bb6] ; 05985 8BBE4AE4
    %if ($ - %%insn_05985) > 4
        %error "LONG_05985"
    %endif
    times 4 - ($ - %%insn_05985) db 0
    %%insn_05989:
    mov bx,0xe47d ; 05989 BB7DE4
    %if ($ - %%insn_05989) > 3
        %error "LONG_05989"
    %endif
    times 3 - ($ - %%insn_05989) db 0
    %%insn_0598c:
    push di ; 0598C 57
    %if ($ - %%insn_0598c) > 1
        %error "LONG_0598C"
    %endif
    times 1 - ($ - %%insn_0598c) db 0
    %%insn_0598d:
    mov al,[es:di+0x4] ; 0598D 268A4504
    %if ($ - %%insn_0598d) > 4
        %error "LONG_0598D"
    %endif
    times 4 - ($ - %%insn_0598d) db 0
    %%insn_05991:
    mov [ss:bx],al ; 05991 368807
    %if ($ - %%insn_05991) > 3
        %error "LONG_05991"
    %endif
    times 3 - ($ - %%insn_05991) db 0
    %%insn_05994:
    inc bx ; 05994 43
    %if ($ - %%insn_05994) > 1
        %error "LONG_05994"
    %endif
    times 1 - ($ - %%insn_05994) db 0
    %%insn_05995:
    inc di ; 05995 47
    %if ($ - %%insn_05995) > 1
        %error "LONG_05995"
    %endif
    times 1 - ($ - %%insn_05995) db 0
    db 0x22, 0xC0 ; 05996 22C0 | and al,al | encoding preserved
    %%insn_05998:
    jnz short 0x598d ; 05998 75F3
    %if ($ - %%insn_05998) > 2
        %error "LONG_05998"
    %endif
    times 2 - ($ - %%insn_05998) db 0
    %%insn_0599a:
    pop di ; 0599A 5F
    %if ($ - %%insn_0599a) > 1
        %error "LONG_0599A"
    %endif
    times 1 - ($ - %%insn_0599a) db 0
    %%insn_0599b:
    push word [es:di+0x12] ; 0599B 26FF7512
    %if ($ - %%insn_0599b) > 4
        %error "LONG_0599B"
    %endif
    times 4 - ($ - %%insn_0599b) db 0
    %%insn_0599f:
    push word [es:di+0x10] ; 0599F 26FF7510
    %if ($ - %%insn_0599f) > 4
        %error "LONG_0599F"
    %endif
    times 4 - ($ - %%insn_0599f) db 0
    %%insn_059a3:
    push word [es:di+0xe] ; 059A3 26FF750E
    %if ($ - %%insn_059a3) > 4
        %error "LONG_059A3"
    %endif
    times 4 - ($ - %%insn_059a3) db 0
    %%insn_059a7:
    push word [es:di+0xc] ; 059A7 26FF750C
    %if ($ - %%insn_059a7) > 4
        %error "LONG_059A7"
    %endif
    times 4 - ($ - %%insn_059a7) db 0
    %%insn_059ab:
    push word [bp-0x1bce] ; 059AB FFB632E4
    %if ($ - %%insn_059ab) > 4
        %error "LONG_059AB"
    %endif
    times 4 - ($ - %%insn_059ab) db 0
    %%insn_059af:
    call word 0x702:word 0xb7d ; 059AF 9A7D0B0207
    %if ($ - %%insn_059af) > 5
        %error "LONG_059AF"
    %endif
    times 5 - ($ - %%insn_059af) db 0
    %%insn_059b4:
    add sp,0xa ; 059B4 83C40A
    %if ($ - %%insn_059b4) > 3
        %error "LONG_059B4"
    %endif
    times 3 - ($ - %%insn_059b4) db 0
    %%insn_059b7:
    push word [bp-0x1bce] ; 059B7 FFB632E4
    %if ($ - %%insn_059b7) > 4
        %error "LONG_059B7"
    %endif
    times 4 - ($ - %%insn_059b7) db 0
    %%insn_059bb:
    call word 0x702:word 0xcce ; 059BB 9ACE0C0207
    %if ($ - %%insn_059bb) > 5
        %error "LONG_059BB"
    %endif
    times 5 - ($ - %%insn_059bb) db 0
    %%insn_059c0:
    add sp,0x2 ; 059C0 83C402
    %if ($ - %%insn_059c0) > 3
        %error "LONG_059C0"
    %endif
    times 3 - ($ - %%insn_059c0) db 0
    db 0x23, 0xC0 ; 059C3 23C0 | and ax,ax | encoding preserved
    %%insn_059c5:
    jz short 0x59dc ; 059C5 7415
    %if ($ - %%insn_059c5) > 2
        %error "LONG_059C5"
    %endif
    times 2 - ($ - %%insn_059c5) db 0
    db 0x8B, 0xC8 ; 059C7 8BC8 | mov cx,ax | encoding preserved
    %%insn_059c9:
    call 0x5ea9 ; 059C9 E8DD04
    %if ($ - %%insn_059c9) > 3
        %error "LONG_059C9"
    %endif
    times 3 - ($ - %%insn_059c9) db 0
    %%insn_059cc:
    push cx ; 059CC 51
    %if ($ - %%insn_059cc) > 1
        %error "LONG_059CC"
    %endif
    times 1 - ($ - %%insn_059cc) db 0
    %%insn_059cd:
    push ax ; 059CD 50
    %if ($ - %%insn_059cd) > 1
        %error "LONG_059CD"
    %endif
    times 1 - ($ - %%insn_059cd) db 0
    %%insn_059ce:
    push word 0x0 ; 059CE 6A00
    %if ($ - %%insn_059ce) > 2
        %error "LONG_059CE"
    %endif
    times 2 - ($ - %%insn_059ce) db 0
    %%insn_059d0:
    push word [bp-0x1bce] ; 059D0 FFB632E4
    %if ($ - %%insn_059d0) > 4
        %error "LONG_059D0"
    %endif
    times 4 - ($ - %%insn_059d0) db 0
    %%insn_059d4:
    call word 0x702:word 0xcd4 ; 059D4 9AD40C0207
    %if ($ - %%insn_059d4) > 5
        %error "LONG_059D4"
    %endif
    times 5 - ($ - %%insn_059d4) db 0
    %%insn_059d9:
    add sp,0x8 ; 059D9 83C408
    %if ($ - %%insn_059d9) > 3
        %error "LONG_059D9"
    %endif
    times 3 - ($ - %%insn_059d9) db 0
    %%insn_059dc:
    mov si,0x5ce2 ; 059DC BEE25C
    %if ($ - %%insn_059dc) > 3
        %error "LONG_059DC"
    %endif
    times 3 - ($ - %%insn_059dc) db 0
    %%insn_059df:
    mov ax,0x0 ; 059DF B80000
    %if ($ - %%insn_059df) > 3
        %error "LONG_059DF"
    %endif
    times 3 - ($ - %%insn_059df) db 0
    %%insn_059e2:
    push ax ; 059E2 50
    %if ($ - %%insn_059e2) > 1
        %error "LONG_059E2"
    %endif
    times 1 - ($ - %%insn_059e2) db 0
    %%insn_059e3:
    push si ; 059E3 56
    %if ($ - %%insn_059e3) > 1
        %error "LONG_059E3"
    %endif
    times 1 - ($ - %%insn_059e3) db 0
    %%insn_059e4:
    call word 0x702:word 0x783 ; 059E4 9A83070207
    %if ($ - %%insn_059e4) > 5
        %error "LONG_059E4"
    %endif
    times 5 - ($ - %%insn_059e4) db 0
    %%insn_059e9:
    add sp,0x4 ; 059E9 83C404
    %if ($ - %%insn_059e9) > 3
        %error "LONG_059E9"
    %endif
    times 3 - ($ - %%insn_059e9) db 0
    db 0x3D, 0xFF, 0xFF ; 059EC 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_059ef:
    jnz short 0x59f7 ; 059EF 7506
    %if ($ - %%insn_059ef) > 2
        %error "LONG_059EF"
    %endif
    times 2 - ($ - %%insn_059ef) db 0
    %%insn_059f1:
    mov ax,0x878 ; 059F1 B87808
    %if ($ - %%insn_059f1) > 3
        %error "LONG_059F1"
    %endif
    times 3 - ($ - %%insn_059f1) db 0
    %%insn_059f4:
    jmp 0x5ced ; 059F4 E9F602
    %if ($ - %%insn_059f4) > 3
        %error "LONG_059F4"
    %endif
    times 3 - ($ - %%insn_059f4) db 0
    %%insn_059f7:
    mov [bp-0x1bca],ax ; 059F7 898636E4
    %if ($ - %%insn_059f7) > 4
        %error "LONG_059F7"
    %endif
    times 4 - ($ - %%insn_059f7) db 0
    %%insn_059fb:
    push word 0x0 ; 059FB 6A00
    %if ($ - %%insn_059fb) > 2
        %error "LONG_059FB"
    %endif
    times 2 - ($ - %%insn_059fb) db 0
    %%insn_059fd:
    push word [bp-0x2656] ; 059FD FFB6AAD9
    %if ($ - %%insn_059fd) > 4
        %error "LONG_059FD"
    %endif
    times 4 - ($ - %%insn_059fd) db 0
    %%insn_05a01:
    push word [bp-0x1bca] ; 05A01 FFB636E4
    %if ($ - %%insn_05a01) > 4
        %error "LONG_05A01"
    %endif
    times 4 - ($ - %%insn_05a01) db 0
    %%insn_05a05:
    call word 0x702:word 0x996 ; 05A05 9A96090207
    %if ($ - %%insn_05a05) > 5
        %error "LONG_05A05"
    %endif
    times 5 - ($ - %%insn_05a05) db 0
    %%insn_05a0a:
    add sp,0x6 ; 05A0A 83C406
    %if ($ - %%insn_05a0a) > 3
        %error "LONG_05A0A"
    %endif
    times 3 - ($ - %%insn_05a0a) db 0
    %%insn_05a0d:
    push word [bp-0x1bca] ; 05A0D FFB636E4
    %if ($ - %%insn_05a0d) > 4
        %error "LONG_05A0D"
    %endif
    times 4 - ($ - %%insn_05a0d) db 0
    %%insn_05a11:
    call word 0x702:word 0x8b5 ; 05A11 9AB5080207
    %if ($ - %%insn_05a11) > 5
        %error "LONG_05A11"
    %endif
    times 5 - ($ - %%insn_05a11) db 0
    %%insn_05a16:
    add sp,0x2 ; 05A16 83C402
    %if ($ - %%insn_05a16) > 3
        %error "LONG_05A16"
    %endif
    times 3 - ($ - %%insn_05a16) db 0
    %%insn_05a19:
    mov ax,0x3524 ; 05A19 B82435
    %if ($ - %%insn_05a19) > 3
        %error "LONG_05A19"
    %endif
    times 3 - ($ - %%insn_05a19) db 0
    %%insn_05a1c:
    int byte 0x21 ; 05A1C CD21
    %if ($ - %%insn_05a1c) > 2
        %error "LONG_05A1C"
    %endif
    times 2 - ($ - %%insn_05a1c) db 0
    %%insn_05a1e:
    mov [bp-0x1bf4],bx ; 05A1E 899E0CE4
    %if ($ - %%insn_05a1e) > 4
        %error "LONG_05A1E"
    %endif
    times 4 - ($ - %%insn_05a1e) db 0
    %%insn_05a22:
    mov word [bp-0x1bf2],es ; 05A22 8C860EE4
    %if ($ - %%insn_05a22) > 4
        %error "LONG_05A22"
    %endif
    times 4 - ($ - %%insn_05a22) db 0
    %%insn_05a26:
    mov ax,0x0 ; 05A26 B80000
    %if ($ - %%insn_05a26) > 3
        %error "LONG_05A26"
    %endif
    times 3 - ($ - %%insn_05a26) db 0
    %%insn_05a29:
    mov ds,ax ; 05A29 8ED8
    %if ($ - %%insn_05a29) > 2
        %error "LONG_05A29"
    %endif
    times 2 - ($ - %%insn_05a29) db 0
    %%insn_05a2b:
    mov dx,0x5e6d ; 05A2B BA6D5E
    %if ($ - %%insn_05a2b) > 3
        %error "LONG_05A2B"
    %endif
    times 3 - ($ - %%insn_05a2b) db 0
    %%insn_05a2e:
    mov ax,0x2524 ; 05A2E B82425
    %if ($ - %%insn_05a2e) > 3
        %error "LONG_05A2E"
    %endif
    times 3 - ($ - %%insn_05a2e) db 0
    %%insn_05a31:
    int byte 0x21 ; 05A31 CD21
    %if ($ - %%insn_05a31) > 2
        %error "LONG_05A31"
    %endif
    times 2 - ($ - %%insn_05a31) db 0
    %%insn_05a33:
    pop ds ; 05A33 1F
    %if ($ - %%insn_05a33) > 1
        %error "LONG_05A33"
    %endif
    times 1 - ($ - %%insn_05a33) db 0
    %%insn_05a34:
    pop es ; 05A34 07
    %if ($ - %%insn_05a34) > 1
        %error "LONG_05A34"
    %endif
    times 1 - ($ - %%insn_05a34) db 0
    %%insn_05a35:
    popa ; 05A35 61
    %if ($ - %%insn_05a35) > 1
        %error "LONG_05A35"
    %endif
    times 1 - ($ - %%insn_05a35) db 0
    %%insn_05a36:
    ret ; 05A36 C3
    %if ($ - %%insn_05a36) > 1
        %error "LONG_05A36"
    %endif
    times 1 - ($ - %%insn_05a36) db 0
    %if ($ - %%fragment_start) != 713
        %error "SIZE_0576E"
    %endif
%endmacro
