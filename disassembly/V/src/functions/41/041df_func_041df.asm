; Linear entry 041DF (1000:41df)
; Ghidra working symbol: FUN_1000_41df
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_041df_part_00 0
    %%fragment_start:
func_041df:
    %%insn_041df:
    call 0x400a ; 041DF E828FE
    %if ($ - %%insn_041df) > 3
        %error "LONG_041DF"
    %endif
    times 3 - ($ - %%insn_041df) db 0
    %%insn_041e2:
    mov bx,0xdba2 ; 041E2 BBA2DB
    %if ($ - %%insn_041e2) > 3
        %error "LONG_041E2"
    %endif
    times 3 - ($ - %%insn_041e2) db 0
    db 0x03, 0xD8 ; 041E5 03D8 | add bx,ax | encoding preserved
    %%insn_041e7:
    lodsb ; 041E7 AC
    %if ($ - %%insn_041e7) > 1
        %error "LONG_041E7"
    %endif
    times 1 - ($ - %%insn_041e7) db 0
    db 0x8A, 0xF0 ; 041E8 8AF0 | mov dh,al | encoding preserved
    %%insn_041ea:
    and al,0x7f ; 041EA 247F
    %if ($ - %%insn_041ea) > 2
        %error "LONG_041EA"
    %endif
    times 2 - ($ - %%insn_041ea) db 0
    %%insn_041ec:
    sub al,0x30 ; 041EC 2C30
    %if ($ - %%insn_041ec) > 2
        %error "LONG_041EC"
    %endif
    times 2 - ($ - %%insn_041ec) db 0
    %%insn_041ee:
    xor [ss:bx],al ; 041EE 363007
    %if ($ - %%insn_041ee) > 3
        %error "LONG_041EE"
    %endif
    times 3 - ($ - %%insn_041ee) db 0
    %%insn_041f1:
    inc bx ; 041F1 43
    %if ($ - %%insn_041f1) > 1
        %error "LONG_041F1"
    %endif
    times 1 - ($ - %%insn_041f1) db 0
    %%insn_041f2:
    cmp dh,0x80 ; 041F2 80FE80
    %if ($ - %%insn_041f2) > 3
        %error "LONG_041F2"
    %endif
    times 3 - ($ - %%insn_041f2) db 0
    %%insn_041f5:
    jc short 0x41e7 ; 041F5 72F0
    %if ($ - %%insn_041f5) > 2
        %error "LONG_041F5"
    %endif
    times 2 - ($ - %%insn_041f5) db 0
    %%insn_041f7:
    ret ; 041F7 C3
    %if ($ - %%insn_041f7) > 1
        %error "LONG_041F7"
    %endif
    times 1 - ($ - %%insn_041f7) db 0
    %if ($ - %%fragment_start) != 25
        %error "SIZE_041DF"
    %endif
%endmacro
