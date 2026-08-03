; PE virtual entry 00401000
; Ghidra working symbol: FUN_00401000
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00401000_part_00 0
    %%fragment_start:
func_00401000:
    %%insn_00401000:
    push ebp ; 00401000 55
    %if ($ - %%insn_00401000) > 1
        %error "LONG_00401000"
    %endif
    times 1 - ($ - %%insn_00401000) db 0
    db 0x8B, 0xEC ; 00401001 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401003:
    sub esp,0x110 ; 00401003 81EC10010000
    %if ($ - %%insn_00401003) > 6
        %error "LONG_00401003"
    %endif
    times 6 - ($ - %%insn_00401003) db 0
    %%insn_00401009:
    mov dword [ebp-0x4],0x0 ; 00401009 C745FC00000000
    %if ($ - %%insn_00401009) > 7
        %error "LONG_00401009"
    %endif
    times 7 - ($ - %%insn_00401009) db 0
    %%insn_00401010:
    push dword 0x4000 ; 00401010 6800400000
    %if ($ - %%insn_00401010) > 5
        %error "LONG_00401010"
    %endif
    times 5 - ($ - %%insn_00401010) db 0
    %%insn_00401015:
    call 0x40cdc0 ; 00401015 E8A6BD0000
    %if ($ - %%insn_00401015) > 5
        %error "LONG_00401015"
    %endif
    times 5 - ($ - %%insn_00401015) db 0
    %%insn_0040101a:
    add esp,0x4 ; 0040101A 83C404
    %if ($ - %%insn_0040101a) > 3
        %error "LONG_0040101A"
    %endif
    times 3 - ($ - %%insn_0040101a) db 0
    %%insn_0040101d:
    mov [ebp-0xc],eax ; 0040101D 8945F4
    %if ($ - %%insn_0040101d) > 3
        %error "LONG_0040101D"
    %endif
    times 3 - ($ - %%insn_0040101d) db 0
    %%insn_00401020:
    mov dword [ebp-0x10],0x0 ; 00401020 C745F000000000
    %if ($ - %%insn_00401020) > 7
        %error "LONG_00401020"
    %endif
    times 7 - ($ - %%insn_00401020) db 0
    %%insn_00401027:
    jmp short 0x401032 ; 00401027 EB09
    %if ($ - %%insn_00401027) > 2
        %error "LONG_00401027"
    %endif
    times 2 - ($ - %%insn_00401027) db 0
    %%insn_00401029:
    mov eax,[ebp-0x10] ; 00401029 8B45F0
    %if ($ - %%insn_00401029) > 3
        %error "LONG_00401029"
    %endif
    times 3 - ($ - %%insn_00401029) db 0
    %%insn_0040102c:
    add eax,0x1 ; 0040102C 83C001
    %if ($ - %%insn_0040102c) > 3
        %error "LONG_0040102C"
    %endif
    times 3 - ($ - %%insn_0040102c) db 0
    %%insn_0040102f:
    mov [ebp-0x10],eax ; 0040102F 8945F0
    %if ($ - %%insn_0040102f) > 3
        %error "LONG_0040102F"
    %endif
    times 3 - ($ - %%insn_0040102f) db 0
    %%insn_00401032:
    cmp dword [ebp-0x10],0x15 ; 00401032 837DF015
    %if ($ - %%insn_00401032) > 4
        %error "LONG_00401032"
    %endif
    times 4 - ($ - %%insn_00401032) db 0
    %%insn_00401036:
    jnl 0x401103 ; 00401036 0F8DC7000000
    %if ($ - %%insn_00401036) > 6
        %error "LONG_00401036"
    %endif
    times 6 - ($ - %%insn_00401036) db 0
    %%insn_0040103c:
    mov ecx,[ebp-0x10] ; 0040103C 8B4DF0
    %if ($ - %%insn_0040103c) > 3
        %error "LONG_0040103C"
    %endif
    times 3 - ($ - %%insn_0040103c) db 0
    %%insn_0040103f:
    mov edx,[ecx*4+0x41b038] ; 0040103F 8B148D38B04100
    %if ($ - %%insn_0040103f) > 7
        %error "LONG_0040103F"
    %endif
    times 7 - ($ - %%insn_0040103f) db 0
    %%insn_00401046:
    push edx ; 00401046 52
    %if ($ - %%insn_00401046) > 1
        %error "LONG_00401046"
    %endif
    times 1 - ($ - %%insn_00401046) db 0
    %%insn_00401047:
    push dword 0x41b0f4 ; 00401047 68F4B04100
    %if ($ - %%insn_00401047) > 5
        %error "LONG_00401047"
    %endif
    times 5 - ($ - %%insn_00401047) db 0
    %%insn_0040104c:
    lea eax,[ebp-0x110] ; 0040104C 8D85F0FEFFFF
    %if ($ - %%insn_0040104c) > 6
        %error "LONG_0040104C"
    %endif
    times 6 - ($ - %%insn_0040104c) db 0
    %%insn_00401052:
    push eax ; 00401052 50
    %if ($ - %%insn_00401052) > 1
        %error "LONG_00401052"
    %endif
    times 1 - ($ - %%insn_00401052) db 0
    %%insn_00401053:
    call 0x40cd50 ; 00401053 E8F8BC0000
    %if ($ - %%insn_00401053) > 5
        %error "LONG_00401053"
    %endif
    times 5 - ($ - %%insn_00401053) db 0
    %%insn_00401058:
    add esp,0xc ; 00401058 83C40C
    %if ($ - %%insn_00401058) > 3
        %error "LONG_00401058"
    %endif
    times 3 - ($ - %%insn_00401058) db 0
    %%insn_0040105b:
    push dword 0x0 ; 0040105B 6A00
    %if ($ - %%insn_0040105b) > 2
        %error "LONG_0040105B"
    %endif
    times 2 - ($ - %%insn_0040105b) db 0
    %%insn_0040105d:
    push dword 0x0 ; 0040105D 6A00
    %if ($ - %%insn_0040105d) > 2
        %error "LONG_0040105D"
    %endif
    times 2 - ($ - %%insn_0040105d) db 0
    %%insn_0040105f:
    lea ecx,[ebp-0x110] ; 0040105F 8D8DF0FEFFFF
    %if ($ - %%insn_0040105f) > 6
        %error "LONG_0040105F"
    %endif
    times 6 - ($ - %%insn_0040105f) db 0
    %%insn_00401065:
    push ecx ; 00401065 51
    %if ($ - %%insn_00401065) > 1
        %error "LONG_00401065"
    %endif
    times 1 - ($ - %%insn_00401065) db 0
    %%insn_00401066:
    call dword near [0x424598] ; 00401066 FF1598454200
    %if ($ - %%insn_00401066) > 6
        %error "LONG_00401066"
    %endif
    times 6 - ($ - %%insn_00401066) db 0
    %%insn_0040106c:
    mov [ebp-0x8],eax ; 0040106C 8945F8
    %if ($ - %%insn_0040106c) > 3
        %error "LONG_0040106C"
    %endif
    times 3 - ($ - %%insn_0040106c) db 0
    %%insn_0040106f:
    cmp dword [ebp-0x8],0x0 ; 0040106F 837DF800
    %if ($ - %%insn_0040106f) > 4
        %error "LONG_0040106F"
    %endif
    times 4 - ($ - %%insn_0040106f) db 0
    %%insn_00401073:
    jnz short 0x401081 ; 00401073 750C
    %if ($ - %%insn_00401073) > 2
        %error "LONG_00401073"
    %endif
    times 2 - ($ - %%insn_00401073) db 0
    %%insn_00401075:
    push dword 0x1 ; 00401075 6A01
    %if ($ - %%insn_00401075) > 2
        %error "LONG_00401075"
    %endif
    times 2 - ($ - %%insn_00401075) db 0
    %%insn_00401077:
    push dword 0xf ; 00401077 6A0F
    %if ($ - %%insn_00401077) > 2
        %error "LONG_00401077"
    %endif
    times 2 - ($ - %%insn_00401077) db 0
    %%insn_00401079:
    call 0x409691 ; 00401079 E813860000
    %if ($ - %%insn_00401079) > 5
        %error "LONG_00401079"
    %endif
    times 5 - ($ - %%insn_00401079) db 0
    %%insn_0040107e:
    add esp,0x8 ; 0040107E 83C408
    %if ($ - %%insn_0040107e) > 3
        %error "LONG_0040107E"
    %endif
    times 3 - ($ - %%insn_0040107e) db 0
    %%insn_00401081:
    push dword 0x4000 ; 00401081 6800400000
    %if ($ - %%insn_00401081) > 5
        %error "LONG_00401081"
    %endif
    times 5 - ($ - %%insn_00401081) db 0
    %%insn_00401086:
    mov edx,[ebp-0xc] ; 00401086 8B55F4
    %if ($ - %%insn_00401086) > 3
        %error "LONG_00401086"
    %endif
    times 3 - ($ - %%insn_00401086) db 0
    %%insn_00401089:
    push edx ; 00401089 52
    %if ($ - %%insn_00401089) > 1
        %error "LONG_00401089"
    %endif
    times 1 - ($ - %%insn_00401089) db 0
    %%insn_0040108a:
    mov eax,[ebp-0x8] ; 0040108A 8B45F8
    %if ($ - %%insn_0040108a) > 3
        %error "LONG_0040108A"
    %endif
    times 3 - ($ - %%insn_0040108a) db 0
    %%insn_0040108d:
    push eax ; 0040108D 50
    %if ($ - %%insn_0040108d) > 1
        %error "LONG_0040108D"
    %endif
    times 1 - ($ - %%insn_0040108d) db 0
    %%insn_0040108e:
    call dword near [0x424594] ; 0040108E FF1594454200
    %if ($ - %%insn_0040108e) > 6
        %error "LONG_0040108E"
    %endif
    times 6 - ($ - %%insn_0040108e) db 0
    %%insn_00401094:
    mov ecx,[ebp-0x10] ; 00401094 8B4DF0
    %if ($ - %%insn_00401094) > 3
        %error "LONG_00401094"
    %endif
    times 3 - ($ - %%insn_00401094) db 0
    %%insn_00401097:
    mov [ecx*8+0x4223a0],eax ; 00401097 8904CDA0234200
    %if ($ - %%insn_00401097) > 7
        %error "LONG_00401097"
    %endif
    times 7 - ($ - %%insn_00401097) db 0
    %%insn_0040109e:
    mov edx,[ebp-0x10] ; 0040109E 8B55F0
    %if ($ - %%insn_0040109e) > 3
        %error "LONG_0040109E"
    %endif
    times 3 - ($ - %%insn_0040109e) db 0
    %%insn_004010a1:
    mov eax,[edx*8+0x4223a0] ; 004010A1 8B04D5A0234200
    %if ($ - %%insn_004010a1) > 7
        %error "LONG_004010A1"
    %endif
    times 7 - ($ - %%insn_004010a1) db 0
    %%insn_004010a8:
    push eax ; 004010A8 50
    %if ($ - %%insn_004010a8) > 1
        %error "LONG_004010A8"
    %endif
    times 1 - ($ - %%insn_004010a8) db 0
    %%insn_004010a9:
    call 0x40cdc0 ; 004010A9 E812BD0000
    %if ($ - %%insn_004010a9) > 5
        %error "LONG_004010A9"
    %endif
    times 5 - ($ - %%insn_004010a9) db 0
    %%insn_004010ae:
    add esp,0x4 ; 004010AE 83C404
    %if ($ - %%insn_004010ae) > 3
        %error "LONG_004010AE"
    %endif
    times 3 - ($ - %%insn_004010ae) db 0
    %%insn_004010b1:
    mov ecx,[ebp-0x10] ; 004010B1 8B4DF0
    %if ($ - %%insn_004010b1) > 3
        %error "LONG_004010B1"
    %endif
    times 3 - ($ - %%insn_004010b1) db 0
    %%insn_004010b4:
    mov [ecx*8+0x4223a4],eax ; 004010B4 8904CDA4234200
    %if ($ - %%insn_004010b4) > 7
        %error "LONG_004010B4"
    %endif
    times 7 - ($ - %%insn_004010b4) db 0
    %%insn_004010bb:
    mov edx,[ebp-0x10] ; 004010BB 8B55F0
    %if ($ - %%insn_004010bb) > 3
        %error "LONG_004010BB"
    %endif
    times 3 - ($ - %%insn_004010bb) db 0
    %%insn_004010be:
    mov eax,[edx*8+0x4223a0] ; 004010BE 8B04D5A0234200
    %if ($ - %%insn_004010be) > 7
        %error "LONG_004010BE"
    %endif
    times 7 - ($ - %%insn_004010be) db 0
    %%insn_004010c5:
    push eax ; 004010C5 50
    %if ($ - %%insn_004010c5) > 1
        %error "LONG_004010C5"
    %endif
    times 1 - ($ - %%insn_004010c5) db 0
    %%insn_004010c6:
    mov ecx,[ebp-0xc] ; 004010C6 8B4DF4
    %if ($ - %%insn_004010c6) > 3
        %error "LONG_004010C6"
    %endif
    times 3 - ($ - %%insn_004010c6) db 0
    %%insn_004010c9:
    push ecx ; 004010C9 51
    %if ($ - %%insn_004010c9) > 1
        %error "LONG_004010C9"
    %endif
    times 1 - ($ - %%insn_004010c9) db 0
    %%insn_004010ca:
    mov edx,[ebp-0x10] ; 004010CA 8B55F0
    %if ($ - %%insn_004010ca) > 3
        %error "LONG_004010CA"
    %endif
    times 3 - ($ - %%insn_004010ca) db 0
    %%insn_004010cd:
    mov eax,[edx*8+0x4223a4] ; 004010CD 8B04D5A4234200
    %if ($ - %%insn_004010cd) > 7
        %error "LONG_004010CD"
    %endif
    times 7 - ($ - %%insn_004010cd) db 0
    %%insn_004010d4:
    push eax ; 004010D4 50
    %if ($ - %%insn_004010d4) > 1
        %error "LONG_004010D4"
    %endif
    times 1 - ($ - %%insn_004010d4) db 0
    %%insn_004010d5:
    call 0x40ca10 ; 004010D5 E836B90000
    %if ($ - %%insn_004010d5) > 5
        %error "LONG_004010D5"
    %endif
    times 5 - ($ - %%insn_004010d5) db 0
    %%insn_004010da:
    add esp,0xc ; 004010DA 83C40C
    %if ($ - %%insn_004010da) > 3
        %error "LONG_004010DA"
    %endif
    times 3 - ($ - %%insn_004010da) db 0
    %%insn_004010dd:
    push dword 0x0 ; 004010DD 6A00
    %if ($ - %%insn_004010dd) > 2
        %error "LONG_004010DD"
    %endif
    times 2 - ($ - %%insn_004010dd) db 0
    %%insn_004010df:
    mov ecx,[ebp-0x8] ; 004010DF 8B4DF8
    %if ($ - %%insn_004010df) > 3
        %error "LONG_004010DF"
    %endif
    times 3 - ($ - %%insn_004010df) db 0
    %%insn_004010e2:
    push ecx ; 004010E2 51
    %if ($ - %%insn_004010e2) > 1
        %error "LONG_004010E2"
    %endif
    times 1 - ($ - %%insn_004010e2) db 0
    %%insn_004010e3:
    call dword near [0x424590] ; 004010E3 FF1590454200
    %if ($ - %%insn_004010e3) > 6
        %error "LONG_004010E3"
    %endif
    times 6 - ($ - %%insn_004010e3) db 0
    %%insn_004010e9:
    mov edx,[ebp-0x10] ; 004010E9 8B55F0
    %if ($ - %%insn_004010e9) > 3
        %error "LONG_004010E9"
    %endif
    times 3 - ($ - %%insn_004010e9) db 0
    %%insn_004010ec:
    mov eax,[edx*8+0x4223a0] ; 004010EC 8B04D5A0234200
    %if ($ - %%insn_004010ec) > 7
        %error "LONG_004010EC"
    %endif
    times 7 - ($ - %%insn_004010ec) db 0
    %%insn_004010f3:
    shr eax,byte 0x3 ; 004010F3 C1E803
    %if ($ - %%insn_004010f3) > 3
        %error "LONG_004010F3"
    %endif
    times 3 - ($ - %%insn_004010f3) db 0
    %%insn_004010f6:
    mov ecx,[ebp-0x4] ; 004010F6 8B4DFC
    %if ($ - %%insn_004010f6) > 3
        %error "LONG_004010F6"
    %endif
    times 3 - ($ - %%insn_004010f6) db 0
    db 0x03, 0xC8 ; 004010F9 03C8 | add ecx,eax | encoding preserved
    %%insn_004010fb:
    mov [ebp-0x4],ecx ; 004010FB 894DFC
    %if ($ - %%insn_004010fb) > 3
        %error "LONG_004010FB"
    %endif
    times 3 - ($ - %%insn_004010fb) db 0
    %%insn_004010fe:
    jmp 0x401029 ; 004010FE E926FFFFFF
    %if ($ - %%insn_004010fe) > 5
        %error "LONG_004010FE"
    %endif
    times 5 - ($ - %%insn_004010fe) db 0
    %%insn_00401103:
    mov edx,[ebp-0xc] ; 00401103 8B55F4
    %if ($ - %%insn_00401103) > 3
        %error "LONG_00401103"
    %endif
    times 3 - ($ - %%insn_00401103) db 0
    %%insn_00401106:
    push edx ; 00401106 52
    %if ($ - %%insn_00401106) > 1
        %error "LONG_00401106"
    %endif
    times 1 - ($ - %%insn_00401106) db 0
    %%insn_00401107:
    call 0x40c9a0 ; 00401107 E894B80000
    %if ($ - %%insn_00401107) > 5
        %error "LONG_00401107"
    %endif
    times 5 - ($ - %%insn_00401107) db 0
    %%insn_0040110c:
    add esp,0x4 ; 0040110C 83C404
    %if ($ - %%insn_0040110c) > 3
        %error "LONG_0040110C"
    %endif
    times 3 - ($ - %%insn_0040110c) db 0
    %%insn_0040110f:
    call dword near [0x42458c] ; 0040110F FF158C454200
    %if ($ - %%insn_0040110f) > 6
        %error "LONG_0040110F"
    %endif
    times 6 - ($ - %%insn_0040110f) db 0
    %%insn_00401115:
    push eax ; 00401115 50
    %if ($ - %%insn_00401115) > 1
        %error "LONG_00401115"
    %endif
    times 1 - ($ - %%insn_00401115) db 0
    %%insn_00401116:
    call 0x406ab0 ; 00401116 E895590000
    %if ($ - %%insn_00401116) > 5
        %error "LONG_00401116"
    %endif
    times 5 - ($ - %%insn_00401116) db 0
    %%insn_0040111b:
    add esp,0x4 ; 0040111B 83C404
    %if ($ - %%insn_0040111b) > 3
        %error "LONG_0040111B"
    %endif
    times 3 - ($ - %%insn_0040111b) db 0
    %%insn_0040111e:
    mov dword [ebp-0x4],0x10000 ; 0040111E C745FC00000100
    %if ($ - %%insn_0040111e) > 7
        %error "LONG_0040111E"
    %endif
    times 7 - ($ - %%insn_0040111e) db 0
    %%insn_00401125:
    mov eax,[ebp-0x4] ; 00401125 8B45FC
    %if ($ - %%insn_00401125) > 3
        %error "LONG_00401125"
    %endif
    times 3 - ($ - %%insn_00401125) db 0
    %%insn_00401128:
    push eax ; 00401128 50
    %if ($ - %%insn_00401128) > 1
        %error "LONG_00401128"
    %endif
    times 1 - ($ - %%insn_00401128) db 0
    %%insn_00401129:
    call 0x40cdc0 ; 00401129 E892BC0000
    %if ($ - %%insn_00401129) > 5
        %error "LONG_00401129"
    %endif
    times 5 - ($ - %%insn_00401129) db 0
    %%insn_0040112e:
    add esp,0x4 ; 0040112E 83C404
    %if ($ - %%insn_0040112e) > 3
        %error "LONG_0040112E"
    %endif
    times 3 - ($ - %%insn_0040112e) db 0
    %%insn_00401131:
    mov [0x422448],eax ; 00401131 A348244200
    %if ($ - %%insn_00401131) > 5
        %error "LONG_00401131"
    %endif
    times 5 - ($ - %%insn_00401131) db 0
    %%insn_00401136:
    mov dword [ebp-0x10],0x0 ; 00401136 C745F000000000
    %if ($ - %%insn_00401136) > 7
        %error "LONG_00401136"
    %endif
    times 7 - ($ - %%insn_00401136) db 0
    %%insn_0040113d:
    jmp short 0x401148 ; 0040113D EB09
    %if ($ - %%insn_0040113d) > 2
        %error "LONG_0040113D"
    %endif
    times 2 - ($ - %%insn_0040113d) db 0
    %%insn_0040113f:
    mov ecx,[ebp-0x10] ; 0040113F 8B4DF0
    %if ($ - %%insn_0040113f) > 3
        %error "LONG_0040113F"
    %endif
    times 3 - ($ - %%insn_0040113f) db 0
    %%insn_00401142:
    add ecx,0x1 ; 00401142 83C101
    %if ($ - %%insn_00401142) > 3
        %error "LONG_00401142"
    %endif
    times 3 - ($ - %%insn_00401142) db 0
    %%insn_00401145:
    mov [ebp-0x10],ecx ; 00401145 894DF0
    %if ($ - %%insn_00401145) > 3
        %error "LONG_00401145"
    %endif
    times 3 - ($ - %%insn_00401145) db 0
    %%insn_00401148:
    mov edx,[ebp-0x10] ; 00401148 8B55F0
    %if ($ - %%insn_00401148) > 3
        %error "LONG_00401148"
    %endif
    times 3 - ($ - %%insn_00401148) db 0
    %%insn_0040114b:
    cmp edx,[ebp-0x4] ; 0040114B 3B55FC
    %if ($ - %%insn_0040114b) > 3
        %error "LONG_0040114B"
    %endif
    times 3 - ($ - %%insn_0040114b) db 0
    %%insn_0040114e:
    jnl short 0x40115d ; 0040114E 7D0D
    %if ($ - %%insn_0040114e) > 2
        %error "LONG_0040114E"
    %endif
    times 2 - ($ - %%insn_0040114e) db 0
    %%insn_00401150:
    mov eax,[0x422448] ; 00401150 A148244200
    %if ($ - %%insn_00401150) > 5
        %error "LONG_00401150"
    %endif
    times 5 - ($ - %%insn_00401150) db 0
    %%insn_00401155:
    add eax,[ebp-0x10] ; 00401155 0345F0
    %if ($ - %%insn_00401155) > 3
        %error "LONG_00401155"
    %endif
    times 3 - ($ - %%insn_00401155) db 0
    %%insn_00401158:
    mov byte [eax],0x0 ; 00401158 C60000
    %if ($ - %%insn_00401158) > 3
        %error "LONG_00401158"
    %endif
    times 3 - ($ - %%insn_00401158) db 0
    %%insn_0040115b:
    jmp short 0x40113f ; 0040115B EBE2
    %if ($ - %%insn_0040115b) > 2
        %error "LONG_0040115B"
    %endif
    times 2 - ($ - %%insn_0040115b) db 0
    db 0x8B, 0xE5 ; 0040115D 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040115f:
    pop ebp ; 0040115F 5D
    %if ($ - %%insn_0040115f) > 1
        %error "LONG_0040115F"
    %endif
    times 1 - ($ - %%insn_0040115f) db 0
    %%insn_00401160:
    ret ; 00401160 C3
    %if ($ - %%insn_00401160) > 1
        %error "LONG_00401160"
    %endif
    times 1 - ($ - %%insn_00401160) db 0
    %if ($ - %%fragment_start) != 353
        %error "function fragment size drift: 00401000"
    %endif
%endmacro
