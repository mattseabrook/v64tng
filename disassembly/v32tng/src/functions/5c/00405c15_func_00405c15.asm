; PE virtual entry 00405C15
; Ghidra working symbol: FUN_00405c15
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00405c15_part_00 0
    %%fragment_start:
func_00405c15:
    %%insn_00405c15:
    push ebp ; 00405C15 55
    %if ($ - %%insn_00405c15) > 1
        %error "LONG_00405C15"
    %endif
    times 1 - ($ - %%insn_00405c15) db 0
    db 0x8B, 0xEC ; 00405C16 8BEC | mov ebp,esp | encoding preserved
    %%insn_00405c18:
    push ecx ; 00405C18 51
    %if ($ - %%insn_00405c18) > 1
        %error "LONG_00405C18"
    %endif
    times 1 - ($ - %%insn_00405c18) db 0
    %%insn_00405c19:
    mov word [ebp-0x4],0x0 ; 00405C19 66C745FC0000
    %if ($ - %%insn_00405c19) > 6
        %error "LONG_00405C19"
    %endif
    times 6 - ($ - %%insn_00405c19) db 0
    %%insn_00405c1f:
    jmp short 0x405c2d ; 00405C1F EB0C
    %if ($ - %%insn_00405c1f) > 2
        %error "LONG_00405C1F"
    %endif
    times 2 - ($ - %%insn_00405c1f) db 0
    %%insn_00405c21:
    mov ax,[ebp-0x4] ; 00405C21 668B45FC
    %if ($ - %%insn_00405c21) > 4
        %error "LONG_00405C21"
    %endif
    times 4 - ($ - %%insn_00405c21) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 00405C25 66050100 | add ax,0x1 | encoding preserved
    %%insn_00405c29:
    mov [ebp-0x4],ax ; 00405C29 668945FC
    %if ($ - %%insn_00405c29) > 4
        %error "LONG_00405C29"
    %endif
    times 4 - ($ - %%insn_00405c29) db 0
    %%insn_00405c2d:
    movsx ecx,word [ebp-0x4] ; 00405C2D 0FBF4DFC
    %if ($ - %%insn_00405c2d) > 4
        %error "LONG_00405C2D"
    %endif
    times 4 - ($ - %%insn_00405c2d) db 0
    %%insn_00405c31:
    cmp ecx,0x39 ; 00405C31 83F939
    %if ($ - %%insn_00405c31) > 3
        %error "LONG_00405C31"
    %endif
    times 3 - ($ - %%insn_00405c31) db 0
    %%insn_00405c34:
    jnl short 0x405c54 ; 00405C34 7D1E
    %if ($ - %%insn_00405c34) > 2
        %error "LONG_00405C34"
    %endif
    times 2 - ($ - %%insn_00405c34) db 0
    %%insn_00405c36:
    movsx edx,word [ebp-0x4] ; 00405C36 0FBF55FC
    %if ($ - %%insn_00405c36) > 4
        %error "LONG_00405C36"
    %endif
    times 4 - ($ - %%insn_00405c36) db 0
    %%insn_00405c3a:
    movsx eax,word [0x41f46c] ; 00405C3A 0FBF056CF44100
    %if ($ - %%insn_00405c3a) > 7
        %error "LONG_00405C3A"
    %endif
    times 7 - ($ - %%insn_00405c3a) db 0
    %%insn_00405c41:
    movsx ecx,word [ebp-0x4] ; 00405C41 0FBF4DFC
    %if ($ - %%insn_00405c41) > 4
        %error "LONG_00405C41"
    %endif
    times 4 - ($ - %%insn_00405c41) db 0
    %%insn_00405c45:
    mov dl,[edx+0x421d00] ; 00405C45 8A92001D4200
    %if ($ - %%insn_00405c45) > 6
        %error "LONG_00405C45"
    %endif
    times 6 - ($ - %%insn_00405c45) db 0
    %%insn_00405c4b:
    mov [eax+ecx+0x4216c0],dl ; 00405C4B 889408C0164200
    %if ($ - %%insn_00405c4b) > 7
        %error "LONG_00405C4B"
    %endif
    times 7 - ($ - %%insn_00405c4b) db 0
    %%insn_00405c52:
    jmp short 0x405c21 ; 00405C52 EBCD
    %if ($ - %%insn_00405c52) > 2
        %error "LONG_00405C52"
    %endif
    times 2 - ($ - %%insn_00405c52) db 0
    %%insn_00405c54:
    mov ax,[0x41f46c] ; 00405C54 66A16CF44100
    %if ($ - %%insn_00405c54) > 6
        %error "LONG_00405C54"
    %endif
    times 6 - ($ - %%insn_00405c54) db 0
    db 0x66, 0x05, 0x39, 0x00 ; 00405C5A 66053900 | add ax,0x39 | encoding preserved
    %%insn_00405c5e:
    mov [0x41f46c],ax ; 00405C5E 66A36CF44100
    %if ($ - %%insn_00405c5e) > 6
        %error "LONG_00405C5E"
    %endif
    times 6 - ($ - %%insn_00405c5e) db 0
    db 0x8B, 0xE5 ; 00405C64 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00405c66:
    pop ebp ; 00405C66 5D
    %if ($ - %%insn_00405c66) > 1
        %error "LONG_00405C66"
    %endif
    times 1 - ($ - %%insn_00405c66) db 0
    %%insn_00405c67:
    ret ; 00405C67 C3
    %if ($ - %%insn_00405c67) > 1
        %error "LONG_00405C67"
    %endif
    times 1 - ($ - %%insn_00405c67) db 0
    %if ($ - %%fragment_start) != 83
        %error "function fragment size drift: 00405C15"
    %endif
%endmacro
