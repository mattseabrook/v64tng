; Linear entry 08854 (1000:8854)
; Ghidra working symbol: FUN_1000_8854
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_08854_part_00 0
    %%fragment_start:
func_08854:
    %%insn_08854:
    push bp ; 08854 55
    %if ($ - %%insn_08854) > 1
        %error "LONG_08854"
    %endif
    times 1 - ($ - %%insn_08854) db 0
    db 0x8B, 0xEC ; 08855 8BEC | mov bp,sp | encoding preserved
    %%insn_08857:
    sub sp,0x4 ; 08857 83EC04
    %if ($ - %%insn_08857) > 3
        %error "LONG_08857"
    %endif
    times 3 - ($ - %%insn_08857) db 0
    %%insn_0885a:
    push ds ; 0885A 1E
    %if ($ - %%insn_0885a) > 1
        %error "LONG_0885A"
    %endif
    times 1 - ($ - %%insn_0885a) db 0
    %%insn_0885b:
    push si ; 0885B 56
    %if ($ - %%insn_0885b) > 1
        %error "LONG_0885B"
    %endif
    times 1 - ($ - %%insn_0885b) db 0
    %%insn_0885c:
    push di ; 0885C 57
    %if ($ - %%insn_0885c) > 1
        %error "LONG_0885C"
    %endif
    times 1 - ($ - %%insn_0885c) db 0
    %%insn_0885d:
    lds si,word [bp+0x8] ; 0885D C57608
    %if ($ - %%insn_0885d) > 3
        %error "LONG_0885D"
    %endif
    times 3 - ($ - %%insn_0885d) db 0
    %%insn_08860:
    mov ax,[si+0x8] ; 08860 8B4408
    %if ($ - %%insn_08860) > 3
        %error "LONG_08860"
    %endif
    times 3 - ($ - %%insn_08860) db 0
    %%insn_08863:
    mov dx,[si+0xa] ; 08863 8B540A
    %if ($ - %%insn_08863) > 3
        %error "LONG_08863"
    %endif
    times 3 - ($ - %%insn_08863) db 0
    %%insn_08866:
    mov [bp-0x4],ax ; 08866 8946FC
    %if ($ - %%insn_08866) > 3
        %error "LONG_08866"
    %endif
    times 3 - ($ - %%insn_08866) db 0
    %%insn_08869:
    mov [bp-0x2],dx ; 08869 8956FE
    %if ($ - %%insn_08869) > 3
        %error "LONG_08869"
    %endif
    times 3 - ($ - %%insn_08869) db 0
    %%insn_0886c:
    push word [si+0x2] ; 0886C FF7402
    %if ($ - %%insn_0886c) > 3
        %error "LONG_0886C"
    %endif
    times 3 - ($ - %%insn_0886c) db 0
    %%insn_0886f:
    push cs ; 0886F 0E
    %if ($ - %%insn_0886f) > 1
        %error "LONG_0886F"
    %endif
    times 1 - ($ - %%insn_0886f) db 0
    %%insn_08870:
    call 0x7f7b ; 08870 E808F7
    %if ($ - %%insn_08870) > 3
        %error "LONG_08870"
    %endif
    times 3 - ($ - %%insn_08870) db 0
    %%insn_08873:
    add sp,0x4 ; 08873 83C404
    %if ($ - %%insn_08873) > 3
        %error "LONG_08873"
    %endif
    times 3 - ($ - %%insn_08873) db 0
    %%insn_08876:
    push word [bp-0x2] ; 08876 FF76FE
    %if ($ - %%insn_08876) > 3
        %error "LONG_08876"
    %endif
    times 3 - ($ - %%insn_08876) db 0
    %%insn_08879:
    push word [bp-0x4] ; 08879 FF76FC
    %if ($ - %%insn_08879) > 3
        %error "LONG_08879"
    %endif
    times 3 - ($ - %%insn_08879) db 0
    %%insn_0887c:
    push word [si+0x6] ; 0887C FF7406
    %if ($ - %%insn_0887c) > 3
        %error "LONG_0887C"
    %endif
    times 3 - ($ - %%insn_0887c) db 0
    %%insn_0887f:
    push word [si+0x4] ; 0887F FF7404
    %if ($ - %%insn_0887f) > 3
        %error "LONG_0887F"
    %endif
    times 3 - ($ - %%insn_0887f) db 0
    %%insn_08882:
    push ax ; 08882 50
    %if ($ - %%insn_08882) > 1
        %error "LONG_08882"
    %endif
    times 1 - ($ - %%insn_08882) db 0
    %%insn_08883:
    push cs ; 08883 0E
    %if ($ - %%insn_08883) > 1
        %error "LONG_08883"
    %endif
    times 1 - ($ - %%insn_08883) db 0
    %%insn_08884:
    call 0x7fb6 ; 08884 E82FF7
    %if ($ - %%insn_08884) > 3
        %error "LONG_08884"
    %endif
    times 3 - ($ - %%insn_08884) db 0
    %%insn_08887:
    add sp,0xa ; 08887 83C40A
    %if ($ - %%insn_08887) > 3
        %error "LONG_08887"
    %endif
    times 3 - ($ - %%insn_08887) db 0
    %%insn_0888a:
    pop di ; 0888A 5F
    %if ($ - %%insn_0888a) > 1
        %error "LONG_0888A"
    %endif
    times 1 - ($ - %%insn_0888a) db 0
    %%insn_0888b:
    pop si ; 0888B 5E
    %if ($ - %%insn_0888b) > 1
        %error "LONG_0888B"
    %endif
    times 1 - ($ - %%insn_0888b) db 0
    %%insn_0888c:
    pop ds ; 0888C 1F
    %if ($ - %%insn_0888c) > 1
        %error "LONG_0888C"
    %endif
    times 1 - ($ - %%insn_0888c) db 0
    db 0x8B, 0xE5 ; 0888D 8BE5 | mov sp,bp | encoding preserved
    %%insn_0888f:
    pop bp ; 0888F 5D
    %if ($ - %%insn_0888f) > 1
        %error "LONG_0888F"
    %endif
    times 1 - ($ - %%insn_0888f) db 0
    %%insn_08890:
    retf ; 08890 CB
    %if ($ - %%insn_08890) > 1
        %error "LONG_08890"
    %endif
    times 1 - ($ - %%insn_08890) db 0
    %if ($ - %%fragment_start) != 61
        %error "SIZE_08854"
    %endif
%endmacro
