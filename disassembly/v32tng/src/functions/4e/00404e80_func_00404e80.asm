; PE virtual entry 00404E80
; Ghidra working symbol: FUN_00404e80
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00404e80_part_00 0
    %%fragment_start:
func_00404e80:
    %%insn_00404e80:
    push ebp ; 00404E80 55
    %if ($ - %%insn_00404e80) > 1
        %error "LONG_00404E80"
    %endif
    times 1 - ($ - %%insn_00404e80) db 0
    db 0x8B, 0xEC ; 00404E81 8BEC | mov ebp,esp | encoding preserved
    %%insn_00404e83:
    push ecx ; 00404E83 51
    %if ($ - %%insn_00404e83) > 1
        %error "LONG_00404E83"
    %endif
    times 1 - ($ - %%insn_00404e83) db 0
    %%insn_00404e84:
    mov word [ebp-0x4],0x0 ; 00404E84 66C745FC0000
    %if ($ - %%insn_00404e84) > 6
        %error "LONG_00404E84"
    %endif
    times 6 - ($ - %%insn_00404e84) db 0
    %%insn_00404e8a:
    jmp short 0x404e98 ; 00404E8A EB0C
    %if ($ - %%insn_00404e8a) > 2
        %error "LONG_00404E8A"
    %endif
    times 2 - ($ - %%insn_00404e8a) db 0
    %%insn_00404e8c:
    mov ax,[ebp-0x4] ; 00404E8C 668B45FC
    %if ($ - %%insn_00404e8c) > 4
        %error "LONG_00404E8C"
    %endif
    times 4 - ($ - %%insn_00404e8c) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 00404E90 66050100 | add ax,0x1 | encoding preserved
    %%insn_00404e94:
    mov [ebp-0x4],ax ; 00404E94 668945FC
    %if ($ - %%insn_00404e94) > 4
        %error "LONG_00404E94"
    %endif
    times 4 - ($ - %%insn_00404e94) db 0
    %%insn_00404e98:
    movsx ecx,word [ebp-0x4] ; 00404E98 0FBF4DFC
    %if ($ - %%insn_00404e98) > 4
        %error "LONG_00404E98"
    %endif
    times 4 - ($ - %%insn_00404e98) db 0
    %%insn_00404e9c:
    cmp ecx,0x35 ; 00404E9C 83F935
    %if ($ - %%insn_00404e9c) > 3
        %error "LONG_00404E9C"
    %endif
    times 3 - ($ - %%insn_00404e9c) db 0
    %%insn_00404e9f:
    jnl short 0x404eb7 ; 00404E9F 7D16
    %if ($ - %%insn_00404e9f) > 2
        %error "LONG_00404E9F"
    %endif
    times 2 - ($ - %%insn_00404e9f) db 0
    %%insn_00404ea1:
    movsx edx,word [ebp-0x4] ; 00404EA1 0FBF55FC
    %if ($ - %%insn_00404ea1) > 4
        %error "LONG_00404EA1"
    %endif
    times 4 - ($ - %%insn_00404ea1) db 0
    %%insn_00404ea5:
    movsx eax,word [ebp-0x4] ; 00404EA5 0FBF45FC
    %if ($ - %%insn_00404ea5) > 4
        %error "LONG_00404EA5"
    %endif
    times 4 - ($ - %%insn_00404ea5) db 0
    %%insn_00404ea9:
    mov cl,[edx+0x421580] ; 00404EA9 8A8A80154200
    %if ($ - %%insn_00404ea9) > 6
        %error "LONG_00404EA9"
    %endif
    times 6 - ($ - %%insn_00404ea9) db 0
    %%insn_00404eaf:
    mov [eax+0x421bc0],cl ; 00404EAF 8888C01B4200
    %if ($ - %%insn_00404eaf) > 6
        %error "LONG_00404EAF"
    %endif
    times 6 - ($ - %%insn_00404eaf) db 0
    %%insn_00404eb5:
    jmp short 0x404e8c ; 00404EB5 EBD5
    %if ($ - %%insn_00404eb5) > 2
        %error "LONG_00404EB5"
    %endif
    times 2 - ($ - %%insn_00404eb5) db 0
    db 0x8B, 0xE5 ; 00404EB7 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00404eb9:
    pop ebp ; 00404EB9 5D
    %if ($ - %%insn_00404eb9) > 1
        %error "LONG_00404EB9"
    %endif
    times 1 - ($ - %%insn_00404eb9) db 0
    %%insn_00404eba:
    ret ; 00404EBA C3
    %if ($ - %%insn_00404eba) > 1
        %error "LONG_00404EBA"
    %endif
    times 1 - ($ - %%insn_00404eba) db 0
    %if ($ - %%fragment_start) != 59
        %error "function fragment size drift: 00404E80"
    %endif
%endmacro
