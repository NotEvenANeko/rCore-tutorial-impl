
target/riscv64gc-unknown-none-elf/release/00hello_world:	file format elf64-littleriscv

Sections:
Idx Name              Size     VMA              Type
  0                   00000000 0000000000000000 
  1 .text             00000e34 0000000080400000 TEXT
  2 .rodata           000002d5 0000000080400e38 DATA
  3 .data             00000200 0000000080401110 DATA
  4 .comment          00000048 0000000000000000 
  5 .riscv.attributes 0000003e 0000000000000000 
  6 .debug_abbrev     000005ae 0000000000000000 DEBUG
  7 .debug_info       0002df5a 0000000000000000 DEBUG
  8 .debug_aranges    00003610 0000000000000000 DEBUG
  9 .debug_ranges     00025e00 0000000000000000 DEBUG
 10 .debug_str        0004218a 0000000000000000 DEBUG
 11 .debug_pubnames   000170db 0000000000000000 DEBUG
 12 .debug_pubtypes   000000c6 0000000000000000 DEBUG
 13 .debug_line       0002be19 0000000000000000 DEBUG
 14 .symtab           0002aa80 0000000000000000 
 15 .shstrtab         000000b8 0000000000000000 
 16 .strtab           00001226 0000000000000000 

Disassembly of section .text:

0000000080400000 <stext>:
80400000: 41 11        	addi	sp, sp, -16
80400002: 06 e4        	sd	ra, 8(sp)
80400004: 22 e0        	sd	s0, 0(sp)
80400006: 00 08        	addi	s0, sp, 16
80400008: 97 00 00 00  	auipc	ra, 0
8040000c: e7 80 00 28  	jalr	640(ra)
80400010: 97 00 00 00  	auipc	ra, 0
80400014: e7 80 40 03  	jalr	52(ra)
80400018: 01 25        	sext.w	a0, a0
8040001a: 93 08 d0 05  	li	a7, 93
8040001e: 81 45        	li	a1, 0
80400020: 01 46        	li	a2, 0
80400022: 73 00 00 00  	ecall

0000000080400026 <.Lpcrel_hi9>:
80400026: 17 15 00 00  	auipc	a0, 1
8040002a: 13 05 a5 f0  	addi	a0, a0, -246

000000008040002e <.Lpcrel_hi10>:
8040002e: 97 15 00 00  	auipc	a1, 1
80400032: 13 86 a5 f6  	addi	a2, a1, -150
80400036: 93 05 80 02  	li	a1, 40
8040003a: 97 00 00 00  	auipc	ra, 0
8040003e: e7 80 80 3d  	jalr	984(ra)
80400042: 00 00        	unimp

0000000080400044 <main>:
80400044: 39 71        	addi	sp, sp, -64
80400046: 06 fc        	sd	ra, 56(sp)
80400048: 22 f8        	sd	s0, 48(sp)
8040004a: 80 00        	addi	s0, sp, 64

000000008040004c <.Lpcrel_hi0>:
8040004c: 17 15 00 00  	auipc	a0, 1
80400050: 13 05 c5 df  	addi	a0, a0, -516
80400054: 23 30 a4 fc  	sd	a0, -64(s0)
80400058: 05 45        	li	a0, 1
8040005a: 23 34 a4 fc  	sd	a0, -56(s0)
8040005e: 23 30 04 fe  	sd	zero, -32(s0)

0000000080400062 <.Lpcrel_hi1>:
80400062: 17 15 00 00  	auipc	a0, 1
80400066: 13 05 65 df  	addi	a0, a0, -522
8040006a: 23 38 a4 fc  	sd	a0, -48(s0)
8040006e: 23 3c 04 fc  	sd	zero, -40(s0)
80400072: 13 05 04 fc  	addi	a0, s0, -64
80400076: 97 00 00 00  	auipc	ra, 0
8040007a: e7 80 40 14  	jalr	324(ra)
8040007e: 01 45        	li	a0, 0
80400080: e2 70        	ld	ra, 56(sp)
80400082: 42 74        	ld	s0, 48(sp)
80400084: 21 61        	addi	sp, sp, 64
80400086: 82 80        	ret

0000000080400088 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6527fbf3aa66004cE>:
80400088: 41 11        	addi	sp, sp, -16
8040008a: 06 e4        	sd	ra, 8(sp)
8040008c: 22 e0        	sd	s0, 0(sp)
8040008e: 00 08        	addi	s0, sp, 16
80400090: 08 61        	ld	a0, 0(a0)
80400092: a2 60        	ld	ra, 8(sp)
80400094: 02 64        	ld	s0, 0(sp)
80400096: 41 01        	addi	sp, sp, 16
80400098: 17 03 00 00  	auipc	t1, 0
8040009c: 67 00 23 23  	jr	562(t1)

00000000804000a0 <_ZN4core3fmt5Write10write_char17hd4a81a3b978418ceE>:
804000a0: 01 11        	addi	sp, sp, -32
804000a2: 06 ec        	sd	ra, 24(sp)
804000a4: 22 e8        	sd	s0, 16(sp)
804000a6: 00 10        	addi	s0, sp, 32
804000a8: 1b 85 05 00  	sext.w	a0, a1
804000ac: 13 06 00 08  	li	a2, 128
804000b0: 23 26 04 fe  	sw	zero, -20(s0)
804000b4: 63 76 c5 00  	bgeu	a0, a2, 0x804000c0 <_ZN4core3fmt5Write10write_char17hd4a81a3b978418ceE+0x20>
804000b8: 23 06 b4 fe  	sb	a1, -20(s0)
804000bc: 05 46        	li	a2, 1
804000be: 71 a0        	j	0x8040014a <_ZN4core3fmt5Write10write_char17hd4a81a3b978418ceE+0xaa>
804000c0: 1b d5 b5 00  	srliw	a0, a1, 11
804000c4: 19 ed        	bnez	a0, 0x804000e2 <_ZN4core3fmt5Write10write_char17hd4a81a3b978418ceE+0x42>
804000c6: 13 d5 65 00  	srli	a0, a1, 6
804000ca: 13 65 05 0c  	ori	a0, a0, 192
804000ce: 23 06 a4 fe  	sb	a0, -20(s0)
804000d2: 13 f5 f5 03  	andi	a0, a1, 63
804000d6: 13 05 05 08  	addi	a0, a0, 128
804000da: a3 06 a4 fe  	sb	a0, -19(s0)
804000de: 09 46        	li	a2, 2
804000e0: ad a0        	j	0x8040014a <_ZN4core3fmt5Write10write_char17hd4a81a3b978418ceE+0xaa>
804000e2: 1b d5 05 01  	srliw	a0, a1, 16
804000e6: 15 e5        	bnez	a0, 0x80400112 <_ZN4core3fmt5Write10write_char17hd4a81a3b978418ceE+0x72>
804000e8: 13 d5 c5 00  	srli	a0, a1, 12
804000ec: 13 65 05 0e  	ori	a0, a0, 224
804000f0: 23 06 a4 fe  	sb	a0, -20(s0)
804000f4: 13 95 45 03  	slli	a0, a1, 52
804000f8: 69 91        	srli	a0, a0, 58
804000fa: 13 05 05 08  	addi	a0, a0, 128
804000fe: a3 06 a4 fe  	sb	a0, -19(s0)
80400102: 13 f5 f5 03  	andi	a0, a1, 63
80400106: 13 05 05 08  	addi	a0, a0, 128
8040010a: 23 07 a4 fe  	sb	a0, -18(s0)
8040010e: 0d 46        	li	a2, 3
80400110: 2d a8        	j	0x8040014a <_ZN4core3fmt5Write10write_char17hd4a81a3b978418ceE+0xaa>
80400112: 13 95 b5 02  	slli	a0, a1, 43
80400116: 75 91        	srli	a0, a0, 61
80400118: 13 05 05 0f  	addi	a0, a0, 240
8040011c: 23 06 a4 fe  	sb	a0, -20(s0)
80400120: 13 95 e5 02  	slli	a0, a1, 46
80400124: 69 91        	srli	a0, a0, 58
80400126: 13 05 05 08  	addi	a0, a0, 128
8040012a: a3 06 a4 fe  	sb	a0, -19(s0)
8040012e: 13 95 45 03  	slli	a0, a1, 52
80400132: 69 91        	srli	a0, a0, 58
80400134: 13 05 05 08  	addi	a0, a0, 128
80400138: 23 07 a4 fe  	sb	a0, -18(s0)
8040013c: 13 f5 f5 03  	andi	a0, a1, 63
80400140: 13 05 05 08  	addi	a0, a0, 128
80400144: a3 07 a4 fe  	sb	a0, -17(s0)
80400148: 11 46        	li	a2, 4
8040014a: 93 08 00 04  	li	a7, 64
8040014e: 05 45        	li	a0, 1
80400150: 93 05 c4 fe  	addi	a1, s0, -20
80400154: 73 00 00 00  	ecall
80400158: 05 05        	addi	a0, a0, 1
8040015a: 13 35 15 00  	seqz	a0, a0
8040015e: e2 60        	ld	ra, 24(sp)
80400160: 42 64        	ld	s0, 16(sp)
80400162: 05 61        	addi	sp, sp, 32
80400164: 82 80        	ret

0000000080400166 <_ZN4core3fmt5Write9write_fmt17hcd6fdf64eeefd10aE>:
80400166: 41 11        	addi	sp, sp, -16
80400168: 06 e4        	sd	ra, 8(sp)
8040016a: 22 e0        	sd	s0, 0(sp)
8040016c: 00 08        	addi	s0, sp, 16

000000008040016e <.Lpcrel_hi0>:
8040016e: 17 16 00 00  	auipc	a2, 1
80400172: 13 06 a6 ce  	addi	a2, a2, -790
80400176: ae 86        	mv	a3, a1
80400178: b2 85        	mv	a1, a2
8040017a: 36 86        	mv	a2, a3
8040017c: a2 60        	ld	ra, 8(sp)
8040017e: 02 64        	ld	s0, 0(sp)
80400180: 41 01        	addi	sp, sp, 16
80400182: 17 03 00 00  	auipc	t1, 0
80400186: 67 00 83 30  	jr	776(t1)

000000008040018a <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h3a8b3c535950d7e9E>:
8040018a: 41 11        	addi	sp, sp, -16
8040018c: 06 e4        	sd	ra, 8(sp)
8040018e: 22 e0        	sd	s0, 0(sp)
80400190: 00 08        	addi	s0, sp, 16
80400192: a2 60        	ld	ra, 8(sp)
80400194: 02 64        	ld	s0, 0(sp)
80400196: 41 01        	addi	sp, sp, 16
80400198: 82 80        	ret

000000008040019a <_ZN62_$LT$user_lib..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17hdd95513f4af411ddE>:
8040019a: 41 11        	addi	sp, sp, -16
8040019c: 06 e4        	sd	ra, 8(sp)
8040019e: 22 e0        	sd	s0, 0(sp)
804001a0: 00 08        	addi	s0, sp, 16
804001a2: 93 08 00 04  	li	a7, 64
804001a6: 05 45        	li	a0, 1
804001a8: 73 00 00 00  	ecall
804001ac: 05 05        	addi	a0, a0, 1
804001ae: 13 35 15 00  	seqz	a0, a0
804001b2: a2 60        	ld	ra, 8(sp)
804001b4: 02 64        	ld	s0, 0(sp)
804001b6: 41 01        	addi	sp, sp, 16
804001b8: 82 80        	ret

