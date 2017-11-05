
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

080000c4 <__do_global_dtors_aux>:
 80000c4:	b510      	push	{r4, lr}
 80000c6:	4c06      	ldr	r4, [pc, #24]	; (80000e0 <__do_global_dtors_aux+0x1c>)
 80000c8:	7823      	ldrb	r3, [r4, #0]
 80000ca:	2b00      	cmp	r3, #0
 80000cc:	d107      	bne.n	80000de <__do_global_dtors_aux+0x1a>
 80000ce:	4b05      	ldr	r3, [pc, #20]	; (80000e4 <__do_global_dtors_aux+0x20>)
 80000d0:	2b00      	cmp	r3, #0
 80000d2:	d002      	beq.n	80000da <__do_global_dtors_aux+0x16>
 80000d4:	4804      	ldr	r0, [pc, #16]	; (80000e8 <__do_global_dtors_aux+0x24>)
 80000d6:	e000      	b.n	80000da <__do_global_dtors_aux+0x16>
 80000d8:	bf00      	nop
 80000da:	2301      	movs	r3, #1
 80000dc:	7023      	strb	r3, [r4, #0]
 80000de:	bd10      	pop	{r4, pc}
 80000e0:	20000440 	.word	0x20000440
 80000e4:	00000000 	.word	0x00000000
 80000e8:	080008ac 	.word	0x080008ac

080000ec <frame_dummy>:
 80000ec:	4b08      	ldr	r3, [pc, #32]	; (8000110 <frame_dummy+0x24>)
 80000ee:	b510      	push	{r4, lr}
 80000f0:	2b00      	cmp	r3, #0
 80000f2:	d003      	beq.n	80000fc <frame_dummy+0x10>
 80000f4:	4907      	ldr	r1, [pc, #28]	; (8000114 <frame_dummy+0x28>)
 80000f6:	4808      	ldr	r0, [pc, #32]	; (8000118 <frame_dummy+0x2c>)
 80000f8:	e000      	b.n	80000fc <frame_dummy+0x10>
 80000fa:	bf00      	nop
 80000fc:	4807      	ldr	r0, [pc, #28]	; (800011c <frame_dummy+0x30>)
 80000fe:	6803      	ldr	r3, [r0, #0]
 8000100:	2b00      	cmp	r3, #0
 8000102:	d100      	bne.n	8000106 <frame_dummy+0x1a>
 8000104:	bd10      	pop	{r4, pc}
 8000106:	4b06      	ldr	r3, [pc, #24]	; (8000120 <frame_dummy+0x34>)
 8000108:	2b00      	cmp	r3, #0
 800010a:	d0fb      	beq.n	8000104 <frame_dummy+0x18>
 800010c:	4798      	blx	r3
 800010e:	e7f9      	b.n	8000104 <frame_dummy+0x18>
 8000110:	00000000 	.word	0x00000000
 8000114:	20000444 	.word	0x20000444
 8000118:	080008ac 	.word	0x080008ac
 800011c:	2000043c 	.word	0x2000043c
 8000120:	00000000 	.word	0x00000000

08000124 <_mainCRTStartup>:
 8000124:	4b16      	ldr	r3, [pc, #88]	; (8000180 <_mainCRTStartup+0x5c>)
 8000126:	2b00      	cmp	r3, #0
 8000128:	d100      	bne.n	800012c <_mainCRTStartup+0x8>
 800012a:	4b14      	ldr	r3, [pc, #80]	; (800017c <_mainCRTStartup+0x58>)
 800012c:	469d      	mov	sp, r3
 800012e:	2240      	movs	r2, #64	; 0x40
 8000130:	0292      	lsls	r2, r2, #10
 8000132:	1a9a      	subs	r2, r3, r2
 8000134:	4692      	mov	sl, r2
 8000136:	2100      	movs	r1, #0
 8000138:	468b      	mov	fp, r1
 800013a:	460f      	mov	r7, r1
 800013c:	4813      	ldr	r0, [pc, #76]	; (800018c <_mainCRTStartup+0x68>)
 800013e:	4a14      	ldr	r2, [pc, #80]	; (8000190 <_mainCRTStartup+0x6c>)
 8000140:	1a12      	subs	r2, r2, r0
 8000142:	f000 fa23 	bl	800058c <memset>
 8000146:	4b0f      	ldr	r3, [pc, #60]	; (8000184 <_mainCRTStartup+0x60>)
 8000148:	2b00      	cmp	r3, #0
 800014a:	d000      	beq.n	800014e <_mainCRTStartup+0x2a>
 800014c:	4798      	blx	r3
 800014e:	4b0e      	ldr	r3, [pc, #56]	; (8000188 <_mainCRTStartup+0x64>)
 8000150:	2b00      	cmp	r3, #0
 8000152:	d000      	beq.n	8000156 <_mainCRTStartup+0x32>
 8000154:	4798      	blx	r3
 8000156:	2000      	movs	r0, #0
 8000158:	2100      	movs	r1, #0
 800015a:	0004      	movs	r4, r0
 800015c:	000d      	movs	r5, r1
 800015e:	480d      	ldr	r0, [pc, #52]	; (8000194 <_mainCRTStartup+0x70>)
 8000160:	2800      	cmp	r0, #0
 8000162:	d002      	beq.n	800016a <_mainCRTStartup+0x46>
 8000164:	480c      	ldr	r0, [pc, #48]	; (8000198 <_mainCRTStartup+0x74>)
 8000166:	f000 faef 	bl	8000748 <atexit>
 800016a:	f000 f9eb 	bl	8000544 <__libc_init_array>
 800016e:	0020      	movs	r0, r4
 8000170:	0029      	movs	r1, r5
 8000172:	f000 f8a9 	bl	80002c8 <main>
 8000176:	f000 f9d5 	bl	8000524 <exit>
 800017a:	46c0      	nop			; (mov r8, r8)
 800017c:	00080000 	.word	0x00080000
	...
 800018c:	20000440 	.word	0x20000440
 8000190:	20000480 	.word	0x20000480
 8000194:	08000749 	.word	0x08000749
 8000198:	08000759 	.word	0x08000759
 800019c:	080008f8 	.word	0x080008f8
 80001a0:	20000000 	.word	0x20000000
 80001a4:	2000043c 	.word	0x2000043c
 80001a8:	20000440 	.word	0x20000440
 80001ac:	20000480 	.word	0x20000480

080001b0 <__udivsi3>:
 80001b0:	2200      	movs	r2, #0
 80001b2:	0843      	lsrs	r3, r0, #1
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d374      	bcc.n	80002a2 <__udivsi3+0xf2>
 80001b8:	0903      	lsrs	r3, r0, #4
 80001ba:	428b      	cmp	r3, r1
 80001bc:	d35f      	bcc.n	800027e <__udivsi3+0xce>
 80001be:	0a03      	lsrs	r3, r0, #8
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d344      	bcc.n	800024e <__udivsi3+0x9e>
 80001c4:	0b03      	lsrs	r3, r0, #12
 80001c6:	428b      	cmp	r3, r1
 80001c8:	d328      	bcc.n	800021c <__udivsi3+0x6c>
 80001ca:	0c03      	lsrs	r3, r0, #16
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d30d      	bcc.n	80001ec <__udivsi3+0x3c>
 80001d0:	22ff      	movs	r2, #255	; 0xff
 80001d2:	0209      	lsls	r1, r1, #8
 80001d4:	ba12      	rev	r2, r2
 80001d6:	0c03      	lsrs	r3, r0, #16
 80001d8:	428b      	cmp	r3, r1
 80001da:	d302      	bcc.n	80001e2 <__udivsi3+0x32>
 80001dc:	1212      	asrs	r2, r2, #8
 80001de:	0209      	lsls	r1, r1, #8
 80001e0:	d065      	beq.n	80002ae <__udivsi3+0xfe>
 80001e2:	0b03      	lsrs	r3, r0, #12
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d319      	bcc.n	800021c <__udivsi3+0x6c>
 80001e8:	e000      	b.n	80001ec <__udivsi3+0x3c>
 80001ea:	0a09      	lsrs	r1, r1, #8
 80001ec:	0bc3      	lsrs	r3, r0, #15
 80001ee:	428b      	cmp	r3, r1
 80001f0:	d301      	bcc.n	80001f6 <__udivsi3+0x46>
 80001f2:	03cb      	lsls	r3, r1, #15
 80001f4:	1ac0      	subs	r0, r0, r3
 80001f6:	4152      	adcs	r2, r2
 80001f8:	0b83      	lsrs	r3, r0, #14
 80001fa:	428b      	cmp	r3, r1
 80001fc:	d301      	bcc.n	8000202 <__udivsi3+0x52>
 80001fe:	038b      	lsls	r3, r1, #14
 8000200:	1ac0      	subs	r0, r0, r3
 8000202:	4152      	adcs	r2, r2
 8000204:	0b43      	lsrs	r3, r0, #13
 8000206:	428b      	cmp	r3, r1
 8000208:	d301      	bcc.n	800020e <__udivsi3+0x5e>
 800020a:	034b      	lsls	r3, r1, #13
 800020c:	1ac0      	subs	r0, r0, r3
 800020e:	4152      	adcs	r2, r2
 8000210:	0b03      	lsrs	r3, r0, #12
 8000212:	428b      	cmp	r3, r1
 8000214:	d301      	bcc.n	800021a <__udivsi3+0x6a>
 8000216:	030b      	lsls	r3, r1, #12
 8000218:	1ac0      	subs	r0, r0, r3
 800021a:	4152      	adcs	r2, r2
 800021c:	0ac3      	lsrs	r3, r0, #11
 800021e:	428b      	cmp	r3, r1
 8000220:	d301      	bcc.n	8000226 <__udivsi3+0x76>
 8000222:	02cb      	lsls	r3, r1, #11
 8000224:	1ac0      	subs	r0, r0, r3
 8000226:	4152      	adcs	r2, r2
 8000228:	0a83      	lsrs	r3, r0, #10
 800022a:	428b      	cmp	r3, r1
 800022c:	d301      	bcc.n	8000232 <__udivsi3+0x82>
 800022e:	028b      	lsls	r3, r1, #10
 8000230:	1ac0      	subs	r0, r0, r3
 8000232:	4152      	adcs	r2, r2
 8000234:	0a43      	lsrs	r3, r0, #9
 8000236:	428b      	cmp	r3, r1
 8000238:	d301      	bcc.n	800023e <__udivsi3+0x8e>
 800023a:	024b      	lsls	r3, r1, #9
 800023c:	1ac0      	subs	r0, r0, r3
 800023e:	4152      	adcs	r2, r2
 8000240:	0a03      	lsrs	r3, r0, #8
 8000242:	428b      	cmp	r3, r1
 8000244:	d301      	bcc.n	800024a <__udivsi3+0x9a>
 8000246:	020b      	lsls	r3, r1, #8
 8000248:	1ac0      	subs	r0, r0, r3
 800024a:	4152      	adcs	r2, r2
 800024c:	d2cd      	bcs.n	80001ea <__udivsi3+0x3a>
 800024e:	09c3      	lsrs	r3, r0, #7
 8000250:	428b      	cmp	r3, r1
 8000252:	d301      	bcc.n	8000258 <__udivsi3+0xa8>
 8000254:	01cb      	lsls	r3, r1, #7
 8000256:	1ac0      	subs	r0, r0, r3
 8000258:	4152      	adcs	r2, r2
 800025a:	0983      	lsrs	r3, r0, #6
 800025c:	428b      	cmp	r3, r1
 800025e:	d301      	bcc.n	8000264 <__udivsi3+0xb4>
 8000260:	018b      	lsls	r3, r1, #6
 8000262:	1ac0      	subs	r0, r0, r3
 8000264:	4152      	adcs	r2, r2
 8000266:	0943      	lsrs	r3, r0, #5
 8000268:	428b      	cmp	r3, r1
 800026a:	d301      	bcc.n	8000270 <__udivsi3+0xc0>
 800026c:	014b      	lsls	r3, r1, #5
 800026e:	1ac0      	subs	r0, r0, r3
 8000270:	4152      	adcs	r2, r2
 8000272:	0903      	lsrs	r3, r0, #4
 8000274:	428b      	cmp	r3, r1
 8000276:	d301      	bcc.n	800027c <__udivsi3+0xcc>
 8000278:	010b      	lsls	r3, r1, #4
 800027a:	1ac0      	subs	r0, r0, r3
 800027c:	4152      	adcs	r2, r2
 800027e:	08c3      	lsrs	r3, r0, #3
 8000280:	428b      	cmp	r3, r1
 8000282:	d301      	bcc.n	8000288 <__udivsi3+0xd8>
 8000284:	00cb      	lsls	r3, r1, #3
 8000286:	1ac0      	subs	r0, r0, r3
 8000288:	4152      	adcs	r2, r2
 800028a:	0883      	lsrs	r3, r0, #2
 800028c:	428b      	cmp	r3, r1
 800028e:	d301      	bcc.n	8000294 <__udivsi3+0xe4>
 8000290:	008b      	lsls	r3, r1, #2
 8000292:	1ac0      	subs	r0, r0, r3
 8000294:	4152      	adcs	r2, r2
 8000296:	0843      	lsrs	r3, r0, #1
 8000298:	428b      	cmp	r3, r1
 800029a:	d301      	bcc.n	80002a0 <__udivsi3+0xf0>
 800029c:	004b      	lsls	r3, r1, #1
 800029e:	1ac0      	subs	r0, r0, r3
 80002a0:	4152      	adcs	r2, r2
 80002a2:	1a41      	subs	r1, r0, r1
 80002a4:	d200      	bcs.n	80002a8 <__udivsi3+0xf8>
 80002a6:	4601      	mov	r1, r0
 80002a8:	4152      	adcs	r2, r2
 80002aa:	4610      	mov	r0, r2
 80002ac:	4770      	bx	lr
 80002ae:	e7ff      	b.n	80002b0 <__udivsi3+0x100>
 80002b0:	b501      	push	{r0, lr}
 80002b2:	2000      	movs	r0, #0
 80002b4:	f000 f806 	bl	80002c4 <__aeabi_idiv0>
 80002b8:	bd02      	pop	{r1, pc}
 80002ba:	46c0      	nop			; (mov r8, r8)

080002bc <__aeabi_uidivmod>:
 80002bc:	2900      	cmp	r1, #0
 80002be:	d0f7      	beq.n	80002b0 <__udivsi3+0x100>
 80002c0:	e776      	b.n	80001b0 <__udivsi3>
 80002c2:	4770      	bx	lr

080002c4 <__aeabi_idiv0>:
 80002c4:	4770      	bx	lr
 80002c6:	46c0      	nop			; (mov r8, r8)

080002c8 <main>:
 80002c8:	b580      	push	{r7, lr}
 80002ca:	af00      	add	r7, sp, #0
 80002cc:	f000 f804 	bl	80002d8 <init_led3>
 80002d0:	f000 f830 	bl	8000334 <blink_led3>
 80002d4:	e7fc      	b.n	80002d0 <main+0x8>
	...

080002d8 <init_led3>:
 80002d8:	b580      	push	{r7, lr}
 80002da:	af00      	add	r7, sp, #0
 80002dc:	4b13      	ldr	r3, [pc, #76]	; (800032c <init_led3+0x54>)
 80002de:	4a13      	ldr	r2, [pc, #76]	; (800032c <init_led3+0x54>)
 80002e0:	6952      	ldr	r2, [r2, #20]
 80002e2:	2180      	movs	r1, #128	; 0x80
 80002e4:	02c9      	lsls	r1, r1, #11
 80002e6:	430a      	orrs	r2, r1
 80002e8:	615a      	str	r2, [r3, #20]
 80002ea:	4b11      	ldr	r3, [pc, #68]	; (8000330 <init_led3+0x58>)
 80002ec:	4a10      	ldr	r2, [pc, #64]	; (8000330 <init_led3+0x58>)
 80002ee:	6812      	ldr	r2, [r2, #0]
 80002f0:	21c0      	movs	r1, #192	; 0xc0
 80002f2:	438a      	bics	r2, r1
 80002f4:	601a      	str	r2, [r3, #0]
 80002f6:	4b0e      	ldr	r3, [pc, #56]	; (8000330 <init_led3+0x58>)
 80002f8:	4a0d      	ldr	r2, [pc, #52]	; (8000330 <init_led3+0x58>)
 80002fa:	6812      	ldr	r2, [r2, #0]
 80002fc:	2140      	movs	r1, #64	; 0x40
 80002fe:	430a      	orrs	r2, r1
 8000300:	601a      	str	r2, [r3, #0]
 8000302:	4b0b      	ldr	r3, [pc, #44]	; (8000330 <init_led3+0x58>)
 8000304:	4a0a      	ldr	r2, [pc, #40]	; (8000330 <init_led3+0x58>)
 8000306:	6852      	ldr	r2, [r2, #4]
 8000308:	2108      	movs	r1, #8
 800030a:	438a      	bics	r2, r1
 800030c:	605a      	str	r2, [r3, #4]
 800030e:	4b08      	ldr	r3, [pc, #32]	; (8000330 <init_led3+0x58>)
 8000310:	4a07      	ldr	r2, [pc, #28]	; (8000330 <init_led3+0x58>)
 8000312:	6892      	ldr	r2, [r2, #8]
 8000314:	21c0      	movs	r1, #192	; 0xc0
 8000316:	438a      	bics	r2, r1
 8000318:	609a      	str	r2, [r3, #8]
 800031a:	4b05      	ldr	r3, [pc, #20]	; (8000330 <init_led3+0x58>)
 800031c:	4a04      	ldr	r2, [pc, #16]	; (8000330 <init_led3+0x58>)
 800031e:	68d2      	ldr	r2, [r2, #12]
 8000320:	21c0      	movs	r1, #192	; 0xc0
 8000322:	438a      	bics	r2, r1
 8000324:	60da      	str	r2, [r3, #12]
 8000326:	46c0      	nop			; (mov r8, r8)
 8000328:	46bd      	mov	sp, r7
 800032a:	bd80      	pop	{r7, pc}
 800032c:	40021000 	.word	0x40021000
 8000330:	48000400 	.word	0x48000400

08000334 <blink_led3>:
 8000334:	b580      	push	{r7, lr}
 8000336:	b082      	sub	sp, #8
 8000338:	af00      	add	r7, sp, #0
 800033a:	4b0a      	ldr	r3, [pc, #40]	; (8000364 <blink_led3+0x30>)
 800033c:	2208      	movs	r2, #8
 800033e:	619a      	str	r2, [r3, #24]
 8000340:	2300      	movs	r3, #0
 8000342:	607b      	str	r3, [r7, #4]
 8000344:	e002      	b.n	800034c <blink_led3+0x18>
 8000346:	687b      	ldr	r3, [r7, #4]
 8000348:	3301      	adds	r3, #1
 800034a:	607b      	str	r3, [r7, #4]
 800034c:	687b      	ldr	r3, [r7, #4]
 800034e:	4a06      	ldr	r2, [pc, #24]	; (8000368 <blink_led3+0x34>)
 8000350:	4293      	cmp	r3, r2
 8000352:	ddf8      	ble.n	8000346 <blink_led3+0x12>
 8000354:	4b03      	ldr	r3, [pc, #12]	; (8000364 <blink_led3+0x30>)
 8000356:	2280      	movs	r2, #128	; 0x80
 8000358:	0312      	lsls	r2, r2, #12
 800035a:	619a      	str	r2, [r3, #24]
 800035c:	46c0      	nop			; (mov r8, r8)
 800035e:	46bd      	mov	sp, r7
 8000360:	b002      	add	sp, #8
 8000362:	bd80      	pop	{r7, pc}
 8000364:	48000400 	.word	0x48000400
 8000368:	0000fffe 	.word	0x0000fffe

0800036c <Reset_Handler>:
 800036c:	e7ac      	b.n	80002c8 <main>
 800036e:	480e      	ldr	r0, [pc, #56]	; (80003a8 <LoopForever+0x4>)
 8000370:	4685      	mov	sp, r0
 8000372:	2100      	movs	r1, #0
 8000374:	e003      	b.n	800037e <LoopCopyDataInit>

08000376 <CopyDataInit>:
 8000376:	4b0d      	ldr	r3, [pc, #52]	; (80003ac <LoopForever+0x8>)
 8000378:	585b      	ldr	r3, [r3, r1]
 800037a:	5043      	str	r3, [r0, r1]
 800037c:	3104      	adds	r1, #4

0800037e <LoopCopyDataInit>:
 800037e:	480c      	ldr	r0, [pc, #48]	; (80003b0 <LoopForever+0xc>)
 8000380:	4b0c      	ldr	r3, [pc, #48]	; (80003b4 <LoopForever+0x10>)
 8000382:	1842      	adds	r2, r0, r1
 8000384:	429a      	cmp	r2, r3
 8000386:	d3f6      	bcc.n	8000376 <CopyDataInit>
 8000388:	4a0b      	ldr	r2, [pc, #44]	; (80003b8 <LoopForever+0x14>)
 800038a:	e002      	b.n	8000392 <LoopFillZerobss>

0800038c <FillZerobss>:
 800038c:	2300      	movs	r3, #0
 800038e:	6013      	str	r3, [r2, #0]
 8000390:	3204      	adds	r2, #4

08000392 <LoopFillZerobss>:
 8000392:	4b0a      	ldr	r3, [pc, #40]	; (80003bc <LoopForever+0x18>)
 8000394:	429a      	cmp	r2, r3
 8000396:	d3f9      	bcc.n	800038c <FillZerobss>
 8000398:	f000 f814 	bl	80003c4 <SystemInit>
 800039c:	f000 f8d2 	bl	8000544 <__libc_init_array>
 80003a0:	f7ff ff92 	bl	80002c8 <main>

080003a4 <LoopForever>:
 80003a4:	e7fe      	b.n	80003a4 <LoopForever>
 80003a6:	0000      	.short	0x0000
 80003a8:	20002000 	.word	0x20002000
 80003ac:	080008f8 	.word	0x080008f8
 80003b0:	20000000 	.word	0x20000000
 80003b4:	2000043c 	.word	0x2000043c
 80003b8:	20000440 	.word	0x20000440
 80003bc:	20000480 	.word	0x20000480

080003c0 <ADC1_COMP_IRQHandler>:
 80003c0:	e7fe      	b.n	80003c0 <ADC1_COMP_IRQHandler>
	...

080003c4 <SystemInit>:
 80003c4:	b580      	push	{r7, lr}
 80003c6:	af00      	add	r7, sp, #0
 80003c8:	4b1a      	ldr	r3, [pc, #104]	; (8000434 <SystemInit+0x70>)
 80003ca:	4a1a      	ldr	r2, [pc, #104]	; (8000434 <SystemInit+0x70>)
 80003cc:	6812      	ldr	r2, [r2, #0]
 80003ce:	2101      	movs	r1, #1
 80003d0:	430a      	orrs	r2, r1
 80003d2:	601a      	str	r2, [r3, #0]
 80003d4:	4b17      	ldr	r3, [pc, #92]	; (8000434 <SystemInit+0x70>)
 80003d6:	4a17      	ldr	r2, [pc, #92]	; (8000434 <SystemInit+0x70>)
 80003d8:	6852      	ldr	r2, [r2, #4]
 80003da:	4917      	ldr	r1, [pc, #92]	; (8000438 <SystemInit+0x74>)
 80003dc:	400a      	ands	r2, r1
 80003de:	605a      	str	r2, [r3, #4]
 80003e0:	4b14      	ldr	r3, [pc, #80]	; (8000434 <SystemInit+0x70>)
 80003e2:	4a14      	ldr	r2, [pc, #80]	; (8000434 <SystemInit+0x70>)
 80003e4:	6812      	ldr	r2, [r2, #0]
 80003e6:	4915      	ldr	r1, [pc, #84]	; (800043c <SystemInit+0x78>)
 80003e8:	400a      	ands	r2, r1
 80003ea:	601a      	str	r2, [r3, #0]
 80003ec:	4b11      	ldr	r3, [pc, #68]	; (8000434 <SystemInit+0x70>)
 80003ee:	4a11      	ldr	r2, [pc, #68]	; (8000434 <SystemInit+0x70>)
 80003f0:	6812      	ldr	r2, [r2, #0]
 80003f2:	4913      	ldr	r1, [pc, #76]	; (8000440 <SystemInit+0x7c>)
 80003f4:	400a      	ands	r2, r1
 80003f6:	601a      	str	r2, [r3, #0]
 80003f8:	4b0e      	ldr	r3, [pc, #56]	; (8000434 <SystemInit+0x70>)
 80003fa:	4a0e      	ldr	r2, [pc, #56]	; (8000434 <SystemInit+0x70>)
 80003fc:	6852      	ldr	r2, [r2, #4]
 80003fe:	4911      	ldr	r1, [pc, #68]	; (8000444 <SystemInit+0x80>)
 8000400:	400a      	ands	r2, r1
 8000402:	605a      	str	r2, [r3, #4]
 8000404:	4b0b      	ldr	r3, [pc, #44]	; (8000434 <SystemInit+0x70>)
 8000406:	4a0b      	ldr	r2, [pc, #44]	; (8000434 <SystemInit+0x70>)
 8000408:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800040a:	210f      	movs	r1, #15
 800040c:	438a      	bics	r2, r1
 800040e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000410:	4b08      	ldr	r3, [pc, #32]	; (8000434 <SystemInit+0x70>)
 8000412:	4a08      	ldr	r2, [pc, #32]	; (8000434 <SystemInit+0x70>)
 8000414:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000416:	490c      	ldr	r1, [pc, #48]	; (8000448 <SystemInit+0x84>)
 8000418:	400a      	ands	r2, r1
 800041a:	631a      	str	r2, [r3, #48]	; 0x30
 800041c:	4b05      	ldr	r3, [pc, #20]	; (8000434 <SystemInit+0x70>)
 800041e:	4a05      	ldr	r2, [pc, #20]	; (8000434 <SystemInit+0x70>)
 8000420:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8000422:	2101      	movs	r1, #1
 8000424:	438a      	bics	r2, r1
 8000426:	635a      	str	r2, [r3, #52]	; 0x34
 8000428:	4b02      	ldr	r3, [pc, #8]	; (8000434 <SystemInit+0x70>)
 800042a:	2200      	movs	r2, #0
 800042c:	609a      	str	r2, [r3, #8]
 800042e:	46c0      	nop			; (mov r8, r8)
 8000430:	46bd      	mov	sp, r7
 8000432:	bd80      	pop	{r7, pc}
 8000434:	40021000 	.word	0x40021000
 8000438:	08ffb80c 	.word	0x08ffb80c
 800043c:	fef6ffff 	.word	0xfef6ffff
 8000440:	fffbffff 	.word	0xfffbffff
 8000444:	ffc0ffff 	.word	0xffc0ffff
 8000448:	fffffeec 	.word	0xfffffeec

0800044c <SystemCoreClockUpdate>:
 800044c:	b580      	push	{r7, lr}
 800044e:	b084      	sub	sp, #16
 8000450:	af00      	add	r7, sp, #0
 8000452:	2300      	movs	r3, #0
 8000454:	60fb      	str	r3, [r7, #12]
 8000456:	2300      	movs	r3, #0
 8000458:	60bb      	str	r3, [r7, #8]
 800045a:	2300      	movs	r3, #0
 800045c:	607b      	str	r3, [r7, #4]
 800045e:	2300      	movs	r3, #0
 8000460:	603b      	str	r3, [r7, #0]
 8000462:	4b2b      	ldr	r3, [pc, #172]	; (8000510 <SystemCoreClockUpdate+0xc4>)
 8000464:	685b      	ldr	r3, [r3, #4]
 8000466:	220c      	movs	r2, #12
 8000468:	4013      	ands	r3, r2
 800046a:	60fb      	str	r3, [r7, #12]
 800046c:	68fb      	ldr	r3, [r7, #12]
 800046e:	2b04      	cmp	r3, #4
 8000470:	d007      	beq.n	8000482 <SystemCoreClockUpdate+0x36>
 8000472:	2b08      	cmp	r3, #8
 8000474:	d009      	beq.n	800048a <SystemCoreClockUpdate+0x3e>
 8000476:	2b00      	cmp	r3, #0
 8000478:	d133      	bne.n	80004e2 <SystemCoreClockUpdate+0x96>
 800047a:	4b26      	ldr	r3, [pc, #152]	; (8000514 <SystemCoreClockUpdate+0xc8>)
 800047c:	4a26      	ldr	r2, [pc, #152]	; (8000518 <SystemCoreClockUpdate+0xcc>)
 800047e:	601a      	str	r2, [r3, #0]
 8000480:	e033      	b.n	80004ea <SystemCoreClockUpdate+0x9e>
 8000482:	4b24      	ldr	r3, [pc, #144]	; (8000514 <SystemCoreClockUpdate+0xc8>)
 8000484:	4a24      	ldr	r2, [pc, #144]	; (8000518 <SystemCoreClockUpdate+0xcc>)
 8000486:	601a      	str	r2, [r3, #0]
 8000488:	e02f      	b.n	80004ea <SystemCoreClockUpdate+0x9e>
 800048a:	4b21      	ldr	r3, [pc, #132]	; (8000510 <SystemCoreClockUpdate+0xc4>)
 800048c:	685a      	ldr	r2, [r3, #4]
 800048e:	23f0      	movs	r3, #240	; 0xf0
 8000490:	039b      	lsls	r3, r3, #14
 8000492:	4013      	ands	r3, r2
 8000494:	60bb      	str	r3, [r7, #8]
 8000496:	4b1e      	ldr	r3, [pc, #120]	; (8000510 <SystemCoreClockUpdate+0xc4>)
 8000498:	685a      	ldr	r2, [r3, #4]
 800049a:	2380      	movs	r3, #128	; 0x80
 800049c:	025b      	lsls	r3, r3, #9
 800049e:	4013      	ands	r3, r2
 80004a0:	607b      	str	r3, [r7, #4]
 80004a2:	68bb      	ldr	r3, [r7, #8]
 80004a4:	0c9b      	lsrs	r3, r3, #18
 80004a6:	3302      	adds	r3, #2
 80004a8:	60bb      	str	r3, [r7, #8]
 80004aa:	4b19      	ldr	r3, [pc, #100]	; (8000510 <SystemCoreClockUpdate+0xc4>)
 80004ac:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004ae:	220f      	movs	r2, #15
 80004b0:	4013      	ands	r3, r2
 80004b2:	3301      	adds	r3, #1
 80004b4:	603b      	str	r3, [r7, #0]
 80004b6:	687a      	ldr	r2, [r7, #4]
 80004b8:	2380      	movs	r3, #128	; 0x80
 80004ba:	025b      	lsls	r3, r3, #9
 80004bc:	429a      	cmp	r2, r3
 80004be:	d10a      	bne.n	80004d6 <SystemCoreClockUpdate+0x8a>
 80004c0:	6839      	ldr	r1, [r7, #0]
 80004c2:	4815      	ldr	r0, [pc, #84]	; (8000518 <SystemCoreClockUpdate+0xcc>)
 80004c4:	f7ff fe74 	bl	80001b0 <__udivsi3>
 80004c8:	0003      	movs	r3, r0
 80004ca:	001a      	movs	r2, r3
 80004cc:	68bb      	ldr	r3, [r7, #8]
 80004ce:	435a      	muls	r2, r3
 80004d0:	4b10      	ldr	r3, [pc, #64]	; (8000514 <SystemCoreClockUpdate+0xc8>)
 80004d2:	601a      	str	r2, [r3, #0]
 80004d4:	e009      	b.n	80004ea <SystemCoreClockUpdate+0x9e>
 80004d6:	68bb      	ldr	r3, [r7, #8]
 80004d8:	4a10      	ldr	r2, [pc, #64]	; (800051c <SystemCoreClockUpdate+0xd0>)
 80004da:	435a      	muls	r2, r3
 80004dc:	4b0d      	ldr	r3, [pc, #52]	; (8000514 <SystemCoreClockUpdate+0xc8>)
 80004de:	601a      	str	r2, [r3, #0]
 80004e0:	e003      	b.n	80004ea <SystemCoreClockUpdate+0x9e>
 80004e2:	4b0c      	ldr	r3, [pc, #48]	; (8000514 <SystemCoreClockUpdate+0xc8>)
 80004e4:	4a0c      	ldr	r2, [pc, #48]	; (8000518 <SystemCoreClockUpdate+0xcc>)
 80004e6:	601a      	str	r2, [r3, #0]
 80004e8:	46c0      	nop			; (mov r8, r8)
 80004ea:	4b09      	ldr	r3, [pc, #36]	; (8000510 <SystemCoreClockUpdate+0xc4>)
 80004ec:	685b      	ldr	r3, [r3, #4]
 80004ee:	091b      	lsrs	r3, r3, #4
 80004f0:	220f      	movs	r2, #15
 80004f2:	4013      	ands	r3, r2
 80004f4:	4a0a      	ldr	r2, [pc, #40]	; (8000520 <SystemCoreClockUpdate+0xd4>)
 80004f6:	5cd3      	ldrb	r3, [r2, r3]
 80004f8:	60fb      	str	r3, [r7, #12]
 80004fa:	4b06      	ldr	r3, [pc, #24]	; (8000514 <SystemCoreClockUpdate+0xc8>)
 80004fc:	681a      	ldr	r2, [r3, #0]
 80004fe:	68fb      	ldr	r3, [r7, #12]
 8000500:	40da      	lsrs	r2, r3
 8000502:	4b04      	ldr	r3, [pc, #16]	; (8000514 <SystemCoreClockUpdate+0xc8>)
 8000504:	601a      	str	r2, [r3, #0]
 8000506:	46c0      	nop			; (mov r8, r8)
 8000508:	46bd      	mov	sp, r7
 800050a:	b004      	add	sp, #16
 800050c:	bd80      	pop	{r7, pc}
 800050e:	46c0      	nop			; (mov r8, r8)
 8000510:	40021000 	.word	0x40021000
 8000514:	20000004 	.word	0x20000004
 8000518:	007a1200 	.word	0x007a1200
 800051c:	003d0900 	.word	0x003d0900
 8000520:	080008c8 	.word	0x080008c8

08000524 <exit>:
 8000524:	b510      	push	{r4, lr}
 8000526:	2100      	movs	r1, #0
 8000528:	0004      	movs	r4, r0
 800052a:	f000 f885 	bl	8000638 <__call_exitprocs>
 800052e:	4b04      	ldr	r3, [pc, #16]	; (8000540 <exit+0x1c>)
 8000530:	6818      	ldr	r0, [r3, #0]
 8000532:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 8000534:	2b00      	cmp	r3, #0
 8000536:	d000      	beq.n	800053a <exit+0x16>
 8000538:	4798      	blx	r3
 800053a:	0020      	movs	r0, r4
 800053c:	f000 f9b4 	bl	80008a8 <_exit>
 8000540:	080008e0 	.word	0x080008e0

08000544 <__libc_init_array>:
 8000544:	b570      	push	{r4, r5, r6, lr}
 8000546:	4e0d      	ldr	r6, [pc, #52]	; (800057c <__libc_init_array+0x38>)
 8000548:	4d0d      	ldr	r5, [pc, #52]	; (8000580 <__libc_init_array+0x3c>)
 800054a:	2400      	movs	r4, #0
 800054c:	1bad      	subs	r5, r5, r6
 800054e:	10ad      	asrs	r5, r5, #2
 8000550:	d005      	beq.n	800055e <__libc_init_array+0x1a>
 8000552:	00a3      	lsls	r3, r4, #2
 8000554:	58f3      	ldr	r3, [r6, r3]
 8000556:	3401      	adds	r4, #1
 8000558:	4798      	blx	r3
 800055a:	42a5      	cmp	r5, r4
 800055c:	d1f9      	bne.n	8000552 <__libc_init_array+0xe>
 800055e:	f000 f9a7 	bl	80008b0 <_init>
 8000562:	4e08      	ldr	r6, [pc, #32]	; (8000584 <__libc_init_array+0x40>)
 8000564:	4d08      	ldr	r5, [pc, #32]	; (8000588 <__libc_init_array+0x44>)
 8000566:	2400      	movs	r4, #0
 8000568:	1bad      	subs	r5, r5, r6
 800056a:	10ad      	asrs	r5, r5, #2
 800056c:	d005      	beq.n	800057a <__libc_init_array+0x36>
 800056e:	00a3      	lsls	r3, r4, #2
 8000570:	58f3      	ldr	r3, [r6, r3]
 8000572:	3401      	adds	r4, #1
 8000574:	4798      	blx	r3
 8000576:	42a5      	cmp	r5, r4
 8000578:	d1f9      	bne.n	800056e <__libc_init_array+0x2a>
 800057a:	bd70      	pop	{r4, r5, r6, pc}
 800057c:	080008ec 	.word	0x080008ec
 8000580:	080008ec 	.word	0x080008ec
 8000584:	080008ec 	.word	0x080008ec
 8000588:	080008f4 	.word	0x080008f4

0800058c <memset>:
 800058c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800058e:	0783      	lsls	r3, r0, #30
 8000590:	d043      	beq.n	800061a <memset+0x8e>
 8000592:	1e54      	subs	r4, r2, #1
 8000594:	2a00      	cmp	r2, #0
 8000596:	d03f      	beq.n	8000618 <memset+0x8c>
 8000598:	b2ce      	uxtb	r6, r1
 800059a:	0002      	movs	r2, r0
 800059c:	2503      	movs	r5, #3
 800059e:	e002      	b.n	80005a6 <memset+0x1a>
 80005a0:	001a      	movs	r2, r3
 80005a2:	3c01      	subs	r4, #1
 80005a4:	d338      	bcc.n	8000618 <memset+0x8c>
 80005a6:	1c53      	adds	r3, r2, #1
 80005a8:	7016      	strb	r6, [r2, #0]
 80005aa:	422b      	tst	r3, r5
 80005ac:	d1f8      	bne.n	80005a0 <memset+0x14>
 80005ae:	2c03      	cmp	r4, #3
 80005b0:	d92a      	bls.n	8000608 <memset+0x7c>
 80005b2:	22ff      	movs	r2, #255	; 0xff
 80005b4:	400a      	ands	r2, r1
 80005b6:	0215      	lsls	r5, r2, #8
 80005b8:	4315      	orrs	r5, r2
 80005ba:	042a      	lsls	r2, r5, #16
 80005bc:	4315      	orrs	r5, r2
 80005be:	2c0f      	cmp	r4, #15
 80005c0:	d914      	bls.n	80005ec <memset+0x60>
 80005c2:	0027      	movs	r7, r4
 80005c4:	001a      	movs	r2, r3
 80005c6:	3f10      	subs	r7, #16
 80005c8:	093e      	lsrs	r6, r7, #4
 80005ca:	3601      	adds	r6, #1
 80005cc:	0136      	lsls	r6, r6, #4
 80005ce:	199e      	adds	r6, r3, r6
 80005d0:	6015      	str	r5, [r2, #0]
 80005d2:	6055      	str	r5, [r2, #4]
 80005d4:	6095      	str	r5, [r2, #8]
 80005d6:	60d5      	str	r5, [r2, #12]
 80005d8:	3210      	adds	r2, #16
 80005da:	4296      	cmp	r6, r2
 80005dc:	d1f8      	bne.n	80005d0 <memset+0x44>
 80005de:	220f      	movs	r2, #15
 80005e0:	4397      	bics	r7, r2
 80005e2:	3710      	adds	r7, #16
 80005e4:	19db      	adds	r3, r3, r7
 80005e6:	4014      	ands	r4, r2
 80005e8:	2c03      	cmp	r4, #3
 80005ea:	d90d      	bls.n	8000608 <memset+0x7c>
 80005ec:	001a      	movs	r2, r3
 80005ee:	1f27      	subs	r7, r4, #4
 80005f0:	08be      	lsrs	r6, r7, #2
 80005f2:	3601      	adds	r6, #1
 80005f4:	00b6      	lsls	r6, r6, #2
 80005f6:	199e      	adds	r6, r3, r6
 80005f8:	c220      	stmia	r2!, {r5}
 80005fa:	42b2      	cmp	r2, r6
 80005fc:	d1fc      	bne.n	80005f8 <memset+0x6c>
 80005fe:	2203      	movs	r2, #3
 8000600:	4397      	bics	r7, r2
 8000602:	3704      	adds	r7, #4
 8000604:	19db      	adds	r3, r3, r7
 8000606:	4014      	ands	r4, r2
 8000608:	2c00      	cmp	r4, #0
 800060a:	d005      	beq.n	8000618 <memset+0x8c>
 800060c:	b2c9      	uxtb	r1, r1
 800060e:	191c      	adds	r4, r3, r4
 8000610:	7019      	strb	r1, [r3, #0]
 8000612:	3301      	adds	r3, #1
 8000614:	429c      	cmp	r4, r3
 8000616:	d1fb      	bne.n	8000610 <memset+0x84>
 8000618:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800061a:	0014      	movs	r4, r2
 800061c:	0003      	movs	r3, r0
 800061e:	e7c6      	b.n	80005ae <memset+0x22>

08000620 <register_fini>:
 8000620:	4b03      	ldr	r3, [pc, #12]	; (8000630 <register_fini+0x10>)
 8000622:	b510      	push	{r4, lr}
 8000624:	2b00      	cmp	r3, #0
 8000626:	d002      	beq.n	800062e <register_fini+0xe>
 8000628:	4802      	ldr	r0, [pc, #8]	; (8000634 <register_fini+0x14>)
 800062a:	f000 f88d 	bl	8000748 <atexit>
 800062e:	bd10      	pop	{r4, pc}
 8000630:	00000000 	.word	0x00000000
 8000634:	08000759 	.word	0x08000759

08000638 <__call_exitprocs>:
 8000638:	b5f0      	push	{r4, r5, r6, r7, lr}
 800063a:	46de      	mov	lr, fp
 800063c:	4657      	mov	r7, sl
 800063e:	464e      	mov	r6, r9
 8000640:	4645      	mov	r5, r8
 8000642:	b5e0      	push	{r5, r6, r7, lr}
 8000644:	4b3d      	ldr	r3, [pc, #244]	; (800073c <__call_exitprocs+0x104>)
 8000646:	b085      	sub	sp, #20
 8000648:	681b      	ldr	r3, [r3, #0]
 800064a:	9001      	str	r0, [sp, #4]
 800064c:	0018      	movs	r0, r3
 800064e:	9302      	str	r3, [sp, #8]
 8000650:	000f      	movs	r7, r1
 8000652:	f000 f8a5 	bl	80007a0 <__retarget_lock_acquire_recursive>
 8000656:	4b3a      	ldr	r3, [pc, #232]	; (8000740 <__call_exitprocs+0x108>)
 8000658:	681b      	ldr	r3, [r3, #0]
 800065a:	9302      	str	r3, [sp, #8]
 800065c:	3349      	adds	r3, #73	; 0x49
 800065e:	33ff      	adds	r3, #255	; 0xff
 8000660:	9303      	str	r3, [sp, #12]
 8000662:	22a4      	movs	r2, #164	; 0xa4
 8000664:	9b02      	ldr	r3, [sp, #8]
 8000666:	0052      	lsls	r2, r2, #1
 8000668:	589e      	ldr	r6, [r3, r2]
 800066a:	2e00      	cmp	r6, #0
 800066c:	d04e      	beq.n	800070c <__call_exitprocs+0xd4>
 800066e:	9b03      	ldr	r3, [sp, #12]
 8000670:	4699      	mov	r9, r3
 8000672:	23c4      	movs	r3, #196	; 0xc4
 8000674:	005b      	lsls	r3, r3, #1
 8000676:	4698      	mov	r8, r3
 8000678:	3304      	adds	r3, #4
 800067a:	469a      	mov	sl, r3
 800067c:	6874      	ldr	r4, [r6, #4]
 800067e:	44b0      	add	r8, r6
 8000680:	00a5      	lsls	r5, r4, #2
 8000682:	1975      	adds	r5, r6, r5
 8000684:	44b2      	add	sl, r6
 8000686:	3c01      	subs	r4, #1
 8000688:	d508      	bpl.n	800069c <__call_exitprocs+0x64>
 800068a:	e02d      	b.n	80006e8 <__call_exitprocs+0xb0>
 800068c:	1d6b      	adds	r3, r5, #5
 800068e:	33ff      	adds	r3, #255	; 0xff
 8000690:	681b      	ldr	r3, [r3, #0]
 8000692:	429f      	cmp	r7, r3
 8000694:	d004      	beq.n	80006a0 <__call_exitprocs+0x68>
 8000696:	3d04      	subs	r5, #4
 8000698:	3c01      	subs	r4, #1
 800069a:	d325      	bcc.n	80006e8 <__call_exitprocs+0xb0>
 800069c:	2f00      	cmp	r7, #0
 800069e:	d1f5      	bne.n	800068c <__call_exitprocs+0x54>
 80006a0:	6873      	ldr	r3, [r6, #4]
 80006a2:	686a      	ldr	r2, [r5, #4]
 80006a4:	3b01      	subs	r3, #1
 80006a6:	42a3      	cmp	r3, r4
 80006a8:	d03d      	beq.n	8000726 <__call_exitprocs+0xee>
 80006aa:	2300      	movs	r3, #0
 80006ac:	606b      	str	r3, [r5, #4]
 80006ae:	2a00      	cmp	r2, #0
 80006b0:	d0f1      	beq.n	8000696 <__call_exitprocs+0x5e>
 80006b2:	6873      	ldr	r3, [r6, #4]
 80006b4:	4641      	mov	r1, r8
 80006b6:	469b      	mov	fp, r3
 80006b8:	2301      	movs	r3, #1
 80006ba:	40a3      	lsls	r3, r4
 80006bc:	6809      	ldr	r1, [r1, #0]
 80006be:	4219      	tst	r1, r3
 80006c0:	d02f      	beq.n	8000722 <__call_exitprocs+0xea>
 80006c2:	4651      	mov	r1, sl
 80006c4:	6809      	ldr	r1, [r1, #0]
 80006c6:	4219      	tst	r1, r3
 80006c8:	d12f      	bne.n	800072a <__call_exitprocs+0xf2>
 80006ca:	002b      	movs	r3, r5
 80006cc:	3384      	adds	r3, #132	; 0x84
 80006ce:	6819      	ldr	r1, [r3, #0]
 80006d0:	9801      	ldr	r0, [sp, #4]
 80006d2:	4790      	blx	r2
 80006d4:	6873      	ldr	r3, [r6, #4]
 80006d6:	455b      	cmp	r3, fp
 80006d8:	d1c3      	bne.n	8000662 <__call_exitprocs+0x2a>
 80006da:	464b      	mov	r3, r9
 80006dc:	681b      	ldr	r3, [r3, #0]
 80006de:	42b3      	cmp	r3, r6
 80006e0:	d1bf      	bne.n	8000662 <__call_exitprocs+0x2a>
 80006e2:	3d04      	subs	r5, #4
 80006e4:	3c01      	subs	r4, #1
 80006e6:	d2d9      	bcs.n	800069c <__call_exitprocs+0x64>
 80006e8:	4b16      	ldr	r3, [pc, #88]	; (8000744 <__call_exitprocs+0x10c>)
 80006ea:	2b00      	cmp	r3, #0
 80006ec:	d00e      	beq.n	800070c <__call_exitprocs+0xd4>
 80006ee:	6873      	ldr	r3, [r6, #4]
 80006f0:	2b00      	cmp	r3, #0
 80006f2:	d11f      	bne.n	8000734 <__call_exitprocs+0xfc>
 80006f4:	6833      	ldr	r3, [r6, #0]
 80006f6:	2b00      	cmp	r3, #0
 80006f8:	d008      	beq.n	800070c <__call_exitprocs+0xd4>
 80006fa:	464a      	mov	r2, r9
 80006fc:	0030      	movs	r0, r6
 80006fe:	6013      	str	r3, [r2, #0]
 8000700:	e000      	b.n	8000704 <__call_exitprocs+0xcc>
 8000702:	bf00      	nop
 8000704:	464b      	mov	r3, r9
 8000706:	681e      	ldr	r6, [r3, #0]
 8000708:	2e00      	cmp	r6, #0
 800070a:	d1b2      	bne.n	8000672 <__call_exitprocs+0x3a>
 800070c:	4b0b      	ldr	r3, [pc, #44]	; (800073c <__call_exitprocs+0x104>)
 800070e:	6818      	ldr	r0, [r3, #0]
 8000710:	f000 f84e 	bl	80007b0 <__retarget_lock_release_recursive>
 8000714:	b005      	add	sp, #20
 8000716:	bc3c      	pop	{r2, r3, r4, r5}
 8000718:	4690      	mov	r8, r2
 800071a:	4699      	mov	r9, r3
 800071c:	46a2      	mov	sl, r4
 800071e:	46ab      	mov	fp, r5
 8000720:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000722:	4790      	blx	r2
 8000724:	e7d6      	b.n	80006d4 <__call_exitprocs+0x9c>
 8000726:	6074      	str	r4, [r6, #4]
 8000728:	e7c1      	b.n	80006ae <__call_exitprocs+0x76>
 800072a:	002b      	movs	r3, r5
 800072c:	3384      	adds	r3, #132	; 0x84
 800072e:	6818      	ldr	r0, [r3, #0]
 8000730:	4790      	blx	r2
 8000732:	e7cf      	b.n	80006d4 <__call_exitprocs+0x9c>
 8000734:	46b1      	mov	r9, r6
 8000736:	6836      	ldr	r6, [r6, #0]
 8000738:	e7e6      	b.n	8000708 <__call_exitprocs+0xd0>
 800073a:	46c0      	nop			; (mov r8, r8)
 800073c:	20000438 	.word	0x20000438
 8000740:	080008e0 	.word	0x080008e0
 8000744:	00000000 	.word	0x00000000

08000748 <atexit>:
 8000748:	b510      	push	{r4, lr}
 800074a:	0001      	movs	r1, r0
 800074c:	2300      	movs	r3, #0
 800074e:	2200      	movs	r2, #0
 8000750:	2000      	movs	r0, #0
 8000752:	f000 f82f 	bl	80007b4 <__register_exitproc>
 8000756:	bd10      	pop	{r4, pc}

08000758 <__libc_fini_array>:
 8000758:	b570      	push	{r4, r5, r6, lr}
 800075a:	4b09      	ldr	r3, [pc, #36]	; (8000780 <__libc_fini_array+0x28>)
 800075c:	4c09      	ldr	r4, [pc, #36]	; (8000784 <__libc_fini_array+0x2c>)
 800075e:	1ae4      	subs	r4, r4, r3
 8000760:	10a4      	asrs	r4, r4, #2
 8000762:	d009      	beq.n	8000778 <__libc_fini_array+0x20>
 8000764:	4a08      	ldr	r2, [pc, #32]	; (8000788 <__libc_fini_array+0x30>)
 8000766:	18a5      	adds	r5, r4, r2
 8000768:	00ad      	lsls	r5, r5, #2
 800076a:	18ed      	adds	r5, r5, r3
 800076c:	682b      	ldr	r3, [r5, #0]
 800076e:	3c01      	subs	r4, #1
 8000770:	4798      	blx	r3
 8000772:	3d04      	subs	r5, #4
 8000774:	2c00      	cmp	r4, #0
 8000776:	d1f9      	bne.n	800076c <__libc_fini_array+0x14>
 8000778:	f000 f8a0 	bl	80008bc <_fini>
 800077c:	bd70      	pop	{r4, r5, r6, pc}
 800077e:	46c0      	nop			; (mov r8, r8)
 8000780:	080008f4 	.word	0x080008f4
 8000784:	080008f8 	.word	0x080008f8
 8000788:	3fffffff 	.word	0x3fffffff

0800078c <__retarget_lock_init>:
 800078c:	4770      	bx	lr
 800078e:	46c0      	nop			; (mov r8, r8)

08000790 <__retarget_lock_init_recursive>:
 8000790:	4770      	bx	lr
 8000792:	46c0      	nop			; (mov r8, r8)

08000794 <__retarget_lock_close>:
 8000794:	4770      	bx	lr
 8000796:	46c0      	nop			; (mov r8, r8)

08000798 <__retarget_lock_close_recursive>:
 8000798:	4770      	bx	lr
 800079a:	46c0      	nop			; (mov r8, r8)

0800079c <__retarget_lock_acquire>:
 800079c:	4770      	bx	lr
 800079e:	46c0      	nop			; (mov r8, r8)

080007a0 <__retarget_lock_acquire_recursive>:
 80007a0:	4770      	bx	lr
 80007a2:	46c0      	nop			; (mov r8, r8)

080007a4 <__retarget_lock_try_acquire>:
 80007a4:	2001      	movs	r0, #1
 80007a6:	4770      	bx	lr

080007a8 <__retarget_lock_try_acquire_recursive>:
 80007a8:	2001      	movs	r0, #1
 80007aa:	4770      	bx	lr

080007ac <__retarget_lock_release>:
 80007ac:	4770      	bx	lr
 80007ae:	46c0      	nop			; (mov r8, r8)

080007b0 <__retarget_lock_release_recursive>:
 80007b0:	4770      	bx	lr
 80007b2:	46c0      	nop			; (mov r8, r8)

080007b4 <__register_exitproc>:
 80007b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80007b6:	464e      	mov	r6, r9
 80007b8:	4645      	mov	r5, r8
 80007ba:	46de      	mov	lr, fp
 80007bc:	4657      	mov	r7, sl
 80007be:	b5e0      	push	{r5, r6, r7, lr}
 80007c0:	4d36      	ldr	r5, [pc, #216]	; (800089c <__register_exitproc+0xe8>)
 80007c2:	b083      	sub	sp, #12
 80007c4:	0006      	movs	r6, r0
 80007c6:	6828      	ldr	r0, [r5, #0]
 80007c8:	4698      	mov	r8, r3
 80007ca:	000f      	movs	r7, r1
 80007cc:	4691      	mov	r9, r2
 80007ce:	f7ff ffe7 	bl	80007a0 <__retarget_lock_acquire_recursive>
 80007d2:	4b33      	ldr	r3, [pc, #204]	; (80008a0 <__register_exitproc+0xec>)
 80007d4:	681c      	ldr	r4, [r3, #0]
 80007d6:	23a4      	movs	r3, #164	; 0xa4
 80007d8:	005b      	lsls	r3, r3, #1
 80007da:	58e0      	ldr	r0, [r4, r3]
 80007dc:	2800      	cmp	r0, #0
 80007de:	d052      	beq.n	8000886 <__register_exitproc+0xd2>
 80007e0:	6843      	ldr	r3, [r0, #4]
 80007e2:	2b1f      	cmp	r3, #31
 80007e4:	dc13      	bgt.n	800080e <__register_exitproc+0x5a>
 80007e6:	1c5a      	adds	r2, r3, #1
 80007e8:	9201      	str	r2, [sp, #4]
 80007ea:	2e00      	cmp	r6, #0
 80007ec:	d128      	bne.n	8000840 <__register_exitproc+0x8c>
 80007ee:	9a01      	ldr	r2, [sp, #4]
 80007f0:	3302      	adds	r3, #2
 80007f2:	009b      	lsls	r3, r3, #2
 80007f4:	6042      	str	r2, [r0, #4]
 80007f6:	501f      	str	r7, [r3, r0]
 80007f8:	6828      	ldr	r0, [r5, #0]
 80007fa:	f7ff ffd9 	bl	80007b0 <__retarget_lock_release_recursive>
 80007fe:	2000      	movs	r0, #0
 8000800:	b003      	add	sp, #12
 8000802:	bc3c      	pop	{r2, r3, r4, r5}
 8000804:	4690      	mov	r8, r2
 8000806:	4699      	mov	r9, r3
 8000808:	46a2      	mov	sl, r4
 800080a:	46ab      	mov	fp, r5
 800080c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800080e:	4b25      	ldr	r3, [pc, #148]	; (80008a4 <__register_exitproc+0xf0>)
 8000810:	2b00      	cmp	r3, #0
 8000812:	d03d      	beq.n	8000890 <__register_exitproc+0xdc>
 8000814:	20c8      	movs	r0, #200	; 0xc8
 8000816:	0040      	lsls	r0, r0, #1
 8000818:	e000      	b.n	800081c <__register_exitproc+0x68>
 800081a:	bf00      	nop
 800081c:	2800      	cmp	r0, #0
 800081e:	d037      	beq.n	8000890 <__register_exitproc+0xdc>
 8000820:	22a4      	movs	r2, #164	; 0xa4
 8000822:	2300      	movs	r3, #0
 8000824:	0052      	lsls	r2, r2, #1
 8000826:	58a1      	ldr	r1, [r4, r2]
 8000828:	6043      	str	r3, [r0, #4]
 800082a:	6001      	str	r1, [r0, #0]
 800082c:	50a0      	str	r0, [r4, r2]
 800082e:	3240      	adds	r2, #64	; 0x40
 8000830:	5083      	str	r3, [r0, r2]
 8000832:	3204      	adds	r2, #4
 8000834:	5083      	str	r3, [r0, r2]
 8000836:	3301      	adds	r3, #1
 8000838:	9301      	str	r3, [sp, #4]
 800083a:	2300      	movs	r3, #0
 800083c:	2e00      	cmp	r6, #0
 800083e:	d0d6      	beq.n	80007ee <__register_exitproc+0x3a>
 8000840:	009a      	lsls	r2, r3, #2
 8000842:	4692      	mov	sl, r2
 8000844:	4482      	add	sl, r0
 8000846:	464a      	mov	r2, r9
 8000848:	2188      	movs	r1, #136	; 0x88
 800084a:	4654      	mov	r4, sl
 800084c:	5062      	str	r2, [r4, r1]
 800084e:	22c4      	movs	r2, #196	; 0xc4
 8000850:	0052      	lsls	r2, r2, #1
 8000852:	4691      	mov	r9, r2
 8000854:	4481      	add	r9, r0
 8000856:	464a      	mov	r2, r9
 8000858:	3987      	subs	r1, #135	; 0x87
 800085a:	4099      	lsls	r1, r3
 800085c:	6812      	ldr	r2, [r2, #0]
 800085e:	468b      	mov	fp, r1
 8000860:	430a      	orrs	r2, r1
 8000862:	4694      	mov	ip, r2
 8000864:	464a      	mov	r2, r9
 8000866:	4661      	mov	r1, ip
 8000868:	6011      	str	r1, [r2, #0]
 800086a:	2284      	movs	r2, #132	; 0x84
 800086c:	4641      	mov	r1, r8
 800086e:	0052      	lsls	r2, r2, #1
 8000870:	50a1      	str	r1, [r4, r2]
 8000872:	2e02      	cmp	r6, #2
 8000874:	d1bb      	bne.n	80007ee <__register_exitproc+0x3a>
 8000876:	0002      	movs	r2, r0
 8000878:	465c      	mov	r4, fp
 800087a:	328d      	adds	r2, #141	; 0x8d
 800087c:	32ff      	adds	r2, #255	; 0xff
 800087e:	6811      	ldr	r1, [r2, #0]
 8000880:	430c      	orrs	r4, r1
 8000882:	6014      	str	r4, [r2, #0]
 8000884:	e7b3      	b.n	80007ee <__register_exitproc+0x3a>
 8000886:	0020      	movs	r0, r4
 8000888:	304d      	adds	r0, #77	; 0x4d
 800088a:	30ff      	adds	r0, #255	; 0xff
 800088c:	50e0      	str	r0, [r4, r3]
 800088e:	e7a7      	b.n	80007e0 <__register_exitproc+0x2c>
 8000890:	6828      	ldr	r0, [r5, #0]
 8000892:	f7ff ff8d 	bl	80007b0 <__retarget_lock_release_recursive>
 8000896:	2001      	movs	r0, #1
 8000898:	4240      	negs	r0, r0
 800089a:	e7b1      	b.n	8000800 <__register_exitproc+0x4c>
 800089c:	20000438 	.word	0x20000438
 80008a0:	080008e0 	.word	0x080008e0
 80008a4:	00000000 	.word	0x00000000

080008a8 <_exit>:
 80008a8:	e7fe      	b.n	80008a8 <_exit>
 80008aa:	46c0      	nop			; (mov r8, r8)

080008ac <__EH_FRAME_BEGIN__>:
 80008ac:	0000 0000                                   ....

080008b0 <_init>:
 80008b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008b2:	46c0      	nop			; (mov r8, r8)
 80008b4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008b6:	bc08      	pop	{r3}
 80008b8:	469e      	mov	lr, r3
 80008ba:	4770      	bx	lr

080008bc <_fini>:
 80008bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008be:	46c0      	nop			; (mov r8, r8)
 80008c0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008c2:	bc08      	pop	{r3}
 80008c4:	469e      	mov	lr, r3
 80008c6:	4770      	bx	lr
