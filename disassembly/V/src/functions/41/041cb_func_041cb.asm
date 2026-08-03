; Linear entry 041CB (1000:41cb)
; Ghidra working symbol: FUN_1000_41cb
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_041cb_part_00 0
    %%fragment_start:
func_041cb:
    %%insn_041cb:
    call 0x400a ; 041CB E83CFE
    %if ($ - %%insn_041cb) > 3
        %error "LONG_041CB"
    %endif
    times 3 - ($ - %%insn_041cb) db 0
    %%insn_041ce:
    mov bx,0xdba2 ; 041CE BBA2DB
    %if ($ - %%insn_041ce) > 3
        %error "LONG_041CE"
    %endif
    times 3 - ($ - %%insn_041ce) db 0
    db 0x03, 0xD8 ; 041D1 03D8 | add bx,ax | encoding preserved
    %%insn_041d3:
    lodsb ; 041D3 AC
    %if ($ - %%insn_041d3) > 1
        %error "LONG_041D3"
    %endif
    times 1 - ($ - %%insn_041d3) db 0
    %%insn_041d4:
    cmp al,[ss:bx] ; 041D4 363A07
    %if ($ - %%insn_041d4) > 3
        %error "LONG_041D4"
    %endif
    times 3 - ($ - %%insn_041d4) db 0
    %%insn_041d7:
    jnc short 0x41de ; 041D7 7305
    %if ($ - %%insn_041d7) > 2
        %error "LONG_041D7"
    %endif
    times 2 - ($ - %%insn_041d7) db 0
    %%insn_041d9:
    sub [ss:bx],al ; 041D9 362807
    %if ($ - %%insn_041d9) > 3
        %error "LONG_041D9"
    %endif
    times 3 - ($ - %%insn_041d9) db 0
    %%insn_041dc:
    jmp short 0x41d4 ; 041DC EBF6
    %if ($ - %%insn_041dc) > 2
        %error "LONG_041DC"
    %endif
    times 2 - ($ - %%insn_041dc) db 0
    %%insn_041de:
    ret ; 041DE C3
    %if ($ - %%insn_041de) > 1
        %error "LONG_041DE"
    %endif
    times 1 - ($ - %%insn_041de) db 0
    %if ($ - %%fragment_start) != 20
        %error "SIZE_041CB"
    %endif
%endmacro
