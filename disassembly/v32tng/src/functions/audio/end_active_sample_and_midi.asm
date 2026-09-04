; PE virtual entry 00407638
; Ghidra working symbol: FUN_00407638
; Verified role: ends the active Miles digital sample and active MIDI sequence.
; Generated losslessly; preserve byte identity after edits.

%macro emit_end_active_sample_and_midi_part_00 0
    %%fragment_start:
end_active_sample_and_midi:
    %%insn_00407638:
    push ebp ; 00407638 55
    %if ($ - %%insn_00407638) > 1
        %error "LONG_00407638"
    %endif
    times 1 - ($ - %%insn_00407638) db 0
    db 0x8B, 0xEC ; 00407639 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040763b:
    cmp dword [0x41f4e8],0x0 ; 0040763B 833DE8F4410000
    %if ($ - %%insn_0040763b) > 7
        %error "LONG_0040763B"
    %endif
    times 7 - ($ - %%insn_0040763b) db 0
    %%insn_00407642:
    jz short 0x407650 ; 00407642 740C
    %if ($ - %%insn_00407642) > 2
        %error "LONG_00407642"
    %endif
    times 2 - ($ - %%insn_00407642) db 0
    %%insn_00407644:
    mov eax,[0x41f4f8] ; 00407644 A1F8F44100
    %if ($ - %%insn_00407644) > 5
        %error "LONG_00407644"
    %endif
    times 5 - ($ - %%insn_00407644) db 0
    %%insn_00407649:
    push eax ; 00407649 50
    %if ($ - %%insn_00407649) > 1
        %error "LONG_00407649"
    %endif
    times 1 - ($ - %%insn_00407649) db 0
    %%insn_0040764a:
    call dword near [0x424618] ; 0040764A FF1518464200
    %if ($ - %%insn_0040764a) > 6
        %error "LONG_0040764A"
    %endif
    times 6 - ($ - %%insn_0040764a) db 0
    %%insn_00407650:
    cmp dword [0x421448],0x0 ; 00407650 833D4814420000
    %if ($ - %%insn_00407650) > 7
        %error "LONG_00407650"
    %endif
    times 7 - ($ - %%insn_00407650) db 0
    %%insn_00407657:
    jz short 0x40766b ; 00407657 7412
    %if ($ - %%insn_00407657) > 2
        %error "LONG_00407657"
    %endif
    times 2 - ($ - %%insn_00407657) db 0
    %%insn_00407659:
    call end_active_midi_sequence ; 00407659 E8CEFAFFFF
    %if ($ - %%insn_00407659) > 5
        %error "LONG_00407659"
    %endif
    times 5 - ($ - %%insn_00407659) db 0
    %%insn_0040765e:
    mov ecx,[0x421448] ; 0040765E 8B0D48144200
    %if ($ - %%insn_0040765e) > 6
        %error "LONG_0040765E"
    %endif
    times 6 - ($ - %%insn_0040765e) db 0
    %%insn_00407664:
    push ecx ; 00407664 51
    %if ($ - %%insn_00407664) > 1
        %error "LONG_00407664"
    %endif
    times 1 - ($ - %%insn_00407664) db 0
    %%insn_00407665:
    call dword near [0x4245f4] ; 00407665 FF15F4454200
    %if ($ - %%insn_00407665) > 6
        %error "LONG_00407665"
    %endif
    times 6 - ($ - %%insn_00407665) db 0
    %%insn_0040766b:
    pop ebp ; 0040766B 5D
    %if ($ - %%insn_0040766b) > 1
        %error "LONG_0040766B"
    %endif
    times 1 - ($ - %%insn_0040766b) db 0
    %%insn_0040766c:
    ret ; 0040766C C3
    %if ($ - %%insn_0040766c) > 1
        %error "LONG_0040766C"
    %endif
    times 1 - ($ - %%insn_0040766c) db 0
    %if ($ - %%fragment_start) != 53
        %error "function fragment size drift: 00407638"
    %endif
%endmacro
