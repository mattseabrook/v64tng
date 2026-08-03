; Linear entry 05FE4 (1000:5fe4)
; Ghidra working symbol: FUN_1000_5fe4
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05fe4_part_00 0
    %%fragment_start:
func_05fe4:
    %%insn_05fe4:
    push bp ; 05FE4 55
    %if ($ - %%insn_05fe4) > 1
        %error "LONG_05FE4"
    %endif
    times 1 - ($ - %%insn_05fe4) db 0
    db 0x8B, 0xEC ; 05FE5 8BEC | mov bp,sp | encoding preserved
    %%insn_05fe7:
    push ax ; 05FE7 50
    %if ($ - %%insn_05fe7) > 1
        %error "LONG_05FE7"
    %endif
    times 1 - ($ - %%insn_05fe7) db 0
    %%insn_05fe8:
    push si ; 05FE8 56
    %if ($ - %%insn_05fe8) > 1
        %error "LONG_05FE8"
    %endif
    times 1 - ($ - %%insn_05fe8) db 0
    %%insn_05fe9:
    cmp byte [0xe4bb],0x1 ; 05FE9 803EBBE401
    %if ($ - %%insn_05fe9) > 5
        %error "LONG_05FE9"
    %endif
    times 5 - ($ - %%insn_05fe9) db 0
    %%insn_05fee:
    jnz short 0x6052 ; 05FEE 7562
    %if ($ - %%insn_05fee) > 2
        %error "LONG_05FEE"
    %endif
    times 2 - ($ - %%insn_05fee) db 0
    %%insn_05ff0:
    mov al,[0xe4b9] ; 05FF0 A0B9E4
    %if ($ - %%insn_05ff0) > 3
        %error "LONG_05FF0"
    %endif
    times 3 - ($ - %%insn_05ff0) db 0
    %%insn_05ff3:
    cbw ; 05FF3 98
    %if ($ - %%insn_05ff3) > 1
        %error "LONG_05FF3"
    %endif
    times 1 - ($ - %%insn_05ff3) db 0
    db 0x8B, 0xD8 ; 05FF4 8BD8 | mov bx,ax | encoding preserved
    %%insn_05ff6:
    mov al,[bp-0x2] ; 05FF6 8A46FE
    %if ($ - %%insn_05ff6) > 3
        %error "LONG_05FF6"
    %endif
    times 3 - ($ - %%insn_05ff6) db 0
    %%insn_05ff9:
    cmp [bx-0x14a3],al ; 05FF9 38875DEB
    %if ($ - %%insn_05ff9) > 4
        %error "LONG_05FF9"
    %endif
    times 4 - ($ - %%insn_05ff9) db 0
    %%insn_05ffd:
    jnz short 0x603a ; 05FFD 753B
    %if ($ - %%insn_05ffd) > 2
        %error "LONG_05FFD"
    %endif
    times 2 - ($ - %%insn_05ffd) db 0
    %%insn_05fff:
    mov al,[0xe4bc] ; 05FFF A0BCE4
    %if ($ - %%insn_05fff) > 3
        %error "LONG_05FFF"
    %endif
    times 3 - ($ - %%insn_05fff) db 0
    %%insn_06002:
    cbw ; 06002 98
    %if ($ - %%insn_06002) > 1
        %error "LONG_06002"
    %endif
    times 1 - ($ - %%insn_06002) db 0
    db 0x8B, 0xF0 ; 06003 8BF0 | mov si,ax | encoding preserved
    %%insn_06005:
    mov al,[0xe4b9] ; 06005 A0B9E4
    %if ($ - %%insn_06005) > 3
        %error "LONG_06005"
    %endif
    times 3 - ($ - %%insn_06005) db 0
    %%insn_06008:
    cbw ; 06008 98
    %if ($ - %%insn_06008) > 1
        %error "LONG_06008"
    %endif
    times 1 - ($ - %%insn_06008) db 0
    db 0x8B, 0xD8 ; 06009 8BD8 | mov bx,ax | encoding preserved
    %%insn_0600b:
    shl bx,1 ; 0600B D1E3
    %if ($ - %%insn_0600b) > 2
        %error "LONG_0600B"
    %endif
    times 2 - ($ - %%insn_0600b) db 0
    %%insn_0600d:
    add si,[bx-0x17c9] ; 0600D 03B737E8
    %if ($ - %%insn_0600d) > 4
        %error "LONG_0600D"
    %endif
    times 4 - ($ - %%insn_0600d) db 0
    %%insn_06011:
    cmp byte [0xe4bc],0x8 ; 06011 803EBCE408
    %if ($ - %%insn_06011) > 5
        %error "LONG_06011"
    %endif
    times 5 - ($ - %%insn_06011) db 0
    %%insn_06016:
    jnl short 0x6035 ; 06016 7D1D
    %if ($ - %%insn_06016) > 2
        %error "LONG_06016"
    %endif
    times 2 - ($ - %%insn_06016) db 0
    %%insn_06018:
    lodsb ; 06018 AC
    %if ($ - %%insn_06018) > 1
        %error "LONG_06018"
    %endif
    times 1 - ($ - %%insn_06018) db 0
    %%insn_06019:
    mov [0xe4ba],al ; 06019 A2BAE4
    %if ($ - %%insn_06019) > 3
        %error "LONG_06019"
    %endif
    times 3 - ($ - %%insn_06019) db 0
    db 0x0A, 0xC0 ; 0601C 0AC0 | or al,al | encoding preserved
    %%insn_0601e:
    jl short 0x6035 ; 0601E 7C15
    %if ($ - %%insn_0601e) > 2
        %error "LONG_0601E"
    %endif
    times 2 - ($ - %%insn_0601e) db 0
    %%insn_06020:
    cbw ; 06020 98
    %if ($ - %%insn_06020) > 1
        %error "LONG_06020"
    %endif
    times 1 - ($ - %%insn_06020) db 0
    db 0x8B, 0xD8 ; 06021 8BD8 | mov bx,ax | encoding preserved
    %%insn_06023:
    cmp byte [bx-0x14a3],0x0 ; 06023 80BF5DEB00
    %if ($ - %%insn_06023) > 5
        %error "LONG_06023"
    %endif
    times 5 - ($ - %%insn_06023) db 0
    %%insn_06028:
    jz short 0x605c ; 06028 7432
    %if ($ - %%insn_06028) > 2
        %error "LONG_06028"
    %endif
    times 2 - ($ - %%insn_06028) db 0
    %%insn_0602a:
    inc byte [0xe4bc] ; 0602A FE06BCE4
    %if ($ - %%insn_0602a) > 4
        %error "LONG_0602A"
    %endif
    times 4 - ($ - %%insn_0602a) db 0
    %%insn_0602e:
    cmp byte [0xe4bc],0x8 ; 0602E 803EBCE408
    %if ($ - %%insn_0602e) > 5
        %error "LONG_0602E"
    %endif
    times 5 - ($ - %%insn_0602e) db 0
    %%insn_06033:
    jl short 0x6018 ; 06033 7CE3
    %if ($ - %%insn_06033) > 2
        %error "LONG_06033"
    %endif
    times 2 - ($ - %%insn_06033) db 0
    %%insn_06035:
    mov byte [0xe4bc],0x0 ; 06035 C606BCE400
    %if ($ - %%insn_06035) > 5
        %error "LONG_06035"
    %endif
    times 5 - ($ - %%insn_06035) db 0
    %%insn_0603a:
    inc byte [0xe4b9] ; 0603A FE06B9E4
    %if ($ - %%insn_0603a) > 4
        %error "LONG_0603A"
    %endif
    times 4 - ($ - %%insn_0603a) db 0
    %%insn_0603e:
    cmp byte [0xe4b9],0x31 ; 0603E 803EB9E431
    %if ($ - %%insn_0603e) > 5
        %error "LONG_0603E"
    %endif
    times 5 - ($ - %%insn_0603e) db 0
    %%insn_06043:
    jl short 0x5ff0 ; 06043 7CAB
    %if ($ - %%insn_06043) > 2
        %error "LONG_06043"
    %endif
    times 2 - ($ - %%insn_06043) db 0
    %%insn_06045:
    mov byte [0xe4bb],0x2 ; 06045 C606BBE402
    %if ($ - %%insn_06045) > 5
        %error "LONG_06045"
    %endif
    times 5 - ($ - %%insn_06045) db 0
    db 0x2A, 0xC0 ; 0604A 2AC0 | sub al,al | encoding preserved
    %%insn_0604c:
    mov [0xe4b9],al ; 0604C A2B9E4
    %if ($ - %%insn_0604c) > 3
        %error "LONG_0604C"
    %endif
    times 3 - ($ - %%insn_0604c) db 0
    %%insn_0604f:
    mov [0xe4bc],al ; 0604F A2BCE4
    %if ($ - %%insn_0604f) > 3
        %error "LONG_0604F"
    %endif
    times 3 - ($ - %%insn_0604f) db 0
    %%insn_06052:
    cmp byte [0xe4bb],0x2 ; 06052 803EBBE402
    %if ($ - %%insn_06052) > 5
        %error "LONG_06052"
    %endif
    times 5 - ($ - %%insn_06052) db 0
    %%insn_06057:
    jz short 0x6074 ; 06057 741B
    %if ($ - %%insn_06057) > 2
        %error "LONG_06057"
    %endif
    times 2 - ($ - %%insn_06057) db 0
    %%insn_06059:
    jmp short 0x60c9 ; 06059 EB6E
    %if ($ - %%insn_06059) > 2
        %error "LONG_06059"
    %endif
    times 2 - ($ - %%insn_06059) db 0
    %if ($ - %%fragment_start) != 119
        %error "SIZE_05FE4"
    %endif
