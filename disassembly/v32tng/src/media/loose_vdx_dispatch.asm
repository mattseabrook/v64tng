; 00408DF6..00408EB6
;
; Semantic working names only. This pair proves the Win32 standalone path opens
; the supplied filename exactly, checks VDX magic 9267h, and otherwise selects
; normal archive/GRV game startup for an empty command string.

%define mmioOpenA_IAT           0x00424598
%define mmioRead_IAT            0x00424594
%define fatal_media_error       0x00409691
%define configure_vdx_stream    0x0040C1BD
%define decode_vdx_stream       0x0040C261
%define init_archive_tables     0x0040C180
%define load_script_grv         0x0040C0E7
%define init_resource_catalog   0x00401202
%define init_game_subsystems    0x00404350
%define init_game_state         0x00409A90

open_loose_vdx:
    push ebp
    db 0x8B, 0xEC                   ; mov ebp,esp (original encoding)
    push ecx
    mov dword [0x00421404], 4
    push dword 0x00010000
    push byte 0
    mov eax, [ebp+8]
    push eax
    call dword [mmioOpenA_IAT]
    mov [0x004213C0], eax
    cmp dword [0x004213C0], 0
    jne .opened
    push byte 1
    push byte 7
    call fatal_media_error
    add esp, byte 8
.opened:
    push byte 0x10
    push dword 0x004213C8
    mov ecx, [0x004213C0]
    push ecx
    call dword [mmioRead_IAT]
    db 0x33, 0xD2                   ; xor edx,edx (original encoding)
    mov dx, [0x004213C8]
    mov [ebp-4], edx
    cmp dword [ebp-4], 0x00009267
    je .valid_vdx
    jmp short .done
.valid_vdx:
    push dword 0x004213C0
    call configure_vdx_stream
    add esp, byte 4
    mov dword [0x004213C4], decode_vdx_stream
.done:
    db 0x8B, 0xE5                   ; mov esp,ebp
    pop ebp
    ret

dispatch_game_or_loose_vdx:
    push ebp
    db 0x8B, 0xEC                   ; mov ebp,esp
    mov eax, [ebp+8]
    movsx ecx, byte [eax]
    test ecx, ecx
    je .normal_game
    mov edx, [ebp+8]
    push edx
    call open_loose_vdx
    add esp, byte 4
    jmp short .done
.normal_game:
    call init_archive_tables
    call load_script_grv
    call init_resource_catalog
    call init_game_subsystems
    call init_game_state
    mov eax, [0x0041F594]
    or al, 1
    mov [0x0041F594], eax
.done:
    pop ebp
    ret

%if ($ - open_loose_vdx) != (0x00408EB7 - 0x00408DF6)
    %error "loose VDX dispatch source size drifted"
%endif
