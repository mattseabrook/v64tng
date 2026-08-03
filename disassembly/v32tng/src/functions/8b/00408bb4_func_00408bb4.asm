; PE virtual entry 00408BB4
; Ghidra working symbol: FUN_00408bb4
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00408bb4_part_00 0
    %%fragment_start:
func_00408bb4:
    %%insn_00408bb4:
    push ebp ; 00408BB4 55
    %if ($ - %%insn_00408bb4) > 1
        %error "LONG_00408BB4"
    %endif
    times 1 - ($ - %%insn_00408bb4) db 0
    db 0x8B, 0xEC ; 00408BB5 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408bb7:
    sub esp,0x1c ; 00408BB7 83EC1C
    %if ($ - %%insn_00408bb7) > 3
        %error "LONG_00408BB7"
    %endif
    times 3 - ($ - %%insn_00408bb7) db 0
    %%insn_00408bba:
    mov dword [ebp-0xc],0x0 ; 00408BBA C745F400000000
    %if ($ - %%insn_00408bba) > 7
        %error "LONG_00408BBA"
    %endif
    times 7 - ($ - %%insn_00408bba) db 0
    %%insn_00408bc1:
    mov byte [ebp-0x18],0x1 ; 00408BC1 C645E801
    %if ($ - %%insn_00408bc1) > 4
        %error "LONG_00408BC1"
    %endif
    times 4 - ($ - %%insn_00408bc1) db 0
    %%insn_00408bc5:
    mov byte [ebp-0x4],0x0 ; 00408BC5 C645FC00
    %if ($ - %%insn_00408bc5) > 4
        %error "LONG_00408BC5"
    %endif
    times 4 - ($ - %%insn_00408bc5) db 0
    %%insn_00408bc9:
    mov al,[ebp-0x18] ; 00408BC9 8A45E8
    %if ($ - %%insn_00408bc9) > 3
        %error "LONG_00408BC9"
    %endif
    times 3 - ($ - %%insn_00408bc9) db 0
    %%insn_00408bcc:
    sub al,0x1 ; 00408BCC 2C01
    %if ($ - %%insn_00408bcc) > 2
        %error "LONG_00408BCC"
    %endif
    times 2 - ($ - %%insn_00408bcc) db 0
    %%insn_00408bce:
    mov [ebp-0x18],al ; 00408BCE 8845E8
    %if ($ - %%insn_00408bce) > 3
        %error "LONG_00408BCE"
    %endif
    times 3 - ($ - %%insn_00408bce) db 0
    %%insn_00408bd1:
    mov ecx,[ebp-0x18] ; 00408BD1 8B4DE8
    %if ($ - %%insn_00408bd1) > 3
        %error "LONG_00408BD1"
    %endif
    times 3 - ($ - %%insn_00408bd1) db 0
    %%insn_00408bd4:
    and ecx,0xff ; 00408BD4 81E1FF000000
    %if ($ - %%insn_00408bd4) > 6
        %error "LONG_00408BD4"
    %endif
    times 6 - ($ - %%insn_00408bd4) db 0
    %%insn_00408bda:
    test ecx,ecx ; 00408BDA 85C9
    %if ($ - %%insn_00408bda) > 2
        %error "LONG_00408BDA"
    %endif
    times 2 - ($ - %%insn_00408bda) db 0
    %%insn_00408bdc:
    jnz short 0x408bf3 ; 00408BDC 7515
    %if ($ - %%insn_00408bdc) > 2
        %error "LONG_00408BDC"
    %endif
    times 2 - ($ - %%insn_00408bdc) db 0
    %%insn_00408bde:
    mov edx,[ebp+0x8] ; 00408BDE 8B5508
    %if ($ - %%insn_00408bde) > 3
        %error "LONG_00408BDE"
    %endif
    times 3 - ($ - %%insn_00408bde) db 0
    %%insn_00408be1:
    mov al,[edx] ; 00408BE1 8A02
    %if ($ - %%insn_00408be1) > 2
        %error "LONG_00408BE1"
    %endif
    times 2 - ($ - %%insn_00408be1) db 0
    %%insn_00408be3:
    mov [ebp-0x4],al ; 00408BE3 8845FC
    %if ($ - %%insn_00408be3) > 3
        %error "LONG_00408BE3"
    %endif
    times 3 - ($ - %%insn_00408be3) db 0
    %%insn_00408be6:
    mov ecx,[ebp+0x8] ; 00408BE6 8B4D08
    %if ($ - %%insn_00408be6) > 3
        %error "LONG_00408BE6"
    %endif
    times 3 - ($ - %%insn_00408be6) db 0
    %%insn_00408be9:
    add ecx,0x1 ; 00408BE9 83C101
    %if ($ - %%insn_00408be9) > 3
        %error "LONG_00408BE9"
    %endif
    times 3 - ($ - %%insn_00408be9) db 0
    %%insn_00408bec:
    mov [ebp+0x8],ecx ; 00408BEC 894D08
    %if ($ - %%insn_00408bec) > 3
        %error "LONG_00408BEC"
    %endif
    times 3 - ($ - %%insn_00408bec) db 0
    %%insn_00408bef:
    mov byte [ebp-0x18],0x8 ; 00408BEF C645E808
    %if ($ - %%insn_00408bef) > 4
        %error "LONG_00408BEF"
    %endif
    times 4 - ($ - %%insn_00408bef) db 0
    %%insn_00408bf3:
    mov edx,[ebp-0x4] ; 00408BF3 8B55FC
    %if ($ - %%insn_00408bf3) > 3
        %error "LONG_00408BF3"
    %endif
    times 3 - ($ - %%insn_00408bf3) db 0
    %%insn_00408bf6:
    and edx,0xff ; 00408BF6 81E2FF000000
    %if ($ - %%insn_00408bf6) > 6
        %error "LONG_00408BF6"
    %endif
    times 6 - ($ - %%insn_00408bf6) db 0
    %%insn_00408bfc:
    and edx,0x1 ; 00408BFC 83E201
    %if ($ - %%insn_00408bfc) > 3
        %error "LONG_00408BFC"
    %endif
    times 3 - ($ - %%insn_00408bfc) db 0
    %%insn_00408bff:
    test edx,edx ; 00408BFF 85D2
    %if ($ - %%insn_00408bff) > 2
        %error "LONG_00408BFF"
    %endif
    times 2 - ($ - %%insn_00408bff) db 0
    %%insn_00408c01:
    jz short 0x408c2d ; 00408C01 742A
    %if ($ - %%insn_00408c01) > 2
        %error "LONG_00408C01"
    %endif
    times 2 - ($ - %%insn_00408c01) db 0
    %%insn_00408c03:
    mov eax,[ebp+0xc] ; 00408C03 8B450C
    %if ($ - %%insn_00408c03) > 3
        %error "LONG_00408C03"
    %endif
    times 3 - ($ - %%insn_00408c03) db 0
    %%insn_00408c06:
    mov ecx,[ebp+0x8] ; 00408C06 8B4D08
    %if ($ - %%insn_00408c06) > 3
        %error "LONG_00408C06"
    %endif
    times 3 - ($ - %%insn_00408c06) db 0
    %%insn_00408c09:
    mov dl,[ecx] ; 00408C09 8A11
    %if ($ - %%insn_00408c09) > 2
        %error "LONG_00408C09"
    %endif
    times 2 - ($ - %%insn_00408c09) db 0
    %%insn_00408c0b:
    mov [eax],dl ; 00408C0B 8810
    %if ($ - %%insn_00408c0b) > 2
        %error "LONG_00408C0B"
    %endif
    times 2 - ($ - %%insn_00408c0b) db 0
    %%insn_00408c0d:
    mov eax,[ebp+0xc] ; 00408C0D 8B450C
    %if ($ - %%insn_00408c0d) > 3
        %error "LONG_00408C0D"
    %endif
    times 3 - ($ - %%insn_00408c0d) db 0
    %%insn_00408c10:
    add eax,0x1 ; 00408C10 83C001
    %if ($ - %%insn_00408c10) > 3
        %error "LONG_00408C10"
    %endif
    times 3 - ($ - %%insn_00408c10) db 0
    %%insn_00408c13:
    mov [ebp+0xc],eax ; 00408C13 89450C
    %if ($ - %%insn_00408c13) > 3
        %error "LONG_00408C13"
    %endif
    times 3 - ($ - %%insn_00408c13) db 0
    %%insn_00408c16:
    mov ecx,[ebp+0x8] ; 00408C16 8B4D08
    %if ($ - %%insn_00408c16) > 3
        %error "LONG_00408C16"
    %endif
    times 3 - ($ - %%insn_00408c16) db 0
    %%insn_00408c19:
    add ecx,0x1 ; 00408C19 83C101
    %if ($ - %%insn_00408c19) > 3
        %error "LONG_00408C19"
    %endif
    times 3 - ($ - %%insn_00408c19) db 0
    %%insn_00408c1c:
    mov [ebp+0x8],ecx ; 00408C1C 894D08
    %if ($ - %%insn_00408c1c) > 3
        %error "LONG_00408C1C"
    %endif
    times 3 - ($ - %%insn_00408c1c) db 0
    %%insn_00408c1f:
    mov edx,[ebp-0xc] ; 00408C1F 8B55F4
    %if ($ - %%insn_00408c1f) > 3
        %error "LONG_00408C1F"
    %endif
    times 3 - ($ - %%insn_00408c1f) db 0
    %%insn_00408c22:
    add edx,0x1 ; 00408C22 83C201
    %if ($ - %%insn_00408c22) > 3
        %error "LONG_00408C22"
    %endif
    times 3 - ($ - %%insn_00408c22) db 0
    %%insn_00408c25:
    mov [ebp-0xc],edx ; 00408C25 8955F4
    %if ($ - %%insn_00408c25) > 3
        %error "LONG_00408C25"
    %endif
    times 3 - ($ - %%insn_00408c25) db 0
    %%insn_00408c28:
    jmp 0x408ce1 ; 00408C28 E9B4000000
    %if ($ - %%insn_00408c28) > 5
        %error "LONG_00408C28"
    %endif
    times 5 - ($ - %%insn_00408c28) db 0
    %%insn_00408c2d:
    mov eax,[ebp+0x8] ; 00408C2D 8B4508
    %if ($ - %%insn_00408c2d) > 3
        %error "LONG_00408C2D"
    %endif
    times 3 - ($ - %%insn_00408c2d) db 0
    %%insn_00408c30:
    mov cl,[eax] ; 00408C30 8A08
    %if ($ - %%insn_00408c30) > 2
        %error "LONG_00408C30"
    %endif
    times 2 - ($ - %%insn_00408c30) db 0
    %%insn_00408c32:
    mov [ebp-0x8],cl ; 00408C32 884DF8
    %if ($ - %%insn_00408c32) > 3
        %error "LONG_00408C32"
    %endif
    times 3 - ($ - %%insn_00408c32) db 0
    %%insn_00408c35:
    mov edx,[ebp+0x8] ; 00408C35 8B5508
    %if ($ - %%insn_00408c35) > 3
        %error "LONG_00408C35"
    %endif
    times 3 - ($ - %%insn_00408c35) db 0
    %%insn_00408c38:
    add edx,0x1 ; 00408C38 83C201
    %if ($ - %%insn_00408c38) > 3
        %error "LONG_00408C38"
    %endif
    times 3 - ($ - %%insn_00408c38) db 0
    %%insn_00408c3b:
    mov [ebp+0x8],edx ; 00408C3B 895508
    %if ($ - %%insn_00408c3b) > 3
        %error "LONG_00408C3B"
    %endif
    times 3 - ($ - %%insn_00408c3b) db 0
    %%insn_00408c3e:
    mov eax,[ebp+0x8] ; 00408C3E 8B4508
    %if ($ - %%insn_00408c3e) > 3
        %error "LONG_00408C3E"
    %endif
    times 3 - ($ - %%insn_00408c3e) db 0
    %%insn_00408c41:
    mov cl,[eax] ; 00408C41 8A08
    %if ($ - %%insn_00408c41) > 2
        %error "LONG_00408C41"
    %endif
    times 2 - ($ - %%insn_00408c41) db 0
    %%insn_00408c43:
    mov [ebp-0x10],cl ; 00408C43 884DF0
    %if ($ - %%insn_00408c43) > 3
        %error "LONG_00408C43"
    %endif
    times 3 - ($ - %%insn_00408c43) db 0
    %%insn_00408c46:
    mov edx,[ebp+0x8] ; 00408C46 8B5508
    %if ($ - %%insn_00408c46) > 3
        %error "LONG_00408C46"
    %endif
    times 3 - ($ - %%insn_00408c46) db 0
    %%insn_00408c49:
    add edx,0x1 ; 00408C49 83C201
    %if ($ - %%insn_00408c49) > 3
        %error "LONG_00408C49"
    %endif
    times 3 - ($ - %%insn_00408c49) db 0
    %%insn_00408c4c:
    mov [ebp+0x8],edx ; 00408C4C 895508
    %if ($ - %%insn_00408c4c) > 3
        %error "LONG_00408C4C"
    %endif
    times 3 - ($ - %%insn_00408c4c) db 0
    %%insn_00408c4f:
    mov eax,[ebp-0x8] ; 00408C4F 8B45F8
    %if ($ - %%insn_00408c4f) > 3
        %error "LONG_00408C4F"
    %endif
    times 3 - ($ - %%insn_00408c4f) db 0
    %%insn_00408c52:
    and eax,0xff ; 00408C52 25FF000000
    %if ($ - %%insn_00408c52) > 5
        %error "LONG_00408C52"
    %endif
    times 5 - ($ - %%insn_00408c52) db 0
    %%insn_00408c57:
    test eax,eax ; 00408C57 85C0
    %if ($ - %%insn_00408c57) > 2
        %error "LONG_00408C57"
    %endif
    times 2 - ($ - %%insn_00408c57) db 0
    %%insn_00408c59:
    jnz short 0x408c6d ; 00408C59 7512
    %if ($ - %%insn_00408c59) > 2
        %error "LONG_00408C59"
    %endif
    times 2 - ($ - %%insn_00408c59) db 0
    %%insn_00408c5b:
    mov ecx,[ebp-0x10] ; 00408C5B 8B4DF0
    %if ($ - %%insn_00408c5b) > 3
        %error "LONG_00408C5B"
    %endif
    times 3 - ($ - %%insn_00408c5b) db 0
    %%insn_00408c5e:
    and ecx,0xff ; 00408C5E 81E1FF000000
    %if ($ - %%insn_00408c5e) > 6
        %error "LONG_00408C5E"
    %endif
    times 6 - ($ - %%insn_00408c5e) db 0
    %%insn_00408c64:
    test ecx,ecx ; 00408C64 85C9
    %if ($ - %%insn_00408c64) > 2
        %error "LONG_00408C64"
    %endif
    times 2 - ($ - %%insn_00408c64) db 0
    %%insn_00408c66:
    jnz short 0x408c6d ; 00408C66 7505
    %if ($ - %%insn_00408c66) > 2
        %error "LONG_00408C66"
    %endif
    times 2 - ($ - %%insn_00408c66) db 0
    %%insn_00408c68:
    jmp 0x408cee ; 00408C68 E981000000
    %if ($ - %%insn_00408c68) > 5
        %error "LONG_00408C68"
    %endif
    times 5 - ($ - %%insn_00408c68) db 0
    %%insn_00408c6d:
    mov edx,[ebp-0x10] ; 00408C6D 8B55F0
    %if ($ - %%insn_00408c6d) > 3
        %error "LONG_00408C6D"
    %endif
    times 3 - ($ - %%insn_00408c6d) db 0
    %%insn_00408c70:
    and edx,0xff ; 00408C70 81E2FF000000
    %if ($ - %%insn_00408c70) > 6
        %error "LONG_00408C70"
    %endif
    times 6 - ($ - %%insn_00408c70) db 0
    %%insn_00408c76:
    and edx,0xf ; 00408C76 83E20F
    %if ($ - %%insn_00408c76) > 3
        %error "LONG_00408C76"
    %endif
    times 3 - ($ - %%insn_00408c76) db 0
    %%insn_00408c79:
    add edx,0x3 ; 00408C79 83C203
    %if ($ - %%insn_00408c79) > 3
        %error "LONG_00408C79"
    %endif
    times 3 - ($ - %%insn_00408c79) db 0
    %%insn_00408c7c:
    mov [ebp-0x1c],dx ; 00408C7C 668955E4
    %if ($ - %%insn_00408c7c) > 4
        %error "LONG_00408C7C"
    %endif
    times 4 - ($ - %%insn_00408c7c) db 0
    %%insn_00408c80:
    mov al,[ebp-0x10] ; 00408C80 8A45F0
    %if ($ - %%insn_00408c80) > 3
        %error "LONG_00408C80"
    %endif
    times 3 - ($ - %%insn_00408c80) db 0
    %%insn_00408c83:
    shr al,byte 0x4 ; 00408C83 C0E804
    %if ($ - %%insn_00408c83) > 3
        %error "LONG_00408C83"
    %endif
    times 3 - ($ - %%insn_00408c83) db 0
    %%insn_00408c86:
    mov [ebp-0x10],al ; 00408C86 8845F0
    %if ($ - %%insn_00408c86) > 3
        %error "LONG_00408C86"
    %endif
    times 3 - ($ - %%insn_00408c86) db 0
    %%insn_00408c89:
    mov ecx,[ebp-0x8] ; 00408C89 8B4DF8
    %if ($ - %%insn_00408c89) > 3
        %error "LONG_00408C89"
    %endif
    times 3 - ($ - %%insn_00408c89) db 0
    %%insn_00408c8c:
    and ecx,0xff ; 00408C8C 81E1FF000000
    %if ($ - %%insn_00408c8c) > 6
        %error "LONG_00408C8C"
    %endif
    times 6 - ($ - %%insn_00408c8c) db 0
    %%insn_00408c92:
    mov edx,[ebp-0x10] ; 00408C92 8B55F0
    %if ($ - %%insn_00408c92) > 3
        %error "LONG_00408C92"
    %endif
    times 3 - ($ - %%insn_00408c92) db 0
    %%insn_00408c95:
    and edx,0xff ; 00408C95 81E2FF000000
    %if ($ - %%insn_00408c95) > 6
        %error "LONG_00408C95"
    %endif
    times 6 - ($ - %%insn_00408c95) db 0
    %%insn_00408c9b:
    shl edx,byte 0x8 ; 00408C9B C1E208
    %if ($ - %%insn_00408c9b) > 3
        %error "LONG_00408C9B"
    %endif
    times 3 - ($ - %%insn_00408c9b) db 0
    db 0x03, 0xCA ; 00408C9E 03CA | add ecx,edx | encoding preserved
    %%insn_00408ca0:
    mov [ebp-0x14],cx ; 00408CA0 66894DEC
    %if ($ - %%insn_00408ca0) > 4
        %error "LONG_00408CA0"
    %endif
    times 4 - ($ - %%insn_00408ca0) db 0
    %%insn_00408ca4:
    movsx eax,word [ebp-0x1c] ; 00408CA4 0FBF45E4
    %if ($ - %%insn_00408ca4) > 4
        %error "LONG_00408CA4"
    %endif
    times 4 - ($ - %%insn_00408ca4) db 0
    %%insn_00408ca8:
    mov ecx,[ebp-0xc] ; 00408CA8 8B4DF4
    %if ($ - %%insn_00408ca8) > 3
        %error "LONG_00408CA8"
    %endif
    times 3 - ($ - %%insn_00408ca8) db 0
    db 0x03, 0xC8 ; 00408CAB 03C8 | add ecx,eax | encoding preserved
    %%insn_00408cad:
    mov [ebp-0xc],ecx ; 00408CAD 894DF4
    %if ($ - %%insn_00408cad) > 3
        %error "LONG_00408CAD"
    %endif
    times 3 - ($ - %%insn_00408cad) db 0
    %%insn_00408cb0:
    jmp short 0x408cc7 ; 00408CB0 EB15
    %if ($ - %%insn_00408cb0) > 2
        %error "LONG_00408CB0"
    %endif
    times 2 - ($ - %%insn_00408cb0) db 0
    %%insn_00408cb2:
    mov dx,[ebp-0x1c] ; 00408CB2 668B55E4
    %if ($ - %%insn_00408cb2) > 4
        %error "LONG_00408CB2"
    %endif
    times 4 - ($ - %%insn_00408cb2) db 0
    %%insn_00408cb6:
    sub dx,0x1 ; 00408CB6 6683EA01
    %if ($ - %%insn_00408cb6) > 4
        %error "LONG_00408CB6"
    %endif
    times 4 - ($ - %%insn_00408cb6) db 0
    %%insn_00408cba:
    mov [ebp-0x1c],dx ; 00408CBA 668955E4
    %if ($ - %%insn_00408cba) > 4
        %error "LONG_00408CBA"
    %endif
    times 4 - ($ - %%insn_00408cba) db 0
    %%insn_00408cbe:
    mov eax,[ebp+0xc] ; 00408CBE 8B450C
    %if ($ - %%insn_00408cbe) > 3
        %error "LONG_00408CBE"
    %endif
    times 3 - ($ - %%insn_00408cbe) db 0
    %%insn_00408cc1:
    add eax,0x1 ; 00408CC1 83C001
    %if ($ - %%insn_00408cc1) > 3
        %error "LONG_00408CC1"
    %endif
    times 3 - ($ - %%insn_00408cc1) db 0
    %%insn_00408cc4:
    mov [ebp+0xc],eax ; 00408CC4 89450C
    %if ($ - %%insn_00408cc4) > 3
        %error "LONG_00408CC4"
    %endif
    times 3 - ($ - %%insn_00408cc4) db 0
    %%insn_00408cc7:
    movsx ecx,word [ebp-0x1c] ; 00408CC7 0FBF4DE4
    %if ($ - %%insn_00408cc7) > 4
        %error "LONG_00408CC7"
    %endif
    times 4 - ($ - %%insn_00408cc7) db 0
    %%insn_00408ccb:
    test ecx,ecx ; 00408CCB 85C9
    %if ($ - %%insn_00408ccb) > 2
        %error "LONG_00408CCB"
    %endif
    times 2 - ($ - %%insn_00408ccb) db 0
    %%insn_00408ccd:
    jng short 0x408ce1 ; 00408CCD 7E12
    %if ($ - %%insn_00408ccd) > 2
        %error "LONG_00408CCD"
    %endif
    times 2 - ($ - %%insn_00408ccd) db 0
    %%insn_00408ccf:
    movsx edx,word [ebp-0x14] ; 00408CCF 0FBF55EC
    %if ($ - %%insn_00408ccf) > 4
        %error "LONG_00408CCF"
    %endif
    times 4 - ($ - %%insn_00408ccf) db 0
    %%insn_00408cd3:
    mov eax,[ebp+0xc] ; 00408CD3 8B450C
    %if ($ - %%insn_00408cd3) > 3
        %error "LONG_00408CD3"
    %endif
    times 3 - ($ - %%insn_00408cd3) db 0
    db 0x2B, 0xC2 ; 00408CD6 2BC2 | sub eax,edx | encoding preserved
    %%insn_00408cd8:
    mov ecx,[ebp+0xc] ; 00408CD8 8B4D0C
    %if ($ - %%insn_00408cd8) > 3
        %error "LONG_00408CD8"
    %endif
    times 3 - ($ - %%insn_00408cd8) db 0
    %%insn_00408cdb:
    mov dl,[eax] ; 00408CDB 8A10
    %if ($ - %%insn_00408cdb) > 2
        %error "LONG_00408CDB"
    %endif
    times 2 - ($ - %%insn_00408cdb) db 0
    %%insn_00408cdd:
    mov [ecx],dl ; 00408CDD 8811
    %if ($ - %%insn_00408cdd) > 2
        %error "LONG_00408CDD"
    %endif
    times 2 - ($ - %%insn_00408cdd) db 0
    %%insn_00408cdf:
    jmp short 0x408cb2 ; 00408CDF EBD1
    %if ($ - %%insn_00408cdf) > 2
        %error "LONG_00408CDF"
    %endif
    times 2 - ($ - %%insn_00408cdf) db 0
    %%insn_00408ce1:
    mov al,[ebp-0x4] ; 00408CE1 8A45FC
    %if ($ - %%insn_00408ce1) > 3
        %error "LONG_00408CE1"
    %endif
    times 3 - ($ - %%insn_00408ce1) db 0
    %%insn_00408ce4:
    shr al,1 ; 00408CE4 D0E8
    %if ($ - %%insn_00408ce4) > 2
        %error "LONG_00408CE4"
    %endif
    times 2 - ($ - %%insn_00408ce4) db 0
    %%insn_00408ce6:
    mov [ebp-0x4],al ; 00408CE6 8845FC
    %if ($ - %%insn_00408ce6) > 3
        %error "LONG_00408CE6"
    %endif
    times 3 - ($ - %%insn_00408ce6) db 0
    %%insn_00408ce9:
    jmp 0x408bc9 ; 00408CE9 E9DBFEFFFF
    %if ($ - %%insn_00408ce9) > 5
        %error "LONG_00408CE9"
    %endif
    times 5 - ($ - %%insn_00408ce9) db 0
    %%insn_00408cee:
    mov eax,[ebp-0xc] ; 00408CEE 8B45F4
    %if ($ - %%insn_00408cee) > 3
        %error "LONG_00408CEE"
    %endif
    times 3 - ($ - %%insn_00408cee) db 0
    db 0x8B, 0xE5 ; 00408CF1 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00408cf3:
    pop ebp ; 00408CF3 5D
    %if ($ - %%insn_00408cf3) > 1
        %error "LONG_00408CF3"
    %endif
    times 1 - ($ - %%insn_00408cf3) db 0
    %%insn_00408cf4:
    ret ; 00408CF4 C3
    %if ($ - %%insn_00408cf4) > 1
        %error "LONG_00408CF4"
    %endif
    times 1 - ($ - %%insn_00408cf4) db 0
    %if ($ - %%fragment_start) != 321
        %error "function fragment size drift: 00408BB4"
    %endif
%endmacro
