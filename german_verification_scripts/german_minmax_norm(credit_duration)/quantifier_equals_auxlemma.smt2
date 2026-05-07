; Normalized German Credit (numeric features only)
; Min-Max scaled to [-1, 1]

(set-logic QF_AUFLIRA)

(define-fun m () Int 1000)
(define-fun n () Int 1)

(declare-const D (Array Int (Array Int Real)))

(define-fun row1 ((x0 Real)) (Array Int Real)
  (store ((as const (Array Int Real)) 0.0) 0 x0)
)

(assert (= (select D 0) (row1 -0.941176)))
(assert (= (select D 1) (row1 0.294118)))
(assert (= (select D 2) (row1 -0.764706)))
(assert (= (select D 3) (row1 0.117647)))
(assert (= (select D 4) (row1 -0.411765)))
(assert (= (select D 5) (row1 -0.058824)))
(assert (= (select D 6) (row1 -0.411765)))
(assert (= (select D 7) (row1 -0.058824)))
(assert (= (select D 8) (row1 -0.764706)))
(assert (= (select D 9) (row1 -0.235294)))
(assert (= (select D 10) (row1 -0.764706)))
(assert (= (select D 11) (row1 0.294118)))
(assert (= (select D 12) (row1 -0.764706)))
(assert (= (select D 13) (row1 -0.411765)))
(assert (= (select D 14) (row1 -0.676471)))
(assert (= (select D 15) (row1 -0.411765)))
(assert (= (select D 16) (row1 -0.411765)))
(assert (= (select D 17) (row1 -0.235294)))
(assert (= (select D 18) (row1 -0.411765)))
(assert (= (select D 19) (row1 -0.411765)))
(assert (= (select D 20) (row1 -0.852941)))
(assert (= (select D 21) (row1 -0.941176)))
(assert (= (select D 22) (row1 -0.823529)))
(assert (= (select D 23) (row1 -0.764706)))
(assert (= (select D 24) (row1 -0.823529)))
(assert (= (select D 25) (row1 -0.941176)))
(assert (= (select D 26) (row1 -0.941176)))
(assert (= (select D 27) (row1 -0.764706)))
(assert (= (select D 28) (row1 -0.911765)))
(assert (= (select D 29) (row1 0.647059)))
(assert (= (select D 30) (row1 -0.588235)))
(assert (= (select D 31) (row1 -0.411765)))
(assert (= (select D 32) (row1 -0.588235)))
(assert (= (select D 33) (row1 -0.764706)))
(assert (= (select D 34) (row1 -0.764706)))
(assert (= (select D 35) (row1 0.205882)))
(assert (= (select D 36) (row1 0.294118)))
(assert (= (select D 37) (row1 -0.588235)))
(assert (= (select D 38) (row1 -0.823529)))
(assert (= (select D 39) (row1 -0.852941)))
(assert (= (select D 40) (row1 -0.235294)))
(assert (= (select D 41) (row1 -0.764706)))
(assert (= (select D 42) (row1 -0.588235)))
(assert (= (select D 43) (row1 -0.235294)))
(assert (= (select D 44) (row1 0.294118)))
(assert (= (select D 45) (row1 -0.794118)))
(assert (= (select D 46) (row1 -0.058824)))
(assert (= (select D 47) (row1 -0.941176)))
(assert (= (select D 48) (row1 -0.794118)))
(assert (= (select D 49) (row1 -0.764706)))
(assert (= (select D 50) (row1 -0.411765)))
(assert (= (select D 51) (row1 -0.323529)))
(assert (= (select D 52) (row1 -0.764706)))
(assert (= (select D 53) (row1 -0.588235)))
(assert (= (select D 54) (row1 -0.058824)))
(assert (= (select D 55) (row1 -0.941176)))
(assert (= (select D 56) (row1 -0.764706)))
(assert (= (select D 57) (row1 -0.058824)))
(assert (= (select D 58) (row1 -0.588235)))
(assert (= (select D 59) (row1 -0.058824)))
(assert (= (select D 60) (row1 -0.852941)))
(assert (= (select D 61) (row1 -0.676471)))
(assert (= (select D 62) (row1 -0.058824)))
(assert (= (select D 63) (row1 0.294118)))
(assert (= (select D 64) (row1 -0.411765)))
(assert (= (select D 65) (row1 -0.323529)))
(assert (= (select D 66) (row1 -0.764706)))
(assert (= (select D 67) (row1 -0.764706)))
(assert (= (select D 68) (row1 -0.058824)))
(assert (= (select D 69) (row1 -0.058824)))
(assert (= (select D 70) (row1 -0.058824)))
(assert (= (select D 71) (row1 -0.911765)))
(assert (= (select D 72) (row1 -0.882353)))
(assert (= (select D 73) (row1 0.117647)))
(assert (= (select D 74) (row1 -0.058824)))
(assert (= (select D 75) (row1 -0.764706)))
(assert (= (select D 76) (row1 0.117647)))
(assert (= (select D 77) (row1 -0.794118)))
(assert (= (select D 78) (row1 0.470588)))
(assert (= (select D 79) (row1 -0.235294)))
(assert (= (select D 80) (row1 -0.411765)))
(assert (= (select D 81) (row1 -0.676471)))
(assert (= (select D 82) (row1 -0.588235)))
(assert (= (select D 83) (row1 -0.411765)))
(assert (= (select D 84) (row1 -0.823529)))
(assert (= (select D 85) (row1 -0.764706)))
(assert (= (select D 86) (row1 -0.588235)))
(assert (= (select D 87) (row1 -0.058824)))
(assert (= (select D 88) (row1 -0.588235)))
(assert (= (select D 89) (row1 -0.764706)))
(assert (= (select D 90) (row1 -0.764706)))
(assert (= (select D 91) (row1 -0.764706)))
(assert (= (select D 92) (row1 -0.764706)))
(assert (= (select D 93) (row1 -0.411765)))
(assert (= (select D 94) (row1 -0.764706)))
(assert (= (select D 95) (row1 0.470588)))
(assert (= (select D 96) (row1 -0.764706)))
(assert (= (select D 97) (row1 -0.588235)))
(assert (= (select D 98) (row1 -0.058824)))
(assert (= (select D 99) (row1 -0.529412)))
(assert (= (select D 100) (row1 -0.411765)))
(assert (= (select D 101) (row1 -0.058824)))
(assert (= (select D 102) (row1 -0.941176)))
(assert (= (select D 103) (row1 -0.852941)))
(assert (= (select D 104) (row1 -0.764706)))
(assert (= (select D 105) (row1 -0.411765)))
(assert (= (select D 106) (row1 -0.588235)))
(assert (= (select D 107) (row1 -0.764706)))
(assert (= (select D 108) (row1 -0.411765)))
(assert (= (select D 109) (row1 -0.705882)))
(assert (= (select D 110) (row1 -0.941176)))
(assert (= (select D 111) (row1 -0.676471)))
(assert (= (select D 112) (row1 -0.588235)))
(assert (= (select D 113) (row1 -0.058824)))
(assert (= (select D 114) (row1 -0.764706)))
(assert (= (select D 115) (row1 0.294118)))
(assert (= (select D 116) (row1 0.117647)))
(assert (= (select D 117) (row1 -0.823529)))
(assert (= (select D 118) (row1 -0.147059)))
(assert (= (select D 119) (row1 -0.764706)))
(assert (= (select D 120) (row1 -0.500000)))
(assert (= (select D 121) (row1 -0.411765)))
(assert (= (select D 122) (row1 -0.764706)))
(assert (= (select D 123) (row1 -0.823529)))
(assert (= (select D 124) (row1 -0.588235)))
(assert (= (select D 125) (row1 -0.764706)))
(assert (= (select D 126) (row1 -0.764706)))
(assert (= (select D 127) (row1 -0.764706)))
(assert (= (select D 128) (row1 -0.764706)))
(assert (= (select D 129) (row1 -0.764706)))
(assert (= (select D 130) (row1 0.294118)))
(assert (= (select D 131) (row1 -0.058824)))
(assert (= (select D 132) (row1 -0.676471)))
(assert (= (select D 133) (row1 -0.588235)))
(assert (= (select D 134) (row1 0.647059)))
(assert (= (select D 135) (row1 -0.764706)))
(assert (= (select D 136) (row1 -0.323529)))
(assert (= (select D 137) (row1 -0.764706)))
(assert (= (select D 138) (row1 -0.676471)))
(assert (= (select D 139) (row1 -0.764706)))
(assert (= (select D 140) (row1 -0.941176)))
(assert (= (select D 141) (row1 -0.058824)))
(assert (= (select D 142) (row1 -0.323529)))
(assert (= (select D 143) (row1 -0.588235)))
(assert (= (select D 144) (row1 -0.500000)))
(assert (= (select D 145) (row1 0.294118)))
(assert (= (select D 146) (row1 -0.941176)))
(assert (= (select D 147) (row1 -0.764706)))
(assert (= (select D 148) (row1 -0.058824)))
(assert (= (select D 149) (row1 -0.588235)))
(assert (= (select D 150) (row1 -0.941176)))
(assert (= (select D 151) (row1 -0.823529)))
(assert (= (select D 152) (row1 -0.058824)))
(assert (= (select D 153) (row1 -0.411765)))
(assert (= (select D 154) (row1 -0.411765)))
(assert (= (select D 155) (row1 -0.764706)))
(assert (= (select D 156) (row1 -0.852941)))
(assert (= (select D 157) (row1 -0.764706)))
(assert (= (select D 158) (row1 -0.411765)))
(assert (= (select D 159) (row1 -0.941176)))
(assert (= (select D 160) (row1 -0.411765)))
(assert (= (select D 161) (row1 -0.588235)))
(assert (= (select D 162) (row1 -0.676471)))
(assert (= (select D 163) (row1 -0.823529)))
(assert (= (select D 164) (row1 -0.058824)))
(assert (= (select D 165) (row1 -0.941176)))
(assert (= (select D 166) (row1 -0.588235)))
(assert (= (select D 167) (row1 -0.794118)))
(assert (= (select D 168) (row1 -0.411765)))
(assert (= (select D 169) (row1 -0.411765)))
(assert (= (select D 170) (row1 -0.676471)))
(assert (= (select D 171) (row1 -0.764706)))
(assert (= (select D 172) (row1 -0.411765)))
(assert (= (select D 173) (row1 -0.882353)))
(assert (= (select D 174) (row1 -0.500000)))
(assert (= (select D 175) (row1 -0.235294)))
(assert (= (select D 176) (row1 -0.764706)))
(assert (= (select D 177) (row1 -0.941176)))
(assert (= (select D 178) (row1 -0.764706)))
(assert (= (select D 179) (row1 -0.500000)))
(assert (= (select D 180) (row1 -0.058824)))
(assert (= (select D 181) (row1 -0.058824)))
(assert (= (select D 182) (row1 -0.500000)))
(assert (= (select D 183) (row1 -0.411765)))
(assert (= (select D 184) (row1 -0.588235)))
(assert (= (select D 185) (row1 -0.676471)))
(assert (= (select D 186) (row1 -0.852941)))
(assert (= (select D 187) (row1 -0.647059)))
(assert (= (select D 188) (row1 -0.764706)))
(assert (= (select D 189) (row1 -0.588235)))
(assert (= (select D 190) (row1 -0.411765)))
(assert (= (select D 191) (row1 0.294118)))
(assert (= (select D 192) (row1 -0.323529)))
(assert (= (select D 193) (row1 -0.941176)))
(assert (= (select D 194) (row1 0.205882)))
(assert (= (select D 195) (row1 -0.852941)))
(assert (= (select D 196) (row1 -0.941176)))
(assert (= (select D 197) (row1 -0.764706)))
(assert (= (select D 198) (row1 -0.411765)))
(assert (= (select D 199) (row1 -0.588235)))
(assert (= (select D 200) (row1 -0.852941)))
(assert (= (select D 201) (row1 -0.764706)))
(assert (= (select D 202) (row1 -0.323529)))
(assert (= (select D 203) (row1 -0.764706)))
(assert (= (select D 204) (row1 -0.764706)))
(assert (= (select D 205) (row1 -0.235294)))
(assert (= (select D 206) (row1 -0.764706)))
(assert (= (select D 207) (row1 -0.764706)))
(assert (= (select D 208) (row1 -0.411765)))
(assert (= (select D 209) (row1 -0.764706)))
(assert (= (select D 210) (row1 -0.852941)))
(assert (= (select D 211) (row1 -0.058824)))
(assert (= (select D 212) (row1 -0.323529)))
(assert (= (select D 213) (row1 -0.235294)))
(assert (= (select D 214) (row1 -0.058824)))
(assert (= (select D 215) (row1 -0.941176)))
(assert (= (select D 216) (row1 -0.588235)))
(assert (= (select D 217) (row1 -0.058824)))
(assert (= (select D 218) (row1 -0.411765)))
(assert (= (select D 219) (row1 -0.823529)))
(assert (= (select D 220) (row1 -0.764706)))
(assert (= (select D 221) (row1 -0.764706)))
(assert (= (select D 222) (row1 -0.764706)))
(assert (= (select D 223) (row1 -0.411765)))
(assert (= (select D 224) (row1 -0.676471)))
(assert (= (select D 225) (row1 -0.058824)))
(assert (= (select D 226) (row1 0.294118)))
(assert (= (select D 227) (row1 -0.764706)))
(assert (= (select D 228) (row1 -0.852941)))
(assert (= (select D 229) (row1 -0.411765)))
(assert (= (select D 230) (row1 -0.058824)))
(assert (= (select D 231) (row1 -0.852941)))
(assert (= (select D 232) (row1 -0.764706)))
(assert (= (select D 233) (row1 -0.588235)))
(assert (= (select D 234) (row1 -1.000000)))
(assert (= (select D 235) (row1 -0.411765)))
(assert (= (select D 236) (row1 -0.941176)))
(assert (= (select D 237) (row1 -0.500000)))
(assert (= (select D 238) (row1 -0.764706)))
(assert (= (select D 239) (row1 -0.235294)))
(assert (= (select D 240) (row1 -0.411765)))
(assert (= (select D 241) (row1 -0.941176)))
(assert (= (select D 242) (row1 0.294118)))
(assert (= (select D 243) (row1 -0.764706)))
(assert (= (select D 244) (row1 -0.764706)))
(assert (= (select D 245) (row1 -0.411765)))
(assert (= (select D 246) (row1 -0.764706)))
(assert (= (select D 247) (row1 -0.941176)))
(assert (= (select D 248) (row1 -0.411765)))
(assert (= (select D 249) (row1 -0.588235)))
(assert (= (select D 250) (row1 -0.941176)))
(assert (= (select D 251) (row1 -0.764706)))
(assert (= (select D 252) (row1 -0.235294)))
(assert (= (select D 253) (row1 -0.411765)))
(assert (= (select D 254) (row1 -0.852941)))
(assert (= (select D 255) (row1 0.647059)))
(assert (= (select D 256) (row1 -0.411765)))
(assert (= (select D 257) (row1 -0.764706)))
(assert (= (select D 258) (row1 -0.676471)))
(assert (= (select D 259) (row1 -0.794118)))
(assert (= (select D 260) (row1 -0.764706)))
(assert (= (select D 261) (row1 -0.411765)))
(assert (= (select D 262) (row1 -0.588235)))
(assert (= (select D 263) (row1 -0.764706)))
(assert (= (select D 264) (row1 -0.823529)))
(assert (= (select D 265) (row1 -0.676471)))
(assert (= (select D 266) (row1 -0.058824)))
(assert (= (select D 267) (row1 -0.411765)))
(assert (= (select D 268) (row1 -0.705882)))
(assert (= (select D 269) (row1 -0.411765)))
(assert (= (select D 270) (row1 -0.588235)))
(assert (= (select D 271) (row1 -0.764706)))
(assert (= (select D 272) (row1 0.294118)))
(assert (= (select D 273) (row1 0.294118)))
(assert (= (select D 274) (row1 -0.235294)))
(assert (= (select D 275) (row1 -0.852941)))
(assert (= (select D 276) (row1 -0.588235)))
(assert (= (select D 277) (row1 -0.764706)))
(assert (= (select D 278) (row1 -0.941176)))
(assert (= (select D 279) (row1 -0.411765)))
(assert (= (select D 280) (row1 -0.676471)))
(assert (= (select D 281) (row1 -0.764706)))
(assert (= (select D 282) (row1 -0.588235)))
(assert (= (select D 283) (row1 -0.676471)))
(assert (= (select D 284) (row1 -0.411765)))
(assert (= (select D 285) (row1 0.264706)))
(assert (= (select D 286) (row1 0.294118)))
(assert (= (select D 287) (row1 0.294118)))
(assert (= (select D 288) (row1 -0.764706)))
(assert (= (select D 289) (row1 -0.411765)))
(assert (= (select D 290) (row1 -0.764706)))
(assert (= (select D 291) (row1 -0.058824)))
(assert (= (select D 292) (row1 -0.411765)))
(assert (= (select D 293) (row1 0.117647)))
(assert (= (select D 294) (row1 0.294118)))
(assert (= (select D 295) (row1 0.294118)))
(assert (= (select D 296) (row1 -0.764706)))
(assert (= (select D 297) (row1 -0.823529)))
(assert (= (select D 298) (row1 -0.588235)))
(assert (= (select D 299) (row1 -0.500000)))
(assert (= (select D 300) (row1 -0.941176)))
(assert (= (select D 301) (row1 -0.058824)))
(assert (= (select D 302) (row1 -0.411765)))
(assert (= (select D 303) (row1 -0.823529)))
(assert (= (select D 304) (row1 0.294118)))
(assert (= (select D 305) (row1 -0.941176)))
(assert (= (select D 306) (row1 -0.235294)))
(assert (= (select D 307) (row1 -0.764706)))
(assert (= (select D 308) (row1 -0.882353)))
(assert (= (select D 309) (row1 -0.852941)))
(assert (= (select D 310) (row1 0.294118)))
(assert (= (select D 311) (row1 -0.411765)))
(assert (= (select D 312) (row1 -0.411765)))
(assert (= (select D 313) (row1 -0.764706)))
(assert (= (select D 314) (row1 -1.000000)))
(assert (= (select D 315) (row1 -0.058824)))
(assert (= (select D 316) (row1 -0.764706)))
(assert (= (select D 317) (row1 -0.411765)))
(assert (= (select D 318) (row1 -0.764706)))
(assert (= (select D 319) (row1 -0.676471)))
(assert (= (select D 320) (row1 -0.235294)))
(assert (= (select D 321) (row1 -0.411765)))
(assert (= (select D 322) (row1 -0.411765)))
(assert (= (select D 323) (row1 -0.588235)))
(assert (= (select D 324) (row1 -0.588235)))
(assert (= (select D 325) (row1 -0.882353)))
(assert (= (select D 326) (row1 -0.764706)))
(assert (= (select D 327) (row1 -0.411765)))
(assert (= (select D 328) (row1 -0.058824)))
(assert (= (select D 329) (row1 -0.941176)))
(assert (= (select D 330) (row1 -0.411765)))
(assert (= (select D 331) (row1 -0.588235)))
(assert (= (select D 332) (row1 0.647059)))
(assert (= (select D 333) (row1 0.294118)))
(assert (= (select D 334) (row1 -0.411765)))
(assert (= (select D 335) (row1 -0.941176)))
(assert (= (select D 336) (row1 -0.735294)))
(assert (= (select D 337) (row1 -0.676471)))
(assert (= (select D 338) (row1 -0.411765)))
(assert (= (select D 339) (row1 -0.823529)))
(assert (= (select D 340) (row1 -0.411765)))
(assert (= (select D 341) (row1 -0.500000)))
(assert (= (select D 342) (row1 -0.588235)))
(assert (= (select D 343) (row1 -0.588235)))
(assert (= (select D 344) (row1 -0.823529)))
(assert (= (select D 345) (row1 -0.676471)))
(assert (= (select D 346) (row1 -0.735294)))
(assert (= (select D 347) (row1 -0.411765)))
(assert (= (select D 348) (row1 -0.941176)))
(assert (= (select D 349) (row1 -0.852941)))
(assert (= (select D 350) (row1 -0.852941)))
(assert (= (select D 351) (row1 -0.852941)))
(assert (= (select D 352) (row1 -0.588235)))
(assert (= (select D 353) (row1 -0.764706)))
(assert (= (select D 354) (row1 -0.823529)))
(assert (= (select D 355) (row1 -0.411765)))
(assert (= (select D 356) (row1 -0.764706)))
(assert (= (select D 357) (row1 -0.058824)))
(assert (= (select D 358) (row1 -0.764706)))
(assert (= (select D 359) (row1 -0.235294)))
(assert (= (select D 360) (row1 -0.588235)))
(assert (= (select D 361) (row1 -0.764706)))
(assert (= (select D 362) (row1 -0.764706)))
(assert (= (select D 363) (row1 -0.941176)))
(assert (= (select D 364) (row1 -0.588235)))
(assert (= (select D 365) (row1 -0.764706)))
(assert (= (select D 366) (row1 -0.588235)))
(assert (= (select D 367) (row1 -0.588235)))
(assert (= (select D 368) (row1 -0.058824)))
(assert (= (select D 369) (row1 -0.588235)))
(assert (= (select D 370) (row1 -0.058824)))
(assert (= (select D 371) (row1 -0.588235)))
(assert (= (select D 372) (row1 -0.823529)))
(assert (= (select D 373) (row1 0.647059)))
(assert (= (select D 374) (row1 0.647059)))
(assert (= (select D 375) (row1 0.294118)))
(assert (= (select D 376) (row1 -0.588235)))
(assert (= (select D 377) (row1 -0.911765)))
(assert (= (select D 378) (row1 -0.058824)))
(assert (= (select D 379) (row1 -0.941176)))
(assert (= (select D 380) (row1 -0.529412)))
(assert (= (select D 381) (row1 -0.588235)))
(assert (= (select D 382) (row1 -0.470588)))
(assert (= (select D 383) (row1 -0.764706)))
(assert (= (select D 384) (row1 -0.235294)))
(assert (= (select D 385) (row1 -0.588235)))
(assert (= (select D 386) (row1 -0.588235)))
(assert (= (select D 387) (row1 -0.588235)))
(assert (= (select D 388) (row1 -0.676471)))
(assert (= (select D 389) (row1 -0.852941)))
(assert (= (select D 390) (row1 -0.588235)))
(assert (= (select D 391) (row1 -0.764706)))
(assert (= (select D 392) (row1 -0.058824)))
(assert (= (select D 393) (row1 -0.941176)))
(assert (= (select D 394) (row1 -0.852941)))
(assert (= (select D 395) (row1 0.029412)))
(assert (= (select D 396) (row1 -0.764706)))
(assert (= (select D 397) (row1 -0.058824)))
(assert (= (select D 398) (row1 -0.764706)))
(assert (= (select D 399) (row1 -0.411765)))
(assert (= (select D 400) (row1 -0.588235)))
(assert (= (select D 401) (row1 -0.588235)))
(assert (= (select D 402) (row1 -0.411765)))
(assert (= (select D 403) (row1 -0.705882)))
(assert (= (select D 404) (row1 -0.588235)))
(assert (= (select D 405) (row1 -0.411765)))
(assert (= (select D 406) (row1 -0.411765)))
(assert (= (select D 407) (row1 -0.676471)))
(assert (= (select D 408) (row1 -0.411765)))
(assert (= (select D 409) (row1 -0.764706)))
(assert (= (select D 410) (row1 -0.411765)))
(assert (= (select D 411) (row1 -0.147059)))
(assert (= (select D 412) (row1 -0.764706)))
(assert (= (select D 413) (row1 -0.823529)))
(assert (= (select D 414) (row1 -0.411765)))
(assert (= (select D 415) (row1 -0.058824)))
(assert (= (select D 416) (row1 -0.764706)))
(assert (= (select D 417) (row1 -0.588235)))
(assert (= (select D 418) (row1 -0.500000)))
(assert (= (select D 419) (row1 -0.588235)))
(assert (= (select D 420) (row1 -0.676471)))
(assert (= (select D 421) (row1 -0.764706)))
(assert (= (select D 422) (row1 -0.764706)))
(assert (= (select D 423) (row1 -0.500000)))
(assert (= (select D 424) (row1 -0.764706)))
(assert (= (select D 425) (row1 -0.588235)))
(assert (= (select D 426) (row1 -0.294118)))
(assert (= (select D 427) (row1 -0.588235)))
(assert (= (select D 428) (row1 -0.852941)))
(assert (= (select D 429) (row1 -0.588235)))
(assert (= (select D 430) (row1 -0.970588)))
(assert (= (select D 431) (row1 -0.411765)))
(assert (= (select D 432) (row1 -0.941176)))
(assert (= (select D 433) (row1 -0.411765)))
(assert (= (select D 434) (row1 -0.852941)))
(assert (= (select D 435) (row1 -0.764706)))
(assert (= (select D 436) (row1 -0.941176)))
(assert (= (select D 437) (row1 -0.411765)))
(assert (= (select D 438) (row1 0.117647)))
(assert (= (select D 439) (row1 -0.764706)))
(assert (= (select D 440) (row1 -0.764706)))
(assert (= (select D 441) (row1 -0.764706)))
(assert (= (select D 442) (row1 -0.529412)))
(assert (= (select D 443) (row1 -0.764706)))
(assert (= (select D 444) (row1 0.294118)))
(assert (= (select D 445) (row1 -0.852941)))
(assert (= (select D 446) (row1 -0.058824)))
(assert (= (select D 447) (row1 -0.911765)))
(assert (= (select D 448) (row1 -0.764706)))
(assert (= (select D 449) (row1 -0.676471)))
(assert (= (select D 450) (row1 -0.058824)))
(assert (= (select D 451) (row1 -0.941176)))
(assert (= (select D 452) (row1 -0.764706)))
(assert (= (select D 453) (row1 -0.411765)))
(assert (= (select D 454) (row1 -0.411765)))
(assert (= (select D 455) (row1 -0.411765)))
(assert (= (select D 456) (row1 -0.794118)))
(assert (= (select D 457) (row1 -0.764706)))
(assert (= (select D 458) (row1 -0.941176)))
(assert (= (select D 459) (row1 -0.588235)))
(assert (= (select D 460) (row1 -0.058824)))
(assert (= (select D 461) (row1 -0.676471)))
(assert (= (select D 462) (row1 -0.764706)))
(assert (= (select D 463) (row1 -0.764706)))
(assert (= (select D 464) (row1 -0.588235)))
(assert (= (select D 465) (row1 -0.411765)))
(assert (= (select D 466) (row1 -0.411765)))
(assert (= (select D 467) (row1 0.294118)))
(assert (= (select D 468) (row1 -0.147059)))
(assert (= (select D 469) (row1 -0.411765)))
(assert (= (select D 470) (row1 -0.411765)))
(assert (= (select D 471) (row1 -0.941176)))
(assert (= (select D 472) (row1 -0.852941)))
(assert (= (select D 473) (row1 -0.941176)))
(assert (= (select D 474) (row1 -0.588235)))
(assert (= (select D 475) (row1 -0.588235)))
(assert (= (select D 476) (row1 0.029412)))
(assert (= (select D 477) (row1 -0.411765)))
(assert (= (select D 478) (row1 -0.764706)))
(assert (= (select D 479) (row1 -0.676471)))
(assert (= (select D 480) (row1 -0.764706)))
(assert (= (select D 481) (row1 -0.411765)))
(assert (= (select D 482) (row1 -0.235294)))
(assert (= (select D 483) (row1 -0.676471)))
(assert (= (select D 484) (row1 -0.764706)))
(assert (= (select D 485) (row1 -0.941176)))
(assert (= (select D 486) (row1 -0.764706)))
(assert (= (select D 487) (row1 -0.411765)))
(assert (= (select D 488) (row1 -0.823529)))
(assert (= (select D 489) (row1 -0.941176)))
(assert (= (select D 490) (row1 -0.764706)))
(assert (= (select D 491) (row1 -0.323529)))
(assert (= (select D 492) (row1 -0.941176)))
(assert (= (select D 493) (row1 -0.941176)))
(assert (= (select D 494) (row1 -0.764706)))
(assert (= (select D 495) (row1 -0.411765)))
(assert (= (select D 496) (row1 -0.058824)))
(assert (= (select D 497) (row1 -0.411765)))
(assert (= (select D 498) (row1 -0.588235)))
(assert (= (select D 499) (row1 -0.941176)))
(assert (= (select D 500) (row1 -0.411765)))
(assert (= (select D 501) (row1 -0.058824)))
(assert (= (select D 502) (row1 -0.852941)))
(assert (= (select D 503) (row1 -0.411765)))
(assert (= (select D 504) (row1 -0.411765)))
(assert (= (select D 505) (row1 -0.823529)))
(assert (= (select D 506) (row1 -0.676471)))
(assert (= (select D 507) (row1 -0.676471)))
(assert (= (select D 508) (row1 -0.411765)))
(assert (= (select D 509) (row1 0.029412)))
(assert (= (select D 510) (row1 -0.764706)))
(assert (= (select D 511) (row1 -0.058824)))
(assert (= (select D 512) (row1 -0.676471)))
(assert (= (select D 513) (row1 -0.764706)))
(assert (= (select D 514) (row1 -0.411765)))
(assert (= (select D 515) (row1 -0.941176)))
(assert (= (select D 516) (row1 -0.941176)))
(assert (= (select D 517) (row1 -0.058824)))
(assert (= (select D 518) (row1 -0.941176)))
(assert (= (select D 519) (row1 -0.941176)))
(assert (= (select D 520) (row1 -0.411765)))
(assert (= (select D 521) (row1 -0.588235)))
(assert (= (select D 522) (row1 0.294118)))
(assert (= (select D 523) (row1 -0.411765)))
(assert (= (select D 524) (row1 -0.588235)))
(assert (= (select D 525) (row1 -0.352941)))
(assert (= (select D 526) (row1 -0.676471)))
(assert (= (select D 527) (row1 -1.000000)))
(assert (= (select D 528) (row1 -0.058824)))
(assert (= (select D 529) (row1 -0.941176)))
(assert (= (select D 530) (row1 -0.058824)))
(assert (= (select D 531) (row1 -0.676471)))
(assert (= (select D 532) (row1 -0.764706)))
(assert (= (select D 533) (row1 -0.411765)))
(assert (= (select D 534) (row1 -0.411765)))
(assert (= (select D 535) (row1 -0.500000)))
(assert (= (select D 536) (row1 -0.941176)))
(assert (= (select D 537) (row1 -0.588235)))
(assert (= (select D 538) (row1 0.294118)))
(assert (= (select D 539) (row1 -0.588235)))
(assert (= (select D 540) (row1 -0.764706)))
(assert (= (select D 541) (row1 -0.411765)))
(assert (= (select D 542) (row1 -0.235294)))
(assert (= (select D 543) (row1 -0.588235)))
(assert (= (select D 544) (row1 -0.764706)))
(assert (= (select D 545) (row1 -0.411765)))
(assert (= (select D 546) (row1 -0.411765)))
(assert (= (select D 547) (row1 -0.411765)))
(assert (= (select D 548) (row1 -0.764706)))
(assert (= (select D 549) (row1 0.294118)))
(assert (= (select D 550) (row1 -0.764706)))
(assert (= (select D 551) (row1 -0.941176)))
(assert (= (select D 552) (row1 0.294118)))
(assert (= (select D 553) (row1 -0.764706)))
(assert (= (select D 554) (row1 -0.852941)))
(assert (= (select D 555) (row1 -0.764706)))
(assert (= (select D 556) (row1 -0.588235)))
(assert (= (select D 557) (row1 -0.500000)))
(assert (= (select D 558) (row1 -0.411765)))
(assert (= (select D 559) (row1 -0.588235)))
(assert (= (select D 560) (row1 -0.411765)))
(assert (= (select D 561) (row1 -0.411765)))
(assert (= (select D 562) (row1 -0.941176)))
(assert (= (select D 563) (row1 -0.058824)))
(assert (= (select D 564) (row1 -0.411765)))
(assert (= (select D 565) (row1 -0.411765)))
(assert (= (select D 566) (row1 -0.764706)))
(assert (= (select D 567) (row1 -0.411765)))
(assert (= (select D 568) (row1 0.294118)))
(assert (= (select D 569) (row1 0.294118)))
(assert (= (select D 570) (row1 -0.411765)))
(assert (= (select D 571) (row1 -0.235294)))
(assert (= (select D 572) (row1 -0.411765)))
(assert (= (select D 573) (row1 -0.676471)))
(assert (= (select D 574) (row1 -0.852941)))
(assert (= (select D 575) (row1 -0.676471)))
(assert (= (select D 576) (row1 -0.764706)))
(assert (= (select D 577) (row1 -0.411765)))
(assert (= (select D 578) (row1 -0.058824)))
(assert (= (select D 579) (row1 -0.411765)))
(assert (= (select D 580) (row1 -0.588235)))
(assert (= (select D 581) (row1 -0.764706)))
(assert (= (select D 582) (row1 -0.852941)))
(assert (= (select D 583) (row1 -0.058824)))
(assert (= (select D 584) (row1 -0.764706)))
(assert (= (select D 585) (row1 -0.588235)))
(assert (= (select D 586) (row1 -0.852941)))
(assert (= (select D 587) (row1 -0.764706)))
(assert (= (select D 588) (row1 -0.588235)))
(assert (= (select D 589) (row1 -0.764706)))
(assert (= (select D 590) (row1 -0.764706)))
(assert (= (select D 591) (row1 -0.411765)))
(assert (= (select D 592) (row1 -0.500000)))
(assert (= (select D 593) (row1 -0.411765)))
(assert (= (select D 594) (row1 -0.411765)))
(assert (= (select D 595) (row1 -0.941176)))
(assert (= (select D 596) (row1 -0.411765)))
(assert (= (select D 597) (row1 -0.411765)))
(assert (= (select D 598) (row1 -0.588235)))
(assert (= (select D 599) (row1 -0.411765)))
(assert (= (select D 600) (row1 -0.911765)))
(assert (= (select D 601) (row1 -0.852941)))
(assert (= (select D 602) (row1 -0.411765)))
(assert (= (select D 603) (row1 -0.058824)))
(assert (= (select D 604) (row1 -0.823529)))
(assert (= (select D 605) (row1 -0.411765)))
(assert (= (select D 606) (row1 -0.411765)))
(assert (= (select D 607) (row1 -0.058824)))
(assert (= (select D 608) (row1 -0.588235)))
(assert (= (select D 609) (row1 -0.676471)))
(assert (= (select D 610) (row1 -0.764706)))
(assert (= (select D 611) (row1 -0.823529)))
(assert (= (select D 612) (row1 -0.500000)))
(assert (= (select D 613) (row1 -0.411765)))
(assert (= (select D 614) (row1 -0.588235)))
(assert (= (select D 615) (row1 0.294118)))
(assert (= (select D 616) (row1 0.647059)))
(assert (= (select D 617) (row1 -0.941176)))
(assert (= (select D 618) (row1 -0.235294)))
(assert (= (select D 619) (row1 -0.764706)))
(assert (= (select D 620) (row1 -0.500000)))
(assert (= (select D 621) (row1 -0.588235)))
(assert (= (select D 622) (row1 0.294118)))
(assert (= (select D 623) (row1 -0.764706)))
(assert (= (select D 624) (row1 -0.588235)))
(assert (= (select D 625) (row1 -0.676471)))
(assert (= (select D 626) (row1 -0.941176)))
(assert (= (select D 627) (row1 -0.852941)))
(assert (= (select D 628) (row1 0.117647)))
(assert (= (select D 629) (row1 -0.852941)))
(assert (= (select D 630) (row1 -0.411765)))
(assert (= (select D 631) (row1 -0.588235)))
(assert (= (select D 632) (row1 -0.676471)))
(assert (= (select D 633) (row1 -0.852941)))
(assert (= (select D 634) (row1 -0.411765)))
(assert (= (select D 635) (row1 -0.764706)))
(assert (= (select D 636) (row1 -0.411765)))
(assert (= (select D 637) (row1 0.647059)))
(assert (= (select D 638) (row1 -0.764706)))
(assert (= (select D 639) (row1 0.117647)))
(assert (= (select D 640) (row1 -0.588235)))
(assert (= (select D 641) (row1 -0.676471)))
(assert (= (select D 642) (row1 -0.676471)))
(assert (= (select D 643) (row1 -0.411765)))
(assert (= (select D 644) (row1 -0.588235)))
(assert (= (select D 645) (row1 -0.058824)))
(assert (= (select D 646) (row1 -0.235294)))
(assert (= (select D 647) (row1 -0.764706)))
(assert (= (select D 648) (row1 -0.411765)))
(assert (= (select D 649) (row1 -0.764706)))
(assert (= (select D 650) (row1 0.294118)))
(assert (= (select D 651) (row1 -0.764706)))
(assert (= (select D 652) (row1 -0.411765)))
(assert (= (select D 653) (row1 -0.058824)))
(assert (= (select D 654) (row1 -0.411765)))
(assert (= (select D 655) (row1 -0.705882)))
(assert (= (select D 656) (row1 -0.764706)))
(assert (= (select D 657) (row1 0.294118)))
(assert (= (select D 658) (row1 -0.235294)))
(assert (= (select D 659) (row1 -0.588235)))
(assert (= (select D 660) (row1 -0.764706)))
(assert (= (select D 661) (row1 -0.764706)))
(assert (= (select D 662) (row1 -0.500000)))
(assert (= (select D 663) (row1 -0.941176)))
(assert (= (select D 664) (row1 -0.941176)))
(assert (= (select D 665) (row1 -0.411765)))
(assert (= (select D 666) (row1 -0.235294)))
(assert (= (select D 667) (row1 0.294118)))
(assert (= (select D 668) (row1 -0.764706)))
(assert (= (select D 669) (row1 -0.235294)))
(assert (= (select D 670) (row1 -0.411765)))
(assert (= (select D 671) (row1 -0.058824)))
(assert (= (select D 672) (row1 0.647059)))
(assert (= (select D 673) (row1 -0.941176)))
(assert (= (select D 674) (row1 -0.500000)))
(assert (= (select D 675) (row1 -0.235294)))
(assert (= (select D 676) (row1 -0.411765)))
(assert (= (select D 677) (row1 1.000000)))
(assert (= (select D 678) (row1 -0.411765)))
(assert (= (select D 679) (row1 -0.588235)))
(assert (= (select D 680) (row1 -0.941176)))
(assert (= (select D 681) (row1 -0.764706)))
(assert (= (select D 682) (row1 -0.676471)))
(assert (= (select D 683) (row1 -0.411765)))
(assert (= (select D 684) (row1 -0.058824)))
(assert (= (select D 685) (row1 0.647059)))
(assert (= (select D 686) (row1 -0.823529)))
(assert (= (select D 687) (row1 -0.058824)))
(assert (= (select D 688) (row1 -0.852941)))
(assert (= (select D 689) (row1 -0.764706)))
(assert (= (select D 690) (row1 -0.676471)))
(assert (= (select D 691) (row1 -0.676471)))
(assert (= (select D 692) (row1 -0.411765)))
(assert (= (select D 693) (row1 -0.941176)))
(assert (= (select D 694) (row1 -0.411765)))
(assert (= (select D 695) (row1 -0.941176)))
(assert (= (select D 696) (row1 -0.764706)))
(assert (= (select D 697) (row1 -0.764706)))
(assert (= (select D 698) (row1 -0.588235)))
(assert (= (select D 699) (row1 -0.676471)))
(assert (= (select D 700) (row1 -0.764706)))
(assert (= (select D 701) (row1 0.294118)))
(assert (= (select D 702) (row1 -0.411765)))
(assert (= (select D 703) (row1 -0.235294)))
(assert (= (select D 704) (row1 -0.323529)))
(assert (= (select D 705) (row1 -0.676471)))
(assert (= (select D 706) (row1 0.294118)))
(assert (= (select D 707) (row1 -0.764706)))
(assert (= (select D 708) (row1 -0.852941)))
(assert (= (select D 709) (row1 -0.852941)))
(assert (= (select D 710) (row1 -0.588235)))
(assert (= (select D 711) (row1 -0.941176)))
(assert (= (select D 712) (row1 -0.500000)))
(assert (= (select D 713) (row1 -0.852941)))
(assert (= (select D 714) (row1 0.647059)))
(assert (= (select D 715) (row1 -0.235294)))
(assert (= (select D 716) (row1 -0.235294)))
(assert (= (select D 717) (row1 -0.588235)))
(assert (= (select D 718) (row1 -0.411765)))
(assert (= (select D 719) (row1 -0.529412)))
(assert (= (select D 720) (row1 -0.852941)))
(assert (= (select D 721) (row1 -0.941176)))
(assert (= (select D 722) (row1 -0.764706)))
(assert (= (select D 723) (row1 -0.852941)))
(assert (= (select D 724) (row1 -0.323529)))
(assert (= (select D 725) (row1 -0.941176)))
(assert (= (select D 726) (row1 -0.676471)))
(assert (= (select D 727) (row1 -0.588235)))
(assert (= (select D 728) (row1 0.294118)))
(assert (= (select D 729) (row1 -0.411765)))
(assert (= (select D 730) (row1 -0.411765)))
(assert (= (select D 731) (row1 -0.411765)))
(assert (= (select D 732) (row1 -0.882353)))
(assert (= (select D 733) (row1 -0.411765)))
(assert (= (select D 734) (row1 -1.000000)))
(assert (= (select D 735) (row1 -0.058824)))
(assert (= (select D 736) (row1 -0.411765)))
(assert (= (select D 737) (row1 -0.588235)))
(assert (= (select D 738) (row1 -0.941176)))
(assert (= (select D 739) (row1 -0.235294)))
(assert (= (select D 740) (row1 -0.411765)))
(assert (= (select D 741) (row1 -0.823529)))
(assert (= (select D 742) (row1 -0.500000)))
(assert (= (select D 743) (row1 -0.411765)))
(assert (= (select D 744) (row1 0.029412)))
(assert (= (select D 745) (row1 -0.735294)))
(assert (= (select D 746) (row1 -0.676471)))
(assert (= (select D 747) (row1 -0.764706)))
(assert (= (select D 748) (row1 -0.500000)))
(assert (= (select D 749) (row1 -0.676471)))
(assert (= (select D 750) (row1 -0.941176)))
(assert (= (select D 751) (row1 -0.588235)))
(assert (= (select D 752) (row1 -0.764706)))
(assert (= (select D 753) (row1 -0.235294)))
(assert (= (select D 754) (row1 -0.764706)))
(assert (= (select D 755) (row1 -0.411765)))
(assert (= (select D 756) (row1 -0.941176)))
(assert (= (select D 757) (row1 -0.676471)))
(assert (= (select D 758) (row1 -0.411765)))
(assert (= (select D 759) (row1 -0.764706)))
(assert (= (select D 760) (row1 -0.676471)))
(assert (= (select D 761) (row1 -0.588235)))
(assert (= (select D 762) (row1 -0.764706)))
(assert (= (select D 763) (row1 -0.500000)))
(assert (= (select D 764) (row1 -0.411765)))
(assert (= (select D 765) (row1 -0.764706)))
(assert (= (select D 766) (row1 -0.235294)))
(assert (= (select D 767) (row1 -0.823529)))
(assert (= (select D 768) (row1 -0.764706)))
(assert (= (select D 769) (row1 -0.764706)))
(assert (= (select D 770) (row1 -0.411765)))
(assert (= (select D 771) (row1 -0.058824)))
(assert (= (select D 772) (row1 -0.500000)))
(assert (= (select D 773) (row1 -0.411765)))
(assert (= (select D 774) (row1 -0.764706)))
(assert (= (select D 775) (row1 -0.411765)))
(assert (= (select D 776) (row1 -0.058824)))
(assert (= (select D 777) (row1 -0.588235)))
(assert (= (select D 778) (row1 -0.058824)))
(assert (= (select D 779) (row1 -0.588235)))
(assert (= (select D 780) (row1 0.029412)))
(assert (= (select D 781) (row1 -0.411765)))
(assert (= (select D 782) (row1 -0.764706)))
(assert (= (select D 783) (row1 -0.764706)))
(assert (= (select D 784) (row1 -0.529412)))
(assert (= (select D 785) (row1 -0.588235)))
(assert (= (select D 786) (row1 -0.470588)))
(assert (= (select D 787) (row1 0.294118)))
(assert (= (select D 788) (row1 0.294118)))
(assert (= (select D 789) (row1 0.058824)))
(assert (= (select D 790) (row1 -0.500000)))
(assert (= (select D 791) (row1 -0.411765)))
(assert (= (select D 792) (row1 -0.941176)))
(assert (= (select D 793) (row1 -0.411765)))
(assert (= (select D 794) (row1 -0.411765)))
(assert (= (select D 795) (row1 -0.852941)))
(assert (= (select D 796) (row1 -0.588235)))
(assert (= (select D 797) (row1 -0.764706)))
(assert (= (select D 798) (row1 -0.411765)))
(assert (= (select D 799) (row1 -0.852941)))
(assert (= (select D 800) (row1 -0.411765)))
(assert (= (select D 801) (row1 -0.588235)))
(assert (= (select D 802) (row1 -0.529412)))
(assert (= (select D 803) (row1 -0.764706)))
(assert (= (select D 804) (row1 -0.764706)))
(assert (= (select D 805) (row1 -0.058824)))
(assert (= (select D 806) (row1 -0.941176)))
(assert (= (select D 807) (row1 -0.764706)))
(assert (= (select D 808) (row1 0.117647)))
(assert (= (select D 809) (row1 -0.676471)))
(assert (= (select D 810) (row1 -0.882353)))
(assert (= (select D 811) (row1 -0.941176)))
(assert (= (select D 812) (row1 -0.058824)))
(assert (= (select D 813) (row1 0.294118)))
(assert (= (select D 814) (row1 0.294118)))
(assert (= (select D 815) (row1 -0.058824)))
(assert (= (select D 816) (row1 -0.941176)))
(assert (= (select D 817) (row1 -0.941176)))
(assert (= (select D 818) (row1 -0.058824)))
(assert (= (select D 819) (row1 -0.588235)))
(assert (= (select D 820) (row1 -0.764706)))
(assert (= (select D 821) (row1 -0.764706)))
(assert (= (select D 822) (row1 -0.058824)))
(assert (= (select D 823) (row1 -0.882353)))
(assert (= (select D 824) (row1 -0.588235)))
(assert (= (select D 825) (row1 -0.500000)))
(assert (= (select D 826) (row1 -0.588235)))
(assert (= (select D 827) (row1 -0.588235)))
(assert (= (select D 828) (row1 -0.058824)))
(assert (= (select D 829) (row1 0.294118)))
(assert (= (select D 830) (row1 -0.411765)))
(assert (= (select D 831) (row1 -0.588235)))
(assert (= (select D 832) (row1 0.205882)))
(assert (= (select D 833) (row1 -0.411765)))
(assert (= (select D 834) (row1 -0.676471)))
(assert (= (select D 835) (row1 -0.764706)))
(assert (= (select D 836) (row1 -0.764706)))
(assert (= (select D 837) (row1 -1.000000)))
(assert (= (select D 838) (row1 -0.411765)))
(assert (= (select D 839) (row1 -0.411765)))
(assert (= (select D 840) (row1 -0.058824)))
(assert (= (select D 841) (row1 -0.500000)))
(assert (= (select D 842) (row1 -0.588235)))
(assert (= (select D 843) (row1 -0.411765)))
(assert (= (select D 844) (row1 -0.588235)))
(assert (= (select D 845) (row1 -0.500000)))
(assert (= (select D 846) (row1 -0.588235)))
(assert (= (select D 847) (row1 -0.411765)))
(assert (= (select D 848) (row1 -0.852941)))
(assert (= (select D 849) (row1 -0.764706)))
(assert (= (select D 850) (row1 -0.529412)))
(assert (= (select D 851) (row1 -0.411765)))
(assert (= (select D 852) (row1 -0.676471)))
(assert (= (select D 853) (row1 -0.588235)))
(assert (= (select D 854) (row1 -0.058824)))
(assert (= (select D 855) (row1 -0.411765)))
(assert (= (select D 856) (row1 -0.823529)))
(assert (= (select D 857) (row1 -0.676471)))
(assert (= (select D 858) (row1 -0.676471)))
(assert (= (select D 859) (row1 -0.852941)))
(assert (= (select D 860) (row1 -0.411765)))
(assert (= (select D 861) (row1 -0.588235)))
(assert (= (select D 862) (row1 -0.411765)))
(assert (= (select D 863) (row1 -0.323529)))
(assert (= (select D 864) (row1 -0.823529)))
(assert (= (select D 865) (row1 -0.676471)))
(assert (= (select D 866) (row1 -0.588235)))
(assert (= (select D 867) (row1 -0.764706)))
(assert (= (select D 868) (row1 -0.058824)))
(assert (= (select D 869) (row1 -0.764706)))
(assert (= (select D 870) (row1 -0.058824)))
(assert (= (select D 871) (row1 -0.941176)))
(assert (= (select D 872) (row1 -0.411765)))
(assert (= (select D 873) (row1 -0.676471)))
(assert (= (select D 874) (row1 -0.764706)))
(assert (= (select D 875) (row1 -0.794118)))
(assert (= (select D 876) (row1 -0.588235)))
(assert (= (select D 877) (row1 -0.058824)))
(assert (= (select D 878) (row1 -0.852941)))
(assert (= (select D 879) (row1 -0.235294)))
(assert (= (select D 880) (row1 -0.411765)))
(assert (= (select D 881) (row1 -0.411765)))
(assert (= (select D 882) (row1 -0.235294)))
(assert (= (select D 883) (row1 -0.588235)))
(assert (= (select D 884) (row1 -0.411765)))
(assert (= (select D 885) (row1 -0.764706)))
(assert (= (select D 886) (row1 -0.411765)))
(assert (= (select D 887) (row1 0.294118)))
(assert (= (select D 888) (row1 -0.058824)))
(assert (= (select D 889) (row1 -0.294118)))
(assert (= (select D 890) (row1 -0.323529)))
(assert (= (select D 891) (row1 -0.676471)))
(assert (= (select D 892) (row1 -0.764706)))
(assert (= (select D 893) (row1 -0.058824)))
(assert (= (select D 894) (row1 -0.588235)))
(assert (= (select D 895) (row1 -0.058824)))
(assert (= (select D 896) (row1 -0.500000)))
(assert (= (select D 897) (row1 -0.764706)))
(assert (= (select D 898) (row1 -0.676471)))
(assert (= (select D 899) (row1 -0.588235)))
(assert (= (select D 900) (row1 -0.647059)))
(assert (= (select D 901) (row1 -0.529412)))
(assert (= (select D 902) (row1 -0.058824)))
(assert (= (select D 903) (row1 -0.676471)))
(assert (= (select D 904) (row1 -0.411765)))
(assert (= (select D 905) (row1 -0.764706)))
(assert (= (select D 906) (row1 -0.500000)))
(assert (= (select D 907) (row1 -0.058824)))
(assert (= (select D 908) (row1 -0.676471)))
(assert (= (select D 909) (row1 -0.852941)))
(assert (= (select D 910) (row1 -0.058824)))
(assert (= (select D 911) (row1 -0.411765)))
(assert (= (select D 912) (row1 -0.235294)))
(assert (= (select D 913) (row1 -0.794118)))
(assert (= (select D 914) (row1 -0.411765)))
(assert (= (select D 915) (row1 0.294118)))
(assert (= (select D 916) (row1 -0.823529)))
(assert (= (select D 917) (row1 -0.941176)))
(assert (= (select D 918) (row1 -0.411765)))
(assert (= (select D 919) (row1 -0.411765)))
(assert (= (select D 920) (row1 -0.588235)))
(assert (= (select D 921) (row1 0.294118)))
(assert (= (select D 922) (row1 -0.852941)))
(assert (= (select D 923) (row1 -0.764706)))
(assert (= (select D 924) (row1 -0.411765)))
(assert (= (select D 925) (row1 -0.764706)))
(assert (= (select D 926) (row1 -0.588235)))
(assert (= (select D 927) (row1 0.294118)))
(assert (= (select D 928) (row1 -0.235294)))
(assert (= (select D 929) (row1 -0.764706)))
(assert (= (select D 930) (row1 -0.411765)))
(assert (= (select D 931) (row1 -0.852941)))
(assert (= (select D 932) (row1 -0.852941)))
(assert (= (select D 933) (row1 -0.764706)))
(assert (= (select D 934) (row1 -0.764706)))
(assert (= (select D 935) (row1 -0.235294)))
(assert (= (select D 936) (row1 -0.852941)))
(assert (= (select D 937) (row1 -0.941176)))
(assert (= (select D 938) (row1 0.647059)))
(assert (= (select D 939) (row1 -0.411765)))
(assert (= (select D 940) (row1 -0.764706)))
(assert (= (select D 941) (row1 -0.823529)))
(assert (= (select D 942) (row1 -0.411765)))
(assert (= (select D 943) (row1 -1.000000)))
(assert (= (select D 944) (row1 -0.676471)))
(assert (= (select D 945) (row1 0.294118)))
(assert (= (select D 946) (row1 -0.411765)))
(assert (= (select D 947) (row1 -0.764706)))
(assert (= (select D 948) (row1 -0.588235)))
(assert (= (select D 949) (row1 -0.411765)))
(assert (= (select D 950) (row1 -0.588235)))
(assert (= (select D 951) (row1 -0.058824)))
(assert (= (select D 952) (row1 -0.411765)))
(assert (= (select D 953) (row1 -0.058824)))
(assert (= (select D 954) (row1 -0.764706)))
(assert (= (select D 955) (row1 -0.411765)))
(assert (= (select D 956) (row1 -0.235294)))
(assert (= (select D 957) (row1 -0.852941)))
(assert (= (select D 958) (row1 -0.294118)))
(assert (= (select D 959) (row1 -0.411765)))
(assert (= (select D 960) (row1 -0.941176)))
(assert (= (select D 961) (row1 -0.500000)))
(assert (= (select D 962) (row1 -0.676471)))
(assert (= (select D 963) (row1 -0.411765)))
(assert (= (select D 964) (row1 -0.941176)))
(assert (= (select D 965) (row1 -0.235294)))
(assert (= (select D 966) (row1 -0.323529)))
(assert (= (select D 967) (row1 -0.676471)))
(assert (= (select D 968) (row1 0.117647)))
(assert (= (select D 969) (row1 -0.794118)))
(assert (= (select D 970) (row1 -0.676471)))
(assert (= (select D 971) (row1 -0.411765)))
(assert (= (select D 972) (row1 -0.411765)))
(assert (= (select D 973) (row1 0.647059)))
(assert (= (select D 974) (row1 -0.235294)))
(assert (= (select D 975) (row1 -0.411765)))
(assert (= (select D 976) (row1 -0.941176)))
(assert (= (select D 977) (row1 -0.588235)))
(assert (= (select D 978) (row1 -0.411765)))
(assert (= (select D 979) (row1 -0.676471)))
(assert (= (select D 980) (row1 -0.235294)))
(assert (= (select D 981) (row1 0.294118)))
(assert (= (select D 982) (row1 -0.500000)))
(assert (= (select D 983) (row1 -0.058824)))
(assert (= (select D 984) (row1 -0.411765)))
(assert (= (select D 985) (row1 -0.676471)))
(assert (= (select D 986) (row1 0.117647)))
(assert (= (select D 987) (row1 -0.735294)))
(assert (= (select D 988) (row1 -0.411765)))
(assert (= (select D 989) (row1 -0.411765)))
(assert (= (select D 990) (row1 -0.764706)))
(assert (= (select D 991) (row1 -0.676471)))
(assert (= (select D 992) (row1 -0.588235)))
(assert (= (select D 993) (row1 -0.058824)))
(assert (= (select D 994) (row1 -0.764706)))
(assert (= (select D 995) (row1 -0.764706)))
(assert (= (select D 996) (row1 -0.235294)))
(assert (= (select D 997) (row1 -0.764706)))
(assert (= (select D 998) (row1 0.205882)))
(assert (= (select D 999) (row1 0.205882)))

