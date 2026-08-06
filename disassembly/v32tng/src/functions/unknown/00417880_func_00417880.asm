; PE virtual entry 00417880
; Ghidra working symbol: FUN_00417880
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00417880_part_00 0
    %%fragment_start:
func_00417880:
    %%insn_00417880:
    mov eax,[0x4212b8] ; 00417880 A1B8124200
    %if ($ - %%insn_00417880) > 5
        %error "LONG_00417880"
    %endif
    times 5 - ($ - %%insn_00417880) db 0
    %%insn_00417885:
    test eax,eax ; 00417885 85C0
    %if ($ - %%insn_00417885) > 2
        %error "LONG_00417885"
    %endif
    times 2 - ($ - %%insn_00417885) db 0
    %%insn_00417887:
    jnz short 0x4178b1 ; 00417887 7528
    %if ($ - %%insn_00417887) > 2
        %error "LONG_00417887"
    %endif
    times 2 - ($ - %%insn_00417887) db 0
    %%insn_00417889:
    push dword 0xb ; 00417889 6A0B
    %if ($ - %%insn_00417889) > 2
        %error "LONG_00417889"
    %endif
    times 2 - ($ - %%insn_00417889) db 0
    %%insn_0041788b:
    call 0x40df00 ; 0041788B E87066FFFF
    %if ($ - %%insn_0041788b) > 5
        %error "LONG_0041788B"
    %endif
    times 5 - ($ - %%insn_0041788b) db 0
    %%insn_00417890:
    mov eax,[0x4212b8] ; 00417890 A1B8124200
    %if ($ - %%insn_00417890) > 5
        %error "LONG_00417890"
    %endif
    times 5 - ($ - %%insn_00417890) db 0
    %%insn_00417895:
    add esp,0x4 ; 00417895 83C404
    %if ($ - %%insn_00417895) > 3
        %error "LONG_00417895"
    %endif
    times 3 - ($ - %%insn_00417895) db 0
    %%insn_00417898:
    test eax,eax ; 00417898 85C0
    %if ($ - %%insn_00417898) > 2
        %error "LONG_00417898"
    %endif
    times 2 - ($ - %%insn_00417898) db 0
    %%insn_0041789a:
    jnz short 0x4178a7 ; 0041789A 750B
    %if ($ - %%insn_0041789a) > 2
        %error "LONG_0041789A"
    %endif
    times 2 - ($ - %%insn_0041789a) db 0
    %%insn_0041789c:
    call 0x4178e0 ; 0041789C E83F000000
    %if ($ - %%insn_0041789c) > 5
        %error "LONG_0041789C"
    %endif
    times 5 - ($ - %%insn_0041789c) db 0
    %%insn_004178a1:
    inc dword [0x4212b8] ; 004178A1 FF05B8124200
    %if ($ - %%insn_004178a1) > 6
        %error "LONG_004178A1"
    %endif
    times 6 - ($ - %%insn_004178a1) db 0
    %%insn_004178a7:
    push dword 0xb ; 004178A7 6A0B
    %if ($ - %%insn_004178a7) > 2
        %error "LONG_004178A7"
    %endif
    times 2 - ($ - %%insn_004178a7) db 0
    %%insn_004178a9:
    call 0x40df80 ; 004178A9 E8D266FFFF
    %if ($ - %%insn_004178a9) > 5
        %error "LONG_004178A9"
    %endif
    times 5 - ($ - %%insn_004178a9) db 0
    %%insn_004178ae:
    add esp,0x4 ; 004178AE 83C404
    %if ($ - %%insn_004178ae) > 3
        %error "LONG_004178AE"
    %endif
    times 3 - ($ - %%insn_004178ae) db 0
    %%insn_004178b1:
    ret ; 004178B1 C3
    %if ($ - %%insn_004178b1) > 1
        %error "LONG_004178B1"
    %endif
    times 1 - ($ - %%insn_004178b1) db 0
    %if ($ - %%fragment_start) != 50
        %error "function fragment size drift: 00417880"
    %endif
%endmacro
