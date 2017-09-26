; code bank

bank $35
org $A000

  JSR code_3FF2A7                           ; $35A000 |
  LDA #$A4                                  ; $35A003 |
  CMP $0378,x                               ; $35A005 |
  BCS code_35A027                           ; $35A008 |
  STA $0378,x                               ; $35A00A |
  LDA $0540,x                               ; $35A00D |
  CMP #$04                                  ; $35A010 |
  BNE code_35A02C                           ; $35A012 |
  LDA #$71                                  ; $35A014 |
  JSR code_3FF446                           ; $35A016 |
  LDA #$00                                  ; $35A019 |
  STA $6D                                   ; $35A01B |
  INC $6C                                   ; $35A01D |
  LDA $053C                                 ; $35A01F |
  AND #$BF                                  ; $35A022 |
  STA $053C                                 ; $35A024 |
code_35A027:
  LDA #$00                                  ; $35A027 |
  STA $0570,x                               ; $35A029 |
code_35A02C:
  RTS                                       ; $35A02C |

  JSR code_3FFD9C                           ; $35A02D |
  CMP #$09                                  ; $35A030 |
  BNE code_35A02C                           ; $35A032 |
  LDA #$15                                  ; $35A034 |
  STA $1C                                   ; $35A036 |
  LDA #$80                                  ; $35A038 |
  STA $1B                                   ; $35A03A |
  LDA #$46                                  ; $35A03C |
  STA $0588,x                               ; $35A03E |
  LDA #$A0                                  ; $35A041 |
  STA $05A0,x                               ; $35A043 |
  LDA $1B                                   ; $35A046 |
  BNE code_35A07A                           ; $35A048 |
  STA $95                                   ; $35A04A |
  STA $BF                                   ; $35A04C |
  INC $0498,x                               ; $35A04E |
  LDA #$7B                                  ; $35A051 |
  STA $0588,x                               ; $35A053 |
  LDA #$A0                                  ; $35A056 |
  STA $05A0,x                               ; $35A058 |
  LDA #$08                                  ; $35A05B |
  STA $FA                                   ; $35A05D |
  LDA #$02                                  ; $35A05F |
  STA $6A                                   ; $35A061 |
  LDA #$C0                                  ; $35A063 |
  STA $F1                                   ; $35A065 |
  LDA #$09                                  ; $35A067 |
  STA $F0                                   ; $35A069 |
  LDA #$90                                  ; $35A06B |
  STA $053E                                 ; $35A06D |
  LDA #$8F                                  ; $35A070 |
  STA $0132                                 ; $35A072 |
  LDA #$30                                  ; $35A075 |
  STA $0468,x                               ; $35A077 |
code_35A07A:
  RTS                                       ; $35A07A |

  LDA $95                                   ; $35A07B |
  AND #$07                                  ; $35A07D |
  BNE code_35A07A                           ; $35A07F |
  LDY #$07                                  ; $35A081 |
code_35A083:
  LDA $A41E,y                               ; $35A083 |
  SEC                                       ; $35A086 |
  SBC $0468,x                               ; $35A087 |
  BCS code_35A08E                           ; $35A08A |
  LDA #$0F                                  ; $35A08C |
code_35A08E:
  STA $0604,y                               ; $35A08E |
  STA $0624,y                               ; $35A091 |
  DEY                                       ; $35A094 |
  BPL code_35A083                           ; $35A095 |
  STY $18                                   ; $35A097 |
  LDA $0468,x                               ; $35A099 |
  SEC                                       ; $35A09C |
  SBC #$10                                  ; $35A09D |
  STA $0468,x                               ; $35A09F |
  BCS code_35A07A                           ; $35A0A2 |
  LDA #$00                                  ; $35A0A4 |
  STA $0468,x                               ; $35A0A6 |
  LDA #$B4                                  ; $35A0A9 |
  STA $0588,x                               ; $35A0AB |
  LDA #$A0                                  ; $35A0AE |
  STA $05A0,x                               ; $35A0B0 |
  RTS                                       ; $35A0B3 |

  LDA $95                                   ; $35A0B4 |
  AND #$07                                  ; $35A0B6 |
  BNE code_35A07A                           ; $35A0B8 |
  LDA #$29                                  ; $35A0BA |
  JSR code_3FF6BE                           ; $35A0BC |
  INC $BF                                   ; $35A0BF |
  LDA $BF                                   ; $35A0C1 |
  CMP #$1C                                  ; $35A0C3 |
  BNE code_35A07A                           ; $35A0C5 |
  LDA #$D5                                  ; $35A0C7 |
  STA $0588,x                               ; $35A0C9 |
  LDA #$A0                                  ; $35A0CC |
  STA $05A0,x                               ; $35A0CE |
  LDA #$00                                  ; $35A0D1 |
  STA $30                                   ; $35A0D3 |
  LDA $0468,x                               ; $35A0D5 |
  BEQ code_35A0DF                           ; $35A0D8 |
  DEC $0468,x                               ; $35A0DA |
  BNE code_35A126                           ; $35A0DD |
code_35A0DF:
  LDA $0480,x                               ; $35A0DF |
  INC $0480,x                               ; $35A0E2 |
  AND #$03                                  ; $35A0E5 |
  BNE code_35A126                           ; $35A0E7 |
  LDY $0498,x                               ; $35A0E9 |
  LDA $A340,y                               ; $35A0EC |
  STA $FA                                   ; $35A0EF |
  LDA $A346,y                               ; $35A0F1 |
  STA $038E                                 ; $35A0F4 |
  LDA $0528,x                               ; $35A0F7 |
  AND #$FB                                  ; $35A0FA |
  ORA $A359,y                               ; $35A0FC |
  STA $0528,x                               ; $35A0FF |
  JSR code_35A27F                           ; $35A102 |
  JSR code_35A331                           ; $35A105 |
  INC $0498,x                               ; $35A108 |
  CPY #$05                                  ; $35A10B |
  BNE code_35A126                           ; $35A10D |
  LDA #$04                                  ; $35A10F |
  STA $0498,x                               ; $35A111 |
  LDA #$27                                  ; $35A114 |
  STA $0588,x                               ; $35A116 |
  LDA #$A1                                  ; $35A119 |
  STA $05A0,x                               ; $35A11B |
  LDA $0408,x                               ; $35A11E |
  ORA #$40                                  ; $35A121 |
  STA $0408,x                               ; $35A123 |
code_35A126:
  RTS                                       ; $35A126 |

  LDA $E4                                   ; $35A127 |
  ADC $E5                                   ; $35A129 |
  STA $E4                                   ; $35A12B |
  AND #$01                                  ; $35A12D |
  TAY                                       ; $35A12F |
  LDA $A354,y                               ; $35A130 |
  STA $0468,x                               ; $35A133 |
  LDA #$40                                  ; $35A136 |
  STA $0588,x                               ; $35A138 |
  LDA #$A1                                  ; $35A13B |
  STA $05A0,x                               ; $35A13D |
  DEC $0468,x                               ; $35A140 |
  BNE code_35A126                           ; $35A143 |
  JSR code_3FF6E6                           ; $35A145 |
  LDY #$02                                  ; $35A148 |
code_35A14A:
  CMP $A356,y                               ; $35A14A |
  BCS code_35A152                           ; $35A14D |
  DEY                                       ; $35A14F |
  BNE code_35A14A                           ; $35A150 |
code_35A152:
  LDA $A37B,y                               ; $35A152 |
  STA $03A8,x                               ; $35A155 |
  LDA $A37E,y                               ; $35A158 |
  STA $03C0,x                               ; $35A15B |
  LDA $A381,y                               ; $35A15E |
  STA $03D8,x                               ; $35A161 |
  LDA $A384,y                               ; $35A164 |
  STA $03F0,x                               ; $35A167 |
  LDA #$90                                  ; $35A16A |
  STA $0588,x                               ; $35A16C |
  LDA #$A1                                  ; $35A16F |
  STA $05A0,x                               ; $35A171 |
  JSR code_3FF4DC                           ; $35A174 |
  JSR code_3FFB6C                           ; $35A177 |
  BCS code_35A190                           ; $35A17A |
  LDA #$7E                                  ; $35A17C |
  JSR code_3FF452                           ; $35A17E |
  LDA #$B4                                  ; $35A181 |
  STA $0378,y                               ; $35A183 |
  LDA #$01                                  ; $35A186 |
  STA $0300,y                               ; $35A188 |
  LDA #$00                                  ; $35A18B |
  STA $0408,y                               ; $35A18D |
code_35A190:
  JSR code_3FF413                           ; $35A190 |
  LDA $0528,x                               ; $35A193 |
  AND #$BF                                  ; $35A196 |
  STA $0528,x                               ; $35A198 |
  LDA $0420,x                               ; $35A19B |
  AND #$01                                  ; $35A19E |
  BEQ code_35A1AE                           ; $35A1A0 |
  LDA #$D8                                  ; $35A1A2 |
  CMP $0330,x                               ; $35A1A4 |
  BCS code_35A1B8                           ; $35A1A7 |
  STA $0330,x                               ; $35A1A9 |
  BCC code_35A1B8                           ; $35A1AC |
code_35A1AE:
  LDA #$28                                  ; $35A1AE |
  CMP $0330,x                               ; $35A1B0 |
  BCC code_35A1B8                           ; $35A1B3 |
  STA $0330,x                               ; $35A1B5 |
code_35A1B8:
  JSR code_3FF2A7                           ; $35A1B8 |
  LDA #$AB                                  ; $35A1BB |
  CMP $0378,x                               ; $35A1BD |
  BCS code_35A1E3                           ; $35A1C0 |
  STA $0378,x                               ; $35A1C2 |
  LDA #$03                                  ; $35A1C5 |
  STA $0588,x                               ; $35A1C7 |
  LDA #$A2                                  ; $35A1CA |
  STA $05A0,x                               ; $35A1CC |
  LDA #$7C                                  ; $35A1CF |
  JSR code_3FF446                           ; $35A1D1 |
  LDA #$5A                                  ; $35A1D4 |
  STA $0468,x                               ; $35A1D6 |
  LDY $30                                   ; $35A1D9 |
  BEQ code_35A1E1                           ; $35A1DB |
  CPY #$02                                  ; $35A1DD |
  BNE code_35A1E3                           ; $35A1DF |
code_35A1E1:
  STA $AD                                   ; $35A1E1 |
code_35A1E3:
  LDA #$B8                                  ; $35A1E3 |
  SEC                                       ; $35A1E5 |
  SBC $0330,x                               ; $35A1E6 |
  STA $69                                   ; $35A1E9 |
  LDA #$D9                                  ; $35A1EB |
  SEC                                       ; $35A1ED |
  SBC $0378,x                               ; $35A1EE |
  STA $FA                                   ; $35A1F1 |
  LDA $0330,x                               ; $35A1F3 |
  STA $0346                                 ; $35A1F6 |
  LDA $0378,x                               ; $35A1F9 |
  SEC                                       ; $35A1FC |
  SBC #$26                                  ; $35A1FD |
  STA $038E                                 ; $35A1FF |
  RTS                                       ; $35A202 |

  LDA $0468,x                               ; $35A203 |
  BEQ code_35A22A                           ; $35A206 |
  DEC $0468,x                               ; $35A208 |
  CMP #$1E                                  ; $35A20B |
  BCC code_35A219                           ; $35A20D |
  AND #$04                                  ; $35A20F |
  LSR                                       ; $35A211 |
  CLC                                       ; $35A212 |
  ADC #$BE                                  ; $35A213 |
  STA $F1                                   ; $35A215 |
  BNE code_35A27E                           ; $35A217 |
code_35A219:
  LDA #$7B                                  ; $35A219 |
  CMP $0558,x                               ; $35A21B |
  BEQ code_35A27E                           ; $35A21E |
  LDY #$C0                                  ; $35A220 |
  STY $F1                                   ; $35A222 |
  JSR code_3FF446                           ; $35A224 |
  JMP code_35A2CA                           ; $35A227 |

code_35A22A:
  LDA $0408,x                               ; $35A22A |
  AND #$BF                                  ; $35A22D |
  STA $0408,x                               ; $35A22F |
  LDA $0480,x                               ; $35A232 |
  INC $0480,x                               ; $35A235 |
  AND #$03                                  ; $35A238 |
  BNE code_35A27E                           ; $35A23A |
  LDY $0498,x                               ; $35A23C |
  LDA $A340,y                               ; $35A23F |
  STA $FA                                   ; $35A242 |
  LDA $A346,y                               ; $35A244 |
  STA $038E                                 ; $35A247 |
  LDA $0528,x                               ; $35A24A |
  AND #$FB                                  ; $35A24D |
  ORA $A359,y                               ; $35A24F |
  STA $0528,x                               ; $35A252 |
  JSR code_35A27F                           ; $35A255 |
  JSR code_35A331                           ; $35A258 |
  DEC $0498,x                               ; $35A25B |
  BPL code_35A27E                           ; $35A25E |
  LDA #$01                                  ; $35A260 |
  STA $0498,x                               ; $35A262 |
  LDA #$D5                                  ; $35A265 |
  STA $0588,x                               ; $35A267 |
  LDA #$A0                                  ; $35A26A |
  STA $05A0,x                               ; $35A26C |
  LDA $E4                                   ; $35A26F |
  ADC $E5                                   ; $35A271 |
  STA $E4                                   ; $35A273 |
  AND #$01                                  ; $35A275 |
  TAY                                       ; $35A277 |
  LDA $A352,y                               ; $35A278 |
  STA $0468,x                               ; $35A27B |
code_35A27E:
  RTS                                       ; $35A27E |

code_35A27F:
  STX $00                                   ; $35A27F |
  STY $01                                   ; $35A281 |
  LDX #$00                                  ; $35A283 |
code_35A285:
  LDA $A3D8,x                               ; $35A285 |
  STA $0780,x                               ; $35A288 |
  BMI code_35A290                           ; $35A28B |
  INX                                       ; $35A28D |
  BNE code_35A285                           ; $35A28E |
code_35A290:
  LDX $A34C,y                               ; $35A290 |
  LDY $A387,x                               ; $35A293 |
  LDX #$00                                  ; $35A296 |
code_35A298:
  LDA $A38C,y                               ; $35A298 |
  CMP #$01                                  ; $35A29B |
  BEQ code_35A2A6                           ; $35A29D |
  STA $0780,x                               ; $35A29F |
  INY                                       ; $35A2A2 |
  INX                                       ; $35A2A3 |
  BNE code_35A298                           ; $35A2A4 |
code_35A2A6:
  LDY #$00                                  ; $35A2A6 |
  LDX #$00                                  ; $35A2A8 |
code_35A2AA:
  LDA $A3CE,y                               ; $35A2AA |
  STA $0780,x                               ; $35A2AD |
  LDA $A3CF,y                               ; $35A2B0 |
  STA $0781,x                               ; $35A2B3 |
  INY                                       ; $35A2B6 |
  INY                                       ; $35A2B7 |
  TXA                                       ; $35A2B8 |
  CLC                                       ; $35A2B9 |
  ADC #$0D                                  ; $35A2BA |
  TAX                                       ; $35A2BC |
  CMP #$41                                  ; $35A2BD |
  BNE code_35A2AA                           ; $35A2BF |
  LDA #$FF                                  ; $35A2C1 |
  STA $19                                   ; $35A2C3 |
  LDX $00                                   ; $35A2C5 |
  LDY $01                                   ; $35A2C7 |
  RTS                                       ; $35A2C9 |

code_35A2CA:
  LDA $E4                                   ; $35A2CA |
  ADC $E5                                   ; $35A2CC |
  STA $E4                                   ; $35A2CE |
  AND #$03                                  ; $35A2D0 |
  TAY                                       ; $35A2D2 |
  LDA $A377,y                               ; $35A2D3 |
  STA $01                                   ; $35A2D6 |
  LDA #$03                                  ; $35A2D8 |
  STA $02                                   ; $35A2DA |
code_35A2DC:
  JSR code_3FFB6C                           ; $35A2DC |
  BCS code_35A330                           ; $35A2DF |
  LDA #$86                                  ; $35A2E1 |
  JSR code_3FF452                           ; $35A2E3 |
  STX $00                                   ; $35A2E6 |
  LDX $01                                   ; $35A2E8 |
  LDA $A35F,x                               ; $35A2EA |
  STA $0330,y                               ; $35A2ED |
  LDX $02                                   ; $35A2F0 |
  LDA $A36B,x                               ; $35A2F2 |
  STA $0468,y                               ; $35A2F5 |
  LDA $A36F,x                               ; $35A2F8 |
  STA $0420,y                               ; $35A2FB |
  LDA $A373,x                               ; $35A2FE |
  STA $0528,y                               ; $35A301 |
  LDA #$AA                                  ; $35A304 |
  STA $0300,y                               ; $35A306 |
  LDA #$00                                  ; $35A309 |
  STA $0378,y                               ; $35A30B |
  LDA #$01                                  ; $35A30E |
  STA $0450,y                               ; $35A310 |
  LDA #$80                                  ; $35A313 |
  STA $0408,y                               ; $35A315 |
  LDA #$00                                  ; $35A318 |
  STA $03A8,y                               ; $35A31A |
  STA $03D8,y                               ; $35A31D |
  STA $03F0,y                               ; $35A320 |
  LDA #$01                                  ; $35A323 |
  STA $03C0,y                               ; $35A325 |
  LDX $00                                   ; $35A328 |
  DEC $01                                   ; $35A32A |
  DEC $02                                   ; $35A32C |
  BPL code_35A2DC                           ; $35A32E |
code_35A330:
  RTS                                       ; $35A330 |

