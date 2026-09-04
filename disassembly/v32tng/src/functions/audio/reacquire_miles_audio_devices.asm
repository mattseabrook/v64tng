; PE virtual entry 00407188
; Ghidra working symbol: FUN_00407188
; Verified role: reacquires Miles digital and MIDI driver handles when their
; respective released-state flags are set.
; Generated losslessly; preserve byte identity after edits.

%macro emit_reacquire_miles_audio_devices_part_00 0
    %%fragment_start:
reacquire_miles_audio_devices:
    %%insn_00407188:
    push ebp ; 00407188 55
    %if ($ - %%insn_00407188) > 1
        %error "LONG_00407188"
    %endif
    times 1 - ($ - %%insn_00407188) db 0
    db 0x8B, 0xEC ; 00407189 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040718b:
    cmp dword [0x41f4f0],0x0 ; 0040718B 833DF0F4410000
    %if ($ - %%insn_0040718b) > 7
        %error "LONG_0040718B"
    %endif
    times 7 - ($ - %%insn_0040718b) db 0
    %%insn_00407192:
    jz short 0x4071ae ; 00407192 741A
    %if ($ - %%insn_00407192) > 2
        %error "LONG_00407192"
    %endif
    times 2 - ($ - %%insn_00407192) db 0
    %%insn_00407194:
    mov eax,[0x41f4e8] ; 00407194 A1E8F44100
    %if ($ - %%insn_00407194) > 5
        %error "LONG_00407194"
    %endif
    times 5 - ($ - %%insn_00407194) db 0
    %%insn_00407199:
    push eax ; 00407199 50
    %if ($ - %%insn_00407199) > 1
        %error "LONG_00407199"
    %endif
    times 1 - ($ - %%insn_00407199) db 0
    %%insn_0040719a:
    call dword near [0x4245d4] ; 0040719A FF15D4454200
    %if ($ - %%insn_0040719a) > 6
        %error "LONG_0040719A"
    %endif
    times 6 - ($ - %%insn_0040719a) db 0
    %%insn_004071a0:
    test eax,eax ; 004071A0 85C0
    %if ($ - %%insn_004071a0) > 2
        %error "LONG_004071A0"
    %endif
    times 2 - ($ - %%insn_004071a0) db 0
    %%insn_004071a2:
    jz short 0x4071ae ; 004071A2 740A
    %if ($ - %%insn_004071a2) > 2
        %error "LONG_004071A2"
    %endif
    times 2 - ($ - %%insn_004071a2) db 0
    %%insn_004071a4:
    mov dword [0x41f4f0],0x0 ; 004071A4 C705F0F4410000000000
    %if ($ - %%insn_004071a4) > 10
        %error "LONG_004071A4"
    %endif
    times 10 - ($ - %%insn_004071a4) db 0
    %%insn_004071ae:
    cmp dword [0x41f4f4],0x0 ; 004071AE 833DF4F4410000
    %if ($ - %%insn_004071ae) > 7
        %error "LONG_004071AE"
    %endif
    times 7 - ($ - %%insn_004071ae) db 0
    %%insn_004071b5:
    jz short 0x4071d2 ; 004071B5 741B
    %if ($ - %%insn_004071b5) > 2
        %error "LONG_004071B5"
    %endif
    times 2 - ($ - %%insn_004071b5) db 0
    %%insn_004071b7:
    mov ecx,[0x41f4ec] ; 004071B7 8B0DECF44100
    %if ($ - %%insn_004071b7) > 6
        %error "LONG_004071B7"
    %endif
    times 6 - ($ - %%insn_004071b7) db 0
    %%insn_004071bd:
    push ecx ; 004071BD 51
    %if ($ - %%insn_004071bd) > 1
        %error "LONG_004071BD"
    %endif
    times 1 - ($ - %%insn_004071bd) db 0
    %%insn_004071be:
    call dword near [0x424620] ; 004071BE FF1520464200
    %if ($ - %%insn_004071be) > 6
        %error "LONG_004071BE"
    %endif
    times 6 - ($ - %%insn_004071be) db 0
    %%insn_004071c4:
    test eax,eax ; 004071C4 85C0
    %if ($ - %%insn_004071c4) > 2
        %error "LONG_004071C4"
    %endif
    times 2 - ($ - %%insn_004071c4) db 0
    %%insn_004071c6:
    jz short 0x4071d2 ; 004071C6 740A
    %if ($ - %%insn_004071c6) > 2
        %error "LONG_004071C6"
    %endif
    times 2 - ($ - %%insn_004071c6) db 0
    %%insn_004071c8:
    mov dword [0x41f4f4],0x0 ; 004071C8 C705F4F4410000000000
    %if ($ - %%insn_004071c8) > 10
        %error "LONG_004071C8"
    %endif
    times 10 - ($ - %%insn_004071c8) db 0
    %%insn_004071d2:
    pop ebp ; 004071D2 5D
    %if ($ - %%insn_004071d2) > 1
        %error "LONG_004071D2"
    %endif
    times 1 - ($ - %%insn_004071d2) db 0
    %%insn_004071d3:
    ret ; 004071D3 C3
    %if ($ - %%insn_004071d3) > 1
        %error "LONG_004071D3"
    %endif
    times 1 - ($ - %%insn_004071d3) db 0
    %if ($ - %%fragment_start) != 76
        %error "function fragment size drift: 00407188"
    %endif
%endmacro
