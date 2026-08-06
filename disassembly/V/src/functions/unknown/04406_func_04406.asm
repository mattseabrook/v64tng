; Linear entry 04406 (1000:4406)
; Ghidra working symbol: FUN_1000_4406
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04406_part_00 0
    %%fragment_start:
func_04406:
    %%insn_04406:
    lodsw ; 04406 AD
    %if ($ - %%insn_04406) > 1
        %error "LONG_04406"
    %endif
    times 1 - ($ - %%insn_04406) db 0
    %%insn_04407:
    push si ; 04407 56
    %if ($ - %%insn_04407) > 1
        %error "LONG_04407"
    %endif
    times 1 - ($ - %%insn_04407) db 0
    %%insn_04408:
    mov word [bp-0x30d2],0x1 ; 04408 C7862ECF0100
    %if ($ - %%insn_04408) > 6
        %error "LONG_04408"
    %endif
    times 6 - ($ - %%insn_04408) db 0
    %%insn_0440e:
    call 0x388a ; 0440E E879F4
    %if ($ - %%insn_0440e) > 3
        %error "LONG_0440E"
    %endif
    times 3 - ($ - %%insn_0440e) db 0
    %%insn_04411:
    call 0x89 ; 04411 E875BC
    %if ($ - %%insn_04411) > 3
        %error "LONG_04411"
    %endif
    times 3 - ($ - %%insn_04411) db 0
    %%insn_04414:
    call 0x3a5b ; 04414 E844F6
    %if ($ - %%insn_04414) > 3
        %error "LONG_04414"
    %endif
    times 3 - ($ - %%insn_04414) db 0
    %%insn_04417:
    mov word [bp-0x30d2],0x0 ; 04417 C7862ECF0000
    %if ($ - %%insn_04417) > 6
        %error "LONG_04417"
    %endif
    times 6 - ($ - %%insn_04417) db 0
    %%insn_0441d:
    mov byte [bp-0x2606],0x0 ; 0441D C686FAD900
    %if ($ - %%insn_0441d) > 5
        %error "LONG_0441D"
    %endif
    times 5 - ($ - %%insn_0441d) db 0
    %%insn_04422:
    mov byte [bp-0x235d],0x0 ; 04422 C686A3DC00
    %if ($ - %%insn_04422) > 5
        %error "LONG_04422"
    %endif
    times 5 - ($ - %%insn_04422) db 0
    %%insn_04427:
    mov word [bp-0x2638],0x0 ; 04427 C786C8D90000
    %if ($ - %%insn_04427) > 6
        %error "LONG_04427"
    %endif
    times 6 - ($ - %%insn_04427) db 0
    %%insn_0442d:
    mov word [bp-0x2636],0x0 ; 0442D C786CAD90000
    %if ($ - %%insn_0442d) > 6
        %error "LONG_0442D"
    %endif
    times 6 - ($ - %%insn_0442d) db 0
    %%insn_04433:
    mov byte [bp-0x265b],0x0 ; 04433 C686A5D900
    %if ($ - %%insn_04433) > 5
        %error "LONG_04433"
    %endif
    times 5 - ($ - %%insn_04433) db 0
    %%insn_04438:
    pop si ; 04438 5E
    %if ($ - %%insn_04438) > 1
        %error "LONG_04438"
    %endif
    times 1 - ($ - %%insn_04438) db 0
    %%insn_04439:
    ret ; 04439 C3
    %if ($ - %%insn_04439) > 1
        %error "LONG_04439"
    %endif
    times 1 - ($ - %%insn_04439) db 0
    %if ($ - %%fragment_start) != 52
        %error "SIZE_04406"
    %endif
%endmacro