00000000804001ba <_ZN8user_lib7console5print17h6d4ccf4d96284898E>:
804001ba: 01 11        	addi	sp, sp, -32
804001bc: 06 ec        	sd	ra, 24(sp)
804001be: 22 e8        	sd	s0, 16(sp)
804001c0: 00 10        	addi	s0, sp, 32
804001c2: 2a 86        	mv	a2, a0

00000000804001c4 <.Lpcrel_hi1>:
804001c4: 17 15 00 00  	auipc	a0, 1
804001c8: 93 05 45 c9  	addi	a1, a0, -876
804001cc: 13 05 f4 fe  	addi	a0, s0, -17
804001d0: 97 00 00 00  	auipc	ra, 0
804001d4: e7 80 a0 2b  	jalr	698(ra)
804001d8: 09 e5        	bnez	a0, 0x804001e2 <.Lpcrel_hi2>
804001da: e2 60        	ld	ra, 24(sp)
804001dc: 42 64        	ld	s0, 16(sp)
804001de: 05 61        	addi	sp, sp, 32
804001e0: 82 80        	ret

00000000804001e2 <.Lpcrel_hi2>:
804001e2: 17 15 00 00  	auipc	a0, 1
804001e6: 13 05 65 ca  	addi	a0, a0, -858

00000000804001ea <.Lpcrel_hi3>:
804001ea: 97 15 00 00  	auipc	a1, 1
804001ee: 93 86 e5 cc  	addi	a3, a1, -818

00000000804001f2 <.Lpcrel_hi4>:
804001f2: 97 15 00 00  	auipc	a1, 1
804001f6: 13 87 e5 cf  	addi	a4, a1, -770
804001fa: 93 05 b0 02  	li	a1, 43
804001fe: 13 06 f4 fe  	addi	a2, s0, -17
80400202: 97 00 00 00  	auipc	ra, 0
80400206: e7 80 c0 23  	jalr	572(ra)
8040020a: 00 00        	unimp

000000008040020c <rust_begin_unwind>:
8040020c: 1d 71        	addi	sp, sp, -96
8040020e: 86 ec        	sd	ra, 88(sp)
80400210: a2 e8        	sd	s0, 80(sp)
80400212: 80 10        	addi	s0, sp, 96
80400214: 23 34 a4 fa  	sd	a0, -88(s0)
80400218: 13 05 84 fa  	addi	a0, s0, -88
8040021c: 23 30 a4 fe  	sd	a0, -32(s0)

0000000080400220 <.Lpcrel_hi5>:
80400220: 17 05 00 00  	auipc	a0, 0
80400224: 13 05 85 e6  	addi	a0, a0, -408
80400228: 23 34 a4 fe  	sd	a0, -24(s0)

000000008040022c <.Lpcrel_hi6>:
8040022c: 17 15 00 00  	auipc	a0, 1
80400230: 13 05 45 ce  	addi	a0, a0, -796
80400234: 23 38 a4 fa  	sd	a0, -80(s0)
80400238: 09 45        	li	a0, 2
8040023a: 23 3c a4 fa  	sd	a0, -72(s0)
8040023e: 23 38 04 fc  	sd	zero, -48(s0)
80400242: 13 05 04 fe  	addi	a0, s0, -32
80400246: 23 30 a4 fc  	sd	a0, -64(s0)
8040024a: 05 45        	li	a0, 1
8040024c: 23 34 a4 fc  	sd	a0, -56(s0)
80400250: 13 05 04 fb  	addi	a0, s0, -80
80400254: 97 00 00 00  	auipc	ra, 0
80400258: e7 80 60 f6  	jalr	-154(ra)
8040025c: 93 08 d0 05  	li	a7, 93
80400260: 05 45        	li	a0, 1
80400262: 81 45        	li	a1, 0
80400264: 01 46        	li	a2, 0
80400266: 73 00 00 00  	ecall

000000008040026a <.Lpcrel_hi7>:
8040026a: 17 15 00 00  	auipc	a0, 1
8040026e: 13 05 65 cc  	addi	a0, a0, -826

0000000080400272 <.Lpcrel_hi8>:
80400272: 97 15 00 00  	auipc	a1, 1
80400276: 13 86 e5 cf  	addi	a2, a1, -770
8040027a: 93 05 80 02  	li	a1, 40
8040027e: 97 00 00 00  	auipc	ra, 0
80400282: e7 80 40 19  	jalr	404(ra)
80400286: 00 00        	unimp

0000000080400288 <_ZN6shared9clear_bss17h3921fd3b4223c191E>:
80400288: 41 11        	addi	sp, sp, -16
8040028a: 06 e4        	sd	ra, 8(sp)
8040028c: 22 e0        	sd	s0, 0(sp)
8040028e: 00 08        	addi	s0, sp, 16

0000000080400290 <.Lpcrel_hi0>:
80400290: 17 15 00 00  	auipc	a0, 1
80400294: 13 05 05 08  	addi	a0, a0, 128

0000000080400298 <.Lpcrel_hi1>:
80400298: 97 15 00 00  	auipc	a1, 1
8040029c: 13 86 85 07  	addi	a2, a1, 120
804002a0: 09 8e        	sub	a2, a2, a0
804002a2: 81 45        	li	a1, 0
804002a4: a2 60        	ld	ra, 8(sp)
804002a6: 02 64        	ld	s0, 0(sp)
804002a8: 41 01        	addi	sp, sp, 16
804002aa: 17 13 00 00  	auipc	t1, 1
804002ae: 67 00 23 b8  	jr	-1150(t1)

00000000804002b2 <_ZN4core3ops8function6FnOnce9call_once17h80a32bdec907993aE>:
804002b2: 08 61        	ld	a0, 0(a0)
804002b4: 01 a0        	j	0x804002b4 <_ZN4core3ops8function6FnOnce9call_once17h80a32bdec907993aE+0x2>

00000000804002b6 <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hb867f0fa93d1a15bE>:
804002b6: 82 80        	ret

00000000804002b8 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h6a65e370dcbd4818E>:
804002b8: 17 15 00 00  	auipc	a0, 1
804002bc: 03 35 85 ea  	ld	a0, -344(a0)

00000000804002c0 <.Lpcrel_hi277>:
804002c0: 97 15 00 00  	auipc	a1, 1
804002c4: 83 b5 85 ea  	ld	a1, -344(a1)
804002c8: 82 80        	ret

00000000804002ca <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h64c8bd24348e1a1bE>:
804002ca: 35 71        	addi	sp, sp, -160
804002cc: 06 ed        	sd	ra, 152(sp)
804002ce: 22 e9        	sd	s0, 144(sp)
804002d0: 26 e5        	sd	s1, 136(sp)
804002d2: 4a e1        	sd	s2, 128(sp)
804002d4: ce fc        	sd	s3, 120(sp)
804002d6: d2 f8        	sd	s4, 112(sp)
804002d8: d6 f4        	sd	s5, 104(sp)
804002da: 80 75        	ld	s0, 40(a1)
804002dc: 83 b9 05 02  	ld	s3, 32(a1)
804002e0: 03 3a 84 01  	ld	s4, 24(s0)
804002e4: aa 84        	mv	s1, a0

00000000804002e6 <.Lpcrel_hi422>:
804002e6: 17 15 00 00  	auipc	a0, 1
804002ea: 93 05 25 d0  	addi	a1, a0, -766
804002ee: 31 46        	li	a2, 12
804002f0: 4e 85        	mv	a0, s3
804002f2: 02 9a        	jalr	s4
804002f4: 05 49        	li	s2, 1
804002f6: 69 ed        	bnez	a0, 0x804003d0 <.Lpcrel_hi429+0x1c>
804002f8: 88 6c        	ld	a0, 24(s1)
804002fa: 93 05 05 01  	addi	a1, a0, 16
804002fe: 13 06 45 01  	addi	a2, a0, 20
80400302: 2a fc        	sd	a0, 56(sp)

0000000080400304 <.Lpcrel_hi423>:
80400304: 17 15 00 00  	auipc	a0, 1
80400308: 13 05 25 ab  	addi	a0, a0, -1358
8040030c: aa e0        	sd	a0, 64(sp)
8040030e: ae e4        	sd	a1, 72(sp)

0000000080400310 <.Lpcrel_hi424>:
80400310: 17 15 00 00  	auipc	a0, 1
80400314: 13 05 c5 a7  	addi	a0, a0, -1412
80400318: aa e8        	sd	a0, 80(sp)
8040031a: b2 ec        	sd	a2, 88(sp)
8040031c: aa f0        	sd	a0, 96(sp)

000000008040031e <.Lpcrel_hi425>:
8040031e: 17 15 00 00  	auipc	a0, 1
80400322: 13 05 a5 c9  	addi	a0, a0, -870
80400326: 2a e4        	sd	a0, 8(sp)
80400328: 0d 45        	li	a0, 3
8040032a: 2a e8        	sd	a0, 16(sp)
8040032c: 02 f4        	sd	zero, 40(sp)
8040032e: 2c 18        	addi	a1, sp, 56
80400330: 2e ec        	sd	a1, 24(sp)
80400332: 2a f0        	sd	a0, 32(sp)
80400334: 30 00        	addi	a2, sp, 8
80400336: 4e 85        	mv	a0, s3
80400338: a2 85        	mv	a1, s0
8040033a: 97 00 00 00  	auipc	ra, 0
8040033e: e7 80 00 15  	jalr	336(ra)
80400342: 59 e5        	bnez	a0, 0x804003d0 <.Lpcrel_hi429+0x1c>
80400344: 83 ba 04 01  	ld	s5, 16(s1)
80400348: 63 85 0a 04  	beqz	s5, 0x80400392 <.Lpcrel_hi426+0x46>

000000008040034c <.Lpcrel_hi426>:
8040034c: 17 15 00 00  	auipc	a0, 1
80400350: 93 05 85 ca  	addi	a1, a0, -856
80400354: 09 46        	li	a2, 2
80400356: 4e 85        	mv	a0, s3
80400358: 02 9a        	jalr	s4
8040035a: 3d e9        	bnez	a0, 0x804003d0 <.Lpcrel_hi429+0x1c>
8040035c: 03 b5 8a 02  	ld	a0, 40(s5)
80400360: aa f0        	sd	a0, 96(sp)
80400362: 03 b5 0a 02  	ld	a0, 32(s5)
80400366: aa ec        	sd	a0, 88(sp)
80400368: 03 b5 8a 01  	ld	a0, 24(s5)
8040036c: aa e8        	sd	a0, 80(sp)
8040036e: 03 b5 0a 01  	ld	a0, 16(s5)
80400372: aa e4        	sd	a0, 72(sp)
80400374: 03 b5 8a 00  	ld	a0, 8(s5)
80400378: aa e0        	sd	a0, 64(sp)
8040037a: 03 b5 0a 00  	ld	a0, 0(s5)
8040037e: 2a fc        	sd	a0, 56(sp)
80400380: 30 18        	addi	a2, sp, 56
80400382: 4e 85        	mv	a0, s3
80400384: a2 85        	mv	a1, s0
80400386: 97 00 00 00  	auipc	ra, 0
8040038a: e7 80 40 10  	jalr	260(ra)
8040038e: 21 c1        	beqz	a0, 0x804003ce <.Lpcrel_hi429+0x1a>
80400390: 81 a0        	j	0x804003d0 <.Lpcrel_hi429+0x1c>
80400392: 88 64        	ld	a0, 8(s1)
80400394: 80 60        	ld	s0, 0(s1)
80400396: 0c 6d        	ld	a1, 24(a0)
80400398: 22 85        	mv	a0, s0
8040039a: 82 95        	jalr	a1

