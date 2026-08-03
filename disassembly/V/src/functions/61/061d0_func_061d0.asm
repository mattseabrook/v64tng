; Linear entry 061D0 (1000:61d0)
; Ghidra working symbol: FUN_1000_61d0
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_061d0_part_00 0
    %%fragment_start:
func_061d0:
    %%insn_061d0:
    push bp ; 061D0 55
    %if ($ - %%insn_061d0) > 1
        %error "LONG_061D0"
    %endif
    times 1 - ($ - %%insn_061d0) db 0
    db 0x8B, 0xEC ; 061D1 8BEC | mov bp,sp | encoding preserved
    %%insn_061d3:
    push ax ; 061D3 50
    %if ($ - %%insn_061d3) > 1
        %error "LONG_061D3"
    %endif
    times 1 - ($ - %%insn_061d3) db 0
    %%insn_061d4:
    push si ; 061D4 56
    %if ($ - %%insn_061d4) > 1
        %error "LONG_061D4"
    %endif
    times 1 - ($ - %%insn_061d4) db 0
    %%insn_061d5:
    mov al,[0xe4ba] ; 061D5 A0BAE4
    %if ($ - %%insn_061d5) > 3
        %error "LONG_061D5"
    %endif
    times 3 - ($ - %%insn_061d5) db 0
    %%insn_061d8:
    cbw ; 061D8 98
    %if ($ - %%insn_061d8) > 1
        %error "LONG_061D8"
    %endif
    times 1 - ($ - %%insn_061d8) db 0
    db 0x8B, 0xD8 ; 061D9 8BD8 | mov bx,ax | encoding preserved
    %%insn_061db:
    cmp byte [bx-0x1b7c],0x0 ; 061DB 80BF84E400
    %if ($ - %%insn_061db) > 5
        %error "LONG_061DB"
    %endif
    times 5 - ($ - %%insn_061db) db 0
    %%insn_061e0:
    jz short 0x61f0 ; 061E0 740E
    %if ($ - %%insn_061e0) > 2
        %error "LONG_061E0"
    %endif
    times 2 - ($ - %%insn_061e0) db 0
    %%insn_061e2:
    inc byte [0xe4ba] ; 061E2 FE06BAE4
    %if ($ - %%insn_061e2) > 4
        %error "LONG_061E2"
    %endif
    times 4 - ($ - %%insn_061e2) db 0
    %%insn_061e6:
    cmp byte [0xe4ba],0x31 ; 061E6 803EBAE431
    %if ($ - %%insn_061e6) > 5
        %error "LONG_061E6"
    %endif
    times 5 - ($ - %%insn_061e6) db 0
    %%insn_061eb:
    jl short 0x61d5 ; 061EB 7CE8
    %if ($ - %%insn_061eb) > 2
        %error "LONG_061EB"
    %endif
    times 2 - ($ - %%insn_061eb) db 0
    %%insn_061ed:
    jmp 0x6288 ; 061ED E99800
    %if ($ - %%insn_061ed) > 3
        %error "LONG_061ED"
    %endif
    times 3 - ($ - %%insn_061ed) db 0
    %%insn_061f0:
    cmp byte [0xe4bb],0x0 ; 061F0 803EBBE400
    %if ($ - %%insn_061f0) > 5
        %error "LONG_061F0"
    %endif
    times 5 - ($ - %%insn_061f0) db 0
    %%insn_061f5:
    jnz short 0x6223 ; 061F5 752C
    %if ($ - %%insn_061f5) > 2
        %error "LONG_061F5"
    %endif
    times 2 - ($ - %%insn_061f5) db 0
    %%insn_061f7:
    mov al,[0xe4ba] ; 061F7 A0BAE4
    %if ($ - %%insn_061f7) > 3
        %error "LONG_061F7"
    %endif
    times 3 - ($ - %%insn_061f7) db 0
    %%insn_061fa:
    cbw ; 061FA 98
    %if ($ - %%insn_061fa) > 1
        %error "LONG_061FA"
    %endif
    times 1 - ($ - %%insn_061fa) db 0
    db 0x8B, 0xD8 ; 061FB 8BD8 | mov bx,ax | encoding preserved
    %%insn_061fd:
    shl bx,1 ; 061FD D1E3
    %if ($ - %%insn_061fd) > 2
        %error "LONG_061FD"
    %endif
    times 2 - ($ - %%insn_061fd) db 0
    %%insn_061ff:
    mov si,[bx-0x17c9] ; 061FF 8BB737E8
    %if ($ - %%insn_061ff) > 4
        %error "LONG_061FF"
    %endif
    times 4 - ($ - %%insn_061ff) db 0
    %%insn_06203:
    lodsb ; 06203 AC
    %if ($ - %%insn_06203) > 1
        %error "LONG_06203"
    %endif
    times 1 - ($ - %%insn_06203) db 0
    %%insn_06204:
    mov [0xe4b9],al ; 06204 A2B9E4
    %if ($ - %%insn_06204) > 3
        %error "LONG_06204"
    %endif
    times 3 - ($ - %%insn_06204) db 0
    db 0x0A, 0xC0 ; 06207 0AC0 | or al,al | encoding preserved
    %%insn_06209:
    jl short 0x621e ; 06209 7C13
    %if ($ - %%insn_06209) > 2
        %error "LONG_06209"
    %endif
    times 2 - ($ - %%insn_06209) db 0
    %%insn_0620b:
    cbw ; 0620B 98
    %if ($ - %%insn_0620b) > 1
        %error "LONG_0620B"
    %endif
    times 1 - ($ - %%insn_0620b) db 0
    db 0x8B, 0xD8 ; 0620C 8BD8 | mov bx,ax | encoding preserved
    %%insn_0620e:
    mov al,[bp-0x2] ; 0620E 8A46FE
    %if ($ - %%insn_0620e) > 3
        %error "LONG_0620E"
    %endif
    times 3 - ($ - %%insn_0620e) db 0
    %%insn_06211:
    cmp [bx-0x1b7c],al ; 06211 388784E4
    %if ($ - %%insn_06211) > 4
        %error "LONG_06211"
    %endif
    times 4 - ($ - %%insn_06211) db 0
    %%insn_06215:
    jnz short 0x6203 ; 06215 75EC
    %if ($ - %%insn_06215) > 2
        %error "LONG_06215"
    %endif
    times 2 - ($ - %%insn_06215) db 0
    %%insn_06217:
    mov byte [0xe4bb],0x1 ; 06217 C606BBE401
    %if ($ - %%insn_06217) > 5
        %error "LONG_06217"
    %endif
    times 5 - ($ - %%insn_06217) db 0
    %%insn_0621c:
    jmp short 0x6280 ; 0621C EB62
    %if ($ - %%insn_0621c) > 2
        %error "LONG_0621C"
    %endif
    times 2 - ($ - %%insn_0621c) db 0
    %%insn_0621e:
    mov byte [0xe4bb],0x1 ; 0621E C606BBE401
    %if ($ - %%insn_0621e) > 5
        %error "LONG_0621E"
    %endif
    times 5 - ($ - %%insn_0621e) db 0
    %%insn_06223:
    cmp byte [0xe4bb],0x1 ; 06223 803EBBE401
    %if ($ - %%insn_06223) > 5
        %error "LONG_06223"
    %endif
    times 5 - ($ - %%insn_06223) db 0
    %%insn_06228:
    jnz short 0x6234 ; 06228 750A
    %if ($ - %%insn_06228) > 2
        %error "LONG_06228"
    %endif
    times 2 - ($ - %%insn_06228) db 0
    %%insn_0622a:
    mov byte [0xe4bc],0x0 ; 0622A C606BCE400
    %if ($ - %%insn_0622a) > 5
        %error "LONG_0622A"
    %endif
    times 5 - ($ - %%insn_0622a) db 0
    %%insn_0622f:
    mov byte [0xe4bb],0x2 ; 0622F C606BBE402
    %if ($ - %%insn_0622f) > 5
        %error "LONG_0622F"
    %endif
    times 5 - ($ - %%insn_0622f) db 0
    %%insn_06234:
    cmp byte [0xe4bb],0x2 ; 06234 803EBBE402
    %if ($ - %%insn_06234) > 5
        %error "LONG_06234"
    %endif
    times 5 - ($ - %%insn_06234) db 0
    %%insn_06239:
    jnz short 0x61d5 ; 06239 759A
    %if ($ - %%insn_06239) > 2
        %error "LONG_06239"
    %endif
    times 2 - ($ - %%insn_06239) db 0
    %%insn_0623b:
    mov al,[0xe4bc] ; 0623B A0BCE4
    %if ($ - %%insn_0623b) > 3
        %error "LONG_0623B"
    %endif
    times 3 - ($ - %%insn_0623b) db 0
    %%insn_0623e:
    cbw ; 0623E 98
    %if ($ - %%insn_0623e) > 1
        %error "LONG_0623E"
    %endif
    times 1 - ($ - %%insn_0623e) db 0
    db 0x8B, 0xF0 ; 0623F 8BF0 | mov si,ax | encoding preserved
    %%insn_06241:
    mov al,[0xe4ba] ; 06241 A0BAE4
    %if ($ - %%insn_06241) > 3
        %error "LONG_06241"
    %endif
    times 3 - ($ - %%insn_06241) db 0
    %%insn_06244:
    cbw ; 06244 98
    %if ($ - %%insn_06244) > 1
        %error "LONG_06244"
    %endif
    times 1 - ($ - %%insn_06244) db 0
    db 0x8B, 0xD8 ; 06245 8BD8 | mov bx,ax | encoding preserved
    %%insn_06247:
    shl bx,1 ; 06247 D1E3
    %if ($ - %%insn_06247) > 2
        %error "LONG_06247"
    %endif
    times 2 - ($ - %%insn_06247) db 0
    %%insn_06249:
    add si,[bx-0x1767] ; 06249 03B799E8
    %if ($ - %%insn_06249) > 4
        %error "LONG_06249"
    %endif
    times 4 - ($ - %%insn_06249) db 0
    %%insn_0624d:
    cmp byte [0xe4bc],0x10 ; 0624D 803EBCE410
    %if ($ - %%insn_0624d) > 5
        %error "LONG_0624D"
    %endif
    times 5 - ($ - %%insn_0624d) db 0
    %%insn_06252:
    jnl short 0x6273 ; 06252 7D1F
    %if ($ - %%insn_06252) > 2
        %error "LONG_06252"
    %endif
    times 2 - ($ - %%insn_06252) db 0
    %%insn_06254:
    lodsb ; 06254 AC
    %if ($ - %%insn_06254) > 1
        %error "LONG_06254"
    %endif
    times 1 - ($ - %%insn_06254) db 0
    %%insn_06255:
    mov [0xe4b9],al ; 06255 A2B9E4
    %if ($ - %%insn_06255) > 3
        %error "LONG_06255"
    %endif
    times 3 - ($ - %%insn_06255) db 0
    db 0x0A, 0xC0 ; 06258 0AC0 | or al,al | encoding preserved
    %%insn_0625a:
    jl short 0x6273 ; 0625A 7C17
    %if ($ - %%insn_0625a) > 2
        %error "LONG_0625A"
    %endif
    times 2 - ($ - %%insn_0625a) db 0
    %%insn_0625c:
    cbw ; 0625C 98
    %if ($ - %%insn_0625c) > 1
        %error "LONG_0625C"
    %endif
    times 1 - ($ - %%insn_0625c) db 0
    db 0x8B, 0xD8 ; 0625D 8BD8 | mov bx,ax | encoding preserved
    %%insn_0625f:
    mov al,[bp-0x2] ; 0625F 8A46FE
    %if ($ - %%insn_0625f) > 3
        %error "LONG_0625F"
    %endif
    times 3 - ($ - %%insn_0625f) db 0
    %%insn_06262:
    cmp [bx-0x1b7c],al ; 06262 388784E4
    %if ($ - %%insn_06262) > 4
        %error "LONG_06262"
    %endif
    times 4 - ($ - %%insn_06262) db 0
    %%insn_06266:
    jz short 0x627c ; 06266 7414
    %if ($ - %%insn_06266) > 2
        %error "LONG_06266"
    %endif
    times 2 - ($ - %%insn_06266) db 0
    %%insn_06268:
    inc byte [0xe4bc] ; 06268 FE06BCE4
    %if ($ - %%insn_06268) > 4
        %error "LONG_06268"
    %endif
    times 4 - ($ - %%insn_06268) db 0
    %%insn_0626c:
    cmp byte [0xe4bc],0x10 ; 0626C 803EBCE410
    %if ($ - %%insn_0626c) > 5
        %error "LONG_0626C"
    %endif
    times 5 - ($ - %%insn_0626c) db 0
    %%insn_06271:
    jl short 0x6254 ; 06271 7CE1
    %if ($ - %%insn_06271) > 2
        %error "LONG_06271"
    %endif
    times 2 - ($ - %%insn_06271) db 0
    %%insn_06273:
    mov byte [0xe4bb],0x0 ; 06273 C606BBE400
    %if ($ - %%insn_06273) > 5
        %error "LONG_06273"
    %endif
    times 5 - ($ - %%insn_06273) db 0
    %%insn_06278:
    jmp 0x61e2 ; 06278 E967FF
    %if ($ - %%insn_06278) > 3
        %error "LONG_06278"
    %endif
    times 3 - ($ - %%insn_06278) db 0
    %if ($ - %%fragment_start) != 171
        %error "SIZE_061D0"
    %endif
