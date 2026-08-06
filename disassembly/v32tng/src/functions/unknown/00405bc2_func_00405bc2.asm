; PE virtual entry 00405BC2
; Ghidra working symbol: FUN_00405bc2
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00405bc2_part_00 0
    %%fragment_start:
func_00405bc2:
    %%insn_00405bc2:
    push ebp ; 00405BC2 55
    %if ($ - %%insn_00405bc2) > 1
        %error "LONG_00405BC2"
    %endif
    times 1 - ($ - %%insn_00405bc2) db 0
    db 0x8B, 0xEC ; 00405BC3 8BEC | mov ebp,esp | encoding preserved
    %%insn_00405bc5:
    push ecx ; 00405BC5 51
    %if ($ - %%insn_00405bc5) > 1
        %error "LONG_00405BC5"
    %endif
    times 1 - ($ - %%insn_00405bc5) db 0
    %%insn_00405bc6:
    mov ax,[0x41f46c] ; 00405BC6 66A16CF44100
    %if ($ - %%insn_00405bc6) > 6
        %error "LONG_00405BC6"
    %endif
    times 6 - ($ - %%insn_00405bc6) db 0
    db 0x66, 0x2D, 0x39, 0x00 ; 00405BCC 662D3900 | sub ax,0x39 | encoding preserved
    %%insn_00405bd0:
    mov [0x41f46c],ax ; 00405BD0 66A36CF44100
    %if ($ - %%insn_00405bd0) > 6
        %error "LONG_00405BD0"
    %endif
    times 6 - ($ - %%insn_00405bd0) db 0
    %%insn_00405bd6:
    mov word [ebp-0x4],0x0 ; 00405BD6 66C745FC0000
    %if ($ - %%insn_00405bd6) > 6
        %error "LONG_00405BD6"
    %endif
    times 6 - ($ - %%insn_00405bd6) db 0
    %%insn_00405bdc:
    jmp short 0x405bea ; 00405BDC EB0C
    %if ($ - %%insn_00405bdc) > 2
        %error "LONG_00405BDC"
    %endif
    times 2 - ($ - %%insn_00405bdc) db 0
    %%insn_00405bde:
    mov cx,[ebp-0x4] ; 00405BDE 668B4DFC
    %if ($ - %%insn_00405bde) > 4
        %error "LONG_00405BDE"
    %endif
    times 4 - ($ - %%insn_00405bde) db 0
    %%insn_00405be2:
    add cx,0x1 ; 00405BE2 6683C101
    %if ($ - %%insn_00405be2) > 4
        %error "LONG_00405BE2"
    %endif
    times 4 - ($ - %%insn_00405be2) db 0
    %%insn_00405be6:
    mov [ebp-0x4],cx ; 00405BE6 66894DFC
    %if ($ - %%insn_00405be6) > 4
        %error "LONG_00405BE6"
    %endif
    times 4 - ($ - %%insn_00405be6) db 0
    %%insn_00405bea:
    movsx edx,word [ebp-0x4] ; 00405BEA 0FBF55FC
    %if ($ - %%insn_00405bea) > 4
        %error "LONG_00405BEA"
    %endif
    times 4 - ($ - %%insn_00405bea) db 0
    %%insn_00405bee:
    cmp edx,0x39 ; 00405BEE 83FA39
    %if ($ - %%insn_00405bee) > 3
        %error "LONG_00405BEE"
    %endif
    times 3 - ($ - %%insn_00405bee) db 0
    %%insn_00405bf1:
    jnl short 0x405c11 ; 00405BF1 7D1E
    %if ($ - %%insn_00405bf1) > 2
        %error "LONG_00405BF1"
    %endif
    times 2 - ($ - %%insn_00405bf1) db 0
    %%insn_00405bf3:
    movsx eax,word [0x41f46c] ; 00405BF3 0FBF056CF44100
    %if ($ - %%insn_00405bf3) > 7
        %error "LONG_00405BF3"
    %endif
    times 7 - ($ - %%insn_00405bf3) db 0
    %%insn_00405bfa:
    movsx ecx,word [ebp-0x4] ; 00405BFA 0FBF4DFC
    %if ($ - %%insn_00405bfa) > 4
        %error "LONG_00405BFA"
    %endif
    times 4 - ($ - %%insn_00405bfa) db 0
    %%insn_00405bfe:
    movsx edx,word [ebp-0x4] ; 00405BFE 0FBF55FC
    %if ($ - %%insn_00405bfe) > 4
        %error "LONG_00405BFE"
    %endif
    times 4 - ($ - %%insn_00405bfe) db 0
    %%insn_00405c02:
    mov al,[eax+ecx+0x4216c0] ; 00405C02 8A8408C0164200
    %if ($ - %%insn_00405c02) > 7
        %error "LONG_00405C02"
    %endif
    times 7 - ($ - %%insn_00405c02) db 0
    %%insn_00405c09:
    mov [edx+0x421580],al ; 00405C09 888280154200
    %if ($ - %%insn_00405c09) > 6
        %error "LONG_00405C09"
    %endif
    times 6 - ($ - %%insn_00405c09) db 0
    %%insn_00405c0f:
    jmp short 0x405bde ; 00405C0F EBCD
    %if ($ - %%insn_00405c0f) > 2
        %error "LONG_00405C0F"
    %endif
    times 2 - ($ - %%insn_00405c0f) db 0
    db 0x8B, 0xE5 ; 00405C11 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00405c13:
    pop ebp ; 00405C13 5D
    %if ($ - %%insn_00405c13) > 1
        %error "LONG_00405C13"
    %endif
    times 1 - ($ - %%insn_00405c13) db 0
    %%insn_00405c14:
    ret ; 00405C14 C3
    %if ($ - %%insn_00405c14) > 1
        %error "LONG_00405C14"
    %endif
    times 1 - ($ - %%insn_00405c14) db 0
    %if ($ - %%fragment_start) != 83
        %error "function fragment size drift: 00405BC2"
    %endif
%endmacro