000000008040039c <.Lpcrel_hi427>:
8040039c: 17 16 00 00  	auipc	a2, 1
804003a0: 03 36 46 de  	ld	a2, -540(a2)

00000000804003a4 <.Lpcrel_hi428>:
804003a4: 97 16 00 00  	auipc	a3, 1
804003a8: 83 b6 46 de  	ld	a3, -540(a3)
804003ac: b1 8d        	xor	a1, a1, a2
804003ae: 35 8d        	xor	a0, a0, a3
804003b0: 4d 8d        	or	a0, a0, a1
804003b2: 11 ed        	bnez	a0, 0x804003ce <.Lpcrel_hi429+0x1a>

00000000804003b4 <.Lpcrel_hi429>:
804003b4: 17 15 00 00  	auipc	a0, 1
804003b8: 93 05 05 c4  	addi	a1, a0, -960
804003bc: 09 46        	li	a2, 2
804003be: 4e 85        	mv	a0, s3
804003c0: 02 9a        	jalr	s4
804003c2: 19 e5        	bnez	a0, 0x804003d0 <.Lpcrel_hi429+0x1c>
804003c4: 0c 60        	ld	a1, 0(s0)
804003c6: 10 64        	ld	a2, 8(s0)
804003c8: 4e 85        	mv	a0, s3
804003ca: 02 9a        	jalr	s4
804003cc: 11 e1        	bnez	a0, 0x804003d0 <.Lpcrel_hi429+0x1c>
804003ce: 01 49        	li	s2, 0
804003d0: 4a 85        	mv	a0, s2
804003d2: ea 60        	ld	ra, 152(sp)
804003d4: 4a 64        	ld	s0, 144(sp)
804003d6: aa 64        	ld	s1, 136(sp)
804003d8: 0a 69        	ld	s2, 128(sp)
804003da: e6 79        	ld	s3, 120(sp)
804003dc: 46 7a        	ld	s4, 112(sp)
804003de: a6 7a        	ld	s5, 104(sp)
804003e0: 0d 61        	addi	sp, sp, 160
804003e2: 82 80        	ret

00000000804003e4 <_ZN4core9panicking9panic_fmt17hb3e9e202c232386cE>:
804003e4: 79 71        	addi	sp, sp, -48
804003e6: 06 f4        	sd	ra, 40(sp)

00000000804003e8 <.Lpcrel_hi430>:
804003e8: 17 16 00 00  	auipc	a2, 1
804003ec: 13 06 86 bc  	addi	a2, a2, -1080
804003f0: 32 e0        	sd	a2, 0(sp)

00000000804003f2 <.Lpcrel_hi431>:
804003f2: 17 16 00 00  	auipc	a2, 1
804003f6: 13 06 66 c0  	addi	a2, a2, -1018
804003fa: 32 e4        	sd	a2, 8(sp)
804003fc: 2a e8        	sd	a0, 16(sp)
804003fe: 2e ec        	sd	a1, 24(sp)
80400400: 05 45        	li	a0, 1
80400402: 23 10 a1 02  	sh	a0, 32(sp)
80400406: 0a 85        	mv	a0, sp
80400408: 97 00 00 00  	auipc	ra, 0
8040040c: e7 80 40 e0  	jalr	-508(ra)
80400410: 00 00        	unimp

0000000080400412 <_ZN4core9panicking5panic17h99ad5be2d41ca5d8E>:
80400412: 5d 71        	addi	sp, sp, -80
80400414: 86 e4        	sd	ra, 72(sp)
80400416: 2a fc        	sd	a0, 56(sp)
80400418: ae e0        	sd	a1, 64(sp)
8040041a: 28 18        	addi	a0, sp, 56
8040041c: 2a e4        	sd	a0, 8(sp)
8040041e: 05 45        	li	a0, 1
80400420: 2a e8        	sd	a0, 16(sp)
80400422: 02 f4        	sd	zero, 40(sp)

0000000080400424 <.Lpcrel_hi434>:
80400424: 17 15 00 00  	auipc	a0, 1
80400428: 13 05 c5 b8  	addi	a0, a0, -1140
8040042c: 2a ec        	sd	a0, 24(sp)
8040042e: 02 f0        	sd	zero, 32(sp)
80400430: 28 00        	addi	a0, sp, 8
80400432: b2 85        	mv	a1, a2
80400434: 97 00 00 00  	auipc	ra, 0
80400438: e7 80 00 fb  	jalr	-80(ra)
8040043c: 00 00        	unimp

000000008040043e <_ZN4core6result13unwrap_failed17h810d4fe1d038c170E>:
8040043e: 19 71        	addi	sp, sp, -128
80400440: 86 fc        	sd	ra, 120(sp)
80400442: 2a e4        	sd	a0, 8(sp)
80400444: 2e e8        	sd	a1, 16(sp)
80400446: 32 ec        	sd	a2, 24(sp)
80400448: 36 f0        	sd	a3, 32(sp)
8040044a: 28 00        	addi	a0, sp, 8
8040044c: aa ec        	sd	a0, 88(sp)

000000008040044e <.Lpcrel_hi466>:
8040044e: 17 15 00 00  	auipc	a0, 1
80400452: 13 05 85 96  	addi	a0, a0, -1688
80400456: aa f0        	sd	a0, 96(sp)
80400458: 28 08        	addi	a0, sp, 24
8040045a: aa f4        	sd	a0, 104(sp)

000000008040045c <.Lpcrel_hi467>:
8040045c: 17 15 00 00  	auipc	a0, 1
80400460: 13 05 25 95  	addi	a0, a0, -1710
80400464: aa f8        	sd	a0, 112(sp)

0000000080400466 <.Lpcrel_hi468>:
80400466: 17 15 00 00  	auipc	a0, 1
8040046a: 13 05 a5 bb  	addi	a0, a0, -1094
8040046e: 2a f4        	sd	a0, 40(sp)
80400470: 09 45        	li	a0, 2
80400472: 2a f8        	sd	a0, 48(sp)
80400474: 82 e4        	sd	zero, 72(sp)
80400476: ac 08        	addi	a1, sp, 88
80400478: 2e fc        	sd	a1, 56(sp)
8040047a: aa e0        	sd	a0, 64(sp)
8040047c: 28 10        	addi	a0, sp, 40
8040047e: ba 85        	mv	a1, a4
80400480: 97 00 00 00  	auipc	ra, 0
80400484: e7 80 40 f6  	jalr	-156(ra)
80400488: 00 00        	unimp

000000008040048a <_ZN4core3fmt5write17h83ac9060bc4e3f90E>:
8040048a: 75 71        	addi	sp, sp, -144
8040048c: 06 e5        	sd	ra, 136(sp)
8040048e: 22 e1        	sd	s0, 128(sp)
80400490: a6 fc        	sd	s1, 120(sp)
80400492: ca f8        	sd	s2, 112(sp)
80400494: ce f4        	sd	s3, 104(sp)
80400496: d2 f0        	sd	s4, 96(sp)
80400498: d6 ec        	sd	s5, 88(sp)
8040049a: da e8        	sd	s6, 80(sp)
8040049c: de e4        	sd	s7, 72(sp)
8040049e: b2 89        	mv	s3, a2
804004a0: 13 06 00 02  	li	a2, 32
804004a4: 32 fc        	sd	a2, 56(sp)
804004a6: 0d 46        	li	a2, 3
804004a8: 23 00 c1 04  	sb	a2, 64(sp)
804004ac: 83 b4 09 02  	ld	s1, 32(s3)
804004b0: 02 e4        	sd	zero, 8(sp)
804004b2: 02 ec        	sd	zero, 24(sp)
804004b4: 2a f4        	sd	a0, 40(sp)
804004b6: 2e f8        	sd	a1, 48(sp)
804004b8: e9 c0        	beqz	s1, 0x8040057a <.Lpcrel_hi629+0x96>
804004ba: 03 b5 89 02  	ld	a0, 40(s3)
804004be: 63 05 05 10  	beqz	a0, 0x804005c8 <.Lpcrel_hi629+0xe4>
804004c2: 03 b4 09 00  	ld	s0, 0(s3)
804004c6: 03 ba 09 01  	ld	s4, 16(s3)
804004ca: 93 05 f5 ff  	addi	a1, a0, -1
804004ce: 8e 05        	slli	a1, a1, 3
804004d0: 8d 81        	srli	a1, a1, 3
804004d2: 13 89 15 00  	addi	s2, a1, 1
804004d6: 21 04        	addi	s0, s0, 8
804004d8: 93 05 80 03  	li	a1, 56
804004dc: b3 0a b5 02  	mul	s5, a0, a1
804004e0: e1 04        	addi	s1, s1, 24
804004e2: 05 4b        	li	s6, 1

