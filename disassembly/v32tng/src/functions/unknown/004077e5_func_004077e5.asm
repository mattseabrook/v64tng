; PE virtual entry 004077E5
; Ghidra working symbol: FUN_004077e5
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004077e5_part_00 0
    %%fragment_start:
func_004077e5:
    %%insn_004077e5:
    push ebp ; 004077E5 55
    %if ($ - %%insn_004077e5) > 1
        %error "LONG_004077E5"
    %endif
    times 1 - ($ - %%insn_004077e5) db 0
    db 0x8B, 0xEC ; 004077E6 8BEC | mov ebp,esp | encoding preserved
    %%insn_004077e8:
    push ecx ; 004077E8 51
    %if ($ - %%insn_004077e8) > 1
        %error "LONG_004077E8"
    %endif
    times 1 - ($ - %%insn_004077e8) db 0
    %%insn_004077e9:
    mov [ebp-0x4],ecx ; 004077E9 894DFC
    %if ($ - %%insn_004077e9) > 3
        %error "LONG_004077E9"
    %endif
    times 3 - ($ - %%insn_004077e9) db 0
    %%insn_004077ec:
    mov dword [0x4213a0],0x4078b3 ; 004077EC C705A0134200B3784000
    %if ($ - %%insn_004077ec) > 10
        %error "LONG_004077EC"
    %endif
    times 10 - ($ - %%insn_004077ec) db 0
    %%insn_004077f6:
    mov dword [0x4213a4],0x407748 ; 004077F6 C705A413420048774000
    %if ($ - %%insn_004077f6) > 10
        %error "LONG_004077F6"
    %endif
    times 10 - ($ - %%insn_004077f6) db 0
    %%insn_00407800:
    mov dword [0x4213a8],0x40800d ; 00407800 C705A81342000D804000
    %if ($ - %%insn_00407800) > 10
        %error "LONG_00407800"
    %endif
    times 10 - ($ - %%insn_00407800) db 0
    %%insn_0040780a:
    mov dword [0x4213ac],0x407a76 ; 0040780A C705AC134200767A4000
    %if ($ - %%insn_0040780a) > 10
        %error "LONG_0040780A"
    %endif
    times 10 - ($ - %%insn_0040780a) db 0
    %%insn_00407814:
    mov dword [0x4213b0],0x407842 ; 00407814 C705B013420042784000
    %if ($ - %%insn_00407814) > 10
        %error "LONG_00407814"
    %endif
    times 10 - ($ - %%insn_00407814) db 0
    %%insn_0040781e:
    mov dword [0x4213b4],0x407931 ; 0040781E C705B413420031794000
    %if ($ - %%insn_0040781e) > 10
        %error "LONG_0040781E"
    %endif
    times 10 - ($ - %%insn_0040781e) db 0
    %%insn_00407828:
    mov dword [0x4213b8],0x407f2d ; 00407828 C705B81342002D7F4000
    %if ($ - %%insn_00407828) > 10
        %error "LONG_00407828"
    %endif
    times 10 - ($ - %%insn_00407828) db 0
    %%insn_00407832:
    mov dword [0x4213bc],0x1 ; 00407832 C705BC13420001000000
    %if ($ - %%insn_00407832) > 10
        %error "LONG_00407832"
    %endif
    times 10 - ($ - %%insn_00407832) db 0
    db 0x33, 0xC0 ; 0040783C 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 0040783E 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407840:
    pop ebp ; 00407840 5D
    %if ($ - %%insn_00407840) > 1
        %error "LONG_00407840"
    %endif
    times 1 - ($ - %%insn_00407840) db 0
    %%insn_00407841:
    ret ; 00407841 C3
    %if ($ - %%insn_00407841) > 1
        %error "LONG_00407841"
    %endif
    times 1 - ($ - %%insn_00407841) db 0
    %if ($ - %%fragment_start) != 93
        %error "function fragment size drift: 004077E5"
    %endif
%endmacro
