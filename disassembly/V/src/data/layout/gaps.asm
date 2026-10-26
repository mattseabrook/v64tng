; Bytes inside the analyzed code span which Ghidra does not own as a
; function body. These may be jump tables, alignment, embedded data, or
; undiscovered code. They remain data until evidence proves otherwise.

%macro emit_gap_000_0007c 0
    %%gap_start:
    db 0xEB, 0x06 ; 0007C | jmp short 00084; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0007C"
    %endif
%endmacro

%macro emit_gap_001_00383 0
    %%gap_start:
    db 0xEB, 0x23 ; 00383 | jmp short 003A8; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_00383"
    %endif
%endmacro

%macro emit_gap_002_0038e 0
    %%gap_start:
    db 0xEB, 0x18 ; 0038E | jmp short 003A8; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0038E"
    %endif
%endmacro

%macro emit_gap_003_0039c 0
    %%gap_start:
    db 0xEB, 0x0A ; 0039C | jmp short 003A8; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0039C"
    %endif
%endmacro

%macro emit_gap_004_005e7 0
    %%gap_start:
    db 0xEB, 0x0D ; 005E7 | jmp short 005F6; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_005E7"
    %endif
%endmacro

%macro emit_gap_005_00c4a 0
    %%gap_start:
    db 0xEB, 0x0D ; 00C4A | jmp short 00C59; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_00C4A"
    %endif
%endmacro

%macro emit_gap_006_01217 0
    %%gap_start:
    db 0x90 ; 01217 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_01217"
    %endif
%endmacro

%macro emit_gap_007_01235 0
    %%gap_start:
    db 0x90 ; 01235 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_01235"
    %endif
%endmacro

%macro emit_gap_008_0127d 0
    %%gap_start:
    db 0x90 ; 0127D | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0127D"
    %endif
%endmacro

%macro emit_gap_009_012bd 0
    %%gap_start:
    db 0x90, 0xE9, 0xD5, 0x00 ; 012BD |....|
    %if ($ - %%gap_start) != 4
        %error "GAP_SIZE_012BD"
    %endif
%endmacro

%macro emit_gap_010_01397 0
    %%gap_start:
    db 0x90 ; 01397 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_01397"
    %endif
%endmacro

%macro emit_gap_011_0168f 0
    %%gap_start:
    db 0xEB, 0x0A ; 0168F | jmp short 0169B; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0168F"
    %endif
%endmacro

%macro emit_gap_012_0169b 0
    %%gap_start:
    db 0x90 ; 0169B | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0169B"
    %endif
%endmacro

%macro emit_gap_013_01ed3 0
    %%gap_start:
    db 0xEB, 0x08 ; 01ED3 | jmp short 01EDD; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_01ED3"
    %endif
%endmacro

%macro emit_gap_014_01fe7 0
    %%gap_start:
    db 0x90 ; 01FE7 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_01FE7"
    %endif
%endmacro

%macro emit_gap_015_0205d 0
    %%gap_start:
    db 0x90 ; 0205D | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0205D"
    %endif
%endmacro

%macro emit_gap_016_0207b 0
    %%gap_start:
    db 0x90 ; 0207B | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0207B"
    %endif
%endmacro

%macro emit_gap_017_0210b 0
    %%gap_start:
    db 0x90 ; 0210B | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0210B"
    %endif
%endmacro

%macro emit_gap_018_02175 0
    %%gap_start:
    db 0x90, 0xEB, 0x08 ; 02175 |...|
    %if ($ - %%gap_start) != 3
        %error "GAP_SIZE_02175"
    %endif
%endmacro

%macro emit_gap_019_02181 0
    %%gap_start:
    db 0x90 ; 02181 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_02181"
    %endif
%endmacro

