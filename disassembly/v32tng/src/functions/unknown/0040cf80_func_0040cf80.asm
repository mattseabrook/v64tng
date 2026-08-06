; PE virtual entry 0040CF80
; Ghidra working symbol: FUN_0040cf80
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040cf80_part_00 0
    %%fragment_start:
func_0040cf80:
    %%insn_0040cf80:
    push esi ; 0040CF80 56
    %if ($ - %%insn_0040cf80) > 1
        %error "LONG_0040CF80"
    %endif
    times 1 - ($ - %%insn_0040cf80) db 0
    %%insn_0040cf81:
    mov esi,[esp+0x14] ; 0040CF81 8B742414
    %if ($ - %%insn_0040cf81) > 4
        %error "LONG_0040CF81"
    %endif
    times 4 - ($ - %%insn_0040cf81) db 0
    %%insn_0040cf85:
    push edi ; 0040CF85 57
    %if ($ - %%insn_0040cf85) > 1
        %error "LONG_0040CF85"
    %endif
    times 1 - ($ - %%insn_0040cf85) db 0
    %%insn_0040cf86:
    push esi ; 0040CF86 56
    %if ($ - %%insn_0040cf86) > 1
        %error "LONG_0040CF86"
    %endif
    times 1 - ($ - %%insn_0040cf86) db 0
    %%insn_0040cf87:
    call 0x40dfa0 ; 0040CF87 E814100000
    %if ($ - %%insn_0040cf87) > 5
        %error "LONG_0040CF87"
    %endif
    times 5 - ($ - %%insn_0040cf87) db 0
    %%insn_0040cf8c:
    mov eax,[esp+0x18] ; 0040CF8C 8B442418
    %if ($ - %%insn_0040cf8c) > 4
        %error "LONG_0040CF8C"
    %endif
    times 4 - ($ - %%insn_0040cf8c) db 0
    %%insn_0040cf90:
    mov ecx,[esp+0x14] ; 0040CF90 8B4C2414
    %if ($ - %%insn_0040cf90) > 4
        %error "LONG_0040CF90"
    %endif
    times 4 - ($ - %%insn_0040cf90) db 0
    %%insn_0040cf94:
    mov edx,[esp+0x10] ; 0040CF94 8B542410
    %if ($ - %%insn_0040cf94) > 4
        %error "LONG_0040CF94"
    %endif
    times 4 - ($ - %%insn_0040cf94) db 0
    %%insn_0040cf98:
    add esp,0x4 ; 0040CF98 83C404
    %if ($ - %%insn_0040cf98) > 3
        %error "LONG_0040CF98"
    %endif
    times 3 - ($ - %%insn_0040cf98) db 0
    %%insn_0040cf9b:
    push esi ; 0040CF9B 56
    %if ($ - %%insn_0040cf9b) > 1
        %error "LONG_0040CF9B"
    %endif
    times 1 - ($ - %%insn_0040cf9b) db 0
    %%insn_0040cf9c:
    push eax ; 0040CF9C 50
    %if ($ - %%insn_0040cf9c) > 1
        %error "LONG_0040CF9C"
    %endif
    times 1 - ($ - %%insn_0040cf9c) db 0
    %%insn_0040cf9d:
    push ecx ; 0040CF9D 51
    %if ($ - %%insn_0040cf9d) > 1
        %error "LONG_0040CF9D"
    %endif
    times 1 - ($ - %%insn_0040cf9d) db 0
    %%insn_0040cf9e:
    push edx ; 0040CF9E 52
    %if ($ - %%insn_0040cf9e) > 1
        %error "LONG_0040CF9E"
    %endif
    times 1 - ($ - %%insn_0040cf9e) db 0
    %%insn_0040cf9f:
    call 0x40cfc0 ; 0040CF9F E81C000000
    %if ($ - %%insn_0040cf9f) > 5
        %error "LONG_0040CF9F"
    %endif
    times 5 - ($ - %%insn_0040cf9f) db 0
    %%insn_0040cfa4:
    add esp,0x10 ; 0040CFA4 83C410
    %if ($ - %%insn_0040cfa4) > 3
        %error "LONG_0040CFA4"
    %endif
    times 3 - ($ - %%insn_0040cfa4) db 0
    db 0x8B, 0xF8 ; 0040CFA7 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040cfa9:
    push esi ; 0040CFA9 56
    %if ($ - %%insn_0040cfa9) > 1
        %error "LONG_0040CFA9"
    %endif
    times 1 - ($ - %%insn_0040cfa9) db 0
    %%insn_0040cfaa:
    call 0x40e010 ; 0040CFAA E861100000
    %if ($ - %%insn_0040cfaa) > 5
        %error "LONG_0040CFAA"
    %endif
    times 5 - ($ - %%insn_0040cfaa) db 0
    %%insn_0040cfaf:
    add esp,0x4 ; 0040CFAF 83C404
    %if ($ - %%insn_0040cfaf) > 3
        %error "LONG_0040CFAF"
    %endif
    times 3 - ($ - %%insn_0040cfaf) db 0
    db 0x8B, 0xC7 ; 0040CFB2 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040cfb4:
    pop edi ; 0040CFB4 5F
    %if ($ - %%insn_0040cfb4) > 1
        %error "LONG_0040CFB4"
    %endif
    times 1 - ($ - %%insn_0040cfb4) db 0
    %%insn_0040cfb5:
    pop esi ; 0040CFB5 5E
    %if ($ - %%insn_0040cfb5) > 1
        %error "LONG_0040CFB5"
    %endif
    times 1 - ($ - %%insn_0040cfb5) db 0
    %%insn_0040cfb6:
    ret ; 0040CFB6 C3
    %if ($ - %%insn_0040cfb6) > 1
        %error "LONG_0040CFB6"
    %endif
    times 1 - ($ - %%insn_0040cfb6) db 0
    %if ($ - %%fragment_start) != 55
        %error "function fragment size drift: 0040CF80"
    %endif
%endmacro
