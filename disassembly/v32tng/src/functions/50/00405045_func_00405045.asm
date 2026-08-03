; PE virtual entry 00405045
; Ghidra working symbol: FUN_00405045
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00405045_part_00 0
    %%fragment_start:
func_00405045:
    %%insn_00405045:
    push ebp ; 00405045 55
    %if ($ - %%insn_00405045) > 1
        %error "LONG_00405045"
    %endif
    times 1 - ($ - %%insn_00405045) db 0
    db 0x8B, 0xEC ; 00405046 8BEC | mov ebp,esp | encoding preserved
    %%insn_00405048:
    push ecx ; 00405048 51
    %if ($ - %%insn_00405048) > 1
        %error "LONG_00405048"
    %endif
    times 1 - ($ - %%insn_00405048) db 0
    %%insn_00405049:
    mov byte [0x4215b5],0x0 ; 00405049 C605B515420000
    %if ($ - %%insn_00405049) > 7
        %error "LONG_00405049"
    %endif
    times 7 - ($ - %%insn_00405049) db 0
    %%insn_00405050:
    mov byte [0x4215b7],0x1 ; 00405050 C605B715420001
    %if ($ - %%insn_00405050) > 7
        %error "LONG_00405050"
    %endif
    times 7 - ($ - %%insn_00405050) db 0
    %%insn_00405057:
    mov byte [0x4215b8],0x0 ; 00405057 C605B815420000
    %if ($ - %%insn_00405057) > 7
        %error "LONG_00405057"
    %endif
    times 7 - ($ - %%insn_00405057) db 0
    %%insn_0040505e:
    mov word [ebp-0x4],0x0 ; 0040505E 66C745FC0000
    %if ($ - %%insn_0040505e) > 6
        %error "LONG_0040505E"
    %endif
    times 6 - ($ - %%insn_0040505e) db 0
    %%insn_00405064:
    jmp short 0x405072 ; 00405064 EB0C
    %if ($ - %%insn_00405064) > 2
        %error "LONG_00405064"
    %endif
    times 2 - ($ - %%insn_00405064) db 0
    %%insn_00405066:
    mov ax,[ebp-0x4] ; 00405066 668B45FC
    %if ($ - %%insn_00405066) > 4
        %error "LONG_00405066"
    %endif
    times 4 - ($ - %%insn_00405066) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 0040506A 66050100 | add ax,0x1 | encoding preserved
    %%insn_0040506e:
    mov [ebp-0x4],ax ; 0040506E 668945FC
    %if ($ - %%insn_0040506e) > 4
        %error "LONG_0040506E"
    %endif
    times 4 - ($ - %%insn_0040506e) db 0
    %%insn_00405072:
    movsx ecx,word [ebp-0x4] ; 00405072 0FBF4DFC
    %if ($ - %%insn_00405072) > 4
        %error "LONG_00405072"
    %endif
    times 4 - ($ - %%insn_00405072) db 0
    %%insn_00405076:
    cmp ecx,0x31 ; 00405076 83F931
    %if ($ - %%insn_00405076) > 3
        %error "LONG_00405076"
    %endif
    times 3 - ($ - %%insn_00405076) db 0
    %%insn_00405079:
    jnl short 0x405091 ; 00405079 7D16
    %if ($ - %%insn_00405079) > 2
        %error "LONG_00405079"
    %endif
    times 2 - ($ - %%insn_00405079) db 0
    %%insn_0040507b:
    movsx edx,word [ebp-0x4] ; 0040507B 0FBF55FC
    %if ($ - %%insn_0040507b) > 4
        %error "LONG_0040507B"
    %endif
    times 4 - ($ - %%insn_0040507b) db 0
    %%insn_0040507f:
    movsx eax,word [ebp-0x4] ; 0040507F 0FBF45FC
    %if ($ - %%insn_0040507f) > 4
        %error "LONG_0040507F"
    %endif
    times 4 - ($ - %%insn_0040507f) db 0
    %%insn_00405083:
    mov cl,[edx+0x421580] ; 00405083 8A8A80154200
    %if ($ - %%insn_00405083) > 6
        %error "LONG_00405083"
    %endif
    times 6 - ($ - %%insn_00405083) db 0
    %%insn_00405089:
    mov [eax+0x421d00],cl ; 00405089 8888001D4200
    %if ($ - %%insn_00405089) > 6
        %error "LONG_00405089"
    %endif
    times 6 - ($ - %%insn_00405089) db 0
    %%insn_0040508f:
    jmp short 0x405066 ; 0040508F EBD5
    %if ($ - %%insn_0040508f) > 2
        %error "LONG_0040508F"
    %endif
    times 2 - ($ - %%insn_0040508f) db 0
    db 0x8B, 0xE5 ; 00405091 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00405093:
    pop ebp ; 00405093 5D
    %if ($ - %%insn_00405093) > 1
        %error "LONG_00405093"
    %endif
    times 1 - ($ - %%insn_00405093) db 0
    %%insn_00405094:
    ret ; 00405094 C3
    %if ($ - %%insn_00405094) > 1
        %error "LONG_00405094"
    %endif
    times 1 - ($ - %%insn_00405094) db 0
    %if ($ - %%fragment_start) != 80
        %error "function fragment size drift: 00405045"
    %endif
%endmacro
