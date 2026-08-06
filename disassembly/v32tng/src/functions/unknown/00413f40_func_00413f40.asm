; PE virtual entry 00413F40
; Ghidra working symbol: FUN_00413f40
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00413f40_part_00 0
    %%fragment_start:
func_00413f40:
    %%insn_00413f40:
    push esi ; 00413F40 56
    %if ($ - %%insn_00413f40) > 1
        %error "LONG_00413F40"
    %endif
    times 1 - ($ - %%insn_00413f40) db 0
    %%insn_00413f41:
    mov esi,[esp+0x8] ; 00413F41 8B742408
    %if ($ - %%insn_00413f41) > 4
        %error "LONG_00413F41"
    %endif
    times 4 - ($ - %%insn_00413f41) db 0
    %%insn_00413f45:
    test esi,esi ; 00413F45 85F6
    %if ($ - %%insn_00413f45) > 2
        %error "LONG_00413F45"
    %endif
    times 2 - ($ - %%insn_00413f45) db 0
    %%insn_00413f47:
    jz short 0x413fa4 ; 00413F47 745B
    %if ($ - %%insn_00413f47) > 2
        %error "LONG_00413F47"
    %endif
    times 2 - ($ - %%insn_00413f47) db 0
    %%insn_00413f49:
    mov eax,[esi+0xc] ; 00413F49 8B460C
    %if ($ - %%insn_00413f49) > 3
        %error "LONG_00413F49"
    %endif
    times 3 - ($ - %%insn_00413f49) db 0
    %%insn_00413f4c:
    cmp eax,0x4211e8 ; 00413F4C 3DE8114200
    %if ($ - %%insn_00413f4c) > 5
        %error "LONG_00413F4C"
    %endif
    times 5 - ($ - %%insn_00413f4c) db 0
    %%insn_00413f51:
    jz short 0x413fa4 ; 00413F51 7451
    %if ($ - %%insn_00413f51) > 2
        %error "LONG_00413F51"
    %endif
    times 2 - ($ - %%insn_00413f51) db 0
    %%insn_00413f53:
    push eax ; 00413F53 50
    %if ($ - %%insn_00413f53) > 1
        %error "LONG_00413F53"
    %endif
    times 1 - ($ - %%insn_00413f53) db 0
    %%insn_00413f54:
    call 0x40c9a0 ; 00413F54 E8478AFFFF
    %if ($ - %%insn_00413f54) > 5
        %error "LONG_00413F54"
    %endif
    times 5 - ($ - %%insn_00413f54) db 0
    %%insn_00413f59:
    mov eax,[esi+0x10] ; 00413F59 8B4610
    %if ($ - %%insn_00413f59) > 3
        %error "LONG_00413F59"
    %endif
    times 3 - ($ - %%insn_00413f59) db 0
    %%insn_00413f5c:
    add esp,0x4 ; 00413F5C 83C404
    %if ($ - %%insn_00413f5c) > 3
        %error "LONG_00413F5C"
    %endif
    times 3 - ($ - %%insn_00413f5c) db 0
    %%insn_00413f5f:
    push eax ; 00413F5F 50
    %if ($ - %%insn_00413f5f) > 1
        %error "LONG_00413F5F"
    %endif
    times 1 - ($ - %%insn_00413f5f) db 0
    %%insn_00413f60:
    call 0x40c9a0 ; 00413F60 E83B8AFFFF
    %if ($ - %%insn_00413f60) > 5
        %error "LONG_00413F60"
    %endif
    times 5 - ($ - %%insn_00413f60) db 0
    %%insn_00413f65:
    mov ecx,[esi+0x14] ; 00413F65 8B4E14
    %if ($ - %%insn_00413f65) > 3
        %error "LONG_00413F65"
    %endif
    times 3 - ($ - %%insn_00413f65) db 0
    %%insn_00413f68:
    add esp,0x4 ; 00413F68 83C404
    %if ($ - %%insn_00413f68) > 3
        %error "LONG_00413F68"
    %endif
    times 3 - ($ - %%insn_00413f68) db 0
    %%insn_00413f6b:
    push ecx ; 00413F6B 51
    %if ($ - %%insn_00413f6b) > 1
        %error "LONG_00413F6B"
    %endif
    times 1 - ($ - %%insn_00413f6b) db 0
    %%insn_00413f6c:
    call 0x40c9a0 ; 00413F6C E82F8AFFFF
    %if ($ - %%insn_00413f6c) > 5
        %error "LONG_00413F6C"
    %endif
    times 5 - ($ - %%insn_00413f6c) db 0
    %%insn_00413f71:
    mov edx,[esi+0x18] ; 00413F71 8B5618
    %if ($ - %%insn_00413f71) > 3
        %error "LONG_00413F71"
    %endif
    times 3 - ($ - %%insn_00413f71) db 0
    %%insn_00413f74:
    add esp,0x4 ; 00413F74 83C404
    %if ($ - %%insn_00413f74) > 3
        %error "LONG_00413F74"
    %endif
    times 3 - ($ - %%insn_00413f74) db 0
    %%insn_00413f77:
    push edx ; 00413F77 52
    %if ($ - %%insn_00413f77) > 1
        %error "LONG_00413F77"
    %endif
    times 1 - ($ - %%insn_00413f77) db 0
    %%insn_00413f78:
    call 0x40c9a0 ; 00413F78 E8238AFFFF
    %if ($ - %%insn_00413f78) > 5
        %error "LONG_00413F78"
    %endif
    times 5 - ($ - %%insn_00413f78) db 0
    %%insn_00413f7d:
    mov eax,[esi+0x1c] ; 00413F7D 8B461C
    %if ($ - %%insn_00413f7d) > 3
        %error "LONG_00413F7D"
    %endif
    times 3 - ($ - %%insn_00413f7d) db 0
    %%insn_00413f80:
    add esp,0x4 ; 00413F80 83C404
    %if ($ - %%insn_00413f80) > 3
        %error "LONG_00413F80"
    %endif
    times 3 - ($ - %%insn_00413f80) db 0
    %%insn_00413f83:
    push eax ; 00413F83 50
    %if ($ - %%insn_00413f83) > 1
        %error "LONG_00413F83"
    %endif
    times 1 - ($ - %%insn_00413f83) db 0
    %%insn_00413f84:
    call 0x40c9a0 ; 00413F84 E8178AFFFF
    %if ($ - %%insn_00413f84) > 5
        %error "LONG_00413F84"
    %endif
    times 5 - ($ - %%insn_00413f84) db 0
    %%insn_00413f89:
    mov ecx,[esi+0x20] ; 00413F89 8B4E20
    %if ($ - %%insn_00413f89) > 3
        %error "LONG_00413F89"
    %endif
    times 3 - ($ - %%insn_00413f89) db 0
    %%insn_00413f8c:
    add esp,0x4 ; 00413F8C 83C404
    %if ($ - %%insn_00413f8c) > 3
        %error "LONG_00413F8C"
    %endif
    times 3 - ($ - %%insn_00413f8c) db 0
    %%insn_00413f8f:
    push ecx ; 00413F8F 51
    %if ($ - %%insn_00413f8f) > 1
        %error "LONG_00413F8F"
    %endif
    times 1 - ($ - %%insn_00413f8f) db 0
    %%insn_00413f90:
    call 0x40c9a0 ; 00413F90 E80B8AFFFF
    %if ($ - %%insn_00413f90) > 5
        %error "LONG_00413F90"
    %endif
    times 5 - ($ - %%insn_00413f90) db 0
    %%insn_00413f95:
    mov edx,[esi+0x24] ; 00413F95 8B5624
    %if ($ - %%insn_00413f95) > 3
        %error "LONG_00413F95"
    %endif
    times 3 - ($ - %%insn_00413f95) db 0
    %%insn_00413f98:
    add esp,0x4 ; 00413F98 83C404
    %if ($ - %%insn_00413f98) > 3
        %error "LONG_00413F98"
    %endif
    times 3 - ($ - %%insn_00413f98) db 0
    %%insn_00413f9b:
    push edx ; 00413F9B 52
    %if ($ - %%insn_00413f9b) > 1
        %error "LONG_00413F9B"
    %endif
    times 1 - ($ - %%insn_00413f9b) db 0
    %%insn_00413f9c:
    call 0x40c9a0 ; 00413F9C E8FF89FFFF
    %if ($ - %%insn_00413f9c) > 5
        %error "LONG_00413F9C"
    %endif
    times 5 - ($ - %%insn_00413f9c) db 0
    %%insn_00413fa1:
    add esp,0x4 ; 00413FA1 83C404
    %if ($ - %%insn_00413fa1) > 3
        %error "LONG_00413FA1"
    %endif
    times 3 - ($ - %%insn_00413fa1) db 0
    %%insn_00413fa4:
    pop esi ; 00413FA4 5E
    %if ($ - %%insn_00413fa4) > 1
        %error "LONG_00413FA4"
    %endif
    times 1 - ($ - %%insn_00413fa4) db 0
    %%insn_00413fa5:
    ret ; 00413FA5 C3
    %if ($ - %%insn_00413fa5) > 1
        %error "LONG_00413FA5"
    %endif
    times 1 - ($ - %%insn_00413fa5) db 0
    %if ($ - %%fragment_start) != 102
        %error "function fragment size drift: 00413F40"
    %endif
%endmacro
