; Linear entry 08327 (1702:1307)
; Ghidra working symbol: FUN_1702_1307
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_08327_part_00 0
    %%fragment_start:
func_08327:
    %%insn_08327:
    push bp ; 08327 55
    %if ($ - %%insn_08327) > 1
        %error "LONG_08327"
    %endif
    times 1 - ($ - %%insn_08327) db 0
    db 0x8B, 0xEC ; 08328 8BEC | mov bp,sp | encoding preserved
    %%insn_0832a:
    sub sp,0x2 ; 0832A 83EC02
    %if ($ - %%insn_0832a) > 3
        %error "LONG_0832A"
    %endif
    times 3 - ($ - %%insn_0832a) db 0
    %%insn_0832d:
    push ds ; 0832D 1E
    %if ($ - %%insn_0832d) > 1
        %error "LONG_0832D"
    %endif
    times 1 - ($ - %%insn_0832d) db 0
    %%insn_0832e:
    push si ; 0832E 56
    %if ($ - %%insn_0832e) > 1
        %error "LONG_0832E"
    %endif
    times 1 - ($ - %%insn_0832e) db 0
    %%insn_0832f:
    push di ; 0832F 57
    %if ($ - %%insn_0832f) > 1
        %error "LONG_0832F"
    %endif
    times 1 - ($ - %%insn_0832f) db 0
    %%insn_08330:
    mov ax,0x8000 ; 08330 B80080
    %if ($ - %%insn_08330) > 3
        %error "LONG_08330"
    %endif
    times 3 - ($ - %%insn_08330) db 0
    %%insn_08333:
    cmp word [cs:0xe76],0x0 ; 08333 2E833E760E00
    %if ($ - %%insn_08333) > 6
        %error "LONG_08333"
    %endif
    times 6 - ($ - %%insn_08333) db 0
    %%insn_08339:
    ja short 0x8346 ; 08339 770B
    %if ($ - %%insn_08339) > 2
        %error "LONG_08339"
    %endif
    times 2 - ($ - %%insn_08339) db 0
    %%insn_0833b:
    cmp [cs:0xe74],ax ; 0833B 2E3906740E
    %if ($ - %%insn_0833b) > 5
        %error "LONG_0833B"
    %endif
    times 5 - ($ - %%insn_0833b) db 0
    %%insn_08340:
    ja short 0x8346 ; 08340 7704
    %if ($ - %%insn_08340) > 2
        %error "LONG_08340"
    %endif
    times 2 - ($ - %%insn_08340) db 0
    %%insn_08342:
    mov ax,[cs:0xe74] ; 08342 2EA1740E
    %if ($ - %%insn_08342) > 4
        %error "LONG_08342"
    %endif
    times 4 - ($ - %%insn_08342) db 0
    %%insn_08346:
    mov [bp-0x2],ax ; 08346 8946FE
    %if ($ - %%insn_08346) > 3
        %error "LONG_08346"
    %endif
    times 3 - ($ - %%insn_08346) db 0
    %%insn_08349:
    mov [cs:0xe34],ax ; 08349 2EA3340E
    %if ($ - %%insn_08349) > 4
        %error "LONG_08349"
    %endif
    times 4 - ($ - %%insn_08349) db 0
    %%insn_0834d:
    mov word [cs:0xe36],0xe7a ; 0834D 2EC706360E7A0E
    %if ($ - %%insn_0834d) > 7
        %error "LONG_0834D"
    %endif
    times 7 - ($ - %%insn_0834d) db 0
    %%insn_08354:
    mov word [cs:0xe38],cs ; 08354 2E8C0E380E
    %if ($ - %%insn_08354) > 5
        %error "LONG_08354"
    %endif
    times 5 - ($ - %%insn_08354) db 0
    %%insn_08359:
    lds si,word [cs:0xe70] ; 08359 2EC536700E
    %if ($ - %%insn_08359) > 5
        %error "LONG_08359"
    %endif
    times 5 - ($ - %%insn_08359) db 0
    %%insn_0835e:
    push ax ; 0835E 50
    %if ($ - %%insn_0835e) > 1
        %error "LONG_0835E"
    %endif
    times 1 - ($ - %%insn_0835e) db 0
    %%insn_0835f:
    push bx ; 0835F 53
    %if ($ - %%insn_0835f) > 1
        %error "LONG_0835F"
    %endif
    times 1 - ($ - %%insn_0835f) db 0
    %%insn_08360:
    mov ax,ds ; 08360 8CD8
    %if ($ - %%insn_08360) > 2
        %error "LONG_08360"
    %endif
    times 2 - ($ - %%insn_08360) db 0
    db 0x8B, 0xDE ; 08362 8BDE | mov bx,si | encoding preserved
    %%insn_08364:
    shr bx,1 ; 08364 D1EB
    %if ($ - %%insn_08364) > 2
        %error "LONG_08364"
    %endif
    times 2 - ($ - %%insn_08364) db 0
    %%insn_08366:
    shr bx,1 ; 08366 D1EB
    %if ($ - %%insn_08366) > 2
        %error "LONG_08366"
    %endif
    times 2 - ($ - %%insn_08366) db 0
    %%insn_08368:
    shr bx,1 ; 08368 D1EB
    %if ($ - %%insn_08368) > 2
        %error "LONG_08368"
    %endif
    times 2 - ($ - %%insn_08368) db 0
    %%insn_0836a:
    shr bx,1 ; 0836A D1EB
    %if ($ - %%insn_0836a) > 2
        %error "LONG_0836A"
    %endif
    times 2 - ($ - %%insn_0836a) db 0
    db 0x03, 0xC3 ; 0836C 03C3 | add ax,bx | encoding preserved
    %%insn_0836e:
    mov ds,ax ; 0836E 8ED8
    %if ($ - %%insn_0836e) > 2
        %error "LONG_0836E"
    %endif
    times 2 - ($ - %%insn_0836e) db 0
    %%insn_08370:
    and si,0xf ; 08370 83E60F
    %if ($ - %%insn_08370) > 3
        %error "LONG_08370"
    %endif
    times 3 - ($ - %%insn_08370) db 0
    %%insn_08373:
    pop bx ; 08373 5B
    %if ($ - %%insn_08373) > 1
        %error "LONG_08373"
    %endif
    times 1 - ($ - %%insn_08373) db 0
    %%insn_08374:
    pop ax ; 08374 58
    %if ($ - %%insn_08374) > 1
        %error "LONG_08374"
    %endif
    times 1 - ($ - %%insn_08374) db 0
    %%insn_08375:
    mov [cs:0xe30],si ; 08375 2E8936300E
    %if ($ - %%insn_08375) > 5
        %error "LONG_08375"
    %endif
    times 5 - ($ - %%insn_08375) db 0
    %%insn_0837a:
    mov word [cs:0xe32],ds ; 0837A 2E8C1E320E
    %if ($ - %%insn_0837a) > 5
        %error "LONG_0837A"
    %endif
    times 5 - ($ - %%insn_0837a) db 0
    %%insn_0837f:
    push bx ; 0837F 53
    %if ($ - %%insn_0837f) > 1
        %error "LONG_0837F"
    %endif
    times 1 - ($ - %%insn_0837f) db 0
    %%insn_08380:
    push cx ; 08380 51
    %if ($ - %%insn_08380) > 1
        %error "LONG_08380"
    %endif
    times 1 - ($ - %%insn_08380) db 0
    %%insn_08381:
    mov bx,ds ; 08381 8CDB
    %if ($ - %%insn_08381) > 2
        %error "LONG_08381"
    %endif
    times 2 - ($ - %%insn_08381) db 0
    db 0x33, 0xC9 ; 08383 33C9 | xor cx,cx | encoding preserved
    %%insn_08385:
    shl bx,1 ; 08385 D1E3
    %if ($ - %%insn_08385) > 2
        %error "LONG_08385"
    %endif
    times 2 - ($ - %%insn_08385) db 0
    %%insn_08387:
    rcl cx,1 ; 08387 D1D1
    %if ($ - %%insn_08387) > 2
        %error "LONG_08387"
    %endif
    times 2 - ($ - %%insn_08387) db 0
    %%insn_08389:
    shl bx,1 ; 08389 D1E3
    %if ($ - %%insn_08389) > 2
        %error "LONG_08389"
    %endif
    times 2 - ($ - %%insn_08389) db 0
    %%insn_0838b:
    rcl cx,1 ; 0838B D1D1
    %if ($ - %%insn_0838b) > 2
        %error "LONG_0838B"
    %endif
    times 2 - ($ - %%insn_0838b) db 0
    %%insn_0838d:
    shl bx,1 ; 0838D D1E3
    %if ($ - %%insn_0838d) > 2
        %error "LONG_0838D"
    %endif
    times 2 - ($ - %%insn_0838d) db 0
    %%insn_0838f:
    rcl cx,1 ; 0838F D1D1
    %if ($ - %%insn_0838f) > 2
        %error "LONG_0838F"
    %endif
    times 2 - ($ - %%insn_0838f) db 0
    %%insn_08391:
    shl bx,1 ; 08391 D1E3
    %if ($ - %%insn_08391) > 2
        %error "LONG_08391"
    %endif
    times 2 - ($ - %%insn_08391) db 0
    %%insn_08393:
    rcl cx,1 ; 08393 D1D1
    %if ($ - %%insn_08393) > 2
        %error "LONG_08393"
    %endif
    times 2 - ($ - %%insn_08393) db 0
    db 0x03, 0xDE ; 08395 03DE | add bx,si | encoding preserved
    %%insn_08397:
    adc cx,0x0 ; 08397 83D100
    %if ($ - %%insn_08397) > 3
        %error "LONG_08397"
    %endif
    times 3 - ($ - %%insn_08397) db 0
    %%insn_0839a:
    add bx,[bp-0x2] ; 0839A 035EFE
    %if ($ - %%insn_0839a) > 3
        %error "LONG_0839A"
    %endif
    times 3 - ($ - %%insn_0839a) db 0
    %%insn_0839d:
    adc cx,0x0 ; 0839D 83D100
    %if ($ - %%insn_0839d) > 3
        %error "LONG_0839D"
    %endif
    times 3 - ($ - %%insn_0839d) db 0
    db 0x8B, 0xF3 ; 083A0 8BF3 | mov si,bx | encoding preserved
    %%insn_083a2:
    and si,0xf ; 083A2 83E60F
    %if ($ - %%insn_083a2) > 3
        %error "LONG_083A2"
    %endif
    times 3 - ($ - %%insn_083a2) db 0
    %%insn_083a5:
    shr cx,1 ; 083A5 D1E9
    %if ($ - %%insn_083a5) > 2
        %error "LONG_083A5"
    %endif
    times 2 - ($ - %%insn_083a5) db 0
    %%insn_083a7:
    rcr bx,1 ; 083A7 D1DB
    %if ($ - %%insn_083a7) > 2
        %error "LONG_083A7"
    %endif
    times 2 - ($ - %%insn_083a7) db 0
    %%insn_083a9:
    shr cx,1 ; 083A9 D1E9
    %if ($ - %%insn_083a9) > 2
        %error "LONG_083A9"
    %endif
    times 2 - ($ - %%insn_083a9) db 0
    %%insn_083ab:
    rcr bx,1 ; 083AB D1DB
    %if ($ - %%insn_083ab) > 2
        %error "LONG_083AB"
    %endif
    times 2 - ($ - %%insn_083ab) db 0
    %%insn_083ad:
    shr cx,1 ; 083AD D1E9
    %if ($ - %%insn_083ad) > 2
        %error "LONG_083AD"
    %endif
    times 2 - ($ - %%insn_083ad) db 0
    %%insn_083af:
    rcr bx,1 ; 083AF D1DB
    %if ($ - %%insn_083af) > 2
        %error "LONG_083AF"
    %endif
    times 2 - ($ - %%insn_083af) db 0
    %%insn_083b1:
    shr cx,1 ; 083B1 D1E9
    %if ($ - %%insn_083b1) > 2
        %error "LONG_083B1"
    %endif
    times 2 - ($ - %%insn_083b1) db 0
    %%insn_083b3:
    rcr bx,1 ; 083B3 D1DB
    %if ($ - %%insn_083b3) > 2
        %error "LONG_083B3"
    %endif
    times 2 - ($ - %%insn_083b3) db 0
    %%insn_083b5:
    mov ds,bx ; 083B5 8EDB
    %if ($ - %%insn_083b5) > 2
        %error "LONG_083B5"
    %endif
    times 2 - ($ - %%insn_083b5) db 0
    %%insn_083b7:
    pop cx ; 083B7 59
    %if ($ - %%insn_083b7) > 1
        %error "LONG_083B7"
    %endif
    times 1 - ($ - %%insn_083b7) db 0
    %%insn_083b8:
    pop bx ; 083B8 5B
    %if ($ - %%insn_083b8) > 1
        %error "LONG_083B8"
    %endif
    times 1 - ($ - %%insn_083b8) db 0
    %%insn_083b9:
    mov [cs:0xe70],si ; 083B9 2E8936700E
    %if ($ - %%insn_083b9) > 5
        %error "LONG_083B9"
    %endif
    times 5 - ($ - %%insn_083b9) db 0
    %%insn_083be:
    mov word [cs:0xe72],ds ; 083BE 2E8C1E720E
    %if ($ - %%insn_083be) > 5
        %error "LONG_083BE"
    %endif
    times 5 - ($ - %%insn_083be) db 0
    %%insn_083c3:
    mov ax,[cs:0xe74] ; 083C3 2EA1740E
    %if ($ - %%insn_083c3) > 4
        %error "LONG_083C3"
    %endif
    times 4 - ($ - %%insn_083c3) db 0
    %%insn_083c7:
    mov dx,[cs:0xe76] ; 083C7 2E8B16760E
    %if ($ - %%insn_083c7) > 5
        %error "LONG_083C7"
    %endif
    times 5 - ($ - %%insn_083c7) db 0
    %%insn_083cc:
    sub ax,[bp-0x2] ; 083CC 2B46FE
    %if ($ - %%insn_083cc) > 3
        %error "LONG_083CC"
    %endif
    times 3 - ($ - %%insn_083cc) db 0
    %%insn_083cf:
    sbb dx,0x0 ; 083CF 83DA00
    %if ($ - %%insn_083cf) > 3
        %error "LONG_083CF"
    %endif
    times 3 - ($ - %%insn_083cf) db 0
    %%insn_083d2:
    mov [cs:0xe76],dx ; 083D2 2E8916760E
    %if ($ - %%insn_083d2) > 5
        %error "LONG_083D2"
    %endif
    times 5 - ($ - %%insn_083d2) db 0
    %%insn_083d7:
    mov [cs:0xe74],ax ; 083D7 2EA3740E
    %if ($ - %%insn_083d7) > 4
        %error "LONG_083D7"
    %endif
    times 4 - ($ - %%insn_083d7) db 0
    %%insn_083db:
    push cs ; 083DB 0E
    %if ($ - %%insn_083db) > 1
        %error "LONG_083DB"
    %endif
    times 1 - ($ - %%insn_083db) db 0
    %%insn_083dc:
    call 0x7ea0 ; 083DC E8C1FA
    %if ($ - %%insn_083dc) > 3
        %error "LONG_083DC"
    %endif
    times 3 - ($ - %%insn_083dc) db 0
    %%insn_083df:
    mov ax,cs ; 083DF 8CC8
    %if ($ - %%insn_083df) > 2
        %error "LONG_083DF"
    %endif
    times 2 - ($ - %%insn_083df) db 0
    %%insn_083e1:
    mov ds,ax ; 083E1 8ED8
    %if ($ - %%insn_083e1) > 2
        %error "LONG_083E1"
    %endif
    times 2 - ($ - %%insn_083e1) db 0
    %%insn_083e3:
    mov si,0xe30 ; 083E3 BE300E
    %if ($ - %%insn_083e3) > 3
        %error "LONG_083E3"
    %endif
    times 3 - ($ - %%insn_083e3) db 0
    %%insn_083e6:
    mov ax,0x688 ; 083E6 B88806
    %if ($ - %%insn_083e6) > 3
        %error "LONG_083E6"
    %endif
    times 3 - ($ - %%insn_083e6) db 0
    %%insn_083e9:
    test word [cs:0xe2e],0x2 ; 083E9 2EF7062E0E0200
    %if ($ - %%insn_083e9) > 7
        %error "LONG_083E9"
    %endif
    times 7 - ($ - %%insn_083e9) db 0
    %%insn_083f0:
    jz short 0x83f5 ; 083F0 7403
    %if ($ - %%insn_083f0) > 2
        %error "LONG_083F0"
    %endif
    times 2 - ($ - %%insn_083f0) db 0
    %%insn_083f2:
    mov ax,0x68b ; 083F2 B88B06
    %if ($ - %%insn_083f2) > 3
        %error "LONG_083F2"
    %endif
    times 3 - ($ - %%insn_083f2) db 0
    %%insn_083f5:
    int byte 0x66 ; 083F5 CD66
    %if ($ - %%insn_083f5) > 2
        %error "LONG_083F5"
    %endif
    times 2 - ($ - %%insn_083f5) db 0
    %%insn_083f7:
    pop di ; 083F7 5F
    %if ($ - %%insn_083f7) > 1
        %error "LONG_083F7"
    %endif
    times 1 - ($ - %%insn_083f7) db 0
    %%insn_083f8:
    pop si ; 083F8 5E
    %if ($ - %%insn_083f8) > 1
        %error "LONG_083F8"
    %endif
    times 1 - ($ - %%insn_083f8) db 0
    %%insn_083f9:
    pop ds ; 083F9 1F
    %if ($ - %%insn_083f9) > 1
        %error "LONG_083F9"
    %endif
    times 1 - ($ - %%insn_083f9) db 0
    db 0x8B, 0xE5 ; 083FA 8BE5 | mov sp,bp | encoding preserved
    %%insn_083fc:
    pop bp ; 083FC 5D
    %if ($ - %%insn_083fc) > 1
        %error "LONG_083FC"
    %endif
    times 1 - ($ - %%insn_083fc) db 0
    %%insn_083fd:
    retf ; 083FD CB
    %if ($ - %%insn_083fd) > 1
        %error "LONG_083FD"
    %endif
    times 1 - ($ - %%insn_083fd) db 0
    %if ($ - %%fragment_start) != 215
        %error "SIZE_08327"
    %endif
%endmacro
