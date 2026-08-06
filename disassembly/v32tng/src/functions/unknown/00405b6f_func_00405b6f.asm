; PE virtual entry 00405B6F
; Ghidra working symbol: FUN_00405b6f
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00405b6f_part_00 0
    %%fragment_start:
func_00405b6f:
    %%insn_00405b6f:
    push ebp ; 00405B6F 55
    %if ($ - %%insn_00405b6f) > 1
        %error "LONG_00405B6F"
    %endif
    times 1 - ($ - %%insn_00405b6f) db 0
    db 0x8B, 0xEC ; 00405B70 8BEC | mov ebp,esp | encoding preserved
    %%insn_00405b72:
    push ecx ; 00405B72 51
    %if ($ - %%insn_00405b72) > 1
        %error "LONG_00405B72"
    %endif
    times 1 - ($ - %%insn_00405b72) db 0
    %%insn_00405b73:
    mov word [ebp-0x4],0x0 ; 00405B73 66C745FC0000
    %if ($ - %%insn_00405b73) > 6
        %error "LONG_00405B73"
    %endif
    times 6 - ($ - %%insn_00405b73) db 0
    %%insn_00405b79:
    jmp short 0x405b87 ; 00405B79 EB0C
    %if ($ - %%insn_00405b79) > 2
        %error "LONG_00405B79"
    %endif
    times 2 - ($ - %%insn_00405b79) db 0
    %%insn_00405b7b:
    mov ax,[ebp-0x4] ; 00405B7B 668B45FC
    %if ($ - %%insn_00405b7b) > 4
        %error "LONG_00405B7B"
    %endif
    times 4 - ($ - %%insn_00405b7b) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 00405B7F 66050100 | add ax,0x1 | encoding preserved
    %%insn_00405b83:
    mov [ebp-0x4],ax ; 00405B83 668945FC
    %if ($ - %%insn_00405b83) > 4
        %error "LONG_00405B83"
    %endif
    times 4 - ($ - %%insn_00405b83) db 0
    %%insn_00405b87:
    movsx ecx,word [ebp-0x4] ; 00405B87 0FBF4DFC
    %if ($ - %%insn_00405b87) > 4
        %error "LONG_00405B87"
    %endif
    times 4 - ($ - %%insn_00405b87) db 0
    %%insn_00405b8b:
    cmp ecx,0x39 ; 00405B8B 83F939
    %if ($ - %%insn_00405b8b) > 3
        %error "LONG_00405B8B"
    %endif
    times 3 - ($ - %%insn_00405b8b) db 0
    %%insn_00405b8e:
    jnl short 0x405bae ; 00405B8E 7D1E
    %if ($ - %%insn_00405b8e) > 2
        %error "LONG_00405B8E"
    %endif
    times 2 - ($ - %%insn_00405b8e) db 0
    %%insn_00405b90:
    movsx edx,word [ebp-0x4] ; 00405B90 0FBF55FC
    %if ($ - %%insn_00405b90) > 4
        %error "LONG_00405B90"
    %endif
    times 4 - ($ - %%insn_00405b90) db 0
    %%insn_00405b94:
    movsx eax,word [0x41f46c] ; 00405B94 0FBF056CF44100
    %if ($ - %%insn_00405b94) > 7
        %error "LONG_00405B94"
    %endif
    times 7 - ($ - %%insn_00405b94) db 0
    %%insn_00405b9b:
    movsx ecx,word [ebp-0x4] ; 00405B9B 0FBF4DFC
    %if ($ - %%insn_00405b9b) > 4
        %error "LONG_00405B9B"
    %endif
    times 4 - ($ - %%insn_00405b9b) db 0
    %%insn_00405b9f:
    mov dl,[edx+0x421580] ; 00405B9F 8A9280154200
    %if ($ - %%insn_00405b9f) > 6
        %error "LONG_00405B9F"
    %endif
    times 6 - ($ - %%insn_00405b9f) db 0
    %%insn_00405ba5:
    mov [eax+ecx+0x4216c0],dl ; 00405BA5 889408C0164200
    %if ($ - %%insn_00405ba5) > 7
        %error "LONG_00405BA5"
    %endif
    times 7 - ($ - %%insn_00405ba5) db 0
    %%insn_00405bac:
    jmp short 0x405b7b ; 00405BAC EBCD
    %if ($ - %%insn_00405bac) > 2
        %error "LONG_00405BAC"
    %endif
    times 2 - ($ - %%insn_00405bac) db 0
    %%insn_00405bae:
    mov ax,[0x41f46c] ; 00405BAE 66A16CF44100
    %if ($ - %%insn_00405bae) > 6
        %error "LONG_00405BAE"
    %endif
    times 6 - ($ - %%insn_00405bae) db 0
    db 0x66, 0x05, 0x39, 0x00 ; 00405BB4 66053900 | add ax,0x39 | encoding preserved
    %%insn_00405bb8:
    mov [0x41f46c],ax ; 00405BB8 66A36CF44100
    %if ($ - %%insn_00405bb8) > 6
        %error "LONG_00405BB8"
    %endif
    times 6 - ($ - %%insn_00405bb8) db 0
    db 0x8B, 0xE5 ; 00405BBE 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00405bc0:
    pop ebp ; 00405BC0 5D
    %if ($ - %%insn_00405bc0) > 1
        %error "LONG_00405BC0"
    %endif
    times 1 - ($ - %%insn_00405bc0) db 0
    %%insn_00405bc1:
    ret ; 00405BC1 C3
    %if ($ - %%insn_00405bc1) > 1
        %error "LONG_00405BC1"
    %endif
    times 1 - ($ - %%insn_00405bc1) db 0
    %if ($ - %%fragment_start) != 83
        %error "function fragment size drift: 00405B6F"
    %endif
%endmacro