00000000804004e4 <.Lpcrel_hi629>:
804004e4: 17 05 00 00  	auipc	a0, 0
804004e8: 93 0b e5 dc  	addi	s7, a0, -562
804004ec: 10 60        	ld	a2, 0(s0)
804004ee: 01 ca        	beqz	a2, 0x804004fe <.Lpcrel_hi629+0x1a>
804004f0: c2 76        	ld	a3, 48(sp)
804004f2: 22 75        	ld	a0, 40(sp)
804004f4: 83 35 84 ff  	ld	a1, -8(s0)
804004f8: 94 6e        	ld	a3, 24(a3)
804004fa: 82 96        	jalr	a3
804004fc: 65 e9        	bnez	a0, 0x804005ec <.Lpcrel_hi629+0x108>
804004fe: 88 48        	lw	a0, 16(s1)
80400500: 2a dc        	sw	a0, 56(sp)
80400502: 03 c5 84 01  	lbu	a0, 24(s1)
80400506: 23 00 a1 04  	sb	a0, 64(sp)
8040050a: c8 48        	lw	a0, 20(s1)
8040050c: 2a de        	sw	a0, 60(sp)
8040050e: 83 b5 84 ff  	ld	a1, -8(s1)
80400512: 88 60        	ld	a0, 0(s1)
80400514: 81 cd        	beqz	a1, 0x8040052c <.Lpcrel_hi629+0x48>
80400516: 63 97 65 01  	bne	a1, s6, 0x80400524 <.Lpcrel_hi629+0x40>
8040051a: 12 05        	slli	a0, a0, 4
8040051c: 52 95        	add	a0, a0, s4
8040051e: 0c 65        	ld	a1, 8(a0)
80400520: 63 84 75 01  	beq	a1, s7, 0x80400528 <.Lpcrel_hi629+0x44>
80400524: 81 45        	li	a1, 0
80400526: 21 a0        	j	0x8040052e <.Lpcrel_hi629+0x4a>
80400528: 08 61        	ld	a0, 0(a0)
8040052a: 08 61        	ld	a0, 0(a0)
8040052c: 85 45        	li	a1, 1
8040052e: 2e e4        	sd	a1, 8(sp)
80400530: 2a e8        	sd	a0, 16(sp)
80400532: 83 b5 84 fe  	ld	a1, -24(s1)
80400536: 03 b5 04 ff  	ld	a0, -16(s1)
8040053a: 81 cd        	beqz	a1, 0x80400552 <.Lpcrel_hi629+0x6e>
8040053c: 63 97 65 01  	bne	a1, s6, 0x8040054a <.Lpcrel_hi629+0x66>
80400540: 12 05        	slli	a0, a0, 4
80400542: 52 95        	add	a0, a0, s4
80400544: 0c 65        	ld	a1, 8(a0)
80400546: 63 84 75 01  	beq	a1, s7, 0x8040054e <.Lpcrel_hi629+0x6a>
8040054a: 81 45        	li	a1, 0
8040054c: 21 a0        	j	0x80400554 <.Lpcrel_hi629+0x70>
8040054e: 08 61        	ld	a0, 0(a0)
80400550: 08 61        	ld	a0, 0(a0)
80400552: 85 45        	li	a1, 1
80400554: 2e ec        	sd	a1, 24(sp)
80400556: 2a f0        	sd	a0, 32(sp)
80400558: 88 64        	ld	a0, 8(s1)
8040055a: 12 05        	slli	a0, a0, 4
8040055c: b3 05 aa 00  	add	a1, s4, a0
80400560: 88 61        	ld	a0, 0(a1)
80400562: 90 65        	ld	a2, 8(a1)
80400564: 2c 00        	addi	a1, sp, 8
80400566: 02 96        	jalr	a2
80400568: 51 e1        	bnez	a0, 0x804005ec <.Lpcrel_hi629+0x108>
8040056a: 41 04        	addi	s0, s0, 16
8040056c: 93 8a 8a fc  	addi	s5, s5, -56
80400570: 93 84 84 03  	addi	s1, s1, 56
80400574: e3 9c 0a f6  	bnez	s5, 0x804004ec <.Lpcrel_hi629+0x8>
80400578: 99 a0        	j	0x804005be <.Lpcrel_hi629+0xda>
8040057a: 03 b5 89 01  	ld	a0, 24(s3)
8040057e: 29 c5        	beqz	a0, 0x804005c8 <.Lpcrel_hi629+0xe4>
80400580: 03 b4 09 01  	ld	s0, 16(s3)
80400584: 13 1a 45 00  	slli	s4, a0, 4
80400588: 22 9a        	add	s4, s4, s0
8040058a: 83 b4 09 00  	ld	s1, 0(s3)
8040058e: 7d 15        	addi	a0, a0, -1
80400590: 12 05        	slli	a0, a0, 4
80400592: 11 81        	srli	a0, a0, 4
80400594: 13 09 15 00  	addi	s2, a0, 1
80400598: a1 04        	addi	s1, s1, 8
8040059a: 90 60        	ld	a2, 0(s1)
8040059c: 01 ca        	beqz	a2, 0x804005ac <.Lpcrel_hi629+0xc8>
8040059e: c2 76        	ld	a3, 48(sp)
804005a0: 22 75        	ld	a0, 40(sp)
804005a2: 83 b5 84 ff  	ld	a1, -8(s1)
804005a6: 94 6e        	ld	a3, 24(a3)
804005a8: 82 96        	jalr	a3
804005aa: 29 e1        	bnez	a0, 0x804005ec <.Lpcrel_hi629+0x108>
804005ac: 08 60        	ld	a0, 0(s0)
804005ae: 10 64        	ld	a2, 8(s0)
804005b0: 2c 00        	addi	a1, sp, 8
804005b2: 02 96        	jalr	a2
804005b4: 05 ed        	bnez	a0, 0x804005ec <.Lpcrel_hi629+0x108>
804005b6: 41 04        	addi	s0, s0, 16
804005b8: c1 04        	addi	s1, s1, 16
804005ba: e3 10 44 ff  	bne	s0, s4, 0x8040059a <.Lpcrel_hi629+0xb6>
804005be: 03 b5 89 00  	ld	a0, 8(s3)
804005c2: 63 68 a9 00  	bltu	s2, a0, 0x804005d2 <.Lpcrel_hi629+0xee>
804005c6: 2d a0        	j	0x804005f0 <.Lpcrel_hi629+0x10c>
804005c8: 01 49        	li	s2, 0
804005ca: 03 b5 89 00  	ld	a0, 8(s3)
804005ce: 63 71 a0 02  	bgeu	zero, a0, 0x804005f0 <.Lpcrel_hi629+0x10c>
804005d2: 03 b5 09 00  	ld	a0, 0(s3)
804005d6: 12 09        	slli	s2, s2, 4
804005d8: 2a 99        	add	s2, s2, a0
804005da: c2 76        	ld	a3, 48(sp)
804005dc: 22 75        	ld	a0, 40(sp)
804005de: 83 35 09 00  	ld	a1, 0(s2)
804005e2: 03 36 89 00  	ld	a2, 8(s2)
804005e6: 94 6e        	ld	a3, 24(a3)
804005e8: 82 96        	jalr	a3
804005ea: 19 c1        	beqz	a0, 0x804005f0 <.Lpcrel_hi629+0x10c>
804005ec: 05 45        	li	a0, 1
804005ee: 11 a0        	j	0x804005f2 <.Lpcrel_hi629+0x10e>
804005f0: 01 45        	li	a0, 0
804005f2: aa 60        	ld	ra, 136(sp)
804005f4: 0a 64        	ld	s0, 128(sp)
804005f6: e6 74        	ld	s1, 120(sp)
804005f8: 46 79        	ld	s2, 112(sp)
804005fa: a6 79        	ld	s3, 104(sp)
804005fc: 06 7a        	ld	s4, 96(sp)
804005fe: e6 6a        	ld	s5, 88(sp)
80400600: 46 6b        	ld	s6, 80(sp)
80400602: a6 6b        	ld	s7, 72(sp)
80400604: 49 61        	addi	sp, sp, 144
80400606: 82 80        	ret