code_35A331:
  LDA $0528,x                               ; $35A331 |
  AND #$04                                  ; $35A334 |
  BEQ code_35A330                           ; $35A336 |
  LDA #$00                                  ; $35A338 |
  STA $05B8,x                               ; $35A33A |
  JMP code_3EDE4A                           ; $35A33D |

  db $08, $10, $18, $20, $28, $30, $AB, $A3 ; $35A340 |
  db $9B, $93, $8B, $83, $00, $04, $03, $02 ; $35A348 |
  db $01, $00, $B4, $F0, $3C, $78, $28, $40 ; $35A350 |
  db $58, $04, $04, $04, $04, $00, $00, $38 ; $35A358 |
  db $68, $98, $C8, $18, $58, $A8, $E8, $50 ; $35A360 |
  db $70, $90, $B0, $10, $00, $00, $10, $02 ; $35A368 |
  db $02, $01, $01, $94, $90, $D0, $D4, $03 ; $35A370 |
  db $07, $0B, $03, $05, $6A, $BD, $01, $01 ; $35A378 |
  db $01, $E5, $A9, $52, $04, $05, $06, $00 ; $35A380 |
  db $0D, $1A, $27, $34, $2B, $32, $09, $C6 ; $35A388 |
  db $BC, $BF, $F2, $F2, $F2, $F2, $FD, $FE ; $35A390 |
  db $FF, $2B, $52, $09, $B9, $BA, $BB, $02 ; $35A398 |
  db $BD, $BE, $02, $B1, $FA, $C0, $2B, $72 ; $35A3A0 |
  db $09, $C9, $CA, $CB, $CC, $CD, $CE, $CF ; $35A3A8 |
  db $B8, $FB, $D0, $2B, $92, $09, $D9, $DA ; $35A3B0 |
  db $DB, $DC, $DD, $DE, $DF, $C4, $C5, $00 ; $35A3B8 |
  db $2B, $B2, $09, $D3, $EA, $EB, $EC, $ED ; $35A3C0 |
  db $EE, $EF, $D4, $D5, $D6, $01, $2B, $32 ; $35A3C8 |
  db $2B, $52, $2B, $72, $2B, $92, $2B, $B2 ; $35A3D0 |
  db $00, $00, $09, $00, $00, $00, $00, $00 ; $35A3D8 |
  db $00, $00, $00, $00, $00, $00, $00, $09 ; $35A3E0 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $35A3E8 |
  db $00, $00, $00, $00, $09, $00, $00, $00 ; $35A3F0 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $35A3F8 |
  db $00, $09, $00, $00, $00, $00, $00, $00 ; $35A400 |
  db $00, $00, $00, $00, $00, $00, $09, $00 ; $35A408 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $35A410 |
  db $00, $FF, $0F, $20, $10, $00, $0F, $20 ; $35A418 |
  db $10, $27, $0F, $20, $27, $17, $0F, $38 ; $35A420 |
  db $28, $18                               ; $35A428 |

  LDA $0468,x                               ; $35A42A |
  BEQ code_35A43C                           ; $35A42D |
  DEC $0468,x                               ; $35A42F |
  BNE code_35A486                           ; $35A432 |
  LDA $0528,x                               ; $35A434 |
  AND #$FB                                  ; $35A437 |
  STA $0528,x                               ; $35A439 |
code_35A43C:
  JSR code_3FF2A7                           ; $35A43C |
  LDA #$00                                  ; $35A43F |
  STA $0570,x                               ; $35A441 |
  LDA #$B9                                  ; $35A444 |
  CMP $0378,x                               ; $35A446 |
  BCS code_35A486                           ; $35A449 |
  STA $0378,x                               ; $35A44B |
  LDA #$58                                  ; $35A44E |
  STA $0588,x                               ; $35A450 |
  LDA #$A4                                  ; $35A453 |
  STA $05A0,x                               ; $35A455 |
  LDA #$89                                  ; $35A458 |
  CMP $0558,x                               ; $35A45A |
  BEQ code_35A483                           ; $35A45D |
  LDY $0540,x                               ; $35A45F |
  CPY #$04                                  ; $35A462 |
  BEQ code_35A480                           ; $35A464 |
  CPY #$01                                  ; $35A466 |
  BNE code_35A486                           ; $35A468 |
  LDA $0570,x                               ; $35A46A |
  CMP #$04                                  ; $35A46D |
  BNE code_35A486                           ; $35A46F |
  DEC $0378,x                               ; $35A471 |
  DEC $0378,x                               ; $35A474 |
  DEC $0378,x                               ; $35A477 |
  LDA #$C0                                  ; $35A47A |
  STA $0408,x                               ; $35A47C |
  RTS                                       ; $35A47F |

code_35A480:
  JSR code_3FF446                           ; $35A480 |
code_35A483:
  JSR code_3FF413                           ; $35A483 |
code_35A486:
  RTS                                       ; $35A486 |

  JSR code_3FFD9C                           ; $35A487 |
  CMP #$09                                  ; $35A48A |
  BNE code_35A486                           ; $35A48C |
  INC $0468,x                               ; $35A48E |
  LDA $0468,x                               ; $35A491 |
  AND #$07                                  ; $35A494 |
  BNE code_35A4FA                           ; $35A496 |
  LDY $0480,x                               ; $35A498 |
  STX $00                                   ; $35A49B |
  LDX #$00                                  ; $35A49D |
code_35A49F:
  LDA $A6EB,y                               ; $35A49F |
  STA $0604,x                               ; $35A4A2 |
  STA $0624,x                               ; $35A4A5 |
  LDA $A6F7,y                               ; $35A4A8 |
  STA $0608,x                               ; $35A4AB |
  STA $0628,x                               ; $35A4AE |
  LDA $A703,y                               ; $35A4B1 |
  STA $060C,x                               ; $35A4B4 |
  STA $062C,x                               ; $35A4B7 |
  INY                                       ; $35A4BA |
  INX                                       ; $35A4BB |
  CPX #$04                                  ; $35A4BC |
  BNE code_35A49F                           ; $35A4BE |
  LDA #$FF                                  ; $35A4C0 |
  STA $18                                   ; $35A4C2 |
  LDX $00                                   ; $35A4C4 |
  TYA                                       ; $35A4C6 |
  STA $0480,x                               ; $35A4C7 |
  CMP #$0C                                  ; $35A4CA |
  BNE code_35A4FA                           ; $35A4CC |
  LDA #$50                                  ; $35A4CE |
  STA $0468,x                               ; $35A4D0 |
  LDA #$00                                  ; $35A4D3 |
  STA $0480,x                               ; $35A4D5 |
  LDA #$FB                                  ; $35A4D8 |
  STA $0588,x                               ; $35A4DA |
  LDA #$A4                                  ; $35A4DD |
  STA $05A0,x                               ; $35A4DF |
  LDA #$00                                  ; $35A4E2 |
  STA $95                                   ; $35A4E4 |
  STA $BF                                   ; $35A4E6 |
  LDA #$8F                                  ; $35A4E8 |
  STA $0132                                 ; $35A4EA |
  LDA #$90                                  ; $35A4ED |
  STA $0528,x                               ; $35A4EF |
  LDA #$91                                  ; $35A4F2 |
  STA $053C                                 ; $35A4F4 |
  STA $053B                                 ; $35A4F7 |
code_35A4FA:
  RTS                                       ; $35A4FA |

  LDA $95                                   ; $35A4FB |
  AND #$07                                  ; $35A4FD |
  BNE code_35A4FA                           ; $35A4FF |
  LDA #$29                                  ; $35A501 |
  JSR code_3FF6BE                           ; $35A503 |
  INC $BF                                   ; $35A506 |
  LDA $BF                                   ; $35A508 |
  CMP #$1C                                  ; $35A50A |
  BNE code_35A4FA                           ; $35A50C |
  LDA #$1C                                  ; $35A50E |
  STA $0588,x                               ; $35A510 |
  LDA #$A5                                  ; $35A513 |
  STA $05A0,x                               ; $35A515 |
  LDA #$00                                  ; $35A518 |
  STA $30                                   ; $35A51A |
  DEC $0468,x                               ; $35A51C |
  BNE code_35A4FA                           ; $35A51F |
  LDA #$50                                  ; $35A521 |
  STA $0468,x                               ; $35A523 |
  JSR code_3FFB6C                           ; $35A526 |
  BCS code_35A4FA                           ; $35A529 |
  LDA $E4                                   ; $35A52B |
  ADC $E6                                   ; $35A52D |
  STA $E6                                   ; $35A52F |
  AND #$01                                  ; $35A531 |
  BNE code_35A559                           ; $35A533 |
  LDA #$9D                                  ; $35A535 |
  JSR code_3FF452                           ; $35A537 |
  LDA #$6C                                  ; $35A53A |
  STA $0378,y                               ; $35A53C |
  LDA #$94                                  ; $35A53F |
  STA $0330,y                               ; $35A541 |
  LDA #$AE                                  ; $35A544 |
  STA $0300,y                               ; $35A546 |
  LDA #$9A                                  ; $35A549 |
  STA $0408,y                               ; $35A54B |
  LDA #$00                                  ; $35A54E |
  STA $03A8,y                               ; $35A550 |
  LDA #$02                                  ; $35A553 |
  STA $03C0,y                               ; $35A555 |
  RTS                                       ; $35A558 |

code_35A559:
  LDA #$9C                                  ; $35A559 |
  JSR code_3FF452                           ; $35A55B |
  LDA #$24                                  ; $35A55E |
  STA $0378,y                               ; $35A560 |
  LDA #$AC                                  ; $35A563 |
  STA $0330,y                               ; $35A565 |
  LDA #$AD                                  ; $35A568 |
  STA $0300,y                               ; $35A56A |
  LDA #$8D                                  ; $35A56D |
  STA $0408,y                               ; $35A56F |
  LDA #$00                                  ; $35A572 |
  STA $03D8,y                               ; $35A574 |
  LDA #$04                                  ; $35A577 |
  STA $03F0,y                               ; $35A579 |
  JSR code_3FF6E6                           ; $35A57C |
  STA $01                                   ; $35A57F |
  LDA #$3A                                  ; $35A581 |
  STA $03                                   ; $35A583 |
  LDA $0378                                 ; $35A585 |
  CMP #$68                                  ; $35A588 |
  BCS code_35A590                           ; $35A58A |
  LDA #$28                                  ; $35A58C |
  STA $03                                   ; $35A58E |
code_35A590:
  LDA #$00                                  ; $35A590 |
  STA $00                                   ; $35A592 |
  STA $02                                   ; $35A594 |
  STY $0F                                   ; $35A596 |
  JSR code_3FFC3A                           ; $35A598 |
  LDY $0F                                   ; $35A59B |
  LDA $04                                   ; $35A59D |
  STA $03A8,y                               ; $35A59F |
  LDA $05                                   ; $35A5A2 |
  STA $03C0,y                               ; $35A5A4 |
  RTS                                       ; $35A5A7 |

  LDY #$11                                  ; $35A5A8 |
  JSR code_3FF0F8                           ; $35A5AA |
  BCC code_35A5BD                           ; $35A5AD |
  JSR code_3EDC00                           ; $35A5AF |
  LDA #$62                                  ; $35A5B2 |
  JSR code_3FF446                           ; $35A5B4 |
  LDA #$3B                                  ; $35A5B7 |
  STA $0300,x                               ; $35A5B9 |
  RTS                                       ; $35A5BC |

code_35A5BD:
  JMP code_3FF24B                           ; $35A5BD |

  LDA $0330,x                               ; $35A5C0 |
  CMP #$40                                  ; $35A5C3 |
  BCC code_35A5CC                           ; $35A5C5 |
  LDA #$04                                  ; $35A5C7 |
  STA $0468,x                               ; $35A5C9 |
code_35A5CC:
  LDA $95                                   ; $35A5CC |
  AND #$01                                  ; $35A5CE |
  BNE code_35A5FA                           ; $35A5D0 |
  INC $0378,x                               ; $35A5D2 |
  LDY $0468,x                               ; $35A5D5 |
  LDA $0378,x                               ; $35A5D8 |
  CMP $A70F,y                               ; $35A5DB |
  BNE code_35A5FA                           ; $35A5DE |
  LDA $0330,x                               ; $35A5E0 |
  CMP $A717,y                               ; $35A5E3 |
  BNE code_35A5FA                           ; $35A5E6 |
  INC $0468,x                               ; $35A5E8 |
  LDA #$FB                                  ; $35A5EB |
  STA $0588,x                               ; $35A5ED |
  LDA #$A5                                  ; $35A5F0 |
  STA $05A0,x                               ; $35A5F2 |
  LDA #$00                                  ; $35A5F5 |
  STA $0480,x                               ; $35A5F7 |
code_35A5FA:
  RTS                                       ; $35A5FA |

  LDA $95                                   ; $35A5FB |
  AND #$01                                  ; $35A5FD |
  BNE code_35A64B                           ; $35A5FF |
  LDY $0480,x                               ; $35A601 |
  INC $0480,x                               ; $35A604 |
  INC $0480,x                               ; $35A607 |
  LDA $0378,x                               ; $35A60A |
  CLC                                       ; $35A60D |
  ADC $A71F,y                               ; $35A60E |
  STA $0378,x                               ; $35A611 |
  LDA $0330,x                               ; $35A614 |
  CLC                                       ; $35A617 |
  ADC $A720,y                               ; $35A618 |
  STA $0330,x                               ; $35A61B |
  LDA $A720,y                               ; $35A61E |
  STA $0F                                   ; $35A621 |
  JSR code_35A6D1                           ; $35A623 |
  LDY $0468,x                               ; $35A626 |
  LDA $0330,x                               ; $35A629 |
  CMP $A717,y                               ; $35A62C |
  BNE code_35A64B                           ; $35A62F |
  LDA $0378,x                               ; $35A631 |
  CMP $A70F,y                               ; $35A634 |
  BNE code_35A64B                           ; $35A637 |
  INC $0468,x                               ; $35A639 |
  LDA #$4C                                  ; $35A63C |
  STA $0588,x                               ; $35A63E |
  LDA #$A6                                  ; $35A641 |
  STA $05A0,x                               ; $35A643 |
  LDA #$00                                  ; $35A646 |
  STA $0480,x                               ; $35A648 |
code_35A64B:
  RTS                                       ; $35A64B |

  LDA $95                                   ; $35A64C |
  AND #$01                                  ; $35A64E |
  BNE code_35A67A                           ; $35A650 |
  DEC $0378,x                               ; $35A652 |
  LDY $0468,x                               ; $35A655 |
  LDA $0378,x                               ; $35A658 |
  CMP $A70F,y                               ; $35A65B |
  BNE code_35A67A                           ; $35A65E |
  LDA $0330,x                               ; $35A660 |
  CMP $A717,y                               ; $35A663 |
  BNE code_35A67A                           ; $35A666 |
  INC $0468,x                               ; $35A668 |
  LDA #$7B                                  ; $35A66B |
  STA $0588,x                               ; $35A66D |
  LDA #$A6                                  ; $35A670 |
  STA $05A0,x                               ; $35A672 |
  LDA #$00                                  ; $35A675 |
  STA $0480,x                               ; $35A677 |
code_35A67A:
  RTS                                       ; $35A67A |

  LDA $95                                   ; $35A67B |
  AND #$01                                  ; $35A67D |
  BNE code_35A6D0                           ; $35A67F |
  LDY $0480,x                               ; $35A681 |
  INC $0480,x                               ; $35A684 |
  INC $0480,x                               ; $35A687 |
  LDA $0378,x                               ; $35A68A |
  CLC                                       ; $35A68D |
  ADC $A759,y                               ; $35A68E |
  STA $0378,x                               ; $35A691 |
  LDA $0330,x                               ; $35A694 |
  CLC                                       ; $35A697 |
  ADC $A75A,y                               ; $35A698 |
  STA $0330,x                               ; $35A69B |
  LDA $A75A,y                               ; $35A69E |
  STA $0F                                   ; $35A6A1 |
  JSR code_35A6D1                           ; $35A6A3 |
  LDY $0468,x                               ; $35A6A6 |
  LDA $0330,x                               ; $35A6A9 |
  CMP $A717,y                               ; $35A6AC |
  BNE code_35A6D0                           ; $35A6AF |
  LDA $0378,x                               ; $35A6B1 |
  CMP $A70F,y                               ; $35A6B4 |
  BNE code_35A6D0                           ; $35A6B7 |
  LDA #$C0                                  ; $35A6B9 |
  STA $0588,x                               ; $35A6BB |
  LDA #$A5                                  ; $35A6BE |
  STA $05A0,x                               ; $35A6C0 |
  LDA $0468,x                               ; $35A6C3 |
  AND #$FC                                  ; $35A6C6 |
  STA $0468,x                               ; $35A6C8 |
  LDA #$00                                  ; $35A6CB |
  STA $0480,x                               ; $35A6CD |
code_35A6D0:
  RTS                                       ; $35A6D0 |

code_35A6D1:
  LDA $0378,x                               ; $35A6D1 |
  PHA                                       ; $35A6D4 |
  DEC $0378,x                               ; $35A6D5 |
  JSR code_3FF95D                           ; $35A6D8 |
  PLA                                       ; $35A6DB |
  STA $0378,x                               ; $35A6DC |
  BCS code_35A6EA                           ; $35A6DF |
  LDA $0330                                 ; $35A6E1 |
  CLC                                       ; $35A6E4 |
  ADC $0F                                   ; $35A6E5 |
  STA $0330                                 ; $35A6E7 |
code_35A6EA:
  RTS                                       ; $35A6EA |

  db $0F, $0F, $0F, $00, $0F, $06, $00, $10 ; $35A6EB |
  db $0F, $16, $10, $30, $0F, $0F, $0F, $00 ; $35A6F3 |
  db $0F, $0F, $00, $10, $0F, $06, $10, $30 ; $35A6FB |
  db $0F, $0F, $0F, $00, $0F, $06, $00, $10 ; $35A703 |
  db $0F, $16, $06, $30, $98, $98, $58, $58 ; $35A70B |
  db $78, $78, $38, $38, $32, $22, $22, $32 ; $35A713 |
  db $62, $52, $52, $62, $01, $00, $01, $00 ; $35A71B |
  db $00, $FF, $01, $00, $01, $00, $00, $FF ; $35A723 |
  db $01, $00, $00, $FF, $00, $FF, $01, $00 ; $35A72B |
  db $00, $FF, $00, $FF, $01, $00, $00, $FF ; $35A733 |
  db $00, $FF, $00, $FF, $FF, $00, $00, $FF ; $35A73B |
  db $00, $FF, $FF, $00, $00, $FF, $00, $FF ; $35A743 |
  db $FF, $00, $00, $FF, $FF, $00, $FF, $00 ; $35A74B |
  db $00, $FF, $FF, $00, $FF, $FF, $FF, $01 ; $35A753 |
  db $FF, $00, $FF, $00, $00, $01, $FF, $00 ; $35A75B |
  db $FF, $00, $00, $01, $FF, $00, $00, $01 ; $35A763 |
  db $00, $01, $FF, $00, $00, $01, $00, $01 ; $35A76B |
  db $FF, $00, $00, $01, $00, $01, $00, $01 ; $35A773 |
  db $01, $00, $00, $01, $00, $01, $01, $00 ; $35A77B |
  db $00, $01, $00, $01, $01, $00, $00, $01 ; $35A783 |
  db $01, $00, $01, $00, $00, $01, $01, $00 ; $35A78B |
  db $01, $00, $01, $00                     ; $35A793 |

  LDA #$90                                  ; $35A797 |
  STA $0528,x                               ; $35A799 |
  JSR code_3FF95D                           ; $35A79C |
  BCS code_35A7E6                           ; $35A79F |
  LDA $30                                   ; $35A7A1 |
  BNE code_35A7E6                           ; $35A7A3 |
  STA $32                                   ; $35A7A5 |
  STA $33                                   ; $35A7A7 |
  LDA #$0F                                  ; $35A7A9 |
  STA $30                                   ; $35A7AB |
  LDA $0330,x                               ; $35A7AD |
  STA $0330                                 ; $35A7B0 |
  LDA $0378,x                               ; $35A7B3 |
  STA $0378                                 ; $35A7B6 |
  LDA #$32                                  ; $35A7B9 |
  LDY #$00                                  ; $35A7BB |
  JSR code_3FF490                           ; $35A7BD |
  LDA $F9                                   ; $35A7C0 |
  CMP #$09                                  ; $35A7C2 |
  BNE code_35A7E6                           ; $35A7C4 |
  LDA $0438,x                               ; $35A7C6 |
  STA $0149                                 ; $35A7C9 |
  LDY #$00                                  ; $35A7CC |
  STY $AB                                   ; $35A7CE |
