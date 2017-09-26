; code bank

bank $1B
org $8000

  JMP code_1B8E36                           ; $1B8000 |

  JSR code_3EC457                           ; $1B8003 |
  LDA #$04                                  ; $1B8006 |
  STA $97                                   ; $1B8008 |
  JSR code_3EC421                           ; $1B800A |
  JSR code_3EC438                           ; $1B800D |
  JSR code_3FFF1C                           ; $1B8010 |
  LDA #$00                                  ; $1B8013 |
  STA $2A                                   ; $1B8015 |
  LDX #$4B                                  ; $1B8017 |
  JSR code_1B87F7                           ; $1B8019 |
  LDY #$00                                  ; $1B801C |
  JSR code_1B8866                           ; $1B801E |
  LDX #$01                                  ; $1B8021 |
  LDA #$12                                  ; $1B8023 |
  JSR code_3FF446                           ; $1B8025 |
  LDA #$60                                  ; $1B8028 |
  STA $0301                                 ; $1B802A |
  LDA #$90                                  ; $1B802D |
  STA $0529                                 ; $1B802F |
  LDA #$00                                  ; $1B8032 |
  STA $0349                                 ; $1B8034 |
  STA $0391                                 ; $1B8037 |
  LDA #$6F                                  ; $1B803A |
  STA $0379                                 ; $1B803C |
  LDA #$C8                                  ; $1B803F |
  STA $0331                                 ; $1B8041 |
  JSR code_3FFCE3                           ; $1B8044 |
  LDA #$00                                  ; $1B8047 |
  STA $9A                                   ; $1B8049 |
  STA $95                                   ; $1B804B |
  JSR code_3EC451                           ; $1B804D |
code_1B8050:
  JSR code_3FFCE3                           ; $1B8050 |
  LDA #$00                                  ; $1B8053 |
  STA $0571                                 ; $1B8055 |
  LDA $95                                   ; $1B8058 |
  CMP #$B4                                  ; $1B805A |
  BEQ code_1B8061                           ; $1B805C |
  JMP code_1B8050                           ; $1B805E |

code_1B8061:
  LDX #$01                                  ; $1B8061 |
  LDY #$02                                  ; $1B8063 |
  LDA #$27                                  ; $1B8065 |
  JSR code_3FF452                           ; $1B8067 |
  LDA #$60                                  ; $1B806A |
  STA $0302                                 ; $1B806C |
  STA $037A                                 ; $1B806F |
  LDA #$00                                  ; $1B8072 |
  STA $95                                   ; $1B8074 |
code_1B8076:
  LDA $95                                   ; $1B8076 |
  AND #$03                                  ; $1B8078 |
  BNE code_1B8089                           ; $1B807A |
  JSR code_1B87C9                           ; $1B807C |
  DEC $037A                                 ; $1B807F |
  LDA $037A                                 ; $1B8082 |
  CMP #$20                                  ; $1B8085 |
  BEQ code_1B808F                           ; $1B8087 |
code_1B8089:
  JSR code_3FFCE3                           ; $1B8089 |
  JMP code_1B8076                           ; $1B808C |

code_1B808F:
  LDA $95                                   ; $1B808F |
  AND #$03                                  ; $1B8091 |
  BNE code_1B80A2                           ; $1B8093 |
  JSR code_1B87DD                           ; $1B8095 |
  DEC $0332                                 ; $1B8098 |
  LDA $0332                                 ; $1B809B |
  CMP #$88                                  ; $1B809E |
  BEQ code_1B80A8                           ; $1B80A0 |
code_1B80A2:
  JSR code_3FFCE3                           ; $1B80A2 |
  JMP code_1B808F                           ; $1B80A5 |

code_1B80A8:
  LDA $95                                   ; $1B80A8 |
  AND #$03                                  ; $1B80AA |
  BNE code_1B80BB                           ; $1B80AC |
  JSR code_1B87C9                           ; $1B80AE |
  DEC $037A                                 ; $1B80B1 |
  LDA $037A                                 ; $1B80B4 |
  CMP #$F8                                  ; $1B80B7 |
  BEQ code_1B80C1                           ; $1B80B9 |
code_1B80BB:
  JSR code_3FFCE3                           ; $1B80BB |
  JMP code_1B80A8                           ; $1B80BE |

code_1B80C1:
  LDX #$01                                  ; $1B80C1 |
  LDA #$13                                  ; $1B80C3 |
  JSR code_3FF446                           ; $1B80C5 |
  LDA #$00                                  ; $1B80C8 |
  STA $95                                   ; $1B80CA |
code_1B80CC:
  JSR code_3FFCE3                           ; $1B80CC |
  LDA $95                                   ; $1B80CF |
  AND #$1F                                  ; $1B80D1 |
  BNE code_1B80DA                           ; $1B80D3 |
  LDA #$28                                  ; $1B80D5 |
  JSR code_3FF6BE                           ; $1B80D7 |
code_1B80DA:
  LDA $95                                   ; $1B80DA |
  BNE code_1B80CC                           ; $1B80DC |
  LDX #$01                                  ; $1B80DE |
  LDY #$00                                  ; $1B80E0 |
  LDA #$28                                  ; $1B80E2 |
  JSR code_3FF452                           ; $1B80E4 |
  LDA #$60                                  ; $1B80E7 |
  STA $0378                                 ; $1B80E9 |
  STA $0300                                 ; $1B80EC |
code_1B80EF:
  DEC $0378                                 ; $1B80EF |
  DEC $0378                                 ; $1B80F2 |
  LDA $0378                                 ; $1B80F5 |
  CMP #$F8                                  ; $1B80F8 |
  BEQ code_1B8102                           ; $1B80FA |
  JSR code_3FFCE3                           ; $1B80FC |
  JMP code_1B80EF                           ; $1B80FF |

code_1B8102:
  LDX #$01                                  ; $1B8102 |
  LDA #$14                                  ; $1B8104 |
  JSR code_3FF446                           ; $1B8106 |
code_1B8109:
  JSR code_3FFCE3                           ; $1B8109 |
  LDA $0541                                 ; $1B810C |
  CMP #$3B                                  ; $1B810F |
  BNE code_1B8109                           ; $1B8111 |
  LDA #$37                                  ; $1B8113 |
  JSR code_3FF6BE                           ; $1B8115 |
  LDX #$01                                  ; $1B8118 |
  LDA #$15                                  ; $1B811A |
  JSR code_3FF446                           ; $1B811C |
  LDA #$00                                  ; $1B811F |
  STA $95                                   ; $1B8121 |
code_1B8123:
  JSR code_3FFCE3                           ; $1B8123 |
  LDA $95                                   ; $1B8126 |
  BNE code_1B8123                           ; $1B8128 |
  LDA #$00                                  ; $1B812A |
  STA $9A                                   ; $1B812C |
  JSR code_3EC457                           ; $1B812E |
  LDA #$04                                  ; $1B8131 |
  STA $97                                   ; $1B8133 |
  JSR code_3EC421                           ; $1B8135 |
  JSR code_3EC438                           ; $1B8138 |
  JSR code_3FFF1C                           ; $1B813B |
  LDA #$0C                                  ; $1B813E |
  STA $2A                                   ; $1B8140 |
  LDX #$4C                                  ; $1B8142 |
  JSR code_1B87F7                           ; $1B8144 |
  LDY #$20                                  ; $1B8147 |
  JSR code_1B8866                           ; $1B8149 |
  LDX #$01                                  ; $1B814C |
  LDA #$25                                  ; $1B814E |
  JSR code_3FF446                           ; $1B8150 |
  LDA #$60                                  ; $1B8153 |
  STA $0301                                 ; $1B8155 |
  LDA #$90                                  ; $1B8158 |
  STA $0529                                 ; $1B815A |
  LDA #$00                                  ; $1B815D |
  STA $0349                                 ; $1B815F |
  STA $0391                                 ; $1B8162 |
  STA $0379                                 ; $1B8165 |
  LDA #$80                                  ; $1B8168 |
  STA $0331                                 ; $1B816A |
  JSR code_3FF324                           ; $1B816D |
  LDY #$00                                  ; $1B8170 |
code_1B8172:
  LDA $8ABD,y                               ; $1B8172 |
  JSR code_3FF452                           ; $1B8175 |
  LDA #$98                                  ; $1B8178 |
  STA $0528,y                               ; $1B817A |
  LDA $8ABE,y                               ; $1B817D |
  STA $0468,y                               ; $1B8180 |
  LDA #$60                                  ; $1B8183 |
  STA $0300,y                               ; $1B8185 |
  LDA $8AB9,y                               ; $1B8188 |
  STA $0378,y                               ; $1B818B |
  LDA $8ABA,y                               ; $1B818E |
  STA $0348,y                               ; $1B8191 |
  LDA #$00                                  ; $1B8194 |
  STA $0330,y                               ; $1B8196 |
  STA $03A8,y                               ; $1B8199 |
  LDA #$08                                  ; $1B819C |
  STA $03C0,y                               ; $1B819E |
  INY                                       ; $1B81A1 |
  INY                                       ; $1B81A2 |
  CPY #$04                                  ; $1B81A3 |
  BNE code_1B8172                           ; $1B81A5 |
  LDA #$0B                                  ; $1B81A7 |
  STA $1C                                   ; $1B81A9 |
  LDA #$80                                  ; $1B81AB |
  STA $1B                                   ; $1B81AD |
  LDA #$80                                  ; $1B81AF |
  STA $2B                                   ; $1B81B1 |
  LDA #$00                                  ; $1B81B3 |
  STA $A000                                 ; $1B81B5 |
code_1B81B8:
  JSR code_3FE35C                           ; $1B81B8 |
  JSR code_3FFF1C                           ; $1B81BB |
  LDA $1B                                   ; $1B81BE |
  BNE code_1B81B8                           ; $1B81C0 |
  LDA #$00                                  ; $1B81C2 |
  STA $69                                   ; $1B81C4 |
  STA $6A                                   ; $1B81C6 |
  LDA #$0B                                  ; $1B81C8 |
  STA $1C                                   ; $1B81CA |
  LDA #$1F                                  ; $1B81CC |
  STA $24                                   ; $1B81CE |
  LDA #$0B                                  ; $1B81D0 |
  JSR code_3FF6BC                           ; $1B81D2 |
  JSR code_3EC451                           ; $1B81D5 |
code_1B81D8:
  LDX #$01                                  ; $1B81D8 |
  LDA #$00                                  ; $1B81DA |
  STA $0571                                 ; $1B81DC |
  JSR code_3FF2A7                           ; $1B81DF |
  LDA #$54                                  ; $1B81E2 |
  CMP $0379                                 ; $1B81E4 |
  BCS code_1B81EE                           ; $1B81E7 |
  STA $0379                                 ; $1B81E9 |
  BCC code_1B81F4                           ; $1B81EC |
code_1B81EE:
  JSR code_3FFCE3                           ; $1B81EE |
  JMP code_1B81D8                           ; $1B81F1 |

code_1B81F4:
  JSR code_3FFCE3                           ; $1B81F4 |
  LDA $0541                                 ; $1B81F7 |
  CMP #$04                                  ; $1B81FA |
  BNE code_1B81F4                           ; $1B81FC |
  LDX #$01                                  ; $1B81FE |
  LDA #$23                                  ; $1B8200 |
  JSR code_3FF446                           ; $1B8202 |
  LDA #$60                                  ; $1B8205 |
  STA $F1                                   ; $1B8207 |
  LDA #$0A                                  ; $1B8209 |
  STA $F0                                   ; $1B820B |
  LDA #$0B                                  ; $1B820D |
  STA $2A                                   ; $1B820F |
  LDA $8AEC                                 ; $1B8211 |
  STA $50                                   ; $1B8214 |
  LDA $8AED                                 ; $1B8216 |
  STA $51                                   ; $1B8219 |
  LDA #$EE                                  ; $1B821B |
  STA $52                                   ; $1B821D |
  LDA #$8A                                  ; $1B821F |
  STA $53                                   ; $1B8221 |
  LDA #$00                                  ; $1B8223 |
  STA $54                                   ; $1B8225 |
  STA $55                                   ; $1B8227 |
code_1B8229:
  LDA $69                                   ; $1B8229 |
  ORA $2A                                   ; $1B822B |
  BEQ code_1B8267                           ; $1B822D |
  LDA $0469                                 ; $1B822F |
  AND #$01                                  ; $1B8232 |
  BNE code_1B8254                           ; $1B8234 |
  LDA $69                                   ; $1B8236 |
  SEC                                       ; $1B8238 |
  SBC #$01                                  ; $1B8239 |
  STA $69                                   ; $1B823B |
  PHP                                       ; $1B823D |
  LDA $6A                                   ; $1B823E |
  SBC #$00                                  ; $1B8240 |
  AND #$01                                  ; $1B8242 |
  STA $6A                                   ; $1B8244 |
  PLP                                       ; $1B8246 |
  BCS code_1B824B                           ; $1B8247 |
  DEC $2A                                   ; $1B8249 |
code_1B824B:
  JSR code_1B882C                           ; $1B824B |
  JSR code_1B86DB                           ; $1B824E |
  JMP code_1B8257                           ; $1B8251 |

code_1B8254:
  JSR code_1B871F                           ; $1B8254 |
code_1B8257:
  JSR code_1B87A1                           ; $1B8257 |
  LDA #$FF                                  ; $1B825A |
  STA $95                                   ; $1B825C |
  JSR code_3FFCE3                           ; $1B825E |
  INC $0469                                 ; $1B8261 |
  JMP code_1B8229                           ; $1B8264 |

code_1B8267:
  LDA #$00                                  ; $1B8267 |
  STA $95                                   ; $1B8269 |
code_1B826B:
  JSR code_3FFCE3                           ; $1B826B |
  LDA $95                                   ; $1B826E |
  CMP #$3C                                  ; $1B8270 |
  BNE code_1B826B                           ; $1B8272 |
  JSR code_1B8727                           ; $1B8274 |
  LDY #$07                                  ; $1B8277 |
code_1B8279:
  LDA $8AAD,y                               ; $1B8279 |
  STA $0618,y                               ; $1B827C |
  STA $0638,y                               ; $1B827F |
  DEY                                       ; $1B8282 |
  BPL code_1B8279                           ; $1B8283 |
  STY $18                                   ; $1B8285 |
  LDY #$00                                  ; $1B8287 |
  LDX #$01                                  ; $1B8289 |
  LDA #$21                                  ; $1B828B |
  JSR code_3FF452                           ; $1B828D |
  LDA #$60                                  ; $1B8290 |
  STA $0300                                 ; $1B8292 |
  LDA #$00                                  ; $1B8295 |
  STA $0330                                 ; $1B8297 |
  LDA #$D7                                  ; $1B829A |
  STA $0378                                 ; $1B829C |
code_1B829F:
  INC $0330                                 ; $1B829F |
  JSR code_3FFCE3                           ; $1B82A2 |
  LDA $0330                                 ; $1B82A5 |
  CMP #$54                                  ; $1B82A8 |
  BNE code_1B829F                           ; $1B82AA |
  LDX #$00                                  ; $1B82AC |
  LDA #$22                                  ; $1B82AE |
  JSR code_3FF446                           ; $1B82B0 |
  LDA #$00                                  ; $1B82B3 |
  STA $95                                   ; $1B82B5 |
code_1B82B7:
  JSR code_3FFCE3                           ; $1B82B7 |
  LDA $95                                   ; $1B82BA |
  CMP #$3C                                  ; $1B82BC |
  BNE code_1B82B7                           ; $1B82BE |
  LDX #$01                                  ; $1B82C0 |
  LDA #$24                                  ; $1B82C2 |
  JSR code_3FF446                           ; $1B82C4 |
  LDA #$00                                  ; $1B82C7 |
  STA $03D9                                 ; $1B82C9 |
  LDA #$05                                  ; $1B82CC |
  STA $03F1                                 ; $1B82CE |
code_1B82D1:
  LDX #$01                                  ; $1B82D1 |
  JSR code_3FF2A7                           ; $1B82D3 |
  LDA #$7C                                  ; $1B82D6 |
  CMP $0379                                 ; $1B82D8 |
  BCS code_1B82E0                           ; $1B82DB |
  STA $0379                                 ; $1B82DD |
code_1B82E0:
  JSR code_3FFCE3                           ; $1B82E0 |
  LDA $0379                                 ; $1B82E3 |
  CMP #$7C                                  ; $1B82E6 |
  BNE code_1B82D1                           ; $1B82E8 |
  LDY #$1F                                  ; $1B82EA |
