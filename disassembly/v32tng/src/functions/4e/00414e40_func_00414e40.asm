; PE virtual entry 00414E40
; Ghidra working symbol: FUN_00414e40
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414e40_part_00 0
    %%fragment_start:
func_00414e40:
    %%insn_00414e40:
    mov eax,[esp+0x4] ; 00414E40 8B442404
    %if ($ - %%insn_00414e40) > 4
        %error "LONG_00414E40"
    %endif
    times 4 - ($ - %%insn_00414e40) db 0
    %%insn_00414e44:
    push eax ; 00414E44 50
    %if ($ - %%insn_00414e44) > 1
        %error "LONG_00414E44"
    %endif
    times 1 - ($ - %%insn_00414e44) db 0
    %%insn_00414e45:
    call dword near [0x424498] ; 00414E45 FF1598444200
    %if ($ - %%insn_00414e45) > 6
        %error "LONG_00414E45"
    %endif
    times 6 - ($ - %%insn_00414e45) db 0
    %%insn_00414e4b:
    cmp eax,0xffffffffffffffff ; 00414E4B 83F8FF
    %if ($ - %%insn_00414e4b) > 3
        %error "LONG_00414E4B"
    %endif
    times 3 - ($ - %%insn_00414e4b) db 0
    %%insn_00414e4e:
    jnz short 0x414e63 ; 00414E4E 7513
    %if ($ - %%insn_00414e4e) > 2
        %error "LONG_00414E4E"
    %endif
    times 2 - ($ - %%insn_00414e4e) db 0
    %%insn_00414e50:
    call dword near [0x4243c4] ; 00414E50 FF15C4434200
    %if ($ - %%insn_00414e50) > 6
        %error "LONG_00414E50"
    %endif
    times 6 - ($ - %%insn_00414e50) db 0
    %%insn_00414e56:
    push eax ; 00414E56 50
    %if ($ - %%insn_00414e56) > 1
        %error "LONG_00414E56"
    %endif
    times 1 - ($ - %%insn_00414e56) db 0
    %%insn_00414e57:
    call 0x410d90 ; 00414E57 E834BFFFFF
    %if ($ - %%insn_00414e57) > 5
        %error "LONG_00414E57"
    %endif
    times 5 - ($ - %%insn_00414e57) db 0
    %%insn_00414e5c:
    add esp,0x4 ; 00414E5C 83C404
    %if ($ - %%insn_00414e5c) > 3
        %error "LONG_00414E5C"
    %endif
    times 3 - ($ - %%insn_00414e5c) db 0
    %%insn_00414e5f:
    or eax,0xffffffffffffffff ; 00414E5F 83C8FF
    %if ($ - %%insn_00414e5f) > 3
        %error "LONG_00414E5F"
    %endif
    times 3 - ($ - %%insn_00414e5f) db 0
    %%insn_00414e62:
    ret ; 00414E62 C3
    %if ($ - %%insn_00414e62) > 1
        %error "LONG_00414E62"
    %endif
    times 1 - ($ - %%insn_00414e62) db 0
    %%insn_00414e63:
    test al,0x1 ; 00414E63 A801
    %if ($ - %%insn_00414e63) > 2
        %error "LONG_00414E63"
    %endif
    times 2 - ($ - %%insn_00414e63) db 0
    %%insn_00414e65:
    jz short 0x414e88 ; 00414E65 7421
    %if ($ - %%insn_00414e65) > 2
        %error "LONG_00414E65"
    %endif
    times 2 - ($ - %%insn_00414e65) db 0
    %%insn_00414e67:
    test byte [esp+0x8],0x2 ; 00414E67 F644240802
    %if ($ - %%insn_00414e67) > 5
        %error "LONG_00414E67"
    %endif
    times 5 - ($ - %%insn_00414e67) db 0
    %%insn_00414e6c:
    jz short 0x414e88 ; 00414E6C 741A
    %if ($ - %%insn_00414e6c) > 2
        %error "LONG_00414E6C"
    %endif
    times 2 - ($ - %%insn_00414e6c) db 0
    %%insn_00414e6e:
    call 0x410e10 ; 00414E6E E89DBFFFFF
    %if ($ - %%insn_00414e6e) > 5
        %error "LONG_00414E6E"
    %endif
    times 5 - ($ - %%insn_00414e6e) db 0
    %%insn_00414e73:
    mov dword [eax],0xd ; 00414E73 C7000D000000
    %if ($ - %%insn_00414e73) > 6
        %error "LONG_00414E73"
    %endif
    times 6 - ($ - %%insn_00414e73) db 0
    %%insn_00414e79:
    call 0x410e20 ; 00414E79 E8A2BFFFFF
    %if ($ - %%insn_00414e79) > 5
        %error "LONG_00414E79"
    %endif
    times 5 - ($ - %%insn_00414e79) db 0
    %%insn_00414e7e:
    mov dword [eax],0x5 ; 00414E7E C70005000000
    %if ($ - %%insn_00414e7e) > 6
        %error "LONG_00414E7E"
    %endif
    times 6 - ($ - %%insn_00414e7e) db 0
    %%insn_00414e84:
    or eax,0xffffffffffffffff ; 00414E84 83C8FF
    %if ($ - %%insn_00414e84) > 3
        %error "LONG_00414E84"
    %endif
    times 3 - ($ - %%insn_00414e84) db 0
    %%insn_00414e87:
    ret ; 00414E87 C3
    %if ($ - %%insn_00414e87) > 1
        %error "LONG_00414E87"
    %endif
    times 1 - ($ - %%insn_00414e87) db 0
    db 0x33, 0xC0 ; 00414E88 33C0 | xor eax,eax | encoding preserved
    %%insn_00414e8a:
    ret ; 00414E8A C3
    %if ($ - %%insn_00414e8a) > 1
        %error "LONG_00414E8A"
    %endif
    times 1 - ($ - %%insn_00414e8a) db 0
    %if ($ - %%fragment_start) != 75
        %error "function fragment size drift: 00414E40"
    %endif
%endmacro
