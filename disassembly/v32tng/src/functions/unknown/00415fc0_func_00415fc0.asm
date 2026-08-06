; PE virtual entry 00415FC0
; Ghidra working symbol: FUN_00415fc0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00415fc0_part_00 0
    %%fragment_start:
func_00415fc0:
    %%insn_00415fc0:
    movsx eax,byte [esp+0x4] ; 00415FC0 0FBE442404
    %if ($ - %%insn_00415fc0) > 5
        %error "LONG_00415FC0"
    %endif
    times 5 - ($ - %%insn_00415fc0) db 0
    %%insn_00415fc5:
    push ebx ; 00415FC5 53
    %if ($ - %%insn_00415fc5) > 1
        %error "LONG_00415FC5"
    %endif
    times 1 - ($ - %%insn_00415fc5) db 0
    %%insn_00415fc6:
    add eax,0xffffffffffffffdb ; 00415FC6 83C0DB
    %if ($ - %%insn_00415fc6) > 3
        %error "LONG_00415FC6"
    %endif
    times 3 - ($ - %%insn_00415fc6) db 0
    %%insn_00415fc9:
    push ebp ; 00415FC9 55
    %if ($ - %%insn_00415fc9) > 1
        %error "LONG_00415FC9"
    %endif
    times 1 - ($ - %%insn_00415fc9) db 0
    %%insn_00415fca:
    push esi ; 00415FCA 56
    %if ($ - %%insn_00415fca) > 1
        %error "LONG_00415FCA"
    %endif
    times 1 - ($ - %%insn_00415fca) db 0
    %%insn_00415fcb:
    cmp eax,0x55 ; 00415FCB 83F855
    %if ($ - %%insn_00415fcb) > 3
        %error "LONG_00415FCB"
    %endif
    times 3 - ($ - %%insn_00415fcb) db 0
    %%insn_00415fce:
    push edi ; 00415FCE 57
    %if ($ - %%insn_00415fce) > 1
        %error "LONG_00415FCE"
    %endif
    times 1 - ($ - %%insn_00415fce) db 0
    %%insn_00415fcf:
    ja 0x4164a1 ; 00415FCF 0F87CC040000
    %if ($ - %%insn_00415fcf) > 6
        %error "LONG_00415FCF"
    %endif
    times 6 - ($ - %%insn_00415fcf) db 0
    db 0x33, 0xC9 ; 00415FD5 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00415fd7:
    mov cl,[eax+0x416508] ; 00415FD7 8A8808654100
    %if ($ - %%insn_00415fd7) > 6
        %error "LONG_00415FD7"
    %endif
    times 6 - ($ - %%insn_00415fd7) db 0
    %%insn_00415fdd:
    jmp dword near [ecx*4+0x4164a8] ; 00415FDD FF248DA8644100
    %if ($ - %%insn_00415fdd) > 7
        %error "LONG_00415FDD"
    %endif
    times 7 - ($ - %%insn_00415fdd) db 0
    %%insn_00415fe4:
    mov edx,[esp+0x20] ; 00415FE4 8B542420
    %if ($ - %%insn_00415fe4) > 4
        %error "LONG_00415FE4"
    %endif
    times 4 - ($ - %%insn_00415fe4) db 0
    %%insn_00415fe8:
    mov eax,[esp+0x1c] ; 00415FE8 8B44241C
    %if ($ - %%insn_00415fe8) > 4
        %error "LONG_00415FE8"
    %endif
    times 4 - ($ - %%insn_00415fe8) db 0
    %%insn_00415fec:
    mov ecx,[esp+0x18] ; 00415FEC 8B4C2418
    %if ($ - %%insn_00415fec) > 4
        %error "LONG_00415FEC"
    %endif
    times 4 - ($ - %%insn_00415fec) db 0
    %%insn_00415ff0:
    push edx ; 00415FF0 52
    %if ($ - %%insn_00415ff0) > 1
        %error "LONG_00415FF0"
    %endif
    times 1 - ($ - %%insn_00415ff0) db 0
    %%insn_00415ff1:
    push eax ; 00415FF1 50
    %if ($ - %%insn_00415ff1) > 1
        %error "LONG_00415FF1"
    %endif
    times 1 - ($ - %%insn_00415ff1) db 0
    %%insn_00415ff2:
    mov eax,[esp+0x2c] ; 00415FF2 8B44242C
    %if ($ - %%insn_00415ff2) > 4
        %error "LONG_00415FF2"
    %endif
    times 4 - ($ - %%insn_00415ff2) db 0
    %%insn_00415ff6:
    mov edx,[ecx+0x18] ; 00415FF6 8B5118
    %if ($ - %%insn_00415ff6) > 3
        %error "LONG_00415FF6"
    %endif
    times 3 - ($ - %%insn_00415ff6) db 0
    %%insn_00415ff9:
    mov ecx,[eax+edx*4] ; 00415FF9 8B0C90
    %if ($ - %%insn_00415ff9) > 3
        %error "LONG_00415FF9"
    %endif
    times 3 - ($ - %%insn_00415ff9) db 0
    %%insn_00415ffc:
    push ecx ; 00415FFC 51
    %if ($ - %%insn_00415ffc) > 1
        %error "LONG_00415FFC"
    %endif
    times 1 - ($ - %%insn_00415ffc) db 0
    %%insn_00415ffd:
    call 0x416560 ; 00415FFD E85E050000
    %if ($ - %%insn_00415ffd) > 5
        %error "LONG_00415FFD"
    %endif
    times 5 - ($ - %%insn_00415ffd) db 0
    %%insn_00416002:
    add esp,0xc ; 00416002 83C40C
    %if ($ - %%insn_00416002) > 3
        %error "LONG_00416002"
    %endif
    times 3 - ($ - %%insn_00416002) db 0
    %%insn_00416005:
    pop edi ; 00416005 5F
    %if ($ - %%insn_00416005) > 1
        %error "LONG_00416005"
    %endif
    times 1 - ($ - %%insn_00416005) db 0
    %%insn_00416006:
    pop esi ; 00416006 5E
    %if ($ - %%insn_00416006) > 1
        %error "LONG_00416006"
    %endif
    times 1 - ($ - %%insn_00416006) db 0
    %%insn_00416007:
    pop ebp ; 00416007 5D
    %if ($ - %%insn_00416007) > 1
        %error "LONG_00416007"
    %endif
    times 1 - ($ - %%insn_00416007) db 0
    %%insn_00416008:
    pop ebx ; 00416008 5B
    %if ($ - %%insn_00416008) > 1
        %error "LONG_00416008"
    %endif
    times 1 - ($ - %%insn_00416008) db 0
    %%insn_00416009:
    ret ; 00416009 C3
    %if ($ - %%insn_00416009) > 1
        %error "LONG_00416009"
    %endif
    times 1 - ($ - %%insn_00416009) db 0
    %%insn_0041600a:
    mov edx,[esp+0x20] ; 0041600A 8B542420
    %if ($ - %%insn_0041600a) > 4
        %error "LONG_0041600A"
    %endif
    times 4 - ($ - %%insn_0041600a) db 0
    %%insn_0041600e:
    mov eax,[esp+0x1c] ; 0041600E 8B44241C
    %if ($ - %%insn_0041600e) > 4
        %error "LONG_0041600E"
    %endif
    times 4 - ($ - %%insn_0041600e) db 0
    %%insn_00416012:
    mov ecx,[esp+0x18] ; 00416012 8B4C2418
    %if ($ - %%insn_00416012) > 4
        %error "LONG_00416012"
    %endif
    times 4 - ($ - %%insn_00416012) db 0
    %%insn_00416016:
    push edx ; 00416016 52
    %if ($ - %%insn_00416016) > 1
        %error "LONG_00416016"
    %endif
    times 1 - ($ - %%insn_00416016) db 0
    %%insn_00416017:
    push eax ; 00416017 50
    %if ($ - %%insn_00416017) > 1
        %error "LONG_00416017"
    %endif
    times 1 - ($ - %%insn_00416017) db 0
    %%insn_00416018:
    mov eax,[esp+0x2c] ; 00416018 8B44242C
    %if ($ - %%insn_00416018) > 4
        %error "LONG_00416018"
    %endif
    times 4 - ($ - %%insn_00416018) db 0
    %%insn_0041601c:
    mov edx,[ecx+0x18] ; 0041601C 8B5118
    %if ($ - %%insn_0041601c) > 3
        %error "LONG_0041601C"
    %endif
    times 3 - ($ - %%insn_0041601c) db 0
    %%insn_0041601f:
    mov ecx,[eax+edx*4+0x1c] ; 0041601F 8B4C901C
    %if ($ - %%insn_0041601f) > 4
        %error "LONG_0041601F"
    %endif
    times 4 - ($ - %%insn_0041601f) db 0
    %%insn_00416023:
    push ecx ; 00416023 51
    %if ($ - %%insn_00416023) > 1
        %error "LONG_00416023"
    %endif
    times 1 - ($ - %%insn_00416023) db 0
    %%insn_00416024:
    call 0x416560 ; 00416024 E837050000
    %if ($ - %%insn_00416024) > 5
        %error "LONG_00416024"
    %endif
    times 5 - ($ - %%insn_00416024) db 0
    %%insn_00416029:
    add esp,0xc ; 00416029 83C40C
    %if ($ - %%insn_00416029) > 3
        %error "LONG_00416029"
    %endif
    times 3 - ($ - %%insn_00416029) db 0
    %%insn_0041602c:
    pop edi ; 0041602C 5F
    %if ($ - %%insn_0041602c) > 1
        %error "LONG_0041602C"
    %endif
    times 1 - ($ - %%insn_0041602c) db 0
    %%insn_0041602d:
    pop esi ; 0041602D 5E
    %if ($ - %%insn_0041602d) > 1
        %error "LONG_0041602D"
    %endif
    times 1 - ($ - %%insn_0041602d) db 0
    %%insn_0041602e:
    pop ebp ; 0041602E 5D
    %if ($ - %%insn_0041602e) > 1
        %error "LONG_0041602E"
    %endif
    times 1 - ($ - %%insn_0041602e) db 0
    %%insn_0041602f:
    pop ebx ; 0041602F 5B
    %if ($ - %%insn_0041602f) > 1
        %error "LONG_0041602F"
    %endif
    times 1 - ($ - %%insn_0041602f) db 0
    %%insn_00416030:
    ret ; 00416030 C3
    %if ($ - %%insn_00416030) > 1
        %error "LONG_00416030"
    %endif
    times 1 - ($ - %%insn_00416030) db 0
    %%insn_00416031:
    mov edx,[esp+0x20] ; 00416031 8B542420
    %if ($ - %%insn_00416031) > 4
        %error "LONG_00416031"
    %endif
    times 4 - ($ - %%insn_00416031) db 0
    %%insn_00416035:
    mov eax,[esp+0x1c] ; 00416035 8B44241C
    %if ($ - %%insn_00416035) > 4
        %error "LONG_00416035"
    %endif
    times 4 - ($ - %%insn_00416035) db 0
    %%insn_00416039:
    mov ecx,[esp+0x18] ; 00416039 8B4C2418
    %if ($ - %%insn_00416039) > 4
        %error "LONG_00416039"
    %endif
    times 4 - ($ - %%insn_00416039) db 0
    %%insn_0041603d:
    push edx ; 0041603D 52
    %if ($ - %%insn_0041603d) > 1
        %error "LONG_0041603D"
    %endif
    times 1 - ($ - %%insn_0041603d) db 0
    %%insn_0041603e:
    push eax ; 0041603E 50
    %if ($ - %%insn_0041603e) > 1
        %error "LONG_0041603E"
    %endif
    times 1 - ($ - %%insn_0041603e) db 0
    %%insn_0041603f:
    mov eax,[esp+0x2c] ; 0041603F 8B44242C
    %if ($ - %%insn_0041603f) > 4
        %error "LONG_0041603F"
    %endif
    times 4 - ($ - %%insn_0041603f) db 0
    %%insn_00416043:
    mov edx,[ecx+0x10] ; 00416043 8B5110
    %if ($ - %%insn_00416043) > 3
        %error "LONG_00416043"
    %endif
    times 3 - ($ - %%insn_00416043) db 0
    %%insn_00416046:
    mov ecx,[eax+edx*4+0x38] ; 00416046 8B4C9038
    %if ($ - %%insn_00416046) > 4
        %error "LONG_00416046"
    %endif
    times 4 - ($ - %%insn_00416046) db 0
    %%insn_0041604a:
    push ecx ; 0041604A 51
    %if ($ - %%insn_0041604a) > 1
        %error "LONG_0041604A"
    %endif
    times 1 - ($ - %%insn_0041604a) db 0
    %%insn_0041604b:
    call 0x416560 ; 0041604B E810050000
    %if ($ - %%insn_0041604b) > 5
        %error "LONG_0041604B"
    %endif
    times 5 - ($ - %%insn_0041604b) db 0
    %%insn_00416050:
    add esp,0xc ; 00416050 83C40C
    %if ($ - %%insn_00416050) > 3
        %error "LONG_00416050"
    %endif
    times 3 - ($ - %%insn_00416050) db 0
    %%insn_00416053:
    pop edi ; 00416053 5F
    %if ($ - %%insn_00416053) > 1
        %error "LONG_00416053"
    %endif
    times 1 - ($ - %%insn_00416053) db 0
    %%insn_00416054:
    pop esi ; 00416054 5E
    %if ($ - %%insn_00416054) > 1
        %error "LONG_00416054"
    %endif
    times 1 - ($ - %%insn_00416054) db 0
    %%insn_00416055:
    pop ebp ; 00416055 5D
    %if ($ - %%insn_00416055) > 1
        %error "LONG_00416055"
    %endif
    times 1 - ($ - %%insn_00416055) db 0
    %%insn_00416056:
    pop ebx ; 00416056 5B
    %if ($ - %%insn_00416056) > 1
        %error "LONG_00416056"
    %endif
    times 1 - ($ - %%insn_00416056) db 0
    %%insn_00416057:
    ret ; 00416057 C3
    %if ($ - %%insn_00416057) > 1
        %error "LONG_00416057"
    %endif
    times 1 - ($ - %%insn_00416057) db 0
    %%insn_00416058:
    mov edx,[esp+0x20] ; 00416058 8B542420
    %if ($ - %%insn_00416058) > 4
        %error "LONG_00416058"
    %endif
    times 4 - ($ - %%insn_00416058) db 0
    %%insn_0041605c:
    mov eax,[esp+0x1c] ; 0041605C 8B44241C
    %if ($ - %%insn_0041605c) > 4
        %error "LONG_0041605C"
    %endif
    times 4 - ($ - %%insn_0041605c) db 0
    %%insn_00416060:
    mov ecx,[esp+0x18] ; 00416060 8B4C2418
    %if ($ - %%insn_00416060) > 4
        %error "LONG_00416060"
    %endif
    times 4 - ($ - %%insn_00416060) db 0
    %%insn_00416064:
    push edx ; 00416064 52
    %if ($ - %%insn_00416064) > 1
        %error "LONG_00416064"
    %endif
    times 1 - ($ - %%insn_00416064) db 0
    %%insn_00416065:
    push eax ; 00416065 50
    %if ($ - %%insn_00416065) > 1
        %error "LONG_00416065"
    %endif
    times 1 - ($ - %%insn_00416065) db 0
    %%insn_00416066:
    mov eax,[esp+0x2c] ; 00416066 8B44242C
    %if ($ - %%insn_00416066) > 4
        %error "LONG_00416066"
    %endif
    times 4 - ($ - %%insn_00416066) db 0
    %%insn_0041606a:
    mov edx,[ecx+0x10] ; 0041606A 8B5110
    %if ($ - %%insn_0041606a) > 3
        %error "LONG_0041606A"
    %endif
    times 3 - ($ - %%insn_0041606a) db 0
    %%insn_0041606d:
    mov ecx,[eax+edx*4+0x68] ; 0041606D 8B4C9068
    %if ($ - %%insn_0041606d) > 4
        %error "LONG_0041606D"
    %endif
    times 4 - ($ - %%insn_0041606d) db 0
    %%insn_00416071:
    push ecx ; 00416071 51
    %if ($ - %%insn_00416071) > 1
        %error "LONG_00416071"
    %endif
    times 1 - ($ - %%insn_00416071) db 0
    %%insn_00416072:
    call 0x416560 ; 00416072 E8E9040000
    %if ($ - %%insn_00416072) > 5
        %error "LONG_00416072"
    %endif
    times 5 - ($ - %%insn_00416072) db 0
    %%insn_00416077:
    add esp,0xc ; 00416077 83C40C
    %if ($ - %%insn_00416077) > 3
        %error "LONG_00416077"
    %endif
    times 3 - ($ - %%insn_00416077) db 0
    %%insn_0041607a:
    pop edi ; 0041607A 5F
    %if ($ - %%insn_0041607a) > 1
        %error "LONG_0041607A"
    %endif
    times 1 - ($ - %%insn_0041607a) db 0
    %%insn_0041607b:
    pop esi ; 0041607B 5E
    %if ($ - %%insn_0041607b) > 1
        %error "LONG_0041607B"
    %endif
    times 1 - ($ - %%insn_0041607b) db 0
    %%insn_0041607c:
    pop ebp ; 0041607C 5D
    %if ($ - %%insn_0041607c) > 1
        %error "LONG_0041607C"
    %endif
    times 1 - ($ - %%insn_0041607c) db 0
    %%insn_0041607d:
    pop ebx ; 0041607D 5B
    %if ($ - %%insn_0041607d) > 1
        %error "LONG_0041607D"
    %endif
    times 1 - ($ - %%insn_0041607d) db 0
    %%insn_0041607e:
    ret ; 0041607E C3
    %if ($ - %%insn_0041607e) > 1
        %error "LONG_0041607E"
    %endif
    times 1 - ($ - %%insn_0041607e) db 0
    %%insn_0041607f:
    mov eax,[0x4211d4] ; 0041607F A1D4114200
    %if ($ - %%insn_0041607f) > 5
        %error "LONG_0041607F"
    %endif
    times 5 - ($ - %%insn_0041607f) db 0
    %%insn_00416084:
    test eax,eax ; 00416084 85C0
    %if ($ - %%insn_00416084) > 2
        %error "LONG_00416084"
    %endif
    times 2 - ($ - %%insn_00416084) db 0
    %%insn_00416086:
    jz short 0x4160ae ; 00416086 7426
    %if ($ - %%insn_00416086) > 2
        %error "LONG_00416086"
    %endif
    times 2 - ($ - %%insn_00416086) db 0
    %%insn_00416088:
    mov ebx,[esp+0x24] ; 00416088 8B5C2424
    %if ($ - %%insn_00416088) > 4
        %error "LONG_00416088"
    %endif
    times 4 - ($ - %%insn_00416088) db 0
    %%insn_0041608c:
    mov esi,[esp+0x20] ; 0041608C 8B742420
    %if ($ - %%insn_0041608c) > 4
        %error "LONG_0041608C"
    %endif
    times 4 - ($ - %%insn_0041608c) db 0
    %%insn_00416090:
    mov edi,[esp+0x1c] ; 00416090 8B7C241C
    %if ($ - %%insn_00416090) > 4
        %error "LONG_00416090"
    %endif
    times 4 - ($ - %%insn_00416090) db 0
    %%insn_00416094:
    mov ebp,[esp+0x18] ; 00416094 8B6C2418
    %if ($ - %%insn_00416094) > 4
        %error "LONG_00416094"
    %endif
    times 4 - ($ - %%insn_00416094) db 0
    %%insn_00416098:
    push ebx ; 00416098 53
    %if ($ - %%insn_00416098) > 1
        %error "LONG_00416098"
    %endif
    times 1 - ($ - %%insn_00416098) db 0
    %%insn_00416099:
    push esi ; 00416099 56
    %if ($ - %%insn_00416099) > 1
        %error "LONG_00416099"
    %endif
    times 1 - ($ - %%insn_00416099) db 0
    %%insn_0041609a:
    mov dword [0x4211d4],0x0 ; 0041609A C705D411420000000000
    %if ($ - %%insn_0041609a) > 10
        %error "LONG_0041609A"
    %endif
    times 10 - ($ - %%insn_0041609a) db 0
    %%insn_004160a4:
    mov edx,[ebx+0xa4] ; 004160A4 8B93A4000000
    %if ($ - %%insn_004160a4) > 6
        %error "LONG_004160A4"
    %endif
    times 6 - ($ - %%insn_004160a4) db 0
    %%insn_004160aa:
    push edi ; 004160AA 57
    %if ($ - %%insn_004160aa) > 1
        %error "LONG_004160AA"
    %endif
    times 1 - ($ - %%insn_004160aa) db 0
    %%insn_004160ab:
    push ebp ; 004160AB 55
    %if ($ - %%insn_004160ab) > 1
        %error "LONG_004160AB"
    %endif
    times 1 - ($ - %%insn_004160ab) db 0
    %%insn_004160ac:
    jmp short 0x4160c8 ; 004160AC EB1A
    %if ($ - %%insn_004160ac) > 2
        %error "LONG_004160AC"
    %endif
    times 2 - ($ - %%insn_004160ac) db 0
    %%insn_004160ae:
    mov ebx,[esp+0x24] ; 004160AE 8B5C2424
    %if ($ - %%insn_004160ae) > 4
        %error "LONG_004160AE"
    %endif
    times 4 - ($ - %%insn_004160ae) db 0
    %%insn_004160b2:
    mov esi,[esp+0x20] ; 004160B2 8B742420
    %if ($ - %%insn_004160b2) > 4
        %error "LONG_004160B2"
    %endif
    times 4 - ($ - %%insn_004160b2) db 0
    %%insn_004160b6:
    mov edi,[esp+0x1c] ; 004160B6 8B7C241C
    %if ($ - %%insn_004160b6) > 4
        %error "LONG_004160B6"
    %endif
    times 4 - ($ - %%insn_004160b6) db 0
    %%insn_004160ba:
    mov ebp,[esp+0x18] ; 004160BA 8B6C2418
    %if ($ - %%insn_004160ba) > 4
        %error "LONG_004160BA"
    %endif
    times 4 - ($ - %%insn_004160ba) db 0
    %%insn_004160be:
    mov edx,[ebx+0xa0] ; 004160BE 8B93A0000000
    %if ($ - %%insn_004160be) > 6
        %error "LONG_004160BE"
    %endif
    times 6 - ($ - %%insn_004160be) db 0
    %%insn_004160c4:
    push ebx ; 004160C4 53
    %if ($ - %%insn_004160c4) > 1
        %error "LONG_004160C4"
    %endif
    times 1 - ($ - %%insn_004160c4) db 0
    %%insn_004160c5:
    push esi ; 004160C5 56
    %if ($ - %%insn_004160c5) > 1
        %error "LONG_004160C5"
    %endif
    times 1 - ($ - %%insn_004160c5) db 0
    %%insn_004160c6:
    push edi ; 004160C6 57
    %if ($ - %%insn_004160c6) > 1
        %error "LONG_004160C6"
    %endif
    times 1 - ($ - %%insn_004160c6) db 0
    %%insn_004160c7:
    push ebp ; 004160C7 55
    %if ($ - %%insn_004160c7) > 1
        %error "LONG_004160C7"
    %endif
    times 1 - ($ - %%insn_004160c7) db 0
    %%insn_004160c8:
    push edx ; 004160C8 52
    %if ($ - %%insn_004160c8) > 1
        %error "LONG_004160C8"
    %endif
    times 1 - ($ - %%insn_004160c8) db 0
    %%insn_004160c9:
    call 0x4166a0 ; 004160C9 E8D2050000
    %if ($ - %%insn_004160c9) > 5
        %error "LONG_004160C9"
    %endif
    times 5 - ($ - %%insn_004160c9) db 0
    %%insn_004160ce:
    mov eax,[esi] ; 004160CE 8B06
    %if ($ - %%insn_004160ce) > 2
        %error "LONG_004160CE"
    %endif
    times 2 - ($ - %%insn_004160ce) db 0
    %%insn_004160d0:
    add esp,0x14 ; 004160D0 83C414
    %if ($ - %%insn_004160d0) > 3
        %error "LONG_004160D0"
    %endif
    times 3 - ($ - %%insn_004160d0) db 0
    %%insn_004160d3:
    test eax,eax ; 004160D3 85C0
    %if ($ - %%insn_004160d3) > 2
        %error "LONG_004160D3"
    %endif
    times 2 - ($ - %%insn_004160d3) db 0
    %%insn_004160d5:
    jz 0x4164a1 ; 004160D5 0F84C6030000
    %if ($ - %%insn_004160d5) > 6
        %error "LONG_004160D5"
    %endif
    times 6 - ($ - %%insn_004160d5) db 0
    %%insn_004160db:
    mov eax,[edi] ; 004160DB 8B07
    %if ($ - %%insn_004160db) > 2
        %error "LONG_004160DB"
    %endif
    times 2 - ($ - %%insn_004160db) db 0
    %%insn_004160dd:
    push ebx ; 004160DD 53
    %if ($ - %%insn_004160dd) > 1
        %error "LONG_004160DD"
    %endif
    times 1 - ($ - %%insn_004160dd) db 0
    %%insn_004160de:
    push esi ; 004160DE 56
    %if ($ - %%insn_004160de) > 1
        %error "LONG_004160DE"
    %endif
    times 1 - ($ - %%insn_004160de) db 0
    %%insn_004160df:
    push edi ; 004160DF 57
    %if ($ - %%insn_004160df) > 1
        %error "LONG_004160DF"
    %endif
    times 1 - ($ - %%insn_004160df) db 0
    %%insn_004160e0:
    mov byte [eax],0x20 ; 004160E0 C60020
    %if ($ - %%insn_004160e0) > 3
        %error "LONG_004160E0"
    %endif
    times 3 - ($ - %%insn_004160e0) db 0
    %%insn_004160e3:
    mov ecx,[edi] ; 004160E3 8B0F
    %if ($ - %%insn_004160e3) > 2
        %error "LONG_004160E3"
    %endif
    times 2 - ($ - %%insn_004160e3) db 0
    %%insn_004160e5:
    inc ecx ; 004160E5 41
    %if ($ - %%insn_004160e5) > 1
        %error "LONG_004160E5"
    %endif
    times 1 - ($ - %%insn_004160e5) db 0
    %%insn_004160e6:
    push ebp ; 004160E6 55
    %if ($ - %%insn_004160e6) > 1
        %error "LONG_004160E6"
    %endif
    times 1 - ($ - %%insn_004160e6) db 0
    %%insn_004160e7:
    mov [edi],ecx ; 004160E7 890F
    %if ($ - %%insn_004160e7) > 2
        %error "LONG_004160E7"
    %endif
    times 2 - ($ - %%insn_004160e7) db 0
    %%insn_004160e9:
    mov eax,[esi] ; 004160E9 8B06
    %if ($ - %%insn_004160e9) > 2
        %error "LONG_004160E9"
    %endif
    times 2 - ($ - %%insn_004160e9) db 0
    %%insn_004160eb:
    dec eax ; 004160EB 48
    %if ($ - %%insn_004160eb) > 1
        %error "LONG_004160EB"
    %endif
    times 1 - ($ - %%insn_004160eb) db 0
    %%insn_004160ec:
    mov [esi],eax ; 004160EC 8906
    %if ($ - %%insn_004160ec) > 2
        %error "LONG_004160EC"
    %endif
    times 2 - ($ - %%insn_004160ec) db 0
    %%insn_004160ee:
    mov ecx,[ebx+0xa8] ; 004160EE 8B8BA8000000
    %if ($ - %%insn_004160ee) > 6
        %error "LONG_004160EE"
    %endif
    times 6 - ($ - %%insn_004160ee) db 0
    %%insn_004160f4:
    push ecx ; 004160F4 51
    %if ($ - %%insn_004160f4) > 1
        %error "LONG_004160F4"
    %endif
    times 1 - ($ - %%insn_004160f4) db 0
    %%insn_004160f5:
    call 0x4166a0 ; 004160F5 E8A6050000
    %if ($ - %%insn_004160f5) > 5
        %error "LONG_004160F5"
    %endif
    times 5 - ($ - %%insn_004160f5) db 0
    %%insn_004160fa:
    add esp,0x14 ; 004160FA 83C414
    %if ($ - %%insn_004160fa) > 3
        %error "LONG_004160FA"
    %endif
    times 3 - ($ - %%insn_004160fa) db 0
    %%insn_004160fd:
    pop edi ; 004160FD 5F
    %if ($ - %%insn_004160fd) > 1
        %error "LONG_004160FD"
    %endif
    times 1 - ($ - %%insn_004160fd) db 0
    %%insn_004160fe:
    pop esi ; 004160FE 5E
    %if ($ - %%insn_004160fe) > 1
        %error "LONG_004160FE"
    %endif
    times 1 - ($ - %%insn_004160fe) db 0
    %%insn_004160ff:
    pop ebp ; 004160FF 5D
    %if ($ - %%insn_004160ff) > 1
        %error "LONG_004160FF"
    %endif
    times 1 - ($ - %%insn_004160ff) db 0
    %%insn_00416100:
    pop ebx ; 00416100 5B
    %if ($ - %%insn_00416100) > 1
        %error "LONG_00416100"
    %endif
    times 1 - ($ - %%insn_00416100) db 0
    %%insn_00416101:
    ret ; 00416101 C3
    %if ($ - %%insn_00416101) > 1
        %error "LONG_00416101"
    %endif
    times 1 - ($ - %%insn_00416101) db 0
    %%insn_00416102:
    mov edx,[0x4211d4] ; 00416102 8B15D4114200
    %if ($ - %%insn_00416102) > 6
        %error "LONG_00416102"
    %endif
    times 6 - ($ - %%insn_00416102) db 0
    %%insn_00416108:
    mov eax,[esp+0x20] ; 00416108 8B442420
    %if ($ - %%insn_00416108) > 4
        %error "LONG_00416108"
    %endif
    times 4 - ($ - %%insn_00416108) db 0
    %%insn_0041610c:
    mov ecx,[esp+0x1c] ; 0041610C 8B4C241C
    %if ($ - %%insn_0041610c) > 4
        %error "LONG_0041610C"
    %endif
    times 4 - ($ - %%insn_0041610c) db 0
    %%insn_00416110:
    mov [0x4211d8],edx ; 00416110 8915D8114200
    %if ($ - %%insn_00416110) > 6
        %error "LONG_00416110"
    %endif
    times 6 - ($ - %%insn_00416110) db 0
    %%insn_00416116:
    mov edx,[esp+0x18] ; 00416116 8B542418
    %if ($ - %%insn_00416116) > 4
        %error "LONG_00416116"
    %endif
    times 4 - ($ - %%insn_00416116) db 0
    %%insn_0041611a:
    push eax ; 0041611A 50
    %if ($ - %%insn_0041611a) > 1
        %error "LONG_0041611A"
    %endif
    times 1 - ($ - %%insn_0041611a) db 0
    %%insn_0041611b:
    push ecx ; 0041611B 51
    %if ($ - %%insn_0041611b) > 1
        %error "LONG_0041611B"
    %endif
    times 1 - ($ - %%insn_0041611b) db 0
    %%insn_0041611c:
    push dword 0x2 ; 0041611C 6A02
    %if ($ - %%insn_0041611c) > 2
        %error "LONG_0041611C"
    %endif
    times 2 - ($ - %%insn_0041611c) db 0
    %%insn_0041611e:
    mov eax,[edx+0xc] ; 0041611E 8B420C
    %if ($ - %%insn_0041611e) > 3
        %error "LONG_0041611E"
    %endif
    times 3 - ($ - %%insn_0041611e) db 0
    %%insn_00416121:
    push eax ; 00416121 50
    %if ($ - %%insn_00416121) > 1
        %error "LONG_00416121"
    %endif
    times 1 - ($ - %%insn_00416121) db 0
    %%insn_00416122:
    call 0x416590 ; 00416122 E869040000
    %if ($ - %%insn_00416122) > 5
        %error "LONG_00416122"
    %endif
    times 5 - ($ - %%insn_00416122) db 0
    %%insn_00416127:
    add esp,0x10 ; 00416127 83C410
    %if ($ - %%insn_00416127) > 3
        %error "LONG_00416127"
    %endif
    times 3 - ($ - %%insn_00416127) db 0
    %%insn_0041612a:
    pop edi ; 0041612A 5F
    %if ($ - %%insn_0041612a) > 1
        %error "LONG_0041612A"
    %endif
    times 1 - ($ - %%insn_0041612a) db 0
    %%insn_0041612b:
    pop esi ; 0041612B 5E
    %if ($ - %%insn_0041612b) > 1
        %error "LONG_0041612B"
    %endif
    times 1 - ($ - %%insn_0041612b) db 0
    %%insn_0041612c:
    pop ebp ; 0041612C 5D
    %if ($ - %%insn_0041612c) > 1
        %error "LONG_0041612C"
    %endif
    times 1 - ($ - %%insn_0041612c) db 0
    %%insn_0041612d:
    pop ebx ; 0041612D 5B
    %if ($ - %%insn_0041612d) > 1
        %error "LONG_0041612D"
    %endif
    times 1 - ($ - %%insn_0041612d) db 0
    %%insn_0041612e:
    ret ; 0041612E C3
    %if ($ - %%insn_0041612e) > 1
        %error "LONG_0041612E"
    %endif
    times 1 - ($ - %%insn_0041612e) db 0
    %%insn_0041612f:
    mov ecx,[0x4211d4] ; 0041612F 8B0DD4114200
    %if ($ - %%insn_0041612f) > 6
        %error "LONG_0041612F"
    %endif
    times 6 - ($ - %%insn_0041612f) db 0
    %%insn_00416135:
    mov edx,[esp+0x20] ; 00416135 8B542420
    %if ($ - %%insn_00416135) > 4
        %error "LONG_00416135"
    %endif
    times 4 - ($ - %%insn_00416135) db 0
    %%insn_00416139:
    mov eax,[esp+0x1c] ; 00416139 8B44241C
    %if ($ - %%insn_00416139) > 4
        %error "LONG_00416139"
    %endif
    times 4 - ($ - %%insn_00416139) db 0
    %%insn_0041613d:
    mov [0x4211d8],ecx ; 0041613D 890DD8114200
    %if ($ - %%insn_0041613d) > 6
        %error "LONG_0041613D"
    %endif
    times 6 - ($ - %%insn_0041613d) db 0
    %%insn_00416143:
    mov ecx,[esp+0x18] ; 00416143 8B4C2418
    %if ($ - %%insn_00416143) > 4
        %error "LONG_00416143"
    %endif
    times 4 - ($ - %%insn_00416143) db 0
    %%insn_00416147:
    push edx ; 00416147 52
    %if ($ - %%insn_00416147) > 1
        %error "LONG_00416147"
    %endif
    times 1 - ($ - %%insn_00416147) db 0
    %%insn_00416148:
    push eax ; 00416148 50
    %if ($ - %%insn_00416148) > 1
        %error "LONG_00416148"
    %endif
    times 1 - ($ - %%insn_00416148) db 0
    %%insn_00416149:
    push dword 0x2 ; 00416149 6A02
    %if ($ - %%insn_00416149) > 2
        %error "LONG_00416149"
    %endif
    times 2 - ($ - %%insn_00416149) db 0
    %%insn_0041614b:
    mov edx,[ecx+0x8] ; 0041614B 8B5108
    %if ($ - %%insn_0041614b) > 3
        %error "LONG_0041614B"
    %endif
    times 3 - ($ - %%insn_0041614b) db 0
    %%insn_0041614e:
    push edx ; 0041614E 52
    %if ($ - %%insn_0041614e) > 1
        %error "LONG_0041614E"
    %endif
    times 1 - ($ - %%insn_0041614e) db 0
    %%insn_0041614f:
    call 0x416590 ; 0041614F E83C040000
    %if ($ - %%insn_0041614f) > 5
        %error "LONG_0041614F"
    %endif
    times 5 - ($ - %%insn_0041614f) db 0
    %%insn_00416154:
    add esp,0x10 ; 00416154 83C410
    %if ($ - %%insn_00416154) > 3
        %error "LONG_00416154"
    %endif
    times 3 - ($ - %%insn_00416154) db 0
    %%insn_00416157:
    pop edi ; 00416157 5F
    %if ($ - %%insn_00416157) > 1
        %error "LONG_00416157"
    %endif
    times 1 - ($ - %%insn_00416157) db 0
    %%insn_00416158:
    pop esi ; 00416158 5E
    %if ($ - %%insn_00416158) > 1
        %error "LONG_00416158"
    %endif
    times 1 - ($ - %%insn_00416158) db 0
    %%insn_00416159:
    pop ebp ; 00416159 5D
    %if ($ - %%insn_00416159) > 1
        %error "LONG_00416159"
    %endif
    times 1 - ($ - %%insn_00416159) db 0
    %%insn_0041615a:
    pop ebx ; 0041615A 5B
    %if ($ - %%insn_0041615a) > 1
        %error "LONG_0041615A"
    %endif
    times 1 - ($ - %%insn_0041615a) db 0
    %%insn_0041615b:
    ret ; 0041615B C3
    %if ($ - %%insn_0041615b) > 1
        %error "LONG_0041615B"
    %endif
    times 1 - ($ - %%insn_0041615b) db 0
    %%insn_0041615c:
    mov eax,[0x4211d4] ; 0041615C A1D4114200
    %if ($ - %%insn_0041615c) > 5
        %error "LONG_0041615C"
    %endif
    times 5 - ($ - %%insn_0041615c) db 0
    %%insn_00416161:
    mov ecx,[esp+0x18] ; 00416161 8B4C2418
    %if ($ - %%insn_00416161) > 4
        %error "LONG_00416161"
    %endif
    times 4 - ($ - %%insn_00416161) db 0
    %%insn_00416165:
    mov [0x4211d8],eax ; 00416165 A3D8114200
    %if ($ - %%insn_00416165) > 5
        %error "LONG_00416165"
    %endif
    times 5 - ($ - %%insn_00416165) db 0
    %%insn_0041616a:
    mov eax,[ecx+0x8] ; 0041616A 8B4108
    %if ($ - %%insn_0041616a) > 3
        %error "LONG_0041616A"
    %endif
    times 3 - ($ - %%insn_0041616a) db 0
    %%insn_0041616d:
    mov ecx,0xc ; 0041616D B90C000000
    %if ($ - %%insn_0041616d) > 5
        %error "LONG_0041616D"
    %endif
    times 5 - ($ - %%insn_0041616d) db 0
    %%insn_00416172:
    cdq ; 00416172 99
    %if ($ - %%insn_00416172) > 1
        %error "LONG_00416172"
    %endif
    times 1 - ($ - %%insn_00416172) db 0
    %%insn_00416173:
    idiv ecx ; 00416173 F7F9
    %if ($ - %%insn_00416173) > 2
        %error "LONG_00416173"
    %endif
    times 2 - ($ - %%insn_00416173) db 0
    %%insn_00416175:
    test edx,edx ; 00416175 85D2
    %if ($ - %%insn_00416175) > 2
        %error "LONG_00416175"
    %endif
    times 2 - ($ - %%insn_00416175) db 0
    %%insn_00416177:
    jnz short 0x41617b ; 00416177 7502
    %if ($ - %%insn_00416177) > 2
        %error "LONG_00416177"
    %endif
    times 2 - ($ - %%insn_00416177) db 0
    db 0x8B, 0xD1 ; 00416179 8BD1 | mov edx,ecx | encoding preserved
    %%insn_0041617b:
    mov eax,[esp+0x20] ; 0041617B 8B442420
    %if ($ - %%insn_0041617b) > 4
        %error "LONG_0041617B"
    %endif
    times 4 - ($ - %%insn_0041617b) db 0
    %%insn_0041617f:
    mov ecx,[esp+0x1c] ; 0041617F 8B4C241C
    %if ($ - %%insn_0041617f) > 4
        %error "LONG_0041617F"
    %endif
    times 4 - ($ - %%insn_0041617f) db 0
    %%insn_00416183:
    push eax ; 00416183 50
    %if ($ - %%insn_00416183) > 1
        %error "LONG_00416183"
    %endif
    times 1 - ($ - %%insn_00416183) db 0
    %%insn_00416184:
    push ecx ; 00416184 51
    %if ($ - %%insn_00416184) > 1
        %error "LONG_00416184"
    %endif
    times 1 - ($ - %%insn_00416184) db 0
    %%insn_00416185:
    push dword 0x2 ; 00416185 6A02
    %if ($ - %%insn_00416185) > 2
        %error "LONG_00416185"
    %endif
    times 2 - ($ - %%insn_00416185) db 0
    %%insn_00416187:
    push edx ; 00416187 52
    %if ($ - %%insn_00416187) > 1
        %error "LONG_00416187"
    %endif
    times 1 - ($ - %%insn_00416187) db 0
    %%insn_00416188:
    call 0x416590 ; 00416188 E803040000
    %if ($ - %%insn_00416188) > 5
        %error "LONG_00416188"
    %endif
    times 5 - ($ - %%insn_00416188) db 0
    %%insn_0041618d:
    add esp,0x10 ; 0041618D 83C410
    %if ($ - %%insn_0041618d) > 3
        %error "LONG_0041618D"
    %endif
    times 3 - ($ - %%insn_0041618d) db 0
    %%insn_00416190:
    pop edi ; 00416190 5F
    %if ($ - %%insn_00416190) > 1
        %error "LONG_00416190"
    %endif
    times 1 - ($ - %%insn_00416190) db 0
    %%insn_00416191:
    pop esi ; 00416191 5E
    %if ($ - %%insn_00416191) > 1
        %error "LONG_00416191"
    %endif
    times 1 - ($ - %%insn_00416191) db 0
    %%insn_00416192:
    pop ebp ; 00416192 5D
    %if ($ - %%insn_00416192) > 1
        %error "LONG_00416192"
    %endif
    times 1 - ($ - %%insn_00416192) db 0
    %%insn_00416193:
    pop ebx ; 00416193 5B
    %if ($ - %%insn_00416193) > 1
        %error "LONG_00416193"
    %endif
    times 1 - ($ - %%insn_00416193) db 0
    %%insn_00416194:
    ret ; 00416194 C3
    %if ($ - %%insn_00416194) > 1
        %error "LONG_00416194"
    %endif
    times 1 - ($ - %%insn_00416194) db 0
    %%insn_00416195:
    mov edx,[0x4211d4] ; 00416195 8B15D4114200
    %if ($ - %%insn_00416195) > 6
        %error "LONG_00416195"
    %endif
    times 6 - ($ - %%insn_00416195) db 0
    %%insn_0041619b:
    mov eax,[esp+0x20] ; 0041619B 8B442420
    %if ($ - %%insn_0041619b) > 4
        %error "LONG_0041619B"
    %endif
    times 4 - ($ - %%insn_0041619b) db 0
    %%insn_0041619f:
    mov ecx,[esp+0x1c] ; 0041619F 8B4C241C
    %if ($ - %%insn_0041619f) > 4
        %error "LONG_0041619F"
    %endif
    times 4 - ($ - %%insn_0041619f) db 0
    %%insn_004161a3:
    mov [0x4211d8],edx ; 004161A3 8915D8114200
    %if ($ - %%insn_004161a3) > 6
        %error "LONG_004161A3"
    %endif
    times 6 - ($ - %%insn_004161a3) db 0
    %%insn_004161a9:
    mov edx,[esp+0x18] ; 004161A9 8B542418
    %if ($ - %%insn_004161a9) > 4
        %error "LONG_004161A9"
    %endif
    times 4 - ($ - %%insn_004161a9) db 0
    %%insn_004161ad:
    push eax ; 004161AD 50
    %if ($ - %%insn_004161ad) > 1
        %error "LONG_004161AD"
    %endif
    times 1 - ($ - %%insn_004161ad) db 0
    %%insn_004161ae:
    push ecx ; 004161AE 51
    %if ($ - %%insn_004161ae) > 1
        %error "LONG_004161AE"
    %endif
    times 1 - ($ - %%insn_004161ae) db 0
    %%insn_004161af:
    push dword 0x3 ; 004161AF 6A03
    %if ($ - %%insn_004161af) > 2
        %error "LONG_004161AF"
    %endif
    times 2 - ($ - %%insn_004161af) db 0
    %%insn_004161b1:
    mov eax,[edx+0x1c] ; 004161B1 8B421C
    %if ($ - %%insn_004161b1) > 3
        %error "LONG_004161B1"
    %endif
    times 3 - ($ - %%insn_004161b1) db 0
    %%insn_004161b4:
    inc eax ; 004161B4 40
    %if ($ - %%insn_004161b4) > 1
        %error "LONG_004161B4"
    %endif
    times 1 - ($ - %%insn_004161b4) db 0
    %%insn_004161b5:
    push eax ; 004161B5 50
    %if ($ - %%insn_004161b5) > 1
        %error "LONG_004161B5"
    %endif
    times 1 - ($ - %%insn_004161b5) db 0
    %%insn_004161b6:
    call 0x416590 ; 004161B6 E8D5030000
    %if ($ - %%insn_004161b6) > 5
        %error "LONG_004161B6"
    %endif
    times 5 - ($ - %%insn_004161b6) db 0
    %%insn_004161bb:
    add esp,0x10 ; 004161BB 83C410
    %if ($ - %%insn_004161bb) > 3
        %error "LONG_004161BB"
    %endif
    times 3 - ($ - %%insn_004161bb) db 0
    %%insn_004161be:
    pop edi ; 004161BE 5F
    %if ($ - %%insn_004161be) > 1
        %error "LONG_004161BE"
    %endif
    times 1 - ($ - %%insn_004161be) db 0
    %%insn_004161bf:
    pop esi ; 004161BF 5E
    %if ($ - %%insn_004161bf) > 1
        %error "LONG_004161BF"
    %endif
    times 1 - ($ - %%insn_004161bf) db 0
    %%insn_004161c0:
    pop ebp ; 004161C0 5D
    %if ($ - %%insn_004161c0) > 1
        %error "LONG_004161C0"
    %endif
    times 1 - ($ - %%insn_004161c0) db 0
    %%insn_004161c1:
    pop ebx ; 004161C1 5B
    %if ($ - %%insn_004161c1) > 1
        %error "LONG_004161C1"
    %endif
    times 1 - ($ - %%insn_004161c1) db 0
    %%insn_004161c2:
    ret ; 004161C2 C3
    %if ($ - %%insn_004161c2) > 1
        %error "LONG_004161C2"
    %endif
    times 1 - ($ - %%insn_004161c2) db 0
    %%insn_004161c3:
    mov ecx,[0x4211d4] ; 004161C3 8B0DD4114200
    %if ($ - %%insn_004161c3) > 6
        %error "LONG_004161C3"
    %endif
    times 6 - ($ - %%insn_004161c3) db 0
    %%insn_004161c9:
    mov edx,[esp+0x20] ; 004161C9 8B542420
    %if ($ - %%insn_004161c9) > 4
        %error "LONG_004161C9"
    %endif
    times 4 - ($ - %%insn_004161c9) db 0
    %%insn_004161cd:
    mov eax,[esp+0x1c] ; 004161CD 8B44241C
    %if ($ - %%insn_004161cd) > 4
        %error "LONG_004161CD"
    %endif
    times 4 - ($ - %%insn_004161cd) db 0
    %%insn_004161d1:
    mov [0x4211d8],ecx ; 004161D1 890DD8114200
    %if ($ - %%insn_004161d1) > 6
        %error "LONG_004161D1"
    %endif
    times 6 - ($ - %%insn_004161d1) db 0
    %%insn_004161d7:
    mov ecx,[esp+0x18] ; 004161D7 8B4C2418
    %if ($ - %%insn_004161d7) > 4
        %error "LONG_004161D7"
    %endif
    times 4 - ($ - %%insn_004161d7) db 0
    %%insn_004161db:
    push edx ; 004161DB 52
    %if ($ - %%insn_004161db) > 1
        %error "LONG_004161DB"
    %endif
    times 1 - ($ - %%insn_004161db) db 0
    %%insn_004161dc:
    push eax ; 004161DC 50
    %if ($ - %%insn_004161dc) > 1
        %error "LONG_004161DC"
    %endif
    times 1 - ($ - %%insn_004161dc) db 0
    %%insn_004161dd:
    push dword 0x2 ; 004161DD 6A02
    %if ($ - %%insn_004161dd) > 2
        %error "LONG_004161DD"
    %endif
    times 2 - ($ - %%insn_004161dd) db 0
    %%insn_004161df:
    mov edx,[ecx+0x10] ; 004161DF 8B5110
    %if ($ - %%insn_004161df) > 3
        %error "LONG_004161DF"
    %endif
    times 3 - ($ - %%insn_004161df) db 0
    %%insn_004161e2:
    inc edx ; 004161E2 42
    %if ($ - %%insn_004161e2) > 1
        %error "LONG_004161E2"
    %endif
    times 1 - ($ - %%insn_004161e2) db 0
    %%insn_004161e3:
    push edx ; 004161E3 52
    %if ($ - %%insn_004161e3) > 1
        %error "LONG_004161E3"
    %endif
    times 1 - ($ - %%insn_004161e3) db 0
    %%insn_004161e4:
    call 0x416590 ; 004161E4 E8A7030000
    %if ($ - %%insn_004161e4) > 5
        %error "LONG_004161E4"
    %endif
    times 5 - ($ - %%insn_004161e4) db 0
    %%insn_004161e9:
    add esp,0x10 ; 004161E9 83C410
    %if ($ - %%insn_004161e9) > 3
        %error "LONG_004161E9"
    %endif
    times 3 - ($ - %%insn_004161e9) db 0
    %%insn_004161ec:
    pop edi ; 004161EC 5F
    %if ($ - %%insn_004161ec) > 1
        %error "LONG_004161EC"
    %endif
    times 1 - ($ - %%insn_004161ec) db 0
    %%insn_004161ed:
    pop esi ; 004161ED 5E
    %if ($ - %%insn_004161ed) > 1
        %error "LONG_004161ED"
    %endif
    times 1 - ($ - %%insn_004161ed) db 0
    %%insn_004161ee:
    pop ebp ; 004161EE 5D
    %if ($ - %%insn_004161ee) > 1
        %error "LONG_004161EE"
    %endif
    times 1 - ($ - %%insn_004161ee) db 0
    %%insn_004161ef:
    pop ebx ; 004161EF 5B
    %if ($ - %%insn_004161ef) > 1
        %error "LONG_004161EF"
    %endif
    times 1 - ($ - %%insn_004161ef) db 0
    %%insn_004161f0:
    ret ; 004161F0 C3
    %if ($ - %%insn_004161f0) > 1
        %error "LONG_004161F0"
    %endif
    times 1 - ($ - %%insn_004161f0) db 0
    %%insn_004161f1:
    mov eax,[0x4211d4] ; 004161F1 A1D4114200
    %if ($ - %%insn_004161f1) > 5
        %error "LONG_004161F1"
    %endif
    times 5 - ($ - %%insn_004161f1) db 0
    %%insn_004161f6:
    mov ecx,[esp+0x20] ; 004161F6 8B4C2420
    %if ($ - %%insn_004161f6) > 4
        %error "LONG_004161F6"
    %endif
    times 4 - ($ - %%insn_004161f6) db 0
    %%insn_004161fa:
    mov edx,[esp+0x1c] ; 004161FA 8B54241C
    %if ($ - %%insn_004161fa) > 4
        %error "LONG_004161FA"
    %endif
    times 4 - ($ - %%insn_004161fa) db 0
    %%insn_004161fe:
    mov [0x4211d8],eax ; 004161FE A3D8114200
    %if ($ - %%insn_004161fe) > 5
        %error "LONG_004161FE"
    %endif
    times 5 - ($ - %%insn_004161fe) db 0
    %%insn_00416203:
    mov eax,[esp+0x18] ; 00416203 8B442418
    %if ($ - %%insn_00416203) > 4
        %error "LONG_00416203"
    %endif
    times 4 - ($ - %%insn_00416203) db 0
    %%insn_00416207:
    push ecx ; 00416207 51
    %if ($ - %%insn_00416207) > 1
        %error "LONG_00416207"
    %endif
    times 1 - ($ - %%insn_00416207) db 0
    %%insn_00416208:
    push edx ; 00416208 52
    %if ($ - %%insn_00416208) > 1
        %error "LONG_00416208"
    %endif
    times 1 - ($ - %%insn_00416208) db 0
    %%insn_00416209:
    push dword 0x2 ; 00416209 6A02
    %if ($ - %%insn_00416209) > 2
        %error "LONG_00416209"
    %endif
    times 2 - ($ - %%insn_00416209) db 0
    %%insn_0041620b:
    mov ecx,[eax+0x4] ; 0041620B 8B4804
    %if ($ - %%insn_0041620b) > 3
        %error "LONG_0041620B"
    %endif
    times 3 - ($ - %%insn_0041620b) db 0
    %%insn_0041620e:
    push ecx ; 0041620E 51
    %if ($ - %%insn_0041620e) > 1
        %error "LONG_0041620E"
    %endif
    times 1 - ($ - %%insn_0041620e) db 0
    %%insn_0041620f:
    call 0x416590 ; 0041620F E87C030000
    %if ($ - %%insn_0041620f) > 5
        %error "LONG_0041620F"
    %endif
    times 5 - ($ - %%insn_0041620f) db 0
    %%insn_00416214:
    add esp,0x10 ; 00416214 83C410
    %if ($ - %%insn_00416214) > 3
        %error "LONG_00416214"
    %endif
    times 3 - ($ - %%insn_00416214) db 0
    %%insn_00416217:
    pop edi ; 00416217 5F
    %if ($ - %%insn_00416217) > 1
        %error "LONG_00416217"
    %endif
    times 1 - ($ - %%insn_00416217) db 0
    %%insn_00416218:
    pop esi ; 00416218 5E
    %if ($ - %%insn_00416218) > 1
        %error "LONG_00416218"
    %endif
    times 1 - ($ - %%insn_00416218) db 0
    %%insn_00416219:
    pop ebp ; 00416219 5D
    %if ($ - %%insn_00416219) > 1
        %error "LONG_00416219"
    %endif
    times 1 - ($ - %%insn_00416219) db 0
    %%insn_0041621a:
    pop ebx ; 0041621A 5B
    %if ($ - %%insn_0041621a) > 1
        %error "LONG_0041621A"
    %endif
    times 1 - ($ - %%insn_0041621a) db 0
    %%insn_0041621b:
    ret ; 0041621B C3
    %if ($ - %%insn_0041621b) > 1
        %error "LONG_0041621B"
    %endif
    times 1 - ($ - %%insn_0041621b) db 0
    %%insn_0041621c:
    mov edx,[esp+0x18] ; 0041621C 8B542418
    %if ($ - %%insn_0041621c) > 4
        %error "LONG_0041621C"
    %endif
    times 4 - ($ - %%insn_0041621c) db 0
    %%insn_00416220:
    cmp dword [edx+0x8],0xb ; 00416220 837A080B
    %if ($ - %%insn_00416220) > 4
        %error "LONG_00416220"
    %endif
    times 4 - ($ - %%insn_00416220) db 0
    %%insn_00416224:
    jg short 0x416248 ; 00416224 7F22
    %if ($ - %%insn_00416224) > 2
        %error "LONG_00416224"
    %endif
    times 2 - ($ - %%insn_00416224) db 0
    %%insn_00416226:
    mov eax,[esp+0x20] ; 00416226 8B442420
    %if ($ - %%insn_00416226) > 4
        %error "LONG_00416226"
    %endif
    times 4 - ($ - %%insn_00416226) db 0
    %%insn_0041622a:
    mov edx,[esp+0x24] ; 0041622A 8B542424
    %if ($ - %%insn_0041622a) > 4
        %error "LONG_0041622A"
    %endif
    times 4 - ($ - %%insn_0041622a) db 0
    %%insn_0041622e:
    mov ecx,[esp+0x1c] ; 0041622E 8B4C241C
    %if ($ - %%insn_0041622e) > 4
        %error "LONG_0041622E"
    %endif
    times 4 - ($ - %%insn_0041622e) db 0
    %%insn_00416232:
    push eax ; 00416232 50
    %if ($ - %%insn_00416232) > 1
        %error "LONG_00416232"
    %endif
    times 1 - ($ - %%insn_00416232) db 0
    %%insn_00416233:
    mov eax,[edx+0x98] ; 00416233 8B8298000000
    %if ($ - %%insn_00416233) > 6
        %error "LONG_00416233"
    %endif
    times 6 - ($ - %%insn_00416233) db 0
    %%insn_00416239:
    push ecx ; 00416239 51
    %if ($ - %%insn_00416239) > 1
        %error "LONG_00416239"
    %endif
    times 1 - ($ - %%insn_00416239) db 0
    %%insn_0041623a:
    push eax ; 0041623A 50
    %if ($ - %%insn_0041623a) > 1
        %error "LONG_0041623A"
    %endif
    times 1 - ($ - %%insn_0041623a) db 0
    %%insn_0041623b:
    call 0x416560 ; 0041623B E820030000
    %if ($ - %%insn_0041623b) > 5
        %error "LONG_0041623B"
    %endif
    times 5 - ($ - %%insn_0041623b) db 0
    %%insn_00416240:
    add esp,0xc ; 00416240 83C40C
    %if ($ - %%insn_00416240) > 3
        %error "LONG_00416240"
    %endif
    times 3 - ($ - %%insn_00416240) db 0
    %%insn_00416243:
    pop edi ; 00416243 5F
    %if ($ - %%insn_00416243) > 1
        %error "LONG_00416243"
    %endif
    times 1 - ($ - %%insn_00416243) db 0
    %%insn_00416244:
    pop esi ; 00416244 5E
    %if ($ - %%insn_00416244) > 1
        %error "LONG_00416244"
    %endif
    times 1 - ($ - %%insn_00416244) db 0
    %%insn_00416245:
    pop ebp ; 00416245 5D
    %if ($ - %%insn_00416245) > 1
        %error "LONG_00416245"
    %endif
    times 1 - ($ - %%insn_00416245) db 0
    %%insn_00416246:
    pop ebx ; 00416246 5B
    %if ($ - %%insn_00416246) > 1
        %error "LONG_00416246"
    %endif
    times 1 - ($ - %%insn_00416246) db 0
    %%insn_00416247:
    ret ; 00416247 C3
    %if ($ - %%insn_00416247) > 1
        %error "LONG_00416247"
    %endif
    times 1 - ($ - %%insn_00416247) db 0
    %%insn_00416248:
    mov ecx,[esp+0x20] ; 00416248 8B4C2420
    %if ($ - %%insn_00416248) > 4
        %error "LONG_00416248"
    %endif
    times 4 - ($ - %%insn_00416248) db 0
    %%insn_0041624c:
    mov eax,[esp+0x24] ; 0041624C 8B442424
    %if ($ - %%insn_0041624c) > 4
        %error "LONG_0041624C"
    %endif
    times 4 - ($ - %%insn_0041624c) db 0
    %%insn_00416250:
    mov edx,[esp+0x1c] ; 00416250 8B54241C
    %if ($ - %%insn_00416250) > 4
        %error "LONG_00416250"
    %endif
    times 4 - ($ - %%insn_00416250) db 0
    %%insn_00416254:
    push ecx ; 00416254 51
    %if ($ - %%insn_00416254) > 1
        %error "LONG_00416254"
    %endif
    times 1 - ($ - %%insn_00416254) db 0
    %%insn_00416255:
    mov ecx,[eax+0x9c] ; 00416255 8B889C000000
    %if ($ - %%insn_00416255) > 6
        %error "LONG_00416255"
    %endif
    times 6 - ($ - %%insn_00416255) db 0
    %%insn_0041625b:
    push edx ; 0041625B 52
    %if ($ - %%insn_0041625b) > 1
        %error "LONG_0041625B"
    %endif
    times 1 - ($ - %%insn_0041625b) db 0
    %%insn_0041625c:
    push ecx ; 0041625C 51
    %if ($ - %%insn_0041625c) > 1
        %error "LONG_0041625C"
    %endif
    times 1 - ($ - %%insn_0041625c) db 0
    %%insn_0041625d:
    call 0x416560 ; 0041625D E8FE020000
    %if ($ - %%insn_0041625d) > 5
        %error "LONG_0041625D"
    %endif
    times 5 - ($ - %%insn_0041625d) db 0
    %%insn_00416262:
    add esp,0xc ; 00416262 83C40C
    %if ($ - %%insn_00416262) > 3
        %error "LONG_00416262"
    %endif
    times 3 - ($ - %%insn_00416262) db 0
    %%insn_00416265:
    pop edi ; 00416265 5F
    %if ($ - %%insn_00416265) > 1
        %error "LONG_00416265"
    %endif
    times 1 - ($ - %%insn_00416265) db 0
    %%insn_00416266:
    pop esi ; 00416266 5E
    %if ($ - %%insn_00416266) > 1
        %error "LONG_00416266"
    %endif
    times 1 - ($ - %%insn_00416266) db 0
    %%insn_00416267:
    pop ebp ; 00416267 5D
    %if ($ - %%insn_00416267) > 1
        %error "LONG_00416267"
    %endif
    times 1 - ($ - %%insn_00416267) db 0
    %%insn_00416268:
    pop ebx ; 00416268 5B
    %if ($ - %%insn_00416268) > 1
        %error "LONG_00416268"
    %endif
    times 1 - ($ - %%insn_00416268) db 0
    %%insn_00416269:
    ret ; 00416269 C3
    %if ($ - %%insn_00416269) > 1
        %error "LONG_00416269"
    %endif
    times 1 - ($ - %%insn_00416269) db 0
    %%insn_0041626a:
    mov edx,[0x4211d4] ; 0041626A 8B15D4114200
    %if ($ - %%insn_0041626a) > 6
        %error "LONG_0041626A"
    %endif
    times 6 - ($ - %%insn_0041626a) db 0
    %%insn_00416270:
    mov eax,[esp+0x20] ; 00416270 8B442420
    %if ($ - %%insn_00416270) > 4
        %error "LONG_00416270"
    %endif
    times 4 - ($ - %%insn_00416270) db 0
    %%insn_00416274:
    mov ecx,[esp+0x1c] ; 00416274 8B4C241C
    %if ($ - %%insn_00416274) > 4
        %error "LONG_00416274"
    %endif
    times 4 - ($ - %%insn_00416274) db 0
    %%insn_00416278:
    mov [0x4211d8],edx ; 00416278 8915D8114200
    %if ($ - %%insn_00416278) > 6
        %error "LONG_00416278"
    %endif
    times 6 - ($ - %%insn_00416278) db 0
    %%insn_0041627e:
    mov edx,[esp+0x18] ; 0041627E 8B542418
    %if ($ - %%insn_0041627e) > 4
        %error "LONG_0041627E"
    %endif
    times 4 - ($ - %%insn_0041627e) db 0
    %%insn_00416282:
    push eax ; 00416282 50
    %if ($ - %%insn_00416282) > 1
        %error "LONG_00416282"
    %endif
    times 1 - ($ - %%insn_00416282) db 0
    %%insn_00416283:
    push ecx ; 00416283 51
    %if ($ - %%insn_00416283) > 1
        %error "LONG_00416283"
    %endif
    times 1 - ($ - %%insn_00416283) db 0
    %%insn_00416284:
    push dword 0x2 ; 00416284 6A02
    %if ($ - %%insn_00416284) > 2
        %error "LONG_00416284"
    %endif
    times 2 - ($ - %%insn_00416284) db 0
    %%insn_00416286:
    mov eax,[edx] ; 00416286 8B02
    %if ($ - %%insn_00416286) > 2
        %error "LONG_00416286"
    %endif
    times 2 - ($ - %%insn_00416286) db 0
    %%insn_00416288:
    push eax ; 00416288 50
    %if ($ - %%insn_00416288) > 1
        %error "LONG_00416288"
    %endif
    times 1 - ($ - %%insn_00416288) db 0
    %%insn_00416289:
    call 0x416590 ; 00416289 E802030000
    %if ($ - %%insn_00416289) > 5
        %error "LONG_00416289"
    %endif
    times 5 - ($ - %%insn_00416289) db 0
    %%insn_0041628e:
    add esp,0x10 ; 0041628E 83C410
    %if ($ - %%insn_0041628e) > 3
        %error "LONG_0041628E"
    %endif
    times 3 - ($ - %%insn_0041628e) db 0
    %%insn_00416291:
    pop edi ; 00416291 5F
    %if ($ - %%insn_00416291) > 1
        %error "LONG_00416291"
    %endif
    times 1 - ($ - %%insn_00416291) db 0
    %%insn_00416292:
    pop esi ; 00416292 5E
    %if ($ - %%insn_00416292) > 1
        %error "LONG_00416292"
    %endif
    times 1 - ($ - %%insn_00416292) db 0
    %%insn_00416293:
    pop ebp ; 00416293 5D
    %if ($ - %%insn_00416293) > 1
        %error "LONG_00416293"
    %endif
    times 1 - ($ - %%insn_00416293) db 0
    %%insn_00416294:
    pop ebx ; 00416294 5B
    %if ($ - %%insn_00416294) > 1
        %error "LONG_00416294"
    %endif
    times 1 - ($ - %%insn_00416294) db 0
    %%insn_00416295:
    ret ; 00416295 C3
    %if ($ - %%insn_00416295) > 1
        %error "LONG_00416295"
    %endif
    times 1 - ($ - %%insn_00416295) db 0
    %%insn_00416296:
    mov ecx,[0x4211d4] ; 00416296 8B0DD4114200
    %if ($ - %%insn_00416296) > 6
        %error "LONG_00416296"
    %endif
    times 6 - ($ - %%insn_00416296) db 0
    %%insn_0041629c:
    mov eax,[esp+0x18] ; 0041629C 8B442418
    %if ($ - %%insn_0041629c) > 4
        %error "LONG_0041629C"
    %endif
    times 4 - ($ - %%insn_0041629c) db 0
    %%insn_004162a0:
    mov [0x4211d8],ecx ; 004162A0 890DD8114200
    %if ($ - %%insn_004162a0) > 6
        %error "LONG_004162A0"
    %endif
    times 6 - ($ - %%insn_004162a0) db 0
    %%insn_004162a6:
    mov esi,[eax+0x18] ; 004162A6 8B7018
    %if ($ - %%insn_004162a6) > 3
        %error "LONG_004162A6"
    %endif
    times 3 - ($ - %%insn_004162a6) db 0
    %%insn_004162a9:
    jmp short 0x4162f7 ; 004162A9 EB4C
    %if ($ - %%insn_004162a9) > 2
        %error "LONG_004162A9"
    %endif
    times 2 - ($ - %%insn_004162a9) db 0
    %%insn_004162ab:
    mov edx,[0x4211d4] ; 004162AB 8B15D4114200
    %if ($ - %%insn_004162ab) > 6
        %error "LONG_004162AB"
    %endif
    times 6 - ($ - %%insn_004162ab) db 0
    %%insn_004162b1:
    mov eax,[esp+0x20] ; 004162B1 8B442420
    %if ($ - %%insn_004162b1) > 4
        %error "LONG_004162B1"
    %endif
    times 4 - ($ - %%insn_004162b1) db 0
    %%insn_004162b5:
    mov ecx,[esp+0x1c] ; 004162B5 8B4C241C
    %if ($ - %%insn_004162b5) > 4
        %error "LONG_004162B5"
    %endif
    times 4 - ($ - %%insn_004162b5) db 0
    %%insn_004162b9:
    mov [0x4211d8],edx ; 004162B9 8915D8114200
    %if ($ - %%insn_004162b9) > 6
        %error "LONG_004162B9"
    %endif
    times 6 - ($ - %%insn_004162b9) db 0
    %%insn_004162bf:
    mov edx,[esp+0x18] ; 004162BF 8B542418
    %if ($ - %%insn_004162bf) > 4
        %error "LONG_004162BF"
    %endif
    times 4 - ($ - %%insn_004162bf) db 0
    %%insn_004162c3:
    push eax ; 004162C3 50
    %if ($ - %%insn_004162c3) > 1
        %error "LONG_004162C3"
    %endif
    times 1 - ($ - %%insn_004162c3) db 0
    %%insn_004162c4:
    push ecx ; 004162C4 51
    %if ($ - %%insn_004162c4) > 1
        %error "LONG_004162C4"
    %endif
    times 1 - ($ - %%insn_004162c4) db 0
    %%insn_004162c5:
    push dword 0x1 ; 004162C5 6A01
    %if ($ - %%insn_004162c5) > 2
        %error "LONG_004162C5"
    %endif
    times 2 - ($ - %%insn_004162c5) db 0
    %%insn_004162c7:
    mov eax,[edx+0x18] ; 004162C7 8B4218
    %if ($ - %%insn_004162c7) > 3
        %error "LONG_004162C7"
    %endif
    times 3 - ($ - %%insn_004162c7) db 0
    %%insn_004162ca:
    push eax ; 004162CA 50
    %if ($ - %%insn_004162ca) > 1
        %error "LONG_004162CA"
    %endif
    times 1 - ($ - %%insn_004162ca) db 0
    %%insn_004162cb:
    call 0x416590 ; 004162CB E8C0020000
    %if ($ - %%insn_004162cb) > 5
        %error "LONG_004162CB"
    %endif
    times 5 - ($ - %%insn_004162cb) db 0
    %%insn_004162d0:
    add esp,0x10 ; 004162D0 83C410
    %if ($ - %%insn_004162d0) > 3
        %error "LONG_004162D0"
    %endif
    times 3 - ($ - %%insn_004162d0) db 0
    %%insn_004162d3:
    pop edi ; 004162D3 5F
    %if ($ - %%insn_004162d3) > 1
        %error "LONG_004162D3"
    %endif
    times 1 - ($ - %%insn_004162d3) db 0
    %%insn_004162d4:
    pop esi ; 004162D4 5E
    %if ($ - %%insn_004162d4) > 1
        %error "LONG_004162D4"
    %endif
    times 1 - ($ - %%insn_004162d4) db 0
    %%insn_004162d5:
    pop ebp ; 004162D5 5D
    %if ($ - %%insn_004162d5) > 1
        %error "LONG_004162D5"
    %endif
    times 1 - ($ - %%insn_004162d5) db 0
    %%insn_004162d6:
    pop ebx ; 004162D6 5B
    %if ($ - %%insn_004162d6) > 1
        %error "LONG_004162D6"
    %endif
    times 1 - ($ - %%insn_004162d6) db 0
    %%insn_004162d7:
    ret ; 004162D7 C3
    %if ($ - %%insn_004162d7) > 1
        %error "LONG_004162D7"
    %endif
    times 1 - ($ - %%insn_004162d7) db 0
    %%insn_004162d8:
    mov ecx,[0x4211d4] ; 004162D8 8B0DD4114200
    %if ($ - %%insn_004162d8) > 6
        %error "LONG_004162D8"
    %endif
    times 6 - ($ - %%insn_004162d8) db 0
    %%insn_004162de:
    mov eax,[esp+0x18] ; 004162DE 8B442418
    %if ($ - %%insn_004162de) > 4
        %error "LONG_004162DE"
    %endif
    times 4 - ($ - %%insn_004162de) db 0
    %%insn_004162e2:
    mov [0x4211d8],ecx ; 004162E2 890DD8114200
    %if ($ - %%insn_004162e2) > 6
        %error "LONG_004162E2"
    %endif
    times 6 - ($ - %%insn_004162e2) db 0
    %%insn_004162e8:
    mov esi,[eax+0x18] ; 004162E8 8B7018
    %if ($ - %%insn_004162e8) > 3
        %error "LONG_004162E8"
    %endif
    times 3 - ($ - %%insn_004162e8) db 0
    %%insn_004162eb:
    test esi,esi ; 004162EB 85F6
    %if ($ - %%insn_004162eb) > 2
        %error "LONG_004162EB"
    %endif
    times 2 - ($ - %%insn_004162eb) db 0
    %%insn_004162ed:
    jnz short 0x4162f6 ; 004162ED 7507
    %if ($ - %%insn_004162ed) > 2
        %error "LONG_004162ED"
    %endif
    times 2 - ($ - %%insn_004162ed) db 0
    %%insn_004162ef:
    mov esi,0x6 ; 004162EF BE06000000
    %if ($ - %%insn_004162ef) > 5
        %error "LONG_004162EF"
    %endif
    times 5 - ($ - %%insn_004162ef) db 0
    %%insn_004162f4:
    jmp short 0x4162f7 ; 004162F4 EB01
    %if ($ - %%insn_004162f4) > 2
        %error "LONG_004162F4"
    %endif
    times 2 - ($ - %%insn_004162f4) db 0
    %%insn_004162f6:
    dec esi ; 004162F6 4E
    %if ($ - %%insn_004162f6) > 1
        %error "LONG_004162F6"
    %endif
    times 1 - ($ - %%insn_004162f6) db 0
    %%insn_004162f7:
    mov ecx,[eax+0x1c] ; 004162F7 8B481C
    %if ($ - %%insn_004162f7) > 3
        %error "LONG_004162F7"
    %endif
    times 3 - ($ - %%insn_004162f7) db 0
    db 0x3B, 0xCE ; 004162FA 3BCE | cmp ecx,esi | encoding preserved
    %%insn_004162fc:
    jnl short 0x416302 ; 004162FC 7D04
    %if ($ - %%insn_004162fc) > 2
        %error "LONG_004162FC"
    %endif
    times 2 - ($ - %%insn_004162fc) db 0
    db 0x33, 0xFF ; 004162FE 33FF | xor edi,edi | encoding preserved
    %%insn_00416300:
    jmp short 0x416326 ; 00416300 EB24
    %if ($ - %%insn_00416300) > 2
        %error "LONG_00416300"
    %endif
    times 2 - ($ - %%insn_00416300) db 0
    %%insn_00416302:
    mov eax,0x92492493 ; 00416302 B893244992
    %if ($ - %%insn_00416302) > 5
        %error "LONG_00416302"
    %endif
    times 5 - ($ - %%insn_00416302) db 0
    %%insn_00416307:
    imul ecx ; 00416307 F7E9
    %if ($ - %%insn_00416307) > 2
        %error "LONG_00416307"
    %endif
    times 2 - ($ - %%insn_00416307) db 0
    db 0x03, 0xD1 ; 00416309 03D1 | add edx,ecx | encoding preserved
    %%insn_0041630b:
    sar edx,byte 0x2 ; 0041630B C1FA02
    %if ($ - %%insn_0041630b) > 3
        %error "LONG_0041630B"
    %endif
    times 3 - ($ - %%insn_0041630b) db 0
    db 0x8B, 0xC2 ; 0041630E 8BC2 | mov eax,edx | encoding preserved
    %%insn_00416310:
    shr eax,byte 0x1f ; 00416310 C1E81F
    %if ($ - %%insn_00416310) > 3
        %error "LONG_00416310"
    %endif
    times 3 - ($ - %%insn_00416310) db 0
    db 0x03, 0xD0 ; 00416313 03D0 | add edx,eax | encoding preserved
    db 0x8B, 0xC1 ; 00416315 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xFA ; 00416317 8BFA | mov edi,edx | encoding preserved
    %%insn_00416319:
    mov ecx,0x7 ; 00416319 B907000000
    %if ($ - %%insn_00416319) > 5
        %error "LONG_00416319"
    %endif
    times 5 - ($ - %%insn_00416319) db 0
    %%insn_0041631e:
    cdq ; 0041631E 99
    %if ($ - %%insn_0041631e) > 1
        %error "LONG_0041631E"
    %endif
    times 1 - ($ - %%insn_0041631e) db 0
    %%insn_0041631f:
    idiv ecx ; 0041631F F7F9
    %if ($ - %%insn_0041631f) > 2
        %error "LONG_0041631F"
    %endif
    times 2 - ($ - %%insn_0041631f) db 0
    db 0x3B, 0xD6 ; 00416321 3BD6 | cmp edx,esi | encoding preserved
    %%insn_00416323:
    jl short 0x416326 ; 00416323 7C01
    %if ($ - %%insn_00416323) > 2
        %error "LONG_00416323"
    %endif
    times 2 - ($ - %%insn_00416323) db 0
    %%insn_00416325:
    inc edi ; 00416325 47
    %if ($ - %%insn_00416325) > 1
        %error "LONG_00416325"
    %endif
    times 1 - ($ - %%insn_00416325) db 0
    %%insn_00416326:
    mov edx,[esp+0x20] ; 00416326 8B542420
    %if ($ - %%insn_00416326) > 4
        %error "LONG_00416326"
    %endif
    times 4 - ($ - %%insn_00416326) db 0
    %%insn_0041632a:
    mov eax,[esp+0x1c] ; 0041632A 8B44241C
    %if ($ - %%insn_0041632a) > 4
        %error "LONG_0041632A"
    %endif
    times 4 - ($ - %%insn_0041632a) db 0
    %%insn_0041632e:
    push edx ; 0041632E 52
    %if ($ - %%insn_0041632e) > 1
        %error "LONG_0041632E"
    %endif
    times 1 - ($ - %%insn_0041632e) db 0
    %%insn_0041632f:
    push eax ; 0041632F 50
    %if ($ - %%insn_0041632f) > 1
        %error "LONG_0041632F"
    %endif
    times 1 - ($ - %%insn_0041632f) db 0
    %%insn_00416330:
    push dword 0x2 ; 00416330 6A02
    %if ($ - %%insn_00416330) > 2
        %error "LONG_00416330"
    %endif
    times 2 - ($ - %%insn_00416330) db 0
    %%insn_00416332:
    push edi ; 00416332 57
    %if ($ - %%insn_00416332) > 1
        %error "LONG_00416332"
    %endif
    times 1 - ($ - %%insn_00416332) db 0
    %%insn_00416333:
    call 0x416590 ; 00416333 E858020000
    %if ($ - %%insn_00416333) > 5
        %error "LONG_00416333"
    %endif
    times 5 - ($ - %%insn_00416333) db 0
    %%insn_00416338:
    add esp,0x10 ; 00416338 83C410
    %if ($ - %%insn_00416338) > 3
        %error "LONG_00416338"
    %endif
    times 3 - ($ - %%insn_00416338) db 0
    %%insn_0041633b:
    pop edi ; 0041633B 5F
    %if ($ - %%insn_0041633b) > 1
        %error "LONG_0041633B"
    %endif
    times 1 - ($ - %%insn_0041633b) db 0
    %%insn_0041633c:
    pop esi ; 0041633C 5E
    %if ($ - %%insn_0041633c) > 1
        %error "LONG_0041633C"
    %endif
    times 1 - ($ - %%insn_0041633c) db 0
    %%insn_0041633d:
    pop ebp ; 0041633D 5D
    %if ($ - %%insn_0041633d) > 1
        %error "LONG_0041633D"
    %endif
    times 1 - ($ - %%insn_0041633d) db 0
    %%insn_0041633e:
    pop ebx ; 0041633E 5B
    %if ($ - %%insn_0041633e) > 1
        %error "LONG_0041633E"
    %endif
    times 1 - ($ - %%insn_0041633e) db 0
    %%insn_0041633f:
    ret ; 0041633F C3
    %if ($ - %%insn_0041633f) > 1
        %error "LONG_0041633F"
    %endif
    times 1 - ($ - %%insn_0041633f) db 0
    %%insn_00416340:
    mov eax,[0x4211d4] ; 00416340 A1D4114200
    %if ($ - %%insn_00416340) > 5
        %error "LONG_00416340"
    %endif
    times 5 - ($ - %%insn_00416340) db 0
    %%insn_00416345:
    test eax,eax ; 00416345 85C0
    %if ($ - %%insn_00416345) > 2
        %error "LONG_00416345"
    %endif
    times 2 - ($ - %%insn_00416345) db 0
    %%insn_00416347:
    jz short 0x41637b ; 00416347 7432
    %if ($ - %%insn_00416347) > 2
        %error "LONG_00416347"
    %endif
    times 2 - ($ - %%insn_00416347) db 0
    %%insn_00416349:
    mov eax,[esp+0x24] ; 00416349 8B442424
    %if ($ - %%insn_00416349) > 4
        %error "LONG_00416349"
    %endif
    times 4 - ($ - %%insn_00416349) db 0
    %%insn_0041634d:
    mov ecx,[esp+0x20] ; 0041634D 8B4C2420
    %if ($ - %%insn_0041634d) > 4
        %error "LONG_0041634D"
    %endif
    times 4 - ($ - %%insn_0041634d) db 0
    %%insn_00416351:
    mov edx,[esp+0x1c] ; 00416351 8B54241C
    %if ($ - %%insn_00416351) > 4
        %error "LONG_00416351"
    %endif
    times 4 - ($ - %%insn_00416351) db 0
    %%insn_00416355:
    push eax ; 00416355 50
    %if ($ - %%insn_00416355) > 1
        %error "LONG_00416355"
    %endif
    times 1 - ($ - %%insn_00416355) db 0
    %%insn_00416356:
    push ecx ; 00416356 51
    %if ($ - %%insn_00416356) > 1
        %error "LONG_00416356"
    %endif
    times 1 - ($ - %%insn_00416356) db 0
    %%insn_00416357:
    mov ecx,[esp+0x20] ; 00416357 8B4C2420
    %if ($ - %%insn_00416357) > 4
        %error "LONG_00416357"
    %endif
    times 4 - ($ - %%insn_00416357) db 0
    %%insn_0041635b:
    mov dword [0x4211d4],0x0 ; 0041635B C705D411420000000000
    %if ($ - %%insn_0041635b) > 10
        %error "LONG_0041635B"
    %endif
    times 10 - ($ - %%insn_0041635b) db 0
    %%insn_00416365:
    push edx ; 00416365 52
    %if ($ - %%insn_00416365) > 1
        %error "LONG_00416365"
    %endif
    times 1 - ($ - %%insn_00416365) db 0
    %%insn_00416366:
    mov edx,[eax+0xa4] ; 00416366 8B90A4000000
    %if ($ - %%insn_00416366) > 6
        %error "LONG_00416366"
    %endif
    times 6 - ($ - %%insn_00416366) db 0
    %%insn_0041636c:
    push ecx ; 0041636C 51
    %if ($ - %%insn_0041636c) > 1
        %error "LONG_0041636C"
    %endif
    times 1 - ($ - %%insn_0041636c) db 0
    %%insn_0041636d:
    push edx ; 0041636D 52
    %if ($ - %%insn_0041636d) > 1
        %error "LONG_0041636D"
    %endif
    times 1 - ($ - %%insn_0041636d) db 0
    %%insn_0041636e:
    call 0x4166a0 ; 0041636E E82D030000
    %if ($ - %%insn_0041636e) > 5
        %error "LONG_0041636E"
    %endif
    times 5 - ($ - %%insn_0041636e) db 0
    %%insn_00416373:
    add esp,0x14 ; 00416373 83C414
    %if ($ - %%insn_00416373) > 3
        %error "LONG_00416373"
    %endif
    times 3 - ($ - %%insn_00416373) db 0
    %%insn_00416376:
    pop edi ; 00416376 5F
    %if ($ - %%insn_00416376) > 1
        %error "LONG_00416376"
    %endif
    times 1 - ($ - %%insn_00416376) db 0
    %%insn_00416377:
    pop esi ; 00416377 5E
    %if ($ - %%insn_00416377) > 1
        %error "LONG_00416377"
    %endif
    times 1 - ($ - %%insn_00416377) db 0
    %%insn_00416378:
    pop ebp ; 00416378 5D
    %if ($ - %%insn_00416378) > 1
        %error "LONG_00416378"
    %endif
    times 1 - ($ - %%insn_00416378) db 0
    %%insn_00416379:
    pop ebx ; 00416379 5B
    %if ($ - %%insn_00416379) > 1
        %error "LONG_00416379"
    %endif
    times 1 - ($ - %%insn_00416379) db 0
    %%insn_0041637a:
    ret ; 0041637A C3
    %if ($ - %%insn_0041637a) > 1
        %error "LONG_0041637A"
    %endif
    times 1 - ($ - %%insn_0041637a) db 0
    %%insn_0041637b:
    mov eax,[esp+0x24] ; 0041637B 8B442424
    %if ($ - %%insn_0041637b) > 4
        %error "LONG_0041637B"
    %endif
    times 4 - ($ - %%insn_0041637b) db 0
    %%insn_0041637f:
    mov ecx,[esp+0x20] ; 0041637F 8B4C2420
    %if ($ - %%insn_0041637f) > 4
        %error "LONG_0041637F"
    %endif
    times 4 - ($ - %%insn_0041637f) db 0
    %%insn_00416383:
    mov edx,[esp+0x1c] ; 00416383 8B54241C
    %if ($ - %%insn_00416383) > 4
        %error "LONG_00416383"
    %endif
    times 4 - ($ - %%insn_00416383) db 0
    %%insn_00416387:
    push eax ; 00416387 50
    %if ($ - %%insn_00416387) > 1
        %error "LONG_00416387"
    %endif
    times 1 - ($ - %%insn_00416387) db 0
    %%insn_00416388:
    push ecx ; 00416388 51
    %if ($ - %%insn_00416388) > 1
        %error "LONG_00416388"
    %endif
    times 1 - ($ - %%insn_00416388) db 0
    %%insn_00416389:
    mov ecx,[esp+0x20] ; 00416389 8B4C2420
    %if ($ - %%insn_00416389) > 4
        %error "LONG_00416389"
    %endif
    times 4 - ($ - %%insn_00416389) db 0
    %%insn_0041638d:
    push edx ; 0041638D 52
    %if ($ - %%insn_0041638d) > 1
        %error "LONG_0041638D"
    %endif
    times 1 - ($ - %%insn_0041638d) db 0
    %%insn_0041638e:
    mov edx,[eax+0xa0] ; 0041638E 8B90A0000000
    %if ($ - %%insn_0041638e) > 6
        %error "LONG_0041638E"
    %endif
    times 6 - ($ - %%insn_0041638e) db 0
    %%insn_00416394:
    push ecx ; 00416394 51
    %if ($ - %%insn_00416394) > 1
        %error "LONG_00416394"
    %endif
    times 1 - ($ - %%insn_00416394) db 0
    %%insn_00416395:
    push edx ; 00416395 52
    %if ($ - %%insn_00416395) > 1
        %error "LONG_00416395"
    %endif
    times 1 - ($ - %%insn_00416395) db 0
    %%insn_00416396:
    call 0x4166a0 ; 00416396 E805030000
    %if ($ - %%insn_00416396) > 5
        %error "LONG_00416396"
    %endif
    times 5 - ($ - %%insn_00416396) db 0
    %%insn_0041639b:
    add esp,0x14 ; 0041639B 83C414
    %if ($ - %%insn_0041639b) > 3
        %error "LONG_0041639B"
    %endif
    times 3 - ($ - %%insn_0041639b) db 0
    %%insn_0041639e:
    pop edi ; 0041639E 5F
    %if ($ - %%insn_0041639e) > 1
        %error "LONG_0041639E"
    %endif
    times 1 - ($ - %%insn_0041639e) db 0
    %%insn_0041639f:
    pop esi ; 0041639F 5E
    %if ($ - %%insn_0041639f) > 1
        %error "LONG_0041639F"
    %endif
    times 1 - ($ - %%insn_0041639f) db 0
    %%insn_004163a0:
    pop ebp ; 004163A0 5D
    %if ($ - %%insn_004163a0) > 1
        %error "LONG_004163A0"
    %endif
    times 1 - ($ - %%insn_004163a0) db 0
    %%insn_004163a1:
    pop ebx ; 004163A1 5B
    %if ($ - %%insn_004163a1) > 1
        %error "LONG_004163A1"
    %endif
    times 1 - ($ - %%insn_004163a1) db 0
    %%insn_004163a2:
    ret ; 004163A2 C3
    %if ($ - %%insn_004163a2) > 1
        %error "LONG_004163A2"
    %endif
    times 1 - ($ - %%insn_004163a2) db 0
    %%insn_004163a3:
    mov eax,[esp+0x24] ; 004163A3 8B442424
    %if ($ - %%insn_004163a3) > 4
        %error "LONG_004163A3"
    %endif
    times 4 - ($ - %%insn_004163a3) db 0
    %%insn_004163a7:
    mov ecx,[esp+0x20] ; 004163A7 8B4C2420
    %if ($ - %%insn_004163a7) > 4
        %error "LONG_004163A7"
    %endif
    times 4 - ($ - %%insn_004163a7) db 0
    %%insn_004163ab:
    mov edx,[esp+0x1c] ; 004163AB 8B54241C
    %if ($ - %%insn_004163ab) > 4
        %error "LONG_004163AB"
    %endif
    times 4 - ($ - %%insn_004163ab) db 0
    %%insn_004163af:
    push eax ; 004163AF 50
    %if ($ - %%insn_004163af) > 1
        %error "LONG_004163AF"
    %endif
    times 1 - ($ - %%insn_004163af) db 0
    %%insn_004163b0:
    push ecx ; 004163B0 51
    %if ($ - %%insn_004163b0) > 1
        %error "LONG_004163B0"
    %endif
    times 1 - ($ - %%insn_004163b0) db 0
    %%insn_004163b1:
    mov ecx,[esp+0x20] ; 004163B1 8B4C2420
    %if ($ - %%insn_004163b1) > 4
        %error "LONG_004163B1"
    %endif
    times 4 - ($ - %%insn_004163b1) db 0
    %%insn_004163b5:
    mov dword [0x4211d4],0x0 ; 004163B5 C705D411420000000000
    %if ($ - %%insn_004163b5) > 10
        %error "LONG_004163B5"
    %endif
    times 10 - ($ - %%insn_004163b5) db 0
    %%insn_004163bf:
    push edx ; 004163BF 52
    %if ($ - %%insn_004163bf) > 1
        %error "LONG_004163BF"
    %endif
    times 1 - ($ - %%insn_004163bf) db 0
    %%insn_004163c0:
    mov edx,[eax+0xa8] ; 004163C0 8B90A8000000
    %if ($ - %%insn_004163c0) > 6
        %error "LONG_004163C0"
    %endif
    times 6 - ($ - %%insn_004163c0) db 0
    %%insn_004163c6:
    push ecx ; 004163C6 51
    %if ($ - %%insn_004163c6) > 1
        %error "LONG_004163C6"
    %endif
    times 1 - ($ - %%insn_004163c6) db 0
    %%insn_004163c7:
    push edx ; 004163C7 52
    %if ($ - %%insn_004163c7) > 1
        %error "LONG_004163C7"
    %endif
    times 1 - ($ - %%insn_004163c7) db 0
    %%insn_004163c8:
    call 0x4166a0 ; 004163C8 E8D3020000
    %if ($ - %%insn_004163c8) > 5
        %error "LONG_004163C8"
    %endif
    times 5 - ($ - %%insn_004163c8) db 0
    %%insn_004163cd:
    add esp,0x14 ; 004163CD 83C414
    %if ($ - %%insn_004163cd) > 3
        %error "LONG_004163CD"
    %endif
    times 3 - ($ - %%insn_004163cd) db 0
    %%insn_004163d0:
    pop edi ; 004163D0 5F
    %if ($ - %%insn_004163d0) > 1
        %error "LONG_004163D0"
    %endif
    times 1 - ($ - %%insn_004163d0) db 0
    %%insn_004163d1:
    pop esi ; 004163D1 5E
    %if ($ - %%insn_004163d1) > 1
        %error "LONG_004163D1"
    %endif
    times 1 - ($ - %%insn_004163d1) db 0
    %%insn_004163d2:
    pop ebp ; 004163D2 5D
    %if ($ - %%insn_004163d2) > 1
        %error "LONG_004163D2"
    %endif
    times 1 - ($ - %%insn_004163d2) db 0
    %%insn_004163d3:
    pop ebx ; 004163D3 5B
    %if ($ - %%insn_004163d3) > 1
        %error "LONG_004163D3"
    %endif
    times 1 - ($ - %%insn_004163d3) db 0
    %%insn_004163d4:
    ret ; 004163D4 C3
    %if ($ - %%insn_004163d4) > 1
        %error "LONG_004163D4"
    %endif
    times 1 - ($ - %%insn_004163d4) db 0
    %%insn_004163d5:
    mov eax,[0x4211d4] ; 004163D5 A1D4114200
    %if ($ - %%insn_004163d5) > 5
        %error "LONG_004163D5"
    %endif
    times 5 - ($ - %%insn_004163d5) db 0
    %%insn_004163da:
    mov ecx,[esp+0x20] ; 004163DA 8B4C2420
    %if ($ - %%insn_004163da) > 4
        %error "LONG_004163DA"
    %endif
    times 4 - ($ - %%insn_004163da) db 0
    %%insn_004163de:
    mov edx,[esp+0x1c] ; 004163DE 8B54241C
    %if ($ - %%insn_004163de) > 4
        %error "LONG_004163DE"
    %endif
    times 4 - ($ - %%insn_004163de) db 0
    %%insn_004163e2:
    mov [0x4211d8],eax ; 004163E2 A3D8114200
    %if ($ - %%insn_004163e2) > 5
        %error "LONG_004163E2"
    %endif
    times 5 - ($ - %%insn_004163e2) db 0
    %%insn_004163e7:
    mov eax,[esp+0x18] ; 004163E7 8B442418
    %if ($ - %%insn_004163e7) > 4
        %error "LONG_004163E7"
    %endif
    times 4 - ($ - %%insn_004163e7) db 0
    %%insn_004163eb:
    push ecx ; 004163EB 51
    %if ($ - %%insn_004163eb) > 1
        %error "LONG_004163EB"
    %endif
    times 1 - ($ - %%insn_004163eb) db 0
    %%insn_004163ec:
    push edx ; 004163EC 52
    %if ($ - %%insn_004163ec) > 1
        %error "LONG_004163EC"
    %endif
    times 1 - ($ - %%insn_004163ec) db 0
    %%insn_004163ed:
    mov ecx,0x64 ; 004163ED B964000000
    %if ($ - %%insn_004163ed) > 5
        %error "LONG_004163ED"
    %endif
    times 5 - ($ - %%insn_004163ed) db 0
    %%insn_004163f2:
    mov eax,[eax+0x14] ; 004163F2 8B4014
    %if ($ - %%insn_004163f2) > 3
        %error "LONG_004163F2"
    %endif
    times 3 - ($ - %%insn_004163f2) db 0
    %%insn_004163f5:
    push dword 0x2 ; 004163F5 6A02
    %if ($ - %%insn_004163f5) > 2
        %error "LONG_004163F5"
    %endif
    times 2 - ($ - %%insn_004163f5) db 0
    %%insn_004163f7:
    cdq ; 004163F7 99
    %if ($ - %%insn_004163f7) > 1
        %error "LONG_004163F7"
    %endif
    times 1 - ($ - %%insn_004163f7) db 0
    %%insn_004163f8:
    idiv ecx ; 004163F8 F7F9
    %if ($ - %%insn_004163f8) > 2
        %error "LONG_004163F8"
    %endif
    times 2 - ($ - %%insn_004163f8) db 0
    %%insn_004163fa:
    push edx ; 004163FA 52
    %if ($ - %%insn_004163fa) > 1
        %error "LONG_004163FA"
    %endif
    times 1 - ($ - %%insn_004163fa) db 0
    %%insn_004163fb:
    call 0x416590 ; 004163FB E890010000
    %if ($ - %%insn_004163fb) > 5
        %error "LONG_004163FB"
    %endif
    times 5 - ($ - %%insn_004163fb) db 0
    %%insn_00416400:
    add esp,0x10 ; 00416400 83C410
    %if ($ - %%insn_00416400) > 3
        %error "LONG_00416400"
    %endif
    times 3 - ($ - %%insn_00416400) db 0
    %%insn_00416403:
    pop edi ; 00416403 5F
    %if ($ - %%insn_00416403) > 1
        %error "LONG_00416403"
    %endif
    times 1 - ($ - %%insn_00416403) db 0
    %%insn_00416404:
    pop esi ; 00416404 5E
    %if ($ - %%insn_00416404) > 1
        %error "LONG_00416404"
    %endif
    times 1 - ($ - %%insn_00416404) db 0
    %%insn_00416405:
    pop ebp ; 00416405 5D
    %if ($ - %%insn_00416405) > 1
        %error "LONG_00416405"
    %endif
    times 1 - ($ - %%insn_00416405) db 0
    %%insn_00416406:
    pop ebx ; 00416406 5B
    %if ($ - %%insn_00416406) > 1
        %error "LONG_00416406"
    %endif
    times 1 - ($ - %%insn_00416406) db 0
    %%insn_00416407:
    ret ; 00416407 C3
    %if ($ - %%insn_00416407) > 1
        %error "LONG_00416407"
    %endif
    times 1 - ($ - %%insn_00416407) db 0
    %%insn_00416408:
    mov edx,[0x4211d4] ; 00416408 8B15D4114200
    %if ($ - %%insn_00416408) > 6
        %error "LONG_00416408"
    %endif
    times 6 - ($ - %%insn_00416408) db 0
    %%insn_0041640e:
    mov eax,[esp+0x18] ; 0041640E 8B442418
    %if ($ - %%insn_0041640e) > 4
        %error "LONG_0041640E"
    %endif
    times 4 - ($ - %%insn_0041640e) db 0
    %%insn_00416412:
    mov [0x4211d8],edx ; 00416412 8915D8114200
    %if ($ - %%insn_00416412) > 6
        %error "LONG_00416412"
    %endif
    times 6 - ($ - %%insn_00416412) db 0
    %%insn_00416418:
    mov edx,[esp+0x20] ; 00416418 8B542420
    %if ($ - %%insn_00416418) > 4
        %error "LONG_00416418"
    %endif
    times 4 - ($ - %%insn_00416418) db 0
    %%insn_0041641c:
    mov ecx,[eax+0x14] ; 0041641C 8B4814
    %if ($ - %%insn_0041641c) > 3
        %error "LONG_0041641C"
    %endif
    times 3 - ($ - %%insn_0041641c) db 0
    %%insn_0041641f:
    mov eax,[esp+0x1c] ; 0041641F 8B44241C
    %if ($ - %%insn_0041641f) > 4
        %error "LONG_0041641F"
    %endif
    times 4 - ($ - %%insn_0041641f) db 0
    %%insn_00416423:
    push edx ; 00416423 52
    %if ($ - %%insn_00416423) > 1
        %error "LONG_00416423"
    %endif
    times 1 - ($ - %%insn_00416423) db 0
    %%insn_00416424:
    push eax ; 00416424 50
    %if ($ - %%insn_00416424) > 1
        %error "LONG_00416424"
    %endif
    times 1 - ($ - %%insn_00416424) db 0
    %%insn_00416425:
    mov eax,0x51eb851f ; 00416425 B81F85EB51
    %if ($ - %%insn_00416425) > 5
        %error "LONG_00416425"
    %endif
    times 5 - ($ - %%insn_00416425) db 0
    %%insn_0041642a:
    push dword 0x4 ; 0041642A 6A04
    %if ($ - %%insn_0041642a) > 2
        %error "LONG_0041642A"
    %endif
    times 2 - ($ - %%insn_0041642a) db 0
    %%insn_0041642c:
    imul ecx ; 0041642C F7E9
    %if ($ - %%insn_0041642c) > 2
        %error "LONG_0041642C"
    %endif
    times 2 - ($ - %%insn_0041642c) db 0
    %%insn_0041642e:
    sar edx,byte 0x5 ; 0041642E C1FA05
    %if ($ - %%insn_0041642e) > 3
        %error "LONG_0041642E"
    %endif
    times 3 - ($ - %%insn_0041642e) db 0
    db 0x8B, 0xC2 ; 00416431 8BC2 | mov eax,edx | encoding preserved
    %%insn_00416433:
    shr eax,byte 0x1f ; 00416433 C1E81F
    %if ($ - %%insn_00416433) > 3
        %error "LONG_00416433"
    %endif
    times 3 - ($ - %%insn_00416433) db 0
    %%insn_00416436:
    lea eax,[edx+eax+0x13] ; 00416436 8D440213
    %if ($ - %%insn_00416436) > 4
        %error "LONG_00416436"
    %endif
    times 4 - ($ - %%insn_00416436) db 0
    %%insn_0041643a:
    lea eax,[eax+eax*4] ; 0041643A 8D0480
    %if ($ - %%insn_0041643a) > 3
        %error "LONG_0041643A"
    %endif
    times 3 - ($ - %%insn_0041643a) db 0
    %%insn_0041643d:
    lea esi,[eax+eax*4] ; 0041643D 8D3480
    %if ($ - %%insn_0041643d) > 3
        %error "LONG_0041643D"
    %endif
    times 3 - ($ - %%insn_0041643d) db 0
    db 0x8B, 0xC1 ; 00416440 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00416442:
    cdq ; 00416442 99
    %if ($ - %%insn_00416442) > 1
        %error "LONG_00416442"
    %endif
    times 1 - ($ - %%insn_00416442) db 0
    %%insn_00416443:
    mov ecx,0x64 ; 00416443 B964000000
    %if ($ - %%insn_00416443) > 5
        %error "LONG_00416443"
    %endif
    times 5 - ($ - %%insn_00416443) db 0
    %%insn_00416448:
    idiv ecx ; 00416448 F7F9
    %if ($ - %%insn_00416448) > 2
        %error "LONG_00416448"
    %endif
    times 2 - ($ - %%insn_00416448) db 0
    %%insn_0041644a:
    lea edx,[edx+esi*4] ; 0041644A 8D14B2
    %if ($ - %%insn_0041644a) > 3
        %error "LONG_0041644A"
    %endif
    times 3 - ($ - %%insn_0041644a) db 0
    %%insn_0041644d:
    push edx ; 0041644D 52
    %if ($ - %%insn_0041644d) > 1
        %error "LONG_0041644D"
    %endif
    times 1 - ($ - %%insn_0041644d) db 0
    %%insn_0041644e:
    call 0x416590 ; 0041644E E83D010000
    %if ($ - %%insn_0041644e) > 5
        %error "LONG_0041644E"
    %endif
    times 5 - ($ - %%insn_0041644e) db 0
    %%insn_00416453:
    add esp,0x10 ; 00416453 83C410
    %if ($ - %%insn_00416453) > 3
        %error "LONG_00416453"
    %endif
    times 3 - ($ - %%insn_00416453) db 0
    %%insn_00416456:
    pop edi ; 00416456 5F
    %if ($ - %%insn_00416456) > 1
        %error "LONG_00416456"
    %endif
    times 1 - ($ - %%insn_00416456) db 0
    %%insn_00416457:
    pop esi ; 00416457 5E
    %if ($ - %%insn_00416457) > 1
        %error "LONG_00416457"
    %endif
    times 1 - ($ - %%insn_00416457) db 0
    %%insn_00416458:
    pop ebp ; 00416458 5D
    %if ($ - %%insn_00416458) > 1
        %error "LONG_00416458"
    %endif
    times 1 - ($ - %%insn_00416458) db 0
    %%insn_00416459:
    pop ebx ; 00416459 5B
    %if ($ - %%insn_00416459) > 1
        %error "LONG_00416459"
    %endif
    times 1 - ($ - %%insn_00416459) db 0
    %%insn_0041645a:
    ret ; 0041645A C3
    %if ($ - %%insn_0041645a) > 1
        %error "LONG_0041645A"
    %endif
    times 1 - ($ - %%insn_0041645a) db 0
    %%insn_0041645b:
    call 0x417880 ; 0041645B E820140000
    %if ($ - %%insn_0041645b) > 5
        %error "LONG_0041645B"
    %endif
    times 5 - ($ - %%insn_0041645b) db 0
    %%insn_00416460:
    mov eax,[esp+0x20] ; 00416460 8B442420
    %if ($ - %%insn_00416460) > 4
        %error "LONG_00416460"
    %endif
    times 4 - ($ - %%insn_00416460) db 0
    %%insn_00416464:
    mov ecx,[esp+0x1c] ; 00416464 8B4C241C
    %if ($ - %%insn_00416464) > 4
        %error "LONG_00416464"
    %endif
    times 4 - ($ - %%insn_00416464) db 0
    %%insn_00416468:
    push eax ; 00416468 50
    %if ($ - %%insn_00416468) > 1
        %error "LONG_00416468"
    %endif
    times 1 - ($ - %%insn_00416468) db 0
    %%insn_00416469:
    mov eax,[esp+0x1c] ; 00416469 8B44241C
    %if ($ - %%insn_00416469) > 4
        %error "LONG_00416469"
    %endif
    times 4 - ($ - %%insn_00416469) db 0
    db 0x33, 0xD2 ; 0041646D 33D2 | xor edx,edx | encoding preserved
    %%insn_0041646f:
    push ecx ; 0041646F 51
    %if ($ - %%insn_0041646f) > 1
        %error "LONG_0041646F"
    %endif
    times 1 - ($ - %%insn_0041646f) db 0
    %%insn_00416470:
    mov esi,[eax+0x20] ; 00416470 8B7020
    %if ($ - %%insn_00416470) > 3
        %error "LONG_00416470"
    %endif
    times 3 - ($ - %%insn_00416470) db 0
    %%insn_00416473:
    test esi,esi ; 00416473 85F6
    %if ($ - %%insn_00416473) > 2
        %error "LONG_00416473"
    %endif
    times 2 - ($ - %%insn_00416473) db 0
    %%insn_00416475:
    setnz dl ; 00416475 0F95C2
    %if ($ - %%insn_00416475) > 3
        %error "LONG_00416475"
    %endif
    times 3 - ($ - %%insn_00416475) db 0
    %%insn_00416478:
    mov ecx,[edx*4+0x41f1e0] ; 00416478 8B0C95E0F14100
    %if ($ - %%insn_00416478) > 7
        %error "LONG_00416478"
    %endif
    times 7 - ($ - %%insn_00416478) db 0
    %%insn_0041647f:
    push ecx ; 0041647F 51
    %if ($ - %%insn_0041647f) > 1
        %error "LONG_0041647F"
    %endif
    times 1 - ($ - %%insn_0041647f) db 0
    %%insn_00416480:
    call 0x416560 ; 00416480 E8DB000000
    %if ($ - %%insn_00416480) > 5
        %error "LONG_00416480"
    %endif
    times 5 - ($ - %%insn_00416480) db 0
    %%insn_00416485:
    add esp,0xc ; 00416485 83C40C
    %if ($ - %%insn_00416485) > 3
        %error "LONG_00416485"
    %endif
    times 3 - ($ - %%insn_00416485) db 0
    %%insn_00416488:
    pop edi ; 00416488 5F
    %if ($ - %%insn_00416488) > 1
        %error "LONG_00416488"
    %endif
    times 1 - ($ - %%insn_00416488) db 0
    %%insn_00416489:
    pop esi ; 00416489 5E
    %if ($ - %%insn_00416489) > 1
        %error "LONG_00416489"
    %endif
    times 1 - ($ - %%insn_00416489) db 0
    %%insn_0041648a:
    pop ebp ; 0041648A 5D
    %if ($ - %%insn_0041648a) > 1
        %error "LONG_0041648A"
    %endif
    times 1 - ($ - %%insn_0041648a) db 0
    %%insn_0041648b:
    pop ebx ; 0041648B 5B
    %if ($ - %%insn_0041648b) > 1
        %error "LONG_0041648B"
    %endif
    times 1 - ($ - %%insn_0041648b) db 0
    %%insn_0041648c:
    ret ; 0041648C C3
    %if ($ - %%insn_0041648c) > 1
        %error "LONG_0041648C"
    %endif
    times 1 - ($ - %%insn_0041648c) db 0
    %%insn_0041648d:
    mov eax,[esp+0x1c] ; 0041648D 8B44241C
    %if ($ - %%insn_0041648d) > 4
        %error "LONG_0041648D"
    %endif
    times 4 - ($ - %%insn_0041648d) db 0
    %%insn_00416491:
    mov edx,[eax] ; 00416491 8B10
    %if ($ - %%insn_00416491) > 2
        %error "LONG_00416491"
    %endif
    times 2 - ($ - %%insn_00416491) db 0
    %%insn_00416493:
    mov byte [edx],0x25 ; 00416493 C60225
    %if ($ - %%insn_00416493) > 3
        %error "LONG_00416493"
    %endif
    times 3 - ($ - %%insn_00416493) db 0
    %%insn_00416496:
    mov edx,[eax] ; 00416496 8B10
    %if ($ - %%insn_00416496) > 2
        %error "LONG_00416496"
    %endif
    times 2 - ($ - %%insn_00416496) db 0
    %%insn_00416498:
    inc edx ; 00416498 42
    %if ($ - %%insn_00416498) > 1
        %error "LONG_00416498"
    %endif
    times 1 - ($ - %%insn_00416498) db 0
    %%insn_00416499:
    mov [eax],edx ; 00416499 8910
    %if ($ - %%insn_00416499) > 2
        %error "LONG_00416499"
    %endif
    times 2 - ($ - %%insn_00416499) db 0
    %%insn_0041649b:
    mov eax,[esp+0x20] ; 0041649B 8B442420
    %if ($ - %%insn_0041649b) > 4
        %error "LONG_0041649B"
    %endif
    times 4 - ($ - %%insn_0041649b) db 0
    %%insn_0041649f:
    dec dword [eax] ; 0041649F FF08
    %if ($ - %%insn_0041649f) > 2
        %error "LONG_0041649F"
    %endif
    times 2 - ($ - %%insn_0041649f) db 0
    %%insn_004164a1:
    pop edi ; 004164A1 5F
    %if ($ - %%insn_004164a1) > 1
        %error "LONG_004164A1"
    %endif
    times 1 - ($ - %%insn_004164a1) db 0
    %%insn_004164a2:
    pop esi ; 004164A2 5E
    %if ($ - %%insn_004164a2) > 1
        %error "LONG_004164A2"
    %endif
    times 1 - ($ - %%insn_004164a2) db 0
    %%insn_004164a3:
    pop ebp ; 004164A3 5D
    %if ($ - %%insn_004164a3) > 1
        %error "LONG_004164A3"
    %endif
    times 1 - ($ - %%insn_004164a3) db 0
    %%insn_004164a4:
    pop ebx ; 004164A4 5B
    %if ($ - %%insn_004164a4) > 1
        %error "LONG_004164A4"
    %endif
    times 1 - ($ - %%insn_004164a4) db 0
    %%insn_004164a5:
    ret ; 004164A5 C3
    %if ($ - %%insn_004164a5) > 1
        %error "LONG_004164A5"
    %endif
    times 1 - ($ - %%insn_004164a5) db 0
    %if ($ - %%fragment_start) != 1254
        %error "function fragment size drift: 00415FC0"
    %endif
%endmacro
