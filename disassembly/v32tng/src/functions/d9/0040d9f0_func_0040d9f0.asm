; PE virtual entry 0040D9F0
; Ghidra working symbol: _strrchr
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d9f0_part_00 0
    %%fragment_start:
func_0040d9f0:
    %%insn_0040d9f0:
    push ebp ; 0040D9F0 55
    %if ($ - %%insn_0040d9f0) > 1
        %error "LONG_0040D9F0"
    %endif
    times 1 - ($ - %%insn_0040d9f0) db 0
    db 0x8B, 0xEC ; 0040D9F1 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040d9f3:
    push edi ; 0040D9F3 57
    %if ($ - %%insn_0040d9f3) > 1
        %error "LONG_0040D9F3"
    %endif
    times 1 - ($ - %%insn_0040d9f3) db 0
    %%insn_0040d9f4:
    mov edi,[ebp+0x8] ; 0040D9F4 8B7D08
    %if ($ - %%insn_0040d9f4) > 3
        %error "LONG_0040D9F4"
    %endif
    times 3 - ($ - %%insn_0040d9f4) db 0
    db 0x33, 0xC0 ; 0040D9F7 33C0 | xor eax,eax | encoding preserved
    %%insn_0040d9f9:
    or ecx,0xffffffffffffffff ; 0040D9F9 83C9FF
    %if ($ - %%insn_0040d9f9) > 3
        %error "LONG_0040D9F9"
    %endif
    times 3 - ($ - %%insn_0040d9f9) db 0
    %%insn_0040d9fc:
    repne scasb ; 0040D9FC F2AE
    %if ($ - %%insn_0040d9fc) > 2
        %error "LONG_0040D9FC"
    %endif
    times 2 - ($ - %%insn_0040d9fc) db 0
    %%insn_0040d9fe:
    inc ecx ; 0040D9FE 41
    %if ($ - %%insn_0040d9fe) > 1
        %error "LONG_0040D9FE"
    %endif
    times 1 - ($ - %%insn_0040d9fe) db 0
    %%insn_0040d9ff:
    neg ecx ; 0040D9FF F7D9
    %if ($ - %%insn_0040d9ff) > 2
        %error "LONG_0040D9FF"
    %endif
    times 2 - ($ - %%insn_0040d9ff) db 0
    %%insn_0040da01:
    dec edi ; 0040DA01 4F
    %if ($ - %%insn_0040da01) > 1
        %error "LONG_0040DA01"
    %endif
    times 1 - ($ - %%insn_0040da01) db 0
    %%insn_0040da02:
    mov al,[ebp+0xc] ; 0040DA02 8A450C
    %if ($ - %%insn_0040da02) > 3
        %error "LONG_0040DA02"
    %endif
    times 3 - ($ - %%insn_0040da02) db 0
    %%insn_0040da05:
    std ; 0040DA05 FD
    %if ($ - %%insn_0040da05) > 1
        %error "LONG_0040DA05"
    %endif
    times 1 - ($ - %%insn_0040da05) db 0
    %%insn_0040da06:
    repne scasb ; 0040DA06 F2AE
    %if ($ - %%insn_0040da06) > 2
        %error "LONG_0040DA06"
    %endif
    times 2 - ($ - %%insn_0040da06) db 0
    %%insn_0040da08:
    inc edi ; 0040DA08 47
    %if ($ - %%insn_0040da08) > 1
        %error "LONG_0040DA08"
    %endif
    times 1 - ($ - %%insn_0040da08) db 0
    %%insn_0040da09:
    cmp [edi],al ; 0040DA09 3807
    %if ($ - %%insn_0040da09) > 2
        %error "LONG_0040DA09"
    %endif
    times 2 - ($ - %%insn_0040da09) db 0
    %%insn_0040da0b:
    jz short 0x40da11 ; 0040DA0B 7404
    %if ($ - %%insn_0040da0b) > 2
        %error "LONG_0040DA0B"
    %endif
    times 2 - ($ - %%insn_0040da0b) db 0
    db 0x33, 0xC0 ; 0040DA0D 33C0 | xor eax,eax | encoding preserved
    %%insn_0040da0f:
    jmp short 0x40da13 ; 0040DA0F EB02
    %if ($ - %%insn_0040da0f) > 2
        %error "LONG_0040DA0F"
    %endif
    times 2 - ($ - %%insn_0040da0f) db 0
    db 0x8B, 0xC7 ; 0040DA11 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040da13:
    cld ; 0040DA13 FC
    %if ($ - %%insn_0040da13) > 1
        %error "LONG_0040DA13"
    %endif
    times 1 - ($ - %%insn_0040da13) db 0
    %%insn_0040da14:
    pop edi ; 0040DA14 5F
    %if ($ - %%insn_0040da14) > 1
        %error "LONG_0040DA14"
    %endif
    times 1 - ($ - %%insn_0040da14) db 0
    %%insn_0040da15:
    leave ; 0040DA15 C9
    %if ($ - %%insn_0040da15) > 1
        %error "LONG_0040DA15"
    %endif
    times 1 - ($ - %%insn_0040da15) db 0
    %%insn_0040da16:
    ret ; 0040DA16 C3
    %if ($ - %%insn_0040da16) > 1
        %error "LONG_0040DA16"
    %endif
    times 1 - ($ - %%insn_0040da16) db 0
    %if ($ - %%fragment_start) != 39
        %error "function fragment size drift: 0040D9F0"
    %endif
%endmacro
