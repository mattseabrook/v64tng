; PE virtual entry 0040D790
; Ghidra working symbol: FUN_0040d790
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d790_part_00 0
    %%fragment_start:
func_0040d790:
    %%insn_0040d790:
    mov ecx,[esp+0x8] ; 0040D790 8B4C2408
    %if ($ - %%insn_0040d790) > 4
        %error "LONG_0040D790"
    %endif
    times 4 - ($ - %%insn_0040d790) db 0
    %%insn_0040d794:
    mov edx,[esp+0x4] ; 0040D794 8B542404
    %if ($ - %%insn_0040d794) > 4
        %error "LONG_0040D794"
    %endif
    times 4 - ($ - %%insn_0040d794) db 0
    %%insn_0040d798:
    lea eax,[esp+0xc] ; 0040D798 8D44240C
    %if ($ - %%insn_0040d798) > 4
        %error "LONG_0040D798"
    %endif
    times 4 - ($ - %%insn_0040d798) db 0
    %%insn_0040d79c:
    push dword 0x0 ; 0040D79C 6A00
    %if ($ - %%insn_0040d79c) > 2
        %error "LONG_0040D79C"
    %endif
    times 2 - ($ - %%insn_0040d79c) db 0
    %%insn_0040d79e:
    push eax ; 0040D79E 50
    %if ($ - %%insn_0040d79e) > 1
        %error "LONG_0040D79E"
    %endif
    times 1 - ($ - %%insn_0040d79e) db 0
    %%insn_0040d79f:
    push ecx ; 0040D79F 51
    %if ($ - %%insn_0040d79f) > 1
        %error "LONG_0040D79F"
    %endif
    times 1 - ($ - %%insn_0040d79f) db 0
    %%insn_0040d7a0:
    push edx ; 0040D7A0 52
    %if ($ - %%insn_0040d7a0) > 1
        %error "LONG_0040D7A0"
    %endif
    times 1 - ($ - %%insn_0040d7a0) db 0
    %%insn_0040d7a1:
    call 0x411600 ; 0040D7A1 E85A3E0000
    %if ($ - %%insn_0040d7a1) > 5
        %error "LONG_0040D7A1"
    %endif
    times 5 - ($ - %%insn_0040d7a1) db 0
    %%insn_0040d7a6:
    add esp,0x10 ; 0040D7A6 83C410
    %if ($ - %%insn_0040d7a6) > 3
        %error "LONG_0040D7A6"
    %endif
    times 3 - ($ - %%insn_0040d7a6) db 0
    %%insn_0040d7a9:
    ret ; 0040D7A9 C3
    %if ($ - %%insn_0040d7a9) > 1
        %error "LONG_0040D7A9"
    %endif
    times 1 - ($ - %%insn_0040d7a9) db 0
    %if ($ - %%fragment_start) != 26
        %error "function fragment size drift: 0040D790"
    %endif
%endmacro
