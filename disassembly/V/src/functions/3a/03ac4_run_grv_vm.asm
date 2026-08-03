; Linear entry 03AC4 (1000:3ac4)
; Ghidra working symbol: FUN_1000_3ac4
; Verified GRV bytecode interpreter entry.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_run_grv_vm_part_00 0
    %%fragment_start:
run_grv_vm:
    db 0x33, 0xED ; 03AC4 33ED | xor bp,bp | encoding preserved
    %%insn_03ac6:
    call 0x576e ; 03AC6 E8A51C
    %if ($ - %%insn_03ac6) > 3
        %error "LONG_03AC6"
    %endif
    times 3 - ($ - %%insn_03ac6) db 0
    %%insn_03ac9:
    mov ax,0x893 ; 03AC9 B89308
    %if ($ - %%insn_03ac9) > 3
        %error "LONG_03AC9"
    %endif
    times 3 - ($ - %%insn_03ac9) db 0
    %%insn_03acc:
    mov ds,ax ; 03ACC 8ED8
    %if ($ - %%insn_03acc) > 2
        %error "LONG_03ACC"
    %endif
    times 2 - ($ - %%insn_03acc) db 0
    %%insn_03ace:
    mov bx,0x1000 ; 03ACE BB0010
    %if ($ - %%insn_03ace) > 3
        %error "LONG_03ACE"
    %endif
    times 3 - ($ - %%insn_03ace) db 0
    %%insn_03ad1:
    call 0x5ec8 ; 03AD1 E8F423
    %if ($ - %%insn_03ad1) > 3
        %error "LONG_03AD1"
    %endif
    times 3 - ($ - %%insn_03ad1) db 0
    %%insn_03ad4:
    mov [bp-0x2ab2],ax ; 03AD4 89864ED5
    %if ($ - %%insn_03ad4) > 4
        %error "LONG_03AD4"
    %endif
    times 4 - ($ - %%insn_03ad4) db 0
    %%insn_03ad8:
    mov bx,0x1000 ; 03AD8 BB0010
    %if ($ - %%insn_03ad8) > 3
        %error "LONG_03AD8"
    %endif
    times 3 - ($ - %%insn_03ad8) db 0
    %%insn_03adb:
    call 0x5ec8 ; 03ADB E8EA23
    %if ($ - %%insn_03adb) > 3
        %error "LONG_03ADB"
    %endif
    times 3 - ($ - %%insn_03adb) db 0
    %%insn_03ade:
    mov [bp-0x2605],ax ; 03ADE 8986FBD9
    %if ($ - %%insn_03ade) > 4
        %error "LONG_03ADE"
    %endif
    times 4 - ($ - %%insn_03ade) db 0
    %%insn_03ae2:
    call 0x3a5b ; 03AE2 E876FF
    %if ($ - %%insn_03ae2) > 3
        %error "LONG_03AE2"
    %endif
    times 3 - ($ - %%insn_03ae2) db 0
    %%insn_03ae5:
    mov si,0x0 ; 03AE5 BE0000
    %if ($ - %%insn_03ae5) > 3
        %error "LONG_03AE5"
    %endif
    times 3 - ($ - %%insn_03ae5) db 0
    %%insn_03ae8:
    mov ax,[cs:0x5ce0] ; 03AE8 2EA1E05C
    %if ($ - %%insn_03ae8) > 4
        %error "LONG_03AE8"
    %endif
    times 4 - ($ - %%insn_03ae8) db 0
    %%insn_03aec:
    cmp ah,[bp-0x278c] ; 03AEC 3AA674D8
    %if ($ - %%insn_03aec) > 4
        %error "LONG_03AEC"
    %endif
    times 4 - ($ - %%insn_03aec) db 0
    %%insn_03af0:
    jz short 0x3afa ; 03AF0 7408
    %if ($ - %%insn_03af0) > 2
        %error "LONG_03AF0"
    %endif
    times 2 - ($ - %%insn_03af0) db 0
    %%insn_03af2:
    mov [bp-0x278c],ah ; 03AF2 88A674D8
    %if ($ - %%insn_03af2) > 4
        %error "LONG_03AF2"
    %endif
    times 4 - ($ - %%insn_03af2) db 0
    %%insn_03af6:
    inc byte [bp-0x235b] ; 03AF6 FE86A5DC
    %if ($ - %%insn_03af6) > 4
        %error "LONG_03AF6"
    %endif
    times 4 - ($ - %%insn_03af6) db 0
    %%insn_03afa:
    mov ax,[bp-0x2605] ; 03AFA 8B86FBD9
    %if ($ - %%insn_03afa) > 4
        %error "LONG_03AFA"
    %endif
    times 4 - ($ - %%insn_03afa) db 0
    %%insn_03afe:
    mov ds,ax ; 03AFE 8ED8
    %if ($ - %%insn_03afe) > 2
        %error "LONG_03AFE"
    %endif
    times 2 - ($ - %%insn_03afe) db 0
    %%insn_03b00:
    mov al,[si] ; 03B00 8A04
    %if ($ - %%insn_03b00) > 2
        %error "LONG_03B00"
    %endif
    times 2 - ($ - %%insn_03b00) db 0
    %%insn_03b02:
    inc si ; 03B02 46
    %if ($ - %%insn_03b02) > 1
        %error "LONG_03B02"
    %endif
    times 1 - ($ - %%insn_03b02) db 0
    db 0x8A, 0xE0 ; 03B03 8AE0 | mov ah,al | encoding preserved
    %%insn_03b05:
    and al,0x7f ; 03B05 247F
    %if ($ - %%insn_03b05) > 2
        %error "LONG_03B05"
    %endif
    times 2 - ($ - %%insn_03b05) db 0
    %%insn_03b07:
    cmp al,0x17 ; 03B07 3C17
    %if ($ - %%insn_03b07) > 2
        %error "LONG_03B07"
    %endif
    times 2 - ($ - %%insn_03b07) db 0
    %%insn_03b09:
    jnz short 0x3b16 ; 03B09 750B
    %if ($ - %%insn_03b09) > 2
        %error "LONG_03B09"
    %endif
    times 2 - ($ - %%insn_03b09) db 0
    %%insn_03b0b:
    lodsb ; 03B0B AC
    %if ($ - %%insn_03b0b) > 1
        %error "LONG_03B0B"
    %endif
    times 1 - ($ - %%insn_03b0b) db 0
    %%insn_03b0c:
    mov [bp-0x235c],al ; 03B0C 8886A4DC
    %if ($ - %%insn_03b0c) > 4
        %error "LONG_03B0C"
    %endif
    times 4 - ($ - %%insn_03b0c) db 0
    %%insn_03b10:
    jmp 0x3e23 ; 03B10 E91003
    %if ($ - %%insn_03b10) > 3
        %error "LONG_03B10"
    %endif
    times 3 - ($ - %%insn_03b10) db 0
    %if ($ - %%fragment_start) != 79
        %error "SIZE_03AC4"
    %endif
%endmacro

