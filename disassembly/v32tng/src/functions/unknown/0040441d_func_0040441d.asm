; PE virtual entry 0040441D
; Ghidra working symbol: FUN_0040441d
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040441d_part_00 0
    %%fragment_start:
func_0040441d:
    %%insn_0040441d:
    push ebp ; 0040441D 55
    %if ($ - %%insn_0040441d) > 1
        %error "LONG_0040441D"
    %endif
    times 1 - ($ - %%insn_0040441d) db 0
    db 0x8B, 0xEC ; 0040441E 8BEC | mov ebp,esp | encoding preserved
    %%insn_00404420:
    cmp dword [0x422380],0x0 ; 00404420 833D8023420000
    %if ($ - %%insn_00404420) > 7
        %error "LONG_00404420"
    %endif
    times 7 - ($ - %%insn_00404420) db 0
    %%insn_00404427:
    jz short 0x404437 ; 00404427 740E
    %if ($ - %%insn_00404427) > 2
        %error "LONG_00404427"
    %endif
    times 2 - ($ - %%insn_00404427) db 0
    %%insn_00404429:
    mov eax,[0x422380] ; 00404429 A180234200
    %if ($ - %%insn_00404429) > 5
        %error "LONG_00404429"
    %endif
    times 5 - ($ - %%insn_00404429) db 0
    %%insn_0040442e:
    push eax ; 0040442E 50
    %if ($ - %%insn_0040442e) > 1
        %error "LONG_0040442E"
    %endif
    times 1 - ($ - %%insn_0040442e) db 0
    %%insn_0040442f:
    call 0x40c9a0 ; 0040442F E86C850000
    %if ($ - %%insn_0040442f) > 5
        %error "LONG_0040442F"
    %endif
    times 5 - ($ - %%insn_0040442f) db 0
    %%insn_00404434:
    add esp,0x4 ; 00404434 83C404
    %if ($ - %%insn_00404434) > 3
        %error "LONG_00404434"
    %endif
    times 3 - ($ - %%insn_00404434) db 0
    %%insn_00404437:
    cmp dword [0x421f60],0x0 ; 00404437 833D601F420000
    %if ($ - %%insn_00404437) > 7
        %error "LONG_00404437"
    %endif
    times 7 - ($ - %%insn_00404437) db 0
    %%insn_0040443e:
    jz short 0x40444f ; 0040443E 740F
    %if ($ - %%insn_0040443e) > 2
        %error "LONG_0040443E"
    %endif
    times 2 - ($ - %%insn_0040443e) db 0
    %%insn_00404440:
    mov ecx,[0x421f60] ; 00404440 8B0D601F4200
    %if ($ - %%insn_00404440) > 6
        %error "LONG_00404440"
    %endif
    times 6 - ($ - %%insn_00404440) db 0
    %%insn_00404446:
    push ecx ; 00404446 51
    %if ($ - %%insn_00404446) > 1
        %error "LONG_00404446"
    %endif
    times 1 - ($ - %%insn_00404446) db 0
    %%insn_00404447:
    call 0x40c9a0 ; 00404447 E854850000
    %if ($ - %%insn_00404447) > 5
        %error "LONG_00404447"
    %endif
    times 5 - ($ - %%insn_00404447) db 0
    %%insn_0040444c:
    add esp,0x4 ; 0040444C 83C404
    %if ($ - %%insn_0040444c) > 3
        %error "LONG_0040444C"
    %endif
    times 3 - ($ - %%insn_0040444c) db 0
    %%insn_0040444f:
    cmp dword [0x421f64],0x0 ; 0040444F 833D641F420000
    %if ($ - %%insn_0040444f) > 7
        %error "LONG_0040444F"
    %endif
    times 7 - ($ - %%insn_0040444f) db 0
    %%insn_00404456:
    jz short 0x404467 ; 00404456 740F
    %if ($ - %%insn_00404456) > 2
        %error "LONG_00404456"
    %endif
    times 2 - ($ - %%insn_00404456) db 0
    %%insn_00404458:
    mov edx,[0x421f64] ; 00404458 8B15641F4200
    %if ($ - %%insn_00404458) > 6
        %error "LONG_00404458"
    %endif
    times 6 - ($ - %%insn_00404458) db 0
    %%insn_0040445e:
    push edx ; 0040445E 52
    %if ($ - %%insn_0040445e) > 1
        %error "LONG_0040445E"
    %endif
    times 1 - ($ - %%insn_0040445e) db 0
    %%insn_0040445f:
    call 0x40c9a0 ; 0040445F E83C850000
    %if ($ - %%insn_0040445f) > 5
        %error "LONG_0040445F"
    %endif
    times 5 - ($ - %%insn_0040445f) db 0
    %%insn_00404464:
    add esp,0x4 ; 00404464 83C404
    %if ($ - %%insn_00404464) > 3
        %error "LONG_00404464"
    %endif
    times 3 - ($ - %%insn_00404464) db 0
    %%insn_00404467:
    pop ebp ; 00404467 5D
    %if ($ - %%insn_00404467) > 1
        %error "LONG_00404467"
    %endif
    times 1 - ($ - %%insn_00404467) db 0
    %%insn_00404468:
    ret ; 00404468 C3
    %if ($ - %%insn_00404468) > 1
        %error "LONG_00404468"
    %endif
    times 1 - ($ - %%insn_00404468) db 0
    %if ($ - %%fragment_start) != 76
        %error "function fragment size drift: 0040441D"
    %endif
%endmacro
