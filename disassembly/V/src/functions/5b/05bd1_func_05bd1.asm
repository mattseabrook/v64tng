; Linear entry 05BD1 (1000:5bd1)
; Ghidra working symbol: FUN_1000_5bd1
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05bd1_part_00 0
    %%fragment_start:
func_05bd1:
    %%insn_05bd1:
    push ds ; 05BD1 1E
    %if ($ - %%insn_05bd1) > 1
        %error "LONG_05BD1"
    %endif
    times 1 - ($ - %%insn_05bd1) db 0
    %%insn_05bd2:
    push es ; 05BD2 06
    %if ($ - %%insn_05bd2) > 1
        %error "LONG_05BD2"
    %endif
    times 1 - ($ - %%insn_05bd2) db 0
    %%insn_05bd3:
    mov ax,[bp-0x1bd2] ; 05BD3 8B862EE4
    %if ($ - %%insn_05bd3) > 4
        %error "LONG_05BD3"
    %endif
    times 4 - ($ - %%insn_05bd3) db 0
    %%insn_05bd7:
    mov [bp-0x1bd0],ax ; 05BD7 898630E4
    %if ($ - %%insn_05bd7) > 4
        %error "LONG_05BD7"
    %endif
    times 4 - ($ - %%insn_05bd7) db 0
    %%insn_05bdb:
    mov cx,0x3a98 ; 05BDB B9983A
    %if ($ - %%insn_05bdb) > 3
        %error "LONG_05BDB"
    %endif
    times 3 - ($ - %%insn_05bdb) db 0
    %%insn_05bde:
    call 0x5ea9 ; 05BDE E8C802
    %if ($ - %%insn_05bde) > 3
        %error "LONG_05BDE"
    %endif
    times 3 - ($ - %%insn_05bde) db 0
    %%insn_05be1:
    mov [bp-0x1bd2],ax ; 05BE1 89862EE4
    %if ($ - %%insn_05be1) > 4
        %error "LONG_05BE1"
    %endif
    times 4 - ($ - %%insn_05be1) db 0
    %%insn_05be5:
    mov ds,ax ; 05BE5 8ED8
    %if ($ - %%insn_05be5) > 2
        %error "LONG_05BE5"
    %endif
    times 2 - ($ - %%insn_05be5) db 0
    db 0x33, 0xD2 ; 05BE7 33D2 | xor dx,dx | encoding preserved
    %%insn_05be9:
    mov cx,0x3a98 ; 05BE9 B9983A
    %if ($ - %%insn_05be9) > 3
        %error "LONG_05BE9"
    %endif
    times 3 - ($ - %%insn_05be9) db 0
    %%insn_05bec:
    call 0x39ee ; 05BEC E8FFDD
    %if ($ - %%insn_05bec) > 3
        %error "LONG_05BEC"
    %endif
    times 3 - ($ - %%insn_05bec) db 0
    %%insn_05bef:
    mov ax,[bp-0x1bd2] ; 05BEF 8B862EE4
    %if ($ - %%insn_05bef) > 4
        %error "LONG_05BEF"
    %endif
    times 4 - ($ - %%insn_05bef) db 0
    %%insn_05bf3:
    call 0x5c06 ; 05BF3 E81000
    %if ($ - %%insn_05bf3) > 3
        %error "LONG_05BF3"
    %endif
    times 3 - ($ - %%insn_05bf3) db 0
    %%insn_05bf6:
    mov es,word [bp-0x1bd0] ; 05BF6 8E8630E4
    %if ($ - %%insn_05bf6) > 4
        %error "LONG_05BF6"
    %endif
    times 4 - ($ - %%insn_05bf6) db 0
    %%insn_05bfa:
    call 0x5e8d ; 05BFA E89002
    %if ($ - %%insn_05bfa) > 3
        %error "LONG_05BFA"
    %endif
    times 3 - ($ - %%insn_05bfa) db 0
    %%insn_05bfd:
    mov word [bp-0x1bd0],0x0 ; 05BFD C78630E40000
    %if ($ - %%insn_05bfd) > 6
        %error "LONG_05BFD"
    %endif
    times 6 - ($ - %%insn_05bfd) db 0
    %%insn_05c03:
    pop es ; 05C03 07
    %if ($ - %%insn_05c03) > 1
        %error "LONG_05C03"
    %endif
    times 1 - ($ - %%insn_05c03) db 0
    %%insn_05c04:
    pop ds ; 05C04 1F
    %if ($ - %%insn_05c04) > 1
        %error "LONG_05C04"
    %endif
    times 1 - ($ - %%insn_05c04) db 0
    %%insn_05c05:
    ret ; 05C05 C3
    %if ($ - %%insn_05c05) > 1
        %error "LONG_05C05"
    %endif
    times 1 - ($ - %%insn_05c05) db 0
    %if ($ - %%fragment_start) != 53
        %error "SIZE_05BD1"
    %endif
%endmacro
