; PE virtual entry 00412910
; Ghidra working symbol: FUN_00412910
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412910_part_00 0
    %%fragment_start:
func_00412910:
    %%insn_00412910:
    mov eax,[0x420ea0] ; 00412910 A1A00E4200
    %if ($ - %%insn_00412910) > 5
        %error "LONG_00412910"
    %endif
    times 5 - ($ - %%insn_00412910) db 0
    %%insn_00412915:
    cmp eax,0x1 ; 00412915 83F801
    %if ($ - %%insn_00412915) > 3
        %error "LONG_00412915"
    %endif
    times 3 - ($ - %%insn_00412915) db 0
    %%insn_00412918:
    jz short 0x412927 ; 00412918 740D
    %if ($ - %%insn_00412918) > 2
        %error "LONG_00412918"
    %endif
    times 2 - ($ - %%insn_00412918) db 0
    %%insn_0041291a:
    test eax,eax ; 0041291A 85C0
    %if ($ - %%insn_0041291a) > 2
        %error "LONG_0041291A"
    %endif
    times 2 - ($ - %%insn_0041291a) db 0
    %%insn_0041291c:
    jnz short 0x41294c ; 0041291C 752E
    %if ($ - %%insn_0041291c) > 2
        %error "LONG_0041291C"
    %endif
    times 2 - ($ - %%insn_0041291c) db 0
    %%insn_0041291e:
    cmp dword [0x41bd94],0x1 ; 0041291E 833D94BD410001
    %if ($ - %%insn_0041291e) > 7
        %error "LONG_0041291E"
    %endif
    times 7 - ($ - %%insn_0041291e) db 0
    %%insn_00412925:
    jnz short 0x41294c ; 00412925 7525
    %if ($ - %%insn_00412925) > 2
        %error "LONG_00412925"
    %endif
    times 2 - ($ - %%insn_00412925) db 0
    %%insn_00412927:
    push dword 0xfc ; 00412927 68FC000000
    %if ($ - %%insn_00412927) > 5
        %error "LONG_00412927"
    %endif
    times 5 - ($ - %%insn_00412927) db 0
    %%insn_0041292c:
    call 0x412950 ; 0041292C E81F000000
    %if ($ - %%insn_0041292c) > 5
        %error "LONG_0041292C"
    %endif
    times 5 - ($ - %%insn_0041292c) db 0
    %%insn_00412931:
    mov eax,[0x421170] ; 00412931 A170114200
    %if ($ - %%insn_00412931) > 5
        %error "LONG_00412931"
    %endif
    times 5 - ($ - %%insn_00412931) db 0
    %%insn_00412936:
    add esp,0x4 ; 00412936 83C404
    %if ($ - %%insn_00412936) > 3
        %error "LONG_00412936"
    %endif
    times 3 - ($ - %%insn_00412936) db 0
    %%insn_00412939:
    test eax,eax ; 00412939 85C0
    %if ($ - %%insn_00412939) > 2
        %error "LONG_00412939"
    %endif
    times 2 - ($ - %%insn_00412939) db 0
    %%insn_0041293b:
    jz short 0x41293f ; 0041293B 7402
    %if ($ - %%insn_0041293b) > 2
        %error "LONG_0041293B"
    %endif
    times 2 - ($ - %%insn_0041293b) db 0
    %%insn_0041293d:
    call eax ; 0041293D FFD0
    %if ($ - %%insn_0041293d) > 2
        %error "LONG_0041293D"
    %endif
    times 2 - ($ - %%insn_0041293d) db 0
    %%insn_0041293f:
    push dword 0xff ; 0041293F 68FF000000
    %if ($ - %%insn_0041293f) > 5
        %error "LONG_0041293F"
    %endif
    times 5 - ($ - %%insn_0041293f) db 0
    %%insn_00412944:
    call 0x412950 ; 00412944 E807000000
    %if ($ - %%insn_00412944) > 5
        %error "LONG_00412944"
    %endif
    times 5 - ($ - %%insn_00412944) db 0
    %%insn_00412949:
    add esp,0x4 ; 00412949 83C404
    %if ($ - %%insn_00412949) > 3
        %error "LONG_00412949"
    %endif
    times 3 - ($ - %%insn_00412949) db 0
    %%insn_0041294c:
    ret ; 0041294C C3
    %if ($ - %%insn_0041294c) > 1
        %error "LONG_0041294C"
    %endif
    times 1 - ($ - %%insn_0041294c) db 0
    %if ($ - %%fragment_start) != 61
        %error "function fragment size drift: 00412910"
    %endif
%endmacro
