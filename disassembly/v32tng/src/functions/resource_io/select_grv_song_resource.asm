; PE virtual entry 00401F5F
; Ghidra working symbol: FUN_00401f5f
; Verified packed GRV song ref resolver and sequence staging path.
; Generated losslessly; preserve byte identity after edits.

%macro emit_select_grv_song_resource_part_00 0
    %%fragment_start:
select_grv_song_resource:
    %%insn_00401f5f:
    push ebp ; 00401F5F 55
    %if ($ - %%insn_00401f5f) > 1
        %error "LONG_00401F5F"
    %endif
    times 1 - ($ - %%insn_00401f5f) db 0
    db 0x8B, 0xEC ; 00401F60 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401f62:
    sub esp,0x10c ; 00401F62 81EC0C010000
    %if ($ - %%insn_00401f62) > 6
        %error "LONG_00401F62"
    %endif
    times 6 - ($ - %%insn_00401f62) db 0
    %%insn_00401f68:
    mov eax,[ebp+0x8] ; 00401F68 8B4508
    %if ($ - %%insn_00401f68) > 3
        %error "LONG_00401F68"
    %endif
    times 3 - ($ - %%insn_00401f68) db 0
    %%insn_00401f6b:
    sar eax,byte 0xa ; 00401F6B C1F80A
    %if ($ - %%insn_00401f6b) > 3
        %error "LONG_00401F6B"
    %endif
    times 3 - ($ - %%insn_00401f6b) db 0
    %%insn_00401f6e:
    mov [ebp-0x10c],eax ; 00401F6E 8985F4FEFFFF
    %if ($ - %%insn_00401f6e) > 6
        %error "LONG_00401F6E"
    %endif
    times 6 - ($ - %%insn_00401f6e) db 0
    %%insn_00401f74:
    mov ecx,[ebp+0x8] ; 00401F74 8B4D08
    %if ($ - %%insn_00401f74) > 3
        %error "LONG_00401F74"
    %endif
    times 3 - ($ - %%insn_00401f74) db 0
    %%insn_00401f77:
    and ecx,0x3ff ; 00401F77 81E1FF030000
    %if ($ - %%insn_00401f77) > 6
        %error "LONG_00401F77"
    %endif
    times 6 - ($ - %%insn_00401f77) db 0
    %%insn_00401f7d:
    mov [ebp-0x108],ecx ; 00401F7D 898DF8FEFFFF
    %if ($ - %%insn_00401f7d) > 6
        %error "LONG_00401F7D"
    %endif
    times 6 - ($ - %%insn_00401f7d) db 0
    %%insn_00401f83:
    mov edx,[ebp-0x108] ; 00401F83 8B95F8FEFFFF
    %if ($ - %%insn_00401f83) > 6
        %error "LONG_00401F83"
    %endif
    times 6 - ($ - %%insn_00401f83) db 0
    %%insn_00401f89:
    imul edx,edx,0x14 ; 00401F89 6BD214
    %if ($ - %%insn_00401f89) > 3
        %error "LONG_00401F89"
    %endif
    times 3 - ($ - %%insn_00401f89) db 0
    %%insn_00401f8c:
    mov eax,[ebp-0x10c] ; 00401F8C 8B85F4FEFFFF
    %if ($ - %%insn_00401f8c) > 6
        %error "LONG_00401F8C"
    %endif
    times 6 - ($ - %%insn_00401f8c) db 0
    %%insn_00401f92:
    mov ecx,[eax*8+0x4223a4] ; 00401F92 8B0CC5A4234200
    %if ($ - %%insn_00401f92) > 7
        %error "LONG_00401F92"
    %endif
    times 7 - ($ - %%insn_00401f92) db 0
    db 0x03, 0xCA ; 00401F99 03CA | add ecx,edx | encoding preserved
    %%insn_00401f9b:
    mov [ebp-0x104],ecx ; 00401F9B 898DFCFEFFFF
    %if ($ - %%insn_00401f9b) > 6
        %error "LONG_00401F9B"
    %endif
    times 6 - ($ - %%insn_00401f9b) db 0
    %%insn_00401fa1:
    call end_active_midi_sequence ; 00401FA1 E886510000
    %if ($ - %%insn_00401fa1) > 5
        %error "LONG_00401FA1"
    %endif
    times 5 - ($ - %%insn_00401fa1) db 0
    %%insn_00401fa6:
    mov edx,[ebp-0x10c] ; 00401FA6 8B95F4FEFFFF
    %if ($ - %%insn_00401fa6) > 6
        %error "LONG_00401FA6"
    %endif
    times 6 - ($ - %%insn_00401fa6) db 0
    %%insn_00401fac:
    cmp edx,[0x41f2b0] ; 00401FAC 3B15B0F24100
    %if ($ - %%insn_00401fac) > 6
        %error "LONG_00401FAC"
    %endif
    times 6 - ($ - %%insn_00401fac) db 0
    %%insn_00401fb2:
    jz short 0x40201e ; 00401FB2 746A
    %if ($ - %%insn_00401fb2) > 2
        %error "LONG_00401FB2"
    %endif
    times 2 - ($ - %%insn_00401fb2) db 0
    %%insn_00401fb4:
    cmp dword [0x41f2b0],0xffffffffffffffff ; 00401FB4 833DB0F24100FF
    %if ($ - %%insn_00401fb4) > 7
        %error "LONG_00401FB4"
    %endif
    times 7 - ($ - %%insn_00401fb4) db 0
    %%insn_00401fbb:
    jz short 0x401fc2 ; 00401FBB 7405
    %if ($ - %%insn_00401fbb) > 2
        %error "LONG_00401FBB"
    %endif
    times 2 - ($ - %%insn_00401fbb) db 0
    %%insn_00401fbd:
    jmp 0x402063 ; 00401FBD E9A1000000
    %if ($ - %%insn_00401fbd) > 5
        %error "LONG_00401FBD"
    %endif
    times 5 - ($ - %%insn_00401fbd) db 0
    %%insn_00401fc2:
    mov ecx,[ebp-0x10c] ; 00401FC2 8B8DF4FEFFFF
    %if ($ - %%insn_00401fc2) > 6
        %error "LONG_00401FC2"
    %endif
    times 6 - ($ - %%insn_00401fc2) db 0
    %%insn_00401fc8:
    mov edx,[ecx*4+0x41b038] ; 00401FC8 8B148D38B04100
    %if ($ - %%insn_00401fc8) > 7
        %error "LONG_00401FC8"
    %endif
    times 7 - ($ - %%insn_00401fc8) db 0
    %%insn_00401fcf:
    push edx ; 00401FCF 52
    %if ($ - %%insn_00401fcf) > 1
        %error "LONG_00401FCF"
    %endif
    times 1 - ($ - %%insn_00401fcf) db 0
    %%insn_00401fd0:
    push dword 0x41b164 ; 00401FD0 6864B14100
    %if ($ - %%insn_00401fd0) > 5
        %error "LONG_00401FD0"
    %endif
    times 5 - ($ - %%insn_00401fd0) db 0
    %%insn_00401fd5:
    lea eax,[ebp-0x100] ; 00401FD5 8D8500FFFFFF
    %if ($ - %%insn_00401fd5) > 6
        %error "LONG_00401FD5"
    %endif
    times 6 - ($ - %%insn_00401fd5) db 0
    %%insn_00401fdb:
    push eax ; 00401FDB 50
    %if ($ - %%insn_00401fdb) > 1
        %error "LONG_00401FDB"
    %endif
    times 1 - ($ - %%insn_00401fdb) db 0
    %%insn_00401fdc:
    call 0x40cd50 ; 00401FDC E86FAD0000
    %if ($ - %%insn_00401fdc) > 5
        %error "LONG_00401FDC"
    %endif
    times 5 - ($ - %%insn_00401fdc) db 0
    %%insn_00401fe1:
    add esp,0xc ; 00401FE1 83C40C
    %if ($ - %%insn_00401fe1) > 3
        %error "LONG_00401FE1"
    %endif
    times 3 - ($ - %%insn_00401fe1) db 0
    %%insn_00401fe4:
    mov ecx,[ebp-0x10c] ; 00401FE4 8B8DF4FEFFFF
    %if ($ - %%insn_00401fe4) > 6
        %error "LONG_00401FE4"
    %endif
    times 6 - ($ - %%insn_00401fe4) db 0
    %%insn_00401fea:
    mov [0x41f2b0],ecx ; 00401FEA 890DB0F24100
    %if ($ - %%insn_00401fea) > 6
        %error "LONG_00401FEA"
    %endif
    times 6 - ($ - %%insn_00401fea) db 0
    %%insn_00401ff0:
    push dword 0x10000 ; 00401FF0 6800000100
    %if ($ - %%insn_00401ff0) > 5
        %error "LONG_00401FF0"
    %endif
    times 5 - ($ - %%insn_00401ff0) db 0
    %%insn_00401ff5:
    push dword 0x0 ; 00401FF5 6A00
    %if ($ - %%insn_00401ff5) > 2
        %error "LONG_00401FF5"
    %endif
    times 2 - ($ - %%insn_00401ff5) db 0
    %%insn_00401ff7:
    lea edx,[ebp-0x100] ; 00401FF7 8D9500FFFFFF
    %if ($ - %%insn_00401ff7) > 6
        %error "LONG_00401FF7"
    %endif
    times 6 - ($ - %%insn_00401ff7) db 0
    %%insn_00401ffd:
    push edx ; 00401FFD 52
    %if ($ - %%insn_00401ffd) > 1
        %error "LONG_00401FFD"
    %endif
    times 1 - ($ - %%insn_00401ffd) db 0
    %%insn_00401ffe:
    call dword near [0x424598] ; 00401FFE FF1598454200
    %if ($ - %%insn_00401ffe) > 6
        %error "LONG_00401FFE"
    %endif
    times 6 - ($ - %%insn_00401ffe) db 0
    %%insn_00402004:
    mov [0x41f2d4],eax ; 00402004 A3D4F24100
    %if ($ - %%insn_00402004) > 5
        %error "LONG_00402004"
    %endif
    times 5 - ($ - %%insn_00402004) db 0
    %%insn_00402009:
    cmp dword [0x41f2d4],0x0 ; 00402009 833DD4F2410000
    %if ($ - %%insn_00402009) > 7
        %error "LONG_00402009"
    %endif
    times 7 - ($ - %%insn_00402009) db 0
    %%insn_00402010:
    jnz short 0x40201e ; 00402010 750C
    %if ($ - %%insn_00402010) > 2
        %error "LONG_00402010"
    %endif
    times 2 - ($ - %%insn_00402010) db 0
    %%insn_00402012:
    push dword 0x1 ; 00402012 6A01
    %if ($ - %%insn_00402012) > 2
        %error "LONG_00402012"
    %endif
    times 2 - ($ - %%insn_00402012) db 0
    %%insn_00402014:
    push dword 0x10 ; 00402014 6A10
    %if ($ - %%insn_00402014) > 2
        %error "LONG_00402014"
    %endif
    times 2 - ($ - %%insn_00402014) db 0
    %%insn_00402016:
    call 0x409691 ; 00402016 E876760000
    %if ($ - %%insn_00402016) > 5
        %error "LONG_00402016"
    %endif
    times 5 - ($ - %%insn_00402016) db 0
    %%insn_0040201b:
    add esp,0x8 ; 0040201B 83C408
    %if ($ - %%insn_0040201b) > 3
        %error "LONG_0040201B"
    %endif
    times 3 - ($ - %%insn_0040201b) db 0
    %%insn_0040201e:
    push dword 0x0 ; 0040201E 6A00
    %if ($ - %%insn_0040201e) > 2
        %error "LONG_0040201E"
    %endif
    times 2 - ($ - %%insn_0040201e) db 0
    %%insn_00402020:
    mov eax,[ebp-0x104] ; 00402020 8B85FCFEFFFF
    %if ($ - %%insn_00402020) > 6
        %error "LONG_00402020"
    %endif
    times 6 - ($ - %%insn_00402020) db 0
    %%insn_00402026:
    mov ecx,[eax+0xc] ; 00402026 8B480C
    %if ($ - %%insn_00402026) > 3
        %error "LONG_00402026"
    %endif
    times 3 - ($ - %%insn_00402026) db 0
    %%insn_00402029:
    push ecx ; 00402029 51
    %if ($ - %%insn_00402029) > 1
        %error "LONG_00402029"
    %endif
    times 1 - ($ - %%insn_00402029) db 0
    %%insn_0040202a:
    mov edx,[0x41f2d4] ; 0040202A 8B15D4F24100
    %if ($ - %%insn_0040202a) > 6
        %error "LONG_0040202A"
    %endif
    times 6 - ($ - %%insn_0040202a) db 0
    %%insn_00402030:
    push edx ; 00402030 52
    %if ($ - %%insn_00402030) > 1
        %error "LONG_00402030"
    %endif
    times 1 - ($ - %%insn_00402030) db 0
    %%insn_00402031:
    call dword near [0x42459c] ; 00402031 FF159C454200
    %if ($ - %%insn_00402031) > 6
        %error "LONG_00402031"
    %endif
    times 6 - ($ - %%insn_00402031) db 0
    %%insn_00402037:
    mov eax,[ebp-0x104] ; 00402037 8B85FCFEFFFF
    %if ($ - %%insn_00402037) > 6
        %error "LONG_00402037"
    %endif
    times 6 - ($ - %%insn_00402037) db 0
    %%insn_0040203d:
    mov ecx,[eax+0x10] ; 0040203D 8B4810
    %if ($ - %%insn_0040203d) > 3
        %error "LONG_0040203D"
    %endif
    times 3 - ($ - %%insn_0040203d) db 0
    %%insn_00402040:
    push ecx ; 00402040 51
    %if ($ - %%insn_00402040) > 1
        %error "LONG_00402040"
    %endif
    times 1 - ($ - %%insn_00402040) db 0
    %%insn_00402041:
    mov edx,[0x41f2a4] ; 00402041 8B15A4F24100
    %if ($ - %%insn_00402041) > 6
        %error "LONG_00402041"
    %endif
    times 6 - ($ - %%insn_00402041) db 0
    %%insn_00402047:
    push edx ; 00402047 52
    %if ($ - %%insn_00402047) > 1
        %error "LONG_00402047"
    %endif
    times 1 - ($ - %%insn_00402047) db 0
    %%insn_00402048:
    mov eax,[0x41f2d4] ; 00402048 A1D4F24100
    %if ($ - %%insn_00402048) > 5
        %error "LONG_00402048"
    %endif
    times 5 - ($ - %%insn_00402048) db 0
    %%insn_0040204d:
    push eax ; 0040204D 50
    %if ($ - %%insn_0040204d) > 1
        %error "LONG_0040204D"
    %endif
    times 1 - ($ - %%insn_0040204d) db 0
    %%insn_0040204e:
    call dword near [0x424594] ; 0040204E FF1594454200
    %if ($ - %%insn_0040204e) > 6
        %error "LONG_0040204E"
    %endif
    times 6 - ($ - %%insn_0040204e) db 0
    %%insn_00402054:
    mov ecx,[0x41f2a4] ; 00402054 8B0DA4F24100
    %if ($ - %%insn_00402054) > 6
        %error "LONG_00402054"
    %endif
    times 6 - ($ - %%insn_00402054) db 0
    %%insn_0040205a:
    push ecx ; 0040205A 51
    %if ($ - %%insn_0040205a) > 1
        %error "LONG_0040205A"
    %endif
    times 1 - ($ - %%insn_0040205a) db 0
    %%insn_0040205b:
    call 0x407049 ; 0040205B E8E94F0000
    %if ($ - %%insn_0040205b) > 5
        %error "LONG_0040205B"
    %endif
    times 5 - ($ - %%insn_0040205b) db 0
    %%insn_00402060:
    add esp,0x4 ; 00402060 83C404
    %if ($ - %%insn_00402060) > 3
        %error "LONG_00402060"
    %endif
    times 3 - ($ - %%insn_00402060) db 0
    db 0x8B, 0xE5 ; 00402063 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00402065:
    pop ebp ; 00402065 5D
    %if ($ - %%insn_00402065) > 1
        %error "LONG_00402065"
    %endif
    times 1 - ($ - %%insn_00402065) db 0
    %%insn_00402066:
    ret ; 00402066 C3
    %if ($ - %%insn_00402066) > 1
        %error "LONG_00402066"
    %endif
    times 1 - ($ - %%insn_00402066) db 0
    %if ($ - %%fragment_start) != 264
        %error "function fragment size drift: 00401F5F"
    %endif
%endmacro
