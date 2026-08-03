; Linear entry 07613 (1702:05f3)
; Ghidra working symbol: FUN_1702_05f3
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07613_part_00 0
    %%fragment_start:
func_07613:
    %%insn_07613:
    push bp ; 07613 55
    %if ($ - %%insn_07613) > 1
        %error "LONG_07613"
    %endif
    times 1 - ($ - %%insn_07613) db 0
    db 0x8B, 0xEC ; 07614 8BEC | mov bp,sp | encoding preserved
    %%insn_07616:
    push ds ; 07616 1E
    %if ($ - %%insn_07616) > 1
        %error "LONG_07616"
    %endif
    times 1 - ($ - %%insn_07616) db 0
    %%insn_07617:
    push si ; 07617 56
    %if ($ - %%insn_07617) > 1
        %error "LONG_07617"
    %endif
    times 1 - ($ - %%insn_07617) db 0
    %%insn_07618:
    push di ; 07618 57
    %if ($ - %%insn_07618) > 1
        %error "LONG_07618"
    %endif
    times 1 - ($ - %%insn_07618) db 0
    %%insn_07619:
    mov ax,[bp+0x6] ; 07619 8B4606
    %if ($ - %%insn_07619) > 3
        %error "LONG_07619"
    %endif
    times 3 - ($ - %%insn_07619) db 0
    %%insn_0761c:
    mov dx,[bp+0x8] ; 0761C 8B5608
    %if ($ - %%insn_0761c) > 3
        %error "LONG_0761C"
    %endif
    times 3 - ($ - %%insn_0761c) db 0
    %%insn_0761f:
    mov bx,[bp+0xa] ; 0761F 8B5E0A
    %if ($ - %%insn_0761f) > 3
        %error "LONG_0761F"
    %endif
    times 3 - ($ - %%insn_0761f) db 0
    %%insn_07622:
    mov cx,[bp+0xc] ; 07622 8B4E0C
    %if ($ - %%insn_07622) > 3
        %error "LONG_07622"
    %endif
    times 3 - ($ - %%insn_07622) db 0
    db 0x0B, 0xC9 ; 07625 0BC9 | or cx,cx | encoding preserved
    %%insn_07627:
    jnz short 0x7631 ; 07627 7508
    %if ($ - %%insn_07627) > 2
        %error "LONG_07627"
    %endif
    times 2 - ($ - %%insn_07627) db 0
    db 0x0B, 0xD2 ; 07629 0BD2 | or dx,dx | encoding preserved
    %%insn_0762b:
    jz short 0x7655 ; 0762B 7428
    %if ($ - %%insn_0762b) > 2
        %error "LONG_0762B"
    %endif
    times 2 - ($ - %%insn_0762b) db 0
    db 0x0B, 0xDB ; 0762D 0BDB | or bx,bx | encoding preserved
    %%insn_0762f:
    jz short 0x7655 ; 0762F 7424
    %if ($ - %%insn_0762f) > 2
        %error "LONG_0762F"
    %endif
    times 2 - ($ - %%insn_0762f) db 0
    db 0x8B, 0xE9 ; 07631 8BE9 | mov bp,cx | encoding preserved
    %%insn_07633:
    mov cx,0x20 ; 07633 B92000
    %if ($ - %%insn_07633) > 3
        %error "LONG_07633"
    %endif
    times 3 - ($ - %%insn_07633) db 0
    db 0x33, 0xFF ; 07636 33FF | xor di,di | encoding preserved
    db 0x33, 0xF6 ; 07638 33F6 | xor si,si | encoding preserved
    %%insn_0763a:
    shl ax,1 ; 0763A D1E0
    %if ($ - %%insn_0763a) > 2
        %error "LONG_0763A"
    %endif
    times 2 - ($ - %%insn_0763a) db 0
    %%insn_0763c:
    rcl dx,1 ; 0763C D1D2
    %if ($ - %%insn_0763c) > 2
        %error "LONG_0763C"
    %endif
    times 2 - ($ - %%insn_0763c) db 0
    %%insn_0763e:
    rcl si,1 ; 0763E D1D6
    %if ($ - %%insn_0763e) > 2
        %error "LONG_0763E"
    %endif
    times 2 - ($ - %%insn_0763e) db 0
    %%insn_07640:
    rcl di,1 ; 07640 D1D7
    %if ($ - %%insn_07640) > 2
        %error "LONG_07640"
    %endif
    times 2 - ($ - %%insn_07640) db 0
    db 0x3B, 0xFD ; 07642 3BFD | cmp di,bp | encoding preserved
    %%insn_07644:
    jc short 0x7651 ; 07644 720B
    %if ($ - %%insn_07644) > 2
        %error "LONG_07644"
    %endif
    times 2 - ($ - %%insn_07644) db 0
    %%insn_07646:
    ja short 0x764c ; 07646 7704
    %if ($ - %%insn_07646) > 2
        %error "LONG_07646"
    %endif
    times 2 - ($ - %%insn_07646) db 0
    db 0x3B, 0xF3 ; 07648 3BF3 | cmp si,bx | encoding preserved
    %%insn_0764a:
    jc short 0x7651 ; 0764A 7205
    %if ($ - %%insn_0764a) > 2
        %error "LONG_0764A"
    %endif
    times 2 - ($ - %%insn_0764a) db 0
    db 0x2B, 0xF3 ; 0764C 2BF3 | sub si,bx | encoding preserved
    db 0x1B, 0xFD ; 0764E 1BFD | sbb di,bp | encoding preserved
    %%insn_07650:
    inc ax ; 07650 40
    %if ($ - %%insn_07650) > 1
        %error "LONG_07650"
    %endif
    times 1 - ($ - %%insn_07650) db 0
    %%insn_07651:
    loop short 0x763a ; 07651 E2E7
    %if ($ - %%insn_07651) > 2
        %error "LONG_07651"
    %endif
    times 2 - ($ - %%insn_07651) db 0
    %%insn_07653:
    jmp short 0x7659 ; 07653 EB04
    %if ($ - %%insn_07653) > 2
        %error "LONG_07653"
    %endif
    times 2 - ($ - %%insn_07653) db 0
    %%insn_07655:
    div bx ; 07655 F7F3
    %if ($ - %%insn_07655) > 2
        %error "LONG_07655"
    %endif
    times 2 - ($ - %%insn_07655) db 0
    db 0x33, 0xD2 ; 07657 33D2 | xor dx,dx | encoding preserved
    %%insn_07659:
    pop di ; 07659 5F
    %if ($ - %%insn_07659) > 1
        %error "LONG_07659"
    %endif
    times 1 - ($ - %%insn_07659) db 0
    %%insn_0765a:
    pop si ; 0765A 5E
    %if ($ - %%insn_0765a) > 1
        %error "LONG_0765A"
    %endif
    times 1 - ($ - %%insn_0765a) db 0
    %%insn_0765b:
    pop ds ; 0765B 1F
    %if ($ - %%insn_0765b) > 1
        %error "LONG_0765B"
    %endif
    times 1 - ($ - %%insn_0765b) db 0
    %%insn_0765c:
    pop bp ; 0765C 5D
    %if ($ - %%insn_0765c) > 1
        %error "LONG_0765C"
    %endif
    times 1 - ($ - %%insn_0765c) db 0
    %%insn_0765d:
    retf ; 0765D CB
    %if ($ - %%insn_0765d) > 1
        %error "LONG_0765D"
    %endif
    times 1 - ($ - %%insn_0765d) db 0
    %if ($ - %%fragment_start) != 75
        %error "SIZE_07613"
    %endif
%endmacro
