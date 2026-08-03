; PE virtual entry 0040E240
; Ghidra working symbol: FUN_0040e240
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e240_part_00 0
    %%fragment_start:
func_0040e240:
    %%insn_0040e240:
    push esi ; 0040E240 56
    %if ($ - %%insn_0040e240) > 1
        %error "LONG_0040E240"
    %endif
    times 1 - ($ - %%insn_0040e240) db 0
    %%insn_0040e241:
    mov esi,[esp+0x8] ; 0040E241 8B742408
    %if ($ - %%insn_0040e241) > 4
        %error "LONG_0040E241"
    %endif
    times 4 - ($ - %%insn_0040e241) db 0
    %%insn_0040e245:
    push dword 0x8000 ; 0040E245 6800800000
    %if ($ - %%insn_0040e245) > 5
        %error "LONG_0040E245"
    %endif
    times 5 - ($ - %%insn_0040e245) db 0
    %%insn_0040e24a:
    push dword 0x0 ; 0040E24A 6A00
    %if ($ - %%insn_0040e24a) > 2
        %error "LONG_0040E24A"
    %endif
    times 2 - ($ - %%insn_0040e24a) db 0
    %%insn_0040e24c:
    mov eax,[esi+0x10] ; 0040E24C 8B4610
    %if ($ - %%insn_0040e24c) > 3
        %error "LONG_0040E24C"
    %endif
    times 3 - ($ - %%insn_0040e24c) db 0
    %%insn_0040e24f:
    push eax ; 0040E24F 50
    %if ($ - %%insn_0040e24f) > 1
        %error "LONG_0040E24F"
    %endif
    times 1 - ($ - %%insn_0040e24f) db 0
    %%insn_0040e250:
    call dword near [0x424404] ; 0040E250 FF1504444200
    %if ($ - %%insn_0040e250) > 6
        %error "LONG_0040E250"
    %endif
    times 6 - ($ - %%insn_0040e250) db 0
    %%insn_0040e256:
    cmp [0x41de80],esi ; 0040E256 393580DE4100
    %if ($ - %%insn_0040e256) > 6
        %error "LONG_0040E256"
    %endif
    times 6 - ($ - %%insn_0040e256) db 0
    %%insn_0040e25c:
    jnz short 0x40e267 ; 0040E25C 7509
    %if ($ - %%insn_0040e25c) > 2
        %error "LONG_0040E25C"
    %endif
    times 2 - ($ - %%insn_0040e25c) db 0
    %%insn_0040e25e:
    mov ecx,[esi+0x4] ; 0040E25E 8B4E04
    %if ($ - %%insn_0040e25e) > 3
        %error "LONG_0040E25E"
    %endif
    times 3 - ($ - %%insn_0040e25e) db 0
    %%insn_0040e261:
    mov [0x41de80],ecx ; 0040E261 890D80DE4100
    %if ($ - %%insn_0040e261) > 6
        %error "LONG_0040E261"
    %endif
    times 6 - ($ - %%insn_0040e261) db 0
    %%insn_0040e267:
    cmp esi,0x41be60 ; 0040E267 81FE60BE4100
    %if ($ - %%insn_0040e267) > 6
        %error "LONG_0040E267"
    %endif
    times 6 - ($ - %%insn_0040e267) db 0
    %%insn_0040e26d:
    jz short 0x40e28f ; 0040E26D 7420
    %if ($ - %%insn_0040e26d) > 2
        %error "LONG_0040E26D"
    %endif
    times 2 - ($ - %%insn_0040e26d) db 0
    %%insn_0040e26f:
    mov edx,[esi+0x4] ; 0040E26F 8B5604
    %if ($ - %%insn_0040e26f) > 3
        %error "LONG_0040E26F"
    %endif
    times 3 - ($ - %%insn_0040e26f) db 0
    %%insn_0040e272:
    mov eax,[esi] ; 0040E272 8B06
    %if ($ - %%insn_0040e272) > 2
        %error "LONG_0040E272"
    %endif
    times 2 - ($ - %%insn_0040e272) db 0
    %%insn_0040e274:
    push esi ; 0040E274 56
    %if ($ - %%insn_0040e274) > 1
        %error "LONG_0040E274"
    %endif
    times 1 - ($ - %%insn_0040e274) db 0
    %%insn_0040e275:
    push dword 0x0 ; 0040E275 6A00
    %if ($ - %%insn_0040e275) > 2
        %error "LONG_0040E275"
    %endif
    times 2 - ($ - %%insn_0040e275) db 0
    %%insn_0040e277:
    mov [edx],eax ; 0040E277 8902
    %if ($ - %%insn_0040e277) > 2
        %error "LONG_0040E277"
    %endif
    times 2 - ($ - %%insn_0040e277) db 0
    %%insn_0040e279:
    mov ecx,[esi] ; 0040E279 8B0E
    %if ($ - %%insn_0040e279) > 2
        %error "LONG_0040E279"
    %endif
    times 2 - ($ - %%insn_0040e279) db 0
    %%insn_0040e27b:
    mov edx,[esi+0x4] ; 0040E27B 8B5604
    %if ($ - %%insn_0040e27b) > 3
        %error "LONG_0040E27B"
    %endif
    times 3 - ($ - %%insn_0040e27b) db 0
    %%insn_0040e27e:
    mov [ecx+0x4],edx ; 0040E27E 895104
    %if ($ - %%insn_0040e27e) > 3
        %error "LONG_0040E27E"
    %endif
    times 3 - ($ - %%insn_0040e27e) db 0
    %%insn_0040e281:
    mov eax,[0x42358c] ; 0040E281 A18C354200
    %if ($ - %%insn_0040e281) > 5
        %error "LONG_0040E281"
    %endif
    times 5 - ($ - %%insn_0040e281) db 0
    %%insn_0040e286:
    push eax ; 0040E286 50
    %if ($ - %%insn_0040e286) > 1
        %error "LONG_0040E286"
    %endif
    times 1 - ($ - %%insn_0040e286) db 0
    %%insn_0040e287:
    call dword near [0x424444] ; 0040E287 FF1544444200
    %if ($ - %%insn_0040e287) > 6
        %error "LONG_0040E287"
    %endif
    times 6 - ($ - %%insn_0040e287) db 0
    %%insn_0040e28d:
    pop esi ; 0040E28D 5E
    %if ($ - %%insn_0040e28d) > 1
        %error "LONG_0040E28D"
    %endif
    times 1 - ($ - %%insn_0040e28d) db 0
    %%insn_0040e28e:
    ret ; 0040E28E C3
    %if ($ - %%insn_0040e28e) > 1
        %error "LONG_0040E28E"
    %endif
    times 1 - ($ - %%insn_0040e28e) db 0
    %%insn_0040e28f:
    mov dword [0x41be70],0xffffffff ; 0040E28F C70570BE4100FFFFFFFF
    %if ($ - %%insn_0040e28f) > 10
        %error "LONG_0040E28F"
    %endif
    times 10 - ($ - %%insn_0040e28f) db 0
    %%insn_0040e299:
    pop esi ; 0040E299 5E
    %if ($ - %%insn_0040e299) > 1
        %error "LONG_0040E299"
    %endif
    times 1 - ($ - %%insn_0040e299) db 0
    %%insn_0040e29a:
    ret ; 0040E29A C3
    %if ($ - %%insn_0040e29a) > 1
        %error "LONG_0040E29A"
    %endif
    times 1 - ($ - %%insn_0040e29a) db 0
    %if ($ - %%fragment_start) != 91
        %error "function fragment size drift: 0040E240"
    %endif
%endmacro
