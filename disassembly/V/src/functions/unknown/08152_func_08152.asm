; Linear entry 08152 (1702:1132)
; Ghidra working symbol: FUN_1702_1132
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_08152_part_00 0
    %%fragment_start:
func_08152:
    %%insn_08152:
    push ds ; 08152 1E
    %if ($ - %%insn_08152) > 1
        %error "LONG_08152"
    %endif
    times 1 - ($ - %%insn_08152) db 0
    %%insn_08153:
    push si ; 08153 56
    %if ($ - %%insn_08153) > 1
        %error "LONG_08153"
    %endif
    times 1 - ($ - %%insn_08153) db 0
    %%insn_08154:
    push di ; 08154 57
    %if ($ - %%insn_08154) > 1
        %error "LONG_08154"
    %endif
    times 1 - ($ - %%insn_08154) db 0
    %%insn_08155:
    push cs ; 08155 0E
    %if ($ - %%insn_08155) > 1
        %error "LONG_08155"
    %endif
    times 1 - ($ - %%insn_08155) db 0
    %%insn_08156:
    call 0x7f55 ; 08156 E8FCFD
    %if ($ - %%insn_08156) > 3
        %error "LONG_08156"
    %endif
    times 3 - ($ - %%insn_08156) db 0
    db 0x3D, 0x00, 0x00 ; 08159 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_0815c:
    jz short 0x817c ; 0815C 741E
    %if ($ - %%insn_0815c) > 2
        %error "LONG_0815C"
    %endif
    times 2 - ($ - %%insn_0815c) db 0
    db 0x3D, 0x01, 0x00 ; 0815E 3D0100 | cmp ax,0x1 | encoding preserved
    %%insn_08161:
    jnz short 0x8166 ; 08161 7503
    %if ($ - %%insn_08161) > 2
        %error "LONG_08161"
    %endif
    times 2 - ($ - %%insn_08161) db 0
    %%insn_08163:
    jmp 0x8233 ; 08163 E9CD00
    %if ($ - %%insn_08163) > 3
        %error "LONG_08163"
    %endif
    times 3 - ($ - %%insn_08163) db 0
    db 0x3D, 0x02, 0x00 ; 08166 3D0200 | cmp ax,0x2 | encoding preserved
    %%insn_08169:
    jz short 0x81d3 ; 08169 7468
    %if ($ - %%insn_08169) > 2
        %error "LONG_08169"
    %endif
    times 2 - ($ - %%insn_08169) db 0
    db 0x3D, 0x04, 0x00 ; 0816B 3D0400 | cmp ax,0x4 | encoding preserved
    %%insn_0816e:
    jz short 0x817c ; 0816E 740C
    %if ($ - %%insn_0816e) > 2
        %error "LONG_0816E"
    %endif
    times 2 - ($ - %%insn_0816e) db 0
    db 0x3D, 0x06, 0x00 ; 08170 3D0600 | cmp ax,0x6 | encoding preserved
    %%insn_08173:
    jz short 0x818c ; 08173 7417
    %if ($ - %%insn_08173) > 2
        %error "LONG_08173"
    %endif
    times 2 - ($ - %%insn_08173) db 0
    db 0x3D, 0x07, 0x00 ; 08175 3D0700 | cmp ax,0x7 | encoding preserved
    %%insn_08178:
    jz short 0x81ad ; 08178 7433
    %if ($ - %%insn_08178) > 2
        %error "LONG_08178"
    %endif
    times 2 - ($ - %%insn_08178) db 0
    %%insn_0817a:
    jmp short 0x8186 ; 0817A EB0A
    %if ($ - %%insn_0817a) > 2
        %error "LONG_0817A"
    %endif
    times 2 - ($ - %%insn_0817a) db 0
    %%insn_0817c:
    mov word [cs:0xe62],0x3 ; 0817C 2EC706620E0300
    %if ($ - %%insn_0817c) > 7
        %error "LONG_0817C"
    %endif
    times 7 - ($ - %%insn_0817c) db 0
    %%insn_08183:
    jmp 0x82a5 ; 08183 E91F01
    %if ($ - %%insn_08183) > 3
        %error "LONG_08183"
    %endif
    times 3 - ($ - %%insn_08183) db 0
    %%insn_08186:
    push cs ; 08186 0E
    %if ($ - %%insn_08186) > 1
        %error "LONG_08186"
    %endif
    times 1 - ($ - %%insn_08186) db 0
    %%insn_08187:
    call 0x80d6 ; 08187 E84CFF
    %if ($ - %%insn_08187) > 3
        %error "LONG_08187"
    %endif
    times 3 - ($ - %%insn_08187) db 0
    %%insn_0818a:
    jmp short 0x8155 ; 0818A EBC9
    %if ($ - %%insn_0818a) > 2
        %error "LONG_0818A"
    %endif
    times 2 - ($ - %%insn_0818a) db 0
    %%insn_0818c:
    lds si,word [cs:0xe66] ; 0818C 2EC536660E
    %if ($ - %%insn_0818c) > 5
        %error "LONG_0818C"
    %endif
    times 5 - ($ - %%insn_0818c) db 0
    %%insn_08191:
    mov ax,[si+0x4] ; 08191 8B4404
    %if ($ - %%insn_08191) > 3
        %error "LONG_08191"
    %endif
    times 3 - ($ - %%insn_08191) db 0
    %%insn_08194:
    mov [cs:0xe6e],ax ; 08194 2EA36E0E
    %if ($ - %%insn_08194) > 4
        %error "LONG_08194"
    %endif
    times 4 - ($ - %%insn_08194) db 0
    %%insn_08198:
    push cs ; 08198 0E
    %if ($ - %%insn_08198) > 1
        %error "LONG_08198"
    %endif
    times 1 - ($ - %%insn_08198) db 0
    %%insn_08199:
    call 0x80d6 ; 08199 E83AFF
    %if ($ - %%insn_08199) > 3
        %error "LONG_08199"
    %endif
    times 3 - ($ - %%insn_08199) db 0
    %%insn_0819c:
    lds si,word [cs:0xe66] ; 0819C 2EC536660E
    %if ($ - %%insn_0819c) > 5
        %error "LONG_0819C"
    %endif
    times 5 - ($ - %%insn_0819c) db 0
    %%insn_081a1:
    mov [cs:0xe6a],si ; 081A1 2E89366A0E
    %if ($ - %%insn_081a1) > 5
        %error "LONG_081A1"
    %endif
    times 5 - ($ - %%insn_081a1) db 0
    %%insn_081a6:
    mov word [cs:0xe6c],ds ; 081A6 2E8C1E6C0E
    %if ($ - %%insn_081a6) > 5
        %error "LONG_081A6"
    %endif
    times 5 - ($ - %%insn_081a6) db 0
    %%insn_081ab:
    jmp short 0x8155 ; 081AB EBA8
    %if ($ - %%insn_081ab) > 2
        %error "LONG_081AB"
    %endif
    times 2 - ($ - %%insn_081ab) db 0
    %%insn_081ad:
    cmp word [cs:0xe6e],0x0 ; 081AD 2E833E6E0E00
    %if ($ - %%insn_081ad) > 6
        %error "LONG_081AD"
    %endif
    times 6 - ($ - %%insn_081ad) db 0
    %%insn_081b3:
    jz short 0x8186 ; 081B3 74D1
    %if ($ - %%insn_081b3) > 2
        %error "LONG_081B3"
    %endif
    times 2 - ($ - %%insn_081b3) db 0
    %%insn_081b5:
    lds si,word [cs:0xe6a] ; 081B5 2EC5366A0E
    %if ($ - %%insn_081b5) > 5
        %error "LONG_081B5"
    %endif
    times 5 - ($ - %%insn_081b5) db 0
    %%insn_081ba:
    mov [cs:0xe66],si ; 081BA 2E8936660E
    %if ($ - %%insn_081ba) > 5
        %error "LONG_081BA"
    %endif
    times 5 - ($ - %%insn_081ba) db 0
    %%insn_081bf:
    mov word [cs:0xe68],ds ; 081BF 2E8C1E680E
    %if ($ - %%insn_081bf) > 5
        %error "LONG_081BF"
    %endif
    times 5 - ($ - %%insn_081bf) db 0
    %%insn_081c4:
    cmp word [cs:0xe6e],0xffffffffffffffff ; 081C4 2E833E6E0EFF
    %if ($ - %%insn_081c4) > 6
        %error "LONG_081C4"
    %endif
    times 6 - ($ - %%insn_081c4) db 0
    %%insn_081ca:
    jz short 0x8155 ; 081CA 7489
    %if ($ - %%insn_081ca) > 2
        %error "LONG_081CA"
    %endif
    times 2 - ($ - %%insn_081ca) db 0
    %%insn_081cc:
    dec word [cs:0xe6e] ; 081CC 2EFF0E6E0E
    %if ($ - %%insn_081cc) > 5
        %error "LONG_081CC"
    %endif
    times 5 - ($ - %%insn_081cc) db 0
    %%insn_081d1:
    jmp short 0x8155 ; 081D1 EB82
    %if ($ - %%insn_081d1) > 2
        %error "LONG_081D1"
    %endif
    times 2 - ($ - %%insn_081d1) db 0
    %%insn_081d3:
    lds si,word [cs:0xe66] ; 081D3 2EC536660E
    %if ($ - %%insn_081d3) > 5
        %error "LONG_081D3"
    %endif
    times 5 - ($ - %%insn_081d3) db 0
    %%insn_081d8:
    mov ax,0x1063 ; 081D8 B86310
    %if ($ - %%insn_081d8) > 3
        %error "LONG_081D8"
    %endif
    times 3 - ($ - %%insn_081d8) db 0
    %%insn_081db:
    push cs ; 081DB 0E
    %if ($ - %%insn_081db) > 1
        %error "LONG_081DB"
    %endif
    times 1 - ($ - %%insn_081db) db 0
    %%insn_081dc:
    push ax ; 081DC 50
    %if ($ - %%insn_081dc) > 1
        %error "LONG_081DC"
    %endif
    times 1 - ($ - %%insn_081dc) db 0
    %%insn_081dd:
    push cs ; 081DD 0E
    %if ($ - %%insn_081dd) > 1
        %error "LONG_081DD"
    %endif
    times 1 - ($ - %%insn_081dd) db 0
    %%insn_081de:
    call 0x8069 ; 081DE E888FE
    %if ($ - %%insn_081de) > 3
        %error "LONG_081DE"
    %endif
    times 3 - ($ - %%insn_081de) db 0
    %%insn_081e1:
    add sp,0x4 ; 081E1 83C404
    %if ($ - %%insn_081e1) > 3
        %error "LONG_081E1"
    %endif
    times 3 - ($ - %%insn_081e1) db 0
    %%insn_081e4:
    mov ax,[si+0x1] ; 081E4 8B4401
    %if ($ - %%insn_081e4) > 3
        %error "LONG_081E4"
    %endif
    times 3 - ($ - %%insn_081e4) db 0
    %%insn_081e7:
    mov dl,[si+0x3] ; 081E7 8A5403
    %if ($ - %%insn_081e7) > 3
        %error "LONG_081E7"
    %endif
    times 3 - ($ - %%insn_081e7) db 0
    %%insn_081ea:
    mov dh,0x0 ; 081EA B600
    %if ($ - %%insn_081ea) > 2
        %error "LONG_081EA"
    %endif
    times 2 - ($ - %%insn_081ea) db 0
    %%insn_081ec:
    push bx ; 081EC 53
    %if ($ - %%insn_081ec) > 1
        %error "LONG_081EC"
    %endif
    times 1 - ($ - %%insn_081ec) db 0
    %%insn_081ed:
    push cx ; 081ED 51
    %if ($ - %%insn_081ed) > 1
        %error "LONG_081ED"
    %endif
    times 1 - ($ - %%insn_081ed) db 0
    %%insn_081ee:
    mov bx,ds ; 081EE 8CDB
    %if ($ - %%insn_081ee) > 2
        %error "LONG_081EE"
    %endif
    times 2 - ($ - %%insn_081ee) db 0
    db 0x33, 0xC9 ; 081F0 33C9 | xor cx,cx | encoding preserved
    %%insn_081f2:
    shl bx,1 ; 081F2 D1E3
    %if ($ - %%insn_081f2) > 2
        %error "LONG_081F2"
    %endif
    times 2 - ($ - %%insn_081f2) db 0
    %%insn_081f4:
    rcl cx,1 ; 081F4 D1D1
    %if ($ - %%insn_081f4) > 2
        %error "LONG_081F4"
    %endif
    times 2 - ($ - %%insn_081f4) db 0
    %%insn_081f6:
    shl bx,1 ; 081F6 D1E3
    %if ($ - %%insn_081f6) > 2
        %error "LONG_081F6"
    %endif
    times 2 - ($ - %%insn_081f6) db 0
    %%insn_081f8:
    rcl cx,1 ; 081F8 D1D1
    %if ($ - %%insn_081f8) > 2
        %error "LONG_081F8"
    %endif
    times 2 - ($ - %%insn_081f8) db 0
    %%insn_081fa:
    shl bx,1 ; 081FA D1E3
    %if ($ - %%insn_081fa) > 2
        %error "LONG_081FA"
    %endif
    times 2 - ($ - %%insn_081fa) db 0
    %%insn_081fc:
    rcl cx,1 ; 081FC D1D1
    %if ($ - %%insn_081fc) > 2
        %error "LONG_081FC"
    %endif
    times 2 - ($ - %%insn_081fc) db 0
    %%insn_081fe:
    shl bx,1 ; 081FE D1E3
    %if ($ - %%insn_081fe) > 2
        %error "LONG_081FE"
    %endif
    times 2 - ($ - %%insn_081fe) db 0
    %%insn_08200:
    rcl cx,1 ; 08200 D1D1
    %if ($ - %%insn_08200) > 2
        %error "LONG_08200"
    %endif
    times 2 - ($ - %%insn_08200) db 0
    db 0x03, 0xDE ; 08202 03DE | add bx,si | encoding preserved
    %%insn_08204:
    adc cx,0x0 ; 08204 83D100
    %if ($ - %%insn_08204) > 3
        %error "LONG_08204"
    %endif
    times 3 - ($ - %%insn_08204) db 0
    %%insn_08207:
    add bx,0x4 ; 08207 83C304
    %if ($ - %%insn_08207) > 3
        %error "LONG_08207"
    %endif
    times 3 - ($ - %%insn_08207) db 0
    %%insn_0820a:
    adc cx,0x0 ; 0820A 83D100
    %if ($ - %%insn_0820a) > 3
        %error "LONG_0820A"
    %endif
    times 3 - ($ - %%insn_0820a) db 0
    db 0x8B, 0xF3 ; 0820D 8BF3 | mov si,bx | encoding preserved
    %%insn_0820f:
    and si,0xf ; 0820F 83E60F
    %if ($ - %%insn_0820f) > 3
        %error "LONG_0820F"
    %endif
    times 3 - ($ - %%insn_0820f) db 0
    %%insn_08212:
    shr cx,1 ; 08212 D1E9
    %if ($ - %%insn_08212) > 2
        %error "LONG_08212"
    %endif
    times 2 - ($ - %%insn_08212) db 0
    %%insn_08214:
    rcr bx,1 ; 08214 D1DB
    %if ($ - %%insn_08214) > 2
        %error "LONG_08214"
    %endif
    times 2 - ($ - %%insn_08214) db 0
    %%insn_08216:
    shr cx,1 ; 08216 D1E9
    %if ($ - %%insn_08216) > 2
        %error "LONG_08216"
    %endif
    times 2 - ($ - %%insn_08216) db 0
    %%insn_08218:
    rcr bx,1 ; 08218 D1DB
    %if ($ - %%insn_08218) > 2
        %error "LONG_08218"
    %endif
    times 2 - ($ - %%insn_08218) db 0
    %%insn_0821a:
    shr cx,1 ; 0821A D1E9
    %if ($ - %%insn_0821a) > 2
        %error "LONG_0821A"
    %endif
    times 2 - ($ - %%insn_0821a) db 0
    %%insn_0821c:
    rcr bx,1 ; 0821C D1DB
    %if ($ - %%insn_0821c) > 2
        %error "LONG_0821C"
    %endif
    times 2 - ($ - %%insn_0821c) db 0
    %%insn_0821e:
    shr cx,1 ; 0821E D1E9
    %if ($ - %%insn_0821e) > 2
        %error "LONG_0821E"
    %endif
    times 2 - ($ - %%insn_0821e) db 0
    %%insn_08220:
    rcr bx,1 ; 08220 D1DB
    %if ($ - %%insn_08220) > 2
        %error "LONG_08220"
    %endif
    times 2 - ($ - %%insn_08220) db 0
    %%insn_08222:
    mov ds,bx ; 08222 8EDB
    %if ($ - %%insn_08222) > 2
        %error "LONG_08222"
    %endif
    times 2 - ($ - %%insn_08222) db 0
    %%insn_08224:
    pop cx ; 08224 59
    %if ($ - %%insn_08224) > 1
        %error "LONG_08224"
    %endif
    times 1 - ($ - %%insn_08224) db 0
    %%insn_08225:
    pop bx ; 08225 5B
    %if ($ - %%insn_08225) > 1
        %error "LONG_08225"
    %endif
    times 1 - ($ - %%insn_08225) db 0
    %%insn_08226:
    push dx ; 08226 52
    %if ($ - %%insn_08226) > 1
        %error "LONG_08226"
    %endif
    times 1 - ($ - %%insn_08226) db 0
    %%insn_08227:
    push ax ; 08227 50
    %if ($ - %%insn_08227) > 1
        %error "LONG_08227"
    %endif
    times 1 - ($ - %%insn_08227) db 0
    %%insn_08228:
    push ds ; 08228 1E
    %if ($ - %%insn_08228) > 1
        %error "LONG_08228"
    %endif
    times 1 - ($ - %%insn_08228) db 0
    %%insn_08229:
    push si ; 08229 56
    %if ($ - %%insn_08229) > 1
        %error "LONG_08229"
    %endif
    times 1 - ($ - %%insn_08229) db 0
    %%insn_0822a:
    push cs ; 0822A 0E
    %if ($ - %%insn_0822a) > 1
        %error "LONG_0822A"
    %endif
    times 1 - ($ - %%insn_0822a) db 0
    %%insn_0822b:
    call 0x82fc ; 0822B E8CE00
    %if ($ - %%insn_0822b) > 3
        %error "LONG_0822B"
    %endif
    times 3 - ($ - %%insn_0822b) db 0
    %%insn_0822e:
    add sp,0x8 ; 0822E 83C408
    %if ($ - %%insn_0822e) > 3
        %error "LONG_0822E"
    %endif
    times 3 - ($ - %%insn_0822e) db 0
    %%insn_08231:
    jmp short 0x82a5 ; 08231 EB72
    %if ($ - %%insn_08231) > 2
        %error "LONG_08231"
    %endif
    times 2 - ($ - %%insn_08231) db 0
    %%insn_08233:
    lds si,word [cs:0xe66] ; 08233 2EC536660E
    %if ($ - %%insn_08233) > 5
        %error "LONG_08233"
    %endif
    times 5 - ($ - %%insn_08233) db 0
    %%insn_08238:
    push word [si+0x4] ; 08238 FF7404
    %if ($ - %%insn_08238) > 3
        %error "LONG_08238"
    %endif
    times 3 - ($ - %%insn_08238) db 0
    %%insn_0823b:
    push cs ; 0823B 0E
    %if ($ - %%insn_0823b) > 1
        %error "LONG_0823B"
    %endif
    times 1 - ($ - %%insn_0823b) db 0
    %%insn_0823c:
    call 0x7f7b ; 0823C E83CFD
    %if ($ - %%insn_0823c) > 3
        %error "LONG_0823C"
    %endif
    times 3 - ($ - %%insn_0823c) db 0
    %%insn_0823f:
    add sp,0x2 ; 0823F 83C402
    %if ($ - %%insn_0823f) > 3
        %error "LONG_0823F"
    %endif
    times 3 - ($ - %%insn_0823f) db 0
    %%insn_08242:
    mov [cs:0xe3a],ax ; 08242 2EA33A0E
    %if ($ - %%insn_08242) > 4
        %error "LONG_08242"
    %endif
    times 4 - ($ - %%insn_08242) db 0
    %%insn_08246:
    mov ax,0x1063 ; 08246 B86310
    %if ($ - %%insn_08246) > 3
        %error "LONG_08246"
    %endif
    times 3 - ($ - %%insn_08246) db 0
    %%insn_08249:
    push cs ; 08249 0E
    %if ($ - %%insn_08249) > 1
        %error "LONG_08249"
    %endif
    times 1 - ($ - %%insn_08249) db 0
    %%insn_0824a:
    push ax ; 0824A 50
    %if ($ - %%insn_0824a) > 1
        %error "LONG_0824A"
    %endif
    times 1 - ($ - %%insn_0824a) db 0
    %%insn_0824b:
    push cs ; 0824B 0E
    %if ($ - %%insn_0824b) > 1
        %error "LONG_0824B"
    %endif
    times 1 - ($ - %%insn_0824b) db 0
    %%insn_0824c:
    call 0x8069 ; 0824C E81AFE
    %if ($ - %%insn_0824c) > 3
        %error "LONG_0824C"
    %endif
    times 3 - ($ - %%insn_0824c) db 0
    %%insn_0824f:
    add sp,0x4 ; 0824F 83C404
    %if ($ - %%insn_0824f) > 3
        %error "LONG_0824F"
    %endif
    times 3 - ($ - %%insn_0824f) db 0
    %%insn_08252:
    mov ax,[si+0x1] ; 08252 8B4401
    %if ($ - %%insn_08252) > 3
        %error "LONG_08252"
    %endif
    times 3 - ($ - %%insn_08252) db 0
    %%insn_08255:
    mov dl,[si+0x3] ; 08255 8A5403
    %if ($ - %%insn_08255) > 3
        %error "LONG_08255"
    %endif
    times 3 - ($ - %%insn_08255) db 0
    %%insn_08258:
    mov dh,0x0 ; 08258 B600
    %if ($ - %%insn_08258) > 2
        %error "LONG_08258"
    %endif
    times 2 - ($ - %%insn_08258) db 0
    db 0x2D, 0x02, 0x00 ; 0825A 2D0200 | sub ax,0x2 | encoding preserved
    %%insn_0825d:
    sbb dx,0x0 ; 0825D 83DA00
    %if ($ - %%insn_0825d) > 3
        %error "LONG_0825D"
    %endif
    times 3 - ($ - %%insn_0825d) db 0
    %%insn_08260:
    push bx ; 08260 53
    %if ($ - %%insn_08260) > 1
        %error "LONG_08260"
    %endif
    times 1 - ($ - %%insn_08260) db 0
    %%insn_08261:
    push cx ; 08261 51
    %if ($ - %%insn_08261) > 1
        %error "LONG_08261"
    %endif
    times 1 - ($ - %%insn_08261) db 0
    %%insn_08262:
    mov bx,ds ; 08262 8CDB
    %if ($ - %%insn_08262) > 2
        %error "LONG_08262"
    %endif
    times 2 - ($ - %%insn_08262) db 0
    db 0x33, 0xC9 ; 08264 33C9 | xor cx,cx | encoding preserved
    %%insn_08266:
    shl bx,1 ; 08266 D1E3
    %if ($ - %%insn_08266) > 2
        %error "LONG_08266"
    %endif
    times 2 - ($ - %%insn_08266) db 0
    %%insn_08268:
    rcl cx,1 ; 08268 D1D1
    %if ($ - %%insn_08268) > 2
        %error "LONG_08268"
    %endif
    times 2 - ($ - %%insn_08268) db 0
    %%insn_0826a:
    shl bx,1 ; 0826A D1E3
    %if ($ - %%insn_0826a) > 2
        %error "LONG_0826A"
    %endif
    times 2 - ($ - %%insn_0826a) db 0
    %%insn_0826c:
    rcl cx,1 ; 0826C D1D1
    %if ($ - %%insn_0826c) > 2
        %error "LONG_0826C"
    %endif
    times 2 - ($ - %%insn_0826c) db 0
    %%insn_0826e:
    shl bx,1 ; 0826E D1E3
    %if ($ - %%insn_0826e) > 2
        %error "LONG_0826E"
    %endif
    times 2 - ($ - %%insn_0826e) db 0
    %%insn_08270:
    rcl cx,1 ; 08270 D1D1
    %if ($ - %%insn_08270) > 2
        %error "LONG_08270"
    %endif
    times 2 - ($ - %%insn_08270) db 0
    %%insn_08272:
    shl bx,1 ; 08272 D1E3
    %if ($ - %%insn_08272) > 2
        %error "LONG_08272"
    %endif
    times 2 - ($ - %%insn_08272) db 0
    %%insn_08274:
    rcl cx,1 ; 08274 D1D1
    %if ($ - %%insn_08274) > 2
        %error "LONG_08274"
    %endif
    times 2 - ($ - %%insn_08274) db 0
    db 0x03, 0xDE ; 08276 03DE | add bx,si | encoding preserved
    %%insn_08278:
    adc cx,0x0 ; 08278 83D100
    %if ($ - %%insn_08278) > 3
        %error "LONG_08278"
    %endif
    times 3 - ($ - %%insn_08278) db 0
    %%insn_0827b:
    add bx,0x6 ; 0827B 83C306
    %if ($ - %%insn_0827b) > 3
        %error "LONG_0827B"
    %endif
    times 3 - ($ - %%insn_0827b) db 0
    %%insn_0827e:
    adc cx,0x0 ; 0827E 83D100
    %if ($ - %%insn_0827e) > 3
        %error "LONG_0827E"
    %endif
    times 3 - ($ - %%insn_0827e) db 0
    db 0x8B, 0xF3 ; 08281 8BF3 | mov si,bx | encoding preserved
    %%insn_08283:
    and si,0xf ; 08283 83E60F
    %if ($ - %%insn_08283) > 3
        %error "LONG_08283"
    %endif
    times 3 - ($ - %%insn_08283) db 0
    %%insn_08286:
    shr cx,1 ; 08286 D1E9
    %if ($ - %%insn_08286) > 2
        %error "LONG_08286"
    %endif
    times 2 - ($ - %%insn_08286) db 0
    %%insn_08288:
    rcr bx,1 ; 08288 D1DB
    %if ($ - %%insn_08288) > 2
        %error "LONG_08288"
    %endif
    times 2 - ($ - %%insn_08288) db 0
    %%insn_0828a:
    shr cx,1 ; 0828A D1E9
    %if ($ - %%insn_0828a) > 2
        %error "LONG_0828A"
    %endif
    times 2 - ($ - %%insn_0828a) db 0
    %%insn_0828c:
    rcr bx,1 ; 0828C D1DB
    %if ($ - %%insn_0828c) > 2
        %error "LONG_0828C"
    %endif
    times 2 - ($ - %%insn_0828c) db 0
    %%insn_0828e:
    shr cx,1 ; 0828E D1E9
    %if ($ - %%insn_0828e) > 2
        %error "LONG_0828E"
    %endif
    times 2 - ($ - %%insn_0828e) db 0
    %%insn_08290:
    rcr bx,1 ; 08290 D1DB
    %if ($ - %%insn_08290) > 2
        %error "LONG_08290"
    %endif
    times 2 - ($ - %%insn_08290) db 0
    %%insn_08292:
    shr cx,1 ; 08292 D1E9
    %if ($ - %%insn_08292) > 2
        %error "LONG_08292"
    %endif
    times 2 - ($ - %%insn_08292) db 0
    %%insn_08294:
    rcr bx,1 ; 08294 D1DB
    %if ($ - %%insn_08294) > 2
        %error "LONG_08294"
    %endif
    times 2 - ($ - %%insn_08294) db 0
    %%insn_08296:
    mov ds,bx ; 08296 8EDB
    %if ($ - %%insn_08296) > 2
        %error "LONG_08296"
    %endif
    times 2 - ($ - %%insn_08296) db 0
    %%insn_08298:
    pop cx ; 08298 59
    %if ($ - %%insn_08298) > 1
        %error "LONG_08298"
    %endif
    times 1 - ($ - %%insn_08298) db 0
    %%insn_08299:
    pop bx ; 08299 5B
    %if ($ - %%insn_08299) > 1
        %error "LONG_08299"
    %endif
    times 1 - ($ - %%insn_08299) db 0
    %%insn_0829a:
    push dx ; 0829A 52
    %if ($ - %%insn_0829a) > 1
        %error "LONG_0829A"
    %endif
    times 1 - ($ - %%insn_0829a) db 0
    %%insn_0829b:
    push ax ; 0829B 50
    %if ($ - %%insn_0829b) > 1
        %error "LONG_0829B"
    %endif
    times 1 - ($ - %%insn_0829b) db 0
    %%insn_0829c:
    push ds ; 0829C 1E
    %if ($ - %%insn_0829c) > 1
        %error "LONG_0829C"
    %endif
    times 1 - ($ - %%insn_0829c) db 0
    %%insn_0829d:
    push si ; 0829D 56
    %if ($ - %%insn_0829d) > 1
        %error "LONG_0829D"
    %endif
    times 1 - ($ - %%insn_0829d) db 0
    %%insn_0829e:
    push cs ; 0829E 0E
    %if ($ - %%insn_0829e) > 1
        %error "LONG_0829E"
    %endif
    times 1 - ($ - %%insn_0829e) db 0
    %%insn_0829f:
    call 0x82fc ; 0829F E85A00
    %if ($ - %%insn_0829f) > 3
        %error "LONG_0829F"
    %endif
    times 3 - ($ - %%insn_0829f) db 0
    %%insn_082a2:
    add sp,0x8 ; 082A2 83C408
    %if ($ - %%insn_082a2) > 3
        %error "LONG_082A2"
    %endif
    times 3 - ($ - %%insn_082a2) db 0
    %%insn_082a5:
    pop di ; 082A5 5F
    %if ($ - %%insn_082a5) > 1
        %error "LONG_082A5"
    %endif
    times 1 - ($ - %%insn_082a5) db 0
    %%insn_082a6:
    pop si ; 082A6 5E
    %if ($ - %%insn_082a6) > 1
        %error "LONG_082A6"
    %endif
    times 1 - ($ - %%insn_082a6) db 0
    %%insn_082a7:
    pop ds ; 082A7 1F
    %if ($ - %%insn_082a7) > 1
        %error "LONG_082A7"
    %endif
    times 1 - ($ - %%insn_082a7) db 0
    %%insn_082a8:
    retf ; 082A8 CB
    %if ($ - %%insn_082a8) > 1
        %error "LONG_082A8"
    %endif
    times 1 - ($ - %%insn_082a8) db 0
    %if ($ - %%fragment_start) != 343
        %error "SIZE_08152"
    %endif
%endmacro