%macro emit_run_grv_vm_part_01 0
    %%fragment_start:
    %%insn_03b16:
    cmp al,0x18 ; 03B16 3C18
    %if ($ - %%insn_03b16) > 2
        %error "LONG_03B16"
    %endif
    times 2 - ($ - %%insn_03b16) db 0
    %%insn_03b18:
    jnz short 0x3b20 ; 03B18 7506
    %if ($ - %%insn_03b18) > 2
        %error "LONG_03B18"
    %endif
    times 2 - ($ - %%insn_03b18) db 0
    %%insn_03b1a:
    call 0x4461 ; 03B1A E84409
    %if ($ - %%insn_03b1a) > 3
        %error "LONG_03B1A"
    %endif
    times 3 - ($ - %%insn_03b1a) db 0
    %%insn_03b1d:
    jmp 0x3e20 ; 03B1D E90003
    %if ($ - %%insn_03b1d) > 3
        %error "LONG_03B1D"
    %endif
    times 3 - ($ - %%insn_03b1d) db 0
    %%insn_03b20:
    cmp al,0xb ; 03B20 3C0B
    %if ($ - %%insn_03b20) > 2
        %error "LONG_03B20"
    %endif
    times 2 - ($ - %%insn_03b20) db 0
    %%insn_03b22:
    jnz short 0x3b2a ; 03B22 7506
    %if ($ - %%insn_03b22) > 2
        %error "LONG_03B22"
    %endif
    times 2 - ($ - %%insn_03b22) db 0
    %%insn_03b24:
    call 0x447b ; 03B24 E85409
    %if ($ - %%insn_03b24) > 3
        %error "LONG_03B24"
    %endif
    times 3 - ($ - %%insn_03b24) db 0
    %%insn_03b27:
    jmp 0x3e20 ; 03B27 E9F602
    %if ($ - %%insn_03b27) > 3
        %error "LONG_03B27"
    %endif
    times 3 - ($ - %%insn_03b27) db 0
    %%insn_03b2a:
    cmp al,0x15 ; 03B2A 3C15
    %if ($ - %%insn_03b2a) > 2
        %error "LONG_03B2A"
    %endif
    times 2 - ($ - %%insn_03b2a) db 0
    %%insn_03b2c:
    jnz short 0x3b34 ; 03B2C 7506
    %if ($ - %%insn_03b2c) > 2
        %error "LONG_03B2C"
    %endif
    times 2 - ($ - %%insn_03b2c) db 0
    %%insn_03b2e:
    call 0x4001 ; 03B2E E8D004
    %if ($ - %%insn_03b2e) > 3
        %error "LONG_03B2E"
    %endif
    times 3 - ($ - %%insn_03b2e) db 0
    %%insn_03b31:
    jmp 0x3e20 ; 03B31 E9EC02
    %if ($ - %%insn_03b31) > 3
        %error "LONG_03B31"
    %endif
    times 3 - ($ - %%insn_03b31) db 0
    %%insn_03b34:
    cmp al,0x2 ; 03B34 3C02
    %if ($ - %%insn_03b34) > 2
        %error "LONG_03B34"
    %endif
    times 2 - ($ - %%insn_03b34) db 0
    %%insn_03b36:
    jnz short 0x3b3e ; 03B36 7506
    %if ($ - %%insn_03b36) > 2
        %error "LONG_03B36"
    %endif
    times 2 - ($ - %%insn_03b36) db 0
    %%insn_03b38:
    call 0x443a ; 03B38 E8FF08
    %if ($ - %%insn_03b38) > 3
        %error "LONG_03B38"
    %endif
    times 3 - ($ - %%insn_03b38) db 0
    %%insn_03b3b:
    jmp 0x3e20 ; 03B3B E9E202
    %if ($ - %%insn_03b3b) > 3
        %error "LONG_03B3B"
    %endif
    times 3 - ($ - %%insn_03b3b) db 0
    %%insn_03b3e:
    cmp al,0xa ; 03B3E 3C0A
    %if ($ - %%insn_03b3e) > 2
        %error "LONG_03B3E"
    %endif
    times 2 - ($ - %%insn_03b3e) db 0
    %%insn_03b40:
    jnz short 0x3b4b ; 03B40 7509
    %if ($ - %%insn_03b40) > 2
        %error "LONG_03B40"
    %endif
    times 2 - ($ - %%insn_03b40) db 0
    %%insn_03b42:
    mov word [bp-0x30e0],0x0 ; 03B42 C78620CF0000
    %if ($ - %%insn_03b42) > 6
        %error "LONG_03B42"
    %endif
    times 6 - ($ - %%insn_03b42) db 0
    %%insn_03b48:
    jmp 0x3e20 ; 03B48 E9D502
    %if ($ - %%insn_03b48) > 3
        %error "LONG_03B48"
    %endif
    times 3 - ($ - %%insn_03b48) db 0
    %%insn_03b4b:
    cmp al,0x8 ; 03B4B 3C08
    %if ($ - %%insn_03b4b) > 2
        %error "LONG_03B4B"
    %endif
    times 2 - ($ - %%insn_03b4b) db 0
    %%insn_03b4d:
    jnz short 0x3b55 ; 03B4D 7506
    %if ($ - %%insn_03b4d) > 2
        %error "LONG_03B4D"
    %endif
    times 2 - ($ - %%insn_03b4d) db 0
    %%insn_03b4f:
    call 0x444a ; 03B4F E8F808
    %if ($ - %%insn_03b4f) > 3
        %error "LONG_03B4F"
    %endif
    times 3 - ($ - %%insn_03b4f) db 0
    %%insn_03b52:
    jmp 0x3e20 ; 03B52 E9CB02
    %if ($ - %%insn_03b52) > 3
        %error "LONG_03B52"
    %endif
    times 3 - ($ - %%insn_03b52) db 0
    %%insn_03b55:
    cmp al,0x19 ; 03B55 3C19
    %if ($ - %%insn_03b55) > 2
        %error "LONG_03B55"
    %endif
    times 2 - ($ - %%insn_03b55) db 0
    %%insn_03b57:
    jnz short 0x3b5f ; 03B57 7506
    %if ($ - %%insn_03b57) > 2
        %error "LONG_03B57"
    %endif
    times 2 - ($ - %%insn_03b57) db 0
    %%insn_03b59:
    call 0x4451 ; 03B59 E8F508
    %if ($ - %%insn_03b59) > 3
        %error "LONG_03B59"
    %endif
    times 3 - ($ - %%insn_03b59) db 0
    %%insn_03b5c:
    jmp 0x3e20 ; 03B5C E9C102
    %if ($ - %%insn_03b5c) > 3
        %error "LONG_03B5C"
    %endif
    times 3 - ($ - %%insn_03b5c) db 0
    %%insn_03b5f:
    cmp al,0x3 ; 03B5F 3C03
    %if ($ - %%insn_03b5f) > 2
        %error "LONG_03B5F"
    %endif
    times 2 - ($ - %%insn_03b5f) db 0
    %%insn_03b61:
    jnz short 0x3b6c ; 03B61 7509
    %if ($ - %%insn_03b61) > 2
        %error "LONG_03B61"
    %endif
    times 2 - ($ - %%insn_03b61) db 0
    %%insn_03b63:
    mov word [bp-0x30b4],0x1 ; 03B63 C7864CCF0100
    %if ($ - %%insn_03b63) > 6
        %error "LONG_03B63"
    %endif
    times 6 - ($ - %%insn_03b63) db 0
    %%insn_03b69:
    jmp 0x3e20 ; 03B69 E9B402
    %if ($ - %%insn_03b69) > 3
        %error "LONG_03B69"
    %endif
    times 3 - ($ - %%insn_03b69) db 0
    %%insn_03b6c:
    cmp al,0x4 ; 03B6C 3C04
    %if ($ - %%insn_03b6c) > 2
        %error "LONG_03B6C"
    %endif
    times 2 - ($ - %%insn_03b6c) db 0
    %%insn_03b6e:
    jnz short 0x3b76 ; 03B6E 7506
    %if ($ - %%insn_03b6e) > 2
        %error "LONG_03B6E"
    %endif
    times 2 - ($ - %%insn_03b6e) db 0
    %%insn_03b70:
    call 0xfc6 ; 03B70 E853D4
    %if ($ - %%insn_03b70) > 3
        %error "LONG_03B70"
    %endif
    times 3 - ($ - %%insn_03b70) db 0
    %%insn_03b73:
    jmp 0x3e20 ; 03B73 E9AA02
    %if ($ - %%insn_03b73) > 3
        %error "LONG_03B73"
    %endif
    times 3 - ($ - %%insn_03b73) db 0
    %%insn_03b76:
    cmp al,0x6 ; 03B76 3C06
    %if ($ - %%insn_03b76) > 2
        %error "LONG_03B76"
    %endif
    times 2 - ($ - %%insn_03b76) db 0
    %%insn_03b78:
    jnz short 0x3b83 ; 03B78 7509
    %if ($ - %%insn_03b78) > 2
        %error "LONG_03B78"
    %endif
    times 2 - ($ - %%insn_03b78) db 0
    %%insn_03b7a:
    mov word [bp-0x30da],0x1 ; 03B7A C78626CF0100
    %if ($ - %%insn_03b7a) > 6
        %error "LONG_03B7A"
    %endif
    times 6 - ($ - %%insn_03b7a) db 0
    %%insn_03b80:
    jmp 0x3e20 ; 03B80 E99D02
    %if ($ - %%insn_03b80) > 3
        %error "LONG_03B80"
    %endif
    times 3 - ($ - %%insn_03b80) db 0
    %%insn_03b83:
    cmp al,0x5 ; 03B83 3C05
    %if ($ - %%insn_03b83) > 2
        %error "LONG_03B83"
    %endif
    times 2 - ($ - %%insn_03b83) db 0
    %%insn_03b85:
    jnz short 0x3b90 ; 03B85 7509
    %if ($ - %%insn_03b85) > 2
        %error "LONG_03B85"
    %endif
    times 2 - ($ - %%insn_03b85) db 0
    %%insn_03b87:
    mov word [bp-0x30ce],0x1 ; 03B87 C78632CF0100
    %if ($ - %%insn_03b87) > 6
        %error "LONG_03B87"
    %endif
    times 6 - ($ - %%insn_03b87) db 0
    %%insn_03b8d:
    jmp 0x3e20 ; 03B8D E99002
    %if ($ - %%insn_03b8d) > 3
        %error "LONG_03B8D"
    %endif
    times 3 - ($ - %%insn_03b8d) db 0
    %%insn_03b90:
    cmp al,0x1e ; 03B90 3C1E
    %if ($ - %%insn_03b90) > 2
        %error "LONG_03B90"
    %endif
    times 2 - ($ - %%insn_03b90) db 0
    %%insn_03b92:
    jnz short 0x3b9a ; 03B92 7506
    %if ($ - %%insn_03b92) > 2
        %error "LONG_03B92"
    %endif
    times 2 - ($ - %%insn_03b92) db 0
    %%insn_03b94:
    call 0x4004 ; 03B94 E86D04
    %if ($ - %%insn_03b94) > 3
        %error "LONG_03B94"
    %endif
    times 3 - ($ - %%insn_03b94) db 0
    %%insn_03b97:
    jmp 0x3e20 ; 03B97 E98602
    %if ($ - %%insn_03b97) > 3
        %error "LONG_03B97"
    %endif
    times 3 - ($ - %%insn_03b97) db 0
    %%insn_03b9a:
    cmp al,0x16 ; 03B9A 3C16
    %if ($ - %%insn_03b9a) > 2
        %error "LONG_03B9A"
    %endif
    times 2 - ($ - %%insn_03b9a) db 0
    %%insn_03b9c:
    jnz short 0x3ba4 ; 03B9C 7506
    %if ($ - %%insn_03b9c) > 2
        %error "LONG_03B9C"
    %endif
    times 2 - ($ - %%insn_03b9c) db 0
    %%insn_03b9e:
    call 0x4087 ; 03B9E E8E604
    %if ($ - %%insn_03b9e) > 3
        %error "LONG_03B9E"
    %endif
    times 3 - ($ - %%insn_03b9e) db 0
    %%insn_03ba1:
    jmp 0x3e20 ; 03BA1 E97C02
    %if ($ - %%insn_03ba1) > 3
        %error "LONG_03BA1"
    %endif
    times 3 - ($ - %%insn_03ba1) db 0
    %%insn_03ba4:
    cmp al,0x33 ; 03BA4 3C33
    %if ($ - %%insn_03ba4) > 2
        %error "LONG_03BA4"
    %endif
    times 2 - ($ - %%insn_03ba4) db 0
    %%insn_03ba6:
    jnz short 0x3bae ; 03BA6 7506
    %if ($ - %%insn_03ba6) > 2
        %error "LONG_03BA6"
    %endif
    times 2 - ($ - %%insn_03ba6) db 0
    %%insn_03ba8:
    call 0x4292 ; 03BA8 E8E706
    %if ($ - %%insn_03ba8) > 3
        %error "LONG_03BA8"
    %endif
    times 3 - ($ - %%insn_03ba8) db 0
    %%insn_03bab:
    jmp 0x3e20 ; 03BAB E97202
    %if ($ - %%insn_03bab) > 3
        %error "LONG_03BAB"
    %endif
    times 3 - ($ - %%insn_03bab) db 0
    %%insn_03bae:
    cmp al,0x14 ; 03BAE 3C14
    %if ($ - %%insn_03bae) > 2
        %error "LONG_03BAE"
    %endif
    times 2 - ($ - %%insn_03bae) db 0
    %%insn_03bb0:
    jnz short 0x3bb8 ; 03BB0 7506
    %if ($ - %%insn_03bb0) > 2
        %error "LONG_03BB0"
    %endif
    times 2 - ($ - %%insn_03bb0) db 0
    %%insn_03bb2:
    call 0x41a4 ; 03BB2 E8EF05
    %if ($ - %%insn_03bb2) > 3
        %error "LONG_03BB2"
    %endif
    times 3 - ($ - %%insn_03bb2) db 0
    %%insn_03bb5:
    jmp 0x3e20 ; 03BB5 E96802
    %if ($ - %%insn_03bb5) > 3
        %error "LONG_03BB5"
    %endif
    times 3 - ($ - %%insn_03bb5) db 0
    %%insn_03bb8:
    cmp al,0x3e ; 03BB8 3C3E
    %if ($ - %%insn_03bb8) > 2
        %error "LONG_03BB8"
    %endif
    times 2 - ($ - %%insn_03bb8) db 0
    %%insn_03bba:
    jnz short 0x3bc2 ; 03BBA 7506
    %if ($ - %%insn_03bba) > 2
        %error "LONG_03BBA"
    %endif
    times 2 - ($ - %%insn_03bba) db 0
    %%insn_03bbc:
    call 0x41cb ; 03BBC E80C06
    %if ($ - %%insn_03bbc) > 3
        %error "LONG_03BBC"
    %endif
    times 3 - ($ - %%insn_03bbc) db 0
    %%insn_03bbf:
    jmp 0x3e20 ; 03BBF E95E02
    %if ($ - %%insn_03bbf) > 3
        %error "LONG_03BBF"
    %endif
    times 3 - ($ - %%insn_03bbf) db 0
    %%insn_03bc2:
    cmp al,0x1b ; 03BC2 3C1B
    %if ($ - %%insn_03bc2) > 2
        %error "LONG_03BC2"
    %endif
    times 2 - ($ - %%insn_03bc2) db 0
    %%insn_03bc4:
    jnz short 0x3bcc ; 03BC4 7506
    %if ($ - %%insn_03bc4) > 2
        %error "LONG_03BC4"
    %endif
    times 2 - ($ - %%insn_03bc4) db 0
    %%insn_03bc6:
    call 0x41df ; 03BC6 E81606
    %if ($ - %%insn_03bc6) > 3
        %error "LONG_03BC6"
    %endif
    times 3 - ($ - %%insn_03bc6) db 0
    %%insn_03bc9:
    jmp 0x3e20 ; 03BC9 E95402
    %if ($ - %%insn_03bc9) > 3
        %error "LONG_03BC9"
    %endif
    times 3 - ($ - %%insn_03bc9) db 0
    %%insn_03bcc:
    cmp al,0x1a ; 03BCC 3C1A
    %if ($ - %%insn_03bcc) > 2
        %error "LONG_03BCC"
    %endif
    times 2 - ($ - %%insn_03bcc) db 0
    %%insn_03bce:
    jnz short 0x3bd6 ; 03BCE 7506
    %if ($ - %%insn_03bce) > 2
        %error "LONG_03BCE"
    %endif
    times 2 - ($ - %%insn_03bce) db 0
    %%insn_03bd0:
    call 0x41f8 ; 03BD0 E82506
    %if ($ - %%insn_03bd0) > 3
        %error "LONG_03BD0"
    %endif
    times 3 - ($ - %%insn_03bd0) db 0
    %%insn_03bd3:
    jmp 0x3e20 ; 03BD3 E94A02
    %if ($ - %%insn_03bd3) > 3
        %error "LONG_03BD3"
    %endif
    times 3 - ($ - %%insn_03bd3) db 0
    %%insn_03bd6:
    cmp al,0x32 ; 03BD6 3C32
    %if ($ - %%insn_03bd6) > 2
        %error "LONG_03BD6"
    %endif
    times 2 - ($ - %%insn_03bd6) db 0
    %%insn_03bd8:
    jnz short 0x3be0 ; 03BD8 7506
    %if ($ - %%insn_03bd8) > 2
        %error "LONG_03BD8"
    %endif
    times 2 - ($ - %%insn_03bd8) db 0
    %%insn_03bda:
    call 0x426a ; 03BDA E88D06
    %if ($ - %%insn_03bda) > 3
        %error "LONG_03BDA"
    %endif
    times 3 - ($ - %%insn_03bda) db 0
    %%insn_03bdd:
    jmp 0x3e20 ; 03BDD E94002
    %if ($ - %%insn_03bdd) > 3
        %error "LONG_03BDD"
    %endif
    times 3 - ($ - %%insn_03bdd) db 0
    %%insn_03be0:
    cmp al,0x1f ; 03BE0 3C1F
    %if ($ - %%insn_03be0) > 2
        %error "LONG_03BE0"
    %endif
    times 2 - ($ - %%insn_03be0) db 0
    %%insn_03be2:
    jnz short 0x3bea ; 03BE2 7506
    %if ($ - %%insn_03be2) > 2
        %error "LONG_03BE2"
    %endif
    times 2 - ($ - %%insn_03be2) db 0
    %%insn_03be4:
    call 0x40f7 ; 03BE4 E81005
    %if ($ - %%insn_03be4) > 3
        %error "LONG_03BE4"
    %endif
    times 3 - ($ - %%insn_03be4) db 0
    %%insn_03be7:
    jmp 0x3e20 ; 03BE7 E93602
    %if ($ - %%insn_03be7) > 3
        %error "LONG_03BE7"
    %endif
    times 3 - ($ - %%insn_03be7) db 0
    %%insn_03bea:
    cmp al,0x20 ; 03BEA 3C20
    %if ($ - %%insn_03bea) > 2
        %error "LONG_03BEA"
    %endif
    times 2 - ($ - %%insn_03bea) db 0
    %%insn_03bec:
    jnz short 0x3bf4 ; 03BEC 7506
    %if ($ - %%insn_03bec) > 2
        %error "LONG_03BEC"
    %endif
    times 2 - ($ - %%insn_03bec) db 0
    %%insn_03bee:
    call 0x4103 ; 03BEE E81205
    %if ($ - %%insn_03bee) > 3
        %error "LONG_03BEE"
    %endif
    times 3 - ($ - %%insn_03bee) db 0
    %%insn_03bf1:
    jmp 0x3e20 ; 03BF1 E92C02
    %if ($ - %%insn_03bf1) > 3
        %error "LONG_03BF1"
    %endif
    times 3 - ($ - %%insn_03bf1) db 0
    %%insn_03bf4:
    cmp al,0x21 ; 03BF4 3C21
    %if ($ - %%insn_03bf4) > 2
        %error "LONG_03BF4"
    %endif
    times 2 - ($ - %%insn_03bf4) db 0
    %%insn_03bf6:
    jnz short 0x3bfe ; 03BF6 7506
    %if ($ - %%insn_03bf6) > 2
        %error "LONG_03BF6"
    %endif
    times 2 - ($ - %%insn_03bf6) db 0
    %%insn_03bf8:
    call 0x42b1 ; 03BF8 E8B606
    %if ($ - %%insn_03bf8) > 3
        %error "LONG_03BF8"
    %endif
    times 3 - ($ - %%insn_03bf8) db 0
    %%insn_03bfb:
    jmp 0x3e20 ; 03BFB E92202
    %if ($ - %%insn_03bfb) > 3
        %error "LONG_03BFB"
    %endif
    times 3 - ($ - %%insn_03bfb) db 0
    %%insn_03bfe:
    cmp al,0x1c ; 03BFE 3C1C
    %if ($ - %%insn_03bfe) > 2
        %error "LONG_03BFE"
    %endif
    times 2 - ($ - %%insn_03bfe) db 0
    %%insn_03c00:
    jnz short 0x3c08 ; 03C00 7506
    %if ($ - %%insn_03c00) > 2
        %error "LONG_03C00"
    %endif
    times 2 - ($ - %%insn_03c00) db 0
    %%insn_03c02:
    call 0x432b ; 03C02 E82607
    %if ($ - %%insn_03c02) > 3
        %error "LONG_03C02"
    %endif
    times 3 - ($ - %%insn_03c02) db 0
    %%insn_03c05:
    jmp 0x3e20 ; 03C05 E91802
    %if ($ - %%insn_03c05) > 3
        %error "LONG_03C05"
    %endif
    times 3 - ($ - %%insn_03c05) db 0
    %%insn_03c08:
    cmp al,0x1d ; 03C08 3C1D
    %if ($ - %%insn_03c08) > 2
        %error "LONG_03C08"
    %endif
    times 2 - ($ - %%insn_03c08) db 0
    %%insn_03c0a:
    jnz short 0x3c12 ; 03C0A 7506
    %if ($ - %%insn_03c0a) > 2
        %error "LONG_03C0A"
    %endif
    times 2 - ($ - %%insn_03c0a) db 0
    %%insn_03c0c:
    call 0x409b ; 03C0C E88C04
    %if ($ - %%insn_03c0c) > 3
        %error "LONG_03C0C"
    %endif
    times 3 - ($ - %%insn_03c0c) db 0
    %%insn_03c0f:
    jmp 0x3e20 ; 03C0F E90E02
    %if ($ - %%insn_03c0f) > 3
        %error "LONG_03C0F"
    %endif
    times 3 - ($ - %%insn_03c0f) db 0
    %%insn_03c12:
    cmp al,0x39 ; 03C12 3C39
    %if ($ - %%insn_03c12) > 2
        %error "LONG_03C12"
    %endif
    times 2 - ($ - %%insn_03c12) db 0
    %%insn_03c14:
    jnz short 0x3c1c ; 03C14 7506
    %if ($ - %%insn_03c14) > 2
        %error "LONG_03C14"
    %endif
    times 2 - ($ - %%insn_03c14) db 0
    %%insn_03c16:
    call 0x410f ; 03C16 E8F604
    %if ($ - %%insn_03c16) > 3
        %error "LONG_03C16"
    %endif
    times 3 - ($ - %%insn_03c16) db 0
    %%insn_03c19:
    jmp 0x3e20 ; 03C19 E90402
    %if ($ - %%insn_03c19) > 3
        %error "LONG_03C19"
    %endif
    times 3 - ($ - %%insn_03c19) db 0
    %%insn_03c1c:
    cmp al,0x7 ; 03C1C 3C07
    %if ($ - %%insn_03c1c) > 2
        %error "LONG_03C1C"
    %endif
    times 2 - ($ - %%insn_03c1c) db 0
    %%insn_03c1e:
    jnz short 0x3c28 ; 03C1E 7508
    %if ($ - %%insn_03c1e) > 2
        %error "LONG_03C1E"
    %endif
    times 2 - ($ - %%insn_03c1e) db 0
    %%insn_03c20:
    mov byte [bp-0x2606],0x2 ; 03C20 C686FAD902
    %if ($ - %%insn_03c20) > 5
        %error "LONG_03C20"
    %endif
    times 5 - ($ - %%insn_03c20) db 0
    %%insn_03c25:
    jmp 0x3e20 ; 03C25 E9F801
    %if ($ - %%insn_03c25) > 3
        %error "LONG_03C25"
    %endif
    times 3 - ($ - %%insn_03c25) db 0
    %%insn_03c28:
    cmp al,0x35 ; 03C28 3C35
    %if ($ - %%insn_03c28) > 2
        %error "LONG_03C28"
    %endif
    times 2 - ($ - %%insn_03c28) db 0
    %%insn_03c2a:
    jnz short 0x3c34 ; 03C2A 7508
    %if ($ - %%insn_03c2a) > 2
        %error "LONG_03C2A"
    %endif
    times 2 - ($ - %%insn_03c2a) db 0
    %%insn_03c2c:
    mov byte [bp-0x2606],0x0 ; 03C2C C686FAD900
    %if ($ - %%insn_03c2c) > 5
        %error "LONG_03C2C"
    %endif
    times 5 - ($ - %%insn_03c2c) db 0
    %%insn_03c31:
    jmp 0x3e20 ; 03C31 E9EC01
    %if ($ - %%insn_03c31) > 3
        %error "LONG_03C31"
    %endif
    times 3 - ($ - %%insn_03c31) db 0
    %%insn_03c34:
    cmp al,0x22 ; 03C34 3C22
    %if ($ - %%insn_03c34) > 2
        %error "LONG_03C34"
    %endif
    times 2 - ($ - %%insn_03c34) db 0
    %%insn_03c36:
    jnz short 0x3c3e ; 03C36 7506
    %if ($ - %%insn_03c36) > 2
        %error "LONG_03C36"
    %endif
    times 2 - ($ - %%insn_03c36) db 0
    %%insn_03c38:
    call 0x2591 ; 03C38 E856E9
    %if ($ - %%insn_03c38) > 3
        %error "LONG_03C38"
    %endif
    times 3 - ($ - %%insn_03c38) db 0
    %%insn_03c3b:
    jmp 0x3e20 ; 03C3B E9E201
    %if ($ - %%insn_03c3b) > 3
        %error "LONG_03C3B"
    %endif
    times 3 - ($ - %%insn_03c3b) db 0
    %%insn_03c3e:
    cmp al,0x23 ; 03C3E 3C23
    %if ($ - %%insn_03c3e) > 2
        %error "LONG_03C3E"
    %endif
    times 2 - ($ - %%insn_03c3e) db 0
    %%insn_03c40:
    jnz short 0x3c48 ; 03C40 7506
    %if ($ - %%insn_03c40) > 2
        %error "LONG_03C40"
    %endif
    times 2 - ($ - %%insn_03c40) db 0
    %%insn_03c42:
    call 0x42cb ; 03C42 E88606
    %if ($ - %%insn_03c42) > 3
        %error "LONG_03C42"
    %endif
    times 3 - ($ - %%insn_03c42) db 0
    %%insn_03c45:
    jmp 0x3e20 ; 03C45 E9D801
    %if ($ - %%insn_03c45) > 3
        %error "LONG_03C45"
    %endif
    times 3 - ($ - %%insn_03c45) db 0
    %%insn_03c48:
    cmp al,0x34 ; 03C48 3C34
    %if ($ - %%insn_03c48) > 2
        %error "LONG_03C48"
    %endif
    times 2 - ($ - %%insn_03c48) db 0
    %%insn_03c4a:
    jnz short 0x3c52 ; 03C4A 7506
    %if ($ - %%insn_03c4a) > 2
        %error "LONG_03C4A"
    %endif
    times 2 - ($ - %%insn_03c4a) db 0
    %%insn_03c4c:
    call 0x421e ; 03C4C E8CF05
    %if ($ - %%insn_03c4c) > 3
        %error "LONG_03C4C"
    %endif
    times 3 - ($ - %%insn_03c4c) db 0
    %%insn_03c4f:
    jmp 0x3e20 ; 03C4F E9CE01
    %if ($ - %%insn_03c4f) > 3
        %error "LONG_03C4F"
    %endif
    times 3 - ($ - %%insn_03c4f) db 0
    %%insn_03c52:
    cmp al,0x36 ; 03C52 3C36
    %if ($ - %%insn_03c52) > 2
        %error "LONG_03C52"
    %endif
    times 2 - ($ - %%insn_03c52) db 0
    %%insn_03c54:
    jnz short 0x3c5c ; 03C54 7506
    %if ($ - %%insn_03c54) > 2
        %error "LONG_03C54"
    %endif
    times 2 - ($ - %%insn_03c54) db 0
    %%insn_03c56:
    call 0x4244 ; 03C56 E8EB05
    %if ($ - %%insn_03c56) > 3
        %error "LONG_03C56"
    %endif
    times 3 - ($ - %%insn_03c56) db 0
    %%insn_03c59:
    jmp 0x3e20 ; 03C59 E9C401
    %if ($ - %%insn_03c59) > 3
        %error "LONG_03C59"
    %endif
    times 3 - ($ - %%insn_03c59) db 0
    %%insn_03c5c:
    cmp al,0x1 ; 03C5C 3C01
    %if ($ - %%insn_03c5c) > 2
        %error "LONG_03C5C"
    %endif
    times 2 - ($ - %%insn_03c5c) db 0
    %%insn_03c5e:
    jnz short 0x3c66 ; 03C5E 7506
    %if ($ - %%insn_03c5e) > 2
        %error "LONG_03C5E"
    %endif
    times 2 - ($ - %%insn_03c5e) db 0
    %%insn_03c60:
    call 0x43c9 ; 03C60 E86607
    %if ($ - %%insn_03c60) > 3
        %error "LONG_03C60"
    %endif
    times 3 - ($ - %%insn_03c60) db 0
    %%insn_03c63:
    jmp 0x3e20 ; 03C63 E9BA01
    %if ($ - %%insn_03c63) > 3
        %error "LONG_03C63"
    %endif
    times 3 - ($ - %%insn_03c63) db 0
    %%insn_03c66:
    cmp al,0x9 ; 03C66 3C09
    %if ($ - %%insn_03c66) > 2
        %error "LONG_03C66"
    %endif
    times 2 - ($ - %%insn_03c66) db 0
    %%insn_03c68:
    jnz short 0x3c70 ; 03C68 7506
    %if ($ - %%insn_03c68) > 2
        %error "LONG_03C68"
    %endif
    times 2 - ($ - %%insn_03c68) db 0
    %%insn_03c6a:
    call 0x4406 ; 03C6A E89907
    %if ($ - %%insn_03c6a) > 3
        %error "LONG_03C6A"
    %endif
    times 3 - ($ - %%insn_03c6a) db 0
    %%insn_03c6d:
    jmp 0x3e20 ; 03C6D E9B001
    %if ($ - %%insn_03c6d) > 3
        %error "LONG_03C6D"
    %endif
    times 3 - ($ - %%insn_03c6d) db 0
    %%insn_03c70:
    cmp al,0x26 ; 03C70 3C26
    %if ($ - %%insn_03c70) > 2
        %error "LONG_03C70"
    %endif
    times 2 - ($ - %%insn_03c70) db 0
    %%insn_03c72:
    jnz short 0x3c7a ; 03C72 7506
    %if ($ - %%insn_03c72) > 2
        %error "LONG_03C72"
    %endif
    times 2 - ($ - %%insn_03c72) db 0
    %%insn_03c74:
    call 0x43d2 ; 03C74 E85B07
    %if ($ - %%insn_03c74) > 3
        %error "LONG_03C74"
    %endif
    times 3 - ($ - %%insn_03c74) db 0
    %%insn_03c77:
    jmp 0x3e20 ; 03C77 E9A601
    %if ($ - %%insn_03c77) > 3
        %error "LONG_03C77"
    %endif
    times 3 - ($ - %%insn_03c77) db 0
    %%insn_03c7a:
    cmp al,0x24 ; 03C7A 3C24
    %if ($ - %%insn_03c7a) > 2
        %error "LONG_03C7A"
    %endif
    times 2 - ($ - %%insn_03c7a) db 0
    %%insn_03c7c:
    jnz short 0x3c84 ; 03C7C 7506
    %if ($ - %%insn_03c7c) > 2
        %error "LONG_03C7C"
    %endif
    times 2 - ($ - %%insn_03c7c) db 0
    %%insn_03c7e:
    call 0x40b2 ; 03C7E E83104
    %if ($ - %%insn_03c7e) > 3
        %error "LONG_03C7E"
    %endif
    times 3 - ($ - %%insn_03c7e) db 0
    %%insn_03c81:
    jmp 0x3e20 ; 03C81 E99C01
    %if ($ - %%insn_03c81) > 3
        %error "LONG_03C81"
    %endif
    times 3 - ($ - %%insn_03c81) db 0
    %%insn_03c84:
    cmp al,0x25 ; 03C84 3C25
    %if ($ - %%insn_03c84) > 2
        %error "LONG_03C84"
    %endif
    times 2 - ($ - %%insn_03c84) db 0
    %%insn_03c86:
    jnz short 0x3c8e ; 03C86 7506
    %if ($ - %%insn_03c86) > 2
        %error "LONG_03C86"
    %endif
    times 2 - ($ - %%insn_03c86) db 0
    %%insn_03c88:
    call 0x40c7 ; 03C88 E83C04
    %if ($ - %%insn_03c88) > 3
        %error "LONG_03C88"
    %endif
    times 3 - ($ - %%insn_03c88) db 0
    %%insn_03c8b:
    jmp 0x3e20 ; 03C8B E99201
    %if ($ - %%insn_03c8b) > 3
        %error "LONG_03C8B"
    %endif
    times 3 - ($ - %%insn_03c8b) db 0
    %%insn_03c8e:
    cmp al,0x41 ; 03C8E 3C41
    %if ($ - %%insn_03c8e) > 2
        %error "LONG_03C8E"
    %endif
    times 2 - ($ - %%insn_03c8e) db 0
    %%insn_03c90:
    jnz short 0x3c98 ; 03C90 7506
    %if ($ - %%insn_03c90) > 2
        %error "LONG_03C90"
    %endif
    times 2 - ($ - %%insn_03c90) db 0
    %%insn_03c92:
    call 0x40df ; 03C92 E84A04
    %if ($ - %%insn_03c92) > 3
        %error "LONG_03C92"
    %endif
    times 3 - ($ - %%insn_03c92) db 0
    %%insn_03c95:
    jmp 0x3e20 ; 03C95 E98801
    %if ($ - %%insn_03c95) > 3
        %error "LONG_03C95"
    %endif
    times 3 - ($ - %%insn_03c95) db 0
    %%insn_03c98:
    cmp al,0x28 ; 03C98 3C28
    %if ($ - %%insn_03c98) > 2
        %error "LONG_03C98"
    %endif
    times 2 - ($ - %%insn_03c98) db 0
    %%insn_03c9a:
    jnz short 0x3ca4 ; 03C9A 7508
    %if ($ - %%insn_03c9a) > 2
        %error "LONG_03C9A"
    %endif
    times 2 - ($ - %%insn_03c9a) db 0
    %%insn_03c9c:
    lodsw ; 03C9C AD
    %if ($ - %%insn_03c9c) > 1
        %error "LONG_03C9C"
    %endif
    times 1 - ($ - %%insn_03c9c) db 0
    %%insn_03c9d:
    mov [bp-0x27b3],ax ; 03C9D 89864DD8
    %if ($ - %%insn_03c9d) > 4
        %error "LONG_03C9D"
    %endif
    times 4 - ($ - %%insn_03c9d) db 0
    %%insn_03ca1:
    jmp 0x3e20 ; 03CA1 E97C01
    %if ($ - %%insn_03ca1) > 3
        %error "LONG_03CA1"
    %endif
    times 3 - ($ - %%insn_03ca1) db 0
    %%insn_03ca4:
    cmp al,0x27 ; 03CA4 3C27
    %if ($ - %%insn_03ca4) > 2
        %error "LONG_03CA4"
    %endif
    times 2 - ($ - %%insn_03ca4) db 0
    %%insn_03ca6:
    jnz short 0x3cae ; 03CA6 7506
    %if ($ - %%insn_03ca6) > 2
        %error "LONG_03CA6"
    %endif
    times 2 - ($ - %%insn_03ca6) db 0
    %%insn_03ca8:
    call 0x4375 ; 03CA8 E8CA06
    %if ($ - %%insn_03ca8) > 3
        %error "LONG_03CA8"
    %endif
    times 3 - ($ - %%insn_03ca8) db 0
    %%insn_03cab:
    jmp 0x3e20 ; 03CAB E97201
    %if ($ - %%insn_03cab) > 3
        %error "LONG_03CAB"
    %endif
    times 3 - ($ - %%insn_03cab) db 0
    %%insn_03cae:
    cmp al,0x29 ; 03CAE 3C29
    %if ($ - %%insn_03cae) > 2
        %error "LONG_03CAE"
    %endif
    times 2 - ($ - %%insn_03cae) db 0
    %%insn_03cb0:
    jnz short 0x3cb8 ; 03CB0 7506
    %if ($ - %%insn_03cb0) > 2
        %error "LONG_03CB0"
    %endif
    times 2 - ($ - %%insn_03cb0) db 0
    %%insn_03cb2:
    call 0x5a37 ; 03CB2 E8821D
    %if ($ - %%insn_03cb2) > 3
        %error "LONG_03CB2"
    %endif
    times 3 - ($ - %%insn_03cb2) db 0
    %%insn_03cb5:
    jmp 0x3e20 ; 03CB5 E96801
    %if ($ - %%insn_03cb5) > 3
        %error "LONG_03CB5"
    %endif
    times 3 - ($ - %%insn_03cb5) db 0
    %%insn_03cb8:
    cmp al,0x2a ; 03CB8 3C2A
    %if ($ - %%insn_03cb8) > 2
        %error "LONG_03CB8"
    %endif
    times 2 - ($ - %%insn_03cb8) db 0
    %%insn_03cba:
    jnz short 0x3cc2 ; 03CBA 7506
    %if ($ - %%insn_03cba) > 2
        %error "LONG_03CBA"
    %endif
    times 2 - ($ - %%insn_03cba) db 0
    %%insn_03cbc:
    jmp 0x3e3f ; 03CBC E98001
    %if ($ - %%insn_03cbc) > 3
        %error "LONG_03CBC"
    %endif
    times 3 - ($ - %%insn_03cbc) db 0
    %if ($ - %%fragment_start) != 425
        %error "SIZE_03B16"
    %endif
