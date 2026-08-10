; PE virtual entry 00401CDD
; Ghidra working symbol: FUN_00401cdd
; Verified optional numbered-credit launcher. Formats n_cred%02d.vdx, opens
; the loose file from the current directory, and begins playback when found.
; Generated losslessly; preserve byte identity after edits.

%macro emit_play_optional_numbered_credit_video_part_00 0
    %%fragment_start:
play_optional_numbered_credit_video:
    %%insn_00401cdd:
    push ebp ; 00401CDD 55
    %if ($ - %%insn_00401cdd) > 1
        %error "LONG_00401CDD"
    %endif
    times 1 - ($ - %%insn_00401cdd) db 0
    db 0x8B, 0xEC ; 00401CDE 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401ce0:
    sub esp,0x10 ; 00401CE0 83EC10
    %if ($ - %%insn_00401ce0) > 3
        %error "LONG_00401CE0"
    %endif
    times 3 - ($ - %%insn_00401ce0) db 0
    %%insn_00401ce3:
    mov eax,[ebp+0x8] ; 00401CE3 8B4508
    %if ($ - %%insn_00401ce3) > 3
        %error "LONG_00401CE3"
    %endif
    times 3 - ($ - %%insn_00401ce3) db 0
    %%insn_00401ce6:
    push eax ; 00401CE6 50
    %if ($ - %%insn_00401ce6) > 1
        %error "LONG_00401CE6"
    %endif
    times 1 - ($ - %%insn_00401ce6) db 0
    %%insn_00401ce7:
    push dword v32_numbered_credit_filename_format ; 00401CE7 682CB14100
    %if ($ - %%insn_00401ce7) > 5
        %error "LONG_00401CE7"
    %endif
    times 5 - ($ - %%insn_00401ce7) db 0
    %%insn_00401cec:
    lea ecx,[ebp-0x10] ; 00401CEC 8D4DF0
    %if ($ - %%insn_00401cec) > 3
        %error "LONG_00401CEC"
    %endif
    times 3 - ($ - %%insn_00401cec) db 0
    %%insn_00401cef:
    push ecx ; 00401CEF 51
    %if ($ - %%insn_00401cef) > 1
        %error "LONG_00401CEF"
    %endif
    times 1 - ($ - %%insn_00401cef) db 0
    %%insn_00401cf0:
    call 0x40cd50 ; 00401CF0 E85BB00000
    %if ($ - %%insn_00401cf0) > 5
        %error "LONG_00401CF0"
    %endif
    times 5 - ($ - %%insn_00401cf0) db 0
    %%insn_00401cf5:
    add esp,0xc ; 00401CF5 83C40C
    %if ($ - %%insn_00401cf5) > 3
        %error "LONG_00401CF5"
    %endif
    times 3 - ($ - %%insn_00401cf5) db 0
    %%insn_00401cf8:
    push dword 0x10000 ; 00401CF8 6800000100
    %if ($ - %%insn_00401cf8) > 5
        %error "LONG_00401CF8"
    %endif
    times 5 - ($ - %%insn_00401cf8) db 0
    %%insn_00401cfd:
    push dword 0x0 ; 00401CFD 6A00
    %if ($ - %%insn_00401cfd) > 2
        %error "LONG_00401CFD"
    %endif
    times 2 - ($ - %%insn_00401cfd) db 0
    %%insn_00401cff:
    lea edx,[ebp-0x10] ; 00401CFF 8D55F0
    %if ($ - %%insn_00401cff) > 3
        %error "LONG_00401CFF"
    %endif
    times 3 - ($ - %%insn_00401cff) db 0
    %%insn_00401d02:
    push edx ; 00401D02 52
    %if ($ - %%insn_00401d02) > 1
        %error "LONG_00401D02"
    %endif
    times 1 - ($ - %%insn_00401d02) db 0
    %%insn_00401d03:
    call dword near [0x424598] ; 00401D03 FF1598454200
    %if ($ - %%insn_00401d03) > 6
        %error "LONG_00401D03"
    %endif
    times 6 - ($ - %%insn_00401d03) db 0
    %%insn_00401d09:
    mov [0x41f31c],eax ; 00401D09 A31CF34100
    %if ($ - %%insn_00401d09) > 5
        %error "LONG_00401D09"
    %endif
    times 5 - ($ - %%insn_00401d09) db 0
    %%insn_00401d0e:
    cmp dword [0x41f31c],0x0 ; 00401D0E 833D1CF3410000
    %if ($ - %%insn_00401d0e) > 7
        %error "LONG_00401D0E"
    %endif
    times 7 - ($ - %%insn_00401d0e) db 0
    %%insn_00401d15:
    jz short 0x401d33 ; 00401D15 741C
    %if ($ - %%insn_00401d15) > 2
        %error "LONG_00401D15"
    %endif
    times 2 - ($ - %%insn_00401d15) db 0
    %%insn_00401d17:
    push dword 0x0 ; 00401D17 6A00
    %if ($ - %%insn_00401d17) > 2
        %error "LONG_00401D17"
    %endif
    times 2 - ($ - %%insn_00401d17) db 0
    %%insn_00401d19:
    push dword 0x0 ; 00401D19 6A00
    %if ($ - %%insn_00401d19) > 2
        %error "LONG_00401D19"
    %endif
    times 2 - ($ - %%insn_00401d19) db 0
    %%insn_00401d1b:
    push dword 0x0 ; 00401D1B 6A00
    %if ($ - %%insn_00401d1b) > 2
        %error "LONG_00401D1B"
    %endif
    times 2 - ($ - %%insn_00401d1b) db 0
    %%insn_00401d1d:
    push dword 0x0 ; 00401D1D 6A00
    %if ($ - %%insn_00401d1d) > 2
        %error "LONG_00401D1D"
    %endif
    times 2 - ($ - %%insn_00401d1d) db 0
    %%insn_00401d1f:
    mov eax,[0x41f31c] ; 00401D1F A11CF34100
    %if ($ - %%insn_00401d1f) > 5
        %error "LONG_00401D1F"
    %endif
    times 5 - ($ - %%insn_00401d1f) db 0
    %%insn_00401d24:
    push eax ; 00401D24 50
    %if ($ - %%insn_00401d24) > 1
        %error "LONG_00401D24"
    %endif
    times 1 - ($ - %%insn_00401d24) db 0
    %%insn_00401d25:
    call 0x408d24 ; 00401D25 E8FA6F0000
    %if ($ - %%insn_00401d25) > 5
        %error "LONG_00401D25"
    %endif
    times 5 - ($ - %%insn_00401d25) db 0
    %%insn_00401d2a:
    add esp,0x14 ; 00401D2A 83C414
    %if ($ - %%insn_00401d2a) > 3
        %error "LONG_00401D2A"
    %endif
    times 3 - ($ - %%insn_00401d2a) db 0
    %%insn_00401d2d:
    mov ax,0x1 ; 00401D2D 66B80100
    %if ($ - %%insn_00401d2d) > 4
        %error "LONG_00401D2D"
    %endif
    times 4 - ($ - %%insn_00401d2d) db 0
    %%insn_00401d31:
    jmp short 0x401d36 ; 00401D31 EB03
    %if ($ - %%insn_00401d31) > 2
        %error "LONG_00401D31"
    %endif
    times 2 - ($ - %%insn_00401d31) db 0
    db 0x66, 0x33, 0xC0 ; 00401D33 6633C0 | xor ax,ax | encoding preserved
    db 0x8B, 0xE5 ; 00401D36 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401d38:
    pop ebp ; 00401D38 5D
    %if ($ - %%insn_00401d38) > 1
        %error "LONG_00401D38"
    %endif
    times 1 - ($ - %%insn_00401d38) db 0
    %%insn_00401d39:
    ret ; 00401D39 C3
    %if ($ - %%insn_00401d39) > 1
        %error "LONG_00401D39"
    %endif
    times 1 - ($ - %%insn_00401d39) db 0
    %if ($ - %%fragment_start) != 93
        %error "function fragment size drift: 00401CDD"
    %endif
%endmacro
