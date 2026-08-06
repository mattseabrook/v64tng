; PE virtual entry 00406D8E
; Ghidra working symbol: FUN_00406d8e
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406d8e_part_00 0
    %%fragment_start:
func_00406d8e:
    %%insn_00406d8e:
    push ebp ; 00406D8E 55
    %if ($ - %%insn_00406d8e) > 1
        %error "LONG_00406D8E"
    %endif
    times 1 - ($ - %%insn_00406d8e) db 0
    db 0x8B, 0xEC ; 00406D8F 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406d91:
    push ecx ; 00406D91 51
    %if ($ - %%insn_00406d91) > 1
        %error "LONG_00406D91"
    %endif
    times 1 - ($ - %%insn_00406d91) db 0
    %%insn_00406d92:
    cmp dword [0x41f4e8],0x0 ; 00406D92 833DE8F4410000
    %if ($ - %%insn_00406d92) > 7
        %error "LONG_00406D92"
    %endif
    times 7 - ($ - %%insn_00406d92) db 0
    %%insn_00406d99:
    jnz short 0x406da0 ; 00406D99 7505
    %if ($ - %%insn_00406d99) > 2
        %error "LONG_00406D99"
    %endif
    times 2 - ($ - %%insn_00406d99) db 0
    %%insn_00406d9b:
    jmp 0x406e24 ; 00406D9B E984000000
    %if ($ - %%insn_00406d9b) > 5
        %error "LONG_00406D9B"
    %endif
    times 5 - ($ - %%insn_00406d9b) db 0
    %%insn_00406da0:
    mov dword [ebp-0x4],0x0 ; 00406DA0 C745FC00000000
    %if ($ - %%insn_00406da0) > 7
        %error "LONG_00406DA0"
    %endif
    times 7 - ($ - %%insn_00406da0) db 0
    %%insn_00406da7:
    jmp short 0x406db2 ; 00406DA7 EB09
    %if ($ - %%insn_00406da7) > 2
        %error "LONG_00406DA7"
    %endif
    times 2 - ($ - %%insn_00406da7) db 0
    %%insn_00406da9:
    mov eax,[ebp-0x4] ; 00406DA9 8B45FC
    %if ($ - %%insn_00406da9) > 3
        %error "LONG_00406DA9"
    %endif
    times 3 - ($ - %%insn_00406da9) db 0
    %%insn_00406dac:
    add eax,0x1 ; 00406DAC 83C001
    %if ($ - %%insn_00406dac) > 3
        %error "LONG_00406DAC"
    %endif
    times 3 - ($ - %%insn_00406dac) db 0
    %%insn_00406daf:
    mov [ebp-0x4],eax ; 00406DAF 8945FC
    %if ($ - %%insn_00406daf) > 3
        %error "LONG_00406DAF"
    %endif
    times 3 - ($ - %%insn_00406daf) db 0
    %%insn_00406db2:
    mov ecx,[ebp-0x4] ; 00406DB2 8B4DFC
    %if ($ - %%insn_00406db2) > 3
        %error "LONG_00406DB2"
    %endif
    times 3 - ($ - %%insn_00406db2) db 0
    %%insn_00406db5:
    cmp ecx,[ebp+0xc] ; 00406DB5 3B4D0C
    %if ($ - %%insn_00406db5) > 3
        %error "LONG_00406DB5"
    %endif
    times 3 - ($ - %%insn_00406db5) db 0
    %%insn_00406db8:
    jnl short 0x406df7 ; 00406DB8 7D3D
    %if ($ - %%insn_00406db8) > 2
        %error "LONG_00406DB8"
    %endif
    times 2 - ($ - %%insn_00406db8) db 0
    %%insn_00406dba:
    mov edx,[0x42143c] ; 00406DBA 8B153C144200
    %if ($ - %%insn_00406dba) > 6
        %error "LONG_00406DBA"
    %endif
    times 6 - ($ - %%insn_00406dba) db 0
    %%insn_00406dc0:
    add edx,[0x41f50c] ; 00406DC0 03150CF54100
    %if ($ - %%insn_00406dc0) > 6
        %error "LONG_00406DC0"
    %endif
    times 6 - ($ - %%insn_00406dc0) db 0
    %%insn_00406dc6:
    mov eax,[ebp+0x8] ; 00406DC6 8B4508
    %if ($ - %%insn_00406dc6) > 3
        %error "LONG_00406DC6"
    %endif
    times 3 - ($ - %%insn_00406dc6) db 0
    %%insn_00406dc9:
    add eax,[ebp-0x4] ; 00406DC9 0345FC
    %if ($ - %%insn_00406dc9) > 3
        %error "LONG_00406DC9"
    %endif
    times 3 - ($ - %%insn_00406dc9) db 0
    %%insn_00406dcc:
    mov cl,[eax] ; 00406DCC 8A08
    %if ($ - %%insn_00406dcc) > 2
        %error "LONG_00406DCC"
    %endif
    times 2 - ($ - %%insn_00406dcc) db 0
    %%insn_00406dce:
    mov [edx],cl ; 00406DCE 880A
    %if ($ - %%insn_00406dce) > 2
        %error "LONG_00406DCE"
    %endif
    times 2 - ($ - %%insn_00406dce) db 0
    %%insn_00406dd0:
    mov edx,[0x41f50c] ; 00406DD0 8B150CF54100
    %if ($ - %%insn_00406dd0) > 6
        %error "LONG_00406DD0"
    %endif
    times 6 - ($ - %%insn_00406dd0) db 0
    %%insn_00406dd6:
    add edx,0x1 ; 00406DD6 83C201
    %if ($ - %%insn_00406dd6) > 3
        %error "LONG_00406DD6"
    %endif
    times 3 - ($ - %%insn_00406dd6) db 0
    %%insn_00406dd9:
    mov [0x41f50c],edx ; 00406DD9 89150CF54100
    %if ($ - %%insn_00406dd9) > 6
        %error "LONG_00406DD9"
    %endif
    times 6 - ($ - %%insn_00406dd9) db 0
    %%insn_00406ddf:
    cmp dword [0x41f50c],0x10000 ; 00406DDF 813D0CF5410000000100
    %if ($ - %%insn_00406ddf) > 10
        %error "LONG_00406DDF"
    %endif
    times 10 - ($ - %%insn_00406ddf) db 0
    %%insn_00406de9:
    jnz short 0x406df5 ; 00406DE9 750A
    %if ($ - %%insn_00406de9) > 2
        %error "LONG_00406DE9"
    %endif
    times 2 - ($ - %%insn_00406de9) db 0
    %%insn_00406deb:
    mov dword [0x41f50c],0x0 ; 00406DEB C7050CF5410000000000
    %if ($ - %%insn_00406deb) > 10
        %error "LONG_00406DEB"
    %endif
    times 10 - ($ - %%insn_00406deb) db 0
    %%insn_00406df5:
    jmp short 0x406da9 ; 00406DF5 EBB2
    %if ($ - %%insn_00406df5) > 2
        %error "LONG_00406DF5"
    %endif
    times 2 - ($ - %%insn_00406df5) db 0
    %%insn_00406df7:
    cmp dword [0x41f510],0x0 ; 00406DF7 833D10F5410000
    %if ($ - %%insn_00406df7) > 7
        %error "LONG_00406DF7"
    %endif
    times 7 - ($ - %%insn_00406df7) db 0
    %%insn_00406dfe:
    jnz short 0x406e17 ; 00406DFE 7517
    %if ($ - %%insn_00406dfe) > 2
        %error "LONG_00406DFE"
    %endif
    times 2 - ($ - %%insn_00406dfe) db 0
    %%insn_00406e00:
    push dword 0xfffffffffffffffc ; 00406E00 6AFC
    %if ($ - %%insn_00406e00) > 2
        %error "LONG_00406E00"
    %endif
    times 2 - ($ - %%insn_00406e00) db 0
    %%insn_00406e02:
    push dword 0x41f524 ; 00406E02 6824F54100
    %if ($ - %%insn_00406e02) > 5
        %error "LONG_00406E02"
    %endif
    times 5 - ($ - %%insn_00406e02) db 0
    %%insn_00406e07:
    call dword near [0x4243b0] ; 00406E07 FF15B0434200
    %if ($ - %%insn_00406e07) > 6
        %error "LONG_00406E07"
    %endif
    times 6 - ($ - %%insn_00406e07) db 0
    %%insn_00406e0d:
    mov dword [0x41f510],0x1 ; 00406E0D C70510F5410001000000
    %if ($ - %%insn_00406e0d) > 10
        %error "LONG_00406E0D"
    %endif
    times 10 - ($ - %%insn_00406e0d) db 0
    %%insn_00406e17:
    mov eax,[0x41f51c] ; 00406E17 A11CF54100
    %if ($ - %%insn_00406e17) > 5
        %error "LONG_00406E17"
    %endif
    times 5 - ($ - %%insn_00406e17) db 0
    %%insn_00406e1c:
    add eax,[ebp+0xc] ; 00406E1C 03450C
    %if ($ - %%insn_00406e1c) > 3
        %error "LONG_00406E1C"
    %endif
    times 3 - ($ - %%insn_00406e1c) db 0
    %%insn_00406e1f:
    mov [0x41f51c],eax ; 00406E1F A31CF54100
    %if ($ - %%insn_00406e1f) > 5
        %error "LONG_00406E1F"
    %endif
    times 5 - ($ - %%insn_00406e1f) db 0
    db 0x8B, 0xE5 ; 00406E24 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00406e26:
    pop ebp ; 00406E26 5D
    %if ($ - %%insn_00406e26) > 1
        %error "LONG_00406E26"
    %endif
    times 1 - ($ - %%insn_00406e26) db 0
    %%insn_00406e27:
    ret ; 00406E27 C3
    %if ($ - %%insn_00406e27) > 1
        %error "LONG_00406E27"
    %endif
    times 1 - ($ - %%insn_00406e27) db 0
    %if ($ - %%fragment_start) != 154
        %error "function fragment size drift: 00406D8E"
    %endif
%endmacro
