; PE virtual entry 00404CA2
; Ghidra working symbol: FUN_00404ca2
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00404ca2_part_00 0
    %%fragment_start:
func_00404ca2:
    %%insn_00404ca2:
    push ebp ; 00404CA2 55
    %if ($ - %%insn_00404ca2) > 1
        %error "LONG_00404CA2"
    %endif
    times 1 - ($ - %%insn_00404ca2) db 0
    db 0x8B, 0xEC ; 00404CA3 8BEC | mov ebp,esp | encoding preserved
    %%insn_00404ca5:
    sub esp,0x18 ; 00404CA5 83EC18
    %if ($ - %%insn_00404ca5) > 3
        %error "LONG_00404CA5"
    %endif
    times 3 - ($ - %%insn_00404ca5) db 0
    %%insn_00404ca8:
    cmp dword [0x41f450],0x0 ; 00404CA8 833D50F4410000
    %if ($ - %%insn_00404ca8) > 7
        %error "LONG_00404CA8"
    %endif
    times 7 - ($ - %%insn_00404ca8) db 0
    %%insn_00404caf:
    jz 0x404e74 ; 00404CAF 0F84BF010000
    %if ($ - %%insn_00404caf) > 6
        %error "LONG_00404CAF"
    %endif
    times 6 - ($ - %%insn_00404caf) db 0
    %%insn_00404cb5:
    mov eax,[0x42133c] ; 00404CB5 A13C134200
    %if ($ - %%insn_00404cb5) > 5
        %error "LONG_00404CB5"
    %endif
    times 5 - ($ - %%insn_00404cb5) db 0
    %%insn_00404cba:
    mov [ebp-0x4],eax ; 00404CBA 8945FC
    %if ($ - %%insn_00404cba) > 3
        %error "LONG_00404CBA"
    %endif
    times 3 - ($ - %%insn_00404cba) db 0
    %%insn_00404cbd:
    mov dword [ebp-0xc],0x280 ; 00404CBD C745F480020000
    %if ($ - %%insn_00404cbd) > 7
        %error "LONG_00404CBD"
    %endif
    times 7 - ($ - %%insn_00404cbd) db 0
    %%insn_00404cc4:
    cmp dword [ebp-0x4],0x0 ; 00404CC4 837DFC00
    %if ($ - %%insn_00404cc4) > 4
        %error "LONG_00404CC4"
    %endif
    times 4 - ($ - %%insn_00404cc4) db 0
    %%insn_00404cc8:
    jz short 0x404d48 ; 00404CC8 747E
    %if ($ - %%insn_00404cc8) > 2
        %error "LONG_00404CC8"
    %endif
    times 2 - ($ - %%insn_00404cc8) db 0
    %%insn_00404cca:
    mov ecx,[0x421f60] ; 00404CCA 8B0D601F4200
    %if ($ - %%insn_00404cca) > 6
        %error "LONG_00404CCA"
    %endif
    times 6 - ($ - %%insn_00404cca) db 0
    %%insn_00404cd0:
    mov [ebp-0x18],ecx ; 00404CD0 894DE8
    %if ($ - %%insn_00404cd0) > 3
        %error "LONG_00404CD0"
    %endif
    times 3 - ($ - %%insn_00404cd0) db 0
    %%insn_00404cd3:
    mov dword [ebp-0x14],0x0 ; 00404CD3 C745EC00000000
    %if ($ - %%insn_00404cd3) > 7
        %error "LONG_00404CD3"
    %endif
    times 7 - ($ - %%insn_00404cd3) db 0
    %%insn_00404cda:
    jmp short 0x404ce5 ; 00404CDA EB09
    %if ($ - %%insn_00404cda) > 2
        %error "LONG_00404CDA"
    %endif
    times 2 - ($ - %%insn_00404cda) db 0
    %%insn_00404cdc:
    mov edx,[ebp-0x14] ; 00404CDC 8B55EC
    %if ($ - %%insn_00404cdc) > 3
        %error "LONG_00404CDC"
    %endif
    times 3 - ($ - %%insn_00404cdc) db 0
    %%insn_00404cdf:
    add edx,0x1 ; 00404CDF 83C201
    %if ($ - %%insn_00404cdf) > 3
        %error "LONG_00404CDF"
    %endif
    times 3 - ($ - %%insn_00404cdf) db 0
    %%insn_00404ce2:
    mov [ebp-0x14],edx ; 00404CE2 8955EC
    %if ($ - %%insn_00404ce2) > 3
        %error "LONG_00404CE2"
    %endif
    times 3 - ($ - %%insn_00404ce2) db 0
    %%insn_00404ce5:
    mov eax,[ebp-0x14] ; 00404CE5 8B45EC
    %if ($ - %%insn_00404ce5) > 3
        %error "LONG_00404CE5"
    %endif
    times 3 - ($ - %%insn_00404ce5) db 0
    %%insn_00404ce8:
    cmp eax,[0x422388] ; 00404CE8 3B0588234200
    %if ($ - %%insn_00404ce8) > 6
        %error "LONG_00404CE8"
    %endif
    times 6 - ($ - %%insn_00404ce8) db 0
    %%insn_00404cee:
    jnl short 0x404d48 ; 00404CEE 7D58
    %if ($ - %%insn_00404cee) > 2
        %error "LONG_00404CEE"
    %endif
    times 2 - ($ - %%insn_00404cee) db 0
    %%insn_00404cf0:
    mov ecx,[ebp-0x14] ; 00404CF0 8B4DEC
    %if ($ - %%insn_00404cf0) > 3
        %error "LONG_00404CF0"
    %endif
    times 3 - ($ - %%insn_00404cf0) db 0
    %%insn_00404cf3:
    add ecx,[0x41b238] ; 00404CF3 030D38B24100
    %if ($ - %%insn_00404cf3) > 6
        %error "LONG_00404CF3"
    %endif
    times 6 - ($ - %%insn_00404cf3) db 0
    %%insn_00404cf9:
    imul ecx,[ebp-0xc] ; 00404CF9 0FAF4DF4
    %if ($ - %%insn_00404cf9) > 4
        %error "LONG_00404CF9"
    %endif
    times 4 - ($ - %%insn_00404cf9) db 0
    %%insn_00404cfd:
    mov edx,[ebp-0x4] ; 00404CFD 8B55FC
    %if ($ - %%insn_00404cfd) > 3
        %error "LONG_00404CFD"
    %endif
    times 3 - ($ - %%insn_00404cfd) db 0
    db 0x03, 0xD1 ; 00404D00 03D1 | add edx,ecx | encoding preserved
    %%insn_00404d02:
    add edx,[0x41b23c] ; 00404D02 03153CB24100
    %if ($ - %%insn_00404d02) > 6
        %error "LONG_00404D02"
    %endif
    times 6 - ($ - %%insn_00404d02) db 0
    %%insn_00404d08:
    mov [ebp-0x8],edx ; 00404D08 8955F8
    %if ($ - %%insn_00404d08) > 3
        %error "LONG_00404D08"
    %endif
    times 3 - ($ - %%insn_00404d08) db 0
    %%insn_00404d0b:
    mov dword [ebp-0x10],0x0 ; 00404D0B C745F000000000
    %if ($ - %%insn_00404d0b) > 7
        %error "LONG_00404D0B"
    %endif
    times 7 - ($ - %%insn_00404d0b) db 0
    %%insn_00404d12:
    jmp short 0x404d1d ; 00404D12 EB09
    %if ($ - %%insn_00404d12) > 2
        %error "LONG_00404D12"
    %endif
    times 2 - ($ - %%insn_00404d12) db 0
    %%insn_00404d14:
    mov eax,[ebp-0x10] ; 00404D14 8B45F0
    %if ($ - %%insn_00404d14) > 3
        %error "LONG_00404D14"
    %endif
    times 3 - ($ - %%insn_00404d14) db 0
    %%insn_00404d17:
    add eax,0x1 ; 00404D17 83C001
    %if ($ - %%insn_00404d17) > 3
        %error "LONG_00404D17"
    %endif
    times 3 - ($ - %%insn_00404d17) db 0
    %%insn_00404d1a:
    mov [ebp-0x10],eax ; 00404D1A 8945F0
    %if ($ - %%insn_00404d1a) > 3
        %error "LONG_00404D1A"
    %endif
    times 3 - ($ - %%insn_00404d1a) db 0
    %%insn_00404d1d:
    mov ecx,[ebp-0x10] ; 00404D1D 8B4DF0
    %if ($ - %%insn_00404d1d) > 3
        %error "LONG_00404D1D"
    %endif
    times 3 - ($ - %%insn_00404d1d) db 0
    %%insn_00404d20:
    cmp ecx,[0x422384] ; 00404D20 3B0D84234200
    %if ($ - %%insn_00404d20) > 6
        %error "LONG_00404D20"
    %endif
    times 6 - ($ - %%insn_00404d20) db 0
    %%insn_00404d26:
    jnl short 0x404d46 ; 00404D26 7D1E
    %if ($ - %%insn_00404d26) > 2
        %error "LONG_00404D26"
    %endif
    times 2 - ($ - %%insn_00404d26) db 0
    %%insn_00404d28:
    mov edx,[ebp-0x8] ; 00404D28 8B55F8
    %if ($ - %%insn_00404d28) > 3
        %error "LONG_00404D28"
    %endif
    times 3 - ($ - %%insn_00404d28) db 0
    %%insn_00404d2b:
    mov eax,[ebp-0x18] ; 00404D2B 8B45E8
    %if ($ - %%insn_00404d2b) > 3
        %error "LONG_00404D2B"
    %endif
    times 3 - ($ - %%insn_00404d2b) db 0
    %%insn_00404d2e:
    mov cl,[eax] ; 00404D2E 8A08
    %if ($ - %%insn_00404d2e) > 2
        %error "LONG_00404D2E"
    %endif
    times 2 - ($ - %%insn_00404d2e) db 0
    %%insn_00404d30:
    mov [edx],cl ; 00404D30 880A
    %if ($ - %%insn_00404d30) > 2
        %error "LONG_00404D30"
    %endif
    times 2 - ($ - %%insn_00404d30) db 0
    %%insn_00404d32:
    mov edx,[ebp-0x8] ; 00404D32 8B55F8
    %if ($ - %%insn_00404d32) > 3
        %error "LONG_00404D32"
    %endif
    times 3 - ($ - %%insn_00404d32) db 0
    %%insn_00404d35:
    add edx,0x1 ; 00404D35 83C201
    %if ($ - %%insn_00404d35) > 3
        %error "LONG_00404D35"
    %endif
    times 3 - ($ - %%insn_00404d35) db 0
    %%insn_00404d38:
    mov [ebp-0x8],edx ; 00404D38 8955F8
    %if ($ - %%insn_00404d38) > 3
        %error "LONG_00404D38"
    %endif
    times 3 - ($ - %%insn_00404d38) db 0
    %%insn_00404d3b:
    mov eax,[ebp-0x18] ; 00404D3B 8B45E8
    %if ($ - %%insn_00404d3b) > 3
        %error "LONG_00404D3B"
    %endif
    times 3 - ($ - %%insn_00404d3b) db 0
    %%insn_00404d3e:
    add eax,0x1 ; 00404D3E 83C001
    %if ($ - %%insn_00404d3e) > 3
        %error "LONG_00404D3E"
    %endif
    times 3 - ($ - %%insn_00404d3e) db 0
    %%insn_00404d41:
    mov [ebp-0x18],eax ; 00404D41 8945E8
    %if ($ - %%insn_00404d41) > 3
        %error "LONG_00404D41"
    %endif
    times 3 - ($ - %%insn_00404d41) db 0
    %%insn_00404d44:
    jmp short 0x404d14 ; 00404D44 EBCE
    %if ($ - %%insn_00404d44) > 2
        %error "LONG_00404D44"
    %endif
    times 2 - ($ - %%insn_00404d44) db 0
    %%insn_00404d46:
    jmp short 0x404cdc ; 00404D46 EB94
    %if ($ - %%insn_00404d46) > 2
        %error "LONG_00404D46"
    %endif
    times 2 - ($ - %%insn_00404d46) db 0
    %%insn_00404d48:
    mov dword [0x41f450],0x0 ; 00404D48 C70550F4410000000000
    %if ($ - %%insn_00404d48) > 10
        %error "LONG_00404D48"
    %endif
    times 10 - ($ - %%insn_00404d48) db 0
    %%insn_00404d52:
    mov dword [0x41f454],0x0 ; 00404D52 C70554F4410000000000
    %if ($ - %%insn_00404d52) > 10
        %error "LONG_00404D52"
    %endif
    times 10 - ($ - %%insn_00404d52) db 0
    %%insn_00404d5c:
    mov dword [0x41b22c],0xffffffff ; 00404D5C C7052CB24100FFFFFFFF
    %if ($ - %%insn_00404d5c) > 10
        %error "LONG_00404D5C"
    %endif
    times 10 - ($ - %%insn_00404d5c) db 0
    %%insn_00404d66:
    mov ecx,[0x41b238] ; 00404D66 8B0D38B24100
    %if ($ - %%insn_00404d66) > 6
        %error "LONG_00404D66"
    %endif
    times 6 - ($ - %%insn_00404d66) db 0
    %%insn_00404d6c:
    cmp ecx,[0x42135c] ; 00404D6C 3B0D5C134200
    %if ($ - %%insn_00404d6c) > 6
        %error "LONG_00404D6C"
    %endif
    times 6 - ($ - %%insn_00404d6c) db 0
    %%insn_00404d72:
    jnl short 0x404d80 ; 00404D72 7D0C
    %if ($ - %%insn_00404d72) > 2
        %error "LONG_00404D72"
    %endif
    times 2 - ($ - %%insn_00404d72) db 0
    %%insn_00404d74:
    mov edx,[0x41b238] ; 00404D74 8B1538B24100
    %if ($ - %%insn_00404d74) > 6
        %error "LONG_00404D74"
    %endif
    times 6 - ($ - %%insn_00404d74) db 0
    %%insn_00404d7a:
    mov [0x42135c],edx ; 00404D7A 89155C134200
    %if ($ - %%insn_00404d7a) > 6
        %error "LONG_00404D7A"
    %endif
    times 6 - ($ - %%insn_00404d7a) db 0
    %%insn_00404d80:
    mov eax,[0x41b23c] ; 00404D80 A13CB24100
    %if ($ - %%insn_00404d80) > 5
        %error "LONG_00404D80"
    %endif
    times 5 - ($ - %%insn_00404d80) db 0
    %%insn_00404d85:
    cmp eax,[0x421354] ; 00404D85 3B0554134200
    %if ($ - %%insn_00404d85) > 6
        %error "LONG_00404D85"
    %endif
    times 6 - ($ - %%insn_00404d85) db 0
    %%insn_00404d8b:
    jnl short 0x404d99 ; 00404D8B 7D0C
    %if ($ - %%insn_00404d8b) > 2
        %error "LONG_00404D8B"
    %endif
    times 2 - ($ - %%insn_00404d8b) db 0
    %%insn_00404d8d:
    mov ecx,[0x41b23c] ; 00404D8D 8B0D3CB24100
    %if ($ - %%insn_00404d8d) > 6
        %error "LONG_00404D8D"
    %endif
    times 6 - ($ - %%insn_00404d8d) db 0
    %%insn_00404d93:
    mov [0x421354],ecx ; 00404D93 890D54134200
    %if ($ - %%insn_00404d93) > 6
        %error "LONG_00404D93"
    %endif
    times 6 - ($ - %%insn_00404d93) db 0
    %%insn_00404d99:
    mov edx,[0x41b238] ; 00404D99 8B1538B24100
    %if ($ - %%insn_00404d99) > 6
        %error "LONG_00404D99"
    %endif
    times 6 - ($ - %%insn_00404d99) db 0
    %%insn_00404d9f:
    add edx,[0x422388] ; 00404D9F 031588234200
    %if ($ - %%insn_00404d9f) > 6
        %error "LONG_00404D9F"
    %endif
    times 6 - ($ - %%insn_00404d9f) db 0
    %%insn_00404da5:
    cmp [0x421360],edx ; 00404DA5 391560134200
    %if ($ - %%insn_00404da5) > 6
        %error "LONG_00404DA5"
    %endif
    times 6 - ($ - %%insn_00404da5) db 0
    %%insn_00404dab:
    jnl short 0x404dbd ; 00404DAB 7D10
    %if ($ - %%insn_00404dab) > 2
        %error "LONG_00404DAB"
    %endif
    times 2 - ($ - %%insn_00404dab) db 0
    %%insn_00404dad:
    mov eax,[0x41b238] ; 00404DAD A138B24100
    %if ($ - %%insn_00404dad) > 5
        %error "LONG_00404DAD"
    %endif
    times 5 - ($ - %%insn_00404dad) db 0
    %%insn_00404db2:
    add eax,[0x422388] ; 00404DB2 030588234200
    %if ($ - %%insn_00404db2) > 6
        %error "LONG_00404DB2"
    %endif
    times 6 - ($ - %%insn_00404db2) db 0
    %%insn_00404db8:
    mov [0x421360],eax ; 00404DB8 A360134200
    %if ($ - %%insn_00404db8) > 5
        %error "LONG_00404DB8"
    %endif
    times 5 - ($ - %%insn_00404db8) db 0
    %%insn_00404dbd:
    mov ecx,[0x41b23c] ; 00404DBD 8B0D3CB24100
    %if ($ - %%insn_00404dbd) > 6
        %error "LONG_00404DBD"
    %endif
    times 6 - ($ - %%insn_00404dbd) db 0
    %%insn_00404dc3:
    add ecx,[0x422384] ; 00404DC3 030D84234200
    %if ($ - %%insn_00404dc3) > 6
        %error "LONG_00404DC3"
    %endif
    times 6 - ($ - %%insn_00404dc3) db 0
    %%insn_00404dc9:
    cmp [0x421358],ecx ; 00404DC9 390D58134200
    %if ($ - %%insn_00404dc9) > 6
        %error "LONG_00404DC9"
    %endif
    times 6 - ($ - %%insn_00404dc9) db 0
    %%insn_00404dcf:
    jnl short 0x404de3 ; 00404DCF 7D12
    %if ($ - %%insn_00404dcf) > 2
        %error "LONG_00404DCF"
    %endif
    times 2 - ($ - %%insn_00404dcf) db 0
    %%insn_00404dd1:
    mov edx,[0x41b23c] ; 00404DD1 8B153CB24100
    %if ($ - %%insn_00404dd1) > 6
        %error "LONG_00404DD1"
    %endif
    times 6 - ($ - %%insn_00404dd1) db 0
    %%insn_00404dd7:
    add edx,[0x422384] ; 00404DD7 031584234200
    %if ($ - %%insn_00404dd7) > 6
        %error "LONG_00404DD7"
    %endif
    times 6 - ($ - %%insn_00404dd7) db 0
    %%insn_00404ddd:
    mov [0x421358],edx ; 00404DDD 891558134200
    %if ($ - %%insn_00404ddd) > 6
        %error "LONG_00404DDD"
    %endif
    times 6 - ($ - %%insn_00404ddd) db 0
    %%insn_00404de3:
    mov ecx,0x421300 ; 00404DE3 B900134200
    %if ($ - %%insn_00404de3) > 5
        %error "LONG_00404DE3"
    %endif
    times 5 - ($ - %%insn_00404de3) db 0
    %%insn_00404de8:
    call dword near [0x4213b4] ; 00404DE8 FF15B4134200
    %if ($ - %%insn_00404de8) > 6
        %error "LONG_00404DE8"
    %endif
    times 6 - ($ - %%insn_00404de8) db 0
    %%insn_00404dee:
    mov dword [0x41b238],0xffff ; 00404DEE C70538B24100FFFF0000
    %if ($ - %%insn_00404dee) > 10
        %error "LONG_00404DEE"
    %endif
    times 10 - ($ - %%insn_00404dee) db 0
    %%insn_00404df8:
    mov eax,[0x41b238] ; 00404DF8 A138B24100
    %if ($ - %%insn_00404df8) > 5
        %error "LONG_00404DF8"
    %endif
    times 5 - ($ - %%insn_00404df8) db 0
    %%insn_00404dfd:
    mov [0x41b23c],eax ; 00404DFD A33CB24100
    %if ($ - %%insn_00404dfd) > 5
        %error "LONG_00404DFD"
    %endif
    times 5 - ($ - %%insn_00404dfd) db 0
    %%insn_00404e02:
    mov dword [ebp-0x10],0x0 ; 00404E02 C745F000000000
    %if ($ - %%insn_00404e02) > 7
        %error "LONG_00404E02"
    %endif
    times 7 - ($ - %%insn_00404e02) db 0
    %%insn_00404e09:
    jmp short 0x404e14 ; 00404E09 EB09
    %if ($ - %%insn_00404e09) > 2
        %error "LONG_00404E09"
    %endif
    times 2 - ($ - %%insn_00404e09) db 0
    %%insn_00404e0b:
    mov ecx,[ebp-0x10] ; 00404E0B 8B4DF0
    %if ($ - %%insn_00404e0b) > 3
        %error "LONG_00404E0B"
    %endif
    times 3 - ($ - %%insn_00404e0b) db 0
    %%insn_00404e0e:
    add ecx,0x1 ; 00404E0E 83C101
    %if ($ - %%insn_00404e0e) > 3
        %error "LONG_00404E0E"
    %endif
    times 3 - ($ - %%insn_00404e0e) db 0
    %%insn_00404e11:
    mov [ebp-0x10],ecx ; 00404E11 894DF0
    %if ($ - %%insn_00404e11) > 3
        %error "LONG_00404E11"
    %endif
    times 3 - ($ - %%insn_00404e11) db 0
    %%insn_00404e14:
    cmp dword [ebp-0x10],0x100 ; 00404E14 817DF000010000
    %if ($ - %%insn_00404e14) > 7
        %error "LONG_00404E14"
    %endif
    times 7 - ($ - %%insn_00404e14) db 0
    %%insn_00404e1b:
    jnl short 0x404e69 ; 00404E1B 7D4C
    %if ($ - %%insn_00404e1b) > 2
        %error "LONG_00404E1B"
    %endif
    times 2 - ($ - %%insn_00404e1b) db 0
    %%insn_00404e1d:
    mov edx,[ebp-0x10] ; 00404E1D 8B55F0
    %if ($ - %%insn_00404e1d) > 3
        %error "LONG_00404E1D"
    %endif
    times 3 - ($ - %%insn_00404e1d) db 0
    %%insn_00404e20:
    imul edx,edx,0x3 ; 00404E20 6BD203
    %if ($ - %%insn_00404e20) > 3
        %error "LONG_00404E20"
    %endif
    times 3 - ($ - %%insn_00404e20) db 0
    %%insn_00404e23:
    mov eax,[0x421344] ; 00404E23 A144134200
    %if ($ - %%insn_00404e23) > 5
        %error "LONG_00404E23"
    %endif
    times 5 - ($ - %%insn_00404e23) db 0
    %%insn_00404e28:
    mov ecx,[ebp-0x10] ; 00404E28 8B4DF0
    %if ($ - %%insn_00404e28) > 3
        %error "LONG_00404E28"
    %endif
    times 3 - ($ - %%insn_00404e28) db 0
    %%insn_00404e2b:
    mov cl,[ecx*4+0x421f80] ; 00404E2B 8A0C8D801F4200
    %if ($ - %%insn_00404e2b) > 7
        %error "LONG_00404E2B"
    %endif
    times 7 - ($ - %%insn_00404e2b) db 0
    %%insn_00404e32:
    mov [eax+edx],cl ; 00404E32 880C10
    %if ($ - %%insn_00404e32) > 3
        %error "LONG_00404E32"
    %endif
    times 3 - ($ - %%insn_00404e32) db 0
    %%insn_00404e35:
    mov edx,[ebp-0x10] ; 00404E35 8B55F0
    %if ($ - %%insn_00404e35) > 3
        %error "LONG_00404E35"
    %endif
    times 3 - ($ - %%insn_00404e35) db 0
    %%insn_00404e38:
    imul edx,edx,0x3 ; 00404E38 6BD203
    %if ($ - %%insn_00404e38) > 3
        %error "LONG_00404E38"
    %endif
    times 3 - ($ - %%insn_00404e38) db 0
    %%insn_00404e3b:
    mov eax,[0x421344] ; 00404E3B A144134200
    %if ($ - %%insn_00404e3b) > 5
        %error "LONG_00404E3B"
    %endif
    times 5 - ($ - %%insn_00404e3b) db 0
    %%insn_00404e40:
    mov ecx,[ebp-0x10] ; 00404E40 8B4DF0
    %if ($ - %%insn_00404e40) > 3
        %error "LONG_00404E40"
    %endif
    times 3 - ($ - %%insn_00404e40) db 0
    %%insn_00404e43:
    mov cl,[ecx*4+0x421f81] ; 00404E43 8A0C8D811F4200
    %if ($ - %%insn_00404e43) > 7
        %error "LONG_00404E43"
    %endif
    times 7 - ($ - %%insn_00404e43) db 0
    %%insn_00404e4a:
    mov [eax+edx+0x1],cl ; 00404E4A 884C1001
    %if ($ - %%insn_00404e4a) > 4
        %error "LONG_00404E4A"
    %endif
    times 4 - ($ - %%insn_00404e4a) db 0
    %%insn_00404e4e:
    mov edx,[ebp-0x10] ; 00404E4E 8B55F0
    %if ($ - %%insn_00404e4e) > 3
        %error "LONG_00404E4E"
    %endif
    times 3 - ($ - %%insn_00404e4e) db 0
    %%insn_00404e51:
    imul edx,edx,0x3 ; 00404E51 6BD203
    %if ($ - %%insn_00404e51) > 3
        %error "LONG_00404E51"
    %endif
    times 3 - ($ - %%insn_00404e51) db 0
    %%insn_00404e54:
    mov eax,[0x421344] ; 00404E54 A144134200
    %if ($ - %%insn_00404e54) > 5
        %error "LONG_00404E54"
    %endif
    times 5 - ($ - %%insn_00404e54) db 0
    %%insn_00404e59:
    mov ecx,[ebp-0x10] ; 00404E59 8B4DF0
    %if ($ - %%insn_00404e59) > 3
        %error "LONG_00404E59"
    %endif
    times 3 - ($ - %%insn_00404e59) db 0
    %%insn_00404e5c:
    mov cl,[ecx*4+0x421f82] ; 00404E5C 8A0C8D821F4200
    %if ($ - %%insn_00404e5c) > 7
        %error "LONG_00404E5C"
    %endif
    times 7 - ($ - %%insn_00404e5c) db 0
    %%insn_00404e63:
    mov [eax+edx+0x2],cl ; 00404E63 884C1002
    %if ($ - %%insn_00404e63) > 4
        %error "LONG_00404E63"
    %endif
    times 4 - ($ - %%insn_00404e63) db 0
    %%insn_00404e67:
    jmp short 0x404e0b ; 00404E67 EBA2
    %if ($ - %%insn_00404e67) > 2
        %error "LONG_00404E67"
    %endif
    times 2 - ($ - %%insn_00404e67) db 0
    %%insn_00404e69:
    mov ecx,0x421300 ; 00404E69 B900134200
    %if ($ - %%insn_00404e69) > 5
        %error "LONG_00404E69"
    %endif
    times 5 - ($ - %%insn_00404e69) db 0
    %%insn_00404e6e:
    call dword near [0x4213b8] ; 00404E6E FF15B8134200
    %if ($ - %%insn_00404e6e) > 6
        %error "LONG_00404E6E"
    %endif
    times 6 - ($ - %%insn_00404e6e) db 0
    db 0x8B, 0xE5 ; 00404E74 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00404e76:
    pop ebp ; 00404E76 5D
    %if ($ - %%insn_00404e76) > 1
        %error "LONG_00404E76"
    %endif
    times 1 - ($ - %%insn_00404e76) db 0
    %%insn_00404e77:
    ret ; 00404E77 C3
    %if ($ - %%insn_00404e77) > 1
        %error "LONG_00404E77"
    %endif
    times 1 - ($ - %%insn_00404e77) db 0
    %if ($ - %%fragment_start) != 470
        %error "function fragment size drift: 00404CA2"
    %endif
%endmacro
