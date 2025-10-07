
/home/araujoj20/Documents/GitHub/Framework/Test/st/test1/build/test1.elf:     file format elf32-littlearm


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
 80001a8:	f003 fba6 	bl	80038f8 <__udivmoddi4>
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
 8000220:	08003eac 	.word	0x08003eac

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
 8000244:	08003eac 	.word	0x08003eac

08000248 <__libc_init_array>:
 8000248:	b570      	push	{r4, r5, r6, lr}
 800024a:	4d0d      	ldr	r5, [pc, #52]	@ (8000280 <__libc_init_array+0x38>)
 800024c:	4c0d      	ldr	r4, [pc, #52]	@ (8000284 <__libc_init_array+0x3c>)
 800024e:	1b64      	subs	r4, r4, r5
 8000250:	10a4      	asrs	r4, r4, #2
 8000252:	2600      	movs	r6, #0
 8000254:	42a6      	cmp	r6, r4
 8000256:	d109      	bne.n	800026c <__libc_init_array+0x24>
 8000258:	4d0b      	ldr	r5, [pc, #44]	@ (8000288 <__libc_init_array+0x40>)
 800025a:	4c0c      	ldr	r4, [pc, #48]	@ (800028c <__libc_init_array+0x44>)
 800025c:	f003 fe26 	bl	8003eac <_init>
 8000260:	1b64      	subs	r4, r4, r5
 8000262:	10a4      	asrs	r4, r4, #2
 8000264:	2600      	movs	r6, #0
 8000266:	42a6      	cmp	r6, r4
 8000268:	d105      	bne.n	8000276 <__libc_init_array+0x2e>
 800026a:	bd70      	pop	{r4, r5, r6, pc}
 800026c:	f855 3b04 	ldr.w	r3, [r5], #4
 8000270:	4798      	blx	r3
 8000272:	3601      	adds	r6, #1
 8000274:	e7ee      	b.n	8000254 <__libc_init_array+0xc>
 8000276:	f855 3b04 	ldr.w	r3, [r5], #4
 800027a:	4798      	blx	r3
 800027c:	3601      	adds	r6, #1
 800027e:	e7f2      	b.n	8000266 <__libc_init_array+0x1e>
 8000280:	08003efc 	.word	0x08003efc
 8000284:	08003efc 	.word	0x08003efc
 8000288:	08003efc 	.word	0x08003efc
 800028c:	08003f00 	.word	0x08003f00

08000290 <std>:
 8000290:	2300      	movs	r3, #0
 8000292:	b510      	push	{r4, lr}
 8000294:	4604      	mov	r4, r0
 8000296:	e9c0 3300 	strd	r3, r3, [r0]
 800029a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800029e:	6083      	str	r3, [r0, #8]
 80002a0:	8181      	strh	r1, [r0, #12]
 80002a2:	6643      	str	r3, [r0, #100]	@ 0x64
 80002a4:	81c2      	strh	r2, [r0, #14]
 80002a6:	6183      	str	r3, [r0, #24]
 80002a8:	4619      	mov	r1, r3
 80002aa:	2208      	movs	r2, #8
 80002ac:	305c      	adds	r0, #92	@ 0x5c
 80002ae:	f000 f907 	bl	80004c0 <memset>
 80002b2:	4b0d      	ldr	r3, [pc, #52]	@ (80002e8 <std+0x58>)
 80002b4:	6263      	str	r3, [r4, #36]	@ 0x24
 80002b6:	4b0d      	ldr	r3, [pc, #52]	@ (80002ec <std+0x5c>)
 80002b8:	62a3      	str	r3, [r4, #40]	@ 0x28
 80002ba:	4b0d      	ldr	r3, [pc, #52]	@ (80002f0 <std+0x60>)
 80002bc:	62e3      	str	r3, [r4, #44]	@ 0x2c
 80002be:	4b0d      	ldr	r3, [pc, #52]	@ (80002f4 <std+0x64>)
 80002c0:	6323      	str	r3, [r4, #48]	@ 0x30
 80002c2:	4b0d      	ldr	r3, [pc, #52]	@ (80002f8 <std+0x68>)
 80002c4:	6224      	str	r4, [r4, #32]
 80002c6:	429c      	cmp	r4, r3
 80002c8:	d006      	beq.n	80002d8 <std+0x48>
 80002ca:	f103 0268 	add.w	r2, r3, #104	@ 0x68
 80002ce:	4294      	cmp	r4, r2
 80002d0:	d002      	beq.n	80002d8 <std+0x48>
 80002d2:	33d0      	adds	r3, #208	@ 0xd0
 80002d4:	429c      	cmp	r4, r3
 80002d6:	d105      	bne.n	80002e4 <std+0x54>
 80002d8:	f104 0058 	add.w	r0, r4, #88	@ 0x58
 80002dc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80002e0:	f000 b8f6 	b.w	80004d0 <__retarget_lock_init_recursive>
 80002e4:	bd10      	pop	{r4, pc}
 80002e6:	bf00      	nop
 80002e8:	080003d9 	.word	0x080003d9
 80002ec:	080003fb 	.word	0x080003fb
 80002f0:	08000433 	.word	0x08000433
 80002f4:	08000457 	.word	0x08000457
 80002f8:	20000084 	.word	0x20000084

080002fc <stdio_exit_handler>:
 80002fc:	4a02      	ldr	r2, [pc, #8]	@ (8000308 <stdio_exit_handler+0xc>)
 80002fe:	4903      	ldr	r1, [pc, #12]	@ (800030c <stdio_exit_handler+0x10>)
 8000300:	4803      	ldr	r0, [pc, #12]	@ (8000310 <stdio_exit_handler+0x14>)
 8000302:	f000 b8bf 	b.w	8000484 <_fwalk_sglue>
 8000306:	bf00      	nop
 8000308:	20000000 	.word	0x20000000
 800030c:	08000601 	.word	0x08000601
 8000310:	20000010 	.word	0x20000010

08000314 <cleanup_stdio>:
 8000314:	6841      	ldr	r1, [r0, #4]
 8000316:	4b0c      	ldr	r3, [pc, #48]	@ (8000348 <cleanup_stdio+0x34>)
 8000318:	4299      	cmp	r1, r3
 800031a:	b510      	push	{r4, lr}
 800031c:	4604      	mov	r4, r0
 800031e:	d001      	beq.n	8000324 <cleanup_stdio+0x10>
 8000320:	f000 f96e 	bl	8000600 <_fflush_r>
 8000324:	68a1      	ldr	r1, [r4, #8]
 8000326:	4b09      	ldr	r3, [pc, #36]	@ (800034c <cleanup_stdio+0x38>)
 8000328:	4299      	cmp	r1, r3
 800032a:	d002      	beq.n	8000332 <cleanup_stdio+0x1e>
 800032c:	4620      	mov	r0, r4
 800032e:	f000 f967 	bl	8000600 <_fflush_r>
 8000332:	68e1      	ldr	r1, [r4, #12]
 8000334:	4b06      	ldr	r3, [pc, #24]	@ (8000350 <cleanup_stdio+0x3c>)
 8000336:	4299      	cmp	r1, r3
 8000338:	d004      	beq.n	8000344 <cleanup_stdio+0x30>
 800033a:	4620      	mov	r0, r4
 800033c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000340:	f000 b95e 	b.w	8000600 <_fflush_r>
 8000344:	bd10      	pop	{r4, pc}
 8000346:	bf00      	nop
 8000348:	20000084 	.word	0x20000084
 800034c:	200000ec 	.word	0x200000ec
 8000350:	20000154 	.word	0x20000154

08000354 <global_stdio_init.part.0>:
 8000354:	b510      	push	{r4, lr}
 8000356:	4b0b      	ldr	r3, [pc, #44]	@ (8000384 <global_stdio_init.part.0+0x30>)
 8000358:	4c0b      	ldr	r4, [pc, #44]	@ (8000388 <global_stdio_init.part.0+0x34>)
 800035a:	4a0c      	ldr	r2, [pc, #48]	@ (800038c <global_stdio_init.part.0+0x38>)
 800035c:	601a      	str	r2, [r3, #0]
 800035e:	4620      	mov	r0, r4
 8000360:	2200      	movs	r2, #0
 8000362:	2104      	movs	r1, #4
 8000364:	f7ff ff94 	bl	8000290 <std>
 8000368:	f104 0068 	add.w	r0, r4, #104	@ 0x68
 800036c:	2201      	movs	r2, #1
 800036e:	2109      	movs	r1, #9
 8000370:	f7ff ff8e 	bl	8000290 <std>
 8000374:	f104 00d0 	add.w	r0, r4, #208	@ 0xd0
 8000378:	2202      	movs	r2, #2
 800037a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800037e:	2112      	movs	r1, #18
 8000380:	f7ff bf86 	b.w	8000290 <std>
 8000384:	200001bc 	.word	0x200001bc
 8000388:	20000084 	.word	0x20000084
 800038c:	080002fd 	.word	0x080002fd

08000390 <__sfp_lock_acquire>:
 8000390:	4801      	ldr	r0, [pc, #4]	@ (8000398 <__sfp_lock_acquire+0x8>)
 8000392:	f000 b89e 	b.w	80004d2 <__retarget_lock_acquire_recursive>
 8000396:	bf00      	nop
 8000398:	200001c1 	.word	0x200001c1

0800039c <__sfp_lock_release>:
 800039c:	4801      	ldr	r0, [pc, #4]	@ (80003a4 <__sfp_lock_release+0x8>)
 800039e:	f000 b899 	b.w	80004d4 <__retarget_lock_release_recursive>
 80003a2:	bf00      	nop
 80003a4:	200001c1 	.word	0x200001c1

080003a8 <__sinit>:
 80003a8:	b510      	push	{r4, lr}
 80003aa:	4604      	mov	r4, r0
 80003ac:	f7ff fff0 	bl	8000390 <__sfp_lock_acquire>
 80003b0:	6a23      	ldr	r3, [r4, #32]
 80003b2:	b11b      	cbz	r3, 80003bc <__sinit+0x14>
 80003b4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80003b8:	f7ff bff0 	b.w	800039c <__sfp_lock_release>
 80003bc:	4b04      	ldr	r3, [pc, #16]	@ (80003d0 <__sinit+0x28>)
 80003be:	6223      	str	r3, [r4, #32]
 80003c0:	4b04      	ldr	r3, [pc, #16]	@ (80003d4 <__sinit+0x2c>)
 80003c2:	681b      	ldr	r3, [r3, #0]
 80003c4:	2b00      	cmp	r3, #0
 80003c6:	d1f5      	bne.n	80003b4 <__sinit+0xc>
 80003c8:	f7ff ffc4 	bl	8000354 <global_stdio_init.part.0>
 80003cc:	e7f2      	b.n	80003b4 <__sinit+0xc>
 80003ce:	bf00      	nop
 80003d0:	08000315 	.word	0x08000315
 80003d4:	200001bc 	.word	0x200001bc

080003d8 <__sread>:
 80003d8:	b510      	push	{r4, lr}
 80003da:	460c      	mov	r4, r1
 80003dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80003e0:	f000 f9ea 	bl	80007b8 <_read_r>
 80003e4:	2800      	cmp	r0, #0
 80003e6:	bfab      	itete	ge
 80003e8:	6d63      	ldrge	r3, [r4, #84]	@ 0x54
 80003ea:	89a3      	ldrhlt	r3, [r4, #12]
 80003ec:	181b      	addge	r3, r3, r0
 80003ee:	f423 5380 	biclt.w	r3, r3, #4096	@ 0x1000
 80003f2:	bfac      	ite	ge
 80003f4:	6563      	strge	r3, [r4, #84]	@ 0x54
 80003f6:	81a3      	strhlt	r3, [r4, #12]
 80003f8:	bd10      	pop	{r4, pc}

080003fa <__swrite>:
 80003fa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80003fe:	461f      	mov	r7, r3
 8000400:	898b      	ldrh	r3, [r1, #12]
 8000402:	05db      	lsls	r3, r3, #23
 8000404:	4605      	mov	r5, r0
 8000406:	460c      	mov	r4, r1
 8000408:	4616      	mov	r6, r2
 800040a:	d505      	bpl.n	8000418 <__swrite+0x1e>
 800040c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8000410:	2302      	movs	r3, #2
 8000412:	2200      	movs	r2, #0
 8000414:	f000 f9be 	bl	8000794 <_lseek_r>
 8000418:	89a3      	ldrh	r3, [r4, #12]
 800041a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800041e:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
 8000422:	81a3      	strh	r3, [r4, #12]
 8000424:	4632      	mov	r2, r6
 8000426:	463b      	mov	r3, r7
 8000428:	4628      	mov	r0, r5
 800042a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800042e:	f000 b817 	b.w	8000460 <_write_r>

08000432 <__sseek>:
 8000432:	b510      	push	{r4, lr}
 8000434:	460c      	mov	r4, r1
 8000436:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800043a:	f000 f9ab 	bl	8000794 <_lseek_r>
 800043e:	1c43      	adds	r3, r0, #1
 8000440:	89a3      	ldrh	r3, [r4, #12]
 8000442:	bf15      	itete	ne
 8000444:	6560      	strne	r0, [r4, #84]	@ 0x54
 8000446:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
 800044a:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
 800044e:	81a3      	strheq	r3, [r4, #12]
 8000450:	bf18      	it	ne
 8000452:	81a3      	strhne	r3, [r4, #12]
 8000454:	bd10      	pop	{r4, pc}

08000456 <__sclose>:
 8000456:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800045a:	f000 b83d 	b.w	80004d8 <_close_r>
	...

08000460 <_write_r>:
 8000460:	b538      	push	{r3, r4, r5, lr}
 8000462:	4d07      	ldr	r5, [pc, #28]	@ (8000480 <_write_r+0x20>)
 8000464:	4604      	mov	r4, r0
 8000466:	4608      	mov	r0, r1
 8000468:	4611      	mov	r1, r2
 800046a:	2200      	movs	r2, #0
 800046c:	602a      	str	r2, [r5, #0]
 800046e:	461a      	mov	r2, r3
 8000470:	f000 fc07 	bl	8000c82 <_write>
 8000474:	1c43      	adds	r3, r0, #1
 8000476:	d102      	bne.n	800047e <_write_r+0x1e>
 8000478:	682b      	ldr	r3, [r5, #0]
 800047a:	b103      	cbz	r3, 800047e <_write_r+0x1e>
 800047c:	6023      	str	r3, [r4, #0]
 800047e:	bd38      	pop	{r3, r4, r5, pc}
 8000480:	200001c4 	.word	0x200001c4

08000484 <_fwalk_sglue>:
 8000484:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000488:	4607      	mov	r7, r0
 800048a:	4688      	mov	r8, r1
 800048c:	4614      	mov	r4, r2
 800048e:	2600      	movs	r6, #0
 8000490:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
 8000494:	f1b9 0901 	subs.w	r9, r9, #1
 8000498:	d505      	bpl.n	80004a6 <_fwalk_sglue+0x22>
 800049a:	6824      	ldr	r4, [r4, #0]
 800049c:	2c00      	cmp	r4, #0
 800049e:	d1f7      	bne.n	8000490 <_fwalk_sglue+0xc>
 80004a0:	4630      	mov	r0, r6
 80004a2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80004a6:	89ab      	ldrh	r3, [r5, #12]
 80004a8:	2b01      	cmp	r3, #1
 80004aa:	d907      	bls.n	80004bc <_fwalk_sglue+0x38>
 80004ac:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
 80004b0:	3301      	adds	r3, #1
 80004b2:	d003      	beq.n	80004bc <_fwalk_sglue+0x38>
 80004b4:	4629      	mov	r1, r5
 80004b6:	4638      	mov	r0, r7
 80004b8:	47c0      	blx	r8
 80004ba:	4306      	orrs	r6, r0
 80004bc:	3568      	adds	r5, #104	@ 0x68
 80004be:	e7e9      	b.n	8000494 <_fwalk_sglue+0x10>

080004c0 <memset>:
 80004c0:	4402      	add	r2, r0
 80004c2:	4603      	mov	r3, r0
 80004c4:	4293      	cmp	r3, r2
 80004c6:	d100      	bne.n	80004ca <memset+0xa>
 80004c8:	4770      	bx	lr
 80004ca:	f803 1b01 	strb.w	r1, [r3], #1
 80004ce:	e7f9      	b.n	80004c4 <memset+0x4>

080004d0 <__retarget_lock_init_recursive>:
 80004d0:	4770      	bx	lr

080004d2 <__retarget_lock_acquire_recursive>:
 80004d2:	4770      	bx	lr

080004d4 <__retarget_lock_release_recursive>:
 80004d4:	4770      	bx	lr
	...

080004d8 <_close_r>:
 80004d8:	b538      	push	{r3, r4, r5, lr}
 80004da:	4d06      	ldr	r5, [pc, #24]	@ (80004f4 <_close_r+0x1c>)
 80004dc:	2300      	movs	r3, #0
 80004de:	4604      	mov	r4, r0
 80004e0:	4608      	mov	r0, r1
 80004e2:	602b      	str	r3, [r5, #0]
 80004e4:	f000 fbe9 	bl	8000cba <_close>
 80004e8:	1c43      	adds	r3, r0, #1
 80004ea:	d102      	bne.n	80004f2 <_close_r+0x1a>
 80004ec:	682b      	ldr	r3, [r5, #0]
 80004ee:	b103      	cbz	r3, 80004f2 <_close_r+0x1a>
 80004f0:	6023      	str	r3, [r4, #0]
 80004f2:	bd38      	pop	{r3, r4, r5, pc}
 80004f4:	200001c4 	.word	0x200001c4

080004f8 <__sflush_r>:
 80004f8:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80004fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000500:	0717      	lsls	r7, r2, #28
 8000502:	4605      	mov	r5, r0
 8000504:	460c      	mov	r4, r1
 8000506:	d456      	bmi.n	80005b6 <__sflush_r+0xbe>
 8000508:	684b      	ldr	r3, [r1, #4]
 800050a:	2b00      	cmp	r3, #0
 800050c:	dc02      	bgt.n	8000514 <__sflush_r+0x1c>
 800050e:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
 8000510:	2b00      	cmp	r3, #0
 8000512:	dd3d      	ble.n	8000590 <__sflush_r+0x98>
 8000514:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 8000516:	2e00      	cmp	r6, #0
 8000518:	d03a      	beq.n	8000590 <__sflush_r+0x98>
 800051a:	2300      	movs	r3, #0
 800051c:	f412 5280 	ands.w	r2, r2, #4096	@ 0x1000
 8000520:	682f      	ldr	r7, [r5, #0]
 8000522:	6a21      	ldr	r1, [r4, #32]
 8000524:	602b      	str	r3, [r5, #0]
 8000526:	d025      	beq.n	8000574 <__sflush_r+0x7c>
 8000528:	6d62      	ldr	r2, [r4, #84]	@ 0x54
 800052a:	89a3      	ldrh	r3, [r4, #12]
 800052c:	0758      	lsls	r0, r3, #29
 800052e:	d505      	bpl.n	800053c <__sflush_r+0x44>
 8000530:	6863      	ldr	r3, [r4, #4]
 8000532:	1ad2      	subs	r2, r2, r3
 8000534:	6b63      	ldr	r3, [r4, #52]	@ 0x34
 8000536:	b10b      	cbz	r3, 800053c <__sflush_r+0x44>
 8000538:	6c23      	ldr	r3, [r4, #64]	@ 0x40
 800053a:	1ad2      	subs	r2, r2, r3
 800053c:	6a21      	ldr	r1, [r4, #32]
 800053e:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 8000540:	2300      	movs	r3, #0
 8000542:	4628      	mov	r0, r5
 8000544:	47b0      	blx	r6
 8000546:	1c41      	adds	r1, r0, #1
 8000548:	d024      	beq.n	8000594 <__sflush_r+0x9c>
 800054a:	2300      	movs	r3, #0
 800054c:	6063      	str	r3, [r4, #4]
 800054e:	6923      	ldr	r3, [r4, #16]
 8000550:	6023      	str	r3, [r4, #0]
 8000552:	89a3      	ldrh	r3, [r4, #12]
 8000554:	04da      	lsls	r2, r3, #19
 8000556:	d500      	bpl.n	800055a <__sflush_r+0x62>
 8000558:	6560      	str	r0, [r4, #84]	@ 0x54
 800055a:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 800055c:	602f      	str	r7, [r5, #0]
 800055e:	b1b9      	cbz	r1, 8000590 <__sflush_r+0x98>
 8000560:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 8000564:	4299      	cmp	r1, r3
 8000566:	d002      	beq.n	800056e <__sflush_r+0x76>
 8000568:	4628      	mov	r0, r5
 800056a:	f000 f953 	bl	8000814 <_free_r>
 800056e:	2300      	movs	r3, #0
 8000570:	6363      	str	r3, [r4, #52]	@ 0x34
 8000572:	e00d      	b.n	8000590 <__sflush_r+0x98>
 8000574:	2301      	movs	r3, #1
 8000576:	4628      	mov	r0, r5
 8000578:	47b0      	blx	r6
 800057a:	1c46      	adds	r6, r0, #1
 800057c:	4602      	mov	r2, r0
 800057e:	d1d4      	bne.n	800052a <__sflush_r+0x32>
 8000580:	682b      	ldr	r3, [r5, #0]
 8000582:	2b00      	cmp	r3, #0
 8000584:	d0d1      	beq.n	800052a <__sflush_r+0x32>
 8000586:	2b1d      	cmp	r3, #29
 8000588:	d001      	beq.n	800058e <__sflush_r+0x96>
 800058a:	2b16      	cmp	r3, #22
 800058c:	d12b      	bne.n	80005e6 <__sflush_r+0xee>
 800058e:	602f      	str	r7, [r5, #0]
 8000590:	2000      	movs	r0, #0
 8000592:	e02f      	b.n	80005f4 <__sflush_r+0xfc>
 8000594:	682a      	ldr	r2, [r5, #0]
 8000596:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800059a:	b142      	cbz	r2, 80005ae <__sflush_r+0xb6>
 800059c:	2a1d      	cmp	r2, #29
 800059e:	d001      	beq.n	80005a4 <__sflush_r+0xac>
 80005a0:	2a16      	cmp	r2, #22
 80005a2:	d122      	bne.n	80005ea <__sflush_r+0xf2>
 80005a4:	2300      	movs	r3, #0
 80005a6:	6063      	str	r3, [r4, #4]
 80005a8:	6923      	ldr	r3, [r4, #16]
 80005aa:	6023      	str	r3, [r4, #0]
 80005ac:	e7d5      	b.n	800055a <__sflush_r+0x62>
 80005ae:	6062      	str	r2, [r4, #4]
 80005b0:	6922      	ldr	r2, [r4, #16]
 80005b2:	6022      	str	r2, [r4, #0]
 80005b4:	e7ce      	b.n	8000554 <__sflush_r+0x5c>
 80005b6:	690f      	ldr	r7, [r1, #16]
 80005b8:	2f00      	cmp	r7, #0
 80005ba:	d0e9      	beq.n	8000590 <__sflush_r+0x98>
 80005bc:	0793      	lsls	r3, r2, #30
 80005be:	680e      	ldr	r6, [r1, #0]
 80005c0:	bf08      	it	eq
 80005c2:	694b      	ldreq	r3, [r1, #20]
 80005c4:	600f      	str	r7, [r1, #0]
 80005c6:	bf18      	it	ne
 80005c8:	2300      	movne	r3, #0
 80005ca:	eba6 0807 	sub.w	r8, r6, r7
 80005ce:	608b      	str	r3, [r1, #8]
 80005d0:	f1b8 0f00 	cmp.w	r8, #0
 80005d4:	dddc      	ble.n	8000590 <__sflush_r+0x98>
 80005d6:	6a21      	ldr	r1, [r4, #32]
 80005d8:	6aa6      	ldr	r6, [r4, #40]	@ 0x28
 80005da:	4643      	mov	r3, r8
 80005dc:	463a      	mov	r2, r7
 80005de:	4628      	mov	r0, r5
 80005e0:	47b0      	blx	r6
 80005e2:	2800      	cmp	r0, #0
 80005e4:	dc08      	bgt.n	80005f8 <__sflush_r+0x100>
 80005e6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80005ea:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 80005ee:	81a3      	strh	r3, [r4, #12]
 80005f0:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 80005f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80005f8:	4407      	add	r7, r0
 80005fa:	eba8 0800 	sub.w	r8, r8, r0
 80005fe:	e7e7      	b.n	80005d0 <__sflush_r+0xd8>

08000600 <_fflush_r>:
 8000600:	b538      	push	{r3, r4, r5, lr}
 8000602:	690b      	ldr	r3, [r1, #16]
 8000604:	4605      	mov	r5, r0
 8000606:	460c      	mov	r4, r1
 8000608:	b913      	cbnz	r3, 8000610 <_fflush_r+0x10>
 800060a:	2500      	movs	r5, #0
 800060c:	4628      	mov	r0, r5
 800060e:	bd38      	pop	{r3, r4, r5, pc}
 8000610:	b118      	cbz	r0, 800061a <_fflush_r+0x1a>
 8000612:	6a03      	ldr	r3, [r0, #32]
 8000614:	b90b      	cbnz	r3, 800061a <_fflush_r+0x1a>
 8000616:	f7ff fec7 	bl	80003a8 <__sinit>
 800061a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800061e:	2b00      	cmp	r3, #0
 8000620:	d0f3      	beq.n	800060a <_fflush_r+0xa>
 8000622:	6e62      	ldr	r2, [r4, #100]	@ 0x64
 8000624:	07d0      	lsls	r0, r2, #31
 8000626:	d404      	bmi.n	8000632 <_fflush_r+0x32>
 8000628:	0599      	lsls	r1, r3, #22
 800062a:	d402      	bmi.n	8000632 <_fflush_r+0x32>
 800062c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 800062e:	f7ff ff50 	bl	80004d2 <__retarget_lock_acquire_recursive>
 8000632:	4628      	mov	r0, r5
 8000634:	4621      	mov	r1, r4
 8000636:	f7ff ff5f 	bl	80004f8 <__sflush_r>
 800063a:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 800063c:	07da      	lsls	r2, r3, #31
 800063e:	4605      	mov	r5, r0
 8000640:	d4e4      	bmi.n	800060c <_fflush_r+0xc>
 8000642:	89a3      	ldrh	r3, [r4, #12]
 8000644:	059b      	lsls	r3, r3, #22
 8000646:	d4e1      	bmi.n	800060c <_fflush_r+0xc>
 8000648:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 800064a:	f7ff ff43 	bl	80004d4 <__retarget_lock_release_recursive>
 800064e:	e7dd      	b.n	800060c <_fflush_r+0xc>

08000650 <sbrk_aligned>:
 8000650:	b570      	push	{r4, r5, r6, lr}
 8000652:	4e0f      	ldr	r6, [pc, #60]	@ (8000690 <sbrk_aligned+0x40>)
 8000654:	460c      	mov	r4, r1
 8000656:	6831      	ldr	r1, [r6, #0]
 8000658:	4605      	mov	r5, r0
 800065a:	b911      	cbnz	r1, 8000662 <sbrk_aligned+0x12>
 800065c:	f000 f8ca 	bl	80007f4 <_sbrk_r>
 8000660:	6030      	str	r0, [r6, #0]
 8000662:	4621      	mov	r1, r4
 8000664:	4628      	mov	r0, r5
 8000666:	f000 f8c5 	bl	80007f4 <_sbrk_r>
 800066a:	1c43      	adds	r3, r0, #1
 800066c:	d103      	bne.n	8000676 <sbrk_aligned+0x26>
 800066e:	f04f 34ff 	mov.w	r4, #4294967295	@ 0xffffffff
 8000672:	4620      	mov	r0, r4
 8000674:	bd70      	pop	{r4, r5, r6, pc}
 8000676:	1cc4      	adds	r4, r0, #3
 8000678:	f024 0403 	bic.w	r4, r4, #3
 800067c:	42a0      	cmp	r0, r4
 800067e:	d0f8      	beq.n	8000672 <sbrk_aligned+0x22>
 8000680:	1a21      	subs	r1, r4, r0
 8000682:	4628      	mov	r0, r5
 8000684:	f000 f8b6 	bl	80007f4 <_sbrk_r>
 8000688:	3001      	adds	r0, #1
 800068a:	d1f2      	bne.n	8000672 <sbrk_aligned+0x22>
 800068c:	e7ef      	b.n	800066e <sbrk_aligned+0x1e>
 800068e:	bf00      	nop
 8000690:	200001c8 	.word	0x200001c8

08000694 <_malloc_r>:
 8000694:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000698:	1ccd      	adds	r5, r1, #3
 800069a:	f025 0503 	bic.w	r5, r5, #3
 800069e:	3508      	adds	r5, #8
 80006a0:	2d0c      	cmp	r5, #12
 80006a2:	bf38      	it	cc
 80006a4:	250c      	movcc	r5, #12
 80006a6:	2d00      	cmp	r5, #0
 80006a8:	4606      	mov	r6, r0
 80006aa:	db01      	blt.n	80006b0 <_malloc_r+0x1c>
 80006ac:	42a9      	cmp	r1, r5
 80006ae:	d904      	bls.n	80006ba <_malloc_r+0x26>
 80006b0:	230c      	movs	r3, #12
 80006b2:	6033      	str	r3, [r6, #0]
 80006b4:	2000      	movs	r0, #0
 80006b6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80006ba:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 8000790 <_malloc_r+0xfc>
 80006be:	f000 f88d 	bl	80007dc <__malloc_lock>
 80006c2:	f8d8 3000 	ldr.w	r3, [r8]
 80006c6:	461c      	mov	r4, r3
 80006c8:	bb44      	cbnz	r4, 800071c <_malloc_r+0x88>
 80006ca:	4629      	mov	r1, r5
 80006cc:	4630      	mov	r0, r6
 80006ce:	f7ff ffbf 	bl	8000650 <sbrk_aligned>
 80006d2:	1c43      	adds	r3, r0, #1
 80006d4:	4604      	mov	r4, r0
 80006d6:	d158      	bne.n	800078a <_malloc_r+0xf6>
 80006d8:	f8d8 4000 	ldr.w	r4, [r8]
 80006dc:	4627      	mov	r7, r4
 80006de:	2f00      	cmp	r7, #0
 80006e0:	d143      	bne.n	800076a <_malloc_r+0xd6>
 80006e2:	2c00      	cmp	r4, #0
 80006e4:	d04b      	beq.n	800077e <_malloc_r+0xea>
 80006e6:	6823      	ldr	r3, [r4, #0]
 80006e8:	4639      	mov	r1, r7
 80006ea:	4630      	mov	r0, r6
 80006ec:	eb04 0903 	add.w	r9, r4, r3
 80006f0:	f000 f880 	bl	80007f4 <_sbrk_r>
 80006f4:	4581      	cmp	r9, r0
 80006f6:	d142      	bne.n	800077e <_malloc_r+0xea>
 80006f8:	6821      	ldr	r1, [r4, #0]
 80006fa:	1a6d      	subs	r5, r5, r1
 80006fc:	4629      	mov	r1, r5
 80006fe:	4630      	mov	r0, r6
 8000700:	f7ff ffa6 	bl	8000650 <sbrk_aligned>
 8000704:	3001      	adds	r0, #1
 8000706:	d03a      	beq.n	800077e <_malloc_r+0xea>
 8000708:	6823      	ldr	r3, [r4, #0]
 800070a:	442b      	add	r3, r5
 800070c:	6023      	str	r3, [r4, #0]
 800070e:	f8d8 3000 	ldr.w	r3, [r8]
 8000712:	685a      	ldr	r2, [r3, #4]
 8000714:	bb62      	cbnz	r2, 8000770 <_malloc_r+0xdc>
 8000716:	f8c8 7000 	str.w	r7, [r8]
 800071a:	e00f      	b.n	800073c <_malloc_r+0xa8>
 800071c:	6822      	ldr	r2, [r4, #0]
 800071e:	1b52      	subs	r2, r2, r5
 8000720:	d420      	bmi.n	8000764 <_malloc_r+0xd0>
 8000722:	2a0b      	cmp	r2, #11
 8000724:	d917      	bls.n	8000756 <_malloc_r+0xc2>
 8000726:	1961      	adds	r1, r4, r5
 8000728:	42a3      	cmp	r3, r4
 800072a:	6025      	str	r5, [r4, #0]
 800072c:	bf18      	it	ne
 800072e:	6059      	strne	r1, [r3, #4]
 8000730:	6863      	ldr	r3, [r4, #4]
 8000732:	bf08      	it	eq
 8000734:	f8c8 1000 	streq.w	r1, [r8]
 8000738:	5162      	str	r2, [r4, r5]
 800073a:	604b      	str	r3, [r1, #4]
 800073c:	4630      	mov	r0, r6
 800073e:	f000 f853 	bl	80007e8 <__malloc_unlock>
 8000742:	f104 000b 	add.w	r0, r4, #11
 8000746:	1d23      	adds	r3, r4, #4
 8000748:	f020 0007 	bic.w	r0, r0, #7
 800074c:	1ac2      	subs	r2, r0, r3
 800074e:	bf1c      	itt	ne
 8000750:	1a1b      	subne	r3, r3, r0
 8000752:	50a3      	strne	r3, [r4, r2]
 8000754:	e7af      	b.n	80006b6 <_malloc_r+0x22>
 8000756:	6862      	ldr	r2, [r4, #4]
 8000758:	42a3      	cmp	r3, r4
 800075a:	bf0c      	ite	eq
 800075c:	f8c8 2000 	streq.w	r2, [r8]
 8000760:	605a      	strne	r2, [r3, #4]
 8000762:	e7eb      	b.n	800073c <_malloc_r+0xa8>
 8000764:	4623      	mov	r3, r4
 8000766:	6864      	ldr	r4, [r4, #4]
 8000768:	e7ae      	b.n	80006c8 <_malloc_r+0x34>
 800076a:	463c      	mov	r4, r7
 800076c:	687f      	ldr	r7, [r7, #4]
 800076e:	e7b6      	b.n	80006de <_malloc_r+0x4a>
 8000770:	461a      	mov	r2, r3
 8000772:	685b      	ldr	r3, [r3, #4]
 8000774:	42a3      	cmp	r3, r4
 8000776:	d1fb      	bne.n	8000770 <_malloc_r+0xdc>
 8000778:	2300      	movs	r3, #0
 800077a:	6053      	str	r3, [r2, #4]
 800077c:	e7de      	b.n	800073c <_malloc_r+0xa8>
 800077e:	230c      	movs	r3, #12
 8000780:	6033      	str	r3, [r6, #0]
 8000782:	4630      	mov	r0, r6
 8000784:	f000 f830 	bl	80007e8 <__malloc_unlock>
 8000788:	e794      	b.n	80006b4 <_malloc_r+0x20>
 800078a:	6005      	str	r5, [r0, #0]
 800078c:	e7d6      	b.n	800073c <_malloc_r+0xa8>
 800078e:	bf00      	nop
 8000790:	200001cc 	.word	0x200001cc

08000794 <_lseek_r>:
 8000794:	b538      	push	{r3, r4, r5, lr}
 8000796:	4d07      	ldr	r5, [pc, #28]	@ (80007b4 <_lseek_r+0x20>)
 8000798:	4604      	mov	r4, r0
 800079a:	4608      	mov	r0, r1
 800079c:	4611      	mov	r1, r2
 800079e:	2200      	movs	r2, #0
 80007a0:	602a      	str	r2, [r5, #0]
 80007a2:	461a      	mov	r2, r3
 80007a4:	f000 fab0 	bl	8000d08 <_lseek>
 80007a8:	1c43      	adds	r3, r0, #1
 80007aa:	d102      	bne.n	80007b2 <_lseek_r+0x1e>
 80007ac:	682b      	ldr	r3, [r5, #0]
 80007ae:	b103      	cbz	r3, 80007b2 <_lseek_r+0x1e>
 80007b0:	6023      	str	r3, [r4, #0]
 80007b2:	bd38      	pop	{r3, r4, r5, pc}
 80007b4:	200001c4 	.word	0x200001c4

080007b8 <_read_r>:
 80007b8:	b538      	push	{r3, r4, r5, lr}
 80007ba:	4d07      	ldr	r5, [pc, #28]	@ (80007d8 <_read_r+0x20>)
 80007bc:	4604      	mov	r4, r0
 80007be:	4608      	mov	r0, r1
 80007c0:	4611      	mov	r1, r2
 80007c2:	2200      	movs	r2, #0
 80007c4:	602a      	str	r2, [r5, #0]
 80007c6:	461a      	mov	r2, r3
 80007c8:	f000 fa3e 	bl	8000c48 <_read>
 80007cc:	1c43      	adds	r3, r0, #1
 80007ce:	d102      	bne.n	80007d6 <_read_r+0x1e>
 80007d0:	682b      	ldr	r3, [r5, #0]
 80007d2:	b103      	cbz	r3, 80007d6 <_read_r+0x1e>
 80007d4:	6023      	str	r3, [r4, #0]
 80007d6:	bd38      	pop	{r3, r4, r5, pc}
 80007d8:	200001c4 	.word	0x200001c4

080007dc <__malloc_lock>:
 80007dc:	4801      	ldr	r0, [pc, #4]	@ (80007e4 <__malloc_lock+0x8>)
 80007de:	f7ff be78 	b.w	80004d2 <__retarget_lock_acquire_recursive>
 80007e2:	bf00      	nop
 80007e4:	200001c0 	.word	0x200001c0

080007e8 <__malloc_unlock>:
 80007e8:	4801      	ldr	r0, [pc, #4]	@ (80007f0 <__malloc_unlock+0x8>)
 80007ea:	f7ff be73 	b.w	80004d4 <__retarget_lock_release_recursive>
 80007ee:	bf00      	nop
 80007f0:	200001c0 	.word	0x200001c0

080007f4 <_sbrk_r>:
 80007f4:	b538      	push	{r3, r4, r5, lr}
 80007f6:	4d06      	ldr	r5, [pc, #24]	@ (8000810 <_sbrk_r+0x1c>)
 80007f8:	2300      	movs	r3, #0
 80007fa:	4604      	mov	r4, r0
 80007fc:	4608      	mov	r0, r1
 80007fe:	602b      	str	r3, [r5, #0]
 8000800:	f000 fa90 	bl	8000d24 <_sbrk>
 8000804:	1c43      	adds	r3, r0, #1
 8000806:	d102      	bne.n	800080e <_sbrk_r+0x1a>
 8000808:	682b      	ldr	r3, [r5, #0]
 800080a:	b103      	cbz	r3, 800080e <_sbrk_r+0x1a>
 800080c:	6023      	str	r3, [r4, #0]
 800080e:	bd38      	pop	{r3, r4, r5, pc}
 8000810:	200001c4 	.word	0x200001c4

08000814 <_free_r>:
 8000814:	b538      	push	{r3, r4, r5, lr}
 8000816:	4605      	mov	r5, r0
 8000818:	2900      	cmp	r1, #0
 800081a:	d041      	beq.n	80008a0 <_free_r+0x8c>
 800081c:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8000820:	1f0c      	subs	r4, r1, #4
 8000822:	2b00      	cmp	r3, #0
 8000824:	bfb8      	it	lt
 8000826:	18e4      	addlt	r4, r4, r3
 8000828:	f7ff ffd8 	bl	80007dc <__malloc_lock>
 800082c:	4a1d      	ldr	r2, [pc, #116]	@ (80008a4 <_free_r+0x90>)
 800082e:	6813      	ldr	r3, [r2, #0]
 8000830:	b933      	cbnz	r3, 8000840 <_free_r+0x2c>
 8000832:	6063      	str	r3, [r4, #4]
 8000834:	6014      	str	r4, [r2, #0]
 8000836:	4628      	mov	r0, r5
 8000838:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800083c:	f7ff bfd4 	b.w	80007e8 <__malloc_unlock>
 8000840:	42a3      	cmp	r3, r4
 8000842:	d908      	bls.n	8000856 <_free_r+0x42>
 8000844:	6820      	ldr	r0, [r4, #0]
 8000846:	1821      	adds	r1, r4, r0
 8000848:	428b      	cmp	r3, r1
 800084a:	bf01      	itttt	eq
 800084c:	6819      	ldreq	r1, [r3, #0]
 800084e:	685b      	ldreq	r3, [r3, #4]
 8000850:	1809      	addeq	r1, r1, r0
 8000852:	6021      	streq	r1, [r4, #0]
 8000854:	e7ed      	b.n	8000832 <_free_r+0x1e>
 8000856:	461a      	mov	r2, r3
 8000858:	685b      	ldr	r3, [r3, #4]
 800085a:	b10b      	cbz	r3, 8000860 <_free_r+0x4c>
 800085c:	42a3      	cmp	r3, r4
 800085e:	d9fa      	bls.n	8000856 <_free_r+0x42>
 8000860:	6811      	ldr	r1, [r2, #0]
 8000862:	1850      	adds	r0, r2, r1
 8000864:	42a0      	cmp	r0, r4
 8000866:	d10b      	bne.n	8000880 <_free_r+0x6c>
 8000868:	6820      	ldr	r0, [r4, #0]
 800086a:	4401      	add	r1, r0
 800086c:	1850      	adds	r0, r2, r1
 800086e:	4283      	cmp	r3, r0
 8000870:	6011      	str	r1, [r2, #0]
 8000872:	d1e0      	bne.n	8000836 <_free_r+0x22>
 8000874:	6818      	ldr	r0, [r3, #0]
 8000876:	685b      	ldr	r3, [r3, #4]
 8000878:	6053      	str	r3, [r2, #4]
 800087a:	4408      	add	r0, r1
 800087c:	6010      	str	r0, [r2, #0]
 800087e:	e7da      	b.n	8000836 <_free_r+0x22>
 8000880:	d902      	bls.n	8000888 <_free_r+0x74>
 8000882:	230c      	movs	r3, #12
 8000884:	602b      	str	r3, [r5, #0]
 8000886:	e7d6      	b.n	8000836 <_free_r+0x22>
 8000888:	6820      	ldr	r0, [r4, #0]
 800088a:	1821      	adds	r1, r4, r0
 800088c:	428b      	cmp	r3, r1
 800088e:	bf04      	itt	eq
 8000890:	6819      	ldreq	r1, [r3, #0]
 8000892:	685b      	ldreq	r3, [r3, #4]
 8000894:	6063      	str	r3, [r4, #4]
 8000896:	bf04      	itt	eq
 8000898:	1809      	addeq	r1, r1, r0
 800089a:	6021      	streq	r1, [r4, #0]
 800089c:	6054      	str	r4, [r2, #4]
 800089e:	e7ca      	b.n	8000836 <_free_r+0x22>
 80008a0:	bd38      	pop	{r3, r4, r5, pc}
 80008a2:	bf00      	nop
 80008a4:	200001cc 	.word	0x200001cc

080008a8 <MX_DMA_Init>:
 80008a8:	b580      	push	{r7, lr}
 80008aa:	b082      	sub	sp, #8
 80008ac:	af00      	add	r7, sp, #0
 80008ae:	2300      	movs	r3, #0
 80008b0:	607b      	str	r3, [r7, #4]
 80008b2:	4b49      	ldr	r3, [pc, #292]	@ (80009d8 <MX_DMA_Init+0x130>)
 80008b4:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80008b6:	4a48      	ldr	r2, [pc, #288]	@ (80009d8 <MX_DMA_Init+0x130>)
 80008b8:	f443 1300 	orr.w	r3, r3, #2097152	@ 0x200000
 80008bc:	6313      	str	r3, [r2, #48]	@ 0x30
 80008be:	4b46      	ldr	r3, [pc, #280]	@ (80009d8 <MX_DMA_Init+0x130>)
 80008c0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80008c2:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 80008c6:	607b      	str	r3, [r7, #4]
 80008c8:	687b      	ldr	r3, [r7, #4]
 80008ca:	2300      	movs	r3, #0
 80008cc:	603b      	str	r3, [r7, #0]
 80008ce:	4b42      	ldr	r3, [pc, #264]	@ (80009d8 <MX_DMA_Init+0x130>)
 80008d0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80008d2:	4a41      	ldr	r2, [pc, #260]	@ (80009d8 <MX_DMA_Init+0x130>)
 80008d4:	f443 0380 	orr.w	r3, r3, #4194304	@ 0x400000
 80008d8:	6313      	str	r3, [r2, #48]	@ 0x30
 80008da:	4b3f      	ldr	r3, [pc, #252]	@ (80009d8 <MX_DMA_Init+0x130>)
 80008dc:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80008de:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 80008e2:	603b      	str	r3, [r7, #0]
 80008e4:	683b      	ldr	r3, [r7, #0]
 80008e6:	4b3d      	ldr	r3, [pc, #244]	@ (80009dc <MX_DMA_Init+0x134>)
 80008e8:	4a3d      	ldr	r2, [pc, #244]	@ (80009e0 <MX_DMA_Init+0x138>)
 80008ea:	601a      	str	r2, [r3, #0]
 80008ec:	4b3b      	ldr	r3, [pc, #236]	@ (80009dc <MX_DMA_Init+0x134>)
 80008ee:	2280      	movs	r2, #128	@ 0x80
 80008f0:	609a      	str	r2, [r3, #8]
 80008f2:	4b3a      	ldr	r3, [pc, #232]	@ (80009dc <MX_DMA_Init+0x134>)
 80008f4:	2200      	movs	r2, #0
 80008f6:	60da      	str	r2, [r3, #12]
 80008f8:	4b38      	ldr	r3, [pc, #224]	@ (80009dc <MX_DMA_Init+0x134>)
 80008fa:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 80008fe:	611a      	str	r2, [r3, #16]
 8000900:	4b36      	ldr	r3, [pc, #216]	@ (80009dc <MX_DMA_Init+0x134>)
 8000902:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 8000906:	615a      	str	r2, [r3, #20]
 8000908:	4b34      	ldr	r3, [pc, #208]	@ (80009dc <MX_DMA_Init+0x134>)
 800090a:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 800090e:	619a      	str	r2, [r3, #24]
 8000910:	4b32      	ldr	r3, [pc, #200]	@ (80009dc <MX_DMA_Init+0x134>)
 8000912:	2200      	movs	r2, #0
 8000914:	61da      	str	r2, [r3, #28]
 8000916:	4b31      	ldr	r3, [pc, #196]	@ (80009dc <MX_DMA_Init+0x134>)
 8000918:	2200      	movs	r2, #0
 800091a:	621a      	str	r2, [r3, #32]
 800091c:	4b2f      	ldr	r3, [pc, #188]	@ (80009dc <MX_DMA_Init+0x134>)
 800091e:	2200      	movs	r2, #0
 8000920:	605a      	str	r2, [r3, #4]
 8000922:	4b2e      	ldr	r3, [pc, #184]	@ (80009dc <MX_DMA_Init+0x134>)
 8000924:	2204      	movs	r2, #4
 8000926:	625a      	str	r2, [r3, #36]	@ 0x24
 8000928:	4b2c      	ldr	r3, [pc, #176]	@ (80009dc <MX_DMA_Init+0x134>)
 800092a:	2203      	movs	r2, #3
 800092c:	629a      	str	r2, [r3, #40]	@ 0x28
 800092e:	4b2b      	ldr	r3, [pc, #172]	@ (80009dc <MX_DMA_Init+0x134>)
 8000930:	2200      	movs	r2, #0
 8000932:	62da      	str	r2, [r3, #44]	@ 0x2c
 8000934:	4b29      	ldr	r3, [pc, #164]	@ (80009dc <MX_DMA_Init+0x134>)
 8000936:	2200      	movs	r2, #0
 8000938:	631a      	str	r2, [r3, #48]	@ 0x30
 800093a:	4828      	ldr	r0, [pc, #160]	@ (80009dc <MX_DMA_Init+0x134>)
 800093c:	f000 fee2 	bl	8001704 <HAL_DMA_Init>
 8000940:	4603      	mov	r3, r0
 8000942:	2b00      	cmp	r3, #0
 8000944:	d001      	beq.n	800094a <MX_DMA_Init+0xa2>
 8000946:	f000 f869 	bl	8000a1c <Error_Handler>
 800094a:	4b26      	ldr	r3, [pc, #152]	@ (80009e4 <MX_DMA_Init+0x13c>)
 800094c:	4a26      	ldr	r2, [pc, #152]	@ (80009e8 <MX_DMA_Init+0x140>)
 800094e:	601a      	str	r2, [r3, #0]
 8000950:	4b24      	ldr	r3, [pc, #144]	@ (80009e4 <MX_DMA_Init+0x13c>)
 8000952:	2280      	movs	r2, #128	@ 0x80
 8000954:	609a      	str	r2, [r3, #8]
 8000956:	4b23      	ldr	r3, [pc, #140]	@ (80009e4 <MX_DMA_Init+0x13c>)
 8000958:	2200      	movs	r2, #0
 800095a:	60da      	str	r2, [r3, #12]
 800095c:	4b21      	ldr	r3, [pc, #132]	@ (80009e4 <MX_DMA_Init+0x13c>)
 800095e:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8000962:	611a      	str	r2, [r3, #16]
 8000964:	4b1f      	ldr	r3, [pc, #124]	@ (80009e4 <MX_DMA_Init+0x13c>)
 8000966:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 800096a:	615a      	str	r2, [r3, #20]
 800096c:	4b1d      	ldr	r3, [pc, #116]	@ (80009e4 <MX_DMA_Init+0x13c>)
 800096e:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 8000972:	619a      	str	r2, [r3, #24]
 8000974:	4b1b      	ldr	r3, [pc, #108]	@ (80009e4 <MX_DMA_Init+0x13c>)
 8000976:	2200      	movs	r2, #0
 8000978:	61da      	str	r2, [r3, #28]
 800097a:	4b1a      	ldr	r3, [pc, #104]	@ (80009e4 <MX_DMA_Init+0x13c>)
 800097c:	2200      	movs	r2, #0
 800097e:	621a      	str	r2, [r3, #32]
 8000980:	4b18      	ldr	r3, [pc, #96]	@ (80009e4 <MX_DMA_Init+0x13c>)
 8000982:	2200      	movs	r2, #0
 8000984:	605a      	str	r2, [r3, #4]
 8000986:	4b17      	ldr	r3, [pc, #92]	@ (80009e4 <MX_DMA_Init+0x13c>)
 8000988:	2204      	movs	r2, #4
 800098a:	625a      	str	r2, [r3, #36]	@ 0x24
 800098c:	4b15      	ldr	r3, [pc, #84]	@ (80009e4 <MX_DMA_Init+0x13c>)
 800098e:	2203      	movs	r2, #3
 8000990:	629a      	str	r2, [r3, #40]	@ 0x28
 8000992:	4b14      	ldr	r3, [pc, #80]	@ (80009e4 <MX_DMA_Init+0x13c>)
 8000994:	2200      	movs	r2, #0
 8000996:	62da      	str	r2, [r3, #44]	@ 0x2c
 8000998:	4b12      	ldr	r3, [pc, #72]	@ (80009e4 <MX_DMA_Init+0x13c>)
 800099a:	2200      	movs	r2, #0
 800099c:	631a      	str	r2, [r3, #48]	@ 0x30
 800099e:	4811      	ldr	r0, [pc, #68]	@ (80009e4 <MX_DMA_Init+0x13c>)
 80009a0:	f000 feb0 	bl	8001704 <HAL_DMA_Init>
 80009a4:	4603      	mov	r3, r0
 80009a6:	2b00      	cmp	r3, #0
 80009a8:	d001      	beq.n	80009ae <MX_DMA_Init+0x106>
 80009aa:	f000 f837 	bl	8000a1c <Error_Handler>
 80009ae:	2200      	movs	r2, #0
 80009b0:	2100      	movs	r1, #0
 80009b2:	200c      	movs	r0, #12
 80009b4:	f000 fe61 	bl	800167a <HAL_NVIC_SetPriority>
 80009b8:	200c      	movs	r0, #12
 80009ba:	f000 fe7a 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 80009be:	2200      	movs	r2, #0
 80009c0:	2100      	movs	r1, #0
 80009c2:	2044      	movs	r0, #68	@ 0x44
 80009c4:	f000 fe59 	bl	800167a <HAL_NVIC_SetPriority>
 80009c8:	2044      	movs	r0, #68	@ 0x44
 80009ca:	f000 fe72 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 80009ce:	bf00      	nop
 80009d0:	3708      	adds	r7, #8
 80009d2:	46bd      	mov	sp, r7
 80009d4:	bd80      	pop	{r7, pc}
 80009d6:	bf00      	nop
 80009d8:	40023800 	.word	0x40023800
 80009dc:	200001d0 	.word	0x200001d0
 80009e0:	40026028 	.word	0x40026028
 80009e4:	20000230 	.word	0x20000230
 80009e8:	40026488 	.word	0x40026488

080009ec <main>:
 80009ec:	b580      	push	{r7, lr}
 80009ee:	af00      	add	r7, sp, #0
 80009f0:	f000 fcd2 	bl	8001398 <HAL_Init>
 80009f4:	f000 f818 	bl	8000a28 <SystemClock_Config>
 80009f8:	f000 fc5e 	bl	80012b8 <MX_USART2_Init>
 80009fc:	f7ff ff54 	bl	80008a8 <MX_DMA_Init>
 8000a00:	f000 f9d8 	bl	8000db4 <MX_TIM1_Init>
 8000a04:	f000 fa4a 	bl	8000e9c <MX_TIM8_Init>
 8000a08:	f000 fabc 	bl	8000f84 <MX_TIM9_Init>
 8000a0c:	4802      	ldr	r0, [pc, #8]	@ (8000a18 <main+0x2c>)
 8000a0e:	f003 f927 	bl	8003c60 <puts>
 8000a12:	bf00      	nop
 8000a14:	e7fd      	b.n	8000a12 <main+0x26>
 8000a16:	bf00      	nop
 8000a18:	08003ec4 	.word	0x08003ec4

08000a1c <Error_Handler>:
 8000a1c:	b480      	push	{r7}
 8000a1e:	af00      	add	r7, sp, #0
 8000a20:	b672      	cpsid	i
 8000a22:	bf00      	nop
 8000a24:	bf00      	nop
 8000a26:	e7fd      	b.n	8000a24 <Error_Handler+0x8>

08000a28 <SystemClock_Config>:
 8000a28:	b580      	push	{r7, lr}
 8000a2a:	b094      	sub	sp, #80	@ 0x50
 8000a2c:	af00      	add	r7, sp, #0
 8000a2e:	f107 0320 	add.w	r3, r7, #32
 8000a32:	2230      	movs	r2, #48	@ 0x30
 8000a34:	2100      	movs	r1, #0
 8000a36:	4618      	mov	r0, r3
 8000a38:	f7ff fd42 	bl	80004c0 <memset>
 8000a3c:	f107 030c 	add.w	r3, r7, #12
 8000a40:	2200      	movs	r2, #0
 8000a42:	601a      	str	r2, [r3, #0]
 8000a44:	605a      	str	r2, [r3, #4]
 8000a46:	609a      	str	r2, [r3, #8]
 8000a48:	60da      	str	r2, [r3, #12]
 8000a4a:	611a      	str	r2, [r3, #16]
 8000a4c:	2300      	movs	r3, #0
 8000a4e:	60bb      	str	r3, [r7, #8]
 8000a50:	4b28      	ldr	r3, [pc, #160]	@ (8000af4 <SystemClock_Config+0xcc>)
 8000a52:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000a54:	4a27      	ldr	r2, [pc, #156]	@ (8000af4 <SystemClock_Config+0xcc>)
 8000a56:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8000a5a:	6413      	str	r3, [r2, #64]	@ 0x40
 8000a5c:	4b25      	ldr	r3, [pc, #148]	@ (8000af4 <SystemClock_Config+0xcc>)
 8000a5e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000a60:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8000a64:	60bb      	str	r3, [r7, #8]
 8000a66:	68bb      	ldr	r3, [r7, #8]
 8000a68:	2300      	movs	r3, #0
 8000a6a:	607b      	str	r3, [r7, #4]
 8000a6c:	4b22      	ldr	r3, [pc, #136]	@ (8000af8 <SystemClock_Config+0xd0>)
 8000a6e:	681b      	ldr	r3, [r3, #0]
 8000a70:	4a21      	ldr	r2, [pc, #132]	@ (8000af8 <SystemClock_Config+0xd0>)
 8000a72:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 8000a76:	6013      	str	r3, [r2, #0]
 8000a78:	4b1f      	ldr	r3, [pc, #124]	@ (8000af8 <SystemClock_Config+0xd0>)
 8000a7a:	681b      	ldr	r3, [r3, #0]
 8000a7c:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8000a80:	607b      	str	r3, [r7, #4]
 8000a82:	687b      	ldr	r3, [r7, #4]
 8000a84:	2302      	movs	r3, #2
 8000a86:	623b      	str	r3, [r7, #32]
 8000a88:	2301      	movs	r3, #1
 8000a8a:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8000a8c:	2310      	movs	r3, #16
 8000a8e:	633b      	str	r3, [r7, #48]	@ 0x30
 8000a90:	2302      	movs	r3, #2
 8000a92:	63bb      	str	r3, [r7, #56]	@ 0x38
 8000a94:	2300      	movs	r3, #0
 8000a96:	63fb      	str	r3, [r7, #60]	@ 0x3c
 8000a98:	2308      	movs	r3, #8
 8000a9a:	643b      	str	r3, [r7, #64]	@ 0x40
 8000a9c:	2332      	movs	r3, #50	@ 0x32
 8000a9e:	647b      	str	r3, [r7, #68]	@ 0x44
 8000aa0:	2302      	movs	r3, #2
 8000aa2:	64bb      	str	r3, [r7, #72]	@ 0x48
 8000aa4:	2307      	movs	r3, #7
 8000aa6:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8000aa8:	f107 0320 	add.w	r3, r7, #32
 8000aac:	4618      	mov	r0, r3
 8000aae:	f001 f925 	bl	8001cfc <HAL_RCC_OscConfig>
 8000ab2:	4603      	mov	r3, r0
 8000ab4:	2b00      	cmp	r3, #0
 8000ab6:	d001      	beq.n	8000abc <SystemClock_Config+0x94>
 8000ab8:	f7ff ffb0 	bl	8000a1c <Error_Handler>
 8000abc:	230f      	movs	r3, #15
 8000abe:	60fb      	str	r3, [r7, #12]
 8000ac0:	2302      	movs	r3, #2
 8000ac2:	613b      	str	r3, [r7, #16]
 8000ac4:	2300      	movs	r3, #0
 8000ac6:	617b      	str	r3, [r7, #20]
 8000ac8:	f44f 53a0 	mov.w	r3, #5120	@ 0x1400
 8000acc:	61bb      	str	r3, [r7, #24]
 8000ace:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8000ad2:	61fb      	str	r3, [r7, #28]
 8000ad4:	f107 030c 	add.w	r3, r7, #12
 8000ad8:	2101      	movs	r1, #1
 8000ada:	4618      	mov	r0, r3
 8000adc:	f001 fb86 	bl	80021ec <HAL_RCC_ClockConfig>
 8000ae0:	4603      	mov	r3, r0
 8000ae2:	2b00      	cmp	r3, #0
 8000ae4:	d001      	beq.n	8000aea <SystemClock_Config+0xc2>
 8000ae6:	f7ff ff99 	bl	8000a1c <Error_Handler>
 8000aea:	bf00      	nop
 8000aec:	3750      	adds	r7, #80	@ 0x50
 8000aee:	46bd      	mov	sp, r7
 8000af0:	bd80      	pop	{r7, pc}
 8000af2:	bf00      	nop
 8000af4:	40023800 	.word	0x40023800
 8000af8:	40007000 	.word	0x40007000

08000afc <HAL_MspInit>:
 8000afc:	b580      	push	{r7, lr}
 8000afe:	b082      	sub	sp, #8
 8000b00:	af00      	add	r7, sp, #0
 8000b02:	2300      	movs	r3, #0
 8000b04:	607b      	str	r3, [r7, #4]
 8000b06:	4b10      	ldr	r3, [pc, #64]	@ (8000b48 <HAL_MspInit+0x4c>)
 8000b08:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000b0a:	4a0f      	ldr	r2, [pc, #60]	@ (8000b48 <HAL_MspInit+0x4c>)
 8000b0c:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 8000b10:	6453      	str	r3, [r2, #68]	@ 0x44
 8000b12:	4b0d      	ldr	r3, [pc, #52]	@ (8000b48 <HAL_MspInit+0x4c>)
 8000b14:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000b16:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8000b1a:	607b      	str	r3, [r7, #4]
 8000b1c:	687b      	ldr	r3, [r7, #4]
 8000b1e:	2300      	movs	r3, #0
 8000b20:	603b      	str	r3, [r7, #0]
 8000b22:	4b09      	ldr	r3, [pc, #36]	@ (8000b48 <HAL_MspInit+0x4c>)
 8000b24:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000b26:	4a08      	ldr	r2, [pc, #32]	@ (8000b48 <HAL_MspInit+0x4c>)
 8000b28:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8000b2c:	6413      	str	r3, [r2, #64]	@ 0x40
 8000b2e:	4b06      	ldr	r3, [pc, #24]	@ (8000b48 <HAL_MspInit+0x4c>)
 8000b30:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000b32:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8000b36:	603b      	str	r3, [r7, #0]
 8000b38:	683b      	ldr	r3, [r7, #0]
 8000b3a:	2007      	movs	r0, #7
 8000b3c:	f000 fd92 	bl	8001664 <HAL_NVIC_SetPriorityGrouping>
 8000b40:	bf00      	nop
 8000b42:	3708      	adds	r7, #8
 8000b44:	46bd      	mov	sp, r7
 8000b46:	bd80      	pop	{r7, pc}
 8000b48:	40023800 	.word	0x40023800

08000b4c <NMI_Handler>:
 8000b4c:	b480      	push	{r7}
 8000b4e:	af00      	add	r7, sp, #0
 8000b50:	bf00      	nop
 8000b52:	46bd      	mov	sp, r7
 8000b54:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b58:	4770      	bx	lr

08000b5a <HardFault_Handler>:
 8000b5a:	b480      	push	{r7}
 8000b5c:	af00      	add	r7, sp, #0
 8000b5e:	bf00      	nop
 8000b60:	46bd      	mov	sp, r7
 8000b62:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b66:	4770      	bx	lr

08000b68 <BusFault_Handler>:
 8000b68:	b480      	push	{r7}
 8000b6a:	af00      	add	r7, sp, #0
 8000b6c:	bf00      	nop
 8000b6e:	46bd      	mov	sp, r7
 8000b70:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b74:	4770      	bx	lr

08000b76 <DebugMon_Handler>:
 8000b76:	b480      	push	{r7}
 8000b78:	af00      	add	r7, sp, #0
 8000b7a:	bf00      	nop
 8000b7c:	46bd      	mov	sp, r7
 8000b7e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b82:	4770      	bx	lr

08000b84 <PendSV_Handler>:
 8000b84:	b480      	push	{r7}
 8000b86:	af00      	add	r7, sp, #0
 8000b88:	bf00      	nop
 8000b8a:	46bd      	mov	sp, r7
 8000b8c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b90:	4770      	bx	lr

08000b92 <MemManage_Handler>:
 8000b92:	b480      	push	{r7}
 8000b94:	af00      	add	r7, sp, #0
 8000b96:	bf00      	nop
 8000b98:	46bd      	mov	sp, r7
 8000b9a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b9e:	4770      	bx	lr

08000ba0 <UsageFault_Handler>:
 8000ba0:	b480      	push	{r7}
 8000ba2:	af00      	add	r7, sp, #0
 8000ba4:	bf00      	nop
 8000ba6:	46bd      	mov	sp, r7
 8000ba8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bac:	4770      	bx	lr

08000bae <SVC_Handler>:
 8000bae:	b480      	push	{r7}
 8000bb0:	af00      	add	r7, sp, #0
 8000bb2:	bf00      	nop
 8000bb4:	46bd      	mov	sp, r7
 8000bb6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bba:	4770      	bx	lr

08000bbc <SysTick_Handler>:
 8000bbc:	b580      	push	{r7, lr}
 8000bbe:	af00      	add	r7, sp, #0
 8000bc0:	f000 fc3c 	bl	800143c <HAL_IncTick>
 8000bc4:	bf00      	nop
 8000bc6:	bd80      	pop	{r7, pc}

08000bc8 <TIM1_CC_IRQHandler>:
 8000bc8:	b580      	push	{r7, lr}
 8000bca:	af00      	add	r7, sp, #0
 8000bcc:	4802      	ldr	r0, [pc, #8]	@ (8000bd8 <TIM1_CC_IRQHandler+0x10>)
 8000bce:	f001 fdd0 	bl	8002772 <HAL_TIM_IRQHandler>
 8000bd2:	bf00      	nop
 8000bd4:	bd80      	pop	{r7, pc}
 8000bd6:	bf00      	nop
 8000bd8:	20000294 	.word	0x20000294

08000bdc <TIM1_UP_TIM10_IRQHandler>:
 8000bdc:	b580      	push	{r7, lr}
 8000bde:	af00      	add	r7, sp, #0
 8000be0:	4802      	ldr	r0, [pc, #8]	@ (8000bec <TIM1_UP_TIM10_IRQHandler+0x10>)
 8000be2:	f001 fdc6 	bl	8002772 <HAL_TIM_IRQHandler>
 8000be6:	bf00      	nop
 8000be8:	bd80      	pop	{r7, pc}
 8000bea:	bf00      	nop
 8000bec:	20000294 	.word	0x20000294

08000bf0 <TIM1_BRK_TIM9_IRQHandler>:
 8000bf0:	b580      	push	{r7, lr}
 8000bf2:	af00      	add	r7, sp, #0
 8000bf4:	4803      	ldr	r0, [pc, #12]	@ (8000c04 <TIM1_BRK_TIM9_IRQHandler+0x14>)
 8000bf6:	f001 fdbc 	bl	8002772 <HAL_TIM_IRQHandler>
 8000bfa:	4803      	ldr	r0, [pc, #12]	@ (8000c08 <TIM1_BRK_TIM9_IRQHandler+0x18>)
 8000bfc:	f001 fdb9 	bl	8002772 <HAL_TIM_IRQHandler>
 8000c00:	bf00      	nop
 8000c02:	bd80      	pop	{r7, pc}
 8000c04:	20000294 	.word	0x20000294
 8000c08:	20000324 	.word	0x20000324

08000c0c <TIM8_BRK_TIM12_IRQHandler>:
 8000c0c:	b580      	push	{r7, lr}
 8000c0e:	af00      	add	r7, sp, #0
 8000c10:	4802      	ldr	r0, [pc, #8]	@ (8000c1c <TIM8_BRK_TIM12_IRQHandler+0x10>)
 8000c12:	f001 fdae 	bl	8002772 <HAL_TIM_IRQHandler>
 8000c16:	bf00      	nop
 8000c18:	bd80      	pop	{r7, pc}
 8000c1a:	bf00      	nop
 8000c1c:	200002dc 	.word	0x200002dc

08000c20 <TIM8_CC_IRQHandler>:
 8000c20:	b580      	push	{r7, lr}
 8000c22:	af00      	add	r7, sp, #0
 8000c24:	4802      	ldr	r0, [pc, #8]	@ (8000c30 <TIM8_CC_IRQHandler+0x10>)
 8000c26:	f001 fda4 	bl	8002772 <HAL_TIM_IRQHandler>
 8000c2a:	bf00      	nop
 8000c2c:	bd80      	pop	{r7, pc}
 8000c2e:	bf00      	nop
 8000c30:	200002dc 	.word	0x200002dc

08000c34 <TIM8_UP_TIM13_IRQHandler>:
 8000c34:	b580      	push	{r7, lr}
 8000c36:	af00      	add	r7, sp, #0
 8000c38:	4802      	ldr	r0, [pc, #8]	@ (8000c44 <TIM8_UP_TIM13_IRQHandler+0x10>)
 8000c3a:	f001 fd9a 	bl	8002772 <HAL_TIM_IRQHandler>
 8000c3e:	bf00      	nop
 8000c40:	bd80      	pop	{r7, pc}
 8000c42:	bf00      	nop
 8000c44:	200002dc 	.word	0x200002dc

08000c48 <_read>:
 8000c48:	b580      	push	{r7, lr}
 8000c4a:	b086      	sub	sp, #24
 8000c4c:	af00      	add	r7, sp, #0
 8000c4e:	60f8      	str	r0, [r7, #12]
 8000c50:	60b9      	str	r1, [r7, #8]
 8000c52:	607a      	str	r2, [r7, #4]
 8000c54:	2300      	movs	r3, #0
 8000c56:	617b      	str	r3, [r7, #20]
 8000c58:	e00a      	b.n	8000c70 <_read+0x28>
 8000c5a:	f3af 8000 	nop.w
 8000c5e:	4601      	mov	r1, r0
 8000c60:	68bb      	ldr	r3, [r7, #8]
 8000c62:	1c5a      	adds	r2, r3, #1
 8000c64:	60ba      	str	r2, [r7, #8]
 8000c66:	b2ca      	uxtb	r2, r1
 8000c68:	701a      	strb	r2, [r3, #0]
 8000c6a:	697b      	ldr	r3, [r7, #20]
 8000c6c:	3301      	adds	r3, #1
 8000c6e:	617b      	str	r3, [r7, #20]
 8000c70:	697a      	ldr	r2, [r7, #20]
 8000c72:	687b      	ldr	r3, [r7, #4]
 8000c74:	429a      	cmp	r2, r3
 8000c76:	dbf0      	blt.n	8000c5a <_read+0x12>
 8000c78:	687b      	ldr	r3, [r7, #4]
 8000c7a:	4618      	mov	r0, r3
 8000c7c:	3718      	adds	r7, #24
 8000c7e:	46bd      	mov	sp, r7
 8000c80:	bd80      	pop	{r7, pc}

08000c82 <_write>:
 8000c82:	b580      	push	{r7, lr}
 8000c84:	b086      	sub	sp, #24
 8000c86:	af00      	add	r7, sp, #0
 8000c88:	60f8      	str	r0, [r7, #12]
 8000c8a:	60b9      	str	r1, [r7, #8]
 8000c8c:	607a      	str	r2, [r7, #4]
 8000c8e:	2300      	movs	r3, #0
 8000c90:	617b      	str	r3, [r7, #20]
 8000c92:	e009      	b.n	8000ca8 <_write+0x26>
 8000c94:	68bb      	ldr	r3, [r7, #8]
 8000c96:	1c5a      	adds	r2, r3, #1
 8000c98:	60ba      	str	r2, [r7, #8]
 8000c9a:	781b      	ldrb	r3, [r3, #0]
 8000c9c:	4618      	mov	r0, r3
 8000c9e:	f000 faf9 	bl	8001294 <__io_putchar>
 8000ca2:	697b      	ldr	r3, [r7, #20]
 8000ca4:	3301      	adds	r3, #1
 8000ca6:	617b      	str	r3, [r7, #20]
 8000ca8:	697a      	ldr	r2, [r7, #20]
 8000caa:	687b      	ldr	r3, [r7, #4]
 8000cac:	429a      	cmp	r2, r3
 8000cae:	dbf1      	blt.n	8000c94 <_write+0x12>
 8000cb0:	687b      	ldr	r3, [r7, #4]
 8000cb2:	4618      	mov	r0, r3
 8000cb4:	3718      	adds	r7, #24
 8000cb6:	46bd      	mov	sp, r7
 8000cb8:	bd80      	pop	{r7, pc}

08000cba <_close>:
 8000cba:	b480      	push	{r7}
 8000cbc:	b083      	sub	sp, #12
 8000cbe:	af00      	add	r7, sp, #0
 8000cc0:	6078      	str	r0, [r7, #4]
 8000cc2:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8000cc6:	4618      	mov	r0, r3
 8000cc8:	370c      	adds	r7, #12
 8000cca:	46bd      	mov	sp, r7
 8000ccc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000cd0:	4770      	bx	lr

08000cd2 <_fstat>:
 8000cd2:	b480      	push	{r7}
 8000cd4:	b083      	sub	sp, #12
 8000cd6:	af00      	add	r7, sp, #0
 8000cd8:	6078      	str	r0, [r7, #4]
 8000cda:	6039      	str	r1, [r7, #0]
 8000cdc:	683b      	ldr	r3, [r7, #0]
 8000cde:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
 8000ce2:	605a      	str	r2, [r3, #4]
 8000ce4:	2300      	movs	r3, #0
 8000ce6:	4618      	mov	r0, r3
 8000ce8:	370c      	adds	r7, #12
 8000cea:	46bd      	mov	sp, r7
 8000cec:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000cf0:	4770      	bx	lr

08000cf2 <_isatty>:
 8000cf2:	b480      	push	{r7}
 8000cf4:	b083      	sub	sp, #12
 8000cf6:	af00      	add	r7, sp, #0
 8000cf8:	6078      	str	r0, [r7, #4]
 8000cfa:	2301      	movs	r3, #1
 8000cfc:	4618      	mov	r0, r3
 8000cfe:	370c      	adds	r7, #12
 8000d00:	46bd      	mov	sp, r7
 8000d02:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d06:	4770      	bx	lr

08000d08 <_lseek>:
 8000d08:	b480      	push	{r7}
 8000d0a:	b085      	sub	sp, #20
 8000d0c:	af00      	add	r7, sp, #0
 8000d0e:	60f8      	str	r0, [r7, #12]
 8000d10:	60b9      	str	r1, [r7, #8]
 8000d12:	607a      	str	r2, [r7, #4]
 8000d14:	2300      	movs	r3, #0
 8000d16:	4618      	mov	r0, r3
 8000d18:	3714      	adds	r7, #20
 8000d1a:	46bd      	mov	sp, r7
 8000d1c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d20:	4770      	bx	lr
	...

08000d24 <_sbrk>:
 8000d24:	b580      	push	{r7, lr}
 8000d26:	b086      	sub	sp, #24
 8000d28:	af00      	add	r7, sp, #0
 8000d2a:	6078      	str	r0, [r7, #4]
 8000d2c:	4a14      	ldr	r2, [pc, #80]	@ (8000d80 <_sbrk+0x5c>)
 8000d2e:	4b15      	ldr	r3, [pc, #84]	@ (8000d84 <_sbrk+0x60>)
 8000d30:	1ad3      	subs	r3, r2, r3
 8000d32:	617b      	str	r3, [r7, #20]
 8000d34:	697b      	ldr	r3, [r7, #20]
 8000d36:	613b      	str	r3, [r7, #16]
 8000d38:	4b13      	ldr	r3, [pc, #76]	@ (8000d88 <_sbrk+0x64>)
 8000d3a:	681b      	ldr	r3, [r3, #0]
 8000d3c:	2b00      	cmp	r3, #0
 8000d3e:	d102      	bne.n	8000d46 <_sbrk+0x22>
 8000d40:	4b11      	ldr	r3, [pc, #68]	@ (8000d88 <_sbrk+0x64>)
 8000d42:	4a12      	ldr	r2, [pc, #72]	@ (8000d8c <_sbrk+0x68>)
 8000d44:	601a      	str	r2, [r3, #0]
 8000d46:	4b10      	ldr	r3, [pc, #64]	@ (8000d88 <_sbrk+0x64>)
 8000d48:	681a      	ldr	r2, [r3, #0]
 8000d4a:	687b      	ldr	r3, [r7, #4]
 8000d4c:	4413      	add	r3, r2
 8000d4e:	693a      	ldr	r2, [r7, #16]
 8000d50:	429a      	cmp	r2, r3
 8000d52:	d207      	bcs.n	8000d64 <_sbrk+0x40>
 8000d54:	f002 ff8c 	bl	8003c70 <__errno>
 8000d58:	4603      	mov	r3, r0
 8000d5a:	220c      	movs	r2, #12
 8000d5c:	601a      	str	r2, [r3, #0]
 8000d5e:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8000d62:	e009      	b.n	8000d78 <_sbrk+0x54>
 8000d64:	4b08      	ldr	r3, [pc, #32]	@ (8000d88 <_sbrk+0x64>)
 8000d66:	681b      	ldr	r3, [r3, #0]
 8000d68:	60fb      	str	r3, [r7, #12]
 8000d6a:	4b07      	ldr	r3, [pc, #28]	@ (8000d88 <_sbrk+0x64>)
 8000d6c:	681a      	ldr	r2, [r3, #0]
 8000d6e:	687b      	ldr	r3, [r7, #4]
 8000d70:	4413      	add	r3, r2
 8000d72:	4a05      	ldr	r2, [pc, #20]	@ (8000d88 <_sbrk+0x64>)
 8000d74:	6013      	str	r3, [r2, #0]
 8000d76:	68fb      	ldr	r3, [r7, #12]
 8000d78:	4618      	mov	r0, r3
 8000d7a:	3718      	adds	r7, #24
 8000d7c:	46bd      	mov	sp, r7
 8000d7e:	bd80      	pop	{r7, pc}
 8000d80:	20020000 	.word	0x20020000
 8000d84:	00000400 	.word	0x00000400
 8000d88:	20000290 	.word	0x20000290
 8000d8c:	200003c0 	.word	0x200003c0

08000d90 <SystemInit>:
 8000d90:	b480      	push	{r7}
 8000d92:	af00      	add	r7, sp, #0
 8000d94:	4b06      	ldr	r3, [pc, #24]	@ (8000db0 <SystemInit+0x20>)
 8000d96:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8000d9a:	4a05      	ldr	r2, [pc, #20]	@ (8000db0 <SystemInit+0x20>)
 8000d9c:	f443 0370 	orr.w	r3, r3, #15728640	@ 0xf00000
 8000da0:	f8c2 3088 	str.w	r3, [r2, #136]	@ 0x88
 8000da4:	bf00      	nop
 8000da6:	46bd      	mov	sp, r7
 8000da8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000dac:	4770      	bx	lr
 8000dae:	bf00      	nop
 8000db0:	e000ed00 	.word	0xe000ed00

08000db4 <MX_TIM1_Init>:
 8000db4:	b580      	push	{r7, lr}
 8000db6:	b08c      	sub	sp, #48	@ 0x30
 8000db8:	af00      	add	r7, sp, #0
 8000dba:	4b34      	ldr	r3, [pc, #208]	@ (8000e8c <MX_TIM1_Init+0xd8>)
 8000dbc:	2200      	movs	r2, #0
 8000dbe:	701a      	strb	r2, [r3, #0]
 8000dc0:	4b33      	ldr	r3, [pc, #204]	@ (8000e90 <MX_TIM1_Init+0xdc>)
 8000dc2:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000dc4:	f003 0301 	and.w	r3, r3, #1
 8000dc8:	2b00      	cmp	r3, #0
 8000dca:	d002      	beq.n	8000dd2 <MX_TIM1_Init+0x1e>
 8000dcc:	4831      	ldr	r0, [pc, #196]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000dce:	f001 fc7c 	bl	80026ca <HAL_TIM_Base_DeInit>
 8000dd2:	f107 0320 	add.w	r3, r7, #32
 8000dd6:	2200      	movs	r2, #0
 8000dd8:	601a      	str	r2, [r3, #0]
 8000dda:	605a      	str	r2, [r3, #4]
 8000ddc:	609a      	str	r2, [r3, #8]
 8000dde:	60da      	str	r2, [r3, #12]
 8000de0:	f107 0318 	add.w	r3, r7, #24
 8000de4:	2200      	movs	r2, #0
 8000de6:	601a      	str	r2, [r3, #0]
 8000de8:	605a      	str	r2, [r3, #4]
 8000dea:	1d3b      	adds	r3, r7, #4
 8000dec:	2200      	movs	r2, #0
 8000dee:	601a      	str	r2, [r3, #0]
 8000df0:	605a      	str	r2, [r3, #4]
 8000df2:	609a      	str	r2, [r3, #8]
 8000df4:	60da      	str	r2, [r3, #12]
 8000df6:	611a      	str	r2, [r3, #16]
 8000df8:	4b26      	ldr	r3, [pc, #152]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000dfa:	4a27      	ldr	r2, [pc, #156]	@ (8000e98 <MX_TIM1_Init+0xe4>)
 8000dfc:	601a      	str	r2, [r3, #0]
 8000dfe:	4b25      	ldr	r3, [pc, #148]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000e00:	2200      	movs	r2, #0
 8000e02:	605a      	str	r2, [r3, #4]
 8000e04:	4b23      	ldr	r3, [pc, #140]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000e06:	2200      	movs	r2, #0
 8000e08:	609a      	str	r2, [r3, #8]
 8000e0a:	4b22      	ldr	r3, [pc, #136]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000e0c:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 8000e10:	60da      	str	r2, [r3, #12]
 8000e12:	4b20      	ldr	r3, [pc, #128]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000e14:	2200      	movs	r2, #0
 8000e16:	611a      	str	r2, [r3, #16]
 8000e18:	4b1e      	ldr	r3, [pc, #120]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000e1a:	2200      	movs	r2, #0
 8000e1c:	619a      	str	r2, [r3, #24]
 8000e1e:	481d      	ldr	r0, [pc, #116]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000e20:	f001 fc04 	bl	800262c <HAL_TIM_Base_Init>
 8000e24:	4603      	mov	r3, r0
 8000e26:	2b00      	cmp	r3, #0
 8000e28:	d001      	beq.n	8000e2e <MX_TIM1_Init+0x7a>
 8000e2a:	f7ff fdf7 	bl	8000a1c <Error_Handler>
 8000e2e:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8000e32:	623b      	str	r3, [r7, #32]
 8000e34:	f107 0320 	add.w	r3, r7, #32
 8000e38:	4619      	mov	r1, r3
 8000e3a:	4816      	ldr	r0, [pc, #88]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000e3c:	f001 fd89 	bl	8002952 <HAL_TIM_ConfigClockSource>
 8000e40:	4603      	mov	r3, r0
 8000e42:	2b00      	cmp	r3, #0
 8000e44:	d001      	beq.n	8000e4a <MX_TIM1_Init+0x96>
 8000e46:	f7ff fde9 	bl	8000a1c <Error_Handler>
 8000e4a:	2304      	movs	r3, #4
 8000e4c:	607b      	str	r3, [r7, #4]
 8000e4e:	2310      	movs	r3, #16
 8000e50:	60bb      	str	r3, [r7, #8]
 8000e52:	1d3b      	adds	r3, r7, #4
 8000e54:	4619      	mov	r1, r3
 8000e56:	480f      	ldr	r0, [pc, #60]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000e58:	f001 fe42 	bl	8002ae0 <HAL_TIM_SlaveConfigSynchro>
 8000e5c:	4603      	mov	r3, r0
 8000e5e:	2b00      	cmp	r3, #0
 8000e60:	d001      	beq.n	8000e66 <MX_TIM1_Init+0xb2>
 8000e62:	f7ff fddb 	bl	8000a1c <Error_Handler>
 8000e66:	2320      	movs	r3, #32
 8000e68:	61bb      	str	r3, [r7, #24]
 8000e6a:	2380      	movs	r3, #128	@ 0x80
 8000e6c:	61fb      	str	r3, [r7, #28]
 8000e6e:	f107 0318 	add.w	r3, r7, #24
 8000e72:	4619      	mov	r1, r3
 8000e74:	4807      	ldr	r0, [pc, #28]	@ (8000e94 <MX_TIM1_Init+0xe0>)
 8000e76:	f002 f879 	bl	8002f6c <HAL_TIMEx_MasterConfigSynchronization>
 8000e7a:	4603      	mov	r3, r0
 8000e7c:	2b00      	cmp	r3, #0
 8000e7e:	d001      	beq.n	8000e84 <MX_TIM1_Init+0xd0>
 8000e80:	f7ff fdcc 	bl	8000a1c <Error_Handler>
 8000e84:	bf00      	nop
 8000e86:	3730      	adds	r7, #48	@ 0x30
 8000e88:	46bd      	mov	sp, r7
 8000e8a:	bd80      	pop	{r7, pc}
 8000e8c:	2000036c 	.word	0x2000036c
 8000e90:	40023800 	.word	0x40023800
 8000e94:	20000294 	.word	0x20000294
 8000e98:	40010000 	.word	0x40010000

08000e9c <MX_TIM8_Init>:
 8000e9c:	b580      	push	{r7, lr}
 8000e9e:	b08c      	sub	sp, #48	@ 0x30
 8000ea0:	af00      	add	r7, sp, #0
 8000ea2:	4b34      	ldr	r3, [pc, #208]	@ (8000f74 <MX_TIM8_Init+0xd8>)
 8000ea4:	2200      	movs	r2, #0
 8000ea6:	701a      	strb	r2, [r3, #0]
 8000ea8:	4b33      	ldr	r3, [pc, #204]	@ (8000f78 <MX_TIM8_Init+0xdc>)
 8000eaa:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8000eac:	f003 0302 	and.w	r3, r3, #2
 8000eb0:	2b00      	cmp	r3, #0
 8000eb2:	d002      	beq.n	8000eba <MX_TIM8_Init+0x1e>
 8000eb4:	4831      	ldr	r0, [pc, #196]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000eb6:	f001 fc08 	bl	80026ca <HAL_TIM_Base_DeInit>
 8000eba:	f107 0320 	add.w	r3, r7, #32
 8000ebe:	2200      	movs	r2, #0
 8000ec0:	601a      	str	r2, [r3, #0]
 8000ec2:	605a      	str	r2, [r3, #4]
 8000ec4:	609a      	str	r2, [r3, #8]
 8000ec6:	60da      	str	r2, [r3, #12]
 8000ec8:	f107 0318 	add.w	r3, r7, #24
 8000ecc:	2200      	movs	r2, #0
 8000ece:	601a      	str	r2, [r3, #0]
 8000ed0:	605a      	str	r2, [r3, #4]
 8000ed2:	1d3b      	adds	r3, r7, #4
 8000ed4:	2200      	movs	r2, #0
 8000ed6:	601a      	str	r2, [r3, #0]
 8000ed8:	605a      	str	r2, [r3, #4]
 8000eda:	609a      	str	r2, [r3, #8]
 8000edc:	60da      	str	r2, [r3, #12]
 8000ede:	611a      	str	r2, [r3, #16]
 8000ee0:	4b26      	ldr	r3, [pc, #152]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000ee2:	4a27      	ldr	r2, [pc, #156]	@ (8000f80 <MX_TIM8_Init+0xe4>)
 8000ee4:	601a      	str	r2, [r3, #0]
 8000ee6:	4b25      	ldr	r3, [pc, #148]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000ee8:	2200      	movs	r2, #0
 8000eea:	605a      	str	r2, [r3, #4]
 8000eec:	4b23      	ldr	r3, [pc, #140]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000eee:	2200      	movs	r2, #0
 8000ef0:	609a      	str	r2, [r3, #8]
 8000ef2:	4b22      	ldr	r3, [pc, #136]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000ef4:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 8000ef8:	60da      	str	r2, [r3, #12]
 8000efa:	4b20      	ldr	r3, [pc, #128]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000efc:	2200      	movs	r2, #0
 8000efe:	611a      	str	r2, [r3, #16]
 8000f00:	4b1e      	ldr	r3, [pc, #120]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000f02:	2200      	movs	r2, #0
 8000f04:	619a      	str	r2, [r3, #24]
 8000f06:	481d      	ldr	r0, [pc, #116]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000f08:	f001 fb90 	bl	800262c <HAL_TIM_Base_Init>
 8000f0c:	4603      	mov	r3, r0
 8000f0e:	2b00      	cmp	r3, #0
 8000f10:	d001      	beq.n	8000f16 <MX_TIM8_Init+0x7a>
 8000f12:	f7ff fd83 	bl	8000a1c <Error_Handler>
 8000f16:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8000f1a:	623b      	str	r3, [r7, #32]
 8000f1c:	f107 0320 	add.w	r3, r7, #32
 8000f20:	4619      	mov	r1, r3
 8000f22:	4816      	ldr	r0, [pc, #88]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000f24:	f001 fd15 	bl	8002952 <HAL_TIM_ConfigClockSource>
 8000f28:	4603      	mov	r3, r0
 8000f2a:	2b00      	cmp	r3, #0
 8000f2c:	d001      	beq.n	8000f32 <MX_TIM8_Init+0x96>
 8000f2e:	f7ff fd75 	bl	8000a1c <Error_Handler>
 8000f32:	2304      	movs	r3, #4
 8000f34:	607b      	str	r3, [r7, #4]
 8000f36:	2310      	movs	r3, #16
 8000f38:	60bb      	str	r3, [r7, #8]
 8000f3a:	1d3b      	adds	r3, r7, #4
 8000f3c:	4619      	mov	r1, r3
 8000f3e:	480f      	ldr	r0, [pc, #60]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000f40:	f001 fdce 	bl	8002ae0 <HAL_TIM_SlaveConfigSynchro>
 8000f44:	4603      	mov	r3, r0
 8000f46:	2b00      	cmp	r3, #0
 8000f48:	d001      	beq.n	8000f4e <MX_TIM8_Init+0xb2>
 8000f4a:	f7ff fd67 	bl	8000a1c <Error_Handler>
 8000f4e:	2320      	movs	r3, #32
 8000f50:	61bb      	str	r3, [r7, #24]
 8000f52:	2380      	movs	r3, #128	@ 0x80
 8000f54:	61fb      	str	r3, [r7, #28]
 8000f56:	f107 0318 	add.w	r3, r7, #24
 8000f5a:	4619      	mov	r1, r3
 8000f5c:	4807      	ldr	r0, [pc, #28]	@ (8000f7c <MX_TIM8_Init+0xe0>)
 8000f5e:	f002 f805 	bl	8002f6c <HAL_TIMEx_MasterConfigSynchronization>
 8000f62:	4603      	mov	r3, r0
 8000f64:	2b00      	cmp	r3, #0
 8000f66:	d001      	beq.n	8000f6c <MX_TIM8_Init+0xd0>
 8000f68:	f7ff fd58 	bl	8000a1c <Error_Handler>
 8000f6c:	bf00      	nop
 8000f6e:	3730      	adds	r7, #48	@ 0x30
 8000f70:	46bd      	mov	sp, r7
 8000f72:	bd80      	pop	{r7, pc}
 8000f74:	2000036d 	.word	0x2000036d
 8000f78:	40023800 	.word	0x40023800
 8000f7c:	200002dc 	.word	0x200002dc
 8000f80:	40010400 	.word	0x40010400

08000f84 <MX_TIM9_Init>:
 8000f84:	b580      	push	{r7, lr}
 8000f86:	b086      	sub	sp, #24
 8000f88:	af00      	add	r7, sp, #0
 8000f8a:	f107 0308 	add.w	r3, r7, #8
 8000f8e:	2200      	movs	r2, #0
 8000f90:	601a      	str	r2, [r3, #0]
 8000f92:	605a      	str	r2, [r3, #4]
 8000f94:	609a      	str	r2, [r3, #8]
 8000f96:	60da      	str	r2, [r3, #12]
 8000f98:	463b      	mov	r3, r7
 8000f9a:	2200      	movs	r2, #0
 8000f9c:	601a      	str	r2, [r3, #0]
 8000f9e:	605a      	str	r2, [r3, #4]
 8000fa0:	4b1d      	ldr	r3, [pc, #116]	@ (8001018 <MX_TIM9_Init+0x94>)
 8000fa2:	4a1e      	ldr	r2, [pc, #120]	@ (800101c <MX_TIM9_Init+0x98>)
 8000fa4:	601a      	str	r2, [r3, #0]
 8000fa6:	4b1c      	ldr	r3, [pc, #112]	@ (8001018 <MX_TIM9_Init+0x94>)
 8000fa8:	2200      	movs	r2, #0
 8000faa:	605a      	str	r2, [r3, #4]
 8000fac:	4b1a      	ldr	r3, [pc, #104]	@ (8001018 <MX_TIM9_Init+0x94>)
 8000fae:	2200      	movs	r2, #0
 8000fb0:	609a      	str	r2, [r3, #8]
 8000fb2:	4b19      	ldr	r3, [pc, #100]	@ (8001018 <MX_TIM9_Init+0x94>)
 8000fb4:	f64f 72ff 	movw	r2, #65535	@ 0xffff
 8000fb8:	60da      	str	r2, [r3, #12]
 8000fba:	4b17      	ldr	r3, [pc, #92]	@ (8001018 <MX_TIM9_Init+0x94>)
 8000fbc:	2200      	movs	r2, #0
 8000fbe:	611a      	str	r2, [r3, #16]
 8000fc0:	4b15      	ldr	r3, [pc, #84]	@ (8001018 <MX_TIM9_Init+0x94>)
 8000fc2:	2200      	movs	r2, #0
 8000fc4:	619a      	str	r2, [r3, #24]
 8000fc6:	4814      	ldr	r0, [pc, #80]	@ (8001018 <MX_TIM9_Init+0x94>)
 8000fc8:	f001 fb30 	bl	800262c <HAL_TIM_Base_Init>
 8000fcc:	4603      	mov	r3, r0
 8000fce:	2b00      	cmp	r3, #0
 8000fd0:	d001      	beq.n	8000fd6 <MX_TIM9_Init+0x52>
 8000fd2:	f7ff fd23 	bl	8000a1c <Error_Handler>
 8000fd6:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8000fda:	60bb      	str	r3, [r7, #8]
 8000fdc:	f107 0308 	add.w	r3, r7, #8
 8000fe0:	4619      	mov	r1, r3
 8000fe2:	480d      	ldr	r0, [pc, #52]	@ (8001018 <MX_TIM9_Init+0x94>)
 8000fe4:	f001 fcb5 	bl	8002952 <HAL_TIM_ConfigClockSource>
 8000fe8:	4603      	mov	r3, r0
 8000fea:	2b00      	cmp	r3, #0
 8000fec:	d001      	beq.n	8000ff2 <MX_TIM9_Init+0x6e>
 8000fee:	f7ff fd15 	bl	8000a1c <Error_Handler>
 8000ff2:	2300      	movs	r3, #0
 8000ff4:	603b      	str	r3, [r7, #0]
 8000ff6:	2300      	movs	r3, #0
 8000ff8:	607b      	str	r3, [r7, #4]
 8000ffa:	463b      	mov	r3, r7
 8000ffc:	4619      	mov	r1, r3
 8000ffe:	4806      	ldr	r0, [pc, #24]	@ (8001018 <MX_TIM9_Init+0x94>)
 8001000:	f001 ffb4 	bl	8002f6c <HAL_TIMEx_MasterConfigSynchronization>
 8001004:	4603      	mov	r3, r0
 8001006:	2b00      	cmp	r3, #0
 8001008:	d001      	beq.n	800100e <MX_TIM9_Init+0x8a>
 800100a:	f7ff fd07 	bl	8000a1c <Error_Handler>
 800100e:	bf00      	nop
 8001010:	3718      	adds	r7, #24
 8001012:	46bd      	mov	sp, r7
 8001014:	bd80      	pop	{r7, pc}
 8001016:	bf00      	nop
 8001018:	20000324 	.word	0x20000324
 800101c:	40014000 	.word	0x40014000

08001020 <HAL_TIM_Base_MspInit>:
 8001020:	b580      	push	{r7, lr}
 8001022:	b086      	sub	sp, #24
 8001024:	af00      	add	r7, sp, #0
 8001026:	6078      	str	r0, [r7, #4]
 8001028:	687b      	ldr	r3, [r7, #4]
 800102a:	681b      	ldr	r3, [r3, #0]
 800102c:	4a57      	ldr	r2, [pc, #348]	@ (800118c <HAL_TIM_Base_MspInit+0x16c>)
 800102e:	4293      	cmp	r3, r2
 8001030:	d149      	bne.n	80010c6 <HAL_TIM_Base_MspInit+0xa6>
 8001032:	2300      	movs	r3, #0
 8001034:	617b      	str	r3, [r7, #20]
 8001036:	4b56      	ldr	r3, [pc, #344]	@ (8001190 <HAL_TIM_Base_MspInit+0x170>)
 8001038:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800103a:	4a55      	ldr	r2, [pc, #340]	@ (8001190 <HAL_TIM_Base_MspInit+0x170>)
 800103c:	f043 0301 	orr.w	r3, r3, #1
 8001040:	6453      	str	r3, [r2, #68]	@ 0x44
 8001042:	4b53      	ldr	r3, [pc, #332]	@ (8001190 <HAL_TIM_Base_MspInit+0x170>)
 8001044:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001046:	f003 0301 	and.w	r3, r3, #1
 800104a:	617b      	str	r3, [r7, #20]
 800104c:	697b      	ldr	r3, [r7, #20]
 800104e:	4b51      	ldr	r3, [pc, #324]	@ (8001194 <HAL_TIM_Base_MspInit+0x174>)
 8001050:	781b      	ldrb	r3, [r3, #0]
 8001052:	2b01      	cmp	r3, #1
 8001054:	d107      	bne.n	8001066 <HAL_TIM_Base_MspInit+0x46>
 8001056:	2200      	movs	r2, #0
 8001058:	2100      	movs	r1, #0
 800105a:	201b      	movs	r0, #27
 800105c:	f000 fb0d 	bl	800167a <HAL_NVIC_SetPriority>
 8001060:	201b      	movs	r0, #27
 8001062:	f000 fb26 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 8001066:	4b4b      	ldr	r3, [pc, #300]	@ (8001194 <HAL_TIM_Base_MspInit+0x174>)
 8001068:	781b      	ldrb	r3, [r3, #0]
 800106a:	2b02      	cmp	r3, #2
 800106c:	d107      	bne.n	800107e <HAL_TIM_Base_MspInit+0x5e>
 800106e:	2200      	movs	r2, #0
 8001070:	2100      	movs	r1, #0
 8001072:	2019      	movs	r0, #25
 8001074:	f000 fb01 	bl	800167a <HAL_NVIC_SetPriority>
 8001078:	2019      	movs	r0, #25
 800107a:	f000 fb1a 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 800107e:	4b45      	ldr	r3, [pc, #276]	@ (8001194 <HAL_TIM_Base_MspInit+0x174>)
 8001080:	781b      	ldrb	r3, [r3, #0]
 8001082:	2b03      	cmp	r3, #3
 8001084:	d107      	bne.n	8001096 <HAL_TIM_Base_MspInit+0x76>
 8001086:	2200      	movs	r2, #0
 8001088:	2100      	movs	r1, #0
 800108a:	2018      	movs	r0, #24
 800108c:	f000 faf5 	bl	800167a <HAL_NVIC_SetPriority>
 8001090:	2018      	movs	r0, #24
 8001092:	f000 fb0e 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 8001096:	4b3f      	ldr	r3, [pc, #252]	@ (8001194 <HAL_TIM_Base_MspInit+0x174>)
 8001098:	781b      	ldrb	r3, [r3, #0]
 800109a:	2b04      	cmp	r3, #4
 800109c:	d107      	bne.n	80010ae <HAL_TIM_Base_MspInit+0x8e>
 800109e:	2200      	movs	r2, #0
 80010a0:	2100      	movs	r1, #0
 80010a2:	2019      	movs	r0, #25
 80010a4:	f000 fae9 	bl	800167a <HAL_NVIC_SetPriority>
 80010a8:	2019      	movs	r0, #25
 80010aa:	f000 fb02 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 80010ae:	4b39      	ldr	r3, [pc, #228]	@ (8001194 <HAL_TIM_Base_MspInit+0x174>)
 80010b0:	781b      	ldrb	r3, [r3, #0]
 80010b2:	2b05      	cmp	r3, #5
 80010b4:	d107      	bne.n	80010c6 <HAL_TIM_Base_MspInit+0xa6>
 80010b6:	2200      	movs	r2, #0
 80010b8:	2100      	movs	r1, #0
 80010ba:	2019      	movs	r0, #25
 80010bc:	f000 fadd 	bl	800167a <HAL_NVIC_SetPriority>
 80010c0:	2019      	movs	r0, #25
 80010c2:	f000 faf6 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 80010c6:	687b      	ldr	r3, [r7, #4]
 80010c8:	681b      	ldr	r3, [r3, #0]
 80010ca:	4a33      	ldr	r2, [pc, #204]	@ (8001198 <HAL_TIM_Base_MspInit+0x178>)
 80010cc:	4293      	cmp	r3, r2
 80010ce:	d13d      	bne.n	800114c <HAL_TIM_Base_MspInit+0x12c>
 80010d0:	2300      	movs	r3, #0
 80010d2:	613b      	str	r3, [r7, #16]
 80010d4:	4b2e      	ldr	r3, [pc, #184]	@ (8001190 <HAL_TIM_Base_MspInit+0x170>)
 80010d6:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 80010d8:	4a2d      	ldr	r2, [pc, #180]	@ (8001190 <HAL_TIM_Base_MspInit+0x170>)
 80010da:	f043 0302 	orr.w	r3, r3, #2
 80010de:	6453      	str	r3, [r2, #68]	@ 0x44
 80010e0:	4b2b      	ldr	r3, [pc, #172]	@ (8001190 <HAL_TIM_Base_MspInit+0x170>)
 80010e2:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 80010e4:	f003 0302 	and.w	r3, r3, #2
 80010e8:	613b      	str	r3, [r7, #16]
 80010ea:	693b      	ldr	r3, [r7, #16]
 80010ec:	4b2b      	ldr	r3, [pc, #172]	@ (800119c <HAL_TIM_Base_MspInit+0x17c>)
 80010ee:	781b      	ldrb	r3, [r3, #0]
 80010f0:	2b01      	cmp	r3, #1
 80010f2:	d107      	bne.n	8001104 <HAL_TIM_Base_MspInit+0xe4>
 80010f4:	2200      	movs	r2, #0
 80010f6:	2100      	movs	r1, #0
 80010f8:	202b      	movs	r0, #43	@ 0x2b
 80010fa:	f000 fabe 	bl	800167a <HAL_NVIC_SetPriority>
 80010fe:	202b      	movs	r0, #43	@ 0x2b
 8001100:	f000 fad7 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 8001104:	4b25      	ldr	r3, [pc, #148]	@ (800119c <HAL_TIM_Base_MspInit+0x17c>)
 8001106:	781b      	ldrb	r3, [r3, #0]
 8001108:	2b02      	cmp	r3, #2
 800110a:	d107      	bne.n	800111c <HAL_TIM_Base_MspInit+0xfc>
 800110c:	2200      	movs	r2, #0
 800110e:	2100      	movs	r1, #0
 8001110:	202e      	movs	r0, #46	@ 0x2e
 8001112:	f000 fab2 	bl	800167a <HAL_NVIC_SetPriority>
 8001116:	202e      	movs	r0, #46	@ 0x2e
 8001118:	f000 facb 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 800111c:	4b1f      	ldr	r3, [pc, #124]	@ (800119c <HAL_TIM_Base_MspInit+0x17c>)
 800111e:	781b      	ldrb	r3, [r3, #0]
 8001120:	2b03      	cmp	r3, #3
 8001122:	d107      	bne.n	8001134 <HAL_TIM_Base_MspInit+0x114>
 8001124:	2200      	movs	r2, #0
 8001126:	2100      	movs	r1, #0
 8001128:	202c      	movs	r0, #44	@ 0x2c
 800112a:	f000 faa6 	bl	800167a <HAL_NVIC_SetPriority>
 800112e:	202c      	movs	r0, #44	@ 0x2c
 8001130:	f000 fabf 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 8001134:	4b19      	ldr	r3, [pc, #100]	@ (800119c <HAL_TIM_Base_MspInit+0x17c>)
 8001136:	781b      	ldrb	r3, [r3, #0]
 8001138:	2b04      	cmp	r3, #4
 800113a:	d107      	bne.n	800114c <HAL_TIM_Base_MspInit+0x12c>
 800113c:	2200      	movs	r2, #0
 800113e:	2100      	movs	r1, #0
 8001140:	202c      	movs	r0, #44	@ 0x2c
 8001142:	f000 fa9a 	bl	800167a <HAL_NVIC_SetPriority>
 8001146:	202c      	movs	r0, #44	@ 0x2c
 8001148:	f000 fab3 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 800114c:	687b      	ldr	r3, [r7, #4]
 800114e:	681b      	ldr	r3, [r3, #0]
 8001150:	4a13      	ldr	r2, [pc, #76]	@ (80011a0 <HAL_TIM_Base_MspInit+0x180>)
 8001152:	4293      	cmp	r3, r2
 8001154:	d115      	bne.n	8001182 <HAL_TIM_Base_MspInit+0x162>
 8001156:	2300      	movs	r3, #0
 8001158:	60fb      	str	r3, [r7, #12]
 800115a:	4b0d      	ldr	r3, [pc, #52]	@ (8001190 <HAL_TIM_Base_MspInit+0x170>)
 800115c:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800115e:	4a0c      	ldr	r2, [pc, #48]	@ (8001190 <HAL_TIM_Base_MspInit+0x170>)
 8001160:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001164:	6453      	str	r3, [r2, #68]	@ 0x44
 8001166:	4b0a      	ldr	r3, [pc, #40]	@ (8001190 <HAL_TIM_Base_MspInit+0x170>)
 8001168:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800116a:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 800116e:	60fb      	str	r3, [r7, #12]
 8001170:	68fb      	ldr	r3, [r7, #12]
 8001172:	2200      	movs	r2, #0
 8001174:	2100      	movs	r1, #0
 8001176:	2018      	movs	r0, #24
 8001178:	f000 fa7f 	bl	800167a <HAL_NVIC_SetPriority>
 800117c:	2018      	movs	r0, #24
 800117e:	f000 fa98 	bl	80016b2 <HAL_NVIC_EnableIRQ>
 8001182:	bf00      	nop
 8001184:	3718      	adds	r7, #24
 8001186:	46bd      	mov	sp, r7
 8001188:	bd80      	pop	{r7, pc}
 800118a:	bf00      	nop
 800118c:	40010000 	.word	0x40010000
 8001190:	40023800 	.word	0x40023800
 8001194:	2000036c 	.word	0x2000036c
 8001198:	40010400 	.word	0x40010400
 800119c:	2000036d 	.word	0x2000036d
 80011a0:	40014000 	.word	0x40014000

080011a4 <HAL_TIM_Base_MspDeInit>:
 80011a4:	b580      	push	{r7, lr}
 80011a6:	b082      	sub	sp, #8
 80011a8:	af00      	add	r7, sp, #0
 80011aa:	6078      	str	r0, [r7, #4]
 80011ac:	687b      	ldr	r3, [r7, #4]
 80011ae:	681b      	ldr	r3, [r3, #0]
 80011b0:	4a32      	ldr	r2, [pc, #200]	@ (800127c <HAL_TIM_Base_MspDeInit+0xd8>)
 80011b2:	4293      	cmp	r3, r2
 80011b4:	d128      	bne.n	8001208 <HAL_TIM_Base_MspDeInit+0x64>
 80011b6:	4b32      	ldr	r3, [pc, #200]	@ (8001280 <HAL_TIM_Base_MspDeInit+0xdc>)
 80011b8:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 80011ba:	4a31      	ldr	r2, [pc, #196]	@ (8001280 <HAL_TIM_Base_MspDeInit+0xdc>)
 80011bc:	f023 0301 	bic.w	r3, r3, #1
 80011c0:	6453      	str	r3, [r2, #68]	@ 0x44
 80011c2:	4b30      	ldr	r3, [pc, #192]	@ (8001284 <HAL_TIM_Base_MspDeInit+0xe0>)
 80011c4:	781b      	ldrb	r3, [r3, #0]
 80011c6:	2b01      	cmp	r3, #1
 80011c8:	d102      	bne.n	80011d0 <HAL_TIM_Base_MspDeInit+0x2c>
 80011ca:	201b      	movs	r0, #27
 80011cc:	f000 fa7f 	bl	80016ce <HAL_NVIC_DisableIRQ>
 80011d0:	4b2c      	ldr	r3, [pc, #176]	@ (8001284 <HAL_TIM_Base_MspDeInit+0xe0>)
 80011d2:	781b      	ldrb	r3, [r3, #0]
 80011d4:	2b02      	cmp	r3, #2
 80011d6:	d102      	bne.n	80011de <HAL_TIM_Base_MspDeInit+0x3a>
 80011d8:	2019      	movs	r0, #25
 80011da:	f000 fa78 	bl	80016ce <HAL_NVIC_DisableIRQ>
 80011de:	4b29      	ldr	r3, [pc, #164]	@ (8001284 <HAL_TIM_Base_MspDeInit+0xe0>)
 80011e0:	781b      	ldrb	r3, [r3, #0]
 80011e2:	2b03      	cmp	r3, #3
 80011e4:	d102      	bne.n	80011ec <HAL_TIM_Base_MspDeInit+0x48>
 80011e6:	2018      	movs	r0, #24
 80011e8:	f000 fa71 	bl	80016ce <HAL_NVIC_DisableIRQ>
 80011ec:	4b25      	ldr	r3, [pc, #148]	@ (8001284 <HAL_TIM_Base_MspDeInit+0xe0>)
 80011ee:	781b      	ldrb	r3, [r3, #0]
 80011f0:	2b04      	cmp	r3, #4
 80011f2:	d102      	bne.n	80011fa <HAL_TIM_Base_MspDeInit+0x56>
 80011f4:	2019      	movs	r0, #25
 80011f6:	f000 fa6a 	bl	80016ce <HAL_NVIC_DisableIRQ>
 80011fa:	4b22      	ldr	r3, [pc, #136]	@ (8001284 <HAL_TIM_Base_MspDeInit+0xe0>)
 80011fc:	781b      	ldrb	r3, [r3, #0]
 80011fe:	2b05      	cmp	r3, #5
 8001200:	d102      	bne.n	8001208 <HAL_TIM_Base_MspDeInit+0x64>
 8001202:	2019      	movs	r0, #25
 8001204:	f000 fa63 	bl	80016ce <HAL_NVIC_DisableIRQ>
 8001208:	687b      	ldr	r3, [r7, #4]
 800120a:	681b      	ldr	r3, [r3, #0]
 800120c:	4a1e      	ldr	r2, [pc, #120]	@ (8001288 <HAL_TIM_Base_MspDeInit+0xe4>)
 800120e:	4293      	cmp	r3, r2
 8001210:	d121      	bne.n	8001256 <HAL_TIM_Base_MspDeInit+0xb2>
 8001212:	4b1b      	ldr	r3, [pc, #108]	@ (8001280 <HAL_TIM_Base_MspDeInit+0xdc>)
 8001214:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001216:	4a1a      	ldr	r2, [pc, #104]	@ (8001280 <HAL_TIM_Base_MspDeInit+0xdc>)
 8001218:	f023 0302 	bic.w	r3, r3, #2
 800121c:	6453      	str	r3, [r2, #68]	@ 0x44
 800121e:	4b1b      	ldr	r3, [pc, #108]	@ (800128c <HAL_TIM_Base_MspDeInit+0xe8>)
 8001220:	781b      	ldrb	r3, [r3, #0]
 8001222:	2b01      	cmp	r3, #1
 8001224:	d102      	bne.n	800122c <HAL_TIM_Base_MspDeInit+0x88>
 8001226:	202b      	movs	r0, #43	@ 0x2b
 8001228:	f000 fa51 	bl	80016ce <HAL_NVIC_DisableIRQ>
 800122c:	4b17      	ldr	r3, [pc, #92]	@ (800128c <HAL_TIM_Base_MspDeInit+0xe8>)
 800122e:	781b      	ldrb	r3, [r3, #0]
 8001230:	2b02      	cmp	r3, #2
 8001232:	d102      	bne.n	800123a <HAL_TIM_Base_MspDeInit+0x96>
 8001234:	202e      	movs	r0, #46	@ 0x2e
 8001236:	f000 fa4a 	bl	80016ce <HAL_NVIC_DisableIRQ>
 800123a:	4b14      	ldr	r3, [pc, #80]	@ (800128c <HAL_TIM_Base_MspDeInit+0xe8>)
 800123c:	781b      	ldrb	r3, [r3, #0]
 800123e:	2b03      	cmp	r3, #3
 8001240:	d102      	bne.n	8001248 <HAL_TIM_Base_MspDeInit+0xa4>
 8001242:	202c      	movs	r0, #44	@ 0x2c
 8001244:	f000 fa43 	bl	80016ce <HAL_NVIC_DisableIRQ>
 8001248:	4b10      	ldr	r3, [pc, #64]	@ (800128c <HAL_TIM_Base_MspDeInit+0xe8>)
 800124a:	781b      	ldrb	r3, [r3, #0]
 800124c:	2b04      	cmp	r3, #4
 800124e:	d102      	bne.n	8001256 <HAL_TIM_Base_MspDeInit+0xb2>
 8001250:	202c      	movs	r0, #44	@ 0x2c
 8001252:	f000 fa3c 	bl	80016ce <HAL_NVIC_DisableIRQ>
 8001256:	687b      	ldr	r3, [r7, #4]
 8001258:	681b      	ldr	r3, [r3, #0]
 800125a:	4a0d      	ldr	r2, [pc, #52]	@ (8001290 <HAL_TIM_Base_MspDeInit+0xec>)
 800125c:	4293      	cmp	r3, r2
 800125e:	d108      	bne.n	8001272 <HAL_TIM_Base_MspDeInit+0xce>
 8001260:	4b07      	ldr	r3, [pc, #28]	@ (8001280 <HAL_TIM_Base_MspDeInit+0xdc>)
 8001262:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001264:	4a06      	ldr	r2, [pc, #24]	@ (8001280 <HAL_TIM_Base_MspDeInit+0xdc>)
 8001266:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 800126a:	6453      	str	r3, [r2, #68]	@ 0x44
 800126c:	2018      	movs	r0, #24
 800126e:	f000 fa2e 	bl	80016ce <HAL_NVIC_DisableIRQ>
 8001272:	bf00      	nop
 8001274:	3708      	adds	r7, #8
 8001276:	46bd      	mov	sp, r7
 8001278:	bd80      	pop	{r7, pc}
 800127a:	bf00      	nop
 800127c:	40010000 	.word	0x40010000
 8001280:	40023800 	.word	0x40023800
 8001284:	2000036c 	.word	0x2000036c
 8001288:	40010400 	.word	0x40010400
 800128c:	2000036d 	.word	0x2000036d
 8001290:	40014000 	.word	0x40014000

08001294 <__io_putchar>:
 8001294:	b580      	push	{r7, lr}
 8001296:	b082      	sub	sp, #8
 8001298:	af00      	add	r7, sp, #0
 800129a:	6078      	str	r0, [r7, #4]
 800129c:	1d39      	adds	r1, r7, #4
 800129e:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 80012a2:	2201      	movs	r2, #1
 80012a4:	4803      	ldr	r0, [pc, #12]	@ (80012b4 <__io_putchar+0x20>)
 80012a6:	f001 ff41 	bl	800312c <HAL_UART_Transmit>
 80012aa:	687b      	ldr	r3, [r7, #4]
 80012ac:	4618      	mov	r0, r3
 80012ae:	3708      	adds	r7, #8
 80012b0:	46bd      	mov	sp, r7
 80012b2:	bd80      	pop	{r7, pc}
 80012b4:	20000370 	.word	0x20000370

080012b8 <MX_USART2_Init>:
 80012b8:	b580      	push	{r7, lr}
 80012ba:	af00      	add	r7, sp, #0
 80012bc:	4b11      	ldr	r3, [pc, #68]	@ (8001304 <MX_USART2_Init+0x4c>)
 80012be:	4a12      	ldr	r2, [pc, #72]	@ (8001308 <MX_USART2_Init+0x50>)
 80012c0:	601a      	str	r2, [r3, #0]
 80012c2:	4b10      	ldr	r3, [pc, #64]	@ (8001304 <MX_USART2_Init+0x4c>)
 80012c4:	f44f 32e1 	mov.w	r2, #115200	@ 0x1c200
 80012c8:	605a      	str	r2, [r3, #4]
 80012ca:	4b0e      	ldr	r3, [pc, #56]	@ (8001304 <MX_USART2_Init+0x4c>)
 80012cc:	220c      	movs	r2, #12
 80012ce:	615a      	str	r2, [r3, #20]
 80012d0:	4b0c      	ldr	r3, [pc, #48]	@ (8001304 <MX_USART2_Init+0x4c>)
 80012d2:	2200      	movs	r2, #0
 80012d4:	609a      	str	r2, [r3, #8]
 80012d6:	4b0b      	ldr	r3, [pc, #44]	@ (8001304 <MX_USART2_Init+0x4c>)
 80012d8:	2200      	movs	r2, #0
 80012da:	60da      	str	r2, [r3, #12]
 80012dc:	4b09      	ldr	r3, [pc, #36]	@ (8001304 <MX_USART2_Init+0x4c>)
 80012de:	2200      	movs	r2, #0
 80012e0:	611a      	str	r2, [r3, #16]
 80012e2:	4b08      	ldr	r3, [pc, #32]	@ (8001304 <MX_USART2_Init+0x4c>)
 80012e4:	2200      	movs	r2, #0
 80012e6:	619a      	str	r2, [r3, #24]
 80012e8:	4b06      	ldr	r3, [pc, #24]	@ (8001304 <MX_USART2_Init+0x4c>)
 80012ea:	2200      	movs	r2, #0
 80012ec:	61da      	str	r2, [r3, #28]
 80012ee:	4805      	ldr	r0, [pc, #20]	@ (8001304 <MX_USART2_Init+0x4c>)
 80012f0:	f001 fecc 	bl	800308c <HAL_UART_Init>
 80012f4:	4603      	mov	r3, r0
 80012f6:	2b00      	cmp	r3, #0
 80012f8:	d001      	beq.n	80012fe <MX_USART2_Init+0x46>
 80012fa:	f7ff fb8f 	bl	8000a1c <Error_Handler>
 80012fe:	bf00      	nop
 8001300:	bd80      	pop	{r7, pc}
 8001302:	bf00      	nop
 8001304:	20000370 	.word	0x20000370
 8001308:	40004400 	.word	0x40004400

0800130c <HAL_UART_MspInit>:
 800130c:	b580      	push	{r7, lr}
 800130e:	b08a      	sub	sp, #40	@ 0x28
 8001310:	af00      	add	r7, sp, #0
 8001312:	6078      	str	r0, [r7, #4]
 8001314:	f107 0314 	add.w	r3, r7, #20
 8001318:	2200      	movs	r2, #0
 800131a:	601a      	str	r2, [r3, #0]
 800131c:	605a      	str	r2, [r3, #4]
 800131e:	609a      	str	r2, [r3, #8]
 8001320:	60da      	str	r2, [r3, #12]
 8001322:	611a      	str	r2, [r3, #16]
 8001324:	687b      	ldr	r3, [r7, #4]
 8001326:	681b      	ldr	r3, [r3, #0]
 8001328:	4a18      	ldr	r2, [pc, #96]	@ (800138c <HAL_UART_MspInit+0x80>)
 800132a:	4293      	cmp	r3, r2
 800132c:	d129      	bne.n	8001382 <HAL_UART_MspInit+0x76>
 800132e:	2300      	movs	r3, #0
 8001330:	613b      	str	r3, [r7, #16]
 8001332:	4b17      	ldr	r3, [pc, #92]	@ (8001390 <HAL_UART_MspInit+0x84>)
 8001334:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001336:	4a16      	ldr	r2, [pc, #88]	@ (8001390 <HAL_UART_MspInit+0x84>)
 8001338:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 800133c:	6413      	str	r3, [r2, #64]	@ 0x40
 800133e:	4b14      	ldr	r3, [pc, #80]	@ (8001390 <HAL_UART_MspInit+0x84>)
 8001340:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001342:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8001346:	613b      	str	r3, [r7, #16]
 8001348:	693b      	ldr	r3, [r7, #16]
 800134a:	2300      	movs	r3, #0
 800134c:	60fb      	str	r3, [r7, #12]
 800134e:	4b10      	ldr	r3, [pc, #64]	@ (8001390 <HAL_UART_MspInit+0x84>)
 8001350:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001352:	4a0f      	ldr	r2, [pc, #60]	@ (8001390 <HAL_UART_MspInit+0x84>)
 8001354:	f043 0301 	orr.w	r3, r3, #1
 8001358:	6313      	str	r3, [r2, #48]	@ 0x30
 800135a:	4b0d      	ldr	r3, [pc, #52]	@ (8001390 <HAL_UART_MspInit+0x84>)
 800135c:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800135e:	f003 0301 	and.w	r3, r3, #1
 8001362:	60fb      	str	r3, [r7, #12]
 8001364:	68fb      	ldr	r3, [r7, #12]
 8001366:	230c      	movs	r3, #12
 8001368:	617b      	str	r3, [r7, #20]
 800136a:	2302      	movs	r3, #2
 800136c:	61bb      	str	r3, [r7, #24]
 800136e:	2303      	movs	r3, #3
 8001370:	623b      	str	r3, [r7, #32]
 8001372:	2307      	movs	r3, #7
 8001374:	627b      	str	r3, [r7, #36]	@ 0x24
 8001376:	f107 0314 	add.w	r3, r7, #20
 800137a:	4619      	mov	r1, r3
 800137c:	4805      	ldr	r0, [pc, #20]	@ (8001394 <HAL_UART_MspInit+0x88>)
 800137e:	f000 fb21 	bl	80019c4 <HAL_GPIO_Init>
 8001382:	bf00      	nop
 8001384:	3728      	adds	r7, #40	@ 0x28
 8001386:	46bd      	mov	sp, r7
 8001388:	bd80      	pop	{r7, pc}
 800138a:	bf00      	nop
 800138c:	40004400 	.word	0x40004400
 8001390:	40023800 	.word	0x40023800
 8001394:	40020000 	.word	0x40020000

08001398 <HAL_Init>:
 8001398:	b580      	push	{r7, lr}
 800139a:	af00      	add	r7, sp, #0
 800139c:	4b0e      	ldr	r3, [pc, #56]	@ (80013d8 <HAL_Init+0x40>)
 800139e:	681b      	ldr	r3, [r3, #0]
 80013a0:	4a0d      	ldr	r2, [pc, #52]	@ (80013d8 <HAL_Init+0x40>)
 80013a2:	f443 7300 	orr.w	r3, r3, #512	@ 0x200
 80013a6:	6013      	str	r3, [r2, #0]
 80013a8:	4b0b      	ldr	r3, [pc, #44]	@ (80013d8 <HAL_Init+0x40>)
 80013aa:	681b      	ldr	r3, [r3, #0]
 80013ac:	4a0a      	ldr	r2, [pc, #40]	@ (80013d8 <HAL_Init+0x40>)
 80013ae:	f443 6380 	orr.w	r3, r3, #1024	@ 0x400
 80013b2:	6013      	str	r3, [r2, #0]
 80013b4:	4b08      	ldr	r3, [pc, #32]	@ (80013d8 <HAL_Init+0x40>)
 80013b6:	681b      	ldr	r3, [r3, #0]
 80013b8:	4a07      	ldr	r2, [pc, #28]	@ (80013d8 <HAL_Init+0x40>)
 80013ba:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 80013be:	6013      	str	r3, [r2, #0]
 80013c0:	2003      	movs	r0, #3
 80013c2:	f000 f94f 	bl	8001664 <HAL_NVIC_SetPriorityGrouping>
 80013c6:	2000      	movs	r0, #0
 80013c8:	f000 f808 	bl	80013dc <HAL_InitTick>
 80013cc:	f7ff fb96 	bl	8000afc <HAL_MspInit>
 80013d0:	2300      	movs	r3, #0
 80013d2:	4618      	mov	r0, r3
 80013d4:	bd80      	pop	{r7, pc}
 80013d6:	bf00      	nop
 80013d8:	40023c00 	.word	0x40023c00

080013dc <HAL_InitTick>:
 80013dc:	b580      	push	{r7, lr}
 80013de:	b082      	sub	sp, #8
 80013e0:	af00      	add	r7, sp, #0
 80013e2:	6078      	str	r0, [r7, #4]
 80013e4:	4b12      	ldr	r3, [pc, #72]	@ (8001430 <HAL_InitTick+0x54>)
 80013e6:	681a      	ldr	r2, [r3, #0]
 80013e8:	4b12      	ldr	r3, [pc, #72]	@ (8001434 <HAL_InitTick+0x58>)
 80013ea:	781b      	ldrb	r3, [r3, #0]
 80013ec:	4619      	mov	r1, r3
 80013ee:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
 80013f2:	fbb3 f3f1 	udiv	r3, r3, r1
 80013f6:	fbb2 f3f3 	udiv	r3, r2, r3
 80013fa:	4618      	mov	r0, r3
 80013fc:	f000 f975 	bl	80016ea <HAL_SYSTICK_Config>
 8001400:	4603      	mov	r3, r0
 8001402:	2b00      	cmp	r3, #0
 8001404:	d001      	beq.n	800140a <HAL_InitTick+0x2e>
 8001406:	2301      	movs	r3, #1
 8001408:	e00e      	b.n	8001428 <HAL_InitTick+0x4c>
 800140a:	687b      	ldr	r3, [r7, #4]
 800140c:	2b0f      	cmp	r3, #15
 800140e:	d80a      	bhi.n	8001426 <HAL_InitTick+0x4a>
 8001410:	2200      	movs	r2, #0
 8001412:	6879      	ldr	r1, [r7, #4]
 8001414:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8001418:	f000 f92f 	bl	800167a <HAL_NVIC_SetPriority>
 800141c:	4a06      	ldr	r2, [pc, #24]	@ (8001438 <HAL_InitTick+0x5c>)
 800141e:	687b      	ldr	r3, [r7, #4]
 8001420:	6013      	str	r3, [r2, #0]
 8001422:	2300      	movs	r3, #0
 8001424:	e000      	b.n	8001428 <HAL_InitTick+0x4c>
 8001426:	2301      	movs	r3, #1
 8001428:	4618      	mov	r0, r3
 800142a:	3708      	adds	r7, #8
 800142c:	46bd      	mov	sp, r7
 800142e:	bd80      	pop	{r7, pc}
 8001430:	2000005c 	.word	0x2000005c
 8001434:	20000064 	.word	0x20000064
 8001438:	20000060 	.word	0x20000060

0800143c <HAL_IncTick>:
 800143c:	b480      	push	{r7}
 800143e:	af00      	add	r7, sp, #0
 8001440:	4b06      	ldr	r3, [pc, #24]	@ (800145c <HAL_IncTick+0x20>)
 8001442:	781b      	ldrb	r3, [r3, #0]
 8001444:	461a      	mov	r2, r3
 8001446:	4b06      	ldr	r3, [pc, #24]	@ (8001460 <HAL_IncTick+0x24>)
 8001448:	681b      	ldr	r3, [r3, #0]
 800144a:	4413      	add	r3, r2
 800144c:	4a04      	ldr	r2, [pc, #16]	@ (8001460 <HAL_IncTick+0x24>)
 800144e:	6013      	str	r3, [r2, #0]
 8001450:	bf00      	nop
 8001452:	46bd      	mov	sp, r7
 8001454:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001458:	4770      	bx	lr
 800145a:	bf00      	nop
 800145c:	20000064 	.word	0x20000064
 8001460:	200003b8 	.word	0x200003b8

08001464 <HAL_GetTick>:
 8001464:	b480      	push	{r7}
 8001466:	af00      	add	r7, sp, #0
 8001468:	4b03      	ldr	r3, [pc, #12]	@ (8001478 <HAL_GetTick+0x14>)
 800146a:	681b      	ldr	r3, [r3, #0]
 800146c:	4618      	mov	r0, r3
 800146e:	46bd      	mov	sp, r7
 8001470:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001474:	4770      	bx	lr
 8001476:	bf00      	nop
 8001478:	200003b8 	.word	0x200003b8

0800147c <__NVIC_SetPriorityGrouping>:
 800147c:	b480      	push	{r7}
 800147e:	b085      	sub	sp, #20
 8001480:	af00      	add	r7, sp, #0
 8001482:	6078      	str	r0, [r7, #4]
 8001484:	687b      	ldr	r3, [r7, #4]
 8001486:	f003 0307 	and.w	r3, r3, #7
 800148a:	60fb      	str	r3, [r7, #12]
 800148c:	4b0c      	ldr	r3, [pc, #48]	@ (80014c0 <__NVIC_SetPriorityGrouping+0x44>)
 800148e:	68db      	ldr	r3, [r3, #12]
 8001490:	60bb      	str	r3, [r7, #8]
 8001492:	68ba      	ldr	r2, [r7, #8]
 8001494:	f64f 03ff 	movw	r3, #63743	@ 0xf8ff
 8001498:	4013      	ands	r3, r2
 800149a:	60bb      	str	r3, [r7, #8]
 800149c:	68fb      	ldr	r3, [r7, #12]
 800149e:	021a      	lsls	r2, r3, #8
 80014a0:	68bb      	ldr	r3, [r7, #8]
 80014a2:	4313      	orrs	r3, r2
 80014a4:	f043 63bf 	orr.w	r3, r3, #100139008	@ 0x5f80000
 80014a8:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 80014ac:	60bb      	str	r3, [r7, #8]
 80014ae:	4a04      	ldr	r2, [pc, #16]	@ (80014c0 <__NVIC_SetPriorityGrouping+0x44>)
 80014b0:	68bb      	ldr	r3, [r7, #8]
 80014b2:	60d3      	str	r3, [r2, #12]
 80014b4:	bf00      	nop
 80014b6:	3714      	adds	r7, #20
 80014b8:	46bd      	mov	sp, r7
 80014ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80014be:	4770      	bx	lr
 80014c0:	e000ed00 	.word	0xe000ed00

080014c4 <__NVIC_GetPriorityGrouping>:
 80014c4:	b480      	push	{r7}
 80014c6:	af00      	add	r7, sp, #0
 80014c8:	4b04      	ldr	r3, [pc, #16]	@ (80014dc <__NVIC_GetPriorityGrouping+0x18>)
 80014ca:	68db      	ldr	r3, [r3, #12]
 80014cc:	0a1b      	lsrs	r3, r3, #8
 80014ce:	f003 0307 	and.w	r3, r3, #7
 80014d2:	4618      	mov	r0, r3
 80014d4:	46bd      	mov	sp, r7
 80014d6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80014da:	4770      	bx	lr
 80014dc:	e000ed00 	.word	0xe000ed00

080014e0 <__NVIC_EnableIRQ>:
 80014e0:	b480      	push	{r7}
 80014e2:	b083      	sub	sp, #12
 80014e4:	af00      	add	r7, sp, #0
 80014e6:	4603      	mov	r3, r0
 80014e8:	71fb      	strb	r3, [r7, #7]
 80014ea:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80014ee:	2b00      	cmp	r3, #0
 80014f0:	db0b      	blt.n	800150a <__NVIC_EnableIRQ+0x2a>
 80014f2:	79fb      	ldrb	r3, [r7, #7]
 80014f4:	f003 021f 	and.w	r2, r3, #31
 80014f8:	4907      	ldr	r1, [pc, #28]	@ (8001518 <__NVIC_EnableIRQ+0x38>)
 80014fa:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80014fe:	095b      	lsrs	r3, r3, #5
 8001500:	2001      	movs	r0, #1
 8001502:	fa00 f202 	lsl.w	r2, r0, r2
 8001506:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800150a:	bf00      	nop
 800150c:	370c      	adds	r7, #12
 800150e:	46bd      	mov	sp, r7
 8001510:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001514:	4770      	bx	lr
 8001516:	bf00      	nop
 8001518:	e000e100 	.word	0xe000e100

0800151c <__NVIC_DisableIRQ>:
 800151c:	b480      	push	{r7}
 800151e:	b083      	sub	sp, #12
 8001520:	af00      	add	r7, sp, #0
 8001522:	4603      	mov	r3, r0
 8001524:	71fb      	strb	r3, [r7, #7]
 8001526:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800152a:	2b00      	cmp	r3, #0
 800152c:	db12      	blt.n	8001554 <__NVIC_DisableIRQ+0x38>
 800152e:	79fb      	ldrb	r3, [r7, #7]
 8001530:	f003 021f 	and.w	r2, r3, #31
 8001534:	490a      	ldr	r1, [pc, #40]	@ (8001560 <__NVIC_DisableIRQ+0x44>)
 8001536:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800153a:	095b      	lsrs	r3, r3, #5
 800153c:	2001      	movs	r0, #1
 800153e:	fa00 f202 	lsl.w	r2, r0, r2
 8001542:	3320      	adds	r3, #32
 8001544:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001548:	f3bf 8f4f 	dsb	sy
 800154c:	bf00      	nop
 800154e:	f3bf 8f6f 	isb	sy
 8001552:	bf00      	nop
 8001554:	bf00      	nop
 8001556:	370c      	adds	r7, #12
 8001558:	46bd      	mov	sp, r7
 800155a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800155e:	4770      	bx	lr
 8001560:	e000e100 	.word	0xe000e100

08001564 <__NVIC_SetPriority>:
 8001564:	b480      	push	{r7}
 8001566:	b083      	sub	sp, #12
 8001568:	af00      	add	r7, sp, #0
 800156a:	4603      	mov	r3, r0
 800156c:	6039      	str	r1, [r7, #0]
 800156e:	71fb      	strb	r3, [r7, #7]
 8001570:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001574:	2b00      	cmp	r3, #0
 8001576:	db0a      	blt.n	800158e <__NVIC_SetPriority+0x2a>
 8001578:	683b      	ldr	r3, [r7, #0]
 800157a:	b2da      	uxtb	r2, r3
 800157c:	490c      	ldr	r1, [pc, #48]	@ (80015b0 <__NVIC_SetPriority+0x4c>)
 800157e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001582:	0112      	lsls	r2, r2, #4
 8001584:	b2d2      	uxtb	r2, r2
 8001586:	440b      	add	r3, r1
 8001588:	f883 2300 	strb.w	r2, [r3, #768]	@ 0x300
 800158c:	e00a      	b.n	80015a4 <__NVIC_SetPriority+0x40>
 800158e:	683b      	ldr	r3, [r7, #0]
 8001590:	b2da      	uxtb	r2, r3
 8001592:	4908      	ldr	r1, [pc, #32]	@ (80015b4 <__NVIC_SetPriority+0x50>)
 8001594:	79fb      	ldrb	r3, [r7, #7]
 8001596:	f003 030f 	and.w	r3, r3, #15
 800159a:	3b04      	subs	r3, #4
 800159c:	0112      	lsls	r2, r2, #4
 800159e:	b2d2      	uxtb	r2, r2
 80015a0:	440b      	add	r3, r1
 80015a2:	761a      	strb	r2, [r3, #24]
 80015a4:	bf00      	nop
 80015a6:	370c      	adds	r7, #12
 80015a8:	46bd      	mov	sp, r7
 80015aa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80015ae:	4770      	bx	lr
 80015b0:	e000e100 	.word	0xe000e100
 80015b4:	e000ed00 	.word	0xe000ed00

080015b8 <NVIC_EncodePriority>:
 80015b8:	b480      	push	{r7}
 80015ba:	b089      	sub	sp, #36	@ 0x24
 80015bc:	af00      	add	r7, sp, #0
 80015be:	60f8      	str	r0, [r7, #12]
 80015c0:	60b9      	str	r1, [r7, #8]
 80015c2:	607a      	str	r2, [r7, #4]
 80015c4:	68fb      	ldr	r3, [r7, #12]
 80015c6:	f003 0307 	and.w	r3, r3, #7
 80015ca:	61fb      	str	r3, [r7, #28]
 80015cc:	69fb      	ldr	r3, [r7, #28]
 80015ce:	f1c3 0307 	rsb	r3, r3, #7
 80015d2:	2b04      	cmp	r3, #4
 80015d4:	bf28      	it	cs
 80015d6:	2304      	movcs	r3, #4
 80015d8:	61bb      	str	r3, [r7, #24]
 80015da:	69fb      	ldr	r3, [r7, #28]
 80015dc:	3304      	adds	r3, #4
 80015de:	2b06      	cmp	r3, #6
 80015e0:	d902      	bls.n	80015e8 <NVIC_EncodePriority+0x30>
 80015e2:	69fb      	ldr	r3, [r7, #28]
 80015e4:	3b03      	subs	r3, #3
 80015e6:	e000      	b.n	80015ea <NVIC_EncodePriority+0x32>
 80015e8:	2300      	movs	r3, #0
 80015ea:	617b      	str	r3, [r7, #20]
 80015ec:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 80015f0:	69bb      	ldr	r3, [r7, #24]
 80015f2:	fa02 f303 	lsl.w	r3, r2, r3
 80015f6:	43da      	mvns	r2, r3
 80015f8:	68bb      	ldr	r3, [r7, #8]
 80015fa:	401a      	ands	r2, r3
 80015fc:	697b      	ldr	r3, [r7, #20]
 80015fe:	409a      	lsls	r2, r3
 8001600:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
 8001604:	697b      	ldr	r3, [r7, #20]
 8001606:	fa01 f303 	lsl.w	r3, r1, r3
 800160a:	43d9      	mvns	r1, r3
 800160c:	687b      	ldr	r3, [r7, #4]
 800160e:	400b      	ands	r3, r1
 8001610:	4313      	orrs	r3, r2
 8001612:	4618      	mov	r0, r3
 8001614:	3724      	adds	r7, #36	@ 0x24
 8001616:	46bd      	mov	sp, r7
 8001618:	f85d 7b04 	ldr.w	r7, [sp], #4
 800161c:	4770      	bx	lr
	...

08001620 <SysTick_Config>:
 8001620:	b580      	push	{r7, lr}
 8001622:	b082      	sub	sp, #8
 8001624:	af00      	add	r7, sp, #0
 8001626:	6078      	str	r0, [r7, #4]
 8001628:	687b      	ldr	r3, [r7, #4]
 800162a:	3b01      	subs	r3, #1
 800162c:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
 8001630:	d301      	bcc.n	8001636 <SysTick_Config+0x16>
 8001632:	2301      	movs	r3, #1
 8001634:	e00f      	b.n	8001656 <SysTick_Config+0x36>
 8001636:	4a0a      	ldr	r2, [pc, #40]	@ (8001660 <SysTick_Config+0x40>)
 8001638:	687b      	ldr	r3, [r7, #4]
 800163a:	3b01      	subs	r3, #1
 800163c:	6053      	str	r3, [r2, #4]
 800163e:	210f      	movs	r1, #15
 8001640:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8001644:	f7ff ff8e 	bl	8001564 <__NVIC_SetPriority>
 8001648:	4b05      	ldr	r3, [pc, #20]	@ (8001660 <SysTick_Config+0x40>)
 800164a:	2200      	movs	r2, #0
 800164c:	609a      	str	r2, [r3, #8]
 800164e:	4b04      	ldr	r3, [pc, #16]	@ (8001660 <SysTick_Config+0x40>)
 8001650:	2207      	movs	r2, #7
 8001652:	601a      	str	r2, [r3, #0]
 8001654:	2300      	movs	r3, #0
 8001656:	4618      	mov	r0, r3
 8001658:	3708      	adds	r7, #8
 800165a:	46bd      	mov	sp, r7
 800165c:	bd80      	pop	{r7, pc}
 800165e:	bf00      	nop
 8001660:	e000e010 	.word	0xe000e010

08001664 <HAL_NVIC_SetPriorityGrouping>:
 8001664:	b580      	push	{r7, lr}
 8001666:	b082      	sub	sp, #8
 8001668:	af00      	add	r7, sp, #0
 800166a:	6078      	str	r0, [r7, #4]
 800166c:	6878      	ldr	r0, [r7, #4]
 800166e:	f7ff ff05 	bl	800147c <__NVIC_SetPriorityGrouping>
 8001672:	bf00      	nop
 8001674:	3708      	adds	r7, #8
 8001676:	46bd      	mov	sp, r7
 8001678:	bd80      	pop	{r7, pc}

0800167a <HAL_NVIC_SetPriority>:
 800167a:	b580      	push	{r7, lr}
 800167c:	b086      	sub	sp, #24
 800167e:	af00      	add	r7, sp, #0
 8001680:	4603      	mov	r3, r0
 8001682:	60b9      	str	r1, [r7, #8]
 8001684:	607a      	str	r2, [r7, #4]
 8001686:	73fb      	strb	r3, [r7, #15]
 8001688:	2300      	movs	r3, #0
 800168a:	617b      	str	r3, [r7, #20]
 800168c:	f7ff ff1a 	bl	80014c4 <__NVIC_GetPriorityGrouping>
 8001690:	6178      	str	r0, [r7, #20]
 8001692:	687a      	ldr	r2, [r7, #4]
 8001694:	68b9      	ldr	r1, [r7, #8]
 8001696:	6978      	ldr	r0, [r7, #20]
 8001698:	f7ff ff8e 	bl	80015b8 <NVIC_EncodePriority>
 800169c:	4602      	mov	r2, r0
 800169e:	f997 300f 	ldrsb.w	r3, [r7, #15]
 80016a2:	4611      	mov	r1, r2
 80016a4:	4618      	mov	r0, r3
 80016a6:	f7ff ff5d 	bl	8001564 <__NVIC_SetPriority>
 80016aa:	bf00      	nop
 80016ac:	3718      	adds	r7, #24
 80016ae:	46bd      	mov	sp, r7
 80016b0:	bd80      	pop	{r7, pc}

080016b2 <HAL_NVIC_EnableIRQ>:
 80016b2:	b580      	push	{r7, lr}
 80016b4:	b082      	sub	sp, #8
 80016b6:	af00      	add	r7, sp, #0
 80016b8:	4603      	mov	r3, r0
 80016ba:	71fb      	strb	r3, [r7, #7]
 80016bc:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80016c0:	4618      	mov	r0, r3
 80016c2:	f7ff ff0d 	bl	80014e0 <__NVIC_EnableIRQ>
 80016c6:	bf00      	nop
 80016c8:	3708      	adds	r7, #8
 80016ca:	46bd      	mov	sp, r7
 80016cc:	bd80      	pop	{r7, pc}

080016ce <HAL_NVIC_DisableIRQ>:
 80016ce:	b580      	push	{r7, lr}
 80016d0:	b082      	sub	sp, #8
 80016d2:	af00      	add	r7, sp, #0
 80016d4:	4603      	mov	r3, r0
 80016d6:	71fb      	strb	r3, [r7, #7]
 80016d8:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80016dc:	4618      	mov	r0, r3
 80016de:	f7ff ff1d 	bl	800151c <__NVIC_DisableIRQ>
 80016e2:	bf00      	nop
 80016e4:	3708      	adds	r7, #8
 80016e6:	46bd      	mov	sp, r7
 80016e8:	bd80      	pop	{r7, pc}

080016ea <HAL_SYSTICK_Config>:
 80016ea:	b580      	push	{r7, lr}
 80016ec:	b082      	sub	sp, #8
 80016ee:	af00      	add	r7, sp, #0
 80016f0:	6078      	str	r0, [r7, #4]
 80016f2:	6878      	ldr	r0, [r7, #4]
 80016f4:	f7ff ff94 	bl	8001620 <SysTick_Config>
 80016f8:	4603      	mov	r3, r0
 80016fa:	4618      	mov	r0, r3
 80016fc:	3708      	adds	r7, #8
 80016fe:	46bd      	mov	sp, r7
 8001700:	bd80      	pop	{r7, pc}
	...

08001704 <HAL_DMA_Init>:
 8001704:	b580      	push	{r7, lr}
 8001706:	b086      	sub	sp, #24
 8001708:	af00      	add	r7, sp, #0
 800170a:	6078      	str	r0, [r7, #4]
 800170c:	2300      	movs	r3, #0
 800170e:	617b      	str	r3, [r7, #20]
 8001710:	f7ff fea8 	bl	8001464 <HAL_GetTick>
 8001714:	6138      	str	r0, [r7, #16]
 8001716:	687b      	ldr	r3, [r7, #4]
 8001718:	2b00      	cmp	r3, #0
 800171a:	d101      	bne.n	8001720 <HAL_DMA_Init+0x1c>
 800171c:	2301      	movs	r3, #1
 800171e:	e099      	b.n	8001854 <HAL_DMA_Init+0x150>
 8001720:	687b      	ldr	r3, [r7, #4]
 8001722:	2202      	movs	r2, #2
 8001724:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001728:	687b      	ldr	r3, [r7, #4]
 800172a:	2200      	movs	r2, #0
 800172c:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8001730:	687b      	ldr	r3, [r7, #4]
 8001732:	681b      	ldr	r3, [r3, #0]
 8001734:	681a      	ldr	r2, [r3, #0]
 8001736:	687b      	ldr	r3, [r7, #4]
 8001738:	681b      	ldr	r3, [r3, #0]
 800173a:	f022 0201 	bic.w	r2, r2, #1
 800173e:	601a      	str	r2, [r3, #0]
 8001740:	e00f      	b.n	8001762 <HAL_DMA_Init+0x5e>
 8001742:	f7ff fe8f 	bl	8001464 <HAL_GetTick>
 8001746:	4602      	mov	r2, r0
 8001748:	693b      	ldr	r3, [r7, #16]
 800174a:	1ad3      	subs	r3, r2, r3
 800174c:	2b05      	cmp	r3, #5
 800174e:	d908      	bls.n	8001762 <HAL_DMA_Init+0x5e>
 8001750:	687b      	ldr	r3, [r7, #4]
 8001752:	2220      	movs	r2, #32
 8001754:	655a      	str	r2, [r3, #84]	@ 0x54
 8001756:	687b      	ldr	r3, [r7, #4]
 8001758:	2203      	movs	r2, #3
 800175a:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 800175e:	2303      	movs	r3, #3
 8001760:	e078      	b.n	8001854 <HAL_DMA_Init+0x150>
 8001762:	687b      	ldr	r3, [r7, #4]
 8001764:	681b      	ldr	r3, [r3, #0]
 8001766:	681b      	ldr	r3, [r3, #0]
 8001768:	f003 0301 	and.w	r3, r3, #1
 800176c:	2b00      	cmp	r3, #0
 800176e:	d1e8      	bne.n	8001742 <HAL_DMA_Init+0x3e>
 8001770:	687b      	ldr	r3, [r7, #4]
 8001772:	681b      	ldr	r3, [r3, #0]
 8001774:	681b      	ldr	r3, [r3, #0]
 8001776:	617b      	str	r3, [r7, #20]
 8001778:	697a      	ldr	r2, [r7, #20]
 800177a:	4b38      	ldr	r3, [pc, #224]	@ (800185c <HAL_DMA_Init+0x158>)
 800177c:	4013      	ands	r3, r2
 800177e:	617b      	str	r3, [r7, #20]
 8001780:	687b      	ldr	r3, [r7, #4]
 8001782:	685a      	ldr	r2, [r3, #4]
 8001784:	687b      	ldr	r3, [r7, #4]
 8001786:	689b      	ldr	r3, [r3, #8]
 8001788:	431a      	orrs	r2, r3
 800178a:	687b      	ldr	r3, [r7, #4]
 800178c:	68db      	ldr	r3, [r3, #12]
 800178e:	431a      	orrs	r2, r3
 8001790:	687b      	ldr	r3, [r7, #4]
 8001792:	691b      	ldr	r3, [r3, #16]
 8001794:	431a      	orrs	r2, r3
 8001796:	687b      	ldr	r3, [r7, #4]
 8001798:	695b      	ldr	r3, [r3, #20]
 800179a:	431a      	orrs	r2, r3
 800179c:	687b      	ldr	r3, [r7, #4]
 800179e:	699b      	ldr	r3, [r3, #24]
 80017a0:	431a      	orrs	r2, r3
 80017a2:	687b      	ldr	r3, [r7, #4]
 80017a4:	69db      	ldr	r3, [r3, #28]
 80017a6:	431a      	orrs	r2, r3
 80017a8:	687b      	ldr	r3, [r7, #4]
 80017aa:	6a1b      	ldr	r3, [r3, #32]
 80017ac:	4313      	orrs	r3, r2
 80017ae:	697a      	ldr	r2, [r7, #20]
 80017b0:	4313      	orrs	r3, r2
 80017b2:	617b      	str	r3, [r7, #20]
 80017b4:	687b      	ldr	r3, [r7, #4]
 80017b6:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80017b8:	2b04      	cmp	r3, #4
 80017ba:	d107      	bne.n	80017cc <HAL_DMA_Init+0xc8>
 80017bc:	687b      	ldr	r3, [r7, #4]
 80017be:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 80017c0:	687b      	ldr	r3, [r7, #4]
 80017c2:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80017c4:	4313      	orrs	r3, r2
 80017c6:	697a      	ldr	r2, [r7, #20]
 80017c8:	4313      	orrs	r3, r2
 80017ca:	617b      	str	r3, [r7, #20]
 80017cc:	687b      	ldr	r3, [r7, #4]
 80017ce:	681b      	ldr	r3, [r3, #0]
 80017d0:	697a      	ldr	r2, [r7, #20]
 80017d2:	601a      	str	r2, [r3, #0]
 80017d4:	687b      	ldr	r3, [r7, #4]
 80017d6:	681b      	ldr	r3, [r3, #0]
 80017d8:	695b      	ldr	r3, [r3, #20]
 80017da:	617b      	str	r3, [r7, #20]
 80017dc:	697b      	ldr	r3, [r7, #20]
 80017de:	f023 0307 	bic.w	r3, r3, #7
 80017e2:	617b      	str	r3, [r7, #20]
 80017e4:	687b      	ldr	r3, [r7, #4]
 80017e6:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80017e8:	697a      	ldr	r2, [r7, #20]
 80017ea:	4313      	orrs	r3, r2
 80017ec:	617b      	str	r3, [r7, #20]
 80017ee:	687b      	ldr	r3, [r7, #4]
 80017f0:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80017f2:	2b04      	cmp	r3, #4
 80017f4:	d117      	bne.n	8001826 <HAL_DMA_Init+0x122>
 80017f6:	687b      	ldr	r3, [r7, #4]
 80017f8:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80017fa:	697a      	ldr	r2, [r7, #20]
 80017fc:	4313      	orrs	r3, r2
 80017fe:	617b      	str	r3, [r7, #20]
 8001800:	687b      	ldr	r3, [r7, #4]
 8001802:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001804:	2b00      	cmp	r3, #0
 8001806:	d00e      	beq.n	8001826 <HAL_DMA_Init+0x122>
 8001808:	6878      	ldr	r0, [r7, #4]
 800180a:	f000 f85f 	bl	80018cc <DMA_CheckFifoParam>
 800180e:	4603      	mov	r3, r0
 8001810:	2b00      	cmp	r3, #0
 8001812:	d008      	beq.n	8001826 <HAL_DMA_Init+0x122>
 8001814:	687b      	ldr	r3, [r7, #4]
 8001816:	2240      	movs	r2, #64	@ 0x40
 8001818:	655a      	str	r2, [r3, #84]	@ 0x54
 800181a:	687b      	ldr	r3, [r7, #4]
 800181c:	2201      	movs	r2, #1
 800181e:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001822:	2301      	movs	r3, #1
 8001824:	e016      	b.n	8001854 <HAL_DMA_Init+0x150>
 8001826:	687b      	ldr	r3, [r7, #4]
 8001828:	681b      	ldr	r3, [r3, #0]
 800182a:	697a      	ldr	r2, [r7, #20]
 800182c:	615a      	str	r2, [r3, #20]
 800182e:	6878      	ldr	r0, [r7, #4]
 8001830:	f000 f816 	bl	8001860 <DMA_CalcBaseAndBitshift>
 8001834:	4603      	mov	r3, r0
 8001836:	60fb      	str	r3, [r7, #12]
 8001838:	687b      	ldr	r3, [r7, #4]
 800183a:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 800183c:	223f      	movs	r2, #63	@ 0x3f
 800183e:	409a      	lsls	r2, r3
 8001840:	68fb      	ldr	r3, [r7, #12]
 8001842:	609a      	str	r2, [r3, #8]
 8001844:	687b      	ldr	r3, [r7, #4]
 8001846:	2200      	movs	r2, #0
 8001848:	655a      	str	r2, [r3, #84]	@ 0x54
 800184a:	687b      	ldr	r3, [r7, #4]
 800184c:	2201      	movs	r2, #1
 800184e:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001852:	2300      	movs	r3, #0
 8001854:	4618      	mov	r0, r3
 8001856:	3718      	adds	r7, #24
 8001858:	46bd      	mov	sp, r7
 800185a:	bd80      	pop	{r7, pc}
 800185c:	f010803f 	.word	0xf010803f

08001860 <DMA_CalcBaseAndBitshift>:
 8001860:	b480      	push	{r7}
 8001862:	b085      	sub	sp, #20
 8001864:	af00      	add	r7, sp, #0
 8001866:	6078      	str	r0, [r7, #4]
 8001868:	687b      	ldr	r3, [r7, #4]
 800186a:	681b      	ldr	r3, [r3, #0]
 800186c:	b2db      	uxtb	r3, r3
 800186e:	3b10      	subs	r3, #16
 8001870:	4a14      	ldr	r2, [pc, #80]	@ (80018c4 <DMA_CalcBaseAndBitshift+0x64>)
 8001872:	fba2 2303 	umull	r2, r3, r2, r3
 8001876:	091b      	lsrs	r3, r3, #4
 8001878:	60fb      	str	r3, [r7, #12]
 800187a:	4a13      	ldr	r2, [pc, #76]	@ (80018c8 <DMA_CalcBaseAndBitshift+0x68>)
 800187c:	68fb      	ldr	r3, [r7, #12]
 800187e:	4413      	add	r3, r2
 8001880:	781b      	ldrb	r3, [r3, #0]
 8001882:	461a      	mov	r2, r3
 8001884:	687b      	ldr	r3, [r7, #4]
 8001886:	65da      	str	r2, [r3, #92]	@ 0x5c
 8001888:	68fb      	ldr	r3, [r7, #12]
 800188a:	2b03      	cmp	r3, #3
 800188c:	d909      	bls.n	80018a2 <DMA_CalcBaseAndBitshift+0x42>
 800188e:	687b      	ldr	r3, [r7, #4]
 8001890:	681b      	ldr	r3, [r3, #0]
 8001892:	f423 737f 	bic.w	r3, r3, #1020	@ 0x3fc
 8001896:	f023 0303 	bic.w	r3, r3, #3
 800189a:	1d1a      	adds	r2, r3, #4
 800189c:	687b      	ldr	r3, [r7, #4]
 800189e:	659a      	str	r2, [r3, #88]	@ 0x58
 80018a0:	e007      	b.n	80018b2 <DMA_CalcBaseAndBitshift+0x52>
 80018a2:	687b      	ldr	r3, [r7, #4]
 80018a4:	681b      	ldr	r3, [r3, #0]
 80018a6:	f423 737f 	bic.w	r3, r3, #1020	@ 0x3fc
 80018aa:	f023 0303 	bic.w	r3, r3, #3
 80018ae:	687a      	ldr	r2, [r7, #4]
 80018b0:	6593      	str	r3, [r2, #88]	@ 0x58
 80018b2:	687b      	ldr	r3, [r7, #4]
 80018b4:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80018b6:	4618      	mov	r0, r3
 80018b8:	3714      	adds	r7, #20
 80018ba:	46bd      	mov	sp, r7
 80018bc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80018c0:	4770      	bx	lr
 80018c2:	bf00      	nop
 80018c4:	aaaaaaab 	.word	0xaaaaaaab
 80018c8:	08003eec 	.word	0x08003eec

080018cc <DMA_CheckFifoParam>:
 80018cc:	b480      	push	{r7}
 80018ce:	b085      	sub	sp, #20
 80018d0:	af00      	add	r7, sp, #0
 80018d2:	6078      	str	r0, [r7, #4]
 80018d4:	2300      	movs	r3, #0
 80018d6:	73fb      	strb	r3, [r7, #15]
 80018d8:	687b      	ldr	r3, [r7, #4]
 80018da:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80018dc:	60bb      	str	r3, [r7, #8]
 80018de:	687b      	ldr	r3, [r7, #4]
 80018e0:	699b      	ldr	r3, [r3, #24]
 80018e2:	2b00      	cmp	r3, #0
 80018e4:	d11f      	bne.n	8001926 <DMA_CheckFifoParam+0x5a>
 80018e6:	68bb      	ldr	r3, [r7, #8]
 80018e8:	2b03      	cmp	r3, #3
 80018ea:	d856      	bhi.n	800199a <DMA_CheckFifoParam+0xce>
 80018ec:	a201      	add	r2, pc, #4	@ (adr r2, 80018f4 <DMA_CheckFifoParam+0x28>)
 80018ee:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80018f2:	bf00      	nop
 80018f4:	08001905 	.word	0x08001905
 80018f8:	08001917 	.word	0x08001917
 80018fc:	08001905 	.word	0x08001905
 8001900:	0800199b 	.word	0x0800199b
 8001904:	687b      	ldr	r3, [r7, #4]
 8001906:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001908:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 800190c:	2b00      	cmp	r3, #0
 800190e:	d046      	beq.n	800199e <DMA_CheckFifoParam+0xd2>
 8001910:	2301      	movs	r3, #1
 8001912:	73fb      	strb	r3, [r7, #15]
 8001914:	e043      	b.n	800199e <DMA_CheckFifoParam+0xd2>
 8001916:	687b      	ldr	r3, [r7, #4]
 8001918:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800191a:	f1b3 7fc0 	cmp.w	r3, #25165824	@ 0x1800000
 800191e:	d140      	bne.n	80019a2 <DMA_CheckFifoParam+0xd6>
 8001920:	2301      	movs	r3, #1
 8001922:	73fb      	strb	r3, [r7, #15]
 8001924:	e03d      	b.n	80019a2 <DMA_CheckFifoParam+0xd6>
 8001926:	687b      	ldr	r3, [r7, #4]
 8001928:	699b      	ldr	r3, [r3, #24]
 800192a:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 800192e:	d121      	bne.n	8001974 <DMA_CheckFifoParam+0xa8>
 8001930:	68bb      	ldr	r3, [r7, #8]
 8001932:	2b03      	cmp	r3, #3
 8001934:	d837      	bhi.n	80019a6 <DMA_CheckFifoParam+0xda>
 8001936:	a201      	add	r2, pc, #4	@ (adr r2, 800193c <DMA_CheckFifoParam+0x70>)
 8001938:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800193c:	0800194d 	.word	0x0800194d
 8001940:	08001953 	.word	0x08001953
 8001944:	0800194d 	.word	0x0800194d
 8001948:	08001965 	.word	0x08001965
 800194c:	2301      	movs	r3, #1
 800194e:	73fb      	strb	r3, [r7, #15]
 8001950:	e030      	b.n	80019b4 <DMA_CheckFifoParam+0xe8>
 8001952:	687b      	ldr	r3, [r7, #4]
 8001954:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001956:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 800195a:	2b00      	cmp	r3, #0
 800195c:	d025      	beq.n	80019aa <DMA_CheckFifoParam+0xde>
 800195e:	2301      	movs	r3, #1
 8001960:	73fb      	strb	r3, [r7, #15]
 8001962:	e022      	b.n	80019aa <DMA_CheckFifoParam+0xde>
 8001964:	687b      	ldr	r3, [r7, #4]
 8001966:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001968:	f1b3 7fc0 	cmp.w	r3, #25165824	@ 0x1800000
 800196c:	d11f      	bne.n	80019ae <DMA_CheckFifoParam+0xe2>
 800196e:	2301      	movs	r3, #1
 8001970:	73fb      	strb	r3, [r7, #15]
 8001972:	e01c      	b.n	80019ae <DMA_CheckFifoParam+0xe2>
 8001974:	68bb      	ldr	r3, [r7, #8]
 8001976:	2b02      	cmp	r3, #2
 8001978:	d903      	bls.n	8001982 <DMA_CheckFifoParam+0xb6>
 800197a:	68bb      	ldr	r3, [r7, #8]
 800197c:	2b03      	cmp	r3, #3
 800197e:	d003      	beq.n	8001988 <DMA_CheckFifoParam+0xbc>
 8001980:	e018      	b.n	80019b4 <DMA_CheckFifoParam+0xe8>
 8001982:	2301      	movs	r3, #1
 8001984:	73fb      	strb	r3, [r7, #15]
 8001986:	e015      	b.n	80019b4 <DMA_CheckFifoParam+0xe8>
 8001988:	687b      	ldr	r3, [r7, #4]
 800198a:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800198c:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 8001990:	2b00      	cmp	r3, #0
 8001992:	d00e      	beq.n	80019b2 <DMA_CheckFifoParam+0xe6>
 8001994:	2301      	movs	r3, #1
 8001996:	73fb      	strb	r3, [r7, #15]
 8001998:	e00b      	b.n	80019b2 <DMA_CheckFifoParam+0xe6>
 800199a:	bf00      	nop
 800199c:	e00a      	b.n	80019b4 <DMA_CheckFifoParam+0xe8>
 800199e:	bf00      	nop
 80019a0:	e008      	b.n	80019b4 <DMA_CheckFifoParam+0xe8>
 80019a2:	bf00      	nop
 80019a4:	e006      	b.n	80019b4 <DMA_CheckFifoParam+0xe8>
 80019a6:	bf00      	nop
 80019a8:	e004      	b.n	80019b4 <DMA_CheckFifoParam+0xe8>
 80019aa:	bf00      	nop
 80019ac:	e002      	b.n	80019b4 <DMA_CheckFifoParam+0xe8>
 80019ae:	bf00      	nop
 80019b0:	e000      	b.n	80019b4 <DMA_CheckFifoParam+0xe8>
 80019b2:	bf00      	nop
 80019b4:	7bfb      	ldrb	r3, [r7, #15]
 80019b6:	4618      	mov	r0, r3
 80019b8:	3714      	adds	r7, #20
 80019ba:	46bd      	mov	sp, r7
 80019bc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80019c0:	4770      	bx	lr
 80019c2:	bf00      	nop

080019c4 <HAL_GPIO_Init>:
 80019c4:	b480      	push	{r7}
 80019c6:	b089      	sub	sp, #36	@ 0x24
 80019c8:	af00      	add	r7, sp, #0
 80019ca:	6078      	str	r0, [r7, #4]
 80019cc:	6039      	str	r1, [r7, #0]
 80019ce:	2300      	movs	r3, #0
 80019d0:	617b      	str	r3, [r7, #20]
 80019d2:	2300      	movs	r3, #0
 80019d4:	613b      	str	r3, [r7, #16]
 80019d6:	2300      	movs	r3, #0
 80019d8:	61bb      	str	r3, [r7, #24]
 80019da:	2300      	movs	r3, #0
 80019dc:	61fb      	str	r3, [r7, #28]
 80019de:	e16b      	b.n	8001cb8 <HAL_GPIO_Init+0x2f4>
 80019e0:	2201      	movs	r2, #1
 80019e2:	69fb      	ldr	r3, [r7, #28]
 80019e4:	fa02 f303 	lsl.w	r3, r2, r3
 80019e8:	617b      	str	r3, [r7, #20]
 80019ea:	683b      	ldr	r3, [r7, #0]
 80019ec:	681b      	ldr	r3, [r3, #0]
 80019ee:	697a      	ldr	r2, [r7, #20]
 80019f0:	4013      	ands	r3, r2
 80019f2:	613b      	str	r3, [r7, #16]
 80019f4:	693a      	ldr	r2, [r7, #16]
 80019f6:	697b      	ldr	r3, [r7, #20]
 80019f8:	429a      	cmp	r2, r3
 80019fa:	f040 815a 	bne.w	8001cb2 <HAL_GPIO_Init+0x2ee>
 80019fe:	683b      	ldr	r3, [r7, #0]
 8001a00:	685b      	ldr	r3, [r3, #4]
 8001a02:	f003 0303 	and.w	r3, r3, #3
 8001a06:	2b01      	cmp	r3, #1
 8001a08:	d005      	beq.n	8001a16 <HAL_GPIO_Init+0x52>
 8001a0a:	683b      	ldr	r3, [r7, #0]
 8001a0c:	685b      	ldr	r3, [r3, #4]
 8001a0e:	f003 0303 	and.w	r3, r3, #3
 8001a12:	2b02      	cmp	r3, #2
 8001a14:	d130      	bne.n	8001a78 <HAL_GPIO_Init+0xb4>
 8001a16:	687b      	ldr	r3, [r7, #4]
 8001a18:	689b      	ldr	r3, [r3, #8]
 8001a1a:	61bb      	str	r3, [r7, #24]
 8001a1c:	69fb      	ldr	r3, [r7, #28]
 8001a1e:	005b      	lsls	r3, r3, #1
 8001a20:	2203      	movs	r2, #3
 8001a22:	fa02 f303 	lsl.w	r3, r2, r3
 8001a26:	43db      	mvns	r3, r3
 8001a28:	69ba      	ldr	r2, [r7, #24]
 8001a2a:	4013      	ands	r3, r2
 8001a2c:	61bb      	str	r3, [r7, #24]
 8001a2e:	683b      	ldr	r3, [r7, #0]
 8001a30:	68da      	ldr	r2, [r3, #12]
 8001a32:	69fb      	ldr	r3, [r7, #28]
 8001a34:	005b      	lsls	r3, r3, #1
 8001a36:	fa02 f303 	lsl.w	r3, r2, r3
 8001a3a:	69ba      	ldr	r2, [r7, #24]
 8001a3c:	4313      	orrs	r3, r2
 8001a3e:	61bb      	str	r3, [r7, #24]
 8001a40:	687b      	ldr	r3, [r7, #4]
 8001a42:	69ba      	ldr	r2, [r7, #24]
 8001a44:	609a      	str	r2, [r3, #8]
 8001a46:	687b      	ldr	r3, [r7, #4]
 8001a48:	685b      	ldr	r3, [r3, #4]
 8001a4a:	61bb      	str	r3, [r7, #24]
 8001a4c:	2201      	movs	r2, #1
 8001a4e:	69fb      	ldr	r3, [r7, #28]
 8001a50:	fa02 f303 	lsl.w	r3, r2, r3
 8001a54:	43db      	mvns	r3, r3
 8001a56:	69ba      	ldr	r2, [r7, #24]
 8001a58:	4013      	ands	r3, r2
 8001a5a:	61bb      	str	r3, [r7, #24]
 8001a5c:	683b      	ldr	r3, [r7, #0]
 8001a5e:	685b      	ldr	r3, [r3, #4]
 8001a60:	091b      	lsrs	r3, r3, #4
 8001a62:	f003 0201 	and.w	r2, r3, #1
 8001a66:	69fb      	ldr	r3, [r7, #28]
 8001a68:	fa02 f303 	lsl.w	r3, r2, r3
 8001a6c:	69ba      	ldr	r2, [r7, #24]
 8001a6e:	4313      	orrs	r3, r2
 8001a70:	61bb      	str	r3, [r7, #24]
 8001a72:	687b      	ldr	r3, [r7, #4]
 8001a74:	69ba      	ldr	r2, [r7, #24]
 8001a76:	605a      	str	r2, [r3, #4]
 8001a78:	683b      	ldr	r3, [r7, #0]
 8001a7a:	685b      	ldr	r3, [r3, #4]
 8001a7c:	f003 0303 	and.w	r3, r3, #3
 8001a80:	2b03      	cmp	r3, #3
 8001a82:	d017      	beq.n	8001ab4 <HAL_GPIO_Init+0xf0>
 8001a84:	687b      	ldr	r3, [r7, #4]
 8001a86:	68db      	ldr	r3, [r3, #12]
 8001a88:	61bb      	str	r3, [r7, #24]
 8001a8a:	69fb      	ldr	r3, [r7, #28]
 8001a8c:	005b      	lsls	r3, r3, #1
 8001a8e:	2203      	movs	r2, #3
 8001a90:	fa02 f303 	lsl.w	r3, r2, r3
 8001a94:	43db      	mvns	r3, r3
 8001a96:	69ba      	ldr	r2, [r7, #24]
 8001a98:	4013      	ands	r3, r2
 8001a9a:	61bb      	str	r3, [r7, #24]
 8001a9c:	683b      	ldr	r3, [r7, #0]
 8001a9e:	689a      	ldr	r2, [r3, #8]
 8001aa0:	69fb      	ldr	r3, [r7, #28]
 8001aa2:	005b      	lsls	r3, r3, #1
 8001aa4:	fa02 f303 	lsl.w	r3, r2, r3
 8001aa8:	69ba      	ldr	r2, [r7, #24]
 8001aaa:	4313      	orrs	r3, r2
 8001aac:	61bb      	str	r3, [r7, #24]
 8001aae:	687b      	ldr	r3, [r7, #4]
 8001ab0:	69ba      	ldr	r2, [r7, #24]
 8001ab2:	60da      	str	r2, [r3, #12]
 8001ab4:	683b      	ldr	r3, [r7, #0]
 8001ab6:	685b      	ldr	r3, [r3, #4]
 8001ab8:	f003 0303 	and.w	r3, r3, #3
 8001abc:	2b02      	cmp	r3, #2
 8001abe:	d123      	bne.n	8001b08 <HAL_GPIO_Init+0x144>
 8001ac0:	69fb      	ldr	r3, [r7, #28]
 8001ac2:	08da      	lsrs	r2, r3, #3
 8001ac4:	687b      	ldr	r3, [r7, #4]
 8001ac6:	3208      	adds	r2, #8
 8001ac8:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8001acc:	61bb      	str	r3, [r7, #24]
 8001ace:	69fb      	ldr	r3, [r7, #28]
 8001ad0:	f003 0307 	and.w	r3, r3, #7
 8001ad4:	009b      	lsls	r3, r3, #2
 8001ad6:	220f      	movs	r2, #15
 8001ad8:	fa02 f303 	lsl.w	r3, r2, r3
 8001adc:	43db      	mvns	r3, r3
 8001ade:	69ba      	ldr	r2, [r7, #24]
 8001ae0:	4013      	ands	r3, r2
 8001ae2:	61bb      	str	r3, [r7, #24]
 8001ae4:	683b      	ldr	r3, [r7, #0]
 8001ae6:	691a      	ldr	r2, [r3, #16]
 8001ae8:	69fb      	ldr	r3, [r7, #28]
 8001aea:	f003 0307 	and.w	r3, r3, #7
 8001aee:	009b      	lsls	r3, r3, #2
 8001af0:	fa02 f303 	lsl.w	r3, r2, r3
 8001af4:	69ba      	ldr	r2, [r7, #24]
 8001af6:	4313      	orrs	r3, r2
 8001af8:	61bb      	str	r3, [r7, #24]
 8001afa:	69fb      	ldr	r3, [r7, #28]
 8001afc:	08da      	lsrs	r2, r3, #3
 8001afe:	687b      	ldr	r3, [r7, #4]
 8001b00:	3208      	adds	r2, #8
 8001b02:	69b9      	ldr	r1, [r7, #24]
 8001b04:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8001b08:	687b      	ldr	r3, [r7, #4]
 8001b0a:	681b      	ldr	r3, [r3, #0]
 8001b0c:	61bb      	str	r3, [r7, #24]
 8001b0e:	69fb      	ldr	r3, [r7, #28]
 8001b10:	005b      	lsls	r3, r3, #1
 8001b12:	2203      	movs	r2, #3
 8001b14:	fa02 f303 	lsl.w	r3, r2, r3
 8001b18:	43db      	mvns	r3, r3
 8001b1a:	69ba      	ldr	r2, [r7, #24]
 8001b1c:	4013      	ands	r3, r2
 8001b1e:	61bb      	str	r3, [r7, #24]
 8001b20:	683b      	ldr	r3, [r7, #0]
 8001b22:	685b      	ldr	r3, [r3, #4]
 8001b24:	f003 0203 	and.w	r2, r3, #3
 8001b28:	69fb      	ldr	r3, [r7, #28]
 8001b2a:	005b      	lsls	r3, r3, #1
 8001b2c:	fa02 f303 	lsl.w	r3, r2, r3
 8001b30:	69ba      	ldr	r2, [r7, #24]
 8001b32:	4313      	orrs	r3, r2
 8001b34:	61bb      	str	r3, [r7, #24]
 8001b36:	687b      	ldr	r3, [r7, #4]
 8001b38:	69ba      	ldr	r2, [r7, #24]
 8001b3a:	601a      	str	r2, [r3, #0]
 8001b3c:	683b      	ldr	r3, [r7, #0]
 8001b3e:	685b      	ldr	r3, [r3, #4]
 8001b40:	f403 3340 	and.w	r3, r3, #196608	@ 0x30000
 8001b44:	2b00      	cmp	r3, #0
 8001b46:	f000 80b4 	beq.w	8001cb2 <HAL_GPIO_Init+0x2ee>
 8001b4a:	2300      	movs	r3, #0
 8001b4c:	60fb      	str	r3, [r7, #12]
 8001b4e:	4b60      	ldr	r3, [pc, #384]	@ (8001cd0 <HAL_GPIO_Init+0x30c>)
 8001b50:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001b52:	4a5f      	ldr	r2, [pc, #380]	@ (8001cd0 <HAL_GPIO_Init+0x30c>)
 8001b54:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 8001b58:	6453      	str	r3, [r2, #68]	@ 0x44
 8001b5a:	4b5d      	ldr	r3, [pc, #372]	@ (8001cd0 <HAL_GPIO_Init+0x30c>)
 8001b5c:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001b5e:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8001b62:	60fb      	str	r3, [r7, #12]
 8001b64:	68fb      	ldr	r3, [r7, #12]
 8001b66:	4a5b      	ldr	r2, [pc, #364]	@ (8001cd4 <HAL_GPIO_Init+0x310>)
 8001b68:	69fb      	ldr	r3, [r7, #28]
 8001b6a:	089b      	lsrs	r3, r3, #2
 8001b6c:	3302      	adds	r3, #2
 8001b6e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8001b72:	61bb      	str	r3, [r7, #24]
 8001b74:	69fb      	ldr	r3, [r7, #28]
 8001b76:	f003 0303 	and.w	r3, r3, #3
 8001b7a:	009b      	lsls	r3, r3, #2
 8001b7c:	220f      	movs	r2, #15
 8001b7e:	fa02 f303 	lsl.w	r3, r2, r3
 8001b82:	43db      	mvns	r3, r3
 8001b84:	69ba      	ldr	r2, [r7, #24]
 8001b86:	4013      	ands	r3, r2
 8001b88:	61bb      	str	r3, [r7, #24]
 8001b8a:	687b      	ldr	r3, [r7, #4]
 8001b8c:	4a52      	ldr	r2, [pc, #328]	@ (8001cd8 <HAL_GPIO_Init+0x314>)
 8001b8e:	4293      	cmp	r3, r2
 8001b90:	d02b      	beq.n	8001bea <HAL_GPIO_Init+0x226>
 8001b92:	687b      	ldr	r3, [r7, #4]
 8001b94:	4a51      	ldr	r2, [pc, #324]	@ (8001cdc <HAL_GPIO_Init+0x318>)
 8001b96:	4293      	cmp	r3, r2
 8001b98:	d025      	beq.n	8001be6 <HAL_GPIO_Init+0x222>
 8001b9a:	687b      	ldr	r3, [r7, #4]
 8001b9c:	4a50      	ldr	r2, [pc, #320]	@ (8001ce0 <HAL_GPIO_Init+0x31c>)
 8001b9e:	4293      	cmp	r3, r2
 8001ba0:	d01f      	beq.n	8001be2 <HAL_GPIO_Init+0x21e>
 8001ba2:	687b      	ldr	r3, [r7, #4]
 8001ba4:	4a4f      	ldr	r2, [pc, #316]	@ (8001ce4 <HAL_GPIO_Init+0x320>)
 8001ba6:	4293      	cmp	r3, r2
 8001ba8:	d019      	beq.n	8001bde <HAL_GPIO_Init+0x21a>
 8001baa:	687b      	ldr	r3, [r7, #4]
 8001bac:	4a4e      	ldr	r2, [pc, #312]	@ (8001ce8 <HAL_GPIO_Init+0x324>)
 8001bae:	4293      	cmp	r3, r2
 8001bb0:	d013      	beq.n	8001bda <HAL_GPIO_Init+0x216>
 8001bb2:	687b      	ldr	r3, [r7, #4]
 8001bb4:	4a4d      	ldr	r2, [pc, #308]	@ (8001cec <HAL_GPIO_Init+0x328>)
 8001bb6:	4293      	cmp	r3, r2
 8001bb8:	d00d      	beq.n	8001bd6 <HAL_GPIO_Init+0x212>
 8001bba:	687b      	ldr	r3, [r7, #4]
 8001bbc:	4a4c      	ldr	r2, [pc, #304]	@ (8001cf0 <HAL_GPIO_Init+0x32c>)
 8001bbe:	4293      	cmp	r3, r2
 8001bc0:	d007      	beq.n	8001bd2 <HAL_GPIO_Init+0x20e>
 8001bc2:	687b      	ldr	r3, [r7, #4]
 8001bc4:	4a4b      	ldr	r2, [pc, #300]	@ (8001cf4 <HAL_GPIO_Init+0x330>)
 8001bc6:	4293      	cmp	r3, r2
 8001bc8:	d101      	bne.n	8001bce <HAL_GPIO_Init+0x20a>
 8001bca:	2307      	movs	r3, #7
 8001bcc:	e00e      	b.n	8001bec <HAL_GPIO_Init+0x228>
 8001bce:	2308      	movs	r3, #8
 8001bd0:	e00c      	b.n	8001bec <HAL_GPIO_Init+0x228>
 8001bd2:	2306      	movs	r3, #6
 8001bd4:	e00a      	b.n	8001bec <HAL_GPIO_Init+0x228>
 8001bd6:	2305      	movs	r3, #5
 8001bd8:	e008      	b.n	8001bec <HAL_GPIO_Init+0x228>
 8001bda:	2304      	movs	r3, #4
 8001bdc:	e006      	b.n	8001bec <HAL_GPIO_Init+0x228>
 8001bde:	2303      	movs	r3, #3
 8001be0:	e004      	b.n	8001bec <HAL_GPIO_Init+0x228>
 8001be2:	2302      	movs	r3, #2
 8001be4:	e002      	b.n	8001bec <HAL_GPIO_Init+0x228>
 8001be6:	2301      	movs	r3, #1
 8001be8:	e000      	b.n	8001bec <HAL_GPIO_Init+0x228>
 8001bea:	2300      	movs	r3, #0
 8001bec:	69fa      	ldr	r2, [r7, #28]
 8001bee:	f002 0203 	and.w	r2, r2, #3
 8001bf2:	0092      	lsls	r2, r2, #2
 8001bf4:	4093      	lsls	r3, r2
 8001bf6:	69ba      	ldr	r2, [r7, #24]
 8001bf8:	4313      	orrs	r3, r2
 8001bfa:	61bb      	str	r3, [r7, #24]
 8001bfc:	4935      	ldr	r1, [pc, #212]	@ (8001cd4 <HAL_GPIO_Init+0x310>)
 8001bfe:	69fb      	ldr	r3, [r7, #28]
 8001c00:	089b      	lsrs	r3, r3, #2
 8001c02:	3302      	adds	r3, #2
 8001c04:	69ba      	ldr	r2, [r7, #24]
 8001c06:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001c0a:	4b3b      	ldr	r3, [pc, #236]	@ (8001cf8 <HAL_GPIO_Init+0x334>)
 8001c0c:	689b      	ldr	r3, [r3, #8]
 8001c0e:	61bb      	str	r3, [r7, #24]
 8001c10:	693b      	ldr	r3, [r7, #16]
 8001c12:	43db      	mvns	r3, r3
 8001c14:	69ba      	ldr	r2, [r7, #24]
 8001c16:	4013      	ands	r3, r2
 8001c18:	61bb      	str	r3, [r7, #24]
 8001c1a:	683b      	ldr	r3, [r7, #0]
 8001c1c:	685b      	ldr	r3, [r3, #4]
 8001c1e:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 8001c22:	2b00      	cmp	r3, #0
 8001c24:	d003      	beq.n	8001c2e <HAL_GPIO_Init+0x26a>
 8001c26:	69ba      	ldr	r2, [r7, #24]
 8001c28:	693b      	ldr	r3, [r7, #16]
 8001c2a:	4313      	orrs	r3, r2
 8001c2c:	61bb      	str	r3, [r7, #24]
 8001c2e:	4a32      	ldr	r2, [pc, #200]	@ (8001cf8 <HAL_GPIO_Init+0x334>)
 8001c30:	69bb      	ldr	r3, [r7, #24]
 8001c32:	6093      	str	r3, [r2, #8]
 8001c34:	4b30      	ldr	r3, [pc, #192]	@ (8001cf8 <HAL_GPIO_Init+0x334>)
 8001c36:	68db      	ldr	r3, [r3, #12]
 8001c38:	61bb      	str	r3, [r7, #24]
 8001c3a:	693b      	ldr	r3, [r7, #16]
 8001c3c:	43db      	mvns	r3, r3
 8001c3e:	69ba      	ldr	r2, [r7, #24]
 8001c40:	4013      	ands	r3, r2
 8001c42:	61bb      	str	r3, [r7, #24]
 8001c44:	683b      	ldr	r3, [r7, #0]
 8001c46:	685b      	ldr	r3, [r3, #4]
 8001c48:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 8001c4c:	2b00      	cmp	r3, #0
 8001c4e:	d003      	beq.n	8001c58 <HAL_GPIO_Init+0x294>
 8001c50:	69ba      	ldr	r2, [r7, #24]
 8001c52:	693b      	ldr	r3, [r7, #16]
 8001c54:	4313      	orrs	r3, r2
 8001c56:	61bb      	str	r3, [r7, #24]
 8001c58:	4a27      	ldr	r2, [pc, #156]	@ (8001cf8 <HAL_GPIO_Init+0x334>)
 8001c5a:	69bb      	ldr	r3, [r7, #24]
 8001c5c:	60d3      	str	r3, [r2, #12]
 8001c5e:	4b26      	ldr	r3, [pc, #152]	@ (8001cf8 <HAL_GPIO_Init+0x334>)
 8001c60:	685b      	ldr	r3, [r3, #4]
 8001c62:	61bb      	str	r3, [r7, #24]
 8001c64:	693b      	ldr	r3, [r7, #16]
 8001c66:	43db      	mvns	r3, r3
 8001c68:	69ba      	ldr	r2, [r7, #24]
 8001c6a:	4013      	ands	r3, r2
 8001c6c:	61bb      	str	r3, [r7, #24]
 8001c6e:	683b      	ldr	r3, [r7, #0]
 8001c70:	685b      	ldr	r3, [r3, #4]
 8001c72:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8001c76:	2b00      	cmp	r3, #0
 8001c78:	d003      	beq.n	8001c82 <HAL_GPIO_Init+0x2be>
 8001c7a:	69ba      	ldr	r2, [r7, #24]
 8001c7c:	693b      	ldr	r3, [r7, #16]
 8001c7e:	4313      	orrs	r3, r2
 8001c80:	61bb      	str	r3, [r7, #24]
 8001c82:	4a1d      	ldr	r2, [pc, #116]	@ (8001cf8 <HAL_GPIO_Init+0x334>)
 8001c84:	69bb      	ldr	r3, [r7, #24]
 8001c86:	6053      	str	r3, [r2, #4]
 8001c88:	4b1b      	ldr	r3, [pc, #108]	@ (8001cf8 <HAL_GPIO_Init+0x334>)
 8001c8a:	681b      	ldr	r3, [r3, #0]
 8001c8c:	61bb      	str	r3, [r7, #24]
 8001c8e:	693b      	ldr	r3, [r7, #16]
 8001c90:	43db      	mvns	r3, r3
 8001c92:	69ba      	ldr	r2, [r7, #24]
 8001c94:	4013      	ands	r3, r2
 8001c96:	61bb      	str	r3, [r7, #24]
 8001c98:	683b      	ldr	r3, [r7, #0]
 8001c9a:	685b      	ldr	r3, [r3, #4]
 8001c9c:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8001ca0:	2b00      	cmp	r3, #0
 8001ca2:	d003      	beq.n	8001cac <HAL_GPIO_Init+0x2e8>
 8001ca4:	69ba      	ldr	r2, [r7, #24]
 8001ca6:	693b      	ldr	r3, [r7, #16]
 8001ca8:	4313      	orrs	r3, r2
 8001caa:	61bb      	str	r3, [r7, #24]
 8001cac:	4a12      	ldr	r2, [pc, #72]	@ (8001cf8 <HAL_GPIO_Init+0x334>)
 8001cae:	69bb      	ldr	r3, [r7, #24]
 8001cb0:	6013      	str	r3, [r2, #0]
 8001cb2:	69fb      	ldr	r3, [r7, #28]
 8001cb4:	3301      	adds	r3, #1
 8001cb6:	61fb      	str	r3, [r7, #28]
 8001cb8:	69fb      	ldr	r3, [r7, #28]
 8001cba:	2b0f      	cmp	r3, #15
 8001cbc:	f67f ae90 	bls.w	80019e0 <HAL_GPIO_Init+0x1c>
 8001cc0:	bf00      	nop
 8001cc2:	bf00      	nop
 8001cc4:	3724      	adds	r7, #36	@ 0x24
 8001cc6:	46bd      	mov	sp, r7
 8001cc8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001ccc:	4770      	bx	lr
 8001cce:	bf00      	nop
 8001cd0:	40023800 	.word	0x40023800
 8001cd4:	40013800 	.word	0x40013800
 8001cd8:	40020000 	.word	0x40020000
 8001cdc:	40020400 	.word	0x40020400
 8001ce0:	40020800 	.word	0x40020800
 8001ce4:	40020c00 	.word	0x40020c00
 8001ce8:	40021000 	.word	0x40021000
 8001cec:	40021400 	.word	0x40021400
 8001cf0:	40021800 	.word	0x40021800
 8001cf4:	40021c00 	.word	0x40021c00
 8001cf8:	40013c00 	.word	0x40013c00

08001cfc <HAL_RCC_OscConfig>:
 8001cfc:	b580      	push	{r7, lr}
 8001cfe:	b086      	sub	sp, #24
 8001d00:	af00      	add	r7, sp, #0
 8001d02:	6078      	str	r0, [r7, #4]
 8001d04:	687b      	ldr	r3, [r7, #4]
 8001d06:	2b00      	cmp	r3, #0
 8001d08:	d101      	bne.n	8001d0e <HAL_RCC_OscConfig+0x12>
 8001d0a:	2301      	movs	r3, #1
 8001d0c:	e267      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001d0e:	687b      	ldr	r3, [r7, #4]
 8001d10:	681b      	ldr	r3, [r3, #0]
 8001d12:	f003 0301 	and.w	r3, r3, #1
 8001d16:	2b00      	cmp	r3, #0
 8001d18:	d075      	beq.n	8001e06 <HAL_RCC_OscConfig+0x10a>
 8001d1a:	4b88      	ldr	r3, [pc, #544]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d1c:	689b      	ldr	r3, [r3, #8]
 8001d1e:	f003 030c 	and.w	r3, r3, #12
 8001d22:	2b04      	cmp	r3, #4
 8001d24:	d00c      	beq.n	8001d40 <HAL_RCC_OscConfig+0x44>
 8001d26:	4b85      	ldr	r3, [pc, #532]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d28:	689b      	ldr	r3, [r3, #8]
 8001d2a:	f003 030c 	and.w	r3, r3, #12
 8001d2e:	2b08      	cmp	r3, #8
 8001d30:	d112      	bne.n	8001d58 <HAL_RCC_OscConfig+0x5c>
 8001d32:	4b82      	ldr	r3, [pc, #520]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d34:	685b      	ldr	r3, [r3, #4]
 8001d36:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8001d3a:	f5b3 0f80 	cmp.w	r3, #4194304	@ 0x400000
 8001d3e:	d10b      	bne.n	8001d58 <HAL_RCC_OscConfig+0x5c>
 8001d40:	4b7e      	ldr	r3, [pc, #504]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d42:	681b      	ldr	r3, [r3, #0]
 8001d44:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8001d48:	2b00      	cmp	r3, #0
 8001d4a:	d05b      	beq.n	8001e04 <HAL_RCC_OscConfig+0x108>
 8001d4c:	687b      	ldr	r3, [r7, #4]
 8001d4e:	685b      	ldr	r3, [r3, #4]
 8001d50:	2b00      	cmp	r3, #0
 8001d52:	d157      	bne.n	8001e04 <HAL_RCC_OscConfig+0x108>
 8001d54:	2301      	movs	r3, #1
 8001d56:	e242      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001d58:	687b      	ldr	r3, [r7, #4]
 8001d5a:	685b      	ldr	r3, [r3, #4]
 8001d5c:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8001d60:	d106      	bne.n	8001d70 <HAL_RCC_OscConfig+0x74>
 8001d62:	4b76      	ldr	r3, [pc, #472]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d64:	681b      	ldr	r3, [r3, #0]
 8001d66:	4a75      	ldr	r2, [pc, #468]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d68:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001d6c:	6013      	str	r3, [r2, #0]
 8001d6e:	e01d      	b.n	8001dac <HAL_RCC_OscConfig+0xb0>
 8001d70:	687b      	ldr	r3, [r7, #4]
 8001d72:	685b      	ldr	r3, [r3, #4]
 8001d74:	f5b3 2fa0 	cmp.w	r3, #327680	@ 0x50000
 8001d78:	d10c      	bne.n	8001d94 <HAL_RCC_OscConfig+0x98>
 8001d7a:	4b70      	ldr	r3, [pc, #448]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d7c:	681b      	ldr	r3, [r3, #0]
 8001d7e:	4a6f      	ldr	r2, [pc, #444]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d80:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 8001d84:	6013      	str	r3, [r2, #0]
 8001d86:	4b6d      	ldr	r3, [pc, #436]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d88:	681b      	ldr	r3, [r3, #0]
 8001d8a:	4a6c      	ldr	r2, [pc, #432]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d8c:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001d90:	6013      	str	r3, [r2, #0]
 8001d92:	e00b      	b.n	8001dac <HAL_RCC_OscConfig+0xb0>
 8001d94:	4b69      	ldr	r3, [pc, #420]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d96:	681b      	ldr	r3, [r3, #0]
 8001d98:	4a68      	ldr	r2, [pc, #416]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001d9a:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8001d9e:	6013      	str	r3, [r2, #0]
 8001da0:	4b66      	ldr	r3, [pc, #408]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001da2:	681b      	ldr	r3, [r3, #0]
 8001da4:	4a65      	ldr	r2, [pc, #404]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001da6:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 8001daa:	6013      	str	r3, [r2, #0]
 8001dac:	687b      	ldr	r3, [r7, #4]
 8001dae:	685b      	ldr	r3, [r3, #4]
 8001db0:	2b00      	cmp	r3, #0
 8001db2:	d013      	beq.n	8001ddc <HAL_RCC_OscConfig+0xe0>
 8001db4:	f7ff fb56 	bl	8001464 <HAL_GetTick>
 8001db8:	6138      	str	r0, [r7, #16]
 8001dba:	e008      	b.n	8001dce <HAL_RCC_OscConfig+0xd2>
 8001dbc:	f7ff fb52 	bl	8001464 <HAL_GetTick>
 8001dc0:	4602      	mov	r2, r0
 8001dc2:	693b      	ldr	r3, [r7, #16]
 8001dc4:	1ad3      	subs	r3, r2, r3
 8001dc6:	2b64      	cmp	r3, #100	@ 0x64
 8001dc8:	d901      	bls.n	8001dce <HAL_RCC_OscConfig+0xd2>
 8001dca:	2303      	movs	r3, #3
 8001dcc:	e207      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001dce:	4b5b      	ldr	r3, [pc, #364]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001dd0:	681b      	ldr	r3, [r3, #0]
 8001dd2:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8001dd6:	2b00      	cmp	r3, #0
 8001dd8:	d0f0      	beq.n	8001dbc <HAL_RCC_OscConfig+0xc0>
 8001dda:	e014      	b.n	8001e06 <HAL_RCC_OscConfig+0x10a>
 8001ddc:	f7ff fb42 	bl	8001464 <HAL_GetTick>
 8001de0:	6138      	str	r0, [r7, #16]
 8001de2:	e008      	b.n	8001df6 <HAL_RCC_OscConfig+0xfa>
 8001de4:	f7ff fb3e 	bl	8001464 <HAL_GetTick>
 8001de8:	4602      	mov	r2, r0
 8001dea:	693b      	ldr	r3, [r7, #16]
 8001dec:	1ad3      	subs	r3, r2, r3
 8001dee:	2b64      	cmp	r3, #100	@ 0x64
 8001df0:	d901      	bls.n	8001df6 <HAL_RCC_OscConfig+0xfa>
 8001df2:	2303      	movs	r3, #3
 8001df4:	e1f3      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001df6:	4b51      	ldr	r3, [pc, #324]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001df8:	681b      	ldr	r3, [r3, #0]
 8001dfa:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8001dfe:	2b00      	cmp	r3, #0
 8001e00:	d1f0      	bne.n	8001de4 <HAL_RCC_OscConfig+0xe8>
 8001e02:	e000      	b.n	8001e06 <HAL_RCC_OscConfig+0x10a>
 8001e04:	bf00      	nop
 8001e06:	687b      	ldr	r3, [r7, #4]
 8001e08:	681b      	ldr	r3, [r3, #0]
 8001e0a:	f003 0302 	and.w	r3, r3, #2
 8001e0e:	2b00      	cmp	r3, #0
 8001e10:	d063      	beq.n	8001eda <HAL_RCC_OscConfig+0x1de>
 8001e12:	4b4a      	ldr	r3, [pc, #296]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001e14:	689b      	ldr	r3, [r3, #8]
 8001e16:	f003 030c 	and.w	r3, r3, #12
 8001e1a:	2b00      	cmp	r3, #0
 8001e1c:	d00b      	beq.n	8001e36 <HAL_RCC_OscConfig+0x13a>
 8001e1e:	4b47      	ldr	r3, [pc, #284]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001e20:	689b      	ldr	r3, [r3, #8]
 8001e22:	f003 030c 	and.w	r3, r3, #12
 8001e26:	2b08      	cmp	r3, #8
 8001e28:	d11c      	bne.n	8001e64 <HAL_RCC_OscConfig+0x168>
 8001e2a:	4b44      	ldr	r3, [pc, #272]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001e2c:	685b      	ldr	r3, [r3, #4]
 8001e2e:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8001e32:	2b00      	cmp	r3, #0
 8001e34:	d116      	bne.n	8001e64 <HAL_RCC_OscConfig+0x168>
 8001e36:	4b41      	ldr	r3, [pc, #260]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001e38:	681b      	ldr	r3, [r3, #0]
 8001e3a:	f003 0302 	and.w	r3, r3, #2
 8001e3e:	2b00      	cmp	r3, #0
 8001e40:	d005      	beq.n	8001e4e <HAL_RCC_OscConfig+0x152>
 8001e42:	687b      	ldr	r3, [r7, #4]
 8001e44:	68db      	ldr	r3, [r3, #12]
 8001e46:	2b01      	cmp	r3, #1
 8001e48:	d001      	beq.n	8001e4e <HAL_RCC_OscConfig+0x152>
 8001e4a:	2301      	movs	r3, #1
 8001e4c:	e1c7      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001e4e:	4b3b      	ldr	r3, [pc, #236]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001e50:	681b      	ldr	r3, [r3, #0]
 8001e52:	f023 02f8 	bic.w	r2, r3, #248	@ 0xf8
 8001e56:	687b      	ldr	r3, [r7, #4]
 8001e58:	691b      	ldr	r3, [r3, #16]
 8001e5a:	00db      	lsls	r3, r3, #3
 8001e5c:	4937      	ldr	r1, [pc, #220]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001e5e:	4313      	orrs	r3, r2
 8001e60:	600b      	str	r3, [r1, #0]
 8001e62:	e03a      	b.n	8001eda <HAL_RCC_OscConfig+0x1de>
 8001e64:	687b      	ldr	r3, [r7, #4]
 8001e66:	68db      	ldr	r3, [r3, #12]
 8001e68:	2b00      	cmp	r3, #0
 8001e6a:	d020      	beq.n	8001eae <HAL_RCC_OscConfig+0x1b2>
 8001e6c:	4b34      	ldr	r3, [pc, #208]	@ (8001f40 <HAL_RCC_OscConfig+0x244>)
 8001e6e:	2201      	movs	r2, #1
 8001e70:	601a      	str	r2, [r3, #0]
 8001e72:	f7ff faf7 	bl	8001464 <HAL_GetTick>
 8001e76:	6138      	str	r0, [r7, #16]
 8001e78:	e008      	b.n	8001e8c <HAL_RCC_OscConfig+0x190>
 8001e7a:	f7ff faf3 	bl	8001464 <HAL_GetTick>
 8001e7e:	4602      	mov	r2, r0
 8001e80:	693b      	ldr	r3, [r7, #16]
 8001e82:	1ad3      	subs	r3, r2, r3
 8001e84:	2b02      	cmp	r3, #2
 8001e86:	d901      	bls.n	8001e8c <HAL_RCC_OscConfig+0x190>
 8001e88:	2303      	movs	r3, #3
 8001e8a:	e1a8      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001e8c:	4b2b      	ldr	r3, [pc, #172]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001e8e:	681b      	ldr	r3, [r3, #0]
 8001e90:	f003 0302 	and.w	r3, r3, #2
 8001e94:	2b00      	cmp	r3, #0
 8001e96:	d0f0      	beq.n	8001e7a <HAL_RCC_OscConfig+0x17e>
 8001e98:	4b28      	ldr	r3, [pc, #160]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001e9a:	681b      	ldr	r3, [r3, #0]
 8001e9c:	f023 02f8 	bic.w	r2, r3, #248	@ 0xf8
 8001ea0:	687b      	ldr	r3, [r7, #4]
 8001ea2:	691b      	ldr	r3, [r3, #16]
 8001ea4:	00db      	lsls	r3, r3, #3
 8001ea6:	4925      	ldr	r1, [pc, #148]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001ea8:	4313      	orrs	r3, r2
 8001eaa:	600b      	str	r3, [r1, #0]
 8001eac:	e015      	b.n	8001eda <HAL_RCC_OscConfig+0x1de>
 8001eae:	4b24      	ldr	r3, [pc, #144]	@ (8001f40 <HAL_RCC_OscConfig+0x244>)
 8001eb0:	2200      	movs	r2, #0
 8001eb2:	601a      	str	r2, [r3, #0]
 8001eb4:	f7ff fad6 	bl	8001464 <HAL_GetTick>
 8001eb8:	6138      	str	r0, [r7, #16]
 8001eba:	e008      	b.n	8001ece <HAL_RCC_OscConfig+0x1d2>
 8001ebc:	f7ff fad2 	bl	8001464 <HAL_GetTick>
 8001ec0:	4602      	mov	r2, r0
 8001ec2:	693b      	ldr	r3, [r7, #16]
 8001ec4:	1ad3      	subs	r3, r2, r3
 8001ec6:	2b02      	cmp	r3, #2
 8001ec8:	d901      	bls.n	8001ece <HAL_RCC_OscConfig+0x1d2>
 8001eca:	2303      	movs	r3, #3
 8001ecc:	e187      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001ece:	4b1b      	ldr	r3, [pc, #108]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001ed0:	681b      	ldr	r3, [r3, #0]
 8001ed2:	f003 0302 	and.w	r3, r3, #2
 8001ed6:	2b00      	cmp	r3, #0
 8001ed8:	d1f0      	bne.n	8001ebc <HAL_RCC_OscConfig+0x1c0>
 8001eda:	687b      	ldr	r3, [r7, #4]
 8001edc:	681b      	ldr	r3, [r3, #0]
 8001ede:	f003 0308 	and.w	r3, r3, #8
 8001ee2:	2b00      	cmp	r3, #0
 8001ee4:	d036      	beq.n	8001f54 <HAL_RCC_OscConfig+0x258>
 8001ee6:	687b      	ldr	r3, [r7, #4]
 8001ee8:	695b      	ldr	r3, [r3, #20]
 8001eea:	2b00      	cmp	r3, #0
 8001eec:	d016      	beq.n	8001f1c <HAL_RCC_OscConfig+0x220>
 8001eee:	4b15      	ldr	r3, [pc, #84]	@ (8001f44 <HAL_RCC_OscConfig+0x248>)
 8001ef0:	2201      	movs	r2, #1
 8001ef2:	601a      	str	r2, [r3, #0]
 8001ef4:	f7ff fab6 	bl	8001464 <HAL_GetTick>
 8001ef8:	6138      	str	r0, [r7, #16]
 8001efa:	e008      	b.n	8001f0e <HAL_RCC_OscConfig+0x212>
 8001efc:	f7ff fab2 	bl	8001464 <HAL_GetTick>
 8001f00:	4602      	mov	r2, r0
 8001f02:	693b      	ldr	r3, [r7, #16]
 8001f04:	1ad3      	subs	r3, r2, r3
 8001f06:	2b02      	cmp	r3, #2
 8001f08:	d901      	bls.n	8001f0e <HAL_RCC_OscConfig+0x212>
 8001f0a:	2303      	movs	r3, #3
 8001f0c:	e167      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001f0e:	4b0b      	ldr	r3, [pc, #44]	@ (8001f3c <HAL_RCC_OscConfig+0x240>)
 8001f10:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8001f12:	f003 0302 	and.w	r3, r3, #2
 8001f16:	2b00      	cmp	r3, #0
 8001f18:	d0f0      	beq.n	8001efc <HAL_RCC_OscConfig+0x200>
 8001f1a:	e01b      	b.n	8001f54 <HAL_RCC_OscConfig+0x258>
 8001f1c:	4b09      	ldr	r3, [pc, #36]	@ (8001f44 <HAL_RCC_OscConfig+0x248>)
 8001f1e:	2200      	movs	r2, #0
 8001f20:	601a      	str	r2, [r3, #0]
 8001f22:	f7ff fa9f 	bl	8001464 <HAL_GetTick>
 8001f26:	6138      	str	r0, [r7, #16]
 8001f28:	e00e      	b.n	8001f48 <HAL_RCC_OscConfig+0x24c>
 8001f2a:	f7ff fa9b 	bl	8001464 <HAL_GetTick>
 8001f2e:	4602      	mov	r2, r0
 8001f30:	693b      	ldr	r3, [r7, #16]
 8001f32:	1ad3      	subs	r3, r2, r3
 8001f34:	2b02      	cmp	r3, #2
 8001f36:	d907      	bls.n	8001f48 <HAL_RCC_OscConfig+0x24c>
 8001f38:	2303      	movs	r3, #3
 8001f3a:	e150      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001f3c:	40023800 	.word	0x40023800
 8001f40:	42470000 	.word	0x42470000
 8001f44:	42470e80 	.word	0x42470e80
 8001f48:	4b88      	ldr	r3, [pc, #544]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001f4a:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8001f4c:	f003 0302 	and.w	r3, r3, #2
 8001f50:	2b00      	cmp	r3, #0
 8001f52:	d1ea      	bne.n	8001f2a <HAL_RCC_OscConfig+0x22e>
 8001f54:	687b      	ldr	r3, [r7, #4]
 8001f56:	681b      	ldr	r3, [r3, #0]
 8001f58:	f003 0304 	and.w	r3, r3, #4
 8001f5c:	2b00      	cmp	r3, #0
 8001f5e:	f000 8097 	beq.w	8002090 <HAL_RCC_OscConfig+0x394>
 8001f62:	2300      	movs	r3, #0
 8001f64:	75fb      	strb	r3, [r7, #23]
 8001f66:	4b81      	ldr	r3, [pc, #516]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001f68:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001f6a:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8001f6e:	2b00      	cmp	r3, #0
 8001f70:	d10f      	bne.n	8001f92 <HAL_RCC_OscConfig+0x296>
 8001f72:	2300      	movs	r3, #0
 8001f74:	60bb      	str	r3, [r7, #8]
 8001f76:	4b7d      	ldr	r3, [pc, #500]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001f78:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001f7a:	4a7c      	ldr	r2, [pc, #496]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001f7c:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8001f80:	6413      	str	r3, [r2, #64]	@ 0x40
 8001f82:	4b7a      	ldr	r3, [pc, #488]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001f84:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001f86:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8001f8a:	60bb      	str	r3, [r7, #8]
 8001f8c:	68bb      	ldr	r3, [r7, #8]
 8001f8e:	2301      	movs	r3, #1
 8001f90:	75fb      	strb	r3, [r7, #23]
 8001f92:	4b77      	ldr	r3, [pc, #476]	@ (8002170 <HAL_RCC_OscConfig+0x474>)
 8001f94:	681b      	ldr	r3, [r3, #0]
 8001f96:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8001f9a:	2b00      	cmp	r3, #0
 8001f9c:	d118      	bne.n	8001fd0 <HAL_RCC_OscConfig+0x2d4>
 8001f9e:	4b74      	ldr	r3, [pc, #464]	@ (8002170 <HAL_RCC_OscConfig+0x474>)
 8001fa0:	681b      	ldr	r3, [r3, #0]
 8001fa2:	4a73      	ldr	r2, [pc, #460]	@ (8002170 <HAL_RCC_OscConfig+0x474>)
 8001fa4:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8001fa8:	6013      	str	r3, [r2, #0]
 8001faa:	f7ff fa5b 	bl	8001464 <HAL_GetTick>
 8001fae:	6138      	str	r0, [r7, #16]
 8001fb0:	e008      	b.n	8001fc4 <HAL_RCC_OscConfig+0x2c8>
 8001fb2:	f7ff fa57 	bl	8001464 <HAL_GetTick>
 8001fb6:	4602      	mov	r2, r0
 8001fb8:	693b      	ldr	r3, [r7, #16]
 8001fba:	1ad3      	subs	r3, r2, r3
 8001fbc:	2b02      	cmp	r3, #2
 8001fbe:	d901      	bls.n	8001fc4 <HAL_RCC_OscConfig+0x2c8>
 8001fc0:	2303      	movs	r3, #3
 8001fc2:	e10c      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8001fc4:	4b6a      	ldr	r3, [pc, #424]	@ (8002170 <HAL_RCC_OscConfig+0x474>)
 8001fc6:	681b      	ldr	r3, [r3, #0]
 8001fc8:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8001fcc:	2b00      	cmp	r3, #0
 8001fce:	d0f0      	beq.n	8001fb2 <HAL_RCC_OscConfig+0x2b6>
 8001fd0:	687b      	ldr	r3, [r7, #4]
 8001fd2:	689b      	ldr	r3, [r3, #8]
 8001fd4:	2b01      	cmp	r3, #1
 8001fd6:	d106      	bne.n	8001fe6 <HAL_RCC_OscConfig+0x2ea>
 8001fd8:	4b64      	ldr	r3, [pc, #400]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001fda:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8001fdc:	4a63      	ldr	r2, [pc, #396]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001fde:	f043 0301 	orr.w	r3, r3, #1
 8001fe2:	6713      	str	r3, [r2, #112]	@ 0x70
 8001fe4:	e01c      	b.n	8002020 <HAL_RCC_OscConfig+0x324>
 8001fe6:	687b      	ldr	r3, [r7, #4]
 8001fe8:	689b      	ldr	r3, [r3, #8]
 8001fea:	2b05      	cmp	r3, #5
 8001fec:	d10c      	bne.n	8002008 <HAL_RCC_OscConfig+0x30c>
 8001fee:	4b5f      	ldr	r3, [pc, #380]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001ff0:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8001ff2:	4a5e      	ldr	r2, [pc, #376]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001ff4:	f043 0304 	orr.w	r3, r3, #4
 8001ff8:	6713      	str	r3, [r2, #112]	@ 0x70
 8001ffa:	4b5c      	ldr	r3, [pc, #368]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8001ffc:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8001ffe:	4a5b      	ldr	r2, [pc, #364]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8002000:	f043 0301 	orr.w	r3, r3, #1
 8002004:	6713      	str	r3, [r2, #112]	@ 0x70
 8002006:	e00b      	b.n	8002020 <HAL_RCC_OscConfig+0x324>
 8002008:	4b58      	ldr	r3, [pc, #352]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 800200a:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 800200c:	4a57      	ldr	r2, [pc, #348]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 800200e:	f023 0301 	bic.w	r3, r3, #1
 8002012:	6713      	str	r3, [r2, #112]	@ 0x70
 8002014:	4b55      	ldr	r3, [pc, #340]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8002016:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8002018:	4a54      	ldr	r2, [pc, #336]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 800201a:	f023 0304 	bic.w	r3, r3, #4
 800201e:	6713      	str	r3, [r2, #112]	@ 0x70
 8002020:	687b      	ldr	r3, [r7, #4]
 8002022:	689b      	ldr	r3, [r3, #8]
 8002024:	2b00      	cmp	r3, #0
 8002026:	d015      	beq.n	8002054 <HAL_RCC_OscConfig+0x358>
 8002028:	f7ff fa1c 	bl	8001464 <HAL_GetTick>
 800202c:	6138      	str	r0, [r7, #16]
 800202e:	e00a      	b.n	8002046 <HAL_RCC_OscConfig+0x34a>
 8002030:	f7ff fa18 	bl	8001464 <HAL_GetTick>
 8002034:	4602      	mov	r2, r0
 8002036:	693b      	ldr	r3, [r7, #16]
 8002038:	1ad3      	subs	r3, r2, r3
 800203a:	f241 3288 	movw	r2, #5000	@ 0x1388
 800203e:	4293      	cmp	r3, r2
 8002040:	d901      	bls.n	8002046 <HAL_RCC_OscConfig+0x34a>
 8002042:	2303      	movs	r3, #3
 8002044:	e0cb      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8002046:	4b49      	ldr	r3, [pc, #292]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8002048:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 800204a:	f003 0302 	and.w	r3, r3, #2
 800204e:	2b00      	cmp	r3, #0
 8002050:	d0ee      	beq.n	8002030 <HAL_RCC_OscConfig+0x334>
 8002052:	e014      	b.n	800207e <HAL_RCC_OscConfig+0x382>
 8002054:	f7ff fa06 	bl	8001464 <HAL_GetTick>
 8002058:	6138      	str	r0, [r7, #16]
 800205a:	e00a      	b.n	8002072 <HAL_RCC_OscConfig+0x376>
 800205c:	f7ff fa02 	bl	8001464 <HAL_GetTick>
 8002060:	4602      	mov	r2, r0
 8002062:	693b      	ldr	r3, [r7, #16]
 8002064:	1ad3      	subs	r3, r2, r3
 8002066:	f241 3288 	movw	r2, #5000	@ 0x1388
 800206a:	4293      	cmp	r3, r2
 800206c:	d901      	bls.n	8002072 <HAL_RCC_OscConfig+0x376>
 800206e:	2303      	movs	r3, #3
 8002070:	e0b5      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8002072:	4b3e      	ldr	r3, [pc, #248]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8002074:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8002076:	f003 0302 	and.w	r3, r3, #2
 800207a:	2b00      	cmp	r3, #0
 800207c:	d1ee      	bne.n	800205c <HAL_RCC_OscConfig+0x360>
 800207e:	7dfb      	ldrb	r3, [r7, #23]
 8002080:	2b01      	cmp	r3, #1
 8002082:	d105      	bne.n	8002090 <HAL_RCC_OscConfig+0x394>
 8002084:	4b39      	ldr	r3, [pc, #228]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8002086:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8002088:	4a38      	ldr	r2, [pc, #224]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 800208a:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 800208e:	6413      	str	r3, [r2, #64]	@ 0x40
 8002090:	687b      	ldr	r3, [r7, #4]
 8002092:	699b      	ldr	r3, [r3, #24]
 8002094:	2b00      	cmp	r3, #0
 8002096:	f000 80a1 	beq.w	80021dc <HAL_RCC_OscConfig+0x4e0>
 800209a:	4b34      	ldr	r3, [pc, #208]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 800209c:	689b      	ldr	r3, [r3, #8]
 800209e:	f003 030c 	and.w	r3, r3, #12
 80020a2:	2b08      	cmp	r3, #8
 80020a4:	d05c      	beq.n	8002160 <HAL_RCC_OscConfig+0x464>
 80020a6:	687b      	ldr	r3, [r7, #4]
 80020a8:	699b      	ldr	r3, [r3, #24]
 80020aa:	2b02      	cmp	r3, #2
 80020ac:	d141      	bne.n	8002132 <HAL_RCC_OscConfig+0x436>
 80020ae:	4b31      	ldr	r3, [pc, #196]	@ (8002174 <HAL_RCC_OscConfig+0x478>)
 80020b0:	2200      	movs	r2, #0
 80020b2:	601a      	str	r2, [r3, #0]
 80020b4:	f7ff f9d6 	bl	8001464 <HAL_GetTick>
 80020b8:	6138      	str	r0, [r7, #16]
 80020ba:	e008      	b.n	80020ce <HAL_RCC_OscConfig+0x3d2>
 80020bc:	f7ff f9d2 	bl	8001464 <HAL_GetTick>
 80020c0:	4602      	mov	r2, r0
 80020c2:	693b      	ldr	r3, [r7, #16]
 80020c4:	1ad3      	subs	r3, r2, r3
 80020c6:	2b02      	cmp	r3, #2
 80020c8:	d901      	bls.n	80020ce <HAL_RCC_OscConfig+0x3d2>
 80020ca:	2303      	movs	r3, #3
 80020cc:	e087      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 80020ce:	4b27      	ldr	r3, [pc, #156]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 80020d0:	681b      	ldr	r3, [r3, #0]
 80020d2:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 80020d6:	2b00      	cmp	r3, #0
 80020d8:	d1f0      	bne.n	80020bc <HAL_RCC_OscConfig+0x3c0>
 80020da:	687b      	ldr	r3, [r7, #4]
 80020dc:	69da      	ldr	r2, [r3, #28]
 80020de:	687b      	ldr	r3, [r7, #4]
 80020e0:	6a1b      	ldr	r3, [r3, #32]
 80020e2:	431a      	orrs	r2, r3
 80020e4:	687b      	ldr	r3, [r7, #4]
 80020e6:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80020e8:	019b      	lsls	r3, r3, #6
 80020ea:	431a      	orrs	r2, r3
 80020ec:	687b      	ldr	r3, [r7, #4]
 80020ee:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80020f0:	085b      	lsrs	r3, r3, #1
 80020f2:	3b01      	subs	r3, #1
 80020f4:	041b      	lsls	r3, r3, #16
 80020f6:	431a      	orrs	r2, r3
 80020f8:	687b      	ldr	r3, [r7, #4]
 80020fa:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80020fc:	061b      	lsls	r3, r3, #24
 80020fe:	491b      	ldr	r1, [pc, #108]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8002100:	4313      	orrs	r3, r2
 8002102:	604b      	str	r3, [r1, #4]
 8002104:	4b1b      	ldr	r3, [pc, #108]	@ (8002174 <HAL_RCC_OscConfig+0x478>)
 8002106:	2201      	movs	r2, #1
 8002108:	601a      	str	r2, [r3, #0]
 800210a:	f7ff f9ab 	bl	8001464 <HAL_GetTick>
 800210e:	6138      	str	r0, [r7, #16]
 8002110:	e008      	b.n	8002124 <HAL_RCC_OscConfig+0x428>
 8002112:	f7ff f9a7 	bl	8001464 <HAL_GetTick>
 8002116:	4602      	mov	r2, r0
 8002118:	693b      	ldr	r3, [r7, #16]
 800211a:	1ad3      	subs	r3, r2, r3
 800211c:	2b02      	cmp	r3, #2
 800211e:	d901      	bls.n	8002124 <HAL_RCC_OscConfig+0x428>
 8002120:	2303      	movs	r3, #3
 8002122:	e05c      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8002124:	4b11      	ldr	r3, [pc, #68]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8002126:	681b      	ldr	r3, [r3, #0]
 8002128:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 800212c:	2b00      	cmp	r3, #0
 800212e:	d0f0      	beq.n	8002112 <HAL_RCC_OscConfig+0x416>
 8002130:	e054      	b.n	80021dc <HAL_RCC_OscConfig+0x4e0>
 8002132:	4b10      	ldr	r3, [pc, #64]	@ (8002174 <HAL_RCC_OscConfig+0x478>)
 8002134:	2200      	movs	r2, #0
 8002136:	601a      	str	r2, [r3, #0]
 8002138:	f7ff f994 	bl	8001464 <HAL_GetTick>
 800213c:	6138      	str	r0, [r7, #16]
 800213e:	e008      	b.n	8002152 <HAL_RCC_OscConfig+0x456>
 8002140:	f7ff f990 	bl	8001464 <HAL_GetTick>
 8002144:	4602      	mov	r2, r0
 8002146:	693b      	ldr	r3, [r7, #16]
 8002148:	1ad3      	subs	r3, r2, r3
 800214a:	2b02      	cmp	r3, #2
 800214c:	d901      	bls.n	8002152 <HAL_RCC_OscConfig+0x456>
 800214e:	2303      	movs	r3, #3
 8002150:	e045      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 8002152:	4b06      	ldr	r3, [pc, #24]	@ (800216c <HAL_RCC_OscConfig+0x470>)
 8002154:	681b      	ldr	r3, [r3, #0]
 8002156:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 800215a:	2b00      	cmp	r3, #0
 800215c:	d1f0      	bne.n	8002140 <HAL_RCC_OscConfig+0x444>
 800215e:	e03d      	b.n	80021dc <HAL_RCC_OscConfig+0x4e0>
 8002160:	687b      	ldr	r3, [r7, #4]
 8002162:	699b      	ldr	r3, [r3, #24]
 8002164:	2b01      	cmp	r3, #1
 8002166:	d107      	bne.n	8002178 <HAL_RCC_OscConfig+0x47c>
 8002168:	2301      	movs	r3, #1
 800216a:	e038      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 800216c:	40023800 	.word	0x40023800
 8002170:	40007000 	.word	0x40007000
 8002174:	42470060 	.word	0x42470060
 8002178:	4b1b      	ldr	r3, [pc, #108]	@ (80021e8 <HAL_RCC_OscConfig+0x4ec>)
 800217a:	685b      	ldr	r3, [r3, #4]
 800217c:	60fb      	str	r3, [r7, #12]
 800217e:	687b      	ldr	r3, [r7, #4]
 8002180:	699b      	ldr	r3, [r3, #24]
 8002182:	2b01      	cmp	r3, #1
 8002184:	d028      	beq.n	80021d8 <HAL_RCC_OscConfig+0x4dc>
 8002186:	68fb      	ldr	r3, [r7, #12]
 8002188:	f403 0280 	and.w	r2, r3, #4194304	@ 0x400000
 800218c:	687b      	ldr	r3, [r7, #4]
 800218e:	69db      	ldr	r3, [r3, #28]
 8002190:	429a      	cmp	r2, r3
 8002192:	d121      	bne.n	80021d8 <HAL_RCC_OscConfig+0x4dc>
 8002194:	68fb      	ldr	r3, [r7, #12]
 8002196:	f003 023f 	and.w	r2, r3, #63	@ 0x3f
 800219a:	687b      	ldr	r3, [r7, #4]
 800219c:	6a1b      	ldr	r3, [r3, #32]
 800219e:	429a      	cmp	r2, r3
 80021a0:	d11a      	bne.n	80021d8 <HAL_RCC_OscConfig+0x4dc>
 80021a2:	68fa      	ldr	r2, [r7, #12]
 80021a4:	f647 73c0 	movw	r3, #32704	@ 0x7fc0
 80021a8:	4013      	ands	r3, r2
 80021aa:	687a      	ldr	r2, [r7, #4]
 80021ac:	6a52      	ldr	r2, [r2, #36]	@ 0x24
 80021ae:	0192      	lsls	r2, r2, #6
 80021b0:	4293      	cmp	r3, r2
 80021b2:	d111      	bne.n	80021d8 <HAL_RCC_OscConfig+0x4dc>
 80021b4:	68fb      	ldr	r3, [r7, #12]
 80021b6:	f403 3240 	and.w	r2, r3, #196608	@ 0x30000
 80021ba:	687b      	ldr	r3, [r7, #4]
 80021bc:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80021be:	085b      	lsrs	r3, r3, #1
 80021c0:	3b01      	subs	r3, #1
 80021c2:	041b      	lsls	r3, r3, #16
 80021c4:	429a      	cmp	r2, r3
 80021c6:	d107      	bne.n	80021d8 <HAL_RCC_OscConfig+0x4dc>
 80021c8:	68fb      	ldr	r3, [r7, #12]
 80021ca:	f003 6270 	and.w	r2, r3, #251658240	@ 0xf000000
 80021ce:	687b      	ldr	r3, [r7, #4]
 80021d0:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80021d2:	061b      	lsls	r3, r3, #24
 80021d4:	429a      	cmp	r2, r3
 80021d6:	d001      	beq.n	80021dc <HAL_RCC_OscConfig+0x4e0>
 80021d8:	2301      	movs	r3, #1
 80021da:	e000      	b.n	80021de <HAL_RCC_OscConfig+0x4e2>
 80021dc:	2300      	movs	r3, #0
 80021de:	4618      	mov	r0, r3
 80021e0:	3718      	adds	r7, #24
 80021e2:	46bd      	mov	sp, r7
 80021e4:	bd80      	pop	{r7, pc}
 80021e6:	bf00      	nop
 80021e8:	40023800 	.word	0x40023800

080021ec <HAL_RCC_ClockConfig>:
 80021ec:	b580      	push	{r7, lr}
 80021ee:	b084      	sub	sp, #16
 80021f0:	af00      	add	r7, sp, #0
 80021f2:	6078      	str	r0, [r7, #4]
 80021f4:	6039      	str	r1, [r7, #0]
 80021f6:	687b      	ldr	r3, [r7, #4]
 80021f8:	2b00      	cmp	r3, #0
 80021fa:	d101      	bne.n	8002200 <HAL_RCC_ClockConfig+0x14>
 80021fc:	2301      	movs	r3, #1
 80021fe:	e0cc      	b.n	800239a <HAL_RCC_ClockConfig+0x1ae>
 8002200:	4b68      	ldr	r3, [pc, #416]	@ (80023a4 <HAL_RCC_ClockConfig+0x1b8>)
 8002202:	681b      	ldr	r3, [r3, #0]
 8002204:	f003 0307 	and.w	r3, r3, #7
 8002208:	683a      	ldr	r2, [r7, #0]
 800220a:	429a      	cmp	r2, r3
 800220c:	d90c      	bls.n	8002228 <HAL_RCC_ClockConfig+0x3c>
 800220e:	4b65      	ldr	r3, [pc, #404]	@ (80023a4 <HAL_RCC_ClockConfig+0x1b8>)
 8002210:	683a      	ldr	r2, [r7, #0]
 8002212:	b2d2      	uxtb	r2, r2
 8002214:	701a      	strb	r2, [r3, #0]
 8002216:	4b63      	ldr	r3, [pc, #396]	@ (80023a4 <HAL_RCC_ClockConfig+0x1b8>)
 8002218:	681b      	ldr	r3, [r3, #0]
 800221a:	f003 0307 	and.w	r3, r3, #7
 800221e:	683a      	ldr	r2, [r7, #0]
 8002220:	429a      	cmp	r2, r3
 8002222:	d001      	beq.n	8002228 <HAL_RCC_ClockConfig+0x3c>
 8002224:	2301      	movs	r3, #1
 8002226:	e0b8      	b.n	800239a <HAL_RCC_ClockConfig+0x1ae>
 8002228:	687b      	ldr	r3, [r7, #4]
 800222a:	681b      	ldr	r3, [r3, #0]
 800222c:	f003 0302 	and.w	r3, r3, #2
 8002230:	2b00      	cmp	r3, #0
 8002232:	d020      	beq.n	8002276 <HAL_RCC_ClockConfig+0x8a>
 8002234:	687b      	ldr	r3, [r7, #4]
 8002236:	681b      	ldr	r3, [r3, #0]
 8002238:	f003 0304 	and.w	r3, r3, #4
 800223c:	2b00      	cmp	r3, #0
 800223e:	d005      	beq.n	800224c <HAL_RCC_ClockConfig+0x60>
 8002240:	4b59      	ldr	r3, [pc, #356]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 8002242:	689b      	ldr	r3, [r3, #8]
 8002244:	4a58      	ldr	r2, [pc, #352]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 8002246:	f443 53e0 	orr.w	r3, r3, #7168	@ 0x1c00
 800224a:	6093      	str	r3, [r2, #8]
 800224c:	687b      	ldr	r3, [r7, #4]
 800224e:	681b      	ldr	r3, [r3, #0]
 8002250:	f003 0308 	and.w	r3, r3, #8
 8002254:	2b00      	cmp	r3, #0
 8002256:	d005      	beq.n	8002264 <HAL_RCC_ClockConfig+0x78>
 8002258:	4b53      	ldr	r3, [pc, #332]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 800225a:	689b      	ldr	r3, [r3, #8]
 800225c:	4a52      	ldr	r2, [pc, #328]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 800225e:	f443 4360 	orr.w	r3, r3, #57344	@ 0xe000
 8002262:	6093      	str	r3, [r2, #8]
 8002264:	4b50      	ldr	r3, [pc, #320]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 8002266:	689b      	ldr	r3, [r3, #8]
 8002268:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 800226c:	687b      	ldr	r3, [r7, #4]
 800226e:	689b      	ldr	r3, [r3, #8]
 8002270:	494d      	ldr	r1, [pc, #308]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 8002272:	4313      	orrs	r3, r2
 8002274:	608b      	str	r3, [r1, #8]
 8002276:	687b      	ldr	r3, [r7, #4]
 8002278:	681b      	ldr	r3, [r3, #0]
 800227a:	f003 0301 	and.w	r3, r3, #1
 800227e:	2b00      	cmp	r3, #0
 8002280:	d044      	beq.n	800230c <HAL_RCC_ClockConfig+0x120>
 8002282:	687b      	ldr	r3, [r7, #4]
 8002284:	685b      	ldr	r3, [r3, #4]
 8002286:	2b01      	cmp	r3, #1
 8002288:	d107      	bne.n	800229a <HAL_RCC_ClockConfig+0xae>
 800228a:	4b47      	ldr	r3, [pc, #284]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 800228c:	681b      	ldr	r3, [r3, #0]
 800228e:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8002292:	2b00      	cmp	r3, #0
 8002294:	d119      	bne.n	80022ca <HAL_RCC_ClockConfig+0xde>
 8002296:	2301      	movs	r3, #1
 8002298:	e07f      	b.n	800239a <HAL_RCC_ClockConfig+0x1ae>
 800229a:	687b      	ldr	r3, [r7, #4]
 800229c:	685b      	ldr	r3, [r3, #4]
 800229e:	2b02      	cmp	r3, #2
 80022a0:	d003      	beq.n	80022aa <HAL_RCC_ClockConfig+0xbe>
 80022a2:	687b      	ldr	r3, [r7, #4]
 80022a4:	685b      	ldr	r3, [r3, #4]
 80022a6:	2b03      	cmp	r3, #3
 80022a8:	d107      	bne.n	80022ba <HAL_RCC_ClockConfig+0xce>
 80022aa:	4b3f      	ldr	r3, [pc, #252]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 80022ac:	681b      	ldr	r3, [r3, #0]
 80022ae:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 80022b2:	2b00      	cmp	r3, #0
 80022b4:	d109      	bne.n	80022ca <HAL_RCC_ClockConfig+0xde>
 80022b6:	2301      	movs	r3, #1
 80022b8:	e06f      	b.n	800239a <HAL_RCC_ClockConfig+0x1ae>
 80022ba:	4b3b      	ldr	r3, [pc, #236]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 80022bc:	681b      	ldr	r3, [r3, #0]
 80022be:	f003 0302 	and.w	r3, r3, #2
 80022c2:	2b00      	cmp	r3, #0
 80022c4:	d101      	bne.n	80022ca <HAL_RCC_ClockConfig+0xde>
 80022c6:	2301      	movs	r3, #1
 80022c8:	e067      	b.n	800239a <HAL_RCC_ClockConfig+0x1ae>
 80022ca:	4b37      	ldr	r3, [pc, #220]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 80022cc:	689b      	ldr	r3, [r3, #8]
 80022ce:	f023 0203 	bic.w	r2, r3, #3
 80022d2:	687b      	ldr	r3, [r7, #4]
 80022d4:	685b      	ldr	r3, [r3, #4]
 80022d6:	4934      	ldr	r1, [pc, #208]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 80022d8:	4313      	orrs	r3, r2
 80022da:	608b      	str	r3, [r1, #8]
 80022dc:	f7ff f8c2 	bl	8001464 <HAL_GetTick>
 80022e0:	60f8      	str	r0, [r7, #12]
 80022e2:	e00a      	b.n	80022fa <HAL_RCC_ClockConfig+0x10e>
 80022e4:	f7ff f8be 	bl	8001464 <HAL_GetTick>
 80022e8:	4602      	mov	r2, r0
 80022ea:	68fb      	ldr	r3, [r7, #12]
 80022ec:	1ad3      	subs	r3, r2, r3
 80022ee:	f241 3288 	movw	r2, #5000	@ 0x1388
 80022f2:	4293      	cmp	r3, r2
 80022f4:	d901      	bls.n	80022fa <HAL_RCC_ClockConfig+0x10e>
 80022f6:	2303      	movs	r3, #3
 80022f8:	e04f      	b.n	800239a <HAL_RCC_ClockConfig+0x1ae>
 80022fa:	4b2b      	ldr	r3, [pc, #172]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 80022fc:	689b      	ldr	r3, [r3, #8]
 80022fe:	f003 020c 	and.w	r2, r3, #12
 8002302:	687b      	ldr	r3, [r7, #4]
 8002304:	685b      	ldr	r3, [r3, #4]
 8002306:	009b      	lsls	r3, r3, #2
 8002308:	429a      	cmp	r2, r3
 800230a:	d1eb      	bne.n	80022e4 <HAL_RCC_ClockConfig+0xf8>
 800230c:	4b25      	ldr	r3, [pc, #148]	@ (80023a4 <HAL_RCC_ClockConfig+0x1b8>)
 800230e:	681b      	ldr	r3, [r3, #0]
 8002310:	f003 0307 	and.w	r3, r3, #7
 8002314:	683a      	ldr	r2, [r7, #0]
 8002316:	429a      	cmp	r2, r3
 8002318:	d20c      	bcs.n	8002334 <HAL_RCC_ClockConfig+0x148>
 800231a:	4b22      	ldr	r3, [pc, #136]	@ (80023a4 <HAL_RCC_ClockConfig+0x1b8>)
 800231c:	683a      	ldr	r2, [r7, #0]
 800231e:	b2d2      	uxtb	r2, r2
 8002320:	701a      	strb	r2, [r3, #0]
 8002322:	4b20      	ldr	r3, [pc, #128]	@ (80023a4 <HAL_RCC_ClockConfig+0x1b8>)
 8002324:	681b      	ldr	r3, [r3, #0]
 8002326:	f003 0307 	and.w	r3, r3, #7
 800232a:	683a      	ldr	r2, [r7, #0]
 800232c:	429a      	cmp	r2, r3
 800232e:	d001      	beq.n	8002334 <HAL_RCC_ClockConfig+0x148>
 8002330:	2301      	movs	r3, #1
 8002332:	e032      	b.n	800239a <HAL_RCC_ClockConfig+0x1ae>
 8002334:	687b      	ldr	r3, [r7, #4]
 8002336:	681b      	ldr	r3, [r3, #0]
 8002338:	f003 0304 	and.w	r3, r3, #4
 800233c:	2b00      	cmp	r3, #0
 800233e:	d008      	beq.n	8002352 <HAL_RCC_ClockConfig+0x166>
 8002340:	4b19      	ldr	r3, [pc, #100]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 8002342:	689b      	ldr	r3, [r3, #8]
 8002344:	f423 52e0 	bic.w	r2, r3, #7168	@ 0x1c00
 8002348:	687b      	ldr	r3, [r7, #4]
 800234a:	68db      	ldr	r3, [r3, #12]
 800234c:	4916      	ldr	r1, [pc, #88]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 800234e:	4313      	orrs	r3, r2
 8002350:	608b      	str	r3, [r1, #8]
 8002352:	687b      	ldr	r3, [r7, #4]
 8002354:	681b      	ldr	r3, [r3, #0]
 8002356:	f003 0308 	and.w	r3, r3, #8
 800235a:	2b00      	cmp	r3, #0
 800235c:	d009      	beq.n	8002372 <HAL_RCC_ClockConfig+0x186>
 800235e:	4b12      	ldr	r3, [pc, #72]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 8002360:	689b      	ldr	r3, [r3, #8]
 8002362:	f423 4260 	bic.w	r2, r3, #57344	@ 0xe000
 8002366:	687b      	ldr	r3, [r7, #4]
 8002368:	691b      	ldr	r3, [r3, #16]
 800236a:	00db      	lsls	r3, r3, #3
 800236c:	490e      	ldr	r1, [pc, #56]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 800236e:	4313      	orrs	r3, r2
 8002370:	608b      	str	r3, [r1, #8]
 8002372:	f000 f821 	bl	80023b8 <HAL_RCC_GetSysClockFreq>
 8002376:	4602      	mov	r2, r0
 8002378:	4b0b      	ldr	r3, [pc, #44]	@ (80023a8 <HAL_RCC_ClockConfig+0x1bc>)
 800237a:	689b      	ldr	r3, [r3, #8]
 800237c:	091b      	lsrs	r3, r3, #4
 800237e:	f003 030f 	and.w	r3, r3, #15
 8002382:	490a      	ldr	r1, [pc, #40]	@ (80023ac <HAL_RCC_ClockConfig+0x1c0>)
 8002384:	5ccb      	ldrb	r3, [r1, r3]
 8002386:	fa22 f303 	lsr.w	r3, r2, r3
 800238a:	4a09      	ldr	r2, [pc, #36]	@ (80023b0 <HAL_RCC_ClockConfig+0x1c4>)
 800238c:	6013      	str	r3, [r2, #0]
 800238e:	4b09      	ldr	r3, [pc, #36]	@ (80023b4 <HAL_RCC_ClockConfig+0x1c8>)
 8002390:	681b      	ldr	r3, [r3, #0]
 8002392:	4618      	mov	r0, r3
 8002394:	f7ff f822 	bl	80013dc <HAL_InitTick>
 8002398:	2300      	movs	r3, #0
 800239a:	4618      	mov	r0, r3
 800239c:	3710      	adds	r7, #16
 800239e:	46bd      	mov	sp, r7
 80023a0:	bd80      	pop	{r7, pc}
 80023a2:	bf00      	nop
 80023a4:	40023c00 	.word	0x40023c00
 80023a8:	40023800 	.word	0x40023800
 80023ac:	08003ed4 	.word	0x08003ed4
 80023b0:	2000005c 	.word	0x2000005c
 80023b4:	20000060 	.word	0x20000060

080023b8 <HAL_RCC_GetSysClockFreq>:
 80023b8:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
 80023bc:	b094      	sub	sp, #80	@ 0x50
 80023be:	af00      	add	r7, sp, #0
 80023c0:	2300      	movs	r3, #0
 80023c2:	647b      	str	r3, [r7, #68]	@ 0x44
 80023c4:	2300      	movs	r3, #0
 80023c6:	64fb      	str	r3, [r7, #76]	@ 0x4c
 80023c8:	2300      	movs	r3, #0
 80023ca:	643b      	str	r3, [r7, #64]	@ 0x40
 80023cc:	2300      	movs	r3, #0
 80023ce:	64bb      	str	r3, [r7, #72]	@ 0x48
 80023d0:	4b79      	ldr	r3, [pc, #484]	@ (80025b8 <HAL_RCC_GetSysClockFreq+0x200>)
 80023d2:	689b      	ldr	r3, [r3, #8]
 80023d4:	f003 030c 	and.w	r3, r3, #12
 80023d8:	2b08      	cmp	r3, #8
 80023da:	d00d      	beq.n	80023f8 <HAL_RCC_GetSysClockFreq+0x40>
 80023dc:	2b08      	cmp	r3, #8
 80023de:	f200 80e1 	bhi.w	80025a4 <HAL_RCC_GetSysClockFreq+0x1ec>
 80023e2:	2b00      	cmp	r3, #0
 80023e4:	d002      	beq.n	80023ec <HAL_RCC_GetSysClockFreq+0x34>
 80023e6:	2b04      	cmp	r3, #4
 80023e8:	d003      	beq.n	80023f2 <HAL_RCC_GetSysClockFreq+0x3a>
 80023ea:	e0db      	b.n	80025a4 <HAL_RCC_GetSysClockFreq+0x1ec>
 80023ec:	4b73      	ldr	r3, [pc, #460]	@ (80025bc <HAL_RCC_GetSysClockFreq+0x204>)
 80023ee:	64bb      	str	r3, [r7, #72]	@ 0x48
 80023f0:	e0db      	b.n	80025aa <HAL_RCC_GetSysClockFreq+0x1f2>
 80023f2:	4b73      	ldr	r3, [pc, #460]	@ (80025c0 <HAL_RCC_GetSysClockFreq+0x208>)
 80023f4:	64bb      	str	r3, [r7, #72]	@ 0x48
 80023f6:	e0d8      	b.n	80025aa <HAL_RCC_GetSysClockFreq+0x1f2>
 80023f8:	4b6f      	ldr	r3, [pc, #444]	@ (80025b8 <HAL_RCC_GetSysClockFreq+0x200>)
 80023fa:	685b      	ldr	r3, [r3, #4]
 80023fc:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
 8002400:	647b      	str	r3, [r7, #68]	@ 0x44
 8002402:	4b6d      	ldr	r3, [pc, #436]	@ (80025b8 <HAL_RCC_GetSysClockFreq+0x200>)
 8002404:	685b      	ldr	r3, [r3, #4]
 8002406:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 800240a:	2b00      	cmp	r3, #0
 800240c:	d063      	beq.n	80024d6 <HAL_RCC_GetSysClockFreq+0x11e>
 800240e:	4b6a      	ldr	r3, [pc, #424]	@ (80025b8 <HAL_RCC_GetSysClockFreq+0x200>)
 8002410:	685b      	ldr	r3, [r3, #4]
 8002412:	099b      	lsrs	r3, r3, #6
 8002414:	2200      	movs	r2, #0
 8002416:	63bb      	str	r3, [r7, #56]	@ 0x38
 8002418:	63fa      	str	r2, [r7, #60]	@ 0x3c
 800241a:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800241c:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8002420:	633b      	str	r3, [r7, #48]	@ 0x30
 8002422:	2300      	movs	r3, #0
 8002424:	637b      	str	r3, [r7, #52]	@ 0x34
 8002426:	e9d7 450c 	ldrd	r4, r5, [r7, #48]	@ 0x30
 800242a:	4622      	mov	r2, r4
 800242c:	462b      	mov	r3, r5
 800242e:	f04f 0000 	mov.w	r0, #0
 8002432:	f04f 0100 	mov.w	r1, #0
 8002436:	0159      	lsls	r1, r3, #5
 8002438:	ea41 61d2 	orr.w	r1, r1, r2, lsr #27
 800243c:	0150      	lsls	r0, r2, #5
 800243e:	4602      	mov	r2, r0
 8002440:	460b      	mov	r3, r1
 8002442:	4621      	mov	r1, r4
 8002444:	1a51      	subs	r1, r2, r1
 8002446:	6139      	str	r1, [r7, #16]
 8002448:	4629      	mov	r1, r5
 800244a:	eb63 0301 	sbc.w	r3, r3, r1
 800244e:	617b      	str	r3, [r7, #20]
 8002450:	f04f 0200 	mov.w	r2, #0
 8002454:	f04f 0300 	mov.w	r3, #0
 8002458:	e9d7 ab04 	ldrd	sl, fp, [r7, #16]
 800245c:	4659      	mov	r1, fp
 800245e:	018b      	lsls	r3, r1, #6
 8002460:	4651      	mov	r1, sl
 8002462:	ea43 6391 	orr.w	r3, r3, r1, lsr #26
 8002466:	4651      	mov	r1, sl
 8002468:	018a      	lsls	r2, r1, #6
 800246a:	4651      	mov	r1, sl
 800246c:	ebb2 0801 	subs.w	r8, r2, r1
 8002470:	4659      	mov	r1, fp
 8002472:	eb63 0901 	sbc.w	r9, r3, r1
 8002476:	f04f 0200 	mov.w	r2, #0
 800247a:	f04f 0300 	mov.w	r3, #0
 800247e:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 8002482:	ea43 7358 	orr.w	r3, r3, r8, lsr #29
 8002486:	ea4f 02c8 	mov.w	r2, r8, lsl #3
 800248a:	4690      	mov	r8, r2
 800248c:	4699      	mov	r9, r3
 800248e:	4623      	mov	r3, r4
 8002490:	eb18 0303 	adds.w	r3, r8, r3
 8002494:	60bb      	str	r3, [r7, #8]
 8002496:	462b      	mov	r3, r5
 8002498:	eb49 0303 	adc.w	r3, r9, r3
 800249c:	60fb      	str	r3, [r7, #12]
 800249e:	f04f 0200 	mov.w	r2, #0
 80024a2:	f04f 0300 	mov.w	r3, #0
 80024a6:	e9d7 4502 	ldrd	r4, r5, [r7, #8]
 80024aa:	4629      	mov	r1, r5
 80024ac:	024b      	lsls	r3, r1, #9
 80024ae:	4621      	mov	r1, r4
 80024b0:	ea43 53d1 	orr.w	r3, r3, r1, lsr #23
 80024b4:	4621      	mov	r1, r4
 80024b6:	024a      	lsls	r2, r1, #9
 80024b8:	4610      	mov	r0, r2
 80024ba:	4619      	mov	r1, r3
 80024bc:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 80024be:	2200      	movs	r2, #0
 80024c0:	62bb      	str	r3, [r7, #40]	@ 0x28
 80024c2:	62fa      	str	r2, [r7, #44]	@ 0x2c
 80024c4:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	@ 0x28
 80024c8:	f7fd fe5e 	bl	8000188 <__aeabi_uldivmod>
 80024cc:	4602      	mov	r2, r0
 80024ce:	460b      	mov	r3, r1
 80024d0:	4613      	mov	r3, r2
 80024d2:	64fb      	str	r3, [r7, #76]	@ 0x4c
 80024d4:	e058      	b.n	8002588 <HAL_RCC_GetSysClockFreq+0x1d0>
 80024d6:	4b38      	ldr	r3, [pc, #224]	@ (80025b8 <HAL_RCC_GetSysClockFreq+0x200>)
 80024d8:	685b      	ldr	r3, [r3, #4]
 80024da:	099b      	lsrs	r3, r3, #6
 80024dc:	2200      	movs	r2, #0
 80024de:	4618      	mov	r0, r3
 80024e0:	4611      	mov	r1, r2
 80024e2:	f3c0 0308 	ubfx	r3, r0, #0, #9
 80024e6:	623b      	str	r3, [r7, #32]
 80024e8:	2300      	movs	r3, #0
 80024ea:	627b      	str	r3, [r7, #36]	@ 0x24
 80024ec:	e9d7 8908 	ldrd	r8, r9, [r7, #32]
 80024f0:	4642      	mov	r2, r8
 80024f2:	464b      	mov	r3, r9
 80024f4:	f04f 0000 	mov.w	r0, #0
 80024f8:	f04f 0100 	mov.w	r1, #0
 80024fc:	0159      	lsls	r1, r3, #5
 80024fe:	ea41 61d2 	orr.w	r1, r1, r2, lsr #27
 8002502:	0150      	lsls	r0, r2, #5
 8002504:	4602      	mov	r2, r0
 8002506:	460b      	mov	r3, r1
 8002508:	4641      	mov	r1, r8
 800250a:	ebb2 0a01 	subs.w	sl, r2, r1
 800250e:	4649      	mov	r1, r9
 8002510:	eb63 0b01 	sbc.w	fp, r3, r1
 8002514:	f04f 0200 	mov.w	r2, #0
 8002518:	f04f 0300 	mov.w	r3, #0
 800251c:	ea4f 138b 	mov.w	r3, fp, lsl #6
 8002520:	ea43 639a 	orr.w	r3, r3, sl, lsr #26
 8002524:	ea4f 128a 	mov.w	r2, sl, lsl #6
 8002528:	ebb2 040a 	subs.w	r4, r2, sl
 800252c:	eb63 050b 	sbc.w	r5, r3, fp
 8002530:	f04f 0200 	mov.w	r2, #0
 8002534:	f04f 0300 	mov.w	r3, #0
 8002538:	00eb      	lsls	r3, r5, #3
 800253a:	ea43 7354 	orr.w	r3, r3, r4, lsr #29
 800253e:	00e2      	lsls	r2, r4, #3
 8002540:	4614      	mov	r4, r2
 8002542:	461d      	mov	r5, r3
 8002544:	4643      	mov	r3, r8
 8002546:	18e3      	adds	r3, r4, r3
 8002548:	603b      	str	r3, [r7, #0]
 800254a:	464b      	mov	r3, r9
 800254c:	eb45 0303 	adc.w	r3, r5, r3
 8002550:	607b      	str	r3, [r7, #4]
 8002552:	f04f 0200 	mov.w	r2, #0
 8002556:	f04f 0300 	mov.w	r3, #0
 800255a:	e9d7 4500 	ldrd	r4, r5, [r7]
 800255e:	4629      	mov	r1, r5
 8002560:	028b      	lsls	r3, r1, #10
 8002562:	4621      	mov	r1, r4
 8002564:	ea43 5391 	orr.w	r3, r3, r1, lsr #22
 8002568:	4621      	mov	r1, r4
 800256a:	028a      	lsls	r2, r1, #10
 800256c:	4610      	mov	r0, r2
 800256e:	4619      	mov	r1, r3
 8002570:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8002572:	2200      	movs	r2, #0
 8002574:	61bb      	str	r3, [r7, #24]
 8002576:	61fa      	str	r2, [r7, #28]
 8002578:	e9d7 2306 	ldrd	r2, r3, [r7, #24]
 800257c:	f7fd fe04 	bl	8000188 <__aeabi_uldivmod>
 8002580:	4602      	mov	r2, r0
 8002582:	460b      	mov	r3, r1
 8002584:	4613      	mov	r3, r2
 8002586:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8002588:	4b0b      	ldr	r3, [pc, #44]	@ (80025b8 <HAL_RCC_GetSysClockFreq+0x200>)
 800258a:	685b      	ldr	r3, [r3, #4]
 800258c:	0c1b      	lsrs	r3, r3, #16
 800258e:	f003 0303 	and.w	r3, r3, #3
 8002592:	3301      	adds	r3, #1
 8002594:	005b      	lsls	r3, r3, #1
 8002596:	643b      	str	r3, [r7, #64]	@ 0x40
 8002598:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 800259a:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800259c:	fbb2 f3f3 	udiv	r3, r2, r3
 80025a0:	64bb      	str	r3, [r7, #72]	@ 0x48
 80025a2:	e002      	b.n	80025aa <HAL_RCC_GetSysClockFreq+0x1f2>
 80025a4:	4b05      	ldr	r3, [pc, #20]	@ (80025bc <HAL_RCC_GetSysClockFreq+0x204>)
 80025a6:	64bb      	str	r3, [r7, #72]	@ 0x48
 80025a8:	bf00      	nop
 80025aa:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 80025ac:	4618      	mov	r0, r3
 80025ae:	3750      	adds	r7, #80	@ 0x50
 80025b0:	46bd      	mov	sp, r7
 80025b2:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
 80025b6:	bf00      	nop
 80025b8:	40023800 	.word	0x40023800
 80025bc:	00f42400 	.word	0x00f42400
 80025c0:	007a1200 	.word	0x007a1200

080025c4 <HAL_RCC_GetHCLKFreq>:
 80025c4:	b480      	push	{r7}
 80025c6:	af00      	add	r7, sp, #0
 80025c8:	4b03      	ldr	r3, [pc, #12]	@ (80025d8 <HAL_RCC_GetHCLKFreq+0x14>)
 80025ca:	681b      	ldr	r3, [r3, #0]
 80025cc:	4618      	mov	r0, r3
 80025ce:	46bd      	mov	sp, r7
 80025d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80025d4:	4770      	bx	lr
 80025d6:	bf00      	nop
 80025d8:	2000005c 	.word	0x2000005c

080025dc <HAL_RCC_GetPCLK1Freq>:
 80025dc:	b580      	push	{r7, lr}
 80025de:	af00      	add	r7, sp, #0
 80025e0:	f7ff fff0 	bl	80025c4 <HAL_RCC_GetHCLKFreq>
 80025e4:	4602      	mov	r2, r0
 80025e6:	4b05      	ldr	r3, [pc, #20]	@ (80025fc <HAL_RCC_GetPCLK1Freq+0x20>)
 80025e8:	689b      	ldr	r3, [r3, #8]
 80025ea:	0a9b      	lsrs	r3, r3, #10
 80025ec:	f003 0307 	and.w	r3, r3, #7
 80025f0:	4903      	ldr	r1, [pc, #12]	@ (8002600 <HAL_RCC_GetPCLK1Freq+0x24>)
 80025f2:	5ccb      	ldrb	r3, [r1, r3]
 80025f4:	fa22 f303 	lsr.w	r3, r2, r3
 80025f8:	4618      	mov	r0, r3
 80025fa:	bd80      	pop	{r7, pc}
 80025fc:	40023800 	.word	0x40023800
 8002600:	08003ee4 	.word	0x08003ee4

08002604 <HAL_RCC_GetPCLK2Freq>:
 8002604:	b580      	push	{r7, lr}
 8002606:	af00      	add	r7, sp, #0
 8002608:	f7ff ffdc 	bl	80025c4 <HAL_RCC_GetHCLKFreq>
 800260c:	4602      	mov	r2, r0
 800260e:	4b05      	ldr	r3, [pc, #20]	@ (8002624 <HAL_RCC_GetPCLK2Freq+0x20>)
 8002610:	689b      	ldr	r3, [r3, #8]
 8002612:	0b5b      	lsrs	r3, r3, #13
 8002614:	f003 0307 	and.w	r3, r3, #7
 8002618:	4903      	ldr	r1, [pc, #12]	@ (8002628 <HAL_RCC_GetPCLK2Freq+0x24>)
 800261a:	5ccb      	ldrb	r3, [r1, r3]
 800261c:	fa22 f303 	lsr.w	r3, r2, r3
 8002620:	4618      	mov	r0, r3
 8002622:	bd80      	pop	{r7, pc}
 8002624:	40023800 	.word	0x40023800
 8002628:	08003ee4 	.word	0x08003ee4

0800262c <HAL_TIM_Base_Init>:
 800262c:	b580      	push	{r7, lr}
 800262e:	b082      	sub	sp, #8
 8002630:	af00      	add	r7, sp, #0
 8002632:	6078      	str	r0, [r7, #4]
 8002634:	687b      	ldr	r3, [r7, #4]
 8002636:	2b00      	cmp	r3, #0
 8002638:	d101      	bne.n	800263e <HAL_TIM_Base_Init+0x12>
 800263a:	2301      	movs	r3, #1
 800263c:	e041      	b.n	80026c2 <HAL_TIM_Base_Init+0x96>
 800263e:	687b      	ldr	r3, [r7, #4]
 8002640:	f893 303d 	ldrb.w	r3, [r3, #61]	@ 0x3d
 8002644:	b2db      	uxtb	r3, r3
 8002646:	2b00      	cmp	r3, #0
 8002648:	d106      	bne.n	8002658 <HAL_TIM_Base_Init+0x2c>
 800264a:	687b      	ldr	r3, [r7, #4]
 800264c:	2200      	movs	r2, #0
 800264e:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002652:	6878      	ldr	r0, [r7, #4]
 8002654:	f7fe fce4 	bl	8001020 <HAL_TIM_Base_MspInit>
 8002658:	687b      	ldr	r3, [r7, #4]
 800265a:	2202      	movs	r2, #2
 800265c:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8002660:	687b      	ldr	r3, [r7, #4]
 8002662:	681a      	ldr	r2, [r3, #0]
 8002664:	687b      	ldr	r3, [r7, #4]
 8002666:	3304      	adds	r3, #4
 8002668:	4619      	mov	r1, r3
 800266a:	4610      	mov	r0, r2
 800266c:	f000 faac 	bl	8002bc8 <TIM_Base_SetConfig>
 8002670:	687b      	ldr	r3, [r7, #4]
 8002672:	2201      	movs	r2, #1
 8002674:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 8002678:	687b      	ldr	r3, [r7, #4]
 800267a:	2201      	movs	r2, #1
 800267c:	f883 203e 	strb.w	r2, [r3, #62]	@ 0x3e
 8002680:	687b      	ldr	r3, [r7, #4]
 8002682:	2201      	movs	r2, #1
 8002684:	f883 203f 	strb.w	r2, [r3, #63]	@ 0x3f
 8002688:	687b      	ldr	r3, [r7, #4]
 800268a:	2201      	movs	r2, #1
 800268c:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 8002690:	687b      	ldr	r3, [r7, #4]
 8002692:	2201      	movs	r2, #1
 8002694:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8002698:	687b      	ldr	r3, [r7, #4]
 800269a:	2201      	movs	r2, #1
 800269c:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 80026a0:	687b      	ldr	r3, [r7, #4]
 80026a2:	2201      	movs	r2, #1
 80026a4:	f883 2043 	strb.w	r2, [r3, #67]	@ 0x43
 80026a8:	687b      	ldr	r3, [r7, #4]
 80026aa:	2201      	movs	r2, #1
 80026ac:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 80026b0:	687b      	ldr	r3, [r7, #4]
 80026b2:	2201      	movs	r2, #1
 80026b4:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 80026b8:	687b      	ldr	r3, [r7, #4]
 80026ba:	2201      	movs	r2, #1
 80026bc:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 80026c0:	2300      	movs	r3, #0
 80026c2:	4618      	mov	r0, r3
 80026c4:	3708      	adds	r7, #8
 80026c6:	46bd      	mov	sp, r7
 80026c8:	bd80      	pop	{r7, pc}

080026ca <HAL_TIM_Base_DeInit>:
 80026ca:	b580      	push	{r7, lr}
 80026cc:	b082      	sub	sp, #8
 80026ce:	af00      	add	r7, sp, #0
 80026d0:	6078      	str	r0, [r7, #4]
 80026d2:	687b      	ldr	r3, [r7, #4]
 80026d4:	2202      	movs	r2, #2
 80026d6:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 80026da:	687b      	ldr	r3, [r7, #4]
 80026dc:	681b      	ldr	r3, [r3, #0]
 80026de:	6a1a      	ldr	r2, [r3, #32]
 80026e0:	f241 1311 	movw	r3, #4369	@ 0x1111
 80026e4:	4013      	ands	r3, r2
 80026e6:	2b00      	cmp	r3, #0
 80026e8:	d10f      	bne.n	800270a <HAL_TIM_Base_DeInit+0x40>
 80026ea:	687b      	ldr	r3, [r7, #4]
 80026ec:	681b      	ldr	r3, [r3, #0]
 80026ee:	6a1a      	ldr	r2, [r3, #32]
 80026f0:	f240 4344 	movw	r3, #1092	@ 0x444
 80026f4:	4013      	ands	r3, r2
 80026f6:	2b00      	cmp	r3, #0
 80026f8:	d107      	bne.n	800270a <HAL_TIM_Base_DeInit+0x40>
 80026fa:	687b      	ldr	r3, [r7, #4]
 80026fc:	681b      	ldr	r3, [r3, #0]
 80026fe:	681a      	ldr	r2, [r3, #0]
 8002700:	687b      	ldr	r3, [r7, #4]
 8002702:	681b      	ldr	r3, [r3, #0]
 8002704:	f022 0201 	bic.w	r2, r2, #1
 8002708:	601a      	str	r2, [r3, #0]
 800270a:	6878      	ldr	r0, [r7, #4]
 800270c:	f7fe fd4a 	bl	80011a4 <HAL_TIM_Base_MspDeInit>
 8002710:	687b      	ldr	r3, [r7, #4]
 8002712:	2200      	movs	r2, #0
 8002714:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 8002718:	687b      	ldr	r3, [r7, #4]
 800271a:	2200      	movs	r2, #0
 800271c:	f883 203e 	strb.w	r2, [r3, #62]	@ 0x3e
 8002720:	687b      	ldr	r3, [r7, #4]
 8002722:	2200      	movs	r2, #0
 8002724:	f883 203f 	strb.w	r2, [r3, #63]	@ 0x3f
 8002728:	687b      	ldr	r3, [r7, #4]
 800272a:	2200      	movs	r2, #0
 800272c:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 8002730:	687b      	ldr	r3, [r7, #4]
 8002732:	2200      	movs	r2, #0
 8002734:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8002738:	687b      	ldr	r3, [r7, #4]
 800273a:	2200      	movs	r2, #0
 800273c:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 8002740:	687b      	ldr	r3, [r7, #4]
 8002742:	2200      	movs	r2, #0
 8002744:	f883 2043 	strb.w	r2, [r3, #67]	@ 0x43
 8002748:	687b      	ldr	r3, [r7, #4]
 800274a:	2200      	movs	r2, #0
 800274c:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8002750:	687b      	ldr	r3, [r7, #4]
 8002752:	2200      	movs	r2, #0
 8002754:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8002758:	687b      	ldr	r3, [r7, #4]
 800275a:	2200      	movs	r2, #0
 800275c:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8002760:	687b      	ldr	r3, [r7, #4]
 8002762:	2200      	movs	r2, #0
 8002764:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002768:	2300      	movs	r3, #0
 800276a:	4618      	mov	r0, r3
 800276c:	3708      	adds	r7, #8
 800276e:	46bd      	mov	sp, r7
 8002770:	bd80      	pop	{r7, pc}

08002772 <HAL_TIM_IRQHandler>:
 8002772:	b580      	push	{r7, lr}
 8002774:	b084      	sub	sp, #16
 8002776:	af00      	add	r7, sp, #0
 8002778:	6078      	str	r0, [r7, #4]
 800277a:	687b      	ldr	r3, [r7, #4]
 800277c:	681b      	ldr	r3, [r3, #0]
 800277e:	68db      	ldr	r3, [r3, #12]
 8002780:	60fb      	str	r3, [r7, #12]
 8002782:	687b      	ldr	r3, [r7, #4]
 8002784:	681b      	ldr	r3, [r3, #0]
 8002786:	691b      	ldr	r3, [r3, #16]
 8002788:	60bb      	str	r3, [r7, #8]
 800278a:	68bb      	ldr	r3, [r7, #8]
 800278c:	f003 0302 	and.w	r3, r3, #2
 8002790:	2b00      	cmp	r3, #0
 8002792:	d020      	beq.n	80027d6 <HAL_TIM_IRQHandler+0x64>
 8002794:	68fb      	ldr	r3, [r7, #12]
 8002796:	f003 0302 	and.w	r3, r3, #2
 800279a:	2b00      	cmp	r3, #0
 800279c:	d01b      	beq.n	80027d6 <HAL_TIM_IRQHandler+0x64>
 800279e:	687b      	ldr	r3, [r7, #4]
 80027a0:	681b      	ldr	r3, [r3, #0]
 80027a2:	f06f 0202 	mvn.w	r2, #2
 80027a6:	611a      	str	r2, [r3, #16]
 80027a8:	687b      	ldr	r3, [r7, #4]
 80027aa:	2201      	movs	r2, #1
 80027ac:	771a      	strb	r2, [r3, #28]
 80027ae:	687b      	ldr	r3, [r7, #4]
 80027b0:	681b      	ldr	r3, [r3, #0]
 80027b2:	699b      	ldr	r3, [r3, #24]
 80027b4:	f003 0303 	and.w	r3, r3, #3
 80027b8:	2b00      	cmp	r3, #0
 80027ba:	d003      	beq.n	80027c4 <HAL_TIM_IRQHandler+0x52>
 80027bc:	6878      	ldr	r0, [r7, #4]
 80027be:	f000 f9e5 	bl	8002b8c <HAL_TIM_IC_CaptureCallback>
 80027c2:	e005      	b.n	80027d0 <HAL_TIM_IRQHandler+0x5e>
 80027c4:	6878      	ldr	r0, [r7, #4]
 80027c6:	f000 f9d7 	bl	8002b78 <HAL_TIM_OC_DelayElapsedCallback>
 80027ca:	6878      	ldr	r0, [r7, #4]
 80027cc:	f000 f9e8 	bl	8002ba0 <HAL_TIM_PWM_PulseFinishedCallback>
 80027d0:	687b      	ldr	r3, [r7, #4]
 80027d2:	2200      	movs	r2, #0
 80027d4:	771a      	strb	r2, [r3, #28]
 80027d6:	68bb      	ldr	r3, [r7, #8]
 80027d8:	f003 0304 	and.w	r3, r3, #4
 80027dc:	2b00      	cmp	r3, #0
 80027de:	d020      	beq.n	8002822 <HAL_TIM_IRQHandler+0xb0>
 80027e0:	68fb      	ldr	r3, [r7, #12]
 80027e2:	f003 0304 	and.w	r3, r3, #4
 80027e6:	2b00      	cmp	r3, #0
 80027e8:	d01b      	beq.n	8002822 <HAL_TIM_IRQHandler+0xb0>
 80027ea:	687b      	ldr	r3, [r7, #4]
 80027ec:	681b      	ldr	r3, [r3, #0]
 80027ee:	f06f 0204 	mvn.w	r2, #4
 80027f2:	611a      	str	r2, [r3, #16]
 80027f4:	687b      	ldr	r3, [r7, #4]
 80027f6:	2202      	movs	r2, #2
 80027f8:	771a      	strb	r2, [r3, #28]
 80027fa:	687b      	ldr	r3, [r7, #4]
 80027fc:	681b      	ldr	r3, [r3, #0]
 80027fe:	699b      	ldr	r3, [r3, #24]
 8002800:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 8002804:	2b00      	cmp	r3, #0
 8002806:	d003      	beq.n	8002810 <HAL_TIM_IRQHandler+0x9e>
 8002808:	6878      	ldr	r0, [r7, #4]
 800280a:	f000 f9bf 	bl	8002b8c <HAL_TIM_IC_CaptureCallback>
 800280e:	e005      	b.n	800281c <HAL_TIM_IRQHandler+0xaa>
 8002810:	6878      	ldr	r0, [r7, #4]
 8002812:	f000 f9b1 	bl	8002b78 <HAL_TIM_OC_DelayElapsedCallback>
 8002816:	6878      	ldr	r0, [r7, #4]
 8002818:	f000 f9c2 	bl	8002ba0 <HAL_TIM_PWM_PulseFinishedCallback>
 800281c:	687b      	ldr	r3, [r7, #4]
 800281e:	2200      	movs	r2, #0
 8002820:	771a      	strb	r2, [r3, #28]
 8002822:	68bb      	ldr	r3, [r7, #8]
 8002824:	f003 0308 	and.w	r3, r3, #8
 8002828:	2b00      	cmp	r3, #0
 800282a:	d020      	beq.n	800286e <HAL_TIM_IRQHandler+0xfc>
 800282c:	68fb      	ldr	r3, [r7, #12]
 800282e:	f003 0308 	and.w	r3, r3, #8
 8002832:	2b00      	cmp	r3, #0
 8002834:	d01b      	beq.n	800286e <HAL_TIM_IRQHandler+0xfc>
 8002836:	687b      	ldr	r3, [r7, #4]
 8002838:	681b      	ldr	r3, [r3, #0]
 800283a:	f06f 0208 	mvn.w	r2, #8
 800283e:	611a      	str	r2, [r3, #16]
 8002840:	687b      	ldr	r3, [r7, #4]
 8002842:	2204      	movs	r2, #4
 8002844:	771a      	strb	r2, [r3, #28]
 8002846:	687b      	ldr	r3, [r7, #4]
 8002848:	681b      	ldr	r3, [r3, #0]
 800284a:	69db      	ldr	r3, [r3, #28]
 800284c:	f003 0303 	and.w	r3, r3, #3
 8002850:	2b00      	cmp	r3, #0
 8002852:	d003      	beq.n	800285c <HAL_TIM_IRQHandler+0xea>
 8002854:	6878      	ldr	r0, [r7, #4]
 8002856:	f000 f999 	bl	8002b8c <HAL_TIM_IC_CaptureCallback>
 800285a:	e005      	b.n	8002868 <HAL_TIM_IRQHandler+0xf6>
 800285c:	6878      	ldr	r0, [r7, #4]
 800285e:	f000 f98b 	bl	8002b78 <HAL_TIM_OC_DelayElapsedCallback>
 8002862:	6878      	ldr	r0, [r7, #4]
 8002864:	f000 f99c 	bl	8002ba0 <HAL_TIM_PWM_PulseFinishedCallback>
 8002868:	687b      	ldr	r3, [r7, #4]
 800286a:	2200      	movs	r2, #0
 800286c:	771a      	strb	r2, [r3, #28]
 800286e:	68bb      	ldr	r3, [r7, #8]
 8002870:	f003 0310 	and.w	r3, r3, #16
 8002874:	2b00      	cmp	r3, #0
 8002876:	d020      	beq.n	80028ba <HAL_TIM_IRQHandler+0x148>
 8002878:	68fb      	ldr	r3, [r7, #12]
 800287a:	f003 0310 	and.w	r3, r3, #16
 800287e:	2b00      	cmp	r3, #0
 8002880:	d01b      	beq.n	80028ba <HAL_TIM_IRQHandler+0x148>
 8002882:	687b      	ldr	r3, [r7, #4]
 8002884:	681b      	ldr	r3, [r3, #0]
 8002886:	f06f 0210 	mvn.w	r2, #16
 800288a:	611a      	str	r2, [r3, #16]
 800288c:	687b      	ldr	r3, [r7, #4]
 800288e:	2208      	movs	r2, #8
 8002890:	771a      	strb	r2, [r3, #28]
 8002892:	687b      	ldr	r3, [r7, #4]
 8002894:	681b      	ldr	r3, [r3, #0]
 8002896:	69db      	ldr	r3, [r3, #28]
 8002898:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 800289c:	2b00      	cmp	r3, #0
 800289e:	d003      	beq.n	80028a8 <HAL_TIM_IRQHandler+0x136>
 80028a0:	6878      	ldr	r0, [r7, #4]
 80028a2:	f000 f973 	bl	8002b8c <HAL_TIM_IC_CaptureCallback>
 80028a6:	e005      	b.n	80028b4 <HAL_TIM_IRQHandler+0x142>
 80028a8:	6878      	ldr	r0, [r7, #4]
 80028aa:	f000 f965 	bl	8002b78 <HAL_TIM_OC_DelayElapsedCallback>
 80028ae:	6878      	ldr	r0, [r7, #4]
 80028b0:	f000 f976 	bl	8002ba0 <HAL_TIM_PWM_PulseFinishedCallback>
 80028b4:	687b      	ldr	r3, [r7, #4]
 80028b6:	2200      	movs	r2, #0
 80028b8:	771a      	strb	r2, [r3, #28]
 80028ba:	68bb      	ldr	r3, [r7, #8]
 80028bc:	f003 0301 	and.w	r3, r3, #1
 80028c0:	2b00      	cmp	r3, #0
 80028c2:	d00c      	beq.n	80028de <HAL_TIM_IRQHandler+0x16c>
 80028c4:	68fb      	ldr	r3, [r7, #12]
 80028c6:	f003 0301 	and.w	r3, r3, #1
 80028ca:	2b00      	cmp	r3, #0
 80028cc:	d007      	beq.n	80028de <HAL_TIM_IRQHandler+0x16c>
 80028ce:	687b      	ldr	r3, [r7, #4]
 80028d0:	681b      	ldr	r3, [r3, #0]
 80028d2:	f06f 0201 	mvn.w	r2, #1
 80028d6:	611a      	str	r2, [r3, #16]
 80028d8:	6878      	ldr	r0, [r7, #4]
 80028da:	f000 f943 	bl	8002b64 <HAL_TIM_PeriodElapsedCallback>
 80028de:	68bb      	ldr	r3, [r7, #8]
 80028e0:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80028e4:	2b00      	cmp	r3, #0
 80028e6:	d00c      	beq.n	8002902 <HAL_TIM_IRQHandler+0x190>
 80028e8:	68fb      	ldr	r3, [r7, #12]
 80028ea:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80028ee:	2b00      	cmp	r3, #0
 80028f0:	d007      	beq.n	8002902 <HAL_TIM_IRQHandler+0x190>
 80028f2:	687b      	ldr	r3, [r7, #4]
 80028f4:	681b      	ldr	r3, [r3, #0]
 80028f6:	f06f 0280 	mvn.w	r2, #128	@ 0x80
 80028fa:	611a      	str	r2, [r3, #16]
 80028fc:	6878      	ldr	r0, [r7, #4]
 80028fe:	f000 fbbb 	bl	8003078 <HAL_TIMEx_BreakCallback>
 8002902:	68bb      	ldr	r3, [r7, #8]
 8002904:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8002908:	2b00      	cmp	r3, #0
 800290a:	d00c      	beq.n	8002926 <HAL_TIM_IRQHandler+0x1b4>
 800290c:	68fb      	ldr	r3, [r7, #12]
 800290e:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8002912:	2b00      	cmp	r3, #0
 8002914:	d007      	beq.n	8002926 <HAL_TIM_IRQHandler+0x1b4>
 8002916:	687b      	ldr	r3, [r7, #4]
 8002918:	681b      	ldr	r3, [r3, #0]
 800291a:	f06f 0240 	mvn.w	r2, #64	@ 0x40
 800291e:	611a      	str	r2, [r3, #16]
 8002920:	6878      	ldr	r0, [r7, #4]
 8002922:	f000 f947 	bl	8002bb4 <HAL_TIM_TriggerCallback>
 8002926:	68bb      	ldr	r3, [r7, #8]
 8002928:	f003 0320 	and.w	r3, r3, #32
 800292c:	2b00      	cmp	r3, #0
 800292e:	d00c      	beq.n	800294a <HAL_TIM_IRQHandler+0x1d8>
 8002930:	68fb      	ldr	r3, [r7, #12]
 8002932:	f003 0320 	and.w	r3, r3, #32
 8002936:	2b00      	cmp	r3, #0
 8002938:	d007      	beq.n	800294a <HAL_TIM_IRQHandler+0x1d8>
 800293a:	687b      	ldr	r3, [r7, #4]
 800293c:	681b      	ldr	r3, [r3, #0]
 800293e:	f06f 0220 	mvn.w	r2, #32
 8002942:	611a      	str	r2, [r3, #16]
 8002944:	6878      	ldr	r0, [r7, #4]
 8002946:	f000 fb8d 	bl	8003064 <HAL_TIMEx_CommutCallback>
 800294a:	bf00      	nop
 800294c:	3710      	adds	r7, #16
 800294e:	46bd      	mov	sp, r7
 8002950:	bd80      	pop	{r7, pc}

08002952 <HAL_TIM_ConfigClockSource>:
 8002952:	b580      	push	{r7, lr}
 8002954:	b084      	sub	sp, #16
 8002956:	af00      	add	r7, sp, #0
 8002958:	6078      	str	r0, [r7, #4]
 800295a:	6039      	str	r1, [r7, #0]
 800295c:	2300      	movs	r3, #0
 800295e:	73fb      	strb	r3, [r7, #15]
 8002960:	687b      	ldr	r3, [r7, #4]
 8002962:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8002966:	2b01      	cmp	r3, #1
 8002968:	d101      	bne.n	800296e <HAL_TIM_ConfigClockSource+0x1c>
 800296a:	2302      	movs	r3, #2
 800296c:	e0b4      	b.n	8002ad8 <HAL_TIM_ConfigClockSource+0x186>
 800296e:	687b      	ldr	r3, [r7, #4]
 8002970:	2201      	movs	r2, #1
 8002972:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002976:	687b      	ldr	r3, [r7, #4]
 8002978:	2202      	movs	r2, #2
 800297a:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 800297e:	687b      	ldr	r3, [r7, #4]
 8002980:	681b      	ldr	r3, [r3, #0]
 8002982:	689b      	ldr	r3, [r3, #8]
 8002984:	60bb      	str	r3, [r7, #8]
 8002986:	68bb      	ldr	r3, [r7, #8]
 8002988:	f023 0377 	bic.w	r3, r3, #119	@ 0x77
 800298c:	60bb      	str	r3, [r7, #8]
 800298e:	68bb      	ldr	r3, [r7, #8]
 8002990:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 8002994:	60bb      	str	r3, [r7, #8]
 8002996:	687b      	ldr	r3, [r7, #4]
 8002998:	681b      	ldr	r3, [r3, #0]
 800299a:	68ba      	ldr	r2, [r7, #8]
 800299c:	609a      	str	r2, [r3, #8]
 800299e:	683b      	ldr	r3, [r7, #0]
 80029a0:	681b      	ldr	r3, [r3, #0]
 80029a2:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 80029a6:	d03e      	beq.n	8002a26 <HAL_TIM_ConfigClockSource+0xd4>
 80029a8:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 80029ac:	f200 8087 	bhi.w	8002abe <HAL_TIM_ConfigClockSource+0x16c>
 80029b0:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 80029b4:	f000 8086 	beq.w	8002ac4 <HAL_TIM_ConfigClockSource+0x172>
 80029b8:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 80029bc:	d87f      	bhi.n	8002abe <HAL_TIM_ConfigClockSource+0x16c>
 80029be:	2b70      	cmp	r3, #112	@ 0x70
 80029c0:	d01a      	beq.n	80029f8 <HAL_TIM_ConfigClockSource+0xa6>
 80029c2:	2b70      	cmp	r3, #112	@ 0x70
 80029c4:	d87b      	bhi.n	8002abe <HAL_TIM_ConfigClockSource+0x16c>
 80029c6:	2b60      	cmp	r3, #96	@ 0x60
 80029c8:	d050      	beq.n	8002a6c <HAL_TIM_ConfigClockSource+0x11a>
 80029ca:	2b60      	cmp	r3, #96	@ 0x60
 80029cc:	d877      	bhi.n	8002abe <HAL_TIM_ConfigClockSource+0x16c>
 80029ce:	2b50      	cmp	r3, #80	@ 0x50
 80029d0:	d03c      	beq.n	8002a4c <HAL_TIM_ConfigClockSource+0xfa>
 80029d2:	2b50      	cmp	r3, #80	@ 0x50
 80029d4:	d873      	bhi.n	8002abe <HAL_TIM_ConfigClockSource+0x16c>
 80029d6:	2b40      	cmp	r3, #64	@ 0x40
 80029d8:	d058      	beq.n	8002a8c <HAL_TIM_ConfigClockSource+0x13a>
 80029da:	2b40      	cmp	r3, #64	@ 0x40
 80029dc:	d86f      	bhi.n	8002abe <HAL_TIM_ConfigClockSource+0x16c>
 80029de:	2b30      	cmp	r3, #48	@ 0x30
 80029e0:	d064      	beq.n	8002aac <HAL_TIM_ConfigClockSource+0x15a>
 80029e2:	2b30      	cmp	r3, #48	@ 0x30
 80029e4:	d86b      	bhi.n	8002abe <HAL_TIM_ConfigClockSource+0x16c>
 80029e6:	2b20      	cmp	r3, #32
 80029e8:	d060      	beq.n	8002aac <HAL_TIM_ConfigClockSource+0x15a>
 80029ea:	2b20      	cmp	r3, #32
 80029ec:	d867      	bhi.n	8002abe <HAL_TIM_ConfigClockSource+0x16c>
 80029ee:	2b00      	cmp	r3, #0
 80029f0:	d05c      	beq.n	8002aac <HAL_TIM_ConfigClockSource+0x15a>
 80029f2:	2b10      	cmp	r3, #16
 80029f4:	d05a      	beq.n	8002aac <HAL_TIM_ConfigClockSource+0x15a>
 80029f6:	e062      	b.n	8002abe <HAL_TIM_ConfigClockSource+0x16c>
 80029f8:	687b      	ldr	r3, [r7, #4]
 80029fa:	6818      	ldr	r0, [r3, #0]
 80029fc:	683b      	ldr	r3, [r7, #0]
 80029fe:	6899      	ldr	r1, [r3, #8]
 8002a00:	683b      	ldr	r3, [r7, #0]
 8002a02:	685a      	ldr	r2, [r3, #4]
 8002a04:	683b      	ldr	r3, [r7, #0]
 8002a06:	68db      	ldr	r3, [r3, #12]
 8002a08:	f000 fa8f 	bl	8002f2a <TIM_ETR_SetConfig>
 8002a0c:	687b      	ldr	r3, [r7, #4]
 8002a0e:	681b      	ldr	r3, [r3, #0]
 8002a10:	689b      	ldr	r3, [r3, #8]
 8002a12:	60bb      	str	r3, [r7, #8]
 8002a14:	68bb      	ldr	r3, [r7, #8]
 8002a16:	f043 0377 	orr.w	r3, r3, #119	@ 0x77
 8002a1a:	60bb      	str	r3, [r7, #8]
 8002a1c:	687b      	ldr	r3, [r7, #4]
 8002a1e:	681b      	ldr	r3, [r3, #0]
 8002a20:	68ba      	ldr	r2, [r7, #8]
 8002a22:	609a      	str	r2, [r3, #8]
 8002a24:	e04f      	b.n	8002ac6 <HAL_TIM_ConfigClockSource+0x174>
 8002a26:	687b      	ldr	r3, [r7, #4]
 8002a28:	6818      	ldr	r0, [r3, #0]
 8002a2a:	683b      	ldr	r3, [r7, #0]
 8002a2c:	6899      	ldr	r1, [r3, #8]
 8002a2e:	683b      	ldr	r3, [r7, #0]
 8002a30:	685a      	ldr	r2, [r3, #4]
 8002a32:	683b      	ldr	r3, [r7, #0]
 8002a34:	68db      	ldr	r3, [r3, #12]
 8002a36:	f000 fa78 	bl	8002f2a <TIM_ETR_SetConfig>
 8002a3a:	687b      	ldr	r3, [r7, #4]
 8002a3c:	681b      	ldr	r3, [r3, #0]
 8002a3e:	689a      	ldr	r2, [r3, #8]
 8002a40:	687b      	ldr	r3, [r7, #4]
 8002a42:	681b      	ldr	r3, [r3, #0]
 8002a44:	f442 4280 	orr.w	r2, r2, #16384	@ 0x4000
 8002a48:	609a      	str	r2, [r3, #8]
 8002a4a:	e03c      	b.n	8002ac6 <HAL_TIM_ConfigClockSource+0x174>
 8002a4c:	687b      	ldr	r3, [r7, #4]
 8002a4e:	6818      	ldr	r0, [r3, #0]
 8002a50:	683b      	ldr	r3, [r7, #0]
 8002a52:	6859      	ldr	r1, [r3, #4]
 8002a54:	683b      	ldr	r3, [r7, #0]
 8002a56:	68db      	ldr	r3, [r3, #12]
 8002a58:	461a      	mov	r2, r3
 8002a5a:	f000 f9ec 	bl	8002e36 <TIM_TI1_ConfigInputStage>
 8002a5e:	687b      	ldr	r3, [r7, #4]
 8002a60:	681b      	ldr	r3, [r3, #0]
 8002a62:	2150      	movs	r1, #80	@ 0x50
 8002a64:	4618      	mov	r0, r3
 8002a66:	f000 fa45 	bl	8002ef4 <TIM_ITRx_SetConfig>
 8002a6a:	e02c      	b.n	8002ac6 <HAL_TIM_ConfigClockSource+0x174>
 8002a6c:	687b      	ldr	r3, [r7, #4]
 8002a6e:	6818      	ldr	r0, [r3, #0]
 8002a70:	683b      	ldr	r3, [r7, #0]
 8002a72:	6859      	ldr	r1, [r3, #4]
 8002a74:	683b      	ldr	r3, [r7, #0]
 8002a76:	68db      	ldr	r3, [r3, #12]
 8002a78:	461a      	mov	r2, r3
 8002a7a:	f000 fa0b 	bl	8002e94 <TIM_TI2_ConfigInputStage>
 8002a7e:	687b      	ldr	r3, [r7, #4]
 8002a80:	681b      	ldr	r3, [r3, #0]
 8002a82:	2160      	movs	r1, #96	@ 0x60
 8002a84:	4618      	mov	r0, r3
 8002a86:	f000 fa35 	bl	8002ef4 <TIM_ITRx_SetConfig>
 8002a8a:	e01c      	b.n	8002ac6 <HAL_TIM_ConfigClockSource+0x174>
 8002a8c:	687b      	ldr	r3, [r7, #4]
 8002a8e:	6818      	ldr	r0, [r3, #0]
 8002a90:	683b      	ldr	r3, [r7, #0]
 8002a92:	6859      	ldr	r1, [r3, #4]
 8002a94:	683b      	ldr	r3, [r7, #0]
 8002a96:	68db      	ldr	r3, [r3, #12]
 8002a98:	461a      	mov	r2, r3
 8002a9a:	f000 f9cc 	bl	8002e36 <TIM_TI1_ConfigInputStage>
 8002a9e:	687b      	ldr	r3, [r7, #4]
 8002aa0:	681b      	ldr	r3, [r3, #0]
 8002aa2:	2140      	movs	r1, #64	@ 0x40
 8002aa4:	4618      	mov	r0, r3
 8002aa6:	f000 fa25 	bl	8002ef4 <TIM_ITRx_SetConfig>
 8002aaa:	e00c      	b.n	8002ac6 <HAL_TIM_ConfigClockSource+0x174>
 8002aac:	687b      	ldr	r3, [r7, #4]
 8002aae:	681a      	ldr	r2, [r3, #0]
 8002ab0:	683b      	ldr	r3, [r7, #0]
 8002ab2:	681b      	ldr	r3, [r3, #0]
 8002ab4:	4619      	mov	r1, r3
 8002ab6:	4610      	mov	r0, r2
 8002ab8:	f000 fa1c 	bl	8002ef4 <TIM_ITRx_SetConfig>
 8002abc:	e003      	b.n	8002ac6 <HAL_TIM_ConfigClockSource+0x174>
 8002abe:	2301      	movs	r3, #1
 8002ac0:	73fb      	strb	r3, [r7, #15]
 8002ac2:	e000      	b.n	8002ac6 <HAL_TIM_ConfigClockSource+0x174>
 8002ac4:	bf00      	nop
 8002ac6:	687b      	ldr	r3, [r7, #4]
 8002ac8:	2201      	movs	r2, #1
 8002aca:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8002ace:	687b      	ldr	r3, [r7, #4]
 8002ad0:	2200      	movs	r2, #0
 8002ad2:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002ad6:	7bfb      	ldrb	r3, [r7, #15]
 8002ad8:	4618      	mov	r0, r3
 8002ada:	3710      	adds	r7, #16
 8002adc:	46bd      	mov	sp, r7
 8002ade:	bd80      	pop	{r7, pc}

08002ae0 <HAL_TIM_SlaveConfigSynchro>:
 8002ae0:	b580      	push	{r7, lr}
 8002ae2:	b082      	sub	sp, #8
 8002ae4:	af00      	add	r7, sp, #0
 8002ae6:	6078      	str	r0, [r7, #4]
 8002ae8:	6039      	str	r1, [r7, #0]
 8002aea:	687b      	ldr	r3, [r7, #4]
 8002aec:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8002af0:	2b01      	cmp	r3, #1
 8002af2:	d101      	bne.n	8002af8 <HAL_TIM_SlaveConfigSynchro+0x18>
 8002af4:	2302      	movs	r3, #2
 8002af6:	e031      	b.n	8002b5c <HAL_TIM_SlaveConfigSynchro+0x7c>
 8002af8:	687b      	ldr	r3, [r7, #4]
 8002afa:	2201      	movs	r2, #1
 8002afc:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002b00:	687b      	ldr	r3, [r7, #4]
 8002b02:	2202      	movs	r2, #2
 8002b04:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8002b08:	6839      	ldr	r1, [r7, #0]
 8002b0a:	6878      	ldr	r0, [r7, #4]
 8002b0c:	f000 f902 	bl	8002d14 <TIM_SlaveTimer_SetConfig>
 8002b10:	4603      	mov	r3, r0
 8002b12:	2b00      	cmp	r3, #0
 8002b14:	d009      	beq.n	8002b2a <HAL_TIM_SlaveConfigSynchro+0x4a>
 8002b16:	687b      	ldr	r3, [r7, #4]
 8002b18:	2201      	movs	r2, #1
 8002b1a:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8002b1e:	687b      	ldr	r3, [r7, #4]
 8002b20:	2200      	movs	r2, #0
 8002b22:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002b26:	2301      	movs	r3, #1
 8002b28:	e018      	b.n	8002b5c <HAL_TIM_SlaveConfigSynchro+0x7c>
 8002b2a:	687b      	ldr	r3, [r7, #4]
 8002b2c:	681b      	ldr	r3, [r3, #0]
 8002b2e:	68da      	ldr	r2, [r3, #12]
 8002b30:	687b      	ldr	r3, [r7, #4]
 8002b32:	681b      	ldr	r3, [r3, #0]
 8002b34:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 8002b38:	60da      	str	r2, [r3, #12]
 8002b3a:	687b      	ldr	r3, [r7, #4]
 8002b3c:	681b      	ldr	r3, [r3, #0]
 8002b3e:	68da      	ldr	r2, [r3, #12]
 8002b40:	687b      	ldr	r3, [r7, #4]
 8002b42:	681b      	ldr	r3, [r3, #0]
 8002b44:	f422 4280 	bic.w	r2, r2, #16384	@ 0x4000
 8002b48:	60da      	str	r2, [r3, #12]
 8002b4a:	687b      	ldr	r3, [r7, #4]
 8002b4c:	2201      	movs	r2, #1
 8002b4e:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8002b52:	687b      	ldr	r3, [r7, #4]
 8002b54:	2200      	movs	r2, #0
 8002b56:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002b5a:	2300      	movs	r3, #0
 8002b5c:	4618      	mov	r0, r3
 8002b5e:	3708      	adds	r7, #8
 8002b60:	46bd      	mov	sp, r7
 8002b62:	bd80      	pop	{r7, pc}

08002b64 <HAL_TIM_PeriodElapsedCallback>:
 8002b64:	b480      	push	{r7}
 8002b66:	b083      	sub	sp, #12
 8002b68:	af00      	add	r7, sp, #0
 8002b6a:	6078      	str	r0, [r7, #4]
 8002b6c:	bf00      	nop
 8002b6e:	370c      	adds	r7, #12
 8002b70:	46bd      	mov	sp, r7
 8002b72:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002b76:	4770      	bx	lr

08002b78 <HAL_TIM_OC_DelayElapsedCallback>:
 8002b78:	b480      	push	{r7}
 8002b7a:	b083      	sub	sp, #12
 8002b7c:	af00      	add	r7, sp, #0
 8002b7e:	6078      	str	r0, [r7, #4]
 8002b80:	bf00      	nop
 8002b82:	370c      	adds	r7, #12
 8002b84:	46bd      	mov	sp, r7
 8002b86:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002b8a:	4770      	bx	lr

08002b8c <HAL_TIM_IC_CaptureCallback>:
 8002b8c:	b480      	push	{r7}
 8002b8e:	b083      	sub	sp, #12
 8002b90:	af00      	add	r7, sp, #0
 8002b92:	6078      	str	r0, [r7, #4]
 8002b94:	bf00      	nop
 8002b96:	370c      	adds	r7, #12
 8002b98:	46bd      	mov	sp, r7
 8002b9a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002b9e:	4770      	bx	lr

08002ba0 <HAL_TIM_PWM_PulseFinishedCallback>:
 8002ba0:	b480      	push	{r7}
 8002ba2:	b083      	sub	sp, #12
 8002ba4:	af00      	add	r7, sp, #0
 8002ba6:	6078      	str	r0, [r7, #4]
 8002ba8:	bf00      	nop
 8002baa:	370c      	adds	r7, #12
 8002bac:	46bd      	mov	sp, r7
 8002bae:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002bb2:	4770      	bx	lr

08002bb4 <HAL_TIM_TriggerCallback>:
 8002bb4:	b480      	push	{r7}
 8002bb6:	b083      	sub	sp, #12
 8002bb8:	af00      	add	r7, sp, #0
 8002bba:	6078      	str	r0, [r7, #4]
 8002bbc:	bf00      	nop
 8002bbe:	370c      	adds	r7, #12
 8002bc0:	46bd      	mov	sp, r7
 8002bc2:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002bc6:	4770      	bx	lr

08002bc8 <TIM_Base_SetConfig>:
 8002bc8:	b480      	push	{r7}
 8002bca:	b085      	sub	sp, #20
 8002bcc:	af00      	add	r7, sp, #0
 8002bce:	6078      	str	r0, [r7, #4]
 8002bd0:	6039      	str	r1, [r7, #0]
 8002bd2:	687b      	ldr	r3, [r7, #4]
 8002bd4:	681b      	ldr	r3, [r3, #0]
 8002bd6:	60fb      	str	r3, [r7, #12]
 8002bd8:	687b      	ldr	r3, [r7, #4]
 8002bda:	4a43      	ldr	r2, [pc, #268]	@ (8002ce8 <TIM_Base_SetConfig+0x120>)
 8002bdc:	4293      	cmp	r3, r2
 8002bde:	d013      	beq.n	8002c08 <TIM_Base_SetConfig+0x40>
 8002be0:	687b      	ldr	r3, [r7, #4]
 8002be2:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8002be6:	d00f      	beq.n	8002c08 <TIM_Base_SetConfig+0x40>
 8002be8:	687b      	ldr	r3, [r7, #4]
 8002bea:	4a40      	ldr	r2, [pc, #256]	@ (8002cec <TIM_Base_SetConfig+0x124>)
 8002bec:	4293      	cmp	r3, r2
 8002bee:	d00b      	beq.n	8002c08 <TIM_Base_SetConfig+0x40>
 8002bf0:	687b      	ldr	r3, [r7, #4]
 8002bf2:	4a3f      	ldr	r2, [pc, #252]	@ (8002cf0 <TIM_Base_SetConfig+0x128>)
 8002bf4:	4293      	cmp	r3, r2
 8002bf6:	d007      	beq.n	8002c08 <TIM_Base_SetConfig+0x40>
 8002bf8:	687b      	ldr	r3, [r7, #4]
 8002bfa:	4a3e      	ldr	r2, [pc, #248]	@ (8002cf4 <TIM_Base_SetConfig+0x12c>)
 8002bfc:	4293      	cmp	r3, r2
 8002bfe:	d003      	beq.n	8002c08 <TIM_Base_SetConfig+0x40>
 8002c00:	687b      	ldr	r3, [r7, #4]
 8002c02:	4a3d      	ldr	r2, [pc, #244]	@ (8002cf8 <TIM_Base_SetConfig+0x130>)
 8002c04:	4293      	cmp	r3, r2
 8002c06:	d108      	bne.n	8002c1a <TIM_Base_SetConfig+0x52>
 8002c08:	68fb      	ldr	r3, [r7, #12]
 8002c0a:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002c0e:	60fb      	str	r3, [r7, #12]
 8002c10:	683b      	ldr	r3, [r7, #0]
 8002c12:	685b      	ldr	r3, [r3, #4]
 8002c14:	68fa      	ldr	r2, [r7, #12]
 8002c16:	4313      	orrs	r3, r2
 8002c18:	60fb      	str	r3, [r7, #12]
 8002c1a:	687b      	ldr	r3, [r7, #4]
 8002c1c:	4a32      	ldr	r2, [pc, #200]	@ (8002ce8 <TIM_Base_SetConfig+0x120>)
 8002c1e:	4293      	cmp	r3, r2
 8002c20:	d02b      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c22:	687b      	ldr	r3, [r7, #4]
 8002c24:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8002c28:	d027      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c2a:	687b      	ldr	r3, [r7, #4]
 8002c2c:	4a2f      	ldr	r2, [pc, #188]	@ (8002cec <TIM_Base_SetConfig+0x124>)
 8002c2e:	4293      	cmp	r3, r2
 8002c30:	d023      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c32:	687b      	ldr	r3, [r7, #4]
 8002c34:	4a2e      	ldr	r2, [pc, #184]	@ (8002cf0 <TIM_Base_SetConfig+0x128>)
 8002c36:	4293      	cmp	r3, r2
 8002c38:	d01f      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c3a:	687b      	ldr	r3, [r7, #4]
 8002c3c:	4a2d      	ldr	r2, [pc, #180]	@ (8002cf4 <TIM_Base_SetConfig+0x12c>)
 8002c3e:	4293      	cmp	r3, r2
 8002c40:	d01b      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c42:	687b      	ldr	r3, [r7, #4]
 8002c44:	4a2c      	ldr	r2, [pc, #176]	@ (8002cf8 <TIM_Base_SetConfig+0x130>)
 8002c46:	4293      	cmp	r3, r2
 8002c48:	d017      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c4a:	687b      	ldr	r3, [r7, #4]
 8002c4c:	4a2b      	ldr	r2, [pc, #172]	@ (8002cfc <TIM_Base_SetConfig+0x134>)
 8002c4e:	4293      	cmp	r3, r2
 8002c50:	d013      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c52:	687b      	ldr	r3, [r7, #4]
 8002c54:	4a2a      	ldr	r2, [pc, #168]	@ (8002d00 <TIM_Base_SetConfig+0x138>)
 8002c56:	4293      	cmp	r3, r2
 8002c58:	d00f      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c5a:	687b      	ldr	r3, [r7, #4]
 8002c5c:	4a29      	ldr	r2, [pc, #164]	@ (8002d04 <TIM_Base_SetConfig+0x13c>)
 8002c5e:	4293      	cmp	r3, r2
 8002c60:	d00b      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c62:	687b      	ldr	r3, [r7, #4]
 8002c64:	4a28      	ldr	r2, [pc, #160]	@ (8002d08 <TIM_Base_SetConfig+0x140>)
 8002c66:	4293      	cmp	r3, r2
 8002c68:	d007      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c6a:	687b      	ldr	r3, [r7, #4]
 8002c6c:	4a27      	ldr	r2, [pc, #156]	@ (8002d0c <TIM_Base_SetConfig+0x144>)
 8002c6e:	4293      	cmp	r3, r2
 8002c70:	d003      	beq.n	8002c7a <TIM_Base_SetConfig+0xb2>
 8002c72:	687b      	ldr	r3, [r7, #4]
 8002c74:	4a26      	ldr	r2, [pc, #152]	@ (8002d10 <TIM_Base_SetConfig+0x148>)
 8002c76:	4293      	cmp	r3, r2
 8002c78:	d108      	bne.n	8002c8c <TIM_Base_SetConfig+0xc4>
 8002c7a:	68fb      	ldr	r3, [r7, #12]
 8002c7c:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8002c80:	60fb      	str	r3, [r7, #12]
 8002c82:	683b      	ldr	r3, [r7, #0]
 8002c84:	68db      	ldr	r3, [r3, #12]
 8002c86:	68fa      	ldr	r2, [r7, #12]
 8002c88:	4313      	orrs	r3, r2
 8002c8a:	60fb      	str	r3, [r7, #12]
 8002c8c:	68fb      	ldr	r3, [r7, #12]
 8002c8e:	f023 0280 	bic.w	r2, r3, #128	@ 0x80
 8002c92:	683b      	ldr	r3, [r7, #0]
 8002c94:	695b      	ldr	r3, [r3, #20]
 8002c96:	4313      	orrs	r3, r2
 8002c98:	60fb      	str	r3, [r7, #12]
 8002c9a:	683b      	ldr	r3, [r7, #0]
 8002c9c:	689a      	ldr	r2, [r3, #8]
 8002c9e:	687b      	ldr	r3, [r7, #4]
 8002ca0:	62da      	str	r2, [r3, #44]	@ 0x2c
 8002ca2:	683b      	ldr	r3, [r7, #0]
 8002ca4:	681a      	ldr	r2, [r3, #0]
 8002ca6:	687b      	ldr	r3, [r7, #4]
 8002ca8:	629a      	str	r2, [r3, #40]	@ 0x28
 8002caa:	687b      	ldr	r3, [r7, #4]
 8002cac:	4a0e      	ldr	r2, [pc, #56]	@ (8002ce8 <TIM_Base_SetConfig+0x120>)
 8002cae:	4293      	cmp	r3, r2
 8002cb0:	d003      	beq.n	8002cba <TIM_Base_SetConfig+0xf2>
 8002cb2:	687b      	ldr	r3, [r7, #4]
 8002cb4:	4a10      	ldr	r2, [pc, #64]	@ (8002cf8 <TIM_Base_SetConfig+0x130>)
 8002cb6:	4293      	cmp	r3, r2
 8002cb8:	d103      	bne.n	8002cc2 <TIM_Base_SetConfig+0xfa>
 8002cba:	683b      	ldr	r3, [r7, #0]
 8002cbc:	691a      	ldr	r2, [r3, #16]
 8002cbe:	687b      	ldr	r3, [r7, #4]
 8002cc0:	631a      	str	r2, [r3, #48]	@ 0x30
 8002cc2:	687b      	ldr	r3, [r7, #4]
 8002cc4:	681b      	ldr	r3, [r3, #0]
 8002cc6:	f043 0204 	orr.w	r2, r3, #4
 8002cca:	687b      	ldr	r3, [r7, #4]
 8002ccc:	601a      	str	r2, [r3, #0]
 8002cce:	687b      	ldr	r3, [r7, #4]
 8002cd0:	2201      	movs	r2, #1
 8002cd2:	615a      	str	r2, [r3, #20]
 8002cd4:	687b      	ldr	r3, [r7, #4]
 8002cd6:	68fa      	ldr	r2, [r7, #12]
 8002cd8:	601a      	str	r2, [r3, #0]
 8002cda:	bf00      	nop
 8002cdc:	3714      	adds	r7, #20
 8002cde:	46bd      	mov	sp, r7
 8002ce0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ce4:	4770      	bx	lr
 8002ce6:	bf00      	nop
 8002ce8:	40010000 	.word	0x40010000
 8002cec:	40000400 	.word	0x40000400
 8002cf0:	40000800 	.word	0x40000800
 8002cf4:	40000c00 	.word	0x40000c00
 8002cf8:	40010400 	.word	0x40010400
 8002cfc:	40014000 	.word	0x40014000
 8002d00:	40014400 	.word	0x40014400
 8002d04:	40014800 	.word	0x40014800
 8002d08:	40001800 	.word	0x40001800
 8002d0c:	40001c00 	.word	0x40001c00
 8002d10:	40002000 	.word	0x40002000

08002d14 <TIM_SlaveTimer_SetConfig>:
 8002d14:	b580      	push	{r7, lr}
 8002d16:	b086      	sub	sp, #24
 8002d18:	af00      	add	r7, sp, #0
 8002d1a:	6078      	str	r0, [r7, #4]
 8002d1c:	6039      	str	r1, [r7, #0]
 8002d1e:	2300      	movs	r3, #0
 8002d20:	75fb      	strb	r3, [r7, #23]
 8002d22:	687b      	ldr	r3, [r7, #4]
 8002d24:	681b      	ldr	r3, [r3, #0]
 8002d26:	689b      	ldr	r3, [r3, #8]
 8002d28:	613b      	str	r3, [r7, #16]
 8002d2a:	693b      	ldr	r3, [r7, #16]
 8002d2c:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002d30:	613b      	str	r3, [r7, #16]
 8002d32:	683b      	ldr	r3, [r7, #0]
 8002d34:	685b      	ldr	r3, [r3, #4]
 8002d36:	693a      	ldr	r2, [r7, #16]
 8002d38:	4313      	orrs	r3, r2
 8002d3a:	613b      	str	r3, [r7, #16]
 8002d3c:	693b      	ldr	r3, [r7, #16]
 8002d3e:	f023 0307 	bic.w	r3, r3, #7
 8002d42:	613b      	str	r3, [r7, #16]
 8002d44:	683b      	ldr	r3, [r7, #0]
 8002d46:	681b      	ldr	r3, [r3, #0]
 8002d48:	693a      	ldr	r2, [r7, #16]
 8002d4a:	4313      	orrs	r3, r2
 8002d4c:	613b      	str	r3, [r7, #16]
 8002d4e:	687b      	ldr	r3, [r7, #4]
 8002d50:	681b      	ldr	r3, [r3, #0]
 8002d52:	693a      	ldr	r2, [r7, #16]
 8002d54:	609a      	str	r2, [r3, #8]
 8002d56:	683b      	ldr	r3, [r7, #0]
 8002d58:	685b      	ldr	r3, [r3, #4]
 8002d5a:	2b70      	cmp	r3, #112	@ 0x70
 8002d5c:	d01a      	beq.n	8002d94 <TIM_SlaveTimer_SetConfig+0x80>
 8002d5e:	2b70      	cmp	r3, #112	@ 0x70
 8002d60:	d860      	bhi.n	8002e24 <TIM_SlaveTimer_SetConfig+0x110>
 8002d62:	2b60      	cmp	r3, #96	@ 0x60
 8002d64:	d054      	beq.n	8002e10 <TIM_SlaveTimer_SetConfig+0xfc>
 8002d66:	2b60      	cmp	r3, #96	@ 0x60
 8002d68:	d85c      	bhi.n	8002e24 <TIM_SlaveTimer_SetConfig+0x110>
 8002d6a:	2b50      	cmp	r3, #80	@ 0x50
 8002d6c:	d046      	beq.n	8002dfc <TIM_SlaveTimer_SetConfig+0xe8>
 8002d6e:	2b50      	cmp	r3, #80	@ 0x50
 8002d70:	d858      	bhi.n	8002e24 <TIM_SlaveTimer_SetConfig+0x110>
 8002d72:	2b40      	cmp	r3, #64	@ 0x40
 8002d74:	d019      	beq.n	8002daa <TIM_SlaveTimer_SetConfig+0x96>
 8002d76:	2b40      	cmp	r3, #64	@ 0x40
 8002d78:	d854      	bhi.n	8002e24 <TIM_SlaveTimer_SetConfig+0x110>
 8002d7a:	2b30      	cmp	r3, #48	@ 0x30
 8002d7c:	d055      	beq.n	8002e2a <TIM_SlaveTimer_SetConfig+0x116>
 8002d7e:	2b30      	cmp	r3, #48	@ 0x30
 8002d80:	d850      	bhi.n	8002e24 <TIM_SlaveTimer_SetConfig+0x110>
 8002d82:	2b20      	cmp	r3, #32
 8002d84:	d051      	beq.n	8002e2a <TIM_SlaveTimer_SetConfig+0x116>
 8002d86:	2b20      	cmp	r3, #32
 8002d88:	d84c      	bhi.n	8002e24 <TIM_SlaveTimer_SetConfig+0x110>
 8002d8a:	2b00      	cmp	r3, #0
 8002d8c:	d04d      	beq.n	8002e2a <TIM_SlaveTimer_SetConfig+0x116>
 8002d8e:	2b10      	cmp	r3, #16
 8002d90:	d04b      	beq.n	8002e2a <TIM_SlaveTimer_SetConfig+0x116>
 8002d92:	e047      	b.n	8002e24 <TIM_SlaveTimer_SetConfig+0x110>
 8002d94:	687b      	ldr	r3, [r7, #4]
 8002d96:	6818      	ldr	r0, [r3, #0]
 8002d98:	683b      	ldr	r3, [r7, #0]
 8002d9a:	68d9      	ldr	r1, [r3, #12]
 8002d9c:	683b      	ldr	r3, [r7, #0]
 8002d9e:	689a      	ldr	r2, [r3, #8]
 8002da0:	683b      	ldr	r3, [r7, #0]
 8002da2:	691b      	ldr	r3, [r3, #16]
 8002da4:	f000 f8c1 	bl	8002f2a <TIM_ETR_SetConfig>
 8002da8:	e040      	b.n	8002e2c <TIM_SlaveTimer_SetConfig+0x118>
 8002daa:	683b      	ldr	r3, [r7, #0]
 8002dac:	681b      	ldr	r3, [r3, #0]
 8002dae:	2b05      	cmp	r3, #5
 8002db0:	d101      	bne.n	8002db6 <TIM_SlaveTimer_SetConfig+0xa2>
 8002db2:	2301      	movs	r3, #1
 8002db4:	e03b      	b.n	8002e2e <TIM_SlaveTimer_SetConfig+0x11a>
 8002db6:	687b      	ldr	r3, [r7, #4]
 8002db8:	681b      	ldr	r3, [r3, #0]
 8002dba:	6a1b      	ldr	r3, [r3, #32]
 8002dbc:	60fb      	str	r3, [r7, #12]
 8002dbe:	687b      	ldr	r3, [r7, #4]
 8002dc0:	681b      	ldr	r3, [r3, #0]
 8002dc2:	6a1a      	ldr	r2, [r3, #32]
 8002dc4:	687b      	ldr	r3, [r7, #4]
 8002dc6:	681b      	ldr	r3, [r3, #0]
 8002dc8:	f022 0201 	bic.w	r2, r2, #1
 8002dcc:	621a      	str	r2, [r3, #32]
 8002dce:	687b      	ldr	r3, [r7, #4]
 8002dd0:	681b      	ldr	r3, [r3, #0]
 8002dd2:	699b      	ldr	r3, [r3, #24]
 8002dd4:	60bb      	str	r3, [r7, #8]
 8002dd6:	68bb      	ldr	r3, [r7, #8]
 8002dd8:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8002ddc:	60bb      	str	r3, [r7, #8]
 8002dde:	683b      	ldr	r3, [r7, #0]
 8002de0:	691b      	ldr	r3, [r3, #16]
 8002de2:	011b      	lsls	r3, r3, #4
 8002de4:	68ba      	ldr	r2, [r7, #8]
 8002de6:	4313      	orrs	r3, r2
 8002de8:	60bb      	str	r3, [r7, #8]
 8002dea:	687b      	ldr	r3, [r7, #4]
 8002dec:	681b      	ldr	r3, [r3, #0]
 8002dee:	68ba      	ldr	r2, [r7, #8]
 8002df0:	619a      	str	r2, [r3, #24]
 8002df2:	687b      	ldr	r3, [r7, #4]
 8002df4:	681b      	ldr	r3, [r3, #0]
 8002df6:	68fa      	ldr	r2, [r7, #12]
 8002df8:	621a      	str	r2, [r3, #32]
 8002dfa:	e017      	b.n	8002e2c <TIM_SlaveTimer_SetConfig+0x118>
 8002dfc:	687b      	ldr	r3, [r7, #4]
 8002dfe:	6818      	ldr	r0, [r3, #0]
 8002e00:	683b      	ldr	r3, [r7, #0]
 8002e02:	6899      	ldr	r1, [r3, #8]
 8002e04:	683b      	ldr	r3, [r7, #0]
 8002e06:	691b      	ldr	r3, [r3, #16]
 8002e08:	461a      	mov	r2, r3
 8002e0a:	f000 f814 	bl	8002e36 <TIM_TI1_ConfigInputStage>
 8002e0e:	e00d      	b.n	8002e2c <TIM_SlaveTimer_SetConfig+0x118>
 8002e10:	687b      	ldr	r3, [r7, #4]
 8002e12:	6818      	ldr	r0, [r3, #0]
 8002e14:	683b      	ldr	r3, [r7, #0]
 8002e16:	6899      	ldr	r1, [r3, #8]
 8002e18:	683b      	ldr	r3, [r7, #0]
 8002e1a:	691b      	ldr	r3, [r3, #16]
 8002e1c:	461a      	mov	r2, r3
 8002e1e:	f000 f839 	bl	8002e94 <TIM_TI2_ConfigInputStage>
 8002e22:	e003      	b.n	8002e2c <TIM_SlaveTimer_SetConfig+0x118>
 8002e24:	2301      	movs	r3, #1
 8002e26:	75fb      	strb	r3, [r7, #23]
 8002e28:	e000      	b.n	8002e2c <TIM_SlaveTimer_SetConfig+0x118>
 8002e2a:	bf00      	nop
 8002e2c:	7dfb      	ldrb	r3, [r7, #23]
 8002e2e:	4618      	mov	r0, r3
 8002e30:	3718      	adds	r7, #24
 8002e32:	46bd      	mov	sp, r7
 8002e34:	bd80      	pop	{r7, pc}

08002e36 <TIM_TI1_ConfigInputStage>:
 8002e36:	b480      	push	{r7}
 8002e38:	b087      	sub	sp, #28
 8002e3a:	af00      	add	r7, sp, #0
 8002e3c:	60f8      	str	r0, [r7, #12]
 8002e3e:	60b9      	str	r1, [r7, #8]
 8002e40:	607a      	str	r2, [r7, #4]
 8002e42:	68fb      	ldr	r3, [r7, #12]
 8002e44:	6a1b      	ldr	r3, [r3, #32]
 8002e46:	617b      	str	r3, [r7, #20]
 8002e48:	68fb      	ldr	r3, [r7, #12]
 8002e4a:	6a1b      	ldr	r3, [r3, #32]
 8002e4c:	f023 0201 	bic.w	r2, r3, #1
 8002e50:	68fb      	ldr	r3, [r7, #12]
 8002e52:	621a      	str	r2, [r3, #32]
 8002e54:	68fb      	ldr	r3, [r7, #12]
 8002e56:	699b      	ldr	r3, [r3, #24]
 8002e58:	613b      	str	r3, [r7, #16]
 8002e5a:	693b      	ldr	r3, [r7, #16]
 8002e5c:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8002e60:	613b      	str	r3, [r7, #16]
 8002e62:	687b      	ldr	r3, [r7, #4]
 8002e64:	011b      	lsls	r3, r3, #4
 8002e66:	693a      	ldr	r2, [r7, #16]
 8002e68:	4313      	orrs	r3, r2
 8002e6a:	613b      	str	r3, [r7, #16]
 8002e6c:	697b      	ldr	r3, [r7, #20]
 8002e6e:	f023 030a 	bic.w	r3, r3, #10
 8002e72:	617b      	str	r3, [r7, #20]
 8002e74:	697a      	ldr	r2, [r7, #20]
 8002e76:	68bb      	ldr	r3, [r7, #8]
 8002e78:	4313      	orrs	r3, r2
 8002e7a:	617b      	str	r3, [r7, #20]
 8002e7c:	68fb      	ldr	r3, [r7, #12]
 8002e7e:	693a      	ldr	r2, [r7, #16]
 8002e80:	619a      	str	r2, [r3, #24]
 8002e82:	68fb      	ldr	r3, [r7, #12]
 8002e84:	697a      	ldr	r2, [r7, #20]
 8002e86:	621a      	str	r2, [r3, #32]
 8002e88:	bf00      	nop
 8002e8a:	371c      	adds	r7, #28
 8002e8c:	46bd      	mov	sp, r7
 8002e8e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e92:	4770      	bx	lr

08002e94 <TIM_TI2_ConfigInputStage>:
 8002e94:	b480      	push	{r7}
 8002e96:	b087      	sub	sp, #28
 8002e98:	af00      	add	r7, sp, #0
 8002e9a:	60f8      	str	r0, [r7, #12]
 8002e9c:	60b9      	str	r1, [r7, #8]
 8002e9e:	607a      	str	r2, [r7, #4]
 8002ea0:	68fb      	ldr	r3, [r7, #12]
 8002ea2:	6a1b      	ldr	r3, [r3, #32]
 8002ea4:	617b      	str	r3, [r7, #20]
 8002ea6:	68fb      	ldr	r3, [r7, #12]
 8002ea8:	6a1b      	ldr	r3, [r3, #32]
 8002eaa:	f023 0210 	bic.w	r2, r3, #16
 8002eae:	68fb      	ldr	r3, [r7, #12]
 8002eb0:	621a      	str	r2, [r3, #32]
 8002eb2:	68fb      	ldr	r3, [r7, #12]
 8002eb4:	699b      	ldr	r3, [r3, #24]
 8002eb6:	613b      	str	r3, [r7, #16]
 8002eb8:	693b      	ldr	r3, [r7, #16]
 8002eba:	f423 4370 	bic.w	r3, r3, #61440	@ 0xf000
 8002ebe:	613b      	str	r3, [r7, #16]
 8002ec0:	687b      	ldr	r3, [r7, #4]
 8002ec2:	031b      	lsls	r3, r3, #12
 8002ec4:	693a      	ldr	r2, [r7, #16]
 8002ec6:	4313      	orrs	r3, r2
 8002ec8:	613b      	str	r3, [r7, #16]
 8002eca:	697b      	ldr	r3, [r7, #20]
 8002ecc:	f023 03a0 	bic.w	r3, r3, #160	@ 0xa0
 8002ed0:	617b      	str	r3, [r7, #20]
 8002ed2:	68bb      	ldr	r3, [r7, #8]
 8002ed4:	011b      	lsls	r3, r3, #4
 8002ed6:	697a      	ldr	r2, [r7, #20]
 8002ed8:	4313      	orrs	r3, r2
 8002eda:	617b      	str	r3, [r7, #20]
 8002edc:	68fb      	ldr	r3, [r7, #12]
 8002ede:	693a      	ldr	r2, [r7, #16]
 8002ee0:	619a      	str	r2, [r3, #24]
 8002ee2:	68fb      	ldr	r3, [r7, #12]
 8002ee4:	697a      	ldr	r2, [r7, #20]
 8002ee6:	621a      	str	r2, [r3, #32]
 8002ee8:	bf00      	nop
 8002eea:	371c      	adds	r7, #28
 8002eec:	46bd      	mov	sp, r7
 8002eee:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ef2:	4770      	bx	lr

08002ef4 <TIM_ITRx_SetConfig>:
 8002ef4:	b480      	push	{r7}
 8002ef6:	b085      	sub	sp, #20
 8002ef8:	af00      	add	r7, sp, #0
 8002efa:	6078      	str	r0, [r7, #4]
 8002efc:	6039      	str	r1, [r7, #0]
 8002efe:	687b      	ldr	r3, [r7, #4]
 8002f00:	689b      	ldr	r3, [r3, #8]
 8002f02:	60fb      	str	r3, [r7, #12]
 8002f04:	68fb      	ldr	r3, [r7, #12]
 8002f06:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002f0a:	60fb      	str	r3, [r7, #12]
 8002f0c:	683a      	ldr	r2, [r7, #0]
 8002f0e:	68fb      	ldr	r3, [r7, #12]
 8002f10:	4313      	orrs	r3, r2
 8002f12:	f043 0307 	orr.w	r3, r3, #7
 8002f16:	60fb      	str	r3, [r7, #12]
 8002f18:	687b      	ldr	r3, [r7, #4]
 8002f1a:	68fa      	ldr	r2, [r7, #12]
 8002f1c:	609a      	str	r2, [r3, #8]
 8002f1e:	bf00      	nop
 8002f20:	3714      	adds	r7, #20
 8002f22:	46bd      	mov	sp, r7
 8002f24:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f28:	4770      	bx	lr

08002f2a <TIM_ETR_SetConfig>:
 8002f2a:	b480      	push	{r7}
 8002f2c:	b087      	sub	sp, #28
 8002f2e:	af00      	add	r7, sp, #0
 8002f30:	60f8      	str	r0, [r7, #12]
 8002f32:	60b9      	str	r1, [r7, #8]
 8002f34:	607a      	str	r2, [r7, #4]
 8002f36:	603b      	str	r3, [r7, #0]
 8002f38:	68fb      	ldr	r3, [r7, #12]
 8002f3a:	689b      	ldr	r3, [r3, #8]
 8002f3c:	617b      	str	r3, [r7, #20]
 8002f3e:	697b      	ldr	r3, [r7, #20]
 8002f40:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 8002f44:	617b      	str	r3, [r7, #20]
 8002f46:	683b      	ldr	r3, [r7, #0]
 8002f48:	021a      	lsls	r2, r3, #8
 8002f4a:	687b      	ldr	r3, [r7, #4]
 8002f4c:	431a      	orrs	r2, r3
 8002f4e:	68bb      	ldr	r3, [r7, #8]
 8002f50:	4313      	orrs	r3, r2
 8002f52:	697a      	ldr	r2, [r7, #20]
 8002f54:	4313      	orrs	r3, r2
 8002f56:	617b      	str	r3, [r7, #20]
 8002f58:	68fb      	ldr	r3, [r7, #12]
 8002f5a:	697a      	ldr	r2, [r7, #20]
 8002f5c:	609a      	str	r2, [r3, #8]
 8002f5e:	bf00      	nop
 8002f60:	371c      	adds	r7, #28
 8002f62:	46bd      	mov	sp, r7
 8002f64:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f68:	4770      	bx	lr
	...

08002f6c <HAL_TIMEx_MasterConfigSynchronization>:
 8002f6c:	b480      	push	{r7}
 8002f6e:	b085      	sub	sp, #20
 8002f70:	af00      	add	r7, sp, #0
 8002f72:	6078      	str	r0, [r7, #4]
 8002f74:	6039      	str	r1, [r7, #0]
 8002f76:	687b      	ldr	r3, [r7, #4]
 8002f78:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8002f7c:	2b01      	cmp	r3, #1
 8002f7e:	d101      	bne.n	8002f84 <HAL_TIMEx_MasterConfigSynchronization+0x18>
 8002f80:	2302      	movs	r3, #2
 8002f82:	e05a      	b.n	800303a <HAL_TIMEx_MasterConfigSynchronization+0xce>
 8002f84:	687b      	ldr	r3, [r7, #4]
 8002f86:	2201      	movs	r2, #1
 8002f88:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002f8c:	687b      	ldr	r3, [r7, #4]
 8002f8e:	2202      	movs	r2, #2
 8002f90:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8002f94:	687b      	ldr	r3, [r7, #4]
 8002f96:	681b      	ldr	r3, [r3, #0]
 8002f98:	685b      	ldr	r3, [r3, #4]
 8002f9a:	60fb      	str	r3, [r7, #12]
 8002f9c:	687b      	ldr	r3, [r7, #4]
 8002f9e:	681b      	ldr	r3, [r3, #0]
 8002fa0:	689b      	ldr	r3, [r3, #8]
 8002fa2:	60bb      	str	r3, [r7, #8]
 8002fa4:	68fb      	ldr	r3, [r7, #12]
 8002fa6:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002faa:	60fb      	str	r3, [r7, #12]
 8002fac:	683b      	ldr	r3, [r7, #0]
 8002fae:	681b      	ldr	r3, [r3, #0]
 8002fb0:	68fa      	ldr	r2, [r7, #12]
 8002fb2:	4313      	orrs	r3, r2
 8002fb4:	60fb      	str	r3, [r7, #12]
 8002fb6:	687b      	ldr	r3, [r7, #4]
 8002fb8:	681b      	ldr	r3, [r3, #0]
 8002fba:	68fa      	ldr	r2, [r7, #12]
 8002fbc:	605a      	str	r2, [r3, #4]
 8002fbe:	687b      	ldr	r3, [r7, #4]
 8002fc0:	681b      	ldr	r3, [r3, #0]
 8002fc2:	4a21      	ldr	r2, [pc, #132]	@ (8003048 <HAL_TIMEx_MasterConfigSynchronization+0xdc>)
 8002fc4:	4293      	cmp	r3, r2
 8002fc6:	d022      	beq.n	800300e <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8002fc8:	687b      	ldr	r3, [r7, #4]
 8002fca:	681b      	ldr	r3, [r3, #0]
 8002fcc:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8002fd0:	d01d      	beq.n	800300e <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8002fd2:	687b      	ldr	r3, [r7, #4]
 8002fd4:	681b      	ldr	r3, [r3, #0]
 8002fd6:	4a1d      	ldr	r2, [pc, #116]	@ (800304c <HAL_TIMEx_MasterConfigSynchronization+0xe0>)
 8002fd8:	4293      	cmp	r3, r2
 8002fda:	d018      	beq.n	800300e <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8002fdc:	687b      	ldr	r3, [r7, #4]
 8002fde:	681b      	ldr	r3, [r3, #0]
 8002fe0:	4a1b      	ldr	r2, [pc, #108]	@ (8003050 <HAL_TIMEx_MasterConfigSynchronization+0xe4>)
 8002fe2:	4293      	cmp	r3, r2
 8002fe4:	d013      	beq.n	800300e <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8002fe6:	687b      	ldr	r3, [r7, #4]
 8002fe8:	681b      	ldr	r3, [r3, #0]
 8002fea:	4a1a      	ldr	r2, [pc, #104]	@ (8003054 <HAL_TIMEx_MasterConfigSynchronization+0xe8>)
 8002fec:	4293      	cmp	r3, r2
 8002fee:	d00e      	beq.n	800300e <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8002ff0:	687b      	ldr	r3, [r7, #4]
 8002ff2:	681b      	ldr	r3, [r3, #0]
 8002ff4:	4a18      	ldr	r2, [pc, #96]	@ (8003058 <HAL_TIMEx_MasterConfigSynchronization+0xec>)
 8002ff6:	4293      	cmp	r3, r2
 8002ff8:	d009      	beq.n	800300e <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8002ffa:	687b      	ldr	r3, [r7, #4]
 8002ffc:	681b      	ldr	r3, [r3, #0]
 8002ffe:	4a17      	ldr	r2, [pc, #92]	@ (800305c <HAL_TIMEx_MasterConfigSynchronization+0xf0>)
 8003000:	4293      	cmp	r3, r2
 8003002:	d004      	beq.n	800300e <HAL_TIMEx_MasterConfigSynchronization+0xa2>
 8003004:	687b      	ldr	r3, [r7, #4]
 8003006:	681b      	ldr	r3, [r3, #0]
 8003008:	4a15      	ldr	r2, [pc, #84]	@ (8003060 <HAL_TIMEx_MasterConfigSynchronization+0xf4>)
 800300a:	4293      	cmp	r3, r2
 800300c:	d10c      	bne.n	8003028 <HAL_TIMEx_MasterConfigSynchronization+0xbc>
 800300e:	68bb      	ldr	r3, [r7, #8]
 8003010:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8003014:	60bb      	str	r3, [r7, #8]
 8003016:	683b      	ldr	r3, [r7, #0]
 8003018:	685b      	ldr	r3, [r3, #4]
 800301a:	68ba      	ldr	r2, [r7, #8]
 800301c:	4313      	orrs	r3, r2
 800301e:	60bb      	str	r3, [r7, #8]
 8003020:	687b      	ldr	r3, [r7, #4]
 8003022:	681b      	ldr	r3, [r3, #0]
 8003024:	68ba      	ldr	r2, [r7, #8]
 8003026:	609a      	str	r2, [r3, #8]
 8003028:	687b      	ldr	r3, [r7, #4]
 800302a:	2201      	movs	r2, #1
 800302c:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8003030:	687b      	ldr	r3, [r7, #4]
 8003032:	2200      	movs	r2, #0
 8003034:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8003038:	2300      	movs	r3, #0
 800303a:	4618      	mov	r0, r3
 800303c:	3714      	adds	r7, #20
 800303e:	46bd      	mov	sp, r7
 8003040:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003044:	4770      	bx	lr
 8003046:	bf00      	nop
 8003048:	40010000 	.word	0x40010000
 800304c:	40000400 	.word	0x40000400
 8003050:	40000800 	.word	0x40000800
 8003054:	40000c00 	.word	0x40000c00
 8003058:	40010400 	.word	0x40010400
 800305c:	40014000 	.word	0x40014000
 8003060:	40001800 	.word	0x40001800

08003064 <HAL_TIMEx_CommutCallback>:
 8003064:	b480      	push	{r7}
 8003066:	b083      	sub	sp, #12
 8003068:	af00      	add	r7, sp, #0
 800306a:	6078      	str	r0, [r7, #4]
 800306c:	bf00      	nop
 800306e:	370c      	adds	r7, #12
 8003070:	46bd      	mov	sp, r7
 8003072:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003076:	4770      	bx	lr

08003078 <HAL_TIMEx_BreakCallback>:
 8003078:	b480      	push	{r7}
 800307a:	b083      	sub	sp, #12
 800307c:	af00      	add	r7, sp, #0
 800307e:	6078      	str	r0, [r7, #4]
 8003080:	bf00      	nop
 8003082:	370c      	adds	r7, #12
 8003084:	46bd      	mov	sp, r7
 8003086:	f85d 7b04 	ldr.w	r7, [sp], #4
 800308a:	4770      	bx	lr

0800308c <HAL_UART_Init>:
 800308c:	b580      	push	{r7, lr}
 800308e:	b082      	sub	sp, #8
 8003090:	af00      	add	r7, sp, #0
 8003092:	6078      	str	r0, [r7, #4]
 8003094:	687b      	ldr	r3, [r7, #4]
 8003096:	2b00      	cmp	r3, #0
 8003098:	d101      	bne.n	800309e <HAL_UART_Init+0x12>
 800309a:	2301      	movs	r3, #1
 800309c:	e042      	b.n	8003124 <HAL_UART_Init+0x98>
 800309e:	687b      	ldr	r3, [r7, #4]
 80030a0:	f893 3041 	ldrb.w	r3, [r3, #65]	@ 0x41
 80030a4:	b2db      	uxtb	r3, r3
 80030a6:	2b00      	cmp	r3, #0
 80030a8:	d106      	bne.n	80030b8 <HAL_UART_Init+0x2c>
 80030aa:	687b      	ldr	r3, [r7, #4]
 80030ac:	2200      	movs	r2, #0
 80030ae:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 80030b2:	6878      	ldr	r0, [r7, #4]
 80030b4:	f7fe f92a 	bl	800130c <HAL_UART_MspInit>
 80030b8:	687b      	ldr	r3, [r7, #4]
 80030ba:	2224      	movs	r2, #36	@ 0x24
 80030bc:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 80030c0:	687b      	ldr	r3, [r7, #4]
 80030c2:	681b      	ldr	r3, [r3, #0]
 80030c4:	68da      	ldr	r2, [r3, #12]
 80030c6:	687b      	ldr	r3, [r7, #4]
 80030c8:	681b      	ldr	r3, [r3, #0]
 80030ca:	f422 5200 	bic.w	r2, r2, #8192	@ 0x2000
 80030ce:	60da      	str	r2, [r3, #12]
 80030d0:	6878      	ldr	r0, [r7, #4]
 80030d2:	f000 f973 	bl	80033bc <UART_SetConfig>
 80030d6:	687b      	ldr	r3, [r7, #4]
 80030d8:	681b      	ldr	r3, [r3, #0]
 80030da:	691a      	ldr	r2, [r3, #16]
 80030dc:	687b      	ldr	r3, [r7, #4]
 80030de:	681b      	ldr	r3, [r3, #0]
 80030e0:	f422 4290 	bic.w	r2, r2, #18432	@ 0x4800
 80030e4:	611a      	str	r2, [r3, #16]
 80030e6:	687b      	ldr	r3, [r7, #4]
 80030e8:	681b      	ldr	r3, [r3, #0]
 80030ea:	695a      	ldr	r2, [r3, #20]
 80030ec:	687b      	ldr	r3, [r7, #4]
 80030ee:	681b      	ldr	r3, [r3, #0]
 80030f0:	f022 022a 	bic.w	r2, r2, #42	@ 0x2a
 80030f4:	615a      	str	r2, [r3, #20]
 80030f6:	687b      	ldr	r3, [r7, #4]
 80030f8:	681b      	ldr	r3, [r3, #0]
 80030fa:	68da      	ldr	r2, [r3, #12]
 80030fc:	687b      	ldr	r3, [r7, #4]
 80030fe:	681b      	ldr	r3, [r3, #0]
 8003100:	f442 5200 	orr.w	r2, r2, #8192	@ 0x2000
 8003104:	60da      	str	r2, [r3, #12]
 8003106:	687b      	ldr	r3, [r7, #4]
 8003108:	2200      	movs	r2, #0
 800310a:	645a      	str	r2, [r3, #68]	@ 0x44
 800310c:	687b      	ldr	r3, [r7, #4]
 800310e:	2220      	movs	r2, #32
 8003110:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8003114:	687b      	ldr	r3, [r7, #4]
 8003116:	2220      	movs	r2, #32
 8003118:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 800311c:	687b      	ldr	r3, [r7, #4]
 800311e:	2200      	movs	r2, #0
 8003120:	635a      	str	r2, [r3, #52]	@ 0x34
 8003122:	2300      	movs	r3, #0
 8003124:	4618      	mov	r0, r3
 8003126:	3708      	adds	r7, #8
 8003128:	46bd      	mov	sp, r7
 800312a:	bd80      	pop	{r7, pc}

0800312c <HAL_UART_Transmit>:
 800312c:	b580      	push	{r7, lr}
 800312e:	b08a      	sub	sp, #40	@ 0x28
 8003130:	af02      	add	r7, sp, #8
 8003132:	60f8      	str	r0, [r7, #12]
 8003134:	60b9      	str	r1, [r7, #8]
 8003136:	603b      	str	r3, [r7, #0]
 8003138:	4613      	mov	r3, r2
 800313a:	80fb      	strh	r3, [r7, #6]
 800313c:	2300      	movs	r3, #0
 800313e:	617b      	str	r3, [r7, #20]
 8003140:	68fb      	ldr	r3, [r7, #12]
 8003142:	f893 3041 	ldrb.w	r3, [r3, #65]	@ 0x41
 8003146:	b2db      	uxtb	r3, r3
 8003148:	2b20      	cmp	r3, #32
 800314a:	d175      	bne.n	8003238 <HAL_UART_Transmit+0x10c>
 800314c:	68bb      	ldr	r3, [r7, #8]
 800314e:	2b00      	cmp	r3, #0
 8003150:	d002      	beq.n	8003158 <HAL_UART_Transmit+0x2c>
 8003152:	88fb      	ldrh	r3, [r7, #6]
 8003154:	2b00      	cmp	r3, #0
 8003156:	d101      	bne.n	800315c <HAL_UART_Transmit+0x30>
 8003158:	2301      	movs	r3, #1
 800315a:	e06e      	b.n	800323a <HAL_UART_Transmit+0x10e>
 800315c:	68fb      	ldr	r3, [r7, #12]
 800315e:	2200      	movs	r2, #0
 8003160:	645a      	str	r2, [r3, #68]	@ 0x44
 8003162:	68fb      	ldr	r3, [r7, #12]
 8003164:	2221      	movs	r2, #33	@ 0x21
 8003166:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 800316a:	f7fe f97b 	bl	8001464 <HAL_GetTick>
 800316e:	6178      	str	r0, [r7, #20]
 8003170:	68fb      	ldr	r3, [r7, #12]
 8003172:	88fa      	ldrh	r2, [r7, #6]
 8003174:	849a      	strh	r2, [r3, #36]	@ 0x24
 8003176:	68fb      	ldr	r3, [r7, #12]
 8003178:	88fa      	ldrh	r2, [r7, #6]
 800317a:	84da      	strh	r2, [r3, #38]	@ 0x26
 800317c:	68fb      	ldr	r3, [r7, #12]
 800317e:	689b      	ldr	r3, [r3, #8]
 8003180:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8003184:	d108      	bne.n	8003198 <HAL_UART_Transmit+0x6c>
 8003186:	68fb      	ldr	r3, [r7, #12]
 8003188:	691b      	ldr	r3, [r3, #16]
 800318a:	2b00      	cmp	r3, #0
 800318c:	d104      	bne.n	8003198 <HAL_UART_Transmit+0x6c>
 800318e:	2300      	movs	r3, #0
 8003190:	61fb      	str	r3, [r7, #28]
 8003192:	68bb      	ldr	r3, [r7, #8]
 8003194:	61bb      	str	r3, [r7, #24]
 8003196:	e003      	b.n	80031a0 <HAL_UART_Transmit+0x74>
 8003198:	68bb      	ldr	r3, [r7, #8]
 800319a:	61fb      	str	r3, [r7, #28]
 800319c:	2300      	movs	r3, #0
 800319e:	61bb      	str	r3, [r7, #24]
 80031a0:	e02e      	b.n	8003200 <HAL_UART_Transmit+0xd4>
 80031a2:	683b      	ldr	r3, [r7, #0]
 80031a4:	9300      	str	r3, [sp, #0]
 80031a6:	697b      	ldr	r3, [r7, #20]
 80031a8:	2200      	movs	r2, #0
 80031aa:	2180      	movs	r1, #128	@ 0x80
 80031ac:	68f8      	ldr	r0, [r7, #12]
 80031ae:	f000 f848 	bl	8003242 <UART_WaitOnFlagUntilTimeout>
 80031b2:	4603      	mov	r3, r0
 80031b4:	2b00      	cmp	r3, #0
 80031b6:	d005      	beq.n	80031c4 <HAL_UART_Transmit+0x98>
 80031b8:	68fb      	ldr	r3, [r7, #12]
 80031ba:	2220      	movs	r2, #32
 80031bc:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 80031c0:	2303      	movs	r3, #3
 80031c2:	e03a      	b.n	800323a <HAL_UART_Transmit+0x10e>
 80031c4:	69fb      	ldr	r3, [r7, #28]
 80031c6:	2b00      	cmp	r3, #0
 80031c8:	d10b      	bne.n	80031e2 <HAL_UART_Transmit+0xb6>
 80031ca:	69bb      	ldr	r3, [r7, #24]
 80031cc:	881b      	ldrh	r3, [r3, #0]
 80031ce:	461a      	mov	r2, r3
 80031d0:	68fb      	ldr	r3, [r7, #12]
 80031d2:	681b      	ldr	r3, [r3, #0]
 80031d4:	f3c2 0208 	ubfx	r2, r2, #0, #9
 80031d8:	605a      	str	r2, [r3, #4]
 80031da:	69bb      	ldr	r3, [r7, #24]
 80031dc:	3302      	adds	r3, #2
 80031de:	61bb      	str	r3, [r7, #24]
 80031e0:	e007      	b.n	80031f2 <HAL_UART_Transmit+0xc6>
 80031e2:	69fb      	ldr	r3, [r7, #28]
 80031e4:	781a      	ldrb	r2, [r3, #0]
 80031e6:	68fb      	ldr	r3, [r7, #12]
 80031e8:	681b      	ldr	r3, [r3, #0]
 80031ea:	605a      	str	r2, [r3, #4]
 80031ec:	69fb      	ldr	r3, [r7, #28]
 80031ee:	3301      	adds	r3, #1
 80031f0:	61fb      	str	r3, [r7, #28]
 80031f2:	68fb      	ldr	r3, [r7, #12]
 80031f4:	8cdb      	ldrh	r3, [r3, #38]	@ 0x26
 80031f6:	b29b      	uxth	r3, r3
 80031f8:	3b01      	subs	r3, #1
 80031fa:	b29a      	uxth	r2, r3
 80031fc:	68fb      	ldr	r3, [r7, #12]
 80031fe:	84da      	strh	r2, [r3, #38]	@ 0x26
 8003200:	68fb      	ldr	r3, [r7, #12]
 8003202:	8cdb      	ldrh	r3, [r3, #38]	@ 0x26
 8003204:	b29b      	uxth	r3, r3
 8003206:	2b00      	cmp	r3, #0
 8003208:	d1cb      	bne.n	80031a2 <HAL_UART_Transmit+0x76>
 800320a:	683b      	ldr	r3, [r7, #0]
 800320c:	9300      	str	r3, [sp, #0]
 800320e:	697b      	ldr	r3, [r7, #20]
 8003210:	2200      	movs	r2, #0
 8003212:	2140      	movs	r1, #64	@ 0x40
 8003214:	68f8      	ldr	r0, [r7, #12]
 8003216:	f000 f814 	bl	8003242 <UART_WaitOnFlagUntilTimeout>
 800321a:	4603      	mov	r3, r0
 800321c:	2b00      	cmp	r3, #0
 800321e:	d005      	beq.n	800322c <HAL_UART_Transmit+0x100>
 8003220:	68fb      	ldr	r3, [r7, #12]
 8003222:	2220      	movs	r2, #32
 8003224:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8003228:	2303      	movs	r3, #3
 800322a:	e006      	b.n	800323a <HAL_UART_Transmit+0x10e>
 800322c:	68fb      	ldr	r3, [r7, #12]
 800322e:	2220      	movs	r2, #32
 8003230:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8003234:	2300      	movs	r3, #0
 8003236:	e000      	b.n	800323a <HAL_UART_Transmit+0x10e>
 8003238:	2302      	movs	r3, #2
 800323a:	4618      	mov	r0, r3
 800323c:	3720      	adds	r7, #32
 800323e:	46bd      	mov	sp, r7
 8003240:	bd80      	pop	{r7, pc}

08003242 <UART_WaitOnFlagUntilTimeout>:
 8003242:	b580      	push	{r7, lr}
 8003244:	b086      	sub	sp, #24
 8003246:	af00      	add	r7, sp, #0
 8003248:	60f8      	str	r0, [r7, #12]
 800324a:	60b9      	str	r1, [r7, #8]
 800324c:	603b      	str	r3, [r7, #0]
 800324e:	4613      	mov	r3, r2
 8003250:	71fb      	strb	r3, [r7, #7]
 8003252:	e03b      	b.n	80032cc <UART_WaitOnFlagUntilTimeout+0x8a>
 8003254:	6a3b      	ldr	r3, [r7, #32]
 8003256:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 800325a:	d037      	beq.n	80032cc <UART_WaitOnFlagUntilTimeout+0x8a>
 800325c:	f7fe f902 	bl	8001464 <HAL_GetTick>
 8003260:	4602      	mov	r2, r0
 8003262:	683b      	ldr	r3, [r7, #0]
 8003264:	1ad3      	subs	r3, r2, r3
 8003266:	6a3a      	ldr	r2, [r7, #32]
 8003268:	429a      	cmp	r2, r3
 800326a:	d302      	bcc.n	8003272 <UART_WaitOnFlagUntilTimeout+0x30>
 800326c:	6a3b      	ldr	r3, [r7, #32]
 800326e:	2b00      	cmp	r3, #0
 8003270:	d101      	bne.n	8003276 <UART_WaitOnFlagUntilTimeout+0x34>
 8003272:	2303      	movs	r3, #3
 8003274:	e03a      	b.n	80032ec <UART_WaitOnFlagUntilTimeout+0xaa>
 8003276:	68fb      	ldr	r3, [r7, #12]
 8003278:	681b      	ldr	r3, [r3, #0]
 800327a:	68db      	ldr	r3, [r3, #12]
 800327c:	f003 0304 	and.w	r3, r3, #4
 8003280:	2b00      	cmp	r3, #0
 8003282:	d023      	beq.n	80032cc <UART_WaitOnFlagUntilTimeout+0x8a>
 8003284:	68bb      	ldr	r3, [r7, #8]
 8003286:	2b80      	cmp	r3, #128	@ 0x80
 8003288:	d020      	beq.n	80032cc <UART_WaitOnFlagUntilTimeout+0x8a>
 800328a:	68bb      	ldr	r3, [r7, #8]
 800328c:	2b40      	cmp	r3, #64	@ 0x40
 800328e:	d01d      	beq.n	80032cc <UART_WaitOnFlagUntilTimeout+0x8a>
 8003290:	68fb      	ldr	r3, [r7, #12]
 8003292:	681b      	ldr	r3, [r3, #0]
 8003294:	681b      	ldr	r3, [r3, #0]
 8003296:	f003 0308 	and.w	r3, r3, #8
 800329a:	2b08      	cmp	r3, #8
 800329c:	d116      	bne.n	80032cc <UART_WaitOnFlagUntilTimeout+0x8a>
 800329e:	2300      	movs	r3, #0
 80032a0:	617b      	str	r3, [r7, #20]
 80032a2:	68fb      	ldr	r3, [r7, #12]
 80032a4:	681b      	ldr	r3, [r3, #0]
 80032a6:	681b      	ldr	r3, [r3, #0]
 80032a8:	617b      	str	r3, [r7, #20]
 80032aa:	68fb      	ldr	r3, [r7, #12]
 80032ac:	681b      	ldr	r3, [r3, #0]
 80032ae:	685b      	ldr	r3, [r3, #4]
 80032b0:	617b      	str	r3, [r7, #20]
 80032b2:	697b      	ldr	r3, [r7, #20]
 80032b4:	68f8      	ldr	r0, [r7, #12]
 80032b6:	f000 f81d 	bl	80032f4 <UART_EndRxTransfer>
 80032ba:	68fb      	ldr	r3, [r7, #12]
 80032bc:	2208      	movs	r2, #8
 80032be:	645a      	str	r2, [r3, #68]	@ 0x44
 80032c0:	68fb      	ldr	r3, [r7, #12]
 80032c2:	2200      	movs	r2, #0
 80032c4:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 80032c8:	2301      	movs	r3, #1
 80032ca:	e00f      	b.n	80032ec <UART_WaitOnFlagUntilTimeout+0xaa>
 80032cc:	68fb      	ldr	r3, [r7, #12]
 80032ce:	681b      	ldr	r3, [r3, #0]
 80032d0:	681a      	ldr	r2, [r3, #0]
 80032d2:	68bb      	ldr	r3, [r7, #8]
 80032d4:	4013      	ands	r3, r2
 80032d6:	68ba      	ldr	r2, [r7, #8]
 80032d8:	429a      	cmp	r2, r3
 80032da:	bf0c      	ite	eq
 80032dc:	2301      	moveq	r3, #1
 80032de:	2300      	movne	r3, #0
 80032e0:	b2db      	uxtb	r3, r3
 80032e2:	461a      	mov	r2, r3
 80032e4:	79fb      	ldrb	r3, [r7, #7]
 80032e6:	429a      	cmp	r2, r3
 80032e8:	d0b4      	beq.n	8003254 <UART_WaitOnFlagUntilTimeout+0x12>
 80032ea:	2300      	movs	r3, #0
 80032ec:	4618      	mov	r0, r3
 80032ee:	3718      	adds	r7, #24
 80032f0:	46bd      	mov	sp, r7
 80032f2:	bd80      	pop	{r7, pc}

080032f4 <UART_EndRxTransfer>:
 80032f4:	b480      	push	{r7}
 80032f6:	b095      	sub	sp, #84	@ 0x54
 80032f8:	af00      	add	r7, sp, #0
 80032fa:	6078      	str	r0, [r7, #4]
 80032fc:	687b      	ldr	r3, [r7, #4]
 80032fe:	681b      	ldr	r3, [r3, #0]
 8003300:	330c      	adds	r3, #12
 8003302:	637b      	str	r3, [r7, #52]	@ 0x34
 8003304:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8003306:	e853 3f00 	ldrex	r3, [r3]
 800330a:	633b      	str	r3, [r7, #48]	@ 0x30
 800330c:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800330e:	f423 7390 	bic.w	r3, r3, #288	@ 0x120
 8003312:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8003314:	687b      	ldr	r3, [r7, #4]
 8003316:	681b      	ldr	r3, [r3, #0]
 8003318:	330c      	adds	r3, #12
 800331a:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 800331c:	643a      	str	r2, [r7, #64]	@ 0x40
 800331e:	63fb      	str	r3, [r7, #60]	@ 0x3c
 8003320:	6bf9      	ldr	r1, [r7, #60]	@ 0x3c
 8003322:	6c3a      	ldr	r2, [r7, #64]	@ 0x40
 8003324:	e841 2300 	strex	r3, r2, [r1]
 8003328:	63bb      	str	r3, [r7, #56]	@ 0x38
 800332a:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800332c:	2b00      	cmp	r3, #0
 800332e:	d1e5      	bne.n	80032fc <UART_EndRxTransfer+0x8>
 8003330:	687b      	ldr	r3, [r7, #4]
 8003332:	681b      	ldr	r3, [r3, #0]
 8003334:	3314      	adds	r3, #20
 8003336:	623b      	str	r3, [r7, #32]
 8003338:	6a3b      	ldr	r3, [r7, #32]
 800333a:	e853 3f00 	ldrex	r3, [r3]
 800333e:	61fb      	str	r3, [r7, #28]
 8003340:	69fb      	ldr	r3, [r7, #28]
 8003342:	f023 0301 	bic.w	r3, r3, #1
 8003346:	64bb      	str	r3, [r7, #72]	@ 0x48
 8003348:	687b      	ldr	r3, [r7, #4]
 800334a:	681b      	ldr	r3, [r3, #0]
 800334c:	3314      	adds	r3, #20
 800334e:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 8003350:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8003352:	62bb      	str	r3, [r7, #40]	@ 0x28
 8003354:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
 8003356:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 8003358:	e841 2300 	strex	r3, r2, [r1]
 800335c:	627b      	str	r3, [r7, #36]	@ 0x24
 800335e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8003360:	2b00      	cmp	r3, #0
 8003362:	d1e5      	bne.n	8003330 <UART_EndRxTransfer+0x3c>
 8003364:	687b      	ldr	r3, [r7, #4]
 8003366:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8003368:	2b01      	cmp	r3, #1
 800336a:	d119      	bne.n	80033a0 <UART_EndRxTransfer+0xac>
 800336c:	687b      	ldr	r3, [r7, #4]
 800336e:	681b      	ldr	r3, [r3, #0]
 8003370:	330c      	adds	r3, #12
 8003372:	60fb      	str	r3, [r7, #12]
 8003374:	68fb      	ldr	r3, [r7, #12]
 8003376:	e853 3f00 	ldrex	r3, [r3]
 800337a:	60bb      	str	r3, [r7, #8]
 800337c:	68bb      	ldr	r3, [r7, #8]
 800337e:	f023 0310 	bic.w	r3, r3, #16
 8003382:	647b      	str	r3, [r7, #68]	@ 0x44
 8003384:	687b      	ldr	r3, [r7, #4]
 8003386:	681b      	ldr	r3, [r3, #0]
 8003388:	330c      	adds	r3, #12
 800338a:	6c7a      	ldr	r2, [r7, #68]	@ 0x44
 800338c:	61ba      	str	r2, [r7, #24]
 800338e:	617b      	str	r3, [r7, #20]
 8003390:	6979      	ldr	r1, [r7, #20]
 8003392:	69ba      	ldr	r2, [r7, #24]
 8003394:	e841 2300 	strex	r3, r2, [r1]
 8003398:	613b      	str	r3, [r7, #16]
 800339a:	693b      	ldr	r3, [r7, #16]
 800339c:	2b00      	cmp	r3, #0
 800339e:	d1e5      	bne.n	800336c <UART_EndRxTransfer+0x78>
 80033a0:	687b      	ldr	r3, [r7, #4]
 80033a2:	2220      	movs	r2, #32
 80033a4:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 80033a8:	687b      	ldr	r3, [r7, #4]
 80033aa:	2200      	movs	r2, #0
 80033ac:	631a      	str	r2, [r3, #48]	@ 0x30
 80033ae:	bf00      	nop
 80033b0:	3754      	adds	r7, #84	@ 0x54
 80033b2:	46bd      	mov	sp, r7
 80033b4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80033b8:	4770      	bx	lr
	...

080033bc <UART_SetConfig>:
 80033bc:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
 80033c0:	b0c0      	sub	sp, #256	@ 0x100
 80033c2:	af00      	add	r7, sp, #0
 80033c4:	f8c7 00f4 	str.w	r0, [r7, #244]	@ 0xf4
 80033c8:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 80033cc:	681b      	ldr	r3, [r3, #0]
 80033ce:	691b      	ldr	r3, [r3, #16]
 80033d0:	f423 5040 	bic.w	r0, r3, #12288	@ 0x3000
 80033d4:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 80033d8:	68d9      	ldr	r1, [r3, #12]
 80033da:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 80033de:	681a      	ldr	r2, [r3, #0]
 80033e0:	ea40 0301 	orr.w	r3, r0, r1
 80033e4:	6113      	str	r3, [r2, #16]
 80033e6:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 80033ea:	689a      	ldr	r2, [r3, #8]
 80033ec:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 80033f0:	691b      	ldr	r3, [r3, #16]
 80033f2:	431a      	orrs	r2, r3
 80033f4:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 80033f8:	695b      	ldr	r3, [r3, #20]
 80033fa:	431a      	orrs	r2, r3
 80033fc:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003400:	69db      	ldr	r3, [r3, #28]
 8003402:	4313      	orrs	r3, r2
 8003404:	f8c7 30f8 	str.w	r3, [r7, #248]	@ 0xf8
 8003408:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 800340c:	681b      	ldr	r3, [r3, #0]
 800340e:	68db      	ldr	r3, [r3, #12]
 8003410:	f423 4116 	bic.w	r1, r3, #38400	@ 0x9600
 8003414:	f021 010c 	bic.w	r1, r1, #12
 8003418:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 800341c:	681a      	ldr	r2, [r3, #0]
 800341e:	f8d7 30f8 	ldr.w	r3, [r7, #248]	@ 0xf8
 8003422:	430b      	orrs	r3, r1
 8003424:	60d3      	str	r3, [r2, #12]
 8003426:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 800342a:	681b      	ldr	r3, [r3, #0]
 800342c:	695b      	ldr	r3, [r3, #20]
 800342e:	f423 7040 	bic.w	r0, r3, #768	@ 0x300
 8003432:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003436:	6999      	ldr	r1, [r3, #24]
 8003438:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 800343c:	681a      	ldr	r2, [r3, #0]
 800343e:	ea40 0301 	orr.w	r3, r0, r1
 8003442:	6153      	str	r3, [r2, #20]
 8003444:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003448:	681a      	ldr	r2, [r3, #0]
 800344a:	4b8f      	ldr	r3, [pc, #572]	@ (8003688 <UART_SetConfig+0x2cc>)
 800344c:	429a      	cmp	r2, r3
 800344e:	d005      	beq.n	800345c <UART_SetConfig+0xa0>
 8003450:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003454:	681a      	ldr	r2, [r3, #0]
 8003456:	4b8d      	ldr	r3, [pc, #564]	@ (800368c <UART_SetConfig+0x2d0>)
 8003458:	429a      	cmp	r2, r3
 800345a:	d104      	bne.n	8003466 <UART_SetConfig+0xaa>
 800345c:	f7ff f8d2 	bl	8002604 <HAL_RCC_GetPCLK2Freq>
 8003460:	f8c7 00fc 	str.w	r0, [r7, #252]	@ 0xfc
 8003464:	e003      	b.n	800346e <UART_SetConfig+0xb2>
 8003466:	f7ff f8b9 	bl	80025dc <HAL_RCC_GetPCLK1Freq>
 800346a:	f8c7 00fc 	str.w	r0, [r7, #252]	@ 0xfc
 800346e:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003472:	69db      	ldr	r3, [r3, #28]
 8003474:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8003478:	f040 810c 	bne.w	8003694 <UART_SetConfig+0x2d8>
 800347c:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 8003480:	2200      	movs	r2, #0
 8003482:	f8c7 30e8 	str.w	r3, [r7, #232]	@ 0xe8
 8003486:	f8c7 20ec 	str.w	r2, [r7, #236]	@ 0xec
 800348a:	e9d7 453a 	ldrd	r4, r5, [r7, #232]	@ 0xe8
 800348e:	4622      	mov	r2, r4
 8003490:	462b      	mov	r3, r5
 8003492:	1891      	adds	r1, r2, r2
 8003494:	65b9      	str	r1, [r7, #88]	@ 0x58
 8003496:	415b      	adcs	r3, r3
 8003498:	65fb      	str	r3, [r7, #92]	@ 0x5c
 800349a:	e9d7 2316 	ldrd	r2, r3, [r7, #88]	@ 0x58
 800349e:	4621      	mov	r1, r4
 80034a0:	eb12 0801 	adds.w	r8, r2, r1
 80034a4:	4629      	mov	r1, r5
 80034a6:	eb43 0901 	adc.w	r9, r3, r1
 80034aa:	f04f 0200 	mov.w	r2, #0
 80034ae:	f04f 0300 	mov.w	r3, #0
 80034b2:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 80034b6:	ea43 7358 	orr.w	r3, r3, r8, lsr #29
 80034ba:	ea4f 02c8 	mov.w	r2, r8, lsl #3
 80034be:	4690      	mov	r8, r2
 80034c0:	4699      	mov	r9, r3
 80034c2:	4623      	mov	r3, r4
 80034c4:	eb18 0303 	adds.w	r3, r8, r3
 80034c8:	f8c7 30e0 	str.w	r3, [r7, #224]	@ 0xe0
 80034cc:	462b      	mov	r3, r5
 80034ce:	eb49 0303 	adc.w	r3, r9, r3
 80034d2:	f8c7 30e4 	str.w	r3, [r7, #228]	@ 0xe4
 80034d6:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 80034da:	685b      	ldr	r3, [r3, #4]
 80034dc:	2200      	movs	r2, #0
 80034de:	f8c7 30d8 	str.w	r3, [r7, #216]	@ 0xd8
 80034e2:	f8c7 20dc 	str.w	r2, [r7, #220]	@ 0xdc
 80034e6:	e9d7 1236 	ldrd	r1, r2, [r7, #216]	@ 0xd8
 80034ea:	460b      	mov	r3, r1
 80034ec:	18db      	adds	r3, r3, r3
 80034ee:	653b      	str	r3, [r7, #80]	@ 0x50
 80034f0:	4613      	mov	r3, r2
 80034f2:	eb42 0303 	adc.w	r3, r2, r3
 80034f6:	657b      	str	r3, [r7, #84]	@ 0x54
 80034f8:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
 80034fc:	e9d7 0138 	ldrd	r0, r1, [r7, #224]	@ 0xe0
 8003500:	f7fc fe42 	bl	8000188 <__aeabi_uldivmod>
 8003504:	4602      	mov	r2, r0
 8003506:	460b      	mov	r3, r1
 8003508:	4b61      	ldr	r3, [pc, #388]	@ (8003690 <UART_SetConfig+0x2d4>)
 800350a:	fba3 2302 	umull	r2, r3, r3, r2
 800350e:	095b      	lsrs	r3, r3, #5
 8003510:	011c      	lsls	r4, r3, #4
 8003512:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 8003516:	2200      	movs	r2, #0
 8003518:	f8c7 30d0 	str.w	r3, [r7, #208]	@ 0xd0
 800351c:	f8c7 20d4 	str.w	r2, [r7, #212]	@ 0xd4
 8003520:	e9d7 8934 	ldrd	r8, r9, [r7, #208]	@ 0xd0
 8003524:	4642      	mov	r2, r8
 8003526:	464b      	mov	r3, r9
 8003528:	1891      	adds	r1, r2, r2
 800352a:	64b9      	str	r1, [r7, #72]	@ 0x48
 800352c:	415b      	adcs	r3, r3
 800352e:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8003530:	e9d7 2312 	ldrd	r2, r3, [r7, #72]	@ 0x48
 8003534:	4641      	mov	r1, r8
 8003536:	eb12 0a01 	adds.w	sl, r2, r1
 800353a:	4649      	mov	r1, r9
 800353c:	eb43 0b01 	adc.w	fp, r3, r1
 8003540:	f04f 0200 	mov.w	r2, #0
 8003544:	f04f 0300 	mov.w	r3, #0
 8003548:	ea4f 03cb 	mov.w	r3, fp, lsl #3
 800354c:	ea43 735a 	orr.w	r3, r3, sl, lsr #29
 8003550:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8003554:	4692      	mov	sl, r2
 8003556:	469b      	mov	fp, r3
 8003558:	4643      	mov	r3, r8
 800355a:	eb1a 0303 	adds.w	r3, sl, r3
 800355e:	f8c7 30c8 	str.w	r3, [r7, #200]	@ 0xc8
 8003562:	464b      	mov	r3, r9
 8003564:	eb4b 0303 	adc.w	r3, fp, r3
 8003568:	f8c7 30cc 	str.w	r3, [r7, #204]	@ 0xcc
 800356c:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 8003570:	685b      	ldr	r3, [r3, #4]
 8003572:	2200      	movs	r2, #0
 8003574:	f8c7 30c0 	str.w	r3, [r7, #192]	@ 0xc0
 8003578:	f8c7 20c4 	str.w	r2, [r7, #196]	@ 0xc4
 800357c:	e9d7 1230 	ldrd	r1, r2, [r7, #192]	@ 0xc0
 8003580:	460b      	mov	r3, r1
 8003582:	18db      	adds	r3, r3, r3
 8003584:	643b      	str	r3, [r7, #64]	@ 0x40
 8003586:	4613      	mov	r3, r2
 8003588:	eb42 0303 	adc.w	r3, r2, r3
 800358c:	647b      	str	r3, [r7, #68]	@ 0x44
 800358e:	e9d7 2310 	ldrd	r2, r3, [r7, #64]	@ 0x40
 8003592:	e9d7 0132 	ldrd	r0, r1, [r7, #200]	@ 0xc8
 8003596:	f7fc fdf7 	bl	8000188 <__aeabi_uldivmod>
 800359a:	4602      	mov	r2, r0
 800359c:	460b      	mov	r3, r1
 800359e:	4611      	mov	r1, r2
 80035a0:	4b3b      	ldr	r3, [pc, #236]	@ (8003690 <UART_SetConfig+0x2d4>)
 80035a2:	fba3 2301 	umull	r2, r3, r3, r1
 80035a6:	095b      	lsrs	r3, r3, #5
 80035a8:	2264      	movs	r2, #100	@ 0x64
 80035aa:	fb02 f303 	mul.w	r3, r2, r3
 80035ae:	1acb      	subs	r3, r1, r3
 80035b0:	00db      	lsls	r3, r3, #3
 80035b2:	f103 0232 	add.w	r2, r3, #50	@ 0x32
 80035b6:	4b36      	ldr	r3, [pc, #216]	@ (8003690 <UART_SetConfig+0x2d4>)
 80035b8:	fba3 2302 	umull	r2, r3, r3, r2
 80035bc:	095b      	lsrs	r3, r3, #5
 80035be:	005b      	lsls	r3, r3, #1
 80035c0:	f403 73f8 	and.w	r3, r3, #496	@ 0x1f0
 80035c4:	441c      	add	r4, r3
 80035c6:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 80035ca:	2200      	movs	r2, #0
 80035cc:	f8c7 30b8 	str.w	r3, [r7, #184]	@ 0xb8
 80035d0:	f8c7 20bc 	str.w	r2, [r7, #188]	@ 0xbc
 80035d4:	e9d7 892e 	ldrd	r8, r9, [r7, #184]	@ 0xb8
 80035d8:	4642      	mov	r2, r8
 80035da:	464b      	mov	r3, r9
 80035dc:	1891      	adds	r1, r2, r2
 80035de:	63b9      	str	r1, [r7, #56]	@ 0x38
 80035e0:	415b      	adcs	r3, r3
 80035e2:	63fb      	str	r3, [r7, #60]	@ 0x3c
 80035e4:	e9d7 230e 	ldrd	r2, r3, [r7, #56]	@ 0x38
 80035e8:	4641      	mov	r1, r8
 80035ea:	1851      	adds	r1, r2, r1
 80035ec:	6339      	str	r1, [r7, #48]	@ 0x30
 80035ee:	4649      	mov	r1, r9
 80035f0:	414b      	adcs	r3, r1
 80035f2:	637b      	str	r3, [r7, #52]	@ 0x34
 80035f4:	f04f 0200 	mov.w	r2, #0
 80035f8:	f04f 0300 	mov.w	r3, #0
 80035fc:	e9d7 ab0c 	ldrd	sl, fp, [r7, #48]	@ 0x30
 8003600:	4659      	mov	r1, fp
 8003602:	00cb      	lsls	r3, r1, #3
 8003604:	4651      	mov	r1, sl
 8003606:	ea43 7351 	orr.w	r3, r3, r1, lsr #29
 800360a:	4651      	mov	r1, sl
 800360c:	00ca      	lsls	r2, r1, #3
 800360e:	4610      	mov	r0, r2
 8003610:	4619      	mov	r1, r3
 8003612:	4603      	mov	r3, r0
 8003614:	4642      	mov	r2, r8
 8003616:	189b      	adds	r3, r3, r2
 8003618:	f8c7 30b0 	str.w	r3, [r7, #176]	@ 0xb0
 800361c:	464b      	mov	r3, r9
 800361e:	460a      	mov	r2, r1
 8003620:	eb42 0303 	adc.w	r3, r2, r3
 8003624:	f8c7 30b4 	str.w	r3, [r7, #180]	@ 0xb4
 8003628:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 800362c:	685b      	ldr	r3, [r3, #4]
 800362e:	2200      	movs	r2, #0
 8003630:	f8c7 30a8 	str.w	r3, [r7, #168]	@ 0xa8
 8003634:	f8c7 20ac 	str.w	r2, [r7, #172]	@ 0xac
 8003638:	e9d7 122a 	ldrd	r1, r2, [r7, #168]	@ 0xa8
 800363c:	460b      	mov	r3, r1
 800363e:	18db      	adds	r3, r3, r3
 8003640:	62bb      	str	r3, [r7, #40]	@ 0x28
 8003642:	4613      	mov	r3, r2
 8003644:	eb42 0303 	adc.w	r3, r2, r3
 8003648:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800364a:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	@ 0x28
 800364e:	e9d7 012c 	ldrd	r0, r1, [r7, #176]	@ 0xb0
 8003652:	f7fc fd99 	bl	8000188 <__aeabi_uldivmod>
 8003656:	4602      	mov	r2, r0
 8003658:	460b      	mov	r3, r1
 800365a:	4b0d      	ldr	r3, [pc, #52]	@ (8003690 <UART_SetConfig+0x2d4>)
 800365c:	fba3 1302 	umull	r1, r3, r3, r2
 8003660:	095b      	lsrs	r3, r3, #5
 8003662:	2164      	movs	r1, #100	@ 0x64
 8003664:	fb01 f303 	mul.w	r3, r1, r3
 8003668:	1ad3      	subs	r3, r2, r3
 800366a:	00db      	lsls	r3, r3, #3
 800366c:	3332      	adds	r3, #50	@ 0x32
 800366e:	4a08      	ldr	r2, [pc, #32]	@ (8003690 <UART_SetConfig+0x2d4>)
 8003670:	fba2 2303 	umull	r2, r3, r2, r3
 8003674:	095b      	lsrs	r3, r3, #5
 8003676:	f003 0207 	and.w	r2, r3, #7
 800367a:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 800367e:	681b      	ldr	r3, [r3, #0]
 8003680:	4422      	add	r2, r4
 8003682:	609a      	str	r2, [r3, #8]
 8003684:	e106      	b.n	8003894 <UART_SetConfig+0x4d8>
 8003686:	bf00      	nop
 8003688:	40011000 	.word	0x40011000
 800368c:	40011400 	.word	0x40011400
 8003690:	51eb851f 	.word	0x51eb851f
 8003694:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 8003698:	2200      	movs	r2, #0
 800369a:	f8c7 30a0 	str.w	r3, [r7, #160]	@ 0xa0
 800369e:	f8c7 20a4 	str.w	r2, [r7, #164]	@ 0xa4
 80036a2:	e9d7 8928 	ldrd	r8, r9, [r7, #160]	@ 0xa0
 80036a6:	4642      	mov	r2, r8
 80036a8:	464b      	mov	r3, r9
 80036aa:	1891      	adds	r1, r2, r2
 80036ac:	6239      	str	r1, [r7, #32]
 80036ae:	415b      	adcs	r3, r3
 80036b0:	627b      	str	r3, [r7, #36]	@ 0x24
 80036b2:	e9d7 2308 	ldrd	r2, r3, [r7, #32]
 80036b6:	4641      	mov	r1, r8
 80036b8:	1854      	adds	r4, r2, r1
 80036ba:	4649      	mov	r1, r9
 80036bc:	eb43 0501 	adc.w	r5, r3, r1
 80036c0:	f04f 0200 	mov.w	r2, #0
 80036c4:	f04f 0300 	mov.w	r3, #0
 80036c8:	00eb      	lsls	r3, r5, #3
 80036ca:	ea43 7354 	orr.w	r3, r3, r4, lsr #29
 80036ce:	00e2      	lsls	r2, r4, #3
 80036d0:	4614      	mov	r4, r2
 80036d2:	461d      	mov	r5, r3
 80036d4:	4643      	mov	r3, r8
 80036d6:	18e3      	adds	r3, r4, r3
 80036d8:	f8c7 3098 	str.w	r3, [r7, #152]	@ 0x98
 80036dc:	464b      	mov	r3, r9
 80036de:	eb45 0303 	adc.w	r3, r5, r3
 80036e2:	f8c7 309c 	str.w	r3, [r7, #156]	@ 0x9c
 80036e6:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 80036ea:	685b      	ldr	r3, [r3, #4]
 80036ec:	2200      	movs	r2, #0
 80036ee:	f8c7 3090 	str.w	r3, [r7, #144]	@ 0x90
 80036f2:	f8c7 2094 	str.w	r2, [r7, #148]	@ 0x94
 80036f6:	f04f 0200 	mov.w	r2, #0
 80036fa:	f04f 0300 	mov.w	r3, #0
 80036fe:	e9d7 4524 	ldrd	r4, r5, [r7, #144]	@ 0x90
 8003702:	4629      	mov	r1, r5
 8003704:	008b      	lsls	r3, r1, #2
 8003706:	4621      	mov	r1, r4
 8003708:	ea43 7391 	orr.w	r3, r3, r1, lsr #30
 800370c:	4621      	mov	r1, r4
 800370e:	008a      	lsls	r2, r1, #2
 8003710:	e9d7 0126 	ldrd	r0, r1, [r7, #152]	@ 0x98
 8003714:	f7fc fd38 	bl	8000188 <__aeabi_uldivmod>
 8003718:	4602      	mov	r2, r0
 800371a:	460b      	mov	r3, r1
 800371c:	4b60      	ldr	r3, [pc, #384]	@ (80038a0 <UART_SetConfig+0x4e4>)
 800371e:	fba3 2302 	umull	r2, r3, r3, r2
 8003722:	095b      	lsrs	r3, r3, #5
 8003724:	011c      	lsls	r4, r3, #4
 8003726:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 800372a:	2200      	movs	r2, #0
 800372c:	f8c7 3088 	str.w	r3, [r7, #136]	@ 0x88
 8003730:	f8c7 208c 	str.w	r2, [r7, #140]	@ 0x8c
 8003734:	e9d7 8922 	ldrd	r8, r9, [r7, #136]	@ 0x88
 8003738:	4642      	mov	r2, r8
 800373a:	464b      	mov	r3, r9
 800373c:	1891      	adds	r1, r2, r2
 800373e:	61b9      	str	r1, [r7, #24]
 8003740:	415b      	adcs	r3, r3
 8003742:	61fb      	str	r3, [r7, #28]
 8003744:	e9d7 2306 	ldrd	r2, r3, [r7, #24]
 8003748:	4641      	mov	r1, r8
 800374a:	1851      	adds	r1, r2, r1
 800374c:	6139      	str	r1, [r7, #16]
 800374e:	4649      	mov	r1, r9
 8003750:	414b      	adcs	r3, r1
 8003752:	617b      	str	r3, [r7, #20]
 8003754:	f04f 0200 	mov.w	r2, #0
 8003758:	f04f 0300 	mov.w	r3, #0
 800375c:	e9d7 ab04 	ldrd	sl, fp, [r7, #16]
 8003760:	4659      	mov	r1, fp
 8003762:	00cb      	lsls	r3, r1, #3
 8003764:	4651      	mov	r1, sl
 8003766:	ea43 7351 	orr.w	r3, r3, r1, lsr #29
 800376a:	4651      	mov	r1, sl
 800376c:	00ca      	lsls	r2, r1, #3
 800376e:	4610      	mov	r0, r2
 8003770:	4619      	mov	r1, r3
 8003772:	4603      	mov	r3, r0
 8003774:	4642      	mov	r2, r8
 8003776:	189b      	adds	r3, r3, r2
 8003778:	f8c7 3080 	str.w	r3, [r7, #128]	@ 0x80
 800377c:	464b      	mov	r3, r9
 800377e:	460a      	mov	r2, r1
 8003780:	eb42 0303 	adc.w	r3, r2, r3
 8003784:	f8c7 3084 	str.w	r3, [r7, #132]	@ 0x84
 8003788:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 800378c:	685b      	ldr	r3, [r3, #4]
 800378e:	2200      	movs	r2, #0
 8003790:	67bb      	str	r3, [r7, #120]	@ 0x78
 8003792:	67fa      	str	r2, [r7, #124]	@ 0x7c
 8003794:	f04f 0200 	mov.w	r2, #0
 8003798:	f04f 0300 	mov.w	r3, #0
 800379c:	e9d7 891e 	ldrd	r8, r9, [r7, #120]	@ 0x78
 80037a0:	4649      	mov	r1, r9
 80037a2:	008b      	lsls	r3, r1, #2
 80037a4:	4641      	mov	r1, r8
 80037a6:	ea43 7391 	orr.w	r3, r3, r1, lsr #30
 80037aa:	4641      	mov	r1, r8
 80037ac:	008a      	lsls	r2, r1, #2
 80037ae:	e9d7 0120 	ldrd	r0, r1, [r7, #128]	@ 0x80
 80037b2:	f7fc fce9 	bl	8000188 <__aeabi_uldivmod>
 80037b6:	4602      	mov	r2, r0
 80037b8:	460b      	mov	r3, r1
 80037ba:	4611      	mov	r1, r2
 80037bc:	4b38      	ldr	r3, [pc, #224]	@ (80038a0 <UART_SetConfig+0x4e4>)
 80037be:	fba3 2301 	umull	r2, r3, r3, r1
 80037c2:	095b      	lsrs	r3, r3, #5
 80037c4:	2264      	movs	r2, #100	@ 0x64
 80037c6:	fb02 f303 	mul.w	r3, r2, r3
 80037ca:	1acb      	subs	r3, r1, r3
 80037cc:	011b      	lsls	r3, r3, #4
 80037ce:	3332      	adds	r3, #50	@ 0x32
 80037d0:	4a33      	ldr	r2, [pc, #204]	@ (80038a0 <UART_SetConfig+0x4e4>)
 80037d2:	fba2 2303 	umull	r2, r3, r2, r3
 80037d6:	095b      	lsrs	r3, r3, #5
 80037d8:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 80037dc:	441c      	add	r4, r3
 80037de:	f8d7 30fc 	ldr.w	r3, [r7, #252]	@ 0xfc
 80037e2:	2200      	movs	r2, #0
 80037e4:	673b      	str	r3, [r7, #112]	@ 0x70
 80037e6:	677a      	str	r2, [r7, #116]	@ 0x74
 80037e8:	e9d7 891c 	ldrd	r8, r9, [r7, #112]	@ 0x70
 80037ec:	4642      	mov	r2, r8
 80037ee:	464b      	mov	r3, r9
 80037f0:	1891      	adds	r1, r2, r2
 80037f2:	60b9      	str	r1, [r7, #8]
 80037f4:	415b      	adcs	r3, r3
 80037f6:	60fb      	str	r3, [r7, #12]
 80037f8:	e9d7 2302 	ldrd	r2, r3, [r7, #8]
 80037fc:	4641      	mov	r1, r8
 80037fe:	1851      	adds	r1, r2, r1
 8003800:	6039      	str	r1, [r7, #0]
 8003802:	4649      	mov	r1, r9
 8003804:	414b      	adcs	r3, r1
 8003806:	607b      	str	r3, [r7, #4]
 8003808:	f04f 0200 	mov.w	r2, #0
 800380c:	f04f 0300 	mov.w	r3, #0
 8003810:	e9d7 ab00 	ldrd	sl, fp, [r7]
 8003814:	4659      	mov	r1, fp
 8003816:	00cb      	lsls	r3, r1, #3
 8003818:	4651      	mov	r1, sl
 800381a:	ea43 7351 	orr.w	r3, r3, r1, lsr #29
 800381e:	4651      	mov	r1, sl
 8003820:	00ca      	lsls	r2, r1, #3
 8003822:	4610      	mov	r0, r2
 8003824:	4619      	mov	r1, r3
 8003826:	4603      	mov	r3, r0
 8003828:	4642      	mov	r2, r8
 800382a:	189b      	adds	r3, r3, r2
 800382c:	66bb      	str	r3, [r7, #104]	@ 0x68
 800382e:	464b      	mov	r3, r9
 8003830:	460a      	mov	r2, r1
 8003832:	eb42 0303 	adc.w	r3, r2, r3
 8003836:	66fb      	str	r3, [r7, #108]	@ 0x6c
 8003838:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 800383c:	685b      	ldr	r3, [r3, #4]
 800383e:	2200      	movs	r2, #0
 8003840:	663b      	str	r3, [r7, #96]	@ 0x60
 8003842:	667a      	str	r2, [r7, #100]	@ 0x64
 8003844:	f04f 0200 	mov.w	r2, #0
 8003848:	f04f 0300 	mov.w	r3, #0
 800384c:	e9d7 8918 	ldrd	r8, r9, [r7, #96]	@ 0x60
 8003850:	4649      	mov	r1, r9
 8003852:	008b      	lsls	r3, r1, #2
 8003854:	4641      	mov	r1, r8
 8003856:	ea43 7391 	orr.w	r3, r3, r1, lsr #30
 800385a:	4641      	mov	r1, r8
 800385c:	008a      	lsls	r2, r1, #2
 800385e:	e9d7 011a 	ldrd	r0, r1, [r7, #104]	@ 0x68
 8003862:	f7fc fc91 	bl	8000188 <__aeabi_uldivmod>
 8003866:	4602      	mov	r2, r0
 8003868:	460b      	mov	r3, r1
 800386a:	4b0d      	ldr	r3, [pc, #52]	@ (80038a0 <UART_SetConfig+0x4e4>)
 800386c:	fba3 1302 	umull	r1, r3, r3, r2
 8003870:	095b      	lsrs	r3, r3, #5
 8003872:	2164      	movs	r1, #100	@ 0x64
 8003874:	fb01 f303 	mul.w	r3, r1, r3
 8003878:	1ad3      	subs	r3, r2, r3
 800387a:	011b      	lsls	r3, r3, #4
 800387c:	3332      	adds	r3, #50	@ 0x32
 800387e:	4a08      	ldr	r2, [pc, #32]	@ (80038a0 <UART_SetConfig+0x4e4>)
 8003880:	fba2 2303 	umull	r2, r3, r2, r3
 8003884:	095b      	lsrs	r3, r3, #5
 8003886:	f003 020f 	and.w	r2, r3, #15
 800388a:	f8d7 30f4 	ldr.w	r3, [r7, #244]	@ 0xf4
 800388e:	681b      	ldr	r3, [r3, #0]
 8003890:	4422      	add	r2, r4
 8003892:	609a      	str	r2, [r3, #8]
 8003894:	bf00      	nop
 8003896:	f507 7780 	add.w	r7, r7, #256	@ 0x100
 800389a:	46bd      	mov	sp, r7
 800389c:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
 80038a0:	51eb851f 	.word	0x51eb851f

080038a4 <Reset_Handler>:
 80038a4:	f8df d034 	ldr.w	sp, [pc, #52]	@ 80038dc <LoopFillZerobss+0xe>
 80038a8:	f7fd fa72 	bl	8000d90 <SystemInit>
 80038ac:	480c      	ldr	r0, [pc, #48]	@ (80038e0 <LoopFillZerobss+0x12>)
 80038ae:	490d      	ldr	r1, [pc, #52]	@ (80038e4 <LoopFillZerobss+0x16>)
 80038b0:	4a0d      	ldr	r2, [pc, #52]	@ (80038e8 <LoopFillZerobss+0x1a>)
 80038b2:	2300      	movs	r3, #0
 80038b4:	e002      	b.n	80038bc <LoopCopyDataInit>

080038b6 <CopyDataInit>:
 80038b6:	58d4      	ldr	r4, [r2, r3]
 80038b8:	50c4      	str	r4, [r0, r3]
 80038ba:	3304      	adds	r3, #4

080038bc <LoopCopyDataInit>:
 80038bc:	18c4      	adds	r4, r0, r3
 80038be:	428c      	cmp	r4, r1
 80038c0:	d3f9      	bcc.n	80038b6 <CopyDataInit>
 80038c2:	4a0a      	ldr	r2, [pc, #40]	@ (80038ec <LoopFillZerobss+0x1e>)
 80038c4:	4c0a      	ldr	r4, [pc, #40]	@ (80038f0 <LoopFillZerobss+0x22>)
 80038c6:	2300      	movs	r3, #0
 80038c8:	e001      	b.n	80038ce <LoopFillZerobss>

080038ca <FillZerobss>:
 80038ca:	6013      	str	r3, [r2, #0]
 80038cc:	3204      	adds	r2, #4

080038ce <LoopFillZerobss>:
 80038ce:	42a2      	cmp	r2, r4
 80038d0:	d3fb      	bcc.n	80038ca <FillZerobss>
 80038d2:	f7fc fcb9 	bl	8000248 <__libc_init_array>
 80038d6:	f7fd f889 	bl	80009ec <main>
 80038da:	4770      	bx	lr
 80038dc:	20020000 	.word	0x20020000
 80038e0:	20000000 	.word	0x20000000
 80038e4:	20000068 	.word	0x20000068
 80038e8:	08003f04 	.word	0x08003f04
 80038ec:	20000068 	.word	0x20000068
 80038f0:	200003bc 	.word	0x200003bc

080038f4 <ADC_IRQHandler>:
 80038f4:	e7fe      	b.n	80038f4 <ADC_IRQHandler>
	...

080038f8 <__udivmoddi4>:
 80038f8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80038fc:	9d08      	ldr	r5, [sp, #32]
 80038fe:	460c      	mov	r4, r1
 8003900:	2b00      	cmp	r3, #0
 8003902:	d14e      	bne.n	80039a2 <__udivmoddi4+0xaa>
 8003904:	4694      	mov	ip, r2
 8003906:	458c      	cmp	ip, r1
 8003908:	4686      	mov	lr, r0
 800390a:	fab2 f282 	clz	r2, r2
 800390e:	d962      	bls.n	80039d6 <__udivmoddi4+0xde>
 8003910:	b14a      	cbz	r2, 8003926 <__udivmoddi4+0x2e>
 8003912:	f1c2 0320 	rsb	r3, r2, #32
 8003916:	4091      	lsls	r1, r2
 8003918:	fa20 f303 	lsr.w	r3, r0, r3
 800391c:	fa0c fc02 	lsl.w	ip, ip, r2
 8003920:	4319      	orrs	r1, r3
 8003922:	fa00 fe02 	lsl.w	lr, r0, r2
 8003926:	ea4f 471c 	mov.w	r7, ip, lsr #16
 800392a:	fa1f f68c 	uxth.w	r6, ip
 800392e:	fbb1 f4f7 	udiv	r4, r1, r7
 8003932:	ea4f 431e 	mov.w	r3, lr, lsr #16
 8003936:	fb07 1114 	mls	r1, r7, r4, r1
 800393a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800393e:	fb04 f106 	mul.w	r1, r4, r6
 8003942:	4299      	cmp	r1, r3
 8003944:	d90a      	bls.n	800395c <__udivmoddi4+0x64>
 8003946:	eb1c 0303 	adds.w	r3, ip, r3
 800394a:	f104 30ff 	add.w	r0, r4, #4294967295	@ 0xffffffff
 800394e:	f080 8112 	bcs.w	8003b76 <__udivmoddi4+0x27e>
 8003952:	4299      	cmp	r1, r3
 8003954:	f240 810f 	bls.w	8003b76 <__udivmoddi4+0x27e>
 8003958:	3c02      	subs	r4, #2
 800395a:	4463      	add	r3, ip
 800395c:	1a59      	subs	r1, r3, r1
 800395e:	fa1f f38e 	uxth.w	r3, lr
 8003962:	fbb1 f0f7 	udiv	r0, r1, r7
 8003966:	fb07 1110 	mls	r1, r7, r0, r1
 800396a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800396e:	fb00 f606 	mul.w	r6, r0, r6
 8003972:	429e      	cmp	r6, r3
 8003974:	d90a      	bls.n	800398c <__udivmoddi4+0x94>
 8003976:	eb1c 0303 	adds.w	r3, ip, r3
 800397a:	f100 31ff 	add.w	r1, r0, #4294967295	@ 0xffffffff
 800397e:	f080 80fc 	bcs.w	8003b7a <__udivmoddi4+0x282>
 8003982:	429e      	cmp	r6, r3
 8003984:	f240 80f9 	bls.w	8003b7a <__udivmoddi4+0x282>
 8003988:	4463      	add	r3, ip
 800398a:	3802      	subs	r0, #2
 800398c:	1b9b      	subs	r3, r3, r6
 800398e:	ea40 4004 	orr.w	r0, r0, r4, lsl #16
 8003992:	2100      	movs	r1, #0
 8003994:	b11d      	cbz	r5, 800399e <__udivmoddi4+0xa6>
 8003996:	40d3      	lsrs	r3, r2
 8003998:	2200      	movs	r2, #0
 800399a:	e9c5 3200 	strd	r3, r2, [r5]
 800399e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80039a2:	428b      	cmp	r3, r1
 80039a4:	d905      	bls.n	80039b2 <__udivmoddi4+0xba>
 80039a6:	b10d      	cbz	r5, 80039ac <__udivmoddi4+0xb4>
 80039a8:	e9c5 0100 	strd	r0, r1, [r5]
 80039ac:	2100      	movs	r1, #0
 80039ae:	4608      	mov	r0, r1
 80039b0:	e7f5      	b.n	800399e <__udivmoddi4+0xa6>
 80039b2:	fab3 f183 	clz	r1, r3
 80039b6:	2900      	cmp	r1, #0
 80039b8:	d146      	bne.n	8003a48 <__udivmoddi4+0x150>
 80039ba:	42a3      	cmp	r3, r4
 80039bc:	d302      	bcc.n	80039c4 <__udivmoddi4+0xcc>
 80039be:	4290      	cmp	r0, r2
 80039c0:	f0c0 80f0 	bcc.w	8003ba4 <__udivmoddi4+0x2ac>
 80039c4:	1a86      	subs	r6, r0, r2
 80039c6:	eb64 0303 	sbc.w	r3, r4, r3
 80039ca:	2001      	movs	r0, #1
 80039cc:	2d00      	cmp	r5, #0
 80039ce:	d0e6      	beq.n	800399e <__udivmoddi4+0xa6>
 80039d0:	e9c5 6300 	strd	r6, r3, [r5]
 80039d4:	e7e3      	b.n	800399e <__udivmoddi4+0xa6>
 80039d6:	2a00      	cmp	r2, #0
 80039d8:	f040 8090 	bne.w	8003afc <__udivmoddi4+0x204>
 80039dc:	eba1 040c 	sub.w	r4, r1, ip
 80039e0:	ea4f 481c 	mov.w	r8, ip, lsr #16
 80039e4:	fa1f f78c 	uxth.w	r7, ip
 80039e8:	2101      	movs	r1, #1
 80039ea:	fbb4 f6f8 	udiv	r6, r4, r8
 80039ee:	ea4f 431e 	mov.w	r3, lr, lsr #16
 80039f2:	fb08 4416 	mls	r4, r8, r6, r4
 80039f6:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
 80039fa:	fb07 f006 	mul.w	r0, r7, r6
 80039fe:	4298      	cmp	r0, r3
 8003a00:	d908      	bls.n	8003a14 <__udivmoddi4+0x11c>
 8003a02:	eb1c 0303 	adds.w	r3, ip, r3
 8003a06:	f106 34ff 	add.w	r4, r6, #4294967295	@ 0xffffffff
 8003a0a:	d202      	bcs.n	8003a12 <__udivmoddi4+0x11a>
 8003a0c:	4298      	cmp	r0, r3
 8003a0e:	f200 80cd 	bhi.w	8003bac <__udivmoddi4+0x2b4>
 8003a12:	4626      	mov	r6, r4
 8003a14:	1a1c      	subs	r4, r3, r0
 8003a16:	fa1f f38e 	uxth.w	r3, lr
 8003a1a:	fbb4 f0f8 	udiv	r0, r4, r8
 8003a1e:	fb08 4410 	mls	r4, r8, r0, r4
 8003a22:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
 8003a26:	fb00 f707 	mul.w	r7, r0, r7
 8003a2a:	429f      	cmp	r7, r3
 8003a2c:	d908      	bls.n	8003a40 <__udivmoddi4+0x148>
 8003a2e:	eb1c 0303 	adds.w	r3, ip, r3
 8003a32:	f100 34ff 	add.w	r4, r0, #4294967295	@ 0xffffffff
 8003a36:	d202      	bcs.n	8003a3e <__udivmoddi4+0x146>
 8003a38:	429f      	cmp	r7, r3
 8003a3a:	f200 80b0 	bhi.w	8003b9e <__udivmoddi4+0x2a6>
 8003a3e:	4620      	mov	r0, r4
 8003a40:	1bdb      	subs	r3, r3, r7
 8003a42:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
 8003a46:	e7a5      	b.n	8003994 <__udivmoddi4+0x9c>
 8003a48:	f1c1 0620 	rsb	r6, r1, #32
 8003a4c:	408b      	lsls	r3, r1
 8003a4e:	fa22 f706 	lsr.w	r7, r2, r6
 8003a52:	431f      	orrs	r7, r3
 8003a54:	fa20 fc06 	lsr.w	ip, r0, r6
 8003a58:	fa04 f301 	lsl.w	r3, r4, r1
 8003a5c:	ea43 030c 	orr.w	r3, r3, ip
 8003a60:	40f4      	lsrs	r4, r6
 8003a62:	fa00 f801 	lsl.w	r8, r0, r1
 8003a66:	0c38      	lsrs	r0, r7, #16
 8003a68:	ea4f 4913 	mov.w	r9, r3, lsr #16
 8003a6c:	fbb4 fef0 	udiv	lr, r4, r0
 8003a70:	fa1f fc87 	uxth.w	ip, r7
 8003a74:	fb00 441e 	mls	r4, r0, lr, r4
 8003a78:	ea49 4404 	orr.w	r4, r9, r4, lsl #16
 8003a7c:	fb0e f90c 	mul.w	r9, lr, ip
 8003a80:	45a1      	cmp	r9, r4
 8003a82:	fa02 f201 	lsl.w	r2, r2, r1
 8003a86:	d90a      	bls.n	8003a9e <__udivmoddi4+0x1a6>
 8003a88:	193c      	adds	r4, r7, r4
 8003a8a:	f10e 3aff 	add.w	sl, lr, #4294967295	@ 0xffffffff
 8003a8e:	f080 8084 	bcs.w	8003b9a <__udivmoddi4+0x2a2>
 8003a92:	45a1      	cmp	r9, r4
 8003a94:	f240 8081 	bls.w	8003b9a <__udivmoddi4+0x2a2>
 8003a98:	f1ae 0e02 	sub.w	lr, lr, #2
 8003a9c:	443c      	add	r4, r7
 8003a9e:	eba4 0409 	sub.w	r4, r4, r9
 8003aa2:	fa1f f983 	uxth.w	r9, r3
 8003aa6:	fbb4 f3f0 	udiv	r3, r4, r0
 8003aaa:	fb00 4413 	mls	r4, r0, r3, r4
 8003aae:	ea49 4404 	orr.w	r4, r9, r4, lsl #16
 8003ab2:	fb03 fc0c 	mul.w	ip, r3, ip
 8003ab6:	45a4      	cmp	ip, r4
 8003ab8:	d907      	bls.n	8003aca <__udivmoddi4+0x1d2>
 8003aba:	193c      	adds	r4, r7, r4
 8003abc:	f103 30ff 	add.w	r0, r3, #4294967295	@ 0xffffffff
 8003ac0:	d267      	bcs.n	8003b92 <__udivmoddi4+0x29a>
 8003ac2:	45a4      	cmp	ip, r4
 8003ac4:	d965      	bls.n	8003b92 <__udivmoddi4+0x29a>
 8003ac6:	3b02      	subs	r3, #2
 8003ac8:	443c      	add	r4, r7
 8003aca:	ea43 400e 	orr.w	r0, r3, lr, lsl #16
 8003ace:	fba0 9302 	umull	r9, r3, r0, r2
 8003ad2:	eba4 040c 	sub.w	r4, r4, ip
 8003ad6:	429c      	cmp	r4, r3
 8003ad8:	46ce      	mov	lr, r9
 8003ada:	469c      	mov	ip, r3
 8003adc:	d351      	bcc.n	8003b82 <__udivmoddi4+0x28a>
 8003ade:	d04e      	beq.n	8003b7e <__udivmoddi4+0x286>
 8003ae0:	b155      	cbz	r5, 8003af8 <__udivmoddi4+0x200>
 8003ae2:	ebb8 030e 	subs.w	r3, r8, lr
 8003ae6:	eb64 040c 	sbc.w	r4, r4, ip
 8003aea:	fa04 f606 	lsl.w	r6, r4, r6
 8003aee:	40cb      	lsrs	r3, r1
 8003af0:	431e      	orrs	r6, r3
 8003af2:	40cc      	lsrs	r4, r1
 8003af4:	e9c5 6400 	strd	r6, r4, [r5]
 8003af8:	2100      	movs	r1, #0
 8003afa:	e750      	b.n	800399e <__udivmoddi4+0xa6>
 8003afc:	f1c2 0320 	rsb	r3, r2, #32
 8003b00:	fa20 f103 	lsr.w	r1, r0, r3
 8003b04:	fa0c fc02 	lsl.w	ip, ip, r2
 8003b08:	fa24 f303 	lsr.w	r3, r4, r3
 8003b0c:	4094      	lsls	r4, r2
 8003b0e:	430c      	orrs	r4, r1
 8003b10:	ea4f 481c 	mov.w	r8, ip, lsr #16
 8003b14:	fa00 fe02 	lsl.w	lr, r0, r2
 8003b18:	fa1f f78c 	uxth.w	r7, ip
 8003b1c:	fbb3 f0f8 	udiv	r0, r3, r8
 8003b20:	fb08 3110 	mls	r1, r8, r0, r3
 8003b24:	0c23      	lsrs	r3, r4, #16
 8003b26:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8003b2a:	fb00 f107 	mul.w	r1, r0, r7
 8003b2e:	4299      	cmp	r1, r3
 8003b30:	d908      	bls.n	8003b44 <__udivmoddi4+0x24c>
 8003b32:	eb1c 0303 	adds.w	r3, ip, r3
 8003b36:	f100 36ff 	add.w	r6, r0, #4294967295	@ 0xffffffff
 8003b3a:	d22c      	bcs.n	8003b96 <__udivmoddi4+0x29e>
 8003b3c:	4299      	cmp	r1, r3
 8003b3e:	d92a      	bls.n	8003b96 <__udivmoddi4+0x29e>
 8003b40:	3802      	subs	r0, #2
 8003b42:	4463      	add	r3, ip
 8003b44:	1a5b      	subs	r3, r3, r1
 8003b46:	b2a4      	uxth	r4, r4
 8003b48:	fbb3 f1f8 	udiv	r1, r3, r8
 8003b4c:	fb08 3311 	mls	r3, r8, r1, r3
 8003b50:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8003b54:	fb01 f307 	mul.w	r3, r1, r7
 8003b58:	42a3      	cmp	r3, r4
 8003b5a:	d908      	bls.n	8003b6e <__udivmoddi4+0x276>
 8003b5c:	eb1c 0404 	adds.w	r4, ip, r4
 8003b60:	f101 36ff 	add.w	r6, r1, #4294967295	@ 0xffffffff
 8003b64:	d213      	bcs.n	8003b8e <__udivmoddi4+0x296>
 8003b66:	42a3      	cmp	r3, r4
 8003b68:	d911      	bls.n	8003b8e <__udivmoddi4+0x296>
 8003b6a:	3902      	subs	r1, #2
 8003b6c:	4464      	add	r4, ip
 8003b6e:	1ae4      	subs	r4, r4, r3
 8003b70:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
 8003b74:	e739      	b.n	80039ea <__udivmoddi4+0xf2>
 8003b76:	4604      	mov	r4, r0
 8003b78:	e6f0      	b.n	800395c <__udivmoddi4+0x64>
 8003b7a:	4608      	mov	r0, r1
 8003b7c:	e706      	b.n	800398c <__udivmoddi4+0x94>
 8003b7e:	45c8      	cmp	r8, r9
 8003b80:	d2ae      	bcs.n	8003ae0 <__udivmoddi4+0x1e8>
 8003b82:	ebb9 0e02 	subs.w	lr, r9, r2
 8003b86:	eb63 0c07 	sbc.w	ip, r3, r7
 8003b8a:	3801      	subs	r0, #1
 8003b8c:	e7a8      	b.n	8003ae0 <__udivmoddi4+0x1e8>
 8003b8e:	4631      	mov	r1, r6
 8003b90:	e7ed      	b.n	8003b6e <__udivmoddi4+0x276>
 8003b92:	4603      	mov	r3, r0
 8003b94:	e799      	b.n	8003aca <__udivmoddi4+0x1d2>
 8003b96:	4630      	mov	r0, r6
 8003b98:	e7d4      	b.n	8003b44 <__udivmoddi4+0x24c>
 8003b9a:	46d6      	mov	lr, sl
 8003b9c:	e77f      	b.n	8003a9e <__udivmoddi4+0x1a6>
 8003b9e:	4463      	add	r3, ip
 8003ba0:	3802      	subs	r0, #2
 8003ba2:	e74d      	b.n	8003a40 <__udivmoddi4+0x148>
 8003ba4:	4606      	mov	r6, r0
 8003ba6:	4623      	mov	r3, r4
 8003ba8:	4608      	mov	r0, r1
 8003baa:	e70f      	b.n	80039cc <__udivmoddi4+0xd4>
 8003bac:	3e02      	subs	r6, #2
 8003bae:	4463      	add	r3, ip
 8003bb0:	e730      	b.n	8003a14 <__udivmoddi4+0x11c>
 8003bb2:	bf00      	nop

08003bb4 <_puts_r>:
 8003bb4:	6a03      	ldr	r3, [r0, #32]
 8003bb6:	b570      	push	{r4, r5, r6, lr}
 8003bb8:	6884      	ldr	r4, [r0, #8]
 8003bba:	4605      	mov	r5, r0
 8003bbc:	460e      	mov	r6, r1
 8003bbe:	b90b      	cbnz	r3, 8003bc4 <_puts_r+0x10>
 8003bc0:	f7fc fbf2 	bl	80003a8 <__sinit>
 8003bc4:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 8003bc6:	07db      	lsls	r3, r3, #31
 8003bc8:	d405      	bmi.n	8003bd6 <_puts_r+0x22>
 8003bca:	89a3      	ldrh	r3, [r4, #12]
 8003bcc:	0598      	lsls	r0, r3, #22
 8003bce:	d402      	bmi.n	8003bd6 <_puts_r+0x22>
 8003bd0:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8003bd2:	f7fc fc7e 	bl	80004d2 <__retarget_lock_acquire_recursive>
 8003bd6:	89a3      	ldrh	r3, [r4, #12]
 8003bd8:	0719      	lsls	r1, r3, #28
 8003bda:	d502      	bpl.n	8003be2 <_puts_r+0x2e>
 8003bdc:	6923      	ldr	r3, [r4, #16]
 8003bde:	2b00      	cmp	r3, #0
 8003be0:	d135      	bne.n	8003c4e <_puts_r+0x9a>
 8003be2:	4621      	mov	r1, r4
 8003be4:	4628      	mov	r0, r5
 8003be6:	f000 f887 	bl	8003cf8 <__swsetup_r>
 8003bea:	b380      	cbz	r0, 8003c4e <_puts_r+0x9a>
 8003bec:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
 8003bf0:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 8003bf2:	07da      	lsls	r2, r3, #31
 8003bf4:	d405      	bmi.n	8003c02 <_puts_r+0x4e>
 8003bf6:	89a3      	ldrh	r3, [r4, #12]
 8003bf8:	059b      	lsls	r3, r3, #22
 8003bfa:	d402      	bmi.n	8003c02 <_puts_r+0x4e>
 8003bfc:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8003bfe:	f7fc fc69 	bl	80004d4 <__retarget_lock_release_recursive>
 8003c02:	4628      	mov	r0, r5
 8003c04:	bd70      	pop	{r4, r5, r6, pc}
 8003c06:	2b00      	cmp	r3, #0
 8003c08:	db15      	blt.n	8003c36 <_puts_r+0x82>
 8003c0a:	6823      	ldr	r3, [r4, #0]
 8003c0c:	1c5a      	adds	r2, r3, #1
 8003c0e:	6022      	str	r2, [r4, #0]
 8003c10:	7019      	strb	r1, [r3, #0]
 8003c12:	68a3      	ldr	r3, [r4, #8]
 8003c14:	f816 1f01 	ldrb.w	r1, [r6, #1]!
 8003c18:	3b01      	subs	r3, #1
 8003c1a:	60a3      	str	r3, [r4, #8]
 8003c1c:	2900      	cmp	r1, #0
 8003c1e:	d1f2      	bne.n	8003c06 <_puts_r+0x52>
 8003c20:	2b00      	cmp	r3, #0
 8003c22:	da16      	bge.n	8003c52 <_puts_r+0x9e>
 8003c24:	4622      	mov	r2, r4
 8003c26:	210a      	movs	r1, #10
 8003c28:	4628      	mov	r0, r5
 8003c2a:	f000 f827 	bl	8003c7c <__swbuf_r>
 8003c2e:	3001      	adds	r0, #1
 8003c30:	d0dc      	beq.n	8003bec <_puts_r+0x38>
 8003c32:	250a      	movs	r5, #10
 8003c34:	e7dc      	b.n	8003bf0 <_puts_r+0x3c>
 8003c36:	69a2      	ldr	r2, [r4, #24]
 8003c38:	429a      	cmp	r2, r3
 8003c3a:	dc01      	bgt.n	8003c40 <_puts_r+0x8c>
 8003c3c:	290a      	cmp	r1, #10
 8003c3e:	d1e4      	bne.n	8003c0a <_puts_r+0x56>
 8003c40:	4622      	mov	r2, r4
 8003c42:	4628      	mov	r0, r5
 8003c44:	f000 f81a 	bl	8003c7c <__swbuf_r>
 8003c48:	3001      	adds	r0, #1
 8003c4a:	d1e2      	bne.n	8003c12 <_puts_r+0x5e>
 8003c4c:	e7ce      	b.n	8003bec <_puts_r+0x38>
 8003c4e:	3e01      	subs	r6, #1
 8003c50:	e7df      	b.n	8003c12 <_puts_r+0x5e>
 8003c52:	6823      	ldr	r3, [r4, #0]
 8003c54:	1c5a      	adds	r2, r3, #1
 8003c56:	6022      	str	r2, [r4, #0]
 8003c58:	220a      	movs	r2, #10
 8003c5a:	701a      	strb	r2, [r3, #0]
 8003c5c:	e7e9      	b.n	8003c32 <_puts_r+0x7e>
	...

08003c60 <puts>:
 8003c60:	4b02      	ldr	r3, [pc, #8]	@ (8003c6c <puts+0xc>)
 8003c62:	4601      	mov	r1, r0
 8003c64:	6818      	ldr	r0, [r3, #0]
 8003c66:	f7ff bfa5 	b.w	8003bb4 <_puts_r>
 8003c6a:	bf00      	nop
 8003c6c:	2000000c 	.word	0x2000000c

08003c70 <__errno>:
 8003c70:	4b01      	ldr	r3, [pc, #4]	@ (8003c78 <__errno+0x8>)
 8003c72:	6818      	ldr	r0, [r3, #0]
 8003c74:	4770      	bx	lr
 8003c76:	bf00      	nop
 8003c78:	2000000c 	.word	0x2000000c

08003c7c <__swbuf_r>:
 8003c7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003c7e:	460e      	mov	r6, r1
 8003c80:	4614      	mov	r4, r2
 8003c82:	4605      	mov	r5, r0
 8003c84:	b118      	cbz	r0, 8003c8e <__swbuf_r+0x12>
 8003c86:	6a03      	ldr	r3, [r0, #32]
 8003c88:	b90b      	cbnz	r3, 8003c8e <__swbuf_r+0x12>
 8003c8a:	f7fc fb8d 	bl	80003a8 <__sinit>
 8003c8e:	69a3      	ldr	r3, [r4, #24]
 8003c90:	60a3      	str	r3, [r4, #8]
 8003c92:	89a3      	ldrh	r3, [r4, #12]
 8003c94:	071a      	lsls	r2, r3, #28
 8003c96:	d501      	bpl.n	8003c9c <__swbuf_r+0x20>
 8003c98:	6923      	ldr	r3, [r4, #16]
 8003c9a:	b943      	cbnz	r3, 8003cae <__swbuf_r+0x32>
 8003c9c:	4621      	mov	r1, r4
 8003c9e:	4628      	mov	r0, r5
 8003ca0:	f000 f82a 	bl	8003cf8 <__swsetup_r>
 8003ca4:	b118      	cbz	r0, 8003cae <__swbuf_r+0x32>
 8003ca6:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
 8003caa:	4638      	mov	r0, r7
 8003cac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8003cae:	6823      	ldr	r3, [r4, #0]
 8003cb0:	6922      	ldr	r2, [r4, #16]
 8003cb2:	1a98      	subs	r0, r3, r2
 8003cb4:	6963      	ldr	r3, [r4, #20]
 8003cb6:	b2f6      	uxtb	r6, r6
 8003cb8:	4283      	cmp	r3, r0
 8003cba:	4637      	mov	r7, r6
 8003cbc:	dc05      	bgt.n	8003cca <__swbuf_r+0x4e>
 8003cbe:	4621      	mov	r1, r4
 8003cc0:	4628      	mov	r0, r5
 8003cc2:	f7fc fc9d 	bl	8000600 <_fflush_r>
 8003cc6:	2800      	cmp	r0, #0
 8003cc8:	d1ed      	bne.n	8003ca6 <__swbuf_r+0x2a>
 8003cca:	68a3      	ldr	r3, [r4, #8]
 8003ccc:	3b01      	subs	r3, #1
 8003cce:	60a3      	str	r3, [r4, #8]
 8003cd0:	6823      	ldr	r3, [r4, #0]
 8003cd2:	1c5a      	adds	r2, r3, #1
 8003cd4:	6022      	str	r2, [r4, #0]
 8003cd6:	701e      	strb	r6, [r3, #0]
 8003cd8:	6962      	ldr	r2, [r4, #20]
 8003cda:	1c43      	adds	r3, r0, #1
 8003cdc:	429a      	cmp	r2, r3
 8003cde:	d004      	beq.n	8003cea <__swbuf_r+0x6e>
 8003ce0:	89a3      	ldrh	r3, [r4, #12]
 8003ce2:	07db      	lsls	r3, r3, #31
 8003ce4:	d5e1      	bpl.n	8003caa <__swbuf_r+0x2e>
 8003ce6:	2e0a      	cmp	r6, #10
 8003ce8:	d1df      	bne.n	8003caa <__swbuf_r+0x2e>
 8003cea:	4621      	mov	r1, r4
 8003cec:	4628      	mov	r0, r5
 8003cee:	f7fc fc87 	bl	8000600 <_fflush_r>
 8003cf2:	2800      	cmp	r0, #0
 8003cf4:	d0d9      	beq.n	8003caa <__swbuf_r+0x2e>
 8003cf6:	e7d6      	b.n	8003ca6 <__swbuf_r+0x2a>

08003cf8 <__swsetup_r>:
 8003cf8:	b538      	push	{r3, r4, r5, lr}
 8003cfa:	4b29      	ldr	r3, [pc, #164]	@ (8003da0 <__swsetup_r+0xa8>)
 8003cfc:	4605      	mov	r5, r0
 8003cfe:	6818      	ldr	r0, [r3, #0]
 8003d00:	460c      	mov	r4, r1
 8003d02:	b118      	cbz	r0, 8003d0c <__swsetup_r+0x14>
 8003d04:	6a03      	ldr	r3, [r0, #32]
 8003d06:	b90b      	cbnz	r3, 8003d0c <__swsetup_r+0x14>
 8003d08:	f7fc fb4e 	bl	80003a8 <__sinit>
 8003d0c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003d10:	0719      	lsls	r1, r3, #28
 8003d12:	d422      	bmi.n	8003d5a <__swsetup_r+0x62>
 8003d14:	06da      	lsls	r2, r3, #27
 8003d16:	d407      	bmi.n	8003d28 <__swsetup_r+0x30>
 8003d18:	2209      	movs	r2, #9
 8003d1a:	602a      	str	r2, [r5, #0]
 8003d1c:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8003d20:	81a3      	strh	r3, [r4, #12]
 8003d22:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8003d26:	e033      	b.n	8003d90 <__swsetup_r+0x98>
 8003d28:	0758      	lsls	r0, r3, #29
 8003d2a:	d512      	bpl.n	8003d52 <__swsetup_r+0x5a>
 8003d2c:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 8003d2e:	b141      	cbz	r1, 8003d42 <__swsetup_r+0x4a>
 8003d30:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 8003d34:	4299      	cmp	r1, r3
 8003d36:	d002      	beq.n	8003d3e <__swsetup_r+0x46>
 8003d38:	4628      	mov	r0, r5
 8003d3a:	f7fc fd6b 	bl	8000814 <_free_r>
 8003d3e:	2300      	movs	r3, #0
 8003d40:	6363      	str	r3, [r4, #52]	@ 0x34
 8003d42:	89a3      	ldrh	r3, [r4, #12]
 8003d44:	f023 0324 	bic.w	r3, r3, #36	@ 0x24
 8003d48:	81a3      	strh	r3, [r4, #12]
 8003d4a:	2300      	movs	r3, #0
 8003d4c:	6063      	str	r3, [r4, #4]
 8003d4e:	6923      	ldr	r3, [r4, #16]
 8003d50:	6023      	str	r3, [r4, #0]
 8003d52:	89a3      	ldrh	r3, [r4, #12]
 8003d54:	f043 0308 	orr.w	r3, r3, #8
 8003d58:	81a3      	strh	r3, [r4, #12]
 8003d5a:	6923      	ldr	r3, [r4, #16]
 8003d5c:	b94b      	cbnz	r3, 8003d72 <__swsetup_r+0x7a>
 8003d5e:	89a3      	ldrh	r3, [r4, #12]
 8003d60:	f403 7320 	and.w	r3, r3, #640	@ 0x280
 8003d64:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8003d68:	d003      	beq.n	8003d72 <__swsetup_r+0x7a>
 8003d6a:	4621      	mov	r1, r4
 8003d6c:	4628      	mov	r0, r5
 8003d6e:	f000 f83f 	bl	8003df0 <__smakebuf_r>
 8003d72:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003d76:	f013 0201 	ands.w	r2, r3, #1
 8003d7a:	d00a      	beq.n	8003d92 <__swsetup_r+0x9a>
 8003d7c:	2200      	movs	r2, #0
 8003d7e:	60a2      	str	r2, [r4, #8]
 8003d80:	6962      	ldr	r2, [r4, #20]
 8003d82:	4252      	negs	r2, r2
 8003d84:	61a2      	str	r2, [r4, #24]
 8003d86:	6922      	ldr	r2, [r4, #16]
 8003d88:	b942      	cbnz	r2, 8003d9c <__swsetup_r+0xa4>
 8003d8a:	f013 0080 	ands.w	r0, r3, #128	@ 0x80
 8003d8e:	d1c5      	bne.n	8003d1c <__swsetup_r+0x24>
 8003d90:	bd38      	pop	{r3, r4, r5, pc}
 8003d92:	0799      	lsls	r1, r3, #30
 8003d94:	bf58      	it	pl
 8003d96:	6962      	ldrpl	r2, [r4, #20]
 8003d98:	60a2      	str	r2, [r4, #8]
 8003d9a:	e7f4      	b.n	8003d86 <__swsetup_r+0x8e>
 8003d9c:	2000      	movs	r0, #0
 8003d9e:	e7f7      	b.n	8003d90 <__swsetup_r+0x98>
 8003da0:	2000000c 	.word	0x2000000c

08003da4 <__swhatbuf_r>:
 8003da4:	b570      	push	{r4, r5, r6, lr}
 8003da6:	460c      	mov	r4, r1
 8003da8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8003dac:	2900      	cmp	r1, #0
 8003dae:	b096      	sub	sp, #88	@ 0x58
 8003db0:	4615      	mov	r5, r2
 8003db2:	461e      	mov	r6, r3
 8003db4:	da0d      	bge.n	8003dd2 <__swhatbuf_r+0x2e>
 8003db6:	89a3      	ldrh	r3, [r4, #12]
 8003db8:	f013 0f80 	tst.w	r3, #128	@ 0x80
 8003dbc:	f04f 0100 	mov.w	r1, #0
 8003dc0:	bf14      	ite	ne
 8003dc2:	2340      	movne	r3, #64	@ 0x40
 8003dc4:	f44f 6380 	moveq.w	r3, #1024	@ 0x400
 8003dc8:	2000      	movs	r0, #0
 8003dca:	6031      	str	r1, [r6, #0]
 8003dcc:	602b      	str	r3, [r5, #0]
 8003dce:	b016      	add	sp, #88	@ 0x58
 8003dd0:	bd70      	pop	{r4, r5, r6, pc}
 8003dd2:	466a      	mov	r2, sp
 8003dd4:	f000 f848 	bl	8003e68 <_fstat_r>
 8003dd8:	2800      	cmp	r0, #0
 8003dda:	dbec      	blt.n	8003db6 <__swhatbuf_r+0x12>
 8003ddc:	9901      	ldr	r1, [sp, #4]
 8003dde:	f401 4170 	and.w	r1, r1, #61440	@ 0xf000
 8003de2:	f5a1 5300 	sub.w	r3, r1, #8192	@ 0x2000
 8003de6:	4259      	negs	r1, r3
 8003de8:	4159      	adcs	r1, r3
 8003dea:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8003dee:	e7eb      	b.n	8003dc8 <__swhatbuf_r+0x24>

08003df0 <__smakebuf_r>:
 8003df0:	898b      	ldrh	r3, [r1, #12]
 8003df2:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8003df4:	079d      	lsls	r5, r3, #30
 8003df6:	4606      	mov	r6, r0
 8003df8:	460c      	mov	r4, r1
 8003dfa:	d507      	bpl.n	8003e0c <__smakebuf_r+0x1c>
 8003dfc:	f104 0347 	add.w	r3, r4, #71	@ 0x47
 8003e00:	6023      	str	r3, [r4, #0]
 8003e02:	6123      	str	r3, [r4, #16]
 8003e04:	2301      	movs	r3, #1
 8003e06:	6163      	str	r3, [r4, #20]
 8003e08:	b003      	add	sp, #12
 8003e0a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003e0c:	ab01      	add	r3, sp, #4
 8003e0e:	466a      	mov	r2, sp
 8003e10:	f7ff ffc8 	bl	8003da4 <__swhatbuf_r>
 8003e14:	9f00      	ldr	r7, [sp, #0]
 8003e16:	4605      	mov	r5, r0
 8003e18:	4639      	mov	r1, r7
 8003e1a:	4630      	mov	r0, r6
 8003e1c:	f7fc fc3a 	bl	8000694 <_malloc_r>
 8003e20:	b948      	cbnz	r0, 8003e36 <__smakebuf_r+0x46>
 8003e22:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003e26:	059a      	lsls	r2, r3, #22
 8003e28:	d4ee      	bmi.n	8003e08 <__smakebuf_r+0x18>
 8003e2a:	f023 0303 	bic.w	r3, r3, #3
 8003e2e:	f043 0302 	orr.w	r3, r3, #2
 8003e32:	81a3      	strh	r3, [r4, #12]
 8003e34:	e7e2      	b.n	8003dfc <__smakebuf_r+0xc>
 8003e36:	89a3      	ldrh	r3, [r4, #12]
 8003e38:	6020      	str	r0, [r4, #0]
 8003e3a:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8003e3e:	81a3      	strh	r3, [r4, #12]
 8003e40:	9b01      	ldr	r3, [sp, #4]
 8003e42:	e9c4 0704 	strd	r0, r7, [r4, #16]
 8003e46:	b15b      	cbz	r3, 8003e60 <__smakebuf_r+0x70>
 8003e48:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8003e4c:	4630      	mov	r0, r6
 8003e4e:	f000 f81d 	bl	8003e8c <_isatty_r>
 8003e52:	b128      	cbz	r0, 8003e60 <__smakebuf_r+0x70>
 8003e54:	89a3      	ldrh	r3, [r4, #12]
 8003e56:	f023 0303 	bic.w	r3, r3, #3
 8003e5a:	f043 0301 	orr.w	r3, r3, #1
 8003e5e:	81a3      	strh	r3, [r4, #12]
 8003e60:	89a3      	ldrh	r3, [r4, #12]
 8003e62:	431d      	orrs	r5, r3
 8003e64:	81a5      	strh	r5, [r4, #12]
 8003e66:	e7cf      	b.n	8003e08 <__smakebuf_r+0x18>

08003e68 <_fstat_r>:
 8003e68:	b538      	push	{r3, r4, r5, lr}
 8003e6a:	4d07      	ldr	r5, [pc, #28]	@ (8003e88 <_fstat_r+0x20>)
 8003e6c:	2300      	movs	r3, #0
 8003e6e:	4604      	mov	r4, r0
 8003e70:	4608      	mov	r0, r1
 8003e72:	4611      	mov	r1, r2
 8003e74:	602b      	str	r3, [r5, #0]
 8003e76:	f7fc ff2c 	bl	8000cd2 <_fstat>
 8003e7a:	1c43      	adds	r3, r0, #1
 8003e7c:	d102      	bne.n	8003e84 <_fstat_r+0x1c>
 8003e7e:	682b      	ldr	r3, [r5, #0]
 8003e80:	b103      	cbz	r3, 8003e84 <_fstat_r+0x1c>
 8003e82:	6023      	str	r3, [r4, #0]
 8003e84:	bd38      	pop	{r3, r4, r5, pc}
 8003e86:	bf00      	nop
 8003e88:	200001c4 	.word	0x200001c4

08003e8c <_isatty_r>:
 8003e8c:	b538      	push	{r3, r4, r5, lr}
 8003e8e:	4d06      	ldr	r5, [pc, #24]	@ (8003ea8 <_isatty_r+0x1c>)
 8003e90:	2300      	movs	r3, #0
 8003e92:	4604      	mov	r4, r0
 8003e94:	4608      	mov	r0, r1
 8003e96:	602b      	str	r3, [r5, #0]
 8003e98:	f7fc ff2b 	bl	8000cf2 <_isatty>
 8003e9c:	1c43      	adds	r3, r0, #1
 8003e9e:	d102      	bne.n	8003ea6 <_isatty_r+0x1a>
 8003ea0:	682b      	ldr	r3, [r5, #0]
 8003ea2:	b103      	cbz	r3, 8003ea6 <_isatty_r+0x1a>
 8003ea4:	6023      	str	r3, [r4, #0]
 8003ea6:	bd38      	pop	{r3, r4, r5, pc}
 8003ea8:	200001c4 	.word	0x200001c4

08003eac <_init>:
 8003eac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003eae:	bf00      	nop
 8003eb0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003eb2:	bc08      	pop	{r3}
 8003eb4:	469e      	mov	lr, r3
 8003eb6:	4770      	bx	lr

08003eb8 <_fini>:
 8003eb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003eba:	bf00      	nop
 8003ebc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003ebe:	bc08      	pop	{r3}
 8003ec0:	469e      	mov	lr, r3
 8003ec2:	4770      	bx	lr
