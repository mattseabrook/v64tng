; PE virtual entry 00407146
; Ghidra working symbol: FUN_00407146
; Verified Miles AIL sequence-status query; true when status is playing (4).
; Generated losslessly; preserve byte identity after edits.

%macro emit_is_midi_sequence_playing_part_00 0
    %%fragment_start:
is_midi_sequence_playing:
    %%insn_00407146:
    push ebp ; 00407146 55
    %if ($ - %%insn_00407146) > 1
        %error "LONG_00407146"
    %endif
    times 1 - ($ - %%insn_00407146) db 0
    db 0x8B, 0xEC ; 00407147 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407149:
    cmp dword [0x421448],0x0 ; 00407149 833D4814420000
    %if ($ - %%insn_00407149) > 7
        %error "LONG_00407149"
    %endif
    times 7 - ($ - %%insn_00407149) db 0
    %%insn_00407150:
    jz short 0x40716a ; 00407150 7418
    %if ($ - %%insn_00407150) > 2
        %error "LONG_00407150"
    %endif
    times 2 - ($ - %%insn_00407150) db 0
    %%insn_00407152:
    mov eax,[0x421448] ; 00407152 A148144200
    %if ($ - %%insn_00407152) > 5
        %error "LONG_00407152"
    %endif
    times 5 - ($ - %%insn_00407152) db 0
    %%insn_00407157:
    push eax ; 00407157 50
    %if ($ - %%insn_00407157) > 1
        %error "LONG_00407157"
    %endif
    times 1 - ($ - %%insn_00407157) db 0
    %%insn_00407158:
    call dword near [0x4245e0] ; 00407158 FF15E0454200
    %if ($ - %%insn_00407158) > 6
        %error "LONG_00407158"
    %endif
    times 6 - ($ - %%insn_00407158) db 0
    %%insn_0040715e:
    cmp eax,0x4 ; 0040715E 83F804
    %if ($ - %%insn_0040715e) > 3
        %error "LONG_0040715E"
    %endif
    times 3 - ($ - %%insn_0040715e) db 0
    %%insn_00407161:
    jnz short 0x40716a ; 00407161 7507
    %if ($ - %%insn_00407161) > 2
        %error "LONG_00407161"
    %endif
    times 2 - ($ - %%insn_00407161) db 0
    %%insn_00407163:
    mov eax,0x1 ; 00407163 B801000000
    %if ($ - %%insn_00407163) > 5
        %error "LONG_00407163"
    %endif
    times 5 - ($ - %%insn_00407163) db 0
    %%insn_00407168:
    jmp short 0x40716c ; 00407168 EB02
    %if ($ - %%insn_00407168) > 2
        %error "LONG_00407168"
    %endif
    times 2 - ($ - %%insn_00407168) db 0
    db 0x33, 0xC0 ; 0040716A 33C0 | xor eax,eax | encoding preserved
    %%insn_0040716c:
    pop ebp ; 0040716C 5D
    %if ($ - %%insn_0040716c) > 1
        %error "LONG_0040716C"
    %endif
    times 1 - ($ - %%insn_0040716c) db 0
    %%insn_0040716d:
    ret ; 0040716D C3
    %if ($ - %%insn_0040716d) > 1
        %error "LONG_0040716D"
    %endif
    times 1 - ($ - %%insn_0040716d) db 0
    %if ($ - %%fragment_start) != 40
        %error "function fragment size drift: 00407146"
    %endif
%endmacro
