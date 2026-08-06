; PE virtual entry 004111F0
; Ghidra working symbol: FUN_004111f0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004111f0_part_00 0
    %%fragment_start:
func_004111f0:
    %%insn_004111f0:
    mov eax,[esp+0x4] ; 004111F0 8B442404
    %if ($ - %%insn_004111f0) > 4
        %error "LONG_004111F0"
    %endif
    times 4 - ($ - %%insn_004111f0) db 0
    %%insn_004111f4:
    push ebx ; 004111F4 53
    %if ($ - %%insn_004111f4) > 1
        %error "LONG_004111F4"
    %endif
    times 1 - ($ - %%insn_004111f4) db 0
    db 0x8B, 0xC8 ; 004111F5 8BC8 | mov ecx,eax | encoding preserved
    %%insn_004111f7:
    and eax,0x1f ; 004111F7 83E01F
    %if ($ - %%insn_004111f7) > 3
        %error "LONG_004111F7"
    %endif
    times 3 - ($ - %%insn_004111f7) db 0
    %%insn_004111fa:
    sar ecx,byte 0x5 ; 004111FA C1F905
    %if ($ - %%insn_004111fa) > 3
        %error "LONG_004111FA"
    %endif
    times 3 - ($ - %%insn_004111fa) db 0
    %%insn_004111fd:
    push esi ; 004111FD 56
    %if ($ - %%insn_004111fd) > 1
        %error "LONG_004111FD"
    %endif
    times 1 - ($ - %%insn_004111fd) db 0
    %%insn_004111fe:
    push edi ; 004111FE 57
    %if ($ - %%insn_004111fe) > 1
        %error "LONG_004111FE"
    %endif
    times 1 - ($ - %%insn_004111fe) db 0
    %%insn_004111ff:
    mov esi,[ecx*4+0x423480] ; 004111FF 8B348D80344200
    %if ($ - %%insn_004111ff) > 7
        %error "LONG_004111FF"
    %endif
    times 7 - ($ - %%insn_004111ff) db 0
    %%insn_00411206:
    lea ebx,[ecx*4+0x423480] ; 00411206 8D1C8D80344200
    %if ($ - %%insn_00411206) > 7
        %error "LONG_00411206"
    %endif
    times 7 - ($ - %%insn_00411206) db 0
    %%insn_0041120d:
    lea edi,[eax+eax*8] ; 0041120D 8D3CC0
    %if ($ - %%insn_0041120d) > 3
        %error "LONG_0041120D"
    %endif
    times 3 - ($ - %%insn_0041120d) db 0
    %%insn_00411210:
    shl edi,byte 0x2 ; 00411210 C1E702
    %if ($ - %%insn_00411210) > 3
        %error "LONG_00411210"
    %endif
    times 3 - ($ - %%insn_00411210) db 0
    db 0x03, 0xF7 ; 00411213 03F7 | add esi,edi | encoding preserved
    %%insn_00411215:
    mov eax,[esi+0x8] ; 00411215 8B4608
    %if ($ - %%insn_00411215) > 3
        %error "LONG_00411215"
    %endif
    times 3 - ($ - %%insn_00411215) db 0
    %%insn_00411218:
    test eax,eax ; 00411218 85C0
    %if ($ - %%insn_00411218) > 2
        %error "LONG_00411218"
    %endif
    times 2 - ($ - %%insn_00411218) db 0
    %%insn_0041121a:
    jnz short 0x411244 ; 0041121A 7528
    %if ($ - %%insn_0041121a) > 2
        %error "LONG_0041121A"
    %endif
    times 2 - ($ - %%insn_0041121a) db 0
    %%insn_0041121c:
    push dword 0x11 ; 0041121C 6A11
    %if ($ - %%insn_0041121c) > 2
        %error "LONG_0041121C"
    %endif
    times 2 - ($ - %%insn_0041121c) db 0
    %%insn_0041121e:
    call 0x40df00 ; 0041121E E8DDCCFFFF
    %if ($ - %%insn_0041121e) > 5
        %error "LONG_0041121E"
    %endif
    times 5 - ($ - %%insn_0041121e) db 0
    %%insn_00411223:
    mov eax,[esi+0x8] ; 00411223 8B4608
    %if ($ - %%insn_00411223) > 3
        %error "LONG_00411223"
    %endif
    times 3 - ($ - %%insn_00411223) db 0
    %%insn_00411226:
    add esp,0x4 ; 00411226 83C404
    %if ($ - %%insn_00411226) > 3
        %error "LONG_00411226"
    %endif
    times 3 - ($ - %%insn_00411226) db 0
    %%insn_00411229:
    test eax,eax ; 00411229 85C0
    %if ($ - %%insn_00411229) > 2
        %error "LONG_00411229"
    %endif
    times 2 - ($ - %%insn_00411229) db 0
    %%insn_0041122b:
    jnz short 0x41123a ; 0041122B 750D
    %if ($ - %%insn_0041122b) > 2
        %error "LONG_0041122B"
    %endif
    times 2 - ($ - %%insn_0041122b) db 0
    %%insn_0041122d:
    lea edx,[esi+0xc] ; 0041122D 8D560C
    %if ($ - %%insn_0041122d) > 3
        %error "LONG_0041122D"
    %endif
    times 3 - ($ - %%insn_0041122d) db 0
    %%insn_00411230:
    push edx ; 00411230 52
    %if ($ - %%insn_00411230) > 1
        %error "LONG_00411230"
    %endif
    times 1 - ($ - %%insn_00411230) db 0
    %%insn_00411231:
    call dword near [0x424400] ; 00411231 FF1500444200
    %if ($ - %%insn_00411231) > 6
        %error "LONG_00411231"
    %endif
    times 6 - ($ - %%insn_00411231) db 0
    %%insn_00411237:
    inc dword [esi+0x8] ; 00411237 FF4608
    %if ($ - %%insn_00411237) > 3
        %error "LONG_00411237"
    %endif
    times 3 - ($ - %%insn_00411237) db 0
    %%insn_0041123a:
    push dword 0x11 ; 0041123A 6A11
    %if ($ - %%insn_0041123a) > 2
        %error "LONG_0041123A"
    %endif
    times 2 - ($ - %%insn_0041123a) db 0
    %%insn_0041123c:
    call 0x40df80 ; 0041123C E83FCDFFFF
    %if ($ - %%insn_0041123c) > 5
        %error "LONG_0041123C"
    %endif
    times 5 - ($ - %%insn_0041123c) db 0
    %%insn_00411241:
    add esp,0x4 ; 00411241 83C404
    %if ($ - %%insn_00411241) > 3
        %error "LONG_00411241"
    %endif
    times 3 - ($ - %%insn_00411241) db 0
    %%insn_00411244:
    mov eax,[ebx] ; 00411244 8B03
    %if ($ - %%insn_00411244) > 2
        %error "LONG_00411244"
    %endif
    times 2 - ($ - %%insn_00411244) db 0
    %%insn_00411246:
    lea ecx,[eax+edi+0xc] ; 00411246 8D4C380C
    %if ($ - %%insn_00411246) > 4
        %error "LONG_00411246"
    %endif
    times 4 - ($ - %%insn_00411246) db 0
    %%insn_0041124a:
    push ecx ; 0041124A 51
    %if ($ - %%insn_0041124a) > 1
        %error "LONG_0041124A"
    %endif
    times 1 - ($ - %%insn_0041124a) db 0
    %%insn_0041124b:
    call dword near [0x4243f8] ; 0041124B FF15F8434200
    %if ($ - %%insn_0041124b) > 6
        %error "LONG_0041124B"
    %endif
    times 6 - ($ - %%insn_0041124b) db 0
    %%insn_00411251:
    pop edi ; 00411251 5F
    %if ($ - %%insn_00411251) > 1
        %error "LONG_00411251"
    %endif
    times 1 - ($ - %%insn_00411251) db 0
    %%insn_00411252:
    pop esi ; 00411252 5E
    %if ($ - %%insn_00411252) > 1
        %error "LONG_00411252"
    %endif
    times 1 - ($ - %%insn_00411252) db 0
    %%insn_00411253:
    pop ebx ; 00411253 5B
    %if ($ - %%insn_00411253) > 1
        %error "LONG_00411253"
    %endif
    times 1 - ($ - %%insn_00411253) db 0
    %%insn_00411254:
    ret ; 00411254 C3
    %if ($ - %%insn_00411254) > 1
        %error "LONG_00411254"
    %endif
    times 1 - ($ - %%insn_00411254) db 0
    %if ($ - %%fragment_start) != 101
        %error "function fragment size drift: 004111F0"
    %endif
%endmacro
