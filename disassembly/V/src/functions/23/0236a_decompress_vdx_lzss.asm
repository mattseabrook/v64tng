; Linear entry 0236A (1000:236a)
; Ghidra working symbol: FUN_1000_236a
; Verified parameterized VDX LZSS decoder: LSB-first flags, zero-word terminator, length=(token&mask)+3, and overlapping output-distance copies.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_decompress_vdx_lzss_part_00 0
    %%fragment_start:
decompress_vdx_lzss:
    %%insn_0236a:
    mov dl,[si] ; 0236A 8A14
    %if ($ - %%insn_0236a) > 2
        %error "LONG_0236A"
    %endif
    times 2 - ($ - %%insn_0236a) db 0
    %%insn_0236c:
    inc si ; 0236C 46
    %if ($ - %%insn_0236c) > 1
        %error "LONG_0236C"
    %endif
    times 1 - ($ - %%insn_0236c) db 0
    %%insn_0236d:
    mov dh,0xff ; 0236D B6FF
    %if ($ - %%insn_0236d) > 2
        %error "LONG_0236D"
    %endif
    times 2 - ($ - %%insn_0236d) db 0
    %%insn_0236f:
    shr dx,1 ; 0236F D1EA
    %if ($ - %%insn_0236f) > 2
        %error "LONG_0236F"
    %endif
    times 2 - ($ - %%insn_0236f) db 0
    %%insn_02371:
    jnc short 0x237a ; 02371 7307
    %if ($ - %%insn_02371) > 2
        %error "LONG_02371"
    %endif
    times 2 - ($ - %%insn_02371) db 0
    %%insn_02373:
    movsb ; 02373 A4
    %if ($ - %%insn_02373) > 1
        %error "LONG_02373"
    %endif
    times 1 - ($ - %%insn_02373) db 0
    db 0x22, 0xF6 ; 02374 22F6 | and dh,dh | encoding preserved
    %%insn_02376:
    jnz short 0x236f ; 02376 75F7
    %if ($ - %%insn_02376) > 2
        %error "LONG_02376"
    %endif
    times 2 - ($ - %%insn_02376) db 0
    %%insn_02378:
    jmp short 0x236a ; 02378 EBF0
    %if ($ - %%insn_02378) > 2
        %error "LONG_02378"
    %endif
    times 2 - ($ - %%insn_02378) db 0
    %%insn_0237a:
    lodsw ; 0237A AD
    %if ($ - %%insn_0237a) > 1
        %error "LONG_0237A"
    %endif
    times 1 - ($ - %%insn_0237a) db 0
    db 0x23, 0xC0 ; 0237B 23C0 | and ax,ax | encoding preserved
    %%insn_0237d:
    jz short 0x23a2 ; 0237D 7423
    %if ($ - %%insn_0237d) > 2
        %error "LONG_0237D"
    %endif
    times 2 - ($ - %%insn_0237d) db 0
    db 0x8A, 0xC8 ; 0237F 8AC8 | mov cl,al | encoding preserved
    %%insn_02381:
    shr ax,byte 0x0 ; 02381 C1E800
    %if ($ - %%insn_02381) > 3
        %error "LONG_02381"
    %endif
    times 3 - ($ - %%insn_02381) db 0
    %%insn_02384:
    and cx,0x0 ; 02384 83E100
    %if ($ - %%insn_02384) > 3
        %error "LONG_02384"
    %endif
    times 3 - ($ - %%insn_02384) db 0
    %%insn_02387:
    add cx,0x3 ; 02387 83C103
    %if ($ - %%insn_02387) > 3
        %error "LONG_02387"
    %endif
    times 3 - ($ - %%insn_02387) db 0
    %%insn_0238a:
    mov bx,ds ; 0238A 8CDB
    %if ($ - %%insn_0238a) > 2
        %error "LONG_0238A"
    %endif
    times 2 - ($ - %%insn_0238a) db 0
    db 0x8B, 0xEE ; 0238C 8BEE | mov bp,si | encoding preserved
    db 0x8B, 0xF7 ; 0238E 8BF7 | mov si,di | encoding preserved
    db 0x2B, 0xF0 ; 02390 2BF0 | sub si,ax | encoding preserved
    %%insn_02392:
    mov ax,es ; 02392 8CC0
    %if ($ - %%insn_02392) > 2
        %error "LONG_02392"
    %endif
    times 2 - ($ - %%insn_02392) db 0
    %%insn_02394:
    mov ds,ax ; 02394 8ED8
    %if ($ - %%insn_02394) > 2
        %error "LONG_02394"
    %endif
    times 2 - ($ - %%insn_02394) db 0
    %%insn_02396:
    rep movsb ; 02396 F3A4
    %if ($ - %%insn_02396) > 2
        %error "LONG_02396"
    %endif
    times 2 - ($ - %%insn_02396) db 0
    db 0x8B, 0xF5 ; 02398 8BF5 | mov si,bp | encoding preserved
    %%insn_0239a:
    mov ds,bx ; 0239A 8EDB
    %if ($ - %%insn_0239a) > 2
        %error "LONG_0239A"
    %endif
    times 2 - ($ - %%insn_0239a) db 0
    db 0x22, 0xF6 ; 0239C 22F6 | and dh,dh | encoding preserved
    %%insn_0239e:
    jnz short 0x236f ; 0239E 75CF
    %if ($ - %%insn_0239e) > 2
        %error "LONG_0239E"
    %endif
    times 2 - ($ - %%insn_0239e) db 0
    %%insn_023a0:
    jmp short 0x236a ; 023A0 EBC8
    %if ($ - %%insn_023a0) > 2
        %error "LONG_023A0"
    %endif
    times 2 - ($ - %%insn_023a0) db 0
    db 0x33, 0xED ; 023A2 33ED | xor bp,bp | encoding preserved
    %%insn_023a4:
    ret ; 023A4 C3
    %if ($ - %%insn_023a4) > 1
        %error "LONG_023A4"
    %endif
    times 1 - ($ - %%insn_023a4) db 0
    %if ($ - %%fragment_start) != 59
        %error "SIZE_0236A"
    %endif
%endmacro
