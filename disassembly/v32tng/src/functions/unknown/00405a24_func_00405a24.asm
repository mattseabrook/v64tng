; PE virtual entry 00405A24
; Ghidra working symbol: FUN_00405a24
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00405a24_part_00 0
    %%fragment_start:
func_00405a24:
    %%insn_00405a24:
    push ebp ; 00405A24 55
    %if ($ - %%insn_00405a24) > 1
        %error "LONG_00405A24"
    %endif
    times 1 - ($ - %%insn_00405a24) db 0
    db 0x8B, 0xEC ; 00405A25 8BEC | mov ebp,esp | encoding preserved
    %%insn_00405a27:
    sub esp,0x10 ; 00405A27 83EC10
    %if ($ - %%insn_00405a27) > 3
        %error "LONG_00405A27"
    %endif
    times 3 - ($ - %%insn_00405a27) db 0
    %%insn_00405a2a:
    movsx eax,word [0x41f460] ; 00405A2A 0FBF0560F44100
    %if ($ - %%insn_00405a2a) > 7
        %error "LONG_00405A2A"
    %endif
    times 7 - ($ - %%insn_00405a2a) db 0
    %%insn_00405a31:
    test eax,eax ; 00405A31 85C0
    %if ($ - %%insn_00405a31) > 2
        %error "LONG_00405A31"
    %endif
    times 2 - ($ - %%insn_00405a31) db 0
    %%insn_00405a33:
    jz 0x405b21 ; 00405A33 0F84E8000000
    %if ($ - %%insn_00405a33) > 6
        %error "LONG_00405A33"
    %endif
    times 6 - ($ - %%insn_00405a33) db 0
    %%insn_00405a39:
    mov word [ebp-0x4],0x7fff ; 00405A39 66C745FCFF7F
    %if ($ - %%insn_00405a39) > 6
        %error "LONG_00405A39"
    %endif
    times 6 - ($ - %%insn_00405a39) db 0
    %%insn_00405a3f:
    mov word [ebp-0x8],0x0 ; 00405A3F 66C745F80000
    %if ($ - %%insn_00405a3f) > 6
        %error "LONG_00405A3F"
    %endif
    times 6 - ($ - %%insn_00405a3f) db 0
    %%insn_00405a45:
    jmp short 0x405a53 ; 00405A45 EB0C
    %if ($ - %%insn_00405a45) > 2
        %error "LONG_00405A45"
    %endif
    times 2 - ($ - %%insn_00405a45) db 0
    %%insn_00405a47:
    mov cx,[ebp-0x8] ; 00405A47 668B4DF8
    %if ($ - %%insn_00405a47) > 4
        %error "LONG_00405A47"
    %endif
    times 4 - ($ - %%insn_00405a47) db 0
    %%insn_00405a4b:
    add cx,0x1 ; 00405A4B 6683C101
    %if ($ - %%insn_00405a4b) > 4
        %error "LONG_00405A4B"
    %endif
    times 4 - ($ - %%insn_00405a4b) db 0
    %%insn_00405a4f:
    mov [ebp-0x8],cx ; 00405A4F 66894DF8
    %if ($ - %%insn_00405a4f) > 4
        %error "LONG_00405A4F"
    %endif
    times 4 - ($ - %%insn_00405a4f) db 0
    %%insn_00405a53:
    movsx edx,word [ebp-0x8] ; 00405A53 0FBF55F8
    %if ($ - %%insn_00405a53) > 4
        %error "LONG_00405A53"
    %endif
    times 4 - ($ - %%insn_00405a53) db 0
    %%insn_00405a57:
    movsx eax,word [0x421bfa] ; 00405A57 0FBF05FA1B4200
    %if ($ - %%insn_00405a57) > 7
        %error "LONG_00405A57"
    %endif
    times 7 - ($ - %%insn_00405a57) db 0
    db 0x3B, 0xD0 ; 00405A5E 3BD0 | cmp edx,eax | encoding preserved
    %%insn_00405a60:
    jnl 0x405b17 ; 00405A60 0F8DB1000000
    %if ($ - %%insn_00405a60) > 6
        %error "LONG_00405A60"
    %endif
    times 6 - ($ - %%insn_00405a60) db 0
    %%insn_00405a66:
    movsx ecx,word [ebp-0x8] ; 00405A66 0FBF4DF8
    %if ($ - %%insn_00405a66) > 4
        %error "LONG_00405A66"
    %endif
    times 4 - ($ - %%insn_00405a66) db 0
    %%insn_00405a6a:
    mov dl,[ecx+0x421b40] ; 00405A6A 8A91401B4200
    %if ($ - %%insn_00405a6a) > 6
        %error "LONG_00405A6A"
    %endif
    times 6 - ($ - %%insn_00405a6a) db 0
    %%insn_00405a70:
    mov [0x4215b5],dl ; 00405A70 8815B5154200
    %if ($ - %%insn_00405a70) > 6
        %error "LONG_00405A70"
    %endif
    times 6 - ($ - %%insn_00405a70) db 0
    %%insn_00405a76:
    movsx eax,word [ebp-0x8] ; 00405A76 0FBF45F8
    %if ($ - %%insn_00405a76) > 4
        %error "LONG_00405A76"
    %endif
    times 4 - ($ - %%insn_00405a76) db 0
    %%insn_00405a7a:
    mov cl,[eax+0x421920] ; 00405A7A 8A8820194200
    %if ($ - %%insn_00405a7a) > 6
        %error "LONG_00405A7A"
    %endif
    times 6 - ($ - %%insn_00405a7a) db 0
    %%insn_00405a80:
    mov [0x4215b6],cl ; 00405A80 880DB6154200
    %if ($ - %%insn_00405a80) > 6
        %error "LONG_00405A80"
    %endif
    times 6 - ($ - %%insn_00405a80) db 0
    %%insn_00405a86:
    movsx edx,word [ebp-0x8] ; 00405A86 0FBF55F8
    %if ($ - %%insn_00405a86) > 4
        %error "LONG_00405A86"
    %endif
    times 4 - ($ - %%insn_00405a86) db 0
    %%insn_00405a8a:
    mov al,[edx+0x421ac0] ; 00405A8A 8A82C01A4200
    %if ($ - %%insn_00405a8a) > 6
        %error "LONG_00405A8A"
    %endif
    times 6 - ($ - %%insn_00405a8a) db 0
    %%insn_00405a90:
    mov [0x4215b7],al ; 00405A90 A2B7154200
    %if ($ - %%insn_00405a90) > 5
        %error "LONG_00405A90"
    %endif
    times 5 - ($ - %%insn_00405a90) db 0
    %%insn_00405a95:
    mov cl,[ebp+0x8] ; 00405A95 8A4D08
    %if ($ - %%insn_00405a95) > 3
        %error "LONG_00405A95"
    %endif
    times 3 - ($ - %%insn_00405a95) db 0
    %%insn_00405a98:
    push ecx ; 00405A98 51
    %if ($ - %%insn_00405a98) > 1
        %error "LONG_00405A98"
    %endif
    times 1 - ($ - %%insn_00405a98) db 0
    %%insn_00405a99:
    call 0x40563c ; 00405A99 E89EFBFFFF
    %if ($ - %%insn_00405a99) > 5
        %error "LONG_00405A99"
    %endif
    times 5 - ($ - %%insn_00405a99) db 0
    %%insn_00405a9e:
    add esp,0x4 ; 00405A9E 83C404
    %if ($ - %%insn_00405a9e) > 3
        %error "LONG_00405A9E"
    %endif
    times 3 - ($ - %%insn_00405a9e) db 0
    %%insn_00405aa1:
    mov dl,[ebp+0x8] ; 00405AA1 8A5508
    %if ($ - %%insn_00405aa1) > 3
        %error "LONG_00405AA1"
    %endif
    times 3 - ($ - %%insn_00405aa1) db 0
    %%insn_00405aa4:
    push edx ; 00405AA4 52
    %if ($ - %%insn_00405aa4) > 1
        %error "LONG_00405AA4"
    %endif
    times 1 - ($ - %%insn_00405aa4) db 0
    %%insn_00405aa5:
    call 0x4058af ; 00405AA5 E805FEFFFF
    %if ($ - %%insn_00405aa5) > 5
        %error "LONG_00405AA5"
    %endif
    times 5 - ($ - %%insn_00405aa5) db 0
    %%insn_00405aaa:
    add esp,0x4 ; 00405AAA 83C404
    %if ($ - %%insn_00405aaa) > 3
        %error "LONG_00405AAA"
    %endif
    times 3 - ($ - %%insn_00405aaa) db 0
    %%insn_00405aad:
    mov [ebp-0xc],ax ; 00405AAD 668945F4
    %if ($ - %%insn_00405aad) > 4
        %error "LONG_00405AAD"
    %endif
    times 4 - ($ - %%insn_00405aad) db 0
    %%insn_00405ab1:
    movsx eax,word [ebp-0xc] ; 00405AB1 0FBF45F4
    %if ($ - %%insn_00405ab1) > 4
        %error "LONG_00405AB1"
    %endif
    times 4 - ($ - %%insn_00405ab1) db 0
    %%insn_00405ab5:
    movsx ecx,word [ebp-0x4] ; 00405AB5 0FBF4DFC
    %if ($ - %%insn_00405ab5) > 4
        %error "LONG_00405AB5"
    %endif
    times 4 - ($ - %%insn_00405ab5) db 0
    db 0x3B, 0xC1 ; 00405AB9 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00405abb:
    jg short 0x405b12 ; 00405ABB 7F55
    %if ($ - %%insn_00405abb) > 2
        %error "LONG_00405ABB"
    %endif
    times 2 - ($ - %%insn_00405abb) db 0
    %%insn_00405abd:
    movsx edx,word [ebp-0xc] ; 00405ABD 0FBF55F4
    %if ($ - %%insn_00405abd) > 4
        %error "LONG_00405ABD"
    %endif
    times 4 - ($ - %%insn_00405abd) db 0
    %%insn_00405ac1:
    movsx eax,word [ebp-0x4] ; 00405AC1 0FBF45FC
    %if ($ - %%insn_00405ac1) > 4
        %error "LONG_00405AC1"
    %endif
    times 4 - ($ - %%insn_00405ac1) db 0
    db 0x3B, 0xD0 ; 00405AC5 3BD0 | cmp edx,eax | encoding preserved
    %%insn_00405ac7:
    jnl short 0x405acf ; 00405AC7 7D06
    %if ($ - %%insn_00405ac7) > 2
        %error "LONG_00405AC7"
    %endif
    times 2 - ($ - %%insn_00405ac7) db 0
    %%insn_00405ac9:
    mov word [ebp-0x10],0x0 ; 00405AC9 66C745F00000
    %if ($ - %%insn_00405ac9) > 6
        %error "LONG_00405AC9"
    %endif
    times 6 - ($ - %%insn_00405ac9) db 0
    %%insn_00405acf:
    mov cx,[ebp-0xc] ; 00405ACF 668B4DF4
    %if ($ - %%insn_00405acf) > 4
        %error "LONG_00405ACF"
    %endif
    times 4 - ($ - %%insn_00405acf) db 0
    %%insn_00405ad3:
    mov [ebp-0x4],cx ; 00405AD3 66894DFC
    %if ($ - %%insn_00405ad3) > 4
        %error "LONG_00405AD3"
    %endif
    times 4 - ($ - %%insn_00405ad3) db 0
    %%insn_00405ad7:
    movsx edx,word [ebp-0x10] ; 00405AD7 0FBF55F0
    %if ($ - %%insn_00405ad7) > 4
        %error "LONG_00405AD7"
    %endif
    times 4 - ($ - %%insn_00405ad7) db 0
    %%insn_00405adb:
    mov al,[0x4215b5] ; 00405ADB A0B5154200
    %if ($ - %%insn_00405adb) > 5
        %error "LONG_00405ADB"
    %endif
    times 5 - ($ - %%insn_00405adb) db 0
    %%insn_00405ae0:
    mov [edx+0x421b40],al ; 00405AE0 8882401B4200
    %if ($ - %%insn_00405ae0) > 6
        %error "LONG_00405AE0"
    %endif
    times 6 - ($ - %%insn_00405ae0) db 0
    %%insn_00405ae6:
    movsx ecx,word [ebp-0x10] ; 00405AE6 0FBF4DF0
    %if ($ - %%insn_00405ae6) > 4
        %error "LONG_00405AE6"
    %endif
    times 4 - ($ - %%insn_00405ae6) db 0
    %%insn_00405aea:
    mov dl,[0x4215b6] ; 00405AEA 8A15B6154200
    %if ($ - %%insn_00405aea) > 6
        %error "LONG_00405AEA"
    %endif
    times 6 - ($ - %%insn_00405aea) db 0
    %%insn_00405af0:
    mov [ecx+0x421920],dl ; 00405AF0 889120194200
    %if ($ - %%insn_00405af0) > 6
        %error "LONG_00405AF0"
    %endif
    times 6 - ($ - %%insn_00405af0) db 0
    %%insn_00405af6:
    movsx eax,word [ebp-0x10] ; 00405AF6 0FBF45F0
    %if ($ - %%insn_00405af6) > 4
        %error "LONG_00405AF6"
    %endif
    times 4 - ($ - %%insn_00405af6) db 0
    %%insn_00405afa:
    mov cl,[0x4215b7] ; 00405AFA 8A0DB7154200
    %if ($ - %%insn_00405afa) > 6
        %error "LONG_00405AFA"
    %endif
    times 6 - ($ - %%insn_00405afa) db 0
    %%insn_00405b00:
    mov [eax+0x421ac0],cl ; 00405B00 8888C01A4200
    %if ($ - %%insn_00405b00) > 6
        %error "LONG_00405B00"
    %endif
    times 6 - ($ - %%insn_00405b00) db 0
    %%insn_00405b06:
    mov dx,[ebp-0x10] ; 00405B06 668B55F0
    %if ($ - %%insn_00405b06) > 4
        %error "LONG_00405B06"
    %endif
    times 4 - ($ - %%insn_00405b06) db 0
    %%insn_00405b0a:
    add dx,0x1 ; 00405B0A 6683C201
    %if ($ - %%insn_00405b0a) > 4
        %error "LONG_00405B0A"
    %endif
    times 4 - ($ - %%insn_00405b0a) db 0
    %%insn_00405b0e:
    mov [ebp-0x10],dx ; 00405B0E 668955F0
    %if ($ - %%insn_00405b0e) > 4
        %error "LONG_00405B0E"
    %endif
    times 4 - ($ - %%insn_00405b0e) db 0
    %%insn_00405b12:
    jmp 0x405a47 ; 00405B12 E930FFFFFF
    %if ($ - %%insn_00405b12) > 5
        %error "LONG_00405B12"
    %endif
    times 5 - ($ - %%insn_00405b12) db 0
    %%insn_00405b17:
    mov ax,[ebp-0x10] ; 00405B17 668B45F0
    %if ($ - %%insn_00405b17) > 4
        %error "LONG_00405B17"
    %endif
    times 4 - ($ - %%insn_00405b17) db 0
    %%insn_00405b1b:
    mov [0x421bfa],ax ; 00405B1B 66A3FA1B4200
    %if ($ - %%insn_00405b1b) > 6
        %error "LONG_00405B1B"
    %endif
    times 6 - ($ - %%insn_00405b1b) db 0
    %%insn_00405b21:
    mov word [0x421aa0],0x0 ; 00405B21 66C705A01A42000000
    %if ($ - %%insn_00405b21) > 9
        %error "LONG_00405B21"
    %endif
    times 9 - ($ - %%insn_00405b21) db 0
    %%insn_00405b2a:
    movsx ecx,word [0x421aa0] ; 00405B2A 0FBF0DA01A4200
    %if ($ - %%insn_00405b2a) > 7
        %error "LONG_00405B2A"
    %endif
    times 7 - ($ - %%insn_00405b2a) db 0
    %%insn_00405b31:
    movsx dx,byte [ecx+0x421b40] ; 00405B31 660FBE91401B4200
    %if ($ - %%insn_00405b31) > 8
        %error "LONG_00405B31"
    %endif
    times 8 - ($ - %%insn_00405b31) db 0
    %%insn_00405b39:
    mov [0x41f464],dx ; 00405B39 66891564F44100
    %if ($ - %%insn_00405b39) > 7
        %error "LONG_00405B39"
    %endif
    times 7 - ($ - %%insn_00405b39) db 0
    %%insn_00405b40:
    movsx eax,word [0x421aa0] ; 00405B40 0FBF05A01A4200
    %if ($ - %%insn_00405b40) > 7
        %error "LONG_00405B40"
    %endif
    times 7 - ($ - %%insn_00405b40) db 0
    %%insn_00405b47:
    movsx cx,byte [eax+0x421920] ; 00405B47 660FBE8820194200
    %if ($ - %%insn_00405b47) > 8
        %error "LONG_00405B47"
    %endif
    times 8 - ($ - %%insn_00405b47) db 0
    %%insn_00405b4f:
    mov [0x41f468],cx ; 00405B4F 66890D68F44100
    %if ($ - %%insn_00405b4f) > 7
        %error "LONG_00405B4F"
    %endif
    times 7 - ($ - %%insn_00405b4f) db 0
    %%insn_00405b56:
    movsx edx,word [0x421aa0] ; 00405B56 0FBF15A01A4200
    %if ($ - %%insn_00405b56) > 7
        %error "LONG_00405B56"
    %endif
    times 7 - ($ - %%insn_00405b56) db 0
    %%insn_00405b5d:
    movsx ax,byte [edx+0x421ac0] ; 00405B5D 660FBE82C01A4200
    %if ($ - %%insn_00405b5d) > 8
        %error "LONG_00405B5D"
    %endif
    times 8 - ($ - %%insn_00405b5d) db 0
    %%insn_00405b65:
    mov [0x421562],ax ; 00405B65 66A362154200
    %if ($ - %%insn_00405b65) > 6
        %error "LONG_00405B65"
    %endif
    times 6 - ($ - %%insn_00405b65) db 0
    db 0x8B, 0xE5 ; 00405B6B 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00405b6d:
    pop ebp ; 00405B6D 5D
    %if ($ - %%insn_00405b6d) > 1
        %error "LONG_00405B6D"
    %endif
    times 1 - ($ - %%insn_00405b6d) db 0
    %%insn_00405b6e:
    ret ; 00405B6E C3
    %if ($ - %%insn_00405b6e) > 1
        %error "LONG_00405B6E"
    %endif
    times 1 - ($ - %%insn_00405b6e) db 0
    %if ($ - %%fragment_start) != 331
        %error "function fragment size drift: 00405A24"
    %endif
%endmacro
