; PE virtual entry 00408F30
; Ghidra working symbol: FUN_00408f30
; Verified Win32 window procedure (HWND, UINT, WPARAM, LPARAM; stdcall RET 10h).
; Dispatches window messages and forwards unhandled cases to DefWindowProcA.
; Generated losslessly; preserve byte identity after edits.

%macro emit_v32_window_procedure_part_00 0
    %%fragment_start:
v32_window_procedure:
    %%insn_00408f30:
    push ebp ; 00408F30 55
    %if ($ - %%insn_00408f30) > 1
        %error "LONG_00408F30"
    %endif
    times 1 - ($ - %%insn_00408f30) db 0
    db 0x8B, 0xEC ; 00408F31 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408f33:
    sub esp,0x6c ; 00408F33 83EC6C
    %if ($ - %%insn_00408f33) > 3
        %error "LONG_00408F33"
    %endif
    times 3 - ($ - %%insn_00408f33) db 0
    %%insn_00408f36:
    mov dword [ebp-0x18],0x0 ; 00408F36 C745E800000000
    %if ($ - %%insn_00408f36) > 7
        %error "LONG_00408F36"
    %endif
    times 7 - ($ - %%insn_00408f36) db 0
    %%insn_00408f3d:
    mov eax,[ebp+0xc] ; 00408F3D 8B450C
    %if ($ - %%insn_00408f3d) > 3
        %error "LONG_00408F3D"
    %endif
    times 3 - ($ - %%insn_00408f3d) db 0
    %%insn_00408f40:
    mov [ebp-0x68],eax ; 00408F40 894598
    %if ($ - %%insn_00408f40) > 3
        %error "LONG_00408F40"
    %endif
    times 3 - ($ - %%insn_00408f40) db 0
    %%insn_00408f43:
    cmp dword [ebp-0x68],0x7 ; 00408F43 837D9807
    %if ($ - %%insn_00408f43) > 4
        %error "LONG_00408F43"
    %endif
    times 4 - ($ - %%insn_00408f43) db 0
    %%insn_00408f47:
    ja short 0x408f6c ; 00408F47 7723
    %if ($ - %%insn_00408f47) > 2
        %error "LONG_00408F47"
    %endif
    times 2 - ($ - %%insn_00408f47) db 0
    %%insn_00408f49:
    cmp dword [ebp-0x68],0x7 ; 00408F49 837D9807
    %if ($ - %%insn_00408f49) > 4
        %error "LONG_00408F49"
    %endif
    times 4 - ($ - %%insn_00408f49) db 0
    %%insn_00408f4d:
    jz 0x4091b8 ; 00408F4D 0F8465020000
    %if ($ - %%insn_00408f4d) > 6
        %error "LONG_00408F4D"
    %endif
    times 6 - ($ - %%insn_00408f4d) db 0
    %%insn_00408f53:
    cmp dword [ebp-0x68],0x1 ; 00408F53 837D9801
    %if ($ - %%insn_00408f53) > 4
        %error "LONG_00408F53"
    %endif
    times 4 - ($ - %%insn_00408f53) db 0
    %%insn_00408f57:
    jz 0x408fee ; 00408F57 0F8491000000
    %if ($ - %%insn_00408f57) > 6
        %error "LONG_00408F57"
    %endif
    times 6 - ($ - %%insn_00408f57) db 0
    %%insn_00408f5d:
    cmp dword [ebp-0x68],0x2 ; 00408F5D 837D9802
    %if ($ - %%insn_00408f5d) > 4
        %error "LONG_00408F5D"
    %endif
    times 4 - ($ - %%insn_00408f5d) db 0
    %%insn_00408f61:
    jz 0x40923d ; 00408F61 0F84D6020000
    %if ($ - %%insn_00408f61) > 6
        %error "LONG_00408F61"
    %endif
    times 6 - ($ - %%insn_00408f61) db 0
    %%insn_00408f67:
    jmp 0x40924f ; 00408F67 E9E3020000
    %if ($ - %%insn_00408f67) > 5
        %error "LONG_00408F67"
    %endif
    times 5 - ($ - %%insn_00408f67) db 0
    %%insn_00408f6c:
    cmp dword [ebp-0x68],0xf ; 00408F6C 837D980F
    %if ($ - %%insn_00408f6c) > 4
        %error "LONG_00408F6C"
    %endif
    times 4 - ($ - %%insn_00408f6c) db 0
    %%insn_00408f70:
    ja short 0x408f8b ; 00408F70 7719
    %if ($ - %%insn_00408f70) > 2
        %error "LONG_00408F70"
    %endif
    times 2 - ($ - %%insn_00408f70) db 0
    %%insn_00408f72:
    cmp dword [ebp-0x68],0xf ; 00408F72 837D980F
    %if ($ - %%insn_00408f72) > 4
        %error "LONG_00408F72"
    %endif
    times 4 - ($ - %%insn_00408f72) db 0
    %%insn_00408f76:
    jz 0x4091d3 ; 00408F76 0F8457020000
    %if ($ - %%insn_00408f76) > 6
        %error "LONG_00408F76"
    %endif
    times 6 - ($ - %%insn_00408f76) db 0
    %%insn_00408f7c:
    cmp dword [ebp-0x68],0x8 ; 00408F7C 837D9808
    %if ($ - %%insn_00408f7c) > 4
        %error "LONG_00408F7C"
    %endif
    times 4 - ($ - %%insn_00408f7c) db 0
    %%insn_00408f80:
    jz 0x4091c7 ; 00408F80 0F8441020000
    %if ($ - %%insn_00408f80) > 6
        %error "LONG_00408F80"
    %endif
    times 6 - ($ - %%insn_00408f80) db 0
    %%insn_00408f86:
    jmp 0x40924f ; 00408F86 E9C4020000
    %if ($ - %%insn_00408f86) > 5
        %error "LONG_00408F86"
    %endif
    times 5 - ($ - %%insn_00408f86) db 0
    %%insn_00408f8b:
    mov ecx,[ebp-0x68] ; 00408F8B 8B4D98
    %if ($ - %%insn_00408f8b) > 3
        %error "LONG_00408F8B"
    %endif
    times 3 - ($ - %%insn_00408f8b) db 0
    %%insn_00408f8e:
    sub ecx,0x1c ; 00408F8E 83E91C
    %if ($ - %%insn_00408f8e) > 3
        %error "LONG_00408F8E"
    %endif
    times 3 - ($ - %%insn_00408f8e) db 0
    %%insn_00408f91:
    mov [ebp-0x68],ecx ; 00408F91 894D98
    %if ($ - %%insn_00408f91) > 3
        %error "LONG_00408F91"
    %endif
    times 3 - ($ - %%insn_00408f91) db 0
    %%insn_00408f94:
    cmp dword [ebp-0x68],0xf6 ; 00408F94 817D98F6000000
    %if ($ - %%insn_00408f94) > 7
        %error "LONG_00408F94"
    %endif
    times 7 - ($ - %%insn_00408f94) db 0
    %%insn_00408f9b:
    ja 0x40924f ; 00408F9B 0F87AE020000
    %if ($ - %%insn_00408f9b) > 6
        %error "LONG_00408F9B"
    %endif
    times 6 - ($ - %%insn_00408f9b) db 0
    %%insn_00408fa1:
    mov eax,[ebp-0x68] ; 00408FA1 8B4598
    %if ($ - %%insn_00408fa1) > 3
        %error "LONG_00408FA1"
    %endif
    times 3 - ($ - %%insn_00408fa1) db 0
    db 0x33, 0xD2 ; 00408FA4 33D2 | xor edx,edx | encoding preserved
    %%insn_00408fa6:
    mov dl,[eax+0x40929f] ; 00408FA6 8A909F924000
    %if ($ - %%insn_00408fa6) > 6
        %error "LONG_00408FA6"
    %endif
    times 6 - ($ - %%insn_00408fa6) db 0
    %%insn_00408fac:
    jmp dword near [edx*4+0x40927b] ; 00408FAC FF24957B924000
    %if ($ - %%insn_00408fac) > 7
        %error "LONG_00408FAC"
    %endif
    times 7 - ($ - %%insn_00408fac) db 0
    %%insn_00408fb3:
    mov ecx,[ebp+0x10] ; 00408FB3 8B4D10
    %if ($ - %%insn_00408fb3) > 3
        %error "LONG_00408FB3"
    %endif
    times 3 - ($ - %%insn_00408fb3) db 0
    %%insn_00408fb6:
    and ecx,0xfff0 ; 00408FB6 81E1F0FF0000
    %if ($ - %%insn_00408fb6) > 6
        %error "LONG_00408FB6"
    %endif
    times 6 - ($ - %%insn_00408fb6) db 0
    %%insn_00408fbc:
    cmp ecx,0xf140 ; 00408FBC 81F940F10000
    %if ($ - %%insn_00408fbc) > 6
        %error "LONG_00408FBC"
    %endif
    times 6 - ($ - %%insn_00408fbc) db 0
    %%insn_00408fc2:
    jz short 0x408fd5 ; 00408FC2 7411
    %if ($ - %%insn_00408fc2) > 2
        %error "LONG_00408FC2"
    %endif
    times 2 - ($ - %%insn_00408fc2) db 0
    %%insn_00408fc4:
    mov edx,[ebp+0x10] ; 00408FC4 8B5510
    %if ($ - %%insn_00408fc4) > 3
        %error "LONG_00408FC4"
    %endif
    times 3 - ($ - %%insn_00408fc4) db 0
    %%insn_00408fc7:
    and edx,0xfff0 ; 00408FC7 81E2F0FF0000
    %if ($ - %%insn_00408fc7) > 6
        %error "LONG_00408FC7"
    %endif
    times 6 - ($ - %%insn_00408fc7) db 0
    %%insn_00408fcd:
    cmp edx,0xf170 ; 00408FCD 81FA70F10000
    %if ($ - %%insn_00408fcd) > 6
        %error "LONG_00408FCD"
    %endif
    times 6 - ($ - %%insn_00408fcd) db 0
    %%insn_00408fd3:
    jnz short 0x408fdc ; 00408FD3 7507
    %if ($ - %%insn_00408fd3) > 2
        %error "LONG_00408FD3"
    %endif
    times 2 - ($ - %%insn_00408fd3) db 0
    db 0x33, 0xC0 ; 00408FD5 33C0 | xor eax,eax | encoding preserved
    %%insn_00408fd7:
    jmp 0x409275 ; 00408FD7 E999020000
    %if ($ - %%insn_00408fd7) > 5
        %error "LONG_00408FD7"
    %endif
    times 5 - ($ - %%insn_00408fd7) db 0
    %%insn_00408fdc:
    jmp 0x40924f ; 00408FDC E96E020000
    %if ($ - %%insn_00408fdc) > 5
        %error "LONG_00408FDC"
    %endif
    times 5 - ($ - %%insn_00408fdc) db 0
    %%insn_00408fe1:
    mov eax,[ebp+0x10] ; 00408FE1 8B4510
    %if ($ - %%insn_00408fe1) > 3
        %error "LONG_00408FE1"
    %endif
    times 3 - ($ - %%insn_00408fe1) db 0
    %%insn_00408fe4:
    mov [0x41f5a0],eax ; 00408FE4 A3A0F54100
    %if ($ - %%insn_00408fe4) > 5
        %error "LONG_00408FE4"
    %endif
    times 5 - ($ - %%insn_00408fe4) db 0
    %%insn_00408fe9:
    jmp 0x40924f ; 00408FE9 E961020000
    %if ($ - %%insn_00408fe9) > 5
        %error "LONG_00408FE9"
    %endif
    times 5 - ($ - %%insn_00408fe9) db 0
    %%insn_00408fee:
    jmp 0x40924f ; 00408FEE E95C020000
    %if ($ - %%insn_00408fee) > 5
        %error "LONG_00408FEE"
    %endif
    times 5 - ($ - %%insn_00408fee) db 0
    %%insn_00408ff3:
    cmp dword [0x41f5e4],0x0 ; 00408FF3 833DE4F5410000
    %if ($ - %%insn_00408ff3) > 7
        %error "LONG_00408FF3"
    %endif
    times 7 - ($ - %%insn_00408ff3) db 0
    %%insn_00408ffa:
    jnz short 0x409010 ; 00408FFA 7514
    %if ($ - %%insn_00408ffa) > 2
        %error "LONG_00408FFA"
    %endif
    times 2 - ($ - %%insn_00408ffa) db 0
    %%insn_00408ffc:
    push dword 0x7f00 ; 00408FFC 68007F0000
    %if ($ - %%insn_00408ffc) > 5
        %error "LONG_00408FFC"
    %endif
    times 5 - ($ - %%insn_00408ffc) db 0
    %%insn_00409001:
    push dword 0x0 ; 00409001 6A00
    %if ($ - %%insn_00409001) > 2
        %error "LONG_00409001"
    %endif
    times 2 - ($ - %%insn_00409001) db 0
    %%insn_00409003:
    call dword near [0x424584] ; 00409003 FF1584454200
    %if ($ - %%insn_00409003) > 6
        %error "LONG_00409003"
    %endif
    times 6 - ($ - %%insn_00409003) db 0
    %%insn_00409009:
    push eax ; 00409009 50
    %if ($ - %%insn_00409009) > 1
        %error "LONG_00409009"
    %endif
    times 1 - ($ - %%insn_00409009) db 0
    %%insn_0040900a:
    call dword near [0x42453c] ; 0040900A FF153C454200
    %if ($ - %%insn_0040900a) > 6
        %error "LONG_0040900A"
    %endif
    times 6 - ($ - %%insn_0040900a) db 0
    db 0x33, 0xC0 ; 00409010 33C0 | xor eax,eax | encoding preserved
    %%insn_00409012:
    jmp 0x409275 ; 00409012 E95E020000
    %if ($ - %%insn_00409012) > 5
        %error "LONG_00409012"
    %endif
    times 5 - ($ - %%insn_00409012) db 0
    %%insn_00409017:
    push dword 0x0 ; 00409017 6A00
    %if ($ - %%insn_00409017) > 2
        %error "LONG_00409017"
    %endif
    times 2 - ($ - %%insn_00409017) db 0
    %%insn_00409019:
    call dword near [0x42453c] ; 00409019 FF153C454200
    %if ($ - %%insn_00409019) > 6
        %error "LONG_00409019"
    %endif
    times 6 - ($ - %%insn_00409019) db 0
    %%insn_0040901f:
    mov eax,0x1 ; 0040901F B801000000
    %if ($ - %%insn_0040901f) > 5
        %error "LONG_0040901F"
    %endif
    times 5 - ($ - %%insn_0040901f) db 0
    %%insn_00409024:
    jmp 0x409275 ; 00409024 E94C020000
    %if ($ - %%insn_00409024) > 5
        %error "LONG_00409024"
    %endif
    times 5 - ($ - %%insn_00409024) db 0
    %%insn_00409029:
    mov cl,[ebp+0x10] ; 00409029 8A4D10
    %if ($ - %%insn_00409029) > 3
        %error "LONG_00409029"
    %endif
    times 3 - ($ - %%insn_00409029) db 0
    %%insn_0040902c:
    push ecx ; 0040902C 51
    %if ($ - %%insn_0040902c) > 1
        %error "LONG_0040902C"
    %endif
    times 1 - ($ - %%insn_0040902c) db 0
    %%insn_0040902d:
    call 0x406a48 ; 0040902D E816DAFFFF
    %if ($ - %%insn_0040902d) > 5
        %error "LONG_0040902D"
    %endif
    times 5 - ($ - %%insn_0040902d) db 0
    %%insn_00409032:
    add esp,0x4 ; 00409032 83C404
    %if ($ - %%insn_00409032) > 3
        %error "LONG_00409032"
    %endif
    times 3 - ($ - %%insn_00409032) db 0
    db 0x33, 0xC0 ; 00409035 33C0 | xor eax,eax | encoding preserved
    %%insn_00409037:
    jmp 0x409275 ; 00409037 E939020000
    %if ($ - %%insn_00409037) > 5
        %error "LONG_00409037"
    %endif
    times 5 - ($ - %%insn_00409037) db 0
    %%insn_0040903c:
    mov edx,[ebp+0x14] ; 0040903C 8B5514
    %if ($ - %%insn_0040903c) > 3
        %error "LONG_0040903C"
    %endif
    times 3 - ($ - %%insn_0040903c) db 0
    %%insn_0040903f:
    and edx,0xffff ; 0040903F 81E2FFFF0000
    %if ($ - %%insn_0040903f) > 6
        %error "LONG_0040903F"
    %endif
    times 6 - ($ - %%insn_0040903f) db 0
    %%insn_00409045:
    mov [ebp-0x14],edx ; 00409045 8955EC
    %if ($ - %%insn_00409045) > 3
        %error "LONG_00409045"
    %endif
    times 3 - ($ - %%insn_00409045) db 0
    %%insn_00409048:
    mov eax,[ebp+0x14] ; 00409048 8B4514
    %if ($ - %%insn_00409048) > 3
        %error "LONG_00409048"
    %endif
    times 3 - ($ - %%insn_00409048) db 0
    %%insn_0040904b:
    sar eax,byte 0x10 ; 0040904B C1F810
    %if ($ - %%insn_0040904b) > 3
        %error "LONG_0040904B"
    %endif
    times 3 - ($ - %%insn_0040904b) db 0
    %%insn_0040904e:
    mov [ebp-0x10],ax ; 0040904E 668945F0
    %if ($ - %%insn_0040904e) > 4
        %error "LONG_0040904E"
    %endif
    times 4 - ($ - %%insn_0040904e) db 0
    %%insn_00409052:
    mov ecx,[ebp-0x10] ; 00409052 8B4DF0
    %if ($ - %%insn_00409052) > 3
        %error "LONG_00409052"
    %endif
    times 3 - ($ - %%insn_00409052) db 0
    %%insn_00409055:
    and ecx,0xffff ; 00409055 81E1FFFF0000
    %if ($ - %%insn_00409055) > 6
        %error "LONG_00409055"
    %endif
    times 6 - ($ - %%insn_00409055) db 0
    %%insn_0040905b:
    and ecx,0x8000 ; 0040905B 81E100800000
    %if ($ - %%insn_0040905b) > 6
        %error "LONG_0040905B"
    %endif
    times 6 - ($ - %%insn_0040905b) db 0
    %%insn_00409061:
    neg ecx ; 00409061 F7D9
    %if ($ - %%insn_00409061) > 2
        %error "LONG_00409061"
    %endif
    times 2 - ($ - %%insn_00409061) db 0
    db 0x1B, 0xC9 ; 00409063 1BC9 | sbb ecx,ecx | encoding preserved
    %%insn_00409065:
    inc ecx ; 00409065 41
    %if ($ - %%insn_00409065) > 1
        %error "LONG_00409065"
    %endif
    times 1 - ($ - %%insn_00409065) db 0
    %%insn_00409066:
    mov [ebp-0xc],ecx ; 00409066 894DF4
    %if ($ - %%insn_00409066) > 3
        %error "LONG_00409066"
    %endif
    times 3 - ($ - %%insn_00409066) db 0
    %%insn_00409069:
    mov edx,[ebp-0x10] ; 00409069 8B55F0
    %if ($ - %%insn_00409069) > 3
        %error "LONG_00409069"
    %endif
    times 3 - ($ - %%insn_00409069) db 0
    %%insn_0040906c:
    and edx,0xffff ; 0040906C 81E2FFFF0000
    %if ($ - %%insn_0040906c) > 6
        %error "LONG_0040906C"
    %endif
    times 6 - ($ - %%insn_0040906c) db 0
    %%insn_00409072:
    and edx,0x8000 ; 00409072 81E200800000
    %if ($ - %%insn_00409072) > 6
        %error "LONG_00409072"
    %endif
    times 6 - ($ - %%insn_00409072) db 0
    %%insn_00409078:
    mov [ebp-0x60],edx ; 00409078 8955A0
    %if ($ - %%insn_00409078) > 3
        %error "LONG_00409078"
    %endif
    times 3 - ($ - %%insn_00409078) db 0
    %%insn_0040907b:
    mov eax,[ebp-0x10] ; 0040907B 8B45F0
    %if ($ - %%insn_0040907b) > 3
        %error "LONG_0040907B"
    %endif
    times 3 - ($ - %%insn_0040907b) db 0
    %%insn_0040907e:
    and eax,0xffff ; 0040907E 25FFFF0000
    %if ($ - %%insn_0040907e) > 5
        %error "LONG_0040907E"
    %endif
    times 5 - ($ - %%insn_0040907e) db 0
    %%insn_00409083:
    and eax,0x4000 ; 00409083 2500400000
    %if ($ - %%insn_00409083) > 5
        %error "LONG_00409083"
    %endif
    times 5 - ($ - %%insn_00409083) db 0
    %%insn_00409088:
    mov [ebp-0x1c],eax ; 00409088 8945E4
    %if ($ - %%insn_00409088) > 3
        %error "LONG_00409088"
    %endif
    times 3 - ($ - %%insn_00409088) db 0
    %%insn_0040908b:
    mov ecx,[ebp-0x10] ; 0040908B 8B4DF0
    %if ($ - %%insn_0040908b) > 3
        %error "LONG_0040908B"
    %endif
    times 3 - ($ - %%insn_0040908b) db 0
    %%insn_0040908e:
    and ecx,0xffff ; 0040908E 81E1FFFF0000
    %if ($ - %%insn_0040908e) > 6
        %error "LONG_0040908E"
    %endif
    times 6 - ($ - %%insn_0040908e) db 0
    %%insn_00409094:
    and ecx,0x100 ; 00409094 81E100010000
    %if ($ - %%insn_00409094) > 6
        %error "LONG_00409094"
    %endif
    times 6 - ($ - %%insn_00409094) db 0
    %%insn_0040909a:
    mov [ebp-0x64],ecx ; 0040909A 894D9C
    %if ($ - %%insn_0040909a) > 3
        %error "LONG_0040909A"
    %endif
    times 3 - ($ - %%insn_0040909a) db 0
    %%insn_0040909d:
    mov dl,[ebp+0x10] ; 0040909D 8A5510
    %if ($ - %%insn_0040909d) > 3
        %error "LONG_0040909D"
    %endif
    times 3 - ($ - %%insn_0040909d) db 0
    %%insn_004090a0:
    mov [ebp-0x8],dl ; 004090A0 8855F8
    %if ($ - %%insn_004090a0) > 3
        %error "LONG_004090A0"
    %endif
    times 3 - ($ - %%insn_004090a0) db 0
    %%insn_004090a3:
    movsx eax,byte [ebp-0x8] ; 004090A3 0FBE45F8
    %if ($ - %%insn_004090a3) > 4
        %error "LONG_004090A3"
    %endif
    times 4 - ($ - %%insn_004090a3) db 0
    %%insn_004090a7:
    cmp eax,0xd ; 004090A7 83F80D
    %if ($ - %%insn_004090a7) > 3
        %error "LONG_004090A7"
    %endif
    times 3 - ($ - %%insn_004090a7) db 0
    %%insn_004090aa:
    jnz 0x40917e ; 004090AA 0F85CE000000
    %if ($ - %%insn_004090aa) > 6
        %error "LONG_004090AA"
    %endif
    times 6 - ($ - %%insn_004090aa) db 0
    %%insn_004090b0:
    mov ecx,[ebp-0x10] ; 004090B0 8B4DF0
    %if ($ - %%insn_004090b0) > 3
        %error "LONG_004090B0"
    %endif
    times 3 - ($ - %%insn_004090b0) db 0
    %%insn_004090b3:
    and ecx,0xffff ; 004090B3 81E1FFFF0000
    %if ($ - %%insn_004090b3) > 6
        %error "LONG_004090B3"
    %endif
    times 6 - ($ - %%insn_004090b3) db 0
    %%insn_004090b9:
    and ecx,0x2000 ; 004090B9 81E100200000
    %if ($ - %%insn_004090b9) > 6
        %error "LONG_004090B9"
    %endif
    times 6 - ($ - %%insn_004090b9) db 0
    %%insn_004090bf:
    test ecx,ecx ; 004090BF 85C9
    %if ($ - %%insn_004090bf) > 2
        %error "LONG_004090BF"
    %endif
    times 2 - ($ - %%insn_004090bf) db 0
    %%insn_004090c1:
    jz 0x40917e ; 004090C1 0F84B7000000
    %if ($ - %%insn_004090c1) > 6
        %error "LONG_004090C1"
    %endif
    times 6 - ($ - %%insn_004090c1) db 0
    %%insn_004090c7:
    cmp dword [ebp-0xc],0x0 ; 004090C7 837DF400
    %if ($ - %%insn_004090c7) > 4
        %error "LONG_004090C7"
    %endif
    times 4 - ($ - %%insn_004090c7) db 0
    %%insn_004090cb:
    jz 0x40917e ; 004090CB 0F84AD000000
    %if ($ - %%insn_004090cb) > 6
        %error "LONG_004090CB"
    %endif
    times 6 - ($ - %%insn_004090cb) db 0
    %%insn_004090d1:
    cmp dword [ebp-0x1c],0x0 ; 004090D1 837DE400
    %if ($ - %%insn_004090d1) > 4
        %error "LONG_004090D1"
    %endif
    times 4 - ($ - %%insn_004090d1) db 0
    %%insn_004090d5:
    jnz 0x40917e ; 004090D5 0F85A3000000
    %if ($ - %%insn_004090d5) > 6
        %error "LONG_004090D5"
    %endif
    times 6 - ($ - %%insn_004090d5) db 0
    %%insn_004090db:
    mov dword [ebp-0x18],0x1 ; 004090DB C745E801000000
    %if ($ - %%insn_004090db) > 7
        %error "LONG_004090DB"
    %endif
    times 7 - ($ - %%insn_004090db) db 0
    %%insn_004090e2:
    push dword 0x4b000 ; 004090E2 6800B00400
    %if ($ - %%insn_004090e2) > 5
        %error "LONG_004090E2"
    %endif
    times 5 - ($ - %%insn_004090e2) db 0
    %%insn_004090e7:
    call 0x40cdc0 ; 004090E7 E8D43C0000
    %if ($ - %%insn_004090e7) > 5
        %error "LONG_004090E7"
    %endif
    times 5 - ($ - %%insn_004090e7) db 0
    %%insn_004090ec:
    add esp,0x4 ; 004090EC 83C404
    %if ($ - %%insn_004090ec) > 3
        %error "LONG_004090EC"
    %endif
    times 3 - ($ - %%insn_004090ec) db 0
    %%insn_004090ef:
    mov [ebp-0x4],eax ; 004090EF 8945FC
    %if ($ - %%insn_004090ef) > 3
        %error "LONG_004090EF"
    %endif
    times 3 - ($ - %%insn_004090ef) db 0
    %%insn_004090f2:
    push dword 0x4b000 ; 004090F2 6800B00400
    %if ($ - %%insn_004090f2) > 5
        %error "LONG_004090F2"
    %endif
    times 5 - ($ - %%insn_004090f2) db 0
    %%insn_004090f7:
    mov edx,[0x42133c] ; 004090F7 8B153C134200
    %if ($ - %%insn_004090f7) > 6
        %error "LONG_004090F7"
    %endif
    times 6 - ($ - %%insn_004090f7) db 0
    %%insn_004090fd:
    push edx ; 004090FD 52
    %if ($ - %%insn_004090fd) > 1
        %error "LONG_004090FD"
    %endif
    times 1 - ($ - %%insn_004090fd) db 0
    %%insn_004090fe:
    mov eax,[ebp-0x4] ; 004090FE 8B45FC
    %if ($ - %%insn_004090fe) > 3
        %error "LONG_004090FE"
    %endif
    times 3 - ($ - %%insn_004090fe) db 0
    %%insn_00409101:
    push eax ; 00409101 50
    %if ($ - %%insn_00409101) > 1
        %error "LONG_00409101"
    %endif
    times 1 - ($ - %%insn_00409101) db 0
    %%insn_00409102:
    call 0x40ca10 ; 00409102 E809390000
    %if ($ - %%insn_00409102) > 5
        %error "LONG_00409102"
    %endif
    times 5 - ($ - %%insn_00409102) db 0
    %%insn_00409107:
    add esp,0xc ; 00409107 83C40C
    %if ($ - %%insn_00409107) > 3
        %error "LONG_00409107"
    %endif
    times 3 - ($ - %%insn_00409107) db 0
    %%insn_0040910a:
    mov ecx,0x421300 ; 0040910A B900134200
    %if ($ - %%insn_0040910a) > 5
        %error "LONG_0040910A"
    %endif
    times 5 - ($ - %%insn_0040910a) db 0
    %%insn_0040910f:
    call dword near [0x4213a4] ; 0040910F FF15A4134200
    %if ($ - %%insn_0040910f) > 6
        %error "LONG_0040910F"
    %endif
    times 6 - ($ - %%insn_0040910f) db 0
    %%insn_00409115:
    cmp dword [0x41f5e4],0x0 ; 00409115 833DE4F5410000
    %if ($ - %%insn_00409115) > 7
        %error "LONG_00409115"
    %endif
    times 7 - ($ - %%insn_00409115) db 0
    %%insn_0040911c:
    jnz short 0x409134 ; 0040911C 7516
    %if ($ - %%insn_0040911c) > 2
        %error "LONG_0040911C"
    %endif
    times 2 - ($ - %%insn_0040911c) db 0
    %%insn_0040911e:
    mov ecx,0x421300 ; 0040911E B900134200
    %if ($ - %%insn_0040911e) > 5
        %error "LONG_0040911E"
    %endif
    times 5 - ($ - %%insn_0040911e) db 0
    %%insn_00409123:
    call 0x4077e5 ; 00409123 E8BDE6FFFF
    %if ($ - %%insn_00409123) > 5
        %error "LONG_00409123"
    %endif
    times 5 - ($ - %%insn_00409123) db 0
    %%insn_00409128:
    mov dword [0x41f5e4],0x1 ; 00409128 C705E4F5410001000000
    %if ($ - %%insn_00409128) > 10
        %error "LONG_00409128"
    %endif
    times 10 - ($ - %%insn_00409128) db 0
    %%insn_00409132:
    jmp short 0x409148 ; 00409132 EB14
    %if ($ - %%insn_00409132) > 2
        %error "LONG_00409132"
    %endif
    times 2 - ($ - %%insn_00409132) db 0
    %%insn_00409134:
    mov ecx,0x421300 ; 00409134 B900134200
    %if ($ - %%insn_00409134) > 5
        %error "LONG_00409134"
    %endif
    times 5 - ($ - %%insn_00409134) db 0
    %%insn_00409139:
    call 0x408050 ; 00409139 E812EFFFFF
    %if ($ - %%insn_00409139) > 5
        %error "LONG_00409139"
    %endif
    times 5 - ($ - %%insn_00409139) db 0
    %%insn_0040913e:
    mov dword [0x41f5e4],0x0 ; 0040913E C705E4F5410000000000
    %if ($ - %%insn_0040913e) > 10
        %error "LONG_0040913E"
    %endif
    times 10 - ($ - %%insn_0040913e) db 0
    %%insn_00409148:
    mov ecx,0x421300 ; 00409148 B900134200
    %if ($ - %%insn_00409148) > 5
        %error "LONG_00409148"
    %endif
    times 5 - ($ - %%insn_00409148) db 0
    %%insn_0040914d:
    call dword near [0x4213a0] ; 0040914D FF15A0134200
    %if ($ - %%insn_0040914d) > 6
        %error "LONG_0040914D"
    %endif
    times 6 - ($ - %%insn_0040914d) db 0
    %%insn_00409153:
    push dword 0x4b000 ; 00409153 6800B00400
    %if ($ - %%insn_00409153) > 5
        %error "LONG_00409153"
    %endif
    times 5 - ($ - %%insn_00409153) db 0
    %%insn_00409158:
    mov ecx,[ebp-0x4] ; 00409158 8B4DFC
    %if ($ - %%insn_00409158) > 3
        %error "LONG_00409158"
    %endif
    times 3 - ($ - %%insn_00409158) db 0
    %%insn_0040915b:
    push ecx ; 0040915B 51
    %if ($ - %%insn_0040915b) > 1
        %error "LONG_0040915B"
    %endif
    times 1 - ($ - %%insn_0040915b) db 0
    %%insn_0040915c:
    mov edx,[0x42133c] ; 0040915C 8B153C134200
    %if ($ - %%insn_0040915c) > 6
        %error "LONG_0040915C"
    %endif
    times 6 - ($ - %%insn_0040915c) db 0
    %%insn_00409162:
    push edx ; 00409162 52
    %if ($ - %%insn_00409162) > 1
        %error "LONG_00409162"
    %endif
    times 1 - ($ - %%insn_00409162) db 0
    %%insn_00409163:
    call 0x40ca10 ; 00409163 E8A8380000
    %if ($ - %%insn_00409163) > 5
        %error "LONG_00409163"
    %endif
    times 5 - ($ - %%insn_00409163) db 0
    %%insn_00409168:
    add esp,0xc ; 00409168 83C40C
    %if ($ - %%insn_00409168) > 3
        %error "LONG_00409168"
    %endif
    times 3 - ($ - %%insn_00409168) db 0
    %%insn_0040916b:
    mov eax,[ebp-0x4] ; 0040916B 8B45FC
    %if ($ - %%insn_0040916b) > 3
        %error "LONG_0040916B"
    %endif
    times 3 - ($ - %%insn_0040916b) db 0
    %%insn_0040916e:
    push eax ; 0040916E 50
    %if ($ - %%insn_0040916e) > 1
        %error "LONG_0040916E"
    %endif
    times 1 - ($ - %%insn_0040916e) db 0
    %%insn_0040916f:
    call 0x40c9a0 ; 0040916F E82C380000
    %if ($ - %%insn_0040916f) > 5
        %error "LONG_0040916F"
    %endif
    times 5 - ($ - %%insn_0040916f) db 0
    %%insn_00409174:
    add esp,0x4 ; 00409174 83C404
    %if ($ - %%insn_00409174) > 3
        %error "LONG_00409174"
    %endif
    times 3 - ($ - %%insn_00409174) db 0
    %%insn_00409177:
    mov dword [ebp-0x18],0x0 ; 00409177 C745E800000000
    %if ($ - %%insn_00409177) > 7
        %error "LONG_00409177"
    %endif
    times 7 - ($ - %%insn_00409177) db 0
    %%insn_0040917e:
    jmp 0x40924f ; 0040917E E9CC000000
    %if ($ - %%insn_0040917e) > 5
        %error "LONG_0040917E"
    %endif
    times 5 - ($ - %%insn_0040917e) db 0