code_35A7D0:
  LDA $0378,x                               ; $35A7D0 |
  CMP $A7E7,y                               ; $35A7D3 |
  BNE code_35A7E0                           ; $35A7D6 |
  LDA $0330,x                               ; $35A7D8 |
  CMP $A7E8,y                               ; $35A7DB |
  BEQ code_35A7E6                           ; $35A7DE |
code_35A7E0:
  INY                                       ; $35A7E0 |
  INY                                       ; $35A7E1 |
  INC $AB                                   ; $35A7E2 |
  BNE code_35A7D0                           ; $35A7E4 |
code_35A7E6:
  RTS                                       ; $35A7E6 |

  db $44, $20, $84, $20, $C4, $20, $C4, $70 ; $35A7E7 |
  db $C4, $90, $44, $E0, $84, $E0, $C4, $E0 ; $35A7EF |
  db $44, $80                               ; $35A7F7 |

  LDY $22                                   ; $35A7F9 |
  CPY #$08                                  ; $35A7FB |
  BCS code_35A80D                           ; $35A7FD |
  LDA $A9                                   ; $35A7FF |
  AND $FCBF,y                               ; $35A801 |
  BEQ code_35A80D                           ; $35A804 |
  LDA #$08                                  ; $35A806 |
  STA $30                                   ; $35A808 |
  JMP code_3FFDDE                           ; $35A80A |

code_35A80D:
  JSR code_3FFD9C                           ; $35A80D |
  CMP #$09                                  ; $35A810 |
  BNE code_35A7E6                           ; $35A812 |
  LDA #$00                                  ; $35A814 |
  STA $0570,x                               ; $35A816 |
  JSR code_35A89F                           ; $35A819 |
  LDA $A8AC,y                               ; $35A81C |
  CMP $0558,x                               ; $35A81F |
  BEQ code_35A827                           ; $35A822 |
  JSR code_3FF446                           ; $35A824 |
code_35A827:
  LDA $0378,x                               ; $35A827 |
  CMP #$80                                  ; $35A82A |
  BCS code_35A831                           ; $35A82C |
  JMP code_3FF2A7                           ; $35A82E |

code_35A831:
  LDA $A8B4,y                               ; $35A831 |
  TAY                                       ; $35A834 |
  JSR code_3FF0F8                           ; $35A835 |
  BCC code_35A89E                           ; $35A838 |
  LDA #$4F                                  ; $35A83A |
  STA $0588,x                               ; $35A83C |
  LDA #$A8                                  ; $35A83F |
  STA $05A0,x                               ; $35A841 |
  LDA #$00                                  ; $35A844 |
  STA $95                                   ; $35A846 |
  STA $BF                                   ; $35A848 |
  LDA #$8F                                  ; $35A84A |
  STA $0132                                 ; $35A84C |
  LDA $0540,x                               ; $35A84F |
  CMP #$05                                  ; $35A852 |
  BNE code_35A89E                           ; $35A854 |
  LDA #$00                                  ; $35A856 |
  STA $0570,x                               ; $35A858 |
  LDA $95                                   ; $35A85B |
  AND #$07                                  ; $35A85D |
  BNE code_35A89E                           ; $35A85F |
  LDA #$29                                  ; $35A861 |
  JSR code_3FF6BE                           ; $35A863 |
  INC $BF                                   ; $35A866 |
  LDA $BF                                   ; $35A868 |
  CMP #$1C                                  ; $35A86A |
  BNE code_35A89E                           ; $35A86C |
  JSR code_3EDC00                           ; $35A86E |
  JSR code_35A89F                           ; $35A871 |
  LDA $A8BC,y                               ; $35A874 |
  STA $0300,x                               ; $35A877 |
  LDA $A8C4,y                               ; $35A87A |
  JSR code_3FF446                           ; $35A87D |
  LDA $A8CC,y                               ; $35A880 |
  STA $0408,x                               ; $35A883 |
  LDA $A8DE,y                               ; $35A886 |
  STA $03A8,x                               ; $35A889 |
  LDA $A8E6,y                               ; $35A88C |
  STA $03C0,x                               ; $35A88F |
  LDA #$1C                                  ; $35A892 |
  STA $0450,x                               ; $35A894 |
  JSR code_3FF324                           ; $35A897 |
  LDA #$00                                  ; $35A89A |
  STA $30                                   ; $35A89C |
code_35A89E:
  RTS                                       ; $35A89E |

code_35A89F:
  LDY $22                                   ; $35A89F |
  CPY #$08                                  ; $35A8A1 |
  BCC code_35A8AB                           ; $35A8A3 |
  LDY $AB                                   ; $35A8A5 |
  LDA $A8D4,y                               ; $35A8A7 |
  TAY                                       ; $35A8AA |
code_35A8AB:
  RTS                                       ; $35A8AB |

  db $44, $45, $46, $47, $48, $49, $4A, $4B ; $35A8AC |
  db $13, $0A, $0A, $0A, $0C, $0C, $0A, $08 ; $35A8B4 |
  db $8B, $8D, $7E, $84, $75, $79, $7C, $71 ; $35A8BC |
  db $34, $41, $29, $39, $09, $12, $24, $02 ; $35A8C4 |
  db $E3, $E3, $F6, $E4, $E3, $E3, $E4, $F6 ; $35A8CC |
  db $02, $00, $07, $06, $01, $03, $04, $05 ; $35A8D4 |
  db $0F, $20, $80, $80, $80, $00, $00, $99 ; $35A8DC |
  db $00, $80, $01, $01, $01, $02, $02, $01 ; $35A8E4 |
  db $04, $01                               ; $35A8EC |

  LDA #$0F                                  ; $35A8EE |
  LDY #$0B                                  ; $35A8F0 |
code_35A8F2:
  STA $0604,y                               ; $35A8F2 |
  STA $0624,y                               ; $35A8F5 |
  DEY                                       ; $35A8F8 |
  BPL code_35A8F2                           ; $35A8F9 |
  STY $18                                   ; $35A8FB |
  LDY #$16                                  ; $35A8FD |
code_35A8FF:
  JSR code_3FFCCF                           ; $35A8FF |
  DEY                                       ; $35A902 |
  CPY #$07                                  ; $35A903 |
  BNE code_35A8FF                           ; $35A905 |
  LDA #$00                                  ; $35A907 |
  STA $95                                   ; $35A909 |
  JSR code_3FF446                           ; $35A90B |
  LDA #$27                                  ; $35A90E |
  STA $0588,x                               ; $35A910 |
  LDA #$A9                                  ; $35A913 |
  STA $05A0,x                               ; $35A915 |
  JSR code_3FFB6C                           ; $35A918 |
  BCS code_35A927                           ; $35A91B |
  LDA #$62                                  ; $35A91D |
  JSR code_3FF452                           ; $35A91F |
  LDA #$3C                                  ; $35A922 |
  STA $0300,y                               ; $35A924 |
code_35A927:
  LDA $95                                   ; $35A927 |
  LSR                                       ; $35A929 |
  LSR                                       ; $35A92A |
  AND #$01                                  ; $35A92B |
  TAY                                       ; $35A92D |
  LDA $A8DC,y                               ; $35A92E |
  STA $0610                                 ; $35A931 |
  LDA #$FF                                  ; $35A934 |
  STA $18                                   ; $35A936 |
  LDA $95                                   ; $35A938 |
  CMP #$90                                  ; $35A93A |
  BNE code_35A970                           ; $35A93C |
  LDA #$48                                  ; $35A93E |
  STA $0588,x                               ; $35A940 |
  LDA #$A9                                  ; $35A943 |
  STA $05A0,x                               ; $35A945 |
  LDA $30                                   ; $35A948 |
  BNE code_35A970                           ; $35A94A |
  JSR code_3EDC00                           ; $35A94C |
  LDA #$88                                  ; $35A94F |
  STA $F1                                   ; $35A951 |
  LDA #$00                                  ; $35A953 |
  STA $69                                   ; $35A955 |
  STA $6A                                   ; $35A957 |
  STA $FD                                   ; $35A959 |
  STA $F0                                   ; $35A95B |
  STA $FA                                   ; $35A95D |
  LDA #$0C                                  ; $35A95F |
  JSR code_3FF6BC                           ; $35A961 |
  LDA #$FF                                  ; $35A964 |
  STA $0148                                 ; $35A966 |
  LDA #$0B                                  ; $35A969 |
  STA $30                                   ; $35A96B |
  JSR code_3FFDDE                           ; $35A96D |
code_35A970:
  RTS                                       ; $35A970 |

  LDA $0468,x                               ; $35A971 |
  BEQ code_35A980                           ; $35A974 |
  LDA #$00                                  ; $35A976 |
  STA $0570,x                               ; $35A978 |
  DEC $0468,x                               ; $35A97B |
  BNE code_35A9B5                           ; $35A97E |
code_35A980:
  LDA $0330,x                               ; $35A980 |
  CMP #$88                                  ; $35A983 |
  BEQ code_35A98C                           ; $35A985 |
  DEC $0330,x                               ; $35A987 |
  BNE code_35A9B5                           ; $35A98A |
code_35A98C:
  LDA #$00                                  ; $35A98C |
  STA $0570,x                               ; $35A98E |
  LDA #$B8                                  ; $35A991 |
  STA $F1                                   ; $35A993 |
  LDA #$08                                  ; $35A995 |
  CMP $F0                                   ; $35A997 |
  BEQ code_35A9A7                           ; $35A999 |
  STA $F0                                   ; $35A99B |
  LDA #$00                                  ; $35A99D |
  STA $6C                                   ; $35A99F |
  STA $6D                                   ; $35A9A1 |
  LDA #$0E                                  ; $35A9A3 |
  STA $30                                   ; $35A9A5 |
code_35A9A7:
  LDA $6C                                   ; $35A9A7 |
  CMP #$01                                  ; $35A9A9 |
  BNE code_35A9B5                           ; $35A9AB |
  LDA $0528,x                               ; $35A9AD |
  ORA #$40                                  ; $35A9B0 |
  STA $0528,x                               ; $35A9B2 |
code_35A9B5:
  RTS                                       ; $35A9B5 |

  LDA $0540,x                               ; $35A9B6 |
  BNE code_35A9D0                           ; $35A9B9 |
  LDA #$00                                  ; $35A9BB |
  STA $0570,x                               ; $35A9BD |
  JSR code_3FF2A7                           ; $35A9C0 |
  LDA #$84                                  ; $35A9C3 |
  CMP $0378,x                               ; $35A9C5 |
  BCS code_35A9B5                           ; $35A9C8 |
  STA $0378,x                               ; $35A9CA |
  INC $0540,x                               ; $35A9CD |
code_35A9D0:
  LDA $0540,x                               ; $35A9D0 |
  CMP #$04                                  ; $35A9D3 |
  BNE code_35A9B5                           ; $35A9D5 |
  LDA #$79                                  ; $35A9D7 |
  CMP $0558,x                               ; $35A9D9 |
  BEQ code_35AA15                           ; $35A9DC |
  JSR code_3FF446                           ; $35A9DE |
  LDY #$14                                  ; $35A9E1 |
  JSR code_3FFCCF                           ; $35A9E3 |
  LDA #$74                                  ; $35A9E6 |
  JSR code_3FF452                           ; $35A9E8 |
  LDA #$A3                                  ; $35A9EB |
  STA $0300,y                               ; $35A9ED |
  LDA #$3C                                  ; $35A9F0 |
  STA $0468,x                               ; $35A9F2 |
  STA $0468,y                               ; $35A9F5 |
  LDA #$C8                                  ; $35A9F8 |
  STA $0330,y                               ; $35A9FA |
  LDA #$84                                  ; $35A9FD |
  STA $0378,y                               ; $35A9FF |
  LDA #$00                                  ; $35AA02 |
  STA $03D8,x                               ; $35AA04 |
  STA $03F0,x                               ; $35AA07 |
  LDA #$15                                  ; $35AA0A |
  STA $0588,x                               ; $35AA0C |
  LDA #$AA                                  ; $35AA0F |
  STA $05A0,x                               ; $35AA11 |
  RTS                                       ; $35AA14 |

code_35AA15:
  LDA $0468,x                               ; $35AA15 |
  BEQ code_35AA29                           ; $35AA18 |
  DEC $0468,x                               ; $35AA1A |
  BNE code_35AA51                           ; $35AA1D |
  LDA #$78                                  ; $35AA1F |
  JSR code_3FF446                           ; $35AA21 |
  LDA #$04                                  ; $35AA24 |
  STA $0540,x                               ; $35AA26 |
code_35AA29:
  LDA $0540,x                               ; $35AA29 |
  CMP #$02                                  ; $35AA2C |
  BNE code_35AA51                           ; $35AA2E |
  LDA #$00                                  ; $35AA30 |
  STA $0570,x                               ; $35AA32 |
  LDA $03D8,x                               ; $35AA35 |
  CLC                                       ; $35AA38 |
  ADC #$40                                  ; $35AA39 |
  STA $03D8,x                               ; $35AA3B |
  LDA $03F0,x                               ; $35AA3E |
  ADC #$00                                  ; $35AA41 |
  STA $03F0,x                               ; $35AA43 |
  JSR code_3FF289                           ; $35AA46 |
  LDA $0390,x                               ; $35AA49 |
  BEQ code_35AA51                           ; $35AA4C |
  JSR code_3EDC00                           ; $35AA4E |
code_35AA51:
  RTS                                       ; $35AA51 |

  JSR code_3FFD9C                           ; $35AA52 |
  CMP #$09                                  ; $35AA55 |
  BNE code_35AA51                           ; $35AA57 |
  LDA #$0C                                  ; $35AA59 |
  STA $1C                                   ; $35AA5B |
  LDA #$80                                  ; $35AA5D |
  STA $1B                                   ; $35AA5F |
  LDA #$6B                                  ; $35AA61 |
  STA $0588,x                               ; $35AA63 |
  LDA #$AA                                  ; $35AA66 |
  STA $05A0,x                               ; $35AA68 |
  LDA $1B                                   ; $35AA6B |
  BNE code_35AAB0                           ; $35AA6D |
  STA $69                                   ; $35AA6F |
  STA $6A                                   ; $35AA71 |
  LDA #$C0                                  ; $35AA73 |
  STA $F1                                   ; $35AA75 |
  LDA #$09                                  ; $35AA77 |
  STA $F0                                   ; $35AA79 |
  LDA #$B1                                  ; $35AA7B |
  STA $0588,x                               ; $35AA7D |
  LDA #$AA                                  ; $35AA80 |
  STA $05A0,x                               ; $35AA82 |
  LDA #$FF                                  ; $35AA85 |
  STA $0390,x                               ; $35AA87 |
  STA $03A7                                 ; $35AA8A |
  LDA #$90                                  ; $35AA8D |
  STA $0528,x                               ; $35AA8F |
  STA $053F                                 ; $35AA92 |
  STA $053D                                 ; $35AA95 |
  STA $053C                                 ; $35AA98 |
  LDA #$80                                  ; $35AA9B |
  STA $03D8,x                               ; $35AA9D |
  STA $03A8,x                               ; $35AAA0 |
  LDA #$00                                  ; $35AAA3 |
  STA $03F0,x                               ; $35AAA5 |
  STA $03C0,x                               ; $35AAA8 |
  LDA #$04                                  ; $35AAAB |
  STA $0420,x                               ; $35AAAD |
code_35AAB0:
  RTS                                       ; $35AAB0 |

  JSR code_3FF269                           ; $35AAB1 |
  JSR code_35ABA6                           ; $35AAB4 |
  LDA $0390,x                               ; $35AAB7 |
  BNE code_35AAB0                           ; $35AABA |
  LDA $0378,x                               ; $35AABC |
  CMP #$70                                  ; $35AABF |
  BNE code_35AAB0                           ; $35AAC1 |
  LDA #$00                                  ; $35AAC3 |
  STA $95                                   ; $35AAC5 |
  STA $BF                                   ; $35AAC7 |
  LDA #$8F                                  ; $35AAC9 |
  STA $0132                                 ; $35AACB |
  LDA #$D8                                  ; $35AACE |
  STA $0588,x                               ; $35AAD0 |
  LDA #$AA                                  ; $35AAD3 |
  STA $05A0,x                               ; $35AAD5 |
  LDA $95                                   ; $35AAD8 |
  AND #$07                                  ; $35AADA |
  BNE code_35AB0B                           ; $35AADC |
  LDA #$29                                  ; $35AADE |
  JSR code_3FF6BE                           ; $35AAE0 |
  INC $BF                                   ; $35AAE3 |
  LDA $BF                                   ; $35AAE5 |
  CMP #$1C                                  ; $35AAE7 |
  BNE code_35AB0B                           ; $35AAE9 |
  LDA #$00                                  ; $35AAEB |
  STA $30                                   ; $35AAED |
  LDA #$0C                                  ; $35AAEF |
  STA $0588,x                               ; $35AAF1 |
  LDA #$AB                                  ; $35AAF4 |
  STA $05A0,x                               ; $35AAF6 |
  LDA #$20                                  ; $35AAF9 |
  STA $0468,x                               ; $35AAFB |
  LDA #$28                                  ; $35AAFE |
  STA $0480,x                               ; $35AB00 |
  LDA #$94                                  ; $35AB03 |
  STA $053D                                 ; $35AB05 |
  STA $053C                                 ; $35AB08 |
