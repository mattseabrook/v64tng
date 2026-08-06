; Linear entry 07FB6 (1702:0f96)
; Ghidra working symbol: FUN_1702_0f96
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07fb6_part_00 0
    %%fragment_start:
func_07fb6:
    %%insn_07fb6:
    push bp ; 07FB6 55
    %if ($ - %%insn_07fb6) > 1
        %error "LONG_07FB6"
    %endif
    times 1 - ($ - %%insn_07fb6) db 0
    db 0x8B, 0xEC ; 07FB7 8BEC | mov bp,sp | encoding preserved
    %%insn_07fb9:
    push ds ; 07FB9 1E
    %if ($ - %%insn_07fb9) > 1
        %error "LONG_07FB9"
    %endif
    times 1 - ($ - %%insn_07fb9) db 0
    %%insn_07fba:
    push si ; 07FBA 56
    %if ($ - %%insn_07fba) > 1
        %error "LONG_07FBA"
    %endif
    times 1 - ($ - %%insn_07fba) db 0
    %%insn_07fbb:
    push di ; 07FBB 57
    %if ($ - %%insn_07fbb) > 1
        %error "LONG_07FBB"
    %endif
    times 1 - ($ - %%insn_07fbb) db 0
    %%insn_07fbc:
    test word [cs:0xe2e],0x2 ; 07FBC 2EF7062E0E0200
    %if ($ - %%insn_07fbc) > 7
        %error "LONG_07FBC"
    %endif
    times 7 - ($ - %%insn_07fbc) db 0
    %%insn_07fc3:
    jnz short 0x7fc8 ; 07FC3 7503
    %if ($ - %%insn_07fc3) > 2
        %error "LONG_07FC3"
    %endif
    times 2 - ($ - %%insn_07fc3) db 0
    %%insn_07fc5:
    jmp 0x8064 ; 07FC5 E99C00
    %if ($ - %%insn_07fc5) > 3
        %error "LONG_07FC5"
    %endif
    times 3 - ($ - %%insn_07fc5) db 0
    %%insn_07fc8:
    mov word [cs:0xe42],0xe7a ; 07FC8 2EC706420E7A0E
    %if ($ - %%insn_07fc8) > 7
        %error "LONG_07FC8"
    %endif
    times 7 - ($ - %%insn_07fc8) db 0
    %%insn_07fcf:
    mov word [cs:0xe44],cs ; 07FCF 2E8C0E440E
    %if ($ - %%insn_07fcf) > 5
        %error "LONG_07FCF"
    %endif
    times 5 - ($ - %%insn_07fcf) db 0
    %%insn_07fd4:
    mov ax,[bp+0x6] ; 07FD4 8B4606
    %if ($ - %%insn_07fd4) > 3
        %error "LONG_07FD4"
    %endif
    times 3 - ($ - %%insn_07fd4) db 0
    %%insn_07fd7:
    mov [cs:0xe46],ax ; 07FD7 2EA3460E
    %if ($ - %%insn_07fd7) > 4
        %error "LONG_07FD7"
    %endif
    times 4 - ($ - %%insn_07fd7) db 0
    %%insn_07fdb:
    lds si,word [bp+0x8] ; 07FDB C57608
    %if ($ - %%insn_07fdb) > 3
        %error "LONG_07FDB"
    %endif
    times 3 - ($ - %%insn_07fdb) db 0
    %%insn_07fde:
    mov [cs:0xe3c],si ; 07FDE 2E89363C0E
    %if ($ - %%insn_07fde) > 5
        %error "LONG_07FDE"
    %endif
    times 5 - ($ - %%insn_07fde) db 0
    %%insn_07fe3:
    mov word [cs:0xe3e],ds ; 07FE3 2E8C1E3E0E
    %if ($ - %%insn_07fe3) > 5
        %error "LONG_07FE3"
    %endif
    times 5 - ($ - %%insn_07fe3) db 0
    %%insn_07fe8:
    cmp word [bp+0xe],0x0 ; 07FE8 837E0E00
    %if ($ - %%insn_07fe8) > 4
        %error "LONG_07FE8"
    %endif
    times 4 - ($ - %%insn_07fe8) db 0
    %%insn_07fec:
    ja short 0x7ff5 ; 07FEC 7707
    %if ($ - %%insn_07fec) > 2
        %error "LONG_07FEC"
    %endif
    times 2 - ($ - %%insn_07fec) db 0
    %%insn_07fee:
    cmp word [bp+0xc],0x8000 ; 07FEE 817E0C0080
    %if ($ - %%insn_07fee) > 5
        %error "LONG_07FEE"
    %endif
    times 5 - ($ - %%insn_07fee) db 0
    %%insn_07ff3:
    jna short 0x8050 ; 07FF3 765B
    %if ($ - %%insn_07ff3) > 2
        %error "LONG_07FF3"
    %endif
    times 2 - ($ - %%insn_07ff3) db 0
    %%insn_07ff5:
    mov word [cs:0xe40],0x8000 ; 07FF5 2EC706400E0080
    %if ($ - %%insn_07ff5) > 7
        %error "LONG_07FF5"
    %endif
    times 7 - ($ - %%insn_07ff5) db 0
    %%insn_07ffc:
    push ds ; 07FFC 1E
    %if ($ - %%insn_07ffc) > 1
        %error "LONG_07FFC"
    %endif
    times 1 - ($ - %%insn_07ffc) db 0
    %%insn_07ffd:
    push si ; 07FFD 56
    %if ($ - %%insn_07ffd) > 1
        %error "LONG_07FFD"
    %endif
    times 1 - ($ - %%insn_07ffd) db 0
    %%insn_07ffe:
    push cs ; 07FFE 0E
    %if ($ - %%insn_07ffe) > 1
        %error "LONG_07FFE"
    %endif
    times 1 - ($ - %%insn_07ffe) db 0
    %%insn_07fff:
    pop ds ; 07FFF 1F
    %if ($ - %%insn_07fff) > 1
        %error "LONG_07FFF"
    %endif
    times 1 - ($ - %%insn_07fff) db 0
    %%insn_08000:
    mov si,0xe3c ; 08000 BE3C0E
    %if ($ - %%insn_08000) > 3
        %error "LONG_08000"
    %endif
    times 3 - ($ - %%insn_08000) db 0
    %%insn_08003:
    mov ax,0x68a ; 08003 B88A06
    %if ($ - %%insn_08003) > 3
        %error "LONG_08003"
    %endif
    times 3 - ($ - %%insn_08003) db 0
    %%insn_08006:
    int byte 0x66 ; 08006 CD66
    %if ($ - %%insn_08006) > 2
        %error "LONG_08006"
    %endif
    times 2 - ($ - %%insn_08006) db 0
    %%insn_08008:
    pop si ; 08008 5E
    %if ($ - %%insn_08008) > 1
        %error "LONG_08008"
    %endif
    times 1 - ($ - %%insn_08008) db 0
    %%insn_08009:
    pop ds ; 08009 1F
    %if ($ - %%insn_08009) > 1
        %error "LONG_08009"
    %endif
    times 1 - ($ - %%insn_08009) db 0
    %%insn_0800a:
    push bx ; 0800A 53
    %if ($ - %%insn_0800a) > 1
        %error "LONG_0800A"
    %endif
    times 1 - ($ - %%insn_0800a) db 0
    %%insn_0800b:
    push cx ; 0800B 51
    %if ($ - %%insn_0800b) > 1
        %error "LONG_0800B"
    %endif
    times 1 - ($ - %%insn_0800b) db 0
    %%insn_0800c:
    mov bx,ds ; 0800C 8CDB
    %if ($ - %%insn_0800c) > 2
        %error "LONG_0800C"
    %endif
    times 2 - ($ - %%insn_0800c) db 0
    db 0x33, 0xC9 ; 0800E 33C9 | xor cx,cx | encoding preserved
    %%insn_08010:
    shl bx,1 ; 08010 D1E3
    %if ($ - %%insn_08010) > 2
        %error "LONG_08010"
    %endif
    times 2 - ($ - %%insn_08010) db 0
    %%insn_08012:
    rcl cx,1 ; 08012 D1D1
    %if ($ - %%insn_08012) > 2
        %error "LONG_08012"
    %endif
    times 2 - ($ - %%insn_08012) db 0
    %%insn_08014:
    shl bx,1 ; 08014 D1E3
    %if ($ - %%insn_08014) > 2
        %error "LONG_08014"
    %endif
    times 2 - ($ - %%insn_08014) db 0
    %%insn_08016:
    rcl cx,1 ; 08016 D1D1
    %if ($ - %%insn_08016) > 2
        %error "LONG_08016"
    %endif
    times 2 - ($ - %%insn_08016) db 0
    %%insn_08018:
    shl bx,1 ; 08018 D1E3
    %if ($ - %%insn_08018) > 2
        %error "LONG_08018"
    %endif
    times 2 - ($ - %%insn_08018) db 0
    %%insn_0801a:
    rcl cx,1 ; 0801A D1D1
    %if ($ - %%insn_0801a) > 2
        %error "LONG_0801A"
    %endif
    times 2 - ($ - %%insn_0801a) db 0
    %%insn_0801c:
    shl bx,1 ; 0801C D1E3
    %if ($ - %%insn_0801c) > 2
        %error "LONG_0801C"
    %endif
    times 2 - ($ - %%insn_0801c) db 0
    %%insn_0801e:
    rcl cx,1 ; 0801E D1D1
    %if ($ - %%insn_0801e) > 2
        %error "LONG_0801E"
    %endif
    times 2 - ($ - %%insn_0801e) db 0
    db 0x03, 0xDE ; 08020 03DE | add bx,si | encoding preserved
    %%insn_08022:
    adc cx,0x0 ; 08022 83D100
    %if ($ - %%insn_08022) > 3
        %error "LONG_08022"
    %endif
    times 3 - ($ - %%insn_08022) db 0
    %%insn_08025:
    add bx,0x8000 ; 08025 81C30080
    %if ($ - %%insn_08025) > 4
        %error "LONG_08025"
    %endif
    times 4 - ($ - %%insn_08025) db 0
    %%insn_08029:
    adc cx,0x0 ; 08029 83D100
    %if ($ - %%insn_08029) > 3
        %error "LONG_08029"
    %endif
    times 3 - ($ - %%insn_08029) db 0
    db 0x8B, 0xF3 ; 0802C 8BF3 | mov si,bx | encoding preserved
    %%insn_0802e:
    and si,0xf ; 0802E 83E60F
    %if ($ - %%insn_0802e) > 3
        %error "LONG_0802E"
    %endif
    times 3 - ($ - %%insn_0802e) db 0
    %%insn_08031:
    shr cx,1 ; 08031 D1E9
    %if ($ - %%insn_08031) > 2
        %error "LONG_08031"
    %endif
    times 2 - ($ - %%insn_08031) db 0
    %%insn_08033:
    rcr bx,1 ; 08033 D1DB
    %if ($ - %%insn_08033) > 2
        %error "LONG_08033"
    %endif
    times 2 - ($ - %%insn_08033) db 0
    %%insn_08035:
    shr cx,1 ; 08035 D1E9
    %if ($ - %%insn_08035) > 2
        %error "LONG_08035"
    %endif
    times 2 - ($ - %%insn_08035) db 0
    %%insn_08037:
    rcr bx,1 ; 08037 D1DB
    %if ($ - %%insn_08037) > 2
        %error "LONG_08037"
    %endif
    times 2 - ($ - %%insn_08037) db 0
    %%insn_08039:
    shr cx,1 ; 08039 D1E9
    %if ($ - %%insn_08039) > 2
        %error "LONG_08039"
    %endif
    times 2 - ($ - %%insn_08039) db 0
    %%insn_0803b:
    rcr bx,1 ; 0803B D1DB
    %if ($ - %%insn_0803b) > 2
        %error "LONG_0803B"
    %endif
    times 2 - ($ - %%insn_0803b) db 0
    %%insn_0803d:
    shr cx,1 ; 0803D D1E9
    %if ($ - %%insn_0803d) > 2
        %error "LONG_0803D"
    %endif
    times 2 - ($ - %%insn_0803d) db 0
    %%insn_0803f:
    rcr bx,1 ; 0803F D1DB
    %if ($ - %%insn_0803f) > 2
        %error "LONG_0803F"
    %endif
    times 2 - ($ - %%insn_0803f) db 0
    %%insn_08041:
    mov ds,bx ; 08041 8EDB
    %if ($ - %%insn_08041) > 2
        %error "LONG_08041"
    %endif
    times 2 - ($ - %%insn_08041) db 0
    %%insn_08043:
    pop cx ; 08043 59
    %if ($ - %%insn_08043) > 1
        %error "LONG_08043"
    %endif
    times 1 - ($ - %%insn_08043) db 0
    %%insn_08044:
    pop bx ; 08044 5B
    %if ($ - %%insn_08044) > 1
        %error "LONG_08044"
    %endif
    times 1 - ($ - %%insn_08044) db 0
    %%insn_08045:
    sub word [bp+0xc],0x8000 ; 08045 816E0C0080
    %if ($ - %%insn_08045) > 5
        %error "LONG_08045"
    %endif
    times 5 - ($ - %%insn_08045) db 0
    %%insn_0804a:
    sbb word [bp+0xe],0x0 ; 0804A 835E0E00
    %if ($ - %%insn_0804a) > 4
        %error "LONG_0804A"
    %endif
    times 4 - ($ - %%insn_0804a) db 0
    %%insn_0804e:
    jmp short 0x7fde ; 0804E EB8E
    %if ($ - %%insn_0804e) > 2
        %error "LONG_0804E"
    %endif
    times 2 - ($ - %%insn_0804e) db 0
    %%insn_08050:
    mov cx,[bp+0xc] ; 08050 8B4E0C
    %if ($ - %%insn_08050) > 3
        %error "LONG_08050"
    %endif
    times 3 - ($ - %%insn_08050) db 0
    %%insn_08053:
    jcxz short 0x8064 ; 08053 E30F
    %if ($ - %%insn_08053) > 2
        %error "LONG_08053"
    %endif
    times 2 - ($ - %%insn_08053) db 0
    %%insn_08055:
    mov [cs:0xe40],cx ; 08055 2E890E400E
    %if ($ - %%insn_08055) > 5
        %error "LONG_08055"
    %endif
    times 5 - ($ - %%insn_08055) db 0
    %%insn_0805a:
    push cs ; 0805A 0E
    %if ($ - %%insn_0805a) > 1
        %error "LONG_0805A"
    %endif
    times 1 - ($ - %%insn_0805a) db 0
    %%insn_0805b:
    pop ds ; 0805B 1F
    %if ($ - %%insn_0805b) > 1
        %error "LONG_0805B"
    %endif
    times 1 - ($ - %%insn_0805b) db 0
    %%insn_0805c:
    mov si,0xe3c ; 0805C BE3C0E
    %if ($ - %%insn_0805c) > 3
        %error "LONG_0805C"
    %endif
    times 3 - ($ - %%insn_0805c) db 0
    %%insn_0805f:
    mov ax,0x68a ; 0805F B88A06
    %if ($ - %%insn_0805f) > 3
        %error "LONG_0805F"
    %endif
    times 3 - ($ - %%insn_0805f) db 0
    %%insn_08062:
    int byte 0x66 ; 08062 CD66
    %if ($ - %%insn_08062) > 2
        %error "LONG_08062"
    %endif
    times 2 - ($ - %%insn_08062) db 0
    %%insn_08064:
    pop di ; 08064 5F
    %if ($ - %%insn_08064) > 1
        %error "LONG_08064"
    %endif
    times 1 - ($ - %%insn_08064) db 0
    %%insn_08065:
    pop si ; 08065 5E
    %if ($ - %%insn_08065) > 1
        %error "LONG_08065"
    %endif
    times 1 - ($ - %%insn_08065) db 0
    %%insn_08066:
    pop ds ; 08066 1F
    %if ($ - %%insn_08066) > 1
        %error "LONG_08066"
    %endif
    times 1 - ($ - %%insn_08066) db 0
    %%insn_08067:
    pop bp ; 08067 5D
    %if ($ - %%insn_08067) > 1
        %error "LONG_08067"
    %endif
    times 1 - ($ - %%insn_08067) db 0
    %%insn_08068:
    retf ; 08068 CB
    %if ($ - %%insn_08068) > 1
        %error "LONG_08068"
    %endif
    times 1 - ($ - %%insn_08068) db 0
    %if ($ - %%fragment_start) != 179
        %error "SIZE_07FB6"
    %endif
%endmacro
