; PE virtual entry 00409512
; Ghidra working symbol: FUN_00409512
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409512_part_00 0
    %%fragment_start:
func_00409512:
    %%insn_00409512:
    push ebp ; 00409512 55
    %if ($ - %%insn_00409512) > 1
        %error "LONG_00409512"
    %endif
    times 1 - ($ - %%insn_00409512) db 0
    db 0x8B, 0xEC ; 00409513 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409515:
    sub esp,0x108 ; 00409515 81EC08010000
    %if ($ - %%insn_00409515) > 6
        %error "LONG_00409515"
    %endif
    times 6 - ($ - %%insn_00409515) db 0
    %%insn_0040951b:
    mov eax,[ebp+0x8] ; 0040951B 8B4508
    %if ($ - %%insn_0040951b) > 3
        %error "LONG_0040951B"
    %endif
    times 3 - ($ - %%insn_0040951b) db 0
    %%insn_0040951e:
    push eax ; 0040951E 50
    %if ($ - %%insn_0040951e) > 1
        %error "LONG_0040951E"
    %endif
    times 1 - ($ - %%insn_0040951e) db 0
    %%insn_0040951f:
    lea ecx,[ebp-0x104] ; 0040951F 8D8DFCFEFFFF
    %if ($ - %%insn_0040951f) > 6
        %error "LONG_0040951F"
    %endif
    times 6 - ($ - %%insn_0040951f) db 0
    %%insn_00409525:
    push ecx ; 00409525 51
    %if ($ - %%insn_00409525) > 1
        %error "LONG_00409525"
    %endif
    times 1 - ($ - %%insn_00409525) db 0
    %%insn_00409526:
    call 0x40d7b0 ; 00409526 E885420000
    %if ($ - %%insn_00409526) > 5
        %error "LONG_00409526"
    %endif
    times 5 - ($ - %%insn_00409526) db 0
    %%insn_0040952b:
    add esp,0x8 ; 0040952B 83C408
    %if ($ - %%insn_0040952b) > 3
        %error "LONG_0040952B"
    %endif
    times 3 - ($ - %%insn_0040952b) db 0
    %%insn_0040952e:
    push dword 0x41bba8 ; 0040952E 68A8BB4100
    %if ($ - %%insn_0040952e) > 5
        %error "LONG_0040952E"
    %endif
    times 5 - ($ - %%insn_0040952e) db 0
    %%insn_00409533:
    lea edx,[ebp-0x104] ; 00409533 8D95FCFEFFFF
    %if ($ - %%insn_00409533) > 6
        %error "LONG_00409533"
    %endif
    times 6 - ($ - %%insn_00409533) db 0
    %%insn_00409539:
    push edx ; 00409539 52
    %if ($ - %%insn_00409539) > 1
        %error "LONG_00409539"
    %endif
    times 1 - ($ - %%insn_00409539) db 0
    %%insn_0040953a:
    call 0x40d7c0 ; 0040953A E881420000
    %if ($ - %%insn_0040953a) > 5
        %error "LONG_0040953A"
    %endif
    times 5 - ($ - %%insn_0040953a) db 0
    %%insn_0040953f:
    add esp,0x8 ; 0040953F 83C408
    %if ($ - %%insn_0040953f) > 3
        %error "LONG_0040953F"
    %endif
    times 3 - ($ - %%insn_0040953f) db 0
    %%insn_00409542:
    push dword 0x41bbb0 ; 00409542 68B0BB4100
    %if ($ - %%insn_00409542) > 5
        %error "LONG_00409542"
    %endif
    times 5 - ($ - %%insn_00409542) db 0
    %%insn_00409547:
    lea eax,[ebp-0x104] ; 00409547 8D85FCFEFFFF
    %if ($ - %%insn_00409547) > 6
        %error "LONG_00409547"
    %endif
    times 6 - ($ - %%insn_00409547) db 0
    %%insn_0040954d:
    push eax ; 0040954D 50
    %if ($ - %%insn_0040954d) > 1
        %error "LONG_0040954D"
    %endif
    times 1 - ($ - %%insn_0040954d) db 0
    %%insn_0040954e:
    call 0x40d150 ; 0040954E E8FD3B0000
    %if ($ - %%insn_0040954e) > 5
        %error "LONG_0040954E"
    %endif
    times 5 - ($ - %%insn_0040954e) db 0
    %%insn_00409553:
    add esp,0x8 ; 00409553 83C408
    %if ($ - %%insn_00409553) > 3
        %error "LONG_00409553"
    %endif
    times 3 - ($ - %%insn_00409553) db 0
    %%insn_00409556:
    mov [ebp-0x108],eax ; 00409556 8985F8FEFFFF
    %if ($ - %%insn_00409556) > 6
        %error "LONG_00409556"
    %endif
    times 6 - ($ - %%insn_00409556) db 0
    %%insn_0040955c:
    cmp dword [ebp-0x108],0x0 ; 0040955C 83BDF8FEFFFF00
    %if ($ - %%insn_0040955c) > 7
        %error "LONG_0040955C"
    %endif
    times 7 - ($ - %%insn_0040955c) db 0
    %%insn_00409563:
    jnz short 0x4095b3 ; 00409563 754E
    %if ($ - %%insn_00409563) > 2
        %error "LONG_00409563"
    %endif
    times 2 - ($ - %%insn_00409563) db 0
    %%insn_00409565:
    push dword 0x41bbb4 ; 00409565 68B4BB4100
    %if ($ - %%insn_00409565) > 5
        %error "LONG_00409565"
    %endif
    times 5 - ($ - %%insn_00409565) db 0
    %%insn_0040956a:
    lea ecx,[ebp-0x101] ; 0040956A 8D8DFFFEFFFF
    %if ($ - %%insn_0040956a) > 6
        %error "LONG_0040956A"
    %endif
    times 6 - ($ - %%insn_0040956a) db 0
    %%insn_00409570:
    push ecx ; 00409570 51
    %if ($ - %%insn_00409570) > 1
        %error "LONG_00409570"
    %endif
    times 1 - ($ - %%insn_00409570) db 0
    %%insn_00409571:
    call 0x40d7b0 ; 00409571 E83A420000
    %if ($ - %%insn_00409571) > 5
        %error "LONG_00409571"
    %endif
    times 5 - ($ - %%insn_00409571) db 0
    %%insn_00409576:
    add esp,0x8 ; 00409576 83C408
    %if ($ - %%insn_00409576) > 3
        %error "LONG_00409576"
    %endif
    times 3 - ($ - %%insn_00409576) db 0
    %%insn_00409579:
    push dword 0x0 ; 00409579 6A00
    %if ($ - %%insn_00409579) > 2
        %error "LONG_00409579"
    %endif
    times 2 - ($ - %%insn_00409579) db 0
    %%insn_0040957b:
    lea edx,[ebp-0x104] ; 0040957B 8D95FCFEFFFF
    %if ($ - %%insn_0040957b) > 6
        %error "LONG_0040957B"
    %endif
    times 6 - ($ - %%insn_0040957b) db 0
    %%insn_00409581:
    push edx ; 00409581 52
    %if ($ - %%insn_00409581) > 1
        %error "LONG_00409581"
    %endif
    times 1 - ($ - %%insn_00409581) db 0
    %%insn_00409582:
    lea eax,[ebp-0x104] ; 00409582 8D85FCFEFFFF
    %if ($ - %%insn_00409582) > 6
        %error "LONG_00409582"
    %endif
    times 6 - ($ - %%insn_00409582) db 0
    %%insn_00409588:
    push eax ; 00409588 50
    %if ($ - %%insn_00409588) > 1
        %error "LONG_00409588"
    %endif
    times 1 - ($ - %%insn_00409588) db 0
    %%insn_00409589:
    push dword 0x1 ; 00409589 6A01
    %if ($ - %%insn_00409589) > 2
        %error "LONG_00409589"
    %endif
    times 2 - ($ - %%insn_00409589) db 0
    %%insn_0040958b:
    call 0x40d790 ; 0040958B E800420000
    %if ($ - %%insn_0040958b) > 5
        %error "LONG_0040958B"
    %endif
    times 5 - ($ - %%insn_0040958b) db 0
    %%insn_00409590:
    add esp,0x10 ; 00409590 83C410
    %if ($ - %%insn_00409590) > 3
        %error "LONG_00409590"
    %endif
    times 3 - ($ - %%insn_00409590) db 0
    %%insn_00409593:
    cmp eax,0xffffffffffffffff ; 00409593 83F8FF
    %if ($ - %%insn_00409593) > 3
        %error "LONG_00409593"
    %endif
    times 3 - ($ - %%insn_00409593) db 0
    %%insn_00409596:
    jnz short 0x4095ac ; 00409596 7514
    %if ($ - %%insn_00409596) > 2
        %error "LONG_00409596"
    %endif
    times 2 - ($ - %%insn_00409596) db 0
    %%insn_00409598:
    push dword 0x0 ; 00409598 6A00
    %if ($ - %%insn_00409598) > 2
        %error "LONG_00409598"
    %endif
    times 2 - ($ - %%insn_00409598) db 0
    %%insn_0040959a:
    push dword 0x41bbc0 ; 0040959A 68C0BB4100
    %if ($ - %%insn_0040959a) > 5
        %error "LONG_0040959A"
    %endif
    times 5 - ($ - %%insn_0040959a) db 0
    %%insn_0040959f:
    push dword 0x41bbd8 ; 0040959F 68D8BB4100
    %if ($ - %%insn_0040959f) > 5
        %error "LONG_0040959F"
    %endif
    times 5 - ($ - %%insn_0040959f) db 0
    %%insn_004095a4:
    push dword 0x0 ; 004095A4 6A00
    %if ($ - %%insn_004095a4) > 2
        %error "LONG_004095A4"
    %endif
    times 2 - ($ - %%insn_004095a4) db 0
    %%insn_004095a6:
    call dword near [0x4244f8] ; 004095A6 FF15F8444200
    %if ($ - %%insn_004095a6) > 6
        %error "LONG_004095A6"
    %endif
    times 6 - ($ - %%insn_004095a6) db 0
    %%insn_004095ac:
    mov eax,0x1 ; 004095AC B801000000
    %if ($ - %%insn_004095ac) > 5
        %error "LONG_004095AC"
    %endif
    times 5 - ($ - %%insn_004095ac) db 0
    %%insn_004095b1:
    jmp short 0x4095d3 ; 004095B1 EB20
    %if ($ - %%insn_004095b1) > 2
        %error "LONG_004095B1"
    %endif
    times 2 - ($ - %%insn_004095b1) db 0
    %%insn_004095b3:
    mov ecx,[ebp-0x108] ; 004095B3 8B8DF8FEFFFF
    %if ($ - %%insn_004095b3) > 6
        %error "LONG_004095B3"
    %endif
    times 6 - ($ - %%insn_004095b3) db 0
    %%insn_004095b9:
    push ecx ; 004095B9 51
    %if ($ - %%insn_004095b9) > 1
        %error "LONG_004095B9"
    %endif
    times 1 - ($ - %%insn_004095b9) db 0
    %%insn_004095ba:
    call 0x40ced0 ; 004095BA E811390000
    %if ($ - %%insn_004095ba) > 5
        %error "LONG_004095BA"
    %endif
    times 5 - ($ - %%insn_004095ba) db 0
    %%insn_004095bf:
    add esp,0x4 ; 004095BF 83C404
    %if ($ - %%insn_004095bf) > 3
        %error "LONG_004095BF"
    %endif
    times 3 - ($ - %%insn_004095bf) db 0
    %%insn_004095c2:
    lea edx,[ebp-0x104] ; 004095C2 8D95FCFEFFFF
    %if ($ - %%insn_004095c2) > 6
        %error "LONG_004095C2"
    %endif
    times 6 - ($ - %%insn_004095c2) db 0
    %%insn_004095c8:
    push edx ; 004095C8 52
    %if ($ - %%insn_004095c8) > 1
        %error "LONG_004095C8"
    %endif
    times 1 - ($ - %%insn_004095c8) db 0
    %%insn_004095c9:
    call 0x40d780 ; 004095C9 E8B2410000
    %if ($ - %%insn_004095c9) > 5
        %error "LONG_004095C9"
    %endif
    times 5 - ($ - %%insn_004095c9) db 0
    %%insn_004095ce:
    add esp,0x4 ; 004095CE 83C404
    %if ($ - %%insn_004095ce) > 3
        %error "LONG_004095CE"
    %endif
    times 3 - ($ - %%insn_004095ce) db 0
    db 0x33, 0xC0 ; 004095D1 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 004095D3 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004095d5:
    pop ebp ; 004095D5 5D
    %if ($ - %%insn_004095d5) > 1
        %error "LONG_004095D5"
    %endif
    times 1 - ($ - %%insn_004095d5) db 0
    %%insn_004095d6:
    ret ; 004095D6 C3
    %if ($ - %%insn_004095d6) > 1
        %error "LONG_004095D6"
    %endif
    times 1 - ($ - %%insn_004095d6) db 0
    %if ($ - %%fragment_start) != 197
        %error "function fragment size drift: 00409512"
    %endif
%endmacro
