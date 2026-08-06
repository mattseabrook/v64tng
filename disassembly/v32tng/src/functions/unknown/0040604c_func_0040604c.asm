; PE virtual entry 0040604C
; Ghidra working symbol: FUN_0040604c
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040604c_part_00 0
    %%fragment_start:
func_0040604c:
    %%insn_0040604c:
    push ebp ; 0040604C 55
    %if ($ - %%insn_0040604c) > 1
        %error "LONG_0040604C"
    %endif
    times 1 - ($ - %%insn_0040604c) db 0
    db 0x8B, 0xEC ; 0040604D 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040604f:
    sub esp,0x10 ; 0040604F 83EC10
    %if ($ - %%insn_0040604f) > 3
        %error "LONG_0040604F"
    %endif
    times 3 - ($ - %%insn_0040604f) db 0
    %%insn_00406052:
    push dword 0x421580 ; 00406052 6880154200
    %if ($ - %%insn_00406052) > 5
        %error "LONG_00406052"
    %endif
    times 5 - ($ - %%insn_00406052) db 0
    %%insn_00406057:
    call 0x404f90 ; 00406057 E834EFFFFF
    %if ($ - %%insn_00406057) > 5
        %error "LONG_00406057"
    %endif
    times 5 - ($ - %%insn_00406057) db 0
    %%insn_0040605c:
    add esp,0x4 ; 0040605C 83C404
    %if ($ - %%insn_0040605c) > 3
        %error "LONG_0040605C"
    %endif
    times 3 - ($ - %%insn_0040605c) db 0
    %%insn_0040605f:
    movsx eax,byte [ebp+0x8] ; 0040605F 0FBE4508
    %if ($ - %%insn_0040605f) > 4
        %error "LONG_0040605F"
    %endif
    times 4 - ($ - %%insn_0040605f) db 0
    %%insn_00406063:
    movsx ecx,byte [eax+0x4215b0] ; 00406063 0FBE88B0154200
    %if ($ - %%insn_00406063) > 7
        %error "LONG_00406063"
    %endif
    times 7 - ($ - %%insn_00406063) db 0
    %%insn_0040606a:
    movsx edx,byte [0x4215b1] ; 0040606A 0FBE15B1154200
    %if ($ - %%insn_0040606a) > 7
        %error "LONG_0040606A"
    %endif
    times 7 - ($ - %%insn_0040606a) db 0
    %%insn_00406071:
    mov eax,0x31 ; 00406071 B831000000
    %if ($ - %%insn_00406071) > 5
        %error "LONG_00406071"
    %endif
    times 5 - ($ - %%insn_00406071) db 0
    db 0x2B, 0xC2 ; 00406076 2BC2 | sub eax,edx | encoding preserved
    %%insn_00406078:
    movsx edx,byte [0x4215b2] ; 00406078 0FBE15B2154200
    %if ($ - %%insn_00406078) > 7
        %error "LONG_00406078"
    %endif
    times 7 - ($ - %%insn_00406078) db 0
    db 0x2B, 0xC2 ; 0040607F 2BC2 | sub eax,edx | encoding preserved
    %%insn_00406081:
    movsx edx,byte [0x4215b3] ; 00406081 0FBE15B3154200
    %if ($ - %%insn_00406081) > 7
        %error "LONG_00406081"
    %endif
    times 7 - ($ - %%insn_00406081) db 0
    db 0x2B, 0xC2 ; 00406088 2BC2 | sub eax,edx | encoding preserved
    %%insn_0040608a:
    movsx edx,byte [0x4215b4] ; 0040608A 0FBE15B4154200
    %if ($ - %%insn_0040608a) > 7
        %error "LONG_0040608A"
    %endif
    times 7 - ($ - %%insn_0040608a) db 0
    db 0x2B, 0xC2 ; 00406091 2BC2 | sub eax,edx | encoding preserved
    db 0x3B, 0xC8 ; 00406093 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_00406095:
    jnl short 0x4060a5 ; 00406095 7D0E
    %if ($ - %%insn_00406095) > 2
        %error "LONG_00406095"
    %endif
    times 2 - ($ - %%insn_00406095) db 0
    %%insn_00406097:
    call 0x405045 ; 00406097 E8A9EFFFFF
    %if ($ - %%insn_00406097) > 5
        %error "LONG_00406097"
    %endif
    times 5 - ($ - %%insn_00406097) db 0
    %%insn_0040609c:
    mov dword [ebp-0xc],0x4050af ; 0040609C C745F4AF504000
    %if ($ - %%insn_0040609c) > 7
        %error "LONG_0040609C"
    %endif
    times 7 - ($ - %%insn_0040609c) db 0
    %%insn_004060a3:
    jmp short 0x4060b1 ; 004060A3 EB0C
    %if ($ - %%insn_004060a3) > 2
        %error "LONG_004060A3"
    %endif
    times 2 - ($ - %%insn_004060a3) db 0
    %%insn_004060a5:
    call 0x405095 ; 004060A5 E8EBEFFFFF
    %if ($ - %%insn_004060a5) > 5
        %error "LONG_004060A5"
    %endif
    times 5 - ($ - %%insn_004060a5) db 0
    %%insn_004060aa:
    mov dword [ebp-0xc],0x4054b4 ; 004060AA C745F4B4544000
    %if ($ - %%insn_004060aa) > 7
        %error "LONG_004060AA"
    %endif
    times 7 - ($ - %%insn_004060aa) db 0
    %%insn_004060b1:
    mov al,[ebp+0x8] ; 004060B1 8A4508
    %if ($ - %%insn_004060b1) > 3
        %error "LONG_004060B1"
    %endif
    times 3 - ($ - %%insn_004060b1) db 0
    %%insn_004060b4:
    push eax ; 004060B4 50
    %if ($ - %%insn_004060b4) > 1
        %error "LONG_004060B4"
    %endif
    times 1 - ($ - %%insn_004060b4) db 0
    %%insn_004060b5:
    call dword near [ebp-0xc] ; 004060B5 FF55F4
    %if ($ - %%insn_004060b5) > 3
        %error "LONG_004060B5"
    %endif
    times 3 - ($ - %%insn_004060b5) db 0
    %%insn_004060b8:
    add esp,0x4 ; 004060B8 83C404
    %if ($ - %%insn_004060b8) > 3
        %error "LONG_004060B8"
    %endif
    times 3 - ($ - %%insn_004060b8) db 0
    %%insn_004060bb:
    movsx ecx,ax ; 004060BB 0FBFC8
    %if ($ - %%insn_004060bb) > 3
        %error "LONG_004060BB"
    %endif
    times 3 - ($ - %%insn_004060bb) db 0
    %%insn_004060be:
    test ecx,ecx ; 004060BE 85C9
    %if ($ - %%insn_004060be) > 2
        %error "LONG_004060BE"
    %endif
    times 2 - ($ - %%insn_004060be) db 0
    %%insn_004060c0:
    jnz short 0x4060ca ; 004060C0 7508
    %if ($ - %%insn_004060c0) > 2
        %error "LONG_004060C0"
    %endif
    times 2 - ($ - %%insn_004060c0) db 0
    db 0x66, 0x33, 0xC0 ; 004060C2 6633C0 | xor ax,ax | encoding preserved
    %%insn_004060c5:
    jmp 0x4062f9 ; 004060C5 E92F020000
    %if ($ - %%insn_004060c5) > 5
        %error "LONG_004060C5"
    %endif
    times 5 - ($ - %%insn_004060c5) db 0
    %%insn_004060ca:
    movsx edx,byte [ebp+0x8] ; 004060CA 0FBE5508
    %if ($ - %%insn_004060ca) > 4
        %error "LONG_004060CA"
    %endif
    times 4 - ($ - %%insn_004060ca) db 0
    %%insn_004060ce:
    movsx eax,byte [edx+0x4215b0] ; 004060CE 0FBE82B0154200
    %if ($ - %%insn_004060ce) > 7
        %error "LONG_004060CE"
    %endif
    times 7 - ($ - %%insn_004060ce) db 0
    %%insn_004060d5:
    movsx ecx,byte [0x4215b1] ; 004060D5 0FBE0DB1154200
    %if ($ - %%insn_004060d5) > 7
        %error "LONG_004060D5"
    %endif
    times 7 - ($ - %%insn_004060d5) db 0
    db 0x2B, 0xC1 ; 004060DC 2BC1 | sub eax,ecx | encoding preserved
    %%insn_004060de:
    movsx edx,byte [0x4215b2] ; 004060DE 0FBE15B2154200
    %if ($ - %%insn_004060de) > 7
        %error "LONG_004060DE"
    %endif
    times 7 - ($ - %%insn_004060de) db 0
    db 0x2B, 0xC2 ; 004060E5 2BC2 | sub eax,edx | encoding preserved
    %%insn_004060e7:
    movsx ecx,byte [0x4215b3] ; 004060E7 0FBE0DB3154200
    %if ($ - %%insn_004060e7) > 7
        %error "LONG_004060E7"
    %endif
    times 7 - ($ - %%insn_004060e7) db 0
    db 0x2B, 0xC1 ; 004060EE 2BC1 | sub eax,ecx | encoding preserved
    %%insn_004060f0:
    movsx edx,byte [0x4215b4] ; 004060F0 0FBE15B4154200
    %if ($ - %%insn_004060f0) > 7
        %error "LONG_004060F0"
    %endif
    times 7 - ($ - %%insn_004060f0) db 0
    db 0x2B, 0xC2 ; 004060F7 2BC2 | sub eax,edx | encoding preserved
    %%insn_004060f9:
    test eax,eax ; 004060F9 85C0
    %if ($ - %%insn_004060f9) > 2
        %error "LONG_004060F9"
    %endif
    times 2 - ($ - %%insn_004060f9) db 0
    %%insn_004060fb:
    jnz short 0x406103 ; 004060FB 7506
    %if ($ - %%insn_004060fb) > 2
        %error "LONG_004060FB"
    %endif
    times 2 - ($ - %%insn_004060fb) db 0
    %%insn_004060fd:
    mov word [ebp+0xc],0x0 ; 004060FD 66C7450C0000
    %if ($ - %%insn_004060fd) > 6
        %error "LONG_004060FD"
    %endif
    times 6 - ($ - %%insn_004060fd) db 0
    %%insn_00406103:
    mov byte [0x41f45c],0x0 ; 00406103 C6055CF4410000
    %if ($ - %%insn_00406103) > 7
        %error "LONG_00406103"
    %endif
    times 7 - ($ - %%insn_00406103) db 0
    %%insn_0040610a:
    movsx eax,byte [0x4215b7] ; 0040610A 0FBE05B7154200
    %if ($ - %%insn_0040610a) > 7
        %error "LONG_0040610A"
    %endif
    times 7 - ($ - %%insn_0040610a) db 0
    %%insn_00406111:
    cmp eax,0x1 ; 00406111 83F801
    %if ($ - %%insn_00406111) > 3
        %error "LONG_00406111"
    %endif
    times 3 - ($ - %%insn_00406111) db 0
    %%insn_00406114:
    jnz short 0x40611d ; 00406114 7507
    %if ($ - %%insn_00406114) > 2
        %error "LONG_00406114"
    %endif
    times 2 - ($ - %%insn_00406114) db 0
    %%insn_00406116:
    mov byte [0x41f45c],0x1 ; 00406116 C6055CF4410001
    %if ($ - %%insn_00406116) > 7
        %error "LONG_00406116"
    %endif
    times 7 - ($ - %%insn_00406116) db 0
    %%insn_0040611d:
    call 0x4059a7 ; 0040611D E885F8FFFF
    %if ($ - %%insn_0040611d) > 5
        %error "LONG_0040611D"
    %endif
    times 5 - ($ - %%insn_0040611d) db 0
    %%insn_00406122:
    movsx ecx,word [ebp+0xc] ; 00406122 0FBF4D0C
    %if ($ - %%insn_00406122) > 4
        %error "LONG_00406122"
    %endif
    times 4 - ($ - %%insn_00406122) db 0
    %%insn_00406126:
    test ecx,ecx ; 00406126 85C9
    %if ($ - %%insn_00406126) > 2
        %error "LONG_00406126"
    %endif
    times 2 - ($ - %%insn_00406126) db 0
    %%insn_00406128:
    jz short 0x40618a ; 00406128 7460
    %if ($ - %%insn_00406128) > 2
        %error "LONG_00406128"
    %endif
    times 2 - ($ - %%insn_00406128) db 0
    %%insn_0040612a:
    mov dl,[ebp+0x8] ; 0040612A 8A5508
    %if ($ - %%insn_0040612a) > 3
        %error "LONG_0040612A"
    %endif
    times 3 - ($ - %%insn_0040612a) db 0
    %%insn_0040612d:
    push edx ; 0040612D 52
    %if ($ - %%insn_0040612d) > 1
        %error "LONG_0040612D"
    %endif
    times 1 - ($ - %%insn_0040612d) db 0
    %%insn_0040612e:
    call 0x40563c ; 0040612E E809F5FFFF
    %if ($ - %%insn_0040612e) > 5
        %error "LONG_0040612E"
    %endif
    times 5 - ($ - %%insn_0040612e) db 0
    %%insn_00406133:
    add esp,0x4 ; 00406133 83C404
    %if ($ - %%insn_00406133) > 3
        %error "LONG_00406133"
    %endif
    times 3 - ($ - %%insn_00406133) db 0
    %%insn_00406136:
    mov word [0x41f470],0x0 ; 00406136 66C70570F441000000
    %if ($ - %%insn_00406136) > 9
        %error "LONG_00406136"
    %endif
    times 9 - ($ - %%insn_00406136) db 0
    %%insn_0040613f:
    cmp dword [ebp-0xc],0x4054b4 ; 0040613F 817DF4B4544000
    %if ($ - %%insn_0040613f) > 7
        %error "LONG_0040613F"
    %endif
    times 7 - ($ - %%insn_0040613f) db 0
    %%insn_00406146:
    jnz short 0x406164 ; 00406146 751C
    %if ($ - %%insn_00406146) > 2
        %error "LONG_00406146"
    %endif
    times 2 - ($ - %%insn_00406146) db 0
    %%insn_00406148:
    push dword 0xffffffffffffff81 ; 00406148 6A81
    %if ($ - %%insn_00406148) > 2
        %error "LONG_00406148"
    %endif
    times 2 - ($ - %%insn_00406148) db 0
    %%insn_0040614a:
    mov ax,[ebp+0xc] ; 0040614A 668B450C
    %if ($ - %%insn_0040614a) > 4
        %error "LONG_0040614A"
    %endif
    times 4 - ($ - %%insn_0040614a) db 0
    %%insn_0040614e:
    push eax ; 0040614E 50
    %if ($ - %%insn_0040614e) > 1
        %error "LONG_0040614E"
    %endif
    times 1 - ($ - %%insn_0040614e) db 0
    %%insn_0040614f:
    mov cl,[ebp+0x8] ; 0040614F 8A4D08
    %if ($ - %%insn_0040614f) > 3
        %error "LONG_0040614F"
    %endif
    times 3 - ($ - %%insn_0040614f) db 0
    %%insn_00406152:
    push ecx ; 00406152 51
    %if ($ - %%insn_00406152) > 1
        %error "LONG_00406152"
    %endif
    times 1 - ($ - %%insn_00406152) db 0
    %%insn_00406153:
    mov dl,[ebp+0x8] ; 00406153 8A5508
    %if ($ - %%insn_00406153) > 3
        %error "LONG_00406153"
    %endif
    times 3 - ($ - %%insn_00406153) db 0
    %%insn_00406156:
    push edx ; 00406156 52
    %if ($ - %%insn_00406156) > 1
        %error "LONG_00406156"
    %endif
    times 1 - ($ - %%insn_00406156) db 0
    %%insn_00406157:
    call 0x405cbb ; 00406157 E85FFBFFFF
    %if ($ - %%insn_00406157) > 5
        %error "LONG_00406157"
    %endif
    times 5 - ($ - %%insn_00406157) db 0
    %%insn_0040615c:
    add esp,0x10 ; 0040615C 83C410
    %if ($ - %%insn_0040615c) > 3
        %error "LONG_0040615C"
    %endif
    times 3 - ($ - %%insn_0040615c) db 0
    %%insn_0040615f:
    mov [ebp-0x4],al ; 0040615F 8845FC
    %if ($ - %%insn_0040615f) > 3
        %error "LONG_0040615F"
    %endif
    times 3 - ($ - %%insn_0040615f) db 0
    %%insn_00406162:
    jmp short 0x406188 ; 00406162 EB24
    %if ($ - %%insn_00406162) > 2
        %error "LONG_00406162"
    %endif
    times 2 - ($ - %%insn_00406162) db 0
    %%insn_00406164:
    call 0x405c15 ; 00406164 E8ACFAFFFF
    %if ($ - %%insn_00406164) > 5
        %error "LONG_00406164"
    %endif
    times 5 - ($ - %%insn_00406164) db 0
    %%insn_00406169:
    push dword 0xffffffffffffff81 ; 00406169 6A81
    %if ($ - %%insn_00406169) > 2
        %error "LONG_00406169"
    %endif
    times 2 - ($ - %%insn_00406169) db 0
    %%insn_0040616b:
    mov ax,[ebp+0xc] ; 0040616B 668B450C
    %if ($ - %%insn_0040616b) > 4
        %error "LONG_0040616B"
    %endif
    times 4 - ($ - %%insn_0040616b) db 0
    %%insn_0040616f:
    push eax ; 0040616F 50
    %if ($ - %%insn_0040616f) > 1
        %error "LONG_0040616F"
    %endif
    times 1 - ($ - %%insn_0040616f) db 0
    %%insn_00406170:
    mov cl,[ebp+0x8] ; 00406170 8A4D08
    %if ($ - %%insn_00406170) > 3
        %error "LONG_00406170"
    %endif
    times 3 - ($ - %%insn_00406170) db 0
    %%insn_00406173:
    push ecx ; 00406173 51
    %if ($ - %%insn_00406173) > 1
        %error "LONG_00406173"
    %endif
    times 1 - ($ - %%insn_00406173) db 0
    %%insn_00406174:
    mov dl,[ebp+0x8] ; 00406174 8A5508
    %if ($ - %%insn_00406174) > 3
        %error "LONG_00406174"
    %endif
    times 3 - ($ - %%insn_00406174) db 0
    %%insn_00406177:
    push edx ; 00406177 52
    %if ($ - %%insn_00406177) > 1
        %error "LONG_00406177"
    %endif
    times 1 - ($ - %%insn_00406177) db 0
    %%insn_00406178:
    call 0x405cbb ; 00406178 E83EFBFFFF
    %if ($ - %%insn_00406178) > 5
        %error "LONG_00406178"
    %endif
    times 5 - ($ - %%insn_00406178) db 0
    %%insn_0040617d:
    add esp,0x10 ; 0040617D 83C410
    %if ($ - %%insn_0040617d) > 3
        %error "LONG_0040617D"
    %endif
    times 3 - ($ - %%insn_0040617d) db 0
    %%insn_00406180:
    mov [ebp-0x4],al ; 00406180 8845FC
    %if ($ - %%insn_00406180) > 3
        %error "LONG_00406180"
    %endif
    times 3 - ($ - %%insn_00406180) db 0
    %%insn_00406183:
    call 0x405c68 ; 00406183 E8E0FAFFFF
    %if ($ - %%insn_00406183) > 5
        %error "LONG_00406183"
    %endif
    times 5 - ($ - %%insn_00406183) db 0
    %%insn_00406188:
    jmp short 0x40619d ; 00406188 EB13
    %if ($ - %%insn_00406188) > 2
        %error "LONG_00406188"
    %endif
    times 2 - ($ - %%insn_00406188) db 0
    %%insn_0040618a:
    mov al,[ebp+0x8] ; 0040618A 8A4508
    %if ($ - %%insn_0040618a) > 3
        %error "LONG_0040618A"
    %endif
    times 3 - ($ - %%insn_0040618a) db 0
    %%insn_0040618d:
    push eax ; 0040618D 50
    %if ($ - %%insn_0040618d) > 1
        %error "LONG_0040618D"
    %endif
    times 1 - ($ - %%insn_0040618d) db 0
    %%insn_0040618e:
    mov cl,[ebp+0x8] ; 0040618E 8A4D08
    %if ($ - %%insn_0040618e) > 3
        %error "LONG_0040618E"
    %endif
    times 3 - ($ - %%insn_0040618e) db 0
    %%insn_00406191:
    push ecx ; 00406191 51
    %if ($ - %%insn_00406191) > 1
        %error "LONG_00406191"
    %endif
    times 1 - ($ - %%insn_00406191) db 0
    %%insn_00406192:
    call 0x4056b2 ; 00406192 E81BF5FFFF
    %if ($ - %%insn_00406192) > 5
        %error "LONG_00406192"
    %endif
    times 5 - ($ - %%insn_00406192) db 0
    %%insn_00406197:
    add esp,0x8 ; 00406197 83C408
    %if ($ - %%insn_00406197) > 3
        %error "LONG_00406197"
    %endif
    times 3 - ($ - %%insn_00406197) db 0
    %%insn_0040619a:
    mov [ebp-0x4],al ; 0040619A 8845FC
    %if ($ - %%insn_0040619a) > 3
        %error "LONG_0040619A"
    %endif
    times 3 - ($ - %%insn_0040619a) db 0
    %%insn_0040619d:
    movsx edx,byte [ebp+0x8] ; 0040619D 0FBE5508
    %if ($ - %%insn_0040619d) > 4
        %error "LONG_0040619D"
    %endif
    times 4 - ($ - %%insn_0040619d) db 0
    %%insn_004061a1:
    movsx eax,byte [edx+0x4215b0] ; 004061A1 0FBE82B0154200
    %if ($ - %%insn_004061a1) > 7
        %error "LONG_004061A1"
    %endif
    times 7 - ($ - %%insn_004061a1) db 0
    %%insn_004061a8:
    shl eax,1 ; 004061A8 D1E0
    %if ($ - %%insn_004061a8) > 2
        %error "LONG_004061A8"
    %endif
    times 2 - ($ - %%insn_004061a8) db 0
    %%insn_004061aa:
    movsx ecx,byte [0x4215b1] ; 004061AA 0FBE0DB1154200
    %if ($ - %%insn_004061aa) > 7
        %error "LONG_004061AA"
    %endif
    times 7 - ($ - %%insn_004061aa) db 0
    db 0x2B, 0xC1 ; 004061B1 2BC1 | sub eax,ecx | encoding preserved
    %%insn_004061b3:
    movsx edx,byte [0x4215b2] ; 004061B3 0FBE15B2154200
    %if ($ - %%insn_004061b3) > 7
        %error "LONG_004061B3"
    %endif
    times 7 - ($ - %%insn_004061b3) db 0
    db 0x2B, 0xC2 ; 004061BA 2BC2 | sub eax,edx | encoding preserved
    %%insn_004061bc:
    movsx ecx,byte [0x4215b3] ; 004061BC 0FBE0DB3154200
    %if ($ - %%insn_004061bc) > 7
        %error "LONG_004061BC"
    %endif
    times 7 - ($ - %%insn_004061bc) db 0
    db 0x2B, 0xC1 ; 004061C3 2BC1 | sub eax,ecx | encoding preserved
    %%insn_004061c5:
    movsx edx,byte [0x4215b4] ; 004061C5 0FBE15B4154200
    %if ($ - %%insn_004061c5) > 7
        %error "LONG_004061C5"
    %endif
    times 7 - ($ - %%insn_004061c5) db 0
    db 0x2B, 0xC2 ; 004061CC 2BC2 | sub eax,edx | encoding preserved
    %%insn_004061ce:
    shl eax,1 ; 004061CE D1E0
    %if ($ - %%insn_004061ce) > 2
        %error "LONG_004061CE"
    %endif
    times 2 - ($ - %%insn_004061ce) db 0
    %%insn_004061d0:
    mov [ebp-0x8],al ; 004061D0 8845F8
    %if ($ - %%insn_004061d0) > 3
        %error "LONG_004061D0"
    %endif
    times 3 - ($ - %%insn_004061d0) db 0
    %%insn_004061d3:
    mov al,[ebp+0x8] ; 004061D3 8A4508
    %if ($ - %%insn_004061d3) > 3
        %error "LONG_004061D3"
    %endif
    times 3 - ($ - %%insn_004061d3) db 0
    %%insn_004061d6:
    push eax ; 004061D6 50
    %if ($ - %%insn_004061d6) > 1
        %error "LONG_004061D6"
    %endif
    times 1 - ($ - %%insn_004061d6) db 0
    %%insn_004061d7:
    call dword near [ebp-0xc] ; 004061D7 FF55F4
    %if ($ - %%insn_004061d7) > 3
        %error "LONG_004061D7"
    %endif
    times 3 - ($ - %%insn_004061d7) db 0
    %%insn_004061da:
    add esp,0x4 ; 004061DA 83C404
    %if ($ - %%insn_004061da) > 3
        %error "LONG_004061DA"
    %endif
    times 3 - ($ - %%insn_004061da) db 0
    %%insn_004061dd:
    movsx ecx,ax ; 004061DD 0FBFC8
    %if ($ - %%insn_004061dd) > 3
        %error "LONG_004061DD"
    %endif
    times 3 - ($ - %%insn_004061dd) db 0
    %%insn_004061e0:
    test ecx,ecx ; 004061E0 85C9
    %if ($ - %%insn_004061e0) > 2
        %error "LONG_004061E0"
    %endif
    times 2 - ($ - %%insn_004061e0) db 0
    %%insn_004061e2:
    jz 0x4062e9 ; 004061E2 0F8401010000
    %if ($ - %%insn_004061e2) > 6
        %error "LONG_004061E2"
    %endif
    times 6 - ($ - %%insn_004061e2) db 0
    %%insn_004061e8:
    movsx edx,byte [0x41f458] ; 004061E8 0FBE1558F44100
    %if ($ - %%insn_004061e8) > 7
        %error "LONG_004061E8"
    %endif
    times 7 - ($ - %%insn_004061e8) db 0
    %%insn_004061ef:
    test edx,edx ; 004061EF 85D2
    %if ($ - %%insn_004061ef) > 2
        %error "LONG_004061EF"
    %endif
    times 2 - ($ - %%insn_004061ef) db 0
    %%insn_004061f1:
    jz short 0x4061f8 ; 004061F1 7405
    %if ($ - %%insn_004061f1) > 2
        %error "LONG_004061F1"
    %endif
    times 2 - ($ - %%insn_004061f1) db 0
    %%insn_004061f3:
    jmp 0x4062e9 ; 004061F3 E9F1000000
    %if ($ - %%insn_004061f3) > 5
        %error "LONG_004061F3"
    %endif
    times 5 - ($ - %%insn_004061f3) db 0
    %%insn_004061f8:
    mov byte [0x41f45c],0x0 ; 004061F8 C6055CF4410000
    %if ($ - %%insn_004061f8) > 7
        %error "LONG_004061F8"
    %endif
    times 7 - ($ - %%insn_004061f8) db 0
    %%insn_004061ff:
    movsx eax,byte [0x4215b7] ; 004061FF 0FBE05B7154200
    %if ($ - %%insn_004061ff) > 7
        %error "LONG_004061FF"
    %endif
    times 7 - ($ - %%insn_004061ff) db 0
    %%insn_00406206:
    cmp eax,0x2 ; 00406206 83F802
    %if ($ - %%insn_00406206) > 3
        %error "LONG_00406206"
    %endif
    times 3 - ($ - %%insn_00406206) db 0
    %%insn_00406209:
    jnz short 0x40622a ; 00406209 751F
    %if ($ - %%insn_00406209) > 2
        %error "LONG_00406209"
    %endif
    times 2 - ($ - %%insn_00406209) db 0
    %%insn_0040620b:
    mov cl,[ebp+0x8] ; 0040620B 8A4D08
    %if ($ - %%insn_0040620b) > 3
        %error "LONG_0040620B"
    %endif
    times 3 - ($ - %%insn_0040620b) db 0
    %%insn_0040620e:
    push ecx ; 0040620E 51
    %if ($ - %%insn_0040620e) > 1
        %error "LONG_0040620E"
    %endif
    times 1 - ($ - %%insn_0040620e) db 0
    %%insn_0040620f:
    mov dl,[ebp+0x8] ; 0040620F 8A5508
    %if ($ - %%insn_0040620f) > 3
        %error "LONG_0040620F"
    %endif
    times 3 - ($ - %%insn_0040620f) db 0
    %%insn_00406212:
    push edx ; 00406212 52
    %if ($ - %%insn_00406212) > 1
        %error "LONG_00406212"
    %endif
    times 1 - ($ - %%insn_00406212) db 0
    %%insn_00406213:
    call 0x4056b2 ; 00406213 E89AF4FFFF
    %if ($ - %%insn_00406213) > 5
        %error "LONG_00406213"
    %endif
    times 5 - ($ - %%insn_00406213) db 0
    %%insn_00406218:
    add esp,0x8 ; 00406218 83C408
    %if ($ - %%insn_00406218) > 3
        %error "LONG_00406218"
    %endif
    times 3 - ($ - %%insn_00406218) db 0
    %%insn_0040621b:
    movsx eax,al ; 0040621B 0FBEC0
    %if ($ - %%insn_0040621b) > 3
        %error "LONG_0040621B"
    %endif
    times 3 - ($ - %%insn_0040621b) db 0
    %%insn_0040621e:
    movsx ecx,byte [ebp-0x8] ; 0040621E 0FBE4DF8
    %if ($ - %%insn_0040621e) > 4
        %error "LONG_0040621E"
    %endif
    times 4 - ($ - %%insn_0040621e) db 0
    db 0x3B, 0xC1 ; 00406222 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00406224:
    jz 0x4062e4 ; 00406224 0F84BA000000
    %if ($ - %%insn_00406224) > 6
        %error "LONG_00406224"
    %endif
    times 6 - ($ - %%insn_00406224) db 0
    %%insn_0040622a:
    movsx edx,byte [0x4215b7] ; 0040622A 0FBE15B7154200
    %if ($ - %%insn_0040622a) > 7
        %error "LONG_0040622A"
    %endif
    times 7 - ($ - %%insn_0040622a) db 0
    %%insn_00406231:
    cmp edx,0x1 ; 00406231 83FA01
    %if ($ - %%insn_00406231) > 3
        %error "LONG_00406231"
    %endif
    times 3 - ($ - %%insn_00406231) db 0
    %%insn_00406234:
    jnz short 0x40623d ; 00406234 7507
    %if ($ - %%insn_00406234) > 2
        %error "LONG_00406234"
    %endif
    times 2 - ($ - %%insn_00406234) db 0
    %%insn_00406236:
    mov byte [0x41f45c],0x1 ; 00406236 C6055CF4410001
    %if ($ - %%insn_00406236) > 7
        %error "LONG_00406236"
    %endif
    times 7 - ($ - %%insn_00406236) db 0
    %%insn_0040623d:
    movsx eax,word [ebp+0xc] ; 0040623D 0FBF450C
    %if ($ - %%insn_0040623d) > 4
        %error "LONG_0040623D"
    %endif
    times 4 - ($ - %%insn_0040623d) db 0
    %%insn_00406241:
    test eax,eax ; 00406241 85C0
    %if ($ - %%insn_00406241) > 2
        %error "LONG_00406241"
    %endif
    times 2 - ($ - %%insn_00406241) db 0
    %%insn_00406243:
    jz short 0x4062a9 ; 00406243 7464
    %if ($ - %%insn_00406243) > 2
        %error "LONG_00406243"
    %endif
    times 2 - ($ - %%insn_00406243) db 0
    %%insn_00406245:
    mov cl,[ebp+0x8] ; 00406245 8A4D08
    %if ($ - %%insn_00406245) > 3
        %error "LONG_00406245"
    %endif
    times 3 - ($ - %%insn_00406245) db 0
    %%insn_00406248:
    push ecx ; 00406248 51
    %if ($ - %%insn_00406248) > 1
        %error "LONG_00406248"
    %endif
    times 1 - ($ - %%insn_00406248) db 0
    %%insn_00406249:
    call 0x40563c ; 00406249 E8EEF3FFFF
    %if ($ - %%insn_00406249) > 5
        %error "LONG_00406249"
    %endif
    times 5 - ($ - %%insn_00406249) db 0
    %%insn_0040624e:
    add esp,0x4 ; 0040624E 83C404
    %if ($ - %%insn_0040624e) > 3
        %error "LONG_0040624E"
    %endif
    times 3 - ($ - %%insn_0040624e) db 0
    %%insn_00406251:
    mov word [0x41f470],0x0 ; 00406251 66C70570F441000000
    %if ($ - %%insn_00406251) > 9
        %error "LONG_00406251"
    %endif
    times 9 - ($ - %%insn_00406251) db 0
    %%insn_0040625a:
    cmp dword [ebp-0xc],0x4054b4 ; 0040625A 817DF4B4544000
    %if ($ - %%insn_0040625a) > 7
        %error "LONG_0040625A"
    %endif
    times 7 - ($ - %%insn_0040625a) db 0
    %%insn_00406261:
    jnz short 0x406281 ; 00406261 751E
    %if ($ - %%insn_00406261) > 2
        %error "LONG_00406261"
    %endif
    times 2 - ($ - %%insn_00406261) db 0
    %%insn_00406263:
    mov dl,[ebp-0x4] ; 00406263 8A55FC
    %if ($ - %%insn_00406263) > 3
        %error "LONG_00406263"
    %endif
    times 3 - ($ - %%insn_00406263) db 0
    %%insn_00406266:
    push edx ; 00406266 52
    %if ($ - %%insn_00406266) > 1
        %error "LONG_00406266"
    %endif
    times 1 - ($ - %%insn_00406266) db 0
    %%insn_00406267:
    mov ax,[ebp+0xc] ; 00406267 668B450C
    %if ($ - %%insn_00406267) > 4
        %error "LONG_00406267"
    %endif
    times 4 - ($ - %%insn_00406267) db 0
    %%insn_0040626b:
    push eax ; 0040626B 50
    %if ($ - %%insn_0040626b) > 1
        %error "LONG_0040626B"
    %endif
    times 1 - ($ - %%insn_0040626b) db 0
    %%insn_0040626c:
    mov cl,[ebp+0x8] ; 0040626C 8A4D08
    %if ($ - %%insn_0040626c) > 3
        %error "LONG_0040626C"
    %endif
    times 3 - ($ - %%insn_0040626c) db 0
    %%insn_0040626f:
    push ecx ; 0040626F 51
    %if ($ - %%insn_0040626f) > 1
        %error "LONG_0040626F"
    %endif
    times 1 - ($ - %%insn_0040626f) db 0
    %%insn_00406270:
    mov dl,[ebp+0x8] ; 00406270 8A5508
    %if ($ - %%insn_00406270) > 3
        %error "LONG_00406270"
    %endif
    times 3 - ($ - %%insn_00406270) db 0
    %%insn_00406273:
    push edx ; 00406273 52
    %if ($ - %%insn_00406273) > 1
        %error "LONG_00406273"
    %endif
    times 1 - ($ - %%insn_00406273) db 0
    %%insn_00406274:
    call 0x405cbb ; 00406274 E842FAFFFF
    %if ($ - %%insn_00406274) > 5
        %error "LONG_00406274"
    %endif
    times 5 - ($ - %%insn_00406274) db 0
    %%insn_00406279:
    add esp,0x10 ; 00406279 83C410
    %if ($ - %%insn_00406279) > 3
        %error "LONG_00406279"
    %endif
    times 3 - ($ - %%insn_00406279) db 0
    %%insn_0040627c:
    mov [ebp-0x10],al ; 0040627C 8845F0
    %if ($ - %%insn_0040627c) > 3
        %error "LONG_0040627C"
    %endif
    times 3 - ($ - %%insn_0040627c) db 0
    %%insn_0040627f:
    jmp short 0x4062a7 ; 0040627F EB26
    %if ($ - %%insn_0040627f) > 2
        %error "LONG_0040627F"
    %endif
    times 2 - ($ - %%insn_0040627f) db 0
    %%insn_00406281:
    call 0x405c15 ; 00406281 E88FF9FFFF
    %if ($ - %%insn_00406281) > 5
        %error "LONG_00406281"
    %endif
    times 5 - ($ - %%insn_00406281) db 0
    %%insn_00406286:
    mov al,[ebp-0x4] ; 00406286 8A45FC
    %if ($ - %%insn_00406286) > 3
        %error "LONG_00406286"
    %endif
    times 3 - ($ - %%insn_00406286) db 0
    %%insn_00406289:
    push eax ; 00406289 50
    %if ($ - %%insn_00406289) > 1
        %error "LONG_00406289"
    %endif
    times 1 - ($ - %%insn_00406289) db 0
    %%insn_0040628a:
    mov cx,[ebp+0xc] ; 0040628A 668B4D0C
    %if ($ - %%insn_0040628a) > 4
        %error "LONG_0040628A"
    %endif
    times 4 - ($ - %%insn_0040628a) db 0
    %%insn_0040628e:
    push ecx ; 0040628E 51
    %if ($ - %%insn_0040628e) > 1
        %error "LONG_0040628E"
    %endif
    times 1 - ($ - %%insn_0040628e) db 0
    %%insn_0040628f:
    mov dl,[ebp+0x8] ; 0040628F 8A5508
    %if ($ - %%insn_0040628f) > 3
        %error "LONG_0040628F"
    %endif
    times 3 - ($ - %%insn_0040628f) db 0
    %%insn_00406292:
    push edx ; 00406292 52
    %if ($ - %%insn_00406292) > 1
        %error "LONG_00406292"
    %endif
    times 1 - ($ - %%insn_00406292) db 0
    %%insn_00406293:
    mov al,[ebp+0x8] ; 00406293 8A4508
    %if ($ - %%insn_00406293) > 3
        %error "LONG_00406293"
    %endif
    times 3 - ($ - %%insn_00406293) db 0
    %%insn_00406296:
    push eax ; 00406296 50
    %if ($ - %%insn_00406296) > 1
        %error "LONG_00406296"
    %endif
    times 1 - ($ - %%insn_00406296) db 0
    %%insn_00406297:
    call 0x405cbb ; 00406297 E81FFAFFFF
    %if ($ - %%insn_00406297) > 5
        %error "LONG_00406297"
    %endif
    times 5 - ($ - %%insn_00406297) db 0
    %%insn_0040629c:
    add esp,0x10 ; 0040629C 83C410
    %if ($ - %%insn_0040629c) > 3
        %error "LONG_0040629C"
    %endif
    times 3 - ($ - %%insn_0040629c) db 0
    %%insn_0040629f:
    mov [ebp-0x10],al ; 0040629F 8845F0
    %if ($ - %%insn_0040629f) > 3
        %error "LONG_0040629F"
    %endif
    times 3 - ($ - %%insn_0040629f) db 0
    %%insn_004062a2:
    call 0x405c68 ; 004062A2 E8C1F9FFFF
    %if ($ - %%insn_004062a2) > 5
        %error "LONG_004062A2"
    %endif
    times 5 - ($ - %%insn_004062a2) db 0
    %%insn_004062a7:
    jmp short 0x4062bc ; 004062A7 EB13
    %if ($ - %%insn_004062a7) > 2
        %error "LONG_004062A7"
    %endif
    times 2 - ($ - %%insn_004062a7) db 0
    %%insn_004062a9:
    mov cl,[ebp+0x8] ; 004062A9 8A4D08
    %if ($ - %%insn_004062a9) > 3
        %error "LONG_004062A9"
    %endif
    times 3 - ($ - %%insn_004062a9) db 0
    %%insn_004062ac:
    push ecx ; 004062AC 51
    %if ($ - %%insn_004062ac) > 1
        %error "LONG_004062AC"
    %endif
    times 1 - ($ - %%insn_004062ac) db 0
    %%insn_004062ad:
    mov dl,[ebp+0x8] ; 004062AD 8A5508
    %if ($ - %%insn_004062ad) > 3
        %error "LONG_004062AD"
    %endif
    times 3 - ($ - %%insn_004062ad) db 0
    %%insn_004062b0:
    push edx ; 004062B0 52
    %if ($ - %%insn_004062b0) > 1
        %error "LONG_004062B0"
    %endif
    times 1 - ($ - %%insn_004062b0) db 0
    %%insn_004062b1:
    call 0x4056b2 ; 004062B1 E8FCF3FFFF
    %if ($ - %%insn_004062b1) > 5
        %error "LONG_004062B1"
    %endif
    times 5 - ($ - %%insn_004062b1) db 0
    %%insn_004062b6:
    add esp,0x8 ; 004062B6 83C408
    %if ($ - %%insn_004062b6) > 3
        %error "LONG_004062B6"
    %endif
    times 3 - ($ - %%insn_004062b6) db 0
    %%insn_004062b9:
    mov [ebp-0x10],al ; 004062B9 8845F0
    %if ($ - %%insn_004062b9) > 3
        %error "LONG_004062B9"
    %endif
    times 3 - ($ - %%insn_004062b9) db 0
    %%insn_004062bc:
    movsx eax,byte [ebp-0x10] ; 004062BC 0FBE45F0
    %if ($ - %%insn_004062bc) > 4
        %error "LONG_004062BC"
    %endif
    times 4 - ($ - %%insn_004062bc) db 0
    %%insn_004062c0:
    movsx ecx,byte [ebp-0x4] ; 004062C0 0FBE4DFC
    %if ($ - %%insn_004062c0) > 4
        %error "LONG_004062C0"
    %endif
    times 4 - ($ - %%insn_004062c0) db 0
    db 0x3B, 0xC1 ; 004062C4 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004062c6:
    jnz short 0x4062cd ; 004062C6 7505
    %if ($ - %%insn_004062c6) > 2
        %error "LONG_004062C6"
    %endif
    times 2 - ($ - %%insn_004062c6) db 0
    %%insn_004062c8:
    call 0x4059d7 ; 004062C8 E80AF7FFFF
    %if ($ - %%insn_004062c8) > 5
        %error "LONG_004062C8"
    %endif
    times 5 - ($ - %%insn_004062c8) db 0
    %%insn_004062cd:
    movsx edx,byte [ebp-0x10] ; 004062CD 0FBE55F0
    %if ($ - %%insn_004062cd) > 4
        %error "LONG_004062CD"
    %endif
    times 4 - ($ - %%insn_004062cd) db 0
    %%insn_004062d1:
    movsx eax,byte [ebp-0x4] ; 004062D1 0FBE45FC
    %if ($ - %%insn_004062d1) > 4
        %error "LONG_004062D1"
    %endif
    times 4 - ($ - %%insn_004062d1) db 0
    db 0x3B, 0xD0 ; 004062D5 3BD0 | cmp edx,eax | encoding preserved
    %%insn_004062d7:
    jng short 0x4062e4 ; 004062D7 7E0B
    %if ($ - %%insn_004062d7) > 2
        %error "LONG_004062D7"
    %endif
    times 2 - ($ - %%insn_004062d7) db 0
    %%insn_004062d9:
    call 0x4059a7 ; 004062D9 E8C9F6FFFF
    %if ($ - %%insn_004062d9) > 5
        %error "LONG_004062D9"
    %endif
    times 5 - ($ - %%insn_004062d9) db 0
    %%insn_004062de:
    mov cl,[ebp-0x10] ; 004062DE 8A4DF0
    %if ($ - %%insn_004062de) > 3
        %error "LONG_004062DE"
    %endif
    times 3 - ($ - %%insn_004062de) db 0
    %%insn_004062e1:
    mov [ebp-0x4],cl ; 004062E1 884DFC
    %if ($ - %%insn_004062e1) > 3
        %error "LONG_004062E1"
    %endif
    times 3 - ($ - %%insn_004062e1) db 0
    %%insn_004062e4:
    jmp 0x4061d3 ; 004062E4 E9EAFEFFFF
    %if ($ - %%insn_004062e4) > 5
        %error "LONG_004062E4"
    %endif
    times 5 - ($ - %%insn_004062e4) db 0
    %%insn_004062e9:
    mov dl,[ebp+0x8] ; 004062E9 8A5508
    %if ($ - %%insn_004062e9) > 3
        %error "LONG_004062E9"
    %endif
    times 3 - ($ - %%insn_004062e9) db 0
    %%insn_004062ec:
    push edx ; 004062EC 52
    %if ($ - %%insn_004062ec) > 1
        %error "LONG_004062EC"
    %endif
    times 1 - ($ - %%insn_004062ec) db 0
    %%insn_004062ed:
    call 0x405a24 ; 004062ED E832F7FFFF
    %if ($ - %%insn_004062ed) > 5
        %error "LONG_004062ED"
    %endif
    times 5 - ($ - %%insn_004062ed) db 0
    %%insn_004062f2:
    add esp,0x4 ; 004062F2 83C404
    %if ($ - %%insn_004062f2) > 3
        %error "LONG_004062F2"
    %endif
    times 3 - ($ - %%insn_004062f2) db 0
    %%insn_004062f5:
    mov ax,0x1 ; 004062F5 66B80100
    %if ($ - %%insn_004062f5) > 4
        %error "LONG_004062F5"
    %endif
    times 4 - ($ - %%insn_004062f5) db 0
    db 0x8B, 0xE5 ; 004062F9 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004062fb:
    pop ebp ; 004062FB 5D
    %if ($ - %%insn_004062fb) > 1
        %error "LONG_004062FB"
    %endif
    times 1 - ($ - %%insn_004062fb) db 0
    %%insn_004062fc:
    ret ; 004062FC C3
    %if ($ - %%insn_004062fc) > 1
        %error "LONG_004062FC"
    %endif
    times 1 - ($ - %%insn_004062fc) db 0
    %if ($ - %%fragment_start) != 689
        %error "function fragment size drift: 0040604C"
    %endif
%endmacro
