; PE virtual entry 0040AB84
; Ghidra working symbol: FUN_0040ab84
; Verified VDX 20h full-palette and 4x4 two-colour tile decoder.
; Generated losslessly; preserve byte identity after edits.

%macro emit_decode_vdx_bitmap_still_part_00 0
    %%fragment_start:
decode_vdx_bitmap_still:
    %%insn_0040ab84:
    push ebp ; 0040AB84 55
    %if ($ - %%insn_0040ab84) > 1
        %error "LONG_0040AB84"
    %endif
    times 1 - ($ - %%insn_0040ab84) db 0
    db 0x8B, 0xEC ; 0040AB85 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040ab87:
    sub esp,0x38 ; 0040AB87 83EC38
    %if ($ - %%insn_0040ab87) > 3
        %error "LONG_0040AB87"
    %endif
    times 3 - ($ - %%insn_0040ab87) db 0
    %%insn_0040ab8a:
    push ebx ; 0040AB8A 53
    %if ($ - %%insn_0040ab8a) > 1
        %error "LONG_0040AB8A"
    %endif
    times 1 - ($ - %%insn_0040ab8a) db 0
    %%insn_0040ab8b:
    push esi ; 0040AB8B 56
    %if ($ - %%insn_0040ab8b) > 1
        %error "LONG_0040AB8B"
    %endif
    times 1 - ($ - %%insn_0040ab8b) db 0
    %%insn_0040ab8c:
    push edi ; 0040AB8C 57
    %if ($ - %%insn_0040ab8c) > 1
        %error "LONG_0040AB8C"
    %endif
    times 1 - ($ - %%insn_0040ab8c) db 0
    %%insn_0040ab8d:
    mov eax,[ebp+0x18] ; 0040AB8D 8B4518
    %if ($ - %%insn_0040ab8d) > 3
        %error "LONG_0040AB8D"
    %endif
    times 3 - ($ - %%insn_0040ab8d) db 0
    %%insn_0040ab90:
    imul eax,[ebp+0x10] ; 0040AB90 0FAF4510
    %if ($ - %%insn_0040ab90) > 4
        %error "LONG_0040AB90"
    %endif
    times 4 - ($ - %%insn_0040ab90) db 0
    %%insn_0040ab94:
    add eax,[ebp+0x14] ; 0040AB94 034514
    %if ($ - %%insn_0040ab94) > 3
        %error "LONG_0040AB94"
    %endif
    times 3 - ($ - %%insn_0040ab94) db 0
    %%insn_0040ab97:
    mov [0x420e40],eax ; 0040AB97 A3400E4200
    %if ($ - %%insn_0040ab97) > 5
        %error "LONG_0040AB97"
    %endif
    times 5 - ($ - %%insn_0040ab97) db 0
    %%insn_0040ab9c:
    mov ecx,[ebp+0x8] ; 0040AB9C 8B4D08
    %if ($ - %%insn_0040ab9c) > 3
        %error "LONG_0040AB9C"
    %endif
    times 3 - ($ - %%insn_0040ab9c) db 0
    %%insn_0040ab9f:
    movzx dx,byte [ecx] ; 0040AB9F 660FB611
    %if ($ - %%insn_0040ab9f) > 4
        %error "LONG_0040AB9F"
    %endif
    times 4 - ($ - %%insn_0040ab9f) db 0
    %%insn_0040aba3:
    mov [0x420a30],dx ; 0040ABA3 668915300A4200
    %if ($ - %%insn_0040aba3) > 7
        %error "LONG_0040ABA3"
    %endif
    times 7 - ($ - %%insn_0040aba3) db 0
    %%insn_0040abaa:
    mov eax,[ebp+0x8] ; 0040ABAA 8B4508
    %if ($ - %%insn_0040abaa) > 3
        %error "LONG_0040ABAA"
    %endif
    times 3 - ($ - %%insn_0040abaa) db 0
    %%insn_0040abad:
    add eax,0x1 ; 0040ABAD 83C001
    %if ($ - %%insn_0040abad) > 3
        %error "LONG_0040ABAD"
    %endif
    times 3 - ($ - %%insn_0040abad) db 0
    %%insn_0040abb0:
    mov [ebp+0x8],eax ; 0040ABB0 894508
    %if ($ - %%insn_0040abb0) > 3
        %error "LONG_0040ABB0"
    %endif
    times 3 - ($ - %%insn_0040abb0) db 0
    %%insn_0040abb3:
    mov ecx,[ebp+0x8] ; 0040ABB3 8B4D08
    %if ($ - %%insn_0040abb3) > 3
        %error "LONG_0040ABB3"
    %endif
    times 3 - ($ - %%insn_0040abb3) db 0
    db 0x33, 0xD2 ; 0040ABB6 33D2 | xor edx,edx | encoding preserved
    %%insn_0040abb8:
    mov dl,[ecx] ; 0040ABB8 8A11
    %if ($ - %%insn_0040abb8) > 2
        %error "LONG_0040ABB8"
    %endif
    times 2 - ($ - %%insn_0040abb8) db 0
    %%insn_0040abba:
    shl edx,byte 0x8 ; 0040ABBA C1E208
    %if ($ - %%insn_0040abba) > 3
        %error "LONG_0040ABBA"
    %endif
    times 3 - ($ - %%insn_0040abba) db 0
    %%insn_0040abbd:
    mov ax,[0x420a30] ; 0040ABBD 66A1300A4200
    %if ($ - %%insn_0040abbd) > 6
        %error "LONG_0040ABBD"
    %endif
    times 6 - ($ - %%insn_0040abbd) db 0
    db 0x66, 0x03, 0xC2 ; 0040ABC3 6603C2 | add ax,dx | encoding preserved
    %%insn_0040abc6:
    mov [0x420a30],ax ; 0040ABC6 66A3300A4200
    %if ($ - %%insn_0040abc6) > 6
        %error "LONG_0040ABC6"
    %endif
    times 6 - ($ - %%insn_0040abc6) db 0
    %%insn_0040abcc:
    mov ecx,[ebp+0x8] ; 0040ABCC 8B4D08
    %if ($ - %%insn_0040abcc) > 3
        %error "LONG_0040ABCC"
    %endif
    times 3 - ($ - %%insn_0040abcc) db 0
    %%insn_0040abcf:
    add ecx,0x1 ; 0040ABCF 83C101
    %if ($ - %%insn_0040abcf) > 3
        %error "LONG_0040ABCF"
    %endif
    times 3 - ($ - %%insn_0040abcf) db 0
    %%insn_0040abd2:
    mov [ebp+0x8],ecx ; 0040ABD2 894D08
    %if ($ - %%insn_0040abd2) > 3
        %error "LONG_0040ABD2"
    %endif
    times 3 - ($ - %%insn_0040abd2) db 0
    %%insn_0040abd5:
    mov edx,[ebp+0x8] ; 0040ABD5 8B5508
    %if ($ - %%insn_0040abd5) > 3
        %error "LONG_0040ABD5"
    %endif
    times 3 - ($ - %%insn_0040abd5) db 0
    %%insn_0040abd8:
    movzx ax,byte [edx] ; 0040ABD8 660FB602
    %if ($ - %%insn_0040abd8) > 4
        %error "LONG_0040ABD8"
    %endif
    times 4 - ($ - %%insn_0040abd8) db 0
    %%insn_0040abdc:
    mov [0x420a38],ax ; 0040ABDC 66A3380A4200
    %if ($ - %%insn_0040abdc) > 6
        %error "LONG_0040ABDC"
    %endif
    times 6 - ($ - %%insn_0040abdc) db 0
    %%insn_0040abe2:
    mov ecx,[ebp+0x8] ; 0040ABE2 8B4D08
    %if ($ - %%insn_0040abe2) > 3
        %error "LONG_0040ABE2"
    %endif
    times 3 - ($ - %%insn_0040abe2) db 0
    %%insn_0040abe5:
    add ecx,0x1 ; 0040ABE5 83C101
    %if ($ - %%insn_0040abe5) > 3
        %error "LONG_0040ABE5"
    %endif
    times 3 - ($ - %%insn_0040abe5) db 0
    %%insn_0040abe8:
    mov [ebp+0x8],ecx ; 0040ABE8 894D08
    %if ($ - %%insn_0040abe8) > 3
        %error "LONG_0040ABE8"
    %endif
    times 3 - ($ - %%insn_0040abe8) db 0
    %%insn_0040abeb:
    mov edx,[ebp+0x8] ; 0040ABEB 8B5508
    %if ($ - %%insn_0040abeb) > 3
        %error "LONG_0040ABEB"
    %endif
    times 3 - ($ - %%insn_0040abeb) db 0
    db 0x33, 0xC0 ; 0040ABEE 33C0 | xor eax,eax | encoding preserved
    %%insn_0040abf0:
    mov al,[edx] ; 0040ABF0 8A02
    %if ($ - %%insn_0040abf0) > 2
        %error "LONG_0040ABF0"
    %endif
    times 2 - ($ - %%insn_0040abf0) db 0
    %%insn_0040abf2:
    shl eax,byte 0x8 ; 0040ABF2 C1E008
    %if ($ - %%insn_0040abf2) > 3
        %error "LONG_0040ABF2"
    %endif
    times 3 - ($ - %%insn_0040abf2) db 0
    %%insn_0040abf5:
    mov cx,[0x420a38] ; 0040ABF5 668B0D380A4200
    %if ($ - %%insn_0040abf5) > 7
        %error "LONG_0040ABF5"
    %endif
    times 7 - ($ - %%insn_0040abf5) db 0
    db 0x66, 0x03, 0xC8 ; 0040ABFC 6603C8 | add cx,ax | encoding preserved
    %%insn_0040abff:
    mov [0x420a38],cx ; 0040ABFF 66890D380A4200
    %if ($ - %%insn_0040abff) > 7
        %error "LONG_0040ABFF"
    %endif
    times 7 - ($ - %%insn_0040abff) db 0
    %%insn_0040ac06:
    mov edx,[ebp+0x8] ; 0040AC06 8B5508
    %if ($ - %%insn_0040ac06) > 3
        %error "LONG_0040AC06"
    %endif
    times 3 - ($ - %%insn_0040ac06) db 0
    %%insn_0040ac09:
    add edx,0x1 ; 0040AC09 83C201
    %if ($ - %%insn_0040ac09) > 3
        %error "LONG_0040AC09"
    %endif
    times 3 - ($ - %%insn_0040ac09) db 0
    %%insn_0040ac0c:
    mov [ebp+0x8],edx ; 0040AC0C 895508
    %if ($ - %%insn_0040ac0c) > 3
        %error "LONG_0040AC0C"
    %endif
    times 3 - ($ - %%insn_0040ac0c) db 0
    db 0x33, 0xC0 ; 0040AC0F 33C0 | xor eax,eax | encoding preserved
    %%insn_0040ac11:
    mov ax,[0x420a30] ; 0040AC11 66A1300A4200
    %if ($ - %%insn_0040ac11) > 6
        %error "LONG_0040AC11"
    %endif
    times 6 - ($ - %%insn_0040ac11) db 0
    %%insn_0040ac17:
    shl eax,byte 0x2 ; 0040AC17 C1E002
    %if ($ - %%insn_0040ac17) > 3
        %error "LONG_0040AC17"
    %endif
    times 3 - ($ - %%insn_0040ac17) db 0
    %%insn_0040ac1a:
    mov [0x420a2c],ax ; 0040AC1A 66A32C0A4200
    %if ($ - %%insn_0040ac1a) > 6
        %error "LONG_0040AC1A"
    %endif
    times 6 - ($ - %%insn_0040ac1a) db 0
    db 0x33, 0xC9 ; 0040AC20 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ac22:
    mov cx,[0x420a38] ; 0040AC22 668B0D380A4200
    %if ($ - %%insn_0040ac22) > 7
        %error "LONG_0040AC22"
    %endif
    times 7 - ($ - %%insn_0040ac22) db 0
    %%insn_0040ac29:
    shl ecx,byte 0x2 ; 0040AC29 C1E102
    %if ($ - %%insn_0040ac29) > 3
        %error "LONG_0040AC29"
    %endif
    times 3 - ($ - %%insn_0040ac29) db 0
    %%insn_0040ac2c:
    mov [0x420a34],cx ; 0040AC2C 66890D340A4200
    %if ($ - %%insn_0040ac2c) > 7
        %error "LONG_0040AC2C"
    %endif
    times 7 - ($ - %%insn_0040ac2c) db 0
    %%insn_0040ac33:
    mov edx,[ebp+0x10] ; 0040AC33 8B5510
    %if ($ - %%insn_0040ac33) > 3
        %error "LONG_0040AC33"
    %endif
    times 3 - ($ - %%insn_0040ac33) db 0
    %%insn_0040ac36:
    sar edx,byte 0x2 ; 0040AC36 C1FA02
    %if ($ - %%insn_0040ac36) > 3
        %error "LONG_0040AC36"
    %endif
    times 3 - ($ - %%insn_0040ac36) db 0
    %%insn_0040ac39:
    mov [0x4212dc],edx ; 0040AC39 8915DC124200
    %if ($ - %%insn_0040ac39) > 6
        %error "LONG_0040AC39"
    %endif
    times 6 - ($ - %%insn_0040ac39) db 0
    %%insn_0040ac3f:
    mov eax,[ebp+0x8] ; 0040AC3F 8B4508
    %if ($ - %%insn_0040ac3f) > 3
        %error "LONG_0040AC3F"
    %endif
    times 3 - ($ - %%insn_0040ac3f) db 0
    %%insn_0040ac42:
    add eax,0x2 ; 0040AC42 83C002
    %if ($ - %%insn_0040ac42) > 3
        %error "LONG_0040AC42"
    %endif
    times 3 - ($ - %%insn_0040ac42) db 0
    %%insn_0040ac45:
    mov [ebp+0x8],eax ; 0040AC45 894508
    %if ($ - %%insn_0040ac45) > 3
        %error "LONG_0040AC45"
    %endif
    times 3 - ($ - %%insn_0040ac45) db 0
    db 0x33, 0xC9 ; 0040AC48 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ac4a:
    mov cx,[0x4212d8] ; 0040AC4A 668B0DD8124200
    %if ($ - %%insn_0040ac4a) > 7
        %error "LONG_0040AC4A"
    %endif
    times 7 - ($ - %%insn_0040ac4a) db 0
    %%insn_0040ac51:
    and ecx,0x82 ; 0040AC51 81E182000000
    %if ($ - %%insn_0040ac51) > 6
        %error "LONG_0040AC51"
    %endif
    times 6 - ($ - %%insn_0040ac51) db 0
    %%insn_0040ac57:
    test ecx,ecx ; 0040AC57 85C9
    %if ($ - %%insn_0040ac57) > 2
        %error "LONG_0040AC57"
    %endif
    times 2 - ($ - %%insn_0040ac57) db 0
    %%insn_0040ac59:
    jnz 0x40ade0 ; 0040AC59 0F8581010000
    %if ($ - %%insn_0040ac59) > 6
        %error "LONG_0040AC59"
    %endif
    times 6 - ($ - %%insn_0040ac59) db 0
    db 0x33, 0xD2 ; 0040AC5F 33D2 | xor edx,edx | encoding preserved
    %%insn_0040ac61:
    mov dx,[0x4212d8] ; 0040AC61 668B15D8124200
    %if ($ - %%insn_0040ac61) > 7
        %error "LONG_0040AC61"
    %endif
    times 7 - ($ - %%insn_0040ac61) db 0
    %%insn_0040ac68:
    and edx,0x200 ; 0040AC68 81E200020000
    %if ($ - %%insn_0040ac68) > 6
        %error "LONG_0040AC68"
    %endif
    times 6 - ($ - %%insn_0040ac68) db 0
    %%insn_0040ac6e:
    test edx,edx ; 0040AC6E 85D2
    %if ($ - %%insn_0040ac6e) > 2
        %error "LONG_0040AC6E"
    %endif
    times 2 - ($ - %%insn_0040ac6e) db 0
    %%insn_0040ac70:
    jz 0x40ad12 ; 0040AC70 0F849C000000
    %if ($ - %%insn_0040ac70) > 6
        %error "LONG_0040AC70"
    %endif
    times 6 - ($ - %%insn_0040ac70) db 0
    %%insn_0040ac76:
    mov dword [ebp-0x24],0x0 ; 0040AC76 C745DC00000000
    %if ($ - %%insn_0040ac76) > 7
        %error "LONG_0040AC76"
    %endif
    times 7 - ($ - %%insn_0040ac76) db 0
    %%insn_0040ac7d:
    jmp short 0x40ac88 ; 0040AC7D EB09
    %if ($ - %%insn_0040ac7d) > 2
        %error "LONG_0040AC7D"
    %endif
    times 2 - ($ - %%insn_0040ac7d) db 0
    %%insn_0040ac7f:
    mov eax,[ebp-0x24] ; 0040AC7F 8B45DC
    %if ($ - %%insn_0040ac7f) > 3
        %error "LONG_0040AC7F"
    %endif
    times 3 - ($ - %%insn_0040ac7f) db 0
    %%insn_0040ac82:
    add eax,0x1 ; 0040AC82 83C001
    %if ($ - %%insn_0040ac82) > 3
        %error "LONG_0040AC82"
    %endif
    times 3 - ($ - %%insn_0040ac82) db 0
    %%insn_0040ac85:
    mov [ebp-0x24],eax ; 0040AC85 8945DC
    %if ($ - %%insn_0040ac85) > 3
        %error "LONG_0040AC85"
    %endif
    times 3 - ($ - %%insn_0040ac85) db 0
    %%insn_0040ac88:
    cmp dword [ebp-0x24],0x100 ; 0040AC88 817DDC00010000
    %if ($ - %%insn_0040ac88) > 7
        %error "LONG_0040AC88"
    %endif
    times 7 - ($ - %%insn_0040ac88) db 0
    %%insn_0040ac8f:
    jnl short 0x40ad0d ; 0040AC8F 7D7C
    %if ($ - %%insn_0040ac8f) > 2
        %error "LONG_0040AC8F"
    %endif
    times 2 - ($ - %%insn_0040ac8f) db 0
    %%insn_0040ac91:
    mov ecx,[ebp-0x24] ; 0040AC91 8B4DDC
    %if ($ - %%insn_0040ac91) > 3
        %error "LONG_0040AC91"
    %endif
    times 3 - ($ - %%insn_0040ac91) db 0
    %%insn_0040ac94:
    mov edx,[ebp+0x8] ; 0040AC94 8B5508
    %if ($ - %%insn_0040ac94) > 3
        %error "LONG_0040AC94"
    %endif
    times 3 - ($ - %%insn_0040ac94) db 0
    %%insn_0040ac97:
    mov al,[edx] ; 0040AC97 8A02
    %if ($ - %%insn_0040ac97) > 2
        %error "LONG_0040AC97"
    %endif
    times 2 - ($ - %%insn_0040ac97) db 0
    %%insn_0040ac99:
    mov [ecx*4+0x420a40],al ; 0040AC99 88048D400A4200
    %if ($ - %%insn_0040ac99) > 7
        %error "LONG_0040AC99"
    %endif
    times 7 - ($ - %%insn_0040ac99) db 0
    %%insn_0040aca0:
    mov ecx,[ebp+0x8] ; 0040ACA0 8B4D08
    %if ($ - %%insn_0040aca0) > 3
        %error "LONG_0040ACA0"
    %endif
    times 3 - ($ - %%insn_0040aca0) db 0
    %%insn_0040aca3:
    add ecx,0x1 ; 0040ACA3 83C101
    %if ($ - %%insn_0040aca3) > 3
        %error "LONG_0040ACA3"
    %endif
    times 3 - ($ - %%insn_0040aca3) db 0
    %%insn_0040aca6:
    mov [ebp+0x8],ecx ; 0040ACA6 894D08
    %if ($ - %%insn_0040aca6) > 3
        %error "LONG_0040ACA6"
    %endif
    times 3 - ($ - %%insn_0040aca6) db 0
    %%insn_0040aca9:
    mov edx,[ebp-0x24] ; 0040ACA9 8B55DC
    %if ($ - %%insn_0040aca9) > 3
        %error "LONG_0040ACA9"
    %endif
    times 3 - ($ - %%insn_0040aca9) db 0
    %%insn_0040acac:
    imul edx,edx,0x3 ; 0040ACAC 6BD203
    %if ($ - %%insn_0040acac) > 3
        %error "LONG_0040ACAC"
    %endif
    times 3 - ($ - %%insn_0040acac) db 0
    %%insn_0040acaf:
    mov eax,[0x421344] ; 0040ACAF A144134200
    %if ($ - %%insn_0040acaf) > 5
        %error "LONG_0040ACAF"
    %endif
    times 5 - ($ - %%insn_0040acaf) db 0
    %%insn_0040acb4:
    mov byte [eax+edx],0x0 ; 0040ACB4 C6041000
    %if ($ - %%insn_0040acb4) > 4
        %error "LONG_0040ACB4"
    %endif
    times 4 - ($ - %%insn_0040acb4) db 0
    %%insn_0040acb8:
    mov ecx,[ebp-0x24] ; 0040ACB8 8B4DDC
    %if ($ - %%insn_0040acb8) > 3
        %error "LONG_0040ACB8"
    %endif
    times 3 - ($ - %%insn_0040acb8) db 0
    %%insn_0040acbb:
    mov edx,[ebp+0x8] ; 0040ACBB 8B5508
    %if ($ - %%insn_0040acbb) > 3
        %error "LONG_0040ACBB"
    %endif
    times 3 - ($ - %%insn_0040acbb) db 0
    %%insn_0040acbe:
    mov al,[edx] ; 0040ACBE 8A02
    %if ($ - %%insn_0040acbe) > 2
        %error "LONG_0040ACBE"
    %endif
    times 2 - ($ - %%insn_0040acbe) db 0
    %%insn_0040acc0:
    mov [ecx*4+0x420a41],al ; 0040ACC0 88048D410A4200
    %if ($ - %%insn_0040acc0) > 7
        %error "LONG_0040ACC0"
    %endif
    times 7 - ($ - %%insn_0040acc0) db 0
    %%insn_0040acc7:
    mov ecx,[ebp+0x8] ; 0040ACC7 8B4D08
    %if ($ - %%insn_0040acc7) > 3
        %error "LONG_0040ACC7"
    %endif
    times 3 - ($ - %%insn_0040acc7) db 0
    %%insn_0040acca:
    add ecx,0x1 ; 0040ACCA 83C101
    %if ($ - %%insn_0040acca) > 3
        %error "LONG_0040ACCA"
    %endif
    times 3 - ($ - %%insn_0040acca) db 0
    %%insn_0040accd:
    mov [ebp+0x8],ecx ; 0040ACCD 894D08
    %if ($ - %%insn_0040accd) > 3
        %error "LONG_0040ACCD"
    %endif
    times 3 - ($ - %%insn_0040accd) db 0
    %%insn_0040acd0:
    mov edx,[ebp-0x24] ; 0040ACD0 8B55DC
    %if ($ - %%insn_0040acd0) > 3
        %error "LONG_0040ACD0"
    %endif
    times 3 - ($ - %%insn_0040acd0) db 0
    %%insn_0040acd3:
    imul edx,edx,0x3 ; 0040ACD3 6BD203
    %if ($ - %%insn_0040acd3) > 3
        %error "LONG_0040ACD3"
    %endif
    times 3 - ($ - %%insn_0040acd3) db 0
    %%insn_0040acd6:
    mov eax,[0x421344] ; 0040ACD6 A144134200
    %if ($ - %%insn_0040acd6) > 5
        %error "LONG_0040ACD6"
    %endif
    times 5 - ($ - %%insn_0040acd6) db 0
    %%insn_0040acdb:
    mov byte [eax+edx+0x1],0x0 ; 0040ACDB C644100100
    %if ($ - %%insn_0040acdb) > 5
        %error "LONG_0040ACDB"
    %endif
    times 5 - ($ - %%insn_0040acdb) db 0
    %%insn_0040ace0:
    mov ecx,[ebp-0x24] ; 0040ACE0 8B4DDC
    %if ($ - %%insn_0040ace0) > 3
        %error "LONG_0040ACE0"
    %endif
    times 3 - ($ - %%insn_0040ace0) db 0
    %%insn_0040ace3:
    mov edx,[ebp+0x8] ; 0040ACE3 8B5508
    %if ($ - %%insn_0040ace3) > 3
        %error "LONG_0040ACE3"
    %endif
    times 3 - ($ - %%insn_0040ace3) db 0
    %%insn_0040ace6:
    mov al,[edx] ; 0040ACE6 8A02
    %if ($ - %%insn_0040ace6) > 2
        %error "LONG_0040ACE6"
    %endif
    times 2 - ($ - %%insn_0040ace6) db 0
    %%insn_0040ace8:
    mov [ecx*4+0x420a42],al ; 0040ACE8 88048D420A4200
    %if ($ - %%insn_0040ace8) > 7
        %error "LONG_0040ACE8"
    %endif
    times 7 - ($ - %%insn_0040ace8) db 0
    %%insn_0040acef:
    mov ecx,[ebp+0x8] ; 0040ACEF 8B4D08
    %if ($ - %%insn_0040acef) > 3
        %error "LONG_0040ACEF"
    %endif
    times 3 - ($ - %%insn_0040acef) db 0
    %%insn_0040acf2:
    add ecx,0x1 ; 0040ACF2 83C101
    %if ($ - %%insn_0040acf2) > 3
        %error "LONG_0040ACF2"
    %endif
    times 3 - ($ - %%insn_0040acf2) db 0
    %%insn_0040acf5:
    mov [ebp+0x8],ecx ; 0040ACF5 894D08
    %if ($ - %%insn_0040acf5) > 3
        %error "LONG_0040ACF5"
    %endif
    times 3 - ($ - %%insn_0040acf5) db 0
    %%insn_0040acf8:
    mov edx,[ebp-0x24] ; 0040ACF8 8B55DC
    %if ($ - %%insn_0040acf8) > 3
        %error "LONG_0040ACF8"
    %endif
    times 3 - ($ - %%insn_0040acf8) db 0
    %%insn_0040acfb:
    imul edx,edx,0x3 ; 0040ACFB 6BD203
    %if ($ - %%insn_0040acfb) > 3
        %error "LONG_0040ACFB"
    %endif
    times 3 - ($ - %%insn_0040acfb) db 0
    %%insn_0040acfe:
    mov eax,[0x421344] ; 0040ACFE A144134200
    %if ($ - %%insn_0040acfe) > 5
        %error "LONG_0040ACFE"
    %endif
    times 5 - ($ - %%insn_0040acfe) db 0
    %%insn_0040ad03:
    mov byte [eax+edx+0x2],0x0 ; 0040AD03 C644100200
    %if ($ - %%insn_0040ad03) > 5
        %error "LONG_0040AD03"
    %endif
    times 5 - ($ - %%insn_0040ad03) db 0
    %%insn_0040ad08:
    jmp 0x40ac7f ; 0040AD08 E972FFFFFF
    %if ($ - %%insn_0040ad08) > 5
        %error "LONG_0040AD08"
    %endif
    times 5 - ($ - %%insn_0040ad08) db 0
    %%insn_0040ad0d:
    jmp 0x40ada4 ; 0040AD0D E992000000
    %if ($ - %%insn_0040ad0d) > 5
        %error "LONG_0040AD0D"
    %endif
    times 5 - ($ - %%insn_0040ad0d) db 0
    db 0x33, 0xC9 ; 0040AD12 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ad14:
    mov cx,[0x4212d8] ; 0040AD14 668B0DD8124200
    %if ($ - %%insn_0040ad14) > 7
        %error "LONG_0040AD14"
    %endif
    times 7 - ($ - %%insn_0040ad14) db 0
    %%insn_0040ad1b:
    and ecx,0x2 ; 0040AD1B 83E102
    %if ($ - %%insn_0040ad1b) > 3
        %error "LONG_0040AD1B"
    %endif
    times 3 - ($ - %%insn_0040ad1b) db 0
    %%insn_0040ad1e:
    test ecx,ecx ; 0040AD1E 85C9
    %if ($ - %%insn_0040ad1e) > 2
        %error "LONG_0040AD1E"
    %endif
    times 2 - ($ - %%insn_0040ad1e) db 0
    %%insn_0040ad20:
    jnz short 0x40ad99 ; 0040AD20 7577
    %if ($ - %%insn_0040ad20) > 2
        %error "LONG_0040AD20"
    %endif
    times 2 - ($ - %%insn_0040ad20) db 0
    %%insn_0040ad22:
    mov dword [ebp-0x24],0x0 ; 0040AD22 C745DC00000000
    %if ($ - %%insn_0040ad22) > 7
        %error "LONG_0040AD22"
    %endif
    times 7 - ($ - %%insn_0040ad22) db 0
    %%insn_0040ad29:
    jmp short 0x40ad34 ; 0040AD29 EB09
    %if ($ - %%insn_0040ad29) > 2
        %error "LONG_0040AD29"
    %endif
    times 2 - ($ - %%insn_0040ad29) db 0
    %%insn_0040ad2b:
    mov edx,[ebp-0x24] ; 0040AD2B 8B55DC
    %if ($ - %%insn_0040ad2b) > 3
        %error "LONG_0040AD2B"
    %endif
    times 3 - ($ - %%insn_0040ad2b) db 0
    %%insn_0040ad2e:
    add edx,0x1 ; 0040AD2E 83C201
    %if ($ - %%insn_0040ad2e) > 3
        %error "LONG_0040AD2E"
    %endif
    times 3 - ($ - %%insn_0040ad2e) db 0
    %%insn_0040ad31:
    mov [ebp-0x24],edx ; 0040AD31 8955DC
    %if ($ - %%insn_0040ad31) > 3
        %error "LONG_0040AD31"
    %endif
    times 3 - ($ - %%insn_0040ad31) db 0
    %%insn_0040ad34:
    cmp dword [ebp-0x24],0x100 ; 0040AD34 817DDC00010000
    %if ($ - %%insn_0040ad34) > 7
        %error "LONG_0040AD34"
    %endif
    times 7 - ($ - %%insn_0040ad34) db 0
    %%insn_0040ad3b:
    jnl short 0x40ad97 ; 0040AD3B 7D5A
    %if ($ - %%insn_0040ad3b) > 2
        %error "LONG_0040AD3B"
    %endif
    times 2 - ($ - %%insn_0040ad3b) db 0
    %%insn_0040ad3d:
    mov eax,[ebp-0x24] ; 0040AD3D 8B45DC
    %if ($ - %%insn_0040ad3d) > 3
        %error "LONG_0040AD3D"
    %endif
    times 3 - ($ - %%insn_0040ad3d) db 0
    %%insn_0040ad40:
    imul eax,eax,0x3 ; 0040AD40 6BC003
    %if ($ - %%insn_0040ad40) > 3
        %error "LONG_0040AD40"
    %endif
    times 3 - ($ - %%insn_0040ad40) db 0
    %%insn_0040ad43:
    mov ecx,[0x421344] ; 0040AD43 8B0D44134200
    %if ($ - %%insn_0040ad43) > 6
        %error "LONG_0040AD43"
    %endif
    times 6 - ($ - %%insn_0040ad43) db 0
    %%insn_0040ad49:
    mov edx,[ebp+0x8] ; 0040AD49 8B5508
    %if ($ - %%insn_0040ad49) > 3
        %error "LONG_0040AD49"
    %endif
    times 3 - ($ - %%insn_0040ad49) db 0
    %%insn_0040ad4c:
    mov dl,[edx] ; 0040AD4C 8A12
    %if ($ - %%insn_0040ad4c) > 2
        %error "LONG_0040AD4C"
    %endif
    times 2 - ($ - %%insn_0040ad4c) db 0
    %%insn_0040ad4e:
    mov [ecx+eax],dl ; 0040AD4E 881401
    %if ($ - %%insn_0040ad4e) > 3
        %error "LONG_0040AD4E"
    %endif
    times 3 - ($ - %%insn_0040ad4e) db 0
    %%insn_0040ad51:
    mov eax,[ebp+0x8] ; 0040AD51 8B4508
    %if ($ - %%insn_0040ad51) > 3
        %error "LONG_0040AD51"
    %endif
    times 3 - ($ - %%insn_0040ad51) db 0
    %%insn_0040ad54:
    add eax,0x1 ; 0040AD54 83C001
    %if ($ - %%insn_0040ad54) > 3
        %error "LONG_0040AD54"
    %endif
    times 3 - ($ - %%insn_0040ad54) db 0
    %%insn_0040ad57:
    mov [ebp+0x8],eax ; 0040AD57 894508
    %if ($ - %%insn_0040ad57) > 3
        %error "LONG_0040AD57"
    %endif
    times 3 - ($ - %%insn_0040ad57) db 0
    %%insn_0040ad5a:
    mov ecx,[ebp-0x24] ; 0040AD5A 8B4DDC
    %if ($ - %%insn_0040ad5a) > 3
        %error "LONG_0040AD5A"
    %endif
    times 3 - ($ - %%insn_0040ad5a) db 0
    %%insn_0040ad5d:
    imul ecx,ecx,0x3 ; 0040AD5D 6BC903
    %if ($ - %%insn_0040ad5d) > 3
        %error "LONG_0040AD5D"
    %endif
    times 3 - ($ - %%insn_0040ad5d) db 0
    %%insn_0040ad60:
    mov edx,[0x421344] ; 0040AD60 8B1544134200
    %if ($ - %%insn_0040ad60) > 6
        %error "LONG_0040AD60"
    %endif
    times 6 - ($ - %%insn_0040ad60) db 0
    %%insn_0040ad66:
    mov eax,[ebp+0x8] ; 0040AD66 8B4508
    %if ($ - %%insn_0040ad66) > 3
        %error "LONG_0040AD66"
    %endif
    times 3 - ($ - %%insn_0040ad66) db 0
    %%insn_0040ad69:
    mov al,[eax] ; 0040AD69 8A00
    %if ($ - %%insn_0040ad69) > 2
        %error "LONG_0040AD69"
    %endif
    times 2 - ($ - %%insn_0040ad69) db 0
    %%insn_0040ad6b:
    mov [edx+ecx+0x1],al ; 0040AD6B 88440A01
    %if ($ - %%insn_0040ad6b) > 4
        %error "LONG_0040AD6B"
    %endif
    times 4 - ($ - %%insn_0040ad6b) db 0
    %%insn_0040ad6f:
    mov ecx,[ebp+0x8] ; 0040AD6F 8B4D08
    %if ($ - %%insn_0040ad6f) > 3
        %error "LONG_0040AD6F"
    %endif
    times 3 - ($ - %%insn_0040ad6f) db 0
    %%insn_0040ad72:
    add ecx,0x1 ; 0040AD72 83C101
    %if ($ - %%insn_0040ad72) > 3
        %error "LONG_0040AD72"
    %endif
    times 3 - ($ - %%insn_0040ad72) db 0
    %%insn_0040ad75:
    mov [ebp+0x8],ecx ; 0040AD75 894D08
    %if ($ - %%insn_0040ad75) > 3
        %error "LONG_0040AD75"
    %endif
    times 3 - ($ - %%insn_0040ad75) db 0
    %%insn_0040ad78:
    mov edx,[ebp-0x24] ; 0040AD78 8B55DC
    %if ($ - %%insn_0040ad78) > 3
        %error "LONG_0040AD78"
    %endif
    times 3 - ($ - %%insn_0040ad78) db 0
    %%insn_0040ad7b:
    imul edx,edx,0x3 ; 0040AD7B 6BD203
    %if ($ - %%insn_0040ad7b) > 3
        %error "LONG_0040AD7B"
    %endif
    times 3 - ($ - %%insn_0040ad7b) db 0
    %%insn_0040ad7e:
    mov eax,[0x421344] ; 0040AD7E A144134200
    %if ($ - %%insn_0040ad7e) > 5
        %error "LONG_0040AD7E"
    %endif
    times 5 - ($ - %%insn_0040ad7e) db 0
    %%insn_0040ad83:
    mov ecx,[ebp+0x8] ; 0040AD83 8B4D08
    %if ($ - %%insn_0040ad83) > 3
        %error "LONG_0040AD83"
    %endif
    times 3 - ($ - %%insn_0040ad83) db 0
    %%insn_0040ad86:
    mov cl,[ecx] ; 0040AD86 8A09
    %if ($ - %%insn_0040ad86) > 2
        %error "LONG_0040AD86"
    %endif
    times 2 - ($ - %%insn_0040ad86) db 0
    %%insn_0040ad88:
    mov [eax+edx+0x2],cl ; 0040AD88 884C1002
    %if ($ - %%insn_0040ad88) > 4
        %error "LONG_0040AD88"
    %endif
    times 4 - ($ - %%insn_0040ad88) db 0
    %%insn_0040ad8c:
    mov edx,[ebp+0x8] ; 0040AD8C 8B5508
    %if ($ - %%insn_0040ad8c) > 3
        %error "LONG_0040AD8C"
    %endif
    times 3 - ($ - %%insn_0040ad8c) db 0
    %%insn_0040ad8f:
    add edx,0x1 ; 0040AD8F 83C201
    %if ($ - %%insn_0040ad8f) > 3
        %error "LONG_0040AD8F"
    %endif
    times 3 - ($ - %%insn_0040ad8f) db 0
    %%insn_0040ad92:
    mov [ebp+0x8],edx ; 0040AD92 895508
    %if ($ - %%insn_0040ad92) > 3
        %error "LONG_0040AD92"
    %endif
    times 3 - ($ - %%insn_0040ad92) db 0
    %%insn_0040ad95:
    jmp short 0x40ad2b ; 0040AD95 EB94
    %if ($ - %%insn_0040ad95) > 2
        %error "LONG_0040AD95"
    %endif
    times 2 - ($ - %%insn_0040ad95) db 0
    %%insn_0040ad97:
    jmp short 0x40ada4 ; 0040AD97 EB0B
    %if ($ - %%insn_0040ad97) > 2
        %error "LONG_0040AD97"
    %endif
    times 2 - ($ - %%insn_0040ad97) db 0
    %%insn_0040ad99:
    mov eax,[ebp+0x8] ; 0040AD99 8B4508
    %if ($ - %%insn_0040ad99) > 3
        %error "LONG_0040AD99"
    %endif
    times 3 - ($ - %%insn_0040ad99) db 0
    %%insn_0040ad9c:
    add eax,0x300 ; 0040AD9C 0500030000
    %if ($ - %%insn_0040ad9c) > 5
        %error "LONG_0040AD9C"
    %endif
    times 5 - ($ - %%insn_0040ad9c) db 0
    %%insn_0040ada1:
    mov [ebp+0x8],eax ; 0040ADA1 894508
    %if ($ - %%insn_0040ada1) > 3
        %error "LONG_0040ADA1"
    %endif
    times 3 - ($ - %%insn_0040ada1) db 0
    db 0x33, 0xC9 ; 0040ADA4 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ada6:
    mov cx,[0x4212d8] ; 0040ADA6 668B0DD8124200
    %if ($ - %%insn_0040ada6) > 7
        %error "LONG_0040ADA6"
    %endif
    times 7 - ($ - %%insn_0040ada6) db 0
    %%insn_0040adad:
    and ecx,0x40 ; 0040ADAD 83E140
    %if ($ - %%insn_0040adad) > 3
        %error "LONG_0040ADAD"
    %endif
    times 3 - ($ - %%insn_0040adad) db 0
    %%insn_0040adb0:
    test ecx,ecx ; 0040ADB0 85C9
    %if ($ - %%insn_0040adb0) > 2
        %error "LONG_0040ADB0"
    %endif
    times 2 - ($ - %%insn_0040adb0) db 0
    %%insn_0040adb2:
    jnz short 0x40adde ; 0040ADB2 752A
    %if ($ - %%insn_0040adb2) > 2
        %error "LONG_0040ADB2"
    %endif
    times 2 - ($ - %%insn_0040adb2) db 0
    db 0x33, 0xD2 ; 0040ADB4 33D2 | xor edx,edx | encoding preserved
    %%insn_0040adb6:
    mov dx,[0x4212d8] ; 0040ADB6 668B15D8124200
    %if ($ - %%insn_0040adb6) > 7
        %error "LONG_0040ADB6"
    %endif
    times 7 - ($ - %%insn_0040adb6) db 0
    %%insn_0040adbd:
    and edx,0x20 ; 0040ADBD 83E220
    %if ($ - %%insn_0040adbd) > 3
        %error "LONG_0040ADBD"
    %endif
    times 3 - ($ - %%insn_0040adbd) db 0
    %%insn_0040adc0:
    test edx,edx ; 0040ADC0 85D2
    %if ($ - %%insn_0040adc0) > 2
        %error "LONG_0040ADC0"
    %endif
    times 2 - ($ - %%insn_0040adc0) db 0
    %%insn_0040adc2:
    jnz short 0x40adde ; 0040ADC2 751A
    %if ($ - %%insn_0040adc2) > 2
        %error "LONG_0040ADC2"
    %endif
    times 2 - ($ - %%insn_0040adc2) db 0
    db 0x33, 0xC0 ; 0040ADC4 33C0 | xor eax,eax | encoding preserved
    %%insn_0040adc6:
    mov ax,[0x4212d8] ; 0040ADC6 66A1D8124200
    %if ($ - %%insn_0040adc6) > 6
        %error "LONG_0040ADC6"
    %endif
    times 6 - ($ - %%insn_0040adc6) db 0
    %%insn_0040adcc:
    and eax,0x2 ; 0040ADCC 83E002
    %if ($ - %%insn_0040adcc) > 3
        %error "LONG_0040ADCC"
    %endif
    times 3 - ($ - %%insn_0040adcc) db 0
    %%insn_0040adcf:
    test eax,eax ; 0040ADCF 85C0
    %if ($ - %%insn_0040adcf) > 2
        %error "LONG_0040ADCF"
    %endif
    times 2 - ($ - %%insn_0040adcf) db 0
    %%insn_0040add1:
    jnz short 0x40adde ; 0040ADD1 750B
    %if ($ - %%insn_0040add1) > 2
        %error "LONG_0040ADD1"
    %endif
    times 2 - ($ - %%insn_0040add1) db 0
    %%insn_0040add3:
    mov ecx,0x421300 ; 0040ADD3 B900134200
    %if ($ - %%insn_0040add3) > 5
        %error "LONG_0040ADD3"
    %endif
    times 5 - ($ - %%insn_0040add3) db 0
    %%insn_0040add8:
    call dword near [0x4213b8] ; 0040ADD8 FF15B8134200
    %if ($ - %%insn_0040add8) > 6
        %error "LONG_0040ADD8"
    %endif
    times 6 - ($ - %%insn_0040add8) db 0
    %%insn_0040adde:
    jmp short 0x40ae0d ; 0040ADDE EB2D
    %if ($ - %%insn_0040adde) > 2
        %error "LONG_0040ADDE"
    %endif
    times 2 - ($ - %%insn_0040adde) db 0
    %%insn_0040ade0:
    mov ecx,[ebp+0x8] ; 0040ADE0 8B4D08
    %if ($ - %%insn_0040ade0) > 3
        %error "LONG_0040ADE0"
    %endif
    times 3 - ($ - %%insn_0040ade0) db 0
    %%insn_0040ade3:
    add ecx,0x300 ; 0040ADE3 81C100030000
    %if ($ - %%insn_0040ade3) > 6
        %error "LONG_0040ADE3"
    %endif
    times 6 - ($ - %%insn_0040ade3) db 0
    %%insn_0040ade9:
    mov [ebp+0x8],ecx ; 0040ADE9 894D08
    %if ($ - %%insn_0040ade9) > 3
        %error "LONG_0040ADE9"
    %endif
    times 3 - ($ - %%insn_0040ade9) db 0
    db 0x33, 0xD2 ; 0040ADEC 33D2 | xor edx,edx | encoding preserved
    %%insn_0040adee:
    mov dx,[0x4212d8] ; 0040ADEE 668B15D8124200
    %if ($ - %%insn_0040adee) > 7
        %error "LONG_0040ADEE"
    %endif
    times 7 - ($ - %%insn_0040adee) db 0
    %%insn_0040adf5:
    and edx,0x80 ; 0040ADF5 81E280000000
    %if ($ - %%insn_0040adf5) > 6
        %error "LONG_0040ADF5"
    %endif
    times 6 - ($ - %%insn_0040adf5) db 0
    %%insn_0040adfb:
    test edx,edx ; 0040ADFB 85D2
    %if ($ - %%insn_0040adfb) > 2
        %error "LONG_0040ADFB"
    %endif
    times 2 - ($ - %%insn_0040adfb) db 0
    %%insn_0040adfd:
    jz short 0x40ae0d ; 0040ADFD 740E
    %if ($ - %%insn_0040adfd) > 2
        %error "LONG_0040ADFD"
    %endif
    times 2 - ($ - %%insn_0040adfd) db 0
    %%insn_0040adff:
    mov ax,[0x4212d8] ; 0040ADFF 66A1D8124200
    %if ($ - %%insn_0040adff) > 6
        %error "LONG_0040ADFF"
    %endif
    times 6 - ($ - %%insn_0040adff) db 0
    %%insn_0040ae05:
    or al,0x20 ; 0040AE05 0C20
    %if ($ - %%insn_0040ae05) > 2
        %error "LONG_0040AE05"
    %endif
    times 2 - ($ - %%insn_0040ae05) db 0
    %%insn_0040ae07:
    mov [0x4212d8],ax ; 0040AE07 66A3D8124200
    %if ($ - %%insn_0040ae07) > 6
        %error "LONG_0040AE07"
    %endif
    times 6 - ($ - %%insn_0040ae07) db 0
    db 0x33, 0xC9 ; 0040AE0D 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ae0f:
    mov cx,[0x4212d8] ; 0040AE0F 668B0DD8124200
    %if ($ - %%insn_0040ae0f) > 7
        %error "LONG_0040AE0F"
    %endif
    times 7 - ($ - %%insn_0040ae0f) db 0
    %%insn_0040ae16:
    and ecx,0x20 ; 0040AE16 83E120
    %if ($ - %%insn_0040ae16) > 3
        %error "LONG_0040AE16"
    %endif
    times 3 - ($ - %%insn_0040ae16) db 0
    %%insn_0040ae19:
    test ecx,ecx ; 0040AE19 85C9
    %if ($ - %%insn_0040ae19) > 2
        %error "LONG_0040AE19"
    %endif
    times 2 - ($ - %%insn_0040ae19) db 0
    %%insn_0040ae1b:
    jz short 0x40ae37 ; 0040AE1B 741A
    %if ($ - %%insn_0040ae1b) > 2
        %error "LONG_0040AE1B"
    %endif
    times 2 - ($ - %%insn_0040ae1b) db 0
    db 0x33, 0xD2 ; 0040AE1D 33D2 | xor edx,edx | encoding preserved
    %%insn_0040ae1f:
    mov dx,[0x4212d8] ; 0040AE1F 668B15D8124200
    %if ($ - %%insn_0040ae1f) > 7
        %error "LONG_0040AE1F"
    %endif
    times 7 - ($ - %%insn_0040ae1f) db 0
    %%insn_0040ae26:
    and edx,0x2 ; 0040AE26 83E202
    %if ($ - %%insn_0040ae26) > 3
        %error "LONG_0040AE26"
    %endif
    times 3 - ($ - %%insn_0040ae26) db 0
    %%insn_0040ae29:
    test edx,edx ; 0040AE29 85D2
    %if ($ - %%insn_0040ae29) > 2
        %error "LONG_0040AE29"
    %endif
    times 2 - ($ - %%insn_0040ae29) db 0
    %%insn_0040ae2b:
    jnz short 0x40ae37 ; 0040AE2B 750A
    %if ($ - %%insn_0040ae2b) > 2
        %error "LONG_0040AE2B"
    %endif
    times 2 - ($ - %%insn_0040ae2b) db 0
    %%insn_0040ae2d:
    mov eax,0x1 ; 0040AE2D B801000000
    %if ($ - %%insn_0040ae2d) > 5
        %error "LONG_0040AE2D"
    %endif
    times 5 - ($ - %%insn_0040ae2d) db 0
    %%insn_0040ae32:
    jmp 0x40b191 ; 0040AE32 E95A030000
    %if ($ - %%insn_0040ae32) > 5
        %error "LONG_0040AE32"
    %endif
    times 5 - ($ - %%insn_0040ae32) db 0
    db 0x33, 0xC0 ; 0040AE37 33C0 | xor eax,eax | encoding preserved
    %%insn_0040ae39:
    mov ax,[0x4212d8] ; 0040AE39 66A1D8124200
    %if ($ - %%insn_0040ae39) > 6
        %error "LONG_0040AE39"
    %endif
    times 6 - ($ - %%insn_0040ae39) db 0
    %%insn_0040ae3f:
    and eax,0x2 ; 0040AE3F 83E002
    %if ($ - %%insn_0040ae3f) > 3
        %error "LONG_0040AE3F"
    %endif
    times 3 - ($ - %%insn_0040ae3f) db 0
    %%insn_0040ae42:
    test eax,eax ; 0040AE42 85C0
    %if ($ - %%insn_0040ae42) > 2
        %error "LONG_0040AE42"
    %endif
    times 2 - ($ - %%insn_0040ae42) db 0
    %%insn_0040ae44:
    jz 0x40af53 ; 0040AE44 0F8409010000
    %if ($ - %%insn_0040ae44) > 6
        %error "LONG_0040AE44"
    %endif
    times 6 - ($ - %%insn_0040ae44) db 0
    %%insn_0040ae4a:
    mov word [ebp-0x14],0x0 ; 0040AE4A 66C745EC0000
    %if ($ - %%insn_0040ae4a) > 6
        %error "LONG_0040AE4A"
    %endif
    times 6 - ($ - %%insn_0040ae4a) db 0
    %%insn_0040ae50:
    jmp short 0x40ae5e ; 0040AE50 EB0C
    %if ($ - %%insn_0040ae50) > 2
        %error "LONG_0040AE50"
    %endif
    times 2 - ($ - %%insn_0040ae50) db 0
    %%insn_0040ae52:
    mov cx,[ebp-0x14] ; 0040AE52 668B4DEC
    %if ($ - %%insn_0040ae52) > 4
        %error "LONG_0040AE52"
    %endif
    times 4 - ($ - %%insn_0040ae52) db 0
    %%insn_0040ae56:
    add cx,0x1 ; 0040AE56 6683C101
    %if ($ - %%insn_0040ae56) > 4
        %error "LONG_0040AE56"
    %endif
    times 4 - ($ - %%insn_0040ae56) db 0
    %%insn_0040ae5a:
    mov [ebp-0x14],cx ; 0040AE5A 66894DEC
    %if ($ - %%insn_0040ae5a) > 4
        %error "LONG_0040AE5A"
    %endif
    times 4 - ($ - %%insn_0040ae5a) db 0
    %%insn_0040ae5e:
    mov edx,[ebp-0x14] ; 0040AE5E 8B55EC
    %if ($ - %%insn_0040ae5e) > 3
        %error "LONG_0040AE5E"
    %endif
    times 3 - ($ - %%insn_0040ae5e) db 0
    %%insn_0040ae61:
    and edx,0xffff ; 0040AE61 81E2FFFF0000
    %if ($ - %%insn_0040ae61) > 6
        %error "LONG_0040AE61"
    %endif
    times 6 - ($ - %%insn_0040ae61) db 0
    db 0x33, 0xC0 ; 0040AE67 33C0 | xor eax,eax | encoding preserved
    %%insn_0040ae69:
    mov ax,[0x420a38] ; 0040AE69 66A1380A4200
    %if ($ - %%insn_0040ae69) > 6
        %error "LONG_0040AE69"
    %endif
    times 6 - ($ - %%insn_0040ae69) db 0
    db 0x3B, 0xD0 ; 0040AE6F 3BD0 | cmp edx,eax | encoding preserved
    %%insn_0040ae71:
    jnl 0x40af4e ; 0040AE71 0F8DD7000000
    %if ($ - %%insn_0040ae71) > 6
        %error "LONG_0040AE71"
    %endif
    times 6 - ($ - %%insn_0040ae71) db 0
    %%insn_0040ae77:
    mov ecx,[ebp-0x14] ; 0040AE77 8B4DEC
    %if ($ - %%insn_0040ae77) > 3
        %error "LONG_0040AE77"
    %endif
    times 3 - ($ - %%insn_0040ae77) db 0
    %%insn_0040ae7a:
    and ecx,0xffff ; 0040AE7A 81E1FFFF0000
    %if ($ - %%insn_0040ae7a) > 6
        %error "LONG_0040AE7A"
    %endif
    times 6 - ($ - %%insn_0040ae7a) db 0
    %%insn_0040ae80:
    shl ecx,byte 0x2 ; 0040AE80 C1E102
    %if ($ - %%insn_0040ae80) > 3
        %error "LONG_0040AE80"
    %endif
    times 3 - ($ - %%insn_0040ae80) db 0
    %%insn_0040ae83:
    imul ecx,[ebp+0x10] ; 0040AE83 0FAF4D10
    %if ($ - %%insn_0040ae83) > 4
        %error "LONG_0040AE83"
    %endif
    times 4 - ($ - %%insn_0040ae83) db 0
    %%insn_0040ae87:
    mov [ebp-0x24],ecx ; 0040AE87 894DDC
    %if ($ - %%insn_0040ae87) > 3
        %error "LONG_0040AE87"
    %endif
    times 3 - ($ - %%insn_0040ae87) db 0
    %%insn_0040ae8a:
    mov word [ebp-0x38],0x0 ; 0040AE8A 66C745C80000
    %if ($ - %%insn_0040ae8a) > 6
        %error "LONG_0040AE8A"
    %endif
    times 6 - ($ - %%insn_0040ae8a) db 0
    %%insn_0040ae90:
    jmp short 0x40ae9e ; 0040AE90 EB0C
    %if ($ - %%insn_0040ae90) > 2
        %error "LONG_0040AE90"
    %endif
    times 2 - ($ - %%insn_0040ae90) db 0
    %%insn_0040ae92:
    mov dx,[ebp-0x38] ; 0040AE92 668B55C8
    %if ($ - %%insn_0040ae92) > 4
        %error "LONG_0040AE92"
    %endif
    times 4 - ($ - %%insn_0040ae92) db 0
    %%insn_0040ae96:
    add dx,0x1 ; 0040AE96 6683C201
    %if ($ - %%insn_0040ae96) > 4
        %error "LONG_0040AE96"
    %endif
    times 4 - ($ - %%insn_0040ae96) db 0
    %%insn_0040ae9a:
    mov [ebp-0x38],dx ; 0040AE9A 668955C8
    %if ($ - %%insn_0040ae9a) > 4
        %error "LONG_0040AE9A"
    %endif
    times 4 - ($ - %%insn_0040ae9a) db 0
    %%insn_0040ae9e:
    mov eax,[ebp-0x38] ; 0040AE9E 8B45C8
    %if ($ - %%insn_0040ae9e) > 3
        %error "LONG_0040AE9E"
    %endif
    times 3 - ($ - %%insn_0040ae9e) db 0
    %%insn_0040aea1:
    and eax,0xffff ; 0040AEA1 25FFFF0000
    %if ($ - %%insn_0040aea1) > 5
        %error "LONG_0040AEA1"
    %endif
    times 5 - ($ - %%insn_0040aea1) db 0
    db 0x33, 0xC9 ; 0040AEA6 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040aea8:
    mov cx,[0x420a30] ; 0040AEA8 668B0D300A4200
    %if ($ - %%insn_0040aea8) > 7
        %error "LONG_0040AEA8"
    %endif
    times 7 - ($ - %%insn_0040aea8) db 0
    db 0x3B, 0xC1 ; 0040AEAF 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_0040aeb1:
    jnl 0x40af49 ; 0040AEB1 0F8D92000000
    %if ($ - %%insn_0040aeb1) > 6
        %error "LONG_0040AEB1"
    %endif
    times 6 - ($ - %%insn_0040aeb1) db 0
    %%insn_0040aeb7:
    mov esi,[ebp+0x8] ; 0040AEB7 8B7508
    %if ($ - %%insn_0040aeb7) > 3
        %error "LONG_0040AEB7"
    %endif
    times 3 - ($ - %%insn_0040aeb7) db 0
    %%insn_0040aeba:
    mov bx,[esi] ; 0040AEBA 668B1E
    %if ($ - %%insn_0040aeba) > 3
        %error "LONG_0040AEBA"
    %endif
    times 3 - ($ - %%insn_0040aeba) db 0
    %%insn_0040aebd:
    mov dx,[esi+0x2] ; 0040AEBD 668B5602
    %if ($ - %%insn_0040aebd) > 4
        %error "LONG_0040AEBD"
    %endif
    times 4 - ($ - %%insn_0040aebd) db 0
    %%insn_0040aec1:
    add dword [ebp+0x8],0x4 ; 0040AEC1 83450804
    %if ($ - %%insn_0040aec1) > 4
        %error "LONG_0040AEC1"
    %endif
    times 4 - ($ - %%insn_0040aec1) db 0
    %%insn_0040aec5:
    cmp bx,0xffffffffffffffff ; 0040AEC5 6683FBFF
    %if ($ - %%insn_0040aec5) > 4
        %error "LONG_0040AEC5"
    %endif
    times 4 - ($ - %%insn_0040aec5) db 0
    %%insn_0040aec9:
    jz short 0x40af40 ; 0040AEC9 7475
    %if ($ - %%insn_0040aec9) > 2
        %error "LONG_0040AEC9"
    %endif
    times 2 - ($ - %%insn_0040aec9) db 0
    %%insn_0040aecb:
    mov edi,[ebp+0xc] ; 0040AECB 8B7D0C
    %if ($ - %%insn_0040aecb) > 3
        %error "LONG_0040AECB"
    %endif
    times 3 - ($ - %%insn_0040aecb) db 0
    %%insn_0040aece:
    add edi,[ebp-0x24] ; 0040AECE 037DDC
    %if ($ - %%insn_0040aece) > 3
        %error "LONG_0040AECE"
    %endif
    times 3 - ($ - %%insn_0040aece) db 0
    %%insn_0040aed1:
    mov ah,[0x4212cc] ; 0040AED1 8A25CC124200
    %if ($ - %%insn_0040aed1) > 6
        %error "LONG_0040AED1"
    %endif
    times 6 - ($ - %%insn_0040aed1) db 0
    %%insn_0040aed7:
    mov ecx,0x4 ; 0040AED7 B904000000
    %if ($ - %%insn_0040aed7) > 5
        %error "LONG_0040AED7"
    %endif
    times 5 - ($ - %%insn_0040aed7) db 0
    db 0x8A, 0xC3 ; 0040AEDC 8AC3 | mov al,bl | encoding preserved
    %%insn_0040aede:
    test dx,0x8000 ; 0040AEDE 66F7C20080
    %if ($ - %%insn_0040aede) > 5
        %error "LONG_0040AEDE"
    %endif
    times 5 - ($ - %%insn_0040aede) db 0
    %%insn_0040aee3:
    jnz short 0x40aee7 ; 0040AEE3 7502
    %if ($ - %%insn_0040aee3) > 2
        %error "LONG_0040AEE3"
    %endif
    times 2 - ($ - %%insn_0040aee3) db 0
    db 0x8A, 0xC7 ; 0040AEE5 8AC7 | mov al,bh | encoding preserved
    %%insn_0040aee7:
    cmp al,0xff ; 0040AEE7 3CFF
    %if ($ - %%insn_0040aee7) > 2
        %error "LONG_0040AEE7"
    %endif
    times 2 - ($ - %%insn_0040aee7) db 0
    %%insn_0040aee9:
    jz short 0x40aeef ; 0040AEE9 7404
    %if ($ - %%insn_0040aee9) > 2
        %error "LONG_0040AEE9"
    %endif
    times 2 - ($ - %%insn_0040aee9) db 0
    db 0x0A, 0xC4 ; 0040AEEB 0AC4 | or al,ah | encoding preserved
    %%insn_0040aeed:
    mov [edi],al ; 0040AEED 8807
    %if ($ - %%insn_0040aeed) > 2
        %error "LONG_0040AEED"
    %endif
    times 2 - ($ - %%insn_0040aeed) db 0
    %%insn_0040aeef:
    shl dx,1 ; 0040AEEF 66D1E2
    %if ($ - %%insn_0040aeef) > 3
        %error "LONG_0040AEEF"
    %endif
    times 3 - ($ - %%insn_0040aeef) db 0
    db 0x8A, 0xC3 ; 0040AEF2 8AC3 | mov al,bl | encoding preserved
    %%insn_0040aef4:
    test dx,0x8000 ; 0040AEF4 66F7C20080
    %if ($ - %%insn_0040aef4) > 5
        %error "LONG_0040AEF4"
    %endif
    times 5 - ($ - %%insn_0040aef4) db 0
    %%insn_0040aef9:
    jnz short 0x40aefd ; 0040AEF9 7502
    %if ($ - %%insn_0040aef9) > 2
        %error "LONG_0040AEF9"
    %endif
    times 2 - ($ - %%insn_0040aef9) db 0
    db 0x8A, 0xC7 ; 0040AEFB 8AC7 | mov al,bh | encoding preserved
    %%insn_0040aefd:
    cmp al,0xff ; 0040AEFD 3CFF
    %if ($ - %%insn_0040aefd) > 2
        %error "LONG_0040AEFD"
    %endif
    times 2 - ($ - %%insn_0040aefd) db 0
    %%insn_0040aeff:
    jz short 0x40af06 ; 0040AEFF 7405
    %if ($ - %%insn_0040aeff) > 2
        %error "LONG_0040AEFF"
    %endif
    times 2 - ($ - %%insn_0040aeff) db 0
    db 0x0A, 0xC4 ; 0040AF01 0AC4 | or al,ah | encoding preserved
    %%insn_0040af03:
    mov [edi+0x1],al ; 0040AF03 884701
    %if ($ - %%insn_0040af03) > 3
        %error "LONG_0040AF03"
    %endif
    times 3 - ($ - %%insn_0040af03) db 0
    %%insn_0040af06:
    shl dx,1 ; 0040AF06 66D1E2
    %if ($ - %%insn_0040af06) > 3
        %error "LONG_0040AF06"
    %endif
    times 3 - ($ - %%insn_0040af06) db 0
    db 0x8A, 0xC3 ; 0040AF09 8AC3 | mov al,bl | encoding preserved
    %%insn_0040af0b:
    test dx,0x8000 ; 0040AF0B 66F7C20080
    %if ($ - %%insn_0040af0b) > 5
        %error "LONG_0040AF0B"
    %endif
    times 5 - ($ - %%insn_0040af0b) db 0
    %%insn_0040af10:
    jnz short 0x40af14 ; 0040AF10 7502
    %if ($ - %%insn_0040af10) > 2
        %error "LONG_0040AF10"
    %endif
    times 2 - ($ - %%insn_0040af10) db 0
    db 0x8A, 0xC7 ; 0040AF12 8AC7 | mov al,bh | encoding preserved
    %%insn_0040af14:
    cmp al,0xff ; 0040AF14 3CFF
    %if ($ - %%insn_0040af14) > 2
        %error "LONG_0040AF14"
    %endif
    times 2 - ($ - %%insn_0040af14) db 0
    %%insn_0040af16:
    jz short 0x40af1d ; 0040AF16 7405
    %if ($ - %%insn_0040af16) > 2
        %error "LONG_0040AF16"
    %endif
    times 2 - ($ - %%insn_0040af16) db 0
    db 0x0A, 0xC4 ; 0040AF18 0AC4 | or al,ah | encoding preserved
    %%insn_0040af1a:
    mov [edi+0x2],al ; 0040AF1A 884702
    %if ($ - %%insn_0040af1a) > 3
        %error "LONG_0040AF1A"
    %endif
    times 3 - ($ - %%insn_0040af1a) db 0
    %%insn_0040af1d:
    shl dx,1 ; 0040AF1D 66D1E2
    %if ($ - %%insn_0040af1d) > 3
        %error "LONG_0040AF1D"
    %endif
    times 3 - ($ - %%insn_0040af1d) db 0
    db 0x8A, 0xC3 ; 0040AF20 8AC3 | mov al,bl | encoding preserved
    %%insn_0040af22:
    test dx,0x8000 ; 0040AF22 66F7C20080
    %if ($ - %%insn_0040af22) > 5
        %error "LONG_0040AF22"
    %endif
    times 5 - ($ - %%insn_0040af22) db 0
    %%insn_0040af27:
    jnz short 0x40af2b ; 0040AF27 7502
    %if ($ - %%insn_0040af27) > 2
        %error "LONG_0040AF27"
    %endif
    times 2 - ($ - %%insn_0040af27) db 0
    db 0x8A, 0xC7 ; 0040AF29 8AC7 | mov al,bh | encoding preserved
    %%insn_0040af2b:
    cmp al,0xff ; 0040AF2B 3CFF
    %if ($ - %%insn_0040af2b) > 2
        %error "LONG_0040AF2B"
    %endif
    times 2 - ($ - %%insn_0040af2b) db 0
    %%insn_0040af2d:
    jz short 0x40af34 ; 0040AF2D 7405
    %if ($ - %%insn_0040af2d) > 2
        %error "LONG_0040AF2D"
    %endif
    times 2 - ($ - %%insn_0040af2d) db 0
    db 0x0A, 0xC4 ; 0040AF2F 0AC4 | or al,ah | encoding preserved
    %%insn_0040af31:
    mov [edi+0x3],al ; 0040AF31 884703
    %if ($ - %%insn_0040af31) > 3
        %error "LONG_0040AF31"
    %endif
    times 3 - ($ - %%insn_0040af31) db 0
    %%insn_0040af34:
    shl dx,1 ; 0040AF34 66D1E2
    %if ($ - %%insn_0040af34) > 3
        %error "LONG_0040AF34"
    %endif
    times 3 - ($ - %%insn_0040af34) db 0
    %%insn_0040af37:
    add edi,0x280 ; 0040AF37 81C780020000
    %if ($ - %%insn_0040af37) > 6
        %error "LONG_0040AF37"
    %endif
    times 6 - ($ - %%insn_0040af37) db 0
    %%insn_0040af3d:
    dec ecx ; 0040AF3D 49
    %if ($ - %%insn_0040af3d) > 1
        %error "LONG_0040AF3D"
    %endif
    times 1 - ($ - %%insn_0040af3d) db 0
    %%insn_0040af3e:
    jnz short 0x40aedc ; 0040AF3E 759C
    %if ($ - %%insn_0040af3e) > 2
        %error "LONG_0040AF3E"
    %endif
    times 2 - ($ - %%insn_0040af3e) db 0
    %%insn_0040af40:
    add dword [ebp-0x24],0x4 ; 0040AF40 8345DC04
    %if ($ - %%insn_0040af40) > 4
        %error "LONG_0040AF40"
    %endif
    times 4 - ($ - %%insn_0040af40) db 0
    %%insn_0040af44:
    jmp 0x40ae92 ; 0040AF44 E949FFFFFF
    %if ($ - %%insn_0040af44) > 5
        %error "LONG_0040AF44"
    %endif
    times 5 - ($ - %%insn_0040af44) db 0
    %%insn_0040af49:
    jmp 0x40ae52 ; 0040AF49 E904FFFFFF
    %if ($ - %%insn_0040af49) > 5
        %error "LONG_0040AF49"
    %endif
    times 5 - ($ - %%insn_0040af49) db 0
    %%insn_0040af4e:
    jmp 0x40b0fb ; 0040AF4E E9A8010000
    %if ($ - %%insn_0040af4e) > 5
        %error "LONG_0040AF4E"
    %endif
    times 5 - ($ - %%insn_0040af4e) db 0
    %%insn_0040af53:
    mov word [ebp-0x14],0x0 ; 0040AF53 66C745EC0000
    %if ($ - %%insn_0040af53) > 6
        %error "LONG_0040AF53"
    %endif
    times 6 - ($ - %%insn_0040af53) db 0
    %%insn_0040af59:
    jmp short 0x40af67 ; 0040AF59 EB0C
    %if ($ - %%insn_0040af59) > 2
        %error "LONG_0040AF59"
    %endif
    times 2 - ($ - %%insn_0040af59) db 0
    %%insn_0040af5b:
    mov dx,[ebp-0x14] ; 0040AF5B 668B55EC
    %if ($ - %%insn_0040af5b) > 4
        %error "LONG_0040AF5B"
    %endif
    times 4 - ($ - %%insn_0040af5b) db 0
    %%insn_0040af5f:
    add dx,0x1 ; 0040AF5F 6683C201
    %if ($ - %%insn_0040af5f) > 4
        %error "LONG_0040AF5F"
    %endif
    times 4 - ($ - %%insn_0040af5f) db 0
    %%insn_0040af63:
    mov [ebp-0x14],dx ; 0040AF63 668955EC
    %if ($ - %%insn_0040af63) > 4
        %error "LONG_0040AF63"
    %endif
    times 4 - ($ - %%insn_0040af63) db 0
    %%insn_0040af67:
    mov eax,[ebp-0x14] ; 0040AF67 8B45EC
    %if ($ - %%insn_0040af67) > 3
        %error "LONG_0040AF67"
    %endif
    times 3 - ($ - %%insn_0040af67) db 0
    %%insn_0040af6a:
    and eax,0xffff ; 0040AF6A 25FFFF0000
    %if ($ - %%insn_0040af6a) > 5
        %error "LONG_0040AF6A"
    %endif
    times 5 - ($ - %%insn_0040af6a) db 0
    db 0x33, 0xC9 ; 0040AF6F 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040af71:
    mov cx,[0x420a38] ; 0040AF71 668B0D380A4200
    %if ($ - %%insn_0040af71) > 7
        %error "LONG_0040AF71"
    %endif
    times 7 - ($ - %%insn_0040af71) db 0
    db 0x3B, 0xC1 ; 0040AF78 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_0040af7a:
    jnl 0x40b0fb ; 0040AF7A 0F8D7B010000
    %if ($ - %%insn_0040af7a) > 6
        %error "LONG_0040AF7A"
    %endif
    times 6 - ($ - %%insn_0040af7a) db 0
    %%insn_0040af80:
    mov edx,[ebp-0x14] ; 0040AF80 8B55EC
    %if ($ - %%insn_0040af80) > 3
        %error "LONG_0040AF80"
    %endif
    times 3 - ($ - %%insn_0040af80) db 0
    %%insn_0040af83:
    and edx,0xffff ; 0040AF83 81E2FFFF0000
    %if ($ - %%insn_0040af83) > 6
        %error "LONG_0040AF83"
    %endif
    times 6 - ($ - %%insn_0040af83) db 0
    %%insn_0040af89:
    shl edx,byte 0x2 ; 0040AF89 C1E202
    %if ($ - %%insn_0040af89) > 3
        %error "LONG_0040AF89"
    %endif
    times 3 - ($ - %%insn_0040af89) db 0
    %%insn_0040af8c:
    imul edx,[ebp+0x10] ; 0040AF8C 0FAF5510
    %if ($ - %%insn_0040af8c) > 4
        %error "LONG_0040AF8C"
    %endif
    times 4 - ($ - %%insn_0040af8c) db 0
    %%insn_0040af90:
    mov [ebp-0x24],edx ; 0040AF90 8955DC
    %if ($ - %%insn_0040af90) > 3
        %error "LONG_0040AF90"
    %endif
    times 3 - ($ - %%insn_0040af90) db 0
    %%insn_0040af93:
    mov word [ebp-0x38],0x0 ; 0040AF93 66C745C80000
    %if ($ - %%insn_0040af93) > 6
        %error "LONG_0040AF93"
    %endif
    times 6 - ($ - %%insn_0040af93) db 0
    %%insn_0040af99:
    jmp short 0x40afa7 ; 0040AF99 EB0C
    %if ($ - %%insn_0040af99) > 2
        %error "LONG_0040AF99"
    %endif
    times 2 - ($ - %%insn_0040af99) db 0
    %%insn_0040af9b:
    mov ax,[ebp-0x38] ; 0040AF9B 668B45C8
    %if ($ - %%insn_0040af9b) > 4
        %error "LONG_0040AF9B"
    %endif
    times 4 - ($ - %%insn_0040af9b) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 0040AF9F 66050100 | add ax,0x1 | encoding preserved
    %%insn_0040afa3:
    mov [ebp-0x38],ax ; 0040AFA3 668945C8
    %if ($ - %%insn_0040afa3) > 4
        %error "LONG_0040AFA3"
    %endif
    times 4 - ($ - %%insn_0040afa3) db 0
    %%insn_0040afa7:
    mov ecx,[ebp-0x38] ; 0040AFA7 8B4DC8
    %if ($ - %%insn_0040afa7) > 3
        %error "LONG_0040AFA7"
    %endif
    times 3 - ($ - %%insn_0040afa7) db 0
    %%insn_0040afaa:
    and ecx,0xffff ; 0040AFAA 81E1FFFF0000
    %if ($ - %%insn_0040afaa) > 6
        %error "LONG_0040AFAA"
    %endif
    times 6 - ($ - %%insn_0040afaa) db 0
    db 0x33, 0xD2 ; 0040AFB0 33D2 | xor edx,edx | encoding preserved
    %%insn_0040afb2:
    mov dx,[0x420a30] ; 0040AFB2 668B15300A4200
    %if ($ - %%insn_0040afb2) > 7
        %error "LONG_0040AFB2"
    %endif
    times 7 - ($ - %%insn_0040afb2) db 0
    db 0x3B, 0xCA ; 0040AFB9 3BCA | cmp ecx,edx | encoding preserved
    %%insn_0040afbb:
    jnl 0x40b0f6 ; 0040AFBB 0F8D35010000
    %if ($ - %%insn_0040afbb) > 6
        %error "LONG_0040AFBB"
    %endif
    times 6 - ($ - %%insn_0040afbb) db 0
    %%insn_0040afc1:
    mov eax,[ebp+0x8] ; 0040AFC1 8B4508
    %if ($ - %%insn_0040afc1) > 3
        %error "LONG_0040AFC1"
    %endif
    times 3 - ($ - %%insn_0040afc1) db 0
    %%insn_0040afc4:
    mov cl,[eax] ; 0040AFC4 8A08
    %if ($ - %%insn_0040afc4) > 2
        %error "LONG_0040AFC4"
    %endif
    times 2 - ($ - %%insn_0040afc4) db 0
    %%insn_0040afc6:
    mov [ebp-0x30],cl ; 0040AFC6 884DD0
    %if ($ - %%insn_0040afc6) > 3
        %error "LONG_0040AFC6"
    %endif
    times 3 - ($ - %%insn_0040afc6) db 0
    %%insn_0040afc9:
    mov edx,[ebp+0x8] ; 0040AFC9 8B5508
    %if ($ - %%insn_0040afc9) > 3
        %error "LONG_0040AFC9"
    %endif
    times 3 - ($ - %%insn_0040afc9) db 0
    %%insn_0040afcc:
    add edx,0x1 ; 0040AFCC 83C201
    %if ($ - %%insn_0040afcc) > 3
        %error "LONG_0040AFCC"
    %endif
    times 3 - ($ - %%insn_0040afcc) db 0
    %%insn_0040afcf:
    mov [ebp+0x8],edx ; 0040AFCF 895508
    %if ($ - %%insn_0040afcf) > 3
        %error "LONG_0040AFCF"
    %endif
    times 3 - ($ - %%insn_0040afcf) db 0
    %%insn_0040afd2:
    mov eax,[ebp+0x8] ; 0040AFD2 8B4508
    %if ($ - %%insn_0040afd2) > 3
        %error "LONG_0040AFD2"
    %endif
    times 3 - ($ - %%insn_0040afd2) db 0
    %%insn_0040afd5:
    mov cl,[eax] ; 0040AFD5 8A08
    %if ($ - %%insn_0040afd5) > 2
        %error "LONG_0040AFD5"
    %endif
    times 2 - ($ - %%insn_0040afd5) db 0
    %%insn_0040afd7:
    mov [ebp-0x2c],cl ; 0040AFD7 884DD4
    %if ($ - %%insn_0040afd7) > 3
        %error "LONG_0040AFD7"
    %endif
    times 3 - ($ - %%insn_0040afd7) db 0
    %%insn_0040afda:
    mov edx,[ebp+0x8] ; 0040AFDA 8B5508
    %if ($ - %%insn_0040afda) > 3
        %error "LONG_0040AFDA"
    %endif
    times 3 - ($ - %%insn_0040afda) db 0
    %%insn_0040afdd:
    add edx,0x1 ; 0040AFDD 83C201
    %if ($ - %%insn_0040afdd) > 3
        %error "LONG_0040AFDD"
    %endif
    times 3 - ($ - %%insn_0040afdd) db 0
    %%insn_0040afe0:
    mov [ebp+0x8],edx ; 0040AFE0 895508
    %if ($ - %%insn_0040afe0) > 3
        %error "LONG_0040AFE0"
    %endif
    times 3 - ($ - %%insn_0040afe0) db 0
    %%insn_0040afe3:
    mov eax,[ebp+0x8] ; 0040AFE3 8B4508
    %if ($ - %%insn_0040afe3) > 3
        %error "LONG_0040AFE3"
    %endif
    times 3 - ($ - %%insn_0040afe3) db 0
    %%insn_0040afe6:
    movzx cx,byte [eax] ; 0040AFE6 660FB608
    %if ($ - %%insn_0040afe6) > 4
        %error "LONG_0040AFE6"
    %endif
    times 4 - ($ - %%insn_0040afe6) db 0
    %%insn_0040afea:
    mov [ebp-0x18],cx ; 0040AFEA 66894DE8
    %if ($ - %%insn_0040afea) > 4
        %error "LONG_0040AFEA"
    %endif
    times 4 - ($ - %%insn_0040afea) db 0
    %%insn_0040afee:
    mov edx,[ebp+0x8] ; 0040AFEE 8B5508
    %if ($ - %%insn_0040afee) > 3
        %error "LONG_0040AFEE"
    %endif
    times 3 - ($ - %%insn_0040afee) db 0
    %%insn_0040aff1:
    add edx,0x1 ; 0040AFF1 83C201
    %if ($ - %%insn_0040aff1) > 3
        %error "LONG_0040AFF1"
    %endif
    times 3 - ($ - %%insn_0040aff1) db 0
    %%insn_0040aff4:
    mov [ebp+0x8],edx ; 0040AFF4 895508
    %if ($ - %%insn_0040aff4) > 3
        %error "LONG_0040AFF4"
    %endif
    times 3 - ($ - %%insn_0040aff4) db 0
    %%insn_0040aff7:
    mov eax,[ebp+0x8] ; 0040AFF7 8B4508
    %if ($ - %%insn_0040aff7) > 3
        %error "LONG_0040AFF7"
    %endif
    times 3 - ($ - %%insn_0040aff7) db 0
    db 0x33, 0xC9 ; 0040AFFA 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040affc:
    mov cl,[eax] ; 0040AFFC 8A08
    %if ($ - %%insn_0040affc) > 2
        %error "LONG_0040AFFC"
    %endif
    times 2 - ($ - %%insn_0040affc) db 0
    %%insn_0040affe:
    shl ecx,byte 0x8 ; 0040AFFE C1E108
    %if ($ - %%insn_0040affe) > 3
        %error "LONG_0040AFFE"
    %endif
    times 3 - ($ - %%insn_0040affe) db 0
    %%insn_0040b001:
    mov dx,[ebp-0x18] ; 0040B001 668B55E8
    %if ($ - %%insn_0040b001) > 4
        %error "LONG_0040B001"
    %endif
    times 4 - ($ - %%insn_0040b001) db 0
    db 0x66, 0x03, 0xD1 ; 0040B005 6603D1 | add dx,cx | encoding preserved
    %%insn_0040b008:
    mov [ebp-0x18],dx ; 0040B008 668955E8
    %if ($ - %%insn_0040b008) > 4
        %error "LONG_0040B008"
    %endif
    times 4 - ($ - %%insn_0040b008) db 0
    %%insn_0040b00c:
    mov eax,[ebp+0x8] ; 0040B00C 8B4508
    %if ($ - %%insn_0040b00c) > 3
        %error "LONG_0040B00C"
    %endif
    times 3 - ($ - %%insn_0040b00c) db 0
    %%insn_0040b00f:
    add eax,0x1 ; 0040B00F 83C001
    %if ($ - %%insn_0040b00f) > 3
        %error "LONG_0040B00F"
    %endif
    times 3 - ($ - %%insn_0040b00f) db 0
    %%insn_0040b012:
    mov [ebp+0x8],eax ; 0040B012 894508
    %if ($ - %%insn_0040b012) > 3
        %error "LONG_0040B012"
    %endif
    times 3 - ($ - %%insn_0040b012) db 0
    %%insn_0040b015:
    mov ecx,[ebp-0x30] ; 0040B015 8B4DD0
    %if ($ - %%insn_0040b015) > 3
        %error "LONG_0040B015"
    %endif
    times 3 - ($ - %%insn_0040b015) db 0
    %%insn_0040b018:
    and ecx,0xff ; 0040B018 81E1FF000000
    %if ($ - %%insn_0040b018) > 6
        %error "LONG_0040B018"
    %endif
    times 6 - ($ - %%insn_0040b018) db 0
    %%insn_0040b01e:
    mov edx,[0x420e44] ; 0040B01E 8B15440E4200
    %if ($ - %%insn_0040b01e) > 6
        %error "LONG_0040B01E"
    %endif
    times 6 - ($ - %%insn_0040b01e) db 0
    %%insn_0040b024:
    mov eax,[edx+ecx*4] ; 0040B024 8B048A
    %if ($ - %%insn_0040b024) > 3
        %error "LONG_0040B024"
    %endif
    times 3 - ($ - %%insn_0040b024) db 0
    %%insn_0040b027:
    mov [ebp-0xc],eax ; 0040B027 8945F4
    %if ($ - %%insn_0040b027) > 3
        %error "LONG_0040B027"
    %endif
    times 3 - ($ - %%insn_0040b027) db 0
    %%insn_0040b02a:
    mov ecx,[ebp-0x2c] ; 0040B02A 8B4DD4
    %if ($ - %%insn_0040b02a) > 3
        %error "LONG_0040B02A"
    %endif
    times 3 - ($ - %%insn_0040b02a) db 0
    %%insn_0040b02d:
    and ecx,0xff ; 0040B02D 81E1FF000000
    %if ($ - %%insn_0040b02d) > 6
        %error "LONG_0040B02D"
    %endif
    times 6 - ($ - %%insn_0040b02d) db 0
    %%insn_0040b033:
    mov edx,[0x420e44] ; 0040B033 8B15440E4200
    %if ($ - %%insn_0040b033) > 6
        %error "LONG_0040B033"
    %endif
    times 6 - ($ - %%insn_0040b033) db 0
    %%insn_0040b039:
    mov eax,[edx+ecx*4] ; 0040B039 8B048A
    %if ($ - %%insn_0040b039) > 3
        %error "LONG_0040B039"
    %endif
    times 3 - ($ - %%insn_0040b039) db 0
    %%insn_0040b03c:
    mov [ebp-0x4],eax ; 0040B03C 8945FC
    %if ($ - %%insn_0040b03c) > 3
        %error "LONG_0040B03C"
    %endif
    times 3 - ($ - %%insn_0040b03c) db 0
    %%insn_0040b03f:
    mov ecx,[ebp-0x18] ; 0040B03F 8B4DE8
    %if ($ - %%insn_0040b03f) > 3
        %error "LONG_0040B03F"
    %endif
    times 3 - ($ - %%insn_0040b03f) db 0
    %%insn_0040b042:
    and ecx,0xffff ; 0040B042 81E1FFFF0000
    %if ($ - %%insn_0040b042) > 6
        %error "LONG_0040B042"
    %endif
    times 6 - ($ - %%insn_0040b042) db 0
    %%insn_0040b048:
    and ecx,0x8000 ; 0040B048 81E100800000
    %if ($ - %%insn_0040b048) > 6
        %error "LONG_0040B048"
    %endif
    times 6 - ($ - %%insn_0040b048) db 0
    %%insn_0040b04e:
    test ecx,ecx ; 0040B04E 85C9
    %if ($ - %%insn_0040b04e) > 2
        %error "LONG_0040B04E"
    %endif
    times 2 - ($ - %%insn_0040b04e) db 0
    %%insn_0040b050:
    jz short 0x40b073 ; 0040B050 7421
    %if ($ - %%insn_0040b050) > 2
        %error "LONG_0040B050"
    %endif
    times 2 - ($ - %%insn_0040b050) db 0
    %%insn_0040b052:
    mov edx,[ebp-0x18] ; 0040B052 8B55E8
    %if ($ - %%insn_0040b052) > 3
        %error "LONG_0040B052"
    %endif
    times 3 - ($ - %%insn_0040b052) db 0
    %%insn_0040b055:
    and edx,0xffff ; 0040B055 81E2FFFF0000
    %if ($ - %%insn_0040b055) > 6
        %error "LONG_0040B055"
    %endif
    times 6 - ($ - %%insn_0040b055) db 0
    %%insn_0040b05b:
    not edx ; 0040B05B F7D2
    %if ($ - %%insn_0040b05b) > 2
        %error "LONG_0040B05B"
    %endif
    times 2 - ($ - %%insn_0040b05b) db 0
    %%insn_0040b05d:
    mov [ebp-0x18],dx ; 0040B05D 668955E8
    %if ($ - %%insn_0040b05d) > 4
        %error "LONG_0040B05D"
    %endif
    times 4 - ($ - %%insn_0040b05d) db 0
    %%insn_0040b061:
    mov eax,[ebp-0xc] ; 0040B061 8B45F4
    %if ($ - %%insn_0040b061) > 3
        %error "LONG_0040B061"
    %endif
    times 3 - ($ - %%insn_0040b061) db 0
    %%insn_0040b064:
    mov [ebp-0x20],eax ; 0040B064 8945E0
    %if ($ - %%insn_0040b064) > 3
        %error "LONG_0040B064"
    %endif
    times 3 - ($ - %%insn_0040b064) db 0
    %%insn_0040b067:
    mov ecx,[ebp-0x4] ; 0040B067 8B4DFC
    %if ($ - %%insn_0040b067) > 3
        %error "LONG_0040B067"
    %endif
    times 3 - ($ - %%insn_0040b067) db 0
    %%insn_0040b06a:
    mov [ebp-0xc],ecx ; 0040B06A 894DF4
    %if ($ - %%insn_0040b06a) > 3
        %error "LONG_0040B06A"
    %endif
    times 3 - ($ - %%insn_0040b06a) db 0
    %%insn_0040b06d:
    mov edx,[ebp-0x20] ; 0040B06D 8B55E0
    %if ($ - %%insn_0040b06d) > 3
        %error "LONG_0040B06D"
    %endif
    times 3 - ($ - %%insn_0040b06d) db 0
    %%insn_0040b070:
    mov [ebp-0x4],edx ; 0040B070 8955FC
    %if ($ - %%insn_0040b070) > 3
        %error "LONG_0040B070"
    %endif
    times 3 - ($ - %%insn_0040b070) db 0
    %%insn_0040b073:
    mov eax,[ebp-0x18] ; 0040B073 8B45E8
    %if ($ - %%insn_0040b073) > 3
        %error "LONG_0040B073"
    %endif
    times 3 - ($ - %%insn_0040b073) db 0
    %%insn_0040b076:
    and eax,0xffff ; 0040B076 25FFFF0000
    %if ($ - %%insn_0040b076) > 5
        %error "LONG_0040B076"
    %endif
    times 5 - ($ - %%insn_0040b076) db 0
    %%insn_0040b07b:
    shl eax,byte 0x2 ; 0040B07B C1E002
    %if ($ - %%insn_0040b07b) > 3
        %error "LONG_0040B07B"
    %endif
    times 3 - ($ - %%insn_0040b07b) db 0
    %%insn_0040b07e:
    mov ecx,[0x420e44] ; 0040B07E 8B0D440E4200
    %if ($ - %%insn_0040b07e) > 6
        %error "LONG_0040B07E"
    %endif
    times 6 - ($ - %%insn_0040b07e) db 0
    %%insn_0040b084:
    lea edx,[ecx+eax*4+0x400] ; 0040B084 8D948100040000
    %if ($ - %%insn_0040b084) > 7
        %error "LONG_0040B084"
    %endif
    times 7 - ($ - %%insn_0040b084) db 0
    %%insn_0040b08b:
    mov [ebp-0x28],edx ; 0040B08B 8955D8
    %if ($ - %%insn_0040b08b) > 3
        %error "LONG_0040B08B"
    %endif
    times 3 - ($ - %%insn_0040b08b) db 0
    %%insn_0040b08e:
    mov eax,[ebp-0x24] ; 0040B08E 8B45DC
    %if ($ - %%insn_0040b08e) > 3
        %error "LONG_0040B08E"
    %endif
    times 3 - ($ - %%insn_0040b08e) db 0
    %%insn_0040b091:
    mov [ebp-0x34],eax ; 0040B091 8945CC
    %if ($ - %%insn_0040b091) > 3
        %error "LONG_0040B091"
    %endif
    times 3 - ($ - %%insn_0040b091) db 0
    %%insn_0040b094:
    mov dword [ebp-0x10],0x0 ; 0040B094 C745F000000000
    %if ($ - %%insn_0040b094) > 7
        %error "LONG_0040B094"
    %endif
    times 7 - ($ - %%insn_0040b094) db 0
    %%insn_0040b09b:
    jmp short 0x40b0a6 ; 0040B09B EB09
    %if ($ - %%insn_0040b09b) > 2
        %error "LONG_0040B09B"
    %endif
    times 2 - ($ - %%insn_0040b09b) db 0
    %%insn_0040b09d:
    mov ecx,[ebp-0x10] ; 0040B09D 8B4DF0
    %if ($ - %%insn_0040b09d) > 3
        %error "LONG_0040B09D"
    %endif
    times 3 - ($ - %%insn_0040b09d) db 0
    %%insn_0040b0a0:
    add ecx,0x1 ; 0040B0A0 83C101
    %if ($ - %%insn_0040b0a0) > 3
        %error "LONG_0040B0A0"
    %endif
    times 3 - ($ - %%insn_0040b0a0) db 0
    %%insn_0040b0a3:
    mov [ebp-0x10],ecx ; 0040B0A3 894DF0
    %if ($ - %%insn_0040b0a3) > 3
        %error "LONG_0040B0A3"
    %endif
    times 3 - ($ - %%insn_0040b0a3) db 0
    %%insn_0040b0a6:
    cmp dword [ebp-0x10],0x4 ; 0040B0A6 837DF004
    %if ($ - %%insn_0040b0a6) > 4
        %error "LONG_0040B0A6"
    %endif
    times 4 - ($ - %%insn_0040b0a6) db 0
    %%insn_0040b0aa:
    jnl short 0x40b0e8 ; 0040B0AA 7D3C
    %if ($ - %%insn_0040b0aa) > 2
        %error "LONG_0040B0AA"
    %endif
    times 2 - ($ - %%insn_0040b0aa) db 0
    %%insn_0040b0ac:
    mov edx,[ebp-0x28] ; 0040B0AC 8B55D8
    %if ($ - %%insn_0040b0ac) > 3
        %error "LONG_0040B0AC"
    %endif
    times 3 - ($ - %%insn_0040b0ac) db 0
    %%insn_0040b0af:
    mov eax,[edx] ; 0040B0AF 8B02
    %if ($ - %%insn_0040b0af) > 2
        %error "LONG_0040B0AF"
    %endif
    times 2 - ($ - %%insn_0040b0af) db 0
    %%insn_0040b0b1:
    mov [ebp-0x8],eax ; 0040B0B1 8945F8
    %if ($ - %%insn_0040b0b1) > 3
        %error "LONG_0040B0B1"
    %endif
    times 3 - ($ - %%insn_0040b0b1) db 0
    %%insn_0040b0b4:
    mov ecx,[ebp-0x28] ; 0040B0B4 8B4DD8
    %if ($ - %%insn_0040b0b4) > 3
        %error "LONG_0040B0B4"
    %endif
    times 3 - ($ - %%insn_0040b0b4) db 0
    %%insn_0040b0b7:
    add ecx,0x4 ; 0040B0B7 83C104
    %if ($ - %%insn_0040b0b7) > 3
        %error "LONG_0040B0B7"
    %endif
    times 3 - ($ - %%insn_0040b0b7) db 0
    %%insn_0040b0ba:
    mov [ebp-0x28],ecx ; 0040B0BA 894DD8
    %if ($ - %%insn_0040b0ba) > 3
        %error "LONG_0040B0BA"
    %endif
    times 3 - ($ - %%insn_0040b0ba) db 0
    %%insn_0040b0bd:
    mov edx,[ebp-0x4] ; 0040B0BD 8B55FC
    %if ($ - %%insn_0040b0bd) > 3
        %error "LONG_0040B0BD"
    %endif
    times 3 - ($ - %%insn_0040b0bd) db 0
    %%insn_0040b0c0:
    and edx,[ebp-0x8] ; 0040B0C0 2355F8
    %if ($ - %%insn_0040b0c0) > 3
        %error "LONG_0040B0C0"
    %endif
    times 3 - ($ - %%insn_0040b0c0) db 0
    %%insn_0040b0c3:
    mov eax,[ebp-0x8] ; 0040B0C3 8B45F8
    %if ($ - %%insn_0040b0c3) > 3
        %error "LONG_0040B0C3"
    %endif
    times 3 - ($ - %%insn_0040b0c3) db 0
    %%insn_0040b0c6:
    not eax ; 0040B0C6 F7D0
    %if ($ - %%insn_0040b0c6) > 2
        %error "LONG_0040B0C6"
    %endif
    times 2 - ($ - %%insn_0040b0c6) db 0
    %%insn_0040b0c8:
    mov ecx,[ebp-0xc] ; 0040B0C8 8B4DF4
    %if ($ - %%insn_0040b0c8) > 3
        %error "LONG_0040B0C8"
    %endif
    times 3 - ($ - %%insn_0040b0c8) db 0
    db 0x23, 0xC8 ; 0040B0CB 23C8 | and ecx,eax | encoding preserved
    db 0x0B, 0xD1 ; 0040B0CD 0BD1 | or edx,ecx | encoding preserved
    %%insn_0040b0cf:
    mov [ebp-0x1c],edx ; 0040B0CF 8955E4
    %if ($ - %%insn_0040b0cf) > 3
        %error "LONG_0040B0CF"
    %endif
    times 3 - ($ - %%insn_0040b0cf) db 0
    %%insn_0040b0d2:
    mov edx,[ebp+0xc] ; 0040B0D2 8B550C
    %if ($ - %%insn_0040b0d2) > 3
        %error "LONG_0040B0D2"
    %endif
    times 3 - ($ - %%insn_0040b0d2) db 0
    %%insn_0040b0d5:
    add edx,[ebp-0x24] ; 0040B0D5 0355DC
    %if ($ - %%insn_0040b0d5) > 3
        %error "LONG_0040B0D5"
    %endif
    times 3 - ($ - %%insn_0040b0d5) db 0
    %%insn_0040b0d8:
    mov eax,[ebp-0x1c] ; 0040B0D8 8B45E4
    %if ($ - %%insn_0040b0d8) > 3
        %error "LONG_0040B0D8"
    %endif
    times 3 - ($ - %%insn_0040b0d8) db 0
    %%insn_0040b0db:
    mov [edx],eax ; 0040B0DB 8902
    %if ($ - %%insn_0040b0db) > 2
        %error "LONG_0040B0DB"
    %endif
    times 2 - ($ - %%insn_0040b0db) db 0
    %%insn_0040b0dd:
    mov ecx,[ebp-0x24] ; 0040B0DD 8B4DDC
    %if ($ - %%insn_0040b0dd) > 3
        %error "LONG_0040B0DD"
    %endif
    times 3 - ($ - %%insn_0040b0dd) db 0
    %%insn_0040b0e0:
    add ecx,[ebp+0x10] ; 0040B0E0 034D10
    %if ($ - %%insn_0040b0e0) > 3
        %error "LONG_0040B0E0"
    %endif
    times 3 - ($ - %%insn_0040b0e0) db 0
    %%insn_0040b0e3:
    mov [ebp-0x24],ecx ; 0040B0E3 894DDC
    %if ($ - %%insn_0040b0e3) > 3
        %error "LONG_0040B0E3"
    %endif
    times 3 - ($ - %%insn_0040b0e3) db 0
    %%insn_0040b0e6:
    jmp short 0x40b09d ; 0040B0E6 EBB5
    %if ($ - %%insn_0040b0e6) > 2
        %error "LONG_0040B0E6"
    %endif
    times 2 - ($ - %%insn_0040b0e6) db 0
    %%insn_0040b0e8:
    mov edx,[ebp-0x34] ; 0040B0E8 8B55CC
    %if ($ - %%insn_0040b0e8) > 3
        %error "LONG_0040B0E8"
    %endif
    times 3 - ($ - %%insn_0040b0e8) db 0
    %%insn_0040b0eb:
    add edx,0x4 ; 0040B0EB 83C204
    %if ($ - %%insn_0040b0eb) > 3
        %error "LONG_0040B0EB"
    %endif
    times 3 - ($ - %%insn_0040b0eb) db 0
    %%insn_0040b0ee:
    mov [ebp-0x24],edx ; 0040B0EE 8955DC
    %if ($ - %%insn_0040b0ee) > 3
        %error "LONG_0040B0EE"
    %endif
    times 3 - ($ - %%insn_0040b0ee) db 0
    %%insn_0040b0f1:
    jmp 0x40af9b ; 0040B0F1 E9A5FEFFFF
    %if ($ - %%insn_0040b0f1) > 5
        %error "LONG_0040B0F1"
    %endif
    times 5 - ($ - %%insn_0040b0f1) db 0
    %%insn_0040b0f6:
    jmp 0x40af5b ; 0040B0F6 E960FEFFFF
    %if ($ - %%insn_0040b0f6) > 5
        %error "LONG_0040B0F6"
    %endif
    times 5 - ($ - %%insn_0040b0f6) db 0
    db 0x33, 0xC0 ; 0040B0FB 33C0 | xor eax,eax | encoding preserved
    %%insn_0040b0fd:
    mov ax,[0x4212d8] ; 0040B0FD 66A1D8124200
    %if ($ - %%insn_0040b0fd) > 6
        %error "LONG_0040B0FD"
    %endif
    times 6 - ($ - %%insn_0040b0fd) db 0
    %%insn_0040b103:
    and eax,0x40 ; 0040B103 83E040
    %if ($ - %%insn_0040b103) > 3
        %error "LONG_0040B103"
    %endif
    times 3 - ($ - %%insn_0040b103) db 0
    %%insn_0040b106:
    test eax,eax ; 0040B106 85C0
    %if ($ - %%insn_0040b106) > 2
        %error "LONG_0040B106"
    %endif
    times 2 - ($ - %%insn_0040b106) db 0
    %%insn_0040b108:
    jz short 0x40b146 ; 0040B108 743C
    %if ($ - %%insn_0040b108) > 2
        %error "LONG_0040B108"
    %endif
    times 2 - ($ - %%insn_0040b108) db 0
    %%insn_0040b10a:
    cmp dword [0x41f590],0x0 ; 0040B10A 833D90F5410000
    %if ($ - %%insn_0040b10a) > 7
        %error "LONG_0040B10A"
    %endif
    times 7 - ($ - %%insn_0040b10a) db 0
    %%insn_0040b111:
    jz short 0x40b11e ; 0040B111 740B
    %if ($ - %%insn_0040b111) > 2
        %error "LONG_0040B111"
    %endif
    times 2 - ($ - %%insn_0040b111) db 0
    %%insn_0040b113:
    mov ecx,0x421300 ; 0040B113 B900134200
    %if ($ - %%insn_0040b113) > 5
        %error "LONG_0040B113"
    %endif
    times 5 - ($ - %%insn_0040b113) db 0
    %%insn_0040b118:
    call dword near [0x4213b4] ; 0040B118 FF15B4134200
    %if ($ - %%insn_0040b118) > 6
        %error "LONG_0040B118"
    %endif
    times 6 - ($ - %%insn_0040b118) db 0
    %%insn_0040b11e:
    mov ecx,0x421300 ; 0040B11E B900134200
    %if ($ - %%insn_0040b11e) > 5
        %error "LONG_0040B11E"
    %endif
    times 5 - ($ - %%insn_0040b11e) db 0
    %%insn_0040b123:
    call dword near [0x4213b8] ; 0040B123 FF15B8134200
    %if ($ - %%insn_0040b123) > 6
        %error "LONG_0040B123"
    %endif
    times 6 - ($ - %%insn_0040b123) db 0
    %%insn_0040b129:
    mov cx,[0x4212d8] ; 0040B129 668B0DD8124200
    %if ($ - %%insn_0040b129) > 7
        %error "LONG_0040B129"
    %endif
    times 7 - ($ - %%insn_0040b129) db 0
    db 0x66, 0x81, 0xE1, 0xBF, 0xFF ; 0040B130 6681E1BFFF | and cx,0xffbf | encoding preserved
    %%insn_0040b135:
    mov [0x4212d8],cx ; 0040B135 66890DD8124200
    %if ($ - %%insn_0040b135) > 7
        %error "LONG_0040B135"
    %endif
    times 7 - ($ - %%insn_0040b135) db 0
    %%insn_0040b13c:
    mov dword [0x41f590],0x0 ; 0040B13C C70590F5410000000000
    %if ($ - %%insn_0040b13c) > 10
        %error "LONG_0040B13C"
    %endif
    times 10 - ($ - %%insn_0040b13c) db 0
    db 0x33, 0xD2 ; 0040B146 33D2 | xor edx,edx | encoding preserved
    %%insn_0040b148:
    mov dx,[0x4212d8] ; 0040B148 668B15D8124200
    %if ($ - %%insn_0040b148) > 7
        %error "LONG_0040B148"
    %endif
    times 7 - ($ - %%insn_0040b148) db 0
    %%insn_0040b14f:
    and edx,0x200 ; 0040B14F 81E200020000
    %if ($ - %%insn_0040b14f) > 6
        %error "LONG_0040B14F"
    %endif
    times 6 - ($ - %%insn_0040b14f) db 0
    %%insn_0040b155:
    test edx,edx ; 0040B155 85D2
    %if ($ - %%insn_0040b155) > 2
        %error "LONG_0040B155"
    %endif
    times 2 - ($ - %%insn_0040b155) db 0
    %%insn_0040b157:
    jz short 0x40b18c ; 0040B157 7433
    %if ($ - %%insn_0040b157) > 2
        %error "LONG_0040B157"
    %endif
    times 2 - ($ - %%insn_0040b157) db 0
    %%insn_0040b159:
    cmp dword [0x41f590],0x0 ; 0040B159 833D90F5410000
    %if ($ - %%insn_0040b159) > 7
        %error "LONG_0040B159"
    %endif
    times 7 - ($ - %%insn_0040b159) db 0
    %%insn_0040b160:
    jz short 0x40b16d ; 0040B160 740B
    %if ($ - %%insn_0040b160) > 2
        %error "LONG_0040B160"
    %endif
    times 2 - ($ - %%insn_0040b160) db 0
    %%insn_0040b162:
    mov ecx,0x421300 ; 0040B162 B900134200
    %if ($ - %%insn_0040b162) > 5
        %error "LONG_0040B162"
    %endif
    times 5 - ($ - %%insn_0040b162) db 0
    %%insn_0040b167:
    call dword near [0x4213b4] ; 0040B167 FF15B4134200
    %if ($ - %%insn_0040b167) > 6
        %error "LONG_0040B167"
    %endif
    times 6 - ($ - %%insn_0040b167) db 0
    %%insn_0040b16d:
    call 0x40aa45 ; 0040B16D E8D3F8FFFF
    %if ($ - %%insn_0040b16d) > 5
        %error "LONG_0040B16D"
    %endif
    times 5 - ($ - %%insn_0040b16d) db 0
    %%insn_0040b172:
    mov ax,[0x4212d8] ; 0040B172 66A1D8124200
    %if ($ - %%insn_0040b172) > 6
        %error "LONG_0040B172"
    %endif
    times 6 - ($ - %%insn_0040b172) db 0
    %%insn_0040b178:
    and ax,0xfdff ; 0040B178 6625FFFD
    %if ($ - %%insn_0040b178) > 4
        %error "LONG_0040B178"
    %endif
    times 4 - ($ - %%insn_0040b178) db 0
    %%insn_0040b17c:
    mov [0x4212d8],ax ; 0040B17C 66A3D8124200
    %if ($ - %%insn_0040b17c) > 6
        %error "LONG_0040B17C"
    %endif
    times 6 - ($ - %%insn_0040b17c) db 0
    %%insn_0040b182:
    mov dword [0x41f590],0x0 ; 0040B182 C70590F5410000000000
    %if ($ - %%insn_0040b182) > 10
        %error "LONG_0040B182"
    %endif
    times 10 - ($ - %%insn_0040b182) db 0
    %%insn_0040b18c:
    mov eax,0x1 ; 0040B18C B801000000
    %if ($ - %%insn_0040b18c) > 5
        %error "LONG_0040B18C"
    %endif
    times 5 - ($ - %%insn_0040b18c) db 0
    %%insn_0040b191:
    pop edi ; 0040B191 5F
    %if ($ - %%insn_0040b191) > 1
        %error "LONG_0040B191"
    %endif
    times 1 - ($ - %%insn_0040b191) db 0
    %%insn_0040b192:
    pop esi ; 0040B192 5E
    %if ($ - %%insn_0040b192) > 1
        %error "LONG_0040B192"
    %endif
    times 1 - ($ - %%insn_0040b192) db 0
    %%insn_0040b193:
    pop ebx ; 0040B193 5B
    %if ($ - %%insn_0040b193) > 1
        %error "LONG_0040B193"
    %endif
    times 1 - ($ - %%insn_0040b193) db 0
    db 0x8B, 0xE5 ; 0040B194 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040b196:
    pop ebp ; 0040B196 5D
    %if ($ - %%insn_0040b196) > 1
        %error "LONG_0040B196"
    %endif
    times 1 - ($ - %%insn_0040b196) db 0
    %%insn_0040b197:
    ret ; 0040B197 C3
    %if ($ - %%insn_0040b197) > 1
        %error "LONG_0040B197"
    %endif
    times 1 - ($ - %%insn_0040b197) db 0
    %if ($ - %%fragment_start) != 1556
        %error "function fragment size drift: 0040AB84"
    %endif
%endmacro
