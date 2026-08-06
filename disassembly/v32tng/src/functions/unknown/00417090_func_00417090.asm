; PE virtual entry 00417090
; Ghidra working symbol: FUN_00417090
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00417090_part_00 0
    %%fragment_start:
func_00417090:
    %%insn_00417090:
    mov eax,[0x4211f4] ; 00417090 A1F4114200
    %if ($ - %%insn_00417090) > 5
        %error "LONG_00417090"
    %endif
    times 5 - ($ - %%insn_00417090) db 0
    %%insn_00417095:
    push ebx ; 00417095 53
    %if ($ - %%insn_00417095) > 1
        %error "LONG_00417095"
    %endif
    times 1 - ($ - %%insn_00417095) db 0
    %%insn_00417096:
    push ebp ; 00417096 55
    %if ($ - %%insn_00417096) > 1
        %error "LONG_00417096"
    %endif
    times 1 - ($ - %%insn_00417096) db 0
    %%insn_00417097:
    push esi ; 00417097 56
    %if ($ - %%insn_00417097) > 1
        %error "LONG_00417097"
    %endif
    times 1 - ($ - %%insn_00417097) db 0
    %%insn_00417098:
    mov esi,[0x424468] ; 00417098 8B3568444200
    %if ($ - %%insn_00417098) > 6
        %error "LONG_00417098"
    %endif
    times 6 - ($ - %%insn_00417098) db 0
    %%insn_0041709e:
    push edi ; 0041709E 57
    %if ($ - %%insn_0041709e) > 1
        %error "LONG_0041709E"
    %endif
    times 1 - ($ - %%insn_0041709e) db 0
    %%insn_0041709f:
    test eax,eax ; 0041709F 85C0
    %if ($ - %%insn_0041709f) > 2
        %error "LONG_0041709F"
    %endif
    times 2 - ($ - %%insn_0041709f) db 0
    %%insn_004170a1:
    jnz short 0x4170d8 ; 004170A1 7535
    %if ($ - %%insn_004170a1) > 2
        %error "LONG_004170A1"
    %endif
    times 2 - ($ - %%insn_004170a1) db 0
    %%insn_004170a3:
    push dword 0x0 ; 004170A3 6A00
    %if ($ - %%insn_004170a3) > 2
        %error "LONG_004170A3"
    %endif
    times 2 - ($ - %%insn_004170a3) db 0
    %%insn_004170a5:
    push dword 0x0 ; 004170A5 6A00
    %if ($ - %%insn_004170a5) > 2
        %error "LONG_004170A5"
    %endif
    times 2 - ($ - %%insn_004170a5) db 0
    %%insn_004170a7:
    push dword 0x1 ; 004170A7 6A01
    %if ($ - %%insn_004170a7) > 2
        %error "LONG_004170A7"
    %endif
    times 2 - ($ - %%insn_004170a7) db 0
    %%insn_004170a9:
    push dword 0x0 ; 004170A9 6A00
    %if ($ - %%insn_004170a9) > 2
        %error "LONG_004170A9"
    %endif
    times 2 - ($ - %%insn_004170a9) db 0
    %%insn_004170ab:
    call esi ; 004170AB FFD6
    %if ($ - %%insn_004170ab) > 2
        %error "LONG_004170AB"
    %endif
    times 2 - ($ - %%insn_004170ab) db 0
    %%insn_004170ad:
    test eax,eax ; 004170AD 85C0
    %if ($ - %%insn_004170ad) > 2
        %error "LONG_004170AD"
    %endif
    times 2 - ($ - %%insn_004170ad) db 0
    %%insn_004170af:
    jz short 0x4170b8 ; 004170AF 7407
    %if ($ - %%insn_004170af) > 2
        %error "LONG_004170AF"
    %endif
    times 2 - ($ - %%insn_004170af) db 0
    %%insn_004170b1:
    mov eax,0x1 ; 004170B1 B801000000
    %if ($ - %%insn_004170b1) > 5
        %error "LONG_004170B1"
    %endif
    times 5 - ($ - %%insn_004170b1) db 0
    %%insn_004170b6:
    jmp short 0x4170d3 ; 004170B6 EB1B
    %if ($ - %%insn_004170b6) > 2
        %error "LONG_004170B6"
    %endif
    times 2 - ($ - %%insn_004170b6) db 0
    %%insn_004170b8:
    push dword 0x0 ; 004170B8 6A00
    %if ($ - %%insn_004170b8) > 2
        %error "LONG_004170B8"
    %endif
    times 2 - ($ - %%insn_004170b8) db 0
    %%insn_004170ba:
    push dword 0x0 ; 004170BA 6A00
    %if ($ - %%insn_004170ba) > 2
        %error "LONG_004170BA"
    %endif
    times 2 - ($ - %%insn_004170ba) db 0
    %%insn_004170bc:
    push dword 0x1 ; 004170BC 6A01
    %if ($ - %%insn_004170bc) > 2
        %error "LONG_004170BC"
    %endif
    times 2 - ($ - %%insn_004170bc) db 0
    %%insn_004170be:
    push dword 0x0 ; 004170BE 6A00
    %if ($ - %%insn_004170be) > 2
        %error "LONG_004170BE"
    %endif
    times 2 - ($ - %%insn_004170be) db 0
    %%insn_004170c0:
    call dword near [0x42446c] ; 004170C0 FF156C444200
    %if ($ - %%insn_004170c0) > 6
        %error "LONG_004170C0"
    %endif
    times 6 - ($ - %%insn_004170c0) db 0
    %%insn_004170c6:
    test eax,eax ; 004170C6 85C0
    %if ($ - %%insn_004170c6) > 2
        %error "LONG_004170C6"
    %endif
    times 2 - ($ - %%insn_004170c6) db 0
    %%insn_004170c8:
    jz 0x4171a9 ; 004170C8 0F84DB000000
    %if ($ - %%insn_004170c8) > 6
        %error "LONG_004170C8"
    %endif
    times 6 - ($ - %%insn_004170c8) db 0
    %%insn_004170ce:
    mov eax,0x2 ; 004170CE B802000000
    %if ($ - %%insn_004170ce) > 5
        %error "LONG_004170CE"
    %endif
    times 5 - ($ - %%insn_004170ce) db 0
    %%insn_004170d3:
    mov [0x4211f4],eax ; 004170D3 A3F4114200
    %if ($ - %%insn_004170d3) > 5
        %error "LONG_004170D3"
    %endif
    times 5 - ($ - %%insn_004170d3) db 0
    %%insn_004170d8:
    cmp eax,0x1 ; 004170D8 83F801
    %if ($ - %%insn_004170d8) > 3
        %error "LONG_004170D8"
    %endif
    times 3 - ($ - %%insn_004170d8) db 0
    %%insn_004170db:
    jnz short 0x4170f8 ; 004170DB 751B
    %if ($ - %%insn_004170db) > 2
        %error "LONG_004170DB"
    %endif
    times 2 - ($ - %%insn_004170db) db 0
    %%insn_004170dd:
    mov eax,[esp+0x20] ; 004170DD 8B442420
    %if ($ - %%insn_004170dd) > 4
        %error "LONG_004170DD"
    %endif
    times 4 - ($ - %%insn_004170dd) db 0
    %%insn_004170e1:
    mov ecx,[esp+0x1c] ; 004170E1 8B4C241C
    %if ($ - %%insn_004170e1) > 4
        %error "LONG_004170E1"
    %endif
    times 4 - ($ - %%insn_004170e1) db 0
    %%insn_004170e5:
    mov edx,[esp+0x18] ; 004170E5 8B542418
    %if ($ - %%insn_004170e5) > 4
        %error "LONG_004170E5"
    %endif
    times 4 - ($ - %%insn_004170e5) db 0
    %%insn_004170e9:
    push eax ; 004170E9 50
    %if ($ - %%insn_004170e9) > 1
        %error "LONG_004170E9"
    %endif
    times 1 - ($ - %%insn_004170e9) db 0
    %%insn_004170ea:
    mov eax,[esp+0x18] ; 004170EA 8B442418
    %if ($ - %%insn_004170ea) > 4
        %error "LONG_004170EA"
    %endif
    times 4 - ($ - %%insn_004170ea) db 0
    %%insn_004170ee:
    push ecx ; 004170EE 51
    %if ($ - %%insn_004170ee) > 1
        %error "LONG_004170EE"
    %endif
    times 1 - ($ - %%insn_004170ee) db 0
    %%insn_004170ef:
    push edx ; 004170EF 52
    %if ($ - %%insn_004170ef) > 1
        %error "LONG_004170EF"
    %endif
    times 1 - ($ - %%insn_004170ef) db 0
    %%insn_004170f0:
    push eax ; 004170F0 50
    %if ($ - %%insn_004170f0) > 1
        %error "LONG_004170F0"
    %endif
    times 1 - ($ - %%insn_004170f0) db 0
    %%insn_004170f1:
    call esi ; 004170F1 FFD6
    %if ($ - %%insn_004170f1) > 2
        %error "LONG_004170F1"
    %endif
    times 2 - ($ - %%insn_004170f1) db 0
    %%insn_004170f3:
    pop edi ; 004170F3 5F
    %if ($ - %%insn_004170f3) > 1
        %error "LONG_004170F3"
    %endif
    times 1 - ($ - %%insn_004170f3) db 0
    %%insn_004170f4:
    pop esi ; 004170F4 5E
    %if ($ - %%insn_004170f4) > 1
        %error "LONG_004170F4"
    %endif
    times 1 - ($ - %%insn_004170f4) db 0
    %%insn_004170f5:
    pop ebp ; 004170F5 5D
    %if ($ - %%insn_004170f5) > 1
        %error "LONG_004170F5"
    %endif
    times 1 - ($ - %%insn_004170f5) db 0
    %%insn_004170f6:
    pop ebx ; 004170F6 5B
    %if ($ - %%insn_004170f6) > 1
        %error "LONG_004170F6"
    %endif
    times 1 - ($ - %%insn_004170f6) db 0
    %%insn_004170f7:
    ret ; 004170F7 C3
    %if ($ - %%insn_004170f7) > 1
        %error "LONG_004170F7"
    %endif
    times 1 - ($ - %%insn_004170f7) db 0
    %%insn_004170f8:
    cmp eax,0x2 ; 004170F8 83F802
    %if ($ - %%insn_004170f8) > 3
        %error "LONG_004170F8"
    %endif
    times 3 - ($ - %%insn_004170f8) db 0
    %%insn_004170fb:
    jnz 0x4171bb ; 004170FB 0F85BA000000
    %if ($ - %%insn_004170fb) > 6
        %error "LONG_004170FB"
    %endif
    times 6 - ($ - %%insn_004170fb) db 0
    %%insn_00417101:
    mov eax,[esp+0x24] ; 00417101 8B442424
    %if ($ - %%insn_00417101) > 4
        %error "LONG_00417101"
    %endif
    times 4 - ($ - %%insn_00417101) db 0
    %%insn_00417105:
    test eax,eax ; 00417105 85C0
    %if ($ - %%insn_00417105) > 2
        %error "LONG_00417105"
    %endif
    times 2 - ($ - %%insn_00417105) db 0
    %%insn_00417107:
    jnz short 0x417113 ; 00417107 750A
    %if ($ - %%insn_00417107) > 2
        %error "LONG_00417107"
    %endif
    times 2 - ($ - %%insn_00417107) db 0
    %%insn_00417109:
    mov ecx,[0x420f30] ; 00417109 8B0D300F4200
    %if ($ - %%insn_00417109) > 6
        %error "LONG_00417109"
    %endif
    times 6 - ($ - %%insn_00417109) db 0
    %%insn_0041710f:
    mov [esp+0x24],ecx ; 0041710F 894C2424
    %if ($ - %%insn_0041710f) > 4
        %error "LONG_0041710F"
    %endif
    times 4 - ($ - %%insn_0041710f) db 0
    %%insn_00417113:
    mov ebx,[esp+0x18] ; 00417113 8B5C2418
    %if ($ - %%insn_00417113) > 4
        %error "LONG_00417113"
    %endif
    times 4 - ($ - %%insn_00417113) db 0
    %%insn_00417117:
    mov ebp,[esp+0x14] ; 00417117 8B6C2414
    %if ($ - %%insn_00417117) > 4
        %error "LONG_00417117"
    %endif
    times 4 - ($ - %%insn_00417117) db 0
    %%insn_0041711b:
    push dword 0x0 ; 0041711B 6A00
    %if ($ - %%insn_0041711b) > 2
        %error "LONG_0041711B"
    %endif
    times 2 - ($ - %%insn_0041711b) db 0
    %%insn_0041711d:
    push dword 0x0 ; 0041711D 6A00
    %if ($ - %%insn_0041711d) > 2
        %error "LONG_0041711D"
    %endif
    times 2 - ($ - %%insn_0041711d) db 0
    %%insn_0041711f:
    push ebx ; 0041711F 53
    %if ($ - %%insn_0041711f) > 1
        %error "LONG_0041711F"
    %endif
    times 1 - ($ - %%insn_0041711f) db 0
    %%insn_00417120:
    push ebp ; 00417120 55
    %if ($ - %%insn_00417120) > 1
        %error "LONG_00417120"
    %endif
    times 1 - ($ - %%insn_00417120) db 0
    %%insn_00417121:
    call dword near [0x42446c] ; 00417121 FF156C444200
    %if ($ - %%insn_00417121) > 6
        %error "LONG_00417121"
    %endif
    times 6 - ($ - %%insn_00417121) db 0
    db 0x8B, 0xF0 ; 00417127 8BF0 | mov esi,eax | encoding preserved
    %%insn_00417129:
    test esi,esi ; 00417129 85F6
    %if ($ - %%insn_00417129) > 2
        %error "LONG_00417129"
    %endif
    times 2 - ($ - %%insn_00417129) db 0
    %%insn_0041712b:
    jnz short 0x417132 ; 0041712B 7505
    %if ($ - %%insn_0041712b) > 2
        %error "LONG_0041712B"
    %endif
    times 2 - ($ - %%insn_0041712b) db 0
    %%insn_0041712d:
    pop edi ; 0041712D 5F
    %if ($ - %%insn_0041712d) > 1
        %error "LONG_0041712D"
    %endif
    times 1 - ($ - %%insn_0041712d) db 0
    %%insn_0041712e:
    pop esi ; 0041712E 5E
    %if ($ - %%insn_0041712e) > 1
        %error "LONG_0041712E"
    %endif
    times 1 - ($ - %%insn_0041712e) db 0
    %%insn_0041712f:
    pop ebp ; 0041712F 5D
    %if ($ - %%insn_0041712f) > 1
        %error "LONG_0041712F"
    %endif
    times 1 - ($ - %%insn_0041712f) db 0
    %%insn_00417130:
    pop ebx ; 00417130 5B
    %if ($ - %%insn_00417130) > 1
        %error "LONG_00417130"
    %endif
    times 1 - ($ - %%insn_00417130) db 0
    %%insn_00417131:
    ret ; 00417131 C3
    %if ($ - %%insn_00417131) > 1
        %error "LONG_00417131"
    %endif
    times 1 - ($ - %%insn_00417131) db 0
    %%insn_00417132:
    push esi ; 00417132 56
    %if ($ - %%insn_00417132) > 1
        %error "LONG_00417132"
    %endif
    times 1 - ($ - %%insn_00417132) db 0
    %%insn_00417133:
    call 0x40cdc0 ; 00417133 E8885CFFFF
    %if ($ - %%insn_00417133) > 5
        %error "LONG_00417133"
    %endif
    times 5 - ($ - %%insn_00417133) db 0
    db 0x8B, 0xF8 ; 00417138 8BF8 | mov edi,eax | encoding preserved
    %%insn_0041713a:
    add esp,0x4 ; 0041713A 83C404
    %if ($ - %%insn_0041713a) > 3
        %error "LONG_0041713A"
    %endif
    times 3 - ($ - %%insn_0041713a) db 0
    %%insn_0041713d:
    test edi,edi ; 0041713D 85FF
    %if ($ - %%insn_0041713d) > 2
        %error "LONG_0041713D"
    %endif
    times 2 - ($ - %%insn_0041713d) db 0
    %%insn_0041713f:
    jnz short 0x417146 ; 0041713F 7505
    %if ($ - %%insn_0041713f) > 2
        %error "LONG_0041713F"
    %endif
    times 2 - ($ - %%insn_0041713f) db 0
    %%insn_00417141:
    pop edi ; 00417141 5F
    %if ($ - %%insn_00417141) > 1
        %error "LONG_00417141"
    %endif
    times 1 - ($ - %%insn_00417141) db 0
    %%insn_00417142:
    pop esi ; 00417142 5E
    %if ($ - %%insn_00417142) > 1
        %error "LONG_00417142"
    %endif
    times 1 - ($ - %%insn_00417142) db 0
    %%insn_00417143:
    pop ebp ; 00417143 5D
    %if ($ - %%insn_00417143) > 1
        %error "LONG_00417143"
    %endif
    times 1 - ($ - %%insn_00417143) db 0
    %%insn_00417144:
    pop ebx ; 00417144 5B
    %if ($ - %%insn_00417144) > 1
        %error "LONG_00417144"
    %endif
    times 1 - ($ - %%insn_00417144) db 0
    %%insn_00417145:
    ret ; 00417145 C3
    %if ($ - %%insn_00417145) > 1
        %error "LONG_00417145"
    %endif
    times 1 - ($ - %%insn_00417145) db 0
    %%insn_00417146:
    push esi ; 00417146 56
    %if ($ - %%insn_00417146) > 1
        %error "LONG_00417146"
    %endif
    times 1 - ($ - %%insn_00417146) db 0
    %%insn_00417147:
    push edi ; 00417147 57
    %if ($ - %%insn_00417147) > 1
        %error "LONG_00417147"
    %endif
    times 1 - ($ - %%insn_00417147) db 0
    %%insn_00417148:
    push ebx ; 00417148 53
    %if ($ - %%insn_00417148) > 1
        %error "LONG_00417148"
    %endif
    times 1 - ($ - %%insn_00417148) db 0
    %%insn_00417149:
    push ebp ; 00417149 55
    %if ($ - %%insn_00417149) > 1
        %error "LONG_00417149"
    %endif
    times 1 - ($ - %%insn_00417149) db 0
    %%insn_0041714a:
    call dword near [0x42446c] ; 0041714A FF156C444200
    %if ($ - %%insn_0041714a) > 6
        %error "LONG_0041714A"
    %endif
    times 6 - ($ - %%insn_0041714a) db 0
    %%insn_00417150:
    test eax,eax ; 00417150 85C0
    %if ($ - %%insn_00417150) > 2
        %error "LONG_00417150"
    %endif
    times 2 - ($ - %%insn_00417150) db 0
    %%insn_00417152:
    jz short 0x4171a0 ; 00417152 744C
    %if ($ - %%insn_00417152) > 2
        %error "LONG_00417152"
    %endif
    times 2 - ($ - %%insn_00417152) db 0
    %%insn_00417154:
    mov eax,[esp+0x20] ; 00417154 8B442420
    %if ($ - %%insn_00417154) > 4
        %error "LONG_00417154"
    %endif
    times 4 - ($ - %%insn_00417154) db 0
    %%insn_00417158:
    test eax,eax ; 00417158 85C0
    %if ($ - %%insn_00417158) > 2
        %error "LONG_00417158"
    %endif
    times 2 - ($ - %%insn_00417158) db 0
    %%insn_0041715a:
    jnz short 0x417184 ; 0041715A 7528
    %if ($ - %%insn_0041715a) > 2
        %error "LONG_0041715A"
    %endif
    times 2 - ($ - %%insn_0041715a) db 0
    %%insn_0041715c:
    mov edx,[esp+0x24] ; 0041715C 8B542424
    %if ($ - %%insn_0041715c) > 4
        %error "LONG_0041715C"
    %endif
    times 4 - ($ - %%insn_0041715c) db 0
    %%insn_00417160:
    push eax ; 00417160 50
    %if ($ - %%insn_00417160) > 1
        %error "LONG_00417160"
    %endif
    times 1 - ($ - %%insn_00417160) db 0
    %%insn_00417161:
    push eax ; 00417161 50
    %if ($ - %%insn_00417161) > 1
        %error "LONG_00417161"
    %endif
    times 1 - ($ - %%insn_00417161) db 0
    %%insn_00417162:
    push dword 0xffffffffffffffff ; 00417162 6AFF
    %if ($ - %%insn_00417162) > 2
        %error "LONG_00417162"
    %endif
    times 2 - ($ - %%insn_00417162) db 0
    %%insn_00417164:
    push edi ; 00417164 57
    %if ($ - %%insn_00417164) > 1
        %error "LONG_00417164"
    %endif
    times 1 - ($ - %%insn_00417164) db 0
    %%insn_00417165:
    push dword 0x1 ; 00417165 6A01
    %if ($ - %%insn_00417165) > 2
        %error "LONG_00417165"
    %endif
    times 2 - ($ - %%insn_00417165) db 0
    %%insn_00417167:
    push edx ; 00417167 52
    %if ($ - %%insn_00417167) > 1
        %error "LONG_00417167"
    %endif
    times 1 - ($ - %%insn_00417167) db 0
    %%insn_00417168:
    call dword near [0x424464] ; 00417168 FF1564444200
    %if ($ - %%insn_00417168) > 6
        %error "LONG_00417168"
    %endif
    times 6 - ($ - %%insn_00417168) db 0
    db 0x8B, 0xF0 ; 0041716E 8BF0 | mov esi,eax | encoding preserved
    %%insn_00417170:
    test esi,esi ; 00417170 85F6
    %if ($ - %%insn_00417170) > 2
        %error "LONG_00417170"
    %endif
    times 2 - ($ - %%insn_00417170) db 0
    %%insn_00417172:
    jz short 0x4171a0 ; 00417172 742C
    %if ($ - %%insn_00417172) > 2
        %error "LONG_00417172"
    %endif
    times 2 - ($ - %%insn_00417172) db 0
    %%insn_00417174:
    push edi ; 00417174 57
    %if ($ - %%insn_00417174) > 1
        %error "LONG_00417174"
    %endif
    times 1 - ($ - %%insn_00417174) db 0
    %%insn_00417175:
    call 0x40c9a0 ; 00417175 E82658FFFF
    %if ($ - %%insn_00417175) > 5
        %error "LONG_00417175"
    %endif
    times 5 - ($ - %%insn_00417175) db 0
    %%insn_0041717a:
    add esp,0x4 ; 0041717A 83C404
    %if ($ - %%insn_0041717a) > 3
        %error "LONG_0041717A"
    %endif
    times 3 - ($ - %%insn_0041717a) db 0
    db 0x8B, 0xC6 ; 0041717D 8BC6 | mov eax,esi | encoding preserved
    %%insn_0041717f:
    pop edi ; 0041717F 5F
    %if ($ - %%insn_0041717f) > 1
        %error "LONG_0041717F"
    %endif
    times 1 - ($ - %%insn_0041717f) db 0
    %%insn_00417180:
    pop esi ; 00417180 5E
    %if ($ - %%insn_00417180) > 1
        %error "LONG_00417180"
    %endif
    times 1 - ($ - %%insn_00417180) db 0
    %%insn_00417181:
    pop ebp ; 00417181 5D
    %if ($ - %%insn_00417181) > 1
        %error "LONG_00417181"
    %endif
    times 1 - ($ - %%insn_00417181) db 0
    %%insn_00417182:
    pop ebx ; 00417182 5B
    %if ($ - %%insn_00417182) > 1
        %error "LONG_00417182"
    %endif
    times 1 - ($ - %%insn_00417182) db 0
    %%insn_00417183:
    ret ; 00417183 C3
    %if ($ - %%insn_00417183) > 1
        %error "LONG_00417183"
    %endif
    times 1 - ($ - %%insn_00417183) db 0
    %%insn_00417184:
    mov ecx,[esp+0x24] ; 00417184 8B4C2424
    %if ($ - %%insn_00417184) > 4
        %error "LONG_00417184"
    %endif
    times 4 - ($ - %%insn_00417184) db 0
    %%insn_00417188:
    push eax ; 00417188 50
    %if ($ - %%insn_00417188) > 1
        %error "LONG_00417188"
    %endif
    times 1 - ($ - %%insn_00417188) db 0
    %%insn_00417189:
    mov eax,[esp+0x20] ; 00417189 8B442420
    %if ($ - %%insn_00417189) > 4
        %error "LONG_00417189"
    %endif
    times 4 - ($ - %%insn_00417189) db 0
    %%insn_0041718d:
    push eax ; 0041718D 50
    %if ($ - %%insn_0041718d) > 1
        %error "LONG_0041718D"
    %endif
    times 1 - ($ - %%insn_0041718d) db 0
    %%insn_0041718e:
    push dword 0xffffffffffffffff ; 0041718E 6AFF
    %if ($ - %%insn_0041718e) > 2
        %error "LONG_0041718E"
    %endif
    times 2 - ($ - %%insn_0041718e) db 0
    %%insn_00417190:
    push edi ; 00417190 57
    %if ($ - %%insn_00417190) > 1
        %error "LONG_00417190"
    %endif
    times 1 - ($ - %%insn_00417190) db 0
    %%insn_00417191:
    push dword 0x1 ; 00417191 6A01
    %if ($ - %%insn_00417191) > 2
        %error "LONG_00417191"
    %endif
    times 2 - ($ - %%insn_00417191) db 0
    %%insn_00417193:
    push ecx ; 00417193 51
    %if ($ - %%insn_00417193) > 1
        %error "LONG_00417193"
    %endif
    times 1 - ($ - %%insn_00417193) db 0
    %%insn_00417194:
    call dword near [0x424464] ; 00417194 FF1564444200
    %if ($ - %%insn_00417194) > 6
        %error "LONG_00417194"
    %endif
    times 6 - ($ - %%insn_00417194) db 0
    db 0x8B, 0xF0 ; 0041719A 8BF0 | mov esi,eax | encoding preserved
    %%insn_0041719c:
    test esi,esi ; 0041719C 85F6
    %if ($ - %%insn_0041719c) > 2
        %error "LONG_0041719C"
    %endif
    times 2 - ($ - %%insn_0041719c) db 0
    %%insn_0041719e:
    jnz short 0x4171b0 ; 0041719E 7510
    %if ($ - %%insn_0041719e) > 2
        %error "LONG_0041719E"
    %endif
    times 2 - ($ - %%insn_0041719e) db 0
    %%insn_004171a0:
    push edi ; 004171A0 57
    %if ($ - %%insn_004171a0) > 1
        %error "LONG_004171A0"
    %endif
    times 1 - ($ - %%insn_004171a0) db 0
    %%insn_004171a1:
    call 0x40c9a0 ; 004171A1 E8FA57FFFF
    %if ($ - %%insn_004171a1) > 5
        %error "LONG_004171A1"
    %endif
    times 5 - ($ - %%insn_004171a1) db 0
    %%insn_004171a6:
    add esp,0x4 ; 004171A6 83C404
    %if ($ - %%insn_004171a6) > 3
        %error "LONG_004171A6"
    %endif
    times 3 - ($ - %%insn_004171a6) db 0
    db 0x33, 0xC0 ; 004171A9 33C0 | xor eax,eax | encoding preserved
    %%insn_004171ab:
    pop edi ; 004171AB 5F
    %if ($ - %%insn_004171ab) > 1
        %error "LONG_004171AB"
    %endif
    times 1 - ($ - %%insn_004171ab) db 0
    %%insn_004171ac:
    pop esi ; 004171AC 5E
    %if ($ - %%insn_004171ac) > 1
        %error "LONG_004171AC"
    %endif
    times 1 - ($ - %%insn_004171ac) db 0
    %%insn_004171ad:
    pop ebp ; 004171AD 5D
    %if ($ - %%insn_004171ad) > 1
        %error "LONG_004171AD"
    %endif
    times 1 - ($ - %%insn_004171ad) db 0
    %%insn_004171ae:
    pop ebx ; 004171AE 5B
    %if ($ - %%insn_004171ae) > 1
        %error "LONG_004171AE"
    %endif
    times 1 - ($ - %%insn_004171ae) db 0
    %%insn_004171af:
    ret ; 004171AF C3
    %if ($ - %%insn_004171af) > 1
        %error "LONG_004171AF"
    %endif
    times 1 - ($ - %%insn_004171af) db 0
    %%insn_004171b0:
    push edi ; 004171B0 57
    %if ($ - %%insn_004171b0) > 1
        %error "LONG_004171B0"
    %endif
    times 1 - ($ - %%insn_004171b0) db 0
    %%insn_004171b1:
    call 0x40c9a0 ; 004171B1 E8EA57FFFF
    %if ($ - %%insn_004171b1) > 5
        %error "LONG_004171B1"
    %endif
    times 5 - ($ - %%insn_004171b1) db 0
    %%insn_004171b6:
    add esp,0x4 ; 004171B6 83C404
    %if ($ - %%insn_004171b6) > 3
        %error "LONG_004171B6"
    %endif
    times 3 - ($ - %%insn_004171b6) db 0
    db 0x8B, 0xC6 ; 004171B9 8BC6 | mov eax,esi | encoding preserved
    %%insn_004171bb:
    pop edi ; 004171BB 5F
    %if ($ - %%insn_004171bb) > 1
        %error "LONG_004171BB"
    %endif
    times 1 - ($ - %%insn_004171bb) db 0
    %%insn_004171bc:
    pop esi ; 004171BC 5E
    %if ($ - %%insn_004171bc) > 1
        %error "LONG_004171BC"
    %endif
    times 1 - ($ - %%insn_004171bc) db 0
    %%insn_004171bd:
    pop ebp ; 004171BD 5D
    %if ($ - %%insn_004171bd) > 1
        %error "LONG_004171BD"
    %endif
    times 1 - ($ - %%insn_004171bd) db 0
    %%insn_004171be:
    pop ebx ; 004171BE 5B
    %if ($ - %%insn_004171be) > 1
        %error "LONG_004171BE"
    %endif
    times 1 - ($ - %%insn_004171be) db 0
    %%insn_004171bf:
    ret ; 004171BF C3
    %if ($ - %%insn_004171bf) > 1
        %error "LONG_004171BF"
    %endif
    times 1 - ($ - %%insn_004171bf) db 0
    %if ($ - %%fragment_start) != 304
        %error "function fragment size drift: 00417090"
    %endif
%endmacro
