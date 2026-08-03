; PE virtual entry 0040CE30
; Ghidra working symbol: FUN_0040ce30
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040ce30_part_00 0
    %%fragment_start:
func_0040ce30:
    %%insn_0040ce30:
    mov eax,[esp+0x4] ; 0040CE30 8B442404
    %if ($ - %%insn_0040ce30) > 4
        %error "LONG_0040CE30"
    %endif
    times 4 - ($ - %%insn_0040ce30) db 0
    %%insn_0040ce34:
    push esi ; 0040CE34 56
    %if ($ - %%insn_0040ce34) > 1
        %error "LONG_0040CE34"
    %endif
    times 1 - ($ - %%insn_0040ce34) db 0
    %%insn_0040ce35:
    push edi ; 0040CE35 57
    %if ($ - %%insn_0040ce35) > 1
        %error "LONG_0040CE35"
    %endif
    times 1 - ($ - %%insn_0040ce35) db 0
    %%insn_0040ce36:
    lea esi,[eax+0xf] ; 0040CE36 8D700F
    %if ($ - %%insn_0040ce36) > 3
        %error "LONG_0040CE36"
    %endif
    times 3 - ($ - %%insn_0040ce36) db 0
    %%insn_0040ce39:
    mov eax,[0x41de84] ; 0040CE39 A184DE4100
    %if ($ - %%insn_0040ce39) > 5
        %error "LONG_0040CE39"
    %endif
    times 5 - ($ - %%insn_0040ce39) db 0
    %%insn_0040ce3e:
    and esi,0xfffffffffffffff0 ; 0040CE3E 83E6F0
    %if ($ - %%insn_0040ce3e) > 3
        %error "LONG_0040CE3E"
    %endif
    times 3 - ($ - %%insn_0040ce3e) db 0
    db 0x3B, 0xF0 ; 0040CE41 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0040ce43:
    ja short 0x40ce72 ; 0040CE43 772D
    %if ($ - %%insn_0040ce43) > 2
        %error "LONG_0040CE43"
    %endif
    times 2 - ($ - %%insn_0040ce43) db 0
    %%insn_0040ce45:
    push dword 0x9 ; 0040CE45 6A09
    %if ($ - %%insn_0040ce45) > 2
        %error "LONG_0040CE45"
    %endif
    times 2 - ($ - %%insn_0040ce45) db 0
    %%insn_0040ce47:
    call 0x40df00 ; 0040CE47 E8B4100000
    %if ($ - %%insn_0040ce47) > 5
        %error "LONG_0040CE47"
    %endif
    times 5 - ($ - %%insn_0040ce47) db 0
    db 0x8B, 0xCE ; 0040CE4C 8BCE | mov ecx,esi | encoding preserved
    %%insn_0040ce4e:
    add esp,0x4 ; 0040CE4E 83C404
    %if ($ - %%insn_0040ce4e) > 3
        %error "LONG_0040CE4E"
    %endif
    times 3 - ($ - %%insn_0040ce4e) db 0
    %%insn_0040ce51:
    shr ecx,byte 0x4 ; 0040CE51 C1E904
    %if ($ - %%insn_0040ce51) > 3
        %error "LONG_0040CE51"
    %endif
    times 3 - ($ - %%insn_0040ce51) db 0
    %%insn_0040ce54:
    push ecx ; 0040CE54 51
    %if ($ - %%insn_0040ce54) > 1
        %error "LONG_0040CE54"
    %endif
    times 1 - ($ - %%insn_0040ce54) db 0
    %%insn_0040ce55:
    call 0x40e430 ; 0040CE55 E8D6150000
    %if ($ - %%insn_0040ce55) > 5
        %error "LONG_0040CE55"
    %endif
    times 5 - ($ - %%insn_0040ce55) db 0
    %%insn_0040ce5a:
    add esp,0x4 ; 0040CE5A 83C404
    %if ($ - %%insn_0040ce5a) > 3
        %error "LONG_0040CE5A"
    %endif
    times 3 - ($ - %%insn_0040ce5a) db 0
    db 0x8B, 0xF8 ; 0040CE5D 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040ce5f:
    push dword 0x9 ; 0040CE5F 6A09
    %if ($ - %%insn_0040ce5f) > 2
        %error "LONG_0040CE5F"
    %endif
    times 2 - ($ - %%insn_0040ce5f) db 0
    %%insn_0040ce61:
    call 0x40df80 ; 0040CE61 E81A110000
    %if ($ - %%insn_0040ce61) > 5
        %error "LONG_0040CE61"
    %endif
    times 5 - ($ - %%insn_0040ce61) db 0
    %%insn_0040ce66:
    add esp,0x4 ; 0040CE66 83C404
    %if ($ - %%insn_0040ce66) > 3
        %error "LONG_0040CE66"
    %endif
    times 3 - ($ - %%insn_0040ce66) db 0
    %%insn_0040ce69:
    test edi,edi ; 0040CE69 85FF
    %if ($ - %%insn_0040ce69) > 2
        %error "LONG_0040CE69"
    %endif
    times 2 - ($ - %%insn_0040ce69) db 0
    %%insn_0040ce6b:
    jz short 0x40ce72 ; 0040CE6B 7405
    %if ($ - %%insn_0040ce6b) > 2
        %error "LONG_0040CE6B"
    %endif
    times 2 - ($ - %%insn_0040ce6b) db 0
    db 0x8B, 0xC7 ; 0040CE6D 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040ce6f:
    pop edi ; 0040CE6F 5F
    %if ($ - %%insn_0040ce6f) > 1
        %error "LONG_0040CE6F"
    %endif
    times 1 - ($ - %%insn_0040ce6f) db 0
    %%insn_0040ce70:
    pop esi ; 0040CE70 5E
    %if ($ - %%insn_0040ce70) > 1
        %error "LONG_0040CE70"
    %endif
    times 1 - ($ - %%insn_0040ce70) db 0
    %%insn_0040ce71:
    ret ; 0040CE71 C3
    %if ($ - %%insn_0040ce71) > 1
        %error "LONG_0040CE71"
    %endif
    times 1 - ($ - %%insn_0040ce71) db 0
    %%insn_0040ce72:
    mov edx,[0x42358c] ; 0040CE72 8B158C354200
    %if ($ - %%insn_0040ce72) > 6
        %error "LONG_0040CE72"
    %endif
    times 6 - ($ - %%insn_0040ce72) db 0
    %%insn_0040ce78:
    push esi ; 0040CE78 56
    %if ($ - %%insn_0040ce78) > 1
        %error "LONG_0040CE78"
    %endif
    times 1 - ($ - %%insn_0040ce78) db 0
    %%insn_0040ce79:
    push dword 0x0 ; 0040CE79 6A00
    %if ($ - %%insn_0040ce79) > 2
        %error "LONG_0040CE79"
    %endif
    times 2 - ($ - %%insn_0040ce79) db 0
    %%insn_0040ce7b:
    push edx ; 0040CE7B 52
    %if ($ - %%insn_0040ce7b) > 1
        %error "LONG_0040CE7B"
    %endif
    times 1 - ($ - %%insn_0040ce7b) db 0
    %%insn_0040ce7c:
    call dword near [0x424440] ; 0040CE7C FF1540444200
    %if ($ - %%insn_0040ce7c) > 6
        %error "LONG_0040CE7C"
    %endif
    times 6 - ($ - %%insn_0040ce7c) db 0
    %%insn_0040ce82:
    pop edi ; 0040CE82 5F
    %if ($ - %%insn_0040ce82) > 1
        %error "LONG_0040CE82"
    %endif
    times 1 - ($ - %%insn_0040ce82) db 0
    %%insn_0040ce83:
    pop esi ; 0040CE83 5E
    %if ($ - %%insn_0040ce83) > 1
        %error "LONG_0040CE83"
    %endif
    times 1 - ($ - %%insn_0040ce83) db 0
    %%insn_0040ce84:
    ret ; 0040CE84 C3
    %if ($ - %%insn_0040ce84) > 1
        %error "LONG_0040CE84"
    %endif
    times 1 - ($ - %%insn_0040ce84) db 0
    %if ($ - %%fragment_start) != 85
        %error "function fragment size drift: 0040CE30"
    %endif
%endmacro
