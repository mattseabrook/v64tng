; PE virtual entry 00413DB0
; Ghidra working symbol: FUN_00413db0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00413db0_part_00 0
    %%fragment_start:
func_00413db0:
    %%insn_00413db0:
    push ebx ; 00413DB0 53
    %if ($ - %%insn_00413db0) > 1
        %error "LONG_00413DB0"
    %endif
    times 1 - ($ - %%insn_00413db0) db 0
    %%insn_00413db1:
    mov ebx,[esp+0x8] ; 00413DB1 8B5C2408
    %if ($ - %%insn_00413db1) > 4
        %error "LONG_00413DB1"
    %endif
    times 4 - ($ - %%insn_00413db1) db 0
    %%insn_00413db5:
    push esi ; 00413DB5 56
    %if ($ - %%insn_00413db5) > 1
        %error "LONG_00413DB5"
    %endif
    times 1 - ($ - %%insn_00413db5) db 0
    db 0x33, 0xF6 ; 00413DB6 33F6 | xor esi,esi | encoding preserved
    %%insn_00413db8:
    mov si,[0x4211ac] ; 00413DB8 668B35AC114200
    %if ($ - %%insn_00413db8) > 7
        %error "LONG_00413DB8"
    %endif
    times 7 - ($ - %%insn_00413db8) db 0
    %%insn_00413dbf:
    test ebx,ebx ; 00413DBF 85DB
    %if ($ - %%insn_00413dbf) > 2
        %error "LONG_00413DBF"
    %endif
    times 2 - ($ - %%insn_00413dbf) db 0
    %%insn_00413dc1:
    jnz short 0x413dc9 ; 00413DC1 7506
    %if ($ - %%insn_00413dc1) > 2
        %error "LONG_00413DC1"
    %endif
    times 2 - ($ - %%insn_00413dc1) db 0
    %%insn_00413dc3:
    or eax,0xffffffffffffffff ; 00413DC3 83C8FF
    %if ($ - %%insn_00413dc3) > 3
        %error "LONG_00413DC3"
    %endif
    times 3 - ($ - %%insn_00413dc3) db 0
    %%insn_00413dc6:
    pop esi ; 00413DC6 5E
    %if ($ - %%insn_00413dc6) > 1
        %error "LONG_00413DC6"
    %endif
    times 1 - ($ - %%insn_00413dc6) db 0
    %%insn_00413dc7:
    pop ebx ; 00413DC7 5B
    %if ($ - %%insn_00413dc7) > 1
        %error "LONG_00413DC7"
    %endif
    times 1 - ($ - %%insn_00413dc7) db 0
    %%insn_00413dc8:
    ret ; 00413DC8 C3
    %if ($ - %%insn_00413dc8) > 1
        %error "LONG_00413DC8"
    %endif
    times 1 - ($ - %%insn_00413dc8) db 0
    %%insn_00413dc9:
    push edi ; 00413DC9 57
    %if ($ - %%insn_00413dc9) > 1
        %error "LONG_00413DC9"
    %endif
    times 1 - ($ - %%insn_00413dc9) db 0
    %%insn_00413dca:
    lea eax,[ebx+0xc] ; 00413DCA 8D430C
    %if ($ - %%insn_00413dca) > 3
        %error "LONG_00413DCA"
    %endif
    times 3 - ($ - %%insn_00413dca) db 0
    %%insn_00413dcd:
    push ebp ; 00413DCD 55
    %if ($ - %%insn_00413dcd) > 1
        %error "LONG_00413DCD"
    %endif
    times 1 - ($ - %%insn_00413dcd) db 0
    %%insn_00413dce:
    push eax ; 00413DCE 50
    %if ($ - %%insn_00413dce) > 1
        %error "LONG_00413DCE"
    %endif
    times 1 - ($ - %%insn_00413dce) db 0
    %%insn_00413dcf:
    push dword 0x15 ; 00413DCF 6A15
    %if ($ - %%insn_00413dcf) > 2
        %error "LONG_00413DCF"
    %endif
    times 2 - ($ - %%insn_00413dcf) db 0
    %%insn_00413dd1:
    push esi ; 00413DD1 56
    %if ($ - %%insn_00413dd1) > 1
        %error "LONG_00413DD1"
    %endif
    times 1 - ($ - %%insn_00413dd1) db 0
    %%insn_00413dd2:
    push dword 0x1 ; 00413DD2 6A01
    %if ($ - %%insn_00413dd2) > 2
        %error "LONG_00413DD2"
    %endif
    times 2 - ($ - %%insn_00413dd2) db 0
    %%insn_00413dd4:
    call 0x4169f0 ; 00413DD4 E8172C0000
    %if ($ - %%insn_00413dd4) > 5
        %error "LONG_00413DD4"
    %endif
    times 5 - ($ - %%insn_00413dd4) db 0
    %%insn_00413dd9:
    add esp,0x10 ; 00413DD9 83C410
    %if ($ - %%insn_00413dd9) > 3
        %error "LONG_00413DD9"
    %endif
    times 3 - ($ - %%insn_00413dd9) db 0
    %%insn_00413ddc:
    lea ecx,[ebx+0x10] ; 00413DDC 8D4B10
    %if ($ - %%insn_00413ddc) > 3
        %error "LONG_00413DDC"
    %endif
    times 3 - ($ - %%insn_00413ddc) db 0
    db 0x8B, 0xF8 ; 00413DDF 8BF8 | mov edi,eax | encoding preserved
    %%insn_00413de1:
    push ecx ; 00413DE1 51
    %if ($ - %%insn_00413de1) > 1
        %error "LONG_00413DE1"
    %endif
    times 1 - ($ - %%insn_00413de1) db 0
    %%insn_00413de2:
    push dword 0x14 ; 00413DE2 6A14
    %if ($ - %%insn_00413de2) > 2
        %error "LONG_00413DE2"
    %endif
    times 2 - ($ - %%insn_00413de2) db 0
    %%insn_00413de4:
    push esi ; 00413DE4 56
    %if ($ - %%insn_00413de4) > 1
        %error "LONG_00413DE4"
    %endif
    times 1 - ($ - %%insn_00413de4) db 0
    %%insn_00413de5:
    push dword 0x1 ; 00413DE5 6A01
    %if ($ - %%insn_00413de5) > 2
        %error "LONG_00413DE5"
    %endif
    times 2 - ($ - %%insn_00413de5) db 0
    %%insn_00413de7:
    call 0x4169f0 ; 00413DE7 E8042C0000
    %if ($ - %%insn_00413de7) > 5
        %error "LONG_00413DE7"
    %endif
    times 5 - ($ - %%insn_00413de7) db 0
    %%insn_00413dec:
    add esp,0x10 ; 00413DEC 83C410
    %if ($ - %%insn_00413dec) > 3
        %error "LONG_00413DEC"
    %endif
    times 3 - ($ - %%insn_00413dec) db 0
    %%insn_00413def:
    lea edx,[ebx+0x14] ; 00413DEF 8D5314
    %if ($ - %%insn_00413def) > 3
        %error "LONG_00413DEF"
    %endif
    times 3 - ($ - %%insn_00413def) db 0
    db 0x0B, 0xF8 ; 00413DF2 0BF8 | or edi,eax | encoding preserved
    %%insn_00413df4:
    push edx ; 00413DF4 52
    %if ($ - %%insn_00413df4) > 1
        %error "LONG_00413DF4"
    %endif
    times 1 - ($ - %%insn_00413df4) db 0
    %%insn_00413df5:
    push dword 0x16 ; 00413DF5 6A16
    %if ($ - %%insn_00413df5) > 2
        %error "LONG_00413DF5"
    %endif
    times 2 - ($ - %%insn_00413df5) db 0
    %%insn_00413df7:
    push esi ; 00413DF7 56
    %if ($ - %%insn_00413df7) > 1
        %error "LONG_00413DF7"
    %endif
    times 1 - ($ - %%insn_00413df7) db 0
    %%insn_00413df8:
    push dword 0x1 ; 00413DF8 6A01
    %if ($ - %%insn_00413df8) > 2
        %error "LONG_00413DF8"
    %endif
    times 2 - ($ - %%insn_00413df8) db 0
    %%insn_00413dfa:
    call 0x4169f0 ; 00413DFA E8F12B0000
    %if ($ - %%insn_00413dfa) > 5
        %error "LONG_00413DFA"
    %endif
    times 5 - ($ - %%insn_00413dfa) db 0
    %%insn_00413dff:
    add esp,0x10 ; 00413DFF 83C410
    %if ($ - %%insn_00413dff) > 3
        %error "LONG_00413DFF"
    %endif
    times 3 - ($ - %%insn_00413dff) db 0
    db 0x0B, 0xF8 ; 00413E02 0BF8 | or edi,eax | encoding preserved
    %%insn_00413e04:
    lea eax,[ebx+0x18] ; 00413E04 8D4318
    %if ($ - %%insn_00413e04) > 3
        %error "LONG_00413E04"
    %endif
    times 3 - ($ - %%insn_00413e04) db 0
    %%insn_00413e07:
    push eax ; 00413E07 50
    %if ($ - %%insn_00413e07) > 1
        %error "LONG_00413E07"
    %endif
    times 1 - ($ - %%insn_00413e07) db 0
    %%insn_00413e08:
    push dword 0x17 ; 00413E08 6A17
    %if ($ - %%insn_00413e08) > 2
        %error "LONG_00413E08"
    %endif
    times 2 - ($ - %%insn_00413e08) db 0
    %%insn_00413e0a:
    push esi ; 00413E0A 56
    %if ($ - %%insn_00413e0a) > 1
        %error "LONG_00413E0A"
    %endif
    times 1 - ($ - %%insn_00413e0a) db 0
    %%insn_00413e0b:
    push dword 0x1 ; 00413E0B 6A01
    %if ($ - %%insn_00413e0b) > 2
        %error "LONG_00413E0B"
    %endif
    times 2 - ($ - %%insn_00413e0b) db 0
    %%insn_00413e0d:
    call 0x4169f0 ; 00413E0D E8DE2B0000
    %if ($ - %%insn_00413e0d) > 5
        %error "LONG_00413E0D"
    %endif
    times 5 - ($ - %%insn_00413e0d) db 0
    %%insn_00413e12:
    add esp,0x10 ; 00413E12 83C410
    %if ($ - %%insn_00413e12) > 3
        %error "LONG_00413E12"
    %endif
    times 3 - ($ - %%insn_00413e12) db 0
    %%insn_00413e15:
    lea ebp,[ebx+0x1c] ; 00413E15 8D6B1C
    %if ($ - %%insn_00413e15) > 3
        %error "LONG_00413E15"
    %endif
    times 3 - ($ - %%insn_00413e15) db 0
    db 0x0B, 0xF8 ; 00413E18 0BF8 | or edi,eax | encoding preserved
    %%insn_00413e1a:
    push ebp ; 00413E1A 55
    %if ($ - %%insn_00413e1a) > 1
        %error "LONG_00413E1A"
    %endif
    times 1 - ($ - %%insn_00413e1a) db 0
    %%insn_00413e1b:
    push dword 0x18 ; 00413E1B 6A18
    %if ($ - %%insn_00413e1b) > 2
        %error "LONG_00413E1B"
    %endif
    times 2 - ($ - %%insn_00413e1b) db 0
    %%insn_00413e1d:
    push esi ; 00413E1D 56
    %if ($ - %%insn_00413e1d) > 1
        %error "LONG_00413E1D"
    %endif
    times 1 - ($ - %%insn_00413e1d) db 0
    %%insn_00413e1e:
    push dword 0x1 ; 00413E1E 6A01
    %if ($ - %%insn_00413e1e) > 2
        %error "LONG_00413E1E"
    %endif
    times 2 - ($ - %%insn_00413e1e) db 0
    %%insn_00413e20:
    call 0x4169f0 ; 00413E20 E8CB2B0000
    %if ($ - %%insn_00413e20) > 5
        %error "LONG_00413E20"
    %endif
    times 5 - ($ - %%insn_00413e20) db 0
    %%insn_00413e25:
    mov ecx,[ebp+0x0] ; 00413E25 8B4D00
    %if ($ - %%insn_00413e25) > 3
        %error "LONG_00413E25"
    %endif
    times 3 - ($ - %%insn_00413e25) db 0
    %%insn_00413e28:
    add esp,0x10 ; 00413E28 83C410
    %if ($ - %%insn_00413e28) > 3
        %error "LONG_00413E28"
    %endif
    times 3 - ($ - %%insn_00413e28) db 0
    db 0x0B, 0xF8 ; 00413E2B 0BF8 | or edi,eax | encoding preserved
    %%insn_00413e2d:
    push ecx ; 00413E2D 51
    %if ($ - %%insn_00413e2d) > 1
        %error "LONG_00413E2D"
    %endif
    times 1 - ($ - %%insn_00413e2d) db 0
    %%insn_00413e2e:
    call 0x413f00 ; 00413E2E E8CD000000
    %if ($ - %%insn_00413e2e) > 5
        %error "LONG_00413E2E"
    %endif
    times 5 - ($ - %%insn_00413e2e) db 0
    %%insn_00413e33:
    add esp,0x4 ; 00413E33 83C404
    %if ($ - %%insn_00413e33) > 3
        %error "LONG_00413E33"
    %endif
    times 3 - ($ - %%insn_00413e33) db 0
    %%insn_00413e36:
    lea edx,[ebx+0x20] ; 00413E36 8D5320
    %if ($ - %%insn_00413e36) > 3
        %error "LONG_00413E36"
    %endif
    times 3 - ($ - %%insn_00413e36) db 0
    %%insn_00413e39:
    push edx ; 00413E39 52
    %if ($ - %%insn_00413e39) > 1
        %error "LONG_00413E39"
    %endif
    times 1 - ($ - %%insn_00413e39) db 0
    %%insn_00413e3a:
    push dword 0x50 ; 00413E3A 6A50
    %if ($ - %%insn_00413e3a) > 2
        %error "LONG_00413E3A"
    %endif
    times 2 - ($ - %%insn_00413e3a) db 0
    %%insn_00413e3c:
    push esi ; 00413E3C 56
    %if ($ - %%insn_00413e3c) > 1
        %error "LONG_00413E3C"
    %endif
    times 1 - ($ - %%insn_00413e3c) db 0
    %%insn_00413e3d:
    push dword 0x1 ; 00413E3D 6A01
    %if ($ - %%insn_00413e3d) > 2
        %error "LONG_00413E3D"
    %endif
    times 2 - ($ - %%insn_00413e3d) db 0
    %%insn_00413e3f:
    call 0x4169f0 ; 00413E3F E8AC2B0000
    %if ($ - %%insn_00413e3f) > 5
        %error "LONG_00413E3F"
    %endif
    times 5 - ($ - %%insn_00413e3f) db 0
    %%insn_00413e44:
    add esp,0x10 ; 00413E44 83C410
    %if ($ - %%insn_00413e44) > 3
        %error "LONG_00413E44"
    %endif
    times 3 - ($ - %%insn_00413e44) db 0
    db 0x0B, 0xF8 ; 00413E47 0BF8 | or edi,eax | encoding preserved
    %%insn_00413e49:
    lea eax,[ebx+0x24] ; 00413E49 8D4324
    %if ($ - %%insn_00413e49) > 3
        %error "LONG_00413E49"
    %endif
    times 3 - ($ - %%insn_00413e49) db 0
    %%insn_00413e4c:
    push eax ; 00413E4C 50
    %if ($ - %%insn_00413e4c) > 1
        %error "LONG_00413E4C"
    %endif
    times 1 - ($ - %%insn_00413e4c) db 0
    %%insn_00413e4d:
    push dword 0x51 ; 00413E4D 6A51
    %if ($ - %%insn_00413e4d) > 2
        %error "LONG_00413E4D"
    %endif
    times 2 - ($ - %%insn_00413e4d) db 0
    %%insn_00413e4f:
    push esi ; 00413E4F 56
    %if ($ - %%insn_00413e4f) > 1
        %error "LONG_00413E4F"
    %endif
    times 1 - ($ - %%insn_00413e4f) db 0
    %%insn_00413e50:
    push dword 0x1 ; 00413E50 6A01
    %if ($ - %%insn_00413e50) > 2
        %error "LONG_00413E50"
    %endif
    times 2 - ($ - %%insn_00413e50) db 0
    %%insn_00413e52:
    call 0x4169f0 ; 00413E52 E8992B0000
    %if ($ - %%insn_00413e52) > 5
        %error "LONG_00413E52"
    %endif
    times 5 - ($ - %%insn_00413e52) db 0
    %%insn_00413e57:
    add esp,0x10 ; 00413E57 83C410
    %if ($ - %%insn_00413e57) > 3
        %error "LONG_00413E57"
    %endif
    times 3 - ($ - %%insn_00413e57) db 0
    %%insn_00413e5a:
    lea ecx,[ebx+0x28] ; 00413E5A 8D4B28
    %if ($ - %%insn_00413e5a) > 3
        %error "LONG_00413E5A"
    %endif
    times 3 - ($ - %%insn_00413e5a) db 0
    db 0x0B, 0xF8 ; 00413E5D 0BF8 | or edi,eax | encoding preserved
    %%insn_00413e5f:
    push ecx ; 00413E5F 51
    %if ($ - %%insn_00413e5f) > 1
        %error "LONG_00413E5F"
    %endif
    times 1 - ($ - %%insn_00413e5f) db 0
    %%insn_00413e60:
    push dword 0x1a ; 00413E60 6A1A
    %if ($ - %%insn_00413e60) > 2
        %error "LONG_00413E60"
    %endif
    times 2 - ($ - %%insn_00413e60) db 0
    %%insn_00413e62:
    push esi ; 00413E62 56
    %if ($ - %%insn_00413e62) > 1
        %error "LONG_00413E62"
    %endif
    times 1 - ($ - %%insn_00413e62) db 0
    %%insn_00413e63:
    push dword 0x0 ; 00413E63 6A00
    %if ($ - %%insn_00413e63) > 2
        %error "LONG_00413E63"
    %endif
    times 2 - ($ - %%insn_00413e63) db 0
    %%insn_00413e65:
    call 0x4169f0 ; 00413E65 E8862B0000
    %if ($ - %%insn_00413e65) > 5
        %error "LONG_00413E65"
    %endif
    times 5 - ($ - %%insn_00413e65) db 0
    %%insn_00413e6a:
    add esp,0x10 ; 00413E6A 83C410
    %if ($ - %%insn_00413e6a) > 3
        %error "LONG_00413E6A"
    %endif
    times 3 - ($ - %%insn_00413e6a) db 0
    %%insn_00413e6d:
    lea edx,[ebx+0x29] ; 00413E6D 8D5329
    %if ($ - %%insn_00413e6d) > 3
        %error "LONG_00413E6D"
    %endif
    times 3 - ($ - %%insn_00413e6d) db 0
    db 0x0B, 0xF8 ; 00413E70 0BF8 | or edi,eax | encoding preserved
    %%insn_00413e72:
    push edx ; 00413E72 52
    %if ($ - %%insn_00413e72) > 1
        %error "LONG_00413E72"
    %endif
    times 1 - ($ - %%insn_00413e72) db 0
    %%insn_00413e73:
    push dword 0x19 ; 00413E73 6A19
    %if ($ - %%insn_00413e73) > 2
        %error "LONG_00413E73"
    %endif
    times 2 - ($ - %%insn_00413e73) db 0
    %%insn_00413e75:
    push esi ; 00413E75 56
    %if ($ - %%insn_00413e75) > 1
        %error "LONG_00413E75"
    %endif
    times 1 - ($ - %%insn_00413e75) db 0
    %%insn_00413e76:
    push dword 0x0 ; 00413E76 6A00
    %if ($ - %%insn_00413e76) > 2
        %error "LONG_00413E76"
    %endif
    times 2 - ($ - %%insn_00413e76) db 0
    %%insn_00413e78:
    call 0x4169f0 ; 00413E78 E8732B0000
    %if ($ - %%insn_00413e78) > 5
        %error "LONG_00413E78"
    %endif
    times 5 - ($ - %%insn_00413e78) db 0
    %%insn_00413e7d:
    add esp,0x10 ; 00413E7D 83C410
    %if ($ - %%insn_00413e7d) > 3
        %error "LONG_00413E7D"
    %endif
    times 3 - ($ - %%insn_00413e7d) db 0
    db 0x0B, 0xF8 ; 00413E80 0BF8 | or edi,eax | encoding preserved
    %%insn_00413e82:
    lea eax,[ebx+0x2a] ; 00413E82 8D432A
    %if ($ - %%insn_00413e82) > 3
        %error "LONG_00413E82"
    %endif
    times 3 - ($ - %%insn_00413e82) db 0
    %%insn_00413e85:
    push eax ; 00413E85 50
    %if ($ - %%insn_00413e85) > 1
        %error "LONG_00413E85"
    %endif
    times 1 - ($ - %%insn_00413e85) db 0
    %%insn_00413e86:
    push dword 0x54 ; 00413E86 6A54
    %if ($ - %%insn_00413e86) > 2
        %error "LONG_00413E86"
    %endif
    times 2 - ($ - %%insn_00413e86) db 0
    %%insn_00413e88:
    push esi ; 00413E88 56
    %if ($ - %%insn_00413e88) > 1
        %error "LONG_00413E88"
    %endif
    times 1 - ($ - %%insn_00413e88) db 0
    %%insn_00413e89:
    push dword 0x0 ; 00413E89 6A00
    %if ($ - %%insn_00413e89) > 2
        %error "LONG_00413E89"
    %endif
    times 2 - ($ - %%insn_00413e89) db 0
    %%insn_00413e8b:
    call 0x4169f0 ; 00413E8B E8602B0000
    %if ($ - %%insn_00413e8b) > 5
        %error "LONG_00413E8B"
    %endif
    times 5 - ($ - %%insn_00413e8b) db 0
    %%insn_00413e90:
    add esp,0x10 ; 00413E90 83C410
    %if ($ - %%insn_00413e90) > 3
        %error "LONG_00413E90"
    %endif
    times 3 - ($ - %%insn_00413e90) db 0
    %%insn_00413e93:
    lea ecx,[ebx+0x2b] ; 00413E93 8D4B2B
    %if ($ - %%insn_00413e93) > 3
        %error "LONG_00413E93"
    %endif
    times 3 - ($ - %%insn_00413e93) db 0
    db 0x0B, 0xF8 ; 00413E96 0BF8 | or edi,eax | encoding preserved
    %%insn_00413e98:
    push ecx ; 00413E98 51
    %if ($ - %%insn_00413e98) > 1
        %error "LONG_00413E98"
    %endif
    times 1 - ($ - %%insn_00413e98) db 0
    %%insn_00413e99:
    push dword 0x55 ; 00413E99 6A55
    %if ($ - %%insn_00413e99) > 2
        %error "LONG_00413E99"
    %endif
    times 2 - ($ - %%insn_00413e99) db 0
    %%insn_00413e9b:
    push esi ; 00413E9B 56
    %if ($ - %%insn_00413e9b) > 1
        %error "LONG_00413E9B"
    %endif
    times 1 - ($ - %%insn_00413e9b) db 0
    %%insn_00413e9c:
    push dword 0x0 ; 00413E9C 6A00
    %if ($ - %%insn_00413e9c) > 2
        %error "LONG_00413E9C"
    %endif
    times 2 - ($ - %%insn_00413e9c) db 0
    %%insn_00413e9e:
    call 0x4169f0 ; 00413E9E E84D2B0000
    %if ($ - %%insn_00413e9e) > 5
        %error "LONG_00413E9E"
    %endif
    times 5 - ($ - %%insn_00413e9e) db 0
    %%insn_00413ea3:
    add esp,0x10 ; 00413EA3 83C410
    %if ($ - %%insn_00413ea3) > 3
        %error "LONG_00413EA3"
    %endif
    times 3 - ($ - %%insn_00413ea3) db 0
    %%insn_00413ea6:
    lea edx,[ebx+0x2c] ; 00413EA6 8D532C
    %if ($ - %%insn_00413ea6) > 3
        %error "LONG_00413EA6"
    %endif
    times 3 - ($ - %%insn_00413ea6) db 0
    db 0x0B, 0xF8 ; 00413EA9 0BF8 | or edi,eax | encoding preserved
    %%insn_00413eab:
    push edx ; 00413EAB 52
    %if ($ - %%insn_00413eab) > 1
        %error "LONG_00413EAB"
    %endif
    times 1 - ($ - %%insn_00413eab) db 0
    %%insn_00413eac:
    push dword 0x56 ; 00413EAC 6A56
    %if ($ - %%insn_00413eac) > 2
        %error "LONG_00413EAC"
    %endif
    times 2 - ($ - %%insn_00413eac) db 0
    %%insn_00413eae:
    push esi ; 00413EAE 56
    %if ($ - %%insn_00413eae) > 1
        %error "LONG_00413EAE"
    %endif
    times 1 - ($ - %%insn_00413eae) db 0
    %%insn_00413eaf:
    push dword 0x0 ; 00413EAF 6A00
    %if ($ - %%insn_00413eaf) > 2
        %error "LONG_00413EAF"
    %endif
    times 2 - ($ - %%insn_00413eaf) db 0
    %%insn_00413eb1:
    call 0x4169f0 ; 00413EB1 E83A2B0000
    %if ($ - %%insn_00413eb1) > 5
        %error "LONG_00413EB1"
    %endif
    times 5 - ($ - %%insn_00413eb1) db 0
    %%insn_00413eb6:
    add esp,0x10 ; 00413EB6 83C410
    %if ($ - %%insn_00413eb6) > 3
        %error "LONG_00413EB6"
    %endif
    times 3 - ($ - %%insn_00413eb6) db 0
    db 0x0B, 0xF8 ; 00413EB9 0BF8 | or edi,eax | encoding preserved
    %%insn_00413ebb:
    lea eax,[ebx+0x2d] ; 00413EBB 8D432D
    %if ($ - %%insn_00413ebb) > 3
        %error "LONG_00413EBB"
    %endif
    times 3 - ($ - %%insn_00413ebb) db 0
    %%insn_00413ebe:
    push eax ; 00413EBE 50
    %if ($ - %%insn_00413ebe) > 1
        %error "LONG_00413EBE"
    %endif
    times 1 - ($ - %%insn_00413ebe) db 0
    %%insn_00413ebf:
    push dword 0x57 ; 00413EBF 6A57
    %if ($ - %%insn_00413ebf) > 2
        %error "LONG_00413EBF"
    %endif
    times 2 - ($ - %%insn_00413ebf) db 0
    %%insn_00413ec1:
    push esi ; 00413EC1 56
    %if ($ - %%insn_00413ec1) > 1
        %error "LONG_00413EC1"
    %endif
    times 1 - ($ - %%insn_00413ec1) db 0
    %%insn_00413ec2:
    push dword 0x0 ; 00413EC2 6A00
    %if ($ - %%insn_00413ec2) > 2
        %error "LONG_00413EC2"
    %endif
    times 2 - ($ - %%insn_00413ec2) db 0
    %%insn_00413ec4:
    call 0x4169f0 ; 00413EC4 E8272B0000
    %if ($ - %%insn_00413ec4) > 5
        %error "LONG_00413EC4"
    %endif
    times 5 - ($ - %%insn_00413ec4) db 0
    %%insn_00413ec9:
    add esp,0x10 ; 00413EC9 83C410
    %if ($ - %%insn_00413ec9) > 3
        %error "LONG_00413EC9"
    %endif
    times 3 - ($ - %%insn_00413ec9) db 0
    %%insn_00413ecc:
    lea ecx,[ebx+0x2e] ; 00413ECC 8D4B2E
    %if ($ - %%insn_00413ecc) > 3
        %error "LONG_00413ECC"
    %endif
    times 3 - ($ - %%insn_00413ecc) db 0
    db 0x0B, 0xF8 ; 00413ECF 0BF8 | or edi,eax | encoding preserved
    %%insn_00413ed1:
    push ecx ; 00413ED1 51
    %if ($ - %%insn_00413ed1) > 1
        %error "LONG_00413ED1"
    %endif
    times 1 - ($ - %%insn_00413ed1) db 0
    %%insn_00413ed2:
    push dword 0x52 ; 00413ED2 6A52
    %if ($ - %%insn_00413ed2) > 2
        %error "LONG_00413ED2"
    %endif
    times 2 - ($ - %%insn_00413ed2) db 0
    %%insn_00413ed4:
    push esi ; 00413ED4 56
    %if ($ - %%insn_00413ed4) > 1
        %error "LONG_00413ED4"
    %endif
    times 1 - ($ - %%insn_00413ed4) db 0
    %%insn_00413ed5:
    push dword 0x0 ; 00413ED5 6A00
    %if ($ - %%insn_00413ed5) > 2
        %error "LONG_00413ED5"
    %endif
    times 2 - ($ - %%insn_00413ed5) db 0
    %%insn_00413ed7:
    call 0x4169f0 ; 00413ED7 E8142B0000
    %if ($ - %%insn_00413ed7) > 5
        %error "LONG_00413ED7"
    %endif
    times 5 - ($ - %%insn_00413ed7) db 0
    %%insn_00413edc:
    add esp,0x10 ; 00413EDC 83C410
    %if ($ - %%insn_00413edc) > 3
        %error "LONG_00413EDC"
    %endif
    times 3 - ($ - %%insn_00413edc) db 0
    %%insn_00413edf:
    add ebx,0x2f ; 00413EDF 83C32F
    %if ($ - %%insn_00413edf) > 3
        %error "LONG_00413EDF"
    %endif
    times 3 - ($ - %%insn_00413edf) db 0
    db 0x0B, 0xF8 ; 00413EE2 0BF8 | or edi,eax | encoding preserved
    %%insn_00413ee4:
    push ebx ; 00413EE4 53
    %if ($ - %%insn_00413ee4) > 1
        %error "LONG_00413EE4"
    %endif
    times 1 - ($ - %%insn_00413ee4) db 0
    %%insn_00413ee5:
    push dword 0x53 ; 00413EE5 6A53
    %if ($ - %%insn_00413ee5) > 2
        %error "LONG_00413EE5"
    %endif
    times 2 - ($ - %%insn_00413ee5) db 0
    %%insn_00413ee7:
    push esi ; 00413EE7 56
    %if ($ - %%insn_00413ee7) > 1
        %error "LONG_00413EE7"
    %endif
    times 1 - ($ - %%insn_00413ee7) db 0
    %%insn_00413ee8:
    push dword 0x0 ; 00413EE8 6A00
    %if ($ - %%insn_00413ee8) > 2
        %error "LONG_00413EE8"
    %endif
    times 2 - ($ - %%insn_00413ee8) db 0
    %%insn_00413eea:
    call 0x4169f0 ; 00413EEA E8012B0000
    %if ($ - %%insn_00413eea) > 5
        %error "LONG_00413EEA"
    %endif
    times 5 - ($ - %%insn_00413eea) db 0
    %%insn_00413eef:
    add esp,0x10 ; 00413EEF 83C410
    %if ($ - %%insn_00413eef) > 3
        %error "LONG_00413EEF"
    %endif
    times 3 - ($ - %%insn_00413eef) db 0
    db 0x0B, 0xF8 ; 00413EF2 0BF8 | or edi,eax | encoding preserved
    db 0x8B, 0xC7 ; 00413EF4 8BC7 | mov eax,edi | encoding preserved
    %%insn_00413ef6:
    pop ebp ; 00413EF6 5D
    %if ($ - %%insn_00413ef6) > 1
        %error "LONG_00413EF6"
    %endif
    times 1 - ($ - %%insn_00413ef6) db 0
    %%insn_00413ef7:
    pop edi ; 00413EF7 5F
    %if ($ - %%insn_00413ef7) > 1
        %error "LONG_00413EF7"
    %endif
    times 1 - ($ - %%insn_00413ef7) db 0
    %%insn_00413ef8:
    pop esi ; 00413EF8 5E
    %if ($ - %%insn_00413ef8) > 1
        %error "LONG_00413EF8"
    %endif
    times 1 - ($ - %%insn_00413ef8) db 0
    %%insn_00413ef9:
    pop ebx ; 00413EF9 5B
    %if ($ - %%insn_00413ef9) > 1
        %error "LONG_00413EF9"
    %endif
    times 1 - ($ - %%insn_00413ef9) db 0
    %%insn_00413efa:
    ret ; 00413EFA C3
    %if ($ - %%insn_00413efa) > 1
        %error "LONG_00413EFA"
    %endif
    times 1 - ($ - %%insn_00413efa) db 0
    %if ($ - %%fragment_start) != 331
        %error "function fragment size drift: 00413DB0"
    %endif
%endmacro