code_1B82EC:
  LDA $8A8D,y                               ; $1B82EC |
  STA $0600,y                               ; $1B82EF |
  STA $0620,y                               ; $1B82F2 |
  DEY                                       ; $1B82F5 |
  BPL code_1B82EC                           ; $1B82F6 |
  STY $18                                   ; $1B82F8 |
  LDA #$00                                  ; $1B82FA |
  STA $9A                                   ; $1B82FC |
  LDA #$F6                                  ; $1B82FE |
  JSR code_3FF6BC                           ; $1B8300 |
  LDX #$00                                  ; $1B8303 |
  JSR code_3FFF15                           ; $1B8305 |
  JSR code_3EC457                           ; $1B8308 |
  LDA #$00                                  ; $1B830B |
  STA $F0                                   ; $1B830D |
  JSR code_3FFF1C                           ; $1B830F |
  LDA #$04                                  ; $1B8312 |
  STA $97                                   ; $1B8314 |
  JSR code_3EC421                           ; $1B8316 |
  JSR code_3EC438                           ; $1B8319 |
  JSR code_3FFF1C                           ; $1B831C |
  LDX #$10                                  ; $1B831F |
  STX $22                                   ; $1B8321 |
  LDA #$02                                  ; $1B8323 |
  STA $2A                                   ; $1B8325 |
  JSR code_1B87FB                           ; $1B8327 |
  LDY #$40                                  ; $1B832A |
  JSR code_1B8866                           ; $1B832C |
  LDX #$00                                  ; $1B832F |
  LDA #$81                                  ; $1B8331 |
  STA $0300                                 ; $1B8333 |
  LDA #$44                                  ; $1B8336 |
  JSR code_3FF446                           ; $1B8338 |
  LDA #$90                                  ; $1B833B |
  STA $0528                                 ; $1B833D |
  LDA #$00                                  ; $1B8340 |
  STA $22                                   ; $1B8342 |
  STA $0348                                 ; $1B8344 |
  STA $0390                                 ; $1B8347 |
  LDA #$74                                  ; $1B834A |
  STA $0378                                 ; $1B834C |
  LDA #$50                                  ; $1B834F |
  STA $0330                                 ; $1B8351 |
  LDY #$08                                  ; $1B8354 |
code_1B8356:
  LDA $8E14,y                               ; $1B8356 |
  STA $0780,y                               ; $1B8359 |
  DEY                                       ; $1B835C |
  BPL code_1B8356                           ; $1B835D |
  STY $19                                   ; $1B835F |
  JSR code_3EC451                           ; $1B8361 |
  LDA #$13                                  ; $1B8364 |
  JSR code_3FF6BC                           ; $1B8366 |
  LDX #$01                                  ; $1B8369 |
  LDY #$92                                  ; $1B836B |
code_1B836D:
  TYA                                       ; $1B836D |
  STA $06F0,x                               ; $1B836E |
  LDA #$00                                  ; $1B8371 |
  STA $06F4,x                               ; $1B8373 |
  STA $06F8,x                               ; $1B8376 |
  INY                                       ; $1B8379 |
  INX                                       ; $1B837A |
  CPX #$04                                  ; $1B837B |
  BNE code_1B836D                           ; $1B837D |
  LDX #$96                                  ; $1B837F |
  JSR code_3FFF15                           ; $1B8381 |
  LDY #$08                                  ; $1B8384 |
code_1B8386:
  LDA $8E1D,y                               ; $1B8386 |
  STA $0780,y                               ; $1B8389 |
  DEY                                       ; $1B838C |
  BPL code_1B8386                           ; $1B838D |
  STY $19                                   ; $1B838F |
  JSR code_3FFF1C                           ; $1B8391 |
code_1B8394:
  LDX $22                                   ; $1B8394 |
  LDA $8C93,x                               ; $1B8396 |
  INC $9A                                   ; $1B8399 |
  JSR code_3EDA8B                           ; $1B839B |
  LDA #$00                                  ; $1B839E |
  STA $18                                   ; $1B83A0 |
  DEC $9A                                   ; $1B83A2 |
  LDA #$78                                  ; $1B83A4 |
  STA $95                                   ; $1B83A6 |
code_1B83A8:
  JSR code_3FFD05                           ; $1B83A8 |
  JSR code_3FFF1C                           ; $1B83AB |
  DEC $95                                   ; $1B83AE |
  BNE code_1B83A8                           ; $1B83B0 |
  LDA $0528                                 ; $1B83B2 |
  AND #$FB                                  ; $1B83B5 |
  STA $0528                                 ; $1B83B7 |
  JSR code_3FFCE3                           ; $1B83BA |
  LDA #$00                                  ; $1B83BD |
  STA $9A                                   ; $1B83BF |
  LDA #$30                                  ; $1B83C1 |
  STA $0F                                   ; $1B83C3 |
code_1B83C5:
  LDX #$00                                  ; $1B83C5 |
  LDA $22                                   ; $1B83C7 |
  ASL                                       ; $1B83C9 |
  ASL                                       ; $1B83CA |
  ASL                                       ; $1B83CB |
  TAY                                       ; $1B83CC |
code_1B83CD:
  LDA $8C4B,x                               ; $1B83CD |
  SEC                                       ; $1B83D0 |
  SBC $0F                                   ; $1B83D1 |
  BCS code_1B83D7                           ; $1B83D3 |
  LDA #$0F                                  ; $1B83D5 |
code_1B83D7:
  STA $0610,x                               ; $1B83D7 |
  STA $0630,x                               ; $1B83DA |
  LDA $8C53,y                               ; $1B83DD |
  SEC                                       ; $1B83E0 |
  SBC $0F                                   ; $1B83E1 |
  BCS code_1B83E7                           ; $1B83E3 |
  LDA #$0F                                  ; $1B83E5 |
code_1B83E7:
  STA $0618,x                               ; $1B83E7 |
  STA $0638,x                               ; $1B83EA |
  INY                                       ; $1B83ED |
  INX                                       ; $1B83EE |
  CPX #$08                                  ; $1B83EF |
  BNE code_1B83CD                           ; $1B83F1 |
  LDA #$FF                                  ; $1B83F3 |
  STA $18                                   ; $1B83F5 |
  LDX #$0A                                  ; $1B83F7 |
  JSR code_3FFF15                           ; $1B83F9 |
  LDA $0F                                   ; $1B83FC |
  SEC                                       ; $1B83FE |
  SBC #$10                                  ; $1B83FF |
  STA $0F                                   ; $1B8401 |
  BCS code_1B83C5                           ; $1B8403 |
code_1B8405:
  JSR code_3FFCE3                           ; $1B8405 |
  LDA $0540                                 ; $1B8408 |
  CMP #$05                                  ; $1B840B |
  BNE code_1B8405                           ; $1B840D |
  LDA #$00                                  ; $1B840F |
  STA $9A                                   ; $1B8411 |
  JSR code_1B8678                           ; $1B8413 |
  LDX #$F0                                  ; $1B8416 |
  JSR code_3FFF15                           ; $1B8418 |
  INC $22                                   ; $1B841B |
  LDA $22                                   ; $1B841D |
  CMP #$08                                  ; $1B841F |
  BEQ code_1B8483                           ; $1B8421 |
  LDY #$32                                  ; $1B8423 |
code_1B8425:
  LDA $8DE1,y                               ; $1B8425 |
  STA $0780,y                               ; $1B8428 |
  DEY                                       ; $1B842B |
  BPL code_1B8425                           ; $1B842C |
  STY $19                                   ; $1B842E |
  LDA #$10                                  ; $1B8430 |
  STA $0F                                   ; $1B8432 |
code_1B8434:
  LDY #$0F                                  ; $1B8434 |
code_1B8436:
  LDA $0630,y                               ; $1B8436 |
  SEC                                       ; $1B8439 |
  SBC $0F                                   ; $1B843A |
  BCS code_1B8440                           ; $1B843C |
  LDA #$0F                                  ; $1B843E |
code_1B8440:
  STA $0610,y                               ; $1B8440 |
  DEY                                       ; $1B8443 |
  BPL code_1B8436                           ; $1B8444 |
  STY $18                                   ; $1B8446 |
  LDX #$0A                                  ; $1B8448 |
  JSR code_3FFF15                           ; $1B844A |
  LDA $0F                                   ; $1B844D |
  CLC                                       ; $1B844F |
  ADC #$10                                  ; $1B8450 |
  STA $0F                                   ; $1B8452 |
  CMP #$50                                  ; $1B8454 |
  BNE code_1B8434                           ; $1B8456 |
  LDY #$02                                  ; $1B8458 |
code_1B845A:
  LDA $06F1,y                               ; $1B845A |
  CLC                                       ; $1B845D |
  ADC #$03                                  ; $1B845E |
  STA $06F1,y                               ; $1B8460 |
  DEY                                       ; $1B8463 |
  BPL code_1B845A                           ; $1B8464 |
  LDA $0528                                 ; $1B8466 |
  ORA #$04                                  ; $1B8469 |
  STA $0528                                 ; $1B846B |
  INC $0558                                 ; $1B846E |
  LDA #$00                                  ; $1B8471 |
  STA $0540                                 ; $1B8473 |
  STA $0570                                 ; $1B8476 |
  JSR code_3FFCE3                           ; $1B8479 |
  LDA #$00                                  ; $1B847C |
  STA $9A                                   ; $1B847E |
  JMP code_1B8394                           ; $1B8480 |

code_1B8483:
  LDA #$00                                  ; $1B8483 |
  STA $9A                                   ; $1B8485 |
  STA $06F1                                 ; $1B8487 |
  STA $06F2                                 ; $1B848A |
  STA $06F3                                 ; $1B848D |
  JSR code_3EC457                           ; $1B8490 |
  LDA #$04                                  ; $1B8493 |
  STA $97                                   ; $1B8495 |
  JSR code_3EC421                           ; $1B8497 |
  JSR code_3EC438                           ; $1B849A |
  LDA #$0D                                  ; $1B849D |
  STA $2A                                   ; $1B849F |
  LDX #$4D                                  ; $1B84A1 |
  JSR code_1B87F7                           ; $1B84A3 |
  LDY #$60                                  ; $1B84A6 |
  JSR code_1B8866                           ; $1B84A8 |
  LDY #$2B                                  ; $1B84AB |
code_1B84AD:
  LDA $8BFB,y                               ; $1B84AD |
  STA $0200,y                               ; $1B84B0 |
  DEY                                       ; $1B84B3 |
  BPL code_1B84AD                           ; $1B84B4 |
  JSR code_3FFF1C                           ; $1B84B6 |
  JSR code_3EC451                           ; $1B84B9 |
  LDA #$5D                                  ; $1B84BC |
  STA $10                                   ; $1B84BE |
  LDA #$95                                  ; $1B84C0 |
  STA $11                                   ; $1B84C2 |
  LDA #$01                                  ; $1B84C4 |
  STA $12                                   ; $1B84C6 |
  LDA #$00                                  ; $1B84C8 |
  STA $13                                   ; $1B84CA |
  LDA #$00                                  ; $1B84CC |
  STA $95                                   ; $1B84CE |
code_1B84D0:
  LDA $95                                   ; $1B84D0 |
  AND #$01                                  ; $1B84D2 |
  BNE code_1B84EA                           ; $1B84D4 |
  LDA $12                                   ; $1B84D6 |
  CMP #$24                                  ; $1B84D8 |
  BNE code_1B84ED                           ; $1B84DA |
  LDA $FA                                   ; $1B84DC |
  CMP #$90                                  ; $1B84DE |
  BNE code_1B84ED                           ; $1B84E0 |
  LDA #$F6                                  ; $1B84E2 |
  JSR code_3FF6BC                           ; $1B84E4 |
  JMP code_1B8576                           ; $1B84E7 |

code_1B84EA:
  JMP code_1B856B                           ; $1B84EA |

code_1B84ED:
  INC $FA                                   ; $1B84ED |
  LDA $FA                                   ; $1B84EF |
  CMP #$F0                                  ; $1B84F1 |
  BNE code_1B84F9                           ; $1B84F3 |
  LDA #$00                                  ; $1B84F5 |
  STA $FA                                   ; $1B84F7 |
code_1B84F9:
  LDA $FA                                   ; $1B84F9 |
  AND #$07                                  ; $1B84FB |
  BNE code_1B856B                           ; $1B84FD |
  INC $13                                   ; $1B84FF |
  LDA $13                                   ; $1B8501 |
  CMP #$1E                                  ; $1B8503 |
  BNE code_1B850B                           ; $1B8505 |
  LDA #$00                                  ; $1B8507 |
  STA $13                                   ; $1B8509 |
code_1B850B:
  LDX #$23                                  ; $1B850B |
code_1B850D:
  LDA $8C27,x                               ; $1B850D |
  STA $0780,x                               ; $1B8510 |
  DEX                                       ; $1B8513 |
  BPL code_1B850D                           ; $1B8514 |
  LDY #$00                                  ; $1B8516 |
  LDA $13                                   ; $1B8518 |
  CMP ($10),y                               ; $1B851A |
  BNE code_1B853C                           ; $1B851C |
  INY                                       ; $1B851E |
  LDA ($10),y                               ; $1B851F |
  TAX                                       ; $1B8521 |
  INY                                       ; $1B8522 |
code_1B8523:
  LDA ($10),y                               ; $1B8523 |
  BMI code_1B852E                           ; $1B8525 |
  STA $0783,x                               ; $1B8527 |
  INX                                       ; $1B852A |
  INY                                       ; $1B852B |
  BNE code_1B8523                           ; $1B852C |
code_1B852E:
  LDY $12                                   ; $1B852E |
  LDA $9513,y                               ; $1B8530 |
  STA $10                                   ; $1B8533 |
  LDA $9538,y                               ; $1B8535 |
  STA $11                                   ; $1B8538 |
  INC $12                                   ; $1B853A |
code_1B853C:
  LDA $13                                   ; $1B853C |
  STA $00                                   ; $1B853E |
  LDA #$00                                  ; $1B8540 |
  STA $01                                   ; $1B8542 |
  ASL $00                                   ; $1B8544 |
  ROL $01                                   ; $1B8546 |
  ASL $00                                   ; $1B8548 |
  ROL $01                                   ; $1B854A |
  ASL $00                                   ; $1B854C |
  ROL $01                                   ; $1B854E |
  ASL $00                                   ; $1B8550 |
  ROL $01                                   ; $1B8552 |
  ASL $00                                   ; $1B8554 |
  ROL $01                                   ; $1B8556 |
  LDA $00                                   ; $1B8558 |
  ORA $0781                                 ; $1B855A |
  STA $0781                                 ; $1B855D |
  LDA #$20                                  ; $1B8560 |
  ORA $01                                   ; $1B8562 |
  STA $0780                                 ; $1B8564 |
  LDA #$FF                                  ; $1B8567 |
  STA $19                                   ; $1B8569 |
code_1B856B:
  JSR code_1B86B8                           ; $1B856B |
  JSR code_3FFF1C                           ; $1B856E |
  INC $95                                   ; $1B8571 |
  JMP code_1B84D0                           ; $1B8573 |

code_1B8576:
  LDX #$00                                  ; $1B8576 |
  LDA #$5A                                  ; $1B8578 |
  JSR code_3FF446                           ; $1B857A |
  LDA #$90                                  ; $1B857D |
  STA $0528                                 ; $1B857F |
  LDA #$80                                  ; $1B8582 |
  STA $0300                                 ; $1B8584 |
  LDA #$00                                  ; $1B8587 |
  STA $0348                                 ; $1B8589 |
  STA $0390                                 ; $1B858C |
  LDA #$FC                                  ; $1B858F |
  STA $0330                                 ; $1B8591 |
  LDA #$88                                  ; $1B8594 |
  STA $0378                                 ; $1B8596 |
code_1B8599:
  LDA $0330                                 ; $1B8599 |
  CMP #$B0                                  ; $1B859C |
  BEQ code_1B85B0                           ; $1B859E |
  DEC $0330                                 ; $1B85A0 |
  JSR code_1B86B8                           ; $1B85A3 |
  LDA #$2C                                  ; $1B85A6 |
  STA $97                                   ; $1B85A8 |
  JSR code_3FFCE7                           ; $1B85AA |
  JMP code_1B8599                           ; $1B85AD |

code_1B85B0:
  LDA #$06                                  ; $1B85B0 |
  STA $0480                                 ; $1B85B2 |
  LDA #$01                                  ; $1B85B5 |
  STA $0468                                 ; $1B85B7 |
code_1B85BA:
  DEC $0468                                 ; $1B85BA |
  BNE code_1B85CB                           ; $1B85BD |
  LDA #$28                                  ; $1B85BF |
  STA $0468                                 ; $1B85C1 |
  LDA #$59                                  ; $1B85C4 |
  LDX #$00                                  ; $1B85C6 |
  JSR code_3FF446                           ; $1B85C8 |
code_1B85CB:
  LDA $0558                                 ; $1B85CB |
  CMP #$59                                  ; $1B85CE |
  BNE code_1B8612                           ; $1B85D0 |
  LDA $0540                                 ; $1B85D2 |
  CMP #$04                                  ; $1B85D5 |
  BNE code_1B8612                           ; $1B85D7 |
  INC $0540                                 ; $1B85D9 |
  LDX #$00                                  ; $1B85DC |
  LDY $0480                                 ; $1B85DE |
  LDA $866B,y                               ; $1B85E1 |
  JSR code_3FF452                           ; $1B85E4 |
  LDA #$E5                                  ; $1B85E7 |
  STA $03D8,y                               ; $1B85E9 |
  LDA #$04                                  ; $1B85EC |
  STA $03F0,y                               ; $1B85EE |
  LDA $865F,y                               ; $1B85F1 |
  STA $03A8,y                               ; $1B85F4 |
  LDA $8665,y                               ; $1B85F7 |
  STA $03C0,y                               ; $1B85FA |
  LDA $8671,y                               ; $1B85FD |
  STA $0468,y                               ; $1B8600 |
  LDA #$60                                  ; $1B8603 |
  STA $0300,y                               ; $1B8605 |
  DEC $0480                                 ; $1B8608 |
  BNE code_1B8612                           ; $1B860B |
  LDA #$F0                                  ; $1B860D |
  JSR code_3FF6BC                           ; $1B860F |