0000000080400608 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE>:
80400608: 59 71        	addi	sp, sp, -112
8040060a: 86 f4        	sd	ra, 104(sp)
8040060c: a2 f0        	sd	s0, 96(sp)
8040060e: a6 ec        	sd	s1, 88(sp)
80400610: ca e8        	sd	s2, 80(sp)
80400612: ce e4        	sd	s3, 72(sp)
80400614: d2 e0        	sd	s4, 64(sp)
80400616: 56 fc        	sd	s5, 56(sp)
80400618: 5a f8        	sd	s6, 48(sp)
8040061a: 5e f4        	sd	s7, 40(sp)
8040061c: 62 f0        	sd	s8, 32(sp)
8040061e: 66 ec        	sd	s9, 24(sp)
80400620: 6a e8        	sd	s10, 16(sp)
80400622: 6e e4        	sd	s11, 8(sp)
80400624: be 89        	mv	s3, a5
80400626: 3a 89        	mv	s2, a4
80400628: 36 8b        	mv	s6, a3
8040062a: 32 8a        	mv	s4, a2
8040062c: 2a 8c        	mv	s8, a0
8040062e: b9 c1        	beqz	a1, 0x80400674 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x6c>
80400630: 03 64 4c 03  	lwu	s0, 52(s8)
80400634: 93 7c 14 00  	andi	s9, s0, 1
80400638: b7 0a 11 00  	lui	s5, 272
8040063c: 63 84 0c 00  	beqz	s9, 0x80400644 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x3c>
80400640: 93 0a b0 02  	li	s5, 43
80400644: ce 9c        	add	s9, s9, s3
80400646: 13 75 44 00  	andi	a0, s0, 4
8040064a: 15 cd        	beqz	a0, 0x80400686 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x7e>
8040064c: 13 05 00 02  	li	a0, 32
80400650: 63 70 ab 04  	bgeu	s6, a0, 0x80400690 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x88>
80400654: 01 45        	li	a0, 0
80400656: 63 03 0b 04  	beqz	s6, 0x8040069c <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x94>
8040065a: d2 85        	mv	a1, s4
8040065c: 5a 86        	mv	a2, s6
8040065e: 83 86 05 00  	lb	a3, 0(a1)
80400662: 93 a6 06 fc  	slti	a3, a3, -64
80400666: 93 c6 16 00  	xori	a3, a3, 1
8040066a: 36 95        	add	a0, a0, a3
8040066c: 7d 16        	addi	a2, a2, -1
8040066e: 85 05        	addi	a1, a1, 1
80400670: 7d f6        	bnez	a2, 0x8040065e <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x56>
80400672: 2d a0        	j	0x8040069c <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x94>
80400674: 03 24 4c 03  	lw	s0, 52(s8)
80400678: 93 8c 19 00  	addi	s9, s3, 1
8040067c: 93 0a d0 02  	li	s5, 45
80400680: 13 75 44 00  	andi	a0, s0, 4
80400684: 61 f5        	bnez	a0, 0x8040064c <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x44>
80400686: 01 4a        	li	s4, 0
80400688: 03 35 0c 00  	ld	a0, 0(s8)
8040068c: 01 ed        	bnez	a0, 0x804006a4 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x9c>
8040068e: 15 a8        	j	0x804006c2 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xba>
80400690: 52 85        	mv	a0, s4
80400692: da 85        	mv	a1, s6
80400694: 97 00 00 00  	auipc	ra, 0
80400698: e7 80 40 40  	jalr	1028(ra)
8040069c: aa 9c        	add	s9, s9, a0
8040069e: 03 35 0c 00  	ld	a0, 0(s8)
804006a2: 05 c1        	beqz	a0, 0x804006c2 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xba>
804006a4: 03 3d 8c 00  	ld	s10, 8(s8)
804006a8: 63 fd ac 01  	bgeu	s9, s10, 0x804006c2 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xba>
804006ac: 21 88        	andi	s0, s0, 8
804006ae: 25 ec        	bnez	s0, 0x80400726 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x11e>
804006b0: 03 45 8c 03  	lbu	a0, 56(s8)
804006b4: 85 45        	li	a1, 1
804006b6: b3 0c 9d 41  	sub	s9, s10, s9
804006ba: 63 cd a5 0a  	blt	a1, a0, 0x80400774 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x16c>
804006be: 61 e5        	bnez	a0, 0x80400786 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x17e>
804006c0: e9 a0        	j	0x8040078a <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x182>
804006c2: 03 34 0c 02  	ld	s0, 32(s8)
804006c6: 83 34 8c 02  	ld	s1, 40(s8)
804006ca: 22 85        	mv	a0, s0
804006cc: a6 85        	mv	a1, s1
804006ce: 56 86        	mv	a2, s5
804006d0: d2 86        	mv	a3, s4
804006d2: 5a 87        	mv	a4, s6
804006d4: 97 00 00 00  	auipc	ra, 0
804006d8: e7 80 00 14  	jalr	320(ra)
804006dc: 85 4b        	li	s7, 1
804006de: 0d c1        	beqz	a0, 0x80400700 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xf8>
804006e0: 5e 85        	mv	a0, s7
804006e2: a6 70        	ld	ra, 104(sp)
804006e4: 06 74        	ld	s0, 96(sp)
804006e6: e6 64        	ld	s1, 88(sp)
804006e8: 46 69        	ld	s2, 80(sp)
804006ea: a6 69        	ld	s3, 72(sp)
804006ec: 06 6a        	ld	s4, 64(sp)
804006ee: e2 7a        	ld	s5, 56(sp)
804006f0: 42 7b        	ld	s6, 48(sp)
804006f2: a2 7b        	ld	s7, 40(sp)
804006f4: 02 7c        	ld	s8, 32(sp)
804006f6: e2 6c        	ld	s9, 24(sp)
804006f8: 42 6d        	ld	s10, 16(sp)
804006fa: a2 6d        	ld	s11, 8(sp)
804006fc: 65 61        	addi	sp, sp, 112
804006fe: 82 80        	ret
80400700: 9c 6c        	ld	a5, 24(s1)
80400702: 22 85        	mv	a0, s0
80400704: ca 85        	mv	a1, s2
80400706: 4e 86        	mv	a2, s3
80400708: a6 70        	ld	ra, 104(sp)
8040070a: 06 74        	ld	s0, 96(sp)
8040070c: e6 64        	ld	s1, 88(sp)
8040070e: 46 69        	ld	s2, 80(sp)
80400710: a6 69        	ld	s3, 72(sp)
80400712: 06 6a        	ld	s4, 64(sp)
80400714: e2 7a        	ld	s5, 56(sp)
80400716: 42 7b        	ld	s6, 48(sp)
80400718: a2 7b        	ld	s7, 40(sp)
8040071a: 02 7c        	ld	s8, 32(sp)
8040071c: e2 6c        	ld	s9, 24(sp)
8040071e: 42 6d        	ld	s10, 16(sp)
80400720: a2 6d        	ld	s11, 8(sp)
80400722: 65 61        	addi	sp, sp, 112
80400724: 82 87        	jr	a5
80400726: 03 24 0c 03  	lw	s0, 48(s8)
8040072a: 13 05 00 03  	li	a0, 48
8040072e: 83 45 8c 03  	lbu	a1, 56(s8)
80400732: 2e e0        	sd	a1, 0(sp)
80400734: 83 3d 0c 02  	ld	s11, 32(s8)
80400738: 83 34 8c 02  	ld	s1, 40(s8)
8040073c: 23 28 ac 02  	sw	a0, 48(s8)
80400740: 85 4b        	li	s7, 1
80400742: 23 0c 7c 03  	sb	s7, 56(s8)
80400746: 6e 85        	mv	a0, s11
80400748: a6 85        	mv	a1, s1
8040074a: 56 86        	mv	a2, s5
8040074c: d2 86        	mv	a3, s4
8040074e: 5a 87        	mv	a4, s6
80400750: 97 00 00 00  	auipc	ra, 0
80400754: e7 80 40 0c  	jalr	196(ra)
80400758: 41 f5        	bnez	a0, 0x804006e0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xd8>
8040075a: 22 8a        	mv	s4, s0
8040075c: 33 04 9d 41  	sub	s0, s10, s9
80400760: 05 04        	addi	s0, s0, 1
80400762: 7d 14        	addi	s0, s0, -1
80400764: 51 c4        	beqz	s0, 0x804007f0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x1e8>
80400766: 90 70        	ld	a2, 32(s1)
80400768: 93 05 00 03  	li	a1, 48
8040076c: 6e 85        	mv	a0, s11
8040076e: 02 96        	jalr	a2
80400770: 6d d9        	beqz	a0, 0x80400762 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x15a>
80400772: bd b7        	j	0x804006e0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xd8>
80400774: 89 45        	li	a1, 2
80400776: 63 18 b5 00  	bne	a0, a1, 0x80400786 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x17e>
8040077a: 13 d5 1c 00  	srli	a0, s9, 1
8040077e: 85 0c        	addi	s9, s9, 1
80400780: 93 dc 1c 00  	srli	s9, s9, 1
80400784: 19 a0        	j	0x8040078a <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x182>
80400786: 66 85        	mv	a0, s9
80400788: 81 4c        	li	s9, 0
8040078a: 03 3d 0c 02  	ld	s10, 32(s8)
8040078e: 83 34 8c 02  	ld	s1, 40(s8)
80400792: 03 2c 0c 03  	lw	s8, 48(s8)
80400796: 13 04 15 00  	addi	s0, a0, 1
8040079a: 7d 14        	addi	s0, s0, -1
8040079c: 01 c8        	beqz	s0, 0x804007ac <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x1a4>
8040079e: 90 70        	ld	a2, 32(s1)
804007a0: 6a 85        	mv	a0, s10
804007a2: e2 85        	mv	a1, s8
804007a4: 02 96        	jalr	a2
804007a6: 75 d9        	beqz	a0, 0x8040079a <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x192>
804007a8: 85 4b        	li	s7, 1
804007aa: 1d bf        	j	0x804006e0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xd8>
804007ac: 6a 85        	mv	a0, s10
804007ae: a6 85        	mv	a1, s1
804007b0: 56 86        	mv	a2, s5
804007b2: d2 86        	mv	a3, s4
804007b4: 5a 87        	mv	a4, s6
804007b6: 97 00 00 00  	auipc	ra, 0
804007ba: e7 80 e0 05  	jalr	94(ra)
804007be: 85 4b        	li	s7, 1
804007c0: 05 f1        	bnez	a0, 0x804006e0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xd8>
804007c2: 94 6c        	ld	a3, 24(s1)
804007c4: 6a 85        	mv	a0, s10
804007c6: ca 85        	mv	a1, s2
804007c8: 4e 86        	mv	a2, s3
804007ca: 82 96        	jalr	a3
804007cc: 11 f9        	bnez	a0, 0x804006e0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xd8>
804007ce: 33 09 90 41  	neg	s2, s9
804007d2: fd 59        	li	s3, -1
804007d4: 7d 54        	li	s0, -1
804007d6: 33 05 89 00  	add	a0, s2, s0
804007da: 63 09 35 03  	beq	a0, s3, 0x8040080c <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x204>
804007de: 90 70        	ld	a2, 32(s1)
804007e0: 6a 85        	mv	a0, s10
804007e2: e2 85        	mv	a1, s8
804007e4: 02 96        	jalr	a2
804007e6: 05 04        	addi	s0, s0, 1
804007e8: 7d d5        	beqz	a0, 0x804007d6 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0x1ce>
804007ea: b3 3b 94 01  	sltu	s7, s0, s9
804007ee: cd bd        	j	0x804006e0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xd8>
804007f0: 94 6c        	ld	a3, 24(s1)
804007f2: 6e 85        	mv	a0, s11
804007f4: ca 85        	mv	a1, s2
804007f6: 4e 86        	mv	a2, s3
804007f8: 82 96        	jalr	a3
804007fa: e3 13 05 ee  	bnez	a0, 0x804006e0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xd8>
804007fe: 81 4b        	li	s7, 0
80400800: 23 28 4c 03  	sw	s4, 48(s8)
80400804: 02 65        	ld	a0, 0(sp)
80400806: 23 0c ac 02  	sb	a0, 56(s8)
8040080a: d9 bd        	j	0x804006e0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xd8>
8040080c: 66 84        	mv	s0, s9
8040080e: b3 bb 9c 01  	sltu	s7, s9, s9
80400812: f9 b5        	j	0x804006e0 <_ZN4core3fmt9Formatter12pad_integral17hcb0ba449d9846e3eE+0xd8>

0000000080400814 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hab96c3a0fc9e7f81E>:
80400814: 79 71        	addi	sp, sp, -48
80400816: 06 f4        	sd	ra, 40(sp)
80400818: 22 f0        	sd	s0, 32(sp)
8040081a: 26 ec        	sd	s1, 24(sp)
8040081c: 4a e8        	sd	s2, 16(sp)
8040081e: 4e e4        	sd	s3, 8(sp)
80400820: 9b 07 06 00  	sext.w	a5, a2
80400824: 37 08 11 00  	lui	a6, 272
80400828: 3a 89        	mv	s2, a4
8040082a: b6 84        	mv	s1, a3
8040082c: 2e 84        	mv	s0, a1
8040082e: aa 89        	mv	s3, a0
80400830: 63 89 07 01  	beq	a5, a6, 0x80400842 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hab96c3a0fc9e7f81E+0x2e>
80400834: 14 70        	ld	a3, 32(s0)
80400836: 4e 85        	mv	a0, s3
80400838: b2 85        	mv	a1, a2
8040083a: 82 96        	jalr	a3
8040083c: aa 85        	mv	a1, a0
8040083e: 05 45        	li	a0, 1
80400840: 91 ed        	bnez	a1, 0x8040085c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hab96c3a0fc9e7f81E+0x48>
80400842: 81 cc        	beqz	s1, 0x8040085a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17hab96c3a0fc9e7f81E+0x46>
80400844: 1c 6c        	ld	a5, 24(s0)
80400846: 4e 85        	mv	a0, s3
80400848: a6 85        	mv	a1, s1
8040084a: 4a 86        	mv	a2, s2
8040084c: a2 70        	ld	ra, 40(sp)
8040084e: 02 74        	ld	s0, 32(sp)
80400850: e2 64        	ld	s1, 24(sp)
80400852: 42 69        	ld	s2, 16(sp)
80400854: a2 69        	ld	s3, 8(sp)
80400856: 45 61        	addi	sp, sp, 48
80400858: 82 87        	jr	a5
8040085a: 01 45        	li	a0, 0
8040085c: a2 70        	ld	ra, 40(sp)
8040085e: 02 74        	ld	s0, 32(sp)
80400860: e2 64        	ld	s1, 24(sp)
80400862: 42 69        	ld	s2, 16(sp)
80400864: a2 69        	ld	s3, 8(sp)
80400866: 45 61        	addi	sp, sp, 48
80400868: 82 80        	ret

