; Linear entry 0293B (1000:293b)
; Ghidra working symbol: FUN_1000_293b
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0293b_part_00 0
    %%fragment_start:
func_0293b:
    %%insn_0293b:
    cmp word [bp-0x1b8a],0x80 ; 0293B 81BE76E48000
    %if ($ - %%insn_0293b) > 6
        %error "LONG_0293B"
    %endif
    times 6 - ($ - %%insn_0293b) db 0
    %%insn_02941:
    jnz short 0x2944 ; 02941 7501
    %if ($ - %%insn_02941) > 2
        %error "LONG_02941"
    %endif
    times 2 - ($ - %%insn_02941) db 0
    %%insn_02943:
    ret ; 02943 C3
    %if ($ - %%insn_02943) > 1
        %error "LONG_02943"
    %endif
    times 1 - ($ - %%insn_02943) db 0
    %%insn_02944:
    push es ; 02944 06
    %if ($ - %%insn_02944) > 1
        %error "LONG_02944"
    %endif
    times 1 - ($ - %%insn_02944) db 0
    %%insn_02945:
    cmp byte [bp-0x1f3a],0x0 ; 02945 80BEC6E000
    %if ($ - %%insn_02945) > 5
        %error "LONG_02945"
    %endif
    times 5 - ($ - %%insn_02945) db 0
    %%insn_0294a:
    jnz short 0x2995 ; 0294A 7549
    %if ($ - %%insn_0294a) > 2
        %error "LONG_0294A"
    %endif
    times 2 - ($ - %%insn_0294a) db 0
    %%insn_0294c:
    cmp word [bp-0x309c],0x3 ; 0294C 83BE64CF03
    %if ($ - %%insn_0294c) > 5
        %error "LONG_0294C"
    %endif
    times 5 - ($ - %%insn_0294c) db 0
    %%insn_02951:
    jz short 0x2966 ; 02951 7413
    %if ($ - %%insn_02951) > 2
        %error "LONG_02951"
    %endif
    times 2 - ($ - %%insn_02951) db 0
    db 0x33, 0xC0 ; 02953 33C0 | xor ax,ax | encoding preserved
    %%insn_02955:
    push ax ; 02955 50
    %if ($ - %%insn_02955) > 1
        %error "LONG_02955"
    %endif
    times 1 - ($ - %%insn_02955) db 0
    %%insn_02956:
    push word [bp-0x1bcc] ; 02956 FFB634E4
    %if ($ - %%insn_02956) > 4
        %error "LONG_02956"
    %endif
    times 4 - ($ - %%insn_02956) db 0
    %%insn_0295a:
    call word 0x702:word 0xc74 ; 0295A 9A740C0207
    %if ($ - %%insn_0295a) > 5
        %error "LONG_0295A"
    %endif
    times 5 - ($ - %%insn_0295a) db 0
    %%insn_0295f:
    add sp,0x4 ; 0295F 83C404
    %if ($ - %%insn_0295f) > 3
        %error "LONG_0295F"
    %endif
    times 3 - ($ - %%insn_0295f) db 0
    %%insn_02962:
    mov [bp-0x309c],ax ; 02962 898664CF
    %if ($ - %%insn_02962) > 4
        %error "LONG_02962"
    %endif
    times 4 - ($ - %%insn_02962) db 0
    %%insn_02966:
    cmp word [bp-0x309c],0x3 ; 02966 83BE64CF03
    %if ($ - %%insn_02966) > 5
        %error "LONG_02966"
    %endif
    times 5 - ($ - %%insn_02966) db 0
    %%insn_0296b:
    jnz short 0x2991 ; 0296B 7524
    %if ($ - %%insn_0296b) > 2
        %error "LONG_0296B"
    %endif
    times 2 - ($ - %%insn_0296b) db 0
    %%insn_0296d:
    cmp word [bp-0x309a],0x3 ; 0296D 83BE66CF03
    %if ($ - %%insn_0296d) > 5
        %error "LONG_0296D"
    %endif
    times 5 - ($ - %%insn_0296d) db 0
    %%insn_02972:
    jz short 0x2988 ; 02972 7414
    %if ($ - %%insn_02972) > 2
        %error "LONG_02972"
    %endif
    times 2 - ($ - %%insn_02972) db 0
    %%insn_02974:
    mov ax,0x1 ; 02974 B80100
    %if ($ - %%insn_02974) > 3
        %error "LONG_02974"
    %endif
    times 3 - ($ - %%insn_02974) db 0
    %%insn_02977:
    push ax ; 02977 50
    %if ($ - %%insn_02977) > 1
        %error "LONG_02977"
    %endif
    times 1 - ($ - %%insn_02977) db 0
    %%insn_02978:
    push word [bp-0x1bcc] ; 02978 FFB634E4
    %if ($ - %%insn_02978) > 4
        %error "LONG_02978"
    %endif
    times 4 - ($ - %%insn_02978) db 0
    %%insn_0297c:
    call word 0x702:word 0xc74 ; 0297C 9A740C0207
    %if ($ - %%insn_0297c) > 5
        %error "LONG_0297C"
    %endif
    times 5 - ($ - %%insn_0297c) db 0
    %%insn_02981:
    add sp,0x4 ; 02981 83C404
    %if ($ - %%insn_02981) > 3
        %error "LONG_02981"
    %endif
    times 3 - ($ - %%insn_02981) db 0
    %%insn_02984:
    mov [bp-0x309a],ax ; 02984 898666CF
    %if ($ - %%insn_02984) > 4
        %error "LONG_02984"
    %endif
    times 4 - ($ - %%insn_02984) db 0
    %%insn_02988:
    cmp word [bp-0x309a],0x3 ; 02988 83BE66CF03
    %if ($ - %%insn_02988) > 5
        %error "LONG_02988"
    %endif
    times 5 - ($ - %%insn_02988) db 0
    %%insn_0298d:
    jnz short 0x2991 ; 0298D 7502
    %if ($ - %%insn_0298d) > 2
        %error "LONG_0298D"
    %endif
    times 2 - ($ - %%insn_0298d) db 0
    %%insn_0298f:
    pop es ; 0298F 07
    %if ($ - %%insn_0298f) > 1
        %error "LONG_0298F"
    %endif
    times 1 - ($ - %%insn_0298f) db 0
    %%insn_02990:
    ret ; 02990 C3
    %if ($ - %%insn_02990) > 1
        %error "LONG_02990"
    %endif
    times 1 - ($ - %%insn_02990) db 0
    %%insn_02991:
    jmp short 0x2945 ; 02991 EBB2
    %if ($ - %%insn_02991) > 2
        %error "LONG_02991"
    %endif
    times 2 - ($ - %%insn_02991) db 0
    %if ($ - %%fragment_start) != 88
        %error "SIZE_0293B"
    %endif
%endmacro

%macro emit_func_0293b_part_01 0
    %%fragment_start:
    %%insn_02995:
    pop es ; 02995 07
    %if ($ - %%insn_02995) > 1
        %error "LONG_02995"
    %endif
    times 1 - ($ - %%insn_02995) db 0
    %%insn_02996:
    ret ; 02996 C3
    %if ($ - %%insn_02996) > 1
        %error "LONG_02996"
    %endif
    times 1 - ($ - %%insn_02996) db 0
    %if ($ - %%fragment_start) != 2
        %error "SIZE_02995"
    %endif
%endmacro
