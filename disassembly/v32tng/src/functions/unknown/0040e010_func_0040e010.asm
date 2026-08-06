; PE virtual entry 0040E010
; Ghidra working symbol: FUN_0040e010
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e010_part_00 0
    %%fragment_start:
func_0040e010:
    %%insn_0040e010:
    push ebp ; 0040E010 55
    %if ($ - %%insn_0040e010) > 1
        %error "LONG_0040E010"
    %endif
    times 1 - ($ - %%insn_0040e010) db 0
    db 0x8B, 0xEC ; 0040E011 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040e013:
    mov eax,[ebp+0x8] ; 0040E013 8B4508
    %if ($ - %%insn_0040e013) > 3
        %error "LONG_0040E013"
    %endif
    times 3 - ($ - %%insn_0040e013) db 0
    %%insn_0040e016:
    cmp eax,0x41e3a8 ; 0040E016 3DA8E34100
    %if ($ - %%insn_0040e016) > 5
        %error "LONG_0040E016"
    %endif
    times 5 - ($ - %%insn_0040e016) db 0
    %%insn_0040e01b:
    jc short 0x40e03a ; 0040E01B 721D
    %if ($ - %%insn_0040e01b) > 2
        %error "LONG_0040E01B"
    %endif
    times 2 - ($ - %%insn_0040e01b) db 0
    %%insn_0040e01d:
    cmp eax,0x41e608 ; 0040E01D 3D08E64100
    %if ($ - %%insn_0040e01d) > 5
        %error "LONG_0040E01D"
    %endif
    times 5 - ($ - %%insn_0040e01d) db 0
    %%insn_0040e022:
    ja short 0x40e03a ; 0040E022 7716
    %if ($ - %%insn_0040e022) > 2
        %error "LONG_0040E022"
    %endif
    times 2 - ($ - %%insn_0040e022) db 0
    %%insn_0040e024:
    sub eax,0x41e3a8 ; 0040E024 2DA8E34100
    %if ($ - %%insn_0040e024) > 5
        %error "LONG_0040E024"
    %endif
    times 5 - ($ - %%insn_0040e024) db 0
    %%insn_0040e029:
    sar eax,byte 0x5 ; 0040E029 C1F805
    %if ($ - %%insn_0040e029) > 3
        %error "LONG_0040E029"
    %endif
    times 3 - ($ - %%insn_0040e029) db 0
    %%insn_0040e02c:
    add eax,0x1c ; 0040E02C 83C01C
    %if ($ - %%insn_0040e02c) > 3
        %error "LONG_0040E02C"
    %endif
    times 3 - ($ - %%insn_0040e02c) db 0
    %%insn_0040e02f:
    push eax ; 0040E02F 50
    %if ($ - %%insn_0040e02f) > 1
        %error "LONG_0040E02F"
    %endif
    times 1 - ($ - %%insn_0040e02f) db 0
    %%insn_0040e030:
    call 0x40df80 ; 0040E030 E84BFFFFFF
    %if ($ - %%insn_0040e030) > 5
        %error "LONG_0040E030"
    %endif
    times 5 - ($ - %%insn_0040e030) db 0
    %%insn_0040e035:
    add esp,0x4 ; 0040E035 83C404
    %if ($ - %%insn_0040e035) > 3
        %error "LONG_0040E035"
    %endif
    times 3 - ($ - %%insn_0040e035) db 0
    %%insn_0040e038:
    pop ebp ; 0040E038 5D
    %if ($ - %%insn_0040e038) > 1
        %error "LONG_0040E038"
    %endif
    times 1 - ($ - %%insn_0040e038) db 0
    %%insn_0040e039:
    ret ; 0040E039 C3
    %if ($ - %%insn_0040e039) > 1
        %error "LONG_0040E039"
    %endif
    times 1 - ($ - %%insn_0040e039) db 0
    %%insn_0040e03a:
    add eax,0x20 ; 0040E03A 83C020
    %if ($ - %%insn_0040e03a) > 3
        %error "LONG_0040E03A"
    %endif
    times 3 - ($ - %%insn_0040e03a) db 0
    %%insn_0040e03d:
    push eax ; 0040E03D 50
    %if ($ - %%insn_0040e03d) > 1
        %error "LONG_0040E03D"
    %endif
    times 1 - ($ - %%insn_0040e03d) db 0
    %%insn_0040e03e:
    call dword near [0x4243f4] ; 0040E03E FF15F4434200
    %if ($ - %%insn_0040e03e) > 6
        %error "LONG_0040E03E"
    %endif
    times 6 - ($ - %%insn_0040e03e) db 0
    %%insn_0040e044:
    pop ebp ; 0040E044 5D
    %if ($ - %%insn_0040e044) > 1
        %error "LONG_0040E044"
    %endif
    times 1 - ($ - %%insn_0040e044) db 0
    %%insn_0040e045:
    ret ; 0040E045 C3
    %if ($ - %%insn_0040e045) > 1
        %error "LONG_0040E045"
    %endif
    times 1 - ($ - %%insn_0040e045) db 0
    %if ($ - %%fragment_start) != 54
        %error "function fragment size drift: 0040E010"
    %endif
%endmacro
