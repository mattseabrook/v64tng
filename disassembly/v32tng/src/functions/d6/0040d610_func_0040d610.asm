; PE virtual entry 0040D610
; Ghidra working symbol: __exit
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d610_part_00 0
    %%fragment_start:
func_0040d610:
    %%insn_0040d610:
    mov eax,[esp+0x4] ; 0040D610 8B442404
    %if ($ - %%insn_0040d610) > 4
        %error "LONG_0040D610"
    %endif
    times 4 - ($ - %%insn_0040d610) db 0
    %%insn_0040d614:
    push dword 0x0 ; 0040D614 6A00
    %if ($ - %%insn_0040d614) > 2
        %error "LONG_0040D614"
    %endif
    times 2 - ($ - %%insn_0040d614) db 0
    %%insn_0040d616:
    push dword 0x1 ; 0040D616 6A01
    %if ($ - %%insn_0040d616) > 2
        %error "LONG_0040D616"
    %endif
    times 2 - ($ - %%insn_0040d616) db 0
    %%insn_0040d618:
    push eax ; 0040D618 50
    %if ($ - %%insn_0040d618) > 1
        %error "LONG_0040D618"
    %endif
    times 1 - ($ - %%insn_0040d618) db 0
    %%insn_0040d619:
    call 0x40d650 ; 0040D619 E832000000
    %if ($ - %%insn_0040d619) > 5
        %error "LONG_0040D619"
    %endif
    times 5 - ($ - %%insn_0040d619) db 0
    %%insn_0040d61e:
    add esp,0xc ; 0040D61E 83C40C
    %if ($ - %%insn_0040d61e) > 3
        %error "LONG_0040D61E"
    %endif
    times 3 - ($ - %%insn_0040d61e) db 0
    %%insn_0040d621:
    ret ; 0040D621 C3
    %if ($ - %%insn_0040d621) > 1
        %error "LONG_0040D621"
    %endif
    times 1 - ($ - %%insn_0040d621) db 0
    %if ($ - %%fragment_start) != 18
        %error "function fragment size drift: 0040D610"
    %endif
%endmacro