code_1B8612:
  LDX $0480                                 ; $1B8612 |
  INX                                       ; $1B8615 |
  JSR code_3FF2A7                           ; $1B8616 |
  LDA $03F0,x                               ; $1B8619 |
  BPL code_1B8636                           ; $1B861C |
  LDA #$70                                  ; $1B861E |
  CMP $0378,x                               ; $1B8620 |
  BCS code_1B8636                           ; $1B8623 |
  STA $0378,x                               ; $1B8625 |
  LDA $0468,x                               ; $1B8628 |
  STA $0330,x                               ; $1B862B |
  LDA #$23                                  ; $1B862E |
  JSR code_3FF6BE                           ; $1B8630 |
  JMP code_1B8639                           ; $1B8633 |

code_1B8636:
  JSR code_3FF24B                           ; $1B8636 |
code_1B8639:
  LDA $0558                                 ; $1B8639 |
  CMP #$59                                  ; $1B863C |
  BNE code_1B864E                           ; $1B863E |
  LDA $0540                                 ; $1B8640 |
  CMP #$07                                  ; $1B8643 |
  BNE code_1B864E                           ; $1B8645 |
  LDX #$00                                  ; $1B8647 |
  LDA #$58                                  ; $1B8649 |
  JSR code_3FF446                           ; $1B864B |
code_1B864E:
  JSR code_1B86B8                           ; $1B864E |
  LDA #$2C                                  ; $1B8651 |
  STA $97                                   ; $1B8653 |
  JSR code_3FFCE7                           ; $1B8655 |
  LDA $0480                                 ; $1B8658 |
  BEQ code_1B8612                           ; $1B865B |
  JMP code_1B85BA                           ; $1B865D |

  db $F0, $2D, $69, $A5, $E1, $1E, $00, $01 ; $1B8660 |
  db $01, $01, $01, $02, $2F, $2E, $2B, $2D ; $1B8668 |
  db $2C, $2B, $8C, $84, $7C, $74, $6C, $64 ; $1B8670 |

code_1B8678:
  LDY $22                                   ; $1B8678 |
  LDA $8E26,y                               ; $1B867A |
  STA $02                                   ; $1B867D |
  LDA $8E2E,y                               ; $1B867F |
  STA $03                                   ; $1B8682 |
  LDY #$00                                  ; $1B8684 |
code_1B8686:
  LDA ($02),y                               ; $1B8686 |
  BMI code_1B86B7                           ; $1B8688 |
  STA $0780                                 ; $1B868A |
  INY                                       ; $1B868D |
  LDA ($02),y                               ; $1B868E |
  STA $0781                                 ; $1B8690 |
  LDA #$00                                  ; $1B8693 |
  STA $0782                                 ; $1B8695 |
  INY                                       ; $1B8698 |
  LDA ($02),y                               ; $1B8699 |
  STA $04                                   ; $1B869B |
  INY                                       ; $1B869D |
code_1B869E:
  LDA ($02),y                               ; $1B869E |
  STA $0783                                 ; $1B86A0 |
  LDA #$FF                                  ; $1B86A3 |
  STA $0784                                 ; $1B86A5 |
  STA $19                                   ; $1B86A8 |
  JSR code_3FFF1C                           ; $1B86AA |
  INY                                       ; $1B86AD |
  INC $0781                                 ; $1B86AE |
  DEC $04                                   ; $1B86B1 |
  BPL code_1B869E                           ; $1B86B3 |
  BMI code_1B8686                           ; $1B86B5 |
code_1B86B7:
  RTS                                       ; $1B86B7 |

code_1B86B8:
  LDY #$08                                  ; $1B86B8 |
code_1B86BA:
  LDA $0203,y                               ; $1B86BA |
  CLC                                       ; $1B86BD |
  ADC #$03                                  ; $1B86BE |
  STA $0203,y                               ; $1B86C0 |
  DEY                                       ; $1B86C3 |
  DEY                                       ; $1B86C4 |
  DEY                                       ; $1B86C5 |
  DEY                                       ; $1B86C6 |
  BPL code_1B86BA                           ; $1B86C7 |
  LDY #$1C                                  ; $1B86C9 |
code_1B86CB:
  LDA $020F,y                               ; $1B86CB |
  CLC                                       ; $1B86CE |
  ADC #$02                                  ; $1B86CF |
  STA $020F,y                               ; $1B86D1 |
  DEY                                       ; $1B86D4 |
  DEY                                       ; $1B86D5 |
  DEY                                       ; $1B86D6 |
  DEY                                       ; $1B86D7 |
  BPL code_1B86CB                           ; $1B86D8 |
  RTS                                       ; $1B86DA |

code_1B86DB:
  LDY $55                                   ; $1B86DB |
  CPY #$14                                  ; $1B86DD |
  BEQ code_1B871E                           ; $1B86DF |
  LDA $2A                                   ; $1B86E1 |
  CMP $8989,y                               ; $1B86E3 |
  BNE code_1B871E                           ; $1B86E6 |
  LDA $8975,y                               ; $1B86E8 |
  CMP $69                                   ; $1B86EB |
  BNE code_1B871E                           ; $1B86ED |
  INC $55                                   ; $1B86EF |
  TYA                                       ; $1B86F1 |
  ASL                                       ; $1B86F2 |
  ASL                                       ; $1B86F3 |
  STA $00                                   ; $1B86F4 |
  ASL                                       ; $1B86F6 |
  ADC $00                                   ; $1B86F7 |
  TAY                                       ; $1B86F9 |
  LDX #$00                                  ; $1B86FA |
code_1B86FC:
  LDA $899D,y                               ; $1B86FC |
  STA $0600,x                               ; $1B86FF |
  STA $0620,x                               ; $1B8702 |
  INY                                       ; $1B8705 |
  INX                                       ; $1B8706 |
  CPX #$04                                  ; $1B8707 |
  BNE code_1B86FC                           ; $1B8709 |
code_1B870B:
  LDA $899D,y                               ; $1B870B |
  STA $0604,x                               ; $1B870E |
  STA $0624,x                               ; $1B8711 |
  INY                                       ; $1B8714 |
  INX                                       ; $1B8715 |
  CPX #$0C                                  ; $1B8716 |
  BNE code_1B870B                           ; $1B8718 |
  LDA #$FF                                  ; $1B871A |
  STA $18                                   ; $1B871C |
code_1B871E:
  RTS                                       ; $1B871E |

code_1B871F:
  LDA $54                                   ; $1B871F |
  BEQ code_1B8735                           ; $1B8721 |
  DEC $54                                   ; $1B8723 |
  BNE code_1B871E                           ; $1B8725 |
code_1B8727:
  LDY #$2A                                  ; $1B8727 |
code_1B8729:
  LDA $8AC1,y                               ; $1B8729 |
  STA $0780,y                               ; $1B872C |
  DEY                                       ; $1B872F |
  BPL code_1B8729                           ; $1B8730 |
  STY $19                                   ; $1B8732 |
  RTS                                       ; $1B8734 |

code_1B8735:
  LDY #$00                                  ; $1B8735 |
  LDA ($52),y                               ; $1B8737 |
  CMP #$7F                                  ; $1B8739 |
  BEQ code_1B875F                           ; $1B873B |
  CMP #$FF                                  ; $1B873D |
  BEQ code_1B87A0                           ; $1B873F |
  LDA ($52),y                               ; $1B8741 |
  BPL code_1B8778                           ; $1B8743 |
  STA $54                                   ; $1B8745 |
  INY                                       ; $1B8747 |
  LDA ($52),y                               ; $1B8748 |
  STA $50                                   ; $1B874A |
  INY                                       ; $1B874C |
  LDA ($52),y                               ; $1B874D |
  STA $51                                   ; $1B874F |
  LDA $52                                   ; $1B8751 |
  CLC                                       ; $1B8753 |
  ADC #$03                                  ; $1B8754 |
  STA $52                                   ; $1B8756 |
  LDA $53                                   ; $1B8758 |
  ADC #$00                                  ; $1B875A |
  STA $53                                   ; $1B875C |
  RTS                                       ; $1B875E |

code_1B875F:
  INY                                       ; $1B875F |
  LDA ($52),y                               ; $1B8760 |
  STA $50                                   ; $1B8762 |
  INY                                       ; $1B8764 |
  LDA ($52),y                               ; $1B8765 |
  STA $51                                   ; $1B8767 |
  LDA $52                                   ; $1B8769 |
  CLC                                       ; $1B876B |
  ADC #$03                                  ; $1B876C |
  STA $52                                   ; $1B876E |
  LDA $53                                   ; $1B8770 |
  ADC #$00                                  ; $1B8772 |
  STA $53                                   ; $1B8774 |
  LDY #$00                                  ; $1B8776 |
code_1B8778:
  LDA $50                                   ; $1B8778 |
  STA $0780                                 ; $1B877A |
  LDA $51                                   ; $1B877D |
  STA $0781                                 ; $1B877F |
  STY $0782                                 ; $1B8782 |
  LDA ($52),y                               ; $1B8785 |
  STA $0783                                 ; $1B8787 |
  LDA #$FF                                  ; $1B878A |
  STA $0784                                 ; $1B878C |
  STA $19                                   ; $1B878F |
  INC $51                                   ; $1B8791 |
  LDA $52                                   ; $1B8793 |
  CLC                                       ; $1B8795 |
  ADC #$01                                  ; $1B8796 |
  STA $52                                   ; $1B8798 |
  LDA $53                                   ; $1B879A |
  ADC #$00                                  ; $1B879C |
  STA $53                                   ; $1B879E |
code_1B87A0:
  RTS                                       ; $1B87A0 |

code_1B87A1:
  LDX #$00                                  ; $1B87A1 |
code_1B87A3:
  LDA $0468,x                               ; $1B87A3 |
  BNE code_1B87B5                           ; $1B87A6 |
  JSR code_3FF22D                           ; $1B87A8 |
  LDA $0348,x                               ; $1B87AB |
  BEQ code_1B87C2                           ; $1B87AE |
  LDA #$8D                                  ; $1B87B0 |
  STA $0468,x                               ; $1B87B2 |
code_1B87B5:
  DEC $0468,x                               ; $1B87B5 |
  BNE code_1B87C2                           ; $1B87B8 |
  LDA #$00                                  ; $1B87BA |
  STA $0330,x                               ; $1B87BC |
  STA $0348,x                               ; $1B87BF |
code_1B87C2:
  INX                                       ; $1B87C2 |
  INX                                       ; $1B87C3 |
  CPX #$04                                  ; $1B87C4 |
  BNE code_1B87A3                           ; $1B87C6 |
  RTS                                       ; $1B87C8 |

code_1B87C9:
  LDA $95                                   ; $1B87C9 |
  LSR                                       ; $1B87CB |
  LSR                                       ; $1B87CC |
  LSR                                       ; $1B87CD |
  LSR                                       ; $1B87CE |
  AND #$03                                  ; $1B87CF |
  TAY                                       ; $1B87D1 |
  LDA $0332                                 ; $1B87D2 |
  CLC                                       ; $1B87D5 |
  ADC $8AB5,y                               ; $1B87D6 |
  STA $0332                                 ; $1B87D9 |
  RTS                                       ; $1B87DC |

code_1B87DD:
  LDA $95                                   ; $1B87DD |
  LSR                                       ; $1B87DF |
  LSR                                       ; $1B87E0 |
  LSR                                       ; $1B87E1 |
  LSR                                       ; $1B87E2 |
  AND #$03                                  ; $1B87E3 |
  TAY                                       ; $1B87E5 |
  LDA $037A                                 ; $1B87E6 |
  CLC                                       ; $1B87E9 |
  ADC $8AB5,y                               ; $1B87EA |
  STA $037A                                 ; $1B87ED |
  RTS                                       ; $1B87F0 |

code_1B87F1:
  LDA #$13                                  ; $1B87F1 |
  STA $22                                   ; $1B87F3 |
  BNE code_1B87FB                           ; $1B87F5 |
code_1B87F7:
  LDA #$14                                  ; $1B87F7 |
  STA $22                                   ; $1B87F9 |
code_1B87FB:
  JSR code_3EC369                           ; $1B87FB |
  JSR code_3EDA05                           ; $1B87FE |
  JSR code_3EC373                           ; $1B8801 |
  LDA #$00                                  ; $1B8804 |
  STA $24                                   ; $1B8806 |
code_1B8808:
  JSR code_3ECFB1                           ; $1B8808 |
  JSR code_3FFF1C                           ; $1B880B |
  INC $24                                   ; $1B880E |
  LDA $24                                   ; $1B8810 |
  AND #$1F                                  ; $1B8812 |
  STA $24                                   ; $1B8814 |
  BNE code_1B8808                           ; $1B8816 |
  LDA #$00                                  ; $1B8818 |
  STA $F9                                   ; $1B881A |
  STA $FC                                   ; $1B881C |
  STA $FD                                   ; $1B881E |
  STA $FA                                   ; $1B8820 |
  STA $0130                                 ; $1B8822 |
  STA $0131                                 ; $1B8825 |
  STA $0132                                 ; $1B8828 |
  RTS                                       ; $1B882B |

code_1B882C:
  LDA $69                                   ; $1B882C |
  AND #$03                                  ; $1B882E |
  CMP #$03                                  ; $1B8830 |
  BNE code_1B8865                           ; $1B8832 |
  LDA $24                                   ; $1B8834 |
  LSR                                       ; $1B8836 |
  LSR                                       ; $1B8837 |
  LSR                                       ; $1B8838 |
  STA $29                                   ; $1B8839 |
  LDA $24                                   ; $1B883B |
  AND #$07                                  ; $1B883D |
  ASL                                       ; $1B883F |
  ASL                                       ; $1B8840 |
  ASL                                       ; $1B8841 |
  ORA $29                                   ; $1B8842 |
  STA $29                                   ; $1B8844 |
  CMP #$18                                  ; $1B8846 |
  BCS code_1B8857                           ; $1B8848 |
  LDY #$00                                  ; $1B884A |
  LDA $1C                                   ; $1B884C |
  AND #$01                                  ; $1B884E |
  BEQ code_1B8854                           ; $1B8850 |
  LDY #$04                                  ; $1B8852 |
code_1B8854:
  JSR code_3FE286                           ; $1B8854 |
code_1B8857:
  DEC $24                                   ; $1B8857 |
  LDA $24                                   ; $1B8859 |
  AND #$3F                                  ; $1B885B |
  STA $24                                   ; $1B885D |
  CMP #$3F                                  ; $1B885F |
  BNE code_1B8865                           ; $1B8861 |
  DEC $1C                                   ; $1B8863 |
code_1B8865:
  RTS                                       ; $1B8865 |

code_1B8866:
  LDX #$00                                  ; $1B8866 |
