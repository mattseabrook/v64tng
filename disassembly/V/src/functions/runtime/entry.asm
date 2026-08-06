; Linear entry 00000 (1000:0000)
; Ghidra working symbol: entry
; Verified DOS startup and @/! command-tail dispatch.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_entry_part_00 0
    %%fragment_start:
entry:
    %%insn_00000:
    cli ; 00000 FA
    %if ($ - %%insn_00000) > 1
        %error "LONG_00000"
    %endif
    times 1 - ($ - %%insn_00000) db 0
    %%insn_00001:
    mov ax,0x893 ; 00001 B89308
    %if ($ - %%insn_00001) > 3
        %error "LONG_00001"
    %endif
    times 3 - ($ - %%insn_00001) db 0
    %%insn_00004:
    mov ss,ax ; 00004 8ED0
    %if ($ - %%insn_00004) > 2
        %error "LONG_00004"
    %endif
    times 2 - ($ - %%insn_00004) db 0
    %%insn_00006:
    mov ds,ax ; 00006 8ED8
    %if ($ - %%insn_00006) > 2
        %error "LONG_00006"
    %endif
    times 2 - ($ - %%insn_00006) db 0
    %%insn_00008:
    mov sp,0xd65a ; 00008 BC5AD6
    %if ($ - %%insn_00008) > 3
        %error "LONG_00008"
    %endif
    times 3 - ($ - %%insn_00008) db 0
    %%insn_0000b:
    sti ; 0000B FB
    %if ($ - %%insn_0000b) > 1
        %error "LONG_0000B"
    %endif
    times 1 - ($ - %%insn_0000b) db 0
    db 0x33, 0xED ; 0000C 33ED | xor bp,bp | encoding preserved
    %%insn_0000e:
    mov bx,0x18d0 ; 0000E BBD018
    %if ($ - %%insn_0000e) > 3
        %error "LONG_0000E"
    %endif
    times 3 - ($ - %%insn_0000e) db 0
    %%insn_00011:
    mov ax,es ; 00011 8CC0
    %if ($ - %%insn_00011) > 2
        %error "LONG_00011"
    %endif
    times 2 - ($ - %%insn_00011) db 0
    db 0x2B, 0xD8 ; 00013 2BD8 | sub bx,ax | encoding preserved
    %%insn_00015:
    inc bx ; 00015 43
    %if ($ - %%insn_00015) > 1
        %error "LONG_00015"
    %endif
    times 1 - ($ - %%insn_00015) db 0
    %%insn_00016:
    mov ax,0x4a00 ; 00016 B8004A
    %if ($ - %%insn_00016) > 3
        %error "LONG_00016"
    %endif
    times 3 - ($ - %%insn_00016) db 0
    %%insn_00019:
    int byte 0x21 ; 00019 CD21
    %if ($ - %%insn_00019) > 2
        %error "LONG_00019"
    %endif
    times 2 - ($ - %%insn_00019) db 0
    %%insn_0001b:
    jnc short 0x22 ; 0001B 7305
    %if ($ - %%insn_0001b) > 2
        %error "LONG_0001B"
    %endif
    times 2 - ($ - %%insn_0001b) db 0
    db 0x33, 0xC0 ; 0001D 33C0 | xor ax,ax | encoding preserved
    %%insn_0001f:
    jmp 0x5ced ; 0001F E9CB5C
    %if ($ - %%insn_0001f) > 3
        %error "LONG_0001F"
    %endif
    times 3 - ($ - %%insn_0001f) db 0
    %%insn_00022:
    nop ; 00022 90
    %if ($ - %%insn_00022) > 1
        %error "LONG_00022"
    %endif
    times 1 - ($ - %%insn_00022) db 0
    %%insn_00023:
    push cs ; 00023 0E
    %if ($ - %%insn_00023) > 1
        %error "LONG_00023"
    %endif
    times 1 - ($ - %%insn_00023) db 0
    %%insn_00024:
    call 0x2c32 ; 00024 E80B2C
    %if ($ - %%insn_00024) > 3
        %error "LONG_00024"
    %endif
    times 3 - ($ - %%insn_00024) db 0
    %%insn_00027:
    mov [bp-0x30d6],ax ; 00027 89862ACF
    %if ($ - %%insn_00027) > 4
        %error "LONG_00027"
    %endif
    times 4 - ($ - %%insn_00027) db 0
    %%insn_0002b:
    mov word [bp-0x30a6],0x0 ; 0002B C7865ACF0000
    %if ($ - %%insn_0002b) > 6
        %error "LONG_0002B"
    %endif
    times 6 - ($ - %%insn_0002b) db 0
    %%insn_00031:
    mov byte [bp-0x3076],0x0 ; 00031 C6868ACF00
    %if ($ - %%insn_00031) > 5
        %error "LONG_00031"
    %endif
    times 5 - ($ - %%insn_00031) db 0
    %%insn_00036:
    mov bx,0x1008 ; 00036 BB0810
    %if ($ - %%insn_00036) > 3
        %error "LONG_00036"
    %endif
    times 3 - ($ - %%insn_00036) db 0
    %%insn_00039:
    call 0x5ec8 ; 00039 E88C5E
    %if ($ - %%insn_00039) > 3
        %error "LONG_00039"
    %endif
    times 3 - ($ - %%insn_00039) db 0
    %%insn_0003c:
    mov [bp-0x2aaa],ax ; 0003C 898656D5
    %if ($ - %%insn_0003c) > 4
        %error "LONG_0003C"
    %endif
    times 4 - ($ - %%insn_0003c) db 0
    %%insn_00040:
    mov si,0x82 ; 00040 BE8200
    %if ($ - %%insn_00040) > 3
        %error "LONG_00040"
    %endif
    times 3 - ($ - %%insn_00040) db 0
    %%insn_00043:
    cmp byte [es:si],0x40 ; 00043 26803C40
    %if ($ - %%insn_00043) > 4
        %error "LONG_00043"
    %endif
    times 4 - ($ - %%insn_00043) db 0
    %%insn_00047:
    jnz short 0x73 ; 00047 752A
    %if ($ - %%insn_00047) > 2
        %error "LONG_00047"
    %endif
    times 2 - ($ - %%insn_00047) db 0
    %%insn_00049:
    mov di,0xd894 ; 00049 BF94D8
    %if ($ - %%insn_00049) > 3
        %error "LONG_00049"
    %endif
    times 3 - ($ - %%insn_00049) db 0
    %%insn_0004c:
    mov byte [di+0x1],0x64 ; 0004C C6450164
    %if ($ - %%insn_0004c) > 4
        %error "LONG_0004C"
    %endif
    times 4 - ($ - %%insn_0004c) db 0
    %%insn_00050:
    mov byte [di+0x2],0x65 ; 00050 C6450265
    %if ($ - %%insn_00050) > 4
        %error "LONG_00050"
    %endif
    times 4 - ($ - %%insn_00050) db 0
    %%insn_00054:
    mov byte [di+0x3],0x6d ; 00054 C645036D
    %if ($ - %%insn_00054) > 4
        %error "LONG_00054"
    %endif
    times 4 - ($ - %%insn_00054) db 0
    %%insn_00058:
    mov byte [di+0x4],0x6f ; 00058 C645046F
    %if ($ - %%insn_00058) > 4
        %error "LONG_00058"
    %endif
    times 4 - ($ - %%insn_00058) db 0
    %%insn_0005c:
    mov byte [di+0x5],0x2e ; 0005C C645052E
    %if ($ - %%insn_0005c) > 4
        %error "LONG_0005C"
    %endif
    times 4 - ($ - %%insn_0005c) db 0
    %%insn_00060:
    mov byte [di+0x6],0x67 ; 00060 C6450667
    %if ($ - %%insn_00060) > 4
        %error "LONG_00060"
    %endif
    times 4 - ($ - %%insn_00060) db 0
    %%insn_00064:
    mov byte [di+0x7],0x72 ; 00064 C6450772
    %if ($ - %%insn_00064) > 4
        %error "LONG_00064"
    %endif
    times 4 - ($ - %%insn_00064) db 0
    %%insn_00068:
    mov byte [di+0x8],0x76 ; 00068 C6450876
    %if ($ - %%insn_00068) > 4
        %error "LONG_00068"
    %endif
    times 4 - ($ - %%insn_00068) db 0
    %%insn_0006c:
    mov byte [di+0x9],0x0 ; 0006C C6450900
    %if ($ - %%insn_0006c) > 4
        %error "LONG_0006C"
    %endif
    times 4 - ($ - %%insn_0006c) db 0
    %%insn_00070:
    jmp 0x3ac4 ; 00070 E9513A
    %if ($ - %%insn_00070) > 3
        %error "LONG_00070"
    %endif
    times 3 - ($ - %%insn_00070) db 0
    %%insn_00073:
    cmp byte [es:si],0x21 ; 00073 26803C21
    %if ($ - %%insn_00073) > 4
        %error "LONG_00073"
    %endif
    times 4 - ($ - %%insn_00073) db 0
    %%insn_00077:
    jnz short 0x7e ; 00077 7505
    %if ($ - %%insn_00077) > 2
        %error "LONG_00077"
    %endif
    times 2 - ($ - %%insn_00077) db 0
    %%insn_00079:
    jmp 0x3ac4 ; 00079 E9483A
    %if ($ - %%insn_00079) > 3
        %error "LONG_00079"
    %endif
    times 3 - ($ - %%insn_00079) db 0
    %if ($ - %%fragment_start) != 124
        %error "SIZE_00000"
    %endif
%endmacro

%macro emit_entry_part_01 0
    %%fragment_start:
    %%insn_0007e:
    call 0x576e ; 0007E E8ED56
    %if ($ - %%insn_0007e) > 3
        %error "LONG_0007E"
    %endif
    times 3 - ($ - %%insn_0007e) db 0
    %%insn_00081:
    call 0x89 ; 00081 E80500
    %if ($ - %%insn_00081) > 3
        %error "LONG_00081"
    %endif
    times 3 - ($ - %%insn_00081) db 0
    db 0x33, 0xC0 ; 00084 33C0 | xor ax,ax | encoding preserved
    %%insn_00086:
    jmp 0x5ced ; 00086 E9645C
    %if ($ - %%insn_00086) > 3
        %error "LONG_00086"
    %endif
    times 3 - ($ - %%insn_00086) db 0
    %if ($ - %%fragment_start) != 11
        %error "SIZE_0007E"
    %endif
%endmacro
