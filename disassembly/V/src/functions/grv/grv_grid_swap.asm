; Linear entry 0410F (1000:410f)
; Ghidra working symbol: FUN_1000_410f
; Verified GRV opcode 39h GRID_SWAP handler. Decodes two row/column pairs,
; accepting either immediate digits or #variable operands, computes each
; v[019h + 10*row + column] address, and exchanges the two bytes. K.GRV+0565
; invokes this exact operation for every committed soup-can move; Win32 trace
; 20260809-223655 independently verified the same operand and state semantics.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_grid_swap_part_00 0
    %%fragment_start:
grv_grid_swap:
    %%insn_0410f:
    push di ; 0410F 57
    %if ($ - %%insn_0410f) > 1
        %error "LONG_0410F"
    %endif
    times 1 - ($ - %%insn_0410f) db 0
    %%insn_04110:
    lodsb ; 04110 AC
    %if ($ - %%insn_04110) > 1
        %error "LONG_04110"
    %endif
    times 1 - ($ - %%insn_04110) db 0
    %%insn_04111:
    and al,0x7f ; 04111 247F
    %if ($ - %%insn_04111) > 2
        %error "LONG_04111"
    %endif
    times 2 - ($ - %%insn_04111) db 0
    %%insn_04113:
    cmp al,0x23 ; 04113 3C23
    %if ($ - %%insn_04113) > 2
        %error "LONG_04113"
    %endif
    times 2 - ($ - %%insn_04113) db 0
    %%insn_04115:
    jnz short 0x412a ; 04115 7513
    %if ($ - %%insn_04115) > 2
        %error "LONG_04115"
    %endif
    times 2 - ($ - %%insn_04115) db 0
    %%insn_04117:
    lodsb ; 04117 AC
    %if ($ - %%insn_04117) > 1
        %error "LONG_04117"
    %endif
    times 1 - ($ - %%insn_04117) db 0
    db 0x8A, 0xF0 ; 04118 8AF0 | mov dh,al | encoding preserved
    %%insn_0411a:
    and al,0x7f ; 0411A 247F
    %if ($ - %%insn_0411a) > 2
        %error "LONG_0411A"
    %endif
    times 2 - ($ - %%insn_0411a) db 0
    %%insn_0411c:
    mov bx,0xdba2 ; 0411C BBA2DB
    %if ($ - %%insn_0411c) > 3
        %error "LONG_0411C"
    %endif
    times 3 - ($ - %%insn_0411c) db 0
    %%insn_0411f:
    sub al,0x61 ; 0411F 2C61
    %if ($ - %%insn_0411f) > 2
        %error "LONG_0411F"
    %endif
    times 2 - ($ - %%insn_0411f) db 0
    db 0x32, 0xE4 ; 04121 32E4 | xor ah,ah | encoding preserved
    db 0x03, 0xD8 ; 04123 03D8 | add bx,ax | encoding preserved
    %%insn_04125:
    mov al,[ss:bx] ; 04125 368A07
    %if ($ - %%insn_04125) > 3
        %error "LONG_04125"
    %endif
    times 3 - ($ - %%insn_04125) db 0
    %%insn_04128:
    jmp short 0x412c ; 04128 EB02
    %if ($ - %%insn_04128) > 2
        %error "LONG_04128"
    %endif
    times 2 - ($ - %%insn_04128) db 0
    %%insn_0412a:
    sub al,0x30 ; 0412A 2C30
    %if ($ - %%insn_0412a) > 2
        %error "LONG_0412A"
    %endif
    times 2 - ($ - %%insn_0412a) db 0
    %%insn_0412c:
    mov cl,0xa ; 0412C B10A
    %if ($ - %%insn_0412c) > 2
        %error "LONG_0412C"
    %endif
    times 2 - ($ - %%insn_0412c) db 0
    %%insn_0412e:
    mul cl ; 0412E F6E1
    %if ($ - %%insn_0412e) > 2
        %error "LONG_0412E"
    %endif
    times 2 - ($ - %%insn_0412e) db 0
    %%insn_04130:
    push ax ; 04130 50
    %if ($ - %%insn_04130) > 1
        %error "LONG_04130"
    %endif
    times 1 - ($ - %%insn_04130) db 0
    %%insn_04131:
    lodsb ; 04131 AC
    %if ($ - %%insn_04131) > 1
        %error "LONG_04131"
    %endif
    times 1 - ($ - %%insn_04131) db 0
    %%insn_04132:
    and al,0x7f ; 04132 247F
    %if ($ - %%insn_04132) > 2
        %error "LONG_04132"
    %endif
    times 2 - ($ - %%insn_04132) db 0
    %%insn_04134:
    cmp al,0x23 ; 04134 3C23
    %if ($ - %%insn_04134) > 2
        %error "LONG_04134"
    %endif
    times 2 - ($ - %%insn_04134) db 0
    %%insn_04136:
    jnz short 0x414b ; 04136 7513
    %if ($ - %%insn_04136) > 2
        %error "LONG_04136"
    %endif
    times 2 - ($ - %%insn_04136) db 0
    %%insn_04138:
    lodsb ; 04138 AC
    %if ($ - %%insn_04138) > 1
        %error "LONG_04138"
    %endif
    times 1 - ($ - %%insn_04138) db 0
    db 0x8A, 0xF0 ; 04139 8AF0 | mov dh,al | encoding preserved
    %%insn_0413b:
    and al,0x7f ; 0413B 247F
    %if ($ - %%insn_0413b) > 2
        %error "LONG_0413B"
    %endif
    times 2 - ($ - %%insn_0413b) db 0
    %%insn_0413d:
    mov bx,0xdba2 ; 0413D BBA2DB
    %if ($ - %%insn_0413d) > 3
        %error "LONG_0413D"
    %endif
    times 3 - ($ - %%insn_0413d) db 0
    %%insn_04140:
    sub al,0x61 ; 04140 2C61
    %if ($ - %%insn_04140) > 2
        %error "LONG_04140"
    %endif
    times 2 - ($ - %%insn_04140) db 0
    db 0x32, 0xE4 ; 04142 32E4 | xor ah,ah | encoding preserved
    db 0x03, 0xD8 ; 04144 03D8 | add bx,ax | encoding preserved
    %%insn_04146:
    mov al,[ss:bx] ; 04146 368A07
    %if ($ - %%insn_04146) > 3
        %error "LONG_04146"
    %endif
    times 3 - ($ - %%insn_04146) db 0
    %%insn_04149:
    jmp short 0x414d ; 04149 EB02
    %if ($ - %%insn_04149) > 2
        %error "LONG_04149"
    %endif
    times 2 - ($ - %%insn_04149) db 0
    %%insn_0414b:
    sub al,0x30 ; 0414B 2C30
    %if ($ - %%insn_0414b) > 2
        %error "LONG_0414B"
    %endif
    times 2 - ($ - %%insn_0414b) db 0
    %%insn_0414d:
    pop bx ; 0414D 5B
    %if ($ - %%insn_0414d) > 1
        %error "LONG_0414D"
    %endif
    times 1 - ($ - %%insn_0414d) db 0
    db 0x03, 0xC3 ; 0414E 03C3 | add ax,bx | encoding preserved
    %%insn_04150:
    add ax,0xdbbb ; 04150 05BBDB
    %if ($ - %%insn_04150) > 3
        %error "LONG_04150"
    %endif
    times 3 - ($ - %%insn_04150) db 0
    %%insn_04153:
    push ax ; 04153 50
    %if ($ - %%insn_04153) > 1
        %error "LONG_04153"
    %endif
    times 1 - ($ - %%insn_04153) db 0
    %%insn_04154:
    lodsb ; 04154 AC
    %if ($ - %%insn_04154) > 1
        %error "LONG_04154"
    %endif
    times 1 - ($ - %%insn_04154) db 0
    %%insn_04155:
    and al,0x7f ; 04155 247F
    %if ($ - %%insn_04155) > 2
        %error "LONG_04155"
    %endif
    times 2 - ($ - %%insn_04155) db 0
    %%insn_04157:
    cmp al,0x23 ; 04157 3C23
    %if ($ - %%insn_04157) > 2
        %error "LONG_04157"
    %endif
    times 2 - ($ - %%insn_04157) db 0
    %%insn_04159:
    jnz short 0x416e ; 04159 7513
    %if ($ - %%insn_04159) > 2
        %error "LONG_04159"
    %endif
    times 2 - ($ - %%insn_04159) db 0
    %%insn_0415b:
    lodsb ; 0415B AC
    %if ($ - %%insn_0415b) > 1
        %error "LONG_0415B"
    %endif
    times 1 - ($ - %%insn_0415b) db 0
    db 0x8A, 0xF0 ; 0415C 8AF0 | mov dh,al | encoding preserved
    %%insn_0415e:
    and al,0x7f ; 0415E 247F
    %if ($ - %%insn_0415e) > 2
        %error "LONG_0415E"
    %endif
    times 2 - ($ - %%insn_0415e) db 0
    %%insn_04160:
    mov bx,0xdba2 ; 04160 BBA2DB
    %if ($ - %%insn_04160) > 3
        %error "LONG_04160"
    %endif
    times 3 - ($ - %%insn_04160) db 0
    %%insn_04163:
    sub al,0x61 ; 04163 2C61
    %if ($ - %%insn_04163) > 2
        %error "LONG_04163"
    %endif
    times 2 - ($ - %%insn_04163) db 0
    db 0x32, 0xE4 ; 04165 32E4 | xor ah,ah | encoding preserved
    db 0x03, 0xD8 ; 04167 03D8 | add bx,ax | encoding preserved
    %%insn_04169:
    mov al,[ss:bx] ; 04169 368A07
    %if ($ - %%insn_04169) > 3
        %error "LONG_04169"
    %endif
    times 3 - ($ - %%insn_04169) db 0
    %%insn_0416c:
    jmp short 0x4170 ; 0416C EB02
    %if ($ - %%insn_0416c) > 2
        %error "LONG_0416C"
    %endif
    times 2 - ($ - %%insn_0416c) db 0
    %%insn_0416e:
    sub al,0x30 ; 0416E 2C30
    %if ($ - %%insn_0416e) > 2
        %error "LONG_0416E"
    %endif
    times 2 - ($ - %%insn_0416e) db 0
    %%insn_04170:
    mov cl,0xa ; 04170 B10A
    %if ($ - %%insn_04170) > 2
        %error "LONG_04170"
    %endif
    times 2 - ($ - %%insn_04170) db 0
    %%insn_04172:
    mul cl ; 04172 F6E1
    %if ($ - %%insn_04172) > 2
        %error "LONG_04172"
    %endif
    times 2 - ($ - %%insn_04172) db 0
    %%insn_04174:
    push ax ; 04174 50
    %if ($ - %%insn_04174) > 1
        %error "LONG_04174"
    %endif
    times 1 - ($ - %%insn_04174) db 0
    %%insn_04175:
    lodsb ; 04175 AC
    %if ($ - %%insn_04175) > 1
        %error "LONG_04175"
    %endif
    times 1 - ($ - %%insn_04175) db 0
    %%insn_04176:
    and al,0x7f ; 04176 247F
    %if ($ - %%insn_04176) > 2
        %error "LONG_04176"
    %endif
    times 2 - ($ - %%insn_04176) db 0
    %%insn_04178:
    cmp al,0x23 ; 04178 3C23
    %if ($ - %%insn_04178) > 2
        %error "LONG_04178"
    %endif
    times 2 - ($ - %%insn_04178) db 0
    %%insn_0417a:
    jnz short 0x418f ; 0417A 7513
    %if ($ - %%insn_0417a) > 2
        %error "LONG_0417A"
    %endif
    times 2 - ($ - %%insn_0417a) db 0
    %%insn_0417c:
    lodsb ; 0417C AC
    %if ($ - %%insn_0417c) > 1
        %error "LONG_0417C"
    %endif
    times 1 - ($ - %%insn_0417c) db 0
    db 0x8A, 0xF0 ; 0417D 8AF0 | mov dh,al | encoding preserved
    %%insn_0417f:
    and al,0x7f ; 0417F 247F
    %if ($ - %%insn_0417f) > 2
        %error "LONG_0417F"
    %endif
    times 2 - ($ - %%insn_0417f) db 0
    %%insn_04181:
    mov bx,0xdba2 ; 04181 BBA2DB
    %if ($ - %%insn_04181) > 3
        %error "LONG_04181"
    %endif
    times 3 - ($ - %%insn_04181) db 0
    %%insn_04184:
    sub al,0x61 ; 04184 2C61
    %if ($ - %%insn_04184) > 2
        %error "LONG_04184"
    %endif
    times 2 - ($ - %%insn_04184) db 0
    db 0x32, 0xE4 ; 04186 32E4 | xor ah,ah | encoding preserved
    db 0x03, 0xD8 ; 04188 03D8 | add bx,ax | encoding preserved
    %%insn_0418a:
    mov al,[ss:bx] ; 0418A 368A07
    %if ($ - %%insn_0418a) > 3
        %error "LONG_0418A"
    %endif
    times 3 - ($ - %%insn_0418a) db 0
    %%insn_0418d:
    jmp short 0x4191 ; 0418D EB02
    %if ($ - %%insn_0418d) > 2
        %error "LONG_0418D"
    %endif
    times 2 - ($ - %%insn_0418d) db 0
    %%insn_0418f:
    sub al,0x30 ; 0418F 2C30
    %if ($ - %%insn_0418f) > 2
        %error "LONG_0418F"
    %endif
    times 2 - ($ - %%insn_0418f) db 0
    %%insn_04191:
    pop bx ; 04191 5B
    %if ($ - %%insn_04191) > 1
        %error "LONG_04191"
    %endif
    times 1 - ($ - %%insn_04191) db 0
    db 0x03, 0xD8 ; 04192 03D8 | add bx,ax | encoding preserved
    %%insn_04194:
    add bx,0xdbbb ; 04194 81C3BBDB
    %if ($ - %%insn_04194) > 4
        %error "LONG_04194"
    %endif
    times 4 - ($ - %%insn_04194) db 0
    %%insn_04198:
    pop di ; 04198 5F
    %if ($ - %%insn_04198) > 1
        %error "LONG_04198"
    %endif
    times 1 - ($ - %%insn_04198) db 0
    %%insn_04199:
    mov al,[ss:bx] ; 04199 368A07
    %if ($ - %%insn_04199) > 3
        %error "LONG_04199"
    %endif
    times 3 - ($ - %%insn_04199) db 0
    %%insn_0419c:
    xchg al,[ss:di] ; 0419C 368605
    %if ($ - %%insn_0419c) > 3
        %error "LONG_0419C"
    %endif
    times 3 - ($ - %%insn_0419c) db 0
    %%insn_0419f:
    mov [ss:bx],al ; 0419F 368807
    %if ($ - %%insn_0419f) > 3
        %error "LONG_0419F"
    %endif
    times 3 - ($ - %%insn_0419f) db 0
    %%insn_041a2:
    pop di ; 041A2 5F
    %if ($ - %%insn_041a2) > 1
        %error "LONG_041A2"
    %endif
    times 1 - ($ - %%insn_041a2) db 0
    %%insn_041a3:
    ret ; 041A3 C3
    %if ($ - %%insn_041a3) > 1
        %error "LONG_041A3"
    %endif
    times 1 - ($ - %%insn_041a3) db 0
    %if ($ - %%fragment_start) != 149
        %error "SIZE_0410F"
    %endif
%endmacro