code_1B8868:
  LDA $8875,y                               ; $1B8868 |
  STA $0620,x                               ; $1B886B |
  INY                                       ; $1B886E |
  INX                                       ; $1B886F |
  CPX #$20                                  ; $1B8870 |
  BNE code_1B8868                           ; $1B8872 |
  RTS                                       ; $1B8874 |

  db $0F, $20, $21, $1C, $0F, $20, $1A, $0A ; $1B8875 |
  db $0F, $20, $2B, $1A, $0F, $20, $21, $1C ; $1B887D |
  db $0F, $0F, $16, $2C, $0F, $0F, $37, $27 ; $1B8885 |
  db $0F, $0F, $35, $15, $0F, $0F, $10, $11 ; $1B888D |
  db $0F, $30, $2C, $1C, $0F, $30, $10, $1C ; $1B8895 |
  db $0F, $30, $2C, $1C, $0F, $30, $2C, $1C ; $1B889D |
  db $0F, $0F, $2C, $11, $0F, $0F, $30, $37 ; $1B88A5 |
  db $0F, $0F, $10, $00, $0F, $0F, $10, $11 ; $1B88AD |
  db $0F, $30, $2C, $11, $0F, $36, $26, $16 ; $1B88B5 |
  db $0F, $16, $26, $36, $0F, $16, $16, $16 ; $1B88BD |
  db $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F ; $1B88C5 |
  db $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F ; $1B88CD |
  db $0F, $20, $20, $20, $0F, $20, $20, $20 ; $1B88D5 |
  db $0F, $20, $20, $20, $0F, $20, $20, $20 ; $1B88DD |
  db $0F, $0F, $20, $11, $0F, $0F, $0F, $0F ; $1B88E5 |
  db $0F, $0F, $20, $16, $0F, $0F, $0F, $0F ; $1B88ED |
  db $0F, $30, $31, $2C, $0F, $30, $0F, $31 ; $1B88F5 |
  db $0F, $21, $31, $2B, $0F, $0F, $2A, $1A ; $1B88FD |
  db $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F ; $1B8905 |
  db $0F, $20, $38, $36, $0F, $0F, $0F, $0F ; $1B890D |
  db $0F, $16, $11, $01, $0F, $20, $11, $01 ; $1B8915 |
  db $0F, $20, $37, $27, $0F, $20, $20, $20 ; $1B891D |
  db $0F, $20, $11, $01, $0F, $20, $37, $27 ; $1B8925 |
  db $0F, $20, $24, $16, $0F, $20, $20, $20 ; $1B892D |
  db $0F, $2C, $11, $01, $0F, $0F, $0F, $0F ; $1B8935 |
  db $0F, $0F, $0F, $0F, $0F, $20, $20, $20 ; $1B893D |
  db $0F, $2C, $11, $01, $0F, $20, $37, $27 ; $1B8945 |
  db $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F ; $1B894D |
  db $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F ; $1B8955 |
  db $0F, $20, $10, $17, $0F, $20, $0F, $0F ; $1B895D |
  db $0F, $0F, $11, $01, $0F, $27, $37, $20 ; $1B8965 |
  db $0F, $0F, $37, $27, $0F, $0F, $2C, $11 ; $1B896D |
  db $FF, $C0, $80, $40, $FF, $C0, $80, $40 ; $1B8975 |
  db $FF, $C0, $80, $40, $FF, $C0, $FF, $FF ; $1B897D |
  db $80, $FF, $80, $FF, $09, $09, $09, $09 ; $1B8985 |
  db $08, $08, $08, $08, $07, $07, $07, $07 ; $1B898D |
  db $06, $06, $03, $02, $02, $01, $01, $00 ; $1B8995 |
  db $0F, $30, $21, $11, $0F, $30, $21, $11 ; $1B899D |
  db $0F, $20, $21, $11, $0F, $30, $22, $13 ; $1B89A5 |
  db $0F, $30, $22, $13, $0F, $20, $22, $13 ; $1B89AD |
  db $0F, $30, $23, $14, $0F, $30, $23, $14 ; $1B89B5 |
  db $0F, $20, $23, $14, $0F, $34, $24, $14 ; $1B89BD |
  db $0F, $34, $24, $14, $0F, $20, $24, $14 ; $1B89C5 |
  db $0F, $25, $15, $06, $0F, $25, $15, $06 ; $1B89CD |
  db $0F, $20, $15, $06, $0F, $26, $16, $07 ; $1B89D5 |
  db $0F, $26, $16, $07, $0F, $20, $16, $07 ; $1B89DD |
  db $0F, $27, $17, $07, $0F, $27, $17, $07 ; $1B89E5 |
  db $0F, $20, $17, $07, $0F, $26, $16, $06 ; $1B89ED |
  db $0F, $26, $16, $06, $0F, $20, $16, $06 ; $1B89F5 |
  db $0F, $25, $15, $05, $0F, $25, $15, $05 ; $1B89FD |
  db $0F, $20, $15, $05, $0F, $24, $15, $04 ; $1B8A05 |
  db $0F, $24, $15, $04, $0F, $20, $15, $04 ; $1B8A0D |
  db $0F, $23, $13, $03, $0F, $23, $13, $03 ; $1B8A15 |
  db $0F, $20, $13, $03, $0F, $12, $02, $01 ; $1B8A1D |
  db $0F, $12, $13, $01, $0F, $20, $13, $01 ; $1B8A25 |
  db $0F, $11, $01, $0C, $0F, $11, $01, $0C ; $1B8A2D |
  db $0F, $20, $01, $0C, $0F, $20, $0C, $27 ; $1B8A35 |
  db $0F, $20, $0C, $22, $0F, $20, $0C, $23 ; $1B8A3D |
  db $0F, $20, $01, $27, $0F, $20, $01, $23 ; $1B8A45 |
  db $0F, $20, $01, $0C, $0F, $21, $11, $27 ; $1B8A4D |
  db $0F, $21, $11, $01, $0F, $20, $11, $01 ; $1B8A55 |
  db $0F, $31, $11, $01, $0F, $31, $11, $01 ; $1B8A5D |
  db $0F, $20, $11, $01, $0F, $20, $21, $11 ; $1B8A65 |
  db $0F, $20, $21, $11, $0F, $20, $21, $11 ; $1B8A6D |
  db $0F, $20, $21, $1C, $0F, $21, $1B, $0B ; $1B8A75 |
  db $0F, $20, $21, $1C, $0F, $20, $21, $16 ; $1B8A7D |
  db $0F, $21, $1A, $0A, $0F, $20, $21, $1C ; $1B8A85 |
  db $0F, $36, $27, $17, $0F, $36, $27, $17 ; $1B8A8D |
  db $0F, $27, $17, $07, $0F, $36, $27, $17 ; $1B8A95 |
  db $0F, $0F, $17, $07, $0F, $0F, $36, $27 ; $1B8A9D |
  db $0F, $0F, $27, $36, $0F, $0F, $17, $27 ; $1B8AA5 |
  db $0F, $0F, $28, $37, $0F, $0F, $16, $20 ; $1B8AAD |
  db $FF, $01, $01, $FF, $84, $00, $48, $01 ; $1B8AB5 |
  db $29, $00, $2A, $08, $22, $2B, $0A, $00 ; $1B8ABD |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B8AC5 |
  db $00, $00, $22, $4B, $0A, $00, $00, $00 ; $1B8ACD |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B8AD5 |
  db $22, $6B, $0A, $00, $00, $00, $00, $00 ; $1B8ADD |
  db $00, $00, $00, $00, $00, $00, $FF, $22 ; $1B8AE5 |
  db $4C, $19, $15, $0A, $17, $17, $0E, $1B ; $1B8AED |
  db $B0, $22, $4D, $0B, $0A, $16, $0B, $18 ; $1B8AF5 |
  db $18, $B0, $22, $2C, $1C, $24, $14, $18 ; $1B8AFD |
  db $0B, $0A, $1C, $11, $12, $7F, $22, $6C ; $1B8B05 |
  db $12, $17, $0A, $0F, $14, $12, $17, $10 ; $1B8B0D |
  db $B0, $22, $2B, $18, $0B, $13, $0E, $0C ; $1B8B15 |
  db $1D, $7F, $22, $6C, $0D, $0E, $1C, $12 ; $1B8B1D |
  db $10, $17, $0E, $1B, $B0, $22, $2C, $1D ; $1B8B25 |
  db $18, $1C, $11, $12, $0C, $11, $0A, $17 ; $1B8B2D |
  db $7F, $22, $6E, $23, $12, $23, $12, $B0 ; $1B8B35 |
  db $22, $2C, $14, $24, $11, $0A, $22, $0A ; $1B8B3D |
  db $1D, $18, $7F, $22, $6E, $12, $14, $14 ; $1B8B45 |
  db $12, $B0, $22, $2B, $1C, $0C, $1B, $18 ; $1B8B4D |
  db $15, $15, $7F, $22, $6C, $0D, $0E, $1C ; $1B8B55 |
  db $12, $10, $17, $0E, $1B, $B0, $22, $2C ; $1B8B5D |
  db $16, $0A, $0C, $11, $0A, $14, $18, $7F ; $1B8B65 |
  db $22, $6C, $16, $0A, $16, $12, $16, $1E ; $1B8B6D |
  db $25, $B0, $22, $2C, $16, $12, $1C, $1C ; $1B8B75 |
  db $24, $02, $01, $7F, $22, $6D, $1D, $0A ; $1B8B7D |
  db $14, $0A, $19, $B0, $22, $2B, $1C, $19 ; $1B8B85 |
  db $0E, $0C, $12, $0A, $15, $7F, $22, $6C ; $1B8B8D |
  db $0D, $0E, $1C, $12, $10, $17, $0E, $1B ; $1B8B95 |
  db $B0, $22, $2B, $22, $0A, $1C, $1E, $14 ; $1B8B9D |
  db $12, $0C, $11, $12, $7F, $22, $6B, $12 ; $1B8BA5 |
  db $17, $0A, $0F, $14, $12, $17, $10, $B0 ; $1B8BAD |
  db $22, $2B, $1C, $18, $1E, $17, $0D, $7F ; $1B8BB5 |
  db $22, $6C, $0C, $18, $16, $19, $18, $1C ; $1B8BBD |
  db $0E, $1B, $B0, $22, $2B, $18, $13, $0A ; $1B8BC5 |
  db $15, $12, $17, $7F, $22, $6B, $0B, $1E ; $1B8BCD |
  db $17, $00, $0B, $1E, $17, $B0, $22, $4B ; $1B8BD5 |
  db $19, $1B, $18, $10, $1B, $0A, $16, $16 ; $1B8BDD |
  db $0E, $1B, $B0, $22, $2E, $1D, $24, $14 ; $1B8BE5 |
  db $7F, $22, $6B, $14, $0E, $1B, $18, $00 ; $1B8BED |
  db $0C, $11, $0A, $17, $B0, $FF, $38, $00 ; $1B8BF5 |
  db $00, $70, $B8, $00, $00, $58, $B8, $00 ; $1B8BFD |
  db $00, $F8, $18, $01, $00, $38, $18, $01 ; $1B8C05 |
  db $00, $B8, $58, $01, $00, $18, $58, $01 ; $1B8C0D |
  db $00, $A8, $90, $01, $00, $78, $90, $01 ; $1B8C15 |
  db $00, $E8, $E0, $01, $00, $50, $E0, $01 ; $1B8C1D |
  db $00, $C8, $20, $00, $1F, $00, $00, $00 ; $1B8C25 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B8C2D |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B8C35 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B8C3D |
  db $00, $00, $00, $00, $00, $FF, $0F, $0F ; $1B8C45 |
  db $2C, $11, $0F, $0F, $30, $37, $0F, $0F ; $1B8C4D |
  db $20, $26, $0F, $0F, $20, $29, $0F, $0F ; $1B8C55 |
  db $38, $29, $0F, $0F, $27, $2C, $0F, $0F ; $1B8C5D |
  db $20, $16, $0F, $0F, $20, $10, $0F, $0F ; $1B8C65 |
  db $20, $27, $0F, $20, $2C, $11, $0F, $0F ; $1B8C6D |
  db $28, $16, $0F, $0F, $20, $29, $0F, $0F ; $1B8C75 |
  db $20, $10, $0F, $0F, $20, $21, $0F, $0F ; $1B8C7D |
  db $20, $1C, $0F, $0F, $20, $16, $0F, $0F ; $1B8C85 |
  db $20, $16, $0F, $0F, $20, $10, $2D, $2E ; $1B8C8D |
  db $2B, $2C, $27, $29, $2A, $28, $21, $90 ; $1B8C95 |
  db $04, $8D, $8E, $F9, $F1, $F4, $21, $D0 ; $1B8C9D |
  db $09, $81, $91, $88, $86, $87, $93, $9A ; $1B8CA5 |
  db $8C, $80, $8D, $22, $10, $08, $98, $8E ; $1B8CAD |
  db $92, $87, $88, $93, $80, $8A, $80, $22 ; $1B8CB5 |
  db $30, $06, $84, $8D, $8E, $8C, $8E, $93 ; $1B8CBD |
  db $8E, $FF, $21, $90, $04, $8D, $8E, $F9 ; $1B8CC5 |
  db $F1, $F8, $21, $D0, $07, $93, $8E, $80 ; $1B8CCD |
  db $83, $9A, $8C, $80, $8D, $22, $10, $06 ; $1B8CD5 |
  db $80, $93, $92, $94, $92, $87, $88, $22 ; $1B8CDD |
  db $30, $06, $8E, $8E, $93, $92, $94, $8A ; $1B8CE5 |
  db $80, $FF, $21, $90, $04, $8D, $8E, $F9 ; $1B8CED |
  db $F1, $F6, $21, $D0, $08, $83, $91, $88 ; $1B8CF5 |
  db $8B, $8B, $9A, $8C, $80, $8D, $22, $10 ; $1B8CFD |
  db $07, $8C, $80, $92, $80, $98, $94, $8A ; $1B8D05 |
  db $88, $22, $30, $04, $87, $8E, $92, $87 ; $1B8D0D |
  db $88, $FF, $21, $90, $04, $8D, $8E, $F9 ; $1B8D15 |
  db $F1, $F5, $21, $D0, $0A, $8F, $87, $80 ; $1B8D1D |
  db $91, $80, $8E, $87, $9A, $8C, $80, $8D ; $1B8D25 |
  db $22, $10, $07, $93, $80, $8A, $80, $98 ; $1B8D2D |
  db $94, $8A, $88, $22, $30, $04, $84, $81 ; $1B8D35 |
  db $80, $91, $80, $FF, $21, $90, $04, $8D ; $1B8D3D |
  db $8E, $F9, $F1, $F7, $21, $D0, $07, $91 ; $1B8D45 |
  db $88, $8D, $86, $9A, $8C, $80, $8D, $22 ; $1B8D4D |
  db $10, $05, $87, $88, $91, $8E, $8C, $88 ; $1B8D55 |
  db $22, $30, $05, $94, $82, $87, $88, $83 ; $1B8D5D |
  db $80, $FF, $21, $90, $04, $8D, $8E, $F9 ; $1B8D65 |
  db $F2, $8E, $21, $D0, $07, $83, $94, $92 ; $1B8D6D |
  db $93, $9A, $8C, $80, $8D, $22, $10, $06 ; $1B8D75 |
  db $98, $94, $94, $92, $94, $8A, $84, $22 ; $1B8D7D |
  db $30, $05, $8C, $94, $91, $80, $93, $80 ; $1B8D85 |
  db $FF, $21, $90, $04, $8D, $8E, $F9, $F2 ; $1B8D8D |
  db $F0, $21, $D0, $07, $83, $88, $95, $84 ; $1B8D95 |
  db $9A, $8C, $80, $8D, $22, $10, $05, $92 ; $1B8D9D |
  db $94, $86, $94, $91, $94, $22, $30, $07 ; $1B8DA5 |
  db $8D, $80, $8A, $80, $98, $80, $8C, $80 ; $1B8DAD |
  db $FF, $21, $90, $04, $8D, $8E, $F9, $F2 ; $1B8DB5 |
  db $F1, $21, $D0, $08, $92, $8A, $94, $8B ; $1B8DBD |
  db $8B, $9A, $8C, $80, $8D, $22, $10, $08 ; $1B8DC5 |
  db $93, $8E, $92, $87, $88, $98, $94, $8A ; $1B8DCD |
  db $88, $22, $30, $06, $8C, $88, $98, $80 ; $1B8DD5 |
  db $82, $87, $88, $FF, $21, $90, $04, $9A ; $1B8DDD |
  db $9A, $9A, $9A, $9A, $21, $D0, $0A, $9A ; $1B8DE5 |
  db $9A, $9A, $9A, $9A, $9A, $9A, $9A, $9A ; $1B8DED |
  db $9A, $9A, $22, $10, $0A, $9A, $9A, $9A ; $1B8DF5 |
  db $9A, $9A, $9A, $9A, $9A, $9A, $9A, $9A ; $1B8DFD |
  db $22, $30, $0A, $9A, $9A, $9A, $9A, $9A ; $1B8E05 |
  db $9A, $9A, $9A, $9A, $9A, $9A, $FF, $21 ; $1B8E0D |
  db $AD, $04, $92, $93, $80, $85, $85, $FF ; $1B8E15 |
  db $21, $AD, $04, $9A, $9A, $9A, $9A, $9A ; $1B8E1D |
  db $FF, $9B, $C7, $EF, $17, $41, $67, $8E ; $1B8E25 |
  db $B6, $8C, $8C, $8C, $8D, $8D, $8D, $8D ; $1B8E2D |
  db $8D                                    ; $1B8E35 |

code_1B8E36:
  LDA #$00                                  ; $1B8E36 |
  STA $9A                                   ; $1B8E38 |
  JSR code_3EC457                           ; $1B8E3A |
  LDA #$04                                  ; $1B8E3D |
  STA $97                                   ; $1B8E3F |
  JSR code_3EC421                           ; $1B8E41 |
  JSR code_3EC438                           ; $1B8E44 |
  JSR code_3FFF1C                           ; $1B8E47 |
  LDA #$05                                  ; $1B8E4A |
  STA $2A                                   ; $1B8E4C |
  LDX #$55                                  ; $1B8E4E |
  JSR code_1B87F1                           ; $1B8E50 |
  LDY #$60                                  ; $1B8E53 |
  JSR code_1B8866                           ; $1B8E55 |
  LDY #$0A                                  ; $1B8E58 |
