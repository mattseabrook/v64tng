; 0040977B..0040984F
;
; Recovered WinMain body. `SETUPEXEC` is the only named switch. Any other
; non-empty command line is handed unchanged to open_loose_vdx.

%define strcmp_runtime              0x0040D8A0
%define setup_window_and_runtime    0x00409850
%define show_cursor_IAT             0x00424554
%define peek_message_IAT            0x00424558
%define get_message_IAT             0x0042455C
%define translate_message_IAT       0x00424560
%define dispatch_message_IAT        0x00424564
%define wait_message_IAT            0x00424568
%define pump_media_and_game         0x00408EB7
%define shutdown_player             0x004096F0

winmain:
    push ebp
    db 0x8B, 0xEC                   ; mov ebp,esp (original encoding)
    sub esp, byte 0x1C
    mov eax, [ebp+8]
    mov [0x004212E0], eax

    push dword 0x0041BC20           ; "SETUPEXEC"
    mov ecx, [ebp+0x10]
    push ecx
    call strcmp_runtime
    add esp, byte 8
    test eax, eax
    jne .argument_ready
    mov dword [0x0041F5C4], 1       ; setup coordination flag
    mov edx, [ebp+0x10]
    mov byte [edx], 0               ; continue as an empty/game command

.argument_ready:
    mov eax, [ebp+0x14]
    push eax
    mov ecx, [ebp+8]
    push ecx
    call setup_window_and_runtime
    add esp, byte 8
    test eax, eax
    jne .runtime_ready
    push byte 1
    call dword [show_cursor_IAT]
    db 0x33, 0xC0                   ; xor eax,eax (original encoding)
    jmp short .return

.runtime_ready:
    mov edx, [ebp+0x10]
    push edx
    call dispatch_game_or_loose_vdx
    add esp, byte 4

.message_loop:
    mov eax, 1                      ; original always-true loop shape
    test eax, eax
    je .shutdown
    push byte 0
    push byte 0
    push byte 0
    push byte 0
    lea ecx, [ebp-0x1C]
    push ecx
    call dword [peek_message_IAT]
    test eax, eax
    je .idle

    push byte 0
    push byte 0
    push byte 0
    lea edx, [ebp-0x1C]
    push edx
    call dword [get_message_IAT]
    test eax, eax
    jne .dispatch
    jmp short .shutdown

.dispatch:
    lea eax, [ebp-0x1C]
    push eax
    call dword [translate_message_IAT]
    lea ecx, [ebp-0x1C]
    push ecx
    call dword [dispatch_message_IAT]
    jmp short .continue_loop

.idle:
    cmp dword [0x0041F5A0], 0
    je .wait
    call pump_media_and_game
    jmp short .continue_loop
.wait:
    call dword [wait_message_IAT]
.continue_loop:
    jmp short .message_loop

.shutdown:
    push byte 0
    call shutdown_player
    add esp, byte 4
    mov eax, [ebp-0x14]             ; MSG.wParam

.return:
    db 0x8B, 0xE5                   ; mov esp,ebp
    pop ebp
    ret 0x10

%if ($ - winmain) != (0x00409850 - 0x0040977B)
    %error "WinMain source size drifted"
%endif
