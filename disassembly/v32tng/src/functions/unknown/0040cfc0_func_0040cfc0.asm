; PE virtual entry 0040CFC0
; Ghidra working symbol: FUN_0040cfc0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040cfc0_part_00 0
    %%fragment_start:
func_0040cfc0:
    %%insn_0040cfc0:
    push ecx ; 0040CFC0 51
    %if ($ - %%insn_0040cfc0) > 1
        %error "LONG_0040CFC0"
    %endif
    times 1 - ($ - %%insn_0040cfc0) db 0
    %%insn_0040cfc1:
    push ebx ; 0040CFC1 53
    %if ($ - %%insn_0040cfc1) > 1
        %error "LONG_0040CFC1"
    %endif
    times 1 - ($ - %%insn_0040cfc1) db 0
    %%insn_0040cfc2:
    push ebp ; 0040CFC2 55
    %if ($ - %%insn_0040cfc2) > 1
        %error "LONG_0040CFC2"
    %endif
    times 1 - ($ - %%insn_0040cfc2) db 0
    %%insn_0040cfc3:
    mov ebp,[esp+0x18] ; 0040CFC3 8B6C2418
    %if ($ - %%insn_0040cfc3) > 4
        %error "LONG_0040CFC3"
    %endif
    times 4 - ($ - %%insn_0040cfc3) db 0
    %%insn_0040cfc7:
    push esi ; 0040CFC7 56
    %if ($ - %%insn_0040cfc7) > 1
        %error "LONG_0040CFC7"
    %endif
    times 1 - ($ - %%insn_0040cfc7) db 0
    %%insn_0040cfc8:
    imul ebp,[esp+0x18] ; 0040CFC8 0FAF6C2418
    %if ($ - %%insn_0040cfc8) > 5
        %error "LONG_0040CFC8"
    %endif
    times 5 - ($ - %%insn_0040cfc8) db 0
    %%insn_0040cfcd:
    mov esi,[esp+0x14] ; 0040CFCD 8B742414
    %if ($ - %%insn_0040cfcd) > 4
        %error "LONG_0040CFCD"
    %endif
    times 4 - ($ - %%insn_0040cfcd) db 0
    %%insn_0040cfd1:
    push edi ; 0040CFD1 57
    %if ($ - %%insn_0040cfd1) > 1
        %error "LONG_0040CFD1"
    %endif
    times 1 - ($ - %%insn_0040cfd1) db 0
    %%insn_0040cfd2:
    test ebp,ebp ; 0040CFD2 85ED
    %if ($ - %%insn_0040cfd2) > 2
        %error "LONG_0040CFD2"
    %endif
    times 2 - ($ - %%insn_0040cfd2) db 0
    %%insn_0040cfd4:
    mov [esp+0x18],esi ; 0040CFD4 89742418
    %if ($ - %%insn_0040cfd4) > 4
        %error "LONG_0040CFD4"
    %endif
    times 4 - ($ - %%insn_0040cfd4) db 0
    %%insn_0040cfd8:
    mov [esp+0x10],ebp ; 0040CFD8 896C2410
    %if ($ - %%insn_0040cfd8) > 4
        %error "LONG_0040CFD8"
    %endif
    times 4 - ($ - %%insn_0040cfd8) db 0
    %%insn_0040cfdc:
    jnz short 0x40cfe6 ; 0040CFDC 7508
    %if ($ - %%insn_0040cfdc) > 2
        %error "LONG_0040CFDC"
    %endif
    times 2 - ($ - %%insn_0040cfdc) db 0
    db 0x33, 0xC0 ; 0040CFDE 33C0 | xor eax,eax | encoding preserved
    %%insn_0040cfe0:
    pop edi ; 0040CFE0 5F
    %if ($ - %%insn_0040cfe0) > 1
        %error "LONG_0040CFE0"
    %endif
    times 1 - ($ - %%insn_0040cfe0) db 0
    %%insn_0040cfe1:
    pop esi ; 0040CFE1 5E
    %if ($ - %%insn_0040cfe1) > 1
        %error "LONG_0040CFE1"
    %endif
    times 1 - ($ - %%insn_0040cfe1) db 0
    %%insn_0040cfe2:
    pop ebp ; 0040CFE2 5D
    %if ($ - %%insn_0040cfe2) > 1
        %error "LONG_0040CFE2"
    %endif
    times 1 - ($ - %%insn_0040cfe2) db 0
    %%insn_0040cfe3:
    pop ebx ; 0040CFE3 5B
    %if ($ - %%insn_0040cfe3) > 1
        %error "LONG_0040CFE3"
    %endif
    times 1 - ($ - %%insn_0040cfe3) db 0
    %%insn_0040cfe4:
    pop ecx ; 0040CFE4 59
    %if ($ - %%insn_0040cfe4) > 1
        %error "LONG_0040CFE4"
    %endif
    times 1 - ($ - %%insn_0040cfe4) db 0
    %%insn_0040cfe5:
    ret ; 0040CFE5 C3
    %if ($ - %%insn_0040cfe5) > 1
        %error "LONG_0040CFE5"
    %endif
    times 1 - ($ - %%insn_0040cfe5) db 0
    %%insn_0040cfe6:
    mov ebx,[esp+0x24] ; 0040CFE6 8B5C2424
    %if ($ - %%insn_0040cfe6) > 4
        %error "LONG_0040CFE6"
    %endif
    times 4 - ($ - %%insn_0040cfe6) db 0
    %%insn_0040cfea:
    test dword [ebx+0xc],0x10c ; 0040CFEA F7430C0C010000
    %if ($ - %%insn_0040cfea) > 7
        %error "LONG_0040CFEA"
    %endif
    times 7 - ($ - %%insn_0040cfea) db 0
    %%insn_0040cff1:
    jz short 0x40cffc ; 0040CFF1 7409
    %if ($ - %%insn_0040cff1) > 2
        %error "LONG_0040CFF1"
    %endif
    times 2 - ($ - %%insn_0040cff1) db 0
    %%insn_0040cff3:
    mov edi,[ebx+0x18] ; 0040CFF3 8B7B18
    %if ($ - %%insn_0040cff3) > 3
        %error "LONG_0040CFF3"
    %endif
    times 3 - ($ - %%insn_0040cff3) db 0
    %%insn_0040cff6:
    mov [esp+0x24],edi ; 0040CFF6 897C2424
    %if ($ - %%insn_0040cff6) > 4
        %error "LONG_0040CFF6"
    %endif
    times 4 - ($ - %%insn_0040cff6) db 0
    %%insn_0040cffa:
    jmp short 0x40d008 ; 0040CFFA EB0C
    %if ($ - %%insn_0040cffa) > 2
        %error "LONG_0040CFFA"
    %endif
    times 2 - ($ - %%insn_0040cffa) db 0
    %%insn_0040cffc:
    mov dword [esp+0x24],0x1000 ; 0040CFFC C744242400100000
    %if ($ - %%insn_0040cffc) > 8
        %error "LONG_0040CFFC"
    %endif
    times 8 - ($ - %%insn_0040cffc) db 0
    %%insn_0040d004:
    mov edi,[esp+0x24] ; 0040D004 8B7C2424
    %if ($ - %%insn_0040d004) > 4
        %error "LONG_0040D004"
    %endif
    times 4 - ($ - %%insn_0040d004) db 0
    %%insn_0040d008:
    mov ecx,[ebx+0xc] ; 0040D008 8B4B0C
    %if ($ - %%insn_0040d008) > 3
        %error "LONG_0040D008"
    %endif
    times 3 - ($ - %%insn_0040d008) db 0
    %%insn_0040d00b:
    and ecx,0x108 ; 0040D00B 81E108010000
    %if ($ - %%insn_0040d00b) > 6
        %error "LONG_0040D00B"
    %endif
    times 6 - ($ - %%insn_0040d00b) db 0
    %%insn_0040d011:
    jz short 0x40d050 ; 0040D011 743D
    %if ($ - %%insn_0040d011) > 2
        %error "LONG_0040D011"
    %endif
    times 2 - ($ - %%insn_0040d011) db 0
    %%insn_0040d013:
    mov eax,[ebx+0x4] ; 0040D013 8B4304
    %if ($ - %%insn_0040d013) > 3
        %error "LONG_0040D013"
    %endif
    times 3 - ($ - %%insn_0040d013) db 0
    %%insn_0040d016:
    test eax,eax ; 0040D016 85C0
    %if ($ - %%insn_0040d016) > 2
        %error "LONG_0040D016"
    %endif
    times 2 - ($ - %%insn_0040d016) db 0
    %%insn_0040d018:
    jz short 0x40d050 ; 0040D018 7436
    %if ($ - %%insn_0040d018) > 2
        %error "LONG_0040D018"
    %endif
    times 2 - ($ - %%insn_0040d018) db 0
    db 0x3B, 0xE8 ; 0040D01A 3BE8 | cmp ebp,eax | encoding preserved
    %%insn_0040d01c:
    jnc short 0x40d020 ; 0040D01C 7302
    %if ($ - %%insn_0040d01c) > 2
        %error "LONG_0040D01C"
    %endif
    times 2 - ($ - %%insn_0040d01c) db 0
    db 0x8B, 0xC5 ; 0040D01E 8BC5 | mov eax,ebp | encoding preserved
    %%insn_0040d020:
    mov edi,[ebx] ; 0040D020 8B3B
    %if ($ - %%insn_0040d020) > 2
        %error "LONG_0040D020"
    %endif
    times 2 - ($ - %%insn_0040d020) db 0
    db 0x8B, 0xC8 ; 0040D022 8BC8 | mov ecx,eax | encoding preserved
    db 0x8B, 0xD1 ; 0040D024 8BD1 | mov edx,ecx | encoding preserved
    db 0x2B, 0xE8 ; 0040D026 2BE8 | sub ebp,eax | encoding preserved
    %%insn_0040d028:
    shr ecx,byte 0x2 ; 0040D028 C1E902
    %if ($ - %%insn_0040d028) > 3
        %error "LONG_0040D028"
    %endif
    times 3 - ($ - %%insn_0040d028) db 0
    %%insn_0040d02b:
    rep movsd ; 0040D02B F3A5
    %if ($ - %%insn_0040d02b) > 2
        %error "LONG_0040D02B"
    %endif
    times 2 - ($ - %%insn_0040d02b) db 0
    db 0x8B, 0xCA ; 0040D02D 8BCA | mov ecx,edx | encoding preserved
    %%insn_0040d02f:
    and ecx,0x3 ; 0040D02F 83E103
    %if ($ - %%insn_0040d02f) > 3
        %error "LONG_0040D02F"
    %endif
    times 3 - ($ - %%insn_0040d02f) db 0
    %%insn_0040d032:
    rep movsb ; 0040D032 F3A4
    %if ($ - %%insn_0040d032) > 2
        %error "LONG_0040D032"
    %endif
    times 2 - ($ - %%insn_0040d032) db 0
    %%insn_0040d034:
    mov esi,[ebx+0x4] ; 0040D034 8B7304
    %if ($ - %%insn_0040d034) > 3
        %error "LONG_0040D034"
    %endif
    times 3 - ($ - %%insn_0040d034) db 0
    %%insn_0040d037:
    mov edx,[ebx] ; 0040D037 8B13
    %if ($ - %%insn_0040d037) > 2
        %error "LONG_0040D037"
    %endif
    times 2 - ($ - %%insn_0040d037) db 0
    %%insn_0040d039:
    mov ecx,[esp+0x18] ; 0040D039 8B4C2418
    %if ($ - %%insn_0040d039) > 4
        %error "LONG_0040D039"
    %endif
    times 4 - ($ - %%insn_0040d039) db 0
    db 0x2B, 0xF0 ; 0040D03D 2BF0 | sub esi,eax | encoding preserved
    db 0x03, 0xD0 ; 0040D03F 03D0 | add edx,eax | encoding preserved
    db 0x03, 0xC8 ; 0040D041 03C8 | add ecx,eax | encoding preserved
    %%insn_0040d043:
    mov [ebx+0x4],esi ; 0040D043 897304
    %if ($ - %%insn_0040d043) > 3
        %error "LONG_0040D043"
    %endif
    times 3 - ($ - %%insn_0040d043) db 0
    %%insn_0040d046:
    mov [ebx],edx ; 0040D046 8913
    %if ($ - %%insn_0040d046) > 2
        %error "LONG_0040D046"
    %endif
    times 2 - ($ - %%insn_0040d046) db 0
    %%insn_0040d048:
    mov [esp+0x18],ecx ; 0040D048 894C2418
    %if ($ - %%insn_0040d048) > 4
        %error "LONG_0040D048"
    %endif
    times 4 - ($ - %%insn_0040d048) db 0
    db 0x8B, 0xF1 ; 0040D04C 8BF1 | mov esi,ecx | encoding preserved
    %%insn_0040d04e:
    jmp short 0x40d0c7 ; 0040D04E EB77
    %if ($ - %%insn_0040d04e) > 2
        %error "LONG_0040D04E"
    %endif
    times 2 - ($ - %%insn_0040d04e) db 0
    db 0x3B, 0xEF ; 0040D050 3BEF | cmp ebp,edi | encoding preserved
    %%insn_0040d052:
    jc short 0x40d09c ; 0040D052 7248
    %if ($ - %%insn_0040d052) > 2
        %error "LONG_0040D052"
    %endif
    times 2 - ($ - %%insn_0040d052) db 0
    %%insn_0040d054:
    test ecx,ecx ; 0040D054 85C9
    %if ($ - %%insn_0040d054) > 2
        %error "LONG_0040D054"
    %endif
    times 2 - ($ - %%insn_0040d054) db 0
    %%insn_0040d056:
    jz short 0x40d069 ; 0040D056 7411
    %if ($ - %%insn_0040d056) > 2
        %error "LONG_0040D056"
    %endif
    times 2 - ($ - %%insn_0040d056) db 0
    %%insn_0040d058:
    push ebx ; 0040D058 53
    %if ($ - %%insn_0040d058) > 1
        %error "LONG_0040D058"
    %endif
    times 1 - ($ - %%insn_0040d058) db 0
    %%insn_0040d059:
    call 0x40f8a0 ; 0040D059 E842280000
    %if ($ - %%insn_0040d059) > 5
        %error "LONG_0040D059"
    %endif
    times 5 - ($ - %%insn_0040d059) db 0
    %%insn_0040d05e:
    add esp,0x4 ; 0040D05E 83C404
    %if ($ - %%insn_0040d05e) > 3
        %error "LONG_0040D05E"
    %endif
    times 3 - ($ - %%insn_0040d05e) db 0
    %%insn_0040d061:
    test eax,eax ; 0040D061 85C0
    %if ($ - %%insn_0040d061) > 2
        %error "LONG_0040D061"
    %endif
    times 2 - ($ - %%insn_0040d061) db 0
    %%insn_0040d063:
    jnz 0x40d0f4 ; 0040D063 0F858B000000
    %if ($ - %%insn_0040d063) > 6
        %error "LONG_0040D063"
    %endif
    times 6 - ($ - %%insn_0040d063) db 0
    %%insn_0040d069:
    test edi,edi ; 0040D069 85FF
    %if ($ - %%insn_0040d069) > 2
        %error "LONG_0040D069"
    %endif
    times 2 - ($ - %%insn_0040d069) db 0
    %%insn_0040d06b:
    jz short 0x40d079 ; 0040D06B 740C
    %if ($ - %%insn_0040d06b) > 2
        %error "LONG_0040D06B"
    %endif
    times 2 - ($ - %%insn_0040d06b) db 0
    db 0x8B, 0xC5 ; 0040D06D 8BC5 | mov eax,ebp | encoding preserved
    db 0x33, 0xD2 ; 0040D06F 33D2 | xor edx,edx | encoding preserved
    %%insn_0040d071:
    div edi ; 0040D071 F7F7
    %if ($ - %%insn_0040d071) > 2
        %error "LONG_0040D071"
    %endif
    times 2 - ($ - %%insn_0040d071) db 0
    db 0x8B, 0xFD ; 0040D073 8BFD | mov edi,ebp | encoding preserved
    db 0x2B, 0xFA ; 0040D075 2BFA | sub edi,edx | encoding preserved
    %%insn_0040d077:
    jmp short 0x40d07b ; 0040D077 EB02
    %if ($ - %%insn_0040d077) > 2
        %error "LONG_0040D077"
    %endif
    times 2 - ($ - %%insn_0040d077) db 0
    db 0x8B, 0xFD ; 0040D079 8BFD | mov edi,ebp | encoding preserved
    %%insn_0040d07b:
    mov eax,[ebx+0x10] ; 0040D07B 8B4310
    %if ($ - %%insn_0040d07b) > 3
        %error "LONG_0040D07B"
    %endif
    times 3 - ($ - %%insn_0040d07b) db 0
    %%insn_0040d07e:
    push edi ; 0040D07E 57
    %if ($ - %%insn_0040d07e) > 1
        %error "LONG_0040D07E"
    %endif
    times 1 - ($ - %%insn_0040d07e) db 0
    %%insn_0040d07f:
    push esi ; 0040D07F 56
    %if ($ - %%insn_0040d07f) > 1
        %error "LONG_0040D07F"
    %endif
    times 1 - ($ - %%insn_0040d07f) db 0
    %%insn_0040d080:
    push eax ; 0040D080 50
    %if ($ - %%insn_0040d080) > 1
        %error "LONG_0040D080"
    %endif
    times 1 - ($ - %%insn_0040d080) db 0
    %%insn_0040d081:
    call 0x40f9e0 ; 0040D081 E85A290000
    %if ($ - %%insn_0040d081) > 5
        %error "LONG_0040D081"
    %endif
    times 5 - ($ - %%insn_0040d081) db 0
    %%insn_0040d086:
    add esp,0xc ; 0040D086 83C40C
    %if ($ - %%insn_0040d086) > 3
        %error "LONG_0040D086"
    %endif
    times 3 - ($ - %%insn_0040d086) db 0
    %%insn_0040d089:
    cmp eax,0xffffffffffffffff ; 0040D089 83F8FF
    %if ($ - %%insn_0040d089) > 3
        %error "LONG_0040D089"
    %endif
    times 3 - ($ - %%insn_0040d089) db 0
    %%insn_0040d08c:
    jz short 0x40d0d9 ; 0040D08C 744B
    %if ($ - %%insn_0040d08c) > 2
        %error "LONG_0040D08C"
    %endif
    times 2 - ($ - %%insn_0040d08c) db 0
    db 0x2B, 0xE8 ; 0040D08E 2BE8 | sub ebp,eax | encoding preserved
    db 0x03, 0xF0 ; 0040D090 03F0 | add esi,eax | encoding preserved
    db 0x3B, 0xC7 ; 0040D092 3BC7 | cmp eax,edi | encoding preserved
    %%insn_0040d094:
    mov [esp+0x18],esi ; 0040D094 89742418
    %if ($ - %%insn_0040d094) > 4
        %error "LONG_0040D094"
    %endif
    times 4 - ($ - %%insn_0040d094) db 0
    %%insn_0040d098:
    jc short 0x40d0d9 ; 0040D098 723F
    %if ($ - %%insn_0040d098) > 2
        %error "LONG_0040D098"
    %endif
    times 2 - ($ - %%insn_0040d098) db 0
    %%insn_0040d09a:
    jmp short 0x40d0c7 ; 0040D09A EB2B
    %if ($ - %%insn_0040d09a) > 2
        %error "LONG_0040D09A"
    %endif
    times 2 - ($ - %%insn_0040d09a) db 0
    %%insn_0040d09c:
    movsx ecx,byte [esi] ; 0040D09C 0FBE0E
    %if ($ - %%insn_0040d09c) > 3
        %error "LONG_0040D09C"
    %endif
    times 3 - ($ - %%insn_0040d09c) db 0
    %%insn_0040d09f:
    push ebx ; 0040D09F 53
    %if ($ - %%insn_0040d09f) > 1
        %error "LONG_0040D09F"
    %endif
    times 1 - ($ - %%insn_0040d09f) db 0
    %%insn_0040d0a0:
    push ecx ; 0040D0A0 51
    %if ($ - %%insn_0040d0a0) > 1
        %error "LONG_0040D0A0"
    %endif
    times 1 - ($ - %%insn_0040d0a0) db 0
    %%insn_0040d0a1:
    call 0x40ea90 ; 0040D0A1 E8EA190000
    %if ($ - %%insn_0040d0a1) > 5
        %error "LONG_0040D0A1"
    %endif
    times 5 - ($ - %%insn_0040d0a1) db 0
    %%insn_0040d0a6:
    add esp,0x8 ; 0040D0A6 83C408
    %if ($ - %%insn_0040d0a6) > 3
        %error "LONG_0040D0A6"
    %endif
    times 3 - ($ - %%insn_0040d0a6) db 0
    %%insn_0040d0a9:
    cmp eax,0xffffffffffffffff ; 0040D0A9 83F8FF
    %if ($ - %%insn_0040d0a9) > 3
        %error "LONG_0040D0A9"
    %endif
    times 3 - ($ - %%insn_0040d0a9) db 0
    %%insn_0040d0ac:
    jz short 0x40d0f4 ; 0040D0AC 7446
    %if ($ - %%insn_0040d0ac) > 2
        %error "LONG_0040D0AC"
    %endif
    times 2 - ($ - %%insn_0040d0ac) db 0
    %%insn_0040d0ae:
    mov eax,[ebx+0x18] ; 0040D0AE 8B4318
    %if ($ - %%insn_0040d0ae) > 3
        %error "LONG_0040D0AE"
    %endif
    times 3 - ($ - %%insn_0040d0ae) db 0
    %%insn_0040d0b1:
    inc esi ; 0040D0B1 46
    %if ($ - %%insn_0040d0b1) > 1
        %error "LONG_0040D0B1"
    %endif
    times 1 - ($ - %%insn_0040d0b1) db 0
    %%insn_0040d0b2:
    dec ebp ; 0040D0B2 4D
    %if ($ - %%insn_0040d0b2) > 1
        %error "LONG_0040D0B2"
    %endif
    times 1 - ($ - %%insn_0040d0b2) db 0
    %%insn_0040d0b3:
    mov [esp+0x18],esi ; 0040D0B3 89742418
    %if ($ - %%insn_0040d0b3) > 4
        %error "LONG_0040D0B3"
    %endif
    times 4 - ($ - %%insn_0040d0b3) db 0
    %%insn_0040d0b7:
    test eax,eax ; 0040D0B7 85C0
    %if ($ - %%insn_0040d0b7) > 2
        %error "LONG_0040D0B7"
    %endif
    times 2 - ($ - %%insn_0040d0b7) db 0
    %%insn_0040d0b9:
    mov [esp+0x24],eax ; 0040D0B9 89442424
    %if ($ - %%insn_0040d0b9) > 4
        %error "LONG_0040D0B9"
    %endif
    times 4 - ($ - %%insn_0040d0b9) db 0
    %%insn_0040d0bd:
    jg short 0x40d0c7 ; 0040D0BD 7F08
    %if ($ - %%insn_0040d0bd) > 2
        %error "LONG_0040D0BD"
    %endif
    times 2 - ($ - %%insn_0040d0bd) db 0
    %%insn_0040d0bf:
    mov dword [esp+0x24],0x1 ; 0040D0BF C744242401000000
    %if ($ - %%insn_0040d0bf) > 8
        %error "LONG_0040D0BF"
    %endif
    times 8 - ($ - %%insn_0040d0bf) db 0
    %%insn_0040d0c7:
    test ebp,ebp ; 0040D0C7 85ED
    %if ($ - %%insn_0040d0c7) > 2
        %error "LONG_0040D0C7"
    %endif
    times 2 - ($ - %%insn_0040d0c7) db 0
    %%insn_0040d0c9:
    jnz 0x40d004 ; 0040D0C9 0F8535FFFFFF
    %if ($ - %%insn_0040d0c9) > 6
        %error "LONG_0040D0C9"
    %endif
    times 6 - ($ - %%insn_0040d0c9) db 0
    %%insn_0040d0cf:
    mov eax,[esp+0x20] ; 0040D0CF 8B442420
    %if ($ - %%insn_0040d0cf) > 4
        %error "LONG_0040D0CF"
    %endif
    times 4 - ($ - %%insn_0040d0cf) db 0
    %%insn_0040d0d3:
    pop edi ; 0040D0D3 5F
    %if ($ - %%insn_0040d0d3) > 1
        %error "LONG_0040D0D3"
    %endif
    times 1 - ($ - %%insn_0040d0d3) db 0
    %%insn_0040d0d4:
    pop esi ; 0040D0D4 5E
    %if ($ - %%insn_0040d0d4) > 1
        %error "LONG_0040D0D4"
    %endif
    times 1 - ($ - %%insn_0040d0d4) db 0
    %%insn_0040d0d5:
    pop ebp ; 0040D0D5 5D
    %if ($ - %%insn_0040d0d5) > 1
        %error "LONG_0040D0D5"
    %endif
    times 1 - ($ - %%insn_0040d0d5) db 0
    %%insn_0040d0d6:
    pop ebx ; 0040D0D6 5B
    %if ($ - %%insn_0040d0d6) > 1
        %error "LONG_0040D0D6"
    %endif
    times 1 - ($ - %%insn_0040d0d6) db 0
    %%insn_0040d0d7:
    pop ecx ; 0040D0D7 59
    %if ($ - %%insn_0040d0d7) > 1
        %error "LONG_0040D0D7"
    %endif
    times 1 - ($ - %%insn_0040d0d7) db 0
    %%insn_0040d0d8:
    ret ; 0040D0D8 C3
    %if ($ - %%insn_0040d0d8) > 1
        %error "LONG_0040D0D8"
    %endif
    times 1 - ($ - %%insn_0040d0d8) db 0
    %%insn_0040d0d9:
    mov edx,[ebx+0xc] ; 0040D0D9 8B530C
    %if ($ - %%insn_0040d0d9) > 3
        %error "LONG_0040D0D9"
    %endif
    times 3 - ($ - %%insn_0040d0d9) db 0
    %%insn_0040d0dc:
    mov eax,[esp+0x10] ; 0040D0DC 8B442410
    %if ($ - %%insn_0040d0dc) > 4
        %error "LONG_0040D0DC"
    %endif
    times 4 - ($ - %%insn_0040d0dc) db 0
    %%insn_0040d0e0:
    or edx,0x20 ; 0040D0E0 83CA20
    %if ($ - %%insn_0040d0e0) > 3
        %error "LONG_0040D0E0"
    %endif
    times 3 - ($ - %%insn_0040d0e0) db 0
    db 0x2B, 0xC5 ; 0040D0E3 2BC5 | sub eax,ebp | encoding preserved
    %%insn_0040d0e5:
    mov [ebx+0xc],edx ; 0040D0E5 89530C
    %if ($ - %%insn_0040d0e5) > 3
        %error "LONG_0040D0E5"
    %endif
    times 3 - ($ - %%insn_0040d0e5) db 0
    db 0x33, 0xD2 ; 0040D0E8 33D2 | xor edx,edx | encoding preserved
    %%insn_0040d0ea:
    div dword [esp+0x1c] ; 0040D0EA F774241C
    %if ($ - %%insn_0040d0ea) > 4
        %error "LONG_0040D0EA"
    %endif
    times 4 - ($ - %%insn_0040d0ea) db 0
    %%insn_0040d0ee:
    pop edi ; 0040D0EE 5F
    %if ($ - %%insn_0040d0ee) > 1
        %error "LONG_0040D0EE"
    %endif
    times 1 - ($ - %%insn_0040d0ee) db 0
    %%insn_0040d0ef:
    pop esi ; 0040D0EF 5E
    %if ($ - %%insn_0040d0ef) > 1
        %error "LONG_0040D0EF"
    %endif
    times 1 - ($ - %%insn_0040d0ef) db 0
    %%insn_0040d0f0:
    pop ebp ; 0040D0F0 5D
    %if ($ - %%insn_0040d0f0) > 1
        %error "LONG_0040D0F0"
    %endif
    times 1 - ($ - %%insn_0040d0f0) db 0
    %%insn_0040d0f1:
    pop ebx ; 0040D0F1 5B
    %if ($ - %%insn_0040d0f1) > 1
        %error "LONG_0040D0F1"
    %endif
    times 1 - ($ - %%insn_0040d0f1) db 0
    %%insn_0040d0f2:
    pop ecx ; 0040D0F2 59
    %if ($ - %%insn_0040d0f2) > 1
        %error "LONG_0040D0F2"
    %endif
    times 1 - ($ - %%insn_0040d0f2) db 0
    %%insn_0040d0f3:
    ret ; 0040D0F3 C3
    %if ($ - %%insn_0040d0f3) > 1
        %error "LONG_0040D0F3"
    %endif
    times 1 - ($ - %%insn_0040d0f3) db 0
    %%insn_0040d0f4:
    mov eax,[esp+0x10] ; 0040D0F4 8B442410
    %if ($ - %%insn_0040d0f4) > 4
        %error "LONG_0040D0F4"
    %endif
    times 4 - ($ - %%insn_0040d0f4) db 0
    db 0x33, 0xD2 ; 0040D0F8 33D2 | xor edx,edx | encoding preserved
    db 0x2B, 0xC5 ; 0040D0FA 2BC5 | sub eax,ebp | encoding preserved
    %%insn_0040d0fc:
    div dword [esp+0x1c] ; 0040D0FC F774241C
    %if ($ - %%insn_0040d0fc) > 4
        %error "LONG_0040D0FC"
    %endif
    times 4 - ($ - %%insn_0040d0fc) db 0
    %%insn_0040d100:
    pop edi ; 0040D100 5F
    %if ($ - %%insn_0040d100) > 1
        %error "LONG_0040D100"
    %endif
    times 1 - ($ - %%insn_0040d100) db 0
    %%insn_0040d101:
    pop esi ; 0040D101 5E
    %if ($ - %%insn_0040d101) > 1
        %error "LONG_0040D101"
    %endif
    times 1 - ($ - %%insn_0040d101) db 0
    %%insn_0040d102:
    pop ebp ; 0040D102 5D
    %if ($ - %%insn_0040d102) > 1
        %error "LONG_0040D102"
    %endif
    times 1 - ($ - %%insn_0040d102) db 0
    %%insn_0040d103:
    pop ebx ; 0040D103 5B
    %if ($ - %%insn_0040d103) > 1
        %error "LONG_0040D103"
    %endif
    times 1 - ($ - %%insn_0040d103) db 0
    %%insn_0040d104:
    pop ecx ; 0040D104 59
    %if ($ - %%insn_0040d104) > 1
        %error "LONG_0040D104"
    %endif
    times 1 - ($ - %%insn_0040d104) db 0
    %%insn_0040d105:
    ret ; 0040D105 C3
    %if ($ - %%insn_0040d105) > 1
        %error "LONG_0040D105"
    %endif
    times 1 - ($ - %%insn_0040d105) db 0
    %if ($ - %%fragment_start) != 326
        %error "function fragment size drift: 0040CFC0"
    %endif
%endmacro