code_1B8E5A:
  LDA $9422,y                               ; $1B8E5A |
  STA $0780,y                               ; $1B8E5D |
  DEY                                       ; $1B8E60 |
  BPL code_1B8E5A                           ; $1B8E61 |
  STY $19                                   ; $1B8E63 |
  JSR code_3FFF1C                           ; $1B8E65 |
  LDX #$78                                  ; $1B8E68 |
  JSR code_1B9332                           ; $1B8E6A |
  JSR code_1B9251                           ; $1B8E6D |
  LDA #$0A                                  ; $1B8E70 |
  JSR code_3FF6BC                           ; $1B8E72 |
  JSR code_3EC451                           ; $1B8E75 |
  LDX #$78                                  ; $1B8E78 |
  JSR code_1B9332                           ; $1B8E7A |
  JSR code_1B9251                           ; $1B8E7D |
  JSR code_3EC457                           ; $1B8E80 |
  JSR code_3FFF1C                           ; $1B8E83 |
  LDA #$00                                  ; $1B8E86 |
  STA $2A                                   ; $1B8E88 |
  LDX #$55                                  ; $1B8E8A |
  JSR code_1B87F1                           ; $1B8E8C |
  LDY #$80                                  ; $1B8E8F |
  JSR code_1B8866                           ; $1B8E91 |
  JSR code_3FFF1C                           ; $1B8E94 |
  LDY #$00                                  ; $1B8E97 |
  JSR code_1B9388                           ; $1B8E99 |
  JSR code_3EC451                           ; $1B8E9C |
  LDX #$3C                                  ; $1B8E9F |
  JSR code_1B9332                           ; $1B8EA1 |
  JSR code_1B9251                           ; $1B8EA4 |
  JSR code_1B93C2                           ; $1B8EA7 |
  LDX #$B4                                  ; $1B8EAA |
  JSR code_1B9332                           ; $1B8EAC |
  JSR code_1B9251                           ; $1B8EAF |
  LDY #$01                                  ; $1B8EB2 |
  LDX #$3C                                  ; $1B8EB4 |
  JSR code_1B92D0                           ; $1B8EB6 |
  LDX #$03                                  ; $1B8EB9 |
  LDY #$BA                                  ; $1B8EBB |
code_1B8EBD:
  TYA                                       ; $1B8EBD |
  STA $06F0,x                               ; $1B8EBE |
  LDA #$00                                  ; $1B8EC1 |
  STA $06F4,x                               ; $1B8EC3 |
  STA $06F8,x                               ; $1B8EC6 |
  DEY                                       ; $1B8EC9 |
  DEX                                       ; $1B8ECA |
  BPL code_1B8EBD                           ; $1B8ECB |
  LDX #$78                                  ; $1B8ECD |
  JSR code_1B9332                           ; $1B8ECF |
  JSR code_1B9251                           ; $1B8ED2 |
  LDY #$02                                  ; $1B8ED5 |
  LDX #$B4                                  ; $1B8ED7 |
  JSR code_1B92D0                           ; $1B8ED9 |
  LDY #$03                                  ; $1B8EDC |
  LDX #$3C                                  ; $1B8EDE |
  JSR code_1B92D0                           ; $1B8EE0 |
  LDX #$00                                  ; $1B8EE3 |
  JSR code_1B92F0                           ; $1B8EE5 |
  LDX #$28                                  ; $1B8EE8 |
  JSR code_1B9332                           ; $1B8EEA |
  JSR code_1B9251                           ; $1B8EED |
  LDX #$01                                  ; $1B8EF0 |
  JSR code_1B92F0                           ; $1B8EF2 |
  LDX #$28                                  ; $1B8EF5 |
  JSR code_1B9332                           ; $1B8EF7 |
  JSR code_1B9251                           ; $1B8EFA |
  LDX #$02                                  ; $1B8EFD |
  JSR code_1B92F0                           ; $1B8EFF |
  JSR code_1B9319                           ; $1B8F02 |
  LDY #$04                                  ; $1B8F05 |
  LDX #$14                                  ; $1B8F07 |
  JSR code_1B92D0                           ; $1B8F09 |
  JSR code_1B9319                           ; $1B8F0C |
  JSR code_1B9319                           ; $1B8F0F |
  JSR code_1B9319                           ; $1B8F12 |
  LDY #$05                                  ; $1B8F15 |
  LDX #$14                                  ; $1B8F17 |
  JSR code_1B92D0                           ; $1B8F19 |
  JSR code_1B9319                           ; $1B8F1C |
  JSR code_1B9319                           ; $1B8F1F |
  JSR code_1B9319                           ; $1B8F22 |
  JSR code_3EC457                           ; $1B8F25 |
  LDA #$04                                  ; $1B8F28 |
  STA $97                                   ; $1B8F2A |
  JSR code_3EC421                           ; $1B8F2C |
  JSR code_3EC438                           ; $1B8F2F |
  JSR code_3FFF1C                           ; $1B8F32 |
  LDA #$01                                  ; $1B8F35 |
  STA $2A                                   ; $1B8F37 |
  LDX #$56                                  ; $1B8F39 |
  JSR code_1B87F1                           ; $1B8F3B |
  LDY #$A0                                  ; $1B8F3E |
  JSR code_1B8866                           ; $1B8F40 |
  LDX #$00                                  ; $1B8F43 |
  LDA #$60                                  ; $1B8F45 |
  STA $0300                                 ; $1B8F47 |
  STA $0301                                 ; $1B8F4A |
  LDA #$80                                  ; $1B8F4D |
  STA $0528                                 ; $1B8F4F |
  STA $0529                                 ; $1B8F52 |
  LDA #$33                                  ; $1B8F55 |
  JSR code_3FF446                           ; $1B8F57 |
  LDA #$47                                  ; $1B8F5A |
  STA $0378                                 ; $1B8F5C |
  LDA #$80                                  ; $1B8F5F |
  STA $0330                                 ; $1B8F61 |
  STA $0331                                 ; $1B8F64 |
  LDA #$00                                  ; $1B8F67 |
  STA $0390                                 ; $1B8F69 |
  STA $0348                                 ; $1B8F6C |
  STA $0391                                 ; $1B8F6F |
  STA $0349                                 ; $1B8F72 |
  INX                                       ; $1B8F75 |
  LDA #$07                                  ; $1B8F76 |
  JSR code_3FF446                           ; $1B8F78 |
  LDA #$77                                  ; $1B8F7B |
  STA $0379                                 ; $1B8F7D |
  JSR code_3FFCE3                           ; $1B8F80 |
  LDA #$00                                  ; $1B8F83 |
  STA $9A                                   ; $1B8F85 |
  LDX #$60                                  ; $1B8F87 |
  JSR code_1B9332                           ; $1B8F89 |
  JSR code_1B9251                           ; $1B8F8C |
  JSR code_3EC451                           ; $1B8F8F |
  LDY #$06                                  ; $1B8F92 |
  LDX #$B4                                  ; $1B8F94 |
  JSR code_1B92D0                           ; $1B8F96 |
  LDY #$07                                  ; $1B8F99 |
  LDX #$14                                  ; $1B8F9B |
  JSR code_1B92D0                           ; $1B8F9D |
  LDX #$00                                  ; $1B8FA0 |
  LDA #$08                                  ; $1B8FA2 |
  JSR code_3FF446                           ; $1B8FA4 |
code_1B8FA7:
  LDX #$01                                  ; $1B8FA7 |
  JSR code_1B9332                           ; $1B8FA9 |
  LDA $0540                                 ; $1B8FAC |
  CMP #$07                                  ; $1B8FAF |
  BNE code_1B8FA7                           ; $1B8FB1 |
  LDX #$00                                  ; $1B8FB3 |
  LDA #$38                                  ; $1B8FB5 |
  JSR code_3FF446                           ; $1B8FB7 |
  LDA #$00                                  ; $1B8FBA |
  STA $08                                   ; $1B8FBC |
  STA $09                                   ; $1B8FBE |
code_1B8FC0:
  LDY $08                                   ; $1B8FC0 |
  LDX #$00                                  ; $1B8FC2 |
code_1B8FC4:
  LDA $948B,y                               ; $1B8FC4 |
  STA $0600,x                               ; $1B8FC7 |
  INY                                       ; $1B8FCA |
  INX                                       ; $1B8FCB |
  CPX #$20                                  ; $1B8FCC |
  BNE code_1B8FC4                           ; $1B8FCE |
  LDA #$FF                                  ; $1B8FD0 |
  STA $18                                   ; $1B8FD2 |
  CPY #$60                                  ; $1B8FD4 |
  BNE code_1B8FDA                           ; $1B8FD6 |
  LDY #$00                                  ; $1B8FD8 |
code_1B8FDA:
  STY $08                                   ; $1B8FDA |
  LDX #$01                                  ; $1B8FDC |
  JSR code_1B9332                           ; $1B8FDE |
  JSR code_1B9251                           ; $1B8FE1 |
  DEC $09                                   ; $1B8FE4 |
  BNE code_1B8FC0                           ; $1B8FE6 |
  JSR code_3EC457                           ; $1B8FE8 |
  LDA #$04                                  ; $1B8FEB |
  STA $97                                   ; $1B8FED |
  JSR code_3EC421                           ; $1B8FEF |
  JSR code_3EC438                           ; $1B8FF2 |
  JSR code_3FFF1C                           ; $1B8FF5 |
  LDA #$02                                  ; $1B8FF8 |
  STA $2A                                   ; $1B8FFA |
  LDX #$56                                  ; $1B8FFC |
  JSR code_1B87F1                           ; $1B8FFE |
  LDY #$C0                                  ; $1B9001 |
  JSR code_1B8866                           ; $1B9003 |
  LDX #$00                                  ; $1B9006 |
  LDA #$60                                  ; $1B9008 |
  STA $0300                                 ; $1B900A |
  LDA #$80                                  ; $1B900D |
  STA $0528                                 ; $1B900F |
  LDA #$34                                  ; $1B9012 |
  JSR code_3FF446                           ; $1B9014 |
  LDA #$8B                                  ; $1B9017 |
  STA $0378                                 ; $1B9019 |
  LDA #$80                                  ; $1B901C |
  STA $0330                                 ; $1B901E |
  LDA #$00                                  ; $1B9021 |
  STA $0390                                 ; $1B9023 |
  STA $0348                                 ; $1B9026 |
  JSR code_3FFCE3                           ; $1B9029 |
  LDA #$00                                  ; $1B902C |
  STA $9A                                   ; $1B902E |
  LDX #$78                                  ; $1B9030 |
  JSR code_1B9332                           ; $1B9032 |
  JSR code_1B9251                           ; $1B9035 |
  JSR code_3EC451                           ; $1B9038 |
  LDX #$F0                                  ; $1B903B |
  JSR code_1B9332                           ; $1B903D |
  JSR code_1B9251                           ; $1B9040 |
  LDX #$00                                  ; $1B9043 |
  LDA #$09                                  ; $1B9045 |
  JSR code_3FF446                           ; $1B9047 |
code_1B904A:
  LDX #$01                                  ; $1B904A |
  JSR code_1B9332                           ; $1B904C |
  JSR code_1B9251                           ; $1B904F |
  LDA $0540                                 ; $1B9052 |
  CMP #$21                                  ; $1B9055 |
  BNE code_1B904A                           ; $1B9057 |
  LDX #$00                                  ; $1B9059 |
  LDA #$37                                  ; $1B905B |
  JSR code_3FF446                           ; $1B905D |
  LDX #$28                                  ; $1B9060 |
  JSR code_1B9332                           ; $1B9062 |
  JSR code_1B9251                           ; $1B9065 |
  LDY #$00                                  ; $1B9068 |
code_1B906A:
  LDX #$00                                  ; $1B906A |
code_1B906C:
  LDA $94EB,y                               ; $1B906C |
  STA $0600,x                               ; $1B906F |
  STA $0620,x                               ; $1B9072 |
  STA $0610,x                               ; $1B9075 |
  STA $0630,x                               ; $1B9078 |
  INY                                       ; $1B907B |
  INX                                       ; $1B907C |
  CPX #$08                                  ; $1B907D |
  BNE code_1B906C                           ; $1B907F |
  LDA #$FF                                  ; $1B9081 |
  STA $18                                   ; $1B9083 |
  STY $08                                   ; $1B9085 |
  LDX #$0A                                  ; $1B9087 |
  JSR code_1B9332                           ; $1B9089 |
  JSR code_1B9251                           ; $1B908C |
  LDY $08                                   ; $1B908F |
  CPY #$20                                  ; $1B9091 |
  BNE code_1B906A                           ; $1B9093 |
  JSR code_3EC457                           ; $1B9095 |
  LDA #$04                                  ; $1B9098 |
  STA $97                                   ; $1B909A |
  JSR code_3EC421                           ; $1B909C |
  JSR code_3EC438                           ; $1B909F |
  JSR code_3FFF1C                           ; $1B90A2 |
  LDA #$03                                  ; $1B90A5 |
  STA $2A                                   ; $1B90A7 |
  LDX #$3C                                  ; $1B90A9 |
  JSR code_1B9332                           ; $1B90AB |
  JSR code_1B9251                           ; $1B90AE |
  LDX #$78                                  ; $1B90B1 |
  JSR code_1B9332                           ; $1B90B3 |
  JSR code_1B9251                           ; $1B90B6 |
  LDX #$57                                  ; $1B90B9 |
  JSR code_1B87F1                           ; $1B90BB |
  LDY #$E0                                  ; $1B90BE |
  JSR code_1B8866                           ; $1B90C0 |
  LDX #$00                                  ; $1B90C3 |
  LDA #$60                                  ; $1B90C5 |
  STA $0300                                 ; $1B90C7 |
  STA $0301                                 ; $1B90CA |
  STA $0302                                 ; $1B90CD |
  STA $0303                                 ; $1B90D0 |
  LDA #$80                                  ; $1B90D3 |
  STA $0528                                 ; $1B90D5 |
  STA $0529                                 ; $1B90D8 |
  STA $052A                                 ; $1B90DB |
  STA $052B                                 ; $1B90DE |
  LDA #$01                                  ; $1B90E1 |
  JSR code_3FF446                           ; $1B90E3 |
  LDA #$4F                                  ; $1B90E6 |
  STA $0378                                 ; $1B90E8 |
  LDA #$7C                                  ; $1B90EB |
  STA $0330                                 ; $1B90ED |
  LDA #$00                                  ; $1B90F0 |
  STA $0390                                 ; $1B90F2 |
  STA $0348                                 ; $1B90F5 |
  STA $0391                                 ; $1B90F8 |
  STA $0349                                 ; $1B90FB |
  STA $0392                                 ; $1B90FE |
  STA $034A                                 ; $1B9101 |
  STA $0393                                 ; $1B9104 |
  STA $034B                                 ; $1B9107 |
  STA $046A                                 ; $1B910A |
  STA $046B                                 ; $1B910D |
  INX                                       ; $1B9110 |
  LDA #$05                                  ; $1B9111 |
  JSR code_3FF446                           ; $1B9113 |
  LDA #$7F                                  ; $1B9116 |
  STA $0379                                 ; $1B9118 |
  LDA #$80                                  ; $1B911B |
  STA $0331                                 ; $1B911D |
  INX                                       ; $1B9120 |
  LDA #$0D                                  ; $1B9121 |
  JSR code_3FF446                           ; $1B9123 |
  LDA #$40                                  ; $1B9126 |
  STA $0332                                 ; $1B9128 |
  INX                                       ; $1B912B |
  LDA #$0D                                  ; $1B912C |
  JSR code_3FF446                           ; $1B912E |
  LDA #$C0                                  ; $1B9131 |
  STA $0333                                 ; $1B9133 |
  LDA #$2B                                  ; $1B9136 |
  STA $037A                                 ; $1B9138 |
  STA $037B                                 ; $1B913B |
  JSR code_3FFCE3                           ; $1B913E |
  LDA #$00                                  ; $1B9141 |
  STA $9A                                   ; $1B9143 |
  JSR code_3EC451                           ; $1B9145 |
  LDA #$43                                  ; $1B9148 |
  JSR code_3FF6BC                           ; $1B914A |
  LDY #$08                                  ; $1B914D |
  LDX #$B4                                  ; $1B914F |
  JSR code_1B92D0                           ; $1B9151 |
  LDY #$09                                  ; $1B9154 |
  LDX #$B4                                  ; $1B9156 |
  JSR code_1B92D0                           ; $1B9158 |
  LDA #$BB                                  ; $1B915B |
  STA $06F0                                 ; $1B915D |
  LDA #$BC                                  ; $1B9160 |
  STA $06F1                                 ; $1B9162 |
  LDA #$BD                                  ; $1B9165 |
  STA $06F3                                 ; $1B9167 |
  LDX #$00                                  ; $1B916A |
  STX $06F4                                 ; $1B916C |
  STX $06F8                                 ; $1B916F |
  STX $06F5                                 ; $1B9172 |
  STX $06F9                                 ; $1B9175 |
  STX $06F7                                 ; $1B9178 |
  STX $06FB                                 ; $1B917B |
  STX $0302                                 ; $1B917E |
  STX $0303                                 ; $1B9181 |
  LDA $950B                                 ; $1B9184 |
  STA $0612                                 ; $1B9187 |
  LDA $950C                                 ; $1B918A |
  STA $0616                                 ; $1B918D |
  LDA $950D                                 ; $1B9190 |
  STA $061A                                 ; $1B9193 |
  LDA $950E                                 ; $1B9196 |
  STA $061E                                 ; $1B9199 |
  LDA #$FF                                  ; $1B919C |
  STA $18                                   ; $1B919E |
  LDA #$02                                  ; $1B91A0 |
  JSR code_3FF446                           ; $1B91A2 |
  LDA #$80                                  ; $1B91A5 |
  STA $F1                                   ; $1B91A7 |
  LDA #$0A                                  ; $1B91A9 |
  STA $F0                                   ; $1B91AB |
