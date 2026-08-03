; Linear entry 06436 (1000:6436)
; Ghidra working symbol: FUN_1000_6436
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06436_part_00 0
    %%fragment_start:
func_06436:
    %%insn_06436:
    push si ; 06436 56
    %if ($ - %%insn_06436) > 1
        %error "LONG_06436"
    %endif
    times 1 - ($ - %%insn_06436) db 0
    %%insn_06437:
    mov si,[0xf2f9] ; 06437 8B36F9F2
    %if ($ - %%insn_06437) > 4
        %error "LONG_06437"
    %endif
    times 4 - ($ - %%insn_06437) db 0
    %%insn_0643b:
    mov al,[0xe4b9] ; 0643B A0B9E4
    %if ($ - %%insn_0643b) > 3
        %error "LONG_0643B"
    %endif
    times 3 - ($ - %%insn_0643b) db 0
    %%insn_0643e:
    mov [si-0xe30],al ; 0643E 8884D0F1
    %if ($ - %%insn_0643e) > 4
        %error "LONG_0643E"
    %endif
    times 4 - ($ - %%insn_0643e) db 0
    %%insn_06442:
    mov al,[0xe4ba] ; 06442 A0BAE4
    %if ($ - %%insn_06442) > 3
        %error "LONG_06442"
    %endif
    times 3 - ($ - %%insn_06442) db 0
    %%insn_06445:
    mov [si-0xdcd],al ; 06445 888433F2
    %if ($ - %%insn_06445) > 4
        %error "LONG_06445"
    %endif
    times 4 - ($ - %%insn_06445) db 0
    %%insn_06449:
    mov al,[0xe4bb] ; 06449 A0BBE4
    %if ($ - %%insn_06449) > 3
        %error "LONG_06449"
    %endif
    times 3 - ($ - %%insn_06449) db 0
    %%insn_0644c:
    mov [si-0xd6a],al ; 0644C 888496F2
    %if ($ - %%insn_0644c) > 4
        %error "LONG_0644C"
    %endif
    times 4 - ($ - %%insn_0644c) db 0
    %%insn_06450:
    inc si ; 06450 46
    %if ($ - %%insn_06450) > 1
        %error "LONG_06450"
    %endif
    times 1 - ($ - %%insn_06450) db 0
    %%insn_06451:
    mov [0xf2f9],si ; 06451 8936F9F2
    %if ($ - %%insn_06451) > 4
        %error "LONG_06451"
    %endif
    times 4 - ($ - %%insn_06451) db 0
    %%insn_06455:
    pop si ; 06455 5E
    %if ($ - %%insn_06455) > 1
        %error "LONG_06455"
    %endif
    times 1 - ($ - %%insn_06455) db 0
    %%insn_06456:
    ret ; 06456 C3
    %if ($ - %%insn_06456) > 1
        %error "LONG_06456"
    %endif
    times 1 - ($ - %%insn_06456) db 0
    %if ($ - %%fragment_start) != 33
        %error "SIZE_06436"
    %endif
%endmacro
