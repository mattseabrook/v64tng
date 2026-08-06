; PE virtual entry 0040E050
; Ghidra working symbol: FUN_0040e050
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e050_part_00 0
    %%fragment_start:
func_0040e050:
    %%insn_0040e050:
    push ebp ; 0040E050 55
    %if ($ - %%insn_0040e050) > 1
        %error "LONG_0040E050"
    %endif
    times 1 - ($ - %%insn_0040e050) db 0
    db 0x8B, 0xEC ; 0040E051 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040e053:
    mov eax,[ebp+0x8] ; 0040E053 8B4508
    %if ($ - %%insn_0040e053) > 3
        %error "LONG_0040E053"
    %endif
    times 3 - ($ - %%insn_0040e053) db 0
    %%insn_0040e056:
    cmp eax,0x14 ; 0040E056 83F814
    %if ($ - %%insn_0040e056) > 3
        %error "LONG_0040E056"
    %endif
    times 3 - ($ - %%insn_0040e056) db 0
    %%insn_0040e059:
    jnl short 0x40e069 ; 0040E059 7D0E
    %if ($ - %%insn_0040e059) > 2
        %error "LONG_0040E059"
    %endif
    times 2 - ($ - %%insn_0040e059) db 0
    %%insn_0040e05b:
    add eax,0x1c ; 0040E05B 83C01C
    %if ($ - %%insn_0040e05b) > 3
        %error "LONG_0040E05B"
    %endif
    times 3 - ($ - %%insn_0040e05b) db 0
    %%insn_0040e05e:
    push eax ; 0040E05E 50
    %if ($ - %%insn_0040e05e) > 1
        %error "LONG_0040E05E"
    %endif
    times 1 - ($ - %%insn_0040e05e) db 0
    %%insn_0040e05f:
    call 0x40df80 ; 0040E05F E81CFFFFFF
    %if ($ - %%insn_0040e05f) > 5
        %error "LONG_0040E05F"
    %endif
    times 5 - ($ - %%insn_0040e05f) db 0
    %%insn_0040e064:
    add esp,0x4 ; 0040E064 83C404
    %if ($ - %%insn_0040e064) > 3
        %error "LONG_0040E064"
    %endif
    times 3 - ($ - %%insn_0040e064) db 0
    %%insn_0040e067:
    pop ebp ; 0040E067 5D
    %if ($ - %%insn_0040e067) > 1
        %error "LONG_0040E067"
    %endif
    times 1 - ($ - %%insn_0040e067) db 0
    %%insn_0040e068:
    ret ; 0040E068 C3
    %if ($ - %%insn_0040e068) > 1
        %error "LONG_0040E068"
    %endif
    times 1 - ($ - %%insn_0040e068) db 0
    %%insn_0040e069:
    mov eax,[ebp+0xc] ; 0040E069 8B450C
    %if ($ - %%insn_0040e069) > 3
        %error "LONG_0040E069"
    %endif
    times 3 - ($ - %%insn_0040e069) db 0
    %%insn_0040e06c:
    add eax,0x20 ; 0040E06C 83C020
    %if ($ - %%insn_0040e06c) > 3
        %error "LONG_0040E06C"
    %endif
    times 3 - ($ - %%insn_0040e06c) db 0
    %%insn_0040e06f:
    push eax ; 0040E06F 50
    %if ($ - %%insn_0040e06f) > 1
        %error "LONG_0040E06F"
    %endif
    times 1 - ($ - %%insn_0040e06f) db 0
    %%insn_0040e070:
    call dword near [0x4243f4] ; 0040E070 FF15F4434200
    %if ($ - %%insn_0040e070) > 6
        %error "LONG_0040E070"
    %endif
    times 6 - ($ - %%insn_0040e070) db 0
    %%insn_0040e076:
    pop ebp ; 0040E076 5D
    %if ($ - %%insn_0040e076) > 1
        %error "LONG_0040E076"
    %endif
    times 1 - ($ - %%insn_0040e076) db 0
    %%insn_0040e077:
    ret ; 0040E077 C3
    %if ($ - %%insn_0040e077) > 1
        %error "LONG_0040E077"
    %endif
    times 1 - ($ - %%insn_0040e077) db 0
    %if ($ - %%fragment_start) != 40
        %error "function fragment size drift: 0040E050"
    %endif
%endmacro
