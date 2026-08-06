; PE virtual entry 00407BC2
; Ghidra working symbol: FUN_00407bc2
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407bc2_part_00 0
    %%fragment_start:
func_00407bc2:
    %%insn_00407bc2:
    push ebp ; 00407BC2 55
    %if ($ - %%insn_00407bc2) > 1
        %error "LONG_00407BC2"
    %endif
    times 1 - ($ - %%insn_00407bc2) db 0
    db 0x8B, 0xEC ; 00407BC3 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407bc5:
    sub esp,0xc ; 00407BC5 83EC0C
    %if ($ - %%insn_00407bc5) > 3
        %error "LONG_00407BC5"
    %endif
    times 3 - ($ - %%insn_00407bc5) db 0
    %%insn_00407bc8:
    mov [ebp-0xc],edx ; 00407BC8 8955F4
    %if ($ - %%insn_00407bc8) > 3
        %error "LONG_00407BC8"
    %endif
    times 3 - ($ - %%insn_00407bc8) db 0
    %%insn_00407bcb:
    mov [ebp-0x8],ecx ; 00407BCB 894DF8
    %if ($ - %%insn_00407bcb) > 3
        %error "LONG_00407BCB"
    %endif
    times 3 - ($ - %%insn_00407bcb) db 0
    %%insn_00407bce:
    push dword 0x400 ; 00407BCE 6800040000
    %if ($ - %%insn_00407bce) > 5
        %error "LONG_00407BCE"
    %endif
    times 5 - ($ - %%insn_00407bce) db 0
    %%insn_00407bd3:
    call 0x40cdc0 ; 00407BD3 E8E8510000
    %if ($ - %%insn_00407bd3) > 5
        %error "LONG_00407BD3"
    %endif
    times 5 - ($ - %%insn_00407bd3) db 0
    %%insn_00407bd8:
    add esp,0x4 ; 00407BD8 83C404
    %if ($ - %%insn_00407bd8) > 3
        %error "LONG_00407BD8"
    %endif
    times 3 - ($ - %%insn_00407bd8) db 0
    %%insn_00407bdb:
    mov [ebp-0x4],eax ; 00407BDB 8945FC
    %if ($ - %%insn_00407bdb) > 3
        %error "LONG_00407BDB"
    %endif
    times 3 - ($ - %%insn_00407bdb) db 0
    %%insn_00407bde:
    mov eax,[ebp+0xc] ; 00407BDE 8B450C
    %if ($ - %%insn_00407bde) > 3
        %error "LONG_00407BDE"
    %endif
    times 3 - ($ - %%insn_00407bde) db 0
    %%insn_00407be1:
    push eax ; 00407BE1 50
    %if ($ - %%insn_00407be1) > 1
        %error "LONG_00407BE1"
    %endif
    times 1 - ($ - %%insn_00407be1) db 0
    %%insn_00407be2:
    mov ecx,[ebp-0x8] ; 00407BE2 8B4DF8
    %if ($ - %%insn_00407be2) > 3
        %error "LONG_00407BE2"
    %endif
    times 3 - ($ - %%insn_00407be2) db 0
    %%insn_00407be5:
    push ecx ; 00407BE5 51
    %if ($ - %%insn_00407be5) > 1
        %error "LONG_00407BE5"
    %endif
    times 1 - ($ - %%insn_00407be5) db 0
    %%insn_00407be6:
    mov edx,[ebp+0x8] ; 00407BE6 8B5508
    %if ($ - %%insn_00407be6) > 3
        %error "LONG_00407BE6"
    %endif
    times 3 - ($ - %%insn_00407be6) db 0
    %%insn_00407be9:
    push edx ; 00407BE9 52
    %if ($ - %%insn_00407be9) > 1
        %error "LONG_00407BE9"
    %endif
    times 1 - ($ - %%insn_00407be9) db 0
    %%insn_00407bea:
    mov eax,[ebp-0xc] ; 00407BEA 8B45F4
    %if ($ - %%insn_00407bea) > 3
        %error "LONG_00407BEA"
    %endif
    times 3 - ($ - %%insn_00407bea) db 0
    %%insn_00407bed:
    push eax ; 00407BED 50
    %if ($ - %%insn_00407bed) > 1
        %error "LONG_00407BED"
    %endif
    times 1 - ($ - %%insn_00407bed) db 0
    %%insn_00407bee:
    push dword 0x41b9b8 ; 00407BEE 68B8B94100
    %if ($ - %%insn_00407bee) > 5
        %error "LONG_00407BEE"
    %endif
    times 5 - ($ - %%insn_00407bee) db 0
    %%insn_00407bf3:
    mov ecx,[ebp-0x4] ; 00407BF3 8B4DFC
    %if ($ - %%insn_00407bf3) > 3
        %error "LONG_00407BF3"
    %endif
    times 3 - ($ - %%insn_00407bf3) db 0
    %%insn_00407bf6:
    push ecx ; 00407BF6 51
    %if ($ - %%insn_00407bf6) > 1
        %error "LONG_00407BF6"
    %endif
    times 1 - ($ - %%insn_00407bf6) db 0
    %%insn_00407bf7:
    call 0x40cd50 ; 00407BF7 E854510000
    %if ($ - %%insn_00407bf7) > 5
        %error "LONG_00407BF7"
    %endif
    times 5 - ($ - %%insn_00407bf7) db 0
    %%insn_00407bfc:
    add esp,0x18 ; 00407BFC 83C418
    %if ($ - %%insn_00407bfc) > 3
        %error "LONG_00407BFC"
    %endif
    times 3 - ($ - %%insn_00407bfc) db 0
    %%insn_00407bff:
    push dword 0x0 ; 00407BFF 6A00
    %if ($ - %%insn_00407bff) > 2
        %error "LONG_00407BFF"
    %endif
    times 2 - ($ - %%insn_00407bff) db 0
    %%insn_00407c01:
    push dword 0x41ba10 ; 00407C01 6810BA4100
    %if ($ - %%insn_00407c01) > 5
        %error "LONG_00407C01"
    %endif
    times 5 - ($ - %%insn_00407c01) db 0
    %%insn_00407c06:
    mov edx,[ebp-0x4] ; 00407C06 8B55FC
    %if ($ - %%insn_00407c06) > 3
        %error "LONG_00407C06"
    %endif
    times 3 - ($ - %%insn_00407c06) db 0
    %%insn_00407c09:
    push edx ; 00407C09 52
    %if ($ - %%insn_00407c09) > 1
        %error "LONG_00407C09"
    %endif
    times 1 - ($ - %%insn_00407c09) db 0
    %%insn_00407c0a:
    mov eax,[0x41f5bc] ; 00407C0A A1BCF54100
    %if ($ - %%insn_00407c0a) > 5
        %error "LONG_00407C0A"
    %endif
    times 5 - ($ - %%insn_00407c0a) db 0
    %%insn_00407c0f:
    push eax ; 00407C0F 50
    %if ($ - %%insn_00407c0f) > 1
        %error "LONG_00407C0F"
    %endif
    times 1 - ($ - %%insn_00407c0f) db 0
    %%insn_00407c10:
    call dword near [0x4244f8] ; 00407C10 FF15F8444200
    %if ($ - %%insn_00407c10) > 6
        %error "LONG_00407C10"
    %endif
    times 6 - ($ - %%insn_00407c10) db 0
    %%insn_00407c16:
    push dword 0xfffffd66 ; 00407C16 6866FDFFFF
    %if ($ - %%insn_00407c16) > 5
        %error "LONG_00407C16"
    %endif
    times 5 - ($ - %%insn_00407c16) db 0
    %%insn_00407c1b:
    call 0x40d5f0 ; 00407C1B E8D0590000
    %if ($ - %%insn_00407c1b) > 5
        %error "LONG_00407C1B"
    %endif
    times 5 - ($ - %%insn_00407c1b) db 0
    %%insn_00407c20:
    add esp,0x4 ; 00407C20 83C404
    %if ($ - %%insn_00407c20) > 3
        %error "LONG_00407C20"
    %endif
    times 3 - ($ - %%insn_00407c20) db 0
    db 0x8B, 0xE5 ; 00407C23 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407c25:
    pop ebp ; 00407C25 5D
    %if ($ - %%insn_00407c25) > 1
        %error "LONG_00407C25"
    %endif
    times 1 - ($ - %%insn_00407c25) db 0
    %%insn_00407c26:
    ret word 0x8 ; 00407C26 C20800
    %if ($ - %%insn_00407c26) > 3
        %error "LONG_00407C26"
    %endif
    times 3 - ($ - %%insn_00407c26) db 0
    %if ($ - %%fragment_start) != 103
        %error "function fragment size drift: 00407BC2"
    %endif
%endmacro
