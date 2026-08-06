; Linear entry 054AD (1000:54ad)
; Ghidra working symbol: FUN_1000_54ad
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_054ad_part_00 0
    %%fragment_start:
func_054ad:
    %%insn_054ad:
    cmp word [bp-0x30de],0x0 ; 054AD 83BE22CF00
    %if ($ - %%insn_054ad) > 5
        %error "LONG_054AD"
    %endif
    times 5 - ($ - %%insn_054ad) db 0
    %%insn_054b2:
    jz short 0x54b5 ; 054B2 7401
    %if ($ - %%insn_054b2) > 2
        %error "LONG_054B2"
    %endif
    times 2 - ($ - %%insn_054b2) db 0
    %%insn_054b4:
    ret ; 054B4 C3
    %if ($ - %%insn_054b4) > 1
        %error "LONG_054B4"
    %endif
    times 1 - ($ - %%insn_054b4) db 0
    %%insn_054b5:
    push ds ; 054B5 1E
    %if ($ - %%insn_054b5) > 1
        %error "LONG_054B5"
    %endif
    times 1 - ($ - %%insn_054b5) db 0
    %%insn_054b6:
    push si ; 054B6 56
    %if ($ - %%insn_054b6) > 1
        %error "LONG_054B6"
    %endif
    times 1 - ($ - %%insn_054b6) db 0
    %%insn_054b7:
    push di ; 054B7 57
    %if ($ - %%insn_054b7) > 1
        %error "LONG_054B7"
    %endif
    times 1 - ($ - %%insn_054b7) db 0
    %%insn_054b8:
    mov ds,word [bp-0x2aae] ; 054B8 8E9E52D5
    %if ($ - %%insn_054b8) > 4
        %error "LONG_054B8"
    %endif
    times 4 - ($ - %%insn_054b8) db 0
    %%insn_054bc:
    mov dx,0xd8db ; 054BC BADBD8
    %if ($ - %%insn_054bc) > 3
        %error "LONG_054BC"
    %endif
    times 3 - ($ - %%insn_054bc) db 0
    %%insn_054bf:
    call 0x3a31 ; 054BF E86FE5
    %if ($ - %%insn_054bf) > 3
        %error "LONG_054BF"
    %endif
    times 3 - ($ - %%insn_054bf) db 0
    db 0x3D, 0xFF, 0xFF ; 054C2 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_054c5:
    jz short 0x54d8 ; 054C5 7411
    %if ($ - %%insn_054c5) > 2
        %error "LONG_054C5"
    %endif
    times 2 - ($ - %%insn_054c5) db 0
    %%insn_054c7:
    mov dx,0xe2e6 ; 054C7 BAE6E2
    %if ($ - %%insn_054c7) > 3
        %error "LONG_054C7"
    %endif
    times 3 - ($ - %%insn_054c7) db 0
    %%insn_054ca:
    mov cx,0x80 ; 054CA B98000
    %if ($ - %%insn_054ca) > 3
        %error "LONG_054CA"
    %endif
    times 3 - ($ - %%insn_054ca) db 0
    %%insn_054cd:
    call 0x3a51 ; 054CD E881E5
    %if ($ - %%insn_054cd) > 3
        %error "LONG_054CD"
    %endif
    times 3 - ($ - %%insn_054cd) db 0
    %%insn_054d0:
    call 0x3a47 ; 054D0 E874E5
    %if ($ - %%insn_054d0) > 3
        %error "LONG_054D0"
    %endif
    times 3 - ($ - %%insn_054d0) db 0
    %%insn_054d3:
    mov dx,0xe2e6 ; 054D3 BAE6E2
    %if ($ - %%insn_054d3) > 3
        %error "LONG_054D3"
    %endif
    times 3 - ($ - %%insn_054d3) db 0
    %%insn_054d6:
    jmp short 0x54db ; 054D6 EB03
    %if ($ - %%insn_054d6) > 2
        %error "LONG_054D6"
    %endif
    times 2 - ($ - %%insn_054d6) db 0
    %%insn_054d8:
    mov dx,0xe15a ; 054D8 BA5AE1
    %if ($ - %%insn_054d8) > 3
        %error "LONG_054D8"
    %endif
    times 3 - ($ - %%insn_054d8) db 0
    %%insn_054db:
    mov di,0xe266 ; 054DB BF66E2
    %if ($ - %%insn_054db) > 3
        %error "LONG_054DB"
    %endif
    times 3 - ($ - %%insn_054db) db 0
    db 0x8B, 0xF2 ; 054DE 8BF2 | mov si,dx | encoding preserved
    %%insn_054e0:
    lodsb ; 054E0 AC
    %if ($ - %%insn_054e0) > 1
        %error "LONG_054E0"
    %endif
    times 1 - ($ - %%insn_054e0) db 0
    %%insn_054e1:
    add al,0x30 ; 054E1 0430
    %if ($ - %%insn_054e1) > 2
        %error "LONG_054E1"
    %endif
    times 2 - ($ - %%insn_054e1) db 0
    %%insn_054e3:
    cmp al,0x24 ; 054E3 3C24
    %if ($ - %%insn_054e3) > 2
        %error "LONG_054E3"
    %endif
    times 2 - ($ - %%insn_054e3) db 0
    %%insn_054e5:
    jz short 0x54ec ; 054E5 7405
    %if ($ - %%insn_054e5) > 2
        %error "LONG_054E5"
    %endif
    times 2 - ($ - %%insn_054e5) db 0
    %%insn_054e7:
    mov [di],al ; 054E7 8805
    %if ($ - %%insn_054e7) > 2
        %error "LONG_054E7"
    %endif
    times 2 - ($ - %%insn_054e7) db 0
    %%insn_054e9:
    inc di ; 054E9 47
    %if ($ - %%insn_054e9) > 1
        %error "LONG_054E9"
    %endif
    times 1 - ($ - %%insn_054e9) db 0
    %%insn_054ea:
    jmp short 0x54e0 ; 054EA EBF4
    %if ($ - %%insn_054ea) > 2
        %error "LONG_054EA"
    %endif
    times 2 - ($ - %%insn_054ea) db 0
    %%insn_054ec:
    mov byte [di],0x0 ; 054EC C60500
    %if ($ - %%insn_054ec) > 3
        %error "LONG_054EC"
    %endif
    times 3 - ($ - %%insn_054ec) db 0
    %%insn_054ef:
    mov dx,0xe266 ; 054EF BA66E2
    %if ($ - %%insn_054ef) > 3
        %error "LONG_054EF"
    %endif
    times 3 - ($ - %%insn_054ef) db 0
    %%insn_054f2:
    call 0x5523 ; 054F2 E82E00
    %if ($ - %%insn_054f2) > 3
        %error "LONG_054F2"
    %endif
    times 3 - ($ - %%insn_054f2) db 0
    %%insn_054f5:
    pop di ; 054F5 5F
    %if ($ - %%insn_054f5) > 1
        %error "LONG_054F5"
    %endif
    times 1 - ($ - %%insn_054f5) db 0
    %%insn_054f6:
    pop si ; 054F6 5E
    %if ($ - %%insn_054f6) > 1
        %error "LONG_054F6"
    %endif
    times 1 - ($ - %%insn_054f6) db 0
    %%insn_054f7:
    pop ds ; 054F7 1F
    %if ($ - %%insn_054f7) > 1
        %error "LONG_054F7"
    %endif
    times 1 - ($ - %%insn_054f7) db 0
    %%insn_054f8:
    ret ; 054F8 C3
    %if ($ - %%insn_054f8) > 1
        %error "LONG_054F8"
    %endif
    times 1 - ($ - %%insn_054f8) db 0
    %if ($ - %%fragment_start) != 76
        %error "SIZE_054AD"
    %endif
%endmacro