(define-fun min () Real -1.0)
(define-fun max () Real  1.0)

(assert
  (not
    (exists ((i Int))
      (and
        (>= i 0)
        (< i m)
        (or
          (< (select (select D i) 0) min)
          (> (select (select D i) 0) max)
        )
      )
    )
  )
)


; =========================
; Min-Max equivalence check: Quantifier vs Aux-lemma
; Result:
;   unsat => equivalent
;   sat   => not equivalent (model is a counterexample)
; =========================

; -------------------------
; Quantifier-based property
; -------------------------
(define-fun Q () Bool
  (not
    (exists ((i Int))
      (and
        (>= i 0)
        (< i m)
        (or
          (< (select (select D i) 0) min)
          (> (select (select D i) 0) max)
        )
      )
    )
  )
)

; -------------------------
; Aux-lemma definitions
; -------------------------
(define-fun ok0 () Bool (and (>= (select (select D 0) 0) min) (<= (select (select D 0) 0) max)))
(define-fun ok1 () Bool (and (>= (select (select D 1) 0) min) (<= (select (select D 1) 0) max)))
(define-fun ok2 () Bool (and (>= (select (select D 2) 0) min) (<= (select (select D 2) 0) max)))
(define-fun ok3 () Bool (and (>= (select (select D 3) 0) min) (<= (select (select D 3) 0) max)))
(define-fun ok4 () Bool (and (>= (select (select D 4) 0) min) (<= (select (select D 4) 0) max)))
(define-fun ok5 () Bool (and (>= (select (select D 5) 0) min) (<= (select (select D 5) 0) max)))
(define-fun ok6 () Bool (and (>= (select (select D 6) 0) min) (<= (select (select D 6) 0) max)))
(define-fun ok7 () Bool (and (>= (select (select D 7) 0) min) (<= (select (select D 7) 0) max)))
(define-fun ok8 () Bool (and (>= (select (select D 8) 0) min) (<= (select (select D 8) 0) max)))
(define-fun ok9 () Bool (and (>= (select (select D 9) 0) min) (<= (select (select D 9) 0) max)))
(define-fun ok10 () Bool (and (>= (select (select D 10) 0) min) (<= (select (select D 10) 0) max)))
(define-fun ok11 () Bool (and (>= (select (select D 11) 0) min) (<= (select (select D 11) 0) max)))
(define-fun ok12 () Bool (and (>= (select (select D 12) 0) min) (<= (select (select D 12) 0) max)))
(define-fun ok13 () Bool (and (>= (select (select D 13) 0) min) (<= (select (select D 13) 0) max)))
(define-fun ok14 () Bool (and (>= (select (select D 14) 0) min) (<= (select (select D 14) 0) max)))
(define-fun ok15 () Bool (and (>= (select (select D 15) 0) min) (<= (select (select D 15) 0) max)))
(define-fun ok16 () Bool (and (>= (select (select D 16) 0) min) (<= (select (select D 16) 0) max)))
(define-fun ok17 () Bool (and (>= (select (select D 17) 0) min) (<= (select (select D 17) 0) max)))
(define-fun ok18 () Bool (and (>= (select (select D 18) 0) min) (<= (select (select D 18) 0) max)))
(define-fun ok19 () Bool (and (>= (select (select D 19) 0) min) (<= (select (select D 19) 0) max)))
(define-fun ok20 () Bool (and (>= (select (select D 20) 0) min) (<= (select (select D 20) 0) max)))
(define-fun ok21 () Bool (and (>= (select (select D 21) 0) min) (<= (select (select D 21) 0) max)))
(define-fun ok22 () Bool (and (>= (select (select D 22) 0) min) (<= (select (select D 22) 0) max)))
(define-fun ok23 () Bool (and (>= (select (select D 23) 0) min) (<= (select (select D 23) 0) max)))
(define-fun ok24 () Bool (and (>= (select (select D 24) 0) min) (<= (select (select D 24) 0) max)))
(define-fun ok25 () Bool (and (>= (select (select D 25) 0) min) (<= (select (select D 25) 0) max)))
(define-fun ok26 () Bool (and (>= (select (select D 26) 0) min) (<= (select (select D 26) 0) max)))
(define-fun ok27 () Bool (and (>= (select (select D 27) 0) min) (<= (select (select D 27) 0) max)))
(define-fun ok28 () Bool (and (>= (select (select D 28) 0) min) (<= (select (select D 28) 0) max)))
(define-fun ok29 () Bool (and (>= (select (select D 29) 0) min) (<= (select (select D 29) 0) max)))
(define-fun ok30 () Bool (and (>= (select (select D 30) 0) min) (<= (select (select D 30) 0) max)))
(define-fun ok31 () Bool (and (>= (select (select D 31) 0) min) (<= (select (select D 31) 0) max)))
(define-fun ok32 () Bool (and (>= (select (select D 32) 0) min) (<= (select (select D 32) 0) max)))
(define-fun ok33 () Bool (and (>= (select (select D 33) 0) min) (<= (select (select D 33) 0) max)))
(define-fun ok34 () Bool (and (>= (select (select D 34) 0) min) (<= (select (select D 34) 0) max)))
(define-fun ok35 () Bool (and (>= (select (select D 35) 0) min) (<= (select (select D 35) 0) max)))
(define-fun ok36 () Bool (and (>= (select (select D 36) 0) min) (<= (select (select D 36) 0) max)))
(define-fun ok37 () Bool (and (>= (select (select D 37) 0) min) (<= (select (select D 37) 0) max)))
(define-fun ok38 () Bool (and (>= (select (select D 38) 0) min) (<= (select (select D 38) 0) max)))
(define-fun ok39 () Bool (and (>= (select (select D 39) 0) min) (<= (select (select D 39) 0) max)))
(define-fun ok40 () Bool (and (>= (select (select D 40) 0) min) (<= (select (select D 40) 0) max)))
(define-fun ok41 () Bool (and (>= (select (select D 41) 0) min) (<= (select (select D 41) 0) max)))
(define-fun ok42 () Bool (and (>= (select (select D 42) 0) min) (<= (select (select D 42) 0) max)))
(define-fun ok43 () Bool (and (>= (select (select D 43) 0) min) (<= (select (select D 43) 0) max)))
(define-fun ok44 () Bool (and (>= (select (select D 44) 0) min) (<= (select (select D 44) 0) max)))
(define-fun ok45 () Bool (and (>= (select (select D 45) 0) min) (<= (select (select D 45) 0) max)))
(define-fun ok46 () Bool (and (>= (select (select D 46) 0) min) (<= (select (select D 46) 0) max)))
(define-fun ok47 () Bool (and (>= (select (select D 47) 0) min) (<= (select (select D 47) 0) max)))
(define-fun ok48 () Bool (and (>= (select (select D 48) 0) min) (<= (select (select D 48) 0) max)))
(define-fun ok49 () Bool (and (>= (select (select D 49) 0) min) (<= (select (select D 49) 0) max)))
(define-fun ok50 () Bool (and (>= (select (select D 50) 0) min) (<= (select (select D 50) 0) max)))
(define-fun ok51 () Bool (and (>= (select (select D 51) 0) min) (<= (select (select D 51) 0) max)))
(define-fun ok52 () Bool (and (>= (select (select D 52) 0) min) (<= (select (select D 52) 0) max)))
(define-fun ok53 () Bool (and (>= (select (select D 53) 0) min) (<= (select (select D 53) 0) max)))
(define-fun ok54 () Bool (and (>= (select (select D 54) 0) min) (<= (select (select D 54) 0) max)))
(define-fun ok55 () Bool (and (>= (select (select D 55) 0) min) (<= (select (select D 55) 0) max)))
(define-fun ok56 () Bool (and (>= (select (select D 56) 0) min) (<= (select (select D 56) 0) max)))
(define-fun ok57 () Bool (and (>= (select (select D 57) 0) min) (<= (select (select D 57) 0) max)))
(define-fun ok58 () Bool (and (>= (select (select D 58) 0) min) (<= (select (select D 58) 0) max)))
(define-fun ok59 () Bool (and (>= (select (select D 59) 0) min) (<= (select (select D 59) 0) max)))
(define-fun ok60 () Bool (and (>= (select (select D 60) 0) min) (<= (select (select D 60) 0) max)))
(define-fun ok61 () Bool (and (>= (select (select D 61) 0) min) (<= (select (select D 61) 0) max)))
(define-fun ok62 () Bool (and (>= (select (select D 62) 0) min) (<= (select (select D 62) 0) max)))
(define-fun ok63 () Bool (and (>= (select (select D 63) 0) min) (<= (select (select D 63) 0) max)))
(define-fun ok64 () Bool (and (>= (select (select D 64) 0) min) (<= (select (select D 64) 0) max)))
(define-fun ok65 () Bool (and (>= (select (select D 65) 0) min) (<= (select (select D 65) 0) max)))
(define-fun ok66 () Bool (and (>= (select (select D 66) 0) min) (<= (select (select D 66) 0) max)))
(define-fun ok67 () Bool (and (>= (select (select D 67) 0) min) (<= (select (select D 67) 0) max)))
(define-fun ok68 () Bool (and (>= (select (select D 68) 0) min) (<= (select (select D 68) 0) max)))
(define-fun ok69 () Bool (and (>= (select (select D 69) 0) min) (<= (select (select D 69) 0) max)))
(define-fun ok70 () Bool (and (>= (select (select D 70) 0) min) (<= (select (select D 70) 0) max)))
(define-fun ok71 () Bool (and (>= (select (select D 71) 0) min) (<= (select (select D 71) 0) max)))
(define-fun ok72 () Bool (and (>= (select (select D 72) 0) min) (<= (select (select D 72) 0) max)))
(define-fun ok73 () Bool (and (>= (select (select D 73) 0) min) (<= (select (select D 73) 0) max)))
(define-fun ok74 () Bool (and (>= (select (select D 74) 0) min) (<= (select (select D 74) 0) max)))
(define-fun ok75 () Bool (and (>= (select (select D 75) 0) min) (<= (select (select D 75) 0) max)))
(define-fun ok76 () Bool (and (>= (select (select D 76) 0) min) (<= (select (select D 76) 0) max)))
(define-fun ok77 () Bool (and (>= (select (select D 77) 0) min) (<= (select (select D 77) 0) max)))
(define-fun ok78 () Bool (and (>= (select (select D 78) 0) min) (<= (select (select D 78) 0) max)))
(define-fun ok79 () Bool (and (>= (select (select D 79) 0) min) (<= (select (select D 79) 0) max)))
(define-fun ok80 () Bool (and (>= (select (select D 80) 0) min) (<= (select (select D 80) 0) max)))
(define-fun ok81 () Bool (and (>= (select (select D 81) 0) min) (<= (select (select D 81) 0) max)))
(define-fun ok82 () Bool (and (>= (select (select D 82) 0) min) (<= (select (select D 82) 0) max)))
(define-fun ok83 () Bool (and (>= (select (select D 83) 0) min) (<= (select (select D 83) 0) max)))
(define-fun ok84 () Bool (and (>= (select (select D 84) 0) min) (<= (select (select D 84) 0) max)))
(define-fun ok85 () Bool (and (>= (select (select D 85) 0) min) (<= (select (select D 85) 0) max)))
(define-fun ok86 () Bool (and (>= (select (select D 86) 0) min) (<= (select (select D 86) 0) max)))
(define-fun ok87 () Bool (and (>= (select (select D 87) 0) min) (<= (select (select D 87) 0) max)))
(define-fun ok88 () Bool (and (>= (select (select D 88) 0) min) (<= (select (select D 88) 0) max)))
(define-fun ok89 () Bool (and (>= (select (select D 89) 0) min) (<= (select (select D 89) 0) max)))
(define-fun ok90 () Bool (and (>= (select (select D 90) 0) min) (<= (select (select D 90) 0) max)))
(define-fun ok91 () Bool (and (>= (select (select D 91) 0) min) (<= (select (select D 91) 0) max)))
(define-fun ok92 () Bool (and (>= (select (select D 92) 0) min) (<= (select (select D 92) 0) max)))
(define-fun ok93 () Bool (and (>= (select (select D 93) 0) min) (<= (select (select D 93) 0) max)))
(define-fun ok94 () Bool (and (>= (select (select D 94) 0) min) (<= (select (select D 94) 0) max)))
(define-fun ok95 () Bool (and (>= (select (select D 95) 0) min) (<= (select (select D 95) 0) max)))
(define-fun ok96 () Bool (and (>= (select (select D 96) 0) min) (<= (select (select D 96) 0) max)))
(define-fun ok97 () Bool (and (>= (select (select D 97) 0) min) (<= (select (select D 97) 0) max)))
(define-fun ok98 () Bool (and (>= (select (select D 98) 0) min) (<= (select (select D 98) 0) max)))
(define-fun ok99 () Bool (and (>= (select (select D 99) 0) min) (<= (select (select D 99) 0) max)))
(define-fun ok100 () Bool (and (>= (select (select D 100) 0) min) (<= (select (select D 100) 0) max)))
(define-fun ok101 () Bool (and (>= (select (select D 101) 0) min) (<= (select (select D 101) 0) max)))
(define-fun ok102 () Bool (and (>= (select (select D 102) 0) min) (<= (select (select D 102) 0) max)))
(define-fun ok103 () Bool (and (>= (select (select D 103) 0) min) (<= (select (select D 103) 0) max)))
(define-fun ok104 () Bool (and (>= (select (select D 104) 0) min) (<= (select (select D 104) 0) max)))
(define-fun ok105 () Bool (and (>= (select (select D 105) 0) min) (<= (select (select D 105) 0) max)))
(define-fun ok106 () Bool (and (>= (select (select D 106) 0) min) (<= (select (select D 106) 0) max)))
(define-fun ok107 () Bool (and (>= (select (select D 107) 0) min) (<= (select (select D 107) 0) max)))
(define-fun ok108 () Bool (and (>= (select (select D 108) 0) min) (<= (select (select D 108) 0) max)))
(define-fun ok109 () Bool (and (>= (select (select D 109) 0) min) (<= (select (select D 109) 0) max)))
(define-fun ok110 () Bool (and (>= (select (select D 110) 0) min) (<= (select (select D 110) 0) max)))
(define-fun ok111 () Bool (and (>= (select (select D 111) 0) min) (<= (select (select D 111) 0) max)))
(define-fun ok112 () Bool (and (>= (select (select D 112) 0) min) (<= (select (select D 112) 0) max)))
(define-fun ok113 () Bool (and (>= (select (select D 113) 0) min) (<= (select (select D 113) 0) max)))
(define-fun ok114 () Bool (and (>= (select (select D 114) 0) min) (<= (select (select D 114) 0) max)))
(define-fun ok115 () Bool (and (>= (select (select D 115) 0) min) (<= (select (select D 115) 0) max)))
(define-fun ok116 () Bool (and (>= (select (select D 116) 0) min) (<= (select (select D 116) 0) max)))
(define-fun ok117 () Bool (and (>= (select (select D 117) 0) min) (<= (select (select D 117) 0) max)))
(define-fun ok118 () Bool (and (>= (select (select D 118) 0) min) (<= (select (select D 118) 0) max)))
(define-fun ok119 () Bool (and (>= (select (select D 119) 0) min) (<= (select (select D 119) 0) max)))
(define-fun ok120 () Bool (and (>= (select (select D 120) 0) min) (<= (select (select D 120) 0) max)))
(define-fun ok121 () Bool (and (>= (select (select D 121) 0) min) (<= (select (select D 121) 0) max)))
(define-fun ok122 () Bool (and (>= (select (select D 122) 0) min) (<= (select (select D 122) 0) max)))
(define-fun ok123 () Bool (and (>= (select (select D 123) 0) min) (<= (select (select D 123) 0) max)))
(define-fun ok124 () Bool (and (>= (select (select D 124) 0) min) (<= (select (select D 124) 0) max)))
(define-fun ok125 () Bool (and (>= (select (select D 125) 0) min) (<= (select (select D 125) 0) max)))
(define-fun ok126 () Bool (and (>= (select (select D 126) 0) min) (<= (select (select D 126) 0) max)))
(define-fun ok127 () Bool (and (>= (select (select D 127) 0) min) (<= (select (select D 127) 0) max)))
(define-fun ok128 () Bool (and (>= (select (select D 128) 0) min) (<= (select (select D 128) 0) max)))
(define-fun ok129 () Bool (and (>= (select (select D 129) 0) min) (<= (select (select D 129) 0) max)))
(define-fun ok130 () Bool (and (>= (select (select D 130) 0) min) (<= (select (select D 130) 0) max)))
(define-fun ok131 () Bool (and (>= (select (select D 131) 0) min) (<= (select (select D 131) 0) max)))
(define-fun ok132 () Bool (and (>= (select (select D 132) 0) min) (<= (select (select D 132) 0) max)))
(define-fun ok133 () Bool (and (>= (select (select D 133) 0) min) (<= (select (select D 133) 0) max)))
(define-fun ok134 () Bool (and (>= (select (select D 134) 0) min) (<= (select (select D 134) 0) max)))
(define-fun ok135 () Bool (and (>= (select (select D 135) 0) min) (<= (select (select D 135) 0) max)))
(define-fun ok136 () Bool (and (>= (select (select D 136) 0) min) (<= (select (select D 136) 0) max)))
(define-fun ok137 () Bool (and (>= (select (select D 137) 0) min) (<= (select (select D 137) 0) max)))
(define-fun ok138 () Bool (and (>= (select (select D 138) 0) min) (<= (select (select D 138) 0) max)))
(define-fun ok139 () Bool (and (>= (select (select D 139) 0) min) (<= (select (select D 139) 0) max)))
(define-fun ok140 () Bool (and (>= (select (select D 140) 0) min) (<= (select (select D 140) 0) max)))
(define-fun ok141 () Bool (and (>= (select (select D 141) 0) min) (<= (select (select D 141) 0) max)))
(define-fun ok142 () Bool (and (>= (select (select D 142) 0) min) (<= (select (select D 142) 0) max)))
(define-fun ok143 () Bool (and (>= (select (select D 143) 0) min) (<= (select (select D 143) 0) max)))
(define-fun ok144 () Bool (and (>= (select (select D 144) 0) min) (<= (select (select D 144) 0) max)))
(define-fun ok145 () Bool (and (>= (select (select D 145) 0) min) (<= (select (select D 145) 0) max)))
(define-fun ok146 () Bool (and (>= (select (select D 146) 0) min) (<= (select (select D 146) 0) max)))
(define-fun ok147 () Bool (and (>= (select (select D 147) 0) min) (<= (select (select D 147) 0) max)))
(define-fun ok148 () Bool (and (>= (select (select D 148) 0) min) (<= (select (select D 148) 0) max)))
(define-fun ok149 () Bool (and (>= (select (select D 149) 0) min) (<= (select (select D 149) 0) max)))
(define-fun ok150 () Bool (and (>= (select (select D 150) 0) min) (<= (select (select D 150) 0) max)))
(define-fun ok151 () Bool (and (>= (select (select D 151) 0) min) (<= (select (select D 151) 0) max)))
(define-fun ok152 () Bool (and (>= (select (select D 152) 0) min) (<= (select (select D 152) 0) max)))
(define-fun ok153 () Bool (and (>= (select (select D 153) 0) min) (<= (select (select D 153) 0) max)))
(define-fun ok154 () Bool (and (>= (select (select D 154) 0) min) (<= (select (select D 154) 0) max)))
(define-fun ok155 () Bool (and (>= (select (select D 155) 0) min) (<= (select (select D 155) 0) max)))
(define-fun ok156 () Bool (and (>= (select (select D 156) 0) min) (<= (select (select D 156) 0) max)))
(define-fun ok157 () Bool (and (>= (select (select D 157) 0) min) (<= (select (select D 157) 0) max)))
(define-fun ok158 () Bool (and (>= (select (select D 158) 0) min) (<= (select (select D 158) 0) max)))
(define-fun ok159 () Bool (and (>= (select (select D 159) 0) min) (<= (select (select D 159) 0) max)))
(define-fun ok160 () Bool (and (>= (select (select D 160) 0) min) (<= (select (select D 160) 0) max)))
(define-fun ok161 () Bool (and (>= (select (select D 161) 0) min) (<= (select (select D 161) 0) max)))
(define-fun ok162 () Bool (and (>= (select (select D 162) 0) min) (<= (select (select D 162) 0) max)))
(define-fun ok163 () Bool (and (>= (select (select D 163) 0) min) (<= (select (select D 163) 0) max)))
(define-fun ok164 () Bool (and (>= (select (select D 164) 0) min) (<= (select (select D 164) 0) max)))
(define-fun ok165 () Bool (and (>= (select (select D 165) 0) min) (<= (select (select D 165) 0) max)))
(define-fun ok166 () Bool (and (>= (select (select D 166) 0) min) (<= (select (select D 166) 0) max)))
(define-fun ok167 () Bool (and (>= (select (select D 167) 0) min) (<= (select (select D 167) 0) max)))
(define-fun ok168 () Bool (and (>= (select (select D 168) 0) min) (<= (select (select D 168) 0) max)))
(define-fun ok169 () Bool (and (>= (select (select D 169) 0) min) (<= (select (select D 169) 0) max)))
(define-fun ok170 () Bool (and (>= (select (select D 170) 0) min) (<= (select (select D 170) 0) max)))
(define-fun ok171 () Bool (and (>= (select (select D 171) 0) min) (<= (select (select D 171) 0) max)))
(define-fun ok172 () Bool (and (>= (select (select D 172) 0) min) (<= (select (select D 172) 0) max)))
(define-fun ok173 () Bool (and (>= (select (select D 173) 0) min) (<= (select (select D 173) 0) max)))
(define-fun ok174 () Bool (and (>= (select (select D 174) 0) min) (<= (select (select D 174) 0) max)))
(define-fun ok175 () Bool (and (>= (select (select D 175) 0) min) (<= (select (select D 175) 0) max)))
(define-fun ok176 () Bool (and (>= (select (select D 176) 0) min) (<= (select (select D 176) 0) max)))
(define-fun ok177 () Bool (and (>= (select (select D 177) 0) min) (<= (select (select D 177) 0) max)))
(define-fun ok178 () Bool (and (>= (select (select D 178) 0) min) (<= (select (select D 178) 0) max)))
(define-fun ok179 () Bool (and (>= (select (select D 179) 0) min) (<= (select (select D 179) 0) max)))
(define-fun ok180 () Bool (and (>= (select (select D 180) 0) min) (<= (select (select D 180) 0) max)))
(define-fun ok181 () Bool (and (>= (select (select D 181) 0) min) (<= (select (select D 181) 0) max)))
(define-fun ok182 () Bool (and (>= (select (select D 182) 0) min) (<= (select (select D 182) 0) max)))
(define-fun ok183 () Bool (and (>= (select (select D 183) 0) min) (<= (select (select D 183) 0) max)))
(define-fun ok184 () Bool (and (>= (select (select D 184) 0) min) (<= (select (select D 184) 0) max)))
(define-fun ok185 () Bool (and (>= (select (select D 185) 0) min) (<= (select (select D 185) 0) max)))
(define-fun ok186 () Bool (and (>= (select (select D 186) 0) min) (<= (select (select D 186) 0) max)))
(define-fun ok187 () Bool (and (>= (select (select D 187) 0) min) (<= (select (select D 187) 0) max)))
(define-fun ok188 () Bool (and (>= (select (select D 188) 0) min) (<= (select (select D 188) 0) max)))
(define-fun ok189 () Bool (and (>= (select (select D 189) 0) min) (<= (select (select D 189) 0) max)))
(define-fun ok190 () Bool (and (>= (select (select D 190) 0) min) (<= (select (select D 190) 0) max)))
(define-fun ok191 () Bool (and (>= (select (select D 191) 0) min) (<= (select (select D 191) 0) max)))
(define-fun ok192 () Bool (and (>= (select (select D 192) 0) min) (<= (select (select D 192) 0) max)))
(define-fun ok193 () Bool (and (>= (select (select D 193) 0) min) (<= (select (select D 193) 0) max)))
(define-fun ok194 () Bool (and (>= (select (select D 194) 0) min) (<= (select (select D 194) 0) max)))
(define-fun ok195 () Bool (and (>= (select (select D 195) 0) min) (<= (select (select D 195) 0) max)))
(define-fun ok196 () Bool (and (>= (select (select D 196) 0) min) (<= (select (select D 196) 0) max)))
(define-fun ok197 () Bool (and (>= (select (select D 197) 0) min) (<= (select (select D 197) 0) max)))
(define-fun ok198 () Bool (and (>= (select (select D 198) 0) min) (<= (select (select D 198) 0) max)))
(define-fun ok199 () Bool (and (>= (select (select D 199) 0) min) (<= (select (select D 199) 0) max)))
(define-fun ok200 () Bool (and (>= (select (select D 200) 0) min) (<= (select (select D 200) 0) max)))
(define-fun ok201 () Bool (and (>= (select (select D 201) 0) min) (<= (select (select D 201) 0) max)))
(define-fun ok202 () Bool (and (>= (select (select D 202) 0) min) (<= (select (select D 202) 0) max)))
(define-fun ok203 () Bool (and (>= (select (select D 203) 0) min) (<= (select (select D 203) 0) max)))
(define-fun ok204 () Bool (and (>= (select (select D 204) 0) min) (<= (select (select D 204) 0) max)))
(define-fun ok205 () Bool (and (>= (select (select D 205) 0) min) (<= (select (select D 205) 0) max)))
(define-fun ok206 () Bool (and (>= (select (select D 206) 0) min) (<= (select (select D 206) 0) max)))
(define-fun ok207 () Bool (and (>= (select (select D 207) 0) min) (<= (select (select D 207) 0) max)))
(define-fun ok208 () Bool (and (>= (select (select D 208) 0) min) (<= (select (select D 208) 0) max)))
(define-fun ok209 () Bool (and (>= (select (select D 209) 0) min) (<= (select (select D 209) 0) max)))
(define-fun ok210 () Bool (and (>= (select (select D 210) 0) min) (<= (select (select D 210) 0) max)))
(define-fun ok211 () Bool (and (>= (select (select D 211) 0) min) (<= (select (select D 211) 0) max)))
(define-fun ok212 () Bool (and (>= (select (select D 212) 0) min) (<= (select (select D 212) 0) max)))
(define-fun ok213 () Bool (and (>= (select (select D 213) 0) min) (<= (select (select D 213) 0) max)))
(define-fun ok214 () Bool (and (>= (select (select D 214) 0) min) (<= (select (select D 214) 0) max)))
(define-fun ok215 () Bool (and (>= (select (select D 215) 0) min) (<= (select (select D 215) 0) max)))
(define-fun ok216 () Bool (and (>= (select (select D 216) 0) min) (<= (select (select D 216) 0) max)))
(define-fun ok217 () Bool (and (>= (select (select D 217) 0) min) (<= (select (select D 217) 0) max)))
(define-fun ok218 () Bool (and (>= (select (select D 218) 0) min) (<= (select (select D 218) 0) max)))
(define-fun ok219 () Bool (and (>= (select (select D 219) 0) min) (<= (select (select D 219) 0) max)))
(define-fun ok220 () Bool (and (>= (select (select D 220) 0) min) (<= (select (select D 220) 0) max)))
(define-fun ok221 () Bool (and (>= (select (select D 221) 0) min) (<= (select (select D 221) 0) max)))
(define-fun ok222 () Bool (and (>= (select (select D 222) 0) min) (<= (select (select D 222) 0) max)))
(define-fun ok223 () Bool (and (>= (select (select D 223) 0) min) (<= (select (select D 223) 0) max)))
(define-fun ok224 () Bool (and (>= (select (select D 224) 0) min) (<= (select (select D 224) 0) max)))
(define-fun ok225 () Bool (and (>= (select (select D 225) 0) min) (<= (select (select D 225) 0) max)))
(define-fun ok226 () Bool (and (>= (select (select D 226) 0) min) (<= (select (select D 226) 0) max)))
(define-fun ok227 () Bool (and (>= (select (select D 227) 0) min) (<= (select (select D 227) 0) max)))
(define-fun ok228 () Bool (and (>= (select (select D 228) 0) min) (<= (select (select D 228) 0) max)))
(define-fun ok229 () Bool (and (>= (select (select D 229) 0) min) (<= (select (select D 229) 0) max)))
(define-fun ok230 () Bool (and (>= (select (select D 230) 0) min) (<= (select (select D 230) 0) max)))
(define-fun ok231 () Bool (and (>= (select (select D 231) 0) min) (<= (select (select D 231) 0) max)))
(define-fun ok232 () Bool (and (>= (select (select D 232) 0) min) (<= (select (select D 232) 0) max)))
(define-fun ok233 () Bool (and (>= (select (select D 233) 0) min) (<= (select (select D 233) 0) max)))
(define-fun ok234 () Bool (and (>= (select (select D 234) 0) min) (<= (select (select D 234) 0) max)))
(define-fun ok235 () Bool (and (>= (select (select D 235) 0) min) (<= (select (select D 235) 0) max)))
(define-fun ok236 () Bool (and (>= (select (select D 236) 0) min) (<= (select (select D 236) 0) max)))
(define-fun ok237 () Bool (and (>= (select (select D 237) 0) min) (<= (select (select D 237) 0) max)))
(define-fun ok238 () Bool (and (>= (select (select D 238) 0) min) (<= (select (select D 238) 0) max)))
(define-fun ok239 () Bool (and (>= (select (select D 239) 0) min) (<= (select (select D 239) 0) max)))
(define-fun ok240 () Bool (and (>= (select (select D 240) 0) min) (<= (select (select D 240) 0) max)))
(define-fun ok241 () Bool (and (>= (select (select D 241) 0) min) (<= (select (select D 241) 0) max)))
(define-fun ok242 () Bool (and (>= (select (select D 242) 0) min) (<= (select (select D 242) 0) max)))
(define-fun ok243 () Bool (and (>= (select (select D 243) 0) min) (<= (select (select D 243) 0) max)))
(define-fun ok244 () Bool (and (>= (select (select D 244) 0) min) (<= (select (select D 244) 0) max)))
(define-fun ok245 () Bool (and (>= (select (select D 245) 0) min) (<= (select (select D 245) 0) max)))
(define-fun ok246 () Bool (and (>= (select (select D 246) 0) min) (<= (select (select D 246) 0) max)))
(define-fun ok247 () Bool (and (>= (select (select D 247) 0) min) (<= (select (select D 247) 0) max)))
(define-fun ok248 () Bool (and (>= (select (select D 248) 0) min) (<= (select (select D 248) 0) max)))
(define-fun ok249 () Bool (and (>= (select (select D 249) 0) min) (<= (select (select D 249) 0) max)))
(define-fun ok250 () Bool (and (>= (select (select D 250) 0) min) (<= (select (select D 250) 0) max)))
(define-fun ok251 () Bool (and (>= (select (select D 251) 0) min) (<= (select (select D 251) 0) max)))
(define-fun ok252 () Bool (and (>= (select (select D 252) 0) min) (<= (select (select D 252) 0) max)))
(define-fun ok253 () Bool (and (>= (select (select D 253) 0) min) (<= (select (select D 253) 0) max)))
(define-fun ok254 () Bool (and (>= (select (select D 254) 0) min) (<= (select (select D 254) 0) max)))
(define-fun ok255 () Bool (and (>= (select (select D 255) 0) min) (<= (select (select D 255) 0) max)))
(define-fun ok256 () Bool (and (>= (select (select D 256) 0) min) (<= (select (select D 256) 0) max)))
(define-fun ok257 () Bool (and (>= (select (select D 257) 0) min) (<= (select (select D 257) 0) max)))
(define-fun ok258 () Bool (and (>= (select (select D 258) 0) min) (<= (select (select D 258) 0) max)))
(define-fun ok259 () Bool (and (>= (select (select D 259) 0) min) (<= (select (select D 259) 0) max)))
(define-fun ok260 () Bool (and (>= (select (select D 260) 0) min) (<= (select (select D 260) 0) max)))
(define-fun ok261 () Bool (and (>= (select (select D 261) 0) min) (<= (select (select D 261) 0) max)))
(define-fun ok262 () Bool (and (>= (select (select D 262) 0) min) (<= (select (select D 262) 0) max)))
(define-fun ok263 () Bool (and (>= (select (select D 263) 0) min) (<= (select (select D 263) 0) max)))
(define-fun ok264 () Bool (and (>= (select (select D 264) 0) min) (<= (select (select D 264) 0) max)))
(define-fun ok265 () Bool (and (>= (select (select D 265) 0) min) (<= (select (select D 265) 0) max)))
(define-fun ok266 () Bool (and (>= (select (select D 266) 0) min) (<= (select (select D 266) 0) max)))
(define-fun ok267 () Bool (and (>= (select (select D 267) 0) min) (<= (select (select D 267) 0) max)))
(define-fun ok268 () Bool (and (>= (select (select D 268) 0) min) (<= (select (select D 268) 0) max)))
(define-fun ok269 () Bool (and (>= (select (select D 269) 0) min) (<= (select (select D 269) 0) max)))
(define-fun ok270 () Bool (and (>= (select (select D 270) 0) min) (<= (select (select D 270) 0) max)))
(define-fun ok271 () Bool (and (>= (select (select D 271) 0) min) (<= (select (select D 271) 0) max)))
(define-fun ok272 () Bool (and (>= (select (select D 272) 0) min) (<= (select (select D 272) 0) max)))
(define-fun ok273 () Bool (and (>= (select (select D 273) 0) min) (<= (select (select D 273) 0) max)))
(define-fun ok274 () Bool (and (>= (select (select D 274) 0) min) (<= (select (select D 274) 0) max)))
(define-fun ok275 () Bool (and (>= (select (select D 275) 0) min) (<= (select (select D 275) 0) max)))
(define-fun ok276 () Bool (and (>= (select (select D 276) 0) min) (<= (select (select D 276) 0) max)))
(define-fun ok277 () Bool (and (>= (select (select D 277) 0) min) (<= (select (select D 277) 0) max)))
(define-fun ok278 () Bool (and (>= (select (select D 278) 0) min) (<= (select (select D 278) 0) max)))
(define-fun ok279 () Bool (and (>= (select (select D 279) 0) min) (<= (select (select D 279) 0) max)))
(define-fun ok280 () Bool (and (>= (select (select D 280) 0) min) (<= (select (select D 280) 0) max)))
(define-fun ok281 () Bool (and (>= (select (select D 281) 0) min) (<= (select (select D 281) 0) max)))
(define-fun ok282 () Bool (and (>= (select (select D 282) 0) min) (<= (select (select D 282) 0) max)))
(define-fun ok283 () Bool (and (>= (select (select D 283) 0) min) (<= (select (select D 283) 0) max)))
(define-fun ok284 () Bool (and (>= (select (select D 284) 0) min) (<= (select (select D 284) 0) max)))
(define-fun ok285 () Bool (and (>= (select (select D 285) 0) min) (<= (select (select D 285) 0) max)))
(define-fun ok286 () Bool (and (>= (select (select D 286) 0) min) (<= (select (select D 286) 0) max)))
(define-fun ok287 () Bool (and (>= (select (select D 287) 0) min) (<= (select (select D 287) 0) max)))
(define-fun ok288 () Bool (and (>= (select (select D 288) 0) min) (<= (select (select D 288) 0) max)))
(define-fun ok289 () Bool (and (>= (select (select D 289) 0) min) (<= (select (select D 289) 0) max)))
(define-fun ok290 () Bool (and (>= (select (select D 290) 0) min) (<= (select (select D 290) 0) max)))
(define-fun ok291 () Bool (and (>= (select (select D 291) 0) min) (<= (select (select D 291) 0) max)))
(define-fun ok292 () Bool (and (>= (select (select D 292) 0) min) (<= (select (select D 292) 0) max)))
(define-fun ok293 () Bool (and (>= (select (select D 293) 0) min) (<= (select (select D 293) 0) max)))
(define-fun ok294 () Bool (and (>= (select (select D 294) 0) min) (<= (select (select D 294) 0) max)))
(define-fun ok295 () Bool (and (>= (select (select D 295) 0) min) (<= (select (select D 295) 0) max)))
(define-fun ok296 () Bool (and (>= (select (select D 296) 0) min) (<= (select (select D 296) 0) max)))
(define-fun ok297 () Bool (and (>= (select (select D 297) 0) min) (<= (select (select D 297) 0) max)))
(define-fun ok298 () Bool (and (>= (select (select D 298) 0) min) (<= (select (select D 298) 0) max)))
(define-fun ok299 () Bool (and (>= (select (select D 299) 0) min) (<= (select (select D 299) 0) max)))
(define-fun ok300 () Bool (and (>= (select (select D 300) 0) min) (<= (select (select D 300) 0) max)))
(define-fun ok301 () Bool (and (>= (select (select D 301) 0) min) (<= (select (select D 301) 0) max)))
(define-fun ok302 () Bool (and (>= (select (select D 302) 0) min) (<= (select (select D 302) 0) max)))
(define-fun ok303 () Bool (and (>= (select (select D 303) 0) min) (<= (select (select D 303) 0) max)))
(define-fun ok304 () Bool (and (>= (select (select D 304) 0) min) (<= (select (select D 304) 0) max)))
(define-fun ok305 () Bool (and (>= (select (select D 305) 0) min) (<= (select (select D 305) 0) max)))
(define-fun ok306 () Bool (and (>= (select (select D 306) 0) min) (<= (select (select D 306) 0) max)))
(define-fun ok307 () Bool (and (>= (select (select D 307) 0) min) (<= (select (select D 307) 0) max)))
(define-fun ok308 () Bool (and (>= (select (select D 308) 0) min) (<= (select (select D 308) 0) max)))
(define-fun ok309 () Bool (and (>= (select (select D 309) 0) min) (<= (select (select D 309) 0) max)))
(define-fun ok310 () Bool (and (>= (select (select D 310) 0) min) (<= (select (select D 310) 0) max)))
(define-fun ok311 () Bool (and (>= (select (select D 311) 0) min) (<= (select (select D 311) 0) max)))
(define-fun ok312 () Bool (and (>= (select (select D 312) 0) min) (<= (select (select D 312) 0) max)))
(define-fun ok313 () Bool (and (>= (select (select D 313) 0) min) (<= (select (select D 313) 0) max)))
(define-fun ok314 () Bool (and (>= (select (select D 314) 0) min) (<= (select (select D 314) 0) max)))
(define-fun ok315 () Bool (and (>= (select (select D 315) 0) min) (<= (select (select D 315) 0) max)))
(define-fun ok316 () Bool (and (>= (select (select D 316) 0) min) (<= (select (select D 316) 0) max)))
(define-fun ok317 () Bool (and (>= (select (select D 317) 0) min) (<= (select (select D 317) 0) max)))
(define-fun ok318 () Bool (and (>= (select (select D 318) 0) min) (<= (select (select D 318) 0) max)))
(define-fun ok319 () Bool (and (>= (select (select D 319) 0) min) (<= (select (select D 319) 0) max)))
(define-fun ok320 () Bool (and (>= (select (select D 320) 0) min) (<= (select (select D 320) 0) max)))
(define-fun ok321 () Bool (and (>= (select (select D 321) 0) min) (<= (select (select D 321) 0) max)))
(define-fun ok322 () Bool (and (>= (select (select D 322) 0) min) (<= (select (select D 322) 0) max)))
(define-fun ok323 () Bool (and (>= (select (select D 323) 0) min) (<= (select (select D 323) 0) max)))
(define-fun ok324 () Bool (and (>= (select (select D 324) 0) min) (<= (select (select D 324) 0) max)))
(define-fun ok325 () Bool (and (>= (select (select D 325) 0) min) (<= (select (select D 325) 0) max)))
(define-fun ok326 () Bool (and (>= (select (select D 326) 0) min) (<= (select (select D 326) 0) max)))
(define-fun ok327 () Bool (and (>= (select (select D 327) 0) min) (<= (select (select D 327) 0) max)))
(define-fun ok328 () Bool (and (>= (select (select D 328) 0) min) (<= (select (select D 328) 0) max)))
(define-fun ok329 () Bool (and (>= (select (select D 329) 0) min) (<= (select (select D 329) 0) max)))
(define-fun ok330 () Bool (and (>= (select (select D 330) 0) min) (<= (select (select D 330) 0) max)))
(define-fun ok331 () Bool (and (>= (select (select D 331) 0) min) (<= (select (select D 331) 0) max)))
(define-fun ok332 () Bool (and (>= (select (select D 332) 0) min) (<= (select (select D 332) 0) max)))
(define-fun ok333 () Bool (and (>= (select (select D 333) 0) min) (<= (select (select D 333) 0) max)))
(define-fun ok334 () Bool (and (>= (select (select D 334) 0) min) (<= (select (select D 334) 0) max)))
(define-fun ok335 () Bool (and (>= (select (select D 335) 0) min) (<= (select (select D 335) 0) max)))
(define-fun ok336 () Bool (and (>= (select (select D 336) 0) min) (<= (select (select D 336) 0) max)))
(define-fun ok337 () Bool (and (>= (select (select D 337) 0) min) (<= (select (select D 337) 0) max)))
(define-fun ok338 () Bool (and (>= (select (select D 338) 0) min) (<= (select (select D 338) 0) max)))
(define-fun ok339 () Bool (and (>= (select (select D 339) 0) min) (<= (select (select D 339) 0) max)))
(define-fun ok340 () Bool (and (>= (select (select D 340) 0) min) (<= (select (select D 340) 0) max)))
(define-fun ok341 () Bool (and (>= (select (select D 341) 0) min) (<= (select (select D 341) 0) max)))
(define-fun ok342 () Bool (and (>= (select (select D 342) 0) min) (<= (select (select D 342) 0) max)))
(define-fun ok343 () Bool (and (>= (select (select D 343) 0) min) (<= (select (select D 343) 0) max)))
(define-fun ok344 () Bool (and (>= (select (select D 344) 0) min) (<= (select (select D 344) 0) max)))
(define-fun ok345 () Bool (and (>= (select (select D 345) 0) min) (<= (select (select D 345) 0) max)))
(define-fun ok346 () Bool (and (>= (select (select D 346) 0) min) (<= (select (select D 346) 0) max)))
(define-fun ok347 () Bool (and (>= (select (select D 347) 0) min) (<= (select (select D 347) 0) max)))
(define-fun ok348 () Bool (and (>= (select (select D 348) 0) min) (<= (select (select D 348) 0) max)))
(define-fun ok349 () Bool (and (>= (select (select D 349) 0) min) (<= (select (select D 349) 0) max)))
(define-fun ok350 () Bool (and (>= (select (select D 350) 0) min) (<= (select (select D 350) 0) max)))
(define-fun ok351 () Bool (and (>= (select (select D 351) 0) min) (<= (select (select D 351) 0) max)))
(define-fun ok352 () Bool (and (>= (select (select D 352) 0) min) (<= (select (select D 352) 0) max)))
(define-fun ok353 () Bool (and (>= (select (select D 353) 0) min) (<= (select (select D 353) 0) max)))
(define-fun ok354 () Bool (and (>= (select (select D 354) 0) min) (<= (select (select D 354) 0) max)))
(define-fun ok355 () Bool (and (>= (select (select D 355) 0) min) (<= (select (select D 355) 0) max)))
(define-fun ok356 () Bool (and (>= (select (select D 356) 0) min) (<= (select (select D 356) 0) max)))
(define-fun ok357 () Bool (and (>= (select (select D 357) 0) min) (<= (select (select D 357) 0) max)))
(define-fun ok358 () Bool (and (>= (select (select D 358) 0) min) (<= (select (select D 358) 0) max)))
(define-fun ok359 () Bool (and (>= (select (select D 359) 0) min) (<= (select (select D 359) 0) max)))
(define-fun ok360 () Bool (and (>= (select (select D 360) 0) min) (<= (select (select D 360) 0) max)))
(define-fun ok361 () Bool (and (>= (select (select D 361) 0) min) (<= (select (select D 361) 0) max)))
(define-fun ok362 () Bool (and (>= (select (select D 362) 0) min) (<= (select (select D 362) 0) max)))
(define-fun ok363 () Bool (and (>= (select (select D 363) 0) min) (<= (select (select D 363) 0) max)))
(define-fun ok364 () Bool (and (>= (select (select D 364) 0) min) (<= (select (select D 364) 0) max)))
(define-fun ok365 () Bool (and (>= (select (select D 365) 0) min) (<= (select (select D 365) 0) max)))
(define-fun ok366 () Bool (and (>= (select (select D 366) 0) min) (<= (select (select D 366) 0) max)))
(define-fun ok367 () Bool (and (>= (select (select D 367) 0) min) (<= (select (select D 367) 0) max)))
(define-fun ok368 () Bool (and (>= (select (select D 368) 0) min) (<= (select (select D 368) 0) max)))
(define-fun ok369 () Bool (and (>= (select (select D 369) 0) min) (<= (select (select D 369) 0) max)))
(define-fun ok370 () Bool (and (>= (select (select D 370) 0) min) (<= (select (select D 370) 0) max)))
(define-fun ok371 () Bool (and (>= (select (select D 371) 0) min) (<= (select (select D 371) 0) max)))
(define-fun ok372 () Bool (and (>= (select (select D 372) 0) min) (<= (select (select D 372) 0) max)))
(define-fun ok373 () Bool (and (>= (select (select D 373) 0) min) (<= (select (select D 373) 0) max)))
(define-fun ok374 () Bool (and (>= (select (select D 374) 0) min) (<= (select (select D 374) 0) max)))
(define-fun ok375 () Bool (and (>= (select (select D 375) 0) min) (<= (select (select D 375) 0) max)))
(define-fun ok376 () Bool (and (>= (select (select D 376) 0) min) (<= (select (select D 376) 0) max)))
(define-fun ok377 () Bool (and (>= (select (select D 377) 0) min) (<= (select (select D 377) 0) max)))
(define-fun ok378 () Bool (and (>= (select (select D 378) 0) min) (<= (select (select D 378) 0) max)))
(define-fun ok379 () Bool (and (>= (select (select D 379) 0) min) (<= (select (select D 379) 0) max)))
(define-fun ok380 () Bool (and (>= (select (select D 380) 0) min) (<= (select (select D 380) 0) max)))
(define-fun ok381 () Bool (and (>= (select (select D 381) 0) min) (<= (select (select D 381) 0) max)))
(define-fun ok382 () Bool (and (>= (select (select D 382) 0) min) (<= (select (select D 382) 0) max)))
(define-fun ok383 () Bool (and (>= (select (select D 383) 0) min) (<= (select (select D 383) 0) max)))
(define-fun ok384 () Bool (and (>= (select (select D 384) 0) min) (<= (select (select D 384) 0) max)))
(define-fun ok385 () Bool (and (>= (select (select D 385) 0) min) (<= (select (select D 385) 0) max)))
(define-fun ok386 () Bool (and (>= (select (select D 386) 0) min) (<= (select (select D 386) 0) max)))
(define-fun ok387 () Bool (and (>= (select (select D 387) 0) min) (<= (select (select D 387) 0) max)))
(define-fun ok388 () Bool (and (>= (select (select D 388) 0) min) (<= (select (select D 388) 0) max)))
(define-fun ok389 () Bool (and (>= (select (select D 389) 0) min) (<= (select (select D 389) 0) max)))
(define-fun ok390 () Bool (and (>= (select (select D 390) 0) min) (<= (select (select D 390) 0) max)))
(define-fun ok391 () Bool (and (>= (select (select D 391) 0) min) (<= (select (select D 391) 0) max)))
(define-fun ok392 () Bool (and (>= (select (select D 392) 0) min) (<= (select (select D 392) 0) max)))
(define-fun ok393 () Bool (and (>= (select (select D 393) 0) min) (<= (select (select D 393) 0) max)))
(define-fun ok394 () Bool (and (>= (select (select D 394) 0) min) (<= (select (select D 394) 0) max)))
(define-fun ok395 () Bool (and (>= (select (select D 395) 0) min) (<= (select (select D 395) 0) max)))
(define-fun ok396 () Bool (and (>= (select (select D 396) 0) min) (<= (select (select D 396) 0) max)))
(define-fun ok397 () Bool (and (>= (select (select D 397) 0) min) (<= (select (select D 397) 0) max)))
(define-fun ok398 () Bool (and (>= (select (select D 398) 0) min) (<= (select (select D 398) 0) max)))
(define-fun ok399 () Bool (and (>= (select (select D 399) 0) min) (<= (select (select D 399) 0) max)))
(define-fun ok400 () Bool (and (>= (select (select D 400) 0) min) (<= (select (select D 400) 0) max)))
(define-fun ok401 () Bool (and (>= (select (select D 401) 0) min) (<= (select (select D 401) 0) max)))
(define-fun ok402 () Bool (and (>= (select (select D 402) 0) min) (<= (select (select D 402) 0) max)))
(define-fun ok403 () Bool (and (>= (select (select D 403) 0) min) (<= (select (select D 403) 0) max)))
(define-fun ok404 () Bool (and (>= (select (select D 404) 0) min) (<= (select (select D 404) 0) max)))
(define-fun ok405 () Bool (and (>= (select (select D 405) 0) min) (<= (select (select D 405) 0) max)))
(define-fun ok406 () Bool (and (>= (select (select D 406) 0) min) (<= (select (select D 406) 0) max)))
(define-fun ok407 () Bool (and (>= (select (select D 407) 0) min) (<= (select (select D 407) 0) max)))
(define-fun ok408 () Bool (and (>= (select (select D 408) 0) min) (<= (select (select D 408) 0) max)))
(define-fun ok409 () Bool (and (>= (select (select D 409) 0) min) (<= (select (select D 409) 0) max)))
(define-fun ok410 () Bool (and (>= (select (select D 410) 0) min) (<= (select (select D 410) 0) max)))
(define-fun ok411 () Bool (and (>= (select (select D 411) 0) min) (<= (select (select D 411) 0) max)))
(define-fun ok412 () Bool (and (>= (select (select D 412) 0) min) (<= (select (select D 412) 0) max)))
(define-fun ok413 () Bool (and (>= (select (select D 413) 0) min) (<= (select (select D 413) 0) max)))
(define-fun ok414 () Bool (and (>= (select (select D 414) 0) min) (<= (select (select D 414) 0) max)))
(define-fun ok415 () Bool (and (>= (select (select D 415) 0) min) (<= (select (select D 415) 0) max)))
(define-fun ok416 () Bool (and (>= (select (select D 416) 0) min) (<= (select (select D 416) 0) max)))
(define-fun ok417 () Bool (and (>= (select (select D 417) 0) min) (<= (select (select D 417) 0) max)))
(define-fun ok418 () Bool (and (>= (select (select D 418) 0) min) (<= (select (select D 418) 0) max)))
(define-fun ok419 () Bool (and (>= (select (select D 419) 0) min) (<= (select (select D 419) 0) max)))
(define-fun ok420 () Bool (and (>= (select (select D 420) 0) min) (<= (select (select D 420) 0) max)))
(define-fun ok421 () Bool (and (>= (select (select D 421) 0) min) (<= (select (select D 421) 0) max)))
(define-fun ok422 () Bool (and (>= (select (select D 422) 0) min) (<= (select (select D 422) 0) max)))
(define-fun ok423 () Bool (and (>= (select (select D 423) 0) min) (<= (select (select D 423) 0) max)))
(define-fun ok424 () Bool (and (>= (select (select D 424) 0) min) (<= (select (select D 424) 0) max)))
(define-fun ok425 () Bool (and (>= (select (select D 425) 0) min) (<= (select (select D 425) 0) max)))
(define-fun ok426 () Bool (and (>= (select (select D 426) 0) min) (<= (select (select D 426) 0) max)))
(define-fun ok427 () Bool (and (>= (select (select D 427) 0) min) (<= (select (select D 427) 0) max)))
(define-fun ok428 () Bool (and (>= (select (select D 428) 0) min) (<= (select (select D 428) 0) max)))
(define-fun ok429 () Bool (and (>= (select (select D 429) 0) min) (<= (select (select D 429) 0) max)))
(define-fun ok430 () Bool (and (>= (select (select D 430) 0) min) (<= (select (select D 430) 0) max)))
(define-fun ok431 () Bool (and (>= (select (select D 431) 0) min) (<= (select (select D 431) 0) max)))
(define-fun ok432 () Bool (and (>= (select (select D 432) 0) min) (<= (select (select D 432) 0) max)))
(define-fun ok433 () Bool (and (>= (select (select D 433) 0) min) (<= (select (select D 433) 0) max)))
(define-fun ok434 () Bool (and (>= (select (select D 434) 0) min) (<= (select (select D 434) 0) max)))
(define-fun ok435 () Bool (and (>= (select (select D 435) 0) min) (<= (select (select D 435) 0) max)))
(define-fun ok436 () Bool (and (>= (select (select D 436) 0) min) (<= (select (select D 436) 0) max)))
(define-fun ok437 () Bool (and (>= (select (select D 437) 0) min) (<= (select (select D 437) 0) max)))
(define-fun ok438 () Bool (and (>= (select (select D 438) 0) min) (<= (select (select D 438) 0) max)))
(define-fun ok439 () Bool (and (>= (select (select D 439) 0) min) (<= (select (select D 439) 0) max)))
(define-fun ok440 () Bool (and (>= (select (select D 440) 0) min) (<= (select (select D 440) 0) max)))
(define-fun ok441 () Bool (and (>= (select (select D 441) 0) min) (<= (select (select D 441) 0) max)))
(define-fun ok442 () Bool (and (>= (select (select D 442) 0) min) (<= (select (select D 442) 0) max)))
(define-fun ok443 () Bool (and (>= (select (select D 443) 0) min) (<= (select (select D 443) 0) max)))
(define-fun ok444 () Bool (and (>= (select (select D 444) 0) min) (<= (select (select D 444) 0) max)))
(define-fun ok445 () Bool (and (>= (select (select D 445) 0) min) (<= (select (select D 445) 0) max)))
(define-fun ok446 () Bool (and (>= (select (select D 446) 0) min) (<= (select (select D 446) 0) max)))
(define-fun ok447 () Bool (and (>= (select (select D 447) 0) min) (<= (select (select D 447) 0) max)))
(define-fun ok448 () Bool (and (>= (select (select D 448) 0) min) (<= (select (select D 448) 0) max)))
(define-fun ok449 () Bool (and (>= (select (select D 449) 0) min) (<= (select (select D 449) 0) max)))
(define-fun ok450 () Bool (and (>= (select (select D 450) 0) min) (<= (select (select D 450) 0) max)))
(define-fun ok451 () Bool (and (>= (select (select D 451) 0) min) (<= (select (select D 451) 0) max)))
(define-fun ok452 () Bool (and (>= (select (select D 452) 0) min) (<= (select (select D 452) 0) max)))
(define-fun ok453 () Bool (and (>= (select (select D 453) 0) min) (<= (select (select D 453) 0) max)))
(define-fun ok454 () Bool (and (>= (select (select D 454) 0) min) (<= (select (select D 454) 0) max)))
(define-fun ok455 () Bool (and (>= (select (select D 455) 0) min) (<= (select (select D 455) 0) max)))
(define-fun ok456 () Bool (and (>= (select (select D 456) 0) min) (<= (select (select D 456) 0) max)))
(define-fun ok457 () Bool (and (>= (select (select D 457) 0) min) (<= (select (select D 457) 0) max)))
(define-fun ok458 () Bool (and (>= (select (select D 458) 0) min) (<= (select (select D 458) 0) max)))
(define-fun ok459 () Bool (and (>= (select (select D 459) 0) min) (<= (select (select D 459) 0) max)))
(define-fun ok460 () Bool (and (>= (select (select D 460) 0) min) (<= (select (select D 460) 0) max)))
(define-fun ok461 () Bool (and (>= (select (select D 461) 0) min) (<= (select (select D 461) 0) max)))
(define-fun ok462 () Bool (and (>= (select (select D 462) 0) min) (<= (select (select D 462) 0) max)))
(define-fun ok463 () Bool (and (>= (select (select D 463) 0) min) (<= (select (select D 463) 0) max)))
(define-fun ok464 () Bool (and (>= (select (select D 464) 0) min) (<= (select (select D 464) 0) max)))
(define-fun ok465 () Bool (and (>= (select (select D 465) 0) min) (<= (select (select D 465) 0) max)))
(define-fun ok466 () Bool (and (>= (select (select D 466) 0) min) (<= (select (select D 466) 0) max)))
(define-fun ok467 () Bool (and (>= (select (select D 467) 0) min) (<= (select (select D 467) 0) max)))
(define-fun ok468 () Bool (and (>= (select (select D 468) 0) min) (<= (select (select D 468) 0) max)))
(define-fun ok469 () Bool (and (>= (select (select D 469) 0) min) (<= (select (select D 469) 0) max)))
(define-fun ok470 () Bool (and (>= (select (select D 470) 0) min) (<= (select (select D 470) 0) max)))
(define-fun ok471 () Bool (and (>= (select (select D 471) 0) min) (<= (select (select D 471) 0) max)))
(define-fun ok472 () Bool (and (>= (select (select D 472) 0) min) (<= (select (select D 472) 0) max)))
(define-fun ok473 () Bool (and (>= (select (select D 473) 0) min) (<= (select (select D 473) 0) max)))
(define-fun ok474 () Bool (and (>= (select (select D 474) 0) min) (<= (select (select D 474) 0) max)))
(define-fun ok475 () Bool (and (>= (select (select D 475) 0) min) (<= (select (select D 475) 0) max)))
(define-fun ok476 () Bool (and (>= (select (select D 476) 0) min) (<= (select (select D 476) 0) max)))
(define-fun ok477 () Bool (and (>= (select (select D 477) 0) min) (<= (select (select D 477) 0) max)))
(define-fun ok478 () Bool (and (>= (select (select D 478) 0) min) (<= (select (select D 478) 0) max)))
(define-fun ok479 () Bool (and (>= (select (select D 479) 0) min) (<= (select (select D 479) 0) max)))
(define-fun ok480 () Bool (and (>= (select (select D 480) 0) min) (<= (select (select D 480) 0) max)))
(define-fun ok481 () Bool (and (>= (select (select D 481) 0) min) (<= (select (select D 481) 0) max)))
(define-fun ok482 () Bool (and (>= (select (select D 482) 0) min) (<= (select (select D 482) 0) max)))
(define-fun ok483 () Bool (and (>= (select (select D 483) 0) min) (<= (select (select D 483) 0) max)))
(define-fun ok484 () Bool (and (>= (select (select D 484) 0) min) (<= (select (select D 484) 0) max)))
(define-fun ok485 () Bool (and (>= (select (select D 485) 0) min) (<= (select (select D 485) 0) max)))
(define-fun ok486 () Bool (and (>= (select (select D 486) 0) min) (<= (select (select D 486) 0) max)))
(define-fun ok487 () Bool (and (>= (select (select D 487) 0) min) (<= (select (select D 487) 0) max)))
(define-fun ok488 () Bool (and (>= (select (select D 488) 0) min) (<= (select (select D 488) 0) max)))
(define-fun ok489 () Bool (and (>= (select (select D 489) 0) min) (<= (select (select D 489) 0) max)))
(define-fun ok490 () Bool (and (>= (select (select D 490) 0) min) (<= (select (select D 490) 0) max)))
(define-fun ok491 () Bool (and (>= (select (select D 491) 0) min) (<= (select (select D 491) 0) max)))
(define-fun ok492 () Bool (and (>= (select (select D 492) 0) min) (<= (select (select D 492) 0) max)))
(define-fun ok493 () Bool (and (>= (select (select D 493) 0) min) (<= (select (select D 493) 0) max)))
(define-fun ok494 () Bool (and (>= (select (select D 494) 0) min) (<= (select (select D 494) 0) max)))
(define-fun ok495 () Bool (and (>= (select (select D 495) 0) min) (<= (select (select D 495) 0) max)))
(define-fun ok496 () Bool (and (>= (select (select D 496) 0) min) (<= (select (select D 496) 0) max)))
(define-fun ok497 () Bool (and (>= (select (select D 497) 0) min) (<= (select (select D 497) 0) max)))
(define-fun ok498 () Bool (and (>= (select (select D 498) 0) min) (<= (select (select D 498) 0) max)))
(define-fun ok499 () Bool (and (>= (select (select D 499) 0) min) (<= (select (select D 499) 0) max)))
(define-fun ok500 () Bool (and (>= (select (select D 500) 0) min) (<= (select (select D 500) 0) max)))
(define-fun ok501 () Bool (and (>= (select (select D 501) 0) min) (<= (select (select D 501) 0) max)))
(define-fun ok502 () Bool (and (>= (select (select D 502) 0) min) (<= (select (select D 502) 0) max)))
(define-fun ok503 () Bool (and (>= (select (select D 503) 0) min) (<= (select (select D 503) 0) max)))
(define-fun ok504 () Bool (and (>= (select (select D 504) 0) min) (<= (select (select D 504) 0) max)))
(define-fun ok505 () Bool (and (>= (select (select D 505) 0) min) (<= (select (select D 505) 0) max)))
(define-fun ok506 () Bool (and (>= (select (select D 506) 0) min) (<= (select (select D 506) 0) max)))
(define-fun ok507 () Bool (and (>= (select (select D 507) 0) min) (<= (select (select D 507) 0) max)))
(define-fun ok508 () Bool (and (>= (select (select D 508) 0) min) (<= (select (select D 508) 0) max)))
(define-fun ok509 () Bool (and (>= (select (select D 509) 0) min) (<= (select (select D 509) 0) max)))
(define-fun ok510 () Bool (and (>= (select (select D 510) 0) min) (<= (select (select D 510) 0) max)))
(define-fun ok511 () Bool (and (>= (select (select D 511) 0) min) (<= (select (select D 511) 0) max)))
(define-fun ok512 () Bool (and (>= (select (select D 512) 0) min) (<= (select (select D 512) 0) max)))
(define-fun ok513 () Bool (and (>= (select (select D 513) 0) min) (<= (select (select D 513) 0) max)))
(define-fun ok514 () Bool (and (>= (select (select D 514) 0) min) (<= (select (select D 514) 0) max)))
(define-fun ok515 () Bool (and (>= (select (select D 515) 0) min) (<= (select (select D 515) 0) max)))
(define-fun ok516 () Bool (and (>= (select (select D 516) 0) min) (<= (select (select D 516) 0) max)))
(define-fun ok517 () Bool (and (>= (select (select D 517) 0) min) (<= (select (select D 517) 0) max)))
(define-fun ok518 () Bool (and (>= (select (select D 518) 0) min) (<= (select (select D 518) 0) max)))
(define-fun ok519 () Bool (and (>= (select (select D 519) 0) min) (<= (select (select D 519) 0) max)))
(define-fun ok520 () Bool (and (>= (select (select D 520) 0) min) (<= (select (select D 520) 0) max)))
(define-fun ok521 () Bool (and (>= (select (select D 521) 0) min) (<= (select (select D 521) 0) max)))
(define-fun ok522 () Bool (and (>= (select (select D 522) 0) min) (<= (select (select D 522) 0) max)))
(define-fun ok523 () Bool (and (>= (select (select D 523) 0) min) (<= (select (select D 523) 0) max)))
(define-fun ok524 () Bool (and (>= (select (select D 524) 0) min) (<= (select (select D 524) 0) max)))
(define-fun ok525 () Bool (and (>= (select (select D 525) 0) min) (<= (select (select D 525) 0) max)))
(define-fun ok526 () Bool (and (>= (select (select D 526) 0) min) (<= (select (select D 526) 0) max)))
(define-fun ok527 () Bool (and (>= (select (select D 527) 0) min) (<= (select (select D 527) 0) max)))
(define-fun ok528 () Bool (and (>= (select (select D 528) 0) min) (<= (select (select D 528) 0) max)))
(define-fun ok529 () Bool (and (>= (select (select D 529) 0) min) (<= (select (select D 529) 0) max)))
(define-fun ok530 () Bool (and (>= (select (select D 530) 0) min) (<= (select (select D 530) 0) max)))
(define-fun ok531 () Bool (and (>= (select (select D 531) 0) min) (<= (select (select D 531) 0) max)))
(define-fun ok532 () Bool (and (>= (select (select D 532) 0) min) (<= (select (select D 532) 0) max)))
(define-fun ok533 () Bool (and (>= (select (select D 533) 0) min) (<= (select (select D 533) 0) max)))
(define-fun ok534 () Bool (and (>= (select (select D 534) 0) min) (<= (select (select D 534) 0) max)))
(define-fun ok535 () Bool (and (>= (select (select D 535) 0) min) (<= (select (select D 535) 0) max)))
(define-fun ok536 () Bool (and (>= (select (select D 536) 0) min) (<= (select (select D 536) 0) max)))
(define-fun ok537 () Bool (and (>= (select (select D 537) 0) min) (<= (select (select D 537) 0) max)))
(define-fun ok538 () Bool (and (>= (select (select D 538) 0) min) (<= (select (select D 538) 0) max)))
(define-fun ok539 () Bool (and (>= (select (select D 539) 0) min) (<= (select (select D 539) 0) max)))
(define-fun ok540 () Bool (and (>= (select (select D 540) 0) min) (<= (select (select D 540) 0) max)))
(define-fun ok541 () Bool (and (>= (select (select D 541) 0) min) (<= (select (select D 541) 0) max)))
(define-fun ok542 () Bool (and (>= (select (select D 542) 0) min) (<= (select (select D 542) 0) max)))
(define-fun ok543 () Bool (and (>= (select (select D 543) 0) min) (<= (select (select D 543) 0) max)))
(define-fun ok544 () Bool (and (>= (select (select D 544) 0) min) (<= (select (select D 544) 0) max)))
(define-fun ok545 () Bool (and (>= (select (select D 545) 0) min) (<= (select (select D 545) 0) max)))
(define-fun ok546 () Bool (and (>= (select (select D 546) 0) min) (<= (select (select D 546) 0) max)))
(define-fun ok547 () Bool (and (>= (select (select D 547) 0) min) (<= (select (select D 547) 0) max)))
(define-fun ok548 () Bool (and (>= (select (select D 548) 0) min) (<= (select (select D 548) 0) max)))
(define-fun ok549 () Bool (and (>= (select (select D 549) 0) min) (<= (select (select D 549) 0) max)))
(define-fun ok550 () Bool (and (>= (select (select D 550) 0) min) (<= (select (select D 550) 0) max)))
(define-fun ok551 () Bool (and (>= (select (select D 551) 0) min) (<= (select (select D 551) 0) max)))
(define-fun ok552 () Bool (and (>= (select (select D 552) 0) min) (<= (select (select D 552) 0) max)))
(define-fun ok553 () Bool (and (>= (select (select D 553) 0) min) (<= (select (select D 553) 0) max)))
(define-fun ok554 () Bool (and (>= (select (select D 554) 0) min) (<= (select (select D 554) 0) max)))
(define-fun ok555 () Bool (and (>= (select (select D 555) 0) min) (<= (select (select D 555) 0) max)))
(define-fun ok556 () Bool (and (>= (select (select D 556) 0) min) (<= (select (select D 556) 0) max)))
(define-fun ok557 () Bool (and (>= (select (select D 557) 0) min) (<= (select (select D 557) 0) max)))
(define-fun ok558 () Bool (and (>= (select (select D 558) 0) min) (<= (select (select D 558) 0) max)))
(define-fun ok559 () Bool (and (>= (select (select D 559) 0) min) (<= (select (select D 559) 0) max)))
(define-fun ok560 () Bool (and (>= (select (select D 560) 0) min) (<= (select (select D 560) 0) max)))
(define-fun ok561 () Bool (and (>= (select (select D 561) 0) min) (<= (select (select D 561) 0) max)))
(define-fun ok562 () Bool (and (>= (select (select D 562) 0) min) (<= (select (select D 562) 0) max)))
(define-fun ok563 () Bool (and (>= (select (select D 563) 0) min) (<= (select (select D 563) 0) max)))
(define-fun ok564 () Bool (and (>= (select (select D 564) 0) min) (<= (select (select D 564) 0) max)))
(define-fun ok565 () Bool (and (>= (select (select D 565) 0) min) (<= (select (select D 565) 0) max)))
(define-fun ok566 () Bool (and (>= (select (select D 566) 0) min) (<= (select (select D 566) 0) max)))
(define-fun ok567 () Bool (and (>= (select (select D 567) 0) min) (<= (select (select D 567) 0) max)))
(define-fun ok568 () Bool (and (>= (select (select D 568) 0) min) (<= (select (select D 568) 0) max)))
(define-fun ok569 () Bool (and (>= (select (select D 569) 0) min) (<= (select (select D 569) 0) max)))
(define-fun ok570 () Bool (and (>= (select (select D 570) 0) min) (<= (select (select D 570) 0) max)))
(define-fun ok571 () Bool (and (>= (select (select D 571) 0) min) (<= (select (select D 571) 0) max)))
(define-fun ok572 () Bool (and (>= (select (select D 572) 0) min) (<= (select (select D 572) 0) max)))
(define-fun ok573 () Bool (and (>= (select (select D 573) 0) min) (<= (select (select D 573) 0) max)))
(define-fun ok574 () Bool (and (>= (select (select D 574) 0) min) (<= (select (select D 574) 0) max)))
(define-fun ok575 () Bool (and (>= (select (select D 575) 0) min) (<= (select (select D 575) 0) max)))
(define-fun ok576 () Bool (and (>= (select (select D 576) 0) min) (<= (select (select D 576) 0) max)))
(define-fun ok577 () Bool (and (>= (select (select D 577) 0) min) (<= (select (select D 577) 0) max)))
(define-fun ok578 () Bool (and (>= (select (select D 578) 0) min) (<= (select (select D 578) 0) max)))
(define-fun ok579 () Bool (and (>= (select (select D 579) 0) min) (<= (select (select D 579) 0) max)))
(define-fun ok580 () Bool (and (>= (select (select D 580) 0) min) (<= (select (select D 580) 0) max)))
(define-fun ok581 () Bool (and (>= (select (select D 581) 0) min) (<= (select (select D 581) 0) max)))
(define-fun ok582 () Bool (and (>= (select (select D 582) 0) min) (<= (select (select D 582) 0) max)))
(define-fun ok583 () Bool (and (>= (select (select D 583) 0) min) (<= (select (select D 583) 0) max)))
(define-fun ok584 () Bool (and (>= (select (select D 584) 0) min) (<= (select (select D 584) 0) max)))
(define-fun ok585 () Bool (and (>= (select (select D 585) 0) min) (<= (select (select D 585) 0) max)))
(define-fun ok586 () Bool (and (>= (select (select D 586) 0) min) (<= (select (select D 586) 0) max)))
(define-fun ok587 () Bool (and (>= (select (select D 587) 0) min) (<= (select (select D 587) 0) max)))
(define-fun ok588 () Bool (and (>= (select (select D 588) 0) min) (<= (select (select D 588) 0) max)))
(define-fun ok589 () Bool (and (>= (select (select D 589) 0) min) (<= (select (select D 589) 0) max)))
(define-fun ok590 () Bool (and (>= (select (select D 590) 0) min) (<= (select (select D 590) 0) max)))
(define-fun ok591 () Bool (and (>= (select (select D 591) 0) min) (<= (select (select D 591) 0) max)))
(define-fun ok592 () Bool (and (>= (select (select D 592) 0) min) (<= (select (select D 592) 0) max)))
(define-fun ok593 () Bool (and (>= (select (select D 593) 0) min) (<= (select (select D 593) 0) max)))
(define-fun ok594 () Bool (and (>= (select (select D 594) 0) min) (<= (select (select D 594) 0) max)))
(define-fun ok595 () Bool (and (>= (select (select D 595) 0) min) (<= (select (select D 595) 0) max)))
(define-fun ok596 () Bool (and (>= (select (select D 596) 0) min) (<= (select (select D 596) 0) max)))
(define-fun ok597 () Bool (and (>= (select (select D 597) 0) min) (<= (select (select D 597) 0) max)))
(define-fun ok598 () Bool (and (>= (select (select D 598) 0) min) (<= (select (select D 598) 0) max)))
(define-fun ok599 () Bool (and (>= (select (select D 599) 0) min) (<= (select (select D 599) 0) max)))
(define-fun ok600 () Bool (and (>= (select (select D 600) 0) min) (<= (select (select D 600) 0) max)))
(define-fun ok601 () Bool (and (>= (select (select D 601) 0) min) (<= (select (select D 601) 0) max)))
(define-fun ok602 () Bool (and (>= (select (select D 602) 0) min) (<= (select (select D 602) 0) max)))
(define-fun ok603 () Bool (and (>= (select (select D 603) 0) min) (<= (select (select D 603) 0) max)))
(define-fun ok604 () Bool (and (>= (select (select D 604) 0) min) (<= (select (select D 604) 0) max)))
(define-fun ok605 () Bool (and (>= (select (select D 605) 0) min) (<= (select (select D 605) 0) max)))
(define-fun ok606 () Bool (and (>= (select (select D 606) 0) min) (<= (select (select D 606) 0) max)))
(define-fun ok607 () Bool (and (>= (select (select D 607) 0) min) (<= (select (select D 607) 0) max)))
(define-fun ok608 () Bool (and (>= (select (select D 608) 0) min) (<= (select (select D 608) 0) max)))
(define-fun ok609 () Bool (and (>= (select (select D 609) 0) min) (<= (select (select D 609) 0) max)))
(define-fun ok610 () Bool (and (>= (select (select D 610) 0) min) (<= (select (select D 610) 0) max)))
(define-fun ok611 () Bool (and (>= (select (select D 611) 0) min) (<= (select (select D 611) 0) max)))
(define-fun ok612 () Bool (and (>= (select (select D 612) 0) min) (<= (select (select D 612) 0) max)))
(define-fun ok613 () Bool (and (>= (select (select D 613) 0) min) (<= (select (select D 613) 0) max)))
(define-fun ok614 () Bool (and (>= (select (select D 614) 0) min) (<= (select (select D 614) 0) max)))
(define-fun ok615 () Bool (and (>= (select (select D 615) 0) min) (<= (select (select D 615) 0) max)))
(define-fun ok616 () Bool (and (>= (select (select D 616) 0) min) (<= (select (select D 616) 0) max)))
(define-fun ok617 () Bool (and (>= (select (select D 617) 0) min) (<= (select (select D 617) 0) max)))
(define-fun ok618 () Bool (and (>= (select (select D 618) 0) min) (<= (select (select D 618) 0) max)))
(define-fun ok619 () Bool (and (>= (select (select D 619) 0) min) (<= (select (select D 619) 0) max)))
(define-fun ok620 () Bool (and (>= (select (select D 620) 0) min) (<= (select (select D 620) 0) max)))
(define-fun ok621 () Bool (and (>= (select (select D 621) 0) min) (<= (select (select D 621) 0) max)))
(define-fun ok622 () Bool (and (>= (select (select D 622) 0) min) (<= (select (select D 622) 0) max)))
(define-fun ok623 () Bool (and (>= (select (select D 623) 0) min) (<= (select (select D 623) 0) max)))
(define-fun ok624 () Bool (and (>= (select (select D 624) 0) min) (<= (select (select D 624) 0) max)))
(define-fun ok625 () Bool (and (>= (select (select D 625) 0) min) (<= (select (select D 625) 0) max)))
(define-fun ok626 () Bool (and (>= (select (select D 626) 0) min) (<= (select (select D 626) 0) max)))
(define-fun ok627 () Bool (and (>= (select (select D 627) 0) min) (<= (select (select D 627) 0) max)))
(define-fun ok628 () Bool (and (>= (select (select D 628) 0) min) (<= (select (select D 628) 0) max)))
(define-fun ok629 () Bool (and (>= (select (select D 629) 0) min) (<= (select (select D 629) 0) max)))
(define-fun ok630 () Bool (and (>= (select (select D 630) 0) min) (<= (select (select D 630) 0) max)))
(define-fun ok631 () Bool (and (>= (select (select D 631) 0) min) (<= (select (select D 631) 0) max)))
(define-fun ok632 () Bool (and (>= (select (select D 632) 0) min) (<= (select (select D 632) 0) max)))
(define-fun ok633 () Bool (and (>= (select (select D 633) 0) min) (<= (select (select D 633) 0) max)))
(define-fun ok634 () Bool (and (>= (select (select D 634) 0) min) (<= (select (select D 634) 0) max)))
(define-fun ok635 () Bool (and (>= (select (select D 635) 0) min) (<= (select (select D 635) 0) max)))
(define-fun ok636 () Bool (and (>= (select (select D 636) 0) min) (<= (select (select D 636) 0) max)))
(define-fun ok637 () Bool (and (>= (select (select D 637) 0) min) (<= (select (select D 637) 0) max)))
(define-fun ok638 () Bool (and (>= (select (select D 638) 0) min) (<= (select (select D 638) 0) max)))
(define-fun ok639 () Bool (and (>= (select (select D 639) 0) min) (<= (select (select D 639) 0) max)))
(define-fun ok640 () Bool (and (>= (select (select D 640) 0) min) (<= (select (select D 640) 0) max)))
(define-fun ok641 () Bool (and (>= (select (select D 641) 0) min) (<= (select (select D 641) 0) max)))
(define-fun ok642 () Bool (and (>= (select (select D 642) 0) min) (<= (select (select D 642) 0) max)))
(define-fun ok643 () Bool (and (>= (select (select D 643) 0) min) (<= (select (select D 643) 0) max)))
(define-fun ok644 () Bool (and (>= (select (select D 644) 0) min) (<= (select (select D 644) 0) max)))
(define-fun ok645 () Bool (and (>= (select (select D 645) 0) min) (<= (select (select D 645) 0) max)))
(define-fun ok646 () Bool (and (>= (select (select D 646) 0) min) (<= (select (select D 646) 0) max)))
(define-fun ok647 () Bool (and (>= (select (select D 647) 0) min) (<= (select (select D 647) 0) max)))
(define-fun ok648 () Bool (and (>= (select (select D 648) 0) min) (<= (select (select D 648) 0) max)))
(define-fun ok649 () Bool (and (>= (select (select D 649) 0) min) (<= (select (select D 649) 0) max)))
(define-fun ok650 () Bool (and (>= (select (select D 650) 0) min) (<= (select (select D 650) 0) max)))
(define-fun ok651 () Bool (and (>= (select (select D 651) 0) min) (<= (select (select D 651) 0) max)))
(define-fun ok652 () Bool (and (>= (select (select D 652) 0) min) (<= (select (select D 652) 0) max)))
(define-fun ok653 () Bool (and (>= (select (select D 653) 0) min) (<= (select (select D 653) 0) max)))
(define-fun ok654 () Bool (and (>= (select (select D 654) 0) min) (<= (select (select D 654) 0) max)))
(define-fun ok655 () Bool (and (>= (select (select D 655) 0) min) (<= (select (select D 655) 0) max)))
(define-fun ok656 () Bool (and (>= (select (select D 656) 0) min) (<= (select (select D 656) 0) max)))
(define-fun ok657 () Bool (and (>= (select (select D 657) 0) min) (<= (select (select D 657) 0) max)))
(define-fun ok658 () Bool (and (>= (select (select D 658) 0) min) (<= (select (select D 658) 0) max)))
(define-fun ok659 () Bool (and (>= (select (select D 659) 0) min) (<= (select (select D 659) 0) max)))
(define-fun ok660 () Bool (and (>= (select (select D 660) 0) min) (<= (select (select D 660) 0) max)))
(define-fun ok661 () Bool (and (>= (select (select D 661) 0) min) (<= (select (select D 661) 0) max)))
(define-fun ok662 () Bool (and (>= (select (select D 662) 0) min) (<= (select (select D 662) 0) max)))
(define-fun ok663 () Bool (and (>= (select (select D 663) 0) min) (<= (select (select D 663) 0) max)))
(define-fun ok664 () Bool (and (>= (select (select D 664) 0) min) (<= (select (select D 664) 0) max)))
(define-fun ok665 () Bool (and (>= (select (select D 665) 0) min) (<= (select (select D 665) 0) max)))
(define-fun ok666 () Bool (and (>= (select (select D 666) 0) min) (<= (select (select D 666) 0) max)))
(define-fun ok667 () Bool (and (>= (select (select D 667) 0) min) (<= (select (select D 667) 0) max)))
(define-fun ok668 () Bool (and (>= (select (select D 668) 0) min) (<= (select (select D 668) 0) max)))
(define-fun ok669 () Bool (and (>= (select (select D 669) 0) min) (<= (select (select D 669) 0) max)))
(define-fun ok670 () Bool (and (>= (select (select D 670) 0) min) (<= (select (select D 670) 0) max)))
(define-fun ok671 () Bool (and (>= (select (select D 671) 0) min) (<= (select (select D 671) 0) max)))
(define-fun ok672 () Bool (and (>= (select (select D 672) 0) min) (<= (select (select D 672) 0) max)))
(define-fun ok673 () Bool (and (>= (select (select D 673) 0) min) (<= (select (select D 673) 0) max)))
(define-fun ok674 () Bool (and (>= (select (select D 674) 0) min) (<= (select (select D 674) 0) max)))
(define-fun ok675 () Bool (and (>= (select (select D 675) 0) min) (<= (select (select D 675) 0) max)))
(define-fun ok676 () Bool (and (>= (select (select D 676) 0) min) (<= (select (select D 676) 0) max)))
(define-fun ok677 () Bool (and (>= (select (select D 677) 0) min) (<= (select (select D 677) 0) max)))
(define-fun ok678 () Bool (and (>= (select (select D 678) 0) min) (<= (select (select D 678) 0) max)))
(define-fun ok679 () Bool (and (>= (select (select D 679) 0) min) (<= (select (select D 679) 0) max)))
(define-fun ok680 () Bool (and (>= (select (select D 680) 0) min) (<= (select (select D 680) 0) max)))
(define-fun ok681 () Bool (and (>= (select (select D 681) 0) min) (<= (select (select D 681) 0) max)))
(define-fun ok682 () Bool (and (>= (select (select D 682) 0) min) (<= (select (select D 682) 0) max)))
(define-fun ok683 () Bool (and (>= (select (select D 683) 0) min) (<= (select (select D 683) 0) max)))
(define-fun ok684 () Bool (and (>= (select (select D 684) 0) min) (<= (select (select D 684) 0) max)))
(define-fun ok685 () Bool (and (>= (select (select D 685) 0) min) (<= (select (select D 685) 0) max)))
(define-fun ok686 () Bool (and (>= (select (select D 686) 0) min) (<= (select (select D 686) 0) max)))
(define-fun ok687 () Bool (and (>= (select (select D 687) 0) min) (<= (select (select D 687) 0) max)))
(define-fun ok688 () Bool (and (>= (select (select D 688) 0) min) (<= (select (select D 688) 0) max)))
(define-fun ok689 () Bool (and (>= (select (select D 689) 0) min) (<= (select (select D 689) 0) max)))
(define-fun ok690 () Bool (and (>= (select (select D 690) 0) min) (<= (select (select D 690) 0) max)))
(define-fun ok691 () Bool (and (>= (select (select D 691) 0) min) (<= (select (select D 691) 0) max)))
(define-fun ok692 () Bool (and (>= (select (select D 692) 0) min) (<= (select (select D 692) 0) max)))
(define-fun ok693 () Bool (and (>= (select (select D 693) 0) min) (<= (select (select D 693) 0) max)))
(define-fun ok694 () Bool (and (>= (select (select D 694) 0) min) (<= (select (select D 694) 0) max)))
(define-fun ok695 () Bool (and (>= (select (select D 695) 0) min) (<= (select (select D 695) 0) max)))
(define-fun ok696 () Bool (and (>= (select (select D 696) 0) min) (<= (select (select D 696) 0) max)))
(define-fun ok697 () Bool (and (>= (select (select D 697) 0) min) (<= (select (select D 697) 0) max)))
(define-fun ok698 () Bool (and (>= (select (select D 698) 0) min) (<= (select (select D 698) 0) max)))
(define-fun ok699 () Bool (and (>= (select (select D 699) 0) min) (<= (select (select D 699) 0) max)))
(define-fun ok700 () Bool (and (>= (select (select D 700) 0) min) (<= (select (select D 700) 0) max)))
(define-fun ok701 () Bool (and (>= (select (select D 701) 0) min) (<= (select (select D 701) 0) max)))
(define-fun ok702 () Bool (and (>= (select (select D 702) 0) min) (<= (select (select D 702) 0) max)))
(define-fun ok703 () Bool (and (>= (select (select D 703) 0) min) (<= (select (select D 703) 0) max)))
(define-fun ok704 () Bool (and (>= (select (select D 704) 0) min) (<= (select (select D 704) 0) max)))
(define-fun ok705 () Bool (and (>= (select (select D 705) 0) min) (<= (select (select D 705) 0) max)))
(define-fun ok706 () Bool (and (>= (select (select D 706) 0) min) (<= (select (select D 706) 0) max)))
(define-fun ok707 () Bool (and (>= (select (select D 707) 0) min) (<= (select (select D 707) 0) max)))
(define-fun ok708 () Bool (and (>= (select (select D 708) 0) min) (<= (select (select D 708) 0) max)))
(define-fun ok709 () Bool (and (>= (select (select D 709) 0) min) (<= (select (select D 709) 0) max)))
(define-fun ok710 () Bool (and (>= (select (select D 710) 0) min) (<= (select (select D 710) 0) max)))
(define-fun ok711 () Bool (and (>= (select (select D 711) 0) min) (<= (select (select D 711) 0) max)))
(define-fun ok712 () Bool (and (>= (select (select D 712) 0) min) (<= (select (select D 712) 0) max)))
(define-fun ok713 () Bool (and (>= (select (select D 713) 0) min) (<= (select (select D 713) 0) max)))
(define-fun ok714 () Bool (and (>= (select (select D 714) 0) min) (<= (select (select D 714) 0) max)))
(define-fun ok715 () Bool (and (>= (select (select D 715) 0) min) (<= (select (select D 715) 0) max)))
(define-fun ok716 () Bool (and (>= (select (select D 716) 0) min) (<= (select (select D 716) 0) max)))
(define-fun ok717 () Bool (and (>= (select (select D 717) 0) min) (<= (select (select D 717) 0) max)))
(define-fun ok718 () Bool (and (>= (select (select D 718) 0) min) (<= (select (select D 718) 0) max)))
(define-fun ok719 () Bool (and (>= (select (select D 719) 0) min) (<= (select (select D 719) 0) max)))
(define-fun ok720 () Bool (and (>= (select (select D 720) 0) min) (<= (select (select D 720) 0) max)))
(define-fun ok721 () Bool (and (>= (select (select D 721) 0) min) (<= (select (select D 721) 0) max)))
(define-fun ok722 () Bool (and (>= (select (select D 722) 0) min) (<= (select (select D 722) 0) max)))
(define-fun ok723 () Bool (and (>= (select (select D 723) 0) min) (<= (select (select D 723) 0) max)))
(define-fun ok724 () Bool (and (>= (select (select D 724) 0) min) (<= (select (select D 724) 0) max)))
(define-fun ok725 () Bool (and (>= (select (select D 725) 0) min) (<= (select (select D 725) 0) max)))
(define-fun ok726 () Bool (and (>= (select (select D 726) 0) min) (<= (select (select D 726) 0) max)))
(define-fun ok727 () Bool (and (>= (select (select D 727) 0) min) (<= (select (select D 727) 0) max)))
(define-fun ok728 () Bool (and (>= (select (select D 728) 0) min) (<= (select (select D 728) 0) max)))
(define-fun ok729 () Bool (and (>= (select (select D 729) 0) min) (<= (select (select D 729) 0) max)))
(define-fun ok730 () Bool (and (>= (select (select D 730) 0) min) (<= (select (select D 730) 0) max)))
(define-fun ok731 () Bool (and (>= (select (select D 731) 0) min) (<= (select (select D 731) 0) max)))
(define-fun ok732 () Bool (and (>= (select (select D 732) 0) min) (<= (select (select D 732) 0) max)))
(define-fun ok733 () Bool (and (>= (select (select D 733) 0) min) (<= (select (select D 733) 0) max)))
(define-fun ok734 () Bool (and (>= (select (select D 734) 0) min) (<= (select (select D 734) 0) max)))
(define-fun ok735 () Bool (and (>= (select (select D 735) 0) min) (<= (select (select D 735) 0) max)))
(define-fun ok736 () Bool (and (>= (select (select D 736) 0) min) (<= (select (select D 736) 0) max)))
(define-fun ok737 () Bool (and (>= (select (select D 737) 0) min) (<= (select (select D 737) 0) max)))
(define-fun ok738 () Bool (and (>= (select (select D 738) 0) min) (<= (select (select D 738) 0) max)))
(define-fun ok739 () Bool (and (>= (select (select D 739) 0) min) (<= (select (select D 739) 0) max)))
(define-fun ok740 () Bool (and (>= (select (select D 740) 0) min) (<= (select (select D 740) 0) max)))
(define-fun ok741 () Bool (and (>= (select (select D 741) 0) min) (<= (select (select D 741) 0) max)))
(define-fun ok742 () Bool (and (>= (select (select D 742) 0) min) (<= (select (select D 742) 0) max)))
(define-fun ok743 () Bool (and (>= (select (select D 743) 0) min) (<= (select (select D 743) 0) max)))
(define-fun ok744 () Bool (and (>= (select (select D 744) 0) min) (<= (select (select D 744) 0) max)))
(define-fun ok745 () Bool (and (>= (select (select D 745) 0) min) (<= (select (select D 745) 0) max)))
(define-fun ok746 () Bool (and (>= (select (select D 746) 0) min) (<= (select (select D 746) 0) max)))
(define-fun ok747 () Bool (and (>= (select (select D 747) 0) min) (<= (select (select D 747) 0) max)))
(define-fun ok748 () Bool (and (>= (select (select D 748) 0) min) (<= (select (select D 748) 0) max)))
(define-fun ok749 () Bool (and (>= (select (select D 749) 0) min) (<= (select (select D 749) 0) max)))
(define-fun ok750 () Bool (and (>= (select (select D 750) 0) min) (<= (select (select D 750) 0) max)))
(define-fun ok751 () Bool (and (>= (select (select D 751) 0) min) (<= (select (select D 751) 0) max)))
(define-fun ok752 () Bool (and (>= (select (select D 752) 0) min) (<= (select (select D 752) 0) max)))
(define-fun ok753 () Bool (and (>= (select (select D 753) 0) min) (<= (select (select D 753) 0) max)))
(define-fun ok754 () Bool (and (>= (select (select D 754) 0) min) (<= (select (select D 754) 0) max)))
(define-fun ok755 () Bool (and (>= (select (select D 755) 0) min) (<= (select (select D 755) 0) max)))
(define-fun ok756 () Bool (and (>= (select (select D 756) 0) min) (<= (select (select D 756) 0) max)))
(define-fun ok757 () Bool (and (>= (select (select D 757) 0) min) (<= (select (select D 757) 0) max)))
(define-fun ok758 () Bool (and (>= (select (select D 758) 0) min) (<= (select (select D 758) 0) max)))
(define-fun ok759 () Bool (and (>= (select (select D 759) 0) min) (<= (select (select D 759) 0) max)))
(define-fun ok760 () Bool (and (>= (select (select D 760) 0) min) (<= (select (select D 760) 0) max)))
(define-fun ok761 () Bool (and (>= (select (select D 761) 0) min) (<= (select (select D 761) 0) max)))
(define-fun ok762 () Bool (and (>= (select (select D 762) 0) min) (<= (select (select D 762) 0) max)))
(define-fun ok763 () Bool (and (>= (select (select D 763) 0) min) (<= (select (select D 763) 0) max)))
(define-fun ok764 () Bool (and (>= (select (select D 764) 0) min) (<= (select (select D 764) 0) max)))
(define-fun ok765 () Bool (and (>= (select (select D 765) 0) min) (<= (select (select D 765) 0) max)))
(define-fun ok766 () Bool (and (>= (select (select D 766) 0) min) (<= (select (select D 766) 0) max)))
(define-fun ok767 () Bool (and (>= (select (select D 767) 0) min) (<= (select (select D 767) 0) max)))
(define-fun ok768 () Bool (and (>= (select (select D 768) 0) min) (<= (select (select D 768) 0) max)))
(define-fun ok769 () Bool (and (>= (select (select D 769) 0) min) (<= (select (select D 769) 0) max)))
(define-fun ok770 () Bool (and (>= (select (select D 770) 0) min) (<= (select (select D 770) 0) max)))
(define-fun ok771 () Bool (and (>= (select (select D 771) 0) min) (<= (select (select D 771) 0) max)))
(define-fun ok772 () Bool (and (>= (select (select D 772) 0) min) (<= (select (select D 772) 0) max)))
(define-fun ok773 () Bool (and (>= (select (select D 773) 0) min) (<= (select (select D 773) 0) max)))
(define-fun ok774 () Bool (and (>= (select (select D 774) 0) min) (<= (select (select D 774) 0) max)))
(define-fun ok775 () Bool (and (>= (select (select D 775) 0) min) (<= (select (select D 775) 0) max)))
(define-fun ok776 () Bool (and (>= (select (select D 776) 0) min) (<= (select (select D 776) 0) max)))
(define-fun ok777 () Bool (and (>= (select (select D 777) 0) min) (<= (select (select D 777) 0) max)))
(define-fun ok778 () Bool (and (>= (select (select D 778) 0) min) (<= (select (select D 778) 0) max)))
(define-fun ok779 () Bool (and (>= (select (select D 779) 0) min) (<= (select (select D 779) 0) max)))
(define-fun ok780 () Bool (and (>= (select (select D 780) 0) min) (<= (select (select D 780) 0) max)))
(define-fun ok781 () Bool (and (>= (select (select D 781) 0) min) (<= (select (select D 781) 0) max)))
(define-fun ok782 () Bool (and (>= (select (select D 782) 0) min) (<= (select (select D 782) 0) max)))
(define-fun ok783 () Bool (and (>= (select (select D 783) 0) min) (<= (select (select D 783) 0) max)))
(define-fun ok784 () Bool (and (>= (select (select D 784) 0) min) (<= (select (select D 784) 0) max)))
(define-fun ok785 () Bool (and (>= (select (select D 785) 0) min) (<= (select (select D 785) 0) max)))
(define-fun ok786 () Bool (and (>= (select (select D 786) 0) min) (<= (select (select D 786) 0) max)))
(define-fun ok787 () Bool (and (>= (select (select D 787) 0) min) (<= (select (select D 787) 0) max)))
(define-fun ok788 () Bool (and (>= (select (select D 788) 0) min) (<= (select (select D 788) 0) max)))
(define-fun ok789 () Bool (and (>= (select (select D 789) 0) min) (<= (select (select D 789) 0) max)))
(define-fun ok790 () Bool (and (>= (select (select D 790) 0) min) (<= (select (select D 790) 0) max)))
(define-fun ok791 () Bool (and (>= (select (select D 791) 0) min) (<= (select (select D 791) 0) max)))
(define-fun ok792 () Bool (and (>= (select (select D 792) 0) min) (<= (select (select D 792) 0) max)))
(define-fun ok793 () Bool (and (>= (select (select D 793) 0) min) (<= (select (select D 793) 0) max)))
(define-fun ok794 () Bool (and (>= (select (select D 794) 0) min) (<= (select (select D 794) 0) max)))
(define-fun ok795 () Bool (and (>= (select (select D 795) 0) min) (<= (select (select D 795) 0) max)))
(define-fun ok796 () Bool (and (>= (select (select D 796) 0) min) (<= (select (select D 796) 0) max)))
(define-fun ok797 () Bool (and (>= (select (select D 797) 0) min) (<= (select (select D 797) 0) max)))
(define-fun ok798 () Bool (and (>= (select (select D 798) 0) min) (<= (select (select D 798) 0) max)))
(define-fun ok799 () Bool (and (>= (select (select D 799) 0) min) (<= (select (select D 799) 0) max)))
(define-fun ok800 () Bool (and (>= (select (select D 800) 0) min) (<= (select (select D 800) 0) max)))
(define-fun ok801 () Bool (and (>= (select (select D 801) 0) min) (<= (select (select D 801) 0) max)))
(define-fun ok802 () Bool (and (>= (select (select D 802) 0) min) (<= (select (select D 802) 0) max)))
(define-fun ok803 () Bool (and (>= (select (select D 803) 0) min) (<= (select (select D 803) 0) max)))
(define-fun ok804 () Bool (and (>= (select (select D 804) 0) min) (<= (select (select D 804) 0) max)))
(define-fun ok805 () Bool (and (>= (select (select D 805) 0) min) (<= (select (select D 805) 0) max)))
(define-fun ok806 () Bool (and (>= (select (select D 806) 0) min) (<= (select (select D 806) 0) max)))
(define-fun ok807 () Bool (and (>= (select (select D 807) 0) min) (<= (select (select D 807) 0) max)))
(define-fun ok808 () Bool (and (>= (select (select D 808) 0) min) (<= (select (select D 808) 0) max)))
(define-fun ok809 () Bool (and (>= (select (select D 809) 0) min) (<= (select (select D 809) 0) max)))
(define-fun ok810 () Bool (and (>= (select (select D 810) 0) min) (<= (select (select D 810) 0) max)))
(define-fun ok811 () Bool (and (>= (select (select D 811) 0) min) (<= (select (select D 811) 0) max)))
(define-fun ok812 () Bool (and (>= (select (select D 812) 0) min) (<= (select (select D 812) 0) max)))
(define-fun ok813 () Bool (and (>= (select (select D 813) 0) min) (<= (select (select D 813) 0) max)))
(define-fun ok814 () Bool (and (>= (select (select D 814) 0) min) (<= (select (select D 814) 0) max)))
(define-fun ok815 () Bool (and (>= (select (select D 815) 0) min) (<= (select (select D 815) 0) max)))
(define-fun ok816 () Bool (and (>= (select (select D 816) 0) min) (<= (select (select D 816) 0) max)))
(define-fun ok817 () Bool (and (>= (select (select D 817) 0) min) (<= (select (select D 817) 0) max)))
(define-fun ok818 () Bool (and (>= (select (select D 818) 0) min) (<= (select (select D 818) 0) max)))
(define-fun ok819 () Bool (and (>= (select (select D 819) 0) min) (<= (select (select D 819) 0) max)))
(define-fun ok820 () Bool (and (>= (select (select D 820) 0) min) (<= (select (select D 820) 0) max)))
(define-fun ok821 () Bool (and (>= (select (select D 821) 0) min) (<= (select (select D 821) 0) max)))
(define-fun ok822 () Bool (and (>= (select (select D 822) 0) min) (<= (select (select D 822) 0) max)))
(define-fun ok823 () Bool (and (>= (select (select D 823) 0) min) (<= (select (select D 823) 0) max)))
(define-fun ok824 () Bool (and (>= (select (select D 824) 0) min) (<= (select (select D 824) 0) max)))
(define-fun ok825 () Bool (and (>= (select (select D 825) 0) min) (<= (select (select D 825) 0) max)))
(define-fun ok826 () Bool (and (>= (select (select D 826) 0) min) (<= (select (select D 826) 0) max)))
(define-fun ok827 () Bool (and (>= (select (select D 827) 0) min) (<= (select (select D 827) 0) max)))
(define-fun ok828 () Bool (and (>= (select (select D 828) 0) min) (<= (select (select D 828) 0) max)))
(define-fun ok829 () Bool (and (>= (select (select D 829) 0) min) (<= (select (select D 829) 0) max)))
(define-fun ok830 () Bool (and (>= (select (select D 830) 0) min) (<= (select (select D 830) 0) max)))
(define-fun ok831 () Bool (and (>= (select (select D 831) 0) min) (<= (select (select D 831) 0) max)))
(define-fun ok832 () Bool (and (>= (select (select D 832) 0) min) (<= (select (select D 832) 0) max)))
(define-fun ok833 () Bool (and (>= (select (select D 833) 0) min) (<= (select (select D 833) 0) max)))
(define-fun ok834 () Bool (and (>= (select (select D 834) 0) min) (<= (select (select D 834) 0) max)))
(define-fun ok835 () Bool (and (>= (select (select D 835) 0) min) (<= (select (select D 835) 0) max)))
(define-fun ok836 () Bool (and (>= (select (select D 836) 0) min) (<= (select (select D 836) 0) max)))
(define-fun ok837 () Bool (and (>= (select (select D 837) 0) min) (<= (select (select D 837) 0) max)))
(define-fun ok838 () Bool (and (>= (select (select D 838) 0) min) (<= (select (select D 838) 0) max)))
(define-fun ok839 () Bool (and (>= (select (select D 839) 0) min) (<= (select (select D 839) 0) max)))
(define-fun ok840 () Bool (and (>= (select (select D 840) 0) min) (<= (select (select D 840) 0) max)))
(define-fun ok841 () Bool (and (>= (select (select D 841) 0) min) (<= (select (select D 841) 0) max)))
(define-fun ok842 () Bool (and (>= (select (select D 842) 0) min) (<= (select (select D 842) 0) max)))
(define-fun ok843 () Bool (and (>= (select (select D 843) 0) min) (<= (select (select D 843) 0) max)))
(define-fun ok844 () Bool (and (>= (select (select D 844) 0) min) (<= (select (select D 844) 0) max)))
(define-fun ok845 () Bool (and (>= (select (select D 845) 0) min) (<= (select (select D 845) 0) max)))
(define-fun ok846 () Bool (and (>= (select (select D 846) 0) min) (<= (select (select D 846) 0) max)))
(define-fun ok847 () Bool (and (>= (select (select D 847) 0) min) (<= (select (select D 847) 0) max)))
(define-fun ok848 () Bool (and (>= (select (select D 848) 0) min) (<= (select (select D 848) 0) max)))
(define-fun ok849 () Bool (and (>= (select (select D 849) 0) min) (<= (select (select D 849) 0) max)))
(define-fun ok850 () Bool (and (>= (select (select D 850) 0) min) (<= (select (select D 850) 0) max)))
(define-fun ok851 () Bool (and (>= (select (select D 851) 0) min) (<= (select (select D 851) 0) max)))
(define-fun ok852 () Bool (and (>= (select (select D 852) 0) min) (<= (select (select D 852) 0) max)))
(define-fun ok853 () Bool (and (>= (select (select D 853) 0) min) (<= (select (select D 853) 0) max)))
(define-fun ok854 () Bool (and (>= (select (select D 854) 0) min) (<= (select (select D 854) 0) max)))
(define-fun ok855 () Bool (and (>= (select (select D 855) 0) min) (<= (select (select D 855) 0) max)))
(define-fun ok856 () Bool (and (>= (select (select D 856) 0) min) (<= (select (select D 856) 0) max)))
(define-fun ok857 () Bool (and (>= (select (select D 857) 0) min) (<= (select (select D 857) 0) max)))
(define-fun ok858 () Bool (and (>= (select (select D 858) 0) min) (<= (select (select D 858) 0) max)))
(define-fun ok859 () Bool (and (>= (select (select D 859) 0) min) (<= (select (select D 859) 0) max)))
(define-fun ok860 () Bool (and (>= (select (select D 860) 0) min) (<= (select (select D 860) 0) max)))
(define-fun ok861 () Bool (and (>= (select (select D 861) 0) min) (<= (select (select D 861) 0) max)))
(define-fun ok862 () Bool (and (>= (select (select D 862) 0) min) (<= (select (select D 862) 0) max)))
(define-fun ok863 () Bool (and (>= (select (select D 863) 0) min) (<= (select (select D 863) 0) max)))
(define-fun ok864 () Bool (and (>= (select (select D 864) 0) min) (<= (select (select D 864) 0) max)))
(define-fun ok865 () Bool (and (>= (select (select D 865) 0) min) (<= (select (select D 865) 0) max)))
(define-fun ok866 () Bool (and (>= (select (select D 866) 0) min) (<= (select (select D 866) 0) max)))
(define-fun ok867 () Bool (and (>= (select (select D 867) 0) min) (<= (select (select D 867) 0) max)))
(define-fun ok868 () Bool (and (>= (select (select D 868) 0) min) (<= (select (select D 868) 0) max)))
(define-fun ok869 () Bool (and (>= (select (select D 869) 0) min) (<= (select (select D 869) 0) max)))
(define-fun ok870 () Bool (and (>= (select (select D 870) 0) min) (<= (select (select D 870) 0) max)))
(define-fun ok871 () Bool (and (>= (select (select D 871) 0) min) (<= (select (select D 871) 0) max)))
(define-fun ok872 () Bool (and (>= (select (select D 872) 0) min) (<= (select (select D 872) 0) max)))
(define-fun ok873 () Bool (and (>= (select (select D 873) 0) min) (<= (select (select D 873) 0) max)))
(define-fun ok874 () Bool (and (>= (select (select D 874) 0) min) (<= (select (select D 874) 0) max)))
(define-fun ok875 () Bool (and (>= (select (select D 875) 0) min) (<= (select (select D 875) 0) max)))
(define-fun ok876 () Bool (and (>= (select (select D 876) 0) min) (<= (select (select D 876) 0) max)))
(define-fun ok877 () Bool (and (>= (select (select D 877) 0) min) (<= (select (select D 877) 0) max)))
(define-fun ok878 () Bool (and (>= (select (select D 878) 0) min) (<= (select (select D 878) 0) max)))
(define-fun ok879 () Bool (and (>= (select (select D 879) 0) min) (<= (select (select D 879) 0) max)))
(define-fun ok880 () Bool (and (>= (select (select D 880) 0) min) (<= (select (select D 880) 0) max)))
(define-fun ok881 () Bool (and (>= (select (select D 881) 0) min) (<= (select (select D 881) 0) max)))
(define-fun ok882 () Bool (and (>= (select (select D 882) 0) min) (<= (select (select D 882) 0) max)))
(define-fun ok883 () Bool (and (>= (select (select D 883) 0) min) (<= (select (select D 883) 0) max)))
(define-fun ok884 () Bool (and (>= (select (select D 884) 0) min) (<= (select (select D 884) 0) max)))
(define-fun ok885 () Bool (and (>= (select (select D 885) 0) min) (<= (select (select D 885) 0) max)))
(define-fun ok886 () Bool (and (>= (select (select D 886) 0) min) (<= (select (select D 886) 0) max)))
(define-fun ok887 () Bool (and (>= (select (select D 887) 0) min) (<= (select (select D 887) 0) max)))
(define-fun ok888 () Bool (and (>= (select (select D 888) 0) min) (<= (select (select D 888) 0) max)))
(define-fun ok889 () Bool (and (>= (select (select D 889) 0) min) (<= (select (select D 889) 0) max)))
(define-fun ok890 () Bool (and (>= (select (select D 890) 0) min) (<= (select (select D 890) 0) max)))
(define-fun ok891 () Bool (and (>= (select (select D 891) 0) min) (<= (select (select D 891) 0) max)))
(define-fun ok892 () Bool (and (>= (select (select D 892) 0) min) (<= (select (select D 892) 0) max)))
(define-fun ok893 () Bool (and (>= (select (select D 893) 0) min) (<= (select (select D 893) 0) max)))
(define-fun ok894 () Bool (and (>= (select (select D 894) 0) min) (<= (select (select D 894) 0) max)))
(define-fun ok895 () Bool (and (>= (select (select D 895) 0) min) (<= (select (select D 895) 0) max)))
(define-fun ok896 () Bool (and (>= (select (select D 896) 0) min) (<= (select (select D 896) 0) max)))
(define-fun ok897 () Bool (and (>= (select (select D 897) 0) min) (<= (select (select D 897) 0) max)))
(define-fun ok898 () Bool (and (>= (select (select D 898) 0) min) (<= (select (select D 898) 0) max)))
(define-fun ok899 () Bool (and (>= (select (select D 899) 0) min) (<= (select (select D 899) 0) max)))
(define-fun ok900 () Bool (and (>= (select (select D 900) 0) min) (<= (select (select D 900) 0) max)))
(define-fun ok901 () Bool (and (>= (select (select D 901) 0) min) (<= (select (select D 901) 0) max)))
(define-fun ok902 () Bool (and (>= (select (select D 902) 0) min) (<= (select (select D 902) 0) max)))
(define-fun ok903 () Bool (and (>= (select (select D 903) 0) min) (<= (select (select D 903) 0) max)))
(define-fun ok904 () Bool (and (>= (select (select D 904) 0) min) (<= (select (select D 904) 0) max)))
(define-fun ok905 () Bool (and (>= (select (select D 905) 0) min) (<= (select (select D 905) 0) max)))
(define-fun ok906 () Bool (and (>= (select (select D 906) 0) min) (<= (select (select D 906) 0) max)))
(define-fun ok907 () Bool (and (>= (select (select D 907) 0) min) (<= (select (select D 907) 0) max)))
(define-fun ok908 () Bool (and (>= (select (select D 908) 0) min) (<= (select (select D 908) 0) max)))
(define-fun ok909 () Bool (and (>= (select (select D 909) 0) min) (<= (select (select D 909) 0) max)))
(define-fun ok910 () Bool (and (>= (select (select D 910) 0) min) (<= (select (select D 910) 0) max)))
(define-fun ok911 () Bool (and (>= (select (select D 911) 0) min) (<= (select (select D 911) 0) max)))
(define-fun ok912 () Bool (and (>= (select (select D 912) 0) min) (<= (select (select D 912) 0) max)))
(define-fun ok913 () Bool (and (>= (select (select D 913) 0) min) (<= (select (select D 913) 0) max)))
(define-fun ok914 () Bool (and (>= (select (select D 914) 0) min) (<= (select (select D 914) 0) max)))
(define-fun ok915 () Bool (and (>= (select (select D 915) 0) min) (<= (select (select D 915) 0) max)))
(define-fun ok916 () Bool (and (>= (select (select D 916) 0) min) (<= (select (select D 916) 0) max)))
(define-fun ok917 () Bool (and (>= (select (select D 917) 0) min) (<= (select (select D 917) 0) max)))
(define-fun ok918 () Bool (and (>= (select (select D 918) 0) min) (<= (select (select D 918) 0) max)))
(define-fun ok919 () Bool (and (>= (select (select D 919) 0) min) (<= (select (select D 919) 0) max)))
(define-fun ok920 () Bool (and (>= (select (select D 920) 0) min) (<= (select (select D 920) 0) max)))
(define-fun ok921 () Bool (and (>= (select (select D 921) 0) min) (<= (select (select D 921) 0) max)))
(define-fun ok922 () Bool (and (>= (select (select D 922) 0) min) (<= (select (select D 922) 0) max)))
(define-fun ok923 () Bool (and (>= (select (select D 923) 0) min) (<= (select (select D 923) 0) max)))
(define-fun ok924 () Bool (and (>= (select (select D 924) 0) min) (<= (select (select D 924) 0) max)))
(define-fun ok925 () Bool (and (>= (select (select D 925) 0) min) (<= (select (select D 925) 0) max)))
(define-fun ok926 () Bool (and (>= (select (select D 926) 0) min) (<= (select (select D 926) 0) max)))
(define-fun ok927 () Bool (and (>= (select (select D 927) 0) min) (<= (select (select D 927) 0) max)))
(define-fun ok928 () Bool (and (>= (select (select D 928) 0) min) (<= (select (select D 928) 0) max)))
(define-fun ok929 () Bool (and (>= (select (select D 929) 0) min) (<= (select (select D 929) 0) max)))
(define-fun ok930 () Bool (and (>= (select (select D 930) 0) min) (<= (select (select D 930) 0) max)))
(define-fun ok931 () Bool (and (>= (select (select D 931) 0) min) (<= (select (select D 931) 0) max)))
(define-fun ok932 () Bool (and (>= (select (select D 932) 0) min) (<= (select (select D 932) 0) max)))
(define-fun ok933 () Bool (and (>= (select (select D 933) 0) min) (<= (select (select D 933) 0) max)))
(define-fun ok934 () Bool (and (>= (select (select D 934) 0) min) (<= (select (select D 934) 0) max)))
(define-fun ok935 () Bool (and (>= (select (select D 935) 0) min) (<= (select (select D 935) 0) max)))
(define-fun ok936 () Bool (and (>= (select (select D 936) 0) min) (<= (select (select D 936) 0) max)))
(define-fun ok937 () Bool (and (>= (select (select D 937) 0) min) (<= (select (select D 937) 0) max)))
(define-fun ok938 () Bool (and (>= (select (select D 938) 0) min) (<= (select (select D 938) 0) max)))
(define-fun ok939 () Bool (and (>= (select (select D 939) 0) min) (<= (select (select D 939) 0) max)))
(define-fun ok940 () Bool (and (>= (select (select D 940) 0) min) (<= (select (select D 940) 0) max)))
(define-fun ok941 () Bool (and (>= (select (select D 941) 0) min) (<= (select (select D 941) 0) max)))
(define-fun ok942 () Bool (and (>= (select (select D 942) 0) min) (<= (select (select D 942) 0) max)))
(define-fun ok943 () Bool (and (>= (select (select D 943) 0) min) (<= (select (select D 943) 0) max)))
(define-fun ok944 () Bool (and (>= (select (select D 944) 0) min) (<= (select (select D 944) 0) max)))
(define-fun ok945 () Bool (and (>= (select (select D 945) 0) min) (<= (select (select D 945) 0) max)))
(define-fun ok946 () Bool (and (>= (select (select D 946) 0) min) (<= (select (select D 946) 0) max)))
(define-fun ok947 () Bool (and (>= (select (select D 947) 0) min) (<= (select (select D 947) 0) max)))
(define-fun ok948 () Bool (and (>= (select (select D 948) 0) min) (<= (select (select D 948) 0) max)))
(define-fun ok949 () Bool (and (>= (select (select D 949) 0) min) (<= (select (select D 949) 0) max)))
(define-fun ok950 () Bool (and (>= (select (select D 950) 0) min) (<= (select (select D 950) 0) max)))
(define-fun ok951 () Bool (and (>= (select (select D 951) 0) min) (<= (select (select D 951) 0) max)))
(define-fun ok952 () Bool (and (>= (select (select D 952) 0) min) (<= (select (select D 952) 0) max)))
(define-fun ok953 () Bool (and (>= (select (select D 953) 0) min) (<= (select (select D 953) 0) max)))
(define-fun ok954 () Bool (and (>= (select (select D 954) 0) min) (<= (select (select D 954) 0) max)))
(define-fun ok955 () Bool (and (>= (select (select D 955) 0) min) (<= (select (select D 955) 0) max)))
(define-fun ok956 () Bool (and (>= (select (select D 956) 0) min) (<= (select (select D 956) 0) max)))
(define-fun ok957 () Bool (and (>= (select (select D 957) 0) min) (<= (select (select D 957) 0) max)))
(define-fun ok958 () Bool (and (>= (select (select D 958) 0) min) (<= (select (select D 958) 0) max)))
(define-fun ok959 () Bool (and (>= (select (select D 959) 0) min) (<= (select (select D 959) 0) max)))
(define-fun ok960 () Bool (and (>= (select (select D 960) 0) min) (<= (select (select D 960) 0) max)))
(define-fun ok961 () Bool (and (>= (select (select D 961) 0) min) (<= (select (select D 961) 0) max)))
(define-fun ok962 () Bool (and (>= (select (select D 962) 0) min) (<= (select (select D 962) 0) max)))
(define-fun ok963 () Bool (and (>= (select (select D 963) 0) min) (<= (select (select D 963) 0) max)))
(define-fun ok964 () Bool (and (>= (select (select D 964) 0) min) (<= (select (select D 964) 0) max)))
(define-fun ok965 () Bool (and (>= (select (select D 965) 0) min) (<= (select (select D 965) 0) max)))
(define-fun ok966 () Bool (and (>= (select (select D 966) 0) min) (<= (select (select D 966) 0) max)))
(define-fun ok967 () Bool (and (>= (select (select D 967) 0) min) (<= (select (select D 967) 0) max)))
(define-fun ok968 () Bool (and (>= (select (select D 968) 0) min) (<= (select (select D 968) 0) max)))
(define-fun ok969 () Bool (and (>= (select (select D 969) 0) min) (<= (select (select D 969) 0) max)))
(define-fun ok970 () Bool (and (>= (select (select D 970) 0) min) (<= (select (select D 970) 0) max)))
(define-fun ok971 () Bool (and (>= (select (select D 971) 0) min) (<= (select (select D 971) 0) max)))
(define-fun ok972 () Bool (and (>= (select (select D 972) 0) min) (<= (select (select D 972) 0) max)))
(define-fun ok973 () Bool (and (>= (select (select D 973) 0) min) (<= (select (select D 973) 0) max)))
(define-fun ok974 () Bool (and (>= (select (select D 974) 0) min) (<= (select (select D 974) 0) max)))
(define-fun ok975 () Bool (and (>= (select (select D 975) 0) min) (<= (select (select D 975) 0) max)))
(define-fun ok976 () Bool (and (>= (select (select D 976) 0) min) (<= (select (select D 976) 0) max)))
(define-fun ok977 () Bool (and (>= (select (select D 977) 0) min) (<= (select (select D 977) 0) max)))
(define-fun ok978 () Bool (and (>= (select (select D 978) 0) min) (<= (select (select D 978) 0) max)))
(define-fun ok979 () Bool (and (>= (select (select D 979) 0) min) (<= (select (select D 979) 0) max)))
(define-fun ok980 () Bool (and (>= (select (select D 980) 0) min) (<= (select (select D 980) 0) max)))
(define-fun ok981 () Bool (and (>= (select (select D 981) 0) min) (<= (select (select D 981) 0) max)))
(define-fun ok982 () Bool (and (>= (select (select D 982) 0) min) (<= (select (select D 982) 0) max)))
(define-fun ok983 () Bool (and (>= (select (select D 983) 0) min) (<= (select (select D 983) 0) max)))
(define-fun ok984 () Bool (and (>= (select (select D 984) 0) min) (<= (select (select D 984) 0) max)))
(define-fun ok985 () Bool (and (>= (select (select D 985) 0) min) (<= (select (select D 985) 0) max)))
(define-fun ok986 () Bool (and (>= (select (select D 986) 0) min) (<= (select (select D 986) 0) max)))
(define-fun ok987 () Bool (and (>= (select (select D 987) 0) min) (<= (select (select D 987) 0) max)))
(define-fun ok988 () Bool (and (>= (select (select D 988) 0) min) (<= (select (select D 988) 0) max)))
(define-fun ok989 () Bool (and (>= (select (select D 989) 0) min) (<= (select (select D 989) 0) max)))
(define-fun ok990 () Bool (and (>= (select (select D 990) 0) min) (<= (select (select D 990) 0) max)))
(define-fun ok991 () Bool (and (>= (select (select D 991) 0) min) (<= (select (select D 991) 0) max)))
(define-fun ok992 () Bool (and (>= (select (select D 992) 0) min) (<= (select (select D 992) 0) max)))
(define-fun ok993 () Bool (and (>= (select (select D 993) 0) min) (<= (select (select D 993) 0) max)))
(define-fun ok994 () Bool (and (>= (select (select D 994) 0) min) (<= (select (select D 994) 0) max)))
(define-fun ok995 () Bool (and (>= (select (select D 995) 0) min) (<= (select (select D 995) 0) max)))
(define-fun ok996 () Bool (and (>= (select (select D 996) 0) min) (<= (select (select D 996) 0) max)))
(define-fun ok997 () Bool (and (>= (select (select D 997) 0) min) (<= (select (select D 997) 0) max)))
(define-fun ok998 () Bool (and (>= (select (select D 998) 0) min) (<= (select (select D 998) 0) max)))
(define-fun ok999 () Bool (and (>= (select (select D 999) 0) min) (<= (select (select D 999) 0) max)))

