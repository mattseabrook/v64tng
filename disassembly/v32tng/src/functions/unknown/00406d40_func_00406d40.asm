; PE virtual entry 00406D40
; Ghidra working symbol: FUN_00406d40
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406d40_part_00 0
    %%fragment_start:
func_00406d40:
    %%insn_00406d40:
    push ebp ; 00406D40 55
    %if ($ - %%insn_00406d40) > 1
        %error "LONG_00406D40"
    %endif
    times 1 - ($ - %%insn_00406d40) db 0
    db 0x8B, 0xEC ; 00406D41 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406d43:
    push ecx ; 00406D43 51
    %if ($ - %%insn_00406d43) > 1
        %error "LONG_00406D43"
    %endif
    times 1 - ($ - %%insn_00406d43) db 0
    %%insn_00406d44:
    call dword near [0x42458c] ; 00406D44 FF158C454200
    %if ($ - %%insn_00406d44) > 6
        %error "LONG_00406D44"
    %endif
    times 6 - ($ - %%insn_00406d44) db 0
    %%insn_00406d4a:
    movsx ecx,word [0x420e4c] ; 00406D4A 0FBF0D4C0E4200
    %if ($ - %%insn_00406d4a) > 7
        %error "LONG_00406D4A"
    %endif
    times 7 - ($ - %%insn_00406d4a) db 0
    %%insn_00406d51:
    neg ecx ; 00406D51 F7D9
    %if ($ - %%insn_00406d51) > 2
        %error "LONG_00406D51"
    %endif
    times 2 - ($ - %%insn_00406d51) db 0
    db 0x1B, 0xC9 ; 00406D53 1BC9 | sbb ecx,ecx | encoding preserved
    %%insn_00406d55:
    and ecx,0x3c ; 00406D55 83E13C
    %if ($ - %%insn_00406d55) > 3
        %error "LONG_00406D55"
    %endif
    times 3 - ($ - %%insn_00406d55) db 0
    %%insn_00406d58:
    add ecx,0x28 ; 00406D58 83C128
    %if ($ - %%insn_00406d58) > 3
        %error "LONG_00406D58"
    %endif
    times 3 - ($ - %%insn_00406d58) db 0
    db 0x03, 0xC1 ; 00406D5B 03C1 | add eax,ecx | encoding preserved
    %%insn_00406d5d:
    mov [ebp-0x4],eax ; 00406D5D 8945FC
    %if ($ - %%insn_00406d5d) > 3
        %error "LONG_00406D5D"
    %endif
    times 3 - ($ - %%insn_00406d5d) db 0
    %%insn_00406d60:
    mov edx,[ebp+0x8] ; 00406D60 8B5508
    %if ($ - %%insn_00406d60) > 3
        %error "LONG_00406D60"
    %endif
    times 3 - ($ - %%insn_00406d60) db 0
    db 0x33, 0xC0 ; 00406D63 33C0 | xor eax,eax | encoding preserved
    %%insn_00406d65:
    mov ax,[edx+0x62] ; 00406D65 668B4262
    %if ($ - %%insn_00406d65) > 4
        %error "LONG_00406D65"
    %endif
    times 4 - ($ - %%insn_00406d65) db 0
    %%insn_00406d69:
    and eax,0x80 ; 00406D69 2580000000
    %if ($ - %%insn_00406d69) > 5
        %error "LONG_00406D69"
    %endif
    times 5 - ($ - %%insn_00406d69) db 0
    %%insn_00406d6e:
    test eax,eax ; 00406D6E 85C0
    %if ($ - %%insn_00406d6e) > 2
        %error "LONG_00406D6E"
    %endif
    times 2 - ($ - %%insn_00406d6e) db 0
    %%insn_00406d70:
    jz short 0x406d81 ; 00406D70 740F
    %if ($ - %%insn_00406d70) > 2
        %error "LONG_00406D70"
    %endif
    times 2 - ($ - %%insn_00406d70) db 0
    %%insn_00406d72:
    mov ecx,[0x41f4e0] ; 00406D72 8B0DE0F44100
    %if ($ - %%insn_00406d72) > 6
        %error "LONG_00406D72"
    %endif
    times 6 - ($ - %%insn_00406d72) db 0
    %%insn_00406d78:
    sub ecx,0x14 ; 00406D78 83E914
    %if ($ - %%insn_00406d78) > 3
        %error "LONG_00406D78"
    %endif
    times 3 - ($ - %%insn_00406d78) db 0
    %%insn_00406d7b:
    mov [0x41f4e0],ecx ; 00406D7B 890DE0F44100
    %if ($ - %%insn_00406d7b) > 6
        %error "LONG_00406D7B"
    %endif
    times 6 - ($ - %%insn_00406d7b) db 0
    %%insn_00406d81:
    mov edx,[ebp-0x4] ; 00406D81 8B55FC
    %if ($ - %%insn_00406d81) > 3
        %error "LONG_00406D81"
    %endif
    times 3 - ($ - %%insn_00406d81) db 0
    %%insn_00406d84:
    mov [0x41f4e0],edx ; 00406D84 8915E0F44100
    %if ($ - %%insn_00406d84) > 6
        %error "LONG_00406D84"
    %endif
    times 6 - ($ - %%insn_00406d84) db 0
    db 0x8B, 0xE5 ; 00406D8A 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00406d8c:
    pop ebp ; 00406D8C 5D
    %if ($ - %%insn_00406d8c) > 1
        %error "LONG_00406D8C"
    %endif
    times 1 - ($ - %%insn_00406d8c) db 0
    %%insn_00406d8d:
    ret ; 00406D8D C3
    %if ($ - %%insn_00406d8d) > 1
        %error "LONG_00406D8D"
    %endif
    times 1 - ($ - %%insn_00406d8d) db 0
    %if ($ - %%fragment_start) != 78
        %error "function fragment size drift: 00406D40"
    %endif
%endmacro
