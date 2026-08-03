; PE virtual entry 0040977B
; Ghidra working symbol: FUN_0040977b
; Verified WinMain body, SETUPEXEC handling, and message loop.
; Generated losslessly; preserve byte identity after edits.

%macro emit_winmain_part_00 0
    %%fragment_start:
winmain:
    %%insn_0040977b:
    push ebp ; 0040977B 55
    %if ($ - %%insn_0040977b) > 1
        %error "LONG_0040977B"
    %endif
    times 1 - ($ - %%insn_0040977b) db 0
    db 0x8B, 0xEC ; 0040977C 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040977e:
    sub esp,0x1c ; 0040977E 83EC1C
    %if ($ - %%insn_0040977e) > 3
        %error "LONG_0040977E"
    %endif
    times 3 - ($ - %%insn_0040977e) db 0
    %%insn_00409781:
    mov eax,[ebp+0x8] ; 00409781 8B4508
    %if ($ - %%insn_00409781) > 3
        %error "LONG_00409781"
    %endif
    times 3 - ($ - %%insn_00409781) db 0
    %%insn_00409784:
    mov [0x4212e0],eax ; 00409784 A3E0124200
    %if ($ - %%insn_00409784) > 5
        %error "LONG_00409784"
    %endif
    times 5 - ($ - %%insn_00409784) db 0
    %%insn_00409789:
    push dword 0x41bc20 ; 00409789 6820BC4100
    %if ($ - %%insn_00409789) > 5
        %error "LONG_00409789"
    %endif
    times 5 - ($ - %%insn_00409789) db 0
    %%insn_0040978e:
    mov ecx,[ebp+0x10] ; 0040978E 8B4D10
    %if ($ - %%insn_0040978e) > 3
        %error "LONG_0040978E"
    %endif
    times 3 - ($ - %%insn_0040978e) db 0
    %%insn_00409791:
    push ecx ; 00409791 51
    %if ($ - %%insn_00409791) > 1
        %error "LONG_00409791"
    %endif
    times 1 - ($ - %%insn_00409791) db 0
    %%insn_00409792:
    call 0x40d8a0 ; 00409792 E809410000
    %if ($ - %%insn_00409792) > 5
        %error "LONG_00409792"
    %endif
    times 5 - ($ - %%insn_00409792) db 0
    %%insn_00409797:
    add esp,0x8 ; 00409797 83C408
    %if ($ - %%insn_00409797) > 3
        %error "LONG_00409797"
    %endif
    times 3 - ($ - %%insn_00409797) db 0
    %%insn_0040979a:
    test eax,eax ; 0040979A 85C0
    %if ($ - %%insn_0040979a) > 2
        %error "LONG_0040979A"
    %endif
    times 2 - ($ - %%insn_0040979a) db 0
    %%insn_0040979c:
    jnz short 0x4097ae ; 0040979C 7510
    %if ($ - %%insn_0040979c) > 2
        %error "LONG_0040979C"
    %endif
    times 2 - ($ - %%insn_0040979c) db 0
    %%insn_0040979e:
    mov dword [0x41f5c4],0x1 ; 0040979E C705C4F5410001000000
    %if ($ - %%insn_0040979e) > 10
        %error "LONG_0040979E"
    %endif
    times 10 - ($ - %%insn_0040979e) db 0
    %%insn_004097a8:
    mov edx,[ebp+0x10] ; 004097A8 8B5510
    %if ($ - %%insn_004097a8) > 3
        %error "LONG_004097A8"
    %endif
    times 3 - ($ - %%insn_004097a8) db 0
    %%insn_004097ab:
    mov byte [edx],0x0 ; 004097AB C60200
    %if ($ - %%insn_004097ab) > 3
        %error "LONG_004097AB"
    %endif
    times 3 - ($ - %%insn_004097ab) db 0
    %%insn_004097ae:
    mov eax,[ebp+0x14] ; 004097AE 8B4514
    %if ($ - %%insn_004097ae) > 3
        %error "LONG_004097AE"
    %endif
    times 3 - ($ - %%insn_004097ae) db 0
    %%insn_004097b1:
    push eax ; 004097B1 50
    %if ($ - %%insn_004097b1) > 1
        %error "LONG_004097B1"
    %endif
    times 1 - ($ - %%insn_004097b1) db 0
    %%insn_004097b2:
    mov ecx,[ebp+0x8] ; 004097B2 8B4D08
    %if ($ - %%insn_004097b2) > 3
        %error "LONG_004097B2"
    %endif
    times 3 - ($ - %%insn_004097b2) db 0
    %%insn_004097b5:
    push ecx ; 004097B5 51
    %if ($ - %%insn_004097b5) > 1
        %error "LONG_004097B5"
    %endif
    times 1 - ($ - %%insn_004097b5) db 0
    %%insn_004097b6:
    call 0x409850 ; 004097B6 E895000000
    %if ($ - %%insn_004097b6) > 5
        %error "LONG_004097B6"
    %endif
    times 5 - ($ - %%insn_004097b6) db 0
    %%insn_004097bb:
    add esp,0x8 ; 004097BB 83C408
    %if ($ - %%insn_004097bb) > 3
        %error "LONG_004097BB"
    %endif
    times 3 - ($ - %%insn_004097bb) db 0
    %%insn_004097be:
    test eax,eax ; 004097BE 85C0
    %if ($ - %%insn_004097be) > 2
        %error "LONG_004097BE"
    %endif
    times 2 - ($ - %%insn_004097be) db 0
    %%insn_004097c0:
    jnz short 0x4097ce ; 004097C0 750C
    %if ($ - %%insn_004097c0) > 2
        %error "LONG_004097C0"
    %endif
    times 2 - ($ - %%insn_004097c0) db 0
    %%insn_004097c2:
    push dword 0x1 ; 004097C2 6A01
    %if ($ - %%insn_004097c2) > 2
        %error "LONG_004097C2"
    %endif
    times 2 - ($ - %%insn_004097c2) db 0
    %%insn_004097c4:
    call dword near [0x424554] ; 004097C4 FF1554454200
    %if ($ - %%insn_004097c4) > 6
        %error "LONG_004097C4"
    %endif
    times 6 - ($ - %%insn_004097c4) db 0
    db 0x33, 0xC0 ; 004097CA 33C0 | xor eax,eax | encoding preserved
    %%insn_004097cc:
    jmp short 0x40984a ; 004097CC EB7C
    %if ($ - %%insn_004097cc) > 2
        %error "LONG_004097CC"
    %endif
    times 2 - ($ - %%insn_004097cc) db 0
    %%insn_004097ce:
    mov edx,[ebp+0x10] ; 004097CE 8B5510
    %if ($ - %%insn_004097ce) > 3
        %error "LONG_004097CE"
    %endif
    times 3 - ($ - %%insn_004097ce) db 0
    %%insn_004097d1:
    push edx ; 004097D1 52
    %if ($ - %%insn_004097d1) > 1
        %error "LONG_004097D1"
    %endif
    times 1 - ($ - %%insn_004097d1) db 0
    %%insn_004097d2:
    call 0x408e75 ; 004097D2 E89EF6FFFF
    %if ($ - %%insn_004097d2) > 5
        %error "LONG_004097D2"
    %endif
    times 5 - ($ - %%insn_004097d2) db 0
    %%insn_004097d7:
    add esp,0x4 ; 004097D7 83C404
    %if ($ - %%insn_004097d7) > 3
        %error "LONG_004097D7"
    %endif
    times 3 - ($ - %%insn_004097d7) db 0
    %%insn_004097da:
    mov eax,0x1 ; 004097DA B801000000
    %if ($ - %%insn_004097da) > 5
        %error "LONG_004097DA"
    %endif
    times 5 - ($ - %%insn_004097da) db 0
    %%insn_004097df:
    test eax,eax ; 004097DF 85C0
    %if ($ - %%insn_004097df) > 2
        %error "LONG_004097DF"
    %endif
    times 2 - ($ - %%insn_004097df) db 0
    %%insn_004097e1:
    jz short 0x40983d ; 004097E1 745A
    %if ($ - %%insn_004097e1) > 2
        %error "LONG_004097E1"
    %endif
    times 2 - ($ - %%insn_004097e1) db 0
    %%insn_004097e3:
    push dword 0x0 ; 004097E3 6A00
    %if ($ - %%insn_004097e3) > 2
        %error "LONG_004097E3"
    %endif
    times 2 - ($ - %%insn_004097e3) db 0
    %%insn_004097e5:
    push dword 0x0 ; 004097E5 6A00
    %if ($ - %%insn_004097e5) > 2
        %error "LONG_004097E5"
    %endif
    times 2 - ($ - %%insn_004097e5) db 0
    %%insn_004097e7:
    push dword 0x0 ; 004097E7 6A00
    %if ($ - %%insn_004097e7) > 2
        %error "LONG_004097E7"
    %endif
    times 2 - ($ - %%insn_004097e7) db 0
    %%insn_004097e9:
    push dword 0x0 ; 004097E9 6A00
    %if ($ - %%insn_004097e9) > 2
        %error "LONG_004097E9"
    %endif
    times 2 - ($ - %%insn_004097e9) db 0
    %%insn_004097eb:
    lea ecx,[ebp-0x1c] ; 004097EB 8D4DE4
    %if ($ - %%insn_004097eb) > 3
        %error "LONG_004097EB"
    %endif
    times 3 - ($ - %%insn_004097eb) db 0
    %%insn_004097ee:
    push ecx ; 004097EE 51
    %if ($ - %%insn_004097ee) > 1
        %error "LONG_004097EE"
    %endif
    times 1 - ($ - %%insn_004097ee) db 0
    %%insn_004097ef:
    call dword near [0x424558] ; 004097EF FF1558454200
    %if ($ - %%insn_004097ef) > 6
        %error "LONG_004097EF"
    %endif
    times 6 - ($ - %%insn_004097ef) db 0
    %%insn_004097f5:
    test eax,eax ; 004097F5 85C0
    %if ($ - %%insn_004097f5) > 2
        %error "LONG_004097F5"
    %endif
    times 2 - ($ - %%insn_004097f5) db 0
    %%insn_004097f7:
    jz short 0x409825 ; 004097F7 742C
    %if ($ - %%insn_004097f7) > 2
        %error "LONG_004097F7"
    %endif
    times 2 - ($ - %%insn_004097f7) db 0
    %%insn_004097f9:
    push dword 0x0 ; 004097F9 6A00
    %if ($ - %%insn_004097f9) > 2
        %error "LONG_004097F9"
    %endif
    times 2 - ($ - %%insn_004097f9) db 0
    %%insn_004097fb:
    push dword 0x0 ; 004097FB 6A00
    %if ($ - %%insn_004097fb) > 2
        %error "LONG_004097FB"
    %endif
    times 2 - ($ - %%insn_004097fb) db 0
    %%insn_004097fd:
    push dword 0x0 ; 004097FD 6A00
    %if ($ - %%insn_004097fd) > 2
        %error "LONG_004097FD"
    %endif
    times 2 - ($ - %%insn_004097fd) db 0
    %%insn_004097ff:
    lea edx,[ebp-0x1c] ; 004097FF 8D55E4
    %if ($ - %%insn_004097ff) > 3
        %error "LONG_004097FF"
    %endif
    times 3 - ($ - %%insn_004097ff) db 0
    %%insn_00409802:
    push edx ; 00409802 52
    %if ($ - %%insn_00409802) > 1
        %error "LONG_00409802"
    %endif
    times 1 - ($ - %%insn_00409802) db 0
    %%insn_00409803:
    call dword near [0x42455c] ; 00409803 FF155C454200
    %if ($ - %%insn_00409803) > 6
        %error "LONG_00409803"
    %endif
    times 6 - ($ - %%insn_00409803) db 0
    %%insn_00409809:
    test eax,eax ; 00409809 85C0
    %if ($ - %%insn_00409809) > 2
        %error "LONG_00409809"
    %endif
    times 2 - ($ - %%insn_00409809) db 0
    %%insn_0040980b:
    jnz short 0x40980f ; 0040980B 7502
    %if ($ - %%insn_0040980b) > 2
        %error "LONG_0040980B"
    %endif
    times 2 - ($ - %%insn_0040980b) db 0
    %%insn_0040980d:
    jmp short 0x40983d ; 0040980D EB2E
    %if ($ - %%insn_0040980d) > 2
        %error "LONG_0040980D"
    %endif
    times 2 - ($ - %%insn_0040980d) db 0
    %%insn_0040980f:
    lea eax,[ebp-0x1c] ; 0040980F 8D45E4
    %if ($ - %%insn_0040980f) > 3
        %error "LONG_0040980F"
    %endif
    times 3 - ($ - %%insn_0040980f) db 0
    %%insn_00409812:
    push eax ; 00409812 50
    %if ($ - %%insn_00409812) > 1
        %error "LONG_00409812"
    %endif
    times 1 - ($ - %%insn_00409812) db 0
    %%insn_00409813:
    call dword near [0x424560] ; 00409813 FF1560454200
    %if ($ - %%insn_00409813) > 6
        %error "LONG_00409813"
    %endif
    times 6 - ($ - %%insn_00409813) db 0
    %%insn_00409819:
    lea ecx,[ebp-0x1c] ; 00409819 8D4DE4
    %if ($ - %%insn_00409819) > 3
        %error "LONG_00409819"
    %endif
    times 3 - ($ - %%insn_00409819) db 0
    %%insn_0040981c:
    push ecx ; 0040981C 51
    %if ($ - %%insn_0040981c) > 1
        %error "LONG_0040981C"
    %endif
    times 1 - ($ - %%insn_0040981c) db 0
    %%insn_0040981d:
    call dword near [0x424564] ; 0040981D FF1564454200
    %if ($ - %%insn_0040981d) > 6
        %error "LONG_0040981D"
    %endif
    times 6 - ($ - %%insn_0040981d) db 0
    %%insn_00409823:
    jmp short 0x40983b ; 00409823 EB16
    %if ($ - %%insn_00409823) > 2
        %error "LONG_00409823"
    %endif
    times 2 - ($ - %%insn_00409823) db 0
    %%insn_00409825:
    cmp dword [0x41f5a0],0x0 ; 00409825 833DA0F5410000
    %if ($ - %%insn_00409825) > 7
        %error "LONG_00409825"
    %endif
    times 7 - ($ - %%insn_00409825) db 0
    %%insn_0040982c:
    jz short 0x409835 ; 0040982C 7407
    %if ($ - %%insn_0040982c) > 2
        %error "LONG_0040982C"
    %endif
    times 2 - ($ - %%insn_0040982c) db 0
    %%insn_0040982e:
    call 0x408eb7 ; 0040982E E884F6FFFF
    %if ($ - %%insn_0040982e) > 5
        %error "LONG_0040982E"
    %endif
    times 5 - ($ - %%insn_0040982e) db 0
    %%insn_00409833:
    jmp short 0x40983b ; 00409833 EB06
    %if ($ - %%insn_00409833) > 2
        %error "LONG_00409833"
    %endif
    times 2 - ($ - %%insn_00409833) db 0
    %%insn_00409835:
    call dword near [0x424568] ; 00409835 FF1568454200
    %if ($ - %%insn_00409835) > 6
        %error "LONG_00409835"
    %endif
    times 6 - ($ - %%insn_00409835) db 0
    %%insn_0040983b:
    jmp short 0x4097da ; 0040983B EB9D
    %if ($ - %%insn_0040983b) > 2
        %error "LONG_0040983B"
    %endif
    times 2 - ($ - %%insn_0040983b) db 0
    %%insn_0040983d:
    push dword 0x0 ; 0040983D 6A00
    %if ($ - %%insn_0040983d) > 2
        %error "LONG_0040983D"
    %endif
    times 2 - ($ - %%insn_0040983d) db 0
    %%insn_0040983f:
    call 0x4096f0 ; 0040983F E8ACFEFFFF
    %if ($ - %%insn_0040983f) > 5
        %error "LONG_0040983F"
    %endif
    times 5 - ($ - %%insn_0040983f) db 0
    %%insn_00409844:
    add esp,0x4 ; 00409844 83C404
    %if ($ - %%insn_00409844) > 3
        %error "LONG_00409844"
    %endif
    times 3 - ($ - %%insn_00409844) db 0
    %%insn_00409847:
    mov eax,[ebp-0x14] ; 00409847 8B45EC
    %if ($ - %%insn_00409847) > 3
        %error "LONG_00409847"
    %endif
    times 3 - ($ - %%insn_00409847) db 0
    db 0x8B, 0xE5 ; 0040984A 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040984c:
    pop ebp ; 0040984C 5D
    %if ($ - %%insn_0040984c) > 1
        %error "LONG_0040984C"
    %endif
    times 1 - ($ - %%insn_0040984c) db 0
    %%insn_0040984d:
    ret word 0x10 ; 0040984D C21000
    %if ($ - %%insn_0040984d) > 3
        %error "LONG_0040984D"
    %endif
    times 3 - ($ - %%insn_0040984d) db 0
    %if ($ - %%fragment_start) != 213
        %error "function fragment size drift: 0040977B"
    %endif
%endmacro
