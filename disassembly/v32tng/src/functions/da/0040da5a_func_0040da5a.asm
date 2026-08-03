; PE virtual entry 0040DA5A
; Ghidra working symbol: __local_unwind2
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040da5a_part_00 0
    %%fragment_start:
func_0040da5a:
    %%insn_0040da5a:
    push ebx ; 0040DA5A 53
    %if ($ - %%insn_0040da5a) > 1
        %error "LONG_0040DA5A"
    %endif
    times 1 - ($ - %%insn_0040da5a) db 0
    %%insn_0040da5b:
    push esi ; 0040DA5B 56
    %if ($ - %%insn_0040da5b) > 1
        %error "LONG_0040DA5B"
    %endif
    times 1 - ($ - %%insn_0040da5b) db 0
    %%insn_0040da5c:
    push edi ; 0040DA5C 57
    %if ($ - %%insn_0040da5c) > 1
        %error "LONG_0040DA5C"
    %endif
    times 1 - ($ - %%insn_0040da5c) db 0
    %%insn_0040da5d:
    mov eax,[esp+0x10] ; 0040DA5D 8B442410
    %if ($ - %%insn_0040da5d) > 4
        %error "LONG_0040DA5D"
    %endif
    times 4 - ($ - %%insn_0040da5d) db 0
    %%insn_0040da61:
    push eax ; 0040DA61 50
    %if ($ - %%insn_0040da61) > 1
        %error "LONG_0040DA61"
    %endif
    times 1 - ($ - %%insn_0040da61) db 0
    %%insn_0040da62:
    push dword 0xfffffffffffffffe ; 0040DA62 6AFE
    %if ($ - %%insn_0040da62) > 2
        %error "LONG_0040DA62"
    %endif
    times 2 - ($ - %%insn_0040da62) db 0
    %%insn_0040da64:
    push dword 0x40da38 ; 0040DA64 6838DA4000
    %if ($ - %%insn_0040da64) > 5
        %error "LONG_0040DA64"
    %endif
    times 5 - ($ - %%insn_0040da64) db 0
    %%insn_0040da69:
    push dword [fs:0x0] ; 0040DA69 64FF3500000000
    %if ($ - %%insn_0040da69) > 7
        %error "LONG_0040DA69"
    %endif
    times 7 - ($ - %%insn_0040da69) db 0
    %%insn_0040da70:
    mov [fs:0x0],esp ; 0040DA70 64892500000000
    %if ($ - %%insn_0040da70) > 7
        %error "LONG_0040DA70"
    %endif
    times 7 - ($ - %%insn_0040da70) db 0
    %%insn_0040da77:
    mov eax,[esp+0x20] ; 0040DA77 8B442420
    %if ($ - %%insn_0040da77) > 4
        %error "LONG_0040DA77"
    %endif
    times 4 - ($ - %%insn_0040da77) db 0
    %%insn_0040da7b:
    mov ebx,[eax+0x8] ; 0040DA7B 8B5808
    %if ($ - %%insn_0040da7b) > 3
        %error "LONG_0040DA7B"
    %endif
    times 3 - ($ - %%insn_0040da7b) db 0
    %%insn_0040da7e:
    mov esi,[eax+0xc] ; 0040DA7E 8B700C
    %if ($ - %%insn_0040da7e) > 3
        %error "LONG_0040DA7E"
    %endif
    times 3 - ($ - %%insn_0040da7e) db 0
    %%insn_0040da81:
    cmp esi,0xffffffffffffffff ; 0040DA81 83FEFF
    %if ($ - %%insn_0040da81) > 3
        %error "LONG_0040DA81"
    %endif
    times 3 - ($ - %%insn_0040da81) db 0
    %%insn_0040da84:
    jz short 0x40dab4 ; 0040DA84 742E
    %if ($ - %%insn_0040da84) > 2
        %error "LONG_0040DA84"
    %endif
    times 2 - ($ - %%insn_0040da84) db 0
    %%insn_0040da86:
    cmp esi,[esp+0x24] ; 0040DA86 3B742424
    %if ($ - %%insn_0040da86) > 4
        %error "LONG_0040DA86"
    %endif
    times 4 - ($ - %%insn_0040da86) db 0
    %%insn_0040da8a:
    jz short 0x40dab4 ; 0040DA8A 7428
    %if ($ - %%insn_0040da8a) > 2
        %error "LONG_0040DA8A"
    %endif
    times 2 - ($ - %%insn_0040da8a) db 0
    %%insn_0040da8c:
    lea esi,[esi+esi*2] ; 0040DA8C 8D3476
    %if ($ - %%insn_0040da8c) > 3
        %error "LONG_0040DA8C"
    %endif
    times 3 - ($ - %%insn_0040da8c) db 0
    %%insn_0040da8f:
    mov ecx,[ebx+esi*4] ; 0040DA8F 8B0CB3
    %if ($ - %%insn_0040da8f) > 3
        %error "LONG_0040DA8F"
    %endif
    times 3 - ($ - %%insn_0040da8f) db 0
    %%insn_0040da92:
    mov [esp+0x8],ecx ; 0040DA92 894C2408
    %if ($ - %%insn_0040da92) > 4
        %error "LONG_0040DA92"
    %endif
    times 4 - ($ - %%insn_0040da92) db 0
    %%insn_0040da96:
    mov [eax+0xc],ecx ; 0040DA96 89480C
    %if ($ - %%insn_0040da96) > 3
        %error "LONG_0040DA96"
    %endif
    times 3 - ($ - %%insn_0040da96) db 0
    %%insn_0040da99:
    cmp dword [ebx+esi*4+0x4],0x0 ; 0040DA99 837CB30400
    %if ($ - %%insn_0040da99) > 5
        %error "LONG_0040DA99"
    %endif
    times 5 - ($ - %%insn_0040da99) db 0
    %%insn_0040da9e:
    jnz short 0x40dab2 ; 0040DA9E 7512
    %if ($ - %%insn_0040da9e) > 2
        %error "LONG_0040DA9E"
    %endif
    times 2 - ($ - %%insn_0040da9e) db 0
    %%insn_0040daa0:
    push dword 0x101 ; 0040DAA0 6801010000
    %if ($ - %%insn_0040daa0) > 5
        %error "LONG_0040DAA0"
    %endif
    times 5 - ($ - %%insn_0040daa0) db 0
    %%insn_0040daa5:
    mov eax,[ebx+esi*4+0x8] ; 0040DAA5 8B44B308
    %if ($ - %%insn_0040daa5) > 4
        %error "LONG_0040DAA5"
    %endif
    times 4 - ($ - %%insn_0040daa5) db 0
    %%insn_0040daa9:
    call 0x40daee ; 0040DAA9 E840000000
    %if ($ - %%insn_0040daa9) > 5
        %error "LONG_0040DAA9"
    %endif
    times 5 - ($ - %%insn_0040daa9) db 0
    %%insn_0040daae:
    call dword near [ebx+esi*4+0x8] ; 0040DAAE FF54B308
    %if ($ - %%insn_0040daae) > 4
        %error "LONG_0040DAAE"
    %endif
    times 4 - ($ - %%insn_0040daae) db 0
    %%insn_0040dab2:
    jmp short 0x40da77 ; 0040DAB2 EBC3
    %if ($ - %%insn_0040dab2) > 2
        %error "LONG_0040DAB2"
    %endif
    times 2 - ($ - %%insn_0040dab2) db 0
    %%insn_0040dab4:
    pop dword [fs:0x0] ; 0040DAB4 648F0500000000
    %if ($ - %%insn_0040dab4) > 7
        %error "LONG_0040DAB4"
    %endif
    times 7 - ($ - %%insn_0040dab4) db 0
    %%insn_0040dabb:
    add esp,0xc ; 0040DABB 83C40C
    %if ($ - %%insn_0040dabb) > 3
        %error "LONG_0040DABB"
    %endif
    times 3 - ($ - %%insn_0040dabb) db 0
    %%insn_0040dabe:
    pop edi ; 0040DABE 5F
    %if ($ - %%insn_0040dabe) > 1
        %error "LONG_0040DABE"
    %endif
    times 1 - ($ - %%insn_0040dabe) db 0
    %%insn_0040dabf:
    pop esi ; 0040DABF 5E
    %if ($ - %%insn_0040dabf) > 1
        %error "LONG_0040DABF"
    %endif
    times 1 - ($ - %%insn_0040dabf) db 0
    %%insn_0040dac0:
    pop ebx ; 0040DAC0 5B
    %if ($ - %%insn_0040dac0) > 1
        %error "LONG_0040DAC0"
    %endif
    times 1 - ($ - %%insn_0040dac0) db 0
    %%insn_0040dac1:
    ret ; 0040DAC1 C3
    %if ($ - %%insn_0040dac1) > 1
        %error "LONG_0040DAC1"
    %endif
    times 1 - ($ - %%insn_0040dac1) db 0
    %if ($ - %%fragment_start) != 104
        %error "function fragment size drift: 0040DA5A"
    %endif
%endmacro
