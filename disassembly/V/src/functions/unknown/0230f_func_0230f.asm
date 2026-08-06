; Linear entry 0230F (1000:230f)
; Ghidra working symbol: FUN_1000_230f
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0230f_part_00 0
    %%fragment_start:
func_0230f:
    %%insn_0230f:
    lodsb ; 0230F AC
    %if ($ - %%insn_0230f) > 1
        %error "LONG_0230F"
    %endif
    times 1 - ($ - %%insn_0230f) db 0
    db 0x8A, 0xD0 ; 02310 8AD0 | mov dl,al | encoding preserved
    %%insn_02312:
    mov dh,0x8 ; 02312 B608
    %if ($ - %%insn_02312) > 2
        %error "LONG_02312"
    %endif
    times 2 - ($ - %%insn_02312) db 0
    %%insn_02314:
    shr dl,1 ; 02314 D0EA
    %if ($ - %%insn_02314) > 2
        %error "LONG_02314"
    %endif
    times 2 - ($ - %%insn_02314) db 0
    %%insn_02316:
    jnc short 0x231b ; 02316 7303
    %if ($ - %%insn_02316) > 2
        %error "LONG_02316"
    %endif
    times 2 - ($ - %%insn_02316) db 0
    %%insn_02318:
    movsb ; 02318 A4
    %if ($ - %%insn_02318) > 1
        %error "LONG_02318"
    %endif
    times 1 - ($ - %%insn_02318) db 0
    %%insn_02319:
    jmp short 0x2339 ; 02319 EB1E
    %if ($ - %%insn_02319) > 2
        %error "LONG_02319"
    %endif
    times 2 - ($ - %%insn_02319) db 0
    %%insn_0231b:
    lodsw ; 0231B AD
    %if ($ - %%insn_0231b) > 1
        %error "LONG_0231B"
    %endif
    times 1 - ($ - %%insn_0231b) db 0
    db 0x23, 0xC0 ; 0231C 23C0 | and ax,ax | encoding preserved
    %%insn_0231e:
    jz short 0x2369 ; 0231E 7449
    %if ($ - %%insn_0231e) > 2
        %error "LONG_0231E"
    %endif
    times 2 - ($ - %%insn_0231e) db 0
    db 0x8A, 0xCC ; 02320 8ACC | mov cl,ah | encoding preserved
    %%insn_02322:
    shr ah,byte 0x4 ; 02322 C0EC04
    %if ($ - %%insn_02322) > 3
        %error "LONG_02322"
    %endif
    times 3 - ($ - %%insn_02322) db 0
    %%insn_02325:
    and cx,0xf ; 02325 83E10F
    %if ($ - %%insn_02325) > 3
        %error "LONG_02325"
    %endif
    times 3 - ($ - %%insn_02325) db 0
    %%insn_02328:
    add cx,0x3 ; 02328 83C103
    %if ($ - %%insn_02328) > 3
        %error "LONG_02328"
    %endif
    times 3 - ($ - %%insn_02328) db 0
    %%insn_0232b:
    push ds ; 0232B 1E
    %if ($ - %%insn_0232b) > 1
        %error "LONG_0232B"
    %endif
    times 1 - ($ - %%insn_0232b) db 0
    %%insn_0232c:
    push si ; 0232C 56
    %if ($ - %%insn_0232c) > 1
        %error "LONG_0232C"
    %endif
    times 1 - ($ - %%insn_0232c) db 0
    db 0x8B, 0xF7 ; 0232D 8BF7 | mov si,di | encoding preserved
    db 0x2B, 0xF0 ; 0232F 2BF0 | sub si,ax | encoding preserved
    %%insn_02331:
    mov ax,es ; 02331 8CC0
    %if ($ - %%insn_02331) > 2
        %error "LONG_02331"
    %endif
    times 2 - ($ - %%insn_02331) db 0
    %%insn_02333:
    mov ds,ax ; 02333 8ED8
    %if ($ - %%insn_02333) > 2
        %error "LONG_02333"
    %endif
    times 2 - ($ - %%insn_02333) db 0
    %%insn_02335:
    rep movsb ; 02335 F3A4
    %if ($ - %%insn_02335) > 2
        %error "LONG_02335"
    %endif
    times 2 - ($ - %%insn_02335) db 0
    %%insn_02337:
    pop si ; 02337 5E
    %if ($ - %%insn_02337) > 1
        %error "LONG_02337"
    %endif
    times 1 - ($ - %%insn_02337) db 0
    %%insn_02338:
    pop ds ; 02338 1F
    %if ($ - %%insn_02338) > 1
        %error "LONG_02338"
    %endif
    times 1 - ($ - %%insn_02338) db 0
    %%insn_02339:
    dec dh ; 02339 FECE
    %if ($ - %%insn_02339) > 2
        %error "LONG_02339"
    %endif
    times 2 - ($ - %%insn_02339) db 0
    %%insn_0233b:
    jnz short 0x2314 ; 0233B 75D7
    %if ($ - %%insn_0233b) > 2
        %error "LONG_0233B"
    %endif
    times 2 - ($ - %%insn_0233b) db 0
    %%insn_0233d:
    cmp di,0xfa00 ; 0233D 81FF00FA
    %if ($ - %%insn_0233d) > 4
        %error "LONG_0233D"
    %endif
    times 4 - ($ - %%insn_0233d) db 0
    %%insn_02341:
    jna short 0x2356 ; 02341 7613
    %if ($ - %%insn_02341) > 2
        %error "LONG_02341"
    %endif
    times 2 - ($ - %%insn_02341) db 0
    %%insn_02343:
    sub di,0x8000 ; 02343 81EF0080
    %if ($ - %%insn_02343) > 4
        %error "LONG_02343"
    %endif
    times 4 - ($ - %%insn_02343) db 0
    %%insn_02347:
    mov ax,es ; 02347 8CC0
    %if ($ - %%insn_02347) > 2
        %error "LONG_02347"
    %endif
    times 2 - ($ - %%insn_02347) db 0
    %%insn_02349:
    add ax,0x800 ; 02349 050008
    %if ($ - %%insn_02349) > 3
        %error "LONG_02349"
    %endif
    times 3 - ($ - %%insn_02349) db 0
    %%insn_0234c:
    mov es,ax ; 0234C 8EC0
    %if ($ - %%insn_0234c) > 2
        %error "LONG_0234C"
    %endif
    times 2 - ($ - %%insn_0234c) db 0
    %%insn_0234e:
    inc bh ; 0234E FEC7
    %if ($ - %%insn_0234e) > 2
        %error "LONG_0234E"
    %endif
    times 2 - ($ - %%insn_0234e) db 0
    %%insn_02350:
    cmp bh,0x2 ; 02350 80FF02
    %if ($ - %%insn_02350) > 3
        %error "LONG_02350"
    %endif
    times 3 - ($ - %%insn_02350) db 0
    %%insn_02353:
    jnz short 0x2356 ; 02353 7501
    %if ($ - %%insn_02353) > 2
        %error "LONG_02353"
    %endif
    times 2 - ($ - %%insn_02353) db 0
    %%insn_02355:
    ret ; 02355 C3
    %if ($ - %%insn_02355) > 1
        %error "LONG_02355"
    %endif
    times 1 - ($ - %%insn_02355) db 0
    %%insn_02356:
    cmp si,0xfa00 ; 02356 81FE00FA
    %if ($ - %%insn_02356) > 4
        %error "LONG_02356"
    %endif
    times 4 - ($ - %%insn_02356) db 0
    %%insn_0235a:
    jna short 0x2367 ; 0235A 760B
    %if ($ - %%insn_0235a) > 2
        %error "LONG_0235A"
    %endif
    times 2 - ($ - %%insn_0235a) db 0
    %%insn_0235c:
    sub si,0x8000 ; 0235C 81EE0080
    %if ($ - %%insn_0235c) > 4
        %error "LONG_0235C"
    %endif
    times 4 - ($ - %%insn_0235c) db 0
    %%insn_02360:
    mov ax,ds ; 02360 8CD8
    %if ($ - %%insn_02360) > 2
        %error "LONG_02360"
    %endif
    times 2 - ($ - %%insn_02360) db 0
    %%insn_02362:
    add ax,0x800 ; 02362 050008
    %if ($ - %%insn_02362) > 3
        %error "LONG_02362"
    %endif
    times 3 - ($ - %%insn_02362) db 0
    %%insn_02365:
    mov ds,ax ; 02365 8ED8
    %if ($ - %%insn_02365) > 2
        %error "LONG_02365"
    %endif
    times 2 - ($ - %%insn_02365) db 0
    %%insn_02367:
    jmp short 0x230f ; 02367 EBA6
    %if ($ - %%insn_02367) > 2
        %error "LONG_02367"
    %endif
    times 2 - ($ - %%insn_02367) db 0
    %%insn_02369:
    ret ; 02369 C3
    %if ($ - %%insn_02369) > 1
        %error "LONG_02369"
    %endif
    times 1 - ($ - %%insn_02369) db 0
    %if ($ - %%fragment_start) != 91
        %error "SIZE_0230F"
    %endif
%endmacro
