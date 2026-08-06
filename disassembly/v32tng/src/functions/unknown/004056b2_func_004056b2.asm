; PE virtual entry 004056B2
; Ghidra working symbol: FUN_004056b2
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004056b2_part_00 0
    %%fragment_start:
func_004056b2:
    %%insn_004056b2:
    push ebp ; 004056B2 55
    %if ($ - %%insn_004056b2) > 1
        %error "LONG_004056B2"
    %endif
    times 1 - ($ - %%insn_004056b2) db 0
    db 0x8B, 0xEC ; 004056B3 8BEC | mov ebp,esp | encoding preserved
    %%insn_004056b5:
    sub esp,0x10 ; 004056B5 83EC10
    %if ($ - %%insn_004056b5) > 3
        %error "LONG_004056B5"
    %endif
    times 3 - ($ - %%insn_004056b5) db 0
    %%insn_004056b8:
    movsx eax,byte [0x4215b6] ; 004056B8 0FBE05B6154200
    %if ($ - %%insn_004056b8) > 7
        %error "LONG_004056B8"
    %endif
    times 7 - ($ - %%insn_004056b8) db 0
    %%insn_004056bf:
    mov ecx,[eax*4+0x41b770] ; 004056BF 8B0C8570B74100
    %if ($ - %%insn_004056bf) > 7
        %error "LONG_004056BF"
    %endif
    times 7 - ($ - %%insn_004056bf) db 0
    %%insn_004056c6:
    mov [ebp-0xc],ecx ; 004056C6 894DF4
    %if ($ - %%insn_004056c6) > 3
        %error "LONG_004056C6"
    %endif
    times 3 - ($ - %%insn_004056c6) db 0
    %%insn_004056c9:
    mov dl,[0x4215b1] ; 004056C9 8A15B1154200
    %if ($ - %%insn_004056c9) > 6
        %error "LONG_004056C9"
    %endif
    times 6 - ($ - %%insn_004056c9) db 0
    %%insn_004056cf:
    mov [ebp-0x7],dl ; 004056CF 8855F9
    %if ($ - %%insn_004056cf) > 3
        %error "LONG_004056CF"
    %endif
    times 3 - ($ - %%insn_004056cf) db 0
    %%insn_004056d2:
    mov al,[0x4215b2] ; 004056D2 A0B2154200
    %if ($ - %%insn_004056d2) > 5
        %error "LONG_004056D2"
    %endif
    times 5 - ($ - %%insn_004056d2) db 0
    %%insn_004056d7:
    mov [ebp-0x6],al ; 004056D7 8845FA
    %if ($ - %%insn_004056d7) > 3
        %error "LONG_004056D7"
    %endif
    times 3 - ($ - %%insn_004056d7) db 0
    %%insn_004056da:
    mov cl,[0x4215b3] ; 004056DA 8A0DB3154200
    %if ($ - %%insn_004056da) > 6
        %error "LONG_004056DA"
    %endif
    times 6 - ($ - %%insn_004056da) db 0
    %%insn_004056e0:
    mov [ebp-0x5],cl ; 004056E0 884DFB
    %if ($ - %%insn_004056e0) > 3
        %error "LONG_004056E0"
    %endif
    times 3 - ($ - %%insn_004056e0) db 0
    %%insn_004056e3:
    mov dl,[0x4215b4] ; 004056E3 8A15B4154200
    %if ($ - %%insn_004056e3) > 6
        %error "LONG_004056E3"
    %endif
    times 6 - ($ - %%insn_004056e3) db 0
    %%insn_004056e9:
    mov [ebp-0x4],dl ; 004056E9 8855FC
    %if ($ - %%insn_004056e9) > 3
        %error "LONG_004056E9"
    %endif
    times 3 - ($ - %%insn_004056e9) db 0
    %%insn_004056ec:
    movsx eax,byte [0x4215b7] ; 004056EC 0FBE05B7154200
    %if ($ - %%insn_004056ec) > 7
        %error "LONG_004056EC"
    %endif
    times 7 - ($ - %%insn_004056ec) db 0
    %%insn_004056f3:
    cmp eax,0x2 ; 004056F3 83F802
    %if ($ - %%insn_004056f3) > 3
        %error "LONG_004056F3"
    %endif
    times 3 - ($ - %%insn_004056f3) db 0
    %%insn_004056f6:
    jz short 0x40570b ; 004056F6 7413
    %if ($ - %%insn_004056f6) > 2
        %error "LONG_004056F6"
    %endif
    times 2 - ($ - %%insn_004056f6) db 0
    %%insn_004056f8:
    movsx ecx,byte [ebp+0xc] ; 004056F8 0FBE4D0C
    %if ($ - %%insn_004056f8) > 4
        %error "LONG_004056F8"
    %endif
    times 4 - ($ - %%insn_004056f8) db 0
    %%insn_004056fc:
    mov dl,[ebp+ecx-0x8] ; 004056FC 8A540DF8
    %if ($ - %%insn_004056fc) > 4
        %error "LONG_004056FC"
    %endif
    times 4 - ($ - %%insn_004056fc) db 0
    %%insn_00405700:
    add dl,0x1 ; 00405700 80C201
    %if ($ - %%insn_00405700) > 3
        %error "LONG_00405700"
    %endif
    times 3 - ($ - %%insn_00405700) db 0
    %%insn_00405703:
    movsx eax,byte [ebp+0xc] ; 00405703 0FBE450C
    %if ($ - %%insn_00405703) > 4
        %error "LONG_00405703"
    %endif
    times 4 - ($ - %%insn_00405703) db 0
    %%insn_00405707:
    mov [ebp+eax-0x8],dl ; 00405707 885405F8
    %if ($ - %%insn_00405707) > 4
        %error "LONG_00405707"
    %endif
    times 4 - ($ - %%insn_00405707) db 0
    %%insn_0040570b:
    mov ecx,[ebp-0xc] ; 0040570B 8B4DF4
    %if ($ - %%insn_0040570b) > 3
        %error "LONG_0040570B"
    %endif
    times 3 - ($ - %%insn_0040570b) db 0
    %%insn_0040570e:
    movsx dx,byte [ecx] ; 0040570E 660FBE11
    %if ($ - %%insn_0040570e) > 4
        %error "LONG_0040570E"
    %endif
    times 4 - ($ - %%insn_0040570e) db 0
    %%insn_00405712:
    mov [ebp-0x10],dx ; 00405712 668955F0
    %if ($ - %%insn_00405712) > 4
        %error "LONG_00405712"
    %endif
    times 4 - ($ - %%insn_00405712) db 0
    %%insn_00405716:
    mov eax,[ebp-0xc] ; 00405716 8B45F4
    %if ($ - %%insn_00405716) > 3
        %error "LONG_00405716"
    %endif
    times 3 - ($ - %%insn_00405716) db 0
    %%insn_00405719:
    add eax,0x1 ; 00405719 83C001
    %if ($ - %%insn_00405719) > 3
        %error "LONG_00405719"
    %endif
    times 3 - ($ - %%insn_00405719) db 0
    %%insn_0040571c:
    mov [ebp-0xc],eax ; 0040571C 8945F4
    %if ($ - %%insn_0040571c) > 3
        %error "LONG_0040571C"
    %endif
    times 3 - ($ - %%insn_0040571c) db 0
    %%insn_0040571f:
    movsx ecx,word [ebp-0x10] ; 0040571F 0FBF4DF0
    %if ($ - %%insn_0040571f) > 4
        %error "LONG_0040571F"
    %endif
    times 4 - ($ - %%insn_0040571f) db 0
    %%insn_00405723:
    movsx dx,byte [ecx+0x421580] ; 00405723 660FBE9180154200
    %if ($ - %%insn_00405723) > 8
        %error "LONG_00405723"
    %endif
    times 8 - ($ - %%insn_00405723) db 0
    %%insn_0040572b:
    mov [ebp-0x10],dx ; 0040572B 668955F0
    %if ($ - %%insn_0040572b) > 4
        %error "LONG_0040572B"
    %endif
    times 4 - ($ - %%insn_0040572b) db 0
    %%insn_0040572f:
    movsx eax,word [ebp-0x10] ; 0040572F 0FBF45F0
    %if ($ - %%insn_0040572f) > 4
        %error "LONG_0040572F"
    %endif
    times 4 - ($ - %%insn_0040572f) db 0
    %%insn_00405733:
    test eax,eax ; 00405733 85C0
    %if ($ - %%insn_00405733) > 2
        %error "LONG_00405733"
    %endif
    times 2 - ($ - %%insn_00405733) db 0
    %%insn_00405735:
    jng short 0x405765 ; 00405735 7E2E
    %if ($ - %%insn_00405735) > 2
        %error "LONG_00405735"
    %endif
    times 2 - ($ - %%insn_00405735) db 0
    %%insn_00405737:
    movsx ecx,word [ebp-0x10] ; 00405737 0FBF4DF0
    %if ($ - %%insn_00405737) > 4
        %error "LONG_00405737"
    %endif
    times 4 - ($ - %%insn_00405737) db 0
    %%insn_0040573b:
    mov dl,[ebp+ecx-0x8] ; 0040573B 8A540DF8
    %if ($ - %%insn_0040573b) > 4
        %error "LONG_0040573B"
    %endif
    times 4 - ($ - %%insn_0040573b) db 0
    %%insn_0040573f:
    sub dl,0x1 ; 0040573F 80EA01
    %if ($ - %%insn_0040573f) > 3
        %error "LONG_0040573F"
    %endif
    times 3 - ($ - %%insn_0040573f) db 0
    %%insn_00405742:
    movsx eax,word [ebp-0x10] ; 00405742 0FBF45F0
    %if ($ - %%insn_00405742) > 4
        %error "LONG_00405742"
    %endif
    times 4 - ($ - %%insn_00405742) db 0
    %%insn_00405746:
    mov [ebp+eax-0x8],dl ; 00405746 885405F8
    %if ($ - %%insn_00405746) > 4
        %error "LONG_00405746"
    %endif
    times 4 - ($ - %%insn_00405746) db 0
    %%insn_0040574a:
    movsx cx,byte [ebp+0xc] ; 0040574A 660FBE4D0C
    %if ($ - %%insn_0040574a) > 5
        %error "LONG_0040574A"
    %endif
    times 5 - ($ - %%insn_0040574a) db 0
    %%insn_0040574f:
    mov [ebp-0x10],cx ; 0040574F 66894DF0
    %if ($ - %%insn_0040574f) > 4
        %error "LONG_0040574F"
    %endif
    times 4 - ($ - %%insn_0040574f) db 0
    %%insn_00405753:
    movsx edx,word [ebp-0x10] ; 00405753 0FBF55F0
    %if ($ - %%insn_00405753) > 4
        %error "LONG_00405753"
    %endif
    times 4 - ($ - %%insn_00405753) db 0
    %%insn_00405757:
    mov al,[ebp+edx-0x8] ; 00405757 8A4415F8
    %if ($ - %%insn_00405757) > 4
        %error "LONG_00405757"
    %endif
    times 4 - ($ - %%insn_00405757) db 0
    %%insn_0040575b:
    add al,0x1 ; 0040575B 0401
    %if ($ - %%insn_0040575b) > 2
        %error "LONG_0040575B"
    %endif
    times 2 - ($ - %%insn_0040575b) db 0
    %%insn_0040575d:
    movsx ecx,word [ebp-0x10] ; 0040575D 0FBF4DF0
    %if ($ - %%insn_0040575d) > 4
        %error "LONG_0040575D"
    %endif
    times 4 - ($ - %%insn_0040575d) db 0
    %%insn_00405761:
    mov [ebp+ecx-0x8],al ; 00405761 88440DF8
    %if ($ - %%insn_00405761) > 4
        %error "LONG_00405761"
    %endif
    times 4 - ($ - %%insn_00405761) db 0
    %%insn_00405765:
    mov edx,[ebp-0xc] ; 00405765 8B55F4
    %if ($ - %%insn_00405765) > 3
        %error "LONG_00405765"
    %endif
    times 3 - ($ - %%insn_00405765) db 0
    %%insn_00405768:
    movsx ax,byte [edx] ; 00405768 660FBE02
    %if ($ - %%insn_00405768) > 4
        %error "LONG_00405768"
    %endif
    times 4 - ($ - %%insn_00405768) db 0
    %%insn_0040576c:
    mov [ebp-0x10],ax ; 0040576C 668945F0
    %if ($ - %%insn_0040576c) > 4
        %error "LONG_0040576C"
    %endif
    times 4 - ($ - %%insn_0040576c) db 0
    %%insn_00405770:
    mov ecx,[ebp-0xc] ; 00405770 8B4DF4
    %if ($ - %%insn_00405770) > 3
        %error "LONG_00405770"
    %endif
    times 3 - ($ - %%insn_00405770) db 0
    %%insn_00405773:
    add ecx,0x1 ; 00405773 83C101
    %if ($ - %%insn_00405773) > 3
        %error "LONG_00405773"
    %endif
    times 3 - ($ - %%insn_00405773) db 0
    %%insn_00405776:
    mov [ebp-0xc],ecx ; 00405776 894DF4
    %if ($ - %%insn_00405776) > 3
        %error "LONG_00405776"
    %endif
    times 3 - ($ - %%insn_00405776) db 0
    %%insn_00405779:
    movsx edx,word [ebp-0x10] ; 00405779 0FBF55F0
    %if ($ - %%insn_00405779) > 4
        %error "LONG_00405779"
    %endif
    times 4 - ($ - %%insn_00405779) db 0
    %%insn_0040577d:
    movsx ax,byte [edx+0x421580] ; 0040577D 660FBE8280154200
    %if ($ - %%insn_0040577d) > 8
        %error "LONG_0040577D"
    %endif
    times 8 - ($ - %%insn_0040577d) db 0
    %%insn_00405785:
    mov [ebp-0x10],ax ; 00405785 668945F0
    %if ($ - %%insn_00405785) > 4
        %error "LONG_00405785"
    %endif
    times 4 - ($ - %%insn_00405785) db 0
    %%insn_00405789:
    movsx ecx,word [ebp-0x10] ; 00405789 0FBF4DF0
    %if ($ - %%insn_00405789) > 4
        %error "LONG_00405789"
    %endif
    times 4 - ($ - %%insn_00405789) db 0
    %%insn_0040578d:
    test ecx,ecx ; 0040578D 85C9
    %if ($ - %%insn_0040578d) > 2
        %error "LONG_0040578D"
    %endif
    times 2 - ($ - %%insn_0040578d) db 0
    %%insn_0040578f:
    jng short 0x4057bf ; 0040578F 7E2E
    %if ($ - %%insn_0040578f) > 2
        %error "LONG_0040578F"
    %endif
    times 2 - ($ - %%insn_0040578f) db 0
    %%insn_00405791:
    movsx edx,word [ebp-0x10] ; 00405791 0FBF55F0
    %if ($ - %%insn_00405791) > 4
        %error "LONG_00405791"
    %endif
    times 4 - ($ - %%insn_00405791) db 0
    %%insn_00405795:
    mov al,[ebp+edx-0x8] ; 00405795 8A4415F8
    %if ($ - %%insn_00405795) > 4
        %error "LONG_00405795"
    %endif
    times 4 - ($ - %%insn_00405795) db 0
    %%insn_00405799:
    sub al,0x1 ; 00405799 2C01
    %if ($ - %%insn_00405799) > 2
        %error "LONG_00405799"
    %endif
    times 2 - ($ - %%insn_00405799) db 0
    %%insn_0040579b:
    movsx ecx,word [ebp-0x10] ; 0040579B 0FBF4DF0
    %if ($ - %%insn_0040579b) > 4
        %error "LONG_0040579B"
    %endif
    times 4 - ($ - %%insn_0040579b) db 0
    %%insn_0040579f:
    mov [ebp+ecx-0x8],al ; 0040579F 88440DF8
    %if ($ - %%insn_0040579f) > 4
        %error "LONG_0040579F"
    %endif
    times 4 - ($ - %%insn_0040579f) db 0
    %%insn_004057a3:
    movsx dx,byte [ebp+0xc] ; 004057A3 660FBE550C
    %if ($ - %%insn_004057a3) > 5
        %error "LONG_004057A3"
    %endif
    times 5 - ($ - %%insn_004057a3) db 0
    %%insn_004057a8:
    mov [ebp-0x10],dx ; 004057A8 668955F0
    %if ($ - %%insn_004057a8) > 4
        %error "LONG_004057A8"
    %endif
    times 4 - ($ - %%insn_004057a8) db 0
    %%insn_004057ac:
    movsx eax,word [ebp-0x10] ; 004057AC 0FBF45F0
    %if ($ - %%insn_004057ac) > 4
        %error "LONG_004057AC"
    %endif
    times 4 - ($ - %%insn_004057ac) db 0
    %%insn_004057b0:
    mov cl,[ebp+eax-0x8] ; 004057B0 8A4C05F8
    %if ($ - %%insn_004057b0) > 4
        %error "LONG_004057B0"
    %endif
    times 4 - ($ - %%insn_004057b0) db 0
    %%insn_004057b4:
    add cl,0x1 ; 004057B4 80C101
    %if ($ - %%insn_004057b4) > 3
        %error "LONG_004057B4"
    %endif
    times 3 - ($ - %%insn_004057b4) db 0
    %%insn_004057b7:
    movsx edx,word [ebp-0x10] ; 004057B7 0FBF55F0
    %if ($ - %%insn_004057b7) > 4
        %error "LONG_004057B7"
    %endif
    times 4 - ($ - %%insn_004057b7) db 0
    %%insn_004057bb:
    mov [ebp+edx-0x8],cl ; 004057BB 884C15F8
    %if ($ - %%insn_004057bb) > 4
        %error "LONG_004057BB"
    %endif
    times 4 - ($ - %%insn_004057bb) db 0
    %%insn_004057bf:
    mov eax,[ebp-0xc] ; 004057BF 8B45F4
    %if ($ - %%insn_004057bf) > 3
        %error "LONG_004057BF"
    %endif
    times 3 - ($ - %%insn_004057bf) db 0
    %%insn_004057c2:
    movsx cx,byte [eax] ; 004057C2 660FBE08
    %if ($ - %%insn_004057c2) > 4
        %error "LONG_004057C2"
    %endif
    times 4 - ($ - %%insn_004057c2) db 0
    %%insn_004057c6:
    mov [ebp-0x10],cx ; 004057C6 66894DF0
    %if ($ - %%insn_004057c6) > 4
        %error "LONG_004057C6"
    %endif
    times 4 - ($ - %%insn_004057c6) db 0
    %%insn_004057ca:
    mov edx,[ebp-0xc] ; 004057CA 8B55F4
    %if ($ - %%insn_004057ca) > 3
        %error "LONG_004057CA"
    %endif
    times 3 - ($ - %%insn_004057ca) db 0
    %%insn_004057cd:
    add edx,0x1 ; 004057CD 83C201
    %if ($ - %%insn_004057cd) > 3
        %error "LONG_004057CD"
    %endif
    times 3 - ($ - %%insn_004057cd) db 0
    %%insn_004057d0:
    mov [ebp-0xc],edx ; 004057D0 8955F4
    %if ($ - %%insn_004057d0) > 3
        %error "LONG_004057D0"
    %endif
    times 3 - ($ - %%insn_004057d0) db 0
    %%insn_004057d3:
    movsx eax,word [ebp-0x10] ; 004057D3 0FBF45F0
    %if ($ - %%insn_004057d3) > 4
        %error "LONG_004057D3"
    %endif
    times 4 - ($ - %%insn_004057d3) db 0
    %%insn_004057d7:
    movsx cx,byte [eax+0x421580] ; 004057D7 660FBE8880154200
    %if ($ - %%insn_004057d7) > 8
        %error "LONG_004057D7"
    %endif
    times 8 - ($ - %%insn_004057d7) db 0
    %%insn_004057df:
    mov [ebp-0x10],cx ; 004057DF 66894DF0
    %if ($ - %%insn_004057df) > 4
        %error "LONG_004057DF"
    %endif
    times 4 - ($ - %%insn_004057df) db 0
    %%insn_004057e3:
    movsx edx,word [ebp-0x10] ; 004057E3 0FBF55F0
    %if ($ - %%insn_004057e3) > 4
        %error "LONG_004057E3"
    %endif
    times 4 - ($ - %%insn_004057e3) db 0
    %%insn_004057e7:
    test edx,edx ; 004057E7 85D2
    %if ($ - %%insn_004057e7) > 2
        %error "LONG_004057E7"
    %endif
    times 2 - ($ - %%insn_004057e7) db 0
    %%insn_004057e9:
    jng short 0x40581a ; 004057E9 7E2F
    %if ($ - %%insn_004057e9) > 2
        %error "LONG_004057E9"
    %endif
    times 2 - ($ - %%insn_004057e9) db 0
    %%insn_004057eb:
    movsx eax,word [ebp-0x10] ; 004057EB 0FBF45F0
    %if ($ - %%insn_004057eb) > 4
        %error "LONG_004057EB"
    %endif
    times 4 - ($ - %%insn_004057eb) db 0
    %%insn_004057ef:
    mov cl,[ebp+eax-0x8] ; 004057EF 8A4C05F8
    %if ($ - %%insn_004057ef) > 4
        %error "LONG_004057EF"
    %endif
    times 4 - ($ - %%insn_004057ef) db 0
    %%insn_004057f3:
    sub cl,0x1 ; 004057F3 80E901
    %if ($ - %%insn_004057f3) > 3
        %error "LONG_004057F3"
    %endif
    times 3 - ($ - %%insn_004057f3) db 0
    %%insn_004057f6:
    movsx edx,word [ebp-0x10] ; 004057F6 0FBF55F0
    %if ($ - %%insn_004057f6) > 4
        %error "LONG_004057F6"
    %endif
    times 4 - ($ - %%insn_004057f6) db 0
    %%insn_004057fa:
    mov [ebp+edx-0x8],cl ; 004057FA 884C15F8
    %if ($ - %%insn_004057fa) > 4
        %error "LONG_004057FA"
    %endif
    times 4 - ($ - %%insn_004057fa) db 0
    %%insn_004057fe:
    movsx ax,byte [ebp+0xc] ; 004057FE 660FBE450C
    %if ($ - %%insn_004057fe) > 5
        %error "LONG_004057FE"
    %endif
    times 5 - ($ - %%insn_004057fe) db 0
    %%insn_00405803:
    mov [ebp-0x10],ax ; 00405803 668945F0
    %if ($ - %%insn_00405803) > 4
        %error "LONG_00405803"
    %endif
    times 4 - ($ - %%insn_00405803) db 0
    %%insn_00405807:
    movsx ecx,word [ebp-0x10] ; 00405807 0FBF4DF0
    %if ($ - %%insn_00405807) > 4
        %error "LONG_00405807"
    %endif
    times 4 - ($ - %%insn_00405807) db 0
    %%insn_0040580b:
    mov dl,[ebp+ecx-0x8] ; 0040580B 8A540DF8
    %if ($ - %%insn_0040580b) > 4
        %error "LONG_0040580B"
    %endif
    times 4 - ($ - %%insn_0040580b) db 0
    %%insn_0040580f:
    add dl,0x1 ; 0040580F 80C201
    %if ($ - %%insn_0040580f) > 3
        %error "LONG_0040580F"
    %endif
    times 3 - ($ - %%insn_0040580f) db 0
    %%insn_00405812:
    movsx eax,word [ebp-0x10] ; 00405812 0FBF45F0
    %if ($ - %%insn_00405812) > 4
        %error "LONG_00405812"
    %endif
    times 4 - ($ - %%insn_00405812) db 0
    %%insn_00405816:
    mov [ebp+eax-0x8],dl ; 00405816 885405F8
    %if ($ - %%insn_00405816) > 4
        %error "LONG_00405816"
    %endif
    times 4 - ($ - %%insn_00405816) db 0
    %%insn_0040581a:
    mov ecx,[ebp-0xc] ; 0040581A 8B4DF4
    %if ($ - %%insn_0040581a) > 3
        %error "LONG_0040581A"
    %endif
    times 3 - ($ - %%insn_0040581a) db 0
    %%insn_0040581d:
    movsx dx,byte [ecx] ; 0040581D 660FBE11
    %if ($ - %%insn_0040581d) > 4
        %error "LONG_0040581D"
    %endif
    times 4 - ($ - %%insn_0040581d) db 0
    %%insn_00405821:
    mov [ebp-0x10],dx ; 00405821 668955F0
    %if ($ - %%insn_00405821) > 4
        %error "LONG_00405821"
    %endif
    times 4 - ($ - %%insn_00405821) db 0
    %%insn_00405825:
    movsx eax,word [ebp-0x10] ; 00405825 0FBF45F0
    %if ($ - %%insn_00405825) > 4
        %error "LONG_00405825"
    %endif
    times 4 - ($ - %%insn_00405825) db 0
    %%insn_00405829:
    mov ecx,[ebp-0xc] ; 00405829 8B4DF4
    %if ($ - %%insn_00405829) > 3
        %error "LONG_00405829"
    %endif
    times 3 - ($ - %%insn_00405829) db 0
    %%insn_0040582c:
    add ecx,0x1 ; 0040582C 83C101
    %if ($ - %%insn_0040582c) > 3
        %error "LONG_0040582C"
    %endif
    times 3 - ($ - %%insn_0040582c) db 0
    %%insn_0040582f:
    mov [ebp-0xc],ecx ; 0040582F 894DF4
    %if ($ - %%insn_0040582f) > 3
        %error "LONG_0040582F"
    %endif
    times 3 - ($ - %%insn_0040582f) db 0
    %%insn_00405832:
    test eax,eax ; 00405832 85C0
    %if ($ - %%insn_00405832) > 2
        %error "LONG_00405832"
    %endif
    times 2 - ($ - %%insn_00405832) db 0
    %%insn_00405834:
    jl short 0x40587e ; 00405834 7C48
    %if ($ - %%insn_00405834) > 2
        %error "LONG_00405834"
    %endif
    times 2 - ($ - %%insn_00405834) db 0
    %%insn_00405836:
    movsx edx,word [ebp-0x10] ; 00405836 0FBF55F0
    %if ($ - %%insn_00405836) > 4
        %error "LONG_00405836"
    %endif
    times 4 - ($ - %%insn_00405836) db 0
    %%insn_0040583a:
    movsx ax,byte [edx+0x421580] ; 0040583A 660FBE8280154200
    %if ($ - %%insn_0040583a) > 8
        %error "LONG_0040583A"
    %endif
    times 8 - ($ - %%insn_0040583a) db 0
    %%insn_00405842:
    mov [ebp-0x10],ax ; 00405842 668945F0
    %if ($ - %%insn_00405842) > 4
        %error "LONG_00405842"
    %endif
    times 4 - ($ - %%insn_00405842) db 0
    %%insn_00405846:
    movsx ecx,word [ebp-0x10] ; 00405846 0FBF4DF0
    %if ($ - %%insn_00405846) > 4
        %error "LONG_00405846"
    %endif
    times 4 - ($ - %%insn_00405846) db 0
    %%insn_0040584a:
    test ecx,ecx ; 0040584A 85C9
    %if ($ - %%insn_0040584a) > 2
        %error "LONG_0040584A"
    %endif
    times 2 - ($ - %%insn_0040584a) db 0
    %%insn_0040584c:
    jng short 0x40587c ; 0040584C 7E2E
    %if ($ - %%insn_0040584c) > 2
        %error "LONG_0040584C"
    %endif
    times 2 - ($ - %%insn_0040584c) db 0
    %%insn_0040584e:
    movsx edx,word [ebp-0x10] ; 0040584E 0FBF55F0
    %if ($ - %%insn_0040584e) > 4
        %error "LONG_0040584E"
    %endif
    times 4 - ($ - %%insn_0040584e) db 0
    %%insn_00405852:
    mov al,[ebp+edx-0x8] ; 00405852 8A4415F8
    %if ($ - %%insn_00405852) > 4
        %error "LONG_00405852"
    %endif
    times 4 - ($ - %%insn_00405852) db 0
    %%insn_00405856:
    sub al,0x1 ; 00405856 2C01
    %if ($ - %%insn_00405856) > 2
        %error "LONG_00405856"
    %endif
    times 2 - ($ - %%insn_00405856) db 0
    %%insn_00405858:
    movsx ecx,word [ebp-0x10] ; 00405858 0FBF4DF0
    %if ($ - %%insn_00405858) > 4
        %error "LONG_00405858"
    %endif
    times 4 - ($ - %%insn_00405858) db 0
    %%insn_0040585c:
    mov [ebp+ecx-0x8],al ; 0040585C 88440DF8
    %if ($ - %%insn_0040585c) > 4
        %error "LONG_0040585C"
    %endif
    times 4 - ($ - %%insn_0040585c) db 0
    %%insn_00405860:
    movsx dx,byte [ebp+0xc] ; 00405860 660FBE550C
    %if ($ - %%insn_00405860) > 5
        %error "LONG_00405860"
    %endif
    times 5 - ($ - %%insn_00405860) db 0
    %%insn_00405865:
    mov [ebp-0x10],dx ; 00405865 668955F0
    %if ($ - %%insn_00405865) > 4
        %error "LONG_00405865"
    %endif
    times 4 - ($ - %%insn_00405865) db 0
    %%insn_00405869:
    movsx eax,word [ebp-0x10] ; 00405869 0FBF45F0
    %if ($ - %%insn_00405869) > 4
        %error "LONG_00405869"
    %endif
    times 4 - ($ - %%insn_00405869) db 0
    %%insn_0040586d:
    mov cl,[ebp+eax-0x8] ; 0040586D 8A4C05F8
    %if ($ - %%insn_0040586d) > 4
        %error "LONG_0040586D"
    %endif
    times 4 - ($ - %%insn_0040586d) db 0
    %%insn_00405871:
    add cl,0x1 ; 00405871 80C101
    %if ($ - %%insn_00405871) > 3
        %error "LONG_00405871"
    %endif
    times 3 - ($ - %%insn_00405871) db 0
    %%insn_00405874:
    movsx edx,word [ebp-0x10] ; 00405874 0FBF55F0
    %if ($ - %%insn_00405874) > 4
        %error "LONG_00405874"
    %endif
    times 4 - ($ - %%insn_00405874) db 0
    %%insn_00405878:
    mov [ebp+edx-0x8],cl ; 00405878 884C15F8
    %if ($ - %%insn_00405878) > 4
        %error "LONG_00405878"
    %endif
    times 4 - ($ - %%insn_00405878) db 0
    %%insn_0040587c:
    jmp short 0x40581a ; 0040587C EB9C
    %if ($ - %%insn_0040587c) > 2
        %error "LONG_0040587C"
    %endif
    times 2 - ($ - %%insn_0040587c) db 0
    %%insn_0040587e:
    movsx eax,byte [ebp+0x8] ; 0040587E 0FBE4508
    %if ($ - %%insn_0040587e) > 4
        %error "LONG_0040587E"
    %endif
    times 4 - ($ - %%insn_0040587e) db 0
    %%insn_00405882:
    movsx ecx,byte [ebp+eax-0x8] ; 00405882 0FBE4C05F8
    %if ($ - %%insn_00405882) > 5
        %error "LONG_00405882"
    %endif
    times 5 - ($ - %%insn_00405882) db 0
    %%insn_00405887:
    shl ecx,1 ; 00405887 D1E1
    %if ($ - %%insn_00405887) > 2
        %error "LONG_00405887"
    %endif
    times 2 - ($ - %%insn_00405887) db 0
    %%insn_00405889:
    movsx edx,byte [ebp-0x7] ; 00405889 0FBE55F9
    %if ($ - %%insn_00405889) > 4
        %error "LONG_00405889"
    %endif
    times 4 - ($ - %%insn_00405889) db 0
    db 0x2B, 0xCA ; 0040588D 2BCA | sub ecx,edx | encoding preserved
    %%insn_0040588f:
    movsx eax,byte [ebp-0x6] ; 0040588F 0FBE45FA
    %if ($ - %%insn_0040588f) > 4
        %error "LONG_0040588F"
    %endif
    times 4 - ($ - %%insn_0040588f) db 0
    db 0x2B, 0xC8 ; 00405893 2BC8 | sub ecx,eax | encoding preserved
    %%insn_00405895:
    movsx edx,byte [ebp-0x5] ; 00405895 0FBE55FB
    %if ($ - %%insn_00405895) > 4
        %error "LONG_00405895"
    %endif
    times 4 - ($ - %%insn_00405895) db 0
    db 0x2B, 0xCA ; 00405899 2BCA | sub ecx,edx | encoding preserved
    %%insn_0040589b:
    movsx eax,byte [ebp-0x4] ; 0040589B 0FBE45FC
    %if ($ - %%insn_0040589b) > 4
        %error "LONG_0040589B"
    %endif
    times 4 - ($ - %%insn_0040589b) db 0
    db 0x2B, 0xC8 ; 0040589F 2BC8 | sub ecx,eax | encoding preserved
    %%insn_004058a1:
    movsx edx,byte [0x41f45c] ; 004058A1 0FBE155CF44100
    %if ($ - %%insn_004058a1) > 7
        %error "LONG_004058A1"
    %endif
    times 7 - ($ - %%insn_004058a1) db 0
    %%insn_004058a8:
    lea eax,[edx+ecx*2] ; 004058A8 8D044A
    %if ($ - %%insn_004058a8) > 3
        %error "LONG_004058A8"
    %endif
    times 3 - ($ - %%insn_004058a8) db 0
    db 0x8B, 0xE5 ; 004058AB 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004058ad:
    pop ebp ; 004058AD 5D
    %if ($ - %%insn_004058ad) > 1
        %error "LONG_004058AD"
    %endif
    times 1 - ($ - %%insn_004058ad) db 0
    %%insn_004058ae:
    ret ; 004058AE C3
    %if ($ - %%insn_004058ae) > 1
        %error "LONG_004058AE"
    %endif
    times 1 - ($ - %%insn_004058ae) db 0
    %if ($ - %%fragment_start) != 509
        %error "function fragment size drift: 004056B2"
    %endif
%endmacro
