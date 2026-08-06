; Linear entry 0382D (1000:382d)
; Ghidra working symbol: FUN_1000_382d
; Verified opcode 46h helper: snapshots the current packed-resource archive selector for later restoration.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_save_selected_archive_context_part_00 0
    %%fragment_start:
save_selected_archive_context:
    %%insn_0382d:
    push ax ; 0382D 50
    %if ($ - %%insn_0382d) > 1
        %error "LONG_0382D"
    %endif
    times 1 - ($ - %%insn_0382d) db 0
    %%insn_0382e:
    mov ax,[bp-0x27cf] ; 0382E 8B8631D8
    %if ($ - %%insn_0382e) > 4
        %error "LONG_0382E"
    %endif
    times 4 - ($ - %%insn_0382e) db 0
    %%insn_03832:
    mov [bp-0x27af],ax ; 03832 898651D8
    %if ($ - %%insn_03832) > 4
        %error "LONG_03832"
    %endif
    times 4 - ($ - %%insn_03832) db 0
    %%insn_03836:
    pop ax ; 03836 58
    %if ($ - %%insn_03836) > 1
        %error "LONG_03836"
    %endif
    times 1 - ($ - %%insn_03836) db 0
    %%insn_03837:
    ret ; 03837 C3
    %if ($ - %%insn_03837) > 1
        %error "LONG_03837"
    %endif
    times 1 - ($ - %%insn_03837) db 0
    %if ($ - %%fragment_start) != 11
        %error "SIZE_0382D"
    %endif
%endmacro
