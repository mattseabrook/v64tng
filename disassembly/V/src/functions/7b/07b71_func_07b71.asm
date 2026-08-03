; Linear entry 07B71 (1702:0b51)
; Ghidra working symbol: FUN_1702_0b51
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07b71_part_00 0
    %%fragment_start:
func_07b71:
    %%insn_07b71:
    push bp ; 07B71 55
    %if ($ - %%insn_07b71) > 1
        %error "LONG_07B71"
    %endif
    times 1 - ($ - %%insn_07b71) db 0
    db 0x8B, 0xEC ; 07B72 8BEC | mov bp,sp | encoding preserved
    %%insn_07b74:
    push ax ; 07B74 50
    %if ($ - %%insn_07b74) > 1
        %error "LONG_07B74"
    %endif
    times 1 - ($ - %%insn_07b74) db 0
    %%insn_07b75:
    push bp ; 07B75 55
    %if ($ - %%insn_07b75) > 1
        %error "LONG_07B75"
    %endif
    times 1 - ($ - %%insn_07b75) db 0
    db 0x8B, 0xEC ; 07B76 8BEC | mov bp,sp | encoding preserved
    %%insn_07b78:
    mov word [bp+0x2],0x702 ; 07B78 C746020207
    %if ($ - %%insn_07b78) > 5
        %error "LONG_07B78"
    %endif
    times 5 - ($ - %%insn_07b78) db 0
    %%insn_07b7d:
    pop bp ; 07B7D 5D
    %if ($ - %%insn_07b7d) > 1
        %error "LONG_07B7D"
    %endif
    times 1 - ($ - %%insn_07b7d) db 0
    %%insn_07b7e:
    push ax ; 07B7E 50
    %if ($ - %%insn_07b7e) > 1
        %error "LONG_07B7E"
    %endif
    times 1 - ($ - %%insn_07b7e) db 0
    %%insn_07b7f:
    push bp ; 07B7F 55
    %if ($ - %%insn_07b7f) > 1
        %error "LONG_07B7F"
    %endif
    times 1 - ($ - %%insn_07b7f) db 0
    db 0x8B, 0xEC ; 07B80 8BEC | mov bp,sp | encoding preserved
    %%insn_07b82:
    mov word [bp+0x2],0xa13 ; 07B82 C74602130A
    %if ($ - %%insn_07b82) > 5
        %error "LONG_07B82"
    %endif
    times 5 - ($ - %%insn_07b82) db 0
    %%insn_07b87:
    pop bp ; 07B87 5D
    %if ($ - %%insn_07b87) > 1
        %error "LONG_07B87"
    %endif
    times 1 - ($ - %%insn_07b87) db 0
    %%insn_07b88:
    push word [bp+0x6] ; 07B88 FF7606
    %if ($ - %%insn_07b88) > 3
        %error "LONG_07B88"
    %endif
    times 3 - ($ - %%insn_07b88) db 0
    %%insn_07b8b:
    mov ax,0x64 ; 07B8B B86400
    %if ($ - %%insn_07b8b) > 3
        %error "LONG_07B8B"
    %endif
    times 3 - ($ - %%insn_07b8b) db 0
    %%insn_07b8e:
    push cs ; 07B8E 0E
    %if ($ - %%insn_07b8e) > 1
        %error "LONG_07B8E"
    %endif
    times 1 - ($ - %%insn_07b8e) db 0
    %%insn_07b8f:
    call 0x7418 ; 07B8F E886F8
    %if ($ - %%insn_07b8f) > 3
        %error "LONG_07B8F"
    %endif
    times 3 - ($ - %%insn_07b8f) db 0
    %%insn_07b92:
    add sp,0x6 ; 07B92 83C406
    %if ($ - %%insn_07b92) > 3
        %error "LONG_07B92"
    %endif
    times 3 - ($ - %%insn_07b92) db 0
    %%insn_07b95:
    pop bp ; 07B95 5D
    %if ($ - %%insn_07b95) > 1
        %error "LONG_07B95"
    %endif
    times 1 - ($ - %%insn_07b95) db 0
    %%insn_07b96:
    retf ; 07B96 CB
    %if ($ - %%insn_07b96) > 1
        %error "LONG_07B96"
    %endif
    times 1 - ($ - %%insn_07b96) db 0
    %if ($ - %%fragment_start) != 38
        %error "SIZE_07B71"
    %endif
%endmacro
