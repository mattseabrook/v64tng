; Linear entry 083FE (1702:13de)
; Ghidra working symbol: FUN_1702_13de
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_083fe_part_00 0
    %%fragment_start:
func_083fe:
    %%insn_083fe:
    push bp ; 083FE 55
    %if ($ - %%insn_083fe) > 1
        %error "LONG_083FE"
    %endif
    times 1 - ($ - %%insn_083fe) db 0
    db 0x8B, 0xEC ; 083FF 8BEC | mov bp,sp | encoding preserved
    %%insn_08401:
    push ds ; 08401 1E
    %if ($ - %%insn_08401) > 1
        %error "LONG_08401"
    %endif
    times 1 - ($ - %%insn_08401) db 0
    %%insn_08402:
    push si ; 08402 56
    %if ($ - %%insn_08402) > 1
        %error "LONG_08402"
    %endif
    times 1 - ($ - %%insn_08402) db 0
    %%insn_08403:
    push di ; 08403 57
    %if ($ - %%insn_08403) > 1
        %error "LONG_08403"
    %endif
    times 1 - ($ - %%insn_08403) db 0
    %%insn_08404:
    cmp word [cs:0xe28],0x0 ; 08404 2E833E280E00
    %if ($ - %%insn_08404) > 6
        %error "LONG_08404"
    %endif
    times 6 - ($ - %%insn_08404) db 0
    %%insn_0840a:
    jnz short 0x8447 ; 0840A 753B
    %if ($ - %%insn_0840a) > 2
        %error "LONG_0840A"
    %endif
    times 2 - ($ - %%insn_0840a) db 0
    %%insn_0840c:
    les di,word [cs:0xe2a] ; 0840C 2EC43E2A0E
    %if ($ - %%insn_0840c) > 5
        %error "LONG_0840C"
    %endif
    times 5 - ($ - %%insn_0840c) db 0
    %%insn_08411:
    mov word [cs:0xe22],es ; 08411 2E8C06220E
    %if ($ - %%insn_08411) > 5
        %error "LONG_08411"
    %endif
    times 5 - ($ - %%insn_08411) db 0
    %%insn_08416:
    add di,0x100 ; 08416 81C70001
    %if ($ - %%insn_08416) > 4
        %error "LONG_08416"
    %endif
    times 4 - ($ - %%insn_08416) db 0
    %%insn_0841a:
    mov [cs:0xe20],di ; 0841A 2E893E200E
    %if ($ - %%insn_0841a) > 5
        %error "LONG_0841A"
    %endif
    times 5 - ($ - %%insn_0841a) db 0
    %%insn_0841f:
    call word far [cs:0xe20] ; 0841F 2EFF1E200E
    %if ($ - %%insn_0841f) > 5
        %error "LONG_0841F"
    %endif
    times 5 - ($ - %%insn_0841f) db 0
    %%insn_08424:
    mov ax,0x68c ; 08424 B88C06
    %if ($ - %%insn_08424) > 3
        %error "LONG_08424"
    %endif
    times 3 - ($ - %%insn_08424) db 0
    %%insn_08427:
    int byte 0x66 ; 08427 CD66
    %if ($ - %%insn_08427) > 2
        %error "LONG_08427"
    %endif
    times 2 - ($ - %%insn_08427) db 0
    %%insn_08429:
    mov [cs:0xe2e],ax ; 08429 2EA32E0E
    %if ($ - %%insn_08429) > 4
        %error "LONG_08429"
    %endif
    times 4 - ($ - %%insn_08429) db 0
    %%insn_0842d:
    mov ax,0xffff ; 0842D B8FFFF
    %if ($ - %%insn_0842d) > 3
        %error "LONG_0842D"
    %endif
    times 3 - ($ - %%insn_0842d) db 0
    %%insn_08430:
    test word [cs:0xe2e],0x8 ; 08430 2EF7062E0E0800
    %if ($ - %%insn_08430) > 7
        %error "LONG_08430"
    %endif
    times 7 - ($ - %%insn_08430) db 0
    %%insn_08437:
    jz short 0x843c ; 08437 7403
    %if ($ - %%insn_08437) > 2
        %error "LONG_08437"
    %endif
    times 2 - ($ - %%insn_08437) db 0
    %%insn_08439:
    mov ax,0x0 ; 08439 B80000
    %if ($ - %%insn_08439) > 3
        %error "LONG_08439"
    %endif
    times 3 - ($ - %%insn_08439) db 0
    %%insn_0843c:
    mov [cs:0xdcc],ax ; 0843C 2EA3CC0D
    %if ($ - %%insn_0843c) > 4
        %error "LONG_0843C"
    %endif
    times 4 - ($ - %%insn_0843c) db 0
    %%insn_08440:
    mov word [cs:0xe28],0x1 ; 08440 2EC706280E0100
    %if ($ - %%insn_08440) > 7
        %error "LONG_08440"
    %endif
    times 7 - ($ - %%insn_08440) db 0
    %%insn_08447:
    les di,word [cs:0xe2a] ; 08447 2EC43E2A0E
    %if ($ - %%insn_08447) > 5
        %error "LONG_08447"
    %endif
    times 5 - ($ - %%insn_08447) db 0
    %%insn_0844c:
    mov si,0x0 ; 0844C BE0000
    %if ($ - %%insn_0844c) > 3
        %error "LONG_0844C"
    %endif
    times 3 - ($ - %%insn_0844c) db 0
    %%insn_0844f:
    mov cx,0x4e ; 0844F B94E00
    %if ($ - %%insn_0844f) > 3
        %error "LONG_0844F"
    %endif
    times 3 - ($ - %%insn_0844f) db 0
    %%insn_08452:
    mov al,[es:di+0xc] ; 08452 268A450C
    %if ($ - %%insn_08452) > 4
        %error "LONG_08452"
    %endif
    times 4 - ($ - %%insn_08452) db 0
    %%insn_08456:
    cmp al,0x20 ; 08456 3C20
    %if ($ - %%insn_08456) > 2
        %error "LONG_08456"
    %endif
    times 2 - ($ - %%insn_08456) db 0
    %%insn_08458:
    jc short 0x8463 ; 08458 7209
    %if ($ - %%insn_08458) > 2
        %error "LONG_08458"
    %endif
    times 2 - ($ - %%insn_08458) db 0
    %%insn_0845a:
    mov [cs:si+0xdd0],al ; 0845A 2E8884D00D
    %if ($ - %%insn_0845a) > 5
        %error "LONG_0845A"
    %endif
    times 5 - ($ - %%insn_0845a) db 0
    %%insn_0845f:
    inc si ; 0845F 46
    %if ($ - %%insn_0845f) > 1
        %error "LONG_0845F"
    %endif
    times 1 - ($ - %%insn_0845f) db 0
    %%insn_08460:
    inc di ; 08460 47
    %if ($ - %%insn_08460) > 1
        %error "LONG_08460"
    %endif
    times 1 - ($ - %%insn_08460) db 0
    %%insn_08461:
    loop short 0x8452 ; 08461 E2EF
    %if ($ - %%insn_08461) > 2
        %error "LONG_08461"
    %endif
    times 2 - ($ - %%insn_08461) db 0
    %%insn_08463:
    mov byte [cs:si+0xdd0],0x0 ; 08463 2EC684D00D00
    %if ($ - %%insn_08463) > 6
        %error "LONG_08463"
    %endif
    times 6 - ($ - %%insn_08463) db 0
    %%insn_08469:
    mov byte [cs:si+0xdd1],0x0 ; 08469 2EC684D10D00
    %if ($ - %%insn_08469) > 6
        %error "LONG_08469"
    %endif
    times 6 - ($ - %%insn_08469) db 0
    %%insn_0846f:
    mov dx,cs ; 0846F 8CCA
    %if ($ - %%insn_0846f) > 2
        %error "LONG_0846F"
    %endif
    times 2 - ($ - %%insn_0846f) db 0
    %%insn_08471:
    mov [cs:0xdc2],dx ; 08471 2E8916C20D
    %if ($ - %%insn_08471) > 5
        %error "LONG_08471"
    %endif
    times 5 - ($ - %%insn_08471) db 0
    %%insn_08476:
    mov ax,0xdb8 ; 08476 B8B80D
    %if ($ - %%insn_08476) > 3
        %error "LONG_08476"
    %endif
    times 3 - ($ - %%insn_08476) db 0
    %%insn_08479:
    pop di ; 08479 5F
    %if ($ - %%insn_08479) > 1
        %error "LONG_08479"
    %endif
    times 1 - ($ - %%insn_08479) db 0
    %%insn_0847a:
    pop si ; 0847A 5E
    %if ($ - %%insn_0847a) > 1
        %error "LONG_0847A"
    %endif
    times 1 - ($ - %%insn_0847a) db 0
    %%insn_0847b:
    pop ds ; 0847B 1F
    %if ($ - %%insn_0847b) > 1
        %error "LONG_0847B"
    %endif
    times 1 - ($ - %%insn_0847b) db 0
    %%insn_0847c:
    pop bp ; 0847C 5D
    %if ($ - %%insn_0847c) > 1
        %error "LONG_0847C"
    %endif
    times 1 - ($ - %%insn_0847c) db 0
    %%insn_0847d:
    retf ; 0847D CB
    %if ($ - %%insn_0847d) > 1
        %error "LONG_0847D"
    %endif
    times 1 - ($ - %%insn_0847d) db 0
    %if ($ - %%fragment_start) != 128
        %error "SIZE_083FE"
    %endif
%endmacro
