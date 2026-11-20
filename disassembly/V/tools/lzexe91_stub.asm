; LZEXE 0.91 DOS decompressor, adapted for NASM from exepack.asm.
; Copyright (c) 1989-1990 Fabrice Bellard. See LICENSE.lzexe.
bits 16
org 0x0e

original_ip equ 0
original_cs equ 2
original_sp equ 4
original_ss equ 6
packed_paragraphs equ 8
copy_displacement equ 10
depacker_size equ 12

%macro get_bit 0
    shr bp, 1
    dec dx
    jnz short %%ready
    lodsw
    mov bp, ax
    mov dl, 16
%%ready:
%endmacro

stub_start:
    push es
    push cs
    pop ds
    mov cx, [depacker_size]
    db 0x8b, 0xf1  ; mov si, cx, original encoding
    dec si
    mov di, si
    mov bx, ds
    add bx, [copy_displacement]
    mov es, bx
    std
    rep movsb
    push bx
    mov ax, relocated_stub
    push ax
    retf

relocated_stub:
    mov bp, [cs:packed_paragraphs]
    mov dx, ds

; Move the compressed stream up in memory, working backward in 64 KiB blocks.
move_stream:
    mov ax, bp
    cmp ax, 0x1000
    jbe short move_block
    mov ax, 0x1000
move_block:
    sub bp, ax
    sub dx, ax
    sub bx, ax
    mov ds, dx
    mov es, bx
    mov cl, 3
    shl ax, cl
    mov cx, ax
    shl ax, 1
    dec ax
    dec ax
    db 0x8b, 0xf0  ; mov si, ax, original encoding
    db 0x8b, 0xf8  ; mov di, ax, original encoding
    rep movsw
    or bp, bp
    jnz short move_stream

    cld
    mov es, dx
    mov ds, bx
    xor si, si
    xor di, di
    mov dx, 16
    lodsw
    mov bp, ax
decode:
    get_bit
    jnc short reference
    movsb
    jmp short decode

reference:
    xor cx, cx
    get_bit
    jc short long_reference
    get_bit
    rcl cx, 1
    get_bit
    rcl cx, 1
    inc cx
    inc cx
    lodsb
    mov bh, 0xff
    db 0x8a, 0xd8  ; mov bl, al, original encoding
    jmp near copy_match

long_reference:
    lodsw
    db 0x8b, 0xd8  ; mov bx, ax, original encoding
    mov cl, 3
    shr bh, cl
    or bh, 0xe0
    and ah, 7
    jz short extended_length
    mov cl, ah
    inc cx
    inc cx
copy_match:
    mov al, [es:bx+di]
    stosb
    loop copy_match
    jmp short decode

extended_length:
    lodsb
    or al, al
    jz short apply_relocations
    cmp al, 1
    jz short advance_segments
    mov cl, al
    inc cx
    jmp short copy_match

advance_segments:
    mov bx, di
    and di, 0xf
    add di, 0x2000
    mov cl, 4
    shr bx, cl
    mov ax, es
    add ax, bx
    sub ax, 0x200
    mov es, ax

    mov bx, si
    and si, 0xf
    shr bx, cl
    mov ax, ds
    add ax, bx
    mov ds, ax
    jmp near decode

    db '*FAB*'

apply_relocations:
    push cs
    pop ds
    mov si, relocations
    pop bx
    add bx, 0x10
    mov dx, bx
    xor di, di
next_relocation:
    lodsb
    or al, al
    jz short extended_delta
    mov ah, 0
apply_delta:
    add di, ax
    db 0x8b, 0xc7  ; mov ax, di, original encoding
    and di, 0xf
    mov cl, 4
    shr ax, cl
    add dx, ax
    mov es, dx
    add [es:di], bx
    jmp short next_relocation

extended_delta:
    lodsw
    or ax, ax
    jnz short check_end
    add dx, 0xfff
    mov es, dx
    jmp short next_relocation
check_end:
    cmp ax, strict word 1
    jne short apply_delta

    db 0x8b, 0xc3  ; mov ax, bx, original encoding
    mov di, [original_sp]
    mov si, [original_ss]
    add si, ax
    add [original_cs], ax
    sub ax, strict word 0x10
    mov ds, ax
    mov es, ax
    xor bx, bx
    cli
    mov ss, si
    db 0x8b, 0xe7  ; mov sp, di, original encoding
    sti
    jmp far [cs:bx]

relocations:
%if relocations - stub_start != 330
    %error "LZEXE 0.91 stub size changed"
%endif
