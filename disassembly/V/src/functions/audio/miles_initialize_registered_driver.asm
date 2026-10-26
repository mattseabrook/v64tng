; Linear entry 07B9D (1702:0b7d)
; Ghidra working symbol: FUN_1702_0b7d
; Verified descriptive role; original bytes and analyzer entry retained.
; Contract: For a valid driver slot query its descriptor, optionally register and program its timer, invoke command 0066h, mark it initialized and start the timer. The initialized flag is set even if command 0066h returns zero.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_initialize_registered_driver_part_00 0
    %%fragment_start:
miles_initialize_registered_driver:
    %%insn_07b9d:
    push bp ; 07B9D 55
    %if ($ - %%insn_07b9d) != 1
        %error "MILES_INSTRUCTION_SIZE_07B9D"
    %endif
    db 0x8B, 0xEC ; 07B9E 8BEC | mov bp,sp | encoding preserved
    %%insn_07ba0:
    push ds ; 07BA0 1E
    %if ($ - %%insn_07ba0) != 1
        %error "MILES_INSTRUCTION_SIZE_07BA0"
    %endif
    %%insn_07ba1:
    push si ; 07BA1 56
    %if ($ - %%insn_07ba1) != 1
        %error "MILES_INSTRUCTION_SIZE_07BA1"
    %endif
    %%insn_07ba2:
    push di ; 07BA2 57
    %if ($ - %%insn_07ba2) != 1
        %error "MILES_INSTRUCTION_SIZE_07BA2"
    %endif
    %%insn_07ba3:
    pushf ; 07BA3 9C
    %if ($ - %%insn_07ba3) != 1
        %error "MILES_INSTRUCTION_SIZE_07BA3"
    %endif
    %%insn_07ba4:
    cli ; 07BA4 FA
    %if ($ - %%insn_07ba4) != 1
        %error "MILES_INSTRUCTION_SIZE_07BA4"
    %endif
    %%insn_07ba5:
    cmp word [bp+0x6],0x10 ; 07BA5 837E0610
    %if ($ - %%insn_07ba5) != 4
        %error "MILES_INSTRUCTION_SIZE_07BA5"
    %endif
    %%insn_07ba9:
    jc short 0x7bae ; 07BA9 7203
    %if ($ - %%insn_07ba9) != 2
        %error "MILES_INSTRUCTION_SIZE_07BA9"
    %endif
    %%insn_07bab:
    jmp 0x7c43 ; 07BAB E99500
    %if ($ - %%insn_07bab) != 3
        %error "MILES_INSTRUCTION_SIZE_07BAB"
    %endif
    %%insn_07bae:
    mov word [cs:0x1b4],0xffff ; 07BAE 2EC706B401FFFF
    %if ($ - %%insn_07bae) != 7
        %error "MILES_INSTRUCTION_SIZE_07BAE"
    %endif
    %%insn_07bb5:
    push word [bp+0x6] ; 07BB5 FF7606
    %if ($ - %%insn_07bb5) != 3
        %error "MILES_INSTRUCTION_SIZE_07BB5"
    %endif
    %%insn_07bb8:
    push cs ; 07BB8 0E
    %if ($ - %%insn_07bb8) != 1
        %error "MILES_INSTRUCTION_SIZE_07BB8"
    %endif
    %%insn_07bb9:
    call 0x7b71 ; 07BB9 E8B5FF
    %if ($ - %%insn_07bb9) != 3
        %error "MILES_INSTRUCTION_SIZE_07BB9"
    %endif
    %%insn_07bbc:
    add sp,0x2 ; 07BBC 83C402
    %if ($ - %%insn_07bbc) != 3
        %error "MILES_INSTRUCTION_SIZE_07BBC"
    %endif
    %%insn_07bbf:
    mov es,dx ; 07BBF 8EC2
    %if ($ - %%insn_07bbf) != 2
        %error "MILES_INSTRUCTION_SIZE_07BBF"
    %endif
    db 0x8B, 0xF8 ; 07BC1 8BF8 | mov di,ax | encoding preserved
    %%insn_07bc3:
    mov si,[es:di+0x14] ; 07BC3 268B7514
    %if ($ - %%insn_07bc3) != 4
        %error "MILES_INSTRUCTION_SIZE_07BC3"
    %endif
    %%insn_07bc7:
    cmp si,0xffffffffffffffff ; 07BC7 83FEFF
    %if ($ - %%insn_07bc7) != 3
        %error "MILES_INSTRUCTION_SIZE_07BC7"
    %endif
    %%insn_07bca:
    jz short 0x7c0a ; 07BCA 743E
    %if ($ - %%insn_07bca) != 2
        %error "MILES_INSTRUCTION_SIZE_07BCA"
    %endif
    %%insn_07bcc:
    mov ax,0x67 ; 07BCC B86700
    %if ($ - %%insn_07bcc) != 3
        %error "MILES_INSTRUCTION_SIZE_07BCC"
    %endif
    %%insn_07bcf:
    mov bx,[bp+0x6] ; 07BCF 8B5E06
    %if ($ - %%insn_07bcf) != 3
        %error "MILES_INSTRUCTION_SIZE_07BCF"
    %endif
    %%insn_07bd2:
    push cs ; 07BD2 0E
    %if ($ - %%insn_07bd2) != 1
        %error "MILES_INSTRUCTION_SIZE_07BD2"
    %endif
    %%insn_07bd3:
    call 0x73e0 ; 07BD3 E80AF8
    %if ($ - %%insn_07bd3) != 3
        %error "MILES_INSTRUCTION_SIZE_07BD3"
    %endif
    db 0x8B, 0xD8 ; 07BD6 8BD8 | mov bx,ax | encoding preserved
    db 0x0B, 0xDA ; 07BD8 0BDA | or bx,dx | encoding preserved
    %%insn_07bda:
    jz short 0x7c0a ; 07BDA 742E
    %if ($ - %%insn_07bda) != 2
        %error "MILES_INSTRUCTION_SIZE_07BDA"
    %endif
    %%insn_07bdc:
    mov es,dx ; 07BDC 8EC2
    %if ($ - %%insn_07bdc) != 2
        %error "MILES_INSTRUCTION_SIZE_07BDC"
    %endif
    db 0x8B, 0xD8 ; 07BDE 8BD8 | mov bx,ax | encoding preserved
    %%insn_07be0:
    push es ; 07BE0 06
    %if ($ - %%insn_07be0) != 1
        %error "MILES_INSTRUCTION_SIZE_07BE0"
    %endif
    %%insn_07be1:
    push bx ; 07BE1 53
    %if ($ - %%insn_07be1) != 1
        %error "MILES_INSTRUCTION_SIZE_07BE1"
    %endif
    %%insn_07be2:
    push cs ; 07BE2 0E
    %if ($ - %%insn_07be2) != 1
        %error "MILES_INSTRUCTION_SIZE_07BE2"
    %endif
    %%insn_07be3:
    call 0x77a3 ; 07BE3 E8BDFB
    %if ($ - %%insn_07be3) != 3
        %error "MILES_INSTRUCTION_SIZE_07BE3"
    %endif
    %%insn_07be6:
    add sp,0x4 ; 07BE6 83C404
    %if ($ - %%insn_07be6) != 3
        %error "MILES_INSTRUCTION_SIZE_07BE6"
    %endif
    %%insn_07be9:
    mov bx,[bp+0x6] ; 07BE9 8B5E06
    %if ($ - %%insn_07be9) != 3
        %error "MILES_INSTRUCTION_SIZE_07BE9"
    %endif
    %%insn_07bec:
    shl bx,1 ; 07BEC D1E3
    %if ($ - %%insn_07bec) != 2
        %error "MILES_INSTRUCTION_SIZE_07BEC"
    %endif
    %%insn_07bee:
    mov [cs:bx+0x16a],ax ; 07BEE 2E89876A01
    %if ($ - %%insn_07bee) != 5
        %error "MILES_INSTRUCTION_SIZE_07BEE"
    %endif
    %%insn_07bf3:
    mov [cs:0x1b4],ax ; 07BF3 2EA3B401
    %if ($ - %%insn_07bf3) != 4
        %error "MILES_INSTRUCTION_SIZE_07BF3"
    %endif
    %%insn_07bf7:
    push ax ; 07BF7 50
    %if ($ - %%insn_07bf7) != 1
        %error "MILES_INSTRUCTION_SIZE_07BF7"
    %endif
    %%insn_07bf8:
    push bp ; 07BF8 55
    %if ($ - %%insn_07bf8) != 1
        %error "MILES_INSTRUCTION_SIZE_07BF8"
    %endif
    db 0x8B, 0xEC ; 07BF9 8BEC | mov bp,sp | encoding preserved
    %%insn_07bfb:
    mov word [bp+0x2],0x0 ; 07BFB C746020000
    %if ($ - %%insn_07bfb) != 5
        %error "MILES_INSTRUCTION_SIZE_07BFB"
    %endif
    %%insn_07c00:
    pop bp ; 07C00 5D
    %if ($ - %%insn_07c00) != 1
        %error "MILES_INSTRUCTION_SIZE_07C00"
    %endif
    %%insn_07c01:
    push si ; 07C01 56
    %if ($ - %%insn_07c01) != 1
        %error "MILES_INSTRUCTION_SIZE_07C01"
    %endif
    %%insn_07c02:
    push ax ; 07C02 50
    %if ($ - %%insn_07c02) != 1
        %error "MILES_INSTRUCTION_SIZE_07C02"
    %endif
    %%insn_07c03:
    push cs ; 07C03 0E
    %if ($ - %%insn_07c03) != 1
        %error "MILES_INSTRUCTION_SIZE_07C03"
    %endif
    %%insn_07c04:
    call 0x79b6 ; 07C04 E8AFFD
    %if ($ - %%insn_07c04) != 3
        %error "MILES_INSTRUCTION_SIZE_07C04"
    %endif
    %%insn_07c07:
    add sp,0x6 ; 07C07 83C406
    %if ($ - %%insn_07c07) != 3
        %error "MILES_INSTRUCTION_SIZE_07C07"
    %endif
    %%insn_07c0a:
    push word [bp+0xe] ; 07C0A FF760E
    %if ($ - %%insn_07c0a) != 3
        %error "MILES_INSTRUCTION_SIZE_07C0A"
    %endif
    %%insn_07c0d:
    push word [bp+0xc] ; 07C0D FF760C
    %if ($ - %%insn_07c0d) != 3
        %error "MILES_INSTRUCTION_SIZE_07C0D"
    %endif
    %%insn_07c10:
    push word [bp+0xa] ; 07C10 FF760A
    %if ($ - %%insn_07c10) != 3
        %error "MILES_INSTRUCTION_SIZE_07C10"
    %endif
    %%insn_07c13:
    push word [bp+0x8] ; 07C13 FF7608
    %if ($ - %%insn_07c13) != 3
        %error "MILES_INSTRUCTION_SIZE_07C13"
    %endif
    %%insn_07c16:
    push word [bp+0x6] ; 07C16 FF7606
    %if ($ - %%insn_07c16) != 3
        %error "MILES_INSTRUCTION_SIZE_07C16"
    %endif
    %%insn_07c19:
    mov ax,0x66 ; 07C19 B86600
    %if ($ - %%insn_07c19) != 3
        %error "MILES_INSTRUCTION_SIZE_07C19"
    %endif
    %%insn_07c1c:
    push cs ; 07C1C 0E
    %if ($ - %%insn_07c1c) != 1
        %error "MILES_INSTRUCTION_SIZE_07C1C"
    %endif
    %%insn_07c1d:
    call 0x7418 ; 07C1D E8F8F7
    %if ($ - %%insn_07c1d) != 3
        %error "MILES_INSTRUCTION_SIZE_07C1D"
    %endif
    %%insn_07c20:
    add sp,0xa ; 07C20 83C40A
    %if ($ - %%insn_07c20) != 3
        %error "MILES_INSTRUCTION_SIZE_07C20"
    %endif
    %%insn_07c23:
    mov bx,[bp+0x6] ; 07C23 8B5E06
    %if ($ - %%insn_07c23) != 3
        %error "MILES_INSTRUCTION_SIZE_07C23"
    %endif
    %%insn_07c26:
    shl bx,1 ; 07C26 D1E3
    %if ($ - %%insn_07c26) != 2
        %error "MILES_INSTRUCTION_SIZE_07C26"
    %endif
    %%insn_07c28:
    mov word [cs:bx+0x18a],0x1 ; 07C28 2EC7878A010100
    %if ($ - %%insn_07c28) != 7
        %error "MILES_INSTRUCTION_SIZE_07C28"
    %endif
    %%insn_07c2f:
    cmp word [cs:0x1b4],0xffffffffffffffff ; 07C2F 2E833EB401FF
    %if ($ - %%insn_07c2f) != 6
        %error "MILES_INSTRUCTION_SIZE_07C2F"
    %endif
    %%insn_07c35:
    jz short 0x7c43 ; 07C35 740C
    %if ($ - %%insn_07c35) != 2
        %error "MILES_INSTRUCTION_SIZE_07C35"
    %endif
    %%insn_07c37:
    push word [cs:0x1b4] ; 07C37 2EFF36B401
    %if ($ - %%insn_07c37) != 5
        %error "MILES_INSTRUCTION_SIZE_07C37"
    %endif
    %%insn_07c3c:
    push cs ; 07C3C 0E
    %if ($ - %%insn_07c3c) != 1
        %error "MILES_INSTRUCTION_SIZE_07C3C"
    %endif
    %%insn_07c3d:
    call 0x78d5 ; 07C3D E895FC
    %if ($ - %%insn_07c3d) != 3
        %error "MILES_INSTRUCTION_SIZE_07C3D"
    %endif
    %%insn_07c40:
    add sp,0x2 ; 07C40 83C402
    %if ($ - %%insn_07c40) != 3
        %error "MILES_INSTRUCTION_SIZE_07C40"
    %endif
    %%insn_07c43:
    or bh,0x0 ; 07C43 80CF00
    %if ($ - %%insn_07c43) != 3
        %error "MILES_INSTRUCTION_SIZE_07C43"
    %endif
    miles_initialize_registered_driver_restore_flags_iret equ $ - 2 ; alternate entry 07C44: IRET
    %%insn_07c46:
    push cs ; 07C46 0E
    %if ($ - %%insn_07c46) != 1
        %error "MILES_INSTRUCTION_SIZE_07C46"
    %endif
    %%insn_07c47:
    call 0x7c44 ; 07C47 E8FAFF
    %if ($ - %%insn_07c47) != 3
        %error "MILES_INSTRUCTION_SIZE_07C47"
    %endif
    %%insn_07c4a:
    pop di ; 07C4A 5F
    %if ($ - %%insn_07c4a) != 1
        %error "MILES_INSTRUCTION_SIZE_07C4A"
    %endif
    %%insn_07c4b:
    pop si ; 07C4B 5E
    %if ($ - %%insn_07c4b) != 1
        %error "MILES_INSTRUCTION_SIZE_07C4B"
    %endif
    %%insn_07c4c:
    pop ds ; 07C4C 1F
    %if ($ - %%insn_07c4c) != 1
        %error "MILES_INSTRUCTION_SIZE_07C4C"
    %endif
    %%insn_07c4d:
    pop bp ; 07C4D 5D
    %if ($ - %%insn_07c4d) != 1
        %error "MILES_INSTRUCTION_SIZE_07C4D"
    %endif
    %%insn_07c4e:
    retf ; 07C4E CB
    %if ($ - %%insn_07c4e) != 1
        %error "MILES_INSTRUCTION_SIZE_07C4E"
    %endif
    %if ($ - %%fragment_start) != 178
        %error "MILES_FUNCTION_SIZE_07B9D"
    %endif
%endmacro