code_35AB0B:
  RTS                                       ; $35AB0B |

  JSR code_3FF434                           ; $35AB0C |
  LDA $053D                                 ; $35AB0F |
  AND #$04                                  ; $35AB12 |
  BNE code_35AB25                           ; $35AB14 |
  LDA $0555                                 ; $35AB16 |
  CMP #$12                                  ; $35AB19 |
  BNE code_35AB25                           ; $35AB1B |
  LDA #$94                                  ; $35AB1D |
  STA $053D                                 ; $35AB1F |
  STA $053C                                 ; $35AB22 |
code_35AB25:
  DEC $0468,x                               ; $35AB25 |
  BNE code_35AB51                           ; $35AB28 |
  LDA #$40                                  ; $35AB2A |
  STA $0468,x                               ; $35AB2C |
  LDA $0420,x                               ; $35AB2F |
  EOR #$0C                                  ; $35AB32 |
  STA $0420,x                               ; $35AB34 |
  AND #$08                                  ; $35AB37 |
  BEQ code_35AB51                           ; $35AB39 |
  LDA #$90                                  ; $35AB3B |
  STA $053D                                 ; $35AB3D |
  STA $053C                                 ; $35AB40 |
  LDA #$00                                  ; $35AB43 |
  STA $0555                                 ; $35AB45 |
  STA $0554                                 ; $35AB48 |
  STA $0585                                 ; $35AB4B |
  STA $0584                                 ; $35AB4E |
code_35AB51:
  LDA $0480,x                               ; $35AB51 |
  BNE code_35ABA3                           ; $35AB54 |
  LDY $0498,x                               ; $35AB56 |
  LDA $AEDC,y                               ; $35AB59 |
  STA $0480,x                               ; $35AB5C |
  JSR code_3FFB6C                           ; $35AB5F |
  BCS code_35ABA3                           ; $35AB62 |
  LDA #$67                                  ; $35AB64 |
  STA $10                                   ; $35AB66 |
  LDA #$95                                  ; $35AB68 |
  LDX #$17                                  ; $35AB6A |
  JSR code_3FF49C                           ; $35AB6C |
  LDX #$16                                  ; $35AB6F |
  LDA #$BF                                  ; $35AB71 |
  STA $0300,y                               ; $35AB73 |
  LDA #$8D                                  ; $35AB76 |
  STA $0408,y                               ; $35AB78 |
  LDA #$F6                                  ; $35AB7B |
  STA $03A8,y                               ; $35AB7D |
  LDA #$01                                  ; $35AB80 |
  STA $03C0,y                               ; $35AB82 |
  LDA #$63                                  ; $35AB85 |
  STA $03D8,y                               ; $35AB87 |
  LDA #$00                                  ; $35AB8A |
  STA $03F0,y                               ; $35AB8C |
  LDA #$06                                  ; $35AB8F |
  STA $0420,y                               ; $35AB91 |
  INC $0498,x                               ; $35AB94 |
  LDA $0498,x                               ; $35AB97 |
  CMP #$03                                  ; $35AB9A |
  BNE code_35ABA3                           ; $35AB9C |
  LDA #$00                                  ; $35AB9E |
  STA $0498,x                               ; $35ABA0 |
code_35ABA3:
  DEC $0480,x                               ; $35ABA3 |
code_35ABA6:
  LDA $0558,x                               ; $35ABA6 |
  CMP #$30                                  ; $35ABA9 |
  BEQ code_35ABC2                           ; $35ABAB |
  LDA $0330,x                               ; $35ABAD |
  CLC                                       ; $35ABB0 |
  ADC #$30                                  ; $35ABB1 |
  STA $0347                                 ; $35ABB3 |
  LDA $0378,x                               ; $35ABB6 |
  CLC                                       ; $35ABB9 |
  ADC #$08                                  ; $35ABBA |
  STA $038F                                 ; $35ABBC |
  JMP code_35ABF8                           ; $35ABBF |

code_35ABC2:
  LDA $0330,x                               ; $35ABC2 |
  CLC                                       ; $35ABC5 |
  ADC #$20                                  ; $35ABC6 |
  STA $0347                                 ; $35ABC8 |
  LDA $0378,x                               ; $35ABCB |
  STA $038F                                 ; $35ABCE |
  LDA $0390,x                               ; $35ABD1 |
  STA $03A7                                 ; $35ABD4 |
  LDA $038F                                 ; $35ABD7 |
  CLC                                       ; $35ABDA |
  ADC #$30                                  ; $35ABDB |
  BCS code_35ABE3                           ; $35ABDD |
  CMP #$F0                                  ; $35ABDF |
  BCC code_35ABE6                           ; $35ABE1 |
code_35ABE3:
  CLC                                       ; $35ABE3 |
  ADC #$10                                  ; $35ABE4 |
code_35ABE6:
  STA $038D                                 ; $35ABE6 |
  STA $038C                                 ; $35ABE9 |
  LDA $0347                                 ; $35ABEC |
  STA $0345                                 ; $35ABEF |
  CLC                                       ; $35ABF2 |
  ADC #$1C                                  ; $35ABF3 |
  STA $0344                                 ; $35ABF5 |
code_35ABF8:
  LDA #$C0                                  ; $35ABF8 |
  SEC                                       ; $35ABFA |
  SBC $0347                                 ; $35ABFB |
  STA $69                                   ; $35ABFE |
  LDA #$AF                                  ; $35AC00 |
  SEC                                       ; $35AC02 |
  SBC $038F                                 ; $35AC03 |
  STA $FA                                   ; $35AC06 |
  BCS code_35AC12                           ; $35AC08 |
  SBC #$0F                                  ; $35AC0A |
  STA $FA                                   ; $35AC0C |
  LDA #$02                                  ; $35AC0E |
  STA $6A                                   ; $35AC10 |
code_35AC12:
  RTS                                       ; $35AC12 |

  LDA $038F                                 ; $35AC13 |
  CLC                                       ; $35AC16 |
  ADC #$10                                  ; $35AC17 |
  STA $0378,x                               ; $35AC19 |
  LDA $0347                                 ; $35AC1C |
  SEC                                       ; $35AC1F |
  SBC #$28                                  ; $35AC20 |
  STA $0330,x                               ; $35AC22 |
  LDA $0540,x                               ; $35AC25 |
  CMP #$07                                  ; $35AC28 |
  BNE code_35AC12                           ; $35AC2A |
  LDA #$96                                  ; $35AC2C |
  JSR code_3FF446                           ; $35AC2E |
  LDA #$3B                                  ; $35AC31 |
  STA $0588,x                               ; $35AC33 |
  LDA #$AC                                  ; $35AC36 |
  STA $05A0,x                               ; $35AC38 |
  JSR code_3FF413                           ; $35AC3B |
  JMP code_3FF434                           ; $35AC3E |

  LDA #$1C                                  ; $35AC41 |
  STA $0450,x                               ; $35AC43 |
  LDA #$00                                  ; $35AC46 |
  STA $0408,x                               ; $35AC48 |
  LDY $0468,x                               ; $35AC4B |
  BNE code_35AC64                           ; $35AC4E |
  JSR code_3FFB6C                           ; $35AC50 |
  BCS code_35AC64                           ; $35AC53 |
  LDA #$62                                  ; $35AC55 |
  JSR code_3FF452                           ; $35AC57 |
  LDA #$3C                                  ; $35AC5A |
  STA $0300,y                               ; $35AC5C |
  LDA #$00                                  ; $35AC5F |
  STA $0408,y                               ; $35AC61 |
code_35AC64:
  LDY $0468,x                               ; $35AC64 |
  STX $00                                   ; $35AC67 |
  LDX #$00                                  ; $35AC69 |
code_35AC6B:
  LDA $AEDF,y                               ; $35AC6B |
  STA $0780,x                               ; $35AC6E |
  INX                                       ; $35AC71 |
  INY                                       ; $35AC72 |
  CMP #$80                                  ; $35AC73 |
  BNE code_35AC6B                           ; $35AC75 |
  LDX $00                                   ; $35AC77 |
  STA $19                                   ; $35AC79 |
  TYA                                       ; $35AC7B |
  STA $0468,x                               ; $35AC7C |
  INC $0480,x                               ; $35AC7F |
  LDA $0480,x                               ; $35AC82 |
  CMP #$02                                  ; $35AC85 |
  BNE code_35ACC4                           ; $35AC87 |
  LDA #$C5                                  ; $35AC89 |
  STA $0588,x                               ; $35AC8B |
  LDA #$AC                                  ; $35AC8E |
  STA $05A0,x                               ; $35AC90 |
  LDY #$17                                  ; $35AC93 |
  LDA #$93                                  ; $35AC95 |
  JSR code_3FF490                           ; $35AC97 |
  LDA #$94                                  ; $35AC9A |
  JSR code_3FF446                           ; $35AC9C |
  LDA $0330,x                               ; $35AC9F |
  SEC                                       ; $35ACA2 |
  SBC #$10                                  ; $35ACA3 |
  STA $0330,x                               ; $35ACA5 |
  LDA $0378,x                               ; $35ACA8 |
  CLC                                       ; $35ACAB |
  ADC #$08                                  ; $35ACAC |
  STA $0378,x                               ; $35ACAE |
  LDA #$CD                                  ; $35ACB1 |
  STA $0408,x                               ; $35ACB3 |
  LDA #$00                                  ; $35ACB6 |
  STA $BF                                   ; $35ACB8 |
  LDY #$15                                  ; $35ACBA |
  JSR code_3FFCCF                           ; $35ACBC |
  LDY #$14                                  ; $35ACBF |
  JSR code_3FFCCF                           ; $35ACC1 |
code_35ACC4:
  RTS                                       ; $35ACC4 |

  JSR code_3FFD9C                           ; $35ACC5 |
  CMP #$09                                  ; $35ACC8 |
  BNE code_35ACC4                           ; $35ACCA |
  LDA #$02                                  ; $35ACCC |
  STA $6A                                   ; $35ACCE |
  LDA $0378,x                               ; $35ACD0 |
  CMP #$70                                  ; $35ACD3 |
  BEQ code_35ACE3                           ; $35ACD5 |
  BCS code_35ACDE                           ; $35ACD7 |
  INC $0378,x                               ; $35ACD9 |
  BNE code_35AD13                           ; $35ACDC |
code_35ACDE:
  DEC $0378,x                               ; $35ACDE |
  BNE code_35AD13                           ; $35ACE1 |
code_35ACE3:
  LDA $95                                   ; $35ACE3 |
  AND #$07                                  ; $35ACE5 |
  BNE code_35AD13                           ; $35ACE7 |
  LDA #$29                                  ; $35ACE9 |
  JSR code_3FF6BE                           ; $35ACEB |
  INC $BF                                   ; $35ACEE |
  LDA $BF                                   ; $35ACF0 |
  CMP #$1C                                  ; $35ACF2 |
  BNE code_35AD13                           ; $35ACF4 |
  LDA #$00                                  ; $35ACF6 |
  STA $30                                   ; $35ACF8 |
  LDA #$16                                  ; $35ACFA |
  STA $0588,x                               ; $35ACFC |
  LDA #$AD                                  ; $35ACFF |
  STA $05A0,x                               ; $35AD01 |
  LDA #$02                                  ; $35AD04 |
  STA $0420,x                               ; $35AD06 |
  LDA #$01                                  ; $35AD09 |
  STA $0468,x                               ; $35AD0B |
  LDA #$28                                  ; $35AD0E |
  STA $0480,x                               ; $35AD10 |
code_35AD13:
  JMP code_35ABA6                           ; $35AD13 |

  DEC $0468,x                               ; $35AD16 |
  BNE code_35AD32                           ; $35AD19 |
  LDA $E4                                   ; $35AD1B |
  ADC $E7                                   ; $35AD1D |
  STA $E7                                   ; $35AD1F |
  AND #$07                                  ; $35AD21 |
  TAY                                       ; $35AD23 |
  LDA $AF8A,y                               ; $35AD24 |
  STA $0468,x                               ; $35AD27 |
  LDA $0420,x                               ; $35AD2A |
  EOR #$03                                  ; $35AD2D |
  STA $0420,x                               ; $35AD2F |
code_35AD32:
  JSR code_3FF413                           ; $35AD32 |
  LDA #$90                                  ; $35AD35 |
  STA $0528,x                               ; $35AD37 |
  LDA $0420,x                               ; $35AD3A |
  AND #$01                                  ; $35AD3D |
  BEQ code_35AD4A                           ; $35AD3F |
  LDA #$90                                  ; $35AD41 |
  CMP $0330,x                               ; $35AD43 |
  BCS code_35AD5C                           ; $35AD46 |
  BCC code_35AD51                           ; $35AD48 |
code_35AD4A:
  LDA #$50                                  ; $35AD4A |
  CMP $0330,x                               ; $35AD4C |
  BCC code_35AD5C                           ; $35AD4F |
code_35AD51:
  STA $0330,x                               ; $35AD51 |
  LDA $0420,x                               ; $35AD54 |
  EOR #$03                                  ; $35AD57 |
  STA $0420,x                               ; $35AD59 |
code_35AD5C:
  DEC $0480,x                               ; $35AD5C |
  BNE code_35ADD3                           ; $35AD5F |
  LDA #$28                                  ; $35AD61 |
  STA $0480,x                               ; $35AD63 |
  LDA $0330,x                               ; $35AD66 |
  CMP $0330                                 ; $35AD69 |
  BCC code_35AD75                           ; $35AD6C |
  JSR code_3FF6D7                           ; $35AD6E |
  CMP #$30                                  ; $35AD71 |
  BCS code_35AD98                           ; $35AD73 |
code_35AD75:
  JSR code_3FFB6C                           ; $35AD75 |
  BCS code_35ADD3                           ; $35AD78 |
  LDA #$67                                  ; $35AD7A |
  STA $10                                   ; $35AD7C |
  LDA #$95                                  ; $35AD7E |
  LDX #$17                                  ; $35AD80 |
  JSR code_3FF49C                           ; $35AD82 |
  LDX #$16                                  ; $35AD85 |
  LDA #$00                                  ; $35AD87 |
  STA $03A8,y                               ; $35AD89 |
  LDA #$02                                  ; $35AD8C |
  STA $03C0,y                               ; $35AD8E |
  LDA #$02                                  ; $35AD91 |
  STA $0420,y                               ; $35AD93 |
  BNE code_35ADC4                           ; $35AD96 |
code_35AD98:
  JSR code_3FFB6C                           ; $35AD98 |
  BCS code_35ADD3                           ; $35AD9B |
  LDA #$67                                  ; $35AD9D |
  STA $10                                   ; $35AD9F |
  LDA #$95                                  ; $35ADA1 |
  LDX #$17                                  ; $35ADA3 |
  JSR code_3FF49C                           ; $35ADA5 |
  LDX #$16                                  ; $35ADA8 |
  STX $0E                                   ; $35ADAA |
  STY $0F                                   ; $35ADAC |
  LDX $0F                                   ; $35ADAE |
  LDA #$00                                  ; $35ADB0 |
  STA $02                                   ; $35ADB2 |
  LDA #$02                                  ; $35ADB4 |
  STA $03                                   ; $35ADB6 |
  JSR code_3FFB8C                           ; $35ADB8 |
  LDX $0E                                   ; $35ADBB |
  LDY $0F                                   ; $35ADBD |
  LDA $0C                                   ; $35ADBF |
  STA $0420,y                               ; $35ADC1 |
code_35ADC4:
  LDA #$90                                  ; $35ADC4 |
  STA $0528,y                               ; $35ADC6 |
  LDA #$BF                                  ; $35ADC9 |
  STA $0300,y                               ; $35ADCB |
  LDA #$8D                                  ; $35ADCE |
  STA $0408,y                               ; $35ADD0 |
code_35ADD3:
  JMP code_35ABA6                           ; $35ADD3 |

  LDA #$33                                  ; $35ADD6 |
  STA $03D8,x                               ; $35ADD8 |
  LDA #$00                                  ; $35ADDB |
  STA $03F0,x                               ; $35ADDD |
  JSR code_3FF269                           ; $35ADE0 |
  JSR code_35ABA6                           ; $35ADE3 |
  LDA $95                                   ; $35ADE6 |
  AND #$07                                  ; $35ADE8 |
  BNE code_35AE04                           ; $35ADEA |
  JSR code_3FFB6C                           ; $35ADEC |
  BCS code_35AE04                           ; $35ADEF |
  LDA #$62                                  ; $35ADF1 |
  LDX #$17                                  ; $35ADF3 |
  JSR code_3FF452                           ; $35ADF5 |
  LDX #$16                                  ; $35ADF8 |
  LDA #$3C                                  ; $35ADFA |
  STA $0300,y                               ; $35ADFC |
  LDA #$00                                  ; $35ADFF |
  STA $0408,y                               ; $35AE01 |
code_35AE04:
  LDA $0378,x                               ; $35AE04 |
  CMP #$88                                  ; $35AE07 |
  BNE code_35AE15                           ; $35AE09 |
  LDA #$16                                  ; $35AE0B |
  STA $0588,x                               ; $35AE0D |
  LDA #$AE                                  ; $35AE10 |
  STA $05A0,x                               ; $35AE12 |
code_35AE15:
  RTS                                       ; $35AE15 |

  LDA #$00                                  ; $35AE16 |
  STA $69                                   ; $35AE18 |
  STA $6A                                   ; $35AE1A |
  STA $FA                                   ; $35AE1C |
  LDY #$17                                  ; $35AE1E |
  JSR code_3FFCCF                           ; $35AE20 |
  LDY #$15                                  ; $35AE23 |
