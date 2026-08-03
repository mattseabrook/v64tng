; PE virtual entry 004157B0
; Ghidra working symbol: FUN_004157b0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004157b0_part_00 0
    %%fragment_start:
func_004157b0:
    %%insn_004157b0:
    mov eax,0x1004 ; 004157B0 B804100000
    %if ($ - %%insn_004157b0) > 5
        %error "LONG_004157B0"
    %endif
    times 5 - ($ - %%insn_004157b0) db 0
    %%insn_004157b5:
    call 0x417850 ; 004157B5 E896200000
    %if ($ - %%insn_004157b5) > 5
        %error "LONG_004157B5"
    %endif
    times 5 - ($ - %%insn_004157b5) db 0
    %%insn_004157ba:
    push ebx ; 004157BA 53
    %if ($ - %%insn_004157ba) > 1
        %error "LONG_004157BA"
    %endif
    times 1 - ($ - %%insn_004157ba) db 0
    %%insn_004157bb:
    mov ebx,[esp+0x100c] ; 004157BB 8B9C240C100000
    %if ($ - %%insn_004157bb) > 7
        %error "LONG_004157BB"
    %endif
    times 7 - ($ - %%insn_004157bb) db 0
    %%insn_004157c2:
    push ebp ; 004157C2 55
    %if ($ - %%insn_004157c2) > 1
        %error "LONG_004157C2"
    %endif
    times 1 - ($ - %%insn_004157c2) db 0
    %%insn_004157c3:
    push esi ; 004157C3 56
    %if ($ - %%insn_004157c3) > 1
        %error "LONG_004157C3"
    %endif
    times 1 - ($ - %%insn_004157c3) db 0
    %%insn_004157c4:
    push edi ; 004157C4 57
    %if ($ - %%insn_004157c4) > 1
        %error "LONG_004157C4"
    %endif
    times 1 - ($ - %%insn_004157c4) db 0
    db 0x33, 0xED ; 004157C5 33ED | xor ebp,ebp | encoding preserved
    %%insn_004157c7:
    push dword 0x1 ; 004157C7 6A01
    %if ($ - %%insn_004157c7) > 2
        %error "LONG_004157C7"
    %endif
    times 2 - ($ - %%insn_004157c7) db 0
    %%insn_004157c9:
    push ebp ; 004157C9 55
    %if ($ - %%insn_004157c9) > 1
        %error "LONG_004157C9"
    %endif
    times 1 - ($ - %%insn_004157c9) db 0
    %%insn_004157ca:
    push ebx ; 004157CA 53
    %if ($ - %%insn_004157ca) > 1
        %error "LONG_004157CA"
    %endif
    times 1 - ($ - %%insn_004157ca) db 0
    %%insn_004157cb:
    call 0x411310 ; 004157CB E840BBFFFF
    %if ($ - %%insn_004157cb) > 5
        %error "LONG_004157CB"
    %endif
    times 5 - ($ - %%insn_004157cb) db 0
    db 0x8B, 0xF8 ; 004157D0 8BF8 | mov edi,eax | encoding preserved
    %%insn_004157d2:
    add esp,0xc ; 004157D2 83C40C
    %if ($ - %%insn_004157d2) > 3
        %error "LONG_004157D2"
    %endif
    times 3 - ($ - %%insn_004157d2) db 0
    %%insn_004157d5:
    cmp edi,0xffffffffffffffff ; 004157D5 83FFFF
    %if ($ - %%insn_004157d5) > 3
        %error "LONG_004157D5"
    %endif
    times 3 - ($ - %%insn_004157d5) db 0
    %%insn_004157d8:
    mov [esp+0x10],edi ; 004157D8 897C2410
    %if ($ - %%insn_004157d8) > 4
        %error "LONG_004157D8"
    %endif
    times 4 - ($ - %%insn_004157d8) db 0
    %%insn_004157dc:
    jz 0x4158f0 ; 004157DC 0F840E010000
    %if ($ - %%insn_004157dc) > 6
        %error "LONG_004157DC"
    %endif
    times 6 - ($ - %%insn_004157dc) db 0
    %%insn_004157e2:
    push dword 0x2 ; 004157E2 6A02
    %if ($ - %%insn_004157e2) > 2
        %error "LONG_004157E2"
    %endif
    times 2 - ($ - %%insn_004157e2) db 0
    %%insn_004157e4:
    push ebp ; 004157E4 55
    %if ($ - %%insn_004157e4) > 1
        %error "LONG_004157E4"
    %endif
    times 1 - ($ - %%insn_004157e4) db 0
    %%insn_004157e5:
    push ebx ; 004157E5 53
    %if ($ - %%insn_004157e5) > 1
        %error "LONG_004157E5"
    %endif
    times 1 - ($ - %%insn_004157e5) db 0
    %%insn_004157e6:
    call 0x411310 ; 004157E6 E825BBFFFF
    %if ($ - %%insn_004157e6) > 5
        %error "LONG_004157E6"
    %endif
    times 5 - ($ - %%insn_004157e6) db 0
    %%insn_004157eb:
    add esp,0xc ; 004157EB 83C40C
    %if ($ - %%insn_004157eb) > 3
        %error "LONG_004157EB"
    %endif
    times 3 - ($ - %%insn_004157eb) db 0
    %%insn_004157ee:
    cmp eax,0xffffffffffffffff ; 004157EE 83F8FF
    %if ($ - %%insn_004157ee) > 3
        %error "LONG_004157EE"
    %endif
    times 3 - ($ - %%insn_004157ee) db 0
    %%insn_004157f1:
    jz 0x4158f0 ; 004157F1 0F84F9000000
    %if ($ - %%insn_004157f1) > 6
        %error "LONG_004157F1"
    %endif
    times 6 - ($ - %%insn_004157f1) db 0
    %%insn_004157f7:
    mov ecx,[esp+0x101c] ; 004157F7 8B8C241C100000
    %if ($ - %%insn_004157f7) > 7
        %error "LONG_004157F7"
    %endif
    times 7 - ($ - %%insn_004157f7) db 0
    db 0x8B, 0xF1 ; 004157FE 8BF1 | mov esi,ecx | encoding preserved
    db 0x2B, 0xF0 ; 00415800 2BF0 | sub esi,eax | encoding preserved
    %%insn_00415802:
    test esi,esi ; 00415802 85F6
    %if ($ - %%insn_00415802) > 2
        %error "LONG_00415802"
    %endif
    times 2 - ($ - %%insn_00415802) db 0
    %%insn_00415804:
    jng 0x415891 ; 00415804 0F8E87000000
    %if ($ - %%insn_00415804) > 6
        %error "LONG_00415804"
    %endif
    times 6 - ($ - %%insn_00415804) db 0
    %%insn_0041580a:
    mov ecx,0x400 ; 0041580A B900040000
    %if ($ - %%insn_0041580a) > 5
        %error "LONG_0041580A"
    %endif
    times 5 - ($ - %%insn_0041580a) db 0
    db 0x33, 0xC0 ; 0041580F 33C0 | xor eax,eax | encoding preserved
    %%insn_00415811:
    lea edi,[esp+0x14] ; 00415811 8D7C2414
    %if ($ - %%insn_00415811) > 4
        %error "LONG_00415811"
    %endif
    times 4 - ($ - %%insn_00415811) db 0
    %%insn_00415815:
    push dword 0x8000 ; 00415815 6800800000
    %if ($ - %%insn_00415815) > 5
        %error "LONG_00415815"
    %endif
    times 5 - ($ - %%insn_00415815) db 0
    %%insn_0041581a:
    rep stosd ; 0041581A F3AB
    %if ($ - %%insn_0041581a) > 2
        %error "LONG_0041581A"
    %endif
    times 2 - ($ - %%insn_0041581a) db 0
    %%insn_0041581c:
    push ebx ; 0041581C 53
    %if ($ - %%insn_0041581c) > 1
        %error "LONG_0041581C"
    %endif
    times 1 - ($ - %%insn_0041581c) db 0
    %%insn_0041581d:
    call 0x4177e0 ; 0041581D E8BE1F0000
    %if ($ - %%insn_0041581d) > 5
        %error "LONG_0041581D"
    %endif
    times 5 - ($ - %%insn_0041581d) db 0
    %%insn_00415822:
    add esp,0x8 ; 00415822 83C408
    %if ($ - %%insn_00415822) > 3
        %error "LONG_00415822"
    %endif
    times 3 - ($ - %%insn_00415822) db 0
    db 0x8B, 0xF8 ; 00415825 8BF8 | mov edi,eax | encoding preserved
    %%insn_00415827:
    cmp esi,0x1000 ; 00415827 81FE00100000
    %if ($ - %%insn_00415827) > 6
        %error "LONG_00415827"
    %endif
    times 6 - ($ - %%insn_00415827) db 0
    %%insn_0041582d:
    mov eax,0x1000 ; 0041582D B800100000
    %if ($ - %%insn_0041582d) > 5
        %error "LONG_0041582D"
    %endif
    times 5 - ($ - %%insn_0041582d) db 0
    %%insn_00415832:
    jnl short 0x415836 ; 00415832 7D02
    %if ($ - %%insn_00415832) > 2
        %error "LONG_00415832"
    %endif
    times 2 - ($ - %%insn_00415832) db 0
    db 0x8B, 0xC6 ; 00415834 8BC6 | mov eax,esi | encoding preserved
    %%insn_00415836:
    push eax ; 00415836 50
    %if ($ - %%insn_00415836) > 1
        %error "LONG_00415836"
    %endif
    times 1 - ($ - %%insn_00415836) db 0
    %%insn_00415837:
    lea eax,[esp+0x18] ; 00415837 8D442418
    %if ($ - %%insn_00415837) > 4
        %error "LONG_00415837"
    %endif
    times 4 - ($ - %%insn_00415837) db 0
    %%insn_0041583b:
    push eax ; 0041583B 50
    %if ($ - %%insn_0041583b) > 1
        %error "LONG_0041583B"
    %endif
    times 1 - ($ - %%insn_0041583b) db 0
    %%insn_0041583c:
    push ebx ; 0041583C 53
    %if ($ - %%insn_0041583c) > 1
        %error "LONG_0041583C"
    %endif
    times 1 - ($ - %%insn_0041583c) db 0
    %%insn_0041583d:
    call 0x40fa60 ; 0041583D E81EA2FFFF
    %if ($ - %%insn_0041583d) > 5
        %error "LONG_0041583D"
    %endif
    times 5 - ($ - %%insn_0041583d) db 0
    %%insn_00415842:
    add esp,0xc ; 00415842 83C40C
    %if ($ - %%insn_00415842) > 3
        %error "LONG_00415842"
    %endif
    times 3 - ($ - %%insn_00415842) db 0
    %%insn_00415845:
    cmp eax,0xffffffffffffffff ; 00415845 83F8FF
    %if ($ - %%insn_00415845) > 3
        %error "LONG_00415845"
    %endif
    times 3 - ($ - %%insn_00415845) db 0
    %%insn_00415848:
    jz short 0x415852 ; 00415848 7408
    %if ($ - %%insn_00415848) > 2
        %error "LONG_00415848"
    %endif
    times 2 - ($ - %%insn_00415848) db 0
    db 0x2B, 0xF0 ; 0041584A 2BF0 | sub esi,eax | encoding preserved
    %%insn_0041584c:
    test esi,esi ; 0041584C 85F6
    %if ($ - %%insn_0041584c) > 2
        %error "LONG_0041584C"
    %endif
    times 2 - ($ - %%insn_0041584c) db 0
    %%insn_0041584e:
    jng short 0x41586a ; 0041584E 7E1A
    %if ($ - %%insn_0041584e) > 2
        %error "LONG_0041584E"
    %endif
    times 2 - ($ - %%insn_0041584e) db 0
    %%insn_00415850:
    jmp short 0x415827 ; 00415850 EBD5
    %if ($ - %%insn_00415850) > 2
        %error "LONG_00415850"
    %endif
    times 2 - ($ - %%insn_00415850) db 0
    %%insn_00415852:
    call 0x410e20 ; 00415852 E8C9B5FFFF
    %if ($ - %%insn_00415852) > 5
        %error "LONG_00415852"
    %endif
    times 5 - ($ - %%insn_00415852) db 0
    %%insn_00415857:
    cmp dword [eax],0x5 ; 00415857 833805
    %if ($ - %%insn_00415857) > 3
        %error "LONG_00415857"
    %endif
    times 3 - ($ - %%insn_00415857) db 0
    %%insn_0041585a:
    jnz short 0x415867 ; 0041585A 750B
    %if ($ - %%insn_0041585a) > 2
        %error "LONG_0041585A"
    %endif
    times 2 - ($ - %%insn_0041585a) db 0
    %%insn_0041585c:
    call 0x410e10 ; 0041585C E8AFB5FFFF
    %if ($ - %%insn_0041585c) > 5
        %error "LONG_0041585C"
    %endif
    times 5 - ($ - %%insn_0041585c) db 0
    %%insn_00415861:
    mov dword [eax],0xd ; 00415861 C7000D000000
    %if ($ - %%insn_00415861) > 6
        %error "LONG_00415861"
    %endif
    times 6 - ($ - %%insn_00415861) db 0
    %%insn_00415867:
    or ebp,0xffffffffffffffff ; 00415867 83CDFF
    %if ($ - %%insn_00415867) > 3
        %error "LONG_00415867"
    %endif
    times 3 - ($ - %%insn_00415867) db 0
    %%insn_0041586a:
    push edi ; 0041586A 57
    %if ($ - %%insn_0041586a) > 1
        %error "LONG_0041586A"
    %endif
    times 1 - ($ - %%insn_0041586a) db 0
    %%insn_0041586b:
    push ebx ; 0041586B 53
    %if ($ - %%insn_0041586b) > 1
        %error "LONG_0041586B"
    %endif
    times 1 - ($ - %%insn_0041586b) db 0
    %%insn_0041586c:
    call 0x4177e0 ; 0041586C E86F1F0000
    %if ($ - %%insn_0041586c) > 5
        %error "LONG_0041586C"
    %endif
    times 5 - ($ - %%insn_0041586c) db 0
    %%insn_00415871:
    mov edi,[esp+0x18] ; 00415871 8B7C2418
    %if ($ - %%insn_00415871) > 4
        %error "LONG_00415871"
    %endif
    times 4 - ($ - %%insn_00415871) db 0
    %%insn_00415875:
    add esp,0x8 ; 00415875 83C408
    %if ($ - %%insn_00415875) > 3
        %error "LONG_00415875"
    %endif
    times 3 - ($ - %%insn_00415875) db 0
    %%insn_00415878:
    push dword 0x0 ; 00415878 6A00
    %if ($ - %%insn_00415878) > 2
        %error "LONG_00415878"
    %endif
    times 2 - ($ - %%insn_00415878) db 0
    %%insn_0041587a:
    push edi ; 0041587A 57
    %if ($ - %%insn_0041587a) > 1
        %error "LONG_0041587A"
    %endif
    times 1 - ($ - %%insn_0041587a) db 0
    %%insn_0041587b:
    push ebx ; 0041587B 53
    %if ($ - %%insn_0041587b) > 1
        %error "LONG_0041587B"
    %endif
    times 1 - ($ - %%insn_0041587b) db 0
    %%insn_0041587c:
    call 0x411310 ; 0041587C E88FBAFFFF
    %if ($ - %%insn_0041587c) > 5
        %error "LONG_0041587C"
    %endif
    times 5 - ($ - %%insn_0041587c) db 0
    %%insn_00415881:
    add esp,0xc ; 00415881 83C40C
    %if ($ - %%insn_00415881) > 3
        %error "LONG_00415881"
    %endif
    times 3 - ($ - %%insn_00415881) db 0
    db 0x8B, 0xC5 ; 00415884 8BC5 | mov eax,ebp | encoding preserved
    %%insn_00415886:
    pop edi ; 00415886 5F
    %if ($ - %%insn_00415886) > 1
        %error "LONG_00415886"
    %endif
    times 1 - ($ - %%insn_00415886) db 0
    %%insn_00415887:
    pop esi ; 00415887 5E
    %if ($ - %%insn_00415887) > 1
        %error "LONG_00415887"
    %endif
    times 1 - ($ - %%insn_00415887) db 0
    %%insn_00415888:
    pop ebp ; 00415888 5D
    %if ($ - %%insn_00415888) > 1
        %error "LONG_00415888"
    %endif
    times 1 - ($ - %%insn_00415888) db 0
    %%insn_00415889:
    pop ebx ; 00415889 5B
    %if ($ - %%insn_00415889) > 1
        %error "LONG_00415889"
    %endif
    times 1 - ($ - %%insn_00415889) db 0
    %%insn_0041588a:
    add esp,0x1004 ; 0041588A 81C404100000
    %if ($ - %%insn_0041588a) > 6
        %error "LONG_0041588A"
    %endif
    times 6 - ($ - %%insn_0041588a) db 0
    %%insn_00415890:
    ret ; 00415890 C3
    %if ($ - %%insn_00415890) > 1
        %error "LONG_00415890"
    %endif
    times 1 - ($ - %%insn_00415890) db 0
    %%insn_00415891:
    jnl short 0x4158d7 ; 00415891 7D44
    %if ($ - %%insn_00415891) > 2
        %error "LONG_00415891"
    %endif
    times 2 - ($ - %%insn_00415891) db 0
    %%insn_00415893:
    push dword 0x0 ; 00415893 6A00
    %if ($ - %%insn_00415893) > 2
        %error "LONG_00415893"
    %endif
    times 2 - ($ - %%insn_00415893) db 0
    %%insn_00415895:
    push ecx ; 00415895 51
    %if ($ - %%insn_00415895) > 1
        %error "LONG_00415895"
    %endif
    times 1 - ($ - %%insn_00415895) db 0
    %%insn_00415896:
    push ebx ; 00415896 53
    %if ($ - %%insn_00415896) > 1
        %error "LONG_00415896"
    %endif
    times 1 - ($ - %%insn_00415896) db 0
    %%insn_00415897:
    call 0x411310 ; 00415897 E874BAFFFF
    %if ($ - %%insn_00415897) > 5
        %error "LONG_00415897"
    %endif
    times 5 - ($ - %%insn_00415897) db 0
    %%insn_0041589c:
    add esp,0xc ; 0041589C 83C40C
    %if ($ - %%insn_0041589c) > 3
        %error "LONG_0041589C"
    %endif
    times 3 - ($ - %%insn_0041589c) db 0
    %%insn_0041589f:
    push ebx ; 0041589F 53
    %if ($ - %%insn_0041589f) > 1
        %error "LONG_0041589F"
    %endif
    times 1 - ($ - %%insn_0041589f) db 0
    %%insn_004158a0:
    call 0x4110f0 ; 004158A0 E84BB8FFFF
    %if ($ - %%insn_004158a0) > 5
        %error "LONG_004158A0"
    %endif
    times 5 - ($ - %%insn_004158a0) db 0
    %%insn_004158a5:
    add esp,0x4 ; 004158A5 83C404
    %if ($ - %%insn_004158a5) > 3
        %error "LONG_004158A5"
    %endif
    times 3 - ($ - %%insn_004158a5) db 0
    %%insn_004158a8:
    push eax ; 004158A8 50
    %if ($ - %%insn_004158a8) > 1
        %error "LONG_004158A8"
    %endif
    times 1 - ($ - %%insn_004158a8) db 0
    %%insn_004158a9:
    call dword near [0x424478] ; 004158A9 FF1578444200
    %if ($ - %%insn_004158a9) > 6
        %error "LONG_004158A9"
    %endif
    times 6 - ($ - %%insn_004158a9) db 0
    db 0x8B, 0xE8 ; 004158AF 8BE8 | mov ebp,eax | encoding preserved
    %%insn_004158b1:
    neg ebp ; 004158B1 F7DD
    %if ($ - %%insn_004158b1) > 2
        %error "LONG_004158B1"
    %endif
    times 2 - ($ - %%insn_004158b1) db 0
    db 0x1B, 0xED ; 004158B3 1BED | sbb ebp,ebp | encoding preserved
    %%insn_004158b5:
    neg ebp ; 004158B5 F7DD
    %if ($ - %%insn_004158b5) > 2
        %error "LONG_004158B5"
    %endif
    times 2 - ($ - %%insn_004158b5) db 0
    %%insn_004158b7:
    dec ebp ; 004158B7 4D
    %if ($ - %%insn_004158b7) > 1
        %error "LONG_004158B7"
    %endif
    times 1 - ($ - %%insn_004158b7) db 0
    %%insn_004158b8:
    cmp ebp,0xffffffffffffffff ; 004158B8 83FDFF
    %if ($ - %%insn_004158b8) > 3
        %error "LONG_004158B8"
    %endif
    times 3 - ($ - %%insn_004158b8) db 0
    %%insn_004158bb:
    jnz short 0x4158d7 ; 004158BB 751A
    %if ($ - %%insn_004158bb) > 2
        %error "LONG_004158BB"
    %endif
    times 2 - ($ - %%insn_004158bb) db 0
    %%insn_004158bd:
    call 0x410e10 ; 004158BD E84EB5FFFF
    %if ($ - %%insn_004158bd) > 5
        %error "LONG_004158BD"
    %endif
    times 5 - ($ - %%insn_004158bd) db 0
    %%insn_004158c2:
    mov dword [eax],0xd ; 004158C2 C7000D000000
    %if ($ - %%insn_004158c2) > 6
        %error "LONG_004158C2"
    %endif
    times 6 - ($ - %%insn_004158c2) db 0
    %%insn_004158c8:
    call dword near [0x4243c4] ; 004158C8 FF15C4434200
    %if ($ - %%insn_004158c8) > 6
        %error "LONG_004158C8"
    %endif
    times 6 - ($ - %%insn_004158c8) db 0
    db 0x8B, 0xF0 ; 004158CE 8BF0 | mov esi,eax | encoding preserved
    %%insn_004158d0:
    call 0x410e20 ; 004158D0 E84BB5FFFF
    %if ($ - %%insn_004158d0) > 5
        %error "LONG_004158D0"
    %endif
    times 5 - ($ - %%insn_004158d0) db 0
    %%insn_004158d5:
    mov [eax],esi ; 004158D5 8930
    %if ($ - %%insn_004158d5) > 2
        %error "LONG_004158D5"
    %endif
    times 2 - ($ - %%insn_004158d5) db 0
    %%insn_004158d7:
    push dword 0x0 ; 004158D7 6A00
    %if ($ - %%insn_004158d7) > 2
        %error "LONG_004158D7"
    %endif
    times 2 - ($ - %%insn_004158d7) db 0
    %%insn_004158d9:
    push edi ; 004158D9 57
    %if ($ - %%insn_004158d9) > 1
        %error "LONG_004158D9"
    %endif
    times 1 - ($ - %%insn_004158d9) db 0
    %%insn_004158da:
    push ebx ; 004158DA 53
    %if ($ - %%insn_004158da) > 1
        %error "LONG_004158DA"
    %endif
    times 1 - ($ - %%insn_004158da) db 0
    %%insn_004158db:
    call 0x411310 ; 004158DB E830BAFFFF
    %if ($ - %%insn_004158db) > 5
        %error "LONG_004158DB"
    %endif
    times 5 - ($ - %%insn_004158db) db 0
    %%insn_004158e0:
    add esp,0xc ; 004158E0 83C40C
    %if ($ - %%insn_004158e0) > 3
        %error "LONG_004158E0"
    %endif
    times 3 - ($ - %%insn_004158e0) db 0
    db 0x8B, 0xC5 ; 004158E3 8BC5 | mov eax,ebp | encoding preserved
    %%insn_004158e5:
    pop edi ; 004158E5 5F
    %if ($ - %%insn_004158e5) > 1
        %error "LONG_004158E5"
    %endif
    times 1 - ($ - %%insn_004158e5) db 0
    %%insn_004158e6:
    pop esi ; 004158E6 5E
    %if ($ - %%insn_004158e6) > 1
        %error "LONG_004158E6"
    %endif
    times 1 - ($ - %%insn_004158e6) db 0
    %%insn_004158e7:
    pop ebp ; 004158E7 5D
    %if ($ - %%insn_004158e7) > 1
        %error "LONG_004158E7"
    %endif
    times 1 - ($ - %%insn_004158e7) db 0
    %%insn_004158e8:
    pop ebx ; 004158E8 5B
    %if ($ - %%insn_004158e8) > 1
        %error "LONG_004158E8"
    %endif
    times 1 - ($ - %%insn_004158e8) db 0
    %%insn_004158e9:
    add esp,0x1004 ; 004158E9 81C404100000
    %if ($ - %%insn_004158e9) > 6
        %error "LONG_004158E9"
    %endif
    times 6 - ($ - %%insn_004158e9) db 0
    %%insn_004158ef:
    ret ; 004158EF C3
    %if ($ - %%insn_004158ef) > 1
        %error "LONG_004158EF"
    %endif
    times 1 - ($ - %%insn_004158ef) db 0
    %%insn_004158f0:
    pop edi ; 004158F0 5F
    %if ($ - %%insn_004158f0) > 1
        %error "LONG_004158F0"
    %endif
    times 1 - ($ - %%insn_004158f0) db 0
    %%insn_004158f1:
    pop esi ; 004158F1 5E
    %if ($ - %%insn_004158f1) > 1
        %error "LONG_004158F1"
    %endif
    times 1 - ($ - %%insn_004158f1) db 0
    %%insn_004158f2:
    pop ebp ; 004158F2 5D
    %if ($ - %%insn_004158f2) > 1
        %error "LONG_004158F2"
    %endif
    times 1 - ($ - %%insn_004158f2) db 0
    %%insn_004158f3:
    or eax,0xffffffffffffffff ; 004158F3 83C8FF
    %if ($ - %%insn_004158f3) > 3
        %error "LONG_004158F3"
    %endif
    times 3 - ($ - %%insn_004158f3) db 0
    %%insn_004158f6:
    pop ebx ; 004158F6 5B
    %if ($ - %%insn_004158f6) > 1
        %error "LONG_004158F6"
    %endif
    times 1 - ($ - %%insn_004158f6) db 0
    %%insn_004158f7:
    add esp,0x1004 ; 004158F7 81C404100000
    %if ($ - %%insn_004158f7) > 6
        %error "LONG_004158F7"
    %endif
    times 6 - ($ - %%insn_004158f7) db 0
    %%insn_004158fd:
    ret ; 004158FD C3
    %if ($ - %%insn_004158fd) > 1
        %error "LONG_004158FD"
    %endif
    times 1 - ($ - %%insn_004158fd) db 0
    %if ($ - %%fragment_start) != 334
        %error "function fragment size drift: 004157B0"
    %endif
%endmacro
