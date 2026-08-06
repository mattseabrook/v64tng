; PE virtual entry 0040136E
; Ghidra working symbol: FUN_0040136e
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040136e_part_00 0
    %%fragment_start:
func_0040136e:
    %%insn_0040136e:
    push ebp ; 0040136E 55
    %if ($ - %%insn_0040136e) > 1
        %error "LONG_0040136E"
    %endif
    times 1 - ($ - %%insn_0040136e) db 0
    db 0x8B, 0xEC ; 0040136F 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401371:
    cmp dword [0x41f284],0x0 ; 00401371 833D84F2410000
    %if ($ - %%insn_00401371) > 7
        %error "LONG_00401371"
    %endif
    times 7 - ($ - %%insn_00401371) db 0
    %%insn_00401378:
    jz short 0x401388 ; 00401378 740E
    %if ($ - %%insn_00401378) > 2
        %error "LONG_00401378"
    %endif
    times 2 - ($ - %%insn_00401378) db 0
    %%insn_0040137a:
    mov eax,[0x41f284] ; 0040137A A184F24100
    %if ($ - %%insn_0040137a) > 5
        %error "LONG_0040137A"
    %endif
    times 5 - ($ - %%insn_0040137a) db 0
    %%insn_0040137f:
    push eax ; 0040137F 50
    %if ($ - %%insn_0040137f) > 1
        %error "LONG_0040137F"
    %endif
    times 1 - ($ - %%insn_0040137f) db 0
    %%insn_00401380:
    call 0x40c9a0 ; 00401380 E81BB60000
    %if ($ - %%insn_00401380) > 5
        %error "LONG_00401380"
    %endif
    times 5 - ($ - %%insn_00401380) db 0
    %%insn_00401385:
    add esp,0x4 ; 00401385 83C404
    %if ($ - %%insn_00401385) > 3
        %error "LONG_00401385"
    %endif
    times 3 - ($ - %%insn_00401385) db 0
    %%insn_00401388:
    cmp dword [0x41f2b8],0x0 ; 00401388 833DB8F2410000
    %if ($ - %%insn_00401388) > 7
        %error "LONG_00401388"
    %endif
    times 7 - ($ - %%insn_00401388) db 0
    %%insn_0040138f:
    jz short 0x4013a0 ; 0040138F 740F
    %if ($ - %%insn_0040138f) > 2
        %error "LONG_0040138F"
    %endif
    times 2 - ($ - %%insn_0040138f) db 0
    %%insn_00401391:
    mov ecx,[0x41f2b8] ; 00401391 8B0DB8F24100
    %if ($ - %%insn_00401391) > 6
        %error "LONG_00401391"
    %endif
    times 6 - ($ - %%insn_00401391) db 0
    %%insn_00401397:
    push ecx ; 00401397 51
    %if ($ - %%insn_00401397) > 1
        %error "LONG_00401397"
    %endif
    times 1 - ($ - %%insn_00401397) db 0
    %%insn_00401398:
    call 0x40c9a0 ; 00401398 E803B60000
    %if ($ - %%insn_00401398) > 5
        %error "LONG_00401398"
    %endif
    times 5 - ($ - %%insn_00401398) db 0
    %%insn_0040139d:
    add esp,0x4 ; 0040139D 83C404
    %if ($ - %%insn_0040139d) > 3
        %error "LONG_0040139D"
    %endif
    times 3 - ($ - %%insn_0040139d) db 0
    %%insn_004013a0:
    cmp dword [0x41f304],0x0 ; 004013A0 833D04F3410000
    %if ($ - %%insn_004013a0) > 7
        %error "LONG_004013A0"
    %endif
    times 7 - ($ - %%insn_004013a0) db 0
    %%insn_004013a7:
    jz short 0x4013b8 ; 004013A7 740F
    %if ($ - %%insn_004013a7) > 2
        %error "LONG_004013A7"
    %endif
    times 2 - ($ - %%insn_004013a7) db 0
    %%insn_004013a9:
    mov edx,[0x41f304] ; 004013A9 8B1504F34100
    %if ($ - %%insn_004013a9) > 6
        %error "LONG_004013A9"
    %endif
    times 6 - ($ - %%insn_004013a9) db 0
    %%insn_004013af:
    push edx ; 004013AF 52
    %if ($ - %%insn_004013af) > 1
        %error "LONG_004013AF"
    %endif
    times 1 - ($ - %%insn_004013af) db 0
    %%insn_004013b0:
    call 0x40c9a0 ; 004013B0 E8EBB50000
    %if ($ - %%insn_004013b0) > 5
        %error "LONG_004013B0"
    %endif
    times 5 - ($ - %%insn_004013b0) db 0
    %%insn_004013b5:
    add esp,0x4 ; 004013B5 83C404
    %if ($ - %%insn_004013b5) > 3
        %error "LONG_004013B5"
    %endif
    times 3 - ($ - %%insn_004013b5) db 0
    %%insn_004013b8:
    cmp dword [0x41f280],0x0 ; 004013B8 833D80F2410000
    %if ($ - %%insn_004013b8) > 7
        %error "LONG_004013B8"
    %endif
    times 7 - ($ - %%insn_004013b8) db 0
    %%insn_004013bf:
    jz short 0x4013cf ; 004013BF 740E
    %if ($ - %%insn_004013bf) > 2
        %error "LONG_004013BF"
    %endif
    times 2 - ($ - %%insn_004013bf) db 0
    %%insn_004013c1:
    mov eax,[0x41f280] ; 004013C1 A180F24100
    %if ($ - %%insn_004013c1) > 5
        %error "LONG_004013C1"
    %endif
    times 5 - ($ - %%insn_004013c1) db 0
    %%insn_004013c6:
    push eax ; 004013C6 50
    %if ($ - %%insn_004013c6) > 1
        %error "LONG_004013C6"
    %endif
    times 1 - ($ - %%insn_004013c6) db 0
    %%insn_004013c7:
    call 0x40c9a0 ; 004013C7 E8D4B50000
    %if ($ - %%insn_004013c7) > 5
        %error "LONG_004013C7"
    %endif
    times 5 - ($ - %%insn_004013c7) db 0
    %%insn_004013cc:
    add esp,0x4 ; 004013CC 83C404
    %if ($ - %%insn_004013cc) > 3
        %error "LONG_004013CC"
    %endif
    times 3 - ($ - %%insn_004013cc) db 0
    %%insn_004013cf:
    cmp dword [0x41f2ec],0x0 ; 004013CF 833DECF2410000
    %if ($ - %%insn_004013cf) > 7
        %error "LONG_004013CF"
    %endif
    times 7 - ($ - %%insn_004013cf) db 0
    %%insn_004013d6:
    jz short 0x4013e7 ; 004013D6 740F
    %if ($ - %%insn_004013d6) > 2
        %error "LONG_004013D6"
    %endif
    times 2 - ($ - %%insn_004013d6) db 0
    %%insn_004013d8:
    mov ecx,[0x41f2ec] ; 004013D8 8B0DECF24100
    %if ($ - %%insn_004013d8) > 6
        %error "LONG_004013D8"
    %endif
    times 6 - ($ - %%insn_004013d8) db 0
    %%insn_004013de:
    push ecx ; 004013DE 51
    %if ($ - %%insn_004013de) > 1
        %error "LONG_004013DE"
    %endif
    times 1 - ($ - %%insn_004013de) db 0
    %%insn_004013df:
    call 0x40c9a0 ; 004013DF E8BCB50000
    %if ($ - %%insn_004013df) > 5
        %error "LONG_004013DF"
    %endif
    times 5 - ($ - %%insn_004013df) db 0
    %%insn_004013e4:
    add esp,0x4 ; 004013E4 83C404
    %if ($ - %%insn_004013e4) > 3
        %error "LONG_004013E4"
    %endif
    times 3 - ($ - %%insn_004013e4) db 0
    %%insn_004013e7:
    cmp dword [0x41f2a4],0x0 ; 004013E7 833DA4F2410000
    %if ($ - %%insn_004013e7) > 7
        %error "LONG_004013E7"
    %endif
    times 7 - ($ - %%insn_004013e7) db 0
    %%insn_004013ee:
    jz short 0x4013ff ; 004013EE 740F
    %if ($ - %%insn_004013ee) > 2
        %error "LONG_004013EE"
    %endif
    times 2 - ($ - %%insn_004013ee) db 0
    %%insn_004013f0:
    mov edx,[0x41f2a4] ; 004013F0 8B15A4F24100
    %if ($ - %%insn_004013f0) > 6
        %error "LONG_004013F0"
    %endif
    times 6 - ($ - %%insn_004013f0) db 0
    %%insn_004013f6:
    push edx ; 004013F6 52
    %if ($ - %%insn_004013f6) > 1
        %error "LONG_004013F6"
    %endif
    times 1 - ($ - %%insn_004013f6) db 0
    %%insn_004013f7:
    call 0x40c9a0 ; 004013F7 E8A4B50000
    %if ($ - %%insn_004013f7) > 5
        %error "LONG_004013F7"
    %endif
    times 5 - ($ - %%insn_004013f7) db 0
    %%insn_004013fc:
    add esp,0x4 ; 004013FC 83C404
    %if ($ - %%insn_004013fc) > 3
        %error "LONG_004013FC"
    %endif
    times 3 - ($ - %%insn_004013fc) db 0
    %%insn_004013ff:
    call 0x401161 ; 004013FF E85DFDFFFF
    %if ($ - %%insn_004013ff) > 5
        %error "LONG_004013FF"
    %endif
    times 5 - ($ - %%insn_004013ff) db 0
    %%insn_00401404:
    cmp dword [0x41f2f8],0x0 ; 00401404 833DF8F2410000
    %if ($ - %%insn_00401404) > 7
        %error "LONG_00401404"
    %endif
    times 7 - ($ - %%insn_00401404) db 0
    %%insn_0040140b:
    jz short 0x40141b ; 0040140B 740E
    %if ($ - %%insn_0040140b) > 2
        %error "LONG_0040140B"
    %endif
    times 2 - ($ - %%insn_0040140b) db 0
    %%insn_0040140d:
    push dword 0x0 ; 0040140D 6A00
    %if ($ - %%insn_0040140d) > 2
        %error "LONG_0040140D"
    %endif
    times 2 - ($ - %%insn_0040140d) db 0
    %%insn_0040140f:
    mov eax,[0x41f2f8] ; 0040140F A1F8F24100
    %if ($ - %%insn_0040140f) > 5
        %error "LONG_0040140F"
    %endif
    times 5 - ($ - %%insn_0040140f) db 0
    %%insn_00401414:
    push eax ; 00401414 50
    %if ($ - %%insn_00401414) > 1
        %error "LONG_00401414"
    %endif
    times 1 - ($ - %%insn_00401414) db 0
    %%insn_00401415:
    call dword near [0x424590] ; 00401415 FF1590454200
    %if ($ - %%insn_00401415) > 6
        %error "LONG_00401415"
    %endif
    times 6 - ($ - %%insn_00401415) db 0
    %%insn_0040141b:
    cmp dword [0x41f2d4],0x0 ; 0040141B 833DD4F2410000
    %if ($ - %%insn_0040141b) > 7
        %error "LONG_0040141B"
    %endif
    times 7 - ($ - %%insn_0040141b) db 0
    %%insn_00401422:
    jz short 0x401433 ; 00401422 740F
    %if ($ - %%insn_00401422) > 2
        %error "LONG_00401422"
    %endif
    times 2 - ($ - %%insn_00401422) db 0
    %%insn_00401424:
    push dword 0x0 ; 00401424 6A00
    %if ($ - %%insn_00401424) > 2
        %error "LONG_00401424"
    %endif
    times 2 - ($ - %%insn_00401424) db 0
    %%insn_00401426:
    mov ecx,[0x41f2d4] ; 00401426 8B0DD4F24100
    %if ($ - %%insn_00401426) > 6
        %error "LONG_00401426"
    %endif
    times 6 - ($ - %%insn_00401426) db 0
    %%insn_0040142c:
    push ecx ; 0040142C 51
    %if ($ - %%insn_0040142c) > 1
        %error "LONG_0040142C"
    %endif
    times 1 - ($ - %%insn_0040142c) db 0
    %%insn_0040142d:
    call dword near [0x424590] ; 0040142D FF1590454200
    %if ($ - %%insn_0040142d) > 6
        %error "LONG_0040142D"
    %endif
    times 6 - ($ - %%insn_0040142d) db 0
    %%insn_00401433:
    mov dword [0x41f2e8],0xffffffff ; 00401433 C705E8F24100FFFFFFFF
    %if ($ - %%insn_00401433) > 10
        %error "LONG_00401433"
    %endif
    times 10 - ($ - %%insn_00401433) db 0
    %%insn_0040143d:
    mov dword [0x41f2b0],0xffffffff ; 0040143D C705B0F24100FFFFFFFF
    %if ($ - %%insn_0040143d) > 10
        %error "LONG_0040143D"
    %endif
    times 10 - ($ - %%insn_0040143d) db 0
    %%insn_00401447:
    pop ebp ; 00401447 5D
    %if ($ - %%insn_00401447) > 1
        %error "LONG_00401447"
    %endif
    times 1 - ($ - %%insn_00401447) db 0
    %%insn_00401448:
    ret ; 00401448 C3
    %if ($ - %%insn_00401448) > 1
        %error "LONG_00401448"
    %endif
    times 1 - ($ - %%insn_00401448) db 0
    %if ($ - %%fragment_start) != 219
        %error "function fragment size drift: 0040136E"
    %endif
%endmacro