code_1B91AD:
  LDX #$01                                  ; $1B91AD |
  JSR code_1B9332                           ; $1B91AF |
  JSR code_1B9251                           ; $1B91B2 |
  LDA $06F0                                 ; $1B91B5 |
  BMI code_1B91AD                           ; $1B91B8 |
  LDX #$00                                  ; $1B91BA |
  LDA #$03                                  ; $1B91BC |
  JSR code_3FF446                           ; $1B91BE |
  LDY #$0A                                  ; $1B91C1 |
  LDX #$B4                                  ; $1B91C3 |
  JSR code_1B92D0                           ; $1B91C5 |
  LDY #$0B                                  ; $1B91C8 |
  LDX #$B4                                  ; $1B91CA |
  JSR code_1B92D0                           ; $1B91CC |
  LDY #$0C                                  ; $1B91CF |
  LDX #$B4                                  ; $1B91D1 |
  JSR code_1B92D0                           ; $1B91D3 |
  LDX #$3C                                  ; $1B91D6 |
  JSR code_1B9332                           ; $1B91D8 |
  JSR code_1B9251                           ; $1B91DB |
  LDX #$00                                  ; $1B91DE |
  LDA #$04                                  ; $1B91E0 |
  JSR code_3FF446                           ; $1B91E2 |
code_1B91E5:
  LDX #$01                                  ; $1B91E5 |
  JSR code_1B9332                           ; $1B91E7 |
  JSR code_1B9251                           ; $1B91EA |
  LDA $0540                                 ; $1B91ED |
  CMP #$07                                  ; $1B91F0 |
  BNE code_1B91E5                           ; $1B91F2 |
  LDX #$00                                  ; $1B91F4 |
  LDA #$35                                  ; $1B91F6 |
  JSR code_3FF446                           ; $1B91F8 |
  LDX #$01                                  ; $1B91FB |
  LDA #$06                                  ; $1B91FD |
  JSR code_3FF446                           ; $1B91FF |
code_1B9202:
  LDX #$01                                  ; $1B9202 |
  JSR code_1B9332                           ; $1B9204 |
  JSR code_1B9251                           ; $1B9207 |
  LDA $0541                                 ; $1B920A |
  CMP #$02                                  ; $1B920D |
  BNE code_1B9202                           ; $1B920F |
  LDX #$01                                  ; $1B9211 |
  LDA #$36                                  ; $1B9213 |
  JSR code_3FF446                           ; $1B9215 |
  LDX #$78                                  ; $1B9218 |
  JSR code_1B9332                           ; $1B921A |
  JSR code_1B9251                           ; $1B921D |
  LDA #$F6                                  ; $1B9220 |
  JSR code_3FF6BC                           ; $1B9222 |
  LDA #$0B                                  ; $1B9225 |
  STA $F0                                   ; $1B9227 |
  LDX #$B4                                  ; $1B9229 |
  JSR code_1B9332                           ; $1B922B |
  JSR code_3EC457                           ; $1B922E |
  LDA #$00                                  ; $1B9231 |
  STA $F0                                   ; $1B9233 |
  STA $06F0                                 ; $1B9235 |
  STA $06F1                                 ; $1B9238 |
  STA $06F2                                 ; $1B923B |
  STA $06F3                                 ; $1B923E |
  LDY #$1F                                  ; $1B9241 |
code_1B9243:
  LDA $0600,y                               ; $1B9243 |
  STA $0620,y                               ; $1B9246 |
  DEY                                       ; $1B9249 |
  BPL code_1B9243                           ; $1B924A |
  LDX #$3C                                  ; $1B924C |
  JMP code_1B9332                           ; $1B924E |

code_1B9251:
  LDA $16                                   ; $1B9251 |
  AND #$10                                  ; $1B9253 |
  BEQ code_1B925F                           ; $1B9255 |
  PLA                                       ; $1B9257 |
  PLA                                       ; $1B9258 |
  LDA #$92                                  ; $1B9259 |
  PHA                                       ; $1B925B |
  LDA #$30                                  ; $1B925C |
  PHA                                       ; $1B925E |
code_1B925F:
  RTS                                       ; $1B925F |

  LDA #$03                                  ; $1B9260 |
  STA $08                                   ; $1B9262 |
code_1B9264:
  LDA #$42                                  ; $1B9264 |
  JSR code_3FF6BE                           ; $1B9266 |
  LDX #$14                                  ; $1B9269 |
  JSR code_1B9332                           ; $1B926B |
  LDA $16                                   ; $1B926E |
  AND #$10                                  ; $1B9270 |
  BNE code_1B9278                           ; $1B9272 |
  DEC $08                                   ; $1B9274 |
  BNE code_1B9264                           ; $1B9276 |
code_1B9278:
  RTS                                       ; $1B9278 |

code_1B9279:
  TXA                                       ; $1B9279 |
  PHA                                       ; $1B927A |
  LDX #$02                                  ; $1B927B |
code_1B927D:
  LDA $0468,x                               ; $1B927D |
  BEQ code_1B928C                           ; $1B9280 |
  DEC $0468,x                               ; $1B9282 |
  BNE code_1B92A4                           ; $1B9285 |
  LDA #$0D                                  ; $1B9287 |
  JSR code_3FF446                           ; $1B9289 |
code_1B928C:
  LDA $0330,x                               ; $1B928C |
  CLC                                       ; $1B928F |
  ADC #$08                                  ; $1B9290 |
  STA $0330,x                               ; $1B9292 |
  BCC code_1B92A4                           ; $1B9295 |
  LDA #$00                                  ; $1B9297 |
  STA $0330,x                               ; $1B9299 |
  JSR code_3FF446                           ; $1B929C |
  LDA #$1E                                  ; $1B929F |
  STA $0468,x                               ; $1B92A1 |
code_1B92A4:
  INX                                       ; $1B92A4 |
  CPX #$04                                  ; $1B92A5 |
  BNE code_1B927D                           ; $1B92A7 |
  LDA $95                                   ; $1B92A9 |
  LSR                                       ; $1B92AB |
  AND #$01                                  ; $1B92AC |
  ASL                                       ; $1B92AE |
  ASL                                       ; $1B92AF |
  TAY                                       ; $1B92B0 |
  LDA $950B,y                               ; $1B92B1 |
  STA $0612                                 ; $1B92B4 |
  LDA $950C,y                               ; $1B92B7 |
  STA $0616                                 ; $1B92BA |
  LDA $950D,y                               ; $1B92BD |
  STA $061A                                 ; $1B92C0 |
  LDA $950E,y                               ; $1B92C3 |
  STA $061E                                 ; $1B92C6 |
  LDA #$FF                                  ; $1B92C9 |
  STA $18                                   ; $1B92CB |
  PLA                                       ; $1B92CD |
  TAX                                       ; $1B92CE |
  RTS                                       ; $1B92CF |

code_1B92D0:
  STY $09                                   ; $1B92D0 |
  STX $0A                                   ; $1B92D2 |
  JSR code_1B93F1                           ; $1B92D4 |
  LDX #$3C                                  ; $1B92D7 |
  JSR code_1B9332                           ; $1B92D9 |
  LDA $16                                   ; $1B92DC |
  AND #$10                                  ; $1B92DE |
  BNE code_1B92EF                           ; $1B92E0 |
  LDY $09                                   ; $1B92E2 |
  JSR code_1B9388                           ; $1B92E4 |
  JSR code_1B93C2                           ; $1B92E7 |
  LDX $0A                                   ; $1B92EA |
  JMP code_1B9332                           ; $1B92EC |

code_1B92EF:
  RTS                                       ; $1B92EF |

code_1B92F0:
  LDA #$60                                  ; $1B92F0 |
  STA $0300,x                               ; $1B92F2 |
  LDA #$80                                  ; $1B92F5 |
  STA $0528,x                               ; $1B92F7 |
  LDA $9482,x                               ; $1B92FA |
  JSR code_3FF446                           ; $1B92FD |
  LDA $9485,x                               ; $1B9300 |
  STA $0378,x                               ; $1B9303 |
  LDA $9488,x                               ; $1B9306 |
  STA $0330,x                               ; $1B9309 |
  LDA #$00                                  ; $1B930C |
  STA $0390,x                               ; $1B930E |
  STA $0348,x                               ; $1B9311 |
  LDA #$37                                  ; $1B9314 |
  JMP code_3FF6BE                           ; $1B9316 |

code_1B9319:
  LDA #$04                                  ; $1B9319 |
  STA $08                                   ; $1B931B |
code_1B931D:
  LDA #$37                                  ; $1B931D |
  JSR code_3FF6BE                           ; $1B931F |
  LDA $16                                   ; $1B9322 |
  AND #$10                                  ; $1B9324 |
  BNE code_1B9331                           ; $1B9326 |
  LDX #$14                                  ; $1B9328 |
  JSR code_1B9332                           ; $1B932A |
  DEC $08                                   ; $1B932D |
  BNE code_1B931D                           ; $1B932F |
code_1B9331:
  RTS                                       ; $1B9331 |

code_1B9332:
  STX $0F                                   ; $1B9332 |
code_1B9334:
  LDA $0303                                 ; $1B9334 |
  BEQ code_1B933C                           ; $1B9337 |
  JSR code_1B9279                           ; $1B9339 |
code_1B933C:
  LDA $F0                                   ; $1B933C |
  CMP #$0A                                  ; $1B933E |
  BCC code_1B9376                           ; $1B9340 |
  LDA $69                                   ; $1B9342 |
  SEC                                       ; $1B9344 |
  SBC #$10                                  ; $1B9345 |
  STA $69                                   ; $1B9347 |
  LDA $F0                                   ; $1B9349 |
  CMP #$0B                                  ; $1B934B |
  BNE code_1B9376                           ; $1B934D |
  LDA $FC                                   ; $1B934F |
  CLC                                       ; $1B9351 |
  ADC #$08                                  ; $1B9352 |
  STA $FC                                   ; $1B9354 |
  LDA $0330                                 ; $1B9356 |
  SEC                                       ; $1B9359 |
  SBC #$08                                  ; $1B935A |
  STA $0330                                 ; $1B935C |
  BCS code_1B9366                           ; $1B935F |
  LDA #$00                                  ; $1B9361 |
  STA $0300                                 ; $1B9363 |
code_1B9366:
  LDA $0331                                 ; $1B9366 |
  SEC                                       ; $1B9369 |
  SBC #$08                                  ; $1B936A |
  STA $0331                                 ; $1B936C |
  BCS code_1B9376                           ; $1B936F |
  LDA #$00                                  ; $1B9371 |
  STA $0301                                 ; $1B9373 |
code_1B9376:
  JSR code_3FFCE3                           ; $1B9376 |
  LDA $16                                   ; $1B9379 |
  AND #$10                                  ; $1B937B |
  BNE code_1B9383                           ; $1B937D |
  DEC $0F                                   ; $1B937F |
  BNE code_1B9334                           ; $1B9381 |
code_1B9383:
  LDA #$00                                  ; $1B9383 |
  STA $9A                                   ; $1B9385 |
  RTS                                       ; $1B9387 |

code_1B9388:
  LDA $97AC,y                               ; $1B9388 |
  STA $00                                   ; $1B938B |
  LDA $97B9,y                               ; $1B938D |
  STA $01                                   ; $1B9390 |
  LDY #$51                                  ; $1B9392 |
code_1B9394:
  LDA $942D,y                               ; $1B9394 |
  STA $0780,y                               ; $1B9397 |
  DEY                                       ; $1B939A |
  BPL code_1B9394                           ; $1B939B |
  LDY #$00                                  ; $1B939D |
  STY $02                                   ; $1B939F |
  LDX #$03                                  ; $1B93A1 |
code_1B93A3:
  LDA ($00),y                               ; $1B93A3 |
  CMP #$FF                                  ; $1B93A5 |
  BEQ code_1B93BF                           ; $1B93A7 |
  CMP #$FD                                  ; $1B93A9 |
  BEQ code_1B93B4                           ; $1B93AB |
  STA $0780,x                               ; $1B93AD |
  INY                                       ; $1B93B0 |
  INX                                       ; $1B93B1 |
  BNE code_1B93A3                           ; $1B93B2 |
code_1B93B4:
  INY                                       ; $1B93B4 |
  LDX $02                                   ; $1B93B5 |
  INC $02                                   ; $1B93B7 |
  LDA $9480,x                               ; $1B93B9 |
  TAX                                       ; $1B93BC |
  BNE code_1B93A3                           ; $1B93BD |
code_1B93BF:
  STA $19                                   ; $1B93BF |
  RTS                                       ; $1B93C1 |

code_1B93C2:
  LDA #$40                                  ; $1B93C2 |
  STA $08                                   ; $1B93C4 |
  LDA #$30                                  ; $1B93C6 |
  STA $062D                                 ; $1B93C8 |
code_1B93CB:
  LDA $062D                                 ; $1B93CB |
  SEC                                       ; $1B93CE |
  SBC $08                                   ; $1B93CF |
  BCS code_1B93D5                           ; $1B93D1 |
  LDA #$0F                                  ; $1B93D3 |
code_1B93D5:
  STA $060D                                 ; $1B93D5 |
  LDA #$FF                                  ; $1B93D8 |
  STA $18                                   ; $1B93DA |
  LDX #$0A                                  ; $1B93DC |
  JSR code_1B9332                           ; $1B93DE |
  LDA $16                                   ; $1B93E1 |
  AND #$10                                  ; $1B93E3 |
  BNE code_1B93F0                           ; $1B93E5 |
  LDA $08                                   ; $1B93E7 |
  SEC                                       ; $1B93E9 |
  SBC #$10                                  ; $1B93EA |
  STA $08                                   ; $1B93EC |
  BCS code_1B93CB                           ; $1B93EE |
code_1B93F0:
  RTS                                       ; $1B93F0 |

code_1B93F1:
  LDA #$00                                  ; $1B93F1 |
  STA $08                                   ; $1B93F3 |
  LDA #$30                                  ; $1B93F5 |
  STA $062D                                 ; $1B93F7 |
code_1B93FA:
  LDA $062D                                 ; $1B93FA |
  SEC                                       ; $1B93FD |
  SBC $08                                   ; $1B93FE |
  BCS code_1B9404                           ; $1B9400 |
  LDA #$0F                                  ; $1B9402 |
code_1B9404:
  STA $060D                                 ; $1B9404 |
  LDA #$FF                                  ; $1B9407 |
  STA $18                                   ; $1B9409 |
  LDX #$0A                                  ; $1B940B |
  JSR code_1B9332                           ; $1B940D |
  LDA $16                                   ; $1B9410 |
  AND #$10                                  ; $1B9412 |
  BNE code_1B9421                           ; $1B9414 |
  LDA $08                                   ; $1B9416 |
  CLC                                       ; $1B9418 |
  ADC #$10                                  ; $1B9419 |
  STA $08                                   ; $1B941B |
  CMP #$50                                  ; $1B941D |
  BNE code_1B93FA                           ; $1B941F |
