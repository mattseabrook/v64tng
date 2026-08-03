; PE virtual entry 00411870
; Ghidra working symbol: FUN_00411870
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411870_part_00 0
    %%fragment_start:
func_00411870:
    %%insn_00411870:
    sub esp,0x8 ; 00411870 83EC08
    %if ($ - %%insn_00411870) > 3
        %error "LONG_00411870"
    %endif
    times 3 - ($ - %%insn_00411870) db 0
    %%insn_00411873:
    push ebx ; 00411873 53
    %if ($ - %%insn_00411873) > 1
        %error "LONG_00411873"
    %endif
    times 1 - ($ - %%insn_00411873) db 0
    %%insn_00411874:
    mov ebx,[esp+0x10] ; 00411874 8B5C2410
    %if ($ - %%insn_00411874) > 4
        %error "LONG_00411874"
    %endif
    times 4 - ($ - %%insn_00411874) db 0
    %%insn_00411878:
    cmp ebx,0xff ; 00411878 81FBFF000000
    %if ($ - %%insn_00411878) > 6
        %error "LONG_00411878"
    %endif
    times 6 - ($ - %%insn_00411878) db 0
    %%insn_0041187e:
    jna short 0x4118ea ; 0041187E 766A
    %if ($ - %%insn_0041187e) > 2
        %error "LONG_0041187E"
    %endif
    times 2 - ($ - %%insn_0041187e) db 0
    db 0x8B, 0xC3 ; 00411880 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00411882:
    mov [esp+0x11],bl ; 00411882 885C2411
    %if ($ - %%insn_00411882) > 4
        %error "LONG_00411882"
    %endif
    times 4 - ($ - %%insn_00411882) db 0
    %%insn_00411886:
    shr eax,byte 0x8 ; 00411886 C1E808
    %if ($ - %%insn_00411886) > 3
        %error "LONG_00411886"
    %endif
    times 3 - ($ - %%insn_00411886) db 0
    %%insn_00411889:
    mov [esp+0x10],al ; 00411889 88442410
    %if ($ - %%insn_00411889) > 4
        %error "LONG_00411889"
    %endif
    times 4 - ($ - %%insn_00411889) db 0
    %%insn_0041188d:
    mov ecx,[esp+0x10] ; 0041188D 8B4C2410
    %if ($ - %%insn_0041188d) > 4
        %error "LONG_0041188D"
    %endif
    times 4 - ($ - %%insn_0041188d) db 0
    %%insn_00411891:
    and ecx,0xff ; 00411891 81E1FF000000
    %if ($ - %%insn_00411891) > 6
        %error "LONG_00411891"
    %endif
    times 6 - ($ - %%insn_00411891) db 0
    %%insn_00411897:
    test byte [ecx+0x421051],0x4 ; 00411897 F6815110420004
    %if ($ - %%insn_00411897) > 7
        %error "LONG_00411897"
    %endif
    times 7 - ($ - %%insn_00411897) db 0
    %%insn_0041189e:
    jz short 0x4118f7 ; 0041189E 7457
    %if ($ - %%insn_0041189e) > 2
        %error "LONG_0041189E"
    %endif
    times 2 - ($ - %%insn_0041189e) db 0
    %%insn_004118a0:
    mov edx,[0x421154] ; 004118A0 8B1554114200
    %if ($ - %%insn_004118a0) > 6
        %error "LONG_004118A0"
    %endif
    times 6 - ($ - %%insn_004118a0) db 0
    %%insn_004118a6:
    lea eax,[esp+0x4] ; 004118A6 8D442404
    %if ($ - %%insn_004118a6) > 4
        %error "LONG_004118A6"
    %endif
    times 4 - ($ - %%insn_004118a6) db 0
    %%insn_004118aa:
    push edx ; 004118AA 52
    %if ($ - %%insn_004118aa) > 1
        %error "LONG_004118AA"
    %endif
    times 1 - ($ - %%insn_004118aa) db 0
    %%insn_004118ab:
    mov edx,[0x421158] ; 004118AB 8B1558114200
    %if ($ - %%insn_004118ab) > 6
        %error "LONG_004118AB"
    %endif
    times 6 - ($ - %%insn_004118ab) db 0
    %%insn_004118b1:
    push dword 0x2 ; 004118B1 6A02
    %if ($ - %%insn_004118b1) > 2
        %error "LONG_004118B1"
    %endif
    times 2 - ($ - %%insn_004118b1) db 0
    %%insn_004118b3:
    push eax ; 004118B3 50
    %if ($ - %%insn_004118b3) > 1
        %error "LONG_004118B3"
    %endif
    times 1 - ($ - %%insn_004118b3) db 0
    %%insn_004118b4:
    lea ecx,[esp+0x1c] ; 004118B4 8D4C241C
    %if ($ - %%insn_004118b4) > 4
        %error "LONG_004118B4"
    %endif
    times 4 - ($ - %%insn_004118b4) db 0
    %%insn_004118b8:
    push dword 0x2 ; 004118B8 6A02
    %if ($ - %%insn_004118b8) > 2
        %error "LONG_004118B8"
    %endif
    times 2 - ($ - %%insn_004118b8) db 0
    %%insn_004118ba:
    push ecx ; 004118BA 51
    %if ($ - %%insn_004118ba) > 1
        %error "LONG_004118BA"
    %endif
    times 1 - ($ - %%insn_004118ba) db 0
    %%insn_004118bb:
    push dword 0x200 ; 004118BB 6800020000
    %if ($ - %%insn_004118bb) > 5
        %error "LONG_004118BB"
    %endif
    times 5 - ($ - %%insn_004118bb) db 0
    %%insn_004118c0:
    push edx ; 004118C0 52
    %if ($ - %%insn_004118c0) > 1
        %error "LONG_004118C0"
    %endif
    times 1 - ($ - %%insn_004118c0) db 0
    %%insn_004118c1:
    call 0x414b50 ; 004118C1 E88A320000
    %if ($ - %%insn_004118c1) > 5
        %error "LONG_004118C1"
    %endif
    times 5 - ($ - %%insn_004118c1) db 0
    %%insn_004118c6:
    add esp,0x1c ; 004118C6 83C41C
    %if ($ - %%insn_004118c6) > 3
        %error "LONG_004118C6"
    %endif
    times 3 - ($ - %%insn_004118c6) db 0
    %%insn_004118c9:
    test eax,eax ; 004118C9 85C0
    %if ($ - %%insn_004118c9) > 2
        %error "LONG_004118C9"
    %endif
    times 2 - ($ - %%insn_004118c9) db 0
    %%insn_004118cb:
    jz short 0x4118f7 ; 004118CB 742A
    %if ($ - %%insn_004118cb) > 2
        %error "LONG_004118CB"
    %endif
    times 2 - ($ - %%insn_004118cb) db 0
    %%insn_004118cd:
    mov eax,[esp+0x4] ; 004118CD 8B442404
    %if ($ - %%insn_004118cd) > 4
        %error "LONG_004118CD"
    %endif
    times 4 - ($ - %%insn_004118cd) db 0
    %%insn_004118d1:
    mov ecx,[esp+0x5] ; 004118D1 8B4C2405
    %if ($ - %%insn_004118d1) > 4
        %error "LONG_004118D1"
    %endif
    times 4 - ($ - %%insn_004118d1) db 0
    %%insn_004118d5:
    and eax,0xff ; 004118D5 25FF000000
    %if ($ - %%insn_004118d5) > 5
        %error "LONG_004118D5"
    %endif
    times 5 - ($ - %%insn_004118d5) db 0
    %%insn_004118da:
    and ecx,0xff ; 004118DA 81E1FF000000
    %if ($ - %%insn_004118da) > 6
        %error "LONG_004118DA"
    %endif
    times 6 - ($ - %%insn_004118da) db 0
    %%insn_004118e0:
    shl eax,byte 0x8 ; 004118E0 C1E008
    %if ($ - %%insn_004118e0) > 3
        %error "LONG_004118E0"
    %endif
    times 3 - ($ - %%insn_004118e0) db 0
    db 0x03, 0xC1 ; 004118E3 03C1 | add eax,ecx | encoding preserved
    %%insn_004118e5:
    pop ebx ; 004118E5 5B
    %if ($ - %%insn_004118e5) > 1
        %error "LONG_004118E5"
    %endif
    times 1 - ($ - %%insn_004118e5) db 0
    %%insn_004118e6:
    add esp,0x8 ; 004118E6 83C408
    %if ($ - %%insn_004118e6) > 3
        %error "LONG_004118E6"
    %endif
    times 3 - ($ - %%insn_004118e6) db 0
    %%insn_004118e9:
    ret ; 004118E9 C3
    %if ($ - %%insn_004118e9) > 1
        %error "LONG_004118E9"
    %endif
    times 1 - ($ - %%insn_004118e9) db 0
    %%insn_004118ea:
    cmp ebx,0x61 ; 004118EA 83FB61
    %if ($ - %%insn_004118ea) > 3
        %error "LONG_004118EA"
    %endif
    times 3 - ($ - %%insn_004118ea) db 0
    %%insn_004118ed:
    jl short 0x4118f7 ; 004118ED 7C08
    %if ($ - %%insn_004118ed) > 2
        %error "LONG_004118ED"
    %endif
    times 2 - ($ - %%insn_004118ed) db 0
    %%insn_004118ef:
    cmp ebx,0x7a ; 004118EF 83FB7A
    %if ($ - %%insn_004118ef) > 3
        %error "LONG_004118EF"
    %endif
    times 3 - ($ - %%insn_004118ef) db 0
    %%insn_004118f2:
    lea eax,[ebx-0x20] ; 004118F2 8D43E0
    %if ($ - %%insn_004118f2) > 3
        %error "LONG_004118F2"
    %endif
    times 3 - ($ - %%insn_004118f2) db 0
    %%insn_004118f5:
    jng short 0x4118f9 ; 004118F5 7E02
    %if ($ - %%insn_004118f5) > 2
        %error "LONG_004118F5"
    %endif
    times 2 - ($ - %%insn_004118f5) db 0
    db 0x8B, 0xC3 ; 004118F7 8BC3 | mov eax,ebx | encoding preserved
    %%insn_004118f9:
    pop ebx ; 004118F9 5B
    %if ($ - %%insn_004118f9) > 1
        %error "LONG_004118F9"
    %endif
    times 1 - ($ - %%insn_004118f9) db 0
    %%insn_004118fa:
    add esp,0x8 ; 004118FA 83C408
    %if ($ - %%insn_004118fa) > 3
        %error "LONG_004118FA"
    %endif
    times 3 - ($ - %%insn_004118fa) db 0
    %%insn_004118fd:
    ret ; 004118FD C3
    %if ($ - %%insn_004118fd) > 1
        %error "LONG_004118FD"
    %endif
    times 1 - ($ - %%insn_004118fd) db 0
    %if ($ - %%fragment_start) != 142
        %error "function fragment size drift: 00411870"
    %endif
%endmacro
