; PE virtual entry 00404F90
; Ghidra working symbol: FUN_00404f90
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00404f90_part_00 0
    %%fragment_start:
func_00404f90:
    %%insn_00404f90:
    push ebp ; 00404F90 55
    %if ($ - %%insn_00404f90) > 1
        %error "LONG_00404F90"
    %endif
    times 1 - ($ - %%insn_00404f90) db 0
    db 0x8B, 0xEC ; 00404F91 8BEC | mov ebp,esp | encoding preserved
    %%insn_00404f93:
    sub esp,0x8 ; 00404F93 83EC08
    %if ($ - %%insn_00404f93) > 3
        %error "LONG_00404F93"
    %endif
    times 3 - ($ - %%insn_00404f93) db 0
    %%insn_00404f96:
    mov eax,[ebp+0x8] ; 00404F96 8B4508
    %if ($ - %%insn_00404f96) > 3
        %error "LONG_00404F96"
    %endif
    times 3 - ($ - %%insn_00404f96) db 0
    %%insn_00404f99:
    mov [ebp-0x8],eax ; 00404F99 8945F8
    %if ($ - %%insn_00404f99) > 3
        %error "LONG_00404F99"
    %endif
    times 3 - ($ - %%insn_00404f99) db 0
    %%insn_00404f9c:
    mov ecx,[ebp+0x8] ; 00404F9C 8B4D08
    %if ($ - %%insn_00404f9c) > 3
        %error "LONG_00404F9C"
    %endif
    times 3 - ($ - %%insn_00404f9c) db 0
    %%insn_00404f9f:
    add ecx,0x31 ; 00404F9F 83C131
    %if ($ - %%insn_00404f9f) > 3
        %error "LONG_00404F9F"
    %endif
    times 3 - ($ - %%insn_00404f9f) db 0
    %%insn_00404fa2:
    mov [ebp-0x4],ecx ; 00404FA2 894DFC
    %if ($ - %%insn_00404fa2) > 3
        %error "LONG_00404FA2"
    %endif
    times 3 - ($ - %%insn_00404fa2) db 0
    %%insn_00404fa5:
    mov edx,[ebp+0x8] ; 00404FA5 8B5508
    %if ($ - %%insn_00404fa5) > 3
        %error "LONG_00404FA5"
    %endif
    times 3 - ($ - %%insn_00404fa5) db 0
    %%insn_00404fa8:
    mov byte [edx+0x31],0x0 ; 00404FA8 C6423100
    %if ($ - %%insn_00404fa8) > 4
        %error "LONG_00404FA8"
    %endif
    times 4 - ($ - %%insn_00404fa8) db 0
    %%insn_00404fac:
    mov eax,[ebp+0x8] ; 00404FAC 8B4508
    %if ($ - %%insn_00404fac) > 3
        %error "LONG_00404FAC"
    %endif
    times 3 - ($ - %%insn_00404fac) db 0
    %%insn_00404faf:
    mov byte [eax+0x32],0x0 ; 00404FAF C6403200
    %if ($ - %%insn_00404faf) > 4
        %error "LONG_00404FAF"
    %endif
    times 4 - ($ - %%insn_00404faf) db 0
    %%insn_00404fb3:
    mov ecx,[ebp+0x8] ; 00404FB3 8B4D08
    %if ($ - %%insn_00404fb3) > 3
        %error "LONG_00404FB3"
    %endif
    times 3 - ($ - %%insn_00404fb3) db 0
    %%insn_00404fb6:
    mov byte [ecx+0x33],0x0 ; 00404FB6 C6413300
    %if ($ - %%insn_00404fb6) > 4
        %error "LONG_00404FB6"
    %endif
    times 4 - ($ - %%insn_00404fb6) db 0
    %%insn_00404fba:
    mov edx,[ebp+0x8] ; 00404FBA 8B5508
    %if ($ - %%insn_00404fba) > 3
        %error "LONG_00404FBA"
    %endif
    times 3 - ($ - %%insn_00404fba) db 0
    %%insn_00404fbd:
    mov byte [edx+0x34],0x0 ; 00404FBD C6423400
    %if ($ - %%insn_00404fbd) > 4
        %error "LONG_00404FBD"
    %endif
    times 4 - ($ - %%insn_00404fbd) db 0
    %%insn_00404fc1:
    mov eax,[ebp-0x8] ; 00404FC1 8B45F8
    %if ($ - %%insn_00404fc1) > 3
        %error "LONG_00404FC1"
    %endif
    times 3 - ($ - %%insn_00404fc1) db 0
    %%insn_00404fc4:
    cmp eax,[ebp-0x4] ; 00404FC4 3B45FC
    %if ($ - %%insn_00404fc4) > 3
        %error "LONG_00404FC4"
    %endif
    times 3 - ($ - %%insn_00404fc4) db 0
    %%insn_00404fc7:
    jnc short 0x405041 ; 00404FC7 7378
    %if ($ - %%insn_00404fc7) > 2
        %error "LONG_00404FC7"
    %endif
    times 2 - ($ - %%insn_00404fc7) db 0
    %%insn_00404fc9:
    mov ecx,[ebp-0x8] ; 00404FC9 8B4DF8
    %if ($ - %%insn_00404fc9) > 3
        %error "LONG_00404FC9"
    %endif
    times 3 - ($ - %%insn_00404fc9) db 0
    %%insn_00404fcc:
    movsx edx,byte [ecx] ; 00404FCC 0FBE11
    %if ($ - %%insn_00404fcc) > 3
        %error "LONG_00404FCC"
    %endif
    times 3 - ($ - %%insn_00404fcc) db 0
    %%insn_00404fcf:
    cmp edx,0x1 ; 00404FCF 83FA01
    %if ($ - %%insn_00404fcf) > 3
        %error "LONG_00404FCF"
    %endif
    times 3 - ($ - %%insn_00404fcf) db 0
    %%insn_00404fd2:
    jnz short 0x404fe5 ; 00404FD2 7511
    %if ($ - %%insn_00404fd2) > 2
        %error "LONG_00404FD2"
    %endif
    times 2 - ($ - %%insn_00404fd2) db 0
    %%insn_00404fd4:
    mov eax,[ebp+0x8] ; 00404FD4 8B4508
    %if ($ - %%insn_00404fd4) > 3
        %error "LONG_00404FD4"
    %endif
    times 3 - ($ - %%insn_00404fd4) db 0
    %%insn_00404fd7:
    mov cl,[eax+0x31] ; 00404FD7 8A4831
    %if ($ - %%insn_00404fd7) > 3
        %error "LONG_00404FD7"
    %endif
    times 3 - ($ - %%insn_00404fd7) db 0
    %%insn_00404fda:
    add cl,0x1 ; 00404FDA 80C101
    %if ($ - %%insn_00404fda) > 3
        %error "LONG_00404FDA"
    %endif
    times 3 - ($ - %%insn_00404fda) db 0
    %%insn_00404fdd:
    mov edx,[ebp+0x8] ; 00404FDD 8B5508
    %if ($ - %%insn_00404fdd) > 3
        %error "LONG_00404FDD"
    %endif
    times 3 - ($ - %%insn_00404fdd) db 0
    %%insn_00404fe0:
    mov [edx+0x31],cl ; 00404FE0 884A31
    %if ($ - %%insn_00404fe0) > 3
        %error "LONG_00404FE0"
    %endif
    times 3 - ($ - %%insn_00404fe0) db 0
    %%insn_00404fe3:
    jmp short 0x405036 ; 00404FE3 EB51
    %if ($ - %%insn_00404fe3) > 2
        %error "LONG_00404FE3"
    %endif
    times 2 - ($ - %%insn_00404fe3) db 0
    %%insn_00404fe5:
    mov eax,[ebp-0x8] ; 00404FE5 8B45F8
    %if ($ - %%insn_00404fe5) > 3
        %error "LONG_00404FE5"
    %endif
    times 3 - ($ - %%insn_00404fe5) db 0
    %%insn_00404fe8:
    movsx ecx,byte [eax] ; 00404FE8 0FBE08
    %if ($ - %%insn_00404fe8) > 3
        %error "LONG_00404FE8"
    %endif
    times 3 - ($ - %%insn_00404fe8) db 0
    %%insn_00404feb:
    cmp ecx,0x2 ; 00404FEB 83F902
    %if ($ - %%insn_00404feb) > 3
        %error "LONG_00404FEB"
    %endif
    times 3 - ($ - %%insn_00404feb) db 0
    %%insn_00404fee:
    jnz short 0x405000 ; 00404FEE 7510
    %if ($ - %%insn_00404fee) > 2
        %error "LONG_00404FEE"
    %endif
    times 2 - ($ - %%insn_00404fee) db 0
    %%insn_00404ff0:
    mov edx,[ebp+0x8] ; 00404FF0 8B5508
    %if ($ - %%insn_00404ff0) > 3
        %error "LONG_00404FF0"
    %endif
    times 3 - ($ - %%insn_00404ff0) db 0
    %%insn_00404ff3:
    mov al,[edx+0x32] ; 00404FF3 8A4232
    %if ($ - %%insn_00404ff3) > 3
        %error "LONG_00404FF3"
    %endif
    times 3 - ($ - %%insn_00404ff3) db 0
    %%insn_00404ff6:
    add al,0x1 ; 00404FF6 0401
    %if ($ - %%insn_00404ff6) > 2
        %error "LONG_00404FF6"
    %endif
    times 2 - ($ - %%insn_00404ff6) db 0
    %%insn_00404ff8:
    mov ecx,[ebp+0x8] ; 00404FF8 8B4D08
    %if ($ - %%insn_00404ff8) > 3
        %error "LONG_00404FF8"
    %endif
    times 3 - ($ - %%insn_00404ff8) db 0
    %%insn_00404ffb:
    mov [ecx+0x32],al ; 00404FFB 884132
    %if ($ - %%insn_00404ffb) > 3
        %error "LONG_00404FFB"
    %endif
    times 3 - ($ - %%insn_00404ffb) db 0
    %%insn_00404ffe:
    jmp short 0x405036 ; 00404FFE EB36
    %if ($ - %%insn_00404ffe) > 2
        %error "LONG_00404FFE"
    %endif
    times 2 - ($ - %%insn_00404ffe) db 0
    %%insn_00405000:
    mov edx,[ebp-0x8] ; 00405000 8B55F8
    %if ($ - %%insn_00405000) > 3
        %error "LONG_00405000"
    %endif
    times 3 - ($ - %%insn_00405000) db 0
    %%insn_00405003:
    movsx eax,byte [edx] ; 00405003 0FBE02
    %if ($ - %%insn_00405003) > 3
        %error "LONG_00405003"
    %endif
    times 3 - ($ - %%insn_00405003) db 0
    %%insn_00405006:
    cmp eax,0x3 ; 00405006 83F803
    %if ($ - %%insn_00405006) > 3
        %error "LONG_00405006"
    %endif
    times 3 - ($ - %%insn_00405006) db 0
    %%insn_00405009:
    jnz short 0x40501c ; 00405009 7511
    %if ($ - %%insn_00405009) > 2
        %error "LONG_00405009"
    %endif
    times 2 - ($ - %%insn_00405009) db 0
    %%insn_0040500b:
    mov ecx,[ebp+0x8] ; 0040500B 8B4D08
    %if ($ - %%insn_0040500b) > 3
        %error "LONG_0040500B"
    %endif
    times 3 - ($ - %%insn_0040500b) db 0
    %%insn_0040500e:
    mov dl,[ecx+0x33] ; 0040500E 8A5133
    %if ($ - %%insn_0040500e) > 3
        %error "LONG_0040500E"
    %endif
    times 3 - ($ - %%insn_0040500e) db 0
    %%insn_00405011:
    add dl,0x1 ; 00405011 80C201
    %if ($ - %%insn_00405011) > 3
        %error "LONG_00405011"
    %endif
    times 3 - ($ - %%insn_00405011) db 0
    %%insn_00405014:
    mov eax,[ebp+0x8] ; 00405014 8B4508
    %if ($ - %%insn_00405014) > 3
        %error "LONG_00405014"
    %endif
    times 3 - ($ - %%insn_00405014) db 0
    %%insn_00405017:
    mov [eax+0x33],dl ; 00405017 885033
    %if ($ - %%insn_00405017) > 3
        %error "LONG_00405017"
    %endif
    times 3 - ($ - %%insn_00405017) db 0
    %%insn_0040501a:
    jmp short 0x405036 ; 0040501A EB1A
    %if ($ - %%insn_0040501a) > 2
        %error "LONG_0040501A"
    %endif
    times 2 - ($ - %%insn_0040501a) db 0
    %%insn_0040501c:
    mov ecx,[ebp-0x8] ; 0040501C 8B4DF8
    %if ($ - %%insn_0040501c) > 3
        %error "LONG_0040501C"
    %endif
    times 3 - ($ - %%insn_0040501c) db 0
    %%insn_0040501f:
    movsx edx,byte [ecx] ; 0040501F 0FBE11
    %if ($ - %%insn_0040501f) > 3
        %error "LONG_0040501F"
    %endif
    times 3 - ($ - %%insn_0040501f) db 0
    %%insn_00405022:
    cmp edx,0x4 ; 00405022 83FA04
    %if ($ - %%insn_00405022) > 3
        %error "LONG_00405022"
    %endif
    times 3 - ($ - %%insn_00405022) db 0
    %%insn_00405025:
    jnz short 0x405036 ; 00405025 750F
    %if ($ - %%insn_00405025) > 2
        %error "LONG_00405025"
    %endif
    times 2 - ($ - %%insn_00405025) db 0
    %%insn_00405027:
    mov eax,[ebp+0x8] ; 00405027 8B4508
    %if ($ - %%insn_00405027) > 3
        %error "LONG_00405027"
    %endif
    times 3 - ($ - %%insn_00405027) db 0
    %%insn_0040502a:
    mov cl,[eax+0x34] ; 0040502A 8A4834
    %if ($ - %%insn_0040502a) > 3
        %error "LONG_0040502A"
    %endif
    times 3 - ($ - %%insn_0040502a) db 0
    %%insn_0040502d:
    add cl,0x1 ; 0040502D 80C101
    %if ($ - %%insn_0040502d) > 3
        %error "LONG_0040502D"
    %endif
    times 3 - ($ - %%insn_0040502d) db 0
    %%insn_00405030:
    mov edx,[ebp+0x8] ; 00405030 8B5508
    %if ($ - %%insn_00405030) > 3
        %error "LONG_00405030"
    %endif
    times 3 - ($ - %%insn_00405030) db 0
    %%insn_00405033:
    mov [edx+0x34],cl ; 00405033 884A34
    %if ($ - %%insn_00405033) > 3
        %error "LONG_00405033"
    %endif
    times 3 - ($ - %%insn_00405033) db 0
    %%insn_00405036:
    mov eax,[ebp-0x8] ; 00405036 8B45F8
    %if ($ - %%insn_00405036) > 3
        %error "LONG_00405036"
    %endif
    times 3 - ($ - %%insn_00405036) db 0
    %%insn_00405039:
    add eax,0x1 ; 00405039 83C001
    %if ($ - %%insn_00405039) > 3
        %error "LONG_00405039"
    %endif
    times 3 - ($ - %%insn_00405039) db 0
    %%insn_0040503c:
    mov [ebp-0x8],eax ; 0040503C 8945F8
    %if ($ - %%insn_0040503c) > 3
        %error "LONG_0040503C"
    %endif
    times 3 - ($ - %%insn_0040503c) db 0
    %%insn_0040503f:
    jmp short 0x404fc1 ; 0040503F EB80
    %if ($ - %%insn_0040503f) > 2
        %error "LONG_0040503F"
    %endif
    times 2 - ($ - %%insn_0040503f) db 0
    db 0x8B, 0xE5 ; 00405041 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00405043:
    pop ebp ; 00405043 5D
    %if ($ - %%insn_00405043) > 1
        %error "LONG_00405043"
    %endif
    times 1 - ($ - %%insn_00405043) db 0
    %%insn_00405044:
    ret ; 00405044 C3
    %if ($ - %%insn_00405044) > 1
        %error "LONG_00405044"
    %endif
    times 1 - ($ - %%insn_00405044) db 0
    %if ($ - %%fragment_start) != 181
        %error "function fragment size drift: 00404F90"
    %endif
%endmacro
