; code bank, half data too

bank $1E
org $8000

  JMP code_1E806C                           ; $1E8000 |

  JMP code_1E80FE                           ; $1E8003 |

code_1E8006:
  LDA #$00                                  ; $1E8006 |
  STA $C2                                   ; $1E8008 |
  LDY #$08                                  ; $1E800A |
code_1E800C:
  ASL $C2                                   ; $1E800C |
  ROL $C1                                   ; $1E800E |
  BCC code_1E801F                           ; $1E8010 |
  CLC                                       ; $1E8012 |
  LDA $C2                                   ; $1E8013 |
  ADC $C4                                   ; $1E8015 |
  STA $C2                                   ; $1E8017 |
  LDA $C1                                   ; $1E8019 |
  ADC #$00                                  ; $1E801B |
  STA $C1                                   ; $1E801D |
code_1E801F:
  DEY                                       ; $1E801F |
  BNE code_1E800C                           ; $1E8020 |
  RTS                                       ; $1E8022 |

code_1E8023:
  ASL                                       ; $1E8023 |
  TAY                                       ; $1E8024 |
  INY                                       ; $1E8025 |
  PLA                                       ; $1E8026 |
  STA $C1                                   ; $1E8027 |
  PLA                                       ; $1E8029 |
  STA $C2                                   ; $1E802A |
  LDA ($C1),y                               ; $1E802C |
  PHA                                       ; $1E802E |
  INY                                       ; $1E802F |
  LDA ($C1),y                               ; $1E8030 |
  STA $C2                                   ; $1E8032 |
  PLA                                       ; $1E8034 |
  STA $C1                                   ; $1E8035 |
  JMP ($00C1)                               ; $1E8037 |

code_1E803A:
  STY $C1                                   ; $1E803A |
  LDY #$00                                  ; $1E803C |
  CMP #$C0                                  ; $1E803E |
  BCS code_1E8047                           ; $1E8040 |
  STA $C2                                   ; $1E8042 |
  LDA ($C1),y                               ; $1E8044 |
  RTS                                       ; $1E8046 |

code_1E8047:
  SEC                                       ; $1E8047 |
  SBC #$20                                  ; $1E8048 |
  STA $C2                                   ; $1E804A |
  LDA #$07                                  ; $1E804C |
  STA $8000                                 ; $1E804E |
  LDA #$1D                                  ; $1E8051 |
  STA $8001                                 ; $1E8053 |
  LDA ($C1),y                               ; $1E8056 |
  PHA                                       ; $1E8058 |
  LDA #$07                                  ; $1E8059 |
  STA $8000                                 ; $1E805B |
  LDA #$1F                                  ; $1E805E |
  STA $8001                                 ; $1E8060 |
  LDA #$20                                  ; $1E8063 |
  CLC                                       ; $1E8065 |
  ADC $C2                                   ; $1E8066 |
  STA $C2                                   ; $1E8068 |
  PLA                                       ; $1E806A |
  RTS                                       ; $1E806B |

code_1E806C:
  LDA $C0                                   ; $1E806C |
  LSR                                       ; $1E806E |
  BCS code_1E80D7                           ; $1E806F |
  LDA $D0                                   ; $1E8071 |
  ORA $D1                                   ; $1E8073 |
  BEQ code_1E807A                           ; $1E8075 |
  JSR code_1E8252                           ; $1E8077 |
code_1E807A:
  CLC                                       ; $1E807A |
  LDA $CA                                   ; $1E807B |
  ADC $C8                                   ; $1E807D |
  STA $C8                                   ; $1E807F |
  LDA $C9                                   ; $1E8081 |
  ADC #$00                                  ; $1E8083 |
  STA $C7                                   ; $1E8085 |
  LDA $CF                                   ; $1E8087 |
  PHA                                       ; $1E8089 |
  LDX #$03                                  ; $1E808A |
code_1E808C:
  LSR $CF                                   ; $1E808C |
  BCC code_1E8099                           ; $1E808E |
  LDA $CF                                   ; $1E8090 |
  ORA #$80                                  ; $1E8092 |
  STA $CF                                   ; $1E8094 |
  JSR code_1E82DE                           ; $1E8096 |
code_1E8099:
  LDA $C0                                   ; $1E8099 |
  AND #$02                                  ; $1E809B |
  BNE code_1E80A6                           ; $1E809D |
  TXA                                       ; $1E809F |
  PHA                                       ; $1E80A0 |
  JSR code_1E8393                           ; $1E80A1 |
  PLA                                       ; $1E80A4 |
  TAX                                       ; $1E80A5 |
code_1E80A6:
  DEX                                       ; $1E80A6 |
  BPL code_1E808C                           ; $1E80A7 |
  PLA                                       ; $1E80A9 |
  STA $CF                                   ; $1E80AA |
  LSR $C0                                   ; $1E80AC |
  ASL $C0                                   ; $1E80AE |
  LDA $CC                                   ; $1E80B0 |
  AND #$7F                                  ; $1E80B2 |
  BEQ code_1E80D7                           ; $1E80B4 |
  LDY #$00                                  ; $1E80B6 |
  STY $C1                                   ; $1E80B8 |
  LDY #$04                                  ; $1E80BA |
code_1E80BC:
  ASL                                       ; $1E80BC |
  ROL $C1                                   ; $1E80BD |
  DEY                                       ; $1E80BF |
  BNE code_1E80BC                           ; $1E80C0 |
  CLC                                       ; $1E80C2 |
  ADC $C0                                   ; $1E80C3 |
  STA $C0                                   ; $1E80C5 |
  LDA $C1                                   ; $1E80C7 |
  ADC $CD                                   ; $1E80C9 |
  BCC code_1E80D5                           ; $1E80CB |
  LDA $CC                                   ; $1E80CD |
  AND #$80                                  ; $1E80CF |
  STA $CC                                   ; $1E80D1 |
  LDA #$FF                                  ; $1E80D3 |
code_1E80D5:
  STA $CD                                   ; $1E80D5 |
code_1E80D7:
  RTS                                       ; $1E80D7 |

code_1E80D8:
  TXA                                       ; $1E80D8 |
  AND #$03                                  ; $1E80D9 |
  EOR #$03                                  ; $1E80DB |
  ASL                                       ; $1E80DD |
  ASL                                       ; $1E80DE |
  TAY                                       ; $1E80DF |
  LDA #$30                                  ; $1E80E0 |
  CPY #$08                                  ; $1E80E2 |
  BNE code_1E80E8                           ; $1E80E4 |
  LDA #$00                                  ; $1E80E6 |
code_1E80E8:
  STA $4000,y                               ; $1E80E8 |
  RTS                                       ; $1E80EB |

code_1E80EC:
  PHA                                       ; $1E80EC |
  TXA                                       ; $1E80ED |
  AND #$03                                  ; $1E80EE |
  EOR #$03                                  ; $1E80F0 |
  ASL                                       ; $1E80F2 |
  ASL                                       ; $1E80F3 |
  STY $C4                                   ; $1E80F4 |
  ORA $C4                                   ; $1E80F6 |
  TAY                                       ; $1E80F8 |
  PLA                                       ; $1E80F9 |
  STA $4000,y                               ; $1E80FA |
  RTS                                       ; $1E80FD |

code_1E80FE:
  INC $C0                                   ; $1E80FE |
  JSR code_1E8106                           ; $1E8100 |
  DEC $C0                                   ; $1E8103 |
  RTS                                       ; $1E8105 |

code_1E8106:
  CMP #$F0                                  ; $1E8106 |
  BCC code_1E810D                           ; $1E8108 |
  JMP code_1E81AE                           ; $1E810A |

code_1E810D:
  CMP $8A40                                 ; $1E810D |
  BCC code_1E8118                           ; $1E8110 |
  SEC                                       ; $1E8112 |
  SBC $8A40                                 ; $1E8113 |
  BCS code_1E810D                           ; $1E8116 |
code_1E8118:
  ASL                                       ; $1E8118 |
  TAX                                       ; $1E8119 |
  LDY $8A44,x                               ; $1E811A |
  TYA                                       ; $1E811D |
  ORA $8A43,x                               ; $1E811E |
  BEQ code_1E816E                           ; $1E8121 |
  LDA $8A43,x                               ; $1E8123 |
  JSR code_1E803A                           ; $1E8126 |
  TAY                                       ; $1E8129 |
  BEQ code_1E816F                           ; $1E812A |
  LDY #$00                                  ; $1E812C |
  INX                                       ; $1E812E |
  STA $C4                                   ; $1E812F |
  AND #$7F                                  ; $1E8131 |
  CMP $CE                                   ; $1E8133 |
  BCC code_1E816E                           ; $1E8135 |
  STA $CE                                   ; $1E8137 |
  BNE code_1E8145                           ; $1E8139 |
  LDA $D6                                   ; $1E813B |
  BPL code_1E8145                           ; $1E813D |
  LDA $C4                                   ; $1E813F |
  BMI code_1E8145                           ; $1E8141 |
  STY $D7                                   ; $1E8143 |
code_1E8145:
  STY $D6                                   ; $1E8145 |
  ASL $C4                                   ; $1E8147 |
  ROR $D6                                   ; $1E8149 |
  BPL code_1E814F                           ; $1E814B |
  STX $D7                                   ; $1E814D |
code_1E814F:
  INC $C1                                   ; $1E814F |
  LDA $C1                                   ; $1E8151 |
  STA $D0                                   ; $1E8153 |
  BNE code_1E8159                           ; $1E8155 |
  INC $C2                                   ; $1E8157 |
code_1E8159:
  LDA $C2                                   ; $1E8159 |
  STA $D1                                   ; $1E815B |
  TYA                                       ; $1E815D |
  STA $D2                                   ; $1E815E |
  STA $D3                                   ; $1E8160 |
  STA $D4                                   ; $1E8162 |
  STA $D5                                   ; $1E8164 |
  LDY #$27                                  ; $1E8166 |
code_1E8168:
  STA $0700,y                               ; $1E8168 |
  DEY                                       ; $1E816B |
  BPL code_1E8168                           ; $1E816C |
code_1E816E:
  RTS                                       ; $1E816E |

code_1E816F:
  LDX #$01                                  ; $1E816F |
  STX $C9                                   ; $1E8171 |
  LDX #$99                                  ; $1E8173 |
  STX $CA                                   ; $1E8175 |
  STA $C8                                   ; $1E8177 |
  STA $CB                                   ; $1E8179 |
  STA $CC                                   ; $1E817B |
  STA $CD                                   ; $1E817D |
  LDX #$53                                  ; $1E817F |
code_1E8181:
  STA $0728,x                               ; $1E8181 |
  DEX                                       ; $1E8184 |
  BPL code_1E8181                           ; $1E8185 |
  LDX #$03                                  ; $1E8187 |
code_1E8189:
  INC $C1                                   ; $1E8189 |
  BNE code_1E818F                           ; $1E818B |
  INC $C2                                   ; $1E818D |
code_1E818F:
  LDY $C1                                   ; $1E818F |
  LDA $C2                                   ; $1E8191 |
  JSR code_1E803A                           ; $1E8193 |
  STA $0754,x                               ; $1E8196 |
  INC $C1                                   ; $1E8199 |
  BNE code_1E819F                           ; $1E819B |
  INC $C2                                   ; $1E819D |
code_1E819F:
  LDY $C1                                   ; $1E819F |
  LDA $C2                                   ; $1E81A1 |
  JSR code_1E803A                           ; $1E81A3 |
  STA $0750,x                               ; $1E81A6 |
  DEX                                       ; $1E81A9 |
  BPL code_1E8189                           ; $1E81AA |
  BMI code_1E81F1                           ; $1E81AC |
code_1E81AE:
  STY $C3                                   ; $1E81AE |
  AND #$07                                  ; $1E81B0 |
  JSR code_1E8023                           ; $1E81B2 |

  dw $81C5                                  ; $1E81B5 |
  dw $81C8                                  ; $1E81B7 |
  dw $81E4                                  ; $1E81B9 |
  dw $821E                                  ; $1E81BB |
  dw $8226                                  ; $1E81BD |
  dw $822D                                  ; $1E81BF |
  dw $8234                                  ; $1E81C1 |
  dw $824A                                  ; $1E81C3 |

  JSR code_1E81E4                           ; $1E81C5 |
code_1E81C8:
  LDA #$00                                  ; $1E81C8 |
  STA $CE                                   ; $1E81CA |
  STA $D0                                   ; $1E81CC |
  STA $D1                                   ; $1E81CE |
  STA $D7                                   ; $1E81D0 |
  STA $D8                                   ; $1E81D2 |
code_1E81D4:
  LDA $CF                                   ; $1E81D4 |
  BEQ code_1E81E3                           ; $1E81D6 |
  EOR #$0F                                  ; $1E81D8 |
  STA $CF                                   ; $1E81DA |
  JSR code_1E81F1                           ; $1E81DC |
  LDA #$00                                  ; $1E81DF |
  STA $CF                                   ; $1E81E1 |
code_1E81E3:
  RTS                                       ; $1E81E3 |

code_1E81E4:
  LDA #$00                                  ; $1E81E4 |
  LDX #$03                                  ; $1E81E6 |
code_1E81E8:
  STA $0754,x                               ; $1E81E8 |
  STA $0750,x                               ; $1E81EB |
  DEX                                       ; $1E81EE |
  BPL code_1E81E8                           ; $1E81EF |
code_1E81F1:
  LDA $CF                                   ; $1E81F1 |
  PHA                                       ; $1E81F3 |
  LDX #$03                                  ; $1E81F4 |
code_1E81F6:
  LSR $CF                                   ; $1E81F6 |
  BCS code_1E820A                           ; $1E81F8 |
  JSR code_1E80D8                           ; $1E81FA |
  LDA $0754,x                               ; $1E81FD |
  ORA $0750,x                               ; $1E8200 |
  BEQ code_1E820A                           ; $1E8203 |
  LDA #$FF                                  ; $1E8205 |
  STA $077C,x                               ; $1E8207 |
code_1E820A:
  DEX                                       ; $1E820A |
  BPL code_1E81F6                           ; $1E820B |
  PLA                                       ; $1E820D |
  STA $CF                                   ; $1E820E |
  LDA #$08                                  ; $1E8210 |
  STA $4001                                 ; $1E8212 |
  STA $4005                                 ; $1E8215 |
  LDA #$0F                                  ; $1E8218 |
  STA $4015                                 ; $1E821A |
  RTS                                       ; $1E821D |

  LDA $C0                                   ; $1E821E |
  ORA #$02                                  ; $1E8220 |
  STA $C0                                   ; $1E8222 |
  BNE code_1E81F1                           ; $1E8224 |
  LDA $C0                                   ; $1E8226 |
  AND #$FD                                  ; $1E8228 |
  STA $C0                                   ; $1E822A |
  RTS                                       ; $1E822C |

  ASL $C3                                   ; $1E822D |
  BEQ code_1E8234                           ; $1E822F |
  SEC                                       ; $1E8231 |
  ROR $C3                                   ; $1E8232 |
code_1E8234:
  LDA $C0                                   ; $1E8234 |
  AND #$0F                                  ; $1E8236 |
  STA $C0                                   ; $1E8238 |
  LDY $C3                                   ; $1E823A |
  STY $CC                                   ; $1E823C |
  BEQ code_1E8247                           ; $1E823E |
  LDY #$FF                                  ; $1E8240 |
  CPY $CD                                   ; $1E8242 |
  BNE code_1E8249                           ; $1E8244 |
  INY                                       ; $1E8246 |
code_1E8247:
  STY $CD                                   ; $1E8247 |
code_1E8249:
  RTS                                       ; $1E8249 |

  LDA #$00                                  ; $1E824A |
  SEC                                       ; $1E824C |
  SBC $C3                                   ; $1E824D |
  STA $D8                                   ; $1E824F |
  RTS                                       ; $1E8251 |

code_1E8252:
  LDA $D3                                   ; $1E8252 |
  BEQ code_1E825B                           ; $1E8254 |
  DEC $D3                                   ; $1E8256 |
  DEC $D5                                   ; $1E8258 |
  RTS                                       ; $1E825A |

