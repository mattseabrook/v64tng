; PE virtual entry 00407302
; Ghidra working symbol: FUN_00407302
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407302_part_00 0
    %%fragment_start:
func_00407302:
    %%insn_00407302:
    push ebp ; 00407302 55
    %if ($ - %%insn_00407302) > 1
        %error "LONG_00407302"
    %endif
    times 1 - ($ - %%insn_00407302) db 0
    db 0x8B, 0xEC ; 00407303 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407305:
    call dword near [0x424628] ; 00407305 FF1528464200
    %if ($ - %%insn_00407305) > 6
        %error "LONG_00407305"
    %endif
    times 6 - ($ - %%insn_00407305) db 0
    %%insn_0040730b:
    push dword 0x0 ; 0040730B 6A00
    %if ($ - %%insn_0040730b) > 2
        %error "LONG_0040730B"
    %endif
    times 2 - ($ - %%insn_0040730b) db 0
    %%insn_0040730d:
    call dword near [0x4245d8] ; 0040730D FF15D8454200
    %if ($ - %%insn_0040730d) > 6
        %error "LONG_0040730D"
    %endif
    times 6 - ($ - %%insn_0040730d) db 0
    %%insn_00407313:
    mov [0x421444],eax ; 00407313 A344144200
    %if ($ - %%insn_00407313) > 5
        %error "LONG_00407313"
    %endif
    times 5 - ($ - %%insn_00407313) db 0
    %%insn_00407318:
    mov dword [0x41f4e8],0x0 ; 00407318 C705E8F4410000000000
    %if ($ - %%insn_00407318) > 10
        %error "LONG_00407318"
    %endif
    times 10 - ($ - %%insn_00407318) db 0
    %%insn_00407322:
    push dword 0x0 ; 00407322 6A00
    %if ($ - %%insn_00407322) > 2
        %error "LONG_00407322"
    %endif
    times 2 - ($ - %%insn_00407322) db 0
    %%insn_00407324:
    push dword 0xf ; 00407324 6A0F
    %if ($ - %%insn_00407324) > 2
        %error "LONG_00407324"
    %endif
    times 2 - ($ - %%insn_00407324) db 0
    %%insn_00407326:
    call dword near [0x4245dc] ; 00407326 FF15DC454200
    %if ($ - %%insn_00407326) > 6
        %error "LONG_00407326"
    %endif
    times 6 - ($ - %%insn_00407326) db 0
    %%insn_0040732c:
    cmp dword [0x41f4e8],0x0 ; 0040732C 833DE8F4410000
    %if ($ - %%insn_0040732c) > 7
        %error "LONG_0040732C"
    %endif
    times 7 - ($ - %%insn_0040732c) db 0
    %%insn_00407333:
    jnz short 0x40734b ; 00407333 7516
    %if ($ - %%insn_00407333) > 2
        %error "LONG_00407333"
    %endif
    times 2 - ($ - %%insn_00407333) db 0
    %%insn_00407335:
    push dword 0x1 ; 00407335 6A01
    %if ($ - %%insn_00407335) > 2
        %error "LONG_00407335"
    %endif
    times 2 - ($ - %%insn_00407335) db 0
    %%insn_00407337:
    push dword 0x8 ; 00407337 6A08
    %if ($ - %%insn_00407337) > 2
        %error "LONG_00407337"
    %endif
    times 2 - ($ - %%insn_00407337) db 0
    %%insn_00407339:
    push dword 0xac44 ; 00407339 6844AC0000
    %if ($ - %%insn_00407339) > 5
        %error "LONG_00407339"
    %endif
    times 5 - ($ - %%insn_00407339) db 0
    %%insn_0040733e:
    call 0x407507 ; 0040733E E8C4010000
    %if ($ - %%insn_0040733e) > 5
        %error "LONG_0040733E"
    %endif
    times 5 - ($ - %%insn_0040733e) db 0
    %%insn_00407343:
    add esp,0xc ; 00407343 83C40C
    %if ($ - %%insn_00407343) > 3
        %error "LONG_00407343"
    %endif
    times 3 - ($ - %%insn_00407343) db 0
    %%insn_00407346:
    mov [0x41f4e8],eax ; 00407346 A3E8F44100
    %if ($ - %%insn_00407346) > 5
        %error "LONG_00407346"
    %endif
    times 5 - ($ - %%insn_00407346) db 0
    %%insn_0040734b:
    cmp dword [0x41f4e8],0x0 ; 0040734B 833DE8F4410000
    %if ($ - %%insn_0040734b) > 7
        %error "LONG_0040734B"
    %endif
    times 7 - ($ - %%insn_0040734b) db 0
    %%insn_00407352:
    jnz short 0x40736a ; 00407352 7516
    %if ($ - %%insn_00407352) > 2
        %error "LONG_00407352"
    %endif
    times 2 - ($ - %%insn_00407352) db 0
    %%insn_00407354:
    push dword 0x1 ; 00407354 6A01
    %if ($ - %%insn_00407354) > 2
        %error "LONG_00407354"
    %endif
    times 2 - ($ - %%insn_00407354) db 0
    %%insn_00407356:
    push dword 0x8 ; 00407356 6A08
    %if ($ - %%insn_00407356) > 2
        %error "LONG_00407356"
    %endif
    times 2 - ($ - %%insn_00407356) db 0
    %%insn_00407358:
    push dword 0x5622 ; 00407358 6822560000
    %if ($ - %%insn_00407358) > 5
        %error "LONG_00407358"
    %endif
    times 5 - ($ - %%insn_00407358) db 0
    %%insn_0040735d:
    call 0x407507 ; 0040735D E8A5010000
    %if ($ - %%insn_0040735d) > 5
        %error "LONG_0040735D"
    %endif
    times 5 - ($ - %%insn_0040735d) db 0
    %%insn_00407362:
    add esp,0xc ; 00407362 83C40C
    %if ($ - %%insn_00407362) > 3
        %error "LONG_00407362"
    %endif
    times 3 - ($ - %%insn_00407362) db 0
    %%insn_00407365:
    mov [0x41f4e8],eax ; 00407365 A3E8F44100
    %if ($ - %%insn_00407365) > 5
        %error "LONG_00407365"
    %endif
    times 5 - ($ - %%insn_00407365) db 0
    %%insn_0040736a:
    cmp dword [0x41f4e8],0x0 ; 0040736A 833DE8F4410000
    %if ($ - %%insn_0040736a) > 7
        %error "LONG_0040736A"
    %endif
    times 7 - ($ - %%insn_0040736a) db 0
    %%insn_00407371:
    jnz short 0x407389 ; 00407371 7516
    %if ($ - %%insn_00407371) > 2
        %error "LONG_00407371"
    %endif
    times 2 - ($ - %%insn_00407371) db 0
    %%insn_00407373:
    push dword 0x1 ; 00407373 6A01
    %if ($ - %%insn_00407373) > 2
        %error "LONG_00407373"
    %endif
    times 2 - ($ - %%insn_00407373) db 0
    %%insn_00407375:
    push dword 0x8 ; 00407375 6A08
    %if ($ - %%insn_00407375) > 2
        %error "LONG_00407375"
    %endif
    times 2 - ($ - %%insn_00407375) db 0
    %%insn_00407377:
    push dword 0x2b11 ; 00407377 68112B0000
    %if ($ - %%insn_00407377) > 5
        %error "LONG_00407377"
    %endif
    times 5 - ($ - %%insn_00407377) db 0
    %%insn_0040737c:
    call 0x407507 ; 0040737C E886010000
    %if ($ - %%insn_0040737c) > 5
        %error "LONG_0040737C"
    %endif
    times 5 - ($ - %%insn_0040737c) db 0
    %%insn_00407381:
    add esp,0xc ; 00407381 83C40C
    %if ($ - %%insn_00407381) > 3
        %error "LONG_00407381"
    %endif
    times 3 - ($ - %%insn_00407381) db 0
    %%insn_00407384:
    mov [0x41f4e8],eax ; 00407384 A3E8F44100
    %if ($ - %%insn_00407384) > 5
        %error "LONG_00407384"
    %endif
    times 5 - ($ - %%insn_00407384) db 0
    %%insn_00407389:
    cmp dword [0x41f4e8],0x0 ; 00407389 833DE8F4410000
    %if ($ - %%insn_00407389) > 7
        %error "LONG_00407389"
    %endif
    times 7 - ($ - %%insn_00407389) db 0
    %%insn_00407390:
    jnz short 0x40739c ; 00407390 750A
    %if ($ - %%insn_00407390) > 2
        %error "LONG_00407390"
    %endif
    times 2 - ($ - %%insn_00407390) db 0
    %%insn_00407392:
    push dword 0x1 ; 00407392 6A01
    %if ($ - %%insn_00407392) > 2
        %error "LONG_00407392"
    %endif
    times 2 - ($ - %%insn_00407392) db 0
    %%insn_00407394:
    push dword 0xf ; 00407394 6A0F
    %if ($ - %%insn_00407394) > 2
        %error "LONG_00407394"
    %endif
    times 2 - ($ - %%insn_00407394) db 0
    %%insn_00407396:
    call dword near [0x4245dc] ; 00407396 FF15DC454200
    %if ($ - %%insn_00407396) > 6
        %error "LONG_00407396"
    %endif
    times 6 - ($ - %%insn_00407396) db 0
    %%insn_0040739c:
    cmp dword [0x41f4e8],0x0 ; 0040739C 833DE8F4410000
    %if ($ - %%insn_0040739c) > 7
        %error "LONG_0040739C"
    %endif
    times 7 - ($ - %%insn_0040739c) db 0
    %%insn_004073a3:
    jnz short 0x4073bb ; 004073A3 7516
    %if ($ - %%insn_004073a3) > 2
        %error "LONG_004073A3"
    %endif
    times 2 - ($ - %%insn_004073a3) db 0
    %%insn_004073a5:
    push dword 0x1 ; 004073A5 6A01
    %if ($ - %%insn_004073a5) > 2
        %error "LONG_004073A5"
    %endif
    times 2 - ($ - %%insn_004073a5) db 0
    %%insn_004073a7:
    push dword 0x8 ; 004073A7 6A08
    %if ($ - %%insn_004073a7) > 2
        %error "LONG_004073A7"
    %endif
    times 2 - ($ - %%insn_004073a7) db 0
    %%insn_004073a9:
    push dword 0xac44 ; 004073A9 6844AC0000
    %if ($ - %%insn_004073a9) > 5
        %error "LONG_004073A9"
    %endif
    times 5 - ($ - %%insn_004073a9) db 0
    %%insn_004073ae:
    call 0x407507 ; 004073AE E854010000
    %if ($ - %%insn_004073ae) > 5
        %error "LONG_004073AE"
    %endif
    times 5 - ($ - %%insn_004073ae) db 0
    %%insn_004073b3:
    add esp,0xc ; 004073B3 83C40C
    %if ($ - %%insn_004073b3) > 3
        %error "LONG_004073B3"
    %endif
    times 3 - ($ - %%insn_004073b3) db 0
    %%insn_004073b6:
    mov [0x41f4e8],eax ; 004073B6 A3E8F44100
    %if ($ - %%insn_004073b6) > 5
        %error "LONG_004073B6"
    %endif
    times 5 - ($ - %%insn_004073b6) db 0
    %%insn_004073bb:
    cmp dword [0x41f4e8],0x0 ; 004073BB 833DE8F4410000
    %if ($ - %%insn_004073bb) > 7
        %error "LONG_004073BB"
    %endif
    times 7 - ($ - %%insn_004073bb) db 0
    %%insn_004073c2:
    jnz short 0x4073da ; 004073C2 7516
    %if ($ - %%insn_004073c2) > 2
        %error "LONG_004073C2"
    %endif
    times 2 - ($ - %%insn_004073c2) db 0
    %%insn_004073c4:
    push dword 0x1 ; 004073C4 6A01
    %if ($ - %%insn_004073c4) > 2
        %error "LONG_004073C4"
    %endif
    times 2 - ($ - %%insn_004073c4) db 0
    %%insn_004073c6:
    push dword 0x8 ; 004073C6 6A08
    %if ($ - %%insn_004073c6) > 2
        %error "LONG_004073C6"
    %endif
    times 2 - ($ - %%insn_004073c6) db 0
    %%insn_004073c8:
    push dword 0x5622 ; 004073C8 6822560000
    %if ($ - %%insn_004073c8) > 5
        %error "LONG_004073C8"
    %endif
    times 5 - ($ - %%insn_004073c8) db 0
    %%insn_004073cd:
    call 0x407507 ; 004073CD E835010000
    %if ($ - %%insn_004073cd) > 5
        %error "LONG_004073CD"
    %endif
    times 5 - ($ - %%insn_004073cd) db 0
    %%insn_004073d2:
    add esp,0xc ; 004073D2 83C40C
    %if ($ - %%insn_004073d2) > 3
        %error "LONG_004073D2"
    %endif
    times 3 - ($ - %%insn_004073d2) db 0
    %%insn_004073d5:
    mov [0x41f4e8],eax ; 004073D5 A3E8F44100
    %if ($ - %%insn_004073d5) > 5
        %error "LONG_004073D5"
    %endif
    times 5 - ($ - %%insn_004073d5) db 0
    %%insn_004073da:
    cmp dword [0x41f4e8],0x0 ; 004073DA 833DE8F4410000
    %if ($ - %%insn_004073da) > 7
        %error "LONG_004073DA"
    %endif
    times 7 - ($ - %%insn_004073da) db 0
    %%insn_004073e1:
    jnz short 0x4073f9 ; 004073E1 7516
    %if ($ - %%insn_004073e1) > 2
        %error "LONG_004073E1"
    %endif
    times 2 - ($ - %%insn_004073e1) db 0
    %%insn_004073e3:
    push dword 0x1 ; 004073E3 6A01
    %if ($ - %%insn_004073e3) > 2
        %error "LONG_004073E3"
    %endif
    times 2 - ($ - %%insn_004073e3) db 0
    %%insn_004073e5:
    push dword 0x8 ; 004073E5 6A08
    %if ($ - %%insn_004073e5) > 2
        %error "LONG_004073E5"
    %endif
    times 2 - ($ - %%insn_004073e5) db 0
    %%insn_004073e7:
    push dword 0x2b11 ; 004073E7 68112B0000
    %if ($ - %%insn_004073e7) > 5
        %error "LONG_004073E7"
    %endif
    times 5 - ($ - %%insn_004073e7) db 0
    %%insn_004073ec:
    call 0x407507 ; 004073EC E816010000
    %if ($ - %%insn_004073ec) > 5
        %error "LONG_004073EC"
    %endif
    times 5 - ($ - %%insn_004073ec) db 0
    %%insn_004073f1:
    add esp,0xc ; 004073F1 83C40C
    %if ($ - %%insn_004073f1) > 3
        %error "LONG_004073F1"
    %endif
    times 3 - ($ - %%insn_004073f1) db 0
    %%insn_004073f4:
    mov [0x41f4e8],eax ; 004073F4 A3E8F44100
    %if ($ - %%insn_004073f4) > 5
        %error "LONG_004073F4"
    %endif
    times 5 - ($ - %%insn_004073f4) db 0
    %%insn_004073f9:
    mov eax,[0x41f4e8] ; 004073F9 A1E8F44100
    %if ($ - %%insn_004073f9) > 5
        %error "LONG_004073F9"
    %endif
    times 5 - ($ - %%insn_004073f9) db 0
    %%insn_004073fe:
    push eax ; 004073FE 50
    %if ($ - %%insn_004073fe) > 1
        %error "LONG_004073FE"
    %endif
    times 1 - ($ - %%insn_004073fe) db 0
    %%insn_004073ff:
    call dword near [0x4245bc] ; 004073FF FF15BC454200
    %if ($ - %%insn_004073ff) > 6
        %error "LONG_004073FF"
    %endif
    times 6 - ($ - %%insn_004073ff) db 0
    %%insn_00407405:
    mov [0x41f4f8],eax ; 00407405 A3F8F44100
    %if ($ - %%insn_00407405) > 5
        %error "LONG_00407405"
    %endif
    times 5 - ($ - %%insn_00407405) db 0
    %%insn_0040740a:
    mov ecx,[0x41f4f8] ; 0040740A 8B0DF8F44100
    %if ($ - %%insn_0040740a) > 6
        %error "LONG_0040740A"
    %endif
    times 6 - ($ - %%insn_0040740a) db 0
    %%insn_00407410:
    push ecx ; 00407410 51
    %if ($ - %%insn_00407410) > 1
        %error "LONG_00407410"
    %endif
    times 1 - ($ - %%insn_00407410) db 0
    %%insn_00407411:
    call dword near [0x4245b0] ; 00407411 FF15B0454200
    %if ($ - %%insn_00407411) > 6
        %error "LONG_00407411"
    %endif
    times 6 - ($ - %%insn_00407411) db 0
    %%insn_00407417:
    push dword 0x0 ; 00407417 6A00
    %if ($ - %%insn_00407417) > 2
        %error "LONG_00407417"
    %endif
    times 2 - ($ - %%insn_00407417) db 0
    %%insn_00407419:
    push dword 0x0 ; 00407419 6A00
    %if ($ - %%insn_00407419) > 2
        %error "LONG_00407419"
    %endif
    times 2 - ($ - %%insn_00407419) db 0
    %%insn_0040741b:
    mov edx,[0x41f4f8] ; 0040741B 8B15F8F44100
    %if ($ - %%insn_0040741b) > 6
        %error "LONG_0040741B"
    %endif
    times 6 - ($ - %%insn_0040741b) db 0
    %%insn_00407421:
    push edx ; 00407421 52
    %if ($ - %%insn_00407421) > 1
        %error "LONG_00407421"
    %endif
    times 1 - ($ - %%insn_00407421) db 0
    %%insn_00407422:
    call dword near [0x4245b4] ; 00407422 FF15B4454200
    %if ($ - %%insn_00407422) > 6
        %error "LONG_00407422"
    %endif
    times 6 - ($ - %%insn_00407422) db 0
    %%insn_00407428:
    push dword 0x5622 ; 00407428 6822560000
    %if ($ - %%insn_00407428) > 5
        %error "LONG_00407428"
    %endif
    times 5 - ($ - %%insn_00407428) db 0
    %%insn_0040742d:
    mov eax,[0x41f4f8] ; 0040742D A1F8F44100
    %if ($ - %%insn_0040742d) > 5
        %error "LONG_0040742D"
    %endif
    times 5 - ($ - %%insn_0040742d) db 0
    %%insn_00407432:
    push eax ; 00407432 50
    %if ($ - %%insn_00407432) > 1
        %error "LONG_00407432"
    %endif
    times 1 - ($ - %%insn_00407432) db 0
    %%insn_00407433:
    call dword near [0x4245b8] ; 00407433 FF15B8454200
    %if ($ - %%insn_00407433) > 6
        %error "LONG_00407433"
    %endif
    times 6 - ($ - %%insn_00407433) db 0
    %%insn_00407439:
    push dword 0x7f ; 00407439 6A7F
    %if ($ - %%insn_00407439) > 2
        %error "LONG_00407439"
    %endif
    times 2 - ($ - %%insn_00407439) db 0
    %%insn_0040743b:
    mov ecx,[0x41f4f8] ; 0040743B 8B0DF8F44100
    %if ($ - %%insn_0040743b) > 6
        %error "LONG_0040743B"
    %endif
    times 6 - ($ - %%insn_0040743b) db 0
    %%insn_00407441:
    push ecx ; 00407441 51
    %if ($ - %%insn_00407441) > 1
        %error "LONG_00407441"
    %endif
    times 1 - ($ - %%insn_00407441) db 0
    %%insn_00407442:
    call dword near [0x4245c0] ; 00407442 FF15C0454200
    %if ($ - %%insn_00407442) > 6
        %error "LONG_00407442"
    %endif
    times 6 - ($ - %%insn_00407442) db 0
    %%insn_00407448:
    push dword 0x10000 ; 00407448 6800000100
    %if ($ - %%insn_00407448) > 5
        %error "LONG_00407448"
    %endif
    times 5 - ($ - %%insn_00407448) db 0
    %%insn_0040744d:
    call dword near [0x4245c4] ; 0040744D FF15C4454200
    %if ($ - %%insn_0040744d) > 6
        %error "LONG_0040744D"
    %endif
    times 6 - ($ - %%insn_0040744d) db 0
    %%insn_00407453:
    mov [0x42143c],eax ; 00407453 A33C144200
    %if ($ - %%insn_00407453) > 5
        %error "LONG_00407453"
    %endif
    times 5 - ($ - %%insn_00407453) db 0
    %%insn_00407458:
    push dword 0x0 ; 00407458 6A00
    %if ($ - %%insn_00407458) > 2
        %error "LONG_00407458"
    %endif
    times 2 - ($ - %%insn_00407458) db 0
    %%insn_0040745a:
    push dword 0xac44 ; 0040745A 6844AC0000
    %if ($ - %%insn_0040745a) > 5
        %error "LONG_0040745A"
    %endif
    times 5 - ($ - %%insn_0040745a) db 0
    %%insn_0040745f:
    mov edx,[0x41f4e8] ; 0040745F 8B15E8F44100
    %if ($ - %%insn_0040745f) > 6
        %error "LONG_0040745F"
    %endif
    times 6 - ($ - %%insn_0040745f) db 0
    %%insn_00407465:
    push edx ; 00407465 52
    %if ($ - %%insn_00407465) > 1
        %error "LONG_00407465"
    %endif
    times 1 - ($ - %%insn_00407465) db 0
    %%insn_00407466:
    call dword near [0x4245c8] ; 00407466 FF15C8454200
    %if ($ - %%insn_00407466) > 6
        %error "LONG_00407466"
    %endif
    times 6 - ($ - %%insn_00407466) db 0
    %%insn_0040746c:
    mov [0x42144c],eax ; 0040746C A34C144200
    %if ($ - %%insn_0040746c) > 5
        %error "LONG_0040746C"
    %endif
    times 5 - ($ - %%insn_0040746c) db 0
    %%insn_00407471:
    call 0x4074c1 ; 00407471 E84B000000
    %if ($ - %%insn_00407471) > 5
        %error "LONG_00407471"
    %endif
    times 5 - ($ - %%insn_00407471) db 0
    %%insn_00407476:
    mov [0x41f4ec],eax ; 00407476 A3ECF44100
    %if ($ - %%insn_00407476) > 5
        %error "LONG_00407476"
    %endif
    times 5 - ($ - %%insn_00407476) db 0
    %%insn_0040747b:
    mov dword [0x421440],0x0 ; 0040747B C7054014420000000000
    %if ($ - %%insn_0040747b) > 10
        %error "LONG_0040747B"
    %endif
    times 10 - ($ - %%insn_0040747b) db 0
    %%insn_00407485:
    push dword 0x1 ; 00407485 6A01
    %if ($ - %%insn_00407485) > 2
        %error "LONG_00407485"
    %endif
    times 2 - ($ - %%insn_00407485) db 0
    %%insn_00407487:
    push dword 0x0 ; 00407487 6A00
    %if ($ - %%insn_00407487) > 2
        %error "LONG_00407487"
    %endif
    times 2 - ($ - %%insn_00407487) db 0
    %%insn_00407489:
    push dword 0x4072a1 ; 00407489 68A1724000
    %if ($ - %%insn_00407489) > 5
        %error "LONG_00407489"
    %endif
    times 5 - ($ - %%insn_00407489) db 0
    %%insn_0040748e:
    push dword 0xa ; 0040748E 6A0A
    %if ($ - %%insn_0040748e) > 2
        %error "LONG_0040748E"
    %endif
    times 2 - ($ - %%insn_0040748e) db 0
    %%insn_00407490:
    push dword 0x42 ; 00407490 6A42
    %if ($ - %%insn_00407490) > 2
        %error "LONG_00407490"
    %endif
    times 2 - ($ - %%insn_00407490) db 0
    %%insn_00407492:
    call dword near [0x4245a0] ; 00407492 FF15A0454200
    %if ($ - %%insn_00407492) > 6
        %error "LONG_00407492"
    %endif
    times 6 - ($ - %%insn_00407492) db 0
    %%insn_00407498:
    mov [0x41f4fc],eax ; 00407498 A3FCF44100
    %if ($ - %%insn_00407498) > 5
        %error "LONG_00407498"
    %endif
    times 5 - ($ - %%insn_00407498) db 0
    %%insn_0040749d:
    cmp dword [0x41f4fc],0x0 ; 0040749D 833DFCF4410000
    %if ($ - %%insn_0040749d) > 7
        %error "LONG_0040749D"
    %endif
    times 7 - ($ - %%insn_0040749d) db 0
    %%insn_004074a4:
    jz short 0x4074b2 ; 004074A4 740C
    %if ($ - %%insn_004074a4) > 2
        %error "LONG_004074A4"
    %endif
    times 2 - ($ - %%insn_004074a4) db 0
    %%insn_004074a6:
    mov dword [0x41f500],0x1 ; 004074A6 C70500F5410001000000
    %if ($ - %%insn_004074a6) > 10
        %error "LONG_004074A6"
    %endif
    times 10 - ($ - %%insn_004074a6) db 0
    %%insn_004074b0:
    jmp short 0x4074bf ; 004074B0 EB0D
    %if ($ - %%insn_004074b0) > 2
        %error "LONG_004074B0"
    %endif
    times 2 - ($ - %%insn_004074b0) db 0
    %%insn_004074b2:
    push dword 0x41b918 ; 004074B2 6818B94100
    %if ($ - %%insn_004074b2) > 5
        %error "LONG_004074B2"
    %endif
    times 5 - ($ - %%insn_004074b2) db 0
    %%insn_004074b7:
    call 0x409760 ; 004074B7 E8A4220000
    %if ($ - %%insn_004074b7) > 5
        %error "LONG_004074B7"
    %endif
    times 5 - ($ - %%insn_004074b7) db 0
    %%insn_004074bc:
    add esp,0x4 ; 004074BC 83C404
    %if ($ - %%insn_004074bc) > 3
        %error "LONG_004074BC"
    %endif
    times 3 - ($ - %%insn_004074bc) db 0
    %%insn_004074bf:
    pop ebp ; 004074BF 5D
    %if ($ - %%insn_004074bf) > 1
        %error "LONG_004074BF"
    %endif
    times 1 - ($ - %%insn_004074bf) db 0
    %%insn_004074c0:
    ret ; 004074C0 C3
    %if ($ - %%insn_004074c0) > 1
        %error "LONG_004074C0"
    %endif
    times 1 - ($ - %%insn_004074c0) db 0
    %if ($ - %%fragment_start) != 447
        %error "function fragment size drift: 00407302"
    %endif
%endmacro
