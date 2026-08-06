; Linear entry 02F84 (1000:2f84)
; Ghidra working symbol: FUN_1000_2f84
; Verified video hardware detection/diagnostic path.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_detect_video_hardware_part_00 0
    %%fragment_start:
detect_video_hardware:
    %%insn_02f84:
    cmp word [0xd69a],0x4649 ; 02F84 813E9AD64946
    %if ($ - %%insn_02f84) > 6
        %error "LONG_02F84"
    %endif
    times 6 - ($ - %%insn_02f84) db 0
    %%insn_02f8a:
    jnz short 0x2f90 ; 02F8A 7504
    %if ($ - %%insn_02f8a) > 2
        %error "LONG_02F8A"
    %endif
    times 2 - ($ - %%insn_02f8a) db 0
    %%insn_02f8c:
    mov ax,[0xd69c] ; 02F8C A19CD6
    %if ($ - %%insn_02f8c) > 3
        %error "LONG_02F8C"
    %endif
    times 3 - ($ - %%insn_02f8c) db 0
    %%insn_02f8f:
    ret ; 02F8F C3
    %if ($ - %%insn_02f8f) > 1
        %error "LONG_02F8F"
    %endif
    times 1 - ($ - %%insn_02f8f) db 0
    %%insn_02f90:
    call 0x3671 ; 02F90 E8DE06
    %if ($ - %%insn_02f90) > 3
        %error "LONG_02F90"
    %endif
    times 3 - ($ - %%insn_02f90) db 0
    %%insn_02f93:
    call 0x368c ; 02F93 E8F606
    %if ($ - %%insn_02f93) > 3
        %error "LONG_02F93"
    %endif
    times 3 - ($ - %%insn_02f93) db 0
    %%insn_02f96:
    mov word [0xd660],0x2f83 ; 02F96 C70660D6832F
    %if ($ - %%insn_02f96) > 6
        %error "LONG_02F96"
    %endif
    times 6 - ($ - %%insn_02f96) db 0
    db 0x33, 0xC0 ; 02F9C 33C0 | xor ax,ax | encoding preserved
    %%insn_02f9e:
    mov [0xcf8a],ax ; 02F9E A38ACF
    %if ($ - %%insn_02f9e) > 3
        %error "LONG_02F9E"
    %endif
    times 3 - ($ - %%insn_02f9e) db 0
    %%insn_02fa1:
    mov [0xd66c],ax ; 02FA1 A36CD6
    %if ($ - %%insn_02fa1) > 3
        %error "LONG_02FA1"
    %endif
    times 3 - ($ - %%insn_02fa1) db 0
    %%insn_02fa4:
    mov [0xd676],ax ; 02FA4 A376D6
    %if ($ - %%insn_02fa4) > 3
        %error "LONG_02FA4"
    %endif
    times 3 - ($ - %%insn_02fa4) db 0
    %%insn_02fa7:
    mov [0xd678],ax ; 02FA7 A378D6
    %if ($ - %%insn_02fa7) > 3
        %error "LONG_02FA7"
    %endif
    times 3 - ($ - %%insn_02fa7) db 0
    %%insn_02faa:
    mov [0xd67a],ax ; 02FAA A37AD6
    %if ($ - %%insn_02faa) > 3
        %error "LONG_02FAA"
    %endif
    times 3 - ($ - %%insn_02faa) db 0
    %%insn_02fad:
    mov [0xd67c],ax ; 02FAD A37CD6
    %if ($ - %%insn_02fad) > 3
        %error "LONG_02FAD"
    %endif
    times 3 - ($ - %%insn_02fad) db 0
    %%insn_02fb0:
    mov [0xd67e],ax ; 02FB0 A37ED6
    %if ($ - %%insn_02fb0) > 3
        %error "LONG_02FB0"
    %endif
    times 3 - ($ - %%insn_02fb0) db 0
    %%insn_02fb3:
    mov [0xd680],ax ; 02FB3 A380D6
    %if ($ - %%insn_02fb3) > 3
        %error "LONG_02FB3"
    %endif
    times 3 - ($ - %%insn_02fb3) db 0
    %%insn_02fb6:
    mov [0xd682],ax ; 02FB6 A382D6
    %if ($ - %%insn_02fb6) > 3
        %error "LONG_02FB6"
    %endif
    times 3 - ($ - %%insn_02fb6) db 0
    %%insn_02fb9:
    mov [0xd684],ax ; 02FB9 A384D6
    %if ($ - %%insn_02fb9) > 3
        %error "LONG_02FB9"
    %endif
    times 3 - ($ - %%insn_02fb9) db 0
    %%insn_02fbc:
    mov [0xd686],ax ; 02FBC A386D6
    %if ($ - %%insn_02fbc) > 3
        %error "LONG_02FBC"
    %endif
    times 3 - ($ - %%insn_02fbc) db 0
    %%insn_02fbf:
    mov [0xd688],ax ; 02FBF A388D6
    %if ($ - %%insn_02fbf) > 3
        %error "LONG_02FBF"
    %endif
    times 3 - ($ - %%insn_02fbf) db 0
    %%insn_02fc2:
    mov [0xd68a],ax ; 02FC2 A38AD6
    %if ($ - %%insn_02fc2) > 3
        %error "LONG_02FC2"
    %endif
    times 3 - ($ - %%insn_02fc2) db 0
    %%insn_02fc5:
    mov [0xd68c],ax ; 02FC5 A38CD6
    %if ($ - %%insn_02fc5) > 3
        %error "LONG_02FC5"
    %endif
    times 3 - ($ - %%insn_02fc5) db 0
    %%insn_02fc8:
    mov [0xd68e],ax ; 02FC8 A38ED6
    %if ($ - %%insn_02fc8) > 3
        %error "LONG_02FC8"
    %endif
    times 3 - ($ - %%insn_02fc8) db 0
    %%insn_02fcb:
    mov [0xd690],ax ; 02FCB A390D6
    %if ($ - %%insn_02fcb) > 3
        %error "LONG_02FCB"
    %endif
    times 3 - ($ - %%insn_02fcb) db 0
    %%insn_02fce:
    mov [0xd692],ax ; 02FCE A392D6
    %if ($ - %%insn_02fce) > 3
        %error "LONG_02FCE"
    %endif
    times 3 - ($ - %%insn_02fce) db 0
    %%insn_02fd1:
    mov [0xd694],ax ; 02FD1 A394D6
    %if ($ - %%insn_02fd1) > 3
        %error "LONG_02FD1"
    %endif
    times 3 - ($ - %%insn_02fd1) db 0
    %%insn_02fd4:
    mov [0xd696],ax ; 02FD4 A396D6
    %if ($ - %%insn_02fd4) > 3
        %error "LONG_02FD4"
    %endif
    times 3 - ($ - %%insn_02fd4) db 0
    %%insn_02fd7:
    mov [0xd698],ax ; 02FD7 A398D6
    %if ($ - %%insn_02fd7) > 3
        %error "LONG_02FD7"
    %endif
    times 3 - ($ - %%insn_02fd7) db 0
    %%insn_02fda:
    mov word [0xd69a],0x4649 ; 02FDA C7069AD64946
    %if ($ - %%insn_02fda) > 6
        %error "LONG_02FDA"
    %endif
    times 6 - ($ - %%insn_02fda) db 0
    %%insn_02fe0:
    mov si,0x1 ; 02FE0 BE0100
    %if ($ - %%insn_02fe0) > 3
        %error "LONG_02FE0"
    %endif
    times 3 - ($ - %%insn_02fe0) db 0
    %%insn_02fe3:
    mov ax,0x893 ; 02FE3 B89308
    %if ($ - %%insn_02fe3) > 3
        %error "LONG_02FE3"
    %endif
    times 3 - ($ - %%insn_02fe3) db 0
    %%insn_02fe6:
    mov es,ax ; 02FE6 8EC0
    %if ($ - %%insn_02fe6) > 2
        %error "LONG_02FE6"
    %endif
    times 2 - ($ - %%insn_02fe6) db 0
    %%insn_02fe8:
    mov di,0xcb20 ; 02FE8 BF20CB
    %if ($ - %%insn_02fe8) > 3
        %error "LONG_02FE8"
    %endif
    times 3 - ($ - %%insn_02fe8) db 0
    %%insn_02feb:
    mov ax,0x4f00 ; 02FEB B8004F
    %if ($ - %%insn_02feb) > 3
        %error "LONG_02FEB"
    %endif
    times 3 - ($ - %%insn_02feb) db 0
    %%insn_02fee:
    int byte 0x10 ; 02FEE CD10
    %if ($ - %%insn_02fee) > 2
        %error "LONG_02FEE"
    %endif
    times 2 - ($ - %%insn_02fee) db 0
    db 0x3D, 0x4F, 0x00 ; 02FF0 3D4F00 | cmp ax,0x4f | encoding preserved
    %%insn_02ff3:
    jnz short 0x305c ; 02FF3 7567
    %if ($ - %%insn_02ff3) > 2
        %error "LONG_02FF3"
    %endif
    times 2 - ($ - %%insn_02ff3) db 0
    %%insn_02ff5:
    mov ax,0x893 ; 02FF5 B89308
    %if ($ - %%insn_02ff5) > 3
        %error "LONG_02FF5"
    %endif
    times 3 - ($ - %%insn_02ff5) db 0
    %%insn_02ff8:
    mov ds,ax ; 02FF8 8ED8
    %if ($ - %%insn_02ff8) > 2
        %error "LONG_02FF8"
    %endif
    times 2 - ($ - %%insn_02ff8) db 0
    %%insn_02ffa:
    mov di,0xcb20 ; 02FFA BF20CB
    %if ($ - %%insn_02ffa) > 3
        %error "LONG_02FFA"
    %endif
    times 3 - ($ - %%insn_02ffa) db 0
    %%insn_02ffd:
    cmp byte [di],0x56 ; 02FFD 803D56
    %if ($ - %%insn_02ffd) > 3
        %error "LONG_02FFD"
    %endif
    times 3 - ($ - %%insn_02ffd) db 0
    %%insn_03000:
    jnz short 0x305c ; 03000 755A
    %if ($ - %%insn_03000) > 2
        %error "LONG_03000"
    %endif
    times 2 - ($ - %%insn_03000) db 0
    %%insn_03002:
    cmp byte [di+0x1],0x45 ; 03002 807D0145
    %if ($ - %%insn_03002) > 4
        %error "LONG_03002"
    %endif
    times 4 - ($ - %%insn_03002) db 0
    %%insn_03006:
    jnz short 0x305c ; 03006 7554
    %if ($ - %%insn_03006) > 2
        %error "LONG_03006"
    %endif
    times 2 - ($ - %%insn_03006) db 0
    %%insn_03008:
    cmp byte [di+0x2],0x53 ; 03008 807D0253
    %if ($ - %%insn_03008) > 4
        %error "LONG_03008"
    %endif
    times 4 - ($ - %%insn_03008) db 0
    %%insn_0300c:
    jnz short 0x305c ; 0300C 754E
    %if ($ - %%insn_0300c) > 2
        %error "LONG_0300C"
    %endif
    times 2 - ($ - %%insn_0300c) db 0
    %%insn_0300e:
    cmp byte [di+0x3],0x41 ; 0300E 807D0341
    %if ($ - %%insn_0300e) > 4
        %error "LONG_0300E"
    %endif
    times 4 - ($ - %%insn_0300e) db 0
    %%insn_03012:
    jnz short 0x305c ; 03012 7548
    %if ($ - %%insn_03012) > 2
        %error "LONG_03012"
    %endif
    times 2 - ($ - %%insn_03012) db 0
    %%insn_03014:
    mov ax,0x4f01 ; 03014 B8014F
    %if ($ - %%insn_03014) > 3
        %error "LONG_03014"
    %endif
    times 3 - ($ - %%insn_03014) db 0
    %%insn_03017:
    mov cx,0x101 ; 03017 B90101
    %if ($ - %%insn_03017) > 3
        %error "LONG_03017"
    %endif
    times 3 - ($ - %%insn_03017) db 0
    %%insn_0301a:
    int byte 0x10 ; 0301A CD10
    %if ($ - %%insn_0301a) > 2
        %error "LONG_0301A"
    %endif
    times 2 - ($ - %%insn_0301a) db 0
    %%insn_0301c:
    mov al,[di+0x4] ; 0301C 8A4504
    %if ($ - %%insn_0301c) > 3
        %error "LONG_0301C"
    %endif
    times 3 - ($ - %%insn_0301c) db 0
    %%insn_0301f:
    mov [0xd6b0],al ; 0301F A2B0D6
    %if ($ - %%insn_0301f) > 3
        %error "LONG_0301F"
    %endif
    times 3 - ($ - %%insn_0301f) db 0
    %%insn_03022:
    mov ax,[di+0xc] ; 03022 8B450C
    %if ($ - %%insn_03022) > 3
        %error "LONG_03022"
    %endif
    times 3 - ($ - %%insn_03022) db 0
    %%insn_03025:
    mov [0xd664],ax ; 03025 A364D6
    %if ($ - %%insn_03025) > 3
        %error "LONG_03025"
    %endif
    times 3 - ($ - %%insn_03025) db 0
    %%insn_03028:
    mov ax,[di+0xe] ; 03028 8B450E
    %if ($ - %%insn_03028) > 3
        %error "LONG_03028"
    %endif
    times 3 - ($ - %%insn_03028) db 0
    %%insn_0302b:
    mov [0xd666],ax ; 0302B A366D6
    %if ($ - %%insn_0302b) > 3
        %error "LONG_0302B"
    %endif
    times 3 - ($ - %%insn_0302b) db 0
    %%insn_0302e:
    mov ax,[di+0x10] ; 0302E 8B4510
    %if ($ - %%insn_0302e) > 3
        %error "LONG_0302E"
    %endif
    times 3 - ($ - %%insn_0302e) db 0
    %%insn_03031:
    mov [bp-0x2996],ax ; 03031 89866AD6
    %if ($ - %%insn_03031) > 4
        %error "LONG_03031"
    %endif
    times 4 - ($ - %%insn_03031) db 0
    %%insn_03035:
    mov word [0xd696],0x1 ; 03035 C70696D60100
    %if ($ - %%insn_03035) > 6
        %error "LONG_03035"
    %endif
    times 6 - ($ - %%insn_03035) db 0
    %%insn_0303b:
    mov word [0xd660],0x2f50 ; 0303B C70660D6502F
    %if ($ - %%insn_0303b) > 6
        %error "LONG_0303B"
    %endif
    times 6 - ($ - %%insn_0303b) db 0
    %%insn_03041:
    mov word [0xd662],0x682 ; 03041 C70662D68206
    %if ($ - %%insn_03041) > 6
        %error "LONG_03041"
    %endif
    times 6 - ($ - %%insn_03041) db 0
    %%insn_03047:
    mov word [0xd696],0x0 ; 03047 C70696D60000
    %if ($ - %%insn_03047) > 6
        %error "LONG_03047"
    %endif
    times 6 - ($ - %%insn_03047) db 0
    %%insn_0304d:
    mov word [0xd696],0x1 ; 0304D C70696D60100
    %if ($ - %%insn_0304d) > 6
        %error "LONG_0304D"
    %endif
    times 6 - ($ - %%insn_0304d) db 0
    %%insn_03053:
    mov word [0xd66c],0x1 ; 03053 C7066CD60100
    %if ($ - %%insn_03053) > 6
        %error "LONG_03053"
    %endif
    times 6 - ($ - %%insn_03053) db 0
    %%insn_03059:
    jmp 0x33a7 ; 03059 E94B03
    %if ($ - %%insn_03059) > 3
        %error "LONG_03059"
    %endif
    times 3 - ($ - %%insn_03059) db 0
    %%insn_0305c:
    mov ax,0xc000 ; 0305C B800C0
    %if ($ - %%insn_0305c) > 3
        %error "LONG_0305C"
    %endif
    times 3 - ($ - %%insn_0305c) db 0
    %%insn_0305f:
    mov es,ax ; 0305F 8EC0
    %if ($ - %%insn_0305f) > 2
        %error "LONG_0305F"
    %endif
    times 2 - ($ - %%insn_0305f) db 0
    %%insn_03061:
    cmp word [es:0x40],0x3133 ; 03061 26813E40003331
    %if ($ - %%insn_03061) > 7
        %error "LONG_03061"
    %endif
    times 7 - ($ - %%insn_03061) db 0
    %%insn_03068:
    jnz short 0x3092 ; 03068 7528
    %if ($ - %%insn_03068) > 2
        %error "LONG_03068"
    %endif
    times 2 - ($ - %%insn_03068) db 0
    %%insn_0306a:
    mov word [0xd682],0x1 ; 0306A C70682D60100
    %if ($ - %%insn_0306a) > 6
        %error "LONG_0306A"
    %endif
    times 6 - ($ - %%insn_0306a) db 0
    %%insn_03070:
    mov word [0xd660],0x2e64 ; 03070 C70660D6642E
    %if ($ - %%insn_03070) > 6
        %error "LONG_03070"
    %endif
    times 6 - ($ - %%insn_03070) db 0
    %%insn_03076:
    mov word [0xd662],0x4ee ; 03076 C70662D6EE04
    %if ($ - %%insn_03076) > 6
        %error "LONG_03076"
    %endif
    times 6 - ($ - %%insn_03076) db 0
    %%insn_0307c:
    mov dx,0x1ce ; 0307C BACE01
    %if ($ - %%insn_0307c) > 3
        %error "LONG_0307C"
    %endif
    times 3 - ($ - %%insn_0307c) db 0
    %%insn_0307f:
    mov al,0xbb ; 0307F B0BB
    %if ($ - %%insn_0307f) > 2
        %error "LONG_0307F"
    %endif
    times 2 - ($ - %%insn_0307f) db 0
    %%insn_03081:
    out dx,al ; 03081 EE
    %if ($ - %%insn_03081) > 1
        %error "LONG_03081"
    %endif
    times 1 - ($ - %%insn_03081) db 0
    %%insn_03082:
    inc dl ; 03082 FEC2
    %if ($ - %%insn_03082) > 2
        %error "LONG_03082"
    %endif
    times 2 - ($ - %%insn_03082) db 0
    %%insn_03084:
    in al,dx ; 03084 EC
    %if ($ - %%insn_03084) > 1
        %error "LONG_03084"
    %endif
    times 1 - ($ - %%insn_03084) db 0
    %%insn_03085:
    and al,0x20 ; 03085 2420
    %if ($ - %%insn_03085) > 2
        %error "LONG_03085"
    %endif
    times 2 - ($ - %%insn_03085) db 0
    %%insn_03087:
    jz short 0x308f ; 03087 7406
    %if ($ - %%insn_03087) > 2
        %error "LONG_03087"
    %endif
    times 2 - ($ - %%insn_03087) db 0
    %%insn_03089:
    mov word [0xd66c],0x1 ; 03089 C7066CD60100
    %if ($ - %%insn_03089) > 6
        %error "LONG_03089"
    %endif
    times 6 - ($ - %%insn_03089) db 0
    %%insn_0308f:
    jmp 0x33a7 ; 0308F E91503
    %if ($ - %%insn_0308f) > 3
        %error "LONG_0308F"
    %endif
    times 3 - ($ - %%insn_0308f) db 0
    %%insn_03092:
    mov ax,0x7000 ; 03092 B80070
    %if ($ - %%insn_03092) > 3
        %error "LONG_03092"
    %endif
    times 3 - ($ - %%insn_03092) db 0
    db 0x33, 0xDB ; 03095 33DB | xor bx,bx | encoding preserved
    %%insn_03097:
    cld ; 03097 FC
    %if ($ - %%insn_03097) > 1
        %error "LONG_03097"
    %endif
    times 1 - ($ - %%insn_03097) db 0
    %%insn_03098:
    int byte 0x10 ; 03098 CD10
    %if ($ - %%insn_03098) > 2
        %error "LONG_03098"
    %endif
    times 2 - ($ - %%insn_03098) db 0
    %%insn_0309a:
    cmp al,0x70 ; 0309A 3C70
    %if ($ - %%insn_0309a) > 2
        %error "LONG_0309A"
    %endif
    times 2 - ($ - %%insn_0309a) db 0
    %%insn_0309c:
    jnz short 0x30bb ; 0309C 751D
    %if ($ - %%insn_0309c) > 2
        %error "LONG_0309C"
    %endif
    times 2 - ($ - %%insn_0309c) db 0
    %%insn_0309e:
    mov word [0xd678],0x1 ; 0309E C70678D60100
    %if ($ - %%insn_0309e) > 6
        %error "LONG_0309E"
    %endif
    times 6 - ($ - %%insn_0309e) db 0
    %%insn_030a4:
    mov word [0xd660],0x2e80 ; 030A4 C70660D6802E
    %if ($ - %%insn_030a4) > 6
        %error "LONG_030A4"
    %endif
    times 6 - ($ - %%insn_030a4) db 0
    %%insn_030aa:
    mov word [0xd662],0x3d0 ; 030AA C70662D6D003
    %if ($ - %%insn_030aa) > 6
        %error "LONG_030AA"
    %endif
    times 6 - ($ - %%insn_030aa) db 0
    %%insn_030b0:
    and ch,0xc0 ; 030B0 80E5C0
    %if ($ - %%insn_030b0) > 3
        %error "LONG_030B0"
    %endif
    times 3 - ($ - %%insn_030b0) db 0
    %%insn_030b3:
    jz short 0x30bb ; 030B3 7406
    %if ($ - %%insn_030b3) > 2
        %error "LONG_030B3"
    %endif
    times 2 - ($ - %%insn_030b3) db 0
    %%insn_030b5:
    mov word [0xd66c],0x1 ; 030B5 C7066CD60100
    %if ($ - %%insn_030b5) > 6
        %error "LONG_030B5"
    %endif
    times 6 - ($ - %%insn_030b5) db 0
    %%insn_030bb:
    mov ax,0xbf03 ; 030BB B803BF
    %if ($ - %%insn_030bb) > 3
        %error "LONG_030BB"
    %endif
    times 3 - ($ - %%insn_030bb) db 0
    db 0x33, 0xDB ; 030BE 33DB | xor bx,bx | encoding preserved
    db 0x8B, 0xCB ; 030C0 8BCB | mov cx,bx | encoding preserved
    %%insn_030c2:
    int byte 0x10 ; 030C2 CD10
    %if ($ - %%insn_030c2) > 2
        %error "LONG_030C2"
    %endif
    times 2 - ($ - %%insn_030c2) db 0
    %%insn_030c4:
    cmp ax,0xbf03 ; 030C4 3D03BF
    %if ($ - %%insn_030c4) > 3
        %error "LONG_030C4"
    %endif
    times 3 - ($ - %%insn_030c4) db 0
    %%insn_030c7:
    jnz short 0x30e9 ; 030C7 7520
    %if ($ - %%insn_030c7) > 2
        %error "LONG_030C7"
    %endif
    times 2 - ($ - %%insn_030c7) db 0
    %%insn_030c9:
    test cl,0x40 ; 030C9 F6C140
    %if ($ - %%insn_030c9) > 3
        %error "LONG_030C9"
    %endif
    times 3 - ($ - %%insn_030c9) db 0
    %%insn_030cc:
    jz short 0x30e9 ; 030CC 741B
    %if ($ - %%insn_030cc) > 2
        %error "LONG_030CC"
    %endif
    times 2 - ($ - %%insn_030cc) db 0
    %%insn_030ce:
    mov word [0xd694],0x1 ; 030CE C70694D60100
    %if ($ - %%insn_030ce) > 6
        %error "LONG_030CE"
    %endif
    times 6 - ($ - %%insn_030ce) db 0
    %%insn_030d4:
    mov word [0xd660],0x2f38 ; 030D4 C70660D6382F
    %if ($ - %%insn_030d4) > 6
        %error "LONG_030D4"
    %endif
    times 6 - ($ - %%insn_030d4) db 0
    %%insn_030da:
    mov word [0xd662],0x663 ; 030DA C70662D66306
    %if ($ - %%insn_030da) > 6
        %error "LONG_030DA"
    %endif
    times 6 - ($ - %%insn_030da) db 0
    %%insn_030e0:
    mov word [0xd66c],0x1 ; 030E0 C7066CD60100
    %if ($ - %%insn_030e0) > 6
        %error "LONG_030E0"
    %endif
    times 6 - ($ - %%insn_030e0) db 0
    %%insn_030e6:
    jmp 0x33a7 ; 030E6 E9BE02
    %if ($ - %%insn_030e6) > 3
        %error "LONG_030E6"
    %endif
    times 3 - ($ - %%insn_030e6) db 0
    %%insn_030e9:
    mov dx,0x3c4 ; 030E9 BAC403
    %if ($ - %%insn_030e9) > 3
        %error "LONG_030E9"
    %endif
    times 3 - ($ - %%insn_030e9) db 0
    %%insn_030ec:
    mov ax,0xff05 ; 030EC B805FF
    %if ($ - %%insn_030ec) > 3
        %error "LONG_030EC"
    %endif
    times 3 - ($ - %%insn_030ec) db 0
    %%insn_030ef:
    call 0x345e ; 030EF E86C03
    %if ($ - %%insn_030ef) > 3
        %error "LONG_030EF"
    %endif
    times 3 - ($ - %%insn_030ef) db 0
    %%insn_030f2:
    jnz short 0x3127 ; 030F2 7533
    %if ($ - %%insn_030f2) > 2
        %error "LONG_030F2"
    %endif
    times 2 - ($ - %%insn_030f2) db 0
    %%insn_030f4:
    mov ax,0x5 ; 030F4 B80500
    %if ($ - %%insn_030f4) > 3
        %error "LONG_030F4"
    %endif
    times 3 - ($ - %%insn_030f4) db 0
    %%insn_030f7:
    out dx,ax ; 030F7 EF
    %if ($ - %%insn_030f7) > 1
        %error "LONG_030F7"
    %endif
    times 1 - ($ - %%insn_030f7) db 0
    %%insn_030f8:
    mov ax,0xff10 ; 030F8 B810FF
    %if ($ - %%insn_030f8) > 3
        %error "LONG_030F8"
    %endif
    times 3 - ($ - %%insn_030f8) db 0
    %%insn_030fb:
    call 0x345e ; 030FB E86003
    %if ($ - %%insn_030fb) > 3
        %error "LONG_030FB"
    %endif
    times 3 - ($ - %%insn_030fb) db 0
    %%insn_030fe:
    jz short 0x3127 ; 030FE 7427
    %if ($ - %%insn_030fe) > 2
        %error "LONG_030FE"
    %endif
    times 2 - ($ - %%insn_030fe) db 0
    %%insn_03100:
    mov ax,0x105 ; 03100 B80501
    %if ($ - %%insn_03100) > 3
        %error "LONG_03100"
    %endif
    times 3 - ($ - %%insn_03100) db 0
    %%insn_03103:
    out dx,ax ; 03103 EF
    %if ($ - %%insn_03103) > 1
        %error "LONG_03103"
    %endif
    times 1 - ($ - %%insn_03103) db 0
    %%insn_03104:
    mov ax,0xff10 ; 03104 B810FF
    %if ($ - %%insn_03104) > 3
        %error "LONG_03104"
    %endif
    times 3 - ($ - %%insn_03104) db 0
    %%insn_03107:
    call 0x345e ; 03107 E85403
    %if ($ - %%insn_03107) > 3
        %error "LONG_03107"
    %endif
    times 3 - ($ - %%insn_03107) db 0
    %%insn_0310a:
    jnz short 0x3127 ; 0310A 751B
    %if ($ - %%insn_0310a) > 2
        %error "LONG_0310A"
    %endif
    times 2 - ($ - %%insn_0310a) db 0
    %%insn_0310c:
    mov word [0xd692],0x1 ; 0310C C70692D60100
    %if ($ - %%insn_0310c) > 6
        %error "LONG_0310C"
    %endif
    times 6 - ($ - %%insn_0310c) db 0
    %%insn_03112:
    mov word [0xd660],0x2f24 ; 03112 C70660D6242F
    %if ($ - %%insn_03112) > 6
        %error "LONG_03112"
    %endif
    times 6 - ($ - %%insn_03112) db 0
    %%insn_03118:
    mov word [0xd662],0x647 ; 03118 C70662D64706
    %if ($ - %%insn_03118) > 6
        %error "LONG_03118"
    %endif
    times 6 - ($ - %%insn_03118) db 0
    %%insn_0311e:
    mov word [0xd66c],0x1 ; 0311E C7066CD60100
    %if ($ - %%insn_0311e) > 6
        %error "LONG_0311E"
    %endif
    times 6 - ($ - %%insn_0311e) db 0
    %%insn_03124:
    jmp 0x33a7 ; 03124 E98002
    %if ($ - %%insn_03124) > 3
        %error "LONG_03124"
    %endif
    times 3 - ($ - %%insn_03124) db 0
    %%insn_03127:
    mov dx,0x3c4 ; 03127 BAC403
    %if ($ - %%insn_03127) > 3
        %error "LONG_03127"
    %endif
    times 3 - ($ - %%insn_03127) db 0
    %%insn_0312a:
    mov al,0xb ; 0312A B00B
    %if ($ - %%insn_0312a) > 2
        %error "LONG_0312A"
    %endif
    times 2 - ($ - %%insn_0312a) db 0
    %%insn_0312c:
    out dx,al ; 0312C EE
    %if ($ - %%insn_0312c) > 1
        %error "LONG_0312C"
    %endif
    times 1 - ($ - %%insn_0312c) db 0
    %%insn_0312d:
    inc dl ; 0312D FEC2
    %if ($ - %%insn_0312d) > 2
        %error "LONG_0312D"
    %endif
    times 2 - ($ - %%insn_0312d) db 0
    %%insn_0312f:
    in al,dx ; 0312F EC
    %if ($ - %%insn_0312f) > 1
        %error "LONG_0312F"
    %endif
    times 1 - ($ - %%insn_0312f) db 0
    %%insn_03130:
    cmp al,0x6 ; 03130 3C06
    %if ($ - %%insn_03130) > 2
        %error "LONG_03130"
    %endif
    times 2 - ($ - %%insn_03130) db 0
    %%insn_03132:
    ja short 0x3174 ; 03132 7740
    %if ($ - %%insn_03132) > 2
        %error "LONG_03132"
    %endif
    times 2 - ($ - %%insn_03132) db 0
    %%insn_03134:
    cmp al,0x2 ; 03134 3C02
    %if ($ - %%insn_03134) > 2
        %error "LONG_03134"
    %endif
    times 2 - ($ - %%insn_03134) db 0
    %%insn_03136:
    jc short 0x3174 ; 03136 723C
    %if ($ - %%insn_03136) > 2
        %error "LONG_03136"
    %endif
    times 2 - ($ - %%insn_03136) db 0
    %%insn_03138:
    mov word [0xd67e],0x1 ; 03138 C7067ED60100
    %if ($ - %%insn_03138) > 6
        %error "LONG_03138"
    %endif
    times 6 - ($ - %%insn_03138) db 0
    %%insn_0313e:
    mov word [0xd660],0x2dae ; 0313E C70660D6AE2D
    %if ($ - %%insn_0313e) > 6
        %error "LONG_0313E"
    %endif
    times 6 - ($ - %%insn_0313e) db 0
    %%insn_03144:
    mov word [0xd662],0x499 ; 03144 C70662D69904
    %if ($ - %%insn_03144) > 6
        %error "LONG_03144"
    %endif
    times 6 - ($ - %%insn_03144) db 0
    %%insn_0314a:
    cmp al,0x3 ; 0314A 3C03
    %if ($ - %%insn_0314a) > 2
        %error "LONG_0314A"
    %endif
    times 2 - ($ - %%insn_0314a) db 0
    %%insn_0314c:
    jc short 0x316b ; 0314C 721D
    %if ($ - %%insn_0314c) > 2
        %error "LONG_0314C"
    %endif
    times 2 - ($ - %%insn_0314c) db 0
    %%insn_0314e:
    mov word [0xd680],0x1 ; 0314E C70680D60100
    %if ($ - %%insn_0314e) > 6
        %error "LONG_0314E"
    %endif
    times 6 - ($ - %%insn_0314e) db 0
    %%insn_03154:
    mov dx,0x3d5 ; 03154 BAD503
    %if ($ - %%insn_03154) > 3
        %error "LONG_03154"
    %endif
    times 3 - ($ - %%insn_03154) db 0
    %%insn_03157:
    mov al,0x1f ; 03157 B01F
    %if ($ - %%insn_03157) > 2
        %error "LONG_03157"
    %endif
    times 2 - ($ - %%insn_03157) db 0
    %%insn_03159:
    out dx,al ; 03159 EE
    %if ($ - %%insn_03159) > 1
        %error "LONG_03159"
    %endif
    times 1 - ($ - %%insn_03159) db 0
    %%insn_0315a:
    inc dx ; 0315A 42
    %if ($ - %%insn_0315a) > 1
        %error "LONG_0315A"
    %endif
    times 1 - ($ - %%insn_0315a) db 0
    %%insn_0315b:
    in al,dx ; 0315B EC
    %if ($ - %%insn_0315b) > 1
        %error "LONG_0315B"
    %endif
    times 1 - ($ - %%insn_0315b) db 0
    %%insn_0315c:
    and al,0x3 ; 0315C 2403
    %if ($ - %%insn_0315c) > 2
        %error "LONG_0315C"
    %endif
    times 2 - ($ - %%insn_0315c) db 0
    %%insn_0315e:
    cmp al,0x1 ; 0315E 3C01
    %if ($ - %%insn_0315e) > 2
        %error "LONG_0315E"
    %endif
    times 2 - ($ - %%insn_0315e) db 0
    %%insn_03160:
    jc short 0x3168 ; 03160 7206
    %if ($ - %%insn_03160) > 2
        %error "LONG_03160"
    %endif
    times 2 - ($ - %%insn_03160) db 0
    %%insn_03162:
    mov word [0xd66c],0x1 ; 03162 C7066CD60100
    %if ($ - %%insn_03162) > 6
        %error "LONG_03162"
    %endif
    times 6 - ($ - %%insn_03162) db 0
    %%insn_03168:
    jmp 0x33a7 ; 03168 E93C02
    %if ($ - %%insn_03168) > 3
        %error "LONG_03168"
    %endif
    times 3 - ($ - %%insn_03168) db 0
    %%insn_0316b:
    mov word [0xd66c],0x1 ; 0316B C7066CD60100
    %if ($ - %%insn_0316b) > 6
        %error "LONG_0316B"
    %endif
    times 6 - ($ - %%insn_0316b) db 0
    %%insn_03171:
    jmp 0x33a7 ; 03171 E93302
    %if ($ - %%insn_03171) > 3
        %error "LONG_03171"
    %endif
    times 3 - ($ - %%insn_03171) db 0
    %%insn_03174:
    mov ax,0x6f00 ; 03174 B8006F
    %if ($ - %%insn_03174) > 3
        %error "LONG_03174"
    %endif
    times 3 - ($ - %%insn_03174) db 0
    db 0x33, 0xDB ; 03177 33DB | xor bx,bx | encoding preserved
    %%insn_03179:
    cld ; 03179 FC
    %if ($ - %%insn_03179) > 1
        %error "LONG_03179"
    %endif
    times 1 - ($ - %%insn_03179) db 0
    %%insn_0317a:
    int byte 0x10 ; 0317A CD10
    %if ($ - %%insn_0317a) > 2
        %error "LONG_0317A"
    %endif
    times 2 - ($ - %%insn_0317a) db 0
    %%insn_0317c:
    cmp bx,0x5637 ; 0317C 81FB3756
    %if ($ - %%insn_0317c) > 4
        %error "LONG_0317C"
    %endif
    times 4 - ($ - %%insn_0317c) db 0
    %%insn_03180:
    jnz short 0x31b6 ; 03180 7534
    %if ($ - %%insn_03180) > 2
        %error "LONG_03180"
    %endif
    times 2 - ($ - %%insn_03180) db 0
    %%insn_03182:
    mov word [0xd68a],0x1 ; 03182 C7068AD60100
    %if ($ - %%insn_03182) > 6
        %error "LONG_03182"
    %endif
    times 6 - ($ - %%insn_03182) db 0
    %%insn_03188:
    mov word [0xd660],0x2dde ; 03188 C70660D6DE2D
    %if ($ - %%insn_03188) > 6
        %error "LONG_03188"
    %endif
    times 6 - ($ - %%insn_03188) db 0
    %%insn_0318e:
    mov word [0xd662],0x570 ; 0318E C70662D67005
    %if ($ - %%insn_0318e) > 6
        %error "LONG_0318E"
    %endif
    times 6 - ($ - %%insn_0318e) db 0
    %%insn_03194:
    mov ax,0x6f07 ; 03194 B8076F
    %if ($ - %%insn_03194) > 3
        %error "LONG_03194"
    %endif
    times 3 - ($ - %%insn_03194) db 0
    %%insn_03197:
    cld ; 03197 FC
    %if ($ - %%insn_03197) > 1
        %error "LONG_03197"
    %endif
    times 1 - ($ - %%insn_03197) db 0
    %%insn_03198:
    int byte 0x10 ; 03198 CD10
    %if ($ - %%insn_03198) > 2
        %error "LONG_03198"
    %endif
    times 2 - ($ - %%insn_03198) db 0
    %%insn_0319a:
    and ah,0x7f ; 0319A 80E47F
    %if ($ - %%insn_0319a) > 3
        %error "LONG_0319A"
    %endif
    times 3 - ($ - %%insn_0319a) db 0
    %%insn_0319d:
    cmp ah,0x1 ; 0319D 80FC01
    %if ($ - %%insn_0319d) > 3
        %error "LONG_0319D"
    %endif
    times 3 - ($ - %%insn_0319d) db 0
    %%insn_031a0:
    jna short 0x31a8 ; 031A0 7606
    %if ($ - %%insn_031a0) > 2
        %error "LONG_031A0"
    %endif
    times 2 - ($ - %%insn_031a0) db 0
    %%insn_031a2:
    mov word [0xd66c],0x1 ; 031A2 C7066CD60100
    %if ($ - %%insn_031a2) > 6
        %error "LONG_031A2"
    %endif
    times 6 - ($ - %%insn_031a2) db 0
    %%insn_031a8:
    cmp ah,0x3 ; 031A8 80FC03
    %if ($ - %%insn_031a8) > 3
        %error "LONG_031A8"
    %endif
    times 3 - ($ - %%insn_031a8) db 0
    %%insn_031ab:
    jna short 0x31b3 ; 031AB 7606
    %if ($ - %%insn_031ab) > 2
        %error "LONG_031AB"
    %endif
    times 2 - ($ - %%insn_031ab) db 0
    %%insn_031ad:
    mov word [0xd66c],0x1 ; 031AD C7066CD60100
    %if ($ - %%insn_031ad) > 6
        %error "LONG_031AD"
    %endif
    times 6 - ($ - %%insn_031ad) db 0
    %%insn_031b3:
    jmp 0x33a7 ; 031B3 E9F101
    %if ($ - %%insn_031b3) > 3
        %error "LONG_031B3"
    %endif
    times 3 - ($ - %%insn_031b3) db 0
    %%insn_031b6:
    mov dx,0x3d4 ; 031B6 BAD403
    %if ($ - %%insn_031b6) > 3
        %error "LONG_031B6"
    %endif
    times 3 - ($ - %%insn_031b6) db 0
    %%insn_031b9:
    mov ax,0x32e ; 031B9 B82E03
    %if ($ - %%insn_031b9) > 3
        %error "LONG_031B9"
    %endif
    times 3 - ($ - %%insn_031b9) db 0
    %%insn_031bc:
    call 0x345e ; 031BC E89F02
    %if ($ - %%insn_031bc) > 3
        %error "LONG_031BC"
    %endif
    times 3 - ($ - %%insn_031bc) db 0
    %%insn_031bf:
    jnz short 0x31e7 ; 031BF 7526
    %if ($ - %%insn_031bf) > 2
        %error "LONG_031BF"
    %endif
    times 2 - ($ - %%insn_031bf) db 0
    %%insn_031c1:
    mov dx,0x3c4 ; 031C1 BAC403
    %if ($ - %%insn_031c1) > 3
        %error "LONG_031C1"
    %endif
    times 3 - ($ - %%insn_031c1) db 0
    %%insn_031c4:
    mov ax,0x3f06 ; 031C4 B8063F
    %if ($ - %%insn_031c4) > 3
        %error "LONG_031C4"
    %endif
    times 3 - ($ - %%insn_031c4) db 0
    %%insn_031c7:
    call 0x345e ; 031C7 E89402
    %if ($ - %%insn_031c7) > 3
        %error "LONG_031C7"
    %endif
    times 3 - ($ - %%insn_031c7) db 0
    %%insn_031ca:
    jnz short 0x31e7 ; 031CA 751B
    %if ($ - %%insn_031ca) > 2
        %error "LONG_031CA"
    %endif
    times 2 - ($ - %%insn_031ca) db 0
    %%insn_031cc:
    mov word [0xd690],0x1 ; 031CC C70690D60100
    %if ($ - %%insn_031cc) > 6
        %error "LONG_031CC"
    %endif
    times 6 - ($ - %%insn_031cc) db 0
    %%insn_031d2:
    mov word [0xd660],0x2f0e ; 031D2 C70660D60E2F
    %if ($ - %%insn_031d2) > 6
        %error "LONG_031D2"
    %endif
    times 6 - ($ - %%insn_031d2) db 0
    %%insn_031d8:
    mov word [0xd662],0x629 ; 031D8 C70662D62906
    %if ($ - %%insn_031d8) > 6
        %error "LONG_031D8"
    %endif
    times 6 - ($ - %%insn_031d8) db 0
    %%insn_031de:
    mov word [0xd66c],0x1 ; 031DE C7066CD60100
    %if ($ - %%insn_031de) > 6
        %error "LONG_031DE"
    %endif
    times 6 - ($ - %%insn_031de) db 0
    %%insn_031e4:
    jmp 0x33a7 ; 031E4 E9C001
    %if ($ - %%insn_031e4) > 3
        %error "LONG_031E4"
    %endif
    times 3 - ($ - %%insn_031e4) db 0
    %%insn_031e7:
    call 0x33b7 ; 031E7 E8CD01
    %if ($ - %%insn_031e7) > 3
        %error "LONG_031E7"
    %endif
    times 3 - ($ - %%insn_031e7) db 0
    %%insn_031ea:
    cmp word [0xd676],0x0 ; 031EA 833E76D600
    %if ($ - %%insn_031ea) > 5
        %error "LONG_031EA"
    %endif
    times 5 - ($ - %%insn_031ea) db 0
    %%insn_031ef:
    jz short 0x31f4 ; 031EF 7403
    %if ($ - %%insn_031ef) > 2
        %error "LONG_031EF"
    %endif
    times 2 - ($ - %%insn_031ef) db 0
    %%insn_031f1:
    jmp 0x33a7 ; 031F1 E9B301
    %if ($ - %%insn_031f1) > 3
        %error "LONG_031F1"
    %endif
    times 3 - ($ - %%insn_031f1) db 0
    %%insn_031f4:
    mov dx,0x3ce ; 031F4 BACE03
    %if ($ - %%insn_031f4) > 3
        %error "LONG_031F4"
    %endif
    times 3 - ($ - %%insn_031f4) db 0
    %%insn_031f7:
    mov al,0x9 ; 031F7 B009
    %if ($ - %%insn_031f7) > 2
        %error "LONG_031F7"
    %endif
    times 2 - ($ - %%insn_031f7) db 0
    %%insn_031f9:
    out dx,al ; 031F9 EE
    %if ($ - %%insn_031f9) > 1
        %error "LONG_031F9"
    %endif
    times 1 - ($ - %%insn_031f9) db 0
    %%insn_031fa:
    inc dx ; 031FA 42
    %if ($ - %%insn_031fa) > 1
        %error "LONG_031FA"
    %endif
    times 1 - ($ - %%insn_031fa) db 0
    %%insn_031fb:
    in al,dx ; 031FB EC
    %if ($ - %%insn_031fb) > 1
        %error "LONG_031FB"
    %endif
    times 1 - ($ - %%insn_031fb) db 0
    %%insn_031fc:
    dec dx ; 031FC 4A
    %if ($ - %%insn_031fc) > 1
        %error "LONG_031FC"
    %endif
    times 1 - ($ - %%insn_031fc) db 0
    db 0x0A, 0xC0 ; 031FD 0AC0 | or al,al | encoding preserved
    %%insn_031ff:
    jnz short 0x3237 ; 031FF 7536
    %if ($ - %%insn_031ff) > 2
        %error "LONG_031FF"
    %endif
    times 2 - ($ - %%insn_031ff) db 0
    %%insn_03201:
    mov ax,0x50f ; 03201 B80F05
    %if ($ - %%insn_03201) > 3
        %error "LONG_03201"
    %endif
    times 3 - ($ - %%insn_03201) db 0
    %%insn_03204:
    out dx,ax ; 03204 EF
    %if ($ - %%insn_03204) > 1
        %error "LONG_03204"
    %endif
    times 1 - ($ - %%insn_03204) db 0
    %%insn_03205:
    mov dx,0x3453 ; 03205 BA5334
    %if ($ - %%insn_03205) > 3
        %error "LONG_03205"
    %endif
    times 3 - ($ - %%insn_03205) db 0
    %%insn_03208:
    mov cx,0x1 ; 03208 B90100
    %if ($ - %%insn_03208) > 3
        %error "LONG_03208"
    %endif
    times 3 - ($ - %%insn_03208) db 0
    %%insn_0320b:
    call 0x33ff ; 0320B E8F101
    %if ($ - %%insn_0320b) > 3
        %error "LONG_0320B"
    %endif
    times 3 - ($ - %%insn_0320b) db 0
    %%insn_0320e:
    jc short 0x3237 ; 0320E 7227
    %if ($ - %%insn_0320e) > 2
        %error "LONG_0320E"
    %endif
    times 2 - ($ - %%insn_0320e) db 0
    %%insn_03210:
    mov word [0xd67a],0x1 ; 03210 C7067AD60100
    %if ($ - %%insn_03210) > 6
        %error "LONG_03210"
    %endif
    times 6 - ($ - %%insn_03210) db 0
    %%insn_03216:
    mov word [0xd660],0x2e24 ; 03216 C70660D6242E
    %if ($ - %%insn_03216) > 6
        %error "LONG_03216"
    %endif
    times 6 - ($ - %%insn_03216) db 0
    %%insn_0321c:
    mov word [0xd662],0x3ef ; 0321C C70662D6EF03
    %if ($ - %%insn_0321c) > 6
        %error "LONG_0321C"
    %endif
    times 6 - ($ - %%insn_0321c) db 0
    %%insn_03222:
    mov dx,0x3ce ; 03222 BACE03
    %if ($ - %%insn_03222) > 3
        %error "LONG_03222"
    %endif
    times 3 - ($ - %%insn_03222) db 0
    %%insn_03225:
    mov al,0xb ; 03225 B00B
    %if ($ - %%insn_03225) > 2
        %error "LONG_03225"
    %endif
    times 2 - ($ - %%insn_03225) db 0
    %%insn_03227:
    out dx,al ; 03227 EE
    %if ($ - %%insn_03227) > 1
        %error "LONG_03227"
    %endif
    times 1 - ($ - %%insn_03227) db 0
    %%insn_03228:
    inc dx ; 03228 42
    %if ($ - %%insn_03228) > 1
        %error "LONG_03228"
    %endif
    times 1 - ($ - %%insn_03228) db 0
    %%insn_03229:
    in al,dx ; 03229 EC
    %if ($ - %%insn_03229) > 1
        %error "LONG_03229"
    %endif
    times 1 - ($ - %%insn_03229) db 0
    %%insn_0322a:
    test al,0x80 ; 0322A A880
    %if ($ - %%insn_0322a) > 2
        %error "LONG_0322A"
    %endif
    times 2 - ($ - %%insn_0322a) db 0
    %%insn_0322c:
    jz short 0x3234 ; 0322C 7406
    %if ($ - %%insn_0322c) > 2
        %error "LONG_0322C"
    %endif
    times 2 - ($ - %%insn_0322c) db 0
    %%insn_0322e:
    mov word [0xd66c],0x1 ; 0322E C7066CD60100
    %if ($ - %%insn_0322e) > 6
        %error "LONG_0322E"
    %endif
    times 6 - ($ - %%insn_0322e) db 0
    %%insn_03234:
    jmp 0x33a7 ; 03234 E97001
    %if ($ - %%insn_03234) > 3
        %error "LONG_03234"
    %endif
    times 3 - ($ - %%insn_03234) db 0
    %%insn_03237:
    mov ax,0xc000 ; 03237 B800C0
    %if ($ - %%insn_03237) > 3
        %error "LONG_03237"
    %endif
    times 3 - ($ - %%insn_03237) db 0
    %%insn_0323a:
    mov es,ax ; 0323A 8EC0
    %if ($ - %%insn_0323a) > 2
        %error "LONG_0323A"
    %endif
    times 2 - ($ - %%insn_0323a) db 0
    %%insn_0323c:
    mov si,0x7d ; 0323C BE7D00
    %if ($ - %%insn_0323c) > 3
        %error "LONG_0323C"
    %endif
    times 3 - ($ - %%insn_0323c) db 0
    %%insn_0323f:
    cmp word [es:si],0x4756 ; 0323F 26813C5647
    %if ($ - %%insn_0323f) > 5
        %error "LONG_0323F"
    %endif
    times 5 - ($ - %%insn_0323f) db 0
    %%insn_03244:
    jnz short 0x3275 ; 03244 752F
    %if ($ - %%insn_03244) > 2
        %error "LONG_03244"
    %endif
    times 2 - ($ - %%insn_03244) db 0
    %%insn_03246:
    cmp word [es:si+0x2],0x3d41 ; 03246 26817C02413D
    %if ($ - %%insn_03246) > 6
        %error "LONG_03246"
    %endif
    times 6 - ($ - %%insn_03246) db 0
    %%insn_0324c:
    jnz short 0x3275 ; 0324C 7527
    %if ($ - %%insn_0324c) > 2
        %error "LONG_0324C"
    %endif
    times 2 - ($ - %%insn_0324c) db 0
    %%insn_0324e:
    mov word [0xd67a],0x1 ; 0324E C7067AD60100
    %if ($ - %%insn_0324e) > 6
        %error "LONG_0324E"
    %endif
    times 6 - ($ - %%insn_0324e) db 0
    %%insn_03254:
    mov word [0xd660],0x2e24 ; 03254 C70660D6242E
    %if ($ - %%insn_03254) > 6
        %error "LONG_03254"
    %endif
    times 6 - ($ - %%insn_03254) db 0
    %%insn_0325a:
    mov word [0xd662],0x3ef ; 0325A C70662D6EF03
    %if ($ - %%insn_0325a) > 6
        %error "LONG_0325A"
    %endif
    times 6 - ($ - %%insn_0325a) db 0
    %%insn_03260:
    mov dx,0x3ce ; 03260 BACE03
    %if ($ - %%insn_03260) > 3
        %error "LONG_03260"
    %endif
    times 3 - ($ - %%insn_03260) db 0
    %%insn_03263:
    mov al,0xb ; 03263 B00B
    %if ($ - %%insn_03263) > 2
        %error "LONG_03263"
    %endif
    times 2 - ($ - %%insn_03263) db 0
    %%insn_03265:
    out dx,al ; 03265 EE
    %if ($ - %%insn_03265) > 1
        %error "LONG_03265"
    %endif
    times 1 - ($ - %%insn_03265) db 0
    %%insn_03266:
    inc dx ; 03266 42
    %if ($ - %%insn_03266) > 1
        %error "LONG_03266"
    %endif
    times 1 - ($ - %%insn_03266) db 0
    %%insn_03267:
    in al,dx ; 03267 EC
    %if ($ - %%insn_03267) > 1
        %error "LONG_03267"
    %endif
    times 1 - ($ - %%insn_03267) db 0
    %%insn_03268:
    test al,0x80 ; 03268 A880
    %if ($ - %%insn_03268) > 2
        %error "LONG_03268"
    %endif
    times 2 - ($ - %%insn_03268) db 0
    %%insn_0326a:
    jz short 0x3272 ; 0326A 7406
    %if ($ - %%insn_0326a) > 2
        %error "LONG_0326A"
    %endif
    times 2 - ($ - %%insn_0326a) db 0
    %%insn_0326c:
    mov word [0xd66c],0x1 ; 0326C C7066CD60100
    %if ($ - %%insn_0326c) > 6
        %error "LONG_0326C"
    %endif
    times 6 - ($ - %%insn_0326c) db 0
    %%insn_03272:
    jmp 0x33a7 ; 03272 E93201
    %if ($ - %%insn_03272) > 3
        %error "LONG_03272"
    %endif
    times 3 - ($ - %%insn_03272) db 0
    %%insn_03275:
    mov ax,0x5f00 ; 03275 B8005F
    %if ($ - %%insn_03275) > 3
        %error "LONG_03275"
    %endif
    times 3 - ($ - %%insn_03275) db 0
    db 0x33, 0xDB ; 03278 33DB | xor bx,bx | encoding preserved
    %%insn_0327a:
    cld ; 0327A FC
    %if ($ - %%insn_0327a) > 1
        %error "LONG_0327A"
    %endif
    times 1 - ($ - %%insn_0327a) db 0
    %%insn_0327b:
    int byte 0x10 ; 0327B CD10
    %if ($ - %%insn_0327b) > 2
        %error "LONG_0327B"
    %endif
    times 2 - ($ - %%insn_0327b) db 0
    %%insn_0327d:
    cmp al,0x5f ; 0327D 3C5F
    %if ($ - %%insn_0327d) > 2
        %error "LONG_0327D"
    %endif
    times 2 - ($ - %%insn_0327d) db 0
    %%insn_0327f:
    jnz short 0x32a1 ; 0327F 7520
    %if ($ - %%insn_0327f) > 2
        %error "LONG_0327F"
    %endif
    times 2 - ($ - %%insn_0327f) db 0
    %%insn_03281:
    mov word [0xd68c],0x1 ; 03281 C7068CD60100
    %if ($ - %%insn_03281) > 6
        %error "LONG_03281"
    %endif
    times 6 - ($ - %%insn_03281) db 0
    %%insn_03287:
    mov word [0xd660],0x2e3c ; 03287 C70660D63C2E
    %if ($ - %%insn_03287) > 6
        %error "LONG_03287"
    %endif
    times 6 - ($ - %%insn_03287) db 0
    %%insn_0328d:
    mov word [0xd662],0x590 ; 0328D C70662D69005
    %if ($ - %%insn_0328d) > 6
        %error "LONG_0328D"
    %endif
    times 6 - ($ - %%insn_0328d) db 0
    %%insn_03293:
    cmp bh,0x1 ; 03293 80FF01
    %if ($ - %%insn_03293) > 3
        %error "LONG_03293"
    %endif
    times 3 - ($ - %%insn_03293) db 0
    %%insn_03296:
    jc short 0x329e ; 03296 7206
    %if ($ - %%insn_03296) > 2
        %error "LONG_03296"
    %endif
    times 2 - ($ - %%insn_03296) db 0
    %%insn_03298:
    mov word [0xd66c],0x1 ; 03298 C7066CD60100
    %if ($ - %%insn_03298) > 6
        %error "LONG_03298"
    %endif
    times 6 - ($ - %%insn_03298) db 0
    %%insn_0329e:
    jmp 0x33a7 ; 0329E E90601
    %if ($ - %%insn_0329e) > 3
        %error "LONG_0329E"
    %endif
    times 3 - ($ - %%insn_0329e) db 0
    %%insn_032a1:
    mov ch,0x0 ; 032A1 B500
    %if ($ - %%insn_032a1) > 2
        %error "LONG_032A1"
    %endif
    times 2 - ($ - %%insn_032a1) db 0
    %%insn_032a3:
    mov dx,0x3d4 ; 032A3 BAD403
    %if ($ - %%insn_032a3) > 3
        %error "LONG_032A3"
    %endif
    times 3 - ($ - %%insn_032a3) db 0
    %%insn_032a6:
    mov ax,0xf33 ; 032A6 B8330F
    %if ($ - %%insn_032a6) > 3
        %error "LONG_032A6"
    %endif
    times 3 - ($ - %%insn_032a6) db 0
    %%insn_032a9:
    call 0x345e ; 032A9 E8B201
    %if ($ - %%insn_032a9) > 3
        %error "LONG_032A9"
    %endif
    times 3 - ($ - %%insn_032a9) db 0
    %%insn_032ac:
    jnz short 0x32be ; 032AC 7510
    %if ($ - %%insn_032ac) > 2
        %error "LONG_032AC"
    %endif
    times 2 - ($ - %%insn_032ac) db 0
    %%insn_032ae:
    mov ch,0x1 ; 032AE B501
    %if ($ - %%insn_032ae) > 2
        %error "LONG_032AE"
    %endif
    times 2 - ($ - %%insn_032ae) db 0
    %%insn_032b0:
    mov dx,0x3bf ; 032B0 BABF03
    %if ($ - %%insn_032b0) > 3
        %error "LONG_032B0"
    %endif
    times 3 - ($ - %%insn_032b0) db 0
    %%insn_032b3:
    mov al,0x3 ; 032B3 B003
    %if ($ - %%insn_032b3) > 2
        %error "LONG_032B3"
    %endif
    times 2 - ($ - %%insn_032b3) db 0
    %%insn_032b5:
    out dx,al ; 032B5 EE
    %if ($ - %%insn_032b5) > 1
        %error "LONG_032B5"
    %endif
    times 1 - ($ - %%insn_032b5) db 0
    %%insn_032b6:
    mov dx,0x3d8 ; 032B6 BAD803
    %if ($ - %%insn_032b6) > 3
        %error "LONG_032B6"
    %endif
    times 3 - ($ - %%insn_032b6) db 0
    %%insn_032b9:
    mov al,0xa0 ; 032B9 B0A0
    %if ($ - %%insn_032b9) > 2
        %error "LONG_032B9"
    %endif
    times 2 - ($ - %%insn_032b9) db 0
    %%insn_032bb:
    out dx,al ; 032BB EE
    %if ($ - %%insn_032bb) > 1
        %error "LONG_032BB"
    %endif
    times 1 - ($ - %%insn_032bb) db 0
    %%insn_032bc:
    jmp short 0x32cd ; 032BC EB0F
    %if ($ - %%insn_032bc) > 2
        %error "LONG_032BC"
    %endif
    times 2 - ($ - %%insn_032bc) db 0
    %%insn_032be:
    mov dx,0x3d4 ; 032BE BAD403
    %if ($ - %%insn_032be) > 3
        %error "LONG_032BE"
    %endif
    times 3 - ($ - %%insn_032be) db 0
    %%insn_032c1:
    mov ax,0x1f25 ; 032C1 B8251F
    %if ($ - %%insn_032c1) > 3
        %error "LONG_032C1"
    %endif
    times 3 - ($ - %%insn_032c1) db 0
    %%insn_032c4:
    call 0x345e ; 032C4 E89701
    %if ($ - %%insn_032c4) > 3
        %error "LONG_032C4"
    %endif
    times 3 - ($ - %%insn_032c4) db 0
    %%insn_032c7:
    jnz short 0x332d ; 032C7 7564
    %if ($ - %%insn_032c7) > 2
        %error "LONG_032C7"
    %endif
    times 2 - ($ - %%insn_032c7) db 0
    %%insn_032c9:
    mov al,0x3f ; 032C9 B03F
    %if ($ - %%insn_032c9) > 2
        %error "LONG_032C9"
    %endif
    times 2 - ($ - %%insn_032c9) db 0
    %%insn_032cb:
    jmp short 0x32cf ; 032CB EB02
    %if ($ - %%insn_032cb) > 2
        %error "LONG_032CB"
    %endif
    times 2 - ($ - %%insn_032cb) db 0
    %%insn_032cd:
    mov al,0xff ; 032CD B0FF
    %if ($ - %%insn_032cd) > 2
        %error "LONG_032CD"
    %endif
    times 2 - ($ - %%insn_032cd) db 0
    %%insn_032cf:
    mov dx,0x3cd ; 032CF BACD03
    %if ($ - %%insn_032cf) > 3
        %error "LONG_032CF"
    %endif
    times 3 - ($ - %%insn_032cf) db 0
    %%insn_032d2:
    call 0x348c ; 032D2 E8B701
    %if ($ - %%insn_032d2) > 3
        %error "LONG_032D2"
    %endif
    times 3 - ($ - %%insn_032d2) db 0
    %%insn_032d5:
    jnz short 0x332d ; 032D5 7556
    %if ($ - %%insn_032d5) > 2
        %error "LONG_032D5"
    %endif
    times 2 - ($ - %%insn_032d5) db 0
    %%insn_032d7:
    mov word [0xd67c],0x1 ; 032D7 C7067CD60100
    %if ($ - %%insn_032d7) > 6
        %error "LONG_032D7"
    %endif
    times 6 - ($ - %%insn_032d7) db 0
    %%insn_032dd:
    mov word [0xd660],0x2d7a ; 032DD C70660D67A2D
    %if ($ - %%insn_032dd) > 6
        %error "LONG_032DD"
    %endif
    times 6 - ($ - %%insn_032dd) db 0
    %%insn_032e3:
    mov word [0xd662],0x438 ; 032E3 C70662D63804
    %if ($ - %%insn_032e3) > 6
        %error "LONG_032E3"
    %endif
    times 6 - ($ - %%insn_032e3) db 0
    %%insn_032e9:
    cmp ch,0x0 ; 032E9 80FD00
    %if ($ - %%insn_032e9) > 3
        %error "LONG_032E9"
    %endif
    times 3 - ($ - %%insn_032e9) db 0
    %%insn_032ec:
    jnz short 0x32f7 ; 032EC 7509
    %if ($ - %%insn_032ec) > 2
        %error "LONG_032EC"
    %endif
    times 2 - ($ - %%insn_032ec) db 0
    %%insn_032ee:
    mov word [0xd66c],0x1 ; 032EE C7066CD60100
    %if ($ - %%insn_032ee) > 6
        %error "LONG_032EE"
    %endif
    times 6 - ($ - %%insn_032ee) db 0
    %%insn_032f4:
    jmp 0x33a7 ; 032F4 E9B000
    %if ($ - %%insn_032f4) > 3
        %error "LONG_032F4"
    %endif
    times 3 - ($ - %%insn_032f4) db 0
    %%insn_032f7:
    mov dx,0x3d4 ; 032F7 BAD403
    %if ($ - %%insn_032f7) > 3
        %error "LONG_032F7"
    %endif
    times 3 - ($ - %%insn_032f7) db 0
    %%insn_032fa:
    mov al,0x37 ; 032FA B037
    %if ($ - %%insn_032fa) > 2
        %error "LONG_032FA"
    %endif
    times 2 - ($ - %%insn_032fa) db 0
    %%insn_032fc:
    out dx,al ; 032FC EE
    %if ($ - %%insn_032fc) > 1
        %error "LONG_032FC"
    %endif
    times 1 - ($ - %%insn_032fc) db 0
    %%insn_032fd:
    inc dx ; 032FD 42
    %if ($ - %%insn_032fd) > 1
        %error "LONG_032FD"
    %endif
    times 1 - ($ - %%insn_032fd) db 0
    %%insn_032fe:
    in al,dx ; 032FE EC
    %if ($ - %%insn_032fe) > 1
        %error "LONG_032FE"
    %endif
    times 1 - ($ - %%insn_032fe) db 0
    %%insn_032ff:
    test al,0x8 ; 032FF A808
    %if ($ - %%insn_032ff) > 2
        %error "LONG_032FF"
    %endif
    times 2 - ($ - %%insn_032ff) db 0
    %%insn_03301:
    jz short 0x3319 ; 03301 7416
    %if ($ - %%insn_03301) > 2
        %error "LONG_03301"
    %endif
    times 2 - ($ - %%insn_03301) db 0
    %%insn_03303:
    and al,0x3 ; 03303 2403
    %if ($ - %%insn_03303) > 2
        %error "LONG_03303"
    %endif
    times 2 - ($ - %%insn_03303) db 0
    %%insn_03305:
    cmp al,0x1 ; 03305 3C01
    %if ($ - %%insn_03305) > 2
        %error "LONG_03305"
    %endif
    times 2 - ($ - %%insn_03305) db 0
    %%insn_03307:
    jna short 0x3319 ; 03307 7610
    %if ($ - %%insn_03307) > 2
        %error "LONG_03307"
    %endif
    times 2 - ($ - %%insn_03307) db 0
    %%insn_03309:
    mov word [0xd66c],0x1 ; 03309 C7066CD60100
    %if ($ - %%insn_03309) > 6
        %error "LONG_03309"
    %endif
    times 6 - ($ - %%insn_03309) db 0
    %%insn_0330f:
    cmp al,0x2 ; 0330F 3C02
    %if ($ - %%insn_0330f) > 2
        %error "LONG_0330F"
    %endif
    times 2 - ($ - %%insn_0330f) db 0
    %%insn_03311:
    jz short 0x3319 ; 03311 7406
    %if ($ - %%insn_03311) > 2
        %error "LONG_03311"
    %endif
    times 2 - ($ - %%insn_03311) db 0
    %%insn_03313:
    mov word [0xd66c],0x1 ; 03313 C7066CD60100
    %if ($ - %%insn_03313) > 6
        %error "LONG_03313"
    %endif
    times 6 - ($ - %%insn_03313) db 0
    %%insn_03319:
    mov word [0xd68e],0x1 ; 03319 C7068ED60100
    %if ($ - %%insn_03319) > 6
        %error "LONG_03319"
    %endif
    times 6 - ($ - %%insn_03319) db 0
    %%insn_0331f:
    mov word [0xd660],0x2d8e ; 0331F C70660D68E2D
    %if ($ - %%insn_0331f) > 6
        %error "LONG_0331F"
    %endif
    times 6 - ($ - %%insn_0331f) db 0
    %%insn_03325:
    mov word [0xd662],0x5d0 ; 03325 C70662D6D005
    %if ($ - %%insn_03325) > 6
        %error "LONG_03325"
    %endif
    times 6 - ($ - %%insn_03325) db 0
    %%insn_0332b:
    jmp short 0x33a7 ; 0332B EB7A
    %if ($ - %%insn_0332b) > 2
        %error "LONG_0332B"
    %endif
    times 2 - ($ - %%insn_0332b) db 0
    %%insn_0332d:
    mov dx,0x3ce ; 0332D BACE03
    %if ($ - %%insn_0332d) > 3
        %error "LONG_0332D"
    %endif
    times 3 - ($ - %%insn_0332d) db 0
    %%insn_03330:
    mov ax,0x200f ; 03330 B80F20
    %if ($ - %%insn_03330) > 3
        %error "LONG_03330"
    %endif
    times 3 - ($ - %%insn_03330) db 0
    %%insn_03333:
    out dx,ax ; 03333 EF
    %if ($ - %%insn_03333) > 1
        %error "LONG_03333"
    %endif
    times 1 - ($ - %%insn_03333) db 0
    %%insn_03334:
    inc dx ; 03334 42
    %if ($ - %%insn_03334) > 1
        %error "LONG_03334"
    %endif
    times 1 - ($ - %%insn_03334) db 0
    %%insn_03335:
    jmp short 0x3337 ; 03335 EB00
    %if ($ - %%insn_03335) > 2
        %error "LONG_03335"
    %endif
    times 2 - ($ - %%insn_03335) db 0
    %%insn_03337:
    in al,dx ; 03337 EC
    %if ($ - %%insn_03337) > 1
        %error "LONG_03337"
    %endif
    times 1 - ($ - %%insn_03337) db 0
    %%insn_03338:
    cmp al,0x21 ; 03338 3C21
    %if ($ - %%insn_03338) > 2
        %error "LONG_03338"
    %endif
    times 2 - ($ - %%insn_03338) db 0
    %%insn_0333a:
    jz short 0x335a ; 0333A 741E
    %if ($ - %%insn_0333a) > 2
        %error "LONG_0333A"
    %endif
    times 2 - ($ - %%insn_0333a) db 0
    %%insn_0333c:
    cmp al,0x20 ; 0333C 3C20
    %if ($ - %%insn_0333c) > 2
        %error "LONG_0333C"
    %endif
    times 2 - ($ - %%insn_0333c) db 0
    %%insn_0333e:
    jnz short 0x3374 ; 0333E 7534
    %if ($ - %%insn_0333e) > 2
        %error "LONG_0333E"
    %endif
    times 2 - ($ - %%insn_0333e) db 0
    %%insn_03340:
    mov word [0xd684],0x1 ; 03340 C70684D60100
    %if ($ - %%insn_03340) > 6
        %error "LONG_03340"
    %endif
    times 6 - ($ - %%insn_03340) db 0
    %%insn_03346:
    mov word [0xd660],0x2eae ; 03346 C70660D6AE2E
    %if ($ - %%insn_03346) > 6
        %error "LONG_03346"
    %endif
    times 6 - ($ - %%insn_03346) db 0
    %%insn_0334c:
    mov word [0xd662],0x50a ; 0334C C70662D60A05
    %if ($ - %%insn_0334c) > 6
        %error "LONG_0334C"
    %endif
    times 6 - ($ - %%insn_0334c) db 0
    %%insn_03352:
    mov word [0xd66c],0x1 ; 03352 C7066CD60100
    %if ($ - %%insn_03352) > 6
        %error "LONG_03352"
    %endif
    times 6 - ($ - %%insn_03352) db 0
    %%insn_03358:
    jmp short 0x33a7 ; 03358 EB4D
    %if ($ - %%insn_03358) > 2
        %error "LONG_03358"
    %endif
    times 2 - ($ - %%insn_03358) db 0
    %%insn_0335a:
    mov word [0xd686],0x1 ; 0335A C70686D60100
    %if ($ - %%insn_0335a) > 6
        %error "LONG_0335A"
    %endif
    times 6 - ($ - %%insn_0335a) db 0
    %%insn_03360:
    mov word [0xd660],0x2ede ; 03360 C70660D6DE2E
    %if ($ - %%insn_03360) > 6
        %error "LONG_03360"
    %endif
    times 6 - ($ - %%insn_03360) db 0
    %%insn_03366:
    mov word [0xd662],0x52f ; 03366 C70662D62F05
    %if ($ - %%insn_03366) > 6
        %error "LONG_03366"
    %endif
    times 6 - ($ - %%insn_03366) db 0
    %%insn_0336c:
    mov word [0xd66c],0x1 ; 0336C C7066CD60100
    %if ($ - %%insn_0336c) > 6
        %error "LONG_0336C"
    %endif
    times 6 - ($ - %%insn_0336c) db 0
    %%insn_03372:
    jmp short 0x33a7 ; 03372 EB33
    %if ($ - %%insn_03372) > 2
        %error "LONG_03372"
    %endif
    times 2 - ($ - %%insn_03372) db 0
    %%insn_03374:
    mov dx,0x3de ; 03374 BADE03
    %if ($ - %%insn_03374) > 3
        %error "LONG_03374"
    %endif
    times 3 - ($ - %%insn_03374) db 0
    %%insn_03377:
    mov ax,0xff11 ; 03377 B811FF
    %if ($ - %%insn_03377) > 3
        %error "LONG_03377"
    %endif
    times 3 - ($ - %%insn_03377) db 0
    %%insn_0337a:
    call 0x345e ; 0337A E8E100
    %if ($ - %%insn_0337a) > 3
        %error "LONG_0337A"
    %endif
    times 3 - ($ - %%insn_0337a) db 0
    %%insn_0337d:
    jnz short 0x33a4 ; 0337D 7525
    %if ($ - %%insn_0337d) > 2
        %error "LONG_0337D"
    %endif
    times 2 - ($ - %%insn_0337d) db 0
    %%insn_0337f:
    mov word [0xd688],0x1 ; 0337F C70688D60100
    %if ($ - %%insn_0337f) > 6
        %error "LONG_0337F"
    %endif
    times 6 - ($ - %%insn_0337f) db 0
    %%insn_03385:
    mov word [0xd660],0x2efa ; 03385 C70660D6FA2E
    %if ($ - %%insn_03385) > 6
        %error "LONG_03385"
    %endif
    times 6 - ($ - %%insn_03385) db 0
    %%insn_0338b:
    mov word [0xd662],0x554 ; 0338B C70662D65405
    %if ($ - %%insn_0338b) > 6
        %error "LONG_0338B"
    %endif
    times 6 - ($ - %%insn_0338b) db 0
    %%insn_03391:
    mov al,0xd ; 03391 B00D
    %if ($ - %%insn_03391) > 2
        %error "LONG_03391"
    %endif
    times 2 - ($ - %%insn_03391) db 0
    %%insn_03393:
    out dx,al ; 03393 EE
    %if ($ - %%insn_03393) > 1
        %error "LONG_03393"
    %endif
    times 1 - ($ - %%insn_03393) db 0
    %%insn_03394:
    inc dx ; 03394 42
    %if ($ - %%insn_03394) > 1
        %error "LONG_03394"
    %endif
    times 1 - ($ - %%insn_03394) db 0
    %%insn_03395:
    jmp short 0x3397 ; 03395 EB00
    %if ($ - %%insn_03395) > 2
        %error "LONG_03395"
    %endif
    times 2 - ($ - %%insn_03395) db 0
    %%insn_03397:
    in al,dx ; 03397 EC
    %if ($ - %%insn_03397) > 1
        %error "LONG_03397"
    %endif
    times 1 - ($ - %%insn_03397) db 0
    %%insn_03398:
    test al,0x80 ; 03398 A880
    %if ($ - %%insn_03398) > 2
        %error "LONG_03398"
    %endif
    times 2 - ($ - %%insn_03398) db 0
    %%insn_0339a:
    jz short 0x33a2 ; 0339A 7406
    %if ($ - %%insn_0339a) > 2
        %error "LONG_0339A"
    %endif
    times 2 - ($ - %%insn_0339a) db 0
    %%insn_0339c:
    mov word [0xd66c],0x1 ; 0339C C7066CD60100
    %if ($ - %%insn_0339c) > 6
        %error "LONG_0339C"
    %endif
    times 6 - ($ - %%insn_0339c) db 0
    %%insn_033a2:
    jmp short 0x33a7 ; 033A2 EB03
    %if ($ - %%insn_033a2) > 2
        %error "LONG_033A2"
    %endif
    times 2 - ($ - %%insn_033a2) db 0
    %%insn_033a4:
    mov si,0x0 ; 033A4 BE0000
    %if ($ - %%insn_033a4) > 3
        %error "LONG_033A4"
    %endif
    times 3 - ($ - %%insn_033a4) db 0
    db 0x8B, 0xC6 ; 033A7 8BC6 | mov ax,si | encoding preserved
    %%insn_033a9:
    cmp word [bp-0x298c],0x0 ; 033A9 83BE74D600
    %if ($ - %%insn_033a9) > 5
        %error "LONG_033A9"
    %endif
    times 5 - ($ - %%insn_033a9) db 0
    %%insn_033ae:
    jnz short 0x33b2 ; 033AE 7502
    %if ($ - %%insn_033ae) > 2
        %error "LONG_033AE"
    %endif
    times 2 - ($ - %%insn_033ae) db 0
    db 0x33, 0xC0 ; 033B0 33C0 | xor ax,ax | encoding preserved
    %%insn_033b2:
    mov [0xd69c],ax ; 033B2 A39CD6
    %if ($ - %%insn_033b2) > 3
        %error "LONG_033B2"
    %endif
    times 3 - ($ - %%insn_033b2) db 0
    %%insn_033b5:
    sti ; 033B5 FB
    %if ($ - %%insn_033b5) > 1
        %error "LONG_033B5"
    %endif
    times 1 - ($ - %%insn_033b5) db 0
    %%insn_033b6:
    ret ; 033B6 C3
    %if ($ - %%insn_033b6) > 1
        %error "LONG_033B6"
    %endif
    times 1 - ($ - %%insn_033b6) db 0
    %if ($ - %%fragment_start) != 1075
        %error "SIZE_02F84"
    %endif
%endmacro