%macro emit_gap_020_02219 0
    %%gap_start:
    db 0x00, 0x00, 0x8B, 0xD8, 0x8B, 0xCF, 0x8B, 0x3B, 0x8E, 0x9E, 0x58, 0xD5, 0x8B, 0xC3, 0xF7, 0xC2 ; 02219 |.......;..X.....|
    db 0x00, 0x80, 0x75, 0x02, 0x8A, 0xC7, 0xF7, 0xC2, 0x00, 0x20, 0x74, 0x02, 0x8A, 0xE3, 0x89, 0x05 ; 02229 |..u...... t.....|
    db 0x81, 0xC7, 0x40, 0x01, 0x8B, 0xC3, 0xF7, 0xC2, 0x80, 0x00, 0x75, 0x02, 0x8A, 0xC7, 0xF7, 0xC2 ; 02239 |..@.......u.....|
    db 0x20, 0x00, 0x74, 0x02, 0x8A, 0xE3, 0x89, 0x05, 0x8B, 0x86, 0x56, 0xD5, 0x8E, 0xD8, 0x8B, 0xF9 ; 02249 | .t.......V.....|
    db 0x83, 0xC7, 0x04, 0xE9, 0x55, 0xFF, 0x90 ; 02259 |....U..|
    %if ($ - %%gap_start) != 71
        %error "GAP_SIZE_02219"
    %endif
%endmacro

%macro emit_gap_021_02289 0
    %%gap_start:
    db 0x90 ; 02289 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_02289"
    %endif
%endmacro

%macro emit_gap_022_022a7 0
    %%gap_start:
    db 0x90 ; 022A7 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_022A7"
    %endif
%endmacro

%macro emit_gap_023_022e1 0
    %%gap_start:
    db 0x90 ; 022E1 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_022E1"
    %endif
%endmacro

%macro emit_gap_024_02304 0
    %%gap_start:
    db 0xEB, 0x08 ; 02304 | jmp short 0230E; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_02304"
    %endif
%endmacro

%macro emit_gap_025_028d9 0
    %%gap_start:
    db 0xEB, 0x3A ; 028D9 | jmp short 02915; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_028D9"
    %endif
%endmacro

%macro emit_gap_026_0292f 0
    %%gap_start:
    db 0xEB, 0x02 ; 0292F | jmp short 02933; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0292F"
    %endif
%endmacro

%macro emit_gap_027_02993 0
    %%gap_start:
    db 0xEB, 0x02 ; 02993 | jmp short 02997; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_02993"
    %endif
%endmacro

%macro emit_gap_bios_pcm_02c2a 0
    db 0xEB, 0x05 ; 02C2A | jmp short 02C31; gap ownership/reachability unresolved
%endmacro

%macro emit_gap_bios_pcm_02c31 0
    db 0x00 ; 02C31 | unresolved trailing byte
%endmacro

%macro emit_gap_029_02cc0 0
    %%gap_start:
    db 0xF7, 0xC6, 0x04, 0x00, 0x74, 0x2F, 0x9B, 0xD9, 0xE8, 0x9B, 0xD9, 0xEE, 0x9B, 0xDE, 0xF9, 0x9B ; 02CC0 |....t/..........|
    db 0xD9, 0xC0, 0x9B, 0xD9, 0xE0, 0x9B, 0xDE, 0xD9, 0x9B, 0xDD, 0x3E, 0x5C, 0xD6, 0xA1, 0x5C, 0xD6 ; 02CD0 |..........>\..\.|
    db 0x9E, 0x74, 0x06, 0x81, 0xCE, 0x00, 0x04, 0xEB, 0x04 ; 02CE0 |.t.......|
    %if ($ - %%gap_start) != 41
        %error "GAP_SIZE_02CC0"
    %endif
%endmacro

%macro emit_gap_030_02cf5 0
    %%gap_start:
    db 0xF7, 0xC6, 0x01, 0x00, 0x75, 0x06, 0x81, 0xCE, 0x00, 0x01, 0xEB, 0x08, 0x81, 0xCE, 0x00, 0x04 ; 02CF5 |....u...........|
    db 0x89, 0x36, 0x5E, 0xD6 ; 02D05 |.6^.|
    %if ($ - %%gap_start) != 20
        %error "GAP_SIZE_02CF5"
    %endif
%endmacro

%macro emit_gap_031_02d4f 0
    %%gap_start:
    db 0x00 ; 02D4F |.|
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_02D4F"
    %endif
%endmacro

%macro emit_gap_032_02d59 0
    %%gap_start:
    db 0xC3 ; 02D59 |.|
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_02D59"
    %endif
%endmacro





%macro emit_gap_037_03785 0
    %%gap_start:
    db 0x8B, 0x9E, 0x49, 0xD8, 0xB8, 0x00, 0x3F, 0xCD, 0x21, 0xC3 ; 03785 |..I...?.!.|
    %if ($ - %%gap_start) != 10
        %error "GAP_SIZE_03785"
    %endif
