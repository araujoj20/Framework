
demo.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <__aeabi_uldivmod>:
 8000188:	b953      	cbnz	r3, 80001a0 <__aeabi_uldivmod+0x18>
 800018a:	b94a      	cbnz	r2, 80001a0 <__aeabi_uldivmod+0x18>
 800018c:	2900      	cmp	r1, #0
 800018e:	bf08      	it	eq
 8000190:	2800      	cmpeq	r0, #0
 8000192:	bf1c      	itt	ne
 8000194:	f04f 31ff 	movne.w	r1, #4294967295	@ 0xffffffff
 8000198:	f04f 30ff 	movne.w	r0, #4294967295	@ 0xffffffff
 800019c:	f000 b80c 	b.w	80001b8 <__aeabi_idiv0>
 80001a0:	f1ad 0c08 	sub.w	ip, sp, #8
 80001a4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 80001a8:	f004 f928 	bl	80043fc <__udivmoddi4>
 80001ac:	f8dd e004 	ldr.w	lr, [sp, #4]
 80001b0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80001b4:	b004      	add	sp, #16
 80001b6:	4770      	bx	lr

080001b8 <__aeabi_idiv0>:
 80001b8:	4770      	bx	lr
 80001ba:	bf00      	nop

080001bc <deregister_tm_clones>:
 80001bc:	4803      	ldr	r0, [pc, #12]	@ (80001cc <deregister_tm_clones+0x10>)
 80001be:	4b04      	ldr	r3, [pc, #16]	@ (80001d0 <deregister_tm_clones+0x14>)
 80001c0:	4283      	cmp	r3, r0
 80001c2:	d002      	beq.n	80001ca <deregister_tm_clones+0xe>
 80001c4:	4b03      	ldr	r3, [pc, #12]	@ (80001d4 <deregister_tm_clones+0x18>)
 80001c6:	b103      	cbz	r3, 80001ca <deregister_tm_clones+0xe>
 80001c8:	4718      	bx	r3
 80001ca:	4770      	bx	lr
 80001cc:	20000068 	.word	0x20000068
 80001d0:	20000068 	.word	0x20000068
 80001d4:	00000000 	.word	0x00000000

080001d8 <register_tm_clones>:
 80001d8:	4805      	ldr	r0, [pc, #20]	@ (80001f0 <register_tm_clones+0x18>)
 80001da:	4b06      	ldr	r3, [pc, #24]	@ (80001f4 <register_tm_clones+0x1c>)
 80001dc:	1a1b      	subs	r3, r3, r0
 80001de:	0fd9      	lsrs	r1, r3, #31
 80001e0:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 80001e4:	1049      	asrs	r1, r1, #1
 80001e6:	d002      	beq.n	80001ee <register_tm_clones+0x16>
 80001e8:	4b03      	ldr	r3, [pc, #12]	@ (80001f8 <register_tm_clones+0x20>)
 80001ea:	b103      	cbz	r3, 80001ee <register_tm_clones+0x16>
 80001ec:	4718      	bx	r3
 80001ee:	4770      	bx	lr
 80001f0:	20000068 	.word	0x20000068
 80001f4:	20000068 	.word	0x20000068
 80001f8:	00000000 	.word	0x00000000

080001fc <__do_global_dtors_aux>:
 80001fc:	b510      	push	{r4, lr}
 80001fe:	4c06      	ldr	r4, [pc, #24]	@ (8000218 <__do_global_dtors_aux+0x1c>)
 8000200:	7823      	ldrb	r3, [r4, #0]
 8000202:	b943      	cbnz	r3, 8000216 <__do_global_dtors_aux+0x1a>
 8000204:	f7ff ffda 	bl	80001bc <deregister_tm_clones>
 8000208:	4b04      	ldr	r3, [pc, #16]	@ (800021c <__do_global_dtors_aux+0x20>)
 800020a:	b113      	cbz	r3, 8000212 <__do_global_dtors_aux+0x16>
 800020c:	4804      	ldr	r0, [pc, #16]	@ (8000220 <__do_global_dtors_aux+0x24>)
 800020e:	f3af 8000 	nop.w
 8000212:	2301      	movs	r3, #1
 8000214:	7023      	strb	r3, [r4, #0]
 8000216:	bd10      	pop	{r4, pc}
 8000218:	20000068 	.word	0x20000068
 800021c:	00000000 	.word	0x00000000
 8000220:	080049e0 	.word	0x080049e0

08000224 <frame_dummy>:
 8000224:	b508      	push	{r3, lr}
 8000226:	4b05      	ldr	r3, [pc, #20]	@ (800023c <frame_dummy+0x18>)
 8000228:	b11b      	cbz	r3, 8000232 <frame_dummy+0xe>
 800022a:	4905      	ldr	r1, [pc, #20]	@ (8000240 <frame_dummy+0x1c>)
 800022c:	4805      	ldr	r0, [pc, #20]	@ (8000244 <frame_dummy+0x20>)
 800022e:	f3af 8000 	nop.w
 8000232:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000236:	f7ff bfcf 	b.w	80001d8 <register_tm_clones>
 800023a:	bf00      	nop
 800023c:	00000000 	.word	0x00000000
 8000240:	2000006c 	.word	0x2000006c
 8000244:	080049e0 	.word	0x080049e0

08000248 <std>:
 8000248:	2300      	movs	r3, #0
 800024a:	b510      	push	{r4, lr}
 800024c:	4604      	mov	r4, r0
 800024e:	e9c0 3300 	strd	r3, r3, [r0]
 8000252:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8000256:	6083      	str	r3, [r0, #8]
 8000258:	8181      	strh	r1, [r0, #12]
 800025a:	6643      	str	r3, [r0, #100]	@ 0x64
 800025c:	81c2      	strh	r2, [r0, #14]
 800025e:	6183      	str	r3, [r0, #24]
 8000260:	4619      	mov	r1, r3
 8000262:	2208      	movs	r2, #8
 8000264:	305c      	adds	r0, #92	@ 0x5c
 8000266:	f000 f8f7 	bl	8000458 <memset>
 800026a:	4b0d      	ldr	r3, [pc, #52]	@ (80002a0 <std+0x58>)
 800026c:	6263      	str	r3, [r4, #36]	@ 0x24
 800026e:	4b0d      	ldr	r3, [pc, #52]	@ (80002a4 <std+0x5c>)
 8000270:	62a3      	str	r3, [r4, #40]	@ 0x28
 8000272:	4b0d      	ldr	r3, [pc, #52]	@ (80002a8 <std+0x60>)
 8000274:	62e3      	str	r3, [r4, #44]	@ 0x2c
 8000276:	4b0d      	ldr	r3, [pc, #52]	@ (80002ac <std+0x64>)
 8000278:	6323      	str	r3, [r4, #48]	@ 0x30
 800027a:	4b0d      	ldr	r3, [pc, #52]	@ (80002b0 <std+0x68>)
 800027c:	6224      	str	r4, [r4, #32]
 800027e:	429c      	cmp	r4, r3
 8000280:	d006      	beq.n	8000290 <std+0x48>
 8000282:	f103 0268 	add.w	r2, r3, #104	@ 0x68
 8000286:	4294      	cmp	r4, r2
 8000288:	d002      	beq.n	8000290 <std+0x48>
 800028a:	33d0      	adds	r3, #208	@ 0xd0
 800028c:	429c      	cmp	r4, r3
 800028e:	d105      	bne.n	800029c <std+0x54>
 8000290:	f104 0058 	add.w	r0, r4, #88	@ 0x58
 8000294:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000298:	f000 b950 	b.w	800053c <__retarget_lock_init_recursive>
 800029c:	bd10      	pop	{r4, pc}
 800029e:	bf00      	nop
 80002a0:	080003d1 	.word	0x080003d1
 80002a4:	080003f3 	.word	0x080003f3
 80002a8:	0800042b 	.word	0x0800042b
 80002ac:	08000451 	.word	0x08000451
 80002b0:	20000084 	.word	0x20000084

080002b4 <stdio_exit_handler>:
 80002b4:	4a02      	ldr	r2, [pc, #8]	@ (80002c0 <stdio_exit_handler+0xc>)
 80002b6:	4903      	ldr	r1, [pc, #12]	@ (80002c4 <stdio_exit_handler+0x10>)
 80002b8:	4803      	ldr	r0, [pc, #12]	@ (80002c8 <stdio_exit_handler+0x14>)
 80002ba:	f000 b86b 	b.w	8000394 <_fwalk_sglue>
 80002be:	bf00      	nop
 80002c0:	20000000 	.word	0x20000000
 80002c4:	08000839 	.word	0x08000839
 80002c8:	20000010 	.word	0x20000010

080002cc <cleanup_stdio>:
 80002cc:	6841      	ldr	r1, [r0, #4]
 80002ce:	4b0c      	ldr	r3, [pc, #48]	@ (8000300 <cleanup_stdio+0x34>)
 80002d0:	4299      	cmp	r1, r3
 80002d2:	b510      	push	{r4, lr}
 80002d4:	4604      	mov	r4, r0
 80002d6:	d001      	beq.n	80002dc <cleanup_stdio+0x10>
 80002d8:	f000 faae 	bl	8000838 <_fflush_r>
 80002dc:	68a1      	ldr	r1, [r4, #8]
 80002de:	4b09      	ldr	r3, [pc, #36]	@ (8000304 <cleanup_stdio+0x38>)
 80002e0:	4299      	cmp	r1, r3
 80002e2:	d002      	beq.n	80002ea <cleanup_stdio+0x1e>
 80002e4:	4620      	mov	r0, r4
 80002e6:	f000 faa7 	bl	8000838 <_fflush_r>
 80002ea:	68e1      	ldr	r1, [r4, #12]
 80002ec:	4b06      	ldr	r3, [pc, #24]	@ (8000308 <cleanup_stdio+0x3c>)
 80002ee:	4299      	cmp	r1, r3
 80002f0:	d004      	beq.n	80002fc <cleanup_stdio+0x30>
 80002f2:	4620      	mov	r0, r4
 80002f4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80002f8:	f000 ba9e 	b.w	8000838 <_fflush_r>
 80002fc:	bd10      	pop	{r4, pc}
 80002fe:	bf00      	nop
 8000300:	20000084 	.word	0x20000084
 8000304:	200000ec 	.word	0x200000ec
 8000308:	20000154 	.word	0x20000154

0800030c <global_stdio_init.part.0>:
 800030c:	4b0c      	ldr	r3, [pc, #48]	@ (8000340 <global_stdio_init.part.0+0x34>)
 800030e:	4a0d      	ldr	r2, [pc, #52]	@ (8000344 <global_stdio_init.part.0+0x38>)
 8000310:	480d      	ldr	r0, [pc, #52]	@ (8000348 <global_stdio_init.part.0+0x3c>)
 8000312:	b510      	push	{r4, lr}
 8000314:	2104      	movs	r1, #4
 8000316:	601a      	str	r2, [r3, #0]
 8000318:	2200      	movs	r2, #0
 800031a:	f7ff ff95 	bl	8000248 <std>
 800031e:	4b0a      	ldr	r3, [pc, #40]	@ (8000348 <global_stdio_init.part.0+0x3c>)
 8000320:	2201      	movs	r2, #1
 8000322:	461c      	mov	r4, r3
 8000324:	2109      	movs	r1, #9
 8000326:	f103 0068 	add.w	r0, r3, #104	@ 0x68
 800032a:	f7ff ff8d 	bl	8000248 <std>
 800032e:	f104 00d0 	add.w	r0, r4, #208	@ 0xd0
 8000332:	2202      	movs	r2, #2
 8000334:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000338:	2112      	movs	r1, #18
 800033a:	f7ff bf85 	b.w	8000248 <std>
 800033e:	bf00      	nop
 8000340:	200001bc 	.word	0x200001bc
 8000344:	080002b5 	.word	0x080002b5
 8000348:	20000084 	.word	0x20000084

0800034c <__sfp_lock_acquire>:
 800034c:	4801      	ldr	r0, [pc, #4]	@ (8000354 <__sfp_lock_acquire+0x8>)
 800034e:	f000 b8f6 	b.w	800053e <__retarget_lock_acquire_recursive>
 8000352:	bf00      	nop
 8000354:	200001c5 	.word	0x200001c5

08000358 <__sfp_lock_release>:
 8000358:	4801      	ldr	r0, [pc, #4]	@ (8000360 <__sfp_lock_release+0x8>)
 800035a:	f000 b8f1 	b.w	8000540 <__retarget_lock_release_recursive>
 800035e:	bf00      	nop
 8000360:	200001c5 	.word	0x200001c5

08000364 <__sinit>:
 8000364:	b510      	push	{r4, lr}
 8000366:	4604      	mov	r4, r0
 8000368:	f7ff fff0 	bl	800034c <__sfp_lock_acquire>
 800036c:	6a23      	ldr	r3, [r4, #32]
 800036e:	b11b      	cbz	r3, 8000378 <__sinit+0x14>
 8000370:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000374:	f7ff bff0 	b.w	8000358 <__sfp_lock_release>
 8000378:	4b04      	ldr	r3, [pc, #16]	@ (800038c <__sinit+0x28>)
 800037a:	6223      	str	r3, [r4, #32]
 800037c:	4b04      	ldr	r3, [pc, #16]	@ (8000390 <__sinit+0x2c>)
 800037e:	681b      	ldr	r3, [r3, #0]
 8000380:	2b00      	cmp	r3, #0
 8000382:	d1f5      	bne.n	8000370 <__sinit+0xc>
 8000384:	f7ff ffc2 	bl	800030c <global_stdio_init.part.0>
 8000388:	e7f2      	b.n	8000370 <__sinit+0xc>
 800038a:	bf00      	nop
 800038c:	080002cd 	.word	0x080002cd
 8000390:	200001bc 	.word	0x200001bc

08000394 <_fwalk_sglue>:
 8000394:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000398:	4607      	mov	r7, r0
 800039a:	4688      	mov	r8, r1
 800039c:	4614      	mov	r4, r2
 800039e:	2600      	movs	r6, #0
 80003a0:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
 80003a4:	f1b9 0901 	subs.w	r9, r9, #1
 80003a8:	d505      	bpl.n	80003b6 <_fwalk_sglue+0x22>
 80003aa:	6824      	ldr	r4, [r4, #0]
 80003ac:	2c00      	cmp	r4, #0
 80003ae:	d1f7      	bne.n	80003a0 <_fwalk_sglue+0xc>
 80003b0:	4630      	mov	r0, r6
 80003b2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80003b6:	89ab      	ldrh	r3, [r5, #12]
 80003b8:	2b01      	cmp	r3, #1
 80003ba:	d907      	bls.n	80003cc <_fwalk_sglue+0x38>
 80003bc:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
 80003c0:	3301      	adds	r3, #1
 80003c2:	d003      	beq.n	80003cc <_fwalk_sglue+0x38>
 80003c4:	4629      	mov	r1, r5
 80003c6:	4638      	mov	r0, r7
 80003c8:	47c0      	blx	r8
 80003ca:	4306      	orrs	r6, r0
 80003cc:	3568      	adds	r5, #104	@ 0x68
 80003ce:	e7e9      	b.n	80003a4 <_fwalk_sglue+0x10>

080003d0 <__sread>:
 80003d0:	b510      	push	{r4, lr}
 80003d2:	460c      	mov	r4, r1
 80003d4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80003d8:	f000 f868 	bl	80004ac <_read_r>
 80003dc:	2800      	cmp	r0, #0
 80003de:	bfab      	itete	ge
 80003e0:	6d63      	ldrge	r3, [r4, #84]	@ 0x54
 80003e2:	89a3      	ldrhlt	r3, [r4, #12]
 80003e4:	181b      	addge	r3, r3, r0
 80003e6:	f423 5380 	biclt.w	r3, r3, #4096	@ 0x1000
 80003ea:	bfac      	ite	ge
 80003ec:	6563      	strge	r3, [r4, #84]	@ 0x54
 80003ee:	81a3      	strhlt	r3, [r4, #12]
 80003f0:	bd10      	pop	{r4, pc}

080003f2 <__swrite>:
 80003f2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80003f6:	461f      	mov	r7, r3
 80003f8:	898b      	ldrh	r3, [r1, #12]
 80003fa:	05db      	lsls	r3, r3, #23
 80003fc:	4605      	mov	r5, r0
 80003fe:	460c      	mov	r4, r1
 8000400:	4616      	mov	r6, r2
 8000402:	d505      	bpl.n	8000410 <__swrite+0x1e>
 8000404:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8000408:	2302      	movs	r3, #2
 800040a:	2200      	movs	r2, #0
 800040c:	f000 f83c 	bl	8000488 <_lseek_r>
 8000410:	89a3      	ldrh	r3, [r4, #12]
 8000412:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8000416:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
 800041a:	81a3      	strh	r3, [r4, #12]
 800041c:	4632      	mov	r2, r6
 800041e:	463b      	mov	r3, r7
 8000420:	4628      	mov	r0, r5
 8000422:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000426:	f000 b853 	b.w	80004d0 <_write_r>

0800042a <__sseek>:
 800042a:	b510      	push	{r4, lr}
 800042c:	460c      	mov	r4, r1
 800042e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8000432:	f000 f829 	bl	8000488 <_lseek_r>
 8000436:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800043a:	1c42      	adds	r2, r0, #1
 800043c:	bf0b      	itete	eq
 800043e:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
 8000442:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
 8000446:	81a3      	strheq	r3, [r4, #12]
 8000448:	81a3      	strhne	r3, [r4, #12]
 800044a:	bf18      	it	ne
 800044c:	6560      	strne	r0, [r4, #84]	@ 0x54
 800044e:	bd10      	pop	{r4, pc}

08000450 <__sclose>:
 8000450:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8000454:	f000 b808 	b.w	8000468 <_close_r>

08000458 <memset>:
 8000458:	4402      	add	r2, r0
 800045a:	4603      	mov	r3, r0
 800045c:	4293      	cmp	r3, r2
 800045e:	d100      	bne.n	8000462 <memset+0xa>
 8000460:	4770      	bx	lr
 8000462:	f803 1b01 	strb.w	r1, [r3], #1
 8000466:	e7f9      	b.n	800045c <memset+0x4>

08000468 <_close_r>:
 8000468:	b538      	push	{r3, r4, r5, lr}
 800046a:	4d06      	ldr	r5, [pc, #24]	@ (8000484 <_close_r+0x1c>)
 800046c:	2300      	movs	r3, #0
 800046e:	4604      	mov	r4, r0
 8000470:	4608      	mov	r0, r1
 8000472:	602b      	str	r3, [r5, #0]
 8000474:	f000 fc67 	bl	8000d46 <_close>
 8000478:	1c43      	adds	r3, r0, #1
 800047a:	d102      	bne.n	8000482 <_close_r+0x1a>
 800047c:	682b      	ldr	r3, [r5, #0]
 800047e:	b103      	cbz	r3, 8000482 <_close_r+0x1a>
 8000480:	6023      	str	r3, [r4, #0]
 8000482:	bd38      	pop	{r3, r4, r5, pc}
 8000484:	200001c0 	.word	0x200001c0

08000488 <_lseek_r>:
 8000488:	b538      	push	{r3, r4, r5, lr}
 800048a:	4d07      	ldr	r5, [pc, #28]	@ (80004a8 <_lseek_r+0x20>)
 800048c:	4604      	mov	r4, r0
 800048e:	4608      	mov	r0, r1
 8000490:	4611      	mov	r1, r2
 8000492:	2200      	movs	r2, #0
 8000494:	602a      	str	r2, [r5, #0]
 8000496:	461a      	mov	r2, r3
 8000498:	f000 fc7c 	bl	8000d94 <_lseek>
 800049c:	1c43      	adds	r3, r0, #1
 800049e:	d102      	bne.n	80004a6 <_lseek_r+0x1e>
 80004a0:	682b      	ldr	r3, [r5, #0]
 80004a2:	b103      	cbz	r3, 80004a6 <_lseek_r+0x1e>
 80004a4:	6023      	str	r3, [r4, #0]
 80004a6:	bd38      	pop	{r3, r4, r5, pc}
 80004a8:	200001c0 	.word	0x200001c0

080004ac <_read_r>:
 80004ac:	b538      	push	{r3, r4, r5, lr}
 80004ae:	4d07      	ldr	r5, [pc, #28]	@ (80004cc <_read_r+0x20>)
 80004b0:	4604      	mov	r4, r0
 80004b2:	4608      	mov	r0, r1
 80004b4:	4611      	mov	r1, r2
 80004b6:	2200      	movs	r2, #0
 80004b8:	602a      	str	r2, [r5, #0]
 80004ba:	461a      	mov	r2, r3
 80004bc:	f000 fc0a 	bl	8000cd4 <_read>
 80004c0:	1c43      	adds	r3, r0, #1
 80004c2:	d102      	bne.n	80004ca <_read_r+0x1e>
 80004c4:	682b      	ldr	r3, [r5, #0]
 80004c6:	b103      	cbz	r3, 80004ca <_read_r+0x1e>
 80004c8:	6023      	str	r3, [r4, #0]
 80004ca:	bd38      	pop	{r3, r4, r5, pc}
 80004cc:	200001c0 	.word	0x200001c0

080004d0 <_write_r>:
 80004d0:	b538      	push	{r3, r4, r5, lr}
 80004d2:	4d07      	ldr	r5, [pc, #28]	@ (80004f0 <_write_r+0x20>)
 80004d4:	4604      	mov	r4, r0
 80004d6:	4608      	mov	r0, r1
 80004d8:	4611      	mov	r1, r2
 80004da:	2200      	movs	r2, #0
 80004dc:	602a      	str	r2, [r5, #0]
 80004de:	461a      	mov	r2, r3
 80004e0:	f000 fc15 	bl	8000d0e <_write>
 80004e4:	1c43      	adds	r3, r0, #1
 80004e6:	d102      	bne.n	80004ee <_write_r+0x1e>
 80004e8:	682b      	ldr	r3, [r5, #0]
 80004ea:	b103      	cbz	r3, 80004ee <_write_r+0x1e>
 80004ec:	6023      	str	r3, [r4, #0]
 80004ee:	bd38      	pop	{r3, r4, r5, pc}
 80004f0:	200001c0 	.word	0x200001c0

080004f4 <__libc_init_array>:
 80004f4:	b570      	push	{r4, r5, r6, lr}
 80004f6:	4b0d      	ldr	r3, [pc, #52]	@ (800052c <__libc_init_array+0x38>)
 80004f8:	4d0d      	ldr	r5, [pc, #52]	@ (8000530 <__libc_init_array+0x3c>)
 80004fa:	1b5b      	subs	r3, r3, r5
 80004fc:	109c      	asrs	r4, r3, #2
 80004fe:	2600      	movs	r6, #0
 8000500:	42a6      	cmp	r6, r4
 8000502:	d109      	bne.n	8000518 <__libc_init_array+0x24>
 8000504:	f004 fa6c 	bl	80049e0 <_init>
 8000508:	4d0a      	ldr	r5, [pc, #40]	@ (8000534 <__libc_init_array+0x40>)
 800050a:	4b0b      	ldr	r3, [pc, #44]	@ (8000538 <__libc_init_array+0x44>)
 800050c:	1b5b      	subs	r3, r3, r5
 800050e:	109c      	asrs	r4, r3, #2
 8000510:	2600      	movs	r6, #0
 8000512:	42a6      	cmp	r6, r4
 8000514:	d105      	bne.n	8000522 <__libc_init_array+0x2e>
 8000516:	bd70      	pop	{r4, r5, r6, pc}
 8000518:	f855 3b04 	ldr.w	r3, [r5], #4
 800051c:	4798      	blx	r3
 800051e:	3601      	adds	r6, #1
 8000520:	e7ee      	b.n	8000500 <__libc_init_array+0xc>
 8000522:	f855 3b04 	ldr.w	r3, [r5], #4
 8000526:	4798      	blx	r3
 8000528:	3601      	adds	r6, #1
 800052a:	e7f2      	b.n	8000512 <__libc_init_array+0x1e>
 800052c:	08004a30 	.word	0x08004a30
 8000530:	08004a30 	.word	0x08004a30
 8000534:	08004a30 	.word	0x08004a30
 8000538:	08004a34 	.word	0x08004a34

0800053c <__retarget_lock_init_recursive>:
 800053c:	4770      	bx	lr

0800053e <__retarget_lock_acquire_recursive>:
 800053e:	4770      	bx	lr

08000540 <__retarget_lock_release_recursive>:
 8000540:	4770      	bx	lr
	...

08000544 <_free_r>:
 8000544:	b538      	push	{r3, r4, r5, lr}
 8000546:	4605      	mov	r5, r0
 8000548:	2900      	cmp	r1, #0
 800054a:	d041      	beq.n	80005d0 <_free_r+0x8c>
 800054c:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8000550:	1f0c      	subs	r4, r1, #4
 8000552:	2b00      	cmp	r3, #0
 8000554:	bfb8      	it	lt
 8000556:	18e4      	addlt	r4, r4, r3
 8000558:	f000 f8e0 	bl	800071c <__malloc_lock>
 800055c:	4a1d      	ldr	r2, [pc, #116]	@ (80005d4 <_free_r+0x90>)
 800055e:	6813      	ldr	r3, [r2, #0]
 8000560:	b933      	cbnz	r3, 8000570 <_free_r+0x2c>
 8000562:	6063      	str	r3, [r4, #4]
 8000564:	6014      	str	r4, [r2, #0]
 8000566:	4628      	mov	r0, r5
 8000568:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800056c:	f000 b8dc 	b.w	8000728 <__malloc_unlock>
 8000570:	42a3      	cmp	r3, r4
 8000572:	d908      	bls.n	8000586 <_free_r+0x42>
 8000574:	6820      	ldr	r0, [r4, #0]
 8000576:	1821      	adds	r1, r4, r0
 8000578:	428b      	cmp	r3, r1
 800057a:	bf01      	itttt	eq
 800057c:	6819      	ldreq	r1, [r3, #0]
 800057e:	685b      	ldreq	r3, [r3, #4]
 8000580:	1809      	addeq	r1, r1, r0
 8000582:	6021      	streq	r1, [r4, #0]
 8000584:	e7ed      	b.n	8000562 <_free_r+0x1e>
 8000586:	461a      	mov	r2, r3
 8000588:	685b      	ldr	r3, [r3, #4]
 800058a:	b10b      	cbz	r3, 8000590 <_free_r+0x4c>
 800058c:	42a3      	cmp	r3, r4
 800058e:	d9fa      	bls.n	8000586 <_free_r+0x42>
 8000590:	6811      	ldr	r1, [r2, #0]
 8000592:	1850      	adds	r0, r2, r1
 8000594:	42a0      	cmp	r0, r4
 8000596:	d10b      	bne.n	80005b0 <_free_r+0x6c>
 8000598:	6820      	ldr	r0, [r4, #0]
 800059a:	4401      	add	r1, r0
 800059c:	1850      	adds	r0, r2, r1
 800059e:	4283      	cmp	r3, r0
 80005a0:	6011      	str	r1, [r2, #0]
 80005a2:	d1e0      	bne.n	8000566 <_free_r+0x22>
 80005a4:	6818      	ldr	r0, [r3, #0]
 80005a6:	685b      	ldr	r3, [r3, #4]
 80005a8:	6053      	str	r3, [r2, #4]
 80005aa:	4408      	add	r0, r1
 80005ac:	6010      	str	r0, [r2, #0]
 80005ae:	e7da      	b.n	8000566 <_free_r+0x22>
 80005b0:	d902      	bls.n	80005b8 <_free_r+0x74>
 80005b2:	230c      	movs	r3, #12
 80005b4:	602b      	str	r3, [r5, #0]
 80005b6:	e7d6      	b.n	8000566 <_free_r+0x22>
 80005b8:	6820      	ldr	r0, [r4, #0]
 80005ba:	1821      	adds	r1, r4, r0
 80005bc:	428b      	cmp	r3, r1
 80005be:	bf04      	itt	eq
 80005c0:	6819      	ldreq	r1, [r3, #0]
 80005c2:	685b      	ldreq	r3, [r3, #4]
 80005c4:	6063      	str	r3, [r4, #4]
 80005c6:	bf04      	itt	eq
 80005c8:	1809      	addeq	r1, r1, r0
 80005ca:	6021      	streq	r1, [r4, #0]
 80005cc:	6054      	str	r4, [r2, #4]
 80005ce:	e7ca      	b.n	8000566 <_free_r+0x22>
 80005d0:	bd38      	pop	{r3, r4, r5, pc}
 80005d2:	bf00      	nop
 80005d4:	200001cc 	.word	0x200001cc

080005d8 <sbrk_aligned>:
 80005d8:	b570      	push	{r4, r5, r6, lr}
 80005da:	4e0f      	ldr	r6, [pc, #60]	@ (8000618 <sbrk_aligned+0x40>)
 80005dc:	460c      	mov	r4, r1
 80005de:	6831      	ldr	r1, [r6, #0]
 80005e0:	4605      	mov	r5, r0
 80005e2:	b911      	cbnz	r1, 80005ea <sbrk_aligned+0x12>
 80005e4:	f000 f950 	bl	8000888 <_sbrk_r>
 80005e8:	6030      	str	r0, [r6, #0]
 80005ea:	4621      	mov	r1, r4
 80005ec:	4628      	mov	r0, r5
 80005ee:	f000 f94b 	bl	8000888 <_sbrk_r>
 80005f2:	1c43      	adds	r3, r0, #1
 80005f4:	d103      	bne.n	80005fe <sbrk_aligned+0x26>
 80005f6:	f04f 34ff 	mov.w	r4, #4294967295	@ 0xffffffff
 80005fa:	4620      	mov	r0, r4
 80005fc:	bd70      	pop	{r4, r5, r6, pc}
 80005fe:	1cc4      	adds	r4, r0, #3
 8000600:	f024 0403 	bic.w	r4, r4, #3
 8000604:	42a0      	cmp	r0, r4
 8000606:	d0f8      	beq.n	80005fa <sbrk_aligned+0x22>
 8000608:	1a21      	subs	r1, r4, r0
 800060a:	4628      	mov	r0, r5
 800060c:	f000 f93c 	bl	8000888 <_sbrk_r>
 8000610:	3001      	adds	r0, #1
 8000612:	d1f2      	bne.n	80005fa <sbrk_aligned+0x22>
 8000614:	e7ef      	b.n	80005f6 <sbrk_aligned+0x1e>
 8000616:	bf00      	nop
 8000618:	200001c8 	.word	0x200001c8

0800061c <_malloc_r>:
 800061c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000620:	1ccd      	adds	r5, r1, #3
 8000622:	f025 0503 	bic.w	r5, r5, #3
 8000626:	3508      	adds	r5, #8
 8000628:	2d0c      	cmp	r5, #12
 800062a:	bf38      	it	cc
 800062c:	250c      	movcc	r5, #12
 800062e:	2d00      	cmp	r5, #0
 8000630:	4606      	mov	r6, r0
 8000632:	db01      	blt.n	8000638 <_malloc_r+0x1c>
 8000634:	42a9      	cmp	r1, r5
 8000636:	d904      	bls.n	8000642 <_malloc_r+0x26>
 8000638:	230c      	movs	r3, #12
 800063a:	6033      	str	r3, [r6, #0]
 800063c:	2000      	movs	r0, #0
 800063e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8000642:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 8000718 <_malloc_r+0xfc>
 8000646:	f000 f869 	bl	800071c <__malloc_lock>
 800064a:	f8d8 3000 	ldr.w	r3, [r8]
 800064e:	461c      	mov	r4, r3
 8000650:	bb44      	cbnz	r4, 80006a4 <_malloc_r+0x88>
 8000652:	4629      	mov	r1, r5
 8000654:	4630      	mov	r0, r6
 8000656:	f7ff ffbf 	bl	80005d8 <sbrk_aligned>
 800065a:	1c43      	adds	r3, r0, #1
 800065c:	4604      	mov	r4, r0
 800065e:	d158      	bne.n	8000712 <_malloc_r+0xf6>
 8000660:	f8d8 4000 	ldr.w	r4, [r8]
 8000664:	4627      	mov	r7, r4
 8000666:	2f00      	cmp	r7, #0
 8000668:	d143      	bne.n	80006f2 <_malloc_r+0xd6>
 800066a:	2c00      	cmp	r4, #0
 800066c:	d04b      	beq.n	8000706 <_malloc_r+0xea>
 800066e:	6823      	ldr	r3, [r4, #0]
 8000670:	4639      	mov	r1, r7
 8000672:	4630      	mov	r0, r6
 8000674:	eb04 0903 	add.w	r9, r4, r3
 8000678:	f000 f906 	bl	8000888 <_sbrk_r>
 800067c:	4581      	cmp	r9, r0
 800067e:	d142      	bne.n	8000706 <_malloc_r+0xea>
 8000680:	6821      	ldr	r1, [r4, #0]
 8000682:	1a6d      	subs	r5, r5, r1
 8000684:	4629      	mov	r1, r5
 8000686:	4630      	mov	r0, r6
 8000688:	f7ff ffa6 	bl	80005d8 <sbrk_aligned>
 800068c:	3001      	adds	r0, #1
 800068e:	d03a      	beq.n	8000706 <_malloc_r+0xea>
 8000690:	6823      	ldr	r3, [r4, #0]
 8000692:	442b      	add	r3, r5
 8000694:	6023      	str	r3, [r4, #0]
 8000696:	f8d8 3000 	ldr.w	r3, [r8]
 800069a:	685a      	ldr	r2, [r3, #4]
 800069c:	bb62      	cbnz	r2, 80006f8 <_malloc_r+0xdc>
 800069e:	f8c8 7000 	str.w	r7, [r8]
 80006a2:	e00f      	b.n	80006c4 <_malloc_r+0xa8>
 80006a4:	6822      	ldr	r2, [r4, #0]
 80006a6:	1b52      	subs	r2, r2, r5
 80006a8:	d420      	bmi.n	80006ec <_malloc_r+0xd0>
 80006aa:	2a0b      	cmp	r2, #11
 80006ac:	d917      	bls.n	80006de <_malloc_r+0xc2>
 80006ae:	1961      	adds	r1, r4, r5
 80006b0:	42a3      	cmp	r3, r4
 80006b2:	6025      	str	r5, [r4, #0]
 80006b4:	bf18      	it	ne
 80006b6:	6059      	strne	r1, [r3, #4]
 80006b8:	6863      	ldr	r3, [r4, #4]
 80006ba:	bf08      	it	eq
 80006bc:	f8c8 1000 	streq.w	r1, [r8]
 80006c0:	5162      	str	r2, [r4, r5]
 80006c2:	604b      	str	r3, [r1, #4]
 80006c4:	4630      	mov	r0, r6
 80006c6:	f000 f82f 	bl	8000728 <__malloc_unlock>
 80006ca:	f104 000b 	add.w	r0, r4, #11
 80006ce:	1d23      	adds	r3, r4, #4
 80006d0:	f020 0007 	bic.w	r0, r0, #7
 80006d4:	1ac2      	subs	r2, r0, r3
 80006d6:	bf1c      	itt	ne
 80006d8:	1a1b      	subne	r3, r3, r0
 80006da:	50a3      	strne	r3, [r4, r2]
 80006dc:	e7af      	b.n	800063e <_malloc_r+0x22>
 80006de:	6862      	ldr	r2, [r4, #4]
 80006e0:	42a3      	cmp	r3, r4
 80006e2:	bf0c      	ite	eq
 80006e4:	f8c8 2000 	streq.w	r2, [r8]
 80006e8:	605a      	strne	r2, [r3, #4]
 80006ea:	e7eb      	b.n	80006c4 <_malloc_r+0xa8>
 80006ec:	4623      	mov	r3, r4
 80006ee:	6864      	ldr	r4, [r4, #4]
 80006f0:	e7ae      	b.n	8000650 <_malloc_r+0x34>
 80006f2:	463c      	mov	r4, r7
 80006f4:	687f      	ldr	r7, [r7, #4]
 80006f6:	e7b6      	b.n	8000666 <_malloc_r+0x4a>
 80006f8:	461a      	mov	r2, r3
 80006fa:	685b      	ldr	r3, [r3, #4]
 80006fc:	42a3      	cmp	r3, r4
 80006fe:	d1fb      	bne.n	80006f8 <_malloc_r+0xdc>
 8000700:	2300      	movs	r3, #0
 8000702:	6053      	str	r3, [r2, #4]
 8000704:	e7de      	b.n	80006c4 <_malloc_r+0xa8>
 8000706:	230c      	movs	r3, #12
 8000708:	6033      	str	r3, [r6, #0]
 800070a:	4630      	mov	r0, r6
 800070c:	f000 f80c 	bl	8000728 <__malloc_unlock>
 8000710:	e794      	b.n	800063c <_malloc_r+0x20>
 8000712:	6005      	str	r5, [r0, #0]
 8000714:	e7d6      	b.n	80006c4 <_malloc_r+0xa8>
 8000716:	bf00      	nop
 8000718:	200001cc 	.word	0x200001cc

0800071c <__malloc_lock>:
 800071c:	4801      	ldr	r0, [pc, #4]	@ (8000724 <__malloc_lock+0x8>)
 800071e:	f7ff bf0e 	b.w	800053e <__retarget_lock_acquire_recursive>
 8000722:	bf00      	nop
 8000724:	200001c4 	.word	0x200001c4

08000728 <__malloc_unlock>:
 8000728:	4801      	ldr	r0, [pc, #4]	@ (8000730 <__malloc_unlock+0x8>)
 800072a:	f7ff bf09 	b.w	8000540 <__retarget_lock_release_recursive>
 800072e:	bf00      	nop
 8000730:	200001c4 	.word	0x200001c4

08000734 <__sflush_r>:
 8000734:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8000738:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800073c:	0716      	lsls	r6, r2, #28
 800073e:	4605      	mov	r5, r0
 8000740:	460c      	mov	r4, r1
 8000742:	d451      	bmi.n	80007e8 <__sflush_r+0xb4>
 8000744:	684b      	ldr	r3, [r1, #4]
 8000746:	2b00      	cmp	r3, #0
 8000748:	dc02      	bgt.n	8000750 <__sflush_r+0x1c>
 800074a:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
 800074c:	2b00      	cmp	r3, #0
 800074e:	dd49      	ble.n	80007e4 <__sflush_r+0xb0>
 8000750:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 8000752:	2e00      	cmp	r6, #0
 8000754:	d046      	beq.n	80007e4 <__sflush_r+0xb0>
 8000756:	2300      	movs	r3, #0
 8000758:	f412 5280 	ands.w	r2, r2, #4096	@ 0x1000
 800075c:	682f      	ldr	r7, [r5, #0]
 800075e:	602b      	str	r3, [r5, #0]
 8000760:	d031      	beq.n	80007c6 <__sflush_r+0x92>
 8000762:	6d62      	ldr	r2, [r4, #84]	@ 0x54
 8000764:	89a3      	ldrh	r3, [r4, #12]
 8000766:	0759      	lsls	r1, r3, #29
 8000768:	d505      	bpl.n	8000776 <__sflush_r+0x42>
 800076a:	6863      	ldr	r3, [r4, #4]
 800076c:	1ad2      	subs	r2, r2, r3
 800076e:	6b63      	ldr	r3, [r4, #52]	@ 0x34
 8000770:	b10b      	cbz	r3, 8000776 <__sflush_r+0x42>
 8000772:	6c23      	ldr	r3, [r4, #64]	@ 0x40
 8000774:	1ad2      	subs	r2, r2, r3
 8000776:	2300      	movs	r3, #0
 8000778:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 800077a:	6a21      	ldr	r1, [r4, #32]
 800077c:	4628      	mov	r0, r5
 800077e:	47b0      	blx	r6
 8000780:	1c42      	adds	r2, r0, #1
 8000782:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8000786:	d106      	bne.n	8000796 <__sflush_r+0x62>
 8000788:	6829      	ldr	r1, [r5, #0]
 800078a:	291d      	cmp	r1, #29
 800078c:	d846      	bhi.n	800081c <__sflush_r+0xe8>
 800078e:	4a29      	ldr	r2, [pc, #164]	@ (8000834 <__sflush_r+0x100>)
 8000790:	40ca      	lsrs	r2, r1
 8000792:	07d6      	lsls	r6, r2, #31
 8000794:	d542      	bpl.n	800081c <__sflush_r+0xe8>
 8000796:	2200      	movs	r2, #0
 8000798:	6062      	str	r2, [r4, #4]
 800079a:	04d9      	lsls	r1, r3, #19
 800079c:	6922      	ldr	r2, [r4, #16]
 800079e:	6022      	str	r2, [r4, #0]
 80007a0:	d504      	bpl.n	80007ac <__sflush_r+0x78>
 80007a2:	1c42      	adds	r2, r0, #1
 80007a4:	d101      	bne.n	80007aa <__sflush_r+0x76>
 80007a6:	682b      	ldr	r3, [r5, #0]
 80007a8:	b903      	cbnz	r3, 80007ac <__sflush_r+0x78>
 80007aa:	6560      	str	r0, [r4, #84]	@ 0x54
 80007ac:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 80007ae:	602f      	str	r7, [r5, #0]
 80007b0:	b1c1      	cbz	r1, 80007e4 <__sflush_r+0xb0>
 80007b2:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 80007b6:	4299      	cmp	r1, r3
 80007b8:	d002      	beq.n	80007c0 <__sflush_r+0x8c>
 80007ba:	4628      	mov	r0, r5
 80007bc:	f7ff fec2 	bl	8000544 <_free_r>
 80007c0:	2300      	movs	r3, #0
 80007c2:	6363      	str	r3, [r4, #52]	@ 0x34
 80007c4:	e00e      	b.n	80007e4 <__sflush_r+0xb0>
 80007c6:	6a21      	ldr	r1, [r4, #32]
 80007c8:	2301      	movs	r3, #1
 80007ca:	4628      	mov	r0, r5
 80007cc:	47b0      	blx	r6
 80007ce:	4602      	mov	r2, r0
 80007d0:	1c50      	adds	r0, r2, #1
 80007d2:	d1c7      	bne.n	8000764 <__sflush_r+0x30>
 80007d4:	682b      	ldr	r3, [r5, #0]
 80007d6:	2b00      	cmp	r3, #0
 80007d8:	d0c4      	beq.n	8000764 <__sflush_r+0x30>
 80007da:	2b1d      	cmp	r3, #29
 80007dc:	d001      	beq.n	80007e2 <__sflush_r+0xae>
 80007de:	2b16      	cmp	r3, #22
 80007e0:	d11a      	bne.n	8000818 <__sflush_r+0xe4>
 80007e2:	602f      	str	r7, [r5, #0]
 80007e4:	2000      	movs	r0, #0
 80007e6:	e01e      	b.n	8000826 <__sflush_r+0xf2>
 80007e8:	690f      	ldr	r7, [r1, #16]
 80007ea:	2f00      	cmp	r7, #0
 80007ec:	d0fa      	beq.n	80007e4 <__sflush_r+0xb0>
 80007ee:	0793      	lsls	r3, r2, #30
 80007f0:	680e      	ldr	r6, [r1, #0]
 80007f2:	bf08      	it	eq
 80007f4:	694b      	ldreq	r3, [r1, #20]
 80007f6:	600f      	str	r7, [r1, #0]
 80007f8:	bf18      	it	ne
 80007fa:	2300      	movne	r3, #0
 80007fc:	eba6 0807 	sub.w	r8, r6, r7
 8000800:	608b      	str	r3, [r1, #8]
 8000802:	f1b8 0f00 	cmp.w	r8, #0
 8000806:	dded      	ble.n	80007e4 <__sflush_r+0xb0>
 8000808:	6a21      	ldr	r1, [r4, #32]
 800080a:	6aa6      	ldr	r6, [r4, #40]	@ 0x28
 800080c:	4643      	mov	r3, r8
 800080e:	463a      	mov	r2, r7
 8000810:	4628      	mov	r0, r5
 8000812:	47b0      	blx	r6
 8000814:	2800      	cmp	r0, #0
 8000816:	dc08      	bgt.n	800082a <__sflush_r+0xf6>
 8000818:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800081c:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8000820:	81a3      	strh	r3, [r4, #12]
 8000822:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8000826:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800082a:	4407      	add	r7, r0
 800082c:	eba8 0800 	sub.w	r8, r8, r0
 8000830:	e7e7      	b.n	8000802 <__sflush_r+0xce>
 8000832:	bf00      	nop
 8000834:	20400001 	.word	0x20400001

08000838 <_fflush_r>:
 8000838:	b538      	push	{r3, r4, r5, lr}
 800083a:	690b      	ldr	r3, [r1, #16]
 800083c:	4605      	mov	r5, r0
 800083e:	460c      	mov	r4, r1
 8000840:	b913      	cbnz	r3, 8000848 <_fflush_r+0x10>
 8000842:	2500      	movs	r5, #0
 8000844:	4628      	mov	r0, r5
 8000846:	bd38      	pop	{r3, r4, r5, pc}
 8000848:	b118      	cbz	r0, 8000852 <_fflush_r+0x1a>
 800084a:	6a03      	ldr	r3, [r0, #32]
 800084c:	b90b      	cbnz	r3, 8000852 <_fflush_r+0x1a>
 800084e:	f7ff fd89 	bl	8000364 <__sinit>
 8000852:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8000856:	2b00      	cmp	r3, #0
 8000858:	d0f3      	beq.n	8000842 <_fflush_r+0xa>
 800085a:	6e62      	ldr	r2, [r4, #100]	@ 0x64
 800085c:	07d0      	lsls	r0, r2, #31
 800085e:	d404      	bmi.n	800086a <_fflush_r+0x32>
 8000860:	0599      	lsls	r1, r3, #22
 8000862:	d402      	bmi.n	800086a <_fflush_r+0x32>
 8000864:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8000866:	f7ff fe6a 	bl	800053e <__retarget_lock_acquire_recursive>
 800086a:	4628      	mov	r0, r5
 800086c:	4621      	mov	r1, r4
 800086e:	f7ff ff61 	bl	8000734 <__sflush_r>
 8000872:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 8000874:	07da      	lsls	r2, r3, #31
 8000876:	4605      	mov	r5, r0
 8000878:	d4e4      	bmi.n	8000844 <_fflush_r+0xc>
 800087a:	89a3      	ldrh	r3, [r4, #12]
 800087c:	059b      	lsls	r3, r3, #22
 800087e:	d4e1      	bmi.n	8000844 <_fflush_r+0xc>
 8000880:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8000882:	f7ff fe5d 	bl	8000540 <__retarget_lock_release_recursive>
 8000886:	e7dd      	b.n	8000844 <_fflush_r+0xc>

08000888 <_sbrk_r>:
 8000888:	b538      	push	{r3, r4, r5, lr}
 800088a:	4d06      	ldr	r5, [pc, #24]	@ (80008a4 <_sbrk_r+0x1c>)
 800088c:	2300      	movs	r3, #0
 800088e:	4604      	mov	r4, r0
 8000890:	4608      	mov	r0, r1
 8000892:	602b      	str	r3, [r5, #0]
 8000894:	f000 fa8c 	bl	8000db0 <_sbrk>
 8000898:	1c43      	adds	r3, r0, #1
 800089a:	d102      	bne.n	80008a2 <_sbrk_r+0x1a>
 800089c:	682b      	ldr	r3, [r5, #0]
 800089e:	b103      	cbz	r3, 80008a2 <_sbrk_r+0x1a>
 80008a0:	6023      	str	r3, [r4, #0]
 80008a2:	bd38      	pop	{r3, r4, r5, pc}
 80008a4:	200001c0 	.word	0x200001c0

080008a8 <MX_DMA_Init>:
 80008a8:	b580      	push	{r7, lr}
 80008aa:	b082      	sub	sp, #8
 80008ac:	af00      	add	r7, sp, #0
 80008ae:	2300      	movs	r3, #0
 80008b0:	607b      	str	r3, [r7, #4]
 80008b2:	4b59      	ldr	r3, [pc, #356]	@ (8000a18 <MX_DMA_Init+0x170>)
 80008b4:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80008b6:	4a58      	ldr	r2, [pc, #352]	@ (8000a18 <MX_DMA_Init+0x170>)
 80008b8:	f443 1300 	orr.w	r3, r3, #2097152	@ 0x200000
 80008bc:	6313      	str	r3, [r2, #48]	@ 0x30
 80008be:	4b56      	ldr	r3, [pc, #344]	@ (8000a18 <MX_DMA_Init+0x170>)
 80008c0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80008c2:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 80008c6:	607b      	str	r3, [r7, #4]
 80008c8:	687b      	ldr	r3, [r7, #4]
 80008ca:	2300      	movs	r3, #0
 80008cc:	603b      	str	r3, [r7, #0]
 80008ce:	4b52      	ldr	r3, [pc, #328]	@ (8000a18 <MX_DMA_Init+0x170>)
 80008d0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80008d2:	4a51      	ldr	r2, [pc, #324]	@ (8000a18 <MX_DMA_Init+0x170>)
 80008d4:	f443 0380 	orr.w	r3, r3, #4194304	@ 0x400000
 80008d8:	6313      	str	r3, [r2, #48]	@ 0x30
 80008da:	4b4f      	ldr	r3, [pc, #316]	@ (8000a18 <MX_DMA_Init+0x170>)
 80008dc:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80008de:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 80008e2:	603b      	str	r3, [r7, #0]
 80008e4:	683b      	ldr	r3, [r7, #0]
 80008e6:	4b4d      	ldr	r3, [pc, #308]	@ (8000a1c <MX_DMA_Init+0x174>)
 80008e8:	4a4d      	ldr	r2, [pc, #308]	@ (8000a20 <MX_DMA_Init+0x178>)
 80008ea:	601a      	str	r2, [r3, #0]
 80008ec:	4b4b      	ldr	r3, [pc, #300]	@ (8000a1c <MX_DMA_Init+0x174>)
 80008ee:	2280      	movs	r2, #128	@ 0x80
 80008f0:	609a      	str	r2, [r3, #8]
 80008f2:	4b4a      	ldr	r3, [pc, #296]	@ (8000a1c <MX_DMA_Init+0x174>)
 80008f4:	2200      	movs	r2, #0
 80008f6:	60da      	str	r2, [r3, #12]
 80008f8:	4b48      	ldr	r3, [pc, #288]	@ (8000a1c <MX_DMA_Init+0x174>)
 80008fa:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 80008fe:	611a      	str	r2, [r3, #16]
 8000900:	4b46      	ldr	r3, [pc, #280]	@ (8000a1c <MX_DMA_Init+0x174>)
 8000902:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 8000906:	615a      	str	r2, [r3, #20]
 8000908:	4b44      	ldr	r3, [pc, #272]	@ (8000a1c <MX_DMA_Init+0x174>)
 800090a:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 800090e:	619a      	str	r2, [r3, #24]
 8000910:	4b42      	ldr	r3, [pc, #264]	@ (8000a1c <MX_DMA_Init+0x174>)
 8000912:	2200      	movs	r2, #0
 8000914:	61da      	str	r2, [r3, #28]
 8000916:	4b41      	ldr	r3, [pc, #260]	@ (8000a1c <MX_DMA_Init+0x174>)
 8000918:	2200      	movs	r2, #0
 800091a:	621a      	str	r2, [r3, #32]
 800091c:	4b3f      	ldr	r3, [pc, #252]	@ (8000a1c <MX_DMA_Init+0x174>)
 800091e:	2200      	movs	r2, #0
 8000920:	605a      	str	r2, [r3, #4]
 8000922:	4b3e      	ldr	r3, [pc, #248]	@ (8000a1c <MX_DMA_Init+0x174>)
 8000924:	2204      	movs	r2, #4
 8000926:	625a      	str	r2, [r3, #36]	@ 0x24
 8000928:	4b3c      	ldr	r3, [pc, #240]	@ (8000a1c <MX_DMA_Init+0x174>)
 800092a:	2203      	movs	r2, #3
 800092c:	629a      	str	r2, [r3, #40]	@ 0x28
 800092e:	4b3b      	ldr	r3, [pc, #236]	@ (8000a1c <MX_DMA_Init+0x174>)
 8000930:	2200      	movs	r2, #0
 8000932:	62da      	str	r2, [r3, #44]	@ 0x2c
 8000934:	4b39      	ldr	r3, [pc, #228]	@ (8000a1c <MX_DMA_Init+0x174>)
 8000936:	2200      	movs	r2, #0
 8000938:	631a      	str	r2, [r3, #48]	@ 0x30
 800093a:	4838      	ldr	r0, [pc, #224]	@ (8000a1c <MX_DMA_Init+0x174>)
 800093c:	f001 fa7c 	bl	8001e38 <HAL_DMA_Init>
 8000940:	4603      	mov	r3, r0
 8000942:	2b00      	cmp	r3, #0
 8000944:	d001      	beq.n	800094a <MX_DMA_Init+0xa2>
 8000946:	f000 f891 	bl	8000a6c <Error_Handler>
 800094a:	4b36      	ldr	r3, [pc, #216]	@ (8000a24 <MX_DMA_Init+0x17c>)
 800094c:	4a36      	ldr	r2, [pc, #216]	@ (8000a28 <MX_DMA_Init+0x180>)
 800094e:	601a      	str	r2, [r3, #0]
 8000950:	4b34      	ldr	r3, [pc, #208]	@ (8000a24 <MX_DMA_Init+0x17c>)
 8000952:	2280      	movs	r2, #128	@ 0x80
 8000954:	609a      	str	r2, [r3, #8]
 8000956:	4b33      	ldr	r3, [pc, #204]	@ (8000a24 <MX_DMA_Init+0x17c>)
 8000958:	2200      	movs	r2, #0
 800095a:	60da      	str	r2, [r3, #12]
 800095c:	4b31      	ldr	r3, [pc, #196]	@ (8000a24 <MX_DMA_Init+0x17c>)
 800095e:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8000962:	611a      	str	r2, [r3, #16]
 8000964:	4b2f      	ldr	r3, [pc, #188]	@ (8000a24 <MX_DMA_Init+0x17c>)
 8000966:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 800096a:	615a      	str	r2, [r3, #20]
 800096c:	4b2d      	ldr	r3, [pc, #180]	@ (8000a24 <MX_DMA_Init+0x17c>)
 800096e:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 8000972:	619a      	str	r2, [r3, #24]
 8000974:	4b2b      	ldr	r3, [pc, #172]	@ (8000a24 <MX_DMA_Init+0x17c>)
 8000976:	2200      	movs	r2, #0
 8000978:	61da      	str	r2, [r3, #28]
 800097a:	4b2a      	ldr	r3, [pc, #168]	@ (8000a24 <MX_DMA_Init+0x17c>)
 800097c:	2200      	movs	r2, #0
 800097e:	621a      	str	r2, [r3, #32]
 8000980:	4b28      	ldr	r3, [pc, #160]	@ (8000a24 <MX_DMA_Init+0x17c>)
 8000982:	2200      	movs	r2, #0
 8000984:	605a      	str	r2, [r3, #4]
 8000986:	4b27      	ldr	r3, [pc, #156]	@ (8000a24 <MX_DMA_Init+0x17c>)
 8000988:	2204      	movs	r2, #4
 800098a:	625a      	str	r2, [r3, #36]	@ 0x24
 800098c:	4b25      	ldr	r3, [pc, #148]	@ (8000a24 <MX_DMA_Init+0x17c>)
 800098e:	2203      	movs	r2, #3
 8000990:	629a      	str	r2, [r3, #40]	@ 0x28
 8000992:	4b24      	ldr	r3, [pc, #144]	@ (8000a24 <MX_DMA_Init+0x17c>)
 8000994:	2200      	movs	r2, #0
 8000996:	62da      	str	r2, [r3, #44]	@ 0x2c
 8000998:	4b22      	ldr	r3, [pc, #136]	@ (8000a24 <MX_DMA_Init+0x17c>)
 800099a:	2200      	movs	r2, #0
 800099c:	631a      	str	r2, [r3, #48]	@ 0x30
 800099e:	4821      	ldr	r0, [pc, #132]	@ (8000a24 <MX_DMA_Init+0x17c>)
 80009a0:	f001 fa4a 	bl	8001e38 <HAL_DMA_Init>
 80009a4:	4603      	mov	r3, r0
 80009a6:	2b00      	cmp	r3, #0
 80009a8:	d001      	beq.n	80009ae <MX_DMA_Init+0x106>
 80009aa:	f000 f85f 	bl	8000a6c <Error_Handler>
 80009ae:	2200      	movs	r2, #0
 80009b0:	2100      	movs	r1, #0
 80009b2:	200f      	movs	r0, #15
 80009b4:	f001 f9fb 	bl	8001dae <HAL_NVIC_SetPriority>
 80009b8:	200f      	movs	r0, #15
 80009ba:	f001 fa14 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80009be:	2200      	movs	r2, #0
 80009c0:	2100      	movs	r1, #0
 80009c2:	2044      	movs	r0, #68	@ 0x44
 80009c4:	f001 f9f3 	bl	8001dae <HAL_NVIC_SetPriority>
 80009c8:	2044      	movs	r0, #68	@ 0x44
 80009ca:	f001 fa0c 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80009ce:	2200      	movs	r2, #0
 80009d0:	2100      	movs	r1, #0
 80009d2:	2011      	movs	r0, #17
 80009d4:	f001 f9eb 	bl	8001dae <HAL_NVIC_SetPriority>
 80009d8:	2011      	movs	r0, #17
 80009da:	f001 fa04 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80009de:	2200      	movs	r2, #0
 80009e0:	2100      	movs	r1, #0
 80009e2:	200c      	movs	r0, #12
 80009e4:	f001 f9e3 	bl	8001dae <HAL_NVIC_SetPriority>
 80009e8:	200c      	movs	r0, #12
 80009ea:	f001 f9fc 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80009ee:	2200      	movs	r2, #0
 80009f0:	2100      	movs	r1, #0
 80009f2:	202f      	movs	r0, #47	@ 0x2f
 80009f4:	f001 f9db 	bl	8001dae <HAL_NVIC_SetPriority>
 80009f8:	202f      	movs	r0, #47	@ 0x2f
 80009fa:	f001 f9f4 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80009fe:	2200      	movs	r2, #0
 8000a00:	2100      	movs	r1, #0
 8000a02:	203a      	movs	r0, #58	@ 0x3a
 8000a04:	f001 f9d3 	bl	8001dae <HAL_NVIC_SetPriority>
 8000a08:	203a      	movs	r0, #58	@ 0x3a
 8000a0a:	f001 f9ec 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 8000a0e:	bf00      	nop
 8000a10:	3708      	adds	r7, #8
 8000a12:	46bd      	mov	sp, r7
 8000a14:	bd80      	pop	{r7, pc}
 8000a16:	bf00      	nop
 8000a18:	40023800 	.word	0x40023800
 8000a1c:	200001d0 	.word	0x200001d0
 8000a20:	40026070 	.word	0x40026070
 8000a24:	20000230 	.word	0x20000230
 8000a28:	40026488 	.word	0x40026488

08000a2c <main>:
 8000a2c:	b580      	push	{r7, lr}
 8000a2e:	af00      	add	r7, sp, #0
 8000a30:	f001 f84c 	bl	8001acc <HAL_Init>
 8000a34:	f000 f820 	bl	8000a78 <SystemClock_Config>
 8000a38:	f000 ffd8 	bl	80019ec <MX_USART2_Init>
 8000a3c:	f7ff ff34 	bl	80008a8 <MX_DMA_Init>
 8000a40:	f000 f9fe 	bl	8000e40 <MX_TIM1_Init>
 8000a44:	f000 fa72 	bl	8000f2c <MX_TIM2_Init>
 8000a48:	f000 fae2 	bl	8001010 <MX_TIM3_Init>
 8000a4c:	f000 fb3e 	bl	80010cc <MX_TIM6_Init>
 8000a50:	f000 fb8a 	bl	8001168 <MX_TIM8_Init>
 8000a54:	f000 fbfc 	bl	8001250 <MX_TIM13_Init>
 8000a58:	f000 fc58 	bl	800130c <MX_TIM14_Init>
 8000a5c:	4802      	ldr	r0, [pc, #8]	@ (8000a68 <main+0x3c>)
 8000a5e:	f003 fe9f 	bl	80047a0 <puts>
 8000a62:	bf00      	nop
 8000a64:	e7fd      	b.n	8000a62 <main+0x36>
 8000a66:	bf00      	nop
 8000a68:	080049f8 	.word	0x080049f8

08000a6c <Error_Handler>:
 8000a6c:	b480      	push	{r7}
 8000a6e:	af00      	add	r7, sp, #0
 8000a70:	b672      	cpsid	i
 8000a72:	bf00      	nop
 8000a74:	bf00      	nop
 8000a76:	e7fd      	b.n	8000a74 <Error_Handler+0x8>

08000a78 <SystemClock_Config>:
 8000a78:	b580      	push	{r7, lr}
 8000a7a:	b094      	sub	sp, #80	@ 0x50
 8000a7c:	af00      	add	r7, sp, #0
 8000a7e:	f107 0320 	add.w	r3, r7, #32
 8000a82:	2230      	movs	r2, #48	@ 0x30
 8000a84:	2100      	movs	r1, #0
 8000a86:	4618      	mov	r0, r3
 8000a88:	f7ff fce6 	bl	8000458 <memset>
 8000a8c:	f107 030c 	add.w	r3, r7, #12
 8000a90:	2200      	movs	r2, #0
 8000a92:	601a      	str	r2, [r3, #0]
 8000a94:	605a      	str	r2, [r3, #4]
 8000a96:	609a      	str	r2, [r3, #8]
 8000a98:	60da      	str	r2, [r3, #12]
 8000a9a:	611a      	str	r2, [r3, #16]
 8000a9c:	2300      	movs	r3, #0
 8000a9e:	60bb      	str	r3, [r7, #8]
 8000aa0:	4b28      	ldr	r3, [pc, #160]	@ (8000b44 <SystemClock_Config+0xcc>)
 8000aa2:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000aa4:	4a27      	ldr	r2, [pc, #156]	@ (8000b44 <SystemClock_Config+0xcc>)
 8000aa6:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8000aaa:	6413      	str	r3, [r2, #64]	@ 0x40
 8000aac:	4b25      	ldr	r3, [pc, #148]	@ (8000b44 <SystemClock_Config+0xcc>)
 8000aae:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000ab0:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8000ab4:	60bb      	str	r3, [r7, #8]
 8000ab6:	68bb      	ldr	r3, [r7, #8]
 8000ab8:	2300      	movs	r3, #0
 8000aba:	607b      	str	r3, [r7, #4]
 8000abc:	4b22      	ldr	r3, [pc, #136]	@ (8000b48 <SystemClock_Config+0xd0>)
 8000abe:	681b      	ldr	r3, [r3, #0]
 8000ac0:	4a21      	ldr	r2, [pc, #132]	@ (8000b48 <SystemClock_Config+0xd0>)
 8000ac2:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 8000ac6:	6013      	str	r3, [r2, #0]
 8000ac8:	4b1f      	ldr	r3, [pc, #124]	@ (8000b48 <SystemClock_Config+0xd0>)
 8000aca:	681b      	ldr	r3, [r3, #0]
 8000acc:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8000ad0:	607b      	str	r3, [r7, #4]
 8000ad2:	687b      	ldr	r3, [r7, #4]
 8000ad4:	2302      	movs	r3, #2
 8000ad6:	623b      	str	r3, [r7, #32]
 8000ad8:	2301      	movs	r3, #1
 8000ada:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8000adc:	2310      	movs	r3, #16
 8000ade:	633b      	str	r3, [r7, #48]	@ 0x30
 8000ae0:	2302      	movs	r3, #2
 8000ae2:	63bb      	str	r3, [r7, #56]	@ 0x38
 8000ae4:	2300      	movs	r3, #0
 8000ae6:	63fb      	str	r3, [r7, #60]	@ 0x3c
 8000ae8:	2308      	movs	r3, #8
 8000aea:	643b      	str	r3, [r7, #64]	@ 0x40
 8000aec:	2332      	movs	r3, #50	@ 0x32
 8000aee:	647b      	str	r3, [r7, #68]	@ 0x44
 8000af0:	2302      	movs	r3, #2
 8000af2:	64bb      	str	r3, [r7, #72]	@ 0x48
 8000af4:	2307      	movs	r3, #7
 8000af6:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8000af8:	f107 0320 	add.w	r3, r7, #32
 8000afc:	4618      	mov	r0, r3
 8000afe:	f001 fe7f 	bl	8002800 <HAL_RCC_OscConfig>
 8000b02:	4603      	mov	r3, r0
 8000b04:	2b00      	cmp	r3, #0
 8000b06:	d001      	beq.n	8000b0c <SystemClock_Config+0x94>
 8000b08:	f7ff ffb0 	bl	8000a6c <Error_Handler>
 8000b0c:	230f      	movs	r3, #15
 8000b0e:	60fb      	str	r3, [r7, #12]
 8000b10:	2302      	movs	r3, #2
 8000b12:	613b      	str	r3, [r7, #16]
 8000b14:	2300      	movs	r3, #0
 8000b16:	617b      	str	r3, [r7, #20]
 8000b18:	f44f 53a0 	mov.w	r3, #5120	@ 0x1400
 8000b1c:	61bb      	str	r3, [r7, #24]
 8000b1e:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8000b22:	61fb      	str	r3, [r7, #28]
 8000b24:	f107 030c 	add.w	r3, r7, #12
 8000b28:	2101      	movs	r1, #1
 8000b2a:	4618      	mov	r0, r3
 8000b2c:	f002 f8e0 	bl	8002cf0 <HAL_RCC_ClockConfig>
 8000b30:	4603      	mov	r3, r0
 8000b32:	2b00      	cmp	r3, #0
 8000b34:	d001      	beq.n	8000b3a <SystemClock_Config+0xc2>
 8000b36:	f7ff ff99 	bl	8000a6c <Error_Handler>
 8000b3a:	bf00      	nop
 8000b3c:	3750      	adds	r7, #80	@ 0x50
 8000b3e:	46bd      	mov	sp, r7
 8000b40:	bd80      	pop	{r7, pc}
 8000b42:	bf00      	nop
 8000b44:	40023800 	.word	0x40023800
 8000b48:	40007000 	.word	0x40007000

08000b4c <HAL_MspInit>:
 8000b4c:	b580      	push	{r7, lr}
 8000b4e:	b082      	sub	sp, #8
 8000b50:	af00      	add	r7, sp, #0
 8000b52:	2300      	movs	r3, #0
 8000b54:	607b      	str	r3, [r7, #4]
 8000b56:	4b10      	ldr	r3, [pc, #64]	@ (8000b98 <HAL_MspInit+0x4c>)
 8000b58:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000b5a:	4a0f      	ldr	r2, [pc, #60]	@ (8000b98 <HAL_MspInit+0x4c>)
 8000b5c:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 8000b60:	6453      	str	r3, [r2, #68]	@ 0x44
 8000b62:	4b0d      	ldr	r3, [pc, #52]	@ (8000b98 <HAL_MspInit+0x4c>)
 8000b64:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000b66:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8000b6a:	607b      	str	r3, [r7, #4]
 8000b6c:	687b      	ldr	r3, [r7, #4]
 8000b6e:	2300      	movs	r3, #0
 8000b70:	603b      	str	r3, [r7, #0]
 8000b72:	4b09      	ldr	r3, [pc, #36]	@ (8000b98 <HAL_MspInit+0x4c>)
 8000b74:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000b76:	4a08      	ldr	r2, [pc, #32]	@ (8000b98 <HAL_MspInit+0x4c>)
 8000b78:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8000b7c:	6413      	str	r3, [r2, #64]	@ 0x40
 8000b7e:	4b06      	ldr	r3, [pc, #24]	@ (8000b98 <HAL_MspInit+0x4c>)
 8000b80:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000b82:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8000b86:	603b      	str	r3, [r7, #0]
 8000b88:	683b      	ldr	r3, [r7, #0]
 8000b8a:	2007      	movs	r0, #7
 8000b8c:	f001 f904 	bl	8001d98 <HAL_NVIC_SetPriorityGrouping>
 8000b90:	bf00      	nop
 8000b92:	3708      	adds	r7, #8
 8000b94:	46bd      	mov	sp, r7
 8000b96:	bd80      	pop	{r7, pc}
 8000b98:	40023800 	.word	0x40023800

08000b9c <NMI_Handler>:
 8000b9c:	b480      	push	{r7}
 8000b9e:	af00      	add	r7, sp, #0
 8000ba0:	bf00      	nop
 8000ba2:	46bd      	mov	sp, r7
 8000ba4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ba8:	4770      	bx	lr

08000baa <HardFault_Handler>:
 8000baa:	b480      	push	{r7}
 8000bac:	af00      	add	r7, sp, #0
 8000bae:	bf00      	nop
 8000bb0:	46bd      	mov	sp, r7
 8000bb2:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bb6:	4770      	bx	lr

08000bb8 <BusFault_Handler>:
 8000bb8:	b480      	push	{r7}
 8000bba:	af00      	add	r7, sp, #0
 8000bbc:	bf00      	nop
 8000bbe:	46bd      	mov	sp, r7
 8000bc0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bc4:	4770      	bx	lr

08000bc6 <DebugMon_Handler>:
 8000bc6:	b480      	push	{r7}
 8000bc8:	af00      	add	r7, sp, #0
 8000bca:	bf00      	nop
 8000bcc:	46bd      	mov	sp, r7
 8000bce:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bd2:	4770      	bx	lr

08000bd4 <PendSV_Handler>:
 8000bd4:	b480      	push	{r7}
 8000bd6:	af00      	add	r7, sp, #0
 8000bd8:	bf00      	nop
 8000bda:	46bd      	mov	sp, r7
 8000bdc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000be0:	4770      	bx	lr

08000be2 <MemManage_Handler>:
 8000be2:	b480      	push	{r7}
 8000be4:	af00      	add	r7, sp, #0
 8000be6:	bf00      	nop
 8000be8:	46bd      	mov	sp, r7
 8000bea:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bee:	4770      	bx	lr

08000bf0 <UsageFault_Handler>:
 8000bf0:	b480      	push	{r7}
 8000bf2:	af00      	add	r7, sp, #0
 8000bf4:	bf00      	nop
 8000bf6:	46bd      	mov	sp, r7
 8000bf8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bfc:	4770      	bx	lr

08000bfe <SVC_Handler>:
 8000bfe:	b480      	push	{r7}
 8000c00:	af00      	add	r7, sp, #0
 8000c02:	bf00      	nop
 8000c04:	46bd      	mov	sp, r7
 8000c06:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c0a:	4770      	bx	lr

08000c0c <SysTick_Handler>:
 8000c0c:	b580      	push	{r7, lr}
 8000c0e:	af00      	add	r7, sp, #0
 8000c10:	f000 ffae 	bl	8001b70 <HAL_IncTick>
 8000c14:	bf00      	nop
 8000c16:	bd80      	pop	{r7, pc}

08000c18 <DMA1_Stream1_IRQHandler>:
 8000c18:	b580      	push	{r7, lr}
 8000c1a:	af00      	add	r7, sp, #0
 8000c1c:	4802      	ldr	r0, [pc, #8]	@ (8000c28 <DMA1_Stream1_IRQHandler+0x10>)
 8000c1e:	f001 fa17 	bl	8002050 <HAL_DMA_IRQHandler>
 8000c22:	bf00      	nop
 8000c24:	bd80      	pop	{r7, pc}
 8000c26:	bf00      	nop
 8000c28:	200004f4 	.word	0x200004f4

08000c2c <DMA1_Stream6_IRQHandler>:
 8000c2c:	b580      	push	{r7, lr}
 8000c2e:	af00      	add	r7, sp, #0
 8000c30:	4802      	ldr	r0, [pc, #8]	@ (8000c3c <DMA1_Stream6_IRQHandler+0x10>)
 8000c32:	f001 fa0d 	bl	8002050 <HAL_DMA_IRQHandler>
 8000c36:	bf00      	nop
 8000c38:	bd80      	pop	{r7, pc}
 8000c3a:	bf00      	nop
 8000c3c:	20000494 	.word	0x20000494

08000c40 <DMA1_Stream7_IRQHandler>:
 8000c40:	b580      	push	{r7, lr}
 8000c42:	af00      	add	r7, sp, #0
 8000c44:	4802      	ldr	r0, [pc, #8]	@ (8000c50 <DMA1_Stream7_IRQHandler+0x10>)
 8000c46:	f001 fa03 	bl	8002050 <HAL_DMA_IRQHandler>
 8000c4a:	bf00      	nop
 8000c4c:	bd80      	pop	{r7, pc}
 8000c4e:	bf00      	nop
 8000c50:	20000554 	.word	0x20000554

08000c54 <DMA2_Stream2_IRQHandler>:
 8000c54:	b580      	push	{r7, lr}
 8000c56:	af00      	add	r7, sp, #0
 8000c58:	4802      	ldr	r0, [pc, #8]	@ (8000c64 <DMA2_Stream2_IRQHandler+0x10>)
 8000c5a:	f001 f9f9 	bl	8002050 <HAL_DMA_IRQHandler>
 8000c5e:	bf00      	nop
 8000c60:	bd80      	pop	{r7, pc}
 8000c62:	bf00      	nop
 8000c64:	200005b4 	.word	0x200005b4

08000c68 <TIM1_UP_TIM10_IRQHandler>:
 8000c68:	b580      	push	{r7, lr}
 8000c6a:	af00      	add	r7, sp, #0
 8000c6c:	4802      	ldr	r0, [pc, #8]	@ (8000c78 <TIM1_UP_TIM10_IRQHandler+0x10>)
 8000c6e:	f002 fb02 	bl	8003276 <HAL_TIM_IRQHandler>
 8000c72:	bf00      	nop
 8000c74:	bd80      	pop	{r7, pc}
 8000c76:	bf00      	nop
 8000c78:	20000294 	.word	0x20000294

08000c7c <TIM3_IRQHandler>:
 8000c7c:	b580      	push	{r7, lr}
 8000c7e:	af00      	add	r7, sp, #0
 8000c80:	4802      	ldr	r0, [pc, #8]	@ (8000c8c <TIM3_IRQHandler+0x10>)
 8000c82:	f002 faf8 	bl	8003276 <HAL_TIM_IRQHandler>
 8000c86:	bf00      	nop
 8000c88:	bd80      	pop	{r7, pc}
 8000c8a:	bf00      	nop
 8000c8c:	20000324 	.word	0x20000324

08000c90 <TIM6_DAC_IRQHandler>:
 8000c90:	b580      	push	{r7, lr}
 8000c92:	af00      	add	r7, sp, #0
 8000c94:	4802      	ldr	r0, [pc, #8]	@ (8000ca0 <TIM6_DAC_IRQHandler+0x10>)
 8000c96:	f002 faee 	bl	8003276 <HAL_TIM_IRQHandler>
 8000c9a:	bf00      	nop
 8000c9c:	bd80      	pop	{r7, pc}
 8000c9e:	bf00      	nop
 8000ca0:	2000036c 	.word	0x2000036c

08000ca4 <TIM8_UP_TIM13_IRQHandler>:
 8000ca4:	b580      	push	{r7, lr}
 8000ca6:	af00      	add	r7, sp, #0
 8000ca8:	4803      	ldr	r0, [pc, #12]	@ (8000cb8 <TIM8_UP_TIM13_IRQHandler+0x14>)
 8000caa:	f002 fae4 	bl	8003276 <HAL_TIM_IRQHandler>
 8000cae:	4803      	ldr	r0, [pc, #12]	@ (8000cbc <TIM8_UP_TIM13_IRQHandler+0x18>)
 8000cb0:	f002 fae1 	bl	8003276 <HAL_TIM_IRQHandler>
 8000cb4:	bf00      	nop
 8000cb6:	bd80      	pop	{r7, pc}
 8000cb8:	200003b4 	.word	0x200003b4
 8000cbc:	200003fc 	.word	0x200003fc

08000cc0 <TIM8_TRG_COM_TIM14_IRQHandler>:
 8000cc0:	b580      	push	{r7, lr}
 8000cc2:	af00      	add	r7, sp, #0
 8000cc4:	4802      	ldr	r0, [pc, #8]	@ (8000cd0 <TIM8_TRG_COM_TIM14_IRQHandler+0x10>)
 8000cc6:	f002 fad6 	bl	8003276 <HAL_TIM_IRQHandler>
 8000cca:	bf00      	nop
 8000ccc:	bd80      	pop	{r7, pc}
 8000cce:	bf00      	nop
 8000cd0:	20000444 	.word	0x20000444

08000cd4 <_read>:
 8000cd4:	b580      	push	{r7, lr}
 8000cd6:	b086      	sub	sp, #24
 8000cd8:	af00      	add	r7, sp, #0
 8000cda:	60f8      	str	r0, [r7, #12]
 8000cdc:	60b9      	str	r1, [r7, #8]
 8000cde:	607a      	str	r2, [r7, #4]
 8000ce0:	2300      	movs	r3, #0
 8000ce2:	617b      	str	r3, [r7, #20]
 8000ce4:	e00a      	b.n	8000cfc <_read+0x28>
 8000ce6:	f3af 8000 	nop.w
 8000cea:	4601      	mov	r1, r0
 8000cec:	68bb      	ldr	r3, [r7, #8]
 8000cee:	1c5a      	adds	r2, r3, #1
 8000cf0:	60ba      	str	r2, [r7, #8]
 8000cf2:	b2ca      	uxtb	r2, r1
 8000cf4:	701a      	strb	r2, [r3, #0]
 8000cf6:	697b      	ldr	r3, [r7, #20]
 8000cf8:	3301      	adds	r3, #1
 8000cfa:	617b      	str	r3, [r7, #20]
 8000cfc:	697a      	ldr	r2, [r7, #20]
 8000cfe:	687b      	ldr	r3, [r7, #4]
 8000d00:	429a      	cmp	r2, r3
 8000d02:	dbf0      	blt.n	8000ce6 <_read+0x12>
 8000d04:	687b      	ldr	r3, [r7, #4]
 8000d06:	4618      	mov	r0, r3
 8000d08:	3718      	adds	r7, #24
 8000d0a:	46bd      	mov	sp, r7
 8000d0c:	bd80      	pop	{r7, pc}

08000d0e <_write>:
 8000d0e:	b580      	push	{r7, lr}
 8000d10:	b086      	sub	sp, #24
 8000d12:	af00      	add	r7, sp, #0
 8000d14:	60f8      	str	r0, [r7, #12]
 8000d16:	60b9      	str	r1, [r7, #8]
 8000d18:	607a      	str	r2, [r7, #4]
 8000d1a:	2300      	movs	r3, #0
 8000d1c:	617b      	str	r3, [r7, #20]
 8000d1e:	e009      	b.n	8000d34 <_write+0x26>
 8000d20:	68bb      	ldr	r3, [r7, #8]
 8000d22:	1c5a      	adds	r2, r3, #1
 8000d24:	60ba      	str	r2, [r7, #8]
 8000d26:	781b      	ldrb	r3, [r3, #0]
 8000d28:	4618      	mov	r0, r3
 8000d2a:	f000 fe4d 	bl	80019c8 <__io_putchar>
 8000d2e:	697b      	ldr	r3, [r7, #20]
 8000d30:	3301      	adds	r3, #1
 8000d32:	617b      	str	r3, [r7, #20]
 8000d34:	697a      	ldr	r2, [r7, #20]
 8000d36:	687b      	ldr	r3, [r7, #4]
 8000d38:	429a      	cmp	r2, r3
 8000d3a:	dbf1      	blt.n	8000d20 <_write+0x12>
 8000d3c:	687b      	ldr	r3, [r7, #4]
 8000d3e:	4618      	mov	r0, r3
 8000d40:	3718      	adds	r7, #24
 8000d42:	46bd      	mov	sp, r7
 8000d44:	bd80      	pop	{r7, pc}

08000d46 <_close>:
 8000d46:	b480      	push	{r7}
 8000d48:	b083      	sub	sp, #12
 8000d4a:	af00      	add	r7, sp, #0
 8000d4c:	6078      	str	r0, [r7, #4]
 8000d4e:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8000d52:	4618      	mov	r0, r3
 8000d54:	370c      	adds	r7, #12
 8000d56:	46bd      	mov	sp, r7
 8000d58:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d5c:	4770      	bx	lr

08000d5e <_fstat>:
 8000d5e:	b480      	push	{r7}
 8000d60:	b083      	sub	sp, #12
 8000d62:	af00      	add	r7, sp, #0
 8000d64:	6078      	str	r0, [r7, #4]
 8000d66:	6039      	str	r1, [r7, #0]
 8000d68:	683b      	ldr	r3, [r7, #0]
 8000d6a:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
 8000d6e:	605a      	str	r2, [r3, #4]
 8000d70:	2300      	movs	r3, #0
 8000d72:	4618      	mov	r0, r3
 8000d74:	370c      	adds	r7, #12
 8000d76:	46bd      	mov	sp, r7
 8000d78:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d7c:	4770      	bx	lr

08000d7e <_isatty>:
 8000d7e:	b480      	push	{r7}
 8000d80:	b083      	sub	sp, #12
 8000d82:	af00      	add	r7, sp, #0
 8000d84:	6078      	str	r0, [r7, #4]
 8000d86:	2301      	movs	r3, #1
 8000d88:	4618      	mov	r0, r3
 8000d8a:	370c      	adds	r7, #12
 8000d8c:	46bd      	mov	sp, r7
 8000d8e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d92:	4770      	bx	lr

08000d94 <_lseek>:
 8000d94:	b480      	push	{r7}
 8000d96:	b085      	sub	sp, #20
 8000d98:	af00      	add	r7, sp, #0
 8000d9a:	60f8      	str	r0, [r7, #12]
 8000d9c:	60b9      	str	r1, [r7, #8]
 8000d9e:	607a      	str	r2, [r7, #4]
 8000da0:	2300      	movs	r3, #0
 8000da2:	4618      	mov	r0, r3
 8000da4:	3714      	adds	r7, #20
 8000da6:	46bd      	mov	sp, r7
 8000da8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000dac:	4770      	bx	lr
	...

08000db0 <_sbrk>:
 8000db0:	b580      	push	{r7, lr}
 8000db2:	b086      	sub	sp, #24
 8000db4:	af00      	add	r7, sp, #0
 8000db6:	6078      	str	r0, [r7, #4]
 8000db8:	4a14      	ldr	r2, [pc, #80]	@ (8000e0c <_sbrk+0x5c>)
 8000dba:	4b15      	ldr	r3, [pc, #84]	@ (8000e10 <_sbrk+0x60>)
 8000dbc:	1ad3      	subs	r3, r2, r3
 8000dbe:	617b      	str	r3, [r7, #20]
 8000dc0:	697b      	ldr	r3, [r7, #20]
 8000dc2:	613b      	str	r3, [r7, #16]
 8000dc4:	4b13      	ldr	r3, [pc, #76]	@ (8000e14 <_sbrk+0x64>)
 8000dc6:	681b      	ldr	r3, [r3, #0]
 8000dc8:	2b00      	cmp	r3, #0
 8000dca:	d102      	bne.n	8000dd2 <_sbrk+0x22>
 8000dcc:	4b11      	ldr	r3, [pc, #68]	@ (8000e14 <_sbrk+0x64>)
 8000dce:	4a12      	ldr	r2, [pc, #72]	@ (8000e18 <_sbrk+0x68>)
 8000dd0:	601a      	str	r2, [r3, #0]
 8000dd2:	4b10      	ldr	r3, [pc, #64]	@ (8000e14 <_sbrk+0x64>)
 8000dd4:	681a      	ldr	r2, [r3, #0]
 8000dd6:	687b      	ldr	r3, [r7, #4]
 8000dd8:	4413      	add	r3, r2
 8000dda:	693a      	ldr	r2, [r7, #16]
 8000ddc:	429a      	cmp	r2, r3
 8000dde:	d207      	bcs.n	8000df0 <_sbrk+0x40>
 8000de0:	f003 fd78 	bl	80048d4 <__errno>
 8000de4:	4603      	mov	r3, r0
 8000de6:	220c      	movs	r2, #12
 8000de8:	601a      	str	r2, [r3, #0]
 8000dea:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8000dee:	e009      	b.n	8000e04 <_sbrk+0x54>
 8000df0:	4b08      	ldr	r3, [pc, #32]	@ (8000e14 <_sbrk+0x64>)
 8000df2:	681b      	ldr	r3, [r3, #0]
 8000df4:	60fb      	str	r3, [r7, #12]
 8000df6:	4b07      	ldr	r3, [pc, #28]	@ (8000e14 <_sbrk+0x64>)
 8000df8:	681a      	ldr	r2, [r3, #0]
 8000dfa:	687b      	ldr	r3, [r7, #4]
 8000dfc:	4413      	add	r3, r2
 8000dfe:	4a05      	ldr	r2, [pc, #20]	@ (8000e14 <_sbrk+0x64>)
 8000e00:	6013      	str	r3, [r2, #0]
 8000e02:	68fb      	ldr	r3, [r7, #12]
 8000e04:	4618      	mov	r0, r3
 8000e06:	3718      	adds	r7, #24
 8000e08:	46bd      	mov	sp, r7
 8000e0a:	bd80      	pop	{r7, pc}
 8000e0c:	20020000 	.word	0x20020000
 8000e10:	00000400 	.word	0x00000400
 8000e14:	20000290 	.word	0x20000290
 8000e18:	20000660 	.word	0x20000660

08000e1c <SystemInit>:
 8000e1c:	b480      	push	{r7}
 8000e1e:	af00      	add	r7, sp, #0
 8000e20:	4b06      	ldr	r3, [pc, #24]	@ (8000e3c <SystemInit+0x20>)
 8000e22:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8000e26:	4a05      	ldr	r2, [pc, #20]	@ (8000e3c <SystemInit+0x20>)
 8000e28:	f443 0370 	orr.w	r3, r3, #15728640	@ 0xf00000
 8000e2c:	f8c2 3088 	str.w	r3, [r2, #136]	@ 0x88
 8000e30:	bf00      	nop
 8000e32:	46bd      	mov	sp, r7
 8000e34:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e38:	4770      	bx	lr
 8000e3a:	bf00      	nop
 8000e3c:	e000ed00 	.word	0xe000ed00

08000e40 <MX_TIM1_Init>:
 8000e40:	b580      	push	{r7, lr}
 8000e42:	b08c      	sub	sp, #48	@ 0x30
 8000e44:	af00      	add	r7, sp, #0
 8000e46:	4b35      	ldr	r3, [pc, #212]	@ (8000f1c <MX_TIM1_Init+0xdc>)
 8000e48:	2200      	movs	r2, #0
 8000e4a:	701a      	strb	r2, [r3, #0]
 8000e4c:	4b34      	ldr	r3, [pc, #208]	@ (8000f20 <MX_TIM1_Init+0xe0>)
 8000e4e:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000e50:	f003 0301 	and.w	r3, r3, #1
 8000e54:	2b00      	cmp	r3, #0
 8000e56:	d002      	beq.n	8000e5e <MX_TIM1_Init+0x1e>
 8000e58:	4832      	ldr	r0, [pc, #200]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000e5a:	f002 f9b8 	bl	80031ce <HAL_TIM_Base_DeInit>
 8000e5e:	f107 0320 	add.w	r3, r7, #32
 8000e62:	2200      	movs	r2, #0
 8000e64:	601a      	str	r2, [r3, #0]
 8000e66:	605a      	str	r2, [r3, #4]
 8000e68:	609a      	str	r2, [r3, #8]
 8000e6a:	60da      	str	r2, [r3, #12]
 8000e6c:	f107 0318 	add.w	r3, r7, #24
 8000e70:	2200      	movs	r2, #0
 8000e72:	601a      	str	r2, [r3, #0]
 8000e74:	605a      	str	r2, [r3, #4]
 8000e76:	1d3b      	adds	r3, r7, #4
 8000e78:	2200      	movs	r2, #0
 8000e7a:	601a      	str	r2, [r3, #0]
 8000e7c:	605a      	str	r2, [r3, #4]
 8000e7e:	609a      	str	r2, [r3, #8]
 8000e80:	60da      	str	r2, [r3, #12]
 8000e82:	611a      	str	r2, [r3, #16]
 8000e84:	4b27      	ldr	r3, [pc, #156]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000e86:	4a28      	ldr	r2, [pc, #160]	@ (8000f28 <MX_TIM1_Init+0xe8>)
 8000e88:	601a      	str	r2, [r3, #0]
 8000e8a:	4b26      	ldr	r3, [pc, #152]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000e8c:	f641 2279 	movw	r2, #6777	@ 0x1a79
 8000e90:	605a      	str	r2, [r3, #4]
 8000e92:	4b24      	ldr	r3, [pc, #144]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000e94:	2200      	movs	r2, #0
 8000e96:	609a      	str	r2, [r3, #8]
 8000e98:	4b22      	ldr	r3, [pc, #136]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000e9a:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 8000e9e:	60da      	str	r2, [r3, #12]
 8000ea0:	4b20      	ldr	r3, [pc, #128]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000ea2:	2200      	movs	r2, #0
 8000ea4:	611a      	str	r2, [r3, #16]
 8000ea6:	4b1f      	ldr	r3, [pc, #124]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000ea8:	2200      	movs	r2, #0
 8000eaa:	619a      	str	r2, [r3, #24]
 8000eac:	481d      	ldr	r0, [pc, #116]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000eae:	f002 f93f 	bl	8003130 <HAL_TIM_Base_Init>
 8000eb2:	4603      	mov	r3, r0
 8000eb4:	2b00      	cmp	r3, #0
 8000eb6:	d001      	beq.n	8000ebc <MX_TIM1_Init+0x7c>
 8000eb8:	f7ff fdd8 	bl	8000a6c <Error_Handler>
 8000ebc:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8000ec0:	623b      	str	r3, [r7, #32]
 8000ec2:	f107 0320 	add.w	r3, r7, #32
 8000ec6:	4619      	mov	r1, r3
 8000ec8:	4816      	ldr	r0, [pc, #88]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000eca:	f002 fac4 	bl	8003456 <HAL_TIM_ConfigClockSource>
 8000ece:	4603      	mov	r3, r0
 8000ed0:	2b00      	cmp	r3, #0
 8000ed2:	d001      	beq.n	8000ed8 <MX_TIM1_Init+0x98>
 8000ed4:	f7ff fdca 	bl	8000a6c <Error_Handler>
 8000ed8:	2300      	movs	r3, #0
 8000eda:	607b      	str	r3, [r7, #4]
 8000edc:	2310      	movs	r3, #16
 8000ede:	60bb      	str	r3, [r7, #8]
 8000ee0:	1d3b      	adds	r3, r7, #4
 8000ee2:	4619      	mov	r1, r3
 8000ee4:	480f      	ldr	r0, [pc, #60]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000ee6:	f002 fb7d 	bl	80035e4 <HAL_TIM_SlaveConfigSynchro>
 8000eea:	4603      	mov	r3, r0
 8000eec:	2b00      	cmp	r3, #0
 8000eee:	d001      	beq.n	8000ef4 <MX_TIM1_Init+0xb4>
 8000ef0:	f7ff fdbc 	bl	8000a6c <Error_Handler>
 8000ef4:	2340      	movs	r3, #64	@ 0x40
 8000ef6:	61bb      	str	r3, [r7, #24]
 8000ef8:	2380      	movs	r3, #128	@ 0x80
 8000efa:	61fb      	str	r3, [r7, #28]
 8000efc:	f107 0318 	add.w	r3, r7, #24
 8000f00:	4619      	mov	r1, r3
 8000f02:	4808      	ldr	r0, [pc, #32]	@ (8000f24 <MX_TIM1_Init+0xe4>)
 8000f04:	f002 fdb4 	bl	8003a70 <HAL_TIMEx_MasterConfigSynchronization>
 8000f08:	4603      	mov	r3, r0
 8000f0a:	2b00      	cmp	r3, #0
 8000f0c:	d001      	beq.n	8000f12 <MX_TIM1_Init+0xd2>
 8000f0e:	f7ff fdad 	bl	8000a6c <Error_Handler>
 8000f12:	bf00      	nop
 8000f14:	3730      	adds	r7, #48	@ 0x30
 8000f16:	46bd      	mov	sp, r7
 8000f18:	bd80      	pop	{r7, pc}
 8000f1a:	bf00      	nop
 8000f1c:	2000048c 	.word	0x2000048c
 8000f20:	40023800 	.word	0x40023800
 8000f24:	20000294 	.word	0x20000294
 8000f28:	40010000 	.word	0x40010000

08000f2c <MX_TIM2_Init>:
 8000f2c:	b580      	push	{r7, lr}
 8000f2e:	b08c      	sub	sp, #48	@ 0x30
 8000f30:	af00      	add	r7, sp, #0
 8000f32:	4b34      	ldr	r3, [pc, #208]	@ (8001004 <MX_TIM2_Init+0xd8>)
 8000f34:	2200      	movs	r2, #0
 8000f36:	701a      	strb	r2, [r3, #0]
 8000f38:	4b33      	ldr	r3, [pc, #204]	@ (8001008 <MX_TIM2_Init+0xdc>)
 8000f3a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000f3c:	f003 0301 	and.w	r3, r3, #1
 8000f40:	2b00      	cmp	r3, #0
 8000f42:	d002      	beq.n	8000f4a <MX_TIM2_Init+0x1e>
 8000f44:	4831      	ldr	r0, [pc, #196]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000f46:	f002 f942 	bl	80031ce <HAL_TIM_Base_DeInit>
 8000f4a:	f107 0320 	add.w	r3, r7, #32
 8000f4e:	2200      	movs	r2, #0
 8000f50:	601a      	str	r2, [r3, #0]
 8000f52:	605a      	str	r2, [r3, #4]
 8000f54:	609a      	str	r2, [r3, #8]
 8000f56:	60da      	str	r2, [r3, #12]
 8000f58:	f107 0318 	add.w	r3, r7, #24
 8000f5c:	2200      	movs	r2, #0
 8000f5e:	601a      	str	r2, [r3, #0]
 8000f60:	605a      	str	r2, [r3, #4]
 8000f62:	1d3b      	adds	r3, r7, #4
 8000f64:	2200      	movs	r2, #0
 8000f66:	601a      	str	r2, [r3, #0]
 8000f68:	605a      	str	r2, [r3, #4]
 8000f6a:	609a      	str	r2, [r3, #8]
 8000f6c:	60da      	str	r2, [r3, #12]
 8000f6e:	611a      	str	r2, [r3, #16]
 8000f70:	4b26      	ldr	r3, [pc, #152]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000f72:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 8000f76:	601a      	str	r2, [r3, #0]
 8000f78:	4b24      	ldr	r3, [pc, #144]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000f7a:	2200      	movs	r2, #0
 8000f7c:	605a      	str	r2, [r3, #4]
 8000f7e:	4b23      	ldr	r3, [pc, #140]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000f80:	2200      	movs	r2, #0
 8000f82:	609a      	str	r2, [r3, #8]
 8000f84:	4b21      	ldr	r3, [pc, #132]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000f86:	2216      	movs	r2, #22
 8000f88:	60da      	str	r2, [r3, #12]
 8000f8a:	4b20      	ldr	r3, [pc, #128]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000f8c:	2200      	movs	r2, #0
 8000f8e:	611a      	str	r2, [r3, #16]
 8000f90:	4b1e      	ldr	r3, [pc, #120]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000f92:	2200      	movs	r2, #0
 8000f94:	619a      	str	r2, [r3, #24]
 8000f96:	481d      	ldr	r0, [pc, #116]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000f98:	f002 f8ca 	bl	8003130 <HAL_TIM_Base_Init>
 8000f9c:	4603      	mov	r3, r0
 8000f9e:	2b00      	cmp	r3, #0
 8000fa0:	d001      	beq.n	8000fa6 <MX_TIM2_Init+0x7a>
 8000fa2:	f7ff fd63 	bl	8000a6c <Error_Handler>
 8000fa6:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8000faa:	623b      	str	r3, [r7, #32]
 8000fac:	f107 0320 	add.w	r3, r7, #32
 8000fb0:	4619      	mov	r1, r3
 8000fb2:	4816      	ldr	r0, [pc, #88]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000fb4:	f002 fa4f 	bl	8003456 <HAL_TIM_ConfigClockSource>
 8000fb8:	4603      	mov	r3, r0
 8000fba:	2b00      	cmp	r3, #0
 8000fbc:	d001      	beq.n	8000fc2 <MX_TIM2_Init+0x96>
 8000fbe:	f7ff fd55 	bl	8000a6c <Error_Handler>
 8000fc2:	2300      	movs	r3, #0
 8000fc4:	607b      	str	r3, [r7, #4]
 8000fc6:	2300      	movs	r3, #0
 8000fc8:	60bb      	str	r3, [r7, #8]
 8000fca:	1d3b      	adds	r3, r7, #4
 8000fcc:	4619      	mov	r1, r3
 8000fce:	480f      	ldr	r0, [pc, #60]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000fd0:	f002 fb08 	bl	80035e4 <HAL_TIM_SlaveConfigSynchro>
 8000fd4:	4603      	mov	r3, r0
 8000fd6:	2b00      	cmp	r3, #0
 8000fd8:	d001      	beq.n	8000fde <MX_TIM2_Init+0xb2>
 8000fda:	f7ff fd47 	bl	8000a6c <Error_Handler>
 8000fde:	2330      	movs	r3, #48	@ 0x30
 8000fe0:	61bb      	str	r3, [r7, #24]
 8000fe2:	2300      	movs	r3, #0
 8000fe4:	61fb      	str	r3, [r7, #28]
 8000fe6:	f107 0318 	add.w	r3, r7, #24
 8000fea:	4619      	mov	r1, r3
 8000fec:	4807      	ldr	r0, [pc, #28]	@ (800100c <MX_TIM2_Init+0xe0>)
 8000fee:	f002 fd3f 	bl	8003a70 <HAL_TIMEx_MasterConfigSynchronization>
 8000ff2:	4603      	mov	r3, r0
 8000ff4:	2b00      	cmp	r3, #0
 8000ff6:	d001      	beq.n	8000ffc <MX_TIM2_Init+0xd0>
 8000ff8:	f7ff fd38 	bl	8000a6c <Error_Handler>
 8000ffc:	bf00      	nop
 8000ffe:	3730      	adds	r7, #48	@ 0x30
 8001000:	46bd      	mov	sp, r7
 8001002:	bd80      	pop	{r7, pc}
 8001004:	2000048d 	.word	0x2000048d
 8001008:	40023800 	.word	0x40023800
 800100c:	200002dc 	.word	0x200002dc

08001010 <MX_TIM3_Init>:
 8001010:	b580      	push	{r7, lr}
 8001012:	b086      	sub	sp, #24
 8001014:	af00      	add	r7, sp, #0
 8001016:	4b29      	ldr	r3, [pc, #164]	@ (80010bc <MX_TIM3_Init+0xac>)
 8001018:	2200      	movs	r2, #0
 800101a:	701a      	strb	r2, [r3, #0]
 800101c:	4b28      	ldr	r3, [pc, #160]	@ (80010c0 <MX_TIM3_Init+0xb0>)
 800101e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001020:	f003 0302 	and.w	r3, r3, #2
 8001024:	2b00      	cmp	r3, #0
 8001026:	d002      	beq.n	800102e <MX_TIM3_Init+0x1e>
 8001028:	4826      	ldr	r0, [pc, #152]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 800102a:	f002 f8d0 	bl	80031ce <HAL_TIM_Base_DeInit>
 800102e:	f107 0308 	add.w	r3, r7, #8
 8001032:	2200      	movs	r2, #0
 8001034:	601a      	str	r2, [r3, #0]
 8001036:	605a      	str	r2, [r3, #4]
 8001038:	609a      	str	r2, [r3, #8]
 800103a:	60da      	str	r2, [r3, #12]
 800103c:	463b      	mov	r3, r7
 800103e:	2200      	movs	r2, #0
 8001040:	601a      	str	r2, [r3, #0]
 8001042:	605a      	str	r2, [r3, #4]
 8001044:	4b1f      	ldr	r3, [pc, #124]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 8001046:	4a20      	ldr	r2, [pc, #128]	@ (80010c8 <MX_TIM3_Init+0xb8>)
 8001048:	601a      	str	r2, [r3, #0]
 800104a:	4b1e      	ldr	r3, [pc, #120]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 800104c:	2200      	movs	r2, #0
 800104e:	605a      	str	r2, [r3, #4]
 8001050:	4b1c      	ldr	r3, [pc, #112]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 8001052:	2200      	movs	r2, #0
 8001054:	609a      	str	r2, [r3, #8]
 8001056:	4b1b      	ldr	r3, [pc, #108]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 8001058:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 800105c:	60da      	str	r2, [r3, #12]
 800105e:	4b19      	ldr	r3, [pc, #100]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 8001060:	2200      	movs	r2, #0
 8001062:	611a      	str	r2, [r3, #16]
 8001064:	4b17      	ldr	r3, [pc, #92]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 8001066:	2200      	movs	r2, #0
 8001068:	619a      	str	r2, [r3, #24]
 800106a:	4816      	ldr	r0, [pc, #88]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 800106c:	f002 f860 	bl	8003130 <HAL_TIM_Base_Init>
 8001070:	4603      	mov	r3, r0
 8001072:	2b00      	cmp	r3, #0
 8001074:	d001      	beq.n	800107a <MX_TIM3_Init+0x6a>
 8001076:	f7ff fcf9 	bl	8000a6c <Error_Handler>
 800107a:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 800107e:	60bb      	str	r3, [r7, #8]
 8001080:	f107 0308 	add.w	r3, r7, #8
 8001084:	4619      	mov	r1, r3
 8001086:	480f      	ldr	r0, [pc, #60]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 8001088:	f002 f9e5 	bl	8003456 <HAL_TIM_ConfigClockSource>
 800108c:	4603      	mov	r3, r0
 800108e:	2b00      	cmp	r3, #0
 8001090:	d001      	beq.n	8001096 <MX_TIM3_Init+0x86>
 8001092:	f7ff fceb 	bl	8000a6c <Error_Handler>
 8001096:	2300      	movs	r3, #0
 8001098:	603b      	str	r3, [r7, #0]
 800109a:	2300      	movs	r3, #0
 800109c:	607b      	str	r3, [r7, #4]
 800109e:	463b      	mov	r3, r7
 80010a0:	4619      	mov	r1, r3
 80010a2:	4808      	ldr	r0, [pc, #32]	@ (80010c4 <MX_TIM3_Init+0xb4>)
 80010a4:	f002 fce4 	bl	8003a70 <HAL_TIMEx_MasterConfigSynchronization>
 80010a8:	4603      	mov	r3, r0
 80010aa:	2b00      	cmp	r3, #0
 80010ac:	d001      	beq.n	80010b2 <MX_TIM3_Init+0xa2>
 80010ae:	f7ff fcdd 	bl	8000a6c <Error_Handler>
 80010b2:	bf00      	nop
 80010b4:	3718      	adds	r7, #24
 80010b6:	46bd      	mov	sp, r7
 80010b8:	bd80      	pop	{r7, pc}
 80010ba:	bf00      	nop
 80010bc:	2000048e 	.word	0x2000048e
 80010c0:	40023800 	.word	0x40023800
 80010c4:	20000324 	.word	0x20000324
 80010c8:	40000400 	.word	0x40000400

080010cc <MX_TIM6_Init>:
 80010cc:	b580      	push	{r7, lr}
 80010ce:	b086      	sub	sp, #24
 80010d0:	af00      	add	r7, sp, #0
 80010d2:	f107 0308 	add.w	r3, r7, #8
 80010d6:	2200      	movs	r2, #0
 80010d8:	601a      	str	r2, [r3, #0]
 80010da:	605a      	str	r2, [r3, #4]
 80010dc:	609a      	str	r2, [r3, #8]
 80010de:	60da      	str	r2, [r3, #12]
 80010e0:	463b      	mov	r3, r7
 80010e2:	2200      	movs	r2, #0
 80010e4:	601a      	str	r2, [r3, #0]
 80010e6:	605a      	str	r2, [r3, #4]
 80010e8:	4b1d      	ldr	r3, [pc, #116]	@ (8001160 <MX_TIM6_Init+0x94>)
 80010ea:	4a1e      	ldr	r2, [pc, #120]	@ (8001164 <MX_TIM6_Init+0x98>)
 80010ec:	601a      	str	r2, [r3, #0]
 80010ee:	4b1c      	ldr	r3, [pc, #112]	@ (8001160 <MX_TIM6_Init+0x94>)
 80010f0:	2200      	movs	r2, #0
 80010f2:	605a      	str	r2, [r3, #4]
 80010f4:	4b1a      	ldr	r3, [pc, #104]	@ (8001160 <MX_TIM6_Init+0x94>)
 80010f6:	2200      	movs	r2, #0
 80010f8:	609a      	str	r2, [r3, #8]
 80010fa:	4b19      	ldr	r3, [pc, #100]	@ (8001160 <MX_TIM6_Init+0x94>)
 80010fc:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 8001100:	60da      	str	r2, [r3, #12]
 8001102:	4b17      	ldr	r3, [pc, #92]	@ (8001160 <MX_TIM6_Init+0x94>)
 8001104:	2200      	movs	r2, #0
 8001106:	611a      	str	r2, [r3, #16]
 8001108:	4b15      	ldr	r3, [pc, #84]	@ (8001160 <MX_TIM6_Init+0x94>)
 800110a:	2200      	movs	r2, #0
 800110c:	619a      	str	r2, [r3, #24]
 800110e:	4814      	ldr	r0, [pc, #80]	@ (8001160 <MX_TIM6_Init+0x94>)
 8001110:	f002 f80e 	bl	8003130 <HAL_TIM_Base_Init>
 8001114:	4603      	mov	r3, r0
 8001116:	2b00      	cmp	r3, #0
 8001118:	d001      	beq.n	800111e <MX_TIM6_Init+0x52>
 800111a:	f7ff fca7 	bl	8000a6c <Error_Handler>
 800111e:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8001122:	60bb      	str	r3, [r7, #8]
 8001124:	f107 0308 	add.w	r3, r7, #8
 8001128:	4619      	mov	r1, r3
 800112a:	480d      	ldr	r0, [pc, #52]	@ (8001160 <MX_TIM6_Init+0x94>)
 800112c:	f002 f993 	bl	8003456 <HAL_TIM_ConfigClockSource>
 8001130:	4603      	mov	r3, r0
 8001132:	2b00      	cmp	r3, #0
 8001134:	d001      	beq.n	800113a <MX_TIM6_Init+0x6e>
 8001136:	f7ff fc99 	bl	8000a6c <Error_Handler>
 800113a:	2300      	movs	r3, #0
 800113c:	603b      	str	r3, [r7, #0]
 800113e:	2300      	movs	r3, #0
 8001140:	607b      	str	r3, [r7, #4]
 8001142:	463b      	mov	r3, r7
 8001144:	4619      	mov	r1, r3
 8001146:	4806      	ldr	r0, [pc, #24]	@ (8001160 <MX_TIM6_Init+0x94>)
 8001148:	f002 fc92 	bl	8003a70 <HAL_TIMEx_MasterConfigSynchronization>
 800114c:	4603      	mov	r3, r0
 800114e:	2b00      	cmp	r3, #0
 8001150:	d001      	beq.n	8001156 <MX_TIM6_Init+0x8a>
 8001152:	f7ff fc8b 	bl	8000a6c <Error_Handler>
 8001156:	bf00      	nop
 8001158:	3718      	adds	r7, #24
 800115a:	46bd      	mov	sp, r7
 800115c:	bd80      	pop	{r7, pc}
 800115e:	bf00      	nop
 8001160:	2000036c 	.word	0x2000036c
 8001164:	40001000 	.word	0x40001000

08001168 <MX_TIM8_Init>:
 8001168:	b580      	push	{r7, lr}
 800116a:	b08c      	sub	sp, #48	@ 0x30
 800116c:	af00      	add	r7, sp, #0
 800116e:	4b34      	ldr	r3, [pc, #208]	@ (8001240 <MX_TIM8_Init+0xd8>)
 8001170:	2200      	movs	r2, #0
 8001172:	701a      	strb	r2, [r3, #0]
 8001174:	4b33      	ldr	r3, [pc, #204]	@ (8001244 <MX_TIM8_Init+0xdc>)
 8001176:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001178:	f003 0302 	and.w	r3, r3, #2
 800117c:	2b00      	cmp	r3, #0
 800117e:	d002      	beq.n	8001186 <MX_TIM8_Init+0x1e>
 8001180:	4831      	ldr	r0, [pc, #196]	@ (8001248 <MX_TIM8_Init+0xe0>)
 8001182:	f002 f824 	bl	80031ce <HAL_TIM_Base_DeInit>
 8001186:	f107 0320 	add.w	r3, r7, #32
 800118a:	2200      	movs	r2, #0
 800118c:	601a      	str	r2, [r3, #0]
 800118e:	605a      	str	r2, [r3, #4]
 8001190:	609a      	str	r2, [r3, #8]
 8001192:	60da      	str	r2, [r3, #12]
 8001194:	f107 0318 	add.w	r3, r7, #24
 8001198:	2200      	movs	r2, #0
 800119a:	601a      	str	r2, [r3, #0]
 800119c:	605a      	str	r2, [r3, #4]
 800119e:	1d3b      	adds	r3, r7, #4
 80011a0:	2200      	movs	r2, #0
 80011a2:	601a      	str	r2, [r3, #0]
 80011a4:	605a      	str	r2, [r3, #4]
 80011a6:	609a      	str	r2, [r3, #8]
 80011a8:	60da      	str	r2, [r3, #12]
 80011aa:	611a      	str	r2, [r3, #16]
 80011ac:	4b26      	ldr	r3, [pc, #152]	@ (8001248 <MX_TIM8_Init+0xe0>)
 80011ae:	4a27      	ldr	r2, [pc, #156]	@ (800124c <MX_TIM8_Init+0xe4>)
 80011b0:	601a      	str	r2, [r3, #0]
 80011b2:	4b25      	ldr	r3, [pc, #148]	@ (8001248 <MX_TIM8_Init+0xe0>)
 80011b4:	2200      	movs	r2, #0
 80011b6:	605a      	str	r2, [r3, #4]
 80011b8:	4b23      	ldr	r3, [pc, #140]	@ (8001248 <MX_TIM8_Init+0xe0>)
 80011ba:	2200      	movs	r2, #0
 80011bc:	609a      	str	r2, [r3, #8]
 80011be:	4b22      	ldr	r3, [pc, #136]	@ (8001248 <MX_TIM8_Init+0xe0>)
 80011c0:	22de      	movs	r2, #222	@ 0xde
 80011c2:	60da      	str	r2, [r3, #12]
 80011c4:	4b20      	ldr	r3, [pc, #128]	@ (8001248 <MX_TIM8_Init+0xe0>)
 80011c6:	2200      	movs	r2, #0
 80011c8:	611a      	str	r2, [r3, #16]
 80011ca:	4b1f      	ldr	r3, [pc, #124]	@ (8001248 <MX_TIM8_Init+0xe0>)
 80011cc:	2200      	movs	r2, #0
 80011ce:	619a      	str	r2, [r3, #24]
 80011d0:	481d      	ldr	r0, [pc, #116]	@ (8001248 <MX_TIM8_Init+0xe0>)
 80011d2:	f001 ffad 	bl	8003130 <HAL_TIM_Base_Init>
 80011d6:	4603      	mov	r3, r0
 80011d8:	2b00      	cmp	r3, #0
 80011da:	d001      	beq.n	80011e0 <MX_TIM8_Init+0x78>
 80011dc:	f7ff fc46 	bl	8000a6c <Error_Handler>
 80011e0:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 80011e4:	623b      	str	r3, [r7, #32]
 80011e6:	f107 0320 	add.w	r3, r7, #32
 80011ea:	4619      	mov	r1, r3
 80011ec:	4816      	ldr	r0, [pc, #88]	@ (8001248 <MX_TIM8_Init+0xe0>)
 80011ee:	f002 f932 	bl	8003456 <HAL_TIM_ConfigClockSource>
 80011f2:	4603      	mov	r3, r0
 80011f4:	2b00      	cmp	r3, #0
 80011f6:	d001      	beq.n	80011fc <MX_TIM8_Init+0x94>
 80011f8:	f7ff fc38 	bl	8000a6c <Error_Handler>
 80011fc:	2300      	movs	r3, #0
 80011fe:	607b      	str	r3, [r7, #4]
 8001200:	2300      	movs	r3, #0
 8001202:	60bb      	str	r3, [r7, #8]
 8001204:	1d3b      	adds	r3, r7, #4
 8001206:	4619      	mov	r1, r3
 8001208:	480f      	ldr	r0, [pc, #60]	@ (8001248 <MX_TIM8_Init+0xe0>)
 800120a:	f002 f9eb 	bl	80035e4 <HAL_TIM_SlaveConfigSynchro>
 800120e:	4603      	mov	r3, r0
 8001210:	2b00      	cmp	r3, #0
 8001212:	d001      	beq.n	8001218 <MX_TIM8_Init+0xb0>
 8001214:	f7ff fc2a 	bl	8000a6c <Error_Handler>
 8001218:	2300      	movs	r3, #0
 800121a:	61bb      	str	r3, [r7, #24]
 800121c:	2300      	movs	r3, #0
 800121e:	61fb      	str	r3, [r7, #28]
 8001220:	f107 0318 	add.w	r3, r7, #24
 8001224:	4619      	mov	r1, r3
 8001226:	4808      	ldr	r0, [pc, #32]	@ (8001248 <MX_TIM8_Init+0xe0>)
 8001228:	f002 fc22 	bl	8003a70 <HAL_TIMEx_MasterConfigSynchronization>
 800122c:	4603      	mov	r3, r0
 800122e:	2b00      	cmp	r3, #0
 8001230:	d001      	beq.n	8001236 <MX_TIM8_Init+0xce>
 8001232:	f7ff fc1b 	bl	8000a6c <Error_Handler>
 8001236:	bf00      	nop
 8001238:	3730      	adds	r7, #48	@ 0x30
 800123a:	46bd      	mov	sp, r7
 800123c:	bd80      	pop	{r7, pc}
 800123e:	bf00      	nop
 8001240:	2000048f 	.word	0x2000048f
 8001244:	40023800 	.word	0x40023800
 8001248:	200003b4 	.word	0x200003b4
 800124c:	40010400 	.word	0x40010400

08001250 <MX_TIM13_Init>:
 8001250:	b580      	push	{r7, lr}
 8001252:	b086      	sub	sp, #24
 8001254:	af00      	add	r7, sp, #0
 8001256:	4b29      	ldr	r3, [pc, #164]	@ (80012fc <MX_TIM13_Init+0xac>)
 8001258:	2200      	movs	r2, #0
 800125a:	701a      	strb	r2, [r3, #0]
 800125c:	4b28      	ldr	r3, [pc, #160]	@ (8001300 <MX_TIM13_Init+0xb0>)
 800125e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001260:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8001264:	2b00      	cmp	r3, #0
 8001266:	d002      	beq.n	800126e <MX_TIM13_Init+0x1e>
 8001268:	4826      	ldr	r0, [pc, #152]	@ (8001304 <MX_TIM13_Init+0xb4>)
 800126a:	f001 ffb0 	bl	80031ce <HAL_TIM_Base_DeInit>
 800126e:	f107 0308 	add.w	r3, r7, #8
 8001272:	2200      	movs	r2, #0
 8001274:	601a      	str	r2, [r3, #0]
 8001276:	605a      	str	r2, [r3, #4]
 8001278:	609a      	str	r2, [r3, #8]
 800127a:	60da      	str	r2, [r3, #12]
 800127c:	463b      	mov	r3, r7
 800127e:	2200      	movs	r2, #0
 8001280:	601a      	str	r2, [r3, #0]
 8001282:	605a      	str	r2, [r3, #4]
 8001284:	4b1f      	ldr	r3, [pc, #124]	@ (8001304 <MX_TIM13_Init+0xb4>)
 8001286:	4a20      	ldr	r2, [pc, #128]	@ (8001308 <MX_TIM13_Init+0xb8>)
 8001288:	601a      	str	r2, [r3, #0]
 800128a:	4b1e      	ldr	r3, [pc, #120]	@ (8001304 <MX_TIM13_Init+0xb4>)
 800128c:	2200      	movs	r2, #0
 800128e:	605a      	str	r2, [r3, #4]
 8001290:	4b1c      	ldr	r3, [pc, #112]	@ (8001304 <MX_TIM13_Init+0xb4>)
 8001292:	2200      	movs	r2, #0
 8001294:	609a      	str	r2, [r3, #8]
 8001296:	4b1b      	ldr	r3, [pc, #108]	@ (8001304 <MX_TIM13_Init+0xb4>)
 8001298:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 800129c:	60da      	str	r2, [r3, #12]
 800129e:	4b19      	ldr	r3, [pc, #100]	@ (8001304 <MX_TIM13_Init+0xb4>)
 80012a0:	2200      	movs	r2, #0
 80012a2:	611a      	str	r2, [r3, #16]
 80012a4:	4b17      	ldr	r3, [pc, #92]	@ (8001304 <MX_TIM13_Init+0xb4>)
 80012a6:	2200      	movs	r2, #0
 80012a8:	619a      	str	r2, [r3, #24]
 80012aa:	4816      	ldr	r0, [pc, #88]	@ (8001304 <MX_TIM13_Init+0xb4>)
 80012ac:	f001 ff40 	bl	8003130 <HAL_TIM_Base_Init>
 80012b0:	4603      	mov	r3, r0
 80012b2:	2b00      	cmp	r3, #0
 80012b4:	d001      	beq.n	80012ba <MX_TIM13_Init+0x6a>
 80012b6:	f7ff fbd9 	bl	8000a6c <Error_Handler>
 80012ba:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 80012be:	60bb      	str	r3, [r7, #8]
 80012c0:	f107 0308 	add.w	r3, r7, #8
 80012c4:	4619      	mov	r1, r3
 80012c6:	480f      	ldr	r0, [pc, #60]	@ (8001304 <MX_TIM13_Init+0xb4>)
 80012c8:	f002 f8c5 	bl	8003456 <HAL_TIM_ConfigClockSource>
 80012cc:	4603      	mov	r3, r0
 80012ce:	2b00      	cmp	r3, #0
 80012d0:	d001      	beq.n	80012d6 <MX_TIM13_Init+0x86>
 80012d2:	f7ff fbcb 	bl	8000a6c <Error_Handler>
 80012d6:	2300      	movs	r3, #0
 80012d8:	603b      	str	r3, [r7, #0]
 80012da:	2300      	movs	r3, #0
 80012dc:	607b      	str	r3, [r7, #4]
 80012de:	463b      	mov	r3, r7
 80012e0:	4619      	mov	r1, r3
 80012e2:	4808      	ldr	r0, [pc, #32]	@ (8001304 <MX_TIM13_Init+0xb4>)
 80012e4:	f002 fbc4 	bl	8003a70 <HAL_TIMEx_MasterConfigSynchronization>
 80012e8:	4603      	mov	r3, r0
 80012ea:	2b00      	cmp	r3, #0
 80012ec:	d001      	beq.n	80012f2 <MX_TIM13_Init+0xa2>
 80012ee:	f7ff fbbd 	bl	8000a6c <Error_Handler>
 80012f2:	bf00      	nop
 80012f4:	3718      	adds	r7, #24
 80012f6:	46bd      	mov	sp, r7
 80012f8:	bd80      	pop	{r7, pc}
 80012fa:	bf00      	nop
 80012fc:	20000490 	.word	0x20000490
 8001300:	40023800 	.word	0x40023800
 8001304:	200003fc 	.word	0x200003fc
 8001308:	40001c00 	.word	0x40001c00

0800130c <MX_TIM14_Init>:
 800130c:	b580      	push	{r7, lr}
 800130e:	b086      	sub	sp, #24
 8001310:	af00      	add	r7, sp, #0
 8001312:	f107 0308 	add.w	r3, r7, #8
 8001316:	2200      	movs	r2, #0
 8001318:	601a      	str	r2, [r3, #0]
 800131a:	605a      	str	r2, [r3, #4]
 800131c:	609a      	str	r2, [r3, #8]
 800131e:	60da      	str	r2, [r3, #12]
 8001320:	463b      	mov	r3, r7
 8001322:	2200      	movs	r2, #0
 8001324:	601a      	str	r2, [r3, #0]
 8001326:	605a      	str	r2, [r3, #4]
 8001328:	4b1d      	ldr	r3, [pc, #116]	@ (80013a0 <MX_TIM14_Init+0x94>)
 800132a:	4a1e      	ldr	r2, [pc, #120]	@ (80013a4 <MX_TIM14_Init+0x98>)
 800132c:	601a      	str	r2, [r3, #0]
 800132e:	4b1c      	ldr	r3, [pc, #112]	@ (80013a0 <MX_TIM14_Init+0x94>)
 8001330:	2200      	movs	r2, #0
 8001332:	605a      	str	r2, [r3, #4]
 8001334:	4b1a      	ldr	r3, [pc, #104]	@ (80013a0 <MX_TIM14_Init+0x94>)
 8001336:	2200      	movs	r2, #0
 8001338:	609a      	str	r2, [r3, #8]
 800133a:	4b19      	ldr	r3, [pc, #100]	@ (80013a0 <MX_TIM14_Init+0x94>)
 800133c:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 8001340:	60da      	str	r2, [r3, #12]
 8001342:	4b17      	ldr	r3, [pc, #92]	@ (80013a0 <MX_TIM14_Init+0x94>)
 8001344:	2200      	movs	r2, #0
 8001346:	611a      	str	r2, [r3, #16]
 8001348:	4b15      	ldr	r3, [pc, #84]	@ (80013a0 <MX_TIM14_Init+0x94>)
 800134a:	2200      	movs	r2, #0
 800134c:	619a      	str	r2, [r3, #24]
 800134e:	4814      	ldr	r0, [pc, #80]	@ (80013a0 <MX_TIM14_Init+0x94>)
 8001350:	f001 feee 	bl	8003130 <HAL_TIM_Base_Init>
 8001354:	4603      	mov	r3, r0
 8001356:	2b00      	cmp	r3, #0
 8001358:	d001      	beq.n	800135e <MX_TIM14_Init+0x52>
 800135a:	f7ff fb87 	bl	8000a6c <Error_Handler>
 800135e:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8001362:	60bb      	str	r3, [r7, #8]
 8001364:	f107 0308 	add.w	r3, r7, #8
 8001368:	4619      	mov	r1, r3
 800136a:	480d      	ldr	r0, [pc, #52]	@ (80013a0 <MX_TIM14_Init+0x94>)
 800136c:	f002 f873 	bl	8003456 <HAL_TIM_ConfigClockSource>
 8001370:	4603      	mov	r3, r0
 8001372:	2b00      	cmp	r3, #0
 8001374:	d001      	beq.n	800137a <MX_TIM14_Init+0x6e>
 8001376:	f7ff fb79 	bl	8000a6c <Error_Handler>
 800137a:	2300      	movs	r3, #0
 800137c:	603b      	str	r3, [r7, #0]
 800137e:	2300      	movs	r3, #0
 8001380:	607b      	str	r3, [r7, #4]
 8001382:	463b      	mov	r3, r7
 8001384:	4619      	mov	r1, r3
 8001386:	4806      	ldr	r0, [pc, #24]	@ (80013a0 <MX_TIM14_Init+0x94>)
 8001388:	f002 fb72 	bl	8003a70 <HAL_TIMEx_MasterConfigSynchronization>
 800138c:	4603      	mov	r3, r0
 800138e:	2b00      	cmp	r3, #0
 8001390:	d001      	beq.n	8001396 <MX_TIM14_Init+0x8a>
 8001392:	f7ff fb6b 	bl	8000a6c <Error_Handler>
 8001396:	bf00      	nop
 8001398:	3718      	adds	r7, #24
 800139a:	46bd      	mov	sp, r7
 800139c:	bd80      	pop	{r7, pc}
 800139e:	bf00      	nop
 80013a0:	20000444 	.word	0x20000444
 80013a4:	40002000 	.word	0x40002000

080013a8 <HAL_TIM_Base_MspInit>:
 80013a8:	b580      	push	{r7, lr}
 80013aa:	b08a      	sub	sp, #40	@ 0x28
 80013ac:	af00      	add	r7, sp, #0
 80013ae:	6078      	str	r0, [r7, #4]
 80013b0:	687b      	ldr	r3, [r7, #4]
 80013b2:	681b      	ldr	r3, [r3, #0]
 80013b4:	4a9d      	ldr	r2, [pc, #628]	@ (800162c <HAL_TIM_Base_MspInit+0x284>)
 80013b6:	4293      	cmp	r3, r2
 80013b8:	d131      	bne.n	800141e <HAL_TIM_Base_MspInit+0x76>
 80013ba:	2300      	movs	r3, #0
 80013bc:	627b      	str	r3, [r7, #36]	@ 0x24
 80013be:	4b9c      	ldr	r3, [pc, #624]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 80013c0:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 80013c2:	4a9b      	ldr	r2, [pc, #620]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 80013c4:	f043 0301 	orr.w	r3, r3, #1
 80013c8:	6453      	str	r3, [r2, #68]	@ 0x44
 80013ca:	4b99      	ldr	r3, [pc, #612]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 80013cc:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 80013ce:	f003 0301 	and.w	r3, r3, #1
 80013d2:	627b      	str	r3, [r7, #36]	@ 0x24
 80013d4:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80013d6:	4b97      	ldr	r3, [pc, #604]	@ (8001634 <HAL_TIM_Base_MspInit+0x28c>)
 80013d8:	781b      	ldrb	r3, [r3, #0]
 80013da:	2b00      	cmp	r3, #0
 80013dc:	d107      	bne.n	80013ee <HAL_TIM_Base_MspInit+0x46>
 80013de:	2200      	movs	r2, #0
 80013e0:	2100      	movs	r1, #0
 80013e2:	2019      	movs	r0, #25
 80013e4:	f000 fce3 	bl	8001dae <HAL_NVIC_SetPriority>
 80013e8:	2019      	movs	r0, #25
 80013ea:	f000 fcfc 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80013ee:	4b91      	ldr	r3, [pc, #580]	@ (8001634 <HAL_TIM_Base_MspInit+0x28c>)
 80013f0:	781b      	ldrb	r3, [r3, #0]
 80013f2:	2b01      	cmp	r3, #1
 80013f4:	d107      	bne.n	8001406 <HAL_TIM_Base_MspInit+0x5e>
 80013f6:	2200      	movs	r2, #0
 80013f8:	2100      	movs	r1, #0
 80013fa:	2019      	movs	r0, #25
 80013fc:	f000 fcd7 	bl	8001dae <HAL_NVIC_SetPriority>
 8001400:	2019      	movs	r0, #25
 8001402:	f000 fcf0 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 8001406:	4b8b      	ldr	r3, [pc, #556]	@ (8001634 <HAL_TIM_Base_MspInit+0x28c>)
 8001408:	781b      	ldrb	r3, [r3, #0]
 800140a:	2b03      	cmp	r3, #3
 800140c:	d107      	bne.n	800141e <HAL_TIM_Base_MspInit+0x76>
 800140e:	2200      	movs	r2, #0
 8001410:	2100      	movs	r1, #0
 8001412:	2019      	movs	r0, #25
 8001414:	f000 fccb 	bl	8001dae <HAL_NVIC_SetPriority>
 8001418:	2019      	movs	r0, #25
 800141a:	f000 fce4 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 800141e:	687b      	ldr	r3, [r7, #4]
 8001420:	681b      	ldr	r3, [r3, #0]
 8001422:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8001426:	f040 80b6 	bne.w	8001596 <HAL_TIM_Base_MspInit+0x1ee>
 800142a:	2300      	movs	r3, #0
 800142c:	623b      	str	r3, [r7, #32]
 800142e:	4b80      	ldr	r3, [pc, #512]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 8001430:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001432:	4a7f      	ldr	r2, [pc, #508]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 8001434:	f043 0301 	orr.w	r3, r3, #1
 8001438:	6413      	str	r3, [r2, #64]	@ 0x40
 800143a:	4b7d      	ldr	r3, [pc, #500]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 800143c:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800143e:	f003 0301 	and.w	r3, r3, #1
 8001442:	623b      	str	r3, [r7, #32]
 8001444:	6a3b      	ldr	r3, [r7, #32]
 8001446:	4b7c      	ldr	r3, [pc, #496]	@ (8001638 <HAL_TIM_Base_MspInit+0x290>)
 8001448:	781b      	ldrb	r3, [r3, #0]
 800144a:	2b00      	cmp	r3, #0
 800144c:	d12f      	bne.n	80014ae <HAL_TIM_Base_MspInit+0x106>
 800144e:	4b7b      	ldr	r3, [pc, #492]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 8001450:	4a7b      	ldr	r2, [pc, #492]	@ (8001640 <HAL_TIM_Base_MspInit+0x298>)
 8001452:	601a      	str	r2, [r3, #0]
 8001454:	4b79      	ldr	r3, [pc, #484]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 8001456:	2200      	movs	r2, #0
 8001458:	609a      	str	r2, [r3, #8]
 800145a:	4b78      	ldr	r3, [pc, #480]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 800145c:	2200      	movs	r2, #0
 800145e:	60da      	str	r2, [r3, #12]
 8001460:	4b76      	ldr	r3, [pc, #472]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 8001462:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8001466:	611a      	str	r2, [r3, #16]
 8001468:	4b74      	ldr	r3, [pc, #464]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 800146a:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 800146e:	615a      	str	r2, [r3, #20]
 8001470:	4b72      	ldr	r3, [pc, #456]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 8001472:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 8001476:	619a      	str	r2, [r3, #24]
 8001478:	4b70      	ldr	r3, [pc, #448]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 800147a:	2200      	movs	r2, #0
 800147c:	61da      	str	r2, [r3, #28]
 800147e:	4b6f      	ldr	r3, [pc, #444]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 8001480:	2200      	movs	r2, #0
 8001482:	621a      	str	r2, [r3, #32]
 8001484:	4b6d      	ldr	r3, [pc, #436]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 8001486:	f04f 62c0 	mov.w	r2, #100663296	@ 0x6000000
 800148a:	605a      	str	r2, [r3, #4]
 800148c:	4b6b      	ldr	r3, [pc, #428]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 800148e:	2200      	movs	r2, #0
 8001490:	625a      	str	r2, [r3, #36]	@ 0x24
 8001492:	486a      	ldr	r0, [pc, #424]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 8001494:	f000 fcd0 	bl	8001e38 <HAL_DMA_Init>
 8001498:	4603      	mov	r3, r0
 800149a:	2b00      	cmp	r3, #0
 800149c:	d001      	beq.n	80014a2 <HAL_TIM_Base_MspInit+0xfa>
 800149e:	f7ff fae5 	bl	8000a6c <Error_Handler>
 80014a2:	687b      	ldr	r3, [r7, #4]
 80014a4:	4a65      	ldr	r2, [pc, #404]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 80014a6:	621a      	str	r2, [r3, #32]
 80014a8:	4a64      	ldr	r2, [pc, #400]	@ (800163c <HAL_TIM_Base_MspInit+0x294>)
 80014aa:	687b      	ldr	r3, [r7, #4]
 80014ac:	6393      	str	r3, [r2, #56]	@ 0x38
 80014ae:	4b62      	ldr	r3, [pc, #392]	@ (8001638 <HAL_TIM_Base_MspInit+0x290>)
 80014b0:	781b      	ldrb	r3, [r3, #0]
 80014b2:	2b02      	cmp	r3, #2
 80014b4:	d135      	bne.n	8001522 <HAL_TIM_Base_MspInit+0x17a>
 80014b6:	4b63      	ldr	r3, [pc, #396]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014b8:	4a63      	ldr	r2, [pc, #396]	@ (8001648 <HAL_TIM_Base_MspInit+0x2a0>)
 80014ba:	601a      	str	r2, [r3, #0]
 80014bc:	4b61      	ldr	r3, [pc, #388]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014be:	2200      	movs	r2, #0
 80014c0:	609a      	str	r2, [r3, #8]
 80014c2:	4b60      	ldr	r3, [pc, #384]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014c4:	2200      	movs	r2, #0
 80014c6:	60da      	str	r2, [r3, #12]
 80014c8:	4b5e      	ldr	r3, [pc, #376]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014ca:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 80014ce:	611a      	str	r2, [r3, #16]
 80014d0:	4b5c      	ldr	r3, [pc, #368]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014d2:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 80014d6:	615a      	str	r2, [r3, #20]
 80014d8:	4b5a      	ldr	r3, [pc, #360]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014da:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 80014de:	619a      	str	r2, [r3, #24]
 80014e0:	4b58      	ldr	r3, [pc, #352]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014e2:	2200      	movs	r2, #0
 80014e4:	61da      	str	r2, [r3, #28]
 80014e6:	4b57      	ldr	r3, [pc, #348]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014e8:	2200      	movs	r2, #0
 80014ea:	621a      	str	r2, [r3, #32]
 80014ec:	4b55      	ldr	r3, [pc, #340]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014ee:	f04f 62c0 	mov.w	r2, #100663296	@ 0x6000000
 80014f2:	605a      	str	r2, [r3, #4]
 80014f4:	4b53      	ldr	r3, [pc, #332]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014f6:	2200      	movs	r2, #0
 80014f8:	625a      	str	r2, [r3, #36]	@ 0x24
 80014fa:	4852      	ldr	r0, [pc, #328]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 80014fc:	f000 fc9c 	bl	8001e38 <HAL_DMA_Init>
 8001500:	4603      	mov	r3, r0
 8001502:	2b00      	cmp	r3, #0
 8001504:	d001      	beq.n	800150a <HAL_TIM_Base_MspInit+0x162>
 8001506:	f7ff fab1 	bl	8000a6c <Error_Handler>
 800150a:	687b      	ldr	r3, [r7, #4]
 800150c:	4a4d      	ldr	r2, [pc, #308]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 800150e:	621a      	str	r2, [r3, #32]
 8001510:	4a4c      	ldr	r2, [pc, #304]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 8001512:	687b      	ldr	r3, [r7, #4]
 8001514:	6393      	str	r3, [r2, #56]	@ 0x38
 8001516:	687b      	ldr	r3, [r7, #4]
 8001518:	4a4a      	ldr	r2, [pc, #296]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 800151a:	62da      	str	r2, [r3, #44]	@ 0x2c
 800151c:	4a49      	ldr	r2, [pc, #292]	@ (8001644 <HAL_TIM_Base_MspInit+0x29c>)
 800151e:	687b      	ldr	r3, [r7, #4]
 8001520:	6393      	str	r3, [r2, #56]	@ 0x38
 8001522:	4b45      	ldr	r3, [pc, #276]	@ (8001638 <HAL_TIM_Base_MspInit+0x290>)
 8001524:	781b      	ldrb	r3, [r3, #0]
 8001526:	2b04      	cmp	r3, #4
 8001528:	d135      	bne.n	8001596 <HAL_TIM_Base_MspInit+0x1ee>
 800152a:	4b48      	ldr	r3, [pc, #288]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 800152c:	4a48      	ldr	r2, [pc, #288]	@ (8001650 <HAL_TIM_Base_MspInit+0x2a8>)
 800152e:	601a      	str	r2, [r3, #0]
 8001530:	4b46      	ldr	r3, [pc, #280]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 8001532:	2200      	movs	r2, #0
 8001534:	609a      	str	r2, [r3, #8]
 8001536:	4b45      	ldr	r3, [pc, #276]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 8001538:	2200      	movs	r2, #0
 800153a:	60da      	str	r2, [r3, #12]
 800153c:	4b43      	ldr	r3, [pc, #268]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 800153e:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8001542:	611a      	str	r2, [r3, #16]
 8001544:	4b41      	ldr	r3, [pc, #260]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 8001546:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 800154a:	615a      	str	r2, [r3, #20]
 800154c:	4b3f      	ldr	r3, [pc, #252]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 800154e:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 8001552:	619a      	str	r2, [r3, #24]
 8001554:	4b3d      	ldr	r3, [pc, #244]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 8001556:	2200      	movs	r2, #0
 8001558:	61da      	str	r2, [r3, #28]
 800155a:	4b3c      	ldr	r3, [pc, #240]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 800155c:	2200      	movs	r2, #0
 800155e:	621a      	str	r2, [r3, #32]
 8001560:	4b3a      	ldr	r3, [pc, #232]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 8001562:	f04f 62c0 	mov.w	r2, #100663296	@ 0x6000000
 8001566:	605a      	str	r2, [r3, #4]
 8001568:	4b38      	ldr	r3, [pc, #224]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 800156a:	2200      	movs	r2, #0
 800156c:	625a      	str	r2, [r3, #36]	@ 0x24
 800156e:	4837      	ldr	r0, [pc, #220]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 8001570:	f000 fc62 	bl	8001e38 <HAL_DMA_Init>
 8001574:	4603      	mov	r3, r0
 8001576:	2b00      	cmp	r3, #0
 8001578:	d001      	beq.n	800157e <HAL_TIM_Base_MspInit+0x1d6>
 800157a:	f7ff fa77 	bl	8000a6c <Error_Handler>
 800157e:	687b      	ldr	r3, [r7, #4]
 8001580:	4a32      	ldr	r2, [pc, #200]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 8001582:	621a      	str	r2, [r3, #32]
 8001584:	4a31      	ldr	r2, [pc, #196]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 8001586:	687b      	ldr	r3, [r7, #4]
 8001588:	6393      	str	r3, [r2, #56]	@ 0x38
 800158a:	687b      	ldr	r3, [r7, #4]
 800158c:	4a2f      	ldr	r2, [pc, #188]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 800158e:	631a      	str	r2, [r3, #48]	@ 0x30
 8001590:	4a2e      	ldr	r2, [pc, #184]	@ (800164c <HAL_TIM_Base_MspInit+0x2a4>)
 8001592:	687b      	ldr	r3, [r7, #4]
 8001594:	6393      	str	r3, [r2, #56]	@ 0x38
 8001596:	687b      	ldr	r3, [r7, #4]
 8001598:	681b      	ldr	r3, [r3, #0]
 800159a:	4a2e      	ldr	r2, [pc, #184]	@ (8001654 <HAL_TIM_Base_MspInit+0x2ac>)
 800159c:	4293      	cmp	r3, r2
 800159e:	d119      	bne.n	80015d4 <HAL_TIM_Base_MspInit+0x22c>
 80015a0:	2300      	movs	r3, #0
 80015a2:	61fb      	str	r3, [r7, #28]
 80015a4:	4b22      	ldr	r3, [pc, #136]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 80015a6:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80015a8:	4a21      	ldr	r2, [pc, #132]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 80015aa:	f043 0302 	orr.w	r3, r3, #2
 80015ae:	6413      	str	r3, [r2, #64]	@ 0x40
 80015b0:	4b1f      	ldr	r3, [pc, #124]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 80015b2:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80015b4:	f003 0302 	and.w	r3, r3, #2
 80015b8:	61fb      	str	r3, [r7, #28]
 80015ba:	69fb      	ldr	r3, [r7, #28]
 80015bc:	4b26      	ldr	r3, [pc, #152]	@ (8001658 <HAL_TIM_Base_MspInit+0x2b0>)
 80015be:	781b      	ldrb	r3, [r3, #0]
 80015c0:	2b00      	cmp	r3, #0
 80015c2:	d107      	bne.n	80015d4 <HAL_TIM_Base_MspInit+0x22c>
 80015c4:	2200      	movs	r2, #0
 80015c6:	2100      	movs	r1, #0
 80015c8:	201d      	movs	r0, #29
 80015ca:	f000 fbf0 	bl	8001dae <HAL_NVIC_SetPriority>
 80015ce:	201d      	movs	r0, #29
 80015d0:	f000 fc09 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80015d4:	687b      	ldr	r3, [r7, #4]
 80015d6:	681b      	ldr	r3, [r3, #0]
 80015d8:	4a20      	ldr	r2, [pc, #128]	@ (800165c <HAL_TIM_Base_MspInit+0x2b4>)
 80015da:	4293      	cmp	r3, r2
 80015dc:	d115      	bne.n	800160a <HAL_TIM_Base_MspInit+0x262>
 80015de:	2300      	movs	r3, #0
 80015e0:	61bb      	str	r3, [r7, #24]
 80015e2:	4b13      	ldr	r3, [pc, #76]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 80015e4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80015e6:	4a12      	ldr	r2, [pc, #72]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 80015e8:	f043 0310 	orr.w	r3, r3, #16
 80015ec:	6413      	str	r3, [r2, #64]	@ 0x40
 80015ee:	4b10      	ldr	r3, [pc, #64]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 80015f0:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80015f2:	f003 0310 	and.w	r3, r3, #16
 80015f6:	61bb      	str	r3, [r7, #24]
 80015f8:	69bb      	ldr	r3, [r7, #24]
 80015fa:	2200      	movs	r2, #0
 80015fc:	2100      	movs	r1, #0
 80015fe:	2036      	movs	r0, #54	@ 0x36
 8001600:	f000 fbd5 	bl	8001dae <HAL_NVIC_SetPriority>
 8001604:	2036      	movs	r0, #54	@ 0x36
 8001606:	f000 fbee 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 800160a:	687b      	ldr	r3, [r7, #4]
 800160c:	681b      	ldr	r3, [r3, #0]
 800160e:	4a14      	ldr	r2, [pc, #80]	@ (8001660 <HAL_TIM_Base_MspInit+0x2b8>)
 8001610:	4293      	cmp	r3, r2
 8001612:	f040 80af 	bne.w	8001774 <HAL_TIM_Base_MspInit+0x3cc>
 8001616:	2300      	movs	r3, #0
 8001618:	617b      	str	r3, [r7, #20]
 800161a:	4b05      	ldr	r3, [pc, #20]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 800161c:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800161e:	4a04      	ldr	r2, [pc, #16]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 8001620:	f043 0302 	orr.w	r3, r3, #2
 8001624:	6453      	str	r3, [r2, #68]	@ 0x44
 8001626:	4b02      	ldr	r3, [pc, #8]	@ (8001630 <HAL_TIM_Base_MspInit+0x288>)
 8001628:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800162a:	e01b      	b.n	8001664 <HAL_TIM_Base_MspInit+0x2bc>
 800162c:	40010000 	.word	0x40010000
 8001630:	40023800 	.word	0x40023800
 8001634:	2000048c 	.word	0x2000048c
 8001638:	2000048d 	.word	0x2000048d
 800163c:	20000494 	.word	0x20000494
 8001640:	400260a0 	.word	0x400260a0
 8001644:	200004f4 	.word	0x200004f4
 8001648:	40026028 	.word	0x40026028
 800164c:	20000554 	.word	0x20000554
 8001650:	400260b8 	.word	0x400260b8
 8001654:	40000400 	.word	0x40000400
 8001658:	2000048e 	.word	0x2000048e
 800165c:	40001000 	.word	0x40001000
 8001660:	40010400 	.word	0x40010400
 8001664:	f003 0302 	and.w	r3, r3, #2
 8001668:	617b      	str	r3, [r7, #20]
 800166a:	697b      	ldr	r3, [r7, #20]
 800166c:	4b60      	ldr	r3, [pc, #384]	@ (80017f0 <HAL_TIM_Base_MspInit+0x448>)
 800166e:	781b      	ldrb	r3, [r3, #0]
 8001670:	2b00      	cmp	r3, #0
 8001672:	d13d      	bne.n	80016f0 <HAL_TIM_Base_MspInit+0x348>
 8001674:	4b5f      	ldr	r3, [pc, #380]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001676:	4a60      	ldr	r2, [pc, #384]	@ (80017f8 <HAL_TIM_Base_MspInit+0x450>)
 8001678:	601a      	str	r2, [r3, #0]
 800167a:	4b5e      	ldr	r3, [pc, #376]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 800167c:	2200      	movs	r2, #0
 800167e:	609a      	str	r2, [r3, #8]
 8001680:	4b5c      	ldr	r3, [pc, #368]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001682:	2200      	movs	r2, #0
 8001684:	60da      	str	r2, [r3, #12]
 8001686:	4b5b      	ldr	r3, [pc, #364]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001688:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 800168c:	611a      	str	r2, [r3, #16]
 800168e:	4b59      	ldr	r3, [pc, #356]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001690:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 8001694:	615a      	str	r2, [r3, #20]
 8001696:	4b57      	ldr	r3, [pc, #348]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001698:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 800169c:	619a      	str	r2, [r3, #24]
 800169e:	4b55      	ldr	r3, [pc, #340]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016a0:	2200      	movs	r2, #0
 80016a2:	61da      	str	r2, [r3, #28]
 80016a4:	4b53      	ldr	r3, [pc, #332]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016a6:	2200      	movs	r2, #0
 80016a8:	621a      	str	r2, [r3, #32]
 80016aa:	4b52      	ldr	r3, [pc, #328]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016ac:	f04f 6260 	mov.w	r2, #234881024	@ 0xe000000
 80016b0:	605a      	str	r2, [r3, #4]
 80016b2:	4b50      	ldr	r3, [pc, #320]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016b4:	2200      	movs	r2, #0
 80016b6:	625a      	str	r2, [r3, #36]	@ 0x24
 80016b8:	484e      	ldr	r0, [pc, #312]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016ba:	f000 fbbd 	bl	8001e38 <HAL_DMA_Init>
 80016be:	4603      	mov	r3, r0
 80016c0:	2b00      	cmp	r3, #0
 80016c2:	d001      	beq.n	80016c8 <HAL_TIM_Base_MspInit+0x320>
 80016c4:	f7ff f9d2 	bl	8000a6c <Error_Handler>
 80016c8:	687b      	ldr	r3, [r7, #4]
 80016ca:	4a4a      	ldr	r2, [pc, #296]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016cc:	621a      	str	r2, [r3, #32]
 80016ce:	4a49      	ldr	r2, [pc, #292]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016d0:	687b      	ldr	r3, [r7, #4]
 80016d2:	6393      	str	r3, [r2, #56]	@ 0x38
 80016d4:	687b      	ldr	r3, [r7, #4]
 80016d6:	4a47      	ldr	r2, [pc, #284]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016d8:	625a      	str	r2, [r3, #36]	@ 0x24
 80016da:	4a46      	ldr	r2, [pc, #280]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016dc:	687b      	ldr	r3, [r7, #4]
 80016de:	6393      	str	r3, [r2, #56]	@ 0x38
 80016e0:	2200      	movs	r2, #0
 80016e2:	2100      	movs	r1, #0
 80016e4:	202c      	movs	r0, #44	@ 0x2c
 80016e6:	f000 fb62 	bl	8001dae <HAL_NVIC_SetPriority>
 80016ea:	202c      	movs	r0, #44	@ 0x2c
 80016ec:	f000 fb7b 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80016f0:	4b3f      	ldr	r3, [pc, #252]	@ (80017f0 <HAL_TIM_Base_MspInit+0x448>)
 80016f2:	781b      	ldrb	r3, [r3, #0]
 80016f4:	2b01      	cmp	r3, #1
 80016f6:	d13d      	bne.n	8001774 <HAL_TIM_Base_MspInit+0x3cc>
 80016f8:	4b3e      	ldr	r3, [pc, #248]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 80016fa:	4a3f      	ldr	r2, [pc, #252]	@ (80017f8 <HAL_TIM_Base_MspInit+0x450>)
 80016fc:	601a      	str	r2, [r3, #0]
 80016fe:	4b3d      	ldr	r3, [pc, #244]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001700:	2200      	movs	r2, #0
 8001702:	609a      	str	r2, [r3, #8]
 8001704:	4b3b      	ldr	r3, [pc, #236]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001706:	2200      	movs	r2, #0
 8001708:	60da      	str	r2, [r3, #12]
 800170a:	4b3a      	ldr	r3, [pc, #232]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 800170c:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8001710:	611a      	str	r2, [r3, #16]
 8001712:	4b38      	ldr	r3, [pc, #224]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001714:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 8001718:	615a      	str	r2, [r3, #20]
 800171a:	4b36      	ldr	r3, [pc, #216]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 800171c:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 8001720:	619a      	str	r2, [r3, #24]
 8001722:	4b34      	ldr	r3, [pc, #208]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001724:	2200      	movs	r2, #0
 8001726:	61da      	str	r2, [r3, #28]
 8001728:	4b32      	ldr	r3, [pc, #200]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 800172a:	2200      	movs	r2, #0
 800172c:	621a      	str	r2, [r3, #32]
 800172e:	4b31      	ldr	r3, [pc, #196]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001730:	f04f 6260 	mov.w	r2, #234881024	@ 0xe000000
 8001734:	605a      	str	r2, [r3, #4]
 8001736:	4b2f      	ldr	r3, [pc, #188]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001738:	2200      	movs	r2, #0
 800173a:	625a      	str	r2, [r3, #36]	@ 0x24
 800173c:	482d      	ldr	r0, [pc, #180]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 800173e:	f000 fb7b 	bl	8001e38 <HAL_DMA_Init>
 8001742:	4603      	mov	r3, r0
 8001744:	2b00      	cmp	r3, #0
 8001746:	d001      	beq.n	800174c <HAL_TIM_Base_MspInit+0x3a4>
 8001748:	f7ff f990 	bl	8000a6c <Error_Handler>
 800174c:	687b      	ldr	r3, [r7, #4]
 800174e:	4a29      	ldr	r2, [pc, #164]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001750:	621a      	str	r2, [r3, #32]
 8001752:	4a28      	ldr	r2, [pc, #160]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001754:	687b      	ldr	r3, [r7, #4]
 8001756:	6393      	str	r3, [r2, #56]	@ 0x38
 8001758:	687b      	ldr	r3, [r7, #4]
 800175a:	4a26      	ldr	r2, [pc, #152]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 800175c:	625a      	str	r2, [r3, #36]	@ 0x24
 800175e:	4a25      	ldr	r2, [pc, #148]	@ (80017f4 <HAL_TIM_Base_MspInit+0x44c>)
 8001760:	687b      	ldr	r3, [r7, #4]
 8001762:	6393      	str	r3, [r2, #56]	@ 0x38
 8001764:	2200      	movs	r2, #0
 8001766:	2100      	movs	r1, #0
 8001768:	202c      	movs	r0, #44	@ 0x2c
 800176a:	f000 fb20 	bl	8001dae <HAL_NVIC_SetPriority>
 800176e:	202c      	movs	r0, #44	@ 0x2c
 8001770:	f000 fb39 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 8001774:	687b      	ldr	r3, [r7, #4]
 8001776:	681b      	ldr	r3, [r3, #0]
 8001778:	4a20      	ldr	r2, [pc, #128]	@ (80017fc <HAL_TIM_Base_MspInit+0x454>)
 800177a:	4293      	cmp	r3, r2
 800177c:	d119      	bne.n	80017b2 <HAL_TIM_Base_MspInit+0x40a>
 800177e:	2300      	movs	r3, #0
 8001780:	613b      	str	r3, [r7, #16]
 8001782:	4b1f      	ldr	r3, [pc, #124]	@ (8001800 <HAL_TIM_Base_MspInit+0x458>)
 8001784:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001786:	4a1e      	ldr	r2, [pc, #120]	@ (8001800 <HAL_TIM_Base_MspInit+0x458>)
 8001788:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 800178c:	6413      	str	r3, [r2, #64]	@ 0x40
 800178e:	4b1c      	ldr	r3, [pc, #112]	@ (8001800 <HAL_TIM_Base_MspInit+0x458>)
 8001790:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001792:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8001796:	613b      	str	r3, [r7, #16]
 8001798:	693b      	ldr	r3, [r7, #16]
 800179a:	4b1a      	ldr	r3, [pc, #104]	@ (8001804 <HAL_TIM_Base_MspInit+0x45c>)
 800179c:	781b      	ldrb	r3, [r3, #0]
 800179e:	2b00      	cmp	r3, #0
 80017a0:	d107      	bne.n	80017b2 <HAL_TIM_Base_MspInit+0x40a>
 80017a2:	2200      	movs	r2, #0
 80017a4:	2100      	movs	r1, #0
 80017a6:	202c      	movs	r0, #44	@ 0x2c
 80017a8:	f000 fb01 	bl	8001dae <HAL_NVIC_SetPriority>
 80017ac:	202c      	movs	r0, #44	@ 0x2c
 80017ae:	f000 fb1a 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80017b2:	687b      	ldr	r3, [r7, #4]
 80017b4:	681b      	ldr	r3, [r3, #0]
 80017b6:	4a14      	ldr	r2, [pc, #80]	@ (8001808 <HAL_TIM_Base_MspInit+0x460>)
 80017b8:	4293      	cmp	r3, r2
 80017ba:	d115      	bne.n	80017e8 <HAL_TIM_Base_MspInit+0x440>
 80017bc:	2300      	movs	r3, #0
 80017be:	60fb      	str	r3, [r7, #12]
 80017c0:	4b0f      	ldr	r3, [pc, #60]	@ (8001800 <HAL_TIM_Base_MspInit+0x458>)
 80017c2:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80017c4:	4a0e      	ldr	r2, [pc, #56]	@ (8001800 <HAL_TIM_Base_MspInit+0x458>)
 80017c6:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 80017ca:	6413      	str	r3, [r2, #64]	@ 0x40
 80017cc:	4b0c      	ldr	r3, [pc, #48]	@ (8001800 <HAL_TIM_Base_MspInit+0x458>)
 80017ce:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80017d0:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 80017d4:	60fb      	str	r3, [r7, #12]
 80017d6:	68fb      	ldr	r3, [r7, #12]
 80017d8:	2200      	movs	r2, #0
 80017da:	2100      	movs	r1, #0
 80017dc:	202d      	movs	r0, #45	@ 0x2d
 80017de:	f000 fae6 	bl	8001dae <HAL_NVIC_SetPriority>
 80017e2:	202d      	movs	r0, #45	@ 0x2d
 80017e4:	f000 faff 	bl	8001de6 <HAL_NVIC_EnableIRQ>
 80017e8:	bf00      	nop
 80017ea:	3728      	adds	r7, #40	@ 0x28
 80017ec:	46bd      	mov	sp, r7
 80017ee:	bd80      	pop	{r7, pc}
 80017f0:	2000048f 	.word	0x2000048f
 80017f4:	200005b4 	.word	0x200005b4
 80017f8:	40026440 	.word	0x40026440
 80017fc:	40001c00 	.word	0x40001c00
 8001800:	40023800 	.word	0x40023800
 8001804:	20000490 	.word	0x20000490
 8001808:	40002000 	.word	0x40002000

0800180c <HAL_TIM_Base_MspDeInit>:
 800180c:	b580      	push	{r7, lr}
 800180e:	b082      	sub	sp, #8
 8001810:	af00      	add	r7, sp, #0
 8001812:	6078      	str	r0, [r7, #4]
 8001814:	687b      	ldr	r3, [r7, #4]
 8001816:	681b      	ldr	r3, [r3, #0]
 8001818:	4a5f      	ldr	r2, [pc, #380]	@ (8001998 <HAL_TIM_Base_MspDeInit+0x18c>)
 800181a:	4293      	cmp	r3, r2
 800181c:	d11a      	bne.n	8001854 <HAL_TIM_Base_MspDeInit+0x48>
 800181e:	4b5f      	ldr	r3, [pc, #380]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 8001820:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001822:	4a5e      	ldr	r2, [pc, #376]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 8001824:	f023 0301 	bic.w	r3, r3, #1
 8001828:	6453      	str	r3, [r2, #68]	@ 0x44
 800182a:	4b5d      	ldr	r3, [pc, #372]	@ (80019a0 <HAL_TIM_Base_MspDeInit+0x194>)
 800182c:	781b      	ldrb	r3, [r3, #0]
 800182e:	2b00      	cmp	r3, #0
 8001830:	d102      	bne.n	8001838 <HAL_TIM_Base_MspDeInit+0x2c>
 8001832:	2019      	movs	r0, #25
 8001834:	f000 fae5 	bl	8001e02 <HAL_NVIC_DisableIRQ>
 8001838:	4b59      	ldr	r3, [pc, #356]	@ (80019a0 <HAL_TIM_Base_MspDeInit+0x194>)
 800183a:	781b      	ldrb	r3, [r3, #0]
 800183c:	2b01      	cmp	r3, #1
 800183e:	d102      	bne.n	8001846 <HAL_TIM_Base_MspDeInit+0x3a>
 8001840:	2019      	movs	r0, #25
 8001842:	f000 fade 	bl	8001e02 <HAL_NVIC_DisableIRQ>
 8001846:	4b56      	ldr	r3, [pc, #344]	@ (80019a0 <HAL_TIM_Base_MspDeInit+0x194>)
 8001848:	781b      	ldrb	r3, [r3, #0]
 800184a:	2b03      	cmp	r3, #3
 800184c:	d102      	bne.n	8001854 <HAL_TIM_Base_MspDeInit+0x48>
 800184e:	2019      	movs	r0, #25
 8001850:	f000 fad7 	bl	8001e02 <HAL_NVIC_DisableIRQ>
 8001854:	687b      	ldr	r3, [r7, #4]
 8001856:	681b      	ldr	r3, [r3, #0]
 8001858:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 800185c:	d12a      	bne.n	80018b4 <HAL_TIM_Base_MspDeInit+0xa8>
 800185e:	4b4f      	ldr	r3, [pc, #316]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 8001860:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001862:	4a4e      	ldr	r2, [pc, #312]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 8001864:	f023 0301 	bic.w	r3, r3, #1
 8001868:	6413      	str	r3, [r2, #64]	@ 0x40
 800186a:	4b4e      	ldr	r3, [pc, #312]	@ (80019a4 <HAL_TIM_Base_MspDeInit+0x198>)
 800186c:	781b      	ldrb	r3, [r3, #0]
 800186e:	2b00      	cmp	r3, #0
 8001870:	d104      	bne.n	800187c <HAL_TIM_Base_MspDeInit+0x70>
 8001872:	687b      	ldr	r3, [r7, #4]
 8001874:	6a1b      	ldr	r3, [r3, #32]
 8001876:	4618      	mov	r0, r3
 8001878:	f000 fb8c 	bl	8001f94 <HAL_DMA_DeInit>
 800187c:	4b49      	ldr	r3, [pc, #292]	@ (80019a4 <HAL_TIM_Base_MspDeInit+0x198>)
 800187e:	781b      	ldrb	r3, [r3, #0]
 8001880:	2b02      	cmp	r3, #2
 8001882:	d109      	bne.n	8001898 <HAL_TIM_Base_MspDeInit+0x8c>
 8001884:	687b      	ldr	r3, [r7, #4]
 8001886:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001888:	4618      	mov	r0, r3
 800188a:	f000 fb83 	bl	8001f94 <HAL_DMA_DeInit>
 800188e:	687b      	ldr	r3, [r7, #4]
 8001890:	6a1b      	ldr	r3, [r3, #32]
 8001892:	4618      	mov	r0, r3
 8001894:	f000 fb7e 	bl	8001f94 <HAL_DMA_DeInit>
 8001898:	4b42      	ldr	r3, [pc, #264]	@ (80019a4 <HAL_TIM_Base_MspDeInit+0x198>)
 800189a:	781b      	ldrb	r3, [r3, #0]
 800189c:	2b04      	cmp	r3, #4
 800189e:	d109      	bne.n	80018b4 <HAL_TIM_Base_MspDeInit+0xa8>
 80018a0:	687b      	ldr	r3, [r7, #4]
 80018a2:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80018a4:	4618      	mov	r0, r3
 80018a6:	f000 fb75 	bl	8001f94 <HAL_DMA_DeInit>
 80018aa:	687b      	ldr	r3, [r7, #4]
 80018ac:	6a1b      	ldr	r3, [r3, #32]
 80018ae:	4618      	mov	r0, r3
 80018b0:	f000 fb70 	bl	8001f94 <HAL_DMA_DeInit>
 80018b4:	687b      	ldr	r3, [r7, #4]
 80018b6:	681b      	ldr	r3, [r3, #0]
 80018b8:	4a3b      	ldr	r2, [pc, #236]	@ (80019a8 <HAL_TIM_Base_MspDeInit+0x19c>)
 80018ba:	4293      	cmp	r3, r2
 80018bc:	d10c      	bne.n	80018d8 <HAL_TIM_Base_MspDeInit+0xcc>
 80018be:	4b37      	ldr	r3, [pc, #220]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 80018c0:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80018c2:	4a36      	ldr	r2, [pc, #216]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 80018c4:	f023 0302 	bic.w	r3, r3, #2
 80018c8:	6413      	str	r3, [r2, #64]	@ 0x40
 80018ca:	4b38      	ldr	r3, [pc, #224]	@ (80019ac <HAL_TIM_Base_MspDeInit+0x1a0>)
 80018cc:	781b      	ldrb	r3, [r3, #0]
 80018ce:	2b00      	cmp	r3, #0
 80018d0:	d102      	bne.n	80018d8 <HAL_TIM_Base_MspDeInit+0xcc>
 80018d2:	201d      	movs	r0, #29
 80018d4:	f000 fa95 	bl	8001e02 <HAL_NVIC_DisableIRQ>
 80018d8:	687b      	ldr	r3, [r7, #4]
 80018da:	681b      	ldr	r3, [r3, #0]
 80018dc:	4a34      	ldr	r2, [pc, #208]	@ (80019b0 <HAL_TIM_Base_MspDeInit+0x1a4>)
 80018de:	4293      	cmp	r3, r2
 80018e0:	d108      	bne.n	80018f4 <HAL_TIM_Base_MspDeInit+0xe8>
 80018e2:	4b2e      	ldr	r3, [pc, #184]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 80018e4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80018e6:	4a2d      	ldr	r2, [pc, #180]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 80018e8:	f023 0310 	bic.w	r3, r3, #16
 80018ec:	6413      	str	r3, [r2, #64]	@ 0x40
 80018ee:	2036      	movs	r0, #54	@ 0x36
 80018f0:	f000 fa87 	bl	8001e02 <HAL_NVIC_DisableIRQ>
 80018f4:	687b      	ldr	r3, [r7, #4]
 80018f6:	681b      	ldr	r3, [r3, #0]
 80018f8:	4a2e      	ldr	r2, [pc, #184]	@ (80019b4 <HAL_TIM_Base_MspDeInit+0x1a8>)
 80018fa:	4293      	cmp	r3, r2
 80018fc:	d127      	bne.n	800194e <HAL_TIM_Base_MspDeInit+0x142>
 80018fe:	4b27      	ldr	r3, [pc, #156]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 8001900:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001902:	4a26      	ldr	r2, [pc, #152]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 8001904:	f023 0302 	bic.w	r3, r3, #2
 8001908:	6453      	str	r3, [r2, #68]	@ 0x44
 800190a:	4b2b      	ldr	r3, [pc, #172]	@ (80019b8 <HAL_TIM_Base_MspDeInit+0x1ac>)
 800190c:	781b      	ldrb	r3, [r3, #0]
 800190e:	2b00      	cmp	r3, #0
 8001910:	d10c      	bne.n	800192c <HAL_TIM_Base_MspDeInit+0x120>
 8001912:	687b      	ldr	r3, [r7, #4]
 8001914:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001916:	4618      	mov	r0, r3
 8001918:	f000 fb3c 	bl	8001f94 <HAL_DMA_DeInit>
 800191c:	687b      	ldr	r3, [r7, #4]
 800191e:	6a1b      	ldr	r3, [r3, #32]
 8001920:	4618      	mov	r0, r3
 8001922:	f000 fb37 	bl	8001f94 <HAL_DMA_DeInit>
 8001926:	202c      	movs	r0, #44	@ 0x2c
 8001928:	f000 fa6b 	bl	8001e02 <HAL_NVIC_DisableIRQ>
 800192c:	4b22      	ldr	r3, [pc, #136]	@ (80019b8 <HAL_TIM_Base_MspDeInit+0x1ac>)
 800192e:	781b      	ldrb	r3, [r3, #0]
 8001930:	2b01      	cmp	r3, #1
 8001932:	d10c      	bne.n	800194e <HAL_TIM_Base_MspDeInit+0x142>
 8001934:	687b      	ldr	r3, [r7, #4]
 8001936:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001938:	4618      	mov	r0, r3
 800193a:	f000 fb2b 	bl	8001f94 <HAL_DMA_DeInit>
 800193e:	687b      	ldr	r3, [r7, #4]
 8001940:	6a1b      	ldr	r3, [r3, #32]
 8001942:	4618      	mov	r0, r3
 8001944:	f000 fb26 	bl	8001f94 <HAL_DMA_DeInit>
 8001948:	202c      	movs	r0, #44	@ 0x2c
 800194a:	f000 fa5a 	bl	8001e02 <HAL_NVIC_DisableIRQ>
 800194e:	687b      	ldr	r3, [r7, #4]
 8001950:	681b      	ldr	r3, [r3, #0]
 8001952:	4a1a      	ldr	r2, [pc, #104]	@ (80019bc <HAL_TIM_Base_MspDeInit+0x1b0>)
 8001954:	4293      	cmp	r3, r2
 8001956:	d10c      	bne.n	8001972 <HAL_TIM_Base_MspDeInit+0x166>
 8001958:	4b10      	ldr	r3, [pc, #64]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 800195a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800195c:	4a0f      	ldr	r2, [pc, #60]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 800195e:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8001962:	6413      	str	r3, [r2, #64]	@ 0x40
 8001964:	4b16      	ldr	r3, [pc, #88]	@ (80019c0 <HAL_TIM_Base_MspDeInit+0x1b4>)
 8001966:	781b      	ldrb	r3, [r3, #0]
 8001968:	2b00      	cmp	r3, #0
 800196a:	d102      	bne.n	8001972 <HAL_TIM_Base_MspDeInit+0x166>
 800196c:	202c      	movs	r0, #44	@ 0x2c
 800196e:	f000 fa48 	bl	8001e02 <HAL_NVIC_DisableIRQ>
 8001972:	687b      	ldr	r3, [r7, #4]
 8001974:	681b      	ldr	r3, [r3, #0]
 8001976:	4a13      	ldr	r2, [pc, #76]	@ (80019c4 <HAL_TIM_Base_MspDeInit+0x1b8>)
 8001978:	4293      	cmp	r3, r2
 800197a:	d108      	bne.n	800198e <HAL_TIM_Base_MspDeInit+0x182>
 800197c:	4b07      	ldr	r3, [pc, #28]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 800197e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001980:	4a06      	ldr	r2, [pc, #24]	@ (800199c <HAL_TIM_Base_MspDeInit+0x190>)
 8001982:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 8001986:	6413      	str	r3, [r2, #64]	@ 0x40
 8001988:	202d      	movs	r0, #45	@ 0x2d
 800198a:	f000 fa3a 	bl	8001e02 <HAL_NVIC_DisableIRQ>
 800198e:	bf00      	nop
 8001990:	3708      	adds	r7, #8
 8001992:	46bd      	mov	sp, r7
 8001994:	bd80      	pop	{r7, pc}
 8001996:	bf00      	nop
 8001998:	40010000 	.word	0x40010000
 800199c:	40023800 	.word	0x40023800
 80019a0:	2000048c 	.word	0x2000048c
 80019a4:	2000048d 	.word	0x2000048d
 80019a8:	40000400 	.word	0x40000400
 80019ac:	2000048e 	.word	0x2000048e
 80019b0:	40001000 	.word	0x40001000
 80019b4:	40010400 	.word	0x40010400
 80019b8:	2000048f 	.word	0x2000048f
 80019bc:	40001c00 	.word	0x40001c00
 80019c0:	20000490 	.word	0x20000490
 80019c4:	40002000 	.word	0x40002000

080019c8 <__io_putchar>:
 80019c8:	b580      	push	{r7, lr}
 80019ca:	b082      	sub	sp, #8
 80019cc:	af00      	add	r7, sp, #0
 80019ce:	6078      	str	r0, [r7, #4]
 80019d0:	1d39      	adds	r1, r7, #4
 80019d2:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 80019d6:	2201      	movs	r2, #1
 80019d8:	4803      	ldr	r0, [pc, #12]	@ (80019e8 <__io_putchar+0x20>)
 80019da:	f002 f929 	bl	8003c30 <HAL_UART_Transmit>
 80019de:	687b      	ldr	r3, [r7, #4]
 80019e0:	4618      	mov	r0, r3
 80019e2:	3708      	adds	r7, #8
 80019e4:	46bd      	mov	sp, r7
 80019e6:	bd80      	pop	{r7, pc}
 80019e8:	20000614 	.word	0x20000614

080019ec <MX_USART2_Init>:
 80019ec:	b580      	push	{r7, lr}
 80019ee:	af00      	add	r7, sp, #0
 80019f0:	4b11      	ldr	r3, [pc, #68]	@ (8001a38 <MX_USART2_Init+0x4c>)
 80019f2:	4a12      	ldr	r2, [pc, #72]	@ (8001a3c <MX_USART2_Init+0x50>)
 80019f4:	601a      	str	r2, [r3, #0]
 80019f6:	4b10      	ldr	r3, [pc, #64]	@ (8001a38 <MX_USART2_Init+0x4c>)
 80019f8:	f44f 32e1 	mov.w	r2, #115200	@ 0x1c200
 80019fc:	605a      	str	r2, [r3, #4]
 80019fe:	4b0e      	ldr	r3, [pc, #56]	@ (8001a38 <MX_USART2_Init+0x4c>)
 8001a00:	220c      	movs	r2, #12
 8001a02:	615a      	str	r2, [r3, #20]
 8001a04:	4b0c      	ldr	r3, [pc, #48]	@ (8001a38 <MX_USART2_Init+0x4c>)
 8001a06:	2200      	movs	r2, #0
 8001a08:	609a      	str	r2, [r3, #8]
 8001a0a:	4b0b      	ldr	r3, [pc, #44]	@ (8001a38 <MX_USART2_Init+0x4c>)
 8001a0c:	2200      	movs	r2, #0
 8001a0e:	60da      	str	r2, [r3, #12]
 8001a10:	4b09      	ldr	r3, [pc, #36]	@ (8001a38 <MX_USART2_Init+0x4c>)
 8001a12:	2200      	movs	r2, #0
 8001a14:	611a      	str	r2, [r3, #16]
 8001a16:	4b08      	ldr	r3, [pc, #32]	@ (8001a38 <MX_USART2_Init+0x4c>)
 8001a18:	2200      	movs	r2, #0
 8001a1a:	619a      	str	r2, [r3, #24]
 8001a1c:	4b06      	ldr	r3, [pc, #24]	@ (8001a38 <MX_USART2_Init+0x4c>)
 8001a1e:	2200      	movs	r2, #0
 8001a20:	61da      	str	r2, [r3, #28]
 8001a22:	4805      	ldr	r0, [pc, #20]	@ (8001a38 <MX_USART2_Init+0x4c>)
 8001a24:	f002 f8b4 	bl	8003b90 <HAL_UART_Init>
 8001a28:	4603      	mov	r3, r0
 8001a2a:	2b00      	cmp	r3, #0
 8001a2c:	d001      	beq.n	8001a32 <MX_USART2_Init+0x46>
 8001a2e:	f7ff f81d 	bl	8000a6c <Error_Handler>
 8001a32:	bf00      	nop
 8001a34:	bd80      	pop	{r7, pc}
 8001a36:	bf00      	nop
 8001a38:	20000614 	.word	0x20000614
 8001a3c:	40004400 	.word	0x40004400

08001a40 <HAL_UART_MspInit>:
 8001a40:	b580      	push	{r7, lr}
 8001a42:	b08a      	sub	sp, #40	@ 0x28
 8001a44:	af00      	add	r7, sp, #0
 8001a46:	6078      	str	r0, [r7, #4]
 8001a48:	f107 0314 	add.w	r3, r7, #20
 8001a4c:	2200      	movs	r2, #0
 8001a4e:	601a      	str	r2, [r3, #0]
 8001a50:	605a      	str	r2, [r3, #4]
 8001a52:	609a      	str	r2, [r3, #8]
 8001a54:	60da      	str	r2, [r3, #12]
 8001a56:	611a      	str	r2, [r3, #16]
 8001a58:	687b      	ldr	r3, [r7, #4]
 8001a5a:	681b      	ldr	r3, [r3, #0]
 8001a5c:	4a18      	ldr	r2, [pc, #96]	@ (8001ac0 <HAL_UART_MspInit+0x80>)
 8001a5e:	4293      	cmp	r3, r2
 8001a60:	d129      	bne.n	8001ab6 <HAL_UART_MspInit+0x76>
 8001a62:	2300      	movs	r3, #0
 8001a64:	613b      	str	r3, [r7, #16]
 8001a66:	4b17      	ldr	r3, [pc, #92]	@ (8001ac4 <HAL_UART_MspInit+0x84>)
 8001a68:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001a6a:	4a16      	ldr	r2, [pc, #88]	@ (8001ac4 <HAL_UART_MspInit+0x84>)
 8001a6c:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 8001a70:	6413      	str	r3, [r2, #64]	@ 0x40
 8001a72:	4b14      	ldr	r3, [pc, #80]	@ (8001ac4 <HAL_UART_MspInit+0x84>)
 8001a74:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001a76:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8001a7a:	613b      	str	r3, [r7, #16]
 8001a7c:	693b      	ldr	r3, [r7, #16]
 8001a7e:	2300      	movs	r3, #0
 8001a80:	60fb      	str	r3, [r7, #12]
 8001a82:	4b10      	ldr	r3, [pc, #64]	@ (8001ac4 <HAL_UART_MspInit+0x84>)
 8001a84:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001a86:	4a0f      	ldr	r2, [pc, #60]	@ (8001ac4 <HAL_UART_MspInit+0x84>)
 8001a88:	f043 0301 	orr.w	r3, r3, #1
 8001a8c:	6313      	str	r3, [r2, #48]	@ 0x30
 8001a8e:	4b0d      	ldr	r3, [pc, #52]	@ (8001ac4 <HAL_UART_MspInit+0x84>)
 8001a90:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001a92:	f003 0301 	and.w	r3, r3, #1
 8001a96:	60fb      	str	r3, [r7, #12]
 8001a98:	68fb      	ldr	r3, [r7, #12]
 8001a9a:	230c      	movs	r3, #12
 8001a9c:	617b      	str	r3, [r7, #20]
 8001a9e:	2302      	movs	r3, #2
 8001aa0:	61bb      	str	r3, [r7, #24]
 8001aa2:	2303      	movs	r3, #3
 8001aa4:	623b      	str	r3, [r7, #32]
 8001aa6:	2307      	movs	r3, #7
 8001aa8:	627b      	str	r3, [r7, #36]	@ 0x24
 8001aaa:	f107 0314 	add.w	r3, r7, #20
 8001aae:	4619      	mov	r1, r3
 8001ab0:	4805      	ldr	r0, [pc, #20]	@ (8001ac8 <HAL_UART_MspInit+0x88>)
 8001ab2:	f000 fd09 	bl	80024c8 <HAL_GPIO_Init>
 8001ab6:	bf00      	nop
 8001ab8:	3728      	adds	r7, #40	@ 0x28
 8001aba:	46bd      	mov	sp, r7
 8001abc:	bd80      	pop	{r7, pc}
 8001abe:	bf00      	nop
 8001ac0:	40004400 	.word	0x40004400
 8001ac4:	40023800 	.word	0x40023800
 8001ac8:	40020000 	.word	0x40020000

08001acc <HAL_Init>:
 8001acc:	b580      	push	{r7, lr}
 8001ace:	af00      	add	r7, sp, #0
 8001ad0:	4b0e      	ldr	r3, [pc, #56]	@ (8001b0c <HAL_Init+0x40>)
 8001ad2:	681b      	ldr	r3, [r3, #0]
 8001ad4:	4a0d      	ldr	r2, [pc, #52]	@ (8001b0c <HAL_Init+0x40>)
 8001ad6:	f443 7300 	orr.w	r3, r3, #512	@ 0x200
 8001ada:	6013      	str	r3, [r2, #0]
 8001adc:	4b0b      	ldr	r3, [pc, #44]	@ (8001b0c <HAL_Init+0x40>)
 8001ade:	681b      	ldr	r3, [r3, #0]
 8001ae0:	4a0a      	ldr	r2, [pc, #40]	@ (8001b0c <HAL_Init+0x40>)
 8001ae2:	f443 6380 	orr.w	r3, r3, #1024	@ 0x400
 8001ae6:	6013      	str	r3, [r2, #0]
 8001ae8:	4b08      	ldr	r3, [pc, #32]	@ (8001b0c <HAL_Init+0x40>)
 8001aea:	681b      	ldr	r3, [r3, #0]
 8001aec:	4a07      	ldr	r2, [pc, #28]	@ (8001b0c <HAL_Init+0x40>)
 8001aee:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8001af2:	6013      	str	r3, [r2, #0]
 8001af4:	2003      	movs	r0, #3
 8001af6:	f000 f94f 	bl	8001d98 <HAL_NVIC_SetPriorityGrouping>
 8001afa:	2000      	movs	r0, #0
 8001afc:	f000 f808 	bl	8001b10 <HAL_InitTick>
 8001b00:	f7ff f824 	bl	8000b4c <HAL_MspInit>
 8001b04:	2300      	movs	r3, #0
 8001b06:	4618      	mov	r0, r3
 8001b08:	bd80      	pop	{r7, pc}
 8001b0a:	bf00      	nop
 8001b0c:	40023c00 	.word	0x40023c00

08001b10 <HAL_InitTick>:
 8001b10:	b580      	push	{r7, lr}
 8001b12:	b082      	sub	sp, #8
 8001b14:	af00      	add	r7, sp, #0
 8001b16:	6078      	str	r0, [r7, #4]
 8001b18:	4b12      	ldr	r3, [pc, #72]	@ (8001b64 <HAL_InitTick+0x54>)
 8001b1a:	681a      	ldr	r2, [r3, #0]
 8001b1c:	4b12      	ldr	r3, [pc, #72]	@ (8001b68 <HAL_InitTick+0x58>)
 8001b1e:	781b      	ldrb	r3, [r3, #0]
 8001b20:	4619      	mov	r1, r3
 8001b22:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
 8001b26:	fbb3 f3f1 	udiv	r3, r3, r1
 8001b2a:	fbb2 f3f3 	udiv	r3, r2, r3
 8001b2e:	4618      	mov	r0, r3
 8001b30:	f000 f975 	bl	8001e1e <HAL_SYSTICK_Config>
 8001b34:	4603      	mov	r3, r0
 8001b36:	2b00      	cmp	r3, #0
 8001b38:	d001      	beq.n	8001b3e <HAL_InitTick+0x2e>
 8001b3a:	2301      	movs	r3, #1
 8001b3c:	e00e      	b.n	8001b5c <HAL_InitTick+0x4c>
 8001b3e:	687b      	ldr	r3, [r7, #4]
 8001b40:	2b0f      	cmp	r3, #15
 8001b42:	d80a      	bhi.n	8001b5a <HAL_InitTick+0x4a>
 8001b44:	2200      	movs	r2, #0
 8001b46:	6879      	ldr	r1, [r7, #4]
 8001b48:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8001b4c:	f000 f92f 	bl	8001dae <HAL_NVIC_SetPriority>
 8001b50:	4a06      	ldr	r2, [pc, #24]	@ (8001b6c <HAL_InitTick+0x5c>)
 8001b52:	687b      	ldr	r3, [r7, #4]
 8001b54:	6013      	str	r3, [r2, #0]
 8001b56:	2300      	movs	r3, #0
 8001b58:	e000      	b.n	8001b5c <HAL_InitTick+0x4c>
 8001b5a:	2301      	movs	r3, #1
 8001b5c:	4618      	mov	r0, r3
 8001b5e:	3708      	adds	r7, #8
 8001b60:	46bd      	mov	sp, r7
 8001b62:	bd80      	pop	{r7, pc}
 8001b64:	2000005c 	.word	0x2000005c
 8001b68:	20000064 	.word	0x20000064
 8001b6c:	20000060 	.word	0x20000060

08001b70 <HAL_IncTick>:
 8001b70:	b480      	push	{r7}
 8001b72:	af00      	add	r7, sp, #0
 8001b74:	4b06      	ldr	r3, [pc, #24]	@ (8001b90 <HAL_IncTick+0x20>)
 8001b76:	781b      	ldrb	r3, [r3, #0]
 8001b78:	461a      	mov	r2, r3
 8001b7a:	4b06      	ldr	r3, [pc, #24]	@ (8001b94 <HAL_IncTick+0x24>)
 8001b7c:	681b      	ldr	r3, [r3, #0]
 8001b7e:	4413      	add	r3, r2
 8001b80:	4a04      	ldr	r2, [pc, #16]	@ (8001b94 <HAL_IncTick+0x24>)
 8001b82:	6013      	str	r3, [r2, #0]
 8001b84:	bf00      	nop
 8001b86:	46bd      	mov	sp, r7
 8001b88:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001b8c:	4770      	bx	lr
 8001b8e:	bf00      	nop
 8001b90:	20000064 	.word	0x20000064
 8001b94:	2000065c 	.word	0x2000065c

08001b98 <HAL_GetTick>:
 8001b98:	b480      	push	{r7}
 8001b9a:	af00      	add	r7, sp, #0
 8001b9c:	4b03      	ldr	r3, [pc, #12]	@ (8001bac <HAL_GetTick+0x14>)
 8001b9e:	681b      	ldr	r3, [r3, #0]
 8001ba0:	4618      	mov	r0, r3
 8001ba2:	46bd      	mov	sp, r7
 8001ba4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001ba8:	4770      	bx	lr
 8001baa:	bf00      	nop
 8001bac:	2000065c 	.word	0x2000065c

08001bb0 <__NVIC_SetPriorityGrouping>:
 8001bb0:	b480      	push	{r7}
 8001bb2:	b085      	sub	sp, #20
 8001bb4:	af00      	add	r7, sp, #0
 8001bb6:	6078      	str	r0, [r7, #4]
 8001bb8:	687b      	ldr	r3, [r7, #4]
 8001bba:	f003 0307 	and.w	r3, r3, #7
 8001bbe:	60fb      	str	r3, [r7, #12]
 8001bc0:	4b0c      	ldr	r3, [pc, #48]	@ (8001bf4 <__NVIC_SetPriorityGrouping+0x44>)
 8001bc2:	68db      	ldr	r3, [r3, #12]
 8001bc4:	60bb      	str	r3, [r7, #8]
 8001bc6:	68ba      	ldr	r2, [r7, #8]
 8001bc8:	f64f 03ff 	movw	r3, #63743	@ 0xf8ff
 8001bcc:	4013      	ands	r3, r2
 8001bce:	60bb      	str	r3, [r7, #8]
 8001bd0:	68fb      	ldr	r3, [r7, #12]
 8001bd2:	021a      	lsls	r2, r3, #8
 8001bd4:	68bb      	ldr	r3, [r7, #8]
 8001bd6:	4313      	orrs	r3, r2
 8001bd8:	f043 63bf 	orr.w	r3, r3, #100139008	@ 0x5f80000
 8001bdc:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 8001be0:	60bb      	str	r3, [r7, #8]
 8001be2:	4a04      	ldr	r2, [pc, #16]	@ (8001bf4 <__NVIC_SetPriorityGrouping+0x44>)
 8001be4:	68bb      	ldr	r3, [r7, #8]
 8001be6:	60d3      	str	r3, [r2, #12]
 8001be8:	bf00      	nop
 8001bea:	3714      	adds	r7, #20
 8001bec:	46bd      	mov	sp, r7
 8001bee:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001bf2:	4770      	bx	lr
 8001bf4:	e000ed00 	.word	0xe000ed00

08001bf8 <__NVIC_GetPriorityGrouping>:
 8001bf8:	b480      	push	{r7}
 8001bfa:	af00      	add	r7, sp, #0
 8001bfc:	4b04      	ldr	r3, [pc, #16]	@ (8001c10 <__NVIC_GetPriorityGrouping+0x18>)
 8001bfe:	68db      	ldr	r3, [r3, #12]
 8001c00:	0a1b      	lsrs	r3, r3, #8
 8001c02:	f003 0307 	and.w	r3, r3, #7
 8001c06:	4618      	mov	r0, r3
 8001c08:	46bd      	mov	sp, r7
 8001c0a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001c0e:	4770      	bx	lr
 8001c10:	e000ed00 	.word	0xe000ed00

08001c14 <__NVIC_EnableIRQ>:
 8001c14:	b480      	push	{r7}
 8001c16:	b083      	sub	sp, #12
 8001c18:	af00      	add	r7, sp, #0
 8001c1a:	4603      	mov	r3, r0
 8001c1c:	71fb      	strb	r3, [r7, #7]
 8001c1e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001c22:	2b00      	cmp	r3, #0
 8001c24:	db0b      	blt.n	8001c3e <__NVIC_EnableIRQ+0x2a>
 8001c26:	79fb      	ldrb	r3, [r7, #7]
 8001c28:	f003 021f 	and.w	r2, r3, #31
 8001c2c:	4907      	ldr	r1, [pc, #28]	@ (8001c4c <__NVIC_EnableIRQ+0x38>)
 8001c2e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001c32:	095b      	lsrs	r3, r3, #5
 8001c34:	2001      	movs	r0, #1
 8001c36:	fa00 f202 	lsl.w	r2, r0, r2
 8001c3a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001c3e:	bf00      	nop
 8001c40:	370c      	adds	r7, #12
 8001c42:	46bd      	mov	sp, r7
 8001c44:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001c48:	4770      	bx	lr
 8001c4a:	bf00      	nop
 8001c4c:	e000e100 	.word	0xe000e100

08001c50 <__NVIC_DisableIRQ>:
 8001c50:	b480      	push	{r7}
 8001c52:	b083      	sub	sp, #12
 8001c54:	af00      	add	r7, sp, #0
 8001c56:	4603      	mov	r3, r0
 8001c58:	71fb      	strb	r3, [r7, #7]
 8001c5a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001c5e:	2b00      	cmp	r3, #0
 8001c60:	db12      	blt.n	8001c88 <__NVIC_DisableIRQ+0x38>
 8001c62:	79fb      	ldrb	r3, [r7, #7]
 8001c64:	f003 021f 	and.w	r2, r3, #31
 8001c68:	490a      	ldr	r1, [pc, #40]	@ (8001c94 <__NVIC_DisableIRQ+0x44>)
 8001c6a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001c6e:	095b      	lsrs	r3, r3, #5
 8001c70:	2001      	movs	r0, #1
 8001c72:	fa00 f202 	lsl.w	r2, r0, r2
 8001c76:	3320      	adds	r3, #32
 8001c78:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001c7c:	f3bf 8f4f 	dsb	sy
 8001c80:	bf00      	nop
 8001c82:	f3bf 8f6f 	isb	sy
 8001c86:	bf00      	nop
 8001c88:	bf00      	nop
 8001c8a:	370c      	adds	r7, #12
 8001c8c:	46bd      	mov	sp, r7
 8001c8e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001c92:	4770      	bx	lr
 8001c94:	e000e100 	.word	0xe000e100

08001c98 <__NVIC_SetPriority>:
 8001c98:	b480      	push	{r7}
 8001c9a:	b083      	sub	sp, #12
 8001c9c:	af00      	add	r7, sp, #0
 8001c9e:	4603      	mov	r3, r0
 8001ca0:	6039      	str	r1, [r7, #0]
 8001ca2:	71fb      	strb	r3, [r7, #7]
 8001ca4:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001ca8:	2b00      	cmp	r3, #0
 8001caa:	db0a      	blt.n	8001cc2 <__NVIC_SetPriority+0x2a>
 8001cac:	683b      	ldr	r3, [r7, #0]
 8001cae:	b2da      	uxtb	r2, r3
 8001cb0:	490c      	ldr	r1, [pc, #48]	@ (8001ce4 <__NVIC_SetPriority+0x4c>)
 8001cb2:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001cb6:	0112      	lsls	r2, r2, #4
 8001cb8:	b2d2      	uxtb	r2, r2
 8001cba:	440b      	add	r3, r1
 8001cbc:	f883 2300 	strb.w	r2, [r3, #768]	@ 0x300
 8001cc0:	e00a      	b.n	8001cd8 <__NVIC_SetPriority+0x40>
 8001cc2:	683b      	ldr	r3, [r7, #0]
 8001cc4:	b2da      	uxtb	r2, r3
 8001cc6:	4908      	ldr	r1, [pc, #32]	@ (8001ce8 <__NVIC_SetPriority+0x50>)
 8001cc8:	79fb      	ldrb	r3, [r7, #7]
 8001cca:	f003 030f 	and.w	r3, r3, #15
 8001cce:	3b04      	subs	r3, #4
 8001cd0:	0112      	lsls	r2, r2, #4
 8001cd2:	b2d2      	uxtb	r2, r2
 8001cd4:	440b      	add	r3, r1
 8001cd6:	761a      	strb	r2, [r3, #24]
 8001cd8:	bf00      	nop
 8001cda:	370c      	adds	r7, #12
 8001cdc:	46bd      	mov	sp, r7
 8001cde:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001ce2:	4770      	bx	lr
 8001ce4:	e000e100 	.word	0xe000e100
 8001ce8:	e000ed00 	.word	0xe000ed00

08001cec <NVIC_EncodePriority>:
 8001cec:	b480      	push	{r7}
 8001cee:	b089      	sub	sp, #36	@ 0x24
 8001cf0:	af00      	add	r7, sp, #0
 8001cf2:	60f8      	str	r0, [r7, #12]
 8001cf4:	60b9      	str	r1, [r7, #8]
 8001cf6:	607a      	str	r2, [r7, #4]
 8001cf8:	68fb      	ldr	r3, [r7, #12]
 8001cfa:	f003 0307 	and.w	r3, r3, #7
 8001cfe:	61fb      	str	r3, [r7, #28]
 8001d00:	69fb      	ldr	r3, [r7, #28]
 8001d02:	f1c3 0307 	rsb	r3, r3, #7
 8001d06:	2b04      	cmp	r3, #4
 8001d08:	bf28      	it	cs
 8001d0a:	2304      	movcs	r3, #4
 8001d0c:	61bb      	str	r3, [r7, #24]
 8001d0e:	69fb      	ldr	r3, [r7, #28]
 8001d10:	3304      	adds	r3, #4
 8001d12:	2b06      	cmp	r3, #6
 8001d14:	d902      	bls.n	8001d1c <NVIC_EncodePriority+0x30>
 8001d16:	69fb      	ldr	r3, [r7, #28]
 8001d18:	3b03      	subs	r3, #3
 8001d1a:	e000      	b.n	8001d1e <NVIC_EncodePriority+0x32>
 8001d1c:	2300      	movs	r3, #0
 8001d1e:	617b      	str	r3, [r7, #20]
 8001d20:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 8001d24:	69bb      	ldr	r3, [r7, #24]
 8001d26:	fa02 f303 	lsl.w	r3, r2, r3
 8001d2a:	43da      	mvns	r2, r3
 8001d2c:	68bb      	ldr	r3, [r7, #8]
 8001d2e:	401a      	ands	r2, r3
 8001d30:	697b      	ldr	r3, [r7, #20]
 8001d32:	409a      	lsls	r2, r3
 8001d34:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
 8001d38:	697b      	ldr	r3, [r7, #20]
 8001d3a:	fa01 f303 	lsl.w	r3, r1, r3
 8001d3e:	43d9      	mvns	r1, r3
 8001d40:	687b      	ldr	r3, [r7, #4]
 8001d42:	400b      	ands	r3, r1
 8001d44:	4313      	orrs	r3, r2
 8001d46:	4618      	mov	r0, r3
 8001d48:	3724      	adds	r7, #36	@ 0x24
 8001d4a:	46bd      	mov	sp, r7
 8001d4c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d50:	4770      	bx	lr
	...

08001d54 <SysTick_Config>:
 8001d54:	b580      	push	{r7, lr}
 8001d56:	b082      	sub	sp, #8
 8001d58:	af00      	add	r7, sp, #0
 8001d5a:	6078      	str	r0, [r7, #4]
 8001d5c:	687b      	ldr	r3, [r7, #4]
 8001d5e:	3b01      	subs	r3, #1
 8001d60:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
 8001d64:	d301      	bcc.n	8001d6a <SysTick_Config+0x16>
 8001d66:	2301      	movs	r3, #1
 8001d68:	e00f      	b.n	8001d8a <SysTick_Config+0x36>
 8001d6a:	4a0a      	ldr	r2, [pc, #40]	@ (8001d94 <SysTick_Config+0x40>)
 8001d6c:	687b      	ldr	r3, [r7, #4]
 8001d6e:	3b01      	subs	r3, #1
 8001d70:	6053      	str	r3, [r2, #4]
 8001d72:	210f      	movs	r1, #15
 8001d74:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8001d78:	f7ff ff8e 	bl	8001c98 <__NVIC_SetPriority>
 8001d7c:	4b05      	ldr	r3, [pc, #20]	@ (8001d94 <SysTick_Config+0x40>)
 8001d7e:	2200      	movs	r2, #0
 8001d80:	609a      	str	r2, [r3, #8]
 8001d82:	4b04      	ldr	r3, [pc, #16]	@ (8001d94 <SysTick_Config+0x40>)
 8001d84:	2207      	movs	r2, #7
 8001d86:	601a      	str	r2, [r3, #0]
 8001d88:	2300      	movs	r3, #0
 8001d8a:	4618      	mov	r0, r3
 8001d8c:	3708      	adds	r7, #8
 8001d8e:	46bd      	mov	sp, r7
 8001d90:	bd80      	pop	{r7, pc}
 8001d92:	bf00      	nop
 8001d94:	e000e010 	.word	0xe000e010

08001d98 <HAL_NVIC_SetPriorityGrouping>:
 8001d98:	b580      	push	{r7, lr}
 8001d9a:	b082      	sub	sp, #8
 8001d9c:	af00      	add	r7, sp, #0
 8001d9e:	6078      	str	r0, [r7, #4]
 8001da0:	6878      	ldr	r0, [r7, #4]
 8001da2:	f7ff ff05 	bl	8001bb0 <__NVIC_SetPriorityGrouping>
 8001da6:	bf00      	nop
 8001da8:	3708      	adds	r7, #8
 8001daa:	46bd      	mov	sp, r7
 8001dac:	bd80      	pop	{r7, pc}

08001dae <HAL_NVIC_SetPriority>:
 8001dae:	b580      	push	{r7, lr}
 8001db0:	b086      	sub	sp, #24
 8001db2:	af00      	add	r7, sp, #0
 8001db4:	4603      	mov	r3, r0
 8001db6:	60b9      	str	r1, [r7, #8]
 8001db8:	607a      	str	r2, [r7, #4]
 8001dba:	73fb      	strb	r3, [r7, #15]
 8001dbc:	2300      	movs	r3, #0
 8001dbe:	617b      	str	r3, [r7, #20]
 8001dc0:	f7ff ff1a 	bl	8001bf8 <__NVIC_GetPriorityGrouping>
 8001dc4:	6178      	str	r0, [r7, #20]
 8001dc6:	687a      	ldr	r2, [r7, #4]
 8001dc8:	68b9      	ldr	r1, [r7, #8]
 8001dca:	6978      	ldr	r0, [r7, #20]
 8001dcc:	f7ff ff8e 	bl	8001cec <NVIC_EncodePriority>
 8001dd0:	4602      	mov	r2, r0
 8001dd2:	f997 300f 	ldrsb.w	r3, [r7, #15]
 8001dd6:	4611      	mov	r1, r2
 8001dd8:	4618      	mov	r0, r3
 8001dda:	f7ff ff5d 	bl	8001c98 <__NVIC_SetPriority>
 8001dde:	bf00      	nop
 8001de0:	3718      	adds	r7, #24
 8001de2:	46bd      	mov	sp, r7
 8001de4:	bd80      	pop	{r7, pc}

08001de6 <HAL_NVIC_EnableIRQ>:
 8001de6:	b580      	push	{r7, lr}
 8001de8:	b082      	sub	sp, #8
 8001dea:	af00      	add	r7, sp, #0
 8001dec:	4603      	mov	r3, r0
 8001dee:	71fb      	strb	r3, [r7, #7]
 8001df0:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001df4:	4618      	mov	r0, r3
 8001df6:	f7ff ff0d 	bl	8001c14 <__NVIC_EnableIRQ>
 8001dfa:	bf00      	nop
 8001dfc:	3708      	adds	r7, #8
 8001dfe:	46bd      	mov	sp, r7
 8001e00:	bd80      	pop	{r7, pc}

08001e02 <HAL_NVIC_DisableIRQ>:
 8001e02:	b580      	push	{r7, lr}
 8001e04:	b082      	sub	sp, #8
 8001e06:	af00      	add	r7, sp, #0
 8001e08:	4603      	mov	r3, r0
 8001e0a:	71fb      	strb	r3, [r7, #7]
 8001e0c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001e10:	4618      	mov	r0, r3
 8001e12:	f7ff ff1d 	bl	8001c50 <__NVIC_DisableIRQ>
 8001e16:	bf00      	nop
 8001e18:	3708      	adds	r7, #8
 8001e1a:	46bd      	mov	sp, r7
 8001e1c:	bd80      	pop	{r7, pc}

08001e1e <HAL_SYSTICK_Config>:
 8001e1e:	b580      	push	{r7, lr}
 8001e20:	b082      	sub	sp, #8
 8001e22:	af00      	add	r7, sp, #0
 8001e24:	6078      	str	r0, [r7, #4]
 8001e26:	6878      	ldr	r0, [r7, #4]
 8001e28:	f7ff ff94 	bl	8001d54 <SysTick_Config>
 8001e2c:	4603      	mov	r3, r0
 8001e2e:	4618      	mov	r0, r3
 8001e30:	3708      	adds	r7, #8
 8001e32:	46bd      	mov	sp, r7
 8001e34:	bd80      	pop	{r7, pc}
	...

08001e38 <HAL_DMA_Init>:
 8001e38:	b580      	push	{r7, lr}
 8001e3a:	b086      	sub	sp, #24
 8001e3c:	af00      	add	r7, sp, #0
 8001e3e:	6078      	str	r0, [r7, #4]
 8001e40:	2300      	movs	r3, #0
 8001e42:	617b      	str	r3, [r7, #20]
 8001e44:	f7ff fea8 	bl	8001b98 <HAL_GetTick>
 8001e48:	6138      	str	r0, [r7, #16]
 8001e4a:	687b      	ldr	r3, [r7, #4]
 8001e4c:	2b00      	cmp	r3, #0
 8001e4e:	d101      	bne.n	8001e54 <HAL_DMA_Init+0x1c>
 8001e50:	2301      	movs	r3, #1
 8001e52:	e099      	b.n	8001f88 <HAL_DMA_Init+0x150>
 8001e54:	687b      	ldr	r3, [r7, #4]
 8001e56:	2202      	movs	r2, #2
 8001e58:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001e5c:	687b      	ldr	r3, [r7, #4]
 8001e5e:	2200      	movs	r2, #0
 8001e60:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8001e64:	687b      	ldr	r3, [r7, #4]
 8001e66:	681b      	ldr	r3, [r3, #0]
 8001e68:	681a      	ldr	r2, [r3, #0]
 8001e6a:	687b      	ldr	r3, [r7, #4]
 8001e6c:	681b      	ldr	r3, [r3, #0]
 8001e6e:	f022 0201 	bic.w	r2, r2, #1
 8001e72:	601a      	str	r2, [r3, #0]
 8001e74:	e00f      	b.n	8001e96 <HAL_DMA_Init+0x5e>
 8001e76:	f7ff fe8f 	bl	8001b98 <HAL_GetTick>
 8001e7a:	4602      	mov	r2, r0
 8001e7c:	693b      	ldr	r3, [r7, #16]
 8001e7e:	1ad3      	subs	r3, r2, r3
 8001e80:	2b05      	cmp	r3, #5
 8001e82:	d908      	bls.n	8001e96 <HAL_DMA_Init+0x5e>
 8001e84:	687b      	ldr	r3, [r7, #4]
 8001e86:	2220      	movs	r2, #32
 8001e88:	655a      	str	r2, [r3, #84]	@ 0x54
 8001e8a:	687b      	ldr	r3, [r7, #4]
 8001e8c:	2203      	movs	r2, #3
 8001e8e:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001e92:	2303      	movs	r3, #3
 8001e94:	e078      	b.n	8001f88 <HAL_DMA_Init+0x150>
 8001e96:	687b      	ldr	r3, [r7, #4]
 8001e98:	681b      	ldr	r3, [r3, #0]
 8001e9a:	681b      	ldr	r3, [r3, #0]
 8001e9c:	f003 0301 	and.w	r3, r3, #1
 8001ea0:	2b00      	cmp	r3, #0
 8001ea2:	d1e8      	bne.n	8001e76 <HAL_DMA_Init+0x3e>
 8001ea4:	687b      	ldr	r3, [r7, #4]
 8001ea6:	681b      	ldr	r3, [r3, #0]
 8001ea8:	681b      	ldr	r3, [r3, #0]
 8001eaa:	617b      	str	r3, [r7, #20]
 8001eac:	697a      	ldr	r2, [r7, #20]
 8001eae:	4b38      	ldr	r3, [pc, #224]	@ (8001f90 <HAL_DMA_Init+0x158>)
 8001eb0:	4013      	ands	r3, r2
 8001eb2:	617b      	str	r3, [r7, #20]
 8001eb4:	687b      	ldr	r3, [r7, #4]
 8001eb6:	685a      	ldr	r2, [r3, #4]
 8001eb8:	687b      	ldr	r3, [r7, #4]
 8001eba:	689b      	ldr	r3, [r3, #8]
 8001ebc:	431a      	orrs	r2, r3
 8001ebe:	687b      	ldr	r3, [r7, #4]
 8001ec0:	68db      	ldr	r3, [r3, #12]
 8001ec2:	431a      	orrs	r2, r3
 8001ec4:	687b      	ldr	r3, [r7, #4]
 8001ec6:	691b      	ldr	r3, [r3, #16]
 8001ec8:	431a      	orrs	r2, r3
 8001eca:	687b      	ldr	r3, [r7, #4]
 8001ecc:	695b      	ldr	r3, [r3, #20]
 8001ece:	431a      	orrs	r2, r3
 8001ed0:	687b      	ldr	r3, [r7, #4]
 8001ed2:	699b      	ldr	r3, [r3, #24]
 8001ed4:	431a      	orrs	r2, r3
 8001ed6:	687b      	ldr	r3, [r7, #4]
 8001ed8:	69db      	ldr	r3, [r3, #28]
 8001eda:	431a      	orrs	r2, r3
 8001edc:	687b      	ldr	r3, [r7, #4]
 8001ede:	6a1b      	ldr	r3, [r3, #32]
 8001ee0:	4313      	orrs	r3, r2
 8001ee2:	697a      	ldr	r2, [r7, #20]
 8001ee4:	4313      	orrs	r3, r2
 8001ee6:	617b      	str	r3, [r7, #20]
 8001ee8:	687b      	ldr	r3, [r7, #4]
 8001eea:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001eec:	2b04      	cmp	r3, #4
 8001eee:	d107      	bne.n	8001f00 <HAL_DMA_Init+0xc8>
 8001ef0:	687b      	ldr	r3, [r7, #4]
 8001ef2:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8001ef4:	687b      	ldr	r3, [r7, #4]
 8001ef6:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001ef8:	4313      	orrs	r3, r2
 8001efa:	697a      	ldr	r2, [r7, #20]
 8001efc:	4313      	orrs	r3, r2
 8001efe:	617b      	str	r3, [r7, #20]
 8001f00:	687b      	ldr	r3, [r7, #4]
 8001f02:	681b      	ldr	r3, [r3, #0]
 8001f04:	697a      	ldr	r2, [r7, #20]
 8001f06:	601a      	str	r2, [r3, #0]
 8001f08:	687b      	ldr	r3, [r7, #4]
 8001f0a:	681b      	ldr	r3, [r3, #0]
 8001f0c:	695b      	ldr	r3, [r3, #20]
 8001f0e:	617b      	str	r3, [r7, #20]
 8001f10:	697b      	ldr	r3, [r7, #20]
 8001f12:	f023 0307 	bic.w	r3, r3, #7
 8001f16:	617b      	str	r3, [r7, #20]
 8001f18:	687b      	ldr	r3, [r7, #4]
 8001f1a:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001f1c:	697a      	ldr	r2, [r7, #20]
 8001f1e:	4313      	orrs	r3, r2
 8001f20:	617b      	str	r3, [r7, #20]
 8001f22:	687b      	ldr	r3, [r7, #4]
 8001f24:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001f26:	2b04      	cmp	r3, #4
 8001f28:	d117      	bne.n	8001f5a <HAL_DMA_Init+0x122>
 8001f2a:	687b      	ldr	r3, [r7, #4]
 8001f2c:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8001f2e:	697a      	ldr	r2, [r7, #20]
 8001f30:	4313      	orrs	r3, r2
 8001f32:	617b      	str	r3, [r7, #20]
 8001f34:	687b      	ldr	r3, [r7, #4]
 8001f36:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001f38:	2b00      	cmp	r3, #0
 8001f3a:	d00e      	beq.n	8001f5a <HAL_DMA_Init+0x122>
 8001f3c:	6878      	ldr	r0, [r7, #4]
 8001f3e:	f000 fa47 	bl	80023d0 <DMA_CheckFifoParam>
 8001f42:	4603      	mov	r3, r0
 8001f44:	2b00      	cmp	r3, #0
 8001f46:	d008      	beq.n	8001f5a <HAL_DMA_Init+0x122>
 8001f48:	687b      	ldr	r3, [r7, #4]
 8001f4a:	2240      	movs	r2, #64	@ 0x40
 8001f4c:	655a      	str	r2, [r3, #84]	@ 0x54
 8001f4e:	687b      	ldr	r3, [r7, #4]
 8001f50:	2201      	movs	r2, #1
 8001f52:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001f56:	2301      	movs	r3, #1
 8001f58:	e016      	b.n	8001f88 <HAL_DMA_Init+0x150>
 8001f5a:	687b      	ldr	r3, [r7, #4]
 8001f5c:	681b      	ldr	r3, [r3, #0]
 8001f5e:	697a      	ldr	r2, [r7, #20]
 8001f60:	615a      	str	r2, [r3, #20]
 8001f62:	6878      	ldr	r0, [r7, #4]
 8001f64:	f000 f9fe 	bl	8002364 <DMA_CalcBaseAndBitshift>
 8001f68:	4603      	mov	r3, r0
 8001f6a:	60fb      	str	r3, [r7, #12]
 8001f6c:	687b      	ldr	r3, [r7, #4]
 8001f6e:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8001f70:	223f      	movs	r2, #63	@ 0x3f
 8001f72:	409a      	lsls	r2, r3
 8001f74:	68fb      	ldr	r3, [r7, #12]
 8001f76:	609a      	str	r2, [r3, #8]
 8001f78:	687b      	ldr	r3, [r7, #4]
 8001f7a:	2200      	movs	r2, #0
 8001f7c:	655a      	str	r2, [r3, #84]	@ 0x54
 8001f7e:	687b      	ldr	r3, [r7, #4]
 8001f80:	2201      	movs	r2, #1
 8001f82:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001f86:	2300      	movs	r3, #0
 8001f88:	4618      	mov	r0, r3
 8001f8a:	3718      	adds	r7, #24
 8001f8c:	46bd      	mov	sp, r7
 8001f8e:	bd80      	pop	{r7, pc}
 8001f90:	f010803f 	.word	0xf010803f

08001f94 <HAL_DMA_DeInit>:
 8001f94:	b580      	push	{r7, lr}
 8001f96:	b084      	sub	sp, #16
 8001f98:	af00      	add	r7, sp, #0
 8001f9a:	6078      	str	r0, [r7, #4]
 8001f9c:	687b      	ldr	r3, [r7, #4]
 8001f9e:	2b00      	cmp	r3, #0
 8001fa0:	d101      	bne.n	8001fa6 <HAL_DMA_DeInit+0x12>
 8001fa2:	2301      	movs	r3, #1
 8001fa4:	e050      	b.n	8002048 <HAL_DMA_DeInit+0xb4>
 8001fa6:	687b      	ldr	r3, [r7, #4]
 8001fa8:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 8001fac:	b2db      	uxtb	r3, r3
 8001fae:	2b02      	cmp	r3, #2
 8001fb0:	d101      	bne.n	8001fb6 <HAL_DMA_DeInit+0x22>
 8001fb2:	2302      	movs	r3, #2
 8001fb4:	e048      	b.n	8002048 <HAL_DMA_DeInit+0xb4>
 8001fb6:	687b      	ldr	r3, [r7, #4]
 8001fb8:	681b      	ldr	r3, [r3, #0]
 8001fba:	681a      	ldr	r2, [r3, #0]
 8001fbc:	687b      	ldr	r3, [r7, #4]
 8001fbe:	681b      	ldr	r3, [r3, #0]
 8001fc0:	f022 0201 	bic.w	r2, r2, #1
 8001fc4:	601a      	str	r2, [r3, #0]
 8001fc6:	687b      	ldr	r3, [r7, #4]
 8001fc8:	681b      	ldr	r3, [r3, #0]
 8001fca:	2200      	movs	r2, #0
 8001fcc:	601a      	str	r2, [r3, #0]
 8001fce:	687b      	ldr	r3, [r7, #4]
 8001fd0:	681b      	ldr	r3, [r3, #0]
 8001fd2:	2200      	movs	r2, #0
 8001fd4:	605a      	str	r2, [r3, #4]
 8001fd6:	687b      	ldr	r3, [r7, #4]
 8001fd8:	681b      	ldr	r3, [r3, #0]
 8001fda:	2200      	movs	r2, #0
 8001fdc:	609a      	str	r2, [r3, #8]
 8001fde:	687b      	ldr	r3, [r7, #4]
 8001fe0:	681b      	ldr	r3, [r3, #0]
 8001fe2:	2200      	movs	r2, #0
 8001fe4:	60da      	str	r2, [r3, #12]
 8001fe6:	687b      	ldr	r3, [r7, #4]
 8001fe8:	681b      	ldr	r3, [r3, #0]
 8001fea:	2200      	movs	r2, #0
 8001fec:	611a      	str	r2, [r3, #16]
 8001fee:	687b      	ldr	r3, [r7, #4]
 8001ff0:	681b      	ldr	r3, [r3, #0]
 8001ff2:	2221      	movs	r2, #33	@ 0x21
 8001ff4:	615a      	str	r2, [r3, #20]
 8001ff6:	6878      	ldr	r0, [r7, #4]
 8001ff8:	f000 f9b4 	bl	8002364 <DMA_CalcBaseAndBitshift>
 8001ffc:	4603      	mov	r3, r0
 8001ffe:	60fb      	str	r3, [r7, #12]
 8002000:	687b      	ldr	r3, [r7, #4]
 8002002:	2200      	movs	r2, #0
 8002004:	63da      	str	r2, [r3, #60]	@ 0x3c
 8002006:	687b      	ldr	r3, [r7, #4]
 8002008:	2200      	movs	r2, #0
 800200a:	641a      	str	r2, [r3, #64]	@ 0x40
 800200c:	687b      	ldr	r3, [r7, #4]
 800200e:	2200      	movs	r2, #0
 8002010:	645a      	str	r2, [r3, #68]	@ 0x44
 8002012:	687b      	ldr	r3, [r7, #4]
 8002014:	2200      	movs	r2, #0
 8002016:	649a      	str	r2, [r3, #72]	@ 0x48
 8002018:	687b      	ldr	r3, [r7, #4]
 800201a:	2200      	movs	r2, #0
 800201c:	64da      	str	r2, [r3, #76]	@ 0x4c
 800201e:	687b      	ldr	r3, [r7, #4]
 8002020:	2200      	movs	r2, #0
 8002022:	651a      	str	r2, [r3, #80]	@ 0x50
 8002024:	687b      	ldr	r3, [r7, #4]
 8002026:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8002028:	223f      	movs	r2, #63	@ 0x3f
 800202a:	409a      	lsls	r2, r3
 800202c:	68fb      	ldr	r3, [r7, #12]
 800202e:	609a      	str	r2, [r3, #8]
 8002030:	687b      	ldr	r3, [r7, #4]
 8002032:	2200      	movs	r2, #0
 8002034:	655a      	str	r2, [r3, #84]	@ 0x54
 8002036:	687b      	ldr	r3, [r7, #4]
 8002038:	2200      	movs	r2, #0
 800203a:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 800203e:	687b      	ldr	r3, [r7, #4]
 8002040:	2200      	movs	r2, #0
 8002042:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8002046:	2300      	movs	r3, #0
 8002048:	4618      	mov	r0, r3
 800204a:	3710      	adds	r7, #16
 800204c:	46bd      	mov	sp, r7
 800204e:	bd80      	pop	{r7, pc}

08002050 <HAL_DMA_IRQHandler>:
 8002050:	b580      	push	{r7, lr}
 8002052:	b086      	sub	sp, #24
 8002054:	af00      	add	r7, sp, #0
 8002056:	6078      	str	r0, [r7, #4]
 8002058:	2300      	movs	r3, #0
 800205a:	60bb      	str	r3, [r7, #8]
 800205c:	4b8e      	ldr	r3, [pc, #568]	@ (8002298 <HAL_DMA_IRQHandler+0x248>)
 800205e:	681b      	ldr	r3, [r3, #0]
 8002060:	4a8e      	ldr	r2, [pc, #568]	@ (800229c <HAL_DMA_IRQHandler+0x24c>)
 8002062:	fba2 2303 	umull	r2, r3, r2, r3
 8002066:	0a9b      	lsrs	r3, r3, #10
 8002068:	617b      	str	r3, [r7, #20]
 800206a:	687b      	ldr	r3, [r7, #4]
 800206c:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 800206e:	613b      	str	r3, [r7, #16]
 8002070:	693b      	ldr	r3, [r7, #16]
 8002072:	681b      	ldr	r3, [r3, #0]
 8002074:	60fb      	str	r3, [r7, #12]
 8002076:	687b      	ldr	r3, [r7, #4]
 8002078:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 800207a:	2208      	movs	r2, #8
 800207c:	409a      	lsls	r2, r3
 800207e:	68fb      	ldr	r3, [r7, #12]
 8002080:	4013      	ands	r3, r2
 8002082:	2b00      	cmp	r3, #0
 8002084:	d01a      	beq.n	80020bc <HAL_DMA_IRQHandler+0x6c>
 8002086:	687b      	ldr	r3, [r7, #4]
 8002088:	681b      	ldr	r3, [r3, #0]
 800208a:	681b      	ldr	r3, [r3, #0]
 800208c:	f003 0304 	and.w	r3, r3, #4
 8002090:	2b00      	cmp	r3, #0
 8002092:	d013      	beq.n	80020bc <HAL_DMA_IRQHandler+0x6c>
 8002094:	687b      	ldr	r3, [r7, #4]
 8002096:	681b      	ldr	r3, [r3, #0]
 8002098:	681a      	ldr	r2, [r3, #0]
 800209a:	687b      	ldr	r3, [r7, #4]
 800209c:	681b      	ldr	r3, [r3, #0]
 800209e:	f022 0204 	bic.w	r2, r2, #4
 80020a2:	601a      	str	r2, [r3, #0]
 80020a4:	687b      	ldr	r3, [r7, #4]
 80020a6:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80020a8:	2208      	movs	r2, #8
 80020aa:	409a      	lsls	r2, r3
 80020ac:	693b      	ldr	r3, [r7, #16]
 80020ae:	609a      	str	r2, [r3, #8]
 80020b0:	687b      	ldr	r3, [r7, #4]
 80020b2:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80020b4:	f043 0201 	orr.w	r2, r3, #1
 80020b8:	687b      	ldr	r3, [r7, #4]
 80020ba:	655a      	str	r2, [r3, #84]	@ 0x54
 80020bc:	687b      	ldr	r3, [r7, #4]
 80020be:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80020c0:	2201      	movs	r2, #1
 80020c2:	409a      	lsls	r2, r3
 80020c4:	68fb      	ldr	r3, [r7, #12]
 80020c6:	4013      	ands	r3, r2
 80020c8:	2b00      	cmp	r3, #0
 80020ca:	d012      	beq.n	80020f2 <HAL_DMA_IRQHandler+0xa2>
 80020cc:	687b      	ldr	r3, [r7, #4]
 80020ce:	681b      	ldr	r3, [r3, #0]
 80020d0:	695b      	ldr	r3, [r3, #20]
 80020d2:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80020d6:	2b00      	cmp	r3, #0
 80020d8:	d00b      	beq.n	80020f2 <HAL_DMA_IRQHandler+0xa2>
 80020da:	687b      	ldr	r3, [r7, #4]
 80020dc:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80020de:	2201      	movs	r2, #1
 80020e0:	409a      	lsls	r2, r3
 80020e2:	693b      	ldr	r3, [r7, #16]
 80020e4:	609a      	str	r2, [r3, #8]
 80020e6:	687b      	ldr	r3, [r7, #4]
 80020e8:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80020ea:	f043 0202 	orr.w	r2, r3, #2
 80020ee:	687b      	ldr	r3, [r7, #4]
 80020f0:	655a      	str	r2, [r3, #84]	@ 0x54
 80020f2:	687b      	ldr	r3, [r7, #4]
 80020f4:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80020f6:	2204      	movs	r2, #4
 80020f8:	409a      	lsls	r2, r3
 80020fa:	68fb      	ldr	r3, [r7, #12]
 80020fc:	4013      	ands	r3, r2
 80020fe:	2b00      	cmp	r3, #0
 8002100:	d012      	beq.n	8002128 <HAL_DMA_IRQHandler+0xd8>
 8002102:	687b      	ldr	r3, [r7, #4]
 8002104:	681b      	ldr	r3, [r3, #0]
 8002106:	681b      	ldr	r3, [r3, #0]
 8002108:	f003 0302 	and.w	r3, r3, #2
 800210c:	2b00      	cmp	r3, #0
 800210e:	d00b      	beq.n	8002128 <HAL_DMA_IRQHandler+0xd8>
 8002110:	687b      	ldr	r3, [r7, #4]
 8002112:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8002114:	2204      	movs	r2, #4
 8002116:	409a      	lsls	r2, r3
 8002118:	693b      	ldr	r3, [r7, #16]
 800211a:	609a      	str	r2, [r3, #8]
 800211c:	687b      	ldr	r3, [r7, #4]
 800211e:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8002120:	f043 0204 	orr.w	r2, r3, #4
 8002124:	687b      	ldr	r3, [r7, #4]
 8002126:	655a      	str	r2, [r3, #84]	@ 0x54
 8002128:	687b      	ldr	r3, [r7, #4]
 800212a:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 800212c:	2210      	movs	r2, #16
 800212e:	409a      	lsls	r2, r3
 8002130:	68fb      	ldr	r3, [r7, #12]
 8002132:	4013      	ands	r3, r2
 8002134:	2b00      	cmp	r3, #0
 8002136:	d043      	beq.n	80021c0 <HAL_DMA_IRQHandler+0x170>
 8002138:	687b      	ldr	r3, [r7, #4]
 800213a:	681b      	ldr	r3, [r3, #0]
 800213c:	681b      	ldr	r3, [r3, #0]
 800213e:	f003 0308 	and.w	r3, r3, #8
 8002142:	2b00      	cmp	r3, #0
 8002144:	d03c      	beq.n	80021c0 <HAL_DMA_IRQHandler+0x170>
 8002146:	687b      	ldr	r3, [r7, #4]
 8002148:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 800214a:	2210      	movs	r2, #16
 800214c:	409a      	lsls	r2, r3
 800214e:	693b      	ldr	r3, [r7, #16]
 8002150:	609a      	str	r2, [r3, #8]
 8002152:	687b      	ldr	r3, [r7, #4]
 8002154:	681b      	ldr	r3, [r3, #0]
 8002156:	681b      	ldr	r3, [r3, #0]
 8002158:	f403 2380 	and.w	r3, r3, #262144	@ 0x40000
 800215c:	2b00      	cmp	r3, #0
 800215e:	d018      	beq.n	8002192 <HAL_DMA_IRQHandler+0x142>
 8002160:	687b      	ldr	r3, [r7, #4]
 8002162:	681b      	ldr	r3, [r3, #0]
 8002164:	681b      	ldr	r3, [r3, #0]
 8002166:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 800216a:	2b00      	cmp	r3, #0
 800216c:	d108      	bne.n	8002180 <HAL_DMA_IRQHandler+0x130>
 800216e:	687b      	ldr	r3, [r7, #4]
 8002170:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8002172:	2b00      	cmp	r3, #0
 8002174:	d024      	beq.n	80021c0 <HAL_DMA_IRQHandler+0x170>
 8002176:	687b      	ldr	r3, [r7, #4]
 8002178:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800217a:	6878      	ldr	r0, [r7, #4]
 800217c:	4798      	blx	r3
 800217e:	e01f      	b.n	80021c0 <HAL_DMA_IRQHandler+0x170>
 8002180:	687b      	ldr	r3, [r7, #4]
 8002182:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8002184:	2b00      	cmp	r3, #0
 8002186:	d01b      	beq.n	80021c0 <HAL_DMA_IRQHandler+0x170>
 8002188:	687b      	ldr	r3, [r7, #4]
 800218a:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 800218c:	6878      	ldr	r0, [r7, #4]
 800218e:	4798      	blx	r3
 8002190:	e016      	b.n	80021c0 <HAL_DMA_IRQHandler+0x170>
 8002192:	687b      	ldr	r3, [r7, #4]
 8002194:	681b      	ldr	r3, [r3, #0]
 8002196:	681b      	ldr	r3, [r3, #0]
 8002198:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 800219c:	2b00      	cmp	r3, #0
 800219e:	d107      	bne.n	80021b0 <HAL_DMA_IRQHandler+0x160>
 80021a0:	687b      	ldr	r3, [r7, #4]
 80021a2:	681b      	ldr	r3, [r3, #0]
 80021a4:	681a      	ldr	r2, [r3, #0]
 80021a6:	687b      	ldr	r3, [r7, #4]
 80021a8:	681b      	ldr	r3, [r3, #0]
 80021aa:	f022 0208 	bic.w	r2, r2, #8
 80021ae:	601a      	str	r2, [r3, #0]
 80021b0:	687b      	ldr	r3, [r7, #4]
 80021b2:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80021b4:	2b00      	cmp	r3, #0
 80021b6:	d003      	beq.n	80021c0 <HAL_DMA_IRQHandler+0x170>
 80021b8:	687b      	ldr	r3, [r7, #4]
 80021ba:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80021bc:	6878      	ldr	r0, [r7, #4]
 80021be:	4798      	blx	r3
 80021c0:	687b      	ldr	r3, [r7, #4]
 80021c2:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80021c4:	2220      	movs	r2, #32
 80021c6:	409a      	lsls	r2, r3
 80021c8:	68fb      	ldr	r3, [r7, #12]
 80021ca:	4013      	ands	r3, r2
 80021cc:	2b00      	cmp	r3, #0
 80021ce:	f000 808f 	beq.w	80022f0 <HAL_DMA_IRQHandler+0x2a0>
 80021d2:	687b      	ldr	r3, [r7, #4]
 80021d4:	681b      	ldr	r3, [r3, #0]
 80021d6:	681b      	ldr	r3, [r3, #0]
 80021d8:	f003 0310 	and.w	r3, r3, #16
 80021dc:	2b00      	cmp	r3, #0
 80021de:	f000 8087 	beq.w	80022f0 <HAL_DMA_IRQHandler+0x2a0>
 80021e2:	687b      	ldr	r3, [r7, #4]
 80021e4:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80021e6:	2220      	movs	r2, #32
 80021e8:	409a      	lsls	r2, r3
 80021ea:	693b      	ldr	r3, [r7, #16]
 80021ec:	609a      	str	r2, [r3, #8]
 80021ee:	687b      	ldr	r3, [r7, #4]
 80021f0:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 80021f4:	b2db      	uxtb	r3, r3
 80021f6:	2b05      	cmp	r3, #5
 80021f8:	d136      	bne.n	8002268 <HAL_DMA_IRQHandler+0x218>
 80021fa:	687b      	ldr	r3, [r7, #4]
 80021fc:	681b      	ldr	r3, [r3, #0]
 80021fe:	681a      	ldr	r2, [r3, #0]
 8002200:	687b      	ldr	r3, [r7, #4]
 8002202:	681b      	ldr	r3, [r3, #0]
 8002204:	f022 0216 	bic.w	r2, r2, #22
 8002208:	601a      	str	r2, [r3, #0]
 800220a:	687b      	ldr	r3, [r7, #4]
 800220c:	681b      	ldr	r3, [r3, #0]
 800220e:	695a      	ldr	r2, [r3, #20]
 8002210:	687b      	ldr	r3, [r7, #4]
 8002212:	681b      	ldr	r3, [r3, #0]
 8002214:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 8002218:	615a      	str	r2, [r3, #20]
 800221a:	687b      	ldr	r3, [r7, #4]
 800221c:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800221e:	2b00      	cmp	r3, #0
 8002220:	d103      	bne.n	800222a <HAL_DMA_IRQHandler+0x1da>
 8002222:	687b      	ldr	r3, [r7, #4]
 8002224:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8002226:	2b00      	cmp	r3, #0
 8002228:	d007      	beq.n	800223a <HAL_DMA_IRQHandler+0x1ea>
 800222a:	687b      	ldr	r3, [r7, #4]
 800222c:	681b      	ldr	r3, [r3, #0]
 800222e:	681a      	ldr	r2, [r3, #0]
 8002230:	687b      	ldr	r3, [r7, #4]
 8002232:	681b      	ldr	r3, [r3, #0]
 8002234:	f022 0208 	bic.w	r2, r2, #8
 8002238:	601a      	str	r2, [r3, #0]
 800223a:	687b      	ldr	r3, [r7, #4]
 800223c:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 800223e:	223f      	movs	r2, #63	@ 0x3f
 8002240:	409a      	lsls	r2, r3
 8002242:	693b      	ldr	r3, [r7, #16]
 8002244:	609a      	str	r2, [r3, #8]
 8002246:	687b      	ldr	r3, [r7, #4]
 8002248:	2201      	movs	r2, #1
 800224a:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 800224e:	687b      	ldr	r3, [r7, #4]
 8002250:	2200      	movs	r2, #0
 8002252:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8002256:	687b      	ldr	r3, [r7, #4]
 8002258:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 800225a:	2b00      	cmp	r3, #0
 800225c:	d07e      	beq.n	800235c <HAL_DMA_IRQHandler+0x30c>
 800225e:	687b      	ldr	r3, [r7, #4]
 8002260:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 8002262:	6878      	ldr	r0, [r7, #4]
 8002264:	4798      	blx	r3
 8002266:	e079      	b.n	800235c <HAL_DMA_IRQHandler+0x30c>
 8002268:	687b      	ldr	r3, [r7, #4]
 800226a:	681b      	ldr	r3, [r3, #0]
 800226c:	681b      	ldr	r3, [r3, #0]
 800226e:	f403 2380 	and.w	r3, r3, #262144	@ 0x40000
 8002272:	2b00      	cmp	r3, #0
 8002274:	d01d      	beq.n	80022b2 <HAL_DMA_IRQHandler+0x262>
 8002276:	687b      	ldr	r3, [r7, #4]
 8002278:	681b      	ldr	r3, [r3, #0]
 800227a:	681b      	ldr	r3, [r3, #0]
 800227c:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 8002280:	2b00      	cmp	r3, #0
 8002282:	d10d      	bne.n	80022a0 <HAL_DMA_IRQHandler+0x250>
 8002284:	687b      	ldr	r3, [r7, #4]
 8002286:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8002288:	2b00      	cmp	r3, #0
 800228a:	d031      	beq.n	80022f0 <HAL_DMA_IRQHandler+0x2a0>
 800228c:	687b      	ldr	r3, [r7, #4]
 800228e:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8002290:	6878      	ldr	r0, [r7, #4]
 8002292:	4798      	blx	r3
 8002294:	e02c      	b.n	80022f0 <HAL_DMA_IRQHandler+0x2a0>
 8002296:	bf00      	nop
 8002298:	2000005c 	.word	0x2000005c
 800229c:	1b4e81b5 	.word	0x1b4e81b5
 80022a0:	687b      	ldr	r3, [r7, #4]
 80022a2:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 80022a4:	2b00      	cmp	r3, #0
 80022a6:	d023      	beq.n	80022f0 <HAL_DMA_IRQHandler+0x2a0>
 80022a8:	687b      	ldr	r3, [r7, #4]
 80022aa:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 80022ac:	6878      	ldr	r0, [r7, #4]
 80022ae:	4798      	blx	r3
 80022b0:	e01e      	b.n	80022f0 <HAL_DMA_IRQHandler+0x2a0>
 80022b2:	687b      	ldr	r3, [r7, #4]
 80022b4:	681b      	ldr	r3, [r3, #0]
 80022b6:	681b      	ldr	r3, [r3, #0]
 80022b8:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 80022bc:	2b00      	cmp	r3, #0
 80022be:	d10f      	bne.n	80022e0 <HAL_DMA_IRQHandler+0x290>
 80022c0:	687b      	ldr	r3, [r7, #4]
 80022c2:	681b      	ldr	r3, [r3, #0]
 80022c4:	681a      	ldr	r2, [r3, #0]
 80022c6:	687b      	ldr	r3, [r7, #4]
 80022c8:	681b      	ldr	r3, [r3, #0]
 80022ca:	f022 0210 	bic.w	r2, r2, #16
 80022ce:	601a      	str	r2, [r3, #0]
 80022d0:	687b      	ldr	r3, [r7, #4]
 80022d2:	2201      	movs	r2, #1
 80022d4:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 80022d8:	687b      	ldr	r3, [r7, #4]
 80022da:	2200      	movs	r2, #0
 80022dc:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80022e0:	687b      	ldr	r3, [r7, #4]
 80022e2:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 80022e4:	2b00      	cmp	r3, #0
 80022e6:	d003      	beq.n	80022f0 <HAL_DMA_IRQHandler+0x2a0>
 80022e8:	687b      	ldr	r3, [r7, #4]
 80022ea:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 80022ec:	6878      	ldr	r0, [r7, #4]
 80022ee:	4798      	blx	r3
 80022f0:	687b      	ldr	r3, [r7, #4]
 80022f2:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80022f4:	2b00      	cmp	r3, #0
 80022f6:	d032      	beq.n	800235e <HAL_DMA_IRQHandler+0x30e>
 80022f8:	687b      	ldr	r3, [r7, #4]
 80022fa:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80022fc:	f003 0301 	and.w	r3, r3, #1
 8002300:	2b00      	cmp	r3, #0
 8002302:	d022      	beq.n	800234a <HAL_DMA_IRQHandler+0x2fa>
 8002304:	687b      	ldr	r3, [r7, #4]
 8002306:	2205      	movs	r2, #5
 8002308:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 800230c:	687b      	ldr	r3, [r7, #4]
 800230e:	681b      	ldr	r3, [r3, #0]
 8002310:	681a      	ldr	r2, [r3, #0]
 8002312:	687b      	ldr	r3, [r7, #4]
 8002314:	681b      	ldr	r3, [r3, #0]
 8002316:	f022 0201 	bic.w	r2, r2, #1
 800231a:	601a      	str	r2, [r3, #0]
 800231c:	68bb      	ldr	r3, [r7, #8]
 800231e:	3301      	adds	r3, #1
 8002320:	60bb      	str	r3, [r7, #8]
 8002322:	697a      	ldr	r2, [r7, #20]
 8002324:	429a      	cmp	r2, r3
 8002326:	d307      	bcc.n	8002338 <HAL_DMA_IRQHandler+0x2e8>
 8002328:	687b      	ldr	r3, [r7, #4]
 800232a:	681b      	ldr	r3, [r3, #0]
 800232c:	681b      	ldr	r3, [r3, #0]
 800232e:	f003 0301 	and.w	r3, r3, #1
 8002332:	2b00      	cmp	r3, #0
 8002334:	d1f2      	bne.n	800231c <HAL_DMA_IRQHandler+0x2cc>
 8002336:	e000      	b.n	800233a <HAL_DMA_IRQHandler+0x2ea>
 8002338:	bf00      	nop
 800233a:	687b      	ldr	r3, [r7, #4]
 800233c:	2201      	movs	r2, #1
 800233e:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8002342:	687b      	ldr	r3, [r7, #4]
 8002344:	2200      	movs	r2, #0
 8002346:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800234a:	687b      	ldr	r3, [r7, #4]
 800234c:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 800234e:	2b00      	cmp	r3, #0
 8002350:	d005      	beq.n	800235e <HAL_DMA_IRQHandler+0x30e>
 8002352:	687b      	ldr	r3, [r7, #4]
 8002354:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8002356:	6878      	ldr	r0, [r7, #4]
 8002358:	4798      	blx	r3
 800235a:	e000      	b.n	800235e <HAL_DMA_IRQHandler+0x30e>
 800235c:	bf00      	nop
 800235e:	3718      	adds	r7, #24
 8002360:	46bd      	mov	sp, r7
 8002362:	bd80      	pop	{r7, pc}

08002364 <DMA_CalcBaseAndBitshift>:
 8002364:	b480      	push	{r7}
 8002366:	b085      	sub	sp, #20
 8002368:	af00      	add	r7, sp, #0
 800236a:	6078      	str	r0, [r7, #4]
 800236c:	687b      	ldr	r3, [r7, #4]
 800236e:	681b      	ldr	r3, [r3, #0]
 8002370:	b2db      	uxtb	r3, r3
 8002372:	3b10      	subs	r3, #16
 8002374:	4a14      	ldr	r2, [pc, #80]	@ (80023c8 <DMA_CalcBaseAndBitshift+0x64>)
 8002376:	fba2 2303 	umull	r2, r3, r2, r3
 800237a:	091b      	lsrs	r3, r3, #4
 800237c:	60fb      	str	r3, [r7, #12]
 800237e:	4a13      	ldr	r2, [pc, #76]	@ (80023cc <DMA_CalcBaseAndBitshift+0x68>)
 8002380:	68fb      	ldr	r3, [r7, #12]
 8002382:	4413      	add	r3, r2
 8002384:	781b      	ldrb	r3, [r3, #0]
 8002386:	461a      	mov	r2, r3
 8002388:	687b      	ldr	r3, [r7, #4]
 800238a:	65da      	str	r2, [r3, #92]	@ 0x5c
 800238c:	68fb      	ldr	r3, [r7, #12]
 800238e:	2b03      	cmp	r3, #3
 8002390:	d909      	bls.n	80023a6 <DMA_CalcBaseAndBitshift+0x42>
 8002392:	687b      	ldr	r3, [r7, #4]
 8002394:	681b      	ldr	r3, [r3, #0]
 8002396:	f423 737f 	bic.w	r3, r3, #1020	@ 0x3fc
 800239a:	f023 0303 	bic.w	r3, r3, #3
 800239e:	1d1a      	adds	r2, r3, #4
 80023a0:	687b      	ldr	r3, [r7, #4]
 80023a2:	659a      	str	r2, [r3, #88]	@ 0x58
 80023a4:	e007      	b.n	80023b6 <DMA_CalcBaseAndBitshift+0x52>
 80023a6:	687b      	ldr	r3, [r7, #4]
 80023a8:	681b      	ldr	r3, [r3, #0]
 80023aa:	f423 737f 	bic.w	r3, r3, #1020	@ 0x3fc
 80023ae:	f023 0303 	bic.w	r3, r3, #3
 80023b2:	687a      	ldr	r2, [r7, #4]
 80023b4:	6593      	str	r3, [r2, #88]	@ 0x58
 80023b6:	687b      	ldr	r3, [r7, #4]
 80023b8:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80023ba:	4618      	mov	r0, r3
 80023bc:	3714      	adds	r7, #20
 80023be:	46bd      	mov	sp, r7
 80023c0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80023c4:	4770      	bx	lr
 80023c6:	bf00      	nop
 80023c8:	aaaaaaab 	.word	0xaaaaaaab
 80023cc:	08004a20 	.word	0x08004a20

080023d0 <DMA_CheckFifoParam>:
 80023d0:	b480      	push	{r7}
 80023d2:	b085      	sub	sp, #20
 80023d4:	af00      	add	r7, sp, #0
 80023d6:	6078      	str	r0, [r7, #4]
 80023d8:	2300      	movs	r3, #0
 80023da:	73fb      	strb	r3, [r7, #15]
 80023dc:	687b      	ldr	r3, [r7, #4]
 80023de:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80023e0:	60bb      	str	r3, [r7, #8]
 80023e2:	687b      	ldr	r3, [r7, #4]
 80023e4:	699b      	ldr	r3, [r3, #24]
 80023e6:	2b00      	cmp	r3, #0
 80023e8:	d11f      	bne.n	800242a <DMA_CheckFifoParam+0x5a>
 80023ea:	68bb      	ldr	r3, [r7, #8]
 80023ec:	2b03      	cmp	r3, #3
 80023ee:	d856      	bhi.n	800249e <DMA_CheckFifoParam+0xce>
 80023f0:	a201      	add	r2, pc, #4	@ (adr r2, 80023f8 <DMA_CheckFifoParam+0x28>)
 80023f2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80023f6:	bf00      	nop
 80023f8:	08002409 	.word	0x08002409
 80023fc:	0800241b 	.word	0x0800241b
 8002400:	08002409 	.word	0x08002409
 8002404:	0800249f 	.word	0x0800249f
 8002408:	687b      	ldr	r3, [r7, #4]
 800240a:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800240c:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 8002410:	2b00      	cmp	r3, #0
 8002412:	d046      	beq.n	80024a2 <DMA_CheckFifoParam+0xd2>
 8002414:	2301      	movs	r3, #1
 8002416:	73fb      	strb	r3, [r7, #15]
 8002418:	e043      	b.n	80024a2 <DMA_CheckFifoParam+0xd2>
 800241a:	687b      	ldr	r3, [r7, #4]
 800241c:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800241e:	f1b3 7fc0 	cmp.w	r3, #25165824	@ 0x1800000
 8002422:	d140      	bne.n	80024a6 <DMA_CheckFifoParam+0xd6>
 8002424:	2301      	movs	r3, #1
 8002426:	73fb      	strb	r3, [r7, #15]
 8002428:	e03d      	b.n	80024a6 <DMA_CheckFifoParam+0xd6>
 800242a:	687b      	ldr	r3, [r7, #4]
 800242c:	699b      	ldr	r3, [r3, #24]
 800242e:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8002432:	d121      	bne.n	8002478 <DMA_CheckFifoParam+0xa8>
 8002434:	68bb      	ldr	r3, [r7, #8]
 8002436:	2b03      	cmp	r3, #3
 8002438:	d837      	bhi.n	80024aa <DMA_CheckFifoParam+0xda>
 800243a:	a201      	add	r2, pc, #4	@ (adr r2, 8002440 <DMA_CheckFifoParam+0x70>)
 800243c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002440:	08002451 	.word	0x08002451
 8002444:	08002457 	.word	0x08002457
 8002448:	08002451 	.word	0x08002451
 800244c:	08002469 	.word	0x08002469
 8002450:	2301      	movs	r3, #1
 8002452:	73fb      	strb	r3, [r7, #15]
 8002454:	e030      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 8002456:	687b      	ldr	r3, [r7, #4]
 8002458:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800245a:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 800245e:	2b00      	cmp	r3, #0
 8002460:	d025      	beq.n	80024ae <DMA_CheckFifoParam+0xde>
 8002462:	2301      	movs	r3, #1
 8002464:	73fb      	strb	r3, [r7, #15]
 8002466:	e022      	b.n	80024ae <DMA_CheckFifoParam+0xde>
 8002468:	687b      	ldr	r3, [r7, #4]
 800246a:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800246c:	f1b3 7fc0 	cmp.w	r3, #25165824	@ 0x1800000
 8002470:	d11f      	bne.n	80024b2 <DMA_CheckFifoParam+0xe2>
 8002472:	2301      	movs	r3, #1
 8002474:	73fb      	strb	r3, [r7, #15]
 8002476:	e01c      	b.n	80024b2 <DMA_CheckFifoParam+0xe2>
 8002478:	68bb      	ldr	r3, [r7, #8]
 800247a:	2b02      	cmp	r3, #2
 800247c:	d903      	bls.n	8002486 <DMA_CheckFifoParam+0xb6>
 800247e:	68bb      	ldr	r3, [r7, #8]
 8002480:	2b03      	cmp	r3, #3
 8002482:	d003      	beq.n	800248c <DMA_CheckFifoParam+0xbc>
 8002484:	e018      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 8002486:	2301      	movs	r3, #1
 8002488:	73fb      	strb	r3, [r7, #15]
 800248a:	e015      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 800248c:	687b      	ldr	r3, [r7, #4]
 800248e:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8002490:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 8002494:	2b00      	cmp	r3, #0
 8002496:	d00e      	beq.n	80024b6 <DMA_CheckFifoParam+0xe6>
 8002498:	2301      	movs	r3, #1
 800249a:	73fb      	strb	r3, [r7, #15]
 800249c:	e00b      	b.n	80024b6 <DMA_CheckFifoParam+0xe6>
 800249e:	bf00      	nop
 80024a0:	e00a      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024a2:	bf00      	nop
 80024a4:	e008      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024a6:	bf00      	nop
 80024a8:	e006      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024aa:	bf00      	nop
 80024ac:	e004      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024ae:	bf00      	nop
 80024b0:	e002      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024b2:	bf00      	nop
 80024b4:	e000      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024b6:	bf00      	nop
 80024b8:	7bfb      	ldrb	r3, [r7, #15]
 80024ba:	4618      	mov	r0, r3
 80024bc:	3714      	adds	r7, #20
 80024be:	46bd      	mov	sp, r7
 80024c0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80024c4:	4770      	bx	lr
 80024c6:	bf00      	nop

080024c8 <HAL_GPIO_Init>:
 80024c8:	b480      	push	{r7}
 80024ca:	b089      	sub	sp, #36	@ 0x24
 80024cc:	af00      	add	r7, sp, #0
 80024ce:	6078      	str	r0, [r7, #4]
 80024d0:	6039      	str	r1, [r7, #0]
 80024d2:	2300      	movs	r3, #0
 80024d4:	617b      	str	r3, [r7, #20]
 80024d6:	2300      	movs	r3, #0
 80024d8:	613b      	str	r3, [r7, #16]
 80024da:	2300      	movs	r3, #0
 80024dc:	61bb      	str	r3, [r7, #24]
 80024de:	2300      	movs	r3, #0
 80024e0:	61fb      	str	r3, [r7, #28]
 80024e2:	e16b      	b.n	80027bc <HAL_GPIO_Init+0x2f4>
 80024e4:	2201      	movs	r2, #1
 80024e6:	69fb      	ldr	r3, [r7, #28]
 80024e8:	fa02 f303 	lsl.w	r3, r2, r3
 80024ec:	617b      	str	r3, [r7, #20]
 80024ee:	683b      	ldr	r3, [r7, #0]
 80024f0:	681b      	ldr	r3, [r3, #0]
 80024f2:	697a      	ldr	r2, [r7, #20]
 80024f4:	4013      	ands	r3, r2
 80024f6:	613b      	str	r3, [r7, #16]
 80024f8:	693a      	ldr	r2, [r7, #16]
 80024fa:	697b      	ldr	r3, [r7, #20]
 80024fc:	429a      	cmp	r2, r3
 80024fe:	f040 815a 	bne.w	80027b6 <HAL_GPIO_Init+0x2ee>
 8002502:	683b      	ldr	r3, [r7, #0]
 8002504:	685b      	ldr	r3, [r3, #4]
 8002506:	f003 0303 	and.w	r3, r3, #3
 800250a:	2b01      	cmp	r3, #1
 800250c:	d005      	beq.n	800251a <HAL_GPIO_Init+0x52>
 800250e:	683b      	ldr	r3, [r7, #0]
 8002510:	685b      	ldr	r3, [r3, #4]
 8002512:	f003 0303 	and.w	r3, r3, #3
 8002516:	2b02      	cmp	r3, #2
 8002518:	d130      	bne.n	800257c <HAL_GPIO_Init+0xb4>
 800251a:	687b      	ldr	r3, [r7, #4]
 800251c:	689b      	ldr	r3, [r3, #8]
 800251e:	61bb      	str	r3, [r7, #24]
 8002520:	69fb      	ldr	r3, [r7, #28]
 8002522:	005b      	lsls	r3, r3, #1
 8002524:	2203      	movs	r2, #3
 8002526:	fa02 f303 	lsl.w	r3, r2, r3
 800252a:	43db      	mvns	r3, r3
 800252c:	69ba      	ldr	r2, [r7, #24]
 800252e:	4013      	ands	r3, r2
 8002530:	61bb      	str	r3, [r7, #24]
 8002532:	683b      	ldr	r3, [r7, #0]
 8002534:	68da      	ldr	r2, [r3, #12]
 8002536:	69fb      	ldr	r3, [r7, #28]
 8002538:	005b      	lsls	r3, r3, #1
 800253a:	fa02 f303 	lsl.w	r3, r2, r3
 800253e:	69ba      	ldr	r2, [r7, #24]
 8002540:	4313      	orrs	r3, r2
 8002542:	61bb      	str	r3, [r7, #24]
 8002544:	687b      	ldr	r3, [r7, #4]
 8002546:	69ba      	ldr	r2, [r7, #24]
 8002548:	609a      	str	r2, [r3, #8]
 800254a:	687b      	ldr	r3, [r7, #4]
 800254c:	685b      	ldr	r3, [r3, #4]
 800254e:	61bb      	str	r3, [r7, #24]
 8002550:	2201      	movs	r2, #1
 8002552:	69fb      	ldr	r3, [r7, #28]
 8002554:	fa02 f303 	lsl.w	r3, r2, r3
 8002558:	43db      	mvns	r3, r3
 800255a:	69ba      	ldr	r2, [r7, #24]
 800255c:	4013      	ands	r3, r2
 800255e:	61bb      	str	r3, [r7, #24]
 8002560:	683b      	ldr	r3, [r7, #0]
 8002562:	685b      	ldr	r3, [r3, #4]
 8002564:	091b      	lsrs	r3, r3, #4
 8002566:	f003 0201 	and.w	r2, r3, #1
 800256a:	69fb      	ldr	r3, [r7, #28]
 800256c:	fa02 f303 	lsl.w	r3, r2, r3
 8002570:	69ba      	ldr	r2, [r7, #24]
 8002572:	4313      	orrs	r3, r2
 8002574:	61bb      	str	r3, [r7, #24]
 8002576:	687b      	ldr	r3, [r7, #4]
 8002578:	69ba      	ldr	r2, [r7, #24]
 800257a:	605a      	str	r2, [r3, #4]
 800257c:	683b      	ldr	r3, [r7, #0]
 800257e:	685b      	ldr	r3, [r3, #4]
 8002580:	f003 0303 	and.w	r3, r3, #3
 8002584:	2b03      	cmp	r3, #3
 8002586:	d017      	beq.n	80025b8 <HAL_GPIO_Init+0xf0>
 8002588:	687b      	ldr	r3, [r7, #4]
 800258a:	68db      	ldr	r3, [r3, #12]
 800258c:	61bb      	str	r3, [r7, #24]
 800258e:	69fb      	ldr	r3, [r7, #28]
 8002590:	005b      	lsls	r3, r3, #1
 8002592:	2203      	movs	r2, #3
 8002594:	fa02 f303 	lsl.w	r3, r2, r3
 8002598:	43db      	mvns	r3, r3
 800259a:	69ba      	ldr	r2, [r7, #24]
 800259c:	4013      	ands	r3, r2
 800259e:	61bb      	str	r3, [r7, #24]
 80025a0:	683b      	ldr	r3, [r7, #0]
 80025a2:	689a      	ldr	r2, [r3, #8]
 80025a4:	69fb      	ldr	r3, [r7, #28]
 80025a6:	005b      	lsls	r3, r3, #1
 80025a8:	fa02 f303 	lsl.w	r3, r2, r3
 80025ac:	69ba      	ldr	r2, [r7, #24]
 80025ae:	4313      	orrs	r3, r2
 80025b0:	61bb      	str	r3, [r7, #24]
 80025b2:	687b      	ldr	r3, [r7, #4]
 80025b4:	69ba      	ldr	r2, [r7, #24]
 80025b6:	60da      	str	r2, [r3, #12]
 80025b8:	683b      	ldr	r3, [r7, #0]
 80025ba:	685b      	ldr	r3, [r3, #4]
 80025bc:	f003 0303 	and.w	r3, r3, #3
 80025c0:	2b02      	cmp	r3, #2
 80025c2:	d123      	bne.n	800260c <HAL_GPIO_Init+0x144>
 80025c4:	69fb      	ldr	r3, [r7, #28]
 80025c6:	08da      	lsrs	r2, r3, #3
 80025c8:	687b      	ldr	r3, [r7, #4]
 80025ca:	3208      	adds	r2, #8
 80025cc:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80025d0:	61bb      	str	r3, [r7, #24]
 80025d2:	69fb      	ldr	r3, [r7, #28]
 80025d4:	f003 0307 	and.w	r3, r3, #7
 80025d8:	009b      	lsls	r3, r3, #2
 80025da:	220f      	movs	r2, #15
 80025dc:	fa02 f303 	lsl.w	r3, r2, r3
 80025e0:	43db      	mvns	r3, r3
 80025e2:	69ba      	ldr	r2, [r7, #24]
 80025e4:	4013      	ands	r3, r2
 80025e6:	61bb      	str	r3, [r7, #24]
 80025e8:	683b      	ldr	r3, [r7, #0]
 80025ea:	691a      	ldr	r2, [r3, #16]
 80025ec:	69fb      	ldr	r3, [r7, #28]
 80025ee:	f003 0307 	and.w	r3, r3, #7
 80025f2:	009b      	lsls	r3, r3, #2
 80025f4:	fa02 f303 	lsl.w	r3, r2, r3
 80025f8:	69ba      	ldr	r2, [r7, #24]
 80025fa:	4313      	orrs	r3, r2
 80025fc:	61bb      	str	r3, [r7, #24]
 80025fe:	69fb      	ldr	r3, [r7, #28]
 8002600:	08da      	lsrs	r2, r3, #3
 8002602:	687b      	ldr	r3, [r7, #4]
 8002604:	3208      	adds	r2, #8
 8002606:	69b9      	ldr	r1, [r7, #24]
 8002608:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800260c:	687b      	ldr	r3, [r7, #4]
 800260e:	681b      	ldr	r3, [r3, #0]
 8002610:	61bb      	str	r3, [r7, #24]
 8002612:	69fb      	ldr	r3, [r7, #28]
 8002614:	005b      	lsls	r3, r3, #1
 8002616:	2203      	movs	r2, #3
 8002618:	fa02 f303 	lsl.w	r3, r2, r3
 800261c:	43db      	mvns	r3, r3
 800261e:	69ba      	ldr	r2, [r7, #24]
 8002620:	4013      	ands	r3, r2
 8002622:	61bb      	str	r3, [r7, #24]
 8002624:	683b      	ldr	r3, [r7, #0]
 8002626:	685b      	ldr	r3, [r3, #4]
 8002628:	f003 0203 	and.w	r2, r3, #3
 800262c:	69fb      	ldr	r3, [r7, #28]
 800262e:	005b      	lsls	r3, r3, #1
 8002630:	fa02 f303 	lsl.w	r3, r2, r3
 8002634:	69ba      	ldr	r2, [r7, #24]
 8002636:	4313      	orrs	r3, r2
 8002638:	61bb      	str	r3, [r7, #24]
 800263a:	687b      	ldr	r3, [r7, #4]
 800263c:	69ba      	ldr	r2, [r7, #24]
 800263e:	601a      	str	r2, [r3, #0]
 8002640:	683b      	ldr	r3, [r7, #0]
 8002642:	685b      	ldr	r3, [r3, #4]
 8002644:	f403 3340 	and.w	r3, r3, #196608	@ 0x30000
 8002648:	2b00      	cmp	r3, #0
 800264a:	f000 80b4 	beq.w	80027b6 <HAL_GPIO_Init+0x2ee>
 800264e:	2300      	movs	r3, #0
 8002650:	60fb      	str	r3, [r7, #12]
 8002652:	4b60      	ldr	r3, [pc, #384]	@ (80027d4 <HAL_GPIO_Init+0x30c>)
 8002654:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8002656:	4a5f      	ldr	r2, [pc, #380]	@ (80027d4 <HAL_GPIO_Init+0x30c>)
 8002658:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 800265c:	6453      	str	r3, [r2, #68]	@ 0x44
 800265e:	4b5d      	ldr	r3, [pc, #372]	@ (80027d4 <HAL_GPIO_Init+0x30c>)
 8002660:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8002662:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8002666:	60fb      	str	r3, [r7, #12]
 8002668:	68fb      	ldr	r3, [r7, #12]
 800266a:	4a5b      	ldr	r2, [pc, #364]	@ (80027d8 <HAL_GPIO_Init+0x310>)
 800266c:	69fb      	ldr	r3, [r7, #28]
 800266e:	089b      	lsrs	r3, r3, #2
 8002670:	3302      	adds	r3, #2
 8002672:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002676:	61bb      	str	r3, [r7, #24]
 8002678:	69fb      	ldr	r3, [r7, #28]
 800267a:	f003 0303 	and.w	r3, r3, #3
 800267e:	009b      	lsls	r3, r3, #2
 8002680:	220f      	movs	r2, #15
 8002682:	fa02 f303 	lsl.w	r3, r2, r3
 8002686:	43db      	mvns	r3, r3
 8002688:	69ba      	ldr	r2, [r7, #24]
 800268a:	4013      	ands	r3, r2
 800268c:	61bb      	str	r3, [r7, #24]
 800268e:	687b      	ldr	r3, [r7, #4]
 8002690:	4a52      	ldr	r2, [pc, #328]	@ (80027dc <HAL_GPIO_Init+0x314>)
 8002692:	4293      	cmp	r3, r2
 8002694:	d02b      	beq.n	80026ee <HAL_GPIO_Init+0x226>
 8002696:	687b      	ldr	r3, [r7, #4]
 8002698:	4a51      	ldr	r2, [pc, #324]	@ (80027e0 <HAL_GPIO_Init+0x318>)
 800269a:	4293      	cmp	r3, r2
 800269c:	d025      	beq.n	80026ea <HAL_GPIO_Init+0x222>
 800269e:	687b      	ldr	r3, [r7, #4]
 80026a0:	4a50      	ldr	r2, [pc, #320]	@ (80027e4 <HAL_GPIO_Init+0x31c>)
 80026a2:	4293      	cmp	r3, r2
 80026a4:	d01f      	beq.n	80026e6 <HAL_GPIO_Init+0x21e>
 80026a6:	687b      	ldr	r3, [r7, #4]
 80026a8:	4a4f      	ldr	r2, [pc, #316]	@ (80027e8 <HAL_GPIO_Init+0x320>)
 80026aa:	4293      	cmp	r3, r2
 80026ac:	d019      	beq.n	80026e2 <HAL_GPIO_Init+0x21a>
 80026ae:	687b      	ldr	r3, [r7, #4]
 80026b0:	4a4e      	ldr	r2, [pc, #312]	@ (80027ec <HAL_GPIO_Init+0x324>)
 80026b2:	4293      	cmp	r3, r2
 80026b4:	d013      	beq.n	80026de <HAL_GPIO_Init+0x216>
 80026b6:	687b      	ldr	r3, [r7, #4]
 80026b8:	4a4d      	ldr	r2, [pc, #308]	@ (80027f0 <HAL_GPIO_Init+0x328>)
 80026ba:	4293      	cmp	r3, r2
 80026bc:	d00d      	beq.n	80026da <HAL_GPIO_Init+0x212>
 80026be:	687b      	ldr	r3, [r7, #4]
 80026c0:	4a4c      	ldr	r2, [pc, #304]	@ (80027f4 <HAL_GPIO_Init+0x32c>)
 80026c2:	4293      	cmp	r3, r2
 80026c4:	d007      	beq.n	80026d6 <HAL_GPIO_Init+0x20e>
 80026c6:	687b      	ldr	r3, [r7, #4]
 80026c8:	4a4b      	ldr	r2, [pc, #300]	@ (80027f8 <HAL_GPIO_Init+0x330>)
 80026ca:	4293      	cmp	r3, r2
 80026cc:	d101      	bne.n	80026d2 <HAL_GPIO_Init+0x20a>
 80026ce:	2307      	movs	r3, #7
 80026d0:	e00e      	b.n	80026f0 <HAL_GPIO_Init+0x228>
 80026d2:	2308      	movs	r3, #8
 80026d4:	e00c      	b.n	80026f0 <HAL_GPIO_Init+0x228>
 80026d6:	2306      	movs	r3, #6
 80026d8:	e00a      	b.n	80026f0 <HAL_GPIO_Init+0x228>
 80026da:	2305      	movs	r3, #5
 80026dc:	e008      	b.n	80026f0 <HAL_GPIO_Init+0x228>
 80026de:	2304      	movs	r3, #4
 80026e0:	e006      	b.n	80026f0 <HAL_GPIO_Init+0x228>
 80026e2:	2303      	movs	r3, #3
 80026e4:	e004      	b.n	80026f0 <HAL_GPIO_Init+0x228>
 80026e6:	2302      	movs	r3, #2
 80026e8:	e002      	b.n	80026f0 <HAL_GPIO_Init+0x228>
 80026ea:	2301      	movs	r3, #1
 80026ec:	e000      	b.n	80026f0 <HAL_GPIO_Init+0x228>
 80026ee:	2300      	movs	r3, #0
 80026f0:	69fa      	ldr	r2, [r7, #28]
 80026f2:	f002 0203 	and.w	r2, r2, #3
 80026f6:	0092      	lsls	r2, r2, #2
 80026f8:	4093      	lsls	r3, r2
 80026fa:	69ba      	ldr	r2, [r7, #24]
 80026fc:	4313      	orrs	r3, r2
 80026fe:	61bb      	str	r3, [r7, #24]
 8002700:	4935      	ldr	r1, [pc, #212]	@ (80027d8 <HAL_GPIO_Init+0x310>)
 8002702:	69fb      	ldr	r3, [r7, #28]
 8002704:	089b      	lsrs	r3, r3, #2
 8002706:	3302      	adds	r3, #2
 8002708:	69ba      	ldr	r2, [r7, #24]
 800270a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800270e:	4b3b      	ldr	r3, [pc, #236]	@ (80027fc <HAL_GPIO_Init+0x334>)
 8002710:	689b      	ldr	r3, [r3, #8]
 8002712:	61bb      	str	r3, [r7, #24]
 8002714:	693b      	ldr	r3, [r7, #16]
 8002716:	43db      	mvns	r3, r3
 8002718:	69ba      	ldr	r2, [r7, #24]
 800271a:	4013      	ands	r3, r2
 800271c:	61bb      	str	r3, [r7, #24]
 800271e:	683b      	ldr	r3, [r7, #0]
 8002720:	685b      	ldr	r3, [r3, #4]
 8002722:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 8002726:	2b00      	cmp	r3, #0
 8002728:	d003      	beq.n	8002732 <HAL_GPIO_Init+0x26a>
 800272a:	69ba      	ldr	r2, [r7, #24]
 800272c:	693b      	ldr	r3, [r7, #16]
 800272e:	4313      	orrs	r3, r2
 8002730:	61bb      	str	r3, [r7, #24]
 8002732:	4a32      	ldr	r2, [pc, #200]	@ (80027fc <HAL_GPIO_Init+0x334>)
 8002734:	69bb      	ldr	r3, [r7, #24]
 8002736:	6093      	str	r3, [r2, #8]
 8002738:	4b30      	ldr	r3, [pc, #192]	@ (80027fc <HAL_GPIO_Init+0x334>)
 800273a:	68db      	ldr	r3, [r3, #12]
 800273c:	61bb      	str	r3, [r7, #24]
 800273e:	693b      	ldr	r3, [r7, #16]
 8002740:	43db      	mvns	r3, r3
 8002742:	69ba      	ldr	r2, [r7, #24]
 8002744:	4013      	ands	r3, r2
 8002746:	61bb      	str	r3, [r7, #24]
 8002748:	683b      	ldr	r3, [r7, #0]
 800274a:	685b      	ldr	r3, [r3, #4]
 800274c:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 8002750:	2b00      	cmp	r3, #0
 8002752:	d003      	beq.n	800275c <HAL_GPIO_Init+0x294>
 8002754:	69ba      	ldr	r2, [r7, #24]
 8002756:	693b      	ldr	r3, [r7, #16]
 8002758:	4313      	orrs	r3, r2
 800275a:	61bb      	str	r3, [r7, #24]
 800275c:	4a27      	ldr	r2, [pc, #156]	@ (80027fc <HAL_GPIO_Init+0x334>)
 800275e:	69bb      	ldr	r3, [r7, #24]
 8002760:	60d3      	str	r3, [r2, #12]
 8002762:	4b26      	ldr	r3, [pc, #152]	@ (80027fc <HAL_GPIO_Init+0x334>)
 8002764:	685b      	ldr	r3, [r3, #4]
 8002766:	61bb      	str	r3, [r7, #24]
 8002768:	693b      	ldr	r3, [r7, #16]
 800276a:	43db      	mvns	r3, r3
 800276c:	69ba      	ldr	r2, [r7, #24]
 800276e:	4013      	ands	r3, r2
 8002770:	61bb      	str	r3, [r7, #24]
 8002772:	683b      	ldr	r3, [r7, #0]
 8002774:	685b      	ldr	r3, [r3, #4]
 8002776:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 800277a:	2b00      	cmp	r3, #0
 800277c:	d003      	beq.n	8002786 <HAL_GPIO_Init+0x2be>
 800277e:	69ba      	ldr	r2, [r7, #24]
 8002780:	693b      	ldr	r3, [r7, #16]
 8002782:	4313      	orrs	r3, r2
 8002784:	61bb      	str	r3, [r7, #24]
 8002786:	4a1d      	ldr	r2, [pc, #116]	@ (80027fc <HAL_GPIO_Init+0x334>)
 8002788:	69bb      	ldr	r3, [r7, #24]
 800278a:	6053      	str	r3, [r2, #4]
 800278c:	4b1b      	ldr	r3, [pc, #108]	@ (80027fc <HAL_GPIO_Init+0x334>)
 800278e:	681b      	ldr	r3, [r3, #0]
 8002790:	61bb      	str	r3, [r7, #24]
 8002792:	693b      	ldr	r3, [r7, #16]
 8002794:	43db      	mvns	r3, r3
 8002796:	69ba      	ldr	r2, [r7, #24]
 8002798:	4013      	ands	r3, r2
 800279a:	61bb      	str	r3, [r7, #24]
 800279c:	683b      	ldr	r3, [r7, #0]
 800279e:	685b      	ldr	r3, [r3, #4]
 80027a0:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 80027a4:	2b00      	cmp	r3, #0
 80027a6:	d003      	beq.n	80027b0 <HAL_GPIO_Init+0x2e8>
 80027a8:	69ba      	ldr	r2, [r7, #24]
 80027aa:	693b      	ldr	r3, [r7, #16]
 80027ac:	4313      	orrs	r3, r2
 80027ae:	61bb      	str	r3, [r7, #24]
 80027b0:	4a12      	ldr	r2, [pc, #72]	@ (80027fc <HAL_GPIO_Init+0x334>)
 80027b2:	69bb      	ldr	r3, [r7, #24]
 80027b4:	6013      	str	r3, [r2, #0]
 80027b6:	69fb      	ldr	r3, [r7, #28]
 80027b8:	3301      	adds	r3, #1
 80027ba:	61fb      	str	r3, [r7, #28]
 80027bc:	69fb      	ldr	r3, [r7, #28]
 80027be:	2b0f      	cmp	r3, #15
 80027c0:	f67f ae90 	bls.w	80024e4 <HAL_GPIO_Init+0x1c>
 80027c4:	bf00      	nop
 80027c6:	bf00      	nop
 80027c8:	3724      	adds	r7, #36	@ 0x24
 80027ca:	46bd      	mov	sp, r7
 80027cc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027d0:	4770      	bx	lr
 80027d2:	bf00      	nop
 80027d4:	40023800 	.word	0x40023800
 80027d8:	40013800 	.word	0x40013800
 80027dc:	40020000 	.word	0x40020000
 80027e0:	40020400 	.word	0x40020400
 80027e4:	40020800 	.word	0x40020800
 80027e8:	40020c00 	.word	0x40020c00
 80027ec:	40021000 	.word	0x40021000
 80027f0:	40021400 	.word	0x40021400
 80027f4:	40021800 	.word	0x40021800
 80027f8:	40021c00 	.word	0x40021c00
 80027fc:	40013c00 	.word	0x40013c00

08002800 <HAL_RCC_OscConfig>:
 8002800:	b580      	push	{r7, lr}
 8002802:	b086      	sub	sp, #24
 8002804:	af00      	add	r7, sp, #0
 8002806:	6078      	str	r0, [r7, #4]
 8002808:	687b      	ldr	r3, [r7, #4]
 800280a:	2b00      	cmp	r3, #0
 800280c:	d101      	bne.n	8002812 <HAL_RCC_OscConfig+0x12>
 800280e:	2301      	movs	r3, #1
 8002810:	e267      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002812:	687b      	ldr	r3, [r7, #4]
 8002814:	681b      	ldr	r3, [r3, #0]
 8002816:	f003 0301 	and.w	r3, r3, #1
 800281a:	2b00      	cmp	r3, #0
 800281c:	d075      	beq.n	800290a <HAL_RCC_OscConfig+0x10a>
 800281e:	4b88      	ldr	r3, [pc, #544]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002820:	689b      	ldr	r3, [r3, #8]
 8002822:	f003 030c 	and.w	r3, r3, #12
 8002826:	2b04      	cmp	r3, #4
 8002828:	d00c      	beq.n	8002844 <HAL_RCC_OscConfig+0x44>
 800282a:	4b85      	ldr	r3, [pc, #532]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 800282c:	689b      	ldr	r3, [r3, #8]
 800282e:	f003 030c 	and.w	r3, r3, #12
 8002832:	2b08      	cmp	r3, #8
 8002834:	d112      	bne.n	800285c <HAL_RCC_OscConfig+0x5c>
 8002836:	4b82      	ldr	r3, [pc, #520]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002838:	685b      	ldr	r3, [r3, #4]
 800283a:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 800283e:	f5b3 0f80 	cmp.w	r3, #4194304	@ 0x400000
 8002842:	d10b      	bne.n	800285c <HAL_RCC_OscConfig+0x5c>
 8002844:	4b7e      	ldr	r3, [pc, #504]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002846:	681b      	ldr	r3, [r3, #0]
 8002848:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 800284c:	2b00      	cmp	r3, #0
 800284e:	d05b      	beq.n	8002908 <HAL_RCC_OscConfig+0x108>
 8002850:	687b      	ldr	r3, [r7, #4]
 8002852:	685b      	ldr	r3, [r3, #4]
 8002854:	2b00      	cmp	r3, #0
 8002856:	d157      	bne.n	8002908 <HAL_RCC_OscConfig+0x108>
 8002858:	2301      	movs	r3, #1
 800285a:	e242      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 800285c:	687b      	ldr	r3, [r7, #4]
 800285e:	685b      	ldr	r3, [r3, #4]
 8002860:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8002864:	d106      	bne.n	8002874 <HAL_RCC_OscConfig+0x74>
 8002866:	4b76      	ldr	r3, [pc, #472]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002868:	681b      	ldr	r3, [r3, #0]
 800286a:	4a75      	ldr	r2, [pc, #468]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 800286c:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8002870:	6013      	str	r3, [r2, #0]
 8002872:	e01d      	b.n	80028b0 <HAL_RCC_OscConfig+0xb0>
 8002874:	687b      	ldr	r3, [r7, #4]
 8002876:	685b      	ldr	r3, [r3, #4]
 8002878:	f5b3 2fa0 	cmp.w	r3, #327680	@ 0x50000
 800287c:	d10c      	bne.n	8002898 <HAL_RCC_OscConfig+0x98>
 800287e:	4b70      	ldr	r3, [pc, #448]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002880:	681b      	ldr	r3, [r3, #0]
 8002882:	4a6f      	ldr	r2, [pc, #444]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002884:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 8002888:	6013      	str	r3, [r2, #0]
 800288a:	4b6d      	ldr	r3, [pc, #436]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 800288c:	681b      	ldr	r3, [r3, #0]
 800288e:	4a6c      	ldr	r2, [pc, #432]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002890:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8002894:	6013      	str	r3, [r2, #0]
 8002896:	e00b      	b.n	80028b0 <HAL_RCC_OscConfig+0xb0>
 8002898:	4b69      	ldr	r3, [pc, #420]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 800289a:	681b      	ldr	r3, [r3, #0]
 800289c:	4a68      	ldr	r2, [pc, #416]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 800289e:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 80028a2:	6013      	str	r3, [r2, #0]
 80028a4:	4b66      	ldr	r3, [pc, #408]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 80028a6:	681b      	ldr	r3, [r3, #0]
 80028a8:	4a65      	ldr	r2, [pc, #404]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 80028aa:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 80028ae:	6013      	str	r3, [r2, #0]
 80028b0:	687b      	ldr	r3, [r7, #4]
 80028b2:	685b      	ldr	r3, [r3, #4]
 80028b4:	2b00      	cmp	r3, #0
 80028b6:	d013      	beq.n	80028e0 <HAL_RCC_OscConfig+0xe0>
 80028b8:	f7ff f96e 	bl	8001b98 <HAL_GetTick>
 80028bc:	6138      	str	r0, [r7, #16]
 80028be:	e008      	b.n	80028d2 <HAL_RCC_OscConfig+0xd2>
 80028c0:	f7ff f96a 	bl	8001b98 <HAL_GetTick>
 80028c4:	4602      	mov	r2, r0
 80028c6:	693b      	ldr	r3, [r7, #16]
 80028c8:	1ad3      	subs	r3, r2, r3
 80028ca:	2b64      	cmp	r3, #100	@ 0x64
 80028cc:	d901      	bls.n	80028d2 <HAL_RCC_OscConfig+0xd2>
 80028ce:	2303      	movs	r3, #3
 80028d0:	e207      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 80028d2:	4b5b      	ldr	r3, [pc, #364]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 80028d4:	681b      	ldr	r3, [r3, #0]
 80028d6:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 80028da:	2b00      	cmp	r3, #0
 80028dc:	d0f0      	beq.n	80028c0 <HAL_RCC_OscConfig+0xc0>
 80028de:	e014      	b.n	800290a <HAL_RCC_OscConfig+0x10a>
 80028e0:	f7ff f95a 	bl	8001b98 <HAL_GetTick>
 80028e4:	6138      	str	r0, [r7, #16]
 80028e6:	e008      	b.n	80028fa <HAL_RCC_OscConfig+0xfa>
 80028e8:	f7ff f956 	bl	8001b98 <HAL_GetTick>
 80028ec:	4602      	mov	r2, r0
 80028ee:	693b      	ldr	r3, [r7, #16]
 80028f0:	1ad3      	subs	r3, r2, r3
 80028f2:	2b64      	cmp	r3, #100	@ 0x64
 80028f4:	d901      	bls.n	80028fa <HAL_RCC_OscConfig+0xfa>
 80028f6:	2303      	movs	r3, #3
 80028f8:	e1f3      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 80028fa:	4b51      	ldr	r3, [pc, #324]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 80028fc:	681b      	ldr	r3, [r3, #0]
 80028fe:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8002902:	2b00      	cmp	r3, #0
 8002904:	d1f0      	bne.n	80028e8 <HAL_RCC_OscConfig+0xe8>
 8002906:	e000      	b.n	800290a <HAL_RCC_OscConfig+0x10a>
 8002908:	bf00      	nop
 800290a:	687b      	ldr	r3, [r7, #4]
 800290c:	681b      	ldr	r3, [r3, #0]
 800290e:	f003 0302 	and.w	r3, r3, #2
 8002912:	2b00      	cmp	r3, #0
 8002914:	d063      	beq.n	80029de <HAL_RCC_OscConfig+0x1de>
 8002916:	4b4a      	ldr	r3, [pc, #296]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002918:	689b      	ldr	r3, [r3, #8]
 800291a:	f003 030c 	and.w	r3, r3, #12
 800291e:	2b00      	cmp	r3, #0
 8002920:	d00b      	beq.n	800293a <HAL_RCC_OscConfig+0x13a>
 8002922:	4b47      	ldr	r3, [pc, #284]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002924:	689b      	ldr	r3, [r3, #8]
 8002926:	f003 030c 	and.w	r3, r3, #12
 800292a:	2b08      	cmp	r3, #8
 800292c:	d11c      	bne.n	8002968 <HAL_RCC_OscConfig+0x168>
 800292e:	4b44      	ldr	r3, [pc, #272]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002930:	685b      	ldr	r3, [r3, #4]
 8002932:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8002936:	2b00      	cmp	r3, #0
 8002938:	d116      	bne.n	8002968 <HAL_RCC_OscConfig+0x168>
 800293a:	4b41      	ldr	r3, [pc, #260]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 800293c:	681b      	ldr	r3, [r3, #0]
 800293e:	f003 0302 	and.w	r3, r3, #2
 8002942:	2b00      	cmp	r3, #0
 8002944:	d005      	beq.n	8002952 <HAL_RCC_OscConfig+0x152>
 8002946:	687b      	ldr	r3, [r7, #4]
 8002948:	68db      	ldr	r3, [r3, #12]
 800294a:	2b01      	cmp	r3, #1
 800294c:	d001      	beq.n	8002952 <HAL_RCC_OscConfig+0x152>
 800294e:	2301      	movs	r3, #1
 8002950:	e1c7      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002952:	4b3b      	ldr	r3, [pc, #236]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002954:	681b      	ldr	r3, [r3, #0]
 8002956:	f023 02f8 	bic.w	r2, r3, #248	@ 0xf8
 800295a:	687b      	ldr	r3, [r7, #4]
 800295c:	691b      	ldr	r3, [r3, #16]
 800295e:	00db      	lsls	r3, r3, #3
 8002960:	4937      	ldr	r1, [pc, #220]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002962:	4313      	orrs	r3, r2
 8002964:	600b      	str	r3, [r1, #0]
 8002966:	e03a      	b.n	80029de <HAL_RCC_OscConfig+0x1de>
 8002968:	687b      	ldr	r3, [r7, #4]
 800296a:	68db      	ldr	r3, [r3, #12]
 800296c:	2b00      	cmp	r3, #0
 800296e:	d020      	beq.n	80029b2 <HAL_RCC_OscConfig+0x1b2>
 8002970:	4b34      	ldr	r3, [pc, #208]	@ (8002a44 <HAL_RCC_OscConfig+0x244>)
 8002972:	2201      	movs	r2, #1
 8002974:	601a      	str	r2, [r3, #0]
 8002976:	f7ff f90f 	bl	8001b98 <HAL_GetTick>
 800297a:	6138      	str	r0, [r7, #16]
 800297c:	e008      	b.n	8002990 <HAL_RCC_OscConfig+0x190>
 800297e:	f7ff f90b 	bl	8001b98 <HAL_GetTick>
 8002982:	4602      	mov	r2, r0
 8002984:	693b      	ldr	r3, [r7, #16]
 8002986:	1ad3      	subs	r3, r2, r3
 8002988:	2b02      	cmp	r3, #2
 800298a:	d901      	bls.n	8002990 <HAL_RCC_OscConfig+0x190>
 800298c:	2303      	movs	r3, #3
 800298e:	e1a8      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002990:	4b2b      	ldr	r3, [pc, #172]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002992:	681b      	ldr	r3, [r3, #0]
 8002994:	f003 0302 	and.w	r3, r3, #2
 8002998:	2b00      	cmp	r3, #0
 800299a:	d0f0      	beq.n	800297e <HAL_RCC_OscConfig+0x17e>
 800299c:	4b28      	ldr	r3, [pc, #160]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 800299e:	681b      	ldr	r3, [r3, #0]
 80029a0:	f023 02f8 	bic.w	r2, r3, #248	@ 0xf8
 80029a4:	687b      	ldr	r3, [r7, #4]
 80029a6:	691b      	ldr	r3, [r3, #16]
 80029a8:	00db      	lsls	r3, r3, #3
 80029aa:	4925      	ldr	r1, [pc, #148]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 80029ac:	4313      	orrs	r3, r2
 80029ae:	600b      	str	r3, [r1, #0]
 80029b0:	e015      	b.n	80029de <HAL_RCC_OscConfig+0x1de>
 80029b2:	4b24      	ldr	r3, [pc, #144]	@ (8002a44 <HAL_RCC_OscConfig+0x244>)
 80029b4:	2200      	movs	r2, #0
 80029b6:	601a      	str	r2, [r3, #0]
 80029b8:	f7ff f8ee 	bl	8001b98 <HAL_GetTick>
 80029bc:	6138      	str	r0, [r7, #16]
 80029be:	e008      	b.n	80029d2 <HAL_RCC_OscConfig+0x1d2>
 80029c0:	f7ff f8ea 	bl	8001b98 <HAL_GetTick>
 80029c4:	4602      	mov	r2, r0
 80029c6:	693b      	ldr	r3, [r7, #16]
 80029c8:	1ad3      	subs	r3, r2, r3
 80029ca:	2b02      	cmp	r3, #2
 80029cc:	d901      	bls.n	80029d2 <HAL_RCC_OscConfig+0x1d2>
 80029ce:	2303      	movs	r3, #3
 80029d0:	e187      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 80029d2:	4b1b      	ldr	r3, [pc, #108]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 80029d4:	681b      	ldr	r3, [r3, #0]
 80029d6:	f003 0302 	and.w	r3, r3, #2
 80029da:	2b00      	cmp	r3, #0
 80029dc:	d1f0      	bne.n	80029c0 <HAL_RCC_OscConfig+0x1c0>
 80029de:	687b      	ldr	r3, [r7, #4]
 80029e0:	681b      	ldr	r3, [r3, #0]
 80029e2:	f003 0308 	and.w	r3, r3, #8
 80029e6:	2b00      	cmp	r3, #0
 80029e8:	d036      	beq.n	8002a58 <HAL_RCC_OscConfig+0x258>
 80029ea:	687b      	ldr	r3, [r7, #4]
 80029ec:	695b      	ldr	r3, [r3, #20]
 80029ee:	2b00      	cmp	r3, #0
 80029f0:	d016      	beq.n	8002a20 <HAL_RCC_OscConfig+0x220>
 80029f2:	4b15      	ldr	r3, [pc, #84]	@ (8002a48 <HAL_RCC_OscConfig+0x248>)
 80029f4:	2201      	movs	r2, #1
 80029f6:	601a      	str	r2, [r3, #0]
 80029f8:	f7ff f8ce 	bl	8001b98 <HAL_GetTick>
 80029fc:	6138      	str	r0, [r7, #16]
 80029fe:	e008      	b.n	8002a12 <HAL_RCC_OscConfig+0x212>
 8002a00:	f7ff f8ca 	bl	8001b98 <HAL_GetTick>
 8002a04:	4602      	mov	r2, r0
 8002a06:	693b      	ldr	r3, [r7, #16]
 8002a08:	1ad3      	subs	r3, r2, r3
 8002a0a:	2b02      	cmp	r3, #2
 8002a0c:	d901      	bls.n	8002a12 <HAL_RCC_OscConfig+0x212>
 8002a0e:	2303      	movs	r3, #3
 8002a10:	e167      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002a12:	4b0b      	ldr	r3, [pc, #44]	@ (8002a40 <HAL_RCC_OscConfig+0x240>)
 8002a14:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8002a16:	f003 0302 	and.w	r3, r3, #2
 8002a1a:	2b00      	cmp	r3, #0
 8002a1c:	d0f0      	beq.n	8002a00 <HAL_RCC_OscConfig+0x200>
 8002a1e:	e01b      	b.n	8002a58 <HAL_RCC_OscConfig+0x258>
 8002a20:	4b09      	ldr	r3, [pc, #36]	@ (8002a48 <HAL_RCC_OscConfig+0x248>)
 8002a22:	2200      	movs	r2, #0
 8002a24:	601a      	str	r2, [r3, #0]
 8002a26:	f7ff f8b7 	bl	8001b98 <HAL_GetTick>
 8002a2a:	6138      	str	r0, [r7, #16]
 8002a2c:	e00e      	b.n	8002a4c <HAL_RCC_OscConfig+0x24c>
 8002a2e:	f7ff f8b3 	bl	8001b98 <HAL_GetTick>
 8002a32:	4602      	mov	r2, r0
 8002a34:	693b      	ldr	r3, [r7, #16]
 8002a36:	1ad3      	subs	r3, r2, r3
 8002a38:	2b02      	cmp	r3, #2
 8002a3a:	d907      	bls.n	8002a4c <HAL_RCC_OscConfig+0x24c>
 8002a3c:	2303      	movs	r3, #3
 8002a3e:	e150      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002a40:	40023800 	.word	0x40023800
 8002a44:	42470000 	.word	0x42470000
 8002a48:	42470e80 	.word	0x42470e80
 8002a4c:	4b88      	ldr	r3, [pc, #544]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002a4e:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8002a50:	f003 0302 	and.w	r3, r3, #2
 8002a54:	2b00      	cmp	r3, #0
 8002a56:	d1ea      	bne.n	8002a2e <HAL_RCC_OscConfig+0x22e>
 8002a58:	687b      	ldr	r3, [r7, #4]
 8002a5a:	681b      	ldr	r3, [r3, #0]
 8002a5c:	f003 0304 	and.w	r3, r3, #4
 8002a60:	2b00      	cmp	r3, #0
 8002a62:	f000 8097 	beq.w	8002b94 <HAL_RCC_OscConfig+0x394>
 8002a66:	2300      	movs	r3, #0
 8002a68:	75fb      	strb	r3, [r7, #23]
 8002a6a:	4b81      	ldr	r3, [pc, #516]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002a6c:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8002a6e:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8002a72:	2b00      	cmp	r3, #0
 8002a74:	d10f      	bne.n	8002a96 <HAL_RCC_OscConfig+0x296>
 8002a76:	2300      	movs	r3, #0
 8002a78:	60bb      	str	r3, [r7, #8]
 8002a7a:	4b7d      	ldr	r3, [pc, #500]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002a7c:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8002a7e:	4a7c      	ldr	r2, [pc, #496]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002a80:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8002a84:	6413      	str	r3, [r2, #64]	@ 0x40
 8002a86:	4b7a      	ldr	r3, [pc, #488]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002a88:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8002a8a:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8002a8e:	60bb      	str	r3, [r7, #8]
 8002a90:	68bb      	ldr	r3, [r7, #8]
 8002a92:	2301      	movs	r3, #1
 8002a94:	75fb      	strb	r3, [r7, #23]
 8002a96:	4b77      	ldr	r3, [pc, #476]	@ (8002c74 <HAL_RCC_OscConfig+0x474>)
 8002a98:	681b      	ldr	r3, [r3, #0]
 8002a9a:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8002a9e:	2b00      	cmp	r3, #0
 8002aa0:	d118      	bne.n	8002ad4 <HAL_RCC_OscConfig+0x2d4>
 8002aa2:	4b74      	ldr	r3, [pc, #464]	@ (8002c74 <HAL_RCC_OscConfig+0x474>)
 8002aa4:	681b      	ldr	r3, [r3, #0]
 8002aa6:	4a73      	ldr	r2, [pc, #460]	@ (8002c74 <HAL_RCC_OscConfig+0x474>)
 8002aa8:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8002aac:	6013      	str	r3, [r2, #0]
 8002aae:	f7ff f873 	bl	8001b98 <HAL_GetTick>
 8002ab2:	6138      	str	r0, [r7, #16]
 8002ab4:	e008      	b.n	8002ac8 <HAL_RCC_OscConfig+0x2c8>
 8002ab6:	f7ff f86f 	bl	8001b98 <HAL_GetTick>
 8002aba:	4602      	mov	r2, r0
 8002abc:	693b      	ldr	r3, [r7, #16]
 8002abe:	1ad3      	subs	r3, r2, r3
 8002ac0:	2b02      	cmp	r3, #2
 8002ac2:	d901      	bls.n	8002ac8 <HAL_RCC_OscConfig+0x2c8>
 8002ac4:	2303      	movs	r3, #3
 8002ac6:	e10c      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002ac8:	4b6a      	ldr	r3, [pc, #424]	@ (8002c74 <HAL_RCC_OscConfig+0x474>)
 8002aca:	681b      	ldr	r3, [r3, #0]
 8002acc:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8002ad0:	2b00      	cmp	r3, #0
 8002ad2:	d0f0      	beq.n	8002ab6 <HAL_RCC_OscConfig+0x2b6>
 8002ad4:	687b      	ldr	r3, [r7, #4]
 8002ad6:	689b      	ldr	r3, [r3, #8]
 8002ad8:	2b01      	cmp	r3, #1
 8002ada:	d106      	bne.n	8002aea <HAL_RCC_OscConfig+0x2ea>
 8002adc:	4b64      	ldr	r3, [pc, #400]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002ade:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8002ae0:	4a63      	ldr	r2, [pc, #396]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002ae2:	f043 0301 	orr.w	r3, r3, #1
 8002ae6:	6713      	str	r3, [r2, #112]	@ 0x70
 8002ae8:	e01c      	b.n	8002b24 <HAL_RCC_OscConfig+0x324>
 8002aea:	687b      	ldr	r3, [r7, #4]
 8002aec:	689b      	ldr	r3, [r3, #8]
 8002aee:	2b05      	cmp	r3, #5
 8002af0:	d10c      	bne.n	8002b0c <HAL_RCC_OscConfig+0x30c>
 8002af2:	4b5f      	ldr	r3, [pc, #380]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002af4:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8002af6:	4a5e      	ldr	r2, [pc, #376]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002af8:	f043 0304 	orr.w	r3, r3, #4
 8002afc:	6713      	str	r3, [r2, #112]	@ 0x70
 8002afe:	4b5c      	ldr	r3, [pc, #368]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b00:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8002b02:	4a5b      	ldr	r2, [pc, #364]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b04:	f043 0301 	orr.w	r3, r3, #1
 8002b08:	6713      	str	r3, [r2, #112]	@ 0x70
 8002b0a:	e00b      	b.n	8002b24 <HAL_RCC_OscConfig+0x324>
 8002b0c:	4b58      	ldr	r3, [pc, #352]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b0e:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8002b10:	4a57      	ldr	r2, [pc, #348]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b12:	f023 0301 	bic.w	r3, r3, #1
 8002b16:	6713      	str	r3, [r2, #112]	@ 0x70
 8002b18:	4b55      	ldr	r3, [pc, #340]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b1a:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8002b1c:	4a54      	ldr	r2, [pc, #336]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b1e:	f023 0304 	bic.w	r3, r3, #4
 8002b22:	6713      	str	r3, [r2, #112]	@ 0x70
 8002b24:	687b      	ldr	r3, [r7, #4]
 8002b26:	689b      	ldr	r3, [r3, #8]
 8002b28:	2b00      	cmp	r3, #0
 8002b2a:	d015      	beq.n	8002b58 <HAL_RCC_OscConfig+0x358>
 8002b2c:	f7ff f834 	bl	8001b98 <HAL_GetTick>
 8002b30:	6138      	str	r0, [r7, #16]
 8002b32:	e00a      	b.n	8002b4a <HAL_RCC_OscConfig+0x34a>
 8002b34:	f7ff f830 	bl	8001b98 <HAL_GetTick>
 8002b38:	4602      	mov	r2, r0
 8002b3a:	693b      	ldr	r3, [r7, #16]
 8002b3c:	1ad3      	subs	r3, r2, r3
 8002b3e:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002b42:	4293      	cmp	r3, r2
 8002b44:	d901      	bls.n	8002b4a <HAL_RCC_OscConfig+0x34a>
 8002b46:	2303      	movs	r3, #3
 8002b48:	e0cb      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002b4a:	4b49      	ldr	r3, [pc, #292]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b4c:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8002b4e:	f003 0302 	and.w	r3, r3, #2
 8002b52:	2b00      	cmp	r3, #0
 8002b54:	d0ee      	beq.n	8002b34 <HAL_RCC_OscConfig+0x334>
 8002b56:	e014      	b.n	8002b82 <HAL_RCC_OscConfig+0x382>
 8002b58:	f7ff f81e 	bl	8001b98 <HAL_GetTick>
 8002b5c:	6138      	str	r0, [r7, #16]
 8002b5e:	e00a      	b.n	8002b76 <HAL_RCC_OscConfig+0x376>
 8002b60:	f7ff f81a 	bl	8001b98 <HAL_GetTick>
 8002b64:	4602      	mov	r2, r0
 8002b66:	693b      	ldr	r3, [r7, #16]
 8002b68:	1ad3      	subs	r3, r2, r3
 8002b6a:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002b6e:	4293      	cmp	r3, r2
 8002b70:	d901      	bls.n	8002b76 <HAL_RCC_OscConfig+0x376>
 8002b72:	2303      	movs	r3, #3
 8002b74:	e0b5      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002b76:	4b3e      	ldr	r3, [pc, #248]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b78:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8002b7a:	f003 0302 	and.w	r3, r3, #2
 8002b7e:	2b00      	cmp	r3, #0
 8002b80:	d1ee      	bne.n	8002b60 <HAL_RCC_OscConfig+0x360>
 8002b82:	7dfb      	ldrb	r3, [r7, #23]
 8002b84:	2b01      	cmp	r3, #1
 8002b86:	d105      	bne.n	8002b94 <HAL_RCC_OscConfig+0x394>
 8002b88:	4b39      	ldr	r3, [pc, #228]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b8a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8002b8c:	4a38      	ldr	r2, [pc, #224]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002b8e:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8002b92:	6413      	str	r3, [r2, #64]	@ 0x40
 8002b94:	687b      	ldr	r3, [r7, #4]
 8002b96:	699b      	ldr	r3, [r3, #24]
 8002b98:	2b00      	cmp	r3, #0
 8002b9a:	f000 80a1 	beq.w	8002ce0 <HAL_RCC_OscConfig+0x4e0>
 8002b9e:	4b34      	ldr	r3, [pc, #208]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002ba0:	689b      	ldr	r3, [r3, #8]
 8002ba2:	f003 030c 	and.w	r3, r3, #12
 8002ba6:	2b08      	cmp	r3, #8
 8002ba8:	d05c      	beq.n	8002c64 <HAL_RCC_OscConfig+0x464>
 8002baa:	687b      	ldr	r3, [r7, #4]
 8002bac:	699b      	ldr	r3, [r3, #24]
 8002bae:	2b02      	cmp	r3, #2
 8002bb0:	d141      	bne.n	8002c36 <HAL_RCC_OscConfig+0x436>
 8002bb2:	4b31      	ldr	r3, [pc, #196]	@ (8002c78 <HAL_RCC_OscConfig+0x478>)
 8002bb4:	2200      	movs	r2, #0
 8002bb6:	601a      	str	r2, [r3, #0]
 8002bb8:	f7fe ffee 	bl	8001b98 <HAL_GetTick>
 8002bbc:	6138      	str	r0, [r7, #16]
 8002bbe:	e008      	b.n	8002bd2 <HAL_RCC_OscConfig+0x3d2>
 8002bc0:	f7fe ffea 	bl	8001b98 <HAL_GetTick>
 8002bc4:	4602      	mov	r2, r0
 8002bc6:	693b      	ldr	r3, [r7, #16]
 8002bc8:	1ad3      	subs	r3, r2, r3
 8002bca:	2b02      	cmp	r3, #2
 8002bcc:	d901      	bls.n	8002bd2 <HAL_RCC_OscConfig+0x3d2>
 8002bce:	2303      	movs	r3, #3
 8002bd0:	e087      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002bd2:	4b27      	ldr	r3, [pc, #156]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002bd4:	681b      	ldr	r3, [r3, #0]
 8002bd6:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8002bda:	2b00      	cmp	r3, #0
 8002bdc:	d1f0      	bne.n	8002bc0 <HAL_RCC_OscConfig+0x3c0>
 8002bde:	687b      	ldr	r3, [r7, #4]
 8002be0:	69da      	ldr	r2, [r3, #28]
 8002be2:	687b      	ldr	r3, [r7, #4]
 8002be4:	6a1b      	ldr	r3, [r3, #32]
 8002be6:	431a      	orrs	r2, r3
 8002be8:	687b      	ldr	r3, [r7, #4]
 8002bea:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8002bec:	019b      	lsls	r3, r3, #6
 8002bee:	431a      	orrs	r2, r3
 8002bf0:	687b      	ldr	r3, [r7, #4]
 8002bf2:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8002bf4:	085b      	lsrs	r3, r3, #1
 8002bf6:	3b01      	subs	r3, #1
 8002bf8:	041b      	lsls	r3, r3, #16
 8002bfa:	431a      	orrs	r2, r3
 8002bfc:	687b      	ldr	r3, [r7, #4]
 8002bfe:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8002c00:	061b      	lsls	r3, r3, #24
 8002c02:	491b      	ldr	r1, [pc, #108]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002c04:	4313      	orrs	r3, r2
 8002c06:	604b      	str	r3, [r1, #4]
 8002c08:	4b1b      	ldr	r3, [pc, #108]	@ (8002c78 <HAL_RCC_OscConfig+0x478>)
 8002c0a:	2201      	movs	r2, #1
 8002c0c:	601a      	str	r2, [r3, #0]
 8002c0e:	f7fe ffc3 	bl	8001b98 <HAL_GetTick>
 8002c12:	6138      	str	r0, [r7, #16]
 8002c14:	e008      	b.n	8002c28 <HAL_RCC_OscConfig+0x428>
 8002c16:	f7fe ffbf 	bl	8001b98 <HAL_GetTick>
 8002c1a:	4602      	mov	r2, r0
 8002c1c:	693b      	ldr	r3, [r7, #16]
 8002c1e:	1ad3      	subs	r3, r2, r3
 8002c20:	2b02      	cmp	r3, #2
 8002c22:	d901      	bls.n	8002c28 <HAL_RCC_OscConfig+0x428>
 8002c24:	2303      	movs	r3, #3
 8002c26:	e05c      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002c28:	4b11      	ldr	r3, [pc, #68]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002c2a:	681b      	ldr	r3, [r3, #0]
 8002c2c:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8002c30:	2b00      	cmp	r3, #0
 8002c32:	d0f0      	beq.n	8002c16 <HAL_RCC_OscConfig+0x416>
 8002c34:	e054      	b.n	8002ce0 <HAL_RCC_OscConfig+0x4e0>
 8002c36:	4b10      	ldr	r3, [pc, #64]	@ (8002c78 <HAL_RCC_OscConfig+0x478>)
 8002c38:	2200      	movs	r2, #0
 8002c3a:	601a      	str	r2, [r3, #0]
 8002c3c:	f7fe ffac 	bl	8001b98 <HAL_GetTick>
 8002c40:	6138      	str	r0, [r7, #16]
 8002c42:	e008      	b.n	8002c56 <HAL_RCC_OscConfig+0x456>
 8002c44:	f7fe ffa8 	bl	8001b98 <HAL_GetTick>
 8002c48:	4602      	mov	r2, r0
 8002c4a:	693b      	ldr	r3, [r7, #16]
 8002c4c:	1ad3      	subs	r3, r2, r3
 8002c4e:	2b02      	cmp	r3, #2
 8002c50:	d901      	bls.n	8002c56 <HAL_RCC_OscConfig+0x456>
 8002c52:	2303      	movs	r3, #3
 8002c54:	e045      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002c56:	4b06      	ldr	r3, [pc, #24]	@ (8002c70 <HAL_RCC_OscConfig+0x470>)
 8002c58:	681b      	ldr	r3, [r3, #0]
 8002c5a:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8002c5e:	2b00      	cmp	r3, #0
 8002c60:	d1f0      	bne.n	8002c44 <HAL_RCC_OscConfig+0x444>
 8002c62:	e03d      	b.n	8002ce0 <HAL_RCC_OscConfig+0x4e0>
 8002c64:	687b      	ldr	r3, [r7, #4]
 8002c66:	699b      	ldr	r3, [r3, #24]
 8002c68:	2b01      	cmp	r3, #1
 8002c6a:	d107      	bne.n	8002c7c <HAL_RCC_OscConfig+0x47c>
 8002c6c:	2301      	movs	r3, #1
 8002c6e:	e038      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002c70:	40023800 	.word	0x40023800
 8002c74:	40007000 	.word	0x40007000
 8002c78:	42470060 	.word	0x42470060
 8002c7c:	4b1b      	ldr	r3, [pc, #108]	@ (8002cec <HAL_RCC_OscConfig+0x4ec>)
 8002c7e:	685b      	ldr	r3, [r3, #4]
 8002c80:	60fb      	str	r3, [r7, #12]
 8002c82:	687b      	ldr	r3, [r7, #4]
 8002c84:	699b      	ldr	r3, [r3, #24]
 8002c86:	2b01      	cmp	r3, #1
 8002c88:	d028      	beq.n	8002cdc <HAL_RCC_OscConfig+0x4dc>
 8002c8a:	68fb      	ldr	r3, [r7, #12]
 8002c8c:	f403 0280 	and.w	r2, r3, #4194304	@ 0x400000
 8002c90:	687b      	ldr	r3, [r7, #4]
 8002c92:	69db      	ldr	r3, [r3, #28]
 8002c94:	429a      	cmp	r2, r3
 8002c96:	d121      	bne.n	8002cdc <HAL_RCC_OscConfig+0x4dc>
 8002c98:	68fb      	ldr	r3, [r7, #12]
 8002c9a:	f003 023f 	and.w	r2, r3, #63	@ 0x3f
 8002c9e:	687b      	ldr	r3, [r7, #4]
 8002ca0:	6a1b      	ldr	r3, [r3, #32]
 8002ca2:	429a      	cmp	r2, r3
 8002ca4:	d11a      	bne.n	8002cdc <HAL_RCC_OscConfig+0x4dc>
 8002ca6:	68fa      	ldr	r2, [r7, #12]
 8002ca8:	f647 73c0 	movw	r3, #32704	@ 0x7fc0
 8002cac:	4013      	ands	r3, r2
 8002cae:	687a      	ldr	r2, [r7, #4]
 8002cb0:	6a52      	ldr	r2, [r2, #36]	@ 0x24
 8002cb2:	0192      	lsls	r2, r2, #6
 8002cb4:	4293      	cmp	r3, r2
 8002cb6:	d111      	bne.n	8002cdc <HAL_RCC_OscConfig+0x4dc>
 8002cb8:	68fb      	ldr	r3, [r7, #12]
 8002cba:	f403 3240 	and.w	r2, r3, #196608	@ 0x30000
 8002cbe:	687b      	ldr	r3, [r7, #4]
 8002cc0:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8002cc2:	085b      	lsrs	r3, r3, #1
 8002cc4:	3b01      	subs	r3, #1
 8002cc6:	041b      	lsls	r3, r3, #16
 8002cc8:	429a      	cmp	r2, r3
 8002cca:	d107      	bne.n	8002cdc <HAL_RCC_OscConfig+0x4dc>
 8002ccc:	68fb      	ldr	r3, [r7, #12]
 8002cce:	f003 6270 	and.w	r2, r3, #251658240	@ 0xf000000
 8002cd2:	687b      	ldr	r3, [r7, #4]
 8002cd4:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8002cd6:	061b      	lsls	r3, r3, #24
 8002cd8:	429a      	cmp	r2, r3
 8002cda:	d001      	beq.n	8002ce0 <HAL_RCC_OscConfig+0x4e0>
 8002cdc:	2301      	movs	r3, #1
 8002cde:	e000      	b.n	8002ce2 <HAL_RCC_OscConfig+0x4e2>
 8002ce0:	2300      	movs	r3, #0
 8002ce2:	4618      	mov	r0, r3
 8002ce4:	3718      	adds	r7, #24
 8002ce6:	46bd      	mov	sp, r7
 8002ce8:	bd80      	pop	{r7, pc}
 8002cea:	bf00      	nop
 8002cec:	40023800 	.word	0x40023800

08002cf0 <HAL_RCC_ClockConfig>:
 8002cf0:	b580      	push	{r7, lr}
 8002cf2:	b084      	sub	sp, #16
 8002cf4:	af00      	add	r7, sp, #0
 8002cf6:	6078      	str	r0, [r7, #4]
 8002cf8:	6039      	str	r1, [r7, #0]
 8002cfa:	687b      	ldr	r3, [r7, #4]
 8002cfc:	2b00      	cmp	r3, #0
 8002cfe:	d101      	bne.n	8002d04 <HAL_RCC_ClockConfig+0x14>
 8002d00:	2301      	movs	r3, #1
 8002d02:	e0cc      	b.n	8002e9e <HAL_RCC_ClockConfig+0x1ae>
 8002d04:	4b68      	ldr	r3, [pc, #416]	@ (8002ea8 <HAL_RCC_ClockConfig+0x1b8>)
 8002d06:	681b      	ldr	r3, [r3, #0]
 8002d08:	f003 0307 	and.w	r3, r3, #7
 8002d0c:	683a      	ldr	r2, [r7, #0]
 8002d0e:	429a      	cmp	r2, r3
 8002d10:	d90c      	bls.n	8002d2c <HAL_RCC_ClockConfig+0x3c>
 8002d12:	4b65      	ldr	r3, [pc, #404]	@ (8002ea8 <HAL_RCC_ClockConfig+0x1b8>)
 8002d14:	683a      	ldr	r2, [r7, #0]
 8002d16:	b2d2      	uxtb	r2, r2
 8002d18:	701a      	strb	r2, [r3, #0]
 8002d1a:	4b63      	ldr	r3, [pc, #396]	@ (8002ea8 <HAL_RCC_ClockConfig+0x1b8>)
 8002d1c:	681b      	ldr	r3, [r3, #0]
 8002d1e:	f003 0307 	and.w	r3, r3, #7
 8002d22:	683a      	ldr	r2, [r7, #0]
 8002d24:	429a      	cmp	r2, r3
 8002d26:	d001      	beq.n	8002d2c <HAL_RCC_ClockConfig+0x3c>
 8002d28:	2301      	movs	r3, #1
 8002d2a:	e0b8      	b.n	8002e9e <HAL_RCC_ClockConfig+0x1ae>
 8002d2c:	687b      	ldr	r3, [r7, #4]
 8002d2e:	681b      	ldr	r3, [r3, #0]
 8002d30:	f003 0302 	and.w	r3, r3, #2
 8002d34:	2b00      	cmp	r3, #0
 8002d36:	d020      	beq.n	8002d7a <HAL_RCC_ClockConfig+0x8a>
 8002d38:	687b      	ldr	r3, [r7, #4]
 8002d3a:	681b      	ldr	r3, [r3, #0]
 8002d3c:	f003 0304 	and.w	r3, r3, #4
 8002d40:	2b00      	cmp	r3, #0
 8002d42:	d005      	beq.n	8002d50 <HAL_RCC_ClockConfig+0x60>
 8002d44:	4b59      	ldr	r3, [pc, #356]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002d46:	689b      	ldr	r3, [r3, #8]
 8002d48:	4a58      	ldr	r2, [pc, #352]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002d4a:	f443 53e0 	orr.w	r3, r3, #7168	@ 0x1c00
 8002d4e:	6093      	str	r3, [r2, #8]
 8002d50:	687b      	ldr	r3, [r7, #4]
 8002d52:	681b      	ldr	r3, [r3, #0]
 8002d54:	f003 0308 	and.w	r3, r3, #8
 8002d58:	2b00      	cmp	r3, #0
 8002d5a:	d005      	beq.n	8002d68 <HAL_RCC_ClockConfig+0x78>
 8002d5c:	4b53      	ldr	r3, [pc, #332]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002d5e:	689b      	ldr	r3, [r3, #8]
 8002d60:	4a52      	ldr	r2, [pc, #328]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002d62:	f443 4360 	orr.w	r3, r3, #57344	@ 0xe000
 8002d66:	6093      	str	r3, [r2, #8]
 8002d68:	4b50      	ldr	r3, [pc, #320]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002d6a:	689b      	ldr	r3, [r3, #8]
 8002d6c:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8002d70:	687b      	ldr	r3, [r7, #4]
 8002d72:	689b      	ldr	r3, [r3, #8]
 8002d74:	494d      	ldr	r1, [pc, #308]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002d76:	4313      	orrs	r3, r2
 8002d78:	608b      	str	r3, [r1, #8]
 8002d7a:	687b      	ldr	r3, [r7, #4]
 8002d7c:	681b      	ldr	r3, [r3, #0]
 8002d7e:	f003 0301 	and.w	r3, r3, #1
 8002d82:	2b00      	cmp	r3, #0
 8002d84:	d044      	beq.n	8002e10 <HAL_RCC_ClockConfig+0x120>
 8002d86:	687b      	ldr	r3, [r7, #4]
 8002d88:	685b      	ldr	r3, [r3, #4]
 8002d8a:	2b01      	cmp	r3, #1
 8002d8c:	d107      	bne.n	8002d9e <HAL_RCC_ClockConfig+0xae>
 8002d8e:	4b47      	ldr	r3, [pc, #284]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002d90:	681b      	ldr	r3, [r3, #0]
 8002d92:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8002d96:	2b00      	cmp	r3, #0
 8002d98:	d119      	bne.n	8002dce <HAL_RCC_ClockConfig+0xde>
 8002d9a:	2301      	movs	r3, #1
 8002d9c:	e07f      	b.n	8002e9e <HAL_RCC_ClockConfig+0x1ae>
 8002d9e:	687b      	ldr	r3, [r7, #4]
 8002da0:	685b      	ldr	r3, [r3, #4]
 8002da2:	2b02      	cmp	r3, #2
 8002da4:	d003      	beq.n	8002dae <HAL_RCC_ClockConfig+0xbe>
 8002da6:	687b      	ldr	r3, [r7, #4]
 8002da8:	685b      	ldr	r3, [r3, #4]
 8002daa:	2b03      	cmp	r3, #3
 8002dac:	d107      	bne.n	8002dbe <HAL_RCC_ClockConfig+0xce>
 8002dae:	4b3f      	ldr	r3, [pc, #252]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002db0:	681b      	ldr	r3, [r3, #0]
 8002db2:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8002db6:	2b00      	cmp	r3, #0
 8002db8:	d109      	bne.n	8002dce <HAL_RCC_ClockConfig+0xde>
 8002dba:	2301      	movs	r3, #1
 8002dbc:	e06f      	b.n	8002e9e <HAL_RCC_ClockConfig+0x1ae>
 8002dbe:	4b3b      	ldr	r3, [pc, #236]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002dc0:	681b      	ldr	r3, [r3, #0]
 8002dc2:	f003 0302 	and.w	r3, r3, #2
 8002dc6:	2b00      	cmp	r3, #0
 8002dc8:	d101      	bne.n	8002dce <HAL_RCC_ClockConfig+0xde>
 8002dca:	2301      	movs	r3, #1
 8002dcc:	e067      	b.n	8002e9e <HAL_RCC_ClockConfig+0x1ae>
 8002dce:	4b37      	ldr	r3, [pc, #220]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002dd0:	689b      	ldr	r3, [r3, #8]
 8002dd2:	f023 0203 	bic.w	r2, r3, #3
 8002dd6:	687b      	ldr	r3, [r7, #4]
 8002dd8:	685b      	ldr	r3, [r3, #4]
 8002dda:	4934      	ldr	r1, [pc, #208]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002ddc:	4313      	orrs	r3, r2
 8002dde:	608b      	str	r3, [r1, #8]
 8002de0:	f7fe feda 	bl	8001b98 <HAL_GetTick>
 8002de4:	60f8      	str	r0, [r7, #12]
 8002de6:	e00a      	b.n	8002dfe <HAL_RCC_ClockConfig+0x10e>
 8002de8:	f7fe fed6 	bl	8001b98 <HAL_GetTick>
 8002dec:	4602      	mov	r2, r0
 8002dee:	68fb      	ldr	r3, [r7, #12]
 8002df0:	1ad3      	subs	r3, r2, r3
 8002df2:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002df6:	4293      	cmp	r3, r2
 8002df8:	d901      	bls.n	8002dfe <HAL_RCC_ClockConfig+0x10e>
 8002dfa:	2303      	movs	r3, #3
 8002dfc:	e04f      	b.n	8002e9e <HAL_RCC_ClockConfig+0x1ae>
 8002dfe:	4b2b      	ldr	r3, [pc, #172]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002e00:	689b      	ldr	r3, [r3, #8]
 8002e02:	f003 020c 	and.w	r2, r3, #12
 8002e06:	687b      	ldr	r3, [r7, #4]
 8002e08:	685b      	ldr	r3, [r3, #4]
 8002e0a:	009b      	lsls	r3, r3, #2
 8002e0c:	429a      	cmp	r2, r3
 8002e0e:	d1eb      	bne.n	8002de8 <HAL_RCC_ClockConfig+0xf8>
 8002e10:	4b25      	ldr	r3, [pc, #148]	@ (8002ea8 <HAL_RCC_ClockConfig+0x1b8>)
 8002e12:	681b      	ldr	r3, [r3, #0]
 8002e14:	f003 0307 	and.w	r3, r3, #7
 8002e18:	683a      	ldr	r2, [r7, #0]
 8002e1a:	429a      	cmp	r2, r3
 8002e1c:	d20c      	bcs.n	8002e38 <HAL_RCC_ClockConfig+0x148>
 8002e1e:	4b22      	ldr	r3, [pc, #136]	@ (8002ea8 <HAL_RCC_ClockConfig+0x1b8>)
 8002e20:	683a      	ldr	r2, [r7, #0]
 8002e22:	b2d2      	uxtb	r2, r2
 8002e24:	701a      	strb	r2, [r3, #0]
 8002e26:	4b20      	ldr	r3, [pc, #128]	@ (8002ea8 <HAL_RCC_ClockConfig+0x1b8>)
 8002e28:	681b      	ldr	r3, [r3, #0]
 8002e2a:	f003 0307 	and.w	r3, r3, #7
 8002e2e:	683a      	ldr	r2, [r7, #0]
 8002e30:	429a      	cmp	r2, r3
 8002e32:	d001      	beq.n	8002e38 <HAL_RCC_ClockConfig+0x148>
 8002e34:	2301      	movs	r3, #1
 8002e36:	e032      	b.n	8002e9e <HAL_RCC_ClockConfig+0x1ae>
 8002e38:	687b      	ldr	r3, [r7, #4]
 8002e3a:	681b      	ldr	r3, [r3, #0]
 8002e3c:	f003 0304 	and.w	r3, r3, #4
 8002e40:	2b00      	cmp	r3, #0
 8002e42:	d008      	beq.n	8002e56 <HAL_RCC_ClockConfig+0x166>
 8002e44:	4b19      	ldr	r3, [pc, #100]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002e46:	689b      	ldr	r3, [r3, #8]
 8002e48:	f423 52e0 	bic.w	r2, r3, #7168	@ 0x1c00
 8002e4c:	687b      	ldr	r3, [r7, #4]
 8002e4e:	68db      	ldr	r3, [r3, #12]
 8002e50:	4916      	ldr	r1, [pc, #88]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002e52:	4313      	orrs	r3, r2
 8002e54:	608b      	str	r3, [r1, #8]
 8002e56:	687b      	ldr	r3, [r7, #4]
 8002e58:	681b      	ldr	r3, [r3, #0]
 8002e5a:	f003 0308 	and.w	r3, r3, #8
 8002e5e:	2b00      	cmp	r3, #0
 8002e60:	d009      	beq.n	8002e76 <HAL_RCC_ClockConfig+0x186>
 8002e62:	4b12      	ldr	r3, [pc, #72]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002e64:	689b      	ldr	r3, [r3, #8]
 8002e66:	f423 4260 	bic.w	r2, r3, #57344	@ 0xe000
 8002e6a:	687b      	ldr	r3, [r7, #4]
 8002e6c:	691b      	ldr	r3, [r3, #16]
 8002e6e:	00db      	lsls	r3, r3, #3
 8002e70:	490e      	ldr	r1, [pc, #56]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002e72:	4313      	orrs	r3, r2
 8002e74:	608b      	str	r3, [r1, #8]
 8002e76:	f000 f821 	bl	8002ebc <HAL_RCC_GetSysClockFreq>
 8002e7a:	4602      	mov	r2, r0
 8002e7c:	4b0b      	ldr	r3, [pc, #44]	@ (8002eac <HAL_RCC_ClockConfig+0x1bc>)
 8002e7e:	689b      	ldr	r3, [r3, #8]
 8002e80:	091b      	lsrs	r3, r3, #4
 8002e82:	f003 030f 	and.w	r3, r3, #15
 8002e86:	490a      	ldr	r1, [pc, #40]	@ (8002eb0 <HAL_RCC_ClockConfig+0x1c0>)
 8002e88:	5ccb      	ldrb	r3, [r1, r3]
 8002e8a:	fa22 f303 	lsr.w	r3, r2, r3
 8002e8e:	4a09      	ldr	r2, [pc, #36]	@ (8002eb4 <HAL_RCC_ClockConfig+0x1c4>)
 8002e90:	6013      	str	r3, [r2, #0]
 8002e92:	4b09      	ldr	r3, [pc, #36]	@ (8002eb8 <HAL_RCC_ClockConfig+0x1c8>)
 8002e94:	681b      	ldr	r3, [r3, #0]
 8002e96:	4618      	mov	r0, r3
 8002e98:	f7fe fe3a 	bl	8001b10 <HAL_InitTick>
 8002e9c:	2300      	movs	r3, #0
 8002e9e:	4618      	mov	r0, r3
 8002ea0:	3710      	adds	r7, #16
 8002ea2:	46bd      	mov	sp, r7
 8002ea4:	bd80      	pop	{r7, pc}
 8002ea6:	bf00      	nop
 8002ea8:	40023c00 	.word	0x40023c00
 8002eac:	40023800 	.word	0x40023800
 8002eb0:	08004a08 	.word	0x08004a08
 8002eb4:	2000005c 	.word	0x2000005c
 8002eb8:	20000060 	.word	0x20000060

08002ebc <HAL_RCC_GetSysClockFreq>:
 8002ebc:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
 8002ec0:	b094      	sub	sp, #80	@ 0x50
 8002ec2:	af00      	add	r7, sp, #0
 8002ec4:	2300      	movs	r3, #0
 8002ec6:	647b      	str	r3, [r7, #68]	@ 0x44
 8002ec8:	2300      	movs	r3, #0
 8002eca:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8002ecc:	2300      	movs	r3, #0
 8002ece:	643b      	str	r3, [r7, #64]	@ 0x40
 8002ed0:	2300      	movs	r3, #0
 8002ed2:	64bb      	str	r3, [r7, #72]	@ 0x48
 8002ed4:	4b79      	ldr	r3, [pc, #484]	@ (80030bc <HAL_RCC_GetSysClockFreq+0x200>)
 8002ed6:	689b      	ldr	r3, [r3, #8]
 8002ed8:	f003 030c 	and.w	r3, r3, #12
 8002edc:	2b08      	cmp	r3, #8
 8002ede:	d00d      	beq.n	8002efc <HAL_RCC_GetSysClockFreq+0x40>
 8002ee0:	2b08      	cmp	r3, #8
 8002ee2:	f200 80e1 	bhi.w	80030a8 <HAL_RCC_GetSysClockFreq+0x1ec>
 8002ee6:	2b00      	cmp	r3, #0
 8002ee8:	d002      	beq.n	8002ef0 <HAL_RCC_GetSysClockFreq+0x34>
 8002eea:	2b04      	cmp	r3, #4
 8002eec:	d003      	beq.n	8002ef6 <HAL_RCC_GetSysClockFreq+0x3a>
 8002eee:	e0db      	b.n	80030a8 <HAL_RCC_GetSysClockFreq+0x1ec>
 8002ef0:	4b73      	ldr	r3, [pc, #460]	@ (80030c0 <HAL_RCC_GetSysClockFreq+0x204>)
 8002ef2:	64bb      	str	r3, [r7, #72]	@ 0x48
 8002ef4:	e0db      	b.n	80030ae <HAL_RCC_GetSysClockFreq+0x1f2>
 8002ef6:	4b73      	ldr	r3, [pc, #460]	@ (80030c4 <HAL_RCC_GetSysClockFreq+0x208>)
 8002ef8:	64bb      	str	r3, [r7, #72]	@ 0x48
 8002efa:	e0d8      	b.n	80030ae <HAL_RCC_GetSysClockFreq+0x1f2>
 8002efc:	4b6f      	ldr	r3, [pc, #444]	@ (80030bc <HAL_RCC_GetSysClockFreq+0x200>)
 8002efe:	685b      	ldr	r3, [r3, #4]
 8002f00:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
 8002f04:	647b      	str	r3, [r7, #68]	@ 0x44
 8002f06:	4b6d      	ldr	r3, [pc, #436]	@ (80030bc <HAL_RCC_GetSysClockFreq+0x200>)
 8002f08:	685b      	ldr	r3, [r3, #4]
 8002f0a:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8002f0e:	2b00      	cmp	r3, #0
 8002f10:	d063      	beq.n	8002fda <HAL_RCC_GetSysClockFreq+0x11e>
 8002f12:	4b6a      	ldr	r3, [pc, #424]	@ (80030bc <HAL_RCC_GetSysClockFreq+0x200>)
 8002f14:	685b      	ldr	r3, [r3, #4]
 8002f16:	099b      	lsrs	r3, r3, #6
 8002f18:	2200      	movs	r2, #0
 8002f1a:	63bb      	str	r3, [r7, #56]	@ 0x38
 8002f1c:	63fa      	str	r2, [r7, #60]	@ 0x3c
 8002f1e:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 8002f20:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8002f24:	633b      	str	r3, [r7, #48]	@ 0x30
 8002f26:	2300      	movs	r3, #0
 8002f28:	637b      	str	r3, [r7, #52]	@ 0x34
 8002f2a:	e9d7 450c 	ldrd	r4, r5, [r7, #48]	@ 0x30
 8002f2e:	4622      	mov	r2, r4
 8002f30:	462b      	mov	r3, r5
 8002f32:	f04f 0000 	mov.w	r0, #0
 8002f36:	f04f 0100 	mov.w	r1, #0
 8002f3a:	0159      	lsls	r1, r3, #5
 8002f3c:	ea41 61d2 	orr.w	r1, r1, r2, lsr #27
 8002f40:	0150      	lsls	r0, r2, #5
 8002f42:	4602      	mov	r2, r0
 8002f44:	460b      	mov	r3, r1
 8002f46:	4621      	mov	r1, r4
 8002f48:	1a51      	subs	r1, r2, r1
 8002f4a:	6139      	str	r1, [r7, #16]
 8002f4c:	4629      	mov	r1, r5
 8002f4e:	eb63 0301 	sbc.w	r3, r3, r1
 8002f52:	617b      	str	r3, [r7, #20]
 8002f54:	f04f 0200 	mov.w	r2, #0
 8002f58:	f04f 0300 	mov.w	r3, #0
 8002f5c:	e9d7 ab04 	ldrd	sl, fp, [r7, #16]
 8002f60:	4659      	mov	r1, fp
 8002f62:	018b      	lsls	r3, r1, #6
 8002f64:	4651      	mov	r1, sl
 8002f66:	ea43 6391 	orr.w	r3, r3, r1, lsr #26
 8002f6a:	4651      	mov	r1, sl
 8002f6c:	018a      	lsls	r2, r1, #6
 8002f6e:	4651      	mov	r1, sl
 8002f70:	ebb2 0801 	subs.w	r8, r2, r1
 8002f74:	4659      	mov	r1, fp
 8002f76:	eb63 0901 	sbc.w	r9, r3, r1
 8002f7a:	f04f 0200 	mov.w	r2, #0
 8002f7e:	f04f 0300 	mov.w	r3, #0
 8002f82:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 8002f86:	ea43 7358 	orr.w	r3, r3, r8, lsr #29
 8002f8a:	ea4f 02c8 	mov.w	r2, r8, lsl #3
 8002f8e:	4690      	mov	r8, r2
 8002f90:	4699      	mov	r9, r3
 8002f92:	4623      	mov	r3, r4
 8002f94:	eb18 0303 	adds.w	r3, r8, r3
 8002f98:	60bb      	str	r3, [r7, #8]
 8002f9a:	462b      	mov	r3, r5
 8002f9c:	eb49 0303 	adc.w	r3, r9, r3
 8002fa0:	60fb      	str	r3, [r7, #12]
 8002fa2:	f04f 0200 	mov.w	r2, #0
 8002fa6:	f04f 0300 	mov.w	r3, #0
 8002faa:	e9d7 4502 	ldrd	r4, r5, [r7, #8]
 8002fae:	4629      	mov	r1, r5
 8002fb0:	024b      	lsls	r3, r1, #9
 8002fb2:	4621      	mov	r1, r4
 8002fb4:	ea43 53d1 	orr.w	r3, r3, r1, lsr #23
 8002fb8:	4621      	mov	r1, r4
 8002fba:	024a      	lsls	r2, r1, #9
 8002fbc:	4610      	mov	r0, r2
 8002fbe:	4619      	mov	r1, r3
 8002fc0:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8002fc2:	2200      	movs	r2, #0
 8002fc4:	62bb      	str	r3, [r7, #40]	@ 0x28
 8002fc6:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8002fc8:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	@ 0x28
 8002fcc:	f7fd f8dc 	bl	8000188 <__aeabi_uldivmod>
 8002fd0:	4602      	mov	r2, r0
 8002fd2:	460b      	mov	r3, r1
 8002fd4:	4613      	mov	r3, r2
 8002fd6:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8002fd8:	e058      	b.n	800308c <HAL_RCC_GetSysClockFreq+0x1d0>
 8002fda:	4b38      	ldr	r3, [pc, #224]	@ (80030bc <HAL_RCC_GetSysClockFreq+0x200>)
 8002fdc:	685b      	ldr	r3, [r3, #4]
 8002fde:	099b      	lsrs	r3, r3, #6
 8002fe0:	2200      	movs	r2, #0
 8002fe2:	4618      	mov	r0, r3
 8002fe4:	4611      	mov	r1, r2
 8002fe6:	f3c0 0308 	ubfx	r3, r0, #0, #9
 8002fea:	623b      	str	r3, [r7, #32]
 8002fec:	2300      	movs	r3, #0
 8002fee:	627b      	str	r3, [r7, #36]	@ 0x24
 8002ff0:	e9d7 8908 	ldrd	r8, r9, [r7, #32]
 8002ff4:	4642      	mov	r2, r8
 8002ff6:	464b      	mov	r3, r9
 8002ff8:	f04f 0000 	mov.w	r0, #0
 8002ffc:	f04f 0100 	mov.w	r1, #0
 8003000:	0159      	lsls	r1, r3, #5
 8003002:	ea41 61d2 	orr.w	r1, r1, r2, lsr #27
 8003006:	0150      	lsls	r0, r2, #5
 8003008:	4602      	mov	r2, r0
 800300a:	460b      	mov	r3, r1
 800300c:	4641      	mov	r1, r8
 800300e:	ebb2 0a01 	subs.w	sl, r2, r1
 8003012:	4649      	mov	r1, r9
 8003014:	eb63 0b01 	sbc.w	fp, r3, r1
 8003018:	f04f 0200 	mov.w	r2, #0
 800301c:	f04f 0300 	mov.w	r3, #0
 8003020:	ea4f 138b 	mov.w	r3, fp, lsl #6
 8003024:	ea43 639a 	orr.w	r3, r3, sl, lsr #26
 8003028:	ea4f 128a 	mov.w	r2, sl, lsl #6
 800302c:	ebb2 040a 	subs.w	r4, r2, sl
 8003030:	eb63 050b 	sbc.w	r5, r3, fp
 8003034:	f04f 0200 	mov.w	r2, #0
 8003038:	f04f 0300 	mov.w	r3, #0
 800303c:	00eb      	lsls	r3, r5, #3
 800303e:	ea43 7354 	orr.w	r3, r3, r4, lsr #29
 8003042:	00e2      	lsls	r2, r4, #3
 8003044:	4614      	mov	r4, r2
 8003046:	461d      	mov	r5, r3
 8003048:	4643      	mov	r3, r8
 800304a:	18e3      	adds	r3, r4, r3
 800304c:	603b      	str	r3, [r7, #0]
 800304e:	464b      	mov	r3, r9
 8003050:	eb45 0303 	adc.w	r3, r5, r3
 8003054:	607b      	str	r3, [r7, #4]
 8003056:	f04f 0200 	mov.w	r2, #0
 800305a:	f04f 0300 	mov.w	r3, #0
 800305e:	e9d7 4500 	ldrd	r4, r5, [r7]
 8003062:	4629      	mov	r1, r5
 8003064:	028b      	lsls	r3, r1, #10
 8003066:	4621      	mov	r1, r4
 8003068:	ea43 5391 	orr.w	r3, r3, r1, lsr #22
 800306c:	4621      	mov	r1, r4
 800306e:	028a      	lsls	r2, r1, #10
 8003070:	4610      	mov	r0, r2
 8003072:	4619      	mov	r1, r3
 8003074:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8003076:	2200      	movs	r2, #0
 8003078:	61bb      	str	r3, [r7, #24]
 800307a:	61fa      	str	r2, [r7, #28]
 800307c:	e9d7 2306 	ldrd	r2, r3, [r7, #24]
 8003080:	f7fd f882 	bl	8000188 <__aeabi_uldivmod>
 8003084:	4602      	mov	r2, r0
 8003086:	460b      	mov	r3, r1
 8003088:	4613      	mov	r3, r2
 800308a:	64fb      	str	r3, [r7, #76]	@ 0x4c
 800308c:	4b0b      	ldr	r3, [pc, #44]	@ (80030bc <HAL_RCC_GetSysClockFreq+0x200>)
 800308e:	685b      	ldr	r3, [r3, #4]
 8003090:	0c1b      	lsrs	r3, r3, #16
 8003092:	f003 0303 	and.w	r3, r3, #3
 8003096:	3301      	adds	r3, #1
 8003098:	005b      	lsls	r3, r3, #1
 800309a:	643b      	str	r3, [r7, #64]	@ 0x40
 800309c:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 800309e:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 80030a0:	fbb2 f3f3 	udiv	r3, r2, r3
 80030a4:	64bb      	str	r3, [r7, #72]	@ 0x48
 80030a6:	e002      	b.n	80030ae <HAL_RCC_GetSysClockFreq+0x1f2>
 80030a8:	4b05      	ldr	r3, [pc, #20]	@ (80030c0 <HAL_RCC_GetSysClockFreq+0x204>)
 80030aa:	64bb      	str	r3, [r7, #72]	@ 0x48
 80030ac:	bf00      	nop
 80030ae:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 80030b0:	4618      	mov	r0, r3
 80030b2:	3750      	adds	r7, #80	@ 0x50
 80030b4:	46bd      	mov	sp, r7
 80030b6:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
 80030ba:	bf00      	nop
 80030bc:	40023800 	.word	0x40023800
 80030c0:	00f42400 	.word	0x00f42400
 80030c4:	007a1200 	.word	0x007a1200

080030c8 <HAL_RCC_GetHCLKFreq>:
 80030c8:	b480      	push	{r7}
 80030ca:	af00      	add	r7, sp, #0
 80030cc:	4b03      	ldr	r3, [pc, #12]	@ (80030dc <HAL_RCC_GetHCLKFreq+0x14>)
 80030ce:	681b      	ldr	r3, [r3, #0]
 80030d0:	4618      	mov	r0, r3
 80030d2:	46bd      	mov	sp, r7
 80030d4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80030d8:	4770      	bx	lr
 80030da:	bf00      	nop
 80030dc:	2000005c 	.word	0x2000005c

080030e0 <HAL_RCC_GetPCLK1Freq>:
 80030e0:	b580      	push	{r7, lr}
 80030e2:	af00      	add	r7, sp, #0
 80030e4:	f7ff fff0 	bl	80030c8 <HAL_RCC_GetHCLKFreq>
 80030e8:	4602      	mov	r2, r0
 80030ea:	4b05      	ldr	r3, [pc, #20]	@ (8003100 <HAL_RCC_GetPCLK1Freq+0x20>)
 80030ec:	689b      	ldr	r3, [r3, #8]
 80030ee:	0a9b      	lsrs	r3, r3, #10
 80030f0:	f003 0307 	and.w	r3, r3, #7
 80030f4:	4903      	ldr	r1, [pc, #12]	@ (8003104 <HAL_RCC_GetPCLK1Freq+0x24>)
 80030f6:	5ccb      	ldrb	r3, [r1, r3]
 80030f8:	fa22 f303 	lsr.w	r3, r2, r3
 80030fc:	4618      	mov	r0, r3
 80030fe:	bd80      	pop	{r7, pc}
 8003100:	40023800 	.word	0x40023800
 8003104:	08004a18 	.word	0x08004a18

08003108 <HAL_RCC_GetPCLK2Freq>:
 8003108:	b580      	push	{r7, lr}
 800310a:	af00      	add	r7, sp, #0
 800310c:	f7ff ffdc 	bl	80030c8 <HAL_RCC_GetHCLKFreq>
 8003110:	4602      	mov	r2, r0
 8003112:	4b05      	ldr	r3, [pc, #20]	@ (8003128 <HAL_RCC_GetPCLK2Freq+0x20>)
 8003114:	689b      	ldr	r3, [r3, #8]
 8003116:	0b5b      	lsrs	r3, r3, #13
 8003118:	f003 0307 	and.w	r3, r3, #7
 800311c:	4903      	ldr	r1, [pc, #12]	@ (800312c <HAL_RCC_GetPCLK2Freq+0x24>)
 800311e:	5ccb      	ldrb	r3, [r1, r3]
 8003120:	fa22 f303 	lsr.w	r3, r2, r3
 8003124:	4618      	mov	r0, r3
 8003126:	bd80      	pop	{r7, pc}
 8003128:	40023800 	.word	0x40023800
 800312c:	08004a18 	.word	0x08004a18

08003130 <HAL_TIM_Base_Init>:
 8003130:	b580      	push	{r7, lr}
 8003132:	b082      	sub	sp, #8
 8003134:	af00      	add	r7, sp, #0
 8003136:	6078      	str	r0, [r7, #4]
 8003138:	687b      	ldr	r3, [r7, #4]
 800313a:	2b00      	cmp	r3, #0
 800313c:	d101      	bne.n	8003142 <HAL_TIM_Base_Init+0x12>
 800313e:	2301      	movs	r3, #1
 8003140:	e041      	b.n	80031c6 <HAL_TIM_Base_Init+0x96>
 8003142:	687b      	ldr	r3, [r7, #4]
 8003144:	f893 303d 	ldrb.w	r3, [r3, #61]	@ 0x3d
 8003148:	b2db      	uxtb	r3, r3
 800314a:	2b00      	cmp	r3, #0
 800314c:	d106      	bne.n	800315c <HAL_TIM_Base_Init+0x2c>
 800314e:	687b      	ldr	r3, [r7, #4]
 8003150:	2200      	movs	r2, #0
 8003152:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8003156:	6878      	ldr	r0, [r7, #4]
 8003158:	f7fe f926 	bl	80013a8 <HAL_TIM_Base_MspInit>
 800315c:	687b      	ldr	r3, [r7, #4]
 800315e:	2202      	movs	r2, #2
 8003160:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8003164:	687b      	ldr	r3, [r7, #4]
 8003166:	681a      	ldr	r2, [r3, #0]
 8003168:	687b      	ldr	r3, [r7, #4]
 800316a:	3304      	adds	r3, #4
 800316c:	4619      	mov	r1, r3
 800316e:	4610      	mov	r0, r2
 8003170:	f000 faac 	bl	80036cc <TIM_Base_SetConfig>
 8003174:	687b      	ldr	r3, [r7, #4]
 8003176:	2201      	movs	r2, #1
 8003178:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 800317c:	687b      	ldr	r3, [r7, #4]
 800317e:	2201      	movs	r2, #1
 8003180:	f883 203e 	strb.w	r2, [r3, #62]	@ 0x3e
 8003184:	687b      	ldr	r3, [r7, #4]
 8003186:	2201      	movs	r2, #1
 8003188:	f883 203f 	strb.w	r2, [r3, #63]	@ 0x3f
 800318c:	687b      	ldr	r3, [r7, #4]
 800318e:	2201      	movs	r2, #1
 8003190:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 8003194:	687b      	ldr	r3, [r7, #4]
 8003196:	2201      	movs	r2, #1
 8003198:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 800319c:	687b      	ldr	r3, [r7, #4]
 800319e:	2201      	movs	r2, #1
 80031a0:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 80031a4:	687b      	ldr	r3, [r7, #4]
 80031a6:	2201      	movs	r2, #1
 80031a8:	f883 2043 	strb.w	r2, [r3, #67]	@ 0x43
 80031ac:	687b      	ldr	r3, [r7, #4]
 80031ae:	2201      	movs	r2, #1
 80031b0:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 80031b4:	687b      	ldr	r3, [r7, #4]
 80031b6:	2201      	movs	r2, #1
 80031b8:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 80031bc:	687b      	ldr	r3, [r7, #4]
 80031be:	2201      	movs	r2, #1
 80031c0:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 80031c4:	2300      	movs	r3, #0
 80031c6:	4618      	mov	r0, r3
 80031c8:	3708      	adds	r7, #8
 80031ca:	46bd      	mov	sp, r7
 80031cc:	bd80      	pop	{r7, pc}

080031ce <HAL_TIM_Base_DeInit>:
 80031ce:	b580      	push	{r7, lr}
 80031d0:	b082      	sub	sp, #8
 80031d2:	af00      	add	r7, sp, #0
 80031d4:	6078      	str	r0, [r7, #4]
 80031d6:	687b      	ldr	r3, [r7, #4]
 80031d8:	2202      	movs	r2, #2
 80031da:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 80031de:	687b      	ldr	r3, [r7, #4]
 80031e0:	681b      	ldr	r3, [r3, #0]
 80031e2:	6a1a      	ldr	r2, [r3, #32]
 80031e4:	f241 1311 	movw	r3, #4369	@ 0x1111
 80031e8:	4013      	ands	r3, r2
 80031ea:	2b00      	cmp	r3, #0
 80031ec:	d10f      	bne.n	800320e <HAL_TIM_Base_DeInit+0x40>
 80031ee:	687b      	ldr	r3, [r7, #4]
 80031f0:	681b      	ldr	r3, [r3, #0]
 80031f2:	6a1a      	ldr	r2, [r3, #32]
 80031f4:	f240 4344 	movw	r3, #1092	@ 0x444
 80031f8:	4013      	ands	r3, r2
 80031fa:	2b00      	cmp	r3, #0
 80031fc:	d107      	bne.n	800320e <HAL_TIM_Base_DeInit+0x40>
 80031fe:	687b      	ldr	r3, [r7, #4]
 8003200:	681b      	ldr	r3, [r3, #0]
 8003202:	681a      	ldr	r2, [r3, #0]
 8003204:	687b      	ldr	r3, [r7, #4]
 8003206:	681b      	ldr	r3, [r3, #0]
 8003208:	f022 0201 	bic.w	r2, r2, #1
 800320c:	601a      	str	r2, [r3, #0]
 800320e:	6878      	ldr	r0, [r7, #4]
 8003210:	f7fe fafc 	bl	800180c <HAL_TIM_Base_MspDeInit>
 8003214:	687b      	ldr	r3, [r7, #4]
 8003216:	2200      	movs	r2, #0
 8003218:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 800321c:	687b      	ldr	r3, [r7, #4]
 800321e:	2200      	movs	r2, #0
 8003220:	f883 203e 	strb.w	r2, [r3, #62]	@ 0x3e
 8003224:	687b      	ldr	r3, [r7, #4]
 8003226:	2200      	movs	r2, #0
 8003228:	f883 203f 	strb.w	r2, [r3, #63]	@ 0x3f
 800322c:	687b      	ldr	r3, [r7, #4]
 800322e:	2200      	movs	r2, #0
 8003230:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 8003234:	687b      	ldr	r3, [r7, #4]
 8003236:	2200      	movs	r2, #0
 8003238:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 800323c:	687b      	ldr	r3, [r7, #4]
 800323e:	2200      	movs	r2, #0
 8003240:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 8003244:	687b      	ldr	r3, [r7, #4]
 8003246:	2200      	movs	r2, #0
 8003248:	f883 2043 	strb.w	r2, [r3, #67]	@ 0x43
 800324c:	687b      	ldr	r3, [r7, #4]
 800324e:	2200      	movs	r2, #0
 8003250:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8003254:	687b      	ldr	r3, [r7, #4]
 8003256:	2200      	movs	r2, #0
 8003258:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 800325c:	687b      	ldr	r3, [r7, #4]
 800325e:	2200      	movs	r2, #0
 8003260:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8003264:	687b      	ldr	r3, [r7, #4]
 8003266:	2200      	movs	r2, #0
 8003268:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 800326c:	2300      	movs	r3, #0
 800326e:	4618      	mov	r0, r3
 8003270:	3708      	adds	r7, #8
 8003272:	46bd      	mov	sp, r7
 8003274:	bd80      	pop	{r7, pc}

08003276 <HAL_TIM_IRQHandler>:
 8003276:	b580      	push	{r7, lr}
 8003278:	b084      	sub	sp, #16
 800327a:	af00      	add	r7, sp, #0
 800327c:	6078      	str	r0, [r7, #4]
 800327e:	687b      	ldr	r3, [r7, #4]
 8003280:	681b      	ldr	r3, [r3, #0]
 8003282:	68db      	ldr	r3, [r3, #12]
 8003284:	60fb      	str	r3, [r7, #12]
 8003286:	687b      	ldr	r3, [r7, #4]
 8003288:	681b      	ldr	r3, [r3, #0]
 800328a:	691b      	ldr	r3, [r3, #16]
 800328c:	60bb      	str	r3, [r7, #8]
 800328e:	68bb      	ldr	r3, [r7, #8]
 8003290:	f003 0302 	and.w	r3, r3, #2
 8003294:	2b00      	cmp	r3, #0
 8003296:	d020      	beq.n	80032da <HAL_TIM_IRQHandler+0x64>
 8003298:	68fb      	ldr	r3, [r7, #12]
 800329a:	f003 0302 	and.w	r3, r3, #2
 800329e:	2b00      	cmp	r3, #0
 80032a0:	d01b      	beq.n	80032da <HAL_TIM_IRQHandler+0x64>
 80032a2:	687b      	ldr	r3, [r7, #4]
 80032a4:	681b      	ldr	r3, [r3, #0]
 80032a6:	f06f 0202 	mvn.w	r2, #2
 80032aa:	611a      	str	r2, [r3, #16]
 80032ac:	687b      	ldr	r3, [r7, #4]
 80032ae:	2201      	movs	r2, #1
 80032b0:	771a      	strb	r2, [r3, #28]
 80032b2:	687b      	ldr	r3, [r7, #4]
 80032b4:	681b      	ldr	r3, [r3, #0]
 80032b6:	699b      	ldr	r3, [r3, #24]
 80032b8:	f003 0303 	and.w	r3, r3, #3
 80032bc:	2b00      	cmp	r3, #0
 80032be:	d003      	beq.n	80032c8 <HAL_TIM_IRQHandler+0x52>
 80032c0:	6878      	ldr	r0, [r7, #4]
 80032c2:	f000 f9e5 	bl	8003690 <HAL_TIM_IC_CaptureCallback>
 80032c6:	e005      	b.n	80032d4 <HAL_TIM_IRQHandler+0x5e>
 80032c8:	6878      	ldr	r0, [r7, #4]
 80032ca:	f000 f9d7 	bl	800367c <HAL_TIM_OC_DelayElapsedCallback>
 80032ce:	6878      	ldr	r0, [r7, #4]
 80032d0:	f000 f9e8 	bl	80036a4 <HAL_TIM_PWM_PulseFinishedCallback>
 80032d4:	687b      	ldr	r3, [r7, #4]
 80032d6:	2200      	movs	r2, #0
 80032d8:	771a      	strb	r2, [r3, #28]
 80032da:	68bb      	ldr	r3, [r7, #8]
 80032dc:	f003 0304 	and.w	r3, r3, #4
 80032e0:	2b00      	cmp	r3, #0
 80032e2:	d020      	beq.n	8003326 <HAL_TIM_IRQHandler+0xb0>
 80032e4:	68fb      	ldr	r3, [r7, #12]
 80032e6:	f003 0304 	and.w	r3, r3, #4
 80032ea:	2b00      	cmp	r3, #0
 80032ec:	d01b      	beq.n	8003326 <HAL_TIM_IRQHandler+0xb0>
 80032ee:	687b      	ldr	r3, [r7, #4]
 80032f0:	681b      	ldr	r3, [r3, #0]
 80032f2:	f06f 0204 	mvn.w	r2, #4
 80032f6:	611a      	str	r2, [r3, #16]
 80032f8:	687b      	ldr	r3, [r7, #4]
 80032fa:	2202      	movs	r2, #2
 80032fc:	771a      	strb	r2, [r3, #28]
 80032fe:	687b      	ldr	r3, [r7, #4]
 8003300:	681b      	ldr	r3, [r3, #0]
 8003302:	699b      	ldr	r3, [r3, #24]
 8003304:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 8003308:	2b00      	cmp	r3, #0
 800330a:	d003      	beq.n	8003314 <HAL_TIM_IRQHandler+0x9e>
 800330c:	6878      	ldr	r0, [r7, #4]
 800330e:	f000 f9bf 	bl	8003690 <HAL_TIM_IC_CaptureCallback>
 8003312:	e005      	b.n	8003320 <HAL_TIM_IRQHandler+0xaa>
 8003314:	6878      	ldr	r0, [r7, #4]
 8003316:	f000 f9b1 	bl	800367c <HAL_TIM_OC_DelayElapsedCallback>
 800331a:	6878      	ldr	r0, [r7, #4]
 800331c:	f000 f9c2 	bl	80036a4 <HAL_TIM_PWM_PulseFinishedCallback>
 8003320:	687b      	ldr	r3, [r7, #4]
 8003322:	2200      	movs	r2, #0
 8003324:	771a      	strb	r2, [r3, #28]
 8003326:	68bb      	ldr	r3, [r7, #8]
 8003328:	f003 0308 	and.w	r3, r3, #8
 800332c:	2b00      	cmp	r3, #0
 800332e:	d020      	beq.n	8003372 <HAL_TIM_IRQHandler+0xfc>
 8003330:	68fb      	ldr	r3, [r7, #12]
 8003332:	f003 0308 	and.w	r3, r3, #8
 8003336:	2b00      	cmp	r3, #0
 8003338:	d01b      	beq.n	8003372 <HAL_TIM_IRQHandler+0xfc>
 800333a:	687b      	ldr	r3, [r7, #4]
 800333c:	681b      	ldr	r3, [r3, #0]
 800333e:	f06f 0208 	mvn.w	r2, #8
 8003342:	611a      	str	r2, [r3, #16]
 8003344:	687b      	ldr	r3, [r7, #4]
 8003346:	2204      	movs	r2, #4
 8003348:	771a      	strb	r2, [r3, #28]
 800334a:	687b      	ldr	r3, [r7, #4]
 800334c:	681b      	ldr	r3, [r3, #0]
 800334e:	69db      	ldr	r3, [r3, #28]
 8003350:	f003 0303 	and.w	r3, r3, #3
 8003354:	2b00      	cmp	r3, #0
 8003356:	d003      	beq.n	8003360 <HAL_TIM_IRQHandler+0xea>
 8003358:	6878      	ldr	r0, [r7, #4]
 800335a:	f000 f999 	bl	8003690 <HAL_TIM_IC_CaptureCallback>
 800335e:	e005      	b.n	800336c <HAL_TIM_IRQHandler+0xf6>
 8003360:	6878      	ldr	r0, [r7, #4]
 8003362:	f000 f98b 	bl	800367c <HAL_TIM_OC_DelayElapsedCallback>
 8003366:	6878      	ldr	r0, [r7, #4]
 8003368:	f000 f99c 	bl	80036a4 <HAL_TIM_PWM_PulseFinishedCallback>
 800336c:	687b      	ldr	r3, [r7, #4]
 800336e:	2200      	movs	r2, #0
 8003370:	771a      	strb	r2, [r3, #28]
 8003372:	68bb      	ldr	r3, [r7, #8]
 8003374:	f003 0310 	and.w	r3, r3, #16
 8003378:	2b00      	cmp	r3, #0
 800337a:	d020      	beq.n	80033be <HAL_TIM_IRQHandler+0x148>
 800337c:	68fb      	ldr	r3, [r7, #12]
 800337e:	f003 0310 	and.w	r3, r3, #16
 8003382:	2b00      	cmp	r3, #0
 8003384:	d01b      	beq.n	80033be <HAL_TIM_IRQHandler+0x148>
 8003386:	687b      	ldr	r3, [r7, #4]
 8003388:	681b      	ldr	r3, [r3, #0]
 800338a:	f06f 0210 	mvn.w	r2, #16
 800338e:	611a      	str	r2, [r3, #16]
 8003390:	687b      	ldr	r3, [r7, #4]
 8003392:	2208      	movs	r2, #8
 8003394:	771a      	strb	r2, [r3, #28]
 8003396:	687b      	ldr	r3, [r7, #4]
 8003398:	681b      	ldr	r3, [r3, #0]
 800339a:	69db      	ldr	r3, [r3, #28]
 800339c:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 80033a0:	2b00      	cmp	r3, #0
 80033a2:	d003      	beq.n	80033ac <HAL_TIM_IRQHandler+0x136>
 80033a4:	6878      	ldr	r0, [r7, #4]
 80033a6:	f000 f973 	bl	8003690 <HAL_TIM_IC_CaptureCallback>
 80033aa:	e005      	b.n	80033b8 <HAL_TIM_IRQHandler+0x142>
 80033ac:	6878      	ldr	r0, [r7, #4]
 80033ae:	f000 f965 	bl	800367c <HAL_TIM_OC_DelayElapsedCallback>
 80033b2:	6878      	ldr	r0, [r7, #4]
 80033b4:	f000 f976 	bl	80036a4 <HAL_TIM_PWM_PulseFinishedCallback>
 80033b8:	687b      	ldr	r3, [r7, #4]
 80033ba:	2200      	movs	r2, #0
 80033bc:	771a      	strb	r2, [r3, #28]
 80033be:	68bb      	ldr	r3, [r7, #8]
 80033c0:	f003 0301 	and.w	r3, r3, #1
 80033c4:	2b00      	cmp	r3, #0
 80033c6:	d00c      	beq.n	80033e2 <HAL_TIM_IRQHandler+0x16c>
 80033c8:	68fb      	ldr	r3, [r7, #12]
 80033ca:	f003 0301 	and.w	r3, r3, #1
 80033ce:	2b00      	cmp	r3, #0
 80033d0:	d007      	beq.n	80033e2 <HAL_TIM_IRQHandler+0x16c>
 80033d2:	687b      	ldr	r3, [r7, #4]
 80033d4:	681b      	ldr	r3, [r3, #0]
 80033d6:	f06f 0201 	mvn.w	r2, #1
 80033da:	611a      	str	r2, [r3, #16]
 80033dc:	6878      	ldr	r0, [r7, #4]
 80033de:	f000 f943 	bl	8003668 <HAL_TIM_PeriodElapsedCallback>
 80033e2:	68bb      	ldr	r3, [r7, #8]
 80033e4:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80033e8:	2b00      	cmp	r3, #0
 80033ea:	d00c      	beq.n	8003406 <HAL_TIM_IRQHandler+0x190>
 80033ec:	68fb      	ldr	r3, [r7, #12]
 80033ee:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80033f2:	2b00      	cmp	r3, #0
 80033f4:	d007      	beq.n	8003406 <HAL_TIM_IRQHandler+0x190>
 80033f6:	687b      	ldr	r3, [r7, #4]
 80033f8:	681b      	ldr	r3, [r3, #0]
 80033fa:	f06f 0280 	mvn.w	r2, #128	@ 0x80
 80033fe:	611a      	str	r2, [r3, #16]
 8003400:	6878      	ldr	r0, [r7, #4]
 8003402:	f000 fbbb 	bl	8003b7c <HAL_TIMEx_BreakCallback>
 8003406:	68bb      	ldr	r3, [r7, #8]
 8003408:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 800340c:	2b00      	cmp	r3, #0
 800340e:	d00c      	beq.n	800342a <HAL_TIM_IRQHandler+0x1b4>
 8003410:	68fb      	ldr	r3, [r7, #12]
 8003412:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8003416:	2b00      	cmp	r3, #0
 8003418:	d007      	beq.n	800342a <HAL_TIM_IRQHandler+0x1b4>
 800341a:	687b      	ldr	r3, [r7, #4]
 800341c:	681b      	ldr	r3, [r3, #0]
 800341e:	f06f 0240 	mvn.w	r2, #64	@ 0x40
 8003422:	611a      	str	r2, [r3, #16]
 8003424:	6878      	ldr	r0, [r7, #4]
 8003426:	f000 f947 	bl	80036b8 <HAL_TIM_TriggerCallback>
 800342a:	68bb      	ldr	r3, [r7, #8]
 800342c:	f003 0320 	and.w	r3, r3, #32
 8003430:	2b00      	cmp	r3, #0
 8003432:	d00c      	beq.n	800344e <HAL_TIM_IRQHandler+0x1d8>
 8003434:	68fb      	ldr	r3, [r7, #12]
 8003436:	f003 0320 	and.w	r3, r3, #32
 800343a:	2b00      	cmp	r3, #0
 800343c:	d007      	beq.n	800344e <HAL_TIM_IRQHandler+0x1d8>
 800343e:	687b      	ldr	r3, [r7, #4]
 8003440:	681b      	ldr	r3, [r3, #0]
 8003442:	f06f 0220 	mvn.w	r2, #32
 8003446:	611a      	str	r2, [r3, #16]
 8003448:	6878      	ldr	r0, [r7, #4]
 800344a:	f000 fb8d 	bl	8003b68 <HAL_TIMEx_CommutCallback>
 800344e:	bf00      	nop
 8003450:	3710      	adds	r7, #16
 8003452:	46bd      	mov	sp, r7
 8003454:	bd80      	pop	{r7, pc}

08003456 <HAL_TIM_ConfigClockSource>:
 8003456:	b580      	push	{r7, lr}
 8003458:	b084      	sub	sp, #16
 800345a:	af00      	add	r7, sp, #0
 800345c:	6078      	str	r0, [r7, #4]
 800345e:	6039      	str	r1, [r7, #0]
 8003460:	2300      	movs	r3, #0
 8003462:	73fb      	strb	r3, [r7, #15]
 8003464:	687b      	ldr	r3, [r7, #4]
 8003466:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 800346a:	2b01      	cmp	r3, #1
 800346c:	d101      	bne.n	8003472 <HAL_TIM_ConfigClockSource+0x1c>
 800346e:	2302      	movs	r3, #2
 8003470:	e0b4      	b.n	80035dc <HAL_TIM_ConfigClockSource+0x186>
 8003472:	687b      	ldr	r3, [r7, #4]
 8003474:	2201      	movs	r2, #1
 8003476:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 800347a:	687b      	ldr	r3, [r7, #4]
 800347c:	2202      	movs	r2, #2
 800347e:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8003482:	687b      	ldr	r3, [r7, #4]
 8003484:	681b      	ldr	r3, [r3, #0]
 8003486:	689b      	ldr	r3, [r3, #8]
 8003488:	60bb      	str	r3, [r7, #8]
 800348a:	68bb      	ldr	r3, [r7, #8]
 800348c:	f023 0377 	bic.w	r3, r3, #119	@ 0x77
 8003490:	60bb      	str	r3, [r7, #8]
 8003492:	68bb      	ldr	r3, [r7, #8]
 8003494:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 8003498:	60bb      	str	r3, [r7, #8]
 800349a:	687b      	ldr	r3, [r7, #4]
 800349c:	681b      	ldr	r3, [r3, #0]
 800349e:	68ba      	ldr	r2, [r7, #8]
 80034a0:	609a      	str	r2, [r3, #8]
 80034a2:	683b      	ldr	r3, [r7, #0]
 80034a4:	681b      	ldr	r3, [r3, #0]
 80034a6:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 80034aa:	d03e      	beq.n	800352a <HAL_TIM_ConfigClockSource+0xd4>
 80034ac:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 80034b0:	f200 8087 	bhi.w	80035c2 <HAL_TIM_ConfigClockSource+0x16c>
 80034b4:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 80034b8:	f000 8086 	beq.w	80035c8 <HAL_TIM_ConfigClockSource+0x172>
 80034bc:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 80034c0:	d87f      	bhi.n	80035c2 <HAL_TIM_ConfigClockSource+0x16c>
 80034c2:	2b70      	cmp	r3, #112	@ 0x70
 80034c4:	d01a      	beq.n	80034fc <HAL_TIM_ConfigClockSource+0xa6>
 80034c6:	2b70      	cmp	r3, #112	@ 0x70
 80034c8:	d87b      	bhi.n	80035c2 <HAL_TIM_ConfigClockSource+0x16c>
 80034ca:	2b60      	cmp	r3, #96	@ 0x60
 80034cc:	d050      	beq.n	8003570 <HAL_TIM_ConfigClockSource+0x11a>
 80034ce:	2b60      	cmp	r3, #96	@ 0x60
 80034d0:	d877      	bhi.n	80035c2 <HAL_TIM_ConfigClockSource+0x16c>
 80034d2:	2b50      	cmp	r3, #80	@ 0x50
 80034d4:	d03c      	beq.n	8003550 <HAL_TIM_ConfigClockSource+0xfa>
 80034d6:	2b50      	cmp	r3, #80	@ 0x50
 80034d8:	d873      	bhi.n	80035c2 <HAL_TIM_ConfigClockSource+0x16c>
 80034da:	2b40      	cmp	r3, #64	@ 0x40
 80034dc:	d058      	beq.n	8003590 <HAL_TIM_ConfigClockSource+0x13a>
 80034de:	2b40      	cmp	r3, #64	@ 0x40
 80034e0:	d86f      	bhi.n	80035c2 <HAL_TIM_ConfigClockSource+0x16c>
 80034e2:	2b30      	cmp	r3, #48	@ 0x30
 80034e4:	d064      	beq.n	80035b0 <HAL_TIM_ConfigClockSource+0x15a>
 80034e6:	2b30      	cmp	r3, #48	@ 0x30
 80034e8:	d86b      	bhi.n	80035c2 <HAL_TIM_ConfigClockSource+0x16c>
 80034ea:	2b20      	cmp	r3, #32
 80034ec:	d060      	beq.n	80035b0 <HAL_TIM_ConfigClockSource+0x15a>
 80034ee:	2b20      	cmp	r3, #32
 80034f0:	d867      	bhi.n	80035c2 <HAL_TIM_ConfigClockSource+0x16c>
 80034f2:	2b00      	cmp	r3, #0
 80034f4:	d05c      	beq.n	80035b0 <HAL_TIM_ConfigClockSource+0x15a>
 80034f6:	2b10      	cmp	r3, #16
 80034f8:	d05a      	beq.n	80035b0 <HAL_TIM_ConfigClockSource+0x15a>
 80034fa:	e062      	b.n	80035c2 <HAL_TIM_ConfigClockSource+0x16c>
 80034fc:	687b      	ldr	r3, [r7, #4]
 80034fe:	6818      	ldr	r0, [r3, #0]
 8003500:	683b      	ldr	r3, [r7, #0]
 8003502:	6899      	ldr	r1, [r3, #8]
 8003504:	683b      	ldr	r3, [r7, #0]
 8003506:	685a      	ldr	r2, [r3, #4]
 8003508:	683b      	ldr	r3, [r7, #0]
 800350a:	68db      	ldr	r3, [r3, #12]
 800350c:	f000 fa8f 	bl	8003a2e <TIM_ETR_SetConfig>
 8003510:	687b      	ldr	r3, [r7, #4]
 8003512:	681b      	ldr	r3, [r3, #0]
 8003514:	689b      	ldr	r3, [r3, #8]
 8003516:	60bb      	str	r3, [r7, #8]
 8003518:	68bb      	ldr	r3, [r7, #8]
 800351a:	f043 0377 	orr.w	r3, r3, #119	@ 0x77
 800351e:	60bb      	str	r3, [r7, #8]
 8003520:	687b      	ldr	r3, [r7, #4]
 8003522:	681b      	ldr	r3, [r3, #0]
 8003524:	68ba      	ldr	r2, [r7, #8]
 8003526:	609a      	str	r2, [r3, #8]
 8003528:	e04f      	b.n	80035ca <HAL_TIM_ConfigClockSource+0x174>
 800352a:	687b      	ldr	r3, [r7, #4]
 800352c:	6818      	ldr	r0, [r3, #0]
 800352e:	683b      	ldr	r3, [r7, #0]
 8003530:	6899      	ldr	r1, [r3, #8]
 8003532:	683b      	ldr	r3, [r7, #0]
 8003534:	685a      	ldr	r2, [r3, #4]
 8003536:	683b      	ldr	r3, [r7, #0]
 8003538:	68db      	ldr	r3, [r3, #12]
 800353a:	f000 fa78 	bl	8003a2e <TIM_ETR_SetConfig>
 800353e:	687b      	ldr	r3, [r7, #4]
 8003540:	681b      	ldr	r3, [r3, #0]
 8003542:	689a      	ldr	r2, [r3, #8]
 8003544:	687b      	ldr	r3, [r7, #4]
 8003546:	681b      	ldr	r3, [r3, #0]
 8003548:	f442 4280 	orr.w	r2, r2, #16384	@ 0x4000
 800354c:	609a      	str	r2, [r3, #8]
 800354e:	e03c      	b.n	80035ca <HAL_TIM_ConfigClockSource+0x174>
 8003550:	687b      	ldr	r3, [r7, #4]
 8003552:	6818      	ldr	r0, [r3, #0]
 8003554:	683b      	ldr	r3, [r7, #0]
 8003556:	6859      	ldr	r1, [r3, #4]
 8003558:	683b      	ldr	r3, [r7, #0]
 800355a:	68db      	ldr	r3, [r3, #12]
 800355c:	461a      	mov	r2, r3
 800355e:	f000 f9ec 	bl	800393a <TIM_TI1_ConfigInputStage>
 8003562:	687b      	ldr	r3, [r7, #4]
 8003564:	681b      	ldr	r3, [r3, #0]
 8003566:	2150      	movs	r1, #80	@ 0x50
 8003568:	4618      	mov	r0, r3
 800356a:	f000 fa45 	bl	80039f8 <TIM_ITRx_SetConfig>
 800356e:	e02c      	b.n	80035ca <HAL_TIM_ConfigClockSource+0x174>
 8003570:	687b      	ldr	r3, [r7, #4]
 8003572:	6818      	ldr	r0, [r3, #0]
 8003574:	683b      	ldr	r3, [r7, #0]
 8003576:	6859      	ldr	r1, [r3, #4]
 8003578:	683b      	ldr	r3, [r7, #0]
 800357a:	68db      	ldr	r3, [r3, #12]
 800357c:	461a      	mov	r2, r3
 800357e:	f000 fa0b 	bl	8003998 <TIM_TI2_ConfigInputStage>
 8003582:	687b      	ldr	r3, [r7, #4]
 8003584:	681b      	ldr	r3, [r3, #0]
 8003586:	2160      	movs	r1, #96	@ 0x60
 8003588:	4618      	mov	r0, r3
 800358a:	f000 fa35 	bl	80039f8 <TIM_ITRx_SetConfig>
 800358e:	e01c      	b.n	80035ca <HAL_TIM_ConfigClockSource+0x174>
 8003590:	687b      	ldr	r3, [r7, #4]
 8003592:	6818      	ldr	r0, [r3, #0]
 8003594:	683b      	ldr	r3, [r7, #0]
 8003596:	6859      	ldr	r1, [r3, #4]
 8003598:	683b      	ldr	r3, [r7, #0]
 800359a:	68db      	ldr	r3, [r3, #12]
 800359c:	461a      	mov	r2, r3
 800359e:	f000 f9cc 	bl	800393a <TIM_TI1_ConfigInputStage>
 80035a2:	687b      	ldr	r3, [r7, #4]
 80035a4:	681b      	ldr	r3, [r3, #0]
 80035a6:	2140      	movs	r1, #64	@ 0x40
 80035a8:	4618      	mov	r0, r3
 80035aa:	f000 fa25 	bl	80039f8 <TIM_ITRx_SetConfig>
 80035ae:	e00c      	b.n	80035ca <HAL_TIM_ConfigClockSource+0x174>
 80035b0:	687b      	ldr	r3, [r7, #4]
 80035b2:	681a      	ldr	r2, [r3, #0]
 80035b4:	683b      	ldr	r3, [r7, #0]
 80035b6:	681b      	ldr	r3, [r3, #0]
 80035b8:	4619      	mov	r1, r3
 80035ba:	4610      	mov	r0, r2
 80035bc:	f000 fa1c 	bl	80039f8 <TIM_ITRx_SetConfig>
 80035c0:	e003      	b.n	80035ca <HAL_TIM_ConfigClockSource+0x174>
 80035c2:	2301      	movs	r3, #1
 80035c4:	73fb      	strb	r3, [r7, #15]
 80035c6:	e000      	b.n	80035ca <HAL_TIM_ConfigClockSource+0x174>
 80035c8:	bf00      	nop
 80035ca:	687b      	ldr	r3, [r7, #4]
 80035cc:	2201      	movs	r2, #1
 80035ce:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 80035d2:	687b      	ldr	r3, [r7, #4]
 80035d4:	2200      	movs	r2, #0
 80035d6:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 80035da:	7bfb      	ldrb	r3, [r7, #15]
 80035dc:	4618      	mov	r0, r3
 80035de:	3710      	adds	r7, #16
 80035e0:	46bd      	mov	sp, r7
 80035e2:	bd80      	pop	{r7, pc}

080035e4 <HAL_TIM_SlaveConfigSynchro>:
 80035e4:	b580      	push	{r7, lr}
 80035e6:	b082      	sub	sp, #8
 80035e8:	af00      	add	r7, sp, #0
 80035ea:	6078      	str	r0, [r7, #4]
 80035ec:	6039      	str	r1, [r7, #0]
 80035ee:	687b      	ldr	r3, [r7, #4]
 80035f0:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 80035f4:	2b01      	cmp	r3, #1
 80035f6:	d101      	bne.n	80035fc <HAL_TIM_SlaveConfigSynchro+0x18>
 80035f8:	2302      	movs	r3, #2
 80035fa:	e031      	b.n	8003660 <HAL_TIM_SlaveConfigSynchro+0x7c>
 80035fc:	687b      	ldr	r3, [r7, #4]
 80035fe:	2201      	movs	r2, #1
 8003600:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8003604:	687b      	ldr	r3, [r7, #4]
 8003606:	2202      	movs	r2, #2
 8003608:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 800360c:	6839      	ldr	r1, [r7, #0]
 800360e:	6878      	ldr	r0, [r7, #4]
 8003610:	f000 f902 	bl	8003818 <TIM_SlaveTimer_SetConfig>
 8003614:	4603      	mov	r3, r0
 8003616:	2b00      	cmp	r3, #0
 8003618:	d009      	beq.n	800362e <HAL_TIM_SlaveConfigSynchro+0x4a>
 800361a:	687b      	ldr	r3, [r7, #4]
 800361c:	2201      	movs	r2, #1
 800361e:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8003622:	687b      	ldr	r3, [r7, #4]
 8003624:	2200      	movs	r2, #0
 8003626:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 800362a:	2301      	movs	r3, #1
 800362c:	e018      	b.n	8003660 <HAL_TIM_SlaveConfigSynchro+0x7c>
 800362e:	687b      	ldr	r3, [r7, #4]
 8003630:	681b      	ldr	r3, [r3, #0]
 8003632:	68da      	ldr	r2, [r3, #12]
 8003634:	687b      	ldr	r3, [r7, #4]
 8003636:	681b      	ldr	r3, [r3, #0]
 8003638:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 800363c:	60da      	str	r2, [r3, #12]
 800363e:	687b      	ldr	r3, [r7, #4]
 8003640:	681b      	ldr	r3, [r3, #0]
 8003642:	68da      	ldr	r2, [r3, #12]
 8003644:	687b      	ldr	r3, [r7, #4]
 8003646:	681b      	ldr	r3, [r3, #0]
 8003648:	f422 4280 	bic.w	r2, r2, #16384	@ 0x4000
 800364c:	60da      	str	r2, [r3, #12]
 800364e:	687b      	ldr	r3, [r7, #4]
 8003650:	2201      	movs	r2, #1
 8003652:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8003656:	687b      	ldr	r3, [r7, #4]
 8003658:	2200      	movs	r2, #0
 800365a:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 800365e:	2300      	movs	r3, #0
 8003660:	4618      	mov	r0, r3
 8003662:	3708      	adds	r7, #8
 8003664:	46bd      	mov	sp, r7
 8003666:	bd80      	pop	{r7, pc}

08003668 <HAL_TIM_PeriodElapsedCallback>:
 8003668:	b480      	push	{r7}
 800366a:	b083      	sub	sp, #12
 800366c:	af00      	add	r7, sp, #0
 800366e:	6078      	str	r0, [r7, #4]
 8003670:	bf00      	nop
 8003672:	370c      	adds	r7, #12
 8003674:	46bd      	mov	sp, r7
 8003676:	f85d 7b04 	ldr.w	r7, [sp], #4
 800367a:	4770      	bx	lr

0800367c <HAL_TIM_OC_DelayElapsedCallback>:
 800367c:	b480      	push	{r7}
 800367e:	b083      	sub	sp, #12
 8003680:	af00      	add	r7, sp, #0
 8003682:	6078      	str	r0, [r7, #4]
 8003684:	bf00      	nop
 8003686:	370c      	adds	r7, #12
 8003688:	46bd      	mov	sp, r7
 800368a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800368e:	4770      	bx	lr

08003690 <HAL_TIM_IC_CaptureCallback>:
 8003690:	b480      	push	{r7}
 8003692:	b083      	sub	sp, #12
 8003694:	af00      	add	r7, sp, #0
 8003696:	6078      	str	r0, [r7, #4]
 8003698:	bf00      	nop
 800369a:	370c      	adds	r7, #12
 800369c:	46bd      	mov	sp, r7
 800369e:	f85d 7b04 	ldr.w	r7, [sp], #4
 80036a2:	4770      	bx	lr

080036a4 <HAL_TIM_PWM_PulseFinishedCallback>:
 80036a4:	b480      	push	{r7}
 80036a6:	b083      	sub	sp, #12
 80036a8:	af00      	add	r7, sp, #0
 80036aa:	6078      	str	r0, [r7, #4]
 80036ac:	bf00      	nop
 80036ae:	370c      	adds	r7, #12
 80036b0:	46bd      	mov	sp, r7
 80036b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80036b6:	4770      	bx	lr

080036b8 <HAL_TIM_TriggerCallback>:
 80036b8:	b480      	push	{r7}
 80036ba:	b083      	sub	sp, #12
 80036bc:	af00      	add	r7, sp, #0
 80036be:	6078      	str	r0, [r7, #4]
 80036c0:	bf00      	nop
 80036c2:	370c      	adds	r7, #12
 80036c4:	46bd      	mov	sp, r7
 80036c6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80036ca:	4770      	bx	lr

080036cc <TIM_Base_SetConfig>:
 80036cc:	b480      	push	{r7}
 80036ce:	b085      	sub	sp, #20
 80036d0:	af00      	add	r7, sp, #0
 80036d2:	6078      	str	r0, [r7, #4]
 80036d4:	6039      	str	r1, [r7, #0]
 80036d6:	687b      	ldr	r3, [r7, #4]
 80036d8:	681b      	ldr	r3, [r3, #0]
 80036da:	60fb      	str	r3, [r7, #12]
 80036dc:	687b      	ldr	r3, [r7, #4]
 80036de:	4a43      	ldr	r2, [pc, #268]	@ (80037ec <TIM_Base_SetConfig+0x120>)
 80036e0:	4293      	cmp	r3, r2
 80036e2:	d013      	beq.n	800370c <TIM_Base_SetConfig+0x40>
 80036e4:	687b      	ldr	r3, [r7, #4]
 80036e6:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 80036ea:	d00f      	beq.n	800370c <TIM_Base_SetConfig+0x40>
 80036ec:	687b      	ldr	r3, [r7, #4]
 80036ee:	4a40      	ldr	r2, [pc, #256]	@ (80037f0 <TIM_Base_SetConfig+0x124>)
 80036f0:	4293      	cmp	r3, r2
 80036f2:	d00b      	beq.n	800370c <TIM_Base_SetConfig+0x40>
 80036f4:	687b      	ldr	r3, [r7, #4]
 80036f6:	4a3f      	ldr	r2, [pc, #252]	@ (80037f4 <TIM_Base_SetConfig+0x128>)
 80036f8:	4293      	cmp	r3, r2
 80036fa:	d007      	beq.n	800370c <TIM_Base_SetConfig+0x40>
 80036fc:	687b      	ldr	r3, [r7, #4]
 80036fe:	4a3e      	ldr	r2, [pc, #248]	@ (80037f8 <TIM_Base_SetConfig+0x12c>)
 8003700:	4293      	cmp	r3, r2
 8003702:	d003      	beq.n	800370c <TIM_Base_SetConfig+0x40>
 8003704:	687b      	ldr	r3, [r7, #4]
 8003706:	4a3d      	ldr	r2, [pc, #244]	@ (80037fc <TIM_Base_SetConfig+0x130>)
 8003708:	4293      	cmp	r3, r2
 800370a:	d108      	bne.n	800371e <TIM_Base_SetConfig+0x52>
 800370c:	68fb      	ldr	r3, [r7, #12]
 800370e:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8003712:	60fb      	str	r3, [r7, #12]
 8003714:	683b      	ldr	r3, [r7, #0]
 8003716:	685b      	ldr	r3, [r3, #4]
 8003718:	68fa      	ldr	r2, [r7, #12]
 800371a:	4313      	orrs	r3, r2
 800371c:	60fb      	str	r3, [r7, #12]
 800371e:	687b      	ldr	r3, [r7, #4]
 8003720:	4a32      	ldr	r2, [pc, #200]	@ (80037ec <TIM_Base_SetConfig+0x120>)
 8003722:	4293      	cmp	r3, r2
 8003724:	d02b      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 8003726:	687b      	ldr	r3, [r7, #4]
 8003728:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 800372c:	d027      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 800372e:	687b      	ldr	r3, [r7, #4]
 8003730:	4a2f      	ldr	r2, [pc, #188]	@ (80037f0 <TIM_Base_SetConfig+0x124>)
 8003732:	4293      	cmp	r3, r2
 8003734:	d023      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 8003736:	687b      	ldr	r3, [r7, #4]
 8003738:	4a2e      	ldr	r2, [pc, #184]	@ (80037f4 <TIM_Base_SetConfig+0x128>)
 800373a:	4293      	cmp	r3, r2
 800373c:	d01f      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 800373e:	687b      	ldr	r3, [r7, #4]
 8003740:	4a2d      	ldr	r2, [pc, #180]	@ (80037f8 <TIM_Base_SetConfig+0x12c>)
 8003742:	4293      	cmp	r3, r2
 8003744:	d01b      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 8003746:	687b      	ldr	r3, [r7, #4]
 8003748:	4a2c      	ldr	r2, [pc, #176]	@ (80037fc <TIM_Base_SetConfig+0x130>)
 800374a:	4293      	cmp	r3, r2
 800374c:	d017      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 800374e:	687b      	ldr	r3, [r7, #4]
 8003750:	4a2b      	ldr	r2, [pc, #172]	@ (8003800 <TIM_Base_SetConfig+0x134>)
 8003752:	4293      	cmp	r3, r2
 8003754:	d013      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 8003756:	687b      	ldr	r3, [r7, #4]
 8003758:	4a2a      	ldr	r2, [pc, #168]	@ (8003804 <TIM_Base_SetConfig+0x138>)
 800375a:	4293      	cmp	r3, r2
 800375c:	d00f      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 800375e:	687b      	ldr	r3, [r7, #4]
 8003760:	4a29      	ldr	r2, [pc, #164]	@ (8003808 <TIM_Base_SetConfig+0x13c>)
 8003762:	4293      	cmp	r3, r2
 8003764:	d00b      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 8003766:	687b      	ldr	r3, [r7, #4]
 8003768:	4a28      	ldr	r2, [pc, #160]	@ (800380c <TIM_Base_SetConfig+0x140>)
 800376a:	4293      	cmp	r3, r2
 800376c:	d007      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 800376e:	687b      	ldr	r3, [r7, #4]
 8003770:	4a27      	ldr	r2, [pc, #156]	@ (8003810 <TIM_Base_SetConfig+0x144>)
 8003772:	4293      	cmp	r3, r2
 8003774:	d003      	beq.n	800377e <TIM_Base_SetConfig+0xb2>
 8003776:	687b      	ldr	r3, [r7, #4]
 8003778:	4a26      	ldr	r2, [pc, #152]	@ (8003814 <TIM_Base_SetConfig+0x148>)
 800377a:	4293      	cmp	r3, r2
 800377c:	d108      	bne.n	8003790 <TIM_Base_SetConfig+0xc4>
 800377e:	68fb      	ldr	r3, [r7, #12]
 8003780:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8003784:	60fb      	str	r3, [r7, #12]
 8003786:	683b      	ldr	r3, [r7, #0]
 8003788:	68db      	ldr	r3, [r3, #12]
 800378a:	68fa      	ldr	r2, [r7, #12]
 800378c:	4313      	orrs	r3, r2
 800378e:	60fb      	str	r3, [r7, #12]
 8003790:	68fb      	ldr	r3, [r7, #12]
 8003792:	f023 0280 	bic.w	r2, r3, #128	@ 0x80
 8003796:	683b      	ldr	r3, [r7, #0]
 8003798:	695b      	ldr	r3, [r3, #20]
 800379a:	4313      	orrs	r3, r2
 800379c:	60fb      	str	r3, [r7, #12]
 800379e:	683b      	ldr	r3, [r7, #0]
 80037a0:	689a      	ldr	r2, [r3, #8]
 80037a2:	687b      	ldr	r3, [r7, #4]
 80037a4:	62da      	str	r2, [r3, #44]	@ 0x2c
 80037a6:	683b      	ldr	r3, [r7, #0]
 80037a8:	681a      	ldr	r2, [r3, #0]
 80037aa:	687b      	ldr	r3, [r7, #4]
 80037ac:	629a      	str	r2, [r3, #40]	@ 0x28
 80037ae:	687b      	ldr	r3, [r7, #4]
 80037b0:	4a0e      	ldr	r2, [pc, #56]	@ (80037ec <TIM_Base_SetConfig+0x120>)
 80037b2:	4293      	cmp	r3, r2
 80037b4:	d003      	beq.n	80037be <TIM_Base_SetConfig+0xf2>
 80037b6:	687b      	ldr	r3, [r7, #4]
 80037b8:	4a10      	ldr	r2, [pc, #64]	@ (80037fc <TIM_Base_SetConfig+0x130>)
 80037ba:	4293      	cmp	r3, r2
 80037bc:	d103      	bne.n	80037c6 <TIM_Base_SetConfig+0xfa>
 80037be:	683b      	ldr	r3, [r7, #0]
 80037c0:	691a      	ldr	r2, [r3, #16]
 80037c2:	687b      	ldr	r3, [r7, #4]
 80037c4:	631a      	str	r2, [r3, #48]	@ 0x30
 80037c6:	687b      	ldr	r3, [r7, #4]
 80037c8:	681b      	ldr	r3, [r3, #0]
 80037ca:	f043 0204 	orr.w	r2, r3, #4
 80037ce:	687b      	ldr	r3, [r7, #4]
 80037d0:	601a      	str	r2, [r3, #0]
 80037d2:	687b      	ldr	r3, [r7, #4]
 80037d4:	2201      	movs	r2, #1
 80037d6:	615a      	str	r2, [r3, #20]
 80037d8:	687b      	ldr	r3, [r7, #4]
 80037da:	68fa      	ldr	r2, [r7, #12]
 80037dc:	601a      	str	r2, [r3, #0]
 80037de:	bf00      	nop
 80037e0:	3714      	adds	r7, #20
 80037e2:	46bd      	mov	sp, r7
 80037e4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80037e8:	4770      	bx	lr
 80037ea:	bf00      	nop
 80037ec:	40010000 	.word	0x40010000
 80037f0:	40000400 	.word	0x40000400
 80037f4:	40000800 	.word	0x40000800
 80037f8:	40000c00 	.word	0x40000c00
 80037fc:	40010400 	.word	0x40010400
 8003800:	40014000 	.word	0x40014000
 8003804:	40014400 	.word	0x40014400
 8003808:	40014800 	.word	0x40014800
 800380c:	40001800 	.word	0x40001800
 8003810:	40001c00 	.word	0x40001c00
 8003814:	40002000 	.word	0x40002000

08003818 <TIM_SlaveTimer_SetConfig>:
 8003818:	b580      	push	{r7, lr}
 800381a:	b086      	sub	sp, #24
 800381c:	af00      	add	r7, sp, #0
 800381e:	6078      	str	r0, [r7, #4]
 8003820:	6039      	str	r1, [r7, #0]
 8003822:	2300      	movs	r3, #0
 8003824:	75fb      	strb	r3, [r7, #23]
 8003826:	687b      	ldr	r3, [r7, #4]
 8003828:	681b      	ldr	r3, [r3, #0]
 800382a:	689b      	ldr	r3, [r3, #8]
 800382c:	613b      	str	r3, [r7, #16]
 800382e:	693b      	ldr	r3, [r7, #16]
 8003830:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8003834:	613b      	str	r3, [r7, #16]
 8003836:	683b      	ldr	r3, [r7, #0]
 8003838:	685b      	ldr	r3, [r3, #4]
 800383a:	693a      	ldr	r2, [r7, #16]
 800383c:	4313      	orrs	r3, r2
 800383e:	613b      	str	r3, [r7, #16]
 8003840:	693b      	ldr	r3, [r7, #16]
 8003842:	f023 0307 	bic.w	r3, r3, #7
 8003846:	613b      	str	r3, [r7, #16]
 8003848:	683b      	ldr	r3, [r7, #0]
 800384a:	681b      	ldr	r3, [r3, #0]
 800384c:	693a      	ldr	r2, [r7, #16]
 800384e:	4313      	orrs	r3, r2
 8003850:	613b      	str	r3, [r7, #16]
 8003852:	687b      	ldr	r3, [r7, #4]
 8003854:	681b      	ldr	r3, [r3, #0]
 8003856:	693a      	ldr	r2, [r7, #16]
 8003858:	609a      	str	r2, [r3, #8]
 800385a:	683b      	ldr	r3, [r7, #0]
 800385c:	685b      	ldr	r3, [r3, #4]
 800385e:	2b70      	cmp	r3, #112	@ 0x70
 8003860:	d01a      	beq.n	8003898 <TIM_SlaveTimer_SetConfig+0x80>
 8003862:	2b70      	cmp	r3, #112	@ 0x70
 8003864:	d860      	bhi.n	8003928 <TIM_SlaveTimer_SetConfig+0x110>
 8003866:	2b60      	cmp	r3, #96	@ 0x60
 8003868:	d054      	beq.n	8003914 <TIM_SlaveTimer_SetConfig+0xfc>
 800386a:	2b60      	cmp	r3, #96	@ 0x60
 800386c:	d85c      	bhi.n	8003928 <TIM_SlaveTimer_SetConfig+0x110>
 800386e:	2b50      	cmp	r3, #80	@ 0x50
 8003870:	d046      	beq.n	8003900 <TIM_SlaveTimer_SetConfig+0xe8>
 8003872:	2b50      	cmp	r3, #80	@ 0x50
 8003874:	d858      	bhi.n	8003928 <TIM_SlaveTimer_SetConfig+0x110>
 8003876:	2b40      	cmp	r3, #64	@ 0x40
 8003878:	d019      	beq.n	80038ae <TIM_SlaveTimer_SetConfig+0x96>
 800387a:	2b40      	cmp	r3, #64	@ 0x40
 800387c:	d854      	bhi.n	8003928 <TIM_SlaveTimer_SetConfig+0x110>
 800387e:	2b30      	cmp	r3, #48	@ 0x30
 8003880:	d055      	beq.n	800392e <TIM_SlaveTimer_SetConfig+0x116>
 8003882:	2b30      	cmp	r3, #48	@ 0x30
 8003884:	d850      	bhi.n	8003928 <TIM_SlaveTimer_SetConfig+0x110>
 8003886:	2b20      	cmp	r3, #32
 8003888:	d051      	beq.n	800392e <TIM_SlaveTimer_SetConfig+0x116>
 800388a:	2b20      	cmp	r3, #32
 800388c:	d84c      	bhi.n	8003928 <TIM_SlaveTimer_SetConfig+0x110>
 800388e:	2b00      	cmp	r3, #0
 8003890:	d04d      	beq.n	800392e <TIM_SlaveTimer_SetConfig+0x116>
 8003892:	2b10      	cmp	r3, #16
 8003894:	d04b      	beq.n	800392e <TIM_SlaveTimer_SetConfig+0x116>
 8003896:	e047      	b.n	8003928 <TIM_SlaveTimer_SetConfig+0x110>
 8003898:	687b      	ldr	r3, [r7, #4]
 800389a:	6818      	ldr	r0, [r3, #0]
 800389c:	683b      	ldr	r3, [r7, #0]
 800389e:	68d9      	ldr	r1, [r3, #12]
 80038a0:	683b      	ldr	r3, [r7, #0]
 80038a2:	689a      	ldr	r2, [r3, #8]
 80038a4:	683b      	ldr	r3, [r7, #0]
 80038a6:	691b      	ldr	r3, [r3, #16]
 80038a8:	f000 f8c1 	bl	8003a2e <TIM_ETR_SetConfig>
 80038ac:	e040      	b.n	8003930 <TIM_SlaveTimer_SetConfig+0x118>
 80038ae:	683b      	ldr	r3, [r7, #0]
 80038b0:	681b      	ldr	r3, [r3, #0]
 80038b2:	2b05      	cmp	r3, #5
 80038b4:	d101      	bne.n	80038ba <TIM_SlaveTimer_SetConfig+0xa2>
 80038b6:	2301      	movs	r3, #1
 80038b8:	e03b      	b.n	8003932 <TIM_SlaveTimer_SetConfig+0x11a>
 80038ba:	687b      	ldr	r3, [r7, #4]
 80038bc:	681b      	ldr	r3, [r3, #0]
 80038be:	6a1b      	ldr	r3, [r3, #32]
 80038c0:	60fb      	str	r3, [r7, #12]
 80038c2:	687b      	ldr	r3, [r7, #4]
 80038c4:	681b      	ldr	r3, [r3, #0]
 80038c6:	6a1a      	ldr	r2, [r3, #32]
 80038c8:	687b      	ldr	r3, [r7, #4]
 80038ca:	681b      	ldr	r3, [r3, #0]
 80038cc:	f022 0201 	bic.w	r2, r2, #1
 80038d0:	621a      	str	r2, [r3, #32]
 80038d2:	687b      	ldr	r3, [r7, #4]
 80038d4:	681b      	ldr	r3, [r3, #0]
 80038d6:	699b      	ldr	r3, [r3, #24]
 80038d8:	60bb      	str	r3, [r7, #8]
 80038da:	68bb      	ldr	r3, [r7, #8]
 80038dc:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 80038e0:	60bb      	str	r3, [r7, #8]
 80038e2:	683b      	ldr	r3, [r7, #0]
 80038e4:	691b      	ldr	r3, [r3, #16]
 80038e6:	011b      	lsls	r3, r3, #4
 80038e8:	68ba      	ldr	r2, [r7, #8]
 80038ea:	4313      	orrs	r3, r2
 80038ec:	60bb      	str	r3, [r7, #8]
 80038ee:	687b      	ldr	r3, [r7, #4]
 80038f0:	681b      	ldr	r3, [r3, #0]
 80038f2:	68ba      	ldr	r2, [r7, #8]
 80038f4:	619a      	str	r2, [r3, #24]
 80038f6:	687b      	ldr	r3, [r7, #4]
 80038f8:	681b      	ldr	r3, [r3, #0]
 80038fa:	68fa      	ldr	r2, [r7, #12]
 80038fc:	621a      	str	r2, [r3, #32]
 80038fe:	e017      	b.n	8003930 <TIM_SlaveTimer_SetConfig+0x118>
 8003900:	687b      	ldr	r3, [r7, #4]
 8003902:	6818      	ldr	r0, [r3, #0]
 8003904:	683b      	ldr	r3, [r7, #0]
 8003906:	6899      	ldr	r1, [r3, #8]
 8003908:	683b      	ldr	r3, [r7, #0]
 800390a:	691b      	ldr	r3, [r3, #16]
 800390c:	461a      	mov	r2, r3
 800390e:	f000 f814 	bl	800393a <TIM_TI1_ConfigInputStage>
 8003912:	e00d      	b.n	8003930 <TIM_SlaveTimer_SetConfig+0x118>
 8003914:	687b      	ldr	r3, [r7, #4]
 8003916:	6818      	ldr	r0, [r3, #0]
 8003918:	683b      	ldr	r3, [r7, #0]
 800391a:	6899      	ldr	r1, [r3, #8]
 800391c:	683b      	ldr	r3, [r7, #0]
 800391e:	691b      	ldr	r3, [r3, #16]
 8003920:	461a      	mov	r2, r3
 8003922:	f000 f839 	bl	8003998 <TIM_TI2_ConfigInputStage>
 8003926:	e003      	b.n	8003930 <TIM_SlaveTimer_SetConfig+0x118>
 8003928:	2301      	movs	r3, #1
 800392a:	75fb      	strb	r3, [r7, #23]
 800392c:	e000      	b.n	8003930 <TIM_SlaveTimer_SetConfig+0x118>
 800392e:	bf00      	nop
 8003930:	7dfb      	ldrb	r3, [r7, #23]
 8003932:	4618      	mov	r0, r3
 8003934:	3718      	adds	r7, #24
 8003936:	46bd      	mov	sp, r7
 8003938:	bd80      	pop	{r7, pc}

0800393a <TIM_TI1_ConfigInputStage>:
 800393a:	b480      	push	{r7}
 800393c:	b087      	sub	sp, #28
 800393e:	af00      	add	r7, sp, #0
 8003940:	60f8      	str	r0, [r7, #12]
 8003942:	60b9      	str	r1, [r7, #8]
 8003944:	607a      	str	r2, [r7, #4]
 8003946:	68fb      	ldr	r3, [r7, #12]
 8003948:	6a1b      	ldr	r3, [r3, #32]
 800394a:	617b      	str	r3, [r7, #20]
 800394c:	68fb      	ldr	r3, [r7, #12]
 800394e:	6a1b      	ldr	r3, [r3, #32]
 8003950:	f023 0201 	bic.w	r2, r3, #1
 8003954:	68fb      	ldr	r3, [r7, #12]
 8003956:	621a      	str	r2, [r3, #32]
 8003958:	68fb      	ldr	r3, [r7, #12]
 800395a:	699b      	ldr	r3, [r3, #24]
 800395c:	613b      	str	r3, [r7, #16]
 800395e:	693b      	ldr	r3, [r7, #16]
 8003960:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8003964:	613b      	str	r3, [r7, #16]
 8003966:	687b      	ldr	r3, [r7, #4]
 8003968:	011b      	lsls	r3, r3, #4
 800396a:	693a      	ldr	r2, [r7, #16]
 800396c:	4313      	orrs	r3, r2
 800396e:	613b      	str	r3, [r7, #16]
 8003970:	697b      	ldr	r3, [r7, #20]
 8003972:	f023 030a 	bic.w	r3, r3, #10
 8003976:	617b      	str	r3, [r7, #20]
 8003978:	697a      	ldr	r2, [r7, #20]
 800397a:	68bb      	ldr	r3, [r7, #8]
 800397c:	4313      	orrs	r3, r2
 800397e:	617b      	str	r3, [r7, #20]
 8003980:	68fb      	ldr	r3, [r7, #12]
 8003982:	693a      	ldr	r2, [r7, #16]
 8003984:	619a      	str	r2, [r3, #24]
 8003986:	68fb      	ldr	r3, [r7, #12]
 8003988:	697a      	ldr	r2, [r7, #20]
 800398a:	621a      	str	r2, [r3, #32]
 800398c:	bf00      	nop
 800398e:	371c      	adds	r7, #28
 8003990:	46bd      	mov	sp, r7
 8003992:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003996:	4770      	bx	lr

08003998 <TIM_TI2_ConfigInputStage>:
 8003998:	b480      	push	{r7}
 800399a:	b087      	sub	sp, #28
 800399c:	af00      	add	r7, sp, #0
 800399e:	60f8      	str	r0, [r7, #12]
 80039a0:	60b9      	str	r1, [r7, #8]
 80039a2:	607a      	str	r2, [r7, #4]
 80039a4:	68fb      	ldr	r3, [r7, #12]
 80039a6:	6a1b      	ldr	r3, [r3, #32]
 80039a8:	617b      	str	r3, [r7, #20]
 80039aa:	68fb      	ldr	r3, [r7, #12]
 80039ac:	6a1b      	ldr	r3, [r3, #32]
 80039ae:	f023 0210 	bic.w	r2, r3, #16
 80039b2:	68fb      	ldr	r3, [r7, #12]
 80039b4:	621a      	str	r2, [r3, #32]
 80039b6:	68fb      	ldr	r3, [r7, #12]
 80039b8:	699b      	ldr	r3, [r3, #24]
 80039ba:	613b      	str	r3, [r7, #16]
 80039bc:	693b      	ldr	r3, [r7, #16]
 80039be:	f423 4370 	bic.w	r3, r3, #61440	@ 0xf000
 80039c2:	613b      	str	r3, [r7, #16]
 80039c4:	687b      	ldr	r3, [r7, #4]
 80039c6:	031b      	lsls	r3, r3, #12
 80039c8:	693a      	ldr	r2, [r7, #16]
 80039ca:	4313      	orrs	r3, r2
 80039cc:	613b      	str	r3, [r7, #16]
 80039ce:	697b      	ldr	r3, [r7, #20]
 80039d0:	f023 03a0 	bic.w	r3, r3, #160	@ 0xa0
 80039d4:	617b      	str	r3, [r7, #20]
 80039d6:	68bb      	ldr	r3, [r7, #8]
 80039d8:	011b      	lsls	r3, r3, #4
 80039da:	697a      	ldr	r2, [r7, #20]
 80039dc:	4313      	orrs	r3, r2
 80039de:	617b      	str	r3, [r7, #20]
 80039e0:	68fb      	ldr	r3, [r7, #12]
 80039e2:	693a      	ldr	r2, [r7, #16]
 80039e4:	619a      	str	r2, [r3, #24]
 80039e6:	68fb      	ldr	r3, [r7, #12]
 80039e8:	697a      	ldr	r2, [r7, #20]
 80039ea:	621a      	str	r2, [r3, #32]
 80039ec:	bf00      	nop
 80039ee:	371c      	adds	r7, #28
 80039f0:	46bd      	mov	sp, r7
 80039f2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80039f6:	4770      	bx	lr

080039f8 <TIM_ITRx_SetConfig>:
 80039f8:	b480      	push	{r7}
 80039fa:	b085      	sub	sp, #20
 80039fc:	af00      	add	r7, sp, #0
 80039fe:	6078      	str	r0, [r7, #4]
 8003a00:	6039      	str	r1, [r7, #0]
 8003a02:	687b      	ldr	r3, [r7, #4]
 8003a04:	689b      	ldr	r3, [r3, #8]
 8003a06:	60fb      	str	r3, [r7, #12]
 8003a08:	68fb      	ldr	r3, [r7, #12]
 8003a0a:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8003a0e:	60fb      	str	r3, [r7, #12]
 8003a10:	683a      	ldr	r2, [r7, #0]
 8003a12:	68fb      	ldr	r3, [r7, #12]
 8003a14:	4313      	orrs	r3, r2
 8003a16:	f043 0307 	orr.w	r3, r3, #7
 8003a1a:	60fb      	str	r3, [r7, #12]
 8003a1c:	687b      	ldr	r3, [r7, #4]
 8003a1e:	68fa      	ldr	r2, [r7, #12]
 8003a20:	609a      	str	r2, [r3, #8]
 8003a22:	bf00      	nop
 8003a24:	3714      	adds	r7, #20
 8003a26:	46bd      	mov	sp, r7
 8003a28:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003a2c:	4770      	bx	lr

08003a2e <TIM_ETR_SetConfig>:
 8003a2e:	b480      	push	{r7}
 8003a30:	b087      	sub	sp, #28
 8003a32:	af00      	add	r7, sp, #0
 8003a34:	60f8      	str	r0, [r7, #12]
 8003a36:	60b9      	str	r1, [r7, #8]
 8003a38:	607a      	str	r2, [r7, #4]
 8003a3a:	603b      	str	r3, [r7, #0]
 8003a3c:	68fb      	ldr	r3, [r7, #12]
 8003a3e:	689b      	ldr	r3, [r3, #8]
 8003a40:	617b      	str	r3, [r7, #20]
 8003a42:	697b      	ldr	r3, [r7, #20]
 8003a44:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 8003a48:	617b      	str	r3, [r7, #20]
 8003a4a:	683b      	ldr	r3, [r7, #0]
 8003a4c:	021a      	lsls	r2, r3, #8
 8003a4e:	687b      	ldr	r3, [r7, #4]
 8003a50:	431a      	orrs	r2, r3
 8003a52:	68bb      	ldr	r3, [r7, #8]
 8003a54:	4313      	orrs	r3, r2
 8003a56:	697a      	ldr	r2, [r7, #20]
 8003a58:	4313      	orrs	r3, r2
 8003a5a:	617b      	str	r3, [r7, #20]
 8003a5c:	68fb      	ldr	r3, [r7, #12]
 8003a5e:	697a      	ldr	r2, [r7, #20]
 8003a60:	609a      	str	r2, [r3, #8]
 8003a62:	bf00      	nop
 8003a64:	371c      	adds	r7, #28
 8003a66:	46bd      	mov	sp, r7
 8003a68:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003a6c:	4770      	bx	lr
	...

08003a70 <HAL_TIMEx_MasterConfigSynchronization>:
 8003a70:	b480      	push	{r7}
 8003a72:	b085      	sub	sp, #20
 8003a74:	af00      	add	r7, sp, #0
 8003a76:	6078      	str	r0, [r7, #4]
 8003a78:	6039      	str	r1, [r7, #0]
 8003a7a:	687b      	ldr	r3, [r7, #4]
 8003a7c:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8003a80:	2b01      	cmp	r3, #1
 8003a82:	d101      	bne.n	8003a88 <HAL_TIMEx_MasterConfigSynchronization+0x18>
 8003a84:	2302      	movs	r3, #2
 8003a86:	e05a      	b.n	8003b3e <HAL_TIMEx_MasterConfigSynchronization+0xce>
 8003a88:	687b      	ldr	r3, [r7, #4]
 8003a8a:	2201      	movs	r2, #1
 8003a8c:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8003a90:	687b      	ldr	r3, [r7, #4]
 8003a92:	2202      	movs	r2, #2
 8003a94:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8003a98:	687b      	ldr	r3, [r7, #4]
 8003a9a:	681b      	ldr	r3, [r3, #0]
 8003a9c:	685b      	ldr	r3, [r3, #4]
 8003a9e:	60fb      	str	r3, [r7, #12]
 8003aa0:	687b      	ldr	r3, [r7, #4]
 8003aa2:	681b      	ldr	r3, [r3, #0]
 8003aa4:	689b      	ldr	r3, [r3, #8]
 8003aa6:	60bb      	str	r3, [r7, #8]
 8003aa8:	68fb      	ldr	r3, [r7, #12]
 8003aaa:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8003aae:	60fb      	str	r3, [r7, #12]
 8003ab0:	683b      	ldr	r3, [r7, #0]
 8003ab2:	681b      	ldr	r3, [r3, #0]
 8003ab4:	68fa      	ldr	r2, [r7, #12]
 8003ab6:	4313      	orrs	r3, r2
 8003ab8:	60fb      	str	r3, [r7, #12]
 8003aba:	687b      	ldr	r3, [r7, #4]
 8003abc:	681b      	ldr	r3, [r3, #0]
 8003abe:	68fa      	ldr	r2, [r7, #12]
 8003ac0:	605a      	str	r2, [r3, #4]
 8003ac2:	687b      	ldr	r3, [r7, #4]
 8003ac4:	681b      	ldr	r3, [r3, #0]
 8003ac6:	4a21      	ldr	r2, [pc, #132]	@ (8003b4c <HAL_TIMEx_MasterConfigSynchronization+0xdc>)
 8003ac8:	4293      	cmp	r3, r2
 8003aca:	d022      	beq.n	8003b12 <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8003acc:	687b      	ldr	r3, [r7, #4]
 8003ace:	681b      	ldr	r3, [r3, #0]
 8003ad0:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8003ad4:	d01d      	beq.n	8003b12 <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8003ad6:	687b      	ldr	r3, [r7, #4]
 8003ad8:	681b      	ldr	r3, [r3, #0]
 8003ada:	4a1d      	ldr	r2, [pc, #116]	@ (8003b50 <HAL_TIMEx_MasterConfigSynchronization+0xe0>)
 8003adc:	4293      	cmp	r3, r2
 8003ade:	d018      	beq.n	8003b12 <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8003ae0:	687b      	ldr	r3, [r7, #4]
 8003ae2:	681b      	ldr	r3, [r3, #0]
 8003ae4:	4a1b      	ldr	r2, [pc, #108]	@ (8003b54 <HAL_TIMEx_MasterConfigSynchronization+0xe4>)
 8003ae6:	4293      	cmp	r3, r2
 8003ae8:	d013      	beq.n	8003b12 <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8003aea:	687b      	ldr	r3, [r7, #4]
 8003aec:	681b      	ldr	r3, [r3, #0]
 8003aee:	4a1a      	ldr	r2, [pc, #104]	@ (8003b58 <HAL_TIMEx_MasterConfigSynchronization+0xe8>)
 8003af0:	4293      	cmp	r3, r2
 8003af2:	d00e      	beq.n	8003b12 <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8003af4:	687b      	ldr	r3, [r7, #4]
 8003af6:	681b      	ldr	r3, [r3, #0]
 8003af8:	4a18      	ldr	r2, [pc, #96]	@ (8003b5c <HAL_TIMEx_MasterConfigSynchronization+0xec>)
 8003afa:	4293      	cmp	r3, r2
 8003afc:	d009      	beq.n	8003b12 <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8003afe:	687b      	ldr	r3, [r7, #4]
 8003b00:	681b      	ldr	r3, [r3, #0]
 8003b02:	4a17      	ldr	r2, [pc, #92]	@ (8003b60 <HAL_TIMEx_MasterConfigSynchronization+0xf0>)
 8003b04:	4293      	cmp	r3, r2
 8003b06:	d004      	beq.n	8003b12 <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8003b08:	687b      	ldr	r3, [r7, #4]
 8003b0a:	681b      	ldr	r3, [r3, #0]
 8003b0c:	4a15      	ldr	r2, [pc, #84]	@ (8003b64 <HAL_TIMEx_MasterConfigSynchronization+0xf4>)
 8003b0e:	4293      	cmp	r3, r2
 8003b10:	d10c      	bne.n	8003b2c <HAL_TIMEx_MasterConfigSynchronization+0xbc>
 8003b12:	68bb      	ldr	r3, [r7, #8]
 8003b14:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8003b18:	60bb      	str	r3, [r7, #8]
 8003b1a:	683b      	ldr	r3, [r7, #0]
 8003b1c:	685b      	ldr	r3, [r3, #4]
 8003b1e:	68ba      	ldr	r2, [r7, #8]
 8003b20:	4313      	orrs	r3, r2
 8003b22:	60bb      	str	r3, [r7, #8]
 8003b24:	687b      	ldr	r3, [r7, #4]
 8003b26:	681b      	ldr	r3, [r3, #0]
 8003b28:	68ba      	ldr	r2, [r7, #8]
 8003b2a:	609a      	str	r2, [r3, #8]
 8003b2c:	687b      	ldr	r3, [r7, #4]
 8003b2e:	2201      	movs	r2, #1
 8003b30:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8003b34:	687b      	ldr	r3, [r7, #4]
 8003b36:	2200      	movs	r2, #0
 8003b38:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8003b3c:	2300      	movs	r3, #0
 8003b3e:	4618      	mov	r0, r3
 8003b40:	3714      	adds	r7, #20
 8003b42:	46bd      	mov	sp, r7
 8003b44:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003b48:	4770      	bx	lr
 8003b4a:	bf00      	nop
 8003b4c:	40010000 	.word	0x40010000
 8003b50:	40000400 	.word	0x40000400
 8003b54:	40000800 	.word	0x40000800
 8003b58:	40000c00 	.word	0x40000c00
 8003b5c:	40010400 	.word	0x40010400
 8003b60:	40014000 	.word	0x40014000
 8003b64:	40001800 	.word	0x40001800

08003b68 <HAL_TIMEx_CommutCallback>:
 8003b68:	b480      	push	{r7}
 8003b6a:	b083      	sub	sp, #12
 8003b6c:	af00      	add	r7, sp, #0
 8003b6e:	6078      	str	r0, [r7, #4]
 8003b70:	bf00      	nop
 8003b72:	370c      	adds	r7, #12
 8003b74:	46bd      	mov	sp, r7
 8003b76:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003b7a:	4770      	bx	lr

08003b7c <HAL_TIMEx_BreakCallback>:
 8003b7c:	b480      	push	{r7}
 8003b7e:	b083      	sub	sp, #12
 8003b80:	af00      	add	r7, sp, #0
 8003b82:	6078      	str	r0, [r7, #4]
 8003b84:	bf00      	nop
 8003b86:	370c      	adds	r7, #12
 8003b88:	46bd      	mov	sp, r7
 8003b8a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003b8e:	4770      	bx	lr

08003b90 <HAL_UART_Init>:
 8003b90:	b580      	push	{r7, lr}
 8003b92:	b082      	sub	sp, #8
 8003b94:	af00      	add	r7, sp, #0
 8003b96:	6078      	str	r0, [r7, #4]
 8003b98:	687b      	ldr	r3, [r7, #4]
 8003b9a:	2b00      	cmp	r3, #0
 8003b9c:	d101      	bne.n	8003ba2 <HAL_UART_Init+0x12>
 8003b9e:	2301      	movs	r3, #1
 8003ba0:	e042      	b.n	8003c28 <HAL_UART_Init+0x98>
 8003ba2:	687b      	ldr	r3, [r7, #4]
 8003ba4:	f893 3041 	ldrb.w	r3, [r3, #65]	@ 0x41
 8003ba8:	b2db      	uxtb	r3, r3
 8003baa:	2b00      	cmp	r3, #0
 8003bac:	d106      	bne.n	8003bbc <HAL_UART_Init+0x2c>
 8003bae:	687b      	ldr	r3, [r7, #4]
 8003bb0:	2200      	movs	r2, #0
 8003bb2:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 8003bb6:	6878      	ldr	r0, [r7, #4]
 8003bb8:	f7fd ff42 	bl	8001a40 <HAL_UART_MspInit>
 8003bbc:	687b      	ldr	r3, [r7, #4]
 8003bbe:	2224      	movs	r2, #36	@ 0x24
 8003bc0:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8003bc4:	687b      	ldr	r3, [r7, #4]
 8003bc6:	681b      	ldr	r3, [r3, #0]
 8003bc8:	68da      	ldr	r2, [r3, #12]
 8003bca:	687b      	ldr	r3, [r7, #4]
 8003bcc:	681b      	ldr	r3, [r3, #0]
 8003bce:	f422 5200 	bic.w	r2, r2, #8192	@ 0x2000
 8003bd2:	60da      	str	r2, [r3, #12]
 8003bd4:	6878      	ldr	r0, [r7, #4]
 8003bd6:	f000 f973 	bl	8003ec0 <UART_SetConfig>
 8003bda:	687b      	ldr	r3, [r7, #4]
 8003bdc:	681b      	ldr	r3, [r3, #0]
 8003bde:	691a      	ldr	r2, [r3, #16]
 8003be0:	687b      	ldr	r3, [r7, #4]
 8003be2:	681b      	ldr	r3, [r3, #0]
 8003be4:	f422 4290 	bic.w	r2, r2, #18432	@ 0x4800
 8003be8:	611a      	str	r2, [r3, #16]
 8003bea:	687b      	ldr	r3, [r7, #4]
 8003bec:	681b      	ldr	r3, [r3, #0]
 8003bee:	695a      	ldr	r2, [r3, #20]
 8003bf0:	687b      	ldr	r3, [r7, #4]
 8003bf2:	681b      	ldr	r3, [r3, #0]
 8003bf4:	f022 022a 	bic.w	r2, r2, #42	@ 0x2a
 8003bf8:	615a      	str	r2, [r3, #20]
 8003bfa:	687b      	ldr	r3, [r7, #4]
 8003bfc:	681b      	ldr	r3, [r3, #0]
 8003bfe:	68da      	ldr	r2, [r3, #12]
 8003c00:	687b      	ldr	r3, [r7, #4]
 8003c02:	681b      	ldr	r3, [r3, #0]
 8003c04:	f442 5200 	orr.w	r2, r2, #8192	@ 0x2000
 8003c08:	60da      	str	r2, [r3, #12]
 8003c0a:	687b      	ldr	r3, [r7, #4]
 8003c0c:	2200      	movs	r2, #0
 8003c0e:	645a      	str	r2, [r3, #68]	@ 0x44
 8003c10:	687b      	ldr	r3, [r7, #4]
 8003c12:	2220      	movs	r2, #32
 8003c14:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8003c18:	687b      	ldr	r3, [r7, #4]
 8003c1a:	2220      	movs	r2, #32
 8003c1c:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 8003c20:	687b      	ldr	r3, [r7, #4]
 8003c22:	2200      	movs	r2, #0
 8003c24:	635a      	str	r2, [r3, #52]	@ 0x34
 8003c26:	2300      	movs	r3, #0
 8003c28:	4618      	mov	r0, r3
 8003c2a:	3708      	adds	r7, #8
 8003c2c:	46bd      	mov	sp, r7
 8003c2e:	bd80      	pop	{r7, pc}

08003c30 <HAL_UART_Transmit>:
 8003c30:	b580      	push	{r7, lr}
 8003c32:	b08a      	sub	sp, #40	@ 0x28
 8003c34:	af02      	add	r7, sp, #8
 8003c36:	60f8      	str	r0, [r7, #12]
 8003c38:	60b9      	str	r1, [r7, #8]
 8003c3a:	603b      	str	r3, [r7, #0]
 8003c3c:	4613      	mov	r3, r2
 8003c3e:	80fb      	strh	r3, [r7, #6]
 8003c40:	2300      	movs	r3, #0
 8003c42:	617b      	str	r3, [r7, #20]
 8003c44:	68fb      	ldr	r3, [r7, #12]
 8003c46:	f893 3041 	ldrb.w	r3, [r3, #65]	@ 0x41
 8003c4a:	b2db      	uxtb	r3, r3
 8003c4c:	2b20      	cmp	r3, #32
 8003c4e:	d175      	bne.n	8003d3c <HAL_UART_Transmit+0x10c>
 8003c50:	68bb      	ldr	r3, [r7, #8]
 8003c52:	2b00      	cmp	r3, #0
 8003c54:	d002      	beq.n	8003c5c <HAL_UART_Transmit+0x2c>
 8003c56:	88fb      	ldrh	r3, [r7, #6]
 8003c58:	2b00      	cmp	r3, #0
 8003c5a:	d101      	bne.n	8003c60 <HAL_UART_Transmit+0x30>
 8003c5c:	2301      	movs	r3, #1
 8003c5e:	e06e      	b.n	8003d3e <HAL_UART_Transmit+0x10e>
 8003c60:	68fb      	ldr	r3, [r7, #12]
 8003c62:	2200      	movs	r2, #0
 8003c64:	645a      	str	r2, [r3, #68]	@ 0x44
 8003c66:	68fb      	ldr	r3, [r7, #12]
 8003c68:	2221      	movs	r2, #33	@ 0x21
 8003c6a:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8003c6e:	f7fd ff93 	bl	8001b98 <HAL_GetTick>
 8003c72:	6178      	str	r0, [r7, #20]
 8003c74:	68fb      	ldr	r3, [r7, #12]
 8003c76:	88fa      	ldrh	r2, [r7, #6]
 8003c78:	849a      	strh	r2, [r3, #36]	@ 0x24
 8003c7a:	68fb      	ldr	r3, [r7, #12]
 8003c7c:	88fa      	ldrh	r2, [r7, #6]
 8003c7e:	84da      	strh	r2, [r3, #38]	@ 0x26
 8003c80:	68fb      	ldr	r3, [r7, #12]
 8003c82:	689b      	ldr	r3, [r3, #8]
 8003c84:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8003c88:	d108      	bne.n	8003c9c <HAL_UART_Transmit+0x6c>
 8003c8a:	68fb      	ldr	r3, [r7, #12]
 8003c8c:	691b      	ldr	r3, [r3, #16]
 8003c8e:	2b00      	cmp	r3, #0
 8003c90:	d104      	bne.n	8003c9c <HAL_UART_Transmit+0x6c>
 8003c92:	2300      	movs	r3, #0
 8003c94:	61fb      	str	r3, [r7, #28]
 8003c96:	68bb      	ldr	r3, [r7, #8]
 8003c98:	61bb      	str	r3, [r7, #24]
 8003c9a:	e003      	b.n	8003ca4 <HAL_UART_Transmit+0x74>
 8003c9c:	68bb      	ldr	r3, [r7, #8]
 8003c9e:	61fb      	str	r3, [r7, #28]
 8003ca0:	2300      	movs	r3, #0
 8003ca2:	61bb      	str	r3, [r7, #24]
 8003ca4:	e02e      	b.n	8003d04 <HAL_UART_Transmit+0xd4>
 8003ca6:	683b      	ldr	r3, [r7, #0]
 8003ca8:	9300      	str	r3, [sp, #0]
 8003caa:	697b      	ldr	r3, [r7, #20]
 8003cac:	2200      	movs	r2, #0
 8003cae:	2180      	movs	r1, #128	@ 0x80
 8003cb0:	68f8      	ldr	r0, [r7, #12]
 8003cb2:	f000 f848 	bl	8003d46 <UART_WaitOnFlagUntilTimeout>
 8003cb6:	4603      	mov	r3, r0
 8003cb8:	2b00      	cmp	r3, #0
 8003cba:	d005      	beq.n	8003cc8 <HAL_UART_Transmit+0x98>
 8003cbc:	68fb      	ldr	r3, [r7, #12]
 8003cbe:	2220      	movs	r2, #32
 8003cc0:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8003cc4:	2303      	movs	r3, #3
 8003cc6:	e03a      	b.n	8003d3e <HAL_UART_Transmit+0x10e>
 8003cc8:	69fb      	ldr	r3, [r7, #28]
 8003cca:	2b00      	cmp	r3, #0
 8003ccc:	d10b      	bne.n	8003ce6 <HAL_UART_Transmit+0xb6>
 8003cce:	69bb      	ldr	r3, [r7, #24]
 8003cd0:	881b      	ldrh	r3, [r3, #0]
 8003cd2:	461a      	mov	r2, r3
 8003cd4:	68fb      	ldr	r3, [r7, #12]
 8003cd6:	681b      	ldr	r3, [r3, #0]
 8003cd8:	f3c2 0208 	ubfx	r2, r2, #0, #9
 8003cdc:	605a      	str	r2, [r3, #4]
 8003cde:	69bb      	ldr	r3, [r7, #24]
 8003ce0:	3302      	adds	r3, #2
 8003ce2:	61bb      	str	r3, [r7, #24]
 8003ce4:	e007      	b.n	8003cf6 <HAL_UART_Transmit+0xc6>
 8003ce6:	69fb      	ldr	r3, [r7, #28]
 8003ce8:	781a      	ldrb	r2, [r3, #0]
 8003cea:	68fb      	ldr	r3, [r7, #12]
 8003cec:	681b      	ldr	r3, [r3, #0]
 8003cee:	605a      	str	r2, [r3, #4]
 8003cf0:	69fb      	ldr	r3, [r7, #28]
 8003cf2:	3301      	adds	r3, #1
 8003cf4:	61fb      	str	r3, [r7, #28]
 8003cf6:	68fb      	ldr	r3, [r7, #12]
 8003cf8:	8cdb      	ldrh	r3, [r3, #38]	@ 0x26
 8003cfa:	b29b      	uxth	r3, r3
 8003cfc:	3b01      	subs	r3, #1
 8003cfe:	b29a      	uxth	r2, r3
 8003d00:	68fb      	ldr	r3, [r7, #12]
 8003d02:	84da      	strh	r2, [r3, #38]	@ 0x26
 8003d04:	68fb      	ldr	r3, [r7, #12]
 8003d06:	8cdb      	ldrh	r3, [r3, #38]	@ 0x26
 8003d08:	b29b      	uxth	r3, r3
 8003d0a:	2b00      	cmp	r3, #0
 8003d0c:	d1cb      	bne.n	8003ca6 <HAL_UART_Transmit+0x76>
 8003d0e:	683b      	ldr	r3, [r7, #0]
 8003d10:	9300      	str	r3, [sp, #0]
 8003d12:	697b      	ldr	r3, [r7, #20]
 8003d14:	2200      	movs	r2, #0
 8003d16:	2140      	movs	r1, #64	@ 0x40
 8003d18:	68f8      	ldr	r0, [r7, #12]
 8003d1a:	f000 f814 	bl	8003d46 <UART_WaitOnFlagUntilTimeout>
 8003d1e:	4603      	mov	r3, r0
 8003d20:	2b00      	cmp	r3, #0
 8003d22:	d005      	beq.n	8003d30 <HAL_UART_Transmit+0x100>
 8003d24:	68fb      	ldr	r3, [r7, #12]
 8003d26:	2220      	movs	r2, #32
 8003d28:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8003d2c:	2303      	movs	r3, #3
 8003d2e:	e006      	b.n	8003d3e <HAL_UART_Transmit+0x10e>
 8003d30:	68fb      	ldr	r3, [r7, #12]
 8003d32:	2220      	movs	r2, #32
 8003d34:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8003d38:	2300      	movs	r3, #0
 8003d3a:	e000      	b.n	8003d3e <HAL_UART_Transmit+0x10e>
 8003d3c:	2302      	movs	r3, #2
 8003d3e:	4618      	mov	r0, r3
 8003d40:	3720      	adds	r7, #32
 8003d42:	46bd      	mov	sp, r7
 8003d44:	bd80      	pop	{r7, pc}

08003d46 <UART_WaitOnFlagUntilTimeout>:
 8003d46:	b580      	push	{r7, lr}
 8003d48:	b086      	sub	sp, #24
 8003d4a:	af00      	add	r7, sp, #0
 8003d4c:	60f8      	str	r0, [r7, #12]
 8003d4e:	60b9      	str	r1, [r7, #8]
 8003d50:	603b      	str	r3, [r7, #0]
 8003d52:	4613      	mov	r3, r2
 8003d54:	71fb      	strb	r3, [r7, #7]
 8003d56:	e03b      	b.n	8003dd0 <UART_WaitOnFlagUntilTimeout+0x8a>
 8003d58:	6a3b      	ldr	r3, [r7, #32]
 8003d5a:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8003d5e:	d037      	beq.n	8003dd0 <UART_WaitOnFlagUntilTimeout+0x8a>
 8003d60:	f7fd ff1a 	bl	8001b98 <HAL_GetTick>
 8003d64:	4602      	mov	r2, r0
 8003d66:	683b      	ldr	r3, [r7, #0]
 8003d68:	1ad3      	subs	r3, r2, r3
 8003d6a:	6a3a      	ldr	r2, [r7, #32]
 8003d6c:	429a      	cmp	r2, r3
 8003d6e:	d302      	bcc.n	8003d76 <UART_WaitOnFlagUntilTimeout+0x30>
 8003d70:	6a3b      	ldr	r3, [r7, #32]
 8003d72:	2b00      	cmp	r3, #0
 8003d74:	d101      	bne.n	8003d7a <UART_WaitOnFlagUntilTimeout+0x34>
 8003d76:	2303      	movs	r3, #3
 8003d78:	e03a      	b.n	8003df0 <UART_WaitOnFlagUntilTimeout+0xaa>
 8003d7a:	68fb      	ldr	r3, [r7, #12]
 8003d7c:	681b      	ldr	r3, [r3, #0]
 8003d7e:	68db      	ldr	r3, [r3, #12]
 8003d80:	f003 0304 	and.w	r3, r3, #4
 8003d84:	2b00      	cmp	r3, #0
 8003d86:	d023      	beq.n	8003dd0 <UART_WaitOnFlagUntilTimeout+0x8a>
 8003d88:	68bb      	ldr	r3, [r7, #8]
 8003d8a:	2b80      	cmp	r3, #128	@ 0x80
 8003d8c:	d020      	beq.n	8003dd0 <UART_WaitOnFlagUntilTimeout+0x8a>
 8003d8e:	68bb      	ldr	r3, [r7, #8]
 8003d90:	2b40      	cmp	r3, #64	@ 0x40
 8003d92:	d01d      	beq.n	8003dd0 <UART_WaitOnFlagUntilTimeout+0x8a>
 8003d94:	68fb      	ldr	r3, [r7, #12]
 8003d96:	681b      	ldr	r3, [r3, #0]
 8003d98:	681b      	ldr	r3, [r3, #0]
 8003d9a:	f003 0308 	and.w	r3, r3, #8
 8003d9e:	2b08      	cmp	r3, #8
 8003da0:	d116      	bne.n	8003dd0 <UART_WaitOnFlagUntilTimeout+0x8a>
 8003da2:	2300      	movs	r3, #0
 8003da4:	617b      	str	r3, [r7, #20]
 8003da6:	68fb      	ldr	r3, [r7, #12]
 8003da8:	681b      	ldr	r3, [r3, #0]
 8003daa:	681b      	ldr	r3, [r3, #0]
 8003dac:	617b      	str	r3, [r7, #20]
 8003dae:	68fb      	ldr	r3, [r7, #12]
 8003db0:	681b      	ldr	r3, [r3, #0]
 8003db2:	685b      	ldr	r3, [r3, #4]
 8003db4:	617b      	str	r3, [r7, #20]
 8003db6:	697b      	ldr	r3, [r7, #20]
 8003db8:	68f8      	ldr	r0, [r7, #12]
 8003dba:	f000 f81d 	bl	8003df8 <UART_EndRxTransfer>
 8003dbe:	68fb      	ldr	r3, [r7, #12]
 8003dc0:	2208      	movs	r2, #8
 8003dc2:	645a      	str	r2, [r3, #68]	@ 0x44
 8003dc4:	68fb      	ldr	r3, [r7, #12]
 8003dc6:	2200      	movs	r2, #0
 8003dc8:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 8003dcc:	2301      	movs	r3, #1
 8003dce:	e00f      	b.n	8003df0 <UART_WaitOnFlagUntilTimeout+0xaa>
 8003dd0:	68fb      	ldr	r3, [r7, #12]
 8003dd2:	681b      	ldr	r3, [r3, #0]
 8003dd4:	681a      	ldr	r2, [r3, #0]
 8003dd6:	68bb      	ldr	r3, [r7, #8]
 8003dd8:	4013      	ands	r3, r2
 8003dda:	68ba      	ldr	r2, [r7, #8]
 8003ddc:	429a      	cmp	r2, r3
 8003dde:	bf0c      	ite	eq
 8003de0:	2301      	moveq	r3, #1
 8003de2:	2300      	movne	r3, #0
 8003de4:	b2db      	uxtb	r3, r3
 8003de6:	461a      	mov	r2, r3
 8003de8:	79fb      	ldrb	r3, [r7, #7]
 8003dea:	429a      	cmp	r2, r3
 8003dec:	d0b4      	beq.n	8003d58 <UART_WaitOnFlagUntilTimeout+0x12>
 8003dee:	2300      	movs	r3, #0
 8003df0:	4618      	mov	r0, r3
 8003df2:	3718      	adds	r7, #24
 8003df4:	46bd      	mov	sp, r7
 8003df6:	bd80      	pop	{r7, pc}

08003df8 <UART_EndRxTransfer>:
 8003df8:	b480      	push	{r7}
 8003dfa:	b095      	sub	sp, #84	@ 0x54
 8003dfc:	af00      	add	r7, sp, #0
 8003dfe:	6078      	str	r0, [r7, #4]
 8003e00:	687b      	ldr	r3, [r7, #4]
 8003e02:	681b      	ldr	r3, [r3, #0]
 8003e04:	330c      	adds	r3, #12
 8003e06:	637b      	str	r3, [r7, #52]	@ 0x34
 8003e08:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8003e0a:	e853 3f00 	ldrex	r3, [r3]
 8003e0e:	633b      	str	r3, [r7, #48]	@ 0x30
 8003e10:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8003e12:	f423 7390 	bic.w	r3, r3, #288	@ 0x120
 8003e16:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8003e18:	687b      	ldr	r3, [r7, #4]
 8003e1a:	681b      	ldr	r3, [r3, #0]
 8003e1c:	330c      	adds	r3, #12
 8003e1e:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 8003e20:	643a      	str	r2, [r7, #64]	@ 0x40
 8003e22:	63fb      	str	r3, [r7, #60]	@ 0x3c
 8003e24:	6bf9      	ldr	r1, [r7, #60]	@ 0x3c
 8003e26:	6c3a      	ldr	r2, [r7, #64]	@ 0x40
 8003e28:	e841 2300 	strex	r3, r2, [r1]
 8003e2c:	63bb      	str	r3, [r7, #56]	@ 0x38
 8003e2e:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 8003e30:	2b00      	cmp	r3, #0
 8003e32:	d1e5      	bne.n	8003e00 <UART_EndRxTransfer+0x8>
 8003e34:	687b      	ldr	r3, [r7, #4]
 8003e36:	681b      	ldr	r3, [r3, #0]
 8003e38:	3314      	adds	r3, #20
 8003e3a:	623b      	str	r3, [r7, #32]
 8003e3c:	6a3b      	ldr	r3, [r7, #32]
 8003e3e:	e853 3f00 	ldrex	r3, [r3]
 8003e42:	61fb      	str	r3, [r7, #28]
 8003e44:	69fb      	ldr	r3, [r7, #28]
 8003e46:	f023 0301 	bic.w	r3, r3, #1
 8003e4a:	64bb      	str	r3, [r7, #72]	@ 0x48
 8003e4c:	687b      	ldr	r3, [r7, #4]
 8003e4e:	681b      	ldr	r3, [r3, #0]
 8003e50:	3314      	adds	r3, #20
 8003e52:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 8003e54:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8003e56:	62bb      	str	r3, [r7, #40]	@ 0x28
 8003e58:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
 8003e5a:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 8003e5c:	e841 2300 	strex	r3, r2, [r1]
 8003e60:	627b      	str	r3, [r7, #36]	@ 0x24
 8003e62:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8003e64:	2b00      	cmp	r3, #0
 8003e66:	d1e5      	bne.n	8003e34 <UART_EndRxTransfer+0x3c>
 8003e68:	687b      	ldr	r3, [r7, #4]
 8003e6a:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8003e6c:	2b01      	cmp	r3, #1
 8003e6e:	d119      	bne.n	8003ea4 <UART_EndRxTransfer+0xac>
 8003e70:	687b      	ldr	r3, [r7, #4]
 8003e72:	681b      	ldr	r3, [r3, #0]
 8003e74:	330c      	adds	r3, #12
 8003e76:	60fb      	str	r3, [r7, #12]
 8003e78:	68fb      	ldr	r3, [r7, #12]
 8003e7a:	e853 3f00 	ldrex	r3, [r3]
 8003e7e:	60bb      	str	r3, [r7, #8]
 8003e80:	68bb      	ldr	r3, [r7, #8]
 8003e82:	f023 0310 	bic.w	r3, r3, #16
 8003e86:	647b      	str	r3, [r7, #68]	@ 0x44
 8003e88:	687b      	ldr	r3, [r7, #4]
 8003e8a:	681b      	ldr	r3, [r3, #0]
 8003e8c:	330c      	adds	r3, #12
 8003e8e:	6c7a      	ldr	r2, [r7, #68]	@ 0x44
 8003e90:	61ba      	str	r2, [r7, #24]
 8003e92:	617b      	str	r3, [r7, #20]
 8003e94:	6979      	ldr	r1, [r7, #20]
 8003e96:	69ba      	ldr	r2, [r7, #24]
 8003e98:	e841 2300 	strex	r3, r2, [r1]
 8003e9c:	613b      	str	r3, [r7, #16]
 8003e9e:	693b      	ldr	r3, [r7, #16]
 8003ea0:	2b00      	cmp	r3, #0
 8003ea2:	d1e5      	bne.n	8003e70 <UART_EndRxTransfer+0x78>
 8003ea4:	687b      	ldr	r3, [r7, #4]
 8003ea6:	2220      	movs	r2, #32
 8003ea8:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 8003eac:	687b      	ldr	r3, [r7, #4]
 8003eae:	2200      	movs	r2, #0
 8003eb0:	631a      	str	r2, [r3, #48]	@ 0x30
 8003eb2:	bf00      	nop
 8003eb4:	3754      	adds	r7, #84	@ 0x54
 8003eb6:	46bd      	mov	sp, r7
 8003eb8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003ebc:	4770      	bx	lr
	...

08003ec0 <UART_SetConfig>:
 8003ec0:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
 8003ec4:	b0c0      	sub	sp, #256	@ 0x100
 8003ec6:	af00      	add	r7, sp, #0
 8003ec8:	f8c7 00f4 	str.w	r0, [r7, #244]	@ 0xf4
 8003ecc:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003ed0:	681b      	ldr	r3, [r3, #0]
 8003ed2:	691b      	ldr	r3, [r3, #16]
 8003ed4:	f423 5040 	bic.w	r0, r3, #12288	@ 0x3000
 8003ed8:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003edc:	68d9      	ldr	r1, [r3, #12]
 8003ede:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003ee2:	681a      	ldr	r2, [r3, #0]
 8003ee4:	ea40 0301 	orr.w	r3, r0, r1
 8003ee8:	6113      	str	r3, [r2, #16]
 8003eea:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003eee:	689a      	ldr	r2, [r3, #8]
 8003ef0:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003ef4:	691b      	ldr	r3, [r3, #16]
 8003ef6:	431a      	orrs	r2, r3
 8003ef8:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003efc:	695b      	ldr	r3, [r3, #20]
 8003efe:	431a      	orrs	r2, r3
 8003f00:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003f04:	69db      	ldr	r3, [r3, #28]
 8003f06:	4313      	orrs	r3, r2
 8003f08:	f8c7 30f8 	str.w	r3, [r7, #248]	@ 0xf8
 8003f0c:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003f10:	681b      	ldr	r3, [r3, #0]
 8003f12:	68db      	ldr	r3, [r3, #12]
 8003f14:	f423 4116 	bic.w	r1, r3, #38400	@ 0x9600
 8003f18:	f021 010c 	bic.w	r1, r1, #12
 8003f1c:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003f20:	681a      	ldr	r2, [r3, #0]
 8003f22:	f8d7 30f8 	ldr.w	r3, [r7, #248]	@ 0xf8
 8003f26:	430b      	orrs	r3, r1
 8003f28:	60d3      	str	r3, [r2, #12]
 8003f2a:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003f2e:	681b      	ldr	r3, [r3, #0]
 8003f30:	695b      	ldr	r3, [r3, #20]
 8003f32:	f423 7040 	bic.w	r0, r3, #768	@ 0x300
 8003f36:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003f3a:	6999      	ldr	r1, [r3, #24]
 8003f3c:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003f40:	681a      	ldr	r2, [r3, #0]
 8003f42:	ea40 0301 	orr.w	r3, r0, r1
 8003f46:	6153      	str	r3, [r2, #20]
 8003f48:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003f4c:	681a      	ldr	r2, [r3, #0]
 8003f4e:	4b8f      	ldr	r3, [pc, #572]	@ (800418c <UART_SetConfig+0x2cc>)
 8003f50:	429a      	cmp	r2, r3
 8003f52:	d005      	beq.n	8003f60 <UART_SetConfig+0xa0>
 8003f54:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003f58:	681a      	ldr	r2, [r3, #0]
 8003f5a:	4b8d      	ldr	r3, [pc, #564]	@ (8004190 <UART_SetConfig+0x2d0>)
 8003f5c:	429a      	cmp	r2, r3
 8003f5e:	d104      	bne.n	8003f6a <UART_SetConfig+0xaa>
 8003f60:	f7ff f8d2 	bl	8003108 <HAL_RCC_GetPCLK2Freq>
 8003f64:	f8c7 00fc 	str.w	r0, [r7, #252]	@ 0xfc
 8003f68:	e003      	b.n	8003f72 <UART_SetConfig+0xb2>
 8003f6a:	f7ff f8b9 	bl	80030e0 <HAL_RCC_GetPCLK1Freq>
 8003f6e:	f8c7 00fc 	str.w	r0, [r7, #252]	@ 0xfc
 8003f72:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003f76:	69db      	ldr	r3, [r3, #28]
 8003f78:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8003f7c:	f040 810c 	bne.w	8004198 <UART_SetConfig+0x2d8>
 8003f80:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 8003f84:	2200      	movs	r2, #0
 8003f86:	f8c7 30e8 	str.w	r3, [r7, #232]	@ 0xe8
 8003f8a:	f8c7 20ec 	str.w	r2, [r7, #236]	@ 0xec
 8003f8e:	e9d7 453a 	ldrd	r4, r5, [r7, #232]	@ 0xe8
 8003f92:	4622      	mov	r2, r4
 8003f94:	462b      	mov	r3, r5
 8003f96:	1891      	adds	r1, r2, r2
 8003f98:	65b9      	str	r1, [r7, #88]	@ 0x58
 8003f9a:	415b      	adcs	r3, r3
 8003f9c:	65fb      	str	r3, [r7, #92]	@ 0x5c
 8003f9e:	e9d7 2316 	ldrd	r2, r3, [r7, #88]	@ 0x58
 8003fa2:	4621      	mov	r1, r4
 8003fa4:	eb12 0801 	adds.w	r8, r2, r1
 8003fa8:	4629      	mov	r1, r5
 8003faa:	eb43 0901 	adc.w	r9, r3, r1
 8003fae:	f04f 0200 	mov.w	r2, #0
 8003fb2:	f04f 0300 	mov.w	r3, #0
 8003fb6:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 8003fba:	ea43 7358 	orr.w	r3, r3, r8, lsr #29
 8003fbe:	ea4f 02c8 	mov.w	r2, r8, lsl #3
 8003fc2:	4690      	mov	r8, r2
 8003fc4:	4699      	mov	r9, r3
 8003fc6:	4623      	mov	r3, r4
 8003fc8:	eb18 0303 	adds.w	r3, r8, r3
 8003fcc:	f8c7 30e0 	str.w	r3, [r7, #224]	@ 0xe0
 8003fd0:	462b      	mov	r3, r5
 8003fd2:	eb49 0303 	adc.w	r3, r9, r3
 8003fd6:	f8c7 30e4 	str.w	r3, [r7, #228]	@ 0xe4
 8003fda:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003fde:	685b      	ldr	r3, [r3, #4]
 8003fe0:	2200      	movs	r2, #0
 8003fe2:	f8c7 30d8 	str.w	r3, [r7, #216]	@ 0xd8
 8003fe6:	f8c7 20dc 	str.w	r2, [r7, #220]	@ 0xdc
 8003fea:	e9d7 1236 	ldrd	r1, r2, [r7, #216]	@ 0xd8
 8003fee:	460b      	mov	r3, r1
 8003ff0:	18db      	adds	r3, r3, r3
 8003ff2:	653b      	str	r3, [r7, #80]	@ 0x50
 8003ff4:	4613      	mov	r3, r2
 8003ff6:	eb42 0303 	adc.w	r3, r2, r3
 8003ffa:	657b      	str	r3, [r7, #84]	@ 0x54
 8003ffc:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
 8004000:	e9d7 0138 	ldrd	r0, r1, [r7, #224]	@ 0xe0
 8004004:	f7fc f8c0 	bl	8000188 <__aeabi_uldivmod>
 8004008:	4602      	mov	r2, r0
 800400a:	460b      	mov	r3, r1
 800400c:	4b61      	ldr	r3, [pc, #388]	@ (8004194 <UART_SetConfig+0x2d4>)
 800400e:	fba3 2302 	umull	r2, r3, r3, r2
 8004012:	095b      	lsrs	r3, r3, #5
 8004014:	011c      	lsls	r4, r3, #4
 8004016:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 800401a:	2200      	movs	r2, #0
 800401c:	f8c7 30d0 	str.w	r3, [r7, #208]	@ 0xd0
 8004020:	f8c7 20d4 	str.w	r2, [r7, #212]	@ 0xd4
 8004024:	e9d7 8934 	ldrd	r8, r9, [r7, #208]	@ 0xd0
 8004028:	4642      	mov	r2, r8
 800402a:	464b      	mov	r3, r9
 800402c:	1891      	adds	r1, r2, r2
 800402e:	64b9      	str	r1, [r7, #72]	@ 0x48
 8004030:	415b      	adcs	r3, r3
 8004032:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8004034:	e9d7 2312 	ldrd	r2, r3, [r7, #72]	@ 0x48
 8004038:	4641      	mov	r1, r8
 800403a:	eb12 0a01 	adds.w	sl, r2, r1
 800403e:	4649      	mov	r1, r9
 8004040:	eb43 0b01 	adc.w	fp, r3, r1
 8004044:	f04f 0200 	mov.w	r2, #0
 8004048:	f04f 0300 	mov.w	r3, #0
 800404c:	ea4f 03cb 	mov.w	r3, fp, lsl #3
 8004050:	ea43 735a 	orr.w	r3, r3, sl, lsr #29
 8004054:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8004058:	4692      	mov	sl, r2
 800405a:	469b      	mov	fp, r3
 800405c:	4643      	mov	r3, r8
 800405e:	eb1a 0303 	adds.w	r3, sl, r3
 8004062:	f8c7 30c8 	str.w	r3, [r7, #200]	@ 0xc8
 8004066:	464b      	mov	r3, r9
 8004068:	eb4b 0303 	adc.w	r3, fp, r3
 800406c:	f8c7 30cc 	str.w	r3, [r7, #204]	@ 0xcc
 8004070:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8004074:	685b      	ldr	r3, [r3, #4]
 8004076:	2200      	movs	r2, #0
 8004078:	f8c7 30c0 	str.w	r3, [r7, #192]	@ 0xc0
 800407c:	f8c7 20c4 	str.w	r2, [r7, #196]	@ 0xc4
 8004080:	e9d7 1230 	ldrd	r1, r2, [r7, #192]	@ 0xc0
 8004084:	460b      	mov	r3, r1
 8004086:	18db      	adds	r3, r3, r3
 8004088:	643b      	str	r3, [r7, #64]	@ 0x40
 800408a:	4613      	mov	r3, r2
 800408c:	eb42 0303 	adc.w	r3, r2, r3
 8004090:	647b      	str	r3, [r7, #68]	@ 0x44
 8004092:	e9d7 2310 	ldrd	r2, r3, [r7, #64]	@ 0x40
 8004096:	e9d7 0132 	ldrd	r0, r1, [r7, #200]	@ 0xc8
 800409a:	f7fc f875 	bl	8000188 <__aeabi_uldivmod>
 800409e:	4602      	mov	r2, r0
 80040a0:	460b      	mov	r3, r1
 80040a2:	4611      	mov	r1, r2
 80040a4:	4b3b      	ldr	r3, [pc, #236]	@ (8004194 <UART_SetConfig+0x2d4>)
 80040a6:	fba3 2301 	umull	r2, r3, r3, r1
 80040aa:	095b      	lsrs	r3, r3, #5
 80040ac:	2264      	movs	r2, #100	@ 0x64
 80040ae:	fb02 f303 	mul.w	r3, r2, r3
 80040b2:	1acb      	subs	r3, r1, r3
 80040b4:	00db      	lsls	r3, r3, #3
 80040b6:	f103 0232 	add.w	r2, r3, #50	@ 0x32
 80040ba:	4b36      	ldr	r3, [pc, #216]	@ (8004194 <UART_SetConfig+0x2d4>)
 80040bc:	fba3 2302 	umull	r2, r3, r3, r2
 80040c0:	095b      	lsrs	r3, r3, #5
 80040c2:	005b      	lsls	r3, r3, #1
 80040c4:	f403 73f8 	and.w	r3, r3, #496	@ 0x1f0
 80040c8:	441c      	add	r4, r3
 80040ca:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 80040ce:	2200      	movs	r2, #0
 80040d0:	f8c7 30b8 	str.w	r3, [r7, #184]	@ 0xb8
 80040d4:	f8c7 20bc 	str.w	r2, [r7, #188]	@ 0xbc
 80040d8:	e9d7 892e 	ldrd	r8, r9, [r7, #184]	@ 0xb8
 80040dc:	4642      	mov	r2, r8
 80040de:	464b      	mov	r3, r9
 80040e0:	1891      	adds	r1, r2, r2
 80040e2:	63b9      	str	r1, [r7, #56]	@ 0x38
 80040e4:	415b      	adcs	r3, r3
 80040e6:	63fb      	str	r3, [r7, #60]	@ 0x3c
 80040e8:	e9d7 230e 	ldrd	r2, r3, [r7, #56]	@ 0x38
 80040ec:	4641      	mov	r1, r8
 80040ee:	1851      	adds	r1, r2, r1
 80040f0:	6339      	str	r1, [r7, #48]	@ 0x30
 80040f2:	4649      	mov	r1, r9
 80040f4:	414b      	adcs	r3, r1
 80040f6:	637b      	str	r3, [r7, #52]	@ 0x34
 80040f8:	f04f 0200 	mov.w	r2, #0
 80040fc:	f04f 0300 	mov.w	r3, #0
 8004100:	e9d7 ab0c 	ldrd	sl, fp, [r7, #48]	@ 0x30
 8004104:	4659      	mov	r1, fp
 8004106:	00cb      	lsls	r3, r1, #3
 8004108:	4651      	mov	r1, sl
 800410a:	ea43 7351 	orr.w	r3, r3, r1, lsr #29
 800410e:	4651      	mov	r1, sl
 8004110:	00ca      	lsls	r2, r1, #3
 8004112:	4610      	mov	r0, r2
 8004114:	4619      	mov	r1, r3
 8004116:	4603      	mov	r3, r0
 8004118:	4642      	mov	r2, r8
 800411a:	189b      	adds	r3, r3, r2
 800411c:	f8c7 30b0 	str.w	r3, [r7, #176]	@ 0xb0
 8004120:	464b      	mov	r3, r9
 8004122:	460a      	mov	r2, r1
 8004124:	eb42 0303 	adc.w	r3, r2, r3
 8004128:	f8c7 30b4 	str.w	r3, [r7, #180]	@ 0xb4
 800412c:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8004130:	685b      	ldr	r3, [r3, #4]
 8004132:	2200      	movs	r2, #0
 8004134:	f8c7 30a8 	str.w	r3, [r7, #168]	@ 0xa8
 8004138:	f8c7 20ac 	str.w	r2, [r7, #172]	@ 0xac
 800413c:	e9d7 122a 	ldrd	r1, r2, [r7, #168]	@ 0xa8
 8004140:	460b      	mov	r3, r1
 8004142:	18db      	adds	r3, r3, r3
 8004144:	62bb      	str	r3, [r7, #40]	@ 0x28
 8004146:	4613      	mov	r3, r2
 8004148:	eb42 0303 	adc.w	r3, r2, r3
 800414c:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800414e:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	@ 0x28
 8004152:	e9d7 012c 	ldrd	r0, r1, [r7, #176]	@ 0xb0
 8004156:	f7fc f817 	bl	8000188 <__aeabi_uldivmod>
 800415a:	4602      	mov	r2, r0
 800415c:	460b      	mov	r3, r1
 800415e:	4b0d      	ldr	r3, [pc, #52]	@ (8004194 <UART_SetConfig+0x2d4>)
 8004160:	fba3 1302 	umull	r1, r3, r3, r2
 8004164:	095b      	lsrs	r3, r3, #5
 8004166:	2164      	movs	r1, #100	@ 0x64
 8004168:	fb01 f303 	mul.w	r3, r1, r3
 800416c:	1ad3      	subs	r3, r2, r3
 800416e:	00db      	lsls	r3, r3, #3
 8004170:	3332      	adds	r3, #50	@ 0x32
 8004172:	4a08      	ldr	r2, [pc, #32]	@ (8004194 <UART_SetConfig+0x2d4>)
 8004174:	fba2 2303 	umull	r2, r3, r2, r3
 8004178:	095b      	lsrs	r3, r3, #5
 800417a:	f003 0207 	and.w	r2, r3, #7
 800417e:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8004182:	681b      	ldr	r3, [r3, #0]
 8004184:	4422      	add	r2, r4
 8004186:	609a      	str	r2, [r3, #8]
 8004188:	e106      	b.n	8004398 <UART_SetConfig+0x4d8>
 800418a:	bf00      	nop
 800418c:	40011000 	.word	0x40011000
 8004190:	40011400 	.word	0x40011400
 8004194:	51eb851f 	.word	0x51eb851f
 8004198:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 800419c:	2200      	movs	r2, #0
 800419e:	f8c7 30a0 	str.w	r3, [r7, #160]	@ 0xa0
 80041a2:	f8c7 20a4 	str.w	r2, [r7, #164]	@ 0xa4
 80041a6:	e9d7 8928 	ldrd	r8, r9, [r7, #160]	@ 0xa0
 80041aa:	4642      	mov	r2, r8
 80041ac:	464b      	mov	r3, r9
 80041ae:	1891      	adds	r1, r2, r2
 80041b0:	6239      	str	r1, [r7, #32]
 80041b2:	415b      	adcs	r3, r3
 80041b4:	627b      	str	r3, [r7, #36]	@ 0x24
 80041b6:	e9d7 2308 	ldrd	r2, r3, [r7, #32]
 80041ba:	4641      	mov	r1, r8
 80041bc:	1854      	adds	r4, r2, r1
 80041be:	4649      	mov	r1, r9
 80041c0:	eb43 0501 	adc.w	r5, r3, r1
 80041c4:	f04f 0200 	mov.w	r2, #0
 80041c8:	f04f 0300 	mov.w	r3, #0
 80041cc:	00eb      	lsls	r3, r5, #3
 80041ce:	ea43 7354 	orr.w	r3, r3, r4, lsr #29
 80041d2:	00e2      	lsls	r2, r4, #3
 80041d4:	4614      	mov	r4, r2
 80041d6:	461d      	mov	r5, r3
 80041d8:	4643      	mov	r3, r8
 80041da:	18e3      	adds	r3, r4, r3
 80041dc:	f8c7 3098 	str.w	r3, [r7, #152]	@ 0x98
 80041e0:	464b      	mov	r3, r9
 80041e2:	eb45 0303 	adc.w	r3, r5, r3
 80041e6:	f8c7 309c 	str.w	r3, [r7, #156]	@ 0x9c
 80041ea:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 80041ee:	685b      	ldr	r3, [r3, #4]
 80041f0:	2200      	movs	r2, #0
 80041f2:	f8c7 3090 	str.w	r3, [r7, #144]	@ 0x90
 80041f6:	f8c7 2094 	str.w	r2, [r7, #148]	@ 0x94
 80041fa:	f04f 0200 	mov.w	r2, #0
 80041fe:	f04f 0300 	mov.w	r3, #0
 8004202:	e9d7 4524 	ldrd	r4, r5, [r7, #144]	@ 0x90
 8004206:	4629      	mov	r1, r5
 8004208:	008b      	lsls	r3, r1, #2
 800420a:	4621      	mov	r1, r4
 800420c:	ea43 7391 	orr.w	r3, r3, r1, lsr #30
 8004210:	4621      	mov	r1, r4
 8004212:	008a      	lsls	r2, r1, #2
 8004214:	e9d7 0126 	ldrd	r0, r1, [r7, #152]	@ 0x98
 8004218:	f7fb ffb6 	bl	8000188 <__aeabi_uldivmod>
 800421c:	4602      	mov	r2, r0
 800421e:	460b      	mov	r3, r1
 8004220:	4b60      	ldr	r3, [pc, #384]	@ (80043a4 <UART_SetConfig+0x4e4>)
 8004222:	fba3 2302 	umull	r2, r3, r3, r2
 8004226:	095b      	lsrs	r3, r3, #5
 8004228:	011c      	lsls	r4, r3, #4
 800422a:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 800422e:	2200      	movs	r2, #0
 8004230:	f8c7 3088 	str.w	r3, [r7, #136]	@ 0x88
 8004234:	f8c7 208c 	str.w	r2, [r7, #140]	@ 0x8c
 8004238:	e9d7 8922 	ldrd	r8, r9, [r7, #136]	@ 0x88
 800423c:	4642      	mov	r2, r8
 800423e:	464b      	mov	r3, r9
 8004240:	1891      	adds	r1, r2, r2
 8004242:	61b9      	str	r1, [r7, #24]
 8004244:	415b      	adcs	r3, r3
 8004246:	61fb      	str	r3, [r7, #28]
 8004248:	e9d7 2306 	ldrd	r2, r3, [r7, #24]
 800424c:	4641      	mov	r1, r8
 800424e:	1851      	adds	r1, r2, r1
 8004250:	6139      	str	r1, [r7, #16]
 8004252:	4649      	mov	r1, r9
 8004254:	414b      	adcs	r3, r1
 8004256:	617b      	str	r3, [r7, #20]
 8004258:	f04f 0200 	mov.w	r2, #0
 800425c:	f04f 0300 	mov.w	r3, #0
 8004260:	e9d7 ab04 	ldrd	sl, fp, [r7, #16]
 8004264:	4659      	mov	r1, fp
 8004266:	00cb      	lsls	r3, r1, #3
 8004268:	4651      	mov	r1, sl
 800426a:	ea43 7351 	orr.w	r3, r3, r1, lsr #29
 800426e:	4651      	mov	r1, sl
 8004270:	00ca      	lsls	r2, r1, #3
 8004272:	4610      	mov	r0, r2
 8004274:	4619      	mov	r1, r3
 8004276:	4603      	mov	r3, r0
 8004278:	4642      	mov	r2, r8
 800427a:	189b      	adds	r3, r3, r2
 800427c:	f8c7 3080 	str.w	r3, [r7, #128]	@ 0x80
 8004280:	464b      	mov	r3, r9
 8004282:	460a      	mov	r2, r1
 8004284:	eb42 0303 	adc.w	r3, r2, r3
 8004288:	f8c7 3084 	str.w	r3, [r7, #132]	@ 0x84
 800428c:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8004290:	685b      	ldr	r3, [r3, #4]
 8004292:	2200      	movs	r2, #0
 8004294:	67bb      	str	r3, [r7, #120]	@ 0x78
 8004296:	67fa      	str	r2, [r7, #124]	@ 0x7c
 8004298:	f04f 0200 	mov.w	r2, #0
 800429c:	f04f 0300 	mov.w	r3, #0
 80042a0:	e9d7 891e 	ldrd	r8, r9, [r7, #120]	@ 0x78
 80042a4:	4649      	mov	r1, r9
 80042a6:	008b      	lsls	r3, r1, #2
 80042a8:	4641      	mov	r1, r8
 80042aa:	ea43 7391 	orr.w	r3, r3, r1, lsr #30
 80042ae:	4641      	mov	r1, r8
 80042b0:	008a      	lsls	r2, r1, #2
 80042b2:	e9d7 0120 	ldrd	r0, r1, [r7, #128]	@ 0x80
 80042b6:	f7fb ff67 	bl	8000188 <__aeabi_uldivmod>
 80042ba:	4602      	mov	r2, r0
 80042bc:	460b      	mov	r3, r1
 80042be:	4611      	mov	r1, r2
 80042c0:	4b38      	ldr	r3, [pc, #224]	@ (80043a4 <UART_SetConfig+0x4e4>)
 80042c2:	fba3 2301 	umull	r2, r3, r3, r1
 80042c6:	095b      	lsrs	r3, r3, #5
 80042c8:	2264      	movs	r2, #100	@ 0x64
 80042ca:	fb02 f303 	mul.w	r3, r2, r3
 80042ce:	1acb      	subs	r3, r1, r3
 80042d0:	011b      	lsls	r3, r3, #4
 80042d2:	3332      	adds	r3, #50	@ 0x32
 80042d4:	4a33      	ldr	r2, [pc, #204]	@ (80043a4 <UART_SetConfig+0x4e4>)
 80042d6:	fba2 2303 	umull	r2, r3, r2, r3
 80042da:	095b      	lsrs	r3, r3, #5
 80042dc:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 80042e0:	441c      	add	r4, r3
 80042e2:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 80042e6:	2200      	movs	r2, #0
 80042e8:	673b      	str	r3, [r7, #112]	@ 0x70
 80042ea:	677a      	str	r2, [r7, #116]	@ 0x74
 80042ec:	e9d7 891c 	ldrd	r8, r9, [r7, #112]	@ 0x70
 80042f0:	4642      	mov	r2, r8
 80042f2:	464b      	mov	r3, r9
 80042f4:	1891      	adds	r1, r2, r2
 80042f6:	60b9      	str	r1, [r7, #8]
 80042f8:	415b      	adcs	r3, r3
 80042fa:	60fb      	str	r3, [r7, #12]
 80042fc:	e9d7 2302 	ldrd	r2, r3, [r7, #8]
 8004300:	4641      	mov	r1, r8
 8004302:	1851      	adds	r1, r2, r1
 8004304:	6039      	str	r1, [r7, #0]
 8004306:	4649      	mov	r1, r9
 8004308:	414b      	adcs	r3, r1
 800430a:	607b      	str	r3, [r7, #4]
 800430c:	f04f 0200 	mov.w	r2, #0
 8004310:	f04f 0300 	mov.w	r3, #0
 8004314:	e9d7 ab00 	ldrd	sl, fp, [r7]
 8004318:	4659      	mov	r1, fp
 800431a:	00cb      	lsls	r3, r1, #3
 800431c:	4651      	mov	r1, sl
 800431e:	ea43 7351 	orr.w	r3, r3, r1, lsr #29
 8004322:	4651      	mov	r1, sl
 8004324:	00ca      	lsls	r2, r1, #3
 8004326:	4610      	mov	r0, r2
 8004328:	4619      	mov	r1, r3
 800432a:	4603      	mov	r3, r0
 800432c:	4642      	mov	r2, r8
 800432e:	189b      	adds	r3, r3, r2
 8004330:	66bb      	str	r3, [r7, #104]	@ 0x68
 8004332:	464b      	mov	r3, r9
 8004334:	460a      	mov	r2, r1
 8004336:	eb42 0303 	adc.w	r3, r2, r3
 800433a:	66fb      	str	r3, [r7, #108]	@ 0x6c
 800433c:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8004340:	685b      	ldr	r3, [r3, #4]
 8004342:	2200      	movs	r2, #0
 8004344:	663b      	str	r3, [r7, #96]	@ 0x60
 8004346:	667a      	str	r2, [r7, #100]	@ 0x64
 8004348:	f04f 0200 	mov.w	r2, #0
 800434c:	f04f 0300 	mov.w	r3, #0
 8004350:	e9d7 8918 	ldrd	r8, r9, [r7, #96]	@ 0x60
 8004354:	4649      	mov	r1, r9
 8004356:	008b      	lsls	r3, r1, #2
 8004358:	4641      	mov	r1, r8
 800435a:	ea43 7391 	orr.w	r3, r3, r1, lsr #30
 800435e:	4641      	mov	r1, r8
 8004360:	008a      	lsls	r2, r1, #2
 8004362:	e9d7 011a 	ldrd	r0, r1, [r7, #104]	@ 0x68
 8004366:	f7fb ff0f 	bl	8000188 <__aeabi_uldivmod>
 800436a:	4602      	mov	r2, r0
 800436c:	460b      	mov	r3, r1
 800436e:	4b0d      	ldr	r3, [pc, #52]	@ (80043a4 <UART_SetConfig+0x4e4>)
 8004370:	fba3 1302 	umull	r1, r3, r3, r2
 8004374:	095b      	lsrs	r3, r3, #5
 8004376:	2164      	movs	r1, #100	@ 0x64
 8004378:	fb01 f303 	mul.w	r3, r1, r3
 800437c:	1ad3      	subs	r3, r2, r3
 800437e:	011b      	lsls	r3, r3, #4
 8004380:	3332      	adds	r3, #50	@ 0x32
 8004382:	4a08      	ldr	r2, [pc, #32]	@ (80043a4 <UART_SetConfig+0x4e4>)
 8004384:	fba2 2303 	umull	r2, r3, r2, r3
 8004388:	095b      	lsrs	r3, r3, #5
 800438a:	f003 020f 	and.w	r2, r3, #15
 800438e:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8004392:	681b      	ldr	r3, [r3, #0]
 8004394:	4422      	add	r2, r4
 8004396:	609a      	str	r2, [r3, #8]
 8004398:	bf00      	nop
 800439a:	f507 7780 	add.w	r7, r7, #256	@ 0x100
 800439e:	46bd      	mov	sp, r7
 80043a0:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
 80043a4:	51eb851f 	.word	0x51eb851f

080043a8 <Reset_Handler>:
 80043a8:	f8df d034 	ldr.w	sp, [pc, #52]	@ 80043e0 <LoopFillZerobss+0xe>
 80043ac:	f7fc fd36 	bl	8000e1c <SystemInit>
 80043b0:	480c      	ldr	r0, [pc, #48]	@ (80043e4 <LoopFillZerobss+0x12>)
 80043b2:	490d      	ldr	r1, [pc, #52]	@ (80043e8 <LoopFillZerobss+0x16>)
 80043b4:	4a0d      	ldr	r2, [pc, #52]	@ (80043ec <LoopFillZerobss+0x1a>)
 80043b6:	2300      	movs	r3, #0
 80043b8:	e002      	b.n	80043c0 <LoopCopyDataInit>

080043ba <CopyDataInit>:
 80043ba:	58d4      	ldr	r4, [r2, r3]
 80043bc:	50c4      	str	r4, [r0, r3]
 80043be:	3304      	adds	r3, #4

080043c0 <LoopCopyDataInit>:
 80043c0:	18c4      	adds	r4, r0, r3
 80043c2:	428c      	cmp	r4, r1
 80043c4:	d3f9      	bcc.n	80043ba <CopyDataInit>
 80043c6:	4a0a      	ldr	r2, [pc, #40]	@ (80043f0 <LoopFillZerobss+0x1e>)
 80043c8:	4c0a      	ldr	r4, [pc, #40]	@ (80043f4 <LoopFillZerobss+0x22>)
 80043ca:	2300      	movs	r3, #0
 80043cc:	e001      	b.n	80043d2 <LoopFillZerobss>

080043ce <FillZerobss>:
 80043ce:	6013      	str	r3, [r2, #0]
 80043d0:	3204      	adds	r2, #4

080043d2 <LoopFillZerobss>:
 80043d2:	42a2      	cmp	r2, r4
 80043d4:	d3fb      	bcc.n	80043ce <FillZerobss>
 80043d6:	f7fc f88d 	bl	80004f4 <__libc_init_array>
 80043da:	f7fc fb27 	bl	8000a2c <main>
 80043de:	4770      	bx	lr
 80043e0:	20020000 	.word	0x20020000
 80043e4:	20000000 	.word	0x20000000
 80043e8:	20000068 	.word	0x20000068
 80043ec:	08004a38 	.word	0x08004a38
 80043f0:	20000068 	.word	0x20000068
 80043f4:	20000660 	.word	0x20000660

080043f8 <ADC_IRQHandler>:
 80043f8:	e7fe      	b.n	80043f8 <ADC_IRQHandler>
	...

080043fc <__udivmoddi4>:
 80043fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8004400:	9d08      	ldr	r5, [sp, #32]
 8004402:	460f      	mov	r7, r1
 8004404:	4604      	mov	r4, r0
 8004406:	468c      	mov	ip, r1
 8004408:	2b00      	cmp	r3, #0
 800440a:	d148      	bne.n	800449e <__udivmoddi4+0xa2>
 800440c:	428a      	cmp	r2, r1
 800440e:	4616      	mov	r6, r2
 8004410:	d961      	bls.n	80044d6 <__udivmoddi4+0xda>
 8004412:	fab2 f382 	clz	r3, r2
 8004416:	b14b      	cbz	r3, 800442c <__udivmoddi4+0x30>
 8004418:	f1c3 0220 	rsb	r2, r3, #32
 800441c:	fa01 fc03 	lsl.w	ip, r1, r3
 8004420:	fa20 f202 	lsr.w	r2, r0, r2
 8004424:	409e      	lsls	r6, r3
 8004426:	ea42 0c0c 	orr.w	ip, r2, ip
 800442a:	409c      	lsls	r4, r3
 800442c:	ea4f 4e16 	mov.w	lr, r6, lsr #16
 8004430:	b2b7      	uxth	r7, r6
 8004432:	fbbc f1fe 	udiv	r1, ip, lr
 8004436:	0c22      	lsrs	r2, r4, #16
 8004438:	fb0e cc11 	mls	ip, lr, r1, ip
 800443c:	ea42 420c 	orr.w	r2, r2, ip, lsl #16
 8004440:	fb01 f007 	mul.w	r0, r1, r7
 8004444:	4290      	cmp	r0, r2
 8004446:	d909      	bls.n	800445c <__udivmoddi4+0x60>
 8004448:	18b2      	adds	r2, r6, r2
 800444a:	f101 3cff 	add.w	ip, r1, #4294967295	@ 0xffffffff
 800444e:	f080 80ee 	bcs.w	800462e <__udivmoddi4+0x232>
 8004452:	4290      	cmp	r0, r2
 8004454:	f240 80eb 	bls.w	800462e <__udivmoddi4+0x232>
 8004458:	3902      	subs	r1, #2
 800445a:	4432      	add	r2, r6
 800445c:	1a12      	subs	r2, r2, r0
 800445e:	b2a4      	uxth	r4, r4
 8004460:	fbb2 f0fe 	udiv	r0, r2, lr
 8004464:	fb0e 2210 	mls	r2, lr, r0, r2
 8004468:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
 800446c:	fb00 f707 	mul.w	r7, r0, r7
 8004470:	42a7      	cmp	r7, r4
 8004472:	d909      	bls.n	8004488 <__udivmoddi4+0x8c>
 8004474:	1934      	adds	r4, r6, r4
 8004476:	f100 32ff 	add.w	r2, r0, #4294967295	@ 0xffffffff
 800447a:	f080 80da 	bcs.w	8004632 <__udivmoddi4+0x236>
 800447e:	42a7      	cmp	r7, r4
 8004480:	f240 80d7 	bls.w	8004632 <__udivmoddi4+0x236>
 8004484:	4434      	add	r4, r6
 8004486:	3802      	subs	r0, #2
 8004488:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
 800448c:	1be4      	subs	r4, r4, r7
 800448e:	2100      	movs	r1, #0
 8004490:	b11d      	cbz	r5, 800449a <__udivmoddi4+0x9e>
 8004492:	40dc      	lsrs	r4, r3
 8004494:	2300      	movs	r3, #0
 8004496:	e9c5 4300 	strd	r4, r3, [r5]
 800449a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800449e:	428b      	cmp	r3, r1
 80044a0:	d906      	bls.n	80044b0 <__udivmoddi4+0xb4>
 80044a2:	b10d      	cbz	r5, 80044a8 <__udivmoddi4+0xac>
 80044a4:	e9c5 0100 	strd	r0, r1, [r5]
 80044a8:	2100      	movs	r1, #0
 80044aa:	4608      	mov	r0, r1
 80044ac:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80044b0:	fab3 f183 	clz	r1, r3
 80044b4:	2900      	cmp	r1, #0
 80044b6:	d148      	bne.n	800454a <__udivmoddi4+0x14e>
 80044b8:	42bb      	cmp	r3, r7
 80044ba:	d302      	bcc.n	80044c2 <__udivmoddi4+0xc6>
 80044bc:	4282      	cmp	r2, r0
 80044be:	f200 8107 	bhi.w	80046d0 <__udivmoddi4+0x2d4>
 80044c2:	1a84      	subs	r4, r0, r2
 80044c4:	eb67 0203 	sbc.w	r2, r7, r3
 80044c8:	2001      	movs	r0, #1
 80044ca:	4694      	mov	ip, r2
 80044cc:	2d00      	cmp	r5, #0
 80044ce:	d0e4      	beq.n	800449a <__udivmoddi4+0x9e>
 80044d0:	e9c5 4c00 	strd	r4, ip, [r5]
 80044d4:	e7e1      	b.n	800449a <__udivmoddi4+0x9e>
 80044d6:	2a00      	cmp	r2, #0
 80044d8:	f000 8092 	beq.w	8004600 <__udivmoddi4+0x204>
 80044dc:	fab2 f382 	clz	r3, r2
 80044e0:	2b00      	cmp	r3, #0
 80044e2:	f040 80a8 	bne.w	8004636 <__udivmoddi4+0x23a>
 80044e6:	1a8a      	subs	r2, r1, r2
 80044e8:	ea4f 4e16 	mov.w	lr, r6, lsr #16
 80044ec:	fa1f fc86 	uxth.w	ip, r6
 80044f0:	2101      	movs	r1, #1
 80044f2:	0c20      	lsrs	r0, r4, #16
 80044f4:	fbb2 f7fe 	udiv	r7, r2, lr
 80044f8:	fb0e 2217 	mls	r2, lr, r7, r2
 80044fc:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
 8004500:	fb0c f007 	mul.w	r0, ip, r7
 8004504:	4290      	cmp	r0, r2
 8004506:	d907      	bls.n	8004518 <__udivmoddi4+0x11c>
 8004508:	18b2      	adds	r2, r6, r2
 800450a:	f107 38ff 	add.w	r8, r7, #4294967295	@ 0xffffffff
 800450e:	d202      	bcs.n	8004516 <__udivmoddi4+0x11a>
 8004510:	4290      	cmp	r0, r2
 8004512:	f200 80e2 	bhi.w	80046da <__udivmoddi4+0x2de>
 8004516:	4647      	mov	r7, r8
 8004518:	1a12      	subs	r2, r2, r0
 800451a:	b2a4      	uxth	r4, r4
 800451c:	fbb2 f0fe 	udiv	r0, r2, lr
 8004520:	fb0e 2210 	mls	r2, lr, r0, r2
 8004524:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
 8004528:	fb0c fc00 	mul.w	ip, ip, r0
 800452c:	45a4      	cmp	ip, r4
 800452e:	d907      	bls.n	8004540 <__udivmoddi4+0x144>
 8004530:	1934      	adds	r4, r6, r4
 8004532:	f100 32ff 	add.w	r2, r0, #4294967295	@ 0xffffffff
 8004536:	d202      	bcs.n	800453e <__udivmoddi4+0x142>
 8004538:	45a4      	cmp	ip, r4
 800453a:	f200 80cb 	bhi.w	80046d4 <__udivmoddi4+0x2d8>
 800453e:	4610      	mov	r0, r2
 8004540:	eba4 040c 	sub.w	r4, r4, ip
 8004544:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8004548:	e7a2      	b.n	8004490 <__udivmoddi4+0x94>
 800454a:	f1c1 0620 	rsb	r6, r1, #32
 800454e:	408b      	lsls	r3, r1
 8004550:	fa22 fc06 	lsr.w	ip, r2, r6
 8004554:	ea4c 0c03 	orr.w	ip, ip, r3
 8004558:	fa07 f401 	lsl.w	r4, r7, r1
 800455c:	fa20 f306 	lsr.w	r3, r0, r6
 8004560:	40f7      	lsrs	r7, r6
 8004562:	ea4f 491c 	mov.w	r9, ip, lsr #16
 8004566:	4323      	orrs	r3, r4
 8004568:	fa00 f801 	lsl.w	r8, r0, r1
 800456c:	fa1f fe8c 	uxth.w	lr, ip
 8004570:	fbb7 f0f9 	udiv	r0, r7, r9
 8004574:	0c1c      	lsrs	r4, r3, #16
 8004576:	fb09 7710 	mls	r7, r9, r0, r7
 800457a:	ea44 4407 	orr.w	r4, r4, r7, lsl #16
 800457e:	fb00 f70e 	mul.w	r7, r0, lr
 8004582:	42a7      	cmp	r7, r4
 8004584:	fa02 f201 	lsl.w	r2, r2, r1
 8004588:	d90a      	bls.n	80045a0 <__udivmoddi4+0x1a4>
 800458a:	eb1c 0404 	adds.w	r4, ip, r4
 800458e:	f100 3aff 	add.w	sl, r0, #4294967295	@ 0xffffffff
 8004592:	f080 809b 	bcs.w	80046cc <__udivmoddi4+0x2d0>
 8004596:	42a7      	cmp	r7, r4
 8004598:	f240 8098 	bls.w	80046cc <__udivmoddi4+0x2d0>
 800459c:	3802      	subs	r0, #2
 800459e:	4464      	add	r4, ip
 80045a0:	1be4      	subs	r4, r4, r7
 80045a2:	b29f      	uxth	r7, r3
 80045a4:	fbb4 f3f9 	udiv	r3, r4, r9
 80045a8:	fb09 4413 	mls	r4, r9, r3, r4
 80045ac:	ea47 4404 	orr.w	r4, r7, r4, lsl #16
 80045b0:	fb03 fe0e 	mul.w	lr, r3, lr
 80045b4:	45a6      	cmp	lr, r4
 80045b6:	d909      	bls.n	80045cc <__udivmoddi4+0x1d0>
 80045b8:	eb1c 0404 	adds.w	r4, ip, r4
 80045bc:	f103 37ff 	add.w	r7, r3, #4294967295	@ 0xffffffff
 80045c0:	f080 8082 	bcs.w	80046c8 <__udivmoddi4+0x2cc>
 80045c4:	45a6      	cmp	lr, r4
 80045c6:	d97f      	bls.n	80046c8 <__udivmoddi4+0x2cc>
 80045c8:	3b02      	subs	r3, #2
 80045ca:	4464      	add	r4, ip
 80045cc:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 80045d0:	eba4 040e 	sub.w	r4, r4, lr
 80045d4:	fba0 e702 	umull	lr, r7, r0, r2
 80045d8:	42bc      	cmp	r4, r7
 80045da:	4673      	mov	r3, lr
 80045dc:	46b9      	mov	r9, r7
 80045de:	d363      	bcc.n	80046a8 <__udivmoddi4+0x2ac>
 80045e0:	d060      	beq.n	80046a4 <__udivmoddi4+0x2a8>
 80045e2:	b15d      	cbz	r5, 80045fc <__udivmoddi4+0x200>
 80045e4:	ebb8 0203 	subs.w	r2, r8, r3
 80045e8:	eb64 0409 	sbc.w	r4, r4, r9
 80045ec:	fa04 f606 	lsl.w	r6, r4, r6
 80045f0:	fa22 f301 	lsr.w	r3, r2, r1
 80045f4:	431e      	orrs	r6, r3
 80045f6:	40cc      	lsrs	r4, r1
 80045f8:	e9c5 6400 	strd	r6, r4, [r5]
 80045fc:	2100      	movs	r1, #0
 80045fe:	e74c      	b.n	800449a <__udivmoddi4+0x9e>
 8004600:	0862      	lsrs	r2, r4, #1
 8004602:	0848      	lsrs	r0, r1, #1
 8004604:	ea42 71c1 	orr.w	r1, r2, r1, lsl #31
 8004608:	0c0b      	lsrs	r3, r1, #16
 800460a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800460e:	b28a      	uxth	r2, r1
 8004610:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004614:	fbb3 f1f6 	udiv	r1, r3, r6
 8004618:	07e4      	lsls	r4, r4, #31
 800461a:	46b4      	mov	ip, r6
 800461c:	4637      	mov	r7, r6
 800461e:	46b6      	mov	lr, r6
 8004620:	231f      	movs	r3, #31
 8004622:	fbb0 f0f6 	udiv	r0, r0, r6
 8004626:	1bd2      	subs	r2, r2, r7
 8004628:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
 800462c:	e761      	b.n	80044f2 <__udivmoddi4+0xf6>
 800462e:	4661      	mov	r1, ip
 8004630:	e714      	b.n	800445c <__udivmoddi4+0x60>
 8004632:	4610      	mov	r0, r2
 8004634:	e728      	b.n	8004488 <__udivmoddi4+0x8c>
 8004636:	f1c3 0120 	rsb	r1, r3, #32
 800463a:	fa20 f201 	lsr.w	r2, r0, r1
 800463e:	409e      	lsls	r6, r3
 8004640:	fa27 f101 	lsr.w	r1, r7, r1
 8004644:	409f      	lsls	r7, r3
 8004646:	433a      	orrs	r2, r7
 8004648:	ea4f 4e16 	mov.w	lr, r6, lsr #16
 800464c:	fa1f fc86 	uxth.w	ip, r6
 8004650:	fbb1 f7fe 	udiv	r7, r1, lr
 8004654:	fb0e 1017 	mls	r0, lr, r7, r1
 8004658:	0c11      	lsrs	r1, r2, #16
 800465a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
 800465e:	fb07 f80c 	mul.w	r8, r7, ip
 8004662:	4588      	cmp	r8, r1
 8004664:	fa04 f403 	lsl.w	r4, r4, r3
 8004668:	d93a      	bls.n	80046e0 <__udivmoddi4+0x2e4>
 800466a:	1871      	adds	r1, r6, r1
 800466c:	f107 30ff 	add.w	r0, r7, #4294967295	@ 0xffffffff
 8004670:	d201      	bcs.n	8004676 <__udivmoddi4+0x27a>
 8004672:	4588      	cmp	r8, r1
 8004674:	d81f      	bhi.n	80046b6 <__udivmoddi4+0x2ba>
 8004676:	eba1 0108 	sub.w	r1, r1, r8
 800467a:	fbb1 f8fe 	udiv	r8, r1, lr
 800467e:	fb08 f70c 	mul.w	r7, r8, ip
 8004682:	fb0e 1118 	mls	r1, lr, r8, r1
 8004686:	b292      	uxth	r2, r2
 8004688:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 800468c:	42ba      	cmp	r2, r7
 800468e:	d22f      	bcs.n	80046f0 <__udivmoddi4+0x2f4>
 8004690:	18b2      	adds	r2, r6, r2
 8004692:	f108 31ff 	add.w	r1, r8, #4294967295	@ 0xffffffff
 8004696:	d2c6      	bcs.n	8004626 <__udivmoddi4+0x22a>
 8004698:	42ba      	cmp	r2, r7
 800469a:	d2c4      	bcs.n	8004626 <__udivmoddi4+0x22a>
 800469c:	f1a8 0102 	sub.w	r1, r8, #2
 80046a0:	4432      	add	r2, r6
 80046a2:	e7c0      	b.n	8004626 <__udivmoddi4+0x22a>
 80046a4:	45f0      	cmp	r8, lr
 80046a6:	d29c      	bcs.n	80045e2 <__udivmoddi4+0x1e6>
 80046a8:	ebbe 0302 	subs.w	r3, lr, r2
 80046ac:	eb67 070c 	sbc.w	r7, r7, ip
 80046b0:	3801      	subs	r0, #1
 80046b2:	46b9      	mov	r9, r7
 80046b4:	e795      	b.n	80045e2 <__udivmoddi4+0x1e6>
 80046b6:	eba6 0808 	sub.w	r8, r6, r8
 80046ba:	4441      	add	r1, r8
 80046bc:	1eb8      	subs	r0, r7, #2
 80046be:	fbb1 f8fe 	udiv	r8, r1, lr
 80046c2:	fb08 f70c 	mul.w	r7, r8, ip
 80046c6:	e7dc      	b.n	8004682 <__udivmoddi4+0x286>
 80046c8:	463b      	mov	r3, r7
 80046ca:	e77f      	b.n	80045cc <__udivmoddi4+0x1d0>
 80046cc:	4650      	mov	r0, sl
 80046ce:	e767      	b.n	80045a0 <__udivmoddi4+0x1a4>
 80046d0:	4608      	mov	r0, r1
 80046d2:	e6fb      	b.n	80044cc <__udivmoddi4+0xd0>
 80046d4:	4434      	add	r4, r6
 80046d6:	3802      	subs	r0, #2
 80046d8:	e732      	b.n	8004540 <__udivmoddi4+0x144>
 80046da:	3f02      	subs	r7, #2
 80046dc:	4432      	add	r2, r6
 80046de:	e71b      	b.n	8004518 <__udivmoddi4+0x11c>
 80046e0:	eba1 0108 	sub.w	r1, r1, r8
 80046e4:	4638      	mov	r0, r7
 80046e6:	fbb1 f8fe 	udiv	r8, r1, lr
 80046ea:	fb08 f70c 	mul.w	r7, r8, ip
 80046ee:	e7c8      	b.n	8004682 <__udivmoddi4+0x286>
 80046f0:	4641      	mov	r1, r8
 80046f2:	e798      	b.n	8004626 <__udivmoddi4+0x22a>

080046f4 <_puts_r>:
 80046f4:	6a03      	ldr	r3, [r0, #32]
 80046f6:	b570      	push	{r4, r5, r6, lr}
 80046f8:	6884      	ldr	r4, [r0, #8]
 80046fa:	4605      	mov	r5, r0
 80046fc:	460e      	mov	r6, r1
 80046fe:	b90b      	cbnz	r3, 8004704 <_puts_r+0x10>
 8004700:	f7fb fe30 	bl	8000364 <__sinit>
 8004704:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 8004706:	07db      	lsls	r3, r3, #31
 8004708:	d405      	bmi.n	8004716 <_puts_r+0x22>
 800470a:	89a3      	ldrh	r3, [r4, #12]
 800470c:	0598      	lsls	r0, r3, #22
 800470e:	d402      	bmi.n	8004716 <_puts_r+0x22>
 8004710:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8004712:	f7fb ff14 	bl	800053e <__retarget_lock_acquire_recursive>
 8004716:	89a3      	ldrh	r3, [r4, #12]
 8004718:	0719      	lsls	r1, r3, #28
 800471a:	d502      	bpl.n	8004722 <_puts_r+0x2e>
 800471c:	6923      	ldr	r3, [r4, #16]
 800471e:	2b00      	cmp	r3, #0
 8004720:	d135      	bne.n	800478e <_puts_r+0x9a>
 8004722:	4621      	mov	r1, r4
 8004724:	4628      	mov	r0, r5
 8004726:	f000 f881 	bl	800482c <__swsetup_r>
 800472a:	b380      	cbz	r0, 800478e <_puts_r+0x9a>
 800472c:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
 8004730:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 8004732:	07da      	lsls	r2, r3, #31
 8004734:	d405      	bmi.n	8004742 <_puts_r+0x4e>
 8004736:	89a3      	ldrh	r3, [r4, #12]
 8004738:	059b      	lsls	r3, r3, #22
 800473a:	d402      	bmi.n	8004742 <_puts_r+0x4e>
 800473c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 800473e:	f7fb feff 	bl	8000540 <__retarget_lock_release_recursive>
 8004742:	4628      	mov	r0, r5
 8004744:	bd70      	pop	{r4, r5, r6, pc}
 8004746:	2b00      	cmp	r3, #0
 8004748:	da04      	bge.n	8004754 <_puts_r+0x60>
 800474a:	69a2      	ldr	r2, [r4, #24]
 800474c:	4293      	cmp	r3, r2
 800474e:	db17      	blt.n	8004780 <_puts_r+0x8c>
 8004750:	290a      	cmp	r1, #10
 8004752:	d015      	beq.n	8004780 <_puts_r+0x8c>
 8004754:	6823      	ldr	r3, [r4, #0]
 8004756:	1c5a      	adds	r2, r3, #1
 8004758:	6022      	str	r2, [r4, #0]
 800475a:	7019      	strb	r1, [r3, #0]
 800475c:	68a3      	ldr	r3, [r4, #8]
 800475e:	f816 1f01 	ldrb.w	r1, [r6, #1]!
 8004762:	3b01      	subs	r3, #1
 8004764:	60a3      	str	r3, [r4, #8]
 8004766:	2900      	cmp	r1, #0
 8004768:	d1ed      	bne.n	8004746 <_puts_r+0x52>
 800476a:	2b00      	cmp	r3, #0
 800476c:	da11      	bge.n	8004792 <_puts_r+0x9e>
 800476e:	4622      	mov	r2, r4
 8004770:	210a      	movs	r1, #10
 8004772:	4628      	mov	r0, r5
 8004774:	f000 f81c 	bl	80047b0 <__swbuf_r>
 8004778:	3001      	adds	r0, #1
 800477a:	d0d7      	beq.n	800472c <_puts_r+0x38>
 800477c:	250a      	movs	r5, #10
 800477e:	e7d7      	b.n	8004730 <_puts_r+0x3c>
 8004780:	4622      	mov	r2, r4
 8004782:	4628      	mov	r0, r5
 8004784:	f000 f814 	bl	80047b0 <__swbuf_r>
 8004788:	3001      	adds	r0, #1
 800478a:	d1e7      	bne.n	800475c <_puts_r+0x68>
 800478c:	e7ce      	b.n	800472c <_puts_r+0x38>
 800478e:	3e01      	subs	r6, #1
 8004790:	e7e4      	b.n	800475c <_puts_r+0x68>
 8004792:	6823      	ldr	r3, [r4, #0]
 8004794:	1c5a      	adds	r2, r3, #1
 8004796:	6022      	str	r2, [r4, #0]
 8004798:	220a      	movs	r2, #10
 800479a:	701a      	strb	r2, [r3, #0]
 800479c:	e7ee      	b.n	800477c <_puts_r+0x88>
	...

080047a0 <puts>:
 80047a0:	4b02      	ldr	r3, [pc, #8]	@ (80047ac <puts+0xc>)
 80047a2:	4601      	mov	r1, r0
 80047a4:	6818      	ldr	r0, [r3, #0]
 80047a6:	f7ff bfa5 	b.w	80046f4 <_puts_r>
 80047aa:	bf00      	nop
 80047ac:	2000000c 	.word	0x2000000c

080047b0 <__swbuf_r>:
 80047b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80047b2:	460e      	mov	r6, r1
 80047b4:	4614      	mov	r4, r2
 80047b6:	4605      	mov	r5, r0
 80047b8:	b118      	cbz	r0, 80047c2 <__swbuf_r+0x12>
 80047ba:	6a03      	ldr	r3, [r0, #32]
 80047bc:	b90b      	cbnz	r3, 80047c2 <__swbuf_r+0x12>
 80047be:	f7fb fdd1 	bl	8000364 <__sinit>
 80047c2:	69a3      	ldr	r3, [r4, #24]
 80047c4:	60a3      	str	r3, [r4, #8]
 80047c6:	89a3      	ldrh	r3, [r4, #12]
 80047c8:	071a      	lsls	r2, r3, #28
 80047ca:	d501      	bpl.n	80047d0 <__swbuf_r+0x20>
 80047cc:	6923      	ldr	r3, [r4, #16]
 80047ce:	b943      	cbnz	r3, 80047e2 <__swbuf_r+0x32>
 80047d0:	4621      	mov	r1, r4
 80047d2:	4628      	mov	r0, r5
 80047d4:	f000 f82a 	bl	800482c <__swsetup_r>
 80047d8:	b118      	cbz	r0, 80047e2 <__swbuf_r+0x32>
 80047da:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
 80047de:	4638      	mov	r0, r7
 80047e0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80047e2:	6823      	ldr	r3, [r4, #0]
 80047e4:	6922      	ldr	r2, [r4, #16]
 80047e6:	1a98      	subs	r0, r3, r2
 80047e8:	6963      	ldr	r3, [r4, #20]
 80047ea:	b2f6      	uxtb	r6, r6
 80047ec:	4283      	cmp	r3, r0
 80047ee:	4637      	mov	r7, r6
 80047f0:	dc05      	bgt.n	80047fe <__swbuf_r+0x4e>
 80047f2:	4621      	mov	r1, r4
 80047f4:	4628      	mov	r0, r5
 80047f6:	f7fc f81f 	bl	8000838 <_fflush_r>
 80047fa:	2800      	cmp	r0, #0
 80047fc:	d1ed      	bne.n	80047da <__swbuf_r+0x2a>
 80047fe:	68a3      	ldr	r3, [r4, #8]
 8004800:	3b01      	subs	r3, #1
 8004802:	60a3      	str	r3, [r4, #8]
 8004804:	6823      	ldr	r3, [r4, #0]
 8004806:	1c5a      	adds	r2, r3, #1
 8004808:	6022      	str	r2, [r4, #0]
 800480a:	701e      	strb	r6, [r3, #0]
 800480c:	6962      	ldr	r2, [r4, #20]
 800480e:	1c43      	adds	r3, r0, #1
 8004810:	429a      	cmp	r2, r3
 8004812:	d004      	beq.n	800481e <__swbuf_r+0x6e>
 8004814:	89a3      	ldrh	r3, [r4, #12]
 8004816:	07db      	lsls	r3, r3, #31
 8004818:	d5e1      	bpl.n	80047de <__swbuf_r+0x2e>
 800481a:	2e0a      	cmp	r6, #10
 800481c:	d1df      	bne.n	80047de <__swbuf_r+0x2e>
 800481e:	4621      	mov	r1, r4
 8004820:	4628      	mov	r0, r5
 8004822:	f7fc f809 	bl	8000838 <_fflush_r>
 8004826:	2800      	cmp	r0, #0
 8004828:	d0d9      	beq.n	80047de <__swbuf_r+0x2e>
 800482a:	e7d6      	b.n	80047da <__swbuf_r+0x2a>

0800482c <__swsetup_r>:
 800482c:	b538      	push	{r3, r4, r5, lr}
 800482e:	4b28      	ldr	r3, [pc, #160]	@ (80048d0 <__swsetup_r+0xa4>)
 8004830:	4605      	mov	r5, r0
 8004832:	6818      	ldr	r0, [r3, #0]
 8004834:	460c      	mov	r4, r1
 8004836:	b118      	cbz	r0, 8004840 <__swsetup_r+0x14>
 8004838:	6a03      	ldr	r3, [r0, #32]
 800483a:	b90b      	cbnz	r3, 8004840 <__swsetup_r+0x14>
 800483c:	f7fb fd92 	bl	8000364 <__sinit>
 8004840:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004844:	071a      	lsls	r2, r3, #28
 8004846:	d421      	bmi.n	800488c <__swsetup_r+0x60>
 8004848:	06d8      	lsls	r0, r3, #27
 800484a:	d407      	bmi.n	800485c <__swsetup_r+0x30>
 800484c:	2209      	movs	r2, #9
 800484e:	602a      	str	r2, [r5, #0]
 8004850:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8004854:	81a3      	strh	r3, [r4, #12]
 8004856:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 800485a:	e030      	b.n	80048be <__swsetup_r+0x92>
 800485c:	0759      	lsls	r1, r3, #29
 800485e:	d512      	bpl.n	8004886 <__swsetup_r+0x5a>
 8004860:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 8004862:	b141      	cbz	r1, 8004876 <__swsetup_r+0x4a>
 8004864:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 8004868:	4299      	cmp	r1, r3
 800486a:	d002      	beq.n	8004872 <__swsetup_r+0x46>
 800486c:	4628      	mov	r0, r5
 800486e:	f7fb fe69 	bl	8000544 <_free_r>
 8004872:	2300      	movs	r3, #0
 8004874:	6363      	str	r3, [r4, #52]	@ 0x34
 8004876:	2200      	movs	r2, #0
 8004878:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800487c:	6062      	str	r2, [r4, #4]
 800487e:	6922      	ldr	r2, [r4, #16]
 8004880:	6022      	str	r2, [r4, #0]
 8004882:	f023 0324 	bic.w	r3, r3, #36	@ 0x24
 8004886:	f043 0308 	orr.w	r3, r3, #8
 800488a:	81a3      	strh	r3, [r4, #12]
 800488c:	6922      	ldr	r2, [r4, #16]
 800488e:	b93a      	cbnz	r2, 80048a0 <__swsetup_r+0x74>
 8004890:	059a      	lsls	r2, r3, #22
 8004892:	d501      	bpl.n	8004898 <__swsetup_r+0x6c>
 8004894:	0618      	lsls	r0, r3, #24
 8004896:	d503      	bpl.n	80048a0 <__swsetup_r+0x74>
 8004898:	4621      	mov	r1, r4
 800489a:	4628      	mov	r0, r5
 800489c:	f000 f844 	bl	8004928 <__smakebuf_r>
 80048a0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80048a4:	f013 0201 	ands.w	r2, r3, #1
 80048a8:	d00a      	beq.n	80048c0 <__swsetup_r+0x94>
 80048aa:	2200      	movs	r2, #0
 80048ac:	60a2      	str	r2, [r4, #8]
 80048ae:	6962      	ldr	r2, [r4, #20]
 80048b0:	4252      	negs	r2, r2
 80048b2:	61a2      	str	r2, [r4, #24]
 80048b4:	6922      	ldr	r2, [r4, #16]
 80048b6:	b942      	cbnz	r2, 80048ca <__swsetup_r+0x9e>
 80048b8:	f013 0080 	ands.w	r0, r3, #128	@ 0x80
 80048bc:	d1c8      	bne.n	8004850 <__swsetup_r+0x24>
 80048be:	bd38      	pop	{r3, r4, r5, pc}
 80048c0:	0799      	lsls	r1, r3, #30
 80048c2:	bf58      	it	pl
 80048c4:	6962      	ldrpl	r2, [r4, #20]
 80048c6:	60a2      	str	r2, [r4, #8]
 80048c8:	e7f4      	b.n	80048b4 <__swsetup_r+0x88>
 80048ca:	2000      	movs	r0, #0
 80048cc:	e7f7      	b.n	80048be <__swsetup_r+0x92>
 80048ce:	bf00      	nop
 80048d0:	2000000c 	.word	0x2000000c

080048d4 <__errno>:
 80048d4:	4b01      	ldr	r3, [pc, #4]	@ (80048dc <__errno+0x8>)
 80048d6:	6818      	ldr	r0, [r3, #0]
 80048d8:	4770      	bx	lr
 80048da:	bf00      	nop
 80048dc:	2000000c 	.word	0x2000000c

080048e0 <__swhatbuf_r>:
 80048e0:	b570      	push	{r4, r5, r6, lr}
 80048e2:	460c      	mov	r4, r1
 80048e4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80048e8:	2900      	cmp	r1, #0
 80048ea:	b096      	sub	sp, #88	@ 0x58
 80048ec:	4615      	mov	r5, r2
 80048ee:	461e      	mov	r6, r3
 80048f0:	da0a      	bge.n	8004908 <__swhatbuf_r+0x28>
 80048f2:	89a1      	ldrh	r1, [r4, #12]
 80048f4:	f011 0180 	ands.w	r1, r1, #128	@ 0x80
 80048f8:	d113      	bne.n	8004922 <__swhatbuf_r+0x42>
 80048fa:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 80048fe:	2000      	movs	r0, #0
 8004900:	6031      	str	r1, [r6, #0]
 8004902:	602a      	str	r2, [r5, #0]
 8004904:	b016      	add	sp, #88	@ 0x58
 8004906:	bd70      	pop	{r4, r5, r6, pc}
 8004908:	466a      	mov	r2, sp
 800490a:	f000 f847 	bl	800499c <_fstat_r>
 800490e:	2800      	cmp	r0, #0
 8004910:	dbef      	blt.n	80048f2 <__swhatbuf_r+0x12>
 8004912:	9901      	ldr	r1, [sp, #4]
 8004914:	f401 4170 	and.w	r1, r1, #61440	@ 0xf000
 8004918:	f5a1 5300 	sub.w	r3, r1, #8192	@ 0x2000
 800491c:	4259      	negs	r1, r3
 800491e:	4159      	adcs	r1, r3
 8004920:	e7eb      	b.n	80048fa <__swhatbuf_r+0x1a>
 8004922:	2100      	movs	r1, #0
 8004924:	2240      	movs	r2, #64	@ 0x40
 8004926:	e7ea      	b.n	80048fe <__swhatbuf_r+0x1e>

08004928 <__smakebuf_r>:
 8004928:	898b      	ldrh	r3, [r1, #12]
 800492a:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800492c:	079e      	lsls	r6, r3, #30
 800492e:	4605      	mov	r5, r0
 8004930:	460c      	mov	r4, r1
 8004932:	d507      	bpl.n	8004944 <__smakebuf_r+0x1c>
 8004934:	f104 0347 	add.w	r3, r4, #71	@ 0x47
 8004938:	6023      	str	r3, [r4, #0]
 800493a:	6123      	str	r3, [r4, #16]
 800493c:	2301      	movs	r3, #1
 800493e:	6163      	str	r3, [r4, #20]
 8004940:	b002      	add	sp, #8
 8004942:	bd70      	pop	{r4, r5, r6, pc}
 8004944:	ab01      	add	r3, sp, #4
 8004946:	466a      	mov	r2, sp
 8004948:	f7ff ffca 	bl	80048e0 <__swhatbuf_r>
 800494c:	9e00      	ldr	r6, [sp, #0]
 800494e:	4628      	mov	r0, r5
 8004950:	4631      	mov	r1, r6
 8004952:	f7fb fe63 	bl	800061c <_malloc_r>
 8004956:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800495a:	b938      	cbnz	r0, 800496c <__smakebuf_r+0x44>
 800495c:	059a      	lsls	r2, r3, #22
 800495e:	d4ef      	bmi.n	8004940 <__smakebuf_r+0x18>
 8004960:	f023 0303 	bic.w	r3, r3, #3
 8004964:	f043 0302 	orr.w	r3, r3, #2
 8004968:	81a3      	strh	r3, [r4, #12]
 800496a:	e7e3      	b.n	8004934 <__smakebuf_r+0xc>
 800496c:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8004970:	81a3      	strh	r3, [r4, #12]
 8004972:	9b01      	ldr	r3, [sp, #4]
 8004974:	6020      	str	r0, [r4, #0]
 8004976:	e9c4 0604 	strd	r0, r6, [r4, #16]
 800497a:	2b00      	cmp	r3, #0
 800497c:	d0e0      	beq.n	8004940 <__smakebuf_r+0x18>
 800497e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8004982:	4628      	mov	r0, r5
 8004984:	f000 f81c 	bl	80049c0 <_isatty_r>
 8004988:	2800      	cmp	r0, #0
 800498a:	d0d9      	beq.n	8004940 <__smakebuf_r+0x18>
 800498c:	89a3      	ldrh	r3, [r4, #12]
 800498e:	f023 0303 	bic.w	r3, r3, #3
 8004992:	f043 0301 	orr.w	r3, r3, #1
 8004996:	81a3      	strh	r3, [r4, #12]
 8004998:	e7d2      	b.n	8004940 <__smakebuf_r+0x18>
	...

0800499c <_fstat_r>:
 800499c:	b538      	push	{r3, r4, r5, lr}
 800499e:	4d07      	ldr	r5, [pc, #28]	@ (80049bc <_fstat_r+0x20>)
 80049a0:	2300      	movs	r3, #0
 80049a2:	4604      	mov	r4, r0
 80049a4:	4608      	mov	r0, r1
 80049a6:	4611      	mov	r1, r2
 80049a8:	602b      	str	r3, [r5, #0]
 80049aa:	f7fc f9d8 	bl	8000d5e <_fstat>
 80049ae:	1c43      	adds	r3, r0, #1
 80049b0:	d102      	bne.n	80049b8 <_fstat_r+0x1c>
 80049b2:	682b      	ldr	r3, [r5, #0]
 80049b4:	b103      	cbz	r3, 80049b8 <_fstat_r+0x1c>
 80049b6:	6023      	str	r3, [r4, #0]
 80049b8:	bd38      	pop	{r3, r4, r5, pc}
 80049ba:	bf00      	nop
 80049bc:	200001c0 	.word	0x200001c0

080049c0 <_isatty_r>:
 80049c0:	b538      	push	{r3, r4, r5, lr}
 80049c2:	4d06      	ldr	r5, [pc, #24]	@ (80049dc <_isatty_r+0x1c>)
 80049c4:	2300      	movs	r3, #0
 80049c6:	4604      	mov	r4, r0
 80049c8:	4608      	mov	r0, r1
 80049ca:	602b      	str	r3, [r5, #0]
 80049cc:	f7fc f9d7 	bl	8000d7e <_isatty>
 80049d0:	1c43      	adds	r3, r0, #1
 80049d2:	d102      	bne.n	80049da <_isatty_r+0x1a>
 80049d4:	682b      	ldr	r3, [r5, #0]
 80049d6:	b103      	cbz	r3, 80049da <_isatty_r+0x1a>
 80049d8:	6023      	str	r3, [r4, #0]
 80049da:	bd38      	pop	{r3, r4, r5, pc}
 80049dc:	200001c0 	.word	0x200001c0

080049e0 <_init>:
 80049e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80049e2:	bf00      	nop
 80049e4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80049e6:	bc08      	pop	{r3}
 80049e8:	469e      	mov	lr, r3
 80049ea:	4770      	bx	lr

080049ec <_fini>:
 80049ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80049ee:	bf00      	nop
 80049f0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80049f2:	bc08      	pop	{r3}
 80049f4:	469e      	mov	lr, r3
 80049f6:	4770      	bx	lr
