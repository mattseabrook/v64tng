; PE virtual entry 00410010
; Ghidra working symbol: FUN_00410010
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00410010_part_00 0
    %%fragment_start:
func_00410010:
    %%insn_00410010:
    mov eax,[0x423580] ; 00410010 A180354200
    %if ($ - %%insn_00410010) > 5
        %error "LONG_00410010"
    %endif
    times 5 - ($ - %%insn_00410010) db 0
    %%insn_00410015:
    push esi ; 00410015 56
    %if ($ - %%insn_00410015) > 1
        %error "LONG_00410015"
    %endif
    times 1 - ($ - %%insn_00410015) db 0
    %%insn_00410016:
    mov esi,[esp+0x8] ; 00410016 8B742408
    %if ($ - %%insn_00410016) > 4
        %error "LONG_00410016"
    %endif
    times 4 - ($ - %%insn_00410016) db 0
    %%insn_0041001a:
    push edi ; 0041001A 57
    %if ($ - %%insn_0041001a) > 1
        %error "LONG_0041001A"
    %endif
    times 1 - ($ - %%insn_0041001a) db 0
    db 0x3B, 0xF0 ; 0041001B 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0041001d:
    jnc short 0x410066 ; 0041001D 7347
    %if ($ - %%insn_0041001d) > 2
        %error "LONG_0041001D"
    %endif
    times 2 - ($ - %%insn_0041001d) db 0
    db 0x8B, 0xC6 ; 0041001F 8BC6 | mov eax,esi | encoding preserved
    db 0x8B, 0xCE ; 00410021 8BCE | mov ecx,esi | encoding preserved
    %%insn_00410023:
    and eax,0x1f ; 00410023 83E01F
    %if ($ - %%insn_00410023) > 3
        %error "LONG_00410023"
    %endif
    times 3 - ($ - %%insn_00410023) db 0
    %%insn_00410026:
    sar ecx,byte 0x5 ; 00410026 C1F905
    %if ($ - %%insn_00410026) > 3
        %error "LONG_00410026"
    %endif
    times 3 - ($ - %%insn_00410026) db 0
    %%insn_00410029:
    lea edx,[eax+eax*8] ; 00410029 8D14C0
    %if ($ - %%insn_00410029) > 3
        %error "LONG_00410029"
    %endif
    times 3 - ($ - %%insn_00410029) db 0
    %%insn_0041002c:
    mov eax,[ecx*4+0x423480] ; 0041002C 8B048D80344200
    %if ($ - %%insn_0041002c) > 7
        %error "LONG_0041002C"
    %endif
    times 7 - ($ - %%insn_0041002c) db 0
    %%insn_00410033:
    test byte [eax+edx*4+0x4],0x1 ; 00410033 F644900401
    %if ($ - %%insn_00410033) > 5
        %error "LONG_00410033"
    %endif
    times 5 - ($ - %%insn_00410033) db 0
    %%insn_00410038:
    jz short 0x410066 ; 00410038 742C
    %if ($ - %%insn_00410038) > 2
        %error "LONG_00410038"
    %endif
    times 2 - ($ - %%insn_00410038) db 0
    %%insn_0041003a:
    push esi ; 0041003A 56
    %if ($ - %%insn_0041003a) > 1
        %error "LONG_0041003A"
    %endif
    times 1 - ($ - %%insn_0041003a) db 0
    %%insn_0041003b:
    call 0x4111f0 ; 0041003B E8B0110000
    %if ($ - %%insn_0041003b) > 5
        %error "LONG_0041003B"
    %endif
    times 5 - ($ - %%insn_0041003b) db 0
    %%insn_00410040:
    mov ecx,[esp+0x18] ; 00410040 8B4C2418
    %if ($ - %%insn_00410040) > 4
        %error "LONG_00410040"
    %endif
    times 4 - ($ - %%insn_00410040) db 0
    %%insn_00410044:
    mov edx,[esp+0x14] ; 00410044 8B542414
    %if ($ - %%insn_00410044) > 4
        %error "LONG_00410044"
    %endif
    times 4 - ($ - %%insn_00410044) db 0
    %%insn_00410048:
    add esp,0x4 ; 00410048 83C404
    %if ($ - %%insn_00410048) > 3
        %error "LONG_00410048"
    %endif
    times 3 - ($ - %%insn_00410048) db 0
    %%insn_0041004b:
    push ecx ; 0041004B 51
    %if ($ - %%insn_0041004b) > 1
        %error "LONG_0041004B"
    %endif
    times 1 - ($ - %%insn_0041004b) db 0
    %%insn_0041004c:
    push edx ; 0041004C 52
    %if ($ - %%insn_0041004c) > 1
        %error "LONG_0041004C"
    %endif
    times 1 - ($ - %%insn_0041004c) db 0
    %%insn_0041004d:
    push esi ; 0041004D 56
    %if ($ - %%insn_0041004d) > 1
        %error "LONG_0041004D"
    %endif
    times 1 - ($ - %%insn_0041004d) db 0
    %%insn_0041004e:
    call 0x410090 ; 0041004E E83D000000
    %if ($ - %%insn_0041004e) > 5
        %error "LONG_0041004E"
    %endif
    times 5 - ($ - %%insn_0041004e) db 0
    %%insn_00410053:
    add esp,0xc ; 00410053 83C40C
    %if ($ - %%insn_00410053) > 3
        %error "LONG_00410053"
    %endif
    times 3 - ($ - %%insn_00410053) db 0
    db 0x8B, 0xF8 ; 00410056 8BF8 | mov edi,eax | encoding preserved
    %%insn_00410058:
    push esi ; 00410058 56
    %if ($ - %%insn_00410058) > 1
        %error "LONG_00410058"
    %endif
    times 1 - ($ - %%insn_00410058) db 0
    %%insn_00410059:
    call 0x411260 ; 00410059 E802120000
    %if ($ - %%insn_00410059) > 5
        %error "LONG_00410059"
    %endif
    times 5 - ($ - %%insn_00410059) db 0
    %%insn_0041005e:
    add esp,0x4 ; 0041005E 83C404
    %if ($ - %%insn_0041005e) > 3
        %error "LONG_0041005E"
    %endif
    times 3 - ($ - %%insn_0041005e) db 0
    db 0x8B, 0xC7 ; 00410061 8BC7 | mov eax,edi | encoding preserved
    %%insn_00410063:
    pop edi ; 00410063 5F
    %if ($ - %%insn_00410063) > 1
        %error "LONG_00410063"
    %endif
    times 1 - ($ - %%insn_00410063) db 0
    %%insn_00410064:
    pop esi ; 00410064 5E
    %if ($ - %%insn_00410064) > 1
        %error "LONG_00410064"
    %endif
    times 1 - ($ - %%insn_00410064) db 0
    %%insn_00410065:
    ret ; 00410065 C3
    %if ($ - %%insn_00410065) > 1
        %error "LONG_00410065"
    %endif
    times 1 - ($ - %%insn_00410065) db 0
    %%insn_00410066:
    call 0x410e10 ; 00410066 E8A50D0000
    %if ($ - %%insn_00410066) > 5
        %error "LONG_00410066"
    %endif
    times 5 - ($ - %%insn_00410066) db 0
    %%insn_0041006b:
    mov dword [eax],0x9 ; 0041006B C70009000000
    %if ($ - %%insn_0041006b) > 6
        %error "LONG_0041006B"
    %endif
    times 6 - ($ - %%insn_0041006b) db 0
    %%insn_00410071:
    call 0x410e20 ; 00410071 E8AA0D0000
    %if ($ - %%insn_00410071) > 5
        %error "LONG_00410071"
    %endif
    times 5 - ($ - %%insn_00410071) db 0
    %%insn_00410076:
    mov dword [eax],0x0 ; 00410076 C70000000000
    %if ($ - %%insn_00410076) > 6
        %error "LONG_00410076"
    %endif
    times 6 - ($ - %%insn_00410076) db 0
    %%insn_0041007c:
    pop edi ; 0041007C 5F
    %if ($ - %%insn_0041007c) > 1
        %error "LONG_0041007C"
    %endif
    times 1 - ($ - %%insn_0041007c) db 0
    %%insn_0041007d:
    or eax,0xffffffffffffffff ; 0041007D 83C8FF
    %if ($ - %%insn_0041007d) > 3
        %error "LONG_0041007D"
    %endif
    times 3 - ($ - %%insn_0041007d) db 0
    %%insn_00410080:
    pop esi ; 00410080 5E
    %if ($ - %%insn_00410080) > 1
        %error "LONG_00410080"
    %endif
    times 1 - ($ - %%insn_00410080) db 0
    %%insn_00410081:
    ret ; 00410081 C3
    %if ($ - %%insn_00410081) > 1
        %error "LONG_00410081"
    %endif
    times 1 - ($ - %%insn_00410081) db 0
    %if ($ - %%fragment_start) != 114
        %error "function fragment size drift: 00410010"
    %endif
%endmacro
