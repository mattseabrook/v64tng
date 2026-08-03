; Linear entry 0345E (1000:345e)
; Ghidra working symbol: FUN_1000_345e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0345e_part_00 0
    %%fragment_start:
func_0345e:
    %%insn_0345e:
    push bx ; 0345E 53
    %if ($ - %%insn_0345e) > 1
        %error "LONG_0345E"
    %endif
    times 1 - ($ - %%insn_0345e) db 0
    db 0x8B, 0xD8 ; 0345F 8BD8 | mov bx,ax | encoding preserved
    %%insn_03461:
    out dx,al ; 03461 EE
    %if ($ - %%insn_03461) > 1
        %error "LONG_03461"
    %endif
    times 1 - ($ - %%insn_03461) db 0
    db 0x8A, 0xE0 ; 03462 8AE0 | mov ah,al | encoding preserved
    %%insn_03464:
    inc dx ; 03464 42
    %if ($ - %%insn_03464) > 1
        %error "LONG_03464"
    %endif
    times 1 - ($ - %%insn_03464) db 0
    %%insn_03465:
    in al,dx ; 03465 EC
    %if ($ - %%insn_03465) > 1
        %error "LONG_03465"
    %endif
    times 1 - ($ - %%insn_03465) db 0
    %%insn_03466:
    dec dx ; 03466 4A
    %if ($ - %%insn_03466) > 1
        %error "LONG_03466"
    %endif
    times 1 - ($ - %%insn_03466) db 0
    %%insn_03467:
    xchg al,ah ; 03467 86C4
    %if ($ - %%insn_03467) > 2
        %error "LONG_03467"
    %endif
    times 2 - ($ - %%insn_03467) db 0
    %%insn_03469:
    push ax ; 03469 50
    %if ($ - %%insn_03469) > 1
        %error "LONG_03469"
    %endif
    times 1 - ($ - %%insn_03469) db 0
    db 0x8B, 0xC3 ; 0346A 8BC3 | mov ax,bx | encoding preserved
    %%insn_0346c:
    out dx,ax ; 0346C EF
    %if ($ - %%insn_0346c) > 1
        %error "LONG_0346C"
    %endif
    times 1 - ($ - %%insn_0346c) db 0
    %%insn_0346d:
    out dx,al ; 0346D EE
    %if ($ - %%insn_0346d) > 1
        %error "LONG_0346D"
    %endif
    times 1 - ($ - %%insn_0346d) db 0
    db 0x8A, 0xE0 ; 0346E 8AE0 | mov ah,al | encoding preserved
    %%insn_03470:
    inc dx ; 03470 42
    %if ($ - %%insn_03470) > 1
        %error "LONG_03470"
    %endif
    times 1 - ($ - %%insn_03470) db 0
    %%insn_03471:
    in al,dx ; 03471 EC
    %if ($ - %%insn_03471) > 1
        %error "LONG_03471"
    %endif
    times 1 - ($ - %%insn_03471) db 0
    %%insn_03472:
    dec dx ; 03472 4A
    %if ($ - %%insn_03472) > 1
        %error "LONG_03472"
    %endif
    times 1 - ($ - %%insn_03472) db 0
    db 0x22, 0xC7 ; 03473 22C7 | and al,bh | encoding preserved
    db 0x3A, 0xC7 ; 03475 3AC7 | cmp al,bh | encoding preserved
    %%insn_03477:
    jnz short 0x3488 ; 03477 750F
    %if ($ - %%insn_03477) > 2
        %error "LONG_03477"
    %endif
    times 2 - ($ - %%insn_03477) db 0
    db 0x8A, 0xC4 ; 03479 8AC4 | mov al,ah | encoding preserved
    %%insn_0347b:
    mov ah,0x0 ; 0347B B400
    %if ($ - %%insn_0347b) > 2
        %error "LONG_0347B"
    %endif
    times 2 - ($ - %%insn_0347b) db 0
    %%insn_0347d:
    out dx,ax ; 0347D EF
    %if ($ - %%insn_0347d) > 1
        %error "LONG_0347D"
    %endif
    times 1 - ($ - %%insn_0347d) db 0
    %%insn_0347e:
    out dx,al ; 0347E EE
    %if ($ - %%insn_0347e) > 1
        %error "LONG_0347E"
    %endif
    times 1 - ($ - %%insn_0347e) db 0
    db 0x8A, 0xE0 ; 0347F 8AE0 | mov ah,al | encoding preserved
    %%insn_03481:
    inc dx ; 03481 42
    %if ($ - %%insn_03481) > 1
        %error "LONG_03481"
    %endif
    times 1 - ($ - %%insn_03481) db 0
    %%insn_03482:
    in al,dx ; 03482 EC
    %if ($ - %%insn_03482) > 1
        %error "LONG_03482"
    %endif
    times 1 - ($ - %%insn_03482) db 0
    %%insn_03483:
    dec dx ; 03483 4A
    %if ($ - %%insn_03483) > 1
        %error "LONG_03483"
    %endif
    times 1 - ($ - %%insn_03483) db 0
    db 0x22, 0xC7 ; 03484 22C7 | and al,bh | encoding preserved
    %%insn_03486:
    cmp al,0x0 ; 03486 3C00
    %if ($ - %%insn_03486) > 2
        %error "LONG_03486"
    %endif
    times 2 - ($ - %%insn_03486) db 0
    %%insn_03488:
    pop ax ; 03488 58
    %if ($ - %%insn_03488) > 1
        %error "LONG_03488"
    %endif
    times 1 - ($ - %%insn_03488) db 0
    %%insn_03489:
    out dx,ax ; 03489 EF
    %if ($ - %%insn_03489) > 1
        %error "LONG_03489"
    %endif
    times 1 - ($ - %%insn_03489) db 0
    %%insn_0348a:
    pop bx ; 0348A 5B
    %if ($ - %%insn_0348a) > 1
        %error "LONG_0348A"
    %endif
    times 1 - ($ - %%insn_0348a) db 0
    %%insn_0348b:
    ret ; 0348B C3
    %if ($ - %%insn_0348b) > 1
        %error "LONG_0348B"
    %endif
    times 1 - ($ - %%insn_0348b) db 0
    %if ($ - %%fragment_start) != 46
        %error "SIZE_0345E"
    %endif
%endmacro