code_1B9421:
  RTS                                       ; $1B9421 |

  db $21, $8C, $06, $0A, $0D, $00, $02, $18 ; $1B9422 |
  db $18, $21, $FF, $22, $C4, $17, $00, $00 ; $1B942A |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B9432 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B943A |
  db $00, $00, $00, $00, $00, $00, $23, $04 ; $1B9442 |
  db $17, $00, $00, $00, $00, $00, $00, $00 ; $1B944A |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B9452 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B945A |
  db $00, $23, $44, $17, $00, $00, $00, $00 ; $1B9462 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B946A |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $1B9472 |
  db $00, $00, $00, $00, $FF, $03, $1E, $39 ; $1B947A |
  db $0A, $0B, $0C, $68, $60, $90, $38, $58 ; $1B9482 |
  db $30, $0F, $16, $11, $01, $0F, $20, $11 ; $1B948A |
  db $01, $0F, $20, $37, $27, $0F, $20, $20 ; $1B9492 |
  db $20, $0F, $20, $11, $01, $0F, $20, $37 ; $1B949A |
  db $27, $0F, $20, $24, $16, $0F, $20, $20 ; $1B94A2 |
  db $20, $0F, $16, $11, $20, $0F, $20, $11 ; $1B94AA |
  db $20, $0F, $20, $37, $20, $0F, $20, $20 ; $1B94B2 |
  db $20, $0F, $20, $11, $20, $0F, $20, $37 ; $1B94BA |
  db $20, $0F, $20, $24, $30, $0F, $20, $20 ; $1B94C2 |
  db $20, $0F, $20, $20, $20, $0F, $20, $20 ; $1B94CA |
  db $20, $0F, $20, $20, $20, $0F, $20, $20 ; $1B94D2 |
  db $20, $0F, $20, $20, $20, $0F, $20, $20 ; $1B94DA |
  db $20, $0F, $20, $20, $20, $0F, $20, $20 ; $1B94E2 |
  db $20, $10, $3C, $21, $11, $10, $30, $37 ; $1B94EA |
  db $37, $20, $20, $31, $21, $20, $30, $30 ; $1B94F2 |
  db $37, $30, $30, $20, $31, $30, $30, $30 ; $1B94FA |
  db $30, $30, $30, $30, $30, $30, $30, $30 ; $1B9502 |
  db $30, $11, $37, $37, $2C, $3B, $37, $39 ; $1B950A |
  db $3C, $5D, $6E, $7E, $91, $A5, $B4, $C4 ; $1B9512 |
  db $D6, $E9, $FC, $0D, $22, $37, $48, $59 ; $1B951A |
  db $6C, $7D, $90, $9F, $B5, $C5, $D8, $E7 ; $1B9522 |
  db $F7, $06, $13, $25, $33, $45, $52, $62 ; $1B952A |
  db $72, $86, $99, $A8, $A8, $A8, $95, $95 ; $1B9532 |
  db $95, $95, $95, $95, $95, $95, $95, $95 ; $1B953A |
  db $96, $96, $96, $96, $96, $96, $96, $96 ; $1B9542 |
  db $96, $96, $96, $96, $96, $96, $97, $97 ; $1B954A |
  db $97, $97, $97, $97, $97, $97, $97, $97 ; $1B9552 |
  db $97, $97, $97, $03, $09, $1C, $19, $0E ; $1B955A |
  db $0C, $12, $0A, $15, $00, $1D, $11, $0A ; $1B9562 |
  db $17, $14, $1C, $FF, $08, $0B, $0D, $0A ; $1B956A |
  db $12, $10, $18, $00, $1C, $0E, $10, $1E ; $1B9572 |
  db $0C, $11, $12, $FF, $0A, $0A, $1D, $0A ; $1B957A |
  db $14, $1E, $22, $0A, $00, $22, $0A, $16 ; $1B9582 |
  db $0A, $10, $12, $1C, $11, $12, $FF, $0C ; $1B958A |
  db $07, $11, $12, $0D, $0E, $16, $12, $1D ; $1B9592 |
  db $1C, $1E, $00, $14, $12, $14, $1E, $0C ; $1B959A |
  db $11, $12, $FF, $0E, $0B, $14, $0E, $17 ; $1B95A2 |
  db $13, $12, $00, $11, $18, $1B, $12, $1D ; $1B95AA |
  db $0A, $FF, $10, $0B, $14, $18, $1E, $13 ; $1B95B2 |
  db $12, $00, $1D, $1C, $1E, $1D, $0A, $22 ; $1B95BA |
  db $0A, $FF, $12, $0A, $16, $0A, $14, $18 ; $1B95C2 |
  db $1D, $18, $00, $14, $0A, $20, $0A, $1D ; $1B95CA |
  db $18, $1B, $12, $FF, $14, $07, $1D, $18 ; $1B95D2 |
  db $1C, $11, $12, $17, $0A, $1B, $12, $00 ; $1B95DA |
  db $0D, $0A, $12, $13, $18, $1E, $FF, $16 ; $1B95E2 |
  db $05, $1C, $11, $12, $17, $12, $0C, $11 ; $1B95EA |
  db $12, $1B, $18, $1E, $00, $1C, $0E, $14 ; $1B95F2 |
  db $12, $FF, $18, $0B, $14, $0E, $17, $13 ; $1B95FA |
  db $12, $00, $17, $0A, $14, $0A, $22, $0A ; $1B9602 |
  db $16, $0A, $FF, $1A, $07, $1D, $0A, $1D ; $1B960A |
  db $1C, $1E, $11, $12, $1B, $18, $00, $0F ; $1B9612 |
  db $1E, $13, $12, $20, $0A, $1B, $0A, $FF ; $1B961A |
  db $1C, $06, $22, $1E, $1E, $12, $0C, $11 ; $1B9622 |
  db $12, $1B, $18, $1E, $00, $18, $14, $0A ; $1B962A |
  db $16, $18, $1D, $18, $FF, $00, $0A, $1C ; $1B9632 |
  db $11, $12, $17, $10, $18, $00, $1C, $11 ; $1B963A |
  db $12, $16, $12, $23, $1E, $FF, $02, $09 ; $1B9642 |
  db $1D, $1C, $1E, $1D, $18, $16, $1E, $00 ; $1B964A |
  db $14, $18, $17, $0D, $18, $1E, $FF, $04 ; $1B9652 |
  db $0A, $1D, $18, $16, $18, $16, $12, $00 ; $1B965A |
  db $1C, $11, $12, $0B, $0A, $22, $0A, $16 ; $1B9662 |
  db $0A, $FF, $06, $0A, $1C, $11, $12, $17 ; $1B966A |
  db $22, $0A, $00, $16, $12, $1D, $1C, $1E ; $1B9672 |
  db $0D, $0A, $FF, $08, $09, $11, $12, $1D ; $1B967A |
  db $18, $1C, $11, $12, $00, $1D, $0A, $14 ; $1B9682 |
  db $0E, $1C, $12, $16, $0A, $FF, $0A, $0A ; $1B968A |
  db $14, $18, $1E, $23, $18, $1E, $00, $0A ; $1B9692 |
  db $1C, $0A, $17, $18, $FF, $0C, $05, $1C ; $1B969A |
  db $11, $12, $17, $12, $0C, $11, $12, $1B ; $1B96A2 |
  db $18, $1E, $00, $17, $12, $1C, $11, $12 ; $1B96AA |
  db $0D, $0A, $FF, $0E, $0A, $1D, $0A, $14 ; $1B96B2 |
  db $1E, $22, $0A, $00, $14, $0A, $20, $0A ; $1B96BA |
  db $1D, $0A, $FF, $10, $09, $1D, $0A, $14 ; $1B96C2 |
  db $0A, $1C, $11, $12, $00, $0F, $1E, $13 ; $1B96CA |
  db $12, $20, $0A, $1B, $0A, $FF, $12, $0B ; $1B96D2 |
  db $22, $18, $1E, $13, $12, $00, $16, $0A ; $1B96DA |
  db $1C, $1E, $0D, $0A, $FF, $14, $09, $0D ; $1B96E2 |
  db $0A, $12, $1C, $1E, $14, $0E, $00, $0A ; $1B96EA |
  db $14, $0E, $0B, $12, $FF, $16, $0B, $0A ; $1B96F2 |
  db $14, $12, $14, $18, $00, $18, $18, $14 ; $1B96FA |
  db $1E, $16, $0A, $FF, $18, $0A, $22, $18 ; $1B9702 |
  db $1C, $11, $12, $18, $00, $0A, $0B, $0E ; $1B970A |
  db $FF, $1A, $07, $22, $18, $1C, $11, $12 ; $1B9712 |
  db $11, $12, $1D, $18, $00, $18, $14, $0A ; $1B971A |
  db $0D, $0A, $FF, $1C, $0A, $1D, $18, $1C ; $1B9722 |
  db $11, $12, $18, $00, $16, $18, $1B, $12 ; $1B972A |
  db $FF, $00, $0A, $16, $0A, $1C, $0A, $22 ; $1B9732 |
  db $18, $00, $22, $0A, $16, $0A, $23, $0A ; $1B973A |
  db $14, $12, $FF, $02, $0A, $16, $0A, $1C ; $1B9742 |
  db $1E, $16, $12, $00, $0A, $0B, $0E, $FF ; $1B974A |
  db $04, $0B, $1D, $0E, $1D, $1C, $1E, $00 ; $1B9752 |
  db $0A, $14, $12, $22, $0A, $16, $0A, $FF ; $1B975A |
  db $06, $0A, $16, $0A, $1C, $0A, $14, $12 ; $1B9762 |
  db $00, $14, $18, $17, $0D, $18, $1E, $FF ; $1B976A |
  db $08, $09, $22, $1E, $1E, $1C, $1E, $14 ; $1B9772 |
  db $0E, $00, $14, $1E, $1B, $0A, $16, $18 ; $1B977A |
  db $0C, $11, $12, $FF, $0A, $0A, $16, $0A ; $1B9782 |
  db $1C, $0A, $1D, $18, $00, $16, $0A, $1D ; $1B978A |
  db $1C, $1E, $23, $0A, $14, $12, $FF, $00 ; $1B9792 |
  db $0A, $19, $1B, $0E, $1C, $0E, $17, $1D ; $1B979A |
  db $0E, $0D, $00, $0B, $22, $FF, $10, $00 ; $1B97A2 |
  db $00, $FF, $C6, $0C, $3C, $7C, $A9, $E2 ; $1B97AA |
  db $27, $64, $9B, $CE, $14, $59, $9A, $97 ; $1B97B2 |
  db $98, $98, $98, $98, $98, $99, $99, $99 ; $1B97BA |
  db $99, $9A, $9A, $9A, $11, $18, $1E, $1C ; $1B97C2 |
  db $0E, $11, $18, $15, $0D, $00, $1B, $18 ; $1B97CA |
  db $0B, $18, $1D, $1C, $00, $1B, $18, $0C ; $1B97D2 |
  db $14, $FD, $0A, $17, $0D, $00, $1B, $18 ; $1B97DA |
  db $15, $15, $00, $20, $0E, $1B, $0E, $00 ; $1B97E2 |
  db $0C, $1B, $0E, $0A, $1D, $0E, $0D, $00 ; $1B97EA |
  db $0B, $22, $FD, $16, $0A, $1C, $1D, $0E ; $1B97F2 |
  db $1B, $00, $1B, $18, $0B, $18, $1D, $00 ; $1B97FA |
  db $0D, $0E, $1C, $12, $10, $17, $0E, $1B ; $1B9802 |
  db $2E, $FF, $0D, $1B, $24, $15, $12, $10 ; $1B980A |
  db $11, $1D, $2E, $0A, $17, $0D, $00, $20 ; $1B9812 |
  db $0E, $1B, $0E, $FD, $0E, $17, $13, $18 ; $1B981A |
  db $22, $12, $17, $10, $00, $1D, $11, $0E ; $1B9822 |
  db $12, $1B, $00, $19, $0E, $0A, $0C, $0E ; $1B982A |
  db $0F, $1E, $15, $FD, $0D, $0A, $22, $1C ; $1B9832 |
  db $24, $FF, $1D, $11, $0E, $17, $00, $18 ; $1B983A |
  db $17, $0E, $00, $0D, $0A, $22, $2E, $1D ; $1B9842 |
  db $11, $0E, $FD, $12, $17, $0D, $1E, $1C ; $1B984A |
  db $1D, $1B, $12, $0A, $15, $00, $1B, $18 ; $1B9852 |
  db $0B, $18, $1D, $1C, $00, $0A, $15, $15 ; $1B985A |
  db $FD, $18, $1F, $0E, $1B, $00, $1D, $11 ; $1B9862 |
  db $0E, $00, $20, $18, $1B, $15, $0D, $00 ; $1B986A |
  db $20, $0E, $17, $1D, $00, $18, $17, $00 ; $1B9872 |
  db $0A, $FF, $1B, $0A, $16, $19, $0A, $10 ; $1B987A |
  db $0E, $00, $0A, $17, $0D, $00, $1D, $11 ; $1B9882 |
  db $0E, $00, $20, $18, $1B, $15, $0D, $FD ; $1B988A |
  db $0F, $0E, $15, $15, $00, $12, $17, $1D ; $1B9892 |
  db $18, $00, $1D, $18, $1D, $0A, $15, $00 ; $1B989A |
  db $0C, $11, $0A, $18, $1C, $24, $FF, $0D ; $1B98A2 |
  db $1B, $24, $15, $12, $10, $11, $1D, $00 ; $1B98AA |
  db $1A, $1E, $12, $0C, $14, $15, $22, $FD ; $1B98B2 |
  db $1B, $0E, $0A, $15, $12, $23, $0E, $0D ; $1B98BA |
  db $00, $1D, $11, $0A, $1D, $00, $16, $0A ; $1B98C2 |
  db $0D, $FD, $1C, $0C, $12, $0E, $17, $1D ; $1B98CA |
  db $12, $1C, $1D, $2E, $0D, $1B, $24, $20 ; $1B98D2 |
  db $12, $15, $22, $2E, $20, $0A, $1C, $FF ; $1B98DA |
  db $0B, $0E, $11, $12, $17, $0D, $00, $1D ; $1B98E2 |
  db $11, $0E, $00, $17, $0E, $0F, $0A, $1B ; $1B98EA |
  db $12, $18, $1E, $1C, $FD, $0D, $0E, $0E ; $1B98F2 |
  db $0D, $00, $0B, $1E, $1D, $00, $11, $0E ; $1B98FA |
  db $00, $0D, $12, $0D, $17, $2C, $1D, $00 ; $1B9902 |
  db $14, $17, $18, $20, $FD, $20, $11, $0A ; $1B990A |
  db $1D, $00, $1D, $18, $00, $0D, $18, $24 ; $1B9912 |
  db $00, $1B, $18, $0C, $14, $2E, $11, $0A ; $1B991A |
  db $1F, $12, $17, $10, $FF, $0A, $00, $1C ; $1B9922 |
  db $1D, $1B, $18, $17, $10, $00, $1C, $0E ; $1B992A |
  db $17, $1C, $0E, $00, $18, $0F, $FD, $13 ; $1B9932 |
  db $1E, $1C, $1D, $12, $0C, $0E, $2E, $1F ; $1B993A |
  db $18, $15, $1E, $17, $1D, $0E, $0E, $1B ; $1B9942 |
  db $0E, $0D, $00, $1D, $18, $FD, $0B, $0E ; $1B994A |
  db $00, $0C, $18, $17, $1F, $0E, $1B, $1D ; $1B9952 |
  db $0E, $0D, $00, $12, $17, $1D, $18, $00 ; $1B995A |
  db $0A, $FF, $0F, $12, $10, $11, $1D, $12 ; $1B9962 |
  db $17, $10, $00, $1B, $18, $0B, $18, $1D ; $1B996A |
  db $24, $FD, $1D, $11, $1E, $1C, $00, $1D ; $1B9972 |
  db $11, $0E, $00, $1C, $1E, $19, $0E, $1B ; $1B997A |
  db $00, $1B, $18, $0B, $18, $1D, $FD, $16 ; $1B9982 |
  db $0E, $10, $0A, $16, $0A, $17, $00, $20 ; $1B998A |
  db $0A, $1C, $00, $0B, $18, $1B, $17, $24 ; $1B9992 |
  db $FF, $16, $0E, $10, $0A, $16, $0A, $17 ; $1B999A |
  db $00, $1C, $11, $0A, $1D, $1D, $0E, $1B ; $1B99A2 |
  db $0E, $0D, $FD, $0D, $1B, $24, $20, $12 ; $1B99AA |
  db $15, $22, $2C, $1C, $00, $19, $15, $0A ; $1B99B2 |
  db $17, $1C, $FD, $1D, $11, $1B, $0E, $0E ; $1B99BA |
  db $00, $1D, $12, $16, $0E, $1C, $00, $0A ; $1B99C2 |
  db $17, $0D, $00, $FF, $20, $18, $1B, $15 ; $1B99CA |
  db $0D, $00, $19, $0E, $0A, $0C, $0E, $00 ; $1B99D2 |
  db $11, $0A, $1C, $00, $0B, $0E, $0E, $17 ; $1B99DA |
  db $FD, $16, $0A, $12, $17, $1D, $0A, $12 ; $1B99E2 |
  db $17, $0E, $0D, $00, $1C, $18, $00, $0F ; $1B99EA |
  db $0A, $1B, $24, $24, $24, $24, $0B, $1E ; $1B99F2 |
  db $1D, $FD, $11, $12, $1C, $1D, $18, $1B ; $1B99FA |
  db $22, $00, $1B, $0E, $19, $0E, $0A, $1D ; $1B9A02 |
  db $1C, $00, $12, $1D, $1C, $0E, $15, $0F ; $1B9A0A |
  db $24, $FF, $0D, $1B, $24, $0C, $18, $1C ; $1B9A12 |
  db $1C, $0A, $0C, $14, $2E, $0A, $00, $16 ; $1B9A1A |
  db $22, $1C, $1D, $0E, $1B, $12, $18, $1E ; $1B9A22 |
  db $1C, $FD, $1C, $0C, $12, $0E, $17, $1D ; $1B9A2A |
  db $12, $1C, $1D, $2E, $11, $0A, $1C, $00 ; $1B9A32 |
  db $12, $17, $1F, $0E, $17, $1D, $0E, $0D ; $1B9A3A |
  db $FD, $0E, $12, $10, $11, $1D, $00, $19 ; $1B9A42 |
  db $18, $20, $0E, $1B, $0F, $1E, $15, $00 ; $1B9A4A |
  db $1B, $18, $0B, $18, $1D, $1C, $FF, $0A ; $1B9A52 |
  db $17, $0D, $00, $1C, $0E, $17, $1D, $00 ; $1B9A5A |
  db $1D, $11, $0E, $16, $00, $0A, $0F, $1D ; $1B9A62 |
  db $0E, $1B, $FD, $16, $0E, $10, $0A, $16 ; $1B9A6A |
  db $0A, $17, $24, $16, $0E, $10, $0A, $16 ; $1B9A72 |
  db $0A, $17, $00, $1C, $1D, $0A, $1B, $1D ; $1B9A7A |
  db $1C, $FD, $0F, $18, $1B, $00, $1D, $11 ; $1B9A82 |
  db $0E, $00, $0B, $0A, $1D, $1D, $15, $0E ; $1B9A8A |
  db $00, $0A, $10, $0A, $12, $17, $2E, $FF ; $1B9A92 |
  db $1D, $11, $12, $1C, $00, $1D, $12, $16 ; $1B9A9A |
  db $0E, $00, $0E, $1A, $1E, $12, $19, $19 ; $1B9AA2 |
  db $0E, $0D, $00, $20, $12, $1D, $11, $FD ; $1B9AAA |
  db $1D, $11, $0E, $00, $19, $18, $20, $0E ; $1B9AB2 |
  db $1B, $0F, $1E, $15, $FD, $00, $00, $00 ; $1B9ABA |
  db $17, $0E, $20, $00, $16, $0E, $10, $0A ; $1B9AC2 |
  db $00, $0B, $1E, $1C, $1D, $0E, $1B, $28 ; $1B9ACA |
  db $28, $FF, $0A, $85, $2A, $AE, $00, $56 ; $1B9AD2 |
  db $02, $46, $02, $44, $A0, $1E, $22, $32 ; $1B9ADA |
  db $08, $72, $2A, $30, $88, $30, $08, $92 ; $1B9AE2 |
  db $08, $3D, $20, $EE, $A0, $C0, $8A, $6D ; $1B9AEA |
  db $00, $D0, $80, $A6, $A0, $06, $8A, $51 ; $1B9AF2 |
  db $A2, $84, $28, $C5, $A0, $E6, $00, $5C ; $1B9AFA |
  db $20, $A1, $80, $C6, $20, $84, $22, $4E ; $1B9B02 |
  db $02, $85, $80, $D6, $00, $65, $82, $9E ; $1B9B0A |
  db $02, $A0, $2A, $7E, $00, $1C, $88, $70 ; $1B9B12 |
  db $80, $12, $00, $00, $AA, $95, $80, $66 ; $1B9B1A |
  db $08, $88, $AA, $C6, $82, $86, $02, $48 ; $1B9B22 |
  db $88, $D5, $8A, $40, $02, $C1, $02, $67 ; $1B9B2A |
  db $28, $18, $02, $2B, $88, $50, $22, $48 ; $1B9B32 |
  db $0A, $16, $80, $07, $08, $0C, $22, $12 ; $1B9B3A |
  db $0A, $D2, $2A, $FC, $00, $02, $22, $59 ; $1B9B42 |
  db $00, $4C, $08, $BA, $20, $B1, $00, $00 ; $1B9B4A |
  db $28, $16, $08, $BA, $A0, $02, $00, $24 ; $1B9B52 |
  db $AA, $A9, $00, $3C, $00, $48, $A8, $B5 ; $1B9B5A |
  db $20, $1A, $AA, $5C, $0A, $D0, $2A, $1F ; $1B9B62 |
  db $00, $BA, $A8, $1C, $00, $01, $8A, $1A ; $1B9B6A |
  db $82, $0A, $28, $42, $08, $88, $08, $30 ; $1B9B72 |
  db $02, $00, $02, $04, $20, $FD, $02, $06 ; $1B9B7A |
  db $82, $5C, $22, $41, $22, $16, $20, $98 ; $1B9B82 |
  db $80, $72, $8A, $E0, $A0, $48, $00, $5F ; $1B9B8A |
  db $02, $44, $80, $2B, $20, $0F, $08, $4E ; $1B9B92 |
  db $82, $62, $08, $9F, $20, $0F, $20, $00 ; $1B9B9A |
  db $2A, $1D, $08, $1A, $80, $00, $A0, $2C ; $1B9BA2 |
  db $02, $C4, $20, $AE, $88, $63, $00, $4A ; $1B9BAA |
  db $88, $CA, $00, $34, $02, $40, $80, $70 ; $1B9BB2 |
  db $88, $36, $08, $B8, $88, $23, $8A, $00 ; $1B9BBA |
  db $A0, $33, $80, $9D, $88, $94, $80, $BF ; $1B9BC2 |
  db $A8, $5B, $80, $BC, $AA, $93, $88, $81 ; $1B9BCA |
  db $00, $95, $08, $00, $00, $10, $22, $00 ; $1B9BD2 |
  db $20, $03, $A0, $03, $00, $DA, $82, $6B ; $1B9BDA |
  db $02, $10, $28, $46, $00, $30, $00, $D2 ; $1B9BE2 |
  db $00, $90, $02, $02, $20, $81, $A8, $29 ; $1B9BEA |
  db $8A, $3B, $00, $08, $20, $36, $0A, $40 ; $1B9BF2 |
  db $80, $F9, $02, $D8, $80, $E3, $98, $51 ; $1B9BFA |
  db $D9, $04, $15, $02, $28, $52, $44, $40 ; $1B9C02 |
  db $50, $00, $28, $00, $B6, $00, $10, $07 ; $1B9C0A |
  db $28, $10, $13, $55, $00, $64, $76, $00 ; $1B9C12 |
  db $8C, $10, $44, $11, $1E, $04, $58, $04 ; $1B9C1A |
  db $9F, $51, $EB, $15, $CB, $54, $59, $14 ; $1B9C22 |
  db $62, $51, $25, $45, $72, $50, $88, $50 ; $1B9C2A |
  db $DE, $47, $3F, $00, $93, $40, $C9, $01 ; $1B9C32 |
  db $2C, $00, $5D, $15, $D2, $10, $2E, $41 ; $1B9C3A |
  db $30, $01, $B4, $41, $E6, $40, $47, $14 ; $1B9C42 |
  db $E5, $11, $8E, $01, $EE, $00, $0E, $65 ; $1B9C4A |
  db $AA, $01, $00, $50, $6C, $01, $49, $50 ; $1B9C52 |
  db $9C, $01, $C2, $7D, $29, $01, $FA, $34 ; $1B9C5A |
  db $FE, $74, $FB, $05, $B6, $15, $B7, $01 ; $1B9C62 |
  db $5B, $46, $F6, $44, $E5, $01, $AB, $55 ; $1B9C6A |
  db $F7, $95, $D8, $70, $78, $D5, $9F, $55 ; $1B9C72 |
  db $EF, $51, $E8, $4D, $D6, $60, $7A, $10 ; $1B9C7A |
  db $1C, $00, $6A, $44, $80, $40, $28, $40 ; $1B9C82 |
  db $70, $51, $AC, $60, $28, $01, $2D, $44 ; $1B9C8A |
  db $70, $00, $18, $04, $CC, $05, $8C, $75 ; $1B9C92 |
  db $F8, $00, $C2, $4D, $30, $50, $94, $58 ; $1B9C9A |
  db $CE, $01, $E4, $05, $F8, $D0, $B5, $C1 ; $1B9CA2 |
  db $5F, $14, $5E, $51, $CC, $47, $36, $50 ; $1B9CAA |
  db $94, $44, $33, $51, $7B, $05, $EC, $55 ; $1B9CB2 |
  db $0C, $45, $BB, $15, $7F, $11, $08, $51 ; $1B9CBA |
  db $42, $41, $ED, $42, $AA, $54, $E5, $D0 ; $1B9CC2 |
  db $C7, $51, $01, $15, $F0, $64, $76, $49 ; $1B9CCA |
  db $E4, $00, $BE, $55, $09, $11, $2C, $44 ; $1B9CD2 |
  db $10, $40, $28, $20, $F4, $15, $FD, $55 ; $1B9CDA |
  db $FF, $54, $5A, $C5, $EE, $15, $FC, $45 ; $1B9CE2 |
  db $CF, $59, $ED, $55, $1D, $51, $7F, $51 ; $1B9CEA |
  db $D5, $15, $6E, $56, $DC, $55, $4E, $54 ; $1B9CF2 |
  db $BE, $17, $AD, $45, $78, $D9, $14, $41 ; $1B9CFA |
  db $38, $11, $93, $14, $67, $15, $26, $01 ; $1B9D02 |
  db $32, $00, $44, $53, $2D, $55, $0B, $00 ; $1B9D0A |
  db $CB, $11, $C8, $00, $1A, $00, $0C, $40 ; $1B9D12 |
  db $90, $50, $40, $55, $49, $15, $F4, $55 ; $1B9D1A |
  db $CA, $51, $EF, $57, $88, $12, $AF, $35 ; $1B9D22 |
  db $D6, $40, $AF, $55, $E8, $C1, $58, $56 ; $1B9D2A |
  db $88, $54, $D8, $44, $17, $54, $4F, $C4 ; $1B9D32 |
  db $92, $05, $01, $40, $06, $04, $48, $11 ; $1B9D3A |
  db $DC, $54, $62, $10, $9F, $41, $93, $44 ; $1B9D42 |
  db $DA, $51, $7A, $51, $EB, $14, $1D, $D5 ; $1B9D4A |
  db $24, $01, $40, $44, $23, $45, $01, $14 ; $1B9D52 |
  db $B6, $40, $B4, $00, $0A, $04, $7F, $54 ; $1B9D5A |
  db $7A, $45, $E7, $15, $FC, $14, $BF, $50 ; $1B9D62 |
  db $C7, $C0, $9C, $9D, $BE, $11, $18, $1D ; $1B9D6A |
  db $6F, $45, $A2, $51, $55, $60, $80, $90 ; $1B9D72 |
  db $AA, $50, $FF, $50, $6D, $15, $D2, $05 ; $1B9D7A |
  db $C9, $01, $C3, $04, $A4, $01, $20, $40 ; $1B9D82 |
  db $98, $41, $ED, $14, $2A, $11, $79, $10 ; $1B9D8A |
  db $12, $14, $A2, $01, $3E, $41, $64, $44 ; $1B9D92 |
  db $E4, $11, $60, $40, $42, $41, $CE, $61 ; $1B9D9A |
  db $34, $D1, $DF, $11, $68, $55, $FF, $12 ; $1B9DA2 |
  db $DE, $4C, $17, $51, $46, $04, $C6, $15 ; $1B9DAA |
  db $D9, $44, $18, $50, $20, $55, $07, $55 ; $1B9DB2 |
  db $20, $C5, $F5, $15, $97, $41, $BE, $14 ; $1B9DBA |
  db $FA, $44, $A2, $56, $76, $15, $BF, $40 ; $1B9DC2 |
  db $DA, $11, $DC, $40, $87, $01, $C2, $D4 ; $1B9DCA |
  db $42, $40, $A7, $41, $4A, $45, $BD, $40 ; $1B9DD2 |
  db $07, $00, $2F, $05, $BD, $14, $EE, $11 ; $1B9DDA |
  db $5D, $47, $FD, $1D, $F7, $56, $BF, $14 ; $1B9DE2 |
  db $FC, $54, $EF, $49, $0F, $7D, $E5, $55 ; $1B9DEA |
  db $ED, $54, $75, $54, $DF, $80, $FB, $54 ; $1B9DF2 |
  db $7E, $75, $BD, $55, $BE, $14, $20, $00 ; $1B9DFA |
  db $24, $04, $D2, $40, $84, $40, $28, $04 ; $1B9E02 |
  db $07, $41, $08, $10, $86, $05, $12, $00 ; $1B9E0A |
  db $4F, $00, $72, $00, $60, $00, $B9, $40 ; $1B9E12 |
  db $30, $48, $42, $00, $06, $04, $F6, $50 ; $1B9E1A |
  db $7B, $54, $C4, $05, $2F, $11, $B7, $D1 ; $1B9E22 |
  db $A6, $54, $5B, $45, $08, $89, $FF, $15 ; $1B9E2A |
  db $19, $44, $BA, $14, $03, $51, $2F, $44 ; $1B9E32 |
  db $64, $20, $EE, $01, $D2, $0C, $BE, $D4 ; $1B9E3A |
  db $2C, $65, $1A, $00, $84, $01, $0E, $10 ; $1B9E42 |
  db $9A, $C4, $62, $45, $2D, $00, $D7, $30 ; $1B9E4A |
  db $0A, $40, $A4, $00, $B4, $50, $47, $04 ; $1B9E52 |
  db $00, $35, $CE, $15, $93, $11, $5E, $24 ; $1B9E5A |
  db $DF, $55, $BF, $30, $BE, $54, $53, $05 ; $1B9E62 |
  db $EA, $04, $2D, $48, $EA, $34, $E9, $14 ; $1B9E6A |
  db $8A, $61, $6A, $55, $E0, $55, $75, $05 ; $1B9E72 |
  db $EB, $54, $6A, $15, $ED, $51, $5A, $00 ; $1B9E7A |
  db $72, $45, $55, $45, $51, $41, $D0, $01 ; $1B9E82 |
  db $55, $56, $91, $14, $8B, $40, $AB, $51 ; $1B9E8A |
  db $50, $14, $9C, $10, $5A, $40, $4D, $04 ; $1B9E92 |
  db $BA, $00, $02, $50, $E8, $41, $FC, $51 ; $1B9E9A |
  db $B7, $40, $1B, $41, $B8, $11, $DB, $10 ; $1B9EA2 |
  db $9F, $54, $1A, $55, $DA, $45, $AE, $45 ; $1B9EAA |
  db $6E, $50, $42, $54, $28, $F1, $DE, $40 ; $1B9EB2 |
  db $95, $11, $78, $10, $A8, $10, $53, $51 ; $1B9EBA |
  db $AB, $55, $C5, $04, $DD, $04, $FB, $40 ; $1B9EC2 |
  db $05, $15, $3E, $15, $A8, $15, $7E, $50 ; $1B9ECA |
  db $81, $51, $3A, $14, $01, $14, $D6, $40 ; $1B9ED2 |
  db $ED, $04, $40, $10, $41, $05, $7E, $40 ; $1B9EDA |
  db $FE, $1D, $8D, $14, $95, $F3, $FF, $44 ; $1B9EE2 |
  db $FF, $45, $DF, $55, $BE, $5F, $1A, $15 ; $1B9EEA |
  db $0F, $65, $E4, $55, $9F, $50, $AE, $50 ; $1B9EF2 |
  db $B2, $54, $FF, $17, $F8, $53, $1E, $08 ; $1B9EFA |
  db $4C, $04, $37, $45, $04, $54, $44, $10 ; $1B9F02 |
  db $3C, $44, $04, $51, $90, $50, $F1, $50 ; $1B9F0A |
  db $88, $50, $5A, $44, $41, $40, $4B, $55 ; $1B9F12 |
  db $00, $04, $81, $11, $33, $14, $EB, $40 ; $1B9F1A |
  db $F1, $14, $FD, $55, $BE, $5C, $EC, $25 ; $1B9F22 |
  db $62, $50, $0E, $51, $41, $04, $50, $44 ; $1B9F2A |
  db $5D, $15, $6B, $55, $BC, $40, $E2, $55 ; $1B9F32 |
  db $E0, $15, $F7, $00, $CF, $00, $CC, $44 ; $1B9F3A |
  db $1D, $25, $70, $47, $8B, $10, $17, $11 ; $1B9F42 |
  db $20, $45, $A6, $00, $B6, $03, $0E, $15 ; $1B9F4A |
  db $C8, $54, $12, $50, $34, $41, $C4, $58 ; $1B9F52 |
  db $7A, $04, $99, $41, $30, $04, $CF, $46 ; $1B9F5A |
  db $BD, $D5, $FD, $41, $F6, $74, $BF, $55 ; $1B9F62 |
  db $FE, $05, $F7, $45, $C9, $15, $FB, $45 ; $1B9F6A |
  db $2F, $00, $F4, $04, $CF, $55, $F4, $10 ; $1B9F72 |
  db $84, $11, $EA, $40, $B6, $55, $22, $00 ; $1B9F7A |
  db $01, $51, $0C, $10, $F6, $44, $32, $51 ; $1B9F82 |
  db $7A, $61, $0A, $14, $A9, $40, $A8, $00 ; $1B9F8A |
  db $D3, $41, $52, $04, $10, $41, $43, $11 ; $1B9F92 |
  db $50, $51, $94, $10, $49, $45, $70, $51 ; $1B9F9A |
  db $FC, $47, $B9, $11, $36, $91, $F4, $54 ; $1B9FA2 |
  db $D5, $54, $1E, $11, $5D, $50, $E2, $55 ; $1B9FAA |
  db $2A, $44, $70, $44, $73, $50, $92, $01 ; $1B9FB2 |
  db $08, $45, $C7, $54, $F4, $54, $CE, $14 ; $1B9FBA |
  db $8C, $44, $25, $59, $A1, $11, $34, $45 ; $1B9FC2 |
  db $DC, $50, $23, $01, $2A, $11, $B5, $00 ; $1B9FCA |
  db $7C, $10, $26, $40, $14, $54, $3A, $54 ; $1B9FD2 |
  db $20, $4D, $5D, $44, $C9, $11, $BF, $5A ; $1B9FDA |
  db $9F, $05, $FF, $05, $A4, $55, $BB, $45 ; $1B9FE2 |
  db $79, $91, $DD, $15, $0B, $10, $DF, $55 ; $1B9FEA |
  db $50, $58, $69, $44, $5C, $55, $3E, $45 ; $1B9FF2 |
  db $58, $50, $DD, $43, $03, $FF           ; $1B9FFA |