%endmacro

%macro emit_func_05fe4_part_01 0
    %%fragment_start:
    %%insn_0605c:
    mov al,[0xe4ba] ; 0605C A0BAE4
    %if ($ - %%insn_0605c) > 3
        %error "LONG_0605C"
    %endif
    times 3 - ($ - %%insn_0605c) db 0
    %%insn_0605f:
    cbw ; 0605F 98
    %if ($ - %%insn_0605f) > 1
        %error "LONG_0605F"
    %endif
    times 1 - ($ - %%insn_0605f) db 0
    db 0x8B, 0xD8 ; 06060 8BD8 | mov bx,ax | encoding preserved
    %%insn_06062:
    mov byte [bx-0x14a3],0xff ; 06062 C6875DEBFF
    %if ($ - %%insn_06062) > 5
        %error "LONG_06062"
    %endif
    times 5 - ($ - %%insn_06062) db 0
    %%insn_06067:
    inc byte [0xe4bc] ; 06067 FE06BCE4
    %if ($ - %%insn_06067) > 4
        %error "LONG_06067"
    %endif
    times 4 - ($ - %%insn_06067) db 0
    %%insn_0606b:
    mov ax,0x1 ; 0606B B80100
    %if ($ - %%insn_0606b) > 3
        %error "LONG_0606B"
    %endif
    times 3 - ($ - %%insn_0606b) db 0
    %%insn_0606e:
    pop si ; 0606E 5E
    %if ($ - %%insn_0606e) > 1
        %error "LONG_0606E"
    %endif
    times 1 - ($ - %%insn_0606e) db 0
    db 0x8B, 0xE5 ; 0606F 8BE5 | mov sp,bp | encoding preserved
    %%insn_06071:
    pop bp ; 06071 5D
    %if ($ - %%insn_06071) > 1
        %error "LONG_06071"
    %endif
    times 1 - ($ - %%insn_06071) db 0
    %%insn_06072:
    ret ; 06072 C3
    %if ($ - %%insn_06072) > 1
        %error "LONG_06072"
    %endif
    times 1 - ($ - %%insn_06072) db 0
    %if ($ - %%fragment_start) != 23
        %error "SIZE_0605C"
    %endif
