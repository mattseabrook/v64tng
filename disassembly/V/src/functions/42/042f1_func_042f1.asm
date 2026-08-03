; Linear entry 042F1 (1000:42f1)
; Ghidra working symbol: FUN_1000_42f1
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_042f1_part_00 0
    %%fragment_start:
func_042f1:
    %%insn_042f1:
    push cx ; 042F1 51
    %if ($ - %%insn_042f1) > 1
        %error "LONG_042F1"
    %endif
    times 1 - ($ - %%insn_042f1) db 0
    %%insn_042f2:
    push dx ; 042F2 52
    %if ($ - %%insn_042f2) > 1
        %error "LONG_042F2"
    %endif
    times 1 - ($ - %%insn_042f2) db 0
    %%insn_042f3:
    push ax ; 042F3 50
    %if ($ - %%insn_042f3) > 1
        %error "LONG_042F3"
    %endif
    times 1 - ($ - %%insn_042f3) db 0
    %%insn_042f4:
    mov cl,[bp-0x2601] ; 042F4 8A8EFFD9
    %if ($ - %%insn_042f4) > 4
        %error "LONG_042F4"
    %endif
    times 4 - ($ - %%insn_042f4) db 0
    %%insn_042f8:
    mov dh,[bp-0x2600] ; 042F8 8AB600DA
    %if ($ - %%insn_042f8) > 4
        %error "LONG_042F8"
    %endif
    times 4 - ($ - %%insn_042f8) db 0
    %%insn_042fc:
    mov dl,[bp-0x25ff] ; 042FC 8A9601DA
    %if ($ - %%insn_042fc) > 4
        %error "LONG_042FC"
    %endif
    times 4 - ($ - %%insn_042fc) db 0
    %%insn_04300:
    mov ah,0x10 ; 04300 B410
    %if ($ - %%insn_04300) > 2
        %error "LONG_04300"
    %endif
    times 2 - ($ - %%insn_04300) db 0
    db 0x8A, 0xC1 ; 04302 8AC1 | mov al,cl | encoding preserved
    %%insn_04304:
    rcr al,byte 0x3 ; 04304 C0D803
    %if ($ - %%insn_04304) > 3
        %error "LONG_04304"
    %endif
    times 3 - ($ - %%insn_04304) db 0
    db 0x32, 0xC6 ; 04307 32C6 | xor al,dh | encoding preserved
    %%insn_04309:
    rcr al,1 ; 04309 D0D8
    %if ($ - %%insn_04309) > 2
        %error "LONG_04309"
    %endif
    times 2 - ($ - %%insn_04309) db 0
    %%insn_0430b:
    rcl dl,1 ; 0430B D0D2
    %if ($ - %%insn_0430b) > 2
        %error "LONG_0430B"
    %endif
    times 2 - ($ - %%insn_0430b) db 0
    %%insn_0430d:
    rcl dh,1 ; 0430D D0D6
    %if ($ - %%insn_0430d) > 2
        %error "LONG_0430D"
    %endif
    times 2 - ($ - %%insn_0430d) db 0
    %%insn_0430f:
    rcl cl,1 ; 0430F D0D1
    %if ($ - %%insn_0430f) > 2
        %error "LONG_0430F"
    %endif
    times 2 - ($ - %%insn_0430f) db 0
    %%insn_04311:
    dec ah ; 04311 FECC
    %if ($ - %%insn_04311) > 2
        %error "LONG_04311"
    %endif
    times 2 - ($ - %%insn_04311) db 0
    %%insn_04313:
    jnz short 0x4302 ; 04313 75ED
    %if ($ - %%insn_04313) > 2
        %error "LONG_04313"
    %endif
    times 2 - ($ - %%insn_04313) db 0
    %%insn_04315:
    mov [bp-0x2601],cl ; 04315 888EFFD9
    %if ($ - %%insn_04315) > 4
        %error "LONG_04315"
    %endif
    times 4 - ($ - %%insn_04315) db 0
    %%insn_04319:
    mov [bp-0x2600],dh ; 04319 88B600DA
    %if ($ - %%insn_04319) > 4
        %error "LONG_04319"
    %endif
    times 4 - ($ - %%insn_04319) db 0
    %%insn_0431d:
    mov [bp-0x25ff],dl ; 0431D 889601DA
    %if ($ - %%insn_0431d) > 4
        %error "LONG_0431D"
    %endif
    times 4 - ($ - %%insn_0431d) db 0
    %%insn_04321:
    pop ax ; 04321 58
    %if ($ - %%insn_04321) > 1
        %error "LONG_04321"
    %endif
    times 1 - ($ - %%insn_04321) db 0
    db 0x8A, 0xE2 ; 04322 8AE2 | mov ah,dl | encoding preserved
    %%insn_04324:
    pop dx ; 04324 5A
    %if ($ - %%insn_04324) > 1
        %error "LONG_04324"
    %endif
    times 1 - ($ - %%insn_04324) db 0
    %%insn_04325:
    pop cx ; 04325 59
    %if ($ - %%insn_04325) > 1
        %error "LONG_04325"
    %endif
    times 1 - ($ - %%insn_04325) db 0
    %%insn_04326:
    ret ; 04326 C3
    %if ($ - %%insn_04326) > 1
        %error "LONG_04326"
    %endif
    times 1 - ($ - %%insn_04326) db 0
    %if ($ - %%fragment_start) != 54
        %error "SIZE_042F1"
    %endif
%endmacro
