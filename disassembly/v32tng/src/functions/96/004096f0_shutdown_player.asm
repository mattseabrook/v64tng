; PE virtual entry 004096F0
; Ghidra working symbol: FUN_004096f0
; Verified global Win32 player shutdown role.
; Generated losslessly; preserve byte identity after edits.

%macro emit_shutdown_player_part_00 0
    %%fragment_start:
shutdown_player:
    %%insn_004096f0:
    push ebp ; 004096F0 55
    %if ($ - %%insn_004096f0) > 1
        %error "LONG_004096F0"
    %endif
    times 1 - ($ - %%insn_004096f0) db 0
    db 0x8B, 0xEC ; 004096F1 8BEC | mov ebp,esp | encoding preserved
    %%insn_004096f3:
    mov dword [0x41f5c0],0x1 ; 004096F3 C705C0F5410001000000
    %if ($ - %%insn_004096f3) > 10
        %error "LONG_004096F3"
    %endif
    times 10 - ($ - %%insn_004096f3) db 0
    %%insn_004096fd:
    call 0x4075ad ; 004096FD E8ABDEFFFF
    %if ($ - %%insn_004096fd) > 5
        %error "LONG_004096FD"
    %endif
    times 5 - ($ - %%insn_004096fd) db 0
    %%insn_00409702:
    mov ecx,0x421300 ; 00409702 B900134200
    %if ($ - %%insn_00409702) > 5
        %error "LONG_00409702"
    %endif
    times 5 - ($ - %%insn_00409702) db 0
    %%insn_00409707:
    call dword near [0x4213a4] ; 00409707 FF15A4134200
    %if ($ - %%insn_00409707) > 6
        %error "LONG_00409707"
    %endif
    times 6 - ($ - %%insn_00409707) db 0
    %%insn_0040970d:
    call 0x408f10 ; 0040970D E8FEF7FFFF
    %if ($ - %%insn_0040970d) > 5
        %error "LONG_0040970D"
    %endif
    times 5 - ($ - %%insn_0040970d) db 0
    %%insn_00409712:
    cmp dword [0x421344],0x0 ; 00409712 833D4413420000
    %if ($ - %%insn_00409712) > 7
        %error "LONG_00409712"
    %endif
    times 7 - ($ - %%insn_00409712) db 0
    %%insn_00409719:
    jz short 0x409729 ; 00409719 740E
    %if ($ - %%insn_00409719) > 2
        %error "LONG_00409719"
    %endif
    times 2 - ($ - %%insn_00409719) db 0
    %%insn_0040971b:
    mov eax,[0x421344] ; 0040971B A144134200
    %if ($ - %%insn_0040971b) > 5
        %error "LONG_0040971B"
    %endif
    times 5 - ($ - %%insn_0040971b) db 0
    %%insn_00409720:
    push eax ; 00409720 50
    %if ($ - %%insn_00409720) > 1
        %error "LONG_00409720"
    %endif
    times 1 - ($ - %%insn_00409720) db 0
    %%insn_00409721:
    call 0x40c9a0 ; 00409721 E87A320000
    %if ($ - %%insn_00409721) > 5
        %error "LONG_00409721"
    %endif
    times 5 - ($ - %%insn_00409721) db 0
    %%insn_00409726:
    add esp,0x4 ; 00409726 83C404
    %if ($ - %%insn_00409726) > 3
        %error "LONG_00409726"
    %endif
    times 3 - ($ - %%insn_00409726) db 0
    %%insn_00409729:
    cmp dword [ebp+0x8],0x0 ; 00409729 837D0800
    %if ($ - %%insn_00409729) > 4
        %error "LONG_00409729"
    %endif
    times 4 - ($ - %%insn_00409729) db 0
    %%insn_0040972d:
    jz short 0x409751 ; 0040972D 7422
    %if ($ - %%insn_0040972d) > 2
        %error "LONG_0040972D"
    %endif
    times 2 - ($ - %%insn_0040972d) db 0
    %%insn_0040972f:
    mov ecx,[ebp+0x8] ; 0040972F 8B4D08
    %if ($ - %%insn_0040972f) > 3
        %error "LONG_0040972F"
    %endif
    times 3 - ($ - %%insn_0040972f) db 0
    %%insn_00409732:
    movsx edx,byte [ecx] ; 00409732 0FBE11
    %if ($ - %%insn_00409732) > 3
        %error "LONG_00409732"
    %endif
    times 3 - ($ - %%insn_00409732) db 0
    %%insn_00409735:
    test edx,edx ; 00409735 85D2
    %if ($ - %%insn_00409735) > 2
        %error "LONG_00409735"
    %endif
    times 2 - ($ - %%insn_00409735) db 0
    %%insn_00409737:
    jz short 0x409751 ; 00409737 7418
    %if ($ - %%insn_00409737) > 2
        %error "LONG_00409737"
    %endif
    times 2 - ($ - %%insn_00409737) db 0
    %%insn_00409739:
    push dword 0x0 ; 00409739 6A00
    %if ($ - %%insn_00409739) > 2
        %error "LONG_00409739"
    %endif
    times 2 - ($ - %%insn_00409739) db 0
    %%insn_0040973b:
    push dword 0x41bc04 ; 0040973B 6804BC4100
    %if ($ - %%insn_0040973b) > 5
        %error "LONG_0040973B"
    %endif
    times 5 - ($ - %%insn_0040973b) db 0
    %%insn_00409740:
    mov eax,[ebp+0x8] ; 00409740 8B4508
    %if ($ - %%insn_00409740) > 3
        %error "LONG_00409740"
    %endif
    times 3 - ($ - %%insn_00409740) db 0
    %%insn_00409743:
    push eax ; 00409743 50
    %if ($ - %%insn_00409743) > 1
        %error "LONG_00409743"
    %endif
    times 1 - ($ - %%insn_00409743) db 0
    %%insn_00409744:
    call dword near [0x42456c] ; 00409744 FF156C454200
    %if ($ - %%insn_00409744) > 6
        %error "LONG_00409744"
    %endif
    times 6 - ($ - %%insn_00409744) db 0
    %%insn_0040974a:
    push eax ; 0040974A 50
    %if ($ - %%insn_0040974a) > 1
        %error "LONG_0040974A"
    %endif
    times 1 - ($ - %%insn_0040974a) db 0
    %%insn_0040974b:
    call dword near [0x4244f8] ; 0040974B FF15F8444200
    %if ($ - %%insn_0040974b) > 6
        %error "LONG_0040974B"
    %endif
    times 6 - ($ - %%insn_0040974b) db 0
    %%insn_00409751:
    mov ecx,[0x41f5a8] ; 00409751 8B0DA8F54100
    %if ($ - %%insn_00409751) > 6
        %error "LONG_00409751"
    %endif
    times 6 - ($ - %%insn_00409751) db 0
    %%insn_00409757:
    push ecx ; 00409757 51
    %if ($ - %%insn_00409757) > 1
        %error "LONG_00409757"
    %endif
    times 1 - ($ - %%insn_00409757) db 0
    %%insn_00409758:
    call dword near [0x4243c8] ; 00409758 FF15C8434200
    %if ($ - %%insn_00409758) > 6
        %error "LONG_00409758"
    %endif
    times 6 - ($ - %%insn_00409758) db 0
    %%insn_0040975e:
    pop ebp ; 0040975E 5D
    %if ($ - %%insn_0040975e) > 1
        %error "LONG_0040975E"
    %endif
    times 1 - ($ - %%insn_0040975e) db 0
    %%insn_0040975f:
    ret ; 0040975F C3
    %if ($ - %%insn_0040975f) > 1
        %error "LONG_0040975F"
    %endif
    times 1 - ($ - %%insn_0040975f) db 0
    %if ($ - %%fragment_start) != 112
        %error "function fragment size drift: 004096F0"
    %endif
%endmacro
