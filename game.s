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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateBall.part.0, %function
animateBall.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L5
	ldr	r1, [r2, #44]
	ldr	r3, [r2, #32]
	sub	r1, r1, #1
	cmp	r3, r1
	movge	r3, #0
	addlt	r3, r3, #1
	str	r3, [r2, #32]
	bx	lr
.L6:
	.align	2
.L5:
	.word	ball
	.size	animateBall.part.0, .-animateBall.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #2
	mov	r3, #0
	mov	r2, #5
	mov	ip, #3
	mov	fp, #74
	mov	lr, #80
	mov	r10, #185
	ldr	r1, .L9
	mov	r0, #1
	mov	r9, #90
	str	r8, [r1, #12]
	str	r8, [r1, #8]
	mov	r8, #135
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	str	fp, [r1]
	str	r2, [r1, #4]
	str	r3, [r1, #28]
	str	r3, [r1, #40]
	str	ip, [r1, #44]
	str	r3, [r1, #32]
	ldr	r1, .L9+4
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	str	lr, [r1]
	str	r3, [r1, #12]
	str	r3, [r1, #8]
	str	r3, [r1, #28]
	str	r3, [r1, #40]
	str	ip, [r1, #44]
	str	r10, [r1, #4]
	str	r3, [r1, #64]
	str	r3, [r1, #68]
	str	r3, [r1, #60]
	str	r3, [r1, #56]
	str	r3, [r1, #32]
	ldr	r1, .L9+8
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	str	lr, [r1]
	str	r0, [r1, #12]
	str	r0, [r1, #8]
	str	r3, [r1, #28]
	str	r3, [r1, #40]
	str	r9, [r1, #4]
	str	ip, [r1, #44]
	str	r3, [r1, #32]
	ldr	r1, .L9+12
	mov	r6, #144
	str	r2, [r1, #16]
	str	lr, [r1]
	str	r8, [r1, #4]
	str	r2, [r1, #20]
	str	r3, [r1, #28]
	str	r3, [r1, #40]
	str	ip, [r1, #44]
	str	r0, [r1, #12]
	str	r0, [r1, #8]
	str	r3, [r1, #32]
	ldr	r1, .L9+16
	str	lr, [r1, #4]
	str	ip, [r1, #16]
	str	ip, [r1, #20]
	mov	lr, #14
	mov	ip, #79
	str	r6, [r1]
	str	r3, [r1, #28]
	str	r3, [r1, #40]
	mov	r7, #7
	ldr	r1, .L9+20
	mov	r5, #9
	stm	r1, {ip, lr}
	mov	r4, #4
	mov	r8, #67
	mov	ip, #83
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	str	r3, [r1, #28]
	str	r3, [r1, #40]
	str	r7, [r1, #44]
	str	r3, [r1, #12]
	str	r3, [r1, #8]
	ldr	r1, .L9+24
	stm	r1, {r8, ip}
	str	r5, [r1, #16]
	str	r3, [r1, #28]
	str	r3, [r1, #40]
	str	r4, [r1, #20]
	str	r2, [r1, #44]
	str	r3, [r1, #52]
	str	r3, [r1, #32]
	ldr	r1, .L9+28
	str	r7, [r1, #4]
	str	r6, [r1]
	str	r5, [r1, #16]
	str	r4, [r1, #20]
	mov	r1, #300
	ldr	ip, .L9+32
	ldr	r2, .L9+36
	str	r3, [ip]
	ldr	r8, .L9+40
	ldr	ip, .L9+44
	ldr	lr, .L9+48
	str	r3, [r8]
	str	r3, [lr]
	str	r0, [ip, #4]
	str	r0, [ip, #8]
	str	r1, [ip]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r3, [r2, #36]
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	str	r3, [r2, #48]
	str	r3, [r2, #52]
	str	r3, [r2, #56]
	str	r3, [r2, #60]
	str	r3, [r2, #64]
	str	r3, [r2, #68]
	str	r3, [r2, #72]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	baldy
	.word	opp
	.word	setterL
	.word	setterR
	.word	ones
	.word	ball
	.word	powerBar
	.word	scor
	.word	ballPower
	.word	.LANCHOR1
	.word	servePower
	.word	.LANCHOR0
	.word	point
	.size	initGame, .-initGame
	.align	2
	.global	drawBaldy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBaldy, %function
drawBaldy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L12
	ldr	r3, [r1, #4]
	ldr	ip, [r1, #40]
	ldr	r2, [r1, #32]
	lsl	r3, r3, #23
	add	ip, ip, #4
	ldr	r0, .L12+4
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsr	r3, r3, #23
	add	r2, r2, ip, lsl #5
	orr	r3, r3, #16384
	lsl	r2, r2, #1
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	bx	lr
.L13:
	.align	2
.L12:
	.word	baldy
	.word	shadowOAM
	.size	drawBaldy, .-drawBaldy
	.align	2
	.global	updateBaldyCol
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBaldyCol, %function
updateBaldyCol:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L43
	ldr	r1, [r2, #68]
	cmp	r1, #7
	str	lr, [sp, #-4]!
	bne	.L15
	mov	ip, #1
	mov	r3, #0
	ldr	r0, .L43+4
	ldrh	lr, [r0, #10]
	str	ip, [r2, #72]
	strh	lr, [r0, #8]	@ movhi
	ldr	ip, .L43+8
	ldr	r0, .L43+12
	str	r3, [ip, #8]
	str	r3, [r0, #32]
.L15:
	ldr	r3, .L43+16
	ldrh	r3, [r3]
	tst	r3, #512
	ldr	r3, [r2, #64]
	beq	.L16
	ldr	r0, .L43+20
	ldrh	r0, [r0]
	tst	r0, #512
	addeq	r3, r3, #1
	streq	r3, [r2, #64]
.L16:
	cmp	r3, #0
	bne	.L17
	ldr	r3, .L43+4
	ldr	r2, .L43+24
	strh	r2, [r3, #8]	@ movhi
.L14:
	ldr	lr, [sp], #4
	bx	lr
.L17:
	cmp	r3, #1
	bne	.L38
	ldr	r3, .L43+4
	ldrh	r2, [r3, #24]
	ldr	lr, [sp], #4
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L38:
	cmp	r3, #2
	bne	.L39
	ldr	r3, .L43+4
	ldrh	r2, [r3, #26]
	ldr	lr, [sp], #4
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L39:
	cmp	r3, #3
	bne	.L40
	ldr	r3, .L43+4
	ldrh	r2, [r3, #30]
	ldr	lr, [sp], #4
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L40:
	cmp	r3, #4
	ldreq	r3, .L43+4
	ldrheq	r2, [r3, #28]
	strheq	r2, [r3, #8]	@ movhi
	beq	.L14
.L41:
	cmp	r3, #5
	ldreq	r3, .L43+4
	ldrheq	r2, [r3, #2]
	strheq	r2, [r3, #8]	@ movhi
	beq	.L14
.L42:
	cmp	r3, #6
	bne	.L14
	mov	ip, #0
	ldr	r3, .L43+4
	ldr	r0, .L43+24
	add	r1, r1, #1
	str	r1, [r2, #68]
	str	ip, [r2, #64]
	strh	r0, [r3, #8]	@ movhi
	b	.L14
.L44:
	.align	2
.L43:
	.word	.LANCHOR1
	.word	83886592
	.word	.LANCHOR0
	.word	powerBar
	.word	oldButtons
	.word	buttons
	.word	24415
	.size	updateBaldyCol, .-updateBaldyCol
	.align	2
	.global	drawOpp
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawOpp, %function
drawOpp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L46
	ldr	r1, .L46+4
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #32]
	ldr	r1, [r1, #40]
	lsl	r2, r2, #23
	add	r3, r3, r1, lsl #5
	ldrb	r0, [r0]	@ zero_extendqisi2
	ldr	r1, .L46+8
	lsr	r2, r2, #23
	add	r3, r3, #133
	orr	r2, r2, #16384
	lsl	r3, r3, #1
	strh	r2, [r1, #10]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	strh	r3, [r1, #12]	@ movhi
	bx	lr
.L47:
	.align	2
.L46:
	.word	opp
	.word	baldy
	.word	shadowOAM
	.size	drawOpp, .-drawOpp
	.align	2
	.global	updateSetterR
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSetterR, %function
updateSetterR:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L49
	ldr	r3, .L49+4
	ldr	r2, [r2]
	str	r2, [r3]
	bx	lr
.L50:
	.align	2
.L49:
	.word	opp
	.word	setterR
	.size	updateSetterR, .-updateSetterR
	.align	2
	.global	updateSetterL
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSetterL, %function
updateSetterL:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L52
	ldr	r3, .L52+4
	ldr	r2, [r2]
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	ball
	.word	setterL
	.size	updateSetterL, .-updateSetterL
	.align	2
	.global	tileIsFilled
	.syntax unified
	.arm
	.fpu softvfp
	.type	tileIsFilled, %function
tileIsFilled:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L55
	add	r0, r0, r1, lsl #5
	lsl	r0, r0, #1
	ldrh	r0, [r3, r0]
	bx	lr
.L56:
	.align	2
.L55:
	.word	100704256
	.size	tileIsFilled, .-tileIsFilled
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L61
	push	{r4, r5, lr}
	ldr	lr, [r3, #4]
	ldr	r2, .L61+4
	lsl	lr, lr, #23
	ldrb	r5, [r3]	@ zero_extendqisi2
	lsr	lr, lr, #23
	ldr	r3, [r2, #76]
	ldr	r1, .L61+8
	ldr	r4, .L61+12
	orr	lr, lr, #16384
.L58:
	mov	r0, r3
	smull	r2, ip, r4, r3
	asr	r2, r3, #31
	rsb	r2, r2, ip, asr #2
	add	ip, r2, r2, lsl #2
	sub	r3, r3, ip, lsl #1
	lsl	r3, r3, #1
	cmp	r0, #9
	strh	r3, [r1, #44]	@ movhi
	strh	r5, [r1, #40]	@ movhi
	strh	lr, [r1, #42]	@ movhi
	mov	r3, r2
	add	r1, r1, #8
	bgt	.L58
	pop	{r4, r5, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	ones
	.word	.LANCHOR1
	.word	shadowOAM
	.word	1717986919
	.size	drawScore, .-drawScore
	.align	2
	.global	updateScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateScore, %function
updateScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #0
	mov	r10, #14
	mov	r9, #79
	mov	r1, #80
	mov	r8, #185
	mov	r7, #135
	mov	r4, #90
	mov	r0, #2
	mov	r5, #74
	mov	r6, #3
	ldr	r2, .L68
	stm	r2, {r9, r10}
	str	r3, [r2, #12]
	str	r3, [r2, #8]
	str	r3, [r2, #32]
	ldr	r2, .L68+4
	mov	ip, #1
	mov	lr, #300
	str	r3, [r2]
	ldr	r2, .L68+8
	str	r3, [r2]
	ldr	r2, .L68+12
	stm	r2, {r1, r8}
	str	r3, [r2, #12]
	str	r3, [r2, #8]
	ldr	r2, .L68+16
	stm	r2, {r1, r7}
	ldr	r2, .L68+20
	stm	r2, {r1, r4}
	ldr	r2, .L68+24
	str	r0, [r2, #12]
	str	r0, [r2, #8]
	mov	r0, #1
	stm	r2, {r5, r6}
	mov	r5, #144
	ldr	r4, .L68+28
	ldr	r1, .L68+32
	ldr	r2, .L68+36
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	str	r3, [r4, #24]
	str	r3, [r4, #80]
	str	r3, [r4, #28]
	str	r3, [r4, #84]
	str	r3, [r4, #44]
	str	lr, [r1]
	str	ip, [r1, #4]
	ldr	r2, [r2]
	cmp	r2, ip
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #52]
	str	r3, [r4, #68]
	str	r3, [r4, #72]
	ldrgt	r3, .L68+40
	ldr	r2, .L68+44
	strgt	ip, [r3]
	ldr	r3, .L68+48
	strh	r2, [r3, #8]	@ movhi
	ldr	r2, .L68+52
	ldr	r3, [r2]
	add	r3, r3, r0
	str	r3, [r2]
	str	r0, [r1, #8]
	bl	drawScore
	ldr	r3, [r4, #88]
	ldr	r1, .L68+56
	ldr	r4, .L68+60
	ldr	lr, .L68+64
.L65:
	mov	r0, r3
	smull	r2, ip, lr, r3
	asr	r2, r3, #31
	rsb	r2, r2, ip, asr #2
	add	ip, r2, r2, lsl #2
	sub	r3, r3, ip, lsl #1
	lsl	r3, r3, #1
	cmp	r0, #9
	strh	r3, [r1, #124]	@ movhi
	strh	r5, [r1, #120]	@ movhi
	strh	r4, [r1, #122]	@ movhi
	mov	r3, r2
	add	r1, r1, #8
	bgt	.L65
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	ball
	.word	ballPower
	.word	servePower
	.word	opp
	.word	setterR
	.word	setterL
	.word	baldy
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	point
	.word	y
	.word	24415
	.word	83886592
	.word	seed
	.word	shadowOAM
	.word	16533
	.word	1717986919
	.size	updateScore, .-updateScore
	.align	2
	.global	drawPowerBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPowerBar, %function
drawPowerBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L74
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #32]
	ldrh	r3, [r1, #4]
	add	r0, r0, #2
	push	{r4, lr}
	add	r2, r2, r0, lsl #5
	add	lr, r3, #75
	ldrh	r4, [r1]
	lsl	r2, r2, #17
	lsl	lr, lr, #16
	ldr	r1, .L74+4
	lsr	r2, r2, #16
	lsr	lr, lr, #16
.L71:
	add	ip, r3, #15
	orr	r0, r3, #16384
	lsl	r3, ip, #16
	lsr	r3, r3, #16
	add	ip, r2, #2
	strh	r2, [r1, #212]	@ movhi
	cmp	r3, lr
	lsl	r2, ip, #16
	strh	r4, [r1, #208]	@ movhi
	strh	r0, [r1, #210]	@ movhi
	lsr	r2, r2, #16
	add	r1, r1, #8
	bne	.L71
	pop	{r4, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	powerBar
	.word	shadowOAM
	.size	drawPowerBar, .-drawPowerBar
	.align	2
	.global	updatePowerBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePowerBar, %function
updatePowerBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L81
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bxeq	lr
	ldr	r1, .L81+4
	ldr	r2, [r1, #28]
	ldr	r3, .L81+8
	add	r2, r2, #1
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	subs	r3, r2, r3
	str	r2, [r1, #28]
	bxne	lr
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #44]
	cmp	r2, r0
	addlt	r2, r2, #1
	strlt	r2, [r1, #32]
	strge	r3, [r1, #32]
	bx	lr
.L82:
	.align	2
.L81:
	.word	.LANCHOR0
	.word	powerBar
	.word	1431655766
	.size	updatePowerBar, .-updatePowerBar
	.global	__aeabi_idivmod
	.align	2
	.global	animateBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateBall, %function
animateBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L86
	ldr	r0, [r3, #28]
	ldr	r2, .L86+4
	add	r0, r0, #1
	push	{r4, lr}
	ldr	r1, [r2]
	str	r0, [r3, #28]
	ldr	r2, .L86+8
	mov	lr, pc
	bx	r2
	cmp	r1, #0
	popeq	{r4, lr}
	beq	animateBall.part.0
.L83:
	pop	{r4, lr}
	bx	lr
.L87:
	.align	2
.L86:
	.word	ball
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.size	animateBall, .-animateBall
	.align	2
	.global	hidePowerBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	hidePowerBar, %function
hidePowerBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	ldr	r3, .L89
	strh	r2, [r3, #208]	@ movhi
	strh	r2, [r3, #216]	@ movhi
	strh	r2, [r3, #224]	@ movhi
	strh	r2, [r3, #232]	@ movhi
	strh	r2, [r3, #240]	@ movhi
	bx	lr
.L90:
	.align	2
.L89:
	.word	shadowOAM
	.size	hidePowerBar, .-hidePowerBar
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L104
	ldr	r3, .L104+4
	ldr	r5, [r4, #28]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	ldr	r6, [r4, #32]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #36]
	str	r1, [r4, #32]
	bne	.L92
	ldr	r0, [r4, #40]
	ldr	r3, .L104+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L92:
	ldr	r3, .L104+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #32]
	ldr	r3, .L104+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #32]
	ldr	r3, .L104+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L95
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #32]
	bne	.L97
.L98:
	mov	r3, #2
	str	r3, [r4, #32]
.L97:
	add	r5, r5, #1
	str	r5, [r4, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L98
	ldr	r3, [r4, #32]
	cmp	r3, #4
	bne	.L97
	mov	r3, #0
	str	r6, [r4, #32]
	str	r3, [r4, #40]
	str	r3, [r4, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L105:
	.align	2
.L104:
	.word	baldy
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"why\000"
	.align	2
.LC1:
	.ascii	"hspeed: (%d)\000"
	.text
	.align	2
	.global	updatebaldy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatebaldy, %function
updatebaldy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L155
	ldr	r3, [r4, #32]
	cmp	r3, #4
	movne	r2, #4
	ldr	r5, [r4, #28]
	strne	r3, [r4, #36]
	add	r3, r5, r5, lsl #4
	strne	r2, [r4, #32]
	add	r3, r3, r3, lsl #8
	ldr	r2, .L155+4
	ldr	r1, .L155+8
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcs	.L108
	ldr	r0, [r4, #40]
	ldr	r3, .L155+12
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	add	r5, r5, #1
	str	r1, [r4, #40]
	str	r5, [r4, #28]
.L108:
	ldr	r3, .L155+16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L110
	ldr	r3, [r4]
	cmp	r3, #0
	bgt	.L151
.L110:
	ldr	r3, .L155+16
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L113
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	add	r1, r1, r3
	cmp	r1, #159
	ble	.L152
.L113:
	ldr	r3, .L155+16
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L116
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bgt	.L153
.L116:
	ldr	r3, .L155+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L119
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #16]
	add	r2, r2, r3
	cmp	r2, #239
	ble	.L154
.L119:
	bl	animatePlayer
	ldr	r3, [r4, #32]
	cmp	r3, #4
	moveq	r2, #0
	moveq	r3, #2
	ldrne	r3, [r4, #28]
	addne	r3, r3, #1
	streq	r2, [r4, #40]
	streq	r3, [r4, #32]
	strne	r3, [r4, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L153:
	ldr	r2, [r4, #12]
	ldr	r6, .L155+20
	add	r3, r3, #1
	sub	r2, r3, r2
	mov	r1, #240
	ldr	r0, [r6, #12]
	ldr	r3, [r4]
	ldr	r5, .L155+24
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L116
	ldr	r0, [r4, #20]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #12]
	add	r3, r3, r0
	add	r2, r2, #1
	sub	r2, r2, r1
	ldr	r0, [r6, #12]
	mov	r1, #240
	sub	r3, r3, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L116
	ldr	r3, .L155+28
	ldr	r2, [r4, #12]
	ldr	r1, [r3, #72]
	ldr	r3, [r4, #4]
	add	r2, r2, r1
	sub	r3, r3, r2
	str	r3, [r4, #4]
	b	.L116
.L151:
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #4]
	ldr	r6, .L155+20
	sub	r3, r3, r1
	ldr	r0, [r6, #12]
	mov	r1, #240
	ldr	r5, .L155+24
	add	r2, r2, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L110
	ldr	r0, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r1, [r4]
	ldr	r3, [r4, #8]
	add	r2, r2, r0
	sub	r3, r1, r3
	ldr	r0, [r6, #12]
	mov	r1, #240
	sub	r2, r2, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L110
	ldr	r3, .L155+28
	ldr	r2, [r4, #8]
	ldr	r1, [r3, #72]
	ldr	r3, [r4]
	add	r2, r2, r1
	sub	r3, r3, r2
	str	r3, [r4]
	b	.L110
.L152:
	ldmib	r4, {r2, r3}
	ldr	r6, .L155+20
	sub	r1, r1, #1
	add	r3, r1, r3
	ldr	r0, [r6, #12]
	mov	r1, #240
	ldr	r5, .L155+24
	add	r2, r2, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L113
	ldr	r1, [r4, #20]
	ldr	r3, [r4]
	ldr	r0, [r4, #16]
	ldr	r2, [r4, #4]
	add	r3, r3, r1
	ldr	r1, [r4, #8]
	add	r2, r2, r0
	sub	r3, r3, #1
	add	r3, r3, r1
	ldr	r0, [r6, #12]
	mov	r1, #240
	sub	r2, r2, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L113
	ldr	r2, .L155+28
	ldr	r3, [r4, #8]
	ldr	r1, [r2, #72]
	ldr	r2, [r4]
	add	r3, r3, r1
	add	r3, r3, r2
	str	r3, [r4]
	b	.L113
.L154:
	ldr	r6, .L155+20
	mov	r1, #240
	ldr	r0, [r6, #12]
	ldr	r3, [r4]
	ldr	r5, .L155+24
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L119
	ldr	r2, [r4, #20]
	ldr	r3, [r4]
	ldr	r1, [r4, #4]
	ldr	ip, [r4, #12]
	add	r3, r3, r2
	ldr	r2, [r4, #16]
	ldr	r0, [r6, #12]
	add	r2, r1, r2
	sub	r3, r3, ip
	mov	r1, #240
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L119
	ldr	r2, .L155+28
	ldr	r3, [r4, #12]
	ldr	r1, [r2, #72]
	ldr	r2, [r4, #4]
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r0, .L155+32
	ldr	r5, .L155+36
	str	r3, [r4, #4]
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #12]
	ldr	r0, .L155+40
	mov	lr, pc
	bx	r5
	b	.L119
.L156:
	.align	2
.L155:
	.word	baldy
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	67109120
	.word	.LANCHOR0
	.word	collisionCheck
	.word	.LANCHOR1
	.word	.LC0
	.word	mgba_printf
	.word	.LC1
	.size	updatebaldy, .-updatebaldy
	.align	2
	.global	animateOpp
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateOpp, %function
animateOpp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L167
	ldr	r3, .L167+4
	ldr	r5, [r4, #28]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	ldr	r6, [r4, #32]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #36]
	str	r1, [r4, #32]
	bne	.L158
	ldr	r0, [r4, #40]
	ldr	r3, .L167+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L158:
	ldr	r3, [r4, #8]
	cmn	r3, #2
	moveq	r3, #1
	streq	r3, [r4, #32]
	beq	.L160
	cmp	r3, #2
	moveq	r3, #0
	streq	r3, [r4, #32]
.L160:
	ldr	r3, [r4, #12]
	cmn	r3, #2
	moveq	r3, #3
	streq	r3, [r4, #32]
	beq	.L162
	cmp	r3, #2
	streq	r3, [r4, #32]
	bne	.L166
.L162:
	add	r5, r5, #1
	str	r5, [r4, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L166:
	ldr	r3, [r4, #32]
	cmp	r3, #4
	bne	.L162
	mov	r3, #0
	str	r6, [r4, #32]
	str	r3, [r4, #40]
	str	r3, [r4, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L168:
	.align	2
.L167:
	.word	opp
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateOpp, .-animateOpp
	.align	2
	.global	updateOpp
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateOpp, %function
updateOpp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L179
	ldr	r2, [r1, #4]
	cmp	r2, #124
	bxle	lr
	ldr	r3, .L179+4
	ldr	ip, [r3, #4]
	cmp	r2, ip
	ble	.L171
	ldr	r2, .L179+8
	ldr	r0, .L179+12
	ldr	r2, [r2, #72]
	ldr	r0, [r0]
	rsb	r2, r2, #2
	add	r2, r2, r0
	str	r2, [r3, #12]
.L172:
	ldr	r1, [r1]
	ldr	r2, [r3]
	cmp	r2, r1
	bge	.L174
	ldr	r0, .L179+8
	ldr	r1, .L179+12
	ldr	r0, [r0, #72]
	ldr	r1, [r1]
	rsb	r0, r0, #2
	add	r0, r0, r1
	str	r0, [r3, #8]
	add	r2, r2, r0
.L175:
	ldr	r0, [r3, #32]
	cmp	r0, #4
	str	r2, [r3]
	moveq	r2, #0
	ldrne	r2, [r3, #28]
	ldr	r1, [r3, #12]
	addne	r2, r2, #1
	add	r1, r1, ip
	str	r1, [r3, #4]
	streq	r2, [r3, #40]
	streq	r2, [r3, #32]
	strne	r2, [r3, #28]
	b	animateOpp
.L171:
	bge	.L173
	sub	r2, ip, r2
	cmp	r2, #2
	ble	.L173
	ldr	r2, .L179+8
	ldr	r0, .L179+12
	ldr	r2, [r2, #72]
	ldr	r0, [r0]
	sub	r2, r2, #2
	sub	r2, r2, r0
	str	r2, [r3, #12]
	b	.L172
.L174:
	movle	r1, #0
	ldrgt	r1, .L179+8
	ldrgt	r0, .L179+12
	ldrgt	r1, [r1, #72]
	ldrgt	r0, [r0]
	subgt	r1, r1, #2
	subgt	r1, r1, r0
	strgt	r1, [r3, #8]
	strle	r1, [r3, #8]
	addgt	r2, r2, r1
	b	.L175
.L173:
	mov	r2, #0
	str	r2, [r3, #12]
	b	.L172
.L180:
	.align	2
.L179:
	.word	ball
	.word	opp
	.word	.LANCHOR1
	.word	y
	.size	updateOpp, .-updateOpp
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"vspeed: (%d)\000"
	.align	2
.LC3:
	.ascii	"servin hard af\000"
	.align	2
.LC4:
	.ascii	"entered\000"
	.align	2
.LC5:
	.ascii	"incremented\000"
	.align	2
.LC6:
	.ascii	"third touch\000"
	.align	2
.LC7:
	.ascii	"here?\000"
	.text
	.align	2
	.global	updateBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall, %function
updateBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r6, .L319
	ldr	r3, [r6, #4]
	cmp	r3, #1
	sub	sp, sp, #20
	beq	.L294
	cmp	r3, #0
	bne	.L188
	ldr	r5, .L319+4
.L189:
	ldr	r3, [r5, #28]
	cmp	r3, #1
	beq	.L295
.L192:
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L296
.L197:
	ldr	r3, [r5, #4]
	cmp	r3, #1
	beq	.L297
.L199:
	ldr	r3, [r5, #24]
	cmp	r3, #1
	beq	.L298
.L203:
	ldr	r3, [r5, #80]
	cmp	r3, #1
	beq	.L299
.L205:
	ldr	r3, [r5, #12]
	cmp	r3, #0
	bne	.L300
.L260:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	bne	.L301
.L214:
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L302
.L218:
	ldr	r3, [r5, #84]
	cmp	r3, #0
	bne	.L303
.L220:
	ldr	r3, [r5, #44]
	cmp	r3, #1
	beq	.L304
.L225:
	ldr	r3, [r5, #40]
	cmp	r3, #1
	beq	.L305
.L228:
	ldr	r3, [r5, #36]
	cmp	r3, #1
	beq	.L306
.L233:
	ldr	r3, [r5, #48]
	cmp	r3, #0
	beq	.L236
	ldr	r3, .L319+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L236
	ldr	r3, .L319+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L307
.L236:
	ldr	r3, [r5, #52]
	cmp	r3, #1
	beq	.L308
.L253:
	cmp	r3, #0
	bne	.L309
.L181:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L188:
	ldr	r4, .L319+16
	ldr	r5, .L319+4
	ldr	r2, [r4, #4]
.L186:
	ldr	r3, .L319+20
	ldr	r3, [r3, #4]
	add	r3, r3, #3
	cmp	r3, r2
	bge	.L189
	ldr	r3, [r5, #76]
	add	r3, r3, #1
	str	r3, [r5, #76]
	bl	updateScore
	ldr	r3, [r5, #28]
	cmp	r3, #1
	bne	.L192
.L295:
	ldr	r4, .L319+16
	ldr	r2, [r4, #4]
.L187:
	cmp	r2, #140
	ble	.L192
	ldr	r7, .L319+20
	ldr	r8, [r4, #20]
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	lr, [r4, #16]
	str	r2, [sp]
	ldr	ip, [r4]
	add	r2, r7, #16
	ldr	r1, [r7]
	sub	r0, r0, r3
	ldm	r2, {r2, r3}
	str	r8, [sp, #12]
	stmib	sp, {ip, lr}
	ldr	r8, .L319+24
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L195
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	ip, [r4, #20]
	sub	r0, r0, r2
	ldr	r2, [r4, #16]
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	str	ip, [sp, #12]
	str	r2, [sp, #8]
	ldr	ip, [r4]
	ldr	r2, [r4, #4]
	stm	sp, {r2, ip}
	add	r1, r3, r1
	ldr	r2, [r7, #16]
	sub	r1, r1, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L310
.L195:
	mov	r3, #0
	mov	r2, #1
	mov	ip, #2
	ldr	r1, [r4, #12]
	str	r3, [r6, #4]
	str	r3, [r5, #52]
	str	r3, [r7, #8]
	str	r3, [r7, #12]
	str	r3, [r5, #28]
	rsb	r1, r1, #0
	ldr	r3, .L319+28
	ldr	r0, .L319+32
	str	r1, [r4, #12]
	str	r2, [r5]
	str	r2, [r5, #4]
	str	r2, [r4, #32]
	str	ip, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #1
	bne	.L197
.L296:
	ldr	r4, .L319+16
	ldr	r2, .L319+36
	ldr	r3, [r4, #4]
	ldr	r2, [r2, #4]
	cmp	r3, r2
	ble	.L197
	ldr	r2, [r4, #12]
	ldr	r0, .L319+40
	add	r3, r2, r3
	ldr	r2, .L319+28
	str	r3, [r4, #4]
	mov	lr, pc
	bx	r2
	ldr	r0, [r4, #28]
	add	r0, r0, #1
	str	r0, [r4, #28]
	ldr	r3, .L319+44
	ldr	r1, [r6]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L197
	bl	animateBall.part.0
	b	.L197
.L294:
	ldr	r4, .L319+16
	ldr	r1, .L319+48
	ldr	r2, [r4, #4]
	ldr	r1, [r1]
	cmp	r2, r1
	blt	.L311
	ldr	r5, .L319+4
	str	r3, [r5, #28]
	b	.L186
.L306:
	ldr	r4, .L319+16
	ldr	r9, .L319+52
	ldr	r8, [r4, #4]
	ldr	r7, [r9, #4]
	cmp	r8, r7
	ble	.L259
	ldr	r3, [r4, #12]
	ldr	r0, [r4, #28]
	add	r8, r8, r3
	add	r0, r0, #1
	str	r8, [r4, #4]
	str	r0, [r4, #28]
	ldr	r3, .L319+44
	ldr	r1, [r6]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L259
	bl	animateBall.part.0
	ldr	r3, [r5, #36]
	cmp	r3, #1
	bne	.L233
	ldr	r8, [r4, #4]
	ldr	r7, [r9, #4]
.L259:
	sub	r7, r7, #2
	cmp	r7, r8
	ble	.L233
	ldr	r3, [r5, #88]
	add	r3, r3, #1
	str	r3, [r5, #88]
	bl	updateScore
	b	.L233
.L303:
	ldr	r7, .L319+52
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #4]
	ldr	r4, .L319+16
	ldr	r0, [r7, #12]
	add	r1, r2, r1
	sub	r1, r1, #1
	ldr	lr, [r4, #16]
	ldr	ip, [r4]
	add	r0, r1, r0
	ldr	r1, [r4, #4]
	ldr	r3, [r7, #20]
	ldr	r8, [r4, #20]
	stm	sp, {r1, ip, lr}
	str	r8, [sp, #12]
	sub	r2, r2, #1
	ldr	r1, [r7]
	ldr	r8, .L319+24
	sub	r3, r3, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L221
.L223:
	ldr	r3, .L319+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L220
	ldr	r3, .L319+12
	ldrh	r3, [r3]
	ands	r3, r3, #1
	bne	.L220
	mov	r2, #1
	mov	r1, #7
	str	r2, [r5, #40]
	str	r2, [r5, #44]
	str	r2, [r4, #32]
	str	r2, [r4, #12]
	ldr	r2, .L319+20
	str	r3, [r5, #12]
	str	r3, [r5, #84]
	str	r3, [r5, #16]
	str	r3, [r5, #32]
	str	r3, [r4, #8]
	str	r1, [r6]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	b	.L224
.L301:
	ldr	r4, .L319+16
	add	r1, r4, #16
	ldm	r1, {r1, ip}
	ldm	r4, {r2, r3}
	ldr	r7, .L319+56
	ldr	lr, [r7, #4]
	ldr	r0, [r7, #12]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r8, .L319+24
	sub	r0, lr, r0
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L215
.L217:
	mov	r3, #0
	mov	r2, #1
	mvn	ip, #0
	mov	r0, #7
	ldr	r1, .L319+20
	str	r3, [r5, #12]
	str	r3, [r5, #16]
	str	r3, [r4, #8]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r2, [r5, #32]
	str	r2, [r5, #40]
	str	r2, [r4, #32]
	str	ip, [r4, #12]
	str	r0, [r6]
.L216:
	ldr	r2, .L319+52
	ldr	r3, [r4, #4]
	ldr	r2, [r2, #4]
	cmp	r3, r2
	ble	.L218
	ldr	r2, [r4, #12]
	ldr	r0, [r4, #28]
	add	r3, r2, r3
	add	r0, r0, #1
	str	r3, [r4, #4]
	str	r0, [r4, #28]
	ldr	r3, .L319+44
	ldr	r1, [r6]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L218
	bl	animateBall.part.0
	b	.L218
.L300:
	ldr	r1, .L319+48
	ldr	r4, .L319+16
	ldr	r3, [r1]
	ldr	r2, [r4, #4]
	cmp	r2, r3
	ldr	r1, [r4]
	bgt	.L312
.L210:
	ldr	r3, .L319+52
	ldr	r3, [r3, #4]
	sub	r3, r3, #2
	cmp	r3, r2
	ble	.L212
	cmp	r1, #14
	bgt	.L313
.L212:
	cmp	r1, #13
	bgt	.L260
	ldr	r3, [r5, #76]
	add	r3, r3, #1
	str	r3, [r5, #76]
	bl	updateScore
	b	.L260
.L309:
	ldr	r3, .L319+16
	ldr	r2, [r3, #4]
.L254:
	ldr	r3, .L319+20
	ldr	r3, [r3, #4]
	add	r3, r3, #1
	cmp	r3, r2
	bge	.L181
	ldr	r3, [r5, #76]
	add	r3, r3, #1
	str	r3, [r5, #76]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	updateScore
.L308:
	ldr	r3, .L319+48
	ldr	r4, .L319+16
	ldr	r3, [r3]
.L252:
	ldr	r2, [r4, #4]
	cmp	r2, r3
	bge	.L254
	ldr	r1, [r4, #12]
	ldr	r3, [r4]
	add	r2, r1, r2
	ldr	r1, [r4, #8]
	add	r3, r3, r1
	str	r2, [r4, #4]
	str	r3, [r4]
	bl	updateOpp
	ldr	r0, [r4, #28]
	add	r0, r0, #1
	ldr	r1, [r6]
	str	r0, [r4, #28]
	ldr	r3, .L319+44
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bleq	animateBall.part.0
.L293:
	ldr	r3, [r5, #52]
	b	.L253
.L304:
	ldr	r4, .L319+16
.L224:
	ldr	r2, .L319+56
	ldr	r3, [r4, #4]
	ldr	r2, [r2, #4]
	cmp	r3, r2
	bge	.L225
	ldr	r2, [r4, #12]
	ldr	r0, [r4, #28]
	add	r3, r2, r3
	add	r0, r0, #1
	str	r3, [r4, #4]
	str	r0, [r4, #28]
	ldr	r3, .L319+44
	ldr	r1, [r6]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L225
	bl	animateBall.part.0
	b	.L225
.L305:
	ldr	r4, .L319+16
	add	r1, r4, #16
	ldm	r1, {r1, ip}
	ldm	r4, {r2, r3}
	ldr	r7, .L319+56
	ldr	lr, [r7, #4]
	ldr	r0, [r7, #12]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r8, .L319+24
	sub	r0, lr, r0
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L229
.L230:
	mov	r3, #0
	mov	r2, #1
	mvn	ip, #0
	mov	r1, #7
	str	r3, [r5, #40]
	str	r3, [r4, #8]
	str	r3, [r5, #32]
	str	r3, [r5, #44]
	ldr	r0, .L319+60
	ldr	r3, .L319+28
	str	r2, [r5, #36]
	str	r2, [r5, #48]
	str	r2, [r4, #32]
	str	ip, [r4, #12]
	str	r1, [r6]
	mov	lr, pc
	bx	r3
	b	.L228
.L297:
	ldr	r7, .L319+36
	ldr	r4, .L319+16
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	add	ip, r4, #16
	ldr	r0, [r7, #12]
	ldm	ip, {ip, lr}
	ldr	r1, [r4]
	add	r3, r2, r3
	sub	r3, r3, #1
	stmib	sp, {r1, ip, lr}
	add	r0, r3, r0
	ldr	r3, [r4, #4]
	str	r3, [sp]
	ldr	r8, .L319+24
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L200
.L202:
	mov	r3, #1
	mov	r1, #0
	mov	r0, #2
	ldr	r2, [r4, #12]
	rsb	r2, r2, #0
	str	r2, [r4, #12]
	str	r1, [r5]
	str	r1, [r5, #4]
	str	r3, [r5, #24]
	str	r3, [r5, #80]
	str	r3, [r4, #32]
	str	r0, [r6]
.L201:
	ldr	r2, .L319+20
	ldr	r3, [r4, #4]
	ldr	r2, [r2, #4]
	cmp	r3, r2
	bge	.L203
	ldr	r2, [r4, #12]
	ldr	r0, [r4, #28]
	add	r3, r2, r3
	add	r0, r0, #1
	str	r3, [r4, #4]
	str	r0, [r4, #28]
	ldr	r3, .L319+44
	ldr	r1, [r6]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L203
	bl	animateBall.part.0
	b	.L203
.L299:
	ldr	r4, .L319+16
	add	r1, r4, #16
	ldm	r1, {r1, ip}
	ldm	r4, {r2, r3}
	ldr	r7, .L319+20
	ldr	lr, [r7, #4]
	ldr	r0, [r7, #12]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r8, .L319+24
	sub	r0, lr, r0
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L206
.L208:
	ldr	r8, .L319+64
	mov	lr, pc
	bx	r8
	mvn	r3, #1
	mov	r7, #0
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	sub	r0, r3, r0
	str	r0, [r4, #12]
	mov	lr, pc
	bx	r8
	str	r7, [r4, #8]
	mov	lr, pc
	bx	r8
	mov	ip, #1
	mov	lr, #7
	ldr	r3, .L319+68
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	rsb	r3, r3, r3, lsl #3
	ldr	r2, [r4, #4]
	sub	r0, r0, r3, lsl ip
	ldr	r1, .L319+48
	add	r3, r0, #23
	cmp	r2, r3
	str	r3, [r1]
	str	r7, [r5, #24]
	str	r7, [r5, #80]
	str	ip, [r5, #84]
	str	ip, [r5, #12]
	str	ip, [r4, #32]
	str	lr, [r6]
	ldr	r1, [r4]
	ble	.L210
.L312:
	ldr	r0, [r4, #12]
	ldr	r3, [r4, #8]
	add	r2, r0, r2
	add	r1, r3, r1
	ldr	r0, .L319+72
	ldr	r3, .L319+28
	stm	r4, {r1, r2}
	mov	lr, pc
	bx	r3
	ldr	r0, [r4, #28]
	add	r0, r0, #1
	str	r0, [r4, #28]
	ldr	r3, .L319+44
	ldr	r1, [r6]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bleq	animateBall.part.0
.L211:
	ldr	r3, [r5, #12]
	cmp	r3, #0
	beq	.L260
	ldm	r4, {r1, r2}
	b	.L210
.L229:
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	ip, [r4, #20]
	sub	r0, r0, r2
	ldr	r2, [r4, #16]
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	str	ip, [sp, #12]
	str	r2, [sp, #8]
	ldr	ip, [r4]
	ldr	r2, [r4, #4]
	stm	sp, {r2, ip}
	add	r1, r3, r1
	ldr	r2, [r7, #16]
	sub	r1, r1, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L230
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L230
	b	.L228
.L206:
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	ip, [r4, #20]
	sub	r0, r0, r2
	ldr	r2, [r4, #16]
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	str	ip, [sp, #12]
	str	r2, [sp, #8]
	ldr	ip, [r4]
	ldr	r2, [r4, #4]
	stm	sp, {r2, ip}
	add	r1, r3, r1
	ldr	r2, [r7, #16]
	sub	r1, r1, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L208
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L208
	b	.L205
.L307:
	ldr	r7, .L319+52
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #4]
	ldr	r4, .L319+16
	ldr	r0, [r7, #12]
	add	r1, r2, r1
	sub	r1, r1, #1
	ldr	lr, [r4, #16]
	ldr	ip, [r4]
	add	r0, r1, r0
	ldr	r1, [r4, #4]
	ldr	r3, [r7, #20]
	ldr	r8, [r4, #20]
	stm	sp, {r1, ip, lr}
	str	r8, [sp, #12]
	sub	r2, r2, #1
	ldr	r1, [r7]
	ldr	r8, .L319+24
	sub	r3, r3, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L240
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4]
	ldr	ip, [r4, #4]
	add	r0, r2, r0
	add	r1, r3, r1
	stm	sp, {ip, lr}
	sub	r0, r0, #1
	sub	r2, r2, #1
	sub	r1, r1, #1
	sub	r3, r3, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L240
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L236
.L240:
	ldr	r3, .L319+64
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r2, #0
	cmp	r0, #0
	and	r0, r0, ip
	ldr	r3, [r5, #64]
	rsblt	r0, r0, #0
	add	r0, r0, ip
	cmp	r3, r2
	str	r0, [r4, #8]
	str	r2, [r5, #36]
	str	r2, [r5, #48]
	str	ip, [r5, #28]
	beq	.L238
	cmp	r3, #1
	bne	.L314
	mov	r2, #2
	mov	r3, #164
	ldr	r1, .L319+48
	str	r2, [r4, #12]
	str	r3, [r1]
.L248:
	ldr	r3, [r1]
.L250:
	mov	r2, #1
	str	r2, [r4, #32]
	str	r2, [r5, #52]
	b	.L252
.L313:
	ldr	r3, [r5, #88]
	add	r3, r3, #1
	str	r3, [r5, #88]
	bl	updateScore
	ldr	r3, [r5, #12]
	cmp	r3, #0
	beq	.L260
	ldr	r1, [r4]
	b	.L212
.L200:
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	ldr	r2, [r7, #16]
	ldr	r0, [r7, #4]
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4]
	ldr	ip, [r4, #4]
	add	r0, r2, r0
	add	r1, r3, r1
	stm	sp, {ip, lr}
	sub	r0, r0, #1
	sub	r1, r1, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L202
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L202
	b	.L199
.L302:
	ldr	r4, .L319+16
	b	.L216
.L298:
	ldr	r4, .L319+16
	b	.L201
.L311:
	ldr	r1, [r4, #12]
	ldr	r3, [r4]
	ldr	r0, [r4, #8]
	add	r2, r1, r2
	add	r3, r3, r0
	str	r2, [r4, #4]
	str	r3, [r4]
	ldr	r5, .L319+28
	bl	updateOpp
	ldr	r1, [r4, #8]
	ldr	r0, .L319+76
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #12]
	ldr	r0, .L319+80
	mov	lr, pc
	bx	r5
	ldr	r0, .L319+84
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #28]
	add	r0, r0, #1
	str	r0, [r4, #28]
	ldr	r3, .L319+44
	ldr	r1, [r6]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bleq	animateBall.part.0
.L292:
	mov	r3, #1
	ldr	r1, [r6, #4]
	ldr	r5, .L319+4
	cmp	r1, #0
	ldr	r2, [r4, #4]
	str	r3, [r5, #28]
	beq	.L187
	b	.L186
.L221:
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4]
	ldr	ip, [r4, #4]
	add	r0, r2, r0
	add	r1, r3, r1
	stm	sp, {ip, lr}
	sub	r0, r0, #1
	sub	r2, r2, #1
	sub	r1, r1, #1
	sub	r3, r3, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L223
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L223
	b	.L220
.L215:
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	ip, [r4, #20]
	sub	r0, r0, r2
	ldr	r2, [r4, #16]
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	str	ip, [sp, #12]
	str	r2, [sp, #8]
	ldr	ip, [r4]
	ldr	r2, [r4, #4]
	stm	sp, {r2, ip}
	add	r1, r3, r1
	ldr	r2, [r7, #16]
	sub	r1, r1, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L217
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L217
	b	.L214
.L238:
	mov	r3, #145
	ldr	r1, .L319+48
	str	ip, [r4, #12]
	str	r3, [r1]
	b	.L248
.L310:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L195
	b	.L192
.L314:
	cmp	r3, #2
	bne	.L315
	mov	r2, #170
	ldr	r1, .L319+48
	str	r3, [r4, #12]
	str	r2, [r1]
	b	.L248
.L315:
	cmp	r3, #3
	bne	.L316
	mov	r1, #2
	mov	r3, #185
	ldr	r2, .L319+48
	str	r1, [r4, #12]
	str	r3, [r2]
	b	.L250
.L316:
	cmp	r3, #4
	bne	.L317
	mov	r1, #3
	mov	r3, #200
	ldr	r2, .L319+48
	str	r1, [r4, #12]
	str	r3, [r2]
	b	.L250
.L317:
	cmp	r3, #5
	bne	.L318
	mov	r2, #215
	mov	r0, #4
	ldr	r1, .L319+48
	mov	r3, r2
	str	r0, [r4, #12]
	str	r2, [r1]
	b	.L250
.L318:
	ldr	r1, .L319+48
	b	.L248
.L320:
	.align	2
.L319:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	ball
	.word	opp
	.word	collision
	.word	mgba_printf
	.word	.LC4
	.word	setterR
	.word	.LC5
	.word	__aeabi_idivmod
	.word	ballPower
	.word	baldy
	.word	setterL
	.word	.LC7
	.word	rand
	.word	-1840700269
	.word	.LC6
	.word	.LC2
	.word	.LC1
	.word	.LC3
	.size	updateBall, .-updateBall
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateBall
	ldr	r2, .L323
	ldr	r3, .L323+4
	ldr	r2, [r2]
	str	r2, [r3]
	bl	updatebaldy
	ldr	r2, .L323+8
	ldr	r3, .L323+12
	ldr	r2, [r2]
	pop	{r4, lr}
	str	r2, [r3]
	b	updateBaldyCol
.L324:
	.align	2
.L323:
	.word	ball
	.word	setterL
	.word	opp
	.word	setterR
	.size	updateGame, .-updateGame
	.align	2
	.global	hideOthers
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideOthers, %function
hideOthers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	ldr	r3, .L326
	add	r1, r3, #256
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	bx	lr
.L327:
	.align	2
.L326:
	.word	shadowOAM
	.size	hideOthers, .-hideOthers
	.align	2
	.global	drawOppScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawOppScore, %function
drawOppScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #144
	ldr	r3, .L332
	ldr	r1, .L332+4
	ldr	r3, [r3, #88]
	ldr	r4, .L332+8
	ldr	lr, .L332+12
.L329:
	mov	r0, r3
	smull	r2, ip, lr, r3
	asr	r2, r3, #31
	rsb	r2, r2, ip, asr #2
	add	ip, r2, r2, lsl #2
	sub	r3, r3, ip, lsl #1
	lsl	r3, r3, #1
	cmp	r0, #9
	strh	r3, [r1, #124]	@ movhi
	strh	r5, [r1, #120]	@ movhi
	strh	r4, [r1, #122]	@ movhi
	mov	r3, r2
	add	r1, r1, #8
	bgt	.L329
	pop	{r4, r5, lr}
	bx	lr
.L333:
	.align	2
.L332:
	.word	.LANCHOR1
	.word	shadowOAM
	.word	16533
	.word	1717986919
	.size	drawOppScore, .-drawOppScore
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	lr, .L336
	ldr	r5, .L336+4
	ldr	r0, [lr, #40]
	ldr	r3, [r5, #32]
	ldr	ip, [lr, #32]
	add	r0, r0, #4
	add	r3, r3, #5
	ldr	r2, [lr, #4]
	ldr	r6, .L336+8
	add	ip, ip, r0, lsl #5
	add	r3, r3, r0, lsl #5
	ldr	r0, [r5, #4]
	ldrb	r4, [lr]	@ zero_extendqisi2
	ldr	r1, .L336+12
	ldrb	lr, [r5]	@ zero_extendqisi2
	and	r2, r2, r6
	and	r0, r0, r6
	lsl	ip, ip, #1
	lsl	r3, r3, #1
	orr	r2, r2, #16384
	orr	r0, r0, #16384
	strh	r3, [r1, #12]	@ movhi
	strh	r4, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #10]	@ movhi
	strh	lr, [r1, #8]	@ movhi
	ldr	r4, .L336+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r1, #4]	@ movhi
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L337:
	.align	2
.L336:
	.word	baldy
	.word	opp
	.word	511
	.word	shadowOAM
	.word	DMANow
	.size	drawGame, .-drawGame
	.global	animatePower
	.global	x
	.global	cheat
	.global	color
	.global	hOff
	.global	vOff
	.global	spike
	.global	setyN
	.global	setN
	.global	serving
	.global	transNum
	.global	urturny
	.global	urtur
	.global	urturn
	.global	shortyN
	.global	shorty
	.global	sety
	.global	returnedN
	.global	returned
	.global	repeat
	.global	vBallPower
	.global	one
	.global	hity
	.global	hitN
	.global	hit
	.global	set
	.global	max
	.global	oppScore
	.global	powerProg
	.global	score
	.global	collisionMap
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	transNum, %object
	.size	transNum, 4
transNum:
	.word	7
	.type	serving, %object
	.size	serving, 4
serving:
	.word	1
	.type	animatePower, %object
	.size	animatePower, 4
animatePower:
	.word	1
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	collisionMapBitmap
	.type	max, %object
	.size	max, 4
max:
	.word	5
	.type	powerProg, %object
	.size	powerProg, 4
powerProg:
	.word	36
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	set, %object
	.size	set, 4
set:
	.space	4
	.type	setN, %object
	.size	setN, 4
setN:
	.space	4
	.type	sety, %object
	.size	sety, 4
sety:
	.space	4
	.type	setyN, %object
	.size	setyN, 4
setyN:
	.space	4
	.type	shorty, %object
	.size	shorty, 4
shorty:
	.space	4
	.type	hity, %object
	.size	hity, 4
hity:
	.space	4
	.type	hit, %object
	.size	hit, 4
hit:
	.space	4
	.type	one, %object
	.size	one, 4
one:
	.space	4
	.type	shortyN, %object
	.size	shortyN, 4
shortyN:
	.space	4
	.type	urturn, %object
	.size	urturn, 4
urturn:
	.space	4
	.type	urtur, %object
	.size	urtur, 4
urtur:
	.space	4
	.type	returnedN, %object
	.size	returnedN, 4
returnedN:
	.space	4
	.type	urturny, %object
	.size	urturny, 4
urturny:
	.space	4
	.type	spike, %object
	.size	spike, 4
spike:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	color, %object
	.size	color, 4
color:
	.space	4
	.type	cheat, %object
	.size	cheat, 4
cheat:
	.space	4
	.type	x, %object
	.size	x, 4
x:
	.space	4
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.type	hitN, %object
	.size	hitN, 4
hitN:
	.space	4
	.type	returned, %object
	.size	returned, 4
returned:
	.space	4
	.type	oppScore, %object
	.size	oppScore, 4
oppScore:
	.space	4
	.type	repeat, %object
	.size	repeat, 4
repeat:
	.space	4
	.type	vBallPower, %object
	.size	vBallPower, 4
vBallPower:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
