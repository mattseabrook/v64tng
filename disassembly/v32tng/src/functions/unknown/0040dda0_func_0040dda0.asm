; PE virtual entry 0040DDA0
; Ghidra working symbol: __amsg_exit
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040dda0_part_00 0
    %%fragment_start:
func_0040dda0:
    %%insn_0040dda0:
    cmp dword [0x420ea0],0x1 ; 0040DDA0 833DA00E420001
    %if ($ - %%insn_0040dda0) > 7
        %error "LONG_0040DDA0"
    %endif
    times 7 - ($ - %%insn_0040dda0) db 0
    %%insn_0040dda7:
    jnz short 0x40ddae ; 0040DDA7 7505
    %if ($ - %%insn_0040dda7) > 2
        %error "LONG_0040DDA7"
    %endif
    times 2 - ($ - %%insn_0040dda7) db 0
    %%insn_0040dda9:
    call 0x412910 ; 0040DDA9 E8624B0000
    %if ($ - %%insn_0040dda9) > 5
        %error "LONG_0040DDA9"
    %endif
    times 5 - ($ - %%insn_0040dda9) db 0
    %%insn_0040ddae:
    mov eax,[esp+0x4] ; 0040DDAE 8B442404
    %if ($ - %%insn_0040ddae) > 4
        %error "LONG_0040DDAE"
    %endif
    times 4 - ($ - %%insn_0040ddae) db 0
    %%insn_0040ddb2:
    push eax ; 0040DDB2 50
    %if ($ - %%insn_0040ddb2) > 1
        %error "LONG_0040DDB2"
    %endif
    times 1 - ($ - %%insn_0040ddb2) db 0
    %%insn_0040ddb3:
    call 0x412950 ; 0040DDB3 E8984B0000
    %if ($ - %%insn_0040ddb3) > 5
        %error "LONG_0040DDB3"
    %endif
    times 5 - ($ - %%insn_0040ddb3) db 0
    %%insn_0040ddb8:
    add esp,0x4 ; 0040DDB8 83C404
    %if ($ - %%insn_0040ddb8) > 3
        %error "LONG_0040DDB8"
    %endif
    times 3 - ($ - %%insn_0040ddb8) db 0
    %%insn_0040ddbb:
    push dword 0xff ; 0040DDBB 68FF000000
    %if ($ - %%insn_0040ddbb) > 5
        %error "LONG_0040DDBB"
    %endif
    times 5 - ($ - %%insn_0040ddbb) db 0
    %%insn_0040ddc0:
    call dword near [0x41bd90] ; 0040DDC0 FF1590BD4100
    %if ($ - %%insn_0040ddc0) > 6
        %error "LONG_0040DDC0"
    %endif
    times 6 - ($ - %%insn_0040ddc0) db 0
    %if ($ - %%fragment_start) != 38
        %error "function fragment size drift: 0040DDA0"
    %endif
%endmacro