code_35AE25:
  JSR code_3FFCCF                           ; $35AE25 |
  DEY                                       ; $35AE28 |
  CPY #$07                                  ; $35AE29 |
  BNE code_35AE25                           ; $35AE2B |
  LDA #$97                                  ; $35AE2D |
  JSR code_3FF446                           ; $35AE2F |
  LDA $0347                                 ; $35AE32 |
  STA $0330,x                               ; $35AE35 |
  LDA #$00                                  ; $35AE38 |
  STA $03D8,x                               ; $35AE3A |
  LDA #$01                                  ; $35AE3D |
  STA $03F0,x                               ; $35AE3F |
  JSR code_35AE7C                           ; $35AE42 |
  LDA #$4F                                  ; $35AE45 |
  STA $0588,x                               ; $35AE47 |
  LDA #$AE                                  ; $35AE4A |
  STA $05A0,x                               ; $35AE4C |
  JSR code_3FF289                           ; $35AE4F |
  LDA $0390,x                               ; $35AE52 |
  BEQ code_35AE7B                           ; $35AE55 |
  LDA #$61                                  ; $35AE57 |
  STA $0588,x                               ; $35AE59 |
  LDA #$AE                                  ; $35AE5C |
  STA $05A0,x                               ; $35AE5E |
  LDA $30                                   ; $35AE61 |
  CMP #$03                                  ; $35AE63 |
  BCS code_35AE7B                           ; $35AE65 |
  JSR code_3EDC00                           ; $35AE67 |
  LDA #$0C                                  ; $35AE6A |
  JSR code_3FF6BC                           ; $35AE6C |
  LDA #$0B                                  ; $35AE6F |
  STA $30                                   ; $35AE71 |
  LDA #$FF                                  ; $35AE73 |
  STA $0148                                 ; $35AE75 |
  JSR code_3FFDDE                           ; $35AE78 |
code_35AE7B:
  RTS                                       ; $35AE7B |

code_35AE7C:
  LDA #$F0                                  ; $35AE7C |
  JSR code_3FF6BC                           ; $35AE7E |
code_35AE81:
  LDA #$25                                  ; $35AE81 |
  JSR code_3FF6BE                           ; $35AE83 |
  STX $10                                   ; $35AE86 |
  LDA #$0F                                  ; $35AE88 |
  STA $11                                   ; $35AE8A |
code_35AE8C:
  JSR code_3FFB7C                           ; $35AE8C |
  BCS code_35AED9                           ; $35AE8F |
  LDX #$17                                  ; $35AE91 |
  LDA #$19                                  ; $35AE93 |
  JSR code_3FF452                           ; $35AE95 |
  LDA #$90                                  ; $35AE98 |
  STA $0528,y                               ; $35AE9A |
  LDA #$2E                                  ; $35AE9D |
  STA $0300,y                               ; $35AE9F |
  LDA #$00                                  ; $35AEA2 |
  STA $0408,y                               ; $35AEA4 |
  LDX $11                                   ; $35AEA7 |
  LDA $AF94,x                               ; $35AEA9 |
  STA $03A8,y                               ; $35AEAC |
  LDA $AFA4,x                               ; $35AEAF |
  STA $03C0,y                               ; $35AEB2 |
  LDA $AFB4,x                               ; $35AEB5 |
  STA $03D8,y                               ; $35AEB8 |
  LDA $AFC4,x                               ; $35AEBB |
  STA $03F0,y                               ; $35AEBE |
  LDA $22                                   ; $35AEC1 |
  CMP #$0F                                  ; $35AEC3 |
  BNE code_35AED5                           ; $35AEC5 |
  TYA                                       ; $35AEC7 |
  TAX                                       ; $35AEC8 |
  ASL $03A8,x                               ; $35AEC9 |
  ROL $03C0,x                               ; $35AECC |
  ASL $03D8,x                               ; $35AECF |
  ROL $03F0,x                               ; $35AED2 |
code_35AED5:
  DEC $11                                   ; $35AED5 |
  BPL code_35AE8C                           ; $35AED7 |
code_35AED9:
  LDX $10                                   ; $35AED9 |
  RTS                                       ; $35AEDB |

  db $29, $29, $51, $2A, $10, $09, $00, $00 ; $35AEDC |
  db $00, $6A, $6B, $6C, $6D, $0E, $09, $09 ; $35AEE4 |
  db $2A, $30, $09, $00, $00, $79, $7A, $7B ; $35AEEC |
  db $7C, $7D, $1E, $1F, $19, $2A, $50, $09 ; $35AEF4 |
  db $00, $88, $89, $00, $00, $8C, $8D, $2E ; $35AEFC |
  db $2F, $0F, $2A, $70, $09, $00, $98, $99 ; $35AF04 |
  db $9A, $9B, $9C, $9D, $3E, $3F, $39, $2A ; $35AF0C |
  db $90, $09, $00, $A8, $A9, $AA, $AB, $AC ; $35AF14 |
  db $AD, $4E, $48, $49, $2A, $B0, $09, $00 ; $35AF1C |
  db $B8, $B9, $BA, $BB, $BC, $BD, $5E, $5F ; $35AF24 |
  db $59, $2A, $D0, $09, $00, $00, $C4, $C5 ; $35AF2C |
  db $C6, $C7, $C8, $C9, $CA, $CB, $2A, $F0 ; $35AF34 |
  db $09, $00, $00, $D4, $D5, $D6, $D7, $D8 ; $35AF3C |
  db $D9, $DA, $DB, $FF, $80, $2B, $10, $09 ; $35AF44 |
  db $00, $00, $CC, $CD, $CE, $CF, $AE, $AF ; $35AF4C |
  db $8E, $8F, $2B, $30, $09, $00, $00, $00 ; $35AF54 |
  db $DD, $DE, $DF, $BE, $BF, $9E, $9F, $2B ; $35AF5C |
  db $50, $07, $00, $00, $63, $73, $74, $83 ; $35AF64 |
  db $84, $93, $2B, $70, $07, $00, $00, $00 ; $35AF6C |
  db $00, $00, $00, $B2, $B3, $2B, $E4, $01 ; $35AF74 |
  db $AA, $AA, $2B, $EC, $01, $FA, $7A, $2B ; $35AF7C |
  db $F4, $01, $FF, $F7, $FF, $80, $80, $60 ; $35AF84 |
  db $20, $40, $80, $60, $40, $80, $94, $90 ; $35AF8C |
  db $00, $0F, $80, $0F, $00, $F1, $80, $F1 ; $35AF94 |
  db $00, $87, $C0, $87, $00, $79, $40, $79 ; $35AF9C |
  db $00, $01, $01, $01, $00, $FE, $FE, $FE ; $35AFA4 |
  db $00, $00, $00, $00, $00, $FF, $FF, $FF ; $35AFAC |
  db $80, $F1, $00, $0F, $80, $0F, $00, $F1 ; $35AFB4 |
  db $40, $79, $00, $87, $C0, $87, $00, $79 ; $35AFBC |
  db $FE, $FE, $00, $01, $01, $01, $00, $FE ; $35AFC4 |
  db $FF, $FF, $00, $00, $00, $00, $00, $FF ; $35AFCC |

  LDY #$17                                  ; $35AFD4 |
code_35AFD6:
  CPY $EB                                   ; $35AFD6 |
  BEQ code_35AFDD                           ; $35AFD8 |
  JSR code_3FFCCF                           ; $35AFDA |
code_35AFDD:
  DEY                                       ; $35AFDD |
  CPY #$05                                  ; $35AFDE |
  BNE code_35AFD6                           ; $35AFE0 |
  JSR code_35AE7C                           ; $35AFE2 |
  LDA #$00                                  ; $35AFE5 |
  STA $0132                                 ; $35AFE7 |
  LDA $0620                                 ; $35AFEA |
  STA $0610                                 ; $35AFED |
  LDA #$FF                                  ; $35AFF0 |
  STA $18                                   ; $35AFF2 |
  LDA $22                                   ; $35AFF4 |
  CMP #$08                                  ; $35AFF6 |
  BCC code_35B042                           ; $35AFF8 |
  LDY #$05                                  ; $35AFFA |
  JSR code_3FFCCF                           ; $35AFFC |
  LDA #$1A                                  ; $35AFFF |
  JSR code_3FF452                           ; $35B001 |
  LDA #$C6                                  ; $35B004 |
  STA $0300,y                               ; $35B006 |
  LDA #$00                                  ; $35B009 |
  STA $0408,y                               ; $35B00B |
  JSR code_3EDC00                           ; $35B00E |
  LDA #$73                                  ; $35B011 |
  JSR code_3FF446                           ; $35B013 |
  LDA #$90                                  ; $35B016 |
  STA $0528,x                               ; $35B018 |
  LDA #$1C                                  ; $35B01B |
  STA $0408,x                               ; $35B01D |
  LDA #$B3                                  ; $35B020 |
  STA $0300,x                               ; $35B022 |
  LDA #$20                                  ; $35B025 |
  STA $0330,x                               ; $35B027 |
  LDA #$B4                                  ; $35B02A |
  STA $0378,x                               ; $35B02C |
  LDA $0149                                 ; $35B02F |
  STA $0438,x                               ; $35B032 |
  JSR code_3FFC9E                           ; $35B035 |
  LDY $AB                                   ; $35B038 |
  LDA $AC                                   ; $35B03A |
  ORA $FCBF,y                               ; $35B03C |
  STA $AC                                   ; $35B03F |
code_35B041:
  RTS                                       ; $35B041 |

code_35B042:
  LDA #$00                                  ; $35B042 |
  JSR code_3FF446                           ; $35B044 |
  LDA #$51                                  ; $35B047 |
  STA $0588,x                               ; $35B049 |
  LDA #$B0                                  ; $35B04C |
  STA $05A0,x                               ; $35B04E |
  LDA #$0B                                  ; $35B051 |
  CMP $30                                   ; $35B053 |
  BEQ code_35B093                           ; $35B055 |
  LDY #$00                                  ; $35B057 |
  STY $AD                                   ; $35B059 |
  LDA $30                                   ; $35B05B |
  CMP #$03                                  ; $35B05D |
  BCS code_35B041                           ; $35B05F |
  LDY #$17                                  ; $35B061 |
code_35B063:
  LDA $0300,y                               ; $35B063 |
  BEQ code_35B06C                           ; $35B066 |
  CMP #$77                                  ; $35B068 |
  BNE code_35B041                           ; $35B06A |
code_35B06C:
  DEY                                       ; $35B06C |
  CPY #$04                                  ; $35B06D |
  BNE code_35B063                           ; $35B06F |
  LDA #$0C                                  ; $35B071 |
  JSR code_3FF6BC                           ; $35B073 |
  LDA #$0B                                  ; $35B076 |
  STA $30                                   ; $35B078 |
  LDA #$FF                                  ; $35B07A |
  STA $0148                                 ; $35B07C |
  JSR code_3FFDDE                           ; $35B07F |
  LDA #$01                                  ; $35B082 |
  STA $0420                                 ; $35B084 |
  LDA #$80                                  ; $35B087 |
  CMP $0330                                 ; $35B089 |
  BCS code_35B093                           ; $35B08C |
  LDA #$02                                  ; $35B08E |
  STA $0420                                 ; $35B090 |
code_35B093:
  LDA $03F0                                 ; $35B093 |
  BPL code_35B0F3                           ; $35B096 |
  LDA #$80                                  ; $35B098 |
  CMP $0330                                 ; $35B09A |
  BNE code_35B0F3                           ; $35B09D |
  LDA #$6C                                  ; $35B09F |
  CMP $0378                                 ; $35B0A1 |
  BNE code_35B0F3                           ; $35B0A4 |
  LDA #$03                                  ; $35B0A6 |
  STA $10                                   ; $35B0A8 |
code_35B0AA:
  JSR code_3FFB6C                           ; $35B0AA |
  BCS code_35B0F0                           ; $35B0AD |
  LDA #$19                                  ; $35B0AF |
  JSR code_3FF452                           ; $35B0B1 |
  LDA #$00                                  ; $35B0B4 |
  STA $0408,y                               ; $35B0B6 |
  STA $0450,y                               ; $35B0B9 |
  LDA #$77                                  ; $35B0BC |
  STA $0300,y                               ; $35B0BE |
  LDA #$F4                                  ; $35B0C1 |
  STA $0588,y                               ; $35B0C3 |
  LDA #$B0                                  ; $35B0C6 |
  STA $05A0,y                               ; $35B0C8 |
  LDA #$2A                                  ; $35B0CB |
  STA $0300,y                               ; $35B0CD |
  STX $00                                   ; $35B0D0 |
  LDA $10                                   ; $35B0D2 |
  ASL                                       ; $35B0D4 |
  TAX                                       ; $35B0D5 |
  LDA $B17C,x                               ; $35B0D6 |
  STA $0378,y                               ; $35B0D9 |
  LDA $B17D,x                               ; $35B0DC |
  STA $0330,y                               ; $35B0DF |
  LDX $10                                   ; $35B0E2 |
  LDA $B184,x                               ; $35B0E4 |
  STA $0468,y                               ; $35B0E7 |
  LDX $00                                   ; $35B0EA |
  DEC $10                                   ; $35B0EC |
  BPL code_35B0AA                           ; $35B0EE |
code_35B0F0:
  JMP code_3EDC00                           ; $35B0F0 |

code_35B0F3:
  RTS                                       ; $35B0F3 |

  LDY $0480,x                               ; $35B0F4 |
  LDA $0468,x                               ; $35B0F7 |
  AND #$01                                  ; $35B0FA |
  BNE code_35B10F                           ; $35B0FC |
  LDA $B188,y                               ; $35B0FE |
  CMP #$80                                  ; $35B101 |
  BEQ code_35B0F0                           ; $35B103 |
  STA $00                                   ; $35B105 |
  LDA $B189,y                               ; $35B107 |
  STA $01                                   ; $35B10A |
  JMP code_35B11D                           ; $35B10C |

code_35B10F:
  LDA $B213,y                               ; $35B10F |
  CMP #$80                                  ; $35B112 |
  BEQ code_35B0F0                           ; $35B114 |
  STA $00                                   ; $35B116 |
  LDA $B214,y                               ; $35B118 |
  STA $01                                   ; $35B11B |
code_35B11D:
  LDA $0468,x                               ; $35B11D |
  CMP #$02                                  ; $35B120 |
  BCC code_35B136                           ; $35B122 |
  LDA $00                                   ; $35B124 |
  EOR #$FF                                  ; $35B126 |
  CLC                                       ; $35B128 |
  ADC #$01                                  ; $35B129 |
  STA $00                                   ; $35B12B |
  LDA $01                                   ; $35B12D |
  EOR #$FF                                  ; $35B12F |
  CLC                                       ; $35B131 |
  ADC #$01                                  ; $35B132 |
  STA $01                                   ; $35B134 |
code_35B136:
  LDA $0378,x                               ; $35B136 |
  CLC                                       ; $35B139 |
  ADC $00                                   ; $35B13A |
  STA $0378,x                               ; $35B13C |
  CMP #$F0                                  ; $35B13F |
  BCC code_35B15A                           ; $35B141 |
  LDY $00                                   ; $35B143 |
  BMI code_35B152                           ; $35B145 |
  ADC #$0F                                  ; $35B147 |
  STA $0378,x                               ; $35B149 |
  INC $0390,x                               ; $35B14C |
  JMP code_35B15A                           ; $35B14F |

code_35B152:
  SBC #$10                                  ; $35B152 |
  STA $0378,x                               ; $35B154 |
  DEC $0390,x                               ; $35B157 |
code_35B15A:
  LDA #$00                                  ; $35B15A |
  STA $02                                   ; $35B15C |
  LDA $01                                   ; $35B15E |
  BPL code_35B164                           ; $35B160 |
  DEC $02                                   ; $35B162 |
code_35B164:
  LDA $0330,x                               ; $35B164 |
  CLC                                       ; $35B167 |
  ADC $01                                   ; $35B168 |
  STA $0330,x                               ; $35B16A |
  LDA $0348,x                               ; $35B16D |
  ADC $02                                   ; $35B170 |
  STA $0348,x                               ; $35B172 |
  INC $0480,x                               ; $35B175 |
  INC $0480,x                               ; $35B178 |
  RTS                                       ; $35B17B |

  db $38, $48, $38, $B8, $A8, $48, $A8, $B8 ; $35B17C |
  db $00, $01, $03, $02, $00, $08, $00, $08 ; $35B184 |
  db $00, $08, $00, $08, $00, $08, $00, $08 ; $35B18C |
  db $00, $08, $00, $08, $02, $08, $04, $0A ; $35B194 |
  db $06, $08, $06, $08, $06, $04, $08, $04 ; $35B19C |
  db $08, $04, $08, $02, $08, $00, $08, $00 ; $35B1A4 |
  db $08, $FE, $08, $FC, $08, $FC, $08, $FA ; $35B1AC |
  db $06, $F8, $04, $F8, $04, $F8, $02, $F8 ; $35B1B4 |
  db $FE, $F6, $FC, $F8, $FA, $F8, $FA, $FA ; $35B1BC |
  db $FA, $F8, $F8, $FA, $F8, $FC, $F8, $FE ; $35B1C4 |
  db $F8, $00, $F8, $00, $F8, $02, $F8, $04 ; $35B1CC |
  db $FA, $06, $FA, $06, $FC, $08, $FE, $08 ; $35B1D4 |
  db $00, $08, $02, $08, $06, $06, $04, $06 ; $35B1DC |
  db $06, $06, $08, $06, $0A, $04, $08, $00 ; $35B1E4 |
  db $08, $00, $08, $FC, $0A, $F8, $04, $F8 ; $35B1EC |
  db $04, $F8, $00, $FA, $FC, $F8, $F8, $F8 ; $35B1F4 |
  db $FA, $FC, $F8, $FE, $F6, $FE, $F8, $02 ; $35B1FC |
  db $F8, $04, $FA, $08, $FE, $08, $02, $08 ; $35B204 |
  db $04, $06, $08, $04, $0A, $FE, $80, $08 ; $35B20C |
  db $00, $08, $00, $08, $00, $08, $00, $08 ; $35B214 |
  db $00, $08, $00, $08, $00, $08, $00, $08 ; $35B21C |
  db $FE, $0A, $FC, $08, $FA, $08, $FA, $04 ; $35B224 |
  db $FA, $04, $F8, $04, $F8, $02, $F8, $00 ; $35B22C |
  db $F8, $00, $F8, $FE, $F8, $FC, $F8, $FC ; $35B234 |
  db $F8, $FA, $F8, $F8, $FA, $F8, $FC, $F8 ; $35B23C |
  db $FC, $F8, $FE, $F6, $02, $F8, $04, $F8 ; $35B244 |
  db $06, $FA, $06, $F8, $06, $FA, $08, $FC ; $35B24C |
  db $08, $FE, $08, $00, $08, $00, $08, $02 ; $35B254 |
  db $08, $04, $08, $06, $06, $06, $06, $08 ; $35B25C |
  db $04, $08, $02, $08, $00, $08, $FE, $06 ; $35B264 |
  db $FA, $06, $FC, $06, $FA, $06, $F8, $04 ; $35B26C |
  db $F6, $00, $F8, $00, $F8, $FC, $F8, $F8 ; $35B274 |
  db $F6, $F8, $FC, $F8, $FC, $FA, $00, $F8 ; $35B27C |
  db $04, $F8, $08, $FC, $06, $FE, $08, $FE ; $35B284 |
  db $0A, $02, $08, $04, $08, $08, $06, $08 ; $35B28C |
  db $02, $08, $FE, $06, $FC, $04, $F8, $FE ; $35B294 |
  db $F6, $80                               ; $35B29C |

  LDA #$25                                  ; $35B29E |
  JSR code_3FF6BE                           ; $35B2A0 |
  JSR code_35AE81                           ; $35B2A3 |
  JSR code_3EDC00                           ; $35B2A6 |
  LDA #$00                                  ; $35B2A9 |
  STA $0468,x                               ; $35B2AB |
  STA $0480,x                               ; $35B2AE |
  STA $0498,x                               ; $35B2B1 |
  STA $04B0,x                               ; $35B2B4 |
  STA $95                                   ; $35B2B7 |
  LDA #$1E                                  ; $35B2B9 |
  STA $04C8,x                               ; $35B2BB |
  LDA #$23                                  ; $35B2BE |
  STA $04E0,x                               ; $35B2C0 |
  LDA #$A2                                  ; $35B2C3 |
  STA $0300,x                               ; $35B2C5 |
  LDA #$18                                  ; $35B2C8 |
  STA $0330,x                               ; $35B2CA |
  LDA #$11                                  ; $35B2CD |
  STA $0348,x                               ; $35B2CF |
  LDA #$C0                                  ; $35B2D2 |
  STA $0378,x                               ; $35B2D4 |
  LDA #$0E                                  ; $35B2D7 |
  STA $0450,x                               ; $35B2D9 |
  LDA #$02                                  ; $35B2DC |
  STA $0420,x                               ; $35B2DE |
  LDA #$D4                                  ; $35B2E1 |
  STA $0408,x                               ; $35B2E3 |
  LDA #$50                                  ; $35B2E6 |
  JMP code_3FF446                           ; $35B2E8 |

  JSR code_35AE7C                           ; $35B2EB |
  LDA #$00                                  ; $35B2EE |
  JSR code_3FF446                           ; $35B2F0 |
  LDA #$FD                                  ; $35B2F3 |
  STA $0588,x                               ; $35B2F5 |
  LDA #$B2                                  ; $35B2F8 |
  STA $05A0,x                               ; $35B2FA |
  LDY #$16                                  ; $35B2FD |
