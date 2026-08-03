; PE virtual entry 0040E0D0
; Ghidra working symbol: FUN_0040e0d0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e0d0_part_00 0
    %%fragment_start:
func_0040e0d0:
    %%insn_0040e0d0:
    mov eax,[0x41be70] ; 0040E0D0 A170BE4100
    %if ($ - %%insn_0040e0d0) > 5
        %error "LONG_0040E0D0"
    %endif
    times 5 - ($ - %%insn_0040e0d0) db 0
    %%insn_0040e0d5:
    push ebp ; 0040E0D5 55
    %if ($ - %%insn_0040e0d5) > 1
        %error "LONG_0040E0D5"
    %endif
    times 1 - ($ - %%insn_0040e0d5) db 0
    %%insn_0040e0d6:
    push esi ; 0040E0D6 56
    %if ($ - %%insn_0040e0d6) > 1
        %error "LONG_0040E0D6"
    %endif
    times 1 - ($ - %%insn_0040e0d6) db 0
    %%insn_0040e0d7:
    cmp eax,0xffffffffffffffff ; 0040E0D7 83F8FF
    %if ($ - %%insn_0040e0d7) > 3
        %error "LONG_0040E0D7"
    %endif
    times 3 - ($ - %%insn_0040e0d7) db 0
    %%insn_0040e0da:
    push edi ; 0040E0DA 57
    %if ($ - %%insn_0040e0da) > 1
        %error "LONG_0040E0DA"
    %endif
    times 1 - ($ - %%insn_0040e0da) db 0
    %%insn_0040e0db:
    jnz short 0x40e0e4 ; 0040E0DB 7507
    %if ($ - %%insn_0040e0db) > 2
        %error "LONG_0040E0DB"
    %endif
    times 2 - ($ - %%insn_0040e0db) db 0
    %%insn_0040e0dd:
    mov ebp,0x41be60 ; 0040E0DD BD60BE4100
    %if ($ - %%insn_0040e0dd) > 5
        %error "LONG_0040E0DD"
    %endif
    times 5 - ($ - %%insn_0040e0dd) db 0
    %%insn_0040e0e2:
    jmp short 0x40e101 ; 0040E0E2 EB1D
    %if ($ - %%insn_0040e0e2) > 2
        %error "LONG_0040E0E2"
    %endif
    times 2 - ($ - %%insn_0040e0e2) db 0
    %%insn_0040e0e4:
    mov eax,[0x42358c] ; 0040E0E4 A18C354200
    %if ($ - %%insn_0040e0e4) > 5
        %error "LONG_0040E0E4"
    %endif
    times 5 - ($ - %%insn_0040e0e4) db 0
    %%insn_0040e0e9:
    push dword 0x2020 ; 0040E0E9 6820200000
    %if ($ - %%insn_0040e0e9) > 5
        %error "LONG_0040E0E9"
    %endif
    times 5 - ($ - %%insn_0040e0e9) db 0
    %%insn_0040e0ee:
    push dword 0x0 ; 0040E0EE 6A00
    %if ($ - %%insn_0040e0ee) > 2
        %error "LONG_0040E0EE"
    %endif
    times 2 - ($ - %%insn_0040e0ee) db 0
    %%insn_0040e0f0:
    push eax ; 0040E0F0 50
    %if ($ - %%insn_0040e0f0) > 1
        %error "LONG_0040E0F0"
    %endif
    times 1 - ($ - %%insn_0040e0f0) db 0
    %%insn_0040e0f1:
    call dword near [0x424440] ; 0040E0F1 FF1540444200
    %if ($ - %%insn_0040e0f1) > 6
        %error "LONG_0040E0F1"
    %endif
    times 6 - ($ - %%insn_0040e0f1) db 0
    db 0x8B, 0xE8 ; 0040E0F7 8BE8 | mov ebp,eax | encoding preserved
    %%insn_0040e0f9:
    test ebp,ebp ; 0040E0F9 85ED
    %if ($ - %%insn_0040e0f9) > 2
        %error "LONG_0040E0F9"
    %endif
    times 2 - ($ - %%insn_0040e0f9) db 0
    %%insn_0040e0fb:
    jz 0x40e22c ; 0040E0FB 0F842B010000
    %if ($ - %%insn_0040e0fb) > 6
        %error "LONG_0040E0FB"
    %endif
    times 6 - ($ - %%insn_0040e0fb) db 0
    %%insn_0040e101:
    mov edi,[0x4243ec] ; 0040E101 8B3DEC434200
    %if ($ - %%insn_0040e101) > 6
        %error "LONG_0040E101"
    %endif
    times 6 - ($ - %%insn_0040e101) db 0
    %%insn_0040e107:
    push dword 0x4 ; 0040E107 6A04
    %if ($ - %%insn_0040e107) > 2
        %error "LONG_0040E107"
    %endif
    times 2 - ($ - %%insn_0040e107) db 0
    %%insn_0040e109:
    push dword 0x2000 ; 0040E109 6800200000
    %if ($ - %%insn_0040e109) > 5
        %error "LONG_0040E109"
    %endif
    times 5 - ($ - %%insn_0040e109) db 0
    %%insn_0040e10e:
    push dword 0x400000 ; 0040E10E 6800004000
    %if ($ - %%insn_0040e10e) > 5
        %error "LONG_0040E10E"
    %endif
    times 5 - ($ - %%insn_0040e10e) db 0
    %%insn_0040e113:
    push dword 0x0 ; 0040E113 6A00
    %if ($ - %%insn_0040e113) > 2
        %error "LONG_0040E113"
    %endif
    times 2 - ($ - %%insn_0040e113) db 0
    %%insn_0040e115:
    call edi ; 0040E115 FFD7
    %if ($ - %%insn_0040e115) > 2
        %error "LONG_0040E115"
    %endif
    times 2 - ($ - %%insn_0040e115) db 0
    db 0x8B, 0xF0 ; 0040E117 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040e119:
    test esi,esi ; 0040E119 85F6
    %if ($ - %%insn_0040e119) > 2
        %error "LONG_0040E119"
    %endif
    times 2 - ($ - %%insn_0040e119) db 0
    %%insn_0040e11b:
    jz 0x40e215 ; 0040E11B 0F84F4000000
    %if ($ - %%insn_0040e11b) > 6
        %error "LONG_0040E11B"
    %endif
    times 6 - ($ - %%insn_0040e11b) db 0
    %%insn_0040e121:
    push dword 0x4 ; 0040E121 6A04
    %if ($ - %%insn_0040e121) > 2
        %error "LONG_0040E121"
    %endif
    times 2 - ($ - %%insn_0040e121) db 0
    %%insn_0040e123:
    push dword 0x1000 ; 0040E123 6800100000
    %if ($ - %%insn_0040e123) > 5
        %error "LONG_0040E123"
    %endif
    times 5 - ($ - %%insn_0040e123) db 0
    %%insn_0040e128:
    push dword 0x10000 ; 0040E128 6800000100
    %if ($ - %%insn_0040e128) > 5
        %error "LONG_0040E128"
    %endif
    times 5 - ($ - %%insn_0040e128) db 0
    %%insn_0040e12d:
    push esi ; 0040E12D 56
    %if ($ - %%insn_0040e12d) > 1
        %error "LONG_0040E12D"
    %endif
    times 1 - ($ - %%insn_0040e12d) db 0
    %%insn_0040e12e:
    call edi ; 0040E12E FFD7
    %if ($ - %%insn_0040e12e) > 2
        %error "LONG_0040E12E"
    %endif
    times 2 - ($ - %%insn_0040e12e) db 0
    %%insn_0040e130:
    test eax,eax ; 0040E130 85C0
    %if ($ - %%insn_0040e130) > 2
        %error "LONG_0040E130"
    %endif
    times 2 - ($ - %%insn_0040e130) db 0
    %%insn_0040e132:
    jz 0x40e207 ; 0040E132 0F84CF000000
    %if ($ - %%insn_0040e132) > 6
        %error "LONG_0040E132"
    %endif
    times 6 - ($ - %%insn_0040e132) db 0
    %%insn_0040e138:
    cmp ebp,0x41be60 ; 0040E138 81FD60BE4100
    %if ($ - %%insn_0040e138) > 6
        %error "LONG_0040E138"
    %endif
    times 6 - ($ - %%insn_0040e138) db 0
    %%insn_0040e13e:
    jnz short 0x40e168 ; 0040E13E 7528
    %if ($ - %%insn_0040e13e) > 2
        %error "LONG_0040E13E"
    %endif
    times 2 - ($ - %%insn_0040e13e) db 0
    %%insn_0040e140:
    mov eax,[0x41be60] ; 0040E140 A160BE4100
    %if ($ - %%insn_0040e140) > 5
        %error "LONG_0040E140"
    %endif
    times 5 - ($ - %%insn_0040e140) db 0
    %%insn_0040e145:
    test eax,eax ; 0040E145 85C0
    %if ($ - %%insn_0040e145) > 2
        %error "LONG_0040E145"
    %endif
    times 2 - ($ - %%insn_0040e145) db 0
    %%insn_0040e147:
    jnz short 0x40e153 ; 0040E147 750A
    %if ($ - %%insn_0040e147) > 2
        %error "LONG_0040E147"
    %endif
    times 2 - ($ - %%insn_0040e147) db 0
    %%insn_0040e149:
    mov dword [0x41be60],0x41be60 ; 0040E149 C70560BE410060BE4100
    %if ($ - %%insn_0040e149) > 10
        %error "LONG_0040E149"
    %endif
    times 10 - ($ - %%insn_0040e149) db 0
    %%insn_0040e153:
    mov eax,[0x41be64] ; 0040E153 A164BE4100
    %if ($ - %%insn_0040e153) > 5
        %error "LONG_0040E153"
    %endif
    times 5 - ($ - %%insn_0040e153) db 0
    %%insn_0040e158:
    test eax,eax ; 0040E158 85C0
    %if ($ - %%insn_0040e158) > 2
        %error "LONG_0040E158"
    %endif
    times 2 - ($ - %%insn_0040e158) db 0
    %%insn_0040e15a:
    jnz short 0x40e183 ; 0040E15A 7527
    %if ($ - %%insn_0040e15a) > 2
        %error "LONG_0040E15A"
    %endif
    times 2 - ($ - %%insn_0040e15a) db 0
    %%insn_0040e15c:
    mov dword [0x41be64],0x41be60 ; 0040E15C C70564BE410060BE4100
    %if ($ - %%insn_0040e15c) > 10
        %error "LONG_0040E15C"
    %endif
    times 10 - ($ - %%insn_0040e15c) db 0
    %%insn_0040e166:
    jmp short 0x40e183 ; 0040E166 EB1B
    %if ($ - %%insn_0040e166) > 2
        %error "LONG_0040E166"
    %endif
    times 2 - ($ - %%insn_0040e166) db 0
    %%insn_0040e168:
    mov dword [ebp+0x0],0x41be60 ; 0040E168 C7450060BE4100
    %if ($ - %%insn_0040e168) > 7
        %error "LONG_0040E168"
    %endif
    times 7 - ($ - %%insn_0040e168) db 0
    %%insn_0040e16f:
    mov ecx,[0x41be64] ; 0040E16F 8B0D64BE4100
    %if ($ - %%insn_0040e16f) > 6
        %error "LONG_0040E16F"
    %endif
    times 6 - ($ - %%insn_0040e16f) db 0
    %%insn_0040e175:
    mov [ebp+0x4],ecx ; 0040E175 894D04
    %if ($ - %%insn_0040e175) > 3
        %error "LONG_0040E175"
    %endif
    times 3 - ($ - %%insn_0040e175) db 0
    %%insn_0040e178:
    mov [0x41be64],ebp ; 0040E178 892D64BE4100
    %if ($ - %%insn_0040e178) > 6
        %error "LONG_0040E178"
    %endif
    times 6 - ($ - %%insn_0040e178) db 0
    %%insn_0040e17e:
    mov edx,[ebp+0x4] ; 0040E17E 8B5504
    %if ($ - %%insn_0040e17e) > 3
        %error "LONG_0040E17E"
    %endif
    times 3 - ($ - %%insn_0040e17e) db 0
    %%insn_0040e181:
    mov [edx],ebp ; 0040E181 892A
    %if ($ - %%insn_0040e181) > 2
        %error "LONG_0040E181"
    %endif
    times 2 - ($ - %%insn_0040e181) db 0
    %%insn_0040e183:
    lea eax,[esi+0x400000] ; 0040E183 8D8600004000
    %if ($ - %%insn_0040e183) > 6
        %error "LONG_0040E183"
    %endif
    times 6 - ($ - %%insn_0040e183) db 0
    %%insn_0040e189:
    lea ecx,[ebp+0x18] ; 0040E189 8D4D18
    %if ($ - %%insn_0040e189) > 3
        %error "LONG_0040E189"
    %endif
    times 3 - ($ - %%insn_0040e189) db 0
    %%insn_0040e18c:
    lea edx,[ebp+0x98] ; 0040E18C 8D9598000000
    %if ($ - %%insn_0040e18c) > 6
        %error "LONG_0040E18C"
    %endif
    times 6 - ($ - %%insn_0040e18c) db 0
    %%insn_0040e192:
    mov [ebp+0x14],eax ; 0040E192 894514
    %if ($ - %%insn_0040e192) > 3
        %error "LONG_0040E192"
    %endif
    times 3 - ($ - %%insn_0040e192) db 0
    %%insn_0040e195:
    mov [ebp+0x10],esi ; 0040E195 897510
    %if ($ - %%insn_0040e195) > 3
        %error "LONG_0040E195"
    %endif
    times 3 - ($ - %%insn_0040e195) db 0
    %%insn_0040e198:
    mov [ebp+0x8],ecx ; 0040E198 894D08
    %if ($ - %%insn_0040e198) > 3
        %error "LONG_0040E198"
    %endif
    times 3 - ($ - %%insn_0040e198) db 0
    %%insn_0040e19b:
    mov [ebp+0xc],edx ; 0040E19B 89550C
    %if ($ - %%insn_0040e19b) > 3
        %error "LONG_0040E19B"
    %endif
    times 3 - ($ - %%insn_0040e19b) db 0
    db 0x33, 0xC0 ; 0040E19E 33C0 | xor eax,eax | encoding preserved
    %%insn_0040e1a0:
    mov edi,0xf1 ; 0040E1A0 BFF1000000
    %if ($ - %%insn_0040e1a0) > 5
        %error "LONG_0040E1A0"
    %endif
    times 5 - ($ - %%insn_0040e1a0) db 0
    db 0x33, 0xD2 ; 0040E1A5 33D2 | xor edx,edx | encoding preserved
    %%insn_0040e1a7:
    cmp eax,0x10 ; 0040E1A7 83F810
    %if ($ - %%insn_0040e1a7) > 3
        %error "LONG_0040E1A7"
    %endif
    times 3 - ($ - %%insn_0040e1a7) db 0
    %%insn_0040e1aa:
    setnl dl ; 0040E1AA 0F9DC2
    %if ($ - %%insn_0040e1aa) > 3
        %error "LONG_0040E1AA"
    %endif
    times 3 - ($ - %%insn_0040e1aa) db 0
    %%insn_0040e1ad:
    dec edx ; 0040E1AD 4A
    %if ($ - %%insn_0040e1ad) > 1
        %error "LONG_0040E1AD"
    %endif
    times 1 - ($ - %%insn_0040e1ad) db 0
    %%insn_0040e1ae:
    add ecx,0x8 ; 0040E1AE 83C108
    %if ($ - %%insn_0040e1ae) > 3
        %error "LONG_0040E1AE"
    %endif
    times 3 - ($ - %%insn_0040e1ae) db 0
    db 0x23, 0xD7 ; 0040E1B1 23D7 | and edx,edi | encoding preserved
    %%insn_0040e1b3:
    dec edx ; 0040E1B3 4A
    %if ($ - %%insn_0040e1b3) > 1
        %error "LONG_0040E1B3"
    %endif
    times 1 - ($ - %%insn_0040e1b3) db 0
    %%insn_0040e1b4:
    inc eax ; 0040E1B4 40
    %if ($ - %%insn_0040e1b4) > 1
        %error "LONG_0040E1B4"
    %endif
    times 1 - ($ - %%insn_0040e1b4) db 0
    %%insn_0040e1b5:
    mov [ecx-0x8],edx ; 0040E1B5 8951F8
    %if ($ - %%insn_0040e1b5) > 3
        %error "LONG_0040E1B5"
    %endif
    times 3 - ($ - %%insn_0040e1b5) db 0
    %%insn_0040e1b8:
    mov [ecx-0x4],edi ; 0040E1B8 8979FC
    %if ($ - %%insn_0040e1b8) > 3
        %error "LONG_0040E1B8"
    %endif
    times 3 - ($ - %%insn_0040e1b8) db 0
    %%insn_0040e1bb:
    cmp eax,0x400 ; 0040E1BB 3D00040000
    %if ($ - %%insn_0040e1bb) > 5
        %error "LONG_0040E1BB"
    %endif
    times 5 - ($ - %%insn_0040e1bb) db 0
    %%insn_0040e1c0:
    jl short 0x40e1a5 ; 0040E1C0 7CE3
    %if ($ - %%insn_0040e1c0) > 2
        %error "LONG_0040E1C0"
    %endif
    times 2 - ($ - %%insn_0040e1c0) db 0
    %%insn_0040e1c2:
    mov ecx,0x4000 ; 0040E1C2 B900400000
    %if ($ - %%insn_0040e1c2) > 5
        %error "LONG_0040E1C2"
    %endif
    times 5 - ($ - %%insn_0040e1c2) db 0
    db 0x33, 0xC0 ; 0040E1C7 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xFE ; 0040E1C9 8BFE | mov edi,esi | encoding preserved
    %%insn_0040e1cb:
    rep stosd ; 0040E1CB F3AB
    %if ($ - %%insn_0040e1cb) > 2
        %error "LONG_0040E1CB"
    %endif
    times 2 - ($ - %%insn_0040e1cb) db 0
    %%insn_0040e1cd:
    mov eax,[ebp+0x10] ; 0040E1CD 8B4510
    %if ($ - %%insn_0040e1cd) > 3
        %error "LONG_0040E1CD"
    %endif
    times 3 - ($ - %%insn_0040e1cd) db 0
    %%insn_0040e1d0:
    add eax,0x10000 ; 0040E1D0 0500000100
    %if ($ - %%insn_0040e1d0) > 5
        %error "LONG_0040E1D0"
    %endif
    times 5 - ($ - %%insn_0040e1d0) db 0
    db 0x3B, 0xF0 ; 0040E1D5 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0040e1d7:
    jnc short 0x40e201 ; 0040E1D7 7328
    %if ($ - %%insn_0040e1d7) > 2
        %error "LONG_0040E1D7"
    %endif
    times 2 - ($ - %%insn_0040e1d7) db 0
    %%insn_0040e1d9:
    mov ecx,0xf0 ; 0040E1D9 B9F0000000
    %if ($ - %%insn_0040e1d9) > 5
        %error "LONG_0040E1D9"
    %endif
    times 5 - ($ - %%insn_0040e1d9) db 0
    %%insn_0040e1de:
    mov al,0xff ; 0040E1DE B0FF
    %if ($ - %%insn_0040e1de) > 2
        %error "LONG_0040E1DE"
    %endif
    times 2 - ($ - %%insn_0040e1de) db 0
    %%insn_0040e1e0:
    lea edx,[esi+0x8] ; 0040E1E0 8D5608
    %if ($ - %%insn_0040e1e0) > 3
        %error "LONG_0040E1E0"
    %endif
    times 3 - ($ - %%insn_0040e1e0) db 0
    %%insn_0040e1e3:
    mov [esi+0x4],ecx ; 0040E1E3 894E04
    %if ($ - %%insn_0040e1e3) > 3
        %error "LONG_0040E1E3"
    %endif
    times 3 - ($ - %%insn_0040e1e3) db 0
    %%insn_0040e1e6:
    mov [esi],edx ; 0040E1E6 8916
    %if ($ - %%insn_0040e1e6) > 2
        %error "LONG_0040E1E6"
    %endif
    times 2 - ($ - %%insn_0040e1e6) db 0
    %%insn_0040e1e8:
    mov [esi+0xf8],al ; 0040E1E8 8886F8000000
    %if ($ - %%insn_0040e1e8) > 6
        %error "LONG_0040E1E8"
    %endif
    times 6 - ($ - %%insn_0040e1e8) db 0
    %%insn_0040e1ee:
    mov edx,[ebp+0x10] ; 0040E1EE 8B5510
    %if ($ - %%insn_0040e1ee) > 3
        %error "LONG_0040E1EE"
    %endif
    times 3 - ($ - %%insn_0040e1ee) db 0
    %%insn_0040e1f1:
    add esi,0x1000 ; 0040E1F1 81C600100000
    %if ($ - %%insn_0040e1f1) > 6
        %error "LONG_0040E1F1"
    %endif
    times 6 - ($ - %%insn_0040e1f1) db 0
    %%insn_0040e1f7:
    add edx,0x10000 ; 0040E1F7 81C200000100
    %if ($ - %%insn_0040e1f7) > 6
        %error "LONG_0040E1F7"
    %endif
    times 6 - ($ - %%insn_0040e1f7) db 0
    db 0x3B, 0xF2 ; 0040E1FD 3BF2 | cmp esi,edx | encoding preserved
    %%insn_0040e1ff:
    jc short 0x40e1e0 ; 0040E1FF 72DF
    %if ($ - %%insn_0040e1ff) > 2
        %error "LONG_0040E1FF"
    %endif
    times 2 - ($ - %%insn_0040e1ff) db 0
    db 0x8B, 0xC5 ; 0040E201 8BC5 | mov eax,ebp | encoding preserved
    %%insn_0040e203:
    pop edi ; 0040E203 5F
    %if ($ - %%insn_0040e203) > 1
        %error "LONG_0040E203"
    %endif
    times 1 - ($ - %%insn_0040e203) db 0
    %%insn_0040e204:
    pop esi ; 0040E204 5E
    %if ($ - %%insn_0040e204) > 1
        %error "LONG_0040E204"
    %endif
    times 1 - ($ - %%insn_0040e204) db 0
    %%insn_0040e205:
    pop ebp ; 0040E205 5D
    %if ($ - %%insn_0040e205) > 1
        %error "LONG_0040E205"
    %endif
    times 1 - ($ - %%insn_0040e205) db 0
    %%insn_0040e206:
    ret ; 0040E206 C3
    %if ($ - %%insn_0040e206) > 1
        %error "LONG_0040E206"
    %endif
    times 1 - ($ - %%insn_0040e206) db 0
    %%insn_0040e207:
    push dword 0x8000 ; 0040E207 6800800000
    %if ($ - %%insn_0040e207) > 5
        %error "LONG_0040E207"
    %endif
    times 5 - ($ - %%insn_0040e207) db 0
    %%insn_0040e20c:
    push dword 0x0 ; 0040E20C 6A00
    %if ($ - %%insn_0040e20c) > 2
        %error "LONG_0040E20C"
    %endif
    times 2 - ($ - %%insn_0040e20c) db 0
    %%insn_0040e20e:
    push esi ; 0040E20E 56
    %if ($ - %%insn_0040e20e) > 1
        %error "LONG_0040E20E"
    %endif
    times 1 - ($ - %%insn_0040e20e) db 0
    %%insn_0040e20f:
    call dword near [0x424404] ; 0040E20F FF1504444200
    %if ($ - %%insn_0040e20f) > 6
        %error "LONG_0040E20F"
    %endif
    times 6 - ($ - %%insn_0040e20f) db 0
    %%insn_0040e215:
    cmp ebp,0x41be60 ; 0040E215 81FD60BE4100
    %if ($ - %%insn_0040e215) > 6
        %error "LONG_0040E215"
    %endif
    times 6 - ($ - %%insn_0040e215) db 0
    %%insn_0040e21b:
    jz short 0x40e22c ; 0040E21B 740F
    %if ($ - %%insn_0040e21b) > 2
        %error "LONG_0040E21B"
    %endif
    times 2 - ($ - %%insn_0040e21b) db 0
    %%insn_0040e21d:
    mov eax,[0x42358c] ; 0040E21D A18C354200
    %if ($ - %%insn_0040e21d) > 5
        %error "LONG_0040E21D"
    %endif
    times 5 - ($ - %%insn_0040e21d) db 0
    %%insn_0040e222:
    push ebp ; 0040E222 55
    %if ($ - %%insn_0040e222) > 1
        %error "LONG_0040E222"
    %endif
    times 1 - ($ - %%insn_0040e222) db 0
    %%insn_0040e223:
    push dword 0x0 ; 0040E223 6A00
    %if ($ - %%insn_0040e223) > 2
        %error "LONG_0040E223"
    %endif
    times 2 - ($ - %%insn_0040e223) db 0
    %%insn_0040e225:
    push eax ; 0040E225 50
    %if ($ - %%insn_0040e225) > 1
        %error "LONG_0040E225"
    %endif
    times 1 - ($ - %%insn_0040e225) db 0
    %%insn_0040e226:
    call dword near [0x424444] ; 0040E226 FF1544444200
    %if ($ - %%insn_0040e226) > 6
        %error "LONG_0040E226"
    %endif
    times 6 - ($ - %%insn_0040e226) db 0
    %%insn_0040e22c:
    pop edi ; 0040E22C 5F
    %if ($ - %%insn_0040e22c) > 1
        %error "LONG_0040E22C"
    %endif
    times 1 - ($ - %%insn_0040e22c) db 0
    %%insn_0040e22d:
    pop esi ; 0040E22D 5E
    %if ($ - %%insn_0040e22d) > 1
        %error "LONG_0040E22D"
    %endif
    times 1 - ($ - %%insn_0040e22d) db 0
    db 0x33, 0xC0 ; 0040E22E 33C0 | xor eax,eax | encoding preserved
    %%insn_0040e230:
    pop ebp ; 0040E230 5D
    %if ($ - %%insn_0040e230) > 1
        %error "LONG_0040E230"
    %endif
    times 1 - ($ - %%insn_0040e230) db 0
    %%insn_0040e231:
    ret ; 0040E231 C3
    %if ($ - %%insn_0040e231) > 1
        %error "LONG_0040E231"
    %endif
    times 1 - ($ - %%insn_0040e231) db 0
    %if ($ - %%fragment_start) != 354
        %error "function fragment size drift: 0040E0D0"
    %endif
%endmacro