; Combine all lemmas
(define-fun A () Bool
  (and
    ok0
    ok1
    ok2
    ok3
    ok4
    ok5
    ok6
    ok7
    ok8
    ok9
    ok10
    ok11
    ok12
    ok13
    ok14
    ok15
    ok16
    ok17
    ok18
    ok19
    ok20
    ok21
    ok22
    ok23
    ok24
    ok25
    ok26
    ok27
    ok28
    ok29
    ok30
    ok31
    ok32
    ok33
    ok34
    ok35
    ok36
    ok37
    ok38
    ok39
    ok40
    ok41
    ok42
    ok43
    ok44
    ok45
    ok46
    ok47
    ok48
    ok49
    ok50
    ok51
    ok52
    ok53
    ok54
    ok55
    ok56
    ok57
    ok58
    ok59
    ok60
    ok61
    ok62
    ok63
    ok64
    ok65
    ok66
    ok67
    ok68
    ok69
    ok70
    ok71
    ok72
    ok73
    ok74
    ok75
    ok76
    ok77
    ok78
    ok79
    ok80
    ok81
    ok82
    ok83
    ok84
    ok85
    ok86
    ok87
    ok88
    ok89
    ok90
    ok91
    ok92
    ok93
    ok94
    ok95
    ok96
    ok97
    ok98
    ok99
    ok100
    ok101
    ok102
    ok103
    ok104
    ok105
    ok106
    ok107
    ok108
    ok109
    ok110
    ok111
    ok112
    ok113
    ok114
    ok115
    ok116
    ok117
    ok118
    ok119
    ok120
    ok121
    ok122
    ok123
    ok124
    ok125
    ok126
    ok127
    ok128
    ok129
    ok130
    ok131
    ok132
    ok133
    ok134
    ok135
    ok136
    ok137
    ok138
    ok139
    ok140
    ok141
    ok142
    ok143
    ok144
    ok145
    ok146
    ok147
    ok148
    ok149
    ok150
    ok151
    ok152
    ok153
    ok154
    ok155
    ok156
    ok157
    ok158
    ok159
    ok160
    ok161
    ok162
    ok163
    ok164
    ok165
    ok166
    ok167
    ok168
    ok169
    ok170
    ok171
    ok172
    ok173
    ok174
    ok175
    ok176
    ok177
    ok178
    ok179
    ok180
    ok181
    ok182
    ok183
    ok184
    ok185
    ok186
    ok187
    ok188
    ok189
    ok190
    ok191
    ok192
    ok193
    ok194
    ok195
    ok196
    ok197
    ok198
    ok199
    ok200
    ok201
    ok202
    ok203
    ok204
    ok205
    ok206
    ok207
    ok208
    ok209
    ok210
    ok211
    ok212
    ok213
    ok214
    ok215
    ok216
    ok217
    ok218
    ok219
    ok220
    ok221
    ok222
    ok223
    ok224
    ok225
    ok226
    ok227
    ok228
    ok229
    ok230
    ok231
    ok232
    ok233
    ok234
    ok235
    ok236
    ok237
    ok238
    ok239
    ok240
    ok241
    ok242
    ok243
    ok244
    ok245
    ok246
    ok247
    ok248
    ok249
    ok250
    ok251
    ok252
    ok253
    ok254
    ok255
    ok256
    ok257
    ok258
    ok259
    ok260
    ok261
    ok262
    ok263
    ok264
    ok265
    ok266
    ok267
    ok268
    ok269
    ok270
    ok271
    ok272
    ok273
    ok274
    ok275
    ok276
    ok277
    ok278
    ok279
    ok280
    ok281
    ok282
    ok283
    ok284
    ok285
    ok286
    ok287
    ok288
    ok289
    ok290
    ok291
    ok292
    ok293
    ok294
    ok295
    ok296
    ok297
    ok298
    ok299
    ok300
    ok301
    ok302
    ok303
    ok304
    ok305
    ok306
    ok307
    ok308
    ok309
    ok310
    ok311
    ok312
    ok313
    ok314
    ok315
    ok316
    ok317
    ok318
    ok319
    ok320
    ok321
    ok322
    ok323
    ok324
    ok325
    ok326
    ok327
    ok328
    ok329
    ok330
    ok331
    ok332
    ok333
    ok334
    ok335
    ok336
    ok337
    ok338
    ok339
    ok340
    ok341
    ok342
    ok343
    ok344
    ok345
    ok346
    ok347
    ok348
    ok349
    ok350
    ok351
    ok352
    ok353
    ok354
    ok355
    ok356
    ok357
    ok358
    ok359
    ok360
    ok361
    ok362
    ok363
    ok364
    ok365
    ok366
    ok367
    ok368
    ok369
    ok370
    ok371
    ok372
    ok373
    ok374
    ok375
    ok376
    ok377
    ok378
    ok379
    ok380
    ok381
    ok382
    ok383
    ok384
    ok385
    ok386
    ok387
    ok388
    ok389
    ok390
    ok391
    ok392
    ok393
    ok394
    ok395
    ok396
    ok397
    ok398
    ok399
    ok400
    ok401
    ok402
    ok403
    ok404
    ok405
    ok406
    ok407
    ok408
    ok409
    ok410
    ok411
    ok412
    ok413
    ok414
    ok415
    ok416
    ok417
    ok418
    ok419
    ok420
    ok421
    ok422
    ok423
    ok424
    ok425
    ok426
    ok427
    ok428
    ok429
    ok430
    ok431
    ok432
    ok433
    ok434
    ok435
    ok436
    ok437
    ok438
    ok439
    ok440
    ok441
    ok442
    ok443
    ok444
    ok445
    ok446
    ok447
    ok448
    ok449
    ok450
    ok451
    ok452
    ok453
    ok454
    ok455
    ok456
    ok457
    ok458
    ok459
    ok460
    ok461
    ok462
    ok463
    ok464
    ok465
    ok466
    ok467
    ok468
    ok469
    ok470
    ok471
    ok472
    ok473
    ok474
    ok475
    ok476
    ok477
    ok478
    ok479
    ok480
    ok481
    ok482
    ok483
    ok484
    ok485
    ok486
    ok487
    ok488
    ok489
    ok490
    ok491
    ok492
    ok493
    ok494
    ok495
    ok496
    ok497
    ok498
    ok499
    ok500
    ok501
    ok502
    ok503
    ok504
    ok505
    ok506
    ok507
    ok508
    ok509
    ok510
    ok511
    ok512
    ok513
    ok514
    ok515
    ok516
    ok517
    ok518
    ok519
    ok520
    ok521
    ok522
    ok523
    ok524
    ok525
    ok526
    ok527
    ok528
    ok529
    ok530
    ok531
    ok532
    ok533
    ok534
    ok535
    ok536
    ok537
    ok538
    ok539
    ok540
    ok541
    ok542
    ok543
    ok544
    ok545
    ok546
    ok547
    ok548
    ok549
    ok550
    ok551
    ok552
    ok553
    ok554
    ok555
    ok556
    ok557
    ok558
    ok559
    ok560
    ok561
    ok562
    ok563
    ok564
    ok565
    ok566
    ok567
    ok568
    ok569
    ok570
    ok571
    ok572
    ok573
    ok574
    ok575
    ok576
    ok577
    ok578
    ok579
    ok580
    ok581
    ok582
    ok583
    ok584
    ok585
    ok586
    ok587
    ok588
    ok589
    ok590
    ok591
    ok592
    ok593
    ok594
    ok595
    ok596
    ok597
    ok598
    ok599
    ok600
    ok601
    ok602
    ok603
    ok604
    ok605
    ok606
    ok607
    ok608
    ok609
    ok610
    ok611
    ok612
    ok613
    ok614
    ok615
    ok616
    ok617
    ok618
    ok619
    ok620
    ok621
    ok622
    ok623
    ok624
    ok625
    ok626
    ok627
    ok628
    ok629
    ok630
    ok631
    ok632
    ok633
    ok634
    ok635
    ok636
    ok637
    ok638
    ok639
    ok640
    ok641
    ok642
    ok643
    ok644
    ok645
    ok646
    ok647
    ok648
    ok649
    ok650
    ok651
    ok652
    ok653
    ok654
    ok655
    ok656
    ok657
    ok658
    ok659
    ok660
    ok661
    ok662
    ok663
    ok664
    ok665
    ok666
    ok667
    ok668
    ok669
    ok670
    ok671
    ok672
    ok673
    ok674
    ok675
    ok676
    ok677
    ok678
    ok679
    ok680
    ok681
    ok682
    ok683
    ok684
    ok685
    ok686
    ok687
    ok688
    ok689
    ok690
    ok691
    ok692
    ok693
    ok694
    ok695
    ok696
    ok697
    ok698
    ok699
    ok700
    ok701
    ok702
    ok703
    ok704
    ok705
    ok706
    ok707
    ok708
    ok709
    ok710
    ok711
    ok712
    ok713
    ok714
    ok715
    ok716
    ok717
    ok718
    ok719
    ok720
    ok721
    ok722
    ok723
    ok724
    ok725
    ok726
    ok727
    ok728
    ok729
    ok730
    ok731
    ok732
    ok733
    ok734
    ok735
    ok736
    ok737
    ok738
    ok739
    ok740
    ok741
    ok742
    ok743
    ok744
    ok745
    ok746
    ok747
    ok748
    ok749
    ok750
    ok751
    ok752
    ok753
    ok754
    ok755
    ok756
    ok757
    ok758
    ok759
    ok760
    ok761
    ok762
    ok763
    ok764
    ok765
    ok766
    ok767
    ok768
    ok769
    ok770
    ok771
    ok772
    ok773
    ok774
    ok775
    ok776
    ok777
    ok778
    ok779
    ok780
    ok781
    ok782
    ok783
    ok784
    ok785
    ok786
    ok787
    ok788
    ok789
    ok790
    ok791
    ok792
    ok793
    ok794
    ok795
    ok796
    ok797
    ok798
    ok799
    ok800
    ok801
    ok802
    ok803
    ok804
    ok805
    ok806
    ok807
    ok808
    ok809
    ok810
    ok811
    ok812
    ok813
    ok814
    ok815
    ok816
    ok817
    ok818
    ok819
    ok820
    ok821
    ok822
    ok823
    ok824
    ok825
    ok826
    ok827
    ok828
    ok829
    ok830
    ok831
    ok832
    ok833
    ok834
    ok835
    ok836
    ok837
    ok838
    ok839
    ok840
    ok841
    ok842
    ok843
    ok844
    ok845
    ok846
    ok847
    ok848
    ok849
    ok850
    ok851
    ok852
    ok853
    ok854
    ok855
    ok856
    ok857
    ok858
    ok859
    ok860
    ok861
    ok862
    ok863
    ok864
    ok865
    ok866
    ok867
    ok868
    ok869
    ok870
    ok871
    ok872
    ok873
    ok874
    ok875
    ok876
    ok877
    ok878
    ok879
    ok880
    ok881
    ok882
    ok883
    ok884
    ok885
    ok886
    ok887
    ok888
    ok889
    ok890
    ok891
    ok892
    ok893
    ok894
    ok895
    ok896
    ok897
    ok898
    ok899
    ok900
    ok901
    ok902
    ok903
    ok904
    ok905
    ok906
    ok907
    ok908
    ok909
    ok910
    ok911
    ok912
    ok913
    ok914
    ok915
    ok916
    ok917
    ok918
    ok919
    ok920
    ok921
    ok922
    ok923
    ok924
    ok925
    ok926
    ok927
    ok928
    ok929
    ok930
    ok931
    ok932
    ok933
    ok934
    ok935
    ok936
    ok937
    ok938
    ok939
    ok940
    ok941
    ok942
    ok943
    ok944
    ok945
    ok946
    ok947
    ok948
    ok949
    ok950
    ok951
    ok952
    ok953
    ok954
    ok955
    ok956
    ok957
    ok958
    ok959
    ok960
    ok961
    ok962
    ok963
    ok964
    ok965
    ok966
    ok967
    ok968
    ok969
    ok970
    ok971
    ok972
    ok973
    ok974
    ok975
    ok976
    ok977
    ok978
    ok979
    ok980
    ok981
    ok982
    ok983
    ok984
    ok985
    ok986
    ok987
    ok988
    ok989
    ok990
    ok991
    ok992
    ok993
    ok994
    ok995
    ok996
    ok997
    ok998
    ok999
  )
)

; -------------------------
; Equivalence check (XOR)
; -------------------------
(assert (xor Q A))
(check-sat)