code_35B2FF:
  LDA $0300,y                               ; $35B2FF |
  BNE code_35B32B                           ; $35B302 |
  DEY                                       ; $35B304 |
  CPY #$04                                  ; $35B305 |
  BNE code_35B2FF                           ; $35B307 |
  LDA #$13                                  ; $35B309 |
  STA $0588,x                               ; $35B30B |
  LDA #$B3                                  ; $35B30E |
  STA $05A0,x                               ; $35B310 |
  LDA $30                                   ; $35B313 |
  BNE code_35B32B                           ; $35B315 |
  JSR code_3EDC00                           ; $35B317 |
  LDA #$0C                                  ; $35B31A |
  JSR code_3FF6BC                           ; $35B31C |
  LDA #$0B                                  ; $35B31F |
  STA $30                                   ; $35B321 |
  LDA #$FF                                  ; $35B323 |
  STA $0148                                 ; $35B325 |
  JSR code_3FFDDE                           ; $35B328 |
code_35B32B:
  RTS                                       ; $35B32B |

  LDA $0330                                 ; $35B32C |
  CMP #$40                                  ; $35B32F |
  BNE code_35B382                           ; $35B331 |
  LDY #$42                                  ; $35B333 |
code_35B335:
  LDA $B480,y                               ; $35B335 |
  STA $0780,y                               ; $35B338 |
  DEY                                       ; $35B33B |
  BPL code_35B335                           ; $35B33C |
  STY $19                                   ; $35B33E |
  LDA #$54                                  ; $35B340 |
  STA $0588,x                               ; $35B342 |
  LDA #$B3                                  ; $35B345 |
  STA $05A0,x                               ; $35B347 |
  LDA #$1F                                  ; $35B34A |
  STA $0468,x                               ; $35B34C |
  LDA #$AB                                  ; $35B34F |
  JSR code_3FF446                           ; $35B351 |
  LDA $0468,x                               ; $35B354 |
  BEQ code_35B363                           ; $35B357 |
  DEC $0468,x                               ; $35B359 |
  BNE code_35B382                           ; $35B35C |
  LDA #$AC                                  ; $35B35E |
  JSR code_3FF446                           ; $35B360 |
code_35B363:
  JSR code_3FF2A7                           ; $35B363 |
  LDA $0378,x                               ; $35B366 |
  CMP #$D0                                  ; $35B369 |
  BCC code_35B382                           ; $35B36B |
  JSR code_3EDC00                           ; $35B36D |
  LDA #$62                                  ; $35B370 |
  JSR code_3FF446                           ; $35B372 |
  LDA #$80                                  ; $35B375 |
  STA $0300,x                               ; $35B377 |
  LDA $0528,x                               ; $35B37A |
  AND #$FB                                  ; $35B37D |
  STA $0528,x                               ; $35B37F |
code_35B382:
  RTS                                       ; $35B382 |

  JSR code_3FF6E6                           ; $35B383 |
  CMP #$60                                  ; $35B386 |
  BCS code_35B382                           ; $35B388 |
  LDA $0528,x                               ; $35B38A |
  AND #$FB                                  ; $35B38D |
  STA $0528,x                               ; $35B38F |
  LDA #$9C                                  ; $35B392 |
  STA $0588,x                               ; $35B394 |
  LDA #$B3                                  ; $35B397 |
  STA $05A0,x                               ; $35B399 |
  LDA $0540,x                               ; $35B39C |
  CMP #$0B                                  ; $35B39F |
  BNE code_35B382                           ; $35B3A1 |
  LDA #$00                                  ; $35B3A3 |
  STA $0570,x                               ; $35B3A5 |
  JSR code_35B3E1                           ; $35B3A8 |
  BCS code_35B382                           ; $35B3AB |
  LDA #$B7                                  ; $35B3AD |
  STA $0588,x                               ; $35B3AF |
  LDA #$B3                                  ; $35B3B2 |
  STA $05A0,x                               ; $35B3B4 |
  LDA #$00                                  ; $35B3B7 |
  STA $0570,x                               ; $35B3B9 |
  JSR code_35B3E1                           ; $35B3BC |
  BCS code_35B3CF                           ; $35B3BF |
  LDA #$80                                  ; $35B3C1 |
  STA $03D8,x                               ; $35B3C3 |
  LDA #$00                                  ; $35B3C6 |
  STA $03F0,x                               ; $35B3C8 |
  LDA #$04                                  ; $35B3CB |
  BNE code_35B3DB                           ; $35B3CD |
code_35B3CF:
  LDA #$80                                  ; $35B3CF |
  STA $03D8,x                               ; $35B3D1 |
  LDA #$01                                  ; $35B3D4 |
  STA $03F0,x                               ; $35B3D6 |
  LDA #$08                                  ; $35B3D9 |
code_35B3DB:
  STA $0420,x                               ; $35B3DB |
  JMP code_3FF434                           ; $35B3DE |

code_35B3E1:
  LDA $0378,x                               ; $35B3E1 |
  PHA                                       ; $35B3E4 |
  DEC $0378,x                               ; $35B3E5 |
  LDA $0558                                 ; $35B3E8 |
  PHA                                       ; $35B3EB |
  LDA #$01                                  ; $35B3EC |
  STA $0558                                 ; $35B3EE |
  JSR code_3FF95D                           ; $35B3F1 |
  PLA                                       ; $35B3F4 |
  STA $0558                                 ; $35B3F5 |
  PLA                                       ; $35B3F8 |
  STA $0378,x                               ; $35B3F9 |
  RTS                                       ; $35B3FC |

  INC $0468,x                               ; $35B3FD |
  LDA $0468,x                               ; $35B400 |
  CMP #$B4                                  ; $35B403 |
  BNE code_35B47F                           ; $35B405 |
  LDA #$23                                  ; $35B407 |
  STA $0588,x                               ; $35B409 |
  LDA #$B4                                  ; $35B40C |
  STA $05A0,x                               ; $35B40E |
  LDA #$00                                  ; $35B411 |
  STA $0468,x                               ; $35B413 |
  LDA $0348,x                               ; $35B416 |
  SEC                                       ; $35B419 |
  SBC #$0D                                  ; $35B41A |
  TAY                                       ; $35B41C |
  LDA $B4C3,y                               ; $35B41D |
  STA $0480,x                               ; $35B420 |
  LDA $0468,x                               ; $35B423 |
  BNE code_35B47C                           ; $35B426 |
code_35B428:
  JSR code_3FFB6C                           ; $35B428 |
  BCS code_35B47F                           ; $35B42B |
  LDA #$39                                  ; $35B42D |
  JSR code_3FF6BE                           ; $35B42F |
  LDA #$11                                  ; $35B432 |
  JSR code_3FF452                           ; $35B434 |
  LDA #$60                                  ; $35B437 |
  STA $0300,y                               ; $35B439 |
  LDA #$00                                  ; $35B43C |
  STA $0408,y                               ; $35B43E |
  LDA #$92                                  ; $35B441 |
  STA $0528,y                               ; $35B443 |
  STX $00                                   ; $35B446 |
  LDA $0480,x                               ; $35B448 |
  TAX                                       ; $35B44B |
  LDA $B4C5,x                               ; $35B44C |
  STA $0378,y                               ; $35B44F |
  LDA $B4C6,x                               ; $35B452 |
  STA $0330,y                               ; $35B455 |
  LDA $B4C7,x                               ; $35B458 |
  STA $01                                   ; $35B45B |
  LDX $00                                   ; $35B45D |
  INC $0480,x                               ; $35B45F |
  INC $0480,x                               ; $35B462 |
  INC $0480,x                               ; $35B465 |
  LDA $01                                   ; $35B468 |
  BEQ code_35B477                           ; $35B46A |
  BPL code_35B428                           ; $35B46C |
  LDY $0480,x                               ; $35B46E |
  LDA $B4C5,y                               ; $35B471 |
  STA $0480,x                               ; $35B474 |
code_35B477:
  LDA #$3D                                  ; $35B477 |
  STA $0468,x                               ; $35B479 |
code_35B47C:
  DEC $0468,x                               ; $35B47C |
code_35B47F:
  RTS                                       ; $35B47F |

  db $22, $02, $03, $6E, $6F, $6E, $6F, $22 ; $35B480 |
  db $22, $03, $7E, $7F, $7E, $7F, $22, $42 ; $35B488 |
  db $03, $6E, $6F, $6E, $6F, $22, $62, $03 ; $35B490 |
  db $7E, $7F, $7E, $7F, $22, $1A, $03, $6E ; $35B498 |
  db $6F, $6E, $6F, $22, $3A, $03, $7E, $7F ; $35B4A0 |
  db $7E, $7F, $22, $5A, $03, $6E, $6F, $6E ; $35B4A8 |
  db $6F, $22, $6A, $03, $7E, $7F, $7E, $7F ; $35B4B0 |
  db $23, $E0, $01, $00, $00, $23, $E6, $01 ; $35B4B8 |
  db $00, $00, $FF, $00, $10, $88, $B8, $00 ; $35B4C0 |
  db $58, $B8, $00, $78, $88, $00, $88, $58 ; $35B4C8 |
  db $00, $68, $28, $FF, $00, $98, $38, $01 ; $35B4D0 |
  db $B8, $98, $00, $B8, $68, $00, $88, $68 ; $35B4D8 |
  db $00, $78, $98, $00, $88, $C8, $00, $58 ; $35B4E0 |
  db $C8, $FF, $10                          ; $35B4E8 |

  JSR code_3FFD9C                           ; $35B4EB |
  CMP #$09                                  ; $35B4EE |
  BNE code_35B528                           ; $35B4F0 |
  LDA #$00                                  ; $35B4F2 |
  STA $95                                   ; $35B4F4 |
  STA $BF                                   ; $35B4F6 |
  LDA #$8F                                  ; $35B4F8 |
  STA $0132                                 ; $35B4FA |
  LDA #$07                                  ; $35B4FD |
  STA $0588,x                               ; $35B4FF |
  LDA #$B5                                  ; $35B502 |
  STA $05A0,x                               ; $35B504 |
  LDA $95                                   ; $35B507 |
  AND #$07                                  ; $35B509 |
  BNE code_35B528                           ; $35B50B |
  LDA #$29                                  ; $35B50D |
  JSR code_3FF6BE                           ; $35B50F |
  INC $BF                                   ; $35B512 |
  LDA $BF                                   ; $35B514 |
  CMP #$1C                                  ; $35B516 |
  BNE code_35B528                           ; $35B518 |
  LDA #$29                                  ; $35B51A |
  STA $0588,x                               ; $35B51C |
  LDA #$B5                                  ; $35B51F |
  STA $05A0,x                               ; $35B521 |
  LDA #$00                                  ; $35B524 |
  STA $30                                   ; $35B526 |
code_35B528:
  RTS                                       ; $35B528 |

  LDA $E4                                   ; $35B529 |
  ADC $E5                                   ; $35B52B |
  STA $E4                                   ; $35B52D |
  AND #$0F                                  ; $35B52F |
  TAY                                       ; $35B531 |
  LDA $B8AA,y                               ; $35B532 |
  ASL                                       ; $35B535 |
  TAY                                       ; $35B536 |
  LDA $B890,y                               ; $35B537 |
  STA $0378,x                               ; $35B53A |
  LDA $B891,y                               ; $35B53D |
  STA $0330,x                               ; $35B540 |
  LDA $E4                                   ; $35B543 |
  ADC $E6                                   ; $35B545 |
  STA $E5                                   ; $35B547 |
  AND #$07                                  ; $35B549 |
  TAY                                       ; $35B54B |
  LDA $B8BA,y                               ; $35B54C |
  ASL                                       ; $35B54F |
  STA $10                                   ; $35B550 |
  JSR code_3FFB6C                           ; $35B552 |
  BCS code_35B528                           ; $35B555 |
  LDA #$18                                  ; $35B557 |
  JSR code_3FF452                           ; $35B559 |
  LDA #$94                                  ; $35B55C |
  STA $0528,y                               ; $35B55E |
  LDA #$C5                                  ; $35B561 |
  STA $0300,y                               ; $35B563 |
  LDA #$8D                                  ; $35B566 |
  STA $0408,y                               ; $35B568 |
  STX $00                                   ; $35B56B |
  LDX $10                                   ; $35B56D |
  LDA $B8A0,x                               ; $35B56F |
  STA $0378,y                               ; $35B572 |
  LDA $B8A1,x                               ; $35B575 |
  STA $0330,y                               ; $35B578 |
  LDX $00                                   ; $35B57B |
  LDA #$03                                  ; $35B57D |
  STA $11                                   ; $35B57F |
  LDA $10                                   ; $35B581 |
  ASL                                       ; $35B583 |
  ASL                                       ; $35B584 |
  ASL                                       ; $35B585 |
  STA $12                                   ; $35B586 |
code_35B588:
  JSR code_3FFB6C                           ; $35B588 |
  BCS code_35B5EE                           ; $35B58B |
  LDA #$17                                  ; $35B58D |
  JSR code_3FF452                           ; $35B58F |
  LDA #$4D                                  ; $35B592 |
  STA $0300,y                               ; $35B594 |
  LDA #$00                                  ; $35B597 |
  STA $0408,y                               ; $35B599 |
  STX $00                                   ; $35B59C |
  LDX $12                                   ; $35B59E |
  LDA $B8C2,x                               ; $35B5A0 |
  STA $0390,y                               ; $35B5A3 |
  LDA $B8C3,x                               ; $35B5A6 |
  STA $0378,y                               ; $35B5A9 |
  LDA $B8C4,x                               ; $35B5AC |
  STA $0348,y                               ; $35B5AF |
  LDA $B8C5,x                               ; $35B5B2 |
  STA $0330,y                               ; $35B5B5 |
  LDX $11                                   ; $35B5B8 |
  LDA $B916,x                               ; $35B5BA |
  STA $0468,y                               ; $35B5BD |
  LDX $00                                   ; $35B5C0 |
  INC $12                                   ; $35B5C2 |
  INC $12                                   ; $35B5C4 |
  INC $12                                   ; $35B5C6 |
  INC $12                                   ; $35B5C8 |
  DEC $11                                   ; $35B5CA |
  BPL code_35B588                           ; $35B5CC |
  LDA #$EF                                  ; $35B5CE |
  STA $0588,x                               ; $35B5D0 |
  LDA #$B5                                  ; $35B5D3 |
  STA $05A0,x                               ; $35B5D5 |
  LDA $E4                                   ; $35B5D8 |
  AND #$01                                  ; $35B5DA |
  TAY                                       ; $35B5DC |
  LDA $B912,y                               ; $35B5DD |
  STA $0468,x                               ; $35B5E0 |
  LDA $E5                                   ; $35B5E3 |
  AND #$01                                  ; $35B5E5 |
  TAY                                       ; $35B5E7 |
  LDA $B914,y                               ; $35B5E8 |
  STA $0480,x                               ; $35B5EB |
code_35B5EE:
  RTS                                       ; $35B5EE |

  LDA $0468,x                               ; $35B5EF |
  BEQ code_35B605                           ; $35B5F2 |
  LDA $0528,x                               ; $35B5F4 |
  AND #$04                                  ; $35B5F7 |
  BNE code_35B614                           ; $35B5F9 |
  DEC $0468,x                               ; $35B5FB |
  BNE code_35B614                           ; $35B5FE |
  LDA #$94                                  ; $35B600 |
  STA $0528,x                               ; $35B602 |