%endmacro

%macro emit_func_05fe4_part_02 0
    %%fragment_start:
    %%insn_06074:
    mov al,[0xe4b9] ; 06074 A0B9E4
    %if ($ - %%insn_06074) > 3
        %error "LONG_06074"
    %endif
    times 3 - ($ - %%insn_06074) db 0
    %%insn_06077:
    cbw ; 06077 98
    %if ($ - %%insn_06077) > 1
        %error "LONG_06077"
    %endif
    times 1 - ($ - %%insn_06077) db 0
    db 0x8B, 0xD8 ; 06078 8BD8 | mov bx,ax | encoding preserved
    %%insn_0607a:
    mov al,[bp-0x2] ; 0607A 8A46FE
    %if ($ - %%insn_0607a) > 3
        %error "LONG_0607A"
    %endif
    times 3 - ($ - %%insn_0607a) db 0
    %%insn_0607d:
    cmp [bx-0x14a3],al ; 0607D 38875DEB
    %if ($ - %%insn_0607d) > 4
        %error "LONG_0607D"
    %endif
    times 4 - ($ - %%insn_0607d) db 0
    %%insn_06081:
    jnz short 0x60be ; 06081 753B
    %if ($ - %%insn_06081) > 2
        %error "LONG_06081"
    %endif
    times 2 - ($ - %%insn_06081) db 0
    %%insn_06083:
    mov al,[0xe4bc] ; 06083 A0BCE4
    %if ($ - %%insn_06083) > 3
        %error "LONG_06083"
    %endif
    times 3 - ($ - %%insn_06083) db 0
    %%insn_06086:
    cbw ; 06086 98
    %if ($ - %%insn_06086) > 1
        %error "LONG_06086"
    %endif
    times 1 - ($ - %%insn_06086) db 0
    db 0x8B, 0xF0 ; 06087 8BF0 | mov si,ax | encoding preserved
    %%insn_06089:
    mov al,[0xe4b9] ; 06089 A0B9E4
    %if ($ - %%insn_06089) > 3
        %error "LONG_06089"
    %endif
    times 3 - ($ - %%insn_06089) db 0
    %%insn_0608c:
    cbw ; 0608C 98
    %if ($ - %%insn_0608c) > 1
        %error "LONG_0608C"
    %endif
    times 1 - ($ - %%insn_0608c) db 0
    db 0x8B, 0xD8 ; 0608D 8BD8 | mov bx,ax | encoding preserved
    %%insn_0608f:
    shl bx,1 ; 0608F D1E3
    %if ($ - %%insn_0608f) > 2
        %error "LONG_0608F"
    %endif
    times 2 - ($ - %%insn_0608f) db 0
    %%insn_06091:
    add si,[bx-0x1767] ; 06091 03B799E8
    %if ($ - %%insn_06091) > 4
        %error "LONG_06091"
    %endif
    times 4 - ($ - %%insn_06091) db 0
    %%insn_06095:
    cmp byte [0xe4bc],0x10 ; 06095 803EBCE410
    %if ($ - %%insn_06095) > 5
        %error "LONG_06095"
    %endif
    times 5 - ($ - %%insn_06095) db 0
    %%insn_0609a:
    jnl short 0x60b9 ; 0609A 7D1D
    %if ($ - %%insn_0609a) > 2
        %error "LONG_0609A"
    %endif
    times 2 - ($ - %%insn_0609a) db 0
    %%insn_0609c:
    lodsb ; 0609C AC
    %if ($ - %%insn_0609c) > 1
        %error "LONG_0609C"
    %endif
    times 1 - ($ - %%insn_0609c) db 0
    %%insn_0609d:
    mov [0xe4ba],al ; 0609D A2BAE4
    %if ($ - %%insn_0609d) > 3
        %error "LONG_0609D"
    %endif
    times 3 - ($ - %%insn_0609d) db 0
    db 0x0A, 0xC0 ; 060A0 0AC0 | or al,al | encoding preserved
    %%insn_060a2:
    jl short 0x60b9 ; 060A2 7C15
    %if ($ - %%insn_060a2) > 2
        %error "LONG_060A2"
    %endif
    times 2 - ($ - %%insn_060a2) db 0
    %%insn_060a4:
    cbw ; 060A4 98
    %if ($ - %%insn_060a4) > 1
        %error "LONG_060A4"
    %endif
    times 1 - ($ - %%insn_060a4) db 0
    db 0x8B, 0xD8 ; 060A5 8BD8 | mov bx,ax | encoding preserved
    %%insn_060a7:
    cmp byte [bx-0x1b7c],0x0 ; 060A7 80BF84E400
    %if ($ - %%insn_060a7) > 5
        %error "LONG_060A7"
    %endif
    times 5 - ($ - %%insn_060a7) db 0
    %%insn_060ac:
    jz short 0x6067 ; 060AC 74B9
    %if ($ - %%insn_060ac) > 2
        %error "LONG_060AC"
    %endif
    times 2 - ($ - %%insn_060ac) db 0
    %%insn_060ae:
    inc byte [0xe4bc] ; 060AE FE06BCE4
    %if ($ - %%insn_060ae) > 4
        %error "LONG_060AE"
    %endif
    times 4 - ($ - %%insn_060ae) db 0
    %%insn_060b2:
    cmp byte [0xe4bc],0x10 ; 060B2 803EBCE410
    %if ($ - %%insn_060b2) > 5
        %error "LONG_060B2"
    %endif
    times 5 - ($ - %%insn_060b2) db 0
    %%insn_060b7:
    jl short 0x609c ; 060B7 7CE3
    %if ($ - %%insn_060b7) > 2
        %error "LONG_060B7"
    %endif
    times 2 - ($ - %%insn_060b7) db 0
    %%insn_060b9:
    mov byte [0xe4bc],0x0 ; 060B9 C606BCE400
    %if ($ - %%insn_060b9) > 5
        %error "LONG_060B9"
    %endif
    times 5 - ($ - %%insn_060b9) db 0
    %%insn_060be:
    inc byte [0xe4b9] ; 060BE FE06B9E4
    %if ($ - %%insn_060be) > 4
        %error "LONG_060BE"
    %endif
    times 4 - ($ - %%insn_060be) db 0
    %%insn_060c2:
    cmp byte [0xe4b9],0x31 ; 060C2 803EB9E431
    %if ($ - %%insn_060c2) > 5
        %error "LONG_060C2"
    %endif
    times 5 - ($ - %%insn_060c2) db 0
    %%insn_060c7:
    jl short 0x6074 ; 060C7 7CAB
    %if ($ - %%insn_060c7) > 2
        %error "LONG_060C7"
    %endif
    times 2 - ($ - %%insn_060c7) db 0
    db 0x2B, 0xC0 ; 060C9 2BC0 | sub ax,ax | encoding preserved
    %%insn_060cb:
    pop si ; 060CB 5E
    %if ($ - %%insn_060cb) > 1
        %error "LONG_060CB"
    %endif
    times 1 - ($ - %%insn_060cb) db 0
    db 0x8B, 0xE5 ; 060CC 8BE5 | mov sp,bp | encoding preserved
    %%insn_060ce:
    pop bp ; 060CE 5D
    %if ($ - %%insn_060ce) > 1
        %error "LONG_060CE"
    %endif
    times 1 - ($ - %%insn_060ce) db 0
    %%insn_060cf:
    ret ; 060CF C3
    %if ($ - %%insn_060cf) > 1
        %error "LONG_060CF"
    %endif
    times 1 - ($ - %%insn_060cf) db 0
    %if ($ - %%fragment_start) != 92
        %error "SIZE_06074"
    %endif
%endmacro
