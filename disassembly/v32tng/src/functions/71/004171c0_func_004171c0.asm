; PE virtual entry 004171C0
; Ghidra working symbol: FUN_004171c0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004171c0_part_00 0
    %%fragment_start:
func_004171c0:
    %%insn_004171c0:
    mov eax,[0x4211f8] ; 004171C0 A1F8114200
    %if ($ - %%insn_004171c0) > 5
        %error "LONG_004171C0"
    %endif
    times 5 - ($ - %%insn_004171c0) db 0
    %%insn_004171c5:
    push ebx ; 004171C5 53
    %if ($ - %%insn_004171c5) > 1
        %error "LONG_004171C5"
    %endif
    times 1 - ($ - %%insn_004171c5) db 0
    %%insn_004171c6:
    push ebp ; 004171C6 55
    %if ($ - %%insn_004171c6) > 1
        %error "LONG_004171C6"
    %endif
    times 1 - ($ - %%insn_004171c6) db 0
    %%insn_004171c7:
    push esi ; 004171C7 56
    %if ($ - %%insn_004171c7) > 1
        %error "LONG_004171C7"
    %endif
    times 1 - ($ - %%insn_004171c7) db 0
    %%insn_004171c8:
    mov esi,[0x42446c] ; 004171C8 8B356C444200
    %if ($ - %%insn_004171c8) > 6
        %error "LONG_004171C8"
    %endif
    times 6 - ($ - %%insn_004171c8) db 0
    %%insn_004171ce:
    push edi ; 004171CE 57
    %if ($ - %%insn_004171ce) > 1
        %error "LONG_004171CE"
    %endif
    times 1 - ($ - %%insn_004171ce) db 0
    %%insn_004171cf:
    test eax,eax ; 004171CF 85C0
    %if ($ - %%insn_004171cf) > 2
        %error "LONG_004171CF"
    %endif
    times 2 - ($ - %%insn_004171cf) db 0
    %%insn_004171d1:
    jnz short 0x417208 ; 004171D1 7535
    %if ($ - %%insn_004171d1) > 2
        %error "LONG_004171D1"
    %endif
    times 2 - ($ - %%insn_004171d1) db 0
    %%insn_004171d3:
    push dword 0x0 ; 004171D3 6A00
    %if ($ - %%insn_004171d3) > 2
        %error "LONG_004171D3"
    %endif
    times 2 - ($ - %%insn_004171d3) db 0
    %%insn_004171d5:
    push dword 0x0 ; 004171D5 6A00
    %if ($ - %%insn_004171d5) > 2
        %error "LONG_004171D5"
    %endif
    times 2 - ($ - %%insn_004171d5) db 0
    %%insn_004171d7:
    push dword 0x1 ; 004171D7 6A01
    %if ($ - %%insn_004171d7) > 2
        %error "LONG_004171D7"
    %endif
    times 2 - ($ - %%insn_004171d7) db 0
    %%insn_004171d9:
    push dword 0x0 ; 004171D9 6A00
    %if ($ - %%insn_004171d9) > 2
        %error "LONG_004171D9"
    %endif
    times 2 - ($ - %%insn_004171d9) db 0
    %%insn_004171db:
    call esi ; 004171DB FFD6
    %if ($ - %%insn_004171db) > 2
        %error "LONG_004171DB"
    %endif
    times 2 - ($ - %%insn_004171db) db 0
    %%insn_004171dd:
    test eax,eax ; 004171DD 85C0
    %if ($ - %%insn_004171dd) > 2
        %error "LONG_004171DD"
    %endif
    times 2 - ($ - %%insn_004171dd) db 0
    %%insn_004171df:
    jz short 0x4171e8 ; 004171DF 7407
    %if ($ - %%insn_004171df) > 2
        %error "LONG_004171DF"
    %endif
    times 2 - ($ - %%insn_004171df) db 0
    %%insn_004171e1:
    mov eax,0x2 ; 004171E1 B802000000
    %if ($ - %%insn_004171e1) > 5
        %error "LONG_004171E1"
    %endif
    times 5 - ($ - %%insn_004171e1) db 0
    %%insn_004171e6:
    jmp short 0x417203 ; 004171E6 EB1B
    %if ($ - %%insn_004171e6) > 2
        %error "LONG_004171E6"
    %endif
    times 2 - ($ - %%insn_004171e6) db 0
    %%insn_004171e8:
    push dword 0x0 ; 004171E8 6A00
    %if ($ - %%insn_004171e8) > 2
        %error "LONG_004171E8"
    %endif
    times 2 - ($ - %%insn_004171e8) db 0
    %%insn_004171ea:
    push dword 0x0 ; 004171EA 6A00
    %if ($ - %%insn_004171ea) > 2
        %error "LONG_004171EA"
    %endif
    times 2 - ($ - %%insn_004171ea) db 0
    %%insn_004171ec:
    push dword 0x1 ; 004171EC 6A01
    %if ($ - %%insn_004171ec) > 2
        %error "LONG_004171EC"
    %endif
    times 2 - ($ - %%insn_004171ec) db 0
    %%insn_004171ee:
    push dword 0x0 ; 004171EE 6A00
    %if ($ - %%insn_004171ee) > 2
        %error "LONG_004171EE"
    %endif
    times 2 - ($ - %%insn_004171ee) db 0
    %%insn_004171f0:
    call dword near [0x424468] ; 004171F0 FF1568444200
    %if ($ - %%insn_004171f0) > 6
        %error "LONG_004171F0"
    %endif
    times 6 - ($ - %%insn_004171f0) db 0
    %%insn_004171f6:
    test eax,eax ; 004171F6 85C0
    %if ($ - %%insn_004171f6) > 2
        %error "LONG_004171F6"
    %endif
    times 2 - ($ - %%insn_004171f6) db 0
    %%insn_004171f8:
    jz 0x4172e8 ; 004171F8 0F84EA000000
    %if ($ - %%insn_004171f8) > 6
        %error "LONG_004171F8"
    %endif
    times 6 - ($ - %%insn_004171f8) db 0
    %%insn_004171fe:
    mov eax,0x1 ; 004171FE B801000000
    %if ($ - %%insn_004171fe) > 5
        %error "LONG_004171FE"
    %endif
    times 5 - ($ - %%insn_004171fe) db 0
    %%insn_00417203:
    mov [0x4211f8],eax ; 00417203 A3F8114200
    %if ($ - %%insn_00417203) > 5
        %error "LONG_00417203"
    %endif
    times 5 - ($ - %%insn_00417203) db 0
    %%insn_00417208:
    cmp eax,0x2 ; 00417208 83F802
    %if ($ - %%insn_00417208) > 3
        %error "LONG_00417208"
    %endif
    times 3 - ($ - %%insn_00417208) db 0
    %%insn_0041720b:
    jnz short 0x417228 ; 0041720B 751B
    %if ($ - %%insn_0041720b) > 2
        %error "LONG_0041720B"
    %endif
    times 2 - ($ - %%insn_0041720b) db 0
    %%insn_0041720d:
    mov eax,[esp+0x20] ; 0041720D 8B442420
    %if ($ - %%insn_0041720d) > 4
        %error "LONG_0041720D"
    %endif
    times 4 - ($ - %%insn_0041720d) db 0
    %%insn_00417211:
    mov ecx,[esp+0x1c] ; 00417211 8B4C241C
    %if ($ - %%insn_00417211) > 4
        %error "LONG_00417211"
    %endif
    times 4 - ($ - %%insn_00417211) db 0
    %%insn_00417215:
    mov edx,[esp+0x18] ; 00417215 8B542418
    %if ($ - %%insn_00417215) > 4
        %error "LONG_00417215"
    %endif
    times 4 - ($ - %%insn_00417215) db 0
    %%insn_00417219:
    push eax ; 00417219 50
    %if ($ - %%insn_00417219) > 1
        %error "LONG_00417219"
    %endif
    times 1 - ($ - %%insn_00417219) db 0
    %%insn_0041721a:
    mov eax,[esp+0x18] ; 0041721A 8B442418
    %if ($ - %%insn_0041721a) > 4
        %error "LONG_0041721A"
    %endif
    times 4 - ($ - %%insn_0041721a) db 0
    %%insn_0041721e:
    push ecx ; 0041721E 51
    %if ($ - %%insn_0041721e) > 1
        %error "LONG_0041721E"
    %endif
    times 1 - ($ - %%insn_0041721e) db 0
    %%insn_0041721f:
    push edx ; 0041721F 52
    %if ($ - %%insn_0041721f) > 1
        %error "LONG_0041721F"
    %endif
    times 1 - ($ - %%insn_0041721f) db 0
    %%insn_00417220:
    push eax ; 00417220 50
    %if ($ - %%insn_00417220) > 1
        %error "LONG_00417220"
    %endif
    times 1 - ($ - %%insn_00417220) db 0
    %%insn_00417221:
    call esi ; 00417221 FFD6
    %if ($ - %%insn_00417221) > 2
        %error "LONG_00417221"
    %endif
    times 2 - ($ - %%insn_00417221) db 0
    %%insn_00417223:
    pop edi ; 00417223 5F
    %if ($ - %%insn_00417223) > 1
        %error "LONG_00417223"
    %endif
    times 1 - ($ - %%insn_00417223) db 0
    %%insn_00417224:
    pop esi ; 00417224 5E
    %if ($ - %%insn_00417224) > 1
        %error "LONG_00417224"
    %endif
    times 1 - ($ - %%insn_00417224) db 0
    %%insn_00417225:
    pop ebp ; 00417225 5D
    %if ($ - %%insn_00417225) > 1
        %error "LONG_00417225"
    %endif
    times 1 - ($ - %%insn_00417225) db 0
    %%insn_00417226:
    pop ebx ; 00417226 5B
    %if ($ - %%insn_00417226) > 1
        %error "LONG_00417226"
    %endif
    times 1 - ($ - %%insn_00417226) db 0
    %%insn_00417227:
    ret ; 00417227 C3
    %if ($ - %%insn_00417227) > 1
        %error "LONG_00417227"
    %endif
    times 1 - ($ - %%insn_00417227) db 0
    %%insn_00417228:
    cmp eax,0x1 ; 00417228 83F801
    %if ($ - %%insn_00417228) > 3
        %error "LONG_00417228"
    %endif
    times 3 - ($ - %%insn_00417228) db 0
    %%insn_0041722b:
    jnz 0x4172fa ; 0041722B 0F85C9000000
    %if ($ - %%insn_0041722b) > 6
        %error "LONG_0041722B"
    %endif
    times 6 - ($ - %%insn_0041722b) db 0
    %%insn_00417231:
    mov eax,[esp+0x24] ; 00417231 8B442424
    %if ($ - %%insn_00417231) > 4
        %error "LONG_00417231"
    %endif
    times 4 - ($ - %%insn_00417231) db 0
    %%insn_00417235:
    test eax,eax ; 00417235 85C0
    %if ($ - %%insn_00417235) > 2
        %error "LONG_00417235"
    %endif
    times 2 - ($ - %%insn_00417235) db 0
    %%insn_00417237:
    jnz short 0x417243 ; 00417237 750A
    %if ($ - %%insn_00417237) > 2
        %error "LONG_00417237"
    %endif
    times 2 - ($ - %%insn_00417237) db 0
    %%insn_00417239:
    mov ecx,[0x420f30] ; 00417239 8B0D300F4200
    %if ($ - %%insn_00417239) > 6
        %error "LONG_00417239"
    %endif
    times 6 - ($ - %%insn_00417239) db 0
    %%insn_0041723f:
    mov [esp+0x24],ecx ; 0041723F 894C2424
    %if ($ - %%insn_0041723f) > 4
        %error "LONG_0041723F"
    %endif
    times 4 - ($ - %%insn_0041723f) db 0
    %%insn_00417243:
    mov ebx,[esp+0x18] ; 00417243 8B5C2418
    %if ($ - %%insn_00417243) > 4
        %error "LONG_00417243"
    %endif
    times 4 - ($ - %%insn_00417243) db 0
    %%insn_00417247:
    mov ebp,[esp+0x14] ; 00417247 8B6C2414
    %if ($ - %%insn_00417247) > 4
        %error "LONG_00417247"
    %endif
    times 4 - ($ - %%insn_00417247) db 0
    %%insn_0041724b:
    push dword 0x0 ; 0041724B 6A00
    %if ($ - %%insn_0041724b) > 2
        %error "LONG_0041724B"
    %endif
    times 2 - ($ - %%insn_0041724b) db 0
    %%insn_0041724d:
    push dword 0x0 ; 0041724D 6A00
    %if ($ - %%insn_0041724d) > 2
        %error "LONG_0041724D"
    %endif
    times 2 - ($ - %%insn_0041724d) db 0
    %%insn_0041724f:
    push ebx ; 0041724F 53
    %if ($ - %%insn_0041724f) > 1
        %error "LONG_0041724F"
    %endif
    times 1 - ($ - %%insn_0041724f) db 0
    %%insn_00417250:
    push ebp ; 00417250 55
    %if ($ - %%insn_00417250) > 1
        %error "LONG_00417250"
    %endif
    times 1 - ($ - %%insn_00417250) db 0
    %%insn_00417251:
    call dword near [0x424468] ; 00417251 FF1568444200
    %if ($ - %%insn_00417251) > 6
        %error "LONG_00417251"
    %endif
    times 6 - ($ - %%insn_00417251) db 0
    db 0x8B, 0xF8 ; 00417257 8BF8 | mov edi,eax | encoding preserved
    %%insn_00417259:
    test edi,edi ; 00417259 85FF
    %if ($ - %%insn_00417259) > 2
        %error "LONG_00417259"
    %endif
    times 2 - ($ - %%insn_00417259) db 0
    %%insn_0041725b:
    jnz short 0x417262 ; 0041725B 7505
    %if ($ - %%insn_0041725b) > 2
        %error "LONG_0041725B"
    %endif
    times 2 - ($ - %%insn_0041725b) db 0
    %%insn_0041725d:
    pop edi ; 0041725D 5F
    %if ($ - %%insn_0041725d) > 1
        %error "LONG_0041725D"
    %endif
    times 1 - ($ - %%insn_0041725d) db 0
    %%insn_0041725e:
    pop esi ; 0041725E 5E
    %if ($ - %%insn_0041725e) > 1
        %error "LONG_0041725E"
    %endif
    times 1 - ($ - %%insn_0041725e) db 0
    %%insn_0041725f:
    pop ebp ; 0041725F 5D
    %if ($ - %%insn_0041725f) > 1
        %error "LONG_0041725F"
    %endif
    times 1 - ($ - %%insn_0041725f) db 0
    %%insn_00417260:
    pop ebx ; 00417260 5B
    %if ($ - %%insn_00417260) > 1
        %error "LONG_00417260"
    %endif
    times 1 - ($ - %%insn_00417260) db 0
    %%insn_00417261:
    ret ; 00417261 C3
    %if ($ - %%insn_00417261) > 1
        %error "LONG_00417261"
    %endif
    times 1 - ($ - %%insn_00417261) db 0
    %%insn_00417262:
    lea edx,[edi+edi] ; 00417262 8D143F
    %if ($ - %%insn_00417262) > 3
        %error "LONG_00417262"
    %endif
    times 3 - ($ - %%insn_00417262) db 0
    %%insn_00417265:
    push edx ; 00417265 52
    %if ($ - %%insn_00417265) > 1
        %error "LONG_00417265"
    %endif
    times 1 - ($ - %%insn_00417265) db 0
    %%insn_00417266:
    call 0x40cdc0 ; 00417266 E8555BFFFF
    %if ($ - %%insn_00417266) > 5
        %error "LONG_00417266"
    %endif
    times 5 - ($ - %%insn_00417266) db 0
    db 0x8B, 0xF0 ; 0041726B 8BF0 | mov esi,eax | encoding preserved
    %%insn_0041726d:
    add esp,0x4 ; 0041726D 83C404
    %if ($ - %%insn_0041726d) > 3
        %error "LONG_0041726D"
    %endif
    times 3 - ($ - %%insn_0041726d) db 0
    %%insn_00417270:
    test esi,esi ; 00417270 85F6
    %if ($ - %%insn_00417270) > 2
        %error "LONG_00417270"
    %endif
    times 2 - ($ - %%insn_00417270) db 0
    %%insn_00417272:
    jnz short 0x417279 ; 00417272 7505
    %if ($ - %%insn_00417272) > 2
        %error "LONG_00417272"
    %endif
    times 2 - ($ - %%insn_00417272) db 0
    %%insn_00417274:
    pop edi ; 00417274 5F
    %if ($ - %%insn_00417274) > 1
        %error "LONG_00417274"
    %endif
    times 1 - ($ - %%insn_00417274) db 0
    %%insn_00417275:
    pop esi ; 00417275 5E
    %if ($ - %%insn_00417275) > 1
        %error "LONG_00417275"
    %endif
    times 1 - ($ - %%insn_00417275) db 0
    %%insn_00417276:
    pop ebp ; 00417276 5D
    %if ($ - %%insn_00417276) > 1
        %error "LONG_00417276"
    %endif
    times 1 - ($ - %%insn_00417276) db 0
    %%insn_00417277:
    pop ebx ; 00417277 5B
    %if ($ - %%insn_00417277) > 1
        %error "LONG_00417277"
    %endif
    times 1 - ($ - %%insn_00417277) db 0
    %%insn_00417278:
    ret ; 00417278 C3
    %if ($ - %%insn_00417278) > 1
        %error "LONG_00417278"
    %endif
    times 1 - ($ - %%insn_00417278) db 0
    %%insn_00417279:
    push edi ; 00417279 57
    %if ($ - %%insn_00417279) > 1
        %error "LONG_00417279"
    %endif
    times 1 - ($ - %%insn_00417279) db 0
    %%insn_0041727a:
    push esi ; 0041727A 56
    %if ($ - %%insn_0041727a) > 1
        %error "LONG_0041727A"
    %endif
    times 1 - ($ - %%insn_0041727a) db 0
    %%insn_0041727b:
    push ebx ; 0041727B 53
    %if ($ - %%insn_0041727b) > 1
        %error "LONG_0041727B"
    %endif
    times 1 - ($ - %%insn_0041727b) db 0
    %%insn_0041727c:
    push ebp ; 0041727C 55
    %if ($ - %%insn_0041727c) > 1
        %error "LONG_0041727C"
    %endif
    times 1 - ($ - %%insn_0041727c) db 0
    %%insn_0041727d:
    call dword near [0x424468] ; 0041727D FF1568444200
    %if ($ - %%insn_0041727d) > 6
        %error "LONG_0041727D"
    %endif
    times 6 - ($ - %%insn_0041727d) db 0
    %%insn_00417283:
    test eax,eax ; 00417283 85C0
    %if ($ - %%insn_00417283) > 2
        %error "LONG_00417283"
    %endif
    times 2 - ($ - %%insn_00417283) db 0
    %%insn_00417285:
    jz short 0x4172df ; 00417285 7458
    %if ($ - %%insn_00417285) > 2
        %error "LONG_00417285"
    %endif
    times 2 - ($ - %%insn_00417285) db 0
    %%insn_00417287:
    mov eax,[esp+0x20] ; 00417287 8B442420
    %if ($ - %%insn_00417287) > 4
        %error "LONG_00417287"
    %endif
    times 4 - ($ - %%insn_00417287) db 0
    %%insn_0041728b:
    push dword 0x0 ; 0041728B 6A00
    %if ($ - %%insn_0041728b) > 2
        %error "LONG_0041728B"
    %endif
    times 2 - ($ - %%insn_0041728b) db 0
    %%insn_0041728d:
    test eax,eax ; 0041728D 85C0
    %if ($ - %%insn_0041728d) > 2
        %error "LONG_0041728D"
    %endif
    times 2 - ($ - %%insn_0041728d) db 0
    %%insn_0041728f:
    push dword 0x0 ; 0041728F 6A00
    %if ($ - %%insn_0041728f) > 2
        %error "LONG_0041728F"
    %endif
    times 2 - ($ - %%insn_0041728f) db 0
    %%insn_00417291:
    jnz short 0x4172c0 ; 00417291 752D
    %if ($ - %%insn_00417291) > 2
        %error "LONG_00417291"
    %endif
    times 2 - ($ - %%insn_00417291) db 0
    %%insn_00417293:
    mov eax,[esp+0x2c] ; 00417293 8B44242C
    %if ($ - %%insn_00417293) > 4
        %error "LONG_00417293"
    %endif
    times 4 - ($ - %%insn_00417293) db 0
    %%insn_00417297:
    push dword 0x0 ; 00417297 6A00
    %if ($ - %%insn_00417297) > 2
        %error "LONG_00417297"
    %endif
    times 2 - ($ - %%insn_00417297) db 0
    %%insn_00417299:
    push dword 0x0 ; 00417299 6A00
    %if ($ - %%insn_00417299) > 2
        %error "LONG_00417299"
    %endif
    times 2 - ($ - %%insn_00417299) db 0
    %%insn_0041729b:
    push dword 0xffffffffffffffff ; 0041729B 6AFF
    %if ($ - %%insn_0041729b) > 2
        %error "LONG_0041729B"
    %endif
    times 2 - ($ - %%insn_0041729b) db 0
    %%insn_0041729d:
    push esi ; 0041729D 56
    %if ($ - %%insn_0041729d) > 1
        %error "LONG_0041729D"
    %endif
    times 1 - ($ - %%insn_0041729d) db 0
    %%insn_0041729e:
    push dword 0x220 ; 0041729E 6820020000
    %if ($ - %%insn_0041729e) > 5
        %error "LONG_0041729E"
    %endif
    times 5 - ($ - %%insn_0041729e) db 0
    %%insn_004172a3:
    push eax ; 004172A3 50
    %if ($ - %%insn_004172a3) > 1
        %error "LONG_004172A3"
    %endif
    times 1 - ($ - %%insn_004172a3) db 0
    %%insn_004172a4:
    call dword near [0x4244d0] ; 004172A4 FF15D0444200
    %if ($ - %%insn_004172a4) > 6
        %error "LONG_004172A4"
    %endif
    times 6 - ($ - %%insn_004172a4) db 0
    db 0x8B, 0xF8 ; 004172AA 8BF8 | mov edi,eax | encoding preserved
    %%insn_004172ac:
    test edi,edi ; 004172AC 85FF
    %if ($ - %%insn_004172ac) > 2
        %error "LONG_004172AC"
    %endif
    times 2 - ($ - %%insn_004172ac) db 0
    %%insn_004172ae:
    jz short 0x4172df ; 004172AE 742F
    %if ($ - %%insn_004172ae) > 2
        %error "LONG_004172AE"
    %endif
    times 2 - ($ - %%insn_004172ae) db 0
    %%insn_004172b0:
    push esi ; 004172B0 56
    %if ($ - %%insn_004172b0) > 1
        %error "LONG_004172B0"
    %endif
    times 1 - ($ - %%insn_004172b0) db 0
    %%insn_004172b1:
    call 0x40c9a0 ; 004172B1 E8EA56FFFF
    %if ($ - %%insn_004172b1) > 5
        %error "LONG_004172B1"
    %endif
    times 5 - ($ - %%insn_004172b1) db 0
    %%insn_004172b6:
    add esp,0x4 ; 004172B6 83C404
    %if ($ - %%insn_004172b6) > 3
        %error "LONG_004172B6"
    %endif
    times 3 - ($ - %%insn_004172b6) db 0
    db 0x8B, 0xC7 ; 004172B9 8BC7 | mov eax,edi | encoding preserved
    %%insn_004172bb:
    pop edi ; 004172BB 5F
    %if ($ - %%insn_004172bb) > 1
        %error "LONG_004172BB"
    %endif
    times 1 - ($ - %%insn_004172bb) db 0
    %%insn_004172bc:
    pop esi ; 004172BC 5E
    %if ($ - %%insn_004172bc) > 1
        %error "LONG_004172BC"
    %endif
    times 1 - ($ - %%insn_004172bc) db 0
    %%insn_004172bd:
    pop ebp ; 004172BD 5D
    %if ($ - %%insn_004172bd) > 1
        %error "LONG_004172BD"
    %endif
    times 1 - ($ - %%insn_004172bd) db 0
    %%insn_004172be:
    pop ebx ; 004172BE 5B
    %if ($ - %%insn_004172be) > 1
        %error "LONG_004172BE"
    %endif
    times 1 - ($ - %%insn_004172be) db 0
    %%insn_004172bf:
    ret ; 004172BF C3
    %if ($ - %%insn_004172bf) > 1
        %error "LONG_004172BF"
    %endif
    times 1 - ($ - %%insn_004172bf) db 0
    %%insn_004172c0:
    mov ecx,[esp+0x24] ; 004172C0 8B4C2424
    %if ($ - %%insn_004172c0) > 4
        %error "LONG_004172C0"
    %endif
    times 4 - ($ - %%insn_004172c0) db 0
    %%insn_004172c4:
    mov edx,[esp+0x2c] ; 004172C4 8B54242C
    %if ($ - %%insn_004172c4) > 4
        %error "LONG_004172C4"
    %endif
    times 4 - ($ - %%insn_004172c4) db 0
    %%insn_004172c8:
    push eax ; 004172C8 50
    %if ($ - %%insn_004172c8) > 1
        %error "LONG_004172C8"
    %endif
    times 1 - ($ - %%insn_004172c8) db 0
    %%insn_004172c9:
    push ecx ; 004172C9 51
    %if ($ - %%insn_004172c9) > 1
        %error "LONG_004172C9"
    %endif
    times 1 - ($ - %%insn_004172c9) db 0
    %%insn_004172ca:
    push dword 0xffffffffffffffff ; 004172CA 6AFF
    %if ($ - %%insn_004172ca) > 2
        %error "LONG_004172CA"
    %endif
    times 2 - ($ - %%insn_004172ca) db 0
    %%insn_004172cc:
    push esi ; 004172CC 56
    %if ($ - %%insn_004172cc) > 1
        %error "LONG_004172CC"
    %endif
    times 1 - ($ - %%insn_004172cc) db 0
    %%insn_004172cd:
    push dword 0x220 ; 004172CD 6820020000
    %if ($ - %%insn_004172cd) > 5
        %error "LONG_004172CD"
    %endif
    times 5 - ($ - %%insn_004172cd) db 0
    %%insn_004172d2:
    push edx ; 004172D2 52
    %if ($ - %%insn_004172d2) > 1
        %error "LONG_004172D2"
    %endif
    times 1 - ($ - %%insn_004172d2) db 0
    %%insn_004172d3:
    call dword near [0x4244d0] ; 004172D3 FF15D0444200
    %if ($ - %%insn_004172d3) > 6
        %error "LONG_004172D3"
    %endif
    times 6 - ($ - %%insn_004172d3) db 0
    db 0x8B, 0xF8 ; 004172D9 8BF8 | mov edi,eax | encoding preserved
    %%insn_004172db:
    test edi,edi ; 004172DB 85FF
    %if ($ - %%insn_004172db) > 2
        %error "LONG_004172DB"
    %endif
    times 2 - ($ - %%insn_004172db) db 0
    %%insn_004172dd:
    jnz short 0x4172ef ; 004172DD 7510
    %if ($ - %%insn_004172dd) > 2
        %error "LONG_004172DD"
    %endif
    times 2 - ($ - %%insn_004172dd) db 0
    %%insn_004172df:
    push esi ; 004172DF 56
    %if ($ - %%insn_004172df) > 1
        %error "LONG_004172DF"
    %endif
    times 1 - ($ - %%insn_004172df) db 0
    %%insn_004172e0:
    call 0x40c9a0 ; 004172E0 E8BB56FFFF
    %if ($ - %%insn_004172e0) > 5
        %error "LONG_004172E0"
    %endif
    times 5 - ($ - %%insn_004172e0) db 0
    %%insn_004172e5:
    add esp,0x4 ; 004172E5 83C404
    %if ($ - %%insn_004172e5) > 3
        %error "LONG_004172E5"
    %endif
    times 3 - ($ - %%insn_004172e5) db 0
    db 0x33, 0xC0 ; 004172E8 33C0 | xor eax,eax | encoding preserved
    %%insn_004172ea:
    pop edi ; 004172EA 5F
    %if ($ - %%insn_004172ea) > 1
        %error "LONG_004172EA"
    %endif
    times 1 - ($ - %%insn_004172ea) db 0
    %%insn_004172eb:
    pop esi ; 004172EB 5E
    %if ($ - %%insn_004172eb) > 1
        %error "LONG_004172EB"
    %endif
    times 1 - ($ - %%insn_004172eb) db 0
    %%insn_004172ec:
    pop ebp ; 004172EC 5D
    %if ($ - %%insn_004172ec) > 1
        %error "LONG_004172EC"
    %endif
    times 1 - ($ - %%insn_004172ec) db 0
    %%insn_004172ed:
    pop ebx ; 004172ED 5B
    %if ($ - %%insn_004172ed) > 1
        %error "LONG_004172ED"
    %endif
    times 1 - ($ - %%insn_004172ed) db 0
    %%insn_004172ee:
    ret ; 004172EE C3
    %if ($ - %%insn_004172ee) > 1
        %error "LONG_004172EE"
    %endif
    times 1 - ($ - %%insn_004172ee) db 0
    %%insn_004172ef:
    push esi ; 004172EF 56
    %if ($ - %%insn_004172ef) > 1
        %error "LONG_004172EF"
    %endif
    times 1 - ($ - %%insn_004172ef) db 0
    %%insn_004172f0:
    call 0x40c9a0 ; 004172F0 E8AB56FFFF
    %if ($ - %%insn_004172f0) > 5
        %error "LONG_004172F0"
    %endif
    times 5 - ($ - %%insn_004172f0) db 0
    %%insn_004172f5:
    add esp,0x4 ; 004172F5 83C404
    %if ($ - %%insn_004172f5) > 3
        %error "LONG_004172F5"
    %endif
    times 3 - ($ - %%insn_004172f5) db 0
    db 0x8B, 0xC7 ; 004172F8 8BC7 | mov eax,edi | encoding preserved
    %%insn_004172fa:
    pop edi ; 004172FA 5F
    %if ($ - %%insn_004172fa) > 1
        %error "LONG_004172FA"
    %endif
    times 1 - ($ - %%insn_004172fa) db 0
    %%insn_004172fb:
    pop esi ; 004172FB 5E
    %if ($ - %%insn_004172fb) > 1
        %error "LONG_004172FB"
    %endif
    times 1 - ($ - %%insn_004172fb) db 0
    %%insn_004172fc:
    pop ebp ; 004172FC 5D
    %if ($ - %%insn_004172fc) > 1
        %error "LONG_004172FC"
    %endif
    times 1 - ($ - %%insn_004172fc) db 0
    %%insn_004172fd:
    pop ebx ; 004172FD 5B
    %if ($ - %%insn_004172fd) > 1
        %error "LONG_004172FD"
    %endif
    times 1 - ($ - %%insn_004172fd) db 0
    %%insn_004172fe:
    ret ; 004172FE C3
    %if ($ - %%insn_004172fe) > 1
        %error "LONG_004172FE"
    %endif
    times 1 - ($ - %%insn_004172fe) db 0
    %if ($ - %%fragment_start) != 319
        %error "function fragment size drift: 004171C0"
    %endif
%endmacro