%endmacro

%macro emit_gap_038_03937 0
    %%gap_start:
    db 0x8B, 0x9E, 0x49, 0xD8, 0xB8, 0x00, 0x3F, 0xCD, 0x21, 0xC3 ; 03937 |..I...?.!.|
    %if ($ - %%gap_start) != 10
        %error "GAP_SIZE_03937"
    %endif
%endmacro

%macro emit_gap_039_03a96 0
    %%gap_start:
    db 0xBA, 0x88, 0xD8, 0xE8, 0x95, 0xFF, 0x3D, 0xFF, 0xFF, 0x75, 0x06, 0xB8, 0xB8, 0x07, 0xE9, 0x46 ; 03A96 |......=..u.....F|
    db 0x22, 0x1E, 0x8E, 0x1E, 0x4E, 0xD5, 0x33, 0xD2, 0xB9, 0xB0, 0x36, 0xE8, 0x9D, 0xFF, 0x1F, 0x3D ; 03AA6 |"...N.3...6....=|
    db 0xB0, 0x36, 0x75, 0x06, 0xB8, 0xCE, 0x07, 0xE9, 0x2D, 0x22, 0xE8, 0x84, 0xFF, 0xC3 ; 03AB6 |.6u.....-"....|
    %if ($ - %%gap_start) != 46
        %error "GAP_SIZE_03A96"
    %endif
%endmacro

%macro emit_gap_040_03b13 0
    %%gap_start:
    db 0xE9, 0x0A, 0x03 ; 03B13 |...|
    %if ($ - %%gap_start) != 3
        %error "GAP_SIZE_03B13"
    %endif
%endmacro

%macro emit_gap_041_03cbf 0
    %%gap_start:
    db 0xE9, 0x5E, 0x01 ; 03CBF |.^.|
    %if ($ - %%gap_start) != 3
        %error "GAP_SIZE_03CBF"
    %endif
%endmacro

%macro emit_gap_042_0483e 0
    %%gap_start:
    db 0xEB, 0x08 ; 0483E | jmp short 04848; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0483E"
    %endif
%endmacro

%macro emit_gap_043_04968 0
    %%gap_start:
    db 0x3C, 0x41, 0x72, 0x06, 0x3C, 0x5A, 0x77, 0x02, 0x0C, 0x20, 0x80, 0xFC, 0x41, 0x72, 0x08, 0x80 ; 04968 |<Ar.<Zw.. ..Ar..|
    db 0xFC, 0x5A, 0x77, 0x03, 0x80, 0xCC, 0x20, 0xC3 ; 04978 |.Zw... .|
    %if ($ - %%gap_start) != 24
        %error "GAP_SIZE_04968"
    %endif
%endmacro

%macro emit_gap_044_04b68 0
    %%gap_start:
    db 0xE9, 0x84, 0x00 ; 04B68 |...|
    %if ($ - %%gap_start) != 3
        %error "GAP_SIZE_04B68"
    %endif
%endmacro

%macro emit_gap_045_04bac 0
    %%gap_start:
    db 0xEB, 0x14 ; 04BAC | jmp short 04BC2; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_04BAC"
    %endif
%endmacro

%macro emit_gap_046_05190 0
    %%gap_start:
    db 0xEB, 0x1D ; 05190 | jmp short 051AF; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_05190"
    %endif
%endmacro

%macro emit_gap_047_0519c 0
    %%gap_start:
    db 0xEB, 0x11 ; 0519C | jmp short 051AF; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0519C"
    %endif
%endmacro

%macro emit_gap_048_051a4 0
    %%gap_start:
    db 0xEB, 0x09 ; 051A4 | jmp short 051AF; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_051A4"
    %endif
%endmacro

%macro emit_gap_049_051ac 0
    %%gap_start:
    db 0xEB, 0x01 ; 051AC | jmp short 051AF; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_051AC"
    %endif
%endmacro

%macro emit_gap_050_05351 0
    %%gap_start:
    db 0xEB, 0x1D ; 05351 | jmp short 05370; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_05351"
    %endif
%endmacro

