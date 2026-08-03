; Linear entry 040B2 (1000:40b2)
; Ghidra working symbol: FUN_1000_40b2
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_040b2_part_00 0
    %%fragment_start:
func_040b2:
    %%insn_040b2:
    call 0x400a ; 040B2 E855FF
    %if ($ - %%insn_040b2) > 3
        %error "LONG_040B2"
    %endif
    times 3 - ($ - %%insn_040b2) db 0
    %%insn_040b5:
    mov bx,0xdba2 ; 040B5 BBA2DB
    %if ($ - %%insn_040b5) > 3
        %error "LONG_040B5"
    %endif
    times 3 - ($ - %%insn_040b5) db 0
    db 0x03, 0xD8 ; 040B8 03D8 | add bx,ax | encoding preserved
    %%insn_040ba:
    lodsw ; 040BA AD
    %if ($ - %%insn_040ba) > 1
        %error "LONG_040BA"
    %endif
    times 1 - ($ - %%insn_040ba) db 0
    %%insn_040bb:
    mov di,0xdba2 ; 040BB BFA2DB
    %if ($ - %%insn_040bb) > 3
        %error "LONG_040BB"
    %endif
    times 3 - ($ - %%insn_040bb) db 0
    db 0x03, 0xF8 ; 040BE 03F8 | add di,ax | encoding preserved
    %%insn_040c0:
    mov al,[ss:di] ; 040C0 368A05
    %if ($ - %%insn_040c0) > 3
        %error "LONG_040C0"
    %endif
    times 3 - ($ - %%insn_040c0) db 0
    %%insn_040c3:
    mov [ss:bx],al ; 040C3 368807
    %if ($ - %%insn_040c3) > 3
        %error "LONG_040C3"
    %endif
    times 3 - ($ - %%insn_040c3) db 0
    %%insn_040c6:
    ret ; 040C6 C3
    %if ($ - %%insn_040c6) > 1
        %error "LONG_040C6"
    %endif
    times 1 - ($ - %%insn_040c6) db 0
    %if ($ - %%fragment_start) != 21
        %error "SIZE_040B2"
    %endif
%endmacro
