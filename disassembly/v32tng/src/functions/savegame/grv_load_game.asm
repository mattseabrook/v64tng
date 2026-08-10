; PE virtual entry 00402067
; Ghidra working symbol: FUN_00402067
; Verified GRV LOADGAME (2Eh) helper.
; Formats st7g.%d, opens it as rb, reads exactly 400h bytes into the GRV
; variable bank at 0041F2B8, then closes the stream.  The Win32 trace and
; matching opcode dispatch distinguish this from the adjacent save helper.
; Generated losslessly; preserve byte identity after edits.

%macro emit_grv_load_game_part_00 0
    %%fragment_start:
grv_load_game:
    %%insn_00402067:
    push ebp ; 00402067 55
    %if ($ - %%insn_00402067) > 1
        %error "LONG_00402067"
    %endif
    times 1 - ($ - %%insn_00402067) db 0
    db 0x8B, 0xEC ; 00402068 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040206a:
    sub esp,0x104 ; 0040206A 81EC04010000
    %if ($ - %%insn_0040206a) > 6
        %error "LONG_0040206A"
    %endif
    times 6 - ($ - %%insn_0040206a) db 0
    %%insn_00402070:
    mov eax,[ebp+0x8] ; 00402070 8B4508
    %if ($ - %%insn_00402070) > 3
        %error "LONG_00402070"
    %endif
    times 3 - ($ - %%insn_00402070) db 0
    %%insn_00402073:
    push eax ; 00402073 50
    %if ($ - %%insn_00402073) > 1
        %error "LONG_00402073"
    %endif
    times 1 - ($ - %%insn_00402073) db 0
    %%insn_00402074:
    push dword 0x41b16c ; 00402074 686CB14100
    %if ($ - %%insn_00402074) > 5
        %error "LONG_00402074"
    %endif
    times 5 - ($ - %%insn_00402074) db 0
    %%insn_00402079:
    lea ecx,[ebp-0x100] ; 00402079 8D8D00FFFFFF
    %if ($ - %%insn_00402079) > 6
        %error "LONG_00402079"
    %endif
    times 6 - ($ - %%insn_00402079) db 0
    %%insn_0040207f:
    push ecx ; 0040207F 51
    %if ($ - %%insn_0040207f) > 1
        %error "LONG_0040207F"
    %endif
    times 1 - ($ - %%insn_0040207f) db 0
    %%insn_00402080:
    call 0x40cd50 ; 00402080 E8CBAC0000
    %if ($ - %%insn_00402080) > 5
        %error "LONG_00402080"
    %endif
    times 5 - ($ - %%insn_00402080) db 0
    %%insn_00402085:
    add esp,0xc ; 00402085 83C40C
    %if ($ - %%insn_00402085) > 3
        %error "LONG_00402085"
    %endif
    times 3 - ($ - %%insn_00402085) db 0
    %%insn_00402088:
    push dword 0x41b174 ; 00402088 6874B14100
    %if ($ - %%insn_00402088) > 5
        %error "LONG_00402088"
    %endif
    times 5 - ($ - %%insn_00402088) db 0
    %%insn_0040208d:
    lea edx,[ebp-0x100] ; 0040208D 8D9500FFFFFF
    %if ($ - %%insn_0040208d) > 6
        %error "LONG_0040208D"
    %endif
    times 6 - ($ - %%insn_0040208d) db 0
    %%insn_00402093:
    push edx ; 00402093 52
    %if ($ - %%insn_00402093) > 1
        %error "LONG_00402093"
    %endif
    times 1 - ($ - %%insn_00402093) db 0
    %%insn_00402094:
    call 0x40d150 ; 00402094 E8B7B00000
    %if ($ - %%insn_00402094) > 5
        %error "LONG_00402094"
    %endif
    times 5 - ($ - %%insn_00402094) db 0
    %%insn_00402099:
    add esp,0x8 ; 00402099 83C408
    %if ($ - %%insn_00402099) > 3
        %error "LONG_00402099"
    %endif
    times 3 - ($ - %%insn_00402099) db 0
    %%insn_0040209c:
    mov [ebp-0x104],eax ; 0040209C 8985FCFEFFFF
    %if ($ - %%insn_0040209c) > 6
        %error "LONG_0040209C"
    %endif
    times 6 - ($ - %%insn_0040209c) db 0
    %%insn_004020a2:
    cmp dword [ebp-0x104],0x0 ; 004020A2 83BDFCFEFFFF00
    %if ($ - %%insn_004020a2) > 7
        %error "LONG_004020A2"
    %endif
    times 7 - ($ - %%insn_004020a2) db 0
    %%insn_004020a9:
    jnz short 0x4020b7 ; 004020A9 750C
    %if ($ - %%insn_004020a9) > 2
        %error "LONG_004020A9"
    %endif
    times 2 - ($ - %%insn_004020a9) db 0
    %%insn_004020ab:
    push dword 0x4 ; 004020AB 6A04
    %if ($ - %%insn_004020ab) > 2
        %error "LONG_004020AB"
    %endif
    times 2 - ($ - %%insn_004020ab) db 0
    %%insn_004020ad:
    push dword 0xc ; 004020AD 6A0C
    %if ($ - %%insn_004020ad) > 2
        %error "LONG_004020AD"
    %endif
    times 2 - ($ - %%insn_004020ad) db 0
    %%insn_004020af:
    call 0x409691 ; 004020AF E8DD750000
    %if ($ - %%insn_004020af) > 5
        %error "LONG_004020AF"
    %endif
    times 5 - ($ - %%insn_004020af) db 0
    %%insn_004020b4:
    add esp,0x8 ; 004020B4 83C408
    %if ($ - %%insn_004020b4) > 3
        %error "LONG_004020B4"
    %endif
    times 3 - ($ - %%insn_004020b4) db 0
    %%insn_004020b7:
    mov eax,[ebp-0x104] ; 004020B7 8B85FCFEFFFF
    %if ($ - %%insn_004020b7) > 6
        %error "LONG_004020B7"
    %endif
    times 6 - ($ - %%insn_004020b7) db 0
    %%insn_004020bd:
    push eax ; 004020BD 50
    %if ($ - %%insn_004020bd) > 1
        %error "LONG_004020BD"
    %endif
    times 1 - ($ - %%insn_004020bd) db 0
    %%insn_004020be:
    push dword 0x1 ; 004020BE 6A01
    %if ($ - %%insn_004020be) > 2
        %error "LONG_004020BE"
    %endif
    times 2 - ($ - %%insn_004020be) db 0
    %%insn_004020c0:
    push dword 0x400 ; 004020C0 6800040000
    %if ($ - %%insn_004020c0) > 5
        %error "LONG_004020C0"
    %endif
    times 5 - ($ - %%insn_004020c0) db 0
    %%insn_004020c5:
    mov ecx,[0x41f2b8] ; 004020C5 8B0DB8F24100
    %if ($ - %%insn_004020c5) > 6
        %error "LONG_004020C5"
    %endif
    times 6 - ($ - %%insn_004020c5) db 0
    %%insn_004020cb:
    push ecx ; 004020CB 51
    %if ($ - %%insn_004020cb) > 1
        %error "LONG_004020CB"
    %endif
    times 1 - ($ - %%insn_004020cb) db 0
    %%insn_004020cc:
    call 0x40cf80 ; 004020CC E8AFAE0000
    %if ($ - %%insn_004020cc) > 5
        %error "LONG_004020CC"
    %endif
    times 5 - ($ - %%insn_004020cc) db 0
    %%insn_004020d1:
    add esp,0x10 ; 004020D1 83C410
    %if ($ - %%insn_004020d1) > 3
        %error "LONG_004020D1"
    %endif
    times 3 - ($ - %%insn_004020d1) db 0
    %%insn_004020d4:
    mov edx,[ebp-0x104] ; 004020D4 8B95FCFEFFFF
    %if ($ - %%insn_004020d4) > 6
        %error "LONG_004020D4"
    %endif
    times 6 - ($ - %%insn_004020d4) db 0
    %%insn_004020da:
    push edx ; 004020DA 52
    %if ($ - %%insn_004020da) > 1
        %error "LONG_004020DA"
    %endif
    times 1 - ($ - %%insn_004020da) db 0
    %%insn_004020db:
    call 0x40ced0 ; 004020DB E8F0AD0000
    %if ($ - %%insn_004020db) > 5
        %error "LONG_004020DB"
    %endif
    times 5 - ($ - %%insn_004020db) db 0
    %%insn_004020e0:
    add esp,0x4 ; 004020E0 83C404
    %if ($ - %%insn_004020e0) > 3
        %error "LONG_004020E0"
    %endif
    times 3 - ($ - %%insn_004020e0) db 0
    db 0x8B, 0xE5 ; 004020E3 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004020e5:
    pop ebp ; 004020E5 5D
    %if ($ - %%insn_004020e5) > 1
        %error "LONG_004020E5"
    %endif
    times 1 - ($ - %%insn_004020e5) db 0
    %%insn_004020e6:
    ret ; 004020E6 C3
    %if ($ - %%insn_004020e6) > 1
        %error "LONG_004020E6"
    %endif
    times 1 - ($ - %%insn_004020e6) db 0
    %if ($ - %%fragment_start) != 128
        %error "function fragment size drift: 00402067"
    %endif
%endmacro