%macro emit_gap_051_0535d 0
    %%gap_start:
    db 0xEB, 0x11 ; 0535D | jmp short 05370; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0535D"
    %endif
%endmacro

%macro emit_gap_052_05365 0
    %%gap_start:
    db 0xEB, 0x09 ; 05365 | jmp short 05370; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_05365"
    %endif
%endmacro

%macro emit_gap_053_0536d 0
    %%gap_start:
    db 0xEB, 0x01 ; 0536D | jmp short 05370; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0536D"
    %endif
%endmacro

%macro emit_gap_054_05458 0
    %%gap_start:
    db 0xEB, 0x1D ; 05458 | jmp short 05477; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_05458"
    %endif
%endmacro

%macro emit_gap_055_05464 0
    %%gap_start:
    db 0xEB, 0x11 ; 05464 | jmp short 05477; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_05464"
    %endif
%endmacro

%macro emit_gap_056_0546c 0
    %%gap_start:
    db 0xEB, 0x09 ; 0546C | jmp short 05477; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_0546C"
    %endif
%endmacro

%macro emit_gap_057_05474 0
    %%gap_start:
    db 0xEB, 0x01 ; 05474 | jmp short 05477; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_05474"
    %endif
%endmacro

%macro emit_gap_058_05733 0
    %%gap_start:
    db 0x00 ; 05733 |.|
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_05733"
    %endif
%endmacro

%macro emit_gap_059_05a4f 0
    %%gap_start:
    db 0x56, 0xAD, 0xBB, 0xA2, 0xDB, 0x03, 0xD8, 0x53, 0xFF, 0xB6, 0x38, 0xE4, 0xFF, 0xB6, 0x32, 0xE4 ; 05A4F |V......S..8...2.|
    db 0x9A, 0x0A, 0x0D, 0x02, 0x07, 0x83, 0xC4, 0x04, 0x36, 0x88, 0x07, 0x5E, 0xC3 ; 05A5F |........6..^.|
    %if ($ - %%gap_start) != 29
        %error "GAP_SIZE_05A4F"
    %endif
%endmacro

%macro emit_gap_060_05cde 0
    %%gap_start:
    db 0x00, 0x00, 0x00, 0x00, 0x2E, 0xFF, 0x06, 0xDE, 0x5C, 0x2E, 0xFF, 0x06, 0xE0, 0x5C, 0xCB ; 05CDE |........\....\.|
    %if ($ - %%gap_start) != 15
        %error "GAP_SIZE_05CDE"
    %endif
%endmacro

%macro emit_gap_061_05e8c 0
    %%gap_start:
    db 0x00 ; 05E8C |.|
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_05E8C"
    %endif
%endmacro

%macro emit_gap_062_05ed5 0
    %%gap_start:
    db 0x00 ; 05ED5 |.|
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_05ED5"
    %endif
%endmacro

%macro emit_gap_063_05f1c 0
    %%gap_start:
    db 0xC6, 0x06, 0xFB, 0xE8, 0x01, 0xCB ; 05F1C |......|
    %if ($ - %%gap_start) != 6
        %error "GAP_SIZE_05F1C"
    %endif
%endmacro

%macro emit_gap_064_0605b 0
    %%gap_start:
    db 0x90 ; 0605B | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0605B"
    %endif
%endmacro

%macro emit_gap_065_06073 0
    %%gap_start:
    db 0x90 ; 06073 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06073"
    %endif
%endmacro

%macro emit_gap_066_06158 0
    %%gap_start:
    db 0x90, 0x90 ; 06158 |..|
    %if ($ - %%gap_start) != 2
        %error "GAP_SIZE_06158"
    %endif
%endmacro

%macro emit_gap_067_061cf 0
    %%gap_start:
    db 0x90 ; 061CF | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_061CF"
    %endif
%endmacro

%macro emit_gap_068_0627b 0
    %%gap_start:
    db 0x90 ; 0627B | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0627B"
    %endif
%endmacro

%macro emit_gap_069_0628f 0
    %%gap_start:
    db 0x90 ; 0628F | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0628F"
    %endif
%endmacro

%macro emit_gap_070_062e9 0
    %%gap_start:
    db 0x90 ; 062E9 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_062E9"
    %endif
%endmacro

%macro emit_gap_071_063fb 0
    %%gap_start:
    db 0x90 ; 063FB | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_063FB"
    %endif
