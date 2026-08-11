; Linear entry 05A8B (1000:5a8b)
; Ghidra working symbol: FUN_1000_5a8b
; Verified GRV opcode 4Ah implementation. Forwards a changed master-volume
; value to the loaded Miles MIDI driver; disabled driver state is a no-op.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_set_midi_driver_master_volume_part_00 0
    %%fragment_start:
set_midi_driver_master_volume:
    %%insn_05a8b:
    push si ; 05A8B 56
    %if ($ - %%insn_05a8b) > 1
        %error "LONG_05A8B"
    %endif
    times 1 - ($ - %%insn_05a8b) db 0
    %%insn_05a8c:
    cmp byte [bp-0x1f3a],0x0 ; 05A8C 80BEC6E000
    %if ($ - %%insn_05a8c) > 5
        %error "LONG_05A8C"
    %endif
    times 5 - ($ - %%insn_05a8c) db 0
    %%insn_05a91:
    jnz short 0x5aaa ; 05A91 7517
    %if ($ - %%insn_05a91) > 2
        %error "LONG_05A91"
    %endif
    times 2 - ($ - %%insn_05a91) db 0
    %%insn_05a93:
    cmp ax,[bp-0x1bba] ; 05A93 3B8646E4
    %if ($ - %%insn_05a93) > 4
        %error "LONG_05A93"
    %endif
    times 4 - ($ - %%insn_05a93) db 0
    %%insn_05a97:
    jz short 0x5aaa ; 05A97 7411
    %if ($ - %%insn_05a97) > 2
        %error "LONG_05A97"
    %endif
    times 2 - ($ - %%insn_05a97) db 0
    %%insn_05a99:
    mov [bp-0x1bba],ax ; 05A99 898646E4
    %if ($ - %%insn_05a99) > 4
        %error "LONG_05A99"
    %endif
    times 4 - ($ - %%insn_05a99) db 0
    %%insn_05a9d:
    push ax ; 05A9D 50
    %if ($ - %%insn_05a9d) > 1
        %error "LONG_05A9D"
    %endif
    times 1 - ($ - %%insn_05a9d) db 0
    %%insn_05a9e:
    push word [bp-0x1bcc] ; 05A9E FFB634E4
    %if ($ - %%insn_05a9e) > 4
        %error "LONG_05A9E"
    %endif
    times 4 - ($ - %%insn_05a9e) db 0
    %%insn_05aa2:
    call word 0x702:word 0xca4 ; 05AA2 9AA40C0207
    %if ($ - %%insn_05aa2) > 5
        %error "LONG_05AA2"
    %endif
    times 5 - ($ - %%insn_05aa2) db 0
    %%insn_05aa7:
    add sp,0x4 ; 05AA7 83C404
    %if ($ - %%insn_05aa7) > 3
        %error "LONG_05AA7"
    %endif
    times 3 - ($ - %%insn_05aa7) db 0
    %%insn_05aaa:
    pop si ; 05AAA 5E
    %if ($ - %%insn_05aaa) > 1
        %error "LONG_05AAA"
    %endif
    times 1 - ($ - %%insn_05aaa) db 0
    %%insn_05aab:
    ret ; 05AAB C3
    %if ($ - %%insn_05aab) > 1
        %error "LONG_05AAB"
    %endif
    times 1 - ($ - %%insn_05aab) db 0
    %if ($ - %%fragment_start) != 33
        %error "SIZE_05A8B"
    %endif
%endmacro
