; T7GMac MacBinary II: exact file-order byte emission.
; NASM is a byte emitter; all native instruction comments are Motorola 68k.
BITS 16
ORG 0

%if ($-$$) != 0x0
%error "Incorrect placement: src/data/unknown_000000_00017f.asm"
%endif
%include "src/data/unknown_000000_00017f.asm"
%if ($-$$) != 0x180
%error "Incorrect placement: src/data/resource_DATA_0.asm"
%endif
%include "src/data/resource_DATA_0.asm"
%if ($-$$) != 0xE66
%error "Incorrect placement: src/data/resource_ZERO_0.asm"
%endif
%include "src/data/resource_ZERO_0.asm"
%if ($-$$) != 0xF3A
%error "Incorrect placement: src/data/resource_DREL_0.asm"
%endif
%include "src/data/resource_DREL_0.asm"
%if ($-$$) != 0x1064
%error "Incorrect placement: src/functions/unknown/code_2_unknown.asm"
%endif
%include "src/functions/unknown/code_2_unknown.asm"
%if ($-$$) != 0x7762
%error "Incorrect placement: src/functions/unknown/code_5_unknown.asm"
%endif
%include "src/functions/unknown/code_5_unknown.asm"
%if ($-$$) != 0xECD0
%error "Incorrect placement: src/functions/unknown/code_4_unknown.asm"
%endif
%include "src/functions/unknown/code_4_unknown.asm"
%if ($-$$) != 0x12C6A
%error "Incorrect placement: src/functions/unknown/code_1_unknown.asm"
%endif
%include "src/functions/unknown/code_1_unknown.asm"
%if ($-$$) != 0x12EB0
%error "Incorrect placement: src/data/resource_CODE_0.asm"
%endif
%include "src/data/resource_CODE_0.asm"
%if ($-$$) != 0x13144
%error "Incorrect placement: src/data/resource_SIZE_-1.asm"
%endif
%include "src/data/resource_SIZE_-1.asm"
%if ($-$$) != 0x13152
%error "Incorrect placement: src/data/resource_csnd_650.asm"
%endif
%include "src/data/resource_csnd_650.asm"
%if ($-$$) != 0x13CE0
%error "Incorrect placement: src/data/resource_csnd_6036.asm"
%endif
%include "src/data/resource_csnd_6036.asm"
%if ($-$$) != 0x1405B
%error "Incorrect placement: src/data/resource_csnd_6018.asm"
%endif
%include "src/data/resource_csnd_6018.asm"
%if ($-$$) != 0x149B7
%error "Incorrect placement: src/data/resource_csnd_6020.asm"
%endif
%include "src/data/resource_csnd_6020.asm"
%if ($-$$) != 0x15ED1
%error "Incorrect placement: src/data/resource_csnd_6021.asm"
%endif
%include "src/data/resource_csnd_6021.asm"
%if ($-$$) != 0x17528
%error "Incorrect placement: src/data/resource_csnd_6022.asm"
%endif
%include "src/data/resource_csnd_6022.asm"
%if ($-$$) != 0x184FF
%error "Incorrect placement: src/data/resource_csnd_6023.asm"
%endif
%include "src/data/resource_csnd_6023.asm"
%if ($-$$) != 0x193A4
%error "Incorrect placement: src/data/resource_csnd_6024.asm"
%endif
%include "src/data/resource_csnd_6024.asm"
%if ($-$$) != 0x19EE3
%error "Incorrect placement: src/data/resource_csnd_6025.asm"
%endif
%include "src/data/resource_csnd_6025.asm"
%if ($-$$) != 0x1A96D
%error "Incorrect placement: src/data/resource_csnd_6027.asm"
%endif
%include "src/data/resource_csnd_6027.asm"
%if ($-$$) != 0x1AC6B
%error "Incorrect placement: src/data/resource_csnd_6028.asm"
%endif
%include "src/data/resource_csnd_6028.asm"
%if ($-$$) != 0x1B5A1
%error "Incorrect placement: src/data/resource_csnd_6032.asm"
%endif
%include "src/data/resource_csnd_6032.asm"
%if ($-$$) != 0x1B6AB
%error "Incorrect placement: src/data/resource_csnd_6033.asm"
%endif
%include "src/data/resource_csnd_6033.asm"
%if ($-$$) != 0x1B931
%error "Incorrect placement: src/data/resource_csnd_6034.asm"
%endif
%include "src/data/resource_csnd_6034.asm"
%if ($-$$) != 0x1C174
%error "Incorrect placement: src/data/resource_csnd_6035.asm"
%endif
%include "src/data/resource_csnd_6035.asm"
%if ($-$$) != 0x1C5AF
%error "Incorrect placement: src/data/resource_csnd_6040.asm"
%endif
%include "src/data/resource_csnd_6040.asm"
%if ($-$$) != 0x1CDDD
%error "Incorrect placement: src/data/resource_csnd_6041.asm"
%endif
%include "src/data/resource_csnd_6041.asm"
%if ($-$$) != 0x1D9EE
%error "Incorrect placement: src/data/resource_csnd_6043.asm"
%endif
%include "src/data/resource_csnd_6043.asm"
%if ($-$$) != 0x1E2ED
%error "Incorrect placement: src/data/resource_csnd_6044.asm"
%endif
%include "src/data/resource_csnd_6044.asm"
%if ($-$$) != 0x1E850
%error "Incorrect placement: src/data/resource_csnd_6045.asm"
%endif
%include "src/data/resource_csnd_6045.asm"
%if ($-$$) != 0x1F2AF
%error "Incorrect placement: src/data/resource_csnd_6046.asm"
%endif
%include "src/data/resource_csnd_6046.asm"
%if ($-$$) != 0x21822
%error "Incorrect placement: src/data/resource_csnd_6047.asm"
%endif
%include "src/data/resource_csnd_6047.asm"
%if ($-$$) != 0x2224A
%error "Incorrect placement: src/data/resource_csnd_6048.asm"
%endif
%include "src/data/resource_csnd_6048.asm"
%if ($-$$) != 0x22BDA
%error "Incorrect placement: src/data/resource_csnd_6049.asm"
%endif
%include "src/data/resource_csnd_6049.asm"
%if ($-$$) != 0x257E1
%error "Incorrect placement: src/data/resource_csnd_6050.asm"
%endif
%include "src/data/resource_csnd_6050.asm"
%if ($-$$) != 0x26008
%error "Incorrect placement: src/data/resource_csnd_6051.asm"
%endif
%include "src/data/resource_csnd_6051.asm"
%if ($-$$) != 0x2826E
%error "Incorrect placement: src/data/resource_csnd_6052.asm"
%endif
%include "src/data/resource_csnd_6052.asm"
%if ($-$$) != 0x2A87F
%error "Incorrect placement: src/data/resource_csnd_6053.asm"
%endif
%include "src/data/resource_csnd_6053.asm"
%if ($-$$) != 0x2C582
%error "Incorrect placement: src/data/resource_csnd_6055.asm"
%endif
%include "src/data/resource_csnd_6055.asm"
%if ($-$$) != 0x2D9A7
%error "Incorrect placement: src/data/resource_csnd_6056.asm"
%endif
%include "src/data/resource_csnd_6056.asm"
%if ($-$$) != 0x2E036
%error "Incorrect placement: src/data/resource_csnd_6057.asm"
%endif
%include "src/data/resource_csnd_6057.asm"
%if ($-$$) != 0x307B3
%error "Incorrect placement: src/data/resource_csnd_6058.asm"
%endif
%include "src/data/resource_csnd_6058.asm"
%if ($-$$) != 0x31B9A
%error "Incorrect placement: src/data/resource_csnd_6059.asm"
%endif
%include "src/data/resource_csnd_6059.asm"
%if ($-$$) != 0x336D2
%error "Incorrect placement: src/data/resource_csnd_6060.asm"
%endif
%include "src/data/resource_csnd_6060.asm"
%if ($-$$) != 0x33C71
%error "Incorrect placement: src/data/resource_csnd_6061.asm"
%endif
%include "src/data/resource_csnd_6061.asm"
%if ($-$$) != 0x34252
%error "Incorrect placement: src/data/resource_csnd_6062.asm"
%endif
%include "src/data/resource_csnd_6062.asm"
%if ($-$$) != 0x3447B
%error "Incorrect placement: src/data/resource_csnd_6063.asm"
%endif
%include "src/data/resource_csnd_6063.asm"
%if ($-$$) != 0x34AEA
%error "Incorrect placement: src/data/resource_csnd_6064.asm"
%endif
%include "src/data/resource_csnd_6064.asm"
%if ($-$$) != 0x351D9
%error "Incorrect placement: src/data/resource_csnd_6065.asm"
%endif
%include "src/data/resource_csnd_6065.asm"
%if ($-$$) != 0x35A2C
%error "Incorrect placement: src/data/resource_csnd_6066.asm"
%endif
%include "src/data/resource_csnd_6066.asm"
%if ($-$$) != 0x364EE
%error "Incorrect placement: src/data/resource_csnd_6074.asm"
%endif
%include "src/data/resource_csnd_6074.asm"
%if ($-$$) != 0x36FBC
%error "Incorrect placement: src/data/resource_csnd_6075.asm"
%endif
%include "src/data/resource_csnd_6075.asm"
%if ($-$$) != 0x3751D
%error "Incorrect placement: src/data/resource_csnd_6079.asm"
%endif
%include "src/data/resource_csnd_6079.asm"
%if ($-$$) != 0x37C6B
%error "Incorrect placement: src/data/resource_csnd_6081.asm"
%endif
%include "src/data/resource_csnd_6081.asm"
%if ($-$$) != 0x38DB2
%error "Incorrect placement: src/data/resource_csnd_6086.asm"
%endif
%include "src/data/resource_csnd_6086.asm"
%if ($-$$) != 0x393D1
%error "Incorrect placement: src/data/resource_csnd_6087.asm"
%endif
%include "src/data/resource_csnd_6087.asm"
%if ($-$$) != 0x39DB4
%error "Incorrect placement: src/data/resource_csnd_6088.asm"
%endif
%include "src/data/resource_csnd_6088.asm"
%if ($-$$) != 0x3A3A7
%error "Incorrect placement: src/data/resource_csnd_6090.asm"
%endif
%include "src/data/resource_csnd_6090.asm"
%if ($-$$) != 0x3AB0A
%error "Incorrect placement: src/data/resource_csnd_6091.asm"
%endif
%include "src/data/resource_csnd_6091.asm"
%if ($-$$) != 0x3B125
%error "Incorrect placement: src/data/resource_csnd_6092.asm"
%endif
%include "src/data/resource_csnd_6092.asm"
%if ($-$$) != 0x3B6AB
%error "Incorrect placement: src/data/resource_csnd_6093.asm"
%endif
%include "src/data/resource_csnd_6093.asm"
%if ($-$$) != 0x3BB9D
%error "Incorrect placement: src/data/resource_csnd_6094.asm"
%endif
%include "src/data/resource_csnd_6094.asm"
%if ($-$$) != 0x3BF77
%error "Incorrect placement: src/data/resource_csnd_6095.asm"
%endif
%include "src/data/resource_csnd_6095.asm"
%if ($-$$) != 0x3C32D
%error "Incorrect placement: src/data/resource_csnd_6098.asm"
%endif
%include "src/data/resource_csnd_6098.asm"
%if ($-$$) != 0x3CB4E
%error "Incorrect placement: src/data/resource_csnd_10.asm"
%endif
%include "src/data/resource_csnd_10.asm"
%if ($-$$) != 0x3F18E
%error "Incorrect placement: src/data/resource_csnd_11.asm"
%endif
%include "src/data/resource_csnd_11.asm"
%if ($-$$) != 0x40B84
%error "Incorrect placement: src/data/resource_csnd_12.asm"
%endif
%include "src/data/resource_csnd_12.asm"
%if ($-$$) != 0x4249E
%error "Incorrect placement: src/data/resource_csnd_13.asm"
%endif
%include "src/data/resource_csnd_13.asm"
%if ($-$$) != 0x43C4C
%error "Incorrect placement: src/data/resource_csnd_40.asm"
%endif
%include "src/data/resource_csnd_40.asm"
%if ($-$$) != 0x44A98
%error "Incorrect placement: src/data/resource_csnd_41.asm"
%endif
%include "src/data/resource_csnd_41.asm"
%if ($-$$) != 0x45B11
%error "Incorrect placement: src/data/resource_csnd_42.asm"
%endif
%include "src/data/resource_csnd_42.asm"
%if ($-$$) != 0x46C37
%error "Incorrect placement: src/data/resource_csnd_80.asm"
%endif
%include "src/data/resource_csnd_80.asm"
%if ($-$$) != 0x47A09
%error "Incorrect placement: src/data/resource_csnd_83.asm"
%endif
%include "src/data/resource_csnd_83.asm"
%if ($-$$) != 0x48041
%error "Incorrect placement: src/data/resource_csnd_90.asm"
%endif
%include "src/data/resource_csnd_90.asm"
%if ($-$$) != 0x493A6
%error "Incorrect placement: src/data/resource_csnd_110.asm"
%endif
%include "src/data/resource_csnd_110.asm"
%if ($-$$) != 0x4A10E
%error "Incorrect placement: src/data/resource_csnd_111.asm"
%endif
%include "src/data/resource_csnd_111.asm"
%if ($-$$) != 0x4B435
%error "Incorrect placement: src/data/resource_csnd_112.asm"
%endif
%include "src/data/resource_csnd_112.asm"
%if ($-$$) != 0x4CBC4
%error "Incorrect placement: src/data/resource_csnd_113.asm"
%endif
%include "src/data/resource_csnd_113.asm"
%if ($-$$) != 0x4E990
%error "Incorrect placement: src/data/resource_csnd_120.asm"
%endif
%include "src/data/resource_csnd_120.asm"
%if ($-$$) != 0x4F6DF
%error "Incorrect placement: src/data/resource_csnd_121.asm"
%endif
%include "src/data/resource_csnd_121.asm"
%if ($-$$) != 0x50483
%error "Incorrect placement: src/data/resource_csnd_122.asm"
%endif
%include "src/data/resource_csnd_122.asm"
%if ($-$$) != 0x50FAA
%error "Incorrect placement: src/data/resource_csnd_123.asm"
%endif
%include "src/data/resource_csnd_123.asm"
%if ($-$$) != 0x51B32
%error "Incorrect placement: src/data/resource_csnd_130.asm"
%endif
%include "src/data/resource_csnd_130.asm"
%if ($-$$) != 0x521F3
%error "Incorrect placement: src/data/resource_csnd_131.asm"
%endif
%include "src/data/resource_csnd_131.asm"
%if ($-$$) != 0x527F0
%error "Incorrect placement: src/data/resource_csnd_132.asm"
%endif
%include "src/data/resource_csnd_132.asm"
%if ($-$$) != 0x52DC7
%error "Incorrect placement: src/data/resource_csnd_133.asm"
%endif
%include "src/data/resource_csnd_133.asm"
%if ($-$$) != 0x53373
%error "Incorrect placement: src/data/resource_csnd_140.asm"
%endif
%include "src/data/resource_csnd_140.asm"
%if ($-$$) != 0x54995
%error "Incorrect placement: src/data/resource_csnd_160.asm"
%endif
%include "src/data/resource_csnd_160.asm"
%if ($-$$) != 0x554FD
%error "Incorrect placement: src/data/resource_csnd_161.asm"
%endif
%include "src/data/resource_csnd_161.asm"
%if ($-$$) != 0x56E95
%error "Incorrect placement: src/data/resource_csnd_180.asm"
%endif
%include "src/data/resource_csnd_180.asm"
%if ($-$$) != 0x578FE
%error "Incorrect placement: src/data/resource_csnd_181.asm"
%endif
%include "src/data/resource_csnd_181.asm"
%if ($-$$) != 0x58994
%error "Incorrect placement: src/data/resource_csnd_182.asm"
%endif
%include "src/data/resource_csnd_182.asm"
%if ($-$$) != 0x5A6E4
%error "Incorrect placement: src/data/resource_csnd_183.asm"
%endif
%include "src/data/resource_csnd_183.asm"
%if ($-$$) != 0x5BE17
%error "Incorrect placement: src/data/resource_csnd_230.asm"
%endif
%include "src/data/resource_csnd_230.asm"
%if ($-$$) != 0x6283A
%error "Incorrect placement: src/data/resource_csnd_240.asm"
%endif
%include "src/data/resource_csnd_240.asm"
%if ($-$$) != 0x63635
%error "Incorrect placement: src/data/resource_csnd_241.asm"
%endif
%include "src/data/resource_csnd_241.asm"
%if ($-$$) != 0x6478F
%error "Incorrect placement: src/data/resource_csnd_242.asm"
%endif
%include "src/data/resource_csnd_242.asm"
%if ($-$$) != 0x6530D
%error "Incorrect placement: src/data/resource_csnd_260.asm"
%endif
%include "src/data/resource_csnd_260.asm"
%if ($-$$) != 0x65F12
%error "Incorrect placement: src/data/resource_csnd_261.asm"
%endif
%include "src/data/resource_csnd_261.asm"
%if ($-$$) != 0x66D6C
%error "Incorrect placement: src/data/resource_csnd_262.asm"
%endif
%include "src/data/resource_csnd_262.asm"
%if ($-$$) != 0x67C11
%error "Incorrect placement: src/data/resource_csnd_264.asm"
%endif
%include "src/data/resource_csnd_264.asm"
%if ($-$$) != 0x68669
%error "Incorrect placement: src/data/resource_csnd_270.asm"
%endif
%include "src/data/resource_csnd_270.asm"
%if ($-$$) != 0x6945D
%error "Incorrect placement: src/data/resource_csnd_271.asm"
%endif
%include "src/data/resource_csnd_271.asm"
%if ($-$$) != 0x69FA6
%error "Incorrect placement: src/data/resource_csnd_290.asm"
%endif
%include "src/data/resource_csnd_290.asm"
%if ($-$$) != 0x6C41A
%error "Incorrect placement: src/data/resource_csnd_291.asm"
%endif
%include "src/data/resource_csnd_291.asm"
%if ($-$$) != 0x6E47E
%error "Incorrect placement: src/data/resource_csnd_293.asm"
%endif
%include "src/data/resource_csnd_293.asm"
%if ($-$$) != 0x6EC6A
%error "Incorrect placement: src/data/resource_csnd_300.asm"
%endif
%include "src/data/resource_csnd_300.asm"
%if ($-$$) != 0x6F770
%error "Incorrect placement: src/data/resource_csnd_302.asm"
%endif
%include "src/data/resource_csnd_302.asm"
%if ($-$$) != 0x70D64
%error "Incorrect placement: src/data/resource_csnd_320.asm"
%endif
%include "src/data/resource_csnd_320.asm"
%if ($-$$) != 0x71531
%error "Incorrect placement: src/data/resource_csnd_321.asm"
%endif
%include "src/data/resource_csnd_321.asm"
%if ($-$$) != 0x71BB7
%error "Incorrect placement: src/data/resource_csnd_330.asm"
%endif
%include "src/data/resource_csnd_330.asm"
%if ($-$$) != 0x72220
%error "Incorrect placement: src/data/resource_csnd_331.asm"
%endif
%include "src/data/resource_csnd_331.asm"
%if ($-$$) != 0x72B8A
%error "Incorrect placement: src/data/resource_csnd_340.asm"
%endif
%include "src/data/resource_csnd_340.asm"
%if ($-$$) != 0x7364C
%error "Incorrect placement: src/data/resource_csnd_341.asm"
%endif
%include "src/data/resource_csnd_341.asm"
%if ($-$$) != 0x7407C
%error "Incorrect placement: src/data/resource_csnd_350.asm"
%endif
%include "src/data/resource_csnd_350.asm"
%if ($-$$) != 0x746E4
%error "Incorrect placement: src/data/resource_csnd_351.asm"
%endif
%include "src/data/resource_csnd_351.asm"
%if ($-$$) != 0x74FAF
%error "Incorrect placement: src/data/resource_csnd_360.asm"
%endif
%include "src/data/resource_csnd_360.asm"
%if ($-$$) != 0x75B57
%error "Incorrect placement: src/data/resource_csnd_361.asm"
%endif
%include "src/data/resource_csnd_361.asm"
%if ($-$$) != 0x768EA
%error "Incorrect placement: src/data/resource_csnd_370.asm"
%endif
%include "src/data/resource_csnd_370.asm"
%if ($-$$) != 0x7709B
%error "Incorrect placement: src/data/resource_csnd_371.asm"
%endif
%include "src/data/resource_csnd_371.asm"
%if ($-$$) != 0x777B0
%error "Incorrect placement: src/data/resource_csnd_380.asm"
%endif
%include "src/data/resource_csnd_380.asm"
%if ($-$$) != 0x7839C
%error "Incorrect placement: src/data/resource_csnd_381.asm"
%endif
%include "src/data/resource_csnd_381.asm"
%if ($-$$) != 0x79021
%error "Incorrect placement: src/data/resource_csnd_390.asm"
%endif
%include "src/data/resource_csnd_390.asm"
%if ($-$$) != 0x79446
%error "Incorrect placement: src/data/resource_csnd_391.asm"
%endif
%include "src/data/resource_csnd_391.asm"
%if ($-$$) != 0x79A0B
%error "Incorrect placement: src/data/resource_csnd_400.asm"
%endif
%include "src/data/resource_csnd_400.asm"
%if ($-$$) != 0x7A70C
%error "Incorrect placement: src/data/resource_csnd_420.asm"
%endif
%include "src/data/resource_csnd_420.asm"
%if ($-$$) != 0x7B107
%error "Incorrect placement: src/data/resource_csnd_421.asm"
%endif
%include "src/data/resource_csnd_421.asm"
%if ($-$$) != 0x7BB2B
%error "Incorrect placement: src/data/resource_csnd_422.asm"
%endif
%include "src/data/resource_csnd_422.asm"
%if ($-$$) != 0x7C7C4
%error "Incorrect placement: src/data/resource_csnd_450.asm"
%endif
%include "src/data/resource_csnd_450.asm"
%if ($-$$) != 0x7D021
%error "Incorrect placement: src/data/resource_csnd_451.asm"
%endif
%include "src/data/resource_csnd_451.asm"
%if ($-$$) != 0x7DAAF
%error "Incorrect placement: src/data/resource_csnd_452.asm"
%endif
%include "src/data/resource_csnd_452.asm"
%if ($-$$) != 0x7E636
%error "Incorrect placement: src/data/resource_csnd_453.asm"
%endif
%include "src/data/resource_csnd_453.asm"
%if ($-$$) != 0x7F0E1
%error "Incorrect placement: src/data/resource_csnd_460.asm"
%endif
%include "src/data/resource_csnd_460.asm"
%if ($-$$) != 0x7F9AD
%error "Incorrect placement: src/data/resource_csnd_520.asm"
%endif
%include "src/data/resource_csnd_520.asm"
%if ($-$$) != 0x8295B
%error "Incorrect placement: src/data/resource_csnd_521.asm"
%endif
%include "src/data/resource_csnd_521.asm"
%if ($-$$) != 0x85B6F
%error "Incorrect placement: src/data/resource_csnd_560.asm"
%endif
%include "src/data/resource_csnd_560.asm"
%if ($-$$) != 0x863DB
%error "Incorrect placement: src/data/resource_csnd_561.asm"
%endif
%include "src/data/resource_csnd_561.asm"
%if ($-$$) != 0x86E25
%error "Incorrect placement: src/data/resource_csnd_562.asm"
%endif
%include "src/data/resource_csnd_562.asm"
%if ($-$$) != 0x87512
%error "Incorrect placement: src/data/resource_csnd_580.asm"
%endif
%include "src/data/resource_csnd_580.asm"
%if ($-$$) != 0x879F8
%error "Incorrect placement: src/data/resource_csnd_581.asm"
%endif
%include "src/data/resource_csnd_581.asm"
%if ($-$$) != 0x88197
%error "Incorrect placement: src/data/resource_csnd_600.asm"
%endif
%include "src/data/resource_csnd_600.asm"
%if ($-$$) != 0x88B55
%error "Incorrect placement: src/data/resource_csnd_601.asm"
%endif
%include "src/data/resource_csnd_601.asm"
%if ($-$$) != 0x893BC
%error "Incorrect placement: src/data/resource_csnd_602.asm"
%endif
%include "src/data/resource_csnd_602.asm"
%if ($-$$) != 0x89B51
%error "Incorrect placement: src/data/resource_csnd_640.asm"
%endif
%include "src/data/resource_csnd_640.asm"
%if ($-$$) != 0x8A0EB
%error "Incorrect placement: src/data/resource_csnd_660.asm"
%endif
%include "src/data/resource_csnd_660.asm"
%if ($-$$) != 0x8A93B
%error "Incorrect placement: src/data/resource_csnd_671.asm"
%endif
%include "src/data/resource_csnd_671.asm"
%if ($-$$) != 0x8B1DB
%error "Incorrect placement: src/data/resource_csnd_700.asm"
%endif
%include "src/data/resource_csnd_700.asm"
%if ($-$$) != 0x8BBB0
%error "Incorrect placement: src/data/resource_csnd_710.asm"
%endif
%include "src/data/resource_csnd_710.asm"
%if ($-$$) != 0x8C9A9
%error "Incorrect placement: src/data/resource_csnd_711.asm"
%endif
%include "src/data/resource_csnd_711.asm"
%if ($-$$) != 0x8D51C
%error "Incorrect placement: src/data/resource_csnd_720.asm"
%endif
%include "src/data/resource_csnd_720.asm"
%if ($-$$) != 0x8DDAF
%error "Incorrect placement: src/data/resource_csnd_740.asm"
%endif
%include "src/data/resource_csnd_740.asm"
%if ($-$$) != 0x8E306
%error "Incorrect placement: src/data/resource_csnd_741.asm"
%endif
%include "src/data/resource_csnd_741.asm"
%if ($-$$) != 0x8E8F5
%error "Incorrect placement: src/data/resource_csnd_750.asm"
%endif
%include "src/data/resource_csnd_750.asm"
%if ($-$$) != 0x8FBA6
%error "Incorrect placement: src/data/resource_csnd_751.asm"
%endif
%include "src/data/resource_csnd_751.asm"
%if ($-$$) != 0x908B8
%error "Incorrect placement: src/data/resource_csnd_780.asm"
%endif
%include "src/data/resource_csnd_780.asm"
%if ($-$$) != 0x91047
%error "Incorrect placement: src/data/resource_csnd_781.asm"
%endif
%include "src/data/resource_csnd_781.asm"
%if ($-$$) != 0x91AED
%error "Incorrect placement: src/data/resource_csnd_782.asm"
%endif
%include "src/data/resource_csnd_782.asm"
%if ($-$$) != 0x9262B
%error "Incorrect placement: src/data/resource_csnd_790.asm"
%endif
%include "src/data/resource_csnd_790.asm"
%if ($-$$) != 0x936E8
%error "Incorrect placement: src/data/resource_csnd_800.asm"
%endif
%include "src/data/resource_csnd_800.asm"
%if ($-$$) != 0x94C80
%error "Incorrect placement: src/data/resource_csnd_801.asm"
%endif
%include "src/data/resource_csnd_801.asm"
%if ($-$$) != 0x9637E
%error "Incorrect placement: src/data/resource_csnd_802.asm"
%endif
%include "src/data/resource_csnd_802.asm"
%if ($-$$) != 0x97C8A
%error "Incorrect placement: src/data/resource_csnd_810.asm"
%endif
%include "src/data/resource_csnd_810.asm"
%if ($-$$) != 0x98FF9
%error "Incorrect placement: src/data/resource_csnd_811.asm"
%endif
%include "src/data/resource_csnd_811.asm"
%if ($-$$) != 0x9A1A9
%error "Incorrect placement: src/data/resource_csnd_812.asm"
%endif
%include "src/data/resource_csnd_812.asm"
%if ($-$$) != 0x9AE4E
%error "Incorrect placement: src/data/resource_csnd_813.asm"
%endif
%include "src/data/resource_csnd_813.asm"
%if ($-$$) != 0x9B9B6
%error "Incorrect placement: src/data/resource_csnd_820.asm"
%endif
%include "src/data/resource_csnd_820.asm"
%if ($-$$) != 0x9D148
%error "Incorrect placement: src/data/resource_csnd_821.asm"
%endif
%include "src/data/resource_csnd_821.asm"
%if ($-$$) != 0x9E2E9
%error "Incorrect placement: src/data/resource_csnd_822.asm"
%endif
%include "src/data/resource_csnd_822.asm"
%if ($-$$) != 0x9EF6B
%error "Incorrect placement: src/data/resource_csnd_830.asm"
%endif
%include "src/data/resource_csnd_830.asm"
%if ($-$$) != 0xA2154
%error "Incorrect placement: src/data/resource_csnd_831.asm"
%endif
%include "src/data/resource_csnd_831.asm"
%if ($-$$) != 0xA4007
%error "Incorrect placement: src/data/resource_csnd_832.asm"
%endif
%include "src/data/resource_csnd_832.asm"
%if ($-$$) != 0xA5750
%error "Incorrect placement: src/data/resource_csnd_840.asm"
%endif
%include "src/data/resource_csnd_840.asm"
%if ($-$$) != 0xA77C1
%error "Incorrect placement: src/data/resource_csnd_841.asm"
%endif
%include "src/data/resource_csnd_841.asm"
%if ($-$$) != 0xA8E7A
%error "Incorrect placement: src/data/resource_csnd_843.asm"
%endif
%include "src/data/resource_csnd_843.asm"
%if ($-$$) != 0xAA816
%error "Incorrect placement: src/data/resource_csnd_850.asm"
%endif
%include "src/data/resource_csnd_850.asm"
%if ($-$$) != 0xAC7C9
%error "Incorrect placement: src/data/resource_csnd_851.asm"
%endif
%include "src/data/resource_csnd_851.asm"
%if ($-$$) != 0xAFB9C
%error "Incorrect placement: src/data/resource_csnd_880.asm"
%endif
%include "src/data/resource_csnd_880.asm"
%if ($-$$) != 0xB26D6
%error "Incorrect placement: src/data/resource_csnd_1050.asm"
%endif
%include "src/data/resource_csnd_1050.asm"
%if ($-$$) != 0xB30BF
%error "Incorrect placement: src/data/resource_csnd_1051.asm"
%endif
%include "src/data/resource_csnd_1051.asm"
%if ($-$$) != 0xB39F9
%error "Incorrect placement: src/data/resource_csnd_1052.asm"
%endif
%include "src/data/resource_csnd_1052.asm"
%if ($-$$) != 0xB45EE
%error "Incorrect placement: src/data/resource_csnd_1080.asm"
%endif
%include "src/data/resource_csnd_1080.asm"
%if ($-$$) != 0xB4E8B
%error "Incorrect placement: src/data/resource_csnd_1081.asm"
%endif
%include "src/data/resource_csnd_1081.asm"
%if ($-$$) != 0xB5905
%error "Incorrect placement: src/data/resource_csnd_1082.asm"
%endif
%include "src/data/resource_csnd_1082.asm"
%if ($-$$) != 0xB63F0
%error "Incorrect placement: src/data/resource_csnd_1120.asm"
%endif
%include "src/data/resource_csnd_1120.asm"
%if ($-$$) != 0xB735E
%error "Incorrect placement: src/data/resource_csnd_1121.asm"
%endif
%include "src/data/resource_csnd_1121.asm"
%if ($-$$) != 0xB8B2D
%error "Incorrect placement: src/data/resource_csnd_1122.asm"
%endif
%include "src/data/resource_csnd_1122.asm"
%if ($-$$) != 0xBA771
%error "Incorrect placement: src/data/resource_csnd_1140.asm"
%endif
%include "src/data/resource_csnd_1140.asm"
%if ($-$$) != 0xBB345
%error "Incorrect placement: src/data/resource_csnd_1141.asm"
%endif
%include "src/data/resource_csnd_1141.asm"
%if ($-$$) != 0xBBFC2
%error "Incorrect placement: src/data/resource_csnd_1142.asm"
%endif
%include "src/data/resource_csnd_1142.asm"
%if ($-$$) != 0xBCCEC
%error "Incorrect placement: src/data/resource_csnd_1160.asm"
%endif
%include "src/data/resource_csnd_1160.asm"
%if ($-$$) != 0xBD2D3
%error "Incorrect placement: src/data/resource_csnd_0.asm"
%endif
%include "src/data/resource_csnd_0.asm"
%if ($-$$) != 0xBF6DC
%error "Incorrect placement: src/data/resource_csnd_1.asm"
%endif
%include "src/data/resource_csnd_1.asm"
%if ($-$$) != 0xC1D84
%error "Incorrect placement: src/data/resource_csnd_2.asm"
%endif
%include "src/data/resource_csnd_2.asm"
%if ($-$$) != 0xC3B5A
%error "Incorrect placement: src/data/resource_csnd_3.asm"
%endif
%include "src/data/resource_csnd_3.asm"
%if ($-$$) != 0xC4C69
%error "Incorrect placement: src/data/resource_csnd_4700.asm"
%endif
%include "src/data/resource_csnd_4700.asm"
%if ($-$$) != 0xC5BCE
%error "Incorrect placement: src/data/resource_csnd_4701.asm"
%endif
%include "src/data/resource_csnd_4701.asm"
%if ($-$$) != 0xC6AB2
%error "Incorrect placement: src/data/resource_csnd_4702.asm"
%endif
%include "src/data/resource_csnd_4702.asm"
%if ($-$$) != 0xC77FF
%error "Incorrect placement: src/data/resource_snd__6019.asm"
%endif
%include "src/data/resource_snd__6019.asm"
%if ($-$$) != 0xC8A0C
%error "Incorrect placement: src/data/resource_snd__6029.asm"
%endif
%include "src/data/resource_snd__6029.asm"
%if ($-$$) != 0xC90D0
%error "Incorrect placement: src/data/resource_snd__6030.asm"
%endif
%include "src/data/resource_snd__6030.asm"
%if ($-$$) != 0xC9833
%error "Incorrect placement: src/data/resource_snd__6031.asm"
%endif
%include "src/data/resource_snd__6031.asm"
%if ($-$$) != 0xC9AB0
%error "Incorrect placement: src/data/resource_snd__6037.asm"
%endif
%include "src/data/resource_snd__6037.asm"
%if ($-$$) != 0xC9EC7
%error "Incorrect placement: src/data/resource_snd__6038.asm"
%endif
%include "src/data/resource_snd__6038.asm"
%if ($-$$) != 0xCA70B
%error "Incorrect placement: src/data/resource_snd__6039.asm"
%endif
%include "src/data/resource_snd__6039.asm"
%if ($-$$) != 0xCAE39
%error "Incorrect placement: src/data/resource_snd__6042.asm"
%endif
%include "src/data/resource_snd__6042.asm"
%if ($-$$) != 0xCB228
%error "Incorrect placement: src/data/resource_snd__6054.asm"
%endif
%include "src/data/resource_snd__6054.asm"
%if ($-$$) != 0xCB8AF
%error "Incorrect placement: src/data/resource_snd__6067.asm"
%endif
%include "src/data/resource_snd__6067.asm"
%if ($-$$) != 0xCBCE9
%error "Incorrect placement: src/data/resource_snd__6068.asm"
%endif
%include "src/data/resource_snd__6068.asm"
%if ($-$$) != 0xCC281
%error "Incorrect placement: src/data/resource_snd__6069.asm"
%endif
%include "src/data/resource_snd__6069.asm"
%if ($-$$) != 0xCC549
%error "Incorrect placement: src/data/resource_snd__6070.asm"
%endif
%include "src/data/resource_snd__6070.asm"
%if ($-$$) != 0xCC61E
%error "Incorrect placement: src/data/resource_snd__6071.asm"
%endif
%include "src/data/resource_snd__6071.asm"
%if ($-$$) != 0xCCBFC
%error "Incorrect placement: src/data/resource_snd__6072.asm"
%endif
%include "src/data/resource_snd__6072.asm"
%if ($-$$) != 0xCEA7B
%error "Incorrect placement: src/data/resource_snd__6073.asm"
%endif
%include "src/data/resource_snd__6073.asm"
%if ($-$$) != 0xCF187
%error "Incorrect placement: src/data/resource_snd__6076.asm"
%endif
%include "src/data/resource_snd__6076.asm"
%if ($-$$) != 0xCF221
%error "Incorrect placement: src/data/resource_snd__6077.asm"
%endif
%include "src/data/resource_snd__6077.asm"
%if ($-$$) != 0xCF2D1
%error "Incorrect placement: src/data/resource_snd__6078.asm"
%endif
%include "src/data/resource_snd__6078.asm"
%if ($-$$) != 0xCF8FA
%error "Incorrect placement: src/data/resource_snd__6080.asm"
%endif
%include "src/data/resource_snd__6080.asm"
%if ($-$$) != 0xCFD7B
%error "Incorrect placement: src/data/resource_snd__6082.asm"
%endif
%include "src/data/resource_snd__6082.asm"
%if ($-$$) != 0xCFEFE
%error "Incorrect placement: src/data/resource_snd__6083.asm"
%endif
%include "src/data/resource_snd__6083.asm"
%if ($-$$) != 0xD0B26
%error "Incorrect placement: src/data/resource_snd__6084.asm"
%endif
%include "src/data/resource_snd__6084.asm"
%if ($-$$) != 0xD23EE
%error "Incorrect placement: src/data/resource_snd__6085.asm"
%endif
%include "src/data/resource_snd__6085.asm"
%if ($-$$) != 0xD2474
%error "Incorrect placement: src/data/resource_snd__6089.asm"
%endif
%include "src/data/resource_snd__6089.asm"
%if ($-$$) != 0xD28AD
%error "Incorrect placement: src/data/resource_snd__6096.asm"
%endif
%include "src/data/resource_snd__6096.asm"
%if ($-$$) != 0xD4D78
%error "Incorrect placement: src/data/resource_snd__6097.asm"
%endif
%include "src/data/resource_snd__6097.asm"
%if ($-$$) != 0xD50BC
%error "Incorrect placement: src/data/resource_snd__6099.asm"
%endif
%include "src/data/resource_snd__6099.asm"
%if ($-$$) != 0xD6AB9
%error "Incorrect placement: src/data/resource_snd__43.asm"
%endif
%include "src/data/resource_snd__43.asm"
%if ($-$$) != 0xD7C96
%error "Incorrect placement: src/data/resource_snd__60.asm"
%endif
%include "src/data/resource_snd__60.asm"
%if ($-$$) != 0xD8D28
%error "Incorrect placement: src/data/resource_snd__61.asm"
%endif
%include "src/data/resource_snd__61.asm"
%if ($-$$) != 0xD9D98
%error "Incorrect placement: src/data/resource_snd__62.asm"
%endif
%include "src/data/resource_snd__62.asm"
%if ($-$$) != 0xDAC4A
%error "Incorrect placement: src/data/resource_snd__63.asm"
%endif
%include "src/data/resource_snd__63.asm"
%if ($-$$) != 0xDB912
%error "Incorrect placement: src/data/resource_snd__81.asm"
%endif
%include "src/data/resource_snd__81.asm"
%if ($-$$) != 0xDC403
%error "Incorrect placement: src/data/resource_snd__82.asm"
%endif
%include "src/data/resource_snd__82.asm"
%if ($-$$) != 0xDCD83
%error "Incorrect placement: src/data/resource_snd__141.asm"
%endif
%include "src/data/resource_snd__141.asm"
%if ($-$$) != 0xDEC70
%error "Incorrect placement: src/data/resource_snd__162.asm"
%endif
%include "src/data/resource_snd__162.asm"
%if ($-$$) != 0xE228A
%error "Incorrect placement: src/data/resource_snd__163.asm"
%endif
%include "src/data/resource_snd__163.asm"
%if ($-$$) != 0xE4365
%error "Incorrect placement: src/data/resource_snd__184.asm"
%endif
%include "src/data/resource_snd__184.asm"
%if ($-$$) != 0xE58FB
%error "Incorrect placement: src/data/resource_snd__190.asm"
%endif
%include "src/data/resource_snd__190.asm"
%if ($-$$) != 0xEBACD
%error "Incorrect placement: src/data/resource_snd__191.asm"
%endif
%include "src/data/resource_snd__191.asm"
%if ($-$$) != 0xEEDBF
%error "Incorrect placement: src/data/resource_snd__192.asm"
%endif
%include "src/data/resource_snd__192.asm"
%if ($-$$) != 0xF0AF5
%error "Incorrect placement: src/data/resource_snd__210.asm"
%endif
%include "src/data/resource_snd__210.asm"
%if ($-$$) != 0xF6C93
%error "Incorrect placement: src/data/resource_snd__211.asm"
%endif
%include "src/data/resource_snd__211.asm"
%if ($-$$) != 0xFB139
%error "Incorrect placement: src/data/resource_snd__212.asm"
%endif
%include "src/data/resource_snd__212.asm"
%if ($-$$) != 0xFDDA2
%error "Incorrect placement: src/data/resource_snd__231.asm"
%endif
%include "src/data/resource_snd__231.asm"
%if ($-$$) != 0x1025CA
%error "Incorrect placement: src/data/resource_snd__232.asm"
%endif
%include "src/data/resource_snd__232.asm"
%if ($-$$) != 0x105553
%error "Incorrect placement: src/data/resource_snd__263.asm"
%endif
%include "src/data/resource_snd__263.asm"
%if ($-$$) != 0x1066E6
%error "Incorrect placement: src/data/resource_snd__272.asm"
%endif
%include "src/data/resource_snd__272.asm"
%if ($-$$) != 0x1072F5
%error "Incorrect placement: src/data/resource_snd__273.asm"
%endif
%include "src/data/resource_snd__273.asm"
%if ($-$$) != 0x107CE3
%error "Incorrect placement: src/data/resource_snd__292.asm"
%endif
%include "src/data/resource_snd__292.asm"
%if ($-$$) != 0x109285
%error "Incorrect placement: src/data/resource_snd__301.asm"
%endif
%include "src/data/resource_snd__301.asm"
%if ($-$$) != 0x10A4F5
%error "Incorrect placement: src/data/resource_snd__303.asm"
%endif
%include "src/data/resource_snd__303.asm"
%if ($-$$) != 0x10AB51
%error "Incorrect placement: src/data/resource_snd__304.asm"
%endif
%include "src/data/resource_snd__304.asm"
%if ($-$$) != 0x10BC17
%error "Incorrect placement: src/data/resource_snd__401.asm"
%endif
%include "src/data/resource_snd__401.asm"
%if ($-$$) != 0x10CF65
%error "Incorrect placement: src/data/resource_snd__402.asm"
%endif
%include "src/data/resource_snd__402.asm"
%if ($-$$) != 0x10E123
%error "Incorrect placement: src/data/resource_snd__403.asm"
%endif
%include "src/data/resource_snd__403.asm"
%if ($-$$) != 0x10ED37
%error "Incorrect placement: src/data/resource_snd__461.asm"
%endif
%include "src/data/resource_snd__461.asm"
%if ($-$$) != 0x10F6AF
%error "Incorrect placement: src/data/resource_snd__462.asm"
%endif
%include "src/data/resource_snd__462.asm"
%if ($-$$) != 0x10FEF5
%error "Incorrect placement: src/data/resource_snd__480.asm"
%endif
%include "src/data/resource_snd__480.asm"
%if ($-$$) != 0x1121EC
%error "Incorrect placement: src/data/resource_snd__481.asm"
%endif
%include "src/data/resource_snd__481.asm"
%if ($-$$) != 0x114DD6
%error "Incorrect placement: src/data/resource_snd__482.asm"
%endif
%include "src/data/resource_snd__482.asm"
%if ($-$$) != 0x1176A0
%error "Incorrect placement: src/data/resource_snd__522.asm"
%endif
%include "src/data/resource_snd__522.asm"
%if ($-$$) != 0x119C76
%error "Incorrect placement: src/data/resource_snd__590.asm"
%endif
%include "src/data/resource_snd__590.asm"
%if ($-$$) != 0x11AA5C
%error "Incorrect placement: src/data/resource_snd__591.asm"
%endif
%include "src/data/resource_snd__591.asm"
%if ($-$$) != 0x11B599
%error "Incorrect placement: src/data/resource_snd__641.asm"
%endif
%include "src/data/resource_snd__641.asm"
%if ($-$$) != 0x11BB49
%error "Incorrect placement: src/data/resource_snd__651.asm"
%endif
%include "src/data/resource_snd__651.asm"
%if ($-$$) != 0x11C0FF
%error "Incorrect placement: src/data/resource_snd__652.asm"
%endif
%include "src/data/resource_snd__652.asm"
%if ($-$$) != 0x11C769
%error "Incorrect placement: src/data/resource_snd__661.asm"
%endif
%include "src/data/resource_snd__661.asm"
%if ($-$$) != 0x11D5A4
%error "Incorrect placement: src/data/resource_snd__670.asm"
%endif
%include "src/data/resource_snd__670.asm"
%if ($-$$) != 0x11DC56
%error "Incorrect placement: src/data/resource_snd__680.asm"
%endif
%include "src/data/resource_snd__680.asm"
%if ($-$$) != 0x11E9A5
%error "Incorrect placement: src/data/resource_snd__681.asm"
%endif
%include "src/data/resource_snd__681.asm"
%if ($-$$) != 0x11F8A7
%error "Incorrect placement: src/data/resource_snd__701.asm"
%endif
%include "src/data/resource_snd__701.asm"
%if ($-$$) != 0x12044E
%error "Incorrect placement: src/data/resource_snd__702.asm"
%endif
%include "src/data/resource_snd__702.asm"
%if ($-$$) != 0x121014
%error "Incorrect placement: src/data/resource_snd__712.asm"
%endif
%include "src/data/resource_snd__712.asm"
%if ($-$$) != 0x12190D
%error "Incorrect placement: src/data/resource_snd__721.asm"
%endif
%include "src/data/resource_snd__721.asm"
%if ($-$$) != 0x1220EE
%error "Incorrect placement: src/data/resource_snd__722.asm"
%endif
%include "src/data/resource_snd__722.asm"
%if ($-$$) != 0x122855
%error "Incorrect placement: src/data/resource_snd__723.asm"
%endif
%include "src/data/resource_snd__723.asm"
%if ($-$$) != 0x12305E
%error "Incorrect placement: src/data/resource_snd__730.asm"
%endif
%include "src/data/resource_snd__730.asm"
%if ($-$$) != 0x123ACB
%error "Incorrect placement: src/data/resource_snd__731.asm"
%endif
%include "src/data/resource_snd__731.asm"
%if ($-$$) != 0x124239
%error "Incorrect placement: src/data/resource_snd__732.asm"
%endif
%include "src/data/resource_snd__732.asm"
%if ($-$$) != 0x1248BE
%error "Incorrect placement: src/data/resource_snd__742.asm"
%endif
%include "src/data/resource_snd__742.asm"
%if ($-$$) != 0x12522A
%error "Incorrect placement: src/data/resource_snd__743.asm"
%endif
%include "src/data/resource_snd__743.asm"
%if ($-$$) != 0x125854
%error "Incorrect placement: src/data/resource_snd__752.asm"
%endif
%include "src/data/resource_snd__752.asm"
%if ($-$$) != 0x126476
%error "Incorrect placement: src/data/resource_snd__783.asm"
%endif
%include "src/data/resource_snd__783.asm"
%if ($-$$) != 0x12703A
%error "Incorrect placement: src/data/resource_snd__803.asm"
%endif
%include "src/data/resource_snd__803.asm"
%if ($-$$) != 0x127FF4
%error "Incorrect placement: src/data/resource_snd__804.asm"
%endif
%include "src/data/resource_snd__804.asm"
%if ($-$$) != 0x1286F6
%error "Incorrect placement: src/data/resource_snd__814.asm"
%endif
%include "src/data/resource_snd__814.asm"
%if ($-$$) != 0x128F5A
%error "Incorrect placement: src/data/resource_snd__823.asm"
%endif
%include "src/data/resource_snd__823.asm"
%if ($-$$) != 0x129DEA
%error "Incorrect placement: src/data/resource_snd__833.asm"
%endif
%include "src/data/resource_snd__833.asm"
%if ($-$$) != 0x12AAD9
%error "Incorrect placement: src/data/resource_snd__842.asm"
%endif
%include "src/data/resource_snd__842.asm"
%if ($-$$) != 0x12C4A1
%error "Incorrect placement: src/data/resource_snd__852.asm"
%endif
%include "src/data/resource_snd__852.asm"
%if ($-$$) != 0x12D67C
%error "Incorrect placement: src/data/resource_snd__853.asm"
%endif
%include "src/data/resource_snd__853.asm"
%if ($-$$) != 0x12E7A9
%error "Incorrect placement: src/data/resource_snd__860.asm"
%endif
%include "src/data/resource_snd__860.asm"
%if ($-$$) != 0x136817
%error "Incorrect placement: src/data/resource_snd__881.asm"
%endif
%include "src/data/resource_snd__881.asm"
%if ($-$$) != 0x13886D
%error "Incorrect placement: src/data/resource_snd__882.asm"
%endif
%include "src/data/resource_snd__882.asm"
%if ($-$$) != 0x13AC59
%error "Incorrect placement: src/data/resource_snd__1123.asm"
%endif
%include "src/data/resource_snd__1123.asm"
%if ($-$$) != 0x13C46B
%error "Incorrect placement: src/data/resource_ALRT_128.asm"
%endif
%include "src/data/resource_ALRT_128.asm"
%if ($-$$) != 0x13C47B
%error "Incorrect placement: src/data/resource_ALRT_129.asm"
%endif
%include "src/data/resource_ALRT_129.asm"
%if ($-$$) != 0x13C48B
%error "Incorrect placement: src/data/resource_ALRT_130.asm"
%endif
%include "src/data/resource_ALRT_130.asm"
%if ($-$$) != 0x13C49B
%error "Incorrect placement: src/data/resource_ALRT_131.asm"
%endif
%include "src/data/resource_ALRT_131.asm"
%if ($-$$) != 0x13C4AB
%error "Incorrect placement: src/data/resource_ALRT_132.asm"
%endif
%include "src/data/resource_ALRT_132.asm"
%if ($-$$) != 0x13C4BB
%error "Incorrect placement: src/data/resource_ALRT_133.asm"
%endif
%include "src/data/resource_ALRT_133.asm"
%if ($-$$) != 0x13C4CB
%error "Incorrect placement: src/data/resource_ALRT_134.asm"
%endif
%include "src/data/resource_ALRT_134.asm"
%if ($-$$) != 0x13C4DB
%error "Incorrect placement: src/data/resource_ALRT_135.asm"
%endif
%include "src/data/resource_ALRT_135.asm"
%if ($-$$) != 0x13C4EB
%error "Incorrect placement: src/data/resource_ALRT_136.asm"
%endif
%include "src/data/resource_ALRT_136.asm"
%if ($-$$) != 0x13C4FB
%error "Incorrect placement: src/data/resource_ALRT_137.asm"
%endif
%include "src/data/resource_ALRT_137.asm"
%if ($-$$) != 0x13C50B
%error "Incorrect placement: src/data/resource_ALRT_138.asm"
%endif
%include "src/data/resource_ALRT_138.asm"
%if ($-$$) != 0x13C51B
%error "Incorrect placement: src/data/resource_ALRT_139.asm"
%endif
%include "src/data/resource_ALRT_139.asm"
%if ($-$$) != 0x13C52B
%error "Incorrect placement: src/data/resource_DITL_128.asm"
%endif
%include "src/data/resource_DITL_128.asm"
%if ($-$$) != 0x13C5CB
%error "Incorrect placement: src/data/resource_DITL_129.asm"
%endif
%include "src/data/resource_DITL_129.asm"
%if ($-$$) != 0x13C679
%error "Incorrect placement: src/data/resource_DITL_130.asm"
%endif
%include "src/data/resource_DITL_130.asm"
%if ($-$$) != 0x13C6FD
%error "Incorrect placement: src/data/resource_DITL_131.asm"
%endif
%include "src/data/resource_DITL_131.asm"
%if ($-$$) != 0x13C7DF
%error "Incorrect placement: src/data/resource_DITL_132.asm"
%endif
%include "src/data/resource_DITL_132.asm"
%if ($-$$) != 0x13C8F9
%error "Incorrect placement: src/data/resource_DITL_133.asm"
%endif
%include "src/data/resource_DITL_133.asm"
%if ($-$$) != 0x13CA07
%error "Incorrect placement: src/data/resource_DITL_134.asm"
%endif
%include "src/data/resource_DITL_134.asm"
%if ($-$$) != 0x13CB15
%error "Incorrect placement: src/data/resource_DITL_135.asm"
%endif
%include "src/data/resource_DITL_135.asm"
%if ($-$$) != 0x13CC19
%error "Incorrect placement: src/data/resource_DITL_136.asm"
%endif
%include "src/data/resource_DITL_136.asm"
%if ($-$$) != 0x13CCD1
%error "Incorrect placement: src/data/resource_DITL_137.asm"
%endif
%include "src/data/resource_DITL_137.asm"
%if ($-$$) != 0x13CD43
%error "Incorrect placement: src/data/resource_DITL_139.asm"
%endif
%include "src/data/resource_DITL_139.asm"
%if ($-$$) != 0x13CDD7
%error "Incorrect placement: src/data/resource_DITL_138.asm"
%endif
%include "src/data/resource_DITL_138.asm"
%if ($-$$) != 0x13CE91
%error "Incorrect placement: src/data/resource_Midi_24.asm"
%endif
%include "src/data/resource_Midi_24.asm"
%if ($-$$) != 0x13D023
%error "Incorrect placement: src/data/resource_Midi_70.asm"
%endif
%include "src/data/resource_Midi_70.asm"
%if ($-$$) != 0x13E72B
%error "Incorrect placement: src/data/resource_cmid_0.asm"
%endif
%include "src/data/resource_cmid_0.asm"
%if ($-$$) != 0x13FDC1
%error "Incorrect placement: src/data/resource_cmid_1.asm"
%endif
%include "src/data/resource_cmid_1.asm"
%if ($-$$) != 0x1412C5
%error "Incorrect placement: src/data/resource_cmid_2.asm"
%endif
%include "src/data/resource_cmid_2.asm"
%if ($-$$) != 0x142089
%error "Incorrect placement: src/data/resource_cmid_3.asm"
%endif
%include "src/data/resource_cmid_3.asm"
%if ($-$$) != 0x144E33
%error "Incorrect placement: src/data/resource_cmid_8.asm"
%endif
%include "src/data/resource_cmid_8.asm"
%if ($-$$) != 0x1450A6
%error "Incorrect placement: src/data/resource_cmid_9.asm"
%endif
%include "src/data/resource_cmid_9.asm"
%if ($-$$) != 0x14531C
%error "Incorrect placement: src/data/resource_cmid_10.asm"
%endif
%include "src/data/resource_cmid_10.asm"
%if ($-$$) != 0x145815
%error "Incorrect placement: src/data/resource_cmid_11.asm"
%endif
%include "src/data/resource_cmid_11.asm"
%if ($-$$) != 0x1460E2
%error "Incorrect placement: src/data/resource_cmid_12.asm"
%endif
%include "src/data/resource_cmid_12.asm"
%if ($-$$) != 0x148B1F
%error "Incorrect placement: src/data/resource_cmid_13.asm"
%endif
%include "src/data/resource_cmid_13.asm"
%if ($-$$) != 0x149446
%error "Incorrect placement: src/data/resource_cmid_14.asm"
%endif
%include "src/data/resource_cmid_14.asm"
%if ($-$$) != 0x14996E
%error "Incorrect placement: src/data/resource_cmid_15.asm"
%endif
%include "src/data/resource_cmid_15.asm"
%if ($-$$) != 0x14A829
%error "Incorrect placement: src/data/resource_cmid_16.asm"
%endif
%include "src/data/resource_cmid_16.asm"
%if ($-$$) != 0x14AFF2
%error "Incorrect placement: src/data/resource_cmid_17.asm"
%endif
%include "src/data/resource_cmid_17.asm"
%if ($-$$) != 0x14B848
%error "Incorrect placement: src/data/resource_cmid_18.asm"
%endif
%include "src/data/resource_cmid_18.asm"
%if ($-$$) != 0x14C8E4
%error "Incorrect placement: src/data/resource_cmid_19.asm"
%endif
%include "src/data/resource_cmid_19.asm"
%if ($-$$) != 0x14D07B
%error "Incorrect placement: src/data/resource_cmid_20.asm"
%endif
%include "src/data/resource_cmid_20.asm"
%if ($-$$) != 0x14E355
%error "Incorrect placement: src/data/resource_cmid_21.asm"
%endif
%include "src/data/resource_cmid_21.asm"
%if ($-$$) != 0x14ECF3
%error "Incorrect placement: src/data/resource_cmid_22.asm"
%endif
%include "src/data/resource_cmid_22.asm"
%if ($-$$) != 0x14F68E
%error "Incorrect placement: src/data/resource_cmid_23.asm"
%endif
%include "src/data/resource_cmid_23.asm"
%if ($-$$) != 0x14F94F
%error "Incorrect placement: src/data/resource_cmid_25.asm"
%endif
%include "src/data/resource_cmid_25.asm"
%if ($-$$) != 0x150452
%error "Incorrect placement: src/data/resource_cmid_26.asm"
%endif
%include "src/data/resource_cmid_26.asm"
%if ($-$$) != 0x1509FF
%error "Incorrect placement: src/data/resource_cmid_27.asm"
%endif
%include "src/data/resource_cmid_27.asm"
%if ($-$$) != 0x151820
%error "Incorrect placement: src/data/resource_cmid_28.asm"
%endif
%include "src/data/resource_cmid_28.asm"
%if ($-$$) != 0x1522D3
%error "Incorrect placement: src/data/resource_cmid_29.asm"
%endif
%include "src/data/resource_cmid_29.asm"
%if ($-$$) != 0x153854
%error "Incorrect placement: src/data/resource_cmid_30.asm"
%endif
%include "src/data/resource_cmid_30.asm"
%if ($-$$) != 0x154371
%error "Incorrect placement: src/data/resource_cmid_31.asm"
%endif
%include "src/data/resource_cmid_31.asm"
%if ($-$$) != 0x154890
%error "Incorrect placement: src/data/resource_cmid_32.asm"
%endif
%include "src/data/resource_cmid_32.asm"
%if ($-$$) != 0x154B7E
%error "Incorrect placement: src/data/resource_cmid_33.asm"
%endif
%include "src/data/resource_cmid_33.asm"
%if ($-$$) != 0x1553E2
%error "Incorrect placement: src/data/resource_cmid_34.asm"
%endif
%include "src/data/resource_cmid_34.asm"
%if ($-$$) != 0x155BCB
%error "Incorrect placement: src/data/resource_cmid_35.asm"
%endif
%include "src/data/resource_cmid_35.asm"
%if ($-$$) != 0x156979
%error "Incorrect placement: src/data/resource_cmid_37.asm"
%endif
%include "src/data/resource_cmid_37.asm"
%if ($-$$) != 0x157309
%error "Incorrect placement: src/data/resource_cmid_38.asm"
%endif
%include "src/data/resource_cmid_38.asm"
%if ($-$$) != 0x1593C4
%error "Incorrect placement: src/data/resource_cmid_39.asm"
%endif
%include "src/data/resource_cmid_39.asm"
%if ($-$$) != 0x1597C1
%error "Incorrect placement: src/data/resource_cmid_40.asm"
%endif
%include "src/data/resource_cmid_40.asm"
%if ($-$$) != 0x15A083
%error "Incorrect placement: src/data/resource_cmid_41.asm"
%endif
%include "src/data/resource_cmid_41.asm"
%if ($-$$) != 0x15AEE7
%error "Incorrect placement: src/data/resource_cmid_42.asm"
%endif
%include "src/data/resource_cmid_42.asm"
%if ($-$$) != 0x15B3CD
%error "Incorrect placement: src/data/resource_cmid_43.asm"
%endif
%include "src/data/resource_cmid_43.asm"
%if ($-$$) != 0x15BA5F
%error "Incorrect placement: src/data/resource_cmid_44.asm"
%endif
%include "src/data/resource_cmid_44.asm"
%if ($-$$) != 0x15C41D
%error "Incorrect placement: src/data/resource_cmid_45.asm"
%endif
%include "src/data/resource_cmid_45.asm"
%if ($-$$) != 0x15C98A
%error "Incorrect placement: src/data/resource_cmid_46.asm"
%endif
%include "src/data/resource_cmid_46.asm"
%if ($-$$) != 0x15D45B
%error "Incorrect placement: src/data/resource_cmid_4.asm"
%endif
%include "src/data/resource_cmid_4.asm"
%if ($-$$) != 0x15DC92
%error "Incorrect placement: src/data/resource_cmid_47.asm"
%endif
%include "src/data/resource_cmid_47.asm"
%if ($-$$) != 0x160AFF
%error "Incorrect placement: src/data/resource_cmid_48.asm"
%endif
%include "src/data/resource_cmid_48.asm"
%if ($-$$) != 0x162D63
%error "Incorrect placement: src/data/resource_cmid_49.asm"
%endif
%include "src/data/resource_cmid_49.asm"
%if ($-$$) != 0x1631F5
%error "Incorrect placement: src/data/resource_cmid_50.asm"
%endif
%include "src/data/resource_cmid_50.asm"
%if ($-$$) != 0x164596
%error "Incorrect placement: src/data/resource_cmid_51.asm"
%endif
%include "src/data/resource_cmid_51.asm"
%if ($-$$) != 0x164A61
%error "Incorrect placement: src/data/resource_cmid_52.asm"
%endif
%include "src/data/resource_cmid_52.asm"
%if ($-$$) != 0x1652F5
%error "Incorrect placement: src/data/resource_cmid_53.asm"
%endif
%include "src/data/resource_cmid_53.asm"
%if ($-$$) != 0x168062
%error "Incorrect placement: src/data/resource_cmid_54.asm"
%endif
%include "src/data/resource_cmid_54.asm"
%if ($-$$) != 0x168CAA
%error "Incorrect placement: src/data/resource_cmid_55.asm"
%endif
%include "src/data/resource_cmid_55.asm"
%if ($-$$) != 0x169109
%error "Incorrect placement: src/data/resource_cmid_56.asm"
%endif
%include "src/data/resource_cmid_56.asm"
%if ($-$$) != 0x1699C8
%error "Incorrect placement: src/data/resource_cmid_57.asm"
%endif
%include "src/data/resource_cmid_57.asm"
%if ($-$$) != 0x16A748
%error "Incorrect placement: src/data/resource_cmid_58.asm"
%endif
%include "src/data/resource_cmid_58.asm"
%if ($-$$) != 0x16B8B9
%error "Incorrect placement: src/data/resource_cmid_59.asm"
%endif
%include "src/data/resource_cmid_59.asm"
%if ($-$$) != 0x16BC1E
%error "Incorrect placement: src/data/resource_cmid_60.asm"
%endif
%include "src/data/resource_cmid_60.asm"
%if ($-$$) != 0x16BDA6
%error "Incorrect placement: src/data/resource_cmid_61.asm"
%endif
%include "src/data/resource_cmid_61.asm"
%if ($-$$) != 0x16C0CF
%error "Incorrect placement: src/data/resource_cmid_62.asm"
%endif
%include "src/data/resource_cmid_62.asm"
%if ($-$$) != 0x16C440
%error "Incorrect placement: src/data/resource_cmid_63.asm"
%endif
%include "src/data/resource_cmid_63.asm"
%if ($-$$) != 0x16D3A1
%error "Incorrect placement: src/data/resource_cmid_64.asm"
%endif
%include "src/data/resource_cmid_64.asm"
%if ($-$$) != 0x16EAB9
%error "Incorrect placement: src/data/resource_cmid_65.asm"
%endif
%include "src/data/resource_cmid_65.asm"
%if ($-$$) != 0x16FC23
%error "Incorrect placement: src/data/resource_cmid_66.asm"
%endif
%include "src/data/resource_cmid_66.asm"
%if ($-$$) != 0x16FE55
%error "Incorrect placement: src/data/resource_cmid_67.asm"
%endif
%include "src/data/resource_cmid_67.asm"
%if ($-$$) != 0x170C7B
%error "Incorrect placement: src/data/resource_cmid_68.asm"
%endif
%include "src/data/resource_cmid_68.asm"
%if ($-$$) != 0x1712B8
%error "Incorrect placement: src/data/resource_cmid_6.asm"
%endif
%include "src/data/resource_cmid_6.asm"
%if ($-$$) != 0x1717E3
%error "Incorrect placement: src/data/resource_cmid_7.asm"
%endif
%include "src/data/resource_cmid_7.asm"
%if ($-$$) != 0x172091
%error "Incorrect placement: src/data/resource_MBAR_128.asm"
%endif
%include "src/data/resource_MBAR_128.asm"
%if ($-$$) != 0x17209B
%error "Incorrect placement: src/data/resource_SMOD_0.asm"
%endif
%include "src/data/resource_SMOD_0.asm"
%if ($-$$) != 0x172267
%error "Incorrect placement: src/data/resource_SMOD_3.asm"
%endif
%include "src/data/resource_SMOD_3.asm"
%if ($-$$) != 0x17231D
%error "Incorrect placement: src/data/resource_SMOD_1.asm"
%endif
%include "src/data/resource_SMOD_1.asm"
%if ($-$$) != 0x1723D1
%error "Incorrect placement: src/data/resource_SMOD_2.asm"
%endif
%include "src/data/resource_SMOD_2.asm"
%if ($-$$) != 0x17246D
%error "Incorrect placement: src/data/resource_SONG_1000.asm"
%endif
%include "src/data/resource_SONG_1000.asm"
%if ($-$$) != 0x172487
%error "Incorrect placement: src/data/resource_SONG_1001.asm"
%endif
%include "src/data/resource_SONG_1001.asm"
%if ($-$$) != 0x1724A1
%error "Incorrect placement: src/data/resource_SONG_1002.asm"
%endif
%include "src/data/resource_SONG_1002.asm"
%if ($-$$) != 0x1724BB
%error "Incorrect placement: src/data/resource_SONG_1003.asm"
%endif
%include "src/data/resource_SONG_1003.asm"
%if ($-$$) != 0x1724D5
%error "Incorrect placement: src/data/resource_SONG_1004.asm"
%endif
%include "src/data/resource_SONG_1004.asm"
%if ($-$$) != 0x1724EB
%error "Incorrect placement: src/data/resource_SONG_1005.asm"
%endif
%include "src/data/resource_SONG_1005.asm"
%if ($-$$) != 0x172501
%error "Incorrect placement: src/data/resource_SONG_1006.asm"
%endif
%include "src/data/resource_SONG_1006.asm"
%if ($-$$) != 0x172517
%error "Incorrect placement: src/data/resource_SONG_1007.asm"
%endif
%include "src/data/resource_SONG_1007.asm"
%if ($-$$) != 0x172531
%error "Incorrect placement: src/data/resource_SONG_1008.asm"
%endif
%include "src/data/resource_SONG_1008.asm"
%if ($-$$) != 0x172547
%error "Incorrect placement: src/data/resource_SONG_1009.asm"
%endif
%include "src/data/resource_SONG_1009.asm"
%if ($-$$) != 0x17255D
%error "Incorrect placement: src/data/resource_SONG_1010.asm"
%endif
%include "src/data/resource_SONG_1010.asm"
%if ($-$$) != 0x172573
%error "Incorrect placement: src/data/resource_SONG_1011.asm"
%endif
%include "src/data/resource_SONG_1011.asm"
%if ($-$$) != 0x17258D
%error "Incorrect placement: src/data/resource_SONG_1012.asm"
%endif
%include "src/data/resource_SONG_1012.asm"
%if ($-$$) != 0x1725A7
%error "Incorrect placement: src/data/resource_SONG_1013.asm"
%endif
%include "src/data/resource_SONG_1013.asm"
%if ($-$$) != 0x1725C1
%error "Incorrect placement: src/data/resource_SONG_1014.asm"
%endif
%include "src/data/resource_SONG_1014.asm"
%if ($-$$) != 0x1725D7
%error "Incorrect placement: src/data/resource_SONG_1015.asm"
%endif
%include "src/data/resource_SONG_1015.asm"
%if ($-$$) != 0x1725F1
%error "Incorrect placement: src/data/resource_SONG_1016.asm"
%endif
%include "src/data/resource_SONG_1016.asm"
%if ($-$$) != 0x172607
%error "Incorrect placement: src/data/resource_SONG_1017.asm"
%endif
%include "src/data/resource_SONG_1017.asm"
%if ($-$$) != 0x172621
%error "Incorrect placement: src/data/resource_SONG_1018.asm"
%endif
%include "src/data/resource_SONG_1018.asm"
%if ($-$$) != 0x17263B
%error "Incorrect placement: src/data/resource_SONG_1019.asm"
%endif
%include "src/data/resource_SONG_1019.asm"
%if ($-$$) != 0x172655
%error "Incorrect placement: src/data/resource_SONG_1020.asm"
%endif
%include "src/data/resource_SONG_1020.asm"
%if ($-$$) != 0x17266F
%error "Incorrect placement: src/data/resource_SONG_1021.asm"
%endif
%include "src/data/resource_SONG_1021.asm"
%if ($-$$) != 0x172689
%error "Incorrect placement: src/data/resource_SONG_1022.asm"
%endif
%include "src/data/resource_SONG_1022.asm"
%if ($-$$) != 0x1726A3
%error "Incorrect placement: src/data/resource_SONG_1023.asm"
%endif
%include "src/data/resource_SONG_1023.asm"
%if ($-$$) != 0x1726B9
%error "Incorrect placement: src/data/resource_SONG_1024.asm"
%endif
%include "src/data/resource_SONG_1024.asm"
%if ($-$$) != 0x1726CF
%error "Incorrect placement: src/data/resource_SONG_1025.asm"
%endif
%include "src/data/resource_SONG_1025.asm"
%if ($-$$) != 0x1726E9
%error "Incorrect placement: src/data/resource_SONG_1026.asm"
%endif
%include "src/data/resource_SONG_1026.asm"
%if ($-$$) != 0x172703
%error "Incorrect placement: src/data/resource_SONG_1027.asm"
%endif
%include "src/data/resource_SONG_1027.asm"
%if ($-$$) != 0x17271D
%error "Incorrect placement: src/data/resource_SONG_1028.asm"
%endif
%include "src/data/resource_SONG_1028.asm"
%if ($-$$) != 0x172737
%error "Incorrect placement: src/data/resource_SONG_1029.asm"
%endif
%include "src/data/resource_SONG_1029.asm"
%if ($-$$) != 0x172751
%error "Incorrect placement: src/data/resource_SONG_1030.asm"
%endif
%include "src/data/resource_SONG_1030.asm"
%if ($-$$) != 0x17276B
%error "Incorrect placement: src/data/resource_SONG_1031.asm"
%endif
%include "src/data/resource_SONG_1031.asm"
%if ($-$$) != 0x172785
%error "Incorrect placement: src/data/resource_SONG_1032.asm"
%endif
%include "src/data/resource_SONG_1032.asm"
%if ($-$$) != 0x17279F
%error "Incorrect placement: src/data/resource_SONG_1033.asm"
%endif
%include "src/data/resource_SONG_1033.asm"
%if ($-$$) != 0x1727B9
%error "Incorrect placement: src/data/resource_SONG_1034.asm"
%endif
%include "src/data/resource_SONG_1034.asm"
%if ($-$$) != 0x1727D3
%error "Incorrect placement: src/data/resource_SONG_1035.asm"
%endif
%include "src/data/resource_SONG_1035.asm"
%if ($-$$) != 0x1727ED
%error "Incorrect placement: src/data/resource_SONG_1036.asm"
%endif
%include "src/data/resource_SONG_1036.asm"
%if ($-$$) != 0x172807
%error "Incorrect placement: src/data/resource_SONG_1037.asm"
%endif
%include "src/data/resource_SONG_1037.asm"
%if ($-$$) != 0x17281D
%error "Incorrect placement: src/data/resource_SONG_1038.asm"
%endif
%include "src/data/resource_SONG_1038.asm"
%if ($-$$) != 0x172837
%error "Incorrect placement: src/data/resource_SONG_1039.asm"
%endif
%include "src/data/resource_SONG_1039.asm"
%if ($-$$) != 0x17284D
%error "Incorrect placement: src/data/resource_SONG_1057.asm"
%endif
%include "src/data/resource_SONG_1057.asm"
%if ($-$$) != 0x172867
%error "Incorrect placement: src/data/resource_SONG_1041.asm"
%endif
%include "src/data/resource_SONG_1041.asm"
%if ($-$$) != 0x172881
%error "Incorrect placement: src/data/resource_SONG_1042.asm"
%endif
%include "src/data/resource_SONG_1042.asm"
%if ($-$$) != 0x17289B
%error "Incorrect placement: src/data/resource_SONG_1043.asm"
%endif
%include "src/data/resource_SONG_1043.asm"
%if ($-$$) != 0x1728B5
%error "Incorrect placement: src/data/resource_SONG_1044.asm"
%endif
%include "src/data/resource_SONG_1044.asm"
%if ($-$$) != 0x1728CB
%error "Incorrect placement: src/data/resource_SONG_1045.asm"
%endif
%include "src/data/resource_SONG_1045.asm"
%if ($-$$) != 0x1728E1
%error "Incorrect placement: src/data/resource_SONG_1046.asm"
%endif
%include "src/data/resource_SONG_1046.asm"
%if ($-$$) != 0x1728FB
%error "Incorrect placement: src/data/resource_SONG_1047.asm"
%endif
%include "src/data/resource_SONG_1047.asm"
%if ($-$$) != 0x172915
%error "Incorrect placement: src/data/resource_SONG_1048.asm"
%endif
%include "src/data/resource_SONG_1048.asm"
%if ($-$$) != 0x17292F
%error "Incorrect placement: src/data/resource_SONG_1049.asm"
%endif
%include "src/data/resource_SONG_1049.asm"
%if ($-$$) != 0x172949
%error "Incorrect placement: src/data/resource_SONG_1050.asm"
%endif
%include "src/data/resource_SONG_1050.asm"
%if ($-$$) != 0x172963
%error "Incorrect placement: src/data/resource_SONG_1051.asm"
%endif
%include "src/data/resource_SONG_1051.asm"
%if ($-$$) != 0x172979
%error "Incorrect placement: src/data/resource_SONG_1052.asm"
%endif
%include "src/data/resource_SONG_1052.asm"
%if ($-$$) != 0x172993
%error "Incorrect placement: src/data/resource_SONG_1053.asm"
%endif
%include "src/data/resource_SONG_1053.asm"
%if ($-$$) != 0x1729AD
%error "Incorrect placement: src/data/resource_SONG_1054.asm"
%endif
%include "src/data/resource_SONG_1054.asm"
%if ($-$$) != 0x1729C7
%error "Incorrect placement: src/data/resource_SONG_1056.asm"
%endif
%include "src/data/resource_SONG_1056.asm"
%if ($-$$) != 0x1729E1
%error "Incorrect placement: src/data/resource_SONG_1040.asm"
%endif
%include "src/data/resource_SONG_1040.asm"
%if ($-$$) != 0x1729FB
%error "Incorrect placement: src/data/resource_SONG_1055.asm"
%endif
%include "src/data/resource_SONG_1055.asm"
%if ($-$$) != 0x172A15
%error "Incorrect placement: src/data/resource_SONG_1058.asm"
%endif
%include "src/data/resource_SONG_1058.asm"
%if ($-$$) != 0x172A2F
%error "Incorrect placement: src/data/resource_SONG_1059.asm"
%endif
%include "src/data/resource_SONG_1059.asm"
%if ($-$$) != 0x172A49
%error "Incorrect placement: src/data/resource_SONG_1060.asm"
%endif
%include "src/data/resource_SONG_1060.asm"
%if ($-$$) != 0x172A5F
%error "Incorrect placement: src/data/resource_SONG_1061.asm"
%endif
%include "src/data/resource_SONG_1061.asm"
%if ($-$$) != 0x172A79
%error "Incorrect placement: src/data/resource_SONG_1062.asm"
%endif
%include "src/data/resource_SONG_1062.asm"
%if ($-$$) != 0x172A93
%error "Incorrect placement: src/data/resource_SONG_1063.asm"
%endif
%include "src/data/resource_SONG_1063.asm"
%if ($-$$) != 0x172AA9
%error "Incorrect placement: src/data/resource_SONG_1064.asm"
%endif
%include "src/data/resource_SONG_1064.asm"
%if ($-$$) != 0x172AC3
%error "Incorrect placement: src/data/resource_SONG_1065.asm"
%endif
%include "src/data/resource_SONG_1065.asm"
%if ($-$$) != 0x172AD9
%error "Incorrect placement: src/data/resource_SONG_1066.asm"
%endif
%include "src/data/resource_SONG_1066.asm"
%if ($-$$) != 0x172AEF
%error "Incorrect placement: src/data/resource_SONG_1067.asm"
%endif
%include "src/data/resource_SONG_1067.asm"
%if ($-$$) != 0x172B09
%error "Incorrect placement: src/data/resource_SONG_1068.asm"
%endif
%include "src/data/resource_SONG_1068.asm"
%if ($-$$) != 0x172B23
%error "Incorrect placement: src/data/resource_INST_1.asm"
%endif
%include "src/data/resource_INST_1.asm"
%if ($-$$) != 0x172B5D
%error "Incorrect placement: src/data/resource_INST_2.asm"
%endif
%include "src/data/resource_INST_2.asm"
%if ($-$$) != 0x172B97
%error "Incorrect placement: src/data/resource_INST_3.asm"
%endif
%include "src/data/resource_INST_3.asm"
%if ($-$$) != 0x172BD1
%error "Incorrect placement: src/data/resource_INST_4.asm"
%endif
%include "src/data/resource_INST_4.asm"
%if ($-$$) != 0x172C0B
%error "Incorrect placement: src/data/resource_INST_5.asm"
%endif
%include "src/data/resource_INST_5.asm"
%if ($-$$) != 0x172C45
%error "Incorrect placement: src/data/resource_INST_6.asm"
%endif
%include "src/data/resource_INST_6.asm"
%if ($-$$) != 0x172C7F
%error "Incorrect placement: src/data/resource_INST_7.asm"
%endif
%include "src/data/resource_INST_7.asm"
%if ($-$$) != 0x172CB9
%error "Incorrect placement: src/data/resource_INST_8.asm"
%endif
%include "src/data/resource_INST_8.asm"
%if ($-$$) != 0x172CF3
%error "Incorrect placement: src/data/resource_INST_9.asm"
%endif
%include "src/data/resource_INST_9.asm"
%if ($-$$) != 0x172D0D
%error "Incorrect placement: src/data/resource_INST_10.asm"
%endif
%include "src/data/resource_INST_10.asm"
%if ($-$$) != 0x172D47
%error "Incorrect placement: src/data/resource_INST_11.asm"
%endif
%include "src/data/resource_INST_11.asm"
%if ($-$$) != 0x172D81
%error "Incorrect placement: src/data/resource_INST_12.asm"
%endif
%include "src/data/resource_INST_12.asm"
%if ($-$$) != 0x172DBB
%error "Incorrect placement: src/data/resource_INST_13.asm"
%endif
%include "src/data/resource_INST_13.asm"
%if ($-$$) != 0x172DF5
%error "Incorrect placement: src/data/resource_INST_14.asm"
%endif
%include "src/data/resource_INST_14.asm"
%if ($-$$) != 0x172E1F
%error "Incorrect placement: src/data/resource_INST_15.asm"
%endif
%include "src/data/resource_INST_15.asm"
%if ($-$$) != 0x172E39
%error "Incorrect placement: src/data/resource_INST_16.asm"
%endif
%include "src/data/resource_INST_16.asm"
%if ($-$$) != 0x172E73
%error "Incorrect placement: src/data/resource_INST_17.asm"
%endif
%include "src/data/resource_INST_17.asm"
%if ($-$$) != 0x172EAD
%error "Incorrect placement: src/data/resource_INST_18.asm"
%endif
%include "src/data/resource_INST_18.asm"
%if ($-$$) != 0x172EEF
%error "Incorrect placement: src/data/resource_INST_19.asm"
%endif
%include "src/data/resource_INST_19.asm"
%if ($-$$) != 0x172F21
%error "Incorrect placement: src/data/resource_INST_20.asm"
%endif
%include "src/data/resource_INST_20.asm"
%if ($-$$) != 0x172F53
%error "Incorrect placement: src/data/resource_INST_21.asm"
%endif
%include "src/data/resource_INST_21.asm"
%if ($-$$) != 0x172F85
%error "Incorrect placement: src/data/resource_INST_22.asm"
%endif
%include "src/data/resource_INST_22.asm"
%if ($-$$) != 0x172FB7
%error "Incorrect placement: src/data/resource_INST_23.asm"
%endif
%include "src/data/resource_INST_23.asm"
%if ($-$$) != 0x172FE9
%error "Incorrect placement: src/data/resource_INST_24.asm"
%endif
%include "src/data/resource_INST_24.asm"
%if ($-$$) != 0x17301B
%error "Incorrect placement: src/data/resource_INST_25.asm"
%endif
%include "src/data/resource_INST_25.asm"
%if ($-$$) != 0x17304D
%error "Incorrect placement: src/data/resource_INST_26.asm"
%endif
%include "src/data/resource_INST_26.asm"
%if ($-$$) != 0x173087
%error "Incorrect placement: src/data/resource_INST_27.asm"
%endif
%include "src/data/resource_INST_27.asm"
%if ($-$$) != 0x1730C1
%error "Incorrect placement: src/data/resource_INST_28.asm"
%endif
%include "src/data/resource_INST_28.asm"
%if ($-$$) != 0x1730FB
%error "Incorrect placement: src/data/resource_INST_29.asm"
%endif
%include "src/data/resource_INST_29.asm"
%if ($-$$) != 0x173135
%error "Incorrect placement: src/data/resource_INST_30.asm"
%endif
%include "src/data/resource_INST_30.asm"
%if ($-$$) != 0x17316F
%error "Incorrect placement: src/data/resource_INST_31.asm"
%endif
%include "src/data/resource_INST_31.asm"
%if ($-$$) != 0x1731A9
%error "Incorrect placement: src/data/resource_INST_32.asm"
%endif
%include "src/data/resource_INST_32.asm"
%if ($-$$) != 0x1731D3
%error "Incorrect placement: src/data/resource_INST_33.asm"
%endif
%include "src/data/resource_INST_33.asm"
%if ($-$$) != 0x1731FD
%error "Incorrect placement: src/data/resource_INST_34.asm"
%endif
%include "src/data/resource_INST_34.asm"
%if ($-$$) != 0x173227
%error "Incorrect placement: src/data/resource_INST_35.asm"
%endif
%include "src/data/resource_INST_35.asm"
%if ($-$$) != 0x173251
%error "Incorrect placement: src/data/resource_INST_36.asm"
%endif
%include "src/data/resource_INST_36.asm"
%if ($-$$) != 0x17327B
%error "Incorrect placement: src/data/resource_INST_37.asm"
%endif
%include "src/data/resource_INST_37.asm"
%if ($-$$) != 0x1732A5
%error "Incorrect placement: src/data/resource_INST_38.asm"
%endif
%include "src/data/resource_INST_38.asm"
%if ($-$$) != 0x1732CF
%error "Incorrect placement: src/data/resource_INST_39.asm"
%endif
%include "src/data/resource_INST_39.asm"
%if ($-$$) != 0x1732F9
%error "Incorrect placement: src/data/resource_INST_40.asm"
%endif
%include "src/data/resource_INST_40.asm"
%if ($-$$) != 0x173333
%error "Incorrect placement: src/data/resource_INST_41.asm"
%endif
%include "src/data/resource_INST_41.asm"
%if ($-$$) != 0x173365
%error "Incorrect placement: src/data/resource_INST_42.asm"
%endif
%include "src/data/resource_INST_42.asm"
%if ($-$$) != 0x173397
%error "Incorrect placement: src/data/resource_INST_43.asm"
%endif
%include "src/data/resource_INST_43.asm"
%if ($-$$) != 0x1733C9
%error "Incorrect placement: src/data/resource_INST_44.asm"
%endif
%include "src/data/resource_INST_44.asm"
%if ($-$$) != 0x1733FB
%error "Incorrect placement: src/data/resource_INST_45.asm"
%endif
%include "src/data/resource_INST_45.asm"
%if ($-$$) != 0x173435
%error "Incorrect placement: src/data/resource_INST_46.asm"
%endif
%include "src/data/resource_INST_46.asm"
%if ($-$$) != 0x173467
%error "Incorrect placement: src/data/resource_INST_48.asm"
%endif
%include "src/data/resource_INST_48.asm"
%if ($-$$) != 0x173499
%error "Incorrect placement: src/data/resource_INST_49.asm"
%endif
%include "src/data/resource_INST_49.asm"
%if ($-$$) != 0x1734CB
%error "Incorrect placement: src/data/resource_INST_50.asm"
%endif
%include "src/data/resource_INST_50.asm"
%if ($-$$) != 0x1734FD
%error "Incorrect placement: src/data/resource_INST_51.asm"
%endif
%include "src/data/resource_INST_51.asm"
%if ($-$$) != 0x17352F
%error "Incorrect placement: src/data/resource_INST_52.asm"
%endif
%include "src/data/resource_INST_52.asm"
%if ($-$$) != 0x173561
%error "Incorrect placement: src/data/resource_INST_55.asm"
%endif
%include "src/data/resource_INST_55.asm"
%if ($-$$) != 0x17357B
%error "Incorrect placement: src/data/resource_INST_56.asm"
%endif
%include "src/data/resource_INST_56.asm"
%if ($-$$) != 0x1735AD
%error "Incorrect placement: src/data/resource_INST_57.asm"
%endif
%include "src/data/resource_INST_57.asm"
%if ($-$$) != 0x1735DF
%error "Incorrect placement: src/data/resource_INST_58.asm"
%endif
%include "src/data/resource_INST_58.asm"
%if ($-$$) != 0x173609
%error "Incorrect placement: src/data/resource_INST_59.asm"
%endif
%include "src/data/resource_INST_59.asm"
%if ($-$$) != 0x173633
%error "Incorrect placement: src/data/resource_INST_60.asm"
%endif
%include "src/data/resource_INST_60.asm"
%if ($-$$) != 0x173665
%error "Incorrect placement: src/data/resource_INST_61.asm"
%endif
%include "src/data/resource_INST_61.asm"
%if ($-$$) != 0x173697
%error "Incorrect placement: src/data/resource_INST_62.asm"
%endif
%include "src/data/resource_INST_62.asm"
%if ($-$$) != 0x1736C9
%error "Incorrect placement: src/data/resource_INST_63.asm"
%endif
%include "src/data/resource_INST_63.asm"
%if ($-$$) != 0x1736FB
%error "Incorrect placement: src/data/resource_INST_64.asm"
%endif
%include "src/data/resource_INST_64.asm"
%if ($-$$) != 0x173725
%error "Incorrect placement: src/data/resource_INST_65.asm"
%endif
%include "src/data/resource_INST_65.asm"
%if ($-$$) != 0x173757
%error "Incorrect placement: src/data/resource_INST_66.asm"
%endif
%include "src/data/resource_INST_66.asm"
%if ($-$$) != 0x173781
%error "Incorrect placement: src/data/resource_INST_67.asm"
%endif
%include "src/data/resource_INST_67.asm"
%if ($-$$) != 0x1737AB
%error "Incorrect placement: src/data/resource_INST_68.asm"
%endif
%include "src/data/resource_INST_68.asm"
%if ($-$$) != 0x1737D5
%error "Incorrect placement: src/data/resource_INST_69.asm"
%endif
%include "src/data/resource_INST_69.asm"
%if ($-$$) != 0x1737FF
%error "Incorrect placement: src/data/resource_INST_70.asm"
%endif
%include "src/data/resource_INST_70.asm"
%if ($-$$) != 0x173831
%error "Incorrect placement: src/data/resource_INST_71.asm"
%endif
%include "src/data/resource_INST_71.asm"
%if ($-$$) != 0x173863
%error "Incorrect placement: src/data/resource_INST_72.asm"
%endif
%include "src/data/resource_INST_72.asm"
%if ($-$$) != 0x17389D
%error "Incorrect placement: src/data/resource_INST_73.asm"
%endif
%include "src/data/resource_INST_73.asm"
%if ($-$$) != 0x1738CF
%error "Incorrect placement: src/data/resource_INST_74.asm"
%endif
%include "src/data/resource_INST_74.asm"
%if ($-$$) != 0x173909
%error "Incorrect placement: src/data/resource_INST_75.asm"
%endif
%include "src/data/resource_INST_75.asm"
%if ($-$$) != 0x17393B
%error "Incorrect placement: src/data/resource_INST_76.asm"
%endif
%include "src/data/resource_INST_76.asm"
%if ($-$$) != 0x17396D
%error "Incorrect placement: src/data/resource_INST_77.asm"
%endif
%include "src/data/resource_INST_77.asm"
%if ($-$$) != 0x17399F
%error "Incorrect placement: src/data/resource_INST_78.asm"
%endif
%include "src/data/resource_INST_78.asm"
%if ($-$$) != 0x1739D9
%error "Incorrect placement: src/data/resource_INST_79.asm"
%endif
%include "src/data/resource_INST_79.asm"
%if ($-$$) != 0x1739F3
%error "Incorrect placement: src/data/resource_INST_80.asm"
%endif
%include "src/data/resource_INST_80.asm"
%if ($-$$) != 0x173A35
%error "Incorrect placement: src/data/resource_INST_81.asm"
%endif
%include "src/data/resource_INST_81.asm"
%if ($-$$) != 0x173A77
%error "Incorrect placement: src/data/resource_INST_82.asm"
%endif
%include "src/data/resource_INST_82.asm"
%if ($-$$) != 0x173AB1
%error "Incorrect placement: src/data/resource_INST_83.asm"
%endif
%include "src/data/resource_INST_83.asm"
%if ($-$$) != 0x173AEB
%error "Incorrect placement: src/data/resource_INST_84.asm"
%endif
%include "src/data/resource_INST_84.asm"
%if ($-$$) != 0x173B25
%error "Incorrect placement: src/data/resource_INST_85.asm"
%endif
%include "src/data/resource_INST_85.asm"
%if ($-$$) != 0x173B5F
%error "Incorrect placement: src/data/resource_INST_86.asm"
%endif
%include "src/data/resource_INST_86.asm"
%if ($-$$) != 0x173B79
%error "Incorrect placement: src/data/resource_INST_87.asm"
%endif
%include "src/data/resource_INST_87.asm"
%if ($-$$) != 0x173B93
%error "Incorrect placement: src/data/resource_INST_88.asm"
%endif
%include "src/data/resource_INST_88.asm"
%if ($-$$) != 0x173BC5
%error "Incorrect placement: src/data/resource_INST_89.asm"
%endif
%include "src/data/resource_INST_89.asm"
%if ($-$$) != 0x173BF7
%error "Incorrect placement: src/data/resource_INST_90.asm"
%endif
%include "src/data/resource_INST_90.asm"
%if ($-$$) != 0x173C29
%error "Incorrect placement: src/data/resource_INST_91.asm"
%endif
%include "src/data/resource_INST_91.asm"
%if ($-$$) != 0x173C5B
%error "Incorrect placement: src/data/resource_INST_92.asm"
%endif
%include "src/data/resource_INST_92.asm"
%if ($-$$) != 0x173C8D
%error "Incorrect placement: src/data/resource_INST_93.asm"
%endif
%include "src/data/resource_INST_93.asm"
%if ($-$$) != 0x173CBF
%error "Incorrect placement: src/data/resource_INST_94.asm"
%endif
%include "src/data/resource_INST_94.asm"
%if ($-$$) != 0x173CF1
%error "Incorrect placement: src/data/resource_INST_95.asm"
%endif
%include "src/data/resource_INST_95.asm"
%if ($-$$) != 0x173D23
%error "Incorrect placement: src/data/resource_INST_96.asm"
%endif
%include "src/data/resource_INST_96.asm"
%if ($-$$) != 0x173D3D
%error "Incorrect placement: src/data/resource_INST_97.asm"
%endif
%include "src/data/resource_INST_97.asm"
%if ($-$$) != 0x173D57
%error "Incorrect placement: src/data/resource_INST_98.asm"
%endif
%include "src/data/resource_INST_98.asm"
%if ($-$$) != 0x173D71
%error "Incorrect placement: src/data/resource_INST_99.asm"
%endif
%include "src/data/resource_INST_99.asm"
%if ($-$$) != 0x173D8B
%error "Incorrect placement: src/data/resource_INST_100.asm"
%endif
%include "src/data/resource_INST_100.asm"
%if ($-$$) != 0x173DA5
%error "Incorrect placement: src/data/resource_INST_101.asm"
%endif
%include "src/data/resource_INST_101.asm"
%if ($-$$) != 0x173DBF
%error "Incorrect placement: src/data/resource_INST_102.asm"
%endif
%include "src/data/resource_INST_102.asm"
%if ($-$$) != 0x173DD9
%error "Incorrect placement: src/data/resource_INST_103.asm"
%endif
%include "src/data/resource_INST_103.asm"
%if ($-$$) != 0x173DF3
%error "Incorrect placement: src/data/resource_INST_104.asm"
%endif
%include "src/data/resource_INST_104.asm"
%if ($-$$) != 0x173E25
%error "Incorrect placement: src/data/resource_INST_105.asm"
%endif
%include "src/data/resource_INST_105.asm"
%if ($-$$) != 0x173E57
%error "Incorrect placement: src/data/resource_INST_106.asm"
%endif
%include "src/data/resource_INST_106.asm"
%if ($-$$) != 0x173E71
%error "Incorrect placement: src/data/resource_INST_107.asm"
%endif
%include "src/data/resource_INST_107.asm"
%if ($-$$) != 0x173E8B
%error "Incorrect placement: src/data/resource_INST_108.asm"
%endif
%include "src/data/resource_INST_108.asm"
%if ($-$$) != 0x173EBD
%error "Incorrect placement: src/data/resource_INST_109.asm"
%endif
%include "src/data/resource_INST_109.asm"
%if ($-$$) != 0x173EE7
%error "Incorrect placement: src/data/resource_INST_110.asm"
%endif
%include "src/data/resource_INST_110.asm"
%if ($-$$) != 0x173F21
%error "Incorrect placement: src/data/resource_INST_111.asm"
%endif
%include "src/data/resource_INST_111.asm"
%if ($-$$) != 0x173F53
%error "Incorrect placement: src/data/resource_INST_112.asm"
%endif
%include "src/data/resource_INST_112.asm"
%if ($-$$) != 0x173F8D
%error "Incorrect placement: src/data/resource_INST_113.asm"
%endif
%include "src/data/resource_INST_113.asm"
%if ($-$$) != 0x173FB7
%error "Incorrect placement: src/data/resource_INST_114.asm"
%endif
%include "src/data/resource_INST_114.asm"
%if ($-$$) != 0x173FE9
%error "Incorrect placement: src/data/resource_INST_115.asm"
%endif
%include "src/data/resource_INST_115.asm"
%if ($-$$) != 0x174013
%error "Incorrect placement: src/data/resource_INST_116.asm"
%endif
%include "src/data/resource_INST_116.asm"
%if ($-$$) != 0x17402D
%error "Incorrect placement: src/data/resource_INST_117.asm"
%endif
%include "src/data/resource_INST_117.asm"
%if ($-$$) != 0x174047
%error "Incorrect placement: src/data/resource_INST_118.asm"
%endif
%include "src/data/resource_INST_118.asm"
%if ($-$$) != 0x174061
%error "Incorrect placement: src/data/resource_INST_119.asm"
%endif
%include "src/data/resource_INST_119.asm"
%if ($-$$) != 0x17407B
%error "Incorrect placement: src/data/resource_INST_120.asm"
%endif
%include "src/data/resource_INST_120.asm"
%if ($-$$) != 0x174095
%error "Incorrect placement: src/data/resource_INST_121.asm"
%endif
%include "src/data/resource_INST_121.asm"
%if ($-$$) != 0x1740AF
%error "Incorrect placement: src/data/resource_INST_122.asm"
%endif
%include "src/data/resource_INST_122.asm"
%if ($-$$) != 0x1740C9
%error "Incorrect placement: src/data/resource_INST_123.asm"
%endif
%include "src/data/resource_INST_123.asm"
%if ($-$$) != 0x1740E3
%error "Incorrect placement: src/data/resource_INST_124.asm"
%endif
%include "src/data/resource_INST_124.asm"
%if ($-$$) != 0x1740FD
%error "Incorrect placement: src/data/resource_INST_125.asm"
%endif
%include "src/data/resource_INST_125.asm"
%if ($-$$) != 0x174117
%error "Incorrect placement: src/data/resource_INST_127.asm"
%endif
%include "src/data/resource_INST_127.asm"
%if ($-$$) != 0x174131
%error "Incorrect placement: src/data/resource_INST_0.asm"
%endif
%include "src/data/resource_INST_0.asm"
%if ($-$$) != 0x17416B
%error "Incorrect placement: src/data/resource_INST_47.asm"
%endif
%include "src/data/resource_INST_47.asm"
%if ($-$$) != 0x17419D
%error "Incorrect placement: src/data/resource_INST_126.asm"
%endif
%include "src/data/resource_INST_126.asm"
%if ($-$$) != 0x174447
%error "Incorrect placement: src/data/resource_INST_53.asm"
%endif
%include "src/data/resource_INST_53.asm"
%if ($-$$) != 0x174479
%error "Incorrect placement: src/data/resource_INST_54.asm"
%endif
%include "src/data/resource_INST_54.asm"
%if ($-$$) != 0x1744AB
%error "Incorrect placement: src/data/resource_MDRV_11.asm"
%endif
%include "src/data/resource_MDRV_11.asm"
%if ($-$$) != 0x177784
%error "Incorrect placement: src/data/embedded_owner_resource_0.asm"
%endif
%include "src/data/embedded_owner_resource_0.asm"
%if ($-$$) != 0x1777B2
%error "Incorrect placement: src/data/embedded_at_rl_32302.asm"
%endif
%include "src/data/embedded_at_rl_32302.asm"
%if ($-$$) != 0x177AAE
%error "Incorrect placement: src/data/embedded_b_rl_32303.asm"
%endif
%include "src/data/embedded_b_rl_32303.asm"
%if ($-$$) != 0x1785A2
%error "Incorrect placement: src/data/embedded_ch_rl_32304.asm"
%endif
%include "src/data/embedded_ch_rl_32304.asm"
%if ($-$$) != 0x178BFA
%error "Incorrect placement: src/data/embedded_d_rl_32305.asm"
%endif
%include "src/data/embedded_d_rl_32305.asm"
%if ($-$$) != 0x17A7BA
%error "Incorrect placement: src/data/embedded_dr_rl_32306.asm"
%endif
%include "src/data/embedded_dr_rl_32306.asm"
%if ($-$$) != 0x17B01A
%error "Incorrect placement: src/data/embedded_fh_rl_32307.asm"
%endif
%include "src/data/embedded_fh_rl_32307.asm"
%if ($-$$) != 0x17BF96
%error "Incorrect placement: src/data/embedded_ga_rl_32308.asm"
%endif
%include "src/data/embedded_ga_rl_32308.asm"
%if ($-$$) != 0x17CAC6
%error "Incorrect placement: src/data/embedded_hdisk_rl_32309.asm"
%endif
%include "src/data/embedded_hdisk_rl_32309.asm"
%if ($-$$) != 0x17CB92
%error "Incorrect placement: src/data/embedded_htbd_rl_32310.asm"
%endif
%include "src/data/embedded_htbd_rl_32310.asm"
%if ($-$$) != 0x17DB0E
%error "Incorrect placement: src/data/embedded_intro_rl_32311.asm"
%endif
%include "src/data/embedded_intro_rl_32311.asm"
%if ($-$$) != 0x17E2BA
%error "Incorrect placement: src/data/embedded_jhek_rl_32312.asm"
%endif
%include "src/data/embedded_jhek_rl_32312.asm"
%if ($-$$) != 0x17F556
%error "Incorrect placement: src/data/embedded_k_rl_32313.asm"
%endif
%include "src/data/embedded_k_rl_32313.asm"
%if ($-$$) != 0x183542
%error "Incorrect placement: src/data/embedded_la_rl_32314.asm"
%endif
%include "src/data/embedded_la_rl_32314.asm"
%if ($-$$) != 0x183F0A
%error "Incorrect placement: src/data/embedded_li_rl_32315.asm"
%endif
%include "src/data/embedded_li_rl_32315.asm"
%if ($-$$) != 0x1846DE
%error "Incorrect placement: src/data/embedded_mb_rl_32316.asm"
%endif
%include "src/data/embedded_mb_rl_32316.asm"
%if ($-$$) != 0x184BE2
%error "Incorrect placement: src/data/embedded_mc_rl_32317.asm"
%endif
%include "src/data/embedded_mc_rl_32317.asm"
%if ($-$$) != 0x1854A6
%error "Incorrect placement: src/data/embedded_mu_rl_32318.asm"
%endif
%include "src/data/embedded_mu_rl_32318.asm"
%if ($-$$) != 0x185806
%error "Incorrect placement: src/data/embedded_n_rl_32319.asm"
%endif
%include "src/data/embedded_n_rl_32319.asm"
%if ($-$$) != 0x1882B2
%error "Incorrect placement: src/data/embedded_p_rl_32320.asm"
%endif
%include "src/data/embedded_p_rl_32320.asm"
%if ($-$$) != 0x188626
%error "Incorrect placement: src/data/embedded_xmi_rl_32321.asm"
%endif
%include "src/data/embedded_xmi_rl_32321.asm"
%if ($-$$) != 0x188BB6
%error "Incorrect placement: src/data/embedded_gamwav_rl_32322.asm"
%endif
%include "src/data/embedded_gamwav_rl_32322.asm"
%if ($-$$) != 0x189A2E
%error "Incorrect placement: src/data/embedded_at_grv_32323.asm"
%endif
%include "src/data/embedded_at_grv_32323.asm"
%if ($-$$) != 0x18B477
%error "Incorrect placement: src/data/embedded_b_grv_32324.asm"
%endif
%include "src/data/embedded_b_grv_32324.asm"
%if ($-$$) != 0x18BDCF
%error "Incorrect placement: src/data/embedded_ch_grv_32325.asm"
%endif
%include "src/data/embedded_ch_grv_32325.asm"
%if ($-$$) != 0x18DA98
%error "Incorrect placement: src/data/embedded_cr_grv_32326.asm"
%endif
%include "src/data/embedded_cr_grv_32326.asm"
%if ($-$$) != 0x18E112
%error "Incorrect placement: src/data/embedded_d_grv_32327.asm"
%endif
%include "src/data/embedded_d_grv_32327.asm"
%if ($-$$) != 0x18E94A
%error "Incorrect placement: src/data/embedded_demo_grv_32328.asm"
%endif
%include "src/data/embedded_demo_grv_32328.asm"
%if ($-$$) != 0x18EB20
%error "Incorrect placement: src/data/embedded_dr_grv_32329.asm"
%endif
%include "src/data/embedded_dr_grv_32329.asm"
%if ($-$$) != 0x1900CE
%error "Incorrect placement: src/data/embedded_ek_grv_32330.asm"
%endif
%include "src/data/embedded_ek_grv_32330.asm"
%if ($-$$) != 0x190D33
%error "Incorrect placement: src/data/embedded_f_grv_32331.asm"
%endif
%include "src/data/embedded_f_grv_32331.asm"
%if ($-$$) != 0x19127C
%error "Incorrect placement: src/data/embedded_ga_grv_32332.asm"
%endif
%include "src/data/embedded_ga_grv_32332.asm"
%if ($-$$) != 0x191C0A
%error "Incorrect placement: src/data/embedded_grate_grv_32333.asm"
%endif
%include "src/data/embedded_grate_grv_32333.asm"
%if ($-$$) != 0x19204C
%error "Incorrect placement: src/data/embedded_h_grv_32334.asm"
%endif
%include "src/data/embedded_h_grv_32334.asm"
%if ($-$$) != 0x192C94
%error "Incorrect placement: src/data/embedded_hm_grv_32335.asm"
%endif
%include "src/data/embedded_hm_grv_32335.asm"
%if ($-$$) != 0x1940B9
%error "Incorrect placement: src/data/embedded_jh_grv_32336.asm"
%endif
%include "src/data/embedded_jh_grv_32336.asm"
%if ($-$$) != 0x194D55
%error "Incorrect placement: src/data/embedded_k_grv_32337.asm"
%endif
%include "src/data/embedded_k_grv_32337.asm"
%if ($-$$) != 0x1954AA
%error "Incorrect placement: src/data/embedded_li_grv_32339.asm"
%endif
%include "src/data/embedded_li_grv_32339.asm"
%if ($-$$) != 0x195D26
%error "Incorrect placement: src/data/embedded_maze_grv_32340.asm"
%endif
%include "src/data/embedded_maze_grv_32340.asm"
%if ($-$$) != 0x196B6E
%error "Incorrect placement: src/data/embedded_mb_grv_32341.asm"
%endif
%include "src/data/embedded_mb_grv_32341.asm"
%if ($-$$) != 0x197AFF
%error "Incorrect placement: src/data/embedded_mu_grv_32342.asm"
%endif
%include "src/data/embedded_mu_grv_32342.asm"
%if ($-$$) != 0x19804D
%error "Incorrect placement: src/data/embedded_n_grv_32343.asm"
%endif
%include "src/data/embedded_n_grv_32343.asm"
%if ($-$$) != 0x19839B
%error "Incorrect placement: src/data/embedded_p_grv_32344.asm"
%endif
%include "src/data/embedded_p_grv_32344.asm"
%if ($-$$) != 0x198804
%error "Incorrect placement: src/data/embedded_rob_gjd_32346.asm"
%endif
%include "src/data/embedded_rob_gjd_32346.asm"
%if ($-$$) != 0x1A423C
%error "Incorrect placement: src/data/embedded_la_grv_32338.asm"
%endif
%include "src/data/embedded_la_grv_32338.asm"
%if ($-$$) != 0x1A5BBC
%error "Incorrect placement: src/data/embedded_script_grv_32345.asm"
%endif
%include "src/data/embedded_script_grv_32345.asm"
%if ($-$$) != 0x1A9EE7
%error "Incorrect placement: src/data/embedded_lut_20000.asm"
%endif
%include "src/data/embedded_lut_20000.asm"
%if ($-$$) != 0x1B9EEB
%error "Incorrect placement: src/data/embedded_gump_32423.asm"
%endif
%include "src/data/embedded_gump_32423.asm"
%if ($-$$) != 0x1B9F07
%error "Incorrect placement: src/data/resource_wctb_128.asm"
%endif
%include "src/data/resource_wctb_128.asm"
%if ($-$$) != 0x1B9F3B
%error "Incorrect placement: src/data/resource_BNDL_128.asm"
%endif
%include "src/data/resource_BNDL_128.asm"
%if ($-$$) != 0x1B9F5B
%error "Incorrect placement: src/data/resource_CDEF_256.asm"
%endif
%include "src/data/resource_CDEF_256.asm"
%if ($-$$) != 0x1B9F6F
%error "Incorrect placement: src/data/resource_CURS_257.asm"
%endif
%include "src/data/resource_CURS_257.asm"
%if ($-$$) != 0x1B9FB7
%error "Incorrect placement: src/data/resource_CURS_300.asm"
%endif
%include "src/data/resource_CURS_300.asm"
%if ($-$$) != 0x1B9FFF
%error "Incorrect placement: src/data/resource_CURS_301.asm"
%endif
%include "src/data/resource_CURS_301.asm"
%if ($-$$) != 0x1BA047
%error "Incorrect placement: src/data/resource_CURS_302.asm"
%endif
%include "src/data/resource_CURS_302.asm"
%if ($-$$) != 0x1BA08F
%error "Incorrect placement: src/data/resource_CURS_303.asm"
%endif
%include "src/data/resource_CURS_303.asm"
%if ($-$$) != 0x1BA0D7
%error "Incorrect placement: src/data/resource_CURS_304.asm"
%endif
%include "src/data/resource_CURS_304.asm"
%if ($-$$) != 0x1BA11F
%error "Incorrect placement: src/data/resource_CURS_305.asm"
%endif
%include "src/data/resource_CURS_305.asm"
%if ($-$$) != 0x1BA167
%error "Incorrect placement: src/data/resource_CURS_306.asm"
%endif
%include "src/data/resource_CURS_306.asm"
%if ($-$$) != 0x1BA1AF
%error "Incorrect placement: src/data/resource_FREF_128.asm"
%endif
%include "src/data/resource_FREF_128.asm"
%if ($-$$) != 0x1BA1BA
%error "Incorrect placement: src/data/resource_hmnu_128.asm"
%endif
%include "src/data/resource_hmnu_128.asm"
%if ($-$$) != 0x1BA1F6
%error "Incorrect placement: src/data/resource_hmnu_129.asm"
%endif
%include "src/data/resource_hmnu_129.asm"
%if ($-$$) != 0x1BA2DE
%error "Incorrect placement: src/data/resource_hmnu_130.asm"
%endif
%include "src/data/resource_hmnu_130.asm"
%if ($-$$) != 0x1BA36E
%error "Incorrect placement: src/data/resource_hmnu_131.asm"
%endif
%include "src/data/resource_hmnu_131.asm"
%if ($-$$) != 0x1BA3BE
%error "Incorrect placement: src/data/resource_icl4_128.asm"
%endif
%include "src/data/resource_icl4_128.asm"
%if ($-$$) != 0x1BA5C2
%error "Incorrect placement: src/data/resource_icl8_128.asm"
%endif
%include "src/data/resource_icl8_128.asm"
%if ($-$$) != 0x1BA9C6
%error "Incorrect placement: src/data/resource_ICN__128.asm"
%endif
%include "src/data/resource_ICN__128.asm"
%if ($-$$) != 0x1BAACA
%error "Incorrect placement: src/data/resource_ics__128.asm"
%endif
%include "src/data/resource_ics__128.asm"
%if ($-$$) != 0x1BAB0E
%error "Incorrect placement: src/data/resource_ics4_128.asm"
%endif
%include "src/data/resource_ics4_128.asm"
%if ($-$$) != 0x1BAB92
%error "Incorrect placement: src/data/resource_ics8_128.asm"
%endif
%include "src/data/resource_ics8_128.asm"
%if ($-$$) != 0x1BAC96
%error "Incorrect placement: src/data/resource_MENU_128.asm"
%endif
%include "src/data/resource_MENU_128.asm"
%if ($-$$) != 0x1BACCC
%error "Incorrect placement: src/data/resource_MENU_129.asm"
%endif
%include "src/data/resource_MENU_129.asm"
%if ($-$$) != 0x1BAD24
%error "Incorrect placement: src/data/resource_SICN_128.asm"
%endif
%include "src/data/resource_SICN_128.asm"
%if ($-$$) != 0x1BAD48
%error "Incorrect placement: src/data/resource_STR__-16396.asm"
%endif
%include "src/data/resource_STR__-16396.asm"
%if ($-$$) != 0x1BAD53
%error "Incorrect placement: src/data/resource_STR__367.asm"
%endif
%include "src/data/resource_STR__367.asm"
%if ($-$$) != 0x1BAE09
%error "Incorrect placement: src/data/resource_STR__128.asm"
%endif
%include "src/data/resource_STR__128.asm"
%if ($-$$) != 0x1BAE10
%error "Incorrect placement: src/data/resource_STR__129.asm"
%endif
%include "src/data/resource_STR__129.asm"
%if ($-$$) != 0x1BAE30
%error "Incorrect placement: src/data/resource_STR__368.asm"
%endif
%include "src/data/resource_STR__368.asm"
%if ($-$$) != 0x1BAE3A
%error "Incorrect placement: src/data/resource_STR__500.asm"
%endif
%include "src/data/resource_STR__500.asm"
%if ($-$$) != 0x1BAE42
%error "Incorrect placement: src/data/resource_vers_1.asm"
%endif
%include "src/data/resource_vers_1.asm"
%if ($-$$) != 0x1BAE54
%error "Incorrect placement: src/data/resource_WIND_128.asm"
%endif
%include "src/data/resource_WIND_128.asm"
%if ($-$$) != 0x1BAE71
%error "Incorrect placement: src/data/resource_SIZE_1.asm"
%endif
%include "src/data/resource_SIZE_1.asm"
%if ($-$$) != 0x1BAE7F
%error "Incorrect placement: src/data/resource_SIZE_0.asm"
%endif
%include "src/data/resource_SIZE_0.asm"
%if ($-$$) != 0x1BAE8D
%error "Incorrect placement: src/data/unknown_1bae8d_1befff.asm"
%endif
%include "src/data/unknown_1bae8d_1befff.asm"
%if ($-$$) != 1830912
%error "Incorrect MacBinary length"
%endif
