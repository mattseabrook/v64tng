; Linear entry 040C7 (1000:40c7)
; Ghidra working symbol: FUN_1000_40c7
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_040c7_part_00 0
    %%fragment_start:
func_040c7:
    %%insn_040c7:
    call 0x400a ; 040C7 E840FF
    %if ($ - %%insn_040c7) > 3
        %error "LONG_040C7"
    %endif
    times 3 - ($ - %%insn_040c7) db 0
    %%insn_040ca:
    mov bx,0xdba2 ; 040CA BBA2DB
    %if ($ - %%insn_040ca) > 3
        %error "LONG_040CA"
    %endif
    times 3 - ($ - %%insn_040ca) db 0
    db 0x03, 0xD8 ; 040CD 03D8 | add bx,ax | encoding preserved
    %%insn_040cf:
    lodsw ; 040CF AD
    %if ($ - %%insn_040cf) > 1
        %error "LONG_040CF"
    %endif
    times 1 - ($ - %%insn_040cf) db 0
    %%insn_040d0:
    mov di,0xdba2 ; 040D0 BFA2DB
    %if ($ - %%insn_040d0) > 3
        %error "LONG_040D0"
    %endif
    times 3 - ($ - %%insn_040d0) db 0
    db 0x03, 0xF8 ; 040D3 03F8 | add di,ax | encoding preserved
    %%insn_040d5:
    mov al,[ss:bx] ; 040D5 368A07
    %if ($ - %%insn_040d5) > 3
        %error "LONG_040D5"
    %endif
    times 3 - ($ - %%insn_040d5) db 0
    %%insn_040d8:
    add al,[ss:di] ; 040D8 360205
    %if ($ - %%insn_040d8) > 3
        %error "LONG_040D8"
    %endif
    times 3 - ($ - %%insn_040d8) db 0
    %%insn_040db:
    mov [ss:bx],al ; 040DB 368807
    %if ($ - %%insn_040db) > 3
        %error "LONG_040DB"
    %endif
    times 3 - ($ - %%insn_040db) db 0
    %%insn_040de:
    ret ; 040DE C3
    %if ($ - %%insn_040de) > 1
        %error "LONG_040DE"
    %endif
    times 1 - ($ - %%insn_040de) db 0
    %if ($ - %%fragment_start) != 24
        %error "SIZE_040C7"
    %endif
%endmacro
