; Linear entry 04016 (1000:4016)
; Ghidra working symbol: FUN_1000_4016
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04016_part_00 0
    %%fragment_start:
func_04016:
    %%insn_04016:
    push bx ; 04016 53
    %if ($ - %%insn_04016) > 1
        %error "LONG_04016"
    %endif
    times 1 - ($ - %%insn_04016) db 0
    %%insn_04017:
    push cx ; 04017 51
    %if ($ - %%insn_04017) > 1
        %error "LONG_04017"
    %endif
    times 1 - ($ - %%insn_04017) db 0
    %%insn_04018:
    lodsb ; 04018 AC
    %if ($ - %%insn_04018) > 1
        %error "LONG_04018"
    %endif
    times 1 - ($ - %%insn_04018) db 0
    db 0x8A, 0xF0 ; 04019 8AF0 | mov dh,al | encoding preserved
    %%insn_0401b:
    and al,0x7f ; 0401B 247F
    %if ($ - %%insn_0401b) > 2
        %error "LONG_0401B"
    %endif
    times 2 - ($ - %%insn_0401b) db 0
    %%insn_0401d:
    cmp al,0x23 ; 0401D 3C23
    %if ($ - %%insn_0401d) > 2
        %error "LONG_0401D"
    %endif
    times 2 - ($ - %%insn_0401d) db 0
    %%insn_0401f:
    jnz short 0x4034 ; 0401F 7513
    %if ($ - %%insn_0401f) > 2
        %error "LONG_0401F"
    %endif
    times 2 - ($ - %%insn_0401f) db 0
    %%insn_04021:
    lodsb ; 04021 AC
    %if ($ - %%insn_04021) > 1
        %error "LONG_04021"
    %endif
    times 1 - ($ - %%insn_04021) db 0
    db 0x8A, 0xF0 ; 04022 8AF0 | mov dh,al | encoding preserved
    %%insn_04024:
    and al,0x7f ; 04024 247F
    %if ($ - %%insn_04024) > 2
        %error "LONG_04024"
    %endif
    times 2 - ($ - %%insn_04024) db 0
    %%insn_04026:
    mov bx,0xdba2 ; 04026 BBA2DB
    %if ($ - %%insn_04026) > 3
        %error "LONG_04026"
    %endif
    times 3 - ($ - %%insn_04026) db 0
    %%insn_04029:
    sub al,0x61 ; 04029 2C61
    %if ($ - %%insn_04029) > 2
        %error "LONG_04029"
    %endif
    times 2 - ($ - %%insn_04029) db 0
    db 0x32, 0xE4 ; 0402B 32E4 | xor ah,ah | encoding preserved
    db 0x03, 0xD8 ; 0402D 03D8 | add bx,ax | encoding preserved
    %%insn_0402f:
    mov al,[ss:bx] ; 0402F 368A07
    %if ($ - %%insn_0402f) > 3
        %error "LONG_0402F"
    %endif
    times 3 - ($ - %%insn_0402f) db 0
    %%insn_04032:
    jmp short 0x4084 ; 04032 EB50
    %if ($ - %%insn_04032) > 2
        %error "LONG_04032"
    %endif
    times 2 - ($ - %%insn_04032) db 0
    %%insn_04034:
    cmp al,0x7c ; 04034 3C7C
    %if ($ - %%insn_04034) > 2
        %error "LONG_04034"
    %endif
    times 2 - ($ - %%insn_04034) db 0
    %%insn_04036:
    jnz short 0x4082 ; 04036 754A
    %if ($ - %%insn_04036) > 2
        %error "LONG_04036"
    %endif
    times 2 - ($ - %%insn_04036) db 0
    %%insn_04038:
    lodsb ; 04038 AC
    %if ($ - %%insn_04038) > 1
        %error "LONG_04038"
    %endif
    times 1 - ($ - %%insn_04038) db 0
    %%insn_04039:
    cmp al,0x23 ; 04039 3C23
    %if ($ - %%insn_04039) > 2
        %error "LONG_04039"
    %endif
    times 2 - ($ - %%insn_04039) db 0
    %%insn_0403b:
    jnz short 0x404c ; 0403B 750F
    %if ($ - %%insn_0403b) > 2
        %error "LONG_0403B"
    %endif
    times 2 - ($ - %%insn_0403b) db 0
    %%insn_0403d:
    lodsb ; 0403D AC
    %if ($ - %%insn_0403d) > 1
        %error "LONG_0403D"
    %endif
    times 1 - ($ - %%insn_0403d) db 0
    %%insn_0403e:
    mov bx,0xdba2 ; 0403E BBA2DB
    %if ($ - %%insn_0403e) > 3
        %error "LONG_0403E"
    %endif
    times 3 - ($ - %%insn_0403e) db 0
    %%insn_04041:
    sub al,0x61 ; 04041 2C61
    %if ($ - %%insn_04041) > 2
        %error "LONG_04041"
    %endif
    times 2 - ($ - %%insn_04041) db 0
    db 0x32, 0xE4 ; 04043 32E4 | xor ah,ah | encoding preserved
    db 0x03, 0xD8 ; 04045 03D8 | add bx,ax | encoding preserved
    %%insn_04047:
    mov al,[ss:bx] ; 04047 368A07
    %if ($ - %%insn_04047) > 3
        %error "LONG_04047"
    %endif
    times 3 - ($ - %%insn_04047) db 0
    %%insn_0404a:
    jmp short 0x404e ; 0404A EB02
    %if ($ - %%insn_0404a) > 2
        %error "LONG_0404A"
    %endif
    times 2 - ($ - %%insn_0404a) db 0
    %%insn_0404c:
    sub al,0x30 ; 0404C 2C30
    %if ($ - %%insn_0404c) > 2
        %error "LONG_0404C"
    %endif
    times 2 - ($ - %%insn_0404c) db 0
    %%insn_0404e:
    push dx ; 0404E 52
    %if ($ - %%insn_0404e) > 1
        %error "LONG_0404E"
    %endif
    times 1 - ($ - %%insn_0404e) db 0
    db 0x32, 0xE4 ; 0404F 32E4 | xor ah,ah | encoding preserved
    %%insn_04051:
    mov cl,0xa ; 04051 B10A
    %if ($ - %%insn_04051) > 2
        %error "LONG_04051"
    %endif
    times 2 - ($ - %%insn_04051) db 0
    %%insn_04053:
    mul cl ; 04053 F6E1
    %if ($ - %%insn_04053) > 2
        %error "LONG_04053"
    %endif
    times 2 - ($ - %%insn_04053) db 0
    %%insn_04055:
    pop dx ; 04055 5A
    %if ($ - %%insn_04055) > 1
        %error "LONG_04055"
    %endif
    times 1 - ($ - %%insn_04055) db 0
    %%insn_04056:
    push ax ; 04056 50
    %if ($ - %%insn_04056) > 1
        %error "LONG_04056"
    %endif
    times 1 - ($ - %%insn_04056) db 0
    %%insn_04057:
    lodsb ; 04057 AC
    %if ($ - %%insn_04057) > 1
        %error "LONG_04057"
    %endif
    times 1 - ($ - %%insn_04057) db 0
    db 0x8A, 0xF0 ; 04058 8AF0 | mov dh,al | encoding preserved
    %%insn_0405a:
    and al,0x7f ; 0405A 247F
    %if ($ - %%insn_0405a) > 2
        %error "LONG_0405A"
    %endif
    times 2 - ($ - %%insn_0405a) db 0
    %%insn_0405c:
    cmp al,0x23 ; 0405C 3C23
    %if ($ - %%insn_0405c) > 2
        %error "LONG_0405C"
    %endif
    times 2 - ($ - %%insn_0405c) db 0
    %%insn_0405e:
    jnz short 0x4073 ; 0405E 7513
    %if ($ - %%insn_0405e) > 2
        %error "LONG_0405E"
    %endif
    times 2 - ($ - %%insn_0405e) db 0
    %%insn_04060:
    lodsb ; 04060 AC
    %if ($ - %%insn_04060) > 1
        %error "LONG_04060"
    %endif
    times 1 - ($ - %%insn_04060) db 0
    db 0x8A, 0xF0 ; 04061 8AF0 | mov dh,al | encoding preserved
    %%insn_04063:
    and al,0x7f ; 04063 247F
    %if ($ - %%insn_04063) > 2
        %error "LONG_04063"
    %endif
    times 2 - ($ - %%insn_04063) db 0
    %%insn_04065:
    mov bx,0xdba2 ; 04065 BBA2DB
    %if ($ - %%insn_04065) > 3
        %error "LONG_04065"
    %endif
    times 3 - ($ - %%insn_04065) db 0
    %%insn_04068:
    sub al,0x61 ; 04068 2C61
    %if ($ - %%insn_04068) > 2
        %error "LONG_04068"
    %endif
    times 2 - ($ - %%insn_04068) db 0
    db 0x32, 0xE4 ; 0406A 32E4 | xor ah,ah | encoding preserved
    db 0x03, 0xD8 ; 0406C 03D8 | add bx,ax | encoding preserved
    %%insn_0406e:
    mov al,[ss:bx] ; 0406E 368A07
    %if ($ - %%insn_0406e) > 3
        %error "LONG_0406E"
    %endif
    times 3 - ($ - %%insn_0406e) db 0
    %%insn_04071:
    jmp short 0x4075 ; 04071 EB02
    %if ($ - %%insn_04071) > 2
        %error "LONG_04071"
    %endif
    times 2 - ($ - %%insn_04071) db 0
    %%insn_04073:
    sub al,0x30 ; 04073 2C30
    %if ($ - %%insn_04073) > 2
        %error "LONG_04073"
    %endif
    times 2 - ($ - %%insn_04073) db 0
    db 0x32, 0xE4 ; 04075 32E4 | xor ah,ah | encoding preserved
    %%insn_04077:
    add ax,0xdbbb ; 04077 05BBDB
    %if ($ - %%insn_04077) > 3
        %error "LONG_04077"
    %endif
    times 3 - ($ - %%insn_04077) db 0
    %%insn_0407a:
    pop bx ; 0407A 5B
    %if ($ - %%insn_0407a) > 1
        %error "LONG_0407A"
    %endif
    times 1 - ($ - %%insn_0407a) db 0
    db 0x03, 0xD8 ; 0407B 03D8 | add bx,ax | encoding preserved
    %%insn_0407d:
    mov al,[ss:bx] ; 0407D 368A07
    %if ($ - %%insn_0407d) > 3
        %error "LONG_0407D"
    %endif
    times 3 - ($ - %%insn_0407d) db 0
    %%insn_04080:
    jmp short 0x4084 ; 04080 EB02
    %if ($ - %%insn_04080) > 2
        %error "LONG_04080"
    %endif
    times 2 - ($ - %%insn_04080) db 0
    %%insn_04082:
    sub al,0x30 ; 04082 2C30
    %if ($ - %%insn_04082) > 2
        %error "LONG_04082"
    %endif
    times 2 - ($ - %%insn_04082) db 0
    %%insn_04084:
    pop cx ; 04084 59
    %if ($ - %%insn_04084) > 1
        %error "LONG_04084"
    %endif
    times 1 - ($ - %%insn_04084) db 0
    %%insn_04085:
    pop bx ; 04085 5B
    %if ($ - %%insn_04085) > 1
        %error "LONG_04085"
    %endif
    times 1 - ($ - %%insn_04085) db 0
    %%insn_04086:
    ret ; 04086 C3
    %if ($ - %%insn_04086) > 1
        %error "LONG_04086"
    %endif
    times 1 - ($ - %%insn_04086) db 0
    %if ($ - %%fragment_start) != 113
        %error "SIZE_04016"
    %endif
%endmacro
