; PE virtual entry 00401BFD
; Ghidra working symbol: FUN_00401bfd
; Verified loose-VDX launcher. Formats d:\t7g\<name>, scans C: through Z:
; for the first openable path, and begins playback when found.
; Generated losslessly; preserve byte identity after edits.

%macro emit_play_drive_scanned_loose_vdx_part_00 0
    %%fragment_start:
play_drive_scanned_loose_vdx:
    %%insn_00401bfd:
    push ebp ; 00401BFD 55
    %if ($ - %%insn_00401bfd) > 1
        %error "LONG_00401BFD"
    %endif
    times 1 - ($ - %%insn_00401bfd) db 0
    db 0x8B, 0xEC ; 00401BFE 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401c00:
    sub esp,0x50 ; 00401C00 83EC50
    %if ($ - %%insn_00401c00) > 3
        %error "LONG_00401C00"
    %endif
    times 3 - ($ - %%insn_00401c00) db 0
    %%insn_00401c03:
    mov eax,[ebp+0x8] ; 00401C03 8B4508
    %if ($ - %%insn_00401c03) > 3
        %error "LONG_00401C03"
    %endif
    times 3 - ($ - %%insn_00401c03) db 0
    %%insn_00401c06:
    push eax ; 00401C06 50
    %if ($ - %%insn_00401c06) > 1
        %error "LONG_00401C06"
    %endif
    times 1 - ($ - %%insn_00401c06) db 0
    %%insn_00401c07:
    push dword v32_loose_vdx_drive_path_format ; 00401C07 6808B14100
    %if ($ - %%insn_00401c07) > 5
        %error "LONG_00401C07"
    %endif
    times 5 - ($ - %%insn_00401c07) db 0
    %%insn_00401c0c:
    lea ecx,[ebp-0x50] ; 00401C0C 8D4DB0
    %if ($ - %%insn_00401c0c) > 3
        %error "LONG_00401C0C"
    %endif
    times 3 - ($ - %%insn_00401c0c) db 0
    %%insn_00401c0f:
    push ecx ; 00401C0F 51
    %if ($ - %%insn_00401c0f) > 1
        %error "LONG_00401C0F"
    %endif
    times 1 - ($ - %%insn_00401c0f) db 0
    %%insn_00401c10:
    call 0x40cd50 ; 00401C10 E83BB10000
    %if ($ - %%insn_00401c10) > 5
        %error "LONG_00401C10"
    %endif
    times 5 - ($ - %%insn_00401c10) db 0
    %%insn_00401c15:
    add esp,0xc ; 00401C15 83C40C
    %if ($ - %%insn_00401c15) > 3
        %error "LONG_00401C15"
    %endif
    times 3 - ($ - %%insn_00401c15) db 0
    %%insn_00401c18:
    lea edx,[ebp-0x50] ; 00401C18 8D55B0
    %if ($ - %%insn_00401c18) > 3
        %error "LONG_00401C18"
    %endif
    times 3 - ($ - %%insn_00401c18) db 0
    %%insn_00401c1b:
    push edx ; 00401C1B 52
    %if ($ - %%insn_00401c1b) > 1
        %error "LONG_00401C1B"
    %endif
    times 1 - ($ - %%insn_00401c1b) db 0
    %%insn_00401c1c:
    call open_first_drive_letter_path ; 00401C1C E892FFFFFF
    %if ($ - %%insn_00401c1c) > 5
        %error "LONG_00401C1C"
    %endif
    times 5 - ($ - %%insn_00401c1c) db 0
    %%insn_00401c21:
    add esp,0x4 ; 00401C21 83C404
    %if ($ - %%insn_00401c21) > 3
        %error "LONG_00401C21"
    %endif
    times 3 - ($ - %%insn_00401c21) db 0
    %%insn_00401c24:
    mov [0x41f31c],eax ; 00401C24 A31CF34100
    %if ($ - %%insn_00401c24) > 5
        %error "LONG_00401C24"
    %endif
    times 5 - ($ - %%insn_00401c24) db 0
    %%insn_00401c29:
    cmp dword [0x41f31c],0x0 ; 00401C29 833D1CF3410000
    %if ($ - %%insn_00401c29) > 7
        %error "LONG_00401C29"
    %endif
    times 7 - ($ - %%insn_00401c29) db 0
    %%insn_00401c30:
    jz short 0x401c4e ; 00401C30 741C
    %if ($ - %%insn_00401c30) > 2
        %error "LONG_00401C30"
    %endif
    times 2 - ($ - %%insn_00401c30) db 0
    %%insn_00401c32:
    push dword 0x0 ; 00401C32 6A00
    %if ($ - %%insn_00401c32) > 2
        %error "LONG_00401C32"
    %endif
    times 2 - ($ - %%insn_00401c32) db 0
    %%insn_00401c34:
    push dword 0x0 ; 00401C34 6A00
    %if ($ - %%insn_00401c34) > 2
        %error "LONG_00401C34"
    %endif
    times 2 - ($ - %%insn_00401c34) db 0
    %%insn_00401c36:
    push dword 0x0 ; 00401C36 6A00
    %if ($ - %%insn_00401c36) > 2
        %error "LONG_00401C36"
    %endif
    times 2 - ($ - %%insn_00401c36) db 0
    %%insn_00401c38:
    push dword 0x0 ; 00401C38 6A00
    %if ($ - %%insn_00401c38) > 2
        %error "LONG_00401C38"
    %endif
    times 2 - ($ - %%insn_00401c38) db 0
    %%insn_00401c3a:
    mov eax,[0x41f31c] ; 00401C3A A11CF34100
    %if ($ - %%insn_00401c3a) > 5
        %error "LONG_00401C3A"
    %endif
    times 5 - ($ - %%insn_00401c3a) db 0
    %%insn_00401c3f:
    push eax ; 00401C3F 50
    %if ($ - %%insn_00401c3f) > 1
        %error "LONG_00401C3F"
    %endif
    times 1 - ($ - %%insn_00401c3f) db 0
    %%insn_00401c40:
    call 0x408d24 ; 00401C40 E8DF700000
    %if ($ - %%insn_00401c40) > 5
        %error "LONG_00401C40"
    %endif
    times 5 - ($ - %%insn_00401c40) db 0
    %%insn_00401c45:
    add esp,0x14 ; 00401C45 83C414
    %if ($ - %%insn_00401c45) > 3
        %error "LONG_00401C45"
    %endif
    times 3 - ($ - %%insn_00401c45) db 0
    %%insn_00401c48:
    mov ax,0x1 ; 00401C48 66B80100
    %if ($ - %%insn_00401c48) > 4
        %error "LONG_00401C48"
    %endif
    times 4 - ($ - %%insn_00401c48) db 0
    %%insn_00401c4c:
    jmp short 0x401c51 ; 00401C4C EB03
    %if ($ - %%insn_00401c4c) > 2
        %error "LONG_00401C4C"
    %endif
    times 2 - ($ - %%insn_00401c4c) db 0
    db 0x66, 0x33, 0xC0 ; 00401C4E 6633C0 | xor ax,ax | encoding preserved
    db 0x8B, 0xE5 ; 00401C51 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401c53:
    pop ebp ; 00401C53 5D
    %if ($ - %%insn_00401c53) > 1
        %error "LONG_00401C53"
    %endif
    times 1 - ($ - %%insn_00401c53) db 0
    %%insn_00401c54:
    ret ; 00401C54 C3
    %if ($ - %%insn_00401c54) > 1
        %error "LONG_00401C54"
    %endif
    times 1 - ($ - %%insn_00401c54) db 0
    %if ($ - %%fragment_start) != 88
        %error "function fragment size drift: 00401BFD"
    %endif
%endmacro