code_1E825B:
  JSR code_1E8386                           ; $1E825B |
  STA $C4                                   ; $1E825E |
  ASL                                       ; $1E8260 |
  BCC code_1E8273                           ; $1E8261 |
  STY $CE                                   ; $1E8263 |
  LDA $D7                                   ; $1E8265 |
  LSR                                       ; $1E8267 |
  BCC code_1E8270                           ; $1E8268 |
  JSR code_1E8118                           ; $1E826A |
  JMP code_1E825B                           ; $1E826D |

code_1E8270:
  JMP code_1E81C8                           ; $1E8270 |

code_1E8273:
  LSR $C4                                   ; $1E8273 |
  BCC code_1E82A6                           ; $1E8275 |
  JSR code_1E8386                           ; $1E8277 |
  ASL                                       ; $1E827A |
  BEQ code_1E8289                           ; $1E827B |
  ASL $D6                                   ; $1E827D |
  PHP                                       ; $1E827F |
  CMP $D6                                   ; $1E8280 |
  BEQ code_1E8296                           ; $1E8282 |
  PLP                                       ; $1E8284 |
  ROR $D6                                   ; $1E8285 |
  INC $D6                                   ; $1E8287 |
code_1E8289:
  JSR code_1E8386                           ; $1E8289 |
  TAX                                       ; $1E828C |
  JSR code_1E8386                           ; $1E828D |
  STA $D0                                   ; $1E8290 |
  STX $D1                                   ; $1E8292 |
  BNE code_1E825B                           ; $1E8294 |
code_1E8296:
  TYA                                       ; $1E8296 |
  PLP                                       ; $1E8297 |
  ROR                                       ; $1E8298 |
  STA $D6                                   ; $1E8299 |
  CLC                                       ; $1E829B |
  LDA #$02                                  ; $1E829C |
  ADC $D0                                   ; $1E829E |
  STA $D0                                   ; $1E82A0 |
  BCC code_1E82A6                           ; $1E82A2 |
  INC $D1                                   ; $1E82A4 |
code_1E82A6:
  LSR $C4                                   ; $1E82A6 |
  BCC code_1E82AF                           ; $1E82A8 |
  JSR code_1E8386                           ; $1E82AA |
  STA $D4                                   ; $1E82AD |
code_1E82AF:
  LSR $C4                                   ; $1E82AF |
  BCC code_1E82B8                           ; $1E82B1 |
  JSR code_1E8386                           ; $1E82B3 |
  STA $D2                                   ; $1E82B6 |
code_1E82B8:
  JSR code_1E8386                           ; $1E82B8 |
  STA $D3                                   ; $1E82BB |
  STA $C1                                   ; $1E82BD |
  LDA $D4                                   ; $1E82BF |
  STA $C4                                   ; $1E82C1 |
  JSR code_1E8006                           ; $1E82C3 |
  LDY $C1                                   ; $1E82C6 |
  INY                                       ; $1E82C8 |
  STY $D5                                   ; $1E82C9 |
  INC $C0                                   ; $1E82CB |
  JSR code_1E8386                           ; $1E82CD |
  PHA                                       ; $1E82D0 |
  EOR $CF                                   ; $1E82D1 |
  BEQ code_1E82DA                           ; $1E82D3 |
  STA $CF                                   ; $1E82D5 |
  JSR code_1E81D4                           ; $1E82D7 |
code_1E82DA:
  PLA                                       ; $1E82DA |
  STA $CF                                   ; $1E82DB |
  RTS                                       ; $1E82DD |

code_1E82DE:
  LDY $0700,x                               ; $1E82DE |
  BEQ code_1E82E6                           ; $1E82E1 |
  JSR code_1E8684                           ; $1E82E3 |
code_1E82E6:
  LDA $C0                                   ; $1E82E6 |
  LSR                                       ; $1E82E8 |
  BCS code_1E830A                           ; $1E82E9 |
  JSR code_1E86BA                           ; $1E82EB |
  LDA $D3                                   ; $1E82EE |
  BEQ code_1E82FA                           ; $1E82F0 |
  CPX #$01                                  ; $1E82F2 |
  BEQ code_1E82FB                           ; $1E82F4 |
  LDA $D5                                   ; $1E82F6 |
  BEQ code_1E8300                           ; $1E82F8 |
code_1E82FA:
  RTS                                       ; $1E82FA |

code_1E82FB:
  DEC $0710,x                               ; $1E82FB |
  BNE code_1E82FA                           ; $1E82FE |
code_1E8300:
  LDA $0704,x                               ; $1E8300 |
  AND #$04                                  ; $1E8303 |
  BNE code_1E82FA                           ; $1E8305 |
  JMP code_1E85A3                           ; $1E8307 |

code_1E830A:
  LDA #$00                                  ; $1E830A |
  STA $C4                                   ; $1E830C |
  JSR code_1E8386                           ; $1E830E |
code_1E8311:
  LSR                                       ; $1E8311 |
  BCC code_1E8320                           ; $1E8312 |
  PHA                                       ; $1E8314 |
  JSR code_1E8386                           ; $1E8315 |
  STA $C3                                   ; $1E8318 |
  LDA $C4                                   ; $1E831A |
  JSR code_1E8326                           ; $1E831C |
  PLA                                       ; $1E831F |
code_1E8320:
  BEQ code_1E8333                           ; $1E8320 |
  INC $C4                                   ; $1E8322 |
  BNE code_1E8311                           ; $1E8324 |
code_1E8326:
  JSR code_1E8023                           ; $1E8326 |

  dw $866F                                  ; $1E8329 |
  dw $86AD                                  ; $1E832B |
  dw $865A                                  ; $1E832D |
  dw $86A7                                  ; $1E832F |
  dw $86A1                                  ; $1E8331 |

code_1E8333:
  JSR code_1E8386                           ; $1E8333 |
  TAY                                       ; $1E8336 |
  BNE code_1E8349                           ; $1E8337 |
  STA $0710,x                               ; $1E8339 |
  LDA $0704,x                               ; $1E833C |
  AND #$F8                                  ; $1E833F |
  ORA #$04                                  ; $1E8341 |
  STA $0704,x                               ; $1E8343 |
  JMP code_1E80D8                           ; $1E8346 |

code_1E8349:
  LDA $0704,x                               ; $1E8349 |
  ORA #$20                                  ; $1E834C |
  STA $0704,x                               ; $1E834E |
  LDA $0718,x                               ; $1E8351 |
  ASL                                       ; $1E8354 |
  LDA #$54                                  ; $1E8355 |
  BCS code_1E835B                           ; $1E8357 |
  LDA #$0A                                  ; $1E8359 |
code_1E835B:
  STA $071C,x                               ; $1E835B |
  TYA                                       ; $1E835E |
  BPL code_1E836B                           ; $1E835F |
  CPX #$01                                  ; $1E8361 |
  BNE code_1E8368                           ; $1E8363 |
  JSR code_1E85AE                           ; $1E8365 |
code_1E8368:
  JMP code_1E8644                           ; $1E8368 |

code_1E836B:
  JSR code_1E85AE                           ; $1E836B |
  LDA #$FF                                  ; $1E836E |
  STA $077C,x                               ; $1E8370 |
  DEY                                       ; $1E8373 |
  TXA                                       ; $1E8374 |
  BNE code_1E837F                           ; $1E8375 |
  STA $C3                                   ; $1E8377 |
  TYA                                       ; $1E8379 |
  EOR #$0F                                  ; $1E837A |
  JMP code_1E8636                           ; $1E837C |

code_1E837F:
  TYA                                       ; $1E837F |
  CLC                                       ; $1E8380 |
  ADC $D2                                   ; $1E8381 |
  JMP code_1E85DE                           ; $1E8383 |

code_1E8386:
  LDY $D0                                   ; $1E8386 |
  LDA $D1                                   ; $1E8388 |
  INC $D0                                   ; $1E838A |
  BNE code_1E8390                           ; $1E838C |
  INC $D1                                   ; $1E838E |
code_1E8390:
  JMP code_1E803A                           ; $1E8390 |

code_1E8393:
  TXA                                       ; $1E8393 |
  ORA #$28                                  ; $1E8394 |
  TAX                                       ; $1E8396 |
  LDA $0728,x                               ; $1E8397 |
  ORA $072C,x                               ; $1E839A |
  BEQ code_1E83CC                           ; $1E839D |
  LDA $0738,x                               ; $1E839F |
  BEQ code_1E83CD                           ; $1E83A2 |
  LDY $0700,x                               ; $1E83A4 |
  BEQ code_1E83AF                           ; $1E83A7 |
  JSR code_1E8684                           ; $1E83A9 |
  JSR code_1E86BA                           ; $1E83AC |
code_1E83AF:
  LDA $0740,x                               ; $1E83AF |
  SEC                                       ; $1E83B2 |
  SBC $C7                                   ; $1E83B3 |
  STA $0740,x                               ; $1E83B5 |
  BEQ code_1E83BC                           ; $1E83B8 |
  BCS code_1E83BF                           ; $1E83BA |
code_1E83BC:
  JSR code_1E85A3                           ; $1E83BC |
code_1E83BF:
  LDA $0738,x                               ; $1E83BF |
  SEC                                       ; $1E83C2 |
  SBC $C7                                   ; $1E83C3 |
  STA $0738,x                               ; $1E83C5 |
  BEQ code_1E83CD                           ; $1E83C8 |
  BCC code_1E83CD                           ; $1E83CA |
code_1E83CC:
  RTS                                       ; $1E83CC |

code_1E83CD:
  JSR code_1E8592                           ; $1E83CD |
  CMP #$20                                  ; $1E83D0 |
  BCS code_1E83DA                           ; $1E83D2 |
  JSR code_1E8497                           ; $1E83D4 |
  JMP code_1E83CD                           ; $1E83D7 |

code_1E83DA:
  PHA                                       ; $1E83DA |
  ROL                                       ; $1E83DB |
  ROL                                       ; $1E83DC |
  ROL                                       ; $1E83DD |
  ROL                                       ; $1E83DE |
  AND #$07                                  ; $1E83DF |
  TAY                                       ; $1E83E1 |
  DEY                                       ; $1E83E2 |
  LDA $0730,x                               ; $1E83E3 |
  ASL                                       ; $1E83E6 |
  ASL                                       ; $1E83E7 |
  BPL code_1E83EF                           ; $1E83E8 |
  LDA $8915,y                               ; $1E83EA |
  BNE code_1E8406                           ; $1E83ED |
code_1E83EF:
  ASL                                       ; $1E83EF |
  ASL                                       ; $1E83F0 |
  LDA $891C,y                               ; $1E83F1 |
  BCC code_1E8406                           ; $1E83F4 |
  STA $C3                                   ; $1E83F6 |
  LDA $0730,x                               ; $1E83F8 |
  AND #$EF                                  ; $1E83FB |
  STA $0730,x                               ; $1E83FD |
  LDA $C3                                   ; $1E8400 |
  LSR                                       ; $1E8402 |
  CLC                                       ; $1E8403 |
  ADC $C3                                   ; $1E8404 |
code_1E8406:
  CLC                                       ; $1E8406 |
  ADC $0738,x                               ; $1E8407 |
  STA $0738,x                               ; $1E840A |
  TAY                                       ; $1E840D |
  PLA                                       ; $1E840E |
  AND #$1F                                  ; $1E840F |
  BNE code_1E8419                           ; $1E8411 |
  JSR code_1E85A3                           ; $1E8413 |
  JMP code_1E8491                           ; $1E8416 |

code_1E8419:
  PHA                                       ; $1E8419 |
  STY $C4                                   ; $1E841A |
  LDA $073C,x                               ; $1E841C |
  STA $C1                                   ; $1E841F |
  JSR code_1E8006                           ; $1E8421 |
  LDA $C1                                   ; $1E8424 |
  BNE code_1E842A                           ; $1E8426 |
  LDA #$01                                  ; $1E8428 |
code_1E842A:
  STA $0740,x                               ; $1E842A |
  PLA                                       ; $1E842D |
  TAY                                       ; $1E842E |
  DEY                                       ; $1E842F |
  LDA $0730,x                               ; $1E8430 |
  BPL code_1E8440                           ; $1E8433 |
  LDA $0718,x                               ; $1E8435 |
  BNE code_1E8454                           ; $1E8438 |
  JSR code_1E8644                           ; $1E843A |
  JMP code_1E847E                           ; $1E843D |

code_1E8440:
  JSR code_1E85AE                           ; $1E8440 |
  LDA $CF                                   ; $1E8443 |
  BMI code_1E8454                           ; $1E8445 |
  STY $C3                                   ; $1E8447 |
  TXA                                       ; $1E8449 |
  AND #$03                                  ; $1E844A |
  TAY                                       ; $1E844C |
  LDA #$FF                                  ; $1E844D |
  STA $077C,y                               ; $1E844F |
  LDY $C3                                   ; $1E8452 |
code_1E8454:
  TXA                                       ; $1E8454 |
  AND #$03                                  ; $1E8455 |
  BNE code_1E8466                           ; $1E8457 |
  STA $C3                                   ; $1E8459 |
  TYA                                       ; $1E845B |
  AND #$0F                                  ; $1E845C |
  EOR #$0F                                  ; $1E845E |
  JSR code_1E8636                           ; $1E8460 |
  JMP code_1E847E                           ; $1E8463 |

code_1E8466:
  STY $C3                                   ; $1E8466 |
  LDA $0730,x                               ; $1E8468 |
  AND #$0F                                  ; $1E846B |
  TAY                                       ; $1E846D |
  LDA $8923,y                               ; $1E846E |
  CLC                                       ; $1E8471 |
  ADC $C3                                   ; $1E8472 |
  CLC                                       ; $1E8474 |
  ADC $CB                                   ; $1E8475 |
  CLC                                       ; $1E8477 |
  ADC $0734,x                               ; $1E8478 |
  JSR code_1E85DE                           ; $1E847B |
code_1E847E:
  LDA $0730,x                               ; $1E847E |
  TAY                                       ; $1E8481 |
  AND #$40                                  ; $1E8482 |
  ASL                                       ; $1E8484 |
  STA $C4                                   ; $1E8485 |
  TYA                                       ; $1E8487 |
  AND #$7F                                  ; $1E8488 |
  ORA $C4                                   ; $1E848A |
  STA $0730,x                               ; $1E848C |
  BPL code_1E8496                           ; $1E848F |
code_1E8491:
  LDA #$FF                                  ; $1E8491 |
  STA $0740,x                               ; $1E8493 |
code_1E8496:
  RTS                                       ; $1E8496 |

code_1E8497:
  CMP #$04                                  ; $1E8497 |
  BCC code_1E84A4                           ; $1E8499 |
  STA $C4                                   ; $1E849B |
  JSR code_1E8592                           ; $1E849D |
  STA $C3                                   ; $1E84A0 |
  LDA $C4                                   ; $1E84A2 |
code_1E84A4:
  JSR code_1E8023                           ; $1E84A4 |

  dw $84D9                                  ; $1E84A7 |
  dw $84DD                                  ; $1E84A9 |
  dw $84E1                                  ; $1E84AB |
  dw $84E8                                  ; $1E84AD |
  dw $8575                                  ; $1E84AF |
  dw $84F1                                  ; $1E84B1 |
  dw $84FF                                  ; $1E84B3 |
  dw $865A                                  ; $1E84B5 |
  dw $866F                                  ; $1E84B7 |
  dw $8505                                  ; $1E84B9 |
  dw $8510                                  ; $1E84BB |
  dw $8515                                  ; $1E84BD |
  dw $86A1                                  ; $1E84BF |
  dw $86A7                                  ; $1E84C1 |
  dw $851B                                  ; $1E84C3 |
  dw $851F                                  ; $1E84C5 |
  dw $8523                                  ; $1E84C7 |
  dw $8527                                  ; $1E84C9 |
  dw $851B                                  ; $1E84CB |
  dw $851F                                  ; $1E84CD |
  dw $8523                                  ; $1E84CF |
  dw $8527                                  ; $1E84D1 |
  dw $855A                                  ; $1E84D3 |
  dw $8580                                  ; $1E84D5 |
  dw $86AD                                  ; $1E84D7 |

  LDA #$20                                  ; $1E84D9 |
  BNE code_1E84EA                           ; $1E84DB |
  LDA #$40                                  ; $1E84DD |
  BNE code_1E84EA                           ; $1E84DF |
  LDA #$10                                  ; $1E84E1 |
  ORA $0730,x                               ; $1E84E3 |
  BNE code_1E84ED                           ; $1E84E6 |
  LDA #$08                                  ; $1E84E8 |
