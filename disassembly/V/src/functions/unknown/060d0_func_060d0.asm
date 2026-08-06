; Linear entry 060D0 (1000:60d0)
; Ghidra working symbol: FUN_1000_60d0
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_060d0_part_00 0
    %%fragment_start:
func_060d0:
    %%insn_060d0:
    push bp ; 060D0 55
    %if ($ - %%insn_060d0) > 1
        %error "LONG_060D0"
    %endif
    times 1 - ($ - %%insn_060d0) db 0
    db 0x8B, 0xEC ; 060D1 8BEC | mov bp,sp | encoding preserved
    %%insn_060d3:
    push ax ; 060D3 50
    %if ($ - %%insn_060d3) > 1
        %error "LONG_060D3"
    %endif
    times 1 - ($ - %%insn_060d3) db 0
    %%insn_060d4:
    push di ; 060D4 57
    %if ($ - %%insn_060d4) > 1
        %error "LONG_060D4"
    %endif
    times 1 - ($ - %%insn_060d4) db 0
    %%insn_060d5:
    push si ; 060D5 56
    %if ($ - %%insn_060d5) > 1
        %error "LONG_060D5"
    %endif
    times 1 - ($ - %%insn_060d5) db 0
    %%insn_060d6:
    cmp byte [0xe4bb],0x1 ; 060D6 803EBBE401
    %if ($ - %%insn_060d6) > 5
        %error "LONG_060D6"
    %endif
    times 5 - ($ - %%insn_060d6) db 0
    %%insn_060db:
    jnz short 0x614f ; 060DB 7572
    %if ($ - %%insn_060db) > 2
        %error "LONG_060DB"
    %endif
    times 2 - ($ - %%insn_060db) db 0
    %%insn_060dd:
    mov al,[0xe4b9] ; 060DD A0B9E4
    %if ($ - %%insn_060dd) > 3
        %error "LONG_060DD"
    %endif
    times 3 - ($ - %%insn_060dd) db 0
    %%insn_060e0:
    cbw ; 060E0 98
    %if ($ - %%insn_060e0) > 1
        %error "LONG_060E0"
    %endif
    times 1 - ($ - %%insn_060e0) db 0
    db 0x8B, 0xD8 ; 060E1 8BD8 | mov bx,ax | encoding preserved
    %%insn_060e3:
    mov al,[bp-0x2] ; 060E3 8A46FE
    %if ($ - %%insn_060e3) > 3
        %error "LONG_060E3"
    %endif
    times 3 - ($ - %%insn_060e3) db 0
    %%insn_060e6:
    cmp [bx-0x14a3],al ; 060E6 38875DEB
    %if ($ - %%insn_060e6) > 4
        %error "LONG_060E6"
    %endif
    times 4 - ($ - %%insn_060e6) db 0
    %%insn_060ea:
    jnz short 0x6127 ; 060EA 753B
    %if ($ - %%insn_060ea) > 2
        %error "LONG_060EA"
    %endif
    times 2 - ($ - %%insn_060ea) db 0
    %%insn_060ec:
    mov al,[0xe4bc] ; 060EC A0BCE4
    %if ($ - %%insn_060ec) > 3
        %error "LONG_060EC"
    %endif
    times 3 - ($ - %%insn_060ec) db 0
    %%insn_060ef:
    cbw ; 060EF 98
    %if ($ - %%insn_060ef) > 1
        %error "LONG_060EF"
    %endif
    times 1 - ($ - %%insn_060ef) db 0
    db 0x8B, 0xF0 ; 060F0 8BF0 | mov si,ax | encoding preserved
    %%insn_060f2:
    mov al,[0xe4b9] ; 060F2 A0B9E4
    %if ($ - %%insn_060f2) > 3
        %error "LONG_060F2"
    %endif
    times 3 - ($ - %%insn_060f2) db 0
    %%insn_060f5:
    cbw ; 060F5 98
    %if ($ - %%insn_060f5) > 1
        %error "LONG_060F5"
    %endif
    times 1 - ($ - %%insn_060f5) db 0
    db 0x8B, 0xD8 ; 060F6 8BD8 | mov bx,ax | encoding preserved
    %%insn_060f8:
    shl bx,1 ; 060F8 D1E3
    %if ($ - %%insn_060f8) > 2
        %error "LONG_060F8"
    %endif
    times 2 - ($ - %%insn_060f8) db 0
    %%insn_060fa:
    add si,[bx-0x17c9] ; 060FA 03B737E8
    %if ($ - %%insn_060fa) > 4
        %error "LONG_060FA"
    %endif
    times 4 - ($ - %%insn_060fa) db 0
    %%insn_060fe:
    cmp byte [0xe4bc],0x8 ; 060FE 803EBCE408
    %if ($ - %%insn_060fe) > 5
        %error "LONG_060FE"
    %endif
    times 5 - ($ - %%insn_060fe) db 0
    %%insn_06103:
    jnl short 0x6122 ; 06103 7D1D
    %if ($ - %%insn_06103) > 2
        %error "LONG_06103"
    %endif
    times 2 - ($ - %%insn_06103) db 0
    %%insn_06105:
    lodsb ; 06105 AC
    %if ($ - %%insn_06105) > 1
        %error "LONG_06105"
    %endif
    times 1 - ($ - %%insn_06105) db 0
    %%insn_06106:
    mov [0xe4ba],al ; 06106 A2BAE4
    %if ($ - %%insn_06106) > 3
        %error "LONG_06106"
    %endif
    times 3 - ($ - %%insn_06106) db 0
    db 0x0A, 0xC0 ; 06109 0AC0 | or al,al | encoding preserved
    %%insn_0610b:
    jl short 0x6122 ; 0610B 7C15
    %if ($ - %%insn_0610b) > 2
        %error "LONG_0610B"
    %endif
    times 2 - ($ - %%insn_0610b) db 0
    %%insn_0610d:
    cbw ; 0610D 98
    %if ($ - %%insn_0610d) > 1
        %error "LONG_0610D"
    %endif
    times 1 - ($ - %%insn_0610d) db 0
    db 0x8B, 0xD8 ; 0610E 8BD8 | mov bx,ax | encoding preserved
    %%insn_06110:
    cmp byte [bx-0x14a3],0x0 ; 06110 80BF5DEB00
    %if ($ - %%insn_06110) > 5
        %error "LONG_06110"
    %endif
    times 5 - ($ - %%insn_06110) db 0
    %%insn_06115:
    jz short 0x615a ; 06115 7443
    %if ($ - %%insn_06115) > 2
        %error "LONG_06115"
    %endif
    times 2 - ($ - %%insn_06115) db 0
    %%insn_06117:
    inc byte [0xe4bc] ; 06117 FE06BCE4
    %if ($ - %%insn_06117) > 4
        %error "LONG_06117"
    %endif
    times 4 - ($ - %%insn_06117) db 0
    %%insn_0611b:
    cmp byte [0xe4bc],0x8 ; 0611B 803EBCE408
    %if ($ - %%insn_0611b) > 5
        %error "LONG_0611B"
    %endif
    times 5 - ($ - %%insn_0611b) db 0
    %%insn_06120:
    jl short 0x6105 ; 06120 7CE3
    %if ($ - %%insn_06120) > 2
        %error "LONG_06120"
    %endif
    times 2 - ($ - %%insn_06120) db 0
    %%insn_06122:
    mov byte [0xe4bc],0x0 ; 06122 C606BCE400
    %if ($ - %%insn_06122) > 5
        %error "LONG_06122"
    %endif
    times 5 - ($ - %%insn_06122) db 0
    %%insn_06127:
    inc byte [0xe4b9] ; 06127 FE06B9E4
    %if ($ - %%insn_06127) > 4
        %error "LONG_06127"
    %endif
    times 4 - ($ - %%insn_06127) db 0
    %%insn_0612b:
    cmp byte [0xe4b9],0x31 ; 0612B 803EB9E431
    %if ($ - %%insn_0612b) > 5
        %error "LONG_0612B"
    %endif
    times 5 - ($ - %%insn_0612b) db 0
    %%insn_06130:
    jl short 0x60dd ; 06130 7CAB
    %if ($ - %%insn_06130) > 2
        %error "LONG_06130"
    %endif
    times 2 - ($ - %%insn_06130) db 0
    %%insn_06132:
    mov byte [0xe4bb],0x2 ; 06132 C606BBE402
    %if ($ - %%insn_06132) > 5
        %error "LONG_06132"
    %endif
    times 5 - ($ - %%insn_06132) db 0
    db 0x2A, 0xC0 ; 06137 2AC0 | sub al,al | encoding preserved
    %%insn_06139:
    mov [0xe4b9],al ; 06139 A2B9E4
    %if ($ - %%insn_06139) > 3
        %error "LONG_06139"
    %endif
    times 3 - ($ - %%insn_06139) db 0
    %%insn_0613c:
    mov [0xe4bc],al ; 0613C A2BCE4
    %if ($ - %%insn_0613c) > 3
        %error "LONG_0613C"
    %endif
    times 3 - ($ - %%insn_0613c) db 0
    %%insn_0613f:
    mov ax,0xeb5d ; 0613F B85DEB
    %if ($ - %%insn_0613f) > 3
        %error "LONG_0613F"
    %endif
    times 3 - ($ - %%insn_0613f) db 0
    %%insn_06142:
    mov cx,0x18 ; 06142 B91800
    %if ($ - %%insn_06142) > 3
        %error "LONG_06142"
    %endif
    times 3 - ($ - %%insn_06142) db 0
    db 0x8B, 0xF8 ; 06145 8BF8 | mov di,ax | encoding preserved
    %%insn_06147:
    mov si,0xe484 ; 06147 BE84E4
    %if ($ - %%insn_06147) > 3
        %error "LONG_06147"
    %endif
    times 3 - ($ - %%insn_06147) db 0
    %%insn_0614a:
    push ds ; 0614A 1E
    %if ($ - %%insn_0614a) > 1
        %error "LONG_0614A"
    %endif
    times 1 - ($ - %%insn_0614a) db 0
    %%insn_0614b:
    pop es ; 0614B 07
    %if ($ - %%insn_0614b) > 1
        %error "LONG_0614B"
    %endif
    times 1 - ($ - %%insn_0614b) db 0
    %%insn_0614c:
    rep movsw ; 0614C F3A5
    %if ($ - %%insn_0614c) > 2
        %error "LONG_0614C"
    %endif
    times 2 - ($ - %%insn_0614c) db 0
    %%insn_0614e:
    movsb ; 0614E A4
    %if ($ - %%insn_0614e) > 1
        %error "LONG_0614E"
    %endif
    times 1 - ($ - %%insn_0614e) db 0
    %%insn_0614f:
    cmp byte [0xe4bb],0x2 ; 0614F 803EBBE402
    %if ($ - %%insn_0614f) > 5
        %error "LONG_0614F"
    %endif
    times 5 - ($ - %%insn_0614f) db 0
    %%insn_06154:
    jz short 0x6172 ; 06154 741C
    %if ($ - %%insn_06154) > 2
        %error "LONG_06154"
    %endif
    times 2 - ($ - %%insn_06154) db 0
    %%insn_06156:
    jmp short 0x61c7 ; 06156 EB6F
    %if ($ - %%insn_06156) > 2
        %error "LONG_06156"
    %endif
    times 2 - ($ - %%insn_06156) db 0
    %if ($ - %%fragment_start) != 136
        %error "SIZE_060D0"
    %endif
