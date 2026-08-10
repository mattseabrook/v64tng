; PE virtual entry 0040C1BD
; Ghidra working symbol: FUN_0040c1bd
; Verified VDX stream callback/configuration, header timing, and playback-state setup role.
; Generated losslessly; preserve byte identity after edits.

%macro emit_configure_vdx_stream_part_00 0
    %%fragment_start:
configure_vdx_stream:
    %%insn_0040c1bd:
    push ebp ; 0040C1BD 55
    %if ($ - %%insn_0040c1bd) > 1
        %error "LONG_0040C1BD"
    %endif
    times 1 - ($ - %%insn_0040c1bd) db 0
    db 0x8B, 0xEC ; 0040C1BE 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c1c0:
    mov eax,[ebp+0x8] ; 0040C1C0 8B4508
    %if ($ - %%insn_0040c1c0) > 3
        %error "LONG_0040C1C0"
    %endif
    times 3 - ($ - %%insn_0040c1c0) db 0
    db 0x33, 0xC9 ; 0040C1C3 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040c1c5:
    mov cx,[eax+0x62] ; 0040C1C5 668B4862
    %if ($ - %%insn_0040c1c5) > 4
        %error "LONG_0040C1C5"
    %endif
    times 4 - ($ - %%insn_0040c1c5) db 0
    %%insn_0040c1c9:
    and ecx,0x2 ; 0040C1C9 83E102
    %if ($ - %%insn_0040c1c9) > 3
        %error "LONG_0040C1C9"
    %endif
    times 3 - ($ - %%insn_0040c1c9) db 0
    %%insn_0040c1cc:
    test ecx,ecx ; 0040C1CC 85C9
    %if ($ - %%insn_0040c1cc) > 2
        %error "LONG_0040C1CC"
    %endif
    times 2 - ($ - %%insn_0040c1cc) db 0
    %%insn_0040c1ce:
    jz short 0x40c1e1 ; 0040C1CE 7411
    %if ($ - %%insn_0040c1ce) > 2
        %error "LONG_0040C1CE"
    %endif
    times 2 - ($ - %%insn_0040c1ce) db 0
    %%insn_0040c1d0:
    mov edx,[ebp+0x8] ; 0040C1D0 8B5508
    %if ($ - %%insn_0040c1d0) > 3
        %error "LONG_0040C1D0"
    %endif
    times 3 - ($ - %%insn_0040c1d0) db 0
    %%insn_0040c1d3:
    mov ax,[edx+0x62] ; 0040C1D3 668B4262
    %if ($ - %%insn_0040c1d3) > 4
        %error "LONG_0040C1D3"
    %endif
    times 4 - ($ - %%insn_0040c1d3) db 0
    %%insn_0040c1d7:
    or ah,0x1 ; 0040C1D7 80CC01
    %if ($ - %%insn_0040c1d7) > 3
        %error "LONG_0040C1D7"
    %endif
    times 3 - ($ - %%insn_0040c1d7) db 0
    %%insn_0040c1da:
    mov ecx,[ebp+0x8] ; 0040C1DA 8B4D08
    %if ($ - %%insn_0040c1da) > 3
        %error "LONG_0040C1DA"
    %endif
    times 3 - ($ - %%insn_0040c1da) db 0
    %%insn_0040c1dd:
    mov [ecx+0x62],ax ; 0040C1DD 66894162
    %if ($ - %%insn_0040c1dd) > 4
        %error "LONG_0040C1DD"
    %endif
    times 4 - ($ - %%insn_0040c1dd) db 0
    %%insn_0040c1e1:
    mov edx,[ebp+0x8] ; 0040C1E1 8B5508
    %if ($ - %%insn_0040c1e1) > 3
        %error "LONG_0040C1E1"
    %endif
    times 3 - ($ - %%insn_0040c1e1) db 0
    %%insn_0040c1e4:
    mov ax,[edx+0x62] ; 0040C1E4 668B4262
    %if ($ - %%insn_0040c1e4) > 4
        %error "LONG_0040C1E4"
    %endif
    times 4 - ($ - %%insn_0040c1e4) db 0
    %%insn_0040c1e8:
    mov [0x4212d8],ax ; 0040C1E8 66A3D8124200
    %if ($ - %%insn_0040c1e8) > 6
        %error "LONG_0040C1E8"
    %endif
    times 6 - ($ - %%insn_0040c1e8) db 0
    %%insn_0040c1ee:
    mov ecx,[ebp+0x8] ; 0040C1EE 8B4D08
    %if ($ - %%insn_0040c1ee) > 3
        %error "LONG_0040C1EE"
    %endif
    times 3 - ($ - %%insn_0040c1ee) db 0
    %%insn_0040c1f1:
    mov dword [ecx+0x34],0x0 ; 0040C1F1 C7413400000000
    %if ($ - %%insn_0040c1f1) > 7
        %error "LONG_0040C1F1"
    %endif
    times 7 - ($ - %%insn_0040c1f1) db 0
    %%insn_0040c1f8:
    mov edx,[ebp+0x8] ; 0040C1F8 8B5508
    %if ($ - %%insn_0040c1f8) > 3
        %error "LONG_0040C1F8"
    %endif
    times 3 - ($ - %%insn_0040c1f8) db 0
    %%insn_0040c1fb:
    mov dword [edx+0x38],0x0 ; 0040C1FB C7423800000000
    %if ($ - %%insn_0040c1fb) > 7
        %error "LONG_0040C1FB"
    %endif
    times 7 - ($ - %%insn_0040c1fb) db 0
    %%insn_0040c202:
    mov eax,[ebp+0x8] ; 0040C202 8B4508
    %if ($ - %%insn_0040c202) > 3
        %error "LONG_0040C202"
    %endif
    times 3 - ($ - %%insn_0040c202) db 0
    %%insn_0040c205:
    mov dword [eax+0x3c],0x0 ; 0040C205 C7403C00000000
    %if ($ - %%insn_0040c205) > 7
        %error "LONG_0040C205"
    %endif
    times 7 - ($ - %%insn_0040c205) db 0
    %%insn_0040c20c:
    mov ecx,[ebp+0x8] ; 0040C20C 8B4D08
    %if ($ - %%insn_0040c20c) > 3
        %error "LONG_0040C20C"
    %endif
    times 3 - ($ - %%insn_0040c20c) db 0
    %%insn_0040c20f:
    mov dword [ecx+0x40],0x0 ; 0040C20F C7414000000000
    %if ($ - %%insn_0040c20f) > 7
        %error "LONG_0040C20F"
    %endif
    times 7 - ($ - %%insn_0040c20f) db 0
    %%insn_0040c216:
    mov edx,[ebp+0x8] ; 0040C216 8B5508
    %if ($ - %%insn_0040c216) > 3
        %error "LONG_0040C216"
    %endif
    times 3 - ($ - %%insn_0040c216) db 0
    %%insn_0040c219:
    mov dword [edx+0x24],0xffffffff ; 0040C219 C74224FFFFFFFF
    %if ($ - %%insn_0040c219) > 7
        %error "LONG_0040C219"
    %endif
    times 7 - ($ - %%insn_0040c219) db 0
    %%insn_0040c220:
    mov eax,[ebp+0x8] ; 0040C220 8B4508
    %if ($ - %%insn_0040c220) > 3
        %error "LONG_0040C220"
    %endif
    times 3 - ($ - %%insn_0040c220) db 0
    %%insn_0040c223:
    mov dword [eax+0x2c],0x1 ; 0040C223 C7402C01000000
    %if ($ - %%insn_0040c223) > 7
        %error "LONG_0040C223"
    %endif
    times 7 - ($ - %%insn_0040c223) db 0
    %%insn_0040c22a:
    mov ecx,[ebp+0x8] ; 0040C22A 8B4D08
    %if ($ - %%insn_0040c22a) > 3
        %error "LONG_0040C22A"
    %endif
    times 3 - ($ - %%insn_0040c22a) db 0
    %%insn_0040c22d:
    mov dword [ecx+0x58],0x0 ; 0040C22D C7415800000000
    %if ($ - %%insn_0040c22d) > 7
        %error "LONG_0040C22D"
    %endif
    times 7 - ($ - %%insn_0040c22d) db 0
    %%insn_0040c234:
    mov edx,[ebp+0x8] ; 0040C234 8B5508
    %if ($ - %%insn_0040c234) > 3
        %error "LONG_0040C234"
    %endif
    times 3 - ($ - %%insn_0040c234) db 0
    %%insn_0040c237:
    mov dword [edx+0x5c],0x0 ; 0040C237 C7425C00000000
    %if ($ - %%insn_0040c237) > 7
        %error "LONG_0040C237"
    %endif
    times 7 - ($ - %%insn_0040c237) db 0
    %%insn_0040c23e:
    call get_active_redbook_track ; 0040C23E E891AFFFFF
    %if ($ - %%insn_0040c23e) > 5
        %error "LONG_0040C23E"
    %endif
    times 5 - ($ - %%insn_0040c23e) db 0
    %%insn_0040c243:
    mov [v32_vdx_redbook_track_snapshot],ax ; 0040C243 66A34C0E4200
    %if ($ - %%insn_0040c243) > 6
        %error "LONG_0040C243"
    %endif
    times 6 - ($ - %%insn_0040c243) db 0
    %%insn_0040c249:
    mov eax,[ebp+0x8] ; 0040C249 8B4508
    %if ($ - %%insn_0040c249) > 3
        %error "LONG_0040C249"
    %endif
    times 3 - ($ - %%insn_0040c249) db 0
    %%insn_0040c24c:
    mov cx,[eax+0x60] ; 0040C24C 668B4860
    %if ($ - %%insn_0040c24c) > 4
        %error "LONG_0040C24C"
    %endif
    times 4 - ($ - %%insn_0040c24c) db 0
    %%insn_0040c250:
    push ecx ; 0040C250 51
    %if ($ - %%insn_0040c250) > 1
        %error "LONG_0040C250"
    %endif
    times 1 - ($ - %%insn_0040c250) db 0
    %%insn_0040c251:
    mov edx,[ebp+0x8] ; 0040C251 8B5508
    %if ($ - %%insn_0040c251) > 3
        %error "LONG_0040C251"
    %endif
    times 3 - ($ - %%insn_0040c251) db 0
    %%insn_0040c254:
    mov eax,[edx] ; 0040C254 8B02
    %if ($ - %%insn_0040c254) > 2
        %error "LONG_0040C254"
    %endif
    times 2 - ($ - %%insn_0040c254) db 0
    %%insn_0040c256:
    push eax ; 0040C256 50
    %if ($ - %%insn_0040c256) > 1
        %error "LONG_0040C256"
    %endif
    times 1 - ($ - %%insn_0040c256) db 0
    %%insn_0040c257:
    call 0x409b1d ; 0040C257 E8C1D8FFFF
    %if ($ - %%insn_0040c257) > 5
        %error "LONG_0040C257"
    %endif
    times 5 - ($ - %%insn_0040c257) db 0
    %%insn_0040c25c:
    add esp,0x8 ; 0040C25C 83C408
    %if ($ - %%insn_0040c25c) > 3
        %error "LONG_0040C25C"
    %endif
    times 3 - ($ - %%insn_0040c25c) db 0
    %%insn_0040c25f:
    pop ebp ; 0040C25F 5D
    %if ($ - %%insn_0040c25f) > 1
        %error "LONG_0040C25F"
    %endif
    times 1 - ($ - %%insn_0040c25f) db 0
    %%insn_0040c260:
    ret ; 0040C260 C3
    %if ($ - %%insn_0040c260) > 1
        %error "LONG_0040C260"
    %endif
    times 1 - ($ - %%insn_0040c260) db 0
    %if ($ - %%fragment_start) != 164
        %error "function fragment size drift: 0040C1BD"
    %endif
%endmacro
