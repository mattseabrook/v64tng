; PE virtual entry 00404F02
; Ghidra working symbol: FUN_00404f02
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00404f02_part_00 0
    %%fragment_start:
func_00404f02:
    %%insn_00404f02:
    push ebp ; 00404F02 55
    %if ($ - %%insn_00404f02) > 1
        %error "LONG_00404F02"
    %endif
    times 1 - ($ - %%insn_00404f02) db 0
    db 0x8B, 0xEC ; 00404F03 8BEC | mov ebp,esp | encoding preserved
    %%insn_00404f05:
    sub esp,0x8 ; 00404F05 83EC08
    %if ($ - %%insn_00404f05) > 3
        %error "LONG_00404F05"
    %endif
    times 3 - ($ - %%insn_00404f05) db 0
    %%insn_00404f08:
    movsx eax,word [ebp+0x8] ; 00404F08 0FBF4508
    %if ($ - %%insn_00404f08) > 4
        %error "LONG_00404F08"
    %endif
    times 4 - ($ - %%insn_00404f08) db 0
    %%insn_00404f0c:
    mov ecx,[eax*4+0x41b770] ; 00404F0C 8B0C8570B74100
    %if ($ - %%insn_00404f0c) > 7
        %error "LONG_00404F0C"
    %endif
    times 7 - ($ - %%insn_00404f0c) db 0
    %%insn_00404f13:
    mov [ebp-0x4],ecx ; 00404F13 894DFC
    %if ($ - %%insn_00404f13) > 3
        %error "LONG_00404F13"
    %endif
    times 3 - ($ - %%insn_00404f13) db 0
    %%insn_00404f16:
    mov edx,[ebp-0x4] ; 00404F16 8B55FC
    %if ($ - %%insn_00404f16) > 3
        %error "LONG_00404F16"
    %endif
    times 3 - ($ - %%insn_00404f16) db 0
    %%insn_00404f19:
    movsx ax,byte [edx] ; 00404F19 660FBE02
    %if ($ - %%insn_00404f19) > 4
        %error "LONG_00404F19"
    %endif
    times 4 - ($ - %%insn_00404f19) db 0
    %%insn_00404f1d:
    mov [ebp-0x8],ax ; 00404F1D 668945F8
    %if ($ - %%insn_00404f1d) > 4
        %error "LONG_00404F1D"
    %endif
    times 4 - ($ - %%insn_00404f1d) db 0
    %%insn_00404f21:
    movsx ecx,word [ebp-0x8] ; 00404F21 0FBF4DF8
    %if ($ - %%insn_00404f21) > 4
        %error "LONG_00404F21"
    %endif
    times 4 - ($ - %%insn_00404f21) db 0
    %%insn_00404f25:
    mov edx,[ebp-0x4] ; 00404F25 8B55FC
    %if ($ - %%insn_00404f25) > 3
        %error "LONG_00404F25"
    %endif
    times 3 - ($ - %%insn_00404f25) db 0
    %%insn_00404f28:
    add edx,0x1 ; 00404F28 83C201
    %if ($ - %%insn_00404f28) > 3
        %error "LONG_00404F28"
    %endif
    times 3 - ($ - %%insn_00404f28) db 0
    %%insn_00404f2b:
    mov [ebp-0x4],edx ; 00404F2B 8955FC
    %if ($ - %%insn_00404f2b) > 3
        %error "LONG_00404F2B"
    %endif
    times 3 - ($ - %%insn_00404f2b) db 0
    %%insn_00404f2e:
    test ecx,ecx ; 00404F2E 85C9
    %if ($ - %%insn_00404f2e) > 2
        %error "LONG_00404F2E"
    %endif
    times 2 - ($ - %%insn_00404f2e) db 0
    %%insn_00404f30:
    jl short 0x404f8c ; 00404F30 7C5A
    %if ($ - %%insn_00404f30) > 2
        %error "LONG_00404F30"
    %endif
    times 2 - ($ - %%insn_00404f30) db 0
    %%insn_00404f32:
    movsx eax,word [ebp-0x8] ; 00404F32 0FBF45F8
    %if ($ - %%insn_00404f32) > 4
        %error "LONG_00404F32"
    %endif
    times 4 - ($ - %%insn_00404f32) db 0
    %%insn_00404f36:
    movsx ecx,byte [eax+0x421bc0] ; 00404F36 0FBE88C01B4200
    %if ($ - %%insn_00404f36) > 7
        %error "LONG_00404F36"
    %endif
    times 7 - ($ - %%insn_00404f36) db 0
    %%insn_00404f3d:
    test ecx,ecx ; 00404F3D 85C9
    %if ($ - %%insn_00404f3d) > 2
        %error "LONG_00404F3D"
    %endif
    times 2 - ($ - %%insn_00404f3d) db 0
    %%insn_00404f3f:
    jng short 0x404f8a ; 00404F3F 7E49
    %if ($ - %%insn_00404f3f) > 2
        %error "LONG_00404F3F"
    %endif
    times 2 - ($ - %%insn_00404f3f) db 0
    %%insn_00404f41:
    movsx edx,word [ebp-0x8] ; 00404F41 0FBF55F8
    %if ($ - %%insn_00404f41) > 4
        %error "LONG_00404F41"
    %endif
    times 4 - ($ - %%insn_00404f41) db 0
    %%insn_00404f45:
    movsx eax,byte [edx+0x421bc0] ; 00404F45 0FBE82C01B4200
    %if ($ - %%insn_00404f45) > 7
        %error "LONG_00404F45"
    %endif
    times 7 - ($ - %%insn_00404f45) db 0
    %%insn_00404f4c:
    mov cl,[eax+0x421bf0] ; 00404F4C 8A88F01B4200
    %if ($ - %%insn_00404f4c) > 6
        %error "LONG_00404F4C"
    %endif
    times 6 - ($ - %%insn_00404f4c) db 0
    %%insn_00404f52:
    sub cl,0x1 ; 00404F52 80E901
    %if ($ - %%insn_00404f52) > 3
        %error "LONG_00404F52"
    %endif
    times 3 - ($ - %%insn_00404f52) db 0
    %%insn_00404f55:
    movsx edx,word [ebp-0x8] ; 00404F55 0FBF55F8
    %if ($ - %%insn_00404f55) > 4
        %error "LONG_00404F55"
    %endif
    times 4 - ($ - %%insn_00404f55) db 0
    %%insn_00404f59:
    movsx eax,byte [edx+0x421bc0] ; 00404F59 0FBE82C01B4200
    %if ($ - %%insn_00404f59) > 7
        %error "LONG_00404F59"
    %endif
    times 7 - ($ - %%insn_00404f59) db 0
    %%insn_00404f60:
    mov [eax+0x421bf0],cl ; 00404F60 8888F01B4200
    %if ($ - %%insn_00404f60) > 6
        %error "LONG_00404F60"
    %endif
    times 6 - ($ - %%insn_00404f60) db 0
    %%insn_00404f66:
    movsx ecx,word [ebp-0x8] ; 00404F66 0FBF4DF8
    %if ($ - %%insn_00404f66) > 4
        %error "LONG_00404F66"
    %endif
    times 4 - ($ - %%insn_00404f66) db 0
    %%insn_00404f6a:
    mov dl,[ebp+0xc] ; 00404F6A 8A550C
    %if ($ - %%insn_00404f6a) > 3
        %error "LONG_00404F6A"
    %endif
    times 3 - ($ - %%insn_00404f6a) db 0
    %%insn_00404f6d:
    mov [ecx+0x421bc0],dl ; 00404F6D 8891C01B4200
    %if ($ - %%insn_00404f6d) > 6
        %error "LONG_00404F6D"
    %endif
    times 6 - ($ - %%insn_00404f6d) db 0
    %%insn_00404f73:
    movsx eax,byte [ebp+0xc] ; 00404F73 0FBE450C
    %if ($ - %%insn_00404f73) > 4
        %error "LONG_00404F73"
    %endif
    times 4 - ($ - %%insn_00404f73) db 0
    %%insn_00404f77:
    mov cl,[eax+0x421bf0] ; 00404F77 8A88F01B4200
    %if ($ - %%insn_00404f77) > 6
        %error "LONG_00404F77"
    %endif
    times 6 - ($ - %%insn_00404f77) db 0
    %%insn_00404f7d:
    add cl,0x1 ; 00404F7D 80C101
    %if ($ - %%insn_00404f7d) > 3
        %error "LONG_00404F7D"
    %endif
    times 3 - ($ - %%insn_00404f7d) db 0
    %%insn_00404f80:
    movsx edx,byte [ebp+0xc] ; 00404F80 0FBE550C
    %if ($ - %%insn_00404f80) > 4
        %error "LONG_00404F80"
    %endif
    times 4 - ($ - %%insn_00404f80) db 0
    %%insn_00404f84:
    mov [edx+0x421bf0],cl ; 00404F84 888AF01B4200
    %if ($ - %%insn_00404f84) > 6
        %error "LONG_00404F84"
    %endif
    times 6 - ($ - %%insn_00404f84) db 0
    %%insn_00404f8a:
    jmp short 0x404f16 ; 00404F8A EB8A
    %if ($ - %%insn_00404f8a) > 2
        %error "LONG_00404F8A"
    %endif
    times 2 - ($ - %%insn_00404f8a) db 0
    db 0x8B, 0xE5 ; 00404F8C 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00404f8e:
    pop ebp ; 00404F8E 5D
    %if ($ - %%insn_00404f8e) > 1
        %error "LONG_00404F8E"
    %endif
    times 1 - ($ - %%insn_00404f8e) db 0
    %%insn_00404f8f:
    ret ; 00404F8F C3
    %if ($ - %%insn_00404f8f) > 1
        %error "LONG_00404F8F"
    %endif
    times 1 - ($ - %%insn_00404f8f) db 0
    %if ($ - %%fragment_start) != 142
        %error "function fragment size drift: 00404F02"
    %endif
%endmacro