code_35B605:
  DEC $0480,x                               ; $35B605 |
  BNE code_35B614                           ; $35B608 |
  LDA #$29                                  ; $35B60A |
  STA $0588,x                               ; $35B60C |
  LDA #$B5                                  ; $35B60F |
  STA $05A0,x                               ; $35B611 |
code_35B614:
  RTS                                       ; $35B614 |

  LDY #$16                                  ; $35B615 |
code_35B617:
  CPY $EB                                   ; $35B617 |
  BEQ code_35B620                           ; $35B619 |
  LDA $0300,y                               ; $35B61B |
  BNE code_35B614                           ; $35B61E |
code_35B620:
  DEY                                       ; $35B620 |
  CPY #$07                                  ; $35B621 |
  BNE code_35B617                           ; $35B623 |
  LDA #$90                                  ; $35B625 |
  STA $0528,x                               ; $35B627 |
  LDA #$00                                  ; $35B62A |
  STA $02                                   ; $35B62C |
  LDA #$04                                  ; $35B62E |
  STA $03                                   ; $35B630 |
  JSR code_3FFB8C                           ; $35B632 |
  LDA $0C                                   ; $35B635 |
  STA $0420,x                               ; $35B637 |
  LDA #$65                                  ; $35B63A |
  STA $0588,x                               ; $35B63C |
  LDA #$B6                                  ; $35B63F |
  STA $05A0,x                               ; $35B641 |
  LDA #$15                                  ; $35B644 |
  STA $0468,x                               ; $35B646 |
  LDA #$20                                  ; $35B649 |
  STA $0610                                 ; $35B64B |
  LDA #$FF                                  ; $35B64E |
  STA $18                                   ; $35B650 |
  LDY #$17                                  ; $35B652 |
  LDA #$16                                  ; $35B654 |
  JSR code_3FF490                           ; $35B656 |
  LDA #$00                                  ; $35B659 |
  STA $05B8,y                               ; $35B65B |
  LDA #$90                                  ; $35B65E |
  STA $053F                                 ; $35B660 |
  BNE code_35B66E                           ; $35B663 |
  LDA #$0F                                  ; $35B665 |
  STA $0610                                 ; $35B667 |
  LDA #$FF                                  ; $35B66A |
  STA $18                                   ; $35B66C |
code_35B66E:
  LDA $0468,x                               ; $35B66E |
  BEQ code_35B683                           ; $35B671 |
  CMP #$10                                  ; $35B673 |
  BNE code_35B67E                           ; $35B675 |
  LDY #$17                                  ; $35B677 |
  LDA #$30                                  ; $35B679 |
  JSR code_3FF490                           ; $35B67B |
code_35B67E:
  DEC $0468,x                               ; $35B67E |
  BNE code_35B696                           ; $35B681 |
code_35B683:
  JSR code_3FF413                           ; $35B683 |
  JSR code_3FF434                           ; $35B686 |
  LDA #$90                                  ; $35B689 |
  STA $0528,x                               ; $35B68B |
  LDA $0390,x                               ; $35B68E |
  BEQ code_35B696                           ; $35B691 |
  JSR code_3EDC00                           ; $35B693 |
code_35B696:
  RTS                                       ; $35B696 |

  LDA #$00                                  ; $35B697 |
  STA $0408,x                               ; $35B699 |
  JSR code_35AE7C                           ; $35B69C |
  LDA #$19                                  ; $35B69F |
  JSR code_3FF446                           ; $35B6A1 |
  LDA #$BD                                  ; $35B6A4 |
  STA $0588,x                               ; $35B6A6 |
  LDA #$B6                                  ; $35B6A9 |
  STA $05A0,x                               ; $35B6AB |
  LDA #$00                                  ; $35B6AE |
  STA $03D8,x                               ; $35B6B0 |
  LDA #$04                                  ; $35B6B3 |
  STA $03F0,x                               ; $35B6B5 |
  LDA #$90                                  ; $35B6B8 |
  STA $0528,x                               ; $35B6BA |
  JSR code_3FF289                           ; $35B6BD |
  LDA $0390,x                               ; $35B6C0 |
  BEQ code_35B696                           ; $35B6C3 |
  LDA #$D7                                  ; $35B6C5 |
  STA $0588,x                               ; $35B6C7 |
  LDA #$B6                                  ; $35B6CA |
  STA $05A0,x                               ; $35B6CC |
  LDA #$80                                  ; $35B6CF |
  STA $1B                                   ; $35B6D1 |
  LDA #$07                                  ; $35B6D3 |
  STA $1C                                   ; $35B6D5 |
  LDA $1B                                   ; $35B6D7 |
  BNE code_35B696                           ; $35B6D9 |
  LDY #$16                                  ; $35B6DB |
code_35B6DD:
  LDA $0300,y                               ; $35B6DD |
  BNE code_35B696                           ; $35B6E0 |
  DEY                                       ; $35B6E2 |
  CPY #$04                                  ; $35B6E3 |
  BNE code_35B6DD                           ; $35B6E5 |
  LDA $30                                   ; $35B6E7 |
  CMP #$03                                  ; $35B6E9 |
  BCS code_35B696                           ; $35B6EB |
  LDA #$01                                  ; $35B6ED |
  STA $0420                                 ; $35B6EF |
  LDA $0330                                 ; $35B6F2 |
  CMP #$3C                                  ; $35B6F5 |
  BCC code_35B6FE                           ; $35B6F7 |
  LDA #$02                                  ; $35B6F9 |
  STA $0420                                 ; $35B6FB |
code_35B6FE:
  LDA #$12                                  ; $35B6FE |
  STA $30                                   ; $35B700 |
  JSR code_3FFDDE                           ; $35B702 |
  LDA #$21                                  ; $35B705 |
  STA $0588,x                               ; $35B707 |
  LDA #$B7                                  ; $35B70A |
  STA $05A0,x                               ; $35B70C |
  LDA #$30                                  ; $35B70F |
  STA $0468,x                               ; $35B711 |
  LDA #$00                                  ; $35B714 |
  STA $95                                   ; $35B716 |
  STA $0130                                 ; $35B718 |
  STA $0131                                 ; $35B71B |
  STA $0132                                 ; $35B71E |
  LDA $0330                                 ; $35B721 |
  CMP #$3C                                  ; $35B724 |
  BNE code_35B755                           ; $35B726 |
  LDA $95                                   ; $35B728 |
  AND #$0F                                  ; $35B72A |
  BNE code_35B755                           ; $35B72C |
  LDY #$0F                                  ; $35B72E |
code_35B730:
  LDA $B924,y                               ; $35B730 |
  SEC                                       ; $35B733 |
  SBC $0468,x                               ; $35B734 |
  BCS code_35B73B                           ; $35B737 |
  LDA #$0F                                  ; $35B739 |
code_35B73B:
  STA $0600,y                               ; $35B73B |
  STA $0620,y                               ; $35B73E |
  DEY                                       ; $35B741 |
  BPL code_35B730                           ; $35B742 |
  STY $18                                   ; $35B744 |
  LDA #$02                                  ; $35B746 |
  STA $FD                                   ; $35B748 |
  LDA $0468,x                               ; $35B74A |
  SEC                                       ; $35B74D |
  SBC #$10                                  ; $35B74E |
  STA $0468,x                               ; $35B750 |
  BCC code_35B756                           ; $35B753 |
code_35B755:
  RTS                                       ; $35B755 |

code_35B756:
  LDA #$AF                                  ; $35B756 |
  STA $0588,x                               ; $35B758 |
  LDA #$B7                                  ; $35B75B |
  STA $05A0,x                               ; $35B75D |
  LDA #$C0                                  ; $35B760 |
  STA $0330,x                               ; $35B762 |
  LDA #$00                                  ; $35B765 |
  STA $0378,x                               ; $35B767 |
  STA $0390,x                               ; $35B76A |
  STA $03D8,x                               ; $35B76D |
  STA $03F0,x                               ; $35B770 |
  STA $06F4                                 ; $35B773 |
  STA $06F8                                 ; $35B776 |
  LDA #$AD                                  ; $35B779 |
  STA $06F0                                 ; $35B77B |
  STX $10                                   ; $35B77E |
  LDA #$04                                  ; $35B780 |
  STA $11                                   ; $35B782 |
code_35B784:
  JSR code_3FFB6C                           ; $35B784 |
  BCS code_35B7AC                           ; $35B787 |
  LDX #$17                                  ; $35B789 |
  LDA #$1D                                  ; $35B78B |
  JSR code_3FF452                           ; $35B78D |
  LDA #$60                                  ; $35B790 |
  STA $0300,y                               ; $35B792 |
  LDA #$00                                  ; $35B795 |
  STA $0408,y                               ; $35B797 |
  LDX $11                                   ; $35B79A |
  LDA $B91A,x                               ; $35B79C |
  STA $0378,y                               ; $35B79F |
  LDA $B91F,x                               ; $35B7A2 |
  STA $0330,y                               ; $35B7A5 |
  DEC $11                                   ; $35B7A8 |
  BPL code_35B784                           ; $35B7AA |
code_35B7AC:
  LDX $10                                   ; $35B7AC |
code_35B7AE:
  RTS                                       ; $35B7AE |

  LDY #$00                                  ; $35B7AF |
  JSR code_3FF0F8                           ; $35B7B1 |
  BCC code_35B7AE                           ; $35B7B4 |
  LDA #$1A                                  ; $35B7B6 |
  CMP $0558,x                               ; $35B7B8 |
  BEQ code_35B7AE                           ; $35B7BB |
  JSR code_3FF446                           ; $35B7BD |
  LDA #$46                                  ; $35B7C0 |
  JSR code_3FF6BC                           ; $35B7C2 |
  LDA #$00                                  ; $35B7C5 |
  STA $0468,x                               ; $35B7C7 |
  LDA #$D5                                  ; $35B7CA |
  STA $0588,x                               ; $35B7CC |
  LDA #$B7                                  ; $35B7CF |
  STA $05A0,x                               ; $35B7D1 |
  RTS                                       ; $35B7D4 |

  LDA $95                                   ; $35B7D5 |
  AND #$01                                  ; $35B7D7 |
  BNE code_35B7AE                           ; $35B7D9 |
  DEC $0468,x                               ; $35B7DB |
  BNE code_35B7AE                           ; $35B7DE |
  LDA #$F8                                  ; $35B7E0 |
  STA $0588,x                               ; $35B7E2 |
  LDA #$B7                                  ; $35B7E5 |
  STA $05A0,x                               ; $35B7E7 |
  LDA #$3C                                  ; $35B7EA |
  STA $0468,x                               ; $35B7EC |
  LDA #$00                                  ; $35B7EF |
  STA $0540,x                               ; $35B7F1 |
  STA $0570,x                               ; $35B7F4 |
  RTS                                       ; $35B7F7 |

  LDA #$00                                  ; $35B7F8 |
  STA $0570,x                               ; $35B7FA |
  DEC $0468,x                               ; $35B7FD |
  BNE code_35B7AE                           ; $35B800 |
  LDA #$1B                                  ; $35B802 |
  JSR code_3FF446                           ; $35B804 |
  LDA #$11                                  ; $35B807 |
  STA $0588,x                               ; $35B809 |
  LDA #$B8                                  ; $35B80C |
  STA $05A0,x                               ; $35B80E |
  LDA $0540,x                               ; $35B811 |
  CMP #$0C                                  ; $35B814 |
  BNE code_35B7AE                           ; $35B816 |
  LDA #$00                                  ; $35B818 |
  JSR code_3FF446                           ; $35B81A |
  LDA #$2D                                  ; $35B81D |
  STA $0588,x                               ; $35B81F |
  LDA #$B8                                  ; $35B822 |
  STA $05A0,x                               ; $35B824 |
  LDA #$3C                                  ; $35B827 |
  STA $0468,x                               ; $35B829 |
  RTS                                       ; $35B82C |

  LDA $0558,x                               ; $35B82D |
  CMP #$1E                                  ; $35B830 |
  BEQ code_35B88F                           ; $35B832 |
  DEC $0468,x                               ; $35B834 |
  BNE code_35B88F                           ; $35B837 |
  LDA #$1E                                  ; $35B839 |
  JSR code_3FF446                           ; $35B83B |
  LDA #$80                                  ; $35B83E |
  STA $0330,x                               ; $35B840 |
  LDA #$27                                  ; $35B843 |
  STA $0378,x                               ; $35B845 |
  LDA #$96                                  ; $35B848 |
  STA $0468,x                               ; $35B84A |
  LDA #$58                                  ; $35B84D |
  STA $0588,x                               ; $35B84F |
  LDA #$B8                                  ; $35B852 |
  STA $05A0,x                               ; $35B854 |
  RTS                                       ; $35B857 |

  LDA $0468,x                               ; $35B858 |
  AND #$07                                  ; $35B85B |
  BNE code_35B864                           ; $35B85D |
  LDA #$36                                  ; $35B85F |
  JSR code_3FF6BE                           ; $35B861 |
code_35B864:
  LDA #$0F                                  ; $35B864 |
  STA $0610                                 ; $35B866 |
  LDA $0468,x                               ; $35B869 |
  AND #$10                                  ; $35B86C |
  BEQ code_35B875                           ; $35B86E |
  LDA #$16                                  ; $35B870 |
  STA $0610                                 ; $35B872 |
code_35B875:
  LDA #$FF                                  ; $35B875 |
  STA $18                                   ; $35B877 |
  DEC $0468,x                               ; $35B879 |
  BNE code_35B88F                           ; $35B87C |
  JSR code_3EDC00                           ; $35B87E |
  LDA #$13                                  ; $35B881 |
  STA $30                                   ; $35B883 |
  LDA #$78                                  ; $35B885 |
  STA $0133                                 ; $35B887 |
  LDA #$00                                  ; $35B88A |
  STA $0134                                 ; $35B88C |
