; Linear entry 0368C (1000:368c)
; Ghidra working symbol: FUN_1000_368c
; Verified XMS manager/version/free-memory query.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_query_xms_part_00 0
    %%fragment_start:
query_xms:
    %%insn_0368c:
    mov word [bp-0x2992],0x0 ; 0368C C7866ED60000
    %if ($ - %%insn_0368c) > 6
        %error "LONG_0368C"
    %endif
    times 6 - ($ - %%insn_0368c) db 0
    %%insn_03692:
    mov ax,0x4300 ; 03692 B80043
    %if ($ - %%insn_03692) > 3
        %error "LONG_03692"
    %endif
    times 3 - ($ - %%insn_03692) db 0
    %%insn_03695:
    int byte 0x2f ; 03695 CD2F
    %if ($ - %%insn_03695) > 2
        %error "LONG_03695"
    %endif
    times 2 - ($ - %%insn_03695) db 0
    %%insn_03697:
    cmp al,0x80 ; 03697 3C80
    %if ($ - %%insn_03697) > 2
        %error "LONG_03697"
    %endif
    times 2 - ($ - %%insn_03697) db 0
    %%insn_03699:
    jnz short 0x36d1 ; 03699 7536
    %if ($ - %%insn_03699) > 2
        %error "LONG_03699"
    %endif
    times 2 - ($ - %%insn_03699) db 0
    %%insn_0369b:
    mov word [bp-0x2992],0x1 ; 0369B C7866ED60100
    %if ($ - %%insn_0369b) > 6
        %error "LONG_0369B"
    %endif
    times 6 - ($ - %%insn_0369b) db 0
    %%insn_036a1:
    mov ax,0x4310 ; 036A1 B81043
    %if ($ - %%insn_036a1) > 3
        %error "LONG_036A1"
    %endif
    times 3 - ($ - %%insn_036a1) db 0
    %%insn_036a4:
    int byte 0x2f ; 036A4 CD2F
    %if ($ - %%insn_036a4) > 2
        %error "LONG_036A4"
    %endif
    times 2 - ($ - %%insn_036a4) db 0
    %%insn_036a6:
    mov [cs:0x3688],bx ; 036A6 2E891E8836
    %if ($ - %%insn_036a6) > 5
        %error "LONG_036A6"
    %endif
    times 5 - ($ - %%insn_036a6) db 0
    %%insn_036ab:
    mov word [cs:0x368a],es ; 036AB 2E8C068A36
    %if ($ - %%insn_036ab) > 5
        %error "LONG_036AB"
    %endif
    times 5 - ($ - %%insn_036ab) db 0
    %%insn_036b0:
    mov ah,0x0 ; 036B0 B400
    %if ($ - %%insn_036b0) > 2
        %error "LONG_036B0"
    %endif
    times 2 - ($ - %%insn_036b0) db 0
    %%insn_036b2:
    call word far [cs:0x3688] ; 036B2 2EFF1E8836
    %if ($ - %%insn_036b2) > 5
        %error "LONG_036B2"
    %endif
    times 5 - ($ - %%insn_036b2) db 0
    %%insn_036b7:
    mov [bp-0x2990],ax ; 036B7 898670D6
    %if ($ - %%insn_036b7) > 4
        %error "LONG_036B7"
    %endif
    times 4 - ($ - %%insn_036b7) db 0
    %%insn_036bb:
    mov ah,0x8 ; 036BB B408
    %if ($ - %%insn_036bb) > 2
        %error "LONG_036BB"
    %endif
    times 2 - ($ - %%insn_036bb) db 0
    %%insn_036bd:
    call word far [cs:0x3688] ; 036BD 2EFF1E8836
    %if ($ - %%insn_036bd) > 5
        %error "LONG_036BD"
    %endif
    times 5 - ($ - %%insn_036bd) db 0
    %%insn_036c2:
    mov [bp-0x298e],ax ; 036C2 898672D6
    %if ($ - %%insn_036c2) > 4
        %error "LONG_036C2"
    %endif
    times 4 - ($ - %%insn_036c2) db 0
    db 0x3D, 0x00, 0x00 ; 036C6 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_036c9:
    jnz short 0x36d1 ; 036C9 7506
    %if ($ - %%insn_036c9) > 2
        %error "LONG_036C9"
    %endif
    times 2 - ($ - %%insn_036c9) db 0
    %%insn_036cb:
    mov word [bp-0x2992],0x0 ; 036CB C7866ED60000
    %if ($ - %%insn_036cb) > 6
        %error "LONG_036CB"
    %endif
    times 6 - ($ - %%insn_036cb) db 0
    %%insn_036d1:
    ret ; 036D1 C3
    %if ($ - %%insn_036d1) > 1
        %error "LONG_036D1"
    %endif
    times 1 - ($ - %%insn_036d1) db 0
    %if ($ - %%fragment_start) != 70
        %error "SIZE_0368C"
    %endif
%endmacro