code_1E84EA:
  EOR $0730,x                               ; $1E84EA |
code_1E84ED:
  STA $0730,x                               ; $1E84ED |
  RTS                                       ; $1E84F0 |

  LDA #$00                                  ; $1E84F1 |
  STA $C8                                   ; $1E84F3 |
  JSR code_1E8592                           ; $1E84F5 |
  LDY $C3                                   ; $1E84F8 |
  STA $CA                                   ; $1E84FA |
  STY $C9                                   ; $1E84FC |
  RTS                                       ; $1E84FE |

  LDA $C3                                   ; $1E84FF |
  STA $073C,x                               ; $1E8501 |
  RTS                                       ; $1E8504 |

  LDA $0730,x                               ; $1E8505 |
  AND #$F8                                  ; $1E8508 |
  ORA $C3                                   ; $1E850A |
  STA $0730,x                               ; $1E850C |
  RTS                                       ; $1E850F |

  LDA $C3                                   ; $1E8510 |
  STA $CB                                   ; $1E8512 |
  RTS                                       ; $1E8514 |

  LDA $C3                                   ; $1E8515 |
  STA $0734,x                               ; $1E8517 |
  RTS                                       ; $1E851A |

  LDA #$00                                  ; $1E851B |
  BEQ code_1E8529                           ; $1E851D |
  LDA #$04                                  ; $1E851F |
  BNE code_1E8529                           ; $1E8521 |
  LDA #$08                                  ; $1E8523 |
  BNE code_1E8529                           ; $1E8525 |
  LDA #$0C                                  ; $1E8527 |
code_1E8529:
  STA $C2                                   ; $1E8529 |
  TXA                                       ; $1E852B |
  CLC                                       ; $1E852C |
  ADC $C2                                   ; $1E852D |
  TAY                                       ; $1E852F |
  LDA $C4                                   ; $1E8530 |
  CMP #$12                                  ; $1E8532 |
  BCS code_1E8547                           ; $1E8534 |
  LDA $0744,y                               ; $1E8536 |
  SEC                                       ; $1E8539 |
  SBC #$01                                  ; $1E853A |
  BCS code_1E8540                           ; $1E853C |
  LDA $C3                                   ; $1E853E |
code_1E8540:
  STA $0744,y                               ; $1E8540 |
  BEQ code_1E8566                           ; $1E8543 |
  BNE code_1E8555                           ; $1E8545 |
code_1E8547:
  LDA $0744,y                               ; $1E8547 |
  SEC                                       ; $1E854A |
  SBC #$01                                  ; $1E854B |
  BNE code_1E8566                           ; $1E854D |
  STA $0744,y                               ; $1E854F |
  JSR code_1E8575                           ; $1E8552 |
code_1E8555:
  JSR code_1E8592                           ; $1E8555 |
  STA $C3                                   ; $1E8558 |
  JSR code_1E8592                           ; $1E855A |
  STA $0728,x                               ; $1E855D |
  LDA $C3                                   ; $1E8560 |
  STA $072C,x                               ; $1E8562 |
  RTS                                       ; $1E8565 |

code_1E8566:
  LDA #$02                                  ; $1E8566 |
  CLC                                       ; $1E8568 |
  ADC $0728,x                               ; $1E8569 |
  STA $0728,x                               ; $1E856C |
  BCC code_1E8574                           ; $1E856F |
  INC $072C,x                               ; $1E8571 |
code_1E8574:
  RTS                                       ; $1E8574 |

code_1E8575:
  LDA $0730,x                               ; $1E8575 |
  AND #$97                                  ; $1E8578 |
  ORA $C3                                   ; $1E857A |
  STA $0730,x                               ; $1E857C |
  RTS                                       ; $1E857F |

  PLA                                       ; $1E8580 |
  PLA                                       ; $1E8581 |
  LDA #$00                                  ; $1E8582 |
  STA $0728,x                               ; $1E8584 |
  STA $072C,x                               ; $1E8587 |
  LDA $CF                                   ; $1E858A |
  BMI code_1E8591                           ; $1E858C |
  JMP code_1E80D8                           ; $1E858E |

code_1E8591:
  RTS                                       ; $1E8591 |

code_1E8592:
  LDY $0728,x                               ; $1E8592 |
  LDA $072C,x                               ; $1E8595 |
  INC $0728,x                               ; $1E8598 |
  BNE code_1E85A0                           ; $1E859B |
  INC $072C,x                               ; $1E859D |
code_1E85A0:
  JMP code_1E803A                           ; $1E85A0 |

code_1E85A3:
  LDA $0704,x                               ; $1E85A3 |
  AND #$F8                                  ; $1E85A6 |
  ORA #$03                                  ; $1E85A8 |
  STA $0704,x                               ; $1E85AA |
  RTS                                       ; $1E85AD |

code_1E85AE:
  TYA                                       ; $1E85AE |
  PHA                                       ; $1E85AF |
  LDY #$00                                  ; $1E85B0 |
  LDA $0704,x                               ; $1E85B2 |
  AND #$F8                                  ; $1E85B5 |
  STA $0704,x                               ; $1E85B7 |
  CPX #$29                                  ; $1E85BA |
  BEQ code_1E85D0                           ; $1E85BC |
  CPX #$01                                  ; $1E85BE |
  BNE code_1E85D7                           ; $1E85C0 |
  LDA $D3                                   ; $1E85C2 |
  STA $C1                                   ; $1E85C4 |
  LDA $070C,x                               ; $1E85C6 |
  STA $C4                                   ; $1E85C9 |
  JSR code_1E8006                           ; $1E85CB |
  LDY $C1                                   ; $1E85CE |
code_1E85D0:
  INY                                       ; $1E85D0 |
  INC $0704,x                               ; $1E85D1 |
  INC $0704,x                               ; $1E85D4 |
code_1E85D7:
  TYA                                       ; $1E85D7 |
  STA $0710,x                               ; $1E85D8 |
  PLA                                       ; $1E85DB |
  TAY                                       ; $1E85DC |
  RTS                                       ; $1E85DD |

code_1E85DE:
  CMP #$60                                  ; $1E85DE |
  BCC code_1E85E4                           ; $1E85E0 |
  LDA #$5F                                  ; $1E85E2 |
code_1E85E4:
  STA $C3                                   ; $1E85E4 |
  INC $C3                                   ; $1E85E6 |
  CPX #$28                                  ; $1E85E8 |
  BCC code_1E862A                           ; $1E85EA |
  LDA $071C,x                               ; $1E85EC |
  BEQ code_1E861D                           ; $1E85EF |
  CMP $C3                                   ; $1E85F1 |
  BNE code_1E85FC                           ; $1E85F3 |
  LDA $0730,x                               ; $1E85F5 |
  BPL code_1E861D                           ; $1E85F8 |
  BMI code_1E8644                           ; $1E85FA |
code_1E85FC:
  LDA $0718,x                               ; $1E85FC |
  BEQ code_1E861D                           ; $1E85FF |
  BCS code_1E8607                           ; $1E8601 |
  ORA #$80                                  ; $1E8603 |
  BNE code_1E8609                           ; $1E8605 |
code_1E8607:
  AND #$7F                                  ; $1E8607 |
code_1E8609:
  STA $0718,x                               ; $1E8609 |
  LDA $0704,x                               ; $1E860C |
  ORA #$20                                  ; $1E860F |
  STA $0704,x                               ; $1E8611 |
  LDA $C3                                   ; $1E8614 |
  LDY $071C,x                               ; $1E8616 |
  STY $C3                                   ; $1E8619 |
  BNE code_1E8627                           ; $1E861B |
code_1E861D:
  LDA $0704,x                               ; $1E861D |
  AND #$DF                                  ; $1E8620 |
  STA $0704,x                               ; $1E8622 |
  LDA $C3                                   ; $1E8625 |
code_1E8627:
  STA $071C,x                               ; $1E8627 |
code_1E862A:
  ASL $C3                                   ; $1E862A |
  LDY $C3                                   ; $1E862C |
  LDA $8959,y                               ; $1E862E |
  STA $C3                                   ; $1E8631 |
  LDA $895A,y                               ; $1E8633 |
code_1E8636:
  STA $0724,x                               ; $1E8636 |
  LDA $C3                                   ; $1E8639 |
  STA $0720,x                               ; $1E863B |
  LDY #$04                                  ; $1E863E |
  LDA ($C5),y                               ; $1E8640 |
  BMI code_1E864C                           ; $1E8642 |
code_1E8644:
  LDA $0704,x                               ; $1E8644 |
  AND #$08                                  ; $1E8647 |
  BNE code_1E864C                           ; $1E8649 |
  RTS                                       ; $1E864B |

code_1E864C:
  LDA #$00                                  ; $1E864C |
  STA $0708,x                               ; $1E864E |
  LDA $0704,x                               ; $1E8651 |
  AND #$37                                  ; $1E8654 |
  STA $0704,x                               ; $1E8656 |
  RTS                                       ; $1E8659 |

  CPX #$01                                  ; $1E865A |
  BNE code_1E8662                           ; $1E865C |
  LDA $C3                                   ; $1E865E |
  BNE code_1E866B                           ; $1E8660 |
code_1E8662:
  LDA $070C,x                               ; $1E8662 |
  AND #$C0                                  ; $1E8665 |
  ORA $C3                                   ; $1E8667 |
  ORA #$30                                  ; $1E8669 |
code_1E866B:
  STA $070C,x                               ; $1E866B |
  RTS                                       ; $1E866E |

  INC $C3                                   ; $1E866F |
  LDA $C3                                   ; $1E8671 |
  CMP $0700,x                               ; $1E8673 |
  BEQ code_1E86A0                           ; $1E8676 |
  STA $0700,x                               ; $1E8678 |
  TAY                                       ; $1E867B |
  LDA $0704,x                               ; $1E867C |
  ORA #$08                                  ; $1E867F |
  STA $0704,x                               ; $1E8681 |
code_1E8684:
  DEY                                       ; $1E8684 |
  LDA #$00                                  ; $1E8685 |
  STA $C3                                   ; $1E8687 |
  TYA                                       ; $1E8689 |
  ASL                                       ; $1E868A |
  ROL $C3                                   ; $1E868B |
  ASL                                       ; $1E868D |
  ROL $C3                                   ; $1E868E |
  ASL                                       ; $1E8690 |
  ROL $C3                                   ; $1E8691 |
  CLC                                       ; $1E8693 |
  ADC $8A42                                 ; $1E8694 |
  STA $C5                                   ; $1E8697 |
  LDA $C3                                   ; $1E8699 |
  ADC $8A41                                 ; $1E869B |
  STA $C6                                   ; $1E869E |
code_1E86A0:
  RTS                                       ; $1E86A0 |

  LDA $C3                                   ; $1E86A1 |
  STA $0714,x                               ; $1E86A3 |
  RTS                                       ; $1E86A6 |

  LDA $C3                                   ; $1E86A7 |
  STA $0718,x                               ; $1E86A9 |
  RTS                                       ; $1E86AC |

  LDA $070C,x                               ; $1E86AD |
  AND #$0F                                  ; $1E86B0 |
  ORA $C3                                   ; $1E86B2 |
  ORA #$30                                  ; $1E86B4 |
  STA $070C,x                               ; $1E86B6 |
  RTS                                       ; $1E86B9 |

code_1E86BA:
  LDA $0710,x                               ; $1E86BA |
  STA $C4                                   ; $1E86BD |
  LDA $0704,x                               ; $1E86BF |
  AND #$07                                  ; $1E86C2 |
  JSR code_1E8023                           ; $1E86C4 |

  dw $86D1                                  ; $1E86C7 |
  dw $86E6                                  ; $1E86C9 |
  dw $8720                                  ; $1E86CB |
  dw $8702                                  ; $1E86CD |
  dw $8914                                  ; $1E86CF |

  LDY #$00                                  ; $1E86D1 |
  LDA ($C5),y                               ; $1E86D3 |
  TAY                                       ; $1E86D5 |
  LDA $C4                                   ; $1E86D6 |
  CLC                                       ; $1E86D8 |
  ADC $8933,y                               ; $1E86D9 |
  BCS code_1E86E2                           ; $1E86DC |
  CMP #$F0                                  ; $1E86DE |
  BCC code_1E871D                           ; $1E86E0 |
code_1E86E2:
  LDA #$F0                                  ; $1E86E2 |
  BNE code_1E871A                           ; $1E86E4 |
  LDY #$01                                  ; $1E86E6 |
  LDA ($C5),y                               ; $1E86E8 |
  BEQ code_1E86FB                           ; $1E86EA |
  TAY                                       ; $1E86EC |
  LDA $C4                                   ; $1E86ED |
  SEC                                       ; $1E86EF |
  SBC $8933,y                               ; $1E86F0 |
  BCC code_1E86FB                           ; $1E86F3 |
  LDY #$02                                  ; $1E86F5 |
  CMP ($C5),y                               ; $1E86F7 |
  BCS code_1E871D                           ; $1E86F9 |
code_1E86FB:
  LDY #$02                                  ; $1E86FB |
  LDA ($C5),y                               ; $1E86FD |
  JMP code_1E871A                           ; $1E86FF |

  TXA                                       ; $1E8702 |
  AND #$03                                  ; $1E8703 |
  CMP #$01                                  ; $1E8705 |
  BEQ code_1E8718                           ; $1E8707 |
  LDY #$03                                  ; $1E8709 |
  LDA ($C5),y                               ; $1E870B |
  BEQ code_1E8720                           ; $1E870D |
  TAY                                       ; $1E870F |
  LDA $C4                                   ; $1E8710 |
  SEC                                       ; $1E8712 |
  SBC $8933,y                               ; $1E8713 |
  BCS code_1E871D                           ; $1E8716 |
code_1E8718:
  LDA #$00                                  ; $1E8718 |
code_1E871A:
  INC $0704,x                               ; $1E871A |
code_1E871D:
  STA $0710,x                               ; $1E871D |
code_1E8720:
  CPX #$28                                  ; $1E8720 |
  BCC code_1E8737                           ; $1E8722 |
  LDA $CF                                   ; $1E8724 |
  BPL code_1E872B                           ; $1E8726 |
  JMP code_1E88A0                           ; $1E8728 |

code_1E872B:
  LDA $CD                                   ; $1E872B |
  LDY $CC                                   ; $1E872D |
  BMI code_1E8733                           ; $1E872F |
  EOR #$FF                                  ; $1E8731 |
code_1E8733:
  CMP #$FF                                  ; $1E8733 |
  BNE code_1E8740                           ; $1E8735 |
code_1E8737:
  TXA                                       ; $1E8737 |
  AND #$03                                  ; $1E8738 |
  CMP #$01                                  ; $1E873A |
  BNE code_1E8760                           ; $1E873C |
  BEQ code_1E8752                           ; $1E873E |
code_1E8740:
  CPX #$29                                  ; $1E8740 |
  BNE code_1E875B                           ; $1E8742 |
  STA $C4                                   ; $1E8744 |
  LDA $0740,x                               ; $1E8746 |
  STA $C1                                   ; $1E8749 |
  JSR code_1E8006                           ; $1E874B |
  LDA $C1                                   ; $1E874E |
  BEQ code_1E87AA                           ; $1E8750 |
code_1E8752:
  LDA $0710,x                               ; $1E8752 |
  BEQ code_1E87AA                           ; $1E8755 |
  LDA #$FF                                  ; $1E8757 |
  BNE code_1E87AA                           ; $1E8759 |
code_1E875B:
  CMP $0710,x                               ; $1E875B |
  BCC code_1E8763                           ; $1E875E |
code_1E8760:
  LDA $0710,x                               ; $1E8760 |
code_1E8763:
  LSR                                       ; $1E8763 |
  LSR                                       ; $1E8764 |
  LSR                                       ; $1E8765 |
  LSR                                       ; $1E8766 |
  EOR #$0F                                  ; $1E8767 |
  STA $C3                                   ; $1E8769 |
  LDY #$06                                  ; $1E876B |
  LDA ($C5),y                               ; $1E876D |
  CMP #$05                                  ; $1E876F |
  BCC code_1E8797                           ; $1E8771 |
  STA $C4                                   ; $1E8773 |
  LDY $0708,x                               ; $1E8775 |
  LDA $0704,x                               ; $1E8778 |
  ASL                                       ; $1E877B |
  ASL                                       ; $1E877C |
  TYA                                       ; $1E877D |
  BCC code_1E8782                           ; $1E877E |
  EOR #$FF                                  ; $1E8780 |
