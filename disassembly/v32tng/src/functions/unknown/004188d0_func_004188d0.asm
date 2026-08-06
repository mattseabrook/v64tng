; PE virtual entry 004188D0
; Ghidra working symbol: FUN_004188d0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004188d0_part_00 0
    %%fragment_start:
func_004188d0:
    %%insn_004188d0:
    push ebx ; 004188D0 53
    %if ($ - %%insn_004188d0) > 1
        %error "LONG_004188D0"
    %endif
    times 1 - ($ - %%insn_004188d0) db 0
    %%insn_004188d1:
    mov ebx,[0x420e7c] ; 004188D1 8B1D7C0E4200
    %if ($ - %%insn_004188d1) > 6
        %error "LONG_004188D1"
    %endif
    times 6 - ($ - %%insn_004188d1) db 0
    %%insn_004188d7:
    push ebp ; 004188D7 55
    %if ($ - %%insn_004188d7) > 1
        %error "LONG_004188D7"
    %endif
    times 1 - ($ - %%insn_004188d7) db 0
    %%insn_004188d8:
    push esi ; 004188D8 56
    %if ($ - %%insn_004188d8) > 1
        %error "LONG_004188D8"
    %endif
    times 1 - ($ - %%insn_004188d8) db 0
    %%insn_004188d9:
    mov eax,[ebx] ; 004188D9 8B03
    %if ($ - %%insn_004188d9) > 2
        %error "LONG_004188D9"
    %endif
    times 2 - ($ - %%insn_004188d9) db 0
    %%insn_004188db:
    push edi ; 004188DB 57
    %if ($ - %%insn_004188db) > 1
        %error "LONG_004188DB"
    %endif
    times 1 - ($ - %%insn_004188db) db 0
    %%insn_004188dc:
    test eax,eax ; 004188DC 85C0
    %if ($ - %%insn_004188dc) > 2
        %error "LONG_004188DC"
    %endif
    times 2 - ($ - %%insn_004188dc) db 0
    %%insn_004188de:
    jz short 0x418943 ; 004188DE 7463
    %if ($ - %%insn_004188de) > 2
        %error "LONG_004188DE"
    %endif
    times 2 - ($ - %%insn_004188de) db 0
    %%insn_004188e0:
    mov ebp,[0x4244d0] ; 004188E0 8B2DD0444200
    %if ($ - %%insn_004188e0) > 6
        %error "LONG_004188E0"
    %endif
    times 6 - ($ - %%insn_004188e0) db 0
    %%insn_004188e6:
    push dword 0x0 ; 004188E6 6A00
    %if ($ - %%insn_004188e6) > 2
        %error "LONG_004188E6"
    %endif
    times 2 - ($ - %%insn_004188e6) db 0
    %%insn_004188e8:
    push dword 0x0 ; 004188E8 6A00
    %if ($ - %%insn_004188e8) > 2
        %error "LONG_004188E8"
    %endif
    times 2 - ($ - %%insn_004188e8) db 0
    %%insn_004188ea:
    push dword 0x0 ; 004188EA 6A00
    %if ($ - %%insn_004188ea) > 2
        %error "LONG_004188EA"
    %endif
    times 2 - ($ - %%insn_004188ea) db 0
    %%insn_004188ec:
    push dword 0x0 ; 004188EC 6A00
    %if ($ - %%insn_004188ec) > 2
        %error "LONG_004188EC"
    %endif
    times 2 - ($ - %%insn_004188ec) db 0
    %%insn_004188ee:
    push dword 0xffffffffffffffff ; 004188EE 6AFF
    %if ($ - %%insn_004188ee) > 2
        %error "LONG_004188EE"
    %endif
    times 2 - ($ - %%insn_004188ee) db 0
    %%insn_004188f0:
    push eax ; 004188F0 50
    %if ($ - %%insn_004188f0) > 1
        %error "LONG_004188F0"
    %endif
    times 1 - ($ - %%insn_004188f0) db 0
    %%insn_004188f1:
    push dword 0x0 ; 004188F1 6A00
    %if ($ - %%insn_004188f1) > 2
        %error "LONG_004188F1"
    %endif
    times 2 - ($ - %%insn_004188f1) db 0
    %%insn_004188f3:
    push dword 0x1 ; 004188F3 6A01
    %if ($ - %%insn_004188f3) > 2
        %error "LONG_004188F3"
    %endif
    times 2 - ($ - %%insn_004188f3) db 0
    %%insn_004188f5:
    call ebp ; 004188F5 FFD5
    %if ($ - %%insn_004188f5) > 2
        %error "LONG_004188F5"
    %endif
    times 2 - ($ - %%insn_004188f5) db 0
    db 0x8B, 0xF0 ; 004188F7 8BF0 | mov esi,eax | encoding preserved
    %%insn_004188f9:
    test esi,esi ; 004188F9 85F6
    %if ($ - %%insn_004188f9) > 2
        %error "LONG_004188F9"
    %endif
    times 2 - ($ - %%insn_004188f9) db 0
    %%insn_004188fb:
    jz short 0x41893b ; 004188FB 743E
    %if ($ - %%insn_004188fb) > 2
        %error "LONG_004188FB"
    %endif
    times 2 - ($ - %%insn_004188fb) db 0
    %%insn_004188fd:
    push esi ; 004188FD 56
    %if ($ - %%insn_004188fd) > 1
        %error "LONG_004188FD"
    %endif
    times 1 - ($ - %%insn_004188fd) db 0
    %%insn_004188fe:
    call 0x40cdc0 ; 004188FE E8BD44FFFF
    %if ($ - %%insn_004188fe) > 5
        %error "LONG_004188FE"
    %endif
    times 5 - ($ - %%insn_004188fe) db 0
    db 0x8B, 0xF8 ; 00418903 8BF8 | mov edi,eax | encoding preserved
    %%insn_00418905:
    add esp,0x4 ; 00418905 83C404
    %if ($ - %%insn_00418905) > 3
        %error "LONG_00418905"
    %endif
    times 3 - ($ - %%insn_00418905) db 0
    %%insn_00418908:
    test edi,edi ; 00418908 85FF
    %if ($ - %%insn_00418908) > 2
        %error "LONG_00418908"
    %endif
    times 2 - ($ - %%insn_00418908) db 0
    %%insn_0041890a:
    jz short 0x41893b ; 0041890A 742F
    %if ($ - %%insn_0041890a) > 2
        %error "LONG_0041890A"
    %endif
    times 2 - ($ - %%insn_0041890a) db 0
    %%insn_0041890c:
    mov eax,[ebx] ; 0041890C 8B03
    %if ($ - %%insn_0041890c) > 2
        %error "LONG_0041890C"
    %endif
    times 2 - ($ - %%insn_0041890c) db 0
    %%insn_0041890e:
    push dword 0x0 ; 0041890E 6A00
    %if ($ - %%insn_0041890e) > 2
        %error "LONG_0041890E"
    %endif
    times 2 - ($ - %%insn_0041890e) db 0
    %%insn_00418910:
    push dword 0x0 ; 00418910 6A00
    %if ($ - %%insn_00418910) > 2
        %error "LONG_00418910"
    %endif
    times 2 - ($ - %%insn_00418910) db 0
    %%insn_00418912:
    push esi ; 00418912 56
    %if ($ - %%insn_00418912) > 1
        %error "LONG_00418912"
    %endif
    times 1 - ($ - %%insn_00418912) db 0
    %%insn_00418913:
    push edi ; 00418913 57
    %if ($ - %%insn_00418913) > 1
        %error "LONG_00418913"
    %endif
    times 1 - ($ - %%insn_00418913) db 0
    %%insn_00418914:
    push dword 0xffffffffffffffff ; 00418914 6AFF
    %if ($ - %%insn_00418914) > 2
        %error "LONG_00418914"
    %endif
    times 2 - ($ - %%insn_00418914) db 0
    %%insn_00418916:
    push eax ; 00418916 50
    %if ($ - %%insn_00418916) > 1
        %error "LONG_00418916"
    %endif
    times 1 - ($ - %%insn_00418916) db 0
    %%insn_00418917:
    push dword 0x0 ; 00418917 6A00
    %if ($ - %%insn_00418917) > 2
        %error "LONG_00418917"
    %endif
    times 2 - ($ - %%insn_00418917) db 0
    %%insn_00418919:
    push dword 0x1 ; 00418919 6A01
    %if ($ - %%insn_00418919) > 2
        %error "LONG_00418919"
    %endif
    times 2 - ($ - %%insn_00418919) db 0
    %%insn_0041891b:
    call ebp ; 0041891B FFD5
    %if ($ - %%insn_0041891b) > 2
        %error "LONG_0041891B"
    %endif
    times 2 - ($ - %%insn_0041891b) db 0
    %%insn_0041891d:
    test eax,eax ; 0041891D 85C0
    %if ($ - %%insn_0041891d) > 2
        %error "LONG_0041891D"
    %endif
    times 2 - ($ - %%insn_0041891d) db 0
    %%insn_0041891f:
    jz short 0x41893b ; 0041891F 741A
    %if ($ - %%insn_0041891f) > 2
        %error "LONG_0041891F"
    %endif
    times 2 - ($ - %%insn_0041891f) db 0
    %%insn_00418921:
    push dword 0x0 ; 00418921 6A00
    %if ($ - %%insn_00418921) > 2
        %error "LONG_00418921"
    %endif
    times 2 - ($ - %%insn_00418921) db 0
    %%insn_00418923:
    push edi ; 00418923 57
    %if ($ - %%insn_00418923) > 1
        %error "LONG_00418923"
    %endif
    times 1 - ($ - %%insn_00418923) db 0
    %%insn_00418924:
    call 0x418ea0 ; 00418924 E877050000
    %if ($ - %%insn_00418924) > 5
        %error "LONG_00418924"
    %endif
    times 5 - ($ - %%insn_00418924) db 0
    %%insn_00418929:
    mov eax,[ebx+0x4] ; 00418929 8B4304
    %if ($ - %%insn_00418929) > 3
        %error "LONG_00418929"
    %endif
    times 3 - ($ - %%insn_00418929) db 0
    %%insn_0041892c:
    add ebx,0x4 ; 0041892C 83C304
    %if ($ - %%insn_0041892c) > 3
        %error "LONG_0041892C"
    %endif
    times 3 - ($ - %%insn_0041892c) db 0
    %%insn_0041892f:
    add esp,0x8 ; 0041892F 83C408
    %if ($ - %%insn_0041892f) > 3
        %error "LONG_0041892F"
    %endif
    times 3 - ($ - %%insn_0041892f) db 0
    %%insn_00418932:
    test eax,eax ; 00418932 85C0
    %if ($ - %%insn_00418932) > 2
        %error "LONG_00418932"
    %endif
    times 2 - ($ - %%insn_00418932) db 0
    %%insn_00418934:
    jnz short 0x4188e6 ; 00418934 75B0
    %if ($ - %%insn_00418934) > 2
        %error "LONG_00418934"
    %endif
    times 2 - ($ - %%insn_00418934) db 0
    %%insn_00418936:
    pop edi ; 00418936 5F
    %if ($ - %%insn_00418936) > 1
        %error "LONG_00418936"
    %endif
    times 1 - ($ - %%insn_00418936) db 0
    %%insn_00418937:
    pop esi ; 00418937 5E
    %if ($ - %%insn_00418937) > 1
        %error "LONG_00418937"
    %endif
    times 1 - ($ - %%insn_00418937) db 0
    %%insn_00418938:
    pop ebp ; 00418938 5D
    %if ($ - %%insn_00418938) > 1
        %error "LONG_00418938"
    %endif
    times 1 - ($ - %%insn_00418938) db 0
    %%insn_00418939:
    pop ebx ; 00418939 5B
    %if ($ - %%insn_00418939) > 1
        %error "LONG_00418939"
    %endif
    times 1 - ($ - %%insn_00418939) db 0
    %%insn_0041893a:
    ret ; 0041893A C3
    %if ($ - %%insn_0041893a) > 1
        %error "LONG_0041893A"
    %endif
    times 1 - ($ - %%insn_0041893a) db 0
    %%insn_0041893b:
    or eax,0xffffffffffffffff ; 0041893B 83C8FF
    %if ($ - %%insn_0041893b) > 3
        %error "LONG_0041893B"
    %endif
    times 3 - ($ - %%insn_0041893b) db 0
    %%insn_0041893e:
    pop edi ; 0041893E 5F
    %if ($ - %%insn_0041893e) > 1
        %error "LONG_0041893E"
    %endif
    times 1 - ($ - %%insn_0041893e) db 0
    %%insn_0041893f:
    pop esi ; 0041893F 5E
    %if ($ - %%insn_0041893f) > 1
        %error "LONG_0041893F"
    %endif
    times 1 - ($ - %%insn_0041893f) db 0
    %%insn_00418940:
    pop ebp ; 00418940 5D
    %if ($ - %%insn_00418940) > 1
        %error "LONG_00418940"
    %endif
    times 1 - ($ - %%insn_00418940) db 0
    %%insn_00418941:
    pop ebx ; 00418941 5B
    %if ($ - %%insn_00418941) > 1
        %error "LONG_00418941"
    %endif
    times 1 - ($ - %%insn_00418941) db 0
    %%insn_00418942:
    ret ; 00418942 C3
    %if ($ - %%insn_00418942) > 1
        %error "LONG_00418942"
    %endif
    times 1 - ($ - %%insn_00418942) db 0
    %%insn_00418943:
    pop edi ; 00418943 5F
    %if ($ - %%insn_00418943) > 1
        %error "LONG_00418943"
    %endif
    times 1 - ($ - %%insn_00418943) db 0
    %%insn_00418944:
    pop esi ; 00418944 5E
    %if ($ - %%insn_00418944) > 1
        %error "LONG_00418944"
    %endif
    times 1 - ($ - %%insn_00418944) db 0
    %%insn_00418945:
    pop ebp ; 00418945 5D
    %if ($ - %%insn_00418945) > 1
        %error "LONG_00418945"
    %endif
    times 1 - ($ - %%insn_00418945) db 0
    db 0x33, 0xC0 ; 00418946 33C0 | xor eax,eax | encoding preserved
    %%insn_00418948:
    pop ebx ; 00418948 5B
    %if ($ - %%insn_00418948) > 1
        %error "LONG_00418948"
    %endif
    times 1 - ($ - %%insn_00418948) db 0
    %%insn_00418949:
    ret ; 00418949 C3
    %if ($ - %%insn_00418949) > 1
        %error "LONG_00418949"
    %endif
    times 1 - ($ - %%insn_00418949) db 0
    %if ($ - %%fragment_start) != 122
        %error "function fragment size drift: 004188D0"
    %endif
%endmacro
