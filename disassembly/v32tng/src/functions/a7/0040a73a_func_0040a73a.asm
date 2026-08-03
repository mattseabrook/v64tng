; PE virtual entry 0040A73A
; Ghidra working symbol: FUN_0040a73a
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040a73a_part_00 0
    %%fragment_start:
func_0040a73a:
    %%insn_0040a73a:
    push ebp ; 0040A73A 55
    %if ($ - %%insn_0040a73a) > 1
        %error "LONG_0040A73A"
    %endif
    times 1 - ($ - %%insn_0040a73a) db 0
    db 0x8B, 0xEC ; 0040A73B 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040a73d:
    push dword 0xc800 ; 0040A73D 6800C80000
    %if ($ - %%insn_0040a73d) > 5
        %error "LONG_0040A73D"
    %endif
    times 5 - ($ - %%insn_0040a73d) db 0
    %%insn_0040a742:
    push dword 0x0 ; 0040A742 6A00
    %if ($ - %%insn_0040a742) > 2
        %error "LONG_0040A742"
    %endif
    times 2 - ($ - %%insn_0040a742) db 0
    %%insn_0040a744:
    mov eax,[0x42133c] ; 0040A744 A13C134200
    %if ($ - %%insn_0040a744) > 5
        %error "LONG_0040A744"
    %endif
    times 5 - ($ - %%insn_0040a744) db 0
    %%insn_0040a749:
    push eax ; 0040A749 50
    %if ($ - %%insn_0040a749) > 1
        %error "LONG_0040A749"
    %endif
    times 1 - ($ - %%insn_0040a749) db 0
    %%insn_0040a74a:
    call 0x40d470 ; 0040A74A E8212D0000
    %if ($ - %%insn_0040a74a) > 5
        %error "LONG_0040A74A"
    %endif
    times 5 - ($ - %%insn_0040a74a) db 0
    %%insn_0040a74f:
    add esp,0xc ; 0040A74F 83C40C
    %if ($ - %%insn_0040a74f) > 3
        %error "LONG_0040A74F"
    %endif
    times 3 - ($ - %%insn_0040a74f) db 0
    %%insn_0040a752:
    mov dword [0x421354],0x0 ; 0040A752 C7055413420000000000
    %if ($ - %%insn_0040a752) > 10
        %error "LONG_0040A752"
    %endif
    times 10 - ($ - %%insn_0040a752) db 0
    %%insn_0040a75c:
    mov dword [0x42135c],0x0 ; 0040A75C C7055C13420000000000
    %if ($ - %%insn_0040a75c) > 10
        %error "LONG_0040A75C"
    %endif
    times 10 - ($ - %%insn_0040a75c) db 0
    %%insn_0040a766:
    mov dword [0x421358],0x280 ; 0040A766 C7055813420080020000
    %if ($ - %%insn_0040a766) > 10
        %error "LONG_0040A766"
    %endif
    times 10 - ($ - %%insn_0040a766) db 0
    %%insn_0040a770:
    mov dword [0x421360],0x50 ; 0040A770 C7056013420050000000
    %if ($ - %%insn_0040a770) > 10
        %error "LONG_0040A770"
    %endif
    times 10 - ($ - %%insn_0040a770) db 0
    %%insn_0040a77a:
    mov dword [0x41f590],0x1 ; 0040A77A C70590F5410001000000
    %if ($ - %%insn_0040a77a) > 10
        %error "LONG_0040A77A"
    %endif
    times 10 - ($ - %%insn_0040a77a) db 0
    %%insn_0040a784:
    pop ebp ; 0040A784 5D
    %if ($ - %%insn_0040a784) > 1
        %error "LONG_0040A784"
    %endif
    times 1 - ($ - %%insn_0040a784) db 0
    %%insn_0040a785:
    ret ; 0040A785 C3
    %if ($ - %%insn_0040a785) > 1
        %error "LONG_0040A785"
    %endif
    times 1 - ($ - %%insn_0040a785) db 0
    %if ($ - %%fragment_start) != 76
        %error "function fragment size drift: 0040A73A"
    %endif
%endmacro
