; PE virtual entry 0040D150
; Ghidra working symbol: FUN_0040d150
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d150_part_00 0
    %%fragment_start:
func_0040d150:
    %%insn_0040d150:
    mov eax,[esp+0x8] ; 0040D150 8B442408
    %if ($ - %%insn_0040d150) > 4
        %error "LONG_0040D150"
    %endif
    times 4 - ($ - %%insn_0040d150) db 0
    %%insn_0040d154:
    mov ecx,[esp+0x4] ; 0040D154 8B4C2404
    %if ($ - %%insn_0040d154) > 4
        %error "LONG_0040D154"
    %endif
    times 4 - ($ - %%insn_0040d154) db 0
    %%insn_0040d158:
    push dword 0x40 ; 0040D158 6A40
    %if ($ - %%insn_0040d158) > 2
        %error "LONG_0040D158"
    %endif
    times 2 - ($ - %%insn_0040d158) db 0
    %%insn_0040d15a:
    push eax ; 0040D15A 50
    %if ($ - %%insn_0040d15a) > 1
        %error "LONG_0040D15A"
    %endif
    times 1 - ($ - %%insn_0040d15a) db 0
    %%insn_0040d15b:
    push ecx ; 0040D15B 51
    %if ($ - %%insn_0040d15b) > 1
        %error "LONG_0040D15B"
    %endif
    times 1 - ($ - %%insn_0040d15b) db 0
    %%insn_0040d15c:
    call 0x40d110 ; 0040D15C E8AFFFFFFF
    %if ($ - %%insn_0040d15c) > 5
        %error "LONG_0040D15C"
    %endif
    times 5 - ($ - %%insn_0040d15c) db 0
    %%insn_0040d161:
    add esp,0xc ; 0040D161 83C40C
    %if ($ - %%insn_0040d161) > 3
        %error "LONG_0040D161"
    %endif
    times 3 - ($ - %%insn_0040d161) db 0
    %%insn_0040d164:
    ret ; 0040D164 C3
    %if ($ - %%insn_0040d164) > 1
        %error "LONG_0040D164"
    %endif
    times 1 - ($ - %%insn_0040d164) db 0
    %if ($ - %%fragment_start) != 21
        %error "function fragment size drift: 0040D150"
    %endif
%endmacro
