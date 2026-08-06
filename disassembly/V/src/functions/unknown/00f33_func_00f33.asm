; Linear entry 00F33 (1000:0f33)
; Ghidra working symbol: FUN_1000_0f33
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_00f33_part_00 0
    %%fragment_start:
func_00f33:
    %%insn_00f33:
    pusha ; 00F33 60
    %if ($ - %%insn_00f33) > 1
        %error "LONG_00F33"
    %endif
    times 1 - ($ - %%insn_00f33) db 0
    %%insn_00f34:
    push ds ; 00F34 1E
    %if ($ - %%insn_00f34) > 1
        %error "LONG_00F34"
    %endif
    times 1 - ($ - %%insn_00f34) db 0
    %%insn_00f35:
    mov ds,word [bp-0x2aae] ; 00F35 8E9E52D5
    %if ($ - %%insn_00f35) > 4
        %error "LONG_00F35"
    %endif
    times 4 - ($ - %%insn_00f35) db 0
    %%insn_00f39:
    mov word [bp-0x30b2],0x10 ; 00F39 C7864ECF1000
    %if ($ - %%insn_00f39) > 6
        %error "LONG_00F39"
    %endif
    times 6 - ($ - %%insn_00f39) db 0
    %%insn_00f3f:
    mov word [bp-0x30b0],0x10 ; 00F3F C78650CF1000
    %if ($ - %%insn_00f3f) > 6
        %error "LONG_00F3F"
    %endif
    times 6 - ($ - %%insn_00f3f) db 0
    %%insn_00f45:
    mov word [bp-0x30ae],0x10 ; 00F45 C78652CF1000
    %if ($ - %%insn_00f45) > 6
        %error "LONG_00F45"
    %endif
    times 6 - ($ - %%insn_00f45) db 0
    %%insn_00f4b:
    mov cx,0x100 ; 00F4B B90001
    %if ($ - %%insn_00f4b) > 3
        %error "LONG_00F4B"
    %endif
    times 3 - ($ - %%insn_00f4b) db 0
    %%insn_00f4e:
    mov si,0xcf8c ; 00F4E BE8CCF
    %if ($ - %%insn_00f4e) > 3
        %error "LONG_00F4E"
    %endif
    times 3 - ($ - %%insn_00f4e) db 0
    %%insn_00f51:
    mov di,0xcb20 ; 00F51 BF20CB
    %if ($ - %%insn_00f51) > 3
        %error "LONG_00F51"
    %endif
    times 3 - ($ - %%insn_00f51) db 0
    %%insn_00f54:
    lodsb ; 00F54 AC
    %if ($ - %%insn_00f54) > 1
        %error "LONG_00F54"
    %endif
    times 1 - ($ - %%insn_00f54) db 0
    db 0x32, 0xE4 ; 00F55 32E4 | xor ah,ah | encoding preserved
    %%insn_00f57:
    mul word [bp-0x30b2] ; 00F57 F7A64ECF
    %if ($ - %%insn_00f57) > 4
        %error "LONG_00F57"
    %endif
    times 4 - ($ - %%insn_00f57) db 0
    %%insn_00f5b:
    mov [di],ah ; 00F5B 8825
    %if ($ - %%insn_00f5b) > 2
        %error "LONG_00F5B"
    %endif
    times 2 - ($ - %%insn_00f5b) db 0
    %%insn_00f5d:
    inc di ; 00F5D 47
    %if ($ - %%insn_00f5d) > 1
        %error "LONG_00F5D"
    %endif
    times 1 - ($ - %%insn_00f5d) db 0
    %%insn_00f5e:
    lodsb ; 00F5E AC
    %if ($ - %%insn_00f5e) > 1
        %error "LONG_00F5E"
    %endif
    times 1 - ($ - %%insn_00f5e) db 0
    db 0x32, 0xE4 ; 00F5F 32E4 | xor ah,ah | encoding preserved
    %%insn_00f61:
    mul word [bp-0x30b0] ; 00F61 F7A650CF
    %if ($ - %%insn_00f61) > 4
        %error "LONG_00F61"
    %endif
    times 4 - ($ - %%insn_00f61) db 0
    %%insn_00f65:
    mov [di],ah ; 00F65 8825
    %if ($ - %%insn_00f65) > 2
        %error "LONG_00F65"
    %endif
    times 2 - ($ - %%insn_00f65) db 0
    %%insn_00f67:
    inc di ; 00F67 47
    %if ($ - %%insn_00f67) > 1
        %error "LONG_00F67"
    %endif
    times 1 - ($ - %%insn_00f67) db 0
    %%insn_00f68:
    lodsb ; 00F68 AC
    %if ($ - %%insn_00f68) > 1
        %error "LONG_00F68"
    %endif
    times 1 - ($ - %%insn_00f68) db 0
    db 0x32, 0xE4 ; 00F69 32E4 | xor ah,ah | encoding preserved
    %%insn_00f6b:
    mul word [bp-0x30ae] ; 00F6B F7A652CF
    %if ($ - %%insn_00f6b) > 4
        %error "LONG_00F6B"
    %endif
    times 4 - ($ - %%insn_00f6b) db 0
    %%insn_00f6f:
    mov [di],ah ; 00F6F 8825
    %if ($ - %%insn_00f6f) > 2
        %error "LONG_00F6F"
    %endif
    times 2 - ($ - %%insn_00f6f) db 0
    %%insn_00f71:
    inc di ; 00F71 47
    %if ($ - %%insn_00f71) > 1
        %error "LONG_00F71"
    %endif
    times 1 - ($ - %%insn_00f71) db 0
    %%insn_00f72:
    dec cx ; 00F72 49
    %if ($ - %%insn_00f72) > 1
        %error "LONG_00F72"
    %endif
    times 1 - ($ - %%insn_00f72) db 0
    %%insn_00f73:
    jnz short 0xf54 ; 00F73 75DF
    %if ($ - %%insn_00f73) > 2
        %error "LONG_00F73"
    %endif
    times 2 - ($ - %%insn_00f73) db 0
    %%insn_00f75:
    push dx ; 00F75 52
    %if ($ - %%insn_00f75) > 1
        %error "LONG_00F75"
    %endif
    times 1 - ($ - %%insn_00f75) db 0
    %%insn_00f76:
    mov dx,0x3da ; 00F76 BADA03
    %if ($ - %%insn_00f76) > 3
        %error "LONG_00F76"
    %endif
    times 3 - ($ - %%insn_00f76) db 0
    %%insn_00f79:
    in al,dx ; 00F79 EC
    %if ($ - %%insn_00f79) > 1
        %error "LONG_00F79"
    %endif
    times 1 - ($ - %%insn_00f79) db 0
    %%insn_00f7a:
    and al,0x8 ; 00F7A 2408
    %if ($ - %%insn_00f7a) > 2
        %error "LONG_00F7A"
    %endif
    times 2 - ($ - %%insn_00f7a) db 0
    %%insn_00f7c:
    jmp short 0xf7e ; 00F7C EB00
    %if ($ - %%insn_00f7c) > 2
        %error "LONG_00F7C"
    %endif
    times 2 - ($ - %%insn_00f7c) db 0
    %%insn_00f7e:
    jnz short 0xf79 ; 00F7E 75F9
    %if ($ - %%insn_00f7e) > 2
        %error "LONG_00F7E"
    %endif
    times 2 - ($ - %%insn_00f7e) db 0
    %%insn_00f80:
    in al,dx ; 00F80 EC
    %if ($ - %%insn_00f80) > 1
        %error "LONG_00F80"
    %endif
    times 1 - ($ - %%insn_00f80) db 0
    %%insn_00f81:
    and al,0x8 ; 00F81 2408
    %if ($ - %%insn_00f81) > 2
        %error "LONG_00F81"
    %endif
    times 2 - ($ - %%insn_00f81) db 0
    %%insn_00f83:
    jmp short 0xf85 ; 00F83 EB00
    %if ($ - %%insn_00f83) > 2
        %error "LONG_00F83"
    %endif
    times 2 - ($ - %%insn_00f83) db 0
    %%insn_00f85:
    jz short 0xf80 ; 00F85 74F9
    %if ($ - %%insn_00f85) > 2
        %error "LONG_00F85"
    %endif
    times 2 - ($ - %%insn_00f85) db 0
    %%insn_00f87:
    pop dx ; 00F87 5A
    %if ($ - %%insn_00f87) > 1
        %error "LONG_00F87"
    %endif
    times 1 - ($ - %%insn_00f87) db 0
    %%insn_00f88:
    mov dx,0x3c8 ; 00F88 BAC803
    %if ($ - %%insn_00f88) > 3
        %error "LONG_00F88"
    %endif
    times 3 - ($ - %%insn_00f88) db 0
    db 0x32, 0xC0 ; 00F8B 32C0 | xor al,al | encoding preserved
    %%insn_00f8d:
    out dx,al ; 00F8D EE
    %if ($ - %%insn_00f8d) > 1
        %error "LONG_00F8D"
    %endif
    times 1 - ($ - %%insn_00f8d) db 0
    %%insn_00f8e:
    inc dx ; 00F8E 42
    %if ($ - %%insn_00f8e) > 1
        %error "LONG_00F8E"
    %endif
    times 1 - ($ - %%insn_00f8e) db 0
    %%insn_00f8f:
    mov cx,0x300 ; 00F8F B90003
    %if ($ - %%insn_00f8f) > 3
        %error "LONG_00F8F"
    %endif
    times 3 - ($ - %%insn_00f8f) db 0
    %%insn_00f92:
    mov si,0xcb20 ; 00F92 BE20CB
    %if ($ - %%insn_00f92) > 3
        %error "LONG_00F92"
    %endif
    times 3 - ($ - %%insn_00f92) db 0
    %%insn_00f95:
    lodsb ; 00F95 AC
    %if ($ - %%insn_00f95) > 1
        %error "LONG_00F95"
    %endif
    times 1 - ($ - %%insn_00f95) db 0
    %%insn_00f96:
    out dx,al ; 00F96 EE
    %if ($ - %%insn_00f96) > 1
        %error "LONG_00F96"
    %endif
    times 1 - ($ - %%insn_00f96) db 0
    %%insn_00f97:
    dec cx ; 00F97 49
    %if ($ - %%insn_00f97) > 1
        %error "LONG_00F97"
    %endif
    times 1 - ($ - %%insn_00f97) db 0
    %%insn_00f98:
    jnz short 0xf95 ; 00F98 75FB
    %if ($ - %%insn_00f98) > 2
        %error "LONG_00F98"
    %endif
    times 2 - ($ - %%insn_00f98) db 0
    %%insn_00f9a:
    cmp word [bp-0x30b2],0x100 ; 00F9A 81BE4ECF0001
    %if ($ - %%insn_00f9a) > 6
        %error "LONG_00F9A"
    %endif
    times 6 - ($ - %%insn_00f9a) db 0
    %%insn_00fa0:
    jz short 0xfa7 ; 00FA0 7405
    %if ($ - %%insn_00fa0) > 2
        %error "LONG_00FA0"
    %endif
    times 2 - ($ - %%insn_00fa0) db 0
    %%insn_00fa2:
    add word [bp-0x30b2],0x8 ; 00FA2 83864ECF08
    %if ($ - %%insn_00fa2) > 5
        %error "LONG_00FA2"
    %endif
    times 5 - ($ - %%insn_00fa2) db 0
    %%insn_00fa7:
    cmp word [bp-0x30b0],0x100 ; 00FA7 81BE50CF0001
    %if ($ - %%insn_00fa7) > 6
        %error "LONG_00FA7"
    %endif
    times 6 - ($ - %%insn_00fa7) db 0
    %%insn_00fad:
    jz short 0xfb4 ; 00FAD 7405
    %if ($ - %%insn_00fad) > 2
        %error "LONG_00FAD"
    %endif
    times 2 - ($ - %%insn_00fad) db 0
    %%insn_00faf:
    add word [bp-0x30b0],0x4 ; 00FAF 838650CF04
    %if ($ - %%insn_00faf) > 5
        %error "LONG_00FAF"
    %endif
    times 5 - ($ - %%insn_00faf) db 0
    %%insn_00fb4:
    cmp word [bp-0x30ae],0x100 ; 00FB4 81BE52CF0001
    %if ($ - %%insn_00fb4) > 6
        %error "LONG_00FB4"
    %endif
    times 6 - ($ - %%insn_00fb4) db 0
    %%insn_00fba:
    jz short 0xfc3 ; 00FBA 7407
    %if ($ - %%insn_00fba) > 2
        %error "LONG_00FBA"
    %endif
    times 2 - ($ - %%insn_00fba) db 0
    %%insn_00fbc:
    add word [bp-0x30ae],0x2 ; 00FBC 838652CF02
    %if ($ - %%insn_00fbc) > 5
        %error "LONG_00FBC"
    %endif
    times 5 - ($ - %%insn_00fbc) db 0
    %%insn_00fc1:
    jmp short 0xf4b ; 00FC1 EB88
    %if ($ - %%insn_00fc1) > 2
        %error "LONG_00FC1"
    %endif
    times 2 - ($ - %%insn_00fc1) db 0
    %%insn_00fc3:
    pop ds ; 00FC3 1F
    %if ($ - %%insn_00fc3) > 1
        %error "LONG_00FC3"
    %endif
    times 1 - ($ - %%insn_00fc3) db 0
    %%insn_00fc4:
    popa ; 00FC4 61
    %if ($ - %%insn_00fc4) > 1
        %error "LONG_00FC4"
    %endif
    times 1 - ($ - %%insn_00fc4) db 0
    %%insn_00fc5:
    ret ; 00FC5 C3
    %if ($ - %%insn_00fc5) > 1
        %error "LONG_00FC5"
    %endif
    times 1 - ($ - %%insn_00fc5) db 0
    %if ($ - %%fragment_start) != 147
        %error "SIZE_00F33"
    %endif
%endmacro
