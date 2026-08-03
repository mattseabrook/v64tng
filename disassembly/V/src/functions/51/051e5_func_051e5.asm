; Linear entry 051E5 (1000:51e5)
; Ghidra working symbol: FUN_1000_51e5
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_051e5_part_00 0
    %%fragment_start:
func_051e5:
    db 0x8B, 0xF3 ; 051E5 8BF3 | mov si,bx | encoding preserved
    %%insn_051e7:
    call 0x4a23 ; 051E7 E839F8
    %if ($ - %%insn_051e7) > 3
        %error "LONG_051E7"
    %endif
    times 3 - ($ - %%insn_051e7) db 0
    %%insn_051ea:
    cmp ax,0x12c ; 051EA 3D2C01
    %if ($ - %%insn_051ea) > 3
        %error "LONG_051EA"
    %endif
    times 3 - ($ - %%insn_051ea) db 0
    %%insn_051ed:
    jna short 0x51f2 ; 051ED 7603
    %if ($ - %%insn_051ed) > 2
        %error "LONG_051ED"
    %endif
    times 2 - ($ - %%insn_051ed) db 0
    %%insn_051ef:
    mov ax,0x12c ; 051EF B82C01
    %if ($ - %%insn_051ef) > 3
        %error "LONG_051EF"
    %endif
    times 3 - ($ - %%insn_051ef) db 0
    db 0x3D, 0x3C, 0x00 ; 051F2 3D3C00 | cmp ax,0x3c | encoding preserved
    %%insn_051f5:
    jnc short 0x51fa ; 051F5 7303
    %if ($ - %%insn_051f5) > 2
        %error "LONG_051F5"
    %endif
    times 2 - ($ - %%insn_051f5) db 0
    %%insn_051f7:
    mov ax,0x3c ; 051F7 B83C00
    %if ($ - %%insn_051f7) > 3
        %error "LONG_051F7"
    %endif
    times 3 - ($ - %%insn_051f7) db 0
    %%insn_051fa:
    mov [bp-0x2656],ax ; 051FA 8986AAD9
    %if ($ - %%insn_051fa) > 4
        %error "LONG_051FA"
    %endif
    times 4 - ($ - %%insn_051fa) db 0
    %%insn_051fe:
    ret ; 051FE C3
    %if ($ - %%insn_051fe) > 1
        %error "LONG_051FE"
    %endif
    times 1 - ($ - %%insn_051fe) db 0
    %if ($ - %%fragment_start) != 26
        %error "SIZE_051E5"
    %endif
%endmacro
