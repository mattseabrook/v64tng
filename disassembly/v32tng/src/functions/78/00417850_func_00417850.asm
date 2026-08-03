; PE virtual entry 00417850
; Ghidra working symbol: FUN_00417850
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00417850_part_00 0
    %%fragment_start:
func_00417850:
    %%insn_00417850:
    push ecx ; 00417850 51
    %if ($ - %%insn_00417850) > 1
        %error "LONG_00417850"
    %endif
    times 1 - ($ - %%insn_00417850) db 0
    %%insn_00417851:
    cmp eax,0x1000 ; 00417851 3D00100000
    %if ($ - %%insn_00417851) > 5
        %error "LONG_00417851"
    %endif
    times 5 - ($ - %%insn_00417851) db 0
    %%insn_00417856:
    lea ecx,[esp+0x8] ; 00417856 8D4C2408
    %if ($ - %%insn_00417856) > 4
        %error "LONG_00417856"
    %endif
    times 4 - ($ - %%insn_00417856) db 0
    %%insn_0041785a:
    jc short 0x417870 ; 0041785A 7214
    %if ($ - %%insn_0041785a) > 2
        %error "LONG_0041785A"
    %endif
    times 2 - ($ - %%insn_0041785a) db 0
    %%insn_0041785c:
    sub ecx,0x1000 ; 0041785C 81E900100000
    %if ($ - %%insn_0041785c) > 6
        %error "LONG_0041785C"
    %endif
    times 6 - ($ - %%insn_0041785c) db 0
    %%insn_00417862:
    sub eax,0x1000 ; 00417862 2D00100000
    %if ($ - %%insn_00417862) > 5
        %error "LONG_00417862"
    %endif
    times 5 - ($ - %%insn_00417862) db 0
    %%insn_00417867:
    test [ecx],eax ; 00417867 8501
    %if ($ - %%insn_00417867) > 2
        %error "LONG_00417867"
    %endif
    times 2 - ($ - %%insn_00417867) db 0
    %%insn_00417869:
    cmp eax,0x1000 ; 00417869 3D00100000
    %if ($ - %%insn_00417869) > 5
        %error "LONG_00417869"
    %endif
    times 5 - ($ - %%insn_00417869) db 0
    %%insn_0041786e:
    jnc short 0x41785c ; 0041786E 73EC
    %if ($ - %%insn_0041786e) > 2
        %error "LONG_0041786E"
    %endif
    times 2 - ($ - %%insn_0041786e) db 0
    db 0x2B, 0xC8 ; 00417870 2BC8 | sub ecx,eax | encoding preserved
    db 0x8B, 0xC4 ; 00417872 8BC4 | mov eax,esp | encoding preserved
    %%insn_00417874:
    test [ecx],eax ; 00417874 8501
    %if ($ - %%insn_00417874) > 2
        %error "LONG_00417874"
    %endif
    times 2 - ($ - %%insn_00417874) db 0
    db 0x8B, 0xE1 ; 00417876 8BE1 | mov esp,ecx | encoding preserved
    %%insn_00417878:
    mov ecx,[eax] ; 00417878 8B08
    %if ($ - %%insn_00417878) > 2
        %error "LONG_00417878"
    %endif
    times 2 - ($ - %%insn_00417878) db 0
    %%insn_0041787a:
    mov eax,[eax+0x4] ; 0041787A 8B4004
    %if ($ - %%insn_0041787a) > 3
        %error "LONG_0041787A"
    %endif
    times 3 - ($ - %%insn_0041787a) db 0
    %%insn_0041787d:
    push eax ; 0041787D 50
    %if ($ - %%insn_0041787d) > 1
        %error "LONG_0041787D"
    %endif
    times 1 - ($ - %%insn_0041787d) db 0
    %%insn_0041787e:
    ret ; 0041787E C3
    %if ($ - %%insn_0041787e) > 1
        %error "LONG_0041787E"
    %endif
    times 1 - ($ - %%insn_0041787e) db 0
    %if ($ - %%fragment_start) != 47
        %error "function fragment size drift: 00417850"
    %endif
%endmacro
