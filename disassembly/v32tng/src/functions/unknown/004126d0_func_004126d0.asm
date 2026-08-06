; PE virtual entry 004126D0
; Ghidra working symbol: FUN_004126d0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004126d0_part_00 0
    %%fragment_start:
func_004126d0:
    %%insn_004126d0:
    push edi ; 004126D0 57
    %if ($ - %%insn_004126d0) > 1
        %error "LONG_004126D0"
    %endif
    times 1 - ($ - %%insn_004126d0) db 0
    %%insn_004126d1:
    mov ecx,0x40 ; 004126D1 B940000000
    %if ($ - %%insn_004126d1) > 5
        %error "LONG_004126D1"
    %endif
    times 5 - ($ - %%insn_004126d1) db 0
    db 0x33, 0xC0 ; 004126D6 33C0 | xor eax,eax | encoding preserved
    %%insn_004126d8:
    mov edi,0x421050 ; 004126D8 BF50104200
    %if ($ - %%insn_004126d8) > 5
        %error "LONG_004126D8"
    %endif
    times 5 - ($ - %%insn_004126d8) db 0
    %%insn_004126dd:
    rep stosd ; 004126DD F3AB
    %if ($ - %%insn_004126dd) > 2
        %error "LONG_004126DD"
    %endif
    times 2 - ($ - %%insn_004126dd) db 0
    %%insn_004126df:
    stosb ; 004126DF AA
    %if ($ - %%insn_004126df) > 1
        %error "LONG_004126DF"
    %endif
    times 1 - ($ - %%insn_004126df) db 0
    db 0x33, 0xC0 ; 004126E0 33C0 | xor eax,eax | encoding preserved
    %%insn_004126e2:
    pop edi ; 004126E2 5F
    %if ($ - %%insn_004126e2) > 1
        %error "LONG_004126E2"
    %endif
    times 1 - ($ - %%insn_004126e2) db 0
    %%insn_004126e3:
    mov [0x421154],eax ; 004126E3 A354114200
    %if ($ - %%insn_004126e3) > 5
        %error "LONG_004126E3"
    %endif
    times 5 - ($ - %%insn_004126e3) db 0
    %%insn_004126e8:
    mov [0x421158],eax ; 004126E8 A358114200
    %if ($ - %%insn_004126e8) > 5
        %error "LONG_004126E8"
    %endif
    times 5 - ($ - %%insn_004126e8) db 0
    %%insn_004126ed:
    mov [0x421160],eax ; 004126ED A360114200
    %if ($ - %%insn_004126ed) > 5
        %error "LONG_004126ED"
    %endif
    times 5 - ($ - %%insn_004126ed) db 0
    %%insn_004126f2:
    mov [0x421164],eax ; 004126F2 A364114200
    %if ($ - %%insn_004126f2) > 5
        %error "LONG_004126F2"
    %endif
    times 5 - ($ - %%insn_004126f2) db 0
    %%insn_004126f7:
    mov [0x421168],eax ; 004126F7 A368114200
    %if ($ - %%insn_004126f7) > 5
        %error "LONG_004126F7"
    %endif
    times 5 - ($ - %%insn_004126f7) db 0
    %%insn_004126fc:
    ret ; 004126FC C3
    %if ($ - %%insn_004126fc) > 1
        %error "LONG_004126FC"
    %endif
    times 1 - ($ - %%insn_004126fc) db 0
    %if ($ - %%fragment_start) != 45
        %error "function fragment size drift: 004126D0"
    %endif
%endmacro
