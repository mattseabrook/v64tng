; PE virtual entry 00408DF6
; Ghidra working symbol: FUN_00408df6
; Verified exact-filename open and little-endian 9267h VDX magic check. Unlike
; DOS V, this path neither strips a dot suffix nor appends .vdx.
; Generated losslessly; preserve byte identity after edits.

%macro emit_open_loose_vdx_part_00 0
    %%fragment_start:
open_loose_vdx:
    %%insn_00408df6:
    push ebp ; 00408DF6 55
    %if ($ - %%insn_00408df6) > 1
        %error "LONG_00408DF6"
    %endif
    times 1 - ($ - %%insn_00408df6) db 0
    db 0x8B, 0xEC ; 00408DF7 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408df9:
    push ecx ; 00408DF9 51
    %if ($ - %%insn_00408df9) > 1
        %error "LONG_00408DF9"
    %endif
    times 1 - ($ - %%insn_00408df9) db 0
    %%insn_00408dfa:
    mov dword [0x421404],0x4 ; 00408DFA C7050414420004000000
    %if ($ - %%insn_00408dfa) > 10
        %error "LONG_00408DFA"
    %endif
    times 10 - ($ - %%insn_00408dfa) db 0
    %%insn_00408e04:
    push dword 0x10000 ; 00408E04 6800000100
    %if ($ - %%insn_00408e04) > 5
        %error "LONG_00408E04"
    %endif
    times 5 - ($ - %%insn_00408e04) db 0
    %%insn_00408e09:
    push dword 0x0 ; 00408E09 6A00
    %if ($ - %%insn_00408e09) > 2
        %error "LONG_00408E09"
    %endif
    times 2 - ($ - %%insn_00408e09) db 0
    %%insn_00408e0b:
    mov eax,[ebp+0x8] ; 00408E0B 8B4508
    %if ($ - %%insn_00408e0b) > 3
        %error "LONG_00408E0B"
    %endif
    times 3 - ($ - %%insn_00408e0b) db 0
    %%insn_00408e0e:
    push eax ; 00408E0E 50
    %if ($ - %%insn_00408e0e) > 1
        %error "LONG_00408E0E"
    %endif
    times 1 - ($ - %%insn_00408e0e) db 0
    %%insn_00408e0f:
    call dword near [0x424598] ; 00408E0F FF1598454200
    %if ($ - %%insn_00408e0f) > 6
        %error "LONG_00408E0F"
    %endif
    times 6 - ($ - %%insn_00408e0f) db 0
    %%insn_00408e15:
    mov [0x4213c0],eax ; 00408E15 A3C0134200
    %if ($ - %%insn_00408e15) > 5
        %error "LONG_00408E15"
    %endif
    times 5 - ($ - %%insn_00408e15) db 0
    %%insn_00408e1a:
    cmp dword [0x4213c0],0x0 ; 00408E1A 833DC013420000
    %if ($ - %%insn_00408e1a) > 7
        %error "LONG_00408E1A"
    %endif
    times 7 - ($ - %%insn_00408e1a) db 0
    %%insn_00408e21:
    jnz short 0x408e2f ; 00408E21 750C
    %if ($ - %%insn_00408e21) > 2
        %error "LONG_00408E21"
    %endif
    times 2 - ($ - %%insn_00408e21) db 0
    %%insn_00408e23:
    push dword 0x1 ; 00408E23 6A01
    %if ($ - %%insn_00408e23) > 2
        %error "LONG_00408E23"
    %endif
    times 2 - ($ - %%insn_00408e23) db 0
    %%insn_00408e25:
    push dword 0x7 ; 00408E25 6A07
    %if ($ - %%insn_00408e25) > 2
        %error "LONG_00408E25"
    %endif
    times 2 - ($ - %%insn_00408e25) db 0
    %%insn_00408e27:
    call 0x409691 ; 00408E27 E865080000
    %if ($ - %%insn_00408e27) > 5
        %error "LONG_00408E27"
    %endif
    times 5 - ($ - %%insn_00408e27) db 0
    %%insn_00408e2c:
    add esp,0x8 ; 00408E2C 83C408
    %if ($ - %%insn_00408e2c) > 3
        %error "LONG_00408E2C"
    %endif
    times 3 - ($ - %%insn_00408e2c) db 0
    %%insn_00408e2f:
    push dword 0x10 ; 00408E2F 6A10
    %if ($ - %%insn_00408e2f) > 2
        %error "LONG_00408E2F"
    %endif
    times 2 - ($ - %%insn_00408e2f) db 0
    %%insn_00408e31:
    push dword 0x4213c8 ; 00408E31 68C8134200
    %if ($ - %%insn_00408e31) > 5
        %error "LONG_00408E31"
    %endif
    times 5 - ($ - %%insn_00408e31) db 0
    %%insn_00408e36:
    mov ecx,[0x4213c0] ; 00408E36 8B0DC0134200
    %if ($ - %%insn_00408e36) > 6
        %error "LONG_00408E36"
    %endif
    times 6 - ($ - %%insn_00408e36) db 0
    %%insn_00408e3c:
    push ecx ; 00408E3C 51
    %if ($ - %%insn_00408e3c) > 1
        %error "LONG_00408E3C"
    %endif
    times 1 - ($ - %%insn_00408e3c) db 0
    %%insn_00408e3d:
    call dword near [0x424594] ; 00408E3D FF1594454200
    %if ($ - %%insn_00408e3d) > 6
        %error "LONG_00408E3D"
    %endif
    times 6 - ($ - %%insn_00408e3d) db 0
    db 0x33, 0xD2 ; 00408E43 33D2 | xor edx,edx | encoding preserved
    %%insn_00408e45:
    mov dx,[0x4213c8] ; 00408E45 668B15C8134200
    %if ($ - %%insn_00408e45) > 7
        %error "LONG_00408E45"
    %endif
    times 7 - ($ - %%insn_00408e45) db 0
    %%insn_00408e4c:
    mov [ebp-0x4],edx ; 00408E4C 8955FC
    %if ($ - %%insn_00408e4c) > 3
        %error "LONG_00408E4C"
    %endif
    times 3 - ($ - %%insn_00408e4c) db 0
    %%insn_00408e4f:
    cmp dword [ebp-0x4],0x9267 ; 00408E4F 817DFC67920000
    %if ($ - %%insn_00408e4f) > 7
        %error "LONG_00408E4F"
    %endif
    times 7 - ($ - %%insn_00408e4f) db 0
    %%insn_00408e56:
    jz short 0x408e5a ; 00408E56 7402
    %if ($ - %%insn_00408e56) > 2
        %error "LONG_00408E56"
    %endif
    times 2 - ($ - %%insn_00408e56) db 0
    %%insn_00408e58:
    jmp short 0x408e71 ; 00408E58 EB17
    %if ($ - %%insn_00408e58) > 2
        %error "LONG_00408E58"
    %endif
    times 2 - ($ - %%insn_00408e58) db 0
    %%insn_00408e5a:
    push dword 0x4213c0 ; 00408E5A 68C0134200
    %if ($ - %%insn_00408e5a) > 5
        %error "LONG_00408E5A"
    %endif
    times 5 - ($ - %%insn_00408e5a) db 0
    %%insn_00408e5f:
    call 0x40c1bd ; 00408E5F E859330000
    %if ($ - %%insn_00408e5f) > 5
        %error "LONG_00408E5F"
    %endif
    times 5 - ($ - %%insn_00408e5f) db 0
    %%insn_00408e64:
    add esp,0x4 ; 00408E64 83C404
    %if ($ - %%insn_00408e64) > 3
        %error "LONG_00408E64"
    %endif
    times 3 - ($ - %%insn_00408e64) db 0
    %%insn_00408e67:
    mov dword [0x4213c4],0x40c261 ; 00408E67 C705C413420061C24000
    %if ($ - %%insn_00408e67) > 10
        %error "LONG_00408E67"
    %endif
    times 10 - ($ - %%insn_00408e67) db 0
    db 0x8B, 0xE5 ; 00408E71 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00408e73:
    pop ebp ; 00408E73 5D
    %if ($ - %%insn_00408e73) > 1
        %error "LONG_00408E73"
    %endif
    times 1 - ($ - %%insn_00408e73) db 0
    %%insn_00408e74:
    ret ; 00408E74 C3
    %if ($ - %%insn_00408e74) > 1
        %error "LONG_00408E74"
    %endif
    times 1 - ($ - %%insn_00408e74) db 0
    %if ($ - %%fragment_start) != 127
        %error "function fragment size drift: 00408DF6"
    %endif
%endmacro
