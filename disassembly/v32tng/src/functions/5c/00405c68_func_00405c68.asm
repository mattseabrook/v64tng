; PE virtual entry 00405C68
; Ghidra working symbol: FUN_00405c68
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00405c68_part_00 0
    %%fragment_start:
func_00405c68:
    %%insn_00405c68:
    push ebp ; 00405C68 55
    %if ($ - %%insn_00405c68) > 1
        %error "LONG_00405C68"
    %endif
    times 1 - ($ - %%insn_00405c68) db 0
    db 0x8B, 0xEC ; 00405C69 8BEC | mov ebp,esp | encoding preserved
    %%insn_00405c6b:
    push ecx ; 00405C6B 51
    %if ($ - %%insn_00405c6b) > 1
        %error "LONG_00405C6B"
    %endif
    times 1 - ($ - %%insn_00405c6b) db 0
    %%insn_00405c6c:
    mov ax,[0x41f46c] ; 00405C6C 66A16CF44100
    %if ($ - %%insn_00405c6c) > 6
        %error "LONG_00405C6C"
    %endif
    times 6 - ($ - %%insn_00405c6c) db 0
    db 0x66, 0x2D, 0x39, 0x00 ; 00405C72 662D3900 | sub ax,0x39 | encoding preserved
    %%insn_00405c76:
    mov [0x41f46c],ax ; 00405C76 66A36CF44100
    %if ($ - %%insn_00405c76) > 6
        %error "LONG_00405C76"
    %endif
    times 6 - ($ - %%insn_00405c76) db 0
    %%insn_00405c7c:
    mov word [ebp-0x4],0x0 ; 00405C7C 66C745FC0000
    %if ($ - %%insn_00405c7c) > 6
        %error "LONG_00405C7C"
    %endif
    times 6 - ($ - %%insn_00405c7c) db 0
    %%insn_00405c82:
    jmp short 0x405c90 ; 00405C82 EB0C
    %if ($ - %%insn_00405c82) > 2
        %error "LONG_00405C82"
    %endif
    times 2 - ($ - %%insn_00405c82) db 0
    %%insn_00405c84:
    mov cx,[ebp-0x4] ; 00405C84 668B4DFC
    %if ($ - %%insn_00405c84) > 4
        %error "LONG_00405C84"
    %endif
    times 4 - ($ - %%insn_00405c84) db 0
    %%insn_00405c88:
    add cx,0x1 ; 00405C88 6683C101
    %if ($ - %%insn_00405c88) > 4
        %error "LONG_00405C88"
    %endif
    times 4 - ($ - %%insn_00405c88) db 0
    %%insn_00405c8c:
    mov [ebp-0x4],cx ; 00405C8C 66894DFC
    %if ($ - %%insn_00405c8c) > 4
        %error "LONG_00405C8C"
    %endif
    times 4 - ($ - %%insn_00405c8c) db 0
    %%insn_00405c90:
    movsx edx,word [ebp-0x4] ; 00405C90 0FBF55FC
    %if ($ - %%insn_00405c90) > 4
        %error "LONG_00405C90"
    %endif
    times 4 - ($ - %%insn_00405c90) db 0
    %%insn_00405c94:
    cmp edx,0x39 ; 00405C94 83FA39
    %if ($ - %%insn_00405c94) > 3
        %error "LONG_00405C94"
    %endif
    times 3 - ($ - %%insn_00405c94) db 0
    %%insn_00405c97:
    jnl short 0x405cb7 ; 00405C97 7D1E
    %if ($ - %%insn_00405c97) > 2
        %error "LONG_00405C97"
    %endif
    times 2 - ($ - %%insn_00405c97) db 0
    %%insn_00405c99:
    movsx eax,word [0x41f46c] ; 00405C99 0FBF056CF44100
    %if ($ - %%insn_00405c99) > 7
        %error "LONG_00405C99"
    %endif
    times 7 - ($ - %%insn_00405c99) db 0
    %%insn_00405ca0:
    movsx ecx,word [ebp-0x4] ; 00405CA0 0FBF4DFC
    %if ($ - %%insn_00405ca0) > 4
        %error "LONG_00405CA0"
    %endif
    times 4 - ($ - %%insn_00405ca0) db 0
    %%insn_00405ca4:
    movsx edx,word [ebp-0x4] ; 00405CA4 0FBF55FC
    %if ($ - %%insn_00405ca4) > 4
        %error "LONG_00405CA4"
    %endif
    times 4 - ($ - %%insn_00405ca4) db 0
    %%insn_00405ca8:
    mov al,[eax+ecx+0x4216c0] ; 00405CA8 8A8408C0164200
    %if ($ - %%insn_00405ca8) > 7
        %error "LONG_00405CA8"
    %endif
    times 7 - ($ - %%insn_00405ca8) db 0
    %%insn_00405caf:
    mov [edx+0x421d00],al ; 00405CAF 8882001D4200
    %if ($ - %%insn_00405caf) > 6
        %error "LONG_00405CAF"
    %endif
    times 6 - ($ - %%insn_00405caf) db 0
    %%insn_00405cb5:
    jmp short 0x405c84 ; 00405CB5 EBCD
    %if ($ - %%insn_00405cb5) > 2
        %error "LONG_00405CB5"
    %endif
    times 2 - ($ - %%insn_00405cb5) db 0
    db 0x8B, 0xE5 ; 00405CB7 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00405cb9:
    pop ebp ; 00405CB9 5D
    %if ($ - %%insn_00405cb9) > 1
        %error "LONG_00405CB9"
    %endif
    times 1 - ($ - %%insn_00405cb9) db 0
    %%insn_00405cba:
    ret ; 00405CBA C3
    %if ($ - %%insn_00405cba) > 1
        %error "LONG_00405CBA"
    %endif
    times 1 - ($ - %%insn_00405cba) db 0
    %if ($ - %%fragment_start) != 83
        %error "function fragment size drift: 00405C68"
    %endif
%endmacro
