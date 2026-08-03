; Linear entry 0864A (1000:864a)
; Ghidra working symbol: FUN_1000_864a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0864a_part_00 0
    %%fragment_start:
func_0864a:
    %%insn_0864a:
    push bp ; 0864A 55
    %if ($ - %%insn_0864a) > 1
        %error "LONG_0864A"
    %endif
    times 1 - ($ - %%insn_0864a) db 0
    db 0x8B, 0xEC ; 0864B 8BEC | mov bp,sp | encoding preserved
    %%insn_0864d:
    push ds ; 0864D 1E
    %if ($ - %%insn_0864d) > 1
        %error "LONG_0864D"
    %endif
    times 1 - ($ - %%insn_0864d) db 0
    %%insn_0864e:
    push si ; 0864E 56
    %if ($ - %%insn_0864e) > 1
        %error "LONG_0864E"
    %endif
    times 1 - ($ - %%insn_0864e) db 0
    %%insn_0864f:
    push di ; 0864F 57
    %if ($ - %%insn_0864f) > 1
        %error "LONG_0864F"
    %endif
    times 1 - ($ - %%insn_0864f) db 0
    %%insn_08650:
    cli ; 08650 FA
    %if ($ - %%insn_08650) > 1
        %error "LONG_08650"
    %endif
    times 1 - ($ - %%insn_08650) db 0
    %%insn_08651:
    cmp word [cs:0xe60],0x0 ; 08651 2E833E600E00
    %if ($ - %%insn_08651) > 6
        %error "LONG_08651"
    %endif
    times 6 - ($ - %%insn_08651) db 0
    %%insn_08657:
    jnz short 0x8671 ; 08657 7518
    %if ($ - %%insn_08657) > 2
        %error "LONG_08657"
    %endif
    times 2 - ($ - %%insn_08657) db 0
    %%insn_08659:
    push ax ; 08659 50
    %if ($ - %%insn_08659) > 1
        %error "LONG_08659"
    %endif
    times 1 - ($ - %%insn_08659) db 0
    %%insn_0865a:
    push bp ; 0865A 55
    %if ($ - %%insn_0865a) > 1
        %error "LONG_0865A"
    %endif
    times 1 - ($ - %%insn_0865a) db 0
    db 0x8B, 0xEC ; 0865B 8BEC | mov bp,sp | encoding preserved
    %%insn_0865d:
    mov word [bp+0x2],0x0 ; 0865D C746020000
    %if ($ - %%insn_0865d) > 5
        %error "LONG_0865D"
    %endif
    times 5 - ($ - %%insn_0865d) db 0
    %%insn_08662:
    pop bp ; 08662 5D
    %if ($ - %%insn_08662) > 1
        %error "LONG_08662"
    %endif
    times 1 - ($ - %%insn_08662) db 0
    %%insn_08663:
    push cs ; 08663 0E
    %if ($ - %%insn_08663) > 1
        %error "LONG_08663"
    %endif
    times 1 - ($ - %%insn_08663) db 0
    %%insn_08664:
    call 0x88d9 ; 08664 E87202
    %if ($ - %%insn_08664) > 3
        %error "LONG_08664"
    %endif
    times 3 - ($ - %%insn_08664) db 0
    %%insn_08667:
    add sp,0x2 ; 08667 83C402
    %if ($ - %%insn_08667) > 3
        %error "LONG_08667"
    %endif
    times 3 - ($ - %%insn_08667) db 0
    %%insn_0866a:
    mov word [cs:0xe60],0x1 ; 0866A 2EC706600E0100
    %if ($ - %%insn_0866a) > 7
        %error "LONG_0866A"
    %endif
    times 7 - ($ - %%insn_0866a) db 0
    %%insn_08671:
    mov di,[bp+0x8] ; 08671 8B7E08
    %if ($ - %%insn_08671) > 3
        %error "LONG_08671"
    %endif
    times 3 - ($ - %%insn_08671) db 0
    %%insn_08674:
    shl di,1 ; 08674 D1E7
    %if ($ - %%insn_08674) > 2
        %error "LONG_08674"
    %endif
    times 2 - ($ - %%insn_08674) db 0
    %%insn_08676:
    lds si,word [bp+0xa] ; 08676 C5760A
    %if ($ - %%insn_08676) > 3
        %error "LONG_08676"
    %endif
    times 3 - ($ - %%insn_08676) db 0
    %%insn_08679:
    mov ax,[si+0x2] ; 08679 8B4402
    %if ($ - %%insn_08679) > 3
        %error "LONG_08679"
    %endif
    times 3 - ($ - %%insn_08679) db 0
    %%insn_0867c:
    mov [cs:di+0xe58],ax ; 0867C 2E8985580E
    %if ($ - %%insn_0867c) > 5
        %error "LONG_0867C"
    %endif
    times 5 - ($ - %%insn_0867c) db 0
    %%insn_08681:
    les bx,word [si+0x4] ; 08681 C45C04
    %if ($ - %%insn_08681) > 3
        %error "LONG_08681"
    %endif
    times 3 - ($ - %%insn_08681) db 0
    %%insn_08684:
    mov [cs:di+0xe48],bx ; 08684 2E899D480E
    %if ($ - %%insn_08684) > 5
        %error "LONG_08684"
    %endif
    times 5 - ($ - %%insn_08684) db 0
    %%insn_08689:
    mov word [cs:di+0xe4c],es ; 08689 2E8C854C0E
    %if ($ - %%insn_08689) > 5
        %error "LONG_08689"
    %endif
    times 5 - ($ - %%insn_08689) db 0
    %%insn_0868e:
    mov ax,[si+0x8] ; 0868E 8B4408
    %if ($ - %%insn_0868e) > 3
        %error "LONG_0868E"
    %endif
    times 3 - ($ - %%insn_0868e) db 0
    %%insn_08691:
    mov [cs:di+0xe50],ax ; 08691 2E8985500E
    %if ($ - %%insn_08691) > 5
        %error "LONG_08691"
    %endif
    times 5 - ($ - %%insn_08691) db 0
    %%insn_08696:
    mov ax,[si+0xa] ; 08696 8B440A
    %if ($ - %%insn_08696) > 3
        %error "LONG_08696"
    %endif
    times 3 - ($ - %%insn_08696) db 0
    %%insn_08699:
    mov [cs:di+0xe54],ax ; 08699 2E8985540E
    %if ($ - %%insn_08699) > 5
        %error "LONG_08699"
    %endif
    times 5 - ($ - %%insn_08699) db 0
    %%insn_0869e:
    mov word [cs:di+0xe5c],0x0 ; 0869E 2EC7855C0E0000
    %if ($ - %%insn_0869e) > 7
        %error "LONG_0869E"
    %endif
    times 7 - ($ - %%insn_0869e) db 0
    %%insn_086a5:
    sti ; 086A5 FB
    %if ($ - %%insn_086a5) > 1
        %error "LONG_086A5"
    %endif
    times 1 - ($ - %%insn_086a5) db 0
    %%insn_086a6:
    pop di ; 086A6 5F
    %if ($ - %%insn_086a6) > 1
        %error "LONG_086A6"
    %endif
    times 1 - ($ - %%insn_086a6) db 0
    %%insn_086a7:
    pop si ; 086A7 5E
    %if ($ - %%insn_086a7) > 1
        %error "LONG_086A7"
    %endif
    times 1 - ($ - %%insn_086a7) db 0
    %%insn_086a8:
    pop ds ; 086A8 1F
    %if ($ - %%insn_086a8) > 1
        %error "LONG_086A8"
    %endif
    times 1 - ($ - %%insn_086a8) db 0
    %%insn_086a9:
    pop bp ; 086A9 5D
    %if ($ - %%insn_086a9) > 1
        %error "LONG_086A9"
    %endif
    times 1 - ($ - %%insn_086a9) db 0
    %%insn_086aa:
    retf ; 086AA CB
    %if ($ - %%insn_086aa) > 1
        %error "LONG_086AA"
    %endif
    times 1 - ($ - %%insn_086aa) db 0
    %if ($ - %%fragment_start) != 97
        %error "SIZE_0864A"
    %endif
%endmacro
