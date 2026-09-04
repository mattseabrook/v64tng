; PE virtual entry 0040A7AA
; Ghidra working symbol: FUN_0040a7aa
; Verified GRV 37h rectangle background-to-foreground copy.
; Despite the historical COPY_RECT_TO_BG opcode name, source is [004212D0]
; and destination is the 640x480 foreground [0042133C]. Native bounds copy
; (right-left) bytes for every row top..bottom inclusive.
; Retail V.EXE 023A5 uses the same direction with right/bottom-exclusive
; extents; only the Win32 bottom-row rule diverges.
; Generated losslessly; preserve byte identity after edits.

%macro emit_copy_background_rectangle_to_foreground_0040a7aa_part_00 0
    %%fragment_start:
copy_background_rectangle_to_foreground_0040a7aa:
    %%insn_0040a7aa:
    push ebp ; 0040A7AA 55
    %if ($ - %%insn_0040a7aa) > 1
        %error "LONG_0040A7AA"
    %endif
    times 1 - ($ - %%insn_0040a7aa) db 0
    db 0x8B, 0xEC ; 0040A7AB 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040a7ad:
    sub esp,0x10 ; 0040A7AD 83EC10
    %if ($ - %%insn_0040a7ad) > 3
        %error "LONG_0040A7AD"
    %endif
    times 3 - ($ - %%insn_0040a7ad) db 0
    %%insn_0040a7b0:
    mov eax,[0x42133c] ; 0040A7B0 A13C134200
    %if ($ - %%insn_0040a7b0) > 5
        %error "LONG_0040A7B0"
    %endif
    times 5 - ($ - %%insn_0040a7b0) db 0
    %%insn_0040a7b5:
    mov [ebp-0xc],eax ; 0040A7B5 8945F4
    %if ($ - %%insn_0040a7b5) > 3
        %error "LONG_0040A7B5"
    %endif
    times 3 - ($ - %%insn_0040a7b5) db 0
    %%insn_0040a7b8:
    mov ecx,[ebp+0xc] ; 0040A7B8 8B4D0C
    %if ($ - %%insn_0040a7b8) > 3
        %error "LONG_0040A7B8"
    %endif
    times 3 - ($ - %%insn_0040a7b8) db 0
    %%insn_0040a7bb:
    imul ecx,ecx,0x280 ; 0040A7BB 69C980020000
    %if ($ - %%insn_0040a7bb) > 6
        %error "LONG_0040A7BB"
    %endif
    times 6 - ($ - %%insn_0040a7bb) db 0
    %%insn_0040a7c1:
    add ecx,[ebp+0x8] ; 0040A7C1 034D08
    %if ($ - %%insn_0040a7c1) > 3
        %error "LONG_0040A7C1"
    %endif
    times 3 - ($ - %%insn_0040a7c1) db 0
    %%insn_0040a7c4:
    mov [ebp-0x10],ecx ; 0040A7C4 894DF0
    %if ($ - %%insn_0040a7c4) > 3
        %error "LONG_0040A7C4"
    %endif
    times 3 - ($ - %%insn_0040a7c4) db 0
    %%insn_0040a7c7:
    mov edx,[ebp+0x10] ; 0040A7C7 8B5510
    %if ($ - %%insn_0040a7c7) > 3
        %error "LONG_0040A7C7"
    %endif
    times 3 - ($ - %%insn_0040a7c7) db 0
    %%insn_0040a7ca:
    sub edx,[ebp+0x8] ; 0040A7CA 2B5508
    %if ($ - %%insn_0040a7ca) > 3
        %error "LONG_0040A7CA"
    %endif
    times 3 - ($ - %%insn_0040a7ca) db 0
    %%insn_0040a7cd:
    mov [ebp-0x8],edx ; 0040A7CD 8955F8
    %if ($ - %%insn_0040a7cd) > 3
        %error "LONG_0040A7CD"
    %endif
    times 3 - ($ - %%insn_0040a7cd) db 0
    %%insn_0040a7d0:
    mov eax,[ebp+0xc] ; 0040A7D0 8B450C
    %if ($ - %%insn_0040a7d0) > 3
        %error "LONG_0040A7D0"
    %endif
    times 3 - ($ - %%insn_0040a7d0) db 0
    %%insn_0040a7d3:
    mov [ebp-0x4],eax ; 0040A7D3 8945FC
    %if ($ - %%insn_0040a7d3) > 3
        %error "LONG_0040A7D3"
    %endif
    times 3 - ($ - %%insn_0040a7d3) db 0
    %%insn_0040a7d6:
    jmp short 0x40a7e1 ; 0040A7D6 EB09
    %if ($ - %%insn_0040a7d6) > 2
        %error "LONG_0040A7D6"
    %endif
    times 2 - ($ - %%insn_0040a7d6) db 0
    %%insn_0040a7d8:
    mov ecx,[ebp-0x4] ; 0040A7D8 8B4DFC
    %if ($ - %%insn_0040a7d8) > 3
        %error "LONG_0040A7D8"
    %endif
    times 3 - ($ - %%insn_0040a7d8) db 0
    %%insn_0040a7db:
    add ecx,0x1 ; 0040A7DB 83C101
    %if ($ - %%insn_0040a7db) > 3
        %error "LONG_0040A7DB"
    %endif
    times 3 - ($ - %%insn_0040a7db) db 0
    %%insn_0040a7de:
    mov [ebp-0x4],ecx ; 0040A7DE 894DFC
    %if ($ - %%insn_0040a7de) > 3
        %error "LONG_0040A7DE"
    %endif
    times 3 - ($ - %%insn_0040a7de) db 0
    %%insn_0040a7e1:
    mov edx,[ebp-0x4] ; 0040A7E1 8B55FC
    %if ($ - %%insn_0040a7e1) > 3
        %error "LONG_0040A7E1"
    %endif
    times 3 - ($ - %%insn_0040a7e1) db 0
    %%insn_0040a7e4:
    cmp edx,[ebp+0x14] ; 0040A7E4 3B5514
    %if ($ - %%insn_0040a7e4) > 3
        %error "LONG_0040A7E4"
    %endif
    times 3 - ($ - %%insn_0040a7e4) db 0
    %%insn_0040a7e7:
    jg short 0x40a81b ; 0040A7E7 7F32
    %if ($ - %%insn_0040a7e7) > 2
        %error "LONG_0040A7E7"
    %endif
    times 2 - ($ - %%insn_0040a7e7) db 0
    %%insn_0040a7e9:
    mov eax,[ebp-0x8] ; 0040A7E9 8B45F8
    %if ($ - %%insn_0040a7e9) > 3
        %error "LONG_0040A7E9"
    %endif
    times 3 - ($ - %%insn_0040a7e9) db 0
    %%insn_0040a7ec:
    push eax ; 0040A7EC 50
    %if ($ - %%insn_0040a7ec) > 1
        %error "LONG_0040A7EC"
    %endif
    times 1 - ($ - %%insn_0040a7ec) db 0
    %%insn_0040a7ed:
    mov ecx,[ebp-0x10] ; 0040A7ED 8B4DF0
    %if ($ - %%insn_0040a7ed) > 3
        %error "LONG_0040A7ED"
    %endif
    times 3 - ($ - %%insn_0040a7ed) db 0
    %%insn_0040a7f0:
    mov edx,[0x4212d0] ; 0040A7F0 8B15D0124200
    %if ($ - %%insn_0040a7f0) > 6
        %error "LONG_0040A7F0"
    %endif
    times 6 - ($ - %%insn_0040a7f0) db 0
    %%insn_0040a7f6:
    lea eax,[edx+ecx-0xc800] ; 0040A7F6 8D840A0038FFFF
    %if ($ - %%insn_0040a7f6) > 7
        %error "LONG_0040A7F6"
    %endif
    times 7 - ($ - %%insn_0040a7f6) db 0
    %%insn_0040a7fd:
    push eax ; 0040A7FD 50
    %if ($ - %%insn_0040a7fd) > 1
        %error "LONG_0040A7FD"
    %endif
    times 1 - ($ - %%insn_0040a7fd) db 0
    %%insn_0040a7fe:
    mov ecx,[ebp-0xc] ; 0040A7FE 8B4DF4
    %if ($ - %%insn_0040a7fe) > 3
        %error "LONG_0040A7FE"
    %endif
    times 3 - ($ - %%insn_0040a7fe) db 0
    %%insn_0040a801:
    add ecx,[ebp-0x10] ; 0040A801 034DF0
    %if ($ - %%insn_0040a801) > 3
        %error "LONG_0040A801"
    %endif
    times 3 - ($ - %%insn_0040a801) db 0
    %%insn_0040a804:
    push ecx ; 0040A804 51
    %if ($ - %%insn_0040a804) > 1
        %error "LONG_0040A804"
    %endif
    times 1 - ($ - %%insn_0040a804) db 0
    %%insn_0040a805:
    call 0x40ca10 ; 0040A805 E806220000
    %if ($ - %%insn_0040a805) > 5
        %error "LONG_0040A805"
    %endif
    times 5 - ($ - %%insn_0040a805) db 0
    %%insn_0040a80a:
    add esp,0xc ; 0040A80A 83C40C
    %if ($ - %%insn_0040a80a) > 3
        %error "LONG_0040A80A"
    %endif
    times 3 - ($ - %%insn_0040a80a) db 0
    %%insn_0040a80d:
    mov edx,[ebp-0x10] ; 0040A80D 8B55F0
    %if ($ - %%insn_0040a80d) > 3
        %error "LONG_0040A80D"
    %endif
    times 3 - ($ - %%insn_0040a80d) db 0
    %%insn_0040a810:
    add edx,0x280 ; 0040A810 81C280020000
    %if ($ - %%insn_0040a810) > 6
        %error "LONG_0040A810"
    %endif
    times 6 - ($ - %%insn_0040a810) db 0
    %%insn_0040a816:
    mov [ebp-0x10],edx ; 0040A816 8955F0
    %if ($ - %%insn_0040a816) > 3
        %error "LONG_0040A816"
    %endif
    times 3 - ($ - %%insn_0040a816) db 0
    %%insn_0040a819:
    jmp short 0x40a7d8 ; 0040A819 EBBD
    %if ($ - %%insn_0040a819) > 2
        %error "LONG_0040A819"
    %endif
    times 2 - ($ - %%insn_0040a819) db 0
    %%insn_0040a81b:
    mov dword [0x41f590],0x1 ; 0040A81B C70590F5410001000000
    %if ($ - %%insn_0040a81b) > 10
        %error "LONG_0040A81B"
    %endif
    times 10 - ($ - %%insn_0040a81b) db 0
    %%insn_0040a825:
    mov eax,[ebp+0x8] ; 0040A825 8B4508
    %if ($ - %%insn_0040a825) > 3
        %error "LONG_0040A825"
    %endif
    times 3 - ($ - %%insn_0040a825) db 0
    %%insn_0040a828:
    mov [0x421354],eax ; 0040A828 A354134200
    %if ($ - %%insn_0040a828) > 5
        %error "LONG_0040A828"
    %endif
    times 5 - ($ - %%insn_0040a828) db 0
    %%insn_0040a82d:
    mov ecx,[ebp+0xc] ; 0040A82D 8B4D0C
    %if ($ - %%insn_0040a82d) > 3
        %error "LONG_0040A82D"
    %endif
    times 3 - ($ - %%insn_0040a82d) db 0
    %%insn_0040a830:
    mov [0x42135c],ecx ; 0040A830 890D5C134200
    %if ($ - %%insn_0040a830) > 6
        %error "LONG_0040A830"
    %endif
    times 6 - ($ - %%insn_0040a830) db 0
    %%insn_0040a836:
    mov edx,[ebp+0x10] ; 0040A836 8B5510
    %if ($ - %%insn_0040a836) > 3
        %error "LONG_0040A836"
    %endif
    times 3 - ($ - %%insn_0040a836) db 0
    %%insn_0040a839:
    mov [0x421358],edx ; 0040A839 891558134200
    %if ($ - %%insn_0040a839) > 6
        %error "LONG_0040A839"
    %endif
    times 6 - ($ - %%insn_0040a839) db 0
    %%insn_0040a83f:
    mov eax,[ebp+0x14] ; 0040A83F 8B4514
    %if ($ - %%insn_0040a83f) > 3
        %error "LONG_0040A83F"
    %endif
    times 3 - ($ - %%insn_0040a83f) db 0
    %%insn_0040a842:
    mov [0x421360],eax ; 0040A842 A360134200
    %if ($ - %%insn_0040a842) > 5
        %error "LONG_0040A842"
    %endif
    times 5 - ($ - %%insn_0040a842) db 0
    db 0x8B, 0xE5 ; 0040A847 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040a849:
    pop ebp ; 0040A849 5D
    %if ($ - %%insn_0040a849) > 1
        %error "LONG_0040A849"
    %endif
    times 1 - ($ - %%insn_0040a849) db 0
    %%insn_0040a84a:
    ret ; 0040A84A C3
    %if ($ - %%insn_0040a84a) > 1
        %error "LONG_0040A84A"
    %endif
    times 1 - ($ - %%insn_0040a84a) db 0
    %if ($ - %%fragment_start) != 161
        %error "function fragment size drift: 0040A7AA"
    %endif
%endmacro