%endmacro

%macro emit_func_060d0_part_01 0
    %%fragment_start:
    %%insn_0615a:
    mov al,[0xe4ba] ; 0615A A0BAE4
    %if ($ - %%insn_0615a) > 3
        %error "LONG_0615A"
    %endif
    times 3 - ($ - %%insn_0615a) db 0
    %%insn_0615d:
    cbw ; 0615D 98
    %if ($ - %%insn_0615d) > 1
        %error "LONG_0615D"
    %endif
    times 1 - ($ - %%insn_0615d) db 0
    db 0x8B, 0xD8 ; 0615E 8BD8 | mov bx,ax | encoding preserved
    %%insn_06160:
    mov byte [bx-0x14a3],0xff ; 06160 C6875DEBFF
    %if ($ - %%insn_06160) > 5
        %error "LONG_06160"
    %endif
    times 5 - ($ - %%insn_06160) db 0
    %%insn_06165:
    inc byte [0xe4bc] ; 06165 FE06BCE4
    %if ($ - %%insn_06165) > 4
        %error "LONG_06165"
    %endif
    times 4 - ($ - %%insn_06165) db 0
    %%insn_06169:
    mov ax,0x1 ; 06169 B80100
    %if ($ - %%insn_06169) > 3
        %error "LONG_06169"
    %endif
    times 3 - ($ - %%insn_06169) db 0
    %%insn_0616c:
    pop si ; 0616C 5E
    %if ($ - %%insn_0616c) > 1
        %error "LONG_0616C"
    %endif
    times 1 - ($ - %%insn_0616c) db 0
    %%insn_0616d:
    pop di ; 0616D 5F
    %if ($ - %%insn_0616d) > 1
        %error "LONG_0616D"
    %endif
    times 1 - ($ - %%insn_0616d) db 0
    db 0x8B, 0xE5 ; 0616E 8BE5 | mov sp,bp | encoding preserved
    %%insn_06170:
    pop bp ; 06170 5D
    %if ($ - %%insn_06170) > 1
        %error "LONG_06170"
    %endif
    times 1 - ($ - %%insn_06170) db 0
    %%insn_06171:
    ret ; 06171 C3
    %if ($ - %%insn_06171) > 1
        %error "LONG_06171"
    %endif
    times 1 - ($ - %%insn_06171) db 0
    %%insn_06172:
    mov al,[0xe4b9] ; 06172 A0B9E4
    %if ($ - %%insn_06172) > 3
        %error "LONG_06172"
    %endif
    times 3 - ($ - %%insn_06172) db 0
    %%insn_06175:
    cbw ; 06175 98
    %if ($ - %%insn_06175) > 1
        %error "LONG_06175"
    %endif
    times 1 - ($ - %%insn_06175) db 0
    db 0x8B, 0xD8 ; 06176 8BD8 | mov bx,ax | encoding preserved
    %%insn_06178:
    mov al,[bp-0x2] ; 06178 8A46FE
    %if ($ - %%insn_06178) > 3
        %error "LONG_06178"
    %endif
    times 3 - ($ - %%insn_06178) db 0
    %%insn_0617b:
    cmp [bx-0x14a3],al ; 0617B 38875DEB
    %if ($ - %%insn_0617b) > 4
        %error "LONG_0617B"
    %endif
    times 4 - ($ - %%insn_0617b) db 0
    %%insn_0617f:
    jnz short 0x61bc ; 0617F 753B
    %if ($ - %%insn_0617f) > 2
        %error "LONG_0617F"
    %endif
    times 2 - ($ - %%insn_0617f) db 0
    %%insn_06181:
    mov al,[0xe4bc] ; 06181 A0BCE4
    %if ($ - %%insn_06181) > 3
        %error "LONG_06181"
    %endif
    times 3 - ($ - %%insn_06181) db 0
    %%insn_06184:
    cbw ; 06184 98
    %if ($ - %%insn_06184) > 1
        %error "LONG_06184"
    %endif
    times 1 - ($ - %%insn_06184) db 0
    db 0x8B, 0xF0 ; 06185 8BF0 | mov si,ax | encoding preserved
    %%insn_06187:
    mov al,[0xe4b9] ; 06187 A0B9E4
    %if ($ - %%insn_06187) > 3
        %error "LONG_06187"
    %endif
    times 3 - ($ - %%insn_06187) db 0
    %%insn_0618a:
    cbw ; 0618A 98
    %if ($ - %%insn_0618a) > 1
        %error "LONG_0618A"
    %endif
    times 1 - ($ - %%insn_0618a) db 0
    db 0x8B, 0xD8 ; 0618B 8BD8 | mov bx,ax | encoding preserved
    %%insn_0618d:
    shl bx,1 ; 0618D D1E3
    %if ($ - %%insn_0618d) > 2
        %error "LONG_0618D"
    %endif
    times 2 - ($ - %%insn_0618d) db 0
    %%insn_0618f:
    add si,[bx-0x1767] ; 0618F 03B799E8
    %if ($ - %%insn_0618f) > 4
        %error "LONG_0618F"
    %endif
    times 4 - ($ - %%insn_0618f) db 0
    %%insn_06193:
    cmp byte [0xe4bc],0x10 ; 06193 803EBCE410
    %if ($ - %%insn_06193) > 5
        %error "LONG_06193"
    %endif
    times 5 - ($ - %%insn_06193) db 0
    %%insn_06198:
    jnl short 0x61b7 ; 06198 7D1D
    %if ($ - %%insn_06198) > 2
        %error "LONG_06198"
    %endif
    times 2 - ($ - %%insn_06198) db 0
    %%insn_0619a:
    lodsb ; 0619A AC
    %if ($ - %%insn_0619a) > 1
        %error "LONG_0619A"
    %endif
    times 1 - ($ - %%insn_0619a) db 0
    %%insn_0619b:
    mov [0xe4ba],al ; 0619B A2BAE4
    %if ($ - %%insn_0619b) > 3
        %error "LONG_0619B"
    %endif
    times 3 - ($ - %%insn_0619b) db 0
    db 0x0A, 0xC0 ; 0619E 0AC0 | or al,al | encoding preserved
    %%insn_061a0:
    jl short 0x61b7 ; 061A0 7C15
    %if ($ - %%insn_061a0) > 2
        %error "LONG_061A0"
    %endif
    times 2 - ($ - %%insn_061a0) db 0
    %%insn_061a2:
    cbw ; 061A2 98
    %if ($ - %%insn_061a2) > 1
        %error "LONG_061A2"
    %endif
    times 1 - ($ - %%insn_061a2) db 0
    db 0x8B, 0xD8 ; 061A3 8BD8 | mov bx,ax | encoding preserved
    %%insn_061a5:
    cmp byte [bx-0x14a3],0x0 ; 061A5 80BF5DEB00
    %if ($ - %%insn_061a5) > 5
        %error "LONG_061A5"
    %endif
    times 5 - ($ - %%insn_061a5) db 0
    %%insn_061aa:
    jz short 0x615a ; 061AA 74AE
    %if ($ - %%insn_061aa) > 2
        %error "LONG_061AA"
    %endif
    times 2 - ($ - %%insn_061aa) db 0
    %%insn_061ac:
    inc byte [0xe4bc] ; 061AC FE06BCE4
    %if ($ - %%insn_061ac) > 4
        %error "LONG_061AC"
    %endif
    times 4 - ($ - %%insn_061ac) db 0
    %%insn_061b0:
    cmp byte [0xe4bc],0x10 ; 061B0 803EBCE410
    %if ($ - %%insn_061b0) > 5
        %error "LONG_061B0"
    %endif
    times 5 - ($ - %%insn_061b0) db 0
    %%insn_061b5:
    jl short 0x619a ; 061B5 7CE3
    %if ($ - %%insn_061b5) > 2
        %error "LONG_061B5"
    %endif
    times 2 - ($ - %%insn_061b5) db 0
    %%insn_061b7:
    mov byte [0xe4bc],0x0 ; 061B7 C606BCE400
    %if ($ - %%insn_061b7) > 5
        %error "LONG_061B7"
    %endif
    times 5 - ($ - %%insn_061b7) db 0
    %%insn_061bc:
    inc byte [0xe4b9] ; 061BC FE06B9E4
    %if ($ - %%insn_061bc) > 4
        %error "LONG_061BC"
    %endif
    times 4 - ($ - %%insn_061bc) db 0
    %%insn_061c0:
    cmp byte [0xe4b9],0x31 ; 061C0 803EB9E431
    %if ($ - %%insn_061c0) > 5
        %error "LONG_061C0"
    %endif
    times 5 - ($ - %%insn_061c0) db 0
    %%insn_061c5:
    jl short 0x6172 ; 061C5 7CAB
    %if ($ - %%insn_061c5) > 2
        %error "LONG_061C5"
    %endif
    times 2 - ($ - %%insn_061c5) db 0
    db 0x2B, 0xC0 ; 061C7 2BC0 | sub ax,ax | encoding preserved
    %%insn_061c9:
    pop si ; 061C9 5E
    %if ($ - %%insn_061c9) > 1
        %error "LONG_061C9"
    %endif
    times 1 - ($ - %%insn_061c9) db 0
    %%insn_061ca:
    pop di ; 061CA 5F
    %if ($ - %%insn_061ca) > 1
        %error "LONG_061CA"
    %endif
    times 1 - ($ - %%insn_061ca) db 0
    db 0x8B, 0xE5 ; 061CB 8BE5 | mov sp,bp | encoding preserved
    %%insn_061cd:
    pop bp ; 061CD 5D
    %if ($ - %%insn_061cd) > 1
        %error "LONG_061CD"
    %endif
    times 1 - ($ - %%insn_061cd) db 0
    %%insn_061ce:
    ret ; 061CE C3
    %if ($ - %%insn_061ce) > 1
        %error "LONG_061CE"
    %endif
    times 1 - ($ - %%insn_061ce) db 0
    %if ($ - %%fragment_start) != 117
        %error "SIZE_0615A"
    %endif
%endmacro
