; PE virtual entry 0040A29F
; Ghidra working symbol: FUN_0040a29f
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040a29f_part_00 0
    %%fragment_start:
func_0040a29f:
    %%insn_0040a29f:
    push ebp ; 0040A29F 55
    %if ($ - %%insn_0040a29f) > 1
        %error "LONG_0040A29F"
    %endif
    times 1 - ($ - %%insn_0040a29f) db 0
    db 0x8B, 0xEC ; 0040A2A0 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040a2a2:
    sub esp,0x10 ; 0040A2A2 83EC10
    %if ($ - %%insn_0040a2a2) > 3
        %error "LONG_0040A2A2"
    %endif
    times 3 - ($ - %%insn_0040a2a2) db 0
    %%insn_0040a2a5:
    mov dword [ebp-0x8],0x0 ; 0040A2A5 C745F800000000
    %if ($ - %%insn_0040a2a5) > 7
        %error "LONG_0040A2A5"
    %endif
    times 7 - ($ - %%insn_0040a2a5) db 0
    %%insn_0040a2ac:
    mov dword [ebp-0x10],0x40000000 ; 0040A2AC C745F000000040
    %if ($ - %%insn_0040a2ac) > 7
        %error "LONG_0040A2AC"
    %endif
    times 7 - ($ - %%insn_0040a2ac) db 0
    %%insn_0040a2b3:
    mov dword [ebp-0x4],0xffffffff ; 0040A2B3 C745FCFFFFFFFF
    %if ($ - %%insn_0040a2b3) > 7
        %error "LONG_0040A2B3"
    %endif
    times 7 - ($ - %%insn_0040a2b3) db 0
    %%insn_0040a2ba:
    mov dword [ebp-0xc],0x0 ; 0040A2BA C745F400000000
    %if ($ - %%insn_0040a2ba) > 7
        %error "LONG_0040A2BA"
    %endif
    times 7 - ($ - %%insn_0040a2ba) db 0
    %%insn_0040a2c1:
    jmp short 0x40a2cc ; 0040A2C1 EB09
    %if ($ - %%insn_0040a2c1) > 2
        %error "LONG_0040A2C1"
    %endif
    times 2 - ($ - %%insn_0040a2c1) db 0
    %%insn_0040a2c3:
    mov eax,[ebp-0xc] ; 0040A2C3 8B45F4
    %if ($ - %%insn_0040a2c3) > 3
        %error "LONG_0040A2C3"
    %endif
    times 3 - ($ - %%insn_0040a2c3) db 0
    %%insn_0040a2c6:
    add eax,0x1 ; 0040A2C6 83C001
    %if ($ - %%insn_0040a2c6) > 3
        %error "LONG_0040A2C6"
    %endif
    times 3 - ($ - %%insn_0040a2c6) db 0
    %%insn_0040a2c9:
    mov [ebp-0xc],eax ; 0040A2C9 8945F4
    %if ($ - %%insn_0040a2c9) > 3
        %error "LONG_0040A2C9"
    %endif
    times 3 - ($ - %%insn_0040a2c9) db 0
    %%insn_0040a2cc:
    mov ecx,[ebp-0xc] ; 0040A2CC 8B4DF4
    %if ($ - %%insn_0040a2cc) > 3
        %error "LONG_0040A2CC"
    %endif
    times 3 - ($ - %%insn_0040a2cc) db 0
    %%insn_0040a2cf:
    cmp ecx,[0x420a04] ; 0040A2CF 3B0D040A4200
    %if ($ - %%insn_0040a2cf) > 6
        %error "LONG_0040A2CF"
    %endif
    times 6 - ($ - %%insn_0040a2cf) db 0
    %%insn_0040a2d5:
    jnl short 0x40a30e ; 0040A2D5 7D37
    %if ($ - %%insn_0040a2d5) > 2
        %error "LONG_0040A2D5"
    %endif
    times 2 - ($ - %%insn_0040a2d5) db 0
    %%insn_0040a2d7:
    mov edx,[ebp-0xc] ; 0040A2D7 8B55F4
    %if ($ - %%insn_0040a2d7) > 3
        %error "LONG_0040A2D7"
    %endif
    times 3 - ($ - %%insn_0040a2d7) db 0
    %%insn_0040a2da:
    imul edx,edx,0x14 ; 0040A2DA 6BD214
    %if ($ - %%insn_0040a2da) > 3
        %error "LONG_0040A2DA"
    %endif
    times 3 - ($ - %%insn_0040a2da) db 0
    %%insn_0040a2dd:
    cmp dword [edx+0x41f608],0x0 ; 0040A2DD 83BA08F6410000
    %if ($ - %%insn_0040a2dd) > 7
        %error "LONG_0040A2DD"
    %endif
    times 7 - ($ - %%insn_0040a2dd) db 0
    %%insn_0040a2e4:
    jz short 0x40a30c ; 0040A2E4 7426
    %if ($ - %%insn_0040a2e4) > 2
        %error "LONG_0040A2E4"
    %endif
    times 2 - ($ - %%insn_0040a2e4) db 0
    %%insn_0040a2e6:
    mov eax,[ebp-0xc] ; 0040A2E6 8B45F4
    %if ($ - %%insn_0040a2e6) > 3
        %error "LONG_0040A2E6"
    %endif
    times 3 - ($ - %%insn_0040a2e6) db 0
    %%insn_0040a2e9:
    imul eax,eax,0x14 ; 0040A2E9 6BC014
    %if ($ - %%insn_0040a2e9) > 3
        %error "LONG_0040A2E9"
    %endif
    times 3 - ($ - %%insn_0040a2e9) db 0
    %%insn_0040a2ec:
    mov ecx,[eax+0x41f5fc] ; 0040A2EC 8B88FCF54100
    %if ($ - %%insn_0040a2ec) > 6
        %error "LONG_0040A2EC"
    %endif
    times 6 - ($ - %%insn_0040a2ec) db 0
    %%insn_0040a2f2:
    cmp ecx,[ebp-0x10] ; 0040A2F2 3B4DF0
    %if ($ - %%insn_0040a2f2) > 3
        %error "LONG_0040A2F2"
    %endif
    times 3 - ($ - %%insn_0040a2f2) db 0
    %%insn_0040a2f5:
    jnc short 0x40a30c ; 0040A2F5 7315
    %if ($ - %%insn_0040a2f5) > 2
        %error "LONG_0040A2F5"
    %endif
    times 2 - ($ - %%insn_0040a2f5) db 0
    %%insn_0040a2f7:
    mov edx,[ebp-0xc] ; 0040A2F7 8B55F4
    %if ($ - %%insn_0040a2f7) > 3
        %error "LONG_0040A2F7"
    %endif
    times 3 - ($ - %%insn_0040a2f7) db 0
    %%insn_0040a2fa:
    imul edx,edx,0x14 ; 0040A2FA 6BD214
    %if ($ - %%insn_0040a2fa) > 3
        %error "LONG_0040A2FA"
    %endif
    times 3 - ($ - %%insn_0040a2fa) db 0
    %%insn_0040a2fd:
    mov eax,[edx+0x41f5fc] ; 0040A2FD 8B82FCF54100
    %if ($ - %%insn_0040a2fd) > 6
        %error "LONG_0040A2FD"
    %endif
    times 6 - ($ - %%insn_0040a2fd) db 0
    %%insn_0040a303:
    mov [ebp-0x10],eax ; 0040A303 8945F0
    %if ($ - %%insn_0040a303) > 3
        %error "LONG_0040A303"
    %endif
    times 3 - ($ - %%insn_0040a303) db 0
    %%insn_0040a306:
    mov ecx,[ebp-0xc] ; 0040A306 8B4DF4
    %if ($ - %%insn_0040a306) > 3
        %error "LONG_0040A306"
    %endif
    times 3 - ($ - %%insn_0040a306) db 0
    %%insn_0040a309:
    mov [ebp-0x4],ecx ; 0040A309 894DFC
    %if ($ - %%insn_0040a309) > 3
        %error "LONG_0040A309"
    %endif
    times 3 - ($ - %%insn_0040a309) db 0
    %%insn_0040a30c:
    jmp short 0x40a2c3 ; 0040A30C EBB5
    %if ($ - %%insn_0040a30c) > 2
        %error "LONG_0040A30C"
    %endif
    times 2 - ($ - %%insn_0040a30c) db 0
    %%insn_0040a30e:
    cmp dword [ebp-0x4],0x0 ; 0040A30E 837DFC00
    %if ($ - %%insn_0040a30e) > 4
        %error "LONG_0040A30E"
    %endif
    times 4 - ($ - %%insn_0040a30e) db 0
    %%insn_0040a312:
    jng 0x40a398 ; 0040A312 0F8E80000000
    %if ($ - %%insn_0040a312) > 6
        %error "LONG_0040A312"
    %endif
    times 6 - ($ - %%insn_0040a312) db 0
    %%insn_0040a318:
    mov edx,[ebp-0x4] ; 0040A318 8B55FC
    %if ($ - %%insn_0040a318) > 3
        %error "LONG_0040A318"
    %endif
    times 3 - ($ - %%insn_0040a318) db 0
    %%insn_0040a31b:
    imul edx,edx,0x14 ; 0040A31B 6BD214
    %if ($ - %%insn_0040a31b) > 3
        %error "LONG_0040A31B"
    %endif
    times 3 - ($ - %%insn_0040a31b) db 0
    %%insn_0040a31e:
    mov eax,[edx+0x41f600] ; 0040A31E 8B8200F64100
    %if ($ - %%insn_0040a31e) > 6
        %error "LONG_0040A31E"
    %endif
    times 6 - ($ - %%insn_0040a31e) db 0
    %%insn_0040a324:
    push eax ; 0040A324 50
    %if ($ - %%insn_0040a324) > 1
        %error "LONG_0040A324"
    %endif
    times 1 - ($ - %%insn_0040a324) db 0
    %%insn_0040a325:
    call 0x409f0a ; 0040A325 E8E0FBFFFF
    %if ($ - %%insn_0040a325) > 5
        %error "LONG_0040A325"
    %endif
    times 5 - ($ - %%insn_0040a325) db 0
    %%insn_0040a32a:
    add esp,0x4 ; 0040A32A 83C404
    %if ($ - %%insn_0040a32a) > 3
        %error "LONG_0040A32A"
    %endif
    times 3 - ($ - %%insn_0040a32a) db 0
    %%insn_0040a32d:
    mov ecx,[ebp-0x4] ; 0040A32D 8B4DFC
    %if ($ - %%insn_0040a32d) > 3
        %error "LONG_0040A32D"
    %endif
    times 3 - ($ - %%insn_0040a32d) db 0
    %%insn_0040a330:
    imul ecx,ecx,0x14 ; 0040A330 6BC914
    %if ($ - %%insn_0040a330) > 3
        %error "LONG_0040A330"
    %endif
    times 3 - ($ - %%insn_0040a330) db 0
    %%insn_0040a333:
    mov dword [ecx+0x41f5fc],0x0 ; 0040A333 C781FCF5410000000000
    %if ($ - %%insn_0040a333) > 10
        %error "LONG_0040A333"
    %endif
    times 10 - ($ - %%insn_0040a333) db 0
    %%insn_0040a33d:
    mov edx,[ebp-0x4] ; 0040A33D 8B55FC
    %if ($ - %%insn_0040a33d) > 3
        %error "LONG_0040A33D"
    %endif
    times 3 - ($ - %%insn_0040a33d) db 0
    %%insn_0040a340:
    imul edx,edx,0x14 ; 0040A340 6BD214
    %if ($ - %%insn_0040a340) > 3
        %error "LONG_0040A340"
    %endif
    times 3 - ($ - %%insn_0040a340) db 0
    %%insn_0040a343:
    mov eax,[ebp-0x8] ; 0040A343 8B45F8
    %if ($ - %%insn_0040a343) > 3
        %error "LONG_0040A343"
    %endif
    times 3 - ($ - %%insn_0040a343) db 0
    %%insn_0040a346:
    add eax,[edx+0x41f608] ; 0040A346 038208F64100
    %if ($ - %%insn_0040a346) > 6
        %error "LONG_0040A346"
    %endif
    times 6 - ($ - %%insn_0040a346) db 0
    %%insn_0040a34c:
    mov [ebp-0x8],eax ; 0040A34C 8945F8
    %if ($ - %%insn_0040a34c) > 3
        %error "LONG_0040A34C"
    %endif
    times 3 - ($ - %%insn_0040a34c) db 0
    %%insn_0040a34f:
    mov ecx,[ebp-0x4] ; 0040A34F 8B4DFC
    %if ($ - %%insn_0040a34f) > 3
        %error "LONG_0040A34F"
    %endif
    times 3 - ($ - %%insn_0040a34f) db 0
    %%insn_0040a352:
    imul ecx,ecx,0x14 ; 0040A352 6BC914
    %if ($ - %%insn_0040a352) > 3
        %error "LONG_0040A352"
    %endif
    times 3 - ($ - %%insn_0040a352) db 0
    %%insn_0040a355:
    mov dword [ecx+0x41f608],0x0 ; 0040A355 C78108F6410000000000
    %if ($ - %%insn_0040a355) > 10
        %error "LONG_0040A355"
    %endif
    times 10 - ($ - %%insn_0040a355) db 0
    %%insn_0040a35f:
    mov edx,[ebp-0x4] ; 0040A35F 8B55FC
    %if ($ - %%insn_0040a35f) > 3
        %error "LONG_0040A35F"
    %endif
    times 3 - ($ - %%insn_0040a35f) db 0
    %%insn_0040a362:
    imul edx,edx,0x14 ; 0040A362 6BD214
    %if ($ - %%insn_0040a362) > 3
        %error "LONG_0040A362"
    %endif
    times 3 - ($ - %%insn_0040a362) db 0
    %%insn_0040a365:
    mov eax,[edx+0x41f5f8] ; 0040A365 8B82F8F54100
    %if ($ - %%insn_0040a365) > 6
        %error "LONG_0040A365"
    %endif
    times 6 - ($ - %%insn_0040a365) db 0
    %%insn_0040a36b:
    push eax ; 0040A36B 50
    %if ($ - %%insn_0040a36b) > 1
        %error "LONG_0040A36B"
    %endif
    times 1 - ($ - %%insn_0040a36b) db 0
    %%insn_0040a36c:
    call 0x40c9a0 ; 0040A36C E82F260000
    %if ($ - %%insn_0040a36c) > 5
        %error "LONG_0040A36C"
    %endif
    times 5 - ($ - %%insn_0040a36c) db 0
    %%insn_0040a371:
    add esp,0x4 ; 0040A371 83C404
    %if ($ - %%insn_0040a371) > 3
        %error "LONG_0040A371"
    %endif
    times 3 - ($ - %%insn_0040a371) db 0
    %%insn_0040a374:
    mov ecx,[ebp-0x4] ; 0040A374 8B4DFC
    %if ($ - %%insn_0040a374) > 3
        %error "LONG_0040A374"
    %endif
    times 3 - ($ - %%insn_0040a374) db 0
    %%insn_0040a377:
    imul ecx,ecx,0x14 ; 0040A377 6BC914
    %if ($ - %%insn_0040a377) > 3
        %error "LONG_0040A377"
    %endif
    times 3 - ($ - %%insn_0040a377) db 0
    %%insn_0040a37a:
    mov dword [ecx+0x41f5f8],0x0 ; 0040A37A C781F8F5410000000000
    %if ($ - %%insn_0040a37a) > 10
        %error "LONG_0040A37A"
    %endif
    times 10 - ($ - %%insn_0040a37a) db 0
    %%insn_0040a384:
    mov edx,[ebp-0x8] ; 0040A384 8B55F8
    %if ($ - %%insn_0040a384) > 3
        %error "LONG_0040A384"
    %endif
    times 3 - ($ - %%insn_0040a384) db 0
    %%insn_0040a387:
    cmp edx,[ebp+0x8] ; 0040A387 3B5508
    %if ($ - %%insn_0040a387) > 3
        %error "LONG_0040A387"
    %endif
    times 3 - ($ - %%insn_0040a387) db 0
    %%insn_0040a38a:
    jnl short 0x40a391 ; 0040A38A 7D05
    %if ($ - %%insn_0040a38a) > 2
        %error "LONG_0040A38A"
    %endif
    times 2 - ($ - %%insn_0040a38a) db 0
    %%insn_0040a38c:
    jmp 0x40a2ac ; 0040A38C E91BFFFFFF
    %if ($ - %%insn_0040a38c) > 5
        %error "LONG_0040A38C"
    %endif
    times 5 - ($ - %%insn_0040a38c) db 0
    %%insn_0040a391:
    mov eax,0x1 ; 0040A391 B801000000
    %if ($ - %%insn_0040a391) > 5
        %error "LONG_0040A391"
    %endif
    times 5 - ($ - %%insn_0040a391) db 0
    %%insn_0040a396:
    jmp short 0x40a39b ; 0040A396 EB03
    %if ($ - %%insn_0040a396) > 2
        %error "LONG_0040A396"
    %endif
    times 2 - ($ - %%insn_0040a396) db 0
    %%insn_0040a398:
    or eax,0xffffffffffffffff ; 0040A398 83C8FF
    %if ($ - %%insn_0040a398) > 3
        %error "LONG_0040A398"
    %endif
    times 3 - ($ - %%insn_0040a398) db 0
    db 0x8B, 0xE5 ; 0040A39B 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040a39d:
    pop ebp ; 0040A39D 5D
    %if ($ - %%insn_0040a39d) > 1
        %error "LONG_0040A39D"
    %endif
    times 1 - ($ - %%insn_0040a39d) db 0
    %%insn_0040a39e:
    ret ; 0040A39E C3
    %if ($ - %%insn_0040a39e) > 1
        %error "LONG_0040A39E"
    %endif
    times 1 - ($ - %%insn_0040a39e) db 0
    %if ($ - %%fragment_start) != 256
        %error "function fragment size drift: 0040A29F"
    %endif
%endmacro