%endmacro

%macro emit_gap_072_06435 0
    %%gap_start:
    db 0x90 ; 06435 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06435"
    %endif
%endmacro

%macro emit_gap_073_06457 0
    %%gap_start:
    db 0x90 ; 06457 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06457"
    %endif
%endmacro

%macro emit_gap_074_0650f 0
    %%gap_start:
    db 0x90 ; 0650F | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0650F"
    %endif
%endmacro

%macro emit_gap_075_06515 0
    %%gap_start:
    db 0x90 ; 06515 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06515"
    %endif
%endmacro

%macro emit_gap_076_0656b 0
    %%gap_start:
    db 0x90 ; 0656B | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0656B"
    %endif
%endmacro

%macro emit_gap_077_065fd 0
    %%gap_start:
    db 0x90 ; 065FD | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_065FD"
    %endif
%endmacro

%macro emit_gap_078_06619 0
    %%gap_start:
    db 0x90 ; 06619 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06619"
    %endif
%endmacro

%macro emit_gap_079_06643 0
    %%gap_start:
    db 0x90 ; 06643 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06643"
    %endif
%endmacro

%macro emit_gap_080_066af 0
    %%gap_start:
    db 0x90 ; 066AF | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_066AF"
    %endif
%endmacro

%macro emit_gap_081_06799 0
    %%gap_start:
    db 0x90 ; 06799 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06799"
    %endif
%endmacro

%macro emit_gap_082_067fb 0
    %%gap_start:
    db 0x90 ; 067FB | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_067FB"
    %endif
%endmacro

%macro emit_gap_083_0690c 0
    %%gap_start:
    db 0x90 ; 0690C | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_0690C"
    %endif
%endmacro

%macro emit_gap_084_06952 0
    %%gap_start:
    db 0x90 ; 06952 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06952"
    %endif
%endmacro

%macro emit_gap_085_06a6c 0
    %%gap_start:
    db 0x90 ; 06A6C | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06A6C"
    %endif
%endmacro

%macro emit_gap_086_06ae4 0
    %%gap_start:
    db 0x90 ; 06AE4 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06AE4"
    %endif
%endmacro

%macro emit_gap_087_06bff 0
    %%gap_start:
    db 0x90 ; 06BFF | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06BFF"
    %endif
%endmacro

%macro emit_gap_088_06da5 0
    %%gap_start:
    db 0x90 ; 06DA5 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06DA5"
    %endif
%endmacro

%macro emit_gap_089_06de3 0
    %%gap_start:
    db 0x90 ; 06DE3 | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06DE3"
    %endif
%endmacro

%macro emit_gap_090_06e0b 0
    %%gap_start:
    db 0x90 ; 06E0B | NOP encoding; gap ownership/reachability unresolved
    %if ($ - %%gap_start) != 1
        %error "GAP_SIZE_06E0B"
    %endif
%endmacro

%macro emit_gap_091_07025 0
    db 0x00 ; 07025 | unresolved byte before Miles runtime tables
%endmacro

%macro emit_gap_miles_071ca 0
    times 12 db 0 ; 071CA..071D5 | initialized scratch fields still under study
%endmacro

%macro emit_gap_miles_073de 0
    dw 0x00D3 ; 073DE..073DF | unresolved runtime word
%endmacro

%macro emit_gap_105_078fd 0
    %%gap_start:
    db 0x1E, 0x56, 0x57, 0x9C, 0xFA, 0xBE, 0x0F, 0x00, 0x56, 0x0E, 0xE8, 0xCB, 0xFF, 0x83, 0xC4, 0x02 ; 078FD |.VW.....V.......|
    db 0x4E, 0x7D, 0xF5, 0x80, 0xCF, 0x00, 0x0E, 0xE8, 0xFA, 0xFF, 0x5F, 0x5E, 0x1F, 0xCB ; 0790D |N}........_^..|
    %if ($ - %%gap_start) != 30
        %error "GAP_SIZE_078FD"
    %endif
%endmacro

