; PE virtual entry 004071F2
; Ghidra working symbol: FUN_004071f2
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004071f2_part_00 0
    %%fragment_start:
func_004071f2:
    %%insn_004071f2:
    push ebp ; 004071F2 55
    %if ($ - %%insn_004071f2) > 1
        %error "LONG_004071F2"
    %endif
    times 1 - ($ - %%insn_004071f2) db 0
    db 0x8B, 0xEC ; 004071F3 8BEC | mov ebp,esp | encoding preserved
    %%insn_004071f5:
    sub esp,0x10 ; 004071F5 83EC10
    %if ($ - %%insn_004071f5) > 3
        %error "LONG_004071F5"
    %endif
    times 3 - ($ - %%insn_004071f5) db 0
    %%insn_004071f8:
    cmp dword [ebp+0x8],0x3 ; 004071F8 837D0803
    %if ($ - %%insn_004071f8) > 4
        %error "LONG_004071F8"
    %endif
    times 4 - ($ - %%insn_004071f8) db 0
    %%insn_004071fc:
    jnz short 0x407207 ; 004071FC 7509
    %if ($ - %%insn_004071fc) > 2
        %error "LONG_004071FC"
    %endif
    times 2 - ($ - %%insn_004071fc) db 0
    %%insn_004071fe:
    mov dword [ebp-0x10],0x2 ; 004071FE C745F002000000
    %if ($ - %%insn_004071fe) > 7
        %error "LONG_004071FE"
    %endif
    times 7 - ($ - %%insn_004071fe) db 0
    %%insn_00407205:
    jmp short 0x40720d ; 00407205 EB06
    %if ($ - %%insn_00407205) > 2
        %error "LONG_00407205"
    %endif
    times 2 - ($ - %%insn_00407205) db 0
    %%insn_00407207:
    mov eax,[ebp+0x8] ; 00407207 8B4508
    %if ($ - %%insn_00407207) > 3
        %error "LONG_00407207"
    %endif
    times 3 - ($ - %%insn_00407207) db 0
    %%insn_0040720a:
    mov [ebp-0x10],eax ; 0040720A 8945F0
    %if ($ - %%insn_0040720a) > 3
        %error "LONG_0040720A"
    %endif
    times 3 - ($ - %%insn_0040720a) db 0
    %%insn_0040720d:
    mov ecx,[ebp-0x10] ; 0040720D 8B4DF0
    %if ($ - %%insn_0040720d) > 3
        %error "LONG_0040720D"
    %endif
    times 3 - ($ - %%insn_0040720d) db 0
    %%insn_00407210:
    mov [ebp-0x8],ecx ; 00407210 894DF8
    %if ($ - %%insn_00407210) > 3
        %error "LONG_00407210"
    %endif
    times 3 - ($ - %%insn_00407210) db 0
    %%insn_00407213:
    cmp dword [ebp+0x8],0x62 ; 00407213 837D0862
    %if ($ - %%insn_00407213) > 4
        %error "LONG_00407213"
    %endif
    times 4 - ($ - %%insn_00407213) db 0
    %%insn_00407217:
    jnz short 0x407231 ; 00407217 7518
    %if ($ - %%insn_00407217) > 2
        %error "LONG_00407217"
    %endif
    times 2 - ($ - %%insn_00407217) db 0
    %%insn_00407219:
    cmp dword [0x41f528],0x3 ; 00407219 833D28F5410003
    %if ($ - %%insn_00407219) > 7
        %error "LONG_00407219"
    %endif
    times 7 - ($ - %%insn_00407219) db 0
    %%insn_00407220:
    jnz short 0x407231 ; 00407220 750F
    %if ($ - %%insn_00407220) > 2
        %error "LONG_00407220"
    %endif
    times 2 - ($ - %%insn_00407220) db 0
    %%insn_00407222:
    mov edx,[0x421444] ; 00407222 8B1544144200
    %if ($ - %%insn_00407222) > 6
        %error "LONG_00407222"
    %endif
    times 6 - ($ - %%insn_00407222) db 0
    %%insn_00407228:
    push edx ; 00407228 52
    %if ($ - %%insn_00407228) > 1
        %error "LONG_00407228"
    %endif
    times 1 - ($ - %%insn_00407228) db 0
    %%insn_00407229:
    call dword near [0x4245cc] ; 00407229 FF15CC454200
    %if ($ - %%insn_00407229) > 6
        %error "LONG_00407229"
    %endif
    times 6 - ($ - %%insn_00407229) db 0
    %%insn_0040722f:
    jmp short 0x40728c ; 0040722F EB5B
    %if ($ - %%insn_0040722f) > 2
        %error "LONG_0040722F"
    %endif
    times 2 - ($ - %%insn_0040722f) db 0
    %%insn_00407231:
    mov eax,[ebp+0x8] ; 00407231 8B4508
    %if ($ - %%insn_00407231) > 3
        %error "LONG_00407231"
    %endif
    times 3 - ($ - %%insn_00407231) db 0
    %%insn_00407234:
    mov [0x41f528],eax ; 00407234 A328F54100
    %if ($ - %%insn_00407234) > 5
        %error "LONG_00407234"
    %endif
    times 5 - ($ - %%insn_00407234) db 0
    %%insn_00407239:
    call 0x4071d4 ; 00407239 E896FFFFFF
    %if ($ - %%insn_00407239) > 5
        %error "LONG_00407239"
    %endif
    times 5 - ($ - %%insn_00407239) db 0
    %%insn_0040723e:
    test eax,eax ; 0040723E 85C0
    %if ($ - %%insn_0040723e) > 2
        %error "LONG_0040723E"
    %endif
    times 2 - ($ - %%insn_0040723e) db 0
    %%insn_00407240:
    jz short 0x40724c ; 00407240 740A
    %if ($ - %%insn_00407240) > 2
        %error "LONG_00407240"
    %endif
    times 2 - ($ - %%insn_00407240) db 0
    %%insn_00407242:
    push dword 0x1 ; 00407242 6A01
    %if ($ - %%insn_00407242) > 2
        %error "LONG_00407242"
    %endif
    times 2 - ($ - %%insn_00407242) db 0
    %%insn_00407244:
    call dword near [0x4244cc] ; 00407244 FF15CC444200
    %if ($ - %%insn_00407244) > 6
        %error "LONG_00407244"
    %endif
    times 6 - ($ - %%insn_00407244) db 0
    %%insn_0040724a:
    jmp short 0x407239 ; 0040724A EBED
    %if ($ - %%insn_0040724a) > 2
        %error "LONG_0040724A"
    %endif
    times 2 - ($ - %%insn_0040724a) db 0
    %%insn_0040724c:
    lea ecx,[ebp-0x4] ; 0040724C 8D4DFC
    %if ($ - %%insn_0040724c) > 3
        %error "LONG_0040724C"
    %endif
    times 3 - ($ - %%insn_0040724c) db 0
    %%insn_0040724f:
    push ecx ; 0040724F 51
    %if ($ - %%insn_0040724f) > 1
        %error "LONG_0040724F"
    %endif
    times 1 - ($ - %%insn_0040724f) db 0
    %%insn_00407250:
    lea edx,[ebp-0xc] ; 00407250 8D55F4
    %if ($ - %%insn_00407250) > 3
        %error "LONG_00407250"
    %endif
    times 3 - ($ - %%insn_00407250) db 0
    %%insn_00407253:
    push edx ; 00407253 52
    %if ($ - %%insn_00407253) > 1
        %error "LONG_00407253"
    %endif
    times 1 - ($ - %%insn_00407253) db 0
    %%insn_00407254:
    mov eax,[ebp-0x8] ; 00407254 8B45F8
    %if ($ - %%insn_00407254) > 3
        %error "LONG_00407254"
    %endif
    times 3 - ($ - %%insn_00407254) db 0
    %%insn_00407257:
    push eax ; 00407257 50
    %if ($ - %%insn_00407257) > 1
        %error "LONG_00407257"
    %endif
    times 1 - ($ - %%insn_00407257) db 0
    %%insn_00407258:
    mov ecx,[0x421444] ; 00407258 8B0D44144200
    %if ($ - %%insn_00407258) > 6
        %error "LONG_00407258"
    %endif
    times 6 - ($ - %%insn_00407258) db 0
    %%insn_0040725e:
    push ecx ; 0040725E 51
    %if ($ - %%insn_0040725e) > 1
        %error "LONG_0040725E"
    %endif
    times 1 - ($ - %%insn_0040725e) db 0
    %%insn_0040725f:
    call dword near [0x4245d0] ; 0040725F FF15D0454200
    %if ($ - %%insn_0040725f) > 6
        %error "LONG_0040725F"
    %endif
    times 6 - ($ - %%insn_0040725f) db 0
    %%insn_00407265:
    cmp dword [ebp+0x8],0x3 ; 00407265 837D0803
    %if ($ - %%insn_00407265) > 4
        %error "LONG_00407265"
    %endif
    times 4 - ($ - %%insn_00407265) db 0
    %%insn_00407269:
    jnz short 0x407277 ; 00407269 750C
    %if ($ - %%insn_00407269) > 2
        %error "LONG_00407269"
    %endif
    times 2 - ($ - %%insn_00407269) db 0
    %%insn_0040726b:
    mov edx,[ebp-0xc] ; 0040726B 8B55F4
    %if ($ - %%insn_0040726b) > 3
        %error "LONG_0040726B"
    %endif
    times 3 - ($ - %%insn_0040726b) db 0
    %%insn_0040726e:
    add edx,0x155cc0 ; 0040726E 81C2C05C1500
    %if ($ - %%insn_0040726e) > 6
        %error "LONG_0040726E"
    %endif
    times 6 - ($ - %%insn_0040726e) db 0
    %%insn_00407274:
    mov [ebp-0xc],edx ; 00407274 8955F4
    %if ($ - %%insn_00407274) > 3
        %error "LONG_00407274"
    %endif
    times 3 - ($ - %%insn_00407274) db 0
    %%insn_00407277:
    mov eax,[ebp-0x4] ; 00407277 8B45FC
    %if ($ - %%insn_00407277) > 3
        %error "LONG_00407277"
    %endif
    times 3 - ($ - %%insn_00407277) db 0
    %%insn_0040727a:
    push eax ; 0040727A 50
    %if ($ - %%insn_0040727a) > 1
        %error "LONG_0040727A"
    %endif
    times 1 - ($ - %%insn_0040727a) db 0
    %%insn_0040727b:
    mov ecx,[ebp-0xc] ; 0040727B 8B4DF4
    %if ($ - %%insn_0040727b) > 3
        %error "LONG_0040727B"
    %endif
    times 3 - ($ - %%insn_0040727b) db 0
    %%insn_0040727e:
    push ecx ; 0040727E 51
    %if ($ - %%insn_0040727e) > 1
        %error "LONG_0040727E"
    %endif
    times 1 - ($ - %%insn_0040727e) db 0
    %%insn_0040727f:
    mov edx,[0x421444] ; 0040727F 8B1544144200
    %if ($ - %%insn_0040727f) > 6
        %error "LONG_0040727F"
    %endif
    times 6 - ($ - %%insn_0040727f) db 0
    %%insn_00407285:
    push edx ; 00407285 52
    %if ($ - %%insn_00407285) > 1
        %error "LONG_00407285"
    %endif
    times 1 - ($ - %%insn_00407285) db 0
    %%insn_00407286:
    call dword near [0x424634] ; 00407286 FF1534464200
    %if ($ - %%insn_00407286) > 6
        %error "LONG_00407286"
    %endif
    times 6 - ($ - %%insn_00407286) db 0
    db 0x8B, 0xE5 ; 0040728C 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040728e:
    pop ebp ; 0040728E 5D
    %if ($ - %%insn_0040728e) > 1
        %error "LONG_0040728E"
    %endif
    times 1 - ($ - %%insn_0040728e) db 0
    %%insn_0040728f:
    ret ; 0040728F C3
    %if ($ - %%insn_0040728f) > 1
        %error "LONG_0040728F"
    %endif
    times 1 - ($ - %%insn_0040728f) db 0
    %if ($ - %%fragment_start) != 158
        %error "function fragment size drift: 004071F2"
    %endif
%endmacro