000000008040086a <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E>:
8040086a: 39 71        	addi	sp, sp, -64
8040086c: 06 fc        	sd	ra, 56(sp)
8040086e: 22 f8        	sd	s0, 48(sp)
80400870: 26 f4        	sd	s1, 40(sp)
80400872: 4a f0        	sd	s2, 32(sp)
80400874: 4e ec        	sd	s3, 24(sp)
80400876: 52 e8        	sd	s4, 16(sp)
80400878: 56 e4        	sd	s5, 8(sp)
8040087a: 5a e0        	sd	s6, 0(sp)
8040087c: 2a 8b        	mv	s6, a0
8040087e: 83 32 05 00  	ld	t0, 0(a0)
80400882: 08 69        	ld	a0, 16(a0)
80400884: b3 e6 a2 00  	or	a3, t0, a0
80400888: b2 89        	mv	s3, a2
8040088a: 2e 89        	mv	s2, a1
8040088c: 63 88 06 16  	beqz	a3, 0x804009fc <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x192>
80400890: 63 09 05 10  	beqz	a0, 0x804009a2 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x138>
80400894: 03 37 8b 01  	ld	a4, 24(s6)
80400898: 01 45        	li	a0, 0
8040089a: b3 06 39 01  	add	a3, s2, s3
8040089e: 05 07        	addi	a4, a4, 1
804008a0: 37 03 11 00  	lui	t1, 272
804008a4: 93 08 f0 0d  	li	a7, 223
804008a8: 13 08 00 0f  	li	a6, 240
804008ac: 4a 86        	mv	a2, s2
804008ae: 01 a8        	j	0x804008be <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x54>
804008b0: 93 05 16 00  	addi	a1, a2, 1
804008b4: 11 8d        	sub	a0, a0, a2
804008b6: 2e 95        	add	a0, a0, a1
804008b8: 2e 86        	mv	a2, a1
804008ba: 63 04 64 0e  	beq	s0, t1, 0x804009a2 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x138>
804008be: 7d 17        	addi	a4, a4, -1
804008c0: 25 c7        	beqz	a4, 0x80400928 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0xbe>
804008c2: 63 00 d6 0e  	beq	a2, a3, 0x804009a2 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x138>
804008c6: 83 05 06 00  	lb	a1, 0(a2)
804008ca: 13 f4 f5 0f  	andi	s0, a1, 255
804008ce: e3 d1 05 fe  	bgez	a1, 0x804008b0 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x46>
804008d2: 83 45 16 00  	lbu	a1, 1(a2)
804008d6: 93 74 f4 01  	andi	s1, s0, 31
804008da: 93 f7 f5 03  	andi	a5, a1, 63
804008de: 63 f9 88 02  	bgeu	a7, s0, 0x80400910 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0xa6>
804008e2: 83 45 26 00  	lbu	a1, 2(a2)
804008e6: 9a 07        	slli	a5, a5, 6
804008e8: 93 f5 f5 03  	andi	a1, a1, 63
804008ec: cd 8f        	or	a5, a5, a1
804008ee: 63 67 04 03  	bltu	s0, a6, 0x8040091c <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0xb2>
804008f2: 83 45 36 00  	lbu	a1, 3(a2)
804008f6: f6 14        	slli	s1, s1, 61
804008f8: ad 90        	srli	s1, s1, 43
804008fa: 9a 07        	slli	a5, a5, 6
804008fc: 93 f5 f5 03  	andi	a1, a1, 63
80400900: dd 8d        	or	a1, a1, a5
80400902: 33 e4 95 00  	or	s0, a1, s1
80400906: 63 0e 64 08  	beq	s0, t1, 0x804009a2 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x138>
8040090a: 93 05 46 00  	addi	a1, a2, 4
8040090e: 5d b7        	j	0x804008b4 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x4a>
80400910: 93 05 26 00  	addi	a1, a2, 2
80400914: 13 94 64 00  	slli	s0, s1, 6
80400918: 5d 8c        	or	s0, s0, a5
8040091a: 69 bf        	j	0x804008b4 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x4a>
8040091c: 93 05 36 00  	addi	a1, a2, 3
80400920: 13 94 c4 00  	slli	s0, s1, 12
80400924: 5d 8c        	or	s0, s0, a5
80400926: 79 b7        	j	0x804008b4 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x4a>
80400928: 63 0d d6 06  	beq	a2, a3, 0x804009a2 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x138>
8040092c: 83 05 06 00  	lb	a1, 0(a2)
80400930: 63 d3 05 04  	bgez	a1, 0x80400976 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x10c>
80400934: 93 f5 f5 0f  	andi	a1, a1, 255
80400938: 93 06 00 0e  	li	a3, 224
8040093c: 63 ed d5 02  	bltu	a1, a3, 0x80400976 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x10c>
80400940: 93 06 00 0f  	li	a3, 240
80400944: 63 e9 d5 02  	bltu	a1, a3, 0x80400976 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x10c>
80400948: 83 46 16 00  	lbu	a3, 1(a2)
8040094c: 03 47 26 00  	lbu	a4, 2(a2)
80400950: 93 f6 f6 03  	andi	a3, a3, 63
80400954: 13 77 f7 03  	andi	a4, a4, 63
80400958: 03 46 36 00  	lbu	a2, 3(a2)
8040095c: f6 15        	slli	a1, a1, 61
8040095e: ad 91        	srli	a1, a1, 43
80400960: b2 06        	slli	a3, a3, 12
80400962: 1a 07        	slli	a4, a4, 6
80400964: d9 8e        	or	a3, a3, a4
80400966: 13 76 f6 03  	andi	a2, a2, 63
8040096a: 55 8e        	or	a2, a2, a3
8040096c: d1 8d        	or	a1, a1, a2
8040096e: 37 06 11 00  	lui	a2, 272
80400972: 63 88 c5 02  	beq	a1, a2, 0x804009a2 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x138>
80400976: 0d c1        	beqz	a0, 0x80400998 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x12e>
80400978: 63 7e 35 01  	bgeu	a0, s3, 0x80400994 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x12a>
8040097c: b3 05 a9 00  	add	a1, s2, a0
80400980: 83 85 05 00  	lb	a1, 0(a1)
80400984: 13 06 00 fc  	li	a2, -64
80400988: 63 d8 c5 00  	bge	a1, a2, 0x80400998 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x12e>
8040098c: 81 45        	li	a1, 0
8040098e: 63 18 00 00  	bnez	zero, 0x8040099e <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x134>
80400992: 01 a8        	j	0x804009a2 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x138>
80400994: e3 1c 35 ff  	bne	a0, s3, 0x8040098c <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x122>
80400998: ca 85        	mv	a1, s2
8040099a: 63 04 09 00  	beqz	s2, 0x804009a2 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x138>
8040099e: aa 89        	mv	s3, a0
804009a0: 2e 89        	mv	s2, a1
804009a2: 63 8d 02 04  	beqz	t0, 0x804009fc <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x192>
804009a6: 03 34 8b 00  	ld	s0, 8(s6)
804009aa: 13 05 00 02  	li	a0, 32
804009ae: 63 ff a9 02  	bgeu	s3, a0, 0x804009ec <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x182>
804009b2: 01 45        	li	a0, 0
804009b4: 63 8e 09 00  	beqz	s3, 0x804009d0 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x166>
804009b8: ca 85        	mv	a1, s2
804009ba: 4e 86        	mv	a2, s3
804009bc: 83 86 05 00  	lb	a3, 0(a1)
804009c0: 93 a6 06 fc  	slti	a3, a3, -64
804009c4: 93 c6 16 00  	xori	a3, a3, 1
804009c8: 36 95        	add	a0, a0, a3
804009ca: 7d 16        	addi	a2, a2, -1
804009cc: 85 05        	addi	a1, a1, 1
804009ce: 7d f6        	bnez	a2, 0x804009bc <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x152>
804009d0: 63 76 85 02  	bgeu	a0, s0, 0x804009fc <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x192>
804009d4: 03 46 8b 03  	lbu	a2, 56(s6)
804009d8: 81 45        	li	a1, 0
804009da: 85 46        	li	a3, 1
804009dc: 33 0a a4 40  	sub	s4, s0, a0
804009e0: 63 cf c6 02  	blt	a3, a2, 0x80400a1e <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x1b4>
804009e4: 29 c6        	beqz	a2, 0x80400a2e <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x1c4>
804009e6: d2 85        	mv	a1, s4
804009e8: 01 4a        	li	s4, 0
804009ea: 91 a0        	j	0x80400a2e <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x1c4>
804009ec: 4a 85        	mv	a0, s2
804009ee: ce 85        	mv	a1, s3
804009f0: 97 00 00 00  	auipc	ra, 0
804009f4: e7 80 80 0a  	jalr	168(ra)
804009f8: e3 6e 85 fc  	bltu	a0, s0, 0x804009d4 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x16a>
804009fc: 83 35 8b 02  	ld	a1, 40(s6)
80400a00: 03 35 0b 02  	ld	a0, 32(s6)
80400a04: 9c 6d        	ld	a5, 24(a1)
80400a06: ca 85        	mv	a1, s2
80400a08: 4e 86        	mv	a2, s3
80400a0a: e2 70        	ld	ra, 56(sp)
80400a0c: 42 74        	ld	s0, 48(sp)
80400a0e: a2 74        	ld	s1, 40(sp)
80400a10: 02 79        	ld	s2, 32(sp)
80400a12: e2 69        	ld	s3, 24(sp)
80400a14: 42 6a        	ld	s4, 16(sp)
80400a16: a2 6a        	ld	s5, 8(sp)
80400a18: 02 6b        	ld	s6, 0(sp)
80400a1a: 21 61        	addi	sp, sp, 64
80400a1c: 82 87        	jr	a5
80400a1e: 09 45        	li	a0, 2
80400a20: 63 17 a6 00  	bne	a2, a0, 0x80400a2e <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x1c4>
80400a24: 93 55 1a 00  	srli	a1, s4, 1
80400a28: 05 0a        	addi	s4, s4, 1
80400a2a: 13 5a 1a 00  	srli	s4, s4, 1
80400a2e: 83 3a 0b 02  	ld	s5, 32(s6)
80400a32: 03 34 8b 02  	ld	s0, 40(s6)
80400a36: 03 2b 0b 03  	lw	s6, 48(s6)
80400a3a: 93 84 15 00  	addi	s1, a1, 1
80400a3e: fd 14        	addi	s1, s1, -1
80400a40: 81 c8        	beqz	s1, 0x80400a50 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x1e6>
80400a42: 10 70        	ld	a2, 32(s0)
80400a44: 56 85        	mv	a0, s5
80400a46: da 85        	mv	a1, s6
80400a48: 02 96        	jalr	a2
80400a4a: 75 d9        	beqz	a0, 0x80400a3e <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x1d4>
80400a4c: 05 45        	li	a0, 1
80400a4e: 1d a8        	j	0x80400a84 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x21a>
80400a50: 14 6c        	ld	a3, 24(s0)
80400a52: 56 85        	mv	a0, s5
80400a54: ca 85        	mv	a1, s2
80400a56: 4e 86        	mv	a2, s3
80400a58: 82 96        	jalr	a3
80400a5a: aa 85        	mv	a1, a0
80400a5c: 05 45        	li	a0, 1
80400a5e: 9d e1        	bnez	a1, 0x80400a84 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x21a>
80400a60: 33 09 40 41  	neg	s2, s4
80400a64: fd 59        	li	s3, -1
80400a66: fd 54        	li	s1, -1
80400a68: 33 05 99 00  	add	a0, s2, s1
80400a6c: 63 09 35 01  	beq	a0, s3, 0x80400a7e <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x214>
80400a70: 10 70        	ld	a2, 32(s0)
80400a72: 56 85        	mv	a0, s5
80400a74: da 85        	mv	a1, s6
80400a76: 02 96        	jalr	a2
80400a78: 85 04        	addi	s1, s1, 1
80400a7a: 7d d5        	beqz	a0, 0x80400a68 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x1fe>
80400a7c: 11 a0        	j	0x80400a80 <_ZN4core3fmt9Formatter3pad17h921e2fd878f03bc2E+0x216>
80400a7e: d2 84        	mv	s1, s4
80400a80: 33 b5 44 01  	sltu	a0, s1, s4
80400a84: e2 70        	ld	ra, 56(sp)
80400a86: 42 74        	ld	s0, 48(sp)
80400a88: a2 74        	ld	s1, 40(sp)
80400a8a: 02 79        	ld	s2, 32(sp)
80400a8c: e2 69        	ld	s3, 24(sp)
80400a8e: 42 6a        	ld	s4, 16(sp)
80400a90: a2 6a        	ld	s5, 8(sp)
80400a92: 02 6b        	ld	s6, 0(sp)
80400a94: 21 61        	addi	sp, sp, 64
80400a96: 82 80        	ret