%macro emit_gap_107_07943 0
    %%gap_start:
    db 0x1E, 0x56, 0x57, 0x9C, 0xFA, 0xBE, 0x0F, 0x00, 0x56, 0x0E, 0xE8, 0xCB, 0xFF, 0x83, 0xC4, 0x02 ; 07943 |.VW.....V.......|
    db 0x4E, 0x7D, 0xF5, 0x80, 0xCF, 0x00, 0x0E, 0xE8, 0xFA, 0xFF, 0x5F, 0x5E, 0x1F, 0xCB ; 07953 |N}........_^..|
    %if ($ - %%gap_start) != 30
        %error "GAP_SIZE_07943"
    %endif
%endmacro

%macro emit_gap_112_07b2a 0
    %%gap_start:
    db 0x55, 0x8B, 0xEC, 0x1E, 0x56, 0x57, 0x9C, 0xFA, 0x8B, 0x5E, 0x06, 0x83, 0xFB, 0x10, 0x73, 0x2B ; 07B2A |U...VW...^....s+|
    db 0xD1, 0xE3, 0xD1, 0xE3, 0x2E, 0xC7, 0x87, 0x2A, 0x01, 0x00, 0x00, 0x2E, 0xC7, 0x87, 0x2C, 0x01 ; 07B3A |.......*......,.|
    db 0x00, 0x00, 0x2E, 0x83, 0x3E, 0x26, 0x0E, 0x00, 0x74, 0x11, 0x8B, 0x46, 0x06, 0x2E, 0x3B, 0x06 ; 07B4A |....>&..t..F..;.|
    db 0x24, 0x0E, 0x75, 0x07, 0x2E, 0xC7, 0x06, 0x26, 0x0E, 0x00, 0x00, 0x80, 0xCF, 0x00, 0x0E, 0xE8 ; 07B5A |$.u....&........|
    db 0xFA, 0xFF, 0x5F, 0x5E, 0x1F, 0x5D, 0xCB ; 07B6A |.._^.].|
    %if ($ - %%gap_start) != 71
        %error "GAP_SIZE_07B2A"
    %endif
%endmacro

%macro emit_gap_114_07c82 0
    %%gap_start:
    db 0xB8, 0x78, 0x00, 0xE9, 0x90, 0xF7 ; 07C82 |.x....|
    %if ($ - %%gap_start) != 6
        %error "GAP_SIZE_07C82"
    %endif
%endmacro

