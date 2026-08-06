; Linear entry 03EB8 (1000:3eb8)
; Ghidra working symbol: FUN_1000_3eb8
; Verified GRV RETURNSCRIPT (43h): restores the parent context and returns a byte result.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_return_from_child_script_part_00 0
    %%fragment_start:
grv_return_from_child_script:
    %%insn_03eb8:
    lodsb ; 03EB8 AC
    %if ($ - %%insn_03eb8) > 1
        %error "LONG_03EB8"
    %endif
    times 1 - ($ - %%insn_03eb8) db 0
    %%insn_03eb9:
    mov [bp-0x235c],al ; 03EB9 8886A4DC
    %if ($ - %%insn_03eb9) > 4
        %error "LONG_03EB9"
    %endif
    times 4 - ($ - %%insn_03eb9) db 0
    %%insn_03ebd:
    push es ; 03EBD 06
    %if ($ - %%insn_03ebd) > 1
        %error "LONG_03EBD"
    %endif
    times 1 - ($ - %%insn_03ebd) db 0
    %%insn_03ebe:
    mov ds,word [bp-0x2aae] ; 03EBE 8E9E52D5
    %if ($ - %%insn_03ebe) > 4
        %error "LONG_03EBE"
    %endif
    times 4 - ($ - %%insn_03ebe) db 0
    %%insn_03ec2:
    mov es,word [bp-0x2aae] ; 03EC2 8E8652D5
    %if ($ - %%insn_03ec2) > 4
        %error "LONG_03EC2"
    %endif
    times 4 - ($ - %%insn_03ec2) db 0
    %%insn_03ec6:
    mov di,0xdca9 ; 03EC6 BFA9DC
    %if ($ - %%insn_03ec6) > 3
        %error "LONG_03EC6"
    %endif
    times 3 - ($ - %%insn_03ec6) db 0
    %%insn_03ec9:
    mov si,0xda22 ; 03EC9 BE22DA
    %if ($ - %%insn_03ec9) > 3
        %error "LONG_03EC9"
    %endif
    times 3 - ($ - %%insn_03ec9) db 0
    %%insn_03ecc:
    mov cx,0x180 ; 03ECC B98001
    %if ($ - %%insn_03ecc) > 3
        %error "LONG_03ECC"
    %endif
    times 3 - ($ - %%insn_03ecc) db 0
    %%insn_03ecf:
    rep movsb ; 03ECF F3A4
    %if ($ - %%insn_03ecf) > 2
        %error "LONG_03ECF"
    %endif
    times 2 - ($ - %%insn_03ecf) db 0
    %%insn_03ed1:
    pop es ; 03ED1 07
    %if ($ - %%insn_03ed1) > 1
        %error "LONG_03ED1"
    %endif
    times 1 - ($ - %%insn_03ed1) db 0
    %%insn_03ed2:
    mov ax,[bp-0x2654] ; 03ED2 8B86ACD9
    %if ($ - %%insn_03ed2) > 4
        %error "LONG_03ED2"
    %endif
    times 4 - ($ - %%insn_03ed2) db 0
    %%insn_03ed6:
    mov [bp-0x21d9],ax ; 03ED6 898627DE
    %if ($ - %%insn_03ed6) > 4
        %error "LONG_03ED6"
    %endif
    times 4 - ($ - %%insn_03ed6) db 0
    %%insn_03eda:
    mov si,[bp-0x2652] ; 03EDA 8BB6AED9
    %if ($ - %%insn_03eda) > 4
        %error "LONG_03EDA"
    %endif
    times 4 - ($ - %%insn_03eda) db 0
    %%insn_03ede:
    mov word [bp-0x2652],0x0 ; 03EDE C786AED90000
    %if ($ - %%insn_03ede) > 6
        %error "LONG_03EDE"
    %endif
    times 6 - ($ - %%insn_03ede) db 0
    %%insn_03ee4:
    push si ; 03EE4 56
    %if ($ - %%insn_03ee4) > 1
        %error "LONG_03EE4"
    %endif
    times 1 - ($ - %%insn_03ee4) db 0
    %%insn_03ee5:
    call 0x3a5b ; 03EE5 E873FB
    %if ($ - %%insn_03ee5) > 3
        %error "LONG_03EE5"
    %endif
    times 3 - ($ - %%insn_03ee5) db 0
    %%insn_03ee8:
    pop si ; 03EE8 5E
    %if ($ - %%insn_03ee8) > 1
        %error "LONG_03EE8"
    %endif
    times 1 - ($ - %%insn_03ee8) db 0
    %%insn_03ee9:
    ret ; 03EE9 C3
    %if ($ - %%insn_03ee9) > 1
        %error "LONG_03EE9"
    %endif
    times 1 - ($ - %%insn_03ee9) db 0
    %if ($ - %%fragment_start) != 50
        %error "SIZE_03EB8"
    %endif
%endmacro
