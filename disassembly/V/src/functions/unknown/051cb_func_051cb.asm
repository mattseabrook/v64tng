; Linear entry 051CB (1000:51cb)
; Ghidra working symbol: FUN_1000_51cb
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_051cb_part_00 0
    %%fragment_start:
func_051cb:
    db 0x8B, 0xF3 ; 051CB 8BF3 | mov si,bx | encoding preserved
    %%insn_051cd:
    call 0x4a23 ; 051CD E853F8
    %if ($ - %%insn_051cd) > 3
        %error "LONG_051CD"
    %endif
    times 3 - ($ - %%insn_051cd) db 0
    %%insn_051d0:
    cmp ax,0x4000 ; 051D0 3D0040
    %if ($ - %%insn_051d0) > 3
        %error "LONG_051D0"
    %endif
    times 3 - ($ - %%insn_051d0) db 0
    %%insn_051d3:
    jna short 0x51d8 ; 051D3 7603
    %if ($ - %%insn_051d3) > 2
        %error "LONG_051D3"
    %endif
    times 2 - ($ - %%insn_051d3) db 0
    %%insn_051d5:
    mov ax,0x4000 ; 051D5 B80040
    %if ($ - %%insn_051d5) > 3
        %error "LONG_051D5"
    %endif
    times 3 - ($ - %%insn_051d5) db 0
    %%insn_051d8:
    cmp ax,0x1000 ; 051D8 3D0010
    %if ($ - %%insn_051d8) > 3
        %error "LONG_051D8"
    %endif
    times 3 - ($ - %%insn_051d8) db 0
    %%insn_051db:
    jnc short 0x51e0 ; 051DB 7303
    %if ($ - %%insn_051db) > 2
        %error "LONG_051DB"
    %endif
    times 2 - ($ - %%insn_051db) db 0
    %%insn_051dd:
    mov ax,0x1000 ; 051DD B80010
    %if ($ - %%insn_051dd) > 3
        %error "LONG_051DD"
    %endif
    times 3 - ($ - %%insn_051dd) db 0
    %%insn_051e0:
    mov [bp-0x2658],ax ; 051E0 8986A8D9
    %if ($ - %%insn_051e0) > 4
        %error "LONG_051E0"
    %endif
    times 4 - ($ - %%insn_051e0) db 0
    %%insn_051e4:
    ret ; 051E4 C3
    %if ($ - %%insn_051e4) > 1
        %error "LONG_051E4"
    %endif
    times 1 - ($ - %%insn_051e4) db 0
    %if ($ - %%fragment_start) != 26
        %error "SIZE_051CB"
    %endif
%endmacro