%macro emit_gap_115_07c9a 0
    %%gap_start:
    db 0xB8, 0x7B, 0x00, 0xE9, 0x78, 0xF7, 0xB8, 0x85, 0x00, 0xE9, 0x72, 0xF7, 0xB8, 0x7C, 0x00, 0xE9 ; 07C9A |.{..x.....r..|..|
    db 0x6C, 0xF7 ; 07CAA |l.|
    %if ($ - %%gap_start) != 18
        %error "GAP_SIZE_07C9A"
    %endif
%endmacro

%macro emit_gap_116_07cb8 0
    %%gap_start:
    db 0xB8, 0x7F, 0x00, 0xE9, 0x5A, 0xF7, 0xB8, 0x80, 0x00, 0xE9, 0x54, 0xF7 ; 07CB8 |....Z.....T.|
    %if ($ - %%gap_start) != 12
        %error "GAP_SIZE_07CB8"
    %endif
%endmacro

%macro emit_gap_117_07cca 0
    %%gap_start:
    db 0xB8, 0x82, 0x00, 0xE9, 0x48, 0xF7, 0xB8, 0x83, 0x00, 0xE9, 0x42, 0xF7, 0xB8, 0x84, 0x00, 0xE9 ; 07CCA |....H.....B.....|
    db 0x3C, 0xF7, 0xB8, 0x96, 0x00, 0xE9, 0x36, 0xF7 ; 07CDA |<.....6.|
    %if ($ - %%gap_start) != 24
        %error "GAP_SIZE_07CCA"
    %endif
%endmacro

%macro emit_gap_118_07d06 0
    %%gap_start:
    db 0xB8, 0x9D, 0x00, 0xE9, 0x0C, 0xF7, 0xB8, 0x9E, 0x00, 0xE9, 0x06, 0xF7, 0xB8, 0x9F, 0x00, 0xE9 ; 07D06 |................|
    db 0x00, 0xF7 ; 07D16 |..|
    %if ($ - %%gap_start) != 18
        %error "GAP_SIZE_07D06"
    %endif
%endmacro

%macro emit_gap_119_07d24 0
    %%gap_start:
    db 0xB8, 0xAD, 0x00, 0xE9, 0xEE, 0xF6 ; 07D24 |......|
    %if ($ - %%gap_start) != 6
        %error "GAP_SIZE_07D24"
    %endif
%endmacro

%macro emit_gap_120_07d30 0
    %%gap_start:
    db 0xB8, 0xAF, 0x00, 0xE9, 0xE2, 0xF6, 0xB8, 0xB0, 0x00, 0xE9, 0xDC, 0xF6 ; 07D30 |............|
    %if ($ - %%gap_start) != 12
        %error "GAP_SIZE_07D30"
    %endif
%endmacro

%macro emit_gap_121_07d42 0
    %%gap_start:
    db 0xB8, 0xB2, 0x00, 0xE9, 0xD0, 0xF6, 0xB8, 0xB3, 0x00, 0xE9, 0xCA, 0xF6 ; 07D42 |............|
    %if ($ - %%gap_start) != 12
        %error "GAP_SIZE_07D42"
    %endif
%endmacro

%macro emit_gap_122_07d54 0
    %%gap_start:
    ; Unowned command-thunk bytes B5h..C2h (excluding B8h); no caller ownership asserted.
    db 0xB8, 0xB5, 0x00, 0xE9, 0xBE, 0xF6, 0xB8, 0xB6, 0x00, 0xE9, 0xB8, 0xF6, 0xB8, 0xB7, 0x00, 0xE9 ; 07D54
    db 0xB2, 0xF6, 0xB8, 0xB9, 0x00, 0xE9, 0xAC, 0xF6, 0xB8, 0xBA, 0x00, 0xE9, 0xA6, 0xF6, 0xB8, 0xBB ; 07D64
    db 0x00, 0xE9, 0xA0, 0xF6, 0xB8, 0xBC, 0x00, 0xE9, 0x9A, 0xF6, 0xB8, 0xBD, 0x00, 0xE9, 0x94, 0xF6 ; 07D74
    db 0xB8, 0xBE, 0x00, 0xE9, 0x8E, 0xF6, 0xB8, 0xBF, 0x00, 0xE9, 0x88, 0xF6, 0xB8, 0xC0, 0x00, 0xE9 ; 07D84
    db 0x82, 0xF6, 0xB8, 0xC1, 0x00, 0xE9, 0x7C, 0xF6, 0xB8, 0xC2, 0x00, 0xE9, 0x76, 0xF6 ; 07D94
    %if ($ - %%gap_start) != 78
        %error "GAP_SIZE_07D54"
    %endif
%endmacro

%macro emit_gap_123_07ec9 0
    %%gap_start:
    db 0xB8, 0x93, 0x06, 0x2E, 0x8B, 0x16, 0x28, 0x01, 0xCD, 0x66 ; 07EC9 |......(..f|
    %if ($ - %%gap_start) != 10
        %error "GAP_SIZE_07EC9"
    %endif
%endmacro

%macro emit_video_bank_gap_02dad 0
    db 0x90 ; 02DAD | ownership/reachability unresolved
%endmacro

%macro emit_video_bank_gap_02ddd 0
    db 0x90 ; 02DDD | ownership/reachability unresolved
%endmacro

%macro emit_video_bank_gap_02e3b 0
    db 0x90 ; 02E3B | ownership/reachability unresolved
%endmacro

%macro emit_video_bank_gap_02e7f 0
    db 0x90 ; 02E7F | ownership/reachability unresolved
%endmacro

%macro emit_video_bank_gap_02ead 0
    db 0x90 ; 02EAD | ownership/reachability unresolved
%endmacro

%macro emit_video_bank_gap_02edd 0
    db 0x90 ; 02EDD | ownership/reachability unresolved
%endmacro

%macro emit_video_bank_gap_02ef9 0
    db 0x90 ; 02EF9 | ownership/reachability unresolved
%endmacro

%macro emit_video_bank_gap_02f23 0
    db 0x90 ; 02F23 | ownership/reachability unresolved
%endmacro

%macro emit_video_bank_gap_02f4f 0
    db 0xC3 ; 02F4F | ownership/reachability unresolved
%endmacro

%macro emit_video_bank_gap_02f69 0
    db 0x90 ; 02F69 | ownership/reachability unresolved
%endmacro
