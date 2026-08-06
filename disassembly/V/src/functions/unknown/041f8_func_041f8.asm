; Linear entry 041F8 (1000:41f8)
; Ghidra working symbol: FUN_1000_41f8
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_041f8_part_00 0
    %%fragment_start:
func_041f8:
    %%insn_041f8:
    call 0x400a ; 041F8 E80FFE
    %if ($ - %%insn_041f8) > 3
        %error "LONG_041F8"
    %endif
    times 3 - ($ - %%insn_041f8) db 0
    %%insn_041fb:
    mov bx,0xdba2 ; 041FB BBA2DB
    %if ($ - %%insn_041fb) > 3
        %error "LONG_041FB"
    %endif
    times 3 - ($ - %%insn_041fb) db 0
    db 0x03, 0xD8 ; 041FE 03D8 | add bx,ax | encoding preserved
    db 0x33, 0xD2 ; 04200 33D2 | xor dx,dx | encoding preserved
    %%insn_04202:
    call 0x4016 ; 04202 E811FE
    %if ($ - %%insn_04202) > 3
        %error "LONG_04202"
    %endif
    times 3 - ($ - %%insn_04202) db 0
    %%insn_04205:
    cmp al,[ss:bx] ; 04205 363A07
    %if ($ - %%insn_04205) > 3
        %error "LONG_04205"
    %endif
    times 3 - ($ - %%insn_04205) db 0
    %%insn_04208:
    jz short 0x420c ; 04208 7402
    %if ($ - %%insn_04208) > 2
        %error "LONG_04208"
    %endif
    times 2 - ($ - %%insn_04208) db 0
    %%insn_0420a:
    inc dl ; 0420A FEC2
    %if ($ - %%insn_0420a) > 2
        %error "LONG_0420A"
    %endif
    times 2 - ($ - %%insn_0420a) db 0
    %%insn_0420c:
    inc bx ; 0420C 43
    %if ($ - %%insn_0420c) > 1
        %error "LONG_0420C"
    %endif
    times 1 - ($ - %%insn_0420c) db 0
    %%insn_0420d:
    cmp dh,0x80 ; 0420D 80FE80
    %if ($ - %%insn_0420d) > 3
        %error "LONG_0420D"
    %endif
    times 3 - ($ - %%insn_0420d) db 0
    %%insn_04210:
    jc short 0x4202 ; 04210 72F0
    %if ($ - %%insn_04210) > 2
        %error "LONG_04210"
    %endif
    times 2 - ($ - %%insn_04210) db 0
    db 0x22, 0xD2 ; 04212 22D2 | and dl,dl | encoding preserved
    %%insn_04214:
    jnz short 0x421b ; 04214 7505
    %if ($ - %%insn_04214) > 2
        %error "LONG_04214"
    %endif
    times 2 - ($ - %%insn_04214) db 0
    %%insn_04216:
    add si,0x2 ; 04216 83C602
    %if ($ - %%insn_04216) > 3
        %error "LONG_04216"
    %endif
    times 3 - ($ - %%insn_04216) db 0
    %%insn_04219:
    jmp short 0x421d ; 04219 EB02
    %if ($ - %%insn_04219) > 2
        %error "LONG_04219"
    %endif
    times 2 - ($ - %%insn_04219) db 0
    %%insn_0421b:
    mov si,[si] ; 0421B 8B34
    %if ($ - %%insn_0421b) > 2
        %error "LONG_0421B"
    %endif
    times 2 - ($ - %%insn_0421b) db 0
    %%insn_0421d:
    ret ; 0421D C3
    %if ($ - %%insn_0421d) > 1
        %error "LONG_0421D"
    %endif
    times 1 - ($ - %%insn_0421d) db 0
    %if ($ - %%fragment_start) != 38
        %error "SIZE_041F8"
    %endif
%endmacro
