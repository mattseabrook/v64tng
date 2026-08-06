; PE virtual entry 00410FA0
; Ghidra working symbol: FUN_00410fa0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00410fa0_part_00 0
    %%fragment_start:
func_00410fa0:
    %%insn_00410fa0:
    mov ecx,[esp+0x4] ; 00410FA0 8B4C2404
    %if ($ - %%insn_00410fa0) > 4
        %error "LONG_00410FA0"
    %endif
    times 4 - ($ - %%insn_00410fa0) db 0
    %%insn_00410fa4:
    mov eax,[0x423580] ; 00410FA4 A180354200
    %if ($ - %%insn_00410fa4) > 5
        %error "LONG_00410FA4"
    %endif
    times 5 - ($ - %%insn_00410fa4) db 0
    %%insn_00410fa9:
    push ebx ; 00410FA9 53
    %if ($ - %%insn_00410fa9) > 1
        %error "LONG_00410FA9"
    %endif
    times 1 - ($ - %%insn_00410fa9) db 0
    %%insn_00410faa:
    push esi ; 00410FAA 56
    %if ($ - %%insn_00410faa) > 1
        %error "LONG_00410FAA"
    %endif
    times 1 - ($ - %%insn_00410faa) db 0
    db 0x3B, 0xC8 ; 00410FAB 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_00410fad:
    push edi ; 00410FAD 57
    %if ($ - %%insn_00410fad) > 1
        %error "LONG_00410FAD"
    %endif
    times 1 - ($ - %%insn_00410fad) db 0
    %%insn_00410fae:
    jnc short 0x411024 ; 00410FAE 7374
    %if ($ - %%insn_00410fae) > 2
        %error "LONG_00410FAE"
    %endif
    times 2 - ($ - %%insn_00410fae) db 0
    db 0x8B, 0xC1 ; 00410FB0 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00410fb2:
    sar eax,byte 0x5 ; 00410FB2 C1F805
    %if ($ - %%insn_00410fb2) > 3
        %error "LONG_00410FB2"
    %endif
    times 3 - ($ - %%insn_00410fb2) db 0
    %%insn_00410fb5:
    lea edi,[eax*4+0x423480] ; 00410FB5 8D3C8580344200
    %if ($ - %%insn_00410fb5) > 7
        %error "LONG_00410FB5"
    %endif
    times 7 - ($ - %%insn_00410fb5) db 0
    db 0x8B, 0xC1 ; 00410FBC 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00410fbe:
    and eax,0x1f ; 00410FBE 83E01F
    %if ($ - %%insn_00410fbe) > 3
        %error "LONG_00410FBE"
    %endif
    times 3 - ($ - %%insn_00410fbe) db 0
    %%insn_00410fc1:
    mov edx,[edi] ; 00410FC1 8B17
    %if ($ - %%insn_00410fc1) > 2
        %error "LONG_00410FC1"
    %endif
    times 2 - ($ - %%insn_00410fc1) db 0
    %%insn_00410fc3:
    lea esi,[eax+eax*8] ; 00410FC3 8D34C0
    %if ($ - %%insn_00410fc3) > 3
        %error "LONG_00410FC3"
    %endif
    times 3 - ($ - %%insn_00410fc3) db 0
    %%insn_00410fc6:
    shl esi,byte 0x2 ; 00410FC6 C1E602
    %if ($ - %%insn_00410fc6) > 3
        %error "LONG_00410FC6"
    %endif
    times 3 - ($ - %%insn_00410fc6) db 0
    %%insn_00410fc9:
    cmp dword [edx+esi],0xffffffffffffffff ; 00410FC9 833C32FF
    %if ($ - %%insn_00410fc9) > 4
        %error "LONG_00410FC9"
    %endif
    times 4 - ($ - %%insn_00410fc9) db 0
    %%insn_00410fcd:
    jnz short 0x411024 ; 00410FCD 7555
    %if ($ - %%insn_00410fcd) > 2
        %error "LONG_00410FCD"
    %endif
    times 2 - ($ - %%insn_00410fcd) db 0
    %%insn_00410fcf:
    mov eax,[0x41bd94] ; 00410FCF A194BD4100
    %if ($ - %%insn_00410fcf) > 5
        %error "LONG_00410FCF"
    %endif
    times 5 - ($ - %%insn_00410fcf) db 0
    %%insn_00410fd4:
    mov ebx,[esp+0x14] ; 00410FD4 8B5C2414
    %if ($ - %%insn_00410fd4) > 4
        %error "LONG_00410FD4"
    %endif
    times 4 - ($ - %%insn_00410fd4) db 0
    %%insn_00410fd8:
    cmp eax,0x1 ; 00410FD8 83F801
    %if ($ - %%insn_00410fd8) > 3
        %error "LONG_00410FD8"
    %endif
    times 3 - ($ - %%insn_00410fd8) db 0
    %%insn_00410fdb:
    jnz short 0x411019 ; 00410FDB 753C
    %if ($ - %%insn_00410fdb) > 2
        %error "LONG_00410FDB"
    %endif
    times 2 - ($ - %%insn_00410fdb) db 0
    %%insn_00410fdd:
    sub ecx,0x0 ; 00410FDD 83E900
    %if ($ - %%insn_00410fdd) > 3
        %error "LONG_00410FDD"
    %endif
    times 3 - ($ - %%insn_00410fdd) db 0
    %%insn_00410fe0:
    jz short 0x411010 ; 00410FE0 742E
    %if ($ - %%insn_00410fe0) > 2
        %error "LONG_00410FE0"
    %endif
    times 2 - ($ - %%insn_00410fe0) db 0
    %%insn_00410fe2:
    dec ecx ; 00410FE2 49
    %if ($ - %%insn_00410fe2) > 1
        %error "LONG_00410FE2"
    %endif
    times 1 - ($ - %%insn_00410fe2) db 0
    %%insn_00410fe3:
    jz short 0x410ffc ; 00410FE3 7417
    %if ($ - %%insn_00410fe3) > 2
        %error "LONG_00410FE3"
    %endif
    times 2 - ($ - %%insn_00410fe3) db 0
    %%insn_00410fe5:
    dec ecx ; 00410FE5 49
    %if ($ - %%insn_00410fe5) > 1
        %error "LONG_00410FE5"
    %endif
    times 1 - ($ - %%insn_00410fe5) db 0
    %%insn_00410fe6:
    jnz short 0x411019 ; 00410FE6 7531
    %if ($ - %%insn_00410fe6) > 2
        %error "LONG_00410FE6"
    %endif
    times 2 - ($ - %%insn_00410fe6) db 0
    %%insn_00410fe8:
    push ebx ; 00410FE8 53
    %if ($ - %%insn_00410fe8) > 1
        %error "LONG_00410FE8"
    %endif
    times 1 - ($ - %%insn_00410fe8) db 0
    %%insn_00410fe9:
    push dword 0xfffffffffffffff4 ; 00410FE9 6AF4
    %if ($ - %%insn_00410fe9) > 2
        %error "LONG_00410FE9"
    %endif
    times 2 - ($ - %%insn_00410fe9) db 0
    %%insn_00410feb:
    call dword near [0x424448] ; 00410FEB FF1548444200
    %if ($ - %%insn_00410feb) > 6
        %error "LONG_00410FEB"
    %endif
    times 6 - ($ - %%insn_00410feb) db 0
    %%insn_00410ff1:
    mov eax,[edi] ; 00410FF1 8B07
    %if ($ - %%insn_00410ff1) > 2
        %error "LONG_00410FF1"
    %endif
    times 2 - ($ - %%insn_00410ff1) db 0
    %%insn_00410ff3:
    mov [eax+esi],ebx ; 00410FF3 891C30
    %if ($ - %%insn_00410ff3) > 3
        %error "LONG_00410FF3"
    %endif
    times 3 - ($ - %%insn_00410ff3) db 0
    db 0x33, 0xC0 ; 00410FF6 33C0 | xor eax,eax | encoding preserved
    %%insn_00410ff8:
    pop edi ; 00410FF8 5F
    %if ($ - %%insn_00410ff8) > 1
        %error "LONG_00410FF8"
    %endif
    times 1 - ($ - %%insn_00410ff8) db 0
    %%insn_00410ff9:
    pop esi ; 00410FF9 5E
    %if ($ - %%insn_00410ff9) > 1
        %error "LONG_00410FF9"
    %endif
    times 1 - ($ - %%insn_00410ff9) db 0
    %%insn_00410ffa:
    pop ebx ; 00410FFA 5B
    %if ($ - %%insn_00410ffa) > 1
        %error "LONG_00410FFA"
    %endif
    times 1 - ($ - %%insn_00410ffa) db 0
    %%insn_00410ffb:
    ret ; 00410FFB C3
    %if ($ - %%insn_00410ffb) > 1
        %error "LONG_00410FFB"
    %endif
    times 1 - ($ - %%insn_00410ffb) db 0
    %%insn_00410ffc:
    push ebx ; 00410FFC 53
    %if ($ - %%insn_00410ffc) > 1
        %error "LONG_00410FFC"
    %endif
    times 1 - ($ - %%insn_00410ffc) db 0
    %%insn_00410ffd:
    push dword 0xfffffffffffffff5 ; 00410FFD 6AF5
    %if ($ - %%insn_00410ffd) > 2
        %error "LONG_00410FFD"
    %endif
    times 2 - ($ - %%insn_00410ffd) db 0
    %%insn_00410fff:
    call dword near [0x424448] ; 00410FFF FF1548444200
    %if ($ - %%insn_00410fff) > 6
        %error "LONG_00410FFF"
    %endif
    times 6 - ($ - %%insn_00410fff) db 0
    %%insn_00411005:
    mov eax,[edi] ; 00411005 8B07
    %if ($ - %%insn_00411005) > 2
        %error "LONG_00411005"
    %endif
    times 2 - ($ - %%insn_00411005) db 0
    %%insn_00411007:
    mov [eax+esi],ebx ; 00411007 891C30
    %if ($ - %%insn_00411007) > 3
        %error "LONG_00411007"
    %endif
    times 3 - ($ - %%insn_00411007) db 0
    db 0x33, 0xC0 ; 0041100A 33C0 | xor eax,eax | encoding preserved
    %%insn_0041100c:
    pop edi ; 0041100C 5F
    %if ($ - %%insn_0041100c) > 1
        %error "LONG_0041100C"
    %endif
    times 1 - ($ - %%insn_0041100c) db 0
    %%insn_0041100d:
    pop esi ; 0041100D 5E
    %if ($ - %%insn_0041100d) > 1
        %error "LONG_0041100D"
    %endif
    times 1 - ($ - %%insn_0041100d) db 0
    %%insn_0041100e:
    pop ebx ; 0041100E 5B
    %if ($ - %%insn_0041100e) > 1
        %error "LONG_0041100E"
    %endif
    times 1 - ($ - %%insn_0041100e) db 0
    %%insn_0041100f:
    ret ; 0041100F C3
    %if ($ - %%insn_0041100f) > 1
        %error "LONG_0041100F"
    %endif
    times 1 - ($ - %%insn_0041100f) db 0
    %%insn_00411010:
    push ebx ; 00411010 53
    %if ($ - %%insn_00411010) > 1
        %error "LONG_00411010"
    %endif
    times 1 - ($ - %%insn_00411010) db 0
    %%insn_00411011:
    push dword 0xfffffffffffffff6 ; 00411011 6AF6
    %if ($ - %%insn_00411011) > 2
        %error "LONG_00411011"
    %endif
    times 2 - ($ - %%insn_00411011) db 0
    %%insn_00411013:
    call dword near [0x424448] ; 00411013 FF1548444200
    %if ($ - %%insn_00411013) > 6
        %error "LONG_00411013"
    %endif
    times 6 - ($ - %%insn_00411013) db 0
    %%insn_00411019:
    mov eax,[edi] ; 00411019 8B07
    %if ($ - %%insn_00411019) > 2
        %error "LONG_00411019"
    %endif
    times 2 - ($ - %%insn_00411019) db 0
    %%insn_0041101b:
    mov [eax+esi],ebx ; 0041101B 891C30
    %if ($ - %%insn_0041101b) > 3
        %error "LONG_0041101B"
    %endif
    times 3 - ($ - %%insn_0041101b) db 0
    db 0x33, 0xC0 ; 0041101E 33C0 | xor eax,eax | encoding preserved
    %%insn_00411020:
    pop edi ; 00411020 5F
    %if ($ - %%insn_00411020) > 1
        %error "LONG_00411020"
    %endif
    times 1 - ($ - %%insn_00411020) db 0
    %%insn_00411021:
    pop esi ; 00411021 5E
    %if ($ - %%insn_00411021) > 1
        %error "LONG_00411021"
    %endif
    times 1 - ($ - %%insn_00411021) db 0
    %%insn_00411022:
    pop ebx ; 00411022 5B
    %if ($ - %%insn_00411022) > 1
        %error "LONG_00411022"
    %endif
    times 1 - ($ - %%insn_00411022) db 0
    %%insn_00411023:
    ret ; 00411023 C3
    %if ($ - %%insn_00411023) > 1
        %error "LONG_00411023"
    %endif
    times 1 - ($ - %%insn_00411023) db 0
    %%insn_00411024:
    call 0x410e10 ; 00411024 E8E7FDFFFF
    %if ($ - %%insn_00411024) > 5
        %error "LONG_00411024"
    %endif
    times 5 - ($ - %%insn_00411024) db 0
    %%insn_00411029:
    mov dword [eax],0x9 ; 00411029 C70009000000
    %if ($ - %%insn_00411029) > 6
        %error "LONG_00411029"
    %endif
    times 6 - ($ - %%insn_00411029) db 0
    %%insn_0041102f:
    call 0x410e20 ; 0041102F E8ECFDFFFF
    %if ($ - %%insn_0041102f) > 5
        %error "LONG_0041102F"
    %endif
    times 5 - ($ - %%insn_0041102f) db 0
    %%insn_00411034:
    pop edi ; 00411034 5F
    %if ($ - %%insn_00411034) > 1
        %error "LONG_00411034"
    %endif
    times 1 - ($ - %%insn_00411034) db 0
    %%insn_00411035:
    mov dword [eax],0x0 ; 00411035 C70000000000
    %if ($ - %%insn_00411035) > 6
        %error "LONG_00411035"
    %endif
    times 6 - ($ - %%insn_00411035) db 0
    %%insn_0041103b:
    pop esi ; 0041103B 5E
    %if ($ - %%insn_0041103b) > 1
        %error "LONG_0041103B"
    %endif
    times 1 - ($ - %%insn_0041103b) db 0
    %%insn_0041103c:
    or eax,0xffffffffffffffff ; 0041103C 83C8FF
    %if ($ - %%insn_0041103c) > 3
        %error "LONG_0041103C"
    %endif
    times 3 - ($ - %%insn_0041103c) db 0
    %%insn_0041103f:
    pop ebx ; 0041103F 5B
    %if ($ - %%insn_0041103f) > 1
        %error "LONG_0041103F"
    %endif
    times 1 - ($ - %%insn_0041103f) db 0
    %%insn_00411040:
    ret ; 00411040 C3
    %if ($ - %%insn_00411040) > 1
        %error "LONG_00411040"
    %endif
    times 1 - ($ - %%insn_00411040) db 0
    %if ($ - %%fragment_start) != 161
        %error "function fragment size drift: 00410FA0"
    %endif
%endmacro
