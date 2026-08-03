; PE virtual entry 0040BFF4
; Ghidra working symbol: FUN_0040bff4
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040bff4_part_00 0
    %%fragment_start:
func_0040bff4:
    %%insn_0040bff4:
    push ebp ; 0040BFF4 55
    %if ($ - %%insn_0040bff4) > 1
        %error "LONG_0040BFF4"
    %endif
    times 1 - ($ - %%insn_0040bff4) db 0
    db 0x8B, 0xEC ; 0040BFF5 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040bff7:
    sub esp,0x10 ; 0040BFF7 83EC10
    %if ($ - %%insn_0040bff7) > 3
        %error "LONG_0040BFF7"
    %endif
    times 3 - ($ - %%insn_0040bff7) db 0
    %%insn_0040bffa:
    mov dword [ebp-0xc],0x0 ; 0040BFFA C745F400000000
    %if ($ - %%insn_0040bffa) > 7
        %error "LONG_0040BFFA"
    %endif
    times 7 - ($ - %%insn_0040bffa) db 0
    %%insn_0040c001:
    jmp short 0x40c00c ; 0040C001 EB09
    %if ($ - %%insn_0040c001) > 2
        %error "LONG_0040C001"
    %endif
    times 2 - ($ - %%insn_0040c001) db 0
    %%insn_0040c003:
    mov eax,[ebp-0xc] ; 0040C003 8B45F4
    %if ($ - %%insn_0040c003) > 3
        %error "LONG_0040C003"
    %endif
    times 3 - ($ - %%insn_0040c003) db 0
    %%insn_0040c006:
    add eax,0x1 ; 0040C006 83C001
    %if ($ - %%insn_0040c006) > 3
        %error "LONG_0040C006"
    %endif
    times 3 - ($ - %%insn_0040c006) db 0
    %%insn_0040c009:
    mov [ebp-0xc],eax ; 0040C009 8945F4
    %if ($ - %%insn_0040c009) > 3
        %error "LONG_0040C009"
    %endif
    times 3 - ($ - %%insn_0040c009) db 0
    %%insn_0040c00c:
    cmp dword [ebp-0xc],0x100 ; 0040C00C 817DF400010000
    %if ($ - %%insn_0040c00c) > 7
        %error "LONG_0040C00C"
    %endif
    times 7 - ($ - %%insn_0040c00c) db 0
    %%insn_0040c013:
    jnc short 0x40c039 ; 0040C013 7324
    %if ($ - %%insn_0040c013) > 2
        %error "LONG_0040C013"
    %endif
    times 2 - ($ - %%insn_0040c013) db 0
    %%insn_0040c015:
    mov ecx,[ebp-0xc] ; 0040C015 8B4DF4
    %if ($ - %%insn_0040c015) > 3
        %error "LONG_0040C015"
    %endif
    times 3 - ($ - %%insn_0040c015) db 0
    %%insn_0040c018:
    shl ecx,byte 0x18 ; 0040C018 C1E118
    %if ($ - %%insn_0040c018) > 3
        %error "LONG_0040C018"
    %endif
    times 3 - ($ - %%insn_0040c018) db 0
    %%insn_0040c01b:
    mov edx,[ebp-0xc] ; 0040C01B 8B55F4
    %if ($ - %%insn_0040c01b) > 3
        %error "LONG_0040C01B"
    %endif
    times 3 - ($ - %%insn_0040c01b) db 0
    %%insn_0040c01e:
    shl edx,byte 0x10 ; 0040C01E C1E210
    %if ($ - %%insn_0040c01e) > 3
        %error "LONG_0040C01E"
    %endif
    times 3 - ($ - %%insn_0040c01e) db 0
    db 0x0B, 0xCA ; 0040C021 0BCA | or ecx,edx | encoding preserved
    %%insn_0040c023:
    mov eax,[ebp-0xc] ; 0040C023 8B45F4
    %if ($ - %%insn_0040c023) > 3
        %error "LONG_0040C023"
    %endif
    times 3 - ($ - %%insn_0040c023) db 0
    %%insn_0040c026:
    shl eax,byte 0x8 ; 0040C026 C1E008
    %if ($ - %%insn_0040c026) > 3
        %error "LONG_0040C026"
    %endif
    times 3 - ($ - %%insn_0040c026) db 0
    db 0x0B, 0xC8 ; 0040C029 0BC8 | or ecx,eax | encoding preserved
    %%insn_0040c02b:
    or ecx,[ebp-0xc] ; 0040C02B 0B4DF4
    %if ($ - %%insn_0040c02b) > 3
        %error "LONG_0040C02B"
    %endif
    times 3 - ($ - %%insn_0040c02b) db 0
    %%insn_0040c02e:
    mov edx,[ebp-0xc] ; 0040C02E 8B55F4
    %if ($ - %%insn_0040c02e) > 3
        %error "LONG_0040C02E"
    %endif
    times 3 - ($ - %%insn_0040c02e) db 0
    %%insn_0040c031:
    mov eax,[ebp+0x8] ; 0040C031 8B4508
    %if ($ - %%insn_0040c031) > 3
        %error "LONG_0040C031"
    %endif
    times 3 - ($ - %%insn_0040c031) db 0
    %%insn_0040c034:
    mov [eax+edx*4],ecx ; 0040C034 890C90
    %if ($ - %%insn_0040c034) > 3
        %error "LONG_0040C034"
    %endif
    times 3 - ($ - %%insn_0040c034) db 0
    %%insn_0040c037:
    jmp short 0x40c003 ; 0040C037 EBCA
    %if ($ - %%insn_0040c037) > 2
        %error "LONG_0040C037"
    %endif
    times 2 - ($ - %%insn_0040c037) db 0
    %%insn_0040c039:
    mov ecx,[ebp+0x8] ; 0040C039 8B4D08
    %if ($ - %%insn_0040c039) > 3
        %error "LONG_0040C039"
    %endif
    times 3 - ($ - %%insn_0040c039) db 0
    %%insn_0040c03c:
    add ecx,0x400 ; 0040C03C 81C100040000
    %if ($ - %%insn_0040c03c) > 6
        %error "LONG_0040C03C"
    %endif
    times 6 - ($ - %%insn_0040c03c) db 0
    %%insn_0040c042:
    mov [ebp-0x4],ecx ; 0040C042 894DFC
    %if ($ - %%insn_0040c042) > 3
        %error "LONG_0040C042"
    %endif
    times 3 - ($ - %%insn_0040c042) db 0
    %%insn_0040c045:
    mov dword [ebp-0x8],0x0 ; 0040C045 C745F800000000
    %if ($ - %%insn_0040c045) > 7
        %error "LONG_0040C045"
    %endif
    times 7 - ($ - %%insn_0040c045) db 0
    %%insn_0040c04c:
    jmp short 0x40c057 ; 0040C04C EB09
    %if ($ - %%insn_0040c04c) > 2
        %error "LONG_0040C04C"
    %endif
    times 2 - ($ - %%insn_0040c04c) db 0
    %%insn_0040c04e:
    mov edx,[ebp-0x8] ; 0040C04E 8B55F8
    %if ($ - %%insn_0040c04e) > 3
        %error "LONG_0040C04E"
    %endif
    times 3 - ($ - %%insn_0040c04e) db 0
    %%insn_0040c051:
    add edx,0x1 ; 0040C051 83C201
    %if ($ - %%insn_0040c051) > 3
        %error "LONG_0040C051"
    %endif
    times 3 - ($ - %%insn_0040c051) db 0
    %%insn_0040c054:
    mov [ebp-0x8],edx ; 0040C054 8955F8
    %if ($ - %%insn_0040c054) > 3
        %error "LONG_0040C054"
    %endif
    times 3 - ($ - %%insn_0040c054) db 0
    %%insn_0040c057:
    cmp dword [ebp-0x8],0x8000 ; 0040C057 817DF800800000
    %if ($ - %%insn_0040c057) > 7
        %error "LONG_0040C057"
    %endif
    times 7 - ($ - %%insn_0040c057) db 0
    %%insn_0040c05e:
    jnc short 0x40c0b7 ; 0040C05E 7357
    %if ($ - %%insn_0040c05e) > 2
        %error "LONG_0040C05E"
    %endif
    times 2 - ($ - %%insn_0040c05e) db 0
    %%insn_0040c060:
    mov eax,[ebp-0x8] ; 0040C060 8B45F8
    %if ($ - %%insn_0040c060) > 3
        %error "LONG_0040C060"
    %endif
    times 3 - ($ - %%insn_0040c060) db 0
    %%insn_0040c063:
    mov [ebp-0x10],eax ; 0040C063 8945F0
    %if ($ - %%insn_0040c063) > 3
        %error "LONG_0040C063"
    %endif
    times 3 - ($ - %%insn_0040c063) db 0
    %%insn_0040c066:
    mov dword [ebp-0xc],0x0 ; 0040C066 C745F400000000
    %if ($ - %%insn_0040c066) > 7
        %error "LONG_0040C066"
    %endif
    times 7 - ($ - %%insn_0040c066) db 0
    %%insn_0040c06d:
    jmp short 0x40c078 ; 0040C06D EB09
    %if ($ - %%insn_0040c06d) > 2
        %error "LONG_0040C06D"
    %endif
    times 2 - ($ - %%insn_0040c06d) db 0
    %%insn_0040c06f:
    mov ecx,[ebp-0xc] ; 0040C06F 8B4DF4
    %if ($ - %%insn_0040c06f) > 3
        %error "LONG_0040C06F"
    %endif
    times 3 - ($ - %%insn_0040c06f) db 0
    %%insn_0040c072:
    add ecx,0x1 ; 0040C072 83C101
    %if ($ - %%insn_0040c072) > 3
        %error "LONG_0040C072"
    %endif
    times 3 - ($ - %%insn_0040c072) db 0
    %%insn_0040c075:
    mov [ebp-0xc],ecx ; 0040C075 894DF4
    %if ($ - %%insn_0040c075) > 3
        %error "LONG_0040C075"
    %endif
    times 3 - ($ - %%insn_0040c075) db 0
    %%insn_0040c078:
    cmp dword [ebp-0xc],0x10 ; 0040C078 837DF410
    %if ($ - %%insn_0040c078) > 4
        %error "LONG_0040C078"
    %endif
    times 4 - ($ - %%insn_0040c078) db 0
    %%insn_0040c07c:
    jnc short 0x40c0b5 ; 0040C07C 7337
    %if ($ - %%insn_0040c07c) > 2
        %error "LONG_0040C07C"
    %endif
    times 2 - ($ - %%insn_0040c07c) db 0
    %%insn_0040c07e:
    mov edx,[ebp-0x10] ; 0040C07E 8B55F0
    %if ($ - %%insn_0040c07e) > 3
        %error "LONG_0040C07E"
    %endif
    times 3 - ($ - %%insn_0040c07e) db 0
    %%insn_0040c081:
    and edx,0x8000 ; 0040C081 81E200800000
    %if ($ - %%insn_0040c081) > 6
        %error "LONG_0040C081"
    %endif
    times 6 - ($ - %%insn_0040c081) db 0
    %%insn_0040c087:
    test edx,edx ; 0040C087 85D2
    %if ($ - %%insn_0040c087) > 2
        %error "LONG_0040C087"
    %endif
    times 2 - ($ - %%insn_0040c087) db 0
    %%insn_0040c089:
    jz short 0x40c09c ; 0040C089 7411
    %if ($ - %%insn_0040c089) > 2
        %error "LONG_0040C089"
    %endif
    times 2 - ($ - %%insn_0040c089) db 0
    %%insn_0040c08b:
    mov eax,[ebp-0x4] ; 0040C08B 8B45FC
    %if ($ - %%insn_0040c08b) > 3
        %error "LONG_0040C08B"
    %endif
    times 3 - ($ - %%insn_0040c08b) db 0
    %%insn_0040c08e:
    mov byte [eax],0x0 ; 0040C08E C60000
    %if ($ - %%insn_0040c08e) > 3
        %error "LONG_0040C08E"
    %endif
    times 3 - ($ - %%insn_0040c08e) db 0
    %%insn_0040c091:
    mov ecx,[ebp-0x4] ; 0040C091 8B4DFC
    %if ($ - %%insn_0040c091) > 3
        %error "LONG_0040C091"
    %endif
    times 3 - ($ - %%insn_0040c091) db 0
    %%insn_0040c094:
    add ecx,0x1 ; 0040C094 83C101
    %if ($ - %%insn_0040c094) > 3
        %error "LONG_0040C094"
    %endif
    times 3 - ($ - %%insn_0040c094) db 0
    %%insn_0040c097:
    mov [ebp-0x4],ecx ; 0040C097 894DFC
    %if ($ - %%insn_0040c097) > 3
        %error "LONG_0040C097"
    %endif
    times 3 - ($ - %%insn_0040c097) db 0
    %%insn_0040c09a:
    jmp short 0x40c0ab ; 0040C09A EB0F
    %if ($ - %%insn_0040c09a) > 2
        %error "LONG_0040C09A"
    %endif
    times 2 - ($ - %%insn_0040c09a) db 0
    %%insn_0040c09c:
    mov edx,[ebp-0x4] ; 0040C09C 8B55FC
    %if ($ - %%insn_0040c09c) > 3
        %error "LONG_0040C09C"
    %endif
    times 3 - ($ - %%insn_0040c09c) db 0
    %%insn_0040c09f:
    mov byte [edx],0xff ; 0040C09F C602FF
    %if ($ - %%insn_0040c09f) > 3
        %error "LONG_0040C09F"
    %endif
    times 3 - ($ - %%insn_0040c09f) db 0
    %%insn_0040c0a2:
    mov eax,[ebp-0x4] ; 0040C0A2 8B45FC
    %if ($ - %%insn_0040c0a2) > 3
        %error "LONG_0040C0A2"
    %endif
    times 3 - ($ - %%insn_0040c0a2) db 0
    %%insn_0040c0a5:
    add eax,0x1 ; 0040C0A5 83C001
    %if ($ - %%insn_0040c0a5) > 3
        %error "LONG_0040C0A5"
    %endif
    times 3 - ($ - %%insn_0040c0a5) db 0
    %%insn_0040c0a8:
    mov [ebp-0x4],eax ; 0040C0A8 8945FC
    %if ($ - %%insn_0040c0a8) > 3
        %error "LONG_0040C0A8"
    %endif
    times 3 - ($ - %%insn_0040c0a8) db 0
    %%insn_0040c0ab:
    mov ecx,[ebp-0x10] ; 0040C0AB 8B4DF0
    %if ($ - %%insn_0040c0ab) > 3
        %error "LONG_0040C0AB"
    %endif
    times 3 - ($ - %%insn_0040c0ab) db 0
    %%insn_0040c0ae:
    shl ecx,1 ; 0040C0AE D1E1
    %if ($ - %%insn_0040c0ae) > 2
        %error "LONG_0040C0AE"
    %endif
    times 2 - ($ - %%insn_0040c0ae) db 0
    %%insn_0040c0b0:
    mov [ebp-0x10],ecx ; 0040C0B0 894DF0
    %if ($ - %%insn_0040c0b0) > 3
        %error "LONG_0040C0B0"
    %endif
    times 3 - ($ - %%insn_0040c0b0) db 0
    %%insn_0040c0b3:
    jmp short 0x40c06f ; 0040C0B3 EBBA
    %if ($ - %%insn_0040c0b3) > 2
        %error "LONG_0040C0B3"
    %endif
    times 2 - ($ - %%insn_0040c0b3) db 0
    %%insn_0040c0b5:
    jmp short 0x40c04e ; 0040C0B5 EB97
    %if ($ - %%insn_0040c0b5) > 2
        %error "LONG_0040C0B5"
    %endif
    times 2 - ($ - %%insn_0040c0b5) db 0
    db 0x8B, 0xE5 ; 0040C0B7 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040c0b9:
    pop ebp ; 0040C0B9 5D
    %if ($ - %%insn_0040c0b9) > 1
        %error "LONG_0040C0B9"
    %endif
    times 1 - ($ - %%insn_0040c0b9) db 0
    %%insn_0040c0ba:
    ret ; 0040C0BA C3
    %if ($ - %%insn_0040c0ba) > 1
        %error "LONG_0040C0BA"
    %endif
    times 1 - ($ - %%insn_0040c0ba) db 0
    %if ($ - %%fragment_start) != 199
        %error "function fragment size drift: 0040BFF4"
    %endif
%endmacro
