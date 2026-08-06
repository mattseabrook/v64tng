; PE virtual entry 0040F6E0
; Ghidra working symbol: FUN_0040f6e0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f6e0_part_00 0
    %%fragment_start:
func_0040f6e0:
    %%insn_0040f6e0:
    mov eax,[0x423580] ; 0040F6E0 A180354200
    %if ($ - %%insn_0040f6e0) > 5
        %error "LONG_0040F6E0"
    %endif
    times 5 - ($ - %%insn_0040f6e0) db 0
    %%insn_0040f6e5:
    push esi ; 0040F6E5 56
    %if ($ - %%insn_0040f6e5) > 1
        %error "LONG_0040F6E5"
    %endif
    times 1 - ($ - %%insn_0040f6e5) db 0
    %%insn_0040f6e6:
    mov esi,[esp+0x8] ; 0040F6E6 8B742408
    %if ($ - %%insn_0040f6e6) > 4
        %error "LONG_0040F6E6"
    %endif
    times 4 - ($ - %%insn_0040f6e6) db 0
    %%insn_0040f6ea:
    push edi ; 0040F6EA 57
    %if ($ - %%insn_0040f6ea) > 1
        %error "LONG_0040F6EA"
    %endif
    times 1 - ($ - %%insn_0040f6ea) db 0
    db 0x3B, 0xF0 ; 0040F6EB 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0040f6ed:
    jnc short 0x40f72c ; 0040F6ED 733D
    %if ($ - %%insn_0040f6ed) > 2
        %error "LONG_0040F6ED"
    %endif
    times 2 - ($ - %%insn_0040f6ed) db 0
    db 0x8B, 0xC6 ; 0040F6EF 8BC6 | mov eax,esi | encoding preserved
    db 0x8B, 0xCE ; 0040F6F1 8BCE | mov ecx,esi | encoding preserved
    %%insn_0040f6f3:
    and eax,0x1f ; 0040F6F3 83E01F
    %if ($ - %%insn_0040f6f3) > 3
        %error "LONG_0040F6F3"
    %endif
    times 3 - ($ - %%insn_0040f6f3) db 0
    %%insn_0040f6f6:
    sar ecx,byte 0x5 ; 0040F6F6 C1F905
    %if ($ - %%insn_0040f6f6) > 3
        %error "LONG_0040F6F6"
    %endif
    times 3 - ($ - %%insn_0040f6f6) db 0
    %%insn_0040f6f9:
    lea edx,[eax+eax*8] ; 0040F6F9 8D14C0
    %if ($ - %%insn_0040f6f9) > 3
        %error "LONG_0040F6F9"
    %endif
    times 3 - ($ - %%insn_0040f6f9) db 0
    %%insn_0040f6fc:
    mov eax,[ecx*4+0x423480] ; 0040F6FC 8B048D80344200
    %if ($ - %%insn_0040f6fc) > 7
        %error "LONG_0040F6FC"
    %endif
    times 7 - ($ - %%insn_0040f6fc) db 0
    %%insn_0040f703:
    test byte [eax+edx*4+0x4],0x1 ; 0040F703 F644900401
    %if ($ - %%insn_0040f703) > 5
        %error "LONG_0040F703"
    %endif
    times 5 - ($ - %%insn_0040f703) db 0
    %%insn_0040f708:
    jz short 0x40f72c ; 0040F708 7422
    %if ($ - %%insn_0040f708) > 2
        %error "LONG_0040F708"
    %endif
    times 2 - ($ - %%insn_0040f708) db 0
    %%insn_0040f70a:
    push esi ; 0040F70A 56
    %if ($ - %%insn_0040f70a) > 1
        %error "LONG_0040F70A"
    %endif
    times 1 - ($ - %%insn_0040f70a) db 0
    %%insn_0040f70b:
    call 0x4111f0 ; 0040F70B E8E01A0000
    %if ($ - %%insn_0040f70b) > 5
        %error "LONG_0040F70B"
    %endif
    times 5 - ($ - %%insn_0040f70b) db 0
    %%insn_0040f710:
    add esp,0x4 ; 0040F710 83C404
    %if ($ - %%insn_0040f710) > 3
        %error "LONG_0040F710"
    %endif
    times 3 - ($ - %%insn_0040f710) db 0
    %%insn_0040f713:
    push esi ; 0040F713 56
    %if ($ - %%insn_0040f713) > 1
        %error "LONG_0040F713"
    %endif
    times 1 - ($ - %%insn_0040f713) db 0
    %%insn_0040f714:
    call 0x40f750 ; 0040F714 E837000000
    %if ($ - %%insn_0040f714) > 5
        %error "LONG_0040F714"
    %endif
    times 5 - ($ - %%insn_0040f714) db 0
    %%insn_0040f719:
    add esp,0x4 ; 0040F719 83C404
    %if ($ - %%insn_0040f719) > 3
        %error "LONG_0040F719"
    %endif
    times 3 - ($ - %%insn_0040f719) db 0
    db 0x8B, 0xF8 ; 0040F71C 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040f71e:
    push esi ; 0040F71E 56
    %if ($ - %%insn_0040f71e) > 1
        %error "LONG_0040F71E"
    %endif
    times 1 - ($ - %%insn_0040f71e) db 0
    %%insn_0040f71f:
    call 0x411260 ; 0040F71F E83C1B0000
    %if ($ - %%insn_0040f71f) > 5
        %error "LONG_0040F71F"
    %endif
    times 5 - ($ - %%insn_0040f71f) db 0
    %%insn_0040f724:
    add esp,0x4 ; 0040F724 83C404
    %if ($ - %%insn_0040f724) > 3
        %error "LONG_0040F724"
    %endif
    times 3 - ($ - %%insn_0040f724) db 0
    db 0x8B, 0xC7 ; 0040F727 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040f729:
    pop edi ; 0040F729 5F
    %if ($ - %%insn_0040f729) > 1
        %error "LONG_0040F729"
    %endif
    times 1 - ($ - %%insn_0040f729) db 0
    %%insn_0040f72a:
    pop esi ; 0040F72A 5E
    %if ($ - %%insn_0040f72a) > 1
        %error "LONG_0040F72A"
    %endif
    times 1 - ($ - %%insn_0040f72a) db 0
    %%insn_0040f72b:
    ret ; 0040F72B C3
    %if ($ - %%insn_0040f72b) > 1
        %error "LONG_0040F72B"
    %endif
    times 1 - ($ - %%insn_0040f72b) db 0
    %%insn_0040f72c:
    call 0x410e10 ; 0040F72C E8DF160000
    %if ($ - %%insn_0040f72c) > 5
        %error "LONG_0040F72C"
    %endif
    times 5 - ($ - %%insn_0040f72c) db 0
    %%insn_0040f731:
    mov dword [eax],0x9 ; 0040F731 C70009000000
    %if ($ - %%insn_0040f731) > 6
        %error "LONG_0040F731"
    %endif
    times 6 - ($ - %%insn_0040f731) db 0
    %%insn_0040f737:
    call 0x410e20 ; 0040F737 E8E4160000
    %if ($ - %%insn_0040f737) > 5
        %error "LONG_0040F737"
    %endif
    times 5 - ($ - %%insn_0040f737) db 0
    %%insn_0040f73c:
    mov dword [eax],0x0 ; 0040F73C C70000000000
    %if ($ - %%insn_0040f73c) > 6
        %error "LONG_0040F73C"
    %endif
    times 6 - ($ - %%insn_0040f73c) db 0
    %%insn_0040f742:
    pop edi ; 0040F742 5F
    %if ($ - %%insn_0040f742) > 1
        %error "LONG_0040F742"
    %endif
    times 1 - ($ - %%insn_0040f742) db 0
    %%insn_0040f743:
    or eax,0xffffffffffffffff ; 0040F743 83C8FF
    %if ($ - %%insn_0040f743) > 3
        %error "LONG_0040F743"
    %endif
    times 3 - ($ - %%insn_0040f743) db 0
    %%insn_0040f746:
    pop esi ; 0040F746 5E
    %if ($ - %%insn_0040f746) > 1
        %error "LONG_0040F746"
    %endif
    times 1 - ($ - %%insn_0040f746) db 0
    %%insn_0040f747:
    ret ; 0040F747 C3
    %if ($ - %%insn_0040f747) > 1
        %error "LONG_0040F747"
    %endif
    times 1 - ($ - %%insn_0040f747) db 0
    %if ($ - %%fragment_start) != 104
        %error "function fragment size drift: 0040F6E0"
    %endif
%endmacro
