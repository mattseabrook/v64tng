; PE virtual entry 0040B198
; Ghidra working symbol: FUN_0040b198
; Verified VDX 25h local-palette and 4x4 tile-opcode delta compositor.
; With bit 7 set, delta FF selects the persistent foreground pixel and a
; foreground FF protects the background pixel. GRATE trace 20260903-225430
; proves every movement enters here with flags 00C0h after mgpuzbkd established
; that foreground matte; the matte is not replaced at VIDEOREF completion.
; Generated losslessly; preserve byte identity after edits.

%macro emit_decode_vdx_delta_frame_part_00 0
    %%fragment_start:
decode_vdx_delta_frame:
    %%insn_0040b198:
    push ebp ; 0040B198 55
    %if ($ - %%insn_0040b198) > 1
        %error "LONG_0040B198"
    %endif
    times 1 - ($ - %%insn_0040b198) db 0
    db 0x8B, 0xEC ; 0040B199 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040b19b:
    sub esp,0xa4 ; 0040B19B 81ECA4000000
    %if ($ - %%insn_0040b19b) > 6
        %error "LONG_0040B19B"
    %endif
    times 6 - ($ - %%insn_0040b19b) db 0
    %%insn_0040b1a1:
    mov dword [0x42135c],0x190 ; 0040B1A1 C7055C13420090010000
    %if ($ - %%insn_0040b1a1) > 10
        %error "LONG_0040B1A1"
    %endif
    times 10 - ($ - %%insn_0040b1a1) db 0
    %%insn_0040b1ab:
    mov dword [0x421360],0x50 ; 0040B1AB C7056013420050000000
    %if ($ - %%insn_0040b1ab) > 10
        %error "LONG_0040B1AB"
    %endif
    times 10 - ($ - %%insn_0040b1ab) db 0
    %%insn_0040b1b5:
    mov dword [0x421354],0x280 ; 0040B1B5 C7055413420080020000
    %if ($ - %%insn_0040b1b5) > 10
        %error "LONG_0040B1B5"
    %endif
    times 10 - ($ - %%insn_0040b1b5) db 0
    %%insn_0040b1bf:
    mov dword [0x421358],0x0 ; 0040B1BF C7055813420000000000
    %if ($ - %%insn_0040b1bf) > 10
        %error "LONG_0040B1BF"
    %endif
    times 10 - ($ - %%insn_0040b1bf) db 0
    %%insn_0040b1c9:
    mov eax,[ebp+0x10] ; 0040B1C9 8B4510
    %if ($ - %%insn_0040b1c9) > 3
        %error "LONG_0040B1C9"
    %endif
    times 3 - ($ - %%insn_0040b1c9) db 0
    %%insn_0040b1cc:
    sar eax,byte 0x2 ; 0040B1CC C1F802
    %if ($ - %%insn_0040b1cc) > 3
        %error "LONG_0040B1CC"
    %endif
    times 3 - ($ - %%insn_0040b1cc) db 0
    %%insn_0040b1cf:
    mov [0x4212dc],eax ; 0040B1CF A3DC124200
    %if ($ - %%insn_0040b1cf) > 5
        %error "LONG_0040B1CF"
    %endif
    times 5 - ($ - %%insn_0040b1cf) db 0
    %%insn_0040b1d4:
    mov ecx,[ebp+0x8] ; 0040B1D4 8B4D08
    %if ($ - %%insn_0040b1d4) > 3
        %error "LONG_0040B1D4"
    %endif
    times 3 - ($ - %%insn_0040b1d4) db 0
    %%insn_0040b1d7:
    movzx dx,byte [ecx] ; 0040B1D7 660FB611
    %if ($ - %%insn_0040b1d7) > 4
        %error "LONG_0040B1D7"
    %endif
    times 4 - ($ - %%insn_0040b1d7) db 0
    %%insn_0040b1db:
    mov [ebp-0x20],dx ; 0040B1DB 668955E0
    %if ($ - %%insn_0040b1db) > 4
        %error "LONG_0040B1DB"
    %endif
    times 4 - ($ - %%insn_0040b1db) db 0
    %%insn_0040b1df:
    mov eax,[ebp+0x8] ; 0040B1DF 8B4508
    %if ($ - %%insn_0040b1df) > 3
        %error "LONG_0040B1DF"
    %endif
    times 3 - ($ - %%insn_0040b1df) db 0
    %%insn_0040b1e2:
    add eax,0x1 ; 0040B1E2 83C001
    %if ($ - %%insn_0040b1e2) > 3
        %error "LONG_0040B1E2"
    %endif
    times 3 - ($ - %%insn_0040b1e2) db 0
    %%insn_0040b1e5:
    mov [ebp+0x8],eax ; 0040B1E5 894508
    %if ($ - %%insn_0040b1e5) > 3
        %error "LONG_0040B1E5"
    %endif
    times 3 - ($ - %%insn_0040b1e5) db 0
    %%insn_0040b1e8:
    mov ecx,[ebp+0x8] ; 0040B1E8 8B4D08
    %if ($ - %%insn_0040b1e8) > 3
        %error "LONG_0040B1E8"
    %endif
    times 3 - ($ - %%insn_0040b1e8) db 0
    db 0x33, 0xD2 ; 0040B1EB 33D2 | xor edx,edx | encoding preserved
    %%insn_0040b1ed:
    mov dl,[ecx] ; 0040B1ED 8A11
    %if ($ - %%insn_0040b1ed) > 2
        %error "LONG_0040B1ED"
    %endif
    times 2 - ($ - %%insn_0040b1ed) db 0
    %%insn_0040b1ef:
    shl edx,byte 0x8 ; 0040B1EF C1E208
    %if ($ - %%insn_0040b1ef) > 3
        %error "LONG_0040B1EF"
    %endif
    times 3 - ($ - %%insn_0040b1ef) db 0
    %%insn_0040b1f2:
    mov ax,[ebp-0x20] ; 0040B1F2 668B45E0
    %if ($ - %%insn_0040b1f2) > 4
        %error "LONG_0040B1F2"
    %endif
    times 4 - ($ - %%insn_0040b1f2) db 0
    db 0x66, 0x03, 0xC2 ; 0040B1F6 6603C2 | add ax,dx | encoding preserved
    %%insn_0040b1f9:
    mov [ebp-0x20],ax ; 0040B1F9 668945E0
    %if ($ - %%insn_0040b1f9) > 4
        %error "LONG_0040B1F9"
    %endif
    times 4 - ($ - %%insn_0040b1f9) db 0
    %%insn_0040b1fd:
    mov ecx,[ebp+0x8] ; 0040B1FD 8B4D08
    %if ($ - %%insn_0040b1fd) > 3
        %error "LONG_0040B1FD"
    %endif
    times 3 - ($ - %%insn_0040b1fd) db 0
    %%insn_0040b200:
    add ecx,0x1 ; 0040B200 83C101
    %if ($ - %%insn_0040b200) > 3
        %error "LONG_0040B200"
    %endif
    times 3 - ($ - %%insn_0040b200) db 0
    %%insn_0040b203:
    mov [ebp+0x8],ecx ; 0040B203 894D08
    %if ($ - %%insn_0040b203) > 3
        %error "LONG_0040B203"
    %endif
    times 3 - ($ - %%insn_0040b203) db 0
    %%insn_0040b206:
    mov word [ebp-0x18],0x0 ; 0040B206 66C745E80000
    %if ($ - %%insn_0040b206) > 6
        %error "LONG_0040B206"
    %endif
    times 6 - ($ - %%insn_0040b206) db 0
    %%insn_0040b20c:
    mov edx,[ebp-0x20] ; 0040B20C 8B55E0
    %if ($ - %%insn_0040b20c) > 3
        %error "LONG_0040B20C"
    %endif
    times 3 - ($ - %%insn_0040b20c) db 0
    %%insn_0040b20f:
    and edx,0xffff ; 0040B20F 81E2FFFF0000
    %if ($ - %%insn_0040b20f) > 6
        %error "LONG_0040B20F"
    %endif
    times 6 - ($ - %%insn_0040b20f) db 0
    %%insn_0040b215:
    test edx,edx ; 0040B215 85D2
    %if ($ - %%insn_0040b215) > 2
        %error "LONG_0040B215"
    %endif
    times 2 - ($ - %%insn_0040b215) db 0
    %%insn_0040b217:
    jz 0x40b32e ; 0040B217 0F8411010000
    %if ($ - %%insn_0040b217) > 6
        %error "LONG_0040B217"
    %endif
    times 6 - ($ - %%insn_0040b217) db 0
    %%insn_0040b21d:
    mov eax,[ebp+0x8] ; 0040B21D 8B4508
    %if ($ - %%insn_0040b21d) > 3
        %error "LONG_0040B21D"
    %endif
    times 3 - ($ - %%insn_0040b21d) db 0
    %%insn_0040b220:
    add eax,0x20 ; 0040B220 83C020
    %if ($ - %%insn_0040b220) > 3
        %error "LONG_0040B220"
    %endif
    times 3 - ($ - %%insn_0040b220) db 0
    %%insn_0040b223:
    mov [ebp-0x2c],eax ; 0040B223 8945D4
    %if ($ - %%insn_0040b223) > 3
        %error "LONG_0040B223"
    %endif
    times 3 - ($ - %%insn_0040b223) db 0
    %%insn_0040b226:
    mov ecx,[ebp+0x8] ; 0040B226 8B4D08
    %if ($ - %%insn_0040b226) > 3
        %error "LONG_0040B226"
    %endif
    times 3 - ($ - %%insn_0040b226) db 0
    %%insn_0040b229:
    mov [ebp-0x34],ecx ; 0040B229 894DCC
    %if ($ - %%insn_0040b229) > 3
        %error "LONG_0040B229"
    %endif
    times 3 - ($ - %%insn_0040b229) db 0
    %%insn_0040b22c:
    mov byte [ebp-0x4c],0x1 ; 0040B22C C645B401
    %if ($ - %%insn_0040b22c) > 4
        %error "LONG_0040B22C"
    %endif
    times 4 - ($ - %%insn_0040b22c) db 0
    %%insn_0040b230:
    mov dword [ebp-0x24],0x0 ; 0040B230 C745DC00000000
    %if ($ - %%insn_0040b230) > 7
        %error "LONG_0040B230"
    %endif
    times 7 - ($ - %%insn_0040b230) db 0
    %%insn_0040b237:
    jmp short 0x40b242 ; 0040B237 EB09
    %if ($ - %%insn_0040b237) > 2
        %error "LONG_0040B237"
    %endif
    times 2 - ($ - %%insn_0040b237) db 0
    %%insn_0040b239:
    mov edx,[ebp-0x24] ; 0040B239 8B55DC
    %if ($ - %%insn_0040b239) > 3
        %error "LONG_0040B239"
    %endif
    times 3 - ($ - %%insn_0040b239) db 0
    %%insn_0040b23c:
    add edx,0x1 ; 0040B23C 83C201
    %if ($ - %%insn_0040b23c) > 3
        %error "LONG_0040B23C"
    %endif
    times 3 - ($ - %%insn_0040b23c) db 0
    %%insn_0040b23f:
    mov [ebp-0x24],edx ; 0040B23F 8955DC
    %if ($ - %%insn_0040b23f) > 3
        %error "LONG_0040B23F"
    %endif
    times 3 - ($ - %%insn_0040b23f) db 0
    %%insn_0040b242:
    cmp dword [ebp-0x24],0x100 ; 0040B242 817DDC00010000
    %if ($ - %%insn_0040b242) > 7
        %error "LONG_0040B242"
    %endif
    times 7 - ($ - %%insn_0040b242) db 0
    %%insn_0040b249:
    jnl 0x40b31d ; 0040B249 0F8DCE000000
    %if ($ - %%insn_0040b249) > 6
        %error "LONG_0040B249"
    %endif
    times 6 - ($ - %%insn_0040b249) db 0
    %%insn_0040b24f:
    mov al,[ebp-0x4c] ; 0040B24F 8A45B4
    %if ($ - %%insn_0040b24f) > 3
        %error "LONG_0040B24F"
    %endif
    times 3 - ($ - %%insn_0040b24f) db 0
    %%insn_0040b252:
    sub al,0x1 ; 0040B252 2C01
    %if ($ - %%insn_0040b252) > 2
        %error "LONG_0040B252"
    %endif
    times 2 - ($ - %%insn_0040b252) db 0
    %%insn_0040b254:
    mov [ebp-0x4c],al ; 0040B254 8845B4
    %if ($ - %%insn_0040b254) > 3
        %error "LONG_0040B254"
    %endif
    times 3 - ($ - %%insn_0040b254) db 0
    %%insn_0040b257:
    mov ecx,[ebp-0x4c] ; 0040B257 8B4DB4
    %if ($ - %%insn_0040b257) > 3
        %error "LONG_0040B257"
    %endif
    times 3 - ($ - %%insn_0040b257) db 0
    %%insn_0040b25a:
    and ecx,0xff ; 0040B25A 81E1FF000000
    %if ($ - %%insn_0040b25a) > 6
        %error "LONG_0040B25A"
    %endif
    times 6 - ($ - %%insn_0040b25a) db 0
    %%insn_0040b260:
    test ecx,ecx ; 0040B260 85C9
    %if ($ - %%insn_0040b260) > 2
        %error "LONG_0040B260"
    %endif
    times 2 - ($ - %%insn_0040b260) db 0
    %%insn_0040b262:
    jnz short 0x40b29a ; 0040B262 7536
    %if ($ - %%insn_0040b262) > 2
        %error "LONG_0040B262"
    %endif
    times 2 - ($ - %%insn_0040b262) db 0
    %%insn_0040b264:
    mov byte [ebp-0x4c],0x10 ; 0040B264 C645B410
    %if ($ - %%insn_0040b264) > 4
        %error "LONG_0040B264"
    %endif
    times 4 - ($ - %%insn_0040b264) db 0
    %%insn_0040b268:
    mov edx,[ebp-0x34] ; 0040B268 8B55CC
    %if ($ - %%insn_0040b268) > 3
        %error "LONG_0040B268"
    %endif
    times 3 - ($ - %%insn_0040b268) db 0
    %%insn_0040b26b:
    movzx ax,byte [edx] ; 0040B26B 660FB602
    %if ($ - %%insn_0040b26b) > 4
        %error "LONG_0040B26B"
    %endif
    times 4 - ($ - %%insn_0040b26b) db 0
    %%insn_0040b26f:
    mov [ebp-0x18],ax ; 0040B26F 668945E8
    %if ($ - %%insn_0040b26f) > 4
        %error "LONG_0040B26F"
    %endif
    times 4 - ($ - %%insn_0040b26f) db 0
    %%insn_0040b273:
    mov ecx,[ebp-0x34] ; 0040B273 8B4DCC
    %if ($ - %%insn_0040b273) > 3
        %error "LONG_0040B273"
    %endif
    times 3 - ($ - %%insn_0040b273) db 0
    %%insn_0040b276:
    add ecx,0x1 ; 0040B276 83C101
    %if ($ - %%insn_0040b276) > 3
        %error "LONG_0040B276"
    %endif
    times 3 - ($ - %%insn_0040b276) db 0
    %%insn_0040b279:
    mov [ebp-0x34],ecx ; 0040B279 894DCC
    %if ($ - %%insn_0040b279) > 3
        %error "LONG_0040B279"
    %endif
    times 3 - ($ - %%insn_0040b279) db 0
    %%insn_0040b27c:
    mov edx,[ebp-0x34] ; 0040B27C 8B55CC
    %if ($ - %%insn_0040b27c) > 3
        %error "LONG_0040B27C"
    %endif
    times 3 - ($ - %%insn_0040b27c) db 0
    db 0x33, 0xC0 ; 0040B27F 33C0 | xor eax,eax | encoding preserved
    %%insn_0040b281:
    mov al,[edx] ; 0040B281 8A02
    %if ($ - %%insn_0040b281) > 2
        %error "LONG_0040B281"
    %endif
    times 2 - ($ - %%insn_0040b281) db 0
    %%insn_0040b283:
    shl eax,byte 0x8 ; 0040B283 C1E008
    %if ($ - %%insn_0040b283) > 3
        %error "LONG_0040B283"
    %endif
    times 3 - ($ - %%insn_0040b283) db 0
    %%insn_0040b286:
    mov cx,[ebp-0x18] ; 0040B286 668B4DE8
    %if ($ - %%insn_0040b286) > 4
        %error "LONG_0040B286"
    %endif
    times 4 - ($ - %%insn_0040b286) db 0
    db 0x66, 0x03, 0xC8 ; 0040B28A 6603C8 | add cx,ax | encoding preserved
    %%insn_0040b28d:
    mov [ebp-0x18],cx ; 0040B28D 66894DE8
    %if ($ - %%insn_0040b28d) > 4
        %error "LONG_0040B28D"
    %endif
    times 4 - ($ - %%insn_0040b28d) db 0
    %%insn_0040b291:
    mov edx,[ebp-0x34] ; 0040B291 8B55CC
    %if ($ - %%insn_0040b291) > 3
        %error "LONG_0040B291"
    %endif
    times 3 - ($ - %%insn_0040b291) db 0
    %%insn_0040b294:
    add edx,0x1 ; 0040B294 83C201
    %if ($ - %%insn_0040b294) > 3
        %error "LONG_0040B294"
    %endif
    times 3 - ($ - %%insn_0040b294) db 0
    %%insn_0040b297:
    mov [ebp-0x34],edx ; 0040B297 8955CC
    %if ($ - %%insn_0040b297) > 3
        %error "LONG_0040B297"
    %endif
    times 3 - ($ - %%insn_0040b297) db 0
    %%insn_0040b29a:
    mov eax,[ebp-0x18] ; 0040B29A 8B45E8
    %if ($ - %%insn_0040b29a) > 3
        %error "LONG_0040B29A"
    %endif
    times 3 - ($ - %%insn_0040b29a) db 0
    %%insn_0040b29d:
    and eax,0xffff ; 0040B29D 25FFFF0000
    %if ($ - %%insn_0040b29d) > 5
        %error "LONG_0040B29D"
    %endif
    times 5 - ($ - %%insn_0040b29d) db 0
    %%insn_0040b2a2:
    and eax,0x8000 ; 0040B2A2 2500800000
    %if ($ - %%insn_0040b2a2) > 5
        %error "LONG_0040B2A2"
    %endif
    times 5 - ($ - %%insn_0040b2a2) db 0
    %%insn_0040b2a7:
    test eax,eax ; 0040B2A7 85C0
    %if ($ - %%insn_0040b2a7) > 2
        %error "LONG_0040B2A7"
    %endif
    times 2 - ($ - %%insn_0040b2a7) db 0
    %%insn_0040b2a9:
    jz short 0x40b30d ; 0040B2A9 7462
    %if ($ - %%insn_0040b2a9) > 2
        %error "LONG_0040B2A9"
    %endif
    times 2 - ($ - %%insn_0040b2a9) db 0
    %%insn_0040b2ab:
    mov ecx,[ebp-0x24] ; 0040B2AB 8B4DDC
    %if ($ - %%insn_0040b2ab) > 3
        %error "LONG_0040B2AB"
    %endif
    times 3 - ($ - %%insn_0040b2ab) db 0
    %%insn_0040b2ae:
    imul ecx,ecx,0x3 ; 0040B2AE 6BC903
    %if ($ - %%insn_0040b2ae) > 3
        %error "LONG_0040B2AE"
    %endif
    times 3 - ($ - %%insn_0040b2ae) db 0
    %%insn_0040b2b1:
    mov edx,[0x421344] ; 0040B2B1 8B1544134200
    %if ($ - %%insn_0040b2b1) > 6
        %error "LONG_0040B2B1"
    %endif
    times 6 - ($ - %%insn_0040b2b1) db 0
    %%insn_0040b2b7:
    mov eax,[ebp-0x2c] ; 0040B2B7 8B45D4
    %if ($ - %%insn_0040b2b7) > 3
        %error "LONG_0040B2B7"
    %endif
    times 3 - ($ - %%insn_0040b2b7) db 0
    %%insn_0040b2ba:
    mov al,[eax] ; 0040B2BA 8A00
    %if ($ - %%insn_0040b2ba) > 2
        %error "LONG_0040B2BA"
    %endif
    times 2 - ($ - %%insn_0040b2ba) db 0
    %%insn_0040b2bc:
    mov [edx+ecx],al ; 0040B2BC 88040A
    %if ($ - %%insn_0040b2bc) > 3
        %error "LONG_0040B2BC"
    %endif
    times 3 - ($ - %%insn_0040b2bc) db 0
    %%insn_0040b2bf:
    mov ecx,[ebp-0x2c] ; 0040B2BF 8B4DD4
    %if ($ - %%insn_0040b2bf) > 3
        %error "LONG_0040B2BF"
    %endif
    times 3 - ($ - %%insn_0040b2bf) db 0
    %%insn_0040b2c2:
    add ecx,0x1 ; 0040B2C2 83C101
    %if ($ - %%insn_0040b2c2) > 3
        %error "LONG_0040B2C2"
    %endif
    times 3 - ($ - %%insn_0040b2c2) db 0
    %%insn_0040b2c5:
    mov [ebp-0x2c],ecx ; 0040B2C5 894DD4
    %if ($ - %%insn_0040b2c5) > 3
        %error "LONG_0040B2C5"
    %endif
    times 3 - ($ - %%insn_0040b2c5) db 0
    %%insn_0040b2c8:
    mov edx,[ebp-0x24] ; 0040B2C8 8B55DC
    %if ($ - %%insn_0040b2c8) > 3
        %error "LONG_0040B2C8"
    %endif
    times 3 - ($ - %%insn_0040b2c8) db 0
    %%insn_0040b2cb:
    imul edx,edx,0x3 ; 0040B2CB 6BD203
    %if ($ - %%insn_0040b2cb) > 3
        %error "LONG_0040B2CB"
    %endif
    times 3 - ($ - %%insn_0040b2cb) db 0
    %%insn_0040b2ce:
    mov eax,[0x421344] ; 0040B2CE A144134200
    %if ($ - %%insn_0040b2ce) > 5
        %error "LONG_0040B2CE"
    %endif
    times 5 - ($ - %%insn_0040b2ce) db 0
    %%insn_0040b2d3:
    mov ecx,[ebp-0x2c] ; 0040B2D3 8B4DD4
    %if ($ - %%insn_0040b2d3) > 3
        %error "LONG_0040B2D3"
    %endif
    times 3 - ($ - %%insn_0040b2d3) db 0
    %%insn_0040b2d6:
    mov cl,[ecx] ; 0040B2D6 8A09
    %if ($ - %%insn_0040b2d6) > 2
        %error "LONG_0040B2D6"
    %endif
    times 2 - ($ - %%insn_0040b2d6) db 0
    %%insn_0040b2d8:
    mov [eax+edx+0x1],cl ; 0040B2D8 884C1001
    %if ($ - %%insn_0040b2d8) > 4
        %error "LONG_0040B2D8"
    %endif
    times 4 - ($ - %%insn_0040b2d8) db 0
    %%insn_0040b2dc:
    mov edx,[ebp-0x2c] ; 0040B2DC 8B55D4
    %if ($ - %%insn_0040b2dc) > 3
        %error "LONG_0040B2DC"
    %endif
    times 3 - ($ - %%insn_0040b2dc) db 0
    %%insn_0040b2df:
    add edx,0x1 ; 0040B2DF 83C201
    %if ($ - %%insn_0040b2df) > 3
        %error "LONG_0040B2DF"
    %endif
    times 3 - ($ - %%insn_0040b2df) db 0
    %%insn_0040b2e2:
    mov [ebp-0x2c],edx ; 0040B2E2 8955D4
    %if ($ - %%insn_0040b2e2) > 3
        %error "LONG_0040B2E2"
    %endif
    times 3 - ($ - %%insn_0040b2e2) db 0
    %%insn_0040b2e5:
    mov eax,[ebp-0x24] ; 0040B2E5 8B45DC
    %if ($ - %%insn_0040b2e5) > 3
        %error "LONG_0040B2E5"
    %endif
    times 3 - ($ - %%insn_0040b2e5) db 0
    %%insn_0040b2e8:
    imul eax,eax,0x3 ; 0040B2E8 6BC003
    %if ($ - %%insn_0040b2e8) > 3
        %error "LONG_0040B2E8"
    %endif
    times 3 - ($ - %%insn_0040b2e8) db 0
    %%insn_0040b2eb:
    mov ecx,[0x421344] ; 0040B2EB 8B0D44134200
    %if ($ - %%insn_0040b2eb) > 6
        %error "LONG_0040B2EB"
    %endif
    times 6 - ($ - %%insn_0040b2eb) db 0
    %%insn_0040b2f1:
    mov edx,[ebp-0x2c] ; 0040B2F1 8B55D4
    %if ($ - %%insn_0040b2f1) > 3
        %error "LONG_0040B2F1"
    %endif
    times 3 - ($ - %%insn_0040b2f1) db 0
    %%insn_0040b2f4:
    mov dl,[edx] ; 0040B2F4 8A12
    %if ($ - %%insn_0040b2f4) > 2
        %error "LONG_0040B2F4"
    %endif
    times 2 - ($ - %%insn_0040b2f4) db 0
    %%insn_0040b2f6:
    mov [ecx+eax+0x2],dl ; 0040B2F6 88540102
    %if ($ - %%insn_0040b2f6) > 4
        %error "LONG_0040B2F6"
    %endif
    times 4 - ($ - %%insn_0040b2f6) db 0
    %%insn_0040b2fa:
    mov eax,[ebp-0x2c] ; 0040B2FA 8B45D4
    %if ($ - %%insn_0040b2fa) > 3
        %error "LONG_0040B2FA"
    %endif
    times 3 - ($ - %%insn_0040b2fa) db 0
    %%insn_0040b2fd:
    add eax,0x1 ; 0040B2FD 83C001
    %if ($ - %%insn_0040b2fd) > 3
        %error "LONG_0040B2FD"
    %endif
    times 3 - ($ - %%insn_0040b2fd) db 0
    %%insn_0040b300:
    mov [ebp-0x2c],eax ; 0040B300 8945D4
    %if ($ - %%insn_0040b300) > 3
        %error "LONG_0040B300"
    %endif
    times 3 - ($ - %%insn_0040b300) db 0
    %%insn_0040b303:
    mov dword [0x4212d4],0x1 ; 0040B303 C705D412420001000000
    %if ($ - %%insn_0040b303) > 10
        %error "LONG_0040B303"
    %endif
    times 10 - ($ - %%insn_0040b303) db 0
    %%insn_0040b30d:
    mov cx,[ebp-0x18] ; 0040B30D 668B4DE8
    %if ($ - %%insn_0040b30d) > 4
        %error "LONG_0040B30D"
    %endif
    times 4 - ($ - %%insn_0040b30d) db 0
    %%insn_0040b311:
    shl cx,1 ; 0040B311 66D1E1
    %if ($ - %%insn_0040b311) > 3
        %error "LONG_0040B311"
    %endif
    times 3 - ($ - %%insn_0040b311) db 0
    %%insn_0040b314:
    mov [ebp-0x18],cx ; 0040B314 66894DE8
    %if ($ - %%insn_0040b314) > 4
        %error "LONG_0040B314"
    %endif
    times 4 - ($ - %%insn_0040b314) db 0
    %%insn_0040b318:
    jmp 0x40b239 ; 0040B318 E91CFFFFFF
    %if ($ - %%insn_0040b318) > 5
        %error "LONG_0040B318"
    %endif
    times 5 - ($ - %%insn_0040b318) db 0
    %%insn_0040b31d:
    mov edx,[ebp-0x20] ; 0040B31D 8B55E0
    %if ($ - %%insn_0040b31d) > 3
        %error "LONG_0040B31D"
    %endif
    times 3 - ($ - %%insn_0040b31d) db 0
    %%insn_0040b320:
    and edx,0xffff ; 0040B320 81E2FFFF0000
    %if ($ - %%insn_0040b320) > 6
        %error "LONG_0040B320"
    %endif
    times 6 - ($ - %%insn_0040b320) db 0
    %%insn_0040b326:
    mov eax,[ebp+0x8] ; 0040B326 8B4508
    %if ($ - %%insn_0040b326) > 3
        %error "LONG_0040B326"
    %endif
    times 3 - ($ - %%insn_0040b326) db 0
    db 0x03, 0xC2 ; 0040B329 03C2 | add eax,edx | encoding preserved
    %%insn_0040b32b:
    mov [ebp+0x8],eax ; 0040B32B 894508
    %if ($ - %%insn_0040b32b) > 3
        %error "LONG_0040B32B"
    %endif
    times 3 - ($ - %%insn_0040b32b) db 0
    %%insn_0040b32e:
    cmp dword [0x4212d4],0x0 ; 0040B32E 833DD412420000
    %if ($ - %%insn_0040b32e) > 7
        %error "LONG_0040B32E"
    %endif
    times 7 - ($ - %%insn_0040b32e) db 0
    %%insn_0040b335:
    jz short 0x40b365 ; 0040B335 742E
    %if ($ - %%insn_0040b335) > 2
        %error "LONG_0040B335"
    %endif
    times 2 - ($ - %%insn_0040b335) db 0
    db 0x33, 0xC9 ; 0040B337 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040b339:
    mov cx,[0x4212d8] ; 0040B339 668B0DD8124200
    %if ($ - %%insn_0040b339) > 7
        %error "LONG_0040B339"
    %endif
    times 7 - ($ - %%insn_0040b339) db 0
    %%insn_0040b340:
    and ecx,0x40 ; 0040B340 83E140
    %if ($ - %%insn_0040b340) > 3
        %error "LONG_0040B340"
    %endif
    times 3 - ($ - %%insn_0040b340) db 0
    %%insn_0040b343:
    test ecx,ecx ; 0040B343 85C9
    %if ($ - %%insn_0040b343) > 2
        %error "LONG_0040B343"
    %endif
    times 2 - ($ - %%insn_0040b343) db 0
    %%insn_0040b345:
    jnz short 0x40b365 ; 0040B345 751E
    %if ($ - %%insn_0040b345) > 2
        %error "LONG_0040B345"
    %endif
    times 2 - ($ - %%insn_0040b345) db 0
    db 0x33, 0xD2 ; 0040B347 33D2 | xor edx,edx | encoding preserved
    %%insn_0040b349:
    mov dx,[0x4212d8] ; 0040B349 668B15D8124200
    %if ($ - %%insn_0040b349) > 7
        %error "LONG_0040B349"
    %endif
    times 7 - ($ - %%insn_0040b349) db 0
    %%insn_0040b350:
    and edx,0x80 ; 0040B350 81E280000000
    %if ($ - %%insn_0040b350) > 6
        %error "LONG_0040B350"
    %endif
    times 6 - ($ - %%insn_0040b350) db 0
    %%insn_0040b356:
    test edx,edx ; 0040B356 85D2
    %if ($ - %%insn_0040b356) > 2
        %error "LONG_0040B356"
    %endif
    times 2 - ($ - %%insn_0040b356) db 0
    %%insn_0040b358:
    jnz short 0x40b365 ; 0040B358 750B
    %if ($ - %%insn_0040b358) > 2
        %error "LONG_0040B358"
    %endif
    times 2 - ($ - %%insn_0040b358) db 0
    %%insn_0040b35a:
    mov ecx,0x421300 ; 0040B35A B900134200
    %if ($ - %%insn_0040b35a) > 5
        %error "LONG_0040B35A"
    %endif
    times 5 - ($ - %%insn_0040b35a) db 0
    %%insn_0040b35f:
    call dword near [0x4213b8] ; 0040B35F FF15B8134200
    %if ($ - %%insn_0040b35f) > 6
        %error "LONG_0040B35F"
    %endif
    times 6 - ($ - %%insn_0040b35f) db 0
    %%insn_0040b365:
    mov word [ebp-0x50],0x0 ; 0040B365 66C745B00000
    %if ($ - %%insn_0040b365) > 6
        %error "LONG_0040B365"
    %endif
    times 6 - ($ - %%insn_0040b365) db 0
    %%insn_0040b36b:
    mov word [ebp-0x14],0x0 ; 0040B36B 66C745EC0000
    %if ($ - %%insn_0040b36b) > 6
        %error "LONG_0040B36B"
    %endif
    times 6 - ($ - %%insn_0040b36b) db 0
    %%insn_0040b371:
    mov word [ebp-0x30],0x0 ; 0040B371 66C745D00000
    %if ($ - %%insn_0040b371) > 6
        %error "LONG_0040B371"
    %endif
    times 6 - ($ - %%insn_0040b371) db 0
    %%insn_0040b377:
    mov ax,[ebp+0x14] ; 0040B377 668B4514
    %if ($ - %%insn_0040b377) > 4
        %error "LONG_0040B377"
    %endif
    times 4 - ($ - %%insn_0040b377) db 0
    %%insn_0040b37b:
    mov [ebp-0x3c],ax ; 0040B37B 668945C4
    %if ($ - %%insn_0040b37b) > 4
        %error "LONG_0040B37B"
    %endif
    times 4 - ($ - %%insn_0040b37b) db 0
    %%insn_0040b37f:
    mov dword [ebp-0x48],0x0 ; 0040B37F C745B800000000
    %if ($ - %%insn_0040b37f) > 7
        %error "LONG_0040B37F"
    %endif
    times 7 - ($ - %%insn_0040b37f) db 0
    %%insn_0040b386:
    mov ecx,[ebp+0xc] ; 0040B386 8B4D0C
    %if ($ - %%insn_0040b386) > 3
        %error "LONG_0040B386"
    %endif
    times 3 - ($ - %%insn_0040b386) db 0
    %%insn_0040b389:
    mov [ebp-0x4],ecx ; 0040B389 894DFC
    %if ($ - %%insn_0040b389) > 3
        %error "LONG_0040B389"
    %endif
    times 3 - ($ - %%insn_0040b389) db 0
    %%insn_0040b38c:
    mov edx,[ebp+0x8] ; 0040B38C 8B5508
    %if ($ - %%insn_0040b38c) > 3
        %error "LONG_0040B38C"
    %endif
    times 3 - ($ - %%insn_0040b38c) db 0
    %%insn_0040b38f:
    mov al,[edx] ; 0040B38F 8A02
    %if ($ - %%insn_0040b38f) > 2
        %error "LONG_0040B38F"
    %endif
    times 2 - ($ - %%insn_0040b38f) db 0
    %%insn_0040b391:
    mov [ebp-0x44],al ; 0040B391 8845BC
    %if ($ - %%insn_0040b391) > 3
        %error "LONG_0040B391"
    %endif
    times 3 - ($ - %%insn_0040b391) db 0
    %%insn_0040b394:
    mov ecx,[ebp+0x8] ; 0040B394 8B4D08
    %if ($ - %%insn_0040b394) > 3
        %error "LONG_0040B394"
    %endif
    times 3 - ($ - %%insn_0040b394) db 0
    %%insn_0040b397:
    add ecx,0x1 ; 0040B397 83C101
    %if ($ - %%insn_0040b397) > 3
        %error "LONG_0040B397"
    %endif
    times 3 - ($ - %%insn_0040b397) db 0
    %%insn_0040b39a:
    mov [ebp+0x8],ecx ; 0040B39A 894D08
    %if ($ - %%insn_0040b39a) > 3
        %error "LONG_0040B39A"
    %endif
    times 3 - ($ - %%insn_0040b39a) db 0
    %%insn_0040b39d:
    mov edx,[ebp-0x44] ; 0040B39D 8B55BC
    %if ($ - %%insn_0040b39d) > 3
        %error "LONG_0040B39D"
    %endif
    times 3 - ($ - %%insn_0040b39d) db 0
    %%insn_0040b3a0:
    and edx,0xff ; 0040B3A0 81E2FF000000
    %if ($ - %%insn_0040b3a0) > 6
        %error "LONG_0040B3A0"
    %endif
    times 6 - ($ - %%insn_0040b3a0) db 0
    %%insn_0040b3a6:
    cmp edx,0x60 ; 0040B3A6 83FA60
    %if ($ - %%insn_0040b3a6) > 3
        %error "LONG_0040B3A6"
    %endif
    times 3 - ($ - %%insn_0040b3a6) db 0
    %%insn_0040b3a9:
    jnl short 0x40b3c4 ; 0040B3A9 7D19
    %if ($ - %%insn_0040b3a9) > 2
        %error "LONG_0040B3A9"
    %endif
    times 2 - ($ - %%insn_0040b3a9) db 0
    %%insn_0040b3ab:
    mov eax,[ebp-0x44] ; 0040B3AB 8B45BC
    %if ($ - %%insn_0040b3ab) > 3
        %error "LONG_0040B3AB"
    %endif
    times 3 - ($ - %%insn_0040b3ab) db 0
    %%insn_0040b3ae:
    and eax,0xff ; 0040B3AE 25FF000000
    %if ($ - %%insn_0040b3ae) > 5
        %error "LONG_0040B3AE"
    %endif
    times 5 - ($ - %%insn_0040b3ae) db 0
    db 0x66, 0x8B, 0x0C, 0x45, 0x88, 0xA0, 0x41, 0x00 ; 0040B3B3 668B0C4588A04100 | mov cx,[eax*2+0x41a088] | encoding preserved
    %%insn_0040b3bb:
    mov [ebp-0x1c],cx ; 0040B3BB 66894DE4
    %if ($ - %%insn_0040b3bb) > 4
        %error "LONG_0040B3BB"
    %endif
    times 4 - ($ - %%insn_0040b3bb) db 0
    %%insn_0040b3bf:
    jmp 0x40bc13 ; 0040B3BF E94F080000
    %if ($ - %%insn_0040b3bf) > 5
        %error "LONG_0040B3BF"
    %endif
    times 5 - ($ - %%insn_0040b3bf) db 0
    %%insn_0040b3c4:
    mov edx,[ebp-0x44] ; 0040B3C4 8B55BC
    %if ($ - %%insn_0040b3c4) > 3
        %error "LONG_0040B3C4"
    %endif
    times 3 - ($ - %%insn_0040b3c4) db 0
    %%insn_0040b3c7:
    and edx,0xff ; 0040B3C7 81E2FF000000
    %if ($ - %%insn_0040b3c7) > 6
        %error "LONG_0040B3C7"
    %endif
    times 6 - ($ - %%insn_0040b3c7) db 0
    %%insn_0040b3cd:
    cmp edx,0x60 ; 0040B3CD 83FA60
    %if ($ - %%insn_0040b3cd) > 3
        %error "LONG_0040B3CD"
    %endif
    times 3 - ($ - %%insn_0040b3cd) db 0
    %%insn_0040b3d0:
    jnz 0x40b6be ; 0040B3D0 0F85E8020000
    %if ($ - %%insn_0040b3d0) > 6
        %error "LONG_0040B3D0"
    %endif
    times 6 - ($ - %%insn_0040b3d0) db 0
    %%insn_0040b3d6:
    mov eax,[ebp-0x30] ; 0040B3D6 8B45D0
    %if ($ - %%insn_0040b3d6) > 3
        %error "LONG_0040B3D6"
    %endif
    times 3 - ($ - %%insn_0040b3d6) db 0
    %%insn_0040b3d9:
    and eax,0xffff ; 0040B3D9 25FFFF0000
    %if ($ - %%insn_0040b3d9) > 5
        %error "LONG_0040B3D9"
    %endif
    times 5 - ($ - %%insn_0040b3d9) db 0
    %%insn_0040b3de:
    mov ecx,[0x41bd70] ; 0040B3DE 8B0D70BD4100
    %if ($ - %%insn_0040b3de) > 6
        %error "LONG_0040B3DE"
    %endif
    times 6 - ($ - %%insn_0040b3de) db 0
    %%insn_0040b3e4:
    lea edx,[ecx+eax*4] ; 0040B3E4 8D1481
    %if ($ - %%insn_0040b3e4) > 3
        %error "LONG_0040B3E4"
    %endif
    times 3 - ($ - %%insn_0040b3e4) db 0
    %%insn_0040b3e7:
    add edx,[ebp+0x18] ; 0040B3E7 035518
    %if ($ - %%insn_0040b3e7) > 3
        %error "LONG_0040B3E7"
    %endif
    times 3 - ($ - %%insn_0040b3e7) db 0
    %%insn_0040b3ea:
    mov [ebp-0x54],edx ; 0040B3EA 8955AC
    %if ($ - %%insn_0040b3ea) > 3
        %error "LONG_0040B3EA"
    %endif
    times 3 - ($ - %%insn_0040b3ea) db 0
    %%insn_0040b3ed:
    mov eax,[ebp-0x54] ; 0040B3ED 8B45AC
    %if ($ - %%insn_0040b3ed) > 3
        %error "LONG_0040B3ED"
    %endif
    times 3 - ($ - %%insn_0040b3ed) db 0
    %%insn_0040b3f0:
    cmp eax,[0x42135c] ; 0040B3F0 3B055C134200
    %if ($ - %%insn_0040b3f0) > 6
        %error "LONG_0040B3F0"
    %endif
    times 6 - ($ - %%insn_0040b3f0) db 0
    %%insn_0040b3f6:
    jnl short 0x40b401 ; 0040B3F6 7D09
    %if ($ - %%insn_0040b3f6) > 2
        %error "LONG_0040B3F6"
    %endif
    times 2 - ($ - %%insn_0040b3f6) db 0
    %%insn_0040b3f8:
    mov ecx,[ebp-0x54] ; 0040B3F8 8B4DAC
    %if ($ - %%insn_0040b3f8) > 3
        %error "LONG_0040B3F8"
    %endif
    times 3 - ($ - %%insn_0040b3f8) db 0
    %%insn_0040b3fb:
    mov [0x42135c],ecx ; 0040B3FB 890D5C134200
    %if ($ - %%insn_0040b3fb) > 6
        %error "LONG_0040B3FB"
    %endif
    times 6 - ($ - %%insn_0040b3fb) db 0
    %%insn_0040b401:
    mov edx,[ebp-0x54] ; 0040B401 8B55AC
    %if ($ - %%insn_0040b401) > 3
        %error "LONG_0040B401"
    %endif
    times 3 - ($ - %%insn_0040b401) db 0
    %%insn_0040b404:
    add edx,0x4 ; 0040B404 83C204
    %if ($ - %%insn_0040b404) > 3
        %error "LONG_0040B404"
    %endif
    times 3 - ($ - %%insn_0040b404) db 0
    %%insn_0040b407:
    mov [ebp-0x54],edx ; 0040B407 8955AC
    %if ($ - %%insn_0040b407) > 3
        %error "LONG_0040B407"
    %endif
    times 3 - ($ - %%insn_0040b407) db 0
    %%insn_0040b40a:
    mov eax,[ebp-0x54] ; 0040B40A 8B45AC
    %if ($ - %%insn_0040b40a) > 3
        %error "LONG_0040B40A"
    %endif
    times 3 - ($ - %%insn_0040b40a) db 0
    %%insn_0040b40d:
    cmp eax,[0x421360] ; 0040B40D 3B0560134200
    %if ($ - %%insn_0040b40d) > 6
        %error "LONG_0040B40D"
    %endif
    times 6 - ($ - %%insn_0040b40d) db 0
    %%insn_0040b413:
    jng short 0x40b41e ; 0040B413 7E09
    %if ($ - %%insn_0040b413) > 2
        %error "LONG_0040B413"
    %endif
    times 2 - ($ - %%insn_0040b413) db 0
    %%insn_0040b415:
    mov ecx,[ebp-0x54] ; 0040B415 8B4DAC
    %if ($ - %%insn_0040b415) > 3
        %error "LONG_0040B415"
    %endif
    times 3 - ($ - %%insn_0040b415) db 0
    %%insn_0040b418:
    mov [0x421360],ecx ; 0040B418 890D60134200
    %if ($ - %%insn_0040b418) > 6
        %error "LONG_0040B418"
    %endif
    times 6 - ($ - %%insn_0040b418) db 0
    %%insn_0040b41e:
    mov edx,[ebp-0x3c] ; 0040B41E 8B55C4
    %if ($ - %%insn_0040b41e) > 3
        %error "LONG_0040B41E"
    %endif
    times 3 - ($ - %%insn_0040b41e) db 0
    %%insn_0040b421:
    and edx,0xffff ; 0040B421 81E2FFFF0000
    %if ($ - %%insn_0040b421) > 6
        %error "LONG_0040B421"
    %endif
    times 6 - ($ - %%insn_0040b421) db 0
    %%insn_0040b427:
    cmp edx,[0x421354] ; 0040B427 3B1554134200
    %if ($ - %%insn_0040b427) > 6
        %error "LONG_0040B427"
    %endif
    times 6 - ($ - %%insn_0040b427) db 0
    %%insn_0040b42d:
    jnl short 0x40b43c ; 0040B42D 7D0D
    %if ($ - %%insn_0040b42d) > 2
        %error "LONG_0040B42D"
    %endif
    times 2 - ($ - %%insn_0040b42d) db 0
    %%insn_0040b42f:
    mov eax,[ebp-0x3c] ; 0040B42F 8B45C4
    %if ($ - %%insn_0040b42f) > 3
        %error "LONG_0040B42F"
    %endif
    times 3 - ($ - %%insn_0040b42f) db 0
    %%insn_0040b432:
    and eax,0xffff ; 0040B432 25FFFF0000
    %if ($ - %%insn_0040b432) > 5
        %error "LONG_0040B432"
    %endif
    times 5 - ($ - %%insn_0040b432) db 0
    %%insn_0040b437:
    mov [0x421354],eax ; 0040B437 A354134200
    %if ($ - %%insn_0040b437) > 5
        %error "LONG_0040B437"
    %endif
    times 5 - ($ - %%insn_0040b437) db 0
    %%insn_0040b43c:
    mov ecx,[ebp-0x3c] ; 0040B43C 8B4DC4
    %if ($ - %%insn_0040b43c) > 3
        %error "LONG_0040B43C"
    %endif
    times 3 - ($ - %%insn_0040b43c) db 0
    %%insn_0040b43f:
    and ecx,0xffff ; 0040B43F 81E1FFFF0000
    %if ($ - %%insn_0040b43f) > 6
        %error "LONG_0040B43F"
    %endif
    times 6 - ($ - %%insn_0040b43f) db 0
    %%insn_0040b445:
    add ecx,0x4 ; 0040B445 83C104
    %if ($ - %%insn_0040b445) > 3
        %error "LONG_0040B445"
    %endif
    times 3 - ($ - %%insn_0040b445) db 0
    %%insn_0040b448:
    cmp ecx,[0x421358] ; 0040B448 3B0D58134200
    %if ($ - %%insn_0040b448) > 6
        %error "LONG_0040B448"
    %endif
    times 6 - ($ - %%insn_0040b448) db 0
    %%insn_0040b44e:
    jng short 0x40b462 ; 0040B44E 7E12
    %if ($ - %%insn_0040b44e) > 2
        %error "LONG_0040B44E"
    %endif
    times 2 - ($ - %%insn_0040b44e) db 0
    %%insn_0040b450:
    mov edx,[ebp-0x3c] ; 0040B450 8B55C4
    %if ($ - %%insn_0040b450) > 3
        %error "LONG_0040B450"
    %endif
    times 3 - ($ - %%insn_0040b450) db 0
    %%insn_0040b453:
    and edx,0xffff ; 0040B453 81E2FFFF0000
    %if ($ - %%insn_0040b453) > 6
        %error "LONG_0040B453"
    %endif
    times 6 - ($ - %%insn_0040b453) db 0
    %%insn_0040b459:
    add edx,0x4 ; 0040B459 83C204
    %if ($ - %%insn_0040b459) > 3
        %error "LONG_0040B459"
    %endif
    times 3 - ($ - %%insn_0040b459) db 0
    %%insn_0040b45c:
    mov [0x421358],edx ; 0040B45C 891558134200
    %if ($ - %%insn_0040b45c) > 6
        %error "LONG_0040B45C"
    %endif
    times 6 - ($ - %%insn_0040b45c) db 0
    %%insn_0040b462:
    mov eax,[ebp-0x48] ; 0040B462 8B45B8
    %if ($ - %%insn_0040b462) > 3
        %error "LONG_0040B462"
    %endif
    times 3 - ($ - %%insn_0040b462) db 0
    %%insn_0040b465:
    mov ecx,[0x420e40] ; 0040B465 8B0D400E4200
    %if ($ - %%insn_0040b465) > 6
        %error "LONG_0040B465"
    %endif
    times 6 - ($ - %%insn_0040b465) db 0
    %%insn_0040b46b:
    lea edx,[ecx+eax*4] ; 0040B46B 8D1481
    %if ($ - %%insn_0040b46b) > 3
        %error "LONG_0040B46B"
    %endif
    times 3 - ($ - %%insn_0040b46b) db 0
    %%insn_0040b46e:
    mov [ebp-0x54],edx ; 0040B46E 8955AC
    %if ($ - %%insn_0040b46e) > 3
        %error "LONG_0040B46E"
    %endif
    times 3 - ($ - %%insn_0040b46e) db 0
    %%insn_0040b471:
    mov word [ebp-0x14],0x0 ; 0040B471 66C745EC0000
    %if ($ - %%insn_0040b471) > 6
        %error "LONG_0040B471"
    %endif
    times 6 - ($ - %%insn_0040b471) db 0
    %%insn_0040b477:
    jmp short 0x40b485 ; 0040B477 EB0C
    %if ($ - %%insn_0040b477) > 2
        %error "LONG_0040B477"
    %endif
    times 2 - ($ - %%insn_0040b477) db 0
    %%insn_0040b479:
    mov ax,[ebp-0x14] ; 0040B479 668B45EC
    %if ($ - %%insn_0040b479) > 4
        %error "LONG_0040B479"
    %endif
    times 4 - ($ - %%insn_0040b479) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 0040B47D 66050100 | add ax,0x1 | encoding preserved
    %%insn_0040b481:
    mov [ebp-0x14],ax ; 0040B481 668945EC
    %if ($ - %%insn_0040b481) > 4
        %error "LONG_0040B481"
    %endif
    times 4 - ($ - %%insn_0040b481) db 0
    %%insn_0040b485:
    mov ecx,[ebp-0x14] ; 0040B485 8B4DEC
    %if ($ - %%insn_0040b485) > 3
        %error "LONG_0040B485"
    %endif
    times 3 - ($ - %%insn_0040b485) db 0
    %%insn_0040b488:
    and ecx,0xffff ; 0040B488 81E1FFFF0000
    %if ($ - %%insn_0040b488) > 6
        %error "LONG_0040B488"
    %endif
    times 6 - ($ - %%insn_0040b488) db 0
    %%insn_0040b48e:
    cmp ecx,0x4 ; 0040B48E 83F904
    %if ($ - %%insn_0040b48e) > 3
        %error "LONG_0040B48E"
    %endif
    times 3 - ($ - %%insn_0040b48e) db 0
    %%insn_0040b491:
    jnl 0x40b6a4 ; 0040B491 0F8D0D020000
    %if ($ - %%insn_0040b491) > 6
        %error "LONG_0040B491"
    %endif
    times 6 - ($ - %%insn_0040b491) db 0
    db 0x33, 0xD2 ; 0040B497 33D2 | xor edx,edx | encoding preserved
    %%insn_0040b499:
    mov dx,[0x4212d8] ; 0040B499 668B15D8124200
    %if ($ - %%insn_0040b499) > 7
        %error "LONG_0040B499"
    %endif
    times 7 - ($ - %%insn_0040b499) db 0
    %%insn_0040b4a0:
    and edx,0x80 ; 0040B4A0 81E280000000
    %if ($ - %%insn_0040b4a0) > 6
        %error "LONG_0040B4A0"
    %endif
    times 6 - ($ - %%insn_0040b4a0) db 0
    %%insn_0040b4a6:
    test edx,edx ; 0040B4A6 85D2
    %if ($ - %%insn_0040b4a6) > 2
        %error "LONG_0040B4A6"
    %endif
    times 2 - ($ - %%insn_0040b4a6) db 0
    %%insn_0040b4a8:
    jz 0x40b61f ; 0040B4A8 0F8471010000
    %if ($ - %%insn_0040b4a8) > 6
        %error "LONG_0040B4A8"
    %endif
    times 6 - ($ - %%insn_0040b4a8) db 0
    %%insn_0040b4ae:
    mov eax,[0x4212d0] ; 0040B4AE A1D0124200
    %if ($ - %%insn_0040b4ae) > 5
        %error "LONG_0040B4AE"
    %endif
    times 5 - ($ - %%insn_0040b4ae) db 0
    %%insn_0040b4b3:
    add eax,[ebp-0x54] ; 0040B4B3 0345AC
    %if ($ - %%insn_0040b4b3) > 3
        %error "LONG_0040B4B3"
    %endif
    times 3 - ($ - %%insn_0040b4b3) db 0
    db 0x33, 0xC9 ; 0040B4B6 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040b4b8:
    mov cl,[eax] ; 0040B4B8 8A08
    %if ($ - %%insn_0040b4b8) > 2
        %error "LONG_0040B4B8"
    %endif
    times 2 - ($ - %%insn_0040b4b8) db 0
    %%insn_0040b4ba:
    cmp ecx,0xff ; 0040B4BA 81F9FF000000
    %if ($ - %%insn_0040b4ba) > 6
        %error "LONG_0040B4BA"
    %endif
    times 6 - ($ - %%insn_0040b4ba) db 0
    %%insn_0040b4c0:
    jz short 0x40b4fa ; 0040B4C0 7438
    %if ($ - %%insn_0040b4c0) > 2
        %error "LONG_0040B4C0"
    %endif
    times 2 - ($ - %%insn_0040b4c0) db 0
    %%insn_0040b4c2:
    mov edx,[ebp+0x8] ; 0040B4C2 8B5508
    %if ($ - %%insn_0040b4c2) > 3
        %error "LONG_0040B4C2"
    %endif
    times 3 - ($ - %%insn_0040b4c2) db 0
    %%insn_0040b4c5:
    mov al,[edx] ; 0040B4C5 8A02
    %if ($ - %%insn_0040b4c5) > 2
        %error "LONG_0040B4C5"
    %endif
    times 2 - ($ - %%insn_0040b4c5) db 0
    %%insn_0040b4c7:
    mov [ebp-0x58],al ; 0040B4C7 8845A8
    %if ($ - %%insn_0040b4c7) > 3
        %error "LONG_0040B4C7"
    %endif
    times 3 - ($ - %%insn_0040b4c7) db 0
    %%insn_0040b4ca:
    mov ecx,[ebp-0x58] ; 0040B4CA 8B4DA8
    %if ($ - %%insn_0040b4ca) > 3
        %error "LONG_0040B4CA"
    %endif
    times 3 - ($ - %%insn_0040b4ca) db 0
    %%insn_0040b4cd:
    and ecx,0xff ; 0040B4CD 81E1FF000000
    %if ($ - %%insn_0040b4cd) > 6
        %error "LONG_0040B4CD"
    %endif
    times 6 - ($ - %%insn_0040b4cd) db 0
    %%insn_0040b4d3:
    cmp ecx,0xff ; 0040B4D3 81F9FF000000
    %if ($ - %%insn_0040b4d3) > 6
        %error "LONG_0040B4D3"
    %endif
    times 6 - ($ - %%insn_0040b4d3) db 0
    %%insn_0040b4d9:
    jnz short 0x40b4ef ; 0040B4D9 7514
    %if ($ - %%insn_0040b4d9) > 2
        %error "LONG_0040B4D9"
    %endif
    times 2 - ($ - %%insn_0040b4d9) db 0
    %%insn_0040b4db:
    mov edx,[ebp+0xc] ; 0040B4DB 8B550C
    %if ($ - %%insn_0040b4db) > 3
        %error "LONG_0040B4DB"
    %endif
    times 3 - ($ - %%insn_0040b4db) db 0
    %%insn_0040b4de:
    add edx,[ebp-0x54] ; 0040B4DE 0355AC
    %if ($ - %%insn_0040b4de) > 3
        %error "LONG_0040B4DE"
    %endif
    times 3 - ($ - %%insn_0040b4de) db 0
    %%insn_0040b4e1:
    mov eax,[0x4212d0] ; 0040B4E1 A1D0124200
    %if ($ - %%insn_0040b4e1) > 5
        %error "LONG_0040B4E1"
    %endif
    times 5 - ($ - %%insn_0040b4e1) db 0
    %%insn_0040b4e6:
    add eax,[ebp-0x54] ; 0040B4E6 0345AC
    %if ($ - %%insn_0040b4e6) > 3
        %error "LONG_0040B4E6"
    %endif
    times 3 - ($ - %%insn_0040b4e6) db 0
    %%insn_0040b4e9:
    mov cl,[eax] ; 0040B4E9 8A08
    %if ($ - %%insn_0040b4e9) > 2
        %error "LONG_0040B4E9"
    %endif
    times 2 - ($ - %%insn_0040b4e9) db 0
    %%insn_0040b4eb:
    mov [edx],cl ; 0040B4EB 880A
    %if ($ - %%insn_0040b4eb) > 2
        %error "LONG_0040B4EB"
    %endif
    times 2 - ($ - %%insn_0040b4eb) db 0
    %%insn_0040b4ed:
    jmp short 0x40b4fa ; 0040B4ED EB0B
    %if ($ - %%insn_0040b4ed) > 2
        %error "LONG_0040B4ED"
    %endif
    times 2 - ($ - %%insn_0040b4ed) db 0
    %%insn_0040b4ef:
    mov edx,[ebp+0xc] ; 0040B4EF 8B550C
    %if ($ - %%insn_0040b4ef) > 3
        %error "LONG_0040B4EF"
    %endif
    times 3 - ($ - %%insn_0040b4ef) db 0
    %%insn_0040b4f2:
    add edx,[ebp-0x54] ; 0040B4F2 0355AC
    %if ($ - %%insn_0040b4f2) > 3
        %error "LONG_0040B4F2"
    %endif
    times 3 - ($ - %%insn_0040b4f2) db 0
    %%insn_0040b4f5:
    mov al,[ebp-0x58] ; 0040B4F5 8A45A8
    %if ($ - %%insn_0040b4f5) > 3
        %error "LONG_0040B4F5"
    %endif
    times 3 - ($ - %%insn_0040b4f5) db 0
    %%insn_0040b4f8:
    mov [edx],al ; 0040B4F8 8802
    %if ($ - %%insn_0040b4f8) > 2
        %error "LONG_0040B4F8"
    %endif
    times 2 - ($ - %%insn_0040b4f8) db 0
    %%insn_0040b4fa:
    mov ecx,[ebp-0x54] ; 0040B4FA 8B4DAC
    %if ($ - %%insn_0040b4fa) > 3
        %error "LONG_0040B4FA"
    %endif
    times 3 - ($ - %%insn_0040b4fa) db 0
    %%insn_0040b4fd:
    add ecx,0x1 ; 0040B4FD 83C101
    %if ($ - %%insn_0040b4fd) > 3
        %error "LONG_0040B4FD"
    %endif
    times 3 - ($ - %%insn_0040b4fd) db 0
    %%insn_0040b500:
    mov [ebp-0x54],ecx ; 0040B500 894DAC
    %if ($ - %%insn_0040b500) > 3
        %error "LONG_0040B500"
    %endif
    times 3 - ($ - %%insn_0040b500) db 0
    %%insn_0040b503:
    mov edx,[ebp+0x8] ; 0040B503 8B5508
    %if ($ - %%insn_0040b503) > 3
        %error "LONG_0040B503"
    %endif
    times 3 - ($ - %%insn_0040b503) db 0
    %%insn_0040b506:
    add edx,0x1 ; 0040B506 83C201
    %if ($ - %%insn_0040b506) > 3
        %error "LONG_0040B506"
    %endif
    times 3 - ($ - %%insn_0040b506) db 0
    %%insn_0040b509:
    mov [ebp+0x8],edx ; 0040B509 895508
    %if ($ - %%insn_0040b509) > 3
        %error "LONG_0040B509"
    %endif
    times 3 - ($ - %%insn_0040b509) db 0
    %%insn_0040b50c:
    mov eax,[0x4212d0] ; 0040B50C A1D0124200
    %if ($ - %%insn_0040b50c) > 5
        %error "LONG_0040B50C"
    %endif
    times 5 - ($ - %%insn_0040b50c) db 0
    %%insn_0040b511:
    add eax,[ebp-0x54] ; 0040B511 0345AC
    %if ($ - %%insn_0040b511) > 3
        %error "LONG_0040B511"
    %endif
    times 3 - ($ - %%insn_0040b511) db 0
    db 0x33, 0xC9 ; 0040B514 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040b516:
    mov cl,[eax] ; 0040B516 8A08
    %if ($ - %%insn_0040b516) > 2
        %error "LONG_0040B516"
    %endif
    times 2 - ($ - %%insn_0040b516) db 0
    %%insn_0040b518:
    cmp ecx,0xff ; 0040B518 81F9FF000000
    %if ($ - %%insn_0040b518) > 6
        %error "LONG_0040B518"
    %endif
    times 6 - ($ - %%insn_0040b518) db 0
    %%insn_0040b51e:
    jz short 0x40b558 ; 0040B51E 7438
    %if ($ - %%insn_0040b51e) > 2
        %error "LONG_0040B51E"
    %endif
    times 2 - ($ - %%insn_0040b51e) db 0
    %%insn_0040b520:
    mov edx,[ebp+0x8] ; 0040B520 8B5508
    %if ($ - %%insn_0040b520) > 3
        %error "LONG_0040B520"
    %endif
    times 3 - ($ - %%insn_0040b520) db 0
    %%insn_0040b523:
    mov al,[edx] ; 0040B523 8A02
    %if ($ - %%insn_0040b523) > 2
        %error "LONG_0040B523"
    %endif
    times 2 - ($ - %%insn_0040b523) db 0
    %%insn_0040b525:
    mov [ebp-0x58],al ; 0040B525 8845A8
    %if ($ - %%insn_0040b525) > 3
        %error "LONG_0040B525"
    %endif
    times 3 - ($ - %%insn_0040b525) db 0
    %%insn_0040b528:
    mov ecx,[ebp-0x58] ; 0040B528 8B4DA8
    %if ($ - %%insn_0040b528) > 3
        %error "LONG_0040B528"
    %endif
    times 3 - ($ - %%insn_0040b528) db 0
    %%insn_0040b52b:
    and ecx,0xff ; 0040B52B 81E1FF000000
    %if ($ - %%insn_0040b52b) > 6
        %error "LONG_0040B52B"
    %endif
    times 6 - ($ - %%insn_0040b52b) db 0
    %%insn_0040b531:
    cmp ecx,0xff ; 0040B531 81F9FF000000
    %if ($ - %%insn_0040b531) > 6
        %error "LONG_0040B531"
    %endif
    times 6 - ($ - %%insn_0040b531) db 0
    %%insn_0040b537:
    jnz short 0x40b54d ; 0040B537 7514
    %if ($ - %%insn_0040b537) > 2
        %error "LONG_0040B537"
    %endif
    times 2 - ($ - %%insn_0040b537) db 0
    %%insn_0040b539:
    mov edx,[ebp+0xc] ; 0040B539 8B550C
    %if ($ - %%insn_0040b539) > 3
        %error "LONG_0040B539"
    %endif
    times 3 - ($ - %%insn_0040b539) db 0
    %%insn_0040b53c:
    add edx,[ebp-0x54] ; 0040B53C 0355AC
    %if ($ - %%insn_0040b53c) > 3
        %error "LONG_0040B53C"
    %endif
    times 3 - ($ - %%insn_0040b53c) db 0
    %%insn_0040b53f:
    mov eax,[0x4212d0] ; 0040B53F A1D0124200
    %if ($ - %%insn_0040b53f) > 5
        %error "LONG_0040B53F"
    %endif
    times 5 - ($ - %%insn_0040b53f) db 0
    %%insn_0040b544:
    add eax,[ebp-0x54] ; 0040B544 0345AC
    %if ($ - %%insn_0040b544) > 3
        %error "LONG_0040B544"
    %endif
    times 3 - ($ - %%insn_0040b544) db 0
    %%insn_0040b547:
    mov cl,[eax] ; 0040B547 8A08
    %if ($ - %%insn_0040b547) > 2
        %error "LONG_0040B547"
    %endif
    times 2 - ($ - %%insn_0040b547) db 0
    %%insn_0040b549:
    mov [edx],cl ; 0040B549 880A
    %if ($ - %%insn_0040b549) > 2
        %error "LONG_0040B549"
    %endif
    times 2 - ($ - %%insn_0040b549) db 0
    %%insn_0040b54b:
    jmp short 0x40b558 ; 0040B54B EB0B
    %if ($ - %%insn_0040b54b) > 2
        %error "LONG_0040B54B"
    %endif
    times 2 - ($ - %%insn_0040b54b) db 0
    %%insn_0040b54d:
    mov edx,[ebp+0xc] ; 0040B54D 8B550C
    %if ($ - %%insn_0040b54d) > 3
        %error "LONG_0040B54D"
    %endif
    times 3 - ($ - %%insn_0040b54d) db 0
    %%insn_0040b550:
    add edx,[ebp-0x54] ; 0040B550 0355AC
    %if ($ - %%insn_0040b550) > 3
        %error "LONG_0040B550"
    %endif
    times 3 - ($ - %%insn_0040b550) db 0
    %%insn_0040b553:
    mov al,[ebp-0x58] ; 0040B553 8A45A8
    %if ($ - %%insn_0040b553) > 3
        %error "LONG_0040B553"
    %endif
    times 3 - ($ - %%insn_0040b553) db 0
    %%insn_0040b556:
    mov [edx],al ; 0040B556 8802
    %if ($ - %%insn_0040b556) > 2
        %error "LONG_0040B556"
    %endif
    times 2 - ($ - %%insn_0040b556) db 0
    %%insn_0040b558:
    mov ecx,[ebp-0x54] ; 0040B558 8B4DAC
    %if ($ - %%insn_0040b558) > 3
        %error "LONG_0040B558"
    %endif
    times 3 - ($ - %%insn_0040b558) db 0
    %%insn_0040b55b:
    add ecx,0x1 ; 0040B55B 83C101
    %if ($ - %%insn_0040b55b) > 3
        %error "LONG_0040B55B"
    %endif
    times 3 - ($ - %%insn_0040b55b) db 0
    %%insn_0040b55e:
    mov [ebp-0x54],ecx ; 0040B55E 894DAC
    %if ($ - %%insn_0040b55e) > 3
        %error "LONG_0040B55E"
    %endif
    times 3 - ($ - %%insn_0040b55e) db 0
    %%insn_0040b561:
    mov edx,[ebp+0x8] ; 0040B561 8B5508
    %if ($ - %%insn_0040b561) > 3
        %error "LONG_0040B561"
    %endif
    times 3 - ($ - %%insn_0040b561) db 0
    %%insn_0040b564:
    add edx,0x1 ; 0040B564 83C201
    %if ($ - %%insn_0040b564) > 3
        %error "LONG_0040B564"
    %endif
    times 3 - ($ - %%insn_0040b564) db 0
    %%insn_0040b567:
    mov [ebp+0x8],edx ; 0040B567 895508
    %if ($ - %%insn_0040b567) > 3
        %error "LONG_0040B567"
    %endif
    times 3 - ($ - %%insn_0040b567) db 0
    %%insn_0040b56a:
    mov eax,[0x4212d0] ; 0040B56A A1D0124200
    %if ($ - %%insn_0040b56a) > 5
        %error "LONG_0040B56A"
    %endif
    times 5 - ($ - %%insn_0040b56a) db 0
    %%insn_0040b56f:
    add eax,[ebp-0x54] ; 0040B56F 0345AC
    %if ($ - %%insn_0040b56f) > 3
        %error "LONG_0040B56F"
    %endif
    times 3 - ($ - %%insn_0040b56f) db 0
    db 0x33, 0xC9 ; 0040B572 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040b574:
    mov cl,[eax] ; 0040B574 8A08
    %if ($ - %%insn_0040b574) > 2
        %error "LONG_0040B574"
    %endif
    times 2 - ($ - %%insn_0040b574) db 0
    %%insn_0040b576:
    cmp ecx,0xff ; 0040B576 81F9FF000000
    %if ($ - %%insn_0040b576) > 6
        %error "LONG_0040B576"
    %endif
    times 6 - ($ - %%insn_0040b576) db 0
    %%insn_0040b57c:
    jz short 0x40b5b6 ; 0040B57C 7438
    %if ($ - %%insn_0040b57c) > 2
        %error "LONG_0040B57C"
    %endif
    times 2 - ($ - %%insn_0040b57c) db 0
    %%insn_0040b57e:
    mov edx,[ebp+0x8] ; 0040B57E 8B5508
    %if ($ - %%insn_0040b57e) > 3
        %error "LONG_0040B57E"
    %endif
    times 3 - ($ - %%insn_0040b57e) db 0
    %%insn_0040b581:
    mov al,[edx] ; 0040B581 8A02
    %if ($ - %%insn_0040b581) > 2
        %error "LONG_0040B581"
    %endif
    times 2 - ($ - %%insn_0040b581) db 0
    %%insn_0040b583:
    mov [ebp-0x58],al ; 0040B583 8845A8
    %if ($ - %%insn_0040b583) > 3
        %error "LONG_0040B583"
    %endif
    times 3 - ($ - %%insn_0040b583) db 0
    %%insn_0040b586:
    mov ecx,[ebp-0x58] ; 0040B586 8B4DA8
    %if ($ - %%insn_0040b586) > 3
        %error "LONG_0040B586"
    %endif
    times 3 - ($ - %%insn_0040b586) db 0
    %%insn_0040b589:
    and ecx,0xff ; 0040B589 81E1FF000000
    %if ($ - %%insn_0040b589) > 6
        %error "LONG_0040B589"
    %endif
    times 6 - ($ - %%insn_0040b589) db 0
    %%insn_0040b58f:
    cmp ecx,0xff ; 0040B58F 81F9FF000000
    %if ($ - %%insn_0040b58f) > 6
        %error "LONG_0040B58F"
    %endif
    times 6 - ($ - %%insn_0040b58f) db 0
    %%insn_0040b595:
    jnz short 0x40b5ab ; 0040B595 7514
    %if ($ - %%insn_0040b595) > 2
        %error "LONG_0040B595"
    %endif
    times 2 - ($ - %%insn_0040b595) db 0
    %%insn_0040b597:
    mov edx,[ebp+0xc] ; 0040B597 8B550C
    %if ($ - %%insn_0040b597) > 3
        %error "LONG_0040B597"
    %endif
    times 3 - ($ - %%insn_0040b597) db 0
    %%insn_0040b59a:
    add edx,[ebp-0x54] ; 0040B59A 0355AC
    %if ($ - %%insn_0040b59a) > 3
        %error "LONG_0040B59A"
    %endif
    times 3 - ($ - %%insn_0040b59a) db 0
    %%insn_0040b59d:
    mov eax,[0x4212d0] ; 0040B59D A1D0124200
    %if ($ - %%insn_0040b59d) > 5
        %error "LONG_0040B59D"
    %endif
    times 5 - ($ - %%insn_0040b59d) db 0
    %%insn_0040b5a2:
    add eax,[ebp-0x54] ; 0040B5A2 0345AC
    %if ($ - %%insn_0040b5a2) > 3
        %error "LONG_0040B5A2"
    %endif
    times 3 - ($ - %%insn_0040b5a2) db 0
    %%insn_0040b5a5:
    mov cl,[eax] ; 0040B5A5 8A08
    %if ($ - %%insn_0040b5a5) > 2
        %error "LONG_0040B5A5"
    %endif
    times 2 - ($ - %%insn_0040b5a5) db 0
    %%insn_0040b5a7:
    mov [edx],cl ; 0040B5A7 880A
    %if ($ - %%insn_0040b5a7) > 2
        %error "LONG_0040B5A7"
    %endif
    times 2 - ($ - %%insn_0040b5a7) db 0
    %%insn_0040b5a9:
    jmp short 0x40b5b6 ; 0040B5A9 EB0B
    %if ($ - %%insn_0040b5a9) > 2
        %error "LONG_0040B5A9"
    %endif
    times 2 - ($ - %%insn_0040b5a9) db 0
    %%insn_0040b5ab:
    mov edx,[ebp+0xc] ; 0040B5AB 8B550C
    %if ($ - %%insn_0040b5ab) > 3
        %error "LONG_0040B5AB"
    %endif
    times 3 - ($ - %%insn_0040b5ab) db 0
    %%insn_0040b5ae:
    add edx,[ebp-0x54] ; 0040B5AE 0355AC
    %if ($ - %%insn_0040b5ae) > 3
        %error "LONG_0040B5AE"
    %endif
    times 3 - ($ - %%insn_0040b5ae) db 0
    %%insn_0040b5b1:
    mov al,[ebp-0x58] ; 0040B5B1 8A45A8
    %if ($ - %%insn_0040b5b1) > 3
        %error "LONG_0040B5B1"
    %endif
    times 3 - ($ - %%insn_0040b5b1) db 0
    %%insn_0040b5b4:
    mov [edx],al ; 0040B5B4 8802
    %if ($ - %%insn_0040b5b4) > 2
        %error "LONG_0040B5B4"
    %endif
    times 2 - ($ - %%insn_0040b5b4) db 0
    %%insn_0040b5b6:
    mov ecx,[ebp-0x54] ; 0040B5B6 8B4DAC
    %if ($ - %%insn_0040b5b6) > 3
        %error "LONG_0040B5B6"
    %endif
    times 3 - ($ - %%insn_0040b5b6) db 0
    %%insn_0040b5b9:
    add ecx,0x1 ; 0040B5B9 83C101
    %if ($ - %%insn_0040b5b9) > 3
        %error "LONG_0040B5B9"
    %endif
    times 3 - ($ - %%insn_0040b5b9) db 0
    %%insn_0040b5bc:
    mov [ebp-0x54],ecx ; 0040B5BC 894DAC
    %if ($ - %%insn_0040b5bc) > 3
        %error "LONG_0040B5BC"
    %endif
    times 3 - ($ - %%insn_0040b5bc) db 0
    %%insn_0040b5bf:
    mov edx,[ebp+0x8] ; 0040B5BF 8B5508
    %if ($ - %%insn_0040b5bf) > 3
        %error "LONG_0040B5BF"
    %endif
    times 3 - ($ - %%insn_0040b5bf) db 0
    %%insn_0040b5c2:
    add edx,0x1 ; 0040B5C2 83C201
    %if ($ - %%insn_0040b5c2) > 3
        %error "LONG_0040B5C2"
    %endif
    times 3 - ($ - %%insn_0040b5c2) db 0
    %%insn_0040b5c5:
    mov [ebp+0x8],edx ; 0040B5C5 895508
    %if ($ - %%insn_0040b5c5) > 3
        %error "LONG_0040B5C5"
    %endif
    times 3 - ($ - %%insn_0040b5c5) db 0
    %%insn_0040b5c8:
    mov eax,[0x4212d0] ; 0040B5C8 A1D0124200
    %if ($ - %%insn_0040b5c8) > 5
        %error "LONG_0040B5C8"
    %endif
    times 5 - ($ - %%insn_0040b5c8) db 0
    %%insn_0040b5cd:
    add eax,[ebp-0x54] ; 0040B5CD 0345AC
    %if ($ - %%insn_0040b5cd) > 3
        %error "LONG_0040B5CD"
    %endif
    times 3 - ($ - %%insn_0040b5cd) db 0
    db 0x33, 0xC9 ; 0040B5D0 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040b5d2:
    mov cl,[eax] ; 0040B5D2 8A08
    %if ($ - %%insn_0040b5d2) > 2
        %error "LONG_0040B5D2"
    %endif
    times 2 - ($ - %%insn_0040b5d2) db 0
    %%insn_0040b5d4:
    cmp ecx,0xff ; 0040B5D4 81F9FF000000
    %if ($ - %%insn_0040b5d4) > 6
        %error "LONG_0040B5D4"
    %endif
    times 6 - ($ - %%insn_0040b5d4) db 0
    %%insn_0040b5da:
    jz short 0x40b614 ; 0040B5DA 7438
    %if ($ - %%insn_0040b5da) > 2
        %error "LONG_0040B5DA"
    %endif
    times 2 - ($ - %%insn_0040b5da) db 0
    %%insn_0040b5dc:
    mov edx,[ebp+0x8] ; 0040B5DC 8B5508
    %if ($ - %%insn_0040b5dc) > 3
        %error "LONG_0040B5DC"
    %endif
    times 3 - ($ - %%insn_0040b5dc) db 0
    %%insn_0040b5df:
    mov al,[edx] ; 0040B5DF 8A02
    %if ($ - %%insn_0040b5df) > 2
        %error "LONG_0040B5DF"
    %endif
    times 2 - ($ - %%insn_0040b5df) db 0
    %%insn_0040b5e1:
    mov [ebp-0x58],al ; 0040B5E1 8845A8
    %if ($ - %%insn_0040b5e1) > 3
        %error "LONG_0040B5E1"
    %endif
    times 3 - ($ - %%insn_0040b5e1) db 0
    %%insn_0040b5e4:
    mov ecx,[ebp-0x58] ; 0040B5E4 8B4DA8
    %if ($ - %%insn_0040b5e4) > 3
        %error "LONG_0040B5E4"
    %endif
    times 3 - ($ - %%insn_0040b5e4) db 0
    %%insn_0040b5e7:
    and ecx,0xff ; 0040B5E7 81E1FF000000
    %if ($ - %%insn_0040b5e7) > 6
        %error "LONG_0040B5E7"
    %endif
    times 6 - ($ - %%insn_0040b5e7) db 0
    %%insn_0040b5ed:
    cmp ecx,0xff ; 0040B5ED 81F9FF000000
    %if ($ - %%insn_0040b5ed) > 6
        %error "LONG_0040B5ED"
    %endif
    times 6 - ($ - %%insn_0040b5ed) db 0
    %%insn_0040b5f3:
    jnz short 0x40b609 ; 0040B5F3 7514
    %if ($ - %%insn_0040b5f3) > 2
        %error "LONG_0040B5F3"
    %endif
    times 2 - ($ - %%insn_0040b5f3) db 0
    %%insn_0040b5f5:
    mov edx,[ebp+0xc] ; 0040B5F5 8B550C
    %if ($ - %%insn_0040b5f5) > 3
        %error "LONG_0040B5F5"
    %endif
    times 3 - ($ - %%insn_0040b5f5) db 0
    %%insn_0040b5f8:
    add edx,[ebp-0x54] ; 0040B5F8 0355AC
    %if ($ - %%insn_0040b5f8) > 3
        %error "LONG_0040B5F8"
    %endif
    times 3 - ($ - %%insn_0040b5f8) db 0
    %%insn_0040b5fb:
    mov eax,[0x4212d0] ; 0040B5FB A1D0124200
    %if ($ - %%insn_0040b5fb) > 5
        %error "LONG_0040B5FB"
    %endif
    times 5 - ($ - %%insn_0040b5fb) db 0
    %%insn_0040b600:
    add eax,[ebp-0x54] ; 0040B600 0345AC
    %if ($ - %%insn_0040b600) > 3
        %error "LONG_0040B600"
    %endif
    times 3 - ($ - %%insn_0040b600) db 0
    %%insn_0040b603:
    mov cl,[eax] ; 0040B603 8A08
    %if ($ - %%insn_0040b603) > 2
        %error "LONG_0040B603"
    %endif
    times 2 - ($ - %%insn_0040b603) db 0
    %%insn_0040b605:
    mov [edx],cl ; 0040B605 880A
    %if ($ - %%insn_0040b605) > 2
        %error "LONG_0040B605"
    %endif
    times 2 - ($ - %%insn_0040b605) db 0
    %%insn_0040b607:
    jmp short 0x40b614 ; 0040B607 EB0B
    %if ($ - %%insn_0040b607) > 2
        %error "LONG_0040B607"
    %endif
    times 2 - ($ - %%insn_0040b607) db 0
    %%insn_0040b609:
    mov edx,[ebp+0xc] ; 0040B609 8B550C
    %if ($ - %%insn_0040b609) > 3
        %error "LONG_0040B609"
    %endif
    times 3 - ($ - %%insn_0040b609) db 0
    %%insn_0040b60c:
    add edx,[ebp-0x54] ; 0040B60C 0355AC
    %if ($ - %%insn_0040b60c) > 3
        %error "LONG_0040B60C"
    %endif
    times 3 - ($ - %%insn_0040b60c) db 0
    %%insn_0040b60f:
    mov al,[ebp-0x58] ; 0040B60F 8A45A8
    %if ($ - %%insn_0040b60f) > 3
        %error "LONG_0040B60F"
    %endif
    times 3 - ($ - %%insn_0040b60f) db 0
    %%insn_0040b612:
    mov [edx],al ; 0040B612 8802
    %if ($ - %%insn_0040b612) > 2
        %error "LONG_0040B612"
    %endif
    times 2 - ($ - %%insn_0040b612) db 0
    %%insn_0040b614:
    mov ecx,[ebp+0x8] ; 0040B614 8B4D08
    %if ($ - %%insn_0040b614) > 3
        %error "LONG_0040B614"
    %endif
    times 3 - ($ - %%insn_0040b614) db 0
    %%insn_0040b617:
    add ecx,0x1 ; 0040B617 83C101
    %if ($ - %%insn_0040b617) > 3
        %error "LONG_0040B617"
    %endif
    times 3 - ($ - %%insn_0040b617) db 0
    %%insn_0040b61a:
    mov [ebp+0x8],ecx ; 0040B61A 894D08
    %if ($ - %%insn_0040b61a) > 3
        %error "LONG_0040B61A"
    %endif
    times 3 - ($ - %%insn_0040b61a) db 0
    %%insn_0040b61d:
    jmp short 0x40b692 ; 0040B61D EB73
    %if ($ - %%insn_0040b61d) > 2
        %error "LONG_0040B61D"
    %endif
    times 2 - ($ - %%insn_0040b61d) db 0
    %%insn_0040b61f:
    mov edx,[ebp+0xc] ; 0040B61F 8B550C
    %if ($ - %%insn_0040b61f) > 3
        %error "LONG_0040B61F"
    %endif
    times 3 - ($ - %%insn_0040b61f) db 0
    %%insn_0040b622:
    add edx,[ebp-0x54] ; 0040B622 0355AC
    %if ($ - %%insn_0040b622) > 3
        %error "LONG_0040B622"
    %endif
    times 3 - ($ - %%insn_0040b622) db 0
    %%insn_0040b625:
    mov eax,[ebp+0x8] ; 0040B625 8B4508
    %if ($ - %%insn_0040b625) > 3
        %error "LONG_0040B625"
    %endif
    times 3 - ($ - %%insn_0040b625) db 0
    %%insn_0040b628:
    mov cl,[eax] ; 0040B628 8A08
    %if ($ - %%insn_0040b628) > 2
        %error "LONG_0040B628"
    %endif
    times 2 - ($ - %%insn_0040b628) db 0
    %%insn_0040b62a:
    mov [edx],cl ; 0040B62A 880A
    %if ($ - %%insn_0040b62a) > 2
        %error "LONG_0040B62A"
    %endif
    times 2 - ($ - %%insn_0040b62a) db 0
    %%insn_0040b62c:
    mov edx,[ebp-0x54] ; 0040B62C 8B55AC
    %if ($ - %%insn_0040b62c) > 3
        %error "LONG_0040B62C"
    %endif
    times 3 - ($ - %%insn_0040b62c) db 0
    %%insn_0040b62f:
    add edx,0x1 ; 0040B62F 83C201
    %if ($ - %%insn_0040b62f) > 3
        %error "LONG_0040B62F"
    %endif
    times 3 - ($ - %%insn_0040b62f) db 0
    %%insn_0040b632:
    mov [ebp-0x54],edx ; 0040B632 8955AC
    %if ($ - %%insn_0040b632) > 3
        %error "LONG_0040B632"
    %endif
    times 3 - ($ - %%insn_0040b632) db 0
    %%insn_0040b635:
    mov eax,[ebp+0x8] ; 0040B635 8B4508
    %if ($ - %%insn_0040b635) > 3
        %error "LONG_0040B635"
    %endif
    times 3 - ($ - %%insn_0040b635) db 0
    %%insn_0040b638:
    add eax,0x1 ; 0040B638 83C001
    %if ($ - %%insn_0040b638) > 3
        %error "LONG_0040B638"
    %endif
    times 3 - ($ - %%insn_0040b638) db 0
    %%insn_0040b63b:
    mov [ebp+0x8],eax ; 0040B63B 894508
    %if ($ - %%insn_0040b63b) > 3
        %error "LONG_0040B63B"
    %endif
    times 3 - ($ - %%insn_0040b63b) db 0
    %%insn_0040b63e:
    mov ecx,[ebp+0xc] ; 0040B63E 8B4D0C
    %if ($ - %%insn_0040b63e) > 3
        %error "LONG_0040B63E"
    %endif
    times 3 - ($ - %%insn_0040b63e) db 0
    %%insn_0040b641:
    add ecx,[ebp-0x54] ; 0040B641 034DAC
    %if ($ - %%insn_0040b641) > 3
        %error "LONG_0040B641"
    %endif
    times 3 - ($ - %%insn_0040b641) db 0
    %%insn_0040b644:
    mov edx,[ebp+0x8] ; 0040B644 8B5508
    %if ($ - %%insn_0040b644) > 3
        %error "LONG_0040B644"
    %endif
    times 3 - ($ - %%insn_0040b644) db 0
    %%insn_0040b647:
    mov al,[edx] ; 0040B647 8A02
    %if ($ - %%insn_0040b647) > 2
        %error "LONG_0040B647"
    %endif
    times 2 - ($ - %%insn_0040b647) db 0
    %%insn_0040b649:
    mov [ecx],al ; 0040B649 8801
    %if ($ - %%insn_0040b649) > 2
        %error "LONG_0040B649"
    %endif
    times 2 - ($ - %%insn_0040b649) db 0
    %%insn_0040b64b:
    mov ecx,[ebp-0x54] ; 0040B64B 8B4DAC
    %if ($ - %%insn_0040b64b) > 3
        %error "LONG_0040B64B"
    %endif
    times 3 - ($ - %%insn_0040b64b) db 0
    %%insn_0040b64e:
    add ecx,0x1 ; 0040B64E 83C101
    %if ($ - %%insn_0040b64e) > 3
        %error "LONG_0040B64E"
    %endif
    times 3 - ($ - %%insn_0040b64e) db 0
    %%insn_0040b651:
    mov [ebp-0x54],ecx ; 0040B651 894DAC
    %if ($ - %%insn_0040b651) > 3
        %error "LONG_0040B651"
    %endif
    times 3 - ($ - %%insn_0040b651) db 0
    %%insn_0040b654:
    mov edx,[ebp+0x8] ; 0040B654 8B5508
    %if ($ - %%insn_0040b654) > 3
        %error "LONG_0040B654"
    %endif
    times 3 - ($ - %%insn_0040b654) db 0
    %%insn_0040b657:
    add edx,0x1 ; 0040B657 83C201
    %if ($ - %%insn_0040b657) > 3
        %error "LONG_0040B657"
    %endif
    times 3 - ($ - %%insn_0040b657) db 0
    %%insn_0040b65a:
    mov [ebp+0x8],edx ; 0040B65A 895508
    %if ($ - %%insn_0040b65a) > 3
        %error "LONG_0040B65A"
    %endif
    times 3 - ($ - %%insn_0040b65a) db 0
    %%insn_0040b65d:
    mov eax,[ebp+0xc] ; 0040B65D 8B450C
    %if ($ - %%insn_0040b65d) > 3
        %error "LONG_0040B65D"
    %endif
    times 3 - ($ - %%insn_0040b65d) db 0
    %%insn_0040b660:
    add eax,[ebp-0x54] ; 0040B660 0345AC
    %if ($ - %%insn_0040b660) > 3
        %error "LONG_0040B660"
    %endif
    times 3 - ($ - %%insn_0040b660) db 0
    %%insn_0040b663:
    mov ecx,[ebp+0x8] ; 0040B663 8B4D08
    %if ($ - %%insn_0040b663) > 3
        %error "LONG_0040B663"
    %endif
    times 3 - ($ - %%insn_0040b663) db 0
    %%insn_0040b666:
    mov dl,[ecx] ; 0040B666 8A11
    %if ($ - %%insn_0040b666) > 2
        %error "LONG_0040B666"
    %endif
    times 2 - ($ - %%insn_0040b666) db 0
    %%insn_0040b668:
    mov [eax],dl ; 0040B668 8810
    %if ($ - %%insn_0040b668) > 2
        %error "LONG_0040B668"
    %endif
    times 2 - ($ - %%insn_0040b668) db 0
    %%insn_0040b66a:
    mov eax,[ebp-0x54] ; 0040B66A 8B45AC
    %if ($ - %%insn_0040b66a) > 3
        %error "LONG_0040B66A"
    %endif
    times 3 - ($ - %%insn_0040b66a) db 0
    %%insn_0040b66d:
    add eax,0x1 ; 0040B66D 83C001
    %if ($ - %%insn_0040b66d) > 3
        %error "LONG_0040B66D"
    %endif
    times 3 - ($ - %%insn_0040b66d) db 0
    %%insn_0040b670:
    mov [ebp-0x54],eax ; 0040B670 8945AC
    %if ($ - %%insn_0040b670) > 3
        %error "LONG_0040B670"
    %endif
    times 3 - ($ - %%insn_0040b670) db 0
    %%insn_0040b673:
    mov ecx,[ebp+0x8] ; 0040B673 8B4D08
    %if ($ - %%insn_0040b673) > 3
        %error "LONG_0040B673"
    %endif
    times 3 - ($ - %%insn_0040b673) db 0
    %%insn_0040b676:
    add ecx,0x1 ; 0040B676 83C101
    %if ($ - %%insn_0040b676) > 3
        %error "LONG_0040B676"
    %endif
    times 3 - ($ - %%insn_0040b676) db 0
    %%insn_0040b679:
    mov [ebp+0x8],ecx ; 0040B679 894D08
    %if ($ - %%insn_0040b679) > 3
        %error "LONG_0040B679"
    %endif
    times 3 - ($ - %%insn_0040b679) db 0
    %%insn_0040b67c:
    mov edx,[ebp+0xc] ; 0040B67C 8B550C
    %if ($ - %%insn_0040b67c) > 3
        %error "LONG_0040B67C"
    %endif
    times 3 - ($ - %%insn_0040b67c) db 0
    %%insn_0040b67f:
    add edx,[ebp-0x54] ; 0040B67F 0355AC
    %if ($ - %%insn_0040b67f) > 3
        %error "LONG_0040B67F"
    %endif
    times 3 - ($ - %%insn_0040b67f) db 0
    %%insn_0040b682:
    mov eax,[ebp+0x8] ; 0040B682 8B4508
    %if ($ - %%insn_0040b682) > 3
        %error "LONG_0040B682"
    %endif
    times 3 - ($ - %%insn_0040b682) db 0
    %%insn_0040b685:
    mov cl,[eax] ; 0040B685 8A08
    %if ($ - %%insn_0040b685) > 2
        %error "LONG_0040B685"
    %endif
    times 2 - ($ - %%insn_0040b685) db 0
    %%insn_0040b687:
    mov [edx],cl ; 0040B687 880A
    %if ($ - %%insn_0040b687) > 2
        %error "LONG_0040B687"
    %endif
    times 2 - ($ - %%insn_0040b687) db 0
    %%insn_0040b689:
    mov edx,[ebp+0x8] ; 0040B689 8B5508
    %if ($ - %%insn_0040b689) > 3
        %error "LONG_0040B689"
    %endif
    times 3 - ($ - %%insn_0040b689) db 0
    %%insn_0040b68c:
    add edx,0x1 ; 0040B68C 83C201
    %if ($ - %%insn_0040b68c) > 3
        %error "LONG_0040B68C"
    %endif
    times 3 - ($ - %%insn_0040b68c) db 0
    %%insn_0040b68f:
    mov [ebp+0x8],edx ; 0040B68F 895508
    %if ($ - %%insn_0040b68f) > 3
        %error "LONG_0040B68F"
    %endif
    times 3 - ($ - %%insn_0040b68f) db 0
    %%insn_0040b692:
    mov eax,[ebp+0x10] ; 0040B692 8B4510
    %if ($ - %%insn_0040b692) > 3
        %error "LONG_0040B692"
    %endif
    times 3 - ($ - %%insn_0040b692) db 0
    %%insn_0040b695:
    mov ecx,[ebp-0x54] ; 0040B695 8B4DAC
    %if ($ - %%insn_0040b695) > 3
        %error "LONG_0040B695"
    %endif
    times 3 - ($ - %%insn_0040b695) db 0
    %%insn_0040b698:
    lea edx,[ecx+eax-0x3] ; 0040B698 8D5401FD
    %if ($ - %%insn_0040b698) > 4
        %error "LONG_0040B698"
    %endif
    times 4 - ($ - %%insn_0040b698) db 0
    %%insn_0040b69c:
    mov [ebp-0x54],edx ; 0040B69C 8955AC
    %if ($ - %%insn_0040b69c) > 3
        %error "LONG_0040B69C"
    %endif
    times 3 - ($ - %%insn_0040b69c) db 0
    %%insn_0040b69f:
    jmp 0x40b479 ; 0040B69F E9D5FDFFFF
    %if ($ - %%insn_0040b69f) > 5
        %error "LONG_0040B69F"
    %endif
    times 5 - ($ - %%insn_0040b69f) db 0
    %%insn_0040b6a4:
    mov eax,[ebp-0x48] ; 0040B6A4 8B45B8
    %if ($ - %%insn_0040b6a4) > 3
        %error "LONG_0040B6A4"
    %endif
    times 3 - ($ - %%insn_0040b6a4) db 0
    %%insn_0040b6a7:
    add eax,0x1 ; 0040B6A7 83C001
    %if ($ - %%insn_0040b6a7) > 3
        %error "LONG_0040B6A7"
    %endif
    times 3 - ($ - %%insn_0040b6a7) db 0
    %%insn_0040b6aa:
    mov [ebp-0x48],eax ; 0040B6AA 8945B8
    %if ($ - %%insn_0040b6aa) > 3
        %error "LONG_0040B6AA"
    %endif
    times 3 - ($ - %%insn_0040b6aa) db 0
    %%insn_0040b6ad:
    mov cx,[ebp-0x3c] ; 0040B6AD 668B4DC4
    %if ($ - %%insn_0040b6ad) > 4
        %error "LONG_0040B6AD"
    %endif
    times 4 - ($ - %%insn_0040b6ad) db 0
    %%insn_0040b6b1:
    add cx,0x4 ; 0040B6B1 6683C104
    %if ($ - %%insn_0040b6b1) > 4
        %error "LONG_0040B6B1"
    %endif
    times 4 - ($ - %%insn_0040b6b1) db 0
    %%insn_0040b6b5:
    mov [ebp-0x3c],cx ; 0040B6B5 66894DC4
    %if ($ - %%insn_0040b6b5) > 4
        %error "LONG_0040B6B5"
    %endif
    times 4 - ($ - %%insn_0040b6b5) db 0
    %%insn_0040b6b9:
    jmp 0x40bf6a ; 0040B6B9 E9AC080000
    %if ($ - %%insn_0040b6b9) > 5
        %error "LONG_0040B6B9"
    %endif
    times 5 - ($ - %%insn_0040b6b9) db 0
    %%insn_0040b6be:
    mov edx,[ebp-0x44] ; 0040B6BE 8B55BC
    %if ($ - %%insn_0040b6be) > 3
        %error "LONG_0040B6BE"
    %endif
    times 3 - ($ - %%insn_0040b6be) db 0
    %%insn_0040b6c1:
    and edx,0xff ; 0040B6C1 81E2FF000000
    %if ($ - %%insn_0040b6c1) > 6
        %error "LONG_0040B6C1"
    %endif
    times 6 - ($ - %%insn_0040b6c1) db 0
    %%insn_0040b6c7:
    cmp edx,0x61 ; 0040B6C7 83FA61
    %if ($ - %%insn_0040b6c7) > 3
        %error "LONG_0040B6C7"
    %endif
    times 3 - ($ - %%insn_0040b6c7) db 0
    %%insn_0040b6ca:
    jnz short 0x40b6fb ; 0040B6CA 752F
    %if ($ - %%insn_0040b6ca) > 2
        %error "LONG_0040B6CA"
    %endif
    times 2 - ($ - %%insn_0040b6ca) db 0
    %%insn_0040b6cc:
    mov ax,[ebp-0x30] ; 0040B6CC 668B45D0
    %if ($ - %%insn_0040b6cc) > 4
        %error "LONG_0040B6CC"
    %endif
    times 4 - ($ - %%insn_0040b6cc) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 0040B6D0 66050100 | add ax,0x1 | encoding preserved
    %%insn_0040b6d4:
    mov [ebp-0x30],ax ; 0040B6D4 668945D0
    %if ($ - %%insn_0040b6d4) > 4
        %error "LONG_0040B6D4"
    %endif
    times 4 - ($ - %%insn_0040b6d4) db 0
    %%insn_0040b6d8:
    mov cx,[ebp+0x14] ; 0040B6D8 668B4D14
    %if ($ - %%insn_0040b6d8) > 4
        %error "LONG_0040B6D8"
    %endif
    times 4 - ($ - %%insn_0040b6d8) db 0
    %%insn_0040b6dc:
    mov [ebp-0x3c],cx ; 0040B6DC 66894DC4
    %if ($ - %%insn_0040b6dc) > 4
        %error "LONG_0040B6DC"
    %endif
    times 4 - ($ - %%insn_0040b6dc) db 0
    %%insn_0040b6e0:
    mov edx,[ebp-0x30] ; 0040B6E0 8B55D0
    %if ($ - %%insn_0040b6e0) > 3
        %error "LONG_0040B6E0"
    %endif
    times 3 - ($ - %%insn_0040b6e0) db 0
    %%insn_0040b6e3:
    and edx,0xffff ; 0040B6E3 81E2FFFF0000
    %if ($ - %%insn_0040b6e3) > 6
        %error "LONG_0040B6E3"
    %endif
    times 6 - ($ - %%insn_0040b6e3) db 0
    %%insn_0040b6e9:
    shl edx,byte 0x2 ; 0040B6E9 C1E202
    %if ($ - %%insn_0040b6e9) > 3
        %error "LONG_0040B6E9"
    %endif
    times 3 - ($ - %%insn_0040b6e9) db 0
    %%insn_0040b6ec:
    imul edx,[0x4212dc] ; 0040B6EC 0FAF15DC124200
    %if ($ - %%insn_0040b6ec) > 7
        %error "LONG_0040B6EC"
    %endif
    times 7 - ($ - %%insn_0040b6ec) db 0
    %%insn_0040b6f3:
    mov [ebp-0x48],edx ; 0040B6F3 8955B8
    %if ($ - %%insn_0040b6f3) > 3
        %error "LONG_0040B6F3"
    %endif
    times 3 - ($ - %%insn_0040b6f3) db 0
    %%insn_0040b6f6:
    jmp 0x40bf6a ; 0040B6F6 E96F080000
    %if ($ - %%insn_0040b6f6) > 5
        %error "LONG_0040B6F6"
    %endif
    times 5 - ($ - %%insn_0040b6f6) db 0
    %%insn_0040b6fb:
    mov eax,[ebp-0x44] ; 0040B6FB 8B45BC
    %if ($ - %%insn_0040b6fb) > 3
        %error "LONG_0040B6FB"
    %endif
    times 3 - ($ - %%insn_0040b6fb) db 0
    %%insn_0040b6fe:
    and eax,0xff ; 0040B6FE 25FF000000
    %if ($ - %%insn_0040b6fe) > 5
        %error "LONG_0040B6FE"
    %endif
    times 5 - ($ - %%insn_0040b6fe) db 0
    %%insn_0040b703:
    cmp eax,0x6c ; 0040B703 83F86C
    %if ($ - %%insn_0040b703) > 3
        %error "LONG_0040B703"
    %endif
    times 3 - ($ - %%insn_0040b703) db 0
    %%insn_0040b706:
    jnl short 0x40b73e ; 0040B706 7D36
    %if ($ - %%insn_0040b706) > 2
        %error "LONG_0040B706"
    %endif
    times 2 - ($ - %%insn_0040b706) db 0
    %%insn_0040b708:
    mov cl,[ebp-0x44] ; 0040B708 8A4DBC
    %if ($ - %%insn_0040b708) > 3
        %error "LONG_0040B708"
    %endif
    times 3 - ($ - %%insn_0040b708) db 0
    %%insn_0040b70b:
    sub cl,0x62 ; 0040B70B 80E962
    %if ($ - %%insn_0040b70b) > 3
        %error "LONG_0040B70B"
    %endif
    times 3 - ($ - %%insn_0040b70b) db 0
    %%insn_0040b70e:
    mov [ebp-0x44],cl ; 0040B70E 884DBC
    %if ($ - %%insn_0040b70e) > 3
        %error "LONG_0040B70E"
    %endif
    times 3 - ($ - %%insn_0040b70e) db 0
    %%insn_0040b711:
    mov edx,[ebp-0x44] ; 0040B711 8B55BC
    %if ($ - %%insn_0040b711) > 3
        %error "LONG_0040B711"
    %endif
    times 3 - ($ - %%insn_0040b711) db 0
    %%insn_0040b714:
    and edx,0xff ; 0040B714 81E2FF000000
    %if ($ - %%insn_0040b714) > 6
        %error "LONG_0040B714"
    %endif
    times 6 - ($ - %%insn_0040b714) db 0
    %%insn_0040b71a:
    mov eax,[ebp-0x48] ; 0040B71A 8B45B8
    %if ($ - %%insn_0040b71a) > 3
        %error "LONG_0040B71A"
    %endif
    times 3 - ($ - %%insn_0040b71a) db 0
    db 0x03, 0xC2 ; 0040B71D 03C2 | add eax,edx | encoding preserved
    %%insn_0040b71f:
    mov [ebp-0x48],eax ; 0040B71F 8945B8
    %if ($ - %%insn_0040b71f) > 3
        %error "LONG_0040B71F"
    %endif
    times 3 - ($ - %%insn_0040b71f) db 0
    %%insn_0040b722:
    mov ecx,[ebp-0x44] ; 0040B722 8B4DBC
    %if ($ - %%insn_0040b722) > 3
        %error "LONG_0040B722"
    %endif
    times 3 - ($ - %%insn_0040b722) db 0
    %%insn_0040b725:
    and ecx,0xff ; 0040B725 81E1FF000000
    %if ($ - %%insn_0040b725) > 6
        %error "LONG_0040B725"
    %endif
    times 6 - ($ - %%insn_0040b725) db 0
    %%insn_0040b72b:
    shl ecx,byte 0x2 ; 0040B72B C1E102
    %if ($ - %%insn_0040b72b) > 3
        %error "LONG_0040B72B"
    %endif
    times 3 - ($ - %%insn_0040b72b) db 0
    %%insn_0040b72e:
    mov dx,[ebp-0x3c] ; 0040B72E 668B55C4
    %if ($ - %%insn_0040b72e) > 4
        %error "LONG_0040B72E"
    %endif
    times 4 - ($ - %%insn_0040b72e) db 0
    db 0x66, 0x03, 0xD1 ; 0040B732 6603D1 | add dx,cx | encoding preserved
    %%insn_0040b735:
    mov [ebp-0x3c],dx ; 0040B735 668955C4
    %if ($ - %%insn_0040b735) > 4
        %error "LONG_0040B735"
    %endif
    times 4 - ($ - %%insn_0040b735) db 0
    %%insn_0040b739:
    jmp 0x40bf6a ; 0040B739 E92C080000
    %if ($ - %%insn_0040b739) > 5
        %error "LONG_0040B739"
    %endif
    times 5 - ($ - %%insn_0040b739) db 0
    %%insn_0040b73e:
    mov eax,[ebp-0x44] ; 0040B73E 8B45BC
    %if ($ - %%insn_0040b73e) > 3
        %error "LONG_0040B73E"
    %endif
    times 3 - ($ - %%insn_0040b73e) db 0
    %%insn_0040b741:
    and eax,0xff ; 0040B741 25FF000000
    %if ($ - %%insn_0040b741) > 5
        %error "LONG_0040B741"
    %endif
    times 5 - ($ - %%insn_0040b741) db 0
    %%insn_0040b746:
    cmp eax,0x76 ; 0040B746 83F876
    %if ($ - %%insn_0040b746) > 3
        %error "LONG_0040B746"
    %endif
    times 3 - ($ - %%insn_0040b746) db 0
    %%insn_0040b749:
    jnl 0x40b999 ; 0040B749 0F8D4A020000
    %if ($ - %%insn_0040b749) > 6
        %error "LONG_0040B749"
    %endif
    times 6 - ($ - %%insn_0040b749) db 0
    %%insn_0040b74f:
    mov cl,[ebp-0x44] ; 0040B74F 8A4DBC
    %if ($ - %%insn_0040b74f) > 3
        %error "LONG_0040B74F"
    %endif
    times 3 - ($ - %%insn_0040b74f) db 0
    %%insn_0040b752:
    sub cl,0x6b ; 0040B752 80E96B
    %if ($ - %%insn_0040b752) > 3
        %error "LONG_0040B752"
    %endif
    times 3 - ($ - %%insn_0040b752) db 0
    %%insn_0040b755:
    mov [ebp-0x44],cl ; 0040B755 884DBC
    %if ($ - %%insn_0040b755) > 3
        %error "LONG_0040B755"
    %endif
    times 3 - ($ - %%insn_0040b755) db 0
    %%insn_0040b758:
    mov edx,[ebp-0x30] ; 0040B758 8B55D0
    %if ($ - %%insn_0040b758) > 3
        %error "LONG_0040B758"
    %endif
    times 3 - ($ - %%insn_0040b758) db 0
    %%insn_0040b75b:
    and edx,0xffff ; 0040B75B 81E2FFFF0000
    %if ($ - %%insn_0040b75b) > 6
        %error "LONG_0040B75B"
    %endif
    times 6 - ($ - %%insn_0040b75b) db 0
    %%insn_0040b761:
    mov eax,[0x41bd70] ; 0040B761 A170BD4100
    %if ($ - %%insn_0040b761) > 5
        %error "LONG_0040B761"
    %endif
    times 5 - ($ - %%insn_0040b761) db 0
    %%insn_0040b766:
    lea ecx,[eax+edx*4] ; 0040B766 8D0C90
    %if ($ - %%insn_0040b766) > 3
        %error "LONG_0040B766"
    %endif
    times 3 - ($ - %%insn_0040b766) db 0
    %%insn_0040b769:
    add ecx,[ebp+0x18] ; 0040B769 034D18
    %if ($ - %%insn_0040b769) > 3
        %error "LONG_0040B769"
    %endif
    times 3 - ($ - %%insn_0040b769) db 0
    %%insn_0040b76c:
    mov [ebp-0x54],ecx ; 0040B76C 894DAC
    %if ($ - %%insn_0040b76c) > 3
        %error "LONG_0040B76C"
    %endif
    times 3 - ($ - %%insn_0040b76c) db 0
    %%insn_0040b76f:
    mov edx,[ebp-0x54] ; 0040B76F 8B55AC
    %if ($ - %%insn_0040b76f) > 3
        %error "LONG_0040B76F"
    %endif
    times 3 - ($ - %%insn_0040b76f) db 0
    %%insn_0040b772:
    cmp edx,[0x42135c] ; 0040B772 3B155C134200
    %if ($ - %%insn_0040b772) > 6
        %error "LONG_0040B772"
    %endif
    times 6 - ($ - %%insn_0040b772) db 0
    %%insn_0040b778:
    jnl short 0x40b782 ; 0040B778 7D08
    %if ($ - %%insn_0040b778) > 2
        %error "LONG_0040B778"
    %endif
    times 2 - ($ - %%insn_0040b778) db 0
    %%insn_0040b77a:
    mov eax,[ebp-0x54] ; 0040B77A 8B45AC
    %if ($ - %%insn_0040b77a) > 3
        %error "LONG_0040B77A"
    %endif
    times 3 - ($ - %%insn_0040b77a) db 0
    %%insn_0040b77d:
    mov [0x42135c],eax ; 0040B77D A35C134200
    %if ($ - %%insn_0040b77d) > 5
        %error "LONG_0040B77D"
    %endif
    times 5 - ($ - %%insn_0040b77d) db 0
    %%insn_0040b782:
    mov ecx,[ebp-0x54] ; 0040B782 8B4DAC
    %if ($ - %%insn_0040b782) > 3
        %error "LONG_0040B782"
    %endif
    times 3 - ($ - %%insn_0040b782) db 0
    %%insn_0040b785:
    add ecx,0x4 ; 0040B785 83C104
    %if ($ - %%insn_0040b785) > 3
        %error "LONG_0040B785"
    %endif
    times 3 - ($ - %%insn_0040b785) db 0
    %%insn_0040b788:
    mov [ebp-0x54],ecx ; 0040B788 894DAC
    %if ($ - %%insn_0040b788) > 3
        %error "LONG_0040B788"
    %endif
    times 3 - ($ - %%insn_0040b788) db 0
    %%insn_0040b78b:
    mov edx,[ebp-0x54] ; 0040B78B 8B55AC
    %if ($ - %%insn_0040b78b) > 3
        %error "LONG_0040B78B"
    %endif
    times 3 - ($ - %%insn_0040b78b) db 0
    %%insn_0040b78e:
    cmp edx,[0x421360] ; 0040B78E 3B1560134200
    %if ($ - %%insn_0040b78e) > 6
        %error "LONG_0040B78E"
    %endif
    times 6 - ($ - %%insn_0040b78e) db 0
    %%insn_0040b794:
    jng short 0x40b79e ; 0040B794 7E08
    %if ($ - %%insn_0040b794) > 2
        %error "LONG_0040B794"
    %endif
    times 2 - ($ - %%insn_0040b794) db 0
    %%insn_0040b796:
    mov eax,[ebp-0x54] ; 0040B796 8B45AC
    %if ($ - %%insn_0040b796) > 3
        %error "LONG_0040B796"
    %endif
    times 3 - ($ - %%insn_0040b796) db 0
    %%insn_0040b799:
    mov [0x421360],eax ; 0040B799 A360134200
    %if ($ - %%insn_0040b799) > 5
        %error "LONG_0040B799"
    %endif
    times 5 - ($ - %%insn_0040b799) db 0
    %%insn_0040b79e:
    mov ecx,[ebp-0x3c] ; 0040B79E 8B4DC4
    %if ($ - %%insn_0040b79e) > 3
        %error "LONG_0040B79E"
    %endif
    times 3 - ($ - %%insn_0040b79e) db 0
    %%insn_0040b7a1:
    and ecx,0xffff ; 0040B7A1 81E1FFFF0000
    %if ($ - %%insn_0040b7a1) > 6
        %error "LONG_0040B7A1"
    %endif
    times 6 - ($ - %%insn_0040b7a1) db 0
    %%insn_0040b7a7:
    cmp ecx,[0x421354] ; 0040B7A7 3B0D54134200
    %if ($ - %%insn_0040b7a7) > 6
        %error "LONG_0040B7A7"
    %endif
    times 6 - ($ - %%insn_0040b7a7) db 0
    %%insn_0040b7ad:
    jnl short 0x40b7be ; 0040B7AD 7D0F
    %if ($ - %%insn_0040b7ad) > 2
        %error "LONG_0040B7AD"
    %endif
    times 2 - ($ - %%insn_0040b7ad) db 0
    %%insn_0040b7af:
    mov edx,[ebp-0x3c] ; 0040B7AF 8B55C4
    %if ($ - %%insn_0040b7af) > 3
        %error "LONG_0040B7AF"
    %endif
    times 3 - ($ - %%insn_0040b7af) db 0
    %%insn_0040b7b2:
    and edx,0xffff ; 0040B7B2 81E2FFFF0000
    %if ($ - %%insn_0040b7b2) > 6
        %error "LONG_0040B7B2"
    %endif
    times 6 - ($ - %%insn_0040b7b2) db 0
    %%insn_0040b7b8:
    mov [0x421354],edx ; 0040B7B8 891554134200
    %if ($ - %%insn_0040b7b8) > 6
        %error "LONG_0040B7B8"
    %endif
    times 6 - ($ - %%insn_0040b7b8) db 0
    %%insn_0040b7be:
    mov eax,[ebp-0x44] ; 0040B7BE 8B45BC
    %if ($ - %%insn_0040b7be) > 3
        %error "LONG_0040B7BE"
    %endif
    times 3 - ($ - %%insn_0040b7be) db 0
    %%insn_0040b7c1:
    and eax,0xff ; 0040B7C1 25FF000000
    %if ($ - %%insn_0040b7c1) > 5
        %error "LONG_0040B7C1"
    %endif
    times 5 - ($ - %%insn_0040b7c1) db 0
    %%insn_0040b7c6:
    shl eax,byte 0x2 ; 0040B7C6 C1E002
    %if ($ - %%insn_0040b7c6) > 3
        %error "LONG_0040B7C6"
    %endif
    times 3 - ($ - %%insn_0040b7c6) db 0
    %%insn_0040b7c9:
    mov cx,[ebp-0x3c] ; 0040B7C9 668B4DC4
    %if ($ - %%insn_0040b7c9) > 4
        %error "LONG_0040B7C9"
    %endif
    times 4 - ($ - %%insn_0040b7c9) db 0
    db 0x66, 0x03, 0xC8 ; 0040B7CD 6603C8 | add cx,ax | encoding preserved
    %%insn_0040b7d0:
    mov [ebp-0x3c],cx ; 0040B7D0 66894DC4
    %if ($ - %%insn_0040b7d0) > 4
        %error "LONG_0040B7D0"
    %endif
    times 4 - ($ - %%insn_0040b7d0) db 0
    %%insn_0040b7d4:
    mov edx,[ebp-0x3c] ; 0040B7D4 8B55C4
    %if ($ - %%insn_0040b7d4) > 3
        %error "LONG_0040B7D4"
    %endif
    times 3 - ($ - %%insn_0040b7d4) db 0
    %%insn_0040b7d7:
    and edx,0xffff ; 0040B7D7 81E2FFFF0000
    %if ($ - %%insn_0040b7d7) > 6
        %error "LONG_0040B7D7"
    %endif
    times 6 - ($ - %%insn_0040b7d7) db 0
    %%insn_0040b7dd:
    cmp edx,[0x421358] ; 0040B7DD 3B1558134200
    %if ($ - %%insn_0040b7dd) > 6
        %error "LONG_0040B7DD"
    %endif
    times 6 - ($ - %%insn_0040b7dd) db 0
    %%insn_0040b7e3:
    jng short 0x40b7f2 ; 0040B7E3 7E0D
    %if ($ - %%insn_0040b7e3) > 2
        %error "LONG_0040B7E3"
    %endif
    times 2 - ($ - %%insn_0040b7e3) db 0
    %%insn_0040b7e5:
    mov eax,[ebp-0x3c] ; 0040B7E5 8B45C4
    %if ($ - %%insn_0040b7e5) > 3
        %error "LONG_0040B7E5"
    %endif
    times 3 - ($ - %%insn_0040b7e5) db 0
    %%insn_0040b7e8:
    and eax,0xffff ; 0040B7E8 25FFFF0000
    %if ($ - %%insn_0040b7e8) > 5
        %error "LONG_0040B7E8"
    %endif
    times 5 - ($ - %%insn_0040b7e8) db 0
    %%insn_0040b7ed:
    mov [0x421358],eax ; 0040B7ED A358134200
    %if ($ - %%insn_0040b7ed) > 5
        %error "LONG_0040B7ED"
    %endif
    times 5 - ($ - %%insn_0040b7ed) db 0
    %%insn_0040b7f2:
    mov ecx,[ebp+0x8] ; 0040B7F2 8B4D08
    %if ($ - %%insn_0040b7f2) > 3
        %error "LONG_0040B7F2"
    %endif
    times 3 - ($ - %%insn_0040b7f2) db 0
    %%insn_0040b7f5:
    mov dl,[ecx] ; 0040B7F5 8A11
    %if ($ - %%insn_0040b7f5) > 2
        %error "LONG_0040B7F5"
    %endif
    times 2 - ($ - %%insn_0040b7f5) db 0
    %%insn_0040b7f7:
    mov [ebp-0x4c],dl ; 0040B7F7 8855B4
    %if ($ - %%insn_0040b7f7) > 3
        %error "LONG_0040B7F7"
    %endif
    times 3 - ($ - %%insn_0040b7f7) db 0
    %%insn_0040b7fa:
    mov eax,[ebp+0x8] ; 0040B7FA 8B4508
    %if ($ - %%insn_0040b7fa) > 3
        %error "LONG_0040B7FA"
    %endif
    times 3 - ($ - %%insn_0040b7fa) db 0
    %%insn_0040b7fd:
    add eax,0x1 ; 0040B7FD 83C001
    %if ($ - %%insn_0040b7fd) > 3
        %error "LONG_0040B7FD"
    %endif
    times 3 - ($ - %%insn_0040b7fd) db 0
    %%insn_0040b800:
    mov [ebp+0x8],eax ; 0040B800 894508
    %if ($ - %%insn_0040b800) > 3
        %error "LONG_0040B800"
    %endif
    times 3 - ($ - %%insn_0040b800) db 0
    %%insn_0040b803:
    mov ecx,[ebp-0x48] ; 0040B803 8B4DB8
    %if ($ - %%insn_0040b803) > 3
        %error "LONG_0040B803"
    %endif
    times 3 - ($ - %%insn_0040b803) db 0
    %%insn_0040b806:
    mov [ebp-0x54],ecx ; 0040B806 894DAC
    %if ($ - %%insn_0040b806) > 3
        %error "LONG_0040B806"
    %endif
    times 3 - ($ - %%insn_0040b806) db 0
    %%insn_0040b809:
    mov edx,[ebp-0x4c] ; 0040B809 8B55B4
    %if ($ - %%insn_0040b809) > 3
        %error "LONG_0040B809"
    %endif
    times 3 - ($ - %%insn_0040b809) db 0
    %%insn_0040b80c:
    and edx,0xff ; 0040B80C 81E2FF000000
    %if ($ - %%insn_0040b80c) > 6
        %error "LONG_0040B80C"
    %endif
    times 6 - ($ - %%insn_0040b80c) db 0
    %%insn_0040b812:
    mov eax,[0x420e44] ; 0040B812 A1440E4200
    %if ($ - %%insn_0040b812) > 5
        %error "LONG_0040B812"
    %endif
    times 5 - ($ - %%insn_0040b812) db 0
    %%insn_0040b817:
    mov ecx,[eax+edx*4] ; 0040B817 8B0C90
    %if ($ - %%insn_0040b817) > 3
        %error "LONG_0040B817"
    %endif
    times 3 - ($ - %%insn_0040b817) db 0
    %%insn_0040b81a:
    mov [ebp-0xc],ecx ; 0040B81A 894DF4
    %if ($ - %%insn_0040b81a) > 3
        %error "LONG_0040B81A"
    %endif
    times 3 - ($ - %%insn_0040b81a) db 0
    db 0x33, 0xD2 ; 0040B81D 33D2 | xor edx,edx | encoding preserved
    %%insn_0040b81f:
    mov dx,[0x4212d8] ; 0040B81F 668B15D8124200
    %if ($ - %%insn_0040b81f) > 7
        %error "LONG_0040B81F"
    %endif
    times 7 - ($ - %%insn_0040b81f) db 0
    %%insn_0040b826:
    and edx,0x80 ; 0040B826 81E280000000
    %if ($ - %%insn_0040b826) > 6
        %error "LONG_0040B826"
    %endif
    times 6 - ($ - %%insn_0040b826) db 0
    %%insn_0040b82c:
    test edx,edx ; 0040B82C 85D2
    %if ($ - %%insn_0040b82c) > 2
        %error "LONG_0040B82C"
    %endif
    times 2 - ($ - %%insn_0040b82c) db 0
    %%insn_0040b82e:
    jz 0x40b921 ; 0040B82E 0F84ED000000
    %if ($ - %%insn_0040b82e) > 6
        %error "LONG_0040B82E"
    %endif
    times 6 - ($ - %%insn_0040b82e) db 0
    %%insn_0040b834:
    mov eax,[ebp-0x4] ; 0040B834 8B45FC
    %if ($ - %%insn_0040b834) > 3
        %error "LONG_0040B834"
    %endif
    times 3 - ($ - %%insn_0040b834) db 0
    %%insn_0040b837:
    mov [ebp-0x68],eax ; 0040B837 894598
    %if ($ - %%insn_0040b837) > 3
        %error "LONG_0040B837"
    %endif
    times 3 - ($ - %%insn_0040b837) db 0
    %%insn_0040b83a:
    mov dword [ebp-0x24],0x0 ; 0040B83A C745DC00000000
    %if ($ - %%insn_0040b83a) > 7
        %error "LONG_0040B83A"
    %endif
    times 7 - ($ - %%insn_0040b83a) db 0
    %%insn_0040b841:
    jmp short 0x40b84c ; 0040B841 EB09
    %if ($ - %%insn_0040b841) > 2
        %error "LONG_0040B841"
    %endif
    times 2 - ($ - %%insn_0040b841) db 0
    %%insn_0040b843:
    mov ecx,[ebp-0x24] ; 0040B843 8B4DDC
    %if ($ - %%insn_0040b843) > 3
        %error "LONG_0040B843"
    %endif
    times 3 - ($ - %%insn_0040b843) db 0
    %%insn_0040b846:
    add ecx,0x1 ; 0040B846 83C101
    %if ($ - %%insn_0040b846) > 3
        %error "LONG_0040B846"
    %endif
    times 3 - ($ - %%insn_0040b846) db 0
    %%insn_0040b849:
    mov [ebp-0x24],ecx ; 0040B849 894DDC
    %if ($ - %%insn_0040b849) > 3
        %error "LONG_0040B849"
    %endif
    times 3 - ($ - %%insn_0040b849) db 0
    %%insn_0040b84c:
    mov edx,[ebp-0x44] ; 0040B84C 8B55BC
    %if ($ - %%insn_0040b84c) > 3
        %error "LONG_0040B84C"
    %endif
    times 3 - ($ - %%insn_0040b84c) db 0
    %%insn_0040b84f:
    and edx,0xff ; 0040B84F 81E2FF000000
    %if ($ - %%insn_0040b84f) > 6
        %error "LONG_0040B84F"
    %endif
    times 6 - ($ - %%insn_0040b84f) db 0
    %%insn_0040b855:
    cmp [ebp-0x24],edx ; 0040B855 3955DC
    %if ($ - %%insn_0040b855) > 3
        %error "LONG_0040B855"
    %endif
    times 3 - ($ - %%insn_0040b855) db 0
    %%insn_0040b858:
    jnl 0x40b91f ; 0040B858 0F8DC1000000
    %if ($ - %%insn_0040b858) > 6
        %error "LONG_0040B858"
    %endif
    times 6 - ($ - %%insn_0040b858) db 0
    %%insn_0040b85e:
    mov eax,[ebp-0x48] ; 0040B85E 8B45B8
    %if ($ - %%insn_0040b85e) > 3
        %error "LONG_0040B85E"
    %endif
    times 3 - ($ - %%insn_0040b85e) db 0
    %%insn_0040b861:
    mov ecx,[0x420e40] ; 0040B861 8B0D400E4200
    %if ($ - %%insn_0040b861) > 6
        %error "LONG_0040B861"
    %endif
    times 6 - ($ - %%insn_0040b861) db 0
    %%insn_0040b867:
    lea edx,[ecx+eax*4] ; 0040B867 8D1481
    %if ($ - %%insn_0040b867) > 3
        %error "LONG_0040B867"
    %endif
    times 3 - ($ - %%insn_0040b867) db 0
    %%insn_0040b86a:
    mov [ebp-0x64],edx ; 0040B86A 89559C
    %if ($ - %%insn_0040b86a) > 3
        %error "LONG_0040B86A"
    %endif
    times 3 - ($ - %%insn_0040b86a) db 0
    %%insn_0040b86d:
    mov dword [ebp-0x60],0x0 ; 0040B86D C745A000000000
    %if ($ - %%insn_0040b86d) > 7
        %error "LONG_0040B86D"
    %endif
    times 7 - ($ - %%insn_0040b86d) db 0
    %%insn_0040b874:
    jmp short 0x40b87f ; 0040B874 EB09
    %if ($ - %%insn_0040b874) > 2
        %error "LONG_0040B874"
    %endif
    times 2 - ($ - %%insn_0040b874) db 0
    %%insn_0040b876:
    mov eax,[ebp-0x60] ; 0040B876 8B45A0
    %if ($ - %%insn_0040b876) > 3
        %error "LONG_0040B876"
    %endif
    times 3 - ($ - %%insn_0040b876) db 0
    %%insn_0040b879:
    add eax,0x1 ; 0040B879 83C001
    %if ($ - %%insn_0040b879) > 3
        %error "LONG_0040B879"
    %endif
    times 3 - ($ - %%insn_0040b879) db 0
    %%insn_0040b87c:
    mov [ebp-0x60],eax ; 0040B87C 8945A0
    %if ($ - %%insn_0040b87c) > 3
        %error "LONG_0040B87C"
    %endif
    times 3 - ($ - %%insn_0040b87c) db 0
    %%insn_0040b87f:
    cmp dword [ebp-0x60],0x4 ; 0040B87F 837DA004
    %if ($ - %%insn_0040b87f) > 4
        %error "LONG_0040B87F"
    %endif
    times 4 - ($ - %%insn_0040b87f) db 0
    %%insn_0040b883:
    jnl 0x40b911 ; 0040B883 0F8D88000000
    %if ($ - %%insn_0040b883) > 6
        %error "LONG_0040B883"
    %endif
    times 6 - ($ - %%insn_0040b883) db 0
    %%insn_0040b889:
    mov dword [ebp-0x5c],0x0 ; 0040B889 C745A400000000
    %if ($ - %%insn_0040b889) > 7
        %error "LONG_0040B889"
    %endif
    times 7 - ($ - %%insn_0040b889) db 0
    %%insn_0040b890:
    jmp short 0x40b89b ; 0040B890 EB09
    %if ($ - %%insn_0040b890) > 2
        %error "LONG_0040B890"
    %endif
    times 2 - ($ - %%insn_0040b890) db 0
    %%insn_0040b892:
    mov ecx,[ebp-0x5c] ; 0040B892 8B4DA4
    %if ($ - %%insn_0040b892) > 3
        %error "LONG_0040B892"
    %endif
    times 3 - ($ - %%insn_0040b892) db 0
    %%insn_0040b895:
    add ecx,0x1 ; 0040B895 83C101
    %if ($ - %%insn_0040b895) > 3
        %error "LONG_0040B895"
    %endif
    times 3 - ($ - %%insn_0040b895) db 0
    %%insn_0040b898:
    mov [ebp-0x5c],ecx ; 0040B898 894DA4
    %if ($ - %%insn_0040b898) > 3
        %error "LONG_0040B898"
    %endif
    times 3 - ($ - %%insn_0040b898) db 0
    %%insn_0040b89b:
    cmp dword [ebp-0x5c],0x4 ; 0040B89B 837DA404
    %if ($ - %%insn_0040b89b) > 4
        %error "LONG_0040B89B"
    %endif
    times 4 - ($ - %%insn_0040b89b) db 0
    %%insn_0040b89f:
    jnl short 0x40b903 ; 0040B89F 7D62
    %if ($ - %%insn_0040b89f) > 2
        %error "LONG_0040B89F"
    %endif
    times 2 - ($ - %%insn_0040b89f) db 0
    %%insn_0040b8a1:
    mov edx,[ebp-0x64] ; 0040B8A1 8B559C
    %if ($ - %%insn_0040b8a1) > 3
        %error "LONG_0040B8A1"
    %endif
    times 3 - ($ - %%insn_0040b8a1) db 0
    %%insn_0040b8a4:
    add edx,[ebp-0x5c] ; 0040B8A4 0355A4
    %if ($ - %%insn_0040b8a4) > 3
        %error "LONG_0040B8A4"
    %endif
    times 3 - ($ - %%insn_0040b8a4) db 0
    %%insn_0040b8a7:
    mov [ebp-0x70],edx ; 0040B8A7 895590
    %if ($ - %%insn_0040b8a7) > 3
        %error "LONG_0040B8A7"
    %endif
    times 3 - ($ - %%insn_0040b8a7) db 0
    %%insn_0040b8aa:
    mov ecx,[ebp-0x5c] ; 0040B8AA 8B4DA4
    %if ($ - %%insn_0040b8aa) > 3
        %error "LONG_0040B8AA"
    %endif
    times 3 - ($ - %%insn_0040b8aa) db 0
    %%insn_0040b8ad:
    shl ecx,byte 0x3 ; 0040B8AD C1E103
    %if ($ - %%insn_0040b8ad) > 3
        %error "LONG_0040B8AD"
    %endif
    times 3 - ($ - %%insn_0040b8ad) db 0
    %%insn_0040b8b0:
    mov eax,[ebp-0xc] ; 0040B8B0 8B45F4
    %if ($ - %%insn_0040b8b0) > 3
        %error "LONG_0040B8B0"
    %endif
    times 3 - ($ - %%insn_0040b8b0) db 0
    %%insn_0040b8b3:
    shr eax,cl ; 0040B8B3 D3E8
    %if ($ - %%insn_0040b8b3) > 2
        %error "LONG_0040B8B3"
    %endif
    times 2 - ($ - %%insn_0040b8b3) db 0
    %%insn_0040b8b5:
    and eax,0xff ; 0040B8B5 25FF000000
    %if ($ - %%insn_0040b8b5) > 5
        %error "LONG_0040B8B5"
    %endif
    times 5 - ($ - %%insn_0040b8b5) db 0
    %%insn_0040b8ba:
    mov [ebp-0x6c],al ; 0040B8BA 884594
    %if ($ - %%insn_0040b8ba) > 3
        %error "LONG_0040B8BA"
    %endif
    times 3 - ($ - %%insn_0040b8ba) db 0
    %%insn_0040b8bd:
    mov ecx,[0x4212d0] ; 0040B8BD 8B0DD0124200
    %if ($ - %%insn_0040b8bd) > 6
        %error "LONG_0040B8BD"
    %endif
    times 6 - ($ - %%insn_0040b8bd) db 0
    %%insn_0040b8c3:
    add ecx,[ebp-0x70] ; 0040B8C3 034D90
    %if ($ - %%insn_0040b8c3) > 3
        %error "LONG_0040B8C3"
    %endif
    times 3 - ($ - %%insn_0040b8c3) db 0
    db 0x33, 0xD2 ; 0040B8C6 33D2 | xor edx,edx | encoding preserved
    %%insn_0040b8c8:
    mov dl,[ecx] ; 0040B8C8 8A11
    %if ($ - %%insn_0040b8c8) > 2
        %error "LONG_0040B8C8"
    %endif
    times 2 - ($ - %%insn_0040b8c8) db 0
    %%insn_0040b8ca:
    cmp edx,0xff ; 0040B8CA 81FAFF000000
    %if ($ - %%insn_0040b8ca) > 6
        %error "LONG_0040B8CA"
    %endif
    times 6 - ($ - %%insn_0040b8ca) db 0
    %%insn_0040b8d0:
    jz short 0x40b901 ; 0040B8D0 742F
    %if ($ - %%insn_0040b8d0) > 2
        %error "LONG_0040B8D0"
    %endif
    times 2 - ($ - %%insn_0040b8d0) db 0
    %%insn_0040b8d2:
    mov eax,[ebp-0x6c] ; 0040B8D2 8B4594
    %if ($ - %%insn_0040b8d2) > 3
        %error "LONG_0040B8D2"
    %endif
    times 3 - ($ - %%insn_0040b8d2) db 0
    %%insn_0040b8d5:
    and eax,0xff ; 0040B8D5 25FF000000
    %if ($ - %%insn_0040b8d5) > 5
        %error "LONG_0040B8D5"
    %endif
    times 5 - ($ - %%insn_0040b8d5) db 0
    %%insn_0040b8da:
    cmp eax,0xff ; 0040B8DA 3DFF000000
    %if ($ - %%insn_0040b8da) > 5
        %error "LONG_0040B8DA"
    %endif
    times 5 - ($ - %%insn_0040b8da) db 0
    %%insn_0040b8df:
    jnz short 0x40b8f6 ; 0040B8DF 7515
    %if ($ - %%insn_0040b8df) > 2
        %error "LONG_0040B8DF"
    %endif
    times 2 - ($ - %%insn_0040b8df) db 0
    %%insn_0040b8e1:
    mov ecx,[ebp-0x68] ; 0040B8E1 8B4D98
    %if ($ - %%insn_0040b8e1) > 3
        %error "LONG_0040B8E1"
    %endif
    times 3 - ($ - %%insn_0040b8e1) db 0
    %%insn_0040b8e4:
    add ecx,[ebp-0x70] ; 0040B8E4 034D90
    %if ($ - %%insn_0040b8e4) > 3
        %error "LONG_0040B8E4"
    %endif
    times 3 - ($ - %%insn_0040b8e4) db 0
    %%insn_0040b8e7:
    mov edx,[0x4212d0] ; 0040B8E7 8B15D0124200
    %if ($ - %%insn_0040b8e7) > 6
        %error "LONG_0040B8E7"
    %endif
    times 6 - ($ - %%insn_0040b8e7) db 0
    %%insn_0040b8ed:
    add edx,[ebp-0x70] ; 0040B8ED 035590
    %if ($ - %%insn_0040b8ed) > 3
        %error "LONG_0040B8ED"
    %endif
    times 3 - ($ - %%insn_0040b8ed) db 0
    %%insn_0040b8f0:
    mov al,[edx] ; 0040B8F0 8A02
    %if ($ - %%insn_0040b8f0) > 2
        %error "LONG_0040B8F0"
    %endif
    times 2 - ($ - %%insn_0040b8f0) db 0
    %%insn_0040b8f2:
    mov [ecx],al ; 0040B8F2 8801
    %if ($ - %%insn_0040b8f2) > 2
        %error "LONG_0040B8F2"
    %endif
    times 2 - ($ - %%insn_0040b8f2) db 0
    %%insn_0040b8f4:
    jmp short 0x40b901 ; 0040B8F4 EB0B
    %if ($ - %%insn_0040b8f4) > 2
        %error "LONG_0040B8F4"
    %endif
    times 2 - ($ - %%insn_0040b8f4) db 0
    %%insn_0040b8f6:
    mov ecx,[ebp-0x68] ; 0040B8F6 8B4D98
    %if ($ - %%insn_0040b8f6) > 3
        %error "LONG_0040B8F6"
    %endif
    times 3 - ($ - %%insn_0040b8f6) db 0
    %%insn_0040b8f9:
    add ecx,[ebp-0x70] ; 0040B8F9 034D90
    %if ($ - %%insn_0040b8f9) > 3
        %error "LONG_0040B8F9"
    %endif
    times 3 - ($ - %%insn_0040b8f9) db 0
    %%insn_0040b8fc:
    mov dl,[ebp-0x6c] ; 0040B8FC 8A5594
    %if ($ - %%insn_0040b8fc) > 3
        %error "LONG_0040B8FC"
    %endif
    times 3 - ($ - %%insn_0040b8fc) db 0
    %%insn_0040b8ff:
    mov [ecx],dl ; 0040B8FF 8811
    %if ($ - %%insn_0040b8ff) > 2
        %error "LONG_0040B8FF"
    %endif
    times 2 - ($ - %%insn_0040b8ff) db 0
    %%insn_0040b901:
    jmp short 0x40b892 ; 0040B901 EB8F
    %if ($ - %%insn_0040b901) > 2
        %error "LONG_0040B901"
    %endif
    times 2 - ($ - %%insn_0040b901) db 0
    %%insn_0040b903:
    mov eax,[ebp-0x64] ; 0040B903 8B459C
    %if ($ - %%insn_0040b903) > 3
        %error "LONG_0040B903"
    %endif
    times 3 - ($ - %%insn_0040b903) db 0
    %%insn_0040b906:
    add eax,[ebp+0x10] ; 0040B906 034510
    %if ($ - %%insn_0040b906) > 3
        %error "LONG_0040B906"
    %endif
    times 3 - ($ - %%insn_0040b906) db 0
    %%insn_0040b909:
    mov [ebp-0x64],eax ; 0040B909 89459C
    %if ($ - %%insn_0040b909) > 3
        %error "LONG_0040B909"
    %endif
    times 3 - ($ - %%insn_0040b909) db 0
    %%insn_0040b90c:
    jmp 0x40b876 ; 0040B90C E965FFFFFF
    %if ($ - %%insn_0040b90c) > 5
        %error "LONG_0040B90C"
    %endif
    times 5 - ($ - %%insn_0040b90c) db 0
    %%insn_0040b911:
    mov ecx,[ebp-0x48] ; 0040B911 8B4DB8
    %if ($ - %%insn_0040b911) > 3
        %error "LONG_0040B911"
    %endif
    times 3 - ($ - %%insn_0040b911) db 0
    %%insn_0040b914:
    add ecx,0x1 ; 0040B914 83C101
    %if ($ - %%insn_0040b914) > 3
        %error "LONG_0040B914"
    %endif
    times 3 - ($ - %%insn_0040b914) db 0
    %%insn_0040b917:
    mov [ebp-0x48],ecx ; 0040B917 894DB8
    %if ($ - %%insn_0040b917) > 3
        %error "LONG_0040B917"
    %endif
    times 3 - ($ - %%insn_0040b917) db 0
    %%insn_0040b91a:
    jmp 0x40b843 ; 0040B91A E924FFFFFF
    %if ($ - %%insn_0040b91a) > 5
        %error "LONG_0040B91A"
    %endif
    times 5 - ($ - %%insn_0040b91a) db 0
    %%insn_0040b91f:
    jmp short 0x40b994 ; 0040B91F EB73
    %if ($ - %%insn_0040b91f) > 2
        %error "LONG_0040B91F"
    %endif
    times 2 - ($ - %%insn_0040b91f) db 0
    %%insn_0040b921:
    mov dword [ebp-0x24],0x0 ; 0040B921 C745DC00000000
    %if ($ - %%insn_0040b921) > 7
        %error "LONG_0040B921"
    %endif
    times 7 - ($ - %%insn_0040b921) db 0
    %%insn_0040b928:
    jmp short 0x40b933 ; 0040B928 EB09
    %if ($ - %%insn_0040b928) > 2
        %error "LONG_0040B928"
    %endif
    times 2 - ($ - %%insn_0040b928) db 0
    %%insn_0040b92a:
    mov edx,[ebp-0x24] ; 0040B92A 8B55DC
    %if ($ - %%insn_0040b92a) > 3
        %error "LONG_0040B92A"
    %endif
    times 3 - ($ - %%insn_0040b92a) db 0
    %%insn_0040b92d:
    add edx,0x1 ; 0040B92D 83C201
    %if ($ - %%insn_0040b92d) > 3
        %error "LONG_0040B92D"
    %endif
    times 3 - ($ - %%insn_0040b92d) db 0
    %%insn_0040b930:
    mov [ebp-0x24],edx ; 0040B930 8955DC
    %if ($ - %%insn_0040b930) > 3
        %error "LONG_0040B930"
    %endif
    times 3 - ($ - %%insn_0040b930) db 0
    %%insn_0040b933:
    mov eax,[ebp-0x44] ; 0040B933 8B45BC
    %if ($ - %%insn_0040b933) > 3
        %error "LONG_0040B933"
    %endif
    times 3 - ($ - %%insn_0040b933) db 0
    %%insn_0040b936:
    and eax,0xff ; 0040B936 25FF000000
    %if ($ - %%insn_0040b936) > 5
        %error "LONG_0040B936"
    %endif
    times 5 - ($ - %%insn_0040b936) db 0
    %%insn_0040b93b:
    cmp [ebp-0x24],eax ; 0040B93B 3945DC
    %if ($ - %%insn_0040b93b) > 3
        %error "LONG_0040B93B"
    %endif
    times 3 - ($ - %%insn_0040b93b) db 0
    %%insn_0040b93e:
    jnl short 0x40b994 ; 0040B93E 7D54
    %if ($ - %%insn_0040b93e) > 2
        %error "LONG_0040B93E"
    %endif
    times 2 - ($ - %%insn_0040b93e) db 0
    %%insn_0040b940:
    mov ecx,[ebp-0x48] ; 0040B940 8B4DB8
    %if ($ - %%insn_0040b940) > 3
        %error "LONG_0040B940"
    %endif
    times 3 - ($ - %%insn_0040b940) db 0
    %%insn_0040b943:
    mov edx,[ebp-0x4] ; 0040B943 8B55FC
    %if ($ - %%insn_0040b943) > 3
        %error "LONG_0040B943"
    %endif
    times 3 - ($ - %%insn_0040b943) db 0
    %%insn_0040b946:
    mov eax,[ebp-0xc] ; 0040B946 8B45F4
    %if ($ - %%insn_0040b946) > 3
        %error "LONG_0040B946"
    %endif
    times 3 - ($ - %%insn_0040b946) db 0
    %%insn_0040b949:
    mov [edx+ecx*4],eax ; 0040B949 89048A
    %if ($ - %%insn_0040b949) > 3
        %error "LONG_0040B949"
    %endif
    times 3 - ($ - %%insn_0040b949) db 0
    %%insn_0040b94c:
    mov ecx,[ebp-0x48] ; 0040B94C 8B4DB8
    %if ($ - %%insn_0040b94c) > 3
        %error "LONG_0040B94C"
    %endif
    times 3 - ($ - %%insn_0040b94c) db 0
    %%insn_0040b94f:
    add ecx,[0x4212dc] ; 0040B94F 030DDC124200
    %if ($ - %%insn_0040b94f) > 6
        %error "LONG_0040B94F"
    %endif
    times 6 - ($ - %%insn_0040b94f) db 0
    %%insn_0040b955:
    mov edx,[ebp-0x4] ; 0040B955 8B55FC
    %if ($ - %%insn_0040b955) > 3
        %error "LONG_0040B955"
    %endif
    times 3 - ($ - %%insn_0040b955) db 0
    %%insn_0040b958:
    mov eax,[ebp-0xc] ; 0040B958 8B45F4
    %if ($ - %%insn_0040b958) > 3
        %error "LONG_0040B958"
    %endif
    times 3 - ($ - %%insn_0040b958) db 0
    %%insn_0040b95b:
    mov [edx+ecx*4],eax ; 0040B95B 89048A
    %if ($ - %%insn_0040b95b) > 3
        %error "LONG_0040B95B"
    %endif
    times 3 - ($ - %%insn_0040b95b) db 0
    %%insn_0040b95e:
    mov ecx,[0x4212dc] ; 0040B95E 8B0DDC124200
    %if ($ - %%insn_0040b95e) > 6
        %error "LONG_0040B95E"
    %endif
    times 6 - ($ - %%insn_0040b95e) db 0
    %%insn_0040b964:
    mov edx,[ebp-0x48] ; 0040B964 8B55B8
    %if ($ - %%insn_0040b964) > 3
        %error "LONG_0040B964"
    %endif
    times 3 - ($ - %%insn_0040b964) db 0
    %%insn_0040b967:
    lea eax,[edx+ecx*2] ; 0040B967 8D044A
    %if ($ - %%insn_0040b967) > 3
        %error "LONG_0040B967"
    %endif
    times 3 - ($ - %%insn_0040b967) db 0
    %%insn_0040b96a:
    mov ecx,[ebp-0x4] ; 0040B96A 8B4DFC
    %if ($ - %%insn_0040b96a) > 3
        %error "LONG_0040B96A"
    %endif
    times 3 - ($ - %%insn_0040b96a) db 0
    %%insn_0040b96d:
    mov edx,[ebp-0xc] ; 0040B96D 8B55F4
    %if ($ - %%insn_0040b96d) > 3
        %error "LONG_0040B96D"
    %endif
    times 3 - ($ - %%insn_0040b96d) db 0
    %%insn_0040b970:
    mov [ecx+eax*4],edx ; 0040B970 891481
    %if ($ - %%insn_0040b970) > 3
        %error "LONG_0040B970"
    %endif
    times 3 - ($ - %%insn_0040b970) db 0
    %%insn_0040b973:
    mov eax,[0x4212dc] ; 0040B973 A1DC124200
    %if ($ - %%insn_0040b973) > 5
        %error "LONG_0040B973"
    %endif
    times 5 - ($ - %%insn_0040b973) db 0
    %%insn_0040b978:
    imul eax,eax,0x3 ; 0040B978 6BC003
    %if ($ - %%insn_0040b978) > 3
        %error "LONG_0040B978"
    %endif
    times 3 - ($ - %%insn_0040b978) db 0
    %%insn_0040b97b:
    mov ecx,[ebp-0x48] ; 0040B97B 8B4DB8
    %if ($ - %%insn_0040b97b) > 3
        %error "LONG_0040B97B"
    %endif
    times 3 - ($ - %%insn_0040b97b) db 0
    db 0x03, 0xC8 ; 0040B97E 03C8 | add ecx,eax | encoding preserved
    %%insn_0040b980:
    mov edx,[ebp-0x4] ; 0040B980 8B55FC
    %if ($ - %%insn_0040b980) > 3
        %error "LONG_0040B980"
    %endif
    times 3 - ($ - %%insn_0040b980) db 0
    %%insn_0040b983:
    mov eax,[ebp-0xc] ; 0040B983 8B45F4
    %if ($ - %%insn_0040b983) > 3
        %error "LONG_0040B983"
    %endif
    times 3 - ($ - %%insn_0040b983) db 0
    %%insn_0040b986:
    mov [edx+ecx*4],eax ; 0040B986 89048A
    %if ($ - %%insn_0040b986) > 3
        %error "LONG_0040B986"
    %endif
    times 3 - ($ - %%insn_0040b986) db 0
    %%insn_0040b989:
    mov ecx,[ebp-0x48] ; 0040B989 8B4DB8
    %if ($ - %%insn_0040b989) > 3
        %error "LONG_0040B989"
    %endif
    times 3 - ($ - %%insn_0040b989) db 0
    %%insn_0040b98c:
    add ecx,0x1 ; 0040B98C 83C101
    %if ($ - %%insn_0040b98c) > 3
        %error "LONG_0040B98C"
    %endif
    times 3 - ($ - %%insn_0040b98c) db 0
    %%insn_0040b98f:
    mov [ebp-0x48],ecx ; 0040B98F 894DB8
    %if ($ - %%insn_0040b98f) > 3
        %error "LONG_0040B98F"
    %endif
    times 3 - ($ - %%insn_0040b98f) db 0
    %%insn_0040b992:
    jmp short 0x40b92a ; 0040B992 EB96
    %if ($ - %%insn_0040b992) > 2
        %error "LONG_0040B992"
    %endif
    times 2 - ($ - %%insn_0040b992) db 0
    %%insn_0040b994:
    jmp 0x40bf6a ; 0040B994 E9D1050000
    %if ($ - %%insn_0040b994) > 5
        %error "LONG_0040B994"
    %endif
    times 5 - ($ - %%insn_0040b994) db 0
    %%insn_0040b999:
    mov edx,[ebp-0x44] ; 0040B999 8B55BC
    %if ($ - %%insn_0040b999) > 3
        %error "LONG_0040B999"
    %endif
    times 3 - ($ - %%insn_0040b999) db 0
    %%insn_0040b99c:
    and edx,0xff ; 0040B99C 81E2FF000000
    %if ($ - %%insn_0040b99c) > 6
        %error "LONG_0040B99C"
    %endif
    times 6 - ($ - %%insn_0040b99c) db 0
    %%insn_0040b9a2:
    cmp edx,0x80 ; 0040B9A2 81FA80000000
    %if ($ - %%insn_0040b9a2) > 6
        %error "LONG_0040B9A2"
    %endif
    times 6 - ($ - %%insn_0040b9a2) db 0
    %%insn_0040b9a8:
    jnl 0x40bbec ; 0040B9A8 0F8D3E020000
    %if ($ - %%insn_0040b9a8) > 6
        %error "LONG_0040B9A8"
    %endif
    times 6 - ($ - %%insn_0040b9a8) db 0
    %%insn_0040b9ae:
    mov al,[ebp-0x44] ; 0040B9AE 8A45BC
    %if ($ - %%insn_0040b9ae) > 3
        %error "LONG_0040B9AE"
    %endif
    times 3 - ($ - %%insn_0040b9ae) db 0
    %%insn_0040b9b1:
    sub al,0x75 ; 0040B9B1 2C75
    %if ($ - %%insn_0040b9b1) > 2
        %error "LONG_0040B9B1"
    %endif
    times 2 - ($ - %%insn_0040b9b1) db 0
    %%insn_0040b9b3:
    mov [ebp-0x44],al ; 0040B9B3 8845BC
    %if ($ - %%insn_0040b9b3) > 3
        %error "LONG_0040B9B3"
    %endif
    times 3 - ($ - %%insn_0040b9b3) db 0
    %%insn_0040b9b6:
    mov ecx,[ebp-0x30] ; 0040B9B6 8B4DD0
    %if ($ - %%insn_0040b9b6) > 3
        %error "LONG_0040B9B6"
    %endif
    times 3 - ($ - %%insn_0040b9b6) db 0
    %%insn_0040b9b9:
    and ecx,0xffff ; 0040B9B9 81E1FFFF0000
    %if ($ - %%insn_0040b9b9) > 6
        %error "LONG_0040B9B9"
    %endif
    times 6 - ($ - %%insn_0040b9b9) db 0
    %%insn_0040b9bf:
    mov edx,[0x41bd70] ; 0040B9BF 8B1570BD4100
    %if ($ - %%insn_0040b9bf) > 6
        %error "LONG_0040B9BF"
    %endif
    times 6 - ($ - %%insn_0040b9bf) db 0
    %%insn_0040b9c5:
    lea eax,[edx+ecx*4] ; 0040B9C5 8D048A
    %if ($ - %%insn_0040b9c5) > 3
        %error "LONG_0040B9C5"
    %endif
    times 3 - ($ - %%insn_0040b9c5) db 0
    %%insn_0040b9c8:
    add eax,[ebp+0x18] ; 0040B9C8 034518
    %if ($ - %%insn_0040b9c8) > 3
        %error "LONG_0040B9C8"
    %endif
    times 3 - ($ - %%insn_0040b9c8) db 0
    %%insn_0040b9cb:
    mov [ebp-0x54],eax ; 0040B9CB 8945AC
    %if ($ - %%insn_0040b9cb) > 3
        %error "LONG_0040B9CB"
    %endif
    times 3 - ($ - %%insn_0040b9cb) db 0
    %%insn_0040b9ce:
    mov ecx,[ebp-0x54] ; 0040B9CE 8B4DAC
    %if ($ - %%insn_0040b9ce) > 3
        %error "LONG_0040B9CE"
    %endif
    times 3 - ($ - %%insn_0040b9ce) db 0
    %%insn_0040b9d1:
    cmp ecx,[0x42135c] ; 0040B9D1 3B0D5C134200
    %if ($ - %%insn_0040b9d1) > 6
        %error "LONG_0040B9D1"
    %endif
    times 6 - ($ - %%insn_0040b9d1) db 0
    %%insn_0040b9d7:
    jnl short 0x40b9e2 ; 0040B9D7 7D09
    %if ($ - %%insn_0040b9d7) > 2
        %error "LONG_0040B9D7"
    %endif
    times 2 - ($ - %%insn_0040b9d7) db 0
    %%insn_0040b9d9:
    mov edx,[ebp-0x54] ; 0040B9D9 8B55AC
    %if ($ - %%insn_0040b9d9) > 3
        %error "LONG_0040B9D9"
    %endif
    times 3 - ($ - %%insn_0040b9d9) db 0
    %%insn_0040b9dc:
    mov [0x42135c],edx ; 0040B9DC 89155C134200
    %if ($ - %%insn_0040b9dc) > 6
        %error "LONG_0040B9DC"
    %endif
    times 6 - ($ - %%insn_0040b9dc) db 0
    %%insn_0040b9e2:
    mov eax,[ebp-0x54] ; 0040B9E2 8B45AC
    %if ($ - %%insn_0040b9e2) > 3
        %error "LONG_0040B9E2"
    %endif
    times 3 - ($ - %%insn_0040b9e2) db 0
    %%insn_0040b9e5:
    add eax,0x4 ; 0040B9E5 83C004
    %if ($ - %%insn_0040b9e5) > 3
        %error "LONG_0040B9E5"
    %endif
    times 3 - ($ - %%insn_0040b9e5) db 0
    %%insn_0040b9e8:
    mov [ebp-0x54],eax ; 0040B9E8 8945AC
    %if ($ - %%insn_0040b9e8) > 3
        %error "LONG_0040B9E8"
    %endif
    times 3 - ($ - %%insn_0040b9e8) db 0
    %%insn_0040b9eb:
    mov ecx,[ebp-0x54] ; 0040B9EB 8B4DAC
    %if ($ - %%insn_0040b9eb) > 3
        %error "LONG_0040B9EB"
    %endif
    times 3 - ($ - %%insn_0040b9eb) db 0
    %%insn_0040b9ee:
    cmp ecx,[0x421360] ; 0040B9EE 3B0D60134200
    %if ($ - %%insn_0040b9ee) > 6
        %error "LONG_0040B9EE"
    %endif
    times 6 - ($ - %%insn_0040b9ee) db 0
    %%insn_0040b9f4:
    jng short 0x40b9ff ; 0040B9F4 7E09
    %if ($ - %%insn_0040b9f4) > 2
        %error "LONG_0040B9F4"
    %endif
    times 2 - ($ - %%insn_0040b9f4) db 0
    %%insn_0040b9f6:
    mov edx,[ebp-0x54] ; 0040B9F6 8B55AC
    %if ($ - %%insn_0040b9f6) > 3
        %error "LONG_0040B9F6"
    %endif
    times 3 - ($ - %%insn_0040b9f6) db 0
    %%insn_0040b9f9:
    mov [0x421360],edx ; 0040B9F9 891560134200
    %if ($ - %%insn_0040b9f9) > 6
        %error "LONG_0040B9F9"
    %endif
    times 6 - ($ - %%insn_0040b9f9) db 0
    %%insn_0040b9ff:
    mov eax,[ebp-0x3c] ; 0040B9FF 8B45C4
    %if ($ - %%insn_0040b9ff) > 3
        %error "LONG_0040B9FF"
    %endif
    times 3 - ($ - %%insn_0040b9ff) db 0
    %%insn_0040ba02:
    and eax,0xffff ; 0040BA02 25FFFF0000
    %if ($ - %%insn_0040ba02) > 5
        %error "LONG_0040BA02"
    %endif
    times 5 - ($ - %%insn_0040ba02) db 0
    %%insn_0040ba07:
    cmp eax,[0x421354] ; 0040BA07 3B0554134200
    %if ($ - %%insn_0040ba07) > 6
        %error "LONG_0040BA07"
    %endif
    times 6 - ($ - %%insn_0040ba07) db 0
    %%insn_0040ba0d:
    jnl short 0x40ba1e ; 0040BA0D 7D0F
    %if ($ - %%insn_0040ba0d) > 2
        %error "LONG_0040BA0D"
    %endif
    times 2 - ($ - %%insn_0040ba0d) db 0
    %%insn_0040ba0f:
    mov ecx,[ebp-0x3c] ; 0040BA0F 8B4DC4
    %if ($ - %%insn_0040ba0f) > 3
        %error "LONG_0040BA0F"
    %endif
    times 3 - ($ - %%insn_0040ba0f) db 0
    %%insn_0040ba12:
    and ecx,0xffff ; 0040BA12 81E1FFFF0000
    %if ($ - %%insn_0040ba12) > 6
        %error "LONG_0040BA12"
    %endif
    times 6 - ($ - %%insn_0040ba12) db 0
    %%insn_0040ba18:
    mov [0x421354],ecx ; 0040BA18 890D54134200
    %if ($ - %%insn_0040ba18) > 6
        %error "LONG_0040BA18"
    %endif
    times 6 - ($ - %%insn_0040ba18) db 0
    %%insn_0040ba1e:
    mov edx,[ebp-0x44] ; 0040BA1E 8B55BC
    %if ($ - %%insn_0040ba1e) > 3
        %error "LONG_0040BA1E"
    %endif
    times 3 - ($ - %%insn_0040ba1e) db 0
    %%insn_0040ba21:
    and edx,0xff ; 0040BA21 81E2FF000000
    %if ($ - %%insn_0040ba21) > 6
        %error "LONG_0040BA21"
    %endif
    times 6 - ($ - %%insn_0040ba21) db 0
    %%insn_0040ba27:
    shl edx,byte 0x2 ; 0040BA27 C1E202
    %if ($ - %%insn_0040ba27) > 3
        %error "LONG_0040BA27"
    %endif
    times 3 - ($ - %%insn_0040ba27) db 0
    %%insn_0040ba2a:
    mov ax,[ebp-0x3c] ; 0040BA2A 668B45C4
    %if ($ - %%insn_0040ba2a) > 4
        %error "LONG_0040BA2A"
    %endif
    times 4 - ($ - %%insn_0040ba2a) db 0
    db 0x66, 0x03, 0xC2 ; 0040BA2E 6603C2 | add ax,dx | encoding preserved
    %%insn_0040ba31:
    mov [ebp-0x3c],ax ; 0040BA31 668945C4
    %if ($ - %%insn_0040ba31) > 4
        %error "LONG_0040BA31"
    %endif
    times 4 - ($ - %%insn_0040ba31) db 0
    %%insn_0040ba35:
    mov ecx,[ebp-0x3c] ; 0040BA35 8B4DC4
    %if ($ - %%insn_0040ba35) > 3
        %error "LONG_0040BA35"
    %endif
    times 3 - ($ - %%insn_0040ba35) db 0
    %%insn_0040ba38:
    and ecx,0xffff ; 0040BA38 81E1FFFF0000
    %if ($ - %%insn_0040ba38) > 6
        %error "LONG_0040BA38"
    %endif
    times 6 - ($ - %%insn_0040ba38) db 0
    %%insn_0040ba3e:
    cmp ecx,[0x421358] ; 0040BA3E 3B0D58134200
    %if ($ - %%insn_0040ba3e) > 6
        %error "LONG_0040BA3E"
    %endif
    times 6 - ($ - %%insn_0040ba3e) db 0
    %%insn_0040ba44:
    jng short 0x40ba55 ; 0040BA44 7E0F
    %if ($ - %%insn_0040ba44) > 2
        %error "LONG_0040BA44"
    %endif
    times 2 - ($ - %%insn_0040ba44) db 0
    %%insn_0040ba46:
    mov edx,[ebp-0x3c] ; 0040BA46 8B55C4
    %if ($ - %%insn_0040ba46) > 3
        %error "LONG_0040BA46"
    %endif
    times 3 - ($ - %%insn_0040ba46) db 0
    %%insn_0040ba49:
    and edx,0xffff ; 0040BA49 81E2FFFF0000
    %if ($ - %%insn_0040ba49) > 6
        %error "LONG_0040BA49"
    %endif
    times 6 - ($ - %%insn_0040ba49) db 0
    %%insn_0040ba4f:
    mov [0x421358],edx ; 0040BA4F 891558134200
    %if ($ - %%insn_0040ba4f) > 6
        %error "LONG_0040BA4F"
    %endif
    times 6 - ($ - %%insn_0040ba4f) db 0
    %%insn_0040ba55:
    mov eax,[ebp-0x48] ; 0040BA55 8B45B8
    %if ($ - %%insn_0040ba55) > 3
        %error "LONG_0040BA55"
    %endif
    times 3 - ($ - %%insn_0040ba55) db 0
    %%insn_0040ba58:
    mov [ebp-0x54],eax ; 0040BA58 8945AC
    %if ($ - %%insn_0040ba58) > 3
        %error "LONG_0040BA58"
    %endif
    times 3 - ($ - %%insn_0040ba58) db 0
    %%insn_0040ba5b:
    mov dword [ebp-0x24],0x0 ; 0040BA5B C745DC00000000
    %if ($ - %%insn_0040ba5b) > 7
        %error "LONG_0040BA5B"
    %endif
    times 7 - ($ - %%insn_0040ba5b) db 0
    %%insn_0040ba62:
    jmp short 0x40ba6d ; 0040BA62 EB09
    %if ($ - %%insn_0040ba62) > 2
        %error "LONG_0040BA62"
    %endif
    times 2 - ($ - %%insn_0040ba62) db 0
    %%insn_0040ba64:
    mov ecx,[ebp-0x24] ; 0040BA64 8B4DDC
    %if ($ - %%insn_0040ba64) > 3
        %error "LONG_0040BA64"
    %endif
    times 3 - ($ - %%insn_0040ba64) db 0
    %%insn_0040ba67:
    add ecx,0x1 ; 0040BA67 83C101
    %if ($ - %%insn_0040ba67) > 3
        %error "LONG_0040BA67"
    %endif
    times 3 - ($ - %%insn_0040ba67) db 0
    %%insn_0040ba6a:
    mov [ebp-0x24],ecx ; 0040BA6A 894DDC
    %if ($ - %%insn_0040ba6a) > 3
        %error "LONG_0040BA6A"
    %endif
    times 3 - ($ - %%insn_0040ba6a) db 0
    %%insn_0040ba6d:
    mov edx,[ebp-0x44] ; 0040BA6D 8B55BC
    %if ($ - %%insn_0040ba6d) > 3
        %error "LONG_0040BA6D"
    %endif
    times 3 - ($ - %%insn_0040ba6d) db 0
    %%insn_0040ba70:
    and edx,0xff ; 0040BA70 81E2FF000000
    %if ($ - %%insn_0040ba70) > 6
        %error "LONG_0040BA70"
    %endif
    times 6 - ($ - %%insn_0040ba70) db 0
    %%insn_0040ba76:
    cmp [ebp-0x24],edx ; 0040BA76 3955DC
    %if ($ - %%insn_0040ba76) > 3
        %error "LONG_0040BA76"
    %endif
    times 3 - ($ - %%insn_0040ba76) db 0
    %%insn_0040ba79:
    jnl 0x40bbe7 ; 0040BA79 0F8D68010000
    %if ($ - %%insn_0040ba79) > 6
        %error "LONG_0040BA79"
    %endif
    times 6 - ($ - %%insn_0040ba79) db 0
    %%insn_0040ba7f:
    mov eax,[ebp+0x8] ; 0040BA7F 8B4508
    %if ($ - %%insn_0040ba7f) > 3
        %error "LONG_0040BA7F"
    %endif
    times 3 - ($ - %%insn_0040ba7f) db 0
    %%insn_0040ba82:
    mov cl,[eax] ; 0040BA82 8A08
    %if ($ - %%insn_0040ba82) > 2
        %error "LONG_0040BA82"
    %endif
    times 2 - ($ - %%insn_0040ba82) db 0
    %%insn_0040ba84:
    mov [ebp-0x4c],cl ; 0040BA84 884DB4
    %if ($ - %%insn_0040ba84) > 3
        %error "LONG_0040BA84"
    %endif
    times 3 - ($ - %%insn_0040ba84) db 0
    %%insn_0040ba87:
    mov edx,[ebp+0x8] ; 0040BA87 8B5508
    %if ($ - %%insn_0040ba87) > 3
        %error "LONG_0040BA87"
    %endif
    times 3 - ($ - %%insn_0040ba87) db 0
    %%insn_0040ba8a:
    add edx,0x1 ; 0040BA8A 83C201
    %if ($ - %%insn_0040ba8a) > 3
        %error "LONG_0040BA8A"
    %endif
    times 3 - ($ - %%insn_0040ba8a) db 0
    %%insn_0040ba8d:
    mov [ebp+0x8],edx ; 0040BA8D 895508
    %if ($ - %%insn_0040ba8d) > 3
        %error "LONG_0040BA8D"
    %endif
    times 3 - ($ - %%insn_0040ba8d) db 0
    %%insn_0040ba90:
    mov eax,[ebp-0x4c] ; 0040BA90 8B45B4
    %if ($ - %%insn_0040ba90) > 3
        %error "LONG_0040BA90"
    %endif
    times 3 - ($ - %%insn_0040ba90) db 0
    %%insn_0040ba93:
    and eax,0xff ; 0040BA93 25FF000000
    %if ($ - %%insn_0040ba93) > 5
        %error "LONG_0040BA93"
    %endif
    times 5 - ($ - %%insn_0040ba93) db 0
    %%insn_0040ba98:
    mov ecx,[0x420e44] ; 0040BA98 8B0D440E4200
    %if ($ - %%insn_0040ba98) > 6
        %error "LONG_0040BA98"
    %endif
    times 6 - ($ - %%insn_0040ba98) db 0
    %%insn_0040ba9e:
    mov edx,[ecx+eax*4] ; 0040BA9E 8B1481
    %if ($ - %%insn_0040ba9e) > 3
        %error "LONG_0040BA9E"
    %endif
    times 3 - ($ - %%insn_0040ba9e) db 0
    %%insn_0040baa1:
    mov [ebp-0xc],edx ; 0040BAA1 8955F4
    %if ($ - %%insn_0040baa1) > 3
        %error "LONG_0040BAA1"
    %endif
    times 3 - ($ - %%insn_0040baa1) db 0
    db 0x33, 0xC0 ; 0040BAA4 33C0 | xor eax,eax | encoding preserved
    %%insn_0040baa6:
    mov ax,[0x4212d8] ; 0040BAA6 66A1D8124200
    %if ($ - %%insn_0040baa6) > 6
        %error "LONG_0040BAA6"
    %endif
    times 6 - ($ - %%insn_0040baa6) db 0
    %%insn_0040baac:
    and eax,0x80 ; 0040BAAC 2580000000
    %if ($ - %%insn_0040baac) > 5
        %error "LONG_0040BAAC"
    %endif
    times 5 - ($ - %%insn_0040baac) db 0
    %%insn_0040bab1:
    test eax,eax ; 0040BAB1 85C0
    %if ($ - %%insn_0040bab1) > 2
        %error "LONG_0040BAB1"
    %endif
    times 2 - ($ - %%insn_0040bab1) db 0
    %%insn_0040bab3:
    jz 0x40bb90 ; 0040BAB3 0F84D7000000
    %if ($ - %%insn_0040bab3) > 6
        %error "LONG_0040BAB3"
    %endif
    times 6 - ($ - %%insn_0040bab3) db 0
    %%insn_0040bab9:
    mov ecx,[ebp-0x4] ; 0040BAB9 8B4DFC
    %if ($ - %%insn_0040bab9) > 3
        %error "LONG_0040BAB9"
    %endif
    times 3 - ($ - %%insn_0040bab9) db 0
    %%insn_0040babc:
    mov [ebp-0x80],ecx ; 0040BABC 894D80
    %if ($ - %%insn_0040babc) > 3
        %error "LONG_0040BABC"
    %endif
    times 3 - ($ - %%insn_0040babc) db 0
    %%insn_0040babf:
    mov edx,[ebp-0x48] ; 0040BABF 8B55B8
    %if ($ - %%insn_0040babf) > 3
        %error "LONG_0040BABF"
    %endif
    times 3 - ($ - %%insn_0040babf) db 0
    %%insn_0040bac2:
    mov eax,[0x420e40] ; 0040BAC2 A1400E4200
    %if ($ - %%insn_0040bac2) > 5
        %error "LONG_0040BAC2"
    %endif
    times 5 - ($ - %%insn_0040bac2) db 0
    %%insn_0040bac7:
    lea ecx,[eax+edx*4] ; 0040BAC7 8D0C90
    %if ($ - %%insn_0040bac7) > 3
        %error "LONG_0040BAC7"
    %endif
    times 3 - ($ - %%insn_0040bac7) db 0
    %%insn_0040baca:
    mov [ebp-0x7c],ecx ; 0040BACA 894D84
    %if ($ - %%insn_0040baca) > 3
        %error "LONG_0040BACA"
    %endif
    times 3 - ($ - %%insn_0040baca) db 0
    %%insn_0040bacd:
    mov dword [ebp-0x78],0x0 ; 0040BACD C7458800000000
    %if ($ - %%insn_0040bacd) > 7
        %error "LONG_0040BACD"
    %endif
    times 7 - ($ - %%insn_0040bacd) db 0
    %%insn_0040bad4:
    jmp short 0x40badf ; 0040BAD4 EB09
    %if ($ - %%insn_0040bad4) > 2
        %error "LONG_0040BAD4"
    %endif
    times 2 - ($ - %%insn_0040bad4) db 0
    %%insn_0040bad6:
    mov edx,[ebp-0x78] ; 0040BAD6 8B5588
    %if ($ - %%insn_0040bad6) > 3
        %error "LONG_0040BAD6"
    %endif
    times 3 - ($ - %%insn_0040bad6) db 0
    %%insn_0040bad9:
    add edx,0x1 ; 0040BAD9 83C201
    %if ($ - %%insn_0040bad9) > 3
        %error "LONG_0040BAD9"
    %endif
    times 3 - ($ - %%insn_0040bad9) db 0
    %%insn_0040badc:
    mov [ebp-0x78],edx ; 0040BADC 895588
    %if ($ - %%insn_0040badc) > 3
        %error "LONG_0040BADC"
    %endif
    times 3 - ($ - %%insn_0040badc) db 0
    %%insn_0040badf:
    cmp dword [ebp-0x78],0x4 ; 0040BADF 837D8804
    %if ($ - %%insn_0040badf) > 4
        %error "LONG_0040BADF"
    %endif
    times 4 - ($ - %%insn_0040badf) db 0
    %%insn_0040bae3:
    jnl 0x40bb8e ; 0040BAE3 0F8DA5000000
    %if ($ - %%insn_0040bae3) > 6
        %error "LONG_0040BAE3"
    %endif
    times 6 - ($ - %%insn_0040bae3) db 0
    %%insn_0040bae9:
    mov dword [ebp-0x74],0x0 ; 0040BAE9 C7458C00000000
    %if ($ - %%insn_0040bae9) > 7
        %error "LONG_0040BAE9"
    %endif
    times 7 - ($ - %%insn_0040bae9) db 0
    %%insn_0040baf0:
    jmp short 0x40bafb ; 0040BAF0 EB09
    %if ($ - %%insn_0040baf0) > 2
        %error "LONG_0040BAF0"
    %endif
    times 2 - ($ - %%insn_0040baf0) db 0
    %%insn_0040baf2:
    mov eax,[ebp-0x74] ; 0040BAF2 8B458C
    %if ($ - %%insn_0040baf2) > 3
        %error "LONG_0040BAF2"
    %endif
    times 3 - ($ - %%insn_0040baf2) db 0
    %%insn_0040baf5:
    add eax,0x1 ; 0040BAF5 83C001
    %if ($ - %%insn_0040baf5) > 3
        %error "LONG_0040BAF5"
    %endif
    times 3 - ($ - %%insn_0040baf5) db 0
    %%insn_0040baf8:
    mov [ebp-0x74],eax ; 0040BAF8 89458C
    %if ($ - %%insn_0040baf8) > 3
        %error "LONG_0040BAF8"
    %endif
    times 3 - ($ - %%insn_0040baf8) db 0
    %%insn_0040bafb:
    cmp dword [ebp-0x74],0x4 ; 0040BAFB 837D8C04
    %if ($ - %%insn_0040bafb) > 4
        %error "LONG_0040BAFB"
    %endif
    times 4 - ($ - %%insn_0040bafb) db 0
    %%insn_0040baff:
    jnl short 0x40bb80 ; 0040BAFF 7D7F
    %if ($ - %%insn_0040baff) > 2
        %error "LONG_0040BAFF"
    %endif
    times 2 - ($ - %%insn_0040baff) db 0
    %%insn_0040bb01:
    mov ecx,[ebp-0x7c] ; 0040BB01 8B4D84
    %if ($ - %%insn_0040bb01) > 3
        %error "LONG_0040BB01"
    %endif
    times 3 - ($ - %%insn_0040bb01) db 0
    %%insn_0040bb04:
    add ecx,[ebp-0x74] ; 0040BB04 034D8C
    %if ($ - %%insn_0040bb04) > 3
        %error "LONG_0040BB04"
    %endif
    times 3 - ($ - %%insn_0040bb04) db 0
    %%insn_0040bb07:
    mov [ebp-0x88],ecx ; 0040BB07 898D78FFFFFF
    %if ($ - %%insn_0040bb07) > 6
        %error "LONG_0040BB07"
    %endif
    times 6 - ($ - %%insn_0040bb07) db 0
    %%insn_0040bb0d:
    mov ecx,[ebp-0x74] ; 0040BB0D 8B4D8C
    %if ($ - %%insn_0040bb0d) > 3
        %error "LONG_0040BB0D"
    %endif
    times 3 - ($ - %%insn_0040bb0d) db 0
    %%insn_0040bb10:
    shl ecx,byte 0x3 ; 0040BB10 C1E103
    %if ($ - %%insn_0040bb10) > 3
        %error "LONG_0040BB10"
    %endif
    times 3 - ($ - %%insn_0040bb10) db 0
    %%insn_0040bb13:
    mov edx,[ebp-0xc] ; 0040BB13 8B55F4
    %if ($ - %%insn_0040bb13) > 3
        %error "LONG_0040BB13"
    %endif
    times 3 - ($ - %%insn_0040bb13) db 0
    %%insn_0040bb16:
    shr edx,cl ; 0040BB16 D3EA
    %if ($ - %%insn_0040bb16) > 2
        %error "LONG_0040BB16"
    %endif
    times 2 - ($ - %%insn_0040bb16) db 0
    %%insn_0040bb18:
    and edx,0xff ; 0040BB18 81E2FF000000
    %if ($ - %%insn_0040bb18) > 6
        %error "LONG_0040BB18"
    %endif
    times 6 - ($ - %%insn_0040bb18) db 0
    %%insn_0040bb1e:
    mov [ebp-0x84],dl ; 0040BB1E 88957CFFFFFF
    %if ($ - %%insn_0040bb1e) > 6
        %error "LONG_0040BB1E"
    %endif
    times 6 - ($ - %%insn_0040bb1e) db 0
    %%insn_0040bb24:
    mov eax,[0x4212d0] ; 0040BB24 A1D0124200
    %if ($ - %%insn_0040bb24) > 5
        %error "LONG_0040BB24"
    %endif
    times 5 - ($ - %%insn_0040bb24) db 0
    %%insn_0040bb29:
    add eax,[ebp-0x88] ; 0040BB29 038578FFFFFF
    %if ($ - %%insn_0040bb29) > 6
        %error "LONG_0040BB29"
    %endif
    times 6 - ($ - %%insn_0040bb29) db 0
    db 0x33, 0xC9 ; 0040BB2F 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040bb31:
    mov cl,[eax] ; 0040BB31 8A08
    %if ($ - %%insn_0040bb31) > 2
        %error "LONG_0040BB31"
    %endif
    times 2 - ($ - %%insn_0040bb31) db 0
    %%insn_0040bb33:
    cmp ecx,0xff ; 0040BB33 81F9FF000000
    %if ($ - %%insn_0040bb33) > 6
        %error "LONG_0040BB33"
    %endif
    times 6 - ($ - %%insn_0040bb33) db 0
    %%insn_0040bb39:
    jz short 0x40bb7b ; 0040BB39 7440
    %if ($ - %%insn_0040bb39) > 2
        %error "LONG_0040BB39"
    %endif
    times 2 - ($ - %%insn_0040bb39) db 0
    %%insn_0040bb3b:
    mov edx,[ebp-0x84] ; 0040BB3B 8B957CFFFFFF
    %if ($ - %%insn_0040bb3b) > 6
        %error "LONG_0040BB3B"
    %endif
    times 6 - ($ - %%insn_0040bb3b) db 0
    %%insn_0040bb41:
    and edx,0xff ; 0040BB41 81E2FF000000
    %if ($ - %%insn_0040bb41) > 6
        %error "LONG_0040BB41"
    %endif
    times 6 - ($ - %%insn_0040bb41) db 0
    %%insn_0040bb47:
    cmp edx,0xff ; 0040BB47 81FAFF000000
    %if ($ - %%insn_0040bb47) > 6
        %error "LONG_0040BB47"
    %endif
    times 6 - ($ - %%insn_0040bb47) db 0
    %%insn_0040bb4d:
    jnz short 0x40bb6a ; 0040BB4D 751B
    %if ($ - %%insn_0040bb4d) > 2
        %error "LONG_0040BB4D"
    %endif
    times 2 - ($ - %%insn_0040bb4d) db 0
    %%insn_0040bb4f:
    mov eax,[ebp-0x80] ; 0040BB4F 8B4580
    %if ($ - %%insn_0040bb4f) > 3
        %error "LONG_0040BB4F"
    %endif
    times 3 - ($ - %%insn_0040bb4f) db 0
    %%insn_0040bb52:
    add eax,[ebp-0x88] ; 0040BB52 038578FFFFFF
    %if ($ - %%insn_0040bb52) > 6
        %error "LONG_0040BB52"
    %endif
    times 6 - ($ - %%insn_0040bb52) db 0
    %%insn_0040bb58:
    mov ecx,[0x4212d0] ; 0040BB58 8B0DD0124200
    %if ($ - %%insn_0040bb58) > 6
        %error "LONG_0040BB58"
    %endif
    times 6 - ($ - %%insn_0040bb58) db 0
    %%insn_0040bb5e:
    add ecx,[ebp-0x88] ; 0040BB5E 038D78FFFFFF
    %if ($ - %%insn_0040bb5e) > 6
        %error "LONG_0040BB5E"
    %endif
    times 6 - ($ - %%insn_0040bb5e) db 0
    %%insn_0040bb64:
    mov dl,[ecx] ; 0040BB64 8A11
    %if ($ - %%insn_0040bb64) > 2
        %error "LONG_0040BB64"
    %endif
    times 2 - ($ - %%insn_0040bb64) db 0
    %%insn_0040bb66:
    mov [eax],dl ; 0040BB66 8810
    %if ($ - %%insn_0040bb66) > 2
        %error "LONG_0040BB66"
    %endif
    times 2 - ($ - %%insn_0040bb66) db 0
    %%insn_0040bb68:
    jmp short 0x40bb7b ; 0040BB68 EB11
    %if ($ - %%insn_0040bb68) > 2
        %error "LONG_0040BB68"
    %endif
    times 2 - ($ - %%insn_0040bb68) db 0
    %%insn_0040bb6a:
    mov eax,[ebp-0x80] ; 0040BB6A 8B4580
    %if ($ - %%insn_0040bb6a) > 3
        %error "LONG_0040BB6A"
    %endif
    times 3 - ($ - %%insn_0040bb6a) db 0
    %%insn_0040bb6d:
    add eax,[ebp-0x88] ; 0040BB6D 038578FFFFFF
    %if ($ - %%insn_0040bb6d) > 6
        %error "LONG_0040BB6D"
    %endif
    times 6 - ($ - %%insn_0040bb6d) db 0
    %%insn_0040bb73:
    mov cl,[ebp-0x84] ; 0040BB73 8A8D7CFFFFFF
    %if ($ - %%insn_0040bb73) > 6
        %error "LONG_0040BB73"
    %endif
    times 6 - ($ - %%insn_0040bb73) db 0
    %%insn_0040bb79:
    mov [eax],cl ; 0040BB79 8808
    %if ($ - %%insn_0040bb79) > 2
        %error "LONG_0040BB79"
    %endif
    times 2 - ($ - %%insn_0040bb79) db 0
    %%insn_0040bb7b:
    jmp 0x40baf2 ; 0040BB7B E972FFFFFF
    %if ($ - %%insn_0040bb7b) > 5
        %error "LONG_0040BB7B"
    %endif
    times 5 - ($ - %%insn_0040bb7b) db 0
    %%insn_0040bb80:
    mov edx,[ebp-0x7c] ; 0040BB80 8B5584
    %if ($ - %%insn_0040bb80) > 3
        %error "LONG_0040BB80"
    %endif
    times 3 - ($ - %%insn_0040bb80) db 0
    %%insn_0040bb83:
    add edx,[ebp+0x10] ; 0040BB83 035510
    %if ($ - %%insn_0040bb83) > 3
        %error "LONG_0040BB83"
    %endif
    times 3 - ($ - %%insn_0040bb83) db 0
    %%insn_0040bb86:
    mov [ebp-0x7c],edx ; 0040BB86 895584
    %if ($ - %%insn_0040bb86) > 3
        %error "LONG_0040BB86"
    %endif
    times 3 - ($ - %%insn_0040bb86) db 0
    %%insn_0040bb89:
    jmp 0x40bad6 ; 0040BB89 E948FFFFFF
    %if ($ - %%insn_0040bb89) > 5
        %error "LONG_0040BB89"
    %endif
    times 5 - ($ - %%insn_0040bb89) db 0
    %%insn_0040bb8e:
    jmp short 0x40bbd9 ; 0040BB8E EB49
    %if ($ - %%insn_0040bb8e) > 2
        %error "LONG_0040BB8E"
    %endif
    times 2 - ($ - %%insn_0040bb8e) db 0
    %%insn_0040bb90:
    mov eax,[ebp-0x48] ; 0040BB90 8B45B8
    %if ($ - %%insn_0040bb90) > 3
        %error "LONG_0040BB90"
    %endif
    times 3 - ($ - %%insn_0040bb90) db 0
    %%insn_0040bb93:
    mov ecx,[ebp-0x4] ; 0040BB93 8B4DFC
    %if ($ - %%insn_0040bb93) > 3
        %error "LONG_0040BB93"
    %endif
    times 3 - ($ - %%insn_0040bb93) db 0
    %%insn_0040bb96:
    mov edx,[ebp-0xc] ; 0040BB96 8B55F4
    %if ($ - %%insn_0040bb96) > 3
        %error "LONG_0040BB96"
    %endif
    times 3 - ($ - %%insn_0040bb96) db 0
    %%insn_0040bb99:
    mov [ecx+eax*4],edx ; 0040BB99 891481
    %if ($ - %%insn_0040bb99) > 3
        %error "LONG_0040BB99"
    %endif
    times 3 - ($ - %%insn_0040bb99) db 0
    %%insn_0040bb9c:
    mov eax,[ebp-0x48] ; 0040BB9C 8B45B8
    %if ($ - %%insn_0040bb9c) > 3
        %error "LONG_0040BB9C"
    %endif
    times 3 - ($ - %%insn_0040bb9c) db 0
    %%insn_0040bb9f:
    add eax,[0x4212dc] ; 0040BB9F 0305DC124200
    %if ($ - %%insn_0040bb9f) > 6
        %error "LONG_0040BB9F"
    %endif
    times 6 - ($ - %%insn_0040bb9f) db 0
    %%insn_0040bba5:
    mov ecx,[ebp-0x4] ; 0040BBA5 8B4DFC
    %if ($ - %%insn_0040bba5) > 3
        %error "LONG_0040BBA5"
    %endif
    times 3 - ($ - %%insn_0040bba5) db 0
    %%insn_0040bba8:
    mov edx,[ebp-0xc] ; 0040BBA8 8B55F4
    %if ($ - %%insn_0040bba8) > 3
        %error "LONG_0040BBA8"
    %endif
    times 3 - ($ - %%insn_0040bba8) db 0
    %%insn_0040bbab:
    mov [ecx+eax*4],edx ; 0040BBAB 891481
    %if ($ - %%insn_0040bbab) > 3
        %error "LONG_0040BBAB"
    %endif
    times 3 - ($ - %%insn_0040bbab) db 0
    %%insn_0040bbae:
    mov eax,[0x4212dc] ; 0040BBAE A1DC124200
    %if ($ - %%insn_0040bbae) > 5
        %error "LONG_0040BBAE"
    %endif
    times 5 - ($ - %%insn_0040bbae) db 0
    %%insn_0040bbb3:
    mov ecx,[ebp-0x48] ; 0040BBB3 8B4DB8
    %if ($ - %%insn_0040bbb3) > 3
        %error "LONG_0040BBB3"
    %endif
    times 3 - ($ - %%insn_0040bbb3) db 0
    %%insn_0040bbb6:
    lea edx,[ecx+eax*2] ; 0040BBB6 8D1441
    %if ($ - %%insn_0040bbb6) > 3
        %error "LONG_0040BBB6"
    %endif
    times 3 - ($ - %%insn_0040bbb6) db 0
    %%insn_0040bbb9:
    mov eax,[ebp-0x4] ; 0040BBB9 8B45FC
    %if ($ - %%insn_0040bbb9) > 3
        %error "LONG_0040BBB9"
    %endif
    times 3 - ($ - %%insn_0040bbb9) db 0
    %%insn_0040bbbc:
    mov ecx,[ebp-0xc] ; 0040BBBC 8B4DF4
    %if ($ - %%insn_0040bbbc) > 3
        %error "LONG_0040BBBC"
    %endif
    times 3 - ($ - %%insn_0040bbbc) db 0
    %%insn_0040bbbf:
    mov [eax+edx*4],ecx ; 0040BBBF 890C90
    %if ($ - %%insn_0040bbbf) > 3
        %error "LONG_0040BBBF"
    %endif
    times 3 - ($ - %%insn_0040bbbf) db 0
    %%insn_0040bbc2:
    mov edx,[0x4212dc] ; 0040BBC2 8B15DC124200
    %if ($ - %%insn_0040bbc2) > 6
        %error "LONG_0040BBC2"
    %endif
    times 6 - ($ - %%insn_0040bbc2) db 0
    %%insn_0040bbc8:
    imul edx,edx,0x3 ; 0040BBC8 6BD203
    %if ($ - %%insn_0040bbc8) > 3
        %error "LONG_0040BBC8"
    %endif
    times 3 - ($ - %%insn_0040bbc8) db 0
    %%insn_0040bbcb:
    mov eax,[ebp-0x48] ; 0040BBCB 8B45B8
    %if ($ - %%insn_0040bbcb) > 3
        %error "LONG_0040BBCB"
    %endif
    times 3 - ($ - %%insn_0040bbcb) db 0
    db 0x03, 0xC2 ; 0040BBCE 03C2 | add eax,edx | encoding preserved
    %%insn_0040bbd0:
    mov ecx,[ebp-0x4] ; 0040BBD0 8B4DFC
    %if ($ - %%insn_0040bbd0) > 3
        %error "LONG_0040BBD0"
    %endif
    times 3 - ($ - %%insn_0040bbd0) db 0
    %%insn_0040bbd3:
    mov edx,[ebp-0xc] ; 0040BBD3 8B55F4
    %if ($ - %%insn_0040bbd3) > 3
        %error "LONG_0040BBD3"
    %endif
    times 3 - ($ - %%insn_0040bbd3) db 0
    %%insn_0040bbd6:
    mov [ecx+eax*4],edx ; 0040BBD6 891481
    %if ($ - %%insn_0040bbd6) > 3
        %error "LONG_0040BBD6"
    %endif
    times 3 - ($ - %%insn_0040bbd6) db 0
    %%insn_0040bbd9:
    mov eax,[ebp-0x48] ; 0040BBD9 8B45B8
    %if ($ - %%insn_0040bbd9) > 3
        %error "LONG_0040BBD9"
    %endif
    times 3 - ($ - %%insn_0040bbd9) db 0
    %%insn_0040bbdc:
    add eax,0x1 ; 0040BBDC 83C001
    %if ($ - %%insn_0040bbdc) > 3
        %error "LONG_0040BBDC"
    %endif
    times 3 - ($ - %%insn_0040bbdc) db 0
    %%insn_0040bbdf:
    mov [ebp-0x48],eax ; 0040BBDF 8945B8
    %if ($ - %%insn_0040bbdf) > 3
        %error "LONG_0040BBDF"
    %endif
    times 3 - ($ - %%insn_0040bbdf) db 0
    %%insn_0040bbe2:
    jmp 0x40ba64 ; 0040BBE2 E97DFEFFFF
    %if ($ - %%insn_0040bbe2) > 5
        %error "LONG_0040BBE2"
    %endif
    times 5 - ($ - %%insn_0040bbe2) db 0
    %%insn_0040bbe7:
    jmp 0x40bf6a ; 0040BBE7 E97E030000
    %if ($ - %%insn_0040bbe7) > 5
        %error "LONG_0040BBE7"
    %endif
    times 5 - ($ - %%insn_0040bbe7) db 0
    %%insn_0040bbec:
    movzx cx,byte [ebp-0x44] ; 0040BBEC 660FB64DBC
    %if ($ - %%insn_0040bbec) > 5
        %error "LONG_0040BBEC"
    %endif
    times 5 - ($ - %%insn_0040bbec) db 0
    %%insn_0040bbf1:
    mov [ebp-0x1c],cx ; 0040BBF1 66894DE4
    %if ($ - %%insn_0040bbf1) > 4
        %error "LONG_0040BBF1"
    %endif
    times 4 - ($ - %%insn_0040bbf1) db 0
    %%insn_0040bbf5:
    mov edx,[ebp+0x8] ; 0040BBF5 8B5508
    %if ($ - %%insn_0040bbf5) > 3
        %error "LONG_0040BBF5"
    %endif
    times 3 - ($ - %%insn_0040bbf5) db 0
    db 0x33, 0xC0 ; 0040BBF8 33C0 | xor eax,eax | encoding preserved
    %%insn_0040bbfa:
    mov al,[edx] ; 0040BBFA 8A02
    %if ($ - %%insn_0040bbfa) > 2
        %error "LONG_0040BBFA"
    %endif
    times 2 - ($ - %%insn_0040bbfa) db 0
    %%insn_0040bbfc:
    shl eax,byte 0x8 ; 0040BBFC C1E008
    %if ($ - %%insn_0040bbfc) > 3
        %error "LONG_0040BBFC"
    %endif
    times 3 - ($ - %%insn_0040bbfc) db 0
    %%insn_0040bbff:
    mov cx,[ebp-0x1c] ; 0040BBFF 668B4DE4
    %if ($ - %%insn_0040bbff) > 4
        %error "LONG_0040BBFF"
    %endif
    times 4 - ($ - %%insn_0040bbff) db 0
    db 0x66, 0x03, 0xC8 ; 0040BC03 6603C8 | add cx,ax | encoding preserved
    %%insn_0040bc06:
    mov [ebp-0x1c],cx ; 0040BC06 66894DE4
    %if ($ - %%insn_0040bc06) > 4
        %error "LONG_0040BC06"
    %endif
    times 4 - ($ - %%insn_0040bc06) db 0
    %%insn_0040bc0a:
    mov edx,[ebp+0x8] ; 0040BC0A 8B5508
    %if ($ - %%insn_0040bc0a) > 3
        %error "LONG_0040BC0A"
    %endif
    times 3 - ($ - %%insn_0040bc0a) db 0
    %%insn_0040bc0d:
    add edx,0x1 ; 0040BC0D 83C201
    %if ($ - %%insn_0040bc0d) > 3
        %error "LONG_0040BC0D"
    %endif
    times 3 - ($ - %%insn_0040bc0d) db 0
    %%insn_0040bc10:
    mov [ebp+0x8],edx ; 0040BC10 895508
    %if ($ - %%insn_0040bc10) > 3
        %error "LONG_0040BC10"
    %endif
    times 3 - ($ - %%insn_0040bc10) db 0
    %%insn_0040bc13:
    mov eax,[ebp-0x30] ; 0040BC13 8B45D0
    %if ($ - %%insn_0040bc13) > 3
        %error "LONG_0040BC13"
    %endif
    times 3 - ($ - %%insn_0040bc13) db 0
    %%insn_0040bc16:
    and eax,0xffff ; 0040BC16 25FFFF0000
    %if ($ - %%insn_0040bc16) > 5
        %error "LONG_0040BC16"
    %endif
    times 5 - ($ - %%insn_0040bc16) db 0
    %%insn_0040bc1b:
    mov ecx,[0x41bd70] ; 0040BC1B 8B0D70BD4100
    %if ($ - %%insn_0040bc1b) > 6
        %error "LONG_0040BC1B"
    %endif
    times 6 - ($ - %%insn_0040bc1b) db 0
    %%insn_0040bc21:
    lea edx,[ecx+eax*4] ; 0040BC21 8D1481
    %if ($ - %%insn_0040bc21) > 3
        %error "LONG_0040BC21"
    %endif
    times 3 - ($ - %%insn_0040bc21) db 0
    %%insn_0040bc24:
    add edx,[ebp+0x18] ; 0040BC24 035518
    %if ($ - %%insn_0040bc24) > 3
        %error "LONG_0040BC24"
    %endif
    times 3 - ($ - %%insn_0040bc24) db 0
    %%insn_0040bc27:
    mov [ebp-0x54],edx ; 0040BC27 8955AC
    %if ($ - %%insn_0040bc27) > 3
        %error "LONG_0040BC27"
    %endif
    times 3 - ($ - %%insn_0040bc27) db 0
    %%insn_0040bc2a:
    mov eax,[ebp-0x54] ; 0040BC2A 8B45AC
    %if ($ - %%insn_0040bc2a) > 3
        %error "LONG_0040BC2A"
    %endif
    times 3 - ($ - %%insn_0040bc2a) db 0
    %%insn_0040bc2d:
    cmp eax,[0x42135c] ; 0040BC2D 3B055C134200
    %if ($ - %%insn_0040bc2d) > 6
        %error "LONG_0040BC2D"
    %endif
    times 6 - ($ - %%insn_0040bc2d) db 0
    %%insn_0040bc33:
    jnl short 0x40bc3e ; 0040BC33 7D09
    %if ($ - %%insn_0040bc33) > 2
        %error "LONG_0040BC33"
    %endif
    times 2 - ($ - %%insn_0040bc33) db 0
    %%insn_0040bc35:
    mov ecx,[ebp-0x54] ; 0040BC35 8B4DAC
    %if ($ - %%insn_0040bc35) > 3
        %error "LONG_0040BC35"
    %endif
    times 3 - ($ - %%insn_0040bc35) db 0
    %%insn_0040bc38:
    mov [0x42135c],ecx ; 0040BC38 890D5C134200
    %if ($ - %%insn_0040bc38) > 6
        %error "LONG_0040BC38"
    %endif
    times 6 - ($ - %%insn_0040bc38) db 0
    %%insn_0040bc3e:
    mov edx,[ebp-0x54] ; 0040BC3E 8B55AC
    %if ($ - %%insn_0040bc3e) > 3
        %error "LONG_0040BC3E"
    %endif
    times 3 - ($ - %%insn_0040bc3e) db 0
    %%insn_0040bc41:
    add edx,0x4 ; 0040BC41 83C204
    %if ($ - %%insn_0040bc41) > 3
        %error "LONG_0040BC41"
    %endif
    times 3 - ($ - %%insn_0040bc41) db 0
    %%insn_0040bc44:
    mov [ebp-0x54],edx ; 0040BC44 8955AC
    %if ($ - %%insn_0040bc44) > 3
        %error "LONG_0040BC44"
    %endif
    times 3 - ($ - %%insn_0040bc44) db 0
    %%insn_0040bc47:
    mov eax,[ebp-0x54] ; 0040BC47 8B45AC
    %if ($ - %%insn_0040bc47) > 3
        %error "LONG_0040BC47"
    %endif
    times 3 - ($ - %%insn_0040bc47) db 0
    %%insn_0040bc4a:
    cmp eax,[0x421360] ; 0040BC4A 3B0560134200
    %if ($ - %%insn_0040bc4a) > 6
        %error "LONG_0040BC4A"
    %endif
    times 6 - ($ - %%insn_0040bc4a) db 0
    %%insn_0040bc50:
    jng short 0x40bc5b ; 0040BC50 7E09
    %if ($ - %%insn_0040bc50) > 2
        %error "LONG_0040BC50"
    %endif
    times 2 - ($ - %%insn_0040bc50) db 0
    %%insn_0040bc52:
    mov ecx,[ebp-0x54] ; 0040BC52 8B4DAC
    %if ($ - %%insn_0040bc52) > 3
        %error "LONG_0040BC52"
    %endif
    times 3 - ($ - %%insn_0040bc52) db 0
    %%insn_0040bc55:
    mov [0x421360],ecx ; 0040BC55 890D60134200
    %if ($ - %%insn_0040bc55) > 6
        %error "LONG_0040BC55"
    %endif
    times 6 - ($ - %%insn_0040bc55) db 0
    %%insn_0040bc5b:
    mov edx,[ebp-0x3c] ; 0040BC5B 8B55C4
    %if ($ - %%insn_0040bc5b) > 3
        %error "LONG_0040BC5B"
    %endif
    times 3 - ($ - %%insn_0040bc5b) db 0
    %%insn_0040bc5e:
    and edx,0xffff ; 0040BC5E 81E2FFFF0000
    %if ($ - %%insn_0040bc5e) > 6
        %error "LONG_0040BC5E"
    %endif
    times 6 - ($ - %%insn_0040bc5e) db 0
    %%insn_0040bc64:
    cmp edx,[0x421354] ; 0040BC64 3B1554134200
    %if ($ - %%insn_0040bc64) > 6
        %error "LONG_0040BC64"
    %endif
    times 6 - ($ - %%insn_0040bc64) db 0
    %%insn_0040bc6a:
    jnl short 0x40bc79 ; 0040BC6A 7D0D
    %if ($ - %%insn_0040bc6a) > 2
        %error "LONG_0040BC6A"
    %endif
    times 2 - ($ - %%insn_0040bc6a) db 0
    %%insn_0040bc6c:
    mov eax,[ebp-0x3c] ; 0040BC6C 8B45C4
    %if ($ - %%insn_0040bc6c) > 3
        %error "LONG_0040BC6C"
    %endif
    times 3 - ($ - %%insn_0040bc6c) db 0
    %%insn_0040bc6f:
    and eax,0xffff ; 0040BC6F 25FFFF0000
    %if ($ - %%insn_0040bc6f) > 5
        %error "LONG_0040BC6F"
    %endif
    times 5 - ($ - %%insn_0040bc6f) db 0
    %%insn_0040bc74:
    mov [0x421354],eax ; 0040BC74 A354134200
    %if ($ - %%insn_0040bc74) > 5
        %error "LONG_0040BC74"
    %endif
    times 5 - ($ - %%insn_0040bc74) db 0
    %%insn_0040bc79:
    mov ecx,[ebp-0x3c] ; 0040BC79 8B4DC4
    %if ($ - %%insn_0040bc79) > 3
        %error "LONG_0040BC79"
    %endif
    times 3 - ($ - %%insn_0040bc79) db 0
    %%insn_0040bc7c:
    and ecx,0xffff ; 0040BC7C 81E1FFFF0000
    %if ($ - %%insn_0040bc7c) > 6
        %error "LONG_0040BC7C"
    %endif
    times 6 - ($ - %%insn_0040bc7c) db 0
    %%insn_0040bc82:
    add ecx,0x4 ; 0040BC82 83C104
    %if ($ - %%insn_0040bc82) > 3
        %error "LONG_0040BC82"
    %endif
    times 3 - ($ - %%insn_0040bc82) db 0
    %%insn_0040bc85:
    cmp ecx,[0x421358] ; 0040BC85 3B0D58134200
    %if ($ - %%insn_0040bc85) > 6
        %error "LONG_0040BC85"
    %endif
    times 6 - ($ - %%insn_0040bc85) db 0
    %%insn_0040bc8b:
    jng short 0x40bc9f ; 0040BC8B 7E12
    %if ($ - %%insn_0040bc8b) > 2
        %error "LONG_0040BC8B"
    %endif
    times 2 - ($ - %%insn_0040bc8b) db 0
    %%insn_0040bc8d:
    mov edx,[ebp-0x3c] ; 0040BC8D 8B55C4
    %if ($ - %%insn_0040bc8d) > 3
        %error "LONG_0040BC8D"
    %endif
    times 3 - ($ - %%insn_0040bc8d) db 0
    %%insn_0040bc90:
    and edx,0xffff ; 0040BC90 81E2FFFF0000
    %if ($ - %%insn_0040bc90) > 6
        %error "LONG_0040BC90"
    %endif
    times 6 - ($ - %%insn_0040bc90) db 0
    %%insn_0040bc96:
    add edx,0x4 ; 0040BC96 83C204
    %if ($ - %%insn_0040bc96) > 3
        %error "LONG_0040BC96"
    %endif
    times 3 - ($ - %%insn_0040bc96) db 0
    %%insn_0040bc99:
    mov [0x421358],edx ; 0040BC99 891558134200
    %if ($ - %%insn_0040bc99) > 6
        %error "LONG_0040BC99"
    %endif
    times 6 - ($ - %%insn_0040bc99) db 0
    %%insn_0040bc9f:
    mov eax,[ebp+0x8] ; 0040BC9F 8B4508
    %if ($ - %%insn_0040bc9f) > 3
        %error "LONG_0040BC9F"
    %endif
    times 3 - ($ - %%insn_0040bc9f) db 0
    db 0x33, 0xC9 ; 0040BCA2 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040bca4:
    mov cl,[eax] ; 0040BCA4 8A08
    %if ($ - %%insn_0040bca4) > 2
        %error "LONG_0040BCA4"
    %endif
    times 2 - ($ - %%insn_0040bca4) db 0
    %%insn_0040bca6:
    mov edx,[0x420e44] ; 0040BCA6 8B15440E4200
    %if ($ - %%insn_0040bca6) > 6
        %error "LONG_0040BCA6"
    %endif
    times 6 - ($ - %%insn_0040bca6) db 0
    %%insn_0040bcac:
    mov eax,[edx+ecx*4] ; 0040BCAC 8B048A
    %if ($ - %%insn_0040bcac) > 3
        %error "LONG_0040BCAC"
    %endif
    times 3 - ($ - %%insn_0040bcac) db 0
    %%insn_0040bcaf:
    mov [ebp-0xc],eax ; 0040BCAF 8945F4
    %if ($ - %%insn_0040bcaf) > 3
        %error "LONG_0040BCAF"
    %endif
    times 3 - ($ - %%insn_0040bcaf) db 0
    %%insn_0040bcb2:
    mov ecx,[ebp+0x8] ; 0040BCB2 8B4D08
    %if ($ - %%insn_0040bcb2) > 3
        %error "LONG_0040BCB2"
    %endif
    times 3 - ($ - %%insn_0040bcb2) db 0
    %%insn_0040bcb5:
    add ecx,0x1 ; 0040BCB5 83C101
    %if ($ - %%insn_0040bcb5) > 3
        %error "LONG_0040BCB5"
    %endif
    times 3 - ($ - %%insn_0040bcb5) db 0
    %%insn_0040bcb8:
    mov [ebp+0x8],ecx ; 0040BCB8 894D08
    %if ($ - %%insn_0040bcb8) > 3
        %error "LONG_0040BCB8"
    %endif
    times 3 - ($ - %%insn_0040bcb8) db 0
    %%insn_0040bcbb:
    mov edx,[ebp+0x8] ; 0040BCBB 8B5508
    %if ($ - %%insn_0040bcbb) > 3
        %error "LONG_0040BCBB"
    %endif
    times 3 - ($ - %%insn_0040bcbb) db 0
    db 0x33, 0xC0 ; 0040BCBE 33C0 | xor eax,eax | encoding preserved
    %%insn_0040bcc0:
    mov al,[edx] ; 0040BCC0 8A02
    %if ($ - %%insn_0040bcc0) > 2
        %error "LONG_0040BCC0"
    %endif
    times 2 - ($ - %%insn_0040bcc0) db 0
    %%insn_0040bcc2:
    mov ecx,[0x420e44] ; 0040BCC2 8B0D440E4200
    %if ($ - %%insn_0040bcc2) > 6
        %error "LONG_0040BCC2"
    %endif
    times 6 - ($ - %%insn_0040bcc2) db 0
    %%insn_0040bcc8:
    mov edx,[ecx+eax*4] ; 0040BCC8 8B1481
    %if ($ - %%insn_0040bcc8) > 3
        %error "LONG_0040BCC8"
    %endif
    times 3 - ($ - %%insn_0040bcc8) db 0
    %%insn_0040bccb:
    mov [ebp-0x8],edx ; 0040BCCB 8955F8
    %if ($ - %%insn_0040bccb) > 3
        %error "LONG_0040BCCB"
    %endif
    times 3 - ($ - %%insn_0040bccb) db 0
    %%insn_0040bcce:
    mov eax,[ebp+0x8] ; 0040BCCE 8B4508
    %if ($ - %%insn_0040bcce) > 3
        %error "LONG_0040BCCE"
    %endif
    times 3 - ($ - %%insn_0040bcce) db 0
    %%insn_0040bcd1:
    add eax,0x1 ; 0040BCD1 83C001
    %if ($ - %%insn_0040bcd1) > 3
        %error "LONG_0040BCD1"
    %endif
    times 3 - ($ - %%insn_0040bcd1) db 0
    %%insn_0040bcd4:
    mov [ebp+0x8],eax ; 0040BCD4 894508
    %if ($ - %%insn_0040bcd4) > 3
        %error "LONG_0040BCD4"
    %endif
    times 3 - ($ - %%insn_0040bcd4) db 0
    %%insn_0040bcd7:
    mov ecx,[ebp-0x1c] ; 0040BCD7 8B4DE4
    %if ($ - %%insn_0040bcd7) > 3
        %error "LONG_0040BCD7"
    %endif
    times 3 - ($ - %%insn_0040bcd7) db 0
    %%insn_0040bcda:
    and ecx,0xffff ; 0040BCDA 81E1FFFF0000
    %if ($ - %%insn_0040bcda) > 6
        %error "LONG_0040BCDA"
    %endif
    times 6 - ($ - %%insn_0040bcda) db 0
    %%insn_0040bce0:
    and ecx,0x8000 ; 0040BCE0 81E100800000
    %if ($ - %%insn_0040bce0) > 6
        %error "LONG_0040BCE0"
    %endif
    times 6 - ($ - %%insn_0040bce0) db 0
    %%insn_0040bce6:
    test ecx,ecx ; 0040BCE6 85C9
    %if ($ - %%insn_0040bce6) > 2
        %error "LONG_0040BCE6"
    %endif
    times 2 - ($ - %%insn_0040bce6) db 0
    %%insn_0040bce8:
    jz short 0x40bd0b ; 0040BCE8 7421
    %if ($ - %%insn_0040bce8) > 2
        %error "LONG_0040BCE8"
    %endif
    times 2 - ($ - %%insn_0040bce8) db 0
    %%insn_0040bcea:
    mov edx,[ebp-0x1c] ; 0040BCEA 8B55E4
    %if ($ - %%insn_0040bcea) > 3
        %error "LONG_0040BCEA"
    %endif
    times 3 - ($ - %%insn_0040bcea) db 0
    %%insn_0040bced:
    and edx,0xffff ; 0040BCED 81E2FFFF0000
    %if ($ - %%insn_0040bced) > 6
        %error "LONG_0040BCED"
    %endif
    times 6 - ($ - %%insn_0040bced) db 0
    %%insn_0040bcf3:
    not edx ; 0040BCF3 F7D2
    %if ($ - %%insn_0040bcf3) > 2
        %error "LONG_0040BCF3"
    %endif
    times 2 - ($ - %%insn_0040bcf3) db 0
    %%insn_0040bcf5:
    mov [ebp-0x1c],dx ; 0040BCF5 668955E4
    %if ($ - %%insn_0040bcf5) > 4
        %error "LONG_0040BCF5"
    %endif
    times 4 - ($ - %%insn_0040bcf5) db 0
    %%insn_0040bcf9:
    mov eax,[ebp-0xc] ; 0040BCF9 8B45F4
    %if ($ - %%insn_0040bcf9) > 3
        %error "LONG_0040BCF9"
    %endif
    times 3 - ($ - %%insn_0040bcf9) db 0
    %%insn_0040bcfc:
    mov [ebp-0x28],eax ; 0040BCFC 8945D8
    %if ($ - %%insn_0040bcfc) > 3
        %error "LONG_0040BCFC"
    %endif
    times 3 - ($ - %%insn_0040bcfc) db 0
    %%insn_0040bcff:
    mov ecx,[ebp-0x8] ; 0040BCFF 8B4DF8
    %if ($ - %%insn_0040bcff) > 3
        %error "LONG_0040BCFF"
    %endif
    times 3 - ($ - %%insn_0040bcff) db 0
    %%insn_0040bd02:
    mov [ebp-0xc],ecx ; 0040BD02 894DF4
    %if ($ - %%insn_0040bd02) > 3
        %error "LONG_0040BD02"
    %endif
    times 3 - ($ - %%insn_0040bd02) db 0
    %%insn_0040bd05:
    mov edx,[ebp-0x28] ; 0040BD05 8B55D8
    %if ($ - %%insn_0040bd05) > 3
        %error "LONG_0040BD05"
    %endif
    times 3 - ($ - %%insn_0040bd05) db 0
    %%insn_0040bd08:
    mov [ebp-0x8],edx ; 0040BD08 8955F8
    %if ($ - %%insn_0040bd08) > 3
        %error "LONG_0040BD08"
    %endif
    times 3 - ($ - %%insn_0040bd08) db 0
    %%insn_0040bd0b:
    mov eax,[ebp-0x1c] ; 0040BD0B 8B45E4
    %if ($ - %%insn_0040bd0b) > 3
        %error "LONG_0040BD0B"
    %endif
    times 3 - ($ - %%insn_0040bd0b) db 0
    %%insn_0040bd0e:
    and eax,0xffff ; 0040BD0E 25FFFF0000
    %if ($ - %%insn_0040bd0e) > 5
        %error "LONG_0040BD0E"
    %endif
    times 5 - ($ - %%insn_0040bd0e) db 0
    %%insn_0040bd13:
    shl eax,byte 0x2 ; 0040BD13 C1E002
    %if ($ - %%insn_0040bd13) > 3
        %error "LONG_0040BD13"
    %endif
    times 3 - ($ - %%insn_0040bd13) db 0
    %%insn_0040bd16:
    mov ecx,[0x420e44] ; 0040BD16 8B0D440E4200
    %if ($ - %%insn_0040bd16) > 6
        %error "LONG_0040BD16"
    %endif
    times 6 - ($ - %%insn_0040bd16) db 0
    %%insn_0040bd1c:
    lea edx,[ecx+eax*4+0x400] ; 0040BD1C 8D948100040000
    %if ($ - %%insn_0040bd1c) > 7
        %error "LONG_0040BD1C"
    %endif
    times 7 - ($ - %%insn_0040bd1c) db 0
    %%insn_0040bd23:
    mov [ebp-0x38],edx ; 0040BD23 8955C8
    %if ($ - %%insn_0040bd23) > 3
        %error "LONG_0040BD23"
    %endif
    times 3 - ($ - %%insn_0040bd23) db 0
    %%insn_0040bd26:
    mov eax,[ebp-0x48] ; 0040BD26 8B45B8
    %if ($ - %%insn_0040bd26) > 3
        %error "LONG_0040BD26"
    %endif
    times 3 - ($ - %%insn_0040bd26) db 0
    %%insn_0040bd29:
    mov ecx,[ebp-0x4] ; 0040BD29 8B4DFC
    %if ($ - %%insn_0040bd29) > 3
        %error "LONG_0040BD29"
    %endif
    times 3 - ($ - %%insn_0040bd29) db 0
    %%insn_0040bd2c:
    lea edx,[ecx+eax*4] ; 0040BD2C 8D1481
    %if ($ - %%insn_0040bd2c) > 3
        %error "LONG_0040BD2C"
    %endif
    times 3 - ($ - %%insn_0040bd2c) db 0
    %%insn_0040bd2f:
    mov [ebp-0x40],edx ; 0040BD2F 8955C0
    %if ($ - %%insn_0040bd2f) > 3
        %error "LONG_0040BD2F"
    %endif
    times 3 - ($ - %%insn_0040bd2f) db 0
    db 0x33, 0xC0 ; 0040BD32 33C0 | xor eax,eax | encoding preserved
    %%insn_0040bd34:
    mov ax,[0x4212d8] ; 0040BD34 66A1D8124200
    %if ($ - %%insn_0040bd34) > 6
        %error "LONG_0040BD34"
    %endif
    times 6 - ($ - %%insn_0040bd34) db 0
    %%insn_0040bd3a:
    and eax,0x80 ; 0040BD3A 2580000000
    %if ($ - %%insn_0040bd3a) > 5
        %error "LONG_0040BD3A"
    %endif
    times 5 - ($ - %%insn_0040bd3a) db 0
    %%insn_0040bd3f:
    test eax,eax ; 0040BD3F 85C0
    %if ($ - %%insn_0040bd3f) > 2
        %error "LONG_0040BD3F"
    %endif
    times 2 - ($ - %%insn_0040bd3f) db 0
    %%insn_0040bd41:
    jz 0x40be92 ; 0040BD41 0F844B010000
    %if ($ - %%insn_0040bd41) > 6
        %error "LONG_0040BD41"
    %endif
    times 6 - ($ - %%insn_0040bd41) db 0
    %%insn_0040bd47:
    mov ecx,[ebp-0x4] ; 0040BD47 8B4DFC
    %if ($ - %%insn_0040bd47) > 3
        %error "LONG_0040BD47"
    %endif
    times 3 - ($ - %%insn_0040bd47) db 0
    %%insn_0040bd4a:
    mov [ebp-0x98],ecx ; 0040BD4A 898D68FFFFFF
    %if ($ - %%insn_0040bd4a) > 6
        %error "LONG_0040BD4A"
    %endif
    times 6 - ($ - %%insn_0040bd4a) db 0
    %%insn_0040bd50:
    mov edx,[ebp-0x48] ; 0040BD50 8B55B8
    %if ($ - %%insn_0040bd50) > 3
        %error "LONG_0040BD50"
    %endif
    times 3 - ($ - %%insn_0040bd50) db 0
    %%insn_0040bd53:
    mov eax,[0x420e40] ; 0040BD53 A1400E4200
    %if ($ - %%insn_0040bd53) > 5
        %error "LONG_0040BD53"
    %endif
    times 5 - ($ - %%insn_0040bd53) db 0
    %%insn_0040bd58:
    lea ecx,[eax+edx*4] ; 0040BD58 8D0C90
    %if ($ - %%insn_0040bd58) > 3
        %error "LONG_0040BD58"
    %endif
    times 3 - ($ - %%insn_0040bd58) db 0
    %%insn_0040bd5b:
    mov [ebp-0x94],ecx ; 0040BD5B 898D6CFFFFFF
    %if ($ - %%insn_0040bd5b) > 6
        %error "LONG_0040BD5B"
    %endif
    times 6 - ($ - %%insn_0040bd5b) db 0
    %%insn_0040bd61:
    mov dword [ebp-0x90],0x0 ; 0040BD61 C78570FFFFFF00000000
    %if ($ - %%insn_0040bd61) > 10
        %error "LONG_0040BD61"
    %endif
    times 10 - ($ - %%insn_0040bd61) db 0
    %%insn_0040bd6b:
    jmp short 0x40bd7c ; 0040BD6B EB0F
    %if ($ - %%insn_0040bd6b) > 2
        %error "LONG_0040BD6B"
    %endif
    times 2 - ($ - %%insn_0040bd6b) db 0
    %%insn_0040bd6d:
    mov edx,[ebp-0x90] ; 0040BD6D 8B9570FFFFFF
    %if ($ - %%insn_0040bd6d) > 6
        %error "LONG_0040BD6D"
    %endif
    times 6 - ($ - %%insn_0040bd6d) db 0
    %%insn_0040bd73:
    add edx,0x1 ; 0040BD73 83C201
    %if ($ - %%insn_0040bd73) > 3
        %error "LONG_0040BD73"
    %endif
    times 3 - ($ - %%insn_0040bd73) db 0
    %%insn_0040bd76:
    mov [ebp-0x90],edx ; 0040BD76 899570FFFFFF
    %if ($ - %%insn_0040bd76) > 6
        %error "LONG_0040BD76"
    %endif
    times 6 - ($ - %%insn_0040bd76) db 0
    %%insn_0040bd7c:
    cmp dword [ebp-0x90],0x4 ; 0040BD7C 83BD70FFFFFF04
    %if ($ - %%insn_0040bd7c) > 7
        %error "LONG_0040BD7C"
    %endif
    times 7 - ($ - %%insn_0040bd7c) db 0
    %%insn_0040bd83:
    jnl 0x40be8d ; 0040BD83 0F8D04010000
    %if ($ - %%insn_0040bd83) > 6
        %error "LONG_0040BD83"
    %endif
    times 6 - ($ - %%insn_0040bd83) db 0
    %%insn_0040bd89:
    mov eax,[ebp-0x38] ; 0040BD89 8B45C8
    %if ($ - %%insn_0040bd89) > 3
        %error "LONG_0040BD89"
    %endif
    times 3 - ($ - %%insn_0040bd89) db 0
    %%insn_0040bd8c:
    mov ecx,[eax] ; 0040BD8C 8B08
    %if ($ - %%insn_0040bd8c) > 2
        %error "LONG_0040BD8C"
    %endif
    times 2 - ($ - %%insn_0040bd8c) db 0
    %%insn_0040bd8e:
    mov [ebp-0x10],ecx ; 0040BD8E 894DF0
    %if ($ - %%insn_0040bd8e) > 3
        %error "LONG_0040BD8E"
    %endif
    times 3 - ($ - %%insn_0040bd8e) db 0
    %%insn_0040bd91:
    mov edx,[ebp-0x38] ; 0040BD91 8B55C8
    %if ($ - %%insn_0040bd91) > 3
        %error "LONG_0040BD91"
    %endif
    times 3 - ($ - %%insn_0040bd91) db 0
    %%insn_0040bd94:
    add edx,0x4 ; 0040BD94 83C204
    %if ($ - %%insn_0040bd94) > 3
        %error "LONG_0040BD94"
    %endif
    times 3 - ($ - %%insn_0040bd94) db 0
    %%insn_0040bd97:
    mov [ebp-0x38],edx ; 0040BD97 8955C8
    %if ($ - %%insn_0040bd97) > 3
        %error "LONG_0040BD97"
    %endif
    times 3 - ($ - %%insn_0040bd97) db 0
    %%insn_0040bd9a:
    mov eax,[ebp-0x8] ; 0040BD9A 8B45F8
    %if ($ - %%insn_0040bd9a) > 3
        %error "LONG_0040BD9A"
    %endif
    times 3 - ($ - %%insn_0040bd9a) db 0
    %%insn_0040bd9d:
    and eax,[ebp-0x10] ; 0040BD9D 2345F0
    %if ($ - %%insn_0040bd9d) > 3
        %error "LONG_0040BD9D"
    %endif
    times 3 - ($ - %%insn_0040bd9d) db 0
    %%insn_0040bda0:
    mov ecx,[ebp-0x10] ; 0040BDA0 8B4DF0
    %if ($ - %%insn_0040bda0) > 3
        %error "LONG_0040BDA0"
    %endif
    times 3 - ($ - %%insn_0040bda0) db 0
    %%insn_0040bda3:
    not ecx ; 0040BDA3 F7D1
    %if ($ - %%insn_0040bda3) > 2
        %error "LONG_0040BDA3"
    %endif
    times 2 - ($ - %%insn_0040bda3) db 0
    %%insn_0040bda5:
    mov edx,[ebp-0xc] ; 0040BDA5 8B55F4
    %if ($ - %%insn_0040bda5) > 3
        %error "LONG_0040BDA5"
    %endif
    times 3 - ($ - %%insn_0040bda5) db 0
    db 0x23, 0xD1 ; 0040BDA8 23D1 | and edx,ecx | encoding preserved
    db 0x0B, 0xC2 ; 0040BDAA 0BC2 | or eax,edx | encoding preserved
    %%insn_0040bdac:
    mov [ebp-0xa0],eax ; 0040BDAC 898560FFFFFF
    %if ($ - %%insn_0040bdac) > 6
        %error "LONG_0040BDAC"
    %endif
    times 6 - ($ - %%insn_0040bdac) db 0
    %%insn_0040bdb2:
    mov dword [ebp-0x8c],0x0 ; 0040BDB2 C78574FFFFFF00000000
    %if ($ - %%insn_0040bdb2) > 10
        %error "LONG_0040BDB2"
    %endif
    times 10 - ($ - %%insn_0040bdb2) db 0
    %%insn_0040bdbc:
    jmp short 0x40bdcd ; 0040BDBC EB0F
    %if ($ - %%insn_0040bdbc) > 2
        %error "LONG_0040BDBC"
    %endif
    times 2 - ($ - %%insn_0040bdbc) db 0
    %%insn_0040bdbe:
    mov eax,[ebp-0x8c] ; 0040BDBE 8B8574FFFFFF
    %if ($ - %%insn_0040bdbe) > 6
        %error "LONG_0040BDBE"
    %endif
    times 6 - ($ - %%insn_0040bdbe) db 0
    %%insn_0040bdc4:
    add eax,0x1 ; 0040BDC4 83C001
    %if ($ - %%insn_0040bdc4) > 3
        %error "LONG_0040BDC4"
    %endif
    times 3 - ($ - %%insn_0040bdc4) db 0
    %%insn_0040bdc7:
    mov [ebp-0x8c],eax ; 0040BDC7 898574FFFFFF
    %if ($ - %%insn_0040bdc7) > 6
        %error "LONG_0040BDC7"
    %endif
    times 6 - ($ - %%insn_0040bdc7) db 0
    %%insn_0040bdcd:
    cmp dword [ebp-0x8c],0x4 ; 0040BDCD 83BD74FFFFFF04
    %if ($ - %%insn_0040bdcd) > 7
        %error "LONG_0040BDCD"
    %endif
    times 7 - ($ - %%insn_0040bdcd) db 0
    %%insn_0040bdd4:
    jnl 0x40be6b ; 0040BDD4 0F8D91000000
    %if ($ - %%insn_0040bdd4) > 6
        %error "LONG_0040BDD4"
    %endif
    times 6 - ($ - %%insn_0040bdd4) db 0
    %%insn_0040bdda:
    mov ecx,[ebp-0x94] ; 0040BDDA 8B8D6CFFFFFF
    %if ($ - %%insn_0040bdda) > 6
        %error "LONG_0040BDDA"
    %endif
    times 6 - ($ - %%insn_0040bdda) db 0
    %%insn_0040bde0:
    add ecx,[ebp-0x8c] ; 0040BDE0 038D74FFFFFF
    %if ($ - %%insn_0040bde0) > 6
        %error "LONG_0040BDE0"
    %endif
    times 6 - ($ - %%insn_0040bde0) db 0
    %%insn_0040bde6:
    mov [ebp-0xa4],ecx ; 0040BDE6 898D5CFFFFFF
    %if ($ - %%insn_0040bde6) > 6
        %error "LONG_0040BDE6"
    %endif
    times 6 - ($ - %%insn_0040bde6) db 0
    %%insn_0040bdec:
    mov ecx,[ebp-0x8c] ; 0040BDEC 8B8D74FFFFFF
    %if ($ - %%insn_0040bdec) > 6
        %error "LONG_0040BDEC"
    %endif
    times 6 - ($ - %%insn_0040bdec) db 0
    %%insn_0040bdf2:
    shl ecx,byte 0x3 ; 0040BDF2 C1E103
    %if ($ - %%insn_0040bdf2) > 3
        %error "LONG_0040BDF2"
    %endif
    times 3 - ($ - %%insn_0040bdf2) db 0
    %%insn_0040bdf5:
    mov edx,[ebp-0xa0] ; 0040BDF5 8B9560FFFFFF
    %if ($ - %%insn_0040bdf5) > 6
        %error "LONG_0040BDF5"
    %endif
    times 6 - ($ - %%insn_0040bdf5) db 0
    %%insn_0040bdfb:
    sar edx,cl ; 0040BDFB D3FA
    %if ($ - %%insn_0040bdfb) > 2
        %error "LONG_0040BDFB"
    %endif
    times 2 - ($ - %%insn_0040bdfb) db 0
    %%insn_0040bdfd:
    and edx,0xff ; 0040BDFD 81E2FF000000
    %if ($ - %%insn_0040bdfd) > 6
        %error "LONG_0040BDFD"
    %endif
    times 6 - ($ - %%insn_0040bdfd) db 0
    %%insn_0040be03:
    mov [ebp-0x9c],dl ; 0040BE03 889564FFFFFF
    %if ($ - %%insn_0040be03) > 6
        %error "LONG_0040BE03"
    %endif
    times 6 - ($ - %%insn_0040be03) db 0
    %%insn_0040be09:
    mov eax,[0x4212d0] ; 0040BE09 A1D0124200
    %if ($ - %%insn_0040be09) > 5
        %error "LONG_0040BE09"
    %endif
    times 5 - ($ - %%insn_0040be09) db 0
    %%insn_0040be0e:
    add eax,[ebp-0xa4] ; 0040BE0E 03855CFFFFFF
    %if ($ - %%insn_0040be0e) > 6
        %error "LONG_0040BE0E"
    %endif
    times 6 - ($ - %%insn_0040be0e) db 0
    db 0x33, 0xC9 ; 0040BE14 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040be16:
    mov cl,[eax] ; 0040BE16 8A08
    %if ($ - %%insn_0040be16) > 2
        %error "LONG_0040BE16"
    %endif
    times 2 - ($ - %%insn_0040be16) db 0
    %%insn_0040be18:
    cmp ecx,0xff ; 0040BE18 81F9FF000000
    %if ($ - %%insn_0040be18) > 6
        %error "LONG_0040BE18"
    %endif
    times 6 - ($ - %%insn_0040be18) db 0
    %%insn_0040be1e:
    jz short 0x40be66 ; 0040BE1E 7446
    %if ($ - %%insn_0040be1e) > 2
        %error "LONG_0040BE1E"
    %endif
    times 2 - ($ - %%insn_0040be1e) db 0
    %%insn_0040be20:
    mov edx,[ebp-0x9c] ; 0040BE20 8B9564FFFFFF
    %if ($ - %%insn_0040be20) > 6
        %error "LONG_0040BE20"
    %endif
    times 6 - ($ - %%insn_0040be20) db 0
    %%insn_0040be26:
    and edx,0xff ; 0040BE26 81E2FF000000
    %if ($ - %%insn_0040be26) > 6
        %error "LONG_0040BE26"
    %endif
    times 6 - ($ - %%insn_0040be26) db 0
    %%insn_0040be2c:
    cmp edx,0xff ; 0040BE2C 81FAFF000000
    %if ($ - %%insn_0040be2c) > 6
        %error "LONG_0040BE2C"
    %endif
    times 6 - ($ - %%insn_0040be2c) db 0
    %%insn_0040be32:
    jnz short 0x40be52 ; 0040BE32 751E
    %if ($ - %%insn_0040be32) > 2
        %error "LONG_0040BE32"
    %endif
    times 2 - ($ - %%insn_0040be32) db 0
    %%insn_0040be34:
    mov eax,[ebp-0x98] ; 0040BE34 8B8568FFFFFF
    %if ($ - %%insn_0040be34) > 6
        %error "LONG_0040BE34"
    %endif
    times 6 - ($ - %%insn_0040be34) db 0
    %%insn_0040be3a:
    add eax,[ebp-0xa4] ; 0040BE3A 03855CFFFFFF
    %if ($ - %%insn_0040be3a) > 6
        %error "LONG_0040BE3A"
    %endif
    times 6 - ($ - %%insn_0040be3a) db 0
    %%insn_0040be40:
    mov ecx,[0x4212d0] ; 0040BE40 8B0DD0124200
    %if ($ - %%insn_0040be40) > 6
        %error "LONG_0040BE40"
    %endif
    times 6 - ($ - %%insn_0040be40) db 0
    %%insn_0040be46:
    add ecx,[ebp-0xa4] ; 0040BE46 038D5CFFFFFF
    %if ($ - %%insn_0040be46) > 6
        %error "LONG_0040BE46"
    %endif
    times 6 - ($ - %%insn_0040be46) db 0
    %%insn_0040be4c:
    mov dl,[ecx] ; 0040BE4C 8A11
    %if ($ - %%insn_0040be4c) > 2
        %error "LONG_0040BE4C"
    %endif
    times 2 - ($ - %%insn_0040be4c) db 0
    %%insn_0040be4e:
    mov [eax],dl ; 0040BE4E 8810
    %if ($ - %%insn_0040be4e) > 2
        %error "LONG_0040BE4E"
    %endif
    times 2 - ($ - %%insn_0040be4e) db 0
    %%insn_0040be50:
    jmp short 0x40be66 ; 0040BE50 EB14
    %if ($ - %%insn_0040be50) > 2
        %error "LONG_0040BE50"
    %endif
    times 2 - ($ - %%insn_0040be50) db 0
    %%insn_0040be52:
    mov eax,[ebp-0x98] ; 0040BE52 8B8568FFFFFF
    %if ($ - %%insn_0040be52) > 6
        %error "LONG_0040BE52"
    %endif
    times 6 - ($ - %%insn_0040be52) db 0
    %%insn_0040be58:
    add eax,[ebp-0xa4] ; 0040BE58 03855CFFFFFF
    %if ($ - %%insn_0040be58) > 6
        %error "LONG_0040BE58"
    %endif
    times 6 - ($ - %%insn_0040be58) db 0
    %%insn_0040be5e:
    mov cl,[ebp-0x9c] ; 0040BE5E 8A8D64FFFFFF
    %if ($ - %%insn_0040be5e) > 6
        %error "LONG_0040BE5E"
    %endif
    times 6 - ($ - %%insn_0040be5e) db 0
    %%insn_0040be64:
    mov [eax],cl ; 0040BE64 8808
    %if ($ - %%insn_0040be64) > 2
        %error "LONG_0040BE64"
    %endif
    times 2 - ($ - %%insn_0040be64) db 0
    %%insn_0040be66:
    jmp 0x40bdbe ; 0040BE66 E953FFFFFF
    %if ($ - %%insn_0040be66) > 5
        %error "LONG_0040BE66"
    %endif
    times 5 - ($ - %%insn_0040be66) db 0
    %%insn_0040be6b:
    mov edx,[ebp-0x94] ; 0040BE6B 8B956CFFFFFF
    %if ($ - %%insn_0040be6b) > 6
        %error "LONG_0040BE6B"
    %endif
    times 6 - ($ - %%insn_0040be6b) db 0
    %%insn_0040be71:
    add edx,[ebp+0x10] ; 0040BE71 035510
    %if ($ - %%insn_0040be71) > 3
        %error "LONG_0040BE71"
    %endif
    times 3 - ($ - %%insn_0040be71) db 0
    %%insn_0040be74:
    mov [ebp-0x94],edx ; 0040BE74 89956CFFFFFF
    %if ($ - %%insn_0040be74) > 6
        %error "LONG_0040BE74"
    %endif
    times 6 - ($ - %%insn_0040be74) db 0
    %%insn_0040be7a:
    mov eax,[0x4212dc] ; 0040BE7A A1DC124200
    %if ($ - %%insn_0040be7a) > 5
        %error "LONG_0040BE7A"
    %endif
    times 5 - ($ - %%insn_0040be7a) db 0
    %%insn_0040be7f:
    mov ecx,[ebp-0x40] ; 0040BE7F 8B4DC0
    %if ($ - %%insn_0040be7f) > 3
        %error "LONG_0040BE7F"
    %endif
    times 3 - ($ - %%insn_0040be7f) db 0
    %%insn_0040be82:
    lea edx,[ecx+eax*4] ; 0040BE82 8D1481
    %if ($ - %%insn_0040be82) > 3
        %error "LONG_0040BE82"
    %endif
    times 3 - ($ - %%insn_0040be82) db 0
    %%insn_0040be85:
    mov [ebp-0x40],edx ; 0040BE85 8955C0
    %if ($ - %%insn_0040be85) > 3
        %error "LONG_0040BE85"
    %endif
    times 3 - ($ - %%insn_0040be85) db 0
    %%insn_0040be88:
    jmp 0x40bd6d ; 0040BE88 E9E0FEFFFF
    %if ($ - %%insn_0040be88) > 5
        %error "LONG_0040BE88"
    %endif
    times 5 - ($ - %%insn_0040be88) db 0
    %%insn_0040be8d:
    jmp 0x40bf55 ; 0040BE8D E9C3000000
    %if ($ - %%insn_0040be8d) > 5
        %error "LONG_0040BE8D"
    %endif
    times 5 - ($ - %%insn_0040be8d) db 0
    %%insn_0040be92:
    mov eax,[ebp-0x38] ; 0040BE92 8B45C8
    %if ($ - %%insn_0040be92) > 3
        %error "LONG_0040BE92"
    %endif
    times 3 - ($ - %%insn_0040be92) db 0
    %%insn_0040be95:
    mov ecx,[eax] ; 0040BE95 8B08
    %if ($ - %%insn_0040be95) > 2
        %error "LONG_0040BE95"
    %endif
    times 2 - ($ - %%insn_0040be95) db 0
    %%insn_0040be97:
    mov [ebp-0x10],ecx ; 0040BE97 894DF0
    %if ($ - %%insn_0040be97) > 3
        %error "LONG_0040BE97"
    %endif
    times 3 - ($ - %%insn_0040be97) db 0
    %%insn_0040be9a:
    mov edx,[ebp-0x38] ; 0040BE9A 8B55C8
    %if ($ - %%insn_0040be9a) > 3
        %error "LONG_0040BE9A"
    %endif
    times 3 - ($ - %%insn_0040be9a) db 0
    %%insn_0040be9d:
    add edx,0x4 ; 0040BE9D 83C204
    %if ($ - %%insn_0040be9d) > 3
        %error "LONG_0040BE9D"
    %endif
    times 3 - ($ - %%insn_0040be9d) db 0
    %%insn_0040bea0:
    mov [ebp-0x38],edx ; 0040BEA0 8955C8
    %if ($ - %%insn_0040bea0) > 3
        %error "LONG_0040BEA0"
    %endif
    times 3 - ($ - %%insn_0040bea0) db 0
    %%insn_0040bea3:
    mov eax,[ebp-0x8] ; 0040BEA3 8B45F8
    %if ($ - %%insn_0040bea3) > 3
        %error "LONG_0040BEA3"
    %endif
    times 3 - ($ - %%insn_0040bea3) db 0
    %%insn_0040bea6:
    and eax,[ebp-0x10] ; 0040BEA6 2345F0
    %if ($ - %%insn_0040bea6) > 3
        %error "LONG_0040BEA6"
    %endif
    times 3 - ($ - %%insn_0040bea6) db 0
    %%insn_0040bea9:
    mov ecx,[ebp-0x10] ; 0040BEA9 8B4DF0
    %if ($ - %%insn_0040bea9) > 3
        %error "LONG_0040BEA9"
    %endif
    times 3 - ($ - %%insn_0040bea9) db 0
    %%insn_0040beac:
    not ecx ; 0040BEAC F7D1
    %if ($ - %%insn_0040beac) > 2
        %error "LONG_0040BEAC"
    %endif
    times 2 - ($ - %%insn_0040beac) db 0
    %%insn_0040beae:
    mov edx,[ebp-0xc] ; 0040BEAE 8B55F4
    %if ($ - %%insn_0040beae) > 3
        %error "LONG_0040BEAE"
    %endif
    times 3 - ($ - %%insn_0040beae) db 0
    db 0x23, 0xD1 ; 0040BEB1 23D1 | and edx,ecx | encoding preserved
    db 0x0B, 0xC2 ; 0040BEB3 0BC2 | or eax,edx | encoding preserved
    %%insn_0040beb5:
    mov ecx,[ebp-0x40] ; 0040BEB5 8B4DC0
    %if ($ - %%insn_0040beb5) > 3
        %error "LONG_0040BEB5"
    %endif
    times 3 - ($ - %%insn_0040beb5) db 0
    %%insn_0040beb8:
    mov [ecx],eax ; 0040BEB8 8901
    %if ($ - %%insn_0040beb8) > 2
        %error "LONG_0040BEB8"
    %endif
    times 2 - ($ - %%insn_0040beb8) db 0
    %%insn_0040beba:
    mov edx,[0x4212dc] ; 0040BEBA 8B15DC124200
    %if ($ - %%insn_0040beba) > 6
        %error "LONG_0040BEBA"
    %endif
    times 6 - ($ - %%insn_0040beba) db 0
    %%insn_0040bec0:
    mov eax,[ebp-0x40] ; 0040BEC0 8B45C0
    %if ($ - %%insn_0040bec0) > 3
        %error "LONG_0040BEC0"
    %endif
    times 3 - ($ - %%insn_0040bec0) db 0
    %%insn_0040bec3:
    lea ecx,[eax+edx*4] ; 0040BEC3 8D0C90
    %if ($ - %%insn_0040bec3) > 3
        %error "LONG_0040BEC3"
    %endif
    times 3 - ($ - %%insn_0040bec3) db 0
    %%insn_0040bec6:
    mov [ebp-0x40],ecx ; 0040BEC6 894DC0
    %if ($ - %%insn_0040bec6) > 3
        %error "LONG_0040BEC6"
    %endif
    times 3 - ($ - %%insn_0040bec6) db 0
    %%insn_0040bec9:
    mov edx,[ebp-0x38] ; 0040BEC9 8B55C8
    %if ($ - %%insn_0040bec9) > 3
        %error "LONG_0040BEC9"
    %endif
    times 3 - ($ - %%insn_0040bec9) db 0
    %%insn_0040becc:
    mov eax,[edx] ; 0040BECC 8B02
    %if ($ - %%insn_0040becc) > 2
        %error "LONG_0040BECC"
    %endif
    times 2 - ($ - %%insn_0040becc) db 0
    %%insn_0040bece:
    mov [ebp-0x10],eax ; 0040BECE 8945F0
    %if ($ - %%insn_0040bece) > 3
        %error "LONG_0040BECE"
    %endif
    times 3 - ($ - %%insn_0040bece) db 0
    %%insn_0040bed1:
    mov ecx,[ebp-0x38] ; 0040BED1 8B4DC8
    %if ($ - %%insn_0040bed1) > 3
        %error "LONG_0040BED1"
    %endif
    times 3 - ($ - %%insn_0040bed1) db 0
    %%insn_0040bed4:
    add ecx,0x4 ; 0040BED4 83C104
    %if ($ - %%insn_0040bed4) > 3
        %error "LONG_0040BED4"
    %endif
    times 3 - ($ - %%insn_0040bed4) db 0
    %%insn_0040bed7:
    mov [ebp-0x38],ecx ; 0040BED7 894DC8
    %if ($ - %%insn_0040bed7) > 3
        %error "LONG_0040BED7"
    %endif
    times 3 - ($ - %%insn_0040bed7) db 0
    %%insn_0040beda:
    mov edx,[ebp-0x8] ; 0040BEDA 8B55F8
    %if ($ - %%insn_0040beda) > 3
        %error "LONG_0040BEDA"
    %endif
    times 3 - ($ - %%insn_0040beda) db 0
    %%insn_0040bedd:
    and edx,[ebp-0x10] ; 0040BEDD 2355F0
    %if ($ - %%insn_0040bedd) > 3
        %error "LONG_0040BEDD"
    %endif
    times 3 - ($ - %%insn_0040bedd) db 0
    %%insn_0040bee0:
    mov eax,[ebp-0x10] ; 0040BEE0 8B45F0
    %if ($ - %%insn_0040bee0) > 3
        %error "LONG_0040BEE0"
    %endif
    times 3 - ($ - %%insn_0040bee0) db 0
    %%insn_0040bee3:
    not eax ; 0040BEE3 F7D0
    %if ($ - %%insn_0040bee3) > 2
        %error "LONG_0040BEE3"
    %endif
    times 2 - ($ - %%insn_0040bee3) db 0
    %%insn_0040bee5:
    mov ecx,[ebp-0xc] ; 0040BEE5 8B4DF4
    %if ($ - %%insn_0040bee5) > 3
        %error "LONG_0040BEE5"
    %endif
    times 3 - ($ - %%insn_0040bee5) db 0
    db 0x23, 0xC8 ; 0040BEE8 23C8 | and ecx,eax | encoding preserved
    db 0x0B, 0xD1 ; 0040BEEA 0BD1 | or edx,ecx | encoding preserved
    %%insn_0040beec:
    mov eax,[ebp-0x40] ; 0040BEEC 8B45C0
    %if ($ - %%insn_0040beec) > 3
        %error "LONG_0040BEEC"
    %endif
    times 3 - ($ - %%insn_0040beec) db 0
    %%insn_0040beef:
    mov [eax],edx ; 0040BEEF 8910
    %if ($ - %%insn_0040beef) > 2
        %error "LONG_0040BEEF"
    %endif
    times 2 - ($ - %%insn_0040beef) db 0
    %%insn_0040bef1:
    mov ecx,[0x4212dc] ; 0040BEF1 8B0DDC124200
    %if ($ - %%insn_0040bef1) > 6
        %error "LONG_0040BEF1"
    %endif
    times 6 - ($ - %%insn_0040bef1) db 0
    %%insn_0040bef7:
    mov edx,[ebp-0x40] ; 0040BEF7 8B55C0
    %if ($ - %%insn_0040bef7) > 3
        %error "LONG_0040BEF7"
    %endif
    times 3 - ($ - %%insn_0040bef7) db 0
    %%insn_0040befa:
    lea eax,[edx+ecx*4] ; 0040BEFA 8D048A
    %if ($ - %%insn_0040befa) > 3
        %error "LONG_0040BEFA"
    %endif
    times 3 - ($ - %%insn_0040befa) db 0
    %%insn_0040befd:
    mov [ebp-0x40],eax ; 0040BEFD 8945C0
    %if ($ - %%insn_0040befd) > 3
        %error "LONG_0040BEFD"
    %endif
    times 3 - ($ - %%insn_0040befd) db 0
    %%insn_0040bf00:
    mov ecx,[ebp-0x38] ; 0040BF00 8B4DC8
    %if ($ - %%insn_0040bf00) > 3
        %error "LONG_0040BF00"
    %endif
    times 3 - ($ - %%insn_0040bf00) db 0
    %%insn_0040bf03:
    mov edx,[ecx] ; 0040BF03 8B11
    %if ($ - %%insn_0040bf03) > 2
        %error "LONG_0040BF03"
    %endif
    times 2 - ($ - %%insn_0040bf03) db 0
    %%insn_0040bf05:
    mov [ebp-0x10],edx ; 0040BF05 8955F0
    %if ($ - %%insn_0040bf05) > 3
        %error "LONG_0040BF05"
    %endif
    times 3 - ($ - %%insn_0040bf05) db 0
    %%insn_0040bf08:
    mov eax,[ebp-0x38] ; 0040BF08 8B45C8
    %if ($ - %%insn_0040bf08) > 3
        %error "LONG_0040BF08"
    %endif
    times 3 - ($ - %%insn_0040bf08) db 0
    %%insn_0040bf0b:
    add eax,0x4 ; 0040BF0B 83C004
    %if ($ - %%insn_0040bf0b) > 3
        %error "LONG_0040BF0B"
    %endif
    times 3 - ($ - %%insn_0040bf0b) db 0
    %%insn_0040bf0e:
    mov [ebp-0x38],eax ; 0040BF0E 8945C8
    %if ($ - %%insn_0040bf0e) > 3
        %error "LONG_0040BF0E"
    %endif
    times 3 - ($ - %%insn_0040bf0e) db 0
    %%insn_0040bf11:
    mov ecx,[ebp-0x8] ; 0040BF11 8B4DF8
    %if ($ - %%insn_0040bf11) > 3
        %error "LONG_0040BF11"
    %endif
    times 3 - ($ - %%insn_0040bf11) db 0
    %%insn_0040bf14:
    and ecx,[ebp-0x10] ; 0040BF14 234DF0
    %if ($ - %%insn_0040bf14) > 3
        %error "LONG_0040BF14"
    %endif
    times 3 - ($ - %%insn_0040bf14) db 0
    %%insn_0040bf17:
    mov edx,[ebp-0x10] ; 0040BF17 8B55F0
    %if ($ - %%insn_0040bf17) > 3
        %error "LONG_0040BF17"
    %endif
    times 3 - ($ - %%insn_0040bf17) db 0
    %%insn_0040bf1a:
    not edx ; 0040BF1A F7D2
    %if ($ - %%insn_0040bf1a) > 2
        %error "LONG_0040BF1A"
    %endif
    times 2 - ($ - %%insn_0040bf1a) db 0
    %%insn_0040bf1c:
    mov eax,[ebp-0xc] ; 0040BF1C 8B45F4
    %if ($ - %%insn_0040bf1c) > 3
        %error "LONG_0040BF1C"
    %endif
    times 3 - ($ - %%insn_0040bf1c) db 0
    db 0x23, 0xC2 ; 0040BF1F 23C2 | and eax,edx | encoding preserved
    db 0x0B, 0xC8 ; 0040BF21 0BC8 | or ecx,eax | encoding preserved
    %%insn_0040bf23:
    mov edx,[ebp-0x40] ; 0040BF23 8B55C0
    %if ($ - %%insn_0040bf23) > 3
        %error "LONG_0040BF23"
    %endif
    times 3 - ($ - %%insn_0040bf23) db 0
    %%insn_0040bf26:
    mov [edx],ecx ; 0040BF26 890A
    %if ($ - %%insn_0040bf26) > 2
        %error "LONG_0040BF26"
    %endif
    times 2 - ($ - %%insn_0040bf26) db 0
    %%insn_0040bf28:
    mov eax,[0x4212dc] ; 0040BF28 A1DC124200
    %if ($ - %%insn_0040bf28) > 5
        %error "LONG_0040BF28"
    %endif
    times 5 - ($ - %%insn_0040bf28) db 0
    %%insn_0040bf2d:
    mov ecx,[ebp-0x40] ; 0040BF2D 8B4DC0
    %if ($ - %%insn_0040bf2d) > 3
        %error "LONG_0040BF2D"
    %endif
    times 3 - ($ - %%insn_0040bf2d) db 0
    %%insn_0040bf30:
    lea edx,[ecx+eax*4] ; 0040BF30 8D1481
    %if ($ - %%insn_0040bf30) > 3
        %error "LONG_0040BF30"
    %endif
    times 3 - ($ - %%insn_0040bf30) db 0
    %%insn_0040bf33:
    mov [ebp-0x40],edx ; 0040BF33 8955C0
    %if ($ - %%insn_0040bf33) > 3
        %error "LONG_0040BF33"
    %endif
    times 3 - ($ - %%insn_0040bf33) db 0
    %%insn_0040bf36:
    mov eax,[ebp-0x38] ; 0040BF36 8B45C8
    %if ($ - %%insn_0040bf36) > 3
        %error "LONG_0040BF36"
    %endif
    times 3 - ($ - %%insn_0040bf36) db 0
    %%insn_0040bf39:
    mov ecx,[eax] ; 0040BF39 8B08
    %if ($ - %%insn_0040bf39) > 2
        %error "LONG_0040BF39"
    %endif
    times 2 - ($ - %%insn_0040bf39) db 0
    %%insn_0040bf3b:
    mov [ebp-0x10],ecx ; 0040BF3B 894DF0
    %if ($ - %%insn_0040bf3b) > 3
        %error "LONG_0040BF3B"
    %endif
    times 3 - ($ - %%insn_0040bf3b) db 0
    %%insn_0040bf3e:
    mov edx,[ebp-0x8] ; 0040BF3E 8B55F8
    %if ($ - %%insn_0040bf3e) > 3
        %error "LONG_0040BF3E"
    %endif
    times 3 - ($ - %%insn_0040bf3e) db 0
    %%insn_0040bf41:
    and edx,[ebp-0x10] ; 0040BF41 2355F0
    %if ($ - %%insn_0040bf41) > 3
        %error "LONG_0040BF41"
    %endif
    times 3 - ($ - %%insn_0040bf41) db 0
    %%insn_0040bf44:
    mov eax,[ebp-0x10] ; 0040BF44 8B45F0
    %if ($ - %%insn_0040bf44) > 3
        %error "LONG_0040BF44"
    %endif
    times 3 - ($ - %%insn_0040bf44) db 0
    %%insn_0040bf47:
    not eax ; 0040BF47 F7D0
    %if ($ - %%insn_0040bf47) > 2
        %error "LONG_0040BF47"
    %endif
    times 2 - ($ - %%insn_0040bf47) db 0
    %%insn_0040bf49:
    mov ecx,[ebp-0xc] ; 0040BF49 8B4DF4
    %if ($ - %%insn_0040bf49) > 3
        %error "LONG_0040BF49"
    %endif
    times 3 - ($ - %%insn_0040bf49) db 0
    db 0x23, 0xC8 ; 0040BF4C 23C8 | and ecx,eax | encoding preserved
    db 0x0B, 0xD1 ; 0040BF4E 0BD1 | or edx,ecx | encoding preserved
    %%insn_0040bf50:
    mov eax,[ebp-0x40] ; 0040BF50 8B45C0
    %if ($ - %%insn_0040bf50) > 3
        %error "LONG_0040BF50"
    %endif
    times 3 - ($ - %%insn_0040bf50) db 0
    %%insn_0040bf53:
    mov [eax],edx ; 0040BF53 8910
    %if ($ - %%insn_0040bf53) > 2
        %error "LONG_0040BF53"
    %endif
    times 2 - ($ - %%insn_0040bf53) db 0
    %%insn_0040bf55:
    mov ecx,[ebp-0x48] ; 0040BF55 8B4DB8
    %if ($ - %%insn_0040bf55) > 3
        %error "LONG_0040BF55"
    %endif
    times 3 - ($ - %%insn_0040bf55) db 0
    %%insn_0040bf58:
    add ecx,0x1 ; 0040BF58 83C101
    %if ($ - %%insn_0040bf58) > 3
        %error "LONG_0040BF58"
    %endif
    times 3 - ($ - %%insn_0040bf58) db 0
    %%insn_0040bf5b:
    mov [ebp-0x48],ecx ; 0040BF5B 894DB8
    %if ($ - %%insn_0040bf5b) > 3
        %error "LONG_0040BF5B"
    %endif
    times 3 - ($ - %%insn_0040bf5b) db 0
    %%insn_0040bf5e:
    mov dx,[ebp-0x3c] ; 0040BF5E 668B55C4
    %if ($ - %%insn_0040bf5e) > 4
        %error "LONG_0040BF5E"
    %endif
    times 4 - ($ - %%insn_0040bf5e) db 0
    %%insn_0040bf62:
    add dx,0x4 ; 0040BF62 6683C204
    %if ($ - %%insn_0040bf62) > 4
        %error "LONG_0040BF62"
    %endif
    times 4 - ($ - %%insn_0040bf62) db 0
    %%insn_0040bf66:
    mov [ebp-0x3c],dx ; 0040BF66 668955C4
    %if ($ - %%insn_0040bf66) > 4
        %error "LONG_0040BF66"
    %endif
    times 4 - ($ - %%insn_0040bf66) db 0
    %%insn_0040bf6a:
    mov eax,[ebp-0x30] ; 0040BF6A 8B45D0
    %if ($ - %%insn_0040bf6a) > 3
        %error "LONG_0040BF6A"
    %endif
    times 3 - ($ - %%insn_0040bf6a) db 0
    %%insn_0040bf6d:
    and eax,0xffff ; 0040BF6D 25FFFF0000
    %if ($ - %%insn_0040bf6d) > 5
        %error "LONG_0040BF6D"
    %endif
    times 5 - ($ - %%insn_0040bf6d) db 0
    db 0x33, 0xC9 ; 0040BF72 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040bf74:
    mov cx,[0x420a38] ; 0040BF74 668B0D380A4200
    %if ($ - %%insn_0040bf74) > 7
        %error "LONG_0040BF74"
    %endif
    times 7 - ($ - %%insn_0040bf74) db 0
    db 0x3B, 0xC1 ; 0040BF7B 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_0040bf7d:
    jl 0x40b38c ; 0040BF7D 0F8C09F4FFFF
    %if ($ - %%insn_0040bf7d) > 6
        %error "LONG_0040BF7D"
    %endif
    times 6 - ($ - %%insn_0040bf7d) db 0
    %%insn_0040bf83:
    cmp dword [0x42135c],0x190 ; 0040BF83 813D5C13420090010000
    %if ($ - %%insn_0040bf83) > 10
        %error "LONG_0040BF83"
    %endif
    times 10 - ($ - %%insn_0040bf83) db 0
    %%insn_0040bf8d:
    jz short 0x40bf99 ; 0040BF8D 740A
    %if ($ - %%insn_0040bf8d) > 2
        %error "LONG_0040BF8D"
    %endif
    times 2 - ($ - %%insn_0040bf8d) db 0
    %%insn_0040bf8f:
    mov dword [0x41f590],0x1 ; 0040BF8F C70590F5410001000000
    %if ($ - %%insn_0040bf8f) > 10
        %error "LONG_0040BF8F"
    %endif
    times 10 - ($ - %%insn_0040bf8f) db 0
    db 0x33, 0xD2 ; 0040BF99 33D2 | xor edx,edx | encoding preserved
    %%insn_0040bf9b:
    mov dx,[0x4212d8] ; 0040BF9B 668B15D8124200
    %if ($ - %%insn_0040bf9b) > 7
        %error "LONG_0040BF9B"
    %endif
    times 7 - ($ - %%insn_0040bf9b) db 0
    %%insn_0040bfa2:
    and edx,0x40 ; 0040BFA2 83E240
    %if ($ - %%insn_0040bfa2) > 3
        %error "LONG_0040BFA2"
    %endif
    times 3 - ($ - %%insn_0040bfa2) db 0
    %%insn_0040bfa5:
    test edx,edx ; 0040BFA5 85D2
    %if ($ - %%insn_0040bfa5) > 2
        %error "LONG_0040BFA5"
    %endif
    times 2 - ($ - %%insn_0040bfa5) db 0
    %%insn_0040bfa7:
    jz short 0x40bfdb ; 0040BFA7 7432
    %if ($ - %%insn_0040bfa7) > 2
        %error "LONG_0040BFA7"
    %endif
    times 2 - ($ - %%insn_0040bfa7) db 0
    %%insn_0040bfa9:
    cmp dword [0x4212d4],0x0 ; 0040BFA9 833DD412420000
    %if ($ - %%insn_0040bfa9) > 7
        %error "LONG_0040BFA9"
    %endif
    times 7 - ($ - %%insn_0040bfa9) db 0
    %%insn_0040bfb0:
    jz short 0x40bfdb ; 0040BFB0 7429
    %if ($ - %%insn_0040bfb0) > 2
        %error "LONG_0040BFB0"
    %endif
    times 2 - ($ - %%insn_0040bfb0) db 0
    %%insn_0040bfb2:
    cmp dword [0x41f590],0x0 ; 0040BFB2 833D90F5410000
    %if ($ - %%insn_0040bfb2) > 7
        %error "LONG_0040BFB2"
    %endif
    times 7 - ($ - %%insn_0040bfb2) db 0
    %%insn_0040bfb9:
    jz short 0x40bfc6 ; 0040BFB9 740B
    %if ($ - %%insn_0040bfb9) > 2
        %error "LONG_0040BFB9"
    %endif
    times 2 - ($ - %%insn_0040bfb9) db 0
    %%insn_0040bfbb:
    mov ecx,0x421300 ; 0040BFBB B900134200
    %if ($ - %%insn_0040bfbb) > 5
        %error "LONG_0040BFBB"
    %endif
    times 5 - ($ - %%insn_0040bfbb) db 0
    %%insn_0040bfc0:
    call dword near [0x4213b4] ; 0040BFC0 FF15B4134200
    %if ($ - %%insn_0040bfc0) > 6
        %error "LONG_0040BFC0"
    %endif
    times 6 - ($ - %%insn_0040bfc0) db 0
    %%insn_0040bfc6:
    mov ecx,0x421300 ; 0040BFC6 B900134200
    %if ($ - %%insn_0040bfc6) > 5
        %error "LONG_0040BFC6"
    %endif
    times 5 - ($ - %%insn_0040bfc6) db 0
    %%insn_0040bfcb:
    call dword near [0x4213b8] ; 0040BFCB FF15B8134200
    %if ($ - %%insn_0040bfcb) > 6
        %error "LONG_0040BFCB"
    %endif
    times 6 - ($ - %%insn_0040bfcb) db 0
    %%insn_0040bfd1:
    mov dword [0x41f590],0x0 ; 0040BFD1 C70590F5410000000000
    %if ($ - %%insn_0040bfd1) > 10
        %error "LONG_0040BFD1"
    %endif
    times 10 - ($ - %%insn_0040bfd1) db 0
    %%insn_0040bfdb:
    mov ax,[0x4212d8] ; 0040BFDB 66A1D8124200
    %if ($ - %%insn_0040bfdb) > 6
        %error "LONG_0040BFDB"
    %endif
    times 6 - ($ - %%insn_0040bfdb) db 0
    db 0x66, 0x25, 0xBF, 0xFF ; 0040BFE1 6625BFFF | and ax,0xffbf | encoding preserved
    %%insn_0040bfe5:
    mov [0x4212d8],ax ; 0040BFE5 66A3D8124200
    %if ($ - %%insn_0040bfe5) > 6
        %error "LONG_0040BFE5"
    %endif
    times 6 - ($ - %%insn_0040bfe5) db 0
    %%insn_0040bfeb:
    mov eax,0x1 ; 0040BFEB B801000000
    %if ($ - %%insn_0040bfeb) > 5
        %error "LONG_0040BFEB"
    %endif
    times 5 - ($ - %%insn_0040bfeb) db 0
    db 0x8B, 0xE5 ; 0040BFF0 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040bff2:
    pop ebp ; 0040BFF2 5D
    %if ($ - %%insn_0040bff2) > 1
        %error "LONG_0040BFF2"
    %endif
    times 1 - ($ - %%insn_0040bff2) db 0
    %%insn_0040bff3:
    ret ; 0040BFF3 C3
    %if ($ - %%insn_0040bff3) > 1
        %error "LONG_0040BFF3"
    %endif
    times 1 - ($ - %%insn_0040bff3) db 0
    %if ($ - %%fragment_start) != 3676
        %error "function fragment size drift: 0040B198"
    %endif
%endmacro
