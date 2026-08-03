; PE virtual entry 0040DF00
; Ghidra working symbol: FUN_0040df00
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040df00_part_00 0
    %%fragment_start:
func_0040df00:
    %%insn_0040df00:
    push ebp ; 0040DF00 55
    %if ($ - %%insn_0040df00) > 1
        %error "LONG_0040DF00"
    %endif
    times 1 - ($ - %%insn_0040df00) db 0
    db 0x8B, 0xEC ; 0040DF01 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040df03:
    push edi ; 0040DF03 57
    %if ($ - %%insn_0040df03) > 1
        %error "LONG_0040DF03"
    %endif
    times 1 - ($ - %%insn_0040df03) db 0
    %%insn_0040df04:
    mov edi,[ebp+0x8] ; 0040DF04 8B7D08
    %if ($ - %%insn_0040df04) > 3
        %error "LONG_0040DF04"
    %endif
    times 3 - ($ - %%insn_0040df04) db 0
    %%insn_0040df07:
    mov eax,[edi*4+0x41bda0] ; 0040DF07 8B04BDA0BD4100
    %if ($ - %%insn_0040df07) > 7
        %error "LONG_0040DF07"
    %endif
    times 7 - ($ - %%insn_0040df07) db 0
    %%insn_0040df0e:
    test eax,eax ; 0040DF0E 85C0
    %if ($ - %%insn_0040df0e) > 2
        %error "LONG_0040DF0E"
    %endif
    times 2 - ($ - %%insn_0040df0e) db 0
    %%insn_0040df10:
    jnz short 0x40df65 ; 0040DF10 7553
    %if ($ - %%insn_0040df10) > 2
        %error "LONG_0040DF10"
    %endif
    times 2 - ($ - %%insn_0040df10) db 0
    %%insn_0040df12:
    push esi ; 0040DF12 56
    %if ($ - %%insn_0040df12) > 1
        %error "LONG_0040DF12"
    %endif
    times 1 - ($ - %%insn_0040df12) db 0
    %%insn_0040df13:
    push dword 0x18 ; 0040DF13 6A18
    %if ($ - %%insn_0040df13) > 2
        %error "LONG_0040DF13"
    %endif
    times 2 - ($ - %%insn_0040df13) db 0
    %%insn_0040df15:
    call 0x40cdc0 ; 0040DF15 E8A6EEFFFF
    %if ($ - %%insn_0040df15) > 5
        %error "LONG_0040DF15"
    %endif
    times 5 - ($ - %%insn_0040df15) db 0
    db 0x8B, 0xF0 ; 0040DF1A 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040df1c:
    add esp,0x4 ; 0040DF1C 83C404
    %if ($ - %%insn_0040df1c) > 3
        %error "LONG_0040DF1C"
    %endif
    times 3 - ($ - %%insn_0040df1c) db 0
    %%insn_0040df1f:
    test esi,esi ; 0040DF1F 85F6
    %if ($ - %%insn_0040df1f) > 2
        %error "LONG_0040DF1F"
    %endif
    times 2 - ($ - %%insn_0040df1f) db 0
    %%insn_0040df21:
    jnz short 0x40df2d ; 0040DF21 750A
    %if ($ - %%insn_0040df21) > 2
        %error "LONG_0040DF21"
    %endif
    times 2 - ($ - %%insn_0040df21) db 0
    %%insn_0040df23:
    push dword 0x11 ; 0040DF23 6A11
    %if ($ - %%insn_0040df23) > 2
        %error "LONG_0040DF23"
    %endif
    times 2 - ($ - %%insn_0040df23) db 0
    %%insn_0040df25:
    call 0x40dda0 ; 0040DF25 E876FEFFFF
    %if ($ - %%insn_0040df25) > 5
        %error "LONG_0040DF25"
    %endif
    times 5 - ($ - %%insn_0040df25) db 0
    %%insn_0040df2a:
    add esp,0x4 ; 0040DF2A 83C404
    %if ($ - %%insn_0040df2a) > 3
        %error "LONG_0040DF2A"
    %endif
    times 3 - ($ - %%insn_0040df2a) db 0
    %%insn_0040df2d:
    push dword 0x11 ; 0040DF2D 6A11
    %if ($ - %%insn_0040df2d) > 2
        %error "LONG_0040DF2D"
    %endif
    times 2 - ($ - %%insn_0040df2d) db 0
    %%insn_0040df2f:
    call 0x40df00 ; 0040DF2F E8CCFFFFFF
    %if ($ - %%insn_0040df2f) > 5
        %error "LONG_0040DF2F"
    %endif
    times 5 - ($ - %%insn_0040df2f) db 0
    %%insn_0040df34:
    mov eax,[edi*4+0x41bda0] ; 0040DF34 8B04BDA0BD4100
    %if ($ - %%insn_0040df34) > 7
        %error "LONG_0040DF34"
    %endif
    times 7 - ($ - %%insn_0040df34) db 0
    %%insn_0040df3b:
    add esp,0x4 ; 0040DF3B 83C404
    %if ($ - %%insn_0040df3b) > 3
        %error "LONG_0040DF3B"
    %endif
    times 3 - ($ - %%insn_0040df3b) db 0
    %%insn_0040df3e:
    test eax,eax ; 0040DF3E 85C0
    %if ($ - %%insn_0040df3e) > 2
        %error "LONG_0040DF3E"
    %endif
    times 2 - ($ - %%insn_0040df3e) db 0
    %%insn_0040df40:
    push esi ; 0040DF40 56
    %if ($ - %%insn_0040df40) > 1
        %error "LONG_0040DF40"
    %endif
    times 1 - ($ - %%insn_0040df40) db 0
    %%insn_0040df41:
    jnz short 0x40df52 ; 0040DF41 750F
    %if ($ - %%insn_0040df41) > 2
        %error "LONG_0040DF41"
    %endif
    times 2 - ($ - %%insn_0040df41) db 0
    %%insn_0040df43:
    call dword near [0x424400] ; 0040DF43 FF1500444200
    %if ($ - %%insn_0040df43) > 6
        %error "LONG_0040DF43"
    %endif
    times 6 - ($ - %%insn_0040df43) db 0
    %%insn_0040df49:
    mov [edi*4+0x41bda0],esi ; 0040DF49 8934BDA0BD4100
    %if ($ - %%insn_0040df49) > 7
        %error "LONG_0040DF49"
    %endif
    times 7 - ($ - %%insn_0040df49) db 0
    %%insn_0040df50:
    jmp short 0x40df5a ; 0040DF50 EB08
    %if ($ - %%insn_0040df50) > 2
        %error "LONG_0040DF50"
    %endif
    times 2 - ($ - %%insn_0040df50) db 0
    %%insn_0040df52:
    call 0x40c9a0 ; 0040DF52 E849EAFFFF
    %if ($ - %%insn_0040df52) > 5
        %error "LONG_0040DF52"
    %endif
    times 5 - ($ - %%insn_0040df52) db 0
    %%insn_0040df57:
    add esp,0x4 ; 0040DF57 83C404
    %if ($ - %%insn_0040df57) > 3
        %error "LONG_0040DF57"
    %endif
    times 3 - ($ - %%insn_0040df57) db 0
    %%insn_0040df5a:
    push dword 0x11 ; 0040DF5A 6A11
    %if ($ - %%insn_0040df5a) > 2
        %error "LONG_0040DF5A"
    %endif
    times 2 - ($ - %%insn_0040df5a) db 0
    %%insn_0040df5c:
    call 0x40df80 ; 0040DF5C E81F000000
    %if ($ - %%insn_0040df5c) > 5
        %error "LONG_0040DF5C"
    %endif
    times 5 - ($ - %%insn_0040df5c) db 0
    %%insn_0040df61:
    add esp,0x4 ; 0040DF61 83C404
    %if ($ - %%insn_0040df61) > 3
        %error "LONG_0040DF61"
    %endif
    times 3 - ($ - %%insn_0040df61) db 0
    %%insn_0040df64:
    pop esi ; 0040DF64 5E
    %if ($ - %%insn_0040df64) > 1
        %error "LONG_0040DF64"
    %endif
    times 1 - ($ - %%insn_0040df64) db 0
    %%insn_0040df65:
    mov eax,[edi*4+0x41bda0] ; 0040DF65 8B04BDA0BD4100
    %if ($ - %%insn_0040df65) > 7
        %error "LONG_0040DF65"
    %endif
    times 7 - ($ - %%insn_0040df65) db 0
    %%insn_0040df6c:
    push eax ; 0040DF6C 50
    %if ($ - %%insn_0040df6c) > 1
        %error "LONG_0040DF6C"
    %endif
    times 1 - ($ - %%insn_0040df6c) db 0
    %%insn_0040df6d:
    call dword near [0x4243f8] ; 0040DF6D FF15F8434200
    %if ($ - %%insn_0040df6d) > 6
        %error "LONG_0040DF6D"
    %endif
    times 6 - ($ - %%insn_0040df6d) db 0
    %%insn_0040df73:
    pop edi ; 0040DF73 5F
    %if ($ - %%insn_0040df73) > 1
        %error "LONG_0040DF73"
    %endif
    times 1 - ($ - %%insn_0040df73) db 0
    %%insn_0040df74:
    pop ebp ; 0040DF74 5D
    %if ($ - %%insn_0040df74) > 1
        %error "LONG_0040DF74"
    %endif
    times 1 - ($ - %%insn_0040df74) db 0
    %%insn_0040df75:
    ret ; 0040DF75 C3
    %if ($ - %%insn_0040df75) > 1
        %error "LONG_0040DF75"
    %endif
    times 1 - ($ - %%insn_0040df75) db 0
    %if ($ - %%fragment_start) != 118
        %error "function fragment size drift: 0040DF00"
    %endif
%endmacro
