; Linear entry 03EEA (1000:3eea)
; Ghidra working symbol: FUN_1000_3eea
; Verified opcode 3Ch implementation: probes save.0 through save.9 and writes count/slot variables.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_check_valid_saves_part_00 0
    %%fragment_start:
grv_check_valid_saves:
    %%insn_03eea:
    push ds ; 03EEA 1E
    %if ($ - %%insn_03eea) > 1
        %error "LONG_03EEA"
    %endif
    times 1 - ($ - %%insn_03eea) db 0
    %%insn_03eeb:
    mov ds,word [bp-0x2aae] ; 03EEB 8E9E52D5
    %if ($ - %%insn_03eeb) > 4
        %error "LONG_03EEB"
    %endif
    times 4 - ($ - %%insn_03eeb) db 0
    %%insn_03eef:
    mov byte [bp-0x235a],0x0 ; 03EEF C686A6DC00
    %if ($ - %%insn_03eef) > 5
        %error "LONG_03EEF"
    %endif
    times 5 - ($ - %%insn_03eef) db 0
    %%insn_03ef4:
    mov byte [bp-0x271f],0x30 ; 03EF4 C686E1D830
    %if ($ - %%insn_03ef4) > 5
        %error "LONG_03EF4"
    %endif
    times 5 - ($ - %%insn_03ef4) db 0
    %%insn_03ef9:
    mov di,0xdba2 ; 03EF9 BFA2DB
    %if ($ - %%insn_03ef9) > 3
        %error "LONG_03EF9"
    %endif
    times 3 - ($ - %%insn_03ef9) db 0
    %%insn_03efc:
    mov byte [ss:di],0x0 ; 03EFC 36C60500
    %if ($ - %%insn_03efc) > 4
        %error "LONG_03EFC"
    %endif
    times 4 - ($ - %%insn_03efc) db 0
    %%insn_03f00:
    mov dx,0xd8db ; 03F00 BADBD8
    %if ($ - %%insn_03f00) > 3
        %error "LONG_03F00"
    %endif
    times 3 - ($ - %%insn_03f00) db 0
    %%insn_03f03:
    call 0x3a31 ; 03F03 E82BFB
    %if ($ - %%insn_03f03) > 3
        %error "LONG_03F03"
    %endif
    times 3 - ($ - %%insn_03f03) db 0
    db 0x3D, 0xFF, 0xFF ; 03F06 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_03f09:
    jz short 0x3f15 ; 03F09 740A
    %if ($ - %%insn_03f09) > 2
        %error "LONG_03F09"
    %endif
    times 2 - ($ - %%insn_03f09) db 0
    %%insn_03f0b:
    call 0x3a47 ; 03F0B E839FB
    %if ($ - %%insn_03f0b) > 3
        %error "LONG_03F0B"
    %endif
    times 3 - ($ - %%insn_03f0b) db 0
    %%insn_03f0e:
    inc byte [bp-0x235a] ; 03F0E FE86A6DC
    %if ($ - %%insn_03f0e) > 4
        %error "LONG_03F0E"
    %endif
    times 4 - ($ - %%insn_03f0e) db 0
    %%insn_03f12:
    inc byte [ss:di] ; 03F12 36FE05
    %if ($ - %%insn_03f12) > 3
        %error "LONG_03F12"
    %endif
    times 3 - ($ - %%insn_03f12) db 0
    %%insn_03f15:
    inc di ; 03F15 47
    %if ($ - %%insn_03f15) > 1
        %error "LONG_03F15"
    %endif
    times 1 - ($ - %%insn_03f15) db 0
    %%insn_03f16:
    inc byte [bp-0x271f] ; 03F16 FE86E1D8
    %if ($ - %%insn_03f16) > 4
        %error "LONG_03F16"
    %endif
    times 4 - ($ - %%insn_03f16) db 0
    %%insn_03f1a:
    cmp byte [bp-0x271f],0x3a ; 03F1A 80BEE1D83A
    %if ($ - %%insn_03f1a) > 5
        %error "LONG_03F1A"
    %endif
    times 5 - ($ - %%insn_03f1a) db 0
    %%insn_03f1f:
    jnz short 0x3efc ; 03F1F 75DB
    %if ($ - %%insn_03f1f) > 2
        %error "LONG_03F1F"
    %endif
    times 2 - ($ - %%insn_03f1f) db 0
    %%insn_03f21:
    pop ds ; 03F21 1F
    %if ($ - %%insn_03f21) > 1
        %error "LONG_03F21"
    %endif
    times 1 - ($ - %%insn_03f21) db 0
    %%insn_03f22:
    ret ; 03F22 C3
    %if ($ - %%insn_03f22) > 1
        %error "LONG_03F22"
    %endif
    times 1 - ($ - %%insn_03f22) db 0
    %if ($ - %%fragment_start) != 57
        %error "SIZE_03EEA"
    %endif
%endmacro