%endmacro

%macro emit_run_grv_vm_part_02 0
    %%fragment_start:
    %%insn_03cc2:
    cmp al,0x2c ; 03CC2 3C2C
    %if ($ - %%insn_03cc2) > 2
        %error "LONG_03CC2"
    %endif
    times 2 - ($ - %%insn_03cc2) db 0
    %%insn_03cc4:
    jnz short 0x3cd3 ; 03CC4 750D
    %if ($ - %%insn_03cc4) > 2
        %error "LONG_03CC4"
    %endif
    times 2 - ($ - %%insn_03cc4) db 0
    %%insn_03cc6:
    lodsw ; 03CC6 AD
    %if ($ - %%insn_03cc6) > 1
        %error "LONG_03CC6"
    %endif
    times 1 - ($ - %%insn_03cc6) db 0
    %%insn_03cc7:
    mov [bp-0x1f54],ax ; 03CC7 8986ACE0
    %if ($ - %%insn_03cc7) > 4
        %error "LONG_03CC7"
    %endif
    times 4 - ($ - %%insn_03cc7) db 0
    %%insn_03ccb:
    lodsb ; 03CCB AC
    %if ($ - %%insn_03ccb) > 1
        %error "LONG_03CCB"
    %endif
    times 1 - ($ - %%insn_03ccb) db 0
    %%insn_03ccc:
    mov [bp-0x1f52],al ; 03CCC 8886AEE0
    %if ($ - %%insn_03ccc) > 4
        %error "LONG_03CCC"
    %endif
    times 4 - ($ - %%insn_03ccc) db 0
    %%insn_03cd0:
    jmp 0x3e20 ; 03CD0 E94D01
    %if ($ - %%insn_03cd0) > 3
        %error "LONG_03CD0"
    %endif
    times 3 - ($ - %%insn_03cd0) db 0
    %%insn_03cd3:
    cmp al,0x2d ; 03CD3 3C2D
    %if ($ - %%insn_03cd3) > 2
        %error "LONG_03CD3"
    %endif
    times 2 - ($ - %%insn_03cd3) db 0
    %%insn_03cd5:
    jnz short 0x3ce4 ; 03CD5 750D
    %if ($ - %%insn_03cd5) > 2
        %error "LONG_03CD5"
    %endif
    times 2 - ($ - %%insn_03cd5) db 0
    %%insn_03cd7:
    lodsw ; 03CD7 AD
    %if ($ - %%insn_03cd7) > 1
        %error "LONG_03CD7"
    %endif
    times 1 - ($ - %%insn_03cd7) db 0
    %%insn_03cd8:
    mov [bp-0x1f49],ax ; 03CD8 8986B7E0
    %if ($ - %%insn_03cd8) > 4
        %error "LONG_03CD8"
    %endif
    times 4 - ($ - %%insn_03cd8) db 0
    %%insn_03cdc:
    lodsb ; 03CDC AC
    %if ($ - %%insn_03cdc) > 1
        %error "LONG_03CDC"
    %endif
    times 1 - ($ - %%insn_03cdc) db 0
    %%insn_03cdd:
    mov [bp-0x1f47],al ; 03CDD 8886B9E0
    %if ($ - %%insn_03cdd) > 4
        %error "LONG_03CDD"
    %endif
    times 4 - ($ - %%insn_03cdd) db 0
    %%insn_03ce1:
    jmp 0x3e20 ; 03CE1 E93C01
    %if ($ - %%insn_03ce1) > 3
        %error "LONG_03CE1"
    %endif
    times 3 - ($ - %%insn_03ce1) db 0
    %%insn_03ce4:
    cmp al,0x45 ; 03CE4 3C45
    %if ($ - %%insn_03ce4) > 2
        %error "LONG_03CE4"
    %endif
    times 2 - ($ - %%insn_03ce4) db 0
    %%insn_03ce6:
    jnz short 0x3cf0 ; 03CE6 7508
    %if ($ - %%insn_03ce6) > 2
        %error "LONG_03CE6"
    %endif
    times 2 - ($ - %%insn_03ce6) db 0
    %%insn_03ce8:
    lodsw ; 03CE8 AD
    %if ($ - %%insn_03ce8) > 1
        %error "LONG_03CE8"
    %endif
    times 1 - ($ - %%insn_03ce8) db 0
    %%insn_03ce9:
    mov [bp-0x1f96],ax ; 03CE9 89866AE0
    %if ($ - %%insn_03ce9) > 4
        %error "LONG_03CE9"
    %endif
    times 4 - ($ - %%insn_03ce9) db 0
    %%insn_03ced:
    jmp 0x3e20 ; 03CED E93001
    %if ($ - %%insn_03ced) > 3
        %error "LONG_03CED"
    %endif
    times 3 - ($ - %%insn_03ced) db 0
    %%insn_03cf0:
    cmp al,0x44 ; 03CF0 3C44
    %if ($ - %%insn_03cf0) > 2
        %error "LONG_03CF0"
    %endif
    times 2 - ($ - %%insn_03cf0) db 0
    %%insn_03cf2:
    jnz short 0x3cfc ; 03CF2 7508
    %if ($ - %%insn_03cf2) > 2
        %error "LONG_03CF2"
    %endif
    times 2 - ($ - %%insn_03cf2) db 0
    %%insn_03cf4:
    lodsw ; 03CF4 AD
    %if ($ - %%insn_03cf4) > 1
        %error "LONG_03CF4"
    %endif
    times 1 - ($ - %%insn_03cf4) db 0
    %%insn_03cf5:
    mov [bp-0x1fa1],ax ; 03CF5 89865FE0
    %if ($ - %%insn_03cf5) > 4
        %error "LONG_03CF5"
    %endif
    times 4 - ($ - %%insn_03cf5) db 0
    %%insn_03cf9:
    jmp 0x3e20 ; 03CF9 E92401
    %if ($ - %%insn_03cf9) > 3
        %error "LONG_03CF9"
    %endif
    times 3 - ($ - %%insn_03cf9) db 0
    %%insn_03cfc:
    cmp al,0x2f ; 03CFC 3C2F
    %if ($ - %%insn_03cfc) > 2
        %error "LONG_03CFC"
    %endif
    times 2 - ($ - %%insn_03cfc) db 0
    %%insn_03cfe:
    jnz short 0x3d06 ; 03CFE 7506
    %if ($ - %%insn_03cfe) > 2
        %error "LONG_03CFE"
    %endif
    times 2 - ($ - %%insn_03cfe) db 0
    %%insn_03d00:
    call 0x3f23 ; 03D00 E82002
    %if ($ - %%insn_03d00) > 3
        %error "LONG_03D00"
    %endif
    times 3 - ($ - %%insn_03d00) db 0
    %%insn_03d03:
    jmp 0x3e20 ; 03D03 E91A01
    %if ($ - %%insn_03d03) > 3
        %error "LONG_03D03"
    %endif
    times 3 - ($ - %%insn_03d03) db 0
    %%insn_03d06:
    cmp al,0x2e ; 03D06 3C2E
    %if ($ - %%insn_03d06) > 2
        %error "LONG_03D06"
    %endif
    times 2 - ($ - %%insn_03d06) db 0
    %%insn_03d08:
    jnz short 0x3d10 ; 03D08 7506
    %if ($ - %%insn_03d08) > 2
        %error "LONG_03D08"
    %endif
    times 2 - ($ - %%insn_03d08) db 0
    %%insn_03d0a:
    call 0x3fc4 ; 03D0A E8B702
    %if ($ - %%insn_03d0a) > 3
        %error "LONG_03D0A"
    %endif
    times 3 - ($ - %%insn_03d0a) db 0
    %%insn_03d0d:
    jmp 0x3e20 ; 03D0D E91001
    %if ($ - %%insn_03d0d) > 3
        %error "LONG_03D0D"
    %endif
    times 3 - ($ - %%insn_03d0d) db 0
    %%insn_03d10:
    cmp al,0x31 ; 03D10 3C31
    %if ($ - %%insn_03d10) > 2
        %error "LONG_03D10"
    %endif
    times 2 - ($ - %%insn_03d10) db 0
    %%insn_03d12:
    jnz short 0x3d1e ; 03D12 750A
    %if ($ - %%insn_03d12) > 2
        %error "LONG_03D12"
    %endif
    times 2 - ($ - %%insn_03d12) db 0
    %%insn_03d14:
    lodsw ; 03D14 AD
    %if ($ - %%insn_03d14) > 1
        %error "LONG_03D14"
    %endif
    times 1 - ($ - %%insn_03d14) db 0
    db 0x8B, 0xD0 ; 03D15 8BD0 | mov dx,ax | encoding preserved
    %%insn_03d17:
    lodsw ; 03D17 AD
    %if ($ - %%insn_03d17) > 1
        %error "LONG_03D17"
    %endif
    times 1 - ($ - %%insn_03d17) db 0
    %%insn_03d18:
    call 0x5a6c ; 03D18 E8511D
    %if ($ - %%insn_03d18) > 3
        %error "LONG_03D18"
    %endif
    times 3 - ($ - %%insn_03d18) db 0
    %%insn_03d1b:
    jmp 0x3e20 ; 03D1B E90201
    %if ($ - %%insn_03d1b) > 3
        %error "LONG_03D1B"
    %endif
    times 3 - ($ - %%insn_03d1b) db 0
    %%insn_03d1e:
    cmp al,0x4a ; 03D1E 3C4A
    %if ($ - %%insn_03d1e) > 2
        %error "LONG_03D1E"
    %endif
    times 2 - ($ - %%insn_03d1e) db 0
    %%insn_03d20:
    jnz short 0x3d29 ; 03D20 7507
    %if ($ - %%insn_03d20) > 2
        %error "LONG_03D20"
    %endif
    times 2 - ($ - %%insn_03d20) db 0
    %%insn_03d22:
    lodsw ; 03D22 AD
    %if ($ - %%insn_03d22) > 1
        %error "LONG_03D22"
    %endif
    times 1 - ($ - %%insn_03d22) db 0
    %%insn_03d23:
    call 0x5a8b ; 03D23 E8651D
    %if ($ - %%insn_03d23) > 3
        %error "LONG_03D23"
    %endif
    times 3 - ($ - %%insn_03d23) db 0
    %%insn_03d26:
    jmp 0x3e20 ; 03D26 E9F700
    %if ($ - %%insn_03d26) > 3
        %error "LONG_03D26"
    %endif
    times 3 - ($ - %%insn_03d26) db 0
    %%insn_03d29:
    cmp al,0x37 ; 03D29 3C37
    %if ($ - %%insn_03d29) > 2
        %error "LONG_03D29"
    %endif
    times 2 - ($ - %%insn_03d29) db 0
    %%insn_03d2b:
    jnz short 0x3d33 ; 03D2B 7506
    %if ($ - %%insn_03d2b) > 2
        %error "LONG_03D2B"
    %endif
    times 2 - ($ - %%insn_03d2b) db 0
    %%insn_03d2d:
    call 0x23a5 ; 03D2D E875E6
    %if ($ - %%insn_03d2d) > 3
        %error "LONG_03D2D"
    %endif
    times 3 - ($ - %%insn_03d2d) db 0
    %%insn_03d30:
    jmp 0x3e20 ; 03D30 E9ED00
    %if ($ - %%insn_03d30) > 3
        %error "LONG_03D30"
    %endif
    times 3 - ($ - %%insn_03d30) db 0
    %%insn_03d33:
    cmp al,0x38 ; 03D33 3C38
    %if ($ - %%insn_03d33) > 2
        %error "LONG_03D33"
    %endif
    times 2 - ($ - %%insn_03d33) db 0
    %%insn_03d35:
    jnz short 0x3d40 ; 03D35 7509
    %if ($ - %%insn_03d35) > 2
        %error "LONG_03D35"
    %endif
    times 2 - ($ - %%insn_03d35) db 0
    %%insn_03d37:
    mov word [bp-0x21d9],0x0 ; 03D37 C78627DE0000
    %if ($ - %%insn_03d37) > 6
        %error "LONG_03D37"
    %endif
    times 6 - ($ - %%insn_03d37) db 0
    %%insn_03d3d:
    jmp 0x3e20 ; 03D3D E9E000
    %if ($ - %%insn_03d3d) > 3
        %error "LONG_03D3D"
    %endif
    times 3 - ($ - %%insn_03d3d) db 0
    %%insn_03d40:
    cmp al,0x3a ; 03D40 3C3A
    %if ($ - %%insn_03d40) > 2
        %error "LONG_03D40"
    %endif
    times 2 - ($ - %%insn_03d40) db 0
    %%insn_03d42:
    jnz short 0x3d4a ; 03D42 7506
    %if ($ - %%insn_03d42) > 2
        %error "LONG_03D42"
    %endif
    times 2 - ($ - %%insn_03d42) db 0
    %%insn_03d44:
    call 0x5480 ; 03D44 E83917
    %if ($ - %%insn_03d44) > 3
        %error "LONG_03D44"
    %endif
    times 3 - ($ - %%insn_03d44) db 0
    %%insn_03d47:
    jmp 0x3e20 ; 03D47 E9D600
    %if ($ - %%insn_03d47) > 3
        %error "LONG_03D47"
    %endif
    times 3 - ($ - %%insn_03d47) db 0
    %%insn_03d4a:
    cmp al,0x3c ; 03D4A 3C3C
    %if ($ - %%insn_03d4a) > 2
        %error "LONG_03D4A"
    %endif
    times 2 - ($ - %%insn_03d4a) db 0
    %%insn_03d4c:
    jnz short 0x3d54 ; 03D4C 7506
    %if ($ - %%insn_03d4c) > 2
        %error "LONG_03D4C"
    %endif
    times 2 - ($ - %%insn_03d4c) db 0
    %%insn_03d4e:
    call 0x3eea ; 03D4E E89901
    %if ($ - %%insn_03d4e) > 3
        %error "LONG_03D4E"
    %endif
    times 3 - ($ - %%insn_03d4e) db 0
    %%insn_03d51:
    jmp 0x3e20 ; 03D51 E9CC00
    %if ($ - %%insn_03d51) > 3
        %error "LONG_03D51"
    %endif
    times 3 - ($ - %%insn_03d51) db 0
    %%insn_03d54:
    cmp al,0x3d ; 03D54 3C3D
    %if ($ - %%insn_03d54) > 2
        %error "LONG_03D54"
    %endif
    times 2 - ($ - %%insn_03d54) db 0
    %%insn_03d56:
    jnz short 0x3d6b ; 03D56 7513
    %if ($ - %%insn_03d56) > 2
        %error "LONG_03D56"
    %endif
    times 2 - ($ - %%insn_03d56) db 0
    %%insn_03d58:
    push es ; 03D58 06
    %if ($ - %%insn_03d58) > 1
        %error "LONG_03D58"
    %endif
    times 1 - ($ - %%insn_03d58) db 0
    %%insn_03d59:
    mov di,0xdba2 ; 03D59 BFA2DB
    %if ($ - %%insn_03d59) > 3
        %error "LONG_03D59"
    %endif
    times 3 - ($ - %%insn_03d59) db 0
    db 0x33, 0xC0 ; 03D5C 33C0 | xor ax,ax | encoding preserved
    %%insn_03d5e:
    mov cx,0x80 ; 03D5E B98000
    %if ($ - %%insn_03d5e) > 3
        %error "LONG_03D5E"
    %endif
    times 3 - ($ - %%insn_03d5e) db 0
    %%insn_03d61:
    mov es,word [bp-0x2aae] ; 03D61 8E8652D5
    %if ($ - %%insn_03d61) > 4
        %error "LONG_03D61"
    %endif
    times 4 - ($ - %%insn_03d61) db 0
    %%insn_03d65:
    rep stosw ; 03D65 F3AB
    %if ($ - %%insn_03d65) > 2
        %error "LONG_03D65"
    %endif
    times 2 - ($ - %%insn_03d65) db 0
    %%insn_03d67:
    pop es ; 03D67 07
    %if ($ - %%insn_03d67) > 1
        %error "LONG_03D67"
    %endif
    times 1 - ($ - %%insn_03d67) db 0
    %%insn_03d68:
    jmp 0x3e20 ; 03D68 E9B500
    %if ($ - %%insn_03d68) > 3
        %error "LONG_03D68"
    %endif
    times 3 - ($ - %%insn_03d68) db 0
    %%insn_03d6b:
    cmp al,0x40 ; 03D6B 3C40
    %if ($ - %%insn_03d6b) > 2
        %error "LONG_03D6B"
    %endif
    times 2 - ($ - %%insn_03d6b) db 0
    %%insn_03d6d:
    jnz short 0x3d81 ; 03D6D 7512
    %if ($ - %%insn_03d6d) > 2
        %error "LONG_03D6D"
    %endif
    times 2 - ($ - %%insn_03d6d) db 0
    %%insn_03d6f:
    lodsw ; 03D6F AD
    %if ($ - %%insn_03d6f) > 1
        %error "LONG_03D6F"
    %endif
    times 1 - ($ - %%insn_03d6f) db 0
    %%insn_03d70:
    mov [bp-0x2638],ax ; 03D70 8986C8D9
    %if ($ - %%insn_03d70) > 4
        %error "LONG_03D70"
    %endif
    times 4 - ($ - %%insn_03d70) db 0
    %%insn_03d74:
    lodsw ; 03D74 AD
    %if ($ - %%insn_03d74) > 1
        %error "LONG_03D74"
    %endif
    times 1 - ($ - %%insn_03d74) db 0
    %%insn_03d75:
    mov [bp-0x2636],ax ; 03D75 8986CAD9
    %if ($ - %%insn_03d75) > 4
        %error "LONG_03D75"
    %endif
    times 4 - ($ - %%insn_03d75) db 0
    %%insn_03d79:
    mov byte [bp-0x2606],0x2 ; 03D79 C686FAD902
    %if ($ - %%insn_03d79) > 5
        %error "LONG_03D79"
    %endif
    times 5 - ($ - %%insn_03d79) db 0
    %%insn_03d7e:
    jmp 0x3e20 ; 03D7E E99F00
    %if ($ - %%insn_03d7e) > 3
        %error "LONG_03D7E"
    %endif
    times 3 - ($ - %%insn_03d7e) db 0
    %%insn_03d81:
    cmp al,0x42 ; 03D81 3C42
    %if ($ - %%insn_03d81) > 2
        %error "LONG_03D81"
    %endif
    times 2 - ($ - %%insn_03d81) db 0
    %%insn_03d83:
    jnz short 0x3d9f ; 03D83 751A
    %if ($ - %%insn_03d83) > 2
        %error "LONG_03D83"
    %endif
    times 2 - ($ - %%insn_03d83) db 0
    %%insn_03d85:
    lodsb ; 03D85 AC
    %if ($ - %%insn_03d85) > 1
        %error "LONG_03D85"
    %endif
    times 1 - ($ - %%insn_03d85) db 0
    %%insn_03d86:
    push si ; 03D86 56
    %if ($ - %%insn_03d86) > 1
        %error "LONG_03D86"
    %endif
    times 1 - ($ - %%insn_03d86) db 0
    %%insn_03d87:
    mov si,0xdbbb ; 03D87 BEBBDB
    %if ($ - %%insn_03d87) > 3
        %error "LONG_03D87"
    %endif
    times 3 - ($ - %%insn_03d87) db 0
    %%insn_03d8a:
    mov ds,word [bp-0x2aae] ; 03D8A 8E9E52D5
    %if ($ - %%insn_03d8a) > 4
        %error "LONG_03D8A"
    %endif
    times 4 - ($ - %%insn_03d8a) db 0
    %%insn_03d8e:
    call 0x5ed6 ; 03D8E E84521
    %if ($ - %%insn_03d8e) > 3
        %error "LONG_03D8E"
    %endif
    times 3 - ($ - %%insn_03d8e) db 0
    %%insn_03d91:
    mov di,0xdba2 ; 03D91 BFA2DB
    %if ($ - %%insn_03d91) > 3
        %error "LONG_03D91"
    %endif
    times 3 - ($ - %%insn_03d91) db 0
    %%insn_03d94:
    mov [ss:di],ax ; 03D94 368905
    %if ($ - %%insn_03d94) > 3
        %error "LONG_03D94"
    %endif
    times 3 - ($ - %%insn_03d94) db 0
    %%insn_03d97:
    mov [ss:di+0x2],bx ; 03D97 36895D02
    %if ($ - %%insn_03d97) > 4
        %error "LONG_03D97"
    %endif
    times 4 - ($ - %%insn_03d97) db 0
    %%insn_03d9b:
    pop si ; 03D9B 5E
    %if ($ - %%insn_03d9b) > 1
        %error "LONG_03D9B"
    %endif
    times 1 - ($ - %%insn_03d9b) db 0
    %%insn_03d9c:
    jmp 0x3e20 ; 03D9C E98100
    %if ($ - %%insn_03d9c) > 3
        %error "LONG_03D9C"
    %endif
    times 3 - ($ - %%insn_03d9c) db 0
    %%insn_03d9f:
    cmp al,0x3f ; 03D9F 3C3F
    %if ($ - %%insn_03d9f) > 2
        %error "LONG_03D9F"
    %endif
    times 2 - ($ - %%insn_03d9f) db 0
    %%insn_03da1:
    jnz short 0x3da8 ; 03DA1 7505
    %if ($ - %%insn_03da1) > 2
        %error "LONG_03DA1"
    %endif
    times 2 - ($ - %%insn_03da1) db 0
    %%insn_03da3:
    call 0x3e85 ; 03DA3 E8DF00
    %if ($ - %%insn_03da3) > 3
        %error "LONG_03DA3"
    %endif
    times 3 - ($ - %%insn_03da3) db 0
    %%insn_03da6:
    jmp short 0x3e20 ; 03DA6 EB78
    %if ($ - %%insn_03da6) > 2
        %error "LONG_03DA6"
    %endif
    times 2 - ($ - %%insn_03da6) db 0
    %%insn_03da8:
    cmp al,0x43 ; 03DA8 3C43
    %if ($ - %%insn_03da8) > 2
        %error "LONG_03DA8"
    %endif
    times 2 - ($ - %%insn_03da8) db 0
    %%insn_03daa:
    jnz short 0x3db1 ; 03DAA 7505
    %if ($ - %%insn_03daa) > 2
        %error "LONG_03DAA"
    %endif
    times 2 - ($ - %%insn_03daa) db 0
    %%insn_03dac:
    call 0x3eb8 ; 03DAC E80901
    %if ($ - %%insn_03dac) > 3
        %error "LONG_03DAC"
    %endif
    times 3 - ($ - %%insn_03dac) db 0
    %%insn_03daf:
    jmp short 0x3e20 ; 03DAF EB6F
    %if ($ - %%insn_03daf) > 2
        %error "LONG_03DAF"
    %endif
    times 2 - ($ - %%insn_03daf) db 0
    %%insn_03db1:
    cmp al,0x46 ; 03DB1 3C46
    %if ($ - %%insn_03db1) > 2
        %error "LONG_03DB1"
    %endif
    times 2 - ($ - %%insn_03db1) db 0
    %%insn_03db3:
    jnz short 0x3dba ; 03DB3 7505
    %if ($ - %%insn_03db3) > 2
        %error "LONG_03DB3"
    %endif
    times 2 - ($ - %%insn_03db3) db 0
    %%insn_03db5:
    call 0x382d ; 03DB5 E875FA
    %if ($ - %%insn_03db5) > 3
        %error "LONG_03DB5"
    %endif
    times 3 - ($ - %%insn_03db5) db 0
    %%insn_03db8:
    jmp short 0x3e20 ; 03DB8 EB66
    %if ($ - %%insn_03db8) > 2
        %error "LONG_03DB8"
    %endif
    times 2 - ($ - %%insn_03db8) db 0
    %%insn_03dba:
    cmp al,0x47 ; 03DBA 3C47
    %if ($ - %%insn_03dba) > 2
        %error "LONG_03DBA"
    %endif
    times 2 - ($ - %%insn_03dba) db 0
    %%insn_03dbc:
    jnz short 0x3dc3 ; 03DBC 7505
    %if ($ - %%insn_03dbc) > 2
        %error "LONG_03DBC"
    %endif
    times 2 - ($ - %%insn_03dbc) db 0
    %%insn_03dbe:
    call 0x3838 ; 03DBE E877FA
    %if ($ - %%insn_03dbe) > 3
        %error "LONG_03DBE"
    %endif
    times 3 - ($ - %%insn_03dbe) db 0
    %%insn_03dc1:
    jmp short 0x3e20 ; 03DC1 EB5D
    %if ($ - %%insn_03dc1) > 2
        %error "LONG_03DC1"
    %endif
    times 2 - ($ - %%insn_03dc1) db 0
    %%insn_03dc3:
    cmp al,0x48 ; 03DC3 3C48
    %if ($ - %%insn_03dc3) > 2
        %error "LONG_03DC3"
    %endif
    times 2 - ($ - %%insn_03dc3) db 0
    %%insn_03dc5:
    jnz short 0x3dce ; 03DC5 7507
    %if ($ - %%insn_03dc5) > 2
        %error "LONG_03DC5"
    %endif
    times 2 - ($ - %%insn_03dc5) db 0
    %%insn_03dc7:
    lodsb ; 03DC7 AC
    %if ($ - %%insn_03dc7) > 1
        %error "LONG_03DC7"
    %endif
    times 1 - ($ - %%insn_03dc7) db 0
    %%insn_03dc8:
    mov [bp-0x265b],al ; 03DC8 8886A5D9
    %if ($ - %%insn_03dc8) > 4
        %error "LONG_03DC8"
    %endif
    times 4 - ($ - %%insn_03dc8) db 0
    %%insn_03dcc:
    jmp short 0x3e20 ; 03DCC EB52
    %if ($ - %%insn_03dcc) > 2
        %error "LONG_03DCC"
    %endif
    times 2 - ($ - %%insn_03dcc) db 0
    %%insn_03dce:
    cmp al,0x49 ; 03DCE 3C49
    %if ($ - %%insn_03dce) > 2
        %error "LONG_03DCE"
    %endif
    times 2 - ($ - %%insn_03dce) db 0
    %%insn_03dd0:
    jnz short 0x3dd9 ; 03DD0 7507
    %if ($ - %%insn_03dd0) > 2
        %error "LONG_03DD0"
    %endif
    times 2 - ($ - %%insn_03dd0) db 0
    %%insn_03dd2:
    mov byte [bp-0x265a],0x1 ; 03DD2 C686A6D901
    %if ($ - %%insn_03dd2) > 5
        %error "LONG_03DD2"
    %endif
    times 5 - ($ - %%insn_03dd2) db 0
    %%insn_03dd7:
    jmp short 0x3e20 ; 03DD7 EB47
    %if ($ - %%insn_03dd7) > 2
        %error "LONG_03DD7"
    %endif
    times 2 - ($ - %%insn_03dd7) db 0
    %%insn_03dd9:
    cmp al,0x4b ; 03DD9 3C4B
    %if ($ - %%insn_03dd9) > 2
        %error "LONG_03DD9"
    %endif
    times 2 - ($ - %%insn_03dd9) db 0
    %%insn_03ddb:
    jnz short 0x3e02 ; 03DDB 7525
    %if ($ - %%insn_03ddb) > 2
        %error "LONG_03DDB"
    %endif
    times 2 - ($ - %%insn_03ddb) db 0
    %%insn_03ddd:
    lodsb ; 03DDD AC
    %if ($ - %%insn_03ddd) > 1
        %error "LONG_03DDD"
    %endif
    times 1 - ($ - %%insn_03ddd) db 0
    %%insn_03dde:
    push si ; 03DDE 56
    %if ($ - %%insn_03dde) > 1
        %error "LONG_03DDE"
    %endif
    times 1 - ($ - %%insn_03dde) db 0
    %%insn_03ddf:
    cmp al,0x0 ; 03DDF 3C00
    %if ($ - %%insn_03ddf) > 2
        %error "LONG_03DDF"
    %endif
    times 2 - ($ - %%insn_03ddf) db 0
    %%insn_03de1:
    jnz short 0x3dee ; 03DE1 750B
    %if ($ - %%insn_03de1) > 2
        %error "LONG_03DE1"
    %endif
    times 2 - ($ - %%insn_03de1) db 0
    %%insn_03de3:
    mov word [bp-0x30de],0x0 ; 03DE3 C78622CF0000
    %if ($ - %%insn_03de3) > 6
        %error "LONG_03DE3"
    %endif
    times 6 - ($ - %%insn_03de3) db 0
    %%insn_03de9:
    call 0x34a5 ; 03DE9 E8B9F6
    %if ($ - %%insn_03de9) > 3
        %error "LONG_03DE9"
    %endif
    times 3 - ($ - %%insn_03de9) db 0
    %%insn_03dec:
    jmp short 0x3df9 ; 03DEC EB0B
    %if ($ - %%insn_03dec) > 2
        %error "LONG_03DEC"
    %endif
    times 2 - ($ - %%insn_03dec) db 0
    %%insn_03dee:
    mov word [bp-0x30de],0xffff ; 03DEE C78622CFFFFF
    %if ($ - %%insn_03dee) > 6
        %error "LONG_03DEE"
    %endif
    times 6 - ($ - %%insn_03dee) db 0
    %%insn_03df4:
    mov ax,0x13 ; 03DF4 B81300
    %if ($ - %%insn_03df4) > 3
        %error "LONG_03DF4"
    %endif
    times 3 - ($ - %%insn_03df4) db 0
    %%insn_03df7:
    int byte 0x10 ; 03DF7 CD10
    %if ($ - %%insn_03df7) > 2
        %error "LONG_03DF7"
    %endif
    times 2 - ($ - %%insn_03df7) db 0
    %%insn_03df9:
    mov word [bp-0x2642],0x0 ; 03DF9 C786BED90000
    %if ($ - %%insn_03df9) > 6
        %error "LONG_03DF9"
    %endif
    times 6 - ($ - %%insn_03df9) db 0
    %%insn_03dff:
    pop si ; 03DFF 5E
    %if ($ - %%insn_03dff) > 1
        %error "LONG_03DFF"
    %endif
    times 1 - ($ - %%insn_03dff) db 0
    %%insn_03e00:
    jmp short 0x3e20 ; 03E00 EB1E
    %if ($ - %%insn_03e00) > 2
        %error "LONG_03E00"
    %endif
    times 2 - ($ - %%insn_03e00) db 0
    %%insn_03e02:
    cmp al,0x4c ; 03E02 3C4C
    %if ($ - %%insn_03e02) > 2
        %error "LONG_03E02"
    %endif
    times 2 - ($ - %%insn_03e02) db 0
    %%insn_03e04:
    jnz short 0x3e0b ; 03E04 7505
    %if ($ - %%insn_03e04) > 2
        %error "LONG_03E04"
    %endif
    times 2 - ($ - %%insn_03e04) db 0
    %%insn_03e06:
    call 0x3e44 ; 03E06 E83B00
    %if ($ - %%insn_03e06) > 3
        %error "LONG_03E06"
    %endif
    times 3 - ($ - %%insn_03e06) db 0
    %%insn_03e09:
    jmp short 0x3e20 ; 03E09 EB15
    %if ($ - %%insn_03e09) > 2
        %error "LONG_03E09"
    %endif
    times 2 - ($ - %%insn_03e09) db 0
    %%insn_03e0b:
    cmp al,0x4d ; 03E0B 3C4D
    %if ($ - %%insn_03e0b) > 2
        %error "LONG_03E0B"
    %endif
    times 2 - ($ - %%insn_03e0b) db 0
    %%insn_03e0d:
    jnz short 0x3e17 ; 03E0D 7508
    %if ($ - %%insn_03e0d) > 2
        %error "LONG_03E0D"
    %endif
    times 2 - ($ - %%insn_03e0d) db 0
    %%insn_03e0f:
    lodsb ; 03E0F AC
    %if ($ - %%insn_03e0f) > 1
        %error "LONG_03E0F"
    %endif
    times 1 - ($ - %%insn_03e0f) db 0
    db 0x32, 0xE4 ; 03E10 32E4 | xor ah,ah | encoding preserved
    %%insn_03e12:
    call 0x55fc ; 03E12 E8E717
    %if ($ - %%insn_03e12) > 3
        %error "LONG_03E12"
    %endif
    times 3 - ($ - %%insn_03e12) db 0
    %%insn_03e15:
    jmp short 0x3e20 ; 03E15 EB09
    %if ($ - %%insn_03e15) > 2
        %error "LONG_03E15"
    %endif
    times 2 - ($ - %%insn_03e15) db 0
    %%insn_03e17:
    cmp al,0x4e ; 03E17 3C4E
    %if ($ - %%insn_03e17) > 2
        %error "LONG_03E17"
    %endif
    times 2 - ($ - %%insn_03e17) db 0
    %%insn_03e19:
    jnz short 0x3e20 ; 03E19 7505
    %if ($ - %%insn_03e19) > 2
        %error "LONG_03E19"
    %endif
    times 2 - ($ - %%insn_03e19) db 0
    %%insn_03e1b:
    lodsw ; 03E1B AD
    %if ($ - %%insn_03e1b) > 1
        %error "LONG_03E1B"
    %endif
    times 1 - ($ - %%insn_03e1b) db 0
    %%insn_03e1c:
    mov [bp-0x3078],ax ; 03E1C 898688CF
    %if ($ - %%insn_03e1c) > 4
        %error "LONG_03E1C"
    %endif
    times 4 - ($ - %%insn_03e1c) db 0
    %%insn_03e20:
    jmp 0x3ae8 ; 03E20 E9C5FC
    %if ($ - %%insn_03e20) > 3
        %error "LONG_03E20"
    %endif
    times 3 - ($ - %%insn_03e20) db 0
    %%insn_03e23:
    cmp word [bp-0x21d9],0x0 ; 03E23 83BE27DE00
    %if ($ - %%insn_03e23) > 5
        %error "LONG_03E23"
    %endif
    times 5 - ($ - %%insn_03e23) db 0
    %%insn_03e28:
    jz short 0x3e3f ; 03E28 7415
    %if ($ - %%insn_03e28) > 2
        %error "LONG_03E28"
    %endif
    times 2 - ($ - %%insn_03e28) db 0
    %%insn_03e2a:
    mov ax,[bp-0x21d9] ; 03E2A 8B8627DE
    %if ($ - %%insn_03e2a) > 4
        %error "LONG_03E2A"
    %endif
    times 4 - ($ - %%insn_03e2a) db 0
    db 0x03, 0xC0 ; 03E2E 03C0 | add ax,ax | encoding preserved
    %%insn_03e30:
    mov bx,0xde27 ; 03E30 BB27DE
    %if ($ - %%insn_03e30) > 3
        %error "LONG_03E30"
    %endif
    times 3 - ($ - %%insn_03e30) db 0
    db 0x03, 0xD8 ; 03E33 03D8 | add bx,ax | encoding preserved
    %%insn_03e35:
    dec word [bp-0x21d9] ; 03E35 FF8E27DE
    %if ($ - %%insn_03e35) > 4
        %error "LONG_03E35"
    %endif
    times 4 - ($ - %%insn_03e35) db 0
    %%insn_03e39:
    mov si,[ss:bx] ; 03E39 368B37
    %if ($ - %%insn_03e39) > 3
        %error "LONG_03E39"
    %endif
    times 3 - ($ - %%insn_03e39) db 0
    %%insn_03e3c:
    jmp 0x3ae8 ; 03E3C E9A9FC
    %if ($ - %%insn_03e3c) > 3
        %error "LONG_03E3C"
    %endif
    times 3 - ($ - %%insn_03e3c) db 0
    db 0x33, 0xC0 ; 03E3F 33C0 | xor ax,ax | encoding preserved
    %%insn_03e41:
    jmp 0x5ced ; 03E41 E9A91E
    %if ($ - %%insn_03e41) > 3
        %error "LONG_03E41"
    %endif
    times 3 - ($ - %%insn_03e41) db 0
    %if ($ - %%fragment_start) != 386
        %error "SIZE_03CC2"
    %endif
%endmacro
