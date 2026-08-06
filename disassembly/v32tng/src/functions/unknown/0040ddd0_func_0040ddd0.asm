; PE virtual entry 0040DDD0
; Ghidra working symbol: FUN_0040ddd0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040ddd0_part_00 0
    %%fragment_start:
func_0040ddd0:
    %%insn_0040ddd0:
    push dword 0x0 ; 0040DDD0 6A00
    %if ($ - %%insn_0040ddd0) > 2
        %error "LONG_0040DDD0"
    %endif
    times 2 - ($ - %%insn_0040ddd0) db 0
    %%insn_0040ddd2:
    push dword 0x1000 ; 0040DDD2 6800100000
    %if ($ - %%insn_0040ddd2) > 5
        %error "LONG_0040DDD2"
    %endif
    times 5 - ($ - %%insn_0040ddd2) db 0
    %%insn_0040ddd7:
    push dword 0x0 ; 0040DDD7 6A00
    %if ($ - %%insn_0040ddd7) > 2
        %error "LONG_0040DDD7"
    %endif
    times 2 - ($ - %%insn_0040ddd7) db 0
    %%insn_0040ddd9:
    call dword near [0x424408] ; 0040DDD9 FF1508444200
    %if ($ - %%insn_0040ddd9) > 6
        %error "LONG_0040DDD9"
    %endif
    times 6 - ($ - %%insn_0040ddd9) db 0
    %%insn_0040dddf:
    test eax,eax ; 0040DDDF 85C0
    %if ($ - %%insn_0040dddf) > 2
        %error "LONG_0040DDDF"
    %endif
    times 2 - ($ - %%insn_0040dddf) db 0
    %%insn_0040dde1:
    mov [0x42358c],eax ; 0040DDE1 A38C354200
    %if ($ - %%insn_0040dde1) > 5
        %error "LONG_0040DDE1"
    %endif
    times 5 - ($ - %%insn_0040dde1) db 0
    %%insn_0040dde6:
    jnz short 0x40dde9 ; 0040DDE6 7501
    %if ($ - %%insn_0040dde6) > 2
        %error "LONG_0040DDE6"
    %endif
    times 2 - ($ - %%insn_0040dde6) db 0
    %%insn_0040dde8:
    ret ; 0040DDE8 C3
    %if ($ - %%insn_0040dde8) > 1
        %error "LONG_0040DDE8"
    %endif
    times 1 - ($ - %%insn_0040dde8) db 0
    %%insn_0040dde9:
    call 0x40e0d0 ; 0040DDE9 E8E2020000
    %if ($ - %%insn_0040dde9) > 5
        %error "LONG_0040DDE9"
    %endif
    times 5 - ($ - %%insn_0040dde9) db 0
    %%insn_0040ddee:
    test eax,eax ; 0040DDEE 85C0
    %if ($ - %%insn_0040ddee) > 2
        %error "LONG_0040DDEE"
    %endif
    times 2 - ($ - %%insn_0040ddee) db 0
    %%insn_0040ddf0:
    jnz short 0x40de01 ; 0040DDF0 750F
    %if ($ - %%insn_0040ddf0) > 2
        %error "LONG_0040DDF0"
    %endif
    times 2 - ($ - %%insn_0040ddf0) db 0
    %%insn_0040ddf2:
    mov eax,[0x42358c] ; 0040DDF2 A18C354200
    %if ($ - %%insn_0040ddf2) > 5
        %error "LONG_0040DDF2"
    %endif
    times 5 - ($ - %%insn_0040ddf2) db 0
    %%insn_0040ddf7:
    push eax ; 0040DDF7 50
    %if ($ - %%insn_0040ddf7) > 1
        %error "LONG_0040DDF7"
    %endif
    times 1 - ($ - %%insn_0040ddf7) db 0
    %%insn_0040ddf8:
    call dword near [0x42440c] ; 0040DDF8 FF150C444200
    %if ($ - %%insn_0040ddf8) > 6
        %error "LONG_0040DDF8"
    %endif
    times 6 - ($ - %%insn_0040ddf8) db 0
    db 0x33, 0xC0 ; 0040DDFE 33C0 | xor eax,eax | encoding preserved
    %%insn_0040de00:
    ret ; 0040DE00 C3
    %if ($ - %%insn_0040de00) > 1
        %error "LONG_0040DE00"
    %endif
    times 1 - ($ - %%insn_0040de00) db 0
    %%insn_0040de01:
    mov eax,0x1 ; 0040DE01 B801000000
    %if ($ - %%insn_0040de01) > 5
        %error "LONG_0040DE01"
    %endif
    times 5 - ($ - %%insn_0040de01) db 0
    %%insn_0040de06:
    ret ; 0040DE06 C3
    %if ($ - %%insn_0040de06) > 1
        %error "LONG_0040DE06"
    %endif
    times 1 - ($ - %%insn_0040de06) db 0
    %if ($ - %%fragment_start) != 55
        %error "function fragment size drift: 0040DDD0"
    %endif
%endmacro
