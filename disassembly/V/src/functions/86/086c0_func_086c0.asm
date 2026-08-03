; Linear entry 086C0 (1000:86c0)
; Ghidra working symbol: FUN_1000_86c0
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_086c0_part_00 0
    %%fragment_start:
func_086c0:
    %%insn_086c0:
    push bp ; 086C0 55
    %if ($ - %%insn_086c0) > 1
        %error "LONG_086C0"
    %endif
    times 1 - ($ - %%insn_086c0) db 0
    db 0x8B, 0xEC ; 086C1 8BEC | mov bp,sp | encoding preserved
    %%insn_086c3:
    sub sp,0x4 ; 086C3 83EC04
    %if ($ - %%insn_086c3) > 3
        %error "LONG_086C3"
    %endif
    times 3 - ($ - %%insn_086c3) db 0
    %%insn_086c6:
    push ds ; 086C6 1E
    %if ($ - %%insn_086c6) > 1
        %error "LONG_086C6"
    %endif
    times 1 - ($ - %%insn_086c6) db 0
    %%insn_086c7:
    push si ; 086C7 56
    %if ($ - %%insn_086c7) > 1
        %error "LONG_086C7"
    %endif
    times 1 - ($ - %%insn_086c7) db 0
    %%insn_086c8:
    push di ; 086C8 57
    %if ($ - %%insn_086c8) > 1
        %error "LONG_086C8"
    %endif
    times 1 - ($ - %%insn_086c8) db 0
    %%insn_086c9:
    push ax ; 086C9 50
    %if ($ - %%insn_086c9) > 1
        %error "LONG_086C9"
    %endif
    times 1 - ($ - %%insn_086c9) db 0
    %%insn_086ca:
    push bp ; 086CA 55
    %if ($ - %%insn_086ca) > 1
        %error "LONG_086CA"
    %endif
    times 1 - ($ - %%insn_086ca) db 0
    db 0x8B, 0xEC ; 086CB 8BEC | mov bp,sp | encoding preserved
    %%insn_086cd:
    mov word [bp+0x2],0x0 ; 086CD C746020000
    %if ($ - %%insn_086cd) > 5
        %error "LONG_086CD"
    %endif
    times 5 - ($ - %%insn_086cd) db 0
    %%insn_086d2:
    pop bp ; 086D2 5D
    %if ($ - %%insn_086d2) > 1
        %error "LONG_086D2"
    %endif
    times 1 - ($ - %%insn_086d2) db 0
    %%insn_086d3:
    push cs ; 086D3 0E
    %if ($ - %%insn_086d3) > 1
        %error "LONG_086D3"
    %endif
    times 1 - ($ - %%insn_086d3) db 0
    %%insn_086d4:
    call 0x88d9 ; 086D4 E80202
    %if ($ - %%insn_086d4) > 3
        %error "LONG_086D4"
    %endif
    times 3 - ($ - %%insn_086d4) db 0
    %%insn_086d7:
    add sp,0x2 ; 086D7 83C402
    %if ($ - %%insn_086d7) > 3
        %error "LONG_086D7"
    %endif
    times 3 - ($ - %%insn_086d7) db 0
    %%insn_086da:
    mov word [cs:0xe60],0x0 ; 086DA 2EC706600E0000
    %if ($ - %%insn_086da) > 7
        %error "LONG_086DA"
    %endif
    times 7 - ($ - %%insn_086da) db 0
    %%insn_086e1:
    les di,word [bp+0x8] ; 086E1 C47E08
    %if ($ - %%insn_086e1) > 3
        %error "LONG_086E1"
    %endif
    times 3 - ($ - %%insn_086e1) db 0
    %%insn_086e4:
    mov [bp-0x4],di ; 086E4 897EFC
    %if ($ - %%insn_086e4) > 3
        %error "LONG_086E4"
    %endif
    times 3 - ($ - %%insn_086e4) db 0
    %%insn_086e7:
    mov word [bp-0x2],es ; 086E7 8C46FE
    %if ($ - %%insn_086e7) > 3
        %error "LONG_086E7"
    %endif
    times 3 - ($ - %%insn_086e7) db 0
    %%insn_086ea:
    mov word [cs:0xe62],0x3 ; 086EA 2EC706620E0300
    %if ($ - %%insn_086ea) > 7
        %error "LONG_086EA"
    %endif
    times 7 - ($ - %%insn_086ea) db 0
    %%insn_086f1:
    lds si,word [bp-0x4] ; 086F1 C576FC
    %if ($ - %%insn_086f1) > 3
        %error "LONG_086F1"
    %endif
    times 3 - ($ - %%insn_086f1) db 0
    %%insn_086f4:
    mov ax,[si+0x14] ; 086F4 8B4414
    %if ($ - %%insn_086f4) > 3
        %error "LONG_086F4"
    %endif
    times 3 - ($ - %%insn_086f4) db 0
    %%insn_086f7:
    push bx ; 086F7 53
    %if ($ - %%insn_086f7) > 1
        %error "LONG_086F7"
    %endif
    times 1 - ($ - %%insn_086f7) db 0
    %%insn_086f8:
    push cx ; 086F8 51
    %if ($ - %%insn_086f8) > 1
        %error "LONG_086F8"
    %endif
    times 1 - ($ - %%insn_086f8) db 0
    %%insn_086f9:
    mov bx,ds ; 086F9 8CDB
    %if ($ - %%insn_086f9) > 2
        %error "LONG_086F9"
    %endif
    times 2 - ($ - %%insn_086f9) db 0
    db 0x33, 0xC9 ; 086FB 33C9 | xor cx,cx | encoding preserved
    %%insn_086fd:
    shl bx,1 ; 086FD D1E3
    %if ($ - %%insn_086fd) > 2
        %error "LONG_086FD"
    %endif
    times 2 - ($ - %%insn_086fd) db 0
    %%insn_086ff:
    rcl cx,1 ; 086FF D1D1
    %if ($ - %%insn_086ff) > 2
        %error "LONG_086FF"
    %endif
    times 2 - ($ - %%insn_086ff) db 0
    %%insn_08701:
    shl bx,1 ; 08701 D1E3
    %if ($ - %%insn_08701) > 2
        %error "LONG_08701"
    %endif
    times 2 - ($ - %%insn_08701) db 0
    %%insn_08703:
    rcl cx,1 ; 08703 D1D1
    %if ($ - %%insn_08703) > 2
        %error "LONG_08703"
    %endif
    times 2 - ($ - %%insn_08703) db 0
    %%insn_08705:
    shl bx,1 ; 08705 D1E3
    %if ($ - %%insn_08705) > 2
        %error "LONG_08705"
    %endif
    times 2 - ($ - %%insn_08705) db 0
    %%insn_08707:
    rcl cx,1 ; 08707 D1D1
    %if ($ - %%insn_08707) > 2
        %error "LONG_08707"
    %endif
    times 2 - ($ - %%insn_08707) db 0
    %%insn_08709:
    shl bx,1 ; 08709 D1E3
    %if ($ - %%insn_08709) > 2
        %error "LONG_08709"
    %endif
    times 2 - ($ - %%insn_08709) db 0
    %%insn_0870b:
    rcl cx,1 ; 0870B D1D1
    %if ($ - %%insn_0870b) > 2
        %error "LONG_0870B"
    %endif
    times 2 - ($ - %%insn_0870b) db 0
    db 0x03, 0xDE ; 0870D 03DE | add bx,si | encoding preserved
    %%insn_0870f:
    adc cx,0x0 ; 0870F 83D100
    %if ($ - %%insn_0870f) > 3
        %error "LONG_0870F"
    %endif
    times 3 - ($ - %%insn_0870f) db 0
    db 0x03, 0xD8 ; 08712 03D8 | add bx,ax | encoding preserved
    %%insn_08714:
    adc cx,0x0 ; 08714 83D100
    %if ($ - %%insn_08714) > 3
        %error "LONG_08714"
    %endif
    times 3 - ($ - %%insn_08714) db 0
    db 0x8B, 0xF3 ; 08717 8BF3 | mov si,bx | encoding preserved
    %%insn_08719:
    and si,0xf ; 08719 83E60F
    %if ($ - %%insn_08719) > 3
        %error "LONG_08719"
    %endif
    times 3 - ($ - %%insn_08719) db 0
    %%insn_0871c:
    shr cx,1 ; 0871C D1E9
    %if ($ - %%insn_0871c) > 2
        %error "LONG_0871C"
    %endif
    times 2 - ($ - %%insn_0871c) db 0
    %%insn_0871e:
    rcr bx,1 ; 0871E D1DB
    %if ($ - %%insn_0871e) > 2
        %error "LONG_0871E"
    %endif
    times 2 - ($ - %%insn_0871e) db 0
    %%insn_08720:
    shr cx,1 ; 08720 D1E9
    %if ($ - %%insn_08720) > 2
        %error "LONG_08720"
    %endif
    times 2 - ($ - %%insn_08720) db 0
    %%insn_08722:
    rcr bx,1 ; 08722 D1DB
    %if ($ - %%insn_08722) > 2
        %error "LONG_08722"
    %endif
    times 2 - ($ - %%insn_08722) db 0
    %%insn_08724:
    shr cx,1 ; 08724 D1E9
    %if ($ - %%insn_08724) > 2
        %error "LONG_08724"
    %endif
    times 2 - ($ - %%insn_08724) db 0
    %%insn_08726:
    rcr bx,1 ; 08726 D1DB
    %if ($ - %%insn_08726) > 2
        %error "LONG_08726"
    %endif
    times 2 - ($ - %%insn_08726) db 0
    %%insn_08728:
    shr cx,1 ; 08728 D1E9
    %if ($ - %%insn_08728) > 2
        %error "LONG_08728"
    %endif
    times 2 - ($ - %%insn_08728) db 0
    %%insn_0872a:
    rcr bx,1 ; 0872A D1DB
    %if ($ - %%insn_0872a) > 2
        %error "LONG_0872A"
    %endif
    times 2 - ($ - %%insn_0872a) db 0
    %%insn_0872c:
    mov ds,bx ; 0872C 8EDB
    %if ($ - %%insn_0872c) > 2
        %error "LONG_0872C"
    %endif
    times 2 - ($ - %%insn_0872c) db 0
    %%insn_0872e:
    pop cx ; 0872E 59
    %if ($ - %%insn_0872e) > 1
        %error "LONG_0872E"
    %endif
    times 1 - ($ - %%insn_0872e) db 0
    %%insn_0872f:
    pop bx ; 0872F 5B
    %if ($ - %%insn_0872f) > 1
        %error "LONG_0872F"
    %endif
    times 1 - ($ - %%insn_0872f) db 0
    %%insn_08730:
    mov [cs:0xe66],si ; 08730 2E8936660E
    %if ($ - %%insn_08730) > 5
        %error "LONG_08730"
    %endif
    times 5 - ($ - %%insn_08730) db 0
    %%insn_08735:
    mov word [cs:0xe68],ds ; 08735 2E8C1E680E
    %if ($ - %%insn_08735) > 5
        %error "LONG_08735"
    %endif
    times 5 - ($ - %%insn_08735) db 0
    %%insn_0873a:
    cmp word [bp+0xc],0xffffffffffffffff ; 0873A 837E0CFF
    %if ($ - %%insn_0873a) > 4
        %error "LONG_0873A"
    %endif
    times 4 - ($ - %%insn_0873a) db 0
    %%insn_0873e:
    jz short 0x8758 ; 0873E 7418
    %if ($ - %%insn_0873e) > 2
        %error "LONG_0873E"
    %endif
    times 2 - ($ - %%insn_0873e) db 0
    %%insn_08740:
    push cs ; 08740 0E
    %if ($ - %%insn_08740) > 1
        %error "LONG_08740"
    %endif
    times 1 - ($ - %%insn_08740) db 0
    %%insn_08741:
    call 0x7f55 ; 08741 E811F8
    %if ($ - %%insn_08741) > 3
        %error "LONG_08741"
    %endif
    times 3 - ($ - %%insn_08741) db 0
    db 0x3D, 0x00, 0x00 ; 08744 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_08747:
    jz short 0x875f ; 08747 7416
    %if ($ - %%insn_08747) > 2
        %error "LONG_08747"
    %endif
    times 2 - ($ - %%insn_08747) db 0
    %%insn_08749:
    push cs ; 08749 0E
    %if ($ - %%insn_08749) > 1
        %error "LONG_08749"
    %endif
    times 1 - ($ - %%insn_08749) db 0
    %%insn_0874a:
    call 0x7f64 ; 0874A E817F8
    %if ($ - %%insn_0874a) > 3
        %error "LONG_0874A"
    %endif
    times 3 - ($ - %%insn_0874a) db 0
    db 0x8B, 0xF0 ; 0874D 8BF0 | mov si,ax | encoding preserved
    %%insn_0874f:
    push cs ; 0874F 0E
    %if ($ - %%insn_0874f) > 1
        %error "LONG_0874F"
    %endif
    times 1 - ($ - %%insn_0874f) db 0
    %%insn_08750:
    call 0x80d6 ; 08750 E883F9
    %if ($ - %%insn_08750) > 3
        %error "LONG_08750"
    %endif
    times 3 - ($ - %%insn_08750) db 0
    %%insn_08753:
    cmp si,[bp+0xc] ; 08753 3B760C
    %if ($ - %%insn_08753) > 3
        %error "LONG_08753"
    %endif
    times 3 - ($ - %%insn_08753) db 0
    %%insn_08756:
    jnz short 0x8740 ; 08756 75E8
    %if ($ - %%insn_08756) > 2
        %error "LONG_08756"
    %endif
    times 2 - ($ - %%insn_08756) db 0
    %%insn_08758:
    mov word [cs:0xe62],0x0 ; 08758 2EC706620E0000
    %if ($ - %%insn_08758) > 7
        %error "LONG_08758"
    %endif
    times 7 - ($ - %%insn_08758) db 0
    %%insn_0875f:
    pop di ; 0875F 5F
    %if ($ - %%insn_0875f) > 1
        %error "LONG_0875F"
    %endif
    times 1 - ($ - %%insn_0875f) db 0
    %%insn_08760:
    pop si ; 08760 5E
    %if ($ - %%insn_08760) > 1
        %error "LONG_08760"
    %endif
    times 1 - ($ - %%insn_08760) db 0
    %%insn_08761:
    pop ds ; 08761 1F
    %if ($ - %%insn_08761) > 1
        %error "LONG_08761"
    %endif
    times 1 - ($ - %%insn_08761) db 0
    db 0x8B, 0xE5 ; 08762 8BE5 | mov sp,bp | encoding preserved
    %%insn_08764:
    pop bp ; 08764 5D
    %if ($ - %%insn_08764) > 1
        %error "LONG_08764"
    %endif
    times 1 - ($ - %%insn_08764) db 0
    %%insn_08765:
    retf ; 08765 CB
    %if ($ - %%insn_08765) > 1
        %error "LONG_08765"
    %endif
    times 1 - ($ - %%insn_08765) db 0
    %if ($ - %%fragment_start) != 166
        %error "SIZE_086C0"
    %endif
%endmacro
