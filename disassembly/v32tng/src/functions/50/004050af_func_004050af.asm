; PE virtual entry 004050AF
; Ghidra working symbol: FUN_004050af
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004050af_part_00 0
    %%fragment_start:
func_004050af:
    %%insn_004050af:
    push ebp ; 004050AF 55
    %if ($ - %%insn_004050af) > 1
        %error "LONG_004050AF"
    %endif
    times 1 - ($ - %%insn_004050af) db 0
    db 0x8B, 0xEC ; 004050B0 8BEC | mov ebp,esp | encoding preserved
    %%insn_004050b2:
    sub esp,0x8 ; 004050B2 83EC08
    %if ($ - %%insn_004050b2) > 3
        %error "LONG_004050B2"
    %endif
    times 3 - ($ - %%insn_004050b2) db 0
    %%insn_004050b5:
    movsx eax,byte [0x4215b7] ; 004050B5 0FBE05B7154200
    %if ($ - %%insn_004050b5) > 7
        %error "LONG_004050B5"
    %endif
    times 7 - ($ - %%insn_004050b5) db 0
    %%insn_004050bc:
    cmp eax,0x1 ; 004050BC 83F801
    %if ($ - %%insn_004050bc) > 3
        %error "LONG_004050BC"
    %endif
    times 3 - ($ - %%insn_004050bc) db 0
    %%insn_004050bf:
    jnz 0x4051b1 ; 004050BF 0F85EC000000
    %if ($ - %%insn_004050bf) > 6
        %error "LONG_004050BF"
    %endif
    times 6 - ($ - %%insn_004050bf) db 0
    %%insn_004050c5:
    movsx ecx,byte [0x4215b5] ; 004050C5 0FBE0DB5154200
    %if ($ - %%insn_004050c5) > 7
        %error "LONG_004050C5"
    %endif
    times 7 - ($ - %%insn_004050c5) db 0
    %%insn_004050cc:
    movsx edx,byte [ecx+0x421d00] ; 004050CC 0FBE91001D4200
    %if ($ - %%insn_004050cc) > 7
        %error "LONG_004050CC"
    %endif
    times 7 - ($ - %%insn_004050cc) db 0
    %%insn_004050d3:
    movsx eax,byte [ebp+0x8] ; 004050D3 0FBE4508
    %if ($ - %%insn_004050d3) > 4
        %error "LONG_004050D3"
    %endif
    times 4 - ($ - %%insn_004050d3) db 0
    db 0x3B, 0xD0 ; 004050D7 3BD0 | cmp edx,eax | encoding preserved
    %%insn_004050d9:
    jnz 0x40517a ; 004050D9 0F859B000000
    %if ($ - %%insn_004050d9) > 6
        %error "LONG_004050D9"
    %endif
    times 6 - ($ - %%insn_004050d9) db 0
    %%insn_004050df:
    movsx ecx,byte [0x4215b5] ; 004050DF 0FBE0DB5154200
    %if ($ - %%insn_004050df) > 7
        %error "LONG_004050DF"
    %endif
    times 7 - ($ - %%insn_004050df) db 0
    %%insn_004050e6:
    movsx edx,byte [0x4215b8] ; 004050E6 0FBE15B8154200
    %if ($ - %%insn_004050e6) > 7
        %error "LONG_004050E6"
    %endif
    times 7 - ($ - %%insn_004050e6) db 0
    %%insn_004050ed:
    mov eax,[ecx*4+0x41b770] ; 004050ED 8B048D70B74100
    %if ($ - %%insn_004050ed) > 7
        %error "LONG_004050ED"
    %endif
    times 7 - ($ - %%insn_004050ed) db 0
    db 0x03, 0xC2 ; 004050F4 03C2 | add eax,edx | encoding preserved
    %%insn_004050f6:
    mov [ebp-0x4],eax ; 004050F6 8945FC
    %if ($ - %%insn_004050f6) > 3
        %error "LONG_004050F6"
    %endif
    times 3 - ($ - %%insn_004050f6) db 0
    %%insn_004050f9:
    jmp short 0x40510a ; 004050F9 EB0F
    %if ($ - %%insn_004050f9) > 2
        %error "LONG_004050F9"
    %endif
    times 2 - ($ - %%insn_004050f9) db 0
    %%insn_004050fb:
    mov cl,[0x4215b8] ; 004050FB 8A0DB8154200
    %if ($ - %%insn_004050fb) > 6
        %error "LONG_004050FB"
    %endif
    times 6 - ($ - %%insn_004050fb) db 0
    %%insn_00405101:
    add cl,0x1 ; 00405101 80C101
    %if ($ - %%insn_00405101) > 3
        %error "LONG_00405101"
    %endif
    times 3 - ($ - %%insn_00405101) db 0
    %%insn_00405104:
    mov [0x4215b8],cl ; 00405104 880DB8154200
    %if ($ - %%insn_00405104) > 6
        %error "LONG_00405104"
    %endif
    times 6 - ($ - %%insn_00405104) db 0
    %%insn_0040510a:
    movsx edx,byte [0x4215b8] ; 0040510A 0FBE15B8154200
    %if ($ - %%insn_0040510a) > 7
        %error "LONG_0040510A"
    %endif
    times 7 - ($ - %%insn_0040510a) db 0
    %%insn_00405111:
    cmp edx,0x8 ; 00405111 83FA08
    %if ($ - %%insn_00405111) > 3
        %error "LONG_00405111"
    %endif
    times 3 - ($ - %%insn_00405111) db 0
    %%insn_00405114:
    jnl short 0x405173 ; 00405114 7D5D
    %if ($ - %%insn_00405114) > 2
        %error "LONG_00405114"
    %endif
    times 2 - ($ - %%insn_00405114) db 0
    %%insn_00405116:
    mov eax,[ebp-0x4] ; 00405116 8B45FC
    %if ($ - %%insn_00405116) > 3
        %error "LONG_00405116"
    %endif
    times 3 - ($ - %%insn_00405116) db 0
    %%insn_00405119:
    mov cl,[eax] ; 00405119 8A08
    %if ($ - %%insn_00405119) > 2
        %error "LONG_00405119"
    %endif
    times 2 - ($ - %%insn_00405119) db 0
    %%insn_0040511b:
    mov [0x4215b6],cl ; 0040511B 880DB6154200
    %if ($ - %%insn_0040511b) > 6
        %error "LONG_0040511B"
    %endif
    times 6 - ($ - %%insn_0040511b) db 0
    %%insn_00405121:
    movsx edx,byte [0x4215b6] ; 00405121 0FBE15B6154200
    %if ($ - %%insn_00405121) > 7
        %error "LONG_00405121"
    %endif
    times 7 - ($ - %%insn_00405121) db 0
    %%insn_00405128:
    mov eax,[ebp-0x4] ; 00405128 8B45FC
    %if ($ - %%insn_00405128) > 3
        %error "LONG_00405128"
    %endif
    times 3 - ($ - %%insn_00405128) db 0
    %%insn_0040512b:
    add eax,0x1 ; 0040512B 83C001
    %if ($ - %%insn_0040512b) > 3
        %error "LONG_0040512B"
    %endif
    times 3 - ($ - %%insn_0040512b) db 0
    %%insn_0040512e:
    mov [ebp-0x4],eax ; 0040512E 8945FC
    %if ($ - %%insn_0040512e) > 3
        %error "LONG_0040512E"
    %endif
    times 3 - ($ - %%insn_0040512e) db 0
    %%insn_00405131:
    test edx,edx ; 00405131 85D2
    %if ($ - %%insn_00405131) > 2
        %error "LONG_00405131"
    %endif
    times 2 - ($ - %%insn_00405131) db 0
    %%insn_00405133:
    jl short 0x40516f ; 00405133 7C3A
    %if ($ - %%insn_00405133) > 2
        %error "LONG_00405133"
    %endif
    times 2 - ($ - %%insn_00405133) db 0
    %%insn_00405135:
    movsx ecx,byte [0x4215b6] ; 00405135 0FBE0DB6154200
    %if ($ - %%insn_00405135) > 7
        %error "LONG_00405135"
    %endif
    times 7 - ($ - %%insn_00405135) db 0
    %%insn_0040513c:
    movsx edx,byte [ecx+0x421d00] ; 0040513C 0FBE91001D4200
    %if ($ - %%insn_0040513c) > 7
        %error "LONG_0040513C"
    %endif
    times 7 - ($ - %%insn_0040513c) db 0
    %%insn_00405143:
    test edx,edx ; 00405143 85D2
    %if ($ - %%insn_00405143) > 2
        %error "LONG_00405143"
    %endif
    times 2 - ($ - %%insn_00405143) db 0
    %%insn_00405145:
    jnz short 0x40516d ; 00405145 7526
    %if ($ - %%insn_00405145) > 2
        %error "LONG_00405145"
    %endif
    times 2 - ($ - %%insn_00405145) db 0
    %%insn_00405147:
    movsx eax,byte [0x4215b6] ; 00405147 0FBE05B6154200
    %if ($ - %%insn_00405147) > 7
        %error "LONG_00405147"
    %endif
    times 7 - ($ - %%insn_00405147) db 0
    %%insn_0040514e:
    mov byte [eax+0x421d00],0xff ; 0040514E C680001D4200FF
    %if ($ - %%insn_0040514e) > 7
        %error "LONG_0040514E"
    %endif
    times 7 - ($ - %%insn_0040514e) db 0
    %%insn_00405155:
    mov cl,[0x4215b8] ; 00405155 8A0DB8154200
    %if ($ - %%insn_00405155) > 6
        %error "LONG_00405155"
    %endif
    times 6 - ($ - %%insn_00405155) db 0
    %%insn_0040515b:
    add cl,0x1 ; 0040515B 80C101
    %if ($ - %%insn_0040515b) > 3
        %error "LONG_0040515B"
    %endif
    times 3 - ($ - %%insn_0040515b) db 0
    %%insn_0040515e:
    mov [0x4215b8],cl ; 0040515E 880DB8154200
    %if ($ - %%insn_0040515e) > 6
        %error "LONG_0040515E"
    %endif
    times 6 - ($ - %%insn_0040515e) db 0
    %%insn_00405164:
    mov ax,0x1 ; 00405164 66B80100
    %if ($ - %%insn_00405164) > 4
        %error "LONG_00405164"
    %endif
    times 4 - ($ - %%insn_00405164) db 0
    %%insn_00405168:
    jmp 0x40528d ; 00405168 E920010000
    %if ($ - %%insn_00405168) > 5
        %error "LONG_00405168"
    %endif
    times 5 - ($ - %%insn_00405168) db 0
    %%insn_0040516d:
    jmp short 0x405171 ; 0040516D EB02
    %if ($ - %%insn_0040516d) > 2
        %error "LONG_0040516D"
    %endif
    times 2 - ($ - %%insn_0040516d) db 0
    %%insn_0040516f:
    jmp short 0x405173 ; 0040516F EB02
    %if ($ - %%insn_0040516f) > 2
        %error "LONG_0040516F"
    %endif
    times 2 - ($ - %%insn_0040516f) db 0
    %%insn_00405171:
    jmp short 0x4050fb ; 00405171 EB88
    %if ($ - %%insn_00405171) > 2
        %error "LONG_00405171"
    %endif
    times 2 - ($ - %%insn_00405171) db 0
    %%insn_00405173:
    mov byte [0x4215b8],0x0 ; 00405173 C605B815420000
    %if ($ - %%insn_00405173) > 7
        %error "LONG_00405173"
    %endif
    times 7 - ($ - %%insn_00405173) db 0
    %%insn_0040517a:
    mov dl,[0x4215b5] ; 0040517A 8A15B5154200
    %if ($ - %%insn_0040517a) > 6
        %error "LONG_0040517A"
    %endif
    times 6 - ($ - %%insn_0040517a) db 0
    %%insn_00405180:
    add dl,0x1 ; 00405180 80C201
    %if ($ - %%insn_00405180) > 3
        %error "LONG_00405180"
    %endif
    times 3 - ($ - %%insn_00405180) db 0
    %%insn_00405183:
    mov [0x4215b5],dl ; 00405183 8815B5154200
    %if ($ - %%insn_00405183) > 6
        %error "LONG_00405183"
    %endif
    times 6 - ($ - %%insn_00405183) db 0
    %%insn_00405189:
    movsx eax,byte [0x4215b5] ; 00405189 0FBE05B5154200
    %if ($ - %%insn_00405189) > 7
        %error "LONG_00405189"
    %endif
    times 7 - ($ - %%insn_00405189) db 0
    %%insn_00405190:
    cmp eax,0x31 ; 00405190 83F831
    %if ($ - %%insn_00405190) > 3
        %error "LONG_00405190"
    %endif
    times 3 - ($ - %%insn_00405190) db 0
    %%insn_00405193:
    jl short 0x4051ac ; 00405193 7C17
    %if ($ - %%insn_00405193) > 2
        %error "LONG_00405193"
    %endif
    times 2 - ($ - %%insn_00405193) db 0
    %%insn_00405195:
    mov byte [0x4215b5],0x0 ; 00405195 C605B515420000
    %if ($ - %%insn_00405195) > 7
        %error "LONG_00405195"
    %endif
    times 7 - ($ - %%insn_00405195) db 0
    %%insn_0040519c:
    mov byte [0x4215b7],0x2 ; 0040519C C605B715420002
    %if ($ - %%insn_0040519c) > 7
        %error "LONG_0040519C"
    %endif
    times 7 - ($ - %%insn_0040519c) db 0
    %%insn_004051a3:
    mov byte [0x4215b8],0x0 ; 004051A3 C605B815420000
    %if ($ - %%insn_004051a3) > 7
        %error "LONG_004051A3"
    %endif
    times 7 - ($ - %%insn_004051a3) db 0
    %%insn_004051aa:
    jmp short 0x4051b1 ; 004051AA EB05
    %if ($ - %%insn_004051aa) > 2
        %error "LONG_004051AA"
    %endif
    times 2 - ($ - %%insn_004051aa) db 0
    %%insn_004051ac:
    jmp 0x4050c5 ; 004051AC E914FFFFFF
    %if ($ - %%insn_004051ac) > 5
        %error "LONG_004051AC"
    %endif
    times 5 - ($ - %%insn_004051ac) db 0
    %%insn_004051b1:
    movsx ecx,byte [0x4215b7] ; 004051B1 0FBE0DB7154200
    %if ($ - %%insn_004051b1) > 7
        %error "LONG_004051B1"
    %endif
    times 7 - ($ - %%insn_004051b1) db 0
    %%insn_004051b8:
    cmp ecx,0x2 ; 004051B8 83F902
    %if ($ - %%insn_004051b8) > 3
        %error "LONG_004051B8"
    %endif
    times 3 - ($ - %%insn_004051b8) db 0
    %%insn_004051bb:
    jnz 0x40528a ; 004051BB 0F85C9000000
    %if ($ - %%insn_004051bb) > 6
        %error "LONG_004051BB"
    %endif
    times 6 - ($ - %%insn_004051bb) db 0
    %%insn_004051c1:
    movsx edx,byte [0x4215b5] ; 004051C1 0FBE15B5154200
    %if ($ - %%insn_004051c1) > 7
        %error "LONG_004051C1"
    %endif
    times 7 - ($ - %%insn_004051c1) db 0
    %%insn_004051c8:
    movsx eax,byte [edx+0x421d00] ; 004051C8 0FBE82001D4200
    %if ($ - %%insn_004051c8) > 7
        %error "LONG_004051C8"
    %endif
    times 7 - ($ - %%insn_004051c8) db 0
    %%insn_004051cf:
    movsx ecx,byte [ebp+0x8] ; 004051CF 0FBE4D08
    %if ($ - %%insn_004051cf) > 4
        %error "LONG_004051CF"
    %endif
    times 4 - ($ - %%insn_004051cf) db 0
    db 0x3B, 0xC1 ; 004051D3 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004051d5:
    jnz 0x405265 ; 004051D5 0F858A000000
    %if ($ - %%insn_004051d5) > 6
        %error "LONG_004051D5"
    %endif
    times 6 - ($ - %%insn_004051d5) db 0
    %%insn_004051db:
    movsx edx,byte [0x4215b5] ; 004051DB 0FBE15B5154200
    %if ($ - %%insn_004051db) > 7
        %error "LONG_004051DB"
    %endif
    times 7 - ($ - %%insn_004051db) db 0
    %%insn_004051e2:
    movsx eax,byte [0x4215b8] ; 004051E2 0FBE05B8154200
    %if ($ - %%insn_004051e2) > 7
        %error "LONG_004051E2"
    %endif
    times 7 - ($ - %%insn_004051e2) db 0
    %%insn_004051e9:
    mov ecx,[edx*4+0x41b838] ; 004051E9 8B0C9538B84100
    %if ($ - %%insn_004051e9) > 7
        %error "LONG_004051E9"
    %endif
    times 7 - ($ - %%insn_004051e9) db 0
    db 0x03, 0xC8 ; 004051F0 03C8 | add ecx,eax | encoding preserved
    %%insn_004051f2:
    mov [ebp-0x8],ecx ; 004051F2 894DF8
    %if ($ - %%insn_004051f2) > 3
        %error "LONG_004051F2"
    %endif
    times 3 - ($ - %%insn_004051f2) db 0
    %%insn_004051f5:
    jmp short 0x405206 ; 004051F5 EB0F
    %if ($ - %%insn_004051f5) > 2
        %error "LONG_004051F5"
    %endif
    times 2 - ($ - %%insn_004051f5) db 0
    %%insn_004051f7:
    mov dl,[0x4215b8] ; 004051F7 8A15B8154200
    %if ($ - %%insn_004051f7) > 6
        %error "LONG_004051F7"
    %endif
    times 6 - ($ - %%insn_004051f7) db 0
    %%insn_004051fd:
    add dl,0x1 ; 004051FD 80C201
    %if ($ - %%insn_004051fd) > 3
        %error "LONG_004051FD"
    %endif
    times 3 - ($ - %%insn_004051fd) db 0
    %%insn_00405200:
    mov [0x4215b8],dl ; 00405200 8815B8154200
    %if ($ - %%insn_00405200) > 6
        %error "LONG_00405200"
    %endif
    times 6 - ($ - %%insn_00405200) db 0
    %%insn_00405206:
    movsx eax,byte [0x4215b8] ; 00405206 0FBE05B8154200
    %if ($ - %%insn_00405206) > 7
        %error "LONG_00405206"
    %endif
    times 7 - ($ - %%insn_00405206) db 0
    %%insn_0040520d:
    cmp eax,0x10 ; 0040520D 83F810
    %if ($ - %%insn_0040520d) > 3
        %error "LONG_0040520D"
    %endif
    times 3 - ($ - %%insn_0040520d) db 0
    %%insn_00405210:
    jnl short 0x40525e ; 00405210 7D4C
    %if ($ - %%insn_00405210) > 2
        %error "LONG_00405210"
    %endif
    times 2 - ($ - %%insn_00405210) db 0
    %%insn_00405212:
    mov ecx,[ebp-0x8] ; 00405212 8B4DF8
    %if ($ - %%insn_00405212) > 3
        %error "LONG_00405212"
    %endif
    times 3 - ($ - %%insn_00405212) db 0
    %%insn_00405215:
    mov dl,[ecx] ; 00405215 8A11
    %if ($ - %%insn_00405215) > 2
        %error "LONG_00405215"
    %endif
    times 2 - ($ - %%insn_00405215) db 0
    %%insn_00405217:
    mov [0x4215b6],dl ; 00405217 8815B6154200
    %if ($ - %%insn_00405217) > 6
        %error "LONG_00405217"
    %endif
    times 6 - ($ - %%insn_00405217) db 0
    %%insn_0040521d:
    movsx eax,byte [0x4215b6] ; 0040521D 0FBE05B6154200
    %if ($ - %%insn_0040521d) > 7
        %error "LONG_0040521D"
    %endif
    times 7 - ($ - %%insn_0040521d) db 0
    %%insn_00405224:
    mov ecx,[ebp-0x8] ; 00405224 8B4DF8
    %if ($ - %%insn_00405224) > 3
        %error "LONG_00405224"
    %endif
    times 3 - ($ - %%insn_00405224) db 0
    %%insn_00405227:
    add ecx,0x1 ; 00405227 83C101
    %if ($ - %%insn_00405227) > 3
        %error "LONG_00405227"
    %endif
    times 3 - ($ - %%insn_00405227) db 0
    %%insn_0040522a:
    mov [ebp-0x8],ecx ; 0040522A 894DF8
    %if ($ - %%insn_0040522a) > 3
        %error "LONG_0040522A"
    %endif
    times 3 - ($ - %%insn_0040522a) db 0
    %%insn_0040522d:
    test eax,eax ; 0040522D 85C0
    %if ($ - %%insn_0040522d) > 2
        %error "LONG_0040522D"
    %endif
    times 2 - ($ - %%insn_0040522d) db 0
    %%insn_0040522f:
    jl short 0x40525a ; 0040522F 7C29
    %if ($ - %%insn_0040522f) > 2
        %error "LONG_0040522F"
    %endif
    times 2 - ($ - %%insn_0040522f) db 0
    %%insn_00405231:
    movsx edx,byte [0x4215b6] ; 00405231 0FBE15B6154200
    %if ($ - %%insn_00405231) > 7
        %error "LONG_00405231"
    %endif
    times 7 - ($ - %%insn_00405231) db 0
    %%insn_00405238:
    movsx eax,byte [edx+0x421580] ; 00405238 0FBE8280154200
    %if ($ - %%insn_00405238) > 7
        %error "LONG_00405238"
    %endif
    times 7 - ($ - %%insn_00405238) db 0
    %%insn_0040523f:
    test eax,eax ; 0040523F 85C0
    %if ($ - %%insn_0040523f) > 2
        %error "LONG_0040523F"
    %endif
    times 2 - ($ - %%insn_0040523f) db 0
    %%insn_00405241:
    jnz short 0x405258 ; 00405241 7515
    %if ($ - %%insn_00405241) > 2
        %error "LONG_00405241"
    %endif
    times 2 - ($ - %%insn_00405241) db 0
    %%insn_00405243:
    mov cl,[0x4215b8] ; 00405243 8A0DB8154200
    %if ($ - %%insn_00405243) > 6
        %error "LONG_00405243"
    %endif
    times 6 - ($ - %%insn_00405243) db 0
    %%insn_00405249:
    add cl,0x1 ; 00405249 80C101
    %if ($ - %%insn_00405249) > 3
        %error "LONG_00405249"
    %endif
    times 3 - ($ - %%insn_00405249) db 0
    %%insn_0040524c:
    mov [0x4215b8],cl ; 0040524C 880DB8154200
    %if ($ - %%insn_0040524c) > 6
        %error "LONG_0040524C"
    %endif
    times 6 - ($ - %%insn_0040524c) db 0
    %%insn_00405252:
    mov ax,0x1 ; 00405252 66B80100
    %if ($ - %%insn_00405252) > 4
        %error "LONG_00405252"
    %endif
    times 4 - ($ - %%insn_00405252) db 0
    %%insn_00405256:
    jmp short 0x40528d ; 00405256 EB35
    %if ($ - %%insn_00405256) > 2
        %error "LONG_00405256"
    %endif
    times 2 - ($ - %%insn_00405256) db 0
    %%insn_00405258:
    jmp short 0x40525c ; 00405258 EB02
    %if ($ - %%insn_00405258) > 2
        %error "LONG_00405258"
    %endif
    times 2 - ($ - %%insn_00405258) db 0
    %%insn_0040525a:
    jmp short 0x40525e ; 0040525A EB02
    %if ($ - %%insn_0040525a) > 2
        %error "LONG_0040525A"
    %endif
    times 2 - ($ - %%insn_0040525a) db 0
    %%insn_0040525c:
    jmp short 0x4051f7 ; 0040525C EB99
    %if ($ - %%insn_0040525c) > 2
        %error "LONG_0040525C"
    %endif
    times 2 - ($ - %%insn_0040525c) db 0
    %%insn_0040525e:
    mov byte [0x4215b8],0x0 ; 0040525E C605B815420000
    %if ($ - %%insn_0040525e) > 7
        %error "LONG_0040525E"
    %endif
    times 7 - ($ - %%insn_0040525e) db 0
    %%insn_00405265:
    mov dl,[0x4215b5] ; 00405265 8A15B5154200
    %if ($ - %%insn_00405265) > 6
        %error "LONG_00405265"
    %endif
    times 6 - ($ - %%insn_00405265) db 0
    %%insn_0040526b:
    add dl,0x1 ; 0040526B 80C201
    %if ($ - %%insn_0040526b) > 3
        %error "LONG_0040526B"
    %endif
    times 3 - ($ - %%insn_0040526b) db 0
    %%insn_0040526e:
    mov [0x4215b5],dl ; 0040526E 8815B5154200
    %if ($ - %%insn_0040526e) > 6
        %error "LONG_0040526E"
    %endif
    times 6 - ($ - %%insn_0040526e) db 0
    %%insn_00405274:
    movsx eax,byte [0x4215b5] ; 00405274 0FBE05B5154200
    %if ($ - %%insn_00405274) > 7
        %error "LONG_00405274"
    %endif
    times 7 - ($ - %%insn_00405274) db 0
    %%insn_0040527b:
    cmp eax,0x31 ; 0040527B 83F831
    %if ($ - %%insn_0040527b) > 3
        %error "LONG_0040527B"
    %endif
    times 3 - ($ - %%insn_0040527b) db 0
    %%insn_0040527e:
    jl short 0x405285 ; 0040527E 7C05
    %if ($ - %%insn_0040527e) > 2
        %error "LONG_0040527E"
    %endif
    times 2 - ($ - %%insn_0040527e) db 0
    db 0x66, 0x33, 0xC0 ; 00405280 6633C0 | xor ax,ax | encoding preserved
    %%insn_00405283:
    jmp short 0x40528d ; 00405283 EB08
    %if ($ - %%insn_00405283) > 2
        %error "LONG_00405283"
    %endif
    times 2 - ($ - %%insn_00405283) db 0
    %%insn_00405285:
    jmp 0x4051c1 ; 00405285 E937FFFFFF
    %if ($ - %%insn_00405285) > 5
        %error "LONG_00405285"
    %endif
    times 5 - ($ - %%insn_00405285) db 0
    db 0x66, 0x33, 0xC0 ; 0040528A 6633C0 | xor ax,ax | encoding preserved
    db 0x8B, 0xE5 ; 0040528D 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040528f:
    pop ebp ; 0040528F 5D
    %if ($ - %%insn_0040528f) > 1
        %error "LONG_0040528F"
    %endif
    times 1 - ($ - %%insn_0040528f) db 0
    %%insn_00405290:
    ret ; 00405290 C3
    %if ($ - %%insn_00405290) > 1
        %error "LONG_00405290"
    %endif
    times 1 - ($ - %%insn_00405290) db 0
    %if ($ - %%fragment_start) != 482
        %error "function fragment size drift: 004050AF"
    %endif
%endmacro
