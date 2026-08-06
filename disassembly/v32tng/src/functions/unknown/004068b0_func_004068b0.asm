; PE virtual entry 004068B0
; Ghidra working symbol: FUN_004068b0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004068b0_part_00 0
    %%fragment_start:
func_004068b0:
    %%insn_004068b0:
    push ebp ; 004068B0 55
    %if ($ - %%insn_004068b0) > 1
        %error "LONG_004068B0"
    %endif
    times 1 - ($ - %%insn_004068b0) db 0
    db 0x8B, 0xEC ; 004068B1 8BEC | mov ebp,esp | encoding preserved
    %%insn_004068b3:
    push ecx ; 004068B3 51
    %if ($ - %%insn_004068b3) > 1
        %error "LONG_004068B3"
    %endif
    times 1 - ($ - %%insn_004068b3) db 0
    %%insn_004068b4:
    push esi ; 004068B4 56
    %if ($ - %%insn_004068b4) > 1
        %error "LONG_004068B4"
    %endif
    times 1 - ($ - %%insn_004068b4) db 0
    %%insn_004068b5:
    mov byte [0x41f458],0x0 ; 004068B5 C60558F4410000
    %if ($ - %%insn_004068b5) > 7
        %error "LONG_004068B5"
    %endif
    times 7 - ($ - %%insn_004068b5) db 0
    %%insn_004068bc:
    mov ax,[0x41f474] ; 004068BC 66A174F44100
    %if ($ - %%insn_004068bc) > 6
        %error "LONG_004068BC"
    %endif
    times 6 - ($ - %%insn_004068bc) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 004068C2 66050100 | add ax,0x1 | encoding preserved
    %%insn_004068c6:
    mov [0x41f474],ax ; 004068C6 66A374F44100
    %if ($ - %%insn_004068c6) > 6
        %error "LONG_004068C6"
    %endif
    times 6 - ($ - %%insn_004068c6) db 0
    %%insn_004068cc:
    movsx ecx,word [ebp+0xc] ; 004068CC 0FBF4D0C
    %if ($ - %%insn_004068cc) > 4
        %error "LONG_004068CC"
    %endif
    times 4 - ($ - %%insn_004068cc) db 0
    %%insn_004068d0:
    test ecx,ecx ; 004068D0 85C9
    %if ($ - %%insn_004068d0) > 2
        %error "LONG_004068D0"
    %endif
    times 2 - ($ - %%insn_004068d0) db 0
    %%insn_004068d2:
    jnz short 0x4068f3 ; 004068D2 751F
    %if ($ - %%insn_004068d2) > 2
        %error "LONG_004068D2"
    %endif
    times 2 - ($ - %%insn_004068d2) db 0
    %%insn_004068d4:
    mov word [0x41f460],0x0 ; 004068D4 66C70560F441000000
    %if ($ - %%insn_004068d4) > 9
        %error "LONG_004068D4"
    %endif
    times 9 - ($ - %%insn_004068d4) db 0
    %%insn_004068dd:
    mov dx,[ebp+0xc] ; 004068DD 668B550C
    %if ($ - %%insn_004068dd) > 4
        %error "LONG_004068DD"
    %endif
    times 4 - ($ - %%insn_004068dd) db 0
    %%insn_004068e1:
    push edx ; 004068E1 52
    %if ($ - %%insn_004068e1) > 1
        %error "LONG_004068E1"
    %endif
    times 1 - ($ - %%insn_004068e1) db 0
    %%insn_004068e2:
    mov al,[ebp+0x8] ; 004068E2 8A4508
    %if ($ - %%insn_004068e2) > 3
        %error "LONG_004068E2"
    %endif
    times 3 - ($ - %%insn_004068e2) db 0
    %%insn_004068e5:
    push eax ; 004068E5 50
    %if ($ - %%insn_004068e5) > 1
        %error "LONG_004068E5"
    %endif
    times 1 - ($ - %%insn_004068e5) db 0
    %%insn_004068e6:
    call 0x40604c ; 004068E6 E861F7FFFF
    %if ($ - %%insn_004068e6) > 5
        %error "LONG_004068E6"
    %endif
    times 5 - ($ - %%insn_004068e6) db 0
    %%insn_004068eb:
    add esp,0x8 ; 004068EB 83C408
    %if ($ - %%insn_004068eb) > 3
        %error "LONG_004068EB"
    %endif
    times 3 - ($ - %%insn_004068eb) db 0
    %%insn_004068ee:
    jmp 0x40698e ; 004068EE E99B000000
    %if ($ - %%insn_004068ee) > 5
        %error "LONG_004068EE"
    %endif
    times 5 - ($ - %%insn_004068ee) db 0
    %%insn_004068f3:
    movsx ecx,word [ebp+0xc] ; 004068F3 0FBF4D0C
    %if ($ - %%insn_004068f3) > 4
        %error "LONG_004068F3"
    %endif
    times 4 - ($ - %%insn_004068f3) db 0
    %%insn_004068f7:
    cmp ecx,0x1 ; 004068F7 83F901
    %if ($ - %%insn_004068f7) > 3
        %error "LONG_004068F7"
    %endif
    times 3 - ($ - %%insn_004068f7) db 0
    %%insn_004068fa:
    jnz short 0x406915 ; 004068FA 7519
    %if ($ - %%insn_004068fa) > 2
        %error "LONG_004068FA"
    %endif
    times 2 - ($ - %%insn_004068fa) db 0
    %%insn_004068fc:
    mov word [0x41f460],0x1 ; 004068FC 66C70560F441000100
    %if ($ - %%insn_004068fc) > 9
        %error "LONG_004068FC"
    %endif
    times 9 - ($ - %%insn_004068fc) db 0
    %%insn_00406905:
    push dword 0x0 ; 00406905 6A00
    %if ($ - %%insn_00406905) > 2
        %error "LONG_00406905"
    %endif
    times 2 - ($ - %%insn_00406905) db 0
    %%insn_00406907:
    mov dl,[ebp+0x8] ; 00406907 8A5508
    %if ($ - %%insn_00406907) > 3
        %error "LONG_00406907"
    %endif
    times 3 - ($ - %%insn_00406907) db 0
    %%insn_0040690a:
    push edx ; 0040690A 52
    %if ($ - %%insn_0040690a) > 1
        %error "LONG_0040690A"
    %endif
    times 1 - ($ - %%insn_0040690a) db 0
    %%insn_0040690b:
    call 0x40604c ; 0040690B E83CF7FFFF
    %if ($ - %%insn_0040690b) > 5
        %error "LONG_0040690B"
    %endif
    times 5 - ($ - %%insn_0040690b) db 0
    %%insn_00406910:
    add esp,0x8 ; 00406910 83C408
    %if ($ - %%insn_00406910) > 3
        %error "LONG_00406910"
    %endif
    times 3 - ($ - %%insn_00406910) db 0
    %%insn_00406913:
    jmp short 0x40698e ; 00406913 EB79
    %if ($ - %%insn_00406913) > 2
        %error "LONG_00406913"
    %endif
    times 2 - ($ - %%insn_00406913) db 0
    %%insn_00406915:
    movsx ecx,word [ebp+0xc] ; 00406915 0FBF4D0C
    %if ($ - %%insn_00406915) > 4
        %error "LONG_00406915"
    %endif
    times 4 - ($ - %%insn_00406915) db 0
    %%insn_00406919:
    sub ecx,0x2 ; 00406919 83E902
    %if ($ - %%insn_00406919) > 3
        %error "LONG_00406919"
    %endif
    times 3 - ($ - %%insn_00406919) db 0
    %%insn_0040691c:
    imul ecx,ecx,0x3 ; 0040691C 6BC903
    %if ($ - %%insn_0040691c) > 3
        %error "LONG_0040691C"
    %endif
    times 3 - ($ - %%insn_0040691c) db 0
    %%insn_0040691f:
    movsx eax,word [0x41f474] ; 0040691F 0FBF0574F44100
    %if ($ - %%insn_0040691f) > 7
        %error "LONG_0040691F"
    %endif
    times 7 - ($ - %%insn_0040691f) db 0
    %%insn_00406926:
    cdq ; 00406926 99
    %if ($ - %%insn_00406926) > 1
        %error "LONG_00406926"
    %endif
    times 1 - ($ - %%insn_00406926) db 0
    %%insn_00406927:
    mov esi,0x3 ; 00406927 BE03000000
    %if ($ - %%insn_00406927) > 5
        %error "LONG_00406927"
    %endif
    times 5 - ($ - %%insn_00406927) db 0
    %%insn_0040692c:
    idiv esi ; 0040692C F7FE
    %if ($ - %%insn_0040692c) > 2
        %error "LONG_0040692C"
    %endif
    times 2 - ($ - %%insn_0040692c) db 0
    %%insn_0040692e:
    movsx dx,byte [ecx+edx+0x41b900] ; 0040692E 660FBE941100B94100
    %if ($ - %%insn_0040692e) > 9
        %error "LONG_0040692E"
    %endif
    times 9 - ($ - %%insn_0040692e) db 0
    %%insn_00406937:
    mov [ebp-0x4],dx ; 00406937 668955FC
    %if ($ - %%insn_00406937) > 4
        %error "LONG_00406937"
    %endif
    times 4 - ($ - %%insn_00406937) db 0
    %%insn_0040693b:
    mov word [0x41f460],0x1 ; 0040693B 66C70560F441000100
    %if ($ - %%insn_0040693b) > 9
        %error "LONG_0040693B"
    %endif
    times 9 - ($ - %%insn_0040693b) db 0
    %%insn_00406944:
    movsx eax,word [ebp-0x4] ; 00406944 0FBF45FC
    %if ($ - %%insn_00406944) > 4
        %error "LONG_00406944"
    %endif
    times 4 - ($ - %%insn_00406944) db 0
    %%insn_00406948:
    cmp eax,0x14 ; 00406948 83F814
    %if ($ - %%insn_00406948) > 3
        %error "LONG_00406948"
    %endif
    times 3 - ($ - %%insn_00406948) db 0
    %%insn_0040694b:
    jnl short 0x406960 ; 0040694B 7D13
    %if ($ - %%insn_0040694b) > 2
        %error "LONG_0040694B"
    %endif
    times 2 - ($ - %%insn_0040694b) db 0
    %%insn_0040694d:
    mov cx,[ebp-0x4] ; 0040694D 668B4DFC
    %if ($ - %%insn_0040694d) > 4
        %error "LONG_0040694D"
    %endif
    times 4 - ($ - %%insn_0040694d) db 0
    %%insn_00406951:
    push ecx ; 00406951 51
    %if ($ - %%insn_00406951) > 1
        %error "LONG_00406951"
    %endif
    times 1 - ($ - %%insn_00406951) db 0
    %%insn_00406952:
    mov dl,[ebp+0x8] ; 00406952 8A5508
    %if ($ - %%insn_00406952) > 3
        %error "LONG_00406952"
    %endif
    times 3 - ($ - %%insn_00406952) db 0
    %%insn_00406955:
    push edx ; 00406955 52
    %if ($ - %%insn_00406955) > 1
        %error "LONG_00406955"
    %endif
    times 1 - ($ - %%insn_00406955) db 0
    %%insn_00406956:
    call 0x40604c ; 00406956 E8F1F6FFFF
    %if ($ - %%insn_00406956) > 5
        %error "LONG_00406956"
    %endif
    times 5 - ($ - %%insn_00406956) db 0
    %%insn_0040695b:
    add esp,0x8 ; 0040695B 83C408
    %if ($ - %%insn_0040695b) > 3
        %error "LONG_0040695B"
    %endif
    times 3 - ($ - %%insn_0040695b) db 0
    %%insn_0040695e:
    jmp short 0x40698e ; 0040695E EB2E
    %if ($ - %%insn_0040695e) > 2
        %error "LONG_0040695E"
    %endif
    times 2 - ($ - %%insn_0040695e) db 0
    %%insn_00406960:
    mov ax,[ebp-0x4] ; 00406960 668B45FC
    %if ($ - %%insn_00406960) > 4
        %error "LONG_00406960"
    %endif
    times 4 - ($ - %%insn_00406960) db 0
    %%insn_00406964:
    push eax ; 00406964 50
    %if ($ - %%insn_00406964) > 1
        %error "LONG_00406964"
    %endif
    times 1 - ($ - %%insn_00406964) db 0
    %%insn_00406965:
    mov cl,[ebp+0x8] ; 00406965 8A4D08
    %if ($ - %%insn_00406965) > 3
        %error "LONG_00406965"
    %endif
    times 3 - ($ - %%insn_00406965) db 0
    %%insn_00406968:
    push ecx ; 00406968 51
    %if ($ - %%insn_00406968) > 1
        %error "LONG_00406968"
    %endif
    times 1 - ($ - %%insn_00406968) db 0
    %%insn_00406969:
    call 0x406427 ; 00406969 E8B9FAFFFF
    %if ($ - %%insn_00406969) > 5
        %error "LONG_00406969"
    %endif
    times 5 - ($ - %%insn_00406969) db 0
    %%insn_0040696e:
    add esp,0x8 ; 0040696E 83C408
    %if ($ - %%insn_0040696e) > 3
        %error "LONG_0040696E"
    %endif
    times 3 - ($ - %%insn_0040696e) db 0
    %%insn_00406971:
    movsx edx,ax ; 00406971 0FBFD0
    %if ($ - %%insn_00406971) > 3
        %error "LONG_00406971"
    %endif
    times 3 - ($ - %%insn_00406971) db 0
    %%insn_00406974:
    test edx,edx ; 00406974 85D2
    %if ($ - %%insn_00406974) > 2
        %error "LONG_00406974"
    %endif
    times 2 - ($ - %%insn_00406974) db 0
    %%insn_00406976:
    jz short 0x40698b ; 00406976 7413
    %if ($ - %%insn_00406976) > 2
        %error "LONG_00406976"
    %endif
    times 2 - ($ - %%insn_00406976) db 0
    %%insn_00406978:
    mov ax,[ebp-0x4] ; 00406978 668B45FC
    %if ($ - %%insn_00406978) > 4
        %error "LONG_00406978"
    %endif
    times 4 - ($ - %%insn_00406978) db 0
    %%insn_0040697c:
    push eax ; 0040697C 50
    %if ($ - %%insn_0040697c) > 1
        %error "LONG_0040697C"
    %endif
    times 1 - ($ - %%insn_0040697c) db 0
    %%insn_0040697d:
    mov cl,[ebp+0x8] ; 0040697D 8A4D08
    %if ($ - %%insn_0040697d) > 3
        %error "LONG_0040697D"
    %endif
    times 3 - ($ - %%insn_0040697d) db 0
    %%insn_00406980:
    push ecx ; 00406980 51
    %if ($ - %%insn_00406980) > 1
        %error "LONG_00406980"
    %endif
    times 1 - ($ - %%insn_00406980) db 0
    %%insn_00406981:
    call 0x4066a9 ; 00406981 E823FDFFFF
    %if ($ - %%insn_00406981) > 5
        %error "LONG_00406981"
    %endif
    times 5 - ($ - %%insn_00406981) db 0
    %%insn_00406986:
    add esp,0x8 ; 00406986 83C408
    %if ($ - %%insn_00406986) > 3
        %error "LONG_00406986"
    %endif
    times 3 - ($ - %%insn_00406986) db 0
    %%insn_00406989:
    jmp short 0x40698e ; 00406989 EB03
    %if ($ - %%insn_00406989) > 2
        %error "LONG_00406989"
    %endif
    times 2 - ($ - %%insn_00406989) db 0
    db 0x66, 0x33, 0xC0 ; 0040698B 6633C0 | xor ax,ax | encoding preserved
    %%insn_0040698e:
    pop esi ; 0040698E 5E
    %if ($ - %%insn_0040698e) > 1
        %error "LONG_0040698E"
    %endif
    times 1 - ($ - %%insn_0040698e) db 0
    db 0x8B, 0xE5 ; 0040698F 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00406991:
    pop ebp ; 00406991 5D
    %if ($ - %%insn_00406991) > 1
        %error "LONG_00406991"
    %endif
    times 1 - ($ - %%insn_00406991) db 0
    %%insn_00406992:
    ret ; 00406992 C3
    %if ($ - %%insn_00406992) > 1
        %error "LONG_00406992"
    %endif
    times 1 - ($ - %%insn_00406992) db 0
    %if ($ - %%fragment_start) != 227
        %error "function fragment size drift: 004068B0"
    %endif
%endmacro