0000000080400a98 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E>:
80400a98: 2a 86        	mv	a2, a0
80400a9a: 93 07 75 00  	addi	a5, a0, 7
80400a9e: e1 9b        	andi	a5, a5, -8
80400aa0: b3 88 a7 40  	sub	a7, a5, a0
80400aa4: 63 ef 15 11  	bltu	a1, a7, 0x80400bc2 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x12a>
80400aa8: 33 88 15 41  	sub	a6, a1, a7
80400aac: 93 52 38 00  	srli	t0, a6, 3
80400ab0: 63 89 02 10  	beqz	t0, 0x80400bc2 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x12a>
80400ab4: 93 75 78 00  	andi	a1, a6, 7
80400ab8: 01 45        	li	a0, 0
80400aba: 63 8f c7 00  	beq	a5, a2, 0x80400ad8 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x40>
80400abe: b3 07 f6 40  	sub	a5, a2, a5
80400ac2: b2 86        	mv	a3, a2
80400ac4: 03 87 06 00  	lb	a4, 0(a3)
80400ac8: 13 27 07 fc  	slti	a4, a4, -64
80400acc: 13 47 17 00  	xori	a4, a4, 1
80400ad0: 3a 95        	add	a0, a0, a4
80400ad2: 85 07        	addi	a5, a5, 1
80400ad4: 85 06        	addi	a3, a3, 1
80400ad6: fd f7        	bnez	a5, 0x80400ac4 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x2c>
80400ad8: 33 07 16 01  	add	a4, a2, a7
80400adc: 01 46        	li	a2, 0
80400ade: 91 cd        	beqz	a1, 0x80400afa <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x62>
80400ae0: 93 76 88 ff  	andi	a3, a6, -8
80400ae4: ba 96        	add	a3, a3, a4
80400ae6: 83 87 06 00  	lb	a5, 0(a3)
80400aea: 93 a7 07 fc  	slti	a5, a5, -64
80400aee: 93 c7 17 00  	xori	a5, a5, 1
80400af2: 3e 96        	add	a2, a2, a5
80400af4: fd 15        	addi	a1, a1, -1
80400af6: 85 06        	addi	a3, a3, 1
80400af8: fd f5        	bnez	a1, 0x80400ae6 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x4e>
80400afa: b7 05 01 01  	lui	a1, 4112
80400afe: 9b 85 15 10  	addiw	a1, a1, 257
80400b02: 93 96 05 02  	slli	a3, a1, 32
80400b06: b3 8e d5 00  	add	t4, a1, a3
80400b0a: b7 06 ff 00  	lui	a3, 4080
80400b0e: 9b 88 f6 0f  	addiw	a7, a3, 255
80400b12: 93 96 08 02  	slli	a3, a7, 32
80400b16: b6 98        	add	a7, a7, a3
80400b18: c1 66        	lui	a3, 16
80400b1a: 85 26        	addiw	a3, a3, 1
80400b1c: 13 98 06 02  	slli	a6, a3, 32
80400b20: 36 98        	add	a6, a6, a3
80400b22: 32 95        	add	a0, a0, a2
80400b24: 1d a0        	j	0x80400b4a <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0xb2>
80400b26: 13 97 33 00  	slli	a4, t2, 3
80400b2a: 1a 97        	add	a4, a4, t1
80400b2c: b3 02 7e 40  	sub	t0, t3, t2
80400b30: 93 f5 33 00  	andi	a1, t2, 3
80400b34: b3 76 16 01  	and	a3, a2, a7
80400b38: 21 82        	srli	a2, a2, 8
80400b3a: 33 76 16 01  	and	a2, a2, a7
80400b3e: 36 96        	add	a2, a2, a3
80400b40: 33 06 06 03  	mul	a2, a2, a6
80400b44: 41 92        	srli	a2, a2, 48
80400b46: 32 95        	add	a0, a0, a2
80400b48: d1 e9        	bnez	a1, 0x80400bdc <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x144>
80400b4a: 63 88 02 08  	beqz	t0, 0x80400bda <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x142>
80400b4e: 16 8e        	mv	t3, t0
80400b50: 3a 83        	mv	t1, a4
80400b52: 13 06 00 0c  	li	a2, 192
80400b56: 96 83        	mv	t2, t0
80400b58: 63 e4 c2 00  	bltu	t0, a2, 0x80400b60 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0xc8>
80400b5c: 93 03 00 0c  	li	t2, 192
80400b60: 01 46        	li	a2, 0
80400b62: 93 d6 23 00  	srli	a3, t2, 2
80400b66: e1 d2        	beqz	a3, 0x80400b26 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x8e>
80400b68: 96 06        	slli	a3, a3, 5
80400b6a: b3 02 d3 00  	add	t0, t1, a3
80400b6e: 9a 86        	mv	a3, t1
80400b70: 9c 62        	ld	a5, 0(a3)
80400b72: 13 c7 f7 ff  	not	a4, a5
80400b76: 1d 83        	srli	a4, a4, 7
80400b78: 99 83        	srli	a5, a5, 6
80400b7a: 8c 66        	ld	a1, 8(a3)
80400b7c: 5d 8f        	or	a4, a4, a5
80400b7e: 33 77 d7 01  	and	a4, a4, t4
80400b82: 3a 96        	add	a2, a2, a4
80400b84: 13 c7 f5 ff  	not	a4, a1
80400b88: 1d 83        	srli	a4, a4, 7
80400b8a: 9c 6a        	ld	a5, 16(a3)
80400b8c: 99 81        	srli	a1, a1, 6
80400b8e: d9 8d        	or	a1, a1, a4
80400b90: b3 f5 d5 01  	and	a1, a1, t4
80400b94: 13 c7 f7 ff  	not	a4, a5
80400b98: 1d 83        	srli	a4, a4, 7
80400b9a: 99 83        	srli	a5, a5, 6
80400b9c: 5d 8f        	or	a4, a4, a5
80400b9e: 9c 6e        	ld	a5, 24(a3)
80400ba0: 33 77 d7 01  	and	a4, a4, t4
80400ba4: ba 95        	add	a1, a1, a4
80400ba6: b2 95        	add	a1, a1, a2
80400ba8: 13 c6 f7 ff  	not	a2, a5
80400bac: 1d 82        	srli	a2, a2, 7
80400bae: 99 83        	srli	a5, a5, 6
80400bb0: 5d 8e        	or	a2, a2, a5
80400bb2: 33 76 d6 01  	and	a2, a2, t4
80400bb6: 93 86 06 02  	addi	a3, a3, 32
80400bba: 2e 96        	add	a2, a2, a1
80400bbc: e3 9a 56 fa  	bne	a3, t0, 0x80400b70 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0xd8>
80400bc0: 9d b7        	j	0x80400b26 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x8e>
80400bc2: 01 45        	li	a0, 0
80400bc4: 99 c9        	beqz	a1, 0x80400bda <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x142>
80400bc6: 83 06 06 00  	lb	a3, 0(a2)
80400bca: 93 a6 06 fc  	slti	a3, a3, -64
80400bce: 93 c6 16 00  	xori	a3, a3, 1
80400bd2: 36 95        	add	a0, a0, a3
80400bd4: fd 15        	addi	a1, a1, -1
80400bd6: 05 06        	addi	a2, a2, 1
80400bd8: fd f5        	bnez	a1, 0x80400bc6 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x12e>
80400bda: 82 80        	ret
80400bdc: 01 46        	li	a2, 0
80400bde: 93 f5 c3 0f  	andi	a1, t2, 252
80400be2: 8e 05        	slli	a1, a1, 3
80400be4: 2e 93        	add	t1, t1, a1
80400be6: 93 35 0e 0c  	sltiu	a1, t3, 192
80400bea: bb 05 b0 40  	negw	a1, a1
80400bee: b3 75 be 00  	and	a1, t3, a1
80400bf2: 8d 89        	andi	a1, a1, 3
80400bf4: 93 96 35 00  	slli	a3, a1, 3
80400bf8: 83 35 03 00  	ld	a1, 0(t1)
80400bfc: 21 03        	addi	t1, t1, 8
80400bfe: 13 c7 f5 ff  	not	a4, a1
80400c02: 1d 83        	srli	a4, a4, 7
80400c04: 99 81        	srli	a1, a1, 6
80400c06: d9 8d        	or	a1, a1, a4
80400c08: b3 f5 d5 01  	and	a1, a1, t4
80400c0c: e1 16        	addi	a3, a3, -8
80400c0e: 2e 96        	add	a2, a2, a1
80400c10: e5 f6        	bnez	a3, 0x80400bf8 <_ZN4core3str5count14do_count_chars17h56192c5879de8056E+0x160>
80400c12: b3 75 16 01  	and	a1, a2, a7
80400c16: 21 82        	srli	a2, a2, 8
80400c18: 33 76 16 01  	and	a2, a2, a7
80400c1c: b2 95        	add	a1, a1, a2
80400c1e: b3 85 05 03  	mul	a1, a1, a6
80400c22: c1 91        	srli	a1, a1, 48
80400c24: 2e 95        	add	a0, a0, a1
80400c26: 82 80        	ret

0000000080400c28 <_ZN4core3fmt3num3imp7fmt_u6417h6fbce2a3dba20ecdE>:
80400c28: 39 71        	addi	sp, sp, -64
80400c2a: 06 fc        	sd	ra, 56(sp)
80400c2c: 22 f8        	sd	s0, 48(sp)
80400c2e: 26 f4        	sd	s1, 40(sp)
80400c30: 32 88        	mv	a6, a2
80400c32: 93 56 45 00  	srli	a3, a0, 4
80400c36: 13 07 70 02  	li	a4, 39
80400c3a: 93 07 10 27  	li	a5, 625

