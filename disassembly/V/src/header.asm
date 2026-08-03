; Reconstructed DOS MZ header for the deterministic V1.30 unpacked image.
mz_header_start:
    dw 0x5A4D ; 0000 e_magic
    dw 0x00F8 ; 0002 e_cblp
    dw 0x00C8 ; 0004 e_cp
    dw 0x0066 ; 0006 e_crlc
    dw 0x0020 ; 0008 e_cparhdr
    dw 0x0001 ; 000A e_minalloc
    dw 0xFFFF ; 000C e_maxalloc
    dw 0x1811 ; 000E e_ss
    dw 0x0040 ; 0010 e_sp
    dw 0x0000 ; 0012 e_csum
    dw 0x0000 ; 0014 e_ip
    dw 0x0000 ; 0016 e_cs
    dw 0x001C ; 0018 e_lfarlc
    dw 0x0000 ; 001A e_ovno

    ; 102 relocation entries (offset, segment)
    dw 0x0002, 0x0000 ; relocation 000, load-image 00002
    dw 0x000F, 0x0000 ; relocation 001, load-image 0000F
    dw 0x0002, 0x028E ; relocation 002, load-image 028E2
    dw 0x000A, 0x028F ; relocation 003, load-image 028FA
    dw 0x000D, 0x0295 ; relocation 004, load-image 0295D
    dw 0x000F, 0x0297 ; relocation 005, load-image 0297F
    dw 0x0007, 0x02A2 ; relocation 006, load-image 02A27
    dw 0x000A, 0x02A6 ; relocation 007, load-image 02A6A
    dw 0x0004, 0x02A7 ; relocation 008, load-image 02A74
    dw 0x000E, 0x02A7 ; relocation 009, load-image 02A7E
    dw 0x0009, 0x02A8 ; relocation 010, load-image 02A89
    dw 0x000E, 0x02A9 ; relocation 011, load-image 02A9E
    dw 0x0001, 0x02AE ; relocation 012, load-image 02AE1
    dw 0x000B, 0x02AE ; relocation 013, load-image 02AEB
    dw 0x0006, 0x02AF ; relocation 014, load-image 02AF6
    dw 0x0001, 0x02B0 ; relocation 015, load-image 02B01
    dw 0x0001, 0x02B1 ; relocation 016, load-image 02B11
    dw 0x000E, 0x02B4 ; relocation 017, load-image 02B4E
    dw 0x0009, 0x02BF ; relocation 018, load-image 02BF9
    dw 0x000D, 0x02D5 ; relocation 019, load-image 02D5D
    dw 0x0004, 0x02FE ; relocation 020, load-image 02FE4
    dw 0x0006, 0x02FF ; relocation 021, load-image 02FF6
    dw 0x0006, 0x034A ; relocation 022, load-image 034A6
    dw 0x0002, 0x0359 ; relocation 023, load-image 03592
    dw 0x0005, 0x0379 ; relocation 024, load-image 03795
    dw 0x0008, 0x037E ; relocation 025, load-image 037E8
    dw 0x000E, 0x0388 ; relocation 026, load-image 0388E
    dw 0x0005, 0x0394 ; relocation 027, load-image 03945
    dw 0x000A, 0x03AC ; relocation 028, load-image 03ACA
    dw 0x0004, 0x03F3 ; relocation 029, load-image 03F34
    dw 0x0005, 0x03FD ; relocation 030, load-image 03FD5
    dw 0x0006, 0x0448 ; relocation 031, load-image 04486
    dw 0x0009, 0x045C ; relocation 032, load-image 045C9
    dw 0x0004, 0x046C ; relocation 033, load-image 046C4
    dw 0x000A, 0x046D ; relocation 034, load-image 046DA
    dw 0x0008, 0x046F ; relocation 035, load-image 046F8
    dw 0x000E, 0x0473 ; relocation 036, load-image 0473E
    dw 0x0008, 0x0475 ; relocation 037, load-image 04758
    dw 0x0002, 0x0476 ; relocation 038, load-image 04762
    dw 0x000C, 0x0476 ; relocation 039, load-image 0476C
    dw 0x0006, 0x0477 ; relocation 040, load-image 04776
    dw 0x0006, 0x0478 ; relocation 041, load-image 04786
    dw 0x0006, 0x0479 ; relocation 042, load-image 04796
    dw 0x0006, 0x047A ; relocation 043, load-image 047A6
    dw 0x0006, 0x047B ; relocation 044, load-image 047B6
    dw 0x0006, 0x047C ; relocation 045, load-image 047C6
    dw 0x0006, 0x047D ; relocation 046, load-image 047D6
    dw 0x0002, 0x0482 ; relocation 047, load-image 04822
    dw 0x0000, 0x0485 ; relocation 048, load-image 04850
    dw 0x000D, 0x048C ; relocation 049, load-image 048CD
    dw 0x0003, 0x0498 ; relocation 050, load-image 04983
    dw 0x0009, 0x04A8 ; relocation 051, load-image 04A89
    dw 0x0009, 0x0506 ; relocation 052, load-image 05069
    dw 0x000C, 0x050C ; relocation 053, load-image 050CC
    dw 0x000B, 0x0524 ; relocation 054, load-image 0524B
    dw 0x0007, 0x052B ; relocation 055, load-image 052B7
    dw 0x000B, 0x0539 ; relocation 056, load-image 0539B
    dw 0x0003, 0x0561 ; relocation 057, load-image 05613
    dw 0x0000, 0x0564 ; relocation 058, load-image 05640
    dw 0x0001, 0x0568 ; relocation 059, load-image 05681
    dw 0x0004, 0x0577 ; relocation 060, load-image 05774
    dw 0x0007, 0x0578 ; relocation 061, load-image 05787
    dw 0x0005, 0x0582 ; relocation 062, load-image 05825
    dw 0x000E, 0x0585 ; relocation 063, load-image 0585E
    dw 0x0002, 0x058C ; relocation 064, load-image 058C2
    dw 0x0001, 0x058F ; relocation 065, load-image 058F1
    dw 0x0001, 0x0590 ; relocation 066, load-image 05901
    dw 0x000C, 0x0591 ; relocation 067, load-image 0591C
    dw 0x0001, 0x0597 ; relocation 068, load-image 05971
    dw 0x0002, 0x059B ; relocation 069, load-image 059B2
    dw 0x000E, 0x059B ; relocation 070, load-image 059BE
    dw 0x0007, 0x059D ; relocation 071, load-image 059D7
    dw 0x0000, 0x059E ; relocation 072, load-image 059E0
    dw 0x0007, 0x059E ; relocation 073, load-image 059E7
    dw 0x0008, 0x05A0 ; relocation 074, load-image 05A08
    dw 0x0004, 0x05A1 ; relocation 075, load-image 05A14
    dw 0x0007, 0x05A2 ; relocation 076, load-image 05A27
    dw 0x0003, 0x05A4 ; relocation 077, load-image 05A43
    dw 0x0002, 0x05A6 ; relocation 078, load-image 05A62
    dw 0x0004, 0x05A8 ; relocation 079, load-image 05A84
    dw 0x0005, 0x05AA ; relocation 080, load-image 05AA5
    dw 0x0008, 0x05AD ; relocation 081, load-image 05AD8
    dw 0x0002, 0x05B1 ; relocation 082, load-image 05B12
    dw 0x000F, 0x05B3 ; relocation 083, load-image 05B3F
    dw 0x0005, 0x05BB ; relocation 084, load-image 05BB5
    dw 0x0009, 0x05C3 ; relocation 085, load-image 05C39
    dw 0x000E, 0x05C4 ; relocation 086, load-image 05C4E
    dw 0x000D, 0x05C6 ; relocation 087, load-image 05C6D
    dw 0x000E, 0x05C8 ; relocation 088, load-image 05C8E
    dw 0x000E, 0x05C9 ; relocation 089, load-image 05C9E
    dw 0x0006, 0x05CB ; relocation 090, load-image 05CB6
    dw 0x0002, 0x05CD ; relocation 091, load-image 05CD2
    dw 0x0003, 0x05D0 ; relocation 092, load-image 05D03
    dw 0x000F, 0x05D0 ; relocation 093, load-image 05D0F
    dw 0x000F, 0x05D1 ; relocation 094, load-image 05D1F
    dw 0x0006, 0x05D3 ; relocation 095, load-image 05D36
    dw 0x0002, 0x05D4 ; relocation 096, load-image 05D42
    dw 0x0001, 0x05E5 ; relocation 097, load-image 05E51
    dw 0x000D, 0x05ED ; relocation 098, load-image 05EDD
    dw 0x000C, 0x05EF ; relocation 099, load-image 05EFC
    dw 0x000B, 0x07B7 ; relocation 100, load-image 07B7B
    dw 0x0002, 0x15E8 ; relocation 101, load-image 15E82

    ; Header padding
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001B4 |................|
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001C4 |................|
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001D4 |................|
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001E4 |................|
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001F4 |............|

    %if ($ - mz_header_start) != 0x200
        %error "MZ_HEADER_SIZE"
    %endif
