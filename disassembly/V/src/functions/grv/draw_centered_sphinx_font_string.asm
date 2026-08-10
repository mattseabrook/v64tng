; Linear entry 05523 (1000:5523)
; Ghidra working symbol: FUN_1000_5523
; Verified centered SPHINX.FNT indexed-glyph renderer. Loads 2EE0h bytes on
; demand, clears the 80-row text band at foreground offset 2800h, measures the
; glyph widths, and draws the string horizontally centered.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_draw_centered_sphinx_font_string_part_00 0
    %%fragment_start:
draw_centered_sphinx_font_string:
    %%insn_05523:
    cmp word [bp-0x30de],0x0 ; 05523 83BE22CF00
    %if ($ - %%insn_05523) > 5
        %error "LONG_05523"
    %endif
    times 5 - ($ - %%insn_05523) db 0
    %%insn_05528:
    jz short 0x552b ; 05528 7401
    %if ($ - %%insn_05528) > 2
        %error "LONG_05528"
    %endif
    times 2 - ($ - %%insn_05528) db 0
    %%insn_0552a:
    ret ; 0552A C3
    %if ($ - %%insn_0552a) > 1
        %error "LONG_0552A"
    %endif
    times 1 - ($ - %%insn_0552a) db 0
    %%insn_0552b:
    pusha ; 0552B 60
    %if ($ - %%insn_0552b) > 1
        %error "LONG_0552B"
    %endif
    times 1 - ($ - %%insn_0552b) db 0
    %%insn_0552c:
    push dx ; 0552C 52
    %if ($ - %%insn_0552c) > 1
        %error "LONG_0552C"
    %endif
    times 1 - ($ - %%insn_0552c) db 0
    %%insn_0552d:
    push ds ; 0552D 1E
    %if ($ - %%insn_0552d) > 1
        %error "LONG_0552D"
    %endif
    times 1 - ($ - %%insn_0552d) db 0
    %%insn_0552e:
    mov ds,word [bp-0x2aae] ; 0552E 8E9E52D5
    %if ($ - %%insn_0552e) > 4
        %error "LONG_0552E"
    %endif
    times 4 - ($ - %%insn_0552e) db 0
    %%insn_05532:
    mov dx,0xd888 ; 05532 BA88D8
    %if ($ - %%insn_05532) > 3
        %error "LONG_05532"
    %endif
    times 3 - ($ - %%insn_05532) db 0
    %%insn_05535:
    call 0x3a31 ; 05535 E8F9E4
    %if ($ - %%insn_05535) > 3
        %error "LONG_05535"
    %endif
    times 3 - ($ - %%insn_05535) db 0
    db 0x3D, 0xFF, 0xFF ; 05538 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_0553b:
    jnz short 0x5543 ; 0553B 7506
    %if ($ - %%insn_0553b) > 2
        %error "LONG_0553B"
    %endif
    times 2 - ($ - %%insn_0553b) db 0
    %%insn_0553d:
    mov ax,0x7b8 ; 0553D B8B807
    %if ($ - %%insn_0553d) > 3
        %error "LONG_0553D"
    %endif
    times 3 - ($ - %%insn_0553d) db 0
    %%insn_05540:
    jmp 0x5ced ; 05540 E9AA07
    %if ($ - %%insn_05540) > 3
        %error "LONG_05540"
    %endif
    times 3 - ($ - %%insn_05540) db 0
    %%insn_05543:
    mov ds,word [bp-0x2ab2] ; 05543 8E9E4ED5
    %if ($ - %%insn_05543) > 4
        %error "LONG_05543"
    %endif
    times 4 - ($ - %%insn_05543) db 0
    %%insn_05547:
    mov cx,0x2ee0 ; 05547 B9E02E
    %if ($ - %%insn_05547) > 3
        %error "LONG_05547"
    %endif
    times 3 - ($ - %%insn_05547) db 0
    db 0x33, 0xD2 ; 0554A 33D2 | xor dx,dx | encoding preserved
    %%insn_0554c:
    call 0x3a51 ; 0554C E802E5
    %if ($ - %%insn_0554c) > 3
        %error "LONG_0554C"
    %endif
    times 3 - ($ - %%insn_0554c) db 0
    %%insn_0554f:
    call 0x3a47 ; 0554F E8F5E4
    %if ($ - %%insn_0554f) > 3
        %error "LONG_0554F"
    %endif
    times 3 - ($ - %%insn_0554f) db 0
    db 0x32, 0xC0 ; 05552 32C0 | xor al,al | encoding preserved
    db 0x32, 0xE4 ; 05554 32E4 | xor ah,ah | encoding preserved
    %%insn_05556:
    mov [bp-0x3076],al ; 05556 88868ACF
    %if ($ - %%insn_05556) > 4
        %error "LONG_05556"
    %endif
    times 4 - ($ - %%insn_05556) db 0
    %%insn_0555a:
    call word near [ss:0xd660] ; 0555A 36FF1660D6
    %if ($ - %%insn_0555a) > 5
        %error "LONG_0555A"
    %endif
    times 5 - ($ - %%insn_0555a) db 0
    %%insn_0555f:
    mov di,0x2800 ; 0555F BF0028
    %if ($ - %%insn_0555f) > 3
        %error "LONG_0555F"
    %endif
    times 3 - ($ - %%insn_0555f) db 0
    %%insn_05562:
    mov es,word [bp-0x2aa8] ; 05562 8E8658D5
    %if ($ - %%insn_05562) > 4
        %error "LONG_05562"
    %endif
    times 4 - ($ - %%insn_05562) db 0
    %%insn_05566:
    mov cx,0x2800 ; 05566 B90028
    %if ($ - %%insn_05566) > 3
        %error "LONG_05566"
    %endif
    times 3 - ($ - %%insn_05566) db 0
    db 0x33, 0xC0 ; 05569 33C0 | xor ax,ax | encoding preserved
    %%insn_0556b:
    rep stosw ; 0556B F3AB
    %if ($ - %%insn_0556b) > 2
        %error "LONG_0556B"
    %endif
    times 2 - ($ - %%insn_0556b) db 0
    %%insn_0556d:
    mov di,0x2800 ; 0556D BF0028
    %if ($ - %%insn_0556d) > 3
        %error "LONG_0556D"
    %endif
    times 3 - ($ - %%insn_0556d) db 0
    %%insn_05570:
    pop ds ; 05570 1F
    %if ($ - %%insn_05570) > 1
        %error "LONG_05570"
    %endif
    times 1 - ($ - %%insn_05570) db 0
    %%insn_05571:
    pop dx ; 05571 5A
    %if ($ - %%insn_05571) > 1
        %error "LONG_05571"
    %endif
    times 1 - ($ - %%insn_05571) db 0
    db 0x8B, 0xDA ; 05572 8BDA | mov bx,dx | encoding preserved
    db 0x33, 0xC9 ; 05574 33C9 | xor cx,cx | encoding preserved
    %%insn_05576:
    mov al,[bx] ; 05576 8A07
    %if ($ - %%insn_05576) > 2
        %error "LONG_05576"
    %endif
    times 2 - ($ - %%insn_05576) db 0
    db 0x22, 0xC0 ; 05578 22C0 | and al,al | encoding preserved
    %%insn_0557a:
    jz short 0x559a ; 0557A 741E
    %if ($ - %%insn_0557a) > 2
        %error "LONG_0557A"
    %endif
    times 2 - ($ - %%insn_0557a) db 0
    %%insn_0557c:
    inc bx ; 0557C 43
    %if ($ - %%insn_0557c) > 1
        %error "LONG_0557C"
    %endif
    times 1 - ($ - %%insn_0557c) db 0
    %%insn_0557d:
    push ds ; 0557D 1E
    %if ($ - %%insn_0557d) > 1
        %error "LONG_0557D"
    %endif
    times 1 - ($ - %%insn_0557d) db 0
    %%insn_0557e:
    push bx ; 0557E 53
    %if ($ - %%insn_0557e) > 1
        %error "LONG_0557E"
    %endif
    times 1 - ($ - %%insn_0557e) db 0
    %%insn_0557f:
    mov ds,word [bp-0x2ab2] ; 0557F 8E9E4ED5
    %if ($ - %%insn_0557f) > 4
        %error "LONG_0557F"
    %endif
    times 4 - ($ - %%insn_0557f) db 0
    db 0x33, 0xDB ; 05583 33DB | xor bx,bx | encoding preserved
    %%insn_05585:
    xlatb ; 05585 D7
    %if ($ - %%insn_05585) > 1
        %error "LONG_05585"
    %endif
    times 1 - ($ - %%insn_05585) db 0
    db 0x32, 0xE4 ; 05586 32E4 | xor ah,ah | encoding preserved
    db 0x03, 0xC0 ; 05588 03C0 | add ax,ax | encoding preserved
    %%insn_0558a:
    mov bx,0x80 ; 0558A BB8000
    %if ($ - %%insn_0558a) > 3
        %error "LONG_0558A"
    %endif
    times 3 - ($ - %%insn_0558a) db 0
    db 0x03, 0xD8 ; 0558D 03D8 | add bx,ax | encoding preserved
    %%insn_0558f:
    mov si,[bx] ; 0558F 8B37
    %if ($ - %%insn_0558f) > 2
        %error "LONG_0558F"
    %endif
    times 2 - ($ - %%insn_0558f) db 0
    %%insn_05591:
    mov al,[si] ; 05591 8A04
    %if ($ - %%insn_05591) > 2
        %error "LONG_05591"
    %endif
    times 2 - ($ - %%insn_05591) db 0
    db 0x03, 0xC8 ; 05593 03C8 | add cx,ax | encoding preserved
    %%insn_05595:
    inc cx ; 05595 41
    %if ($ - %%insn_05595) > 1
        %error "LONG_05595"
    %endif
    times 1 - ($ - %%insn_05595) db 0
    %%insn_05596:
    pop bx ; 05596 5B
    %if ($ - %%insn_05596) > 1
        %error "LONG_05596"
    %endif
    times 1 - ($ - %%insn_05596) db 0
    %%insn_05597:
    pop ds ; 05597 1F
    %if ($ - %%insn_05597) > 1
        %error "LONG_05597"
    %endif
    times 1 - ($ - %%insn_05597) db 0
    %%insn_05598:
    jmp short 0x5576 ; 05598 EBDC
    %if ($ - %%insn_05598) > 2
        %error "LONG_05598"
    %endif
    times 2 - ($ - %%insn_05598) db 0
    %%insn_0559a:
    mov ax,[bp-0x2996] ; 0559A 8B866AD6
    %if ($ - %%insn_0559a) > 4
        %error "LONG_0559A"
    %endif
    times 4 - ($ - %%insn_0559a) db 0
    db 0x2B, 0xC1 ; 0559E 2BC1 | sub ax,cx | encoding preserved
    %%insn_055a0:
    shr ax,1 ; 055A0 D1E8
    %if ($ - %%insn_055a0) > 2
        %error "LONG_055A0"
    %endif
    times 2 - ($ - %%insn_055a0) db 0
    db 0x03, 0xF8 ; 055A2 03F8 | add di,ax | encoding preserved
    db 0x8B, 0xDA ; 055A4 8BDA | mov bx,dx | encoding preserved
    %%insn_055a6:
    mov al,[bx] ; 055A6 8A07
    %if ($ - %%insn_055a6) > 2
        %error "LONG_055A6"
    %endif
    times 2 - ($ - %%insn_055a6) db 0
    db 0x22, 0xC0 ; 055A8 22C0 | and al,al | encoding preserved
    %%insn_055aa:
    jz short 0x55fa ; 055AA 744E
    %if ($ - %%insn_055aa) > 2
        %error "LONG_055AA"
    %endif
    times 2 - ($ - %%insn_055aa) db 0
    %%insn_055ac:
    inc bx ; 055AC 43
    %if ($ - %%insn_055ac) > 1
        %error "LONG_055AC"
    %endif
    times 1 - ($ - %%insn_055ac) db 0
    %%insn_055ad:
    push di ; 055AD 57
    %if ($ - %%insn_055ad) > 1
        %error "LONG_055AD"
    %endif
    times 1 - ($ - %%insn_055ad) db 0
    %%insn_055ae:
    push ds ; 055AE 1E
    %if ($ - %%insn_055ae) > 1
        %error "LONG_055AE"
    %endif
    times 1 - ($ - %%insn_055ae) db 0
    %%insn_055af:
    push bx ; 055AF 53
    %if ($ - %%insn_055af) > 1
        %error "LONG_055AF"
    %endif
    times 1 - ($ - %%insn_055af) db 0
    %%insn_055b0:
    mov ds,word [bp-0x2ab2] ; 055B0 8E9E4ED5
    %if ($ - %%insn_055b0) > 4
        %error "LONG_055B0"
    %endif
    times 4 - ($ - %%insn_055b0) db 0
    db 0x33, 0xDB ; 055B4 33DB | xor bx,bx | encoding preserved
    %%insn_055b6:
    xlatb ; 055B6 D7
    %if ($ - %%insn_055b6) > 1
        %error "LONG_055B6"
    %endif
    times 1 - ($ - %%insn_055b6) db 0
    db 0x32, 0xE4 ; 055B7 32E4 | xor ah,ah | encoding preserved
    db 0x03, 0xC0 ; 055B9 03C0 | add ax,ax | encoding preserved
    %%insn_055bb:
    mov bx,0x80 ; 055BB BB8000
    %if ($ - %%insn_055bb) > 3
        %error "LONG_055BB"
    %endif
    times 3 - ($ - %%insn_055bb) db 0
    db 0x03, 0xD8 ; 055BE 03D8 | add bx,ax | encoding preserved
    %%insn_055c0:
    mov si,[bx] ; 055C0 8B37
    %if ($ - %%insn_055c0) > 2
        %error "LONG_055C0"
    %endif
    times 2 - ($ - %%insn_055c0) db 0
    %%insn_055c2:
    mov cl,[si] ; 055C2 8A0C
    %if ($ - %%insn_055c2) > 2
        %error "LONG_055C2"
    %endif
    times 2 - ($ - %%insn_055c2) db 0
    db 0x32, 0xED ; 055C4 32ED | xor ch,ch | encoding preserved
    db 0x8B, 0xD1 ; 055C6 8BD1 | mov dx,cx | encoding preserved
    %%insn_055c8:
    mov ah,[si+0x1] ; 055C8 8A6401
    %if ($ - %%insn_055c8) > 3
        %error "LONG_055C8"
    %endif
    times 3 - ($ - %%insn_055c8) db 0
    db 0x32, 0xC0 ; 055CB 32C0 | xor al,al | encoding preserved
    %%insn_055cd:
    add si,0x2 ; 055CD 83C602
    %if ($ - %%insn_055cd) > 3
        %error "LONG_055CD"
    %endif
    times 3 - ($ - %%insn_055cd) db 0
    db 0x3D, 0x00, 0x00 ; 055D0 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_055d3:
    jz short 0x55e3 ; 055D3 740E
    %if ($ - %%insn_055d3) > 2
        %error "LONG_055D3"
    %endif
    times 2 - ($ - %%insn_055d3) db 0
    %%insn_055d5:
    push di ; 055D5 57
    %if ($ - %%insn_055d5) > 1
        %error "LONG_055D5"
    %endif
    times 1 - ($ - %%insn_055d5) db 0
    %%insn_055d6:
    rep stosb ; 055D6 F3AA
    %if ($ - %%insn_055d6) > 2
        %error "LONG_055D6"
    %endif
    times 2 - ($ - %%insn_055d6) db 0
    %%insn_055d8:
    pop di ; 055D8 5F
    %if ($ - %%insn_055d8) > 1
        %error "LONG_055D8"
    %endif
    times 1 - ($ - %%insn_055d8) db 0
    db 0x8B, 0xCA ; 055D9 8BCA | mov cx,dx | encoding preserved
    %%insn_055db:
    add di,[bp-0x2996] ; 055DB 03BE6AD6
    %if ($ - %%insn_055db) > 4
        %error "LONG_055DB"
    %endif
    times 4 - ($ - %%insn_055db) db 0
    %%insn_055df:
    dec ah ; 055DF FECC
    %if ($ - %%insn_055df) > 2
        %error "LONG_055DF"
    %endif
    times 2 - ($ - %%insn_055df) db 0
    %%insn_055e1:
    jnz short 0x55d5 ; 055E1 75F2
    %if ($ - %%insn_055e1) > 2
        %error "LONG_055E1"
    %endif
    times 2 - ($ - %%insn_055e1) db 0
    %%insn_055e3:
    push di ; 055E3 57
    %if ($ - %%insn_055e3) > 1
        %error "LONG_055E3"
    %endif
    times 1 - ($ - %%insn_055e3) db 0
    %%insn_055e4:
    rep movsb ; 055E4 F3A4
    %if ($ - %%insn_055e4) > 2
        %error "LONG_055E4"
    %endif
    times 2 - ($ - %%insn_055e4) db 0
    %%insn_055e6:
    pop di ; 055E6 5F
    %if ($ - %%insn_055e6) > 1
        %error "LONG_055E6"
    %endif
    times 1 - ($ - %%insn_055e6) db 0
    db 0x8B, 0xCA ; 055E7 8BCA | mov cx,dx | encoding preserved
    %%insn_055e9:
    add di,[bp-0x2996] ; 055E9 03BE6AD6
    %if ($ - %%insn_055e9) > 4
        %error "LONG_055E9"
    %endif
    times 4 - ($ - %%insn_055e9) db 0
    %%insn_055ed:
    cmp byte [si],0xff ; 055ED 803CFF
    %if ($ - %%insn_055ed) > 3
        %error "LONG_055ED"
    %endif
    times 3 - ($ - %%insn_055ed) db 0
    %%insn_055f0:
    jnz short 0x55e3 ; 055F0 75F1
    %if ($ - %%insn_055f0) > 2
        %error "LONG_055F0"
    %endif
    times 2 - ($ - %%insn_055f0) db 0
    %%insn_055f2:
    pop bx ; 055F2 5B
    %if ($ - %%insn_055f2) > 1
        %error "LONG_055F2"
    %endif
    times 1 - ($ - %%insn_055f2) db 0
    %%insn_055f3:
    pop ds ; 055F3 1F
    %if ($ - %%insn_055f3) > 1
        %error "LONG_055F3"
    %endif
    times 1 - ($ - %%insn_055f3) db 0
    %%insn_055f4:
    pop di ; 055F4 5F
    %if ($ - %%insn_055f4) > 1
        %error "LONG_055F4"
    %endif
    times 1 - ($ - %%insn_055f4) db 0
    db 0x03, 0xF9 ; 055F5 03F9 | add di,cx | encoding preserved
    %%insn_055f7:
    inc di ; 055F7 47
    %if ($ - %%insn_055f7) > 1
        %error "LONG_055F7"
    %endif
    times 1 - ($ - %%insn_055f7) db 0
    %%insn_055f8:
    jmp short 0x55a6 ; 055F8 EBAC
    %if ($ - %%insn_055f8) > 2
        %error "LONG_055F8"
    %endif
    times 2 - ($ - %%insn_055f8) db 0
    %%insn_055fa:
    popa ; 055FA 61
    %if ($ - %%insn_055fa) > 1
        %error "LONG_055FA"
    %endif
    times 1 - ($ - %%insn_055fa) db 0
    %%insn_055fb:
    ret ; 055FB C3
    %if ($ - %%insn_055fb) > 1
        %error "LONG_055FB"
    %endif
    times 1 - ($ - %%insn_055fb) db 0
    %if ($ - %%fragment_start) != 217
        %error "SIZE_05523"
    %endif
%endmacro