0000000080400c3e <.Lpcrel_hi1364>:
80400c3e: 17 06 00 00  	auipc	a2, 0
80400c42: 13 0f 26 40  	addi	t5, a2, 1026
80400c46: 63 f3 f6 02  	bgeu	a3, a5, 0x80400c6c <.Lpcrel_hi1364+0x2e>
80400c4a: 93 06 30 06  	li	a3, 99
80400c4e: 63 ea a6 0a  	bltu	a3, a0, 0x80400d02 <.Lpcrel_hi1365+0x8c>
80400c52: 29 46        	li	a2, 10
80400c54: 63 78 c5 0e  	bgeu	a0, a2, 0x80400d44 <.Lpcrel_hi1365+0xce>
80400c58: 93 06 f7 ff  	addi	a3, a4, -1
80400c5c: 13 06 11 00  	addi	a2, sp, 1
80400c60: 36 96        	add	a2, a2, a3
80400c62: 1b 05 05 03  	addiw	a0, a0, 48
80400c66: 23 00 a6 00  	sb	a0, 0(a2)
80400c6a: e5 a8        	j	0x80400d62 <.Lpcrel_hi1365+0xec>
80400c6c: 01 47        	li	a4, 0
80400c6e: 93 08 41 02  	addi	a7, sp, 36
80400c72: 93 02 61 02  	addi	t0, sp, 38

0000000080400c76 <.Lpcrel_hi1365>:
80400c76: 97 06 00 00  	auipc	a3, 0
80400c7a: 03 b3 26 63  	ld	t1, 1586(a3)
80400c7e: 89 66        	lui	a3, 2
80400c80: 1b 8e 06 71  	addiw	t3, a3, 1808
80400c84: 85 66        	lui	a3, 1
80400c86: 9b 8e b6 47  	addiw	t4, a3, 1147
80400c8a: 93 03 40 06  	li	t2, 100
80400c8e: b7 e6 f5 05  	lui	a3, 24414
80400c92: 9b 8f f6 0f  	addiw	t6, a3, 255
80400c96: aa 86        	mv	a3, a0
80400c98: 33 35 65 02  	mulhu	a0, a0, t1
80400c9c: 2d 81        	srli	a0, a0, 11
80400c9e: 33 06 c5 03  	mul	a2, a0, t3
80400ca2: bb 87 c6 40  	subw	a5, a3, a2
80400ca6: 13 96 07 03  	slli	a2, a5, 48
80400caa: 49 92        	srli	a2, a2, 50
80400cac: 33 06 d6 03  	mul	a2, a2, t4
80400cb0: 13 54 16 01  	srli	s0, a2, 17
80400cb4: 41 82        	srli	a2, a2, 16
80400cb6: 13 76 e6 7f  	andi	a2, a2, 2046
80400cba: 33 04 74 02  	mul	s0, s0, t2
80400cbe: 81 9f        	subw	a5, a5, s0
80400cc0: c6 17        	slli	a5, a5, 49
80400cc2: 7a 96        	add	a2, a2, t5
80400cc4: 03 44 16 00  	lbu	s0, 1(a2)
80400cc8: c1 93        	srli	a5, a5, 48
80400cca: b3 84 e8 00  	add	s1, a7, a4
80400cce: 03 46 06 00  	lbu	a2, 0(a2)
80400cd2: a3 80 84 00  	sb	s0, 1(s1)
80400cd6: fa 97        	add	a5, a5, t5
80400cd8: 03 c4 17 00  	lbu	s0, 1(a5)
80400cdc: 83 c7 07 00  	lbu	a5, 0(a5)
80400ce0: 23 80 c4 00  	sb	a2, 0(s1)
80400ce4: 33 86 e2 00  	add	a2, t0, a4
80400ce8: a3 00 86 00  	sb	s0, 1(a2)
80400cec: 23 00 f6 00  	sb	a5, 0(a2)
80400cf0: 71 17        	addi	a4, a4, -4
80400cf2: e3 e2 df fa  	bltu	t6, a3, 0x80400c96 <.Lpcrel_hi1365+0x20>
80400cf6: 13 07 77 02  	addi	a4, a4, 39
80400cfa: 93 06 30 06  	li	a3, 99
80400cfe: e3 fa a6 f4  	bgeu	a3, a0, 0x80400c52 <.Lpcrel_hi1364+0x14>
80400d02: 13 16 05 03  	slli	a2, a0, 48
80400d06: 49 92        	srli	a2, a2, 50
80400d08: 85 66        	lui	a3, 1
80400d0a: 9b 86 b6 47  	addiw	a3, a3, 1147
80400d0e: 33 06 d6 02  	mul	a2, a2, a3
80400d12: 45 82        	srli	a2, a2, 17
80400d14: 93 06 40 06  	li	a3, 100
80400d18: b3 06 d6 02  	mul	a3, a2, a3
80400d1c: 15 9d        	subw	a0, a0, a3
80400d1e: 46 15        	slli	a0, a0, 49
80400d20: 41 91        	srli	a0, a0, 48
80400d22: 79 17        	addi	a4, a4, -2
80400d24: 7a 95        	add	a0, a0, t5
80400d26: 83 46 15 00  	lbu	a3, 1(a0)
80400d2a: 03 45 05 00  	lbu	a0, 0(a0)
80400d2e: 93 07 11 00  	addi	a5, sp, 1
80400d32: ba 97        	add	a5, a5, a4
80400d34: a3 80 d7 00  	sb	a3, 1(a5)
80400d38: 23 80 a7 00  	sb	a0, 0(a5)
80400d3c: 32 85        	mv	a0, a2
80400d3e: 29 46        	li	a2, 10
80400d40: e3 6c c5 f0  	bltu	a0, a2, 0x80400c58 <.Lpcrel_hi1364+0x1a>
80400d44: 06 05        	slli	a0, a0, 1
80400d46: 93 06 e7 ff  	addi	a3, a4, -2
80400d4a: 7a 95        	add	a0, a0, t5
80400d4c: 03 46 15 00  	lbu	a2, 1(a0)
80400d50: 03 45 05 00  	lbu	a0, 0(a0)
80400d54: 13 07 11 00  	addi	a4, sp, 1
80400d58: 36 97        	add	a4, a4, a3
80400d5a: a3 00 c7 00  	sb	a2, 1(a4)
80400d5e: 23 00 a7 00  	sb	a0, 0(a4)
80400d62: 13 07 11 00  	addi	a4, sp, 1
80400d66: 36 97        	add	a4, a4, a3
80400d68: 93 07 70 02  	li	a5, 39
80400d6c: 95 8f        	sub	a5, a5, a3

0000000080400d6e <.Lpcrel_hi1366>:
80400d6e: 17 05 00 00  	auipc	a0, 0
80400d72: 13 06 25 24  	addi	a2, a0, 578
80400d76: 42 85        	mv	a0, a6
80400d78: 81 46        	li	a3, 0
80400d7a: 97 00 00 00  	auipc	ra, 0
80400d7e: e7 80 e0 88  	jalr	-1906(ra)
80400d82: e2 70        	ld	ra, 56(sp)
80400d84: 42 74        	ld	s0, 48(sp)
80400d86: a2 74        	ld	s1, 40(sp)
80400d88: 21 61        	addi	sp, sp, 64
80400d8a: 82 80        	ret

0000000080400d8c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h3fd5ee9af42af6efE>:
80400d8c: 03 65 05 00  	lwu	a0, 0(a0)
80400d90: 2e 86        	mv	a2, a1
80400d92: 85 45        	li	a1, 1
80400d94: 17 03 00 00  	auipc	t1, 0
80400d98: 67 00 43 e9  	jr	-364(t1)

0000000080400d9c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb635efbf660b21eE>:
80400d9c: 90 75        	ld	a2, 40(a1)
80400d9e: 88 71        	ld	a0, 32(a1)
80400da0: 1c 6e        	ld	a5, 24(a2)

0000000080400da2 <.Lpcrel_hi1386>:
80400da2: 97 05 00 00  	auipc	a1, 0
80400da6: 93 85 65 36  	addi	a1, a1, 870
80400daa: 15 46        	li	a2, 5
80400dac: 82 87        	jr	a5

0000000080400dae <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7030722f7336d0aaE>:
80400dae: 10 65        	ld	a2, 8(a0)
80400db0: 08 61        	ld	a0, 0(a0)
80400db2: 1c 6e        	ld	a5, 24(a2)
80400db4: 82 87        	jr	a5

0000000080400db6 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf4ce27941b329d93E>:
80400db6: 14 61        	ld	a3, 0(a0)
80400db8: 10 65        	ld	a2, 8(a0)
80400dba: 2e 85        	mv	a0, a1
80400dbc: b6 85        	mv	a1, a3
80400dbe: 17 03 00 00  	auipc	t1, 0
80400dc2: 67 00 c3 aa  	jr	-1364(t1)

0000000080400dc6 <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE>:
80400dc6: c1 46        	li	a3, 16
80400dc8: 63 69 d6 04  	bltu	a2, a3, 0x80400e1a <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE+0x54>
80400dcc: bb 06 a0 40  	negw	a3, a0
80400dd0: 9d 8a        	andi	a3, a3, 7
80400dd2: 33 07 d5 00  	add	a4, a0, a3
80400dd6: 99 c6        	beqz	a3, 0x80400de4 <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE+0x1e>
80400dd8: aa 87        	mv	a5, a0
80400dda: 23 80 b7 00  	sb	a1, 0(a5)
80400dde: 85 07        	addi	a5, a5, 1
80400de0: e3 ed e7 fe  	bltu	a5, a4, 0x80400dda <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE+0x14>
80400de4: b3 08 d6 40  	sub	a7, a2, a3
80400de8: 93 f7 88 ff  	andi	a5, a7, -8
80400dec: b3 06 f7 00  	add	a3, a4, a5
80400df0: 63 51 f0 02  	blez	a5, 0x80400e12 <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE+0x4c>
80400df4: 13 f8 f5 0f  	andi	a6, a1, 255
80400df8: b7 07 01 01  	lui	a5, 4112
80400dfc: 1b 86 17 10  	addiw	a2, a5, 257
80400e00: 93 17 06 02  	slli	a5, a2, 32
80400e04: 3e 96        	add	a2, a2, a5
80400e06: b3 07 c8 02  	mul	a5, a6, a2
80400e0a: 1c e3        	sd	a5, 0(a4)
80400e0c: 21 07        	addi	a4, a4, 8
80400e0e: e3 6e d7 fe  	bltu	a4, a3, 0x80400e0a <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE+0x44>
80400e12: 13 f6 78 00  	andi	a2, a7, 7
80400e16: 01 e6        	bnez	a2, 0x80400e1e <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE+0x58>
80400e18: 09 a8        	j	0x80400e2a <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE+0x64>
80400e1a: aa 86        	mv	a3, a0
80400e1c: 19 c6        	beqz	a2, 0x80400e2a <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE+0x64>
80400e1e: 36 96        	add	a2, a2, a3
80400e20: 23 80 b6 00  	sb	a1, 0(a3)
80400e24: 85 06        	addi	a3, a3, 1
80400e26: e3 ed c6 fe  	bltu	a3, a2, 0x80400e20 <_ZN17compiler_builtins3mem6memset17h8d3c08e21f5c68ecE+0x5a>
80400e2a: 82 80        	ret

0000000080400e2c <memset>:
80400e2c: 17 03 00 00  	auipc	t1, 0
80400e30: 67 00 a3 f9  	jr	-102(t1)
