; Linear entry 0444A (1000:444a)
; Ghidra working symbol: FUN_1000_444a
; Verified role; evidence:
; Opcode 08h caller 03B4Fh. Read song reference word, increment it, store in SS:E029h. Stored
; value is ref+1 (zero is the unset sentinel); replay helper 046F5h subtracts one.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_set_background_song_part_00 0
    %%fragment_start:
grv_set_background_song:
    %%insn_0444a:
    lodsw ; 0444A AD
    %if ($ - %%insn_0444a) > 1
        %error "LONG_0444A"
    %endif
    times 1 - ($ - %%insn_0444a) db 0
    %%insn_0444b:
    inc ax ; 0444B 40
    %if ($ - %%insn_0444b) > 1
        %error "LONG_0444B"
    %endif
    times 1 - ($ - %%insn_0444b) db 0
    %%insn_0444c:
    mov [bp-0x1fd7],ax ; 0444C 898629E0
    %if ($ - %%insn_0444c) > 4
        %error "LONG_0444C"
    %endif
    times 4 - ($ - %%insn_0444c) db 0
    %%insn_04450:
    ret ; 04450 C3
    %if ($ - %%insn_04450) > 1
        %error "LONG_04450"
    %endif
    times 1 - ($ - %%insn_04450) db 0
    %if ($ - %%fragment_start) != 7
        %error "SIZE_0444A"
    %endif
%endmacro
