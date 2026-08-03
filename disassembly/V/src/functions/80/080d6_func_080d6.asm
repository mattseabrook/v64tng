; Linear entry 080D6 (1702:10b6)
; Ghidra working symbol: FUN_1702_10b6
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_080d6_part_00 0
    %%fragment_start:
func_080d6:
    %%insn_080d6:
    push ds ; 080D6 1E
    %if ($ - %%insn_080d6) > 1
        %error "LONG_080D6"
    %endif
    times 1 - ($ - %%insn_080d6) db 0
    %%insn_080d7:
    push si ; 080D7 56
    %if ($ - %%insn_080d7) > 1
        %error "LONG_080D7"
    %endif
    times 1 - ($ - %%insn_080d7) db 0
    %%insn_080d8:
    push di ; 080D8 57
    %if ($ - %%insn_080d8) > 1
        %error "LONG_080D8"
    %endif
    times 1 - ($ - %%insn_080d8) db 0
    %%insn_080d9:
    lds si,word [cs:0xe66] ; 080D9 2EC536660E
    %if ($ - %%insn_080d9) > 5
        %error "LONG_080D9"
    %endif
    times 5 - ($ - %%insn_080d9) db 0
    %%insn_080de:
    inc si ; 080DE 46
    %if ($ - %%insn_080de) > 1
        %error "LONG_080DE"
    %endif
    times 1 - ($ - %%insn_080de) db 0
    %%insn_080df:
    lodsw ; 080DF AD
    %if ($ - %%insn_080df) > 1
        %error "LONG_080DF"
    %endif
    times 1 - ($ - %%insn_080df) db 0
    %%insn_080e0:
    mov dl,[si] ; 080E0 8A14
    %if ($ - %%insn_080e0) > 2
        %error "LONG_080E0"
    %endif
    times 2 - ($ - %%insn_080e0) db 0
    %%insn_080e2:
    mov dh,0x0 ; 080E2 B600
    %if ($ - %%insn_080e2) > 2
        %error "LONG_080E2"
    %endif
    times 2 - ($ - %%insn_080e2) db 0
    %%insn_080e4:
    inc si ; 080E4 46
    %if ($ - %%insn_080e4) > 1
        %error "LONG_080E4"
    %endif
    times 1 - ($ - %%insn_080e4) db 0
    %%insn_080e5:
    push bx ; 080E5 53
    %if ($ - %%insn_080e5) > 1
        %error "LONG_080E5"
    %endif
    times 1 - ($ - %%insn_080e5) db 0
    %%insn_080e6:
    push cx ; 080E6 51
    %if ($ - %%insn_080e6) > 1
        %error "LONG_080E6"
    %endif
    times 1 - ($ - %%insn_080e6) db 0
    %%insn_080e7:
    mov bx,ds ; 080E7 8CDB
    %if ($ - %%insn_080e7) > 2
        %error "LONG_080E7"
    %endif
    times 2 - ($ - %%insn_080e7) db 0
    db 0x33, 0xC9 ; 080E9 33C9 | xor cx,cx | encoding preserved
    %%insn_080eb:
    shl bx,1 ; 080EB D1E3
    %if ($ - %%insn_080eb) > 2
        %error "LONG_080EB"
    %endif
    times 2 - ($ - %%insn_080eb) db 0
    %%insn_080ed:
    rcl cx,1 ; 080ED D1D1
    %if ($ - %%insn_080ed) > 2
        %error "LONG_080ED"
    %endif
    times 2 - ($ - %%insn_080ed) db 0
    %%insn_080ef:
    shl bx,1 ; 080EF D1E3
    %if ($ - %%insn_080ef) > 2
        %error "LONG_080EF"
    %endif
    times 2 - ($ - %%insn_080ef) db 0
    %%insn_080f1:
    rcl cx,1 ; 080F1 D1D1
    %if ($ - %%insn_080f1) > 2
        %error "LONG_080F1"
    %endif
    times 2 - ($ - %%insn_080f1) db 0
    %%insn_080f3:
    shl bx,1 ; 080F3 D1E3
    %if ($ - %%insn_080f3) > 2
        %error "LONG_080F3"
    %endif
    times 2 - ($ - %%insn_080f3) db 0
    %%insn_080f5:
    rcl cx,1 ; 080F5 D1D1
    %if ($ - %%insn_080f5) > 2
        %error "LONG_080F5"
    %endif
    times 2 - ($ - %%insn_080f5) db 0
    %%insn_080f7:
    shl bx,1 ; 080F7 D1E3
    %if ($ - %%insn_080f7) > 2
        %error "LONG_080F7"
    %endif
    times 2 - ($ - %%insn_080f7) db 0
    %%insn_080f9:
    rcl cx,1 ; 080F9 D1D1
    %if ($ - %%insn_080f9) > 2
        %error "LONG_080F9"
    %endif
    times 2 - ($ - %%insn_080f9) db 0
    db 0x03, 0xDE ; 080FB 03DE | add bx,si | encoding preserved
    %%insn_080fd:
    adc cx,0x0 ; 080FD 83D100
    %if ($ - %%insn_080fd) > 3
        %error "LONG_080FD"
    %endif
    times 3 - ($ - %%insn_080fd) db 0
    db 0x03, 0xD8 ; 08100 03D8 | add bx,ax | encoding preserved
    db 0x13, 0xCA ; 08102 13CA | adc cx,dx | encoding preserved
    db 0x8B, 0xF3 ; 08104 8BF3 | mov si,bx | encoding preserved
    %%insn_08106:
    and si,0xf ; 08106 83E60F
    %if ($ - %%insn_08106) > 3
        %error "LONG_08106"
    %endif
    times 3 - ($ - %%insn_08106) db 0
    %%insn_08109:
    shr cx,1 ; 08109 D1E9
    %if ($ - %%insn_08109) > 2
        %error "LONG_08109"
    %endif
    times 2 - ($ - %%insn_08109) db 0
    %%insn_0810b:
    rcr bx,1 ; 0810B D1DB
    %if ($ - %%insn_0810b) > 2
        %error "LONG_0810B"
    %endif
    times 2 - ($ - %%insn_0810b) db 0
    %%insn_0810d:
    shr cx,1 ; 0810D D1E9
    %if ($ - %%insn_0810d) > 2
        %error "LONG_0810D"
    %endif
    times 2 - ($ - %%insn_0810d) db 0
    %%insn_0810f:
    rcr bx,1 ; 0810F D1DB
    %if ($ - %%insn_0810f) > 2
        %error "LONG_0810F"
    %endif
    times 2 - ($ - %%insn_0810f) db 0
    %%insn_08111:
    shr cx,1 ; 08111 D1E9
    %if ($ - %%insn_08111) > 2
        %error "LONG_08111"
    %endif
    times 2 - ($ - %%insn_08111) db 0
    %%insn_08113:
    rcr bx,1 ; 08113 D1DB
    %if ($ - %%insn_08113) > 2
        %error "LONG_08113"
    %endif
    times 2 - ($ - %%insn_08113) db 0
    %%insn_08115:
    shr cx,1 ; 08115 D1E9
    %if ($ - %%insn_08115) > 2
        %error "LONG_08115"
    %endif
    times 2 - ($ - %%insn_08115) db 0
    %%insn_08117:
    rcr bx,1 ; 08117 D1DB
    %if ($ - %%insn_08117) > 2
        %error "LONG_08117"
    %endif
    times 2 - ($ - %%insn_08117) db 0
    %%insn_08119:
    mov ds,bx ; 08119 8EDB
    %if ($ - %%insn_08119) > 2
        %error "LONG_08119"
    %endif
    times 2 - ($ - %%insn_08119) db 0
    %%insn_0811b:
    pop cx ; 0811B 59
    %if ($ - %%insn_0811b) > 1
        %error "LONG_0811B"
    %endif
    times 1 - ($ - %%insn_0811b) db 0
    %%insn_0811c:
    pop bx ; 0811C 5B
    %if ($ - %%insn_0811c) > 1
        %error "LONG_0811C"
    %endif
    times 1 - ($ - %%insn_0811c) db 0
    %%insn_0811d:
    mov [cs:0xe66],si ; 0811D 2E8936660E
    %if ($ - %%insn_0811d) > 5
        %error "LONG_0811D"
    %endif
    times 5 - ($ - %%insn_0811d) db 0
    %%insn_08122:
    mov word [cs:0xe68],ds ; 08122 2E8C1E680E
    %if ($ - %%insn_08122) > 5
        %error "LONG_08122"
    %endif
    times 5 - ($ - %%insn_08122) db 0
    %%insn_08127:
    pop di ; 08127 5F
    %if ($ - %%insn_08127) > 1
        %error "LONG_08127"
    %endif
    times 1 - ($ - %%insn_08127) db 0
    %%insn_08128:
    pop si ; 08128 5E
    %if ($ - %%insn_08128) > 1
        %error "LONG_08128"
    %endif
    times 1 - ($ - %%insn_08128) db 0
    %%insn_08129:
    pop ds ; 08129 1F
    %if ($ - %%insn_08129) > 1
        %error "LONG_08129"
    %endif
    times 1 - ($ - %%insn_08129) db 0
    %%insn_0812a:
    retf ; 0812A CB
    %if ($ - %%insn_0812a) > 1
        %error "LONG_0812A"
    %endif
    times 1 - ($ - %%insn_0812a) db 0
    %if ($ - %%fragment_start) != 85
        %error "SIZE_080D6"
    %endif
%endmacro
