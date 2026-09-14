; Linear entry 04087 (1000:4087)
; Ghidra working symbol: FUN_1000_4087
; Verified role; evidence:
; Opcode 16h caller 03B9Eh. Read short/word destination index, then decode elements with 04016h
; into SS:DBA2h+index until DH bit 7 is set. The terminating element is stored too.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_load_sequence_part_00 0
    %%fragment_start:
grv_load_sequence:
    %%insn_04087:
    call grv_read_variable_operand ; 04087 E880FF
    %if ($ - %%insn_04087) > 3
        %error "LONG_04087"
    %endif
    times 3 - ($ - %%insn_04087) db 0
    %%insn_0408a:
    mov di,0xdba2 ; 0408A BFA2DB
    %if ($ - %%insn_0408a) > 3
        %error "LONG_0408A"
    %endif
    times 3 - ($ - %%insn_0408a) db 0
    db 0x03, 0xF8 ; 0408D 03F8 | add di,ax | encoding preserved
    %%insn_0408f:
    call grv_decode_sequence_element ; 0408F E884FF
    %if ($ - %%insn_0408f) > 3
        %error "LONG_0408F"
    %endif
    times 3 - ($ - %%insn_0408f) db 0
    %%insn_04092:
    mov [bp+di],al ; 04092 8803
    %if ($ - %%insn_04092) > 2
        %error "LONG_04092"
    %endif
    times 2 - ($ - %%insn_04092) db 0
    %%insn_04094:
    inc di ; 04094 47
    %if ($ - %%insn_04094) > 1
        %error "LONG_04094"
    %endif
    times 1 - ($ - %%insn_04094) db 0
    %%insn_04095:
    cmp dh,0x80 ; 04095 80FE80
    %if ($ - %%insn_04095) > 3
        %error "LONG_04095"
    %endif
    times 3 - ($ - %%insn_04095) db 0
    %%insn_04098:
    jc short 0x408f ; 04098 72F5
    %if ($ - %%insn_04098) > 2
        %error "LONG_04098"
    %endif
    times 2 - ($ - %%insn_04098) db 0
    %%insn_0409a:
    ret ; 0409A C3
    %if ($ - %%insn_0409a) > 1
        %error "LONG_0409A"
    %endif
    times 1 - ($ - %%insn_0409a) db 0
    %if ($ - %%fragment_start) != 20
        %error "SIZE_04087"
    %endif
%endmacro