code_1E8782:
  BEQ code_1E8797                           ; $1E8782 |
  STA $C1                                   ; $1E8784 |
  JSR code_1E8006                           ; $1E8786 |
  LDA $C1                                   ; $1E8789 |
  LSR                                       ; $1E878B |
  LSR                                       ; $1E878C |
  CMP #$10                                  ; $1E878D |
  BCS code_1E87A5                           ; $1E878F |
  CMP $C3                                   ; $1E8791 |
  BCC code_1E8797                           ; $1E8793 |
  STA $C3                                   ; $1E8795 |
code_1E8797:
  LDA #$10                                  ; $1E8797 |
  STA $C4                                   ; $1E8799 |
  LDA $070C,x                               ; $1E879B |
  SEC                                       ; $1E879E |
  SBC $C3                                   ; $1E879F |
  BIT $C4                                   ; $1E87A1 |
  BNE code_1E87AA                           ; $1E87A3 |
code_1E87A5:
  LDA $070C,x                               ; $1E87A5 |
  AND #$F0                                  ; $1E87A8 |
code_1E87AA:
  LDY #$00                                  ; $1E87AA |
  JSR code_1E80EC                           ; $1E87AC |
  TXA                                       ; $1E87AF |
  AND #$03                                  ; $1E87B0 |
  TAY                                       ; $1E87B2 |
  LDA $077C,y                               ; $1E87B3 |
  BMI code_1E880C                           ; $1E87B6 |
  LDY #$05                                  ; $1E87B8 |
  LDA ($C5),y                               ; $1E87BA |
  BEQ code_1E880C                           ; $1E87BC |
  STA $C4                                   ; $1E87BE |
  LDY $0708,x                               ; $1E87C0 |
  LDA $0704,x                               ; $1E87C3 |
  ASL                                       ; $1E87C6 |
  ASL                                       ; $1E87C7 |
  TYA                                       ; $1E87C8 |
  BCC code_1E87CD                           ; $1E87C9 |
  EOR #$FF                                  ; $1E87CB |
code_1E87CD:
  BEQ code_1E880C                           ; $1E87CD |
  STA $C1                                   ; $1E87CF |
  JSR code_1E8006                           ; $1E87D1 |
  LDA $C1                                   ; $1E87D4 |
  LSR                                       ; $1E87D6 |
  ROR $C2                                   ; $1E87D7 |
  LSR                                       ; $1E87D9 |
  ROR $C2                                   ; $1E87DA |
  LSR                                       ; $1E87DC |
  ROR $C2                                   ; $1E87DD |
  LSR                                       ; $1E87DF |
  ROR $C2                                   ; $1E87E0 |
  TAY                                       ; $1E87E2 |
  ORA $C2                                   ; $1E87E3 |
  BEQ code_1E880C                           ; $1E87E5 |
  LDA $0704,x                               ; $1E87E7 |
  BMI code_1E87FA                           ; $1E87EA |
  CLC                                       ; $1E87EC |
  LDA $C2                                   ; $1E87ED |
  ADC $0720,x                               ; $1E87EF |
  STA $C2                                   ; $1E87F2 |
  TYA                                       ; $1E87F4 |
  ADC $0724,x                               ; $1E87F5 |
  BNE code_1E8809                           ; $1E87F8 |
code_1E87FA:
  SEC                                       ; $1E87FA |
  LDA $0720,x                               ; $1E87FB |
  SBC $C2                                   ; $1E87FE |
  STA $C2                                   ; $1E8800 |
  LDA $0724,x                               ; $1E8802 |
  STY $C1                                   ; $1E8805 |
  SBC $C1                                   ; $1E8807 |
code_1E8809:
  TAY                                       ; $1E8809 |
  BNE code_1E8814                           ; $1E880A |
code_1E880C:
  LDA $0720,x                               ; $1E880C |
  STA $C2                                   ; $1E880F |
  LDY $0724,x                               ; $1E8811 |
code_1E8814:
  CPX #$28                                  ; $1E8814 |
  BCS code_1E8835                           ; $1E8816 |
  LDA $D6                                   ; $1E8818 |
  BPL code_1E8835                           ; $1E881A |
  LDA $D8                                   ; $1E881C |
  BEQ code_1E8835                           ; $1E881E |
  STA $C4                                   ; $1E8820 |
  STY $C1                                   ; $1E8822 |
  LDA $C2                                   ; $1E8824 |
  PHA                                       ; $1E8826 |
  JSR code_1E8006                           ; $1E8827 |
  PLA                                       ; $1E882A |
  CLC                                       ; $1E882B |
  ADC $C2                                   ; $1E882C |
  STA $C2                                   ; $1E882E |
  LDA #$00                                  ; $1E8830 |
  ADC $C1                                   ; $1E8832 |
  TAY                                       ; $1E8834 |
code_1E8835:
  TXA                                       ; $1E8835 |
  AND #$03                                  ; $1E8836 |
  BNE code_1E8849                           ; $1E8838 |
  TYA                                       ; $1E883A |
  AND #$0F                                  ; $1E883B |
  LDY #$07                                  ; $1E883D |
  ORA ($C5),y                               ; $1E883F |
  STA $C2                                   ; $1E8841 |
  LDA #$00                                  ; $1E8843 |
  STA $C1                                   ; $1E8845 |
  BEQ code_1E8884                           ; $1E8847 |
code_1E8849:
  TYA                                       ; $1E8849 |
  LDY #$08                                  ; $1E884A |
code_1E884C:
  DEY                                       ; $1E884C |
  CMP $8953,y                               ; $1E884D |
  BCC code_1E884C                           ; $1E8850 |
  STA $C1                                   ; $1E8852 |
  TYA                                       ; $1E8854 |
  CLC                                       ; $1E8855 |
  ADC $C1                                   ; $1E8856 |
  TAY                                       ; $1E8858 |
  AND #$07                                  ; $1E8859 |
  CLC                                       ; $1E885B |
  ADC #$07                                  ; $1E885C |
  STA $C1                                   ; $1E885E |
  TYA                                       ; $1E8860 |
  AND #$38                                  ; $1E8861 |
  EOR #$38                                  ; $1E8863 |
  BEQ code_1E8870                           ; $1E8865 |
code_1E8867:
  LSR $C1                                   ; $1E8867 |
  ROR $C2                                   ; $1E8869 |
  SEC                                       ; $1E886B |
  SBC #$08                                  ; $1E886C |
  BNE code_1E8867                           ; $1E886E |
code_1E8870:
  LDY #$00                                  ; $1E8870 |
  LDA $0714,x                               ; $1E8872 |
  BEQ code_1E8884                           ; $1E8875 |
  BPL code_1E887A                           ; $1E8877 |
  DEY                                       ; $1E8879 |
code_1E887A:
  CLC                                       ; $1E887A |
  ADC $C2                                   ; $1E887B |
  STA $C2                                   ; $1E887D |
  TYA                                       ; $1E887F |
  ADC $C1                                   ; $1E8880 |
  STA $C1                                   ; $1E8882 |
code_1E8884:
  LDY #$02                                  ; $1E8884 |
  LDA $C2                                   ; $1E8886 |
  JSR code_1E80EC                           ; $1E8888 |
  TXA                                       ; $1E888B |
  AND #$03                                  ; $1E888C |
  TAY                                       ; $1E888E |
  LDA $C1                                   ; $1E888F |
  CMP $077C,y                               ; $1E8891 |
  BEQ code_1E88A0                           ; $1E8894 |
  STA $077C,y                               ; $1E8896 |
  ORA #$08                                  ; $1E8899 |
  LDY #$03                                  ; $1E889B |
  JSR code_1E80EC                           ; $1E889D |
code_1E88A0:
  LDA $0704,x                               ; $1E88A0 |
  AND #$20                                  ; $1E88A3 |
  BEQ code_1E88FA                           ; $1E88A5 |
  LDA $0718,x                               ; $1E88A7 |
  BEQ code_1E88F2                           ; $1E88AA |
  LDY #$00                                  ; $1E88AC |
  ASL                                       ; $1E88AE |
  PHP                                       ; $1E88AF |
  BCC code_1E88B8                           ; $1E88B0 |
  EOR #$FF                                  ; $1E88B2 |
  CLC                                       ; $1E88B4 |
  ADC #$01                                  ; $1E88B5 |
  DEY                                       ; $1E88B7 |
code_1E88B8:
  CLC                                       ; $1E88B8 |
  ADC $0720,x                               ; $1E88B9 |
  STA $0720,x                               ; $1E88BC |
  TYA                                       ; $1E88BF |
  ADC $0724,x                               ; $1E88C0 |
  STA $0724,x                               ; $1E88C3 |
  LDA $071C,x                               ; $1E88C6 |
  ASL                                       ; $1E88C9 |
  TAY                                       ; $1E88CA |
  SEC                                       ; $1E88CB |
  LDA $0720,x                               ; $1E88CC |
  SBC $8959,y                               ; $1E88CF |
  LDA $0724,x                               ; $1E88D2 |
  AND #$3F                                  ; $1E88D5 |
  SBC $895A,y                               ; $1E88D7 |
  LDA #$FF                                  ; $1E88DA |
  ADC #$00                                  ; $1E88DC |
  PLP                                       ; $1E88DE |
  ADC #$00                                  ; $1E88DF |
  BNE code_1E88FA                           ; $1E88E1 |
  TXA                                       ; $1E88E3 |
  BEQ code_1E88FA                           ; $1E88E4 |
  LDA $8959,y                               ; $1E88E6 |
  STA $0720,x                               ; $1E88E9 |
  LDA $895A,y                               ; $1E88EC |
  STA $0724,x                               ; $1E88EF |
code_1E88F2:
  LDA $0704,x                               ; $1E88F2 |
  AND #$DF                                  ; $1E88F5 |
  STA $0704,x                               ; $1E88F7 |
code_1E88FA:
  LDY #$04                                  ; $1E88FA |
  LDA ($C5),y                               ; $1E88FC |
  AND #$7F                                  ; $1E88FE |
  BEQ code_1E8914                           ; $1E8900 |
  CLC                                       ; $1E8902 |
  ADC $0708,x                               ; $1E8903 |
  STA $0708,x                               ; $1E8906 |
  BCC code_1E8914                           ; $1E8909 |
  LDA $0704,x                               ; $1E890B |
  CLC                                       ; $1E890E |
  ADC #$40                                  ; $1E890F |
  STA $0704,x                               ; $1E8911 |
