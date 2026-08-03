; PE virtual entry 0040A3EE
; Ghidra working symbol: FUN_0040a3ee
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040a3ee_part_00 0
    %%fragment_start:
func_0040a3ee:
    %%insn_0040a3ee:
    push ebp ; 0040A3EE 55
    %if ($ - %%insn_0040a3ee) > 1
        %error "LONG_0040A3EE"
    %endif
    times 1 - ($ - %%insn_0040a3ee) db 0
    db 0x8B, 0xEC ; 0040A3EF 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040a3f1:
    push dword 0x0 ; 0040A3F1 6A00
    %if ($ - %%insn_0040a3f1) > 2
        %error "LONG_0040A3F1"
    %endif
    times 2 - ($ - %%insn_0040a3f1) db 0
    %%insn_0040a3f3:
    mov eax,[ebp+0xc] ; 0040A3F3 8B450C
    %if ($ - %%insn_0040a3f3) > 3
        %error "LONG_0040A3F3"
    %endif
    times 3 - ($ - %%insn_0040a3f3) db 0
    %%insn_0040a3f6:
    sub eax,0x1 ; 0040A3F6 83E801
    %if ($ - %%insn_0040a3f6) > 3
        %error "LONG_0040A3F6"
    %endif
    times 3 - ($ - %%insn_0040a3f6) db 0
    %%insn_0040a3f9:
    imul eax,eax,0x14 ; 0040A3F9 6BC014
    %if ($ - %%insn_0040a3f9) > 3
        %error "LONG_0040A3F9"
    %endif
    times 3 - ($ - %%insn_0040a3f9) db 0
    %%insn_0040a3fc:
    mov ecx,[eax+0x41f604] ; 0040A3FC 8B8804F64100
    %if ($ - %%insn_0040a3fc) > 6
        %error "LONG_0040A3FC"
    %endif
    times 6 - ($ - %%insn_0040a3fc) db 0
    %%insn_0040a402:
    push ecx ; 0040A402 51
    %if ($ - %%insn_0040a402) > 1
        %error "LONG_0040A402"
    %endif
    times 1 - ($ - %%insn_0040a402) db 0
    %%insn_0040a403:
    mov edx,[ebp+0x8] ; 0040A403 8B5508
    %if ($ - %%insn_0040a403) > 3
        %error "LONG_0040A403"
    %endif
    times 3 - ($ - %%insn_0040a403) db 0
    %%insn_0040a406:
    push edx ; 0040A406 52
    %if ($ - %%insn_0040a406) > 1
        %error "LONG_0040A406"
    %endif
    times 1 - ($ - %%insn_0040a406) db 0
    %%insn_0040a407:
    call dword near [0x42459c] ; 0040A407 FF159C454200
    %if ($ - %%insn_0040a407) > 6
        %error "LONG_0040A407"
    %endif
    times 6 - ($ - %%insn_0040a407) db 0
    %%insn_0040a40d:
    cmp eax,0xffffffffffffffff ; 0040A40D 83F8FF
    %if ($ - %%insn_0040a40d) > 3
        %error "LONG_0040A40D"
    %endif
    times 3 - ($ - %%insn_0040a40d) db 0
    %%insn_0040a410:
    jnz short 0x40a41f ; 0040A410 750D
    %if ($ - %%insn_0040a410) > 2
        %error "LONG_0040A410"
    %endif
    times 2 - ($ - %%insn_0040a410) db 0
    %%insn_0040a412:
    push dword 0x41bd24 ; 0040A412 6824BD4100
    %if ($ - %%insn_0040a412) > 5
        %error "LONG_0040A412"
    %endif
    times 5 - ($ - %%insn_0040a412) db 0
    %%insn_0040a417:
    call 0x409760 ; 0040A417 E844F3FFFF
    %if ($ - %%insn_0040a417) > 5
        %error "LONG_0040A417"
    %endif
    times 5 - ($ - %%insn_0040a417) db 0
    %%insn_0040a41c:
    add esp,0x4 ; 0040A41C 83C404
    %if ($ - %%insn_0040a41c) > 3
        %error "LONG_0040A41C"
    %endif
    times 3 - ($ - %%insn_0040a41c) db 0
    %%insn_0040a41f:
    pop ebp ; 0040A41F 5D
    %if ($ - %%insn_0040a41f) > 1
        %error "LONG_0040A41F"
    %endif
    times 1 - ($ - %%insn_0040a41f) db 0
    %%insn_0040a420:
    ret ; 0040A420 C3
    %if ($ - %%insn_0040a420) > 1
        %error "LONG_0040A420"
    %endif
    times 1 - ($ - %%insn_0040a420) db 0
    %if ($ - %%fragment_start) != 51
        %error "function fragment size drift: 0040A3EE"
    %endif
%endmacro
