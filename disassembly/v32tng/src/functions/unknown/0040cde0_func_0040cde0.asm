; PE virtual entry 0040CDE0
; Ghidra working symbol: FUN_0040cde0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040cde0_part_00 0
    %%fragment_start:
func_0040cde0:
    %%insn_0040cde0:
    push esi ; 0040CDE0 56
    %if ($ - %%insn_0040cde0) > 1
        %error "LONG_0040CDE0"
    %endif
    times 1 - ($ - %%insn_0040cde0) db 0
    %%insn_0040cde1:
    mov esi,[esp+0x8] ; 0040CDE1 8B742408
    %if ($ - %%insn_0040cde1) > 4
        %error "LONG_0040CDE1"
    %endif
    times 4 - ($ - %%insn_0040cde1) db 0
    %%insn_0040cde5:
    cmp esi,0xffffffffffffffe0 ; 0040CDE5 83FEE0
    %if ($ - %%insn_0040cde5) > 3
        %error "LONG_0040CDE5"
    %endif
    times 3 - ($ - %%insn_0040cde5) db 0
    %%insn_0040cde8:
    push edi ; 0040CDE8 57
    %if ($ - %%insn_0040cde8) > 1
        %error "LONG_0040CDE8"
    %endif
    times 1 - ($ - %%insn_0040cde8) db 0
    %%insn_0040cde9:
    ja short 0x40ce1f ; 0040CDE9 7734
    %if ($ - %%insn_0040cde9) > 2
        %error "LONG_0040CDE9"
    %endif
    times 2 - ($ - %%insn_0040cde9) db 0
    %%insn_0040cdeb:
    test esi,esi ; 0040CDEB 85F6
    %if ($ - %%insn_0040cdeb) > 2
        %error "LONG_0040CDEB"
    %endif
    times 2 - ($ - %%insn_0040cdeb) db 0
    %%insn_0040cded:
    jnz short 0x40cdf4 ; 0040CDED 7505
    %if ($ - %%insn_0040cded) > 2
        %error "LONG_0040CDED"
    %endif
    times 2 - ($ - %%insn_0040cded) db 0
    %%insn_0040cdef:
    mov esi,0x1 ; 0040CDEF BE01000000
    %if ($ - %%insn_0040cdef) > 5
        %error "LONG_0040CDEF"
    %endif
    times 5 - ($ - %%insn_0040cdef) db 0
    %%insn_0040cdf4:
    mov edi,[esp+0x10] ; 0040CDF4 8B7C2410
    %if ($ - %%insn_0040cdf4) > 4
        %error "LONG_0040CDF4"
    %endif
    times 4 - ($ - %%insn_0040cdf4) db 0
    %%insn_0040cdf8:
    cmp esi,0xffffffffffffffe0 ; 0040CDF8 83FEE0
    %if ($ - %%insn_0040cdf8) > 3
        %error "LONG_0040CDF8"
    %endif
    times 3 - ($ - %%insn_0040cdf8) db 0
    %%insn_0040cdfb:
    ja short 0x40ce08 ; 0040CDFB 770B
    %if ($ - %%insn_0040cdfb) > 2
        %error "LONG_0040CDFB"
    %endif
    times 2 - ($ - %%insn_0040cdfb) db 0
    %%insn_0040cdfd:
    push esi ; 0040CDFD 56
    %if ($ - %%insn_0040cdfd) > 1
        %error "LONG_0040CDFD"
    %endif
    times 1 - ($ - %%insn_0040cdfd) db 0
    %%insn_0040cdfe:
    call 0x40ce30 ; 0040CDFE E82D000000
    %if ($ - %%insn_0040cdfe) > 5
        %error "LONG_0040CDFE"
    %endif
    times 5 - ($ - %%insn_0040cdfe) db 0
    %%insn_0040ce03:
    add esp,0x4 ; 0040CE03 83C404
    %if ($ - %%insn_0040ce03) > 3
        %error "LONG_0040CE03"
    %endif
    times 3 - ($ - %%insn_0040ce03) db 0
    %%insn_0040ce06:
    jmp short 0x40ce0a ; 0040CE06 EB02
    %if ($ - %%insn_0040ce06) > 2
        %error "LONG_0040CE06"
    %endif
    times 2 - ($ - %%insn_0040ce06) db 0
    db 0x33, 0xC0 ; 0040CE08 33C0 | xor eax,eax | encoding preserved
    %%insn_0040ce0a:
    test eax,eax ; 0040CE0A 85C0
    %if ($ - %%insn_0040ce0a) > 2
        %error "LONG_0040CE0A"
    %endif
    times 2 - ($ - %%insn_0040ce0a) db 0
    %%insn_0040ce0c:
    jnz short 0x40ce21 ; 0040CE0C 7513
    %if ($ - %%insn_0040ce0c) > 2
        %error "LONG_0040CE0C"
    %endif
    times 2 - ($ - %%insn_0040ce0c) db 0
    %%insn_0040ce0e:
    test edi,edi ; 0040CE0E 85FF
    %if ($ - %%insn_0040ce0e) > 2
        %error "LONG_0040CE0E"
    %endif
    times 2 - ($ - %%insn_0040ce0e) db 0
    %%insn_0040ce10:
    jz short 0x40ce21 ; 0040CE10 740F
    %if ($ - %%insn_0040ce10) > 2
        %error "LONG_0040CE10"
    %endif
    times 2 - ($ - %%insn_0040ce10) db 0
    %%insn_0040ce12:
    push esi ; 0040CE12 56
    %if ($ - %%insn_0040ce12) > 1
        %error "LONG_0040CE12"
    %endif
    times 1 - ($ - %%insn_0040ce12) db 0
    %%insn_0040ce13:
    call 0x40f6c0 ; 0040CE13 E8A8280000
    %if ($ - %%insn_0040ce13) > 5
        %error "LONG_0040CE13"
    %endif
    times 5 - ($ - %%insn_0040ce13) db 0
    %%insn_0040ce18:
    add esp,0x4 ; 0040CE18 83C404
    %if ($ - %%insn_0040ce18) > 3
        %error "LONG_0040CE18"
    %endif
    times 3 - ($ - %%insn_0040ce18) db 0
    %%insn_0040ce1b:
    test eax,eax ; 0040CE1B 85C0
    %if ($ - %%insn_0040ce1b) > 2
        %error "LONG_0040CE1B"
    %endif
    times 2 - ($ - %%insn_0040ce1b) db 0
    %%insn_0040ce1d:
    jnz short 0x40cdf8 ; 0040CE1D 75D9
    %if ($ - %%insn_0040ce1d) > 2
        %error "LONG_0040CE1D"
    %endif
    times 2 - ($ - %%insn_0040ce1d) db 0
    db 0x33, 0xC0 ; 0040CE1F 33C0 | xor eax,eax | encoding preserved
    %%insn_0040ce21:
    pop edi ; 0040CE21 5F
    %if ($ - %%insn_0040ce21) > 1
        %error "LONG_0040CE21"
    %endif
    times 1 - ($ - %%insn_0040ce21) db 0
    %%insn_0040ce22:
    pop esi ; 0040CE22 5E
    %if ($ - %%insn_0040ce22) > 1
        %error "LONG_0040CE22"
    %endif
    times 1 - ($ - %%insn_0040ce22) db 0
    %%insn_0040ce23:
    ret ; 0040CE23 C3
    %if ($ - %%insn_0040ce23) > 1
        %error "LONG_0040CE23"
    %endif
    times 1 - ($ - %%insn_0040ce23) db 0
    %if ($ - %%fragment_start) != 68
        %error "function fragment size drift: 0040CDE0"
    %endif
%endmacro
