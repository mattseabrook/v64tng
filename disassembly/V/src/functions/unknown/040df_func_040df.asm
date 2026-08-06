; Linear entry 040DF (1000:40df)
; Ghidra working symbol: FUN_1000_40df
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_040df_part_00 0
    %%fragment_start:
func_040df:
    %%insn_040df:
    call 0x400a ; 040DF E828FF
    %if ($ - %%insn_040df) > 3
        %error "LONG_040DF"
    %endif
    times 3 - ($ - %%insn_040df) db 0
    %%insn_040e2:
    mov bx,0xdba2 ; 040E2 BBA2DB
    %if ($ - %%insn_040e2) > 3
        %error "LONG_040E2"
    %endif
    times 3 - ($ - %%insn_040e2) db 0
    db 0x03, 0xD8 ; 040E5 03D8 | add bx,ax | encoding preserved
    %%insn_040e7:
    lodsw ; 040E7 AD
    %if ($ - %%insn_040e7) > 1
        %error "LONG_040E7"
    %endif
    times 1 - ($ - %%insn_040e7) db 0
    %%insn_040e8:
    mov di,0xdba2 ; 040E8 BFA2DB
    %if ($ - %%insn_040e8) > 3
        %error "LONG_040E8"
    %endif
    times 3 - ($ - %%insn_040e8) db 0
    db 0x03, 0xF8 ; 040EB 03F8 | add di,ax | encoding preserved
    %%insn_040ed:
    mov al,[ss:bx] ; 040ED 368A07
    %if ($ - %%insn_040ed) > 3
        %error "LONG_040ED"
    %endif
    times 3 - ($ - %%insn_040ed) db 0
    %%insn_040f0:
    sub al,[ss:di] ; 040F0 362A05
    %if ($ - %%insn_040f0) > 3
        %error "LONG_040F0"
    %endif
    times 3 - ($ - %%insn_040f0) db 0
    %%insn_040f3:
    mov [ss:bx],al ; 040F3 368807
    %if ($ - %%insn_040f3) > 3
        %error "LONG_040F3"
    %endif
    times 3 - ($ - %%insn_040f3) db 0
    %%insn_040f6:
    ret ; 040F6 C3
    %if ($ - %%insn_040f6) > 1
        %error "LONG_040F6"
    %endif
    times 1 - ($ - %%insn_040f6) db 0
    %if ($ - %%fragment_start) != 24
        %error "SIZE_040DF"
    %endif
%endmacro
