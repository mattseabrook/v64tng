; PE virtual entry 004020E7
; Ghidra working symbol: FUN_004020e7
; Verified GRV LOADGAME (2Eh) helper.
; Formats st7g.%d, opens it as rb, reads exactly 400h bytes into the GRV
; variable bank at 0041F2B8, performs the original post-read runtime callback,
; and closes the stream.  Trace 20260809-212141 captured the complete successful
; st7g.1 CreateFile/1024-byte ReadFile/CloseHandle transaction.
; Generated losslessly; preserve byte identity after edits.

%macro emit_grv_load_game_004020e7_part_00 0
    %%fragment_start:
grv_load_game:
    %%insn_004020e7:
    push ebp ; 004020E7 55
    %if ($ - %%insn_004020e7) > 1
        %error "LONG_004020E7"
    %endif
    times 1 - ($ - %%insn_004020e7) db 0
    db 0x8B, 0xEC ; 004020E8 8BEC | mov ebp,esp | encoding preserved
    %%insn_004020ea:
    sub esp,0x104 ; 004020EA 81EC04010000
    %if ($ - %%insn_004020ea) > 6
        %error "LONG_004020EA"
    %endif
    times 6 - ($ - %%insn_004020ea) db 0
    %%insn_004020f0:
    mov eax,[ebp+0x8] ; 004020F0 8B4508
    %if ($ - %%insn_004020f0) > 3
        %error "LONG_004020F0"
    %endif
    times 3 - ($ - %%insn_004020f0) db 0
    %%insn_004020f3:
    push eax ; 004020F3 50
    %if ($ - %%insn_004020f3) > 1
        %error "LONG_004020F3"
    %endif
    times 1 - ($ - %%insn_004020f3) db 0
    %%insn_004020f4:
    push dword v32_grv_load_filename_format ; 004020F4 6878B14100
    %if ($ - %%insn_004020f4) > 5
        %error "LONG_004020F4"
    %endif
    times 5 - ($ - %%insn_004020f4) db 0
    %%insn_004020f9:
    lea ecx,[ebp-0x100] ; 004020F9 8D8D00FFFFFF
    %if ($ - %%insn_004020f9) > 6
        %error "LONG_004020F9"
    %endif
    times 6 - ($ - %%insn_004020f9) db 0
    %%insn_004020ff:
    push ecx ; 004020FF 51
    %if ($ - %%insn_004020ff) > 1
        %error "LONG_004020FF"
    %endif
    times 1 - ($ - %%insn_004020ff) db 0
    %%insn_00402100:
    call 0x40cd50 ; 00402100 E84BAC0000
    %if ($ - %%insn_00402100) > 5
        %error "LONG_00402100"
    %endif
    times 5 - ($ - %%insn_00402100) db 0
    %%insn_00402105:
    add esp,0xc ; 00402105 83C40C
    %if ($ - %%insn_00402105) > 3
        %error "LONG_00402105"
    %endif
    times 3 - ($ - %%insn_00402105) db 0
    %%insn_00402108:
    push dword v32_grv_load_mode ; 00402108 6880B14100
    %if ($ - %%insn_00402108) > 5
        %error "LONG_00402108"
    %endif
    times 5 - ($ - %%insn_00402108) db 0
    %%insn_0040210d:
    lea edx,[ebp-0x100] ; 0040210D 8D9500FFFFFF
    %if ($ - %%insn_0040210d) > 6
        %error "LONG_0040210D"
    %endif
    times 6 - ($ - %%insn_0040210d) db 0
    %%insn_00402113:
    push edx ; 00402113 52
    %if ($ - %%insn_00402113) > 1
        %error "LONG_00402113"
    %endif
    times 1 - ($ - %%insn_00402113) db 0
    %%insn_00402114:
    call 0x40d150 ; 00402114 E837B00000
    %if ($ - %%insn_00402114) > 5
        %error "LONG_00402114"
    %endif
    times 5 - ($ - %%insn_00402114) db 0
    %%insn_00402119:
    add esp,0x8 ; 00402119 83C408
    %if ($ - %%insn_00402119) > 3
        %error "LONG_00402119"
    %endif
    times 3 - ($ - %%insn_00402119) db 0
    %%insn_0040211c:
    mov [ebp-0x104],eax ; 0040211C 8985FCFEFFFF
    %if ($ - %%insn_0040211c) > 6
        %error "LONG_0040211C"
    %endif
    times 6 - ($ - %%insn_0040211c) db 0
    %%insn_00402122:
    cmp dword [ebp-0x104],0x0 ; 00402122 83BDFCFEFFFF00
    %if ($ - %%insn_00402122) > 7
        %error "LONG_00402122"
    %endif
    times 7 - ($ - %%insn_00402122) db 0
    %%insn_00402129:
    jnz short 0x402137 ; 00402129 750C
    %if ($ - %%insn_00402129) > 2
        %error "LONG_00402129"
    %endif
    times 2 - ($ - %%insn_00402129) db 0
    %%insn_0040212b:
    push dword 0x4 ; 0040212B 6A04
    %if ($ - %%insn_0040212b) > 2
        %error "LONG_0040212B"
    %endif
    times 2 - ($ - %%insn_0040212b) db 0
    %%insn_0040212d:
    push dword 0xc ; 0040212D 6A0C
    %if ($ - %%insn_0040212d) > 2
        %error "LONG_0040212D"
    %endif
    times 2 - ($ - %%insn_0040212d) db 0
    %%insn_0040212f:
    call 0x409691 ; 0040212F E85D750000
    %if ($ - %%insn_0040212f) > 5
        %error "LONG_0040212F"
    %endif
    times 5 - ($ - %%insn_0040212f) db 0
    %%insn_00402134:
    add esp,0x8 ; 00402134 83C408
    %if ($ - %%insn_00402134) > 3
        %error "LONG_00402134"
    %endif
    times 3 - ($ - %%insn_00402134) db 0
    %%insn_00402137:
    mov eax,[ebp-0x104] ; 00402137 8B85FCFEFFFF
    %if ($ - %%insn_00402137) > 6
        %error "LONG_00402137"
    %endif
    times 6 - ($ - %%insn_00402137) db 0
    %%insn_0040213d:
    push eax ; 0040213D 50
    %if ($ - %%insn_0040213d) > 1
        %error "LONG_0040213D"
    %endif
    times 1 - ($ - %%insn_0040213d) db 0
    %%insn_0040213e:
    push dword 0x1 ; 0040213E 6A01
    %if ($ - %%insn_0040213e) > 2
        %error "LONG_0040213E"
    %endif
    times 2 - ($ - %%insn_0040213e) db 0
    %%insn_00402140:
    push dword 0x400 ; 00402140 6800040000
    %if ($ - %%insn_00402140) > 5
        %error "LONG_00402140"
    %endif
    times 5 - ($ - %%insn_00402140) db 0
    %%insn_00402145:
    mov ecx,[0x41f2b8] ; 00402145 8B0DB8F24100
    %if ($ - %%insn_00402145) > 6
        %error "LONG_00402145"
    %endif
    times 6 - ($ - %%insn_00402145) db 0
    %%insn_0040214b:
    push ecx ; 0040214B 51
    %if ($ - %%insn_0040214b) > 1
        %error "LONG_0040214B"
    %endif
    times 1 - ($ - %%insn_0040214b) db 0
    %%insn_0040214c:
    call 0x40d170 ; 0040214C E81FB00000
    %if ($ - %%insn_0040214c) > 5
        %error "LONG_0040214C"
    %endif
    times 5 - ($ - %%insn_0040214c) db 0
    %%insn_00402151:
    add esp,0x10 ; 00402151 83C410
    %if ($ - %%insn_00402151) > 3
        %error "LONG_00402151"
    %endif
    times 3 - ($ - %%insn_00402151) db 0
    %%insn_00402154:
    mov ecx,0x421300 ; 00402154 B900134200
    %if ($ - %%insn_00402154) > 5
        %error "LONG_00402154"
    %endif
    times 5 - ($ - %%insn_00402154) db 0
    %%insn_00402159:
    call dword near [0x4213a8] ; 00402159 FF15A8134200
    %if ($ - %%insn_00402159) > 6
        %error "LONG_00402159"
    %endif
    times 6 - ($ - %%insn_00402159) db 0
    %%insn_0040215f:
    mov edx,[ebp-0x104] ; 0040215F 8B95FCFEFFFF
    %if ($ - %%insn_0040215f) > 6
        %error "LONG_0040215F"
    %endif
    times 6 - ($ - %%insn_0040215f) db 0
    %%insn_00402165:
    push edx ; 00402165 52
    %if ($ - %%insn_00402165) > 1
        %error "LONG_00402165"
    %endif
    times 1 - ($ - %%insn_00402165) db 0
    %%insn_00402166:
    call 0x40ced0 ; 00402166 E865AD0000
    %if ($ - %%insn_00402166) > 5
        %error "LONG_00402166"
    %endif
    times 5 - ($ - %%insn_00402166) db 0
    %%insn_0040216b:
    add esp,0x4 ; 0040216B 83C404
    %if ($ - %%insn_0040216b) > 3
        %error "LONG_0040216B"
    %endif
    times 3 - ($ - %%insn_0040216b) db 0
    db 0x8B, 0xE5 ; 0040216E 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00402170:
    pop ebp ; 00402170 5D
    %if ($ - %%insn_00402170) > 1
        %error "LONG_00402170"
    %endif
    times 1 - ($ - %%insn_00402170) db 0
    %%insn_00402171:
    ret ; 00402171 C3
    %if ($ - %%insn_00402171) > 1
        %error "LONG_00402171"
    %endif
    times 1 - ($ - %%insn_00402171) db 0
    %if ($ - %%fragment_start) != 139
        %error "function fragment size drift: 004020E7"
    %endif
%endmacro
