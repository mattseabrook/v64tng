; Linear entry 05226 (1000:5226)
; Ghidra working symbol: FUN_1000_5226
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05226_part_00 0
    %%fragment_start:
func_05226:
    %%insn_05226:
    mov si,0xd923 ; 05226 BE23D9
    %if ($ - %%insn_05226) > 3
        %error "LONG_05226"
    %endif
    times 3 - ($ - %%insn_05226) db 0
    %%insn_05229:
    mov al,[bx] ; 05229 8A07
    %if ($ - %%insn_05229) > 2
        %error "LONG_05229"
    %endif
    times 2 - ($ - %%insn_05229) db 0
    %%insn_0522b:
    mov [ss:si],al ; 0522B 368804
    %if ($ - %%insn_0522b) > 3
        %error "LONG_0522B"
    %endif
    times 3 - ($ - %%insn_0522b) db 0
    %%insn_0522e:
    inc si ; 0522E 46
    %if ($ - %%insn_0522e) > 1
        %error "LONG_0522E"
    %endif
    times 1 - ($ - %%insn_0522e) db 0
    %%insn_0522f:
    inc bx ; 0522F 43
    %if ($ - %%insn_0522f) > 1
        %error "LONG_0522F"
    %endif
    times 1 - ($ - %%insn_0522f) db 0
    db 0x22, 0xC0 ; 05230 22C0 | and al,al | encoding preserved
    %%insn_05232:
    jnz short 0x5229 ; 05232 75F5
    %if ($ - %%insn_05232) > 2
        %error "LONG_05232"
    %endif
    times 2 - ($ - %%insn_05232) db 0
    %%insn_05234:
    ret ; 05234 C3
    %if ($ - %%insn_05234) > 1
        %error "LONG_05234"
    %endif
    times 1 - ($ - %%insn_05234) db 0
    %if ($ - %%fragment_start) != 15
        %error "SIZE_05226"
    %endif
%endmacro
