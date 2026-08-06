; Linear entry 03E44 (1000:3e44)
; Ghidra working symbol: FUN_1000_3e44
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_03e44_part_00 0
    %%fragment_start:
func_03e44:
    %%insn_03e44:
    mov ds,word [bp-0x2aae] ; 03E44 8E9E52D5
    %if ($ - %%insn_03e44) > 4
        %error "LONG_03E44"
    %endif
    times 4 - ($ - %%insn_03e44) db 0
    %%insn_03e48:
    mov dx,0xd878 ; 03E48 BA78D8
    %if ($ - %%insn_03e48) > 3
        %error "LONG_03E48"
    %endif
    times 3 - ($ - %%insn_03e48) db 0
    %%insn_03e4b:
    call 0x3a31 ; 03E4B E8E3FB
    %if ($ - %%insn_03e4b) > 3
        %error "LONG_03E4B"
    %endif
    times 3 - ($ - %%insn_03e4b) db 0
    db 0x3D, 0xFF, 0xFF ; 03E4E 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_03e51:
    jnz short 0x3e69 ; 03E51 7516
    %if ($ - %%insn_03e51) > 2
        %error "LONG_03E51"
    %endif
    times 2 - ($ - %%insn_03e51) db 0
    %%insn_03e53:
    mov dx,0xd880 ; 03E53 BA80D8
    %if ($ - %%insn_03e53) > 3
        %error "LONG_03E53"
    %endif
    times 3 - ($ - %%insn_03e53) db 0
    %%insn_03e56:
    call 0x3a31 ; 03E56 E8D8FB
    %if ($ - %%insn_03e56) > 3
        %error "LONG_03E56"
    %endif
    times 3 - ($ - %%insn_03e56) db 0
    db 0x3D, 0xFF, 0xFF ; 03E59 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_03e5c:
    jnz short 0x3e62 ; 03E5C 7504
    %if ($ - %%insn_03e5c) > 2
        %error "LONG_03E5C"
    %endif
    times 2 - ($ - %%insn_03e5c) db 0
    %%insn_03e5e:
    mov ah,0x3 ; 03E5E B403
    %if ($ - %%insn_03e5e) > 2
        %error "LONG_03E5E"
    %endif
    times 2 - ($ - %%insn_03e5e) db 0
    %%insn_03e60:
    jmp short 0x3e67 ; 03E60 EB05
    %if ($ - %%insn_03e60) > 2
        %error "LONG_03E60"
    %endif
    times 2 - ($ - %%insn_03e60) db 0
    %%insn_03e62:
    call 0x3a47 ; 03E62 E8E2FB
    %if ($ - %%insn_03e62) > 3
        %error "LONG_03E62"
    %endif
    times 3 - ($ - %%insn_03e62) db 0
    %%insn_03e65:
    mov ah,0x2 ; 03E65 B402
    %if ($ - %%insn_03e65) > 2
        %error "LONG_03E65"
    %endif
    times 2 - ($ - %%insn_03e65) db 0
    %%insn_03e67:
    jmp short 0x3e80 ; 03E67 EB17
    %if ($ - %%insn_03e67) > 2
        %error "LONG_03E67"
    %endif
    times 2 - ($ - %%insn_03e67) db 0
    %%insn_03e69:
    call 0x3a47 ; 03E69 E8DBFB
    %if ($ - %%insn_03e69) > 3
        %error "LONG_03E69"
    %endif
    times 3 - ($ - %%insn_03e69) db 0
    %%insn_03e6c:
    mov dx,0xd880 ; 03E6C BA80D8
    %if ($ - %%insn_03e6c) > 3
        %error "LONG_03E6C"
    %endif
    times 3 - ($ - %%insn_03e6c) db 0
    %%insn_03e6f:
    call 0x3a31 ; 03E6F E8BFFB
    %if ($ - %%insn_03e6f) > 3
        %error "LONG_03E6F"
    %endif
    times 3 - ($ - %%insn_03e6f) db 0
    db 0x3D, 0xFF, 0xFF ; 03E72 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_03e75:
    jnz short 0x3e7b ; 03E75 7504
    %if ($ - %%insn_03e75) > 2
        %error "LONG_03E75"
    %endif
    times 2 - ($ - %%insn_03e75) db 0
    %%insn_03e77:
    mov ah,0x1 ; 03E77 B401
    %if ($ - %%insn_03e77) > 2
        %error "LONG_03E77"
    %endif
    times 2 - ($ - %%insn_03e77) db 0
    %%insn_03e79:
    jmp short 0x3e80 ; 03E79 EB05
    %if ($ - %%insn_03e79) > 2
        %error "LONG_03E79"
    %endif
    times 2 - ($ - %%insn_03e79) db 0
    %%insn_03e7b:
    call 0x3a47 ; 03E7B E8C9FB
    %if ($ - %%insn_03e7b) > 3
        %error "LONG_03E7B"
    %endif
    times 3 - ($ - %%insn_03e7b) db 0
    %%insn_03e7e:
    mov ah,0x0 ; 03E7E B400
    %if ($ - %%insn_03e7e) > 2
        %error "LONG_03E7E"
    %endif
    times 2 - ($ - %%insn_03e7e) db 0
    %%insn_03e80:
    mov [bp-0x2358],ah ; 03E80 88A6A8DC
    %if ($ - %%insn_03e80) > 4
        %error "LONG_03E80"
    %endif
    times 4 - ($ - %%insn_03e80) db 0
    %%insn_03e84:
    ret ; 03E84 C3
    %if ($ - %%insn_03e84) > 1
        %error "LONG_03E84"
    %endif
    times 1 - ($ - %%insn_03e84) db 0
    %if ($ - %%fragment_start) != 65
        %error "SIZE_03E44"
    %endif
%endmacro