code_1E8914:
  RTS                                       ; $1E8914 |

  db $02, $04, $08, $10, $20, $40, $80, $03 ; $1E8915 |
  db $06, $0C, $18, $30, $60, $C0, $00, $0C ; $1E891D |
  db $18, $24, $30, $3C, $48, $54, $18, $24 ; $1E8925 |
  db $30, $3C, $48, $54, $60, $6C, $00, $01 ; $1E892D |
  db $02, $03, $04, $05, $06, $07, $08, $09 ; $1E8935 |
  db $0A, $0B, $0C, $0E, $0F, $10, $12, $13 ; $1E893D |
  db $14, $16, $18, $1B, $1E, $23, $28, $30 ; $1E8945 |
  db $3C, $50, $7E, $7F, $FE, $FF, $00, $07 ; $1E894D |
  db $0E, $15, $1C, $23, $2A, $31, $5C, $37 ; $1E8955 |
  db $9C, $36, $E7, $35, $3C, $35, $9B, $34 ; $1E895D |
  db $02, $34, $72, $33, $EA, $32, $6A, $32 ; $1E8965 |
  db $F1, $31, $80, $31, $14, $31, $5C, $30 ; $1E896D |
  db $9C, $2F, $E7, $2E, $3C, $2E, $9B, $2D ; $1E8975 |
  db $02, $2D, $72, $2C, $EA, $2B, $6A, $2B ; $1E897D |
  db $F1, $2A, $80, $2A, $14, $2A, $5C, $29 ; $1E8985 |
  db $9C, $28, $E7, $27, $3C, $27, $9B, $26 ; $1E898D |
  db $02, $26, $72, $25, $EA, $24, $6A, $24 ; $1E8995 |
  db $F1, $23, $80, $23, $14, $23, $5C, $22 ; $1E899D |
  db $9C, $21, $E7, $20, $3C, $20, $9B, $1F ; $1E89A5 |
  db $02, $1F, $72, $1E, $EA, $1D, $6A, $1D ; $1E89AD |
  db $F1, $1C, $80, $1C, $14, $1C, $5C, $1B ; $1E89B5 |
  db $9C, $1A, $E7, $19, $3C, $19, $9B, $18 ; $1E89BD |
  db $02, $18, $72, $17, $EA, $16, $6A, $16 ; $1E89C5 |
  db $F1, $15, $80, $15, $14, $15, $5C, $14 ; $1E89CD |
  db $9C, $13, $E7, $12, $3C, $12, $9B, $11 ; $1E89D5 |
  db $02, $11, $72, $10, $EA, $0F, $6A, $0F ; $1E89DD |
  db $F1, $0E, $80, $0E, $14, $0E, $5C, $0D ; $1E89E5 |
  db $9C, $0C, $E7, $0B, $3C, $0B, $9B, $0A ; $1E89ED |
  db $02, $0A, $72, $09, $EA, $08, $6A, $08 ; $1E89F5 |
  db $F1, $07, $80, $07, $14, $07, $5C, $06 ; $1E89FD |
  db $9C, $05, $E7, $04, $3C, $04, $9B, $03 ; $1E8A05 |
  db $02, $03, $72, $02, $EA, $01, $6A, $01 ; $1E8A0D |
  db $F1, $00, $80, $00, $14, $00, $40, $0C ; $1E8A15 |
  db $24, $00, $00, $27, $40, $0C, $27, $00 ; $1E8A1D |
  db $00, $29, $40, $0C, $29, $00, $0C, $29 ; $1E8A25 |
  db $40, $0C, $29, $00, $0C, $2A, $40, $18 ; $1E8A2D |
  db $2A, $00, $00, $2B, $40, $0C, $2B, $00 ; $1E8A35 |
  db $0C, $F9, $00, $47, $8A, $D1, $8D, $09 ; $1E8A3D |
  db $90, $73, $93, $D9, $97, $7D, $9B, $98 ; $1E8A45 |
  db $9F, $AB, $A3, $A8, $A7, $8A, $AB, $07 ; $1E8A4D |
  db $AD, $F5, $B1, $51, $B3, $1B, $B8, $22 ; $1E8A55 |
  db $B8, $96, $B9, $44, $B9, $B0, $BA, $BA ; $1E8A5D |
  db $BB, $85, $BC, $BD, $C0, $59, $C3, $C5 ; $1E8A65 |
  db $C4, $89, $C8, $19, $CD, $36, $CD, $4A ; $1E8A6D |
  db $CD, $54, $CD, $6F, $CD, $8B, $CD, $9B ; $1E8A75 |
  db $CD, $BD, $CD, $D0, $CD, $E2, $CE, $48 ; $1E8A7D |
  db $CE, $54, $CE, $60, $CE, $9E, $CE, $B9 ; $1E8A85 |
  db $CE, $D7, $CF, $1B, $CF, $2B, $CF, $38 ; $1E8A8D |
  db $CF, $56, $CF, $71, $CF, $94, $CF, $A3 ; $1E8A95 |
  db $CF, $CA, $CF, $DA, $CF, $E5, $D0, $27 ; $1E8A9D |
  db $D0, $44, $D0, $64, $D0, $72, $D0, $89 ; $1E8AA5 |
  db $D0, $99, $D0, $AB, $D0, $BD, $D0, $D9 ; $1E8AAD |
  db $D0, $F1, $D1, $07, $D1, $CB, $D2, $BA ; $1E8AB5 |
  db $D3, $A9, $D3, $C6, $D3, $D1, $D4, $1F ; $1E8ABD |
  db $D4, $38, $D4, $91, $D5, $21, $00, $00 ; $1E8AC5 |
  db $D6, $A3, $D8, $0D, $1F, $1F, $F0, $1F ; $1E8ACD |
  db $00, $00, $00, $00, $1F, $15, $20, $01 ; $1E8AD5 |
  db $80, $00, $00, $00, $1F, $1E, $C0, $07 ; $1E8ADD |
  db $80, $00, $00, $80, $1F, $19, $C0, $09 ; $1E8AE5 |
  db $E4, $05, $00, $00, $1F, $1F, $F0, $1F ; $1E8AED |
  db $94, $7F, $00, $00, $1A, $1F, $E0, $1C ; $1E8AF5 |
  db $80, $00, $00, $00, $1F, $11, $50, $01 ; $1E8AFD |
  db $E2, $04, $00, $00, $1F, $1A, $D0, $17 ; $1E8B05 |
  db $92, $00, $26, $00, $1F, $18, $B0, $06 ; $1E8B0D |
  db $80, $00, $00, $00, $1F, $1F, $F0, $11 ; $1E8B15 |
  db $80, $00, $00, $00, $1F, $1F, $F0, $1F ; $1E8B1D |
  db $FF, $03, $39, $00, $1F, $1C, $90, $03 ; $1E8B25 |
  db $FF, $04, $25, $00, $1F, $00, $B0, $09 ; $1E8B2D |
  db $E3, $02, $00, $00, $1F, $1D, $C0, $11 ; $1E8B35 |
  db $80, $00, $00, $00, $1F, $1F, $F0, $1F ; $1E8B3D |
  db $94, $7F, $00, $00, $18, $1B, $B0, $0E ; $1E8B45 |
  db $84, $7F, $00, $00, $1F, $00, $B0, $07 ; $1E8B4D |
  db $E3, $02, $00, $00, $1B, $01, $A0, $16 ; $1E8B55 |
  db $80, $00, $00, $00, $1F, $0C, $00, $02 ; $1E8B5D |
  db $A3, $00, $09, $00, $1F, $1A, $D0, $0D ; $1E8B65 |
  db $DC, $06, $00, $00, $1F, $17, $D0, $05 ; $1E8B6D |
  db $98, $02, $2C, $00, $1F, $1F, $F0, $13 ; $1E8B75 |
  db $D0, $03, $7F, $00, $19, $13, $D0, $18 ; $1E8B7D |
  db $80, $00, $00, $00, $1F, $00, $C0, $18 ; $1E8B85 |
  db $80, $00, $00, $00, $1F, $01, $20, $09 ; $1E8B8D |
  db $99, $10, $00, $00, $1A, $1F, $D0, $01 ; $1E8B95 |
  db $80, $00, $00, $00, $1F, $16, $C0, $14 ; $1E8B9D |
  db $AB, $02, $00, $00, $1F, $1B, $80, $05 ; $1E8BA5 |
  db $C9, $00, $38, $00, $1F, $1F, $B0, $09 ; $1E8BAD |
  db $00, $00, $00, $00, $1F, $1D, $B0, $0C ; $1E8BB5 |
  db $80, $00, $00, $00, $1F, $19, $A0, $02 ; $1E8BBD |
  db $80, $00, $00, $00, $17, $02, $E0, $0F ; $1E8BC5 |
  db $80, $00, $00, $00, $1E, $18, $C0, $12 ; $1E8BCD |
  db $00, $00, $00, $00, $1F, $07, $20, $16 ; $1E8BD5 |
  db $82, $14, $00, $00, $1F, $19, $B0, $04 ; $1E8BDD |
  db $E4, $05, $00, $00, $1F, $1E, $A0, $0A ; $1E8BE5 |
  db $AA, $00, $4B, $00, $1F, $18, $90, $05 ; $1E8BED |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1E8BF5 |
  db $80, $00, $00, $00, $1A, $1F, $D0, $07 ; $1E8BFD |
  db $80, $00, $00, $00, $00, $00, $00, $00 ; $1E8C05 |
  db $80, $00, $00, $00, $1F, $1F, $F0, $1F ; $1E8C0D |
  db $00, $00, $00, $00, $1F, $1F, $F0, $1F ; $1E8C15 |
  db $FF, $02, $00, $00, $1F, $1F, $F0, $1F ; $1E8C1D |
  db $92, $7F, $00, $00, $1F, $1C, $C0, $15 ; $1E8C25 |
  db $80, $00, $00, $00, $1F, $1F, $F0, $1F ; $1E8C2D |
  db $FF, $4C, $00, $00, $1F, $1F, $F0, $1F ; $1E8C35 |
  db $99, $7F, $00, $00, $1D, $1F, $F0, $1F ; $1E8C3D |
  db $80, $00, $00, $00, $1F, $1F, $F0, $1F ; $1E8C45 |
  db $B7, $27, $00, $00, $1F, $1F, $F0, $0F ; $1E8C4D |
  db $D7, $09, $7F, $00, $1F, $1F, $F0, $1F ; $1E8C55 |
  db $A6, $7F, $00, $80, $1F, $1F, $F0, $1F ; $1E8C5D |
  db $80, $00, $00, $80, $1F, $01, $F0, $05 ; $1E8C65 |
  db $E1, $0D, $00, $00, $1F, $1F, $F0, $1F ; $1E8C6D |
  db $C1, $04, $7F, $00, $1C, $13, $10, $1F ; $1E8C75 |
  db $FF, $7F, $00, $00, $1F, $01, $00, $0F ; $1E8C7D |
  db $E3, $7F, $00, $00, $1E, $10, $F0, $0E ; $1E8C85 |
  db $80, $00, $00, $00, $1F, $1F, $F0, $1F ; $1E8C8D |
  db $FF, $7F, $00, $00, $1F, $17, $00, $16 ; $1E8C95 |
  db $80, $00, $00, $00, $1F, $1F, $F0, $16 ; $1E8C9D |
  db $80, $00, $00, $00, $1F, $01, $F0, $05 ; $1E8CA5 |
  db $E1, $0D, $00, $00, $1F, $1A, $A0, $07 ; $1E8CAD |
  db $CF, $36, $00, $80, $1D, $04, $20, $12 ; $1E8CB5 |
  db $00, $00, $00, $00, $11, $12, $30, $04 ; $1E8CBD |
  db $00, $00, $00, $00, $1F, $1F, $F0, $1F ; $1E8CC5 |
  db $D0, $16, $00, $00, $1C, $1F, $F0, $07 ; $1E8CCD |
  db $FF, $7F, $36, $00, $19, $0B, $F0, $12 ; $1E8CD5 |
  db $FF, $7F, $36, $80, $1F, $12, $40, $1E ; $1E8CDD |
  db $FF, $7F, $51, $80, $17, $1F, $F0, $02 ; $1E8CE5 |
  db $FF, $7F, $5A, $00, $12, $02, $A0, $05 ; $1E8CED |
  db $00, $00, $00, $00, $1F, $1F, $F0, $1F ; $1E8CF5 |
  db $FF, $19, $00, $00, $17, $14, $F0, $07 ; $1E8CFD |
  db $CA, $54, $00, $00, $00, $8D, $12, $8D ; $1E8D05 |
  db $DC, $8E, $8F, $8F, $B0, $05, $01, $EB ; $1E8D0D |
  db $0A, $FD, $06, $C8, $E0, $E0, $04, $00 ; $1E8D15 |
  db $04, $00, $09, $02, $07, $0C, $06, $AA ; $1E8D1D |
  db $08, $02, $18, $C0, $BB, $7B, $7D, $60 ; $1E8D25 |
  db $01, $BE, $01, $7E, $03, $A8, $65, $63 ; $1E8D2D |
  db $60, $02, $81, $71, $6F, $60, $AD, $02 ; $1E8D35 |
  db $80, $03, $77, $79, $60, $01, $BB, $01 ; $1E8D3D |
  db $7B, $12, $00, $8D, $63, $79, $7B, $60 ; $1E8D45 |
  db $BD, $79, $7B, $60, $7E, $60, $7D, $60 ; $1E8D4D |
  db $79, $7B, $60, $03, $6F, $60, $8F, $6D ; $1E8D55 |
  db $71, $60, $0E, $01, $8D, $1D, $7E, $7D ; $1E8D5D |
  db $60, $03, $A8, $69, $6A, $60, $6A, $80 ; $1E8D65 |
  db $6D, $60, $6E, $AF, $A0, $0B, $00, $06 ; $1E8D6D |
  db $00, $06, $DC, $18, $C0, $07, $0E, $08 ; $1E8D75 |
  db $07, $A0, $03, $B1, $02, $8C, $02, $91 ; $1E8D7D |
  db $9A, $02, $B8, $B6, $B5, $96, $02, $B8 ; $1E8D85 |
  db $01, $D1, $01, $91, $07, $0C, $06, $C8 ; $1E8D8D |
  db $08, $03, $B1, $B3, $B4, $B6, $07, $0E ; $1E8D95 |
  db $06, $DC, $08, $07, $94, $80, $B4, $02 ; $1E8D9D |
  db $8F, $02, $94, $9B, $02, $BA, $02, $B8 ; $1E8DA5 |
  db $B6, $D9, $B6, $BD, $02, $B8, $80, $B8 ; $1E8DAD |
  db $BA, $BB, $80, $02, $94, $02, $9B, $7B ; $1E8DB5 |
  db $60, $7D, $60, $BD, $80, $02, $96, $02 ; $1E8DBD |
  db $9A, $7B, $60, $7D, $60, $02, $01, $DD ; $1E8DC5 |
  db $01, $9D, $98, $02, $01, $03, $CC, $01 ; $1E8DCD |
  db $AC, $0B, $02, $16, $8D, $1B, $17, $0C ; $1E8DD5 |
  db $FF, $E0, $E0, $04, $00, $04, $00, $07 ; $1E8DDD |
  db $0A, $09, $01, $06, $FF, $18, $80, $08 ; $1E8DE5 |
  db $02, $FE, $02, $BD, $18, $40, $03, $74 ; $1E8DED |
  db $72, $60, $B1, $02, $80, $18, $80, $C3 ; $1E8DF5 |
  db $C5, $12, $08, $8E, $12, $86, $A0, $86 ; $1E8DFD |
  db $60, $18, $40, $72, $60, $92, $71, $74 ; $1E8E05 |
  db $60, $0E, $01, $8D, $E2, $18, $40, $66 ; $1E8E0D |
  db $66, $02, $80, $67, $60, $67, $A0, $60 ; $1E8E15 |
  db $02, $87, $0B, $00, $08, $05, $18, $80 ; $1E8E1D |
  db $02, $01, $C9, $01, $69, $02, $89, $02 ; $1E8E25 |
  db $01, $C7, $01, $67, $02, $87, $04, $00 ; $1E8E2D |
  db $18, $40, $80, $7D, $60, $7D, $02, $9F ; $1E8E35 |
  db $0E, $01, $8E, $33, $03, $A8, $AA, $AC ; $1E8E3D |
  db $AD, $18, $80, $02, $01, $CF, $01, $6F ; $1E8E45 |
  db $02, $8F, $02, $01, $CE, $01, $6E, $02 ; $1E8E4D |
  db $8E, $02, $01, $CA, $01, $6A, $02, $8D ; $1E8E55 |
  db $60, $02, $8C, $6C, $60, $6E, $80, $02 ; $1E8E5D |
  db $8C, $6C, $60, $6E, $60, $02, $01, $CC ; $1E8E65 |
  db $01, $6C, $02, $8C, $02, $01, $CE, $01 ; $1E8E6D |
  db $6E, $02, $8E, $02, $01, $CC, $01, $6C ; $1E8E75 |
  db $02, $91, $18, $40, $02, $93, $73, $A0 ; $1E8E7D |
  db $73, $73, $02, $A0, $0B, $02, $16, $8D ; $1E8E85 |
  db $E0, $17, $06, $C8, $08, $00, $09, $02 ; $1E8E8D |
  db $A0, $08, $04, $03, $6D, $6D, $6D, $6D ; $1E8E95 |
  db $68, $68, $68, $68, $63, $63, $60, $63 ; $1E8E9D |
  db $08, $00, $09, $03, $60, $61, $63, $60 ; $1E8EA5 |
  db $03, $6D, $6E, $60, $74, $73, $6F, $6D ; $1E8EAD |
  db $6F, $6A, $76, $7A, $7B, $04, $00, $04 ; $1E8EB5 |
  db $00, $06, $DC, $6F, $60, $6F, $60, $96 ; $1E8EBD |
  db $6F, $6F, $60, $6F, $60, $6F, $96, $8F ; $1E8EC5 |
  db $6D, $60, $6D, $60, $94, $6D, $6D, $60 ; $1E8ECD |
  db $6D, $60, $6D, $94, $8D, $6B, $60, $6B ; $1E8ED5 |
  db $60, $92, $6B, $6B, $60, $6C, $60, $6D ; $1E8EDD |
  db $94, $91, $12, $00, $8E, $FE, $72, $60 ; $1E8EE5 |
  db $76, $60, $94, $71, $72, $60, $6F, $60 ; $1E8EED |
  db $6F, $60, $6F, $6F, $6D, $0E, $01, $8E ; $1E8EF5 |
  db $BC, $6F, $60, $72, $80, $71, $60, $71 ; $1E8EFD |
  db $B3, $08, $04, $9D, $60, $75, $04, $00 ; $1E8F05 |
  db $0B, $00, $08, $00, $02, $91, $71, $60 ; $1E8F0D |
  db $71, $80, $71, $7B, $7D, $60, $7B, $7D ; $1E8F15 |
  db $60, $6F, $0E, $01, $8F, $0B, $04, $00 ; $1E8F1D |
  db $8D, $60, $6D, $60, $02, $8F, $0E, $02 ; $1E8F25 |
  db $8F, $23, $68, $71, $70, $71, $73, $94 ; $1E8F2D |
  db $68, $02, $94, $74, $60, $74, $80, $74 ; $1E8F35 |
  db $7E, $03, $68, $60, $66, $68, $60, $03 ; $1E8F3D |
  db $72, $02, $93, $73, $60, $73, $80, $73 ; $1E8F45 |
  db $7D, $7F, $60, $7D, $7F, $60, $73, $02 ; $1E8F4D |
  db $8A, $6A, $60, $6A, $80, $6A, $74, $76 ; $1E8F55 |
  db $60, $74, $76, $60, $6A, $02, $91, $71 ; $1E8F5D |
  db $60, $71, $80, $71, $7B, $7D, $60, $7B ; $1E8F65 |
  db $7D, $60, $6F, $02, $94, $74, $60, $74 ; $1E8F6D |
  db $80, $74, $7E, $03, $68, $60, $66, $68 ; $1E8F75 |
  db $60, $03, $72, $02, $96, $76, $60, $76 ; $1E8F7D |
  db $80, $76, $03, $68, $6A, $60, $68, $6A ; $1E8F85 |
  db $60, $03, $76, $02, $8C, $6C, $60, $6C ; $1E8F8D |
  db $80, $6C, $76, $78, $60, $76, $78, $60 ; $1E8F95 |
  db $6C, $02, $8C, $78, $A0, $60, $77, $78 ; $1E8F9D |
  db $6C, $6D, $6E, $6F, $71, $0B, $02, $16 ; $1E8FA5 |
  db $8E, $BA, $17, $07, $09, $08, $01, $E0 ; $1E8FAD |
  db $06, $B4, $AA, $AA, $AA, $06, $C8, $68 ; $1E8FB5 |
  db $68, $68, $68, $04, $00, $04, $00, $04 ; $1E8FBD |
  db $00, $06, $C8, $07, $06, $6D, $6D, $6D ; $1E8FC5 |
  db $6D, $06, $64, $07, $0A, $8D, $04, $00 ; $1E8FCD |
  db $06, $96, $07, $07, $6D, $07, $08, $68 ; $1E8FD5 |
  db $0E, $02, $8F, $D3, $06, $64, $07, $0A ; $1E8FDD |
  db $86, $06, $C8, $6D, $6D, $0F, $02, $8F ; $1E8FE5 |
  db $C4, $04, $00, $66, $6D, $0E, $03, $8F ; $1E8FED |
  db $EE, $6D, $6D, $6D, $65, $6D, $6B, $6A ; $1E8FF5 |
  db $68, $10, $01, $8F, $C2, $04, $00, $06 ; $1E8FFD |
  db $A0, $07, $06, $6D, $6D, $6D, $6D, $07 ; $1E9005 |
  db $09, $6D, $60, $07, $08, $66, $6A, $07 ; $1E900D |
  db $09, $6D, $07, $08, $60, $6A, $60, $07 ; $1E9015 |
  db $09, $6D, $07, $08, $60, $6A, $6D, $0E ; $1E901D |
  db $02, $90, $02, $04, $00, $67, $6D, $0E ; $1E9025 |
  db $03, $90, $28, $66, $69, $60, $6D, $66 ; $1E902D |
  db $6A, $68, $66, $04, $00, $06, $A0, $07 ; $1E9035 |
  db $06, $6D, $6D, $6D, $6D, $07, $09, $6D ; $1E903D |
  db $60, $07, $08, $66, $6A, $07, $09, $6D ; $1E9045 |
  db $07, $08, $60, $6A, $60, $07, $09, $6D ; $1E904D |
  db $07, $08, $60, $6A, $6D, $0E, $06, $90 ; $1E9055 |
  db $38, $67, $6D, $60, $6D, $66, $6B, $66 ; $1E905D |
  db $6D, $66, $6D, $04, $00, $67, $0E, $05 ; $1E9065 |
  db $90, $68, $16, $8F, $C0, $17, $00, $90 ; $1E906D |
  db $7C, $91, $63, $92, $4C, $93, $0D, $0A ; $1E9075 |
  db $03, $18, $40, $06, $C8, $07, $0B, $08 ; $1E907D |
  db $03, $09, $01, $7E, $03, $69, $60, $02 ; $1E9085 |
  db $8B, $6D, $60, $05, $01, $55, $B0, $B1 ; $1E908D |
  db $05, $01, $EB, $B2, $02, $C0, $08, $08 ; $1E9095 |
  db $06, $96, $A0, $72, $72, $60, $02, $90 ; $1E909D |
  db $6D, $60, $6D, $60, $90, $72, $70, $60 ; $1E90A5 |
  db $72, $02, $C0, $E0, $04, $00, $04, $00 ; $1E90AD |
  db $06, $AA, $09, $02, $08, $08, $02, $BE ; $1E90B5 |
  db $7C, $7E, $03, $69, $60, $68, $60, $66 ; $1E90BD |
  db $60, $64, $60, $61, $64, $60, $66, $02 ; $1E90C5 |
  db $C0, $02, $AB, $69, $6B, $6D, $60, $6B ; $1E90CD |
  db $60, $69, $60, $64, $60, $12, $08, $90 ; $1E90D5 |
  db $E7, $66, $64, $80, $C6, $A0, $0E, $01 ; $1E90DD |
  db $90, $B3, $66, $64, $A0, $C6, $80, $04 ; $1E90E5 |
  db $08, $09, $01, $06, $B4, $08, $0B, $02 ; $1E90ED |
  db $AD, $6B, $6D, $70, $60, $02, $B0, $12 ; $1E90F5 |
  db $08, $91, $10, $51, $01, $B2, $02, $01 ; $1E90FD |
  db $72, $70, $72, $75, $60, $02, $B2, $0E ; $1E9105 |
  db $01, $90, $EC, $92, $70, $72, $75, $60 ; $1E910D |
  db $B2, $80, $02, $92, $72, $02, $B2, $8D ; $1E9115 |
  db $00, $8B, $89, $88, $86, $88, $89, $00 ; $1E911D |
  db $CC, $CB, $89, $02, $C0, $07, $0C, $18 ; $1E9125 |
  db $C0, $08, $0C, $06, $C8, $90, $72, $70 ; $1E912D |
  db $6D, $6B, $6D, $64, $60, $86, $89, $68 ; $1E9135 |
  db $60, $64, $66, $60, $6B, $6D, $6D, $70 ; $1E913D |
  db $6B, $6D, $6D, $70, $80, $02, $92, $70 ; $1E9145 |
  db $72, $60, $75, $70, $60, $72, $80, $02 ; $1E914D |
  db $98, $77, $74, $70, $6D, $90, $2D, $2C ; $1E9155 |
  db $2A, $28, $16, $90, $B1, $17, $0C, $01 ; $1E915D |
  db $18, $40, $06, $FF, $09, $01, $07, $0C ; $1E9165 |
  db $08, $0A, $03, $AD, $AB, $A8, $A4, $06 ; $1E916D |
  db $C8, $08, $08, $B2, $02, $C0, $06, $96 ; $1E9175 |
  db $07, $0B, $A0, $69, $69, $60, $02, $88 ; $1E917D |
  db $64, $60, $64, $60, $88, $69, $68, $60 ; $1E9185 |
  db $69, $80, $80, $80, $80, $80, $80, $E0 ; $1E918D |
  db $04, $08, $04, $08, $06, $AA, $09, $01 ; $1E9195 |
  db $08, $08, $02, $A9, $68, $69, $6D, $60 ; $1E919D |
  db $6B, $60, $69, $60, $68, $60, $64, $68 ; $1E91A5 |
  db $60, $69, $02, $C0, $02, $AF, $6D, $6F ; $1E91AD |
  db $70, $60, $6F, $60, $6D, $60, $68, $60 ; $1E91B5 |
  db $12, $08, $91, $CA, $69, $68, $80, $C9 ; $1E91BD |
  db $A0, $0E, $01, $91, $97, $69, $68, $A0 ; $1E91C5 |
  db $CA, $80, $02, $40, $04, $08, $07, $0A ; $1E91CD |
  db $06, $B4, $08, $0B, $02, $AD, $6B, $6D ; $1E91D5 |
  db $70, $60, $02, $B0, $12, $08, $91, $F5 ; $1E91DD |
  db $51, $01, $B2, $02, $01, $72, $70, $72 ; $1E91E5 |
  db $75, $60, $02, $B2, $0E, $01, $91, $D1 ; $1E91ED |
  db $92, $70, $72, $75, $60, $B2, $80, $02 ; $1E91F5 |
  db $92, $72, $02, $B2, $8D, $00, $8B, $89 ; $1E91FD |
  db $88, $86, $88, $89, $00, $CC, $CB, $69 ; $1E9205 |
  db $80, $C0, $80, $20, $07, $0C, $09, $00 ; $1E920D |
  db $06, $C8, $18, $C0, $08, $0C, $90, $72 ; $1E9215 |
  db $70, $6D, $6B, $6D, $64, $60, $86, $89 ; $1E921D |
  db $68, $60, $64, $66, $60, $6B, $6D, $6D ; $1E9225 |
  db $70, $6B, $6D, $6D, $70, $80, $02, $92 ; $1E922D |
  db $70, $72, $60, $75, $70, $60, $72, $80 ; $1E9235 |
  db $02, $98, $77, $74, $70, $6D, $90, $2D ; $1E923D |
  db $2C, $2A, $28, $16, $91, $95, $17, $0B ; $1E9245 |
  db $FD, $0B, $00, $06, $DC, $09, $03, $08 ; $1E924D |
  db $04, $02, $C0, $7D, $7D, $74, $74, $04 ; $1E9255 |
  db $00, $0B, $00, $09, $03, $08, $00, $86 ; $1E925D |
  db $6A, $66, $6B, $66, $60, $8C, $8C, $6C ; $1E9265 |
  db $6D, $61, $62, $61, $0E, $03, $92, $5C ; $1E926D |
  db $04, $00, $09, $03, $08, $00, $04, $00 ; $1E9275 |
  db $04, $00, $86, $6A, $66, $6B, $66, $60 ; $1E927D |
  db $8C, $8C, $6C, $6D, $61, $62, $61, $0E ; $1E9285 |
  db $01, $92, $7D, $88, $6B, $68, $6D, $68 ; $1E928D |
  db $60, $8E, $8E, $6D, $6B, $63, $64, $65 ; $1E9295 |
  db $6B, $69, $68, $64, $61, $64, $66, $68 ; $1E929D |
  db $60, $A6, $61, $61, $61, $0F, $01, $92 ; $1E92A5 |
  db $7B, $06, $DC, $04, $00, $02, $81, $68 ; $1E92AD |
  db $80, $8B, $80, $02, $AC, $02, $86, $69 ; $1E92B5 |
  db $80, $8C, $80, $12, $00, $92, $CA, $02 ; $1E92BD |
  db $AD, $0E, $01, $92, $B0, $02, $A4, $C6 ; $1E92C5 |
  db $C5, $C4, $C3, $86, $6A, $66, $6B, $66 ; $1E92CD |
  db $60, $8C, $8C, $6C, $6D, $63, $64, $65 ; $1E92D5 |
  db $92, $02, $C0, $80, $09, $02, $8D, $6D ; $1E92DD |
  db $6D, $08, $04, $99, $08, $00, $6D, $6D ; $1E92E5 |
  db $90, $70, $70, $08, $04, $99, $08, $00 ; $1E92ED |
  db $70, $70, $93, $73, $73, $08, $04, $99 ; $1E92F5 |
  db $08, $00, $73, $73, $08, $04, $79, $79 ; $1E92FD |
  db $99, $79, $79, $99, $16, $92, $75, $17 ; $1E9305 |
  db $06, $C8, $07, $07, $08, $02, $AD, $AD ; $1E930D |
  db $AD, $08, $01, $66, $60, $66, $66, $04 ; $1E9315 |
  db $00, $6C, $07, $06, $6D, $6D, $6C, $07 ; $1E931D |
  db $09, $66, $6C, $07, $06, $6D, $6D, $6D ; $1E9325 |
  db $6D, $6D, $6D, $12, $00, $93, $3E, $07 ; $1E932D |
  db $09, $66, $6C, $6C, $6C, $0E, $03, $93 ; $1E9335 |
  db $1C, $6D, $07, $09, $66, $07, $06, $6D ; $1E933D |
  db $6D, $04, $00, $04, $00, $04, $00, $08 ; $1E9345 |
  db $01, $06, $B4, $07, $06, $6C, $6D, $6D ; $1E934D |
  db $6D, $07, $09, $66, $6C, $07, $06, $6D ; $1E9355 |
  db $6D, $6D, $6D, $6C, $6D, $07, $09, $66 ; $1E935D |
  db $07, $06, $6D, $6D, $6D, $0E, $02, $93 ; $1E9365 |
  db $4A, $04, $00, $07, $08, $8D, $07, $07 ; $1E936D |
  db $6D, $6D, $0E, $02, $93, $6E, $6D, $07 ; $1E9375 |
  db $09, $66, $07, $06, $6D, $07, $09, $66 ; $1E937D |
  db $0F, $01, $93, $48, $04, $00, $04, $00 ; $1E9385 |
  db $07, $08, $8D, $07, $07, $6D, $6D, $0E ; $1E938D |
  db $05, $93, $8B, $6C, $6D, $6D, $6D, $07 ; $1E9395 |
  db $09, $66, $07, $08, $6D, $6D, $6D, $0F ; $1E939D |
  db $01, $93, $89, $04, $00, $06, $96, $07 ; $1E93A5 |
  db $06, $6C, $6D, $6D, $6D, $07, $09, $66 ; $1E93AD |
  db $07, $06, $6D, $6D, $6D, $12, $00, $93 ; $1E93B5 |
  db $CA, $6C, $6D, $6D, $6D, $66, $6D, $6D ; $1E93BD |
  db $6D, $0E, $05, $93, $A8, $07, $07, $08 ; $1E93C5 |
  db $02, $8D, $6D, $6D, $6D, $6D, $6D, $6D ; $1E93CD |
  db $16, $93, $46, $17, $00, $93, $E2, $94 ; $1E93D5 |
  db $B2, $95, $8F, $96, $7F, $18, $40, $05 ; $1E93DD |
  db $02, $2E, $06, $C8, $07, $0B, $08, $00 ; $1E93E5 |
  db $09, $02, $08, $09, $04, $08, $A8, $02 ; $1E93ED |
  db $C0, $60, $02, $88, $87, $86, $C5, $A8 ; $1E93F5 |
  db $02, $C0, $09, $01, $74, $72, $6F, $02 ; $1E93FD |
  db $8D, $72, $6F, $6D, $02, $8B, $6F, $6D ; $1E9405 |
  db $6B, $01, $68, $01, $C8, $B2, $02, $93 ; $1E940D |
  db $74, $E0, $68, $66, $68, $6B, $68, $80 ; $1E9415 |
  db $02, $8D, $8B, $68, $66, $80, $A8, $A0 ; $1E941D |
  db $8F, $8D, $68, $66, $80, $88, $C0, $80 ; $1E9425 |
  db $02, $88, $68, $02, $A8, $88, $8B, $88 ; $1E942D |
  db $8C, $88, $66, $68, $60, $88, $C0, $02 ; $1E9435 |
  db $80, $8D, $8B, $8F, $8D, $8B, $88, $66 ; $1E943D |
  db $67, $60, $01, $68, $01, $A8, $02, $C0 ; $1E9445 |
  db $8F, $8D, $90, $6F, $6D, $80, $8B, $88 ; $1E944D |
  db $86, $66, $67, $60, $02, $01, $C8, $01 ; $1E9455 |
  db $68, $C0, $60, $6F, $6F, $6F, $6F, $6F ; $1E945D |
  db $6F, $6F, $6F, $01, $B0, $01, $70, $8D ; $1E9465 |
  db $92, $90, $8F, $8D, $6E, $01, $AF, $01 ; $1E946D |
  db $6F, $8B, $90, $8F, $8D, $8B, $6C, $01 ; $1E9475 |
  db $AD, $01, $6D, $8B, $8F, $8D, $8B, $86 ; $1E947D |
  db $C0, $60, $6F, $6F, $6F, $6F, $6F, $6F ; $1E9485 |
  db $6F, $6F, $01, $B0, $01, $70, $8D, $92 ; $1E948D |
  db $90, $8F, $8D, $6E, $01, $AF, $01, $6F ; $1E9495 |
  db $8B, $90, $8F, $8D, $8B, $6C, $01, $AD ; $1E949D |
  db $01, $6D, $8B, $8F, $8D, $8B, $86, $C8 ; $1E94A5 |
  db $C0, $16, $93, $F1, $17, $04, $00, $0C ; $1E94AD |
  db $01, $18, $C0, $06, $C8, $07, $0A, $06 ; $1E94B5 |
  db $C8, $09, $02, $08, $02, $BB, $02, $C0 ; $1E94BD |
  db $60, $02, $9B, $9A, $99, $D8, $BB, $02 ; $1E94C5 |
  db $C0, $02, $9B, $6F, $80, $02, $9C, $70 ; $1E94CD |
  db $80, $01, $BD, $08, $03, $01, $DD, $08 ; $1E94D5 |
  db $02, $03, $8A, $80, $01, $8B, $01, $6B ; $1E94DD |
  db $6C, $09, $01, $C0, $A8, $AB, $80, $8B ; $1E94E5 |
  db $80, $8F, $AD, $AA, $80, $88, $66, $67 ; $1E94ED |
  db $80, $01, $88, $02, $01, $A8, $ED, $A8 ; $1E94F5 |
  db $AA, $AB, $AF, $ED, $08, $03, $CF, $08 ; $1E94FD |
  db $02, $B3, $00, $51, $4F, $4D, $4C, $4A ; $1E9505 |
  db $48, $46, $45, $43, $41, $61, $00, $80 ; $1E950D |
  db $03, $97, $7E, $77, $60, $03, $68, $C0 ; $1E9515 |
  db $CF, $08, $03, $D3, $08, $02, $8D, $8B ; $1E951D |
  db $68, $66, $60, $A8, $A0, $60, $6B, $6A ; $1E9525 |
  db $68, $6B, $6A, $68, $6B, $6A, $68, $6B ; $1E952D |
  db $6A, $68, $6F, $68, $6A, $6B, $18, $80 ; $1E9535 |
  db $02, $88, $02, $8D, $90, $92, $90, $6F ; $1E953D |
  db $70, $80, $02, $88, $02, $8B, $8F, $90 ; $1E9545 |
  db $8F, $6E, $6F, $80, $02, $87, $02, $8A ; $1E954D |
  db $8D, $8F, $8D, $6B, $6D, $80, $02, $88 ; $1E9555 |
  db $02, $8A, $8B, $02, $8C, $02, $8D, $8F ; $1E955D |
  db $02, $88, $02, $8D, $90, $92, $90, $6F ; $1E9565 |
  db $70, $80, $02, $88, $02, $8B, $8F, $90 ; $1E956D |
  db $8F, $6E, $6F, $80, $02, $87, $02, $8A ; $1E9575 |
  db $8D, $8F, $8D, $6B, $6D, $80, $88, $8A ; $1E957D |
  db $6B, $6A, $60, $A8, $A0, $60, $16, $94 ; $1E9585 |
  db $B2, $17, $04, $00, $06, $DC, $08, $00 ; $1E958D |
  db $09, $03, $A8, $80, $83, $66, $60, $67 ; $1E9595 |
  db $68, $80, $83, $63, $02, $88, $80, $83 ; $1E959D |
  db $64, $60, $63, $09, $02, $88, $02, $80 ; $1E95A5 |
  db $B4, $80, $8F, $72, $60, $73, $74, $80 ; $1E95AD |
  db $8F, $08, $04, $03, $68, $68, $68, $88 ; $1E95B5 |
  db $60, $68, $68, $68, $88, $60, $60, $60 ; $1E95BD |
  db $88, $60, $61, $60, $60, $68, $68, $68 ; $1E95C5 |
  db $68, $08, $00, $03, $B2, $02, $93, $74 ; $1E95CD |
  db $60, $02, $94, $92, $8F, $72, $60, $73 ; $1E95D5 |
  db $74, $08, $04, $03, $88, $08, $00, $03 ; $1E95DD |
  db $73, $74, $94, $A0, $8F, $72, $60, $73 ; $1E95E5 |
  db $74, $80, $8F, $60, $02, $01, $94, $01 ; $1E95ED |
  db $92, $8F, $72, $60, $73, $74, $A0, $94 ; $1E95F5 |
  db $A0, $8F, $70, $60, $6F, $68, $A0, $94 ; $1E95FD |
  db $97, $99, $77, $9B, $02, $8F, $91, $93 ; $1E9605 |
  db $94, $97, $79, $02, $97, $BB, $A0, $94 ; $1E960D |
  db $97, $99, $77, $9B, $02, $8F, $91, $93 ; $1E9615 |
  db $94, $97, $74, $97, $02, $94, $80, $AF ; $1E961D |
  db $94, $97, $99, $77, $9B, $02, $8F, $91 ; $1E9625 |
  db $93, $94, $97, $96, $72, $74, $C0, $94 ; $1E962D |
  db $97, $96, $72, $74, $C0, $02, $8D, $74 ; $1E9635 |
  db $80, $01, $D9, $01, $99, $02, $8B, $6F ; $1E963D |
  db $80, $01, $D4, $01, $94, $02, $93, $79 ; $1E9645 |
  db $80, $01, $DB, $01, $9B, $02, $94, $02 ; $1E964D |
  db $96, $97, $02, $96, $02, $94, $9B, $02 ; $1E9655 |
  db $8D, $74, $80, $01, $D9, $01, $99, $02 ; $1E965D |
  db $8B, $6F, $80, $01, $D4, $01, $94, $02 ; $1E9665 |
  db $93, $79, $80, $01, $DB, $01, $9B, $94 ; $1E966D |
  db $97, $96, $72, $B4, $A0, $60, $16, $95 ; $1E9675 |
  db $8F, $17, $06, $FA, $08, $01, $04, $00 ; $1E967D |
  db $04, $00, $07, $09, $66, $07, $05, $6D ; $1E9685 |
  db $6D, $6D, $07, $09, $69, $07, $05, $6D ; $1E968D |
  db $6D, $6D, $0E, $05, $96, $85, $07, $0A ; $1E9695 |
  db $8D, $60, $65, $6D, $60, $8D, $60, $65 ; $1E969D |
  db $6D, $60, $07, $05, $6C, $6C, $6C, $6C ; $1E96A5 |
  db $07, $08, $6D, $6D, $6D, $6D, $07, $0B ; $1E96AD |
  db $6D, $6D, $6D, $6D, $65, $60, $6D, $60 ; $1E96B5 |
  db $65, $60, $6D, $65, $04, $00, $06, $78 ; $1E96BD |
  db $07, $0A, $8D, $07, $06, $06, $46, $88 ; $1E96C5 |
  db $0E, $07, $96, $C1, $04, $00, $06, $78 ; $1E96CD |
  db $07, $0A, $8D, $07, $06, $06, $46, $88 ; $1E96D5 |
  db $0E, $13, $96, $D1, $07, $08, $06, $9A ; $1E96DD |
  db $8D, $86, $8D, $86, $8D, $86, $6D, $6D ; $1E96E5 |
  db $6D, $68, $04, $00, $8D, $86, $8D, $86 ; $1E96ED |
  db $8D, $86, $8D, $86, $0E, $01, $96, $EF ; $1E96F5 |
  db $07, $05, $6D, $6D, $6D, $6D, $07, $07 ; $1E96FD |
  db $6D, $6D, $6D, $6D, $07, $09, $6D, $6D ; $1E9705 |
  db $6D, $6D, $07, $09, $6D, $6D, $6D, $6D ; $1E970D |
  db $04, $00, $07, $09, $66, $07, $05, $6D ; $1E9715 |
  db $6D, $6D, $07, $09, $69, $07, $05, $6D ; $1E971D |
  db $6D, $6D, $0E, $05, $97, $15, $06, $64 ; $1E9725 |
  db $07, $09, $88, $07, $05, $6D, $07, $09 ; $1E972D |
  db $88, $07, $05, $6D, $07, $09, $88, $88 ; $1E9735 |
  db $07, $05, $6D, $07, $09, $88, $07, $05 ; $1E973D |
  db $6D, $07, $09, $88, $04, $00, $06, $96 ; $1E9745 |
  db $07, $09, $66, $07, $05, $6D, $6D, $6D ; $1E974D |
  db $07, $09, $69, $07, $05, $6D, $6D, $6D ; $1E9755 |
  db $0E, $05, $97, $49, $07, $06, $6D, $6D ; $1E975D |
  db $6D, $6D, $07, $08, $6D, $6D, $6D, $6D ; $1E9765 |
  db $07, $0A, $6D, $6D, $6D, $6D, $07, $0C ; $1E976D |
  db $6D, $6D, $6D, $6D, $16, $96, $83, $17 ; $1E9775 |
  db $00, $97, $86, $98, $B2, $99, $F9, $9B ; $1E977D |
  db $36, $0A, $FE, $04, $00, $05, $01, $EB ; $1E9785 |
  db $06, $C8, $07, $0C, $08, $02, $09, $01 ; $1E978D |
  db $80, $03, $8D, $6B, $6D, $60, $00, $4F ; $1E9795 |
  db $B0, $00, $8D, $6B, $6C, $60, $6D, $80 ; $1E979D |
  db $91, $70, $71, $60, $00, $55, $B6, $00 ; $1E97A5 |
  db $96, $74, $70, $60, $6D, $6C, $6C, $6B ; $1E97AD |
  db $6C, $60, $6D, $6F, $6D, $6C, $A0, $60 ; $1E97B5 |
  db $6B, $6C, $18, $40, $CD, $02, $8D, $02 ; $1E97BD |
  db $8F, $90, $02, $94, $D2, $60, $8B, $6C ; $1E97C5 |
  db $01, $6D, $AD, $08, $13, $CD, $08, $02 ; $1E97CD |
  db $01, $AD, $02, $90, $02, $92, $93, $02 ; $1E97D5 |
  db $94, $02, $8D, $6B, $6C, $CD, $02, $8D ; $1E97DD |
  db $02, $8F, $90, $D7, $77, $09, $02, $8D ; $1E97E5 |
  db $8B, $68, $66, $67, $01, $C8, $08, $03 ; $1E97ED |
  db $C8, $07, $09, $A8, $07, $08, $A8, $07 ; $1E97F5 |
  db $06, $A8, $07, $03, $01, $A8, $07, $0B ; $1E97FD |
  db $18, $40, $08, $02, $02, $86, $02, $88 ; $1E9805 |
  db $89, $69, $60, $69, $80, $68, $60, $66 ; $1E980D |
  db $02, $84, $02, $86, $88, $68, $60, $68 ; $1E9815 |
  db $80, $66, $60, $64, $63, $64, $63, $C6 ; $1E981D |
  db $64, $66, $64, $69, $60, $01, $C8, $08 ; $1E9825 |
  db $05, $01, $C8, $08, $02, $02, $81, $02 ; $1E982D |
  db $83, $85, $02, $85, $02, $86, $88, $01 ; $1E9835 |
  db $C9, $08, $13, $01, $C9, $08, $02, $02 ; $1E983D |
  db $03, $97, $02, $99, $9B, $02, $9B, $02 ; $1E9845 |
  db $9C, $9E, $01, $03, $C8, $08, $13, $A8 ; $1E984D |
  db $01, $88, $08, $02, $66, $68, $01, $A9 ; $1E9855 |
  db $08, $13, $01, $C9, $08, $02, $A6, $01 ; $1E985D |
  db $AB, $08, $13, $01, $CB, $08, $02, $A8 ; $1E9865 |
  db $01, $AC, $08, $13, $01, $CC, $08, $02 ; $1E986D |
  db $AF, $6D, $6C, $60, $8D, $6B, $6D, $8B ; $1E9875 |
  db $68, $66, $69, $68, $64, $03, $77, $74 ; $1E987D |
  db $75, $77, $60, $02, $01, $D9, $01, $79 ; $1E9885 |
  db $78, $79, $60, $DB, $60, $BE, $01, $DD ; $1E988D |
  db $08, $13, $01, $DD, $08, $02, $60, $7D ; $1E9895 |
  db $7C, $7D, $03, $48, $49, $65, $63, $65 ; $1E989D |
  db $63, $60, $03, $78, $75, $74, $75, $76 ; $1E98A5 |
  db $78, $16, $97, $88, $17, $04, $00, $0C ; $1E98AD |
  db $01, $06, $C8, $07, $0A, $08, $02, $09 ; $1E98B5 |
  db $01, $80, $03, $8D, $6B, $6D, $60, $00 ; $1E98BD |
  db $4F, $B0, $00, $8D, $6B, $6C, $60, $6D ; $1E98C5 |
  db $80, $8D, $6B, $6D, $60, $00, $52, $B2 ; $1E98CD |
  db $00, $90, $6D, $6B, $60, $6D, $74, $74 ; $1E98D5 |
  db $72, $74, $60, $75, $77, $75, $74, $A0 ; $1E98DD |
  db $02, $80, $04, $00, $04, $00, $18, $80 ; $1E98E5 |
  db $79, $7C, $03, $68, $6B, $0E, $03, $98 ; $1E98ED |
  db $E9, $04, $00, $77, $7B, $03, $68, $6B ; $1E98F5 |
  db $0E, $03, $98, $F6, $04, $00, $79, $7C ; $1E98FD |
  db $03, $68, $6B, $0E, $03, $99, $01, $13 ; $1E9905 |
  db $08, $99, $20, $02, $84, $02, $86, $87 ; $1E990D |
  db $02, $88, $02, $81, $03, $77, $78, $0F ; $1E9915 |
  db $01, $98, $E7, $09, $02, $18, $80, $08 ; $1E991D |
  db $05, $68, $03, $74, $7F, $73, $7E, $72 ; $1E9925 |
  db $7D, $71, $7C, $70, $7B, $6F, $79, $6D ; $1E992D |
  db $77, $6B, $09, $01, $08, $02, $02, $03 ; $1E9935 |
  db $89, $02, $8B, $8D, $6D, $60, $6D, $80 ; $1E993D |
  db $6B, $60, $69, $02, $88, $02, $89, $8B ; $1E9945 |
  db $6B, $60, $6B, $80, $69, $60, $68, $07 ; $1E994D |
  db $0C, $A0, $60, $63, $64, $63, $02, $A6 ; $1E9955 |
  db $69, $60, $07, $0A, $01, $D4, $08, $05 ; $1E995D |
  db $01, $D4, $06, $FA, $08, $05, $02, $8D ; $1E9965 |
  db $02, $8C, $8B, $02, $8B, $02, $8A, $88 ; $1E996D |
  db $01, $C6, $08, $13, $01, $C6, $08, $05 ; $1E9975 |
  db $02, $8B, $02, $8A, $89, $02, $89, $02 ; $1E997D |
  db $88, $86, $01, $C4, $01, $C4, $A0, $03 ; $1E9985 |
  db $75, $79, $7E, $03, $69, $66, $69, $6D ; $1E998D |
  db $72, $6D, $72, $95, $A0, $03, $74, $77 ; $1E9995 |
  db $7B, $7D, $03, $68, $6B, $6F, $70, $74 ; $1E999D |
  db $78, $74, $70, $A0, $03, $74, $78, $7B ; $1E99A5 |
  db $03, $68, $66, $68, $6C, $6F, $6C, $6F ; $1E99AD |
  db $72, $74, $08, $02, $61, $63, $60, $84 ; $1E99B5 |
  db $77, $09, $02, $6D, $8B, $68, $66, $69 ; $1E99BD |
  db $68, $64, $03, $77, $74, $06, $C8, $75 ; $1E99C5 |
  db $77, $60, $99, $72, $74, $60, $01, $D5 ; $1E99CD |
  db $B5, $01, $75, $78, $79, $60, $BB, $BE ; $1E99D5 |
  db $01, $DD, $08, $13, $01, $DD, $08, $02 ; $1E99DD |
  db $71, $71, $73, $75, $78, $75, $77, $78 ; $1E99E5 |
  db $60, $78, $78, $76, $74, $72, $70, $6F ; $1E99ED |
  db $16, $98, $B2, $17, $80, $04, $00, $06 ; $1E99F5 |
  db $C8, $08, $00, $09, $03, $8D, $6B, $6D ; $1E99FD |
  db $60, $00, $4F, $B0, $00, $8D, $6B, $6C ; $1E9A05 |
  db $60, $6D, $80, $8D, $6B, $6D, $60, $00 ; $1E9A0D |
  db $52, $B2, $00, $90, $6D, $6B, $60, $6D ; $1E9A15 |
  db $74, $74, $72, $74, $68, $75, $77, $75 ; $1E9A1D |
  db $74, $02, $80, $A8, $04, $00, $6D, $60 ; $1E9A25 |
  db $6D, $60, $90, $6D, $6D, $60, $6D, $60 ; $1E9A2D |
  db $6D, $90, $8D, $6B, $60, $6B, $60, $8F ; $1E9A35 |
  db $6B, $6B, $60, $6B, $60, $6B, $8F, $8B ; $1E9A3D |
  db $6D, $60, $6D, $60, $90, $6D, $6D, $60 ; $1E9A45 |
  db $6D, $60, $70, $92, $94, $12, $00, $9A ; $1E9A4D |
  db $65, $02, $90, $02, $92, $93, $02, $94 ; $1E9A55 |
  db $02, $8D, $6B, $6C, $0E, $01, $9A, $29 ; $1E9A5D |
  db $08, $04, $9D, $9D, $9C, $9C, $91, $91 ; $1E9A65 |
  db $90, $90, $08, $00, $02, $92, $02, $95 ; $1E9A6D |
  db $79, $6D, $7C, $60, $7C, $60, $7B, $79 ; $1E9A75 |
  db $8D, $60, $6D, $70, $74, $77, $77, $76 ; $1E9A7D |
  db $74, $60, $6D, $70, $74, $77, $77, $76 ; $1E9A85 |
  db $74, $06, $FA, $6F, $6F, $60, $6F, $72 ; $1E9A8D |
  db $72, $60, $72, $75, $75, $60, $75, $78 ; $1E9A95 |
  db $78, $60, $78, $04, $00, $06, $E6, $68 ; $1E9A9D |
  db $74, $68, $68, $74, $68, $74, $74, $0E ; $1E9AA5 |
  db $01, $9A, $A0, $02, $8D, $68, $60, $6D ; $1E9AAD |
  db $6D, $6D, $02, $94, $02, $92, $91, $B2 ; $1E9AB5 |
  db $AD, $02, $97, $02, $95, $94, $B2, $AB ; $1E9ABD |
  db $02, $92, $02, $90, $8F, $B0, $A4, $02 ; $1E9AC5 |
  db $90, $02, $8F, $8D, $08, $00, $01, $C9 ; $1E9ACD |
  db $08, $13, $01, $A9, $08, $04, $99, $80 ; $1E9AD5 |
  db $08, $00, $01, $CB, $08, $13, $01, $AB ; $1E9ADD |
  db $08, $04, $99, $80, $08, $00, $01, $CC ; $1E9AE5 |
  db $08, $13, $01, $AC, $08, $04, $99, $80 ; $1E9AED |
  db $E0, $08, $00, $72, $60, $72, $60, $90 ; $1E9AF5 |
  db $72, $72, $60, $72, $60, $72, $90, $92 ; $1E9AFD |
  db $74, $60, $74, $60, $92, $74, $74, $60 ; $1E9B05 |
  db $74, $60, $74, $92, $94, $08, $04, $6D ; $1E9B0D |
  db $6D, $99, $6D, $6D, $99, $60, $56, $56 ; $1E9B15 |
  db $74, $70, $72, $70, $6D, $6B, $94, $94 ; $1E9B1D |
  db $79, $74, $60, $74, $60, $74, $74, $74 ; $1E9B25 |
  db $74, $74, $74, $74, $99, $16, $99, $FA ; $1E9B2D |
  db $17, $04, $00, $06, $C8, $07, $09, $08 ; $1E9B35 |
  db $01, $65, $6D, $6D, $65, $67, $6D, $65 ; $1E9B3D |
  db $67, $6D, $65, $6D, $65, $67, $6D, $6D ; $1E9B45 |
  db $65, $65, $6D, $6D, $65, $67, $6D, $65 ; $1E9B4D |
  db $6D, $6D, $65, $6D, $65, $67, $6D, $6D ; $1E9B55 |
  db $65, $65, $6D, $6D, $65, $67, $6D, $65 ; $1E9B5D |
  db $67, $6D, $65, $6D, $65, $67, $6D, $6D ; $1E9B65 |
  db $65, $04, $00, $65, $6D, $6D, $65, $67 ; $1E9B6D |
  db $6D, $65, $67, $6D, $65, $6D, $65, $67 ; $1E9B75 |
  db $6D, $6D, $65, $65, $6D, $6D, $65, $67 ; $1E9B7D |
  db $6D, $65, $67, $6D, $65, $6D, $65, $67 ; $1E9B85 |
  db $6D, $6D, $65, $0E, $0B, $9B, $6E, $16 ; $1E9B8D |
  db $9B, $36, $17, $00, $9B, $A1, $9C, $AE ; $1E9B95 |
  db $9D, $DA, $9E, $CE, $0A, $FF, $18, $80 ; $1E9B9D |
  db $05, $02, $2E, $06, $8C, $07, $0B, $08 ; $1E9BA5 |
  db $02, $09, $01, $01, $03, $ED, $ED, $08 ; $1E9BAD |
  db $03, $02, $CD, $01, $8D, $8B, $08, $02 ; $1E9BB5 |
  db $02, $CD, $00, $41, $43, $45, $46, $48 ; $1E9BBD |
  db $4A, $4C, $4D, $4F, $51, $52, $09, $02 ; $1E9BC5 |
  db $4D, $04, $00, $04, $00, $0A, $FF, $06 ; $1E9BCD |
  db $6E, $08, $02, $18, $C0, $80, $99, $99 ; $1E9BD5 |
  db $99, $9C, $99, $80, $99, $80, $99, $80 ; $1E9BDD |
  db $9C, $99, $99, $9B, $9C, $12, $00, $9C ; $1E9BE5 |
  db $06, $9C, $9B, $99, $5A, $01, $9B, $02 ; $1E9BED |
  db $01, $7B, $99, $97, $01, $99, $D9, $06 ; $1E9BF5 |
  db $F0, $08, $03, $01, $D9, $0E, $01, $9B ; $1E9BFD |
  db $D0, $80, $9B, $9C, $9B, $00, $BE, $BB ; $1E9C05 |
  db $B7, $06, $96, $00, $01, $D9, $07, $09 ; $1E9C0D |
  db $08, $03, $D9, $07, $07, $01, $D9, $C0 ; $1E9C15 |
  db $E0, $07, $0B, $08, $02, $80, $00, $5F ; $1E9C1D |
  db $03, $A8, $00, $68, $88, $00, $A8, $A8 ; $1E9C25 |
  db $A8, $06, $F0, $00, $01, $C8, $08, $03 ; $1E9C2D |
  db $01, $C8, $08, $02, $06, $8C, $80, $47 ; $1E9C35 |
  db $01, $88, $02, $01, $68, $86, $84, $83 ; $1E9C3D |
  db $A1, $02, $83, $61, $80, $03, $97, $02 ; $1E9C45 |
  db $9C, $7B, $80, $97, $F9, $04, $00, $04 ; $1E9C4D |
  db $00, $0A, $FD, $08, $02, $06, $64, $18 ; $1E9C55 |
  db $C0, $7B, $0D, $00, $7B, $60, $7B, $7E ; $1E9C5D |
  db $60, $03, $6A, $80, $06, $C8, $01, $AF ; $1E9C65 |
  db $08, $03, $02, $01, $8F, $0E, $01, $9C ; $1E9C6D |
  db $54, $13, $08, $9C, $9B, $08, $02, $06 ; $1E9C75 |
  db $64, $65, $65, $60, $65, $A8, $00, $A5 ; $1E9C7D |
  db $A5, $A5, $18, $80, $06, $46, $00, $68 ; $1E9C85 |
  db $66, $65, $63, $66, $65, $63, $61, $06 ; $1E9C8D |
  db $C8, $C3, $0F, $01, $9C, $52, $06, $64 ; $1E9C95 |
  db $71, $71, $60, $71, $B1, $00, $B1, $AF ; $1E9C9D |
  db $AD, $06, $FF, $00, $EF, $16, $9B, $CE ; $1E9CA5 |
  db $17, $0C, $02, $18, $80, $06, $FA, $07 ; $1E9CAD |
  db $0A, $08, $02, $09, $01, $04, $08, $68 ; $1E9CB5 |
  db $0E, $0F, $9C, $BA, $04, $08, $69, $0E ; $1E9CBD |
  db $0F, $9C, $C1, $04, $08, $6B, $0E, $0F ; $1E9CC5 |
  db $9C, $C8, $04, $08, $06, $8C, $6D, $0E ; $1E9CCD |
  db $0B, $9C, $CF, $A0, $04, $00, $04, $00 ; $1E9CD5 |
  db $08, $02, $18, $C0, $06, $6E, $80, $9C ; $1E9CDD |
  db $9C, $9C, $03, $88, $84, $80, $84, $80 ; $1E9CE5 |
  db $84, $80, $88, $84, $84, $86, $88, $12 ; $1E9CED |
  db $08, $9D, $10, $88, $86, $84, $45, $01 ; $1E9CF5 |
  db $86, $02, $01, $66, $84, $83, $01, $85 ; $1E9CFD |
  db $C5, $06, $F0, $08, $03, $01, $C5, $0E ; $1E9D05 |
  db $01, $9C, $DB, $80, $89, $80, $8B, $00 ; $1E9D0D |
  db $A9, $A6, $A3, $07, $0A, $06, $C8, $00 ; $1E9D15 |
  db $01, $C4, $01, $84, $06, $AA, $A6, $87 ; $1E9D1D |
  db $80, $88, $80, $88, $00, $AB, $AB, $A8 ; $1E9D25 |
  db $00, $6D, $6B, $6D, $02, $90, $6D, $0D ; $1E9D2D |
  db $3C, $60, $71, $B2, $0D, $00, $02, $8F ; $1E9D35 |
  db $8D, $02, $8D, $6D, $8D, $00, $AD, $AD ; $1E9D3D |
  db $AC, $00, $6D, $6B, $6D, $70, $80, $6D ; $1E9D45 |
  db $6B, $6D, $70, $80, $6D, $6B, $6D, $6D ; $1E9D4D |
  db $18, $40, $06, $E6, $01, $D0, $08, $03 ; $1E9D55 |
  db $01, $D0, $08, $02, $CB, $A8, $A6, $06 ; $1E9D5D |
  db $8C, $64, $63, $64, $68, $80, $64, $63 ; $1E9D65 |
  db $64, $68, $80, $64, $63, $64, $6C, $04 ; $1E9D6D |
  db $08, $04, $08, $07, $0A, $0D, $00, $06 ; $1E9D75 |
  db $64, $08, $02, $18, $C0, $6A, $6A, $60 ; $1E9D7D |
  db $6A, $6F, $60, $72, $80, $06, $C8, $01 ; $1E9D85 |
  db $B2, $08, $03, $02, $01, $92, $0E, $01 ; $1E9D8D |
  db $9D, $76, $08, $02, $06, $64, $13, $08 ; $1E9D95 |
  db $9D, $C5, $6D, $6D, $60, $6D, $B1, $00 ; $1E9D9D |
  db $AD, $AD, $AD, $07, $08, $18, $80, $06 ; $1E9DA5 |
  db $46, $40, $00, $74, $72, $71, $6F, $72 ; $1E9DAD |
  db $71, $6F, $6D, $06, $C8, $02, $01, $AF ; $1E9DB5 |
  db $00, $01, $8F, $4F, $0F, $01, $9D, $74 ; $1E9DBD |
  db $07, $0A, $06, $64, $74, $74, $60, $74 ; $1E9DC5 |
  db $B4, $00, $B4, $B2, $B1, $06, $FF, $00 ; $1E9DCD |
  db $F3, $16, $9C, $D9, $17, $06, $DC, $08 ; $1E9DD5 |
  db $00, $09, $03, $04, $00, $02, $88, $6B ; $1E9DDD |
  db $80, $8D, $80, $88, $8B, $8D, $0E, $02 ; $1E9DE5 |
  db $9D, $E0, $02, $88, $6B, $80, $8D, $08 ; $1E9DED |
  db $04, $7E, $7E, $78, $78, $74, $74, $74 ; $1E9DF5 |
  db $74, $04, $00, $04, $00, $08, $00, $02 ; $1E9DFD |
  db $88, $6B, $80, $8D, $80, $88, $8B, $8D ; $1E9E05 |
  db $0E, $02, $9E, $00, $02, $88, $6B, $80 ; $1E9E0D |
  db $8D, $00, $A1, $A1, $A1, $04, $00, $02 ; $1E9E15 |
  db $88, $6B, $80, $8D, $80, $88, $8B, $8D ; $1E9E1D |
  db $0E, $01, $9E, $1A, $02, $88, $6B, $80 ; $1E9E25 |
  db $8D, $00, $AB, $AB, $AC, $02, $00, $8D ; $1E9E2D |
  db $70, $80, $01, $D2, $01, $72, $70, $72 ; $1E9E35 |
  db $60, $72, $60, $70, $92, $90, $00, $53 ; $1E9E3D |
  db $74, $00, $72, $70, $72, $70, $6D, $6B ; $1E9E45 |
  db $02, $8D, $74, $80, $01, $B2, $02, $01 ; $1E9E4D |
  db $92, $02, $94, $99, $02, $A0, $00, $AD ; $1E9E55 |
  db $AD, $AD, $04, $00, $AD, $90, $6D, $70 ; $1E9E5D |
  db $8D, $8D, $90, $8D, $0E, $01, $9E, $5F ; $1E9E65 |
  db $AF, $92, $6E, $72, $8E, $8E, $92, $8E ; $1E9E6D |
  db $AD, $90, $6D, $70, $92, $92, $93, $94 ; $1E9E75 |
  db $08, $00, $AF, $92, $6F, $72, $94, $94 ; $1E9E7D |
  db $95, $96, $9B, $9B, $99, $96, $94, $94 ; $1E9E85 |
  db $95, $76, $78, $AD, $91, $6D, $71, $92 ; $1E9E8D |
  db $92, $93, $94, $AD, $90, $6D, $70, $92 ; $1E9E95 |
  db $92, $90, $8D, $AF, $92, $6F, $72, $96 ; $1E9E9D |
  db $96, $95, $96, $AF, $93, $70, $73, $97 ; $1E9EA5 |
  db $97, $96, $97, $AD, $91, $6D, $71, $91 ; $1E9EAD |
  db $91, $8F, $91, $6F, $71, $72, $6F, $74 ; $1E9EB5 |
  db $72, $71, $6D, $08, $04, $76, $76, $99 ; $1E9EBD |
  db $76, $76, $99, $08, $00, $16, $9D, $FE ; $1E9EC5 |
  db $17, $06, $C8, $07, $09, $08, $01, $04 ; $1E9ECD |
  db $00, $87, $65, $65, $0E, $0B, $9E, $D4 ; $1E9ED5 |
  db $6D, $66, $66, $60, $6D, $66, $66, $60 ; $1E9EDD |
  db $65, $66, $66, $66, $65, $6A, $6A, $6A ; $1E9EE5 |
  db $04, $00, $07, $09, $06, $64, $8D, $06 ; $1E9EED |
  db $C8, $6D, $6D, $04, $00, $06, $6E, $87 ; $1E9EF5 |
  db $06, $C8, $6D, $6D, $0E, $0A, $9E, $F8 ; $1E9EFD |
  db $8C, $6A, $6A, $88, $88, $00, $A6, $A6 ; $1E9F05 |
  db $AD, $04, $00, $06, $6E, $87, $06, $C8 ; $1E9F0D |
  db $6D, $6D, $0E, $07, $9F, $0E, $8C, $6A ; $1E9F15 |
  db $6A, $88, $88, $00, $A6, $A6, $A8, $04 ; $1E9F1D |
  db $00, $06, $6E, $87, $06, $C8, $6D, $6D ; $1E9F25 |
  db $0E, $06, $9F, $24, $65, $6A, $6A, $6A ; $1E9F2D |
  db $04, $00, $06, $6E, $87, $06, $C8, $6D ; $1E9F35 |
  db $6D, $0E, $02, $9F, $35, $6A, $6A, $68 ; $1E9F3D |
  db $68, $88, $88, $A6, $06, $C8, $00, $A6 ; $1E9F45 |
  db $AA, $AA, $04, $00, $06, $C8, $A5, $07 ; $1E9F4D |
  db $0A, $8A, $07, $08, $65, $65, $85, $85 ; $1E9F55 |
  db $07, $0A, $02, $8A, $07, $07, $66, $0E ; $1E9F5D |
  db $03, $9F, $4F, $04, $00, $07, $08, $06 ; $1E9F65 |
  db $78, $87, $06, $C8, $6D, $6D, $0E, $0B ; $1E9F6D |
  db $9F, $68, $04, $00, $06, $C8, $87, $06 ; $1E9F75 |
  db $96, $6D, $6D, $0E, $02, $9F, $77, $06 ; $1E9F7D |
  db $C8, $6A, $6A, $6A, $6A, $04, $00, $87 ; $1E9F85 |
  db $06, $96, $6D, $6D, $0E, $0A, $9F, $8A ; $1E9F8D |
  db $06, $C8, $6A, $6A, $6A, $6A, $02, $85 ; $1E9F95 |
  db $65, $8A, $65, $6C, $88, $88, $66, $66 ; $1E9F9D |
  db $66, $66, $16, $9E, $ED, $17, $00, $9F ; $1E9FA5 |
  db $B4, $A0, $AA, $A1, $D5, $A2, $F7, $04 ; $1E9FAD |
  db $08, $04, $08, $05, $02, $66, $18, $C0 ; $1E9FB5 |
  db $0A, $FA, $07, $0B, $06, $EB, $08, $17 ; $1E9FBD |
  db $09, $02, $AD, $AD, $8B, $8D, $80, $8D ; $1E9FC5 |
  db $80, $8D, $80, $8D, $0D, $50, $90, $0D ; $1E9FCD |
  db $00, $8D, $8B, $12, $08, $9F, $E2, $01 ; $1E9FD5 |
  db $8D, $0E, $01, $9F, $B6, $8D, $8F, $02 ; $1E9FDD |
  db $C0, $0D, $50, $01, $90, $0D, $00, $02 ; $1E9FE5 |
  db $01, $B0, $02, $AF, $80, $01, $8D, $01 ; $1E9FED |
  db $ED, $C0, $80, $18, $80, $87, $88, $01 ; $1E9FF5 |
  db $8D, $04, $08                          ; $1E9FFD |