%endmacro

%macro emit_func_061d0_part_01 0
    %%fragment_start:
    %%insn_0627c:
    inc byte [0xe4bc] ; 0627C FE06BCE4
    %if ($ - %%insn_0627c) > 4
        %error "LONG_0627C"
    %endif
    times 4 - ($ - %%insn_0627c) db 0
    %%insn_06280:
    mov ax,0x1 ; 06280 B80100
    %if ($ - %%insn_06280) > 3
        %error "LONG_06280"
    %endif
    times 3 - ($ - %%insn_06280) db 0
    %%insn_06283:
    pop si ; 06283 5E
    %if ($ - %%insn_06283) > 1
        %error "LONG_06283"
    %endif
    times 1 - ($ - %%insn_06283) db 0
    db 0x8B, 0xE5 ; 06284 8BE5 | mov sp,bp | encoding preserved
    %%insn_06286:
    pop bp ; 06286 5D
    %if ($ - %%insn_06286) > 1
        %error "LONG_06286"
    %endif
    times 1 - ($ - %%insn_06286) db 0
    %%insn_06287:
    ret ; 06287 C3
    %if ($ - %%insn_06287) > 1
        %error "LONG_06287"
    %endif
    times 1 - ($ - %%insn_06287) db 0
    db 0x2B, 0xC0 ; 06288 2BC0 | sub ax,ax | encoding preserved
    %%insn_0628a:
    pop si ; 0628A 5E
    %if ($ - %%insn_0628a) > 1
        %error "LONG_0628A"
    %endif
    times 1 - ($ - %%insn_0628a) db 0
    db 0x8B, 0xE5 ; 0628B 8BE5 | mov sp,bp | encoding preserved
    %%insn_0628d:
    pop bp ; 0628D 5D
    %if ($ - %%insn_0628d) > 1
        %error "LONG_0628D"
    %endif
    times 1 - ($ - %%insn_0628d) db 0
    %%insn_0628e:
    ret ; 0628E C3
    %if ($ - %%insn_0628e) > 1
        %error "LONG_0628E"
    %endif
    times 1 - ($ - %%insn_0628e) db 0
    %if ($ - %%fragment_start) != 19
        %error "SIZE_0627C"
    %endif
%endmacro
