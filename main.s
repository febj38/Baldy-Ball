	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	push	{r4, lr}
	mov	r3, #67108864
	mov	lr, #1792
	ldr	r2, .L4
	ldr	r1, .L4+4
	str	ip, [r2]
	ldr	r0, .L4+8
	ldr	ip, .L4+12
	ldr	r2, .L4+16
	strh	lr, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, [r2, #12]
	strh	r0, [r3, #10]	@ movhi
	ldr	r0, [r2, #16]
	strh	ip, [r3, #12]	@ movhi
	mov	r2, #1
	ldr	r3, .L4+20
	ldr	r4, .L4+24
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r3, #3872
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	mov	lr, pc
	bx	r4
	mov	r3, #768
	mov	r0, #3
	ldr	r2, .L4+44
	ldr	r1, .L4+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+52
	ldr	r1, .L4+56
	mov	lr, pc
	bx	r4
	mov	r3, #400
	mov	r0, #3
	ldr	r2, .L4+60
	ldr	r1, .L4+64
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+68
	ldr	r1, .L4+72
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	state
	.word	7937
	.word	3844
	.word	1800
	.word	songs
	.word	playSoundA
	.word	DMANow
	.word	vballmainPal
	.word	vballmainTiles
	.word	100726784
	.word	vballmainMap
	.word	100679680
	.word	vballmainPar1Tiles
	.word	100694016
	.word	vballmainPar1Map
	.word	100696064
	.word	baldyPar2Tiles
	.word	100677632
	.word	baldyPar2Map
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L8+12
	ldr	ip, .L8+16
	ldr	lr, [r0]
	ldr	r2, .L8+20
	ldr	r3, .L8+24
	ldr	r1, .L8+28
	str	lr, [ip, #8]
	ldr	r0, [r2]
	ldr	lr, .L8+32
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	r2, .L8+36
	str	r3, [ip, #12]
	str	r2, [ip, #16]
	str	r1, [ip, #28]
	str	r0, [ip, #32]
	str	lr, [ip, #36]
	ldr	r4, .L8+40
	mov	r3, #7680
	mov	r0, #3
	ldr	r2, .L8+44
	ldr	r1, .L8+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+52
	ldr	r1, .L8+56
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+60
	ldr	r1, .L8+64
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+72
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r0, #4864
	mov	ip, #7936
	mov	r2, #0
	ldr	r1, .L8+76
	strh	r0, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	ldr	r0, .L8+80
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, .L8+84
	ldrh	r0, [r0, #48]
	ldr	r3, .L8+88
	pop	{r4, lr}
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	setupSounds
	.word	setupInterrupts
	.word	wiiSong_sampleRate
	.word	songs
	.word	slap_length
	.word	wiiSong_length
	.word	slap_sampleRate
	.word	slap_data
	.word	wiiSong_data
	.word	DMANow
	.word	100679680
	.word	_dVballCourtTiles
	.word	100728832
	.word	baldyTiles
	.word	83886592
	.word	baldyPal
	.word	hideSprites
	.word	initGame
	.word	3845
	.word	67109120
	.word	buttons
	.word	oldButtons
	.size	initialize, .-initialize
	.align	2
	.global	goToInstruction1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction1, %function
goToInstruction1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #67108864
	mov	r5, #256
	ldr	r3, .L12
	strh	r5, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7936
	mov	r3, r5
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L12+4
	mov	r2, #83886080
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L12+12
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+20
	mov	r0, #3
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r4
	mov	r2, #11
	ldr	r3, .L12+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	hideSprites
	.word	DMANow
	.word	instructions1Pal
	.word	5488
	.word	instructions1Tiles
	.word	100726784
	.word	instructions1Map
	.word	state
	.size	goToInstruction1, .-goToInstruction1
	.align	2
	.global	goToInstruction2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction2, %function
goToInstruction2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #256
	mov	r1, #7936
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L16
	strh	r1, [r2, #8]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L16+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L16+8
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+16
	mov	r0, #3
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r2, #12
	ldr	r3, .L16+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	instructions2Pal
	.word	5984
	.word	instructions2Tiles
	.word	100726784
	.word	instructions2Map
	.word	state
	.size	goToInstruction2, .-goToInstruction2
	.align	2
	.global	instruction1
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction1, %function
instruction1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToInstruction2
.L24:
	.align	2
.L23:
	.word	oldButtons
	.word	buttons
	.size	instruction1, .-instruction1
	.align	2
	.global	goToInstruction3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction3, %function
goToInstruction3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #67108864
	mov	r5, #256
	ldr	r3, .L27
	strh	r5, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7936
	mov	r3, r5
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L27+4
	mov	r2, #83886080
	ldr	r1, .L27+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L27+12
	ldr	r1, .L27+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L27+20
	mov	r0, #3
	ldr	r1, .L27+24
	mov	lr, pc
	bx	r4
	mov	r2, #13
	ldr	r3, .L27+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
	.word	hideSprites
	.word	DMANow
	.word	instructions3Pal
	.word	6944
	.word	instructions3Tiles
	.word	100726784
	.word	instructions3Map
	.word	state
	.size	goToInstruction3, .-goToInstruction3
	.align	2
	.global	instruction2
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction2, %function
instruction2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L41
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L30
	ldr	r2, .L41+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L39
.L30:
	tst	r3, #4
	beq	.L29
	ldr	r3, .L41+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L40
.L29:
	pop	{r4, lr}
	bx	lr
.L40:
	pop	{r4, lr}
	b	goToInstruction1
.L39:
	bl	goToInstruction3
	ldrh	r3, [r4]
	b	.L30
.L42:
	.align	2
.L41:
	.word	oldButtons
	.word	buttons
	.size	instruction2, .-instruction2
	.align	2
	.global	goToControls
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToControls, %function
goToControls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #67108864
	mov	r5, #256
	ldr	r3, .L45
	strh	r5, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7936
	mov	r3, r5
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L45+4
	mov	r2, #83886080
	ldr	r1, .L45+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L45+12
	ldr	r1, .L45+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L45+20
	mov	r0, #3
	ldr	r1, .L45+24
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L45+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	hideSprites
	.word	DMANow
	.word	controlsPal
	.word	4688
	.word	controlsTiles
	.word	100726784
	.word	controlsMap
	.word	state
	.size	goToControls, .-goToControls
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, lr}
	mov	lr, #128
	ldr	r1, .L54
	ldr	ip, .L54+4
	strh	r2, [r3, #18]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldrh	r2, [r1]
	ldr	r1, [ip]
	lsl	r0, r1, #16
	lsr	r0, r0, #16
	strh	r2, [r3, #22]	@ movhi
	rsb	r2, r0, #0
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	strh	lr, [r3, #26]	@ movhi
	ldr	r2, .L54+8
	ldr	r3, .L54+12
	ldr	r0, [r2]
	ldrh	r3, [r3]
	add	r1, r1, #1
	add	r0, r0, #1
	tst	r3, #8
	str	r1, [ip]
	str	r0, [r2]
	beq	.L47
	ldr	r3, .L54+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L53
.L47:
	pop	{r4, lr}
	bx	lr
.L53:
	ldr	r3, .L54+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToControls
.L55:
	.align	2
.L54:
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	srand
	.size	start, .-start
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"gettin called?\000"
	.text
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #7936
	mov	r3, #67108864
	mov	r2, #4352
	push	{r4, lr}
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r2, .L58
	mov	lr, pc
	bx	r2
	ldr	r3, .L58+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L58+12
	ldr	r3, .L58+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L58+20
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L58+24
	mov	lr, pc
	bx	r4
	mov	r3, #7680
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L58+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L58+32
	mov	r0, #3
	ldr	r1, .L58+36
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L58+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
	.word	drawScore
	.word	drawOppScore
	.word	hidePowerBar
	.word	.LC0
	.word	mgba_printf
	.word	DMANow
	.word	_dVballCourtPal
	.word	_dVballCourtTiles
	.word	100726784
	.word	_dVballCourtMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	controls
	.syntax unified
	.arm
	.fpu softvfp
	.type	controls, %function
controls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L72
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L61
	ldr	r2, .L72+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L70
.L61:
	tst	r3, #2
	beq	.L60
	ldr	r3, .L72+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L71
.L60:
	pop	{r4, lr}
	bx	lr
.L71:
	pop	{r4, lr}
	b	goToGame
.L70:
	bl	goToInstruction1
	ldrh	r3, [r4]
	b	.L61
.L73:
	.align	2
.L72:
	.word	oldButtons
	.word	buttons
	.size	controls, .-controls
	.align	2
	.global	instruction3
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction3, %function
instruction3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L86
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L75
	ldr	r2, .L86+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L84
.L75:
	tst	r3, #4
	beq	.L74
	ldr	r3, .L86+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L85
.L74:
	pop	{r4, lr}
	bx	lr
.L85:
	pop	{r4, lr}
	b	goToInstruction2
.L84:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L75
.L87:
	.align	2
.L86:
	.word	oldButtons
	.word	buttons
	.size	instruction3, .-instruction3
	.align	2
	.global	goToServe1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToServe1, %function
goToServe1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #4352
	mov	r4, #67108864
	ldr	r3, .L90
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7936
	mov	r3, #256
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L90+4
	mov	r2, #83886080
	ldr	r1, .L90+8
	mov	lr, pc
	bx	r4
	mov	r3, #1344
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L90+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L90+16
	mov	r0, #3
	ldr	r1, .L90+20
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L90+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L91:
	.align	2
.L90:
	.word	hideSprites
	.word	DMANow
	.word	serve1Pal
	.word	serve1Tiles
	.word	100726784
	.word	serve1Map
	.word	state
	.size	goToServe1, .-goToServe1
	.align	2
	.global	goToServe2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToServe2, %function
goToServe2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #4352
	mov	r4, #67108864
	ldr	r3, .L94
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7936
	mov	r3, #256
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L94+4
	mov	r2, #83886080
	ldr	r1, .L94+8
	mov	lr, pc
	bx	r4
	mov	r3, #1344
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L94+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L94+16
	mov	r0, #3
	ldr	r1, .L94+20
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L94+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L95:
	.align	2
.L94:
	.word	hideSprites
	.word	DMANow
	.word	serve2Pal
	.word	serve2Tiles
	.word	100726784
	.word	serve2Map
	.word	state
	.size	goToServe2, .-goToServe2
	.align	2
	.global	goToServe3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToServe3, %function
goToServe3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #4352
	mov	r4, #67108864
	ldr	r3, .L98
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7936
	mov	r3, #256
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L98+4
	mov	r2, #83886080
	ldr	r1, .L98+8
	mov	lr, pc
	bx	r4
	mov	r3, #1344
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L98+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L98+16
	mov	r0, #3
	ldr	r1, .L98+20
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L98+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L99:
	.align	2
.L98:
	.word	hideSprites
	.word	DMANow
	.word	serve3Pal
	.word	serve3Tiles
	.word	100726784
	.word	serve3Map
	.word	state
	.size	goToServe3, .-goToServe3
	.align	2
	.global	goToServe4
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToServe4, %function
goToServe4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #4352
	mov	r4, #67108864
	ldr	r3, .L102
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7936
	mov	r3, #256
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L102+4
	mov	r2, #83886080
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1344
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L102+16
	mov	r0, #3
	ldr	r1, .L102+20
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L102+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L103:
	.align	2
.L102:
	.word	hideSprites
	.word	DMANow
	.word	serve4Pal
	.word	serve4Tiles
	.word	100726784
	.word	serve4Map
	.word	state
	.size	goToServe4, .-goToServe4
	.align	2
	.global	goToServe5
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToServe5, %function
goToServe5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #4352
	mov	r4, #67108864
	ldr	r3, .L106
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7936
	mov	r3, #256
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L106+4
	mov	r2, #83886080
	ldr	r1, .L106+8
	mov	lr, pc
	bx	r4
	mov	r3, #1344
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L106+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L106+16
	mov	r0, #3
	ldr	r1, .L106+20
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L106+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L107:
	.align	2
.L106:
	.word	hideSprites
	.word	DMANow
	.word	serve5Pal
	.word	serve5Tiles
	.word	100726784
	.word	serve5Map
	.word	state
	.size	goToServe5, .-goToServe5
	.align	2
	.global	serve1
	.syntax unified
	.arm
	.fpu softvfp
	.type	serve1, %function
serve1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L137
	mov	lr, pc
	bx	r3
	ldr	r3, .L137+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L137+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L137+12
	ldr	r3, .L137+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L137+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L137+24
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #128
	beq	.L109
	ldr	r2, .L137+28
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L133
.L109:
	tst	r3, #64
	beq	.L110
	ldr	r2, .L137+28
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L134
.L110:
	tst	r3, #4
	beq	.L108
	ldr	r3, .L137+28
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L108
	ldr	r3, .L137+32
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L135
	cmp	r3, #1
	moveq	lr, #3
	moveq	r0, #200
	moveq	r2, #9
	bne	.L136
.L132:
	ldr	ip, .L137+36
	ldr	r1, .L137+40
	ldr	r3, .L137+44
	str	lr, [ip, #12]
	str	r0, [r1, #4]
	str	r2, [r3]
.L113:
	ldr	r3, .L137+48
	mov	r2, #0
	ldr	r1, [r3, #32]
	ldr	r0, [r3, #36]
	ldr	r3, .L137+52
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L108:
	pop	{r4, r5, r6, lr}
	bx	lr
.L134:
	bl	goToServe3
	ldrh	r3, [r4]
	b	.L110
.L133:
	bl	goToServe2
	ldrh	r3, [r4]
	b	.L109
.L135:
	mov	r3, #4
	mov	r1, #110
	ldr	ip, .L137+36
	ldr	r0, .L137+44
	ldr	r2, .L137+40
	str	r3, [ip, #12]
	str	r3, [r0]
	str	r1, [r2, #4]
	b	.L113
.L136:
	cmp	r3, #2
	moveq	lr, #3
	moveq	r0, #163
	moveq	r2, #8
	beq	.L132
	cmp	r3, #3
	moveq	lr, #2
	moveq	r0, #135
	moveq	r2, #10
	beq	.L132
	cmp	r3, #4
	moveq	lr, #1
	moveq	r0, #110
	moveq	r2, #15
	beq	.L132
	b	.L113
.L138:
	.align	2
.L137:
	.word	drawPowerBar
	.word	updatePowerBar
	.word	hideOthers
	.word	oldButtons
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	powerBar
	.word	ball
	.word	.LANCHOR0
	.word	transNum
	.word	songs
	.word	playSoundB
	.size	serve1, .-serve1
	.align	2
	.global	serve2
	.syntax unified
	.arm
	.fpu softvfp
	.type	serve2, %function
serve2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L179
	mov	lr, pc
	bx	r3
	ldr	r3, .L179+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L179+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L179+12
	ldr	r3, .L179+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L179+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L179+24
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #64
	beq	.L140
	ldr	r2, .L179+28
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L172
.L140:
	tst	r3, #128
	beq	.L141
	ldr	r2, .L179+28
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L173
.L141:
	tst	r3, #16
	beq	.L142
	ldr	r2, .L179+28
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L174
.L142:
	tst	r3, #32
	beq	.L143
	ldr	r2, .L179+28
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L175
.L143:
	tst	r3, #4
	beq	.L139
	ldr	r3, .L179+28
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L139
	ldr	r3, .L179+32
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L176
	cmp	r3, #1
	moveq	lr, #3
	moveq	r0, #200
	moveq	r2, #9
	bne	.L177
.L171:
	ldr	ip, .L179+36
	ldr	r1, .L179+40
	ldr	r3, .L179+44
	str	lr, [ip, #12]
	str	r0, [r1, #4]
	str	r2, [r3]
.L146:
	ldr	r3, .L179+48
	mov	r2, #0
	ldr	r1, [r3, #32]
	ldr	r0, [r3, #36]
	ldr	r3, .L179+52
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L139:
	pop	{r4, r5, r6, lr}
	bx	lr
.L175:
	bl	goToServe4
	ldrh	r3, [r4]
	b	.L143
.L172:
	bl	goToServe1
	ldrh	r3, [r4]
	b	.L140
.L173:
	bl	goToServe3
	ldrh	r3, [r4]
	b	.L141
.L174:
	bl	goToServe5
	ldrh	r3, [r4]
	b	.L142
.L176:
	mov	lr, #4
	mov	r0, #216
	mov	r2, #8
	b	.L171
.L177:
	cmp	r3, #2
	bne	.L178
	mov	lr, #185
	mov	r0, #13
	ldr	ip, .L179+40
	ldr	r1, .L179+44
	ldr	r2, .L179+36
	str	lr, [ip, #4]
	str	r0, [r1]
	str	r3, [r2, #12]
	b	.L146
.L178:
	cmp	r3, #3
	moveq	lr, #2
	moveq	r0, #172
	moveq	r2, #15
	beq	.L171
	cmp	r3, #4
	moveq	lr, #1
	moveq	r0, #155
	moveq	r2, #22
	beq	.L171
	b	.L146
.L180:
	.align	2
.L179:
	.word	drawPowerBar
	.word	updatePowerBar
	.word	hideOthers
	.word	oldButtons
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	powerBar
	.word	ball
	.word	.LANCHOR0
	.word	transNum
	.word	songs
	.word	playSoundB
	.size	serve2, .-serve2
	.align	2
	.global	serve3
	.syntax unified
	.arm
	.fpu softvfp
	.type	serve3, %function
serve3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L211
	mov	lr, pc
	bx	r3
	ldr	r3, .L211+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L211+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L211+12
	ldr	r3, .L211+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L211+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L211+24
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #128
	beq	.L182
	ldr	r2, .L211+28
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L206
.L182:
	tst	r3, #64
	beq	.L183
	ldr	r2, .L211+28
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L207
.L183:
	tst	r3, #4
	beq	.L181
	ldr	r3, .L211+28
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L181
	ldr	r3, .L211+32
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L208
	cmp	r3, #1
	moveq	lr, #3
	moveq	r0, #220
	moveq	r2, #11
	bne	.L209
.L205:
	ldr	ip, .L211+36
	ldr	r1, .L211+40
	ldr	r3, .L211+44
	str	lr, [ip, #12]
	str	r0, [r1, #4]
	str	r2, [r3]
.L186:
	ldr	r3, .L211+48
	mov	r2, #0
	ldr	r1, [r3, #32]
	ldr	r0, [r3, #36]
	ldr	r3, .L211+52
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L181:
	pop	{r4, r5, r6, lr}
	bx	lr
.L207:
	bl	goToServe2
	ldrh	r3, [r4]
	b	.L183
.L206:
	bl	goToServe1
	ldrh	r3, [r4]
	b	.L182
.L208:
	mov	lr, #4
	mov	r0, #238
	mov	r2, #9
	b	.L205
.L209:
	cmp	r3, #2
	bne	.L210
	mov	lr, #205
	mov	r0, #15
	ldr	ip, .L211+40
	ldr	r1, .L211+44
	ldr	r2, .L211+36
	str	lr, [ip, #4]
	str	r0, [r1]
	str	r3, [r2, #12]
	b	.L186
.L210:
	cmp	r3, #3
	moveq	lr, #2
	moveq	r0, #190
	moveq	r2, #14
	beq	.L205
	cmp	r3, #4
	moveq	lr, #1
	moveq	r0, #166
	moveq	r2, #24
	beq	.L205
	b	.L186
.L212:
	.align	2
.L211:
	.word	drawPowerBar
	.word	updatePowerBar
	.word	hideOthers
	.word	oldButtons
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	powerBar
	.word	ball
	.word	.LANCHOR0
	.word	transNum
	.word	songs
	.word	playSoundB
	.size	serve3, .-serve3
	.align	2
	.global	serve4
	.syntax unified
	.arm
	.fpu softvfp
	.type	serve4, %function
serve4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L237
	mov	lr, pc
	bx	r3
	ldr	r3, .L237+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L237+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L237+12
	ldr	r3, .L237+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L237+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L237+24
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #16
	beq	.L214
	ldr	r2, .L237+28
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L234
.L214:
	tst	r3, #4
	beq	.L213
	ldr	r3, .L237+28
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L213
	ldr	r3, .L237+32
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L235
	cmp	r3, #1
	bne	.L236
	mov	r1, #4
	mov	lr, #180
	mov	r0, #7
	ldr	r2, .L237+36
	ldr	ip, .L237+40
	str	r1, [r2, #12]
	ldr	r1, .L237+44
	str	r3, [r2, #8]
	str	lr, [ip, #4]
	str	r0, [r1]
.L217:
	ldr	r3, .L237+48
	mov	r2, #0
	ldr	r1, [r3, #32]
	ldr	r0, [r3, #36]
	ldr	r3, .L237+52
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L213:
	pop	{r4, r5, r6, lr}
	bx	lr
.L234:
	bl	goToServe2
	ldrh	r3, [r4]
	b	.L214
.L235:
	mov	r2, #4
	mov	lr, #1
	mov	ip, #205
	mov	r1, #8
.L233:
	ldr	r3, .L237+36
	ldr	r0, .L237+40
	str	r2, [r3, #12]
	ldr	r2, .L237+44
	str	lr, [r3, #8]
	str	ip, [r0, #4]
	str	r1, [r2]
	b	.L217
.L236:
	cmp	r3, #2
	moveq	r2, #3
	moveq	lr, #1
	moveq	ip, #150
	moveq	r1, #7
	beq	.L233
	cmp	r3, #3
	moveq	r2, #2
	moveq	lr, #1
	moveq	ip, #136
	moveq	r1, #9
	beq	.L233
	cmp	r3, #4
	bne	.L217
	mov	r2, #1
	mov	lr, #76
	mov	r0, #9
	ldr	r3, .L237+36
	ldr	ip, .L237+40
	ldr	r1, .L237+44
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	lr, [ip, #4]
	str	r0, [r1]
	b	.L217
.L238:
	.align	2
.L237:
	.word	drawPowerBar
	.word	updatePowerBar
	.word	hideOthers
	.word	oldButtons
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	powerBar
	.word	ball
	.word	.LANCHOR0
	.word	transNum
	.word	songs
	.word	playSoundB
	.size	serve4, .-serve4
	.align	2
	.global	serve5
	.syntax unified
	.arm
	.fpu softvfp
	.type	serve5, %function
serve5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L265
	mov	lr, pc
	bx	r3
	ldr	r3, .L265+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L265+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L265+12
	ldr	r3, .L265+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L265+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L265+24
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #32
	beq	.L240
	ldr	r2, .L265+28
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L261
.L240:
	tst	r3, #4
	beq	.L239
	ldr	r3, .L265+28
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L239
	ldr	r3, .L265+32
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L262
	cmp	r3, #1
	bne	.L263
	mov	r2, #4
	mvn	lr, #0
	mov	ip, #180
	mov	r1, #7
.L259:
	ldr	r3, .L265+36
	ldr	r0, .L265+40
	str	r2, [r3, #12]
	ldr	r2, .L265+44
	str	lr, [r3, #8]
	str	ip, [r0, #4]
	str	r1, [r2]
.L243:
	ldr	r3, .L265+48
	mov	r2, #0
	ldr	r1, [r3, #32]
	ldr	r0, [r3, #36]
	ldr	r3, .L265+52
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L239:
	pop	{r4, r5, r6, lr}
	bx	lr
.L261:
	bl	goToServe2
	ldrh	r3, [r4]
	b	.L240
.L262:
	mov	r2, #4
	mvn	lr, #0
	mov	ip, #205
	mov	r1, #8
	b	.L259
.L263:
	cmp	r3, #2
	moveq	r2, #3
	mvneq	lr, #0
	moveq	ip, #150
	moveq	r1, #7
	beq	.L259
	cmp	r3, #3
	moveq	r2, #2
	mvneq	lr, #0
	moveq	ip, #136
	bne	.L264
.L260:
	mov	r1, #9
	b	.L259
.L264:
	cmp	r3, #4
	moveq	r2, #1
	mvneq	lr, #0
	moveq	ip, #76
	beq	.L260
	b	.L243
.L266:
	.align	2
.L265:
	.word	drawPowerBar
	.word	updatePowerBar
	.word	hideOthers
	.word	oldButtons
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	powerBar
	.word	ball
	.word	.LANCHOR0
	.word	transNum
	.word	songs
	.word	playSoundB
	.size	serve5, .-serve5
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #2
	mov	r1, #67108864
	mov	r3, #256
	mov	r0, #7936
	push	{r4, lr}
	ldr	r2, .L269
	ldr	r4, .L269+4
	str	ip, [r2]
	strh	r3, [r1]	@ movhi
	mov	r2, #83886080
	strh	r0, [r1, #8]	@ movhi
	mov	r0, #3
	ldr	r1, .L269+8
	mov	lr, pc
	bx	r4
	mov	r3, #208
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L269+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L269+16
	ldr	r1, .L269+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L270:
	.align	2
.L269:
	.word	state
	.word	DMANow
	.word	pausePal
	.word	pauseTiles
	.word	100726784
	.word	pauseMap
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L276
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L276+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L277:
	.align	2
.L276:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #7936
	mov	r4, #3
	mov	r1, #67108864
	mov	r3, #256
	ldr	r2, .L280
	ldr	r5, .L280+4
	str	r4, [r2]
	mov	r0, r4
	strh	r3, [r1]	@ movhi
	mov	r2, #83886080
	strh	ip, [r1, #8]	@ movhi
	ldr	r1, .L280+8
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #3504
	mov	r2, #100663296
	ldr	r1, .L280+12
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L280+16
	ldr	r1, .L280+20
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, lr}
	bx	lr
.L281:
	.align	2
.L280:
	.word	state
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100726784
	.word	winMap
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L287
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L287+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bxne	lr
	ldr	r0, .L287+8
	ldr	r1, .L287+12
	ldr	r2, .L287+16
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2, #8]
	b	goToStart
.L288:
	.align	2
.L287:
	.word	oldButtons
	.word	buttons
	.word	score
	.word	oppScore
	.word	.LANCHOR0
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #4
	mov	r1, #67108864
	mov	r3, #256
	mov	r0, #7936
	push	{r4, lr}
	ldr	r2, .L291
	ldr	r4, .L291+4
	str	ip, [r2]
	strh	r3, [r1]	@ movhi
	mov	r2, #83886080
	strh	r0, [r1, #8]	@ movhi
	mov	r0, #3
	ldr	r1, .L291+8
	mov	lr, pc
	bx	r4
	mov	r3, #6144
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L291+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L291+16
	ldr	r1, .L291+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L292:
	.align	2
.L291:
	.word	state
	.word	DMANow
	.word	losePal
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L324
	ldrh	r3, [r6]
	tst	r3, #8
	sub	sp, sp, #20
	beq	.L294
	ldr	r2, .L324+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L318
.L294:
	tst	r3, #256
	beq	.L295
	ldr	r3, .L324+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L319
.L295:
	ldr	r4, .L324+8
	ldr	r2, [r4, #16]
	ldr	r1, [r4, #4]
	ldr	r5, .L324+12
	ldr	r0, [r4, #12]
	add	r1, r2, r1
	sub	r1, r1, #1
	ldr	lr, [r5, #16]
	ldr	ip, [r5]
	add	r0, r1, r0
	ldr	r1, [r5, #4]
	ldr	r3, [r4, #20]
	ldr	r7, [r5, #20]
	stm	sp, {r1, ip, lr}
	str	r7, [sp, #12]
	sub	r2, r2, #1
	ldr	r1, [r4]
	ldr	r7, .L324+16
	sub	r3, r3, #1
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L296
.L299:
	ldr	r3, .L324+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L300
	ldrh	r3, [r6]
	tst	r3, #1
	beq	.L300
	ldr	r3, .L324+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L320
.L300:
	ldr	r3, .L324+24
	ldr	r2, [r3]
	cmp	r2, #7
	beq	.L321
	ldr	r3, .L324+28
	ldr	r3, [r3]
	cmp	r3, #7
	beq	.L322
.L303:
	ldrh	r3, [r6]
	tst	r3, #2
	beq	.L304
	ldr	r3, .L324+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L323
.L304:
	ldr	r3, .L324+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L324+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L324+40
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L322:
	bl	goToLose
	b	.L303
.L321:
	ldr	r1, .L324+44
	ldr	r2, [r1, #8]
	add	r2, r2, #1
	cmp	r2, #1
	str	r2, [r1, #8]
	ldreq	r2, .L324+48
	ldreq	r1, .L324+52
	strheq	r1, [r2, #2]	@ movhi
	mov	r2, #0
	ldr	r1, .L324+28
	str	r2, [r3]
	str	r2, [r1]
	b	.L303
.L296:
	add	ip, r5, #16
	ldm	ip, {ip, lr}
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #20]
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	str	lr, [sp, #12]
	ldm	r5, {r4, lr}
	add	r0, r2, r0
	add	r1, r3, r1
	stmib	sp, {r4, ip}
	str	lr, [sp]
	sub	r0, r0, #1
	sub	r2, r2, #1
	sub	r1, r1, #1
	sub	r3, r3, #1
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L299
	b	.L300
.L319:
	bl	goToControls
	b	.L295
.L323:
	ldr	r3, .L324+56
	mov	lr, pc
	bx	r3
	b	.L304
.L318:
	bl	goToPause
	ldrh	r3, [r6]
	b	.L294
.L320:
	bl	goToServe1
	b	.L300
.L325:
	.align	2
.L324:
	.word	oldButtons
	.word	buttons
	.word	baldy
	.word	ball
	.word	collision
	.word	serving
	.word	score
	.word	oppScore
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	.LANCHOR0
	.word	100727936
	.word	479
	.word	updateScore
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L331
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L331+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bxne	lr
	ldr	r1, .L331+8
	ldr	r2, .L331+12
	str	r3, [r1]
	str	r3, [r2]
	b	goToStart
.L332:
	.align	2
.L331:
	.word	oldButtons
	.word	buttons
	.word	score
	.word	oppScore
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L358
	mov	lr, pc
	bx	r3
	ldr	r4, .L358+4
	ldr	r10, .L358+8
	ldr	r9, .L358+12
	ldr	r8, .L358+16
	ldr	r7, .L358+20
	ldr	r5, .L358+24
.L350:
	ldr	r3, .L358+28
	mov	r6, r3
	ldrh	fp, [r3]
	ldr	r2, .L358+32
	strh	fp, [r2]	@ movhi
	ldr	r2, .L358+36
	ldr	r1, [r7, #40]
	ldrh	lr, [r2, #48]
	ldr	r3, [r9, #32]
	ldr	r2, [r9, #40]
	ldr	ip, [r10, #40]
	add	r3, r3, r2, lsl #5
	add	r2, r1, #27
	ldr	r1, [r10, #32]
	ldr	r0, [r8, #40]
	add	ip, ip, #9
	add	ip, r1, ip, lsl #5
	add	r3, r3, #292
	ldr	r1, [r8, #32]
	add	r0, r0, #3
	add	r3, r3, #1
	add	r0, r1, r0, lsl #5
	lsl	r3, r3, #1
	ldr	r1, [r7, #32]
	strh	r3, [r4, #28]	@ movhi
	ldr	r3, [r9, #4]
	add	r1, r1, r2, lsl #3
	lsl	ip, ip, #1
	ldr	r2, [r10, #4]
	strh	ip, [r4, #20]	@ movhi
	and	r3, r3, r5
	ldr	ip, [r8, #4]
	lsl	r0, r0, #1
	orr	r3, r3, #16384
	and	r2, r2, r5
	strh	lr, [r6]	@ movhi
	strh	r0, [r4, #36]	@ movhi
	ldr	r6, .L358+40
	ldr	r0, [r7, #4]
	strh	r3, [r4, #26]	@ movhi
	orr	r2, r2, #16384
	ldrb	r3, [r8]	@ zero_extendqisi2
	and	ip, ip, r5
	strh	r2, [r4, #18]	@ movhi
	lsl	r1, r1, #2
	ldrb	r2, [r7]	@ zero_extendqisi2
	orr	ip, ip, #16384
	strh	r1, [r6]	@ movhi
	strh	ip, [r4, #34]	@ movhi
	ldrb	r1, [r9]	@ zero_extendqisi2
	ldrb	ip, [r10]	@ zero_extendqisi2
	strh	r3, [r4, #32]	@ movhi
	and	r0, r0, r5
	ldr	r3, .L358+44
	orr	r0, r0, #16384
	orr	r2, r2, #16384
	strh	r0, [r6, #-2]	@ movhi
	strh	r2, [r6, #-4]	@ movhi
	strh	ip, [r4, #16]	@ movhi
	strh	r1, [r4, #24]	@ movhi
	ldr	r3, [r3]
	cmp	r3, #13
	ldrls	pc, [pc, r3, asl #2]
	b	.L334
.L336:
	.word	.L349
	.word	.L348
	.word	.L347
	.word	.L346
	.word	.L345
	.word	.L344
	.word	.L343
	.word	.L342
	.word	.L341
	.word	.L340
	.word	.L339
	.word	.L338
	.word	.L337
	.word	.L335
.L335:
	ldr	r3, .L358+48
	mov	lr, pc
	bx	r3
.L334:
	ldr	r3, .L358+52
	mov	lr, pc
	bx	r3
	b	.L350
.L337:
	ldr	r3, .L358+56
	mov	lr, pc
	bx	r3
	b	.L334
.L338:
	tst	fp, #8
	beq	.L334
	tst	lr, #8
	bne	.L334
	ldr	r3, .L358+60
	mov	lr, pc
	bx	r3
	b	.L334
.L339:
	ldr	r3, .L358+64
	mov	lr, pc
	bx	r3
	b	.L334
.L341:
	ldr	r3, .L358+68
	mov	lr, pc
	bx	r3
	b	.L334
.L342:
	ldr	r3, .L358+72
	mov	lr, pc
	bx	r3
	b	.L334
.L340:
	ldr	r3, .L358+76
	mov	lr, pc
	bx	r3
	b	.L334
.L343:
	ldr	r3, .L358+80
	mov	lr, pc
	bx	r3
	b	.L334
.L344:
	ldr	r3, .L358+84
	mov	lr, pc
	bx	r3
	b	.L334
.L345:
	ldr	r3, .L358+88
	mov	lr, pc
	bx	r3
	b	.L334
.L346:
	ldr	r3, .L358+92
	mov	lr, pc
	bx	r3
	b	.L334
.L347:
	tst	fp, #8
	beq	.L334
	tst	lr, #8
	bne	.L334
	ldr	r3, .L358+96
	mov	lr, pc
	bx	r3
	b	.L334
.L349:
	ldr	r3, .L358+100
	mov	lr, pc
	bx	r3
	b	.L334
.L348:
	ldr	r3, .L358+104
	mov	lr, pc
	bx	r3
	b	.L334
.L359:
	.align	2
.L358:
	.word	initialize
	.word	shadowOAM
	.word	setterL
	.word	setterR
	.word	ball
	.word	scor
	.word	511
	.word	buttons
	.word	oldButtons
	.word	67109120
	.word	shadowOAM+260
	.word	state
	.word	instruction3
	.word	waitForVBlank
	.word	instruction2
	.word	goToInstruction2
	.word	controls
	.word	serve4
	.word	serve3
	.word	serve5
	.word	serve2
	.word	serve1
	.word	lose
	.word	win
	.word	goToGame
	.word	start
	.word	game
	.size	main, .-main
	.global	seed
	.comm	songs,40,4
	.comm	shadowOAM,1024,4
	.global	y
	.comm	scor,72,4
	.comm	powerBar,72,4
	.comm	Tens,72,4
	.comm	ones,72,4
	.comm	ball,72,4
	.comm	opp,72,4
	.comm	setterR,72,4
	.comm	setterL,72,4
	.comm	baldy,72,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.global	oppSet
	.global	point
	.global	servePower
	.global	ballPower
	.global	enemies
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.type	enemies, %object
	.size	enemies, 4
enemies:
	.word	4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	seed, %object
	.size	seed, 4
seed:
	.space	4
	.type	ballPower, %object
	.size	ballPower, 4
ballPower:
	.space	4
	.type	point, %object
	.size	point, 4
point:
	.space	4
	.type	y, %object
	.size	y, 4
y:
	.space	4
	.type	oppSet, %object
	.size	oppSet, 4
oppSet:
	.space	4
	.type	servePower, %object
	.size	servePower, 4
servePower:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
