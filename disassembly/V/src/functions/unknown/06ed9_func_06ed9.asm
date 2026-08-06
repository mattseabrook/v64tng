; Linear entry 06ED9 (1000:6ed9)
; Ghidra working symbol: FUN_1000_6ed9
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06ed9_part_00 0
    %%fragment_start:
func_06ed9:
    %%insn_06ed9:
    cmp word [bp-0x2992],0x0 ; 06ED9 83BE6ED600
    %if ($ - %%insn_06ed9) > 5
        %error "LONG_06ED9"
    %endif
    times 5 - ($ - %%insn_06ed9) db 0
    %%insn_06ede:
    jnz short 0x6ee7 ; 06EDE 7507
    %if ($ - %%insn_06ede) > 2
        %error "LONG_06EDE"
    %endif
    times 2 - ($ - %%insn_06ede) db 0
    %%insn_06ee0:
    mov word [bp-0xcea],0x0 ; 06EE0 C78616F30000
    %if ($ - %%insn_06ee0) > 6
        %error "LONG_06EE0"
    %endif
    times 6 - ($ - %%insn_06ee0) db 0
    %%insn_06ee6:
    ret ; 06EE6 C3
    %if ($ - %%insn_06ee6) > 1
        %error "LONG_06EE6"
    %endif
    times 1 - ($ - %%insn_06ee6) db 0
    %%insn_06ee7:
    pusha ; 06EE7 60
    %if ($ - %%insn_06ee7) > 1
        %error "LONG_06EE7"
    %endif
    times 1 - ($ - %%insn_06ee7) db 0
    %%insn_06ee8:
    push ds ; 06EE8 1E
    %if ($ - %%insn_06ee8) > 1
        %error "LONG_06EE8"
    %endif
    times 1 - ($ - %%insn_06ee8) db 0
    %%insn_06ee9:
    mov ds,word [bp-0x2aae] ; 06EE9 8E9E52D5
    %if ($ - %%insn_06ee9) > 4
        %error "LONG_06EE9"
    %endif
    times 4 - ($ - %%insn_06ee9) db 0
    %%insn_06eed:
    cmp word [bp-0xcea],0x1 ; 06EED 83BE16F301
    %if ($ - %%insn_06eed) > 5
        %error "LONG_06EED"
    %endif
    times 5 - ($ - %%insn_06eed) db 0
    %%insn_06ef2:
    jnz short 0x6f5e ; 06EF2 756A
    %if ($ - %%insn_06ef2) > 2
        %error "LONG_06EF2"
    %endif
    times 2 - ($ - %%insn_06ef2) db 0
    %%insn_06ef4:
    mov ax,[0xd556] ; 06EF4 A156D5
    %if ($ - %%insn_06ef4) > 3
        %error "LONG_06EF4"
    %endif
    times 3 - ($ - %%insn_06ef4) db 0
    %%insn_06ef7:
    mov word [0xf302],0x0 ; 06EF7 C70602F30000
    %if ($ - %%insn_06ef7) > 6
        %error "LONG_06EF7"
    %endif
    times 6 - ($ - %%insn_06ef7) db 0
    %%insn_06efd:
    mov word [0xf304],0x0 ; 06EFD C70604F30000
    %if ($ - %%insn_06efd) > 6
        %error "LONG_06EFD"
    %endif
    times 6 - ($ - %%insn_06efd) db 0
    %%insn_06f03:
    mov [0xf306],ax ; 06F03 A306F3
    %if ($ - %%insn_06f03) > 3
        %error "LONG_06F03"
    %endif
    times 3 - ($ - %%insn_06f03) db 0
    %%insn_06f06:
    mov ax,[0xf30e] ; 06F06 A10EF3
    %if ($ - %%insn_06f06) > 3
        %error "LONG_06F06"
    %endif
    times 3 - ($ - %%insn_06f06) db 0
    %%insn_06f09:
    cmp word [0xf30e],0x0 ; 06F09 833E0EF300
    %if ($ - %%insn_06f09) > 5
        %error "LONG_06F09"
    %endif
    times 5 - ($ - %%insn_06f09) db 0
    %%insn_06f0e:
    jnz short 0x6f16 ; 06F0E 7506
    %if ($ - %%insn_06f0e) > 2
        %error "LONG_06F0E"
    %endif
    times 2 - ($ - %%insn_06f0e) db 0
    %%insn_06f10:
    mov ax,0xb90 ; 06F10 B8900B
    %if ($ - %%insn_06f10) > 3
        %error "LONG_06F10"
    %endif
    times 3 - ($ - %%insn_06f10) db 0
    %%insn_06f13:
    jmp 0x5ced ; 06F13 E9D7ED
    %if ($ - %%insn_06f13) > 3
        %error "LONG_06F13"
    %endif
    times 3 - ($ - %%insn_06f13) db 0
    %%insn_06f16:
    mov [0xf308],ax ; 06F16 A308F3
    %if ($ - %%insn_06f16) > 3
        %error "LONG_06F16"
    %endif
    times 3 - ($ - %%insn_06f16) db 0
    db 0x66, 0x33, 0xC0 ; 06F19 6633C0 | xor eax,eax | encoding preserved
    %%insn_06f1c:
    mov ax,[0xf314] ; 06F1C A114F3
    %if ($ - %%insn_06f1c) > 3
        %error "LONG_06F1C"
    %endif
    times 3 - ($ - %%insn_06f1c) db 0
    %%insn_06f1f:
    mov ecx,0x400 ; 06F1F 66B900040000
    %if ($ - %%insn_06f1f) > 6
        %error "LONG_06F1F"
    %endif
    times 6 - ($ - %%insn_06f1f) db 0
    %%insn_06f25:
    mul ecx ; 06F25 66F7E1
    %if ($ - %%insn_06f25) > 3
        %error "LONG_06F25"
    %endif
    times 3 - ($ - %%insn_06f25) db 0
    %%insn_06f28:
    mov [0xf30a],eax ; 06F28 66A30AF3
    %if ($ - %%insn_06f28) > 4
        %error "LONG_06F28"
    %endif
    times 4 - ($ - %%insn_06f28) db 0
    %%insn_06f2c:
    mov bx,[0xf318] ; 06F2C 8B1E18F3
    %if ($ - %%insn_06f2c) > 4
        %error "LONG_06F2C"
    %endif
    times 4 - ($ - %%insn_06f2c) db 0
    %%insn_06f30:
    mov [bx+0x2],eax ; 06F30 66894702
    %if ($ - %%insn_06f30) > 4
        %error "LONG_06F30"
    %endif
    times 4 - ($ - %%insn_06f30) db 0
    %%insn_06f34:
    mov eax,0xcb20 ; 06F34 66B820CB0000
    %if ($ - %%insn_06f34) > 6
        %error "LONG_06F34"
    %endif
    times 6 - ($ - %%insn_06f34) db 0
    %%insn_06f3a:
    mov [0xf2fe],eax ; 06F3A 66A3FEF2
    %if ($ - %%insn_06f3a) > 4
        %error "LONG_06F3A"
    %endif
    times 4 - ($ - %%insn_06f3a) db 0
    %%insn_06f3e:
    mov ah,0xb ; 06F3E B40B
    %if ($ - %%insn_06f3e) > 2
        %error "LONG_06F3E"
    %endif
    times 2 - ($ - %%insn_06f3e) db 0
    %%insn_06f40:
    mov si,0xf2fe ; 06F40 BEFEF2
    %if ($ - %%insn_06f40) > 3
        %error "LONG_06F40"
    %endif
    times 3 - ($ - %%insn_06f40) db 0
    %%insn_06f43:
    call word far [cs:0x3688] ; 06F43 2EFF1E8836
    %if ($ - %%insn_06f43) > 5
        %error "LONG_06F43"
    %endif
    times 5 - ($ - %%insn_06f43) db 0
    db 0x0B, 0xC0 ; 06F48 0BC0 | or ax,ax | encoding preserved
    %%insn_06f4a:
    jz 0x6eb0 ; 06F4A 0F8462FF
    %if ($ - %%insn_06f4a) > 4
        %error "LONG_06F4A"
    %endif
    times 4 - ($ - %%insn_06f4a) db 0
    %%insn_06f4e:
    add word [0xf314],0x33 ; 06F4E 830614F333
    %if ($ - %%insn_06f4e) > 5
        %error "LONG_06F4E"
    %endif
    times 5 - ($ - %%insn_06f4e) db 0
    %%insn_06f53:
    sub word [0xf312],0x33 ; 06F53 832E12F333
    %if ($ - %%insn_06f53) > 5
        %error "LONG_06F53"
    %endif
    times 5 - ($ - %%insn_06f53) db 0
    %%insn_06f58:
    inc word [bp-0xce6] ; 06F58 FF861AF3
    %if ($ - %%insn_06f58) > 4
        %error "LONG_06F58"
    %endif
    times 4 - ($ - %%insn_06f58) db 0
    %%insn_06f5c:
    jmp short 0x6fa0 ; 06F5C EB42
    %if ($ - %%insn_06f5c) > 2
        %error "LONG_06F5C"
    %endif
    times 2 - ($ - %%insn_06f5c) db 0
    %%insn_06f5e:
    mov ax,[0xd556] ; 06F5E A156D5
    %if ($ - %%insn_06f5e) > 3
        %error "LONG_06F5E"
    %endif
    times 3 - ($ - %%insn_06f5e) db 0
    %%insn_06f61:
    mov word [0xf308],0x0 ; 06F61 C70608F30000
    %if ($ - %%insn_06f61) > 6
        %error "LONG_06F61"
    %endif
    times 6 - ($ - %%insn_06f61) db 0
    %%insn_06f67:
    mov word [0xf30a],0x0 ; 06F67 C7060AF30000
    %if ($ - %%insn_06f67) > 6
        %error "LONG_06F67"
    %endif
    times 6 - ($ - %%insn_06f67) db 0
    %%insn_06f6d:
    mov [0xf30c],ax ; 06F6D A30CF3
    %if ($ - %%insn_06f6d) > 3
        %error "LONG_06F6D"
    %endif
    times 3 - ($ - %%insn_06f6d) db 0
    %%insn_06f70:
    mov ax,[0xf30e] ; 06F70 A10EF3
    %if ($ - %%insn_06f70) > 3
        %error "LONG_06F70"
    %endif
    times 3 - ($ - %%insn_06f70) db 0
    %%insn_06f73:
    mov [0xf302],ax ; 06F73 A302F3
    %if ($ - %%insn_06f73) > 3
        %error "LONG_06F73"
    %endif
    times 3 - ($ - %%insn_06f73) db 0
    %%insn_06f76:
    mov bx,[0xf318] ; 06F76 8B1E18F3
    %if ($ - %%insn_06f76) > 4
        %error "LONG_06F76"
    %endif
    times 4 - ($ - %%insn_06f76) db 0
    %%insn_06f7a:
    mov eax,[bx+0x2] ; 06F7A 668B4702
    %if ($ - %%insn_06f7a) > 4
        %error "LONG_06F7A"
    %endif
    times 4 - ($ - %%insn_06f7a) db 0
    %%insn_06f7e:
    mov [0xf304],eax ; 06F7E 66A304F3
    %if ($ - %%insn_06f7e) > 4
        %error "LONG_06F7E"
    %endif
    times 4 - ($ - %%insn_06f7e) db 0
    %%insn_06f82:
    mov eax,0xcb20 ; 06F82 66B820CB0000
    %if ($ - %%insn_06f82) > 6
        %error "LONG_06F82"
    %endif
    times 6 - ($ - %%insn_06f82) db 0
    %%insn_06f88:
    mov [0xf2fe],eax ; 06F88 66A3FEF2
    %if ($ - %%insn_06f88) > 4
        %error "LONG_06F88"
    %endif
    times 4 - ($ - %%insn_06f88) db 0
    %%insn_06f8c:
    mov ah,0xb ; 06F8C B40B
    %if ($ - %%insn_06f8c) > 2
        %error "LONG_06F8C"
    %endif
    times 2 - ($ - %%insn_06f8c) db 0
    %%insn_06f8e:
    mov si,0xf2fe ; 06F8E BEFEF2
    %if ($ - %%insn_06f8e) > 3
        %error "LONG_06F8E"
    %endif
    times 3 - ($ - %%insn_06f8e) db 0
    %%insn_06f91:
    call word far [cs:0x3688] ; 06F91 2EFF1E8836
    %if ($ - %%insn_06f91) > 5
        %error "LONG_06F91"
    %endif
    times 5 - ($ - %%insn_06f91) db 0
    db 0x0B, 0xC0 ; 06F96 0BC0 | or ax,ax | encoding preserved
    %%insn_06f98:
    jz 0x6eb0 ; 06F98 0F8414FF
    %if ($ - %%insn_06f98) > 4
        %error "LONG_06F98"
    %endif
    times 4 - ($ - %%insn_06f98) db 0
    %%insn_06f9c:
    inc word [bp-0xce4] ; 06F9C FF861CF3
    %if ($ - %%insn_06f9c) > 4
        %error "LONG_06F9C"
    %endif
    times 4 - ($ - %%insn_06f9c) db 0
    %%insn_06fa0:
    mov word [0xf316],0x0 ; 06FA0 C70616F30000
    %if ($ - %%insn_06fa0) > 6
        %error "LONG_06FA0"
    %endif
    times 6 - ($ - %%insn_06fa0) db 0
    %%insn_06fa6:
    pop ds ; 06FA6 1F
    %if ($ - %%insn_06fa6) > 1
        %error "LONG_06FA6"
    %endif
    times 1 - ($ - %%insn_06fa6) db 0
    %%insn_06fa7:
    popa ; 06FA7 61
    %if ($ - %%insn_06fa7) > 1
        %error "LONG_06FA7"
    %endif
    times 1 - ($ - %%insn_06fa7) db 0
    %%insn_06fa8:
    ret ; 06FA8 C3
    %if ($ - %%insn_06fa8) > 1
        %error "LONG_06FA8"
    %endif
    times 1 - ($ - %%insn_06fa8) db 0
    %if ($ - %%fragment_start) != 208
        %error "SIZE_06ED9"
    %endif
%endmacro
