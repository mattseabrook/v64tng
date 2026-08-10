; PE virtual entry 00401833
; Ghidra working symbol: FUN_00401833
; Verified GRV VIDEO_NAME/VIDEO_TRANSITION_NAME resource resolver.
; It consumes the inline zero-terminated name expression from the current GRV
; PC, expands #variable and |row,column substitutions, folds ASCII uppercase,
; appends '.', searches the loaded GJD/RL directory tables, and returns the
; packed (archive << 10) | entry resource reference or -1 when absent.
; Generated losslessly; preserve byte identity after edits.

%macro emit_resolve_interpolated_grv_video_resource_part_00 0
    %%fragment_start:
resolve_interpolated_grv_video_resource:
    %%insn_00401833:
    push ebp ; 00401833 55
    %if ($ - %%insn_00401833) > 1
        %error "LONG_00401833"
    %endif
    times 1 - ($ - %%insn_00401833) db 0
    db 0x8B, 0xEC ; 00401834 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401836:
    sub esp,0x38 ; 00401836 83EC38
    %if ($ - %%insn_00401836) > 3
        %error "LONG_00401836"
    %endif
    times 3 - ($ - %%insn_00401836) db 0
    %%insn_00401839:
    mov dword [ebp-0x14],0x0 ; 00401839 C745EC00000000
    %if ($ - %%insn_00401839) > 7
        %error "LONG_00401839"
    %endif
    times 7 - ($ - %%insn_00401839) db 0
    %%insn_00401840:
    mov eax,[0x41f284] ; 00401840 A184F24100
    %if ($ - %%insn_00401840) > 5
        %error "LONG_00401840"
    %endif
    times 5 - ($ - %%insn_00401840) db 0
    %%insn_00401845:
    add eax,[0x41f300] ; 00401845 030500F34100
    %if ($ - %%insn_00401845) > 6
        %error "LONG_00401845"
    %endif
    times 6 - ($ - %%insn_00401845) db 0
    %%insn_0040184b:
    mov cl,[eax] ; 0040184B 8A08
    %if ($ - %%insn_0040184b) > 2
        %error "LONG_0040184B"
    %endif
    times 2 - ($ - %%insn_0040184b) db 0
    %%insn_0040184d:
    mov [ebp-0x4],cl ; 0040184D 884DFC
    %if ($ - %%insn_0040184d) > 3
        %error "LONG_0040184D"
    %endif
    times 3 - ($ - %%insn_0040184d) db 0
    %%insn_00401850:
    mov edx,[ebp-0x4] ; 00401850 8B55FC
    %if ($ - %%insn_00401850) > 3
        %error "LONG_00401850"
    %endif
    times 3 - ($ - %%insn_00401850) db 0
    %%insn_00401853:
    and edx,0xff ; 00401853 81E2FF000000
    %if ($ - %%insn_00401853) > 6
        %error "LONG_00401853"
    %endif
    times 6 - ($ - %%insn_00401853) db 0
    %%insn_00401859:
    mov eax,[0x41f300] ; 00401859 A100F34100
    %if ($ - %%insn_00401859) > 5
        %error "LONG_00401859"
    %endif
    times 5 - ($ - %%insn_00401859) db 0
    %%insn_0040185e:
    add eax,0x1 ; 0040185E 83C001
    %if ($ - %%insn_0040185e) > 3
        %error "LONG_0040185E"
    %endif
    times 3 - ($ - %%insn_0040185e) db 0
    %%insn_00401861:
    mov [0x41f300],eax ; 00401861 A300F34100
    %if ($ - %%insn_00401861) > 5
        %error "LONG_00401861"
    %endif
    times 5 - ($ - %%insn_00401861) db 0
    %%insn_00401866:
    test edx,edx ; 00401866 85D2
    %if ($ - %%insn_00401866) > 2
        %error "LONG_00401866"
    %endif
    times 2 - ($ - %%insn_00401866) db 0
    %%insn_00401868:
    jz 0x401a4b ; 00401868 0F84DD010000
    %if ($ - %%insn_00401868) > 6
        %error "LONG_00401868"
    %endif
    times 6 - ($ - %%insn_00401868) db 0
    %%insn_0040186e:
    mov ecx,[ebp-0x4] ; 0040186E 8B4DFC
    %if ($ - %%insn_0040186e) > 3
        %error "LONG_0040186E"
    %endif
    times 3 - ($ - %%insn_0040186e) db 0
    %%insn_00401871:
    and ecx,0xff ; 00401871 81E1FF000000
    %if ($ - %%insn_00401871) > 6
        %error "LONG_00401871"
    %endif
    times 6 - ($ - %%insn_00401871) db 0
    %%insn_00401877:
    cmp ecx,0x23 ; 00401877 83F923
    %if ($ - %%insn_00401877) > 3
        %error "LONG_00401877"
    %endif
    times 3 - ($ - %%insn_00401877) db 0
    %%insn_0040187a:
    jnz short 0x4018e3 ; 0040187A 7567
    %if ($ - %%insn_0040187a) > 2
        %error "LONG_0040187A"
    %endif
    times 2 - ($ - %%insn_0040187a) db 0
    %%insn_0040187c:
    mov edx,[0x41f284] ; 0040187C 8B1584F24100
    %if ($ - %%insn_0040187c) > 6
        %error "LONG_0040187C"
    %endif
    times 6 - ($ - %%insn_0040187c) db 0
    %%insn_00401882:
    add edx,[0x41f300] ; 00401882 031500F34100
    %if ($ - %%insn_00401882) > 6
        %error "LONG_00401882"
    %endif
    times 6 - ($ - %%insn_00401882) db 0
    db 0x33, 0xC0 ; 00401888 33C0 | xor eax,eax | encoding preserved
    %%insn_0040188a:
    mov al,[edx] ; 0040188A 8A02
    %if ($ - %%insn_0040188a) > 2
        %error "LONG_0040188A"
    %endif
    times 2 - ($ - %%insn_0040188a) db 0
    %%insn_0040188c:
    sub eax,0x61 ; 0040188C 83E861
    %if ($ - %%insn_0040188c) > 3
        %error "LONG_0040188C"
    %endif
    times 3 - ($ - %%insn_0040188c) db 0
    %%insn_0040188f:
    mov [ebp-0x4],al ; 0040188F 8845FC
    %if ($ - %%insn_0040188f) > 3
        %error "LONG_0040188F"
    %endif
    times 3 - ($ - %%insn_0040188f) db 0
    %%insn_00401892:
    mov ecx,[0x41f300] ; 00401892 8B0D00F34100
    %if ($ - %%insn_00401892) > 6
        %error "LONG_00401892"
    %endif
    times 6 - ($ - %%insn_00401892) db 0
    %%insn_00401898:
    add ecx,0x1 ; 00401898 83C101
    %if ($ - %%insn_00401898) > 3
        %error "LONG_00401898"
    %endif
    times 3 - ($ - %%insn_00401898) db 0
    %%insn_0040189b:
    mov [0x41f300],ecx ; 0040189B 890D00F34100
    %if ($ - %%insn_0040189b) > 6
        %error "LONG_0040189B"
    %endif
    times 6 - ($ - %%insn_0040189b) db 0
    %%insn_004018a1:
    mov edx,[ebp-0x4] ; 004018A1 8B55FC
    %if ($ - %%insn_004018a1) > 3
        %error "LONG_004018A1"
    %endif
    times 3 - ($ - %%insn_004018a1) db 0
    %%insn_004018a4:
    and edx,0xff ; 004018A4 81E2FF000000
    %if ($ - %%insn_004018a4) > 6
        %error "LONG_004018A4"
    %endif
    times 6 - ($ - %%insn_004018a4) db 0
    %%insn_004018aa:
    mov eax,[0x41f2b8] ; 004018AA A1B8F24100
    %if ($ - %%insn_004018aa) > 5
        %error "LONG_004018AA"
    %endif
    times 5 - ($ - %%insn_004018aa) db 0
    db 0x33, 0xC9 ; 004018AF 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004018b1:
    mov cl,[eax+edx] ; 004018B1 8A0C10
    %if ($ - %%insn_004018b1) > 3
        %error "LONG_004018B1"
    %endif
    times 3 - ($ - %%insn_004018b1) db 0
    %%insn_004018b4:
    add ecx,0x30 ; 004018B4 83C130
    %if ($ - %%insn_004018b4) > 3
        %error "LONG_004018B4"
    %endif
    times 3 - ($ - %%insn_004018b4) db 0
    %%insn_004018b7:
    mov [ebp-0xc],cl ; 004018B7 884DF4
    %if ($ - %%insn_004018b7) > 3
        %error "LONG_004018B7"
    %endif
    times 3 - ($ - %%insn_004018b7) db 0
    %%insn_004018ba:
    mov edx,[ebp-0xc] ; 004018BA 8B55F4
    %if ($ - %%insn_004018ba) > 3
        %error "LONG_004018BA"
    %endif
    times 3 - ($ - %%insn_004018ba) db 0
    %%insn_004018bd:
    and edx,0xff ; 004018BD 81E2FF000000
    %if ($ - %%insn_004018bd) > 6
        %error "LONG_004018BD"
    %endif
    times 6 - ($ - %%insn_004018bd) db 0
    %%insn_004018c3:
    cmp edx,0x41 ; 004018C3 83FA41
    %if ($ - %%insn_004018c3) > 3
        %error "LONG_004018C3"
    %endif
    times 3 - ($ - %%insn_004018c3) db 0
    %%insn_004018c6:
    jl short 0x4018de ; 004018C6 7C16
    %if ($ - %%insn_004018c6) > 2
        %error "LONG_004018C6"
    %endif
    times 2 - ($ - %%insn_004018c6) db 0
    %%insn_004018c8:
    mov eax,[ebp-0xc] ; 004018C8 8B45F4
    %if ($ - %%insn_004018c8) > 3
        %error "LONG_004018C8"
    %endif
    times 3 - ($ - %%insn_004018c8) db 0
    %%insn_004018cb:
    and eax,0xff ; 004018CB 25FF000000
    %if ($ - %%insn_004018cb) > 5
        %error "LONG_004018CB"
    %endif
    times 5 - ($ - %%insn_004018cb) db 0
    %%insn_004018d0:
    cmp eax,0x5a ; 004018D0 83F85A
    %if ($ - %%insn_004018d0) > 3
        %error "LONG_004018D0"
    %endif
    times 3 - ($ - %%insn_004018d0) db 0
    %%insn_004018d3:
    jg short 0x4018de ; 004018D3 7F09
    %if ($ - %%insn_004018d3) > 2
        %error "LONG_004018D3"
    %endif
    times 2 - ($ - %%insn_004018d3) db 0
    %%insn_004018d5:
    mov cl,[ebp-0xc] ; 004018D5 8A4DF4
    %if ($ - %%insn_004018d5) > 3
        %error "LONG_004018D5"
    %endif
    times 3 - ($ - %%insn_004018d5) db 0
    %%insn_004018d8:
    add cl,0x20 ; 004018D8 80C120
    %if ($ - %%insn_004018d8) > 3
        %error "LONG_004018D8"
    %endif
    times 3 - ($ - %%insn_004018d8) db 0
    %%insn_004018db:
    mov [ebp-0xc],cl ; 004018DB 884DF4
    %if ($ - %%insn_004018db) > 3
        %error "LONG_004018DB"
    %endif
    times 3 - ($ - %%insn_004018db) db 0
    %%insn_004018de:
    jmp 0x401a33 ; 004018DE E950010000
    %if ($ - %%insn_004018de) > 5
        %error "LONG_004018DE"
    %endif
    times 5 - ($ - %%insn_004018de) db 0
    %%insn_004018e3:
    mov edx,[ebp-0x4] ; 004018E3 8B55FC
    %if ($ - %%insn_004018e3) > 3
        %error "LONG_004018E3"
    %endif
    times 3 - ($ - %%insn_004018e3) db 0
    %%insn_004018e6:
    and edx,0xff ; 004018E6 81E2FF000000
    %if ($ - %%insn_004018e6) > 6
        %error "LONG_004018E6"
    %endif
    times 6 - ($ - %%insn_004018e6) db 0
    %%insn_004018ec:
    cmp edx,0x7c ; 004018EC 83FA7C
    %if ($ - %%insn_004018ec) > 3
        %error "LONG_004018EC"
    %endif
    times 3 - ($ - %%insn_004018ec) db 0
    %%insn_004018ef:
    jnz 0x401a09 ; 004018EF 0F8514010000
    %if ($ - %%insn_004018ef) > 6
        %error "LONG_004018EF"
    %endif
    times 6 - ($ - %%insn_004018ef) db 0
    %%insn_004018f5:
    mov eax,[0x41f284] ; 004018F5 A184F24100
    %if ($ - %%insn_004018f5) > 5
        %error "LONG_004018F5"
    %endif
    times 5 - ($ - %%insn_004018f5) db 0
    %%insn_004018fa:
    add eax,[0x41f300] ; 004018FA 030500F34100
    %if ($ - %%insn_004018fa) > 6
        %error "LONG_004018FA"
    %endif
    times 6 - ($ - %%insn_004018fa) db 0
    %%insn_00401900:
    mov cl,[eax] ; 00401900 8A08
    %if ($ - %%insn_00401900) > 2
        %error "LONG_00401900"
    %endif
    times 2 - ($ - %%insn_00401900) db 0
    %%insn_00401902:
    mov [ebp-0x4],cl ; 00401902 884DFC
    %if ($ - %%insn_00401902) > 3
        %error "LONG_00401902"
    %endif
    times 3 - ($ - %%insn_00401902) db 0
    %%insn_00401905:
    mov edx,[0x41f300] ; 00401905 8B1500F34100
    %if ($ - %%insn_00401905) > 6
        %error "LONG_00401905"
    %endif
    times 6 - ($ - %%insn_00401905) db 0
    %%insn_0040190b:
    add edx,0x1 ; 0040190B 83C201
    %if ($ - %%insn_0040190b) > 3
        %error "LONG_0040190B"
    %endif
    times 3 - ($ - %%insn_0040190b) db 0
    %%insn_0040190e:
    mov [0x41f300],edx ; 0040190E 891500F34100
    %if ($ - %%insn_0040190e) > 6
        %error "LONG_0040190E"
    %endif
    times 6 - ($ - %%insn_0040190e) db 0
    %%insn_00401914:
    mov eax,[ebp-0x4] ; 00401914 8B45FC
    %if ($ - %%insn_00401914) > 3
        %error "LONG_00401914"
    %endif
    times 3 - ($ - %%insn_00401914) db 0
    %%insn_00401917:
    and eax,0xff ; 00401917 25FF000000
    %if ($ - %%insn_00401917) > 5
        %error "LONG_00401917"
    %endif
    times 5 - ($ - %%insn_00401917) db 0
    %%insn_0040191c:
    cmp eax,0x23 ; 0040191C 83F823
    %if ($ - %%insn_0040191c) > 3
        %error "LONG_0040191C"
    %endif
    times 3 - ($ - %%insn_0040191c) db 0
    %%insn_0040191f:
    jnz short 0x40195b ; 0040191F 753A
    %if ($ - %%insn_0040191f) > 2
        %error "LONG_0040191F"
    %endif
    times 2 - ($ - %%insn_0040191f) db 0
    %%insn_00401921:
    mov ecx,[0x41f284] ; 00401921 8B0D84F24100
    %if ($ - %%insn_00401921) > 6
        %error "LONG_00401921"
    %endif
    times 6 - ($ - %%insn_00401921) db 0
    %%insn_00401927:
    add ecx,[0x41f300] ; 00401927 030D00F34100
    %if ($ - %%insn_00401927) > 6
        %error "LONG_00401927"
    %endif
    times 6 - ($ - %%insn_00401927) db 0
    db 0x33, 0xD2 ; 0040192D 33D2 | xor edx,edx | encoding preserved
    %%insn_0040192f:
    mov dl,[ecx] ; 0040192F 8A11
    %if ($ - %%insn_0040192f) > 2
        %error "LONG_0040192F"
    %endif
    times 2 - ($ - %%insn_0040192f) db 0
    %%insn_00401931:
    sub edx,0x61 ; 00401931 83EA61
    %if ($ - %%insn_00401931) > 3
        %error "LONG_00401931"
    %endif
    times 3 - ($ - %%insn_00401931) db 0
    %%insn_00401934:
    mov [ebp-0x4],dl ; 00401934 8855FC
    %if ($ - %%insn_00401934) > 3
        %error "LONG_00401934"
    %endif
    times 3 - ($ - %%insn_00401934) db 0
    %%insn_00401937:
    mov eax,[0x41f300] ; 00401937 A100F34100
    %if ($ - %%insn_00401937) > 5
        %error "LONG_00401937"
    %endif
    times 5 - ($ - %%insn_00401937) db 0
    %%insn_0040193c:
    add eax,0x1 ; 0040193C 83C001
    %if ($ - %%insn_0040193c) > 3
        %error "LONG_0040193C"
    %endif
    times 3 - ($ - %%insn_0040193c) db 0
    %%insn_0040193f:
    mov [0x41f300],eax ; 0040193F A300F34100
    %if ($ - %%insn_0040193f) > 5
        %error "LONG_0040193F"
    %endif
    times 5 - ($ - %%insn_0040193f) db 0
    %%insn_00401944:
    mov ecx,[ebp-0x4] ; 00401944 8B4DFC
    %if ($ - %%insn_00401944) > 3
        %error "LONG_00401944"
    %endif
    times 3 - ($ - %%insn_00401944) db 0
    %%insn_00401947:
    and ecx,0xff ; 00401947 81E1FF000000
    %if ($ - %%insn_00401947) > 6
        %error "LONG_00401947"
    %endif
    times 6 - ($ - %%insn_00401947) db 0
    %%insn_0040194d:
    mov edx,[0x41f2b8] ; 0040194D 8B15B8F24100
    %if ($ - %%insn_0040194d) > 6
        %error "LONG_0040194D"
    %endif
    times 6 - ($ - %%insn_0040194d) db 0
    %%insn_00401953:
    mov al,[edx+ecx] ; 00401953 8A040A
    %if ($ - %%insn_00401953) > 3
        %error "LONG_00401953"
    %endif
    times 3 - ($ - %%insn_00401953) db 0
    %%insn_00401956:
    mov [ebp-0xc],al ; 00401956 8845F4
    %if ($ - %%insn_00401956) > 3
        %error "LONG_00401956"
    %endif
    times 3 - ($ - %%insn_00401956) db 0
    %%insn_00401959:
    jmp short 0x40196a ; 00401959 EB0F
    %if ($ - %%insn_00401959) > 2
        %error "LONG_00401959"
    %endif
    times 2 - ($ - %%insn_00401959) db 0
    %%insn_0040195b:
    mov ecx,[ebp-0x4] ; 0040195B 8B4DFC
    %if ($ - %%insn_0040195b) > 3
        %error "LONG_0040195B"
    %endif
    times 3 - ($ - %%insn_0040195b) db 0
    %%insn_0040195e:
    and ecx,0xff ; 0040195E 81E1FF000000
    %if ($ - %%insn_0040195e) > 6
        %error "LONG_0040195E"
    %endif
    times 6 - ($ - %%insn_0040195e) db 0
    %%insn_00401964:
    sub ecx,0x30 ; 00401964 83E930
    %if ($ - %%insn_00401964) > 3
        %error "LONG_00401964"
    %endif
    times 3 - ($ - %%insn_00401964) db 0
    %%insn_00401967:
    mov [ebp-0xc],cl ; 00401967 884DF4
    %if ($ - %%insn_00401967) > 3
        %error "LONG_00401967"
    %endif
    times 3 - ($ - %%insn_00401967) db 0
    %%insn_0040196a:
    mov edx,[0x41f284] ; 0040196A 8B1584F24100
    %if ($ - %%insn_0040196a) > 6
        %error "LONG_0040196A"
    %endif
    times 6 - ($ - %%insn_0040196a) db 0
    %%insn_00401970:
    add edx,[0x41f300] ; 00401970 031500F34100
    %if ($ - %%insn_00401970) > 6
        %error "LONG_00401970"
    %endif
    times 6 - ($ - %%insn_00401970) db 0
    %%insn_00401976:
    mov al,[edx] ; 00401976 8A02
    %if ($ - %%insn_00401976) > 2
        %error "LONG_00401976"
    %endif
    times 2 - ($ - %%insn_00401976) db 0
    %%insn_00401978:
    mov [ebp-0x4],al ; 00401978 8845FC
    %if ($ - %%insn_00401978) > 3
        %error "LONG_00401978"
    %endif
    times 3 - ($ - %%insn_00401978) db 0
    %%insn_0040197b:
    mov ecx,[0x41f300] ; 0040197B 8B0D00F34100
    %if ($ - %%insn_0040197b) > 6
        %error "LONG_0040197B"
    %endif
    times 6 - ($ - %%insn_0040197b) db 0
    %%insn_00401981:
    add ecx,0x1 ; 00401981 83C101
    %if ($ - %%insn_00401981) > 3
        %error "LONG_00401981"
    %endif
    times 3 - ($ - %%insn_00401981) db 0
    %%insn_00401984:
    mov [0x41f300],ecx ; 00401984 890D00F34100
    %if ($ - %%insn_00401984) > 6
        %error "LONG_00401984"
    %endif
    times 6 - ($ - %%insn_00401984) db 0
    %%insn_0040198a:
    mov edx,[ebp-0x4] ; 0040198A 8B55FC
    %if ($ - %%insn_0040198a) > 3
        %error "LONG_0040198A"
    %endif
    times 3 - ($ - %%insn_0040198a) db 0
    %%insn_0040198d:
    and edx,0xff ; 0040198D 81E2FF000000
    %if ($ - %%insn_0040198d) > 6
        %error "LONG_0040198D"
    %endif
    times 6 - ($ - %%insn_0040198d) db 0
    %%insn_00401993:
    cmp edx,0x23 ; 00401993 83FA23
    %if ($ - %%insn_00401993) > 3
        %error "LONG_00401993"
    %endif
    times 3 - ($ - %%insn_00401993) db 0
    %%insn_00401996:
    jnz short 0x4019d2 ; 00401996 753A
    %if ($ - %%insn_00401996) > 2
        %error "LONG_00401996"
    %endif
    times 2 - ($ - %%insn_00401996) db 0
    %%insn_00401998:
    mov eax,[0x41f284] ; 00401998 A184F24100
    %if ($ - %%insn_00401998) > 5
        %error "LONG_00401998"
    %endif
    times 5 - ($ - %%insn_00401998) db 0
    %%insn_0040199d:
    add eax,[0x41f300] ; 0040199D 030500F34100
    %if ($ - %%insn_0040199d) > 6
        %error "LONG_0040199D"
    %endif
    times 6 - ($ - %%insn_0040199d) db 0
    db 0x33, 0xC9 ; 004019A3 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004019a5:
    mov cl,[eax] ; 004019A5 8A08
    %if ($ - %%insn_004019a5) > 2
        %error "LONG_004019A5"
    %endif
    times 2 - ($ - %%insn_004019a5) db 0
    %%insn_004019a7:
    sub ecx,0x61 ; 004019A7 83E961
    %if ($ - %%insn_004019a7) > 3
        %error "LONG_004019A7"
    %endif
    times 3 - ($ - %%insn_004019a7) db 0
    %%insn_004019aa:
    mov [ebp-0x4],cl ; 004019AA 884DFC
    %if ($ - %%insn_004019aa) > 3
        %error "LONG_004019AA"
    %endif
    times 3 - ($ - %%insn_004019aa) db 0
    %%insn_004019ad:
    mov edx,[0x41f300] ; 004019AD 8B1500F34100
    %if ($ - %%insn_004019ad) > 6
        %error "LONG_004019AD"
    %endif
    times 6 - ($ - %%insn_004019ad) db 0
    %%insn_004019b3:
    add edx,0x1 ; 004019B3 83C201
    %if ($ - %%insn_004019b3) > 3
        %error "LONG_004019B3"
    %endif
    times 3 - ($ - %%insn_004019b3) db 0
    %%insn_004019b6:
    mov [0x41f300],edx ; 004019B6 891500F34100
    %if ($ - %%insn_004019b6) > 6
        %error "LONG_004019B6"
    %endif
    times 6 - ($ - %%insn_004019b6) db 0
    %%insn_004019bc:
    mov eax,[ebp-0x4] ; 004019BC 8B45FC
    %if ($ - %%insn_004019bc) > 3
        %error "LONG_004019BC"
    %endif
    times 3 - ($ - %%insn_004019bc) db 0
    %%insn_004019bf:
    and eax,0xff ; 004019BF 25FF000000
    %if ($ - %%insn_004019bf) > 5
        %error "LONG_004019BF"
    %endif
    times 5 - ($ - %%insn_004019bf) db 0
    %%insn_004019c4:
    mov ecx,[0x41f2b8] ; 004019C4 8B0DB8F24100
    %if ($ - %%insn_004019c4) > 6
        %error "LONG_004019C4"
    %endif
    times 6 - ($ - %%insn_004019c4) db 0
    %%insn_004019ca:
    mov dl,[ecx+eax] ; 004019CA 8A1401
    %if ($ - %%insn_004019ca) > 3
        %error "LONG_004019CA"
    %endif
    times 3 - ($ - %%insn_004019ca) db 0
    %%insn_004019cd:
    mov [ebp-0x10],dl ; 004019CD 8855F0
    %if ($ - %%insn_004019cd) > 3
        %error "LONG_004019CD"
    %endif
    times 3 - ($ - %%insn_004019cd) db 0
    %%insn_004019d0:
    jmp short 0x4019e0 ; 004019D0 EB0E
    %if ($ - %%insn_004019d0) > 2
        %error "LONG_004019D0"
    %endif
    times 2 - ($ - %%insn_004019d0) db 0
    %%insn_004019d2:
    mov eax,[ebp-0x4] ; 004019D2 8B45FC
    %if ($ - %%insn_004019d2) > 3
        %error "LONG_004019D2"
    %endif
    times 3 - ($ - %%insn_004019d2) db 0
    %%insn_004019d5:
    and eax,0xff ; 004019D5 25FF000000
    %if ($ - %%insn_004019d5) > 5
        %error "LONG_004019D5"
    %endif
    times 5 - ($ - %%insn_004019d5) db 0
    %%insn_004019da:
    sub eax,0x30 ; 004019DA 83E830
    %if ($ - %%insn_004019da) > 3
        %error "LONG_004019DA"
    %endif
    times 3 - ($ - %%insn_004019da) db 0
    %%insn_004019dd:
    mov [ebp-0x10],al ; 004019DD 8845F0
    %if ($ - %%insn_004019dd) > 3
        %error "LONG_004019DD"
    %endif
    times 3 - ($ - %%insn_004019dd) db 0
    %%insn_004019e0:
    mov ecx,[ebp-0xc] ; 004019E0 8B4DF4
    %if ($ - %%insn_004019e0) > 3
        %error "LONG_004019E0"
    %endif
    times 3 - ($ - %%insn_004019e0) db 0
    %%insn_004019e3:
    and ecx,0xff ; 004019E3 81E1FF000000
    %if ($ - %%insn_004019e3) > 6
        %error "LONG_004019E3"
    %endif
    times 6 - ($ - %%insn_004019e3) db 0
    %%insn_004019e9:
    imul ecx,ecx,0xa ; 004019E9 6BC90A
    %if ($ - %%insn_004019e9) > 3
        %error "LONG_004019E9"
    %endif
    times 3 - ($ - %%insn_004019e9) db 0
    %%insn_004019ec:
    mov edx,[ebp-0x10] ; 004019EC 8B55F0
    %if ($ - %%insn_004019ec) > 3
        %error "LONG_004019EC"
    %endif
    times 3 - ($ - %%insn_004019ec) db 0
    %%insn_004019ef:
    and edx,0xff ; 004019EF 81E2FF000000
    %if ($ - %%insn_004019ef) > 6
        %error "LONG_004019EF"
    %endif
    times 6 - ($ - %%insn_004019ef) db 0
    %%insn_004019f5:
    add edx,[0x41f2b8] ; 004019F5 0315B8F24100
    %if ($ - %%insn_004019f5) > 6
        %error "LONG_004019F5"
    %endif
    times 6 - ($ - %%insn_004019f5) db 0
    db 0x33, 0xC0 ; 004019FB 33C0 | xor eax,eax | encoding preserved
    %%insn_004019fd:
    mov al,[edx+ecx+0x19] ; 004019FD 8A440A19
    %if ($ - %%insn_004019fd) > 4
        %error "LONG_004019FD"
    %endif
    times 4 - ($ - %%insn_004019fd) db 0
    %%insn_00401a01:
    add eax,0x30 ; 00401A01 83C030
    %if ($ - %%insn_00401a01) > 3
        %error "LONG_00401A01"
    %endif
    times 3 - ($ - %%insn_00401a01) db 0
    %%insn_00401a04:
    mov [ebp-0xc],al ; 00401A04 8845F4
    %if ($ - %%insn_00401a04) > 3
        %error "LONG_00401A04"
    %endif
    times 3 - ($ - %%insn_00401a04) db 0
    %%insn_00401a07:
    jmp short 0x401a33 ; 00401A07 EB2A
    %if ($ - %%insn_00401a07) > 2
        %error "LONG_00401A07"
    %endif
    times 2 - ($ - %%insn_00401a07) db 0
    %%insn_00401a09:
    mov cl,[ebp-0x4] ; 00401A09 8A4DFC
    %if ($ - %%insn_00401a09) > 3
        %error "LONG_00401A09"
    %endif
    times 3 - ($ - %%insn_00401a09) db 0
    %%insn_00401a0c:
    mov [ebp-0xc],cl ; 00401A0C 884DF4
    %if ($ - %%insn_00401a0c) > 3
        %error "LONG_00401A0C"
    %endif
    times 3 - ($ - %%insn_00401a0c) db 0
    %%insn_00401a0f:
    mov edx,[ebp-0x4] ; 00401A0F 8B55FC
    %if ($ - %%insn_00401a0f) > 3
        %error "LONG_00401A0F"
    %endif
    times 3 - ($ - %%insn_00401a0f) db 0
    %%insn_00401a12:
    and edx,0xff ; 00401A12 81E2FF000000
    %if ($ - %%insn_00401a12) > 6
        %error "LONG_00401A12"
    %endif
    times 6 - ($ - %%insn_00401a12) db 0
    %%insn_00401a18:
    cmp edx,0x41 ; 00401A18 83FA41
    %if ($ - %%insn_00401a18) > 3
        %error "LONG_00401A18"
    %endif
    times 3 - ($ - %%insn_00401a18) db 0
    %%insn_00401a1b:
    jl short 0x401a33 ; 00401A1B 7C16
    %if ($ - %%insn_00401a1b) > 2
        %error "LONG_00401A1B"
    %endif
    times 2 - ($ - %%insn_00401a1b) db 0
    %%insn_00401a1d:
    mov eax,[ebp-0x4] ; 00401A1D 8B45FC
    %if ($ - %%insn_00401a1d) > 3
        %error "LONG_00401A1D"
    %endif
    times 3 - ($ - %%insn_00401a1d) db 0
    %%insn_00401a20:
    and eax,0xff ; 00401A20 25FF000000
    %if ($ - %%insn_00401a20) > 5
        %error "LONG_00401A20"
    %endif
    times 5 - ($ - %%insn_00401a20) db 0
    %%insn_00401a25:
    cmp eax,0x5a ; 00401A25 83F85A
    %if ($ - %%insn_00401a25) > 3
        %error "LONG_00401A25"
    %endif
    times 3 - ($ - %%insn_00401a25) db 0
    %%insn_00401a28:
    jg short 0x401a33 ; 00401A28 7F09
    %if ($ - %%insn_00401a28) > 2
        %error "LONG_00401A28"
    %endif
    times 2 - ($ - %%insn_00401a28) db 0
    %%insn_00401a2a:
    mov cl,[ebp-0xc] ; 00401A2A 8A4DF4
    %if ($ - %%insn_00401a2a) > 3
        %error "LONG_00401A2A"
    %endif
    times 3 - ($ - %%insn_00401a2a) db 0
    %%insn_00401a2d:
    add cl,0x20 ; 00401A2D 80C120
    %if ($ - %%insn_00401a2d) > 3
        %error "LONG_00401A2D"
    %endif
    times 3 - ($ - %%insn_00401a2d) db 0
    %%insn_00401a30:
    mov [ebp-0xc],cl ; 00401A30 884DF4
    %if ($ - %%insn_00401a30) > 3
        %error "LONG_00401A30"
    %endif
    times 3 - ($ - %%insn_00401a30) db 0
    %%insn_00401a33:
    mov edx,[ebp-0x14] ; 00401A33 8B55EC
    %if ($ - %%insn_00401a33) > 3
        %error "LONG_00401A33"
    %endif
    times 3 - ($ - %%insn_00401a33) db 0
    %%insn_00401a36:
    mov al,[ebp-0xc] ; 00401A36 8A45F4
    %if ($ - %%insn_00401a36) > 3
        %error "LONG_00401A36"
    %endif
    times 3 - ($ - %%insn_00401a36) db 0
    %%insn_00401a39:
    mov [ebp+edx-0x28],al ; 00401A39 884415D8
    %if ($ - %%insn_00401a39) > 4
        %error "LONG_00401A39"
    %endif
    times 4 - ($ - %%insn_00401a39) db 0
    %%insn_00401a3d:
    mov ecx,[ebp-0x14] ; 00401A3D 8B4DEC
    %if ($ - %%insn_00401a3d) > 3
        %error "LONG_00401A3D"
    %endif
    times 3 - ($ - %%insn_00401a3d) db 0
    %%insn_00401a40:
    add ecx,0x1 ; 00401A40 83C101
    %if ($ - %%insn_00401a40) > 3
        %error "LONG_00401A40"
    %endif
    times 3 - ($ - %%insn_00401a40) db 0
    %%insn_00401a43:
    mov [ebp-0x14],ecx ; 00401A43 894DEC
    %if ($ - %%insn_00401a43) > 3
        %error "LONG_00401A43"
    %endif
    times 3 - ($ - %%insn_00401a43) db 0
    %%insn_00401a46:
    jmp 0x401840 ; 00401A46 E9F5FDFFFF
    %if ($ - %%insn_00401a46) > 5
        %error "LONG_00401A46"
    %endif
    times 5 - ($ - %%insn_00401a46) db 0
    %%insn_00401a4b:
    mov edx,[ebp-0x14] ; 00401A4B 8B55EC
    %if ($ - %%insn_00401a4b) > 3
        %error "LONG_00401A4B"
    %endif
    times 3 - ($ - %%insn_00401a4b) db 0
    %%insn_00401a4e:
    mov byte [ebp+edx-0x28],0x2e ; 00401A4E C64415D82E
    %if ($ - %%insn_00401a4e) > 5
        %error "LONG_00401A4E"
    %endif
    times 5 - ($ - %%insn_00401a4e) db 0
    %%insn_00401a53:
    mov eax,[ebp-0x14] ; 00401A53 8B45EC
    %if ($ - %%insn_00401a53) > 3
        %error "LONG_00401A53"
    %endif
    times 3 - ($ - %%insn_00401a53) db 0
    %%insn_00401a56:
    add eax,0x1 ; 00401A56 83C001
    %if ($ - %%insn_00401a56) > 3
        %error "LONG_00401A56"
    %endif
    times 3 - ($ - %%insn_00401a56) db 0
    %%insn_00401a59:
    mov [ebp-0x14],eax ; 00401A59 8945EC
    %if ($ - %%insn_00401a59) > 3
        %error "LONG_00401A59"
    %endif
    times 3 - ($ - %%insn_00401a59) db 0
    %%insn_00401a5c:
    mov ecx,[ebp-0x14] ; 00401A5C 8B4DEC
    %if ($ - %%insn_00401a5c) > 3
        %error "LONG_00401A5C"
    %endif
    times 3 - ($ - %%insn_00401a5c) db 0
    %%insn_00401a5f:
    mov byte [ebp+ecx-0x28],0x0 ; 00401A5F C6440DD800
    %if ($ - %%insn_00401a5f) > 5
        %error "LONG_00401A5F"
    %endif
    times 5 - ($ - %%insn_00401a5f) db 0
    %%insn_00401a64:
    mov edx,[0x41f340] ; 00401A64 8B1540F34100
    %if ($ - %%insn_00401a64) > 6
        %error "LONG_00401A64"
    %endif
    times 6 - ($ - %%insn_00401a64) db 0
    %%insn_00401a6a:
    add edx,0x1 ; 00401A6A 83C201
    %if ($ - %%insn_00401a6a) > 3
        %error "LONG_00401A6A"
    %endif
    times 3 - ($ - %%insn_00401a6a) db 0
    %%insn_00401a6d:
    mov [ebp-0x34],edx ; 00401A6D 8955CC
    %if ($ - %%insn_00401a6d) > 3
        %error "LONG_00401A6D"
    %endif
    times 3 - ($ - %%insn_00401a6d) db 0
    %%insn_00401a70:
    mov eax,[0x41f340] ; 00401A70 A140F34100
    %if ($ - %%insn_00401a70) > 5
        %error "LONG_00401A70"
    %endif
    times 5 - ($ - %%insn_00401a70) db 0
    %%insn_00401a75:
    mov [ebp-0x30],eax ; 00401A75 8945D0
    %if ($ - %%insn_00401a75) > 3
        %error "LONG_00401A75"
    %endif
    times 3 - ($ - %%insn_00401a75) db 0
    %%insn_00401a78:
    mov word [ebp-0x38],0x0 ; 00401A78 66C745C80000
    %if ($ - %%insn_00401a78) > 6
        %error "LONG_00401A78"
    %endif
    times 6 - ($ - %%insn_00401a78) db 0
    %%insn_00401a7e:
    mov dword [ebp-0x18],0xffffffff ; 00401A7E C745E8FFFFFFFF
    %if ($ - %%insn_00401a7e) > 7
        %error "LONG_00401A7E"
    %endif
    times 7 - ($ - %%insn_00401a7e) db 0
    %%insn_00401a85:
    cmp dword [ebp-0x30],0x0 ; 00401A85 837DD000
    %if ($ - %%insn_00401a85) > 4
        %error "LONG_00401A85"
    %endif
    times 4 - ($ - %%insn_00401a85) db 0
    %%insn_00401a89:
    jl short 0x401b0a ; 00401A89 7C7F
    %if ($ - %%insn_00401a89) > 2
        %error "LONG_00401A89"
    %endif
    times 2 - ($ - %%insn_00401a89) db 0
    %%insn_00401a8b:
    mov dword [ebp-0x8],0x0 ; 00401A8B C745F800000000
    %if ($ - %%insn_00401a8b) > 7
        %error "LONG_00401A8B"
    %endif
    times 7 - ($ - %%insn_00401a8b) db 0
    %%insn_00401a92:
    mov dword [ebp-0x2c],0x0 ; 00401A92 C745D400000000
    %if ($ - %%insn_00401a92) > 7
        %error "LONG_00401A92"
    %endif
    times 7 - ($ - %%insn_00401a92) db 0
    %%insn_00401a99:
    jmp short 0x401aa4 ; 00401A99 EB09
    %if ($ - %%insn_00401a99) > 2
        %error "LONG_00401A99"
    %endif
    times 2 - ($ - %%insn_00401a99) db 0
    %%insn_00401a9b:
    mov ecx,[ebp-0x2c] ; 00401A9B 8B4DD4
    %if ($ - %%insn_00401a9b) > 3
        %error "LONG_00401A9B"
    %endif
    times 3 - ($ - %%insn_00401a9b) db 0
    %%insn_00401a9e:
    add ecx,0x14 ; 00401A9E 83C114
    %if ($ - %%insn_00401a9e) > 3
        %error "LONG_00401A9E"
    %endif
    times 3 - ($ - %%insn_00401a9e) db 0
    %%insn_00401aa1:
    mov [ebp-0x2c],ecx ; 00401AA1 894DD4
    %if ($ - %%insn_00401aa1) > 3
        %error "LONG_00401AA1"
    %endif
    times 3 - ($ - %%insn_00401aa1) db 0
    %%insn_00401aa4:
    mov edx,[ebp-0x30] ; 00401AA4 8B55D0
    %if ($ - %%insn_00401aa4) > 3
        %error "LONG_00401AA4"
    %endif
    times 3 - ($ - %%insn_00401aa4) db 0
    %%insn_00401aa7:
    mov eax,[ebp-0x2c] ; 00401AA7 8B45D4
    %if ($ - %%insn_00401aa7) > 3
        %error "LONG_00401AA7"
    %endif
    times 3 - ($ - %%insn_00401aa7) db 0
    %%insn_00401aaa:
    cmp eax,[edx*8+0x4223a0] ; 00401AAA 3B04D5A0234200
    %if ($ - %%insn_00401aaa) > 7
        %error "LONG_00401AAA"
    %endif
    times 7 - ($ - %%insn_00401aaa) db 0
    %%insn_00401ab1:
    jnl short 0x401b01 ; 00401AB1 7D4E
    %if ($ - %%insn_00401ab1) > 2
        %error "LONG_00401AB1"
    %endif
    times 2 - ($ - %%insn_00401ab1) db 0
    %%insn_00401ab3:
    mov ecx,[ebp-0x14] ; 00401AB3 8B4DEC
    %if ($ - %%insn_00401ab3) > 3
        %error "LONG_00401AB3"
    %endif
    times 3 - ($ - %%insn_00401ab3) db 0
    %%insn_00401ab6:
    push ecx ; 00401AB6 51
    %if ($ - %%insn_00401ab6) > 1
        %error "LONG_00401AB6"
    %endif
    times 1 - ($ - %%insn_00401ab6) db 0
    %%insn_00401ab7:
    mov edx,[ebp-0x8] ; 00401AB7 8B55F8
    %if ($ - %%insn_00401ab7) > 3
        %error "LONG_00401AB7"
    %endif
    times 3 - ($ - %%insn_00401ab7) db 0
    %%insn_00401aba:
    imul edx,edx,0x14 ; 00401ABA 6BD214
    %if ($ - %%insn_00401aba) > 3
        %error "LONG_00401ABA"
    %endif
    times 3 - ($ - %%insn_00401aba) db 0
    %%insn_00401abd:
    mov eax,[ebp-0x30] ; 00401ABD 8B45D0
    %if ($ - %%insn_00401abd) > 3
        %error "LONG_00401ABD"
    %endif
    times 3 - ($ - %%insn_00401abd) db 0
    %%insn_00401ac0:
    mov ecx,[eax*8+0x4223a4] ; 00401AC0 8B0CC5A4234200
    %if ($ - %%insn_00401ac0) > 7
        %error "LONG_00401AC0"
    %endif
    times 7 - ($ - %%insn_00401ac0) db 0
    db 0x03, 0xCA ; 00401AC7 03CA | add ecx,edx | encoding preserved
    %%insn_00401ac9:
    push ecx ; 00401AC9 51
    %if ($ - %%insn_00401ac9) > 1
        %error "LONG_00401AC9"
    %endif
    times 1 - ($ - %%insn_00401ac9) db 0
    %%insn_00401aca:
    lea edx,[ebp-0x28] ; 00401ACA 8D55D8
    %if ($ - %%insn_00401aca) > 3
        %error "LONG_00401ACA"
    %endif
    times 3 - ($ - %%insn_00401aca) db 0
    %%insn_00401acd:
    push edx ; 00401ACD 52
    %if ($ - %%insn_00401acd) > 1
        %error "LONG_00401ACD"
    %endif
    times 1 - ($ - %%insn_00401acd) db 0
    %%insn_00401ace:
    call 0x40ce90 ; 00401ACE E8BDB30000
    %if ($ - %%insn_00401ace) > 5
        %error "LONG_00401ACE"
    %endif
    times 5 - ($ - %%insn_00401ace) db 0
    %%insn_00401ad3:
    add esp,0xc ; 00401AD3 83C40C
    %if ($ - %%insn_00401ad3) > 3
        %error "LONG_00401AD3"
    %endif
    times 3 - ($ - %%insn_00401ad3) db 0
    %%insn_00401ad6:
    test eax,eax ; 00401AD6 85C0
    %if ($ - %%insn_00401ad6) > 2
        %error "LONG_00401AD6"
    %endif
    times 2 - ($ - %%insn_00401ad6) db 0
    %%insn_00401ad8:
    jnz short 0x401af6 ; 00401AD8 751C
    %if ($ - %%insn_00401ad8) > 2
        %error "LONG_00401AD8"
    %endif
    times 2 - ($ - %%insn_00401ad8) db 0
    %%insn_00401ada:
    mov word [ebp-0x38],0x1 ; 00401ADA 66C745C80100
    %if ($ - %%insn_00401ada) > 6
        %error "LONG_00401ADA"
    %endif
    times 6 - ($ - %%insn_00401ada) db 0
    %%insn_00401ae0:
    mov eax,[ebp-0x30] ; 00401AE0 8B45D0
    %if ($ - %%insn_00401ae0) > 3
        %error "LONG_00401AE0"
    %endif
    times 3 - ($ - %%insn_00401ae0) db 0
    %%insn_00401ae3:
    mov [0x41f340],eax ; 00401AE3 A340F34100
    %if ($ - %%insn_00401ae3) > 5
        %error "LONG_00401AE3"
    %endif
    times 5 - ($ - %%insn_00401ae3) db 0
    %%insn_00401ae8:
    mov ecx,[ebp-0x30] ; 00401AE8 8B4DD0
    %if ($ - %%insn_00401ae8) > 3
        %error "LONG_00401AE8"
    %endif
    times 3 - ($ - %%insn_00401ae8) db 0
    %%insn_00401aeb:
    shl ecx,byte 0xa ; 00401AEB C1E10A
    %if ($ - %%insn_00401aeb) > 3
        %error "LONG_00401AEB"
    %endif
    times 3 - ($ - %%insn_00401aeb) db 0
    %%insn_00401aee:
    or ecx,[ebp-0x8] ; 00401AEE 0B4DF8
    %if ($ - %%insn_00401aee) > 3
        %error "LONG_00401AEE"
    %endif
    times 3 - ($ - %%insn_00401aee) db 0
    %%insn_00401af1:
    mov [ebp-0x18],ecx ; 00401AF1 894DE8
    %if ($ - %%insn_00401af1) > 3
        %error "LONG_00401AF1"
    %endif
    times 3 - ($ - %%insn_00401af1) db 0
    %%insn_00401af4:
    jmp short 0x401b01 ; 00401AF4 EB0B
    %if ($ - %%insn_00401af4) > 2
        %error "LONG_00401AF4"
    %endif
    times 2 - ($ - %%insn_00401af4) db 0
    %%insn_00401af6:
    mov edx,[ebp-0x8] ; 00401AF6 8B55F8
    %if ($ - %%insn_00401af6) > 3
        %error "LONG_00401AF6"
    %endif
    times 3 - ($ - %%insn_00401af6) db 0
    %%insn_00401af9:
    add edx,0x1 ; 00401AF9 83C201
    %if ($ - %%insn_00401af9) > 3
        %error "LONG_00401AF9"
    %endif
    times 3 - ($ - %%insn_00401af9) db 0
    %%insn_00401afc:
    mov [ebp-0x8],edx ; 00401AFC 8955F8
    %if ($ - %%insn_00401afc) > 3
        %error "LONG_00401AFC"
    %endif
    times 3 - ($ - %%insn_00401afc) db 0
    %%insn_00401aff:
    jmp short 0x401a9b ; 00401AFF EB9A
    %if ($ - %%insn_00401aff) > 2
        %error "LONG_00401AFF"
    %endif
    times 2 - ($ - %%insn_00401aff) db 0
    %%insn_00401b01:
    mov eax,[ebp-0x30] ; 00401B01 8B45D0
    %if ($ - %%insn_00401b01) > 3
        %error "LONG_00401B01"
    %endif
    times 3 - ($ - %%insn_00401b01) db 0
    %%insn_00401b04:
    sub eax,0x1 ; 00401B04 83E801
    %if ($ - %%insn_00401b04) > 3
        %error "LONG_00401B04"
    %endif
    times 3 - ($ - %%insn_00401b04) db 0
    %%insn_00401b07:
    mov [ebp-0x30],eax ; 00401B07 8945D0
    %if ($ - %%insn_00401b07) > 3
        %error "LONG_00401B07"
    %endif
    times 3 - ($ - %%insn_00401b07) db 0
    %%insn_00401b0a:
    cmp dword [ebp-0x34],0x15 ; 00401B0A 837DCC15
    %if ($ - %%insn_00401b0a) > 4
        %error "LONG_00401B0A"
    %endif
    times 4 - ($ - %%insn_00401b0a) db 0
    %%insn_00401b0e:
    jnl short 0x401b8f ; 00401B0E 7D7F
    %if ($ - %%insn_00401b0e) > 2
        %error "LONG_00401B0E"
    %endif
    times 2 - ($ - %%insn_00401b0e) db 0
    %%insn_00401b10:
    mov dword [ebp-0x8],0x0 ; 00401B10 C745F800000000
    %if ($ - %%insn_00401b10) > 7
        %error "LONG_00401B10"
    %endif
    times 7 - ($ - %%insn_00401b10) db 0
    %%insn_00401b17:
    mov dword [ebp-0x2c],0x0 ; 00401B17 C745D400000000
    %if ($ - %%insn_00401b17) > 7
        %error "LONG_00401B17"
    %endif
    times 7 - ($ - %%insn_00401b17) db 0
    %%insn_00401b1e:
    jmp short 0x401b29 ; 00401B1E EB09
    %if ($ - %%insn_00401b1e) > 2
        %error "LONG_00401B1E"
    %endif
    times 2 - ($ - %%insn_00401b1e) db 0
    %%insn_00401b20:
    mov ecx,[ebp-0x2c] ; 00401B20 8B4DD4
    %if ($ - %%insn_00401b20) > 3
        %error "LONG_00401B20"
    %endif
    times 3 - ($ - %%insn_00401b20) db 0
    %%insn_00401b23:
    add ecx,0x14 ; 00401B23 83C114
    %if ($ - %%insn_00401b23) > 3
        %error "LONG_00401B23"
    %endif
    times 3 - ($ - %%insn_00401b23) db 0
    %%insn_00401b26:
    mov [ebp-0x2c],ecx ; 00401B26 894DD4
    %if ($ - %%insn_00401b26) > 3
        %error "LONG_00401B26"
    %endif
    times 3 - ($ - %%insn_00401b26) db 0
    %%insn_00401b29:
    mov edx,[ebp-0x34] ; 00401B29 8B55CC
    %if ($ - %%insn_00401b29) > 3
        %error "LONG_00401B29"
    %endif
    times 3 - ($ - %%insn_00401b29) db 0
    %%insn_00401b2c:
    mov eax,[ebp-0x2c] ; 00401B2C 8B45D4
    %if ($ - %%insn_00401b2c) > 3
        %error "LONG_00401B2C"
    %endif
    times 3 - ($ - %%insn_00401b2c) db 0
    %%insn_00401b2f:
    cmp eax,[edx*8+0x4223a0] ; 00401B2F 3B04D5A0234200
    %if ($ - %%insn_00401b2f) > 7
        %error "LONG_00401B2F"
    %endif
    times 7 - ($ - %%insn_00401b2f) db 0
    %%insn_00401b36:
    jnl short 0x401b86 ; 00401B36 7D4E
    %if ($ - %%insn_00401b36) > 2
        %error "LONG_00401B36"
    %endif
    times 2 - ($ - %%insn_00401b36) db 0
    %%insn_00401b38:
    mov ecx,[ebp-0x14] ; 00401B38 8B4DEC
    %if ($ - %%insn_00401b38) > 3
        %error "LONG_00401B38"
    %endif
    times 3 - ($ - %%insn_00401b38) db 0
    %%insn_00401b3b:
    push ecx ; 00401B3B 51
    %if ($ - %%insn_00401b3b) > 1
        %error "LONG_00401B3B"
    %endif
    times 1 - ($ - %%insn_00401b3b) db 0
    %%insn_00401b3c:
    mov edx,[ebp-0x8] ; 00401B3C 8B55F8
    %if ($ - %%insn_00401b3c) > 3
        %error "LONG_00401B3C"
    %endif
    times 3 - ($ - %%insn_00401b3c) db 0
    %%insn_00401b3f:
    imul edx,edx,0x14 ; 00401B3F 6BD214
    %if ($ - %%insn_00401b3f) > 3
        %error "LONG_00401B3F"
    %endif
    times 3 - ($ - %%insn_00401b3f) db 0
    %%insn_00401b42:
    mov eax,[ebp-0x34] ; 00401B42 8B45CC
    %if ($ - %%insn_00401b42) > 3
        %error "LONG_00401B42"
    %endif
    times 3 - ($ - %%insn_00401b42) db 0
    %%insn_00401b45:
    mov ecx,[eax*8+0x4223a4] ; 00401B45 8B0CC5A4234200
    %if ($ - %%insn_00401b45) > 7
        %error "LONG_00401B45"
    %endif
    times 7 - ($ - %%insn_00401b45) db 0
    db 0x03, 0xCA ; 00401B4C 03CA | add ecx,edx | encoding preserved
    %%insn_00401b4e:
    push ecx ; 00401B4E 51
    %if ($ - %%insn_00401b4e) > 1
        %error "LONG_00401B4E"
    %endif
    times 1 - ($ - %%insn_00401b4e) db 0
    %%insn_00401b4f:
    lea edx,[ebp-0x28] ; 00401B4F 8D55D8
    %if ($ - %%insn_00401b4f) > 3
        %error "LONG_00401B4F"
    %endif
    times 3 - ($ - %%insn_00401b4f) db 0
    %%insn_00401b52:
    push edx ; 00401B52 52
    %if ($ - %%insn_00401b52) > 1
        %error "LONG_00401B52"
    %endif
    times 1 - ($ - %%insn_00401b52) db 0
    %%insn_00401b53:
    call 0x40ce90 ; 00401B53 E838B30000
    %if ($ - %%insn_00401b53) > 5
        %error "LONG_00401B53"
    %endif
    times 5 - ($ - %%insn_00401b53) db 0
    %%insn_00401b58:
    add esp,0xc ; 00401B58 83C40C
    %if ($ - %%insn_00401b58) > 3
        %error "LONG_00401B58"
    %endif
    times 3 - ($ - %%insn_00401b58) db 0
    %%insn_00401b5b:
    test eax,eax ; 00401B5B 85C0
    %if ($ - %%insn_00401b5b) > 2
        %error "LONG_00401B5B"
    %endif
    times 2 - ($ - %%insn_00401b5b) db 0
    %%insn_00401b5d:
    jnz short 0x401b7b ; 00401B5D 751C
    %if ($ - %%insn_00401b5d) > 2
        %error "LONG_00401B5D"
    %endif
    times 2 - ($ - %%insn_00401b5d) db 0
    %%insn_00401b5f:
    mov word [ebp-0x38],0x1 ; 00401B5F 66C745C80100
    %if ($ - %%insn_00401b5f) > 6
        %error "LONG_00401B5F"
    %endif
    times 6 - ($ - %%insn_00401b5f) db 0
    %%insn_00401b65:
    mov eax,[ebp-0x34] ; 00401B65 8B45CC
    %if ($ - %%insn_00401b65) > 3
        %error "LONG_00401B65"
    %endif
    times 3 - ($ - %%insn_00401b65) db 0
    %%insn_00401b68:
    mov [0x41f340],eax ; 00401B68 A340F34100
    %if ($ - %%insn_00401b68) > 5
        %error "LONG_00401B68"
    %endif
    times 5 - ($ - %%insn_00401b68) db 0
    %%insn_00401b6d:
    mov ecx,[ebp-0x34] ; 00401B6D 8B4DCC
    %if ($ - %%insn_00401b6d) > 3
        %error "LONG_00401B6D"
    %endif
    times 3 - ($ - %%insn_00401b6d) db 0
    %%insn_00401b70:
    shl ecx,byte 0xa ; 00401B70 C1E10A
    %if ($ - %%insn_00401b70) > 3
        %error "LONG_00401B70"
    %endif
    times 3 - ($ - %%insn_00401b70) db 0
    %%insn_00401b73:
    or ecx,[ebp-0x8] ; 00401B73 0B4DF8
    %if ($ - %%insn_00401b73) > 3
        %error "LONG_00401B73"
    %endif
    times 3 - ($ - %%insn_00401b73) db 0
    %%insn_00401b76:
    mov [ebp-0x18],ecx ; 00401B76 894DE8
    %if ($ - %%insn_00401b76) > 3
        %error "LONG_00401B76"
    %endif
    times 3 - ($ - %%insn_00401b76) db 0
    %%insn_00401b79:
    jmp short 0x401b86 ; 00401B79 EB0B
    %if ($ - %%insn_00401b79) > 2
        %error "LONG_00401B79"
    %endif
    times 2 - ($ - %%insn_00401b79) db 0
    %%insn_00401b7b:
    mov edx,[ebp-0x8] ; 00401B7B 8B55F8
    %if ($ - %%insn_00401b7b) > 3
        %error "LONG_00401B7B"
    %endif
    times 3 - ($ - %%insn_00401b7b) db 0
    %%insn_00401b7e:
    add edx,0x1 ; 00401B7E 83C201
    %if ($ - %%insn_00401b7e) > 3
        %error "LONG_00401B7E"
    %endif
    times 3 - ($ - %%insn_00401b7e) db 0
    %%insn_00401b81:
    mov [ebp-0x8],edx ; 00401B81 8955F8
    %if ($ - %%insn_00401b81) > 3
        %error "LONG_00401B81"
    %endif
    times 3 - ($ - %%insn_00401b81) db 0
    %%insn_00401b84:
    jmp short 0x401b20 ; 00401B84 EB9A
    %if ($ - %%insn_00401b84) > 2
        %error "LONG_00401B84"
    %endif
    times 2 - ($ - %%insn_00401b84) db 0
    %%insn_00401b86:
    mov eax,[ebp-0x34] ; 00401B86 8B45CC
    %if ($ - %%insn_00401b86) > 3
        %error "LONG_00401B86"
    %endif
    times 3 - ($ - %%insn_00401b86) db 0
    %%insn_00401b89:
    add eax,0x1 ; 00401B89 83C001
    %if ($ - %%insn_00401b89) > 3
        %error "LONG_00401B89"
    %endif
    times 3 - ($ - %%insn_00401b89) db 0
    %%insn_00401b8c:
    mov [ebp-0x34],eax ; 00401B8C 8945CC
    %if ($ - %%insn_00401b8c) > 3
        %error "LONG_00401B8C"
    %endif
    times 3 - ($ - %%insn_00401b8c) db 0
    %%insn_00401b8f:
    cmp dword [ebp-0x30],0x0 ; 00401B8F 837DD000
    %if ($ - %%insn_00401b8f) > 4
        %error "LONG_00401B8F"
    %endif
    times 4 - ($ - %%insn_00401b8f) db 0
    %%insn_00401b93:
    jnl short 0x401b9b ; 00401B93 7D06
    %if ($ - %%insn_00401b93) > 2
        %error "LONG_00401B93"
    %endif
    times 2 - ($ - %%insn_00401b93) db 0
    %%insn_00401b95:
    cmp dword [ebp-0x34],0x15 ; 00401B95 837DCC15
    %if ($ - %%insn_00401b95) > 4
        %error "LONG_00401B95"
    %endif
    times 4 - ($ - %%insn_00401b95) db 0
    %%insn_00401b99:
    jnl short 0x401bac ; 00401B99 7D11
    %if ($ - %%insn_00401b99) > 2
        %error "LONG_00401B99"
    %endif
    times 2 - ($ - %%insn_00401b99) db 0
    %%insn_00401b9b:
    mov ecx,[ebp-0x38] ; 00401B9B 8B4DC8
    %if ($ - %%insn_00401b9b) > 3
        %error "LONG_00401B9B"
    %endif
    times 3 - ($ - %%insn_00401b9b) db 0
    %%insn_00401b9e:
    and ecx,0xffff ; 00401B9E 81E1FFFF0000
    %if ($ - %%insn_00401b9e) > 6
        %error "LONG_00401B9E"
    %endif
    times 6 - ($ - %%insn_00401b9e) db 0
    %%insn_00401ba4:
    test ecx,ecx ; 00401BA4 85C9
    %if ($ - %%insn_00401ba4) > 2
        %error "LONG_00401BA4"
    %endif
    times 2 - ($ - %%insn_00401ba4) db 0
    %%insn_00401ba6:
    jz 0x401a85 ; 00401BA6 0F84D9FEFFFF
    %if ($ - %%insn_00401ba6) > 6
        %error "LONG_00401BA6"
    %endif
    times 6 - ($ - %%insn_00401ba6) db 0
    %%insn_00401bac:
    mov eax,[ebp-0x18] ; 00401BAC 8B45E8
    %if ($ - %%insn_00401bac) > 3
        %error "LONG_00401BAC"
    %endif
    times 3 - ($ - %%insn_00401bac) db 0
    db 0x8B, 0xE5 ; 00401BAF 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401bb1:
    pop ebp ; 00401BB1 5D
    %if ($ - %%insn_00401bb1) > 1
        %error "LONG_00401BB1"
    %endif
    times 1 - ($ - %%insn_00401bb1) db 0
    %%insn_00401bb2:
    ret ; 00401BB2 C3
    %if ($ - %%insn_00401bb2) > 1
        %error "LONG_00401BB2"
    %endif
    times 1 - ($ - %%insn_00401bb2) db 0
    %if ($ - %%fragment_start) != 896
        %error "function fragment size drift: 00401833"
    %endif
%endmacro