; WM_KEYDOWN handler.  Escape (VK_ESCAPE=1Bh) and F12 (7Bh) share the close
; path: reset the active input state, then PostMessageA(hwnd, WM_CLOSE, 0, 0).
; Trace 20260809-195435 captured VK_ESCAPE at 693.723 s followed by Redbook
; shutdown and process termination, with no intervening GRV opcode.
v32_window_proc_key_down:
    %%insn_00409183:
    mov ecx,[ebp+0x10] ; 00409183 8B4D10
    %if ($ - %%insn_00409183) > 3
        %error "LONG_00409183"
    %endif
    times 3 - ($ - %%insn_00409183) db 0
    %%insn_00409186:
    mov [ebp-0x6c],ecx ; 00409186 894D94
    %if ($ - %%insn_00409186) > 3
        %error "LONG_00409186"
    %endif
    times 3 - ($ - %%insn_00409186) db 0
    %%insn_00409189:
    cmp dword [ebp-0x6c],0x1b ; 00409189 837D941B
    %if ($ - %%insn_00409189) > 4
        %error "LONG_00409189"
    %endif
    times 4 - ($ - %%insn_00409189) db 0
    %%insn_0040918d:
    jz short 0x409197 ; 0040918D 7408
    %if ($ - %%insn_0040918d) > 2
        %error "LONG_0040918D"
    %endif
    times 2 - ($ - %%insn_0040918d) db 0
    %%insn_0040918f:
    cmp dword [ebp-0x6c],0x7b ; 0040918F 837D947B
    %if ($ - %%insn_0040918f) > 4
        %error "LONG_0040918F"
    %endif
    times 4 - ($ - %%insn_0040918f) db 0
    %%insn_00409193:
    jz short 0x409197 ; 00409193 7402
    %if ($ - %%insn_00409193) > 2
        %error "LONG_00409193"
    %endif
    times 2 - ($ - %%insn_00409193) db 0
    %%insn_00409195:
    jmp short 0x4091b3 ; 00409195 EB1C
    %if ($ - %%insn_00409195) > 2
        %error "LONG_00409195"
    %endif
    times 2 - ($ - %%insn_00409195) db 0
    %%insn_00409197:
    push dword 0x1 ; 00409197 6A01
    %if ($ - %%insn_00409197) > 2
        %error "LONG_00409197"
    %endif
    times 2 - ($ - %%insn_00409197) db 0
    %%insn_00409199:
    push dword 0xffffffffffffffff ; 00409199 6AFF
    %if ($ - %%insn_00409199) > 2
        %error "LONG_00409199"
    %endif
    times 2 - ($ - %%insn_00409199) db 0
    %%insn_0040919b:
    call 0x409691 ; 0040919B E8F1040000
    %if ($ - %%insn_0040919b) > 5
        %error "LONG_0040919B"
    %endif
    times 5 - ($ - %%insn_0040919b) db 0
    %%insn_004091a0:
    add esp,0x8 ; 004091A0 83C408
    %if ($ - %%insn_004091a0) > 3
        %error "LONG_004091A0"
    %endif
    times 3 - ($ - %%insn_004091a0) db 0
    %%insn_004091a3:
    push dword 0x0 ; 004091A3 6A00
    %if ($ - %%insn_004091a3) > 2
        %error "LONG_004091A3"
    %endif
    times 2 - ($ - %%insn_004091a3) db 0
    %%insn_004091a5:
    push dword 0x0 ; 004091A5 6A00
    %if ($ - %%insn_004091a5) > 2
        %error "LONG_004091A5"
    %endif
    times 2 - ($ - %%insn_004091a5) db 0
    %%insn_004091a7:
    push dword 0x10 ; 004091A7 6A10
    %if ($ - %%insn_004091a7) > 2
        %error "LONG_004091A7"
    %endif
    times 2 - ($ - %%insn_004091a7) db 0
    %%insn_004091a9:
    mov edx,[ebp+0x8] ; 004091A9 8B5508
    %if ($ - %%insn_004091a9) > 3
        %error "LONG_004091A9"
    %endif
    times 3 - ($ - %%insn_004091a9) db 0
    %%insn_004091ac:
    push edx ; 004091AC 52
    %if ($ - %%insn_004091ac) > 1
        %error "LONG_004091AC"
    %endif
    times 1 - ($ - %%insn_004091ac) db 0
    %%insn_004091ad:
    call dword near [0x424538] ; 004091AD FF1538454200
    %if ($ - %%insn_004091ad) > 6
        %error "LONG_004091AD"
    %endif
    times 6 - ($ - %%insn_004091ad) db 0
    %%insn_004091b3:
    jmp 0x40924f ; 004091B3 E997000000
    %if ($ - %%insn_004091b3) > 5
        %error "LONG_004091B3"
    %endif
    times 5 - ($ - %%insn_004091b3) db 0
    %%insn_004091b8:
    mov dword [0x41f5e0],0x1 ; 004091B8 C705E0F5410001000000
    %if ($ - %%insn_004091b8) > 10
        %error "LONG_004091B8"
    %endif
    times 10 - ($ - %%insn_004091b8) db 0
    %%insn_004091c2:
    jmp 0x40924f ; 004091C2 E988000000
    %if ($ - %%insn_004091c2) > 5
        %error "LONG_004091C2"
    %endif
    times 5 - ($ - %%insn_004091c2) db 0
    %%insn_004091c7:
    mov dword [0x41f5e0],0x0 ; 004091C7 C705E0F5410000000000
    %if ($ - %%insn_004091c7) > 10
        %error "LONG_004091C7"
    %endif
    times 10 - ($ - %%insn_004091c7) db 0
    %%insn_004091d1:
    jmp short 0x40924f ; 004091D1 EB7C
    %if ($ - %%insn_004091d1) > 2
        %error "LONG_004091D1"
    %endif
    times 2 - ($ - %%insn_004091d1) db 0
    %%insn_004091d3:
    lea eax,[ebp-0x5c] ; 004091D3 8D45A4
    %if ($ - %%insn_004091d3) > 3
        %error "LONG_004091D3"
    %endif
    times 3 - ($ - %%insn_004091d3) db 0
    %%insn_004091d6:
    push eax ; 004091D6 50
    %if ($ - %%insn_004091d6) > 1
        %error "LONG_004091D6"
    %endif
    times 1 - ($ - %%insn_004091d6) db 0
    %%insn_004091d7:
    mov ecx,[ebp+0x8] ; 004091D7 8B4D08
    %if ($ - %%insn_004091d7) > 3
        %error "LONG_004091D7"
    %endif
    times 3 - ($ - %%insn_004091d7) db 0
    %%insn_004091da:
    push ecx ; 004091DA 51
    %if ($ - %%insn_004091da) > 1
        %error "LONG_004091DA"
    %endif
    times 1 - ($ - %%insn_004091da) db 0
    %%insn_004091db:
    call dword near [0x424534] ; 004091DB FF1534454200
    %if ($ - %%insn_004091db) > 6
        %error "LONG_004091DB"
    %endif
    times 6 - ($ - %%insn_004091db) db 0
    %%insn_004091e1:
    cmp dword [0x4213b4],0x0 ; 004091E1 833DB413420000
    %if ($ - %%insn_004091e1) > 7
        %error "LONG_004091E1"
    %endif
    times 7 - ($ - %%insn_004091e1) db 0
    %%insn_004091e8:
    jz short 0x40922d ; 004091E8 7443
    %if ($ - %%insn_004091e8) > 2
        %error "LONG_004091E8"
    %endif
    times 2 - ($ - %%insn_004091e8) db 0
    %%insn_004091ea:
    cmp dword [ebp-0x18],0x0 ; 004091EA 837DE800
    %if ($ - %%insn_004091ea) > 4
        %error "LONG_004091EA"
    %endif
    times 4 - ($ - %%insn_004091ea) db 0
    %%insn_004091ee:
    jnz short 0x40922d ; 004091EE 753D
    %if ($ - %%insn_004091ee) > 2
        %error "LONG_004091EE"
    %endif
    times 2 - ($ - %%insn_004091ee) db 0
    %%insn_004091f0:
    mov dword [0x421354],0x0 ; 004091F0 C7055413420000000000
    %if ($ - %%insn_004091f0) > 10
        %error "LONG_004091F0"
    %endif
    times 10 - ($ - %%insn_004091f0) db 0
    %%insn_004091fa:
    mov dword [0x42135c],0x0 ; 004091FA C7055C13420000000000
    %if ($ - %%insn_004091fa) > 10
        %error "LONG_004091FA"
    %endif
    times 10 - ($ - %%insn_004091fa) db 0
    %%insn_00409204:
    mov dword [0x421360],0x1e0 ; 00409204 C70560134200E0010000
    %if ($ - %%insn_00409204) > 10
        %error "LONG_00409204"
    %endif
    times 10 - ($ - %%insn_00409204) db 0
    %%insn_0040920e:
    mov dword [0x421358],0x280 ; 0040920E C7055813420080020000
    %if ($ - %%insn_0040920e) > 10
        %error "LONG_0040920E"
    %endif
    times 10 - ($ - %%insn_0040920e) db 0
    %%insn_00409218:
    mov dword [0x41f590],0x1 ; 00409218 C70590F5410001000000
    %if ($ - %%insn_00409218) > 10
        %error "LONG_00409218"
    %endif
    times 10 - ($ - %%insn_00409218) db 0
    %%insn_00409222:
    mov ecx,0x421300 ; 00409222 B900134200
    %if ($ - %%insn_00409222) > 5
        %error "LONG_00409222"
    %endif
    times 5 - ($ - %%insn_00409222) db 0
    %%insn_00409227:
    call dword near [0x4213b4] ; 00409227 FF15B4134200
    %if ($ - %%insn_00409227) > 6
        %error "LONG_00409227"
    %endif
    times 6 - ($ - %%insn_00409227) db 0
    %%insn_0040922d:
    lea edx,[ebp-0x5c] ; 0040922D 8D55A4
    %if ($ - %%insn_0040922d) > 3
        %error "LONG_0040922D"
    %endif
    times 3 - ($ - %%insn_0040922d) db 0
    %%insn_00409230:
    push edx ; 00409230 52
    %if ($ - %%insn_00409230) > 1
        %error "LONG_00409230"
    %endif
    times 1 - ($ - %%insn_00409230) db 0
    %%insn_00409231:
    mov eax,[ebp+0x8] ; 00409231 8B4508
    %if ($ - %%insn_00409231) > 3
        %error "LONG_00409231"
    %endif
    times 3 - ($ - %%insn_00409231) db 0
    %%insn_00409234:
    push eax ; 00409234 50
    %if ($ - %%insn_00409234) > 1
        %error "LONG_00409234"
    %endif
    times 1 - ($ - %%insn_00409234) db 0
    %%insn_00409235:
    call dword near [0x424530] ; 00409235 FF1530454200
    %if ($ - %%insn_00409235) > 6
        %error "LONG_00409235"
    %endif
    times 6 - ($ - %%insn_00409235) db 0
    %%insn_0040923b:
    jmp short 0x40924f ; 0040923B EB12
    %if ($ - %%insn_0040923b) > 2
        %error "LONG_0040923B"
    %endif
    times 2 - ($ - %%insn_0040923b) db 0
    %%insn_0040923d:
    cmp dword [ebp-0x18],0x0 ; 0040923D 837DE800
    %if ($ - %%insn_0040923d) > 4
        %error "LONG_0040923D"
    %endif
    times 4 - ($ - %%insn_0040923d) db 0
    %%insn_00409241:
    jz short 0x409247 ; 00409241 7404
    %if ($ - %%insn_00409241) > 2
        %error "LONG_00409241"
    %endif
    times 2 - ($ - %%insn_00409241) db 0
    db 0x33, 0xC0 ; 00409243 33C0 | xor eax,eax | encoding preserved
    %%insn_00409245:
    jmp short 0x409275 ; 00409245 EB2E
    %if ($ - %%insn_00409245) > 2
        %error "LONG_00409245"
    %endif
    times 2 - ($ - %%insn_00409245) db 0
    %%insn_00409247:
    push dword 0x0 ; 00409247 6A00
    %if ($ - %%insn_00409247) > 2
        %error "LONG_00409247"
    %endif
    times 2 - ($ - %%insn_00409247) db 0
    %%insn_00409249:
    call dword near [0x42452c] ; 00409249 FF152C454200
    %if ($ - %%insn_00409249) > 6
        %error "LONG_00409249"
    %endif
    times 6 - ($ - %%insn_00409249) db 0
    %%insn_0040924f:
    cmp dword [ebp+0x8],0x0 ; 0040924F 837D0800
    %if ($ - %%insn_0040924f) > 4
        %error "LONG_0040924F"
    %endif
    times 4 - ($ - %%insn_0040924f) db 0
    %%insn_00409253:
    jz short 0x409273 ; 00409253 741E
    %if ($ - %%insn_00409253) > 2
        %error "LONG_00409253"
    %endif
    times 2 - ($ - %%insn_00409253) db 0
    %%insn_00409255:
    cmp dword [ebp-0x18],0x0 ; 00409255 837DE800
    %if ($ - %%insn_00409255) > 4
        %error "LONG_00409255"
    %endif
    times 4 - ($ - %%insn_00409255) db 0
    %%insn_00409259:
    jnz short 0x409273 ; 00409259 7518
    %if ($ - %%insn_00409259) > 2
        %error "LONG_00409259"
    %endif
    times 2 - ($ - %%insn_00409259) db 0
    %%insn_0040925b:
    mov ecx,[ebp+0x14] ; 0040925B 8B4D14
    %if ($ - %%insn_0040925b) > 3
        %error "LONG_0040925B"
    %endif
    times 3 - ($ - %%insn_0040925b) db 0
    %%insn_0040925e:
    push ecx ; 0040925E 51
    %if ($ - %%insn_0040925e) > 1
        %error "LONG_0040925E"
    %endif
    times 1 - ($ - %%insn_0040925e) db 0
    %%insn_0040925f:
    mov edx,[ebp+0x10] ; 0040925F 8B5510
    %if ($ - %%insn_0040925f) > 3
        %error "LONG_0040925F"
    %endif
    times 3 - ($ - %%insn_0040925f) db 0
    %%insn_00409262:
    push edx ; 00409262 52
    %if ($ - %%insn_00409262) > 1
        %error "LONG_00409262"
    %endif
    times 1 - ($ - %%insn_00409262) db 0
    %%insn_00409263:
    mov eax,[ebp+0xc] ; 00409263 8B450C
    %if ($ - %%insn_00409263) > 3
        %error "LONG_00409263"
    %endif
    times 3 - ($ - %%insn_00409263) db 0
    %%insn_00409266:
    push eax ; 00409266 50
    %if ($ - %%insn_00409266) > 1
        %error "LONG_00409266"
    %endif
    times 1 - ($ - %%insn_00409266) db 0
    %%insn_00409267:
    mov ecx,[ebp+0x8] ; 00409267 8B4D08
    %if ($ - %%insn_00409267) > 3
        %error "LONG_00409267"
    %endif
    times 3 - ($ - %%insn_00409267) db 0
    %%insn_0040926a:
    push ecx ; 0040926A 51
    %if ($ - %%insn_0040926a) > 1
        %error "LONG_0040926A"
    %endif
    times 1 - ($ - %%insn_0040926a) db 0
    %%insn_0040926b:
    call dword near [0x424528] ; 0040926B FF1528454200
    %if ($ - %%insn_0040926b) > 6
        %error "LONG_0040926B"
    %endif
    times 6 - ($ - %%insn_0040926b) db 0
    %%insn_00409271:
    jmp short 0x409275 ; 00409271 EB02
    %if ($ - %%insn_00409271) > 2
        %error "LONG_00409271"
    %endif
    times 2 - ($ - %%insn_00409271) db 0
    db 0x33, 0xC0 ; 00409273 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 00409275 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00409277:
    pop ebp ; 00409277 5D
    %if ($ - %%insn_00409277) > 1
        %error "LONG_00409277"
    %endif
    times 1 - ($ - %%insn_00409277) db 0
    %%insn_00409278:
    ret word 0x10 ; 00409278 C21000
    %if ($ - %%insn_00409278) > 3
        %error "LONG_00409278"
    %endif
    times 3 - ($ - %%insn_00409278) db 0
    %if ($ - %%fragment_start) != 843
        %error "function fragment size drift: 00408F30"
    %endif
%endmacro
