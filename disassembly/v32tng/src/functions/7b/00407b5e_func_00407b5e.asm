; PE virtual entry 00407B5E
; Ghidra working symbol: FUN_00407b5e
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407b5e_part_00 0
    %%fragment_start:
func_00407b5e:
    %%insn_00407b5e:
    push ebp ; 00407B5E 55
    %if ($ - %%insn_00407b5e) > 1
        %error "LONG_00407B5E"
    %endif
    times 1 - ($ - %%insn_00407b5e) db 0
    db 0x8B, 0xEC ; 00407B5F 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407b61:
    sub esp,0xc ; 00407B61 83EC0C
    %if ($ - %%insn_00407b61) > 3
        %error "LONG_00407B61"
    %endif
    times 3 - ($ - %%insn_00407b61) db 0
    %%insn_00407b64:
    mov [ebp-0xc],edx ; 00407B64 8955F4
    %if ($ - %%insn_00407b64) > 3
        %error "LONG_00407B64"
    %endif
    times 3 - ($ - %%insn_00407b64) db 0
    %%insn_00407b67:
    mov [ebp-0x8],ecx ; 00407B67 894DF8
    %if ($ - %%insn_00407b67) > 3
        %error "LONG_00407B67"
    %endif
    times 3 - ($ - %%insn_00407b67) db 0
    %%insn_00407b6a:
    push dword 0x400 ; 00407B6A 6800040000
    %if ($ - %%insn_00407b6a) > 5
        %error "LONG_00407B6A"
    %endif
    times 5 - ($ - %%insn_00407b6a) db 0
    %%insn_00407b6f:
    call 0x40cdc0 ; 00407B6F E84C520000
    %if ($ - %%insn_00407b6f) > 5
        %error "LONG_00407B6F"
    %endif
    times 5 - ($ - %%insn_00407b6f) db 0
    %%insn_00407b74:
    add esp,0x4 ; 00407B74 83C404
    %if ($ - %%insn_00407b74) > 3
        %error "LONG_00407B74"
    %endif
    times 3 - ($ - %%insn_00407b74) db 0
    %%insn_00407b77:
    mov [ebp-0x4],eax ; 00407B77 8945FC
    %if ($ - %%insn_00407b77) > 3
        %error "LONG_00407B77"
    %endif
    times 3 - ($ - %%insn_00407b77) db 0
    %%insn_00407b7a:
    mov eax,[ebp-0x8] ; 00407B7A 8B45F8
    %if ($ - %%insn_00407b7a) > 3
        %error "LONG_00407B7A"
    %endif
    times 3 - ($ - %%insn_00407b7a) db 0
    %%insn_00407b7d:
    push eax ; 00407B7D 50
    %if ($ - %%insn_00407b7d) > 1
        %error "LONG_00407B7D"
    %endif
    times 1 - ($ - %%insn_00407b7d) db 0
    %%insn_00407b7e:
    mov ecx,[ebp+0x8] ; 00407B7E 8B4D08
    %if ($ - %%insn_00407b7e) > 3
        %error "LONG_00407B7E"
    %endif
    times 3 - ($ - %%insn_00407b7e) db 0
    %%insn_00407b81:
    push ecx ; 00407B81 51
    %if ($ - %%insn_00407b81) > 1
        %error "LONG_00407B81"
    %endif
    times 1 - ($ - %%insn_00407b81) db 0
    %%insn_00407b82:
    mov edx,[ebp-0xc] ; 00407B82 8B55F4
    %if ($ - %%insn_00407b82) > 3
        %error "LONG_00407B82"
    %endif
    times 3 - ($ - %%insn_00407b82) db 0
    %%insn_00407b85:
    push edx ; 00407B85 52
    %if ($ - %%insn_00407b85) > 1
        %error "LONG_00407B85"
    %endif
    times 1 - ($ - %%insn_00407b85) db 0
    %%insn_00407b86:
    push dword 0x41b950 ; 00407B86 6850B94100
    %if ($ - %%insn_00407b86) > 5
        %error "LONG_00407B86"
    %endif
    times 5 - ($ - %%insn_00407b86) db 0
    %%insn_00407b8b:
    mov eax,[ebp-0x4] ; 00407B8B 8B45FC
    %if ($ - %%insn_00407b8b) > 3
        %error "LONG_00407B8B"
    %endif
    times 3 - ($ - %%insn_00407b8b) db 0
    %%insn_00407b8e:
    push eax ; 00407B8E 50
    %if ($ - %%insn_00407b8e) > 1
        %error "LONG_00407B8E"
    %endif
    times 1 - ($ - %%insn_00407b8e) db 0
    %%insn_00407b8f:
    call 0x40cd50 ; 00407B8F E8BC510000
    %if ($ - %%insn_00407b8f) > 5
        %error "LONG_00407B8F"
    %endif
    times 5 - ($ - %%insn_00407b8f) db 0
    %%insn_00407b94:
    add esp,0x14 ; 00407B94 83C414
    %if ($ - %%insn_00407b94) > 3
        %error "LONG_00407B94"
    %endif
    times 3 - ($ - %%insn_00407b94) db 0
    %%insn_00407b97:
    push dword 0x0 ; 00407B97 6A00
    %if ($ - %%insn_00407b97) > 2
        %error "LONG_00407B97"
    %endif
    times 2 - ($ - %%insn_00407b97) db 0
    %%insn_00407b99:
    push dword 0x41b9a4 ; 00407B99 68A4B94100
    %if ($ - %%insn_00407b99) > 5
        %error "LONG_00407B99"
    %endif
    times 5 - ($ - %%insn_00407b99) db 0
    %%insn_00407b9e:
    mov ecx,[ebp-0x4] ; 00407B9E 8B4DFC
    %if ($ - %%insn_00407b9e) > 3
        %error "LONG_00407B9E"
    %endif
    times 3 - ($ - %%insn_00407b9e) db 0
    %%insn_00407ba1:
    push ecx ; 00407BA1 51
    %if ($ - %%insn_00407ba1) > 1
        %error "LONG_00407BA1"
    %endif
    times 1 - ($ - %%insn_00407ba1) db 0
    %%insn_00407ba2:
    mov edx,[0x41f5bc] ; 00407BA2 8B15BCF54100
    %if ($ - %%insn_00407ba2) > 6
        %error "LONG_00407BA2"
    %endif
    times 6 - ($ - %%insn_00407ba2) db 0
    %%insn_00407ba8:
    push edx ; 00407BA8 52
    %if ($ - %%insn_00407ba8) > 1
        %error "LONG_00407BA8"
    %endif
    times 1 - ($ - %%insn_00407ba8) db 0
    %%insn_00407ba9:
    call dword near [0x4244f8] ; 00407BA9 FF15F8444200
    %if ($ - %%insn_00407ba9) > 6
        %error "LONG_00407BA9"
    %endif
    times 6 - ($ - %%insn_00407ba9) db 0
    %%insn_00407baf:
    push dword 0xfffffd66 ; 00407BAF 6866FDFFFF
    %if ($ - %%insn_00407baf) > 5
        %error "LONG_00407BAF"
    %endif
    times 5 - ($ - %%insn_00407baf) db 0
    %%insn_00407bb4:
    call 0x40d5f0 ; 00407BB4 E8375A0000
    %if ($ - %%insn_00407bb4) > 5
        %error "LONG_00407BB4"
    %endif
    times 5 - ($ - %%insn_00407bb4) db 0
    %%insn_00407bb9:
    add esp,0x4 ; 00407BB9 83C404
    %if ($ - %%insn_00407bb9) > 3
        %error "LONG_00407BB9"
    %endif
    times 3 - ($ - %%insn_00407bb9) db 0
    db 0x8B, 0xE5 ; 00407BBC 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407bbe:
    pop ebp ; 00407BBE 5D
    %if ($ - %%insn_00407bbe) > 1
        %error "LONG_00407BBE"
    %endif
    times 1 - ($ - %%insn_00407bbe) db 0
    %%insn_00407bbf:
    ret word 0x4 ; 00407BBF C20400
    %if ($ - %%insn_00407bbf) > 3
        %error "LONG_00407BBF"
    %endif
    times 3 - ($ - %%insn_00407bbf) db 0
    %if ($ - %%fragment_start) != 100
        %error "function fragment size drift: 00407B5E"
    %endif
%endmacro
