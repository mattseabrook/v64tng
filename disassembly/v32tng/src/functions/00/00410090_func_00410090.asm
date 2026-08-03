; PE virtual entry 00410090
; Ghidra working symbol: FUN_00410090
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00410090_part_00 0
    %%fragment_start:
func_00410090:
    %%insn_00410090:
    mov eax,[esp+0xc] ; 00410090 8B44240C
    %if ($ - %%insn_00410090) > 4
        %error "LONG_00410090"
    %endif
    times 4 - ($ - %%insn_00410090) db 0
    %%insn_00410094:
    sub esp,0xc ; 00410094 83EC0C
    %if ($ - %%insn_00410094) > 3
        %error "LONG_00410094"
    %endif
    times 3 - ($ - %%insn_00410094) db 0
    %%insn_00410097:
    push ebx ; 00410097 53
    %if ($ - %%insn_00410097) > 1
        %error "LONG_00410097"
    %endif
    times 1 - ($ - %%insn_00410097) db 0
    %%insn_00410098:
    push ebp ; 00410098 55
    %if ($ - %%insn_00410098) > 1
        %error "LONG_00410098"
    %endif
    times 1 - ($ - %%insn_00410098) db 0
    %%insn_00410099:
    push esi ; 00410099 56
    %if ($ - %%insn_00410099) > 1
        %error "LONG_00410099"
    %endif
    times 1 - ($ - %%insn_00410099) db 0
    %%insn_0041009a:
    push edi ; 0041009A 57
    %if ($ - %%insn_0041009a) > 1
        %error "LONG_0041009A"
    %endif
    times 1 - ($ - %%insn_0041009a) db 0
    %%insn_0041009b:
    mov edi,[esp+0x24] ; 0041009B 8B7C2424
    %if ($ - %%insn_0041009b) > 4
        %error "LONG_0041009B"
    %endif
    times 4 - ($ - %%insn_0041009b) db 0
    db 0x33, 0xED ; 0041009F 33ED | xor ebp,ebp | encoding preserved
    %%insn_004100a1:
    test eax,eax ; 004100A1 85C0
    %if ($ - %%insn_004100a1) > 2
        %error "LONG_004100A1"
    %endif
    times 2 - ($ - %%insn_004100a1) db 0
    db 0x8B, 0xD7 ; 004100A3 8BD7 | mov edx,edi | encoding preserved
    %%insn_004100a5:
    jz 0x4102ab ; 004100A5 0F8400020000
    %if ($ - %%insn_004100a5) > 6
        %error "LONG_004100A5"
    %endif
    times 6 - ($ - %%insn_004100a5) db 0
    %%insn_004100ab:
    mov eax,[esp+0x20] ; 004100AB 8B442420
    %if ($ - %%insn_004100ab) > 4
        %error "LONG_004100AB"
    %endif
    times 4 - ($ - %%insn_004100ab) db 0
    db 0x8B, 0xC8 ; 004100AF 8BC8 | mov ecx,eax | encoding preserved
    %%insn_004100b1:
    and eax,0x1f ; 004100B1 83E01F
    %if ($ - %%insn_004100b1) > 3
        %error "LONG_004100B1"
    %endif
    times 3 - ($ - %%insn_004100b1) db 0
    %%insn_004100b4:
    sar ecx,byte 0x5 ; 004100B4 C1F905
    %if ($ - %%insn_004100b4) > 3
        %error "LONG_004100B4"
    %endif
    times 3 - ($ - %%insn_004100b4) db 0
    %%insn_004100b7:
    lea ebx,[eax+eax*8] ; 004100B7 8D1CC0
    %if ($ - %%insn_004100b7) > 3
        %error "LONG_004100B7"
    %endif
    times 3 - ($ - %%insn_004100b7) db 0
    %%insn_004100ba:
    mov eax,[ecx*4+0x423480] ; 004100BA 8B048D80344200
    %if ($ - %%insn_004100ba) > 7
        %error "LONG_004100BA"
    %endif
    times 7 - ($ - %%insn_004100ba) db 0
    %%insn_004100c1:
    lea esi,[ecx*4+0x423480] ; 004100C1 8D348D80344200
    %if ($ - %%insn_004100c1) > 7
        %error "LONG_004100C1"
    %endif
    times 7 - ($ - %%insn_004100c1) db 0
    %%insn_004100c8:
    shl ebx,byte 0x2 ; 004100C8 C1E302
    %if ($ - %%insn_004100c8) > 3
        %error "LONG_004100C8"
    %endif
    times 3 - ($ - %%insn_004100c8) db 0
    %%insn_004100cb:
    mov [esp+0x18],esi ; 004100CB 89742418
    %if ($ - %%insn_004100cb) > 4
        %error "LONG_004100CB"
    %endif
    times 4 - ($ - %%insn_004100cb) db 0
    %%insn_004100cf:
    lea ecx,[ebx+eax] ; 004100CF 8D0C03
    %if ($ - %%insn_004100cf) > 3
        %error "LONG_004100CF"
    %endif
    times 3 - ($ - %%insn_004100cf) db 0
    %%insn_004100d2:
    mov al,[ebx+eax+0x4] ; 004100D2 8A440304
    %if ($ - %%insn_004100d2) > 4
        %error "LONG_004100D2"
    %endif
    times 4 - ($ - %%insn_004100d2) db 0
    %%insn_004100d6:
    test al,0x2 ; 004100D6 A802
    %if ($ - %%insn_004100d6) > 2
        %error "LONG_004100D6"
    %endif
    times 2 - ($ - %%insn_004100d6) db 0
    %%insn_004100d8:
    jnz 0x4102ab ; 004100D8 0F85CD010000
    %if ($ - %%insn_004100d8) > 6
        %error "LONG_004100D8"
    %endif
    times 6 - ($ - %%insn_004100d8) db 0
    %%insn_004100de:
    test al,0x48 ; 004100DE A848
    %if ($ - %%insn_004100de) > 2
        %error "LONG_004100DE"
    %endif
    times 2 - ($ - %%insn_004100de) db 0
    %%insn_004100e0:
    jz short 0x410103 ; 004100E0 7421
    %if ($ - %%insn_004100e0) > 2
        %error "LONG_004100E0"
    %endif
    times 2 - ($ - %%insn_004100e0) db 0
    %%insn_004100e2:
    mov al,[ecx+0x5] ; 004100E2 8A4105
    %if ($ - %%insn_004100e2) > 3
        %error "LONG_004100E2"
    %endif
    times 3 - ($ - %%insn_004100e2) db 0
    %%insn_004100e5:
    cmp al,0xa ; 004100E5 3C0A
    %if ($ - %%insn_004100e5) > 2
        %error "LONG_004100E5"
    %endif
    times 2 - ($ - %%insn_004100e5) db 0
    %%insn_004100e7:
    jz short 0x410103 ; 004100E7 741A
    %if ($ - %%insn_004100e7) > 2
        %error "LONG_004100E7"
    %endif
    times 2 - ($ - %%insn_004100e7) db 0
    %%insn_004100e9:
    mov [edi],al ; 004100E9 8807
    %if ($ - %%insn_004100e9) > 2
        %error "LONG_004100E9"
    %endif
    times 2 - ($ - %%insn_004100e9) db 0
    %%insn_004100eb:
    mov eax,[esp+0x28] ; 004100EB 8B442428
    %if ($ - %%insn_004100eb) > 4
        %error "LONG_004100EB"
    %endif
    times 4 - ($ - %%insn_004100eb) db 0
    %%insn_004100ef:
    mov ecx,[esi] ; 004100EF 8B0E
    %if ($ - %%insn_004100ef) > 2
        %error "LONG_004100EF"
    %endif
    times 2 - ($ - %%insn_004100ef) db 0
    %%insn_004100f1:
    dec eax ; 004100F1 48
    %if ($ - %%insn_004100f1) > 1
        %error "LONG_004100F1"
    %endif
    times 1 - ($ - %%insn_004100f1) db 0
    %%insn_004100f2:
    lea edx,[edi+0x1] ; 004100F2 8D5701
    %if ($ - %%insn_004100f2) > 3
        %error "LONG_004100F2"
    %endif
    times 3 - ($ - %%insn_004100f2) db 0
    %%insn_004100f5:
    mov ebp,0x1 ; 004100F5 BD01000000
    %if ($ - %%insn_004100f5) > 5
        %error "LONG_004100F5"
    %endif
    times 5 - ($ - %%insn_004100f5) db 0
    %%insn_004100fa:
    mov [esp+0x28],eax ; 004100FA 89442428
    %if ($ - %%insn_004100fa) > 4
        %error "LONG_004100FA"
    %endif
    times 4 - ($ - %%insn_004100fa) db 0
    %%insn_004100fe:
    mov byte [ebx+ecx+0x5],0xa ; 004100FE C6440B050A
    %if ($ - %%insn_004100fe) > 5
        %error "LONG_004100FE"
    %endif
    times 5 - ($ - %%insn_004100fe) db 0
    %%insn_00410103:
    mov ecx,[esp+0x28] ; 00410103 8B4C2428
    %if ($ - %%insn_00410103) > 4
        %error "LONG_00410103"
    %endif
    times 4 - ($ - %%insn_00410103) db 0
    %%insn_00410107:
    lea eax,[esp+0x14] ; 00410107 8D442414
    %if ($ - %%insn_00410107) > 4
        %error "LONG_00410107"
    %endif
    times 4 - ($ - %%insn_00410107) db 0
    %%insn_0041010b:
    push dword 0x0 ; 0041010B 6A00
    %if ($ - %%insn_0041010b) > 2
        %error "LONG_0041010B"
    %endif
    times 2 - ($ - %%insn_0041010b) db 0
    %%insn_0041010d:
    push eax ; 0041010D 50
    %if ($ - %%insn_0041010d) > 1
        %error "LONG_0041010D"
    %endif
    times 1 - ($ - %%insn_0041010d) db 0
    %%insn_0041010e:
    push ecx ; 0041010E 51
    %if ($ - %%insn_0041010e) > 1
        %error "LONG_0041010E"
    %endif
    times 1 - ($ - %%insn_0041010e) db 0
    %%insn_0041010f:
    push edx ; 0041010F 52
    %if ($ - %%insn_0041010f) > 1
        %error "LONG_0041010F"
    %endif
    times 1 - ($ - %%insn_0041010f) db 0
    %%insn_00410110:
    mov edx,[esi] ; 00410110 8B16
    %if ($ - %%insn_00410110) > 2
        %error "LONG_00410110"
    %endif
    times 2 - ($ - %%insn_00410110) db 0
    %%insn_00410112:
    mov eax,[ebx+edx] ; 00410112 8B0413
    %if ($ - %%insn_00410112) > 3
        %error "LONG_00410112"
    %endif
    times 3 - ($ - %%insn_00410112) db 0
    %%insn_00410115:
    push eax ; 00410115 50
    %if ($ - %%insn_00410115) > 1
        %error "LONG_00410115"
    %endif
    times 1 - ($ - %%insn_00410115) db 0
    %%insn_00410116:
    call dword near [0x4243e4] ; 00410116 FF15E4434200
    %if ($ - %%insn_00410116) > 6
        %error "LONG_00410116"
    %endif
    times 6 - ($ - %%insn_00410116) db 0
    %%insn_0041011c:
    test eax,eax ; 0041011C 85C0
    %if ($ - %%insn_0041011c) > 2
        %error "LONG_0041011C"
    %endif
    times 2 - ($ - %%insn_0041011c) db 0
    %%insn_0041011e:
    jnz short 0x410169 ; 0041011E 7549
    %if ($ - %%insn_0041011e) > 2
        %error "LONG_0041011E"
    %endif
    times 2 - ($ - %%insn_0041011e) db 0
    %%insn_00410120:
    call dword near [0x4243c4] ; 00410120 FF15C4434200
    %if ($ - %%insn_00410120) > 6
        %error "LONG_00410120"
    %endif
    times 6 - ($ - %%insn_00410120) db 0
    %%insn_00410126:
    cmp eax,0x5 ; 00410126 83F805
    %if ($ - %%insn_00410126) > 3
        %error "LONG_00410126"
    %endif
    times 3 - ($ - %%insn_00410126) db 0
    %%insn_00410129:
    jnz short 0x41014c ; 00410129 7521
    %if ($ - %%insn_00410129) > 2
        %error "LONG_00410129"
    %endif
    times 2 - ($ - %%insn_00410129) db 0
    %%insn_0041012b:
    call 0x410e10 ; 0041012B E8E00C0000
    %if ($ - %%insn_0041012b) > 5
        %error "LONG_0041012B"
    %endif
    times 5 - ($ - %%insn_0041012b) db 0
    %%insn_00410130:
    mov dword [eax],0x9 ; 00410130 C70009000000
    %if ($ - %%insn_00410130) > 6
        %error "LONG_00410130"
    %endif
    times 6 - ($ - %%insn_00410130) db 0
    %%insn_00410136:
    call 0x410e20 ; 00410136 E8E50C0000
    %if ($ - %%insn_00410136) > 5
        %error "LONG_00410136"
    %endif
    times 5 - ($ - %%insn_00410136) db 0
    %%insn_0041013b:
    mov dword [eax],0x5 ; 0041013B C70005000000
    %if ($ - %%insn_0041013b) > 6
        %error "LONG_0041013B"
    %endif
    times 6 - ($ - %%insn_0041013b) db 0
    %%insn_00410141:
    or eax,0xffffffffffffffff ; 00410141 83C8FF
    %if ($ - %%insn_00410141) > 3
        %error "LONG_00410141"
    %endif
    times 3 - ($ - %%insn_00410141) db 0
    %%insn_00410144:
    pop edi ; 00410144 5F
    %if ($ - %%insn_00410144) > 1
        %error "LONG_00410144"
    %endif
    times 1 - ($ - %%insn_00410144) db 0
    %%insn_00410145:
    pop esi ; 00410145 5E
    %if ($ - %%insn_00410145) > 1
        %error "LONG_00410145"
    %endif
    times 1 - ($ - %%insn_00410145) db 0
    %%insn_00410146:
    pop ebp ; 00410146 5D
    %if ($ - %%insn_00410146) > 1
        %error "LONG_00410146"
    %endif
    times 1 - ($ - %%insn_00410146) db 0
    %%insn_00410147:
    pop ebx ; 00410147 5B
    %if ($ - %%insn_00410147) > 1
        %error "LONG_00410147"
    %endif
    times 1 - ($ - %%insn_00410147) db 0
    %%insn_00410148:
    add esp,0xc ; 00410148 83C40C
    %if ($ - %%insn_00410148) > 3
        %error "LONG_00410148"
    %endif
    times 3 - ($ - %%insn_00410148) db 0
    %%insn_0041014b:
    ret ; 0041014B C3
    %if ($ - %%insn_0041014b) > 1
        %error "LONG_0041014B"
    %endif
    times 1 - ($ - %%insn_0041014b) db 0
    %%insn_0041014c:
    cmp eax,0x6d ; 0041014C 83F86D
    %if ($ - %%insn_0041014c) > 3
        %error "LONG_0041014C"
    %endif
    times 3 - ($ - %%insn_0041014c) db 0
    %%insn_0041014f:
    jz 0x4102ab ; 0041014F 0F8456010000
    %if ($ - %%insn_0041014f) > 6
        %error "LONG_0041014F"
    %endif
    times 6 - ($ - %%insn_0041014f) db 0
    %%insn_00410155:
    push eax ; 00410155 50
    %if ($ - %%insn_00410155) > 1
        %error "LONG_00410155"
    %endif
    times 1 - ($ - %%insn_00410155) db 0
    %%insn_00410156:
    call 0x410d90 ; 00410156 E8350C0000
    %if ($ - %%insn_00410156) > 5
        %error "LONG_00410156"
    %endif
    times 5 - ($ - %%insn_00410156) db 0
    %%insn_0041015b:
    add esp,0x4 ; 0041015B 83C404
    %if ($ - %%insn_0041015b) > 3
        %error "LONG_0041015B"
    %endif
    times 3 - ($ - %%insn_0041015b) db 0
    %%insn_0041015e:
    or eax,0xffffffffffffffff ; 0041015E 83C8FF
    %if ($ - %%insn_0041015e) > 3
        %error "LONG_0041015E"
    %endif
    times 3 - ($ - %%insn_0041015e) db 0
    %%insn_00410161:
    pop edi ; 00410161 5F
    %if ($ - %%insn_00410161) > 1
        %error "LONG_00410161"
    %endif
    times 1 - ($ - %%insn_00410161) db 0
    %%insn_00410162:
    pop esi ; 00410162 5E
    %if ($ - %%insn_00410162) > 1
        %error "LONG_00410162"
    %endif
    times 1 - ($ - %%insn_00410162) db 0
    %%insn_00410163:
    pop ebp ; 00410163 5D
    %if ($ - %%insn_00410163) > 1
        %error "LONG_00410163"
    %endif
    times 1 - ($ - %%insn_00410163) db 0
    %%insn_00410164:
    pop ebx ; 00410164 5B
    %if ($ - %%insn_00410164) > 1
        %error "LONG_00410164"
    %endif
    times 1 - ($ - %%insn_00410164) db 0
    %%insn_00410165:
    add esp,0xc ; 00410165 83C40C
    %if ($ - %%insn_00410165) > 3
        %error "LONG_00410165"
    %endif
    times 3 - ($ - %%insn_00410165) db 0
    %%insn_00410168:
    ret ; 00410168 C3
    %if ($ - %%insn_00410168) > 1
        %error "LONG_00410168"
    %endif
    times 1 - ($ - %%insn_00410168) db 0
    %%insn_00410169:
    mov ecx,[esi] ; 00410169 8B0E
    %if ($ - %%insn_00410169) > 2
        %error "LONG_00410169"
    %endif
    times 2 - ($ - %%insn_00410169) db 0
    %%insn_0041016b:
    mov edx,[esp+0x14] ; 0041016B 8B542414
    %if ($ - %%insn_0041016b) > 4
        %error "LONG_0041016B"
    %endif
    times 4 - ($ - %%insn_0041016b) db 0
    db 0x03, 0xEA ; 0041016F 03EA | add ebp,edx | encoding preserved
    %%insn_00410171:
    mov al,[ebx+ecx+0x4] ; 00410171 8A440B04
    %if ($ - %%insn_00410171) > 4
        %error "LONG_00410171"
    %endif
    times 4 - ($ - %%insn_00410171) db 0
    %%insn_00410175:
    lea ecx,[ebx+ecx+0x4] ; 00410175 8D4C0B04
    %if ($ - %%insn_00410175) > 4
        %error "LONG_00410175"
    %endif
    times 4 - ($ - %%insn_00410175) db 0
    %%insn_00410179:
    test al,0x80 ; 00410179 A880
    %if ($ - %%insn_00410179) > 2
        %error "LONG_00410179"
    %endif
    times 2 - ($ - %%insn_00410179) db 0
    %%insn_0041017b:
    jz 0x4102a1 ; 0041017B 0F8420010000
    %if ($ - %%insn_0041017b) > 6
        %error "LONG_0041017B"
    %endif
    times 6 - ($ - %%insn_0041017b) db 0
    %%insn_00410181:
    test edx,edx ; 00410181 85D2
    %if ($ - %%insn_00410181) > 2
        %error "LONG_00410181"
    %endif
    times 2 - ($ - %%insn_00410181) db 0
    %%insn_00410183:
    jz short 0x41018e ; 00410183 7409
    %if ($ - %%insn_00410183) > 2
        %error "LONG_00410183"
    %endif
    times 2 - ($ - %%insn_00410183) db 0
    %%insn_00410185:
    cmp byte [edi],0xa ; 00410185 803F0A
    %if ($ - %%insn_00410185) > 3
        %error "LONG_00410185"
    %endif
    times 3 - ($ - %%insn_00410185) db 0
    %%insn_00410188:
    jnz short 0x41018e ; 00410188 7504
    %if ($ - %%insn_00410188) > 2
        %error "LONG_00410188"
    %endif
    times 2 - ($ - %%insn_00410188) db 0
    %%insn_0041018a:
    or al,0x4 ; 0041018A 0C04
    %if ($ - %%insn_0041018a) > 2
        %error "LONG_0041018A"
    %endif
    times 2 - ($ - %%insn_0041018a) db 0
    %%insn_0041018c:
    jmp short 0x410190 ; 0041018C EB02
    %if ($ - %%insn_0041018c) > 2
        %error "LONG_0041018C"
    %endif
    times 2 - ($ - %%insn_0041018c) db 0
    %%insn_0041018e:
    and al,0xfb ; 0041018E 24FB
    %if ($ - %%insn_0041018e) > 2
        %error "LONG_0041018E"
    %endif
    times 2 - ($ - %%insn_0041018e) db 0
    %%insn_00410190:
    mov [ecx],al ; 00410190 8801
    %if ($ - %%insn_00410190) > 2
        %error "LONG_00410190"
    %endif
    times 2 - ($ - %%insn_00410190) db 0
    %%insn_00410192:
    mov eax,[esp+0x24] ; 00410192 8B442424
    %if ($ - %%insn_00410192) > 4
        %error "LONG_00410192"
    %endif
    times 4 - ($ - %%insn_00410192) db 0
    db 0x03, 0xE8 ; 00410196 03E8 | add ebp,eax | encoding preserved
    db 0x8B, 0xF7 ; 00410198 8BF7 | mov esi,edi | encoding preserved
    db 0x3B, 0xC5 ; 0041019A 3BC5 | cmp eax,ebp | encoding preserved
    %%insn_0041019c:
    mov [esp+0x28],ebp ; 0041019C 896C2428
    %if ($ - %%insn_0041019c) > 4
        %error "LONG_0041019C"
    %endif
    times 4 - ($ - %%insn_0041019c) db 0
    %%insn_004101a0:
    jnc 0x41029b ; 004101A0 0F83F5000000
    %if ($ - %%insn_004101a0) > 6
        %error "LONG_004101A0"
    %endif
    times 6 - ($ - %%insn_004101a0) db 0
    %%insn_004101a6:
    mov al,[edi] ; 004101A6 8A07
    %if ($ - %%insn_004101a6) > 2
        %error "LONG_004101A6"
    %endif
    times 2 - ($ - %%insn_004101a6) db 0
    %%insn_004101a8:
    cmp al,0x1a ; 004101A8 3C1A
    %if ($ - %%insn_004101a8) > 2
        %error "LONG_004101A8"
    %endif
    times 2 - ($ - %%insn_004101a8) db 0
    %%insn_004101aa:
    jz 0x410285 ; 004101AA 0F84D5000000
    %if ($ - %%insn_004101aa) > 6
        %error "LONG_004101AA"
    %endif
    times 6 - ($ - %%insn_004101aa) db 0
    %%insn_004101b0:
    cmp al,0xd ; 004101B0 3C0D
    %if ($ - %%insn_004101b0) > 2
        %error "LONG_004101B0"
    %endif
    times 2 - ($ - %%insn_004101b0) db 0
    %%insn_004101b2:
    jz short 0x4101bd ; 004101B2 7409
    %if ($ - %%insn_004101b2) > 2
        %error "LONG_004101B2"
    %endif
    times 2 - ($ - %%insn_004101b2) db 0
    %%insn_004101b4:
    mov [esi],al ; 004101B4 8806
    %if ($ - %%insn_004101b4) > 2
        %error "LONG_004101B4"
    %endif
    times 2 - ($ - %%insn_004101b4) db 0
    %%insn_004101b6:
    inc esi ; 004101B6 46
    %if ($ - %%insn_004101b6) > 1
        %error "LONG_004101B6"
    %endif
    times 1 - ($ - %%insn_004101b6) db 0
    %%insn_004101b7:
    inc edi ; 004101B7 47
    %if ($ - %%insn_004101b7) > 1
        %error "LONG_004101B7"
    %endif
    times 1 - ($ - %%insn_004101b7) db 0
    %%insn_004101b8:
    jmp 0x410269 ; 004101B8 E9AC000000
    %if ($ - %%insn_004101b8) > 5
        %error "LONG_004101B8"
    %endif
    times 5 - ($ - %%insn_004101b8) db 0
    %%insn_004101bd:
    dec ebp ; 004101BD 4D
    %if ($ - %%insn_004101bd) > 1
        %error "LONG_004101BD"
    %endif
    times 1 - ($ - %%insn_004101bd) db 0
    db 0x3B, 0xFD ; 004101BE 3BFD | cmp edi,ebp | encoding preserved
    %%insn_004101c0:
    jnc short 0x4101dd ; 004101C0 731B
    %if ($ - %%insn_004101c0) > 2
        %error "LONG_004101C0"
    %endif
    times 2 - ($ - %%insn_004101c0) db 0
    %%insn_004101c2:
    cmp byte [edi+0x1],0xa ; 004101C2 807F010A
    %if ($ - %%insn_004101c2) > 4
        %error "LONG_004101C2"
    %endif
    times 4 - ($ - %%insn_004101c2) db 0
    %%insn_004101c6:
    jnz short 0x4101d3 ; 004101C6 750B
    %if ($ - %%insn_004101c6) > 2
        %error "LONG_004101C6"
    %endif
    times 2 - ($ - %%insn_004101c6) db 0
    %%insn_004101c8:
    add edi,0x2 ; 004101C8 83C702
    %if ($ - %%insn_004101c8) > 3
        %error "LONG_004101C8"
    %endif
    times 3 - ($ - %%insn_004101c8) db 0
    %%insn_004101cb:
    mov byte [esi],0xa ; 004101CB C6060A
    %if ($ - %%insn_004101cb) > 3
        %error "LONG_004101CB"
    %endif
    times 3 - ($ - %%insn_004101cb) db 0
    %%insn_004101ce:
    jmp 0x410268 ; 004101CE E995000000
    %if ($ - %%insn_004101ce) > 5
        %error "LONG_004101CE"
    %endif
    times 5 - ($ - %%insn_004101ce) db 0
    %%insn_004101d3:
    mov byte [esi],0xd ; 004101D3 C6060D
    %if ($ - %%insn_004101d3) > 3
        %error "LONG_004101D3"
    %endif
    times 3 - ($ - %%insn_004101d3) db 0
    %%insn_004101d6:
    inc esi ; 004101D6 46
    %if ($ - %%insn_004101d6) > 1
        %error "LONG_004101D6"
    %endif
    times 1 - ($ - %%insn_004101d6) db 0
    %%insn_004101d7:
    inc edi ; 004101D7 47
    %if ($ - %%insn_004101d7) > 1
        %error "LONG_004101D7"
    %endif
    times 1 - ($ - %%insn_004101d7) db 0
    %%insn_004101d8:
    jmp 0x410269 ; 004101D8 E98C000000
    %if ($ - %%insn_004101d8) > 5
        %error "LONG_004101D8"
    %endif
    times 5 - ($ - %%insn_004101d8) db 0
    %%insn_004101dd:
    mov ecx,[esp+0x18] ; 004101DD 8B4C2418
    %if ($ - %%insn_004101dd) > 4
        %error "LONG_004101DD"
    %endif
    times 4 - ($ - %%insn_004101dd) db 0
    db 0x33, 0xED ; 004101E1 33ED | xor ebp,ebp | encoding preserved
    %%insn_004101e3:
    lea edx,[esp+0x14] ; 004101E3 8D542414
    %if ($ - %%insn_004101e3) > 4
        %error "LONG_004101E3"
    %endif
    times 4 - ($ - %%insn_004101e3) db 0
    %%insn_004101e7:
    push ebp ; 004101E7 55
    %if ($ - %%insn_004101e7) > 1
        %error "LONG_004101E7"
    %endif
    times 1 - ($ - %%insn_004101e7) db 0
    %%insn_004101e8:
    push edx ; 004101E8 52
    %if ($ - %%insn_004101e8) > 1
        %error "LONG_004101E8"
    %endif
    times 1 - ($ - %%insn_004101e8) db 0
    %%insn_004101e9:
    mov edx,[ecx] ; 004101E9 8B11
    %if ($ - %%insn_004101e9) > 2
        %error "LONG_004101E9"
    %endif
    times 2 - ($ - %%insn_004101e9) db 0
    %%insn_004101eb:
    lea eax,[esp+0x1b] ; 004101EB 8D44241B
    %if ($ - %%insn_004101eb) > 4
        %error "LONG_004101EB"
    %endif
    times 4 - ($ - %%insn_004101eb) db 0
    %%insn_004101ef:
    push dword 0x1 ; 004101EF 6A01
    %if ($ - %%insn_004101ef) > 2
        %error "LONG_004101EF"
    %endif
    times 2 - ($ - %%insn_004101ef) db 0
    %%insn_004101f1:
    push eax ; 004101F1 50
    %if ($ - %%insn_004101f1) > 1
        %error "LONG_004101F1"
    %endif
    times 1 - ($ - %%insn_004101f1) db 0
    %%insn_004101f2:
    mov eax,[ebx+edx] ; 004101F2 8B0413
    %if ($ - %%insn_004101f2) > 3
        %error "LONG_004101F2"
    %endif
    times 3 - ($ - %%insn_004101f2) db 0
    %%insn_004101f5:
    push eax ; 004101F5 50
    %if ($ - %%insn_004101f5) > 1
        %error "LONG_004101F5"
    %endif
    times 1 - ($ - %%insn_004101f5) db 0
    %%insn_004101f6:
    inc edi ; 004101F6 47
    %if ($ - %%insn_004101f6) > 1
        %error "LONG_004101F6"
    %endif
    times 1 - ($ - %%insn_004101f6) db 0
    %%insn_004101f7:
    call dword near [0x4243e4] ; 004101F7 FF15E4434200
    %if ($ - %%insn_004101f7) > 6
        %error "LONG_004101F7"
    %endif
    times 6 - ($ - %%insn_004101f7) db 0
    %%insn_004101fd:
    test eax,eax ; 004101FD 85C0
    %if ($ - %%insn_004101fd) > 2
        %error "LONG_004101FD"
    %endif
    times 2 - ($ - %%insn_004101fd) db 0
    %%insn_004101ff:
    jnz short 0x410209 ; 004101FF 7508
    %if ($ - %%insn_004101ff) > 2
        %error "LONG_004101FF"
    %endif
    times 2 - ($ - %%insn_004101ff) db 0
    %%insn_00410201:
    call dword near [0x4243c4] ; 00410201 FF15C4434200
    %if ($ - %%insn_00410201) > 6
        %error "LONG_00410201"
    %endif
    times 6 - ($ - %%insn_00410201) db 0
    db 0x8B, 0xE8 ; 00410207 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00410209:
    test ebp,ebp ; 00410209 85ED
    %if ($ - %%insn_00410209) > 2
        %error "LONG_00410209"
    %endif
    times 2 - ($ - %%insn_00410209) db 0
    %%insn_0041020b:
    jnz short 0x410265 ; 0041020B 7558
    %if ($ - %%insn_0041020b) > 2
        %error "LONG_0041020B"
    %endif
    times 2 - ($ - %%insn_0041020b) db 0
    %%insn_0041020d:
    mov eax,[esp+0x14] ; 0041020D 8B442414
    %if ($ - %%insn_0041020d) > 4
        %error "LONG_0041020D"
    %endif
    times 4 - ($ - %%insn_0041020d) db 0
    %%insn_00410211:
    test eax,eax ; 00410211 85C0
    %if ($ - %%insn_00410211) > 2
        %error "LONG_00410211"
    %endif
    times 2 - ($ - %%insn_00410211) db 0
    %%insn_00410213:
    jz short 0x410265 ; 00410213 7450
    %if ($ - %%insn_00410213) > 2
        %error "LONG_00410213"
    %endif
    times 2 - ($ - %%insn_00410213) db 0
    %%insn_00410215:
    mov ecx,[esp+0x18] ; 00410215 8B4C2418
    %if ($ - %%insn_00410215) > 4
        %error "LONG_00410215"
    %endif
    times 4 - ($ - %%insn_00410215) db 0
    %%insn_00410219:
    mov edx,[ecx] ; 00410219 8B11
    %if ($ - %%insn_00410219) > 2
        %error "LONG_00410219"
    %endif
    times 2 - ($ - %%insn_00410219) db 0
    %%insn_0041021b:
    test byte [ebx+edx+0x4],0x48 ; 0041021B F644130448
    %if ($ - %%insn_0041021b) > 5
        %error "LONG_0041021B"
    %endif
    times 5 - ($ - %%insn_0041021b) db 0
    %%insn_00410220:
    jz short 0x41023a ; 00410220 7418
    %if ($ - %%insn_00410220) > 2
        %error "LONG_00410220"
    %endif
    times 2 - ($ - %%insn_00410220) db 0
    %%insn_00410222:
    mov al,[esp+0x13] ; 00410222 8A442413
    %if ($ - %%insn_00410222) > 4
        %error "LONG_00410222"
    %endif
    times 4 - ($ - %%insn_00410222) db 0
    %%insn_00410226:
    cmp al,0xa ; 00410226 3C0A
    %if ($ - %%insn_00410226) > 2
        %error "LONG_00410226"
    %endif
    times 2 - ($ - %%insn_00410226) db 0
    %%insn_00410228:
    jnz short 0x41022e ; 00410228 7504
    %if ($ - %%insn_00410228) > 2
        %error "LONG_00410228"
    %endif
    times 2 - ($ - %%insn_00410228) db 0
    %%insn_0041022a:
    mov [esi],al ; 0041022A 8806
    %if ($ - %%insn_0041022a) > 2
        %error "LONG_0041022A"
    %endif
    times 2 - ($ - %%insn_0041022a) db 0
    %%insn_0041022c:
    jmp short 0x410268 ; 0041022C EB3A
    %if ($ - %%insn_0041022c) > 2
        %error "LONG_0041022C"
    %endif
    times 2 - ($ - %%insn_0041022c) db 0
    %%insn_0041022e:
    mov byte [esi],0xd ; 0041022E C6060D
    %if ($ - %%insn_0041022e) > 3
        %error "LONG_0041022E"
    %endif
    times 3 - ($ - %%insn_0041022e) db 0
    %%insn_00410231:
    mov ecx,[ecx] ; 00410231 8B09
    %if ($ - %%insn_00410231) > 2
        %error "LONG_00410231"
    %endif
    times 2 - ($ - %%insn_00410231) db 0
    %%insn_00410233:
    inc esi ; 00410233 46
    %if ($ - %%insn_00410233) > 1
        %error "LONG_00410233"
    %endif
    times 1 - ($ - %%insn_00410233) db 0
    %%insn_00410234:
    mov [ebx+ecx+0x5],al ; 00410234 88440B05
    %if ($ - %%insn_00410234) > 4
        %error "LONG_00410234"
    %endif
    times 4 - ($ - %%insn_00410234) db 0
    %%insn_00410238:
    jmp short 0x410269 ; 00410238 EB2F
    %if ($ - %%insn_00410238) > 2
        %error "LONG_00410238"
    %endif
    times 2 - ($ - %%insn_00410238) db 0
    %%insn_0041023a:
    cmp esi,[esp+0x24] ; 0041023A 3B742424
    %if ($ - %%insn_0041023a) > 4
        %error "LONG_0041023A"
    %endif
    times 4 - ($ - %%insn_0041023a) db 0
    %%insn_0041023e:
    jnz short 0x41024c ; 0041023E 750C
    %if ($ - %%insn_0041023e) > 2
        %error "LONG_0041023E"
    %endif
    times 2 - ($ - %%insn_0041023e) db 0
    %%insn_00410240:
    cmp byte [esp+0x13],0xa ; 00410240 807C24130A
    %if ($ - %%insn_00410240) > 5
        %error "LONG_00410240"
    %endif
    times 5 - ($ - %%insn_00410240) db 0
    %%insn_00410245:
    jnz short 0x41024c ; 00410245 7505
    %if ($ - %%insn_00410245) > 2
        %error "LONG_00410245"
    %endif
    times 2 - ($ - %%insn_00410245) db 0
    %%insn_00410247:
    mov byte [esi],0xa ; 00410247 C6060A
    %if ($ - %%insn_00410247) > 3
        %error "LONG_00410247"
    %endif
    times 3 - ($ - %%insn_00410247) db 0
    %%insn_0041024a:
    jmp short 0x410268 ; 0041024A EB1C
    %if ($ - %%insn_0041024a) > 2
        %error "LONG_0041024A"
    %endif
    times 2 - ($ - %%insn_0041024a) db 0
    %%insn_0041024c:
    mov edx,[esp+0x20] ; 0041024C 8B542420
    %if ($ - %%insn_0041024c) > 4
        %error "LONG_0041024C"
    %endif
    times 4 - ($ - %%insn_0041024c) db 0
    %%insn_00410250:
    push dword 0x1 ; 00410250 6A01
    %if ($ - %%insn_00410250) > 2
        %error "LONG_00410250"
    %endif
    times 2 - ($ - %%insn_00410250) db 0
    %%insn_00410252:
    push dword 0xffffffffffffffff ; 00410252 6AFF
    %if ($ - %%insn_00410252) > 2
        %error "LONG_00410252"
    %endif
    times 2 - ($ - %%insn_00410252) db 0
    %%insn_00410254:
    push edx ; 00410254 52
    %if ($ - %%insn_00410254) > 1
        %error "LONG_00410254"
    %endif
    times 1 - ($ - %%insn_00410254) db 0
    %%insn_00410255:
    call 0x411310 ; 00410255 E8B6100000
    %if ($ - %%insn_00410255) > 5
        %error "LONG_00410255"
    %endif
    times 5 - ($ - %%insn_00410255) db 0
    %%insn_0041025a:
    mov al,[esp+0x1f] ; 0041025A 8A44241F
    %if ($ - %%insn_0041025a) > 4
        %error "LONG_0041025A"
    %endif
    times 4 - ($ - %%insn_0041025a) db 0
    %%insn_0041025e:
    add esp,0xc ; 0041025E 83C40C
    %if ($ - %%insn_0041025e) > 3
        %error "LONG_0041025E"
    %endif
    times 3 - ($ - %%insn_0041025e) db 0
    %%insn_00410261:
    cmp al,0xa ; 00410261 3C0A
    %if ($ - %%insn_00410261) > 2
        %error "LONG_00410261"
    %endif
    times 2 - ($ - %%insn_00410261) db 0
    %%insn_00410263:
    jz short 0x410269 ; 00410263 7404
    %if ($ - %%insn_00410263) > 2
        %error "LONG_00410263"
    %endif
    times 2 - ($ - %%insn_00410263) db 0
    %%insn_00410265:
    mov byte [esi],0xd ; 00410265 C6060D
    %if ($ - %%insn_00410265) > 3
        %error "LONG_00410265"
    %endif
    times 3 - ($ - %%insn_00410265) db 0
    %%insn_00410268:
    inc esi ; 00410268 46
    %if ($ - %%insn_00410268) > 1
        %error "LONG_00410268"
    %endif
    times 1 - ($ - %%insn_00410268) db 0
    %%insn_00410269:
    mov ebp,[esp+0x28] ; 00410269 8B6C2428
    %if ($ - %%insn_00410269) > 4
        %error "LONG_00410269"
    %endif
    times 4 - ($ - %%insn_00410269) db 0
    db 0x3B, 0xFD ; 0041026D 3BFD | cmp edi,ebp | encoding preserved
    %%insn_0041026f:
    jc 0x4101a6 ; 0041026F 0F8231FFFFFF
    %if ($ - %%insn_0041026f) > 6
        %error "LONG_0041026F"
    %endif
    times 6 - ($ - %%insn_0041026f) db 0
    %%insn_00410275:
    sub esi,[esp+0x24] ; 00410275 2B742424
    %if ($ - %%insn_00410275) > 4
        %error "LONG_00410275"
    %endif
    times 4 - ($ - %%insn_00410275) db 0
    db 0x8B, 0xEE ; 00410279 8BEE | mov ebp,esi | encoding preserved
    db 0x8B, 0xC5 ; 0041027B 8BC5 | mov eax,ebp | encoding preserved
    %%insn_0041027d:
    pop edi ; 0041027D 5F
    %if ($ - %%insn_0041027d) > 1
        %error "LONG_0041027D"
    %endif
    times 1 - ($ - %%insn_0041027d) db 0
    %%insn_0041027e:
    pop esi ; 0041027E 5E
    %if ($ - %%insn_0041027e) > 1
        %error "LONG_0041027E"
    %endif
    times 1 - ($ - %%insn_0041027e) db 0
    %%insn_0041027f:
    pop ebp ; 0041027F 5D
    %if ($ - %%insn_0041027f) > 1
        %error "LONG_0041027F"
    %endif
    times 1 - ($ - %%insn_0041027f) db 0
    %%insn_00410280:
    pop ebx ; 00410280 5B
    %if ($ - %%insn_00410280) > 1
        %error "LONG_00410280"
    %endif
    times 1 - ($ - %%insn_00410280) db 0
    %%insn_00410281:
    add esp,0xc ; 00410281 83C40C
    %if ($ - %%insn_00410281) > 3
        %error "LONG_00410281"
    %endif
    times 3 - ($ - %%insn_00410281) db 0
    %%insn_00410284:
    ret ; 00410284 C3
    %if ($ - %%insn_00410284) > 1
        %error "LONG_00410284"
    %endif
    times 1 - ($ - %%insn_00410284) db 0
    %%insn_00410285:
    mov eax,[esp+0x18] ; 00410285 8B442418
    %if ($ - %%insn_00410285) > 4
        %error "LONG_00410285"
    %endif
    times 4 - ($ - %%insn_00410285) db 0
    %%insn_00410289:
    mov ecx,[eax] ; 00410289 8B08
    %if ($ - %%insn_00410289) > 2
        %error "LONG_00410289"
    %endif
    times 2 - ($ - %%insn_00410289) db 0
    %%insn_0041028b:
    mov al,[ebx+ecx+0x4] ; 0041028B 8A440B04
    %if ($ - %%insn_0041028b) > 4
        %error "LONG_0041028B"
    %endif
    times 4 - ($ - %%insn_0041028b) db 0
    %%insn_0041028f:
    test al,0x40 ; 0041028F A840
    %if ($ - %%insn_0041028f) > 2
        %error "LONG_0041028F"
    %endif
    times 2 - ($ - %%insn_0041028f) db 0
    %%insn_00410291:
    lea ebx,[ebx+ecx+0x4] ; 00410291 8D5C0B04
    %if ($ - %%insn_00410291) > 4
        %error "LONG_00410291"
    %endif
    times 4 - ($ - %%insn_00410291) db 0
    %%insn_00410295:
    jnz short 0x41029b ; 00410295 7504
    %if ($ - %%insn_00410295) > 2
        %error "LONG_00410295"
    %endif
    times 2 - ($ - %%insn_00410295) db 0
    %%insn_00410297:
    or al,0x2 ; 00410297 0C02
    %if ($ - %%insn_00410297) > 2
        %error "LONG_00410297"
    %endif
    times 2 - ($ - %%insn_00410297) db 0
    %%insn_00410299:
    mov [ebx],al ; 00410299 8803
    %if ($ - %%insn_00410299) > 2
        %error "LONG_00410299"
    %endif
    times 2 - ($ - %%insn_00410299) db 0
    %%insn_0041029b:
    sub esi,[esp+0x24] ; 0041029B 2B742424
    %if ($ - %%insn_0041029b) > 4
        %error "LONG_0041029B"
    %endif
    times 4 - ($ - %%insn_0041029b) db 0
    db 0x8B, 0xEE ; 0041029F 8BEE | mov ebp,esi | encoding preserved
    db 0x8B, 0xC5 ; 004102A1 8BC5 | mov eax,ebp | encoding preserved
    %%insn_004102a3:
    pop edi ; 004102A3 5F
    %if ($ - %%insn_004102a3) > 1
        %error "LONG_004102A3"
    %endif
    times 1 - ($ - %%insn_004102a3) db 0
    %%insn_004102a4:
    pop esi ; 004102A4 5E
    %if ($ - %%insn_004102a4) > 1
        %error "LONG_004102A4"
    %endif
    times 1 - ($ - %%insn_004102a4) db 0
    %%insn_004102a5:
    pop ebp ; 004102A5 5D
    %if ($ - %%insn_004102a5) > 1
        %error "LONG_004102A5"
    %endif
    times 1 - ($ - %%insn_004102a5) db 0
    %%insn_004102a6:
    pop ebx ; 004102A6 5B
    %if ($ - %%insn_004102a6) > 1
        %error "LONG_004102A6"
    %endif
    times 1 - ($ - %%insn_004102a6) db 0
    %%insn_004102a7:
    add esp,0xc ; 004102A7 83C40C
    %if ($ - %%insn_004102a7) > 3
        %error "LONG_004102A7"
    %endif
    times 3 - ($ - %%insn_004102a7) db 0
    %%insn_004102aa:
    ret ; 004102AA C3
    %if ($ - %%insn_004102aa) > 1
        %error "LONG_004102AA"
    %endif
    times 1 - ($ - %%insn_004102aa) db 0
    %%insn_004102ab:
    pop edi ; 004102AB 5F
    %if ($ - %%insn_004102ab) > 1
        %error "LONG_004102AB"
    %endif
    times 1 - ($ - %%insn_004102ab) db 0
    %%insn_004102ac:
    pop esi ; 004102AC 5E
    %if ($ - %%insn_004102ac) > 1
        %error "LONG_004102AC"
    %endif
    times 1 - ($ - %%insn_004102ac) db 0
    %%insn_004102ad:
    pop ebp ; 004102AD 5D
    %if ($ - %%insn_004102ad) > 1
        %error "LONG_004102AD"
    %endif
    times 1 - ($ - %%insn_004102ad) db 0
    db 0x33, 0xC0 ; 004102AE 33C0 | xor eax,eax | encoding preserved
    %%insn_004102b0:
    pop ebx ; 004102B0 5B
    %if ($ - %%insn_004102b0) > 1
        %error "LONG_004102B0"
    %endif
    times 1 - ($ - %%insn_004102b0) db 0
    %%insn_004102b1:
    add esp,0xc ; 004102B1 83C40C
    %if ($ - %%insn_004102b1) > 3
        %error "LONG_004102B1"
    %endif
    times 3 - ($ - %%insn_004102b1) db 0
    %%insn_004102b4:
    ret ; 004102B4 C3
    %if ($ - %%insn_004102b4) > 1
        %error "LONG_004102B4"
    %endif
    times 1 - ($ - %%insn_004102b4) db 0
    %if ($ - %%fragment_start) != 549
        %error "function fragment size drift: 00410090"
    %endif
%endmacro