code_35B88F:
  RTS                                       ; $35B88F |

  db $48, $54, $40, $84, $30, $D4, $70, $44 ; $35B890 |
  db $88, $7C, $70, $BC, $D0, $34, $C0, $B4 ; $35B898 |
  db $54, $2C, $34, $AC, $6C, $94, $BC, $54 ; $35B8A0 |
  db $94, $D4, $01, $00, $01, $07, $02, $06 ; $35B8A8 |
  db $03, $05, $04, $03, $05, $02, $06, $01 ; $35B8B0 |
  db $07, $00, $03, $04, $01, $00, $02, $01 ; $35B8B8 |
  db $03, $02, $00, $1C, $05, $F4, $00, $1C ; $35B8C0 |
  db $06, $64, $00, $8C, $05, $F4, $00, $8C ; $35B8C8 |
  db $06, $64, $FF, $EC, $06, $74, $FF, $EC ; $35B8D0 |
  db $06, $E4, $00, $6C, $06, $74, $00, $6C ; $35B8D8 |
  db $06, $E4, $00, $34, $06, $5C, $00, $34 ; $35B8E0 |
  db $06, $CC, $00, $A4, $06, $5C, $00, $A4 ; $35B8E8 |
  db $06, $CC, $00, $84, $06, $1C, $00, $84 ; $35B8F0 |
  db $06, $8C, $01, $04, $06, $1C, $01, $04 ; $35B8F8 |
  db $06, $8C, $00, $5C, $06, $9C, $00, $5C ; $35B900 |
  db $07, $0C, $00, $CC, $06, $9C, $00, $CC ; $35B908 |
  db $07, $0C, $3C, $5A, $3C, $96, $02, $03 ; $35B910 |
  db $01, $00, $4B, $3B, $3B, $4B, $4B, $1C ; $35B918 |
  db $34, $4C, $64, $9C, $0F, $27, $15, $20 ; $35B920 |
  db $0F, $30, $02, $22, $0F, $27, $00, $02 ; $35B928 |
  db $0F, $20, $2B, $1C, $00, $64, $00, $72 ; $35B930 |
  db $82, $46, $28, $54, $00, $42, $24, $63 ; $35B938 |
  db $AA, $00, $02, $51, $00, $87, $08, $60 ; $35B940 |
  db $22, $B8, $00, $A1, $88, $01, $80, $C2 ; $35B948 |
  db $0A, $5C, $00, $80, $A0, $AD, $28, $84 ; $35B950 |
  db $80, $04, $0A, $C1, $A8, $AC, $AA, $0A ; $35B958 |
  db $0C, $10, $A8, $88, $8A, $19, $00, $B0 ; $35B960 |
  db $8A, $42, $AA, $E3, $80, $20, $A0, $CB ; $35B968 |
  db $2A, $C4, $08, $B6, $A8, $AD, $A8, $0C ; $35B970 |
  db $08, $BD, $88, $14, $22, $28, $20, $19 ; $35B978 |
  db $20, $08, $00, $34, $08, $9B, $22, $11 ; $35B980 |
  db $4A, $00, $8A, $34, $80, $08, $42, $14 ; $35B988 |
  db $A0, $40, $88, $08, $02, $61, $88, $42 ; $35B990 |
  db $02, $24, $08, $AB, $02, $91, $08, $B2 ; $35B998 |
  db $88, $00, $00, $81, $20, $83, $02, $83 ; $35B9A0 |
  db $00, $0A, $80, $C0, $20, $20, $A8, $50 ; $35B9A8 |
  db $08, $09, $00, $D8, $82, $90, $88, $10 ; $35B9B0 |
  db $A8, $45, $88, $4B, $A0, $46, $0A, $00 ; $35B9B8 |
  db $08, $27, $08, $A7, $28, $61, $00, $51 ; $35B9C0 |
  db $1A, $42, $0A, $50, $02, $89, $20, $99 ; $35B9C8 |
  db $08, $E2, $00, $06, $A0, $64, $02, $29 ; $35B9D0 |
  db $A2, $1D, $00, $60, $02, $1E, $88, $EF ; $35B9D8 |
  db $80, $C0, $00, $6A, $28, $D8, $02, $38 ; $35B9E0 |
  db $80, $C8, $02, $34, $08, $04, $00, $04 ; $35B9E8 |
  db $00, $06, $08, $58, $A2, $44, $22, $00 ; $35B9F0 |
  db $80, $F4, $80, $89, $20, $18, $22, $AD ; $35B9F8 |
  db $08, $81, $20, $00, $22, $8C, $00, $40 ; $35BA00 |
  db $82, $80, $00, $10, $00, $8C, $20, $88 ; $35BA08 |
  db $00, $70, $0A, $A0, $0A, $86, $60, $03 ; $35BA10 |
  db $0A, $18, $08, $10, $02, $E0, $08, $84 ; $35BA18 |
  db $08, $C1, $80, $61, $A0, $8B, $28, $EC ; $35BA20 |
  db $88, $14, $00, $0D, $22, $25, $8A, $02 ; $35BA28 |
  db $20, $44, $A8, $18, $02, $B0, $20, $27 ; $35BA30 |
  db $00, $20, $08, $54, $8A, $64, $06, $18 ; $35BA38 |
  db $A0, $34, $00, $29, $08, $59, $00, $86 ; $35BA40 |
  db $00, $06, $20, $10, $00, $26, $A0, $0E ; $35BA48 |
  db $80, $80, $82, $20, $02, $40, $80, $10 ; $35BA50 |
  db $0A, $92, $00, $29, $08, $10, $28, $2A ; $35BA58 |
  db $80, $62, $02, $64, $42, $88, $88, $B0 ; $35BA60 |
  db $09, $0B, $88, $0E, $29, $01, $80, $46 ; $35BA68 |
  db $A2, $29, $8A, $78, $80, $60, $00, $34 ; $35BA70 |
  db $A2, $63, $0A, $5B, $A8, $64, $08, $37 ; $35BA78 |
  db $08, $21, $80, $88, $02, $D0, $A8, $90 ; $35BA80 |
  db $00, $42, $00, $48, $2A, $99, $80, $41 ; $35BA88 |
  db $00, $20, $00, $79, $8A, $00, $00, $45 ; $35BA90 |
  db $30, $02, $08, $05, $0E, $D2, $00, $20 ; $35BA98 |
  db $08, $7B, $00, $03, $04, $AA, $00, $A0 ; $35BAA0 |
  db $02, $CF, $30, $01, $08, $73, $22, $A2 ; $35BAA8 |
  db $A2, $52, $80, $4A, $00, $49, $08, $94 ; $35BAB0 |
  db $08, $0C, $02, $08, $02, $61, $A8, $46 ; $35BAB8 |
  db $02, $C1, $28, $28, $A0, $0A, $00, $8A ; $35BAC0 |
  db $A0, $2A, $28, $45, $AA, $69, $0A, $55 ; $35BAC8 |
  db $82, $2E, $08, $B8, $2A, $4B, $0A, $06 ; $35BAD0 |
  db $08, $20, $80, $BA, $02, $5A, $82, $3A ; $35BAD8 |
  db $0A, $26, $AA, $41, $22, $43, $00, $18 ; $35BAE0 |
  db $20, $08, $80, $04, $88, $AC, $80, $C2 ; $35BAE8 |
  db $80, $45, $80, $13, $0A, $B8, $A4, $6D ; $35BAF0 |
  db $A0, $D0, $00, $01, $A0, $7C, $0A, $63 ; $35BAF8 |
  db $20, $C2, $00, $46, $02, $04, $08, $98 ; $35BB00 |
  db $00, $59, $80, $82, $00, $10, $08, $06 ; $35BB08 |
  db $20, $61, $00, $00, $8A, $60, $00, $0C ; $35BB10 |
  db $0A, $1C, $00, $D2, $08, $E8, $8A, $76 ; $35BB18 |
  db $0A, $02, $20, $01, $20, $08, $00, $93 ; $35BB20 |
  db $80, $64, $20, $00, $A0, $EB, $82, $0C ; $35BB28 |
  db $A8, $0D, $00, $82, $A8, $C8, $00, $C0 ; $35BB30 |
  db $04, $EC, $20, $00, $80, $82, $80, $32 ; $35BB38 |
  db $0A, $49, $80, $A0, $2A, $03, $28, $BB ; $35BB40 |
  db $00, $53, $20, $60, $22, $81, $8A, $E8 ; $35BB48 |
  db $A0, $40, $2C, $59, $06, $72, $80, $20 ; $35BB50 |
  db $00, $40, $A8, $84, $00, $C5, $02, $18 ; $35BB58 |
  db $22, $0E, $08, $80, $00, $2B, $82, $85 ; $35BB60 |
  db $20, $05, $A2, $0A, $00, $D6, $A2, $41 ; $35BB68 |
  db $28, $08, $00, $BC, $20, $C1, $80, $02 ; $35BB70 |
  db $8A, $01, $A0, $6A, $20, $CA, $00, $CA ; $35BB78 |
  db $A0, $04, $A8, $01, $2A, $22, $22, $70 ; $35BB80 |
  db $20, $7C, $80, $24, $08, $19, $80, $C8 ; $35BB88 |
  db $22, $21, $80, $90, $A8, $20, $00, $EE ; $35BB90 |
  db $08, $44, $00, $B0, $80, $12, $02, $D0 ; $35BB98 |
  db $00, $50, $0A, $B0, $A0, $68, $28, $82 ; $35BBA0 |
  db $02, $0A, $02, $10, $08, $04, $08, $00 ; $35BBA8 |
  db $82, $C6, $88, $34, $20, $40, $20, $B0 ; $35BBB0 |
  db $08, $0D, $20, $6A, $20, $90, $08, $0D ; $35BBB8 |
  db $20, $AD, $00, $C0, $22, $08, $2A, $44 ; $35BBC0 |
  db $82, $01, $08, $4C, $08, $AC, $80, $28 ; $35BBC8 |
  db $00, $20, $00, $41, $08, $62, $00, $24 ; $35BBD0 |
  db $82, $2B, $20, $C0, $00, $50, $80, $EA ; $35BBD8 |
  db $80, $3B, $02, $62, $AA, $71, $08, $00 ; $35BBE0 |
  db $18, $CA, $02, $00, $8A, $38, $20, $12 ; $35BBE8 |
  db $02, $0D, $82, $85, $08, $3A, $A0, $F2 ; $35BBF0 |
  db $02, $92, $02, $30, $08, $41, $80, $D5 ; $35BBF8 |
  db $BF, $15, $EF, $15, $FF, $53, $CB, $55 ; $35BC00 |
  db $BD, $47, $3D, $04, $4B, $5D, $DE, $15 ; $35BC08 |
  db $ED, $C1, $B7, $75, $AF, $11, $FF, $54 ; $35BC10 |
  db $EF, $15, $FF, $55, $F9, $15, $D7, $55 ; $35BC18 |
  db $FE, $55, $DF, $17, $DB, $55, $DA, $D0 ; $35BC20 |
  db $F6, $45, $FB, $5C, $FF, $55, $6F, $07 ; $35BC28 |
  db $D7, $15, $E9, $55, $B7, $05, $DF, $45 ; $35BC30 |
  db $11, $D4, $FF, $04, $FD, $51, $FF, $40 ; $35BC38 |
  db $FD, $45, $FE, $5F, $8F, $54, $77, $55 ; $35BC40 |
  db $B7, $45, $FF, $54, $ED, $45, $F7, $D5 ; $35BC48 |
  db $E2, $54, $DF, $53, $BF, $55, $FD, $75 ; $35BC50 |
  db $FD, $55, $76, $75, $FF, $55, $B7, $95 ; $35BC58 |
  db $EF, $75, $7D, $5D, $FD, $55, $F7, $E4 ; $35BC60 |
  db $F7, $50, $EF, $45, $7D, $55, $FF, $1E ; $35BC68 |
  db $7F, $55, $BF, $55, $E2, $5D, $7D, $55 ; $35BC70 |
  db $DF, $74, $FF, $65, $D9, $10, $FF, $51 ; $35BC78 |
  db $FF, $59, $FF, $54, $EF, $F5, $EE, $55 ; $35BC80 |
  db $F7, $55, $EB, $57, $E7, $45, $BF, $50 ; $35BC88 |
  db $F5, $D5, $BD, $51, $3A, $04, $7D, $65 ; $35BC90 |
  db $D4, $54, $FF, $41, $FE, $55, $FF, $11 ; $35BC98 |
  db $DD, $51, $FF, $55, $7F, $C4, $5E, $5E ; $35BCA0 |
  db $BE, $55, $7F, $55, $7F, $50, $EF, $55 ; $35BCA8 |
  db $FF, $45, $FC, $55, $C9, $54, $FF, $5D ; $35BCB0 |
  db $DF, $40, $FC, $15, $EF, $55, $EA, $74 ; $35BCB8 |
  db $CB, $51, $EF, $C4, $9B, $5D, $BF, $55 ; $35BCC0 |
  db $35, $51, $BF, $05, $DF, $15, $FF, $55 ; $35BCC8 |
  db $AD, $51, $FE, $45, $D2, $55, $B7, $55 ; $35BCD0 |
  db $6F, $55, $CE, $55, $AE, $14, $77, $52 ; $35BCD8 |
  db $7F, $55, $EF, $45, $7F, $55, $FF, $5D ; $35BCE0 |
  db $FF, $55, $BF, $65, $6F, $5D, $D6, $55 ; $35BCE8 |
  db $7F, $5C, $1B, $15, $E3, $05, $FD, $64 ; $35BCF0 |
  db $F6, $9D, $75, $8C, $EF, $47, $DE, $04 ; $35BCF8 |
  db $FA, $44, $DB, $0D, $5B, $55, $F7, $55 ; $35BD00 |
  db $1D, $54, $FF, $54, $CC, $55, $BB, $D5 ; $35BD08 |
  db $F1, $45, $FF, $41, $EF, $44, $9F, $51 ; $35BD10 |
  db $DB, $65, $FF, $53, $DF, $04, $A4, $0D ; $35BD18 |
  db $D6, $45, $DF, $14, $F9, $55, $FF, $45 ; $35BD20 |
  db $97, $15, $EF, $75, $F7, $55, $D7, $D4 ; $35BD28 |
  db $FC, $15, $F7, $54, $7B, $C5, $FF, $54 ; $35BD30 |
  db $FB, $75, $85, $41, $9D, $D4, $ED, $D1 ; $35BD38 |
  db $E7, $51, $7F, $51, $FF, $15, $DE, $55 ; $35BD40 |
  db $F7, $55, $FF, $53, $F7, $D5, $7F, $55 ; $35BD48 |
  db $ED, $55, $F7, $55, $7F, $16, $7F, $45 ; $35BD50 |
  db $3F, $50, $D7, $51, $9F, $06, $FD, $15 ; $35BD58 |
  db $FB, $55, $B5, $55, $FF, $71, $7E, $95 ; $35BD60 |
  db $DF, $C5, $F6, $65, $FE, $D7, $FB, $58 ; $35BD68 |
  db $BF, $57, $7F, $D3, $7F, $45, $F9, $51 ; $35BD70 |
  db $CF, $25, $FD, $57, $5F, $05, $BF, $71 ; $35BD78 |
  db $5F, $61, $5E, $55, $AF, $54, $9B, $14 ; $35BD80 |
  db $BF, $95, $98, $55, $47, $01, $FF, $15 ; $35BD88 |
  db $B5, $D5, $FF, $55, $37, $03, $F5, $55 ; $35BD90 |
  db $CF, $C4, $BD, $74, $6A, $05, $AF, $4D ; $35BD98 |
  db $FF, $55, $BD, $D1, $DD, $D5, $BF, $15 ; $35BDA0 |
  db $FF, $57, $BF, $45, $E6, $50, $D3, $35 ; $35BDA8 |
  db $DA, $55, $FF, $17, $B6, $4C, $7F, $1F ; $35BDB0 |
  db $2E, $51, $FF, $51, $FF, $D1, $2C, $57 ; $35BDB8 |
  db $FF, $55, $CE, $D1, $BC, $C5, $B5, $55 ; $35BDC0 |
  db $F6, $55, $EF, $44, $7D, $55, $7B, $57 ; $35BDC8 |
  db $7B, $55, $DC, $54, $FB, $55, $6F, $15 ; $35BDD0 |
  db $F7, $45, $FB, $55, $FC, $D5, $EF, $54 ; $35BDD8 |
  db $FF, $44, $6B, $54, $7B, $5D, $FF, $11 ; $35BDE0 |
  db $FF, $85, $DD, $56, $BE, $71, $7B, $5D ; $35BDE8 |
  db $AD, $55, $BF, $11, $BD, $D1, $FB, $45 ; $35BDF0 |
  db $7F, $54, $F6, $55, $FD, $55, $FE, $55 ; $35BDF8 |
  db $FD, $95, $FB, $05, $FD, $11, $FE, $55 ; $35BE00 |
  db $CF, $52, $F6, $D5, $DF, $54, $3F, $54 ; $35BE08 |
  db $BF, $55, $DF, $D4, $73, $55, $FB, $00 ; $35BE10 |
  db $F2, $55, $9B, $5D, $B7, $47, $FD, $55 ; $35BE18 |
  db $BF, $75, $FD, $15, $F7, $D5, $FF, $75 ; $35BE20 |
  db $DF, $5D, $5F, $55, $EE, $54, $BE, $C5 ; $35BE28 |
  db $2B, $55, $EF, $45, $EF, $D6, $FF, $45 ; $35BE30 |
  db $ED, $15, $FF, $54, $BF, $40, $73, $15 ; $35BE38 |
  db $F5, $55, $FB, $71, $7E, $55, $7F, $15 ; $35BE40 |
  db $9F, $55, $FE, $65, $BE, $D5, $7F, $5D ; $35BE48 |
  db $AE, $55, $FD, $45, $7E, $11, $4F, $45 ; $35BE50 |
  db $5F, $55, $DB, $F1, $7F, $44, $BD, $95 ; $35BE58 |
  db $FF, $75, $FB, $55, $BB, $DD, $FF, $41 ; $35BE60 |
  db $EF, $74, $DE, $5D, $AE, $55, $EB, $51 ; $35BE68 |
  db $DF, $15, $5B, $5D, $FA, $53, $D1, $55 ; $35BE70 |
  db $DF, $04, $E7, $51, $FD, $35, $FF, $54 ; $35BE78 |
  db $7F, $54, $7F, $55, $F1, $19, $EF, $55 ; $35BE80 |
  db $FE, $15, $F1, $41, $FB, $55, $DF, $55 ; $35BE88 |
  db $E9, $55, $AF, $10, $BF, $48, $FE, $55 ; $35BE90 |
  db $BB, $0D, $FE, $45, $BE, $41, $FB, $15 ; $35BE98 |
  db $FB, $51, $EF, $55, $7D, $55, $9D, $51 ; $35BEA0 |
  db $6F, $4F, $3F, $55, $FF, $51, $F7, $45 ; $35BEA8 |
  db $7B, $51, $F7, $51, $FF, $75, $F7, $5D ; $35BEB0 |
  db $FB, $43, $7D, $15, $FF, $45, $E4, $50 ; $35BEB8 |
  db $DF, $45, $BF, $55, $FF, $65, $D5, $17 ; $35BEC0 |
  db $FF, $55, $FE, $65, $E7, $5C, $FA, $D4 ; $35BEC8 |
  db $AB, $55, $5F, $55, $F3, $55, $67, $45 ; $35BED0 |
  db $FF, $51, $FF, $55, $FA, $51, $7F, $51 ; $35BED8 |
  db $F7, $45, $FA, $50, $FF, $05, $FD, $55 ; $35BEE0 |
  db $BF, $15, $EB, $55, $FF, $75, $FF, $50 ; $35BEE8 |
  db $CB, $51, $FF, $D3, $9F, $45, $FE, $60 ; $35BEF0 |
  db $C9, $45, $D7, $5D, $F5, $F5, $FD, $D5 ; $35BEF8 |
  db $F4, $55, $A1, $55, $BB, $15, $7E, $55 ; $35BF00 |
  db $FE, $41, $FF, $15, $FF, $45, $F3, $55 ; $35BF08 |
  db $FF, $15, $FB, $1D, $6D, $51, $BF, $58 ; $35BF10 |
  db $FD, $55, $7F, $51, $FD, $55, $F4, $71 ; $35BF18 |
  db $FE, $74, $FE, $55, $6E, $45, $FF, $57 ; $35BF20 |
  db $FF, $55, $FF, $56, $97, $55, $9F, $45 ; $35BF28 |
  db $DF, $15, $FF, $51, $DB, $54, $D6, $55 ; $35BF30 |
  db $FF, $47, $DD, $05, $FF, $75, $B3, $51 ; $35BF38 |
  db $77, $56, $FB, $17, $FF, $55, $FD, $54 ; $35BF40 |
  db $FF, $15, $FF, $55, $BD, $15, $7F, $D5 ; $35BF48 |
  db $D5, $55, $BF, $51, $57, $55, $FE, $D0 ; $35BF50 |
  db $7D, $51, $7F, $11, $7D, $55, $BD, $D5 ; $35BF58 |
  db $BB, $D5, $B5, $D5, $FF, $55, $DF, $55 ; $35BF60 |
  db $E5, $55, $FC, $55, $FF, $55, $FF, $15 ; $35BF68 |
  db $B7, $55, $FB, $35, $FB, $55, $FF, $55 ; $35BF70 |
  db $63, $D5, $FE, $44, $F8, $55, $6D, $50 ; $35BF78 |
  db $7E, $57, $F9, $51, $BB, $D5, $F7, $54 ; $35BF80 |
  db $DD, $55, $DF, $45, $5F, $C5, $BB, $55 ; $35BF88 |
  db $DB, $05, $EB, $00, $D1, $D4, $D6, $54 ; $35BF90 |
  db $FC, $14, $57, $51, $AB, $5E, $9F, $15 ; $35BF98 |
  db $FB, $55, $FF, $55, $BF, $5C, $FF, $45 ; $35BFA0 |
  db $BF, $57, $9F, $55, $EF, $54, $F7, $C5 ; $35BFA8 |
  db $D7, $15, $9F, $75, $EF, $5C, $FE, $55 ; $35BFB0 |
  db $FF, $15, $FB, $75, $7E, $55, $67, $55 ; $35BFB8 |
  db $FE, $11, $FF, $51, $AF, $55, $BF, $51 ; $35BFC0 |
  db $BF, $15, $FE, $55, $DA, $44, $B7, $51 ; $35BFC8 |
  db $5F, $44, $DF, $76, $E4, $15, $E7, $55 ; $35BFD0 |
  db $CE, $55, $F7, $41, $FC, $51, $E5, $14 ; $35BFD8 |
  db $77, $35, $7F, $15, $FF, $54, $B7, $55 ; $35BFE0 |
  db $EF, $57, $FB, $65, $FF, $11, $E6, $47 ; $35BFE8 |
  db $BF, $91, $FF, $D1, $DF, $54, $DD, $55 ; $35BFF0 |
  db $E6, $72, $EF, $77, $77, $54, $FF, $50 ; $35BFF8 |
