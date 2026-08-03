; PE virtual entry 00407AE7
; Ghidra working symbol: FUN_00407ae7
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407ae7_part_00 0
    %%fragment_start:
func_00407ae7:
    %%insn_00407ae7:
    push ebp ; 00407AE7 55
    %if ($ - %%insn_00407ae7) > 1
        %error "LONG_00407AE7"
    %endif
    times 1 - ($ - %%insn_00407ae7) db 0
    db 0x8B, 0xEC ; 00407AE8 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407aea:
    push ecx ; 00407AEA 51
    %if ($ - %%insn_00407aea) > 1
        %error "LONG_00407AEA"
    %endif
    times 1 - ($ - %%insn_00407aea) db 0
    %%insn_00407aeb:
    mov [ebp-0x4],ecx ; 00407AEB 894DFC
    %if ($ - %%insn_00407aeb) > 3
        %error "LONG_00407AEB"
    %endif
    times 3 - ($ - %%insn_00407aeb) db 0
    %%insn_00407aee:
    push dword 0x0 ; 00407AEE 6A00
    %if ($ - %%insn_00407aee) > 2
        %error "LONG_00407AEE"
    %endif
    times 2 - ($ - %%insn_00407aee) db 0
    %%insn_00407af0:
    mov eax,[ebp-0x4] ; 00407AF0 8B45FC
    %if ($ - %%insn_00407af0) > 3
        %error "LONG_00407AF0"
    %endif
    times 3 - ($ - %%insn_00407af0) db 0
    %%insn_00407af3:
    push eax ; 00407AF3 50
    %if ($ - %%insn_00407af3) > 1
        %error "LONG_00407AF3"
    %endif
    times 1 - ($ - %%insn_00407af3) db 0
    %%insn_00407af4:
    mov ecx,[ebp-0x4] ; 00407AF4 8B4DFC
    %if ($ - %%insn_00407af4) > 3
        %error "LONG_00407AF4"
    %endif
    times 3 - ($ - %%insn_00407af4) db 0
    %%insn_00407af7:
    mov edx,[ecx] ; 00407AF7 8B11
    %if ($ - %%insn_00407af7) > 2
        %error "LONG_00407AF7"
    %endif
    times 2 - ($ - %%insn_00407af7) db 0
    %%insn_00407af9:
    call dword near [edx+0x80] ; 00407AF9 FF9280000000
    %if ($ - %%insn_00407af9) > 6
        %error "LONG_00407AF9"
    %endif
    times 6 - ($ - %%insn_00407af9) db 0
    %%insn_00407aff:
    mov dword [0x41f550],0x0 ; 00407AFF C70550F5410000000000
    %if ($ - %%insn_00407aff) > 10
        %error "LONG_00407AFF"
    %endif
    times 10 - ($ - %%insn_00407aff) db 0
    db 0x8B, 0xE5 ; 00407B09 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407b0b:
    pop ebp ; 00407B0B 5D
    %if ($ - %%insn_00407b0b) > 1
        %error "LONG_00407B0B"
    %endif
    times 1 - ($ - %%insn_00407b0b) db 0
    %%insn_00407b0c:
    ret ; 00407B0C C3
    %if ($ - %%insn_00407b0c) > 1
        %error "LONG_00407B0C"
    %endif
    times 1 - ($ - %%insn_00407b0c) db 0
    %if ($ - %%fragment_start) != 38
        %error "function fragment size drift: 00407AE7"
    %endif
%endmacro
