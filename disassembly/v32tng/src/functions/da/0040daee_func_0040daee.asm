; PE virtual entry 0040DAEE
; Ghidra working symbol: FUN_0040daee
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040daee_part_00 0
    %%fragment_start:
func_0040daee:
    %%insn_0040daee:
    push ebx ; 0040DAEE 53
    %if ($ - %%insn_0040daee) > 1
        %error "LONG_0040DAEE"
    %endif
    times 1 - ($ - %%insn_0040daee) db 0
    %%insn_0040daef:
    push ecx ; 0040DAEF 51
    %if ($ - %%insn_0040daef) > 1
        %error "LONG_0040DAEF"
    %endif
    times 1 - ($ - %%insn_0040daef) db 0
    %%insn_0040daf0:
    mov ebx,0x41bd80 ; 0040DAF0 BB80BD4100
    %if ($ - %%insn_0040daf0) > 5
        %error "LONG_0040DAF0"
    %endif
    times 5 - ($ - %%insn_0040daf0) db 0
    %%insn_0040daf5:
    mov ecx,[ebp+0x8] ; 0040DAF5 8B4D08
    %if ($ - %%insn_0040daf5) > 3
        %error "LONG_0040DAF5"
    %endif
    times 3 - ($ - %%insn_0040daf5) db 0
    %%insn_0040daf8:
    mov [ebx+0x8],ecx ; 0040DAF8 894B08
    %if ($ - %%insn_0040daf8) > 3
        %error "LONG_0040DAF8"
    %endif
    times 3 - ($ - %%insn_0040daf8) db 0
    %%insn_0040dafb:
    mov [ebx+0x4],eax ; 0040DAFB 894304
    %if ($ - %%insn_0040dafb) > 3
        %error "LONG_0040DAFB"
    %endif
    times 3 - ($ - %%insn_0040dafb) db 0
    %%insn_0040dafe:
    mov [ebx+0xc],ebp ; 0040DAFE 896B0C
    %if ($ - %%insn_0040dafe) > 3
        %error "LONG_0040DAFE"
    %endif
    times 3 - ($ - %%insn_0040dafe) db 0
    %%insn_0040db01:
    pop ecx ; 0040DB01 59
    %if ($ - %%insn_0040db01) > 1
        %error "LONG_0040DB01"
    %endif
    times 1 - ($ - %%insn_0040db01) db 0
    %%insn_0040db02:
    pop ebx ; 0040DB02 5B
    %if ($ - %%insn_0040db02) > 1
        %error "LONG_0040DB02"
    %endif
    times 1 - ($ - %%insn_0040db02) db 0
    %%insn_0040db03:
    ret word 0x4 ; 0040DB03 C20400
    %if ($ - %%insn_0040db03) > 3
        %error "LONG_0040DB03"
    %endif
    times 3 - ($ - %%insn_0040db03) db 0
    %if ($ - %%fragment_start) != 24
        %error "function fragment size drift: 0040DAEE"
    %endif
%endmacro
