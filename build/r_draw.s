	.arch armv6k
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"r_draw.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	R_FlushColumns, %function
R_FlushColumns:
.LFB8:
	.file 1 "c:/devl/prboom3ds/src/r_draw.c"
	.loc 1 181 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 182 0
	ldr	r4, .L7
	ldr	r3, [r4]
	cmp	r3, #4
	bne	.L2
	.loc 1 182 0 is_stmt 0 discriminator 1
	ldmib	r4, {r2, r3}
	cmp	r2, r3
	blt	.L3
.L2:
	.loc 1 183 0 is_stmt 1
	ldr	r3, .L7+4
	ldr	r3, [r3]
	blx	r3
.LVL0:
.L4:
	.loc 1 189 0
	mov	r3, #0
	str	r3, [r4]
	ldmfd	sp!, {r3, r4, r5, pc}
.L3:
	.loc 1 186 0
	ldr	r5, .L7+4
	ldr	r3, [r5, #4]
	blx	r3
.LVL1:
	.loc 1 187 0
	ldr	r3, [r5, #8]
	blx	r3
.LVL2:
	b	.L4
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE8:
	.size	R_FlushColumns, .-R_FlushColumns
	.align	2
	.type	R_FlushWhole8, %function
R_FlushWhole8:
.LFB10:
	.file 2 "c:/devl/prboom3ds/src/r_drawflush.inl"
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	ldr	r8, .L18
	.loc 2 109 0
	ldr	ip, .L18+4
	ldr	r9, [r8]
	add	r5, r8, #16
	.loc 2 105 0
	mov	lr, r9
	mov	r3, r9, asl #2
	add	r4, r8, #32
	.loc 2 109 0
	ldr	r7, [r8, #12]
	add	r5, r5, r3
	add	r4, r4, r3
	.loc 2 108 0
	add	r6, r8, #48
.L10:
	.loc 2 105 0
	subs	lr, lr, #1
	bmi	.L17
.L14:
	.loc 2 107 0
	ldr	r3, [r5, #-4]!
.LVL3:
	.loc 2 109 0
	ldr	r2, [ip, #24]
	add	r1, r7, lr
	mla	r2, r2, r3, r1
	.loc 2 110 0
	ldr	r0, [r4, #-4]!
	.loc 2 109 0
	ldr	r1, [ip, #12]
	.loc 2 108 0
	add	r10, lr, r3, asl #2
	.loc 2 112 0
	subs	r0, r0, r3
	.loc 2 109 0
	add	r2, r1, r2
	.loc 2 108 0
	add	r10, r6, r10
.LVL4:
	.loc 2 112 0
	bmi	.L10
	mov	r3, #0
.LVL5:
	add	r0, r0, #1
.LVL6:
.L12:
	.loc 2 124 0
	ldrb	r1, [r10, r3, asl #2]	@ zero_extendqisi2
	add	r3, r3, #1
.LVL7:
	strb	r1, [r2]
.LVL8:
	.loc 2 128 0
	ldr	r1, [ip, #24]
	.loc 2 112 0
	cmp	r3, r0
	.loc 2 128 0
	add	r2, r2, r1
.LVL9:
	.loc 2 112 0
	bne	.L12
	.loc 2 105 0
	subs	lr, lr, #1
	bpl	.L14
.LVL10:
.L17:
	sub	r3, r9, #1
	cmp	r9, #0
	movlt	r9, r3
	rsbge	r9, r9, r3
	str	r9, [r8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE10:
	.size	R_FlushWhole8, .-R_FlushWhole8
	.align	2
	.type	R_FlushHT8, %function
R_FlushHT8:
.LFB11:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL11:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 144 0
	mov	r4, #0
	ldr	r6, .L35
	.loc 2 141 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	ldr	r7, [r6, #8]
	.loc 2 156 0
	ldr	r1, .L35+4
	.loc 2 183 0
	add	r3, r7, #1
	str	r3, [sp]
	mov	r3, r3, asl #2
	ldr	r8, [r6, #4]
	.loc 2 156 0
	ldr	fp, [r6, #12]
	add	r10, r6, #16
	add	r9, r6, #32
	.loc 2 183 0
	str	r3, [sp, #4]
	.loc 2 155 0
	add	r6, r6, #48
.LVL12:
.L26:
	.loc 2 149 0
	ldr	ip, [r10, r4, asl #2]
.LVL13:
	.loc 2 150 0
	ldr	lr, [r9, r4, asl #2]
.LVL14:
	.loc 2 153 0
	cmp	ip, r8
	bge	.L24
	.loc 2 156 0
	ldr	r2, [r1, #24]
	add	r3, fp, r4
	mla	r3, r2, ip, r3
	.loc 2 157 0
	rsb	r5, ip, r8
	.loc 2 156 0
	ldr	r2, [r1, #12]
	.loc 2 155 0
	add	ip, r4, ip, asl #2
.LVL15:
	.loc 2 159 0
	cmp	r5, #0
	.loc 2 156 0
	add	r2, r2, r3
	.loc 2 155 0
	add	ip, r6, ip
.LVL16:
	.loc 2 159 0
	ble	.L24
	mov	r3, #0
.LVL17:
.L25:
	.loc 2 172 0
	ldrb	r0, [ip, r3, asl #2]	@ zero_extendqisi2
	add	r3, r3, #1
.LVL18:
	strb	r0, [r2]
.LVL19:
	.loc 2 176 0
	ldr	r0, [r1, #24]
	.loc 2 159 0
	cmp	r3, r5
	.loc 2 176 0
	add	r2, r2, r0
.LVL20:
	.loc 2 159 0
	bne	.L25
.LVL21:
.L24:
	.loc 2 181 0
	cmp	lr, r7
	ble	.L23
	.loc 2 184 0
	ldr	r3, [sp]
	ldr	r2, [r1, #24]
	.loc 2 185 0
	rsb	lr, r7, lr
.LVL22:
	.loc 2 184 0
	mla	r2, r2, r3, fp
	add	r3, r2, r4
	ldr	r2, [sp, #4]
	ldr	r0, [r1, #12]
	add	ip, r2, r4
	.loc 2 187 0
	cmp	lr, #0
	.loc 2 184 0
	add	r2, r0, r3
	add	ip, r6, ip
.LVL23:
	.loc 2 187 0
	ble	.L23
	mov	r3, #0
.LVL24:
.L28:
	.loc 2 200 0
	ldrb	r0, [ip, r3, asl #2]	@ zero_extendqisi2
	add	r3, r3, #1
.LVL25:
	strb	r0, [r2]
.LVL26:
	.loc 2 204 0
	ldr	r0, [r1, #24]
	.loc 2 187 0
	cmp	r3, lr
	.loc 2 204 0
	add	r2, r2, r0
.LVL27:
	.loc 2 187 0
	bne	.L28
.LVL28:
.L23:
	.loc 2 207 0
	add	r4, r4, #1
.LVL29:
	.loc 2 147 0
	cmp	r4, #4
	bne	.L26
	.loc 2 209 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL30:
.L36:
	.align	2
.L35:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE11:
	.size	R_FlushHT8, .-R_FlushHT8
	.align	2
	.type	R_FlushQuad8, %function
R_FlushQuad8:
.LFB12:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 213 0
	ldr	r0, .L49
	.loc 2 214 0
	ldr	ip, .L49+4
	ldr	r3, [r0, #12]
	ldr	r2, [ip, #24]
	.loc 2 212 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 2 213 0
	ldr	lr, [r0, #4]
	.loc 2 214 0
	ldr	r1, [ip, #12]
	mla	r3, r2, lr, r3
	.loc 2 213 0
	add	r2, r0, #48
	.loc 2 214 0
	add	r3, r1, r3
	.loc 2 213 0
	add	r2, r2, lr, asl #2
.LVL31:
	.loc 2 225 0
	ldr	r1, [r0, #8]
	orr	r0, r3, r2
	.loc 2 253 0
	tst	r0, #3
	.loc 2 225 0
	rsb	r1, lr, r1
.LVL32:
	.loc 2 253 0
	bne	.L47
.LVL33:
	.loc 2 254 0
	cmp	r1, #0
	ldrlt	pc, [sp], #4
.L41:
	.loc 2 256 0
	ldr	r0, [r2], #4
.LVL34:
	.loc 2 254 0
	sub	r1, r1, #1
.LVL35:
	.loc 2 256 0
	str	r0, [r3]
.LVL36:
	.loc 2 258 0
	ldr	r0, [ip, #24]
	.loc 2 254 0
	cmn	r1, #1
	.loc 2 258 0
	add	r3, r3, r0
.LVL37:
	.loc 2 254 0
	bne	.L41
	ldr	pc, [sp], #4
.LVL38:
.L47:
	.loc 2 261 0
	cmp	r1, #0
	blt	.L48
	add	r2, r2, #4
.LVL39:
.L42:
	.loc 2 263 0
	ldrb	r0, [r2, #-4]	@ zero_extendqisi2
	.loc 2 261 0
	sub	r1, r1, #1
.LVL40:
	.loc 2 263 0
	strb	r0, [r3]
	.loc 2 264 0
	ldrb	r0, [r2, #-3]	@ zero_extendqisi2
	.loc 2 261 0
	cmn	r1, #1
	.loc 2 264 0
	strb	r0, [r3, #1]
	.loc 2 265 0
	ldrb	r0, [r2, #-2]	@ zero_extendqisi2
	add	r2, r2, #4
.LVL41:
	strb	r0, [r3, #2]
	.loc 2 266 0
	ldrb	r0, [r2, #-5]	@ zero_extendqisi2
	strb	r0, [r3, #3]
.LVL42:
	.loc 2 268 0
	ldr	r0, [ip, #24]
	add	r3, r3, r0
.LVL43:
	.loc 2 261 0
	bne	.L42
	ldr	pc, [sp], #4
.LVL44:
.L48:
	ldr	pc, [sp], #4
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE12:
	.size	R_FlushQuad8, .-R_FlushQuad8
	.align	2
	.type	R_FlushWholeTL8, %function
R_FlushWholeTL8:
.LFB13:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	fp, .L60
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	ldr	r3, [fp]
	add	r8, fp, #16
	mov	r6, r3
	str	r3, [sp, #4]
	add	r7, fp, #32
	mov	r3, r3, asl #2
	.loc 2 109 0
	ldr	r4, .L60+4
	ldr	r10, [fp, #12]
	ldr	r5, [fp, #1008]
	add	r8, r8, r3
	add	r7, r7, r3
	.loc 2 108 0
	add	r9, fp, #48
.L52:
	.loc 2 105 0
	subs	r6, r6, #1
	bmi	.L59
.L56:
	.loc 2 107 0
	ldr	ip, [r8, #-4]!
.LVL45:
	.loc 2 109 0
	ldr	r3, [r4, #24]
	add	r2, r6, r10
	mla	r3, r3, ip, r2
	.loc 2 110 0
	ldr	lr, [r7, #-4]!
	.loc 2 109 0
	ldr	r2, [r4, #12]
	.loc 2 112 0
	subs	lr, lr, ip
	.loc 2 108 0
	add	ip, r6, ip, asl #2
.LVL46:
	.loc 2 109 0
	add	r3, r2, r3
	.loc 2 108 0
	add	ip, r9, ip
.LVL47:
	.loc 2 112 0
	bmi	.L52
	mov	r2, #0
	add	lr, lr, #1
.LVL48:
.L54:
	.loc 2 115 0
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldrb	r0, [ip, r2, asl #2]	@ zero_extendqisi2
	add	r1, r5, r1, asl #8
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	add	r2, r2, #1
.LVL49:
	strb	r1, [r3]
.LVL50:
	.loc 2 128 0
	ldr	r1, [r4, #24]
	.loc 2 112 0
	cmp	r2, lr
	.loc 2 128 0
	add	r3, r3, r1
.LVL51:
	.loc 2 112 0
	bne	.L54
	.loc 2 105 0
	subs	r6, r6, #1
	bpl	.L56
.LVL52:
.L59:
	ldr	r2, [sp, #4]
	sub	r3, r2, #1
	cmp	r2, #0
	rsbge	r3, r2, r3
	str	r3, [fp]
	.loc 2 131 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE13:
	.size	R_FlushWholeTL8, .-R_FlushWholeTL8
	.align	2
	.type	R_FlushHTTL8, %function
R_FlushHTTL8:
.LFB14:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL53:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 144 0
	mov	r6, #0
	ldr	r3, .L77
	.loc 2 141 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	ldr	r8, [r3, #8]
	ldr	r9, [r3, #4]
	.loc 2 183 0
	add	r2, r8, #1
	.loc 2 156 0
	ldr	fp, [r3, #12]
	ldr	ip, [r3, #1008]
	.loc 2 183 0
	str	r2, [sp, #8]
	add	r10, r3, #16
	mov	r2, r2, asl #2
	.loc 2 155 0
	add	r3, r3, #48
	.loc 2 156 0
	ldr	r0, .L77+4
	.loc 2 183 0
	str	r2, [sp, #12]
	.loc 2 155 0
	str	r3, [sp, #4]
.LVL54:
.L68:
	.loc 2 149 0
	ldr	r4, [r10, r6, asl #2]
.LVL55:
	.loc 2 150 0
	ldr	r3, .L77+8
	.loc 2 153 0
	cmp	r4, r9
	.loc 2 150 0
	ldr	r5, [r3, r6, asl #2]
.LVL56:
	.loc 2 153 0
	bge	.L66
	.loc 2 156 0
	ldr	r2, [r0, #24]
	add	r3, fp, r6
	mla	r3, r2, r4, r3
	ldr	r2, [r0, #12]
	.loc 2 157 0
	rsb	r7, r4, r9
	.loc 2 156 0
	add	r3, r2, r3
	.loc 2 155 0
	ldr	r2, [sp, #4]
	add	r4, r6, r4, asl #2
.LVL57:
	.loc 2 159 0
	cmp	r7, #0
	.loc 2 155 0
	add	r4, r2, r4
.LVL58:
	.loc 2 159 0
	ble	.L66
	mov	r2, #0
.LVL59:
.L67:
	.loc 2 163 0
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldrb	lr, [r4, r2, asl #2]	@ zero_extendqisi2
	add	r1, ip, r1, asl #8
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	add	r2, r2, #1
.LVL60:
	strb	r1, [r3]
.LVL61:
	.loc 2 176 0
	ldr	r1, [r0, #24]
	.loc 2 159 0
	cmp	r2, r7
	.loc 2 176 0
	add	r3, r3, r1
.LVL62:
	.loc 2 159 0
	bne	.L67
.LVL63:
.L66:
	.loc 2 181 0
	cmp	r5, r8
	ble	.L65
	.loc 2 184 0
	ldr	r2, [sp, #8]
	ldr	r3, [r0, #24]
	ldr	r1, [sp, #12]
	mla	r3, r3, r2, fp
	ldr	r2, [r0, #12]
	add	r3, r3, r6
	.loc 2 185 0
	rsb	r5, r8, r5
.LVL64:
	.loc 2 184 0
	add	r3, r2, r3
	ldr	r2, [sp, #4]
	add	r4, r1, r6
	.loc 2 187 0
	cmp	r5, #0
	add	r4, r2, r4
.LVL65:
	ble	.L65
	mov	r2, #0
.LVL66:
.L70:
	.loc 2 191 0
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldrb	lr, [r4, r2, asl #2]	@ zero_extendqisi2
	add	r1, ip, r1, asl #8
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	add	r2, r2, #1
.LVL67:
	strb	r1, [r3]
.LVL68:
	.loc 2 204 0
	ldr	r1, [r0, #24]
	.loc 2 187 0
	cmp	r2, r5
	.loc 2 204 0
	add	r3, r3, r1
.LVL69:
	.loc 2 187 0
	bne	.L70
.LVL70:
.L65:
	.loc 2 207 0
	add	r6, r6, #1
.LVL71:
	.loc 2 147 0
	cmp	r6, #4
	bne	.L68
	.loc 2 209 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL72:
.L78:
	.align	2
.L77:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+32
	.cfi_endproc
.LFE14:
	.size	R_FlushHTTL8, .-R_FlushHTTL8
	.align	2
	.type	R_FlushQuadTL8, %function
R_FlushQuadTL8:
.LFB15:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 213 0
	ldr	r1, .L85
	.loc 2 212 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 2 214 0
	ldr	lr, .L85+4
	.loc 2 213 0
	ldr	r2, [r1, #4]
	.loc 2 214 0
	ldr	r0, [r1, #12]
	ldr	r3, [lr, #24]
	.loc 2 225 0
	ldr	ip, [r1, #8]
	.loc 2 214 0
	mla	r3, r3, r2, r0
	ldr	r4, [lr, #12]
	.loc 2 228 0
	subs	ip, ip, r2
	.loc 2 213 0
	add	r0, r1, #48
	.loc 2 214 0
	add	r3, r4, r3
	.loc 2 213 0
	add	r2, r0, r2, asl #2
.LVL73:
	.loc 2 228 0
	ldmmifd	sp!, {r4, pc}
	ldr	r1, [r1, #1008]
	add	r2, r2, #4
.LVL74:
.L81:
	.loc 2 230 0
	ldrb	r0, [r3]	@ zero_extendqisi2
	ldrb	r4, [r2, #-4]	@ zero_extendqisi2
	add	r0, r1, r0, asl #8
	ldrb	r4, [r0, r4]	@ zero_extendqisi2
	.loc 2 231 0
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 2 230 0
	strb	r4, [r3]
	.loc 2 231 0
	ldrb	r4, [r2, #-3]	@ zero_extendqisi2
	add	r0, r1, r0, asl #8
	ldrb	r4, [r0, r4]	@ zero_extendqisi2
	.loc 2 232 0
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	.loc 2 231 0
	strb	r4, [r3, #1]
	.loc 2 232 0
	ldrb	r4, [r2, #-2]	@ zero_extendqisi2
	add	r0, r1, r0, asl #8
	ldrb	r4, [r0, r4]	@ zero_extendqisi2
	.loc 2 233 0
	ldrb	r0, [r3, #3]	@ zero_extendqisi2
	.loc 2 232 0
	strb	r4, [r3, #2]
	.loc 2 233 0
	ldrb	r4, [r2, #-1]	@ zero_extendqisi2
	add	r0, r1, r0, asl #8
	ldrb	r0, [r0, r4]	@ zero_extendqisi2
	.loc 2 228 0
	sub	ip, ip, #1
.LVL75:
	.loc 2 233 0
	strb	r0, [r3, #3]
.LVL76:
	.loc 2 235 0
	ldr	r0, [lr, #24]
	.loc 2 228 0
	cmn	ip, #1
	add	r2, r2, #4
.LVL77:
	.loc 2 235 0
	add	r3, r3, r0
.LVL78:
	.loc 2 228 0
	bne	.L81
	ldmfd	sp!, {r4, pc}
.L86:
	.align	2
.L85:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE15:
	.size	R_FlushQuadTL8, .-R_FlushQuadTL8
	.align	2
	.type	R_FlushWholeFuzz8, %function
R_FlushWholeFuzz8:
.LFB16:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	ldr	lr, .L97
	.loc 2 109 0
	ldr	ip, .L97+4
	ldr	r9, [lr]
	add	r7, lr, #16
	.loc 2 105 0
	mov	r5, r9
	mov	r3, r9, asl #2
	add	r6, lr, #32
	.loc 2 109 0
	ldr	r8, [lr, #12]
	ldr	r4, [lr, #1012]
	ldr	r2, [lr, #1016]
	add	r7, r7, r3
	add	r6, r6, r3
.L88:
	.loc 2 105 0
	subs	r5, r5, #1
	bmi	.L96
.L93:
	.loc 2 107 0
	ldr	r0, [r7, #-4]!
.LVL79:
	.loc 2 109 0
	ldr	r3, [ip, #24]
	add	r1, r8, r5
	mla	r3, r3, r0, r1
	.loc 2 110 0
	ldr	r1, [r6, #-4]!
	.loc 2 109 0
	ldr	r10, [ip, #12]
	.loc 2 112 0
	subs	r0, r1, r0
.LVL80:
	.loc 2 109 0
	add	r3, r10, r3
.LVL81:
	.loc 2 112 0
	bmi	.L88
.LVL82:
.L91:
	.loc 2 118 0
	add	r1, lr, r2, asl #2
	ldr	r1, [r1, #1020]
	.loc 2 122 0
	cmp	r2, #49
	.loc 2 118 0
	ldrb	r1, [r3, r1]	@ zero_extendqisi2
	.loc 2 112 0
	sub	r0, r0, #1
.LVL83:
	.loc 2 118 0
	add	r1, r4, r1
	ldrb	r1, [r1, #1536]	@ zero_extendqisi2
	.loc 2 122 0
	addne	r2, r2, #1
	.loc 2 118 0
	strb	r1, [r3]
	.loc 2 128 0
	ldr	r1, [ip, #24]
	.loc 2 122 0
	moveq	r2, #0
	.loc 2 112 0
	cmn	r0, #1
	.loc 2 128 0
	add	r3, r3, r1
.LVL84:
	.loc 2 112 0
	bne	.L91
	.loc 2 105 0
	subs	r5, r5, #1
	bpl	.L93
.LVL85:
.L96:
	sub	r3, r9, #1
	cmp	r9, #0
	movlt	r9, r3
	rsbge	r9, r9, r3
	str	r2, [lr, #1016]
	str	r9, [lr]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L98:
	.align	2
.L97:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE16:
	.size	R_FlushWholeFuzz8, .-R_FlushWholeFuzz8
	.align	2
	.type	R_FlushHTFuzz8, %function
R_FlushHTFuzz8:
.LFB17:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL86:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 144 0
	mov	r6, #0
	ldr	lr, .L116
	.loc 2 141 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	ldr	r7, [lr, #8]
	.loc 2 156 0
	ldr	r4, .L116+4
	.loc 2 183 0
	add	r2, r7, #1
	ldr	r8, [lr, #4]
	.loc 2 156 0
	ldr	fp, [lr, #12]
	ldr	r5, [lr, #1012]
	ldr	r3, [lr, #1016]
	.loc 2 183 0
	str	r2, [sp, #4]
	add	r10, lr, #16
	add	r9, lr, #32
.LVL87:
.L106:
	.loc 2 149 0
	ldr	r0, [r10, r6, asl #2]
.LVL88:
	.loc 2 150 0
	ldr	ip, [r9, r6, asl #2]
.LVL89:
	.loc 2 153 0
	cmp	r0, r8
	bge	.L103
.LVL90:
	.loc 2 156 0
	ldr	r1, [r4, #24]
	add	r2, r6, fp
	mla	r2, r1, r0, r2
	.loc 2 157 0
	rsb	r0, r0, r8
.LVL91:
	.loc 2 156 0
	ldr	r1, [r4, #12]
	.loc 2 159 0
	subs	r0, r0, #1
	.loc 2 156 0
	add	r2, r1, r2
.LVL92:
	.loc 2 159 0
	bmi	.L103
.LVL93:
.L105:
	.loc 2 166 0
	add	r1, lr, r3, asl #2
	ldr	r1, [r1, #1020]
	.loc 2 170 0
	cmp	r3, #49
	.loc 2 166 0
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	.loc 2 159 0
	sub	r0, r0, #1
.LVL94:
	.loc 2 166 0
	add	r1, r5, r1
	ldrb	r1, [r1, #1536]	@ zero_extendqisi2
	.loc 2 170 0
	addne	r3, r3, #1
	.loc 2 166 0
	strb	r1, [r2]
	.loc 2 176 0
	ldr	r1, [r4, #24]
	.loc 2 170 0
	moveq	r3, #0
	.loc 2 159 0
	cmn	r0, #1
	.loc 2 176 0
	add	r2, r2, r1
.LVL95:
	.loc 2 159 0
	bne	.L105
.LVL96:
.L103:
	.loc 2 181 0
	cmp	ip, r7
	ble	.L102
.LVL97:
	.loc 2 184 0
	ldr	r1, [sp, #4]
	ldr	r2, [r4, #24]
	.loc 2 185 0
	rsb	ip, r7, ip
.LVL98:
	.loc 2 184 0
	mla	r2, r2, r1, fp
	ldr	r1, [r4, #12]
	add	r2, r6, r2
	.loc 2 187 0
	subs	ip, ip, #1
	.loc 2 184 0
	add	r2, r1, r2
.LVL99:
	.loc 2 187 0
	bmi	.L102
.LVL100:
.L109:
	.loc 2 194 0
	add	r1, lr, r3, asl #2
	ldr	r1, [r1, #1020]
	.loc 2 198 0
	cmp	r3, #49
	.loc 2 194 0
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	.loc 2 187 0
	sub	ip, ip, #1
.LVL101:
	.loc 2 194 0
	add	r1, r5, r1
	ldrb	r1, [r1, #1536]	@ zero_extendqisi2
	.loc 2 198 0
	addne	r3, r3, #1
	.loc 2 194 0
	strb	r1, [r2]
	.loc 2 204 0
	ldr	r1, [r4, #24]
	.loc 2 198 0
	moveq	r3, #0
	.loc 2 187 0
	cmn	ip, #1
	.loc 2 204 0
	add	r2, r2, r1
.LVL102:
	.loc 2 187 0
	bne	.L109
.LVL103:
.L102:
	.loc 2 207 0
	add	r6, r6, #1
.LVL104:
	.loc 2 147 0
	cmp	r6, #4
	bne	.L106
	str	r3, [lr, #1016]
	.loc 2 209 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL105:
.L117:
	.align	2
.L116:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE17:
	.size	R_FlushHTFuzz8, .-R_FlushHTFuzz8
	.align	2
	.type	R_FlushQuadFuzz8, %function
R_FlushQuadFuzz8:
.LFB18:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 220 0
	mov	r9, #50
	.loc 2 213 0
	ldr	lr, .L124
	.loc 2 220 0
	ldr	r4, .L124+4
	.loc 2 219 0
	ldr	r0, [lr, #1016]
	.loc 2 220 0
	ldr	r1, [lr, #20]
	.loc 2 221 0
	ldr	r3, [lr, #24]
	.loc 2 220 0
	add	r1, r0, r1
	smull	r2, ip, r4, r1
	mov	r2, r1, asr #31
	rsb	r2, r2, ip, asr #4
	mul	r2, r9, r2
	rsb	r2, r2, r1
	.loc 2 221 0
	add	r3, r2, r3
	smull	r1, ip, r4, r3
	mov	r1, r3, asr #31
	rsb	r1, r1, ip, asr #4
	mul	r1, r9, r1
	.loc 2 222 0
	ldr	r5, [lr, #28]
	.loc 2 221 0
	rsb	r1, r1, r3
	.loc 2 222 0
	add	r5, r1, r5
	smull	r3, r8, r4, r5
	.loc 2 214 0
	ldr	r7, .L124+8
	.loc 2 213 0
	ldr	r6, [lr, #4]
.LVL106:
	.loc 2 214 0
	ldr	r7, [r7, #24]
	.loc 2 222 0
	mov	r3, r5, asr #31
	.loc 2 214 0
	ldr	ip, [lr, #12]
	.loc 2 222 0
	rsb	r3, r3, r8, asr #4
	.loc 2 214 0
	mla	ip, r7, r6, ip
	.loc 2 222 0
	mul	r3, r9, r3
	.loc 2 214 0
	ldr	r8, .L124+8
	.loc 2 225 0
	ldr	r7, [lr, #8]
	.loc 2 214 0
	ldr	r8, [r8, #12]
	.loc 2 212 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 238 0
	subs	r6, r7, r6
.LVL107:
	str	r6, [sp]
	.loc 2 222 0
	rsb	r3, r3, r5
	.loc 2 214 0
	add	ip, r8, ip
.LVL108:
	.loc 2 238 0
	bmi	.L118
	ldr	fp, [lr, #1012]
	.loc 2 244 0
	str	r4, [sp, #4]
.LVL109:
.L120:
	.loc 2 240 0
	add	r5, lr, r0, asl #2
	ldr	r6, [r5, #1020]
	.loc 2 241 0
	add	r5, lr, r2, asl #2
	.loc 2 240 0
	ldrb	r6, [ip, r6]	@ zero_extendqisi2
	.loc 2 241 0
	ldr	r5, [r5, #1020]
	.loc 2 240 0
	add	r6, fp, r6
	ldrb	r6, [r6, #1536]	@ zero_extendqisi2
	.loc 2 241 0
	add	r5, ip, r5
	.loc 2 240 0
	strb	r6, [ip]
	.loc 2 241 0
	ldrb	r5, [r5, #1]	@ zero_extendqisi2
	.loc 2 242 0
	add	r7, lr, r1, asl #2
	.loc 2 241 0
	add	r5, fp, r5
	ldrb	r6, [r5, #1536]	@ zero_extendqisi2
	.loc 2 242 0
	ldr	r5, [r7, #1020]
	.loc 2 241 0
	strb	r6, [ip, #1]
	.loc 2 242 0
	add	r5, ip, r5
	ldrb	r5, [r5, #2]	@ zero_extendqisi2
	.loc 2 243 0
	add	r6, lr, r3, asl #2
	.loc 2 242 0
	add	r5, fp, r5
	ldrb	r4, [r5, #1536]	@ zero_extendqisi2
	.loc 2 243 0
	ldr	r5, [r6, #1020]
	.loc 2 242 0
	strb	r4, [ip, #2]
	.loc 2 244 0
	ldr	r4, [sp, #4]
	.loc 2 243 0
	add	r5, ip, r5
	.loc 2 246 0
	add	r6, r1, #1
	.loc 2 243 0
	ldrb	r1, [r5, #3]	@ zero_extendqisi2
.LVL110:
	.loc 2 246 0
	mov	r5, r4
	.loc 2 244 0
	add	r8, r0, #1
	.loc 2 245 0
	add	r7, r2, #1
	.loc 2 247 0
	add	r10, r3, #1
	.loc 2 244 0
	smull	r3, r0, r4, r8
.LVL111:
	.loc 2 245 0
	smull	r3, r2, r4, r7
.LVL112:
	.loc 2 246 0
	smull	r4, r3, r4, r6
	.loc 2 247 0
	mov	r4, r5
	.loc 2 243 0
	add	r1, fp, r1
	ldrb	r1, [r1, #1536]	@ zero_extendqisi2
	.loc 2 247 0
	smull	r4, r5, r4, r10
	.loc 2 243 0
	strb	r1, [ip, #3]
	.loc 2 244 0
	mov	r1, r8, asr #31
	rsb	r0, r1, r0, asr #4
	.loc 2 245 0
	mov	r1, r7, asr #31
	rsb	r2, r1, r2, asr #4
	.loc 2 246 0
	mov	r1, r6, asr #31
	rsb	r1, r1, r3, asr #4
	.loc 2 247 0
	mov	r3, r10, asr #31
	rsb	r3, r3, r5, asr #4
	.loc 2 238 0
	ldr	r4, [sp]
	.loc 2 244 0
	mul	r0, r9, r0
	.loc 2 245 0
	mul	r2, r9, r2
	.loc 2 246 0
	mul	r1, r9, r1
	.loc 2 247 0
	mul	r3, r9, r3
	.loc 2 249 0
	ldr	r5, .L124+8
	.loc 2 238 0
	sub	r4, r4, #1
	.loc 2 249 0
	ldr	r5, [r5, #24]
	.loc 2 238 0
	cmn	r4, #1
	str	r4, [sp]
.LVL113:
	.loc 2 249 0
	add	ip, ip, r5
.LVL114:
	.loc 2 244 0
	rsb	r0, r0, r8
.LVL115:
	.loc 2 245 0
	rsb	r2, r2, r7
.LVL116:
	.loc 2 246 0
	rsb	r1, r1, r6
.LVL117:
	.loc 2 247 0
	rsb	r3, r3, r10
.LVL118:
	.loc 2 238 0
	bne	.L120
.LVL119:
.L118:
	.loc 2 283 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L125:
	.align	2
.L124:
	.word	.LANCHOR0
	.word	1374389535
	.word	.LANCHOR1
	.cfi_endproc
.LFE18:
	.size	R_FlushQuadFuzz8, .-R_FlushQuadFuzz8
	.align	2
	.type	R_FlushWhole15, %function
R_FlushWhole15:
.LFB19:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r8, .L135
	.loc 2 109 0
	ldr	r3, .L135+4
	ldr	r9, [r8]
	ldr	r4, [r3, #28]
	.loc 2 105 0
	mov	r0, r9
	mov	r2, r9, asl #2
	add	lr, r8, #16
	add	ip, r8, #32
	.loc 2 109 0
	ldr	r7, [r3, #16]
	ldr	r6, [r8, #12]
	.loc 2 108 0
	ldr	r5, .L135+8
	add	lr, lr, r2
	add	ip, ip, r2
	mov	r10, r4, asl #1
.L127:
	.loc 2 105 0
	subs	r0, r0, #1
	bmi	.L134
.L131:
	.loc 2 107 0
	ldr	r2, [lr, #-4]!
.LVL120:
	add	r1, r6, r0
	.loc 2 109 0
	mla	r1, r2, r4, r1
	.loc 2 110 0
	ldr	fp, [ip, #-4]!
	.loc 2 108 0
	add	r3, r0, r2, asl #2
	.loc 2 112 0
	subs	r2, fp, r2
.LVL121:
	.loc 2 109 0
	add	r1, r7, r1, asl #1
	.loc 2 108 0
	add	r3, r5, r3, asl #1
.LVL122:
	.loc 2 112 0
	bmi	.L127
	add	r3, r3, #8
.LVL123:
.L129:
	.loc 2 124 0
	ldrh	fp, [r3, #-8]
	.loc 2 112 0
	sub	r2, r2, #1
.LVL124:
	cmn	r2, #1
	.loc 2 124 0
	strh	fp, [r1], r10	@ movhi
.LVL125:
	add	r3, r3, #8
.LVL126:
	.loc 2 112 0
	bne	.L129
	.loc 2 105 0
	subs	r0, r0, #1
	bpl	.L131
.LVL127:
.L134:
	sub	r3, r9, #1
	cmp	r9, #0
	movlt	r9, r3
	rsbge	r9, r9, r3
	str	r9, [r8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L136:
	.align	2
.L135:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.cfi_endproc
.LFE19:
	.size	R_FlushWhole15, .-R_FlushWhole15
	.align	2
	.type	R_FlushHT15, %function
R_FlushHT15:
.LFB20:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL128:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 144 0
	mov	lr, #0
	ldr	r6, .L152
	.loc 2 156 0
	ldr	r2, .L152+4
	ldr	r7, [r6, #8]
	ldr	r1, [r6, #12]
	ldr	r10, [r2, #28]
	.loc 2 183 0
	add	r4, r7, #1
	.loc 2 184 0
	mla	r5, r10, r4, r1
	ldr	r3, .L152+8
	.loc 2 156 0
	ldr	r2, [r2, #16]
	.loc 2 141 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	add	r4, r3, r4, asl #3
	ldr	r8, [r6, #4]
	add	r9, r6, #16
	.loc 2 156 0
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r5, r2, r5, asl #1
	add	r4, r4, #8
	mov	fp, r10, asl #1
	add	r6, r6, #32
.LVL129:
.L143:
	.loc 2 149 0
	ldr	r3, [r9, lr, asl #2]
.LVL130:
	.loc 2 150 0
	ldr	r2, [r6, lr, asl #2]
.LVL131:
	.loc 2 153 0
	cmp	r3, r8
	bge	.L141
	ldr	r1, [sp, #4]
	.loc 2 156 0
	ldr	ip, [sp]
	add	r0, r1, lr
	mla	r0, r3, r10, r0
	.loc 2 157 0
	rsb	r1, r3, r8
	.loc 2 156 0
	add	r0, ip, r0, asl #1
	.loc 2 155 0
	ldr	ip, .L152+8
	add	r3, lr, r3, asl #2
.LVL132:
	.loc 2 159 0
	subs	r1, r1, #1
	.loc 2 155 0
	add	r3, ip, r3, asl #1
.LVL133:
	.loc 2 159 0
	bmi	.L141
	add	r3, r3, #8
.LVL134:
.L142:
	.loc 2 172 0
	ldrh	ip, [r3, #-8]
	.loc 2 159 0
	sub	r1, r1, #1
.LVL135:
	cmn	r1, #1
	.loc 2 172 0
	strh	ip, [r0], fp	@ movhi
.LVL136:
	add	r3, r3, #8
.LVL137:
	.loc 2 159 0
	bne	.L142
.LVL138:
.L141:
	.loc 2 181 0
	cmp	r2, r7
	ble	.L140
	.loc 2 185 0
	rsb	r2, r7, r2
.LVL139:
	.loc 2 187 0
	subs	r2, r2, #1
	.loc 2 184 0
	mov	r1, r5
.LVL140:
	.loc 2 187 0
	bmi	.L140
	mov	r3, r4
.LVL141:
.L145:
	.loc 2 200 0
	ldrh	r0, [r3, #-8]
	.loc 2 187 0
	sub	r2, r2, #1
.LVL142:
	cmn	r2, #1
	.loc 2 200 0
	strh	r0, [r1], fp	@ movhi
.LVL143:
	add	r3, r3, #8
.LVL144:
	.loc 2 187 0
	bne	.L145
.LVL145:
.L140:
	.loc 2 207 0
	add	lr, lr, #1
.LVL146:
	.loc 2 147 0
	cmp	lr, #4
	add	r5, r5, #2
	add	r4, r4, #2
	bne	.L143
	.loc 2 209 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL147:
.L153:
	.align	2
.L152:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.cfi_endproc
.LFE20:
	.size	R_FlushHT15, .-R_FlushHT15
	.align	2
	.type	R_FlushQuad15, %function
R_FlushQuad15:
.LFB21:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 213 0
	ldr	r3, .L160
	.loc 2 212 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 2 214 0
	ldr	r4, .L160+4
	.loc 2 213 0
	ldr	r0, [r3, #4]
	.loc 2 214 0
	ldr	r2, [r3, #12]
	ldr	ip, [r4, #28]
	.loc 2 225 0
	ldr	r1, [r3, #8]
	.loc 2 214 0
	mla	lr, ip, r0, r2
	.loc 2 213 0
	ldr	r3, .L160+8
	.loc 2 214 0
	ldr	r2, [r4, #16]
	.loc 2 272 0
	subs	r1, r1, r0
	.loc 2 214 0
	add	r2, r2, lr, asl #1
	.loc 2 213 0
	add	r3, r3, r0, asl #3
.LVL148:
	.loc 2 272 0
	ldmmifd	sp!, {r4, pc}
	mov	ip, ip, asl #1
	add	r3, r3, #8
.LVL149:
.L156:
	.loc 2 274 0
	ldrh	r0, [r3, #-8]
	.loc 2 272 0
	sub	r1, r1, #1
.LVL150:
	.loc 2 274 0
	strh	r0, [r2]	@ movhi
	.loc 2 275 0
	ldrh	r0, [r3, #-6]
	.loc 2 272 0
	cmn	r1, #1
	.loc 2 275 0
	strh	r0, [r2, #2]	@ movhi
	.loc 2 276 0
	ldrh	r0, [r3, #-4]
	add	r3, r3, #8
.LVL151:
	strh	r0, [r2, #4]	@ movhi
	.loc 2 277 0
	ldrh	r0, [r3, #-10]
	strh	r0, [r2, #6]	@ movhi
.LVL152:
	.loc 2 279 0
	add	r2, r2, ip
.LVL153:
	.loc 2 272 0
	bne	.L156
	ldmfd	sp!, {r4, pc}
.L161:
	.align	2
.L160:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.cfi_endproc
.LFE21:
	.size	R_FlushQuad15, .-R_FlushQuad15
	.align	2
	.type	R_FlushWholeTL15, %function
R_FlushWholeTL15:
.LFB22:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r2, .L171
	.loc 2 109 0
	ldr	r3, .L171+4
	ldr	r1, .L171
	ldr	r2, [r2]
	.loc 2 100 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 109 0
	ldr	r9, [r3, #28]
	ldr	r10, [r3, #16]
	ldr	r3, [r1, #12]
	mov	r6, r2
	str	r2, [sp, #4]
	add	r8, r1, #16
	mov	r2, r2, asl #2
	add	r7, r1, #32
	add	r8, r8, r2
	add	r7, r7, r2
	mov	fp, r9, asl #1
	str	r3, [sp]
.L163:
	.loc 2 105 0
	subs	r6, r6, #1
	bmi	.L170
.L167:
	ldr	r2, [sp]
	.loc 2 107 0
	ldr	r3, [r8, #-4]!
.LVL154:
	add	r1, r2, r6
	.loc 2 109 0
	mla	r1, r3, r9, r1
	.loc 2 110 0
	ldr	ip, [r7, #-4]!
	.loc 2 108 0
	add	r0, r6, r3, asl #2
	.loc 2 112 0
	subs	ip, ip, r3
	.loc 2 108 0
	ldr	r3, .L171+8
.LVL155:
	.loc 2 109 0
	add	r1, r10, r1, asl #1
	.loc 2 108 0
	add	r0, r3, r0, asl #1
.LVL156:
	.loc 2 112 0
	bmi	.L163
	add	r0, r0, #8
.LVL157:
.L165:
	.loc 2 115 0
	ldr	r2, .L171+12
	ldrh	r5, [r0, #-8]
	mov	lr, r2
	ldrh	r3, [r1]
	and	r4, r5, #992
	and	r2, r2, r5
	add	r5, r4, r4, asl #2
	and	lr, lr, r3
	add	r4, r4, r5, asl #1
	and	r3, r3, #992
	add	r5, r2, r2, asl #2
	add	lr, lr, lr, asl #2
	add	r3, r3, r3, asl #2
	add	r2, r2, r5, asl #1
	add	r2, lr, r2
	add	r3, r3, r4
	ldr	lr, .L171+12
	mov	r3, r3, asr #4
	mov	r2, r2, asr #4
	.loc 2 112 0
	sub	ip, ip, #1
.LVL158:
	.loc 2 115 0
	and	r3, r3, #992
	and	lr, lr, r2
	orr	r3, r3, lr
	.loc 2 112 0
	cmn	ip, #1
	add	r0, r0, #8
.LVL159:
	.loc 2 115 0
	strh	r3, [r1], fp	@ movhi
.LVL160:
	.loc 2 112 0
	bne	.L165
	.loc 2 105 0
	subs	r6, r6, #1
	bpl	.L167
.LVL161:
.L170:
	ldr	r2, [sp, #4]
	sub	r3, r2, #1
	cmp	r2, #0
	rsbge	r3, r2, r3
	ldr	r2, .L171
	str	r3, [r2]
	.loc 2 131 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L172:
	.align	2
.L171:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.word	31775
	.cfi_endproc
.LFE22:
	.size	R_FlushWholeTL15, .-R_FlushWholeTL15
	.align	2
	.type	R_FlushHTTL15, %function
R_FlushHTTL15:
.LFB23:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL162:
	ldr	r3, .L188
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 156 0
	ldr	r0, [r3, #12]
	.loc 2 144 0
	mov	r7, #0
	.loc 2 156 0
	mov	ip, r0
	ldr	r1, .L188+4
	.loc 2 141 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	ldr	r10, [r3, #8]
	.loc 2 156 0
	str	r0, [sp, #20]
	ldr	r0, [r1, #28]
	.loc 2 183 0
	add	r8, r10, #1
	ldr	r2, .L188+8
	.loc 2 184 0
	mla	r9, r0, r8, ip
	.loc 2 156 0
	ldr	r1, [r1, #16]
	add	r8, r2, r8, asl #3
	ldr	r2, [r3, #4]
	add	r3, r3, #32
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	add	r9, r1, r9, asl #1
	add	r8, r8, #8
	mov	fp, r0, asl #1
	str	r3, [sp, #8]
.LVL163:
.L179:
	.loc 2 149 0
	ldr	r3, .L188+12
	ldr	lr, [r3, r7, asl #2]
.LVL164:
	.loc 2 150 0
	ldr	r3, [sp, #8]
	ldr	r4, [r3, r7, asl #2]
.LVL165:
	.loc 2 153 0
	ldr	r3, [sp, #4]
	cmp	lr, r3
	bge	.L177
	ldr	r3, [sp, #20]
	add	r5, r3, r7
	.loc 2 156 0
	ldr	r3, [sp, #16]
	mla	r5, lr, r3, r5
	.loc 2 157 0
	ldr	r3, [sp, #4]
	rsb	r6, lr, r3
	.loc 2 156 0
	ldr	r3, [sp, #12]
	.loc 2 155 0
	add	lr, r7, lr, asl #2
.LVL166:
	.loc 2 156 0
	add	r5, r3, r5, asl #1
	.loc 2 155 0
	ldr	r3, .L188+8
	.loc 2 159 0
	subs	r6, r6, #1
	.loc 2 155 0
	add	lr, r3, lr, asl #1
.LVL167:
	.loc 2 159 0
	bmi	.L177
	add	lr, lr, #8
.LVL168:
.L178:
	.loc 2 163 0
	ldr	r2, .L188+16
	ldrh	ip, [lr, #-8]
	mov	r1, r2
	ldrh	r3, [r5]
	and	r0, ip, #992
	and	r2, r2, ip
	add	ip, r0, r0, asl #2
	and	r1, r1, r3
	add	r0, r0, ip, asl #1
	and	r3, r3, #992
	add	ip, r2, r2, asl #2
	add	r1, r1, r1, asl #2
	add	r3, r3, r3, asl #2
	add	r2, r2, ip, asl #1
	add	r2, r1, r2
	add	r3, r3, r0
	ldr	r1, .L188+16
	mov	r3, r3, asr #4
	mov	r2, r2, asr #4
	.loc 2 159 0
	sub	r6, r6, #1
.LVL169:
	.loc 2 163 0
	and	r3, r3, #992
	and	r1, r1, r2
	orr	r3, r3, r1
	.loc 2 159 0
	cmn	r6, #1
	add	lr, lr, #8
.LVL170:
	.loc 2 163 0
	strh	r3, [r5], fp	@ movhi
.LVL171:
	.loc 2 159 0
	bne	.L178
.LVL172:
.L177:
	.loc 2 181 0
	cmp	r4, r10
	ble	.L176
	.loc 2 185 0
	rsb	r4, r10, r4
.LVL173:
	.loc 2 187 0
	subs	r4, r4, #1
	.loc 2 184 0
	mov	lr, r9
.LVL174:
	.loc 2 187 0
	bmi	.L176
	mov	r5, r8
.LVL175:
.L181:
	.loc 2 191 0
	ldr	ip, .L188+16
	ldrh	r0, [r5, #-8]
	mov	r2, ip
	ldrh	r1, [lr]
	and	ip, ip, r0
	and	r3, r0, #992
	and	r2, r2, r1
	add	r0, r3, r3, asl #2
	and	r1, r1, #992
	add	r6, ip, ip, asl #2
	add	r3, r3, r0, asl #1
	add	r1, r1, r1, asl #2
	add	r0, r2, r2, asl #2
	add	r2, ip, r6, asl #1
	add	r3, r1, r3
	add	r2, r0, r2
	ldr	r1, .L188+16
	mov	r3, r3, asr #4
	mov	r2, r2, asr #4
	.loc 2 187 0
	sub	r4, r4, #1
.LVL176:
	.loc 2 191 0
	and	r3, r3, #992
	and	r1, r1, r2
	orr	r3, r3, r1
	.loc 2 187 0
	cmn	r4, #1
	add	r5, r5, #8
.LVL177:
	.loc 2 191 0
	strh	r3, [lr], fp	@ movhi
.LVL178:
	.loc 2 187 0
	bne	.L181
.LVL179:
.L176:
	.loc 2 207 0
	add	r7, r7, #1
.LVL180:
	.loc 2 147 0
	cmp	r7, #4
	add	r9, r9, #2
	add	r8, r8, #2
	bne	.L179
	.loc 2 209 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL181:
.L189:
	.align	2
.L188:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.word	.LANCHOR0+16
	.word	31775
	.cfi_endproc
.LFE23:
	.size	R_FlushHTTL15, .-R_FlushHTTL15
	.align	2
	.type	R_FlushQuadTL15, %function
R_FlushQuadTL15:
.LFB24:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 213 0
	ldr	r2, .L196
	.loc 2 214 0
	ldr	r0, .L196+4
	.loc 2 213 0
	ldr	r3, [r2, #4]
	.loc 2 214 0
	ldr	r1, [r2, #12]
	.loc 2 212 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 2 214 0
	ldr	lr, [r0, #28]
	.loc 2 225 0
	ldr	ip, [r2, #8]
	.loc 2 214 0
	mla	r2, lr, r3, r1
	ldr	r1, [r0, #16]
	.loc 2 213 0
	ldr	r0, .L196+8
	.loc 2 228 0
	subs	ip, ip, r3
	.loc 2 214 0
	add	r1, r1, r2, asl #1
	.loc 2 213 0
	add	r0, r0, r3, asl #3
.LVL182:
	.loc 2 228 0
	ldmmifd	sp!, {r4, r5, r6, r7, pc}
	mov	lr, lr, asl #1
	add	r0, r0, #8
.LVL183:
.L192:
	.loc 2 230 0
	ldr	r4, .L196+12
	ldrh	r3, [r0, #-8]
	mov	r2, r4
	ldrh	r6, [r1]
	and	r5, r3, #992
	and	r4, r4, r3
	add	r7, r5, r5, asl #2
	and	r3, r6, #992
	and	r2, r2, r6
	add	r6, r4, r4, asl #2
	add	r5, r5, r7, asl #1
	add	r4, r4, r6, asl #1
	add	r3, r3, r3, asl #2
	add	r2, r2, r2, asl #2
	add	r3, r3, r5
	add	r2, r2, r4
	ldr	r4, .L196+12
	mov	r2, r2, asr #4
	mov	r3, r3, asr #4
	and	r4, r4, r2
	and	r3, r3, #992
	orr	r3, r3, r4
	.loc 2 231 0
	ldr	r4, .L196+12
	.loc 2 230 0
	strh	r3, [r1]	@ movhi
	.loc 2 231 0
	mov	r2, r4
	ldrh	r3, [r0, #-6]
	ldrh	r6, [r1, #2]
	and	r5, r3, #992
	and	r4, r4, r3
	add	r7, r5, r5, asl #2
	and	r3, r6, #992
	and	r2, r2, r6
	add	r6, r4, r4, asl #2
	add	r5, r5, r7, asl #1
	add	r4, r4, r6, asl #1
	add	r3, r3, r3, asl #2
	add	r2, r2, r2, asl #2
	add	r3, r3, r5
	add	r2, r2, r4
	ldr	r4, .L196+12
	mov	r2, r2, asr #4
	mov	r3, r3, asr #4
	and	r4, r4, r2
	and	r3, r3, #992
	orr	r3, r3, r4
	.loc 2 232 0
	ldr	r4, .L196+12
	.loc 2 231 0
	strh	r3, [r1, #2]	@ movhi
	.loc 2 232 0
	mov	r2, r4
	ldrh	r3, [r0, #-4]
	ldrh	r6, [r1, #4]
	and	r5, r3, #992
	and	r4, r4, r3
	add	r7, r5, r5, asl #2
	and	r3, r6, #992
	and	r2, r2, r6
	add	r6, r4, r4, asl #2
	add	r5, r5, r7, asl #1
	add	r4, r4, r6, asl #1
	add	r3, r3, r3, asl #2
	add	r2, r2, r2, asl #2
	add	r3, r3, r5
	add	r2, r2, r4
	ldr	r4, .L196+12
	mov	r2, r2, asr #4
	mov	r3, r3, asr #4
	and	r4, r4, r2
	and	r3, r3, #992
	orr	r3, r3, r4
	.loc 2 233 0
	ldr	r4, .L196+12
	.loc 2 232 0
	strh	r3, [r1, #4]	@ movhi
	.loc 2 233 0
	mov	r2, r4
	ldrh	r3, [r0, #-2]
	ldrh	r6, [r1, #6]
	and	r5, r3, #992
	and	r4, r4, r3
	and	r2, r2, r6
	and	r3, r6, #992
	add	r7, r5, r5, asl #2
	add	r6, r4, r4, asl #2
	add	r4, r4, r6, asl #1
	add	r5, r5, r7, asl #1
	add	r3, r3, r3, asl #2
	add	r2, r2, r2, asl #2
	add	r2, r2, r4
	add	r3, r3, r5
	ldr	r4, .L196+12
	mov	r3, r3, asr #4
	mov	r2, r2, asr #4
	.loc 2 228 0
	sub	ip, ip, #1
.LVL184:
	.loc 2 233 0
	and	r3, r3, #992
	and	r4, r4, r2
	orr	r3, r3, r4
	.loc 2 228 0
	cmn	ip, #1
	.loc 2 233 0
	strh	r3, [r1, #6]	@ movhi
.LVL185:
	add	r0, r0, #8
	.loc 2 235 0
	add	r1, r1, lr
.LVL186:
	.loc 2 228 0
	bne	.L192
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L197:
	.align	2
.L196:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.word	31775
	.cfi_endproc
.LFE24:
	.size	R_FlushQuadTL15, .-R_FlushQuadTL15
	.align	2
	.type	R_FlushWholeFuzz15, %function
R_FlushWholeFuzz15:
.LFB25:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r4, .L208
	.loc 2 109 0
	ldr	r3, .L208+4
	ldr	r2, [r4]
	.loc 2 100 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 109 0
	ldr	r8, [r3, #28]
	mov	r5, r2
	str	r2, [sp, #4]
	add	r7, r4, #16
	mov	r2, r2, asl #2
	add	r6, r4, #32
	ldr	r10, [r3, #16]
	ldr	r9, [r4, #12]
	ldr	r0, [r4, #1016]
	add	r7, r7, r2
	add	r6, r6, r2
	mov	fp, r8, asl #1
.L199:
	.loc 2 105 0
	subs	r5, r5, #1
	bmi	.L207
.L204:
	.loc 2 107 0
	ldr	ip, [r7, #-4]!
.LVL187:
	add	r1, r9, r5
	.loc 2 109 0
	mla	r1, ip, r8, r1
	.loc 2 110 0
	ldr	r3, [r6, #-4]!
	.loc 2 109 0
	add	r1, r10, r1, asl #1
.LVL188:
	.loc 2 112 0
	subs	ip, r3, ip
.LVL189:
	bmi	.L199
.L202:
	.loc 2 118 0
	add	r3, r4, r0, asl #2
	ldr	r3, [r3, #1020]
	ldr	r2, .L208+8
	mov	r3, r3, asl #1
	ldrh	lr, [r1, r3]
	.loc 2 122 0
	cmp	r0, #49
	.loc 2 118 0
	and	r3, lr, #992
	and	r2, r2, lr
	rsb	lr, r2, r2, asl #4
	rsb	r3, r3, r3, asl #4
	ldr	r2, .L208+8
	mov	r3, r3, asr #4
	mov	lr, lr, asr #4
	.loc 2 112 0
	sub	ip, ip, #1
.LVL190:
	.loc 2 118 0
	and	r3, r3, #992
	and	r2, r2, lr
	.loc 2 122 0
	addne	r0, r0, #1
	moveq	r0, #0
.LVL191:
	.loc 2 118 0
	orr	r2, r3, r2
	.loc 2 112 0
	cmn	ip, #1
	.loc 2 118 0
	strh	r2, [r1], fp	@ movhi
.LVL192:
	.loc 2 112 0
	bne	.L202
	.loc 2 105 0
	subs	r5, r5, #1
	bpl	.L204
.LVL193:
.L207:
	ldr	r2, [sp, #4]
	str	r0, [r4, #1016]
	sub	r3, r2, #1
	cmp	r2, #0
	rsbge	r3, r2, r3
	str	r3, [r4]
	.loc 2 131 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L209:
	.align	2
.L208:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	31775
	.cfi_endproc
.LFE25:
	.size	R_FlushWholeFuzz15, .-R_FlushWholeFuzz15
	.align	2
	.type	R_FlushHTFuzz15, %function
R_FlushHTFuzz15:
.LFB26:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL194:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 144 0
	mov	r6, #0
	ldr	r5, .L227
	.loc 2 156 0
	ldr	r3, .L227+4
	ldr	r8, [r5, #8]
	ldr	r10, [r3, #28]
	ldr	r2, [r5, #12]
	.loc 2 184 0
	mla	r7, r8, r10, r10
	.loc 2 156 0
	ldr	r3, [r3, #16]
	.loc 2 141 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 184 0
	add	r7, r2, r7
	ldr	r9, [r5, #4]
	ldr	r0, [r5, #1016]
	.loc 2 156 0
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r7, r3, r7, asl #1
	mov	fp, r10, asl #1
.LVL195:
.L217:
	.loc 2 149 0
	ldr	r3, .L227+8
	ldr	ip, [r3, r6, asl #2]
.LVL196:
	.loc 2 150 0
	add	r3, r3, #16
	.loc 2 153 0
	cmp	ip, r9
	.loc 2 150 0
	ldr	lr, [r3, r6, asl #2]
.LVL197:
	.loc 2 153 0
	bge	.L214
.LVL198:
	ldr	r3, [sp, #4]
	add	r4, r3, r6
	.loc 2 156 0
	mla	r4, ip, r10, r4
	ldr	r3, [sp]
	.loc 2 157 0
	rsb	ip, ip, r9
.LVL199:
	.loc 2 159 0
	subs	ip, ip, #1
	.loc 2 156 0
	add	r4, r3, r4, asl #1
.LVL200:
	.loc 2 159 0
	bmi	.L214
.LVL201:
.L216:
	.loc 2 166 0
	add	r3, r5, r0, asl #2
	ldr	r3, [r3, #1020]
	ldr	r2, .L227+12
	mov	r3, r3, asl #1
	ldrh	r1, [r4, r3]
	.loc 2 170 0
	cmp	r0, #49
	.loc 2 166 0
	and	r3, r1, #992
	and	r2, r2, r1
	rsb	r1, r2, r2, asl #4
	rsb	r3, r3, r3, asl #4
	ldr	r2, .L227+12
	mov	r3, r3, asr #4
	mov	r1, r1, asr #4
	.loc 2 159 0
	sub	ip, ip, #1
.LVL202:
	.loc 2 166 0
	and	r3, r3, #992
	and	r2, r2, r1
	.loc 2 170 0
	addne	r0, r0, #1
	moveq	r0, #0
.LVL203:
	.loc 2 166 0
	orr	r2, r3, r2
	.loc 2 159 0
	cmn	ip, #1
	.loc 2 166 0
	strh	r2, [r4], fp	@ movhi
.LVL204:
	.loc 2 159 0
	bne	.L216
.LVL205:
.L214:
	.loc 2 181 0
	cmp	lr, r8
	ble	.L213
.LVL206:
	.loc 2 185 0
	rsb	lr, r8, lr
.LVL207:
	.loc 2 187 0
	subs	lr, lr, #1
	.loc 2 184 0
	mov	ip, r7
.LVL208:
	.loc 2 187 0
	bmi	.L213
.LVL209:
.L220:
	.loc 2 194 0
	add	r3, r5, r0, asl #2
	ldr	r3, [r3, #1020]
	ldr	r2, .L227+12
	mov	r3, r3, asl #1
	ldrh	r1, [ip, r3]
	.loc 2 198 0
	cmp	r0, #49
	.loc 2 194 0
	and	r3, r1, #992
	and	r2, r2, r1
	rsb	r3, r3, r3, asl #4
	rsb	r2, r2, r2, asl #4
	ldr	r1, .L227+12
	mov	r3, r3, asr #4
	mov	r2, r2, asr #4
	.loc 2 187 0
	sub	lr, lr, #1
.LVL210:
	.loc 2 194 0
	and	r3, r3, #992
	and	r1, r1, r2
	.loc 2 198 0
	addne	r0, r0, #1
	moveq	r0, #0
.LVL211:
	.loc 2 194 0
	orr	r3, r3, r1
	.loc 2 187 0
	cmn	lr, #1
	.loc 2 194 0
	strh	r3, [ip], fp	@ movhi
.LVL212:
	.loc 2 187 0
	bne	.L220
.LVL213:
.L213:
	.loc 2 207 0
	add	r6, r6, #1
.LVL214:
	.loc 2 147 0
	cmp	r6, #4
	add	r7, r7, #2
	bne	.L217
	str	r0, [r5, #1016]
	.loc 2 209 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL215:
.L228:
	.align	2
.L227:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+16
	.word	31775
	.cfi_endproc
.LFE26:
	.size	R_FlushHTFuzz15, .-R_FlushHTFuzz15
	.align	2
	.type	R_FlushQuadFuzz15, %function
R_FlushQuadFuzz15:
.LFB27:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 220 0
	mov	r5, #50
	.loc 2 213 0
	ldr	r9, .L235
	.loc 2 220 0
	ldr	r10, .L235+4
	.loc 2 219 0
	ldr	lr, [r9, #1016]
	.loc 2 220 0
	ldr	r3, [r9, #20]
	.loc 2 221 0
	ldr	r2, [r9, #24]
	.loc 2 220 0
	add	r3, lr, r3
	smull	r1, r0, r10, r3
	mov	r1, r3, asr #31
	rsb	r0, r1, r0, asr #4
	mul	r0, r5, r0
	rsb	r0, r0, r3
	.loc 2 221 0
	add	r2, r0, r2
	smull	r3, ip, r10, r2
	mov	r3, r2, asr #31
	rsb	ip, r3, ip, asr #4
	mul	ip, r5, ip
	.loc 2 222 0
	ldr	r3, [r9, #28]
	.loc 2 221 0
	rsb	ip, ip, r2
	.loc 2 222 0
	add	r3, ip, r3
	smull	r2, r1, r10, r3
	.loc 2 214 0
	ldr	fp, .L235+8
	.loc 2 222 0
	mov	r2, r3, asr #31
	.loc 2 213 0
	ldr	r7, [r9, #4]
.LVL216:
	.loc 2 214 0
	ldr	r4, [r9, #12]
	ldr	r6, [fp, #28]
	.loc 2 222 0
	rsb	r1, r2, r1, asr #4
	mul	r1, r5, r1
	.loc 2 214 0
	mla	r2, r6, r7, r4
	.loc 2 225 0
	ldr	r8, [r9, #8]
	.loc 2 214 0
	ldr	r4, [fp, #16]
	.loc 2 212 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 2 238 0
	subs	r7, r8, r7
.LVL217:
	str	r7, [sp, #8]
	.loc 2 222 0
	rsb	r1, r1, r3
	.loc 2 214 0
	add	r4, r4, r2, asl #1
.LVL218:
	.loc 2 238 0
	bmi	.L229
	mov	r3, r6, asl #1
	.loc 2 244 0
	str	r5, [sp]
	str	r3, [sp, #12]
.LVL219:
.L231:
	.loc 2 240 0
	add	r3, r9, lr, asl #2
	ldr	r2, [r3, #1020]
	ldr	r3, .L235+12
	mov	r2, r2, asl #1
	ldrh	r6, [r4, r2]
	.loc 2 244 0
	add	r5, lr, #1
	.loc 2 240 0
	and	r2, r6, #992
	and	r3, r3, r6
	rsb	r2, r2, r2, asl #4
	rsb	r3, r3, r3, asl #4
	ldr	lr, .L235+12
.LVL220:
	mov	r3, r3, asr #4
	.loc 2 241 0
	add	r6, r9, r0, asl #2
	.loc 2 240 0
	mov	r2, r2, asr #4
	and	r2, r2, #992
	and	lr, lr, r3
	.loc 2 241 0
	ldr	r6, [r6, #1020]
	.loc 2 240 0
	orr	r3, r2, lr
	strh	r3, [r4]	@ movhi
	.loc 2 241 0
	add	r3, r4, r6, asl #1
	ldrh	lr, [r3, #2]
	ldr	r3, .L235+12
	and	r2, lr, #992
	and	r3, r3, lr
	rsb	r2, r2, r2, asl #4
	rsb	r3, r3, r3, asl #4
	ldr	lr, .L235+12
	mov	r3, r3, asr #4
	.loc 2 242 0
	add	r6, r9, ip, asl #2
	.loc 2 241 0
	mov	r2, r2, asr #4
	and	r2, r2, #992
	and	lr, lr, r3
	.loc 2 242 0
	ldr	r6, [r6, #1020]
	.loc 2 241 0
	orr	r3, r2, lr
	strh	r3, [r4, #2]	@ movhi
	.loc 2 242 0
	add	r3, r4, r6, asl #1
	ldrh	r3, [r3, #4]
	ldr	r6, .L235+12
	and	lr, r3, #992
	and	r6, r6, r3
	.loc 2 246 0
	add	r3, ip, #1
	mov	r7, r3
	.loc 2 243 0
	add	fp, r9, r1, asl #2
	.loc 2 242 0
	rsb	lr, lr, lr, asl #4
	rsb	r6, r6, r6, asl #4
	ldr	r8, .L235+12
	.loc 2 245 0
	add	r2, r0, #1
	.loc 2 242 0
	mov	r6, r6, asr #4
	.loc 2 243 0
	ldr	r0, [fp, #1020]
.LVL221:
	.loc 2 242 0
	mov	lr, lr, asr #4
	and	lr, lr, #992
	and	r8, r8, r6
	orr	r8, lr, r8
	.loc 2 247 0
	add	r6, r1, #1
	.loc 2 244 0
	smull	r3, lr, r10, r5
	.loc 2 243 0
	add	r1, r4, r0, asl #1
.LVL222:
	.loc 2 245 0
	smull	r3, r0, r10, r2
	.loc 2 246 0
	mov	r3, r7
	.loc 2 242 0
	strh	r8, [r4, #4]	@ movhi
	.loc 2 243 0
	ldrh	fp, [r1, #6]
	.loc 2 246 0
	smull	r3, r1, r10, r3
	.loc 2 247 0
	smull	r3, r8, r10, r6
	mov	r3, r8
	.loc 2 243 0
	ldr	ip, .L235+12
.LVL223:
	.loc 2 246 0
	str	r7, [sp, #4]
	.loc 2 243 0
	and	ip, ip, fp
	rsb	ip, ip, ip, asl #4
	ldr	r7, .L235+12
.LVL224:
	mov	ip, ip, asr #4
	and	r7, r7, ip
	.loc 2 244 0
	mov	ip, r5, asr #31
	rsb	lr, ip, lr, asr #4
	ldr	ip, [sp]
	.loc 2 243 0
	and	r8, fp, #992
	.loc 2 244 0
	mul	lr, ip, lr
	.loc 2 245 0
	mov	ip, r2, asr #31
	rsb	r0, ip, r0, asr #4
	ldr	ip, [sp]
	.loc 2 243 0
	rsb	r8, r8, r8, asl #4
	.loc 2 245 0
	mul	r0, ip, r0
	.loc 2 246 0
	ldr	ip, [sp, #4]
	.loc 2 243 0
	mov	r8, r8, asr #4
	.loc 2 246 0
	mov	ip, ip, asr #31
	rsb	ip, ip, r1, asr #4
	ldr	r1, [sp]
	.loc 2 238 0
	ldr	fp, [sp, #8]
	.loc 2 246 0
	mul	ip, r1, ip
	.loc 2 247 0
	mov	r1, r6, asr #31
	rsb	r1, r1, r3, asr #4
	ldr	r3, [sp]
	.loc 2 243 0
	and	r8, r8, #992
	.loc 2 247 0
	mul	r1, r3, r1
	.loc 2 249 0
	ldr	r3, [sp, #12]
	.loc 2 243 0
	orr	r8, r8, r7
	.loc 2 238 0
	sub	fp, fp, #1
	.loc 2 243 0
	strh	r8, [r4, #6]	@ movhi
	.loc 2 249 0
	add	r4, r4, r3
.LVL225:
	.loc 2 246 0
	ldr	r3, [sp, #4]
	.loc 2 238 0
	cmn	fp, #1
	str	fp, [sp, #8]
.LVL226:
	.loc 2 244 0
	rsb	lr, lr, r5
.LVL227:
	.loc 2 245 0
	rsb	r0, r0, r2
.LVL228:
	.loc 2 246 0
	rsb	ip, ip, r3
.LVL229:
	.loc 2 247 0
	rsb	r1, r1, r6
.LVL230:
	.loc 2 238 0
	bne	.L231
.LVL231:
.L229:
	.loc 2 283 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL232:
.L236:
	.align	2
.L235:
	.word	.LANCHOR0
	.word	1374389535
	.word	.LANCHOR1
	.word	31775
	.cfi_endproc
.LFE27:
	.size	R_FlushQuadFuzz15, .-R_FlushQuadFuzz15
	.align	2
	.type	R_FlushWhole16, %function
R_FlushWhole16:
.LFB28:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r8, .L246
	.loc 2 109 0
	ldr	r3, .L246+4
	ldr	r9, [r8]
	ldr	r4, [r3, #28]
	.loc 2 105 0
	mov	r0, r9
	mov	r2, r9, asl #2
	add	lr, r8, #16
	add	ip, r8, #32
	.loc 2 109 0
	ldr	r7, [r3, #16]
	ldr	r6, [r8, #12]
	.loc 2 108 0
	ldr	r5, .L246+8
	add	lr, lr, r2
	add	ip, ip, r2
	mov	r10, r4, asl #1
.L238:
	.loc 2 105 0
	subs	r0, r0, #1
	bmi	.L245
.L242:
	.loc 2 107 0
	ldr	r2, [lr, #-4]!
.LVL233:
	add	r1, r6, r0
	.loc 2 109 0
	mla	r1, r2, r4, r1
	.loc 2 110 0
	ldr	fp, [ip, #-4]!
	.loc 2 108 0
	add	r3, r0, r2, asl #2
	.loc 2 112 0
	subs	r2, fp, r2
.LVL234:
	.loc 2 109 0
	add	r1, r7, r1, asl #1
	.loc 2 108 0
	add	r3, r5, r3, asl #1
.LVL235:
	.loc 2 112 0
	bmi	.L238
	add	r3, r3, #8
.LVL236:
.L240:
	.loc 2 124 0
	ldrh	fp, [r3, #-8]
	.loc 2 112 0
	sub	r2, r2, #1
.LVL237:
	cmn	r2, #1
	.loc 2 124 0
	strh	fp, [r1], r10	@ movhi
.LVL238:
	add	r3, r3, #8
.LVL239:
	.loc 2 112 0
	bne	.L240
	.loc 2 105 0
	subs	r0, r0, #1
	bpl	.L242
.LVL240:
.L245:
	sub	r3, r9, #1
	cmp	r9, #0
	movlt	r9, r3
	rsbge	r9, r9, r3
	str	r9, [r8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L247:
	.align	2
.L246:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.cfi_endproc
.LFE28:
	.size	R_FlushWhole16, .-R_FlushWhole16
	.align	2
	.type	R_FlushHT16, %function
R_FlushHT16:
.LFB29:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL241:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 144 0
	mov	lr, #0
	ldr	r6, .L263
	.loc 2 156 0
	ldr	r2, .L263+4
	ldr	r7, [r6, #8]
	ldr	r1, [r6, #12]
	ldr	r10, [r2, #28]
	.loc 2 183 0
	add	r4, r7, #1
	.loc 2 184 0
	mla	r5, r10, r4, r1
	ldr	r3, .L263+8
	.loc 2 156 0
	ldr	r2, [r2, #16]
	.loc 2 141 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	add	r4, r3, r4, asl #3
	ldr	r8, [r6, #4]
	add	r9, r6, #16
	.loc 2 156 0
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r5, r2, r5, asl #1
	add	r4, r4, #8
	mov	fp, r10, asl #1
	add	r6, r6, #32
.LVL242:
.L254:
	.loc 2 149 0
	ldr	r3, [r9, lr, asl #2]
.LVL243:
	.loc 2 150 0
	ldr	r2, [r6, lr, asl #2]
.LVL244:
	.loc 2 153 0
	cmp	r3, r8
	bge	.L252
	ldr	r1, [sp, #4]
	.loc 2 156 0
	ldr	ip, [sp]
	add	r0, r1, lr
	mla	r0, r3, r10, r0
	.loc 2 157 0
	rsb	r1, r3, r8
	.loc 2 156 0
	add	r0, ip, r0, asl #1
	.loc 2 155 0
	ldr	ip, .L263+8
	add	r3, lr, r3, asl #2
.LVL245:
	.loc 2 159 0
	subs	r1, r1, #1
	.loc 2 155 0
	add	r3, ip, r3, asl #1
.LVL246:
	.loc 2 159 0
	bmi	.L252
	add	r3, r3, #8
.LVL247:
.L253:
	.loc 2 172 0
	ldrh	ip, [r3, #-8]
	.loc 2 159 0
	sub	r1, r1, #1
.LVL248:
	cmn	r1, #1
	.loc 2 172 0
	strh	ip, [r0], fp	@ movhi
.LVL249:
	add	r3, r3, #8
.LVL250:
	.loc 2 159 0
	bne	.L253
.LVL251:
.L252:
	.loc 2 181 0
	cmp	r2, r7
	ble	.L251
	.loc 2 185 0
	rsb	r2, r7, r2
.LVL252:
	.loc 2 187 0
	subs	r2, r2, #1
	.loc 2 184 0
	mov	r1, r5
.LVL253:
	.loc 2 187 0
	bmi	.L251
	mov	r3, r4
.LVL254:
.L256:
	.loc 2 200 0
	ldrh	r0, [r3, #-8]
	.loc 2 187 0
	sub	r2, r2, #1
.LVL255:
	cmn	r2, #1
	.loc 2 200 0
	strh	r0, [r1], fp	@ movhi
.LVL256:
	add	r3, r3, #8
.LVL257:
	.loc 2 187 0
	bne	.L256
.LVL258:
.L251:
	.loc 2 207 0
	add	lr, lr, #1
.LVL259:
	.loc 2 147 0
	cmp	lr, #4
	add	r5, r5, #2
	add	r4, r4, #2
	bne	.L254
	.loc 2 209 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL260:
.L264:
	.align	2
.L263:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.cfi_endproc
.LFE29:
	.size	R_FlushHT16, .-R_FlushHT16
	.align	2
	.type	R_FlushQuad16, %function
R_FlushQuad16:
.LFB30:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 213 0
	ldr	r3, .L271
	.loc 2 212 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 2 214 0
	ldr	r4, .L271+4
	.loc 2 213 0
	ldr	r0, [r3, #4]
	.loc 2 214 0
	ldr	r2, [r3, #12]
	ldr	ip, [r4, #28]
	.loc 2 225 0
	ldr	r1, [r3, #8]
	.loc 2 214 0
	mla	lr, ip, r0, r2
	.loc 2 213 0
	ldr	r3, .L271+8
	.loc 2 214 0
	ldr	r2, [r4, #16]
	.loc 2 272 0
	subs	r1, r1, r0
	.loc 2 214 0
	add	r2, r2, lr, asl #1
	.loc 2 213 0
	add	r3, r3, r0, asl #3
.LVL261:
	.loc 2 272 0
	ldmmifd	sp!, {r4, pc}
	mov	ip, ip, asl #1
	add	r3, r3, #8
.LVL262:
.L267:
	.loc 2 274 0
	ldrh	r0, [r3, #-8]
	.loc 2 272 0
	sub	r1, r1, #1
.LVL263:
	.loc 2 274 0
	strh	r0, [r2]	@ movhi
	.loc 2 275 0
	ldrh	r0, [r3, #-6]
	.loc 2 272 0
	cmn	r1, #1
	.loc 2 275 0
	strh	r0, [r2, #2]	@ movhi
	.loc 2 276 0
	ldrh	r0, [r3, #-4]
	add	r3, r3, #8
.LVL264:
	strh	r0, [r2, #4]	@ movhi
	.loc 2 277 0
	ldrh	r0, [r3, #-10]
	strh	r0, [r2, #6]	@ movhi
.LVL265:
	.loc 2 279 0
	add	r2, r2, ip
.LVL266:
	.loc 2 272 0
	bne	.L267
	ldmfd	sp!, {r4, pc}
.L272:
	.align	2
.L271:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.cfi_endproc
.LFE30:
	.size	R_FlushQuad16, .-R_FlushQuad16
	.align	2
	.type	R_FlushWholeTL16, %function
R_FlushWholeTL16:
.LFB31:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r2, .L282
	.loc 2 109 0
	ldr	r3, .L282+4
	ldr	r1, .L282
	ldr	r2, [r2]
	.loc 2 100 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 109 0
	ldr	r9, [r3, #28]
	ldr	r10, [r3, #16]
	ldr	r3, [r1, #12]
	mov	r6, r2
	str	r2, [sp, #4]
	add	r8, r1, #16
	mov	r2, r2, asl #2
	add	r7, r1, #32
	add	r8, r8, r2
	add	r7, r7, r2
	mov	fp, r9, asl #1
	str	r3, [sp]
.L274:
	.loc 2 105 0
	subs	r6, r6, #1
	bmi	.L281
.L278:
	ldr	r2, [sp]
	.loc 2 107 0
	ldr	r3, [r8, #-4]!
.LVL267:
	add	r1, r2, r6
	.loc 2 109 0
	mla	r1, r3, r9, r1
	.loc 2 110 0
	ldr	ip, [r7, #-4]!
	.loc 2 108 0
	add	r0, r6, r3, asl #2
	.loc 2 112 0
	subs	ip, ip, r3
	.loc 2 108 0
	ldr	r3, .L282+8
.LVL268:
	.loc 2 109 0
	add	r1, r10, r1, asl #1
	.loc 2 108 0
	add	r0, r3, r0, asl #1
.LVL269:
	.loc 2 112 0
	bmi	.L274
	add	r0, r0, #8
.LVL270:
.L276:
	.loc 2 115 0
	ldrh	lr, [r0, #-8]
	ldrh	r2, [r1]
	and	r5, lr, #2016
	add	r3, r5, r5, asl #2
	bic	lr, lr, #2016
	and	r4, r2, #2016
	add	r5, r5, r3, asl #1
	bic	r2, r2, #2016
	add	r3, lr, lr, asl #2
	add	r2, r2, r2, asl #2
	add	r4, r4, r4, asl #2
	add	r3, lr, r3, asl #1
	add	r3, r2, r3
	add	r4, r4, r5
	mov	r2, r4, asr #4
	mov	r3, r3, asr #4
	.loc 2 112 0
	sub	ip, ip, #1
.LVL271:
	.loc 2 115 0
	and	r2, r2, #2016
	bic	r3, r3, #2016
	orr	r3, r2, r3
	.loc 2 112 0
	cmn	ip, #1
	add	r0, r0, #8
.LVL272:
	.loc 2 115 0
	strh	r3, [r1], fp	@ movhi
.LVL273:
	.loc 2 112 0
	bne	.L276
	.loc 2 105 0
	subs	r6, r6, #1
	bpl	.L278
.LVL274:
.L281:
	ldr	r2, [sp, #4]
	sub	r3, r2, #1
	cmp	r2, #0
	rsbge	r3, r2, r3
	ldr	r2, .L282
	str	r3, [r2]
	.loc 2 131 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L283:
	.align	2
.L282:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.cfi_endproc
.LFE31:
	.size	R_FlushWholeTL16, .-R_FlushWholeTL16
	.align	2
	.type	R_FlushHTTL16, %function
R_FlushHTTL16:
.LFB32:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL275:
	ldr	r3, .L299
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 156 0
	ldr	r0, [r3, #12]
	.loc 2 144 0
	mov	r7, #0
	.loc 2 156 0
	mov	ip, r0
	ldr	r1, .L299+4
	.loc 2 141 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	ldr	r10, [r3, #8]
	.loc 2 156 0
	str	r0, [sp, #20]
	ldr	r0, [r1, #28]
	.loc 2 183 0
	add	r8, r10, #1
	ldr	r2, .L299+8
	.loc 2 184 0
	mla	r9, r0, r8, ip
	.loc 2 156 0
	ldr	r1, [r1, #16]
	add	r8, r2, r8, asl #3
	ldr	r2, [r3, #4]
	add	r3, r3, #32
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	add	r9, r1, r9, asl #1
	add	r8, r8, #8
	mov	fp, r0, asl #1
	str	r3, [sp, #8]
.LVL276:
.L290:
	.loc 2 149 0
	ldr	r3, .L299+12
	ldr	lr, [r3, r7, asl #2]
.LVL277:
	.loc 2 150 0
	ldr	r3, [sp, #8]
	ldr	r4, [r3, r7, asl #2]
.LVL278:
	.loc 2 153 0
	ldr	r3, [sp, #4]
	cmp	lr, r3
	bge	.L288
	ldr	r3, [sp, #20]
	add	r5, r3, r7
	.loc 2 156 0
	ldr	r3, [sp, #16]
	mla	r5, lr, r3, r5
	.loc 2 157 0
	ldr	r3, [sp, #4]
	rsb	r6, lr, r3
	.loc 2 156 0
	ldr	r3, [sp, #12]
	.loc 2 155 0
	add	lr, r7, lr, asl #2
.LVL279:
	.loc 2 156 0
	add	r5, r3, r5, asl #1
	.loc 2 155 0
	ldr	r3, .L299+8
	.loc 2 159 0
	subs	r6, r6, #1
	.loc 2 155 0
	add	lr, r3, lr, asl #1
.LVL280:
	.loc 2 159 0
	bmi	.L288
	add	lr, lr, #8
.LVL281:
.L289:
	.loc 2 163 0
	ldrh	r1, [lr, #-8]
	ldrh	r2, [r5]
	and	ip, r1, #2016
	add	r3, ip, ip, asl #2
	bic	r1, r1, #2016
	and	r0, r2, #2016
	add	ip, ip, r3, asl #1
	bic	r2, r2, #2016
	add	r3, r1, r1, asl #2
	add	r2, r2, r2, asl #2
	add	r0, r0, r0, asl #2
	add	r3, r1, r3, asl #1
	add	r3, r2, r3
	add	r0, r0, ip
	mov	r2, r0, asr #4
	mov	r3, r3, asr #4
	.loc 2 159 0
	sub	r6, r6, #1
.LVL282:
	.loc 2 163 0
	and	r2, r2, #2016
	bic	r3, r3, #2016
	orr	r3, r2, r3
	.loc 2 159 0
	cmn	r6, #1
	add	lr, lr, #8
.LVL283:
	.loc 2 163 0
	strh	r3, [r5], fp	@ movhi
.LVL284:
	.loc 2 159 0
	bne	.L289
.LVL285:
.L288:
	.loc 2 181 0
	cmp	r4, r10
	ble	.L287
	.loc 2 185 0
	rsb	r4, r10, r4
.LVL286:
	.loc 2 187 0
	subs	r4, r4, #1
	.loc 2 184 0
	mov	lr, r9
.LVL287:
	.loc 2 187 0
	bmi	.L287
	mov	r5, r8
.LVL288:
.L292:
	.loc 2 191 0
	ldrh	r1, [r5, #-8]
	ldrh	r0, [lr]
	and	ip, r1, #2016
	add	r3, ip, ip, asl #2
	bic	r1, r1, #2016
	and	r2, r0, #2016
	add	ip, ip, r3, asl #1
	bic	r0, r0, #2016
	add	r3, r1, r1, asl #2
	add	r2, r2, r2, asl #2
	add	r0, r0, r0, asl #2
	add	r1, r1, r3, asl #1
	add	r2, r2, ip
	add	r3, r0, r1
	mov	r2, r2, asr #4
	mov	r3, r3, asr #4
	.loc 2 187 0
	sub	r4, r4, #1
.LVL289:
	.loc 2 191 0
	and	r2, r2, #2016
	bic	r3, r3, #2016
	orr	r3, r2, r3
	.loc 2 187 0
	cmn	r4, #1
	add	r5, r5, #8
.LVL290:
	.loc 2 191 0
	strh	r3, [lr], fp	@ movhi
.LVL291:
	.loc 2 187 0
	bne	.L292
.LVL292:
.L287:
	.loc 2 207 0
	add	r7, r7, #1
.LVL293:
	.loc 2 147 0
	cmp	r7, #4
	add	r9, r9, #2
	add	r8, r8, #2
	bne	.L290
	.loc 2 209 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL294:
.L300:
	.align	2
.L299:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.word	.LANCHOR0+16
	.cfi_endproc
.LFE32:
	.size	R_FlushHTTL16, .-R_FlushHTTL16
	.align	2
	.type	R_FlushQuadTL16, %function
R_FlushQuadTL16:
.LFB33:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 213 0
	ldr	r1, .L307
	.loc 2 212 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 2 214 0
	ldr	lr, .L307+4
	.loc 2 213 0
	ldr	r3, [r1, #4]
	.loc 2 214 0
	ldr	r2, [r1, #12]
	ldr	ip, [lr, #28]
	.loc 2 225 0
	ldr	r0, [r1, #8]
	.loc 2 214 0
	mla	r2, ip, r3, r2
	ldr	lr, [lr, #16]
	.loc 2 213 0
	ldr	r1, .L307+8
	.loc 2 228 0
	subs	r0, r0, r3
	.loc 2 214 0
	add	r2, lr, r2, asl #1
	.loc 2 213 0
	add	r1, r1, r3, asl #3
.LVL295:
	.loc 2 228 0
	ldmmifd	sp!, {r4, r5, r6, r7, pc}
	mov	ip, ip, asl #1
	add	r1, r1, #8
.LVL296:
.L303:
	.loc 2 230 0
	ldrh	r4, [r1, #-8]
	ldrh	r3, [r2]
	and	r5, r4, #2016
	bic	r4, r4, #2016
	add	r7, r5, r5, asl #2
	and	lr, r3, #2016
	add	r6, r4, r4, asl #2
	bic	r3, r3, #2016
	add	r5, r5, r7, asl #1
	add	r4, r4, r6, asl #1
	add	lr, lr, lr, asl #2
	add	r3, r3, r3, asl #2
	add	lr, lr, r5
	add	r3, r3, r4
	mov	lr, lr, asr #4
	mov	r3, r3, asr #4
	and	lr, lr, #2016
	bic	r3, r3, #2016
	orr	r3, lr, r3
	strh	r3, [r2]	@ movhi
	.loc 2 231 0
	ldrh	r4, [r1, #-6]
	ldrh	r3, [r2, #2]
	and	r5, r4, #2016
	bic	r4, r4, #2016
	add	r7, r5, r5, asl #2
	and	lr, r3, #2016
	add	r6, r4, r4, asl #2
	bic	r3, r3, #2016
	add	r5, r5, r7, asl #1
	add	r4, r4, r6, asl #1
	add	lr, lr, lr, asl #2
	add	r3, r3, r3, asl #2
	add	lr, lr, r5
	add	r3, r3, r4
	mov	lr, lr, asr #4
	mov	r3, r3, asr #4
	and	lr, lr, #2016
	bic	r3, r3, #2016
	orr	r3, lr, r3
	strh	r3, [r2, #2]	@ movhi
	.loc 2 232 0
	ldrh	r4, [r1, #-4]
	ldrh	r3, [r2, #4]
	and	r5, r4, #2016
	bic	r4, r4, #2016
	add	r7, r5, r5, asl #2
	and	lr, r3, #2016
	add	r6, r4, r4, asl #2
	bic	r3, r3, #2016
	add	r5, r5, r7, asl #1
	add	r4, r4, r6, asl #1
	add	lr, lr, lr, asl #2
	add	r3, r3, r3, asl #2
	add	lr, lr, r5
	add	r3, r3, r4
	mov	lr, lr, asr #4
	mov	r3, r3, asr #4
	and	lr, lr, #2016
	bic	r3, r3, #2016
	orr	r3, lr, r3
	strh	r3, [r2, #4]	@ movhi
	.loc 2 233 0
	ldrh	r4, [r1, #-2]
	ldrh	r3, [r2, #6]
	and	r5, r4, #2016
	bic	r4, r4, #2016
	and	lr, r3, #2016
	add	r7, r5, r5, asl #2
	bic	r3, r3, #2016
	add	r6, r4, r4, asl #2
	add	r5, r5, r7, asl #1
	add	lr, lr, lr, asl #2
	add	r3, r3, r3, asl #2
	add	r4, r4, r6, asl #1
	add	lr, lr, r5
	add	r3, r3, r4
	mov	lr, lr, asr #4
	mov	r3, r3, asr #4
	.loc 2 228 0
	sub	r0, r0, #1
.LVL297:
	.loc 2 233 0
	and	lr, lr, #2016
	bic	r3, r3, #2016
	orr	r3, lr, r3
	.loc 2 228 0
	cmn	r0, #1
	.loc 2 233 0
	strh	r3, [r2, #6]	@ movhi
.LVL298:
	add	r1, r1, #8
	.loc 2 235 0
	add	r2, r2, ip
.LVL299:
	.loc 2 228 0
	bne	.L303
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L308:
	.align	2
.L307:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+1220
	.cfi_endproc
.LFE33:
	.size	R_FlushQuadTL16, .-R_FlushQuadTL16
	.align	2
	.type	R_FlushWholeFuzz16, %function
R_FlushWholeFuzz16:
.LFB34:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L319
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r9, [ip]
	.loc 2 109 0
	ldr	r3, .L319+4
	.loc 2 105 0
	mov	lr, r9
	mov	r2, r9, asl #2
	.loc 2 109 0
	ldr	r6, [r3, #28]
	add	r5, ip, #16
	add	r4, ip, #32
	add	r5, r5, r2
	add	r4, r4, r2
	ldr	r8, [r3, #16]
	ldr	r7, [ip, #12]
	ldr	r2, [ip, #1016]
	mov	r10, r6, asl #1
.L310:
	.loc 2 105 0
	subs	lr, lr, #1
	bmi	.L318
.L315:
	.loc 2 107 0
	ldr	r0, [r5, #-4]!
.LVL300:
	add	r1, r7, lr
	.loc 2 109 0
	mla	r1, r0, r6, r1
	.loc 2 110 0
	ldr	r3, [r4, #-4]!
	.loc 2 109 0
	add	r1, r8, r1, asl #1
.LVL301:
	.loc 2 112 0
	subs	r0, r3, r0
.LVL302:
	bmi	.L310
.L313:
	.loc 2 118 0
	add	r3, ip, r2, asl #2
	ldr	r3, [r3, #1020]
	.loc 2 122 0
	cmp	r2, #49
	.loc 2 118 0
	mov	r3, r3, asl #1
	ldrh	r3, [r1, r3]
	.loc 2 112 0
	sub	r0, r0, #1
.LVL303:
	.loc 2 118 0
	and	fp, r3, #2016
	bic	r3, r3, #2016
	rsb	fp, fp, fp, asl #4
	rsb	r3, r3, r3, asl #4
	mov	fp, fp, asr #4
	mov	r3, r3, asr #4
	and	fp, fp, #2016
	bic	r3, r3, #2016
	.loc 2 122 0
	addne	r2, r2, #1
	moveq	r2, #0
.LVL304:
	.loc 2 118 0
	orr	r3, fp, r3
	.loc 2 112 0
	cmn	r0, #1
	.loc 2 118 0
	strh	r3, [r1], r10	@ movhi
.LVL305:
	.loc 2 112 0
	bne	.L313
	.loc 2 105 0
	subs	lr, lr, #1
	bpl	.L315
.LVL306:
.L318:
	sub	r3, r9, #1
	cmp	r9, #0
	movlt	r9, r3
	rsbge	r9, r9, r3
	str	r2, [ip, #1016]
	str	r9, [ip]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L320:
	.align	2
.L319:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE34:
	.size	R_FlushWholeFuzz16, .-R_FlushWholeFuzz16
	.align	2
	.type	R_FlushHTFuzz16, %function
R_FlushHTFuzz16:
.LFB35:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL307:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 144 0
	mov	r5, #0
	ldr	r4, .L338
	.loc 2 156 0
	ldr	r3, .L338+4
	ldr	r7, [r4, #8]
	ldr	r9, [r3, #28]
	ldr	r2, [r4, #12]
	.loc 2 184 0
	mla	r6, r7, r9, r9
	.loc 2 156 0
	ldr	r3, [r3, #16]
	.loc 2 141 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 184 0
	add	r6, r2, r6
	ldr	r8, [r4, #4]
	ldr	r1, [r4, #1016]
	.loc 2 156 0
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r6, r3, r6, asl #1
	mov	fp, r9, asl #1
	add	r10, r4, #16
.LVL308:
.L328:
	.loc 2 149 0
	ldr	r0, [r10, r5, asl #2]
.LVL309:
	.loc 2 150 0
	ldr	r3, .L338+8
	.loc 2 153 0
	cmp	r0, r8
	.loc 2 150 0
	ldr	ip, [r3, r5, asl #2]
.LVL310:
	.loc 2 153 0
	bge	.L325
.LVL311:
	ldr	r3, [sp, #4]
	add	lr, r3, r5
	.loc 2 156 0
	mla	lr, r0, r9, lr
	ldr	r3, [sp]
	.loc 2 157 0
	rsb	r0, r0, r8
.LVL312:
	.loc 2 159 0
	subs	r0, r0, #1
	.loc 2 156 0
	add	lr, r3, lr, asl #1
.LVL313:
	.loc 2 159 0
	bmi	.L325
.LVL314:
.L327:
	.loc 2 166 0
	add	r3, r4, r1, asl #2
	ldr	r3, [r3, #1020]
	.loc 2 170 0
	cmp	r1, #49
	.loc 2 166 0
	mov	r3, r3, asl #1
	ldrh	r3, [lr, r3]
	.loc 2 159 0
	sub	r0, r0, #1
.LVL315:
	.loc 2 166 0
	and	r2, r3, #2016
	bic	r3, r3, #2016
	rsb	r2, r2, r2, asl #4
	rsb	r3, r3, r3, asl #4
	mov	r2, r2, asr #4
	mov	r3, r3, asr #4
	and	r2, r2, #2016
	bic	r3, r3, #2016
	.loc 2 170 0
	addne	r1, r1, #1
	moveq	r1, #0
.LVL316:
	.loc 2 166 0
	orr	r3, r2, r3
	.loc 2 159 0
	cmn	r0, #1
	.loc 2 166 0
	strh	r3, [lr], fp	@ movhi
.LVL317:
	.loc 2 159 0
	bne	.L327
.LVL318:
.L325:
	.loc 2 181 0
	cmp	ip, r7
	ble	.L324
.LVL319:
	.loc 2 185 0
	rsb	ip, r7, ip
.LVL320:
	.loc 2 187 0
	subs	ip, ip, #1
	.loc 2 184 0
	mov	r0, r6
.LVL321:
	.loc 2 187 0
	bmi	.L324
.LVL322:
.L331:
	.loc 2 194 0
	add	r3, r4, r1, asl #2
	ldr	r3, [r3, #1020]
	.loc 2 198 0
	cmp	r1, #49
	.loc 2 194 0
	mov	r3, r3, asl #1
	ldrh	r3, [r0, r3]
	.loc 2 187 0
	sub	ip, ip, #1
.LVL323:
	.loc 2 194 0
	and	r2, r3, #2016
	bic	r3, r3, #2016
	rsb	r2, r2, r2, asl #4
	rsb	r3, r3, r3, asl #4
	mov	r2, r2, asr #4
	mov	r3, r3, asr #4
	and	r2, r2, #2016
	bic	r3, r3, #2016
	.loc 2 198 0
	addne	r1, r1, #1
	moveq	r1, #0
.LVL324:
	.loc 2 194 0
	orr	r3, r2, r3
	.loc 2 187 0
	cmn	ip, #1
	.loc 2 194 0
	strh	r3, [r0], fp	@ movhi
.LVL325:
	.loc 2 187 0
	bne	.L331
.LVL326:
.L324:
	.loc 2 207 0
	add	r5, r5, #1
.LVL327:
	.loc 2 147 0
	cmp	r5, #4
	add	r6, r6, #2
	bne	.L328
	str	r1, [r4, #1016]
	.loc 2 209 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL328:
.L339:
	.align	2
.L338:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+32
	.cfi_endproc
.LFE35:
	.size	R_FlushHTFuzz16, .-R_FlushHTFuzz16
	.align	2
	.type	R_FlushQuadFuzz16, %function
R_FlushQuadFuzz16:
.LFB36:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 220 0
	mov	r5, #50
	.loc 2 213 0
	ldr	r9, .L346
	.loc 2 220 0
	ldr	r10, .L346+4
	.loc 2 219 0
	ldr	lr, [r9, #1016]
	.loc 2 220 0
	ldr	r3, [r9, #20]
	.loc 2 221 0
	ldr	r2, [r9, #24]
	.loc 2 220 0
	add	r3, lr, r3
	smull	r1, r0, r10, r3
	mov	r1, r3, asr #31
	rsb	r0, r1, r0, asr #4
	mul	r0, r5, r0
	rsb	r0, r0, r3
	.loc 2 221 0
	add	r2, r0, r2
	smull	r3, ip, r10, r2
	mov	r3, r2, asr #31
	rsb	ip, r3, ip, asr #4
	mul	ip, r5, ip
	.loc 2 222 0
	ldr	r3, [r9, #28]
	.loc 2 221 0
	rsb	ip, ip, r2
	.loc 2 222 0
	add	r3, ip, r3
	smull	r2, r1, r10, r3
	.loc 2 214 0
	ldr	fp, .L346+8
	.loc 2 222 0
	mov	r2, r3, asr #31
	.loc 2 213 0
	ldr	r7, [r9, #4]
.LVL329:
	.loc 2 214 0
	ldr	r4, [r9, #12]
	ldr	r6, [fp, #28]
	.loc 2 222 0
	rsb	r1, r2, r1, asr #4
	mul	r1, r5, r1
	.loc 2 214 0
	mla	r2, r6, r7, r4
	.loc 2 225 0
	ldr	r8, [r9, #8]
	.loc 2 214 0
	ldr	r4, [fp, #16]
	.loc 2 212 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 2 238 0
	subs	r7, r8, r7
.LVL330:
	str	r7, [sp, #8]
	.loc 2 222 0
	rsb	r1, r1, r3
	.loc 2 214 0
	add	r4, r4, r2, asl #1
.LVL331:
	.loc 2 238 0
	bmi	.L340
	.loc 2 244 0
	mov	r7, r5
	mov	r3, r6, asl #1
	str	r3, [sp, #12]
.LVL332:
.L342:
	.loc 2 240 0
	add	r3, r9, lr, asl #2
	ldr	r3, [r3, #1020]
	.loc 2 241 0
	add	r2, r9, r0, asl #2
	.loc 2 240 0
	mov	r3, r3, asl #1
	ldrh	r3, [r4, r3]
	.loc 2 241 0
	ldr	r2, [r2, #1020]
	.loc 2 240 0
	and	r5, r3, #2016
	bic	r3, r3, #2016
	rsb	r5, r5, r5, asl #4
	rsb	r3, r3, r3, asl #4
	mov	r5, r5, asr #4
	mov	r3, r3, asr #4
	and	r5, r5, #2016
	bic	r3, r3, #2016
	orr	r3, r5, r3
	strh	r3, [r4]	@ movhi
	.loc 2 241 0
	add	r2, r4, r2, asl #1
	ldrh	r3, [r2, #2]
	.loc 2 242 0
	add	r2, r9, ip, asl #2
	.loc 2 241 0
	and	r5, r3, #2016
	bic	r3, r3, #2016
	rsb	r5, r5, r5, asl #4
	rsb	r3, r3, r3, asl #4
	mov	r5, r5, asr #4
	mov	r3, r3, asr #4
	and	r5, r5, #2016
	.loc 2 242 0
	ldr	r2, [r2, #1020]
	.loc 2 241 0
	bic	r3, r3, #2016
	orr	r3, r5, r3
	strh	r3, [r4, #2]	@ movhi
	.loc 2 242 0
	add	r3, r4, r2, asl #1
	ldrh	r3, [r3, #4]
	.loc 2 245 0
	add	r5, r0, #1
	.loc 2 242 0
	and	r8, r3, #2016
	bic	r3, r3, #2016
	rsb	r3, r3, r3, asl #4
	mov	r3, r3, asr #4
	rsb	r8, r8, r8, asl #4
	.loc 2 243 0
	add	fp, r9, r1, asl #2
	.loc 2 244 0
	add	r6, lr, #1
	.loc 2 242 0
	bic	r0, r3, #2016
.LVL333:
	mov	r8, r8, asr #4
	.loc 2 247 0
	add	r3, r1, #1
	str	r3, [sp, #4]
	.loc 2 246 0
	add	r2, ip, #1
	.loc 2 244 0
	smull	r3, lr, r10, r6
.LVL334:
	.loc 2 243 0
	ldr	ip, [fp, #1020]
.LVL335:
	.loc 2 242 0
	and	r8, r8, #2016
	orr	r8, r8, r0
	.loc 2 246 0
	smull	r3, r1, r10, r2
.LVL336:
	.loc 2 245 0
	smull	r3, r0, r10, r5
	.loc 2 247 0
	ldr	r3, [sp, #4]
	.loc 2 243 0
	add	ip, r4, ip, asl #1
	.loc 2 242 0
	strh	r8, [r4, #4]	@ movhi
	.loc 2 243 0
	ldrh	fp, [ip, #6]
	.loc 2 247 0
	smull	ip, r3, r10, r3
	.loc 2 244 0
	mov	ip, r6, asr #31
	rsb	lr, ip, lr, asr #4
	.loc 2 245 0
	mov	ip, r5, asr #31
	rsb	r0, ip, r0, asr #4
	.loc 2 246 0
	mov	ip, r2, asr #31
	rsb	ip, ip, r1, asr #4
	.loc 2 247 0
	ldr	r1, [sp, #4]
	.loc 2 243 0
	and	r8, fp, #2016
	.loc 2 247 0
	mov	r1, r1, asr #31
	rsb	r1, r1, r3, asr #4
	.loc 2 243 0
	bic	fp, fp, #2016
	.loc 2 238 0
	ldr	r3, [sp, #8]
	.loc 2 243 0
	rsb	r8, r8, r8, asl #4
	rsb	fp, fp, fp, asl #4
	.loc 2 238 0
	sub	r3, r3, #1
	.loc 2 243 0
	mov	r8, r8, asr #4
	mov	fp, fp, asr #4
	.loc 2 244 0
	mul	lr, r7, lr
	.loc 2 245 0
	mul	r0, r7, r0
	.loc 2 246 0
	mul	ip, r7, ip
	.loc 2 247 0
	mul	r1, r7, r1
	.loc 2 238 0
	str	r3, [sp, #8]
.LVL337:
	.loc 2 243 0
	and	r8, r8, #2016
	bic	fp, fp, #2016
	.loc 2 238 0
	cmn	r3, #1
	.loc 2 249 0
	ldr	r3, [sp, #12]
.LVL338:
	.loc 2 243 0
	orr	r8, r8, fp
	strh	r8, [r4, #6]	@ movhi
	.loc 2 249 0
	add	r4, r4, r3
.LVL339:
	.loc 2 247 0
	ldr	r3, [sp, #4]
	.loc 2 244 0
	rsb	lr, lr, r6
.LVL340:
	.loc 2 245 0
	rsb	r0, r0, r5
.LVL341:
	.loc 2 246 0
	rsb	ip, ip, r2
.LVL342:
	.loc 2 247 0
	rsb	r1, r1, r3
.LVL343:
	.loc 2 238 0
	bne	.L342
.LVL344:
.L340:
	.loc 2 283 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL345:
.L347:
	.align	2
.L346:
	.word	.LANCHOR0
	.word	1374389535
	.word	.LANCHOR1
	.cfi_endproc
.LFE36:
	.size	R_FlushQuadFuzz16, .-R_FlushQuadFuzz16
	.align	2
	.type	R_FlushWhole32, %function
R_FlushWhole32:
.LFB37:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r10, .L357
	.loc 2 109 0
	ldr	lr, .L357+4
	ldr	fp, [r10]
	add	r6, r10, #16
	.loc 2 105 0
	mov	r4, fp
	mov	r3, fp, asl #2
	add	r5, r10, #32
	.loc 2 109 0
	ldr	r9, [r10, #12]
	ldr	r8, [lr, #20]
	.loc 2 108 0
	ldr	r7, .L357+8
	add	r6, r6, r3
	add	r5, r5, r3
.L349:
	.loc 2 105 0
	subs	r4, r4, #1
	bmi	.L356
.L353:
	.loc 2 107 0
	ldr	r3, [r6, #-4]!
.LVL346:
	.loc 2 109 0
	ldr	r2, [lr, #32]
	add	r1, r9, r4
	mla	r2, r2, r3, r1
	.loc 2 110 0
	ldr	r0, [r5, #-4]!
	.loc 2 108 0
	add	ip, r4, r3, asl #2
	.loc 2 112 0
	subs	r0, r0, r3
	.loc 2 109 0
	add	r2, r8, r2, asl #2
	.loc 2 108 0
	add	ip, r7, ip, asl #2
.LVL347:
	.loc 2 112 0
	bmi	.L349
	mov	r3, #0
.LVL348:
	add	r0, r0, #1
.LVL349:
.L351:
	.loc 2 124 0
	ldr	r1, [ip, r3, asl #4]
	add	r3, r3, #1
.LVL350:
	str	r1, [r2]
.LVL351:
	.loc 2 128 0
	ldr	r1, [lr, #32]
	.loc 2 112 0
	cmp	r3, r0
	.loc 2 128 0
	add	r2, r2, r1, asl #2
.LVL352:
	.loc 2 112 0
	bne	.L351
	.loc 2 105 0
	subs	r4, r4, #1
	bpl	.L353
.LVL353:
.L356:
	sub	r3, fp, #1
	cmp	fp, #0
	movlt	fp, r3
	rsbge	fp, fp, r3
	str	fp, [r10]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L358:
	.align	2
.L357:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+3140
	.cfi_endproc
.LFE37:
	.size	R_FlushWhole32, .-R_FlushWhole32
	.align	2
	.type	R_FlushHT32, %function
R_FlushHT32:
.LFB38:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL354:
	.loc 2 156 0
	ldr	r1, .L374
	.loc 2 141 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 156 0
	ldr	r10, [r1, #20]
	.loc 2 144 0
	mov	r5, #0
	mov	ip, r10
	ldr	r3, .L374+4
	ldr	r4, .L374+8
	ldr	r7, [r3, #8]
	.loc 2 141 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 183 0
	add	r2, r7, #1
	ldr	r8, [r3, #4]
	.loc 2 156 0
	ldr	fp, [r3, #12]
	.loc 2 183 0
	str	r2, [sp, #4]
	add	r4, r4, r2, asl #4
	add	r9, r3, #16
	add	r0, r3, #32
.LVL355:
.L365:
	.loc 2 149 0
	ldr	lr, [r9, r5, asl #2]
.LVL356:
	.loc 2 150 0
	ldr	r6, [r0, r5, asl #2]
.LVL357:
	.loc 2 153 0
	cmp	lr, r8
	bge	.L363
	.loc 2 156 0
	ldr	r2, [r1, #32]
	add	r3, r5, fp
	mla	r2, r2, lr, r3
	.loc 2 157 0
	rsb	r10, lr, r8
	.loc 2 155 0
	ldr	r3, .L374+8
	add	lr, r5, lr, asl #2
.LVL358:
	.loc 2 159 0
	cmp	r10, #0
	.loc 2 156 0
	add	r2, ip, r2, asl #2
	.loc 2 155 0
	add	lr, r3, lr, asl #2
.LVL359:
	.loc 2 159 0
	ble	.L363
	mov	r3, #0
	str	ip, [sp]
.LVL360:
.L364:
	.loc 2 172 0
	ldr	ip, [lr, r3, asl #4]
	add	r3, r3, #1
	str	ip, [r2]
	.loc 2 176 0
	ldr	ip, [r1, #32]
	.loc 2 159 0
	cmp	r3, r10
	.loc 2 176 0
	add	r2, r2, ip, asl #2
.LVL361:
	.loc 2 159 0
	bne	.L364
	ldr	ip, [sp]
.LVL362:
.L363:
	.loc 2 181 0
	cmp	r6, r7
	ble	.L362
.LVL363:
	.loc 2 184 0
	ldr	r2, [r1, #32]
	ldr	r3, [sp, #4]
	.loc 2 185 0
	rsb	r6, r7, r6
.LVL364:
	.loc 2 184 0
	mla	r2, r2, r3, fp
	.loc 2 187 0
	cmp	r6, #0
	.loc 2 184 0
	add	r2, r5, r2
	add	r2, ip, r2, asl #2
.LVL365:
	.loc 2 187 0
	ble	.L362
	mov	r3, #0
.LVL366:
.L367:
	.loc 2 200 0
	ldr	lr, [r4, r3, asl #4]
	add	r3, r3, #1
.LVL367:
	str	lr, [r2]
.LVL368:
	.loc 2 204 0
	ldr	lr, [r1, #32]
	.loc 2 187 0
	cmp	r3, r6
	.loc 2 204 0
	add	r2, r2, lr, asl #2
.LVL369:
	.loc 2 187 0
	bne	.L367
.LVL370:
.L362:
	.loc 2 207 0
	add	r5, r5, #1
.LVL371:
	.loc 2 147 0
	cmp	r5, #4
	add	r4, r4, #4
	bne	.L365
	.loc 2 209 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL372:
.L375:
	.align	2
.L374:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LANCHOR0+3140
	.cfi_endproc
.LFE38:
	.size	R_FlushHT32, .-R_FlushHT32
	.align	2
	.type	R_FlushQuad32, %function
R_FlushQuad32:
.LFB39:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 213 0
	ldr	r1, .L382
	.loc 2 214 0
	ldr	ip, .L382+4
	.loc 2 213 0
	ldr	r0, [r1, #4]
	.loc 2 214 0
	ldr	r2, [r1, #12]
	ldr	r3, [ip, #32]
	.loc 2 212 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 2 214 0
	mla	lr, r3, r0, r2
	.loc 2 225 0
	ldr	r1, [r1, #8]
	.loc 2 214 0
	ldr	r2, [ip, #20]
	.loc 2 213 0
	ldr	r3, .L382+8
	.loc 2 272 0
	subs	r1, r1, r0
	.loc 2 214 0
	add	r2, r2, lr, asl #2
	.loc 2 213 0
	add	r3, r3, r0, asl #4
.LVL373:
	.loc 2 272 0
	ldrmi	pc, [sp], #4
	add	r3, r3, #16
.LVL374:
.L378:
	.loc 2 274 0
	ldr	r0, [r3, #-16]
	.loc 2 272 0
	sub	r1, r1, #1
.LVL375:
	.loc 2 274 0
	str	r0, [r2]
	.loc 2 275 0
	ldr	r0, [r3, #-12]
	.loc 2 272 0
	cmn	r1, #1
	.loc 2 275 0
	str	r0, [r2, #4]
	.loc 2 276 0
	ldr	r0, [r3, #-8]
	add	r3, r3, #16
.LVL376:
	str	r0, [r2, #8]
	.loc 2 277 0
	ldr	r0, [r3, #-20]
	str	r0, [r2, #12]
.LVL377:
	.loc 2 279 0
	ldr	r0, [ip, #32]
	add	r2, r2, r0, asl #2
.LVL378:
	.loc 2 272 0
	bne	.L378
	ldr	pc, [sp], #4
.L383:
	.align	2
.L382:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+3140
	.cfi_endproc
.LFE39:
	.size	R_FlushQuad32, .-R_FlushQuad32
	.align	2
	.type	R_FlushWholeTL32, %function
R_FlushWholeTL32:
.LFB40:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r3, .L393
	ldr	r2, .L393
	ldr	r3, [r3]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 109 0
	ldr	r6, .L393+4
	mov	r7, r3
	str	r3, [sp, #4]
	add	r9, r2, #16
	mov	r3, r3, asl #2
	add	r8, r2, #32
	add	r9, r9, r3
	add	r8, r8, r3
	ldr	r3, [r6, #20]
	ldr	r10, [r2, #12]
	str	r3, [sp]
.L385:
	.loc 2 105 0
	subs	r7, r7, #1
	bmi	.L392
.L389:
	.loc 2 107 0
	ldr	r3, [r9, #-4]!
.LVL379:
	.loc 2 109 0
	ldr	r2, [r6, #32]
	add	r1, r10, r7
	mla	r1, r2, r3, r1
	.loc 2 110 0
	ldr	ip, [r8, #-4]!
	.loc 2 108 0
	add	lr, r7, r3, asl #2
	.loc 2 112 0
	subs	ip, ip, r3
	.loc 2 109 0
	ldr	r3, [sp]
.LVL380:
	add	r1, r3, r1, asl #2
	.loc 2 108 0
	ldr	r3, .L393+8
	add	lr, r3, lr, asl #2
.LVL381:
	.loc 2 112 0
	bmi	.L385
	mov	r0, #0
	add	ip, ip, #1
.LVL382:
.L387:
	.loc 2 115 0
	ldr	r2, [lr, r0, asl #4]
	ldr	r3, [r1]
	bic	r5, r2, #-16777216
	bic	r5, r5, #65280
	bic	r4, r3, #-16777216
	and	fp, r2, #65280
	bic	r4, r4, #65280
	add	r2, r5, r5, asl #2
	add	r5, r5, r2, asl #1
	add	r4, r4, r4, asl #2
	and	r3, r3, #65280
	add	r2, fp, fp, asl #2
	add	r2, fp, r2, asl #1
	add	r4, r5, r4
	add	r3, r3, r3, asl #2
	add	r3, r2, r3
	mov	r4, r4, lsr #4
	bic	r2, r4, #-16777216
	mov	r3, r3, lsr #4
	bic	r2, r2, #65280
	and	r3, r3, #65280
	orr	r3, r3, r2
	str	r3, [r1]
.LVL383:
	add	r0, r0, #1
.LVL384:
	.loc 2 128 0
	ldr	r3, [r6, #32]
	.loc 2 112 0
	cmp	r0, ip
	.loc 2 128 0
	add	r1, r1, r3, asl #2
.LVL385:
	.loc 2 112 0
	bne	.L387
	.loc 2 105 0
	subs	r7, r7, #1
	bpl	.L389
.LVL386:
.L392:
	ldr	r2, [sp, #4]
	sub	r3, r2, #1
	cmp	r2, #0
	rsbge	r3, r2, r3
	ldr	r2, .L393
	str	r3, [r2]
	.loc 2 131 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L394:
	.align	2
.L393:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+3140
	.cfi_endproc
.LFE40:
	.size	R_FlushWholeTL32, .-R_FlushWholeTL32
	.align	2
	.type	R_FlushHTTL32, %function
R_FlushHTTL32:
.LFB41:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL387:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 144 0
	mov	r8, #0
	ldr	r3, .L410
	.loc 2 156 0
	ldr	r4, .L410+4
	ldr	r1, [r3, #12]
	.loc 2 141 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	ldr	r7, .L410+8
	.loc 2 156 0
	str	r1, [sp, #12]
	ldr	r1, [r4, #20]
	ldmib	r3, {r2, r10}
	add	r3, r3, #32
	str	r2, [sp, #4]
	.loc 2 183 0
	add	r2, r10, #1
	str	r2, [sp, #20]
	.loc 2 156 0
	str	r1, [sp, #8]
	add	r7, r7, r2, asl #4
	str	r3, [sp, #16]
.LVL388:
.L401:
	.loc 2 149 0
	ldr	r3, .L410+12
	ldr	r5, [r3, r8, asl #2]
.LVL389:
	.loc 2 150 0
	ldr	r3, [sp, #16]
	ldr	r6, [r3, r8, asl #2]
.LVL390:
	.loc 2 153 0
	ldr	r3, [sp, #4]
	cmp	r5, r3
	bge	.L399
	ldr	r2, [sp, #12]
	.loc 2 156 0
	ldr	r3, [r4, #32]
	add	ip, r2, r8
	mla	ip, r3, r5, ip
	.loc 2 157 0
	ldr	r3, [sp, #4]
	rsb	r9, r5, r3
	.loc 2 156 0
	ldr	r3, [sp, #8]
	.loc 2 155 0
	add	r5, r8, r5, asl #2
.LVL391:
	.loc 2 156 0
	add	ip, r3, ip, asl #2
	.loc 2 155 0
	ldr	r3, .L410+8
	.loc 2 159 0
	cmp	r9, #0
	.loc 2 155 0
	add	r5, r3, r5, asl #2
.LVL392:
	.loc 2 159 0
	ble	.L399
	mov	lr, #0
.LVL393:
.L400:
	.loc 2 163 0
	ldr	r2, [r5, lr, asl #4]
	ldr	r3, [ip]
	bic	r0, r2, #-16777216
	bic	r0, r0, #65280
	bic	r1, r3, #-16777216
	and	fp, r2, #65280
	bic	r1, r1, #65280
	add	r2, r0, r0, asl #2
	add	r0, r0, r2, asl #1
	add	r1, r1, r1, asl #2
	and	r3, r3, #65280
	add	r2, fp, fp, asl #2
	add	r2, fp, r2, asl #1
	add	r1, r0, r1
	add	r3, r3, r3, asl #2
	add	r3, r2, r3
	mov	r1, r1, lsr #4
	bic	r2, r1, #-16777216
	mov	r3, r3, lsr #4
	bic	r2, r2, #65280
	and	r3, r3, #65280
	orr	r3, r3, r2
	str	r3, [ip]
.LVL394:
	add	lr, lr, #1
.LVL395:
	.loc 2 176 0
	ldr	r3, [r4, #32]
	.loc 2 159 0
	cmp	lr, r9
	.loc 2 176 0
	add	ip, ip, r3, asl #2
.LVL396:
	.loc 2 159 0
	bne	.L400
.LVL397:
.L399:
	.loc 2 181 0
	cmp	r6, r10
	ble	.L398
.LVL398:
	.loc 2 184 0
	ldr	r3, [sp, #20]
	ldr	ip, [r4, #32]
	ldr	r2, [sp, #12]
	.loc 2 185 0
	rsb	r6, r10, r6
.LVL399:
	.loc 2 184 0
	mla	ip, ip, r3, r2
	ldr	r3, [sp, #8]
	add	ip, ip, r8
	.loc 2 187 0
	cmp	r6, #0
	.loc 2 184 0
	add	ip, r3, ip, asl #2
.LVL400:
	.loc 2 187 0
	ble	.L398
	mov	lr, #0
.LVL401:
.L403:
	.loc 2 191 0
	ldr	r1, [r7, lr, asl #4]
	ldr	r0, [ip]
	bic	r3, r1, #-16777216
	bic	r3, r3, #65280
	bic	r5, r0, #-16777216
	and	r1, r1, #65280
	add	r2, r3, r3, asl #2
	bic	r5, r5, #65280
	add	r3, r3, r2, asl #1
	and	r0, r0, #65280
	add	r2, r5, r5, asl #2
	add	r5, r1, r1, asl #2
	add	r2, r3, r2
	add	r0, r0, r0, asl #2
	add	r1, r1, r5, asl #1
	mov	r2, r2, lsr #4
	add	r3, r1, r0
	bic	r2, r2, #-16777216
	mov	r3, r3, lsr #4
	bic	r2, r2, #65280
	and	r3, r3, #65280
	orr	r3, r3, r2
	str	r3, [ip]
.LVL402:
	add	lr, lr, #1
.LVL403:
	.loc 2 204 0
	ldr	r3, [r4, #32]
	.loc 2 187 0
	cmp	lr, r6
	.loc 2 204 0
	add	ip, ip, r3, asl #2
.LVL404:
	.loc 2 187 0
	bne	.L403
.LVL405:
.L398:
	.loc 2 207 0
	add	r8, r8, #1
.LVL406:
	.loc 2 147 0
	cmp	r8, #4
	add	r7, r7, #4
	bne	.L401
	.loc 2 209 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL407:
.L411:
	.align	2
.L410:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+3140
	.word	.LANCHOR0+16
	.cfi_endproc
.LFE41:
	.size	R_FlushHTTL32, .-R_FlushHTTL32
	.align	2
	.type	R_FlushQuadTL32, %function
R_FlushQuadTL32:
.LFB42:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 213 0
	ldr	r0, .L418
	.loc 2 212 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 2 214 0
	ldr	lr, .L418+4
	.loc 2 213 0
	ldr	r3, [r0, #4]
	.loc 2 214 0
	ldr	r1, [r0, #12]
	ldr	r2, [lr, #32]
	.loc 2 225 0
	ldr	ip, [r0, #8]
	.loc 2 214 0
	mla	r2, r2, r3, r1
	.loc 2 213 0
	ldr	r0, .L418+8
	.loc 2 214 0
	ldr	r1, [lr, #20]
	.loc 2 228 0
	subs	ip, ip, r3
	.loc 2 214 0
	add	r1, r1, r2, asl #2
	.loc 2 213 0
	add	r0, r0, r3, asl #4
.LVL408:
	.loc 2 228 0
	ldmmifd	sp!, {r4, r5, r6, pc}
	add	r0, r0, #16
.LVL409:
.L414:
	.loc 2 230 0
	ldr	r4, [r0, #-16]
	ldr	r5, [r1]
	bic	r3, r4, #-16777216
	bic	r3, r3, #65280
	bic	r6, r5, #-16777216
	and	r4, r4, #65280
	add	r2, r3, r3, asl #2
	bic	r6, r6, #65280
	add	r3, r3, r2, asl #1
	and	r5, r5, #65280
	add	r2, r6, r6, asl #2
	add	r6, r4, r4, asl #2
	add	r4, r4, r6, asl #1
	add	r2, r3, r2
	add	r5, r5, r5, asl #2
	add	r3, r4, r5
	mov	r2, r2, lsr #4
	bic	r2, r2, #-16777216
	mov	r3, r3, lsr #4
	bic	r2, r2, #65280
	and	r3, r3, #65280
	orr	r3, r3, r2
	str	r3, [r1]
	.loc 2 231 0
	ldr	r4, [r0, #-12]
	ldr	r5, [r1, #4]
	bic	r3, r4, #-16777216
	bic	r3, r3, #65280
	bic	r6, r5, #-16777216
	and	r4, r4, #65280
	add	r2, r3, r3, asl #2
	bic	r6, r6, #65280
	add	r3, r3, r2, asl #1
	and	r5, r5, #65280
	add	r2, r6, r6, asl #2
	add	r6, r4, r4, asl #2
	add	r4, r4, r6, asl #1
	add	r2, r3, r2
	add	r5, r5, r5, asl #2
	add	r3, r4, r5
	mov	r2, r2, lsr #4
	bic	r2, r2, #-16777216
	mov	r3, r3, lsr #4
	bic	r2, r2, #65280
	and	r3, r3, #65280
	orr	r3, r3, r2
	str	r3, [r1, #4]
	.loc 2 232 0
	ldr	r4, [r0, #-8]
	ldr	r5, [r1, #8]
	bic	r3, r4, #-16777216
	bic	r3, r3, #65280
	bic	r6, r5, #-16777216
	and	r4, r4, #65280
	add	r2, r3, r3, asl #2
	bic	r6, r6, #65280
	add	r3, r3, r2, asl #1
	and	r5, r5, #65280
	add	r2, r6, r6, asl #2
	add	r6, r4, r4, asl #2
	add	r4, r4, r6, asl #1
	add	r2, r3, r2
	add	r5, r5, r5, asl #2
	add	r3, r4, r5
	mov	r2, r2, lsr #4
	bic	r2, r2, #-16777216
	mov	r3, r3, lsr #4
	bic	r2, r2, #65280
	and	r3, r3, #65280
	orr	r3, r3, r2
	str	r3, [r1, #8]
	.loc 2 233 0
	ldr	r4, [r0, #-4]
	ldr	r5, [r1, #12]
	bic	r3, r4, #-16777216
	bic	r3, r3, #65280
	bic	r6, r5, #-16777216
	and	r4, r4, #65280
	add	r2, r3, r3, asl #2
	bic	r6, r6, #65280
	add	r3, r3, r2, asl #1
	and	r5, r5, #65280
	add	r2, r6, r6, asl #2
	add	r6, r4, r4, asl #2
	add	r2, r3, r2
	add	r5, r5, r5, asl #2
	add	r4, r4, r6, asl #1
	mov	r2, r2, lsr #4
	add	r3, r4, r5
	bic	r2, r2, #-16777216
	mov	r3, r3, lsr #4
	bic	r2, r2, #65280
	and	r3, r3, #65280
	orr	r3, r3, r2
	str	r3, [r1, #12]
.LVL410:
	.loc 2 228 0
	sub	ip, ip, #1
.LVL411:
	.loc 2 235 0
	ldr	r3, [lr, #32]
	.loc 2 228 0
	cmn	ip, #1
	add	r0, r0, #16
.LVL412:
	.loc 2 235 0
	add	r1, r1, r3, asl #2
.LVL413:
	.loc 2 228 0
	bne	.L414
	ldmfd	sp!, {r4, r5, r6, pc}
.L419:
	.align	2
.L418:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+3140
	.cfi_endproc
.LFE42:
	.size	R_FlushQuadTL32, .-R_FlushQuadTL32
	.align	2
	.type	R_FlushWholeFuzz32, %function
R_FlushWholeFuzz32:
.LFB43:
	.loc 2 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r4, .L430
	.loc 2 109 0
	ldr	lr, .L430+4
	ldr	r10, [r4]
	add	r7, r4, #16
	.loc 2 105 0
	mov	r5, r10
	mov	r3, r10, asl #2
	add	r6, r4, #32
	.loc 2 109 0
	ldr	r9, [r4, #12]
	ldr	r0, [r4, #1016]
	ldr	r8, [lr, #20]
	add	r7, r7, r3
	add	r6, r6, r3
.L421:
	.loc 2 105 0
	subs	r5, r5, #1
	bmi	.L429
.L426:
	.loc 2 107 0
	ldr	ip, [r7, #-4]!
.LVL414:
	.loc 2 109 0
	ldr	r3, [lr, #32]
	add	r1, r9, r5
	mla	r1, r3, ip, r1
	.loc 2 110 0
	ldr	r3, [r6, #-4]!
	.loc 2 109 0
	add	r1, r8, r1, asl #2
.LVL415:
	.loc 2 112 0
	subs	ip, r3, ip
.LVL416:
	bmi	.L421
.LVL417:
.L424:
	.loc 2 118 0
	add	r3, r4, r0, asl #2
	ldr	r3, [r3, #1020]
	.loc 2 122 0
	cmp	r0, #49
	.loc 2 118 0
	ldr	r2, [r1, r3, asl #2]
	.loc 2 112 0
	sub	ip, ip, #1
.LVL418:
	.loc 2 118 0
	bic	r3, r2, #-16777216
	bic	r3, r3, #65280
	rsb	r3, r3, r3, asl #4
	and	r2, r2, #65280
	rsb	r2, r2, r2, asl #4
	mov	r3, r3, lsr #4
	bic	r3, r3, #-16777216
	mov	fp, r2, lsr #4
	bic	r2, r3, #65280
	and	r3, fp, #65280
	orr	r3, r3, r2
	str	r3, [r1]
	.loc 2 128 0
	ldr	r3, [lr, #32]
	.loc 2 122 0
	addne	r0, r0, #1
	moveq	r0, #0
	.loc 2 112 0
	cmn	ip, #1
	.loc 2 128 0
	add	r1, r1, r3, asl #2
.LVL419:
	.loc 2 112 0
	bne	.L424
	.loc 2 105 0
	subs	r5, r5, #1
	bpl	.L426
.LVL420:
.L429:
	sub	r3, r10, #1
	cmp	r10, #0
	movlt	r10, r3
	rsbge	r10, r10, r3
	str	r0, [r4, #1016]
	str	r10, [r4]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L431:
	.align	2
.L430:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE43:
	.size	R_FlushWholeFuzz32, .-R_FlushWholeFuzz32
	.align	2
	.type	R_FlushHTFuzz32, %function
R_FlushHTFuzz32:
.LFB44:
	.loc 2 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL421:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 144 0
	mov	r6, #0
	ldr	r4, .L449
	.loc 2 156 0
	ldr	r5, .L449+4
	ldr	r7, [r4, #8]
	.loc 2 141 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 183 0
	add	r3, r7, #1
	ldr	r8, [r4, #4]
	.loc 2 156 0
	ldr	fp, [r4, #12]
	ldr	r1, [r4, #1016]
	ldr	r10, [r5, #20]
	.loc 2 183 0
	str	r3, [sp, #4]
	add	r9, r4, #16
.LVL422:
.L439:
	.loc 2 149 0
	ldr	ip, [r9, r6, asl #2]
.LVL423:
	.loc 2 150 0
	ldr	r3, .L449+8
	.loc 2 153 0
	cmp	ip, r8
	.loc 2 150 0
	ldr	lr, [r3, r6, asl #2]
.LVL424:
	.loc 2 153 0
	bge	.L436
.LVL425:
	.loc 2 156 0
	ldr	r0, [r5, #32]
	add	r3, r6, fp
	mla	r0, r0, ip, r3
	.loc 2 157 0
	rsb	ip, ip, r8
.LVL426:
	.loc 2 159 0
	subs	ip, ip, #1
	.loc 2 156 0
	add	r0, r10, r0, asl #2
.LVL427:
	.loc 2 159 0
	bmi	.L436
.LVL428:
.L438:
	.loc 2 166 0
	add	r3, r4, r1, asl #2
	ldr	r3, [r3, #1020]
	.loc 2 170 0
	cmp	r1, #49
	.loc 2 166 0
	ldr	r2, [r0, r3, asl #2]
	.loc 2 159 0
	sub	ip, ip, #1
.LVL429:
	.loc 2 166 0
	bic	r3, r2, #-16777216
	bic	r3, r3, #65280
	rsb	r3, r3, r3, asl #4
	and	r2, r2, #65280
	mov	r3, r3, lsr #4
	rsb	r2, r2, r2, asl #4
	bic	r3, r3, #-16777216
	mov	r2, r2, lsr #4
	bic	r3, r3, #65280
	and	r2, r2, #65280
	orr	r3, r2, r3
	str	r3, [r0]
	.loc 2 176 0
	ldr	r3, [r5, #32]
	.loc 2 170 0
	addne	r1, r1, #1
	moveq	r1, #0
	.loc 2 159 0
	cmn	ip, #1
	.loc 2 176 0
	add	r0, r0, r3, asl #2
.LVL430:
	.loc 2 159 0
	bne	.L438
.LVL431:
.L436:
	.loc 2 181 0
	cmp	lr, r7
	ble	.L435
.LVL432:
	.loc 2 184 0
	ldr	r2, [r5, #32]
	ldr	r3, [sp, #4]
	.loc 2 185 0
	rsb	lr, r7, lr
.LVL433:
	.loc 2 184 0
	mla	r2, r2, r3, fp
	.loc 2 187 0
	subs	lr, lr, #1
	.loc 2 184 0
	add	r2, r6, r2
	add	r2, r10, r2, asl #2
.LVL434:
	.loc 2 187 0
	bmi	.L435
.LVL435:
.L442:
	.loc 2 194 0
	add	r3, r4, r1, asl #2
	ldr	r3, [r3, #1020]
	.loc 2 198 0
	cmp	r1, #49
	.loc 2 194 0
	ldr	r0, [r2, r3, asl #2]
	.loc 2 187 0
	sub	lr, lr, #1
.LVL436:
	.loc 2 194 0
	bic	r3, r0, #-16777216
	bic	r3, r3, #65280
	rsb	r3, r3, r3, asl #4
	and	r0, r0, #65280
	rsb	r0, r0, r0, asl #4
	mov	r3, r3, lsr #4
	bic	r3, r3, #-16777216
	mov	ip, r0, lsr #4
	bic	r0, r3, #65280
	and	r3, ip, #65280
	orr	r3, r3, r0
	str	r3, [r2]
	.loc 2 204 0
	ldr	r3, [r5, #32]
	.loc 2 198 0
	addne	r1, r1, #1
	moveq	r1, #0
	.loc 2 187 0
	cmn	lr, #1
	.loc 2 204 0
	add	r2, r2, r3, asl #2
.LVL437:
	.loc 2 187 0
	bne	.L442
.LVL438:
.L435:
	.loc 2 207 0
	add	r6, r6, #1
.LVL439:
	.loc 2 147 0
	cmp	r6, #4
	bne	.L439
	str	r1, [r4, #1016]
	.loc 2 209 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL440:
.L450:
	.align	2
.L449:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+32
	.cfi_endproc
.LFE44:
	.size	R_FlushHTFuzz32, .-R_FlushHTFuzz32
	.align	2
	.type	R_FlushQuadFuzz32, %function
R_FlushQuadFuzz32:
.LFB45:
	.loc 2 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 2 220 0
	mov	r9, #50
	.loc 2 213 0
	ldr	lr, .L457
	.loc 2 220 0
	ldr	r4, .L457+4
	.loc 2 219 0
	ldr	r0, [lr, #1016]
	.loc 2 220 0
	ldr	r1, [lr, #20]
	.loc 2 221 0
	ldr	r3, [lr, #24]
	.loc 2 220 0
	add	r1, r0, r1
	smull	r2, ip, r4, r1
	mov	r2, r1, asr #31
	rsb	r2, r2, ip, asr #4
	mul	r2, r9, r2
	rsb	r2, r2, r1
	.loc 2 221 0
	add	r3, r2, r3
	smull	r1, ip, r4, r3
	mov	r1, r3, asr #31
	rsb	r1, r1, ip, asr #4
	mul	r1, r9, r1
	.loc 2 222 0
	ldr	r5, [lr, #28]
	.loc 2 221 0
	rsb	r1, r1, r3
	.loc 2 222 0
	add	r5, r1, r5
	smull	r3, r8, r4, r5
	.loc 2 214 0
	ldr	r7, .L457+8
	.loc 2 213 0
	ldr	r6, [lr, #4]
.LVL441:
	.loc 2 214 0
	ldr	r7, [r7, #32]
	.loc 2 222 0
	mov	r3, r5, asr #31
	.loc 2 214 0
	ldr	ip, [lr, #12]
	.loc 2 222 0
	rsb	r3, r3, r8, asr #4
	.loc 2 214 0
	mla	ip, r7, r6, ip
	.loc 2 222 0
	mul	r3, r9, r3
	.loc 2 214 0
	ldr	r8, .L457+8
	.loc 2 225 0
	ldr	r7, [lr, #8]
	.loc 2 214 0
	ldr	r8, [r8, #20]
	.loc 2 238 0
	subs	r6, r7, r6
.LVL442:
	.loc 2 212 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 2 222 0
	rsb	r3, r3, r5
	.loc 2 214 0
	add	ip, r8, ip, asl #2
.LVL443:
	.loc 2 238 0
	bmi	.L451
	.loc 2 244 0
	str	r6, [sp]
.LVL444:
.L453:
	.loc 2 240 0
	add	r5, lr, r0, asl #2
	ldr	r6, [r5, #1020]
	.loc 2 241 0
	add	r5, lr, r2, asl #2
	.loc 2 240 0
	ldr	r6, [ip, r6, asl #2]
	.loc 2 241 0
	ldr	r7, [r5, #1020]
	.loc 2 240 0
	bic	r5, r6, #-16777216
	bic	r5, r5, #65280
	rsb	r5, r5, r5, asl #4
	and	r6, r6, #65280
	rsb	r6, r6, r6, asl #4
	mov	r5, r5, lsr #4
	mov	r8, r6, lsr #4
	bic	r5, r5, #-16777216
	bic	r6, r5, #65280
	and	r5, r8, #65280
	orr	r5, r5, r6
	str	r5, [ip]
	.loc 2 241 0
	add	r7, r7, #1
	ldr	r6, [ip, r7, asl #2]
	.loc 2 242 0
	add	r7, lr, r1, asl #2
	.loc 2 241 0
	bic	r5, r6, #-16777216
	bic	r5, r5, #65280
	rsb	r5, r5, r5, asl #4
	and	r6, r6, #65280
	rsb	r6, r6, r6, asl #4
	mov	r5, r5, lsr #4
	mov	r8, r6, lsr #4
	bic	r5, r5, #-16777216
	bic	r6, r5, #65280
	.loc 2 242 0
	ldr	r7, [r7, #1020]
	.loc 2 241 0
	and	r5, r8, #65280
	orr	r5, r5, r6
	str	r5, [ip, #4]
	.loc 2 242 0
	add	r5, r7, #2
	ldr	r6, [ip, r5, asl #2]
	.loc 2 243 0
	add	r7, lr, r3, asl #2
	.loc 2 242 0
	bic	r5, r6, #-16777216
	bic	r5, r5, #65280
	rsb	r5, r5, r5, asl #4
	and	r6, r6, #65280
	rsb	r6, r6, r6, asl #4
	mov	r5, r5, lsr #4
	mov	r8, r6, lsr #4
	bic	r5, r5, #-16777216
	bic	r6, r5, #65280
	.loc 2 243 0
	ldr	r7, [r7, #1020]
	.loc 2 242 0
	and	r5, r8, #65280
	orr	r5, r5, r6
	str	r5, [ip, #8]
	.loc 2 243 0
	add	r5, r7, #3
	ldr	fp, [ip, r5, asl #2]
	.loc 2 244 0
	add	r7, r0, #1
	.loc 2 245 0
	add	r6, r2, #1
	.loc 2 246 0
	add	r5, r1, #1
	.loc 2 244 0
	smull	r2, r1, r4, r7
.LVL445:
	.loc 2 245 0
	smull	r0, r2, r4, r6
.LVL446:
	.loc 2 246 0
	smull	r10, r0, r4, r5
	.loc 2 247 0
	add	r8, r3, #1
	.loc 2 243 0
	bic	r3, fp, #-16777216
.LVL447:
	bic	r3, r3, #65280
	rsb	r3, r3, r3, asl #4
	and	fp, fp, #65280
	.loc 2 246 0
	str	r0, [sp, #4]
	.loc 2 243 0
	rsb	fp, fp, fp, asl #4
	mov	r0, r3, lsr #4
	bic	r0, r0, #-16777216
	mov	fp, fp, lsr #4
	bic	r0, r0, #65280
	and	fp, fp, #65280
	orr	fp, fp, r0
	.loc 2 247 0
	smull	r10, r3, r4, r8
	.loc 2 244 0
	mov	r0, r7, asr #31
	.loc 2 243 0
	str	fp, [ip, #12]
	.loc 2 244 0
	rsb	r0, r0, r1, asr #4
	.loc 2 246 0
	ldr	fp, [sp, #4]
	.loc 2 245 0
	mov	r1, r6, asr #31
	rsb	r2, r1, r2, asr #4
	.loc 2 246 0
	mov	r1, r5, asr #31
	rsb	r1, r1, fp, asr #4
	.loc 2 247 0
	mov	fp, r8, asr #31
	rsb	r3, fp, r3, asr #4
	.loc 2 238 0
	ldr	r10, [sp]
	.loc 2 244 0
	mul	r0, r9, r0
	.loc 2 245 0
	mul	r2, r9, r2
	.loc 2 246 0
	mul	r1, r9, r1
	.loc 2 247 0
	mul	r3, r9, r3
	.loc 2 249 0
	ldr	fp, .L457+8
	.loc 2 238 0
	sub	r10, r10, #1
	.loc 2 249 0
	ldr	fp, [fp, #32]
	.loc 2 238 0
	cmn	r10, #1
	str	r10, [sp]
.LVL448:
	.loc 2 249 0
	add	ip, ip, fp, asl #2
.LVL449:
	.loc 2 244 0
	rsb	r0, r0, r7
.LVL450:
	.loc 2 245 0
	rsb	r2, r2, r6
.LVL451:
	.loc 2 246 0
	rsb	r1, r1, r5
.LVL452:
	.loc 2 247 0
	rsb	r3, r3, r8
.LVL453:
	.loc 2 238 0
	bne	.L453
.LVL454:
.L451:
	.loc 2 283 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L458:
	.align	2
.L457:
	.word	.LANCHOR0
	.word	1374389535
	.word	.LANCHOR1
	.cfi_endproc
.LFE45:
	.size	R_FlushQuadFuzz32, .-R_FlushQuadFuzz32
	.global	__aeabi_idiv
	.align	2
	.type	R_DrawColumn8_PointUV, %function
R_DrawColumn8_PointUV:
.LFB46:
	.file 3 "c:/devl/prboom3ds/src/r_drawcolumn.inl"
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL455:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r7, r9, r8
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL456:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL457:
	.loc 3 157 0
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 171 0
	ldr	r3, .L532
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r5, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL458:
	.loc 3 174 0
	bne	.L527
.LVL459:
.L462:
	.loc 3 215 0
	ldr	r8, .L532+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L468
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L528
.L469:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	.loc 3 223 0
	ldr	r1, [r5, #8]
	.loc 3 222 0
	ldr	r2, [r5, #4]
	.loc 3 221 0
	ldr	r10, [r5]
.LVL460:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
	mov	r1, #0
	.loc 3 224 0
	ldr	r0, .L532+8
	.loc 3 230 0
	ldr	r3, .L532+12
	.loc 3 233 0
	ldr	r9, .L532+16
	.loc 3 230 0
	ldr	lr, .L532+20
	.loc 3 231 0
	ldr	ip, .L532+24
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L532+28
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	add	r2, r9, r2, asl #2
.LVL461:
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.L471:
.LBB84:
	.loc 3 286 0
	ldr	r3, [r5, #24]
.LBE84:
	.loc 3 245 0
	add	r1, r1, #1
.LBB91:
	.loc 3 286 0
	cmp	r3, #128
.LBE91:
	.loc 3 245 0
	str	r1, [r8]
.LBB92:
	.loc 3 251 0
	ldr	r0, [r5, #32]
.LVL462:
	.loc 3 286 0
	beq	.L529
	.loc 3 294 0
	cmp	r3, #0
	bne	.L475
.LVL463:
	add	r7, r7, #1
.LVL464:
.L476:
	.loc 3 297 0
	ldrb	r1, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r6
.LVL465:
	.loc 3 297 0
	strb	r1, [r2, r3, asl #2]
.LVL466:
	add	r3, r3, #1
.LVL467:
	.loc 3 296 0
	cmp	r3, r7
	bne	.L476
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL468:
.L527:
.LBE92:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L462
	.loc 3 178 0
	cmp	r8, #0
	beq	.L463
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB93:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE93:
	.loc 3 179 0
	bne	.L522
	.loc 3 186 0
	tst	r3, #2
	beq	.L463
.LBB94:
	.loc 3 188 0
	uxth	fp, r10
.L522:
	mov	r0, fp
.LVL469:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL470:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL471:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL472:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL473:
.L463:
.LBE94:
	.loc 3 194 0
	ldr	r3, .L532+32
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L465
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L530
	.loc 3 201 0
	tst	r3, #8
	beq	.L465
.LBB95:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL474:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL475:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL476:
.L465:
.LBE95:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L462
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L528:
	.loc 3 216 0
	ldr	r2, .L532+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L531
.L468:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL477:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L469
.L470:
	.loc 3 235 0
	ldr	r2, [r5, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r5, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L532+4
	.loc 3 240 0
	ldr	ip, .L532+4
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L532+16
	add	r2, r1, r3
.LVL478:
	ldr	r1, [r8]
	b	.L471
.LVL479:
.L475:
.LBB96:
.LBB85:
	.loc 3 303 0
	sub	r1, r3, #1
.LVL480:
	.loc 3 304 0
	tst	r1, r3
	bne	.L477
.LBB86:
	.loc 3 305 0
	mov	lr, r1, asl #16
	mvn	lr, lr, lsr #16
	.loc 3 306 0
	sub	r9, r7, #1
	cmn	r9, #1
	.loc 3 305 0
	mvn	lr, lr, asl #16
.LVL481:
	.loc 3 306 0
	mov	r5, r9
.LVL482:
	beq	.L489
	mov	r1, r4
.LVL483:
	add	r3, r2, #8
.LVL484:
	mov	r8, r6, asl #1
.LVL485:
.L479:
	.loc 3 307 0
	and	ip, r1, lr
	ldrb	r10, [r0, ip, asr #16]	@ zero_extendqisi2
	add	ip, r6, r1
	strb	r10, [r3, #-8]
.LVL486:
	.loc 3 311 0
	and	ip, ip, lr
.LVL487:
	ldrb	ip, [r0, ip, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r5, r5, #2
.LVL488:
	.loc 3 311 0
	strb	ip, [r3, #-4]
.LVL489:
	add	r1, r8, r1
.LVL490:
	add	r3, r3, #8
.LVL491:
	.loc 3 306 0
	bpl	.L479
	mov	r9, r9, lsr #1
	add	r4, r4, r6, asl #1
	add	r3, r9, #1
.LVL492:
	.loc 3 316 0
	tst	r7, #1
	mla	r4, r9, r8, r4
	add	r2, r2, r3, asl #3
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL493:
.L489:
	.loc 3 317 0
	and	r4, r4, lr
	ldrb	r3, [r0, r4, asr #16]	@ zero_extendqisi2
	strb	r3, [r2]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL494:
.L529:
.LBE86:
.LBE85:
	.loc 3 286 0
	mov	r3, #0
	add	r7, r7, #1
.LVL495:
.L474:
	.loc 3 289 0
	bic	r1, r4, #-16777216
	bic	r1, r1, #8388608
	ldrb	r1, [r0, r1, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r6
.LVL496:
	.loc 3 289 0
	strb	r1, [r2, r3, asl #2]
.LVL497:
	add	r3, r3, #1
.LVL498:
	.loc 3 288 0
	cmp	r3, r7
	bne	.L474
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL499:
.L477:
.LBB90:
.LBB87:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r3, r3, asl #16
.LVL500:
	.loc 3 325 0
	bge	.L524
	b	.L483
.L485:
	rsb	r4, r3, r4
.LVL501:
.L524:
	.loc 3 328 0
	cmp	r4, r3
	bge	.L485
.L482:
.LBE87:
.LBB88:
	.loc 3 306 0
	mov	r1, #0
	add	r7, r7, #1
.LVL502:
.L484:
.LBE88:
.LBB89:
	.loc 3 345 0
	ldrb	ip, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL503:
	cmp	r4, r3
	.loc 3 345 0
	strb	ip, [r2, r1, asl #2]
.LVL504:
	add	r1, r1, #1
.LVL505:
	.loc 3 348 0
	rsbge	r4, r3, r4
.LVL506:
	.loc 3 339 0
	cmp	r7, r1
	bne	.L484
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL507:
.L483:
	.loc 3 326 0 discriminator 1
	adds	r4, r3, r4
.LVL508:
	bpl	.L482
.LVL509:
	.loc 3 326 0 is_stmt 0
	adds	r4, r3, r4
.LVL510:
	bmi	.L483
	b	.L482
.LVL511:
.L531:
.LBE89:
.LBE90:
.LBE96:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L468
	b	.L470
.L530:
.LBB97:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL512:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL513:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL514:
.LBE97:
	b	.L465
.L533:
	.align	2
.L532:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	.LANCHOR0+48
	.word	R_FlushWhole8
	.word	R_FlushHT8
	.word	R_FlushQuad8
	.word	viewheight
	.cfi_endproc
.LFE46:
	.size	R_DrawColumn8_PointUV, .-R_DrawColumn8_PointUV
	.align	2
	.type	R_DrawColumn8_PointUV_PointZ, %function
R_DrawColumn8_PointUV_PointZ:
.LFB47:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL515:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r7, r9, r8
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL516:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL517:
	.loc 3 157 0
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 171 0
	ldr	r3, .L607
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r5, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL518:
	.loc 3 174 0
	bne	.L602
.LVL519:
.L537:
	.loc 3 215 0
	ldr	r8, .L607+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L543
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L603
.L544:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	.loc 3 222 0
	ldr	r2, [r5, #4]
	.loc 3 233 0
	ldr	r1, .L607+8
	.loc 3 221 0
	ldr	r10, [r5]
.LVL520:
	.loc 3 223 0
	ldr	r0, [r5, #8]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r1, r1, r2, asl #2
.LVL521:
	mov	r2, #0
	.loc 3 224 0
	ldr	ip, .L607+12
	.loc 3 230 0
	ldr	r3, .L607+16
	ldr	r9, .L607+20
	.loc 3 231 0
	ldr	lr, .L607+24
	.loc 3 224 0
	str	fp, [ip, #-1204]
	.loc 3 231 0
	stmia	r3, {r9, lr}
	.loc 3 232 0
	ldr	ip, .L607+28
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
	.loc 3 232 0
	str	ip, [r3, #8]
.L546:
.LBB98:
	.loc 3 286 0
	ldr	r3, [r5, #24]
.LBE98:
	.loc 3 245 0
	add	r2, r2, #1
.LBB105:
	.loc 3 286 0
	cmp	r3, #128
.LBE105:
	.loc 3 245 0
	str	r2, [r8]
.LBB106:
	.loc 3 251 0
	ldr	r0, [r5, #32]
.LVL522:
	.loc 3 252 0
	ldr	r2, [r5, #44]
.LVL523:
	.loc 3 286 0
	beq	.L604
	.loc 3 294 0
	cmp	r3, #0
	bne	.L550
.LVL524:
	add	r7, r7, #1
.LVL525:
.L551:
	.loc 3 297 0
	ldrb	ip, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r6
.LVL526:
	.loc 3 297 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	strb	ip, [r1, r3, asl #2]
.LVL527:
	add	r3, r3, #1
.LVL528:
	.loc 3 296 0
	cmp	r3, r7
	bne	.L551
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL529:
.L602:
.LBE106:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L537
	.loc 3 178 0
	cmp	r8, #0
	beq	.L538
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB107:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE107:
	.loc 3 179 0
	bne	.L597
	.loc 3 186 0
	tst	r3, #2
	beq	.L538
.LBB108:
	.loc 3 188 0
	uxth	fp, r10
.L597:
	mov	r0, fp
.LVL530:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL531:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL532:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL533:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL534:
.L538:
.LBE108:
	.loc 3 194 0
	ldr	r3, .L607+32
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L540
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L605
	.loc 3 201 0
	tst	r3, #8
	beq	.L540
.LBB109:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL535:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL536:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL537:
.L540:
.LBE109:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L537
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L603:
	.loc 3 216 0
	ldr	r2, .L607+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L606
.L543:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL538:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L544
.L545:
	.loc 3 235 0
	ldr	r1, [r5, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r2, [r5, #8]
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r1, [r0, #16]
	.loc 3 236 0
	str	r2, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L607+4
	.loc 3 240 0
	ldr	ip, .L607+4
	.loc 3 239 0
	strgt	r1, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	cmp	r2, r0
	.loc 3 241 0
	strlt	r2, [ip, #8]
	.loc 3 243 0
	ldr	r2, .L607+8
	add	r1, r2, r3
.LVL539:
	ldr	r2, [r8]
	b	.L546
.LVL540:
.L550:
.LBB110:
.LBB99:
	.loc 3 303 0
	sub	ip, r3, #1
.LVL541:
	.loc 3 304 0
	tst	ip, r3
	bne	.L552
.LBB100:
	.loc 3 305 0
	mov	r5, ip, asl #16
.LVL542:
	mvn	r5, r5, lsr #16
	.loc 3 306 0
	sub	r10, r7, #1
	cmn	r10, #1
	.loc 3 305 0
	mvn	r5, r5, asl #16
.LVL543:
	.loc 3 306 0
	mov	r8, r10
.LVL544:
	beq	.L564
	mov	ip, r4
.LVL545:
	add	r3, r1, #8
.LVL546:
	mov	r9, r6, asl #1
.LVL547:
.L554:
	.loc 3 307 0
	and	lr, ip, r5
	ldrb	lr, [r0, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r8, r8, #2
.LVL548:
	.loc 3 307 0
	ldrb	fp, [r2, lr]	@ zero_extendqisi2
	add	lr, r6, ip
	strb	fp, [r3, #-8]
.LVL549:
	.loc 3 311 0
	and	lr, lr, r5
.LVL550:
	ldrb	lr, [r0, lr, asr #16]	@ zero_extendqisi2
	add	ip, r9, ip
.LVL551:
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	add	r3, r3, #8
.LVL552:
	strb	lr, [r3, #-12]
.LVL553:
	.loc 3 306 0
	bpl	.L554
	mov	r10, r10, lsr #1
	add	r4, r4, r6, asl #1
	add	r3, r10, #1
	.loc 3 316 0
	tst	r7, #1
	mla	r4, r10, r9, r4
	add	r1, r1, r3, asl #3
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL554:
.L564:
	.loc 3 317 0
	and	r4, r4, r5
	ldrb	r3, [r0, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	strb	r3, [r1]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL555:
.L604:
.LBE100:
.LBE99:
	.loc 3 286 0
	mov	r3, #0
	add	r7, r7, #1
.LVL556:
.L549:
	.loc 3 289 0
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r0, ip, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r6
.LVL557:
	.loc 3 289 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	strb	ip, [r1, r3, asl #2]
.LVL558:
	add	r3, r3, #1
.LVL559:
	.loc 3 288 0
	cmp	r3, r7
	bne	.L549
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL560:
.L552:
.LBB104:
.LBB101:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r3, r3, asl #16
.LVL561:
	.loc 3 325 0
	bge	.L599
	b	.L558
.L560:
	rsb	r4, r3, r4
.LVL562:
.L599:
	.loc 3 328 0
	cmp	r4, r3
	bge	.L560
.L557:
.LBE101:
.LBB102:
	.loc 3 306 0
	mov	ip, #0
	add	r7, r7, #1
.LVL563:
.L559:
.LBE102:
.LBB103:
	.loc 3 345 0
	ldrb	lr, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL564:
	.loc 3 345 0
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r3
	.loc 3 345 0
	strb	lr, [r1, ip, asl #2]
.LVL565:
	add	ip, ip, #1
.LVL566:
	.loc 3 348 0
	rsbge	r4, r3, r4
.LVL567:
	.loc 3 339 0
	cmp	r7, ip
	bne	.L559
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL568:
.L558:
	.loc 3 326 0 discriminator 1
	adds	r4, r3, r4
.LVL569:
	bpl	.L557
.LVL570:
	.loc 3 326 0 is_stmt 0
	adds	r4, r3, r4
.LVL571:
	bmi	.L558
	b	.L557
.LVL572:
.L606:
.LBE103:
.LBE104:
.LBE110:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L543
	b	.L545
.L605:
.LBB111:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL573:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL574:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL575:
.LBE111:
	b	.L540
.L608:
	.align	2
.L607:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR0+48
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole8
	.word	R_FlushHT8
	.word	R_FlushQuad8
	.word	viewheight
	.cfi_endproc
.LFE47:
	.size	R_DrawColumn8_PointUV_PointZ, .-R_DrawColumn8_PointUV_PointZ
	.align	2
	.type	R_DrawColumn8_PointUV_LinearZ, %function
R_DrawColumn8_PointUV_LinearZ:
.LFB48:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL576:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r6, r8}
	.loc 3 113 0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 3 157 0
	subs	r3, r8, r6
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL577:
	.loc 3 157 0
	str	r3, [sp]
	.loc 3 121 0
	ldr	r9, [r0, #28]
.LVL578:
	.loc 3 157 0
	bmi	.L609
	.loc 3 171 0
	ldr	r3, .L687
.LVL579:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r6
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL580:
	.loc 3 174 0
	bne	.L682
.LVL581:
.L612:
	.loc 3 215 0
	ldr	r8, .L687+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L618
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L683
.L619:
	.loc 3 224 0 is_stmt 1
	mov	r10, #1
	.loc 3 230 0
	ldr	r2, .L687+8
	.loc 3 231 0
	ldr	ip, .L687+12
	.loc 3 224 0
	ldr	r0, .L687+16
	.loc 3 231 0
	str	ip, [r2, #4]
	mov	ip, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L687+20
.LVL582:
	.loc 3 221 0
	ldr	r6, [r7]
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 230 0
	ldr	lr, .L687+24
	.loc 3 224 0
	str	r10, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L687+28
	.loc 3 233 0
	add	r9, r9, r3, asl #2
	.loc 3 221 0
	str	r6, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	r9, [sp, #4]
.LVL583:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 232 0
	str	r0, [r2, #8]
.LVL584:
.L621:
.LBB112:
	.loc 3 259 0
	ldr	r2, [r7, #12]
	.loc 3 286 0
	ldr	lr, [r7, #24]
	.loc 3 260 0
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #48]
.LBE112:
	.loc 3 245 0
	add	ip, ip, #1
.LBB119:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	lr, #128
.LBE119:
	.loc 3 245 0
	str	ip, [r8]
.LBB120:
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	.loc 3 251 0
	ldr	ip, [r7, #32]
.LVL585:
	.loc 3 286 0
	beq	.L684
	.loc 3 294 0
	cmp	lr, #0
	bne	.L629
.LVL586:
	ldr	r1, [sp]
	ldr	lr, [sp, #4]
	add	r7, r1, #1
.LVL587:
	ldr	r1, .L687+32
	and	r0, r6, #3
	add	r7, r7, r3
	sub	r6, lr, r3, asl #2
.LVL588:
.L630:
	.loc 3 297 0
	and	lr, r3, #3
	add	lr, r0, lr, asl #2
	ldrb	lr, [r1, lr]	@ zero_extendqisi2
	add	r9, sp, #40
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	lr, r9, lr, asl #2
	ldrb	r8, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 300 0
	add	r4, r4, r5
.LVL589:
	.loc 3 297 0
	ldrb	lr, [lr, r8]	@ zero_extendqisi2
	strb	lr, [r6, r3, asl #2]
	.loc 3 298 0
	add	r3, r3, #1
.LVL590:
	.loc 3 296 0
	cmp	r3, r7
	bne	.L630
.LVL591:
.L609:
.LBE120:
	.loc 3 357 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL592:
.L682:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L612
	.loc 3 178 0
	cmp	r6, #0
	beq	.L613
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB121:
	.loc 3 181 0
	mvnne	r10, r9
	uxthne	r10, r10
.LBE121:
	.loc 3 179 0
	bne	.L677
	.loc 3 186 0
	tst	r3, #2
	beq	.L613
.LBB122:
	.loc 3 188 0
	uxth	r10, r9
.L677:
	mov	r0, r10
.LVL593:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL594:
	.loc 3 190 0
	ldr	r3, [sp]
	.loc 3 189 0
	add	r6, r6, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r10
.LVL595:
	.loc 3 189 0
	str	r6, [r7, #4]
.LVL596:
	.loc 3 190 0
	str	r3, [sp]
.LVL597:
.L613:
.LBE122:
	.loc 3 194 0
	ldr	r3, .L687+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L615
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L685
	.loc 3 201 0
	tst	r3, #8
	beq	.L615
.LBB123:
	.loc 3 203 0
	mov	r1, r5
	uxth	r0, r9
.LVL598:
.L678:
	bl	__aeabi_idiv
.LVL599:
	.loc 3 205 0
	ldr	r3, [sp]
	.loc 3 204 0
	rsb	r8, r0, r8
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r8, [r7, #8]
.LVL600:
	.loc 3 205 0
	str	r3, [sp]
.LVL601:
.L615:
.LBE123:
	.loc 3 208 0
	ldr	r3, [sp]
	cmp	r3, #0
	bgt	.L612
	b	.L609
.L683:
	.loc 3 216 0
	ldr	r3, .L687+16
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L686
.L618:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL602:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L619
	ldr	r0, [r7]
.L620:
	.loc 3 235 0
	ldr	r1, [r7, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r7, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, r8, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r1, [ip, #16]
	ldr	ip, .L687+4
	mov	r6, r0
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 243 0
	ldr	r0, .L687+20
	.loc 3 240 0
	ldr	ip, [r8, #8]
	ldr	lr, .L687+4
	.loc 3 243 0
	add	r2, r2, r1, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	add	r2, r0, r2
	.loc 3 241 0
	strlt	r3, [lr, #8]
	ldr	ip, [r8]
	.loc 3 235 0
	mov	r3, r1
	.loc 3 243 0
	str	r2, [sp, #4]
.LVL603:
	b	.L621
.LVL604:
.L629:
.LBB124:
.LBB113:
	.loc 3 303 0
	sub	r1, lr, #1
.LVL605:
	.loc 3 304 0
	tst	r1, lr
	bne	.L631
.LBB114:
	.loc 3 305 0
	mov	r10, r1, asl #16
	mvn	r10, r10, lsr #16
	.loc 3 306 0
	ldr	r1, [sp]
.LVL606:
	.loc 3 305 0
	mvn	r10, r10, asl #16
.LVL607:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	andeq	r0, r6, #3
	ldreq	r1, .L687+32
	beq	.L642
	mov	r1, r1, lsr #1
	str	r1, [sp, #12]
	mov	r1, r1, asl #1
	add	lr, r1, #2
.LVL608:
	add	lr, lr, r3
	and	r0, r6, #3
	mov	r6, lr
.LVL609:
	ldr	lr, [sp, #4]
	mov	r7, r3
.LVL610:
	add	r8, lr, #8
	mov	lr, r5, asl #1
	mov	r9, r4
	mov	fp, lr
	str	r1, [sp, #16]
	ldr	r1, .L687+32
	str	lr, [sp, #20]
	str	r4, [sp, #24]
	str	r3, [sp, #28]
	str	r6, [sp, #8]
.LVL611:
.L633:
	.loc 3 307 0
	and	r3, r7, #3
	add	r3, r0, r3, asl #2
	ldrb	lr, [r1, r3]	@ zero_extendqisi2
	add	r3, r7, #1
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r0, r3, asl #2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	.loc 3 307 0
	add	r4, sp, #40
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	add	lr, r4, lr, asl #2
	and	r4, r9, r10
	ldrb	r4, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 311 0
	add	r6, sp, #40
	.loc 3 307 0
	ldrb	r4, [lr, r4]	@ zero_extendqisi2
	add	lr, r5, r9
	strb	r4, [r8, #-8]
.LVL612:
	.loc 3 311 0
	add	r3, r6, r3, asl #2
	and	lr, lr, r10
.LVL613:
	ldrb	lr, [ip, lr, asr #16]	@ zero_extendqisi2
	ldr	r3, [r3, #-8]
	.loc 3 312 0
	add	r7, r7, #2
.LVL614:
	.loc 3 311 0
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	lr, [sp, #8]
	.loc 3 311 0
	strb	r3, [r8, #-4]
	.loc 3 306 0
	cmp	r7, lr
	add	r9, fp, r9
.LVL615:
	add	r8, r8, #8
.LVL616:
	bne	.L633
	.loc 3 316 0
	ldr	r6, [sp]
	ldr	r3, [sp, #28]
	ldr	r4, [sp, #24]
	tst	r6, #1
	ldr	r6, [sp, #16]
	add	r3, r3, #2
	add	r4, r4, r5, asl #1
	add	r3, r3, r6
	ldr	r5, [sp, #12]
.LVL617:
	ldr	r6, [sp, #20]
	add	lr, r5, #1
	mla	r4, r6, r5, r4
	ldr	r5, [sp, #4]
	add	lr, r5, lr, asl #3
	str	lr, [sp, #4]
	bne	.L609
.LVL618:
.L642:
	.loc 3 317 0
	and	r3, r3, #3
	add	r0, r0, r3, asl #2
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	and	r4, r4, r10
	cmp	r3, r2
	movge	r2, #0
.LVL619:
	movlt	r2, #1
	add	r3, sp, #40
	add	r2, r3, r2, asl #2
	ldr	r2, [r2, #-8]
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	strb	r3, [r2]
	b	.L609
.LVL620:
.L684:
	ldr	r1, [sp]
	ldr	lr, [sp, #4]
	add	r8, r1, #1
	ldr	r1, .L687+32
	and	r0, r6, #3
	add	r8, r8, r3
	sub	r6, lr, r3, asl #2
.LVL621:
.L627:
.LBE114:
.LBE113:
	.loc 3 289 0
	and	lr, r3, #3
	add	lr, r0, lr, asl #2
	ldrb	lr, [r1, lr]	@ zero_extendqisi2
	bic	r7, r4, #-16777216
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	r9, sp, #40
	add	lr, r9, lr, asl #2
	bic	r7, r7, #8388608
	ldr	r9, [lr, #-8]
	ldrb	lr, [ip, r7, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL622:
	.loc 3 289 0
	ldrb	lr, [r9, lr]	@ zero_extendqisi2
	strb	lr, [r6, r3, asl #2]
	.loc 3 290 0
	add	r3, r3, #1
.LVL623:
	.loc 3 288 0
	cmp	r3, r8
	bne	.L627
.LBE124:
	.loc 3 357 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL624:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL625:
.L631:
	.cfi_restore_state
.LBB125:
.LBB117:
.LBB115:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	lr, lr, asl #16
.LVL626:
	.loc 3 325 0
	bge	.L680
	b	.L637
.L639:
	rsb	r4, lr, r4
.LVL627:
.L680:
	.loc 3 328 0
	cmp	r4, lr
	bge	.L639
.L636:
	ldr	r1, [sp]
	.loc 3 345 0
	and	r0, r6, #3
	add	r7, r1, #1
.LVL628:
	ldr	r1, [sp, #4]
	add	r7, r7, r3
	sub	r8, r1, r3, asl #2
	ldr	r6, .L687+32
.LVL629:
	b	.L638
.LVL630:
.L641:
	ldrb	r1, [r6, r1]	@ zero_extendqisi2
	add	r10, sp, #40
	cmp	r1, r2
	movge	r1, #0
	movlt	r1, #1
	add	r1, r10, r1, asl #2
	ldrb	r9, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r1, [r1, #-8]
	.loc 3 348 0
	add	r4, r4, r5
.LVL631:
	.loc 3 345 0
	ldrb	r1, [r1, r9]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, lr
	.loc 3 345 0
	strb	r1, [r8, r3, asl #2]
	.loc 3 348 0
	rsbge	r4, lr, r4
	.loc 3 346 0
	add	r3, r3, #1
.LVL632:
.L638:
	.loc 3 345 0
	and	r1, r3, #3
	.loc 3 339 0
	cmp	r3, r7
	.loc 3 345 0
	add	r1, r0, r1, asl #2
	.loc 3 339 0
	bne	.L641
.LBE115:
.LBE117:
.LBE125:
	.loc 3 357 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL633:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL634:
.L637:
	.cfi_restore_state
.LBB126:
.LBB118:
.LBB116:
	.loc 3 326 0 discriminator 1
	adds	r4, lr, r4
.LVL635:
	bpl	.L636
.LVL636:
	.loc 3 326 0 is_stmt 0
	adds	r4, lr, r4
.LVL637:
	bmi	.L637
	b	.L636
.LVL638:
.L686:
.LBE116:
.LBE118:
.LBE126:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r0, [r7]
	add	r3, r2, r3
	cmp	r3, r0
	bne	.L618
	b	.L620
.L685:
.LBB127:
	.loc 3 197 0
	mvn	r0, r9
	mov	r1, r5
	uxth	r0, r0
	b	.L678
.L688:
	.align	2
.L687:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	R_FlushHT8
	.word	.LANCHOR2
	.word	.LANCHOR0+48
	.word	R_FlushWhole8
	.word	R_FlushQuad8
	.word	filter_ditherMatrix
	.word	viewheight
.LBE127:
	.cfi_endproc
.LFE48:
	.size	R_DrawColumn8_PointUV_LinearZ, .-R_DrawColumn8_PointUV_LinearZ
	.align	2
	.type	R_DrawColumn15_PointUV, %function
R_DrawColumn15_PointUV:
.LFB55:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL639:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL640:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL641:
	.loc 3 157 0
	bmi	.L689
	.loc 3 171 0
	ldr	r3, .L762
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL642:
	.loc 3 174 0
	bne	.L757
.LVL643:
.L692:
	.loc 3 215 0
	ldr	r8, .L762+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L698
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L758
.L699:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	r0, .L762+8
	.loc 3 230 0
	ldr	r2, .L762+12
	ldr	lr, .L762+16
	.loc 3 231 0
	ldr	ip, .L762+20
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L762+24
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL644:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 233 0
	ldr	r9, .L762+28
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
.LVL645:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L701:
.LBB128:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE128:
	.loc 3 245 0
	add	r2, r2, #1
.LBB135:
	.loc 3 286 0
	cmp	r1, #128
.LBE135:
	.loc 3 245 0
	str	r2, [r8]
.LBB136:
	.loc 3 278 0
	add	ip, r5, #1
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL646:
	.loc 3 286 0
	beq	.L759
	.loc 3 294 0
	cmp	r1, #0
	bne	.L705
.LVL647:
	.loc 3 297 0
	mov	lr, #128
	mov	ip, #126
	ldr	r1, .L762+32
	add	r3, r3, #8
.LVL648:
	ldr	r0, [r1]
.LVL649:
.L706:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL650:
	.loc 3 297 0
	smlabb	r1, lr, r1, ip
	ldrh	r1, [r0, r1]
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL651:
	.loc 3 300 0
	add	r4, r4, r6
.LVL652:
	add	r3, r3, #8
.LVL653:
	.loc 3 296 0
	bne	.L706
.LVL654:
.L689:
.LBE136:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL655:
.L757:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L692
	.loc 3 178 0
	cmp	r8, #0
	beq	.L693
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB137:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE137:
	.loc 3 179 0
	bne	.L754
	.loc 3 186 0
	tst	r3, #2
	beq	.L693
.LBB138:
	.loc 3 188 0
	uxth	fp, r10
.L754:
	mov	r0, fp
.LVL656:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL657:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL658:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL659:
.L693:
.LBE138:
	.loc 3 194 0
	ldr	r3, .L762+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L695
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L760
	.loc 3 201 0
	tst	r3, #8
	beq	.L695
.LBB139:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL660:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL661:
.L695:
.LBE139:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L692
	b	.L689
.L758:
	.loc 3 216 0
	ldr	r3, .L762+8
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L761
.L698:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL662:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L699
.L700:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L762+4
	.loc 3 240 0
	ldr	ip, .L762+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L762+28
	add	r3, r1, r2, asl #1
.LVL663:
	ldr	r2, [r8]
	b	.L701
.LVL664:
.L705:
.LBB140:
.LBB129:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL665:
	.loc 3 304 0
	tst	r0, r1
	bne	.L707
.LBB130:
	.loc 3 305 0
	mov	lr, r0, asl #16
	mvn	lr, lr, lsr #16
	.loc 3 306 0
	sub	r1, r5, #1
	cmn	r1, #1
	str	r1, [sp]
	mov	r7, r1
.LVL666:
	ldreq	r1, .L762+32
	.loc 3 305 0
	mvn	lr, lr, asl #16
.LVL667:
	streq	r1, [sp, #12]
	.loc 3 306 0
	beq	.L720
	ldr	r1, .L762+32
	mov	r0, r4
.LVL668:
	mov	ip, r1
	ldr	r8, [ip]
	mov	ip, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, ip
	str	r1, [sp, #12]
	str	ip, [sp, #4]
	add	r1, r3, #16
	str	r5, [sp, #8]
.LVL669:
.L709:
	and	ip, r0, lr
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r7, r7, #2
.LVL670:
	.loc 3 307 0
	smlabb	ip, r10, ip, r9
	ldrh	r5, [r8, ip]
	add	ip, r6, r0
	strh	r5, [r1, #-16]	@ movhi
.LVL671:
	.loc 3 311 0
	and	ip, ip, lr
.LVL672:
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	add	r0, fp, r0
.LVL673:
	smlabb	ip, r10, ip, r9
	ldrh	ip, [r8, ip]
	add	r1, r1, #16
.LVL674:
	strh	ip, [r1, #-24]	@ movhi
.LVL675:
	.loc 3 306 0
	bpl	.L709
	ldr	r1, [sp]
	ldr	r5, [sp, #8]
	mov	r1, r1, lsr #1
	ldr	ip, [sp, #4]
	add	r4, r4, r6, asl #1
	add	r0, r1, #1
.LVL676:
	.loc 3 316 0
	tst	r5, #1
	mla	r4, ip, r1, r4
	add	r3, r3, r0, asl #4
	bne	.L689
.L720:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, lr
	ldr	r0, [sp, #12]
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL677:
	ldr	r0, [r0]
	add	r2, r1, r2, asl #7
	ldrh	r2, [r0, r2]
	strh	r2, [r3]	@ movhi
	b	.L689
.LVL678:
.L759:
.LBE130:
.LBE129:
	.loc 3 289 0
	mov	lr, #126
	ldr	r0, .L762+32
	add	r3, r3, #8
.LVL679:
	ldr	ip, [r0]
.LVL680:
.L704:
	bic	r0, r4, #-16777216
	bic	r0, r0, #8388608
	ldrb	r0, [r2, r0, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL681:
	.loc 3 289 0
	smlabb	r0, r1, r0, lr
	ldrh	r0, [ip, r0]
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	strh	r0, [r3, #-8]	@ movhi
.LVL682:
	.loc 3 292 0
	add	r4, r4, r6
.LVL683:
	add	r3, r3, #8
.LVL684:
	.loc 3 288 0
	bne	.L704
.LBE140:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL685:
.L707:
	.cfi_restore_state
.LBB141:
.LBB133:
.LBB131:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL686:
	.loc 3 325 0
	blt	.L713
	.loc 3 328 0
	cmp	r4, r1
	blt	.L712
.L715:
	rsb	r4, r1, r4
.LVL687:
	cmp	r1, r4
	ble	.L715
.L712:
	.loc 3 345 0
	ldr	r0, .L762+32
	add	r3, r3, #8
.LVL688:
	ldr	r7, [r0]
.LVL689:
	mov	r5, #128
	mov	lr, #126
	b	.L714
.LVL690:
.L717:
	ldrb	r0, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL691:
	.loc 3 345 0
	smlabb	r0, r5, r0, lr
	ldrh	r0, [r7, r0]
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	strh	r0, [r3, #-8]	@ movhi
.LVL692:
	.loc 3 348 0
	rsbge	r4, r1, r4
.LVL693:
	add	r3, r3, #8
.LVL694:
.L714:
	.loc 3 339 0
	subs	ip, ip, #1
.LVL695:
	bcs	.L717
.LBE131:
.LBE133:
.LBE141:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL696:
.L713:
	.cfi_restore_state
.LBB142:
.LBB134:
.LBB132:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL697:
	bpl	.L712
.LVL698:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL699:
	bmi	.L713
	b	.L712
.LVL700:
.L761:
.LBE132:
.LBE134:
.LBE142:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L698
	b	.L700
.L760:
.LBB143:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL701:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL702:
.LBE143:
	b	.L695
.L763:
	.align	2
.L762:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole15
	.word	R_FlushHT15
	.word	R_FlushQuad15
	.word	.LANCHOR0+1220
	.word	V_Palette15
	.word	viewheight
	.cfi_endproc
.LFE55:
	.size	R_DrawColumn15_PointUV, .-R_DrawColumn15_PointUV
	.align	2
	.type	R_DrawColumn15_PointUV_PointZ, %function
R_DrawColumn15_PointUV_PointZ:
.LFB56:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL703:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL704:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL705:
	.loc 3 157 0
	bmi	.L764
	.loc 3 171 0
	ldr	r3, .L837
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL706:
	.loc 3 174 0
	bne	.L832
.LVL707:
.L767:
	.loc 3 215 0
	ldr	r8, .L837+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L773
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L833
.L774:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	r0, .L837+8
	.loc 3 230 0
	ldr	r2, .L837+12
	ldr	lr, .L837+16
	.loc 3 231 0
	ldr	ip, .L837+20
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L837+24
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L837+28
	.loc 3 221 0
	ldr	r10, [r7]
.LVL708:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	str	r3, [sp, #4]
.LVL709:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L776:
.LVL710:
.LBB144:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE144:
	.loc 3 245 0
	add	r2, r2, #1
.LBB151:
	.loc 3 286 0
	cmp	r1, #128
.LBE151:
	.loc 3 245 0
	str	r2, [r8]
.LBB152:
	.loc 3 252 0
	ldr	r0, [r7, #44]
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL711:
	.loc 3 278 0
	add	lr, r5, #1
.LVL712:
	.loc 3 286 0
	beq	.L834
	.loc 3 294 0
	cmp	r1, #0
	bne	.L780
.LVL713:
	.loc 3 297 0
	mov	r7, #128
.LVL714:
	mov	lr, #126
	ldr	r1, .L837+32
	ldr	r3, [sp, #4]
	ldr	ip, [r1]
	add	r3, r3, #8
.LVL715:
.L781:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL716:
	.loc 3 297 0
	ldrb	r1, [r0, r1]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	smlabb	r1, r7, r1, lr
	ldrh	r1, [ip, r1]
	.loc 3 300 0
	add	r4, r4, r6
.LVL717:
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL718:
	add	r3, r3, #8
.LVL719:
	.loc 3 296 0
	bne	.L781
.LVL720:
.L764:
.LBE152:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL721:
.L832:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L767
	.loc 3 178 0
	cmp	r8, #0
	beq	.L768
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB153:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE153:
	.loc 3 179 0
	bne	.L829
	.loc 3 186 0
	tst	r3, #2
	beq	.L768
.LBB154:
	.loc 3 188 0
	uxth	fp, r10
.L829:
	mov	r0, fp
.LVL722:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL723:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL724:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL725:
.L768:
.LBE154:
	.loc 3 194 0
	ldr	r3, .L837+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L770
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L835
	.loc 3 201 0
	tst	r3, #8
	beq	.L770
.LBB155:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL726:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL727:
.L770:
.LBE155:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L767
	b	.L764
.L833:
	.loc 3 216 0
	ldr	r3, .L837+8
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L836
.L773:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL728:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L774
.L775:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L837+4
	.loc 3 240 0
	ldr	ip, .L837+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L837+28
	add	r3, r1, r2, asl #1
	str	r3, [sp, #4]
.LVL729:
	ldr	r2, [r8]
	b	.L776
.LVL730:
.L780:
.LBB156:
.LBB145:
	.loc 3 303 0
	sub	ip, r1, #1
.LVL731:
	.loc 3 304 0
	tst	ip, r1
	bne	.L782
.LBB146:
	.loc 3 305 0
	mov	r7, ip, asl #16
.LVL732:
	mvn	r7, r7, lsr #16
	.loc 3 306 0
	sub	r3, r5, #1
	cmn	r3, #1
	str	r3, [sp, #8]
	ldreq	r3, .L837+32
	.loc 3 305 0
	mvn	r7, r7, asl #16
.LVL733:
	streq	r3, [sp, #20]
	.loc 3 306 0
	beq	.L795
	ldr	r1, .L837+32
	mov	ip, r4
.LVL734:
	mov	lr, r1
	ldr	r8, [lr]
	mov	lr, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, lr
	str	r1, [sp, #20]
	ldr	r1, [sp, #4]
	str	lr, [sp, #12]
	add	r1, r1, #16
	str	r5, [sp, #16]
.LVL735:
.L784:
	and	lr, ip, r7
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r3, r3, #2
.LVL736:
	.loc 3 307 0
	ldrb	r5, [r0, lr]	@ zero_extendqisi2
	add	lr, r6, ip
	smlabb	r5, r10, r5, r9
	ldrh	r5, [r8, r5]
	.loc 3 311 0
	and	lr, lr, r7
	.loc 3 307 0
	strh	r5, [r1, #-16]	@ movhi
.LVL737:
	.loc 3 311 0
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	add	ip, fp, ip
.LVL738:
	ldrb	lr, [r0, lr]	@ zero_extendqisi2
	add	r1, r1, #16
.LVL739:
	smlabb	lr, r10, lr, r9
	ldrh	lr, [r8, lr]
	strh	lr, [r1, #-24]	@ movhi
.LVL740:
	.loc 3 306 0
	bpl	.L784
	ldr	r3, [sp, #8]
	add	r4, r4, r6, asl #1
	mov	r1, r3, lsr #1
	ldr	r3, [sp, #12]
	ldr	r5, [sp, #16]
	mla	r4, r3, r1, r4
	ldr	r3, [sp, #4]
	add	ip, r1, #1
.LVL741:
	add	r3, r3, ip, asl #4
	.loc 3 316 0
	tst	r5, #1
	str	r3, [sp, #4]
	bne	.L764
.L795:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, r7
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL742:
	ldr	r3, [sp, #20]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	ldr	ip, [r3]
	add	r2, r1, r2, asl #7
	ldrh	r2, [ip, r2]
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	b	.L764
.LVL743:
.L834:
.LBE146:
.LBE145:
	.loc 3 289 0
	mov	lr, #126
	ldr	ip, .L837+32
	ldr	r3, [sp, #4]
	ldr	r7, [ip]
.LVL744:
	add	r3, r3, #8
.LVL745:
.L779:
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL746:
	.loc 3 289 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	smlabb	ip, r1, ip, lr
	ldrh	ip, [r7, ip]
	.loc 3 292 0
	add	r4, r4, r6
.LVL747:
	.loc 3 289 0
	strh	ip, [r3, #-8]	@ movhi
.LVL748:
	add	r3, r3, #8
.LVL749:
	.loc 3 288 0
	bne	.L779
.LBE156:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL750:
.L782:
	.cfi_restore_state
.LBB157:
.LBB149:
.LBB147:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL751:
	.loc 3 325 0
	blt	.L788
	.loc 3 328 0
	cmp	r4, r1
	blt	.L787
.L790:
	rsb	r4, r1, r4
.LVL752:
	cmp	r1, r4
	ble	.L790
.L787:
	.loc 3 345 0
	ldr	ip, .L837+32
	ldr	r3, [sp, #4]
	ldr	r8, [ip]
	add	r3, r3, #8
	mov	r7, #128
.LVL753:
	mov	r5, #126
	b	.L789
.LVL754:
.L792:
	ldrb	ip, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL755:
	.loc 3 345 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	smlabb	ip, r7, ip, r5
	ldrh	ip, [r8, ip]
	.loc 3 348 0
	rsbge	r4, r1, r4
	.loc 3 345 0
	strh	ip, [r3, #-8]	@ movhi
.LVL756:
	add	r3, r3, #8
.LVL757:
.L789:
	.loc 3 339 0
	subs	lr, lr, #1
.LVL758:
	bcs	.L792
.LBE147:
.LBE149:
.LBE157:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL759:
.L788:
	.cfi_restore_state
.LBB158:
.LBB150:
.LBB148:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL760:
	bpl	.L787
.LVL761:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL762:
	bmi	.L788
	b	.L787
.LVL763:
.L836:
.LBE148:
.LBE150:
.LBE158:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L773
	b	.L775
.L835:
.LBB159:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL764:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL765:
.LBE159:
	b	.L770
.L838:
	.align	2
.L837:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole15
	.word	R_FlushHT15
	.word	R_FlushQuad15
	.word	.LANCHOR0+1220
	.word	V_Palette15
	.word	viewheight
	.cfi_endproc
.LFE56:
	.size	R_DrawColumn15_PointUV_PointZ, .-R_DrawColumn15_PointUV_PointZ
	.align	2
	.type	R_DrawColumn15_PointUV_LinearZ, %function
R_DrawColumn15_PointUV_LinearZ:
.LFB57:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL766:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r5, r7}
	.loc 3 113 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 3 157 0
	subs	r3, r7, r5
	.loc 3 117 0
	ldr	fp, [r0, #16]
.LVL767:
	.loc 3 157 0
	str	r3, [sp, #8]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL768:
	.loc 3 157 0
	bmi	.L839
	.loc 3 171 0
	ldr	r3, .L918
.LVL769:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	mov	r6, r0
	.loc 3 171 0
	mla	r4, fp, r3, r4
.LVL770:
	.loc 3 174 0
	bne	.L912
.LVL771:
.L842:
	.loc 3 215 0
	ldr	r7, .L918+4
	ldr	r2, [r7]
	cmp	r2, #4
	beq	.L848
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L913
.L849:
	.loc 3 222 0 is_stmt 1
	ldmia	r6, {r1, r3}
	.loc 3 224 0
	mov	r9, #1
	.loc 3 233 0
	ldr	r5, .L918+8
	.loc 3 224 0
	ldr	ip, .L918+12
	.loc 3 233 0
	add	r5, r5, r3, asl #3
	str	r5, [sp, #12]
.LVL772:
	mov	r5, #0
.LVL773:
	.loc 3 230 0
	ldr	r2, .L918+16
	ldr	r8, .L918+20
.LVL774:
	.loc 3 231 0
	ldr	lr, .L918+24
	.loc 3 223 0
	ldr	r0, [r6, #8]
	.loc 3 224 0
	str	r9, [ip, #-1204]
	.loc 3 231 0
	stmia	r2, {r8, lr}
	.loc 3 232 0
	ldr	ip, .L918+28
	.loc 3 221 0
	str	r1, [r7, #12]
	.loc 3 222 0
	str	r3, [r7, #4]
	str	r3, [r7, #16]
	.loc 3 223 0
	str	r0, [r7, #8]
	str	r0, [r7, #32]
	.loc 3 232 0
	str	ip, [r2, #8]
.L851:
.LBB160:
	.loc 3 259 0
	ldr	r2, [r6, #12]
	.loc 3 286 0
	ldr	r0, [r6, #24]
	.loc 3 260 0
	ldr	ip, [r6, #48]
	ldr	lr, [r6, #44]
.LBE160:
	.loc 3 245 0
	add	r5, r5, #1
.LBB167:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	r0, #128
	.loc 3 260 0
	str	ip, [sp, #44]
.LBE167:
	.loc 3 245 0
	str	r5, [r7]
.LBB168:
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	lr, [sp, #40]
	.loc 3 251 0
	ldr	ip, [r6, #32]
.LVL775:
	.loc 3 286 0
	beq	.L914
	.loc 3 294 0
	cmp	r0, #0
	bne	.L859
.LVL776:
	.loc 3 297 0
	mov	r8, #128
	ldr	r0, .L918+32
	ldr	lr, [sp, #8]
	ldr	r9, [r0]
	ldr	r0, [sp, #12]
	add	r7, lr, #1
	ldr	lr, .L918+36
	add	r7, r7, r3
	and	r1, r1, #3
.LVL777:
	add	r5, r0, #8
.LVL778:
.L860:
	and	r0, r3, #3
	add	r0, r1, r0, asl #2
	ldrb	r0, [lr, r0]	@ zero_extendqisi2
	add	r6, sp, #48
	cmp	r0, r2
	movge	r0, #0
	movlt	r0, #1
	add	r0, r6, r0, asl #2
	mov	r6, #126
	ldrb	r10, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r0, [r0, #-8]
	.loc 3 298 0
	add	r3, r3, #1
.LVL779:
	.loc 3 297 0
	ldrb	r0, [r0, r10]	@ zero_extendqisi2
	.loc 3 296 0
	cmp	r3, r7
	.loc 3 297 0
	smlabb	r0, r8, r0, r6
	ldrh	r0, [r9, r0]
	.loc 3 300 0
	add	r4, r4, fp
.LVL780:
	.loc 3 297 0
	strh	r0, [r5, #-8]	@ movhi
	add	r5, r5, #8
.LVL781:
	.loc 3 296 0
	bne	.L860
.LVL782:
.L839:
.LBE168:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL783:
.L912:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L842
	.loc 3 178 0
	cmp	r5, #0
	beq	.L843
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB169:
	.loc 3 181 0
	mvnne	r9, r8
	uxthne	r9, r9
.LBE169:
	.loc 3 179 0
	bne	.L907
	.loc 3 186 0
	tst	r3, #2
	beq	.L843
.LBB170:
	.loc 3 188 0
	uxth	r9, r8
.L907:
	mov	r0, r9
.LVL784:
	mov	r1, fp
	bl	__aeabi_idiv
.LVL785:
	.loc 3 190 0
	ldr	r3, [sp, #8]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r9
.LVL786:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL787:
	.loc 3 190 0
	str	r3, [sp, #8]
.LVL788:
.L843:
.LBE170:
	.loc 3 194 0
	ldr	r3, .L918+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r7, r3
	beq	.L845
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L915
	.loc 3 201 0
	tst	r3, #8
	beq	.L845
.LBB171:
	.loc 3 203 0
	mov	r1, fp
	uxth	r0, r8
.LVL789:
.L908:
	bl	__aeabi_idiv
.LVL790:
	.loc 3 205 0
	ldr	r3, [sp, #8]
	.loc 3 204 0
	rsb	r7, r0, r7
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r7, [r6, #8]
.LVL791:
	.loc 3 205 0
	str	r3, [sp, #8]
.LVL792:
.L845:
.LBE171:
	.loc 3 208 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bgt	.L842
	b	.L839
.L913:
	.loc 3 216 0
	ldr	r3, .L918+12
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L916
.L848:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL793:
	.loc 3 219 0
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L849
	ldr	r1, [r6]
.L850:
	.loc 3 235 0
	ldr	r0, [r6, #4]
	.loc 3 238 0
	ldr	ip, [r7, #4]
	.loc 3 236 0
	ldr	r3, [r6, #8]
	.loc 3 238 0
	cmp	r0, ip
	.loc 3 235 0
	add	ip, r7, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r0, [ip, #16]
	ldr	ip, .L918+4
	.loc 3 240 0
	ldr	lr, .L918+4
	.loc 3 239 0
	strgt	r0, [ip, #4]
	.loc 3 240 0
	ldr	ip, [r7, #8]
	.loc 3 243 0
	add	r2, r2, r0, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	ldr	ip, .L918+8
	.loc 3 241 0
	strlt	r3, [lr, #8]
	.loc 3 243 0
	add	r2, ip, r2, asl #1
	.loc 3 235 0
	mov	r3, r0
	ldr	r5, [r7]
	.loc 3 243 0
	str	r2, [sp, #12]
.LVL794:
	b	.L851
.LVL795:
.L859:
.LBB172:
.LBB161:
	.loc 3 303 0
	sub	lr, r0, #1
.LVL796:
	.loc 3 304 0
	tst	lr, r0
	bne	.L861
.LBB162:
	.loc 3 305 0
	mov	r0, lr, asl #16
	mvn	lr, r0, lsr #16
.LVL797:
	.loc 3 306 0
	ldr	r0, [sp, #8]
	.loc 3 305 0
	mvn	r9, lr, asl #16
.LVL798:
	.loc 3 306 0
	sub	r0, r0, #1
	cmn	r0, #1
	beq	.L917
	ldr	lr, .L918+32
	mov	r8, r4
	str	lr, [sp, #36]
	ldr	lr, [lr]
	str	r4, [sp, #28]
	mov	r5, lr
	mov	r6, r3
.LVL799:
	mov	r4, r5
.LVL800:
	mov	r0, r0, lsr #1
	str	r0, [sp, #20]
	mov	r0, r0, asl #1
	str	r0, [sp, #24]
	ldr	r7, [sp, #12]
	add	r0, r0, #2
	add	r0, r0, r3
	mov	r10, fp, asl #1
	ldr	lr, .L918+36
	and	r1, r1, #3
.LVL801:
	add	r7, r7, #16
	str	r10, [sp, #4]
	str	r3, [sp, #32]
	str	r0, [sp, #16]
.LVL802:
.L863:
	.loc 3 307 0
	and	r3, r6, #3
	add	r3, r1, r3, asl #2
	ldrb	r0, [lr, r3]	@ zero_extendqisi2
	add	r3, r6, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r1, r3, asl #2
	.loc 3 307 0
	cmp	r0, r2
	.loc 3 311 0
	ldrb	r3, [lr, r3]	@ zero_extendqisi2
	.loc 3 307 0
	movge	r0, #0
	movlt	r0, #1
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	add	r10, sp, #48
	and	r5, r8, r9
	add	r0, r10, r0, asl #2
	ldrb	r5, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r0, [r0, #-8]
	.loc 3 311 0
	add	r3, r10, r3, asl #2
	.loc 3 307 0
	ldrb	r0, [r0, r5]	@ zero_extendqisi2
	mov	r10, #126
	.loc 3 311 0
	ldr	r5, [r3, #-8]
	.loc 3 307 0
	mov	r3, #128
	smlabb	r0, r3, r0, r10
	ldrh	r0, [r4, r0]
	.loc 3 312 0
	add	r6, r6, #2
.LVL803:
	.loc 3 307 0
	strh	r0, [r7, #-16]	@ movhi
.LVL804:
	.loc 3 306 0
	ldr	r0, [sp, #16]
	add	r3, fp, r8
.LVL805:
	cmp	r6, r0
	.loc 3 311 0
	mov	r0, #128
	and	r3, r3, r9
.LVL806:
	ldrb	r3, [ip, r3, asr #16]	@ zero_extendqisi2
	add	r7, r7, #16
.LVL807:
	ldrb	r3, [r5, r3]	@ zero_extendqisi2
	smlabb	r3, r0, r3, r10
	ldr	r0, [sp, #4]
	ldrh	r3, [r4, r3]
	add	r8, r0, r8
.LVL808:
	strh	r3, [r7, #-24]	@ movhi
	.loc 3 306 0
	bne	.L863
	.loc 3 316 0
	ldr	r6, [sp, #8]
.LVL809:
	ldr	r3, [sp, #32]
	tst	r6, #1
	ldr	r6, [sp, #24]
	ldr	r4, [sp, #28]
	add	r3, r3, #2
	ldr	r5, [sp, #20]
	add	r3, r3, r6
	ldr	r6, [sp, #4]
	add	r4, r4, fp, asl #1
	add	r0, r5, #1
	mla	r4, r6, r5, r4
	ldr	r5, [sp, #12]
	add	r0, r5, r0, asl #4
	str	r0, [sp, #12]
	bne	.L839
.LVL810:
.L872:
	.loc 3 317 0
	and	r3, r3, #3
	add	r1, r1, r3, asl #2
	ldrb	r3, [lr, r1]	@ zero_extendqisi2
	mov	r1, #126
	cmp	r3, r2
	movge	r2, #0
.LVL811:
	movlt	r2, #1
	add	r3, sp, #48
	add	r2, r3, r2, asl #2
	and	r4, r4, r9
	ldr	r0, [r2, #-8]
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r2, [r2]
	add	r3, r1, r3, asl #7
	ldrh	r3, [r2, r3]
	ldr	r2, [sp, #12]
	strh	r3, [r2]	@ movhi
	b	.L839
.LVL812:
.L914:
.LBE162:
.LBE161:
	.loc 3 289 0
	mov	r8, #126
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	lr, .L918+32
	add	r7, r0, #1
	ldr	r0, [sp, #12]
	ldr	r9, [lr]
	ldr	lr, .L918+36
	add	r7, r7, r3
	and	r1, r1, #3
.LVL813:
	add	r5, r0, #8
.LVL814:
.L857:
	and	r6, r3, #3
	add	r6, r1, r6, asl #2
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	bic	r10, r4, #-16777216
	cmp	r6, r2
	movge	r6, #0
	movlt	r6, #1
	add	r0, sp, #48
	add	r6, r0, r6, asl #2
	bic	r10, r10, #8388608
	ldrb	r10, [ip, r10, asr #16]	@ zero_extendqisi2
	ldr	r6, [r6, #-8]
	ldrh	r0, [sp, #4]
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
	.loc 3 290 0
	add	r3, r3, #1
.LVL815:
	.loc 3 289 0
	smlabb	r6, r0, r6, r8
	ldrh	r6, [r9, r6]
	.loc 3 288 0
	cmp	r3, r7
	.loc 3 289 0
	strh	r6, [r5, #-8]	@ movhi
	.loc 3 292 0
	add	r4, r4, fp
.LVL816:
	add	r5, r5, #8
.LVL817:
	.loc 3 288 0
	bne	.L857
.LBE172:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL818:
.L861:
	.cfi_restore_state
.LBB173:
.LBB165:
.LBB163:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL819:
	.loc 3 325 0
	bge	.L910
	b	.L867
.L869:
	rsb	r4, r0, r4
.LVL820:
.L910:
	.loc 3 328 0
	cmp	r4, r0
	bge	.L869
.L866:
	ldr	r5, [sp, #8]
	.loc 3 345 0
	ldr	lr, .L918+32
	add	r7, r5, #1
	ldr	lr, [lr]
	ldr	r5, [sp, #12]
	add	r7, r7, r3
	add	r5, r5, #8
	and	r1, r1, #3
.LVL821:
	str	lr, [sp, #4]
	ldr	r10, .L918+36
	mov	r9, #128
	b	.L868
.LVL822:
.L871:
	ldrb	lr, [r10, lr]	@ zero_extendqisi2
	add	r8, sp, #48
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	lr, r8, lr, asl #2
	ldrb	r6, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 348 0
	add	r4, r4, fp
.LVL823:
	.loc 3 345 0
	ldrb	lr, [lr, r6]	@ zero_extendqisi2
	mov	r6, #126
	smlabb	lr, r9, lr, r6
	ldr	r6, [sp, #4]
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	ldrh	lr, [r6, lr]
	.loc 3 346 0
	add	r3, r3, #1
.LVL824:
	.loc 3 345 0
	strh	lr, [r5, #-8]	@ movhi
	.loc 3 348 0
	rsbge	r4, r0, r4
.LVL825:
	add	r5, r5, #8
.LVL826:
.L868:
	.loc 3 345 0
	and	lr, r3, #3
	.loc 3 339 0
	cmp	r3, r7
	.loc 3 345 0
	add	lr, r1, lr, asl #2
	.loc 3 339 0
	bne	.L871
.LBE163:
.LBE165:
.LBE173:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL827:
.L867:
	.cfi_restore_state
.LBB174:
.LBB166:
.LBB164:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL828:
	bpl	.L866
.LVL829:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL830:
	bmi	.L867
	b	.L866
.LVL831:
.L916:
.LBE164:
.LBE166:
.LBE174:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r1, [r6]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L848
	b	.L850
.L915:
.LBB175:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, fp
	uxth	r0, r0
	b	.L908
.LVL832:
.L917:
	ldr	r0, .L918+32
	and	r1, r1, #3
.LVL833:
	str	r0, [sp, #36]
	ldr	lr, .L918+36
	b	.L872
.L919:
	.align	2
.L918:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR0+1220
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole15
	.word	R_FlushHT15
	.word	R_FlushQuad15
	.word	V_Palette15
	.word	filter_ditherMatrix
	.word	viewheight
.LBE175:
	.cfi_endproc
.LFE57:
	.size	R_DrawColumn15_PointUV_LinearZ, .-R_DrawColumn15_PointUV_LinearZ
	.align	2
	.type	R_DrawColumn16_PointUV, %function
R_DrawColumn16_PointUV:
.LFB64:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL834:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL835:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL836:
	.loc 3 157 0
	bmi	.L920
	.loc 3 171 0
	ldr	r3, .L993
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL837:
	.loc 3 174 0
	bne	.L988
.LVL838:
.L923:
	.loc 3 215 0
	ldr	r8, .L993+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L929
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L989
.L930:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	r0, .L993+8
	.loc 3 230 0
	ldr	r2, .L993+12
	ldr	lr, .L993+16
	.loc 3 231 0
	ldr	ip, .L993+20
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L993+24
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL839:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 233 0
	ldr	r9, .L993+28
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
.LVL840:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L932:
.LBB176:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE176:
	.loc 3 245 0
	add	r2, r2, #1
.LBB183:
	.loc 3 286 0
	cmp	r1, #128
.LBE183:
	.loc 3 245 0
	str	r2, [r8]
.LBB184:
	.loc 3 278 0
	add	ip, r5, #1
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL841:
	.loc 3 286 0
	beq	.L990
	.loc 3 294 0
	cmp	r1, #0
	bne	.L936
.LVL842:
	.loc 3 297 0
	mov	lr, #128
	mov	ip, #126
	ldr	r1, .L993+32
	add	r3, r3, #8
.LVL843:
	ldr	r0, [r1]
.LVL844:
.L937:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL845:
	.loc 3 297 0
	smlabb	r1, lr, r1, ip
	ldrh	r1, [r0, r1]
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL846:
	.loc 3 300 0
	add	r4, r4, r6
.LVL847:
	add	r3, r3, #8
.LVL848:
	.loc 3 296 0
	bne	.L937
.LVL849:
.L920:
.LBE184:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL850:
.L988:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L923
	.loc 3 178 0
	cmp	r8, #0
	beq	.L924
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB185:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE185:
	.loc 3 179 0
	bne	.L985
	.loc 3 186 0
	tst	r3, #2
	beq	.L924
.LBB186:
	.loc 3 188 0
	uxth	fp, r10
.L985:
	mov	r0, fp
.LVL851:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL852:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL853:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL854:
.L924:
.LBE186:
	.loc 3 194 0
	ldr	r3, .L993+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L926
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L991
	.loc 3 201 0
	tst	r3, #8
	beq	.L926
.LBB187:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL855:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL856:
.L926:
.LBE187:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L923
	b	.L920
.L989:
	.loc 3 216 0
	ldr	r3, .L993+8
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L992
.L929:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL857:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L930
.L931:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L993+4
	.loc 3 240 0
	ldr	ip, .L993+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L993+28
	add	r3, r1, r2, asl #1
.LVL858:
	ldr	r2, [r8]
	b	.L932
.LVL859:
.L936:
.LBB188:
.LBB177:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL860:
	.loc 3 304 0
	tst	r0, r1
	bne	.L938
.LBB178:
	.loc 3 305 0
	mov	lr, r0, asl #16
	mvn	lr, lr, lsr #16
	.loc 3 306 0
	sub	r1, r5, #1
	cmn	r1, #1
	str	r1, [sp]
	mov	r7, r1
.LVL861:
	ldreq	r1, .L993+32
	.loc 3 305 0
	mvn	lr, lr, asl #16
.LVL862:
	streq	r1, [sp, #12]
	.loc 3 306 0
	beq	.L951
	ldr	r1, .L993+32
	mov	r0, r4
.LVL863:
	mov	ip, r1
	ldr	r8, [ip]
	mov	ip, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, ip
	str	r1, [sp, #12]
	str	ip, [sp, #4]
	add	r1, r3, #16
	str	r5, [sp, #8]
.LVL864:
.L940:
	and	ip, r0, lr
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r7, r7, #2
.LVL865:
	.loc 3 307 0
	smlabb	ip, r10, ip, r9
	ldrh	r5, [r8, ip]
	add	ip, r6, r0
	strh	r5, [r1, #-16]	@ movhi
.LVL866:
	.loc 3 311 0
	and	ip, ip, lr
.LVL867:
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	add	r0, fp, r0
.LVL868:
	smlabb	ip, r10, ip, r9
	ldrh	ip, [r8, ip]
	add	r1, r1, #16
.LVL869:
	strh	ip, [r1, #-24]	@ movhi
.LVL870:
	.loc 3 306 0
	bpl	.L940
	ldr	r1, [sp]
	ldr	r5, [sp, #8]
	mov	r1, r1, lsr #1
	ldr	ip, [sp, #4]
	add	r4, r4, r6, asl #1
	add	r0, r1, #1
.LVL871:
	.loc 3 316 0
	tst	r5, #1
	mla	r4, ip, r1, r4
	add	r3, r3, r0, asl #4
	bne	.L920
.L951:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, lr
	ldr	r0, [sp, #12]
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL872:
	ldr	r0, [r0]
	add	r2, r1, r2, asl #7
	ldrh	r2, [r0, r2]
	strh	r2, [r3]	@ movhi
	b	.L920
.LVL873:
.L990:
.LBE178:
.LBE177:
	.loc 3 289 0
	mov	lr, #126
	ldr	r0, .L993+32
	add	r3, r3, #8
.LVL874:
	ldr	ip, [r0]
.LVL875:
.L935:
	bic	r0, r4, #-16777216
	bic	r0, r0, #8388608
	ldrb	r0, [r2, r0, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL876:
	.loc 3 289 0
	smlabb	r0, r1, r0, lr
	ldrh	r0, [ip, r0]
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	strh	r0, [r3, #-8]	@ movhi
.LVL877:
	.loc 3 292 0
	add	r4, r4, r6
.LVL878:
	add	r3, r3, #8
.LVL879:
	.loc 3 288 0
	bne	.L935
.LBE188:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL880:
.L938:
	.cfi_restore_state
.LBB189:
.LBB181:
.LBB179:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL881:
	.loc 3 325 0
	blt	.L944
	.loc 3 328 0
	cmp	r4, r1
	blt	.L943
.L946:
	rsb	r4, r1, r4
.LVL882:
	cmp	r1, r4
	ble	.L946
.L943:
	.loc 3 345 0
	ldr	r0, .L993+32
	add	r3, r3, #8
.LVL883:
	ldr	r7, [r0]
.LVL884:
	mov	r5, #128
	mov	lr, #126
	b	.L945
.LVL885:
.L948:
	ldrb	r0, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL886:
	.loc 3 345 0
	smlabb	r0, r5, r0, lr
	ldrh	r0, [r7, r0]
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	strh	r0, [r3, #-8]	@ movhi
.LVL887:
	.loc 3 348 0
	rsbge	r4, r1, r4
.LVL888:
	add	r3, r3, #8
.LVL889:
.L945:
	.loc 3 339 0
	subs	ip, ip, #1
.LVL890:
	bcs	.L948
.LBE179:
.LBE181:
.LBE189:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL891:
.L944:
	.cfi_restore_state
.LBB190:
.LBB182:
.LBB180:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL892:
	bpl	.L943
.LVL893:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL894:
	bmi	.L944
	b	.L943
.LVL895:
.L992:
.LBE180:
.LBE182:
.LBE190:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L929
	b	.L931
.L991:
.LBB191:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL896:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL897:
.LBE191:
	b	.L926
.L994:
	.align	2
.L993:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole16
	.word	R_FlushHT16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	V_Palette16
	.word	viewheight
	.cfi_endproc
.LFE64:
	.size	R_DrawColumn16_PointUV, .-R_DrawColumn16_PointUV
	.align	2
	.type	R_DrawColumn16_PointUV_PointZ, %function
R_DrawColumn16_PointUV_PointZ:
.LFB65:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL898:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL899:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL900:
	.loc 3 157 0
	bmi	.L995
	.loc 3 171 0
	ldr	r3, .L1068
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL901:
	.loc 3 174 0
	bne	.L1063
.LVL902:
.L998:
	.loc 3 215 0
	ldr	r8, .L1068+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L1004
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L1064
.L1005:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	r0, .L1068+8
	.loc 3 230 0
	ldr	r2, .L1068+12
	ldr	lr, .L1068+16
	.loc 3 231 0
	ldr	ip, .L1068+20
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L1068+24
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L1068+28
	.loc 3 221 0
	ldr	r10, [r7]
.LVL903:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	str	r3, [sp, #4]
.LVL904:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L1007:
.LVL905:
.LBB192:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE192:
	.loc 3 245 0
	add	r2, r2, #1
.LBB199:
	.loc 3 286 0
	cmp	r1, #128
.LBE199:
	.loc 3 245 0
	str	r2, [r8]
.LBB200:
	.loc 3 252 0
	ldr	r0, [r7, #44]
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL906:
	.loc 3 278 0
	add	lr, r5, #1
.LVL907:
	.loc 3 286 0
	beq	.L1065
	.loc 3 294 0
	cmp	r1, #0
	bne	.L1011
.LVL908:
	.loc 3 297 0
	mov	r7, #128
.LVL909:
	mov	lr, #126
	ldr	r1, .L1068+32
	ldr	r3, [sp, #4]
	ldr	ip, [r1]
	add	r3, r3, #8
.LVL910:
.L1012:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL911:
	.loc 3 297 0
	ldrb	r1, [r0, r1]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	smlabb	r1, r7, r1, lr
	ldrh	r1, [ip, r1]
	.loc 3 300 0
	add	r4, r4, r6
.LVL912:
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL913:
	add	r3, r3, #8
.LVL914:
	.loc 3 296 0
	bne	.L1012
.LVL915:
.L995:
.LBE200:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL916:
.L1063:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L998
	.loc 3 178 0
	cmp	r8, #0
	beq	.L999
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB201:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE201:
	.loc 3 179 0
	bne	.L1060
	.loc 3 186 0
	tst	r3, #2
	beq	.L999
.LBB202:
	.loc 3 188 0
	uxth	fp, r10
.L1060:
	mov	r0, fp
.LVL917:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL918:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL919:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL920:
.L999:
.LBE202:
	.loc 3 194 0
	ldr	r3, .L1068+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L1001
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L1066
	.loc 3 201 0
	tst	r3, #8
	beq	.L1001
.LBB203:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL921:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL922:
.L1001:
.LBE203:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L998
	b	.L995
.L1064:
	.loc 3 216 0
	ldr	r3, .L1068+8
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L1067
.L1004:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL923:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L1005
.L1006:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L1068+4
	.loc 3 240 0
	ldr	ip, .L1068+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L1068+28
	add	r3, r1, r2, asl #1
	str	r3, [sp, #4]
.LVL924:
	ldr	r2, [r8]
	b	.L1007
.LVL925:
.L1011:
.LBB204:
.LBB193:
	.loc 3 303 0
	sub	ip, r1, #1
.LVL926:
	.loc 3 304 0
	tst	ip, r1
	bne	.L1013
.LBB194:
	.loc 3 305 0
	mov	r7, ip, asl #16
.LVL927:
	mvn	r7, r7, lsr #16
	.loc 3 306 0
	sub	r3, r5, #1
	cmn	r3, #1
	str	r3, [sp, #8]
	ldreq	r3, .L1068+32
	.loc 3 305 0
	mvn	r7, r7, asl #16
.LVL928:
	streq	r3, [sp, #20]
	.loc 3 306 0
	beq	.L1026
	ldr	r1, .L1068+32
	mov	ip, r4
.LVL929:
	mov	lr, r1
	ldr	r8, [lr]
	mov	lr, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, lr
	str	r1, [sp, #20]
	ldr	r1, [sp, #4]
	str	lr, [sp, #12]
	add	r1, r1, #16
	str	r5, [sp, #16]
.LVL930:
.L1015:
	and	lr, ip, r7
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r3, r3, #2
.LVL931:
	.loc 3 307 0
	ldrb	r5, [r0, lr]	@ zero_extendqisi2
	add	lr, r6, ip
	smlabb	r5, r10, r5, r9
	ldrh	r5, [r8, r5]
	.loc 3 311 0
	and	lr, lr, r7
	.loc 3 307 0
	strh	r5, [r1, #-16]	@ movhi
.LVL932:
	.loc 3 311 0
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	add	ip, fp, ip
.LVL933:
	ldrb	lr, [r0, lr]	@ zero_extendqisi2
	add	r1, r1, #16
.LVL934:
	smlabb	lr, r10, lr, r9
	ldrh	lr, [r8, lr]
	strh	lr, [r1, #-24]	@ movhi
.LVL935:
	.loc 3 306 0
	bpl	.L1015
	ldr	r3, [sp, #8]
	add	r4, r4, r6, asl #1
	mov	r1, r3, lsr #1
	ldr	r3, [sp, #12]
	ldr	r5, [sp, #16]
	mla	r4, r3, r1, r4
	ldr	r3, [sp, #4]
	add	ip, r1, #1
.LVL936:
	add	r3, r3, ip, asl #4
	.loc 3 316 0
	tst	r5, #1
	str	r3, [sp, #4]
	bne	.L995
.L1026:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, r7
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL937:
	ldr	r3, [sp, #20]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	ldr	ip, [r3]
	add	r2, r1, r2, asl #7
	ldrh	r2, [ip, r2]
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	b	.L995
.LVL938:
.L1065:
.LBE194:
.LBE193:
	.loc 3 289 0
	mov	lr, #126
	ldr	ip, .L1068+32
	ldr	r3, [sp, #4]
	ldr	r7, [ip]
.LVL939:
	add	r3, r3, #8
.LVL940:
.L1010:
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL941:
	.loc 3 289 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	smlabb	ip, r1, ip, lr
	ldrh	ip, [r7, ip]
	.loc 3 292 0
	add	r4, r4, r6
.LVL942:
	.loc 3 289 0
	strh	ip, [r3, #-8]	@ movhi
.LVL943:
	add	r3, r3, #8
.LVL944:
	.loc 3 288 0
	bne	.L1010
.LBE204:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL945:
.L1013:
	.cfi_restore_state
.LBB205:
.LBB197:
.LBB195:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL946:
	.loc 3 325 0
	blt	.L1019
	.loc 3 328 0
	cmp	r4, r1
	blt	.L1018
.L1021:
	rsb	r4, r1, r4
.LVL947:
	cmp	r1, r4
	ble	.L1021
.L1018:
	.loc 3 345 0
	ldr	ip, .L1068+32
	ldr	r3, [sp, #4]
	ldr	r8, [ip]
	add	r3, r3, #8
	mov	r7, #128
.LVL948:
	mov	r5, #126
	b	.L1020
.LVL949:
.L1023:
	ldrb	ip, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL950:
	.loc 3 345 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	smlabb	ip, r7, ip, r5
	ldrh	ip, [r8, ip]
	.loc 3 348 0
	rsbge	r4, r1, r4
	.loc 3 345 0
	strh	ip, [r3, #-8]	@ movhi
.LVL951:
	add	r3, r3, #8
.LVL952:
.L1020:
	.loc 3 339 0
	subs	lr, lr, #1
.LVL953:
	bcs	.L1023
.LBE195:
.LBE197:
.LBE205:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL954:
.L1019:
	.cfi_restore_state
.LBB206:
.LBB198:
.LBB196:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL955:
	bpl	.L1018
.LVL956:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL957:
	bmi	.L1019
	b	.L1018
.LVL958:
.L1067:
.LBE196:
.LBE198:
.LBE206:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L1004
	b	.L1006
.L1066:
.LBB207:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL959:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL960:
.LBE207:
	b	.L1001
.L1069:
	.align	2
.L1068:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole16
	.word	R_FlushHT16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	V_Palette16
	.word	viewheight
	.cfi_endproc
.LFE65:
	.size	R_DrawColumn16_PointUV_PointZ, .-R_DrawColumn16_PointUV_PointZ
	.align	2
	.type	R_DrawColumn16_PointUV_LinearZ, %function
R_DrawColumn16_PointUV_LinearZ:
.LFB66:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL961:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r5, r7}
	.loc 3 113 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 3 157 0
	subs	r3, r7, r5
	.loc 3 117 0
	ldr	fp, [r0, #16]
.LVL962:
	.loc 3 157 0
	str	r3, [sp, #8]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL963:
	.loc 3 157 0
	bmi	.L1070
	.loc 3 171 0
	ldr	r3, .L1149
.LVL964:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	mov	r6, r0
	.loc 3 171 0
	mla	r4, fp, r3, r4
.LVL965:
	.loc 3 174 0
	bne	.L1143
.LVL966:
.L1073:
	.loc 3 215 0
	ldr	r7, .L1149+4
	ldr	r2, [r7]
	cmp	r2, #4
	beq	.L1079
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L1144
.L1080:
	.loc 3 222 0 is_stmt 1
	ldmia	r6, {r1, r3}
	.loc 3 224 0
	mov	r9, #1
	.loc 3 233 0
	ldr	r5, .L1149+8
	.loc 3 224 0
	ldr	ip, .L1149+12
	.loc 3 233 0
	add	r5, r5, r3, asl #3
	str	r5, [sp, #12]
.LVL967:
	mov	r5, #0
.LVL968:
	.loc 3 230 0
	ldr	r2, .L1149+16
	ldr	r8, .L1149+20
.LVL969:
	.loc 3 231 0
	ldr	lr, .L1149+24
	.loc 3 223 0
	ldr	r0, [r6, #8]
	.loc 3 224 0
	str	r9, [ip, #-1204]
	.loc 3 231 0
	stmia	r2, {r8, lr}
	.loc 3 232 0
	ldr	ip, .L1149+28
	.loc 3 221 0
	str	r1, [r7, #12]
	.loc 3 222 0
	str	r3, [r7, #4]
	str	r3, [r7, #16]
	.loc 3 223 0
	str	r0, [r7, #8]
	str	r0, [r7, #32]
	.loc 3 232 0
	str	ip, [r2, #8]
.L1082:
.LBB208:
	.loc 3 259 0
	ldr	r2, [r6, #12]
	.loc 3 286 0
	ldr	r0, [r6, #24]
	.loc 3 260 0
	ldr	ip, [r6, #48]
	ldr	lr, [r6, #44]
.LBE208:
	.loc 3 245 0
	add	r5, r5, #1
.LBB215:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	r0, #128
	.loc 3 260 0
	str	ip, [sp, #44]
.LBE215:
	.loc 3 245 0
	str	r5, [r7]
.LBB216:
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	lr, [sp, #40]
	.loc 3 251 0
	ldr	ip, [r6, #32]
.LVL970:
	.loc 3 286 0
	beq	.L1145
	.loc 3 294 0
	cmp	r0, #0
	bne	.L1090
.LVL971:
	.loc 3 297 0
	mov	r8, #128
	ldr	r0, .L1149+32
	ldr	lr, [sp, #8]
	ldr	r9, [r0]
	ldr	r0, [sp, #12]
	add	r7, lr, #1
	ldr	lr, .L1149+36
	add	r7, r7, r3
	and	r1, r1, #3
.LVL972:
	add	r5, r0, #8
.LVL973:
.L1091:
	and	r0, r3, #3
	add	r0, r1, r0, asl #2
	ldrb	r0, [lr, r0]	@ zero_extendqisi2
	add	r6, sp, #48
	cmp	r0, r2
	movge	r0, #0
	movlt	r0, #1
	add	r0, r6, r0, asl #2
	mov	r6, #126
	ldrb	r10, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r0, [r0, #-8]
	.loc 3 298 0
	add	r3, r3, #1
.LVL974:
	.loc 3 297 0
	ldrb	r0, [r0, r10]	@ zero_extendqisi2
	.loc 3 296 0
	cmp	r3, r7
	.loc 3 297 0
	smlabb	r0, r8, r0, r6
	ldrh	r0, [r9, r0]
	.loc 3 300 0
	add	r4, r4, fp
.LVL975:
	.loc 3 297 0
	strh	r0, [r5, #-8]	@ movhi
	add	r5, r5, #8
.LVL976:
	.loc 3 296 0
	bne	.L1091
.LVL977:
.L1070:
.LBE216:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL978:
.L1143:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1073
	.loc 3 178 0
	cmp	r5, #0
	beq	.L1074
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB217:
	.loc 3 181 0
	mvnne	r9, r8
	uxthne	r9, r9
.LBE217:
	.loc 3 179 0
	bne	.L1138
	.loc 3 186 0
	tst	r3, #2
	beq	.L1074
.LBB218:
	.loc 3 188 0
	uxth	r9, r8
.L1138:
	mov	r0, r9
.LVL979:
	mov	r1, fp
	bl	__aeabi_idiv
.LVL980:
	.loc 3 190 0
	ldr	r3, [sp, #8]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r9
.LVL981:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL982:
	.loc 3 190 0
	str	r3, [sp, #8]
.LVL983:
.L1074:
.LBE218:
	.loc 3 194 0
	ldr	r3, .L1149+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r7, r3
	beq	.L1076
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L1146
	.loc 3 201 0
	tst	r3, #8
	beq	.L1076
.LBB219:
	.loc 3 203 0
	mov	r1, fp
	uxth	r0, r8
.LVL984:
.L1139:
	bl	__aeabi_idiv
.LVL985:
	.loc 3 205 0
	ldr	r3, [sp, #8]
	.loc 3 204 0
	rsb	r7, r0, r7
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r7, [r6, #8]
.LVL986:
	.loc 3 205 0
	str	r3, [sp, #8]
.LVL987:
.L1076:
.LBE219:
	.loc 3 208 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bgt	.L1073
	b	.L1070
.L1144:
	.loc 3 216 0
	ldr	r3, .L1149+12
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L1147
.L1079:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL988:
	.loc 3 219 0
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L1080
	ldr	r1, [r6]
.L1081:
	.loc 3 235 0
	ldr	r0, [r6, #4]
	.loc 3 238 0
	ldr	ip, [r7, #4]
	.loc 3 236 0
	ldr	r3, [r6, #8]
	.loc 3 238 0
	cmp	r0, ip
	.loc 3 235 0
	add	ip, r7, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r0, [ip, #16]
	ldr	ip, .L1149+4
	.loc 3 240 0
	ldr	lr, .L1149+4
	.loc 3 239 0
	strgt	r0, [ip, #4]
	.loc 3 240 0
	ldr	ip, [r7, #8]
	.loc 3 243 0
	add	r2, r2, r0, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	ldr	ip, .L1149+8
	.loc 3 241 0
	strlt	r3, [lr, #8]
	.loc 3 243 0
	add	r2, ip, r2, asl #1
	.loc 3 235 0
	mov	r3, r0
	ldr	r5, [r7]
	.loc 3 243 0
	str	r2, [sp, #12]
.LVL989:
	b	.L1082
.LVL990:
.L1090:
.LBB220:
.LBB209:
	.loc 3 303 0
	sub	lr, r0, #1
.LVL991:
	.loc 3 304 0
	tst	lr, r0
	bne	.L1092
.LBB210:
	.loc 3 305 0
	mov	r0, lr, asl #16
	mvn	lr, r0, lsr #16
.LVL992:
	.loc 3 306 0
	ldr	r0, [sp, #8]
	.loc 3 305 0
	mvn	r9, lr, asl #16
.LVL993:
	.loc 3 306 0
	sub	r0, r0, #1
	cmn	r0, #1
	beq	.L1148
	ldr	lr, .L1149+32
	mov	r8, r4
	str	lr, [sp, #36]
	ldr	lr, [lr]
	str	r4, [sp, #28]
	mov	r5, lr
	mov	r6, r3
.LVL994:
	mov	r4, r5
.LVL995:
	mov	r0, r0, lsr #1
	str	r0, [sp, #20]
	mov	r0, r0, asl #1
	str	r0, [sp, #24]
	ldr	r7, [sp, #12]
	add	r0, r0, #2
	add	r0, r0, r3
	mov	r10, fp, asl #1
	ldr	lr, .L1149+36
	and	r1, r1, #3
.LVL996:
	add	r7, r7, #16
	str	r10, [sp, #4]
	str	r3, [sp, #32]
	str	r0, [sp, #16]
.LVL997:
.L1094:
	.loc 3 307 0
	and	r3, r6, #3
	add	r3, r1, r3, asl #2
	ldrb	r0, [lr, r3]	@ zero_extendqisi2
	add	r3, r6, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r1, r3, asl #2
	.loc 3 307 0
	cmp	r0, r2
	.loc 3 311 0
	ldrb	r3, [lr, r3]	@ zero_extendqisi2
	.loc 3 307 0
	movge	r0, #0
	movlt	r0, #1
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	add	r10, sp, #48
	and	r5, r8, r9
	add	r0, r10, r0, asl #2
	ldrb	r5, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r0, [r0, #-8]
	.loc 3 311 0
	add	r3, r10, r3, asl #2
	.loc 3 307 0
	ldrb	r0, [r0, r5]	@ zero_extendqisi2
	mov	r10, #126
	.loc 3 311 0
	ldr	r5, [r3, #-8]
	.loc 3 307 0
	mov	r3, #128
	smlabb	r0, r3, r0, r10
	ldrh	r0, [r4, r0]
	.loc 3 312 0
	add	r6, r6, #2
.LVL998:
	.loc 3 307 0
	strh	r0, [r7, #-16]	@ movhi
.LVL999:
	.loc 3 306 0
	ldr	r0, [sp, #16]
	add	r3, fp, r8
.LVL1000:
	cmp	r6, r0
	.loc 3 311 0
	mov	r0, #128
	and	r3, r3, r9
.LVL1001:
	ldrb	r3, [ip, r3, asr #16]	@ zero_extendqisi2
	add	r7, r7, #16
.LVL1002:
	ldrb	r3, [r5, r3]	@ zero_extendqisi2
	smlabb	r3, r0, r3, r10
	ldr	r0, [sp, #4]
	ldrh	r3, [r4, r3]
	add	r8, r0, r8
.LVL1003:
	strh	r3, [r7, #-24]	@ movhi
	.loc 3 306 0
	bne	.L1094
	.loc 3 316 0
	ldr	r6, [sp, #8]
.LVL1004:
	ldr	r3, [sp, #32]
	tst	r6, #1
	ldr	r6, [sp, #24]
	ldr	r4, [sp, #28]
	add	r3, r3, #2
	ldr	r5, [sp, #20]
	add	r3, r3, r6
	ldr	r6, [sp, #4]
	add	r4, r4, fp, asl #1
	add	r0, r5, #1
	mla	r4, r6, r5, r4
	ldr	r5, [sp, #12]
	add	r0, r5, r0, asl #4
	str	r0, [sp, #12]
	bne	.L1070
.LVL1005:
.L1103:
	.loc 3 317 0
	and	r3, r3, #3
	add	r1, r1, r3, asl #2
	ldrb	r3, [lr, r1]	@ zero_extendqisi2
	mov	r1, #126
	cmp	r3, r2
	movge	r2, #0
.LVL1006:
	movlt	r2, #1
	add	r3, sp, #48
	add	r2, r3, r2, asl #2
	and	r4, r4, r9
	ldr	r0, [r2, #-8]
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r2, [r2]
	add	r3, r1, r3, asl #7
	ldrh	r3, [r2, r3]
	ldr	r2, [sp, #12]
	strh	r3, [r2]	@ movhi
	b	.L1070
.LVL1007:
.L1145:
.LBE210:
.LBE209:
	.loc 3 289 0
	mov	r8, #126
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	lr, .L1149+32
	add	r7, r0, #1
	ldr	r0, [sp, #12]
	ldr	r9, [lr]
	ldr	lr, .L1149+36
	add	r7, r7, r3
	and	r1, r1, #3
.LVL1008:
	add	r5, r0, #8
.LVL1009:
.L1088:
	and	r6, r3, #3
	add	r6, r1, r6, asl #2
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	bic	r10, r4, #-16777216
	cmp	r6, r2
	movge	r6, #0
	movlt	r6, #1
	add	r0, sp, #48
	add	r6, r0, r6, asl #2
	bic	r10, r10, #8388608
	ldrb	r10, [ip, r10, asr #16]	@ zero_extendqisi2
	ldr	r6, [r6, #-8]
	ldrh	r0, [sp, #4]
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
	.loc 3 290 0
	add	r3, r3, #1
.LVL1010:
	.loc 3 289 0
	smlabb	r6, r0, r6, r8
	ldrh	r6, [r9, r6]
	.loc 3 288 0
	cmp	r3, r7
	.loc 3 289 0
	strh	r6, [r5, #-8]	@ movhi
	.loc 3 292 0
	add	r4, r4, fp
.LVL1011:
	add	r5, r5, #8
.LVL1012:
	.loc 3 288 0
	bne	.L1088
.LBE220:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1013:
.L1092:
	.cfi_restore_state
.LBB221:
.LBB213:
.LBB211:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL1014:
	.loc 3 325 0
	bge	.L1141
	b	.L1098
.L1100:
	rsb	r4, r0, r4
.LVL1015:
.L1141:
	.loc 3 328 0
	cmp	r4, r0
	bge	.L1100
.L1097:
	ldr	r5, [sp, #8]
	.loc 3 345 0
	ldr	lr, .L1149+32
	add	r7, r5, #1
	ldr	lr, [lr]
	ldr	r5, [sp, #12]
	add	r7, r7, r3
	add	r5, r5, #8
	and	r1, r1, #3
.LVL1016:
	str	lr, [sp, #4]
	ldr	r10, .L1149+36
	mov	r9, #128
	b	.L1099
.LVL1017:
.L1102:
	ldrb	lr, [r10, lr]	@ zero_extendqisi2
	add	r8, sp, #48
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	lr, r8, lr, asl #2
	ldrb	r6, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 348 0
	add	r4, r4, fp
.LVL1018:
	.loc 3 345 0
	ldrb	lr, [lr, r6]	@ zero_extendqisi2
	mov	r6, #126
	smlabb	lr, r9, lr, r6
	ldr	r6, [sp, #4]
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	ldrh	lr, [r6, lr]
	.loc 3 346 0
	add	r3, r3, #1
.LVL1019:
	.loc 3 345 0
	strh	lr, [r5, #-8]	@ movhi
	.loc 3 348 0
	rsbge	r4, r0, r4
.LVL1020:
	add	r5, r5, #8
.LVL1021:
.L1099:
	.loc 3 345 0
	and	lr, r3, #3
	.loc 3 339 0
	cmp	r3, r7
	.loc 3 345 0
	add	lr, r1, lr, asl #2
	.loc 3 339 0
	bne	.L1102
.LBE211:
.LBE213:
.LBE221:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1022:
.L1098:
	.cfi_restore_state
.LBB222:
.LBB214:
.LBB212:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL1023:
	bpl	.L1097
.LVL1024:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL1025:
	bmi	.L1098
	b	.L1097
.LVL1026:
.L1147:
.LBE212:
.LBE214:
.LBE222:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r1, [r6]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L1079
	b	.L1081
.L1146:
.LBB223:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, fp
	uxth	r0, r0
	b	.L1139
.LVL1027:
.L1148:
	ldr	r0, .L1149+32
	and	r1, r1, #3
.LVL1028:
	str	r0, [sp, #36]
	ldr	lr, .L1149+36
	b	.L1103
.L1150:
	.align	2
.L1149:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR0+1220
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole16
	.word	R_FlushHT16
	.word	R_FlushQuad16
	.word	V_Palette16
	.word	filter_ditherMatrix
	.word	viewheight
.LBE223:
	.cfi_endproc
.LFE66:
	.size	R_DrawColumn16_PointUV_LinearZ, .-R_DrawColumn16_PointUV_LinearZ
	.align	2
	.type	R_DrawColumn32_PointUV, %function
R_DrawColumn32_PointUV:
.LFB73:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1029:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r6, r9, r8
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL1030:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1031:
	.loc 3 157 0
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 171 0
	ldr	r3, .L1226
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL1032:
	.loc 3 174 0
	bne	.L1221
.LVL1033:
.L1154:
	.loc 3 215 0
	ldr	r8, .L1226+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L1160
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L1222
.L1161:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	r0, .L1226+8
	.loc 3 230 0
	ldr	r3, .L1226+12
	ldr	lr, .L1226+16
	.loc 3 231 0
	ldr	ip, .L1226+20
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L1226+24
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
	mov	r3, #0
	.loc 3 222 0
	ldr	r2, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL1034:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 233 0
	ldr	r9, .L1226+28
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	add	r2, r9, r2, asl #4
.LVL1035:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L1163:
.LBB224:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE224:
	.loc 3 245 0
	add	r3, r3, #1
.LBB229:
	.loc 3 286 0
	cmp	r1, #128
.LBE229:
	.loc 3 245 0
	str	r3, [r8]
.LBB230:
	.loc 3 251 0
	ldr	r3, [r7, #32]
.LVL1036:
	.loc 3 286 0
	beq	.L1223
	.loc 3 294 0
	cmp	r1, #0
	bne	.L1167
.LVL1037:
	ldr	r0, .L1226+32
	add	r6, r6, #1
.LVL1038:
	ldr	ip, [r0]
.LVL1039:
.L1168:
	.loc 3 297 0
	ldrb	r0, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r5
.LVL1040:
	.loc 3 297 0
	add	r0, ip, r0, asl #8
	ldr	r0, [r0, #252]
	str	r0, [r2, r1, asl #4]
.LVL1041:
	add	r1, r1, #1
.LVL1042:
	.loc 3 296 0
	cmp	r1, r6
	bne	.L1168
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1043:
.L1221:
.LBE230:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1154
	.loc 3 178 0
	cmp	r8, #0
	beq	.L1155
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB231:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE231:
	.loc 3 179 0
	bne	.L1216
	.loc 3 186 0
	tst	r3, #2
	beq	.L1155
.LBB232:
	.loc 3 188 0
	uxth	fp, r10
.L1216:
	mov	r0, fp
.LVL1044:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1045:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1046:
	.loc 3 189 0
	str	r8, [r7, #4]
.LVL1047:
	.loc 3 190 0
	rsb	r6, r0, r6
.LVL1048:
.L1155:
.LBE232:
	.loc 3 194 0
	ldr	r3, .L1226+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L1157
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L1224
	.loc 3 201 0
	tst	r3, #8
	beq	.L1157
.LBB233:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1049:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL1050:
	.loc 3 205 0
	rsb	r6, r0, r6
.LVL1051:
.L1157:
.LBE233:
	.loc 3 208 0
	cmp	r6, #0
	bgt	.L1154
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1222:
	.loc 3 216 0
	ldr	r2, .L1226+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L1225
.L1160:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1052:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L1161
.L1162:
	.loc 3 235 0
	ldr	r2, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L1226+4
	.loc 3 240 0
	ldr	ip, .L1226+4
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L1226+28
	add	r2, r1, r3, asl #2
.LVL1053:
	ldr	r3, [r8]
	b	.L1163
.LVL1054:
.L1167:
.LBB234:
.LBB225:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL1055:
	.loc 3 304 0
	tst	r0, r1
	bne	.L1169
.LBB226:
	.loc 3 305 0
	mov	lr, r0, asl #16
	mvn	lr, lr, lsr #16
	.loc 3 306 0
	sub	r10, r6, #1
	cmn	r10, #1
	.loc 3 305 0
	mvn	lr, lr, asl #16
.LVL1056:
	.loc 3 306 0
	mov	r7, r10
.LVL1057:
	ldreq	fp, .L1226+32
	beq	.L1181
	mov	r0, r4
.LVL1058:
	ldr	fp, .L1226+32
	add	r1, r2, #32
.LVL1059:
	ldr	r8, [fp]
	mov	r9, r5, asl #1
.LVL1060:
.L1171:
	.loc 3 307 0
	and	ip, r0, lr
	ldrb	ip, [r3, ip, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r7, r7, #2
.LVL1061:
	.loc 3 307 0
	add	ip, r8, ip, asl #8
	ldr	ip, [ip, #252]
	add	r1, r1, #32
.LVL1062:
	str	ip, [r1, #-64]
	add	ip, r5, r0
.LVL1063:
	.loc 3 311 0
	and	ip, ip, lr
.LVL1064:
	ldrb	ip, [r3, ip, asr #16]	@ zero_extendqisi2
	add	r0, r9, r0
.LVL1065:
	add	ip, r8, ip, asl #8
	ldr	ip, [ip, #252]
	str	ip, [r1, #-48]
.LVL1066:
	.loc 3 306 0
	bpl	.L1171
	mov	r10, r10, lsr #1
	add	r4, r4, r5, asl #1
	add	r1, r10, #1
	.loc 3 316 0
	tst	r6, #1
	mla	r4, r9, r10, r4
	add	r2, r2, r1, asl #5
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1067:
.L1181:
	.loc 3 317 0
	and	r4, r4, lr
	ldrb	r1, [r3, r4, asr #16]	@ zero_extendqisi2
	ldr	r3, [fp]
.LVL1068:
	add	r3, r3, r1, asl #8
	ldr	r3, [r3, #252]
	str	r3, [r2]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1069:
.L1223:
.LBE226:
.LBE225:
	.loc 3 286 0
	mov	r1, #0
	ldr	r0, .L1226+32
	add	r6, r6, #1
.LVL1070:
	ldr	ip, [r0]
.LVL1071:
.L1166:
	.loc 3 289 0
	bic	r0, r4, #-16777216
	bic	r0, r0, #8388608
	ldrb	r0, [r3, r0, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL1072:
	.loc 3 289 0
	add	r0, ip, r0, asl #8
	ldr	r0, [r0, #252]
	str	r0, [r2, r1, asl #4]
.LVL1073:
	add	r1, r1, #1
.LVL1074:
	.loc 3 288 0
	cmp	r1, r6
	bne	.L1166
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1075:
.L1169:
.LBB228:
.LBB227:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL1076:
	.loc 3 325 0
	bge	.L1218
	b	.L1175
.L1177:
	rsb	r4, r1, r4
.LVL1077:
.L1218:
	.loc 3 328 0
	cmp	r4, r1
	bge	.L1177
.L1174:
	.loc 3 345 0
	ldr	r0, .L1226+32
	add	r6, r6, #1
.LVL1078:
	ldr	lr, [r0]
	mov	r0, #0
.LVL1079:
.L1176:
	ldrb	ip, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r5
.LVL1080:
	.loc 3 345 0
	add	ip, lr, ip, asl #8
	ldr	ip, [ip, #252]
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	str	ip, [r2, r0, asl #4]
.LVL1081:
	add	r0, r0, #1
.LVL1082:
	.loc 3 348 0
	rsbge	r4, r1, r4
.LVL1083:
	.loc 3 339 0
	cmp	r0, r6
	bne	.L1176
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1084:
.L1175:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL1085:
	bpl	.L1174
.LVL1086:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL1087:
	bmi	.L1175
	b	.L1174
.LVL1088:
.L1225:
.LBE227:
.LBE228:
.LBE234:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r7]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L1160
	b	.L1162
.L1224:
.LBB235:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r5
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1089:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL1090:
	.loc 3 199 0
	rsb	r6, r0, r6
.LVL1091:
.LBE235:
	b	.L1157
.L1227:
	.align	2
.L1226:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole32
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	V_Palette32
	.word	viewheight
	.cfi_endproc
.LFE73:
	.size	R_DrawColumn32_PointUV, .-R_DrawColumn32_PointUV
	.align	2
	.type	R_DrawColumn32_PointUV_PointZ, %function
R_DrawColumn32_PointUV_PointZ:
.LFB74:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1092:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r6, r9, r8
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL1093:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1094:
	.loc 3 157 0
	bmi	.L1228
	.loc 3 171 0
	ldr	r3, .L1303
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL1095:
	.loc 3 174 0
	bne	.L1298
.LVL1096:
.L1231:
	.loc 3 215 0
	ldr	r8, .L1303+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L1237
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L1299
.L1238:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	ip, .L1303+8
	.loc 3 230 0
	ldr	r3, .L1303+12
	ldr	r9, .L1303+16
	.loc 3 231 0
	ldr	lr, .L1303+20
	.loc 3 224 0
	str	fp, [ip, #-1204]
	.loc 3 232 0
	ldr	ip, .L1303+24
	.loc 3 231 0
	stmia	r3, {r9, lr}
	.loc 3 232 0
	str	ip, [r3, #8]
	mov	r3, #0
	.loc 3 222 0
	ldr	r2, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL1097:
	.loc 3 223 0
	ldr	r0, [r7, #8]
	.loc 3 233 0
	ldr	r1, .L1303+28
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r1, r1, r2, asl #4
.LVL1098:
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
.L1240:
.LBB236:
	.loc 3 286 0
	ldr	r0, [r7, #24]
.LBE236:
	.loc 3 245 0
	add	r3, r3, #1
.LBB243:
	.loc 3 286 0
	cmp	r0, #128
.LBE243:
	.loc 3 245 0
	str	r3, [r8]
.LBB244:
	.loc 3 252 0
	ldr	r2, [r7, #44]
	.loc 3 251 0
	ldr	r3, [r7, #32]
.LVL1099:
	.loc 3 286 0
	beq	.L1300
	.loc 3 294 0
	cmp	r0, #0
	bne	.L1244
.LVL1100:
	ldr	ip, .L1303+32
	add	r6, r6, #1
.LVL1101:
	ldr	lr, [ip]
.LVL1102:
.L1245:
	.loc 3 297 0
	ldrb	ip, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r5
.LVL1103:
	.loc 3 297 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	add	ip, lr, ip, asl #8
	ldr	ip, [ip, #252]
	str	ip, [r1, r0, asl #4]
.LVL1104:
	add	r0, r0, #1
.LVL1105:
	.loc 3 296 0
	cmp	r0, r6
	bne	.L1245
.LVL1106:
.L1228:
.LBE244:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1107:
.L1298:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1231
	.loc 3 178 0
	cmp	r8, #0
	beq	.L1232
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB245:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE245:
	.loc 3 179 0
	bne	.L1293
	.loc 3 186 0
	tst	r3, #2
	beq	.L1232
.LBB246:
	.loc 3 188 0
	uxth	fp, r10
.L1293:
	mov	r0, fp
.LVL1108:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1109:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1110:
	.loc 3 189 0
	str	r8, [r7, #4]
.LVL1111:
	.loc 3 190 0
	rsb	r6, r0, r6
.LVL1112:
.L1232:
.LBE246:
	.loc 3 194 0
	ldr	r3, .L1303+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L1234
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L1301
	.loc 3 201 0
	tst	r3, #8
	beq	.L1234
.LBB247:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1113:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL1114:
	.loc 3 205 0
	rsb	r6, r0, r6
.LVL1115:
.L1234:
.LBE247:
	.loc 3 208 0
	cmp	r6, #0
	bgt	.L1231
	b	.L1228
.L1299:
	.loc 3 216 0
	ldr	r2, .L1303+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L1302
.L1237:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1116:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L1238
.L1239:
	.loc 3 235 0
	ldr	r1, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r2, [r7, #8]
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r1, [r0, #16]
	.loc 3 236 0
	str	r2, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L1303+4
	.loc 3 240 0
	ldr	ip, .L1303+4
	.loc 3 239 0
	strgt	r1, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	cmp	r2, r0
	.loc 3 241 0
	strlt	r2, [ip, #8]
	.loc 3 243 0
	ldr	r2, .L1303+28
	add	r1, r2, r3, asl #2
.LVL1117:
	ldr	r3, [r8]
	b	.L1240
.LVL1118:
.L1244:
.LBB248:
.LBB237:
	.loc 3 303 0
	sub	ip, r0, #1
.LVL1119:
	.loc 3 304 0
	tst	ip, r0
	bne	.L1246
.LBB238:
	.loc 3 305 0
	mov	r8, ip, asl #16
	mvn	r8, r8, lsr #16
	.loc 3 306 0
	sub	r0, r6, #1
	cmn	r0, #1
	str	r0, [sp]
	mov	r9, r0
	ldreq	r0, .L1303+32
	.loc 3 305 0
	mvn	r8, r8, asl #16
.LVL1120:
	streq	r0, [sp, #4]
	.loc 3 306 0
	beq	.L1258
	ldr	r0, .L1303+32
	mov	ip, r4
.LVL1121:
	mov	lr, r0
	ldr	r10, [lr]
	str	r0, [sp, #4]
	mov	fp, r5, asl #1
	add	r0, r1, #32
.LVL1122:
.L1248:
	.loc 3 307 0
	and	lr, ip, r8
	ldrb	lr, [r3, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r9, r9, #2
.LVL1123:
	.loc 3 307 0
	ldrb	r7, [r2, lr]	@ zero_extendqisi2
	add	lr, r5, ip
	add	r7, r10, r7, asl #8
	ldr	r7, [r7, #252]
	.loc 3 311 0
	and	lr, lr, r8
	.loc 3 307 0
	str	r7, [r0, #-32]
.LVL1124:
	.loc 3 311 0
	ldrb	lr, [r3, lr, asr #16]	@ zero_extendqisi2
	add	ip, fp, ip
.LVL1125:
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	add	r0, r0, #32
.LVL1126:
	add	lr, r10, lr, asl #8
	ldr	lr, [lr, #252]
	str	lr, [r0, #-48]
.LVL1127:
	.loc 3 306 0
	bpl	.L1248
	ldr	r0, [sp]
	add	r4, r4, r5, asl #1
	mov	r0, r0, lsr #1
	add	ip, r0, #1
.LVL1128:
	.loc 3 316 0
	tst	r6, #1
	mla	r4, fp, r0, r4
	add	r1, r1, ip, asl #5
	bne	.L1228
.L1258:
	.loc 3 317 0
	and	r4, r4, r8
	ldrb	r0, [r3, r4, asr #16]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
.LVL1129:
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
.LVL1130:
	ldr	r3, [r3]
	add	r3, r3, r2, asl #8
	ldr	r3, [r3, #252]
	str	r3, [r1]
	b	.L1228
.LVL1131:
.L1300:
.LBE238:
.LBE237:
	.loc 3 286 0
	mov	r0, #0
	ldr	ip, .L1303+32
	add	r6, r6, #1
.LVL1132:
	ldr	lr, [ip]
.LVL1133:
.L1243:
	.loc 3 289 0
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r3, ip, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL1134:
	.loc 3 289 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	add	ip, lr, ip, asl #8
	ldr	ip, [ip, #252]
	str	ip, [r1, r0, asl #4]
.LVL1135:
	add	r0, r0, #1
.LVL1136:
	.loc 3 288 0
	cmp	r0, r6
	bne	.L1243
.LBE248:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1137:
.L1246:
	.cfi_restore_state
.LBB249:
.LBB241:
.LBB239:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL1138:
	.loc 3 325 0
	bge	.L1295
	b	.L1252
.L1254:
	rsb	r4, r0, r4
.LVL1139:
.L1295:
	.loc 3 328 0
	cmp	r4, r0
	bge	.L1254
.L1251:
	.loc 3 345 0
	ldr	ip, .L1303+32
	add	r6, r6, #1
.LVL1140:
	ldr	r7, [ip]
.LVL1141:
	mov	ip, #0
.LVL1142:
.L1253:
	ldrb	lr, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r5
.LVL1143:
	.loc 3 345 0
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	add	lr, r7, lr, asl #8
	ldr	lr, [lr, #252]
	.loc 3 348 0
	rsbge	r4, r0, r4
	.loc 3 345 0
	str	lr, [r1, ip, asl #4]
.LVL1144:
	add	ip, ip, #1
.LVL1145:
	.loc 3 339 0
	cmp	ip, r6
	bne	.L1253
.LBE239:
.LBE241:
.LBE249:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1146:
.L1252:
	.cfi_restore_state
.LBB250:
.LBB242:
.LBB240:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL1147:
	bpl	.L1251
.LVL1148:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL1149:
	bmi	.L1252
	b	.L1251
.LVL1150:
.L1302:
.LBE240:
.LBE242:
.LBE250:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r7]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L1237
	b	.L1239
.L1301:
.LBB251:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r5
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1151:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL1152:
	.loc 3 199 0
	rsb	r6, r0, r6
.LVL1153:
.LBE251:
	b	.L1234
.L1304:
	.align	2
.L1303:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole32
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	V_Palette32
	.word	viewheight
	.cfi_endproc
.LFE74:
	.size	R_DrawColumn32_PointUV_PointZ, .-R_DrawColumn32_PointUV_PointZ
	.align	2
	.type	R_DrawColumn32_PointUV_LinearZ, %function
R_DrawColumn32_PointUV_LinearZ:
.LFB75:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1154:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r6, r8}
	.loc 3 113 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 3 157 0
	subs	r3, r8, r6
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL1155:
	.loc 3 157 0
	str	r3, [sp, #4]
	.loc 3 121 0
	ldr	r9, [r0, #28]
.LVL1156:
	.loc 3 157 0
	bmi	.L1305
	.loc 3 171 0
	ldr	r3, .L1384
.LVL1157:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r6
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL1158:
	.loc 3 174 0
	bne	.L1378
.LVL1159:
.L1308:
	.loc 3 215 0
	ldr	r8, .L1384+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L1314
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L1379
.L1315:
	.loc 3 224 0 is_stmt 1
	mov	r10, #1
	.loc 3 230 0
	ldr	r2, .L1384+8
	.loc 3 231 0
	ldr	ip, .L1384+12
	.loc 3 224 0
	ldr	r0, .L1384+16
	.loc 3 231 0
	str	ip, [r2, #4]
	mov	ip, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L1384+20
.LVL1160:
	.loc 3 221 0
	ldr	r6, [r7]
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 230 0
	ldr	lr, .L1384+24
	.loc 3 224 0
	str	r10, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L1384+28
	.loc 3 233 0
	add	r9, r9, r3, asl #4
	.loc 3 221 0
	str	r6, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	r9, [sp, #8]
.LVL1161:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 232 0
	str	r0, [r2, #8]
.LVL1162:
.L1317:
.LBB252:
	.loc 3 259 0
	ldr	r2, [r7, #12]
	.loc 3 286 0
	ldr	lr, [r7, #24]
	.loc 3 260 0
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #48]
.LBE252:
	.loc 3 245 0
	add	ip, ip, #1
.LBB259:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	lr, #128
.LBE259:
	.loc 3 245 0
	str	ip, [r8]
.LBB260:
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	.loc 3 251 0
	ldr	ip, [r7, #32]
.LVL1163:
	.loc 3 286 0
	beq	.L1380
	.loc 3 294 0
	cmp	lr, #0
	bne	.L1325
.LVL1164:
	ldr	r1, .L1384+32
	ldr	r0, [sp, #4]
	ldr	lr, [sp, #8]
	add	r7, r0, #1
.LVL1165:
	ldr	r8, [r1]
	ldr	r1, .L1384+36
	and	r0, r6, #3
	add	r7, r7, r3
	sub	r6, lr, r3, asl #4
.LVL1166:
.L1326:
	.loc 3 297 0
	and	lr, r3, #3
	add	lr, r0, lr, asl #2
	ldrb	lr, [r1, lr]	@ zero_extendqisi2
	add	r10, sp, #48
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	lr, r10, lr, asl #2
	ldrb	r9, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 300 0
	add	r4, r4, r5
.LVL1167:
	.loc 3 297 0
	ldrb	lr, [lr, r9]	@ zero_extendqisi2
	add	lr, r8, lr, asl #8
	ldr	lr, [lr, #252]
	str	lr, [r6, r3, asl #4]
	.loc 3 298 0
	add	r3, r3, #1
.LVL1168:
	.loc 3 296 0
	cmp	r3, r7
	bne	.L1326
.LVL1169:
.L1305:
.LBE260:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1170:
.L1378:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1308
	.loc 3 178 0
	cmp	r6, #0
	beq	.L1309
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB261:
	.loc 3 181 0
	mvnne	r10, r9
	uxthne	r10, r10
.LBE261:
	.loc 3 179 0
	bne	.L1373
	.loc 3 186 0
	tst	r3, #2
	beq	.L1309
.LBB262:
	.loc 3 188 0
	uxth	r10, r9
.L1373:
	mov	r0, r10
.LVL1171:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1172:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r6, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r10
.LVL1173:
	.loc 3 189 0
	str	r6, [r7, #4]
.LVL1174:
	.loc 3 190 0
	str	r3, [sp, #4]
.LVL1175:
.L1309:
.LBE262:
	.loc 3 194 0
	ldr	r3, .L1384+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L1311
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L1381
	.loc 3 201 0
	tst	r3, #8
	beq	.L1311
.LBB263:
	.loc 3 203 0
	mov	r1, r5
	uxth	r0, r9
.LVL1176:
.L1374:
	bl	__aeabi_idiv
.LVL1177:
	.loc 3 205 0
	ldr	r3, [sp, #4]
	.loc 3 204 0
	rsb	r8, r0, r8
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r8, [r7, #8]
.LVL1178:
	.loc 3 205 0
	str	r3, [sp, #4]
.LVL1179:
.L1311:
.LBE263:
	.loc 3 208 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bgt	.L1308
	b	.L1305
.L1379:
	.loc 3 216 0
	ldr	r3, .L1384+16
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L1382
.L1314:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1180:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L1315
	ldr	r0, [r7]
.L1316:
	.loc 3 235 0
	ldr	r1, [r7, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r7, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, r8, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r1, [ip, #16]
	ldr	ip, .L1384+4
	mov	r6, r0
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 243 0
	ldr	r0, .L1384+20
	.loc 3 240 0
	ldr	ip, [r8, #8]
	ldr	lr, .L1384+4
	.loc 3 243 0
	add	r2, r2, r1, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	add	r2, r0, r2, asl #2
	.loc 3 241 0
	strlt	r3, [lr, #8]
	ldr	ip, [r8]
	.loc 3 235 0
	mov	r3, r1
	.loc 3 243 0
	str	r2, [sp, #8]
	b	.L1317
.LVL1181:
.L1325:
.LBB264:
.LBB253:
	.loc 3 303 0
	sub	r1, lr, #1
.LVL1182:
	.loc 3 304 0
	tst	r1, lr
	bne	.L1327
.LBB254:
	.loc 3 305 0
	mov	r10, r1, asl #16
	mvn	r10, r10, lsr #16
	.loc 3 306 0
	ldr	r1, [sp, #4]
.LVL1183:
	.loc 3 305 0
	mvn	r10, r10, asl #16
.LVL1184:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L1383
	ldr	r0, .L1384+32
	mov	r1, r1, lsr #1
	str	r1, [sp, #20]
	mov	r1, r1, asl #1
	add	lr, r1, #2
.LVL1185:
	str	r1, [sp, #24]
	ldr	r1, [r0]
	mov	r9, r4
	mov	fp, r1
	str	r4, [sp, #28]
	mov	r7, r3
.LVL1186:
	mov	r4, fp
.LVL1187:
	str	r0, [sp, #36]
	and	r0, r6, #3
	ldr	r6, [sp, #8]
.LVL1188:
	add	lr, lr, r3
	add	r8, r6, #32
	ldr	r1, .L1384+36
	mov	r6, r5, asl #1
	str	r6, [sp, #12]
	str	r3, [sp, #32]
	str	lr, [sp, #16]
.LVL1189:
.L1329:
	.loc 3 307 0
	and	r3, r7, #3
	add	r3, r0, r3, asl #2
	ldrb	lr, [r1, r3]	@ zero_extendqisi2
	add	r3, r7, #1
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r0, r3, asl #2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	.loc 3 307 0
	add	fp, sp, #48
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	and	r6, r9, r10
	add	lr, fp, lr, asl #2
	ldrb	r6, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 311 0
	add	r3, fp, r3, asl #2
	.loc 3 307 0
	ldrb	lr, [lr, r6]	@ zero_extendqisi2
	.loc 3 311 0
	ldr	r3, [r3, #-8]
	.loc 3 307 0
	add	lr, r4, lr, asl #8
	ldr	r6, [lr, #252]
	add	lr, r5, r9
	str	r6, [r8, #-32]
.LVL1190:
	.loc 3 311 0
	and	lr, lr, r10
.LVL1191:
	ldrb	lr, [ip, lr, asr #16]	@ zero_extendqisi2
	.loc 3 312 0
	add	r7, r7, #2
.LVL1192:
	.loc 3 311 0
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	lr, [sp, #16]
	.loc 3 311 0
	add	r3, r4, r3, asl #8
	.loc 3 306 0
	cmp	r7, lr
	.loc 3 311 0
	ldr	r3, [r3, #252]
	ldr	lr, [sp, #12]
	str	r3, [r8, #-16]
	add	r9, lr, r9
.LVL1193:
	add	r8, r8, #32
.LVL1194:
	.loc 3 306 0
	bne	.L1329
	.loc 3 316 0
	ldr	r6, [sp, #4]
	ldr	r3, [sp, #32]
	ldr	r4, [sp, #28]
	tst	r6, #1
	ldr	r6, [sp, #24]
	add	r3, r3, #2
	add	r4, r4, r5, asl #1
	add	r3, r3, r6
	ldr	r5, [sp, #20]
.LVL1195:
	ldr	r6, [sp, #12]
	add	lr, r5, #1
	mla	r4, r6, r5, r4
	ldr	r5, [sp, #8]
	add	lr, r5, lr, asl #5
	str	lr, [sp, #8]
	bne	.L1305
.LVL1196:
.L1338:
	.loc 3 317 0
	and	r3, r3, #3
	add	r0, r0, r3, asl #2
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	and	r4, r4, r10
	cmp	r3, r2
	movge	r2, #0
.LVL1197:
	movlt	r2, #1
	add	r3, sp, #48
	add	r2, r3, r2, asl #2
	ldr	r1, [r2, #-8]
	ldr	r3, [sp, #36]
	ldrb	r2, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r3, [r3]
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	add	r3, r3, r2, asl #8
	ldr	r3, [r3, #252]
	ldr	r2, [sp, #8]
	str	r3, [r2]
	b	.L1305
.LVL1198:
.L1380:
	ldr	r1, .L1384+32
	ldr	r0, [sp, #4]
	ldr	lr, [sp, #8]
	add	r7, r0, #1
.LVL1199:
	ldr	r8, [r1]
	ldr	r1, .L1384+36
	and	r0, r6, #3
	add	r7, r7, r3
	sub	r6, lr, r3, asl #4
.LVL1200:
.L1323:
.LBE254:
.LBE253:
	.loc 3 289 0
	and	lr, r3, #3
	add	lr, r0, lr, asl #2
	ldrb	lr, [r1, lr]	@ zero_extendqisi2
	bic	r9, r4, #-16777216
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	r10, sp, #48
	add	lr, r10, lr, asl #2
	bic	r9, r9, #8388608
	ldr	r10, [lr, #-8]
	ldrb	lr, [ip, r9, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL1201:
	.loc 3 289 0
	ldrb	lr, [r10, lr]	@ zero_extendqisi2
	add	lr, r8, lr, asl #8
	ldr	lr, [lr, #252]
	str	lr, [r6, r3, asl #4]
	.loc 3 290 0
	add	r3, r3, #1
.LVL1202:
	.loc 3 288 0
	cmp	r3, r7
	bne	.L1323
.LBE264:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1203:
.L1327:
	.cfi_restore_state
.LBB265:
.LBB257:
.LBB255:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	lr, lr, asl #16
.LVL1204:
	.loc 3 325 0
	bge	.L1376
	b	.L1333
.L1335:
	rsb	r4, lr, r4
.LVL1205:
.L1376:
	.loc 3 328 0
	cmp	r4, lr
	bge	.L1335
.L1332:
	ldr	r0, [sp, #4]
	.loc 3 345 0
	ldr	r1, .L1384+32
	add	r8, r0, #1
	ldr	r0, [sp, #8]
	add	r8, r8, r3
	sub	r9, r0, r3, asl #4
	ldr	r10, [r1]
	and	r0, r6, #3
	ldr	r6, .L1384+36
.LVL1206:
	b	.L1334
.LVL1207:
.L1337:
	ldrb	r1, [r6, r1]	@ zero_extendqisi2
	add	fp, sp, #48
	cmp	r1, r2
	movge	r1, #0
	movlt	r1, #1
	add	r1, fp, r1, asl #2
	ldrb	r7, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r1, [r1, #-8]
	.loc 3 348 0
	add	r4, r4, r5
.LVL1208:
	.loc 3 345 0
	ldrb	r1, [r1, r7]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, lr
	.loc 3 345 0
	add	r1, r10, r1, asl #8
	ldr	r1, [r1, #252]
	.loc 3 348 0
	rsbge	r4, lr, r4
	.loc 3 345 0
	str	r1, [r9, r3, asl #4]
	.loc 3 346 0
	add	r3, r3, #1
.LVL1209:
.L1334:
	.loc 3 345 0
	and	r1, r3, #3
	.loc 3 339 0
	cmp	r3, r8
	.loc 3 345 0
	add	r1, r0, r1, asl #2
	.loc 3 339 0
	bne	.L1337
.LBE255:
.LBE257:
.LBE265:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1210:
.L1333:
	.cfi_restore_state
.LBB266:
.LBB258:
.LBB256:
	.loc 3 326 0 discriminator 1
	adds	r4, lr, r4
.LVL1211:
	bpl	.L1332
.LVL1212:
	.loc 3 326 0 is_stmt 0
	adds	r4, lr, r4
.LVL1213:
	bmi	.L1333
	b	.L1332
.LVL1214:
.L1382:
.LBE256:
.LBE258:
.LBE266:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r0, [r7]
	add	r3, r2, r3
	cmp	r3, r0
	bne	.L1314
	b	.L1316
.L1381:
.LBB267:
	.loc 3 197 0
	mvn	r0, r9
	mov	r1, r5
	uxth	r0, r0
	b	.L1374
.LVL1215:
.L1383:
	ldr	r1, .L1384+32
	and	r0, r6, #3
	str	r1, [sp, #36]
	ldr	r1, .L1384+36
	b	.L1338
.L1385:
	.align	2
.L1384:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	R_FlushHT32
	.word	.LANCHOR2
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	R_FlushQuad32
	.word	V_Palette32
	.word	filter_ditherMatrix
	.word	viewheight
.LBE267:
	.cfi_endproc
.LFE75:
	.size	R_DrawColumn32_PointUV_LinearZ, .-R_DrawColumn32_PointUV_LinearZ
	.align	2
	.type	R_DrawTLColumn8_PointUV, %function
R_DrawTLColumn8_PointUV:
.LFB82:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1216:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r7, r9, r8
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL1217:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1218:
	.loc 3 157 0
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 171 0
	ldr	r3, .L1459
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r5, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL1219:
	.loc 3 174 0
	bne	.L1454
.LVL1220:
.L1389:
	.loc 3 215 0
	ldr	r8, .L1459+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L1395
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L1455
.L1396:
	.loc 3 224 0 is_stmt 1
	mov	fp, #2
	.loc 3 223 0
	ldr	r1, [r5, #8]
	.loc 3 222 0
	ldr	r2, [r5, #4]
	.loc 3 221 0
	ldr	r10, [r5]
.LVL1221:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
	mov	r1, #0
	.loc 3 226 0
	ldr	r3, .L1459+8
	.loc 3 224 0
	ldr	r0, .L1459+12
	.loc 3 226 0
	ldr	ip, [r3]
	.loc 3 233 0
	ldr	r9, .L1459+16
	.loc 3 230 0
	ldr	r3, .L1459+20
	ldr	lr, .L1459+24
	.loc 3 226 0
	str	ip, [r8, #1008]
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 231 0
	ldr	ip, .L1459+28
	.loc 3 232 0
	ldr	r0, .L1459+32
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	add	r2, r9, r2, asl #2
.LVL1222:
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.L1398:
.LBB268:
	.loc 3 286 0
	ldr	r3, [r5, #24]
.LBE268:
	.loc 3 245 0
	add	r1, r1, #1
.LBB275:
	.loc 3 286 0
	cmp	r3, #128
.LBE275:
	.loc 3 245 0
	str	r1, [r8]
.LBB276:
	.loc 3 251 0
	ldr	r0, [r5, #32]
.LVL1223:
	.loc 3 286 0
	beq	.L1456
	.loc 3 294 0
	cmp	r3, #0
	bne	.L1402
.LVL1224:
	add	r7, r7, #1
.LVL1225:
.L1403:
	.loc 3 297 0
	ldrb	r1, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r6
.LVL1226:
	.loc 3 297 0
	strb	r1, [r2, r3, asl #2]
.LVL1227:
	add	r3, r3, #1
.LVL1228:
	.loc 3 296 0
	cmp	r3, r7
	bne	.L1403
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1229:
.L1454:
.LBE276:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1389
	.loc 3 178 0
	cmp	r8, #0
	beq	.L1390
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB277:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE277:
	.loc 3 179 0
	bne	.L1449
	.loc 3 186 0
	tst	r3, #2
	beq	.L1390
.LBB278:
	.loc 3 188 0
	uxth	fp, r10
.L1449:
	mov	r0, fp
.LVL1230:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1231:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1232:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL1233:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL1234:
.L1390:
.LBE278:
	.loc 3 194 0
	ldr	r3, .L1459+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L1392
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L1457
	.loc 3 201 0
	tst	r3, #8
	beq	.L1392
.LBB279:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1235:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL1236:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL1237:
.L1392:
.LBE279:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L1389
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1455:
	.loc 3 216 0
	ldr	r2, .L1459+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L1458
.L1395:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1238:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L1396
.L1397:
	.loc 3 235 0
	ldr	r2, [r5, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r5, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L1459+4
	.loc 3 240 0
	ldr	ip, .L1459+4
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L1459+16
	add	r2, r1, r3
.LVL1239:
	ldr	r1, [r8]
	b	.L1398
.LVL1240:
.L1402:
.LBB280:
.LBB269:
	.loc 3 303 0
	sub	r1, r3, #1
.LVL1241:
	.loc 3 304 0
	tst	r1, r3
	bne	.L1404
.LBB270:
	.loc 3 305 0
	mov	lr, r1, asl #16
	mvn	lr, lr, lsr #16
	.loc 3 306 0
	sub	r9, r7, #1
	cmn	r9, #1
	.loc 3 305 0
	mvn	lr, lr, asl #16
.LVL1242:
	.loc 3 306 0
	mov	r5, r9
.LVL1243:
	beq	.L1416
	mov	r1, r4
.LVL1244:
	add	r3, r2, #8
.LVL1245:
	mov	r8, r6, asl #1
.LVL1246:
.L1406:
	.loc 3 307 0
	and	ip, r1, lr
	ldrb	r10, [r0, ip, asr #16]	@ zero_extendqisi2
	add	ip, r6, r1
	strb	r10, [r3, #-8]
.LVL1247:
	.loc 3 311 0
	and	ip, ip, lr
.LVL1248:
	ldrb	ip, [r0, ip, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r5, r5, #2
.LVL1249:
	.loc 3 311 0
	strb	ip, [r3, #-4]
.LVL1250:
	add	r1, r8, r1
.LVL1251:
	add	r3, r3, #8
.LVL1252:
	.loc 3 306 0
	bpl	.L1406
	mov	r9, r9, lsr #1
	add	r4, r4, r6, asl #1
	add	r3, r9, #1
.LVL1253:
	.loc 3 316 0
	tst	r7, #1
	mla	r4, r9, r8, r4
	add	r2, r2, r3, asl #3
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1254:
.L1416:
	.loc 3 317 0
	and	r4, r4, lr
	ldrb	r3, [r0, r4, asr #16]	@ zero_extendqisi2
	strb	r3, [r2]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1255:
.L1456:
.LBE270:
.LBE269:
	.loc 3 286 0
	mov	r3, #0
	add	r7, r7, #1
.LVL1256:
.L1401:
	.loc 3 289 0
	bic	r1, r4, #-16777216
	bic	r1, r1, #8388608
	ldrb	r1, [r0, r1, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r6
.LVL1257:
	.loc 3 289 0
	strb	r1, [r2, r3, asl #2]
.LVL1258:
	add	r3, r3, #1
.LVL1259:
	.loc 3 288 0
	cmp	r3, r7
	bne	.L1401
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1260:
.L1404:
.LBB274:
.LBB271:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r3, r3, asl #16
.LVL1261:
	.loc 3 325 0
	bge	.L1451
	b	.L1410
.L1412:
	rsb	r4, r3, r4
.LVL1262:
.L1451:
	.loc 3 328 0
	cmp	r4, r3
	bge	.L1412
.L1409:
.LBE271:
.LBB272:
	.loc 3 306 0
	mov	r1, #0
	add	r7, r7, #1
.LVL1263:
.L1411:
.LBE272:
.LBB273:
	.loc 3 345 0
	ldrb	ip, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL1264:
	cmp	r4, r3
	.loc 3 345 0
	strb	ip, [r2, r1, asl #2]
.LVL1265:
	add	r1, r1, #1
.LVL1266:
	.loc 3 348 0
	rsbge	r4, r3, r4
.LVL1267:
	.loc 3 339 0
	cmp	r7, r1
	bne	.L1411
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1268:
.L1410:
	.loc 3 326 0 discriminator 1
	adds	r4, r3, r4
.LVL1269:
	bpl	.L1409
.LVL1270:
	.loc 3 326 0 is_stmt 0
	adds	r4, r3, r4
.LVL1271:
	bmi	.L1410
	b	.L1409
.LVL1272:
.L1458:
.LBE273:
.LBE274:
.LBE280:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L1395
	b	.L1397
.L1457:
.LBB281:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1273:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL1274:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL1275:
.LBE281:
	b	.L1392
.L1460:
	.align	2
.L1459:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	.LANCHOR0+48
	.word	.LANCHOR1
	.word	R_FlushWholeTL8
	.word	R_FlushHTTL8
	.word	R_FlushQuadTL8
	.word	viewheight
	.cfi_endproc
.LFE82:
	.size	R_DrawTLColumn8_PointUV, .-R_DrawTLColumn8_PointUV
	.align	2
	.type	R_DrawTLColumn8_PointUV_PointZ, %function
R_DrawTLColumn8_PointUV_PointZ:
.LFB83:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1276:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r7, r9, r8
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL1277:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1278:
	.loc 3 157 0
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 171 0
	ldr	r3, .L1534
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r5, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL1279:
	.loc 3 174 0
	bne	.L1529
.LVL1280:
.L1464:
	.loc 3 215 0
	ldr	r8, .L1534+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L1470
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L1530
.L1471:
	.loc 3 224 0 is_stmt 1
	mov	fp, #2
	.loc 3 222 0
	ldr	r2, [r5, #4]
	.loc 3 233 0
	ldr	r1, .L1534+8
	.loc 3 221 0
	ldr	r10, [r5]
.LVL1281:
	.loc 3 223 0
	ldr	r0, [r5, #8]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r1, r1, r2, asl #2
.LVL1282:
	mov	r2, #0
	.loc 3 226 0
	ldr	r3, .L1534+12
	.loc 3 224 0
	ldr	ip, .L1534+16
	.loc 3 226 0
	ldr	lr, [r3]
	.loc 3 230 0
	ldr	r9, .L1534+20
	ldr	r3, .L1534+24
	.loc 3 226 0
	str	lr, [r8, #1008]
	.loc 3 231 0
	ldr	lr, .L1534+28
	.loc 3 224 0
	str	fp, [ip, #-1204]
	.loc 3 231 0
	stmia	r3, {r9, lr}
	.loc 3 232 0
	ldr	ip, .L1534+32
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
	.loc 3 232 0
	str	ip, [r3, #8]
.L1473:
.LBB282:
	.loc 3 286 0
	ldr	r3, [r5, #24]
.LBE282:
	.loc 3 245 0
	add	r2, r2, #1
.LBB289:
	.loc 3 286 0
	cmp	r3, #128
.LBE289:
	.loc 3 245 0
	str	r2, [r8]
.LBB290:
	.loc 3 251 0
	ldr	r0, [r5, #32]
.LVL1283:
	.loc 3 252 0
	ldr	r2, [r5, #44]
.LVL1284:
	.loc 3 286 0
	beq	.L1531
	.loc 3 294 0
	cmp	r3, #0
	bne	.L1477
.LVL1285:
	add	r7, r7, #1
.LVL1286:
.L1478:
	.loc 3 297 0
	ldrb	ip, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r6
.LVL1287:
	.loc 3 297 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	strb	ip, [r1, r3, asl #2]
.LVL1288:
	add	r3, r3, #1
.LVL1289:
	.loc 3 296 0
	cmp	r3, r7
	bne	.L1478
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1290:
.L1529:
.LBE290:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1464
	.loc 3 178 0
	cmp	r8, #0
	beq	.L1465
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB291:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE291:
	.loc 3 179 0
	bne	.L1524
	.loc 3 186 0
	tst	r3, #2
	beq	.L1465
.LBB292:
	.loc 3 188 0
	uxth	fp, r10
.L1524:
	mov	r0, fp
.LVL1291:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1292:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1293:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL1294:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL1295:
.L1465:
.LBE292:
	.loc 3 194 0
	ldr	r3, .L1534+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L1467
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L1532
	.loc 3 201 0
	tst	r3, #8
	beq	.L1467
.LBB293:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1296:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL1297:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL1298:
.L1467:
.LBE293:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L1464
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1530:
	.loc 3 216 0
	ldr	r2, .L1534+16
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L1533
.L1470:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1299:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L1471
.L1472:
	.loc 3 235 0
	ldr	r1, [r5, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r2, [r5, #8]
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r1, [r0, #16]
	.loc 3 236 0
	str	r2, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L1534+4
	.loc 3 240 0
	ldr	ip, .L1534+4
	.loc 3 239 0
	strgt	r1, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	cmp	r2, r0
	.loc 3 241 0
	strlt	r2, [ip, #8]
	.loc 3 243 0
	ldr	r2, .L1534+8
	add	r1, r2, r3
.LVL1300:
	ldr	r2, [r8]
	b	.L1473
.LVL1301:
.L1477:
.LBB294:
.LBB283:
	.loc 3 303 0
	sub	ip, r3, #1
.LVL1302:
	.loc 3 304 0
	tst	ip, r3
	bne	.L1479
.LBB284:
	.loc 3 305 0
	mov	r5, ip, asl #16
.LVL1303:
	mvn	r5, r5, lsr #16
	.loc 3 306 0
	sub	r10, r7, #1
	cmn	r10, #1
	.loc 3 305 0
	mvn	r5, r5, asl #16
.LVL1304:
	.loc 3 306 0
	mov	r8, r10
.LVL1305:
	beq	.L1491
	mov	ip, r4
.LVL1306:
	add	r3, r1, #8
.LVL1307:
	mov	r9, r6, asl #1
.LVL1308:
.L1481:
	.loc 3 307 0
	and	lr, ip, r5
	ldrb	lr, [r0, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r8, r8, #2
.LVL1309:
	.loc 3 307 0
	ldrb	fp, [r2, lr]	@ zero_extendqisi2
	add	lr, r6, ip
	strb	fp, [r3, #-8]
.LVL1310:
	.loc 3 311 0
	and	lr, lr, r5
.LVL1311:
	ldrb	lr, [r0, lr, asr #16]	@ zero_extendqisi2
	add	ip, r9, ip
.LVL1312:
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	add	r3, r3, #8
.LVL1313:
	strb	lr, [r3, #-12]
.LVL1314:
	.loc 3 306 0
	bpl	.L1481
	mov	r10, r10, lsr #1
	add	r4, r4, r6, asl #1
	add	r3, r10, #1
	.loc 3 316 0
	tst	r7, #1
	mla	r4, r10, r9, r4
	add	r1, r1, r3, asl #3
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1315:
.L1491:
	.loc 3 317 0
	and	r4, r4, r5
	ldrb	r3, [r0, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	strb	r3, [r1]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1316:
.L1531:
.LBE284:
.LBE283:
	.loc 3 286 0
	mov	r3, #0
	add	r7, r7, #1
.LVL1317:
.L1476:
	.loc 3 289 0
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r0, ip, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r6
.LVL1318:
	.loc 3 289 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	strb	ip, [r1, r3, asl #2]
.LVL1319:
	add	r3, r3, #1
.LVL1320:
	.loc 3 288 0
	cmp	r3, r7
	bne	.L1476
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1321:
.L1479:
.LBB288:
.LBB285:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r3, r3, asl #16
.LVL1322:
	.loc 3 325 0
	bge	.L1526
	b	.L1485
.L1487:
	rsb	r4, r3, r4
.LVL1323:
.L1526:
	.loc 3 328 0
	cmp	r4, r3
	bge	.L1487
.L1484:
.LBE285:
.LBB286:
	.loc 3 306 0
	mov	ip, #0
	add	r7, r7, #1
.LVL1324:
.L1486:
.LBE286:
.LBB287:
	.loc 3 345 0
	ldrb	lr, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL1325:
	.loc 3 345 0
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r3
	.loc 3 345 0
	strb	lr, [r1, ip, asl #2]
.LVL1326:
	add	ip, ip, #1
.LVL1327:
	.loc 3 348 0
	rsbge	r4, r3, r4
.LVL1328:
	.loc 3 339 0
	cmp	r7, ip
	bne	.L1486
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1329:
.L1485:
	.loc 3 326 0 discriminator 1
	adds	r4, r3, r4
.LVL1330:
	bpl	.L1484
.LVL1331:
	.loc 3 326 0 is_stmt 0
	adds	r4, r3, r4
.LVL1332:
	bmi	.L1485
	b	.L1484
.LVL1333:
.L1533:
.LBE287:
.LBE288:
.LBE294:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L1470
	b	.L1472
.L1532:
.LBB295:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1334:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL1335:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL1336:
.LBE295:
	b	.L1467
.L1535:
	.align	2
.L1534:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR0+48
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushWholeTL8
	.word	.LANCHOR1
	.word	R_FlushHTTL8
	.word	R_FlushQuadTL8
	.word	viewheight
	.cfi_endproc
.LFE83:
	.size	R_DrawTLColumn8_PointUV_PointZ, .-R_DrawTLColumn8_PointUV_PointZ
	.align	2
	.type	R_DrawTLColumn8_PointUV_LinearZ, %function
R_DrawTLColumn8_PointUV_LinearZ:
.LFB84:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1337:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r6, r8}
	.loc 3 113 0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 3 157 0
	subs	r3, r8, r6
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL1338:
	.loc 3 157 0
	str	r3, [sp]
	.loc 3 121 0
	ldr	r9, [r0, #28]
.LVL1339:
	.loc 3 157 0
	bmi	.L1536
	.loc 3 171 0
	ldr	r3, .L1614
.LVL1340:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r6
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL1341:
	.loc 3 174 0
	bne	.L1609
.LVL1342:
.L1539:
	.loc 3 215 0
	ldr	r8, .L1614+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L1545
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L1610
.L1546:
	.loc 3 226 0 is_stmt 1
	ldr	r3, .L1614+8
	.loc 3 224 0
	mov	r10, #2
	.loc 3 226 0
	ldr	ip, [r3]
	.loc 3 230 0
	ldr	r2, .L1614+12
	.loc 3 226 0
	str	ip, [r8, #1008]
	.loc 3 231 0
	ldr	ip, .L1614+16
	.loc 3 224 0
	ldr	r0, .L1614+20
	.loc 3 231 0
	str	ip, [r2, #4]
	mov	ip, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L1614+24
.LVL1343:
	.loc 3 221 0
	ldr	r6, [r7]
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 230 0
	ldr	lr, .L1614+28
	.loc 3 224 0
	str	r10, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L1614+32
	.loc 3 233 0
	add	r9, r9, r3, asl #2
	.loc 3 221 0
	str	r6, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	r9, [sp, #4]
.LVL1344:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 232 0
	str	r0, [r2, #8]
.LVL1345:
.L1548:
.LBB296:
	.loc 3 259 0
	ldr	r2, [r7, #12]
	.loc 3 286 0
	ldr	lr, [r7, #24]
	.loc 3 260 0
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #48]
.LBE296:
	.loc 3 245 0
	add	ip, ip, #1
.LBB303:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	lr, #128
.LBE303:
	.loc 3 245 0
	str	ip, [r8]
.LBB304:
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	.loc 3 251 0
	ldr	ip, [r7, #32]
.LVL1346:
	.loc 3 286 0
	beq	.L1611
	.loc 3 294 0
	cmp	lr, #0
	bne	.L1556
.LVL1347:
	ldr	r1, [sp]
	ldr	lr, [sp, #4]
	add	r7, r1, #1
.LVL1348:
	ldr	r1, .L1614+36
	and	r0, r6, #3
	add	r7, r7, r3
	sub	r6, lr, r3, asl #2
.LVL1349:
.L1557:
	.loc 3 297 0
	and	lr, r3, #3
	add	lr, r0, lr, asl #2
	ldrb	lr, [r1, lr]	@ zero_extendqisi2
	add	r9, sp, #40
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	lr, r9, lr, asl #2
	ldrb	r8, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 300 0
	add	r4, r4, r5
.LVL1350:
	.loc 3 297 0
	ldrb	lr, [lr, r8]	@ zero_extendqisi2
	strb	lr, [r6, r3, asl #2]
	.loc 3 298 0
	add	r3, r3, #1
.LVL1351:
	.loc 3 296 0
	cmp	r3, r7
	bne	.L1557
.LVL1352:
.L1536:
.LBE304:
	.loc 3 357 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1353:
.L1609:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1539
	.loc 3 178 0
	cmp	r6, #0
	beq	.L1540
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB305:
	.loc 3 181 0
	mvnne	r10, r9
	uxthne	r10, r10
.LBE305:
	.loc 3 179 0
	bne	.L1604
	.loc 3 186 0
	tst	r3, #2
	beq	.L1540
.LBB306:
	.loc 3 188 0
	uxth	r10, r9
.L1604:
	mov	r0, r10
.LVL1354:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1355:
	.loc 3 190 0
	ldr	r3, [sp]
	.loc 3 189 0
	add	r6, r6, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r10
.LVL1356:
	.loc 3 189 0
	str	r6, [r7, #4]
.LVL1357:
	.loc 3 190 0
	str	r3, [sp]
.LVL1358:
.L1540:
.LBE306:
	.loc 3 194 0
	ldr	r3, .L1614+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L1542
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L1612
	.loc 3 201 0
	tst	r3, #8
	beq	.L1542
.LBB307:
	.loc 3 203 0
	mov	r1, r5
	uxth	r0, r9
.LVL1359:
.L1605:
	bl	__aeabi_idiv
.LVL1360:
	.loc 3 205 0
	ldr	r3, [sp]
	.loc 3 204 0
	rsb	r8, r0, r8
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r8, [r7, #8]
.LVL1361:
	.loc 3 205 0
	str	r3, [sp]
.LVL1362:
.L1542:
.LBE307:
	.loc 3 208 0
	ldr	r3, [sp]
	cmp	r3, #0
	bgt	.L1539
	b	.L1536
.L1610:
	.loc 3 216 0
	ldr	r3, .L1614+20
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L1613
.L1545:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1363:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L1546
	ldr	r0, [r7]
.L1547:
	.loc 3 235 0
	ldr	r1, [r7, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r7, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, r8, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r1, [ip, #16]
	ldr	ip, .L1614+4
	mov	r6, r0
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 243 0
	ldr	r0, .L1614+24
	.loc 3 240 0
	ldr	ip, [r8, #8]
	ldr	lr, .L1614+4
	.loc 3 243 0
	add	r2, r2, r1, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	add	r2, r0, r2
	.loc 3 241 0
	strlt	r3, [lr, #8]
	ldr	ip, [r8]
	.loc 3 235 0
	mov	r3, r1
	.loc 3 243 0
	str	r2, [sp, #4]
.LVL1364:
	b	.L1548
.LVL1365:
.L1556:
.LBB308:
.LBB297:
	.loc 3 303 0
	sub	r1, lr, #1
.LVL1366:
	.loc 3 304 0
	tst	r1, lr
	bne	.L1558
.LBB298:
	.loc 3 305 0
	mov	r10, r1, asl #16
	mvn	r10, r10, lsr #16
	.loc 3 306 0
	ldr	r1, [sp]
.LVL1367:
	.loc 3 305 0
	mvn	r10, r10, asl #16
.LVL1368:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	andeq	r0, r6, #3
	ldreq	r1, .L1614+36
	beq	.L1569
	mov	r1, r1, lsr #1
	str	r1, [sp, #12]
	mov	r1, r1, asl #1
	add	lr, r1, #2
.LVL1369:
	add	lr, lr, r3
	and	r0, r6, #3
	mov	r6, lr
.LVL1370:
	ldr	lr, [sp, #4]
	mov	r7, r3
.LVL1371:
	add	r8, lr, #8
	mov	lr, r5, asl #1
	mov	r9, r4
	mov	fp, lr
	str	r1, [sp, #16]
	ldr	r1, .L1614+36
	str	lr, [sp, #20]
	str	r4, [sp, #24]
	str	r3, [sp, #28]
	str	r6, [sp, #8]
.LVL1372:
.L1560:
	.loc 3 307 0
	and	r3, r7, #3
	add	r3, r0, r3, asl #2
	ldrb	lr, [r1, r3]	@ zero_extendqisi2
	add	r3, r7, #1
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r0, r3, asl #2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	.loc 3 307 0
	add	r4, sp, #40
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	add	lr, r4, lr, asl #2
	and	r4, r9, r10
	ldrb	r4, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 311 0
	add	r6, sp, #40
	.loc 3 307 0
	ldrb	r4, [lr, r4]	@ zero_extendqisi2
	add	lr, r5, r9
	strb	r4, [r8, #-8]
.LVL1373:
	.loc 3 311 0
	add	r3, r6, r3, asl #2
	and	lr, lr, r10
.LVL1374:
	ldrb	lr, [ip, lr, asr #16]	@ zero_extendqisi2
	ldr	r3, [r3, #-8]
	.loc 3 312 0
	add	r7, r7, #2
.LVL1375:
	.loc 3 311 0
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	lr, [sp, #8]
	.loc 3 311 0
	strb	r3, [r8, #-4]
	.loc 3 306 0
	cmp	r7, lr
	add	r9, fp, r9
.LVL1376:
	add	r8, r8, #8
.LVL1377:
	bne	.L1560
	.loc 3 316 0
	ldr	r6, [sp]
	ldr	r3, [sp, #28]
	ldr	r4, [sp, #24]
	tst	r6, #1
	ldr	r6, [sp, #16]
	add	r3, r3, #2
	add	r4, r4, r5, asl #1
	add	r3, r3, r6
	ldr	r5, [sp, #12]
.LVL1378:
	ldr	r6, [sp, #20]
	add	lr, r5, #1
	mla	r4, r6, r5, r4
	ldr	r5, [sp, #4]
	add	lr, r5, lr, asl #3
	str	lr, [sp, #4]
	bne	.L1536
.LVL1379:
.L1569:
	.loc 3 317 0
	and	r3, r3, #3
	add	r0, r0, r3, asl #2
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	and	r4, r4, r10
	cmp	r3, r2
	movge	r2, #0
.LVL1380:
	movlt	r2, #1
	add	r3, sp, #40
	add	r2, r3, r2, asl #2
	ldr	r2, [r2, #-8]
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	strb	r3, [r2]
	b	.L1536
.LVL1381:
.L1611:
	ldr	r1, [sp]
	ldr	lr, [sp, #4]
	add	r8, r1, #1
	ldr	r1, .L1614+36
	and	r0, r6, #3
	add	r8, r8, r3
	sub	r6, lr, r3, asl #2
.LVL1382:
.L1554:
.LBE298:
.LBE297:
	.loc 3 289 0
	and	lr, r3, #3
	add	lr, r0, lr, asl #2
	ldrb	lr, [r1, lr]	@ zero_extendqisi2
	bic	r7, r4, #-16777216
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	r9, sp, #40
	add	lr, r9, lr, asl #2
	bic	r7, r7, #8388608
	ldr	r9, [lr, #-8]
	ldrb	lr, [ip, r7, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL1383:
	.loc 3 289 0
	ldrb	lr, [r9, lr]	@ zero_extendqisi2
	strb	lr, [r6, r3, asl #2]
	.loc 3 290 0
	add	r3, r3, #1
.LVL1384:
	.loc 3 288 0
	cmp	r3, r8
	bne	.L1554
.LBE308:
	.loc 3 357 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL1385:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1386:
.L1558:
	.cfi_restore_state
.LBB309:
.LBB301:
.LBB299:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	lr, lr, asl #16
.LVL1387:
	.loc 3 325 0
	bge	.L1607
	b	.L1564
.L1566:
	rsb	r4, lr, r4
.LVL1388:
.L1607:
	.loc 3 328 0
	cmp	r4, lr
	bge	.L1566
.L1563:
	ldr	r1, [sp]
	.loc 3 345 0
	and	r0, r6, #3
	add	r7, r1, #1
.LVL1389:
	ldr	r1, [sp, #4]
	add	r7, r7, r3
	sub	r8, r1, r3, asl #2
	ldr	r6, .L1614+36
.LVL1390:
	b	.L1565
.LVL1391:
.L1568:
	ldrb	r1, [r6, r1]	@ zero_extendqisi2
	add	r10, sp, #40
	cmp	r1, r2
	movge	r1, #0
	movlt	r1, #1
	add	r1, r10, r1, asl #2
	ldrb	r9, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r1, [r1, #-8]
	.loc 3 348 0
	add	r4, r4, r5
.LVL1392:
	.loc 3 345 0
	ldrb	r1, [r1, r9]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, lr
	.loc 3 345 0
	strb	r1, [r8, r3, asl #2]
	.loc 3 348 0
	rsbge	r4, lr, r4
	.loc 3 346 0
	add	r3, r3, #1
.LVL1393:
.L1565:
	.loc 3 345 0
	and	r1, r3, #3
	.loc 3 339 0
	cmp	r3, r7
	.loc 3 345 0
	add	r1, r0, r1, asl #2
	.loc 3 339 0
	bne	.L1568
.LBE299:
.LBE301:
.LBE309:
	.loc 3 357 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL1394:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1395:
.L1564:
	.cfi_restore_state
.LBB310:
.LBB302:
.LBB300:
	.loc 3 326 0 discriminator 1
	adds	r4, lr, r4
.LVL1396:
	bpl	.L1563
.LVL1397:
	.loc 3 326 0 is_stmt 0
	adds	r4, lr, r4
.LVL1398:
	bmi	.L1564
	b	.L1563
.LVL1399:
.L1613:
.LBE300:
.LBE302:
.LBE310:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r0, [r7]
	add	r3, r2, r3
	cmp	r3, r0
	bne	.L1545
	b	.L1547
.L1612:
.LBB311:
	.loc 3 197 0
	mvn	r0, r9
	mov	r1, r5
	uxth	r0, r0
	b	.L1605
.L1615:
	.align	2
.L1614:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR1
	.word	R_FlushHTTL8
	.word	.LANCHOR2
	.word	.LANCHOR0+48
	.word	R_FlushWholeTL8
	.word	R_FlushQuadTL8
	.word	filter_ditherMatrix
	.word	viewheight
.LBE311:
	.cfi_endproc
.LFE84:
	.size	R_DrawTLColumn8_PointUV_LinearZ, .-R_DrawTLColumn8_PointUV_LinearZ
	.align	2
	.type	R_DrawTLColumn15_PointUV, %function
R_DrawTLColumn15_PointUV:
.LFB91:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1400:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL1401:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1402:
	.loc 3 157 0
	bmi	.L1616
	.loc 3 171 0
	ldr	r3, .L1689
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL1403:
	.loc 3 174 0
	bne	.L1684
.LVL1404:
.L1619:
	.loc 3 215 0
	ldr	r8, .L1689+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L1625
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L1685
.L1626:
	.loc 3 224 0 is_stmt 1
	mov	fp, #2
	.loc 3 226 0
	ldr	r3, .L1689+8
	.loc 3 224 0
	ldr	r0, .L1689+12
	.loc 3 226 0
	ldr	ip, [r3]
	.loc 3 230 0
	ldr	r2, .L1689+16
	ldr	lr, .L1689+20
	.loc 3 226 0
	str	ip, [r8, #1008]
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 231 0
	ldr	ip, .L1689+24
	.loc 3 232 0
	ldr	r0, .L1689+28
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL1405:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 233 0
	ldr	r9, .L1689+32
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
.LVL1406:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L1628:
.LBB312:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE312:
	.loc 3 245 0
	add	r2, r2, #1
.LBB319:
	.loc 3 286 0
	cmp	r1, #128
.LBE319:
	.loc 3 245 0
	str	r2, [r8]
.LBB320:
	.loc 3 278 0
	add	ip, r5, #1
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL1407:
	.loc 3 286 0
	beq	.L1686
	.loc 3 294 0
	cmp	r1, #0
	bne	.L1632
.LVL1408:
	.loc 3 297 0
	mov	lr, #128
	mov	ip, #126
	ldr	r1, .L1689+36
	add	r3, r3, #8
.LVL1409:
	ldr	r0, [r1]
.LVL1410:
.L1633:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL1411:
	.loc 3 297 0
	smlabb	r1, lr, r1, ip
	ldrh	r1, [r0, r1]
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL1412:
	.loc 3 300 0
	add	r4, r4, r6
.LVL1413:
	add	r3, r3, #8
.LVL1414:
	.loc 3 296 0
	bne	.L1633
.LVL1415:
.L1616:
.LBE320:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1416:
.L1684:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1619
	.loc 3 178 0
	cmp	r8, #0
	beq	.L1620
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB321:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE321:
	.loc 3 179 0
	bne	.L1681
	.loc 3 186 0
	tst	r3, #2
	beq	.L1620
.LBB322:
	.loc 3 188 0
	uxth	fp, r10
.L1681:
	mov	r0, fp
.LVL1417:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1418:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1419:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL1420:
.L1620:
.LBE322:
	.loc 3 194 0
	ldr	r3, .L1689+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L1622
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L1687
	.loc 3 201 0
	tst	r3, #8
	beq	.L1622
.LBB323:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1421:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL1422:
.L1622:
.LBE323:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L1619
	b	.L1616
.L1685:
	.loc 3 216 0
	ldr	r3, .L1689+12
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L1688
.L1625:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1423:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L1626
.L1627:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L1689+4
	.loc 3 240 0
	ldr	ip, .L1689+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L1689+32
	add	r3, r1, r2, asl #1
.LVL1424:
	ldr	r2, [r8]
	b	.L1628
.LVL1425:
.L1632:
.LBB324:
.LBB313:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL1426:
	.loc 3 304 0
	tst	r0, r1
	bne	.L1634
.LBB314:
	.loc 3 305 0
	mov	lr, r0, asl #16
	mvn	lr, lr, lsr #16
	.loc 3 306 0
	sub	r1, r5, #1
	cmn	r1, #1
	str	r1, [sp]
	mov	r7, r1
.LVL1427:
	ldreq	r1, .L1689+36
	.loc 3 305 0
	mvn	lr, lr, asl #16
.LVL1428:
	streq	r1, [sp, #12]
	.loc 3 306 0
	beq	.L1647
	ldr	r1, .L1689+36
	mov	r0, r4
.LVL1429:
	mov	ip, r1
	ldr	r8, [ip]
	mov	ip, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, ip
	str	r1, [sp, #12]
	str	ip, [sp, #4]
	add	r1, r3, #16
	str	r5, [sp, #8]
.LVL1430:
.L1636:
	and	ip, r0, lr
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r7, r7, #2
.LVL1431:
	.loc 3 307 0
	smlabb	ip, r10, ip, r9
	ldrh	r5, [r8, ip]
	add	ip, r6, r0
	strh	r5, [r1, #-16]	@ movhi
.LVL1432:
	.loc 3 311 0
	and	ip, ip, lr
.LVL1433:
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	add	r0, fp, r0
.LVL1434:
	smlabb	ip, r10, ip, r9
	ldrh	ip, [r8, ip]
	add	r1, r1, #16
.LVL1435:
	strh	ip, [r1, #-24]	@ movhi
.LVL1436:
	.loc 3 306 0
	bpl	.L1636
	ldr	r1, [sp]
	ldr	r5, [sp, #8]
	mov	r1, r1, lsr #1
	ldr	ip, [sp, #4]
	add	r4, r4, r6, asl #1
	add	r0, r1, #1
.LVL1437:
	.loc 3 316 0
	tst	r5, #1
	mla	r4, ip, r1, r4
	add	r3, r3, r0, asl #4
	bne	.L1616
.L1647:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, lr
	ldr	r0, [sp, #12]
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL1438:
	ldr	r0, [r0]
	add	r2, r1, r2, asl #7
	ldrh	r2, [r0, r2]
	strh	r2, [r3]	@ movhi
	b	.L1616
.LVL1439:
.L1686:
.LBE314:
.LBE313:
	.loc 3 289 0
	mov	lr, #126
	ldr	r0, .L1689+36
	add	r3, r3, #8
.LVL1440:
	ldr	ip, [r0]
.LVL1441:
.L1631:
	bic	r0, r4, #-16777216
	bic	r0, r0, #8388608
	ldrb	r0, [r2, r0, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL1442:
	.loc 3 289 0
	smlabb	r0, r1, r0, lr
	ldrh	r0, [ip, r0]
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	strh	r0, [r3, #-8]	@ movhi
.LVL1443:
	.loc 3 292 0
	add	r4, r4, r6
.LVL1444:
	add	r3, r3, #8
.LVL1445:
	.loc 3 288 0
	bne	.L1631
.LBE324:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1446:
.L1634:
	.cfi_restore_state
.LBB325:
.LBB317:
.LBB315:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL1447:
	.loc 3 325 0
	blt	.L1640
	.loc 3 328 0
	cmp	r4, r1
	blt	.L1639
.L1642:
	rsb	r4, r1, r4
.LVL1448:
	cmp	r1, r4
	ble	.L1642
.L1639:
	.loc 3 345 0
	ldr	r0, .L1689+36
	add	r3, r3, #8
.LVL1449:
	ldr	r7, [r0]
.LVL1450:
	mov	r5, #128
	mov	lr, #126
	b	.L1641
.LVL1451:
.L1644:
	ldrb	r0, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL1452:
	.loc 3 345 0
	smlabb	r0, r5, r0, lr
	ldrh	r0, [r7, r0]
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	strh	r0, [r3, #-8]	@ movhi
.LVL1453:
	.loc 3 348 0
	rsbge	r4, r1, r4
.LVL1454:
	add	r3, r3, #8
.LVL1455:
.L1641:
	.loc 3 339 0
	subs	ip, ip, #1
.LVL1456:
	bcs	.L1644
.LBE315:
.LBE317:
.LBE325:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1457:
.L1640:
	.cfi_restore_state
.LBB326:
.LBB318:
.LBB316:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL1458:
	bpl	.L1639
.LVL1459:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL1460:
	bmi	.L1640
	b	.L1639
.LVL1461:
.L1688:
.LBE316:
.LBE318:
.LBE326:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L1625
	b	.L1627
.L1687:
.LBB327:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1462:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL1463:
.LBE327:
	b	.L1622
.L1690:
	.align	2
.L1689:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWholeTL15
	.word	R_FlushHTTL15
	.word	R_FlushQuadTL15
	.word	.LANCHOR0+1220
	.word	V_Palette15
	.word	viewheight
	.cfi_endproc
.LFE91:
	.size	R_DrawTLColumn15_PointUV, .-R_DrawTLColumn15_PointUV
	.align	2
	.type	R_DrawTLColumn15_PointUV_PointZ, %function
R_DrawTLColumn15_PointUV_PointZ:
.LFB92:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1464:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL1465:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1466:
	.loc 3 157 0
	bmi	.L1691
	.loc 3 171 0
	ldr	r3, .L1764
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL1467:
	.loc 3 174 0
	bne	.L1759
.LVL1468:
.L1694:
	.loc 3 215 0
	ldr	r8, .L1764+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L1700
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L1760
.L1701:
	.loc 3 224 0 is_stmt 1
	mov	fp, #2
	.loc 3 226 0
	ldr	r3, .L1764+8
	.loc 3 224 0
	ldr	r0, .L1764+12
	.loc 3 226 0
	ldr	ip, [r3]
	.loc 3 230 0
	ldr	r2, .L1764+16
	ldr	lr, .L1764+20
	.loc 3 226 0
	str	ip, [r8, #1008]
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 231 0
	ldr	ip, .L1764+24
	.loc 3 232 0
	ldr	r0, .L1764+28
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L1764+32
	.loc 3 221 0
	ldr	r10, [r7]
.LVL1469:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	str	r3, [sp, #4]
.LVL1470:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L1703:
.LVL1471:
.LBB328:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE328:
	.loc 3 245 0
	add	r2, r2, #1
.LBB335:
	.loc 3 286 0
	cmp	r1, #128
.LBE335:
	.loc 3 245 0
	str	r2, [r8]
.LBB336:
	.loc 3 252 0
	ldr	r0, [r7, #44]
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL1472:
	.loc 3 278 0
	add	lr, r5, #1
.LVL1473:
	.loc 3 286 0
	beq	.L1761
	.loc 3 294 0
	cmp	r1, #0
	bne	.L1707
.LVL1474:
	.loc 3 297 0
	mov	r7, #128
.LVL1475:
	mov	lr, #126
	ldr	r1, .L1764+36
	ldr	r3, [sp, #4]
	ldr	ip, [r1]
	add	r3, r3, #8
.LVL1476:
.L1708:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL1477:
	.loc 3 297 0
	ldrb	r1, [r0, r1]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	smlabb	r1, r7, r1, lr
	ldrh	r1, [ip, r1]
	.loc 3 300 0
	add	r4, r4, r6
.LVL1478:
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL1479:
	add	r3, r3, #8
.LVL1480:
	.loc 3 296 0
	bne	.L1708
.LVL1481:
.L1691:
.LBE336:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1482:
.L1759:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1694
	.loc 3 178 0
	cmp	r8, #0
	beq	.L1695
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB337:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE337:
	.loc 3 179 0
	bne	.L1756
	.loc 3 186 0
	tst	r3, #2
	beq	.L1695
.LBB338:
	.loc 3 188 0
	uxth	fp, r10
.L1756:
	mov	r0, fp
.LVL1483:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1484:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1485:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL1486:
.L1695:
.LBE338:
	.loc 3 194 0
	ldr	r3, .L1764+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L1697
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L1762
	.loc 3 201 0
	tst	r3, #8
	beq	.L1697
.LBB339:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1487:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL1488:
.L1697:
.LBE339:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L1694
	b	.L1691
.L1760:
	.loc 3 216 0
	ldr	r3, .L1764+12
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L1763
.L1700:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1489:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L1701
.L1702:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L1764+4
	.loc 3 240 0
	ldr	ip, .L1764+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L1764+32
	add	r3, r1, r2, asl #1
	str	r3, [sp, #4]
.LVL1490:
	ldr	r2, [r8]
	b	.L1703
.LVL1491:
.L1707:
.LBB340:
.LBB329:
	.loc 3 303 0
	sub	ip, r1, #1
.LVL1492:
	.loc 3 304 0
	tst	ip, r1
	bne	.L1709
.LBB330:
	.loc 3 305 0
	mov	r7, ip, asl #16
.LVL1493:
	mvn	r7, r7, lsr #16
	.loc 3 306 0
	sub	r3, r5, #1
	cmn	r3, #1
	str	r3, [sp, #8]
	ldreq	r3, .L1764+36
	.loc 3 305 0
	mvn	r7, r7, asl #16
.LVL1494:
	streq	r3, [sp, #20]
	.loc 3 306 0
	beq	.L1722
	ldr	r1, .L1764+36
	mov	ip, r4
.LVL1495:
	mov	lr, r1
	ldr	r8, [lr]
	mov	lr, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, lr
	str	r1, [sp, #20]
	ldr	r1, [sp, #4]
	str	lr, [sp, #12]
	add	r1, r1, #16
	str	r5, [sp, #16]
.LVL1496:
.L1711:
	and	lr, ip, r7
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r3, r3, #2
.LVL1497:
	.loc 3 307 0
	ldrb	r5, [r0, lr]	@ zero_extendqisi2
	add	lr, r6, ip
	smlabb	r5, r10, r5, r9
	ldrh	r5, [r8, r5]
	.loc 3 311 0
	and	lr, lr, r7
	.loc 3 307 0
	strh	r5, [r1, #-16]	@ movhi
.LVL1498:
	.loc 3 311 0
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	add	ip, fp, ip
.LVL1499:
	ldrb	lr, [r0, lr]	@ zero_extendqisi2
	add	r1, r1, #16
.LVL1500:
	smlabb	lr, r10, lr, r9
	ldrh	lr, [r8, lr]
	strh	lr, [r1, #-24]	@ movhi
.LVL1501:
	.loc 3 306 0
	bpl	.L1711
	ldr	r3, [sp, #8]
	add	r4, r4, r6, asl #1
	mov	r1, r3, lsr #1
	ldr	r3, [sp, #12]
	ldr	r5, [sp, #16]
	mla	r4, r3, r1, r4
	ldr	r3, [sp, #4]
	add	ip, r1, #1
.LVL1502:
	add	r3, r3, ip, asl #4
	.loc 3 316 0
	tst	r5, #1
	str	r3, [sp, #4]
	bne	.L1691
.L1722:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, r7
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL1503:
	ldr	r3, [sp, #20]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	ldr	ip, [r3]
	add	r2, r1, r2, asl #7
	ldrh	r2, [ip, r2]
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	b	.L1691
.LVL1504:
.L1761:
.LBE330:
.LBE329:
	.loc 3 289 0
	mov	lr, #126
	ldr	ip, .L1764+36
	ldr	r3, [sp, #4]
	ldr	r7, [ip]
.LVL1505:
	add	r3, r3, #8
.LVL1506:
.L1706:
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL1507:
	.loc 3 289 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	smlabb	ip, r1, ip, lr
	ldrh	ip, [r7, ip]
	.loc 3 292 0
	add	r4, r4, r6
.LVL1508:
	.loc 3 289 0
	strh	ip, [r3, #-8]	@ movhi
.LVL1509:
	add	r3, r3, #8
.LVL1510:
	.loc 3 288 0
	bne	.L1706
.LBE340:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1511:
.L1709:
	.cfi_restore_state
.LBB341:
.LBB333:
.LBB331:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL1512:
	.loc 3 325 0
	blt	.L1715
	.loc 3 328 0
	cmp	r4, r1
	blt	.L1714
.L1717:
	rsb	r4, r1, r4
.LVL1513:
	cmp	r1, r4
	ble	.L1717
.L1714:
	.loc 3 345 0
	ldr	ip, .L1764+36
	ldr	r3, [sp, #4]
	ldr	r8, [ip]
	add	r3, r3, #8
	mov	r7, #128
.LVL1514:
	mov	r5, #126
	b	.L1716
.LVL1515:
.L1719:
	ldrb	ip, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL1516:
	.loc 3 345 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	smlabb	ip, r7, ip, r5
	ldrh	ip, [r8, ip]
	.loc 3 348 0
	rsbge	r4, r1, r4
	.loc 3 345 0
	strh	ip, [r3, #-8]	@ movhi
.LVL1517:
	add	r3, r3, #8
.LVL1518:
.L1716:
	.loc 3 339 0
	subs	lr, lr, #1
.LVL1519:
	bcs	.L1719
.LBE331:
.LBE333:
.LBE341:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1520:
.L1715:
	.cfi_restore_state
.LBB342:
.LBB334:
.LBB332:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL1521:
	bpl	.L1714
.LVL1522:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL1523:
	bmi	.L1715
	b	.L1714
.LVL1524:
.L1763:
.LBE332:
.LBE334:
.LBE342:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L1700
	b	.L1702
.L1762:
.LBB343:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1525:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL1526:
.LBE343:
	b	.L1697
.L1765:
	.align	2
.L1764:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWholeTL15
	.word	R_FlushHTTL15
	.word	R_FlushQuadTL15
	.word	.LANCHOR0+1220
	.word	V_Palette15
	.word	viewheight
	.cfi_endproc
.LFE92:
	.size	R_DrawTLColumn15_PointUV_PointZ, .-R_DrawTLColumn15_PointUV_PointZ
	.align	2
	.type	R_DrawTLColumn15_PointUV_LinearZ, %function
R_DrawTLColumn15_PointUV_LinearZ:
.LFB93:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1527:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r5, r7}
	.loc 3 113 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 3 157 0
	subs	r3, r7, r5
	.loc 3 117 0
	ldr	fp, [r0, #16]
.LVL1528:
	.loc 3 157 0
	str	r3, [sp, #8]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL1529:
	.loc 3 157 0
	bmi	.L1766
	.loc 3 171 0
	ldr	r3, .L1845
.LVL1530:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	mov	r6, r0
	.loc 3 171 0
	mla	r4, fp, r3, r4
.LVL1531:
	.loc 3 174 0
	bne	.L1839
.LVL1532:
.L1769:
	.loc 3 215 0
	ldr	r7, .L1845+4
	ldr	r2, [r7]
	cmp	r2, #4
	beq	.L1775
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L1840
.L1776:
	.loc 3 226 0 is_stmt 1
	ldr	r3, .L1845+8
	.loc 3 224 0
	mov	r9, #2
	.loc 3 233 0
	ldr	r5, .L1845+12
	.loc 3 226 0
	ldr	lr, [r3]
	.loc 3 222 0
	ldmia	r6, {r1, r3}
	.loc 3 233 0
	add	r5, r5, r3, asl #3
	str	r5, [sp, #12]
.LVL1533:
	mov	r5, #0
.LVL1534:
	.loc 3 224 0
	ldr	ip, .L1845+16
	.loc 3 230 0
	ldr	r2, .L1845+20
	ldr	r8, .L1845+24
.LVL1535:
	.loc 3 226 0
	str	lr, [r7, #1008]
	.loc 3 231 0
	ldr	lr, .L1845+28
	.loc 3 223 0
	ldr	r0, [r6, #8]
	.loc 3 224 0
	str	r9, [ip, #-1204]
	.loc 3 231 0
	stmia	r2, {r8, lr}
	.loc 3 232 0
	ldr	ip, .L1845+32
	.loc 3 221 0
	str	r1, [r7, #12]
	.loc 3 222 0
	str	r3, [r7, #4]
	str	r3, [r7, #16]
	.loc 3 223 0
	str	r0, [r7, #8]
	str	r0, [r7, #32]
	.loc 3 232 0
	str	ip, [r2, #8]
.L1778:
.LBB344:
	.loc 3 259 0
	ldr	r2, [r6, #12]
	.loc 3 286 0
	ldr	r0, [r6, #24]
	.loc 3 260 0
	ldr	ip, [r6, #48]
	ldr	lr, [r6, #44]
.LBE344:
	.loc 3 245 0
	add	r5, r5, #1
.LBB351:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	r0, #128
	.loc 3 260 0
	str	ip, [sp, #44]
.LBE351:
	.loc 3 245 0
	str	r5, [r7]
.LBB352:
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	lr, [sp, #40]
	.loc 3 251 0
	ldr	ip, [r6, #32]
.LVL1536:
	.loc 3 286 0
	beq	.L1841
	.loc 3 294 0
	cmp	r0, #0
	bne	.L1786
.LVL1537:
	.loc 3 297 0
	mov	r8, #128
	ldr	r0, .L1845+36
	ldr	lr, [sp, #8]
	ldr	r9, [r0]
	ldr	r0, [sp, #12]
	add	r7, lr, #1
	ldr	lr, .L1845+40
	add	r7, r7, r3
	and	r1, r1, #3
.LVL1538:
	add	r5, r0, #8
.LVL1539:
.L1787:
	and	r0, r3, #3
	add	r0, r1, r0, asl #2
	ldrb	r0, [lr, r0]	@ zero_extendqisi2
	add	r6, sp, #48
	cmp	r0, r2
	movge	r0, #0
	movlt	r0, #1
	add	r0, r6, r0, asl #2
	mov	r6, #126
	ldrb	r10, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r0, [r0, #-8]
	.loc 3 298 0
	add	r3, r3, #1
.LVL1540:
	.loc 3 297 0
	ldrb	r0, [r0, r10]	@ zero_extendqisi2
	.loc 3 296 0
	cmp	r3, r7
	.loc 3 297 0
	smlabb	r0, r8, r0, r6
	ldrh	r0, [r9, r0]
	.loc 3 300 0
	add	r4, r4, fp
.LVL1541:
	.loc 3 297 0
	strh	r0, [r5, #-8]	@ movhi
	add	r5, r5, #8
.LVL1542:
	.loc 3 296 0
	bne	.L1787
.LVL1543:
.L1766:
.LBE352:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1544:
.L1839:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1769
	.loc 3 178 0
	cmp	r5, #0
	beq	.L1770
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB353:
	.loc 3 181 0
	mvnne	r9, r8
	uxthne	r9, r9
.LBE353:
	.loc 3 179 0
	bne	.L1834
	.loc 3 186 0
	tst	r3, #2
	beq	.L1770
.LBB354:
	.loc 3 188 0
	uxth	r9, r8
.L1834:
	mov	r0, r9
.LVL1545:
	mov	r1, fp
	bl	__aeabi_idiv
.LVL1546:
	.loc 3 190 0
	ldr	r3, [sp, #8]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r9
.LVL1547:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL1548:
	.loc 3 190 0
	str	r3, [sp, #8]
.LVL1549:
.L1770:
.LBE354:
	.loc 3 194 0
	ldr	r3, .L1845+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r7, r3
	beq	.L1772
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L1842
	.loc 3 201 0
	tst	r3, #8
	beq	.L1772
.LBB355:
	.loc 3 203 0
	mov	r1, fp
	uxth	r0, r8
.LVL1550:
.L1835:
	bl	__aeabi_idiv
.LVL1551:
	.loc 3 205 0
	ldr	r3, [sp, #8]
	.loc 3 204 0
	rsb	r7, r0, r7
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r7, [r6, #8]
.LVL1552:
	.loc 3 205 0
	str	r3, [sp, #8]
.LVL1553:
.L1772:
.LBE355:
	.loc 3 208 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bgt	.L1769
	b	.L1766
.L1840:
	.loc 3 216 0
	ldr	r3, .L1845+16
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L1843
.L1775:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1554:
	.loc 3 219 0
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L1776
	ldr	r1, [r6]
.L1777:
	.loc 3 235 0
	ldr	r0, [r6, #4]
	.loc 3 238 0
	ldr	ip, [r7, #4]
	.loc 3 236 0
	ldr	r3, [r6, #8]
	.loc 3 238 0
	cmp	r0, ip
	.loc 3 235 0
	add	ip, r7, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r0, [ip, #16]
	ldr	ip, .L1845+4
	.loc 3 240 0
	ldr	lr, .L1845+4
	.loc 3 239 0
	strgt	r0, [ip, #4]
	.loc 3 240 0
	ldr	ip, [r7, #8]
	.loc 3 243 0
	add	r2, r2, r0, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	ldr	ip, .L1845+12
	.loc 3 241 0
	strlt	r3, [lr, #8]
	.loc 3 243 0
	add	r2, ip, r2, asl #1
	.loc 3 235 0
	mov	r3, r0
	ldr	r5, [r7]
	.loc 3 243 0
	str	r2, [sp, #12]
.LVL1555:
	b	.L1778
.LVL1556:
.L1786:
.LBB356:
.LBB345:
	.loc 3 303 0
	sub	lr, r0, #1
.LVL1557:
	.loc 3 304 0
	tst	lr, r0
	bne	.L1788
.LBB346:
	.loc 3 305 0
	mov	r0, lr, asl #16
	mvn	lr, r0, lsr #16
.LVL1558:
	.loc 3 306 0
	ldr	r0, [sp, #8]
	.loc 3 305 0
	mvn	r9, lr, asl #16
.LVL1559:
	.loc 3 306 0
	sub	r0, r0, #1
	cmn	r0, #1
	beq	.L1844
	ldr	lr, .L1845+36
	mov	r8, r4
	str	lr, [sp, #36]
	ldr	lr, [lr]
	str	r4, [sp, #28]
	mov	r5, lr
	mov	r6, r3
.LVL1560:
	mov	r4, r5
.LVL1561:
	mov	r0, r0, lsr #1
	str	r0, [sp, #20]
	mov	r0, r0, asl #1
	str	r0, [sp, #24]
	ldr	r7, [sp, #12]
	add	r0, r0, #2
	add	r0, r0, r3
	mov	r10, fp, asl #1
	ldr	lr, .L1845+40
	and	r1, r1, #3
.LVL1562:
	add	r7, r7, #16
	str	r10, [sp, #4]
	str	r3, [sp, #32]
	str	r0, [sp, #16]
.LVL1563:
.L1790:
	.loc 3 307 0
	and	r3, r6, #3
	add	r3, r1, r3, asl #2
	ldrb	r0, [lr, r3]	@ zero_extendqisi2
	add	r3, r6, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r1, r3, asl #2
	.loc 3 307 0
	cmp	r0, r2
	.loc 3 311 0
	ldrb	r3, [lr, r3]	@ zero_extendqisi2
	.loc 3 307 0
	movge	r0, #0
	movlt	r0, #1
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	add	r10, sp, #48
	and	r5, r8, r9
	add	r0, r10, r0, asl #2
	ldrb	r5, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r0, [r0, #-8]
	.loc 3 311 0
	add	r3, r10, r3, asl #2
	.loc 3 307 0
	ldrb	r0, [r0, r5]	@ zero_extendqisi2
	mov	r10, #126
	.loc 3 311 0
	ldr	r5, [r3, #-8]
	.loc 3 307 0
	mov	r3, #128
	smlabb	r0, r3, r0, r10
	ldrh	r0, [r4, r0]
	.loc 3 312 0
	add	r6, r6, #2
.LVL1564:
	.loc 3 307 0
	strh	r0, [r7, #-16]	@ movhi
.LVL1565:
	.loc 3 306 0
	ldr	r0, [sp, #16]
	add	r3, fp, r8
.LVL1566:
	cmp	r6, r0
	.loc 3 311 0
	mov	r0, #128
	and	r3, r3, r9
.LVL1567:
	ldrb	r3, [ip, r3, asr #16]	@ zero_extendqisi2
	add	r7, r7, #16
.LVL1568:
	ldrb	r3, [r5, r3]	@ zero_extendqisi2
	smlabb	r3, r0, r3, r10
	ldr	r0, [sp, #4]
	ldrh	r3, [r4, r3]
	add	r8, r0, r8
.LVL1569:
	strh	r3, [r7, #-24]	@ movhi
	.loc 3 306 0
	bne	.L1790
	.loc 3 316 0
	ldr	r6, [sp, #8]
.LVL1570:
	ldr	r3, [sp, #32]
	tst	r6, #1
	ldr	r6, [sp, #24]
	ldr	r4, [sp, #28]
	add	r3, r3, #2
	ldr	r5, [sp, #20]
	add	r3, r3, r6
	ldr	r6, [sp, #4]
	add	r4, r4, fp, asl #1
	add	r0, r5, #1
	mla	r4, r6, r5, r4
	ldr	r5, [sp, #12]
	add	r0, r5, r0, asl #4
	str	r0, [sp, #12]
	bne	.L1766
.LVL1571:
.L1799:
	.loc 3 317 0
	and	r3, r3, #3
	add	r1, r1, r3, asl #2
	ldrb	r3, [lr, r1]	@ zero_extendqisi2
	mov	r1, #126
	cmp	r3, r2
	movge	r2, #0
.LVL1572:
	movlt	r2, #1
	add	r3, sp, #48
	add	r2, r3, r2, asl #2
	and	r4, r4, r9
	ldr	r0, [r2, #-8]
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r2, [r2]
	add	r3, r1, r3, asl #7
	ldrh	r3, [r2, r3]
	ldr	r2, [sp, #12]
	strh	r3, [r2]	@ movhi
	b	.L1766
.LVL1573:
.L1841:
.LBE346:
.LBE345:
	.loc 3 289 0
	mov	r8, #126
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	lr, .L1845+36
	add	r7, r0, #1
	ldr	r0, [sp, #12]
	ldr	r9, [lr]
	ldr	lr, .L1845+40
	add	r7, r7, r3
	and	r1, r1, #3
.LVL1574:
	add	r5, r0, #8
.LVL1575:
.L1784:
	and	r6, r3, #3
	add	r6, r1, r6, asl #2
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	bic	r10, r4, #-16777216
	cmp	r6, r2
	movge	r6, #0
	movlt	r6, #1
	add	r0, sp, #48
	add	r6, r0, r6, asl #2
	bic	r10, r10, #8388608
	ldrb	r10, [ip, r10, asr #16]	@ zero_extendqisi2
	ldr	r6, [r6, #-8]
	ldrh	r0, [sp, #4]
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
	.loc 3 290 0
	add	r3, r3, #1
.LVL1576:
	.loc 3 289 0
	smlabb	r6, r0, r6, r8
	ldrh	r6, [r9, r6]
	.loc 3 288 0
	cmp	r3, r7
	.loc 3 289 0
	strh	r6, [r5, #-8]	@ movhi
	.loc 3 292 0
	add	r4, r4, fp
.LVL1577:
	add	r5, r5, #8
.LVL1578:
	.loc 3 288 0
	bne	.L1784
.LBE356:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1579:
.L1788:
	.cfi_restore_state
.LBB357:
.LBB349:
.LBB347:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL1580:
	.loc 3 325 0
	bge	.L1837
	b	.L1794
.L1796:
	rsb	r4, r0, r4
.LVL1581:
.L1837:
	.loc 3 328 0
	cmp	r4, r0
	bge	.L1796
.L1793:
	ldr	r5, [sp, #8]
	.loc 3 345 0
	ldr	lr, .L1845+36
	add	r7, r5, #1
	ldr	lr, [lr]
	ldr	r5, [sp, #12]
	add	r7, r7, r3
	add	r5, r5, #8
	and	r1, r1, #3
.LVL1582:
	str	lr, [sp, #4]
	ldr	r10, .L1845+40
	mov	r9, #128
	b	.L1795
.LVL1583:
.L1798:
	ldrb	lr, [r10, lr]	@ zero_extendqisi2
	add	r8, sp, #48
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	lr, r8, lr, asl #2
	ldrb	r6, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 348 0
	add	r4, r4, fp
.LVL1584:
	.loc 3 345 0
	ldrb	lr, [lr, r6]	@ zero_extendqisi2
	mov	r6, #126
	smlabb	lr, r9, lr, r6
	ldr	r6, [sp, #4]
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	ldrh	lr, [r6, lr]
	.loc 3 346 0
	add	r3, r3, #1
.LVL1585:
	.loc 3 345 0
	strh	lr, [r5, #-8]	@ movhi
	.loc 3 348 0
	rsbge	r4, r0, r4
.LVL1586:
	add	r5, r5, #8
.LVL1587:
.L1795:
	.loc 3 345 0
	and	lr, r3, #3
	.loc 3 339 0
	cmp	r3, r7
	.loc 3 345 0
	add	lr, r1, lr, asl #2
	.loc 3 339 0
	bne	.L1798
.LBE347:
.LBE349:
.LBE357:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1588:
.L1794:
	.cfi_restore_state
.LBB358:
.LBB350:
.LBB348:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL1589:
	bpl	.L1793
.LVL1590:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL1591:
	bmi	.L1794
	b	.L1793
.LVL1592:
.L1843:
.LBE348:
.LBE350:
.LBE358:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r1, [r6]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L1775
	b	.L1777
.L1842:
.LBB359:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, fp
	uxth	r0, r0
	b	.L1835
.LVL1593:
.L1844:
	ldr	r0, .L1845+36
	and	r1, r1, #3
.LVL1594:
	str	r0, [sp, #36]
	ldr	lr, .L1845+40
	b	.L1799
.L1846:
	.align	2
.L1845:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR0+1220
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWholeTL15
	.word	R_FlushHTTL15
	.word	R_FlushQuadTL15
	.word	V_Palette15
	.word	filter_ditherMatrix
	.word	viewheight
.LBE359:
	.cfi_endproc
.LFE93:
	.size	R_DrawTLColumn15_PointUV_LinearZ, .-R_DrawTLColumn15_PointUV_LinearZ
	.align	2
	.type	R_DrawTLColumn16_PointUV, %function
R_DrawTLColumn16_PointUV:
.LFB100:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1595:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL1596:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1597:
	.loc 3 157 0
	bmi	.L1847
	.loc 3 171 0
	ldr	r3, .L1920
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL1598:
	.loc 3 174 0
	bne	.L1915
.LVL1599:
.L1850:
	.loc 3 215 0
	ldr	r8, .L1920+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L1856
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L1916
.L1857:
	.loc 3 224 0 is_stmt 1
	mov	fp, #2
	.loc 3 226 0
	ldr	r3, .L1920+8
	.loc 3 224 0
	ldr	r0, .L1920+12
	.loc 3 226 0
	ldr	ip, [r3]
	.loc 3 230 0
	ldr	r2, .L1920+16
	ldr	lr, .L1920+20
	.loc 3 226 0
	str	ip, [r8, #1008]
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 231 0
	ldr	ip, .L1920+24
	.loc 3 232 0
	ldr	r0, .L1920+28
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL1600:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 233 0
	ldr	r9, .L1920+32
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
.LVL1601:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L1859:
.LBB360:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE360:
	.loc 3 245 0
	add	r2, r2, #1
.LBB367:
	.loc 3 286 0
	cmp	r1, #128
.LBE367:
	.loc 3 245 0
	str	r2, [r8]
.LBB368:
	.loc 3 278 0
	add	ip, r5, #1
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL1602:
	.loc 3 286 0
	beq	.L1917
	.loc 3 294 0
	cmp	r1, #0
	bne	.L1863
.LVL1603:
	.loc 3 297 0
	mov	lr, #128
	mov	ip, #126
	ldr	r1, .L1920+36
	add	r3, r3, #8
.LVL1604:
	ldr	r0, [r1]
.LVL1605:
.L1864:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL1606:
	.loc 3 297 0
	smlabb	r1, lr, r1, ip
	ldrh	r1, [r0, r1]
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL1607:
	.loc 3 300 0
	add	r4, r4, r6
.LVL1608:
	add	r3, r3, #8
.LVL1609:
	.loc 3 296 0
	bne	.L1864
.LVL1610:
.L1847:
.LBE368:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1611:
.L1915:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1850
	.loc 3 178 0
	cmp	r8, #0
	beq	.L1851
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB369:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE369:
	.loc 3 179 0
	bne	.L1912
	.loc 3 186 0
	tst	r3, #2
	beq	.L1851
.LBB370:
	.loc 3 188 0
	uxth	fp, r10
.L1912:
	mov	r0, fp
.LVL1612:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1613:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1614:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL1615:
.L1851:
.LBE370:
	.loc 3 194 0
	ldr	r3, .L1920+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L1853
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L1918
	.loc 3 201 0
	tst	r3, #8
	beq	.L1853
.LBB371:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1616:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL1617:
.L1853:
.LBE371:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L1850
	b	.L1847
.L1916:
	.loc 3 216 0
	ldr	r3, .L1920+12
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L1919
.L1856:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1618:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L1857
.L1858:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L1920+4
	.loc 3 240 0
	ldr	ip, .L1920+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L1920+32
	add	r3, r1, r2, asl #1
.LVL1619:
	ldr	r2, [r8]
	b	.L1859
.LVL1620:
.L1863:
.LBB372:
.LBB361:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL1621:
	.loc 3 304 0
	tst	r0, r1
	bne	.L1865
.LBB362:
	.loc 3 305 0
	mov	lr, r0, asl #16
	mvn	lr, lr, lsr #16
	.loc 3 306 0
	sub	r1, r5, #1
	cmn	r1, #1
	str	r1, [sp]
	mov	r7, r1
.LVL1622:
	ldreq	r1, .L1920+36
	.loc 3 305 0
	mvn	lr, lr, asl #16
.LVL1623:
	streq	r1, [sp, #12]
	.loc 3 306 0
	beq	.L1878
	ldr	r1, .L1920+36
	mov	r0, r4
.LVL1624:
	mov	ip, r1
	ldr	r8, [ip]
	mov	ip, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, ip
	str	r1, [sp, #12]
	str	ip, [sp, #4]
	add	r1, r3, #16
	str	r5, [sp, #8]
.LVL1625:
.L1867:
	and	ip, r0, lr
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r7, r7, #2
.LVL1626:
	.loc 3 307 0
	smlabb	ip, r10, ip, r9
	ldrh	r5, [r8, ip]
	add	ip, r6, r0
	strh	r5, [r1, #-16]	@ movhi
.LVL1627:
	.loc 3 311 0
	and	ip, ip, lr
.LVL1628:
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	add	r0, fp, r0
.LVL1629:
	smlabb	ip, r10, ip, r9
	ldrh	ip, [r8, ip]
	add	r1, r1, #16
.LVL1630:
	strh	ip, [r1, #-24]	@ movhi
.LVL1631:
	.loc 3 306 0
	bpl	.L1867
	ldr	r1, [sp]
	ldr	r5, [sp, #8]
	mov	r1, r1, lsr #1
	ldr	ip, [sp, #4]
	add	r4, r4, r6, asl #1
	add	r0, r1, #1
.LVL1632:
	.loc 3 316 0
	tst	r5, #1
	mla	r4, ip, r1, r4
	add	r3, r3, r0, asl #4
	bne	.L1847
.L1878:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, lr
	ldr	r0, [sp, #12]
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL1633:
	ldr	r0, [r0]
	add	r2, r1, r2, asl #7
	ldrh	r2, [r0, r2]
	strh	r2, [r3]	@ movhi
	b	.L1847
.LVL1634:
.L1917:
.LBE362:
.LBE361:
	.loc 3 289 0
	mov	lr, #126
	ldr	r0, .L1920+36
	add	r3, r3, #8
.LVL1635:
	ldr	ip, [r0]
.LVL1636:
.L1862:
	bic	r0, r4, #-16777216
	bic	r0, r0, #8388608
	ldrb	r0, [r2, r0, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL1637:
	.loc 3 289 0
	smlabb	r0, r1, r0, lr
	ldrh	r0, [ip, r0]
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	strh	r0, [r3, #-8]	@ movhi
.LVL1638:
	.loc 3 292 0
	add	r4, r4, r6
.LVL1639:
	add	r3, r3, #8
.LVL1640:
	.loc 3 288 0
	bne	.L1862
.LBE372:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1641:
.L1865:
	.cfi_restore_state
.LBB373:
.LBB365:
.LBB363:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL1642:
	.loc 3 325 0
	blt	.L1871
	.loc 3 328 0
	cmp	r4, r1
	blt	.L1870
.L1873:
	rsb	r4, r1, r4
.LVL1643:
	cmp	r1, r4
	ble	.L1873
.L1870:
	.loc 3 345 0
	ldr	r0, .L1920+36
	add	r3, r3, #8
.LVL1644:
	ldr	r7, [r0]
.LVL1645:
	mov	r5, #128
	mov	lr, #126
	b	.L1872
.LVL1646:
.L1875:
	ldrb	r0, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL1647:
	.loc 3 345 0
	smlabb	r0, r5, r0, lr
	ldrh	r0, [r7, r0]
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	strh	r0, [r3, #-8]	@ movhi
.LVL1648:
	.loc 3 348 0
	rsbge	r4, r1, r4
.LVL1649:
	add	r3, r3, #8
.LVL1650:
.L1872:
	.loc 3 339 0
	subs	ip, ip, #1
.LVL1651:
	bcs	.L1875
.LBE363:
.LBE365:
.LBE373:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1652:
.L1871:
	.cfi_restore_state
.LBB374:
.LBB366:
.LBB364:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL1653:
	bpl	.L1870
.LVL1654:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL1655:
	bmi	.L1871
	b	.L1870
.LVL1656:
.L1919:
.LBE364:
.LBE366:
.LBE374:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L1856
	b	.L1858
.L1918:
.LBB375:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1657:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL1658:
.LBE375:
	b	.L1853
.L1921:
	.align	2
.L1920:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWholeTL16
	.word	R_FlushHTTL16
	.word	R_FlushQuadTL16
	.word	.LANCHOR0+1220
	.word	V_Palette16
	.word	viewheight
	.cfi_endproc
.LFE100:
	.size	R_DrawTLColumn16_PointUV, .-R_DrawTLColumn16_PointUV
	.align	2
	.type	R_DrawTLColumn16_PointUV_PointZ, %function
R_DrawTLColumn16_PointUV_PointZ:
.LFB101:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1659:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL1660:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1661:
	.loc 3 157 0
	bmi	.L1922
	.loc 3 171 0
	ldr	r3, .L1995
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL1662:
	.loc 3 174 0
	bne	.L1990
.LVL1663:
.L1925:
	.loc 3 215 0
	ldr	r8, .L1995+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L1931
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L1991
.L1932:
	.loc 3 224 0 is_stmt 1
	mov	fp, #2
	.loc 3 226 0
	ldr	r3, .L1995+8
	.loc 3 224 0
	ldr	r0, .L1995+12
	.loc 3 226 0
	ldr	ip, [r3]
	.loc 3 230 0
	ldr	r2, .L1995+16
	ldr	lr, .L1995+20
	.loc 3 226 0
	str	ip, [r8, #1008]
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 231 0
	ldr	ip, .L1995+24
	.loc 3 232 0
	ldr	r0, .L1995+28
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L1995+32
	.loc 3 221 0
	ldr	r10, [r7]
.LVL1664:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	str	r3, [sp, #4]
.LVL1665:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L1934:
.LVL1666:
.LBB376:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE376:
	.loc 3 245 0
	add	r2, r2, #1
.LBB383:
	.loc 3 286 0
	cmp	r1, #128
.LBE383:
	.loc 3 245 0
	str	r2, [r8]
.LBB384:
	.loc 3 252 0
	ldr	r0, [r7, #44]
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL1667:
	.loc 3 278 0
	add	lr, r5, #1
.LVL1668:
	.loc 3 286 0
	beq	.L1992
	.loc 3 294 0
	cmp	r1, #0
	bne	.L1938
.LVL1669:
	.loc 3 297 0
	mov	r7, #128
.LVL1670:
	mov	lr, #126
	ldr	r1, .L1995+36
	ldr	r3, [sp, #4]
	ldr	ip, [r1]
	add	r3, r3, #8
.LVL1671:
.L1939:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL1672:
	.loc 3 297 0
	ldrb	r1, [r0, r1]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	smlabb	r1, r7, r1, lr
	ldrh	r1, [ip, r1]
	.loc 3 300 0
	add	r4, r4, r6
.LVL1673:
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL1674:
	add	r3, r3, #8
.LVL1675:
	.loc 3 296 0
	bne	.L1939
.LVL1676:
.L1922:
.LBE384:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1677:
.L1990:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L1925
	.loc 3 178 0
	cmp	r8, #0
	beq	.L1926
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB385:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE385:
	.loc 3 179 0
	bne	.L1987
	.loc 3 186 0
	tst	r3, #2
	beq	.L1926
.LBB386:
	.loc 3 188 0
	uxth	fp, r10
.L1987:
	mov	r0, fp
.LVL1678:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1679:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1680:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL1681:
.L1926:
.LBE386:
	.loc 3 194 0
	ldr	r3, .L1995+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L1928
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L1993
	.loc 3 201 0
	tst	r3, #8
	beq	.L1928
.LBB387:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1682:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL1683:
.L1928:
.LBE387:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L1925
	b	.L1922
.L1991:
	.loc 3 216 0
	ldr	r3, .L1995+12
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L1994
.L1931:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1684:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L1932
.L1933:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L1995+4
	.loc 3 240 0
	ldr	ip, .L1995+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L1995+32
	add	r3, r1, r2, asl #1
	str	r3, [sp, #4]
.LVL1685:
	ldr	r2, [r8]
	b	.L1934
.LVL1686:
.L1938:
.LBB388:
.LBB377:
	.loc 3 303 0
	sub	ip, r1, #1
.LVL1687:
	.loc 3 304 0
	tst	ip, r1
	bne	.L1940
.LBB378:
	.loc 3 305 0
	mov	r7, ip, asl #16
.LVL1688:
	mvn	r7, r7, lsr #16
	.loc 3 306 0
	sub	r3, r5, #1
	cmn	r3, #1
	str	r3, [sp, #8]
	ldreq	r3, .L1995+36
	.loc 3 305 0
	mvn	r7, r7, asl #16
.LVL1689:
	streq	r3, [sp, #20]
	.loc 3 306 0
	beq	.L1953
	ldr	r1, .L1995+36
	mov	ip, r4
.LVL1690:
	mov	lr, r1
	ldr	r8, [lr]
	mov	lr, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, lr
	str	r1, [sp, #20]
	ldr	r1, [sp, #4]
	str	lr, [sp, #12]
	add	r1, r1, #16
	str	r5, [sp, #16]
.LVL1691:
.L1942:
	and	lr, ip, r7
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r3, r3, #2
.LVL1692:
	.loc 3 307 0
	ldrb	r5, [r0, lr]	@ zero_extendqisi2
	add	lr, r6, ip
	smlabb	r5, r10, r5, r9
	ldrh	r5, [r8, r5]
	.loc 3 311 0
	and	lr, lr, r7
	.loc 3 307 0
	strh	r5, [r1, #-16]	@ movhi
.LVL1693:
	.loc 3 311 0
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	add	ip, fp, ip
.LVL1694:
	ldrb	lr, [r0, lr]	@ zero_extendqisi2
	add	r1, r1, #16
.LVL1695:
	smlabb	lr, r10, lr, r9
	ldrh	lr, [r8, lr]
	strh	lr, [r1, #-24]	@ movhi
.LVL1696:
	.loc 3 306 0
	bpl	.L1942
	ldr	r3, [sp, #8]
	add	r4, r4, r6, asl #1
	mov	r1, r3, lsr #1
	ldr	r3, [sp, #12]
	ldr	r5, [sp, #16]
	mla	r4, r3, r1, r4
	ldr	r3, [sp, #4]
	add	ip, r1, #1
.LVL1697:
	add	r3, r3, ip, asl #4
	.loc 3 316 0
	tst	r5, #1
	str	r3, [sp, #4]
	bne	.L1922
.L1953:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, r7
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL1698:
	ldr	r3, [sp, #20]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	ldr	ip, [r3]
	add	r2, r1, r2, asl #7
	ldrh	r2, [ip, r2]
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	b	.L1922
.LVL1699:
.L1992:
.LBE378:
.LBE377:
	.loc 3 289 0
	mov	lr, #126
	ldr	ip, .L1995+36
	ldr	r3, [sp, #4]
	ldr	r7, [ip]
.LVL1700:
	add	r3, r3, #8
.LVL1701:
.L1937:
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL1702:
	.loc 3 289 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	smlabb	ip, r1, ip, lr
	ldrh	ip, [r7, ip]
	.loc 3 292 0
	add	r4, r4, r6
.LVL1703:
	.loc 3 289 0
	strh	ip, [r3, #-8]	@ movhi
.LVL1704:
	add	r3, r3, #8
.LVL1705:
	.loc 3 288 0
	bne	.L1937
.LBE388:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1706:
.L1940:
	.cfi_restore_state
.LBB389:
.LBB381:
.LBB379:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL1707:
	.loc 3 325 0
	blt	.L1946
	.loc 3 328 0
	cmp	r4, r1
	blt	.L1945
.L1948:
	rsb	r4, r1, r4
.LVL1708:
	cmp	r1, r4
	ble	.L1948
.L1945:
	.loc 3 345 0
	ldr	ip, .L1995+36
	ldr	r3, [sp, #4]
	ldr	r8, [ip]
	add	r3, r3, #8
	mov	r7, #128
.LVL1709:
	mov	r5, #126
	b	.L1947
.LVL1710:
.L1950:
	ldrb	ip, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL1711:
	.loc 3 345 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	smlabb	ip, r7, ip, r5
	ldrh	ip, [r8, ip]
	.loc 3 348 0
	rsbge	r4, r1, r4
	.loc 3 345 0
	strh	ip, [r3, #-8]	@ movhi
.LVL1712:
	add	r3, r3, #8
.LVL1713:
.L1947:
	.loc 3 339 0
	subs	lr, lr, #1
.LVL1714:
	bcs	.L1950
.LBE379:
.LBE381:
.LBE389:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1715:
.L1946:
	.cfi_restore_state
.LBB390:
.LBB382:
.LBB380:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL1716:
	bpl	.L1945
.LVL1717:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL1718:
	bmi	.L1946
	b	.L1945
.LVL1719:
.L1994:
.LBE380:
.LBE382:
.LBE390:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L1931
	b	.L1933
.L1993:
.LBB391:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1720:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL1721:
.LBE391:
	b	.L1928
.L1996:
	.align	2
.L1995:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWholeTL16
	.word	R_FlushHTTL16
	.word	R_FlushQuadTL16
	.word	.LANCHOR0+1220
	.word	V_Palette16
	.word	viewheight
	.cfi_endproc
.LFE101:
	.size	R_DrawTLColumn16_PointUV_PointZ, .-R_DrawTLColumn16_PointUV_PointZ
	.align	2
	.type	R_DrawTLColumn16_PointUV_LinearZ, %function
R_DrawTLColumn16_PointUV_LinearZ:
.LFB102:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1722:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r5, r7}
	.loc 3 113 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 3 157 0
	subs	r3, r7, r5
	.loc 3 117 0
	ldr	fp, [r0, #16]
.LVL1723:
	.loc 3 157 0
	str	r3, [sp, #8]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL1724:
	.loc 3 157 0
	bmi	.L1997
	.loc 3 171 0
	ldr	r3, .L2076
.LVL1725:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	mov	r6, r0
	.loc 3 171 0
	mla	r4, fp, r3, r4
.LVL1726:
	.loc 3 174 0
	bne	.L2070
.LVL1727:
.L2000:
	.loc 3 215 0
	ldr	r7, .L2076+4
	ldr	r2, [r7]
	cmp	r2, #4
	beq	.L2006
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L2071
.L2007:
	.loc 3 226 0 is_stmt 1
	ldr	r3, .L2076+8
	.loc 3 224 0
	mov	r9, #2
	.loc 3 233 0
	ldr	r5, .L2076+12
	.loc 3 226 0
	ldr	lr, [r3]
	.loc 3 222 0
	ldmia	r6, {r1, r3}
	.loc 3 233 0
	add	r5, r5, r3, asl #3
	str	r5, [sp, #12]
.LVL1728:
	mov	r5, #0
.LVL1729:
	.loc 3 224 0
	ldr	ip, .L2076+16
	.loc 3 230 0
	ldr	r2, .L2076+20
	ldr	r8, .L2076+24
.LVL1730:
	.loc 3 226 0
	str	lr, [r7, #1008]
	.loc 3 231 0
	ldr	lr, .L2076+28
	.loc 3 223 0
	ldr	r0, [r6, #8]
	.loc 3 224 0
	str	r9, [ip, #-1204]
	.loc 3 231 0
	stmia	r2, {r8, lr}
	.loc 3 232 0
	ldr	ip, .L2076+32
	.loc 3 221 0
	str	r1, [r7, #12]
	.loc 3 222 0
	str	r3, [r7, #4]
	str	r3, [r7, #16]
	.loc 3 223 0
	str	r0, [r7, #8]
	str	r0, [r7, #32]
	.loc 3 232 0
	str	ip, [r2, #8]
.L2009:
.LBB392:
	.loc 3 259 0
	ldr	r2, [r6, #12]
	.loc 3 286 0
	ldr	r0, [r6, #24]
	.loc 3 260 0
	ldr	ip, [r6, #48]
	ldr	lr, [r6, #44]
.LBE392:
	.loc 3 245 0
	add	r5, r5, #1
.LBB399:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	r0, #128
	.loc 3 260 0
	str	ip, [sp, #44]
.LBE399:
	.loc 3 245 0
	str	r5, [r7]
.LBB400:
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	lr, [sp, #40]
	.loc 3 251 0
	ldr	ip, [r6, #32]
.LVL1731:
	.loc 3 286 0
	beq	.L2072
	.loc 3 294 0
	cmp	r0, #0
	bne	.L2017
.LVL1732:
	.loc 3 297 0
	mov	r8, #128
	ldr	r0, .L2076+36
	ldr	lr, [sp, #8]
	ldr	r9, [r0]
	ldr	r0, [sp, #12]
	add	r7, lr, #1
	ldr	lr, .L2076+40
	add	r7, r7, r3
	and	r1, r1, #3
.LVL1733:
	add	r5, r0, #8
.LVL1734:
.L2018:
	and	r0, r3, #3
	add	r0, r1, r0, asl #2
	ldrb	r0, [lr, r0]	@ zero_extendqisi2
	add	r6, sp, #48
	cmp	r0, r2
	movge	r0, #0
	movlt	r0, #1
	add	r0, r6, r0, asl #2
	mov	r6, #126
	ldrb	r10, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r0, [r0, #-8]
	.loc 3 298 0
	add	r3, r3, #1
.LVL1735:
	.loc 3 297 0
	ldrb	r0, [r0, r10]	@ zero_extendqisi2
	.loc 3 296 0
	cmp	r3, r7
	.loc 3 297 0
	smlabb	r0, r8, r0, r6
	ldrh	r0, [r9, r0]
	.loc 3 300 0
	add	r4, r4, fp
.LVL1736:
	.loc 3 297 0
	strh	r0, [r5, #-8]	@ movhi
	add	r5, r5, #8
.LVL1737:
	.loc 3 296 0
	bne	.L2018
.LVL1738:
.L1997:
.LBE400:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1739:
.L2070:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2000
	.loc 3 178 0
	cmp	r5, #0
	beq	.L2001
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB401:
	.loc 3 181 0
	mvnne	r9, r8
	uxthne	r9, r9
.LBE401:
	.loc 3 179 0
	bne	.L2065
	.loc 3 186 0
	tst	r3, #2
	beq	.L2001
.LBB402:
	.loc 3 188 0
	uxth	r9, r8
.L2065:
	mov	r0, r9
.LVL1740:
	mov	r1, fp
	bl	__aeabi_idiv
.LVL1741:
	.loc 3 190 0
	ldr	r3, [sp, #8]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r9
.LVL1742:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL1743:
	.loc 3 190 0
	str	r3, [sp, #8]
.LVL1744:
.L2001:
.LBE402:
	.loc 3 194 0
	ldr	r3, .L2076+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r7, r3
	beq	.L2003
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L2073
	.loc 3 201 0
	tst	r3, #8
	beq	.L2003
.LBB403:
	.loc 3 203 0
	mov	r1, fp
	uxth	r0, r8
.LVL1745:
.L2066:
	bl	__aeabi_idiv
.LVL1746:
	.loc 3 205 0
	ldr	r3, [sp, #8]
	.loc 3 204 0
	rsb	r7, r0, r7
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r7, [r6, #8]
.LVL1747:
	.loc 3 205 0
	str	r3, [sp, #8]
.LVL1748:
.L2003:
.LBE403:
	.loc 3 208 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bgt	.L2000
	b	.L1997
.L2071:
	.loc 3 216 0
	ldr	r3, .L2076+16
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L2074
.L2006:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1749:
	.loc 3 219 0
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L2007
	ldr	r1, [r6]
.L2008:
	.loc 3 235 0
	ldr	r0, [r6, #4]
	.loc 3 238 0
	ldr	ip, [r7, #4]
	.loc 3 236 0
	ldr	r3, [r6, #8]
	.loc 3 238 0
	cmp	r0, ip
	.loc 3 235 0
	add	ip, r7, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r0, [ip, #16]
	ldr	ip, .L2076+4
	.loc 3 240 0
	ldr	lr, .L2076+4
	.loc 3 239 0
	strgt	r0, [ip, #4]
	.loc 3 240 0
	ldr	ip, [r7, #8]
	.loc 3 243 0
	add	r2, r2, r0, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	ldr	ip, .L2076+12
	.loc 3 241 0
	strlt	r3, [lr, #8]
	.loc 3 243 0
	add	r2, ip, r2, asl #1
	.loc 3 235 0
	mov	r3, r0
	ldr	r5, [r7]
	.loc 3 243 0
	str	r2, [sp, #12]
.LVL1750:
	b	.L2009
.LVL1751:
.L2017:
.LBB404:
.LBB393:
	.loc 3 303 0
	sub	lr, r0, #1
.LVL1752:
	.loc 3 304 0
	tst	lr, r0
	bne	.L2019
.LBB394:
	.loc 3 305 0
	mov	r0, lr, asl #16
	mvn	lr, r0, lsr #16
.LVL1753:
	.loc 3 306 0
	ldr	r0, [sp, #8]
	.loc 3 305 0
	mvn	r9, lr, asl #16
.LVL1754:
	.loc 3 306 0
	sub	r0, r0, #1
	cmn	r0, #1
	beq	.L2075
	ldr	lr, .L2076+36
	mov	r8, r4
	str	lr, [sp, #36]
	ldr	lr, [lr]
	str	r4, [sp, #28]
	mov	r5, lr
	mov	r6, r3
.LVL1755:
	mov	r4, r5
.LVL1756:
	mov	r0, r0, lsr #1
	str	r0, [sp, #20]
	mov	r0, r0, asl #1
	str	r0, [sp, #24]
	ldr	r7, [sp, #12]
	add	r0, r0, #2
	add	r0, r0, r3
	mov	r10, fp, asl #1
	ldr	lr, .L2076+40
	and	r1, r1, #3
.LVL1757:
	add	r7, r7, #16
	str	r10, [sp, #4]
	str	r3, [sp, #32]
	str	r0, [sp, #16]
.LVL1758:
.L2021:
	.loc 3 307 0
	and	r3, r6, #3
	add	r3, r1, r3, asl #2
	ldrb	r0, [lr, r3]	@ zero_extendqisi2
	add	r3, r6, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r1, r3, asl #2
	.loc 3 307 0
	cmp	r0, r2
	.loc 3 311 0
	ldrb	r3, [lr, r3]	@ zero_extendqisi2
	.loc 3 307 0
	movge	r0, #0
	movlt	r0, #1
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	add	r10, sp, #48
	and	r5, r8, r9
	add	r0, r10, r0, asl #2
	ldrb	r5, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r0, [r0, #-8]
	.loc 3 311 0
	add	r3, r10, r3, asl #2
	.loc 3 307 0
	ldrb	r0, [r0, r5]	@ zero_extendqisi2
	mov	r10, #126
	.loc 3 311 0
	ldr	r5, [r3, #-8]
	.loc 3 307 0
	mov	r3, #128
	smlabb	r0, r3, r0, r10
	ldrh	r0, [r4, r0]
	.loc 3 312 0
	add	r6, r6, #2
.LVL1759:
	.loc 3 307 0
	strh	r0, [r7, #-16]	@ movhi
.LVL1760:
	.loc 3 306 0
	ldr	r0, [sp, #16]
	add	r3, fp, r8
.LVL1761:
	cmp	r6, r0
	.loc 3 311 0
	mov	r0, #128
	and	r3, r3, r9
.LVL1762:
	ldrb	r3, [ip, r3, asr #16]	@ zero_extendqisi2
	add	r7, r7, #16
.LVL1763:
	ldrb	r3, [r5, r3]	@ zero_extendqisi2
	smlabb	r3, r0, r3, r10
	ldr	r0, [sp, #4]
	ldrh	r3, [r4, r3]
	add	r8, r0, r8
.LVL1764:
	strh	r3, [r7, #-24]	@ movhi
	.loc 3 306 0
	bne	.L2021
	.loc 3 316 0
	ldr	r6, [sp, #8]
.LVL1765:
	ldr	r3, [sp, #32]
	tst	r6, #1
	ldr	r6, [sp, #24]
	ldr	r4, [sp, #28]
	add	r3, r3, #2
	ldr	r5, [sp, #20]
	add	r3, r3, r6
	ldr	r6, [sp, #4]
	add	r4, r4, fp, asl #1
	add	r0, r5, #1
	mla	r4, r6, r5, r4
	ldr	r5, [sp, #12]
	add	r0, r5, r0, asl #4
	str	r0, [sp, #12]
	bne	.L1997
.LVL1766:
.L2030:
	.loc 3 317 0
	and	r3, r3, #3
	add	r1, r1, r3, asl #2
	ldrb	r3, [lr, r1]	@ zero_extendqisi2
	mov	r1, #126
	cmp	r3, r2
	movge	r2, #0
.LVL1767:
	movlt	r2, #1
	add	r3, sp, #48
	add	r2, r3, r2, asl #2
	and	r4, r4, r9
	ldr	r0, [r2, #-8]
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r2, [r2]
	add	r3, r1, r3, asl #7
	ldrh	r3, [r2, r3]
	ldr	r2, [sp, #12]
	strh	r3, [r2]	@ movhi
	b	.L1997
.LVL1768:
.L2072:
.LBE394:
.LBE393:
	.loc 3 289 0
	mov	r8, #126
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	lr, .L2076+36
	add	r7, r0, #1
	ldr	r0, [sp, #12]
	ldr	r9, [lr]
	ldr	lr, .L2076+40
	add	r7, r7, r3
	and	r1, r1, #3
.LVL1769:
	add	r5, r0, #8
.LVL1770:
.L2015:
	and	r6, r3, #3
	add	r6, r1, r6, asl #2
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	bic	r10, r4, #-16777216
	cmp	r6, r2
	movge	r6, #0
	movlt	r6, #1
	add	r0, sp, #48
	add	r6, r0, r6, asl #2
	bic	r10, r10, #8388608
	ldrb	r10, [ip, r10, asr #16]	@ zero_extendqisi2
	ldr	r6, [r6, #-8]
	ldrh	r0, [sp, #4]
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
	.loc 3 290 0
	add	r3, r3, #1
.LVL1771:
	.loc 3 289 0
	smlabb	r6, r0, r6, r8
	ldrh	r6, [r9, r6]
	.loc 3 288 0
	cmp	r3, r7
	.loc 3 289 0
	strh	r6, [r5, #-8]	@ movhi
	.loc 3 292 0
	add	r4, r4, fp
.LVL1772:
	add	r5, r5, #8
.LVL1773:
	.loc 3 288 0
	bne	.L2015
.LBE404:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1774:
.L2019:
	.cfi_restore_state
.LBB405:
.LBB397:
.LBB395:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL1775:
	.loc 3 325 0
	bge	.L2068
	b	.L2025
.L2027:
	rsb	r4, r0, r4
.LVL1776:
.L2068:
	.loc 3 328 0
	cmp	r4, r0
	bge	.L2027
.L2024:
	ldr	r5, [sp, #8]
	.loc 3 345 0
	ldr	lr, .L2076+36
	add	r7, r5, #1
	ldr	lr, [lr]
	ldr	r5, [sp, #12]
	add	r7, r7, r3
	add	r5, r5, #8
	and	r1, r1, #3
.LVL1777:
	str	lr, [sp, #4]
	ldr	r10, .L2076+40
	mov	r9, #128
	b	.L2026
.LVL1778:
.L2029:
	ldrb	lr, [r10, lr]	@ zero_extendqisi2
	add	r8, sp, #48
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	lr, r8, lr, asl #2
	ldrb	r6, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 348 0
	add	r4, r4, fp
.LVL1779:
	.loc 3 345 0
	ldrb	lr, [lr, r6]	@ zero_extendqisi2
	mov	r6, #126
	smlabb	lr, r9, lr, r6
	ldr	r6, [sp, #4]
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	ldrh	lr, [r6, lr]
	.loc 3 346 0
	add	r3, r3, #1
.LVL1780:
	.loc 3 345 0
	strh	lr, [r5, #-8]	@ movhi
	.loc 3 348 0
	rsbge	r4, r0, r4
.LVL1781:
	add	r5, r5, #8
.LVL1782:
.L2026:
	.loc 3 345 0
	and	lr, r3, #3
	.loc 3 339 0
	cmp	r3, r7
	.loc 3 345 0
	add	lr, r1, lr, asl #2
	.loc 3 339 0
	bne	.L2029
.LBE395:
.LBE397:
.LBE405:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1783:
.L2025:
	.cfi_restore_state
.LBB406:
.LBB398:
.LBB396:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL1784:
	bpl	.L2024
.LVL1785:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL1786:
	bmi	.L2025
	b	.L2024
.LVL1787:
.L2074:
.LBE396:
.LBE398:
.LBE406:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r1, [r6]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L2006
	b	.L2008
.L2073:
.LBB407:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, fp
	uxth	r0, r0
	b	.L2066
.LVL1788:
.L2075:
	ldr	r0, .L2076+36
	and	r1, r1, #3
.LVL1789:
	str	r0, [sp, #36]
	ldr	lr, .L2076+40
	b	.L2030
.L2077:
	.align	2
.L2076:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR0+1220
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWholeTL16
	.word	R_FlushHTTL16
	.word	R_FlushQuadTL16
	.word	V_Palette16
	.word	filter_ditherMatrix
	.word	viewheight
.LBE407:
	.cfi_endproc
.LFE102:
	.size	R_DrawTLColumn16_PointUV_LinearZ, .-R_DrawTLColumn16_PointUV_LinearZ
	.align	2
	.type	R_DrawTLColumn32_PointUV, %function
R_DrawTLColumn32_PointUV:
.LFB109:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1790:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r6, r9, r8
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL1791:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1792:
	.loc 3 157 0
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 171 0
	ldr	r3, .L2153
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL1793:
	.loc 3 174 0
	bne	.L2148
.LVL1794:
.L2081:
	.loc 3 215 0
	ldr	r8, .L2153+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L2087
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L2149
.L2088:
	.loc 3 224 0 is_stmt 1
	mov	fp, #2
	.loc 3 226 0
	ldr	r3, .L2153+8
	.loc 3 224 0
	ldr	r0, .L2153+12
	.loc 3 226 0
	ldr	ip, [r3]
	.loc 3 230 0
	ldr	lr, .L2153+16
	ldr	r3, .L2153+20
	.loc 3 226 0
	str	ip, [r8, #1008]
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 231 0
	ldr	ip, .L2153+24
	.loc 3 232 0
	ldr	r0, .L2153+28
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
	mov	r3, #0
	.loc 3 222 0
	ldr	r2, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL1795:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 233 0
	ldr	r9, .L2153+32
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	add	r2, r9, r2, asl #4
.LVL1796:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L2090:
.LBB408:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE408:
	.loc 3 245 0
	add	r3, r3, #1
.LBB413:
	.loc 3 286 0
	cmp	r1, #128
.LBE413:
	.loc 3 245 0
	str	r3, [r8]
.LBB414:
	.loc 3 251 0
	ldr	r3, [r7, #32]
.LVL1797:
	.loc 3 286 0
	beq	.L2150
	.loc 3 294 0
	cmp	r1, #0
	bne	.L2094
.LVL1798:
	ldr	r0, .L2153+36
	add	r6, r6, #1
.LVL1799:
	ldr	ip, [r0]
.LVL1800:
.L2095:
	.loc 3 297 0
	ldrb	r0, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r5
.LVL1801:
	.loc 3 297 0
	add	r0, ip, r0, asl #8
	ldr	r0, [r0, #252]
	str	r0, [r2, r1, asl #4]
.LVL1802:
	add	r1, r1, #1
.LVL1803:
	.loc 3 296 0
	cmp	r1, r6
	bne	.L2095
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1804:
.L2148:
.LBE414:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2081
	.loc 3 178 0
	cmp	r8, #0
	beq	.L2082
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB415:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE415:
	.loc 3 179 0
	bne	.L2143
	.loc 3 186 0
	tst	r3, #2
	beq	.L2082
.LBB416:
	.loc 3 188 0
	uxth	fp, r10
.L2143:
	mov	r0, fp
.LVL1805:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1806:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1807:
	.loc 3 189 0
	str	r8, [r7, #4]
.LVL1808:
	.loc 3 190 0
	rsb	r6, r0, r6
.LVL1809:
.L2082:
.LBE416:
	.loc 3 194 0
	ldr	r3, .L2153+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L2084
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L2151
	.loc 3 201 0
	tst	r3, #8
	beq	.L2084
.LBB417:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1810:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL1811:
	.loc 3 205 0
	rsb	r6, r0, r6
.LVL1812:
.L2084:
.LBE417:
	.loc 3 208 0
	cmp	r6, #0
	bgt	.L2081
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L2149:
	.loc 3 216 0
	ldr	r2, .L2153+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L2152
.L2087:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1813:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L2088
.L2089:
	.loc 3 235 0
	ldr	r2, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L2153+4
	.loc 3 240 0
	ldr	ip, .L2153+4
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L2153+32
	add	r2, r1, r3, asl #2
.LVL1814:
	ldr	r3, [r8]
	b	.L2090
.LVL1815:
.L2094:
.LBB418:
.LBB409:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL1816:
	.loc 3 304 0
	tst	r0, r1
	bne	.L2096
.LBB410:
	.loc 3 305 0
	mov	lr, r0, asl #16
	mvn	lr, lr, lsr #16
	.loc 3 306 0
	sub	r10, r6, #1
	cmn	r10, #1
	.loc 3 305 0
	mvn	lr, lr, asl #16
.LVL1817:
	.loc 3 306 0
	mov	r7, r10
.LVL1818:
	ldreq	fp, .L2153+36
	beq	.L2108
	mov	r0, r4
.LVL1819:
	ldr	fp, .L2153+36
	add	r1, r2, #32
.LVL1820:
	ldr	r8, [fp]
	mov	r9, r5, asl #1
.LVL1821:
.L2098:
	.loc 3 307 0
	and	ip, r0, lr
	ldrb	ip, [r3, ip, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r7, r7, #2
.LVL1822:
	.loc 3 307 0
	add	ip, r8, ip, asl #8
	ldr	ip, [ip, #252]
	add	r1, r1, #32
.LVL1823:
	str	ip, [r1, #-64]
	add	ip, r5, r0
.LVL1824:
	.loc 3 311 0
	and	ip, ip, lr
.LVL1825:
	ldrb	ip, [r3, ip, asr #16]	@ zero_extendqisi2
	add	r0, r9, r0
.LVL1826:
	add	ip, r8, ip, asl #8
	ldr	ip, [ip, #252]
	str	ip, [r1, #-48]
.LVL1827:
	.loc 3 306 0
	bpl	.L2098
	mov	r10, r10, lsr #1
	add	r4, r4, r5, asl #1
	add	r1, r10, #1
	.loc 3 316 0
	tst	r6, #1
	mla	r4, r9, r10, r4
	add	r2, r2, r1, asl #5
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1828:
.L2108:
	.loc 3 317 0
	and	r4, r4, lr
	ldrb	r1, [r3, r4, asr #16]	@ zero_extendqisi2
	ldr	r3, [fp]
.LVL1829:
	add	r3, r3, r1, asl #8
	ldr	r3, [r3, #252]
	str	r3, [r2]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1830:
.L2150:
.LBE410:
.LBE409:
	.loc 3 286 0
	mov	r1, #0
	ldr	r0, .L2153+36
	add	r6, r6, #1
.LVL1831:
	ldr	ip, [r0]
.LVL1832:
.L2093:
	.loc 3 289 0
	bic	r0, r4, #-16777216
	bic	r0, r0, #8388608
	ldrb	r0, [r3, r0, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL1833:
	.loc 3 289 0
	add	r0, ip, r0, asl #8
	ldr	r0, [r0, #252]
	str	r0, [r2, r1, asl #4]
.LVL1834:
	add	r1, r1, #1
.LVL1835:
	.loc 3 288 0
	cmp	r1, r6
	bne	.L2093
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1836:
.L2096:
.LBB412:
.LBB411:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL1837:
	.loc 3 325 0
	bge	.L2145
	b	.L2102
.L2104:
	rsb	r4, r1, r4
.LVL1838:
.L2145:
	.loc 3 328 0
	cmp	r4, r1
	bge	.L2104
.L2101:
	.loc 3 345 0
	ldr	r0, .L2153+36
	add	r6, r6, #1
.LVL1839:
	ldr	lr, [r0]
	mov	r0, #0
.LVL1840:
.L2103:
	ldrb	ip, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r5
.LVL1841:
	.loc 3 345 0
	add	ip, lr, ip, asl #8
	ldr	ip, [ip, #252]
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	str	ip, [r2, r0, asl #4]
.LVL1842:
	add	r0, r0, #1
.LVL1843:
	.loc 3 348 0
	rsbge	r4, r1, r4
.LVL1844:
	.loc 3 339 0
	cmp	r0, r6
	bne	.L2103
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1845:
.L2102:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL1846:
	bpl	.L2101
.LVL1847:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL1848:
	bmi	.L2102
	b	.L2101
.LVL1849:
.L2152:
.LBE411:
.LBE412:
.LBE418:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r7]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L2087
	b	.L2089
.L2151:
.LBB419:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r5
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1850:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL1851:
	.loc 3 199 0
	rsb	r6, r0, r6
.LVL1852:
.LBE419:
	b	.L2084
.L2154:
	.align	2
.L2153:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushWholeTL32
	.word	.LANCHOR1
	.word	R_FlushHTTL32
	.word	R_FlushQuadTL32
	.word	.LANCHOR0+3140
	.word	V_Palette32
	.word	viewheight
	.cfi_endproc
.LFE109:
	.size	R_DrawTLColumn32_PointUV, .-R_DrawTLColumn32_PointUV
	.align	2
	.type	R_DrawTLColumn32_PointUV_PointZ, %function
R_DrawTLColumn32_PointUV_PointZ:
.LFB110:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1853:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r6, r9, r8
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL1854:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1855:
	.loc 3 157 0
	bmi	.L2155
	.loc 3 171 0
	ldr	r3, .L2230
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL1856:
	.loc 3 174 0
	bne	.L2225
.LVL1857:
.L2158:
	.loc 3 215 0
	ldr	r8, .L2230+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L2164
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L2226
.L2165:
	.loc 3 224 0 is_stmt 1
	mov	fp, #2
	.loc 3 226 0
	ldr	r3, .L2230+8
	.loc 3 224 0
	ldr	ip, .L2230+12
	.loc 3 226 0
	ldr	lr, [r3]
	.loc 3 230 0
	ldr	r9, .L2230+16
	ldr	r3, .L2230+20
	.loc 3 226 0
	str	lr, [r8, #1008]
	.loc 3 224 0
	str	fp, [ip, #-1204]
	.loc 3 231 0
	ldr	lr, .L2230+24
	.loc 3 232 0
	ldr	ip, .L2230+28
	.loc 3 231 0
	stmia	r3, {r9, lr}
	.loc 3 232 0
	str	ip, [r3, #8]
	mov	r3, #0
	.loc 3 222 0
	ldr	r2, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL1858:
	.loc 3 223 0
	ldr	r0, [r7, #8]
	.loc 3 233 0
	ldr	r1, .L2230+32
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r1, r1, r2, asl #4
.LVL1859:
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
.L2167:
.LBB420:
	.loc 3 286 0
	ldr	r0, [r7, #24]
.LBE420:
	.loc 3 245 0
	add	r3, r3, #1
.LBB427:
	.loc 3 286 0
	cmp	r0, #128
.LBE427:
	.loc 3 245 0
	str	r3, [r8]
.LBB428:
	.loc 3 252 0
	ldr	r2, [r7, #44]
	.loc 3 251 0
	ldr	r3, [r7, #32]
.LVL1860:
	.loc 3 286 0
	beq	.L2227
	.loc 3 294 0
	cmp	r0, #0
	bne	.L2171
.LVL1861:
	ldr	ip, .L2230+36
	add	r6, r6, #1
.LVL1862:
	ldr	lr, [ip]
.LVL1863:
.L2172:
	.loc 3 297 0
	ldrb	ip, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r5
.LVL1864:
	.loc 3 297 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	add	ip, lr, ip, asl #8
	ldr	ip, [ip, #252]
	str	ip, [r1, r0, asl #4]
.LVL1865:
	add	r0, r0, #1
.LVL1866:
	.loc 3 296 0
	cmp	r0, r6
	bne	.L2172
.LVL1867:
.L2155:
.LBE428:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1868:
.L2225:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2158
	.loc 3 178 0
	cmp	r8, #0
	beq	.L2159
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB429:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE429:
	.loc 3 179 0
	bne	.L2220
	.loc 3 186 0
	tst	r3, #2
	beq	.L2159
.LBB430:
	.loc 3 188 0
	uxth	fp, r10
.L2220:
	mov	r0, fp
.LVL1869:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1870:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1871:
	.loc 3 189 0
	str	r8, [r7, #4]
.LVL1872:
	.loc 3 190 0
	rsb	r6, r0, r6
.LVL1873:
.L2159:
.LBE430:
	.loc 3 194 0
	ldr	r3, .L2230+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L2161
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L2228
	.loc 3 201 0
	tst	r3, #8
	beq	.L2161
.LBB431:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1874:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL1875:
	.loc 3 205 0
	rsb	r6, r0, r6
.LVL1876:
.L2161:
.LBE431:
	.loc 3 208 0
	cmp	r6, #0
	bgt	.L2158
	b	.L2155
.L2226:
	.loc 3 216 0
	ldr	r2, .L2230+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L2229
.L2164:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1877:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L2165
.L2166:
	.loc 3 235 0
	ldr	r1, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r2, [r7, #8]
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r1, [r0, #16]
	.loc 3 236 0
	str	r2, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L2230+4
	.loc 3 240 0
	ldr	ip, .L2230+4
	.loc 3 239 0
	strgt	r1, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	cmp	r2, r0
	.loc 3 241 0
	strlt	r2, [ip, #8]
	.loc 3 243 0
	ldr	r2, .L2230+32
	add	r1, r2, r3, asl #2
.LVL1878:
	ldr	r3, [r8]
	b	.L2167
.LVL1879:
.L2171:
.LBB432:
.LBB421:
	.loc 3 303 0
	sub	ip, r0, #1
.LVL1880:
	.loc 3 304 0
	tst	ip, r0
	bne	.L2173
.LBB422:
	.loc 3 305 0
	mov	r8, ip, asl #16
	mvn	r8, r8, lsr #16
	.loc 3 306 0
	sub	r0, r6, #1
	cmn	r0, #1
	str	r0, [sp]
	mov	r9, r0
	ldreq	r0, .L2230+36
	.loc 3 305 0
	mvn	r8, r8, asl #16
.LVL1881:
	streq	r0, [sp, #4]
	.loc 3 306 0
	beq	.L2185
	ldr	r0, .L2230+36
	mov	ip, r4
.LVL1882:
	mov	lr, r0
	ldr	r10, [lr]
	str	r0, [sp, #4]
	mov	fp, r5, asl #1
	add	r0, r1, #32
.LVL1883:
.L2175:
	.loc 3 307 0
	and	lr, ip, r8
	ldrb	lr, [r3, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r9, r9, #2
.LVL1884:
	.loc 3 307 0
	ldrb	r7, [r2, lr]	@ zero_extendqisi2
	add	lr, r5, ip
	add	r7, r10, r7, asl #8
	ldr	r7, [r7, #252]
	.loc 3 311 0
	and	lr, lr, r8
	.loc 3 307 0
	str	r7, [r0, #-32]
.LVL1885:
	.loc 3 311 0
	ldrb	lr, [r3, lr, asr #16]	@ zero_extendqisi2
	add	ip, fp, ip
.LVL1886:
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	add	r0, r0, #32
.LVL1887:
	add	lr, r10, lr, asl #8
	ldr	lr, [lr, #252]
	str	lr, [r0, #-48]
.LVL1888:
	.loc 3 306 0
	bpl	.L2175
	ldr	r0, [sp]
	add	r4, r4, r5, asl #1
	mov	r0, r0, lsr #1
	add	ip, r0, #1
.LVL1889:
	.loc 3 316 0
	tst	r6, #1
	mla	r4, fp, r0, r4
	add	r1, r1, ip, asl #5
	bne	.L2155
.L2185:
	.loc 3 317 0
	and	r4, r4, r8
	ldrb	r0, [r3, r4, asr #16]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
.LVL1890:
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
.LVL1891:
	ldr	r3, [r3]
	add	r3, r3, r2, asl #8
	ldr	r3, [r3, #252]
	str	r3, [r1]
	b	.L2155
.LVL1892:
.L2227:
.LBE422:
.LBE421:
	.loc 3 286 0
	mov	r0, #0
	ldr	ip, .L2230+36
	add	r6, r6, #1
.LVL1893:
	ldr	lr, [ip]
.LVL1894:
.L2170:
	.loc 3 289 0
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r3, ip, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL1895:
	.loc 3 289 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	add	ip, lr, ip, asl #8
	ldr	ip, [ip, #252]
	str	ip, [r1, r0, asl #4]
.LVL1896:
	add	r0, r0, #1
.LVL1897:
	.loc 3 288 0
	cmp	r0, r6
	bne	.L2170
.LBE432:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1898:
.L2173:
	.cfi_restore_state
.LBB433:
.LBB425:
.LBB423:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL1899:
	.loc 3 325 0
	bge	.L2222
	b	.L2179
.L2181:
	rsb	r4, r0, r4
.LVL1900:
.L2222:
	.loc 3 328 0
	cmp	r4, r0
	bge	.L2181
.L2178:
	.loc 3 345 0
	ldr	ip, .L2230+36
	add	r6, r6, #1
.LVL1901:
	ldr	r7, [ip]
.LVL1902:
	mov	ip, #0
.LVL1903:
.L2180:
	ldrb	lr, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r5
.LVL1904:
	.loc 3 345 0
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	add	lr, r7, lr, asl #8
	ldr	lr, [lr, #252]
	.loc 3 348 0
	rsbge	r4, r0, r4
	.loc 3 345 0
	str	lr, [r1, ip, asl #4]
.LVL1905:
	add	ip, ip, #1
.LVL1906:
	.loc 3 339 0
	cmp	ip, r6
	bne	.L2180
.LBE423:
.LBE425:
.LBE433:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1907:
.L2179:
	.cfi_restore_state
.LBB434:
.LBB426:
.LBB424:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL1908:
	bpl	.L2178
.LVL1909:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL1910:
	bmi	.L2179
	b	.L2178
.LVL1911:
.L2229:
.LBE424:
.LBE426:
.LBE434:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r7]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L2164
	b	.L2166
.L2228:
.LBB435:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r5
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL1912:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL1913:
	.loc 3 199 0
	rsb	r6, r0, r6
.LVL1914:
.LBE435:
	b	.L2161
.L2231:
	.align	2
.L2230:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushWholeTL32
	.word	.LANCHOR1
	.word	R_FlushHTTL32
	.word	R_FlushQuadTL32
	.word	.LANCHOR0+3140
	.word	V_Palette32
	.word	viewheight
	.cfi_endproc
.LFE110:
	.size	R_DrawTLColumn32_PointUV_PointZ, .-R_DrawTLColumn32_PointUV_PointZ
	.align	2
	.type	R_DrawTLColumn32_PointUV_LinearZ, %function
R_DrawTLColumn32_PointUV_LinearZ:
.LFB111:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1915:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r6, r8}
	.loc 3 113 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 3 157 0
	subs	r3, r8, r6
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL1916:
	.loc 3 157 0
	str	r3, [sp, #4]
	.loc 3 121 0
	ldr	r9, [r0, #28]
.LVL1917:
	.loc 3 157 0
	bmi	.L2232
	.loc 3 171 0
	ldr	r3, .L2311
.LVL1918:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r6
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL1919:
	.loc 3 174 0
	bne	.L2305
.LVL1920:
.L2235:
	.loc 3 215 0
	ldr	r8, .L2311+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L2241
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L2306
.L2242:
	.loc 3 226 0 is_stmt 1
	ldr	r3, .L2311+8
	.loc 3 224 0
	mov	r10, #2
	.loc 3 226 0
	ldr	ip, [r3]
	.loc 3 230 0
	ldr	r2, .L2311+12
	.loc 3 226 0
	str	ip, [r8, #1008]
	.loc 3 231 0
	ldr	ip, .L2311+16
	.loc 3 224 0
	ldr	r0, .L2311+20
	.loc 3 231 0
	str	ip, [r2, #4]
	mov	ip, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L2311+24
.LVL1921:
	.loc 3 221 0
	ldr	r6, [r7]
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 230 0
	ldr	lr, .L2311+28
	.loc 3 224 0
	str	r10, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L2311+32
	.loc 3 233 0
	add	r9, r9, r3, asl #4
	.loc 3 221 0
	str	r6, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	r9, [sp, #8]
.LVL1922:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 232 0
	str	r0, [r2, #8]
.LVL1923:
.L2244:
.LBB436:
	.loc 3 259 0
	ldr	r2, [r7, #12]
	.loc 3 286 0
	ldr	lr, [r7, #24]
	.loc 3 260 0
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #48]
.LBE436:
	.loc 3 245 0
	add	ip, ip, #1
.LBB443:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	lr, #128
.LBE443:
	.loc 3 245 0
	str	ip, [r8]
.LBB444:
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	.loc 3 251 0
	ldr	ip, [r7, #32]
.LVL1924:
	.loc 3 286 0
	beq	.L2307
	.loc 3 294 0
	cmp	lr, #0
	bne	.L2252
.LVL1925:
	ldr	r1, .L2311+36
	ldr	r0, [sp, #4]
	ldr	lr, [sp, #8]
	add	r7, r0, #1
.LVL1926:
	ldr	r8, [r1]
	ldr	r1, .L2311+40
	and	r0, r6, #3
	add	r7, r7, r3
	sub	r6, lr, r3, asl #4
.LVL1927:
.L2253:
	.loc 3 297 0
	and	lr, r3, #3
	add	lr, r0, lr, asl #2
	ldrb	lr, [r1, lr]	@ zero_extendqisi2
	add	r10, sp, #48
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	lr, r10, lr, asl #2
	ldrb	r9, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 300 0
	add	r4, r4, r5
.LVL1928:
	.loc 3 297 0
	ldrb	lr, [lr, r9]	@ zero_extendqisi2
	add	lr, r8, lr, asl #8
	ldr	lr, [lr, #252]
	str	lr, [r6, r3, asl #4]
	.loc 3 298 0
	add	r3, r3, #1
.LVL1929:
	.loc 3 296 0
	cmp	r3, r7
	bne	.L2253
.LVL1930:
.L2232:
.LBE444:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1931:
.L2305:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2235
	.loc 3 178 0
	cmp	r6, #0
	beq	.L2236
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB445:
	.loc 3 181 0
	mvnne	r10, r9
	uxthne	r10, r10
.LBE445:
	.loc 3 179 0
	bne	.L2300
	.loc 3 186 0
	tst	r3, #2
	beq	.L2236
.LBB446:
	.loc 3 188 0
	uxth	r10, r9
.L2300:
	mov	r0, r10
.LVL1932:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL1933:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r6, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r10
.LVL1934:
	.loc 3 189 0
	str	r6, [r7, #4]
.LVL1935:
	.loc 3 190 0
	str	r3, [sp, #4]
.LVL1936:
.L2236:
.LBE446:
	.loc 3 194 0
	ldr	r3, .L2311+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L2238
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L2308
	.loc 3 201 0
	tst	r3, #8
	beq	.L2238
.LBB447:
	.loc 3 203 0
	mov	r1, r5
	uxth	r0, r9
.LVL1937:
.L2301:
	bl	__aeabi_idiv
.LVL1938:
	.loc 3 205 0
	ldr	r3, [sp, #4]
	.loc 3 204 0
	rsb	r8, r0, r8
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r8, [r7, #8]
.LVL1939:
	.loc 3 205 0
	str	r3, [sp, #4]
.LVL1940:
.L2238:
.LBE447:
	.loc 3 208 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bgt	.L2235
	b	.L2232
.L2306:
	.loc 3 216 0
	ldr	r3, .L2311+20
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L2309
.L2241:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL1941:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L2242
	ldr	r0, [r7]
.L2243:
	.loc 3 235 0
	ldr	r1, [r7, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r7, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, r8, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r1, [ip, #16]
	ldr	ip, .L2311+4
	mov	r6, r0
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 243 0
	ldr	r0, .L2311+24
	.loc 3 240 0
	ldr	ip, [r8, #8]
	ldr	lr, .L2311+4
	.loc 3 243 0
	add	r2, r2, r1, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	add	r2, r0, r2, asl #2
	.loc 3 241 0
	strlt	r3, [lr, #8]
	ldr	ip, [r8]
	.loc 3 235 0
	mov	r3, r1
	.loc 3 243 0
	str	r2, [sp, #8]
	b	.L2244
.LVL1942:
.L2252:
.LBB448:
.LBB437:
	.loc 3 303 0
	sub	r1, lr, #1
.LVL1943:
	.loc 3 304 0
	tst	r1, lr
	bne	.L2254
.LBB438:
	.loc 3 305 0
	mov	r10, r1, asl #16
	mvn	r10, r10, lsr #16
	.loc 3 306 0
	ldr	r1, [sp, #4]
.LVL1944:
	.loc 3 305 0
	mvn	r10, r10, asl #16
.LVL1945:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L2310
	ldr	r0, .L2311+36
	mov	r1, r1, lsr #1
	str	r1, [sp, #20]
	mov	r1, r1, asl #1
	add	lr, r1, #2
.LVL1946:
	str	r1, [sp, #24]
	ldr	r1, [r0]
	mov	r9, r4
	mov	fp, r1
	str	r4, [sp, #28]
	mov	r7, r3
.LVL1947:
	mov	r4, fp
.LVL1948:
	str	r0, [sp, #36]
	and	r0, r6, #3
	ldr	r6, [sp, #8]
.LVL1949:
	add	lr, lr, r3
	add	r8, r6, #32
	ldr	r1, .L2311+40
	mov	r6, r5, asl #1
	str	r6, [sp, #12]
	str	r3, [sp, #32]
	str	lr, [sp, #16]
.LVL1950:
.L2256:
	.loc 3 307 0
	and	r3, r7, #3
	add	r3, r0, r3, asl #2
	ldrb	lr, [r1, r3]	@ zero_extendqisi2
	add	r3, r7, #1
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r0, r3, asl #2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	.loc 3 307 0
	add	fp, sp, #48
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	and	r6, r9, r10
	add	lr, fp, lr, asl #2
	ldrb	r6, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	.loc 3 311 0
	add	r3, fp, r3, asl #2
	.loc 3 307 0
	ldrb	lr, [lr, r6]	@ zero_extendqisi2
	.loc 3 311 0
	ldr	r3, [r3, #-8]
	.loc 3 307 0
	add	lr, r4, lr, asl #8
	ldr	r6, [lr, #252]
	add	lr, r5, r9
	str	r6, [r8, #-32]
.LVL1951:
	.loc 3 311 0
	and	lr, lr, r10
.LVL1952:
	ldrb	lr, [ip, lr, asr #16]	@ zero_extendqisi2
	.loc 3 312 0
	add	r7, r7, #2
.LVL1953:
	.loc 3 311 0
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	lr, [sp, #16]
	.loc 3 311 0
	add	r3, r4, r3, asl #8
	.loc 3 306 0
	cmp	r7, lr
	.loc 3 311 0
	ldr	r3, [r3, #252]
	ldr	lr, [sp, #12]
	str	r3, [r8, #-16]
	add	r9, lr, r9
.LVL1954:
	add	r8, r8, #32
.LVL1955:
	.loc 3 306 0
	bne	.L2256
	.loc 3 316 0
	ldr	r6, [sp, #4]
	ldr	r3, [sp, #32]
	ldr	r4, [sp, #28]
	tst	r6, #1
	ldr	r6, [sp, #24]
	add	r3, r3, #2
	add	r4, r4, r5, asl #1
	add	r3, r3, r6
	ldr	r5, [sp, #20]
.LVL1956:
	ldr	r6, [sp, #12]
	add	lr, r5, #1
	mla	r4, r6, r5, r4
	ldr	r5, [sp, #8]
	add	lr, r5, lr, asl #5
	str	lr, [sp, #8]
	bne	.L2232
.LVL1957:
.L2265:
	.loc 3 317 0
	and	r3, r3, #3
	add	r0, r0, r3, asl #2
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	and	r4, r4, r10
	cmp	r3, r2
	movge	r2, #0
.LVL1958:
	movlt	r2, #1
	add	r3, sp, #48
	add	r2, r3, r2, asl #2
	ldr	r1, [r2, #-8]
	ldr	r3, [sp, #36]
	ldrb	r2, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r3, [r3]
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	add	r3, r3, r2, asl #8
	ldr	r3, [r3, #252]
	ldr	r2, [sp, #8]
	str	r3, [r2]
	b	.L2232
.LVL1959:
.L2307:
	ldr	r1, .L2311+36
	ldr	r0, [sp, #4]
	ldr	lr, [sp, #8]
	add	r7, r0, #1
.LVL1960:
	ldr	r8, [r1]
	ldr	r1, .L2311+40
	and	r0, r6, #3
	add	r7, r7, r3
	sub	r6, lr, r3, asl #4
.LVL1961:
.L2250:
.LBE438:
.LBE437:
	.loc 3 289 0
	and	lr, r3, #3
	add	lr, r0, lr, asl #2
	ldrb	lr, [r1, lr]	@ zero_extendqisi2
	bic	r9, r4, #-16777216
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	add	r10, sp, #48
	add	lr, r10, lr, asl #2
	bic	r9, r9, #8388608
	ldr	r10, [lr, #-8]
	ldrb	lr, [ip, r9, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL1962:
	.loc 3 289 0
	ldrb	lr, [r10, lr]	@ zero_extendqisi2
	add	lr, r8, lr, asl #8
	ldr	lr, [lr, #252]
	str	lr, [r6, r3, asl #4]
	.loc 3 290 0
	add	r3, r3, #1
.LVL1963:
	.loc 3 288 0
	cmp	r3, r7
	bne	.L2250
.LBE448:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1964:
.L2254:
	.cfi_restore_state
.LBB449:
.LBB441:
.LBB439:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	lr, lr, asl #16
.LVL1965:
	.loc 3 325 0
	bge	.L2303
	b	.L2260
.L2262:
	rsb	r4, lr, r4
.LVL1966:
.L2303:
	.loc 3 328 0
	cmp	r4, lr
	bge	.L2262
.L2259:
	ldr	r0, [sp, #4]
	.loc 3 345 0
	ldr	r1, .L2311+36
	add	r8, r0, #1
	ldr	r0, [sp, #8]
	add	r8, r8, r3
	sub	r9, r0, r3, asl #4
	ldr	r10, [r1]
	and	r0, r6, #3
	ldr	r6, .L2311+40
.LVL1967:
	b	.L2261
.LVL1968:
.L2264:
	ldrb	r1, [r6, r1]	@ zero_extendqisi2
	add	fp, sp, #48
	cmp	r1, r2
	movge	r1, #0
	movlt	r1, #1
	add	r1, fp, r1, asl #2
	ldrb	r7, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r1, [r1, #-8]
	.loc 3 348 0
	add	r4, r4, r5
.LVL1969:
	.loc 3 345 0
	ldrb	r1, [r1, r7]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, lr
	.loc 3 345 0
	add	r1, r10, r1, asl #8
	ldr	r1, [r1, #252]
	.loc 3 348 0
	rsbge	r4, lr, r4
	.loc 3 345 0
	str	r1, [r9, r3, asl #4]
	.loc 3 346 0
	add	r3, r3, #1
.LVL1970:
.L2261:
	.loc 3 345 0
	and	r1, r3, #3
	.loc 3 339 0
	cmp	r3, r8
	.loc 3 345 0
	add	r1, r0, r1, asl #2
	.loc 3 339 0
	bne	.L2264
.LBE439:
.LBE441:
.LBE449:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1971:
.L2260:
	.cfi_restore_state
.LBB450:
.LBB442:
.LBB440:
	.loc 3 326 0 discriminator 1
	adds	r4, lr, r4
.LVL1972:
	bpl	.L2259
.LVL1973:
	.loc 3 326 0 is_stmt 0
	adds	r4, lr, r4
.LVL1974:
	bmi	.L2260
	b	.L2259
.LVL1975:
.L2309:
.LBE440:
.LBE442:
.LBE450:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r0, [r7]
	add	r3, r2, r3
	cmp	r3, r0
	bne	.L2241
	b	.L2243
.L2308:
.LBB451:
	.loc 3 197 0
	mvn	r0, r9
	mov	r1, r5
	uxth	r0, r0
	b	.L2301
.LVL1976:
.L2310:
	ldr	r1, .L2311+36
	and	r0, r6, #3
	str	r1, [sp, #36]
	ldr	r1, .L2311+40
	b	.L2265
.L2312:
	.align	2
.L2311:
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR1
	.word	R_FlushHTTL32
	.word	.LANCHOR2
	.word	.LANCHOR0+3140
	.word	R_FlushWholeTL32
	.word	R_FlushQuadTL32
	.word	V_Palette32
	.word	filter_ditherMatrix
	.word	viewheight
.LBE451:
	.cfi_endproc
.LFE111:
	.size	R_DrawTLColumn32_PointUV_LinearZ, .-R_DrawTLColumn32_PointUV_LinearZ
	.align	2
	.type	R_DrawTranslatedColumn8_PointUV, %function
R_DrawTranslatedColumn8_PointUV:
.LFB118:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1977:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r7, r9, r8
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL1978:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL1979:
	.loc 3 157 0
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 171 0
	ldr	r3, .L2386
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r5, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL1980:
	.loc 3 174 0
	bne	.L2381
.LVL1981:
.L2316:
	.loc 3 215 0
	ldr	r8, .L2386+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L2322
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L2382
.L2323:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	.loc 3 222 0
	ldr	r2, [r5, #4]
	.loc 3 233 0
	ldr	r1, .L2386+8
	.loc 3 221 0
	ldr	r10, [r5]
.LVL1982:
	.loc 3 223 0
	ldr	r0, [r5, #8]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r1, r1, r2, asl #2
.LVL1983:
	mov	r2, #0
	.loc 3 224 0
	ldr	ip, .L2386+12
	.loc 3 230 0
	ldr	r3, .L2386+16
	ldr	r9, .L2386+20
	.loc 3 231 0
	ldr	lr, .L2386+24
	.loc 3 224 0
	str	fp, [ip, #-1204]
	.loc 3 231 0
	stmia	r3, {r9, lr}
	.loc 3 232 0
	ldr	ip, .L2386+28
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
	.loc 3 232 0
	str	ip, [r3, #8]
.L2325:
.LBB452:
	.loc 3 286 0
	ldr	r3, [r5, #24]
.LBE452:
	.loc 3 245 0
	add	r2, r2, #1
.LBB459:
	.loc 3 286 0
	cmp	r3, #128
.LBE459:
	.loc 3 245 0
	str	r2, [r8]
.LBB460:
	.loc 3 251 0
	ldr	r0, [r5, #32]
.LVL1984:
	.loc 3 253 0
	ldr	r2, [r5, #52]
.LVL1985:
	.loc 3 286 0
	beq	.L2383
	.loc 3 294 0
	cmp	r3, #0
	bne	.L2329
.LVL1986:
	add	r7, r7, #1
.LVL1987:
.L2330:
	.loc 3 297 0
	ldrb	ip, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r6
.LVL1988:
	.loc 3 297 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	strb	ip, [r1, r3, asl #2]
.LVL1989:
	add	r3, r3, #1
.LVL1990:
	.loc 3 296 0
	cmp	r3, r7
	bne	.L2330
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1991:
.L2381:
.LBE460:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2316
	.loc 3 178 0
	cmp	r8, #0
	beq	.L2317
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB461:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE461:
	.loc 3 179 0
	bne	.L2376
	.loc 3 186 0
	tst	r3, #2
	beq	.L2317
.LBB462:
	.loc 3 188 0
	uxth	fp, r10
.L2376:
	mov	r0, fp
.LVL1992:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1993:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL1994:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL1995:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL1996:
.L2317:
.LBE462:
	.loc 3 194 0
	ldr	r3, .L2386+32
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L2319
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L2384
	.loc 3 201 0
	tst	r3, #8
	beq	.L2319
.LBB463:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL1997:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL1998:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL1999:
.L2319:
.LBE463:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L2316
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L2382:
	.loc 3 216 0
	ldr	r2, .L2386+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L2385
.L2322:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2000:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L2323
.L2324:
	.loc 3 235 0
	ldr	r1, [r5, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r2, [r5, #8]
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r1, [r0, #16]
	.loc 3 236 0
	str	r2, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L2386+4
	.loc 3 240 0
	ldr	ip, .L2386+4
	.loc 3 239 0
	strgt	r1, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	cmp	r2, r0
	.loc 3 241 0
	strlt	r2, [ip, #8]
	.loc 3 243 0
	ldr	r2, .L2386+8
	add	r1, r2, r3
.LVL2001:
	ldr	r2, [r8]
	b	.L2325
.LVL2002:
.L2329:
.LBB464:
.LBB453:
	.loc 3 303 0
	sub	ip, r3, #1
.LVL2003:
	.loc 3 304 0
	tst	ip, r3
	bne	.L2331
.LBB454:
	.loc 3 305 0
	mov	r5, ip, asl #16
.LVL2004:
	mvn	r5, r5, lsr #16
	.loc 3 306 0
	sub	r10, r7, #1
	cmn	r10, #1
	.loc 3 305 0
	mvn	r5, r5, asl #16
.LVL2005:
	.loc 3 306 0
	mov	r8, r10
.LVL2006:
	beq	.L2343
	mov	ip, r4
.LVL2007:
	add	r3, r1, #8
.LVL2008:
	mov	r9, r6, asl #1
.LVL2009:
.L2333:
	.loc 3 307 0
	and	lr, ip, r5
	ldrb	lr, [r0, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r8, r8, #2
.LVL2010:
	.loc 3 307 0
	ldrb	fp, [r2, lr]	@ zero_extendqisi2
	add	lr, r6, ip
	strb	fp, [r3, #-8]
.LVL2011:
	.loc 3 311 0
	and	lr, lr, r5
.LVL2012:
	ldrb	lr, [r0, lr, asr #16]	@ zero_extendqisi2
	add	ip, r9, ip
.LVL2013:
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	add	r3, r3, #8
.LVL2014:
	strb	lr, [r3, #-12]
.LVL2015:
	.loc 3 306 0
	bpl	.L2333
	mov	r10, r10, lsr #1
	add	r4, r4, r6, asl #1
	add	r3, r10, #1
	.loc 3 316 0
	tst	r7, #1
	mla	r4, r10, r9, r4
	add	r1, r1, r3, asl #3
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2016:
.L2343:
	.loc 3 317 0
	and	r4, r4, r5
	ldrb	r3, [r0, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	strb	r3, [r1]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2017:
.L2383:
.LBE454:
.LBE453:
	.loc 3 286 0
	mov	r3, #0
	add	r7, r7, #1
.LVL2018:
.L2328:
	.loc 3 289 0
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r0, ip, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r6
.LVL2019:
	.loc 3 289 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	strb	ip, [r1, r3, asl #2]
.LVL2020:
	add	r3, r3, #1
.LVL2021:
	.loc 3 288 0
	cmp	r3, r7
	bne	.L2328
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2022:
.L2331:
.LBB458:
.LBB455:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r3, r3, asl #16
.LVL2023:
	.loc 3 325 0
	bge	.L2378
	b	.L2337
.L2339:
	rsb	r4, r3, r4
.LVL2024:
.L2378:
	.loc 3 328 0
	cmp	r4, r3
	bge	.L2339
.L2336:
.LBE455:
.LBB456:
	.loc 3 306 0
	mov	ip, #0
	add	r7, r7, #1
.LVL2025:
.L2338:
.LBE456:
.LBB457:
	.loc 3 345 0
	ldrb	lr, [r0, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL2026:
	.loc 3 345 0
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r3
	.loc 3 345 0
	strb	lr, [r1, ip, asl #2]
.LVL2027:
	add	ip, ip, #1
.LVL2028:
	.loc 3 348 0
	rsbge	r4, r3, r4
.LVL2029:
	.loc 3 339 0
	cmp	r7, ip
	bne	.L2338
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2030:
.L2337:
	.loc 3 326 0 discriminator 1
	adds	r4, r3, r4
.LVL2031:
	bpl	.L2336
.LVL2032:
	.loc 3 326 0 is_stmt 0
	adds	r4, r3, r4
.LVL2033:
	bmi	.L2337
	b	.L2336
.LVL2034:
.L2385:
.LBE457:
.LBE458:
.LBE464:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L2322
	b	.L2324
.L2384:
.LBB465:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2035:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r5, #8]
.LVL2036:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL2037:
.LBE465:
	b	.L2319
.L2387:
	.align	2
.L2386:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR0+48
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole8
	.word	R_FlushHT8
	.word	R_FlushQuad8
	.word	viewheight
	.cfi_endproc
.LFE118:
	.size	R_DrawTranslatedColumn8_PointUV, .-R_DrawTranslatedColumn8_PointUV
	.align	2
	.type	R_DrawTranslatedColumn8_PointUV_PointZ, %function
R_DrawTranslatedColumn8_PointUV_PointZ:
.LFB119:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2038:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r6, r9, r8
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL2039:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL2040:
	.loc 3 157 0
	bmi	.L2388
	.loc 3 171 0
	ldr	r3, .L2463
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL2041:
	.loc 3 174 0
	bne	.L2458
.LVL2042:
.L2391:
	.loc 3 215 0
	ldr	r8, .L2463+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L2397
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L2459
.L2398:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	ip, .L2463+8
	.loc 3 230 0
	ldr	r3, .L2463+12
	ldr	r9, .L2463+16
	.loc 3 231 0
	ldr	lr, .L2463+20
	.loc 3 224 0
	str	fp, [ip, #-1204]
	.loc 3 232 0
	ldr	ip, .L2463+24
	.loc 3 231 0
	stmia	r3, {r9, lr}
	.loc 3 232 0
	str	ip, [r3, #8]
	mov	r3, #0
	.loc 3 222 0
	ldr	r2, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL2043:
	.loc 3 223 0
	ldr	r0, [r7, #8]
	.loc 3 233 0
	ldr	r1, .L2463+28
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r1, r1, r2, asl #2
.LVL2044:
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
.L2400:
.LBB466:
	.loc 3 286 0
	ldr	r0, [r7, #24]
.LBE466:
	.loc 3 245 0
	add	r3, r3, #1
.LBB475:
	.loc 3 286 0
	cmp	r0, #128
.LBE475:
	.loc 3 245 0
	str	r3, [r8]
.LBB476:
	.loc 3 252 0
	ldr	ip, [r7, #44]
	.loc 3 251 0
	ldr	r3, [r7, #32]
.LVL2045:
	.loc 3 253 0
	ldr	r2, [r7, #52]
.LVL2046:
	.loc 3 286 0
	beq	.L2460
	.loc 3 294 0
	cmp	r0, #0
	bne	.L2404
.LVL2047:
	add	r6, r6, #1
.LVL2048:
.L2405:
	.loc 3 297 0
	ldrb	lr, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r5
.LVL2049:
	.loc 3 297 0
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	strb	lr, [r1, r0, asl #2]
.LVL2050:
	add	r0, r0, #1
.LVL2051:
	.loc 3 296 0
	cmp	r0, r6
	bne	.L2405
.LVL2052:
.L2388:
.LBE476:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2053:
.L2458:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2391
	.loc 3 178 0
	cmp	r8, #0
	beq	.L2392
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB477:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE477:
	.loc 3 179 0
	bne	.L2453
	.loc 3 186 0
	tst	r3, #2
	beq	.L2392
.LBB478:
	.loc 3 188 0
	uxth	fp, r10
.L2453:
	mov	r0, fp
.LVL2054:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL2055:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL2056:
	.loc 3 189 0
	str	r8, [r7, #4]
.LVL2057:
	.loc 3 190 0
	rsb	r6, r0, r6
.LVL2058:
.L2392:
.LBE478:
	.loc 3 194 0
	ldr	r3, .L2463+32
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L2394
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L2461
	.loc 3 201 0
	tst	r3, #8
	beq	.L2394
.LBB479:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r5
	bl	__aeabi_idiv
.LVL2059:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL2060:
	.loc 3 205 0
	rsb	r6, r0, r6
.LVL2061:
.L2394:
.LBE479:
	.loc 3 208 0
	cmp	r6, #0
	bgt	.L2391
	b	.L2388
.L2459:
	.loc 3 216 0
	ldr	r2, .L2463+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L2462
.L2397:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2062:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L2398
.L2399:
	.loc 3 235 0
	ldr	r1, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r2, [r7, #8]
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r1, [r0, #16]
	.loc 3 236 0
	str	r2, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L2463+4
	.loc 3 240 0
	ldr	ip, .L2463+4
	.loc 3 239 0
	strgt	r1, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	cmp	r2, r0
	.loc 3 241 0
	strlt	r2, [ip, #8]
	.loc 3 243 0
	ldr	r2, .L2463+28
	add	r1, r2, r3
.LVL2063:
	ldr	r3, [r8]
	b	.L2400
.LVL2064:
.L2404:
.LBB480:
.LBB467:
	.loc 3 303 0
	sub	lr, r0, #1
.LVL2065:
	.loc 3 304 0
	tst	lr, r0
	bne	.L2406
.LBB468:
	.loc 3 305 0
	mov	r8, lr, asl #16
	mvn	r8, r8, lsr #16
	.loc 3 306 0
	sub	r0, r6, #1
	cmn	r0, #1
	str	r0, [sp, #4]
	.loc 3 305 0
	mvn	r8, r8, asl #16
.LVL2066:
	.loc 3 306 0
	mov	r9, r0
.LVL2067:
	beq	.L2418
	mov	lr, r4
.LVL2068:
	add	r0, r1, #8
.LVL2069:
	mov	fp, r5, asl #1
.LVL2070:
.L2408:
	.loc 3 307 0
	and	r7, lr, r8
	ldrb	r7, [r3, r7, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r9, r9, #2
.LVL2071:
	.loc 3 307 0
	ldrb	r10, [r2, r7]	@ zero_extendqisi2
	add	r7, r5, lr
	ldrb	r10, [ip, r10]	@ zero_extendqisi2
	.loc 3 311 0
	and	r7, r7, r8
	.loc 3 307 0
	strb	r10, [r0, #-8]
.LVL2072:
	.loc 3 311 0
	ldrb	r7, [r3, r7, asr #16]	@ zero_extendqisi2
	add	lr, fp, lr
.LVL2073:
	ldrb	r7, [r2, r7]	@ zero_extendqisi2
	add	r0, r0, #8
.LVL2074:
	ldrb	r7, [ip, r7]	@ zero_extendqisi2
	strb	r7, [r0, #-12]
.LVL2075:
	.loc 3 306 0
	bpl	.L2408
	ldr	r0, [sp, #4]
	add	r4, r4, r5, asl #1
	mov	r0, r0, lsr #1
	add	lr, r0, #1
.LVL2076:
	.loc 3 316 0
	tst	r6, #1
	mla	r4, r0, fp, r4
	add	r1, r1, lr, asl #3
	bne	.L2388
.L2418:
	.loc 3 317 0
	and	r4, r4, r8
	ldrb	r3, [r3, r4, asr #16]	@ zero_extendqisi2
.LVL2077:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	strb	r3, [r1]
	b	.L2388
.LVL2078:
.L2460:
.LBE468:
.LBE467:
	.loc 3 286 0
	mov	r0, #0
	add	r6, r6, #1
.LVL2079:
.L2403:
	.loc 3 289 0
	bic	lr, r4, #-16777216
	bic	lr, lr, #8388608
	ldrb	lr, [r3, lr, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL2080:
	.loc 3 289 0
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	strb	lr, [r1, r0, asl #2]
.LVL2081:
	add	r0, r0, #1
.LVL2082:
	.loc 3 288 0
	cmp	r0, r6
	bne	.L2403
.LBE480:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2083:
.L2406:
	.cfi_restore_state
.LBB481:
.LBB473:
.LBB469:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL2084:
	.loc 3 325 0
	bge	.L2455
	b	.L2412
.L2414:
	rsb	r4, r0, r4
.LVL2085:
.L2455:
	.loc 3 328 0
	cmp	r4, r0
	bge	.L2414
.L2411:
.LBE469:
.LBB470:
	.loc 3 306 0
	mov	lr, #0
	add	r6, r6, #1
.LVL2086:
.L2413:
.LBE470:
.LBB471:
	.loc 3 345 0
	ldrb	r7, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r5
.LVL2087:
	.loc 3 345 0
	ldrb	r7, [r2, r7]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	ldrb	r7, [ip, r7]	@ zero_extendqisi2
	.loc 3 348 0
	rsbge	r4, r0, r4
	.loc 3 345 0
	strb	r7, [r1, lr, asl #2]
.LVL2088:
	add	lr, lr, #1
.LVL2089:
	.loc 3 339 0
	cmp	lr, r6
	bne	.L2413
.LBE471:
.LBE473:
.LBE481:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2090:
.L2412:
	.cfi_restore_state
.LBB482:
.LBB474:
.LBB472:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL2091:
	bpl	.L2411
.LVL2092:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL2093:
	bmi	.L2412
	b	.L2411
.LVL2094:
.L2462:
.LBE472:
.LBE474:
.LBE482:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r7]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L2397
	b	.L2399
.L2461:
.LBB483:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r5
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2095:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL2096:
	.loc 3 199 0
	rsb	r6, r0, r6
.LVL2097:
.LBE483:
	b	.L2394
.L2464:
	.align	2
.L2463:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole8
	.word	R_FlushHT8
	.word	R_FlushQuad8
	.word	.LANCHOR0+48
	.word	viewheight
	.cfi_endproc
.LFE119:
	.size	R_DrawTranslatedColumn8_PointUV_PointZ, .-R_DrawTranslatedColumn8_PointUV_PointZ
	.align	2
	.type	R_DrawTranslatedColumn8_PointUV_LinearZ, %function
R_DrawTranslatedColumn8_PointUV_LinearZ:
.LFB120:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2098:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r7, r8}
	.loc 3 113 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 3 157 0
	subs	r3, r8, r7
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL2099:
	.loc 3 157 0
	str	r3, [sp, #4]
	.loc 3 121 0
	ldr	r9, [r0, #28]
.LVL2100:
	.loc 3 157 0
	bmi	.L2465
	.loc 3 171 0
	ldr	r3, .L2543
.LVL2101:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r7
	.loc 3 174 0
	cmp	r2, #0
	mov	r6, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL2102:
	.loc 3 174 0
	bne	.L2538
.LVL2103:
.L2468:
	.loc 3 215 0
	ldr	r8, .L2543+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L2474
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L2539
.L2475:
	.loc 3 224 0 is_stmt 1
	mov	r10, #1
	.loc 3 230 0
	ldr	r2, .L2543+8
	ldr	lr, .L2543+12
	.loc 3 224 0
	ldr	r0, .L2543+16
	.loc 3 230 0
	str	lr, [r2]
	mov	lr, #0
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 233 0
	ldr	r9, .L2543+20
.LVL2104:
	.loc 3 221 0
	ldr	r7, [r6]
	.loc 3 223 0
	ldr	r1, [r6, #8]
	.loc 3 231 0
	ldr	ip, .L2543+24
	.loc 3 224 0
	str	r10, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L2543+28
	.loc 3 233 0
	add	r9, r9, r3, asl #2
	.loc 3 221 0
	str	r7, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	r9, [sp, #8]
.LVL2105:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
.LVL2106:
.L2477:
.LBB484:
	.loc 3 259 0
	ldr	r2, [r6, #12]
	.loc 3 286 0
	ldr	r1, [r6, #24]
	.loc 3 260 0
	ldr	ip, [r6, #44]
	ldr	r0, [r6, #48]
.LBE484:
	.loc 3 245 0
	add	lr, lr, #1
.LBB491:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	r1, #128
.LBE491:
	.loc 3 245 0
	str	lr, [r8]
.LBB492:
	.loc 3 260 0
	str	ip, [sp, #40]
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	r0, [sp, #44]
	.loc 3 251 0
	ldr	ip, [r6, #32]
.LVL2107:
	.loc 3 253 0
	ldr	lr, [r6, #52]
.LVL2108:
	.loc 3 286 0
	beq	.L2540
	.loc 3 294 0
	cmp	r1, #0
	bne	.L2485
.LVL2109:
	ldr	r1, [sp, #4]
	ldr	r6, [sp, #8]
.LVL2110:
	add	r8, r1, #1
	ldr	r1, .L2543+32
	and	r0, r7, #3
	add	r8, r8, r3
	sub	r7, r6, r3, asl #2
.LVL2111:
.L2486:
	.loc 3 297 0
	and	r6, r3, #3
	add	r6, r0, r6, asl #2
	ldrb	r6, [r1, r6]	@ zero_extendqisi2
	ldrb	r9, [ip, r4, asr #16]	@ zero_extendqisi2
	cmp	r6, r2
	movge	r6, #0
	movlt	r6, #1
	add	r10, sp, #48
	add	r6, r10, r6, asl #2
	ldr	r10, [r6, #-8]
	ldrb	r6, [lr, r9]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r5
.LVL2112:
	.loc 3 297 0
	ldrb	r6, [r10, r6]	@ zero_extendqisi2
	strb	r6, [r7, r3, asl #2]
	.loc 3 298 0
	add	r3, r3, #1
.LVL2113:
	.loc 3 296 0
	cmp	r3, r8
	bne	.L2486
.LVL2114:
.L2465:
.LBE492:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2115:
.L2538:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2468
	.loc 3 178 0
	cmp	r7, #0
	beq	.L2469
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB493:
	.loc 3 181 0
	mvnne	r10, r9
	uxthne	r10, r10
.LBE493:
	.loc 3 179 0
	bne	.L2533
	.loc 3 186 0
	tst	r3, #2
	beq	.L2469
.LBB494:
	.loc 3 188 0
	uxth	r10, r9
.L2533:
	mov	r0, r10
.LVL2116:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL2117:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r7, r7, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r10
.LVL2118:
	.loc 3 189 0
	str	r7, [r6, #4]
.LVL2119:
	.loc 3 190 0
	str	r3, [sp, #4]
.LVL2120:
.L2469:
.LBE494:
	.loc 3 194 0
	ldr	r3, .L2543+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L2471
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L2541
	.loc 3 201 0
	tst	r3, #8
	beq	.L2471
.LBB495:
	.loc 3 203 0
	mov	r1, r5
	uxth	r0, r9
.LVL2121:
.L2534:
	bl	__aeabi_idiv
.LVL2122:
	.loc 3 205 0
	ldr	r3, [sp, #4]
	.loc 3 204 0
	rsb	r8, r0, r8
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r8, [r6, #8]
.LVL2123:
	.loc 3 205 0
	str	r3, [sp, #4]
.LVL2124:
.L2471:
.LBE495:
	.loc 3 208 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bgt	.L2468
	b	.L2465
.L2539:
	.loc 3 216 0
	ldr	r3, .L2543+16
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L2542
.L2474:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2125:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L2475
	ldr	r0, [r6]
.L2476:
	.loc 3 235 0
	ldr	r1, [r6, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r6, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, r8, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r1, [ip, #16]
	ldr	ip, .L2543+4
	mov	r7, r0
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 243 0
	ldr	r0, .L2543+20
	.loc 3 240 0
	ldr	ip, [r8, #8]
	ldr	lr, .L2543+4
	.loc 3 243 0
	add	r2, r2, r1, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	add	r2, r0, r2
	.loc 3 241 0
	strlt	r3, [lr, #8]
	.loc 3 243 0
	str	r2, [sp, #8]
.LVL2126:
	.loc 3 235 0
	mov	r3, r1
	ldr	lr, [r8]
	b	.L2477
.LVL2127:
.L2485:
.LBB496:
.LBB485:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL2128:
	.loc 3 304 0
	tst	r0, r1
	bne	.L2487
.LBB486:
	.loc 3 305 0
	mov	r0, r0, asl #16
.LVL2129:
	mvn	r0, r0, lsr #16
	mvn	r0, r0, asl #16
	.loc 3 306 0
	ldr	r1, [sp, #4]
.LVL2130:
	.loc 3 305 0
	str	r0, [sp, #20]
.LVL2131:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	andeq	r0, r7, #3
.LVL2132:
	ldreq	r1, .L2543+32
	beq	.L2498
	mov	r1, r1, lsr #1
	str	r1, [sp, #24]
	mov	r1, r1, asl #1
	add	r6, r1, #2
.LVL2133:
	add	r6, r6, r3
	mov	fp, r6
	mov	r8, r3
	mov	r10, r4
	ldr	r6, [sp, #8]
	str	r1, [sp, #28]
	add	r9, r6, #8
	mov	r6, r5, asl #1
	str	r6, [sp, #12]
	ldr	r1, .L2543+32
	ldr	r6, [sp, #20]
	and	r0, r7, #3
	str	r4, [sp, #32]
	str	r3, [sp, #36]
	str	fp, [sp, #16]
.LVL2134:
.L2489:
	.loc 3 307 0
	and	r3, r8, #3
	add	r3, r0, r3, asl #2
	ldrb	r4, [r1, r3]	@ zero_extendqisi2
	add	r3, r8, #1
	cmp	r4, r2
	movge	r4, #0
	movlt	r4, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r0, r3, asl #2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	.loc 3 307 0
	and	r7, r10, r6
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	ldrb	r7, [ip, r7, asr #16]	@ zero_extendqisi2
	add	fp, sp, #48
	add	r4, fp, r4, asl #2
	ldrb	r7, [lr, r7]	@ zero_extendqisi2
	ldr	r4, [r4, #-8]
	.loc 3 311 0
	add	r3, fp, r3, asl #2
	.loc 3 307 0
	ldrb	r7, [r4, r7]	@ zero_extendqisi2
	add	r4, r5, r10
	strb	r7, [r9, #-8]
.LVL2135:
	.loc 3 311 0
	and	r4, r4, r6
.LVL2136:
	ldrb	r4, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r3, [r3, #-8]
	ldrb	r4, [lr, r4]	@ zero_extendqisi2
	.loc 3 312 0
	add	r8, r8, #2
.LVL2137:
	.loc 3 311 0
	ldrb	r3, [r3, r4]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	r4, [sp, #16]
	.loc 3 311 0
	strb	r3, [r9, #-4]
	.loc 3 306 0
	cmp	r8, r4
	ldr	r4, [sp, #12]
	add	r9, r9, #8
.LVL2138:
	add	r10, r4, r10
.LVL2139:
	bne	.L2489
	.loc 3 316 0
	ldr	r7, [sp, #4]
	ldr	r3, [sp, #36]
	ldr	r4, [sp, #32]
	tst	r7, #1
	ldr	r7, [sp, #28]
	add	r3, r3, #2
	add	r4, r4, r5, asl #1
	add	r3, r3, r7
	ldr	r5, [sp, #24]
.LVL2140:
	ldr	r7, [sp, #12]
	add	r6, r5, #1
	mla	r4, r7, r5, r4
	ldr	r5, [sp, #8]
	add	r5, r5, r6, asl #3
	str	r5, [sp, #8]
	bne	.L2465
.LVL2141:
.L2498:
	.loc 3 317 0
	and	r3, r3, #3
	add	r0, r0, r3, asl #2
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	ldr	r1, [sp, #20]
	cmp	r3, r2
	movge	r2, #0
.LVL2142:
	movlt	r2, #1
	and	r4, r4, r1
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r1, sp, #48
	add	r2, r1, r2, asl #2
	ldr	r2, [r2, #-8]
	ldrb	r3, [lr, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	strb	r3, [r2]
	b	.L2465
.LVL2143:
.L2540:
	ldr	r1, [sp, #4]
	ldr	r6, [sp, #8]
.LVL2144:
	add	r9, r1, #1
	ldr	r1, .L2543+32
	and	r0, r7, #3
	add	r9, r9, r3
	sub	r7, r6, r3, asl #2
.LVL2145:
.L2483:
.LBE486:
.LBE485:
	.loc 3 289 0
	and	r6, r3, #3
	add	r6, r0, r6, asl #2
	ldrb	r6, [r1, r6]	@ zero_extendqisi2
	bic	r8, r4, #-16777216
	cmp	r6, r2
	movge	r6, #0
	movlt	r6, #1
	bic	r8, r8, #8388608
	ldrb	r10, [ip, r8, asr #16]	@ zero_extendqisi2
	add	r8, sp, #48
	add	r6, r8, r6, asl #2
	ldr	r8, [r6, #-8]
	ldrb	r6, [lr, r10]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL2146:
	.loc 3 289 0
	ldrb	r6, [r8, r6]	@ zero_extendqisi2
	strb	r6, [r7, r3, asl #2]
	.loc 3 290 0
	add	r3, r3, #1
.LVL2147:
	.loc 3 288 0
	cmp	r3, r9
	bne	.L2483
.LBE496:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2148:
.L2487:
	.cfi_restore_state
.LBB497:
.LBB489:
.LBB487:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r1, asl #16
.LVL2149:
	.loc 3 325 0
	bge	.L2536
	b	.L2493
.L2495:
	rsb	r4, r6, r4
.LVL2150:
.L2536:
	.loc 3 328 0
	cmp	r4, r6
	bge	.L2495
.L2492:
	ldr	r1, [sp, #4]
	.loc 3 345 0
	and	r0, r7, #3
	add	r9, r1, #1
	ldr	r1, [sp, #8]
	add	r9, r9, r3
	sub	r10, r1, r3, asl #2
	ldr	r7, .L2543+32
.LVL2151:
	b	.L2494
.LVL2152:
.L2497:
	ldrb	r1, [r7, r1]	@ zero_extendqisi2
	ldrb	r8, [ip, r4, asr #16]	@ zero_extendqisi2
	cmp	r1, r2
	movge	r1, #0
	movlt	r1, #1
	add	fp, sp, #48
	add	r1, fp, r1, asl #2
	ldr	fp, [r1, #-8]
	ldrb	r1, [lr, r8]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r5
.LVL2153:
	.loc 3 345 0
	ldrb	r1, [fp, r1]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	strb	r1, [r10, r3, asl #2]
	.loc 3 348 0
	rsbge	r4, r6, r4
	.loc 3 346 0
	add	r3, r3, #1
.LVL2154:
.L2494:
	.loc 3 345 0
	and	r1, r3, #3
	.loc 3 339 0
	cmp	r3, r9
	.loc 3 345 0
	add	r1, r0, r1, asl #2
	.loc 3 339 0
	bne	.L2497
.LBE487:
.LBE489:
.LBE497:
	.loc 3 357 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2155:
.L2493:
	.cfi_restore_state
.LBB498:
.LBB490:
.LBB488:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL2156:
	bpl	.L2492
.LVL2157:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL2158:
	bmi	.L2493
	b	.L2492
.LVL2159:
.L2542:
.LBE488:
.LBE490:
.LBE498:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r0, [r6]
	add	r3, r2, r3
	cmp	r3, r0
	bne	.L2474
	b	.L2476
.L2541:
.LBB499:
	.loc 3 197 0
	mvn	r0, r9
	mov	r1, r5
	uxth	r0, r0
	b	.L2534
.L2544:
	.align	2
.L2543:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	R_FlushWhole8
	.word	.LANCHOR2
	.word	.LANCHOR0+48
	.word	R_FlushHT8
	.word	R_FlushQuad8
	.word	filter_ditherMatrix
	.word	viewheight
.LBE499:
	.cfi_endproc
.LFE120:
	.size	R_DrawTranslatedColumn8_PointUV_LinearZ, .-R_DrawTranslatedColumn8_PointUV_LinearZ
	.align	2
	.type	R_DrawTranslatedColumn15_PointUV, %function
R_DrawTranslatedColumn15_PointUV:
.LFB127:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2160:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL2161:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL2162:
	.loc 3 157 0
	bmi	.L2545
	.loc 3 171 0
	ldr	r3, .L2618
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL2163:
	.loc 3 174 0
	bne	.L2613
.LVL2164:
.L2548:
	.loc 3 215 0
	ldr	r8, .L2618+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L2554
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L2614
.L2555:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	r0, .L2618+8
	.loc 3 230 0
	ldr	r2, .L2618+12
	ldr	lr, .L2618+16
	.loc 3 231 0
	ldr	ip, .L2618+20
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L2618+24
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L2618+28
	.loc 3 221 0
	ldr	r10, [r7]
.LVL2165:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	str	r3, [sp, #4]
.LVL2166:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L2557:
.LVL2167:
.LBB500:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE500:
	.loc 3 245 0
	add	r2, r2, #1
.LBB507:
	.loc 3 286 0
	cmp	r1, #128
.LBE507:
	.loc 3 245 0
	str	r2, [r8]
.LBB508:
	.loc 3 253 0
	ldr	r0, [r7, #52]
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL2168:
	.loc 3 278 0
	add	lr, r5, #1
.LVL2169:
	.loc 3 286 0
	beq	.L2615
	.loc 3 294 0
	cmp	r1, #0
	bne	.L2561
.LVL2170:
	.loc 3 297 0
	mov	r7, #128
.LVL2171:
	mov	lr, #126
	ldr	r1, .L2618+32
	ldr	r3, [sp, #4]
	ldr	ip, [r1]
	add	r3, r3, #8
.LVL2172:
.L2562:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL2173:
	.loc 3 297 0
	ldrb	r1, [r0, r1]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	smlabb	r1, r7, r1, lr
	ldrh	r1, [ip, r1]
	.loc 3 300 0
	add	r4, r4, r6
.LVL2174:
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL2175:
	add	r3, r3, #8
.LVL2176:
	.loc 3 296 0
	bne	.L2562
.LVL2177:
.L2545:
.LBE508:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2178:
.L2613:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2548
	.loc 3 178 0
	cmp	r8, #0
	beq	.L2549
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB509:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE509:
	.loc 3 179 0
	bne	.L2610
	.loc 3 186 0
	tst	r3, #2
	beq	.L2549
.LBB510:
	.loc 3 188 0
	uxth	fp, r10
.L2610:
	mov	r0, fp
.LVL2179:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL2180:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL2181:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL2182:
.L2549:
.LBE510:
	.loc 3 194 0
	ldr	r3, .L2618+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L2551
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L2616
	.loc 3 201 0
	tst	r3, #8
	beq	.L2551
.LBB511:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL2183:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL2184:
.L2551:
.LBE511:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L2548
	b	.L2545
.L2614:
	.loc 3 216 0
	ldr	r3, .L2618+8
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L2617
.L2554:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2185:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L2555
.L2556:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L2618+4
	.loc 3 240 0
	ldr	ip, .L2618+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L2618+28
	add	r3, r1, r2, asl #1
	str	r3, [sp, #4]
.LVL2186:
	ldr	r2, [r8]
	b	.L2557
.LVL2187:
.L2561:
.LBB512:
.LBB501:
	.loc 3 303 0
	sub	ip, r1, #1
.LVL2188:
	.loc 3 304 0
	tst	ip, r1
	bne	.L2563
.LBB502:
	.loc 3 305 0
	mov	r7, ip, asl #16
.LVL2189:
	mvn	r7, r7, lsr #16
	.loc 3 306 0
	sub	r3, r5, #1
	cmn	r3, #1
	str	r3, [sp, #8]
	ldreq	r3, .L2618+32
	.loc 3 305 0
	mvn	r7, r7, asl #16
.LVL2190:
	streq	r3, [sp, #20]
	.loc 3 306 0
	beq	.L2576
	ldr	r1, .L2618+32
	mov	ip, r4
.LVL2191:
	mov	lr, r1
	ldr	r8, [lr]
	mov	lr, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, lr
	str	r1, [sp, #20]
	ldr	r1, [sp, #4]
	str	lr, [sp, #12]
	add	r1, r1, #16
	str	r5, [sp, #16]
.LVL2192:
.L2565:
	and	lr, ip, r7
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r3, r3, #2
.LVL2193:
	.loc 3 307 0
	ldrb	r5, [r0, lr]	@ zero_extendqisi2
	add	lr, r6, ip
	smlabb	r5, r10, r5, r9
	ldrh	r5, [r8, r5]
	.loc 3 311 0
	and	lr, lr, r7
	.loc 3 307 0
	strh	r5, [r1, #-16]	@ movhi
.LVL2194:
	.loc 3 311 0
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	add	ip, fp, ip
.LVL2195:
	ldrb	lr, [r0, lr]	@ zero_extendqisi2
	add	r1, r1, #16
.LVL2196:
	smlabb	lr, r10, lr, r9
	ldrh	lr, [r8, lr]
	strh	lr, [r1, #-24]	@ movhi
.LVL2197:
	.loc 3 306 0
	bpl	.L2565
	ldr	r3, [sp, #8]
	add	r4, r4, r6, asl #1
	mov	r1, r3, lsr #1
	ldr	r3, [sp, #12]
	ldr	r5, [sp, #16]
	mla	r4, r3, r1, r4
	ldr	r3, [sp, #4]
	add	ip, r1, #1
.LVL2198:
	add	r3, r3, ip, asl #4
	.loc 3 316 0
	tst	r5, #1
	str	r3, [sp, #4]
	bne	.L2545
.L2576:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, r7
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL2199:
	ldr	r3, [sp, #20]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	ldr	ip, [r3]
	add	r2, r1, r2, asl #7
	ldrh	r2, [ip, r2]
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	b	.L2545
.LVL2200:
.L2615:
.LBE502:
.LBE501:
	.loc 3 289 0
	mov	lr, #126
	ldr	ip, .L2618+32
	ldr	r3, [sp, #4]
	ldr	r7, [ip]
.LVL2201:
	add	r3, r3, #8
.LVL2202:
.L2560:
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL2203:
	.loc 3 289 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	smlabb	ip, r1, ip, lr
	ldrh	ip, [r7, ip]
	.loc 3 292 0
	add	r4, r4, r6
.LVL2204:
	.loc 3 289 0
	strh	ip, [r3, #-8]	@ movhi
.LVL2205:
	add	r3, r3, #8
.LVL2206:
	.loc 3 288 0
	bne	.L2560
.LBE512:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2207:
.L2563:
	.cfi_restore_state
.LBB513:
.LBB505:
.LBB503:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL2208:
	.loc 3 325 0
	blt	.L2569
	.loc 3 328 0
	cmp	r4, r1
	blt	.L2568
.L2571:
	rsb	r4, r1, r4
.LVL2209:
	cmp	r1, r4
	ble	.L2571
.L2568:
	.loc 3 345 0
	ldr	ip, .L2618+32
	ldr	r3, [sp, #4]
	ldr	r8, [ip]
	add	r3, r3, #8
	mov	r7, #128
.LVL2210:
	mov	r5, #126
	b	.L2570
.LVL2211:
.L2573:
	ldrb	ip, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL2212:
	.loc 3 345 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	smlabb	ip, r7, ip, r5
	ldrh	ip, [r8, ip]
	.loc 3 348 0
	rsbge	r4, r1, r4
	.loc 3 345 0
	strh	ip, [r3, #-8]	@ movhi
.LVL2213:
	add	r3, r3, #8
.LVL2214:
.L2570:
	.loc 3 339 0
	subs	lr, lr, #1
.LVL2215:
	bcs	.L2573
.LBE503:
.LBE505:
.LBE513:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2216:
.L2569:
	.cfi_restore_state
.LBB514:
.LBB506:
.LBB504:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL2217:
	bpl	.L2568
.LVL2218:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL2219:
	bmi	.L2569
	b	.L2568
.LVL2220:
.L2617:
.LBE504:
.LBE506:
.LBE514:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L2554
	b	.L2556
.L2616:
.LBB515:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2221:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL2222:
.LBE515:
	b	.L2551
.L2619:
	.align	2
.L2618:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole15
	.word	R_FlushHT15
	.word	R_FlushQuad15
	.word	.LANCHOR0+1220
	.word	V_Palette15
	.word	viewheight
	.cfi_endproc
.LFE127:
	.size	R_DrawTranslatedColumn15_PointUV, .-R_DrawTranslatedColumn15_PointUV
	.align	2
	.type	R_DrawTranslatedColumn15_PointUV_PointZ, %function
R_DrawTranslatedColumn15_PointUV_PointZ:
.LFB128:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2223:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL2224:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL2225:
	.loc 3 157 0
	bmi	.L2620
	.loc 3 171 0
	ldr	r3, .L2693
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL2226:
	.loc 3 174 0
	bne	.L2688
.LVL2227:
.L2623:
	.loc 3 215 0
	ldr	r8, .L2693+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L2629
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L2689
.L2630:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	r0, .L2693+8
	.loc 3 230 0
	ldr	r3, .L2693+12
	ldr	lr, .L2693+16
	.loc 3 231 0
	ldr	ip, .L2693+20
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L2693+24
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
	mov	r3, #0
	.loc 3 222 0
	ldr	r2, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L2693+28
	.loc 3 221 0
	ldr	r10, [r7]
.LVL2228:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r2, r9, r2, asl #3
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	str	r2, [sp]
.LVL2229:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.LVL2230:
.L2632:
.LBB516:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE516:
	.loc 3 245 0
	add	r3, r3, #1
.LBB523:
	.loc 3 286 0
	cmp	r1, #128
.LBE523:
	.loc 3 245 0
	str	r3, [r8]
.LBB524:
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL2231:
	.loc 3 252 0
	ldr	ip, [r7, #44]
.LVL2232:
	.loc 3 253 0
	ldr	r3, [r7, #52]
.LVL2233:
	.loc 3 278 0
	add	lr, r5, #1
.LVL2234:
	.loc 3 286 0
	beq	.L2690
	.loc 3 294 0
	cmp	r1, #0
	bne	.L2636
.LVL2235:
	.loc 3 297 0
	mov	r7, #128
.LVL2236:
	mov	lr, #126
	ldr	r1, .L2693+32
	ldr	r0, [sp]
	ldr	r8, [r1]
	add	r0, r0, #8
.LVL2237:
.L2637:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL2238:
	.loc 3 297 0
	ldrb	r1, [r3, r1]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	ldrb	r1, [ip, r1]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r6
.LVL2239:
	.loc 3 297 0
	smlabb	r1, r7, r1, lr
	ldrh	r1, [r8, r1]
	add	r0, r0, #8
.LVL2240:
	strh	r1, [r0, #-16]	@ movhi
.LVL2241:
	.loc 3 296 0
	bne	.L2637
.LVL2242:
.L2620:
.LBE524:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2243:
.L2688:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2623
	.loc 3 178 0
	cmp	r8, #0
	beq	.L2624
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB525:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE525:
	.loc 3 179 0
	bne	.L2685
	.loc 3 186 0
	tst	r3, #2
	beq	.L2624
.LBB526:
	.loc 3 188 0
	uxth	fp, r10
.L2685:
	mov	r0, fp
.LVL2244:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL2245:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL2246:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL2247:
.L2624:
.LBE526:
	.loc 3 194 0
	ldr	r3, .L2693+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L2626
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L2691
	.loc 3 201 0
	tst	r3, #8
	beq	.L2626
.LBB527:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL2248:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL2249:
.L2626:
.LBE527:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L2623
	b	.L2620
.L2689:
	.loc 3 216 0
	ldr	r2, .L2693+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L2692
.L2629:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2250:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L2630
.L2631:
	.loc 3 235 0
	ldr	r2, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	str	r2, [r0, #16]
	ldr	r0, .L2693+4
	.loc 3 240 0
	ldr	ip, .L2693+4
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L2693+28
	add	r3, r1, r3, asl #1
	str	r3, [sp]
.LVL2251:
	ldr	r3, [r8]
.LVL2252:
	b	.L2632
.LVL2253:
.L2636:
.LBB528:
.LBB517:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL2254:
	.loc 3 304 0
	tst	r0, r1
	bne	.L2638
.LBB518:
	.loc 3 305 0
	mov	r8, r0, asl #16
	mvn	r8, r8, lsr #16
	.loc 3 306 0
	sub	r1, r5, #1
	cmn	r1, #1
	str	r1, [sp, #4]
	mov	r9, r1
	ldreq	r1, .L2693+32
	.loc 3 305 0
	mvn	r8, r8, asl #16
.LVL2255:
	streq	r1, [sp, #20]
	.loc 3 306 0
	beq	.L2651
	ldr	r1, .L2693+32
	str	r5, [sp, #12]
	mov	lr, r1
	ldr	lr, [lr]
	mov	r0, r4
.LVL2256:
	mov	r7, lr
.LVL2257:
	mov	lr, r6, asl #1
	mov	r5, r7
	.loc 3 307 0
	mov	fp, #128
	mov	r10, #126
	mov	r7, lr
	str	r1, [sp, #20]
	ldr	r1, [sp]
	str	lr, [sp, #8]
	add	r1, r1, #16
	str	r4, [sp, #16]
.LVL2258:
.L2640:
	and	lr, r0, r8
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r9, r9, #2
.LVL2259:
	.loc 3 307 0
	ldrb	r4, [r3, lr]	@ zero_extendqisi2
	add	lr, r6, r0
	ldrb	r4, [ip, r4]	@ zero_extendqisi2
	.loc 3 311 0
	and	lr, lr, r8
	.loc 3 307 0
	smlabb	r4, fp, r4, r10
	ldrh	r4, [r5, r4]
	add	r0, r7, r0
.LVL2260:
	strh	r4, [r1, #-16]	@ movhi
.LVL2261:
	.loc 3 311 0
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	add	r1, r1, #16
.LVL2262:
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	smlabb	lr, fp, lr, r10
	ldrh	lr, [r5, lr]
	strh	lr, [r1, #-24]	@ movhi
.LVL2263:
	.loc 3 306 0
	bpl	.L2640
	ldr	r4, [sp, #16]
	ldr	r1, [sp, #4]
	ldr	lr, [sp, #8]
	mov	r1, r1, lsr #1
	add	r4, r4, r6, asl #1
	add	r0, r1, #1
.LVL2264:
	ldr	r5, [sp, #12]
	mla	r4, lr, r1, r4
	ldr	r1, [sp]
	.loc 3 316 0
	tst	r5, #1
	add	r1, r1, r0, asl #4
	str	r1, [sp]
	bne	.L2620
.L2651:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, r8
	ldrb	r0, [r2, r4, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
.LVL2265:
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
.LVL2266:
	ldr	r2, [r2]
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	add	r3, r1, r3, asl #7
	ldrh	r3, [r2, r3]
	ldr	r2, [sp]
	strh	r3, [r2]	@ movhi
	b	.L2620
.LVL2267:
.L2690:
.LBE518:
.LBE517:
	.loc 3 289 0
	mov	r7, #126
.LVL2268:
	ldr	r0, .L2693+32
	ldr	lr, [sp]
	ldr	r8, [r0]
	add	lr, lr, #8
.LVL2269:
.L2635:
	bic	r0, r4, #-16777216
	bic	r0, r0, #8388608
	ldrb	r0, [r2, r0, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL2270:
	.loc 3 289 0
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r6
.LVL2271:
	.loc 3 289 0
	smlabb	r0, r1, r0, r7
	ldrh	r0, [r8, r0]
	add	lr, lr, #8
.LVL2272:
	strh	r0, [lr, #-16]	@ movhi
.LVL2273:
	.loc 3 288 0
	bne	.L2635
.LBE528:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2274:
.L2638:
	.cfi_restore_state
.LBB529:
.LBB521:
.LBB519:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL2275:
	.loc 3 325 0
	blt	.L2644
	.loc 3 328 0
	cmp	r4, r1
	blt	.L2643
.L2646:
	rsb	r4, r1, r4
.LVL2276:
	cmp	r1, r4
	ble	.L2646
.L2643:
	.loc 3 345 0
	ldr	r0, .L2693+32
	ldr	r5, [sp]
	ldr	r9, [r0]
	add	r5, r5, #8
	mov	r8, #128
	mov	r7, #126
.LVL2277:
	b	.L2645
.LVL2278:
.L2648:
	ldrb	r0, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL2279:
	.loc 3 345 0
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	.loc 3 348 0
	rsbge	r4, r1, r4
	.loc 3 345 0
	smlabb	r0, r8, r0, r7
	ldrh	r0, [r9, r0]
	add	r5, r5, #8
.LVL2280:
	strh	r0, [r5, #-16]	@ movhi
.LVL2281:
.L2645:
	.loc 3 339 0
	subs	lr, lr, #1
.LVL2282:
	bcs	.L2648
.LBE519:
.LBE521:
.LBE529:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2283:
.L2644:
	.cfi_restore_state
.LBB530:
.LBB522:
.LBB520:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL2284:
	bpl	.L2643
.LVL2285:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL2286:
	bmi	.L2644
	b	.L2643
.LVL2287:
.L2692:
.LBE520:
.LBE522:
.LBE530:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r7]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L2629
	b	.L2631
.L2691:
.LBB531:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2288:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL2289:
.LBE531:
	b	.L2626
.L2694:
	.align	2
.L2693:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole15
	.word	R_FlushHT15
	.word	R_FlushQuad15
	.word	.LANCHOR0+1220
	.word	V_Palette15
	.word	viewheight
	.cfi_endproc
.LFE128:
	.size	R_DrawTranslatedColumn15_PointUV_PointZ, .-R_DrawTranslatedColumn15_PointUV_PointZ
	.align	2
	.type	R_DrawTranslatedColumn15_PointUV_LinearZ, %function
R_DrawTranslatedColumn15_PointUV_LinearZ:
.LFB129:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2290:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r5, r7}
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 157 0
	subs	r3, r7, r5
	.loc 3 117 0
	ldr	fp, [r0, #16]
.LVL2291:
	.loc 3 157 0
	str	r3, [sp, #8]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2292:
	.loc 3 157 0
	bmi	.L2695
	.loc 3 171 0
	ldr	r3, .L2774
.LVL2293:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	mov	r6, r0
	.loc 3 171 0
	mla	r4, fp, r3, r4
.LVL2294:
	.loc 3 174 0
	bne	.L2768
.LVL2295:
.L2698:
	.loc 3 215 0
	ldr	r8, .L2774+4
.LVL2296:
	ldr	r1, [r8]
	cmp	r1, #4
	beq	.L2704
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r1, #0
	bne	.L2769
.L2705:
	.loc 3 222 0 is_stmt 1
	ldmia	r6, {r2, r3}
	.loc 3 224 0
	mov	r9, #1
	.loc 3 230 0
	ldr	r1, .L2774+8
	.loc 3 231 0
	ldr	lr, .L2774+12
	.loc 3 230 0
	ldr	r7, .L2774+16
	.loc 3 224 0
	ldr	ip, .L2774+20
	.loc 3 231 0
	stmia	r1, {r7, lr}
	mov	lr, #0
	.loc 3 233 0
	ldr	r5, .L2774+24
	.loc 3 223 0
	ldr	r0, [r6, #8]
	.loc 3 224 0
	str	r9, [ip, #-1204]
	.loc 3 232 0
	ldr	ip, .L2774+28
	.loc 3 233 0
	add	r5, r5, r3, asl #3
	.loc 3 221 0
	str	r2, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	r5, [sp, #12]
.LVL2297:
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
	.loc 3 232 0
	str	ip, [r1, #8]
.LVL2298:
.L2707:
.LBB532:
	.loc 3 259 0
	ldr	r1, [r6, #12]
	.loc 3 286 0
	ldr	r7, [r6, #24]
	.loc 3 260 0
	ldr	ip, [r6, #44]
	ldr	r0, [r6, #48]
.LBE532:
	.loc 3 245 0
	add	lr, lr, #1
.LBB539:
	.loc 3 259 0
	mov	r1, r1, asr #6
	.loc 3 286 0
	cmp	r7, #128
.LBE539:
	.loc 3 245 0
	str	lr, [r8]
.LBB540:
	.loc 3 260 0
	str	ip, [sp, #48]
	.loc 3 259 0
	uxtb	r1, r1
	.loc 3 260 0
	str	r0, [sp, #52]
	.loc 3 251 0
	ldr	ip, [r6, #32]
.LVL2299:
	.loc 3 253 0
	ldr	lr, [r6, #52]
.LVL2300:
	.loc 3 286 0
	beq	.L2770
	.loc 3 294 0
	cmp	r7, #0
	bne	.L2715
.LVL2301:
	ldr	r0, .L2774+32
	ldr	r5, [sp, #8]
	ldr	r9, [r0]
	and	r0, r2, #3
	ldr	r2, [sp, #12]
.LVL2302:
	add	r8, r5, #1
	ldr	r6, .L2774+36
.LVL2303:
	add	r8, r8, r3
	add	r5, r2, #8
.LVL2304:
.L2716:
	.loc 3 297 0
	and	r2, r3, #3
	add	r2, r0, r2, asl #2
	ldrb	r2, [r6, r2]	@ zero_extendqisi2
	ldrb	r7, [ip, r4, asr #16]	@ zero_extendqisi2
	cmp	r2, r1
	movge	r2, #0
	movlt	r2, #1
	add	r10, sp, #56
	add	r2, r10, r2, asl #2
	ldrb	r7, [lr, r7]	@ zero_extendqisi2
	ldr	r2, [r2, #-8]
	mov	r10, #126
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	mov	r7, #128
	smlabb	r2, r7, r2, r10
	.loc 3 298 0
	add	r3, r3, #1
.LVL2305:
	.loc 3 297 0
	ldrh	r2, [r9, r2]
	.loc 3 296 0
	cmp	r3, r8
	.loc 3 297 0
	strh	r2, [r5, #-8]	@ movhi
	.loc 3 300 0
	add	r4, r4, fp
.LVL2306:
	add	r5, r5, #8
.LVL2307:
	.loc 3 296 0
	bne	.L2716
.LVL2308:
.L2695:
.LBE540:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2309:
.L2768:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2698
	.loc 3 178 0
	cmp	r5, #0
	beq	.L2699
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB541:
	.loc 3 181 0
	mvnne	r9, r8
	uxthne	r9, r9
.LBE541:
	.loc 3 179 0
	bne	.L2763
	.loc 3 186 0
	tst	r3, #2
	beq	.L2699
.LBB542:
	.loc 3 188 0
	uxth	r9, r8
.L2763:
	mov	r0, r9
.LVL2310:
	mov	r1, fp
	bl	__aeabi_idiv
.LVL2311:
	.loc 3 190 0
	ldr	r3, [sp, #8]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r9
.LVL2312:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL2313:
	.loc 3 190 0
	str	r3, [sp, #8]
.LVL2314:
.L2699:
.LBE542:
	.loc 3 194 0
	ldr	r3, .L2774+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r7, r3
	beq	.L2701
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L2771
	.loc 3 201 0
	tst	r3, #8
	beq	.L2701
.LBB543:
	.loc 3 203 0
	mov	r1, fp
	uxth	r0, r8
.LVL2315:
.L2764:
	bl	__aeabi_idiv
.LVL2316:
	.loc 3 205 0
	ldr	r3, [sp, #8]
	.loc 3 204 0
	rsb	r7, r0, r7
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r7, [r6, #8]
.LVL2317:
	.loc 3 205 0
	str	r3, [sp, #8]
.LVL2318:
.L2701:
.LBE543:
	.loc 3 208 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bgt	.L2698
	b	.L2695
.LVL2319:
.L2769:
	.loc 3 216 0
	ldr	r3, .L2774+20
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L2772
.L2704:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2320:
	.loc 3 219 0
	ldr	r1, [r8]
	cmp	r1, #0
	beq	.L2705
	ldr	r0, [r6]
.L2706:
	.loc 3 235 0
	ldr	ip, [r6, #4]
	.loc 3 238 0
	ldr	r2, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r6, #8]
	.loc 3 238 0
	cmp	ip, r2
	.loc 3 235 0
	ldr	r2, .L2774+4
	add	lr, r8, r1, asl #2
	.loc 3 239 0
	strgt	ip, [r2, #4]
	.loc 3 243 0
	ldr	r5, .L2774+24
	.loc 3 240 0
	ldr	r2, [r8, #8]
	.loc 3 236 0
	str	r3, [lr, #32]
	.loc 3 235 0
	str	ip, [lr, #16]
	.loc 3 243 0
	add	r1, r1, ip, asl #2
	.loc 3 240 0
	ldr	lr, .L2774+4
	cmp	r3, r2
	.loc 3 243 0
	add	r1, r5, r1, asl #1
	.loc 3 241 0
	strlt	r3, [lr, #8]
	mov	r2, r0
	.loc 3 235 0
	mov	r3, ip
	ldr	lr, [r8]
	.loc 3 243 0
	str	r1, [sp, #12]
.LVL2321:
	b	.L2707
.LVL2322:
.L2715:
.LBB544:
.LBB533:
	.loc 3 303 0
	sub	r0, r7, #1
.LVL2323:
	.loc 3 304 0
	tst	r0, r7
	bne	.L2717
.LBB534:
	.loc 3 305 0
	mov	r0, r0, asl #16
.LVL2324:
	mvn	r5, r0, lsr #16
	mvn	r5, r5, asl #16
	.loc 3 306 0
	ldr	r0, [sp, #8]
	.loc 3 305 0
	str	r5, [sp, #24]
.LVL2325:
	.loc 3 306 0
	sub	r0, r0, #1
	cmn	r0, #1
	beq	.L2773
	ldr	r5, .L2774+32
.LVL2326:
	mov	r0, r0, lsr #1
	mov	r6, r5
.LVL2327:
	str	r0, [sp, #28]
	mov	r0, r0, asl #1
	str	r5, [sp, #44]
	str	r0, [sp, #32]
	add	r5, r0, #2
	ldr	r0, [r6]
	mov	r8, r3
	mov	r7, r0
.LVL2328:
	and	r0, r2, #3
	add	r2, r5, r3
.LVL2329:
	mov	r5, r7
	str	r2, [sp, #20]
	ldr	r2, [sp, #12]
	mov	r10, r4
	add	r9, r2, #16
	str	r4, [sp, #36]
	mov	r2, fp, asl #1
	ldr	r6, .L2774+36
	ldr	r4, [sp, #24]
.LVL2330:
	str	r2, [sp, #4]
	str	fp, [sp, #16]
	str	r3, [sp, #40]
.LVL2331:
.L2719:
	.loc 3 307 0
	and	r3, r8, #3
	add	r3, r0, r3, asl #2
	ldrb	r2, [r6, r3]	@ zero_extendqisi2
	add	r3, r8, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r0, r3, asl #2
	.loc 3 307 0
	cmp	r2, r1
	.loc 3 311 0
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	.loc 3 307 0
	movge	r2, #0
	movlt	r2, #1
	.loc 3 311 0
	cmp	r3, r1
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	and	r7, r10, r4
	ldrb	r7, [ip, r7, asr #16]	@ zero_extendqisi2
	add	fp, sp, #56
	add	r2, fp, r2, asl #2
	ldrb	r7, [lr, r7]	@ zero_extendqisi2
	ldr	r2, [r2, #-8]
	.loc 3 311 0
	add	r3, fp, r3, asl #2
	.loc 3 307 0
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	mov	fp, #126
	.loc 3 311 0
	ldr	r7, [r3, #-8]
	.loc 3 307 0
	mov	r3, #128
	smlabb	r2, r3, r2, fp
	ldrh	r2, [r5, r2]
	.loc 3 312 0
	add	r8, r8, #2
.LVL2332:
	.loc 3 307 0
	strh	r2, [r9, #-16]	@ movhi
.LVL2333:
	.loc 3 306 0
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	cmp	r8, r2
	ldr	r2, [sp, #4]
	add	r3, r3, r10
.LVL2334:
	add	r10, r2, r10
.LVL2335:
	.loc 3 311 0
	mov	r2, #128
	and	r3, r3, r4
	ldrb	r3, [ip, r3, asr #16]	@ zero_extendqisi2
	add	r9, r9, #16
.LVL2336:
	ldrb	r3, [lr, r3]	@ zero_extendqisi2
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	smlabb	r3, r2, r3, fp
	ldrh	r3, [r5, r3]
	strh	r3, [r9, #-24]	@ movhi
	.loc 3 306 0
	bne	.L2719
	.loc 3 316 0
	ldr	r7, [sp, #8]
	ldr	r3, [sp, #40]
	tst	r7, #1
	ldr	r7, [sp, #32]
	ldr	r4, [sp, #36]
	ldr	fp, [sp, #16]
	add	r3, r3, #2
	ldr	r5, [sp, #28]
	add	r3, r3, r7
	ldr	r7, [sp, #4]
	add	r4, r4, fp, asl #1
	add	r2, r5, #1
	mla	r4, r7, r5, r4
	ldr	r5, [sp, #12]
	add	r2, r5, r2, asl #4
	str	r2, [sp, #12]
	bne	.L2695
.LVL2337:
.L2728:
	.loc 3 317 0
	and	r3, r3, #3
	add	r0, r0, r3, asl #2
	ldrb	r3, [r6, r0]	@ zero_extendqisi2
	mov	r2, #126
	cmp	r3, r1
	movge	r1, #0
.LVL2338:
	movlt	r1, #1
	ldr	r3, [sp, #24]
	add	r0, sp, #56
	and	r4, r4, r3
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r1, r0, r1, asl #2
	ldr	r0, [r1, #-8]
	ldrb	r3, [lr, r3]	@ zero_extendqisi2
	ldr	r1, [sp, #44]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r1, [r1]
	add	r3, r2, r3, asl #7
	ldrh	r3, [r1, r3]
	ldr	r2, [sp, #12]
	strh	r3, [r2]	@ movhi
	b	.L2695
.LVL2339:
.L2770:
	ldr	r0, .L2774+32
	ldr	r5, [sp, #8]
	ldr	r10, [r0]
	and	r0, r2, #3
	ldr	r2, [sp, #12]
.LVL2340:
	add	r9, r5, #1
	ldr	r6, .L2774+36
.LVL2341:
.LBE534:
.LBE533:
	.loc 3 289 0
	str	r7, [sp, #4]
	add	r9, r9, r3
	add	r5, r2, #8
.LVL2342:
.L2713:
	and	r2, r3, #3
	add	r2, r0, r2, asl #2
	ldrb	r2, [r6, r2]	@ zero_extendqisi2
	add	r7, sp, #56
	cmp	r2, r1
	movge	r2, #0
	movlt	r2, #1
	add	r2, r7, r2, asl #2
	mov	r7, #126
	bic	r8, r4, #-16777216
	bic	r8, r8, #8388608
	ldrb	r8, [ip, r8, asr #16]	@ zero_extendqisi2
	ldr	r2, [r2, #-8]
	ldrb	r8, [lr, r8]	@ zero_extendqisi2
	.loc 3 290 0
	add	r3, r3, #1
.LVL2343:
	.loc 3 289 0
	ldrb	r2, [r2, r8]	@ zero_extendqisi2
	ldrh	r8, [sp, #4]
	.loc 3 288 0
	cmp	r3, r9
	.loc 3 289 0
	smlabb	r2, r8, r2, r7
	ldrh	r2, [r10, r2]
	.loc 3 292 0
	add	r4, r4, fp
.LVL2344:
	.loc 3 289 0
	strh	r2, [r5, #-8]	@ movhi
	add	r5, r5, #8
.LVL2345:
	.loc 3 288 0
	bne	.L2713
.LBE544:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2346:
.L2717:
	.cfi_restore_state
.LBB545:
.LBB537:
.LBB535:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r7, r7, asl #16
.LVL2347:
	.loc 3 325 0
	bge	.L2766
	b	.L2723
.L2725:
	rsb	r4, r7, r4
.LVL2348:
.L2766:
	.loc 3 328 0
	cmp	r4, r7
	bge	.L2725
.L2722:
	ldr	r0, [sp, #8]
	.loc 3 345 0
	ldr	r6, .L2774+32
.LVL2349:
	add	r9, r0, #1
	ldr	r0, [sp, #12]
	add	r9, r9, r3
	add	r5, r0, #8
	ldr	r10, [r6]
	and	r0, r2, #3
	b	.L2724
.LVL2350:
.L2727:
	ldr	r2, .L2774+36
	ldrb	r8, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r2, r6]	@ zero_extendqisi2
	add	r2, sp, #56
	cmp	r6, r1
	movge	r6, #0
	movlt	r6, #1
	add	r6, r2, r6, asl #2
	ldrb	r8, [lr, r8]	@ zero_extendqisi2
	ldr	r6, [r6, #-8]
	mov	r2, #128
	ldrb	r6, [r6, r8]	@ zero_extendqisi2
	mov	r8, #126
	smlabb	r6, r2, r6, r8
	.loc 3 348 0
	add	r4, r4, fp
.LVL2351:
	.loc 3 345 0
	ldrh	r6, [r10, r6]
	.loc 3 348 0
	cmp	r4, r7
	.loc 3 345 0
	strh	r6, [r5, #-8]	@ movhi
	.loc 3 346 0
	add	r3, r3, #1
.LVL2352:
	.loc 3 348 0
	rsbge	r4, r7, r4
.LVL2353:
	add	r5, r5, #8
.LVL2354:
.L2724:
	.loc 3 345 0
	and	r6, r3, #3
	.loc 3 339 0
	cmp	r3, r9
	.loc 3 345 0
	add	r6, r0, r6, asl #2
	.loc 3 339 0
	bne	.L2727
.LBE535:
.LBE537:
.LBE545:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2355:
.L2723:
	.cfi_restore_state
.LBB546:
.LBB538:
.LBB536:
	.loc 3 326 0 discriminator 1
	adds	r4, r7, r4
.LVL2356:
	bpl	.L2722
.LVL2357:
	.loc 3 326 0 is_stmt 0
	adds	r4, r7, r4
.LVL2358:
	bmi	.L2723
	b	.L2722
.LVL2359:
.L2772:
.LBE536:
.LBE538:
.LBE546:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r0, [r6]
	add	r3, r1, r3
	cmp	r3, r0
	bne	.L2704
	b	.L2706
.LVL2360:
.L2771:
.LBB547:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, fp
	uxth	r0, r0
	b	.L2764
.LVL2361:
.L2773:
	and	r0, r2, #3
	ldr	r2, .L2774+32
.LVL2362:
	ldr	r6, .L2774+36
.LVL2363:
	str	r2, [sp, #44]
	b	.L2728
.L2775:
	.align	2
.L2774:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	R_FlushHT15
	.word	R_FlushWhole15
	.word	.LANCHOR2
	.word	.LANCHOR0+1220
	.word	R_FlushQuad15
	.word	V_Palette15
	.word	filter_ditherMatrix
	.word	viewheight
.LBE547:
	.cfi_endproc
.LFE129:
	.size	R_DrawTranslatedColumn15_PointUV_LinearZ, .-R_DrawTranslatedColumn15_PointUV_LinearZ
	.align	2
	.type	R_DrawTranslatedColumn16_PointUV, %function
R_DrawTranslatedColumn16_PointUV:
.LFB136:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2364:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL2365:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL2366:
	.loc 3 157 0
	bmi	.L2776
	.loc 3 171 0
	ldr	r3, .L2849
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL2367:
	.loc 3 174 0
	bne	.L2844
.LVL2368:
.L2779:
	.loc 3 215 0
	ldr	r8, .L2849+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L2785
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L2845
.L2786:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	r0, .L2849+8
	.loc 3 230 0
	ldr	r2, .L2849+12
	ldr	lr, .L2849+16
	.loc 3 231 0
	ldr	ip, .L2849+20
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L2849+24
	.loc 3 230 0
	str	lr, [r2]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
	mov	r2, #0
	.loc 3 222 0
	ldr	r3, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L2849+28
	.loc 3 221 0
	ldr	r10, [r7]
.LVL2369:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, r9, r3, asl #3
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	str	r3, [sp, #4]
.LVL2370:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.L2788:
.LVL2371:
.LBB548:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE548:
	.loc 3 245 0
	add	r2, r2, #1
.LBB555:
	.loc 3 286 0
	cmp	r1, #128
.LBE555:
	.loc 3 245 0
	str	r2, [r8]
.LBB556:
	.loc 3 253 0
	ldr	r0, [r7, #52]
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL2372:
	.loc 3 278 0
	add	lr, r5, #1
.LVL2373:
	.loc 3 286 0
	beq	.L2846
	.loc 3 294 0
	cmp	r1, #0
	bne	.L2792
.LVL2374:
	.loc 3 297 0
	mov	r7, #128
.LVL2375:
	mov	lr, #126
	ldr	r1, .L2849+32
	ldr	r3, [sp, #4]
	ldr	ip, [r1]
	add	r3, r3, #8
.LVL2376:
.L2793:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL2377:
	.loc 3 297 0
	ldrb	r1, [r0, r1]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	smlabb	r1, r7, r1, lr
	ldrh	r1, [ip, r1]
	.loc 3 300 0
	add	r4, r4, r6
.LVL2378:
	.loc 3 297 0
	strh	r1, [r3, #-8]	@ movhi
.LVL2379:
	add	r3, r3, #8
.LVL2380:
	.loc 3 296 0
	bne	.L2793
.LVL2381:
.L2776:
.LBE556:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2382:
.L2844:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2779
	.loc 3 178 0
	cmp	r8, #0
	beq	.L2780
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB557:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE557:
	.loc 3 179 0
	bne	.L2841
	.loc 3 186 0
	tst	r3, #2
	beq	.L2780
.LBB558:
	.loc 3 188 0
	uxth	fp, r10
.L2841:
	mov	r0, fp
.LVL2383:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL2384:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL2385:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL2386:
.L2780:
.LBE558:
	.loc 3 194 0
	ldr	r3, .L2849+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L2782
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L2847
	.loc 3 201 0
	tst	r3, #8
	beq	.L2782
.LBB559:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL2387:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL2388:
.L2782:
.LBE559:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L2779
	b	.L2776
.L2845:
	.loc 3 216 0
	ldr	r3, .L2849+8
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L2848
.L2785:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2389:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L2786
.L2787:
	.loc 3 235 0
	ldr	r3, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r3, r0
	.loc 3 235 0
	add	r0, r8, r2, asl #2
	str	r3, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L2849+4
	.loc 3 240 0
	ldr	ip, .L2849+4
	.loc 3 239 0
	strgt	r3, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r2, r2, r3, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L2849+28
	add	r3, r1, r2, asl #1
	str	r3, [sp, #4]
.LVL2390:
	ldr	r2, [r8]
	b	.L2788
.LVL2391:
.L2792:
.LBB560:
.LBB549:
	.loc 3 303 0
	sub	ip, r1, #1
.LVL2392:
	.loc 3 304 0
	tst	ip, r1
	bne	.L2794
.LBB550:
	.loc 3 305 0
	mov	r7, ip, asl #16
.LVL2393:
	mvn	r7, r7, lsr #16
	.loc 3 306 0
	sub	r3, r5, #1
	cmn	r3, #1
	str	r3, [sp, #8]
	ldreq	r3, .L2849+32
	.loc 3 305 0
	mvn	r7, r7, asl #16
.LVL2394:
	streq	r3, [sp, #20]
	.loc 3 306 0
	beq	.L2807
	ldr	r1, .L2849+32
	mov	ip, r4
.LVL2395:
	mov	lr, r1
	ldr	r8, [lr]
	mov	lr, r6, asl #1
	.loc 3 307 0
	mov	r10, #128
	mov	r9, #126
	mov	fp, lr
	str	r1, [sp, #20]
	ldr	r1, [sp, #4]
	str	lr, [sp, #12]
	add	r1, r1, #16
	str	r5, [sp, #16]
.LVL2396:
.L2796:
	and	lr, ip, r7
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r3, r3, #2
.LVL2397:
	.loc 3 307 0
	ldrb	r5, [r0, lr]	@ zero_extendqisi2
	add	lr, r6, ip
	smlabb	r5, r10, r5, r9
	ldrh	r5, [r8, r5]
	.loc 3 311 0
	and	lr, lr, r7
	.loc 3 307 0
	strh	r5, [r1, #-16]	@ movhi
.LVL2398:
	.loc 3 311 0
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	add	ip, fp, ip
.LVL2399:
	ldrb	lr, [r0, lr]	@ zero_extendqisi2
	add	r1, r1, #16
.LVL2400:
	smlabb	lr, r10, lr, r9
	ldrh	lr, [r8, lr]
	strh	lr, [r1, #-24]	@ movhi
.LVL2401:
	.loc 3 306 0
	bpl	.L2796
	ldr	r3, [sp, #8]
	add	r4, r4, r6, asl #1
	mov	r1, r3, lsr #1
	ldr	r3, [sp, #12]
	ldr	r5, [sp, #16]
	mla	r4, r3, r1, r4
	ldr	r3, [sp, #4]
	add	ip, r1, #1
.LVL2402:
	add	r3, r3, ip, asl #4
	.loc 3 316 0
	tst	r5, #1
	str	r3, [sp, #4]
	bne	.L2776
.L2807:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, r7
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
.LVL2403:
	ldr	r3, [sp, #20]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	ldr	ip, [r3]
	add	r2, r1, r2, asl #7
	ldrh	r2, [ip, r2]
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	b	.L2776
.LVL2404:
.L2846:
.LBE550:
.LBE549:
	.loc 3 289 0
	mov	lr, #126
	ldr	ip, .L2849+32
	ldr	r3, [sp, #4]
	ldr	r7, [ip]
.LVL2405:
	add	r3, r3, #8
.LVL2406:
.L2791:
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r2, ip, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL2407:
	.loc 3 289 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	smlabb	ip, r1, ip, lr
	ldrh	ip, [r7, ip]
	.loc 3 292 0
	add	r4, r4, r6
.LVL2408:
	.loc 3 289 0
	strh	ip, [r3, #-8]	@ movhi
.LVL2409:
	add	r3, r3, #8
.LVL2410:
	.loc 3 288 0
	bne	.L2791
.LBE560:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2411:
.L2794:
	.cfi_restore_state
.LBB561:
.LBB553:
.LBB551:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL2412:
	.loc 3 325 0
	blt	.L2800
	.loc 3 328 0
	cmp	r4, r1
	blt	.L2799
.L2802:
	rsb	r4, r1, r4
.LVL2413:
	cmp	r1, r4
	ble	.L2802
.L2799:
	.loc 3 345 0
	ldr	ip, .L2849+32
	ldr	r3, [sp, #4]
	ldr	r8, [ip]
	add	r3, r3, #8
	mov	r7, #128
.LVL2414:
	mov	r5, #126
	b	.L2801
.LVL2415:
.L2804:
	ldrb	ip, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL2416:
	.loc 3 345 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	smlabb	ip, r7, ip, r5
	ldrh	ip, [r8, ip]
	.loc 3 348 0
	rsbge	r4, r1, r4
	.loc 3 345 0
	strh	ip, [r3, #-8]	@ movhi
.LVL2417:
	add	r3, r3, #8
.LVL2418:
.L2801:
	.loc 3 339 0
	subs	lr, lr, #1
.LVL2419:
	bcs	.L2804
.LBE551:
.LBE553:
.LBE561:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2420:
.L2800:
	.cfi_restore_state
.LBB562:
.LBB554:
.LBB552:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL2421:
	bpl	.L2799
.LVL2422:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL2423:
	bmi	.L2800
	b	.L2799
.LVL2424:
.L2848:
.LBE552:
.LBE554:
.LBE562:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r1, [r7]
	add	r3, r2, r3
	cmp	r3, r1
	bne	.L2785
	b	.L2787
.L2847:
.LBB563:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2425:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL2426:
.LBE563:
	b	.L2782
.L2850:
	.align	2
.L2849:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole16
	.word	R_FlushHT16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	V_Palette16
	.word	viewheight
	.cfi_endproc
.LFE136:
	.size	R_DrawTranslatedColumn16_PointUV, .-R_DrawTranslatedColumn16_PointUV
	.align	2
	.type	R_DrawTranslatedColumn16_PointUV_PointZ, %function
R_DrawTranslatedColumn16_PointUV_PointZ:
.LFB137:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2427:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r5, r9, r8
	.loc 3 113 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 3 117 0
	ldr	r6, [r0, #16]
.LVL2428:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL2429:
	.loc 3 157 0
	bmi	.L2851
	.loc 3 171 0
	ldr	r3, .L2924
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r6, r3, r4
.LVL2430:
	.loc 3 174 0
	bne	.L2919
.LVL2431:
.L2854:
	.loc 3 215 0
	ldr	r8, .L2924+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L2860
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L2920
.L2861:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	r0, .L2924+8
	.loc 3 230 0
	ldr	r3, .L2924+12
	ldr	lr, .L2924+16
	.loc 3 231 0
	ldr	ip, .L2924+20
	.loc 3 224 0
	str	fp, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L2924+24
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
	mov	r3, #0
	.loc 3 222 0
	ldr	r2, [r7, #4]
	.loc 3 233 0
	ldr	r9, .L2924+28
	.loc 3 221 0
	ldr	r10, [r7]
.LVL2432:
	.loc 3 223 0
	ldr	r1, [r7, #8]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r2, r9, r2, asl #3
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 233 0
	str	r2, [sp]
.LVL2433:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
.LVL2434:
.L2863:
.LBB564:
	.loc 3 286 0
	ldr	r1, [r7, #24]
.LBE564:
	.loc 3 245 0
	add	r3, r3, #1
.LBB571:
	.loc 3 286 0
	cmp	r1, #128
.LBE571:
	.loc 3 245 0
	str	r3, [r8]
.LBB572:
	.loc 3 251 0
	ldr	r2, [r7, #32]
.LVL2435:
	.loc 3 252 0
	ldr	ip, [r7, #44]
.LVL2436:
	.loc 3 253 0
	ldr	r3, [r7, #52]
.LVL2437:
	.loc 3 278 0
	add	lr, r5, #1
.LVL2438:
	.loc 3 286 0
	beq	.L2921
	.loc 3 294 0
	cmp	r1, #0
	bne	.L2867
.LVL2439:
	.loc 3 297 0
	mov	r7, #128
.LVL2440:
	mov	lr, #126
	ldr	r1, .L2924+32
	ldr	r0, [sp]
	ldr	r8, [r1]
	add	r0, r0, #8
.LVL2441:
.L2868:
	ldrb	r1, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r5, r5, #1
.LVL2442:
	.loc 3 297 0
	ldrb	r1, [r3, r1]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r5, #1
	.loc 3 297 0
	ldrb	r1, [ip, r1]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r6
.LVL2443:
	.loc 3 297 0
	smlabb	r1, r7, r1, lr
	ldrh	r1, [r8, r1]
	add	r0, r0, #8
.LVL2444:
	strh	r1, [r0, #-16]	@ movhi
.LVL2445:
	.loc 3 296 0
	bne	.L2868
.LVL2446:
.L2851:
.LBE572:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2447:
.L2919:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2854
	.loc 3 178 0
	cmp	r8, #0
	beq	.L2855
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB573:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE573:
	.loc 3 179 0
	bne	.L2916
	.loc 3 186 0
	tst	r3, #2
	beq	.L2855
.LBB574:
	.loc 3 188 0
	uxth	fp, r10
.L2916:
	mov	r0, fp
.LVL2448:
	mov	r1, r6
	bl	__aeabi_idiv
.LVL2449:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL2450:
	.loc 3 189 0
	str	r8, [r7, #4]
	.loc 3 190 0
	rsb	r5, r0, r5
.LVL2451:
.L2855:
.LBE574:
	.loc 3 194 0
	ldr	r3, .L2924+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L2857
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L2922
	.loc 3 201 0
	tst	r3, #8
	beq	.L2857
.LBB575:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r6
	bl	__aeabi_idiv
.LVL2452:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 205 0
	rsb	r5, r0, r5
.LVL2453:
.L2857:
.LBE575:
	.loc 3 208 0
	cmp	r5, #0
	bgt	.L2854
	b	.L2851
.L2920:
	.loc 3 216 0
	ldr	r2, .L2924+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L2923
.L2860:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2454:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L2861
.L2862:
	.loc 3 235 0
	ldr	r2, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	str	r2, [r0, #16]
	ldr	r0, .L2924+4
	.loc 3 240 0
	ldr	ip, .L2924+4
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L2924+28
	add	r3, r1, r3, asl #1
	str	r3, [sp]
.LVL2455:
	ldr	r3, [r8]
.LVL2456:
	b	.L2863
.LVL2457:
.L2867:
.LBB576:
.LBB565:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL2458:
	.loc 3 304 0
	tst	r0, r1
	bne	.L2869
.LBB566:
	.loc 3 305 0
	mov	r8, r0, asl #16
	mvn	r8, r8, lsr #16
	.loc 3 306 0
	sub	r1, r5, #1
	cmn	r1, #1
	str	r1, [sp, #4]
	mov	r9, r1
	ldreq	r1, .L2924+32
	.loc 3 305 0
	mvn	r8, r8, asl #16
.LVL2459:
	streq	r1, [sp, #20]
	.loc 3 306 0
	beq	.L2882
	ldr	r1, .L2924+32
	str	r5, [sp, #12]
	mov	lr, r1
	ldr	lr, [lr]
	mov	r0, r4
.LVL2460:
	mov	r7, lr
.LVL2461:
	mov	lr, r6, asl #1
	mov	r5, r7
	.loc 3 307 0
	mov	fp, #128
	mov	r10, #126
	mov	r7, lr
	str	r1, [sp, #20]
	ldr	r1, [sp]
	str	lr, [sp, #8]
	add	r1, r1, #16
	str	r4, [sp, #16]
.LVL2462:
.L2871:
	and	lr, r0, r8
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r9, r9, #2
.LVL2463:
	.loc 3 307 0
	ldrb	r4, [r3, lr]	@ zero_extendqisi2
	add	lr, r6, r0
	ldrb	r4, [ip, r4]	@ zero_extendqisi2
	.loc 3 311 0
	and	lr, lr, r8
	.loc 3 307 0
	smlabb	r4, fp, r4, r10
	ldrh	r4, [r5, r4]
	add	r0, r7, r0
.LVL2464:
	strh	r4, [r1, #-16]	@ movhi
.LVL2465:
	.loc 3 311 0
	ldrb	lr, [r2, lr, asr #16]	@ zero_extendqisi2
	add	r1, r1, #16
.LVL2466:
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	smlabb	lr, fp, lr, r10
	ldrh	lr, [r5, lr]
	strh	lr, [r1, #-24]	@ movhi
.LVL2467:
	.loc 3 306 0
	bpl	.L2871
	ldr	r4, [sp, #16]
	ldr	r1, [sp, #4]
	ldr	lr, [sp, #8]
	mov	r1, r1, lsr #1
	add	r4, r4, r6, asl #1
	add	r0, r1, #1
.LVL2468:
	ldr	r5, [sp, #12]
	mla	r4, lr, r1, r4
	ldr	r1, [sp]
	.loc 3 316 0
	tst	r5, #1
	add	r1, r1, r0, asl #4
	str	r1, [sp]
	bne	.L2851
.L2882:
	.loc 3 317 0
	mov	r1, #126
	and	r4, r4, r8
	ldrb	r0, [r2, r4, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
.LVL2469:
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
.LVL2470:
	ldr	r2, [r2]
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	add	r3, r1, r3, asl #7
	ldrh	r3, [r2, r3]
	ldr	r2, [sp]
	strh	r3, [r2]	@ movhi
	b	.L2851
.LVL2471:
.L2921:
.LBE566:
.LBE565:
	.loc 3 289 0
	mov	r7, #126
.LVL2472:
	ldr	r0, .L2924+32
	ldr	lr, [sp]
	ldr	r8, [r0]
	add	lr, lr, #8
.LVL2473:
.L2866:
	bic	r0, r4, #-16777216
	bic	r0, r0, #8388608
	ldrb	r0, [r2, r0, asr #16]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r5, r5, #1
.LVL2474:
	.loc 3 289 0
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r5, #1
	.loc 3 289 0
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r6
.LVL2475:
	.loc 3 289 0
	smlabb	r0, r1, r0, r7
	ldrh	r0, [r8, r0]
	add	lr, lr, #8
.LVL2476:
	strh	r0, [lr, #-16]	@ movhi
.LVL2477:
	.loc 3 288 0
	bne	.L2866
.LBE576:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2478:
.L2869:
	.cfi_restore_state
.LBB577:
.LBB569:
.LBB567:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL2479:
	.loc 3 325 0
	blt	.L2875
	.loc 3 328 0
	cmp	r4, r1
	blt	.L2874
.L2877:
	rsb	r4, r1, r4
.LVL2480:
	cmp	r1, r4
	ble	.L2877
.L2874:
	.loc 3 345 0
	ldr	r0, .L2924+32
	ldr	r5, [sp]
	ldr	r9, [r0]
	add	r5, r5, #8
	mov	r8, #128
	mov	r7, #126
.LVL2481:
	b	.L2876
.LVL2482:
.L2879:
	ldrb	r0, [r2, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r6
.LVL2483:
	.loc 3 345 0
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	.loc 3 348 0
	rsbge	r4, r1, r4
	.loc 3 345 0
	smlabb	r0, r8, r0, r7
	ldrh	r0, [r9, r0]
	add	r5, r5, #8
.LVL2484:
	strh	r0, [r5, #-16]	@ movhi
.LVL2485:
.L2876:
	.loc 3 339 0
	subs	lr, lr, #1
.LVL2486:
	bcs	.L2879
.LBE567:
.LBE569:
.LBE577:
	.loc 3 357 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2487:
.L2875:
	.cfi_restore_state
.LBB578:
.LBB570:
.LBB568:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL2488:
	bpl	.L2874
.LVL2489:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL2490:
	bmi	.L2875
	b	.L2874
.LVL2491:
.L2923:
.LBE568:
.LBE570:
.LBE578:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r7]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L2860
	b	.L2862
.L2922:
.LBB579:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r6
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2492:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
	.loc 3 199 0
	rsb	r5, r0, r5
.LVL2493:
.LBE579:
	b	.L2857
.L2925:
	.align	2
.L2924:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole16
	.word	R_FlushHT16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	V_Palette16
	.word	viewheight
	.cfi_endproc
.LFE137:
	.size	R_DrawTranslatedColumn16_PointUV_PointZ, .-R_DrawTranslatedColumn16_PointUV_PointZ
	.align	2
	.type	R_DrawTranslatedColumn16_PointUV_LinearZ, %function
R_DrawTranslatedColumn16_PointUV_LinearZ:
.LFB138:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2494:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r5, r7}
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 157 0
	subs	r3, r7, r5
	.loc 3 117 0
	ldr	fp, [r0, #16]
.LVL2495:
	.loc 3 157 0
	str	r3, [sp, #8]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2496:
	.loc 3 157 0
	bmi	.L2926
	.loc 3 171 0
	ldr	r3, .L3005
.LVL2497:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	mov	r6, r0
	.loc 3 171 0
	mla	r4, fp, r3, r4
.LVL2498:
	.loc 3 174 0
	bne	.L2999
.LVL2499:
.L2929:
	.loc 3 215 0
	ldr	r8, .L3005+4
.LVL2500:
	ldr	r1, [r8]
	cmp	r1, #4
	beq	.L2935
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r1, #0
	bne	.L3000
.L2936:
	.loc 3 222 0 is_stmt 1
	ldmia	r6, {r2, r3}
	.loc 3 224 0
	mov	r9, #1
	.loc 3 230 0
	ldr	r1, .L3005+8
	.loc 3 231 0
	ldr	lr, .L3005+12
	.loc 3 230 0
	ldr	r7, .L3005+16
	.loc 3 224 0
	ldr	ip, .L3005+20
	.loc 3 231 0
	stmia	r1, {r7, lr}
	mov	lr, #0
	.loc 3 233 0
	ldr	r5, .L3005+24
	.loc 3 223 0
	ldr	r0, [r6, #8]
	.loc 3 224 0
	str	r9, [ip, #-1204]
	.loc 3 232 0
	ldr	ip, .L3005+28
	.loc 3 233 0
	add	r5, r5, r3, asl #3
	.loc 3 221 0
	str	r2, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	r5, [sp, #12]
.LVL2501:
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
	.loc 3 232 0
	str	ip, [r1, #8]
.LVL2502:
.L2938:
.LBB580:
	.loc 3 259 0
	ldr	r1, [r6, #12]
	.loc 3 286 0
	ldr	r7, [r6, #24]
	.loc 3 260 0
	ldr	ip, [r6, #44]
	ldr	r0, [r6, #48]
.LBE580:
	.loc 3 245 0
	add	lr, lr, #1
.LBB587:
	.loc 3 259 0
	mov	r1, r1, asr #6
	.loc 3 286 0
	cmp	r7, #128
.LBE587:
	.loc 3 245 0
	str	lr, [r8]
.LBB588:
	.loc 3 260 0
	str	ip, [sp, #48]
	.loc 3 259 0
	uxtb	r1, r1
	.loc 3 260 0
	str	r0, [sp, #52]
	.loc 3 251 0
	ldr	ip, [r6, #32]
.LVL2503:
	.loc 3 253 0
	ldr	lr, [r6, #52]
.LVL2504:
	.loc 3 286 0
	beq	.L3001
	.loc 3 294 0
	cmp	r7, #0
	bne	.L2946
.LVL2505:
	ldr	r0, .L3005+32
	ldr	r5, [sp, #8]
	ldr	r9, [r0]
	and	r0, r2, #3
	ldr	r2, [sp, #12]
.LVL2506:
	add	r8, r5, #1
	ldr	r6, .L3005+36
.LVL2507:
	add	r8, r8, r3
	add	r5, r2, #8
.LVL2508:
.L2947:
	.loc 3 297 0
	and	r2, r3, #3
	add	r2, r0, r2, asl #2
	ldrb	r2, [r6, r2]	@ zero_extendqisi2
	ldrb	r7, [ip, r4, asr #16]	@ zero_extendqisi2
	cmp	r2, r1
	movge	r2, #0
	movlt	r2, #1
	add	r10, sp, #56
	add	r2, r10, r2, asl #2
	ldrb	r7, [lr, r7]	@ zero_extendqisi2
	ldr	r2, [r2, #-8]
	mov	r10, #126
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	mov	r7, #128
	smlabb	r2, r7, r2, r10
	.loc 3 298 0
	add	r3, r3, #1
.LVL2509:
	.loc 3 297 0
	ldrh	r2, [r9, r2]
	.loc 3 296 0
	cmp	r3, r8
	.loc 3 297 0
	strh	r2, [r5, #-8]	@ movhi
	.loc 3 300 0
	add	r4, r4, fp
.LVL2510:
	add	r5, r5, #8
.LVL2511:
	.loc 3 296 0
	bne	.L2947
.LVL2512:
.L2926:
.LBE588:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2513:
.L2999:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L2929
	.loc 3 178 0
	cmp	r5, #0
	beq	.L2930
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB589:
	.loc 3 181 0
	mvnne	r9, r8
	uxthne	r9, r9
.LBE589:
	.loc 3 179 0
	bne	.L2994
	.loc 3 186 0
	tst	r3, #2
	beq	.L2930
.LBB590:
	.loc 3 188 0
	uxth	r9, r8
.L2994:
	mov	r0, r9
.LVL2514:
	mov	r1, fp
	bl	__aeabi_idiv
.LVL2515:
	.loc 3 190 0
	ldr	r3, [sp, #8]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r9
.LVL2516:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL2517:
	.loc 3 190 0
	str	r3, [sp, #8]
.LVL2518:
.L2930:
.LBE590:
	.loc 3 194 0
	ldr	r3, .L3005+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r7, r3
	beq	.L2932
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L3002
	.loc 3 201 0
	tst	r3, #8
	beq	.L2932
.LBB591:
	.loc 3 203 0
	mov	r1, fp
	uxth	r0, r8
.LVL2519:
.L2995:
	bl	__aeabi_idiv
.LVL2520:
	.loc 3 205 0
	ldr	r3, [sp, #8]
	.loc 3 204 0
	rsb	r7, r0, r7
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r7, [r6, #8]
.LVL2521:
	.loc 3 205 0
	str	r3, [sp, #8]
.LVL2522:
.L2932:
.LBE591:
	.loc 3 208 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bgt	.L2929
	b	.L2926
.LVL2523:
.L3000:
	.loc 3 216 0
	ldr	r3, .L3005+20
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L3003
.L2935:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2524:
	.loc 3 219 0
	ldr	r1, [r8]
	cmp	r1, #0
	beq	.L2936
	ldr	r0, [r6]
.L2937:
	.loc 3 235 0
	ldr	ip, [r6, #4]
	.loc 3 238 0
	ldr	r2, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r6, #8]
	.loc 3 238 0
	cmp	ip, r2
	.loc 3 235 0
	ldr	r2, .L3005+4
	add	lr, r8, r1, asl #2
	.loc 3 239 0
	strgt	ip, [r2, #4]
	.loc 3 243 0
	ldr	r5, .L3005+24
	.loc 3 240 0
	ldr	r2, [r8, #8]
	.loc 3 236 0
	str	r3, [lr, #32]
	.loc 3 235 0
	str	ip, [lr, #16]
	.loc 3 243 0
	add	r1, r1, ip, asl #2
	.loc 3 240 0
	ldr	lr, .L3005+4
	cmp	r3, r2
	.loc 3 243 0
	add	r1, r5, r1, asl #1
	.loc 3 241 0
	strlt	r3, [lr, #8]
	mov	r2, r0
	.loc 3 235 0
	mov	r3, ip
	ldr	lr, [r8]
	.loc 3 243 0
	str	r1, [sp, #12]
.LVL2525:
	b	.L2938
.LVL2526:
.L2946:
.LBB592:
.LBB581:
	.loc 3 303 0
	sub	r0, r7, #1
.LVL2527:
	.loc 3 304 0
	tst	r0, r7
	bne	.L2948
.LBB582:
	.loc 3 305 0
	mov	r0, r0, asl #16
.LVL2528:
	mvn	r5, r0, lsr #16
	mvn	r5, r5, asl #16
	.loc 3 306 0
	ldr	r0, [sp, #8]
	.loc 3 305 0
	str	r5, [sp, #24]
.LVL2529:
	.loc 3 306 0
	sub	r0, r0, #1
	cmn	r0, #1
	beq	.L3004
	ldr	r5, .L3005+32
.LVL2530:
	mov	r0, r0, lsr #1
	mov	r6, r5
.LVL2531:
	str	r0, [sp, #28]
	mov	r0, r0, asl #1
	str	r5, [sp, #44]
	str	r0, [sp, #32]
	add	r5, r0, #2
	ldr	r0, [r6]
	mov	r8, r3
	mov	r7, r0
.LVL2532:
	and	r0, r2, #3
	add	r2, r5, r3
.LVL2533:
	mov	r5, r7
	str	r2, [sp, #20]
	ldr	r2, [sp, #12]
	mov	r10, r4
	add	r9, r2, #16
	str	r4, [sp, #36]
	mov	r2, fp, asl #1
	ldr	r6, .L3005+36
	ldr	r4, [sp, #24]
.LVL2534:
	str	r2, [sp, #4]
	str	fp, [sp, #16]
	str	r3, [sp, #40]
.LVL2535:
.L2950:
	.loc 3 307 0
	and	r3, r8, #3
	add	r3, r0, r3, asl #2
	ldrb	r2, [r6, r3]	@ zero_extendqisi2
	add	r3, r8, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r0, r3, asl #2
	.loc 3 307 0
	cmp	r2, r1
	.loc 3 311 0
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	.loc 3 307 0
	movge	r2, #0
	movlt	r2, #1
	.loc 3 311 0
	cmp	r3, r1
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	and	r7, r10, r4
	ldrb	r7, [ip, r7, asr #16]	@ zero_extendqisi2
	add	fp, sp, #56
	add	r2, fp, r2, asl #2
	ldrb	r7, [lr, r7]	@ zero_extendqisi2
	ldr	r2, [r2, #-8]
	.loc 3 311 0
	add	r3, fp, r3, asl #2
	.loc 3 307 0
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	mov	fp, #126
	.loc 3 311 0
	ldr	r7, [r3, #-8]
	.loc 3 307 0
	mov	r3, #128
	smlabb	r2, r3, r2, fp
	ldrh	r2, [r5, r2]
	.loc 3 312 0
	add	r8, r8, #2
.LVL2536:
	.loc 3 307 0
	strh	r2, [r9, #-16]	@ movhi
.LVL2537:
	.loc 3 306 0
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	cmp	r8, r2
	ldr	r2, [sp, #4]
	add	r3, r3, r10
.LVL2538:
	add	r10, r2, r10
.LVL2539:
	.loc 3 311 0
	mov	r2, #128
	and	r3, r3, r4
	ldrb	r3, [ip, r3, asr #16]	@ zero_extendqisi2
	add	r9, r9, #16
.LVL2540:
	ldrb	r3, [lr, r3]	@ zero_extendqisi2
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	smlabb	r3, r2, r3, fp
	ldrh	r3, [r5, r3]
	strh	r3, [r9, #-24]	@ movhi
	.loc 3 306 0
	bne	.L2950
	.loc 3 316 0
	ldr	r7, [sp, #8]
	ldr	r3, [sp, #40]
	tst	r7, #1
	ldr	r7, [sp, #32]
	ldr	r4, [sp, #36]
	ldr	fp, [sp, #16]
	add	r3, r3, #2
	ldr	r5, [sp, #28]
	add	r3, r3, r7
	ldr	r7, [sp, #4]
	add	r4, r4, fp, asl #1
	add	r2, r5, #1
	mla	r4, r7, r5, r4
	ldr	r5, [sp, #12]
	add	r2, r5, r2, asl #4
	str	r2, [sp, #12]
	bne	.L2926
.LVL2541:
.L2959:
	.loc 3 317 0
	and	r3, r3, #3
	add	r0, r0, r3, asl #2
	ldrb	r3, [r6, r0]	@ zero_extendqisi2
	mov	r2, #126
	cmp	r3, r1
	movge	r1, #0
.LVL2542:
	movlt	r1, #1
	ldr	r3, [sp, #24]
	add	r0, sp, #56
	and	r4, r4, r3
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r1, r0, r1, asl #2
	ldr	r0, [r1, #-8]
	ldrb	r3, [lr, r3]	@ zero_extendqisi2
	ldr	r1, [sp, #44]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r1, [r1]
	add	r3, r2, r3, asl #7
	ldrh	r3, [r1, r3]
	ldr	r2, [sp, #12]
	strh	r3, [r2]	@ movhi
	b	.L2926
.LVL2543:
.L3001:
	ldr	r0, .L3005+32
	ldr	r5, [sp, #8]
	ldr	r10, [r0]
	and	r0, r2, #3
	ldr	r2, [sp, #12]
.LVL2544:
	add	r9, r5, #1
	ldr	r6, .L3005+36
.LVL2545:
.LBE582:
.LBE581:
	.loc 3 289 0
	str	r7, [sp, #4]
	add	r9, r9, r3
	add	r5, r2, #8
.LVL2546:
.L2944:
	and	r2, r3, #3
	add	r2, r0, r2, asl #2
	ldrb	r2, [r6, r2]	@ zero_extendqisi2
	add	r7, sp, #56
	cmp	r2, r1
	movge	r2, #0
	movlt	r2, #1
	add	r2, r7, r2, asl #2
	mov	r7, #126
	bic	r8, r4, #-16777216
	bic	r8, r8, #8388608
	ldrb	r8, [ip, r8, asr #16]	@ zero_extendqisi2
	ldr	r2, [r2, #-8]
	ldrb	r8, [lr, r8]	@ zero_extendqisi2
	.loc 3 290 0
	add	r3, r3, #1
.LVL2547:
	.loc 3 289 0
	ldrb	r2, [r2, r8]	@ zero_extendqisi2
	ldrh	r8, [sp, #4]
	.loc 3 288 0
	cmp	r3, r9
	.loc 3 289 0
	smlabb	r2, r8, r2, r7
	ldrh	r2, [r10, r2]
	.loc 3 292 0
	add	r4, r4, fp
.LVL2548:
	.loc 3 289 0
	strh	r2, [r5, #-8]	@ movhi
	add	r5, r5, #8
.LVL2549:
	.loc 3 288 0
	bne	.L2944
.LBE592:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2550:
.L2948:
	.cfi_restore_state
.LBB593:
.LBB585:
.LBB583:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r7, r7, asl #16
.LVL2551:
	.loc 3 325 0
	bge	.L2997
	b	.L2954
.L2956:
	rsb	r4, r7, r4
.LVL2552:
.L2997:
	.loc 3 328 0
	cmp	r4, r7
	bge	.L2956
.L2953:
	ldr	r0, [sp, #8]
	.loc 3 345 0
	ldr	r6, .L3005+32
.LVL2553:
	add	r9, r0, #1
	ldr	r0, [sp, #12]
	add	r9, r9, r3
	add	r5, r0, #8
	ldr	r10, [r6]
	and	r0, r2, #3
	b	.L2955
.LVL2554:
.L2958:
	ldr	r2, .L3005+36
	ldrb	r8, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r2, r6]	@ zero_extendqisi2
	add	r2, sp, #56
	cmp	r6, r1
	movge	r6, #0
	movlt	r6, #1
	add	r6, r2, r6, asl #2
	ldrb	r8, [lr, r8]	@ zero_extendqisi2
	ldr	r6, [r6, #-8]
	mov	r2, #128
	ldrb	r6, [r6, r8]	@ zero_extendqisi2
	mov	r8, #126
	smlabb	r6, r2, r6, r8
	.loc 3 348 0
	add	r4, r4, fp
.LVL2555:
	.loc 3 345 0
	ldrh	r6, [r10, r6]
	.loc 3 348 0
	cmp	r4, r7
	.loc 3 345 0
	strh	r6, [r5, #-8]	@ movhi
	.loc 3 346 0
	add	r3, r3, #1
.LVL2556:
	.loc 3 348 0
	rsbge	r4, r7, r4
.LVL2557:
	add	r5, r5, #8
.LVL2558:
.L2955:
	.loc 3 345 0
	and	r6, r3, #3
	.loc 3 339 0
	cmp	r3, r9
	.loc 3 345 0
	add	r6, r0, r6, asl #2
	.loc 3 339 0
	bne	.L2958
.LBE583:
.LBE585:
.LBE593:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2559:
.L2954:
	.cfi_restore_state
.LBB594:
.LBB586:
.LBB584:
	.loc 3 326 0 discriminator 1
	adds	r4, r7, r4
.LVL2560:
	bpl	.L2953
.LVL2561:
	.loc 3 326 0 is_stmt 0
	adds	r4, r7, r4
.LVL2562:
	bmi	.L2954
	b	.L2953
.LVL2563:
.L3003:
.LBE584:
.LBE586:
.LBE594:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r0, [r6]
	add	r3, r1, r3
	cmp	r3, r0
	bne	.L2935
	b	.L2937
.LVL2564:
.L3002:
.LBB595:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, fp
	uxth	r0, r0
	b	.L2995
.LVL2565:
.L3004:
	and	r0, r2, #3
	ldr	r2, .L3005+32
.LVL2566:
	ldr	r6, .L3005+36
.LVL2567:
	str	r2, [sp, #44]
	b	.L2959
.L3006:
	.align	2
.L3005:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	R_FlushHT16
	.word	R_FlushWhole16
	.word	.LANCHOR2
	.word	.LANCHOR0+1220
	.word	R_FlushQuad16
	.word	V_Palette16
	.word	filter_ditherMatrix
	.word	viewheight
.LBE595:
	.cfi_endproc
.LFE138:
	.size	R_DrawTranslatedColumn16_PointUV_LinearZ, .-R_DrawTranslatedColumn16_PointUV_LinearZ
	.align	2
	.type	R_DrawTranslatedColumn32_PointUV, %function
R_DrawTranslatedColumn32_PointUV:
.LFB145:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2568:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r6, r9, r8
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL2569:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL2570:
	.loc 3 157 0
	bmi	.L3007
	.loc 3 171 0
	ldr	r3, .L3082
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL2571:
	.loc 3 174 0
	bne	.L3077
.LVL2572:
.L3010:
	.loc 3 215 0
	ldr	r8, .L3082+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L3016
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L3078
.L3017:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	ip, .L3082+8
	.loc 3 230 0
	ldr	r3, .L3082+12
	ldr	r9, .L3082+16
	.loc 3 231 0
	ldr	lr, .L3082+20
	.loc 3 224 0
	str	fp, [ip, #-1204]
	.loc 3 232 0
	ldr	ip, .L3082+24
	.loc 3 231 0
	stmia	r3, {r9, lr}
	.loc 3 232 0
	str	ip, [r3, #8]
	mov	r3, #0
	.loc 3 222 0
	ldr	r2, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL2573:
	.loc 3 223 0
	ldr	r0, [r7, #8]
	.loc 3 233 0
	ldr	r1, .L3082+28
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r1, r1, r2, asl #4
.LVL2574:
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
.L3019:
.LBB596:
	.loc 3 286 0
	ldr	r0, [r7, #24]
.LBE596:
	.loc 3 245 0
	add	r3, r3, #1
.LBB603:
	.loc 3 286 0
	cmp	r0, #128
.LBE603:
	.loc 3 245 0
	str	r3, [r8]
.LBB604:
	.loc 3 253 0
	ldr	r2, [r7, #52]
	.loc 3 251 0
	ldr	r3, [r7, #32]
.LVL2575:
	.loc 3 286 0
	beq	.L3079
	.loc 3 294 0
	cmp	r0, #0
	bne	.L3023
.LVL2576:
	ldr	ip, .L3082+32
	add	r6, r6, #1
.LVL2577:
	ldr	lr, [ip]
.LVL2578:
.L3024:
	.loc 3 297 0
	ldrb	ip, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r5
.LVL2579:
	.loc 3 297 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	add	ip, lr, ip, asl #8
	ldr	ip, [ip, #252]
	str	ip, [r1, r0, asl #4]
.LVL2580:
	add	r0, r0, #1
.LVL2581:
	.loc 3 296 0
	cmp	r0, r6
	bne	.L3024
.LVL2582:
.L3007:
.LBE604:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2583:
.L3077:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3010
	.loc 3 178 0
	cmp	r8, #0
	beq	.L3011
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB605:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE605:
	.loc 3 179 0
	bne	.L3072
	.loc 3 186 0
	tst	r3, #2
	beq	.L3011
.LBB606:
	.loc 3 188 0
	uxth	fp, r10
.L3072:
	mov	r0, fp
.LVL2584:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL2585:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL2586:
	.loc 3 189 0
	str	r8, [r7, #4]
.LVL2587:
	.loc 3 190 0
	rsb	r6, r0, r6
.LVL2588:
.L3011:
.LBE606:
	.loc 3 194 0
	ldr	r3, .L3082+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L3013
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L3080
	.loc 3 201 0
	tst	r3, #8
	beq	.L3013
.LBB607:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r5
	bl	__aeabi_idiv
.LVL2589:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL2590:
	.loc 3 205 0
	rsb	r6, r0, r6
.LVL2591:
.L3013:
.LBE607:
	.loc 3 208 0
	cmp	r6, #0
	bgt	.L3010
	b	.L3007
.L3078:
	.loc 3 216 0
	ldr	r2, .L3082+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L3081
.L3016:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2592:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L3017
.L3018:
	.loc 3 235 0
	ldr	r1, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r2, [r7, #8]
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r1, [r0, #16]
	.loc 3 236 0
	str	r2, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L3082+4
	.loc 3 240 0
	ldr	ip, .L3082+4
	.loc 3 239 0
	strgt	r1, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	cmp	r2, r0
	.loc 3 241 0
	strlt	r2, [ip, #8]
	.loc 3 243 0
	ldr	r2, .L3082+28
	add	r1, r2, r3, asl #2
.LVL2593:
	ldr	r3, [r8]
	b	.L3019
.LVL2594:
.L3023:
.LBB608:
.LBB597:
	.loc 3 303 0
	sub	ip, r0, #1
.LVL2595:
	.loc 3 304 0
	tst	ip, r0
	bne	.L3025
.LBB598:
	.loc 3 305 0
	mov	r8, ip, asl #16
	mvn	r8, r8, lsr #16
	.loc 3 306 0
	sub	r0, r6, #1
	cmn	r0, #1
	str	r0, [sp]
	mov	r9, r0
	ldreq	r0, .L3082+32
	.loc 3 305 0
	mvn	r8, r8, asl #16
.LVL2596:
	streq	r0, [sp, #4]
	.loc 3 306 0
	beq	.L3037
	ldr	r0, .L3082+32
	mov	ip, r4
.LVL2597:
	mov	lr, r0
	ldr	r10, [lr]
	str	r0, [sp, #4]
	mov	fp, r5, asl #1
	add	r0, r1, #32
.LVL2598:
.L3027:
	.loc 3 307 0
	and	lr, ip, r8
	ldrb	lr, [r3, lr, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r9, r9, #2
.LVL2599:
	.loc 3 307 0
	ldrb	r7, [r2, lr]	@ zero_extendqisi2
	add	lr, r5, ip
	add	r7, r10, r7, asl #8
	ldr	r7, [r7, #252]
	.loc 3 311 0
	and	lr, lr, r8
	.loc 3 307 0
	str	r7, [r0, #-32]
.LVL2600:
	.loc 3 311 0
	ldrb	lr, [r3, lr, asr #16]	@ zero_extendqisi2
	add	ip, fp, ip
.LVL2601:
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	add	r0, r0, #32
.LVL2602:
	add	lr, r10, lr, asl #8
	ldr	lr, [lr, #252]
	str	lr, [r0, #-48]
.LVL2603:
	.loc 3 306 0
	bpl	.L3027
	ldr	r0, [sp]
	add	r4, r4, r5, asl #1
	mov	r0, r0, lsr #1
	add	ip, r0, #1
.LVL2604:
	.loc 3 316 0
	tst	r6, #1
	mla	r4, fp, r0, r4
	add	r1, r1, ip, asl #5
	bne	.L3007
.L3037:
	.loc 3 317 0
	and	r4, r4, r8
	ldrb	r0, [r3, r4, asr #16]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
.LVL2605:
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
.LVL2606:
	ldr	r3, [r3]
	add	r3, r3, r2, asl #8
	ldr	r3, [r3, #252]
	str	r3, [r1]
	b	.L3007
.LVL2607:
.L3079:
.LBE598:
.LBE597:
	.loc 3 286 0
	mov	r0, #0
	ldr	ip, .L3082+32
	add	r6, r6, #1
.LVL2608:
	ldr	lr, [ip]
.LVL2609:
.L3022:
	.loc 3 289 0
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r3, ip, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL2610:
	.loc 3 289 0
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	add	ip, lr, ip, asl #8
	ldr	ip, [ip, #252]
	str	ip, [r1, r0, asl #4]
.LVL2611:
	add	r0, r0, #1
.LVL2612:
	.loc 3 288 0
	cmp	r0, r6
	bne	.L3022
.LBE608:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2613:
.L3025:
	.cfi_restore_state
.LBB609:
.LBB601:
.LBB599:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL2614:
	.loc 3 325 0
	bge	.L3074
	b	.L3031
.L3033:
	rsb	r4, r0, r4
.LVL2615:
.L3074:
	.loc 3 328 0
	cmp	r4, r0
	bge	.L3033
.L3030:
	.loc 3 345 0
	ldr	ip, .L3082+32
	add	r6, r6, #1
.LVL2616:
	ldr	r7, [ip]
.LVL2617:
	mov	ip, #0
.LVL2618:
.L3032:
	ldrb	lr, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r5
.LVL2619:
	.loc 3 345 0
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	add	lr, r7, lr, asl #8
	ldr	lr, [lr, #252]
	.loc 3 348 0
	rsbge	r4, r0, r4
	.loc 3 345 0
	str	lr, [r1, ip, asl #4]
.LVL2620:
	add	ip, ip, #1
.LVL2621:
	.loc 3 339 0
	cmp	ip, r6
	bne	.L3032
.LBE599:
.LBE601:
.LBE609:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2622:
.L3031:
	.cfi_restore_state
.LBB610:
.LBB602:
.LBB600:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL2623:
	bpl	.L3030
.LVL2624:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL2625:
	bmi	.L3031
	b	.L3030
.LVL2626:
.L3081:
.LBE600:
.LBE602:
.LBE610:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r7]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3016
	b	.L3018
.L3080:
.LBB611:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r5
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2627:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL2628:
	.loc 3 199 0
	rsb	r6, r0, r6
.LVL2629:
.LBE611:
	b	.L3013
.L3083:
	.align	2
.L3082:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole32
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	V_Palette32
	.word	viewheight
	.cfi_endproc
.LFE145:
	.size	R_DrawTranslatedColumn32_PointUV, .-R_DrawTranslatedColumn32_PointUV
	.align	2
	.type	R_DrawTranslatedColumn32_PointUV_PointZ, %function
R_DrawTranslatedColumn32_PointUV_PointZ:
.LFB146:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2630:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r8, r9}
	.loc 3 157 0
	subs	r6, r9, r8
	.loc 3 113 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL2631:
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL2632:
	.loc 3 157 0
	bmi	.L3084
	.loc 3 171 0
	ldr	r3, .L3159
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r8
	.loc 3 174 0
	cmp	r2, #0
	mov	r7, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL2633:
	.loc 3 174 0
	bne	.L3154
.LVL2634:
.L3087:
	.loc 3 215 0
	ldr	r8, .L3159+4
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L3093
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L3155
.L3094:
	.loc 3 224 0 is_stmt 1
	mov	fp, #1
	ldr	ip, .L3159+8
	.loc 3 230 0
	ldr	r3, .L3159+12
	ldr	r9, .L3159+16
	.loc 3 231 0
	ldr	lr, .L3159+20
	.loc 3 224 0
	str	fp, [ip, #-1204]
	.loc 3 232 0
	ldr	ip, .L3159+24
	.loc 3 231 0
	stmia	r3, {r9, lr}
	.loc 3 232 0
	str	ip, [r3, #8]
	mov	r3, #0
	.loc 3 222 0
	ldr	r2, [r7, #4]
	.loc 3 221 0
	ldr	r10, [r7]
.LVL2635:
	.loc 3 223 0
	ldr	r0, [r7, #8]
	.loc 3 233 0
	ldr	r1, .L3159+28
	.loc 3 221 0
	str	r10, [r8, #12]
	.loc 3 222 0
	str	r2, [r8, #4]
	str	r2, [r8, #16]
	.loc 3 233 0
	add	r1, r1, r2, asl #4
.LVL2636:
	.loc 3 223 0
	str	r0, [r8, #8]
	str	r0, [r8, #32]
.L3096:
.LBB612:
	.loc 3 286 0
	ldr	ip, [r7, #24]
.LBE612:
	.loc 3 245 0
	add	r3, r3, #1
.LBB619:
	.loc 3 286 0
	cmp	ip, #128
.LBE619:
	.loc 3 245 0
	str	r3, [r8]
.LBB620:
	.loc 3 252 0
	ldr	r2, [r7, #44]
	.loc 3 251 0
	ldr	r3, [r7, #32]
.LVL2637:
	.loc 3 253 0
	ldr	r0, [r7, #52]
.LVL2638:
	.loc 3 286 0
	beq	.L3156
	.loc 3 294 0
	cmp	ip, #0
	bne	.L3100
.LVL2639:
	ldr	lr, .L3159+32
	add	r6, r6, #1
.LVL2640:
	ldr	r7, [lr]
.LVL2641:
.L3101:
	.loc 3 297 0
	ldrb	lr, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r5
.LVL2642:
	.loc 3 297 0
	ldrb	lr, [r0, lr]	@ zero_extendqisi2
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	add	lr, r7, lr, asl #8
	ldr	lr, [lr, #252]
	str	lr, [r1, ip, asl #4]
.LVL2643:
	add	ip, ip, #1
.LVL2644:
	.loc 3 296 0
	cmp	ip, r6
	bne	.L3101
.LVL2645:
.L3084:
.LBE620:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2646:
.L3154:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3087
	.loc 3 178 0
	cmp	r8, #0
	beq	.L3088
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB621:
	.loc 3 181 0
	mvnne	fp, r10
	uxthne	fp, fp
.LBE621:
	.loc 3 179 0
	bne	.L3149
	.loc 3 186 0
	tst	r3, #2
	beq	.L3088
.LBB622:
	.loc 3 188 0
	uxth	fp, r10
.L3149:
	mov	r0, fp
.LVL2647:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL2648:
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL2649:
	.loc 3 189 0
	str	r8, [r7, #4]
.LVL2650:
	.loc 3 190 0
	rsb	r6, r0, r6
.LVL2651:
.L3088:
.LBE622:
	.loc 3 194 0
	ldr	r3, .L3159+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L3090
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L3157
	.loc 3 201 0
	tst	r3, #8
	beq	.L3090
.LBB623:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r5
	bl	__aeabi_idiv
.LVL2652:
	.loc 3 204 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL2653:
	.loc 3 205 0
	rsb	r6, r0, r6
.LVL2654:
.L3090:
.LBE623:
	.loc 3 208 0
	cmp	r6, #0
	bgt	.L3087
	b	.L3084
.L3155:
	.loc 3 216 0
	ldr	r2, .L3159+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L3158
.L3093:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2655:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L3094
.L3095:
	.loc 3 235 0
	ldr	r1, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r2, [r7, #8]
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r1, [r0, #16]
	.loc 3 236 0
	str	r2, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L3159+4
	.loc 3 240 0
	ldr	ip, .L3159+4
	.loc 3 239 0
	strgt	r1, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	cmp	r2, r0
	.loc 3 241 0
	strlt	r2, [ip, #8]
	.loc 3 243 0
	ldr	r2, .L3159+28
	add	r1, r2, r3, asl #2
.LVL2656:
	ldr	r3, [r8]
	b	.L3096
.LVL2657:
.L3100:
.LBB624:
.LBB613:
	.loc 3 303 0
	sub	lr, ip, #1
.LVL2658:
	.loc 3 304 0
	tst	lr, ip
	bne	.L3102
.LBB614:
	.loc 3 305 0
	mov	r9, lr, asl #16
	mvn	r9, r9, lsr #16
	.loc 3 306 0
	sub	ip, r6, #1
	cmn	ip, #1
	str	ip, [sp]
	mov	r10, ip
	ldreq	ip, .L3159+32
	.loc 3 305 0
	mvn	r9, r9, asl #16
.LVL2659:
	streq	ip, [sp, #12]
	.loc 3 306 0
	beq	.L3114
	ldr	ip, .L3159+32
	mov	lr, r4
.LVL2660:
	mov	r7, ip
.LVL2661:
	ldr	fp, [r7]
	mov	r7, r5, asl #1
	mov	r8, r7
	str	ip, [sp, #12]
	str	r7, [sp, #4]
	add	ip, r1, #32
	str	r6, [sp, #8]
.LVL2662:
.L3104:
	.loc 3 307 0
	and	r6, lr, r9
	ldrb	r6, [r3, r6, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r10, r10, #2
.LVL2663:
	.loc 3 307 0
	ldrb	r7, [r0, r6]	@ zero_extendqisi2
	add	r6, r5, lr
	ldrb	r7, [r2, r7]	@ zero_extendqisi2
	.loc 3 311 0
	and	r6, r6, r9
	.loc 3 307 0
	add	r7, fp, r7, asl #8
	ldr	r7, [r7, #252]
	add	lr, r8, lr
.LVL2664:
	str	r7, [ip, #-32]
.LVL2665:
	.loc 3 311 0
	ldrb	r6, [r3, r6, asr #16]	@ zero_extendqisi2
	add	ip, ip, #32
.LVL2666:
	ldrb	r6, [r0, r6]	@ zero_extendqisi2
	ldrb	r6, [r2, r6]	@ zero_extendqisi2
	add	r6, fp, r6, asl #8
	ldr	r6, [r6, #252]
	str	r6, [ip, #-48]
.LVL2667:
	.loc 3 306 0
	bpl	.L3104
	ldr	ip, [sp]
	ldr	r6, [sp, #8]
	mov	ip, ip, lsr #1
	add	r4, r4, r5, asl #1
	ldr	r5, [sp, #4]
.LVL2668:
	add	lr, ip, #1
.LVL2669:
	.loc 3 316 0
	tst	r6, #1
	mla	r4, r5, ip, r4
	add	r1, r1, lr, asl #5
	bne	.L3084
.L3114:
	.loc 3 317 0
	and	r4, r4, r9
	ldrb	ip, [r3, r4, asr #16]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
.LVL2670:
	ldrb	r0, [r0, ip]	@ zero_extendqisi2
.LVL2671:
	ldr	r3, [r3]
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
.LVL2672:
	add	r3, r3, r2, asl #8
	ldr	r3, [r3, #252]
	str	r3, [r1]
	b	.L3084
.LVL2673:
.L3156:
.LBE614:
.LBE613:
	.loc 3 286 0
	mov	lr, #0
	ldr	ip, .L3159+32
	add	r6, r6, #1
.LVL2674:
	ldr	r7, [ip]
.LVL2675:
.L3099:
	.loc 3 289 0
	bic	ip, r4, #-16777216
	bic	ip, ip, #8388608
	ldrb	ip, [r3, ip, asr #16]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL2676:
	.loc 3 289 0
	ldrb	ip, [r0, ip]	@ zero_extendqisi2
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	add	ip, r7, ip, asl #8
	ldr	ip, [ip, #252]
	str	ip, [r1, lr, asl #4]
.LVL2677:
	add	lr, lr, #1
.LVL2678:
	.loc 3 288 0
	cmp	lr, r6
	bne	.L3099
.LBE624:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2679:
.L3102:
	.cfi_restore_state
.LBB625:
.LBB617:
.LBB615:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	ip, ip, asl #16
.LVL2680:
	.loc 3 325 0
	bge	.L3151
	b	.L3108
.L3110:
	rsb	r4, ip, r4
.LVL2681:
.L3151:
	.loc 3 328 0
	cmp	r4, ip
	bge	.L3110
.L3107:
	.loc 3 345 0
	ldr	lr, .L3159+32
	add	r6, r6, #1
.LVL2682:
	ldr	r8, [lr]
	mov	lr, #0
.LVL2683:
.L3109:
	ldrb	r7, [r3, r4, asr #16]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r5
.LVL2684:
	.loc 3 345 0
	ldrb	r7, [r0, r7]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, ip
	.loc 3 345 0
	ldrb	r7, [r2, r7]	@ zero_extendqisi2
	.loc 3 348 0
	rsbge	r4, ip, r4
	.loc 3 345 0
	add	r7, r8, r7, asl #8
	ldr	r7, [r7, #252]
	str	r7, [r1, lr, asl #4]
.LVL2685:
	add	lr, lr, #1
.LVL2686:
	.loc 3 339 0
	cmp	lr, r6
	bne	.L3109
.LBE615:
.LBE617:
.LBE625:
	.loc 3 357 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2687:
.L3108:
	.cfi_restore_state
.LBB626:
.LBB618:
.LBB616:
	.loc 3 326 0 discriminator 1
	adds	r4, ip, r4
.LVL2688:
	bpl	.L3107
.LVL2689:
	.loc 3 326 0 is_stmt 0
	adds	r4, ip, r4
.LVL2690:
	bmi	.L3108
	b	.L3107
.LVL2691:
.L3158:
.LBE616:
.LBE618:
.LBE626:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r7]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3093
	b	.L3095
.L3157:
.LBB627:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r5
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2692:
	.loc 3 198 0
	rsb	r9, r0, r9
	str	r9, [r7, #8]
.LVL2693:
	.loc 3 199 0
	rsb	r6, r0, r6
.LVL2694:
.LBE627:
	b	.L3090
.L3160:
	.align	2
.L3159:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWhole32
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	V_Palette32
	.word	viewheight
	.cfi_endproc
.LFE146:
	.size	R_DrawTranslatedColumn32_PointUV_PointZ, .-R_DrawTranslatedColumn32_PointUV_PointZ
	.align	2
	.type	R_DrawTranslatedColumn32_PointUV_LinearZ, %function
R_DrawTranslatedColumn32_PointUV_LinearZ:
.LFB147:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2695:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 149 0
	ldmib	r0, {r7, r8}
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 157 0
	subs	r3, r8, r7
	.loc 3 117 0
	ldr	r5, [r0, #16]
.LVL2696:
	.loc 3 157 0
	str	r3, [sp, #4]
	.loc 3 121 0
	ldr	r9, [r0, #28]
.LVL2697:
	.loc 3 157 0
	bmi	.L3161
	.loc 3 171 0
	ldr	r3, .L3240
.LVL2698:
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r7
	.loc 3 174 0
	cmp	r2, #0
	mov	r6, r0
	.loc 3 171 0
	mla	r4, r5, r3, r4
.LVL2699:
	.loc 3 174 0
	bne	.L3234
.LVL2700:
.L3164:
	.loc 3 215 0
	ldr	r8, .L3240+4
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L3170
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L3235
.L3171:
	.loc 3 224 0 is_stmt 1
	mov	r10, #1
	.loc 3 230 0
	ldr	r2, .L3240+8
	ldr	lr, .L3240+12
	.loc 3 224 0
	ldr	r0, .L3240+16
	.loc 3 230 0
	str	lr, [r2]
	mov	lr, #0
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 233 0
	ldr	r9, .L3240+20
.LVL2701:
	.loc 3 221 0
	ldr	r7, [r6]
	.loc 3 223 0
	ldr	r1, [r6, #8]
	.loc 3 231 0
	ldr	ip, .L3240+24
	.loc 3 224 0
	str	r10, [r0, #-1204]
	.loc 3 232 0
	ldr	r0, .L3240+28
	.loc 3 233 0
	add	r9, r9, r3, asl #4
	.loc 3 221 0
	str	r7, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	r9, [sp, #8]
.LVL2702:
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
	.loc 3 231 0
	str	ip, [r2, #4]
	.loc 3 232 0
	str	r0, [r2, #8]
.LVL2703:
.L3173:
.LBB628:
	.loc 3 259 0
	ldr	r2, [r6, #12]
	.loc 3 286 0
	ldr	r1, [r6, #24]
	.loc 3 260 0
	ldr	ip, [r6, #44]
	ldr	r0, [r6, #48]
.LBE628:
	.loc 3 245 0
	add	lr, lr, #1
.LBB635:
	.loc 3 259 0
	mov	r2, r2, asr #6
	.loc 3 286 0
	cmp	r1, #128
.LBE635:
	.loc 3 245 0
	str	lr, [r8]
.LBB636:
	.loc 3 260 0
	str	ip, [sp, #48]
	.loc 3 259 0
	uxtb	r2, r2
	.loc 3 260 0
	str	r0, [sp, #52]
	.loc 3 251 0
	ldr	ip, [r6, #32]
.LVL2704:
	.loc 3 253 0
	ldr	lr, [r6, #52]
.LVL2705:
	.loc 3 286 0
	beq	.L3236
	.loc 3 294 0
	cmp	r1, #0
	bne	.L3181
.LVL2706:
	ldr	r1, .L3240+32
	ldr	r0, [sp, #4]
	ldr	r6, [sp, #8]
.LVL2707:
	add	r9, r0, #1
	ldr	r10, [r1]
	ldr	r1, .L3240+36
	and	r0, r7, #3
	add	r9, r9, r3
	sub	r7, r6, r3, asl #4
.LVL2708:
.L3182:
	.loc 3 297 0
	and	r6, r3, #3
	add	r6, r0, r6, asl #2
	ldrb	r6, [r1, r6]	@ zero_extendqisi2
	ldrb	r8, [ip, r4, asr #16]	@ zero_extendqisi2
	cmp	r6, r2
	movge	r6, #0
	movlt	r6, #1
	add	fp, sp, #56
	add	r6, fp, r6, asl #2
	ldr	fp, [r6, #-8]
	ldrb	r6, [lr, r8]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r5
.LVL2709:
	.loc 3 297 0
	ldrb	r6, [fp, r6]	@ zero_extendqisi2
	add	r6, r10, r6, asl #8
	ldr	r6, [r6, #252]
	str	r6, [r7, r3, asl #4]
	.loc 3 298 0
	add	r3, r3, #1
.LVL2710:
	.loc 3 296 0
	cmp	r3, r9
	bne	.L3182
.LVL2711:
.L3161:
.LBE636:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2712:
.L3234:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3164
	.loc 3 178 0
	cmp	r7, #0
	beq	.L3165
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB637:
	.loc 3 181 0
	mvnne	r10, r9
	uxthne	r10, r10
.LBE637:
	.loc 3 179 0
	bne	.L3229
	.loc 3 186 0
	tst	r3, #2
	beq	.L3165
.LBB638:
	.loc 3 188 0
	uxth	r10, r9
.L3229:
	mov	r0, r10
.LVL2713:
	mov	r1, r5
	bl	__aeabi_idiv
.LVL2714:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r7, r7, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r10
.LVL2715:
	.loc 3 189 0
	str	r7, [r6, #4]
.LVL2716:
	.loc 3 190 0
	str	r3, [sp, #4]
.LVL2717:
.L3165:
.LBE638:
	.loc 3 194 0
	ldr	r3, .L3240+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L3167
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L3237
	.loc 3 201 0
	tst	r3, #8
	beq	.L3167
.LBB639:
	.loc 3 203 0
	mov	r1, r5
	uxth	r0, r9
.LVL2718:
.L3230:
	bl	__aeabi_idiv
.LVL2719:
	.loc 3 205 0
	ldr	r3, [sp, #4]
	.loc 3 204 0
	rsb	r8, r0, r8
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r8, [r6, #8]
.LVL2720:
	.loc 3 205 0
	str	r3, [sp, #4]
.LVL2721:
.L3167:
.LBE639:
	.loc 3 208 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bgt	.L3164
	b	.L3161
.L3235:
	.loc 3 216 0
	ldr	r3, .L3240+16
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L3238
.L3170:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2722:
	.loc 3 219 0
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L3171
	ldr	r0, [r6]
.L3172:
	.loc 3 235 0
	ldr	r1, [r6, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r6, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, r8, r2, asl #2
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	str	r1, [ip, #16]
	ldr	ip, .L3240+4
	mov	r7, r0
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 243 0
	ldr	r0, .L3240+20
	.loc 3 240 0
	ldr	ip, [r8, #8]
	ldr	lr, .L3240+4
	.loc 3 243 0
	add	r2, r2, r1, asl #2
	.loc 3 240 0
	cmp	r3, ip
	.loc 3 243 0
	add	r2, r0, r2, asl #2
	.loc 3 241 0
	strlt	r3, [lr, #8]
	.loc 3 243 0
	str	r2, [sp, #8]
	.loc 3 235 0
	mov	r3, r1
	ldr	lr, [r8]
	b	.L3173
.LVL2723:
.L3181:
.LBB640:
.LBB629:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL2724:
	.loc 3 304 0
	tst	r0, r1
	bne	.L3183
.LBB630:
	.loc 3 305 0
	mov	r0, r0, asl #16
.LVL2725:
	mvn	r0, r0, lsr #16
	mvn	r0, r0, asl #16
	.loc 3 306 0
	ldr	r1, [sp, #4]
.LVL2726:
	.loc 3 305 0
	str	r0, [sp, #24]
.LVL2727:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L3239
	ldr	r0, .L3240+32
.LVL2728:
	mov	r1, r1, lsr #1
	str	r1, [sp, #28]
	mov	r1, r1, asl #1
	add	r6, r1, #2
.LVL2729:
	str	r1, [sp, #32]
	ldr	r1, [r0]
	str	r0, [sp, #44]
	mov	fp, r1
	and	r0, r7, #3
	mov	r8, r3
	mov	r10, r4
	mov	r7, fp
.LVL2730:
	add	r6, r6, r3
	str	r6, [sp, #20]
	ldr	r6, [sp, #8]
	ldr	r1, .L3240+36
	add	r9, r6, #32
	mov	r6, r5, asl #1
	str	r6, [sp, #12]
	ldr	r6, [sp, #24]
	str	r4, [sp, #36]
	str	r5, [sp, #16]
	str	r3, [sp, #40]
.LVL2731:
.L3185:
	.loc 3 307 0
	and	r3, r8, #3
	add	r3, r0, r3, asl #2
	ldrb	r4, [r1, r3]	@ zero_extendqisi2
	add	r3, r8, #1
	cmp	r4, r2
	movge	r4, #0
	movlt	r4, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r0, r3, asl #2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	.loc 3 307 0
	and	fp, r10, r6
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	ldrb	fp, [ip, fp, asr #16]	@ zero_extendqisi2
	add	r5, sp, #56
	add	r4, r5, r4, asl #2
	ldrb	fp, [lr, fp]	@ zero_extendqisi2
	ldr	r4, [r4, #-8]
	.loc 3 311 0
	add	r3, r5, r3, asl #2
	.loc 3 307 0
	ldrb	r4, [r4, fp]	@ zero_extendqisi2
	.loc 3 311 0
	ldr	r3, [r3, #-8]
	.loc 3 307 0
	add	r4, r7, r4, asl #8
	ldr	fp, [r4, #252]
	ldr	r4, [sp, #16]
	str	fp, [r9, #-32]
.LVL2732:
	add	r4, r4, r10
.LVL2733:
	.loc 3 311 0
	and	r4, r4, r6
.LVL2734:
	ldrb	r4, [ip, r4, asr #16]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	r5, [sp, #20]
	.loc 3 311 0
	ldrb	r4, [lr, r4]	@ zero_extendqisi2
	.loc 3 312 0
	add	r8, r8, #2
.LVL2735:
	.loc 3 311 0
	ldrb	r3, [r3, r4]	@ zero_extendqisi2
	ldr	r4, [sp, #12]
	add	r3, r7, r3, asl #8
	ldr	r3, [r3, #252]
	.loc 3 306 0
	cmp	r8, r5
	.loc 3 311 0
	str	r3, [r9, #-16]
	add	r10, r4, r10
.LVL2736:
	add	r9, r9, #32
.LVL2737:
	.loc 3 306 0
	bne	.L3185
	.loc 3 316 0
	ldr	r7, [sp, #4]
	ldr	r3, [sp, #40]
	ldr	r5, [sp, #16]
	ldr	r4, [sp, #36]
	tst	r7, #1
	ldr	r7, [sp, #32]
	add	r3, r3, #2
	add	r4, r4, r5, asl #1
	add	r3, r3, r7
	ldr	r5, [sp, #28]
	ldr	r7, [sp, #12]
	add	r6, r5, #1
	mla	r4, r7, r5, r4
	ldr	r5, [sp, #8]
	add	r5, r5, r6, asl #5
	str	r5, [sp, #8]
	bne	.L3161
.LVL2738:
.L3194:
	.loc 3 317 0
	and	r3, r3, #3
	add	r0, r0, r3, asl #2
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	ldr	r1, [sp, #24]
	cmp	r3, r2
	movge	r2, #0
.LVL2739:
	movlt	r2, #1
	and	r4, r4, r1
	ldrb	r3, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r1, sp, #56
	add	r2, r1, r2, asl #2
	ldr	r1, [r2, #-8]
	ldrb	r2, [lr, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #44]
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	ldr	r3, [r3]
	add	r3, r3, r2, asl #8
	ldr	r3, [r3, #252]
	ldr	r2, [sp, #8]
	str	r3, [r2]
	b	.L3161
.LVL2740:
.L3236:
	ldr	r1, .L3240+32
	ldr	r0, [sp, #4]
	ldr	r6, [sp, #8]
.LVL2741:
	add	r8, r0, #1
	ldr	r9, [r1]
	ldr	r1, .L3240+36
	and	r0, r7, #3
	add	r8, r8, r3
	sub	r7, r6, r3, asl #4
.LVL2742:
.L3179:
.LBE630:
.LBE629:
	.loc 3 289 0
	and	r6, r3, #3
	add	r6, r0, r6, asl #2
	ldrb	r6, [r1, r6]	@ zero_extendqisi2
	bic	r10, r4, #-16777216
	cmp	r6, r2
	movge	r6, #0
	movlt	r6, #1
	bic	r10, r10, #8388608
	ldrb	r10, [ip, r10, asr #16]	@ zero_extendqisi2
	add	fp, sp, #56
	add	r6, fp, r6, asl #2
	ldr	fp, [r6, #-8]
	ldrb	r6, [lr, r10]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r5
.LVL2743:
	.loc 3 289 0
	ldrb	r6, [fp, r6]	@ zero_extendqisi2
	add	r6, r9, r6, asl #8
	ldr	r6, [r6, #252]
	str	r6, [r7, r3, asl #4]
	.loc 3 290 0
	add	r3, r3, #1
.LVL2744:
	.loc 3 288 0
	cmp	r3, r8
	bne	.L3179
.LBE640:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2745:
.L3183:
	.cfi_restore_state
.LBB641:
.LBB633:
.LBB631:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r1, asl #16
.LVL2746:
	.loc 3 325 0
	bge	.L3232
	b	.L3189
.L3191:
	rsb	r4, r6, r4
.LVL2747:
.L3232:
	.loc 3 328 0
	cmp	r4, r6
	bge	.L3191
.L3188:
	ldr	r0, [sp, #4]
	.loc 3 345 0
	ldr	r1, .L3240+32
	add	r9, r0, #1
	ldr	r0, [sp, #8]
	add	r9, r9, r3
	sub	r10, r0, r3, asl #4
	ldr	fp, [r1]
	and	r0, r7, #3
	b	.L3190
.LVL2748:
.L3193:
	ldr	r7, .L3240+36
	ldrb	r8, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r7, r1]	@ zero_extendqisi2
	add	r7, sp, #56
	cmp	r1, r2
	movge	r1, #0
	movlt	r1, #1
	add	r1, r7, r1, asl #2
	ldrb	r8, [lr, r8]	@ zero_extendqisi2
	ldr	r1, [r1, #-8]
	.loc 3 348 0
	add	r4, r4, r5
.LVL2749:
	.loc 3 345 0
	ldrb	r1, [r1, r8]	@ zero_extendqisi2
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	add	r1, fp, r1, asl #8
	ldr	r1, [r1, #252]
	.loc 3 348 0
	rsbge	r4, r6, r4
	.loc 3 345 0
	str	r1, [r10, r3, asl #4]
	.loc 3 346 0
	add	r3, r3, #1
.LVL2750:
.L3190:
	.loc 3 345 0
	and	r1, r3, #3
	.loc 3 339 0
	cmp	r3, r9
	.loc 3 345 0
	add	r1, r0, r1, asl #2
	.loc 3 339 0
	bne	.L3193
.LBE631:
.LBE633:
.LBE641:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2751:
.L3189:
	.cfi_restore_state
.LBB642:
.LBB634:
.LBB632:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL2752:
	bpl	.L3188
.LVL2753:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL2754:
	bmi	.L3189
	b	.L3188
.LVL2755:
.L3238:
.LBE632:
.LBE634:
.LBE642:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r0, [r6]
	add	r3, r2, r3
	cmp	r3, r0
	bne	.L3170
	b	.L3172
.L3237:
.LBB643:
	.loc 3 197 0
	mvn	r0, r9
	mov	r1, r5
	uxth	r0, r0
	b	.L3230
.LVL2756:
.L3239:
	ldr	r1, .L3240+32
	and	r0, r7, #3
.LVL2757:
	str	r1, [sp, #44]
	ldr	r1, .L3240+36
	b	.L3194
.L3241:
	.align	2
.L3240:
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	R_FlushWhole32
	.word	.LANCHOR2
	.word	.LANCHOR0+3140
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	V_Palette32
	.word	filter_ditherMatrix
	.word	viewheight
.LBE643:
	.cfi_endproc
.LFE147:
	.size	R_DrawTranslatedColumn32_PointUV_LinearZ, .-R_DrawTranslatedColumn32_PointUV_LinearZ
	.align	2
	.type	R_DrawFuzzColumn8_PointUV, %function
R_DrawFuzzColumn8_PointUV:
.LFB154:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2758:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3277
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2759:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2760:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2761:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2762:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2763:
	cmp	r3, #0
	bne	.L3247
.LVL2764:
.L3250:
	.loc 3 215 0
	ldr	r5, .L3277+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3248
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3256
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3277+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3275
.L3248:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2765:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3256
.L3257:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3277+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3277+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3258
.LVL2766:
.L3247:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3250
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3276
	.loc 3 186 0
	tst	fp, #2
	beq	.L3252
.LBB644:
	.loc 3 188 0
	uxth	r0, r8
.LVL2767:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2768:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL2769:
.L3252:
.LBE644:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3253
	.loc 3 195 0
	tst	fp, #4
	beq	.L3254
.LBB645:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2770:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL2771:
.L3253:
.LBE645:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3250
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3256:
	.loc 3 228 0
	ldr	r3, .L3277+12
	.loc 3 230 0
	ldr	lr, .L3277+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL2772:
	.loc 3 231 0
	ldr	ip, .L3277+20
	.loc 3 230 0
	ldr	r3, .L3277+24
	.loc 3 232 0
	ldr	r0, .L3277+28
	.loc 3 224 0
	mov	r8, #4
.LVL2773:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL2774:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3277+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL2775:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3258:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2776:
.L3275:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3248
	b	.L3257
.LVL2777:
.L3276:
.LBB646:
	.loc 3 181 0
	mvn	r0, r8
.LVL2778:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2779:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL2780:
.LBE646:
	b	.L3252
.LVL2781:
.L3254:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3253
.LBB647:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2782:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL2783:
	b	.L3253
.L3278:
	.align	2
.L3277:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz8
	.word	R_FlushHTFuzz8
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz8
.LBE647:
	.cfi_endproc
.LFE154:
	.size	R_DrawFuzzColumn8_PointUV, .-R_DrawFuzzColumn8_PointUV
	.align	2
	.type	R_DrawFuzzColumn8_PointUV_PointZ, %function
R_DrawFuzzColumn8_PointUV_PointZ:
.LFB155:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2784:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3314
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2785:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2786:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2787:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2788:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2789:
	cmp	r3, #0
	bne	.L3284
.LVL2790:
.L3287:
	.loc 3 215 0
	ldr	r5, .L3314+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3285
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3293
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3314+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3312
.L3285:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2791:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3293
.L3294:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3314+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3314+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3295
.LVL2792:
.L3284:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3287
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3313
	.loc 3 186 0
	tst	fp, #2
	beq	.L3289
.LBB648:
	.loc 3 188 0
	uxth	r0, r8
.LVL2793:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2794:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL2795:
.L3289:
.LBE648:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3290
	.loc 3 195 0
	tst	fp, #4
	beq	.L3291
.LBB649:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2796:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL2797:
.L3290:
.LBE649:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3287
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3293:
	.loc 3 228 0
	ldr	r3, .L3314+12
	.loc 3 230 0
	ldr	lr, .L3314+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL2798:
	.loc 3 231 0
	ldr	ip, .L3314+20
	.loc 3 230 0
	ldr	r3, .L3314+24
	.loc 3 232 0
	ldr	r0, .L3314+28
	.loc 3 224 0
	mov	r8, #4
.LVL2799:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL2800:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3314+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL2801:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3295:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2802:
.L3312:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3285
	b	.L3294
.LVL2803:
.L3313:
.LBB650:
	.loc 3 181 0
	mvn	r0, r8
.LVL2804:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2805:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL2806:
.LBE650:
	b	.L3289
.LVL2807:
.L3291:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3290
.LBB651:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2808:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL2809:
	b	.L3290
.L3315:
	.align	2
.L3314:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz8
	.word	R_FlushHTFuzz8
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz8
.LBE651:
	.cfi_endproc
.LFE155:
	.size	R_DrawFuzzColumn8_PointUV_PointZ, .-R_DrawFuzzColumn8_PointUV_PointZ
	.align	2
	.type	R_DrawFuzzColumn8_PointUV_LinearZ, %function
R_DrawFuzzColumn8_PointUV_LinearZ:
.LFB156:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2810:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3351
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2811:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2812:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2813:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2814:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2815:
	cmp	r3, #0
	bne	.L3321
.LVL2816:
.L3324:
	.loc 3 215 0
	ldr	r5, .L3351+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3322
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3330
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3351+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3349
.L3322:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2817:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3330
.L3331:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3351+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3351+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3332
.LVL2818:
.L3321:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3324
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3350
	.loc 3 186 0
	tst	fp, #2
	beq	.L3326
.LBB652:
	.loc 3 188 0
	uxth	r0, r8
.LVL2819:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2820:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL2821:
.L3326:
.LBE652:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3327
	.loc 3 195 0
	tst	fp, #4
	beq	.L3328
.LBB653:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2822:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL2823:
.L3327:
.LBE653:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3324
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3330:
	.loc 3 228 0
	ldr	r3, .L3351+12
	.loc 3 230 0
	ldr	lr, .L3351+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL2824:
	.loc 3 231 0
	ldr	ip, .L3351+20
	.loc 3 230 0
	ldr	r3, .L3351+24
	.loc 3 232 0
	ldr	r0, .L3351+28
	.loc 3 224 0
	mov	r8, #4
.LVL2825:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL2826:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3351+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL2827:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3332:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2828:
.L3349:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3322
	b	.L3331
.LVL2829:
.L3350:
.LBB654:
	.loc 3 181 0
	mvn	r0, r8
.LVL2830:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2831:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL2832:
.LBE654:
	b	.L3326
.LVL2833:
.L3328:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3327
.LBB655:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2834:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL2835:
	b	.L3327
.L3352:
	.align	2
.L3351:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz8
	.word	R_FlushHTFuzz8
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz8
.LBE655:
	.cfi_endproc
.LFE156:
	.size	R_DrawFuzzColumn8_PointUV_LinearZ, .-R_DrawFuzzColumn8_PointUV_LinearZ
	.align	2
	.type	R_DrawFuzzColumn15_PointUV, %function
R_DrawFuzzColumn15_PointUV:
.LFB163:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2836:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3388
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2837:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2838:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2839:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2840:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2841:
	cmp	r3, #0
	bne	.L3358
.LVL2842:
.L3361:
	.loc 3 215 0
	ldr	r5, .L3388+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3359
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3367
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3388+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3386
.L3359:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2843:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3367
.L3368:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3388+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3388+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3369
.LVL2844:
.L3358:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3361
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3387
	.loc 3 186 0
	tst	fp, #2
	beq	.L3363
.LBB656:
	.loc 3 188 0
	uxth	r0, r8
.LVL2845:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2846:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL2847:
.L3363:
.LBE656:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3364
	.loc 3 195 0
	tst	fp, #4
	beq	.L3365
.LBB657:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2848:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL2849:
.L3364:
.LBE657:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3361
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3367:
	.loc 3 228 0
	ldr	r3, .L3388+12
	.loc 3 230 0
	ldr	lr, .L3388+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL2850:
	.loc 3 231 0
	ldr	ip, .L3388+20
	.loc 3 230 0
	ldr	r3, .L3388+24
	.loc 3 232 0
	ldr	r0, .L3388+28
	.loc 3 224 0
	mov	r8, #4
.LVL2851:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL2852:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3388+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL2853:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3369:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2854:
.L3386:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3359
	b	.L3368
.LVL2855:
.L3387:
.LBB658:
	.loc 3 181 0
	mvn	r0, r8
.LVL2856:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2857:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL2858:
.LBE658:
	b	.L3363
.LVL2859:
.L3365:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3364
.LBB659:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2860:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL2861:
	b	.L3364
.L3389:
	.align	2
.L3388:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz15
	.word	R_FlushHTFuzz15
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz15
.LBE659:
	.cfi_endproc
.LFE163:
	.size	R_DrawFuzzColumn15_PointUV, .-R_DrawFuzzColumn15_PointUV
	.align	2
	.type	R_DrawFuzzColumn15_PointUV_PointZ, %function
R_DrawFuzzColumn15_PointUV_PointZ:
.LFB164:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2862:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3425
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2863:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2864:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2865:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2866:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2867:
	cmp	r3, #0
	bne	.L3395
.LVL2868:
.L3398:
	.loc 3 215 0
	ldr	r5, .L3425+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3396
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3404
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3425+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3423
.L3396:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2869:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3404
.L3405:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3425+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3425+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3406
.LVL2870:
.L3395:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3398
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3424
	.loc 3 186 0
	tst	fp, #2
	beq	.L3400
.LBB660:
	.loc 3 188 0
	uxth	r0, r8
.LVL2871:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2872:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL2873:
.L3400:
.LBE660:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3401
	.loc 3 195 0
	tst	fp, #4
	beq	.L3402
.LBB661:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2874:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL2875:
.L3401:
.LBE661:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3398
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3404:
	.loc 3 228 0
	ldr	r3, .L3425+12
	.loc 3 230 0
	ldr	lr, .L3425+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL2876:
	.loc 3 231 0
	ldr	ip, .L3425+20
	.loc 3 230 0
	ldr	r3, .L3425+24
	.loc 3 232 0
	ldr	r0, .L3425+28
	.loc 3 224 0
	mov	r8, #4
.LVL2877:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL2878:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3425+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL2879:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3406:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2880:
.L3423:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3396
	b	.L3405
.LVL2881:
.L3424:
.LBB662:
	.loc 3 181 0
	mvn	r0, r8
.LVL2882:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2883:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL2884:
.LBE662:
	b	.L3400
.LVL2885:
.L3402:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3401
.LBB663:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2886:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL2887:
	b	.L3401
.L3426:
	.align	2
.L3425:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz15
	.word	R_FlushHTFuzz15
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz15
.LBE663:
	.cfi_endproc
.LFE164:
	.size	R_DrawFuzzColumn15_PointUV_PointZ, .-R_DrawFuzzColumn15_PointUV_PointZ
	.align	2
	.type	R_DrawFuzzColumn15_PointUV_LinearZ, %function
R_DrawFuzzColumn15_PointUV_LinearZ:
.LFB165:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2888:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3462
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2889:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2890:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2891:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2892:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2893:
	cmp	r3, #0
	bne	.L3432
.LVL2894:
.L3435:
	.loc 3 215 0
	ldr	r5, .L3462+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3433
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3441
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3462+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3460
.L3433:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2895:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3441
.L3442:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3462+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3462+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3443
.LVL2896:
.L3432:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3435
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3461
	.loc 3 186 0
	tst	fp, #2
	beq	.L3437
.LBB664:
	.loc 3 188 0
	uxth	r0, r8
.LVL2897:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2898:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL2899:
.L3437:
.LBE664:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3438
	.loc 3 195 0
	tst	fp, #4
	beq	.L3439
.LBB665:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2900:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL2901:
.L3438:
.LBE665:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3435
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3441:
	.loc 3 228 0
	ldr	r3, .L3462+12
	.loc 3 230 0
	ldr	lr, .L3462+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL2902:
	.loc 3 231 0
	ldr	ip, .L3462+20
	.loc 3 230 0
	ldr	r3, .L3462+24
	.loc 3 232 0
	ldr	r0, .L3462+28
	.loc 3 224 0
	mov	r8, #4
.LVL2903:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL2904:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3462+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL2905:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3443:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2906:
.L3460:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3433
	b	.L3442
.LVL2907:
.L3461:
.LBB666:
	.loc 3 181 0
	mvn	r0, r8
.LVL2908:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2909:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL2910:
.LBE666:
	b	.L3437
.LVL2911:
.L3439:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3438
.LBB667:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2912:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL2913:
	b	.L3438
.L3463:
	.align	2
.L3462:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz15
	.word	R_FlushHTFuzz15
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz15
.LBE667:
	.cfi_endproc
.LFE165:
	.size	R_DrawFuzzColumn15_PointUV_LinearZ, .-R_DrawFuzzColumn15_PointUV_LinearZ
	.align	2
	.type	R_DrawFuzzColumn16_PointUV, %function
R_DrawFuzzColumn16_PointUV:
.LFB172:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2914:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3499
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2915:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2916:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2917:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2918:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2919:
	cmp	r3, #0
	bne	.L3469
.LVL2920:
.L3472:
	.loc 3 215 0
	ldr	r5, .L3499+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3470
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3478
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3499+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3497
.L3470:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2921:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3478
.L3479:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3499+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3499+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3480
.LVL2922:
.L3469:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3472
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3498
	.loc 3 186 0
	tst	fp, #2
	beq	.L3474
.LBB668:
	.loc 3 188 0
	uxth	r0, r8
.LVL2923:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2924:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL2925:
.L3474:
.LBE668:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3475
	.loc 3 195 0
	tst	fp, #4
	beq	.L3476
.LBB669:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2926:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL2927:
.L3475:
.LBE669:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3472
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3478:
	.loc 3 228 0
	ldr	r3, .L3499+12
	.loc 3 230 0
	ldr	lr, .L3499+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL2928:
	.loc 3 231 0
	ldr	ip, .L3499+20
	.loc 3 230 0
	ldr	r3, .L3499+24
	.loc 3 232 0
	ldr	r0, .L3499+28
	.loc 3 224 0
	mov	r8, #4
.LVL2929:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL2930:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3499+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL2931:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3480:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2932:
.L3497:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3470
	b	.L3479
.LVL2933:
.L3498:
.LBB670:
	.loc 3 181 0
	mvn	r0, r8
.LVL2934:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2935:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL2936:
.LBE670:
	b	.L3474
.LVL2937:
.L3476:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3475
.LBB671:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2938:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL2939:
	b	.L3475
.L3500:
	.align	2
.L3499:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz16
	.word	R_FlushHTFuzz16
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz16
.LBE671:
	.cfi_endproc
.LFE172:
	.size	R_DrawFuzzColumn16_PointUV, .-R_DrawFuzzColumn16_PointUV
	.align	2
	.type	R_DrawFuzzColumn16_PointUV_PointZ, %function
R_DrawFuzzColumn16_PointUV_PointZ:
.LFB173:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2940:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3536
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2941:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2942:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2943:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2944:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2945:
	cmp	r3, #0
	bne	.L3506
.LVL2946:
.L3509:
	.loc 3 215 0
	ldr	r5, .L3536+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3507
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3515
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3536+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3534
.L3507:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2947:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3515
.L3516:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3536+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3536+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3517
.LVL2948:
.L3506:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3509
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3535
	.loc 3 186 0
	tst	fp, #2
	beq	.L3511
.LBB672:
	.loc 3 188 0
	uxth	r0, r8
.LVL2949:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2950:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL2951:
.L3511:
.LBE672:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3512
	.loc 3 195 0
	tst	fp, #4
	beq	.L3513
.LBB673:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2952:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL2953:
.L3512:
.LBE673:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3509
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3515:
	.loc 3 228 0
	ldr	r3, .L3536+12
	.loc 3 230 0
	ldr	lr, .L3536+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL2954:
	.loc 3 231 0
	ldr	ip, .L3536+20
	.loc 3 230 0
	ldr	r3, .L3536+24
	.loc 3 232 0
	ldr	r0, .L3536+28
	.loc 3 224 0
	mov	r8, #4
.LVL2955:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL2956:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3536+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL2957:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3517:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2958:
.L3534:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3507
	b	.L3516
.LVL2959:
.L3535:
.LBB674:
	.loc 3 181 0
	mvn	r0, r8
.LVL2960:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2961:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL2962:
.LBE674:
	b	.L3511
.LVL2963:
.L3513:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3512
.LBB675:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2964:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL2965:
	b	.L3512
.L3537:
	.align	2
.L3536:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz16
	.word	R_FlushHTFuzz16
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz16
.LBE675:
	.cfi_endproc
.LFE173:
	.size	R_DrawFuzzColumn16_PointUV_PointZ, .-R_DrawFuzzColumn16_PointUV_PointZ
	.align	2
	.type	R_DrawFuzzColumn16_PointUV_LinearZ, %function
R_DrawFuzzColumn16_PointUV_LinearZ:
.LFB174:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2966:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3573
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2967:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2968:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2969:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2970:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2971:
	cmp	r3, #0
	bne	.L3543
.LVL2972:
.L3546:
	.loc 3 215 0
	ldr	r5, .L3573+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3544
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3552
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3573+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3571
.L3544:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2973:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3552
.L3553:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3573+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3573+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3554
.LVL2974:
.L3543:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3546
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3572
	.loc 3 186 0
	tst	fp, #2
	beq	.L3548
.LBB676:
	.loc 3 188 0
	uxth	r0, r8
.LVL2975:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2976:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL2977:
.L3548:
.LBE676:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3549
	.loc 3 195 0
	tst	fp, #4
	beq	.L3550
.LBB677:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2978:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL2979:
.L3549:
.LBE677:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3546
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3552:
	.loc 3 228 0
	ldr	r3, .L3573+12
	.loc 3 230 0
	ldr	lr, .L3573+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL2980:
	.loc 3 231 0
	ldr	ip, .L3573+20
	.loc 3 230 0
	ldr	r3, .L3573+24
	.loc 3 232 0
	ldr	r0, .L3573+28
	.loc 3 224 0
	mov	r8, #4
.LVL2981:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL2982:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3573+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL2983:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3554:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2984:
.L3571:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3544
	b	.L3553
.LVL2985:
.L3572:
.LBB678:
	.loc 3 181 0
	mvn	r0, r8
.LVL2986:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL2987:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL2988:
.LBE678:
	b	.L3548
.LVL2989:
.L3550:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3549
.LBB679:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL2990:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL2991:
	b	.L3549
.L3574:
	.align	2
.L3573:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz16
	.word	R_FlushHTFuzz16
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz16
.LBE679:
	.cfi_endproc
.LFE174:
	.size	R_DrawFuzzColumn16_PointUV_LinearZ, .-R_DrawFuzzColumn16_PointUV_LinearZ
	.align	2
	.type	R_DrawFuzzColumn32_PointUV, %function
R_DrawFuzzColumn32_PointUV:
.LFB181:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2992:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3610
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL2993:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL2994:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL2995:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL2996:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL2997:
	cmp	r3, #0
	bne	.L3580
.LVL2998:
.L3583:
	.loc 3 215 0
	ldr	r5, .L3610+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3581
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3589
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3610+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3608
.L3581:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL2999:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3589
.L3590:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3610+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3610+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3591
.LVL3000:
.L3580:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3583
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3609
	.loc 3 186 0
	tst	fp, #2
	beq	.L3585
.LBB680:
	.loc 3 188 0
	uxth	r0, r8
.LVL3001:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL3002:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL3003:
.L3585:
.LBE680:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3586
	.loc 3 195 0
	tst	fp, #4
	beq	.L3587
.LBB681:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3004:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL3005:
.L3586:
.LBE681:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3583
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3589:
	.loc 3 228 0
	ldr	r3, .L3610+12
	.loc 3 230 0
	ldr	lr, .L3610+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL3006:
	.loc 3 231 0
	ldr	ip, .L3610+20
	.loc 3 230 0
	ldr	r3, .L3610+24
	.loc 3 232 0
	ldr	r0, .L3610+28
	.loc 3 224 0
	mov	r8, #4
.LVL3007:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL3008:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3610+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL3009:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3591:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3010:
.L3608:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3581
	b	.L3590
.LVL3011:
.L3609:
.LBB682:
	.loc 3 181 0
	mvn	r0, r8
.LVL3012:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3013:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL3014:
.LBE682:
	b	.L3585
.LVL3015:
.L3587:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3586
.LBB683:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL3016:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL3017:
	b	.L3586
.L3611:
	.align	2
.L3610:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz32
	.word	R_FlushHTFuzz32
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz32
.LBE683:
	.cfi_endproc
.LFE181:
	.size	R_DrawFuzzColumn32_PointUV, .-R_DrawFuzzColumn32_PointUV
	.align	2
	.type	R_DrawFuzzColumn32_PointUV_PointZ, %function
R_DrawFuzzColumn32_PointUV_PointZ:
.LFB182:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3018:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3647
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL3019:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL3020:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL3021:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL3022:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL3023:
	cmp	r3, #0
	bne	.L3617
.LVL3024:
.L3620:
	.loc 3 215 0
	ldr	r5, .L3647+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3618
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3626
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3647+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3645
.L3618:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3025:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3626
.L3627:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3647+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3647+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3628
.LVL3026:
.L3617:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3620
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3646
	.loc 3 186 0
	tst	fp, #2
	beq	.L3622
.LBB684:
	.loc 3 188 0
	uxth	r0, r8
.LVL3027:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL3028:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL3029:
.L3622:
.LBE684:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3623
	.loc 3 195 0
	tst	fp, #4
	beq	.L3624
.LBB685:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3030:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL3031:
.L3623:
.LBE685:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3620
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3626:
	.loc 3 228 0
	ldr	r3, .L3647+12
	.loc 3 230 0
	ldr	lr, .L3647+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL3032:
	.loc 3 231 0
	ldr	ip, .L3647+20
	.loc 3 230 0
	ldr	r3, .L3647+24
	.loc 3 232 0
	ldr	r0, .L3647+28
	.loc 3 224 0
	mov	r8, #4
.LVL3033:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL3034:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3647+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL3035:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3628:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3036:
.L3645:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3618
	b	.L3627
.LVL3037:
.L3646:
.LBB686:
	.loc 3 181 0
	mvn	r0, r8
.LVL3038:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3039:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL3040:
.LBE686:
	b	.L3622
.LVL3041:
.L3624:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3623
.LBB687:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL3042:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL3043:
	b	.L3623
.L3648:
	.align	2
.L3647:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz32
	.word	R_FlushHTFuzz32
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz32
.LBE687:
	.cfi_endproc
.LFE182:
	.size	R_DrawFuzzColumn32_PointUV_PointZ, .-R_DrawFuzzColumn32_PointUV_PointZ
	.align	2
	.type	R_DrawFuzzColumn32_PointUV_LinearZ, %function
R_DrawFuzzColumn32_PointUV_LinearZ:
.LFB183:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3044:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3684
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL3045:
	.loc 3 140 0
	ldr	r3, [r3]
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL3046:
	.loc 3 140 0
	sub	r7, r3, #1
	cmp	r5, r7
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL3047:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	r10, r5, r6
.LVL3048:
	ldmmifd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 3 174 0
	ldr	r3, [r0, #60]
	mov	r4, r0
.LVL3049:
	cmp	r3, #0
	bne	.L3654
.LVL3050:
.L3657:
	.loc 3 215 0
	ldr	r5, .L3684+4
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3655
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	beq	.L3663
	.loc 3 216 0 is_stmt 1
	ldr	r2, .L3684+8
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3682
.L3655:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3051:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3663
.L3664:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3684+4
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3684+4
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3665
.LVL3052:
.L3654:
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3657
	.loc 3 179 0
	ldr	fp, [r0, #56]
	tst	fp, #1
	bne	.L3683
	.loc 3 186 0
	tst	fp, #2
	beq	.L3659
.LBB688:
	.loc 3 188 0
	uxth	r0, r8
.LVL3053:
	mov	r1, r9
	bl	__aeabi_idiv
.LVL3054:
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	r10, r0, r10
.LVL3055:
.L3659:
.LBE688:
	.loc 3 194 0
	cmp	r5, r7
	beq	.L3660
	.loc 3 195 0
	tst	fp, #4
	beq	.L3661
.LBB689:
	.loc 3 197 0
	mvn	r0, r8
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3056:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	r10, r0, r10
.LVL3057:
.L3660:
.LBE689:
	.loc 3 208 0
	cmp	r10, #0
	bgt	.L3657
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3663:
	.loc 3 228 0
	ldr	r3, .L3684+12
	.loc 3 230 0
	ldr	lr, .L3684+16
	.loc 3 228 0
	ldr	r9, [r3]
.LVL3058:
	.loc 3 231 0
	ldr	ip, .L3684+20
	.loc 3 230 0
	ldr	r3, .L3684+24
	.loc 3 232 0
	ldr	r0, .L3684+28
	.loc 3 224 0
	mov	r8, #4
.LVL3059:
	.loc 3 223 0
	ldmib	r4, {r1, r2}
	.loc 3 230 0
	str	lr, [r3]
	.loc 3 231 0
	str	ip, [r3, #4]
	.loc 3 232 0
	str	r0, [r3, #8]
.LVL3060:
	mov	r3, #0
	.loc 3 221 0
	ldr	r6, [r4]
	.loc 3 224 0
	ldr	r7, .L3684+8
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r7, #-1204]
	.loc 3 221 0
	str	r6, [r5, #12]
	.loc 3 222 0
	str	r1, [r5, #4]
	str	r1, [r5, #16]
.LVL3061:
	.loc 3 223 0
	str	r2, [r5, #8]
	str	r2, [r5, #32]
.L3665:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3062:
.L3682:
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3655
	b	.L3664
.LVL3063:
.L3683:
.LBB690:
	.loc 3 181 0
	mvn	r0, r8
.LVL3064:
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3065:
	.loc 3 182 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 183 0
	rsb	r10, r0, r10
.LVL3066:
.LBE690:
	b	.L3659
.LVL3067:
.L3661:
	.loc 3 201 0
	tst	fp, #8
	beq	.L3660
.LBB691:
	.loc 3 203 0
	uxth	r0, r8
	mov	r1, r9
	bl	__aeabi_idiv
.LVL3068:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	r10, r0, r10
.LVL3069:
	b	.L3660
.L3685:
	.align	2
.L3684:
	.word	viewheight
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	fullcolormap
	.word	R_FlushWholeFuzz32
	.word	R_FlushHTFuzz32
	.word	.LANCHOR1
	.word	R_FlushQuadFuzz32
.LBE691:
	.cfi_endproc
.LFE183:
	.size	R_DrawFuzzColumn32_PointUV_LinearZ, .-R_DrawFuzzColumn32_PointUV_LinearZ
	.align	2
	.type	R_DrawSpan8_PointUV_PointZ, %function
R_DrawSpan8_PointUV_PointZ:
.LFB193:
	.file 4 "c:/devl/prboom3ds/src/r_drawspan.inl"
	.loc 4 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3070:
.LBB692:
	.loc 4 100 0
	ldr	ip, .L3692
.LBE692:
	.loc 4 80 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB694:
	.loc 4 100 0
	ldmia	r0, {r3, r7}
	ldr	r2, [ip, #24]
	.loc 4 93 0
	ldr	r1, [r0, #8]
	.loc 4 100 0
	mla	r2, r2, r3, r7
	ldr	r3, [ip, #12]
	.loc 4 93 0
	rsb	r7, r7, r1
.LVL3071:
	.loc 4 99 0
	add	r4, r0, #28
	.loc 4 96 0
	add	r1, r0, #16
	.loc 4 110 0
	cmn	r7, #1
	.loc 4 100 0
	add	r2, r3, r2
	.loc 4 96 0
	ldmia	r1, {r1, ip, lr}
.LVL3072:
	.loc 4 99 0
	ldmia	r4, {r4, r5, r6}
.LVL3073:
	.loc 4 110 0
	ldmeqfd	sp!, {r4, r5, r6, r7, pc}
	add	r0, r2, r7
.LVL3074:
	sub	r2, r2, #1
.LVL3075:
.L3688:
.LBB693:
	.loc 4 135 0
	mov	r3, ip, asr #10
	.loc 4 134 0
	mov	r7, r1, asl #10
	.loc 4 135 0
	and	r3, r3, #4032
.LVL3076:
	.loc 4 137 0
	orr	r3, r3, r7, lsr #26
.LVL3077:
	.loc 4 140 0
	ldrb	r3, [r5, r3]	@ zero_extendqisi2
.LVL3078:
	.loc 4 139 0
	add	ip, ip, r4
.LVL3079:
	.loc 4 140 0
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	.loc 4 138 0
	add	r1, r1, lr
.LVL3080:
	.loc 4 140 0
	strb	r3, [r2, #1]!
.LVL3081:
.LBE693:
	.loc 4 110 0
	cmp	r2, r0
	bne	.L3688
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L3693:
	.align	2
.L3692:
	.word	.LANCHOR1
.LBE694:
	.cfi_endproc
.LFE193:
	.size	R_DrawSpan8_PointUV_PointZ, .-R_DrawSpan8_PointUV_PointZ
	.align	2
	.type	R_DrawSpan8_PointUV_LinearZ, %function
R_DrawSpan8_PointUV_LinearZ:
.LFB194:
	.loc 4 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3082:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB695:
	.loc 4 100 0
	ldmia	r0, {r5, ip}
	ldr	lr, .L3700
	.loc 4 93 0
	ldr	r3, [r0, #8]
	.loc 4 100 0
	ldr	r1, [lr, #24]
	.loc 4 107 0
	ldr	r4, [r0, #36]
	.loc 4 100 0
	mla	r2, r1, r5, ip
	.loc 4 106 0
	ldr	r6, [r0, #12]
	.loc 4 100 0
	ldr	r1, [lr, #12]
	.loc 4 107 0
	ldr	lr, [r0, #40]
.LBE695:
	.loc 4 80 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
.LBB698:
	.loc 4 93 0
	rsb	r3, ip, r3
.LVL3083:
	.loc 4 107 0
	stmia	sp, {r4, lr}
	.loc 4 106 0
	mov	r6, r6, asr #12
	.loc 4 98 0
	add	r4, r0, #20
	.loc 4 110 0
	cmn	r3, #1
	.loc 4 100 0
	add	r1, r1, r2
	.loc 4 106 0
	uxtb	r6, r6
	.loc 4 94 0
	ldr	lr, [r0, #16]
.LVL3084:
	.loc 4 98 0
	ldmia	r4, {r4, r7, r8, r9}
.LVL3085:
	.loc 4 110 0
	beq	.L3694
	and	r5, r5, #3
.LVL3086:
	add	r0, r1, r3
.LVL3087:
	mov	r5, r5, asl #2
	sub	r1, r1, #1
.LVL3088:
.L3696:
.LBB696:
	.loc 4 140 0
	and	r3, ip, #3
	ldr	r2, .L3700+4
	add	r3, r5, r3
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 4 135 0
	mov	r3, r4, asr #10
	.loc 4 140 0
	cmp	r2, r6
	movge	r2, #0
	movlt	r2, #1
	.loc 4 134 0
	mov	fp, lr, asl #10
	.loc 4 135 0
	and	r3, r3, #4032
.LVL3089:
	.loc 4 140 0
	add	r10, sp, #8
	add	r2, r10, r2, asl #2
	.loc 4 137 0
	orr	r3, r3, fp, lsr #26
.LVL3090:
	.loc 4 140 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
.LVL3091:
	ldr	r2, [r2, #-8]
	.loc 4 143 0
	sub	ip, ip, #1
.LVL3092:
	.loc 4 140 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 4 139 0
	add	r4, r4, r8
.LVL3093:
	.loc 4 140 0
	strb	r3, [r1, #1]!
.LVL3094:
.LBE696:
	.loc 4 110 0
	cmp	r1, r0
.LBB697:
	.loc 4 138 0
	add	lr, lr, r7
.LVL3095:
.LBE697:
	.loc 4 110 0
	bne	.L3696
.L3694:
.LBE698:
	.loc 4 148 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3096:
.L3701:
	.align	2
.L3700:
	.word	.LANCHOR1
	.word	filter_ditherMatrix
	.cfi_endproc
.LFE194:
	.size	R_DrawSpan8_PointUV_LinearZ, .-R_DrawSpan8_PointUV_LinearZ
	.align	2
	.type	R_DrawSpan15_PointUV_PointZ, %function
R_DrawSpan15_PointUV_PointZ:
.LFB199:
	.loc 4 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3097:
.LBB699:
	.loc 4 100 0
	ldr	ip, .L3708
.LBE699:
	.loc 4 80 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB702:
	.loc 4 100 0
	ldmia	r0, {r1, r2}
	ldr	lr, [ip, #28]
	.loc 4 93 0
	ldr	r3, [r0, #8]
	.loc 4 100 0
	mla	r1, lr, r1, r2
	ldr	lr, [ip, #16]
	.loc 4 93 0
	rsb	r2, r2, r3
.LVL3098:
	.loc 4 98 0
	add	r4, r0, #24
	.loc 4 110 0
	adds	r2, r2, #1
.LVL3099:
	.loc 4 100 0
	add	lr, lr, r1, asl #1
	.loc 4 95 0
	ldr	ip, [r0, #20]
	.loc 4 94 0
	ldr	r1, [r0, #16]
.LVL3100:
	.loc 4 98 0
	ldmia	r4, {r4, r5, r6}
.LVL3101:
	.loc 4 99 0
	ldr	r0, [r0, #36]
.LVL3102:
	.loc 4 110 0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LBB700:
	.loc 4 140 0
	mov	r9, #128
	mov	r8, #126
	ldr	r3, .L3708+4
	ldr	r7, [r3]
.LVL3103:
.L3704:
	.loc 4 135 0
	mov	r3, ip, asr #10
	.loc 4 134 0
	mov	r10, r1, asl #10
	.loc 4 135 0
	and	r3, r3, #4032
.LVL3104:
	.loc 4 137 0
	orr	r3, r3, r10, lsr #26
.LVL3105:
	.loc 4 140 0
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
.LVL3106:
.LBE700:
	.loc 4 110 0
	subs	r2, r2, #1
.LVL3107:
.LBB701:
	.loc 4 140 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 4 139 0
	add	ip, ip, r5
.LVL3108:
	.loc 4 140 0
	smlabb	r3, r9, r3, r8
	ldrh	r3, [r7, r3]
	.loc 4 138 0
	add	r1, r1, r4
.LVL3109:
	.loc 4 140 0
	strh	r3, [lr], #2	@ movhi
.LVL3110:
.LBE701:
	.loc 4 110 0
	bne	.L3704
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L3709:
	.align	2
.L3708:
	.word	.LANCHOR1
	.word	V_Palette15
.LBE702:
	.cfi_endproc
.LFE199:
	.size	R_DrawSpan15_PointUV_PointZ, .-R_DrawSpan15_PointUV_PointZ
	.align	2
	.type	R_DrawSpan15_PointUV_LinearZ, %function
R_DrawSpan15_PointUV_LinearZ:
.LFB200:
	.loc 4 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3111:
.LBB703:
	.loc 4 100 0
	ldr	r1, .L3717
.LBE703:
	.loc 4 80 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB706:
	.loc 4 93 0
	ldr	r3, [r0, #4]
	.loc 4 100 0
	ldr	r4, [r1, #28]
	ldr	r6, [r0]
	.loc 4 93 0
	ldr	r5, [r0, #8]
	.loc 4 100 0
	mla	r2, r4, r6, r3
	.loc 4 106 0
	ldr	r7, [r0, #12]
	.loc 4 100 0
	ldr	r4, [r1, #16]
	.loc 4 107 0
	ldr	ip, [r0, #36]
	.loc 4 93 0
	rsb	r5, r3, r5
.LVL3112:
	.loc 4 107 0
	ldr	r1, [r0, #40]
.LBE706:
	.loc 4 80 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
.LBB707:
	.loc 4 106 0
	mov	r7, r7, asr #12
	.loc 4 98 0
	add	r8, r0, #24
	.loc 4 110 0
	cmn	r5, #1
	.loc 4 107 0
	str	ip, [sp, #8]
	.loc 4 100 0
	add	r4, r4, r2, asl #1
	.loc 4 106 0
	uxtb	r7, r7
	.loc 4 107 0
	str	r1, [sp, #12]
	.loc 4 94 0
	ldr	ip, [r0, #16]
.LVL3113:
	.loc 4 95 0
	ldr	lr, [r0, #20]
.LVL3114:
	.loc 4 98 0
	ldmia	r8, {r8, r9, r10}
.LVL3115:
	.loc 4 110 0
	beq	.L3710
	ldr	r2, .L3717+4
	and	r6, r6, #3
.LVL3116:
	ldr	r2, [r2]
	sub	r0, r3, #1
.LVL3117:
	str	r2, [sp, #4]
	mov	r6, r6, asl #2
	rsb	r5, r5, r0
.LVL3118:
	b	.L3712
.LVL3119:
.L3716:
	sub	r0, r0, #1
.LVL3120:
.L3712:
.LBB704:
	.loc 4 140 0
	and	r3, r3, #3
.LVL3121:
	ldr	r2, .L3717+8
	add	r3, r6, r3
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 4 135 0
	mov	r3, lr, asr #10
	.loc 4 140 0
	cmp	r2, r7
	movge	r2, #0
	movlt	r2, #1
	.loc 4 134 0
	mov	r1, ip, asl #10
	.loc 4 135 0
	and	r3, r3, #4032
.LVL3122:
	.loc 4 140 0
	add	fp, sp, #16
	.loc 4 137 0
	orr	r3, r3, r1, lsr #26
.LVL3123:
	.loc 4 140 0
	add	r2, fp, r2, asl #2
	ldr	r2, [r2, #-8]
	ldrb	r3, [r10, r3]	@ zero_extendqisi2
.LVL3124:
	mov	r1, #128
.LVL3125:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, #126
	smlabb	r3, r1, r3, r2
	ldr	r2, [sp, #4]
.LBE704:
	.loc 4 110 0
	cmp	r0, r5
.LBB705:
	.loc 4 140 0
	ldrh	r3, [r2, r3]
	.loc 4 139 0
	add	lr, lr, r9
.LVL3126:
	.loc 4 140 0
	strh	r3, [r4], #2	@ movhi
.LVL3127:
	.loc 4 138 0
	add	ip, ip, r8
.LVL3128:
	.loc 4 143 0
	mov	r3, r0
.LVL3129:
.LBE705:
	.loc 4 110 0
	bne	.L3716
.LVL3130:
.L3710:
.LBE707:
	.loc 4 148 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3131:
.L3718:
	.align	2
.L3717:
	.word	.LANCHOR1
	.word	V_Palette15
	.word	filter_ditherMatrix
	.cfi_endproc
.LFE200:
	.size	R_DrawSpan15_PointUV_LinearZ, .-R_DrawSpan15_PointUV_LinearZ
	.align	2
	.type	R_DrawSpan16_PointUV_PointZ, %function
R_DrawSpan16_PointUV_PointZ:
.LFB205:
	.loc 4 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3132:
.LBB708:
	.loc 4 100 0
	ldr	ip, .L3725
.LBE708:
	.loc 4 80 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB711:
	.loc 4 100 0
	ldmia	r0, {r1, r2}
	ldr	lr, [ip, #28]
	.loc 4 93 0
	ldr	r3, [r0, #8]
	.loc 4 100 0
	mla	r1, lr, r1, r2
	ldr	lr, [ip, #16]
	.loc 4 93 0
	rsb	r2, r2, r3
.LVL3133:
	.loc 4 98 0
	add	r4, r0, #24
	.loc 4 110 0
	adds	r2, r2, #1
.LVL3134:
	.loc 4 100 0
	add	lr, lr, r1, asl #1
	.loc 4 95 0
	ldr	ip, [r0, #20]
	.loc 4 94 0
	ldr	r1, [r0, #16]
.LVL3135:
	.loc 4 98 0
	ldmia	r4, {r4, r5, r6}
.LVL3136:
	.loc 4 99 0
	ldr	r0, [r0, #36]
.LVL3137:
	.loc 4 110 0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LBB709:
	.loc 4 140 0
	mov	r9, #128
	mov	r8, #126
	ldr	r3, .L3725+4
	ldr	r7, [r3]
.LVL3138:
.L3721:
	.loc 4 135 0
	mov	r3, ip, asr #10
	.loc 4 134 0
	mov	r10, r1, asl #10
	.loc 4 135 0
	and	r3, r3, #4032
.LVL3139:
	.loc 4 137 0
	orr	r3, r3, r10, lsr #26
.LVL3140:
	.loc 4 140 0
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
.LVL3141:
.LBE709:
	.loc 4 110 0
	subs	r2, r2, #1
.LVL3142:
.LBB710:
	.loc 4 140 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 4 139 0
	add	ip, ip, r5
.LVL3143:
	.loc 4 140 0
	smlabb	r3, r9, r3, r8
	ldrh	r3, [r7, r3]
	.loc 4 138 0
	add	r1, r1, r4
.LVL3144:
	.loc 4 140 0
	strh	r3, [lr], #2	@ movhi
.LVL3145:
.LBE710:
	.loc 4 110 0
	bne	.L3721
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L3726:
	.align	2
.L3725:
	.word	.LANCHOR1
	.word	V_Palette16
.LBE711:
	.cfi_endproc
.LFE205:
	.size	R_DrawSpan16_PointUV_PointZ, .-R_DrawSpan16_PointUV_PointZ
	.align	2
	.type	R_DrawSpan16_PointUV_LinearZ, %function
R_DrawSpan16_PointUV_LinearZ:
.LFB206:
	.loc 4 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3146:
.LBB712:
	.loc 4 100 0
	ldr	r1, .L3734
.LBE712:
	.loc 4 80 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB715:
	.loc 4 93 0
	ldr	r3, [r0, #4]
	.loc 4 100 0
	ldr	r4, [r1, #28]
	ldr	r6, [r0]
	.loc 4 93 0
	ldr	r5, [r0, #8]
	.loc 4 100 0
	mla	r2, r4, r6, r3
	.loc 4 106 0
	ldr	r7, [r0, #12]
	.loc 4 100 0
	ldr	r4, [r1, #16]
	.loc 4 107 0
	ldr	ip, [r0, #36]
	.loc 4 93 0
	rsb	r5, r3, r5
.LVL3147:
	.loc 4 107 0
	ldr	r1, [r0, #40]
.LBE715:
	.loc 4 80 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
.LBB716:
	.loc 4 106 0
	mov	r7, r7, asr #12
	.loc 4 98 0
	add	r8, r0, #24
	.loc 4 110 0
	cmn	r5, #1
	.loc 4 107 0
	str	ip, [sp, #8]
	.loc 4 100 0
	add	r4, r4, r2, asl #1
	.loc 4 106 0
	uxtb	r7, r7
	.loc 4 107 0
	str	r1, [sp, #12]
	.loc 4 94 0
	ldr	ip, [r0, #16]
.LVL3148:
	.loc 4 95 0
	ldr	lr, [r0, #20]
.LVL3149:
	.loc 4 98 0
	ldmia	r8, {r8, r9, r10}
.LVL3150:
	.loc 4 110 0
	beq	.L3727
	ldr	r2, .L3734+4
	and	r6, r6, #3
.LVL3151:
	ldr	r2, [r2]
	sub	r0, r3, #1
.LVL3152:
	str	r2, [sp, #4]
	mov	r6, r6, asl #2
	rsb	r5, r5, r0
.LVL3153:
	b	.L3729
.LVL3154:
.L3733:
	sub	r0, r0, #1
.LVL3155:
.L3729:
.LBB713:
	.loc 4 140 0
	and	r3, r3, #3
.LVL3156:
	ldr	r2, .L3734+8
	add	r3, r6, r3
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 4 135 0
	mov	r3, lr, asr #10
	.loc 4 140 0
	cmp	r2, r7
	movge	r2, #0
	movlt	r2, #1
	.loc 4 134 0
	mov	r1, ip, asl #10
	.loc 4 135 0
	and	r3, r3, #4032
.LVL3157:
	.loc 4 140 0
	add	fp, sp, #16
	.loc 4 137 0
	orr	r3, r3, r1, lsr #26
.LVL3158:
	.loc 4 140 0
	add	r2, fp, r2, asl #2
	ldr	r2, [r2, #-8]
	ldrb	r3, [r10, r3]	@ zero_extendqisi2
.LVL3159:
	mov	r1, #128
.LVL3160:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, #126
	smlabb	r3, r1, r3, r2
	ldr	r2, [sp, #4]
.LBE713:
	.loc 4 110 0
	cmp	r0, r5
.LBB714:
	.loc 4 140 0
	ldrh	r3, [r2, r3]
	.loc 4 139 0
	add	lr, lr, r9
.LVL3161:
	.loc 4 140 0
	strh	r3, [r4], #2	@ movhi
.LVL3162:
	.loc 4 138 0
	add	ip, ip, r8
.LVL3163:
	.loc 4 143 0
	mov	r3, r0
.LVL3164:
.LBE714:
	.loc 4 110 0
	bne	.L3733
.LVL3165:
.L3727:
.LBE716:
	.loc 4 148 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3166:
.L3735:
	.align	2
.L3734:
	.word	.LANCHOR1
	.word	V_Palette16
	.word	filter_ditherMatrix
	.cfi_endproc
.LFE206:
	.size	R_DrawSpan16_PointUV_LinearZ, .-R_DrawSpan16_PointUV_LinearZ
	.align	2
	.type	R_DrawSpan32_PointUV_PointZ, %function
R_DrawSpan32_PointUV_PointZ:
.LFB211:
	.loc 4 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3167:
.LBB717:
	.loc 4 100 0
	ldr	ip, .L3742
.LBE717:
	.loc 4 80 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB720:
	.loc 4 100 0
	ldmia	r0, {r1, r2}
	ldr	lr, [ip, #32]
	.loc 4 93 0
	ldr	r3, [r0, #8]
	.loc 4 100 0
	mla	r1, lr, r1, r2
	ldr	lr, [ip, #20]
	.loc 4 93 0
	rsb	r2, r2, r3
.LVL3168:
	.loc 4 98 0
	add	r4, r0, #24
	.loc 4 110 0
	adds	r2, r2, #1
.LVL3169:
	.loc 4 100 0
	add	lr, lr, r1, asl #2
	.loc 4 95 0
	ldr	ip, [r0, #20]
	.loc 4 94 0
	ldr	r1, [r0, #16]
.LVL3170:
	.loc 4 98 0
	ldmia	r4, {r4, r5, r6}
.LVL3171:
	.loc 4 99 0
	ldr	r0, [r0, #36]
.LVL3172:
	.loc 4 110 0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
	ldr	r3, .L3742+4
	ldr	r7, [r3]
.LVL3173:
.L3738:
.LBB718:
	.loc 4 135 0
	mov	r3, ip, asr #10
	.loc 4 134 0
	mov	r8, r1, asl #10
	.loc 4 135 0
	and	r3, r3, #4032
.LVL3174:
	.loc 4 137 0
	orr	r3, r3, r8, lsr #26
.LVL3175:
	.loc 4 140 0
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
.LVL3176:
.LBE718:
	.loc 4 110 0
	subs	r2, r2, #1
.LVL3177:
.LBB719:
	.loc 4 140 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 4 139 0
	add	ip, ip, r5
.LVL3178:
	.loc 4 140 0
	add	r3, r7, r3, asl #8
	ldr	r3, [r3, #252]
	.loc 4 138 0
	add	r1, r1, r4
.LVL3179:
	.loc 4 140 0
	str	r3, [lr], #4
.LVL3180:
.LBE719:
	.loc 4 110 0
	bne	.L3738
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L3743:
	.align	2
.L3742:
	.word	.LANCHOR1
	.word	V_Palette32
.LBE720:
	.cfi_endproc
.LFE211:
	.size	R_DrawSpan32_PointUV_PointZ, .-R_DrawSpan32_PointUV_PointZ
	.align	2
	.type	R_DrawSpan32_PointUV_LinearZ, %function
R_DrawSpan32_PointUV_LinearZ:
.LFB212:
	.loc 4 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3181:
.LBB721:
	.loc 4 100 0
	ldr	ip, .L3751
.LBE721:
	.loc 4 80 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB725:
	.loc 4 93 0
	ldr	r3, [r0, #4]
	.loc 4 100 0
	ldr	r4, [ip, #32]
	ldr	r5, [r0]
	.loc 4 93 0
	ldr	r2, [r0, #8]
	.loc 4 100 0
	mla	r1, r4, r5, r3
	.loc 4 106 0
	ldr	r6, [r0, #12]
	.loc 4 100 0
	ldr	r4, [ip, #20]
	.loc 4 107 0
	ldr	lr, [r0, #36]
	ldr	ip, [r0, #40]
	.loc 4 93 0
	rsb	r2, r3, r2
.LVL3182:
.LBE725:
	.loc 4 80 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
.LBB726:
	.loc 4 106 0
	mov	r6, r6, asr #12
	.loc 4 98 0
	add	r7, r0, #24
	.loc 4 110 0
	cmn	r2, #1
	.loc 4 107 0
	str	lr, [sp, #8]
	str	ip, [sp, #12]
	.loc 4 100 0
	add	r4, r4, r1, asl #2
	.loc 4 106 0
	uxtb	r6, r6
	.loc 4 94 0
	ldr	ip, [r0, #16]
.LVL3183:
	.loc 4 95 0
	ldr	lr, [r0, #20]
.LVL3184:
	.loc 4 98 0
	ldmia	r7, {r7, r8, r9}
.LVL3185:
	.loc 4 110 0
	beq	.L3744
	ldr	r1, .L3751+4
	sub	r0, r3, #1
.LVL3186:
	and	r5, r5, #3
.LVL3187:
	rsb	r2, r2, r0
.LVL3188:
	ldr	fp, [r1]
	mov	r5, r5, asl #2
	str	r2, [sp, #4]
	b	.L3746
.LVL3189:
.L3750:
	sub	r0, r0, #1
.LVL3190:
.L3746:
.LBB722:
	.loc 4 140 0
	and	r3, r3, #3
.LVL3191:
	ldr	r2, .L3751+8
	add	r3, r5, r3
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 4 135 0
	mov	r3, lr, asr #10
	.loc 4 140 0
	cmp	r2, r6
	movge	r2, #0
	movlt	r2, #1
	.loc 4 134 0
	mov	r1, ip, asl #10
	.loc 4 135 0
	and	r3, r3, #4032
.LVL3192:
	.loc 4 140 0
	add	r10, sp, #16
	.loc 4 137 0
	orr	r3, r3, r1, lsr #26
.LVL3193:
	.loc 4 140 0
	add	r2, r10, r2, asl #2
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
.LVL3194:
	ldr	r2, [r2, #-8]
.LBE722:
	.loc 4 110 0
	ldr	r1, [sp, #4]
.LVL3195:
.LBB723:
	.loc 4 140 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
.LBE723:
	.loc 4 110 0
	cmp	r0, r1
.LBB724:
	.loc 4 140 0
	add	r3, fp, r3, asl #8
	ldr	r3, [r3, #252]
	.loc 4 139 0
	add	lr, lr, r8
.LVL3196:
	.loc 4 140 0
	str	r3, [r4], #4
.LVL3197:
	.loc 4 138 0
	add	ip, ip, r7
.LVL3198:
	.loc 4 143 0
	mov	r3, r0
.LVL3199:
.LBE724:
	.loc 4 110 0
	bne	.L3750
.LVL3200:
.L3744:
.LBE726:
	.loc 4 148 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3201:
.L3752:
	.align	2
.L3751:
	.word	.LANCHOR1
	.word	V_Palette32
	.word	filter_ditherMatrix
	.cfi_endproc
.LFE212:
	.size	R_DrawSpan32_PointUV_LinearZ, .-R_DrawSpan32_PointUV_LinearZ
	.align	2
	.type	R_QuadFlushError, %function
R_QuadFlushError:
.LFB7:
	.loc 1 172 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 173 0
	ldr	r0, .L3754
	b	I_Error
.LVL3202:
.L3755:
	.align	2
.L3754:
	.word	.LC0
	.cfi_endproc
.LFE7:
	.size	R_QuadFlushError, .-R_QuadFlushError
	.align	2
	.type	R_FlushHTError, %function
R_FlushHTError:
.LFB6:
	.loc 1 167 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 168 0
	ldr	r0, .L3757
	b	I_Error
.LVL3203:
.L3758:
	.align	2
.L3757:
	.word	.LC1
	.cfi_endproc
.LFE6:
	.size	R_FlushHTError, .-R_FlushHTError
	.align	2
	.type	R_FlushWholeError, %function
R_FlushWholeError:
.LFB5:
	.loc 1 162 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 163 0
	ldr	r0, .L3760
	b	I_Error
.LVL3204:
.L3761:
	.align	2
.L3760:
	.word	.LC2
	.cfi_endproc
.LFE5:
	.size	R_FlushWholeError, .-R_FlushWholeError
	.align	2
	.global	R_ResetColumnBuffer
	.type	R_ResetColumnBuffer, %function
R_ResetColumnBuffer:
.LFB9:
	.loc 1 200 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 202 0
	ldr	r3, .L3768
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L3763
	.loc 1 203 0
	bl	R_FlushColumns
.LVL3205:
.L3763:
	.loc 1 204 0
	mov	lr, #0
	ldr	ip, .L3768+4
	.loc 1 205 0
	ldr	r3, .L3768+8
	ldr	r0, .L3768+12
	.loc 1 206 0
	ldr	r1, .L3768+16
	.loc 1 207 0
	ldr	r2, .L3768+20
	.loc 1 204 0
	str	lr, [ip, #-1204]
	.loc 1 207 0
	stmia	r3, {r0, r1, r2}
	ldmfd	sp!, {r3, pc}
.L3769:
	.align	2
.L3768:
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	R_FlushWholeError
	.word	R_FlushHTError
	.word	R_QuadFlushError
	.cfi_endproc
.LFE9:
	.size	R_ResetColumnBuffer, .-R_ResetColumnBuffer
	.align	2
	.global	R_GetDrawColumnFunc
	.type	R_GetDrawColumnFunc, %function
R_GetDrawColumnFunc:
.LFB190:
	.loc 1 668 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3206:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 668 0
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	.loc 1 669 0
	bl	V_GetMode
.LVL3207:
	add	r0, r5, r0, asl #2
	add	ip, r6, r0, asl #2
	ldr	r3, .L3774
	add	ip, r7, ip, asl #2
	ldr	r4, [r3, ip, asl #2]
.LVL3208:
	.loc 1 670 0
	cmp	r4, #0
	beq	.L3773
	.loc 1 674 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL3209:
.L3773:
	.cfi_restore_state
.LBB729:
.LBB730:
	.loc 1 672 0
	bl	V_GetMode
.LVL3210:
	.loc 1 671 0
	mov	r1, r7
	str	r0, [sp]
	mov	r2, r6
	mov	r3, r5
	ldr	r0, .L3774+4
	bl	I_Error
.LVL3211:
.LBE730:
.LBE729:
	.loc 1 674 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL3212:
.L3775:
	.align	2
.L3774:
	.word	.LANCHOR3
	.word	.LC3
	.cfi_endproc
.LFE190:
	.size	R_GetDrawColumnFunc, .-R_GetDrawColumnFunc
	.align	2
	.type	R_DrawFuzzColumn32_RoundedUV_LinearZ, %function
R_DrawFuzzColumn32_RoundedUV_LinearZ:
.LFB189:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3213:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r7, .L3814
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL3214:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	mov	r4, r0
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL3215:
	.loc 3 126 0
	bgt	.L3811
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L3814+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL3216:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL3217:
	bmi	.L3776
.LVL3218:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L3782
.LVL3219:
.L3785:
	.loc 3 215 0
	ldr	r5, .L3814+8
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L3783
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L3812
.L3791:
	.loc 3 228 0 is_stmt 1
	ldr	r3, .L3814+12
	.loc 3 224 0
	mov	r8, #4
.LVL3220:
	.loc 3 221 0
	ldr	lr, [r4]
	.loc 3 228 0
	ldr	r9, [r3]
	.loc 3 223 0
	ldmib	r4, {r2, r3}
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	mov	r3, #0
	.loc 3 231 0
	ldr	r0, .L3814+16
	.loc 3 232 0
	ldr	r1, .L3814+20
	.loc 3 224 0
	ldr	r6, .L3814+24
	.loc 3 230 0
	ldr	ip, .L3814+28
	.loc 3 232 0
	stmib	r7, {r0, r1}
.LVL3221:
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r6, #-1204]
	.loc 3 221 0
	str	lr, [r5, #12]
	.loc 3 222 0
	str	r2, [r5, #4]
	str	r2, [r5, #16]
.LVL3222:
	.loc 3 230 0
	str	ip, [r7]
.L3793:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
.L3776:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3223:
.L3782:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3785
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L3786
.LBB731:
	.loc 3 181 0
	mvn	r0, r10
.LVL3224:
	mov	r1, r8
	str	r3, [sp, #4]
	uxth	r0, r0
.LVL3225:
.L3810:
.LBE731:
.LBB732:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL3226:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	fp, r0, fp
.LVL3227:
.L3787:
.LBE732:
	.loc 3 194 0
	cmp	r5, r9
	beq	.L3788
	.loc 3 195 0
	tst	r3, #4
	beq	.L3789
.LBB733:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3228:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	fp, r0, fp
.LVL3229:
.L3788:
.LBE733:
	.loc 3 208 0
	cmp	fp, #0
	bgt	.L3785
	b	.L3776
.L3812:
	.loc 3 216 0
	ldr	r2, .L3814+24
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L3813
.L3783:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3230:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L3791
.L3792:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L3814+8
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L3814+8
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L3793
.LVL3231:
.L3811:
	.loc 3 127 0
	ldr	r2, [r7, #48]
	mov	r1, #1
	mov	r0, #3
.LVL3232:
	bl	R_GetDrawColumnFunc
.LVL3233:
	mov	r3, r0
	mov	r0, r4
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3234:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3235:
.L3813:
	.cfi_restore_state
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L3783
	b	.L3792
.L3789:
	.loc 3 201 0
	tst	r3, #8
	beq	.L3788
.LBB734:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv
.LVL3236:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	fp, r0, fp
.LVL3237:
	b	.L3788
.LVL3238:
.L3786:
.LBE734:
	.loc 3 186 0
	tst	r3, #2
	beq	.L3787
	str	r3, [sp, #4]
.LBB735:
	.loc 3 188 0
	uxth	r0, r10
.LVL3239:
	mov	r1, r8
	b	.L3810
.L3815:
	.align	2
.L3814:
	.word	.LANCHOR1
	.word	viewheight
	.word	.LANCHOR0
	.word	fullcolormap
	.word	R_FlushHTFuzz32
	.word	R_FlushQuadFuzz32
	.word	.LANCHOR2
	.word	R_FlushWholeFuzz32
.LBE735:
	.cfi_endproc
.LFE189:
	.size	R_DrawFuzzColumn32_RoundedUV_LinearZ, .-R_DrawFuzzColumn32_RoundedUV_LinearZ
	.align	2
	.type	R_DrawTranslatedColumn32_RoundedUV_LinearZ, %function
R_DrawTranslatedColumn32_RoundedUV_LinearZ:
.LFB153:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3240:
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	mov	r2, r3
	.loc 3 126 0
	ldr	r6, .L3914
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 117 0
	str	r3, [sp, #8]
.LVL3241:
	.loc 3 126 0
	ldr	r3, [r6, #64]
	.loc 3 113 0
	mov	r7, r0
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 121 0
	ldr	r9, [r0, #28]
.LVL3242:
	.loc 3 126 0
	bgt	.L3907
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL3243:
	.loc 3 157 0
	subs	r3, r8, r5
.LVL3244:
	str	r3, [sp, #44]
	bmi	.L3816
	.loc 3 171 0
	ldr	r3, .L3914+4
.LVL3245:
	.loc 3 174 0
	ldr	r2, [r0, #60]
.LVL3246:
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	ldr	r2, [sp, #8]
	rsb	r3, r3, r5
	mla	r4, r2, r3, r4
.LVL3247:
	.loc 3 174 0
	bne	.L3908
.LVL3248:
.L3820:
	.loc 3 215 0
	ldr	r8, .L3914+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L3826
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L3909
.LVL3249:
.L3827:
	.loc 3 224 0 is_stmt 1
	mov	ip, #1
	ldr	r2, .L3914+12
	.loc 3 230 0
	ldr	r0, .L3914+16
	.loc 3 224 0
	str	ip, [r2, #-1204]
	.loc 3 231 0
	ldr	r1, .L3914+20
	.loc 3 232 0
	ldr	r2, .L3914+24
	.loc 3 222 0
	ldr	r5, [r7, #4]
	.loc 3 232 0
	stmia	r6, {r0, r1, r2}
	mov	r2, #0
	.loc 3 233 0
	ldr	fp, .L3914+28
	.loc 3 221 0
	ldr	r9, [r7]
	.loc 3 223 0
	ldr	r3, [r7, #8]
	.loc 3 233 0
	add	ip, fp, r5, asl #4
	.loc 3 221 0
	str	r9, [r8, #12]
	.loc 3 222 0
	str	r5, [r8, #4]
	str	r5, [r8, #16]
	.loc 3 233 0
	str	ip, [sp, #48]
.LVL3250:
	.loc 3 223 0
	str	r3, [r8, #8]
	str	r3, [r8, #32]
.LVL3251:
.L3829:
.LBB736:
	.loc 3 274 0
	ldr	r3, [r7, #40]
	.loc 3 259 0
	ldr	r0, [r7, #12]
	.loc 3 274 0
	mov	ip, r3
	str	r3, [sp, #24]
	.loc 3 260 0
	ldr	r3, [r7, #48]
	.loc 3 251 0
	ldr	r6, [r7, #32]
.LVL3252:
	.loc 3 260 0
	str	r3, [sp, #92]
	.loc 3 253 0
	ldr	r3, [r7, #52]
.LBE736:
	.loc 3 245 0
	add	r2, r2, #1
.LBB743:
	.loc 3 260 0
	ldr	r1, [r7, #44]
	.loc 3 259 0
	mov	r0, r0, asr #6
	.loc 3 253 0
	str	r3, [sp, #12]
.LVL3253:
	.loc 3 273 0
	ldr	r3, [r7, #36]
.LVL3254:
	.loc 3 275 0
	cmp	r6, ip
.LBE743:
	.loc 3 245 0
	str	r2, [r8]
.LBB744:
	.loc 3 259 0
	uxtb	r2, r0
	.loc 3 273 0
	str	r3, [sp, #20]
.LVL3255:
	.loc 3 259 0
	str	r2, [sp, #16]
.LVL3256:
	.loc 3 260 0
	str	r1, [sp, #88]
	.loc 3 275 0
	moveq	r3, #0
.LVL3257:
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r3, [r7, #29]	@ zero_extendqisi2
.L3832:
.LVL3258:
	.loc 3 286 0 is_stmt 1
	ldr	r7, [r7, #24]
.LVL3259:
	cmp	r7, #128
	beq	.L3910
	.loc 3 294 0
	cmp	r7, #0
	bne	.L3837
.LVL3260:
	mov	r10, r3, lsr #2
	ldr	r3, [sp, #44]
.LVL3261:
	ldr	r2, .L3914+32
	add	r8, r3, #1
	ldr	r3, .L3914+36
	and	r9, r9, #3
.LVL3262:
	str	r3, [sp, #32]
	ldr	r3, .L3914+40
	.loc 3 297 0
	add	r10, r2, r10, asl #6
	str	r3, [sp, #28]
	add	r3, r8, r5
	str	r3, [sp, #36]
	ldr	r3, [sp, #48]
	sub	fp, r3, r5, asl #4
.LVL3263:
.L3839:
	ldr	r2, [sp, #28]
	and	r3, r5, #3
	add	r3, r9, r3, asl #2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	mov	lr, r4, asr #16
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	cmp	lr, #0
	add	r3, r2, r3, asl #2
	movle	r2, #0
	subgt	r2, lr, #1
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldr	ip, [sp, #20]
	ldr	r2, [sp, #24]
	ldr	r8, [r3, #-8]
	ldr	r3, [sp, #32]
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r7, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3264:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	.loc 3 300 0
	ldr	r2, [sp, #8]
	.loc 3 297 0
	ldrb	r3, [r10, r3, asr #2]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r2
.LVL3265:
	.loc 3 297 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldrb	r3, [r8, r3]	@ zero_extendqisi2
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	str	r3, [fp, r5, asl #4]
	.loc 3 296 0
	ldr	r3, [sp, #36]
	.loc 3 298 0
	add	r5, r5, #1
.LVL3266:
	.loc 3 296 0
	cmp	r5, r3
	bne	.L3839
.LVL3267:
.L3816:
.LBE744:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3268:
.L3908:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3820
	.loc 3 178 0
	cmp	r5, #0
	beq	.L3821
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L3822
.LBB745:
	.loc 3 181 0
	mvn	r10, r9
	uxth	r10, r10
	mov	r0, r10
.LVL3269:
	mov	r1, r2
.L3903:
.LBE745:
.LBB746:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL3270:
	.loc 3 190 0
	ldr	r3, [sp, #44]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r10
.LVL3271:
	.loc 3 189 0
	str	r5, [r7, #4]
.LVL3272:
	.loc 3 190 0
	str	r3, [sp, #44]
.LVL3273:
.L3821:
.LBE746:
	.loc 3 194 0
	ldr	r3, .L3914+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L3823
	.loc 3 195 0
	ldr	r3, [r7, #56]
	tst	r3, #4
	bne	.L3911
	.loc 3 201 0
	tst	r3, #8
	beq	.L3823
.LBB747:
	.loc 3 203 0
	ldr	r1, [sp, #8]
	uxth	r0, r9
.L3904:
	bl	__aeabi_idiv
.LVL3274:
	.loc 3 205 0
	ldr	r3, [sp, #44]
	.loc 3 204 0
	rsb	r8, r0, r8
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r8, [r7, #8]
.LVL3275:
	.loc 3 205 0
	str	r3, [sp, #44]
.LVL3276:
.L3823:
.LBE747:
	.loc 3 208 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bgt	.L3820
	b	.L3816
.L3909:
	.loc 3 216 0
	ldr	r2, .L3914+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L3912
.LVL3277:
.L3826:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3278:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L3827
	ldr	r9, [r7]
.L3828:
	.loc 3 235 0
	ldr	r2, [r7, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r7, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L3914+8
	.loc 3 243 0
	ldr	fp, .L3914+28
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	ldr	ip, .L3914+8
	cmp	r1, r0
	.loc 3 243 0
	add	r3, fp, r3, asl #2
	.loc 3 235 0
	mov	r5, r2
	.loc 3 241 0
	strlt	r1, [ip, #8]
	ldr	r2, [r8]
	.loc 3 243 0
	str	r3, [sp, #48]
	b	.L3829
.LVL3279:
.L3837:
.LBB748:
.LBB737:
	.loc 3 303 0
	sub	r2, r7, #1
.LVL3280:
	.loc 3 304 0
	tst	r2, r7
	bne	.L3840
.LBB738:
	.loc 3 305 0
	mov	r2, r2, asl #16
.LVL3281:
	mvn	r2, r2, lsr #16
	.loc 3 306 0
	ldr	r1, [sp, #44]
.LVL3282:
	.loc 3 305 0
	mvn	ip, r2, asl #16
.LVL3283:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L3913
	mov	r3, r3, lsr #2
.LVL3284:
	mov	r0, r3
	mov	r2, r1, lsr #1
	str	r2, [sp, #64]
	mov	r2, r2, asl #1
	str	r3, [sp, #84]
	add	r3, r2, #2
	add	r3, r3, r5
	mov	r10, r5
	str	r5, [sp, #76]
	mov	r8, r4
	mov	r5, ip
.LVL3285:
	ldr	r1, .L3914+32
	str	r2, [sp, #68]
	str	r3, [sp, #56]
	ldr	r2, .L3914+36
	.loc 3 307 0
	add	r3, r1, r0, asl #6
	str	r3, [sp, #40]
	ldr	r3, [sp, #48]
	str	r2, [sp, #32]
	ldr	r2, .L3914+40
	add	fp, r3, #32
	ldr	r3, [sp, #8]
	str	r2, [sp, #28]
	and	r2, r9, #3
	str	r2, [sp, #36]
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	str	r1, [sp, #80]
	str	r2, [sp, #52]
	str	r3, [sp, #60]
	str	r4, [sp, #72]
.LVL3286:
.L3844:
	ldr	r2, [sp, #36]
	and	r3, r10, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	and	r4, r8, r5
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	add	r1, sp, #96
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	add	r3, r1, r3, asl #2
	ldr	r9, [r3, #-8]
	ldr	ip, [sp, #20]
	ldr	r3, [sp, #32]
	subgt	r2, r2, #1
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r7, [r3]
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	add	r3, r8, #65536
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3287:
	.loc 3 311 0
	ldr	r2, [sp, #36]
	add	r3, r10, #1
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	.loc 3 307 0
	mov	r4, r4, asr #8
	.loc 3 311 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	.loc 3 307 0
	uxtb	r4, r4
	.loc 3 311 0
	cmp	r3, r2
	.loc 3 307 0
	ldr	r2, [sp, #40]
	ldr	r1, [sp, #8]
	ldrb	r2, [r2, r4, asr #2]	@ zero_extendqisi2
	.loc 3 311 0
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	add	r4, r1, r8
	ldr	r1, [sp, #12]
	.loc 3 311 0
	and	r4, r4, r5
	.loc 3 307 0
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	.loc 3 307 0
	ldrb	r1, [r9, r1]	@ zero_extendqisi2
	.loc 3 311 0
	add	r0, sp, #96
	add	r3, r0, r3, asl #2
	ldr	r9, [r3, #-8]
	.loc 3 307 0
	add	r7, r7, r1, asl #8
	.loc 3 311 0
	ldr	r3, [sp, #32]
	.loc 3 307 0
	ldr	r1, [r7, #252]
	.loc 3 311 0
	ldr	ip, [sp, #20]
	ldr	r7, [r3]
	ldr	r3, [sp, #60]
	.loc 3 307 0
	str	r1, [fp, #-32]
.LVL3288:
	.loc 3 311 0
	subgt	r2, r2, #1
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r3, r3, r8
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3289:
	mov	r4, r4, asr #8
	ldr	r3, [sp, #40]
	uxtb	r4, r4
	.loc 3 306 0
	ldr	r2, [sp, #56]
	.loc 3 311 0
	ldrb	r3, [r3, r4, asr #2]	@ zero_extendqisi2
	.loc 3 312 0
	add	r10, r10, #2
.LVL3290:
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 306 0
	cmp	r10, r2
	.loc 3 311 0
	ldr	r2, [sp, #12]
	add	fp, fp, #32
.LVL3291:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #52]
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	add	r8, r2, r8
.LVL3292:
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	str	r3, [fp, #-48]
	.loc 3 306 0
	bne	.L3844
	.loc 3 316 0
	ldr	r1, [sp, #44]
	mov	ip, r5
	ldr	r5, [sp, #76]
.LVL3293:
	tst	r1, #1
	ldr	r1, [sp, #68]
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #72]
	add	r5, r5, #2
	ldr	r2, [sp, #64]
	add	r5, r5, r1
	ldr	r1, [sp, #52]
	add	r4, r4, r3, asl #1
	mla	r4, r1, r2, r4
	add	r3, r2, #1
	ldr	r2, [sp, #48]
	add	r3, r2, r3, asl #5
	str	r3, [sp, #48]
	bne	.L3816
.LVL3294:
.L3860:
	.loc 3 317 0
	ldr	r3, [sp, #36]
	and	r5, r5, #3
	add	r9, r3, r5, asl #2
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #16]
	ldrb	r3, [r3, r9]	@ zero_extendqisi2
	and	r5, r4, ip
	cmp	r3, r2
	mov	r2, r5, asr #16
	movge	r3, #0
	movlt	r3, #1
	cmp	r2, #0
	movle	r2, #0
	add	r4, r4, #65536
	add	r1, sp, #96
	and	r4, r4, ip
	ldr	ip, [sp, #20]
.LVL3295:
	add	r3, r1, r3, asl #2
	subgt	r2, r2, #1
	ldr	r7, [r3, #-8]
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #24]
	ldrb	ip, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r8, [r3]
	ldrb	r2, [r2, r5, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r5, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL3296:
	ldr	r3, [sp, #80]
	mov	r10, r5, asl #16
	add	r10, r3, r10, lsr #26
	ldr	r3, [sp, #84]
	ldr	r2, [sp, #12]
	ldrb	r3, [r10, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #48]
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	add	r8, r8, r3, asl #8
	ldr	r3, [r8, #252]
	str	r3, [r2]
	b	.L3816
.LVL3297:
.L3907:
.LBE738:
.LBE737:
.LBE748:
	.loc 3 127 0
	ldr	r2, [r6, #48]
.LVL3298:
	mov	r1, #1
	mov	r0, #2
.LVL3299:
	bl	R_GetDrawColumnFunc
.LVL3300:
	mov	r3, r0
	mov	r0, r7
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3301:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3302:
.L3840:
	.cfi_restore_state
.LBB749:
.LBB741:
.LBB739:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r7, r7, asl #16
.LVL3303:
	.loc 3 325 0
	blt	.L3849
	.loc 3 328 0
	cmp	r4, r7
	blt	.L3848
.L3850:
	rsb	r4, r7, r4
.LVL3304:
	cmp	r7, r4
	ble	.L3850
.L3848:
	.loc 3 332 0
	add	r8, r4, #65536
.LVL3305:
	.loc 3 333 0
	cmp	r8, r7
	blt	.L3851
.L3852:
	rsb	r8, r7, r8
.LVL3306:
	cmp	r8, r7
	bge	.L3852
.L3851:
	ldr	r1, [sp, #44]
.LVL3307:
	.loc 3 345 0
	ldr	r2, .L3914+32
	add	r1, r1, #1
	add	r1, r1, r5
	str	r1, [sp, #28]
	ldr	r1, [sp, #48]
	mov	r3, r3, lsr #2
.LVL3308:
	sub	r1, r1, r5, asl #4
	add	r3, r2, r3, asl #6
	str	r1, [sp, #32]
	and	fp, r9, #3
	str	r3, [sp, #36]
	b	.L3853
.LVL3309:
.L3857:
	ldr	r2, .L3914+40
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, .L3914+36
	ldr	r9, [r2]
	ldr	r2, [sp, #16]
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	cmp	lr, #0
	ldr	r10, [r3, #-8]
	movle	r3, #0
	subgt	r3, lr, #1
	ldrb	r1, [r6, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldrb	r2, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r3, [r6, r8, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3310:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 348 0
	ldr	r2, [sp, #8]
	.loc 3 345 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r2
.LVL3311:
	.loc 3 350 0
	add	r8, r8, r2
.LVL3312:
	.loc 3 345 0
	ldr	r2, [sp, #12]
	.loc 3 348 0
	cmp	r4, r7
	.loc 3 345 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #32]
	ldrb	r3, [r10, r3]	@ zero_extendqisi2
	.loc 3 348 0
	rsbge	r4, r7, r4
	.loc 3 345 0
	add	r9, r9, r3, asl #8
	ldr	r3, [r9, #252]
	.loc 3 350 0
	cmp	r8, r7
	.loc 3 345 0
	str	r3, [r2, r5, asl #4]
	.loc 3 350 0
	rsbge	r8, r7, r8
	.loc 3 346 0
	add	r5, r5, #1
.LVL3313:
.L3853:
	.loc 3 339 0
	ldr	r2, [sp, #28]
	.loc 3 345 0
	and	r3, r5, #3
	.loc 3 339 0
	cmp	r5, r2
	.loc 3 345 0
	add	r3, fp, r3, asl #2
	mov	lr, r4, asr #16
	.loc 3 339 0
	bne	.L3857
.LBE739:
.LBE741:
.LBE749:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3314:
.L3849:
	.cfi_restore_state
.LBB750:
.LBB742:
.LBB740:
	.loc 3 326 0 discriminator 1
	adds	r4, r7, r4
.LVL3315:
	bpl	.L3848
.LVL3316:
	.loc 3 326 0 is_stmt 0
	adds	r4, r7, r4
.LVL3317:
	bmi	.L3849
	b	.L3848
.LVL3318:
.L3912:
.LBE740:
.LBE742:
.LBE750:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r9, [r7]
.LVL3319:
	add	r2, r3, r2
	cmp	r2, r9
	bne	.L3826
	b	.L3828
.LVL3320:
.L3910:
	mov	r10, r3, lsr #2
	ldr	r3, [sp, #44]
.LVL3321:
	ldr	r2, .L3914+32
	add	r8, r3, #1
	ldr	r3, .L3914+36
.LBB751:
	.loc 3 289 0
	add	r10, r2, r10, asl #6
	str	r3, [sp, #32]
	ldr	r3, .L3914+40
	str	r3, [sp, #28]
	add	r3, r8, r5
	str	r3, [sp, #36]
	and	r3, r9, #3
	str	r3, [sp, #40]
	ldr	r3, [sp, #48]
	sub	fp, r3, r5, asl #4
.LVL3322:
.L3835:
	ldr	r2, [sp, #40]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	bic	r7, r4, #-16777216
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	bic	r7, r7, #8388608
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	ldr	r9, [r3, #-8]
	ldr	r3, [sp, #32]
	movs	r2, r7, asr #16
	ldr	ip, [sp, #20]
	ldr	r8, [r3]
	subne	r2, r2, #1
	add	r3, r4, #65536
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r7, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	bic	r3, r3, #-16777216
	bic	r3, r3, #8388608
	ldrb	r2, [r2, r7, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r7, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3323:
	mov	r7, r7, asr #8
	uxtb	r7, r7
	.loc 3 292 0
	ldr	r2, [sp, #8]
	.loc 3 289 0
	ldrb	r3, [r10, r7, asr #2]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r2
.LVL3324:
	.loc 3 289 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	add	r8, r8, r3, asl #8
	ldr	r3, [r8, #252]
	str	r3, [fp, r5, asl #4]
	.loc 3 288 0
	ldr	r3, [sp, #36]
	.loc 3 290 0
	add	r5, r5, #1
.LVL3325:
	.loc 3 288 0
	cmp	r5, r3
	bne	.L3835
.LBE751:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3326:
.L3911:
	.cfi_restore_state
.LBB752:
	.loc 3 197 0
	mvn	r0, r9
	ldr	r1, [sp, #8]
	uxth	r0, r0
	b	.L3904
.LVL3327:
.L3822:
.LBE752:
	.loc 3 186 0
	tst	r3, #2
	beq	.L3821
.LBB753:
	.loc 3 188 0
	uxth	r10, r9
	mov	r0, r10
.LVL3328:
	ldr	r1, [sp, #8]
	b	.L3903
.LVL3329:
.L3913:
	mov	r3, r3, lsr #2
.LVL3330:
	str	r3, [sp, #84]
	ldr	r3, .L3914+36
	and	r2, r9, #3
	str	r3, [sp, #32]
	ldr	r3, .L3914+40
	str	r2, [sp, #36]
	str	r3, [sp, #28]
	ldr	r3, .L3914+32
	str	r3, [sp, #80]
	b	.L3860
.L3915:
	.align	2
.L3914:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushWhole32
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	filter_roundedUVMap
	.word	V_Palette32
	.word	filter_ditherMatrix
	.word	viewheight
.LBE753:
	.cfi_endproc
.LFE153:
	.size	R_DrawTranslatedColumn32_RoundedUV_LinearZ, .-R_DrawTranslatedColumn32_RoundedUV_LinearZ
	.align	2
	.type	R_DrawTLColumn32_RoundedUV_LinearZ, %function
R_DrawTLColumn32_RoundedUV_LinearZ:
.LFB117:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3331:
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	mov	r2, r3
	.loc 3 126 0
	ldr	r7, .L4014
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 117 0
	str	r3, [sp, #12]
.LVL3332:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 113 0
	mov	r6, r0
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 121 0
	ldr	r9, [r0, #28]
.LVL3333:
	.loc 3 126 0
	bgt	.L4007
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL3334:
	.loc 3 157 0
	subs	r3, r8, r5
.LVL3335:
	str	r3, [sp, #44]
	bmi	.L3916
	.loc 3 171 0
	ldr	r3, .L4014+4
.LVL3336:
	.loc 3 174 0
	ldr	r2, [r0, #60]
.LVL3337:
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	ldr	r2, [sp, #12]
	rsb	r3, r3, r5
	mla	r4, r2, r3, r4
.LVL3338:
	.loc 3 174 0
	bne	.L4008
.LVL3339:
.L3920:
	.loc 3 215 0
	ldr	r8, .L4014+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L3926
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4009
.LVL3340:
.L3927:
	.loc 3 224 0 is_stmt 1
	mov	ip, #2
	.loc 3 226 0
	ldr	r3, .L4014+12
	.loc 3 224 0
	ldr	r2, .L4014+16
	.loc 3 226 0
	ldr	r1, [r3]
	.loc 3 224 0
	str	ip, [r2, #-1204]
	.loc 3 230 0
	ldr	r0, .L4014+20
	.loc 3 232 0
	ldr	r2, .L4014+24
	.loc 3 226 0
	str	r1, [r8, #1008]
	.loc 3 231 0
	ldr	r1, .L4014+28
	.loc 3 222 0
	ldr	r5, [r6, #4]
	.loc 3 232 0
	stmia	r7, {r0, r1, r2}
	mov	r2, #0
	.loc 3 233 0
	ldr	fp, .L4014+32
	.loc 3 221 0
	ldr	r9, [r6]
	.loc 3 223 0
	ldr	r3, [r6, #8]
	.loc 3 233 0
	add	ip, fp, r5, asl #4
	.loc 3 221 0
	str	r9, [r8, #12]
	.loc 3 222 0
	str	r5, [r8, #4]
	str	r5, [r8, #16]
	.loc 3 233 0
	str	ip, [sp, #48]
.LVL3341:
	.loc 3 223 0
	str	r3, [r8, #8]
	str	r3, [r8, #32]
.LVL3342:
.L3929:
.LBB754:
	.loc 3 274 0
	ldr	r3, [r6, #40]
	.loc 3 259 0
	ldr	r0, [r6, #12]
	.loc 3 274 0
	mov	ip, r3
	str	r3, [sp, #24]
	.loc 3 260 0
	ldr	r3, [r6, #48]
	.loc 3 251 0
	ldr	r7, [r6, #32]
.LVL3343:
.LBE754:
	.loc 3 245 0
	add	r2, r2, #1
.LBB761:
	.loc 3 260 0
	ldr	r1, [r6, #44]
	.loc 3 259 0
	mov	r0, r0, asr #6
	.loc 3 260 0
	str	r3, [sp, #92]
	.loc 3 273 0
	ldr	r3, [r6, #36]
	.loc 3 275 0
	cmp	r7, ip
.LBE761:
	.loc 3 245 0
	str	r2, [r8]
.LBB762:
	.loc 3 259 0
	uxtb	r2, r0
	.loc 3 273 0
	str	r3, [sp, #20]
	.loc 3 259 0
	str	r2, [sp, #16]
.LVL3344:
	.loc 3 260 0
	str	r1, [sp, #88]
	.loc 3 275 0
	moveq	r3, #0
.LVL3345:
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r3, [r6, #29]	@ zero_extendqisi2
.L3932:
.LVL3346:
	.loc 3 286 0 is_stmt 1
	ldr	r6, [r6, #24]
.LVL3347:
	cmp	r6, #128
	beq	.L4010
	.loc 3 294 0
	cmp	r6, #0
	bne	.L3937
.LVL3348:
	mov	r8, r3, lsr #2
	ldr	r3, [sp, #44]
.LVL3349:
	ldr	r2, .L4014+36
.LVL3350:
	add	r10, r3, #1
	ldr	r3, .L4014+40
	add	r10, r10, r5
	str	r3, [sp, #32]
	ldr	r3, .L4014+44
	and	r9, r9, #3
.LVL3351:
	str	r3, [sp, #28]
	ldr	r3, [sp, #48]
	sub	fp, r3, r5, asl #4
	.loc 3 297 0
	add	r3, r2, r8, asl #6
	str	r3, [sp, #36]
.LVL3352:
.L3939:
	ldr	r2, [sp, #28]
	and	r3, r5, #3
	add	r3, r9, r3, asl #2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	mov	lr, r4, asr #16
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	cmp	lr, #0
	add	r3, r2, r3, asl #2
	movle	r2, #0
	subgt	r2, lr, #1
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	ldr	ip, [sp, #20]
	ldr	r2, [sp, #24]
	ldr	r8, [r3, #-8]
	ldr	r3, [sp, #32]
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r6, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3353:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 300 0
	ldr	r2, [sp, #12]
	.loc 3 297 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r2
.LVL3354:
	.loc 3 297 0
	ldrb	r3, [r8, r3]	@ zero_extendqisi2
	add	r6, r6, r3, asl #8
	ldr	r3, [r6, #252]
	str	r3, [fp, r5, asl #4]
	.loc 3 298 0
	add	r5, r5, #1
.LVL3355:
	.loc 3 296 0
	cmp	r5, r10
	bne	.L3939
.LVL3356:
.L3916:
.LBE762:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3357:
.L4008:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L3920
	.loc 3 178 0
	cmp	r5, #0
	beq	.L3921
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L3922
.LBB763:
	.loc 3 181 0
	mvn	r10, r9
	uxth	r10, r10
	mov	r0, r10
.LVL3358:
	mov	r1, r2
.L4003:
.LBE763:
.LBB764:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL3359:
	.loc 3 190 0
	ldr	r3, [sp, #44]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r10
.LVL3360:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL3361:
	.loc 3 190 0
	str	r3, [sp, #44]
.LVL3362:
.L3921:
.LBE764:
	.loc 3 194 0
	ldr	r3, .L4014+48
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L3923
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L4011
	.loc 3 201 0
	tst	r3, #8
	beq	.L3923
.LBB765:
	.loc 3 203 0
	ldr	r1, [sp, #12]
	uxth	r0, r9
.L4004:
	bl	__aeabi_idiv
.LVL3363:
	.loc 3 205 0
	ldr	r3, [sp, #44]
	.loc 3 204 0
	rsb	r8, r0, r8
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r8, [r6, #8]
.LVL3364:
	.loc 3 205 0
	str	r3, [sp, #44]
.LVL3365:
.L3923:
.LBE765:
	.loc 3 208 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bgt	.L3920
	b	.L3916
.L4009:
	.loc 3 216 0
	ldr	r2, .L4014+16
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L4012
.LVL3366:
.L3926:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3367:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L3927
	ldr	r9, [r6]
.L3928:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L4014+8
	.loc 3 243 0
	ldr	fp, .L4014+32
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	ldr	ip, .L4014+8
	cmp	r1, r0
	.loc 3 243 0
	add	r3, fp, r3, asl #2
	.loc 3 235 0
	mov	r5, r2
	.loc 3 241 0
	strlt	r1, [ip, #8]
	ldr	r2, [r8]
	.loc 3 243 0
	str	r3, [sp, #48]
	b	.L3929
.LVL3368:
.L3937:
.LBB766:
.LBB755:
	.loc 3 303 0
	sub	r2, r6, #1
.LVL3369:
	.loc 3 304 0
	tst	r2, r6
	bne	.L3940
.LBB756:
	.loc 3 305 0
	mov	r2, r2, asl #16
.LVL3370:
	mvn	r2, r2, lsr #16
	.loc 3 306 0
	ldr	r1, [sp, #44]
.LVL3371:
	.loc 3 305 0
	mvn	ip, r2, asl #16
.LVL3372:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L4013
	mov	r3, r3, lsr #2
.LVL3373:
	mov	r0, r3
	mov	r2, r1, lsr #1
	str	r2, [sp, #64]
	mov	r2, r2, asl #1
	str	r3, [sp, #80]
	add	r3, r2, #2
	add	r3, r3, r5
	mov	r10, r5
	str	r5, [sp, #76]
	mov	r8, r4
	mov	r5, ip
.LVL3374:
	ldr	r1, .L4014+36
	str	r2, [sp, #68]
	str	r3, [sp, #56]
	ldr	r2, .L4014+40
	.loc 3 307 0
	add	r3, r1, r0, asl #6
	str	r3, [sp, #40]
	ldr	r3, [sp, #48]
	str	r2, [sp, #32]
	ldr	r2, .L4014+44
	add	fp, r3, #32
	ldr	r3, [sp, #12]
	str	r2, [sp, #28]
	and	r2, r9, #3
	str	r2, [sp, #36]
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	str	r1, [sp, #84]
	str	r2, [sp, #52]
	str	r3, [sp, #60]
	str	r4, [sp, #72]
.LVL3375:
.L3944:
	ldr	r2, [sp, #36]
	and	r3, r10, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	and	r4, r8, r5
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	add	r1, sp, #96
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	add	r3, r1, r3, asl #2
	ldr	r9, [r3, #-8]
	ldr	ip, [sp, #20]
	ldr	r3, [sp, #32]
	subgt	r2, r2, #1
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r6, [r3]
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	add	r3, r8, #65536
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3376:
	.loc 3 311 0
	ldr	r2, [sp, #36]
	add	r3, r10, #1
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	.loc 3 307 0
	mov	r4, r4, asr #8
	.loc 3 311 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	.loc 3 307 0
	uxtb	r4, r4
	.loc 3 311 0
	cmp	r3, r2
	.loc 3 307 0
	ldr	r2, [sp, #40]
	ldr	r1, [sp, #12]
	ldrb	r2, [r2, r4, asr #2]	@ zero_extendqisi2
	.loc 3 311 0
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	add	r4, r1, r8
	.loc 3 311 0
	and	r4, r4, r5
	.loc 3 307 0
	ldrb	r1, [r9, r2]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	add	r0, sp, #96
	add	r3, r0, r3, asl #2
	ldr	r9, [r3, #-8]
	.loc 3 307 0
	add	r6, r6, r1, asl #8
	.loc 3 311 0
	ldr	r3, [sp, #32]
	.loc 3 307 0
	ldr	r1, [r6, #252]
	.loc 3 311 0
	ldr	ip, [sp, #20]
	ldr	r6, [r3]
	ldr	r3, [sp, #60]
	.loc 3 307 0
	str	r1, [fp, #-32]
.LVL3377:
	.loc 3 311 0
	subgt	r2, r2, #1
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r3, r3, r8
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3378:
	mov	r4, r4, asr #8
	ldr	r3, [sp, #40]
	uxtb	r4, r4
	ldrb	r3, [r3, r4, asr #2]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	r2, [sp, #56]
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 312 0
	add	r10, r10, #2
.LVL3379:
	.loc 3 311 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	.loc 3 306 0
	cmp	r10, r2
	.loc 3 311 0
	add	r6, r6, r3, asl #8
	ldr	r2, [sp, #52]
	ldr	r3, [r6, #252]
	add	r8, r2, r8
.LVL3380:
	str	r3, [fp, #-16]
	add	fp, fp, #32
.LVL3381:
	.loc 3 306 0
	bne	.L3944
	.loc 3 316 0
	ldr	r1, [sp, #44]
	mov	ip, r5
	ldr	r5, [sp, #76]
.LVL3382:
	tst	r1, #1
	ldr	r1, [sp, #68]
	ldr	r3, [sp, #12]
	ldr	r4, [sp, #72]
	add	r5, r5, #2
	ldr	r2, [sp, #64]
	add	r5, r5, r1
	ldr	r1, [sp, #52]
	add	r4, r4, r3, asl #1
	mla	r4, r1, r2, r4
	add	r3, r2, #1
	ldr	r2, [sp, #48]
	add	r3, r2, r3, asl #5
	str	r3, [sp, #48]
	bne	.L3916
.LVL3383:
.L3960:
	.loc 3 317 0
	ldr	r3, [sp, #36]
	and	r5, r5, #3
	add	r9, r3, r5, asl #2
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #16]
	ldrb	r3, [r3, r9]	@ zero_extendqisi2
	and	r5, r4, ip
	cmp	r3, r2
	mov	r2, r5, asr #16
	movge	r3, #0
	movlt	r3, #1
	cmp	r2, #0
	movle	r2, #0
	add	r4, r4, #65536
	add	r1, sp, #96
	and	r4, r4, ip
	ldr	ip, [sp, #20]
.LVL3384:
	add	r3, r1, r3, asl #2
	subgt	r2, r2, #1
	ldr	r6, [r3, #-8]
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #24]
	ldrb	ip, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r9, [r3]
	ldrb	r2, [r2, r5, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r7, r5, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL3385:
	ldr	r3, [sp, #84]
	mov	r8, r5, asl #16
	add	r8, r3, r8, lsr #26
	ldr	r3, [sp, #80]
	ldr	r2, [sp, #48]
	ldrb	r3, [r8, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	add	r9, r9, r3, asl #8
	ldr	r3, [r9, #252]
	str	r3, [r2]
	b	.L3916
.LVL3386:
.L4007:
.LBE756:
.LBE755:
.LBE766:
	.loc 3 127 0
	mov	r0, #1
.LVL3387:
	ldr	r2, [r7, #48]
.LVL3388:
	mov	r1, r0
	bl	R_GetDrawColumnFunc
.LVL3389:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3390:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3391:
.L3940:
	.cfi_restore_state
.LBB767:
.LBB759:
.LBB757:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r6, asl #16
.LVL3392:
	.loc 3 325 0
	blt	.L3949
	.loc 3 328 0
	cmp	r4, r6
	blt	.L3948
.L3950:
	rsb	r4, r6, r4
.LVL3393:
	cmp	r6, r4
	ble	.L3950
.L3948:
	.loc 3 332 0
	add	r10, r4, #65536
.LVL3394:
	.loc 3 333 0
	cmp	r10, r6
	blt	.L3951
.L3952:
	rsb	r10, r6, r10
.LVL3395:
	cmp	r10, r6
	bge	.L3952
.L3951:
	ldr	r1, [sp, #44]
.LVL3396:
	.loc 3 345 0
	ldr	r2, .L4014+36
	add	fp, r1, #1
	ldr	r1, [sp, #48]
	mov	r3, r3, lsr #2
.LVL3397:
	sub	r1, r1, r5, asl #4
	str	r1, [sp, #32]
	add	r3, r2, r3, asl #6
	and	r1, r9, #3
	add	fp, fp, r5
	str	r1, [sp, #28]
	str	r3, [sp, #36]
	b	.L3953
.LVL3398:
.L3957:
	ldr	r2, .L4014+44
	ldrb	r0, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, .L4014+40
	ldr	r8, [r2]
	ldr	r2, [sp, #16]
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	cmp	lr, #0
	ldr	r9, [r3, #-8]
	movle	r3, #0
	subgt	r3, lr, #1
	ldrb	r1, [r7, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldrb	r2, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r3, [r7, r10, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3399:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 348 0
	ldr	r2, [sp, #12]
	.loc 3 345 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r2
.LVL3400:
	.loc 3 345 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	.loc 3 350 0
	add	r10, r10, r2
.LVL3401:
	.loc 3 345 0
	add	r8, r8, r3, asl #8
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	ldr	r3, [r8, #252]
	ldr	r2, [sp, #32]
	.loc 3 348 0
	rsbge	r4, r6, r4
	.loc 3 350 0
	cmp	r10, r6
	.loc 3 345 0
	str	r3, [r2, r5, asl #4]
	.loc 3 350 0
	rsbge	r10, r6, r10
	.loc 3 346 0
	add	r5, r5, #1
.LVL3402:
.L3953:
	.loc 3 345 0
	ldr	r2, [sp, #28]
	and	r3, r5, #3
	.loc 3 339 0
	cmp	r5, fp
	.loc 3 345 0
	add	r3, r2, r3, asl #2
	mov	lr, r4, asr #16
	.loc 3 339 0
	bne	.L3957
.LBE757:
.LBE759:
.LBE767:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3403:
.L3949:
	.cfi_restore_state
.LBB768:
.LBB760:
.LBB758:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL3404:
	bpl	.L3948
.LVL3405:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL3406:
	bmi	.L3949
	b	.L3948
.LVL3407:
.L4012:
.LBE758:
.LBE760:
.LBE768:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r9, [r6]
.LVL3408:
	add	r2, r3, r2
	cmp	r2, r9
	bne	.L3926
	b	.L3928
.LVL3409:
.L4010:
	ldr	r1, [sp, #44]
.LVL3410:
	ldr	r2, .L4014+36
.LVL3411:
	add	r10, r1, #1
	ldr	r1, .L4014+40
	mov	r3, r3, lsr #2
.LVL3412:
	str	r1, [sp, #32]
	ldr	r1, .L4014+44
.LBB769:
	.loc 3 289 0
	add	r3, r2, r3, asl #6
	str	r1, [sp, #28]
	and	r1, r9, #3
	str	r1, [sp, #36]
	ldr	r1, [sp, #48]
	add	r10, r10, r5
	sub	fp, r1, r5, asl #4
	str	r3, [sp, #40]
.LVL3413:
.L3935:
	ldr	r2, [sp, #36]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	bic	r6, r4, #-16777216
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	bic	r6, r6, #8388608
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	ldr	r9, [r3, #-8]
	ldr	r3, [sp, #32]
	movs	r2, r6, asr #16
	ldr	ip, [sp, #20]
	ldr	r8, [r3]
	subne	r2, r2, #1
	add	r3, r4, #65536
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	bic	r3, r3, #-16777216
	bic	r3, r3, #8388608
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r7, r6, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3414:
	mov	r6, r6, asr #8
	ldr	r3, [sp, #40]
	uxtb	r6, r6
	ldrb	r3, [r3, r6, asr #2]	@ zero_extendqisi2
	.loc 3 292 0
	ldr	r2, [sp, #12]
	.loc 3 289 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r2
.LVL3415:
	.loc 3 289 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	add	r8, r8, r3, asl #8
	ldr	r3, [r8, #252]
	str	r3, [fp, r5, asl #4]
	.loc 3 290 0
	add	r5, r5, #1
.LVL3416:
	.loc 3 288 0
	cmp	r5, r10
	bne	.L3935
.LBE769:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3417:
.L4011:
	.cfi_restore_state
.LBB770:
	.loc 3 197 0
	mvn	r0, r9
	ldr	r1, [sp, #12]
	uxth	r0, r0
	b	.L4004
.LVL3418:
.L3922:
.LBE770:
	.loc 3 186 0
	tst	r3, #2
	beq	.L3921
.LBB771:
	.loc 3 188 0
	uxth	r10, r9
	mov	r0, r10
.LVL3419:
	ldr	r1, [sp, #12]
	b	.L4003
.LVL3420:
.L4013:
	mov	r3, r3, lsr #2
.LVL3421:
	str	r3, [sp, #80]
	ldr	r3, .L4014+40
	and	r2, r9, #3
	str	r3, [sp, #32]
	ldr	r3, .L4014+44
	str	r2, [sp, #36]
	str	r3, [sp, #28]
	ldr	r3, .L4014+36
	str	r3, [sp, #84]
	b	.L3960
.L4015:
	.align	2
.L4014:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushWholeTL32
	.word	R_FlushQuadTL32
	.word	R_FlushHTTL32
	.word	.LANCHOR0+3140
	.word	filter_roundedUVMap
	.word	V_Palette32
	.word	filter_ditherMatrix
	.word	viewheight
.LBE771:
	.cfi_endproc
.LFE117:
	.size	R_DrawTLColumn32_RoundedUV_LinearZ, .-R_DrawTLColumn32_RoundedUV_LinearZ
	.align	2
	.type	R_DrawColumn32_RoundedUV_LinearZ, %function
R_DrawColumn32_RoundedUV_LinearZ:
.LFB81:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3422:
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	mov	r2, r3
	.loc 3 126 0
	ldr	r7, .L4114
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 117 0
	str	r3, [sp, #12]
.LVL3423:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 113 0
	mov	r6, r0
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 121 0
	ldr	r9, [r0, #28]
.LVL3424:
	.loc 3 126 0
	bgt	.L4107
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL3425:
	.loc 3 157 0
	subs	r3, r8, r5
.LVL3426:
	str	r3, [sp, #44]
	bmi	.L4016
	.loc 3 171 0
	ldr	r3, .L4114+4
.LVL3427:
	.loc 3 174 0
	ldr	r2, [r0, #60]
.LVL3428:
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	ldr	r2, [sp, #12]
	rsb	r3, r3, r5
	mla	r4, r2, r3, r4
.LVL3429:
	.loc 3 174 0
	bne	.L4108
.LVL3430:
.L4020:
	.loc 3 215 0
	ldr	r8, .L4114+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L4026
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4109
.LVL3431:
.L4027:
	.loc 3 224 0 is_stmt 1
	mov	ip, #1
	ldr	r2, .L4114+12
	.loc 3 230 0
	ldr	r0, .L4114+16
	.loc 3 224 0
	str	ip, [r2, #-1204]
	.loc 3 231 0
	ldr	r1, .L4114+20
	.loc 3 232 0
	ldr	r2, .L4114+24
	.loc 3 222 0
	ldr	r5, [r6, #4]
	.loc 3 232 0
	stmia	r7, {r0, r1, r2}
	mov	r2, #0
	.loc 3 233 0
	ldr	fp, .L4114+28
	.loc 3 221 0
	ldr	r9, [r6]
	.loc 3 223 0
	ldr	r3, [r6, #8]
	.loc 3 233 0
	add	ip, fp, r5, asl #4
	.loc 3 221 0
	str	r9, [r8, #12]
	.loc 3 222 0
	str	r5, [r8, #4]
	str	r5, [r8, #16]
	.loc 3 233 0
	str	ip, [sp, #48]
.LVL3432:
	.loc 3 223 0
	str	r3, [r8, #8]
	str	r3, [r8, #32]
.LVL3433:
.L4029:
.LBB772:
	.loc 3 274 0
	ldr	r3, [r6, #40]
	.loc 3 259 0
	ldr	r0, [r6, #12]
	.loc 3 274 0
	mov	ip, r3
	str	r3, [sp, #24]
	.loc 3 260 0
	ldr	r3, [r6, #48]
	.loc 3 251 0
	ldr	r7, [r6, #32]
.LVL3434:
.LBE772:
	.loc 3 245 0
	add	r2, r2, #1
.LBB779:
	.loc 3 260 0
	ldr	r1, [r6, #44]
	.loc 3 259 0
	mov	r0, r0, asr #6
	.loc 3 260 0
	str	r3, [sp, #92]
	.loc 3 273 0
	ldr	r3, [r6, #36]
	.loc 3 275 0
	cmp	r7, ip
.LBE779:
	.loc 3 245 0
	str	r2, [r8]
.LBB780:
	.loc 3 259 0
	uxtb	r2, r0
	.loc 3 273 0
	str	r3, [sp, #20]
	.loc 3 259 0
	str	r2, [sp, #16]
.LVL3435:
	.loc 3 260 0
	str	r1, [sp, #88]
	.loc 3 275 0
	moveq	r3, #0
.LVL3436:
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r3, [r6, #29]	@ zero_extendqisi2
.L4032:
.LVL3437:
	.loc 3 286 0 is_stmt 1
	ldr	r6, [r6, #24]
.LVL3438:
	cmp	r6, #128
	beq	.L4110
	.loc 3 294 0
	cmp	r6, #0
	bne	.L4037
.LVL3439:
	mov	r8, r3, lsr #2
	ldr	r3, [sp, #44]
.LVL3440:
	ldr	r2, .L4114+32
.LVL3441:
	add	r10, r3, #1
	ldr	r3, .L4114+36
	add	r10, r10, r5
	str	r3, [sp, #32]
	ldr	r3, .L4114+40
	and	r9, r9, #3
.LVL3442:
	str	r3, [sp, #28]
	ldr	r3, [sp, #48]
	sub	fp, r3, r5, asl #4
	.loc 3 297 0
	add	r3, r2, r8, asl #6
	str	r3, [sp, #36]
.LVL3443:
.L4039:
	ldr	r2, [sp, #28]
	and	r3, r5, #3
	add	r3, r9, r3, asl #2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	mov	lr, r4, asr #16
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	cmp	lr, #0
	add	r3, r2, r3, asl #2
	movle	r2, #0
	subgt	r2, lr, #1
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	ldr	ip, [sp, #20]
	ldr	r2, [sp, #24]
	ldr	r8, [r3, #-8]
	ldr	r3, [sp, #32]
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r6, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3444:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 300 0
	ldr	r2, [sp, #12]
	.loc 3 297 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r2
.LVL3445:
	.loc 3 297 0
	ldrb	r3, [r8, r3]	@ zero_extendqisi2
	add	r6, r6, r3, asl #8
	ldr	r3, [r6, #252]
	str	r3, [fp, r5, asl #4]
	.loc 3 298 0
	add	r5, r5, #1
.LVL3446:
	.loc 3 296 0
	cmp	r5, r10
	bne	.L4039
.LVL3447:
.L4016:
.LBE780:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3448:
.L4108:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4020
	.loc 3 178 0
	cmp	r5, #0
	beq	.L4021
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4022
.LBB781:
	.loc 3 181 0
	mvn	r10, r9
	uxth	r10, r10
	mov	r0, r10
.LVL3449:
	mov	r1, r2
.L4103:
.LBE781:
.LBB782:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL3450:
	.loc 3 190 0
	ldr	r3, [sp, #44]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r10
.LVL3451:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL3452:
	.loc 3 190 0
	str	r3, [sp, #44]
.LVL3453:
.L4021:
.LBE782:
	.loc 3 194 0
	ldr	r3, .L4114+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L4023
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L4111
	.loc 3 201 0
	tst	r3, #8
	beq	.L4023
.LBB783:
	.loc 3 203 0
	ldr	r1, [sp, #12]
	uxth	r0, r9
.L4104:
	bl	__aeabi_idiv
.LVL3454:
	.loc 3 205 0
	ldr	r3, [sp, #44]
	.loc 3 204 0
	rsb	r8, r0, r8
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r8, [r6, #8]
.LVL3455:
	.loc 3 205 0
	str	r3, [sp, #44]
.LVL3456:
.L4023:
.LBE783:
	.loc 3 208 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bgt	.L4020
	b	.L4016
.L4109:
	.loc 3 216 0
	ldr	r2, .L4114+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L4112
.LVL3457:
.L4026:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3458:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L4027
	ldr	r9, [r6]
.L4028:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L4114+8
	.loc 3 243 0
	ldr	fp, .L4114+28
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	ldr	ip, .L4114+8
	cmp	r1, r0
	.loc 3 243 0
	add	r3, fp, r3, asl #2
	.loc 3 235 0
	mov	r5, r2
	.loc 3 241 0
	strlt	r1, [ip, #8]
	ldr	r2, [r8]
	.loc 3 243 0
	str	r3, [sp, #48]
	b	.L4029
.LVL3459:
.L4037:
.LBB784:
.LBB773:
	.loc 3 303 0
	sub	r2, r6, #1
.LVL3460:
	.loc 3 304 0
	tst	r2, r6
	bne	.L4040
.LBB774:
	.loc 3 305 0
	mov	r2, r2, asl #16
.LVL3461:
	mvn	r2, r2, lsr #16
	.loc 3 306 0
	ldr	r1, [sp, #44]
.LVL3462:
	.loc 3 305 0
	mvn	ip, r2, asl #16
.LVL3463:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L4113
	mov	r3, r3, lsr #2
.LVL3464:
	mov	r0, r3
	mov	r2, r1, lsr #1
	str	r2, [sp, #64]
	mov	r2, r2, asl #1
	str	r3, [sp, #80]
	add	r3, r2, #2
	add	r3, r3, r5
	mov	r10, r5
	str	r5, [sp, #76]
	mov	r8, r4
	mov	r5, ip
.LVL3465:
	ldr	r1, .L4114+32
	str	r2, [sp, #68]
	str	r3, [sp, #56]
	ldr	r2, .L4114+36
	.loc 3 307 0
	add	r3, r1, r0, asl #6
	str	r3, [sp, #40]
	ldr	r3, [sp, #48]
	str	r2, [sp, #32]
	ldr	r2, .L4114+40
	add	fp, r3, #32
	ldr	r3, [sp, #12]
	str	r2, [sp, #28]
	and	r2, r9, #3
	str	r2, [sp, #36]
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	str	r1, [sp, #84]
	str	r2, [sp, #52]
	str	r3, [sp, #60]
	str	r4, [sp, #72]
.LVL3466:
.L4044:
	ldr	r2, [sp, #36]
	and	r3, r10, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	and	r4, r8, r5
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	add	r1, sp, #96
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	add	r3, r1, r3, asl #2
	ldr	r9, [r3, #-8]
	ldr	ip, [sp, #20]
	ldr	r3, [sp, #32]
	subgt	r2, r2, #1
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r6, [r3]
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	add	r3, r8, #65536
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3467:
	.loc 3 311 0
	ldr	r2, [sp, #36]
	add	r3, r10, #1
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	.loc 3 307 0
	mov	r4, r4, asr #8
	.loc 3 311 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	.loc 3 307 0
	uxtb	r4, r4
	.loc 3 311 0
	cmp	r3, r2
	.loc 3 307 0
	ldr	r2, [sp, #40]
	ldr	r1, [sp, #12]
	ldrb	r2, [r2, r4, asr #2]	@ zero_extendqisi2
	.loc 3 311 0
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	add	r4, r1, r8
	.loc 3 311 0
	and	r4, r4, r5
	.loc 3 307 0
	ldrb	r1, [r9, r2]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	add	r0, sp, #96
	add	r3, r0, r3, asl #2
	ldr	r9, [r3, #-8]
	.loc 3 307 0
	add	r6, r6, r1, asl #8
	.loc 3 311 0
	ldr	r3, [sp, #32]
	.loc 3 307 0
	ldr	r1, [r6, #252]
	.loc 3 311 0
	ldr	ip, [sp, #20]
	ldr	r6, [r3]
	ldr	r3, [sp, #60]
	.loc 3 307 0
	str	r1, [fp, #-32]
.LVL3468:
	.loc 3 311 0
	subgt	r2, r2, #1
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r3, r3, r8
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3469:
	mov	r4, r4, asr #8
	ldr	r3, [sp, #40]
	uxtb	r4, r4
	ldrb	r3, [r3, r4, asr #2]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	r2, [sp, #56]
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 312 0
	add	r10, r10, #2
.LVL3470:
	.loc 3 311 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	.loc 3 306 0
	cmp	r10, r2
	.loc 3 311 0
	add	r6, r6, r3, asl #8
	ldr	r2, [sp, #52]
	ldr	r3, [r6, #252]
	add	r8, r2, r8
.LVL3471:
	str	r3, [fp, #-16]
	add	fp, fp, #32
.LVL3472:
	.loc 3 306 0
	bne	.L4044
	.loc 3 316 0
	ldr	r1, [sp, #44]
	mov	ip, r5
	ldr	r5, [sp, #76]
.LVL3473:
	tst	r1, #1
	ldr	r1, [sp, #68]
	ldr	r3, [sp, #12]
	ldr	r4, [sp, #72]
	add	r5, r5, #2
	ldr	r2, [sp, #64]
	add	r5, r5, r1
	ldr	r1, [sp, #52]
	add	r4, r4, r3, asl #1
	mla	r4, r1, r2, r4
	add	r3, r2, #1
	ldr	r2, [sp, #48]
	add	r3, r2, r3, asl #5
	str	r3, [sp, #48]
	bne	.L4016
.LVL3474:
.L4060:
	.loc 3 317 0
	ldr	r3, [sp, #36]
	and	r5, r5, #3
	add	r9, r3, r5, asl #2
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #16]
	ldrb	r3, [r3, r9]	@ zero_extendqisi2
	and	r5, r4, ip
	cmp	r3, r2
	mov	r2, r5, asr #16
	movge	r3, #0
	movlt	r3, #1
	cmp	r2, #0
	movle	r2, #0
	add	r4, r4, #65536
	add	r1, sp, #96
	and	r4, r4, ip
	ldr	ip, [sp, #20]
.LVL3475:
	add	r3, r1, r3, asl #2
	subgt	r2, r2, #1
	ldr	r6, [r3, #-8]
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #24]
	ldrb	ip, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r9, [r3]
	ldrb	r2, [r2, r5, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r7, r5, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL3476:
	ldr	r3, [sp, #84]
	mov	r8, r5, asl #16
	add	r8, r3, r8, lsr #26
	ldr	r3, [sp, #80]
	ldr	r2, [sp, #48]
	ldrb	r3, [r8, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	add	r9, r9, r3, asl #8
	ldr	r3, [r9, #252]
	str	r3, [r2]
	b	.L4016
.LVL3477:
.L4107:
.LBE774:
.LBE773:
.LBE784:
	.loc 3 127 0
	ldr	r2, [r7, #48]
.LVL3478:
	mov	r1, #1
	mov	r0, #0
.LVL3479:
	bl	R_GetDrawColumnFunc
.LVL3480:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3481:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3482:
.L4040:
	.cfi_restore_state
.LBB785:
.LBB777:
.LBB775:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r6, asl #16
.LVL3483:
	.loc 3 325 0
	blt	.L4049
	.loc 3 328 0
	cmp	r4, r6
	blt	.L4048
.L4050:
	rsb	r4, r6, r4
.LVL3484:
	cmp	r6, r4
	ble	.L4050
.L4048:
	.loc 3 332 0
	add	r10, r4, #65536
.LVL3485:
	.loc 3 333 0
	cmp	r10, r6
	blt	.L4051
.L4052:
	rsb	r10, r6, r10
.LVL3486:
	cmp	r10, r6
	bge	.L4052
.L4051:
	ldr	r1, [sp, #44]
.LVL3487:
	.loc 3 345 0
	ldr	r2, .L4114+32
	add	fp, r1, #1
	ldr	r1, [sp, #48]
	mov	r3, r3, lsr #2
.LVL3488:
	sub	r1, r1, r5, asl #4
	str	r1, [sp, #32]
	add	r3, r2, r3, asl #6
	and	r1, r9, #3
	add	fp, fp, r5
	str	r1, [sp, #28]
	str	r3, [sp, #36]
	b	.L4053
.LVL3489:
.L4057:
	ldr	r2, .L4114+40
	ldrb	r0, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, .L4114+36
	ldr	r8, [r2]
	ldr	r2, [sp, #16]
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	cmp	lr, #0
	ldr	r9, [r3, #-8]
	movle	r3, #0
	subgt	r3, lr, #1
	ldrb	r1, [r7, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldrb	r2, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r3, [r7, r10, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3490:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 348 0
	ldr	r2, [sp, #12]
	.loc 3 345 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r2
.LVL3491:
	.loc 3 345 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	.loc 3 350 0
	add	r10, r10, r2
.LVL3492:
	.loc 3 345 0
	add	r8, r8, r3, asl #8
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	ldr	r3, [r8, #252]
	ldr	r2, [sp, #32]
	.loc 3 348 0
	rsbge	r4, r6, r4
	.loc 3 350 0
	cmp	r10, r6
	.loc 3 345 0
	str	r3, [r2, r5, asl #4]
	.loc 3 350 0
	rsbge	r10, r6, r10
	.loc 3 346 0
	add	r5, r5, #1
.LVL3493:
.L4053:
	.loc 3 345 0
	ldr	r2, [sp, #28]
	and	r3, r5, #3
	.loc 3 339 0
	cmp	r5, fp
	.loc 3 345 0
	add	r3, r2, r3, asl #2
	mov	lr, r4, asr #16
	.loc 3 339 0
	bne	.L4057
.LBE775:
.LBE777:
.LBE785:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3494:
.L4049:
	.cfi_restore_state
.LBB786:
.LBB778:
.LBB776:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL3495:
	bpl	.L4048
.LVL3496:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL3497:
	bmi	.L4049
	b	.L4048
.LVL3498:
.L4112:
.LBE776:
.LBE778:
.LBE786:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r9, [r6]
.LVL3499:
	add	r2, r3, r2
	cmp	r2, r9
	bne	.L4026
	b	.L4028
.LVL3500:
.L4110:
	ldr	r1, [sp, #44]
.LVL3501:
	ldr	r2, .L4114+32
.LVL3502:
	add	r10, r1, #1
	ldr	r1, .L4114+36
	mov	r3, r3, lsr #2
.LVL3503:
	str	r1, [sp, #32]
	ldr	r1, .L4114+40
.LBB787:
	.loc 3 289 0
	add	r3, r2, r3, asl #6
	str	r1, [sp, #28]
	and	r1, r9, #3
	str	r1, [sp, #36]
	ldr	r1, [sp, #48]
	add	r10, r10, r5
	sub	fp, r1, r5, asl #4
	str	r3, [sp, #40]
.LVL3504:
.L4035:
	ldr	r2, [sp, #36]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	bic	r6, r4, #-16777216
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	bic	r6, r6, #8388608
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	ldr	r9, [r3, #-8]
	ldr	r3, [sp, #32]
	movs	r2, r6, asr #16
	ldr	ip, [sp, #20]
	ldr	r8, [r3]
	subne	r2, r2, #1
	add	r3, r4, #65536
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	bic	r3, r3, #-16777216
	bic	r3, r3, #8388608
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r7, r6, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r7, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3505:
	mov	r6, r6, asr #8
	ldr	r3, [sp, #40]
	uxtb	r6, r6
	ldrb	r3, [r3, r6, asr #2]	@ zero_extendqisi2
	.loc 3 292 0
	ldr	r2, [sp, #12]
	.loc 3 289 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r2
.LVL3506:
	.loc 3 289 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	add	r8, r8, r3, asl #8
	ldr	r3, [r8, #252]
	str	r3, [fp, r5, asl #4]
	.loc 3 290 0
	add	r5, r5, #1
.LVL3507:
	.loc 3 288 0
	cmp	r5, r10
	bne	.L4035
.LBE787:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3508:
.L4111:
	.cfi_restore_state
.LBB788:
	.loc 3 197 0
	mvn	r0, r9
	ldr	r1, [sp, #12]
	uxth	r0, r0
	b	.L4104
.LVL3509:
.L4022:
.LBE788:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4021
.LBB789:
	.loc 3 188 0
	uxth	r10, r9
	mov	r0, r10
.LVL3510:
	ldr	r1, [sp, #12]
	b	.L4103
.LVL3511:
.L4113:
	mov	r3, r3, lsr #2
.LVL3512:
	str	r3, [sp, #80]
	ldr	r3, .L4114+36
	and	r2, r9, #3
	str	r3, [sp, #32]
	ldr	r3, .L4114+40
	str	r2, [sp, #36]
	str	r3, [sp, #28]
	ldr	r3, .L4114+32
	str	r3, [sp, #84]
	b	.L4060
.L4115:
	.align	2
.L4114:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushWhole32
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	filter_roundedUVMap
	.word	V_Palette32
	.word	filter_ditherMatrix
	.word	viewheight
.LBE789:
	.cfi_endproc
.LFE81:
	.size	R_DrawColumn32_RoundedUV_LinearZ, .-R_DrawColumn32_RoundedUV_LinearZ
	.align	2
	.type	R_DrawFuzzColumn32_LinearUV_LinearZ, %function
R_DrawFuzzColumn32_LinearUV_LinearZ:
.LFB186:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3513:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 119 0
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #32]
	.loc 3 126 0
	ldr	r7, .L4156
	.loc 3 119 0
	cmp	r2, r3
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL3514:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 119 0
	ldrneh	r10, [r0, #28]
	moveq	r10, #0
.LVL3515:
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 113 0
	mov	r4, r0
	.loc 3 126 0
	bgt	.L4153
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L4156+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL3516:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL3517:
	bmi	.L4116
.LVL3518:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L4123
.LVL3519:
.L4126:
	.loc 3 215 0
	ldr	r5, .L4156+8
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L4124
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4154
.L4132:
	.loc 3 228 0 is_stmt 1
	ldr	r3, .L4156+12
	.loc 3 224 0
	mov	r8, #4
.LVL3520:
	.loc 3 221 0
	ldr	lr, [r4]
	.loc 3 228 0
	ldr	r9, [r3]
	.loc 3 223 0
	ldmib	r4, {r2, r3}
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	mov	r3, #0
	.loc 3 231 0
	ldr	r0, .L4156+16
	.loc 3 232 0
	ldr	r1, .L4156+20
	.loc 3 224 0
	ldr	r6, .L4156+24
	.loc 3 230 0
	ldr	ip, .L4156+28
	.loc 3 232 0
	stmib	r7, {r0, r1}
.LVL3521:
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r6, #-1204]
	.loc 3 221 0
	str	lr, [r5, #12]
	.loc 3 222 0
	str	r2, [r5, #4]
	str	r2, [r5, #16]
.LVL3522:
	.loc 3 230 0
	str	ip, [r7]
.L4134:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
.L4116:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3523:
.L4123:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4126
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4127
.LBB790:
	.loc 3 181 0
	mvn	r0, r10
.LVL3524:
	mov	r1, r8
	str	r3, [sp, #4]
	uxth	r0, r0
.LVL3525:
.L4152:
.LBE790:
.LBB791:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL3526:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	fp, r0, fp
.LVL3527:
.L4128:
.LBE791:
	.loc 3 194 0
	cmp	r9, r5
	beq	.L4129
	.loc 3 195 0
	tst	r3, #4
	beq	.L4130
.LBB792:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3528:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	fp, r0, fp
.LVL3529:
.L4129:
.LBE792:
	.loc 3 208 0
	cmp	fp, #0
	bgt	.L4126
	b	.L4116
.L4154:
	.loc 3 216 0
	ldr	r2, .L4156+24
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L4155
.L4124:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3530:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L4132
.L4133:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L4156+8
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L4156+8
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L4134
.LVL3531:
.L4153:
	.loc 3 127 0
	ldr	r2, [r7, #48]
	mov	r1, #1
	mov	r0, #3
.LVL3532:
	bl	R_GetDrawColumnFunc
.LVL3533:
	mov	r3, r0
	mov	r0, r4
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3534:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3535:
.L4155:
	.cfi_restore_state
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L4124
	b	.L4133
.L4130:
	.loc 3 201 0
	tst	r3, #8
	beq	.L4129
.LBB793:
	.loc 3 203 0
	mov	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv
.LVL3536:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	fp, r0, fp
.LVL3537:
	b	.L4129
.LVL3538:
.L4127:
.LBE793:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4128
	str	r3, [sp, #4]
.LBB794:
	.loc 3 188 0
	mov	r0, r10
.LVL3539:
	mov	r1, r8
	b	.L4152
.L4157:
	.align	2
.L4156:
	.word	.LANCHOR1
	.word	viewheight
	.word	.LANCHOR0
	.word	fullcolormap
	.word	R_FlushHTFuzz32
	.word	R_FlushQuadFuzz32
	.word	.LANCHOR2
	.word	R_FlushWholeFuzz32
.LBE794:
	.cfi_endproc
.LFE186:
	.size	R_DrawFuzzColumn32_LinearUV_LinearZ, .-R_DrawFuzzColumn32_LinearUV_LinearZ
	.align	2
	.type	R_DrawTranslatedColumn32_LinearUV_LinearZ, %function
R_DrawTranslatedColumn32_LinearUV_LinearZ:
.LFB150:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3540:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 126 0
	ldr	r9, .L4246
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #16]
.LVL3541:
	.loc 3 126 0
	ldr	r2, [sp, #16]
	ldr	r3, [r9, #64]
.LVL3542:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL3543:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	.loc 3 126 0
	bgt	.L4239
	.loc 3 149 0
	ldmib	r0, {r8, r10}
.LVL3544:
	.loc 3 157 0
	subs	r3, r10, r8
.LVL3545:
	str	r3, [sp, #44]
	bmi	.L4158
	.loc 3 169 0
	ldr	r2, .L4246+4
.LVL3546:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL3547:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #16]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL3548:
	.loc 3 174 0
	bne	.L4240
.LVL3549:
.L4163:
	.loc 3 215 0
	ldr	r8, .L4246+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L4169
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4241
.L4170:
	.loc 3 222 0 is_stmt 1
	ldmia	r5, {r2, ip}
	.loc 3 224 0
	mov	r0, #1
	.loc 3 223 0
	ldr	r3, [r5, #8]
	.loc 3 224 0
	ldr	r1, .L4246+12
	.loc 3 223 0
	str	r3, [r8, #8]
	.loc 3 224 0
	str	r0, [r1, #-1204]
	.loc 3 223 0
	str	r3, [r8, #32]
	.loc 3 231 0
	ldr	r1, .L4246+16
	.loc 3 230 0
	ldr	r0, .L4246+20
	.loc 3 232 0
	ldr	r3, .L4246+24
	mov	fp, ip
.LVL3550:
	stmia	r9, {r0, r1, r3}
	mov	r1, #0
	.loc 3 233 0
	ldr	lr, .L4246+28
	.loc 3 221 0
	str	r2, [r8, #12]
	.loc 3 233 0
	add	lr, lr, ip, asl #4
	.loc 3 222 0
	str	ip, [r8, #4]
	str	ip, [r8, #16]
	.loc 3 233 0
	str	lr, [sp, #48]
.LVL3551:
.L4172:
.LBB795:
	.loc 3 259 0
	ldr	ip, [r5, #12]
	.loc 3 269 0
	ldr	lr, [sp, #12]
	ldr	r6, [sp, #4]
	.loc 3 260 0
	ldr	r3, [r5, #48]
.LBE795:
	.loc 3 245 0
	add	r1, r1, #1
.LBB802:
	.loc 3 260 0
	ldr	r0, [r5, #44]
	.loc 3 259 0
	mov	ip, ip, asr #6
.LBE802:
	.loc 3 245 0
	str	r1, [r8]
.LVL3552:
.LBB803:
	.loc 3 269 0
	cmp	lr, r6
	.loc 3 259 0
	uxtb	r1, ip
	.loc 3 260 0
	str	r3, [sp, #92]
	.loc 3 259 0
	str	r1, [sp, #24]
	.loc 3 260 0
	str	r0, [sp, #88]
	.loc 3 253 0
	ldr	r3, [r5, #52]
.LVL3553:
	.loc 3 269 0
	beq	.L4199
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r1, [r5, #28]
.LVL3554:
	str	r1, [sp, #8]
.L4175:
.LVL3555:
	.loc 3 286 0 is_stmt 1
	ldr	r1, [r5, #24]
	cmp	r1, #128
	beq	.L4242
	.loc 3 294 0
	cmp	r1, #0
	bne	.L4179
.LVL3556:
	mvn	r9, r4
	ldr	r0, .L4246+32
.LVL3557:
	str	r9, [sp, #20]
	ldr	r7, [r0]
	ldr	r0, [sp, #8]
	.loc 3 297 0
	mov	r8, #64
	rsb	r10, r0, #65280
	add	r10, r10, #255
	mov	r9, r10
	and	r2, r2, #3
.LVL3558:
	ldr	r1, [sp, #44]
	str	r2, [sp, #40]
	ldr	r2, [sp, #48]
	add	r1, r1, #1
	ldr	r0, .L4246+36
	add	r1, r1, fp
	sub	r2, r2, fp, asl #4
	str	r0, [sp, #28]
	str	r1, [sp, #32]
	str	r2, [sp, #36]
.LVL3559:
.L4180:
	ldr	r1, [sp, #40]
	and	r2, fp, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #28]
	ldr	r10, [sp, #12]
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	ldrh	r1, [sp, #20]
	cmp	ip, r2
	movge	ip, #0
	movlt	ip, #1
	ldr	r2, [sp, #4]
	ldrb	lr, [r10, r4, asr #16]	@ zero_extendqisi2
	add	r0, sp, #96
	ldr	r5, [sp, #8]
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	add	ip, r0, ip, asl #2
	mul	r0, r9, r1
	ldr	ip, [ip, #-8]
	mul	r1, r5, r1
	ldrb	r5, [r3, lr]	@ zero_extendqisi2
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	add	r6, r4, #65536
	ldrb	r5, [ip, r5]	@ zero_extendqisi2
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	smlabb	r5, r8, r5, r0
	ldr	r0, [sp, #8]
	ldrb	r10, [r10, r6, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r3, r2]	@ zero_extendqisi2
	uxth	r2, r4
	mul	r0, r0, r2
	mul	r2, r9, r2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	ldrb	r6, [ip, r6]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldrb	ip, [ip, r10]	@ zero_extendqisi2
	smlabb	r1, r8, lr, r1
	mov	r0, r0, lsr #26
	smlabb	r0, r8, r6, r0
	mov	r2, r2, lsr #26
	smlabb	r2, r8, ip, r2
	ldr	r1, [r7, r1, asl #2]
	ldr	ip, [r7, r5, asl #2]
	ldr	r0, [r7, r0, asl #2]
	ldr	r2, [r7, r2, asl #2]
	add	ip, r1, ip
	add	ip, ip, r0
	add	ip, ip, r2
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #20]
	str	ip, [r2, fp, asl #4]
	.loc 3 296 0
	ldr	r2, [sp, #32]
	.loc 3 298 0
	add	fp, fp, #1
.LVL3560:
	.loc 3 296 0
	cmp	fp, r2
	ldr	r2, [sp, #16]
	rsb	r1, r2, r1
	str	r1, [sp, #20]
	.loc 3 300 0
	add	r4, r4, r2
.LVL3561:
	.loc 3 296 0
	bne	.L4180
.LVL3562:
.L4158:
.LBE803:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3563:
.L4240:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4163
	.loc 3 178 0
	cmp	r8, #0
	beq	.L4164
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4165
.LBB804:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL3564:
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL3565:
	.loc 3 184 0
	ldr	r3, [sp, #8]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL3566:
	.loc 3 183 0
	ldr	r3, [sp, #44]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL3567:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL3568:
	str	r3, [sp, #44]
.LVL3569:
.L4164:
.LBE804:
	.loc 3 194 0
	ldr	r3, .L4246+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L4166
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L4243
	.loc 3 201 0
	tst	r3, #8
	beq	.L4166
.LBB805:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #16]
.L4236:
	bl	__aeabi_idiv
.LVL3570:
	.loc 3 205 0
	ldr	r3, [sp, #44]
	.loc 3 204 0
	rsb	r10, r0, r10
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r10, [r5, #8]
.LVL3571:
	.loc 3 205 0
	str	r3, [sp, #44]
.LVL3572:
.L4166:
.LBE805:
	.loc 3 208 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bgt	.L4163
	b	.L4158
.L4241:
	.loc 3 216 0
	ldr	r2, .L4246+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L4244
.L4169:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3573:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L4230
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
	ldr	r2, [r5]
.L4171:
	.loc 3 235 0
	ldr	r1, [r5, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r0, [r5, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, r8, r3, asl #2
	str	r1, [ip, #16]
	.loc 3 236 0
	str	r0, [ip, #32]
	.loc 3 235 0
	ldr	ip, .L4246+8
	.loc 3 240 0
	ldr	lr, .L4246+8
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 240 0
	ldr	ip, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	cmp	r0, ip
	.loc 3 241 0
	strlt	r0, [lr, #8]
	.loc 3 243 0
	ldr	r0, .L4246+28
	.loc 3 235 0
	mov	fp, r1
.LVL3574:
	.loc 3 243 0
	add	r3, r0, r3, asl #2
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	ldr	r1, [r8]
	str	r3, [sp, #48]
	b	.L4172
.LVL3575:
.L4179:
.LBB806:
.LBB796:
	.loc 3 303 0
	sub	r0, r1, #1
.LVL3576:
	.loc 3 304 0
	tst	r0, r1
	bne	.L4181
.LBB797:
	.loc 3 305 0
	mov	r0, r0, asl #16
.LVL3577:
	mvn	r0, r0, lsr #16
	mvn	r0, r0, asl #16
	.loc 3 306 0
	ldr	r1, [sp, #44]
.LVL3578:
	.loc 3 305 0
	str	r0, [sp, #20]
.LVL3579:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L4245
	ldr	r0, .L4246+32
.LVL3580:
	mov	r7, fp
	mov	ip, r0
	mov	lr, r4
.LVL3581:
	mov	r1, r1, lsr #1
	str	r1, [sp, #68]
	mov	r1, r1, asl #1
	str	r0, [sp, #84]
	str	r1, [sp, #72]
	add	r0, r1, #2
	ldr	r1, [sp, #8]
	and	r2, r2, #3
.LVL3582:
	rsb	r1, r1, #65280
	str	r2, [sp, #56]
	add	r2, r0, fp
	str	r2, [sp, #60]
	add	r2, r1, #255
	str	r2, [sp, #32]
	ldr	r2, [sp, #48]
	ldr	r5, [ip]
.LVL3583:
	add	r2, r2, #32
	str	r2, [sp, #36]
	ldr	r2, [sp, #16]
	ldr	ip, .L4246+36
	mov	r1, r2, asl #1
	add	r2, r2, #65536
	str	ip, [sp, #28]
	str	r1, [sp, #52]
	str	r2, [sp, #64]
	str	r4, [sp, #76]
	str	fp, [sp, #80]
.LVL3584:
.L4183:
	.loc 3 307 0
	ldr	r4, [sp, #56]
	ldr	r6, [sp, #28]
	and	r2, r7, #3
	add	r2, r4, r2, asl #2
	ldrb	r8, [r6, r2]	@ zero_extendqisi2
	ldr	r9, [sp, #24]
	ldr	fp, [sp, #20]
	cmp	r8, r9
	and	r1, lr, fp
	movge	r8, #0
	movlt	r8, #1
	mvn	r0, r1
	add	ip, r7, #1
	.loc 3 311 0
	and	ip, ip, #3
	add	ip, r4, ip, asl #2
	ldrb	r4, [r6, ip]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	.loc 3 307 0
	add	r6, sp, #96
	.loc 3 311 0
	cmp	r4, r9
	add	r2, r2, lr
	.loc 3 307 0
	ldr	r9, [sp, #8]
	add	r8, r6, r8, asl #2
	ldr	r6, [sp, #32]
	.loc 3 311 0
	and	r2, r2, fp
	.loc 3 307 0
	uxth	r0, r0
	.loc 3 311 0
	mvn	ip, r2
	.loc 3 307 0
	mul	r6, r6, r0
	mul	r0, r9, r0
	mov	r0, r0, lsr #26
	str	r0, [sp]
	mov	r0, #64
	.loc 3 311 0
	str	ip, [sp, #40]
	.loc 3 307 0
	ldr	ip, [sp, #12]
	ldr	r8, [r8, #-8]
	ldrb	r10, [ip, r1, asr #16]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	ldrh	r0, [sp, #12]
	ldrb	r10, [r8, r10]	@ zero_extendqisi2
	mov	r6, r6, lsr #26
	smlabb	r6, r0, r10, r6
	add	r9, lr, #65536
	ldr	r10, [sp, #4]
	and	r9, r9, fp
	ldrb	r10, [r10, r9, asr #16]	@ zero_extendqisi2
	str	ip, [sp, #12]
	ldrb	r9, [ip, r9, asr #16]	@ zero_extendqisi2
	mov	ip, #64
	ldr	fp, [sp, #4]
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	ldrb	fp, [fp, r1, asr #16]	@ zero_extendqisi2
	ldrb	r9, [r3, r9]	@ zero_extendqisi2
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	ldr	r0, [sp]
	ldrb	fp, [r8, fp]	@ zero_extendqisi2
	ldrb	r10, [r8, r10]	@ zero_extendqisi2
	ldrb	r9, [r8, r9]	@ zero_extendqisi2
	smlabb	r0, ip, fp, r0
	ldr	r8, [sp, #8]
	ldr	ip, [sp, #32]
	uxth	r1, r1
	mul	r8, r8, r1
	mul	r1, ip, r1
	mov	ip, #64
	.loc 3 311 0
	movge	r4, #0
	movlt	r4, #1
	.loc 3 307 0
	mov	r8, r8, lsr #26
	smlabb	r8, ip, r10, r8
	mov	r1, r1, lsr #26
	smlabb	r1, ip, r9, r1
	ldr	r6, [r5, r6, asl #2]
	ldr	r0, [r5, r0, asl #2]
	ldr	r8, [r5, r8, asl #2]
	ldr	r1, [r5, r1, asl #2]
	add	r6, r0, r6
	add	r6, r6, r8
	add	r6, r6, r1
	ldr	r0, [sp, #64]
	ldr	r1, [sp, #36]
	.loc 3 311 0
	ldr	r10, [sp, #12]
	.loc 3 307 0
	str	r6, [r1, #-32]
.LVL3585:
	add	r1, r0, lr
	.loc 3 311 0
	ldr	r0, [sp, #4]
	ldrb	r9, [r10, r2, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r0, r2, asr #16]	@ zero_extendqisi2
	add	r6, sp, #96
	ldr	fp, [sp, #20]
	add	r4, r6, r4, asl #2
	ldrb	r6, [r3, r0]	@ zero_extendqisi2
	ldr	r0, [r4, #-8]
	ldrb	r4, [r3, r9]	@ zero_extendqisi2
	ldr	r9, [sp, #4]
	and	r1, r1, fp
	ldrb	r9, [r9, r1, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r10, r1, asr #16]	@ zero_extendqisi2
	ldr	fp, [sp, #32]
	ldrh	ip, [sp, #40]
	ldrb	r10, [r3, r9]	@ zero_extendqisi2
	ldr	r8, [sp, #8]
	ldrb	r9, [r3, r1]	@ zero_extendqisi2
	ldr	r1, [sp, #8]
	uxth	r2, r2
	mul	r8, r8, ip
	mul	r1, r1, r2
	mul	ip, fp, ip
	mul	r2, fp, r2
	mov	fp, #64
	ldrb	r6, [r0, r6]	@ zero_extendqisi2
	ldrb	r4, [r0, r4]	@ zero_extendqisi2
	ldrb	r10, [r0, r10]	@ zero_extendqisi2
	mov	r8, r8, lsr #26
	mov	ip, ip, lsr #26
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	smlabb	r8, fp, r6, r8
	smlabb	ip, fp, r4, ip
	mov	r1, r1, lsr #26
	smlabb	r1, fp, r10, r1
	mov	r2, r2, lsr #26
	smlabb	r2, fp, r0, r2
	ldr	ip, [r5, ip, asl #2]
	ldr	r0, [r5, r8, asl #2]
	ldr	r1, [r5, r1, asl #2]
	add	r0, r0, ip
	ldr	r2, [r5, r2, asl #2]
	add	r0, r0, r1
	.loc 3 306 0
	ldr	ip, [sp, #60]
	.loc 3 311 0
	add	r0, r0, r2
	ldr	r2, [sp, #52]
	ldr	r1, [sp, #36]
	.loc 3 312 0
	add	r7, r7, #2
.LVL3586:
	add	lr, r2, lr
.LVL3587:
	.loc 3 306 0
	cmp	r7, ip
	add	r2, r1, #32
	.loc 3 311 0
	str	r0, [r1, #-16]
	str	r2, [sp, #36]
	.loc 3 306 0
	bne	.L4183
	.loc 3 316 0
	ldr	ip, [sp, #44]
	ldr	fp, [sp, #80]
	ldr	r0, [sp, #68]
	tst	ip, #1
	ldr	ip, [sp, #72]
	add	r1, fp, #2
	add	fp, r1, ip
	mov	r1, r0
	ldr	r2, [sp, #16]
	ldr	r4, [sp, #76]
	add	r4, r4, r2, asl #1
	add	r2, r0, #1
	ldr	r0, [sp, #52]
	mla	r4, r0, r1, r4
	ldr	r1, [sp, #48]
	add	r2, r1, r2, asl #5
	str	r2, [sp, #48]
	bne	.L4158
.LVL3588:
.L4197:
	.loc 3 317 0
	ldr	r1, [sp, #56]
	and	r2, fp, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #28]
	ldr	lr, [sp, #20]
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldr	r1, [sp, #24]
	and	r2, r4, lr
	cmp	ip, r1
	movge	ip, #0
	movlt	ip, #1
	mvn	r0, r2
	mov	r1, #64
	ldr	r7, [sp, #12]
	ldr	r6, [sp, #4]
	add	r8, sp, #96
	add	r4, r4, #65536
	and	r4, r4, lr
	add	ip, r8, ip, asl #2
	ldr	r9, [sp, #32]
	ldr	r8, [sp, #8]
	ldrb	lr, [r7, r2, asr #16]	@ zero_extendqisi2
	ldrb	r5, [r6, r2, asr #16]	@ zero_extendqisi2
	uxth	r0, r0
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	uxth	r2, r2
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	mul	r4, r8, r0
	mul	r8, r8, r2
	mul	r0, r9, r0
	ldr	ip, [ip, #-8]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	mul	r2, r9, r2
	ldrb	r3, [ip, r6]	@ zero_extendqisi2
.LVL3589:
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldrb	r5, [ip, r5]	@ zero_extendqisi2
	ldrb	r6, [ip, r7]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	mov	r4, r4, lsr #26
	mov	ip, r8, lsr #26
	smlabb	lr, r1, lr, r0
	smlabb	ip, r1, r3, ip
	smlabb	r4, r1, r5, r4
	ldr	r3, [sp, #84]
	mov	r2, r2, lsr #26
	ldr	r0, [r3]
	smlabb	r1, r1, r6, r2
	ldr	lr, [r0, lr, asl #2]
	ldr	r2, [r0, r4, asl #2]
	ldr	r3, [r0, ip, asl #2]
	add	r2, r2, lr
	ldr	r1, [r0, r1, asl #2]
	add	r3, r2, r3
	ldr	r2, [sp, #48]
	add	r3, r3, r1
	str	r3, [r2]
	b	.L4158
.LVL3590:
.L4239:
.LBE797:
.LBE796:
.LBE806:
	.loc 3 127 0
	ldr	r2, [r9, #48]
.LVL3591:
	mov	r1, #1
	mov	r0, #2
.LVL3592:
	bl	R_GetDrawColumnFunc
.LVL3593:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3594:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3595:
.L4181:
	.cfi_restore_state
.LBB807:
.LBB800:
.LBB798:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r1, r1, asl #16
.LVL3596:
	.loc 3 325 0
	blt	.L4187
	.loc 3 328 0
	cmp	r4, r1
	blt	.L4186
.L4188:
	rsb	r4, r1, r4
.LVL3597:
	cmp	r1, r4
	ble	.L4188
.L4186:
	.loc 3 332 0
	add	r0, r4, #65536
.LVL3598:
	.loc 3 333 0
	cmp	r0, r1
	blt	.L4189
.L4190:
	rsb	r0, r1, r0
.LVL3599:
	cmp	r0, r1
	bge	.L4190
.L4189:
	ldr	ip, [sp, #44]
	.loc 3 345 0
	and	r2, r2, #3
.LVL3600:
	add	r5, ip, #1
.LVL3601:
	add	r5, r5, fp
	ldr	ip, [sp, #8]
	str	r5, [sp, #36]
	ldr	r5, [sp, #48]
	ldr	lr, .L4246+32
.LVL3602:
	rsb	ip, ip, #65280
	sub	r5, r5, fp, asl #4
	str	r2, [sp, #40]
	add	r2, ip, #255
	str	r5, [sp, #44]
	ldr	r10, [lr]
	str	r2, [sp, #48]
	mov	r9, #64
	str	r1, [sp, #20]
	b	.L4191
.LVL3603:
.L4194:
	ldr	ip, .L4246+36
	add	r6, sp, #96
	ldrb	lr, [ip, r2]	@ zero_extendqisi2
	ldr	ip, [sp, #24]
	mvn	r2, r4
	cmp	lr, ip
	movge	lr, #0
	movlt	lr, #1
	ldr	ip, [sp, #4]
	ldr	r8, [sp, #12]
	add	lr, r6, lr, asl #2
	ldr	r6, [sp, #8]
	ldrb	r5, [ip, r0, asr #16]	@ zero_extendqisi2
	mul	r7, r6, r1
	ldrb	ip, [r8, r0, asr #16]	@ zero_extendqisi2
	ldr	lr, [lr, #-8]
	ldrb	ip, [r3, ip]	@ zero_extendqisi2
	str	r7, [sp, #32]
	ldrb	ip, [lr, ip]	@ zero_extendqisi2
	ldr	r7, [sp, #48]
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	uxth	r2, r2
	str	ip, [sp, #28]
	mul	ip, r7, r2
	mul	r2, r6, r2
	ldr	r6, [sp, #32]
	ldrb	r5, [lr, r5]	@ zero_extendqisi2
	mul	r1, r7, r1
	mov	r6, r6, lsr #26
	smlabb	r6, r9, r5, r6
	ldr	r5, [sp, #4]
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	ldrb	r5, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrh	r7, [sp, #28]
	mov	r1, r1, lsr #26
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	smlabb	r1, r9, r7, r1
	ldrb	r8, [lr, r8]	@ zero_extendqisi2
	ldrb	lr, [lr, r5]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	mov	r2, r2, lsr #26
	ldr	r1, [r10, r1, asl #2]
	smlabb	r2, r9, lr, r2
	smlabb	ip, r9, r8, ip
	ldr	lr, [r10, r6, asl #2]
	ldr	ip, [r10, ip, asl #2]
	add	lr, r1, lr
	.loc 3 348 0
	ldr	r1, [sp, #16]
	.loc 3 345 0
	ldr	r2, [r10, r2, asl #2]
	.loc 3 348 0
	add	r4, r4, r1
.LVL3604:
	.loc 3 350 0
	add	r0, r0, r1
.LVL3605:
	.loc 3 348 0
	ldr	r1, [sp, #20]
	.loc 3 345 0
	add	lr, lr, ip
	.loc 3 348 0
	cmp	r4, r1
	.loc 3 345 0
	ldr	r1, [sp, #44]
	add	r2, lr, r2
	str	r2, [r1, fp, asl #4]
	.loc 3 348 0
	ldrge	r2, [sp, #20]
	.loc 3 346 0
	add	fp, fp, #1
.LVL3606:
	.loc 3 348 0
	rsbge	r4, r2, r4
.LVL3607:
	.loc 3 350 0
	ldr	r2, [sp, #20]
	cmp	r0, r2
	rsbge	r0, r2, r0
.LVL3608:
.L4191:
	.loc 3 339 0
	ldr	ip, [sp, #36]
	.loc 3 345 0
	ldr	r1, [sp, #40]
	and	r2, fp, #3
	.loc 3 339 0
	cmp	fp, ip
	.loc 3 345 0
	add	r2, r1, r2, asl #2
	uxth	r1, r4
	.loc 3 339 0
	bne	.L4194
.LBE798:
.LBE800:
.LBE807:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3609:
.L4187:
	.cfi_restore_state
.LBB808:
.LBB801:
.LBB799:
	.loc 3 326 0 discriminator 1
	adds	r4, r1, r4
.LVL3610:
	bpl	.L4186
.LVL3611:
	.loc 3 326 0 is_stmt 0
	adds	r4, r1, r4
.LVL3612:
	bmi	.L4187
	b	.L4186
.LVL3613:
.L4244:
.LBE799:
.LBE801:
.LBE808:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r1, [r8, #12]
	ldr	r2, [r5]
	add	r1, r3, r1
	cmp	r1, r2
	bne	.L4169
	b	.L4171
.LVL3614:
.L4242:
	mvn	r9, r4
.LBB809:
	.loc 3 289 0
	mov	r8, #64
	ldr	r1, .L4246+32
	and	r2, r2, #3
.LVL3615:
	ldr	r0, [sp, #44]
.LVL3616:
	ldr	r7, [r1]
	str	r2, [sp, #40]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #48]
	add	r0, r0, #1
	sub	r2, r2, fp, asl #4
	rsb	r1, r1, #65280
	ldr	ip, .L4246+36
	add	r0, r0, fp
	str	r2, [sp, #36]
	add	r2, r1, #255
	str	ip, [sp, #28]
	str	r0, [sp, #32]
	str	r2, [sp, #44]
	str	r9, [sp, #20]
.LVL3617:
.L4177:
	ldr	r1, [sp, #40]
	and	r2, fp, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #28]
	ldr	r10, [sp, #12]
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldr	r1, [sp, #24]
	bic	r2, r4, #-16777216
	cmp	ip, r1
	movge	ip, #0
	movlt	ip, #1
	ldr	r1, [sp, #4]
	bic	r2, r2, #8388608
	add	r0, sp, #96
	ldrb	lr, [r10, r2, asr #16]	@ zero_extendqisi2
	add	ip, r0, ip, asl #2
	ldrb	r2, [r1, r2, asr #16]	@ zero_extendqisi2
	ldr	r0, [sp, #8]
	ldrh	r1, [sp, #20]
	ldr	ip, [ip, #-8]
	mul	r0, r0, r1
	ldrb	r5, [r3, r2]	@ zero_extendqisi2
	add	r6, r4, #65536
	ldr	r2, [sp, #4]
	bic	r6, r6, #-16777216
	ldrb	r5, [ip, r5]	@ zero_extendqisi2
	bic	r6, r6, #8388608
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #44]
	mov	r0, r0, lsr #26
	smlabb	r5, r8, r5, r0
	ldr	r0, [sp, #8]
	ldrb	r10, [r10, r6, asr #16]	@ zero_extendqisi2
	mul	r1, r9, r1
	ldrb	r6, [r3, r2]	@ zero_extendqisi2
	uxth	r2, r4
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	mul	r0, r0, r2
	mul	r2, r9, r2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	ldrb	r6, [ip, r6]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldrb	ip, [ip, r10]	@ zero_extendqisi2
	smlabb	r1, r8, lr, r1
	mov	r0, r0, lsr #26
	smlabb	r0, r8, r6, r0
	mov	r2, r2, lsr #26
	smlabb	r2, r8, ip, r2
	ldr	r1, [r7, r1, asl #2]
	ldr	ip, [r7, r5, asl #2]
	ldr	r0, [r7, r0, asl #2]
	ldr	r2, [r7, r2, asl #2]
	add	ip, ip, r1
	add	ip, ip, r0
	add	ip, ip, r2
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #20]
	str	ip, [r2, fp, asl #4]
	.loc 3 288 0
	ldr	r2, [sp, #32]
	.loc 3 290 0
	add	fp, fp, #1
.LVL3618:
	.loc 3 288 0
	cmp	fp, r2
	ldr	r2, [sp, #16]
	rsb	r1, r2, r1
	str	r1, [sp, #20]
	.loc 3 292 0
	add	r4, r4, r2
.LVL3619:
	.loc 3 288 0
	bne	.L4177
.LBE809:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3620:
.L4199:
	.cfi_restore_state
.LBB810:
	.loc 3 269 0
	mov	r1, #0
.LVL3621:
	str	r1, [sp, #8]
	b	.L4175
.LVL3622:
.L4243:
.LBE810:
.LBB811:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #16]
	uxth	r0, r0
	b	.L4236
.L4230:
	ldr	r3, [r5, #32]
	str	r3, [sp, #12]
	ldr	r3, [r5, #40]
	str	r3, [sp, #4]
	b	.L4170
.LVL3623:
.L4165:
.LBE811:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4164
.LBB812:
	.loc 3 188 0
	mov	r0, fp
.LVL3624:
	ldr	r1, [sp, #16]
.LVL3625:
	bl	__aeabi_idiv
.LVL3626:
	.loc 3 190 0
	ldr	r3, [sp, #44]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL3627:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL3628:
	.loc 3 190 0
	str	r3, [sp, #44]
.LVL3629:
	b	.L4164
.LVL3630:
.L4245:
	ldr	r1, [sp, #8]
	and	r2, r2, #3
.LVL3631:
	rsb	r1, r1, #65280
	str	r2, [sp, #56]
	add	r2, r1, #255
	str	r2, [sp, #32]
	ldr	r2, .L4246+32
	str	r2, [sp, #84]
	ldr	r2, .L4246+36
	str	r2, [sp, #28]
	b	.L4197
.L4247:
	.align	2
.L4246:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushWhole32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	V_Palette32
	.word	filter_ditherMatrix
	.word	viewheight
.LBE812:
	.cfi_endproc
.LFE150:
	.size	R_DrawTranslatedColumn32_LinearUV_LinearZ, .-R_DrawTranslatedColumn32_LinearUV_LinearZ
	.align	2
	.type	R_DrawTLColumn32_LinearUV_LinearZ, %function
R_DrawTLColumn32_LinearUV_LinearZ:
.LFB114:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3632:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 126 0
	ldr	r9, .L4336
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #16]
.LVL3633:
	.loc 3 126 0
	ldr	r2, [sp, #16]
	ldr	r3, [r9, #64]
.LVL3634:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL3635:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	.loc 3 126 0
	bgt	.L4329
	.loc 3 149 0
	ldmib	r0, {r8, r10}
.LVL3636:
	.loc 3 157 0
	subs	r3, r10, r8
.LVL3637:
	str	r3, [sp, #44]
	bmi	.L4248
	.loc 3 169 0
	ldr	r2, .L4336+4
.LVL3638:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL3639:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #16]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL3640:
	.loc 3 174 0
	bne	.L4330
.LVL3641:
.L4253:
	.loc 3 215 0
	ldr	r8, .L4336+8
	ldr	r1, [r8]
	cmp	r1, #4
	beq	.L4259
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r1, #0
	bne	.L4331
.L4260:
	.loc 3 224 0 is_stmt 1
	mov	ip, #2
	.loc 3 226 0
	ldr	r3, .L4336+12
	.loc 3 224 0
	ldr	r0, .L4336+16
	.loc 3 226 0
	ldr	r1, [r3]
	.loc 3 224 0
	str	ip, [r0, #-1204]
	.loc 3 226 0
	str	r1, [r8, #1008]
	.loc 3 223 0
	ldr	r1, [r5, #8]
	.loc 3 222 0
	ldmia	r5, {r2, r3}
	.loc 3 231 0
	ldr	r0, .L4336+20
	.loc 3 223 0
	str	r1, [r8, #8]
	str	r1, [r8, #32]
	.loc 3 232 0
	ldr	r1, .L4336+24
	.loc 3 233 0
	ldr	lr, .L4336+28
	.loc 3 232 0
	stmib	r9, {r0, r1}
	mov	r0, #0
	.loc 3 230 0
	ldr	ip, .L4336+32
	.loc 3 233 0
	add	lr, lr, r3, asl #4
	.loc 3 221 0
	str	r2, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	lr, [sp, #48]
.LVL3642:
	.loc 3 230 0
	str	ip, [r9]
.LVL3643:
.L4262:
.LBB813:
	.loc 3 259 0
	ldr	lr, [r5, #12]
	.loc 3 269 0
	ldr	r6, [sp, #12]
	ldr	r7, [sp, #4]
.LBE813:
	.loc 3 245 0
	add	r0, r0, #1
.LBB820:
	.loc 3 260 0
	ldr	ip, [r5, #44]
	ldr	r1, [r5, #48]
	.loc 3 259 0
	mov	lr, lr, asr #6
.LBE820:
	.loc 3 245 0
	str	r0, [r8]
.LVL3644:
.LBB821:
	.loc 3 269 0
	cmp	r6, r7
	.loc 3 259 0
	uxtb	r0, lr
	str	r0, [sp, #20]
.LVL3645:
	.loc 3 260 0
	str	ip, [sp, #88]
	str	r1, [sp, #92]
.LVL3646:
	.loc 3 269 0
	beq	.L4289
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r1, [r5, #28]
	str	r1, [sp, #8]
.L4265:
.LVL3647:
	.loc 3 286 0 is_stmt 1
	ldr	r0, [r5, #24]
.LVL3648:
	cmp	r0, #128
	beq	.L4332
	.loc 3 294 0
	cmp	r0, #0
	bne	.L4269
.LVL3649:
	mvn	r9, r4
	.loc 3 297 0
	mov	r8, #64
	ldr	r0, .L4336+36
	and	r2, r2, #3
.LVL3650:
	ldr	r1, [sp, #44]
	ldr	r7, [r0]
.LVL3651:
	ldr	r0, [sp, #8]
	str	r2, [sp, #36]
	ldr	r2, [sp, #48]
	rsb	fp, r0, #65280
.LVL3652:
	add	r1, r1, #1
	ldr	r0, .L4336+40
	add	r1, r1, r3
	sub	r2, r2, r3, asl #4
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	str	r2, [sp, #32]
	add	fp, fp, #255
.LVL3653:
.L4270:
	ldr	r1, [sp, #36]
	and	r2, r3, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #24]
	ldr	r5, [sp, #12]
	ldrb	r0, [r1, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	uxth	r1, r9
	cmp	r0, r2
	movge	r0, #0
	movlt	r0, #1
	add	r2, sp, #96
	add	r0, r2, r0, asl #2
	ldr	r2, [sp, #8]
	ldr	lr, [r0, #-8]
	ldr	r0, [sp, #4]
	mul	ip, fp, r1
	mul	r1, r2, r1
	ldrb	r6, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r0, r4, asr #16]	@ zero_extendqisi2
	ldrb	r10, [lr, r6]	@ zero_extendqisi2
	ldrb	r6, [lr, r0]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldr	r0, [sp, #8]
	uxth	r2, r4
	smlabb	r1, r8, r6, r1
	mov	ip, ip, lsr #26
	ldr	r6, [sp, #4]
	add	r5, r4, #65536
	mul	r0, r0, r2
	smlabb	ip, r8, r10, ip
	ldr	r10, [sp, #12]
	ldrb	r6, [r6, r5, asr #16]	@ zero_extendqisi2
	mul	r2, fp, r2
	ldrb	r5, [r10, r5, asr #16]	@ zero_extendqisi2
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	ldrb	lr, [lr, r5]	@ zero_extendqisi2
	smlabb	r0, r8, r6, r0
	mov	r2, r2, lsr #26
	smlabb	r2, r8, lr, r2
	ldr	ip, [r7, ip, asl #2]
	ldr	r1, [r7, r1, asl #2]
	ldr	r0, [r7, r0, asl #2]
	ldr	r2, [r7, r2, asl #2]
	add	ip, r1, ip
	add	ip, ip, r0
	add	ip, ip, r2
	ldr	r2, [sp, #32]
	str	ip, [r2, r3, asl #4]
	.loc 3 296 0
	ldr	r2, [sp, #28]
	.loc 3 298 0
	add	r3, r3, #1
.LVL3654:
	.loc 3 296 0
	cmp	r3, r2
	ldr	r2, [sp, #16]
	rsb	r9, r2, r9
	.loc 3 300 0
	add	r4, r4, r2
.LVL3655:
	.loc 3 296 0
	bne	.L4270
.LVL3656:
.L4248:
.LBE821:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3657:
.L4330:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4253
	.loc 3 178 0
	cmp	r8, #0
	beq	.L4254
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4255
.LBB822:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL3658:
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL3659:
	.loc 3 184 0
	ldr	r3, [sp, #8]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL3660:
	.loc 3 183 0
	ldr	r3, [sp, #44]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL3661:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL3662:
	str	r3, [sp, #44]
.LVL3663:
.L4254:
.LBE822:
	.loc 3 194 0
	ldr	r3, .L4336+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L4256
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L4333
	.loc 3 201 0
	tst	r3, #8
	beq	.L4256
.LBB823:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #16]
.L4326:
	bl	__aeabi_idiv
.LVL3664:
	.loc 3 205 0
	ldr	r3, [sp, #44]
	.loc 3 204 0
	rsb	r10, r0, r10
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r10, [r5, #8]
.LVL3665:
	.loc 3 205 0
	str	r3, [sp, #44]
.LVL3666:
.L4256:
.LBE823:
	.loc 3 208 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bgt	.L4253
	b	.L4248
.L4331:
	.loc 3 216 0
	ldr	r3, .L4336+16
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L4334
.L4259:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3667:
	.loc 3 219 0
	ldr	r1, [r8]
	cmp	r1, #0
	beq	.L4320
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
	ldr	r2, [r5]
.L4261:
	.loc 3 235 0
	ldr	r0, [r5, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r5, #8]
	.loc 3 238 0
	cmp	r0, ip
	.loc 3 235 0
	add	ip, r8, r1, asl #2
	str	r0, [ip, #16]
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	ldr	ip, .L4336+8
	.loc 3 243 0
	add	r1, r1, r0, asl #2
	.loc 3 239 0
	strgt	r0, [ip, #4]
	.loc 3 240 0
	ldr	ip, [r8, #8]
	ldr	lr, .L4336+8
	cmp	r3, ip
	.loc 3 243 0
	ldr	ip, .L4336+28
	.loc 3 241 0
	strlt	r3, [lr, #8]
	.loc 3 243 0
	add	r1, ip, r1, asl #2
	.loc 3 235 0
	mov	r3, r0
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	ldr	r0, [r8]
	.loc 3 243 0
	str	r1, [sp, #48]
	b	.L4262
.LVL3668:
.L4269:
.LBB824:
.LBB814:
	.loc 3 303 0
	sub	r1, r0, #1
.LVL3669:
	.loc 3 304 0
	tst	r1, r0
	bne	.L4271
.LBB815:
	.loc 3 305 0
	mov	r1, r1, asl #16
.LVL3670:
	mvn	r0, r1, lsr #16
.LVL3671:
	mvn	r0, r0, asl #16
	.loc 3 306 0
	ldr	r1, [sp, #44]
	.loc 3 305 0
	str	r0, [sp, #28]
.LVL3672:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L4335
	mov	r1, r1, lsr #1
	str	r1, [sp, #68]
	mov	r1, r1, asl #1
	add	r0, r1, #2
.LVL3673:
	and	r2, r2, #3
.LVL3674:
	str	r2, [sp, #56]
	.loc 3 307 0
	mov	lr, #64
	add	r2, r0, r3
	mov	r0, r4
	str	r1, [sp, #72]
	ldr	r1, [sp, #8]
	str	r2, [sp, #60]
	rsb	r1, r1, #65280
	add	r2, r1, #255
	str	r2, [sp, #36]
	ldr	r2, [sp, #48]
	ldr	ip, .L4336+36
.LVL3675:
	add	r2, r2, #32
	str	r2, [sp, #40]
	ldr	r2, [sp, #16]
	ldr	r6, .L4336+40
.LVL3676:
	mov	r1, r2, asl #1
	str	ip, [sp, #84]
	add	r2, r2, #65536
	ldr	ip, [ip]
	str	r6, [sp, #24]
	str	r1, [sp, #52]
	str	r2, [sp, #64]
	str	r4, [sp, #76]
	str	r3, [sp, #80]
	str	r3, [sp, #32]
.LVL3677:
.L4273:
	ldr	r6, [sp, #32]
	ldr	r2, [sp, #56]
	ldr	r4, [sp, #24]
	and	r3, r6, #3
	add	r3, r2, r3, asl #2
	ldrb	r1, [r4, r3]	@ zero_extendqisi2
	ldr	fp, [sp, #28]
	ldr	r5, [sp, #20]
	and	r7, r0, fp
	cmp	r1, r5
	mvn	r8, r7
	movge	r1, #0
	movlt	r1, #1
	add	r3, r6, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	cmp	r4, r5
	add	r2, r3, r0
	and	r2, r2, fp
	movge	r4, #0
	movlt	r4, #1
	mvn	r3, r2
	.loc 3 307 0
	ldr	r6, [sp, #36]
	add	r5, sp, #96
	add	r1, r5, r1, asl #2
	ldr	r10, [sp, #8]
	ldr	r5, [sp, #12]
	uxth	r8, r8
	mul	r9, r6, r8
	ldr	fp, [sp, #4]
	ldr	r6, [r1, #-8]
	mul	r8, r10, r8
	ldrb	r10, [r5, r7, asr #16]	@ zero_extendqisi2
	uxth	r1, r7
	ldrb	r7, [fp, r7, asr #16]	@ zero_extendqisi2
	ldrb	fp, [r6, r10]	@ zero_extendqisi2
	ldrb	r10, [r6, r7]	@ zero_extendqisi2
	mov	r7, r9, lsr #26
	smlabb	r9, lr, fp, r7
	ldr	fp, [sp, #28]
	add	r7, r0, #65536
	mov	r8, r8, lsr #26
	and	r7, r7, fp
	smlabb	r8, lr, r10, r8
	ldr	fp, [sp, #36]
	ldr	r10, [sp, #8]
	.loc 3 311 0
	uxth	r3, r3
	.loc 3 307 0
	mul	r10, r10, r1
	mul	r1, fp, r1
	ldr	fp, [sp, #4]
	mov	r10, r10, lsr #26
	ldrb	fp, [fp, r7, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r5, r7, asr #16]	@ zero_extendqisi2
	ldrb	fp, [r6, fp]	@ zero_extendqisi2
	ldrb	r6, [r6, r7]	@ zero_extendqisi2
	smlabb	r10, lr, fp, r10
	mov	r1, r1, lsr #26
	smlabb	r1, lr, r6, r1
	ldr	r7, [ip, r8, asl #2]
	ldr	r6, [ip, r9, asl #2]
	ldr	r8, [ip, r10, asl #2]
	ldr	r1, [ip, r1, asl #2]
	add	r6, r7, r6
	add	r6, r6, r8
	add	r1, r6, r1
	ldr	r6, [sp, #40]
	.loc 3 311 0
	add	r8, sp, #96
	.loc 3 307 0
	str	r1, [r6, #-32]
.LVL3678:
	.loc 3 311 0
	ldr	r10, [sp, #36]
	ldr	r1, [sp, #8]
	add	r4, r8, r4, asl #2
	ldrb	r8, [r5, r2, asr #16]	@ zero_extendqisi2
	ldr	r7, [sp, #4]
	ldr	r4, [r4, #-8]
	mul	r6, r10, r3
	ldr	r9, [sp, #64]
	mul	r3, r1, r3
	uxth	r1, r2
	ldrb	r2, [r7, r2, asr #16]	@ zero_extendqisi2
	ldr	fp, [sp, #28]
	add	r7, r9, r0
	ldrb	r9, [r4, r8]	@ zero_extendqisi2
	ldrb	r8, [r4, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	and	r7, r7, fp
	ldr	fp, [sp, #4]
	mul	r2, r2, r1
	mov	r6, r6, lsr #26
	mul	r1, r10, r1
	mov	r3, r3, lsr #26
	smlabb	r6, lr, r9, r6
	smlabb	r3, lr, r8, r3
	ldrb	r8, [fp, r7, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r5, r7, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r4, r8]	@ zero_extendqisi2
	ldrb	r4, [r4, r7]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldr	r3, [ip, r3, asl #2]
	smlabb	r1, lr, r4, r1
	ldr	r4, [ip, r6, asl #2]
	mov	r2, r2, lsr #26
	add	r4, r3, r4
	.loc 3 312 0
	ldr	r3, [sp, #32]
	.loc 3 311 0
	smlabb	r2, lr, r8, r2
	.loc 3 312 0
	add	r3, r3, #2
	mov	r5, r3
	str	r3, [sp, #32]
.LVL3679:
	.loc 3 306 0
	ldr	r3, [sp, #60]
.LVL3680:
	ldr	r2, [ip, r2, asl #2]
	.loc 3 311 0
	ldr	r6, [sp, #40]
	ldr	r1, [ip, r1, asl #2]
	.loc 3 306 0
	cmp	r5, r3
	ldr	r3, [sp, #52]
	add	r4, r4, r2
	.loc 3 311 0
	add	r4, r4, r1
	add	r0, r3, r0
.LVL3681:
	add	r3, r6, #32
	str	r4, [r6, #-16]
	str	r3, [sp, #40]
.LVL3682:
	.loc 3 306 0
	bne	.L4273
	.loc 3 316 0
	ldr	r0, [sp, #44]
.LVL3683:
	ldr	r3, [sp, #80]
	tst	r0, #1
	ldr	r0, [sp, #72]
	ldr	r2, [sp, #16]
	ldr	r4, [sp, #76]
	add	r3, r3, #2
	ldr	r1, [sp, #68]
	add	r3, r3, r0
	ldr	r0, [sp, #52]
	add	r4, r4, r2, asl #1
	mla	r4, r0, r1, r4
	add	r2, r1, #1
	ldr	r1, [sp, #48]
	add	r2, r1, r2, asl #5
	str	r2, [sp, #48]
	bne	.L4248
.LVL3684:
.L4287:
	.loc 3 317 0
	and	r2, r3, #3
	ldr	r3, [sp, #56]
	ldr	r5, [sp, #28]
	add	r2, r3, r2, asl #2
	ldr	r3, [sp, #24]
	and	ip, r4, r5
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	mvn	r3, ip
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	mov	r2, #64
	ldr	r8, [sp, #36]
	add	r1, sp, #96
	ldr	r6, [sp, #8]
	uxth	r3, r3
	add	lr, r1, lr, asl #2
	ldr	r9, [sp, #12]
	uxth	r1, ip
	ldr	r7, [sp, #4]
	add	r4, r4, #65536
	mul	r0, r6, r3
	and	r4, r4, r5
	mul	r3, r8, r3
	mul	r6, r6, r1
	ldr	lr, [lr, #-8]
	ldrb	r5, [r9, ip, asr #16]	@ zero_extendqisi2
	ldrb	ip, [r7, ip, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	mul	r1, r8, r1
	ldrb	r4, [r9, r4, asr #16]	@ zero_extendqisi2
	ldrb	r8, [lr, ip]	@ zero_extendqisi2
	ldrb	r5, [lr, r5]	@ zero_extendqisi2
	ldrb	ip, [lr, r7]	@ zero_extendqisi2
	ldrb	r4, [lr, r4]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	mov	r3, r3, lsr #26
	mov	lr, r6, lsr #26
	smlabb	r3, r2, r5, r3
	smlabb	lr, r2, ip, lr
	smlabb	r0, r2, r8, r0
	ldr	ip, [sp, #84]
	mov	r1, r1, lsr #26
	ldr	ip, [ip]
	smlabb	r1, r2, r4, r1
	ldr	r2, [ip, r0, asl #2]
	ldr	r0, [ip, r3, asl #2]
	ldr	r3, [ip, lr, asl #2]
	add	r2, r2, r0
	ldr	r1, [ip, r1, asl #2]
	add	r3, r2, r3
	ldr	r2, [sp, #48]
	add	r3, r3, r1
	str	r3, [r2]
	b	.L4248
.LVL3685:
.L4329:
.LBE815:
.LBE814:
.LBE824:
	.loc 3 127 0
	mov	r0, #1
.LVL3686:
	ldr	r2, [r9, #48]
.LVL3687:
	mov	r1, r0
	bl	R_GetDrawColumnFunc
.LVL3688:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3689:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3690:
.L4271:
	.cfi_restore_state
.LBB825:
.LBB818:
.LBB816:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL3691:
	.loc 3 325 0
	blt	.L4277
	.loc 3 328 0
	cmp	r4, r0
	blt	.L4276
.L4278:
	rsb	r4, r0, r4
.LVL3692:
	cmp	r0, r4
	ble	.L4278
.L4276:
	.loc 3 332 0
	add	ip, r4, #65536
.LVL3693:
	.loc 3 333 0
	cmp	ip, r0
	blt	.L4279
.L4280:
	rsb	ip, r0, ip
.LVL3694:
	cmp	ip, r0
	bge	.L4280
.L4279:
	ldr	r1, [sp, #44]
	.loc 3 345 0
	ldr	lr, .L4336+36
	add	r5, r1, #1
.LVL3695:
	add	r5, r5, r3
	ldr	r1, [sp, #8]
	str	r5, [sp, #28]
	ldr	r5, [sp, #48]
	rsb	r1, r1, #65280
	sub	r5, r5, r3, asl #4
	and	r2, r2, #3
.LVL3696:
	str	r5, [sp, #36]
	str	r2, [sp, #32]
	ldr	r9, [lr]
	add	fp, r1, #255
.LVL3697:
	mov	r8, #64
	b	.L4281
.LVL3698:
.L4284:
	ldr	lr, .L4336+40
	ldr	r5, [sp, #20]
	ldrb	lr, [lr, r2]	@ zero_extendqisi2
	mvn	r2, r4
	cmp	lr, r5
	movge	lr, #0
	movlt	lr, #1
	ldr	r6, [sp, #8]
	uxth	r2, r2
	mul	r5, r6, r1
	str	r5, [sp, #24]
	add	r5, sp, #96
	add	lr, r5, lr, asl #2
	ldr	r5, [lr, #-8]
	ldr	lr, [sp, #4]
	mul	r1, fp, r1
	ldrb	r7, [lr, ip, asr #16]	@ zero_extendqisi2
	ldr	lr, [sp, #12]
	ldrb	r7, [r5, r7]	@ zero_extendqisi2
	ldrb	r10, [lr, ip, asr #16]	@ zero_extendqisi2
	mul	lr, fp, r2
	mul	r2, r6, r2
	ldr	r6, [sp, #24]
	ldrb	r10, [r5, r10]	@ zero_extendqisi2
	mov	r6, r6, lsr #26
	smlabb	r6, r8, r7, r6
	mov	r1, r1, lsr #26
	ldr	r7, [sp, #12]
	smlabb	r1, r8, r10, r1
	ldr	r10, [sp, #4]
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r10, r4, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r5, r7]	@ zero_extendqisi2
	mov	lr, lr, lsr #26
	ldrb	r5, [r5, r10]	@ zero_extendqisi2
	smlabb	lr, r8, r7, lr
	mov	r2, r2, lsr #26
	smlabb	r2, r8, r5, r2
	ldr	r1, [r9, r1, asl #2]
	ldr	r5, [r9, r6, asl #2]
	ldr	lr, [r9, lr, asl #2]
	add	r5, r1, r5
	.loc 3 348 0
	ldr	r1, [sp, #16]
	.loc 3 345 0
	ldr	r2, [r9, r2, asl #2]
	.loc 3 348 0
	add	r4, r4, r1
.LVL3699:
	.loc 3 345 0
	add	lr, r5, lr
	.loc 3 350 0
	add	ip, ip, r1
.LVL3700:
	.loc 3 345 0
	add	lr, lr, r2
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	ldr	r2, [sp, #36]
	.loc 3 348 0
	rsbge	r4, r0, r4
	.loc 3 350 0
	cmp	ip, r0
	.loc 3 345 0
	str	lr, [r2, r3, asl #4]
	.loc 3 350 0
	rsbge	ip, r0, ip
	.loc 3 346 0
	add	r3, r3, #1
.LVL3701:
.L4281:
	.loc 3 339 0
	ldr	lr, [sp, #28]
	.loc 3 345 0
	ldr	r1, [sp, #32]
	and	r2, r3, #3
	.loc 3 339 0
	cmp	r3, lr
	.loc 3 345 0
	add	r2, r1, r2, asl #2
	uxth	r1, r4
	.loc 3 339 0
	bne	.L4284
.LBE816:
.LBE818:
.LBE825:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3702:
.L4277:
	.cfi_restore_state
.LBB826:
.LBB819:
.LBB817:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL3703:
	bpl	.L4276
.LVL3704:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL3705:
	bmi	.L4277
	b	.L4276
.LVL3706:
.L4334:
.LBE817:
.LBE819:
.LBE826:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r2, [r5]
	add	r3, r1, r3
	cmp	r3, r2
	bne	.L4259
	b	.L4261
.LVL3707:
.L4332:
	mvn	r10, r4
.LBB827:
	.loc 3 289 0
	mov	r9, #64
	ldr	r0, .L4336+36
	and	r2, r2, #3
.LVL3708:
	ldr	r1, [sp, #44]
	ldr	r8, [r0]
	ldr	r0, [sp, #8]
	str	r2, [sp, #36]
	ldr	r2, [sp, #48]
	rsb	fp, r0, #65280
.LVL3709:
	add	r1, r1, #1
	ldr	r0, .L4336+40
	add	r1, r1, r3
	sub	r2, r2, r3, asl #4
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	str	r2, [sp, #32]
	add	fp, fp, #255
.LVL3710:
.L4267:
	ldr	r1, [sp, #36]
	and	r2, r3, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #24]
	add	lr, sp, #96
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldr	r1, [sp, #20]
	bic	r2, r4, #-16777216
	cmp	ip, r1
	movge	ip, #0
	movlt	ip, #1
	add	ip, lr, ip, asl #2
	ldr	lr, [sp, #8]
	uxth	r1, r10
	ldr	r6, [sp, #12]
	ldr	r5, [ip, #-8]
	bic	r2, r2, #8388608
	mul	lr, lr, r1
	ldr	ip, [sp, #4]
	mul	r1, fp, r1
	ldrb	r6, [r6, r2, asr #16]	@ zero_extendqisi2
	ldrb	ip, [ip, r2, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r5, r6]	@ zero_extendqisi2
	ldrb	r7, [r5, ip]	@ zero_extendqisi2
	add	r0, r4, #65536
	ldr	ip, [sp, #8]
	mov	r1, r1, lsr #26
	uxth	r2, r4
	smlabb	r1, r9, r6, r1
	bic	r0, r0, #-16777216
	mov	lr, lr, lsr #26
	ldr	r6, [sp, #4]
	bic	r0, r0, #8388608
	mul	ip, ip, r2
	smlabb	lr, r9, r7, lr
	ldr	r7, [sp, #12]
	ldrb	r6, [r6, r0, asr #16]	@ zero_extendqisi2
	mul	r2, fp, r2
	ldrb	r0, [r7, r0, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r5, r6]	@ zero_extendqisi2
	ldrb	r0, [r5, r0]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	smlabb	ip, r9, r6, ip
	mov	r2, r2, lsr #26
	smlabb	r2, r9, r0, r2
	ldr	r1, [r8, r1, asl #2]
	ldr	r0, [r8, lr, asl #2]
	ldr	ip, [r8, ip, asl #2]
	ldr	r2, [r8, r2, asl #2]
	add	r0, r0, r1
	add	r0, r0, ip
	add	r0, r0, r2
	ldr	r2, [sp, #32]
	str	r0, [r2, r3, asl #4]
	.loc 3 288 0
	ldr	r2, [sp, #28]
	.loc 3 290 0
	add	r3, r3, #1
.LVL3711:
	.loc 3 288 0
	cmp	r3, r2
	ldr	r2, [sp, #16]
	rsb	r10, r2, r10
	.loc 3 292 0
	add	r4, r4, r2
.LVL3712:
	.loc 3 288 0
	bne	.L4267
.LBE827:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3713:
.L4289:
	.cfi_restore_state
.LBB828:
	.loc 3 269 0
	mov	r1, #0
	str	r1, [sp, #8]
	b	.L4265
.LVL3714:
.L4333:
.LBE828:
.LBB829:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #16]
	uxth	r0, r0
	b	.L4326
.L4320:
	ldr	r3, [r5, #32]
	str	r3, [sp, #12]
	ldr	r3, [r5, #40]
	str	r3, [sp, #4]
	b	.L4260
.LVL3715:
.L4255:
.LBE829:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4254
.LBB830:
	.loc 3 188 0
	mov	r0, fp
.LVL3716:
	ldr	r1, [sp, #16]
.LVL3717:
	bl	__aeabi_idiv
.LVL3718:
	.loc 3 190 0
	ldr	r3, [sp, #44]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL3719:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL3720:
	.loc 3 190 0
	str	r3, [sp, #44]
.LVL3721:
	b	.L4254
.LVL3722:
.L4335:
	ldr	r1, [sp, #8]
	and	r2, r2, #3
.LVL3723:
	rsb	r1, r1, #65280
	str	r2, [sp, #56]
	add	r2, r1, #255
	str	r2, [sp, #36]
	ldr	r2, .L4336+36
	str	r2, [sp, #84]
	ldr	r2, .L4336+40
	str	r2, [sp, #24]
	b	.L4287
.L4337:
	.align	2
.L4336:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushHTTL32
	.word	R_FlushQuadTL32
	.word	.LANCHOR0+3140
	.word	R_FlushWholeTL32
	.word	V_Palette32
	.word	filter_ditherMatrix
	.word	viewheight
.LBE830:
	.cfi_endproc
.LFE114:
	.size	R_DrawTLColumn32_LinearUV_LinearZ, .-R_DrawTLColumn32_LinearUV_LinearZ
	.align	2
	.type	R_DrawColumn32_LinearUV_LinearZ, %function
R_DrawColumn32_LinearUV_LinearZ:
.LFB78:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3724:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 126 0
	ldr	r9, .L4426
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #16]
.LVL3725:
	.loc 3 126 0
	ldr	r2, [sp, #16]
	ldr	r3, [r9, #64]
.LVL3726:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL3727:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	.loc 3 126 0
	bgt	.L4419
	.loc 3 149 0
	ldmib	r0, {r8, r10}
.LVL3728:
	.loc 3 157 0
	subs	r3, r10, r8
.LVL3729:
	str	r3, [sp, #44]
	bmi	.L4338
	.loc 3 169 0
	ldr	r2, .L4426+4
.LVL3730:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL3731:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #16]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL3732:
	.loc 3 174 0
	bne	.L4420
.LVL3733:
.L4343:
	.loc 3 215 0
	ldr	r8, .L4426+8
	ldr	r1, [r8]
	cmp	r1, #4
	beq	.L4349
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r1, #0
	bne	.L4421
.L4350:
	.loc 3 222 0 is_stmt 1
	ldmia	r5, {r2, r3}
	.loc 3 224 0
	mov	ip, #1
	.loc 3 223 0
	ldr	r1, [r5, #8]
	.loc 3 224 0
	ldr	r0, .L4426+12
	.loc 3 223 0
	str	r1, [r8, #8]
	.loc 3 224 0
	str	ip, [r0, #-1204]
	.loc 3 223 0
	str	r1, [r8, #32]
	.loc 3 231 0
	ldr	r0, .L4426+16
	.loc 3 232 0
	ldr	r1, .L4426+20
	.loc 3 233 0
	ldr	lr, .L4426+24
	.loc 3 232 0
	stmib	r9, {r0, r1}
	mov	r0, #0
	.loc 3 230 0
	ldr	ip, .L4426+28
	.loc 3 233 0
	add	lr, lr, r3, asl #4
	.loc 3 221 0
	str	r2, [r8, #12]
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	str	lr, [sp, #48]
.LVL3734:
	.loc 3 230 0
	str	ip, [r9]
.LVL3735:
.L4352:
.LBB831:
	.loc 3 259 0
	ldr	lr, [r5, #12]
	.loc 3 269 0
	ldr	r6, [sp, #12]
	ldr	r7, [sp, #4]
.LBE831:
	.loc 3 245 0
	add	r0, r0, #1
.LBB838:
	.loc 3 260 0
	ldr	ip, [r5, #44]
	ldr	r1, [r5, #48]
	.loc 3 259 0
	mov	lr, lr, asr #6
.LBE838:
	.loc 3 245 0
	str	r0, [r8]
.LVL3736:
.LBB839:
	.loc 3 269 0
	cmp	r6, r7
	.loc 3 259 0
	uxtb	r0, lr
	str	r0, [sp, #20]
.LVL3737:
	.loc 3 260 0
	str	ip, [sp, #88]
	str	r1, [sp, #92]
.LVL3738:
	.loc 3 269 0
	beq	.L4379
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r1, [r5, #28]
	str	r1, [sp, #8]
.L4355:
.LVL3739:
	.loc 3 286 0 is_stmt 1
	ldr	r0, [r5, #24]
.LVL3740:
	cmp	r0, #128
	beq	.L4422
	.loc 3 294 0
	cmp	r0, #0
	bne	.L4359
.LVL3741:
	mvn	r9, r4
	.loc 3 297 0
	mov	r8, #64
	ldr	r0, .L4426+32
	and	r2, r2, #3
.LVL3742:
	ldr	r1, [sp, #44]
	ldr	r7, [r0]
.LVL3743:
	ldr	r0, [sp, #8]
	str	r2, [sp, #36]
	ldr	r2, [sp, #48]
	rsb	fp, r0, #65280
.LVL3744:
	add	r1, r1, #1
	ldr	r0, .L4426+36
	add	r1, r1, r3
	sub	r2, r2, r3, asl #4
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	str	r2, [sp, #32]
	add	fp, fp, #255
.LVL3745:
.L4360:
	ldr	r1, [sp, #36]
	and	r2, r3, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #24]
	ldr	r5, [sp, #12]
	ldrb	r0, [r1, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	uxth	r1, r9
	cmp	r0, r2
	movge	r0, #0
	movlt	r0, #1
	add	r2, sp, #96
	add	r0, r2, r0, asl #2
	ldr	r2, [sp, #8]
	ldr	lr, [r0, #-8]
	ldr	r0, [sp, #4]
	mul	ip, fp, r1
	mul	r1, r2, r1
	ldrb	r6, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r0, r4, asr #16]	@ zero_extendqisi2
	ldrb	r10, [lr, r6]	@ zero_extendqisi2
	ldrb	r6, [lr, r0]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldr	r0, [sp, #8]
	uxth	r2, r4
	smlabb	r1, r8, r6, r1
	mov	ip, ip, lsr #26
	ldr	r6, [sp, #4]
	add	r5, r4, #65536
	mul	r0, r0, r2
	smlabb	ip, r8, r10, ip
	ldr	r10, [sp, #12]
	ldrb	r6, [r6, r5, asr #16]	@ zero_extendqisi2
	mul	r2, fp, r2
	ldrb	r5, [r10, r5, asr #16]	@ zero_extendqisi2
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	ldrb	lr, [lr, r5]	@ zero_extendqisi2
	smlabb	r0, r8, r6, r0
	mov	r2, r2, lsr #26
	smlabb	r2, r8, lr, r2
	ldr	ip, [r7, ip, asl #2]
	ldr	r1, [r7, r1, asl #2]
	ldr	r0, [r7, r0, asl #2]
	ldr	r2, [r7, r2, asl #2]
	add	ip, r1, ip
	add	ip, ip, r0
	add	ip, ip, r2
	ldr	r2, [sp, #32]
	str	ip, [r2, r3, asl #4]
	.loc 3 296 0
	ldr	r2, [sp, #28]
	.loc 3 298 0
	add	r3, r3, #1
.LVL3746:
	.loc 3 296 0
	cmp	r3, r2
	ldr	r2, [sp, #16]
	rsb	r9, r2, r9
	.loc 3 300 0
	add	r4, r4, r2
.LVL3747:
	.loc 3 296 0
	bne	.L4360
.LVL3748:
.L4338:
.LBE839:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3749:
.L4420:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4343
	.loc 3 178 0
	cmp	r8, #0
	beq	.L4344
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4345
.LBB840:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL3750:
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL3751:
	.loc 3 184 0
	ldr	r3, [sp, #8]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL3752:
	.loc 3 183 0
	ldr	r3, [sp, #44]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL3753:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL3754:
	str	r3, [sp, #44]
.LVL3755:
.L4344:
.LBE840:
	.loc 3 194 0
	ldr	r3, .L4426+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L4346
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L4423
	.loc 3 201 0
	tst	r3, #8
	beq	.L4346
.LBB841:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #16]
.L4416:
	bl	__aeabi_idiv
.LVL3756:
	.loc 3 205 0
	ldr	r3, [sp, #44]
	.loc 3 204 0
	rsb	r10, r0, r10
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r10, [r5, #8]
.LVL3757:
	.loc 3 205 0
	str	r3, [sp, #44]
.LVL3758:
.L4346:
.LBE841:
	.loc 3 208 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bgt	.L4343
	b	.L4338
.L4421:
	.loc 3 216 0
	ldr	r3, .L4426+12
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L4424
.L4349:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3759:
	.loc 3 219 0
	ldr	r1, [r8]
	cmp	r1, #0
	beq	.L4410
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
	ldr	r2, [r5]
.L4351:
	.loc 3 235 0
	ldr	r0, [r5, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r3, [r5, #8]
	.loc 3 238 0
	cmp	r0, ip
	.loc 3 235 0
	add	ip, r8, r1, asl #2
	str	r0, [ip, #16]
	.loc 3 236 0
	str	r3, [ip, #32]
	.loc 3 235 0
	ldr	ip, .L4426+8
	.loc 3 243 0
	add	r1, r1, r0, asl #2
	.loc 3 239 0
	strgt	r0, [ip, #4]
	.loc 3 240 0
	ldr	ip, [r8, #8]
	ldr	lr, .L4426+8
	cmp	r3, ip
	.loc 3 243 0
	ldr	ip, .L4426+24
	.loc 3 241 0
	strlt	r3, [lr, #8]
	.loc 3 243 0
	add	r1, ip, r1, asl #2
	.loc 3 235 0
	mov	r3, r0
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	ldr	r0, [r8]
	.loc 3 243 0
	str	r1, [sp, #48]
	b	.L4352
.LVL3760:
.L4359:
.LBB842:
.LBB832:
	.loc 3 303 0
	sub	r1, r0, #1
.LVL3761:
	.loc 3 304 0
	tst	r1, r0
	bne	.L4361
.LBB833:
	.loc 3 305 0
	mov	r1, r1, asl #16
.LVL3762:
	mvn	r0, r1, lsr #16
.LVL3763:
	mvn	r0, r0, asl #16
	.loc 3 306 0
	ldr	r1, [sp, #44]
	.loc 3 305 0
	str	r0, [sp, #28]
.LVL3764:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L4425
	mov	r1, r1, lsr #1
	str	r1, [sp, #68]
	mov	r1, r1, asl #1
	add	r0, r1, #2
.LVL3765:
	and	r2, r2, #3
.LVL3766:
	str	r2, [sp, #56]
	.loc 3 307 0
	mov	lr, #64
	add	r2, r0, r3
	mov	r0, r4
	str	r1, [sp, #72]
	ldr	r1, [sp, #8]
	str	r2, [sp, #60]
	rsb	r1, r1, #65280
	add	r2, r1, #255
	str	r2, [sp, #36]
	ldr	r2, [sp, #48]
	ldr	ip, .L4426+32
.LVL3767:
	add	r2, r2, #32
	str	r2, [sp, #40]
	ldr	r2, [sp, #16]
	ldr	r6, .L4426+36
.LVL3768:
	mov	r1, r2, asl #1
	str	ip, [sp, #84]
	add	r2, r2, #65536
	ldr	ip, [ip]
	str	r6, [sp, #24]
	str	r1, [sp, #52]
	str	r2, [sp, #64]
	str	r4, [sp, #76]
	str	r3, [sp, #80]
	str	r3, [sp, #32]
.LVL3769:
.L4363:
	ldr	r6, [sp, #32]
	ldr	r2, [sp, #56]
	ldr	r4, [sp, #24]
	and	r3, r6, #3
	add	r3, r2, r3, asl #2
	ldrb	r1, [r4, r3]	@ zero_extendqisi2
	ldr	fp, [sp, #28]
	ldr	r5, [sp, #20]
	and	r7, r0, fp
	cmp	r1, r5
	mvn	r8, r7
	movge	r1, #0
	movlt	r1, #1
	add	r3, r6, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	cmp	r4, r5
	add	r2, r3, r0
	and	r2, r2, fp
	movge	r4, #0
	movlt	r4, #1
	mvn	r3, r2
	.loc 3 307 0
	ldr	r6, [sp, #36]
	add	r5, sp, #96
	add	r1, r5, r1, asl #2
	ldr	r10, [sp, #8]
	ldr	r5, [sp, #12]
	uxth	r8, r8
	mul	r9, r6, r8
	ldr	fp, [sp, #4]
	ldr	r6, [r1, #-8]
	mul	r8, r10, r8
	ldrb	r10, [r5, r7, asr #16]	@ zero_extendqisi2
	uxth	r1, r7
	ldrb	r7, [fp, r7, asr #16]	@ zero_extendqisi2
	ldrb	fp, [r6, r10]	@ zero_extendqisi2
	ldrb	r10, [r6, r7]	@ zero_extendqisi2
	mov	r7, r9, lsr #26
	smlabb	r9, lr, fp, r7
	ldr	fp, [sp, #28]
	add	r7, r0, #65536
	mov	r8, r8, lsr #26
	and	r7, r7, fp
	smlabb	r8, lr, r10, r8
	ldr	fp, [sp, #36]
	ldr	r10, [sp, #8]
	.loc 3 311 0
	uxth	r3, r3
	.loc 3 307 0
	mul	r10, r10, r1
	mul	r1, fp, r1
	ldr	fp, [sp, #4]
	mov	r10, r10, lsr #26
	ldrb	fp, [fp, r7, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r5, r7, asr #16]	@ zero_extendqisi2
	ldrb	fp, [r6, fp]	@ zero_extendqisi2
	ldrb	r6, [r6, r7]	@ zero_extendqisi2
	smlabb	r10, lr, fp, r10
	mov	r1, r1, lsr #26
	smlabb	r1, lr, r6, r1
	ldr	r7, [ip, r8, asl #2]
	ldr	r6, [ip, r9, asl #2]
	ldr	r8, [ip, r10, asl #2]
	ldr	r1, [ip, r1, asl #2]
	add	r6, r7, r6
	add	r6, r6, r8
	add	r1, r6, r1
	ldr	r6, [sp, #40]
	.loc 3 311 0
	add	r8, sp, #96
	.loc 3 307 0
	str	r1, [r6, #-32]
.LVL3770:
	.loc 3 311 0
	ldr	r10, [sp, #36]
	ldr	r1, [sp, #8]
	add	r4, r8, r4, asl #2
	ldrb	r8, [r5, r2, asr #16]	@ zero_extendqisi2
	ldr	r7, [sp, #4]
	ldr	r4, [r4, #-8]
	mul	r6, r10, r3
	ldr	r9, [sp, #64]
	mul	r3, r1, r3
	uxth	r1, r2
	ldrb	r2, [r7, r2, asr #16]	@ zero_extendqisi2
	ldr	fp, [sp, #28]
	add	r7, r9, r0
	ldrb	r9, [r4, r8]	@ zero_extendqisi2
	ldrb	r8, [r4, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	and	r7, r7, fp
	ldr	fp, [sp, #4]
	mul	r2, r2, r1
	mov	r6, r6, lsr #26
	mul	r1, r10, r1
	mov	r3, r3, lsr #26
	smlabb	r6, lr, r9, r6
	smlabb	r3, lr, r8, r3
	ldrb	r8, [fp, r7, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r5, r7, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r4, r8]	@ zero_extendqisi2
	ldrb	r4, [r4, r7]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldr	r3, [ip, r3, asl #2]
	smlabb	r1, lr, r4, r1
	ldr	r4, [ip, r6, asl #2]
	mov	r2, r2, lsr #26
	add	r4, r3, r4
	.loc 3 312 0
	ldr	r3, [sp, #32]
	.loc 3 311 0
	smlabb	r2, lr, r8, r2
	.loc 3 312 0
	add	r3, r3, #2
	mov	r5, r3
	str	r3, [sp, #32]
.LVL3771:
	.loc 3 306 0
	ldr	r3, [sp, #60]
.LVL3772:
	ldr	r2, [ip, r2, asl #2]
	.loc 3 311 0
	ldr	r6, [sp, #40]
	ldr	r1, [ip, r1, asl #2]
	.loc 3 306 0
	cmp	r5, r3
	ldr	r3, [sp, #52]
	add	r4, r4, r2
	.loc 3 311 0
	add	r4, r4, r1
	add	r0, r3, r0
.LVL3773:
	add	r3, r6, #32
	str	r4, [r6, #-16]
	str	r3, [sp, #40]
.LVL3774:
	.loc 3 306 0
	bne	.L4363
	.loc 3 316 0
	ldr	r0, [sp, #44]
.LVL3775:
	ldr	r3, [sp, #80]
	tst	r0, #1
	ldr	r0, [sp, #72]
	ldr	r2, [sp, #16]
	ldr	r4, [sp, #76]
	add	r3, r3, #2
	ldr	r1, [sp, #68]
	add	r3, r3, r0
	ldr	r0, [sp, #52]
	add	r4, r4, r2, asl #1
	mla	r4, r0, r1, r4
	add	r2, r1, #1
	ldr	r1, [sp, #48]
	add	r2, r1, r2, asl #5
	str	r2, [sp, #48]
	bne	.L4338
.LVL3776:
.L4377:
	.loc 3 317 0
	and	r2, r3, #3
	ldr	r3, [sp, #56]
	ldr	r5, [sp, #28]
	add	r2, r3, r2, asl #2
	ldr	r3, [sp, #24]
	and	ip, r4, r5
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	mvn	r3, ip
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	mov	r2, #64
	ldr	r8, [sp, #36]
	add	r1, sp, #96
	ldr	r6, [sp, #8]
	uxth	r3, r3
	add	lr, r1, lr, asl #2
	ldr	r9, [sp, #12]
	uxth	r1, ip
	ldr	r7, [sp, #4]
	add	r4, r4, #65536
	mul	r0, r6, r3
	and	r4, r4, r5
	mul	r3, r8, r3
	mul	r6, r6, r1
	ldr	lr, [lr, #-8]
	ldrb	r5, [r9, ip, asr #16]	@ zero_extendqisi2
	ldrb	ip, [r7, ip, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	mul	r1, r8, r1
	ldrb	r4, [r9, r4, asr #16]	@ zero_extendqisi2
	ldrb	r8, [lr, ip]	@ zero_extendqisi2
	ldrb	r5, [lr, r5]	@ zero_extendqisi2
	ldrb	ip, [lr, r7]	@ zero_extendqisi2
	ldrb	r4, [lr, r4]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	mov	r3, r3, lsr #26
	mov	lr, r6, lsr #26
	smlabb	r3, r2, r5, r3
	smlabb	lr, r2, ip, lr
	smlabb	r0, r2, r8, r0
	ldr	ip, [sp, #84]
	mov	r1, r1, lsr #26
	ldr	ip, [ip]
	smlabb	r1, r2, r4, r1
	ldr	r2, [ip, r0, asl #2]
	ldr	r0, [ip, r3, asl #2]
	ldr	r3, [ip, lr, asl #2]
	add	r2, r2, r0
	ldr	r1, [ip, r1, asl #2]
	add	r3, r2, r3
	ldr	r2, [sp, #48]
	add	r3, r3, r1
	str	r3, [r2]
	b	.L4338
.LVL3777:
.L4419:
.LBE833:
.LBE832:
.LBE842:
	.loc 3 127 0
	ldr	r2, [r9, #48]
.LVL3778:
	mov	r1, #1
	mov	r0, #0
.LVL3779:
	bl	R_GetDrawColumnFunc
.LVL3780:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3781:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3782:
.L4361:
	.cfi_restore_state
.LBB843:
.LBB836:
.LBB834:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r0, r0, asl #16
.LVL3783:
	.loc 3 325 0
	blt	.L4367
	.loc 3 328 0
	cmp	r4, r0
	blt	.L4366
.L4368:
	rsb	r4, r0, r4
.LVL3784:
	cmp	r0, r4
	ble	.L4368
.L4366:
	.loc 3 332 0
	add	ip, r4, #65536
.LVL3785:
	.loc 3 333 0
	cmp	ip, r0
	blt	.L4369
.L4370:
	rsb	ip, r0, ip
.LVL3786:
	cmp	ip, r0
	bge	.L4370
.L4369:
	ldr	r1, [sp, #44]
	.loc 3 345 0
	ldr	lr, .L4426+32
	add	r5, r1, #1
.LVL3787:
	add	r5, r5, r3
	ldr	r1, [sp, #8]
	str	r5, [sp, #28]
	ldr	r5, [sp, #48]
	rsb	r1, r1, #65280
	sub	r5, r5, r3, asl #4
	and	r2, r2, #3
.LVL3788:
	str	r5, [sp, #36]
	str	r2, [sp, #32]
	ldr	r9, [lr]
	add	fp, r1, #255
.LVL3789:
	mov	r8, #64
	b	.L4371
.LVL3790:
.L4374:
	ldr	lr, .L4426+36
	ldr	r5, [sp, #20]
	ldrb	lr, [lr, r2]	@ zero_extendqisi2
	mvn	r2, r4
	cmp	lr, r5
	movge	lr, #0
	movlt	lr, #1
	ldr	r6, [sp, #8]
	uxth	r2, r2
	mul	r5, r6, r1
	str	r5, [sp, #24]
	add	r5, sp, #96
	add	lr, r5, lr, asl #2
	ldr	r5, [lr, #-8]
	ldr	lr, [sp, #4]
	mul	r1, fp, r1
	ldrb	r7, [lr, ip, asr #16]	@ zero_extendqisi2
	ldr	lr, [sp, #12]
	ldrb	r7, [r5, r7]	@ zero_extendqisi2
	ldrb	r10, [lr, ip, asr #16]	@ zero_extendqisi2
	mul	lr, fp, r2
	mul	r2, r6, r2
	ldr	r6, [sp, #24]
	ldrb	r10, [r5, r10]	@ zero_extendqisi2
	mov	r6, r6, lsr #26
	smlabb	r6, r8, r7, r6
	mov	r1, r1, lsr #26
	ldr	r7, [sp, #12]
	smlabb	r1, r8, r10, r1
	ldr	r10, [sp, #4]
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r10, r4, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r5, r7]	@ zero_extendqisi2
	mov	lr, lr, lsr #26
	ldrb	r5, [r5, r10]	@ zero_extendqisi2
	smlabb	lr, r8, r7, lr
	mov	r2, r2, lsr #26
	smlabb	r2, r8, r5, r2
	ldr	r1, [r9, r1, asl #2]
	ldr	r5, [r9, r6, asl #2]
	ldr	lr, [r9, lr, asl #2]
	add	r5, r1, r5
	.loc 3 348 0
	ldr	r1, [sp, #16]
	.loc 3 345 0
	ldr	r2, [r9, r2, asl #2]
	.loc 3 348 0
	add	r4, r4, r1
.LVL3791:
	.loc 3 345 0
	add	lr, r5, lr
	.loc 3 350 0
	add	ip, ip, r1
.LVL3792:
	.loc 3 345 0
	add	lr, lr, r2
	.loc 3 348 0
	cmp	r4, r0
	.loc 3 345 0
	ldr	r2, [sp, #36]
	.loc 3 348 0
	rsbge	r4, r0, r4
	.loc 3 350 0
	cmp	ip, r0
	.loc 3 345 0
	str	lr, [r2, r3, asl #4]
	.loc 3 350 0
	rsbge	ip, r0, ip
	.loc 3 346 0
	add	r3, r3, #1
.LVL3793:
.L4371:
	.loc 3 339 0
	ldr	lr, [sp, #28]
	.loc 3 345 0
	ldr	r1, [sp, #32]
	and	r2, r3, #3
	.loc 3 339 0
	cmp	r3, lr
	.loc 3 345 0
	add	r2, r1, r2, asl #2
	uxth	r1, r4
	.loc 3 339 0
	bne	.L4374
.LBE834:
.LBE836:
.LBE843:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3794:
.L4367:
	.cfi_restore_state
.LBB844:
.LBB837:
.LBB835:
	.loc 3 326 0 discriminator 1
	adds	r4, r0, r4
.LVL3795:
	bpl	.L4366
.LVL3796:
	.loc 3 326 0 is_stmt 0
	adds	r4, r0, r4
.LVL3797:
	bmi	.L4367
	b	.L4366
.LVL3798:
.L4424:
.LBE835:
.LBE837:
.LBE844:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r3, [r8, #12]
	ldr	r2, [r5]
	add	r3, r1, r3
	cmp	r3, r2
	bne	.L4349
	b	.L4351
.LVL3799:
.L4422:
	mvn	r10, r4
.LBB845:
	.loc 3 289 0
	mov	r9, #64
	ldr	r0, .L4426+32
	and	r2, r2, #3
.LVL3800:
	ldr	r1, [sp, #44]
	ldr	r8, [r0]
	ldr	r0, [sp, #8]
	str	r2, [sp, #36]
	ldr	r2, [sp, #48]
	rsb	fp, r0, #65280
.LVL3801:
	add	r1, r1, #1
	ldr	r0, .L4426+36
	add	r1, r1, r3
	sub	r2, r2, r3, asl #4
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	str	r2, [sp, #32]
	add	fp, fp, #255
.LVL3802:
.L4357:
	ldr	r1, [sp, #36]
	and	r2, r3, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #24]
	add	lr, sp, #96
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldr	r1, [sp, #20]
	bic	r2, r4, #-16777216
	cmp	ip, r1
	movge	ip, #0
	movlt	ip, #1
	add	ip, lr, ip, asl #2
	ldr	lr, [sp, #8]
	uxth	r1, r10
	ldr	r6, [sp, #12]
	ldr	r5, [ip, #-8]
	bic	r2, r2, #8388608
	mul	lr, lr, r1
	ldr	ip, [sp, #4]
	mul	r1, fp, r1
	ldrb	r6, [r6, r2, asr #16]	@ zero_extendqisi2
	ldrb	ip, [ip, r2, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r5, r6]	@ zero_extendqisi2
	ldrb	r7, [r5, ip]	@ zero_extendqisi2
	add	r0, r4, #65536
	ldr	ip, [sp, #8]
	mov	r1, r1, lsr #26
	uxth	r2, r4
	smlabb	r1, r9, r6, r1
	bic	r0, r0, #-16777216
	mov	lr, lr, lsr #26
	ldr	r6, [sp, #4]
	bic	r0, r0, #8388608
	mul	ip, ip, r2
	smlabb	lr, r9, r7, lr
	ldr	r7, [sp, #12]
	ldrb	r6, [r6, r0, asr #16]	@ zero_extendqisi2
	mul	r2, fp, r2
	ldrb	r0, [r7, r0, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r5, r6]	@ zero_extendqisi2
	ldrb	r0, [r5, r0]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	smlabb	ip, r9, r6, ip
	mov	r2, r2, lsr #26
	smlabb	r2, r9, r0, r2
	ldr	r1, [r8, r1, asl #2]
	ldr	r0, [r8, lr, asl #2]
	ldr	ip, [r8, ip, asl #2]
	ldr	r2, [r8, r2, asl #2]
	add	r0, r0, r1
	add	r0, r0, ip
	add	r0, r0, r2
	ldr	r2, [sp, #32]
	str	r0, [r2, r3, asl #4]
	.loc 3 288 0
	ldr	r2, [sp, #28]
	.loc 3 290 0
	add	r3, r3, #1
.LVL3803:
	.loc 3 288 0
	cmp	r3, r2
	ldr	r2, [sp, #16]
	rsb	r10, r2, r10
	.loc 3 292 0
	add	r4, r4, r2
.LVL3804:
	.loc 3 288 0
	bne	.L4357
.LBE845:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3805:
.L4379:
	.cfi_restore_state
.LBB846:
	.loc 3 269 0
	mov	r1, #0
	str	r1, [sp, #8]
	b	.L4355
.LVL3806:
.L4423:
.LBE846:
.LBB847:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #16]
	uxth	r0, r0
	b	.L4416
.L4410:
	ldr	r3, [r5, #32]
	str	r3, [sp, #12]
	ldr	r3, [r5, #40]
	str	r3, [sp, #4]
	b	.L4350
.LVL3807:
.L4345:
.LBE847:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4344
.LBB848:
	.loc 3 188 0
	mov	r0, fp
.LVL3808:
	ldr	r1, [sp, #16]
.LVL3809:
	bl	__aeabi_idiv
.LVL3810:
	.loc 3 190 0
	ldr	r3, [sp, #44]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL3811:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL3812:
	.loc 3 190 0
	str	r3, [sp, #44]
.LVL3813:
	b	.L4344
.LVL3814:
.L4425:
	ldr	r1, [sp, #8]
	and	r2, r2, #3
.LVL3815:
	rsb	r1, r1, #65280
	str	r2, [sp, #56]
	add	r2, r1, #255
	str	r2, [sp, #36]
	ldr	r2, .L4426+32
	str	r2, [sp, #84]
	ldr	r2, .L4426+36
	str	r2, [sp, #24]
	b	.L4377
.L4427:
	.align	2
.L4426:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	V_Palette32
	.word	filter_ditherMatrix
	.word	viewheight
.LBE848:
	.cfi_endproc
.LFE78:
	.size	R_DrawColumn32_LinearUV_LinearZ, .-R_DrawColumn32_LinearUV_LinearZ
	.align	2
	.type	R_DrawFuzzColumn32_RoundedUV_PointZ, %function
R_DrawFuzzColumn32_RoundedUV_PointZ:
.LFB188:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3816:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r7, .L4466
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL3817:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	mov	r4, r0
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL3818:
	.loc 3 126 0
	bgt	.L4463
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L4466+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL3819:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL3820:
	bmi	.L4428
.LVL3821:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L4434
.LVL3822:
.L4437:
	.loc 3 215 0
	ldr	r5, .L4466+8
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L4435
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4464
.L4443:
	.loc 3 228 0 is_stmt 1
	ldr	r3, .L4466+12
	.loc 3 224 0
	mov	r8, #4
.LVL3823:
	.loc 3 221 0
	ldr	lr, [r4]
	.loc 3 228 0
	ldr	r9, [r3]
	.loc 3 223 0
	ldmib	r4, {r2, r3}
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	mov	r3, #0
	.loc 3 231 0
	ldr	r0, .L4466+16
	.loc 3 232 0
	ldr	r1, .L4466+20
	.loc 3 224 0
	ldr	r6, .L4466+24
	.loc 3 230 0
	ldr	ip, .L4466+28
	.loc 3 232 0
	stmib	r7, {r0, r1}
.LVL3824:
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r6, #-1204]
	.loc 3 221 0
	str	lr, [r5, #12]
	.loc 3 222 0
	str	r2, [r5, #4]
	str	r2, [r5, #16]
.LVL3825:
	.loc 3 230 0
	str	ip, [r7]
.L4445:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
.L4428:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3826:
.L4434:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4437
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4438
.LBB849:
	.loc 3 181 0
	mvn	r0, r10
.LVL3827:
	mov	r1, r8
	str	r3, [sp, #4]
	uxth	r0, r0
.LVL3828:
.L4462:
.LBE849:
.LBB850:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL3829:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	fp, r0, fp
.LVL3830:
.L4439:
.LBE850:
	.loc 3 194 0
	cmp	r5, r9
	beq	.L4440
	.loc 3 195 0
	tst	r3, #4
	beq	.L4441
.LBB851:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3831:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	fp, r0, fp
.LVL3832:
.L4440:
.LBE851:
	.loc 3 208 0
	cmp	fp, #0
	bgt	.L4437
	b	.L4428
.L4464:
	.loc 3 216 0
	ldr	r2, .L4466+24
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L4465
.L4435:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3833:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L4443
.L4444:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L4466+8
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L4466+8
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L4445
.LVL3834:
.L4463:
	.loc 3 127 0
	ldr	r2, [r7, #48]
	mov	r1, #1
	mov	r0, #3
.LVL3835:
	bl	R_GetDrawColumnFunc
.LVL3836:
	mov	r3, r0
	mov	r0, r4
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3837:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3838:
.L4465:
	.cfi_restore_state
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L4435
	b	.L4444
.L4441:
	.loc 3 201 0
	tst	r3, #8
	beq	.L4440
.LBB852:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv
.LVL3839:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	fp, r0, fp
.LVL3840:
	b	.L4440
.LVL3841:
.L4438:
.LBE852:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4439
	str	r3, [sp, #4]
.LBB853:
	.loc 3 188 0
	uxth	r0, r10
.LVL3842:
	mov	r1, r8
	b	.L4462
.L4467:
	.align	2
.L4466:
	.word	.LANCHOR1
	.word	viewheight
	.word	.LANCHOR0
	.word	fullcolormap
	.word	R_FlushHTFuzz32
	.word	R_FlushQuadFuzz32
	.word	.LANCHOR2
	.word	R_FlushWholeFuzz32
.LBE853:
	.cfi_endproc
.LFE188:
	.size	R_DrawFuzzColumn32_RoundedUV_PointZ, .-R_DrawFuzzColumn32_RoundedUV_PointZ
	.align	2
	.type	R_DrawTranslatedColumn32_RoundedUV_PointZ, %function
R_DrawTranslatedColumn32_RoundedUV_PointZ:
.LFB152:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3843:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r9, .L4562
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL3844:
	.loc 3 126 0
	ldr	r3, [r9, #64]
	.loc 3 113 0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	mov	r6, r0
	.loc 3 121 0
	ldr	fp, [r0, #28]
.LVL3845:
	.loc 3 126 0
	bgt	.L4555
	.loc 3 149 0
	ldmib	r0, {r5, r10}
.LVL3846:
	.loc 3 157 0
	subs	r7, r10, r5
.LVL3847:
	bmi	.L4468
	.loc 3 171 0
	ldr	r3, .L4562+4
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	mla	r4, r8, r3, r4
.LVL3848:
	.loc 3 174 0
	bne	.L4556
.LVL3849:
.L4472:
	.loc 3 215 0
	ldr	fp, .L4562+8
.LVL3850:
	ldr	r3, [fp]
	cmp	r3, #4
	beq	.L4478
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4557
.L4479:
	.loc 3 224 0 is_stmt 1
	mov	r10, #1
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 221 0
	ldr	r5, [r6]
	.loc 3 223 0
	str	r2, [fp, #8]
	str	r2, [fp, #32]
	mov	r2, #0
	.loc 3 224 0
	ldr	r1, .L4562+12
	.loc 3 231 0
	ldr	r0, .L4562+16
	.loc 3 224 0
	str	r10, [r1, #-1204]
	.loc 3 232 0
	ldr	r1, .L4562+20
	.loc 3 233 0
	ldr	ip, .L4562+24
	.loc 3 230 0
	ldr	lr, .L4562+28
	.loc 3 232 0
	stmib	r9, {r0, r1}
	.loc 3 222 0
	str	r3, [fp, #4]
	str	r3, [fp, #16]
	.loc 3 233 0
	add	r3, ip, r3, asl #4
	.loc 3 221 0
	str	r5, [fp, #12]
	.loc 3 233 0
	str	r3, [sp, #24]
.LVL3851:
	.loc 3 230 0
	str	lr, [r9]
.L4481:
.LVL3852:
	.loc 3 245 0
	add	r3, r2, #1
	str	r3, [fp]
.LBB854:
	.loc 3 252 0
	ldr	r3, [r6, #44]
	.loc 3 251 0
	ldr	r5, [r6, #32]
.LVL3853:
	.loc 3 252 0
	str	r3, [sp, #8]
.LVL3854:
	.loc 3 253 0
	ldr	r3, [r6, #52]
.LVL3855:
	.loc 3 274 0
	ldr	r9, [r6, #40]
	.loc 3 253 0
	str	r3, [sp, #12]
.LVL3856:
	.loc 3 273 0
	ldr	r3, [r6, #36]
.LVL3857:
	.loc 3 275 0
	cmp	r5, r9
	.loc 3 273 0
	str	r3, [sp, #16]
.LVL3858:
	.loc 3 275 0
	moveq	r3, #0
.LVL3859:
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r3, [r6, #29]	@ zero_extendqisi2
.L4484:
.LVL3860:
	.loc 3 286 0 is_stmt 1
	ldr	r6, [r6, #24]
.LVL3861:
	cmp	r6, #128
	beq	.L4558
	.loc 3 294 0
	cmp	r6, #0
	bne	.L4487
.LVL3862:
	mov	fp, r3, lsr #2
	ldr	r3, .L4562+32
.LVL3863:
	ldr	r2, .L4562+36
	str	r3, [sp, #20]
	ldr	r3, [sp, #24]
	.loc 3 297 0
	add	fp, r2, fp, asl #6
	add	r10, r3, #16
.LVL3864:
.L4489:
	mov	lr, r4, asr #16
	cmp	lr, #0
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, lr, #1
	ldr	r3, [sp, #20]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r9, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r6, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3865:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [fp, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r7, r7, #1
	.loc 3 297 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	.loc 3 296 0
	cmn	r7, #1
	.loc 3 297 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r8
.LVL3866:
	.loc 3 297 0
	add	r6, r6, r3, asl #8
	ldr	r3, [r6, #252]
	add	r10, r10, #16
.LVL3867:
	str	r3, [r10, #-32]
.LVL3868:
	.loc 3 296 0
	bne	.L4489
.LVL3869:
.L4468:
.LBE854:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3870:
.L4556:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4472
	.loc 3 178 0
	cmp	r5, #0
	beq	.L4473
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB861:
	.loc 3 181 0
	mvnne	r3, fp
	uxthne	r3, r3
.LBE861:
	.loc 3 179 0
	bne	.L4552
	.loc 3 186 0
	tst	r3, #2
	beq	.L4473
.LBB862:
	.loc 3 188 0
	uxth	r3, fp
.L4552:
	mov	r0, r3
.LVL3871:
	mov	r1, r8
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL3872:
	.loc 3 191 0
	ldr	r3, [sp, #8]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 191 0
	add	r4, r4, r3
.LVL3873:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL3874:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL3875:
.L4473:
.LBE862:
	.loc 3 194 0
	ldr	r3, .L4562+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L4475
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L4559
	.loc 3 201 0
	tst	r3, #8
	beq	.L4475
.LBB863:
	.loc 3 203 0
	uxth	r0, fp
	mov	r1, r8
	bl	__aeabi_idiv
.LVL3876:
	.loc 3 204 0
	rsb	r10, r0, r10
	str	r10, [r6, #8]
.LVL3877:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL3878:
.L4475:
.LBE863:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L4472
	b	.L4468
.LVL3879:
.L4557:
	.loc 3 216 0
	ldr	r2, .L4562+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L4560
.L4478:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3880:
	.loc 3 219 0
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L4479
.L4480:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [fp, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, fp, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L4562+8
	.loc 3 240 0
	ldr	ip, .L4562+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [fp, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	ip, .L4562+24
	ldr	r2, [fp]
	add	r3, ip, r3, asl #2
	str	r3, [sp, #24]
.LVL3881:
	b	.L4481
.LVL3882:
.L4487:
.LBB864:
.LBB855:
	.loc 3 303 0
	sub	r2, r6, #1
.LVL3883:
	.loc 3 304 0
	tst	r2, r6
	bne	.L4490
.LBB856:
	.loc 3 305 0
	mov	r2, r2, asl #16
.LVL3884:
	mvn	r2, r2, lsr #16
	.loc 3 306 0
	sub	r1, r7, #1
	cmn	r1, #1
	str	r1, [sp, #44]
	.loc 3 305 0
	mvn	ip, r2, asl #16
.LVL3885:
	.loc 3 306 0
	str	r1, [sp, #28]
.LVL3886:
	beq	.L4561
	ldr	r2, .L4562+36
	mov	r3, r3, lsr #2
.LVL3887:
	str	r2, [sp, #56]
	str	r3, [sp, #60]
	.loc 3 307 0
	add	r3, r2, r3, asl #6
	ldr	r2, [sp, #24]
	str	r7, [sp, #48]
	add	r2, r2, #32
	.loc 3 306 0
	mov	r10, r4
	mov	r6, r2
.LVL3888:
	mov	r7, ip
	mov	fp, r3
	ldr	r1, .L4562+32
.LVL3889:
	str	r4, [sp, #52]
	str	r1, [sp, #20]
	mov	r1, r8, asl #1
	str	r1, [sp, #32]
	add	r1, r8, #65536
	str	r1, [sp, #40]
	str	r8, [sp, #36]
.LVL3890:
.L4494:
	.loc 3 307 0
	and	r4, r10, r7
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	ldr	r2, [sp, #20]
	ldr	ip, [sp, #16]
	ldr	r8, [r2]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r2, r10, #65536
	subgt	r3, r3, #1
	and	r2, r2, r7
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r9, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3891:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, r10
	ldr	r2, [sp, #12]
	.loc 3 311 0
	and	r4, r4, r7
	.loc 3 307 0
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	.loc 3 307 0
	ldr	r1, [sp, #8]
	.loc 3 311 0
	subgt	r3, r3, #1
	.loc 3 307 0
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	.loc 3 311 0
	ldr	r1, [sp, #20]
	.loc 3 307 0
	add	ip, r8, r2, asl #8
	ldr	r2, [ip, #252]
	.loc 3 311 0
	ldr	ip, [sp, #16]
	.loc 3 307 0
	str	r2, [r6, #-32]
.LVL3892:
	ldr	r2, [sp, #40]
	.loc 3 311 0
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r2, r2, r10
	and	r2, r2, r7
	ldr	r8, [r1]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r9, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3893:
	.loc 3 306 0
	ldr	r2, [sp, #28]
	.loc 3 311 0
	mov	r4, r4, asr #8
	.loc 3 306 0
	subs	r2, r2, #2
	.loc 3 311 0
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	.loc 3 306 0
	str	r2, [sp, #28]
.LVL3894:
	ldr	r2, [sp, #32]
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r10, r2, r10
.LVL3895:
	ldr	r2, [sp, #12]
	add	r6, r6, #32
.LVL3896:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	add	ip, r8, r3, asl #8
	ldr	r3, [ip, #252]
	str	r3, [r6, #-48]
.LVL3897:
	.loc 3 306 0
	bpl	.L4494
	ldr	r4, [sp, #52]
	ldr	r8, [sp, #36]
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #32]
	mov	r3, r3, lsr #1
	add	r4, r4, r8, asl #1
	add	r2, r3, #1
	mov	ip, r7
	mla	r4, r1, r3, r4
	ldr	r7, [sp, #48]
.LVL3898:
	ldr	r3, [sp, #24]
	.loc 3 316 0
	tst	r7, #1
	add	r3, r3, r2, asl #5
	str	r3, [sp, #24]
	bne	.L4468
.LVL3899:
.L4509:
	.loc 3 317 0
	and	r6, r4, ip
	ldr	r2, [sp, #20]
	mov	r3, r6, asr #16
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	add	r4, r4, #65536
	and	r4, r4, ip
	ldr	ip, [sp, #16]
.LVL3900:
	subgt	r2, r3, #1
	ldrb	ip, [ip, r6, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r9, r6, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL3901:
	ldr	r3, [sp, #56]
	mov	fp, r6, asl #16
	add	fp, r3, fp, lsr #26
	ldr	r3, [sp, #60]
	ldr	r2, [sp, #12]
	ldrb	r3, [fp, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	str	r3, [r2]
	b	.L4468
.LVL3902:
.L4555:
.LBE856:
.LBE855:
.LBE864:
	.loc 3 127 0
	ldr	r2, [r9, #48]
	mov	r1, #1
	mov	r0, #2
.LVL3903:
	bl	R_GetDrawColumnFunc
.LVL3904:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3905:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL3906:
.L4490:
	.cfi_restore_state
.LBB865:
.LBB859:
.LBB857:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r6, asl #16
.LVL3907:
	.loc 3 325 0
	blt	.L4499
	.loc 3 328 0
	cmp	r4, r6
	blt	.L4498
.L4500:
	rsb	r4, r6, r4
.LVL3908:
	cmp	r6, r4
	ble	.L4500
.L4498:
	.loc 3 332 0
	add	r10, r4, #65536
.LVL3909:
	.loc 3 333 0
	cmp	r10, r6
	blt	.L4501
.L4502:
	rsb	r10, r6, r10
.LVL3910:
	cmp	r10, r6
	bge	.L4502
.L4501:
	.loc 3 345 0
	mov	fp, #0
	ldr	r1, .L4562+32
	ldr	r2, .L4562+36
	mov	r3, r3, lsr #2
.LVL3911:
	str	r1, [sp, #20]
	add	r3, r2, r3, asl #6
	add	r1, r7, #1
	str	r1, [sp, #28]
.LVL3912:
	str	r3, [sp, #32]
.LVL3913:
.L4506:
	mov	r3, r4, asr #16
	ldr	r2, [sp, #20]
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	lr, [ip, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r9, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r10, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3914:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #32]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r8
.LVL3915:
	.loc 3 345 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	.loc 3 350 0
	add	r10, r10, r8
.LVL3916:
	.loc 3 345 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	str	r3, [r2, fp, asl #4]
.LVL3917:
	.loc 3 339 0
	ldr	r3, [sp, #28]
	add	fp, fp, #1
.LVL3918:
	.loc 3 348 0
	rsbge	r4, r6, r4
.LVL3919:
	.loc 3 350 0
	cmp	r10, r6
	rsbge	r10, r6, r10
.LVL3920:
	.loc 3 339 0
	cmp	fp, r3
	bne	.L4506
.LBE857:
.LBE859:
.LBE865:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3921:
.L4499:
	.cfi_restore_state
.LBB866:
.LBB860:
.LBB858:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL3922:
	bpl	.L4498
.LVL3923:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL3924:
	bmi	.L4499
	b	.L4498
.LVL3925:
.L4560:
.LBE858:
.LBE860:
.LBE866:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [fp, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L4478
	b	.L4480
.LVL3926:
.L4558:
	ldr	r1, .L4562+32
	ldr	r2, .L4562+36
	mov	r3, r3, lsr #2
.LVL3927:
	str	r1, [sp, #20]
	ldr	r1, [sp, #24]
.LBB867:
	.loc 3 289 0
	add	r3, r2, r3, asl #6
	add	fp, r1, #16
	str	r3, [sp, #24]
.LVL3928:
.L4486:
	ldr	r3, [sp, #20]
	bic	r6, r4, #-16777216
	ldr	ip, [sp, #16]
	bic	r6, r6, #8388608
	ldr	r10, [r3]
	add	r3, r4, #65536
	movs	r2, r6, asr #16
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	bic	r3, r3, #-16777216
	subne	r2, r2, #1
	bic	r3, r3, #8388608
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r9, r6, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3929:
	mov	r6, r6, asr #8
	ldr	r3, [sp, #24]
	uxtb	r6, r6
	ldrb	r3, [r3, r6, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r7, r7, #1
	.loc 3 289 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	.loc 3 288 0
	cmn	r7, #1
	.loc 3 289 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r8
.LVL3930:
	.loc 3 289 0
	add	r10, r10, r3, asl #8
	ldr	r3, [r10, #252]
	add	fp, fp, #16
.LVL3931:
	str	r3, [fp, #-32]
.LVL3932:
	.loc 3 288 0
	bne	.L4486
.LBE867:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3933:
.L4559:
	.cfi_restore_state
.LBB868:
	.loc 3 197 0
	mvn	r0, fp
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL3934:
	.loc 3 198 0
	rsb	r10, r0, r10
	str	r10, [r6, #8]
.LVL3935:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL3936:
.LBE868:
	b	.L4475
.LVL3937:
.L4561:
	mov	r3, r3, lsr #2
.LVL3938:
	str	r3, [sp, #60]
	ldr	r3, .L4562+32
	str	r3, [sp, #20]
	ldr	r3, .L4562+36
	str	r3, [sp, #56]
	b	.L4509
.L4563:
	.align	2
.L4562:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	V_Palette32
	.word	filter_roundedUVMap
	.word	viewheight
	.cfi_endproc
.LFE152:
	.size	R_DrawTranslatedColumn32_RoundedUV_PointZ, .-R_DrawTranslatedColumn32_RoundedUV_PointZ
	.align	2
	.type	R_DrawTLColumn32_RoundedUV_PointZ, %function
R_DrawTLColumn32_RoundedUV_PointZ:
.LFB116:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3939:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r10, .L4658
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL3940:
	.loc 3 126 0
	ldr	r3, [r10, #64]
	.loc 3 113 0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	.loc 3 126 0
	cmp	r9, r3
	.loc 3 113 0
	mov	r6, r0
	.loc 3 121 0
	ldr	fp, [r0, #28]
.LVL3941:
	.loc 3 126 0
	bgt	.L4651
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL3942:
	.loc 3 157 0
	subs	r7, r8, r5
.LVL3943:
	bmi	.L4564
	.loc 3 171 0
	ldr	r3, .L4658+4
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	mla	r4, r9, r3, r4
.LVL3944:
	.loc 3 174 0
	bne	.L4652
.LVL3945:
.L4568:
	.loc 3 215 0
	ldr	fp, .L4658+8
.LVL3946:
	ldr	r3, [fp]
	cmp	r3, #4
	beq	.L4574
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4653
.L4575:
	.loc 3 224 0 is_stmt 1
	mov	r8, #2
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 226 0
	ldr	r3, .L4658+12
	.loc 3 221 0
	ldr	r5, [r6]
	.loc 3 226 0
	ldr	r0, [r3]
	.loc 3 223 0
	str	r2, [fp, #8]
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 223 0
	str	r2, [fp, #32]
	mov	r2, #0
	.loc 3 224 0
	ldr	r1, .L4658+16
	.loc 3 226 0
	str	r0, [fp, #1008]
	.loc 3 224 0
	str	r8, [r1, #-1204]
	.loc 3 231 0
	ldr	r0, .L4658+20
	.loc 3 232 0
	ldr	r1, .L4658+24
	.loc 3 233 0
	ldr	ip, .L4658+28
	.loc 3 230 0
	ldr	lr, .L4658+32
	.loc 3 232 0
	stmib	r10, {r0, r1}
	.loc 3 222 0
	str	r3, [fp, #4]
	str	r3, [fp, #16]
	.loc 3 233 0
	add	r3, ip, r3, asl #4
	.loc 3 221 0
	str	r5, [fp, #12]
	.loc 3 233 0
	str	r3, [sp, #24]
.LVL3947:
	.loc 3 230 0
	str	lr, [r10]
.L4577:
.LVL3948:
	.loc 3 245 0
	add	r3, r2, #1
	str	r3, [fp]
.LBB869:
	.loc 3 252 0
	ldr	r3, [r6, #44]
	.loc 3 251 0
	ldr	r5, [r6, #32]
.LVL3949:
	.loc 3 274 0
	ldr	r10, [r6, #40]
	.loc 3 252 0
	str	r3, [sp, #12]
.LVL3950:
	.loc 3 273 0
	ldr	r3, [r6, #36]
.LVL3951:
	.loc 3 275 0
	cmp	r5, r10
	.loc 3 273 0
	str	r3, [sp, #16]
.LVL3952:
	.loc 3 275 0
	moveq	r3, #0
.LVL3953:
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r3, [r6, #29]	@ zero_extendqisi2
.L4580:
.LVL3954:
	.loc 3 286 0 is_stmt 1
	ldr	r6, [r6, #24]
.LVL3955:
	cmp	r6, #128
	beq	.L4654
	.loc 3 294 0
	cmp	r6, #0
	bne	.L4583
.LVL3956:
	mov	fp, r3, lsr #2
	ldr	r3, .L4658+36
.LVL3957:
	ldr	r2, .L4658+40
	str	r3, [sp, #20]
	ldr	r3, [sp, #24]
	.loc 3 297 0
	add	fp, r2, fp, asl #6
	add	r8, r3, #16
.LVL3958:
.L4585:
	mov	lr, r4, asr #16
	cmp	lr, #0
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, lr, #1
	ldr	r3, [sp, #20]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r6, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3959:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [fp, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r7, r7, #1
	.loc 3 297 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r7, #1
	.loc 3 297 0
	add	r6, r6, r3, asl #8
	ldr	r3, [r6, #252]
	.loc 3 300 0
	add	r4, r4, r9
.LVL3960:
	.loc 3 297 0
	str	r3, [r8, #-16]
.LVL3961:
	add	r8, r8, #16
.LVL3962:
	.loc 3 296 0
	bne	.L4585
.LVL3963:
.L4564:
.LBE869:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3964:
.L4652:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4568
	.loc 3 178 0
	cmp	r5, #0
	beq	.L4569
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB876:
	.loc 3 181 0
	mvnne	r3, fp
	uxthne	r3, r3
.LBE876:
	.loc 3 179 0
	bne	.L4648
	.loc 3 186 0
	tst	r3, #2
	beq	.L4569
.LBB877:
	.loc 3 188 0
	uxth	r3, fp
.L4648:
	mov	r0, r3
.LVL3965:
	mov	r1, r9
	str	r3, [sp, #12]
	bl	__aeabi_idiv
.LVL3966:
	.loc 3 191 0
	ldr	r3, [sp, #12]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 191 0
	add	r4, r4, r3
.LVL3967:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL3968:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL3969:
.L4569:
.LBE877:
	.loc 3 194 0
	ldr	r3, .L4658+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L4571
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L4655
	.loc 3 201 0
	tst	r3, #8
	beq	.L4571
.LBB878:
	.loc 3 203 0
	uxth	r0, fp
	mov	r1, r9
	bl	__aeabi_idiv
.LVL3970:
	.loc 3 204 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL3971:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL3972:
.L4571:
.LBE878:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L4568
	b	.L4564
.LVL3973:
.L4653:
	.loc 3 216 0
	ldr	r2, .L4658+16
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L4656
.L4574:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL3974:
	.loc 3 219 0
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L4575
.L4576:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [fp, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, fp, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L4658+8
	.loc 3 240 0
	ldr	ip, .L4658+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [fp, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	ip, .L4658+28
	ldr	r2, [fp]
	add	r3, ip, r3, asl #2
	str	r3, [sp, #24]
.LVL3975:
	b	.L4577
.LVL3976:
.L4583:
.LBB879:
.LBB870:
	.loc 3 303 0
	sub	r2, r6, #1
.LVL3977:
	.loc 3 304 0
	tst	r2, r6
	bne	.L4586
.LBB871:
	.loc 3 305 0
	mov	ip, r2, asl #16
	mvn	ip, ip, lsr #16
	.loc 3 306 0
	sub	r2, r7, #1
.LVL3978:
	cmn	r2, #1
	str	r2, [sp, #44]
	.loc 3 305 0
	mvn	ip, ip, asl #16
.LVL3979:
	.loc 3 306 0
	str	r2, [sp, #28]
.LVL3980:
	beq	.L4657
	ldr	r2, .L4658+40
.LVL3981:
	mov	r3, r3, lsr #2
.LVL3982:
	str	r2, [sp, #56]
	str	r3, [sp, #60]
	.loc 3 307 0
	add	r3, r2, r3, asl #6
	ldr	r2, [sp, #24]
	str	r7, [sp, #48]
	add	r2, r2, #32
	.loc 3 306 0
	mov	r8, r4
	mov	r6, r2
.LVL3983:
	mov	r7, ip
	mov	fp, r3
	ldr	r1, .L4658+36
	str	r4, [sp, #52]
	str	r1, [sp, #20]
	mov	r1, r9, asl #1
	str	r1, [sp, #32]
	add	r1, r9, #65536
	str	r1, [sp, #40]
	str	r9, [sp, #36]
.LVL3984:
.L4590:
	.loc 3 307 0
	and	r4, r8, r7
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	ldr	r2, [sp, #20]
	ldr	ip, [sp, #16]
	ldr	r9, [r2]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r2, r8, #65536
	subgt	r3, r3, #1
	and	r2, r2, r7
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3985:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, r8
	ldr	r2, [sp, #12]
	.loc 3 311 0
	and	r4, r4, r7
	.loc 3 307 0
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	.loc 3 307 0
	add	ip, r9, r2, asl #8
	ldr	r2, [ip, #252]
	.loc 3 311 0
	ldr	ip, [sp, #16]
	.loc 3 307 0
	str	r2, [r6, #-32]
.LVL3986:
	.loc 3 311 0
	ldr	r2, [sp, #20]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [r2]
	ldr	r2, [sp, #40]
	subgt	r3, r3, #1
	add	r2, r2, r8
	and	r2, r2, r7
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL3987:
	.loc 3 306 0
	ldr	r2, [sp, #28]
	.loc 3 311 0
	mov	r4, r4, asr #8
	.loc 3 306 0
	subs	r2, r2, #2
	.loc 3 311 0
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	.loc 3 306 0
	str	r2, [sp, #28]
.LVL3988:
	ldr	r2, [sp, #32]
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r8, r2, r8
.LVL3989:
	ldr	r2, [sp, #12]
	add	r6, r6, #32
.LVL3990:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	add	ip, r9, r3, asl #8
	ldr	r3, [ip, #252]
	str	r3, [r6, #-48]
.LVL3991:
	.loc 3 306 0
	bpl	.L4590
	ldr	r4, [sp, #52]
	ldr	r9, [sp, #36]
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #32]
	mov	r3, r3, lsr #1
	add	r4, r4, r9, asl #1
	add	r2, r3, #1
	mov	ip, r7
	mla	r4, r1, r3, r4
	ldr	r7, [sp, #48]
.LVL3992:
	ldr	r3, [sp, #24]
	.loc 3 316 0
	tst	r7, #1
	add	r3, r3, r2, asl #5
	str	r3, [sp, #24]
	bne	.L4564
.LVL3993:
.L4605:
	.loc 3 317 0
	and	r6, r4, ip
	ldr	r2, [sp, #20]
	mov	r3, r6, asr #16
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	add	r4, r4, #65536
	and	ip, ip, r4
.LVL3994:
	subgt	r2, r3, #1
	ldrb	r3, [r5, ip, asr #16]	@ zero_extendqisi2
	ldr	ip, [sp, #16]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	ip, [ip, r6, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL3995:
	ldr	r3, [sp, #56]
	mov	fp, r6, asl #16
	add	fp, r3, fp, lsr #26
	ldr	r3, [sp, #60]
	ldr	r2, [sp, #12]
	ldrb	r3, [fp, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	str	r3, [r2]
	b	.L4564
.LVL3996:
.L4651:
.LBE871:
.LBE870:
.LBE879:
	.loc 3 127 0
	mov	r0, #1
.LVL3997:
	ldr	r2, [r10, #48]
	mov	r1, r0
	bl	R_GetDrawColumnFunc
.LVL3998:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3999:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4000:
.L4586:
	.cfi_restore_state
.LBB880:
.LBB874:
.LBB872:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r6, asl #16
.LVL4001:
	.loc 3 325 0
	blt	.L4595
	.loc 3 328 0
	cmp	r4, r6
	blt	.L4594
.L4596:
	rsb	r4, r6, r4
.LVL4002:
	cmp	r6, r4
	ble	.L4596
.L4594:
	.loc 3 332 0
	add	r8, r4, #65536
.LVL4003:
	.loc 3 333 0
	cmp	r8, r6
	blt	.L4597
.L4598:
	rsb	r8, r6, r8
.LVL4004:
	cmp	r8, r6
	bge	.L4598
.L4597:
	.loc 3 345 0
	mov	fp, #0
	ldr	r1, .L4658+36
	ldr	r2, .L4658+40
	mov	r3, r3, lsr #2
.LVL4005:
	str	r1, [sp, #20]
	add	r3, r2, r3, asl #6
	add	r1, r7, #1
	str	r1, [sp, #28]
.LVL4006:
	str	r3, [sp, #32]
.LVL4007:
.L4602:
	mov	r3, r4, asr #16
	ldr	r2, [sp, #20]
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	lr, [ip, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r8, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4008:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #32]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r9
.LVL4009:
	.loc 3 345 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	.loc 3 350 0
	add	r8, r8, r9
.LVL4010:
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	str	r3, [r2, fp, asl #4]
.LVL4011:
	.loc 3 339 0
	ldr	r3, [sp, #28]
	add	fp, fp, #1
.LVL4012:
	.loc 3 348 0
	rsbge	r4, r6, r4
.LVL4013:
	.loc 3 350 0
	cmp	r8, r6
	rsbge	r8, r6, r8
.LVL4014:
	.loc 3 339 0
	cmp	fp, r3
	bne	.L4602
.LBE872:
.LBE874:
.LBE880:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4015:
.L4595:
	.cfi_restore_state
.LBB881:
.LBB875:
.LBB873:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL4016:
	bpl	.L4594
.LVL4017:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL4018:
	bmi	.L4595
	b	.L4594
.LVL4019:
.L4656:
.LBE873:
.LBE875:
.LBE881:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [fp, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L4574
	b	.L4576
.LVL4020:
.L4654:
	ldr	r1, .L4658+36
	ldr	r2, .L4658+40
	mov	r3, r3, lsr #2
.LVL4021:
	str	r1, [sp, #20]
	ldr	r1, [sp, #24]
.LBB882:
	.loc 3 289 0
	add	r3, r2, r3, asl #6
	add	fp, r1, #16
	str	r3, [sp, #24]
.LVL4022:
.L4582:
	ldr	r3, [sp, #20]
	bic	r6, r4, #-16777216
	ldr	ip, [sp, #16]
	bic	r6, r6, #8388608
	ldr	r8, [r3]
	add	r3, r4, #65536
	movs	r2, r6, asr #16
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	bic	r3, r3, #-16777216
	subne	r2, r2, #1
	bic	r3, r3, #8388608
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4023:
	mov	r6, r6, asr #8
	ldr	r3, [sp, #24]
	uxtb	r6, r6
	ldrb	r3, [r3, r6, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r7, r7, #1
	.loc 3 289 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r7, #1
	.loc 3 289 0
	add	r8, r8, r3, asl #8
	ldr	r3, [r8, #252]
	.loc 3 292 0
	add	r4, r4, r9
.LVL4024:
	.loc 3 289 0
	str	r3, [fp, #-16]
.LVL4025:
	add	fp, fp, #16
.LVL4026:
	.loc 3 288 0
	bne	.L4582
.LBE882:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4027:
.L4655:
	.cfi_restore_state
.LBB883:
	.loc 3 197 0
	mvn	r0, fp
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL4028:
	.loc 3 198 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL4029:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL4030:
.LBE883:
	b	.L4571
.LVL4031:
.L4657:
	mov	r3, r3, lsr #2
.LVL4032:
	str	r3, [sp, #60]
	ldr	r3, .L4658+36
	str	r3, [sp, #20]
	ldr	r3, .L4658+40
	str	r3, [sp, #56]
	b	.L4605
.L4659:
	.align	2
.L4658:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushHTTL32
	.word	R_FlushQuadTL32
	.word	.LANCHOR0+3140
	.word	R_FlushWholeTL32
	.word	V_Palette32
	.word	filter_roundedUVMap
	.word	viewheight
	.cfi_endproc
.LFE116:
	.size	R_DrawTLColumn32_RoundedUV_PointZ, .-R_DrawTLColumn32_RoundedUV_PointZ
	.align	2
	.type	R_DrawColumn32_RoundedUV_PointZ, %function
R_DrawColumn32_RoundedUV_PointZ:
.LFB80:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4033:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r10, .L4754
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL4034:
	.loc 3 126 0
	ldr	r3, [r10, #64]
	.loc 3 113 0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	.loc 3 126 0
	cmp	r9, r3
	.loc 3 113 0
	mov	r6, r0
	.loc 3 121 0
	ldr	fp, [r0, #28]
.LVL4035:
	.loc 3 126 0
	bgt	.L4747
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL4036:
	.loc 3 157 0
	subs	r7, r8, r5
.LVL4037:
	bmi	.L4660
	.loc 3 171 0
	ldr	r3, .L4754+4
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	mla	r4, r9, r3, r4
.LVL4038:
	.loc 3 174 0
	bne	.L4748
.LVL4039:
.L4664:
	.loc 3 215 0
	ldr	fp, .L4754+8
.LVL4040:
	ldr	r3, [fp]
	cmp	r3, #4
	beq	.L4670
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4749
.L4671:
	.loc 3 224 0 is_stmt 1
	mov	r8, #1
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 221 0
	ldr	r5, [r6]
	.loc 3 223 0
	str	r2, [fp, #8]
	str	r2, [fp, #32]
	mov	r2, #0
	.loc 3 224 0
	ldr	r1, .L4754+12
	.loc 3 231 0
	ldr	r0, .L4754+16
	.loc 3 224 0
	str	r8, [r1, #-1204]
	.loc 3 232 0
	ldr	r1, .L4754+20
	.loc 3 233 0
	ldr	ip, .L4754+24
	.loc 3 230 0
	ldr	lr, .L4754+28
	.loc 3 232 0
	stmib	r10, {r0, r1}
	.loc 3 222 0
	str	r3, [fp, #4]
	str	r3, [fp, #16]
	.loc 3 233 0
	add	r3, ip, r3, asl #4
	.loc 3 221 0
	str	r5, [fp, #12]
	.loc 3 233 0
	str	r3, [sp, #24]
.LVL4041:
	.loc 3 230 0
	str	lr, [r10]
.L4673:
.LVL4042:
	.loc 3 245 0
	add	r3, r2, #1
	str	r3, [fp]
.LBB884:
	.loc 3 252 0
	ldr	r3, [r6, #44]
	.loc 3 251 0
	ldr	r5, [r6, #32]
.LVL4043:
	.loc 3 274 0
	ldr	r10, [r6, #40]
	.loc 3 252 0
	str	r3, [sp, #12]
.LVL4044:
	.loc 3 273 0
	ldr	r3, [r6, #36]
.LVL4045:
	.loc 3 275 0
	cmp	r5, r10
	.loc 3 273 0
	str	r3, [sp, #16]
.LVL4046:
	.loc 3 275 0
	moveq	r3, #0
.LVL4047:
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r3, [r6, #29]	@ zero_extendqisi2
.L4676:
.LVL4048:
	.loc 3 286 0 is_stmt 1
	ldr	r6, [r6, #24]
.LVL4049:
	cmp	r6, #128
	beq	.L4750
	.loc 3 294 0
	cmp	r6, #0
	bne	.L4679
.LVL4050:
	mov	fp, r3, lsr #2
	ldr	r3, .L4754+32
.LVL4051:
	ldr	r2, .L4754+36
	str	r3, [sp, #20]
	ldr	r3, [sp, #24]
	.loc 3 297 0
	add	fp, r2, fp, asl #6
	add	r8, r3, #16
.LVL4052:
.L4681:
	mov	lr, r4, asr #16
	cmp	lr, #0
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, lr, #1
	ldr	r3, [sp, #20]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r6, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4053:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [fp, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r7, r7, #1
	.loc 3 297 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r7, #1
	.loc 3 297 0
	add	r6, r6, r3, asl #8
	ldr	r3, [r6, #252]
	.loc 3 300 0
	add	r4, r4, r9
.LVL4054:
	.loc 3 297 0
	str	r3, [r8, #-16]
.LVL4055:
	add	r8, r8, #16
.LVL4056:
	.loc 3 296 0
	bne	.L4681
.LVL4057:
.L4660:
.LBE884:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4058:
.L4748:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4664
	.loc 3 178 0
	cmp	r5, #0
	beq	.L4665
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB891:
	.loc 3 181 0
	mvnne	r3, fp
	uxthne	r3, r3
.LBE891:
	.loc 3 179 0
	bne	.L4744
	.loc 3 186 0
	tst	r3, #2
	beq	.L4665
.LBB892:
	.loc 3 188 0
	uxth	r3, fp
.L4744:
	mov	r0, r3
.LVL4059:
	mov	r1, r9
	str	r3, [sp, #12]
	bl	__aeabi_idiv
.LVL4060:
	.loc 3 191 0
	ldr	r3, [sp, #12]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 191 0
	add	r4, r4, r3
.LVL4061:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL4062:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL4063:
.L4665:
.LBE892:
	.loc 3 194 0
	ldr	r3, .L4754+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L4667
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L4751
	.loc 3 201 0
	tst	r3, #8
	beq	.L4667
.LBB893:
	.loc 3 203 0
	uxth	r0, fp
	mov	r1, r9
	bl	__aeabi_idiv
.LVL4064:
	.loc 3 204 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL4065:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL4066:
.L4667:
.LBE893:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L4664
	b	.L4660
.LVL4067:
.L4749:
	.loc 3 216 0
	ldr	r2, .L4754+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L4752
.L4670:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4068:
	.loc 3 219 0
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L4671
.L4672:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [fp, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, fp, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L4754+8
	.loc 3 240 0
	ldr	ip, .L4754+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [fp, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	ip, .L4754+24
	ldr	r2, [fp]
	add	r3, ip, r3, asl #2
	str	r3, [sp, #24]
.LVL4069:
	b	.L4673
.LVL4070:
.L4679:
.LBB894:
.LBB885:
	.loc 3 303 0
	sub	r2, r6, #1
.LVL4071:
	.loc 3 304 0
	tst	r2, r6
	bne	.L4682
.LBB886:
	.loc 3 305 0
	mov	ip, r2, asl #16
	mvn	ip, ip, lsr #16
	.loc 3 306 0
	sub	r2, r7, #1
.LVL4072:
	cmn	r2, #1
	str	r2, [sp, #44]
	.loc 3 305 0
	mvn	ip, ip, asl #16
.LVL4073:
	.loc 3 306 0
	str	r2, [sp, #28]
.LVL4074:
	beq	.L4753
	ldr	r2, .L4754+36
.LVL4075:
	mov	r3, r3, lsr #2
.LVL4076:
	str	r2, [sp, #60]
	str	r3, [sp, #56]
	.loc 3 307 0
	add	r3, r2, r3, asl #6
	ldr	r2, [sp, #24]
	str	r7, [sp, #48]
	add	r2, r2, #32
	.loc 3 306 0
	mov	r8, r4
	mov	r6, r2
.LVL4077:
	mov	r7, ip
	mov	fp, r3
	ldr	r1, .L4754+32
	str	r4, [sp, #52]
	str	r1, [sp, #20]
	mov	r1, r9, asl #1
	str	r1, [sp, #32]
	add	r1, r9, #65536
	str	r1, [sp, #40]
	str	r9, [sp, #36]
.LVL4078:
.L4686:
	.loc 3 307 0
	and	r4, r8, r7
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	ldr	r2, [sp, #20]
	ldr	ip, [sp, #16]
	ldr	r9, [r2]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r2, r8, #65536
	subgt	r3, r3, #1
	and	r2, r2, r7
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4079:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, r8
	ldr	r2, [sp, #12]
	.loc 3 311 0
	and	r4, r4, r7
	.loc 3 307 0
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	.loc 3 307 0
	add	ip, r9, r2, asl #8
	ldr	r2, [ip, #252]
	.loc 3 311 0
	ldr	ip, [sp, #16]
	.loc 3 307 0
	str	r2, [r6, #-32]
.LVL4080:
	.loc 3 311 0
	ldr	r2, [sp, #20]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [r2]
	ldr	r2, [sp, #40]
	subgt	r3, r3, #1
	add	r2, r2, r8
	and	r2, r2, r7
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4081:
	.loc 3 306 0
	ldr	r2, [sp, #28]
	.loc 3 311 0
	mov	r4, r4, asr #8
	.loc 3 306 0
	subs	r2, r2, #2
	.loc 3 311 0
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	.loc 3 306 0
	str	r2, [sp, #28]
.LVL4082:
	ldr	r2, [sp, #32]
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r8, r2, r8
.LVL4083:
	ldr	r2, [sp, #12]
	add	r6, r6, #32
.LVL4084:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	add	ip, r9, r3, asl #8
	ldr	r3, [ip, #252]
	str	r3, [r6, #-48]
.LVL4085:
	.loc 3 306 0
	bpl	.L4686
	ldr	r4, [sp, #52]
	ldr	r9, [sp, #36]
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #32]
	mov	r3, r3, lsr #1
	add	r4, r4, r9, asl #1
	add	r2, r3, #1
	mov	ip, r7
	mla	r4, r1, r3, r4
	ldr	r7, [sp, #48]
.LVL4086:
	ldr	r3, [sp, #24]
	.loc 3 316 0
	tst	r7, #1
	add	r3, r3, r2, asl #5
	str	r3, [sp, #24]
	bne	.L4660
.LVL4087:
.L4701:
	.loc 3 317 0
	and	r6, r4, ip
	ldr	r2, [sp, #20]
	mov	r3, r6, asr #16
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	add	r4, r4, #65536
	and	ip, ip, r4
.LVL4088:
	subgt	r2, r3, #1
	ldrb	r3, [r5, ip, asr #16]	@ zero_extendqisi2
	ldr	ip, [sp, #16]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	ip, [ip, r6, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL4089:
	ldr	r3, [sp, #60]
	mov	fp, r6, asl #16
	add	fp, r3, fp, lsr #26
	ldr	r3, [sp, #56]
	ldr	r2, [sp, #12]
	ldrb	r3, [fp, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	str	r3, [r2]
	b	.L4660
.LVL4090:
.L4747:
.LBE886:
.LBE885:
.LBE894:
	.loc 3 127 0
	ldr	r2, [r10, #48]
	mov	r1, #1
	mov	r0, #0
.LVL4091:
	bl	R_GetDrawColumnFunc
.LVL4092:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4093:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4094:
.L4682:
	.cfi_restore_state
.LBB895:
.LBB889:
.LBB887:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r6, asl #16
.LVL4095:
	.loc 3 325 0
	blt	.L4691
	.loc 3 328 0
	cmp	r4, r6
	blt	.L4690
.L4692:
	rsb	r4, r6, r4
.LVL4096:
	cmp	r6, r4
	ble	.L4692
.L4690:
	.loc 3 332 0
	add	r8, r4, #65536
.LVL4097:
	.loc 3 333 0
	cmp	r8, r6
	blt	.L4693
.L4694:
	rsb	r8, r6, r8
.LVL4098:
	cmp	r8, r6
	bge	.L4694
.L4693:
	.loc 3 345 0
	mov	fp, #0
	ldr	r1, .L4754+32
	ldr	r2, .L4754+36
	mov	r3, r3, lsr #2
.LVL4099:
	str	r1, [sp, #20]
	add	r3, r2, r3, asl #6
	add	r1, r7, #1
	str	r1, [sp, #28]
.LVL4100:
	str	r3, [sp, #32]
.LVL4101:
.L4698:
	mov	r3, r4, asr #16
	ldr	r2, [sp, #20]
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	lr, [ip, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r8, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4102:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #32]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r9
.LVL4103:
	.loc 3 345 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	.loc 3 350 0
	add	r8, r8, r9
.LVL4104:
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	str	r3, [r2, fp, asl #4]
.LVL4105:
	.loc 3 339 0
	ldr	r3, [sp, #28]
	add	fp, fp, #1
.LVL4106:
	.loc 3 348 0
	rsbge	r4, r6, r4
.LVL4107:
	.loc 3 350 0
	cmp	r8, r6
	rsbge	r8, r6, r8
.LVL4108:
	.loc 3 339 0
	cmp	fp, r3
	bne	.L4698
.LBE887:
.LBE889:
.LBE895:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4109:
.L4691:
	.cfi_restore_state
.LBB896:
.LBB890:
.LBB888:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL4110:
	bpl	.L4690
.LVL4111:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL4112:
	bmi	.L4691
	b	.L4690
.LVL4113:
.L4752:
.LBE888:
.LBE890:
.LBE896:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [fp, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L4670
	b	.L4672
.LVL4114:
.L4750:
	ldr	r1, .L4754+32
	ldr	r2, .L4754+36
	mov	r3, r3, lsr #2
.LVL4115:
	str	r1, [sp, #20]
	ldr	r1, [sp, #24]
.LBB897:
	.loc 3 289 0
	add	r3, r2, r3, asl #6
	add	fp, r1, #16
	str	r3, [sp, #24]
.LVL4116:
.L4678:
	ldr	r3, [sp, #20]
	bic	r6, r4, #-16777216
	ldr	ip, [sp, #16]
	bic	r6, r6, #8388608
	ldr	r8, [r3]
	add	r3, r4, #65536
	movs	r2, r6, asr #16
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	bic	r3, r3, #-16777216
	subne	r2, r2, #1
	bic	r3, r3, #8388608
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4117:
	mov	r6, r6, asr #8
	ldr	r3, [sp, #24]
	uxtb	r6, r6
	ldrb	r3, [r3, r6, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r7, r7, #1
	.loc 3 289 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r7, #1
	.loc 3 289 0
	add	r8, r8, r3, asl #8
	ldr	r3, [r8, #252]
	.loc 3 292 0
	add	r4, r4, r9
.LVL4118:
	.loc 3 289 0
	str	r3, [fp, #-16]
.LVL4119:
	add	fp, fp, #16
.LVL4120:
	.loc 3 288 0
	bne	.L4678
.LBE897:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4121:
.L4751:
	.cfi_restore_state
.LBB898:
	.loc 3 197 0
	mvn	r0, fp
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL4122:
	.loc 3 198 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL4123:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL4124:
.LBE898:
	b	.L4667
.LVL4125:
.L4753:
	mov	r3, r3, lsr #2
.LVL4126:
	str	r3, [sp, #56]
	ldr	r3, .L4754+32
	str	r3, [sp, #20]
	ldr	r3, .L4754+36
	str	r3, [sp, #60]
	b	.L4701
.L4755:
	.align	2
.L4754:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	V_Palette32
	.word	filter_roundedUVMap
	.word	viewheight
	.cfi_endproc
.LFE80:
	.size	R_DrawColumn32_RoundedUV_PointZ, .-R_DrawColumn32_RoundedUV_PointZ
	.align	2
	.type	R_DrawFuzzColumn32_LinearUV_PointZ, %function
R_DrawFuzzColumn32_LinearUV_PointZ:
.LFB185:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4127:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 119 0
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #32]
	.loc 3 126 0
	ldr	r7, .L4796
	.loc 3 119 0
	cmp	r2, r3
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL4128:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 119 0
	ldrneh	r10, [r0, #28]
	moveq	r10, #0
.LVL4129:
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 113 0
	mov	r4, r0
	.loc 3 126 0
	bgt	.L4793
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L4796+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL4130:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL4131:
	bmi	.L4756
.LVL4132:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L4763
.LVL4133:
.L4766:
	.loc 3 215 0
	ldr	r5, .L4796+8
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L4764
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4794
.L4772:
	.loc 3 228 0 is_stmt 1
	ldr	r3, .L4796+12
	.loc 3 224 0
	mov	r8, #4
.LVL4134:
	.loc 3 221 0
	ldr	lr, [r4]
	.loc 3 228 0
	ldr	r9, [r3]
	.loc 3 223 0
	ldmib	r4, {r2, r3}
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	mov	r3, #0
	.loc 3 231 0
	ldr	r0, .L4796+16
	.loc 3 232 0
	ldr	r1, .L4796+20
	.loc 3 224 0
	ldr	r6, .L4796+24
	.loc 3 230 0
	ldr	ip, .L4796+28
	.loc 3 232 0
	stmib	r7, {r0, r1}
.LVL4135:
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r6, #-1204]
	.loc 3 221 0
	str	lr, [r5, #12]
	.loc 3 222 0
	str	r2, [r5, #4]
	str	r2, [r5, #16]
.LVL4136:
	.loc 3 230 0
	str	ip, [r7]
.L4774:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
.L4756:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4137:
.L4763:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4766
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4767
.LBB899:
	.loc 3 181 0
	mvn	r0, r10
.LVL4138:
	mov	r1, r8
	str	r3, [sp, #4]
	uxth	r0, r0
.LVL4139:
.L4792:
.LBE899:
.LBB900:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL4140:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	fp, r0, fp
.LVL4141:
.L4768:
.LBE900:
	.loc 3 194 0
	cmp	r9, r5
	beq	.L4769
	.loc 3 195 0
	tst	r3, #4
	beq	.L4770
.LBB901:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL4142:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	fp, r0, fp
.LVL4143:
.L4769:
.LBE901:
	.loc 3 208 0
	cmp	fp, #0
	bgt	.L4766
	b	.L4756
.L4794:
	.loc 3 216 0
	ldr	r2, .L4796+24
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L4795
.L4764:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4144:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L4772
.L4773:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L4796+8
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L4796+8
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L4774
.LVL4145:
.L4793:
	.loc 3 127 0
	ldr	r2, [r7, #48]
	mov	r1, #1
	mov	r0, #3
.LVL4146:
	bl	R_GetDrawColumnFunc
.LVL4147:
	mov	r3, r0
	mov	r0, r4
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4148:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4149:
.L4795:
	.cfi_restore_state
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L4764
	b	.L4773
.L4770:
	.loc 3 201 0
	tst	r3, #8
	beq	.L4769
.LBB902:
	.loc 3 203 0
	mov	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv
.LVL4150:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	fp, r0, fp
.LVL4151:
	b	.L4769
.LVL4152:
.L4767:
.LBE902:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4768
	str	r3, [sp, #4]
.LBB903:
	.loc 3 188 0
	mov	r0, r10
.LVL4153:
	mov	r1, r8
	b	.L4792
.L4797:
	.align	2
.L4796:
	.word	.LANCHOR1
	.word	viewheight
	.word	.LANCHOR0
	.word	fullcolormap
	.word	R_FlushHTFuzz32
	.word	R_FlushQuadFuzz32
	.word	.LANCHOR2
	.word	R_FlushWholeFuzz32
.LBE903:
	.cfi_endproc
.LFE185:
	.size	R_DrawFuzzColumn32_LinearUV_PointZ, .-R_DrawFuzzColumn32_LinearUV_PointZ
	.align	2
	.type	R_DrawTranslatedColumn32_LinearUV_PointZ, %function
R_DrawTranslatedColumn32_LinearUV_PointZ:
.LFB149:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4154:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #76
	.cfi_def_cfa_offset 112
	.loc 3 126 0
	ldr	r9, .L4884
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #16]
.LVL4155:
	.loc 3 126 0
	ldr	r2, [sp, #16]
	ldr	r3, [r9, #64]
.LVL4156:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL4157:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	.loc 3 126 0
	bgt	.L4877
	.loc 3 149 0
	ldmib	r0, {r8, r10}
.LVL4158:
	.loc 3 157 0
	subs	r3, r10, r8
.LVL4159:
	str	r3, [sp, #48]
	bmi	.L4798
	.loc 3 169 0
	ldr	r2, .L4884+4
.LVL4160:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL4161:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #16]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL4162:
	.loc 3 174 0
	bne	.L4878
.LVL4163:
.L4803:
	.loc 3 215 0
	ldr	r8, .L4884+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L4809
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4879
.L4810:
	.loc 3 222 0 is_stmt 1
	ldmia	r5, {r1, r3}
	.loc 3 224 0
	mov	ip, #1
	.loc 3 223 0
	ldr	r2, [r5, #8]
	.loc 3 224 0
	ldr	r0, .L4884+12
	.loc 3 223 0
	str	r2, [r8, #8]
	str	r2, [r8, #32]
	mov	r2, #0
	.loc 3 224 0
	str	ip, [r0, #-1204]
	.loc 3 221 0
	str	r1, [r8, #12]
	.loc 3 231 0
	ldr	r0, .L4884+16
	.loc 3 232 0
	ldr	r1, .L4884+20
	.loc 3 233 0
	ldr	lr, .L4884+24
	.loc 3 230 0
	ldr	ip, .L4884+28
	.loc 3 232 0
	stmib	r9, {r0, r1}
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, lr, r3, asl #4
	str	r3, [sp, #24]
.LVL4164:
	.loc 3 230 0
	str	ip, [r9]
.L4812:
.LVL4165:
	.loc 3 245 0
	add	r3, r2, #1
.LBB904:
	.loc 3 269 0
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #12]
.LBE904:
	.loc 3 245 0
	str	r3, [r8]
.LVL4166:
.LBB911:
	.loc 3 269 0
	cmp	r2, r1
	.loc 3 252 0
	ldr	fp, [r5, #44]
.LVL4167:
	.loc 3 253 0
	ldr	r3, [r5, #52]
.LVL4168:
	.loc 3 269 0
	beq	.L4836
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r2, [r5, #28]
.LVL4169:
	str	r2, [sp, #4]
.L4815:
.LVL4170:
	.loc 3 286 0 is_stmt 1
	ldr	r2, [r5, #24]
	cmp	r2, #128
	beq	.L4880
	.loc 3 294 0
	cmp	r2, #0
	bne	.L4817
.LVL4171:
	mvn	r1, r4
.LVL4172:
	.loc 3 297 0
	mov	r10, #64
	ldr	r0, .L4884+32
	str	r1, [sp, #20]
	ldr	r1, [sp, #4]
	ldr	r9, [r0]
	ldr	r0, [sp, #48]
	rsb	r1, r1, #65280
	add	r0, r0, #1
	add	r1, r1, #255
	str	r0, [sp, #32]
	str	r1, [sp, #36]
.LVL4173:
.L4818:
	ldr	r7, [sp, #12]
	ldr	lr, [sp, #8]
	add	ip, r4, #65536
	ldrb	r6, [lr, ip, asr #16]	@ zero_extendqisi2
	ldrb	r5, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r7, ip, asr #16]	@ zero_extendqisi2
	ldr	ip, [sp, #4]
	uxth	r1, r4
	mul	r8, ip, r1
	ldrh	r0, [sp, #20]
	str	r8, [sp, #28]
	ldrb	r8, [r3, r6]	@ zero_extendqisi2
	ldr	r6, [sp, #36]
	ldrb	lr, [lr, r4, asr #16]	@ zero_extendqisi2
	mul	r1, r6, r1
	mul	r6, r6, r0
	mul	r0, ip, r0
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	ldrb	lr, [fp, lr]	@ zero_extendqisi2
	ldrb	r5, [fp, r5]	@ zero_extendqisi2
	ldr	ip, [sp, #28]
	ldrb	r8, [fp, r8]	@ zero_extendqisi2
	mov	r6, r6, lsr #26
	mov	r0, r0, lsr #26
	ldrb	r7, [fp, r7]	@ zero_extendqisi2
	smlabb	r0, r10, lr, r0
	mov	ip, ip, lsr #26
	smlabb	r5, r10, r5, r6
	smlabb	ip, r10, r8, ip
	mov	r1, r1, lsr #26
	smlabb	r1, r10, r7, r1
	ldr	r0, [r9, r0, asl #2]
	ldr	lr, [r9, r5, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	r1, [r9, r1, asl #2]
	add	lr, r0, lr
	add	lr, lr, ip
	ldr	r0, [sp, #24]
	add	lr, lr, r1
	str	lr, [r0, r2, asl #4]
.LVL4174:
	.loc 3 296 0
	ldr	r0, [sp, #32]
	add	r2, r2, #1
.LVL4175:
	ldr	r1, [sp, #20]
	cmp	r2, r0
	ldr	r0, [sp, #16]
	rsb	r1, r0, r1
	str	r1, [sp, #20]
	.loc 3 300 0
	add	r4, r4, r0
.LVL4176:
	.loc 3 296 0
	bne	.L4818
.LVL4177:
.L4798:
.LBE911:
	.loc 3 357 0
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4178:
.L4878:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4803
	.loc 3 178 0
	cmp	r8, #0
	beq	.L4804
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4805
.LBB912:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL4179:
	str	r3, [sp, #4]
	bl	__aeabi_idiv
.LVL4180:
	.loc 3 184 0
	ldr	r3, [sp, #4]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL4181:
	.loc 3 183 0
	ldr	r3, [sp, #48]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL4182:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL4183:
	str	r3, [sp, #48]
.LVL4184:
.L4804:
.LBE912:
	.loc 3 194 0
	ldr	r3, .L4884+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L4806
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L4881
	.loc 3 201 0
	tst	r3, #8
	beq	.L4806
.LBB913:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #16]
.L4874:
	bl	__aeabi_idiv
.LVL4185:
	.loc 3 205 0
	ldr	r3, [sp, #48]
	.loc 3 204 0
	rsb	r10, r0, r10
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r10, [r5, #8]
.LVL4186:
	.loc 3 205 0
	str	r3, [sp, #48]
.LVL4187:
.L4806:
.LBE913:
	.loc 3 208 0
	ldr	r3, [sp, #48]
	cmp	r3, #0
	bgt	.L4803
	b	.L4798
.L4879:
	.loc 3 216 0
	ldr	r2, .L4884+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L4882
.L4809:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4188:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L4868
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
.L4811:
	.loc 3 235 0
	ldr	r2, [r5, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r5, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L4884+8
	.loc 3 240 0
	ldr	ip, .L4884+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L4884+24
	str	r7, [sp, #12]
	add	r3, r1, r3, asl #2
	str	r6, [sp, #8]
	ldr	r2, [r8]
	str	r3, [sp, #24]
.LVL4189:
	b	.L4812
.LVL4190:
.L4817:
.LBB914:
.LBB905:
	.loc 3 303 0
	sub	r1, r2, #1
.LVL4191:
	.loc 3 304 0
	tst	r1, r2
	bne	.L4819
.LBB906:
	.loc 3 305 0
	mov	r1, r1, asl #16
.LVL4192:
	mvn	r1, r1, lsr #16
	mvn	r1, r1, asl #16
	.loc 3 306 0
	ldr	r2, [sp, #48]
.LVL4193:
	.loc 3 305 0
	str	r1, [sp, #28]
.LVL4194:
	.loc 3 306 0
	sub	r2, r2, #1
	cmn	r2, #1
	str	r2, [sp, #60]
	str	r2, [sp, #40]
.LVL4195:
	beq	.L4883
	ldr	r2, .L4884+32
.LVL4196:
	.loc 3 307 0
	mov	r6, #64
	mov	r1, r2
.LVL4197:
	str	r2, [sp, #68]
	ldr	r2, [sp, #4]
	ldr	r5, [r1]
.LVL4198:
	rsb	r2, r2, #65280
	add	r2, r2, #255
	str	r2, [sp, #36]
	ldr	r2, [sp, #24]
	str	r4, [sp, #64]
	add	r2, r2, #32
	str	r2, [sp, #32]
	ldr	r2, [sp, #16]
	str	r4, [sp, #20]
	mov	r1, r2, asl #1
	add	r2, r2, #65536
	str	r1, [sp, #52]
	str	r2, [sp, #56]
.LVL4199:
.L4821:
	ldr	lr, [sp, #20]
	ldr	r2, [sp, #16]
	ldr	r4, [sp, #28]
	add	r2, r2, lr
	.loc 3 311 0
	and	r2, r2, r4
	.loc 3 307 0
	and	r1, lr, r4
	.loc 3 311 0
	mvn	r0, r2
	.loc 3 307 0
	mvn	ip, r1
	ldr	r10, [sp, #8]
	.loc 3 311 0
	str	r0, [sp, #44]
	.loc 3 307 0
	ldrb	r8, [r10, r1, asr #16]	@ zero_extendqisi2
	ldr	r0, [sp, #12]
	ldr	r9, [sp, #4]
	add	r7, lr, #65536
	uxth	ip, ip
	ldr	lr, [sp, #36]
	and	r7, r7, r4
	mul	r4, r9, ip
	ldrb	r9, [r3, r8]	@ zero_extendqisi2
	ldrb	r8, [r0, r1, asr #16]	@ zero_extendqisi2
	mul	ip, lr, ip
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	ldrb	r8, [fp, r8]	@ zero_extendqisi2
	ldrb	r9, [fp, r9]	@ zero_extendqisi2
	smlabb	ip, r6, r8, ip
	ldr	r8, [sp, #4]
	ldrb	r10, [r10, r7, asr #16]	@ zero_extendqisi2
	uxth	r1, r1
	mov	r4, r4, lsr #26
	ldrb	r7, [r0, r7, asr #16]	@ zero_extendqisi2
	smlabb	r4, r6, r9, r4
	mul	r9, r8, r1
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	mul	r1, lr, r1
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	ldrb	r7, [fp, r7]	@ zero_extendqisi2
	mov	r9, r9, lsr #26
	smlabb	r9, r6, r10, r9
	mov	r1, r1, lsr #26
	smlabb	r1, r6, r7, r1
	ldr	ip, [r5, ip, asl #2]
	ldr	r4, [r5, r4, asl #2]
	ldr	r7, [r5, r9, asl #2]
	ldr	r1, [r5, r1, asl #2]
	add	r4, r4, ip
	add	r4, r4, r7
	add	r4, r4, r1
	ldr	r1, [sp, #32]
	ldr	ip, [sp, #56]
	str	r4, [r1, #-32]
.LVL4200:
	ldr	r1, [sp, #20]
	.loc 3 311 0
	ldr	r4, [sp, #28]
	ldr	r10, [sp, #8]
	add	r1, ip, r1
	ldrb	ip, [r0, r2, asr #16]	@ zero_extendqisi2
	ldrh	r0, [sp, #44]
	and	r1, r1, r4
	ldrb	r7, [r10, r2, asr #16]	@ zero_extendqisi2
	mul	r4, lr, r0
	mul	r0, r8, r0
	ldrb	r8, [r10, r1, asr #16]	@ zero_extendqisi2
	ldr	r10, [sp, #12]
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	ldrb	r1, [r10, r1, asr #16]	@ zero_extendqisi2
	ldrb	r9, [r3, r8]	@ zero_extendqisi2
	ldrb	r8, [fp, r7]	@ zero_extendqisi2
	ldrb	r7, [r3, r1]	@ zero_extendqisi2
	ldr	r1, [sp, #4]
	uxth	r2, r2
	ldrb	ip, [r3, ip]	@ zero_extendqisi2
	mul	r1, r1, r2
	mul	r2, lr, r2
	ldrb	ip, [fp, ip]	@ zero_extendqisi2
	ldrb	r9, [fp, r9]	@ zero_extendqisi2
	mov	r4, r4, lsr #26
	mov	r0, r0, lsr #26
	smlabb	r4, r6, ip, r4
	smlabb	r0, r6, r8, r0
	ldrb	ip, [fp, r7]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	smlabb	r1, r6, r9, r1
	mov	r2, r2, lsr #26
	smlabb	r2, r6, ip, r2
	ldr	r0, [r5, r0, asl #2]
	ldr	ip, [r5, r4, asl #2]
	ldr	r1, [r5, r1, asl #2]
	ldr	r2, [r5, r2, asl #2]
	add	ip, r0, ip
	add	ip, ip, r1
	add	ip, ip, r2
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #52]
	.loc 3 306 0
	ldr	r0, [sp, #40]
	add	r2, r2, r1
	.loc 3 311 0
	ldr	r1, [sp, #32]
	.loc 3 306 0
	subs	r0, r0, #2
	str	r2, [sp, #20]
.LVL4201:
	add	r2, r1, #32
	str	r0, [sp, #40]
.LVL4202:
	.loc 3 311 0
	str	ip, [r1, #-16]
.LVL4203:
	str	r2, [sp, #32]
.LVL4204:
	.loc 3 306 0
	bpl	.L4821
	.loc 3 316 0
	ldr	r0, [sp, #48]
	ldr	r1, [sp, #16]
.LVL4205:
	ldr	r4, [sp, #64]
	ldr	r2, [sp, #60]
.LVL4206:
	tst	r0, #1
	ldr	r0, [sp, #52]
	mov	r2, r2, lsr #1
	add	r4, r4, r1, asl #1
	mla	r4, r0, r2, r4
	add	r1, r2, #1
	ldr	r2, [sp, #24]
	add	r2, r2, r1, asl #5
	str	r2, [sp, #24]
	bne	.L4798
.LVL4207:
.L4834:
	.loc 3 317 0
	ldr	ip, [sp, #28]
	mov	r0, #64
	and	r2, r4, ip
	mvn	r1, r2
	ldr	lr, [sp, #8]
	ldr	r7, [sp, #12]
	add	r4, r4, #65536
	and	r4, r4, ip
	ldr	r8, [sp, #4]
	ldr	r9, [sp, #36]
	ldrb	r5, [lr, r2, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r7, r2, asr #16]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asr #16]	@ zero_extendqisi2
	uxth	r1, r1
	uxth	r2, r2
	mul	ip, r8, r1
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	mul	r8, r8, r2
	mul	r1, r9, r1
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r4, [r3, r7]	@ zero_extendqisi2
	mul	r2, r9, r2
	ldrb	r3, [fp, lr]	@ zero_extendqisi2
.LVL4208:
	ldrb	r5, [fp, r5]	@ zero_extendqisi2
	ldrb	r6, [fp, r6]	@ zero_extendqisi2
	ldrb	r7, [fp, r4]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	mov	r1, r1, lsr #26
	mov	r4, r8, lsr #26
	smlabb	r4, r0, r3, r4
	smlabb	ip, r0, r5, ip
	smlabb	r1, r0, r6, r1
	ldr	r3, [sp, #68]
	mov	r2, r2, lsr #26
	ldr	lr, [r3]
	smlabb	r0, r0, r7, r2
	ldr	r1, [lr, r1, asl #2]
	ldr	r2, [lr, ip, asl #2]
	ldr	r3, [lr, r4, asl #2]
	add	r2, r2, r1
	ldr	r1, [lr, r0, asl #2]
	add	r3, r2, r3
	ldr	r2, [sp, #24]
	add	r3, r3, r1
	str	r3, [r2]
	b	.L4798
.LVL4209:
.L4877:
.LBE906:
.LBE905:
.LBE914:
	.loc 3 127 0
	ldr	r2, [r9, #48]
.LVL4210:
	mov	r1, #1
	mov	r0, #2
.LVL4211:
	bl	R_GetDrawColumnFunc
.LVL4212:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4213:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4214:
.L4819:
	.cfi_restore_state
.LBB915:
.LBB909:
.LBB907:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r2, r2, asl #16
.LVL4215:
	.loc 3 325 0
	blt	.L4825
	.loc 3 328 0
	cmp	r4, r2
	blt	.L4824
.L4826:
	rsb	r4, r2, r4
.LVL4216:
	cmp	r2, r4
	ble	.L4826
.L4824:
	.loc 3 332 0
	add	r0, r4, #65536
.LVL4217:
	.loc 3 333 0
	cmp	r0, r2
	blt	.L4827
.L4828:
	rsb	r0, r2, r0
.LVL4218:
	cmp	r0, r2
	bge	.L4828
.L4827:
	.loc 3 345 0
	mov	r10, #0
	mov	r8, #64
	ldr	r1, .L4884+32
	ldr	ip, [sp, #4]
	ldr	r9, [r1]
	ldr	r1, [sp, #48]
	rsb	ip, ip, #65280
	add	r1, r1, #1
	str	r1, [sp, #40]
.LVL4219:
	add	r1, ip, #255
	str	r1, [sp, #36]
	str	r2, [sp, #20]
.LVL4220:
.L4831:
	mvn	r2, r4
	ldr	r5, [sp, #36]
	uxth	r2, r2
	mul	r7, r5, r2
	ldr	ip, [sp, #12]
	ldr	r1, [sp, #8]
	ldrb	r6, [ip, r0, asr #16]	@ zero_extendqisi2
	str	r7, [sp, #32]
	ldrb	r7, [r3, r6]	@ zero_extendqisi2
	ldr	r6, [sp, #4]
	ldrb	lr, [r1, r0, asr #16]	@ zero_extendqisi2
	uxth	r1, r4
	mul	r6, r6, r1
	mul	r1, r5, r1
	ldr	r5, [sp, #4]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	mul	r2, r5, r2
	ldrb	r5, [fp, r7]	@ zero_extendqisi2
	ldr	r7, [sp, #8]
	ldrb	ip, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	lr, [fp, lr]	@ zero_extendqisi2
	ldrb	ip, [r3, ip]	@ zero_extendqisi2
	str	r5, [sp, #28]
	mov	r6, r6, lsr #26
	smlabb	lr, r8, lr, r6
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	ldrh	r6, [sp, #28]
	ldr	r5, [sp, #32]
	ldrb	ip, [fp, ip]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	smlabb	r1, r8, r6, r1
	mov	r5, r5, lsr #26
	ldrb	r6, [fp, r7]	@ zero_extendqisi2
	smlabb	r5, r8, ip, r5
	mov	r2, r2, lsr #26
	smlabb	r2, r8, r6, r2
	ldr	ip, [r9, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	ldr	lr, [r9, r5, asl #2]
	ldr	r2, [r9, r2, asl #2]
	add	ip, r1, ip
	add	ip, ip, lr
	.loc 3 348 0
	ldr	r1, [sp, #16]
	.loc 3 345 0
	add	ip, ip, r2
	.loc 3 348 0
	ldr	r2, [sp, #20]
	add	r4, r4, r1
.LVL4221:
	cmp	r4, r2
	.loc 3 345 0
	ldr	r2, [sp, #24]
	.loc 3 350 0
	add	r0, r0, r1
.LVL4222:
	.loc 3 345 0
	str	ip, [r2, r10, asl #4]
.LVL4223:
	.loc 3 348 0
	ldrge	r2, [sp, #20]
	add	r10, r10, #1
.LVL4224:
	rsbge	r4, r2, r4
.LVL4225:
	.loc 3 350 0
	ldr	r2, [sp, #20]
	cmp	r0, r2
	rsbge	r0, r2, r0
.LVL4226:
	.loc 3 339 0
	ldr	r2, [sp, #40]
	cmp	r10, r2
	bne	.L4831
.LBE907:
.LBE909:
.LBE915:
	.loc 3 357 0
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4227:
.L4825:
	.cfi_restore_state
.LBB916:
.LBB910:
.LBB908:
	.loc 3 326 0 discriminator 1
	adds	r4, r2, r4
.LVL4228:
	bpl	.L4824
.LVL4229:
	.loc 3 326 0 is_stmt 0
	adds	r4, r2, r4
.LVL4230:
	bmi	.L4825
	b	.L4824
.LVL4231:
.L4882:
.LBE908:
.LBE910:
.LBE916:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L4809
	b	.L4811
.LVL4232:
.L4880:
	mvn	r2, r4
.LBB917:
	.loc 3 286 0
	mov	r10, #0
	.loc 3 289 0
	mov	r9, #64
	ldr	r1, .L4884+32
.LVL4233:
	str	r2, [sp, #20]
	ldr	r2, [sp, #4]
	ldr	r8, [r1]
	ldr	r1, [sp, #48]
	rsb	r2, r2, #65280
	add	r1, r1, #1
	add	r2, r2, #255
	str	r1, [sp, #32]
	str	r2, [sp, #36]
.LVL4234:
.L4816:
	add	r0, r4, #65536
	ldr	r5, [sp, #12]
	ldr	r6, [sp, #8]
	bic	r2, r4, #-16777216
	bic	r0, r0, #-16777216
	bic	r2, r2, #8388608
	bic	r0, r0, #8388608
	ldrb	ip, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	lr, [r6, r2, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r6, r0, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r5, r0, asr #16]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	uxth	r2, r4
	mul	r0, r5, r2
	ldrh	r1, [sp, #20]
	str	r0, [sp, #28]
	ldr	r0, [sp, #36]
	mul	r5, r5, r1
	mul	r1, r0, r1
	ldrb	ip, [r3, ip]	@ zero_extendqisi2
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	mul	r2, r0, r2
	ldrb	ip, [fp, ip]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	lr, [fp, lr]	@ zero_extendqisi2
	ldr	r0, [sp, #28]
	ldrb	r7, [fp, r7]	@ zero_extendqisi2
	mov	r5, r5, lsr #26
	mov	r1, r1, lsr #26
	ldrb	r6, [fp, r6]	@ zero_extendqisi2
	smlabb	r1, r9, ip, r1
	mov	r0, r0, lsr #26
	smlabb	lr, r9, lr, r5
	smlabb	r0, r9, r7, r0
	mov	r2, r2, lsr #26
	smlabb	r2, r9, r6, r2
	ldr	r1, [r8, r1, asl #2]
	ldr	ip, [r8, lr, asl #2]
	ldr	r0, [r8, r0, asl #2]
	ldr	r2, [r8, r2, asl #2]
	add	ip, ip, r1
	add	ip, ip, r0
	add	ip, ip, r2
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #20]
	str	ip, [r2, r10, asl #4]
.LVL4235:
	.loc 3 288 0
	ldr	r2, [sp, #32]
	add	r10, r10, #1
.LVL4236:
	cmp	r10, r2
	.loc 3 292 0
	ldr	r2, [sp, #16]
	add	r4, r4, r2
.LVL4237:
	rsb	r2, r2, r1
	str	r2, [sp, #20]
	.loc 3 288 0
	bne	.L4816
.LBE917:
	.loc 3 357 0
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4238:
.L4836:
	.cfi_restore_state
.LBB918:
	.loc 3 269 0
	mov	r2, #0
.LVL4239:
	str	r2, [sp, #4]
	b	.L4815
.LVL4240:
.L4881:
.LBE918:
.LBB919:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #16]
	uxth	r0, r0
	b	.L4874
.L4868:
	ldr	r3, [r5, #32]
	str	r3, [sp, #12]
	ldr	r3, [r5, #40]
	str	r3, [sp, #8]
	b	.L4810
.LVL4241:
.L4805:
.LBE919:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4804
.LBB920:
	.loc 3 188 0
	mov	r0, fp
.LVL4242:
	ldr	r1, [sp, #16]
.LVL4243:
	bl	__aeabi_idiv
.LVL4244:
	.loc 3 190 0
	ldr	r3, [sp, #48]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL4245:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL4246:
	.loc 3 190 0
	str	r3, [sp, #48]
.LVL4247:
	b	.L4804
.LVL4248:
.L4883:
	ldr	r2, [sp, #4]
.LVL4249:
	rsb	r2, r2, #65280
	add	r2, r2, #255
	str	r2, [sp, #36]
	ldr	r2, .L4884+32
	str	r2, [sp, #68]
	b	.L4834
.L4885:
	.align	2
.L4884:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	V_Palette32
	.word	viewheight
.LBE920:
	.cfi_endproc
.LFE149:
	.size	R_DrawTranslatedColumn32_LinearUV_PointZ, .-R_DrawTranslatedColumn32_LinearUV_PointZ
	.align	2
	.type	R_DrawTLColumn32_LinearUV_PointZ, %function
R_DrawTLColumn32_LinearUV_PointZ:
.LFB113:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4250:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 126 0
	ldr	r9, .L4972
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #12]
.LVL4251:
	.loc 3 126 0
	ldr	r2, [sp, #12]
	ldr	r3, [r9, #64]
.LVL4252:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL4253:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #4]
	str	r6, [sp]
	.loc 3 126 0
	bgt	.L4965
	.loc 3 149 0
	ldmib	r0, {r8, r10}
.LVL4254:
	.loc 3 157 0
	subs	r3, r10, r8
.LVL4255:
	str	r3, [sp, #32]
	bmi	.L4886
	.loc 3 169 0
	ldr	r2, .L4972+4
.LVL4256:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL4257:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #12]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL4258:
	.loc 3 174 0
	bne	.L4966
.LVL4259:
.L4891:
	.loc 3 215 0
	ldr	r8, .L4972+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L4897
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L4967
.L4898:
	.loc 3 226 0 is_stmt 1
	ldr	r3, .L4972+12
	.loc 3 224 0
	mov	ip, #2
	.loc 3 226 0
	ldr	r2, [r3]
	.loc 3 222 0
	ldmia	r5, {r1, r3}
	.loc 3 226 0
	str	r2, [r8, #1008]
	.loc 3 223 0
	ldr	r2, [r5, #8]
	.loc 3 224 0
	ldr	r0, .L4972+16
	.loc 3 223 0
	str	r2, [r8, #8]
	str	r2, [r8, #32]
	mov	r2, #0
	.loc 3 224 0
	str	ip, [r0, #-1204]
	.loc 3 221 0
	str	r1, [r8, #12]
	.loc 3 231 0
	ldr	r0, .L4972+20
	.loc 3 232 0
	ldr	r1, .L4972+24
	.loc 3 233 0
	ldr	lr, .L4972+28
	.loc 3 230 0
	ldr	ip, .L4972+32
	.loc 3 232 0
	stmib	r9, {r0, r1}
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, lr, r3, asl #4
	str	r3, [sp, #20]
.LVL4260:
	.loc 3 230 0
	str	ip, [r9]
.L4900:
.LVL4261:
	.loc 3 245 0
	add	r3, r2, #1
.LBB921:
	.loc 3 269 0
	ldmia	sp, {r1, r2}
	cmp	r2, r1
.LBE921:
	.loc 3 245 0
	str	r3, [r8]
.LVL4262:
.LBB928:
	.loc 3 252 0
	ldr	r3, [r5, #44]
.LVL4263:
	.loc 3 269 0
	beq	.L4924
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r2, [r5, #28]
.LVL4264:
	str	r2, [sp, #8]
.L4903:
.LVL4265:
	.loc 3 286 0 is_stmt 1
	ldr	ip, [r5, #24]
	cmp	ip, #128
	beq	.L4968
	.loc 3 294 0
	cmp	ip, #0
	bne	.L4905
.LVL4266:
	mvn	r9, r4
	.loc 3 297 0
	mov	r8, #64
	ldr	r2, .L4972+36
	ldr	r1, [sp, #8]
.LVL4267:
	ldr	r7, [r2]
	ldr	r2, [sp, #32]
	rsb	r10, r1, #65280
	add	r2, r2, #1
	str	r2, [sp, #24]
	add	r10, r10, #255
	str	r9, [sp, #16]
.LVL4268:
.L4906:
	ldrh	r1, [sp, #16]
	ldr	lr, [sp, #8]
	ldr	r5, [sp]
	mul	r0, lr, r1
	ldrb	fp, [r5, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #4]
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	uxth	r2, r4
	smlabb	r0, r8, fp, r0
	mul	r1, r10, r1
	ldr	fp, [sp]
	ldrb	r6, [r9, r4, asr #16]	@ zero_extendqisi2
	add	r5, r4, #65536
	mul	lr, lr, r2
	ldrb	fp, [fp, r5, asr #16]	@ zero_extendqisi2
	mul	r2, r10, r2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r5, [r9, r5, asr #16]	@ zero_extendqisi2
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	smlabb	r1, r8, r6, r1
	mov	lr, lr, lsr #26
	mov	r2, r2, lsr #26
	smlabb	lr, r8, fp, lr
	smlabb	r2, r8, r5, r2
	ldr	r1, [r7, r1, asl #2]
	ldr	r0, [r7, r0, asl #2]
	ldr	lr, [r7, lr, asl #2]
	ldr	r2, [r7, r2, asl #2]
	add	r0, r0, r1
	add	r0, r0, lr
	add	r0, r0, r2
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #16]
	str	r0, [r2, ip, asl #4]
.LVL4269:
	.loc 3 296 0
	ldr	r2, [sp, #24]
	add	ip, ip, #1
.LVL4270:
	cmp	ip, r2
	ldr	r2, [sp, #12]
	rsb	r1, r2, r1
	str	r1, [sp, #16]
	.loc 3 300 0
	add	r4, r4, r2
.LVL4271:
	.loc 3 296 0
	bne	.L4906
.LVL4272:
.L4886:
.LBE928:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4273:
.L4966:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4891
	.loc 3 178 0
	cmp	r8, #0
	beq	.L4892
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4893
.LBB929:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL4274:
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL4275:
	.loc 3 184 0
	ldr	r3, [sp, #8]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL4276:
	.loc 3 183 0
	ldr	r3, [sp, #32]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL4277:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL4278:
	str	r3, [sp, #32]
.LVL4279:
.L4892:
.LBE929:
	.loc 3 194 0
	ldr	r3, .L4972+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L4894
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L4969
	.loc 3 201 0
	tst	r3, #8
	beq	.L4894
.LBB930:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #12]
.L4962:
	bl	__aeabi_idiv
.LVL4280:
	.loc 3 205 0
	ldr	r3, [sp, #32]
	.loc 3 204 0
	rsb	r10, r0, r10
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r10, [r5, #8]
.LVL4281:
	.loc 3 205 0
	str	r3, [sp, #32]
.LVL4282:
.L4894:
.LBE930:
	.loc 3 208 0
	ldr	r3, [sp, #32]
	cmp	r3, #0
	bgt	.L4891
	b	.L4886
.L4967:
	.loc 3 216 0
	ldr	r2, .L4972+16
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L4970
.L4897:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4283:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L4956
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
.L4899:
	.loc 3 235 0
	ldr	r2, [r5, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r5, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L4972+8
	.loc 3 240 0
	ldr	ip, .L4972+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L4972+28
	stmia	sp, {r6, r7}
	add	r3, r1, r3, asl #2
	ldr	r2, [r8]
	str	r3, [sp, #20]
.LVL4284:
	b	.L4900
.LVL4285:
.L4905:
.LBB931:
.LBB922:
	.loc 3 303 0
	sub	r2, ip, #1
.LVL4286:
	.loc 3 304 0
	tst	r2, ip
	bne	.L4907
.LBB923:
	.loc 3 305 0
	mov	r2, r2, asl #16
.LVL4287:
	mvn	r2, r2, lsr #16
	mvn	r2, r2, asl #16
	.loc 3 306 0
	ldr	r1, [sp, #32]
.LVL4288:
	.loc 3 305 0
	str	r2, [sp, #16]
.LVL4289:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	str	r1, [sp, #44]
	str	r1, [sp, #24]
.LVL4290:
	beq	.L4971
	ldr	r2, .L4972+36
.LVL4291:
	mov	fp, r4
.LVL4292:
	mov	r1, r2
.LVL4293:
	.loc 3 307 0
	mov	lr, #64
	str	r2, [sp, #52]
	ldr	r2, [sp, #8]
	ldr	ip, [r1]
.LVL4294:
	rsb	r2, r2, #65280
	add	r10, r2, #255
	ldr	r2, [sp, #20]
	str	r4, [sp, #48]
	add	r2, r2, #32
	mov	r7, r2
	ldr	r2, [sp, #12]
	mov	r1, r2, asl #1
	add	r2, r2, #65536
	str	r1, [sp, #36]
	str	r2, [sp, #40]
.LVL4295:
.L4909:
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #16]
	add	r4, r0, fp
	.loc 3 311 0
	and	r4, r4, r2
	.loc 3 307 0
	and	r6, fp, r2
	.loc 3 311 0
	mvn	r0, r4
	.loc 3 307 0
	mvn	r1, r6
	.loc 3 311 0
	str	r0, [sp, #28]
	.loc 3 307 0
	ldr	r8, [sp]
	ldr	r0, [sp, #8]
	uxth	r1, r1
	ldrb	r9, [r8, r6, asr #16]	@ zero_extendqisi2
	mul	r5, r0, r1
	ldr	r8, [sp, #4]
	mul	r1, r10, r1
	ldrb	r8, [r8, r6, asr #16]	@ zero_extendqisi2
	ldrb	r9, [r3, r9]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mov	r5, r5, lsr #26
	smlabb	r5, lr, r9, r5
	mov	r1, r1, lsr #26
	ldr	r9, [sp, #8]
	uxth	r0, r6
	smlabb	r1, lr, r8, r1
	add	r6, fp, #65536
	ldr	r8, [sp]
	and	r6, r6, r2
	mul	r9, r9, r0
	ldr	r2, [sp, #4]
	ldrb	r8, [r8, r6, asr #16]	@ zero_extendqisi2
	mul	r0, r10, r0
	ldrb	r6, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	mov	r9, r9, lsr #26
	smlabb	r9, lr, r8, r9
	mov	r0, r0, lsr #26
	smlabb	r0, lr, r6, r0
	ldr	r1, [ip, r1, asl #2]
	ldr	r5, [ip, r5, asl #2]
	ldr	r6, [ip, r9, asl #2]
	ldr	r0, [ip, r0, asl #2]
	add	r5, r5, r1
	add	r5, r5, r6
	.loc 3 311 0
	ldrh	r2, [sp, #28]
	.loc 3 307 0
	add	r0, r5, r0
	.loc 3 311 0
	ldr	r6, [sp, #4]
	.loc 3 307 0
	str	r0, [r7, #-32]
.LVL4296:
	.loc 3 311 0
	mul	r5, r10, r2
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #8]
	ldr	r8, [sp]
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldr	r0, [sp, #40]
	uxth	r1, r4
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mul	r2, r9, r2
	ldr	r4, [sp, #16]
	mov	r5, r5, lsr #26
	add	r0, r0, fp
	smlabb	r5, lr, r6, r5
	ldr	r6, [sp]
	and	r4, r4, r0
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mul	r0, r9, r1
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #4]
	mul	r1, r10, r1
	mov	r2, r2, lsr #26
	ldrb	r4, [r9, r4, asr #16]	@ zero_extendqisi2
	smlabb	r2, lr, r8, r2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r4, [r3, r4]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	smlabb	r0, lr, r6, r0
	mov	r1, r1, lsr #26
	ldr	r2, [ip, r2, asl #2]
	smlabb	r1, lr, r4, r1
	ldr	r4, [ip, r5, asl #2]
	ldr	r0, [ip, r0, asl #2]
	add	r4, r2, r4
	.loc 3 306 0
	ldr	r2, [sp, #24]
	.loc 3 311 0
	ldr	r1, [ip, r1, asl #2]
	.loc 3 306 0
	subs	r2, r2, #2
	add	r4, r4, r0
	str	r2, [sp, #24]
.LVL4297:
	ldr	r2, [sp, #36]
.LVL4298:
	.loc 3 311 0
	add	r4, r4, r1
	str	r4, [r7, #-16]
	add	fp, r2, fp
.LVL4299:
	add	r7, r7, #32
.LVL4300:
	.loc 3 306 0
	bpl	.L4909
	.loc 3 316 0
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #12]
	ldr	r4, [sp, #48]
	ldr	r2, [sp, #44]
	tst	r0, #1
	ldr	r0, [sp, #36]
	mov	r2, r2, lsr #1
	add	r4, r4, r1, asl #1
	mla	r4, r0, r2, r4
	add	r1, r2, #1
	ldr	r2, [sp, #20]
	add	r2, r2, r1, asl #5
	str	r2, [sp, #20]
	bne	.L4886
.LVL4301:
.L4922:
	.loc 3 317 0
	ldr	r5, [sp, #16]
	mov	ip, #64
	and	r1, r4, r5
	mvn	r2, r1
	ldr	r7, [sp, #8]
	uxth	r2, r2
	ldr	r8, [sp]
	ldr	fp, [sp, #4]
	mul	r0, r7, r2
	uxth	lr, r1
	add	r4, r4, #65536
	mul	r2, r10, r2
	and	r4, r4, r5
	ldrb	r6, [fp, r1, asr #16]	@ zero_extendqisi2
	ldrb	r5, [r8, r1, asr #16]	@ zero_extendqisi2
	mul	r7, r7, lr
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mul	lr, r10, lr
	ldrb	r9, [r3, r5]	@ zero_extendqisi2
	ldrb	r1, [fp, r4, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r5, [r3, r8]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	mov	r2, r2, lsr #26
	ldrb	r8, [r3, r1]	@ zero_extendqisi2
	smlabb	r9, ip, r9, r0
	smlabb	r3, ip, r6, r2
.LVL4302:
	mov	r4, r7, lsr #26
	ldr	r2, [sp, #52]
	smlabb	r4, ip, r5, r4
	mov	lr, lr, lsr #26
	ldr	r0, [r2]
	smlabb	r1, ip, r8, lr
	ldr	r2, [r0, r9, asl #2]
	ldr	ip, [r0, r3, asl #2]
	ldr	r3, [r0, r4, asl #2]
	add	r2, r2, ip
	ldr	r1, [r0, r1, asl #2]
	add	r3, r2, r3
	ldr	r2, [sp, #20]
	add	r3, r3, r1
	str	r3, [r2]
	b	.L4886
.LVL4303:
.L4965:
.LBE923:
.LBE922:
.LBE931:
	.loc 3 127 0
	mov	r0, #1
.LVL4304:
	ldr	r2, [r9, #48]
.LVL4305:
	mov	r1, r0
	bl	R_GetDrawColumnFunc
.LVL4306:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4307:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4308:
.L4907:
	.cfi_restore_state
.LBB932:
.LBB926:
.LBB924:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	ip, ip, asl #16
.LVL4309:
	.loc 3 325 0
	blt	.L4913
	.loc 3 328 0
	cmp	r4, ip
	blt	.L4912
.L4914:
	rsb	r4, ip, r4
.LVL4310:
	cmp	ip, r4
	ble	.L4914
.L4912:
	.loc 3 332 0
	add	r1, r4, #65536
.LVL4311:
	.loc 3 333 0
	cmp	r1, ip
	blt	.L4915
.L4916:
	rsb	r1, ip, r1
.LVL4312:
	cmp	r1, ip
	bge	.L4916
.L4915:
	.loc 3 345 0
	mov	fp, #0
.LVL4313:
	mov	r6, #64
	ldr	r2, .L4972+36
	ldr	r0, [sp, #8]
	ldr	r9, [r2]
	ldr	r2, [sp, #32]
	rsb	r10, r0, #65280
	add	r2, r2, #1
	add	r10, r10, #255
	str	r2, [sp, #16]
.LVL4314:
	str	r10, [sp, #24]
.LVL4315:
.L4919:
	mvn	r0, r4
	ldr	r5, [sp, #24]
	ldr	r8, [sp, #8]
	uxth	r2, r4
	uxth	r0, r0
	mul	lr, r5, r2
	mul	r7, r5, r0
	mul	r2, r8, r2
	mul	r0, r8, r0
	ldr	r8, [sp]
	ldr	r5, [sp, #4]
	ldrb	r8, [r8, r1, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r5, r1, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	mov	r2, r2, lsr #26
	smlabb	r2, r6, r8, r2
	ldr	r8, [sp]
	ldrb	r5, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mov	lr, lr, lsr #26
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	smlabb	lr, r6, r10, lr
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mov	r7, r7, lsr #26
	mov	r0, r0, lsr #26
	smlabb	r7, r6, r5, r7
	smlabb	r0, r6, r8, r0
	ldr	r2, [r9, r2, asl #2]
	ldr	lr, [r9, lr, asl #2]
	ldr	r5, [r9, r7, asl #2]
	add	lr, lr, r2
	.loc 3 348 0
	ldr	r2, [sp, #12]
	.loc 3 345 0
	ldr	r0, [r9, r0, asl #2]
	.loc 3 348 0
	add	r4, r4, r2
.LVL4316:
	.loc 3 350 0
	add	r1, r1, r2
.LVL4317:
	.loc 3 345 0
	add	lr, lr, r5
	ldr	r2, [sp, #20]
	add	lr, lr, r0
	.loc 3 348 0
	cmp	r4, ip
	.loc 3 345 0
	str	lr, [r2, fp, asl #4]
.LVL4318:
	.loc 3 339 0
	ldr	r2, [sp, #16]
	add	fp, fp, #1
.LVL4319:
	.loc 3 348 0
	rsbge	r4, ip, r4
.LVL4320:
	.loc 3 350 0
	cmp	r1, ip
	rsbge	r1, ip, r1
.LVL4321:
	.loc 3 339 0
	cmp	fp, r2
	bne	.L4919
.LBE924:
.LBE926:
.LBE932:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL4322:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4323:
.L4913:
	.cfi_restore_state
.LBB933:
.LBB927:
.LBB925:
	.loc 3 326 0 discriminator 1
	adds	r4, ip, r4
.LVL4324:
	bpl	.L4912
.LVL4325:
	.loc 3 326 0 is_stmt 0
	adds	r4, ip, r4
.LVL4326:
	bmi	.L4913
	b	.L4912
.LVL4327:
.L4970:
.LBE925:
.LBE927:
.LBE933:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L4897
	b	.L4899
.LVL4328:
.L4968:
	mvn	fp, r4
.LVL4329:
.LBB934:
	.loc 3 286 0
	mov	r10, #0
	.loc 3 289 0
	mov	r9, #64
	ldr	r1, .L4972+36
.LVL4330:
	ldr	r2, [sp, #8]
	ldr	r8, [r1]
	ldr	r1, [sp, #32]
	rsb	r2, r2, #65280
	add	r1, r1, #1
	add	r2, r2, #255
	str	r1, [sp, #24]
	str	r2, [sp, #28]
.LVL4331:
.L4904:
	ldr	r7, [sp, #28]
	ldr	ip, [sp, #8]
	uxth	r1, fp
	mul	lr, ip, r1
	mul	r1, r7, r1
	uxth	r2, r4
	add	r0, r4, #65536
	ldr	r5, [sp]
	bic	r6, r4, #-16777216
	mul	ip, ip, r2
	bic	r0, r0, #-16777216
	mul	r2, r7, r2
	ldr	r7, [sp, #4]
	bic	r6, r6, #8388608
	bic	r0, r0, #8388608
	ldrb	r7, [r7, r6, asr #16]	@ zero_extendqisi2
	str	r1, [sp, #16]
	ldrb	r6, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r0, asr #16]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	ldrb	r0, [r5, r0, asr #16]	@ zero_extendqisi2
	ldrb	r5, [r3, r1]	@ zero_extendqisi2
	ldr	r1, [sp, #16]
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	mov	lr, lr, lsr #26
	mov	r1, r1, lsr #26
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	smlabb	lr, r9, r6, lr
	smlabb	r1, r9, r7, r1
	smlabb	ip, r9, r5, ip
	mov	r2, r2, lsr #26
	smlabb	r2, r9, r0, r2
	ldr	r1, [r8, r1, asl #2]
	ldr	r0, [r8, lr, asl #2]
	ldr	ip, [r8, ip, asl #2]
	ldr	r2, [r8, r2, asl #2]
	add	r0, r0, r1
	add	r0, r0, ip
	add	r0, r0, r2
	ldr	r2, [sp, #20]
	str	r0, [r2, r10, asl #4]
.LVL4332:
	.loc 3 288 0
	ldr	r2, [sp, #24]
	add	r10, r10, #1
.LVL4333:
	cmp	r10, r2
	.loc 3 292 0
	ldr	r2, [sp, #12]
	add	r4, r4, r2
.LVL4334:
	rsb	fp, r2, fp
	.loc 3 288 0
	bne	.L4904
.LBE934:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL4335:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4336:
.L4924:
	.cfi_restore_state
.LBB935:
	.loc 3 269 0
	mov	r2, #0
.LVL4337:
	str	r2, [sp, #8]
	b	.L4903
.LVL4338:
.L4969:
.LBE935:
.LBB936:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #12]
	uxth	r0, r0
	b	.L4962
.L4956:
	ldr	r3, [r5, #32]
	str	r3, [sp, #4]
	ldr	r3, [r5, #40]
	str	r3, [sp]
	b	.L4898
.LVL4339:
.L4893:
.LBE936:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4892
.LBB937:
	.loc 3 188 0
	mov	r0, fp
.LVL4340:
	ldr	r1, [sp, #12]
.LVL4341:
	bl	__aeabi_idiv
.LVL4342:
	.loc 3 190 0
	ldr	r3, [sp, #32]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL4343:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL4344:
	.loc 3 190 0
	str	r3, [sp, #32]
.LVL4345:
	b	.L4892
.LVL4346:
.L4971:
	ldr	r2, [sp, #8]
.LVL4347:
	rsb	r10, r2, #65280
	ldr	r2, .L4972+36
	add	r10, r10, #255
	str	r2, [sp, #52]
	b	.L4922
.L4973:
	.align	2
.L4972:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushHTTL32
	.word	R_FlushQuadTL32
	.word	.LANCHOR0+3140
	.word	R_FlushWholeTL32
	.word	V_Palette32
	.word	viewheight
.LBE937:
	.cfi_endproc
.LFE113:
	.size	R_DrawTLColumn32_LinearUV_PointZ, .-R_DrawTLColumn32_LinearUV_PointZ
	.align	2
	.type	R_DrawColumn32_LinearUV_PointZ, %function
R_DrawColumn32_LinearUV_PointZ:
.LFB77:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4348:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 126 0
	ldr	r9, .L5060
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #12]
.LVL4349:
	.loc 3 126 0
	ldr	r2, [sp, #12]
	ldr	r3, [r9, #64]
.LVL4350:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL4351:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #4]
	str	r6, [sp]
	.loc 3 126 0
	bgt	.L5053
	.loc 3 149 0
	ldmib	r0, {r8, r10}
.LVL4352:
	.loc 3 157 0
	subs	r3, r10, r8
.LVL4353:
	str	r3, [sp, #32]
	bmi	.L4974
	.loc 3 169 0
	ldr	r2, .L5060+4
.LVL4354:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL4355:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #12]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL4356:
	.loc 3 174 0
	bne	.L5054
.LVL4357:
.L4979:
	.loc 3 215 0
	ldr	r8, .L5060+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L4985
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5055
.L4986:
	.loc 3 222 0 is_stmt 1
	ldmia	r5, {r1, r3}
	.loc 3 224 0
	mov	ip, #1
	.loc 3 223 0
	ldr	r2, [r5, #8]
	.loc 3 224 0
	ldr	r0, .L5060+12
	.loc 3 223 0
	str	r2, [r8, #8]
	str	r2, [r8, #32]
	mov	r2, #0
	.loc 3 224 0
	str	ip, [r0, #-1204]
	.loc 3 221 0
	str	r1, [r8, #12]
	.loc 3 231 0
	ldr	r0, .L5060+16
	.loc 3 232 0
	ldr	r1, .L5060+20
	.loc 3 233 0
	ldr	lr, .L5060+24
	.loc 3 230 0
	ldr	ip, .L5060+28
	.loc 3 232 0
	stmib	r9, {r0, r1}
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, lr, r3, asl #4
	str	r3, [sp, #20]
.LVL4358:
	.loc 3 230 0
	str	ip, [r9]
.L4988:
.LVL4359:
	.loc 3 245 0
	add	r3, r2, #1
.LBB938:
	.loc 3 269 0
	ldmia	sp, {r1, r2}
	cmp	r2, r1
.LBE938:
	.loc 3 245 0
	str	r3, [r8]
.LVL4360:
.LBB945:
	.loc 3 252 0
	ldr	r3, [r5, #44]
.LVL4361:
	.loc 3 269 0
	beq	.L5012
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r2, [r5, #28]
.LVL4362:
	str	r2, [sp, #8]
.L4991:
.LVL4363:
	.loc 3 286 0 is_stmt 1
	ldr	ip, [r5, #24]
	cmp	ip, #128
	beq	.L5056
	.loc 3 294 0
	cmp	ip, #0
	bne	.L4993
.LVL4364:
	mvn	r9, r4
	.loc 3 297 0
	mov	r8, #64
	ldr	r2, .L5060+32
	ldr	r1, [sp, #8]
.LVL4365:
	ldr	r7, [r2]
	ldr	r2, [sp, #32]
	rsb	r10, r1, #65280
	add	r2, r2, #1
	str	r2, [sp, #24]
	add	r10, r10, #255
	str	r9, [sp, #16]
.LVL4366:
.L4994:
	ldrh	r1, [sp, #16]
	ldr	lr, [sp, #8]
	ldr	r5, [sp]
	mul	r0, lr, r1
	ldrb	fp, [r5, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #4]
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	uxth	r2, r4
	smlabb	r0, r8, fp, r0
	mul	r1, r10, r1
	ldr	fp, [sp]
	ldrb	r6, [r9, r4, asr #16]	@ zero_extendqisi2
	add	r5, r4, #65536
	mul	lr, lr, r2
	ldrb	fp, [fp, r5, asr #16]	@ zero_extendqisi2
	mul	r2, r10, r2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r5, [r9, r5, asr #16]	@ zero_extendqisi2
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	smlabb	r1, r8, r6, r1
	mov	lr, lr, lsr #26
	mov	r2, r2, lsr #26
	smlabb	lr, r8, fp, lr
	smlabb	r2, r8, r5, r2
	ldr	r1, [r7, r1, asl #2]
	ldr	r0, [r7, r0, asl #2]
	ldr	lr, [r7, lr, asl #2]
	ldr	r2, [r7, r2, asl #2]
	add	r0, r0, r1
	add	r0, r0, lr
	add	r0, r0, r2
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #16]
	str	r0, [r2, ip, asl #4]
.LVL4367:
	.loc 3 296 0
	ldr	r2, [sp, #24]
	add	ip, ip, #1
.LVL4368:
	cmp	ip, r2
	ldr	r2, [sp, #12]
	rsb	r1, r2, r1
	str	r1, [sp, #16]
	.loc 3 300 0
	add	r4, r4, r2
.LVL4369:
	.loc 3 296 0
	bne	.L4994
.LVL4370:
.L4974:
.LBE945:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4371:
.L5054:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L4979
	.loc 3 178 0
	cmp	r8, #0
	beq	.L4980
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L4981
.LBB946:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL4372:
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL4373:
	.loc 3 184 0
	ldr	r3, [sp, #8]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL4374:
	.loc 3 183 0
	ldr	r3, [sp, #32]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL4375:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL4376:
	str	r3, [sp, #32]
.LVL4377:
.L4980:
.LBE946:
	.loc 3 194 0
	ldr	r3, .L5060+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L4982
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L5057
	.loc 3 201 0
	tst	r3, #8
	beq	.L4982
.LBB947:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #12]
.L5050:
	bl	__aeabi_idiv
.LVL4378:
	.loc 3 205 0
	ldr	r3, [sp, #32]
	.loc 3 204 0
	rsb	r10, r0, r10
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r10, [r5, #8]
.LVL4379:
	.loc 3 205 0
	str	r3, [sp, #32]
.LVL4380:
.L4982:
.LBE947:
	.loc 3 208 0
	ldr	r3, [sp, #32]
	cmp	r3, #0
	bgt	.L4979
	b	.L4974
.L5055:
	.loc 3 216 0
	ldr	r2, .L5060+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L5058
.L4985:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4381:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L5044
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
.L4987:
	.loc 3 235 0
	ldr	r2, [r5, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r5, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L5060+8
	.loc 3 240 0
	ldr	ip, .L5060+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L5060+24
	stmia	sp, {r6, r7}
	add	r3, r1, r3, asl #2
	ldr	r2, [r8]
	str	r3, [sp, #20]
.LVL4382:
	b	.L4988
.LVL4383:
.L4993:
.LBB948:
.LBB939:
	.loc 3 303 0
	sub	r2, ip, #1
.LVL4384:
	.loc 3 304 0
	tst	r2, ip
	bne	.L4995
.LBB940:
	.loc 3 305 0
	mov	r2, r2, asl #16
.LVL4385:
	mvn	r2, r2, lsr #16
	mvn	r2, r2, asl #16
	.loc 3 306 0
	ldr	r1, [sp, #32]
.LVL4386:
	.loc 3 305 0
	str	r2, [sp, #16]
.LVL4387:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	str	r1, [sp, #44]
	str	r1, [sp, #24]
.LVL4388:
	beq	.L5059
	ldr	r2, .L5060+32
.LVL4389:
	mov	fp, r4
.LVL4390:
	mov	r1, r2
.LVL4391:
	.loc 3 307 0
	mov	lr, #64
	str	r2, [sp, #52]
	ldr	r2, [sp, #8]
	ldr	ip, [r1]
.LVL4392:
	rsb	r2, r2, #65280
	add	r10, r2, #255
	ldr	r2, [sp, #20]
	str	r4, [sp, #48]
	add	r2, r2, #32
	mov	r7, r2
	ldr	r2, [sp, #12]
	mov	r1, r2, asl #1
	add	r2, r2, #65536
	str	r1, [sp, #36]
	str	r2, [sp, #40]
.LVL4393:
.L4997:
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #16]
	add	r4, r0, fp
	.loc 3 311 0
	and	r4, r4, r2
	.loc 3 307 0
	and	r6, fp, r2
	.loc 3 311 0
	mvn	r0, r4
	.loc 3 307 0
	mvn	r1, r6
	.loc 3 311 0
	str	r0, [sp, #28]
	.loc 3 307 0
	ldr	r8, [sp]
	ldr	r0, [sp, #8]
	uxth	r1, r1
	ldrb	r9, [r8, r6, asr #16]	@ zero_extendqisi2
	mul	r5, r0, r1
	ldr	r8, [sp, #4]
	mul	r1, r10, r1
	ldrb	r8, [r8, r6, asr #16]	@ zero_extendqisi2
	ldrb	r9, [r3, r9]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mov	r5, r5, lsr #26
	smlabb	r5, lr, r9, r5
	mov	r1, r1, lsr #26
	ldr	r9, [sp, #8]
	uxth	r0, r6
	smlabb	r1, lr, r8, r1
	add	r6, fp, #65536
	ldr	r8, [sp]
	and	r6, r6, r2
	mul	r9, r9, r0
	ldr	r2, [sp, #4]
	ldrb	r8, [r8, r6, asr #16]	@ zero_extendqisi2
	mul	r0, r10, r0
	ldrb	r6, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	mov	r9, r9, lsr #26
	smlabb	r9, lr, r8, r9
	mov	r0, r0, lsr #26
	smlabb	r0, lr, r6, r0
	ldr	r1, [ip, r1, asl #2]
	ldr	r5, [ip, r5, asl #2]
	ldr	r6, [ip, r9, asl #2]
	ldr	r0, [ip, r0, asl #2]
	add	r5, r5, r1
	add	r5, r5, r6
	.loc 3 311 0
	ldrh	r2, [sp, #28]
	.loc 3 307 0
	add	r0, r5, r0
	.loc 3 311 0
	ldr	r6, [sp, #4]
	.loc 3 307 0
	str	r0, [r7, #-32]
.LVL4394:
	.loc 3 311 0
	mul	r5, r10, r2
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #8]
	ldr	r8, [sp]
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldr	r0, [sp, #40]
	uxth	r1, r4
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mul	r2, r9, r2
	ldr	r4, [sp, #16]
	mov	r5, r5, lsr #26
	add	r0, r0, fp
	smlabb	r5, lr, r6, r5
	ldr	r6, [sp]
	and	r4, r4, r0
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mul	r0, r9, r1
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #4]
	mul	r1, r10, r1
	mov	r2, r2, lsr #26
	ldrb	r4, [r9, r4, asr #16]	@ zero_extendqisi2
	smlabb	r2, lr, r8, r2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r4, [r3, r4]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	smlabb	r0, lr, r6, r0
	mov	r1, r1, lsr #26
	ldr	r2, [ip, r2, asl #2]
	smlabb	r1, lr, r4, r1
	ldr	r4, [ip, r5, asl #2]
	ldr	r0, [ip, r0, asl #2]
	add	r4, r2, r4
	.loc 3 306 0
	ldr	r2, [sp, #24]
	.loc 3 311 0
	ldr	r1, [ip, r1, asl #2]
	.loc 3 306 0
	subs	r2, r2, #2
	add	r4, r4, r0
	str	r2, [sp, #24]
.LVL4395:
	ldr	r2, [sp, #36]
.LVL4396:
	.loc 3 311 0
	add	r4, r4, r1
	str	r4, [r7, #-16]
	add	fp, r2, fp
.LVL4397:
	add	r7, r7, #32
.LVL4398:
	.loc 3 306 0
	bpl	.L4997
	.loc 3 316 0
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #12]
	ldr	r4, [sp, #48]
	ldr	r2, [sp, #44]
	tst	r0, #1
	ldr	r0, [sp, #36]
	mov	r2, r2, lsr #1
	add	r4, r4, r1, asl #1
	mla	r4, r0, r2, r4
	add	r1, r2, #1
	ldr	r2, [sp, #20]
	add	r2, r2, r1, asl #5
	str	r2, [sp, #20]
	bne	.L4974
.LVL4399:
.L5010:
	.loc 3 317 0
	ldr	r5, [sp, #16]
	mov	ip, #64
	and	r1, r4, r5
	mvn	r2, r1
	ldr	r7, [sp, #8]
	uxth	r2, r2
	ldr	r8, [sp]
	ldr	fp, [sp, #4]
	mul	r0, r7, r2
	uxth	lr, r1
	add	r4, r4, #65536
	mul	r2, r10, r2
	and	r4, r4, r5
	ldrb	r6, [fp, r1, asr #16]	@ zero_extendqisi2
	ldrb	r5, [r8, r1, asr #16]	@ zero_extendqisi2
	mul	r7, r7, lr
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mul	lr, r10, lr
	ldrb	r9, [r3, r5]	@ zero_extendqisi2
	ldrb	r1, [fp, r4, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r5, [r3, r8]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	mov	r2, r2, lsr #26
	ldrb	r8, [r3, r1]	@ zero_extendqisi2
	smlabb	r9, ip, r9, r0
	smlabb	r3, ip, r6, r2
.LVL4400:
	mov	r4, r7, lsr #26
	ldr	r2, [sp, #52]
	smlabb	r4, ip, r5, r4
	mov	lr, lr, lsr #26
	ldr	r0, [r2]
	smlabb	r1, ip, r8, lr
	ldr	r2, [r0, r9, asl #2]
	ldr	ip, [r0, r3, asl #2]
	ldr	r3, [r0, r4, asl #2]
	add	r2, r2, ip
	ldr	r1, [r0, r1, asl #2]
	add	r3, r2, r3
	ldr	r2, [sp, #20]
	add	r3, r3, r1
	str	r3, [r2]
	b	.L4974
.LVL4401:
.L5053:
.LBE940:
.LBE939:
.LBE948:
	.loc 3 127 0
	ldr	r2, [r9, #48]
.LVL4402:
	mov	r1, #1
	mov	r0, #0
.LVL4403:
	bl	R_GetDrawColumnFunc
.LVL4404:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4405:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4406:
.L4995:
	.cfi_restore_state
.LBB949:
.LBB943:
.LBB941:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	ip, ip, asl #16
.LVL4407:
	.loc 3 325 0
	blt	.L5001
	.loc 3 328 0
	cmp	r4, ip
	blt	.L5000
.L5002:
	rsb	r4, ip, r4
.LVL4408:
	cmp	ip, r4
	ble	.L5002
.L5000:
	.loc 3 332 0
	add	r1, r4, #65536
.LVL4409:
	.loc 3 333 0
	cmp	r1, ip
	blt	.L5003
.L5004:
	rsb	r1, ip, r1
.LVL4410:
	cmp	r1, ip
	bge	.L5004
.L5003:
	.loc 3 345 0
	mov	fp, #0
.LVL4411:
	mov	r6, #64
	ldr	r2, .L5060+32
	ldr	r0, [sp, #8]
	ldr	r9, [r2]
	ldr	r2, [sp, #32]
	rsb	r10, r0, #65280
	add	r2, r2, #1
	add	r10, r10, #255
	str	r2, [sp, #16]
.LVL4412:
	str	r10, [sp, #24]
.LVL4413:
.L5007:
	mvn	r0, r4
	ldr	r5, [sp, #24]
	ldr	r8, [sp, #8]
	uxth	r2, r4
	uxth	r0, r0
	mul	lr, r5, r2
	mul	r7, r5, r0
	mul	r2, r8, r2
	mul	r0, r8, r0
	ldr	r8, [sp]
	ldr	r5, [sp, #4]
	ldrb	r8, [r8, r1, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r5, r1, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	mov	r2, r2, lsr #26
	smlabb	r2, r6, r8, r2
	ldr	r8, [sp]
	ldrb	r5, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mov	lr, lr, lsr #26
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	smlabb	lr, r6, r10, lr
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mov	r7, r7, lsr #26
	mov	r0, r0, lsr #26
	smlabb	r7, r6, r5, r7
	smlabb	r0, r6, r8, r0
	ldr	r2, [r9, r2, asl #2]
	ldr	lr, [r9, lr, asl #2]
	ldr	r5, [r9, r7, asl #2]
	add	lr, lr, r2
	.loc 3 348 0
	ldr	r2, [sp, #12]
	.loc 3 345 0
	ldr	r0, [r9, r0, asl #2]
	.loc 3 348 0
	add	r4, r4, r2
.LVL4414:
	.loc 3 350 0
	add	r1, r1, r2
.LVL4415:
	.loc 3 345 0
	add	lr, lr, r5
	ldr	r2, [sp, #20]
	add	lr, lr, r0
	.loc 3 348 0
	cmp	r4, ip
	.loc 3 345 0
	str	lr, [r2, fp, asl #4]
.LVL4416:
	.loc 3 339 0
	ldr	r2, [sp, #16]
	add	fp, fp, #1
.LVL4417:
	.loc 3 348 0
	rsbge	r4, ip, r4
.LVL4418:
	.loc 3 350 0
	cmp	r1, ip
	rsbge	r1, ip, r1
.LVL4419:
	.loc 3 339 0
	cmp	fp, r2
	bne	.L5007
.LBE941:
.LBE943:
.LBE949:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL4420:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4421:
.L5001:
	.cfi_restore_state
.LBB950:
.LBB944:
.LBB942:
	.loc 3 326 0 discriminator 1
	adds	r4, ip, r4
.LVL4422:
	bpl	.L5000
.LVL4423:
	.loc 3 326 0 is_stmt 0
	adds	r4, ip, r4
.LVL4424:
	bmi	.L5001
	b	.L5000
.LVL4425:
.L5058:
.LBE942:
.LBE944:
.LBE950:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L4985
	b	.L4987
.LVL4426:
.L5056:
	mvn	fp, r4
.LVL4427:
.LBB951:
	.loc 3 286 0
	mov	r10, #0
	.loc 3 289 0
	mov	r9, #64
	ldr	r1, .L5060+32
.LVL4428:
	ldr	r2, [sp, #8]
	ldr	r8, [r1]
	ldr	r1, [sp, #32]
	rsb	r2, r2, #65280
	add	r1, r1, #1
	add	r2, r2, #255
	str	r1, [sp, #24]
	str	r2, [sp, #28]
.LVL4429:
.L4992:
	ldr	r7, [sp, #28]
	ldr	ip, [sp, #8]
	uxth	r1, fp
	mul	lr, ip, r1
	mul	r1, r7, r1
	uxth	r2, r4
	add	r0, r4, #65536
	ldr	r5, [sp]
	bic	r6, r4, #-16777216
	mul	ip, ip, r2
	bic	r0, r0, #-16777216
	mul	r2, r7, r2
	ldr	r7, [sp, #4]
	bic	r6, r6, #8388608
	bic	r0, r0, #8388608
	ldrb	r7, [r7, r6, asr #16]	@ zero_extendqisi2
	str	r1, [sp, #16]
	ldrb	r6, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r0, asr #16]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	ldrb	r0, [r5, r0, asr #16]	@ zero_extendqisi2
	ldrb	r5, [r3, r1]	@ zero_extendqisi2
	ldr	r1, [sp, #16]
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	mov	lr, lr, lsr #26
	mov	r1, r1, lsr #26
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	smlabb	lr, r9, r6, lr
	smlabb	r1, r9, r7, r1
	smlabb	ip, r9, r5, ip
	mov	r2, r2, lsr #26
	smlabb	r2, r9, r0, r2
	ldr	r1, [r8, r1, asl #2]
	ldr	r0, [r8, lr, asl #2]
	ldr	ip, [r8, ip, asl #2]
	ldr	r2, [r8, r2, asl #2]
	add	r0, r0, r1
	add	r0, r0, ip
	add	r0, r0, r2
	ldr	r2, [sp, #20]
	str	r0, [r2, r10, asl #4]
.LVL4430:
	.loc 3 288 0
	ldr	r2, [sp, #24]
	add	r10, r10, #1
.LVL4431:
	cmp	r10, r2
	.loc 3 292 0
	ldr	r2, [sp, #12]
	add	r4, r4, r2
.LVL4432:
	rsb	fp, r2, fp
	.loc 3 288 0
	bne	.L4992
.LBE951:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL4433:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4434:
.L5012:
	.cfi_restore_state
.LBB952:
	.loc 3 269 0
	mov	r2, #0
.LVL4435:
	str	r2, [sp, #8]
	b	.L4991
.LVL4436:
.L5057:
.LBE952:
.LBB953:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #12]
	uxth	r0, r0
	b	.L5050
.L5044:
	ldr	r3, [r5, #32]
	str	r3, [sp, #4]
	ldr	r3, [r5, #40]
	str	r3, [sp]
	b	.L4986
.LVL4437:
.L4981:
.LBE953:
	.loc 3 186 0
	tst	r3, #2
	beq	.L4980
.LBB954:
	.loc 3 188 0
	mov	r0, fp
.LVL4438:
	ldr	r1, [sp, #12]
.LVL4439:
	bl	__aeabi_idiv
.LVL4440:
	.loc 3 190 0
	ldr	r3, [sp, #32]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL4441:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL4442:
	.loc 3 190 0
	str	r3, [sp, #32]
.LVL4443:
	b	.L4980
.LVL4444:
.L5059:
	ldr	r2, [sp, #8]
.LVL4445:
	rsb	r10, r2, #65280
	ldr	r2, .L5060+32
	add	r10, r10, #255
	str	r2, [sp, #52]
	b	.L5010
.L5061:
	.align	2
.L5060:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	V_Palette32
	.word	viewheight
.LBE954:
	.cfi_endproc
.LFE77:
	.size	R_DrawColumn32_LinearUV_PointZ, .-R_DrawColumn32_LinearUV_PointZ
	.align	2
	.type	R_DrawFuzzColumn32_RoundedUV, %function
R_DrawFuzzColumn32_RoundedUV:
.LFB187:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4446:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r7, .L5100
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL4447:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	mov	r4, r0
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL4448:
	.loc 3 126 0
	bgt	.L5097
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L5100+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL4449:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL4450:
	bmi	.L5062
.LVL4451:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L5068
.LVL4452:
.L5071:
	.loc 3 215 0
	ldr	r5, .L5100+8
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L5069
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5098
.L5077:
	.loc 3 228 0 is_stmt 1
	ldr	r3, .L5100+12
	.loc 3 224 0
	mov	r8, #4
.LVL4453:
	.loc 3 221 0
	ldr	lr, [r4]
	.loc 3 228 0
	ldr	r9, [r3]
	.loc 3 223 0
	ldmib	r4, {r2, r3}
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	mov	r3, #0
	.loc 3 231 0
	ldr	r0, .L5100+16
	.loc 3 232 0
	ldr	r1, .L5100+20
	.loc 3 224 0
	ldr	r6, .L5100+24
	.loc 3 230 0
	ldr	ip, .L5100+28
	.loc 3 232 0
	stmib	r7, {r0, r1}
.LVL4454:
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r6, #-1204]
	.loc 3 221 0
	str	lr, [r5, #12]
	.loc 3 222 0
	str	r2, [r5, #4]
	str	r2, [r5, #16]
.LVL4455:
	.loc 3 230 0
	str	ip, [r7]
.L5079:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
.L5062:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4456:
.L5068:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5071
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L5072
.LBB955:
	.loc 3 181 0
	mvn	r0, r10
.LVL4457:
	mov	r1, r8
	str	r3, [sp, #4]
	uxth	r0, r0
.LVL4458:
.L5096:
.LBE955:
.LBB956:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL4459:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	fp, r0, fp
.LVL4460:
.L5073:
.LBE956:
	.loc 3 194 0
	cmp	r5, r9
	beq	.L5074
	.loc 3 195 0
	tst	r3, #4
	beq	.L5075
.LBB957:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL4461:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	fp, r0, fp
.LVL4462:
.L5074:
.LBE957:
	.loc 3 208 0
	cmp	fp, #0
	bgt	.L5071
	b	.L5062
.L5098:
	.loc 3 216 0
	ldr	r2, .L5100+24
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L5099
.L5069:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4463:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L5077
.L5078:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L5100+8
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L5100+8
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L5079
.LVL4464:
.L5097:
	.loc 3 127 0
	ldr	r2, [r7, #48]
	mov	r1, #1
	mov	r0, #3
.LVL4465:
	bl	R_GetDrawColumnFunc
.LVL4466:
	mov	r3, r0
	mov	r0, r4
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4467:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4468:
.L5099:
	.cfi_restore_state
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L5069
	b	.L5078
.L5075:
	.loc 3 201 0
	tst	r3, #8
	beq	.L5074
.LBB958:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv
.LVL4469:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	fp, r0, fp
.LVL4470:
	b	.L5074
.LVL4471:
.L5072:
.LBE958:
	.loc 3 186 0
	tst	r3, #2
	beq	.L5073
	str	r3, [sp, #4]
.LBB959:
	.loc 3 188 0
	uxth	r0, r10
.LVL4472:
	mov	r1, r8
	b	.L5096
.L5101:
	.align	2
.L5100:
	.word	.LANCHOR1
	.word	viewheight
	.word	.LANCHOR0
	.word	fullcolormap
	.word	R_FlushHTFuzz32
	.word	R_FlushQuadFuzz32
	.word	.LANCHOR2
	.word	R_FlushWholeFuzz32
.LBE959:
	.cfi_endproc
.LFE187:
	.size	R_DrawFuzzColumn32_RoundedUV, .-R_DrawFuzzColumn32_RoundedUV
	.align	2
	.type	R_DrawTranslatedColumn32_RoundedUV, %function
R_DrawTranslatedColumn32_RoundedUV:
.LFB151:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4473:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r10, .L5196
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL4474:
	.loc 3 126 0
	ldr	r3, [r10, #64]
	.loc 3 113 0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	.loc 3 126 0
	cmp	r9, r3
	.loc 3 113 0
	mov	r6, r0
	.loc 3 121 0
	ldr	fp, [r0, #28]
.LVL4475:
	.loc 3 126 0
	bgt	.L5189
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL4476:
	.loc 3 157 0
	subs	r7, r8, r5
.LVL4477:
	bmi	.L5102
	.loc 3 171 0
	ldr	r3, .L5196+4
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	mla	r4, r9, r3, r4
.LVL4478:
	.loc 3 174 0
	bne	.L5190
.LVL4479:
.L5106:
	.loc 3 215 0
	ldr	fp, .L5196+8
.LVL4480:
	ldr	r3, [fp]
	cmp	r3, #4
	beq	.L5112
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5191
.L5113:
	.loc 3 224 0 is_stmt 1
	mov	r8, #1
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 221 0
	ldr	r5, [r6]
	.loc 3 223 0
	str	r2, [fp, #8]
	str	r2, [fp, #32]
	mov	r2, #0
	.loc 3 224 0
	ldr	r1, .L5196+12
	.loc 3 231 0
	ldr	r0, .L5196+16
	.loc 3 224 0
	str	r8, [r1, #-1204]
	.loc 3 232 0
	ldr	r1, .L5196+20
	.loc 3 233 0
	ldr	ip, .L5196+24
	.loc 3 230 0
	ldr	lr, .L5196+28
	.loc 3 232 0
	stmib	r10, {r0, r1}
	.loc 3 222 0
	str	r3, [fp, #4]
	str	r3, [fp, #16]
	.loc 3 233 0
	add	r3, ip, r3, asl #4
	.loc 3 221 0
	str	r5, [fp, #12]
	.loc 3 233 0
	str	r3, [sp, #24]
.LVL4481:
	.loc 3 230 0
	str	lr, [r10]
.L5115:
.LVL4482:
	.loc 3 245 0
	add	r3, r2, #1
	str	r3, [fp]
.LBB960:
	.loc 3 253 0
	ldr	r3, [r6, #52]
	.loc 3 251 0
	ldr	r5, [r6, #32]
.LVL4483:
	.loc 3 274 0
	ldr	r10, [r6, #40]
	.loc 3 253 0
	str	r3, [sp, #12]
.LVL4484:
	.loc 3 273 0
	ldr	r3, [r6, #36]
.LVL4485:
	.loc 3 275 0
	cmp	r5, r10
	.loc 3 273 0
	str	r3, [sp, #16]
.LVL4486:
	.loc 3 275 0
	moveq	r3, #0
.LVL4487:
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r3, [r6, #29]	@ zero_extendqisi2
.L5118:
.LVL4488:
	.loc 3 286 0 is_stmt 1
	ldr	r6, [r6, #24]
.LVL4489:
	cmp	r6, #128
	beq	.L5192
	.loc 3 294 0
	cmp	r6, #0
	bne	.L5121
.LVL4490:
	mov	fp, r3, lsr #2
	ldr	r3, .L5196+32
.LVL4491:
	ldr	r2, .L5196+36
	str	r3, [sp, #20]
	ldr	r3, [sp, #24]
	.loc 3 297 0
	add	fp, r2, fp, asl #6
	add	r8, r3, #16
.LVL4492:
.L5123:
	mov	lr, r4, asr #16
	cmp	lr, #0
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, lr, #1
	ldr	r3, [sp, #20]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r6, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4493:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [fp, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r7, r7, #1
	.loc 3 297 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r7, #1
	.loc 3 297 0
	add	r6, r6, r3, asl #8
	ldr	r3, [r6, #252]
	.loc 3 300 0
	add	r4, r4, r9
.LVL4494:
	.loc 3 297 0
	str	r3, [r8, #-16]
.LVL4495:
	add	r8, r8, #16
.LVL4496:
	.loc 3 296 0
	bne	.L5123
.LVL4497:
.L5102:
.LBE960:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4498:
.L5190:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5106
	.loc 3 178 0
	cmp	r5, #0
	beq	.L5107
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB967:
	.loc 3 181 0
	mvnne	r3, fp
	uxthne	r3, r3
.LBE967:
	.loc 3 179 0
	bne	.L5186
	.loc 3 186 0
	tst	r3, #2
	beq	.L5107
.LBB968:
	.loc 3 188 0
	uxth	r3, fp
.L5186:
	mov	r0, r3
.LVL4499:
	mov	r1, r9
	str	r3, [sp, #12]
	bl	__aeabi_idiv
.LVL4500:
	.loc 3 191 0
	ldr	r3, [sp, #12]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 191 0
	add	r4, r4, r3
.LVL4501:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL4502:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL4503:
.L5107:
.LBE968:
	.loc 3 194 0
	ldr	r3, .L5196+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L5109
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L5193
	.loc 3 201 0
	tst	r3, #8
	beq	.L5109
.LBB969:
	.loc 3 203 0
	uxth	r0, fp
	mov	r1, r9
	bl	__aeabi_idiv
.LVL4504:
	.loc 3 204 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL4505:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL4506:
.L5109:
.LBE969:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L5106
	b	.L5102
.LVL4507:
.L5191:
	.loc 3 216 0
	ldr	r2, .L5196+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L5194
.L5112:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4508:
	.loc 3 219 0
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L5113
.L5114:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [fp, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, fp, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L5196+8
	.loc 3 240 0
	ldr	ip, .L5196+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [fp, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	ip, .L5196+24
	ldr	r2, [fp]
	add	r3, ip, r3, asl #2
	str	r3, [sp, #24]
.LVL4509:
	b	.L5115
.LVL4510:
.L5121:
.LBB970:
.LBB961:
	.loc 3 303 0
	sub	r2, r6, #1
.LVL4511:
	.loc 3 304 0
	tst	r2, r6
	bne	.L5124
.LBB962:
	.loc 3 305 0
	mov	ip, r2, asl #16
	mvn	ip, ip, lsr #16
	.loc 3 306 0
	sub	r2, r7, #1
.LVL4512:
	cmn	r2, #1
	str	r2, [sp, #44]
	.loc 3 305 0
	mvn	ip, ip, asl #16
.LVL4513:
	.loc 3 306 0
	str	r2, [sp, #28]
.LVL4514:
	beq	.L5195
	ldr	r2, .L5196+36
.LVL4515:
	mov	r3, r3, lsr #2
.LVL4516:
	str	r2, [sp, #60]
	str	r3, [sp, #56]
	.loc 3 307 0
	add	r3, r2, r3, asl #6
	ldr	r2, [sp, #24]
	str	r7, [sp, #48]
	add	r2, r2, #32
	.loc 3 306 0
	mov	r8, r4
	mov	r6, r2
.LVL4517:
	mov	r7, ip
	mov	fp, r3
	ldr	r1, .L5196+32
	str	r4, [sp, #52]
	str	r1, [sp, #20]
	mov	r1, r9, asl #1
	str	r1, [sp, #32]
	add	r1, r9, #65536
	str	r1, [sp, #40]
	str	r9, [sp, #36]
.LVL4518:
.L5128:
	.loc 3 307 0
	and	r4, r8, r7
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	ldr	r2, [sp, #20]
	ldr	ip, [sp, #16]
	ldr	r9, [r2]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r2, r8, #65536
	subgt	r3, r3, #1
	and	r2, r2, r7
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4519:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, r8
	ldr	r2, [sp, #12]
	.loc 3 311 0
	and	r4, r4, r7
	.loc 3 307 0
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	.loc 3 307 0
	add	ip, r9, r2, asl #8
	ldr	r2, [ip, #252]
	.loc 3 311 0
	ldr	ip, [sp, #16]
	.loc 3 307 0
	str	r2, [r6, #-32]
.LVL4520:
	.loc 3 311 0
	ldr	r2, [sp, #20]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [r2]
	ldr	r2, [sp, #40]
	subgt	r3, r3, #1
	add	r2, r2, r8
	and	r2, r2, r7
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4521:
	.loc 3 306 0
	ldr	r2, [sp, #28]
	.loc 3 311 0
	mov	r4, r4, asr #8
	.loc 3 306 0
	subs	r2, r2, #2
	.loc 3 311 0
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	.loc 3 306 0
	str	r2, [sp, #28]
.LVL4522:
	ldr	r2, [sp, #32]
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r8, r2, r8
.LVL4523:
	ldr	r2, [sp, #12]
	add	r6, r6, #32
.LVL4524:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	add	ip, r9, r3, asl #8
	ldr	r3, [ip, #252]
	str	r3, [r6, #-48]
.LVL4525:
	.loc 3 306 0
	bpl	.L5128
	ldr	r4, [sp, #52]
	ldr	r9, [sp, #36]
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #32]
	mov	r3, r3, lsr #1
	add	r4, r4, r9, asl #1
	add	r2, r3, #1
	mov	ip, r7
	mla	r4, r1, r3, r4
	ldr	r7, [sp, #48]
.LVL4526:
	ldr	r3, [sp, #24]
	.loc 3 316 0
	tst	r7, #1
	add	r3, r3, r2, asl #5
	str	r3, [sp, #24]
	bne	.L5102
.LVL4527:
.L5143:
	.loc 3 317 0
	and	r6, r4, ip
	ldr	r2, [sp, #20]
	mov	r3, r6, asr #16
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	add	r4, r4, #65536
	and	ip, ip, r4
.LVL4528:
	subgt	r2, r3, #1
	ldrb	r3, [r5, ip, asr #16]	@ zero_extendqisi2
	ldr	ip, [sp, #16]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	ip, [ip, r6, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL4529:
	ldr	r3, [sp, #60]
	mov	fp, r6, asl #16
	add	fp, r3, fp, lsr #26
	ldr	r3, [sp, #56]
	ldr	r2, [sp, #12]
	ldrb	r3, [fp, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	str	r3, [r2]
	b	.L5102
.LVL4530:
.L5189:
.LBE962:
.LBE961:
.LBE970:
	.loc 3 127 0
	ldr	r2, [r10, #48]
	mov	r1, #1
	mov	r0, #2
.LVL4531:
	bl	R_GetDrawColumnFunc
.LVL4532:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4533:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4534:
.L5124:
	.cfi_restore_state
.LBB971:
.LBB965:
.LBB963:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r6, asl #16
.LVL4535:
	.loc 3 325 0
	blt	.L5133
	.loc 3 328 0
	cmp	r4, r6
	blt	.L5132
.L5134:
	rsb	r4, r6, r4
.LVL4536:
	cmp	r6, r4
	ble	.L5134
.L5132:
	.loc 3 332 0
	add	r8, r4, #65536
.LVL4537:
	.loc 3 333 0
	cmp	r8, r6
	blt	.L5135
.L5136:
	rsb	r8, r6, r8
.LVL4538:
	cmp	r8, r6
	bge	.L5136
.L5135:
	.loc 3 345 0
	mov	fp, #0
	ldr	r1, .L5196+32
	ldr	r2, .L5196+36
	mov	r3, r3, lsr #2
.LVL4539:
	str	r1, [sp, #20]
	add	r3, r2, r3, asl #6
	add	r1, r7, #1
	str	r1, [sp, #28]
.LVL4540:
	str	r3, [sp, #32]
.LVL4541:
.L5140:
	mov	r3, r4, asr #16
	ldr	r2, [sp, #20]
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	lr, [ip, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r8, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4542:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #32]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r9
.LVL4543:
	.loc 3 345 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	.loc 3 350 0
	add	r8, r8, r9
.LVL4544:
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	str	r3, [r2, fp, asl #4]
.LVL4545:
	.loc 3 339 0
	ldr	r3, [sp, #28]
	add	fp, fp, #1
.LVL4546:
	.loc 3 348 0
	rsbge	r4, r6, r4
.LVL4547:
	.loc 3 350 0
	cmp	r8, r6
	rsbge	r8, r6, r8
.LVL4548:
	.loc 3 339 0
	cmp	fp, r3
	bne	.L5140
.LBE963:
.LBE965:
.LBE971:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4549:
.L5133:
	.cfi_restore_state
.LBB972:
.LBB966:
.LBB964:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL4550:
	bpl	.L5132
.LVL4551:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL4552:
	bmi	.L5133
	b	.L5132
.LVL4553:
.L5194:
.LBE964:
.LBE966:
.LBE972:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [fp, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L5112
	b	.L5114
.LVL4554:
.L5192:
	ldr	r1, .L5196+32
	ldr	r2, .L5196+36
	mov	r3, r3, lsr #2
.LVL4555:
	str	r1, [sp, #20]
	ldr	r1, [sp, #24]
.LBB973:
	.loc 3 289 0
	add	r3, r2, r3, asl #6
	add	fp, r1, #16
	str	r3, [sp, #24]
.LVL4556:
.L5120:
	ldr	r3, [sp, #20]
	bic	r6, r4, #-16777216
	ldr	ip, [sp, #16]
	bic	r6, r6, #8388608
	ldr	r8, [r3]
	add	r3, r4, #65536
	movs	r2, r6, asr #16
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	bic	r3, r3, #-16777216
	subne	r2, r2, #1
	bic	r3, r3, #8388608
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4557:
	mov	r6, r6, asr #8
	ldr	r3, [sp, #24]
	uxtb	r6, r6
	ldrb	r3, [r3, r6, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r7, r7, #1
	.loc 3 289 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r7, #1
	.loc 3 289 0
	add	r8, r8, r3, asl #8
	ldr	r3, [r8, #252]
	.loc 3 292 0
	add	r4, r4, r9
.LVL4558:
	.loc 3 289 0
	str	r3, [fp, #-16]
.LVL4559:
	add	fp, fp, #16
.LVL4560:
	.loc 3 288 0
	bne	.L5120
.LBE973:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4561:
.L5193:
	.cfi_restore_state
.LBB974:
	.loc 3 197 0
	mvn	r0, fp
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL4562:
	.loc 3 198 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL4563:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL4564:
.LBE974:
	b	.L5109
.LVL4565:
.L5195:
	mov	r3, r3, lsr #2
.LVL4566:
	str	r3, [sp, #56]
	ldr	r3, .L5196+32
	str	r3, [sp, #20]
	ldr	r3, .L5196+36
	str	r3, [sp, #60]
	b	.L5143
.L5197:
	.align	2
.L5196:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	V_Palette32
	.word	filter_roundedUVMap
	.word	viewheight
	.cfi_endproc
.LFE151:
	.size	R_DrawTranslatedColumn32_RoundedUV, .-R_DrawTranslatedColumn32_RoundedUV
	.align	2
	.type	R_DrawTLColumn32_RoundedUV, %function
R_DrawTLColumn32_RoundedUV:
.LFB115:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4567:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r10, .L5292
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL4568:
	.loc 3 126 0
	ldr	r3, [r10, #64]
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 126 0
	cmp	r9, r3
	.loc 3 113 0
	mov	r6, r0
	.loc 3 121 0
	ldr	fp, [r0, #28]
.LVL4569:
	.loc 3 126 0
	bgt	.L5285
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL4570:
	.loc 3 157 0
	subs	r7, r8, r5
.LVL4571:
	bmi	.L5198
	.loc 3 171 0
	ldr	r3, .L5292+4
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	mla	r4, r9, r3, r4
.LVL4572:
	.loc 3 174 0
	bne	.L5286
.LVL4573:
.L5202:
	.loc 3 215 0
	ldr	fp, .L5292+8
.LVL4574:
	ldr	r3, [fp]
	cmp	r3, #4
	beq	.L5208
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5287
.L5209:
	.loc 3 224 0 is_stmt 1
	mov	r8, #2
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 226 0
	ldr	r3, .L5292+12
	.loc 3 221 0
	ldr	r5, [r6]
	.loc 3 226 0
	ldr	r0, [r3]
	.loc 3 223 0
	str	r2, [fp, #8]
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 223 0
	str	r2, [fp, #32]
	mov	r2, #0
	.loc 3 224 0
	ldr	r1, .L5292+16
	.loc 3 226 0
	str	r0, [fp, #1008]
	.loc 3 224 0
	str	r8, [r1, #-1204]
	.loc 3 231 0
	ldr	r0, .L5292+20
	.loc 3 232 0
	ldr	r1, .L5292+24
	.loc 3 233 0
	ldr	ip, .L5292+28
	.loc 3 230 0
	ldr	lr, .L5292+32
	.loc 3 232 0
	stmib	r10, {r0, r1}
	.loc 3 222 0
	str	r3, [fp, #4]
	str	r3, [fp, #16]
	.loc 3 233 0
	add	r3, ip, r3, asl #4
	.loc 3 221 0
	str	r5, [fp, #12]
	.loc 3 233 0
	str	r3, [sp, #16]
.LVL4575:
	.loc 3 230 0
	str	lr, [r10]
.L5211:
.LVL4576:
	.loc 3 245 0
	add	r3, r2, #1
.LBB975:
	.loc 3 251 0
	ldr	r5, [r6, #32]
.LVL4577:
	.loc 3 274 0
	ldr	r10, [r6, #40]
.LBE975:
	.loc 3 245 0
	str	r3, [fp]
.LBB982:
	.loc 3 273 0
	ldr	r3, [r6, #36]
	.loc 3 275 0
	cmp	r5, r10
	.loc 3 273 0
	str	r3, [sp, #8]
.LVL4578:
	.loc 3 275 0
	moveq	r3, #0
.LVL4579:
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r3, [r6, #29]	@ zero_extendqisi2
.L5214:
.LVL4580:
	.loc 3 286 0 is_stmt 1
	ldr	r6, [r6, #24]
.LVL4581:
	cmp	r6, #128
	beq	.L5288
	.loc 3 294 0
	cmp	r6, #0
	bne	.L5217
.LVL4582:
	mov	fp, r3, lsr #2
	ldr	r3, .L5292+36
.LVL4583:
	ldr	r2, .L5292+40
	str	r3, [sp, #12]
	ldr	r3, [sp, #16]
	.loc 3 297 0
	add	fp, r2, fp, asl #6
	add	r8, r3, #16
.LVL4584:
.L5219:
	mov	lr, r4, asr #16
	cmp	lr, #0
	movle	r2, #0
	ldr	ip, [sp, #8]
	subgt	r2, lr, #1
	ldr	r3, [sp, #12]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r6, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4585:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [fp, r3, asr #2]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r7, r7, #1
	.loc 3 297 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r7, #1
	.loc 3 297 0
	add	r6, r6, r3, asl #8
	ldr	r3, [r6, #252]
	.loc 3 300 0
	add	r4, r4, r9
.LVL4586:
	.loc 3 297 0
	str	r3, [r8, #-16]
.LVL4587:
	add	r8, r8, #16
.LVL4588:
	.loc 3 296 0
	bne	.L5219
.LVL4589:
.L5198:
.LBE982:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4590:
.L5286:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5202
	.loc 3 178 0
	cmp	r5, #0
	beq	.L5203
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB983:
	.loc 3 181 0
	mvnne	r3, fp
	uxthne	r3, r3
.LBE983:
	.loc 3 179 0
	bne	.L5282
	.loc 3 186 0
	tst	r3, #2
	beq	.L5203
.LBB984:
	.loc 3 188 0
	uxth	r3, fp
.L5282:
	mov	r0, r3
.LVL4591:
	mov	r1, r9
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL4592:
	.loc 3 191 0
	ldr	r3, [sp, #8]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 191 0
	add	r4, r4, r3
.LVL4593:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL4594:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL4595:
.L5203:
.LBE984:
	.loc 3 194 0
	ldr	r3, .L5292+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L5205
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L5289
	.loc 3 201 0
	tst	r3, #8
	beq	.L5205
.LBB985:
	.loc 3 203 0
	uxth	r0, fp
	mov	r1, r9
	bl	__aeabi_idiv
.LVL4596:
	.loc 3 204 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL4597:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL4598:
.L5205:
.LBE985:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L5202
	b	.L5198
.LVL4599:
.L5287:
	.loc 3 216 0
	ldr	r2, .L5292+16
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L5290
.L5208:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4600:
	.loc 3 219 0
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L5209
.L5210:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [fp, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, fp, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L5292+8
	.loc 3 240 0
	ldr	ip, .L5292+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [fp, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	ip, .L5292+28
	ldr	r2, [fp]
	add	r3, ip, r3, asl #2
	str	r3, [sp, #16]
.LVL4601:
	b	.L5211
.LVL4602:
.L5217:
.LBB986:
.LBB976:
	.loc 3 303 0
	sub	r2, r6, #1
.LVL4603:
	.loc 3 304 0
	tst	r2, r6
	bne	.L5220
.LBB977:
	.loc 3 305 0
	mov	ip, r2, asl #16
	mvn	ip, ip, lsr #16
	.loc 3 306 0
	sub	r2, r7, #1
.LVL4604:
	cmn	r2, #1
	str	r2, [sp, #36]
	.loc 3 305 0
	mvn	ip, ip, asl #16
.LVL4605:
	.loc 3 306 0
	str	r2, [sp, #20]
.LVL4606:
	beq	.L5291
	ldr	r2, .L5292+40
.LVL4607:
	mov	r3, r3, lsr #2
.LVL4608:
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	.loc 3 307 0
	add	r3, r2, r3, asl #6
	ldr	r2, [sp, #16]
	str	r7, [sp, #40]
	add	r2, r2, #32
	.loc 3 306 0
	mov	r8, r4
	mov	r6, r2
.LVL4609:
	mov	r7, ip
	mov	fp, r3
	ldr	r1, .L5292+36
	str	r4, [sp, #44]
	str	r1, [sp, #12]
	mov	r1, r9, asl #1
	str	r1, [sp, #24]
	add	r1, r9, #65536
	str	r1, [sp, #32]
	str	r9, [sp, #28]
.LVL4610:
.L5224:
	.loc 3 307 0
	and	r4, r8, r7
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	ldr	r2, [sp, #12]
	ldr	ip, [sp, #8]
	ldr	r9, [r2]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r2, r8, #65536
	subgt	r3, r3, #1
	and	r2, r2, r7
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4611:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #28]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, r8
	.loc 3 311 0
	and	r4, r4, r7
	.loc 3 307 0
	add	ip, r9, r3, asl #8
	.loc 3 311 0
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	.loc 3 307 0
	ldr	r2, [ip, #252]
	.loc 3 311 0
	ldr	ip, [sp, #8]
	.loc 3 307 0
	str	r2, [r6, #-32]
.LVL4612:
	.loc 3 311 0
	ldr	r2, [sp, #12]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [r2]
	ldr	r2, [sp, #32]
	subgt	r3, r3, #1
	add	r2, r2, r8
	and	r2, r2, r7
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4613:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	r2, [sp, #20]
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r2, r2, #2
	.loc 3 311 0
	add	ip, r9, r3, asl #8
	.loc 3 306 0
	str	r2, [sp, #20]
.LVL4614:
	.loc 3 311 0
	ldr	r3, [ip, #252]
	ldr	r2, [sp, #24]
	str	r3, [r6, #-16]
	add	r8, r2, r8
.LVL4615:
	add	r6, r6, #32
.LVL4616:
	.loc 3 306 0
	bpl	.L5224
	ldr	r4, [sp, #44]
	ldr	r9, [sp, #28]
	ldr	r3, [sp, #36]
	ldr	r1, [sp, #24]
	mov	r3, r3, lsr #1
	add	r4, r4, r9, asl #1
	add	r2, r3, #1
	mov	ip, r7
	mla	r4, r1, r3, r4
	ldr	r7, [sp, #40]
.LVL4617:
	ldr	r3, [sp, #16]
	.loc 3 316 0
	tst	r7, #1
	add	r3, r3, r2, asl #5
	str	r3, [sp, #16]
	bne	.L5198
.LVL4618:
.L5239:
	.loc 3 317 0
	and	r6, r4, ip
	ldr	r2, [sp, #12]
	mov	r3, r6, asr #16
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	add	r4, r4, #65536
	and	ip, ip, r4
.LVL4619:
	subgt	r2, r3, #1
	ldrb	r3, [r5, ip, asr #16]	@ zero_extendqisi2
	ldr	ip, [sp, #8]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	ip, [ip, r6, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL4620:
	ldr	r3, [sp, #52]
	mov	fp, r6, asl #16
	add	fp, r3, fp, lsr #26
	ldr	r3, [sp, #48]
	ldr	r2, [sp, #16]
	ldrb	r3, [fp, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	str	r3, [r2]
	b	.L5198
.LVL4621:
.L5285:
.LBE977:
.LBE976:
.LBE986:
	.loc 3 127 0
	mov	r0, #1
.LVL4622:
	ldr	r2, [r10, #48]
	mov	r1, r0
	bl	R_GetDrawColumnFunc
.LVL4623:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4624:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4625:
.L5220:
	.cfi_restore_state
.LBB987:
.LBB980:
.LBB978:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r6, asl #16
.LVL4626:
	.loc 3 325 0
	blt	.L5229
	.loc 3 328 0
	cmp	r4, r6
	blt	.L5228
.L5230:
	rsb	r4, r6, r4
.LVL4627:
	cmp	r6, r4
	ble	.L5230
.L5228:
	.loc 3 332 0
	add	r8, r4, #65536
.LVL4628:
	.loc 3 333 0
	cmp	r8, r6
	blt	.L5231
.L5232:
	rsb	r8, r6, r8
.LVL4629:
	cmp	r8, r6
	bge	.L5232
.L5231:
	.loc 3 345 0
	mov	fp, #0
	ldr	r1, .L5292+36
	ldr	r2, .L5292+40
	mov	r3, r3, lsr #2
.LVL4630:
	str	r1, [sp, #12]
	add	r3, r2, r3, asl #6
	add	r1, r7, #1
	str	r1, [sp, #20]
.LVL4631:
	str	r3, [sp, #24]
.LVL4632:
.L5236:
	mov	r3, r4, asr #16
	ldr	r2, [sp, #12]
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	ldr	ip, [sp, #8]
	subgt	r2, r3, #1
	ldrb	lr, [ip, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r8, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4633:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #24]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r9
.LVL4634:
	.loc 3 345 0
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	.loc 3 350 0
	add	r8, r8, r9
.LVL4635:
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	str	r3, [r2, fp, asl #4]
.LVL4636:
	.loc 3 339 0
	ldr	r3, [sp, #20]
	add	fp, fp, #1
.LVL4637:
	.loc 3 348 0
	rsbge	r4, r6, r4
.LVL4638:
	.loc 3 350 0
	cmp	r8, r6
	rsbge	r8, r6, r8
.LVL4639:
	.loc 3 339 0
	cmp	fp, r3
	bne	.L5236
.LBE978:
.LBE980:
.LBE987:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4640:
.L5229:
	.cfi_restore_state
.LBB988:
.LBB981:
.LBB979:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL4641:
	bpl	.L5228
.LVL4642:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL4643:
	bmi	.L5229
	b	.L5228
.LVL4644:
.L5290:
.LBE979:
.LBE981:
.LBE988:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [fp, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L5208
	b	.L5210
.LVL4645:
.L5288:
	ldr	r1, .L5292+36
	ldr	r2, .L5292+40
	mov	r3, r3, lsr #2
.LVL4646:
	str	r1, [sp, #12]
	ldr	r1, [sp, #16]
.LBB989:
	.loc 3 289 0
	add	r3, r2, r3, asl #6
	add	fp, r1, #16
	str	r3, [sp, #16]
.LVL4647:
.L5216:
	ldr	r3, [sp, #12]
	bic	r6, r4, #-16777216
	ldr	ip, [sp, #8]
	bic	r6, r6, #8388608
	ldr	r8, [r3]
	add	r3, r4, #65536
	movs	r2, r6, asr #16
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	bic	r3, r3, #-16777216
	subne	r2, r2, #1
	bic	r3, r3, #8388608
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4648:
	mov	r6, r6, asr #8
	ldr	r3, [sp, #16]
	uxtb	r6, r6
	ldrb	r3, [r3, r6, asr #2]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r7, r7, #1
	.loc 3 289 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r7, #1
	.loc 3 289 0
	add	r8, r8, r3, asl #8
	ldr	r3, [r8, #252]
	.loc 3 292 0
	add	r4, r4, r9
.LVL4649:
	.loc 3 289 0
	str	r3, [fp, #-16]
.LVL4650:
	add	fp, fp, #16
.LVL4651:
	.loc 3 288 0
	bne	.L5216
.LBE989:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4652:
.L5289:
	.cfi_restore_state
.LBB990:
	.loc 3 197 0
	mvn	r0, fp
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL4653:
	.loc 3 198 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL4654:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL4655:
.LBE990:
	b	.L5205
.LVL4656:
.L5291:
	mov	r3, r3, lsr #2
.LVL4657:
	str	r3, [sp, #48]
	ldr	r3, .L5292+36
	str	r3, [sp, #12]
	ldr	r3, .L5292+40
	str	r3, [sp, #52]
	b	.L5239
.L5293:
	.align	2
.L5292:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushHTTL32
	.word	R_FlushQuadTL32
	.word	.LANCHOR0+3140
	.word	R_FlushWholeTL32
	.word	V_Palette32
	.word	filter_roundedUVMap
	.word	viewheight
	.cfi_endproc
.LFE115:
	.size	R_DrawTLColumn32_RoundedUV, .-R_DrawTLColumn32_RoundedUV
	.align	2
	.type	R_DrawColumn32_RoundedUV, %function
R_DrawColumn32_RoundedUV:
.LFB79:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4658:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r10, .L5388
	.loc 3 117 0
	ldr	r9, [r0, #16]
.LVL4659:
	.loc 3 126 0
	ldr	r3, [r10, #64]
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 126 0
	cmp	r9, r3
	.loc 3 113 0
	mov	r6, r0
	.loc 3 121 0
	ldr	fp, [r0, #28]
.LVL4660:
	.loc 3 126 0
	bgt	.L5381
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL4661:
	.loc 3 157 0
	subs	r7, r8, r5
.LVL4662:
	bmi	.L5294
	.loc 3 171 0
	ldr	r3, .L5388+4
	.loc 3 174 0
	ldr	r2, [r0, #60]
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	rsb	r3, r3, r5
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	mla	r4, r9, r3, r4
.LVL4663:
	.loc 3 174 0
	bne	.L5382
.LVL4664:
.L5298:
	.loc 3 215 0
	ldr	fp, .L5388+8
.LVL4665:
	ldr	r3, [fp]
	cmp	r3, #4
	beq	.L5304
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5383
.L5305:
	.loc 3 224 0 is_stmt 1
	mov	r8, #1
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 221 0
	ldr	r5, [r6]
	.loc 3 223 0
	str	r2, [fp, #8]
	str	r2, [fp, #32]
	mov	r2, #0
	.loc 3 224 0
	ldr	r1, .L5388+12
	.loc 3 231 0
	ldr	r0, .L5388+16
	.loc 3 224 0
	str	r8, [r1, #-1204]
	.loc 3 232 0
	ldr	r1, .L5388+20
	.loc 3 233 0
	ldr	ip, .L5388+24
	.loc 3 230 0
	ldr	lr, .L5388+28
	.loc 3 232 0
	stmib	r10, {r0, r1}
	.loc 3 222 0
	str	r3, [fp, #4]
	str	r3, [fp, #16]
	.loc 3 233 0
	add	r3, ip, r3, asl #4
	.loc 3 221 0
	str	r5, [fp, #12]
	.loc 3 233 0
	str	r3, [sp, #16]
.LVL4666:
	.loc 3 230 0
	str	lr, [r10]
.L5307:
.LVL4667:
	.loc 3 245 0
	add	r3, r2, #1
.LBB991:
	.loc 3 251 0
	ldr	r5, [r6, #32]
.LVL4668:
	.loc 3 274 0
	ldr	r10, [r6, #40]
.LBE991:
	.loc 3 245 0
	str	r3, [fp]
.LBB998:
	.loc 3 273 0
	ldr	r3, [r6, #36]
	.loc 3 275 0
	cmp	r5, r10
	.loc 3 273 0
	str	r3, [sp, #8]
.LVL4669:
	.loc 3 275 0
	moveq	r3, #0
.LVL4670:
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r3, [r6, #29]	@ zero_extendqisi2
.L5310:
.LVL4671:
	.loc 3 286 0 is_stmt 1
	ldr	r6, [r6, #24]
.LVL4672:
	cmp	r6, #128
	beq	.L5384
	.loc 3 294 0
	cmp	r6, #0
	bne	.L5313
.LVL4673:
	mov	fp, r3, lsr #2
	ldr	r3, .L5388+32
.LVL4674:
	ldr	r2, .L5388+36
	str	r3, [sp, #12]
	ldr	r3, [sp, #16]
	.loc 3 297 0
	add	fp, r2, fp, asl #6
	add	r8, r3, #16
.LVL4675:
.L5315:
	mov	lr, r4, asr #16
	cmp	lr, #0
	movle	r2, #0
	ldr	ip, [sp, #8]
	subgt	r2, lr, #1
	ldr	r3, [sp, #12]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r6, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4676:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [fp, r3, asr #2]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r7, r7, #1
	.loc 3 297 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 296 0
	cmn	r7, #1
	.loc 3 297 0
	add	r6, r6, r3, asl #8
	ldr	r3, [r6, #252]
	.loc 3 300 0
	add	r4, r4, r9
.LVL4677:
	.loc 3 297 0
	str	r3, [r8, #-16]
.LVL4678:
	add	r8, r8, #16
.LVL4679:
	.loc 3 296 0
	bne	.L5315
.LVL4680:
.L5294:
.LBE998:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4681:
.L5382:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5298
	.loc 3 178 0
	cmp	r5, #0
	beq	.L5299
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
.LBB999:
	.loc 3 181 0
	mvnne	r3, fp
	uxthne	r3, r3
.LBE999:
	.loc 3 179 0
	bne	.L5378
	.loc 3 186 0
	tst	r3, #2
	beq	.L5299
.LBB1000:
	.loc 3 188 0
	uxth	r3, fp
.L5378:
	mov	r0, r3
.LVL4682:
	mov	r1, r9
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL4683:
	.loc 3 191 0
	ldr	r3, [sp, #8]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 191 0
	add	r4, r4, r3
.LVL4684:
	.loc 3 189 0
	str	r5, [r6, #4]
.LVL4685:
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL4686:
.L5299:
.LBE1000:
	.loc 3 194 0
	ldr	r3, .L5388+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L5301
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L5385
	.loc 3 201 0
	tst	r3, #8
	beq	.L5301
.LBB1001:
	.loc 3 203 0
	uxth	r0, fp
	mov	r1, r9
	bl	__aeabi_idiv
.LVL4687:
	.loc 3 204 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL4688:
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL4689:
.L5301:
.LBE1001:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L5298
	b	.L5294
.LVL4690:
.L5383:
	.loc 3 216 0
	ldr	r2, .L5388+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L5386
.L5304:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4691:
	.loc 3 219 0
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L5305
.L5306:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [fp, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, fp, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L5388+8
	.loc 3 240 0
	ldr	ip, .L5388+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [fp, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	ip, .L5388+24
	ldr	r2, [fp]
	add	r3, ip, r3, asl #2
	str	r3, [sp, #16]
.LVL4692:
	b	.L5307
.LVL4693:
.L5313:
.LBB1002:
.LBB992:
	.loc 3 303 0
	sub	r2, r6, #1
.LVL4694:
	.loc 3 304 0
	tst	r2, r6
	bne	.L5316
.LBB993:
	.loc 3 305 0
	mov	ip, r2, asl #16
	mvn	ip, ip, lsr #16
	.loc 3 306 0
	sub	r2, r7, #1
.LVL4695:
	cmn	r2, #1
	str	r2, [sp, #36]
	.loc 3 305 0
	mvn	ip, ip, asl #16
.LVL4696:
	.loc 3 306 0
	str	r2, [sp, #20]
.LVL4697:
	beq	.L5387
	ldr	r2, .L5388+36
.LVL4698:
	mov	r3, r3, lsr #2
.LVL4699:
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	.loc 3 307 0
	add	r3, r2, r3, asl #6
	ldr	r2, [sp, #16]
	str	r7, [sp, #40]
	add	r2, r2, #32
	.loc 3 306 0
	mov	r8, r4
	mov	r6, r2
.LVL4700:
	mov	r7, ip
	mov	fp, r3
	ldr	r1, .L5388+32
	str	r4, [sp, #44]
	str	r1, [sp, #12]
	mov	r1, r9, asl #1
	str	r1, [sp, #24]
	add	r1, r9, #65536
	str	r1, [sp, #32]
	str	r9, [sp, #28]
.LVL4701:
.L5320:
	.loc 3 307 0
	and	r4, r8, r7
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	ldr	r2, [sp, #12]
	ldr	ip, [sp, #8]
	ldr	r9, [r2]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r2, r8, #65536
	subgt	r3, r3, #1
	and	r2, r2, r7
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4702:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #28]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, r8
	.loc 3 311 0
	and	r4, r4, r7
	.loc 3 307 0
	add	ip, r9, r3, asl #8
	.loc 3 311 0
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	.loc 3 307 0
	ldr	r2, [ip, #252]
	.loc 3 311 0
	ldr	ip, [sp, #8]
	.loc 3 307 0
	str	r2, [r6, #-32]
.LVL4703:
	.loc 3 311 0
	ldr	r2, [sp, #12]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [r2]
	ldr	r2, [sp, #32]
	subgt	r3, r3, #1
	add	r2, r2, r8
	and	r2, r2, r7
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4704:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	.loc 3 306 0
	ldr	r2, [sp, #20]
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 306 0
	subs	r2, r2, #2
	.loc 3 311 0
	add	ip, r9, r3, asl #8
	.loc 3 306 0
	str	r2, [sp, #20]
.LVL4705:
	.loc 3 311 0
	ldr	r3, [ip, #252]
	ldr	r2, [sp, #24]
	str	r3, [r6, #-16]
	add	r8, r2, r8
.LVL4706:
	add	r6, r6, #32
.LVL4707:
	.loc 3 306 0
	bpl	.L5320
	ldr	r4, [sp, #44]
	ldr	r9, [sp, #28]
	ldr	r3, [sp, #36]
	ldr	r1, [sp, #24]
	mov	r3, r3, lsr #1
	add	r4, r4, r9, asl #1
	add	r2, r3, #1
	mov	ip, r7
	mla	r4, r1, r3, r4
	ldr	r7, [sp, #40]
.LVL4708:
	ldr	r3, [sp, #16]
	.loc 3 316 0
	tst	r7, #1
	add	r3, r3, r2, asl #5
	str	r3, [sp, #16]
	bne	.L5294
.LVL4709:
.L5335:
	.loc 3 317 0
	and	r6, r4, ip
	ldr	r2, [sp, #12]
	mov	r3, r6, asr #16
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	add	r4, r4, #65536
	and	ip, ip, r4
.LVL4710:
	subgt	r2, r3, #1
	ldrb	r3, [r5, ip, asr #16]	@ zero_extendqisi2
	ldr	ip, [sp, #8]
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	ip, [ip, r6, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL4711:
	ldr	r3, [sp, #52]
	mov	fp, r6, asl #16
	add	fp, r3, fp, lsr #26
	ldr	r3, [sp, #48]
	ldr	r2, [sp, #16]
	ldrb	r3, [fp, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	str	r3, [r2]
	b	.L5294
.LVL4712:
.L5381:
.LBE993:
.LBE992:
.LBE1002:
	.loc 3 127 0
	ldr	r2, [r10, #48]
	mov	r1, #1
	mov	r0, #0
.LVL4713:
	bl	R_GetDrawColumnFunc
.LVL4714:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4715:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4716:
.L5316:
	.cfi_restore_state
.LBB1003:
.LBB996:
.LBB994:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r6, asl #16
.LVL4717:
	.loc 3 325 0
	blt	.L5325
	.loc 3 328 0
	cmp	r4, r6
	blt	.L5324
.L5326:
	rsb	r4, r6, r4
.LVL4718:
	cmp	r6, r4
	ble	.L5326
.L5324:
	.loc 3 332 0
	add	r8, r4, #65536
.LVL4719:
	.loc 3 333 0
	cmp	r8, r6
	blt	.L5327
.L5328:
	rsb	r8, r6, r8
.LVL4720:
	cmp	r8, r6
	bge	.L5328
.L5327:
	.loc 3 345 0
	mov	fp, #0
	ldr	r1, .L5388+32
	ldr	r2, .L5388+36
	mov	r3, r3, lsr #2
.LVL4721:
	str	r1, [sp, #12]
	add	r3, r2, r3, asl #6
	add	r1, r7, #1
	str	r1, [sp, #20]
.LVL4722:
	str	r3, [sp, #24]
.LVL4723:
.L5332:
	mov	r3, r4, asr #16
	ldr	r2, [sp, #12]
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	ldr	ip, [sp, #8]
	subgt	r2, r3, #1
	ldrb	lr, [ip, r3]	@ zero_extendqisi2
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r2, [r10, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r8, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4724:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #24]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r9
.LVL4725:
	.loc 3 345 0
	add	r7, r7, r3, asl #8
	ldr	r3, [r7, #252]
	.loc 3 350 0
	add	r8, r8, r9
.LVL4726:
	.loc 3 348 0
	cmp	r4, r6
	.loc 3 345 0
	str	r3, [r2, fp, asl #4]
.LVL4727:
	.loc 3 339 0
	ldr	r3, [sp, #20]
	add	fp, fp, #1
.LVL4728:
	.loc 3 348 0
	rsbge	r4, r6, r4
.LVL4729:
	.loc 3 350 0
	cmp	r8, r6
	rsbge	r8, r6, r8
.LVL4730:
	.loc 3 339 0
	cmp	fp, r3
	bne	.L5332
.LBE994:
.LBE996:
.LBE1003:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4731:
.L5325:
	.cfi_restore_state
.LBB1004:
.LBB997:
.LBB995:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL4732:
	bpl	.L5324
.LVL4733:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL4734:
	bmi	.L5325
	b	.L5324
.LVL4735:
.L5386:
.LBE995:
.LBE997:
.LBE1004:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [fp, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L5304
	b	.L5306
.LVL4736:
.L5384:
	ldr	r1, .L5388+32
	ldr	r2, .L5388+36
	mov	r3, r3, lsr #2
.LVL4737:
	str	r1, [sp, #12]
	ldr	r1, [sp, #16]
.LBB1005:
	.loc 3 289 0
	add	r3, r2, r3, asl #6
	add	fp, r1, #16
	str	r3, [sp, #16]
.LVL4738:
.L5312:
	ldr	r3, [sp, #12]
	bic	r6, r4, #-16777216
	ldr	ip, [sp, #8]
	bic	r6, r6, #8388608
	ldr	r8, [r3]
	add	r3, r4, #65536
	movs	r2, r6, asr #16
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	bic	r3, r3, #-16777216
	subne	r2, r2, #1
	bic	r3, r3, #8388608
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r10, r6, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL4739:
	mov	r6, r6, asr #8
	ldr	r3, [sp, #16]
	uxtb	r6, r6
	ldrb	r3, [r3, r6, asr #2]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r7, r7, #1
	.loc 3 289 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	cmn	r7, #1
	.loc 3 289 0
	add	r8, r8, r3, asl #8
	ldr	r3, [r8, #252]
	.loc 3 292 0
	add	r4, r4, r9
.LVL4740:
	.loc 3 289 0
	str	r3, [fp, #-16]
.LVL4741:
	add	fp, fp, #16
.LVL4742:
	.loc 3 288 0
	bne	.L5312
.LBE1005:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4743:
.L5385:
	.cfi_restore_state
.LBB1006:
	.loc 3 197 0
	mvn	r0, fp
	mov	r1, r9
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL4744:
	.loc 3 198 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
.LVL4745:
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL4746:
.LBE1006:
	b	.L5301
.LVL4747:
.L5387:
	mov	r3, r3, lsr #2
.LVL4748:
	str	r3, [sp, #48]
	ldr	r3, .L5388+32
	str	r3, [sp, #12]
	ldr	r3, .L5388+36
	str	r3, [sp, #52]
	b	.L5335
.L5389:
	.align	2
.L5388:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	V_Palette32
	.word	filter_roundedUVMap
	.word	viewheight
	.cfi_endproc
.LFE79:
	.size	R_DrawColumn32_RoundedUV, .-R_DrawColumn32_RoundedUV
	.align	2
	.type	R_DrawFuzzColumn32_LinearUV, %function
R_DrawFuzzColumn32_LinearUV:
.LFB184:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4749:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 119 0
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #32]
	.loc 3 126 0
	ldr	r7, .L5430
	.loc 3 119 0
	cmp	r2, r3
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL4750:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 119 0
	ldrneh	r10, [r0, #28]
	moveq	r10, #0
.LVL4751:
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 113 0
	mov	r4, r0
	.loc 3 126 0
	bgt	.L5427
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L5430+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL4752:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL4753:
	bmi	.L5390
.LVL4754:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L5397
.LVL4755:
.L5400:
	.loc 3 215 0
	ldr	r5, .L5430+8
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L5398
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5428
.L5406:
	.loc 3 228 0 is_stmt 1
	ldr	r3, .L5430+12
	.loc 3 224 0
	mov	r8, #4
.LVL4756:
	.loc 3 221 0
	ldr	lr, [r4]
	.loc 3 228 0
	ldr	r9, [r3]
	.loc 3 223 0
	ldmib	r4, {r2, r3}
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	mov	r3, #0
	.loc 3 231 0
	ldr	r0, .L5430+16
	.loc 3 232 0
	ldr	r1, .L5430+20
	.loc 3 224 0
	ldr	r6, .L5430+24
	.loc 3 230 0
	ldr	ip, .L5430+28
	.loc 3 232 0
	stmib	r7, {r0, r1}
.LVL4757:
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r6, #-1204]
	.loc 3 221 0
	str	lr, [r5, #12]
	.loc 3 222 0
	str	r2, [r5, #4]
	str	r2, [r5, #16]
.LVL4758:
	.loc 3 230 0
	str	ip, [r7]
.L5408:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
.L5390:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4759:
.L5397:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5400
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L5401
.LBB1007:
	.loc 3 181 0
	mvn	r0, r10
.LVL4760:
	mov	r1, r8
	str	r3, [sp, #4]
	uxth	r0, r0
.LVL4761:
.L5426:
.LBE1007:
.LBB1008:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL4762:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	fp, r0, fp
.LVL4763:
.L5402:
.LBE1008:
	.loc 3 194 0
	cmp	r9, r5
	beq	.L5403
	.loc 3 195 0
	tst	r3, #4
	beq	.L5404
.LBB1009:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL4764:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	fp, r0, fp
.LVL4765:
.L5403:
.LBE1009:
	.loc 3 208 0
	cmp	fp, #0
	bgt	.L5400
	b	.L5390
.L5428:
	.loc 3 216 0
	ldr	r2, .L5430+24
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L5429
.L5398:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4766:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L5406
.L5407:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L5430+8
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L5430+8
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L5408
.LVL4767:
.L5427:
	.loc 3 127 0
	ldr	r2, [r7, #48]
	mov	r1, #1
	mov	r0, #3
.LVL4768:
	bl	R_GetDrawColumnFunc
.LVL4769:
	mov	r3, r0
	mov	r0, r4
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4770:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4771:
.L5429:
	.cfi_restore_state
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L5398
	b	.L5407
.L5404:
	.loc 3 201 0
	tst	r3, #8
	beq	.L5403
.LBB1010:
	.loc 3 203 0
	mov	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv
.LVL4772:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	fp, r0, fp
.LVL4773:
	b	.L5403
.LVL4774:
.L5401:
.LBE1010:
	.loc 3 186 0
	tst	r3, #2
	beq	.L5402
	str	r3, [sp, #4]
.LBB1011:
	.loc 3 188 0
	mov	r0, r10
.LVL4775:
	mov	r1, r8
	b	.L5426
.L5431:
	.align	2
.L5430:
	.word	.LANCHOR1
	.word	viewheight
	.word	.LANCHOR0
	.word	fullcolormap
	.word	R_FlushHTFuzz32
	.word	R_FlushQuadFuzz32
	.word	.LANCHOR2
	.word	R_FlushWholeFuzz32
.LBE1011:
	.cfi_endproc
.LFE184:
	.size	R_DrawFuzzColumn32_LinearUV, .-R_DrawFuzzColumn32_LinearUV
	.align	2
	.type	R_DrawTranslatedColumn32_LinearUV, %function
R_DrawTranslatedColumn32_LinearUV:
.LFB148:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4776:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 126 0
	ldr	r9, .L5518
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #12]
.LVL4777:
	.loc 3 126 0
	ldr	r2, [sp, #12]
	ldr	r3, [r9, #64]
.LVL4778:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL4779:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #4]
	str	r6, [sp]
	.loc 3 126 0
	bgt	.L5511
	.loc 3 149 0
	ldmib	r0, {r8, r10}
.LVL4780:
	.loc 3 157 0
	subs	r3, r10, r8
.LVL4781:
	str	r3, [sp, #32]
	bmi	.L5432
	.loc 3 169 0
	ldr	r2, .L5518+4
.LVL4782:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL4783:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #12]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL4784:
	.loc 3 174 0
	bne	.L5512
.LVL4785:
.L5437:
	.loc 3 215 0
	ldr	r8, .L5518+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L5443
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5513
.L5444:
	.loc 3 222 0 is_stmt 1
	ldmia	r5, {r1, r3}
	.loc 3 224 0
	mov	ip, #1
	.loc 3 223 0
	ldr	r2, [r5, #8]
	.loc 3 224 0
	ldr	r0, .L5518+12
	.loc 3 223 0
	str	r2, [r8, #8]
	str	r2, [r8, #32]
	mov	r2, #0
	.loc 3 224 0
	str	ip, [r0, #-1204]
	.loc 3 221 0
	str	r1, [r8, #12]
	.loc 3 231 0
	ldr	r0, .L5518+16
	.loc 3 232 0
	ldr	r1, .L5518+20
	.loc 3 233 0
	ldr	lr, .L5518+24
	.loc 3 230 0
	ldr	ip, .L5518+28
	.loc 3 232 0
	stmib	r9, {r0, r1}
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, lr, r3, asl #4
	str	r3, [sp, #20]
.LVL4786:
	.loc 3 230 0
	str	ip, [r9]
.L5446:
.LVL4787:
	.loc 3 245 0
	add	r3, r2, #1
.LBB1012:
	.loc 3 269 0
	ldmia	sp, {r1, r2}
	cmp	r2, r1
.LBE1012:
	.loc 3 245 0
	str	r3, [r8]
.LVL4788:
.LBB1019:
	.loc 3 253 0
	ldr	r3, [r5, #52]
.LVL4789:
	.loc 3 269 0
	beq	.L5470
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r2, [r5, #28]
.LVL4790:
	str	r2, [sp, #8]
.L5449:
.LVL4791:
	.loc 3 286 0 is_stmt 1
	ldr	ip, [r5, #24]
	cmp	ip, #128
	beq	.L5514
	.loc 3 294 0
	cmp	ip, #0
	bne	.L5451
.LVL4792:
	mvn	r9, r4
	.loc 3 297 0
	mov	r8, #64
	ldr	r2, .L5518+32
	ldr	r1, [sp, #8]
.LVL4793:
	ldr	r7, [r2]
	ldr	r2, [sp, #32]
	rsb	r10, r1, #65280
	add	r2, r2, #1
	str	r2, [sp, #24]
	add	r10, r10, #255
	str	r9, [sp, #16]
.LVL4794:
.L5452:
	ldrh	r1, [sp, #16]
	ldr	lr, [sp, #8]
	ldr	r5, [sp]
	mul	r0, lr, r1
	ldrb	fp, [r5, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #4]
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	uxth	r2, r4
	smlabb	r0, r8, fp, r0
	mul	r1, r10, r1
	ldr	fp, [sp]
	ldrb	r6, [r9, r4, asr #16]	@ zero_extendqisi2
	add	r5, r4, #65536
	mul	lr, lr, r2
	ldrb	fp, [fp, r5, asr #16]	@ zero_extendqisi2
	mul	r2, r10, r2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r5, [r9, r5, asr #16]	@ zero_extendqisi2
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	smlabb	r1, r8, r6, r1
	mov	lr, lr, lsr #26
	mov	r2, r2, lsr #26
	smlabb	lr, r8, fp, lr
	smlabb	r2, r8, r5, r2
	ldr	r1, [r7, r1, asl #2]
	ldr	r0, [r7, r0, asl #2]
	ldr	lr, [r7, lr, asl #2]
	ldr	r2, [r7, r2, asl #2]
	add	r0, r0, r1
	add	r0, r0, lr
	add	r0, r0, r2
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #16]
	str	r0, [r2, ip, asl #4]
.LVL4795:
	.loc 3 296 0
	ldr	r2, [sp, #24]
	add	ip, ip, #1
.LVL4796:
	cmp	ip, r2
	ldr	r2, [sp, #12]
	rsb	r1, r2, r1
	str	r1, [sp, #16]
	.loc 3 300 0
	add	r4, r4, r2
.LVL4797:
	.loc 3 296 0
	bne	.L5452
.LVL4798:
.L5432:
.LBE1019:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4799:
.L5512:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5437
	.loc 3 178 0
	cmp	r8, #0
	beq	.L5438
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L5439
.LBB1020:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL4800:
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL4801:
	.loc 3 184 0
	ldr	r3, [sp, #8]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL4802:
	.loc 3 183 0
	ldr	r3, [sp, #32]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL4803:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL4804:
	str	r3, [sp, #32]
.LVL4805:
.L5438:
.LBE1020:
	.loc 3 194 0
	ldr	r3, .L5518+36
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L5440
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L5515
	.loc 3 201 0
	tst	r3, #8
	beq	.L5440
.LBB1021:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #12]
.L5508:
	bl	__aeabi_idiv
.LVL4806:
	.loc 3 205 0
	ldr	r3, [sp, #32]
	.loc 3 204 0
	rsb	r10, r0, r10
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r10, [r5, #8]
.LVL4807:
	.loc 3 205 0
	str	r3, [sp, #32]
.LVL4808:
.L5440:
.LBE1021:
	.loc 3 208 0
	ldr	r3, [sp, #32]
	cmp	r3, #0
	bgt	.L5437
	b	.L5432
.L5513:
	.loc 3 216 0
	ldr	r2, .L5518+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L5516
.L5443:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4809:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L5502
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
.L5445:
	.loc 3 235 0
	ldr	r2, [r5, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r5, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L5518+8
	.loc 3 240 0
	ldr	ip, .L5518+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L5518+24
	stmia	sp, {r6, r7}
	add	r3, r1, r3, asl #2
	ldr	r2, [r8]
	str	r3, [sp, #20]
.LVL4810:
	b	.L5446
.LVL4811:
.L5451:
.LBB1022:
.LBB1013:
	.loc 3 303 0
	sub	r2, ip, #1
.LVL4812:
	.loc 3 304 0
	tst	r2, ip
	bne	.L5453
.LBB1014:
	.loc 3 305 0
	mov	r2, r2, asl #16
.LVL4813:
	mvn	r2, r2, lsr #16
	mvn	r2, r2, asl #16
	.loc 3 306 0
	ldr	r1, [sp, #32]
.LVL4814:
	.loc 3 305 0
	str	r2, [sp, #16]
.LVL4815:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	str	r1, [sp, #44]
	str	r1, [sp, #24]
.LVL4816:
	beq	.L5517
	ldr	r2, .L5518+32
.LVL4817:
	mov	fp, r4
.LVL4818:
	mov	r1, r2
.LVL4819:
	.loc 3 307 0
	mov	lr, #64
	str	r2, [sp, #52]
	ldr	r2, [sp, #8]
	ldr	ip, [r1]
.LVL4820:
	rsb	r2, r2, #65280
	add	r10, r2, #255
	ldr	r2, [sp, #20]
	str	r4, [sp, #48]
	add	r2, r2, #32
	mov	r7, r2
	ldr	r2, [sp, #12]
	mov	r1, r2, asl #1
	add	r2, r2, #65536
	str	r1, [sp, #36]
	str	r2, [sp, #40]
.LVL4821:
.L5455:
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #16]
	add	r4, r0, fp
	.loc 3 311 0
	and	r4, r4, r2
	.loc 3 307 0
	and	r6, fp, r2
	.loc 3 311 0
	mvn	r0, r4
	.loc 3 307 0
	mvn	r1, r6
	.loc 3 311 0
	str	r0, [sp, #28]
	.loc 3 307 0
	ldr	r8, [sp]
	ldr	r0, [sp, #8]
	uxth	r1, r1
	ldrb	r9, [r8, r6, asr #16]	@ zero_extendqisi2
	mul	r5, r0, r1
	ldr	r8, [sp, #4]
	mul	r1, r10, r1
	ldrb	r8, [r8, r6, asr #16]	@ zero_extendqisi2
	ldrb	r9, [r3, r9]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mov	r5, r5, lsr #26
	smlabb	r5, lr, r9, r5
	mov	r1, r1, lsr #26
	ldr	r9, [sp, #8]
	uxth	r0, r6
	smlabb	r1, lr, r8, r1
	add	r6, fp, #65536
	ldr	r8, [sp]
	and	r6, r6, r2
	mul	r9, r9, r0
	ldr	r2, [sp, #4]
	ldrb	r8, [r8, r6, asr #16]	@ zero_extendqisi2
	mul	r0, r10, r0
	ldrb	r6, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	mov	r9, r9, lsr #26
	smlabb	r9, lr, r8, r9
	mov	r0, r0, lsr #26
	smlabb	r0, lr, r6, r0
	ldr	r1, [ip, r1, asl #2]
	ldr	r5, [ip, r5, asl #2]
	ldr	r6, [ip, r9, asl #2]
	ldr	r0, [ip, r0, asl #2]
	add	r5, r5, r1
	add	r5, r5, r6
	.loc 3 311 0
	ldrh	r2, [sp, #28]
	.loc 3 307 0
	add	r0, r5, r0
	.loc 3 311 0
	ldr	r6, [sp, #4]
	.loc 3 307 0
	str	r0, [r7, #-32]
.LVL4822:
	.loc 3 311 0
	mul	r5, r10, r2
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #8]
	ldr	r8, [sp]
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldr	r0, [sp, #40]
	uxth	r1, r4
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mul	r2, r9, r2
	ldr	r4, [sp, #16]
	mov	r5, r5, lsr #26
	add	r0, r0, fp
	smlabb	r5, lr, r6, r5
	ldr	r6, [sp]
	and	r4, r4, r0
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mul	r0, r9, r1
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	ldr	r9, [sp, #4]
	mul	r1, r10, r1
	mov	r2, r2, lsr #26
	ldrb	r4, [r9, r4, asr #16]	@ zero_extendqisi2
	smlabb	r2, lr, r8, r2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r4, [r3, r4]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	smlabb	r0, lr, r6, r0
	mov	r1, r1, lsr #26
	ldr	r2, [ip, r2, asl #2]
	smlabb	r1, lr, r4, r1
	ldr	r4, [ip, r5, asl #2]
	ldr	r0, [ip, r0, asl #2]
	add	r4, r2, r4
	.loc 3 306 0
	ldr	r2, [sp, #24]
	.loc 3 311 0
	ldr	r1, [ip, r1, asl #2]
	.loc 3 306 0
	subs	r2, r2, #2
	add	r4, r4, r0
	str	r2, [sp, #24]
.LVL4823:
	ldr	r2, [sp, #36]
.LVL4824:
	.loc 3 311 0
	add	r4, r4, r1
	str	r4, [r7, #-16]
	add	fp, r2, fp
.LVL4825:
	add	r7, r7, #32
.LVL4826:
	.loc 3 306 0
	bpl	.L5455
	.loc 3 316 0
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #12]
	ldr	r4, [sp, #48]
	ldr	r2, [sp, #44]
	tst	r0, #1
	ldr	r0, [sp, #36]
	mov	r2, r2, lsr #1
	add	r4, r4, r1, asl #1
	mla	r4, r0, r2, r4
	add	r1, r2, #1
	ldr	r2, [sp, #20]
	add	r2, r2, r1, asl #5
	str	r2, [sp, #20]
	bne	.L5432
.LVL4827:
.L5468:
	.loc 3 317 0
	ldr	r5, [sp, #16]
	mov	ip, #64
	and	r1, r4, r5
	mvn	r2, r1
	ldr	r7, [sp, #8]
	uxth	r2, r2
	ldr	r8, [sp]
	ldr	fp, [sp, #4]
	mul	r0, r7, r2
	uxth	lr, r1
	add	r4, r4, #65536
	mul	r2, r10, r2
	and	r4, r4, r5
	ldrb	r6, [fp, r1, asr #16]	@ zero_extendqisi2
	ldrb	r5, [r8, r1, asr #16]	@ zero_extendqisi2
	mul	r7, r7, lr
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mul	lr, r10, lr
	ldrb	r9, [r3, r5]	@ zero_extendqisi2
	ldrb	r1, [fp, r4, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r5, [r3, r8]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	mov	r2, r2, lsr #26
	ldrb	r8, [r3, r1]	@ zero_extendqisi2
	smlabb	r9, ip, r9, r0
	smlabb	r3, ip, r6, r2
.LVL4828:
	mov	r4, r7, lsr #26
	ldr	r2, [sp, #52]
	smlabb	r4, ip, r5, r4
	mov	lr, lr, lsr #26
	ldr	r0, [r2]
	smlabb	r1, ip, r8, lr
	ldr	r2, [r0, r9, asl #2]
	ldr	ip, [r0, r3, asl #2]
	ldr	r3, [r0, r4, asl #2]
	add	r2, r2, ip
	ldr	r1, [r0, r1, asl #2]
	add	r3, r2, r3
	ldr	r2, [sp, #20]
	add	r3, r3, r1
	str	r3, [r2]
	b	.L5432
.LVL4829:
.L5511:
.LBE1014:
.LBE1013:
.LBE1022:
	.loc 3 127 0
	ldr	r2, [r9, #48]
.LVL4830:
	mov	r1, #1
	mov	r0, #2
.LVL4831:
	bl	R_GetDrawColumnFunc
.LVL4832:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4833:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4834:
.L5453:
	.cfi_restore_state
.LBB1023:
.LBB1017:
.LBB1015:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	ip, ip, asl #16
.LVL4835:
	.loc 3 325 0
	blt	.L5459
	.loc 3 328 0
	cmp	r4, ip
	blt	.L5458
.L5460:
	rsb	r4, ip, r4
.LVL4836:
	cmp	ip, r4
	ble	.L5460
.L5458:
	.loc 3 332 0
	add	r1, r4, #65536
.LVL4837:
	.loc 3 333 0
	cmp	r1, ip
	blt	.L5461
.L5462:
	rsb	r1, ip, r1
.LVL4838:
	cmp	r1, ip
	bge	.L5462
.L5461:
	.loc 3 345 0
	mov	fp, #0
.LVL4839:
	mov	r6, #64
	ldr	r2, .L5518+32
	ldr	r0, [sp, #8]
	ldr	r9, [r2]
	ldr	r2, [sp, #32]
	rsb	r10, r0, #65280
	add	r2, r2, #1
	add	r10, r10, #255
	str	r2, [sp, #16]
.LVL4840:
	str	r10, [sp, #24]
.LVL4841:
.L5465:
	mvn	r0, r4
	ldr	r5, [sp, #24]
	ldr	r8, [sp, #8]
	uxth	r2, r4
	uxth	r0, r0
	mul	lr, r5, r2
	mul	r7, r5, r0
	mul	r2, r8, r2
	mul	r0, r8, r0
	ldr	r8, [sp]
	ldr	r5, [sp, #4]
	ldrb	r8, [r8, r1, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r5, r1, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	mov	r2, r2, lsr #26
	smlabb	r2, r6, r8, r2
	ldr	r8, [sp]
	ldrb	r5, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mov	lr, lr, lsr #26
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	smlabb	lr, r6, r10, lr
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	mov	r7, r7, lsr #26
	mov	r0, r0, lsr #26
	smlabb	r7, r6, r5, r7
	smlabb	r0, r6, r8, r0
	ldr	r2, [r9, r2, asl #2]
	ldr	lr, [r9, lr, asl #2]
	ldr	r5, [r9, r7, asl #2]
	add	lr, lr, r2
	.loc 3 348 0
	ldr	r2, [sp, #12]
	.loc 3 345 0
	ldr	r0, [r9, r0, asl #2]
	.loc 3 348 0
	add	r4, r4, r2
.LVL4842:
	.loc 3 350 0
	add	r1, r1, r2
.LVL4843:
	.loc 3 345 0
	add	lr, lr, r5
	ldr	r2, [sp, #20]
	add	lr, lr, r0
	.loc 3 348 0
	cmp	r4, ip
	.loc 3 345 0
	str	lr, [r2, fp, asl #4]
.LVL4844:
	.loc 3 339 0
	ldr	r2, [sp, #16]
	add	fp, fp, #1
.LVL4845:
	.loc 3 348 0
	rsbge	r4, ip, r4
.LVL4846:
	.loc 3 350 0
	cmp	r1, ip
	rsbge	r1, ip, r1
.LVL4847:
	.loc 3 339 0
	cmp	fp, r2
	bne	.L5465
.LBE1015:
.LBE1017:
.LBE1023:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL4848:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4849:
.L5459:
	.cfi_restore_state
.LBB1024:
.LBB1018:
.LBB1016:
	.loc 3 326 0 discriminator 1
	adds	r4, ip, r4
.LVL4850:
	bpl	.L5458
.LVL4851:
	.loc 3 326 0 is_stmt 0
	adds	r4, ip, r4
.LVL4852:
	bmi	.L5459
	b	.L5458
.LVL4853:
.L5516:
.LBE1016:
.LBE1018:
.LBE1024:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r5]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L5443
	b	.L5445
.LVL4854:
.L5514:
	mvn	fp, r4
.LVL4855:
.LBB1025:
	.loc 3 286 0
	mov	r10, #0
	.loc 3 289 0
	mov	r9, #64
	ldr	r1, .L5518+32
.LVL4856:
	ldr	r2, [sp, #8]
	ldr	r8, [r1]
	ldr	r1, [sp, #32]
	rsb	r2, r2, #65280
	add	r1, r1, #1
	add	r2, r2, #255
	str	r1, [sp, #24]
	str	r2, [sp, #28]
.LVL4857:
.L5450:
	ldr	r7, [sp, #28]
	ldr	ip, [sp, #8]
	uxth	r1, fp
	mul	lr, ip, r1
	mul	r1, r7, r1
	uxth	r2, r4
	add	r0, r4, #65536
	ldr	r5, [sp]
	bic	r6, r4, #-16777216
	mul	ip, ip, r2
	bic	r0, r0, #-16777216
	mul	r2, r7, r2
	ldr	r7, [sp, #4]
	bic	r6, r6, #8388608
	bic	r0, r0, #8388608
	ldrb	r7, [r7, r6, asr #16]	@ zero_extendqisi2
	str	r1, [sp, #16]
	ldrb	r6, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r0, asr #16]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	ldrb	r0, [r5, r0, asr #16]	@ zero_extendqisi2
	ldrb	r5, [r3, r1]	@ zero_extendqisi2
	ldr	r1, [sp, #16]
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	mov	lr, lr, lsr #26
	mov	r1, r1, lsr #26
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	smlabb	lr, r9, r6, lr
	smlabb	r1, r9, r7, r1
	smlabb	ip, r9, r5, ip
	mov	r2, r2, lsr #26
	smlabb	r2, r9, r0, r2
	ldr	r1, [r8, r1, asl #2]
	ldr	r0, [r8, lr, asl #2]
	ldr	ip, [r8, ip, asl #2]
	ldr	r2, [r8, r2, asl #2]
	add	r0, r0, r1
	add	r0, r0, ip
	add	r0, r0, r2
	ldr	r2, [sp, #20]
	str	r0, [r2, r10, asl #4]
.LVL4858:
	.loc 3 288 0
	ldr	r2, [sp, #24]
	add	r10, r10, #1
.LVL4859:
	cmp	r10, r2
	.loc 3 292 0
	ldr	r2, [sp, #12]
	add	r4, r4, r2
.LVL4860:
	rsb	fp, r2, fp
	.loc 3 288 0
	bne	.L5450
.LBE1025:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL4861:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4862:
.L5470:
	.cfi_restore_state
.LBB1026:
	.loc 3 269 0
	mov	r2, #0
.LVL4863:
	str	r2, [sp, #8]
	b	.L5449
.LVL4864:
.L5515:
.LBE1026:
.LBB1027:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #12]
	uxth	r0, r0
	b	.L5508
.L5502:
	ldr	r3, [r5, #32]
	str	r3, [sp, #4]
	ldr	r3, [r5, #40]
	str	r3, [sp]
	b	.L5444
.LVL4865:
.L5439:
.LBE1027:
	.loc 3 186 0
	tst	r3, #2
	beq	.L5438
.LBB1028:
	.loc 3 188 0
	mov	r0, fp
.LVL4866:
	ldr	r1, [sp, #12]
.LVL4867:
	bl	__aeabi_idiv
.LVL4868:
	.loc 3 190 0
	ldr	r3, [sp, #32]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL4869:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL4870:
	.loc 3 190 0
	str	r3, [sp, #32]
.LVL4871:
	b	.L5438
.LVL4872:
.L5517:
	ldr	r2, [sp, #8]
.LVL4873:
	rsb	r10, r2, #65280
	ldr	r2, .L5518+32
	add	r10, r10, #255
	str	r2, [sp, #52]
	b	.L5468
.L5519:
	.align	2
.L5518:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	V_Palette32
	.word	viewheight
.LBE1028:
	.cfi_endproc
.LFE148:
	.size	R_DrawTranslatedColumn32_LinearUV, .-R_DrawTranslatedColumn32_LinearUV
	.align	2
	.type	R_DrawTLColumn32_LinearUV, %function
R_DrawTLColumn32_LinearUV:
.LFB112:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4874:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 126 0
	ldr	r10, .L5606
	.loc 3 117 0
	str	r3, [sp, #4]
.LVL4875:
	.loc 3 119 0
	ldr	r8, [r0, #32]
	ldr	r7, [r0, #40]
	.loc 3 126 0
	ldr	r2, [r10, #64]
	ldr	r1, [sp, #4]
	.loc 3 119 0
	cmp	r8, r7
	ldrneh	r3, [r0, #28]
.LVL4876:
	moveq	r3, #0
.LVL4877:
	.loc 3 126 0
	cmp	r1, r2
	.loc 3 113 0
	mov	r6, r0
	.loc 3 119 0
	str	r8, [sp, #8]
	mov	r5, r7
	.loc 3 126 0
	bgt	.L5599
	.loc 3 149 0
	ldmib	r0, {r9, fp}
.LVL4878:
	.loc 3 157 0
	subs	r2, fp, r9
.LVL4879:
	str	r2, [sp, #32]
	bmi	.L5520
	.loc 3 169 0
	ldr	r1, .L5606+4
.LVL4880:
	ldr	r2, [r0, #20]
.LVL4881:
	.loc 3 174 0
	ldr	r0, [r0, #60]
.LVL4882:
	.loc 3 169 0
	ldr	r4, [r1]
	.loc 3 174 0
	cmp	r0, #0
	.loc 3 169 0
	ldr	r0, [sp, #4]
	rsb	r1, r4, r9
	sub	r2, r2, #32768
	mla	r4, r0, r1, r2
.LVL4883:
	.loc 3 174 0
	bne	.L5600
.LVL4884:
.L5525:
	.loc 3 215 0
	ldr	r9, .L5606+8
	ldr	r3, [r9]
	cmp	r3, #4
	beq	.L5531
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5601
.L5532:
	.loc 3 226 0 is_stmt 1
	ldr	r3, .L5606+12
	.loc 3 224 0
	mov	ip, #2
	.loc 3 226 0
	ldr	r2, [r3]
	.loc 3 222 0
	ldmia	r6, {r1, r3}
	.loc 3 226 0
	str	r2, [r9, #1008]
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 224 0
	ldr	r0, .L5606+16
	.loc 3 223 0
	str	r2, [r9, #8]
	str	r2, [r9, #32]
	mov	r2, #0
	.loc 3 224 0
	str	ip, [r0, #-1204]
	.loc 3 221 0
	str	r1, [r9, #12]
	.loc 3 231 0
	ldr	r0, .L5606+20
	.loc 3 232 0
	ldr	r1, .L5606+24
	.loc 3 233 0
	ldr	lr, .L5606+28
	.loc 3 230 0
	ldr	ip, .L5606+32
	.loc 3 232 0
	stmib	r10, {r0, r1}
	.loc 3 222 0
	str	r3, [r9, #4]
	str	r3, [r9, #16]
	.loc 3 233 0
	add	r3, lr, r3, asl #4
	str	r3, [sp, #16]
.LVL4885:
	.loc 3 230 0
	str	ip, [r10]
.L5534:
.LVL4886:
	.loc 3 245 0
	add	r3, r2, #1
.LBB1029:
	.loc 3 269 0
	ldr	r2, [sp, #8]
.LBE1029:
	.loc 3 245 0
	str	r3, [r9]
.LVL4887:
.LBB1036:
	.loc 3 269 0
	cmp	r2, r5
	beq	.L5558
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r3, [r6, #28]
	str	r3, [sp, #12]
.L5537:
.LVL4888:
	.loc 3 286 0 is_stmt 1
	ldr	r2, [r6, #24]
.LVL4889:
	cmp	r2, #128
	beq	.L5602
	.loc 3 294 0
	cmp	r2, #0
	bne	.L5539
.LVL4890:
	ldr	r1, [sp, #12]
	mvn	r9, r4
	.loc 3 297 0
	mov	r8, #64
	mov	fp, r1
	ldr	r3, .L5606+36
	rsb	r10, r1, #65280
	ldr	r7, [r3]
	ldr	r3, [sp, #32]
	add	r10, r10, #255
	add	r3, r3, #1
	str	r3, [sp, #20]
.LVL4891:
.L5540:
	uxth	r3, r4
	mul	lr, fp, r3
	mul	r3, r10, r3
	uxth	r1, r9
	mul	ip, fp, r1
	mul	r1, r10, r1
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	ldrb	r6, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r3, r4, asr #16]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	smlabb	ip, r8, r6, ip
	mov	r1, r1, lsr #26
	add	r6, r4, #65536
	smlabb	r1, r8, r0, r1
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r3, r6, asr #16]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	mov	lr, lr, lsr #26
	smlabb	lr, r8, r0, lr
	mov	r3, r3, lsr #26
	smlabb	r3, r8, r6, r3
	ldr	r0, [r7, ip, asl #2]
	ldr	r1, [r7, r1, asl #2]
	ldr	ip, [r7, lr, asl #2]
	add	r0, r0, r1
	ldr	r3, [r7, r3, asl #2]
	add	r0, r0, ip
	ldr	r1, [sp, #16]
	add	r3, r0, r3
	str	r3, [r1, r2, asl #4]
.LVL4892:
	.loc 3 296 0
	ldr	r3, [sp, #20]
	add	r2, r2, #1
.LVL4893:
	cmp	r2, r3
	ldr	r3, [sp, #4]
	rsb	r9, r3, r9
	.loc 3 300 0
	add	r4, r4, r3
.LVL4894:
	.loc 3 296 0
	bne	.L5540
.LVL4895:
.L5520:
.LBE1036:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4896:
.L5600:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r2, [r6, #64]
	cmp	r2, #1
	bne	.L5525
	.loc 3 178 0
	cmp	r9, #0
	beq	.L5526
	.loc 3 179 0
	ldr	r2, [r6, #56]
	tst	r2, #1
	beq	.L5527
.LBB1037:
	.loc 3 181 0
	mvn	r2, r3
	uxth	r2, r2
	mov	r0, r2
.LVL4897:
	ldr	r1, [sp, #4]
	str	r3, [sp, #16]
	str	r2, [sp, #12]
	bl	__aeabi_idiv
.LVL4898:
	.loc 3 183 0
	ldr	r3, [sp, #32]
	.loc 3 184 0
	ldr	r2, [sp, #12]
	.loc 3 183 0
	rsb	r3, r0, r3
	.loc 3 182 0
	add	r9, r9, r0
	.loc 3 183 0
	str	r3, [sp, #32]
.LVL4899:
.LBE1037:
	ldr	r3, [sp, #16]
.LBB1038:
	.loc 3 184 0
	add	r4, r4, r2
.LVL4900:
	.loc 3 182 0
	str	r9, [r6, #4]
.LVL4901:
.L5526:
.LBE1038:
	.loc 3 194 0
	ldr	r2, .L5606+40
	ldr	r2, [r2]
	sub	r2, r2, #1
	cmp	fp, r2
	beq	.L5528
	.loc 3 195 0
	ldr	r2, [r6, #56]
	tst	r2, #4
	bne	.L5603
	.loc 3 201 0
	tst	r2, #8
	beq	.L5528
.LBB1039:
	.loc 3 203 0
	mov	r0, r3
	ldr	r1, [sp, #4]
.L5596:
	bl	__aeabi_idiv
.LVL4902:
	.loc 3 205 0
	ldr	r3, [sp, #32]
	.loc 3 204 0
	rsb	fp, r0, fp
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	fp, [r6, #8]
.LVL4903:
	.loc 3 205 0
	str	r3, [sp, #32]
.LVL4904:
.L5528:
.LBE1039:
	.loc 3 208 0
	ldr	r3, [sp, #32]
	cmp	r3, #0
	bgt	.L5525
	b	.L5520
.L5601:
	.loc 3 216 0
	ldr	r2, .L5606+16
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L5604
.L5531:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4905:
	.loc 3 219 0
	ldr	r3, [r9]
	cmp	r3, #0
	beq	.L5590
	ldr	r8, [r6, #32]
	ldr	r7, [r6, #40]
.L5533:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [r9, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r9, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L5606+8
	.loc 3 240 0
	ldr	ip, .L5606+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r9, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L5606+28
	str	r8, [sp, #8]
	add	r3, r1, r3, asl #2
	mov	r5, r7
	ldr	r2, [r9]
	str	r3, [sp, #16]
.LVL4906:
	b	.L5534
.LVL4907:
.L5539:
.LBB1040:
.LBB1030:
	.loc 3 303 0
	sub	r3, r2, #1
.LVL4908:
	.loc 3 304 0
	tst	r3, r2
	bne	.L5541
.LBB1031:
	.loc 3 305 0
	mov	r3, r3, asl #16
.LVL4909:
	mvn	r3, r3, lsr #16
	mvn	r3, r3, asl #16
	.loc 3 306 0
	ldr	r2, [sp, #32]
.LVL4910:
	.loc 3 305 0
	str	r3, [sp, #20]
.LVL4911:
	.loc 3 306 0
	sub	r2, r2, #1
	cmn	r2, #1
	str	r2, [sp, #44]
	str	r2, [sp, #28]
.LVL4912:
	beq	.L5605
	ldr	r3, .L5606+36
.LVL4913:
	mov	r10, r4
	str	r3, [sp, #52]
	ldr	ip, [r3]
	ldr	r3, [sp, #16]
	.loc 3 307 0
	mov	lr, #64
	add	r3, r3, #32
	mov	r6, r3
.LVL4914:
	ldr	r2, [sp, #12]
.LVL4915:
	ldr	r3, [sp, #4]
	rsb	fp, r2, #65280
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	add	fp, fp, #255
	str	r2, [sp, #36]
	str	r3, [sp, #40]
	str	r4, [sp, #48]
	str	r6, [sp, #24]
.LVL4916:
.L5543:
	ldr	r3, [sp, #20]
	ldr	r1, [sp, #4]
	and	r7, r10, r3
	mvn	r2, r7
	add	r1, r1, r10
	.loc 3 311 0
	and	r1, r1, r3
	mvn	r3, r1
	.loc 3 307 0
	ldr	r0, [sp, #12]
	uxth	r2, r2
	mul	r4, r0, r2
	ldr	r6, [sp, #8]
	mul	r2, fp, r2
	ldrb	r9, [r5, r7, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r6, r7, asr #16]	@ zero_extendqisi2
	uxth	r0, r7
	ldr	r7, [sp, #12]
	mov	r4, r4, lsr #26
	smlabb	r4, lr, r9, r4
	mul	r7, r7, r0
	ldr	r9, [sp, #20]
	mov	r2, r2, lsr #26
	smlabb	r2, lr, r8, r2
	add	r8, r10, #65536
	and	r8, r8, r9
	mul	r0, fp, r0
	ldrb	r9, [r5, r8, asr #16]	@ zero_extendqisi2
	mov	r7, r7, lsr #26
	ldrb	r8, [r6, r8, asr #16]	@ zero_extendqisi2
	smlabb	r7, lr, r9, r7
	mov	r0, r0, lsr #26
	smlabb	r8, lr, r8, r0
	ldr	r2, [ip, r2, asl #2]
	ldr	r0, [ip, r4, asl #2]
	ldr	r4, [ip, r7, asl #2]
	add	r2, r0, r2
	ldr	r7, [ip, r8, asl #2]
	add	r0, r2, r4
	.loc 3 311 0
	ldr	r4, [sp, #12]
	uxth	r3, r3
	.loc 3 307 0
	add	r0, r0, r7
	.loc 3 311 0
	mul	r8, fp, r3
	.loc 3 307 0
	ldr	r7, [sp, #24]
	.loc 3 311 0
	mul	r3, r4, r3
	.loc 3 307 0
	str	r0, [r7, #-32]
.LVL4917:
	.loc 3 311 0
	ldrb	r0, [r6, r1, asr #16]	@ zero_extendqisi2
	uxth	r2, r1
	ldrb	r7, [r5, r1, asr #16]	@ zero_extendqisi2
	ldr	r1, [sp, #40]
	mul	r4, r4, r2
	ldr	r9, [sp, #20]
	mul	r2, fp, r2
	mov	r8, r8, lsr #26
	mov	r3, r3, lsr #26
	add	r1, r1, r10
	smlabb	r8, lr, r0, r8
	smlabb	r3, lr, r7, r3
	and	r1, r1, r9
	ldrb	r0, [r5, r1, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r6, r1, asr #16]	@ zero_extendqisi2
	mov	r2, r2, lsr #26
	ldr	r3, [ip, r3, asl #2]
	smlabb	r2, lr, r1, r2
	mov	r4, r4, lsr #26
	ldr	r1, [ip, r8, asl #2]
	smlabb	r4, lr, r0, r4
	add	r1, r3, r1
	.loc 3 306 0
	ldr	r3, [sp, #28]
	ldr	r0, [ip, r4, asl #2]
	subs	r3, r3, #2
	str	r3, [sp, #28]
.LVL4918:
	ldr	r3, [sp, #36]
.LVL4919:
	.loc 3 311 0
	ldr	r2, [ip, r2, asl #2]
	add	r1, r1, r0
	add	r10, r3, r10
.LVL4920:
	ldr	r3, [sp, #24]
	add	r1, r1, r2
	str	r1, [r3, #-16]
.LVL4921:
	add	r3, r3, #32
	str	r3, [sp, #24]
.LVL4922:
	.loc 3 306 0
	bpl	.L5543
	.loc 3 316 0
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #4]
	ldr	r4, [sp, #48]
	ldr	r3, [sp, #44]
.LVL4923:
	tst	r1, #1
	ldr	r1, [sp, #36]
	mov	r3, r3, lsr #1
	add	r4, r4, r2, asl #1
	mla	r4, r1, r3, r4
	add	r2, r3, #1
	ldr	r3, [sp, #16]
	add	r3, r3, r2, asl #5
	str	r3, [sp, #16]
	bne	.L5520
.LVL4924:
.L5556:
	.loc 3 317 0
	ldr	r6, [sp, #20]
	mov	r2, #64
	and	ip, r4, r6
	mvn	r3, ip
	ldr	lr, [sp, #12]
	uxth	r3, r3
	uxth	r1, ip
	mul	r0, lr, r3
	mul	r3, fp, r3
	mul	lr, lr, r1
	mul	fp, fp, r1
	ldr	r1, [sp, #8]
	add	r4, r4, #65536
	ldrb	r7, [r5, ip, asr #16]	@ zero_extendqisi2
	and	r4, r4, r6
	ldrb	r6, [r1, ip, asr #16]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	ldrb	r5, [r5, r4, asr #16]	@ zero_extendqisi2
.LVL4925:
	mov	r3, r3, lsr #26
	smlabb	r3, r2, r6, r3
	ldrb	r1, [r1, r4, asr #16]	@ zero_extendqisi2
	mov	ip, lr, lsr #26
	smlabb	r7, r2, r7, r0
	ldr	r0, [sp, #52]
	smlabb	ip, r2, r5, ip
	mov	fp, fp, lsr #26
	ldr	r0, [r0]
	smlabb	r1, r2, r1, fp
	ldr	lr, [r0, r3, asl #2]
	ldr	r2, [r0, r7, asl #2]
	ldr	r3, [r0, ip, asl #2]
	add	r2, r2, lr
	ldr	r1, [r0, r1, asl #2]
	add	r3, r2, r3
	ldr	r2, [sp, #16]
	add	r3, r3, r1
	str	r3, [r2]
	b	.L5520
.LVL4926:
.L5599:
.LBE1031:
.LBE1030:
.LBE1040:
	.loc 3 127 0
	mov	r0, #1
.LVL4927:
	ldr	r2, [r10, #48]
	mov	r1, r0
.LVL4928:
	bl	R_GetDrawColumnFunc
.LVL4929:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4930:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL4931:
.L5541:
	.cfi_restore_state
.LBB1041:
.LBB1034:
.LBB1032:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r2, r2, asl #16
.LVL4932:
	.loc 3 325 0
	blt	.L5547
	.loc 3 328 0
	cmp	r4, r2
	blt	.L5546
.L5548:
	rsb	r4, r2, r4
.LVL4933:
	cmp	r2, r4
	ble	.L5548
.L5546:
	.loc 3 332 0
	add	r0, r4, #65536
.LVL4934:
	.loc 3 333 0
	cmp	r0, r2
	blt	.L5549
.L5550:
	rsb	r0, r2, r0
.LVL4935:
	cmp	r0, r2
	bge	.L5550
.L5549:
	.loc 3 345 0
	mov	r10, #0
	mov	r9, #64
	ldr	r3, .L5606+36
	ldr	r1, [sp, #12]
	ldr	r8, [r3]
	ldr	r3, [sp, #32]
	rsb	fp, r1, #65280
	add	r3, r3, #1
	str	r3, [sp, #20]
.LVL4936:
	add	fp, fp, #255
.LVL4937:
.L5553:
	mvn	r3, r4
	uxth	r1, r4
	ldr	lr, [sp, #12]
	uxth	r3, r3
	mul	ip, fp, r1
	mul	r6, fp, r3
	mul	r1, lr, r1
	mul	r3, lr, r3
	ldr	lr, [sp, #8]
	mov	ip, ip, lsr #26
	ldrb	r7, [lr, r0, asr #16]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	smlabb	ip, r9, r7, ip
	ldrb	r7, [r5, r0, asr #16]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asr #16]	@ zero_extendqisi2
	smlabb	r1, r9, r7, r1
	mov	r6, r6, lsr #26
	ldrb	r7, [r5, r4, asr #16]	@ zero_extendqisi2
	mov	r3, r3, lsr #26
	smlabb	r6, r9, lr, r6
	smlabb	r3, r9, r7, r3
	ldr	r1, [r8, r1, asl #2]
	ldr	ip, [r8, ip, asl #2]
	ldr	lr, [r8, r6, asl #2]
	ldr	r3, [r8, r3, asl #2]
	add	ip, ip, r1
	add	ip, ip, lr
	.loc 3 348 0
	ldr	r1, [sp, #4]
	.loc 3 345 0
	add	ip, ip, r3
	ldr	r3, [sp, #16]
	.loc 3 348 0
	add	r4, r4, r1
.LVL4938:
	.loc 3 350 0
	add	r0, r0, r1
.LVL4939:
	.loc 3 348 0
	cmp	r4, r2
	.loc 3 345 0
	str	ip, [r3, r10, asl #4]
.LVL4940:
	.loc 3 339 0
	ldr	r3, [sp, #20]
	add	r10, r10, #1
.LVL4941:
	.loc 3 348 0
	rsbge	r4, r2, r4
.LVL4942:
	.loc 3 350 0
	cmp	r0, r2
	rsbge	r0, r2, r0
.LVL4943:
	.loc 3 339 0
	cmp	r10, r3
	bne	.L5553
.LBE1032:
.LBE1034:
.LBE1041:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4944:
.L5547:
	.cfi_restore_state
.LBB1042:
.LBB1035:
.LBB1033:
	.loc 3 326 0 discriminator 1
	adds	r4, r2, r4
.LVL4945:
	bpl	.L5546
.LVL4946:
	.loc 3 326 0 is_stmt 0
	adds	r4, r2, r4
.LVL4947:
	bmi	.L5547
	b	.L5546
.LVL4948:
.L5604:
.LBE1033:
.LBE1035:
.LBE1042:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r9, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L5531
	b	.L5533
.LVL4949:
.L5602:
	mvn	r10, r4
.LBB1043:
	.loc 3 286 0
	mov	r9, #0
	.loc 3 289 0
	mov	r8, #64
	ldr	r3, .L5606+36
	ldr	r2, [sp, #12]
	ldr	r7, [r3]
	ldr	r3, [sp, #32]
	rsb	fp, r2, #65280
	add	r3, r3, #1
	str	r3, [sp, #24]
	add	fp, fp, #255
.LVL4950:
.L5538:
	ldr	r0, [sp, #12]
	uxth	r2, r10
	uxth	r3, r4
	mul	ip, r0, r2
	mul	r0, r0, r3
	mul	r3, fp, r3
	mul	r2, fp, r2
	bic	lr, r4, #-16777216
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	add	r1, r4, #65536
	bic	lr, lr, #8388608
	ldrb	r6, [r5, lr, asr #16]	@ zero_extendqisi2
	bic	r1, r1, #-16777216
	ldrb	lr, [r3, lr, asr #16]	@ zero_extendqisi2
	bic	r1, r1, #8388608
	mov	r2, r2, lsr #26
	smlabb	r2, r8, lr, r2
	mov	ip, ip, lsr #26
	ldrb	lr, [r5, r1, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r3, r1, asr #16]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	smlabb	ip, r8, r6, ip
	mov	r0, r0, lsr #26
	smlabb	r0, r8, lr, r0
	mov	r3, r3, lsr #26
	smlabb	r3, r8, r1, r3
	ldr	r2, [r7, r2, asl #2]
	ldr	r1, [r7, ip, asl #2]
	ldr	r0, [r7, r0, asl #2]
	add	r1, r1, r2
	ldr	r3, [r7, r3, asl #2]
	add	r1, r1, r0
	ldr	r2, [sp, #16]
	add	r3, r1, r3
	str	r3, [r2, r9, asl #4]
.LVL4951:
	.loc 3 288 0
	ldr	r3, [sp, #24]
	add	r9, r9, #1
.LVL4952:
	cmp	r9, r3
	ldr	r3, [sp, #4]
	rsb	r10, r3, r10
	.loc 3 292 0
	add	r4, r4, r3
.LVL4953:
	.loc 3 288 0
	bne	.L5538
.LBE1043:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4954:
.L5558:
	.cfi_restore_state
.LBB1044:
	.loc 3 269 0
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L5537
.LVL4955:
.L5603:
.LBE1044:
.LBB1045:
	.loc 3 197 0
	mvn	r0, r3
	ldr	r1, [sp, #4]
	uxth	r0, r0
	b	.L5596
.LVL4956:
.L5590:
	ldr	r3, [r6, #32]
	ldr	r5, [r6, #40]
	str	r3, [sp, #8]
	b	.L5532
.LVL4957:
.L5527:
.LBE1045:
	.loc 3 186 0
	tst	r2, #2
	beq	.L5526
.LBB1046:
	.loc 3 188 0
	mov	r0, r3
.LVL4958:
	ldr	r1, [sp, #4]
	str	r3, [sp, #12]
	bl	__aeabi_idiv
.LVL4959:
	.loc 3 190 0
	ldr	r2, [sp, #32]
	.loc 3 191 0
	ldr	r3, [sp, #12]
	.loc 3 189 0
	add	r9, r9, r0
	.loc 3 190 0
	rsb	r2, r0, r2
	.loc 3 191 0
	add	r4, r4, r3
.LVL4960:
	.loc 3 189 0
	str	r9, [r6, #4]
.LVL4961:
	.loc 3 190 0
	str	r2, [sp, #32]
.LVL4962:
	b	.L5526
.LVL4963:
.L5605:
	ldr	r3, [sp, #12]
.LVL4964:
	rsb	fp, r3, #65280
	ldr	r3, .L5606+36
	add	fp, fp, #255
	str	r3, [sp, #52]
	b	.L5556
.L5607:
	.align	2
.L5606:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushHTTL32
	.word	R_FlushQuadTL32
	.word	.LANCHOR0+3140
	.word	R_FlushWholeTL32
	.word	V_Palette32
	.word	viewheight
.LBE1046:
	.cfi_endproc
.LFE112:
	.size	R_DrawTLColumn32_LinearUV, .-R_DrawTLColumn32_LinearUV
	.align	2
	.type	R_DrawColumn32_LinearUV, %function
R_DrawColumn32_LinearUV:
.LFB76:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4965:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 3 126 0
	ldr	r10, .L5694
	.loc 3 117 0
	str	r3, [sp, #4]
.LVL4966:
	.loc 3 119 0
	ldr	r8, [r0, #32]
	ldr	r7, [r0, #40]
	.loc 3 126 0
	ldr	r2, [r10, #64]
	ldr	r1, [sp, #4]
	.loc 3 119 0
	cmp	r8, r7
	ldrneh	r3, [r0, #28]
.LVL4967:
	moveq	r3, #0
.LVL4968:
	.loc 3 126 0
	cmp	r1, r2
	.loc 3 113 0
	mov	r6, r0
	.loc 3 119 0
	str	r8, [sp, #8]
	mov	r5, r7
	.loc 3 126 0
	bgt	.L5687
	.loc 3 149 0
	ldmib	r0, {r9, fp}
.LVL4969:
	.loc 3 157 0
	subs	r2, fp, r9
.LVL4970:
	str	r2, [sp, #32]
	bmi	.L5608
	.loc 3 169 0
	ldr	r1, .L5694+4
.LVL4971:
	ldr	r2, [r0, #20]
.LVL4972:
	.loc 3 174 0
	ldr	r0, [r0, #60]
.LVL4973:
	.loc 3 169 0
	ldr	r4, [r1]
	.loc 3 174 0
	cmp	r0, #0
	.loc 3 169 0
	ldr	r0, [sp, #4]
	rsb	r1, r4, r9
	sub	r2, r2, #32768
	mla	r4, r0, r1, r2
.LVL4974:
	.loc 3 174 0
	bne	.L5688
.LVL4975:
.L5613:
	.loc 3 215 0
	ldr	r9, .L5694+8
	ldr	r3, [r9]
	cmp	r3, #4
	beq	.L5619
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5689
.L5620:
	.loc 3 222 0 is_stmt 1
	ldmia	r6, {r1, r3}
	.loc 3 224 0
	mov	ip, #1
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 224 0
	ldr	r0, .L5694+12
	.loc 3 223 0
	str	r2, [r9, #8]
	str	r2, [r9, #32]
	mov	r2, #0
	.loc 3 224 0
	str	ip, [r0, #-1204]
	.loc 3 221 0
	str	r1, [r9, #12]
	.loc 3 231 0
	ldr	r0, .L5694+16
	.loc 3 232 0
	ldr	r1, .L5694+20
	.loc 3 233 0
	ldr	lr, .L5694+24
	.loc 3 230 0
	ldr	ip, .L5694+28
	.loc 3 232 0
	stmib	r10, {r0, r1}
	.loc 3 222 0
	str	r3, [r9, #4]
	str	r3, [r9, #16]
	.loc 3 233 0
	add	r3, lr, r3, asl #4
	str	r3, [sp, #16]
.LVL4976:
	.loc 3 230 0
	str	ip, [r10]
.L5622:
.LVL4977:
	.loc 3 245 0
	add	r3, r2, #1
.LBB1047:
	.loc 3 269 0
	ldr	r2, [sp, #8]
.LBE1047:
	.loc 3 245 0
	str	r3, [r9]
.LVL4978:
.LBB1054:
	.loc 3 269 0
	cmp	r2, r5
	beq	.L5646
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r3, [r6, #28]
	str	r3, [sp, #12]
.L5625:
.LVL4979:
	.loc 3 286 0 is_stmt 1
	ldr	r2, [r6, #24]
.LVL4980:
	cmp	r2, #128
	beq	.L5690
	.loc 3 294 0
	cmp	r2, #0
	bne	.L5627
.LVL4981:
	ldr	r1, [sp, #12]
	mvn	r9, r4
	.loc 3 297 0
	mov	r8, #64
	mov	fp, r1
	ldr	r3, .L5694+32
	rsb	r10, r1, #65280
	ldr	r7, [r3]
	ldr	r3, [sp, #32]
	add	r10, r10, #255
	add	r3, r3, #1
	str	r3, [sp, #20]
.LVL4982:
.L5628:
	uxth	r3, r4
	mul	lr, fp, r3
	mul	r3, r10, r3
	uxth	r1, r9
	mul	ip, fp, r1
	mul	r1, r10, r1
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	ldrb	r6, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r3, r4, asr #16]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	smlabb	ip, r8, r6, ip
	mov	r1, r1, lsr #26
	add	r6, r4, #65536
	smlabb	r1, r8, r0, r1
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r6, [r3, r6, asr #16]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	mov	lr, lr, lsr #26
	smlabb	lr, r8, r0, lr
	mov	r3, r3, lsr #26
	smlabb	r3, r8, r6, r3
	ldr	r0, [r7, ip, asl #2]
	ldr	r1, [r7, r1, asl #2]
	ldr	ip, [r7, lr, asl #2]
	add	r0, r0, r1
	ldr	r3, [r7, r3, asl #2]
	add	r0, r0, ip
	ldr	r1, [sp, #16]
	add	r3, r0, r3
	str	r3, [r1, r2, asl #4]
.LVL4983:
	.loc 3 296 0
	ldr	r3, [sp, #20]
	add	r2, r2, #1
.LVL4984:
	cmp	r2, r3
	ldr	r3, [sp, #4]
	rsb	r9, r3, r9
	.loc 3 300 0
	add	r4, r4, r3
.LVL4985:
	.loc 3 296 0
	bne	.L5628
.LVL4986:
.L5608:
.LBE1054:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4987:
.L5688:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r2, [r6, #64]
	cmp	r2, #1
	bne	.L5613
	.loc 3 178 0
	cmp	r9, #0
	beq	.L5614
	.loc 3 179 0
	ldr	r2, [r6, #56]
	tst	r2, #1
	beq	.L5615
.LBB1055:
	.loc 3 181 0
	mvn	r2, r3
	uxth	r2, r2
	mov	r0, r2
.LVL4988:
	ldr	r1, [sp, #4]
	str	r3, [sp, #16]
	str	r2, [sp, #12]
	bl	__aeabi_idiv
.LVL4989:
	.loc 3 183 0
	ldr	r3, [sp, #32]
	.loc 3 184 0
	ldr	r2, [sp, #12]
	.loc 3 183 0
	rsb	r3, r0, r3
	.loc 3 182 0
	add	r9, r9, r0
	.loc 3 183 0
	str	r3, [sp, #32]
.LVL4990:
.LBE1055:
	ldr	r3, [sp, #16]
.LBB1056:
	.loc 3 184 0
	add	r4, r4, r2
.LVL4991:
	.loc 3 182 0
	str	r9, [r6, #4]
.LVL4992:
.L5614:
.LBE1056:
	.loc 3 194 0
	ldr	r2, .L5694+36
	ldr	r2, [r2]
	sub	r2, r2, #1
	cmp	fp, r2
	beq	.L5616
	.loc 3 195 0
	ldr	r2, [r6, #56]
	tst	r2, #4
	bne	.L5691
	.loc 3 201 0
	tst	r2, #8
	beq	.L5616
.LBB1057:
	.loc 3 203 0
	mov	r0, r3
	ldr	r1, [sp, #4]
.L5684:
	bl	__aeabi_idiv
.LVL4993:
	.loc 3 205 0
	ldr	r3, [sp, #32]
	.loc 3 204 0
	rsb	fp, r0, fp
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	fp, [r6, #8]
.LVL4994:
	.loc 3 205 0
	str	r3, [sp, #32]
.LVL4995:
.L5616:
.LBE1057:
	.loc 3 208 0
	ldr	r3, [sp, #32]
	cmp	r3, #0
	bgt	.L5613
	b	.L5608
.L5689:
	.loc 3 216 0
	ldr	r2, .L5694+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L5692
.L5619:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL4996:
	.loc 3 219 0
	ldr	r3, [r9]
	cmp	r3, #0
	beq	.L5678
	ldr	r8, [r6, #32]
	ldr	r7, [r6, #40]
.L5621:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [r9, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r9, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L5694+8
	.loc 3 240 0
	ldr	ip, .L5694+8
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r9, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	cmp	r1, r0
	.loc 3 241 0
	strlt	r1, [ip, #8]
	.loc 3 243 0
	ldr	r1, .L5694+24
	str	r8, [sp, #8]
	add	r3, r1, r3, asl #2
	mov	r5, r7
	ldr	r2, [r9]
	str	r3, [sp, #16]
.LVL4997:
	b	.L5622
.LVL4998:
.L5627:
.LBB1058:
.LBB1048:
	.loc 3 303 0
	sub	r3, r2, #1
.LVL4999:
	.loc 3 304 0
	tst	r3, r2
	bne	.L5629
.LBB1049:
	.loc 3 305 0
	mov	r3, r3, asl #16
.LVL5000:
	mvn	r3, r3, lsr #16
	mvn	r3, r3, asl #16
	.loc 3 306 0
	ldr	r2, [sp, #32]
.LVL5001:
	.loc 3 305 0
	str	r3, [sp, #20]
.LVL5002:
	.loc 3 306 0
	sub	r2, r2, #1
	cmn	r2, #1
	str	r2, [sp, #44]
	str	r2, [sp, #28]
.LVL5003:
	beq	.L5693
	ldr	r3, .L5694+32
.LVL5004:
	mov	r10, r4
	str	r3, [sp, #52]
	ldr	ip, [r3]
	ldr	r3, [sp, #16]
	.loc 3 307 0
	mov	lr, #64
	add	r3, r3, #32
	mov	r6, r3
.LVL5005:
	ldr	r2, [sp, #12]
.LVL5006:
	ldr	r3, [sp, #4]
	rsb	fp, r2, #65280
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	add	fp, fp, #255
	str	r2, [sp, #36]
	str	r3, [sp, #40]
	str	r4, [sp, #48]
	str	r6, [sp, #24]
.LVL5007:
.L5631:
	ldr	r3, [sp, #20]
	ldr	r1, [sp, #4]
	and	r7, r10, r3
	mvn	r2, r7
	add	r1, r1, r10
	.loc 3 311 0
	and	r1, r1, r3
	mvn	r3, r1
	.loc 3 307 0
	ldr	r0, [sp, #12]
	uxth	r2, r2
	mul	r4, r0, r2
	ldr	r6, [sp, #8]
	mul	r2, fp, r2
	ldrb	r9, [r5, r7, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r6, r7, asr #16]	@ zero_extendqisi2
	uxth	r0, r7
	ldr	r7, [sp, #12]
	mov	r4, r4, lsr #26
	smlabb	r4, lr, r9, r4
	mul	r7, r7, r0
	ldr	r9, [sp, #20]
	mov	r2, r2, lsr #26
	smlabb	r2, lr, r8, r2
	add	r8, r10, #65536
	and	r8, r8, r9
	mul	r0, fp, r0
	ldrb	r9, [r5, r8, asr #16]	@ zero_extendqisi2
	mov	r7, r7, lsr #26
	ldrb	r8, [r6, r8, asr #16]	@ zero_extendqisi2
	smlabb	r7, lr, r9, r7
	mov	r0, r0, lsr #26
	smlabb	r8, lr, r8, r0
	ldr	r2, [ip, r2, asl #2]
	ldr	r0, [ip, r4, asl #2]
	ldr	r4, [ip, r7, asl #2]
	add	r2, r0, r2
	ldr	r7, [ip, r8, asl #2]
	add	r0, r2, r4
	.loc 3 311 0
	ldr	r4, [sp, #12]
	uxth	r3, r3
	.loc 3 307 0
	add	r0, r0, r7
	.loc 3 311 0
	mul	r8, fp, r3
	.loc 3 307 0
	ldr	r7, [sp, #24]
	.loc 3 311 0
	mul	r3, r4, r3
	.loc 3 307 0
	str	r0, [r7, #-32]
.LVL5008:
	.loc 3 311 0
	ldrb	r0, [r6, r1, asr #16]	@ zero_extendqisi2
	uxth	r2, r1
	ldrb	r7, [r5, r1, asr #16]	@ zero_extendqisi2
	ldr	r1, [sp, #40]
	mul	r4, r4, r2
	ldr	r9, [sp, #20]
	mul	r2, fp, r2
	mov	r8, r8, lsr #26
	mov	r3, r3, lsr #26
	add	r1, r1, r10
	smlabb	r8, lr, r0, r8
	smlabb	r3, lr, r7, r3
	and	r1, r1, r9
	ldrb	r0, [r5, r1, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r6, r1, asr #16]	@ zero_extendqisi2
	mov	r2, r2, lsr #26
	ldr	r3, [ip, r3, asl #2]
	smlabb	r2, lr, r1, r2
	mov	r4, r4, lsr #26
	ldr	r1, [ip, r8, asl #2]
	smlabb	r4, lr, r0, r4
	add	r1, r3, r1
	.loc 3 306 0
	ldr	r3, [sp, #28]
	ldr	r0, [ip, r4, asl #2]
	subs	r3, r3, #2
	str	r3, [sp, #28]
.LVL5009:
	ldr	r3, [sp, #36]
.LVL5010:
	.loc 3 311 0
	ldr	r2, [ip, r2, asl #2]
	add	r1, r1, r0
	add	r10, r3, r10
.LVL5011:
	ldr	r3, [sp, #24]
	add	r1, r1, r2
	str	r1, [r3, #-16]
.LVL5012:
	add	r3, r3, #32
	str	r3, [sp, #24]
.LVL5013:
	.loc 3 306 0
	bpl	.L5631
	.loc 3 316 0
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #4]
	ldr	r4, [sp, #48]
	ldr	r3, [sp, #44]
.LVL5014:
	tst	r1, #1
	ldr	r1, [sp, #36]
	mov	r3, r3, lsr #1
	add	r4, r4, r2, asl #1
	mla	r4, r1, r3, r4
	add	r2, r3, #1
	ldr	r3, [sp, #16]
	add	r3, r3, r2, asl #5
	str	r3, [sp, #16]
	bne	.L5608
.LVL5015:
.L5644:
	.loc 3 317 0
	ldr	r6, [sp, #20]
	mov	r2, #64
	and	ip, r4, r6
	mvn	r3, ip
	ldr	lr, [sp, #12]
	uxth	r3, r3
	uxth	r1, ip
	mul	r0, lr, r3
	mul	r3, fp, r3
	mul	lr, lr, r1
	mul	fp, fp, r1
	ldr	r1, [sp, #8]
	add	r4, r4, #65536
	ldrb	r7, [r5, ip, asr #16]	@ zero_extendqisi2
	and	r4, r4, r6
	ldrb	r6, [r1, ip, asr #16]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	ldrb	r5, [r5, r4, asr #16]	@ zero_extendqisi2
.LVL5016:
	mov	r3, r3, lsr #26
	smlabb	r3, r2, r6, r3
	ldrb	r1, [r1, r4, asr #16]	@ zero_extendqisi2
	mov	ip, lr, lsr #26
	smlabb	r7, r2, r7, r0
	ldr	r0, [sp, #52]
	smlabb	ip, r2, r5, ip
	mov	fp, fp, lsr #26
	ldr	r0, [r0]
	smlabb	r1, r2, r1, fp
	ldr	lr, [r0, r3, asl #2]
	ldr	r2, [r0, r7, asl #2]
	ldr	r3, [r0, ip, asl #2]
	add	r2, r2, lr
	ldr	r1, [r0, r1, asl #2]
	add	r3, r2, r3
	ldr	r2, [sp, #16]
	add	r3, r3, r1
	str	r3, [r2]
	b	.L5608
.LVL5017:
.L5687:
.LBE1049:
.LBE1048:
.LBE1058:
	.loc 3 127 0
	ldr	r2, [r10, #48]
	mov	r1, #1
.LVL5018:
	mov	r0, #0
.LVL5019:
	bl	R_GetDrawColumnFunc
.LVL5020:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5021:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5022:
.L5629:
	.cfi_restore_state
.LBB1059:
.LBB1052:
.LBB1050:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r2, r2, asl #16
.LVL5023:
	.loc 3 325 0
	blt	.L5635
	.loc 3 328 0
	cmp	r4, r2
	blt	.L5634
.L5636:
	rsb	r4, r2, r4
.LVL5024:
	cmp	r2, r4
	ble	.L5636
.L5634:
	.loc 3 332 0
	add	r0, r4, #65536
.LVL5025:
	.loc 3 333 0
	cmp	r0, r2
	blt	.L5637
.L5638:
	rsb	r0, r2, r0
.LVL5026:
	cmp	r0, r2
	bge	.L5638
.L5637:
	.loc 3 345 0
	mov	r10, #0
	mov	r9, #64
	ldr	r3, .L5694+32
	ldr	r1, [sp, #12]
	ldr	r8, [r3]
	ldr	r3, [sp, #32]
	rsb	fp, r1, #65280
	add	r3, r3, #1
	str	r3, [sp, #20]
.LVL5027:
	add	fp, fp, #255
.LVL5028:
.L5641:
	mvn	r3, r4
	uxth	r1, r4
	ldr	lr, [sp, #12]
	uxth	r3, r3
	mul	ip, fp, r1
	mul	r6, fp, r3
	mul	r1, lr, r1
	mul	r3, lr, r3
	ldr	lr, [sp, #8]
	mov	ip, ip, lsr #26
	ldrb	r7, [lr, r0, asr #16]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	smlabb	ip, r9, r7, ip
	ldrb	r7, [r5, r0, asr #16]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asr #16]	@ zero_extendqisi2
	smlabb	r1, r9, r7, r1
	mov	r6, r6, lsr #26
	ldrb	r7, [r5, r4, asr #16]	@ zero_extendqisi2
	mov	r3, r3, lsr #26
	smlabb	r6, r9, lr, r6
	smlabb	r3, r9, r7, r3
	ldr	r1, [r8, r1, asl #2]
	ldr	ip, [r8, ip, asl #2]
	ldr	lr, [r8, r6, asl #2]
	ldr	r3, [r8, r3, asl #2]
	add	ip, ip, r1
	add	ip, ip, lr
	.loc 3 348 0
	ldr	r1, [sp, #4]
	.loc 3 345 0
	add	ip, ip, r3
	ldr	r3, [sp, #16]
	.loc 3 348 0
	add	r4, r4, r1
.LVL5029:
	.loc 3 350 0
	add	r0, r0, r1
.LVL5030:
	.loc 3 348 0
	cmp	r4, r2
	.loc 3 345 0
	str	ip, [r3, r10, asl #4]
.LVL5031:
	.loc 3 339 0
	ldr	r3, [sp, #20]
	add	r10, r10, #1
.LVL5032:
	.loc 3 348 0
	rsbge	r4, r2, r4
.LVL5033:
	.loc 3 350 0
	cmp	r0, r2
	rsbge	r0, r2, r0
.LVL5034:
	.loc 3 339 0
	cmp	r10, r3
	bne	.L5641
.LBE1050:
.LBE1052:
.LBE1059:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5035:
.L5635:
	.cfi_restore_state
.LBB1060:
.LBB1053:
.LBB1051:
	.loc 3 326 0 discriminator 1
	adds	r4, r2, r4
.LVL5036:
	bpl	.L5634
.LVL5037:
	.loc 3 326 0 is_stmt 0
	adds	r4, r2, r4
.LVL5038:
	bmi	.L5635
	b	.L5634
.LVL5039:
.L5692:
.LBE1051:
.LBE1053:
.LBE1060:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r9, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L5619
	b	.L5621
.LVL5040:
.L5690:
	mvn	r10, r4
.LBB1061:
	.loc 3 286 0
	mov	r9, #0
	.loc 3 289 0
	mov	r8, #64
	ldr	r3, .L5694+32
	ldr	r2, [sp, #12]
	ldr	r7, [r3]
	ldr	r3, [sp, #32]
	rsb	fp, r2, #65280
	add	r3, r3, #1
	str	r3, [sp, #24]
	add	fp, fp, #255
.LVL5041:
.L5626:
	ldr	r0, [sp, #12]
	uxth	r2, r10
	uxth	r3, r4
	mul	ip, r0, r2
	mul	r0, r0, r3
	mul	r3, fp, r3
	mul	r2, fp, r2
	bic	lr, r4, #-16777216
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	add	r1, r4, #65536
	bic	lr, lr, #8388608
	ldrb	r6, [r5, lr, asr #16]	@ zero_extendqisi2
	bic	r1, r1, #-16777216
	ldrb	lr, [r3, lr, asr #16]	@ zero_extendqisi2
	bic	r1, r1, #8388608
	mov	r2, r2, lsr #26
	smlabb	r2, r8, lr, r2
	mov	ip, ip, lsr #26
	ldrb	lr, [r5, r1, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r3, r1, asr #16]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	smlabb	ip, r8, r6, ip
	mov	r0, r0, lsr #26
	smlabb	r0, r8, lr, r0
	mov	r3, r3, lsr #26
	smlabb	r3, r8, r1, r3
	ldr	r2, [r7, r2, asl #2]
	ldr	r1, [r7, ip, asl #2]
	ldr	r0, [r7, r0, asl #2]
	add	r1, r1, r2
	ldr	r3, [r7, r3, asl #2]
	add	r1, r1, r0
	ldr	r2, [sp, #16]
	add	r3, r1, r3
	str	r3, [r2, r9, asl #4]
.LVL5042:
	.loc 3 288 0
	ldr	r3, [sp, #24]
	add	r9, r9, #1
.LVL5043:
	cmp	r9, r3
	ldr	r3, [sp, #4]
	rsb	r10, r3, r10
	.loc 3 292 0
	add	r4, r4, r3
.LVL5044:
	.loc 3 288 0
	bne	.L5626
.LBE1061:
	.loc 3 357 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5045:
.L5646:
	.cfi_restore_state
.LBB1062:
	.loc 3 269 0
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L5625
.LVL5046:
.L5691:
.LBE1062:
.LBB1063:
	.loc 3 197 0
	mvn	r0, r3
	ldr	r1, [sp, #4]
	uxth	r0, r0
	b	.L5684
.LVL5047:
.L5678:
	ldr	r3, [r6, #32]
	ldr	r5, [r6, #40]
	str	r3, [sp, #8]
	b	.L5620
.LVL5048:
.L5615:
.LBE1063:
	.loc 3 186 0
	tst	r2, #2
	beq	.L5614
.LBB1064:
	.loc 3 188 0
	mov	r0, r3
.LVL5049:
	ldr	r1, [sp, #4]
	str	r3, [sp, #12]
	bl	__aeabi_idiv
.LVL5050:
	.loc 3 190 0
	ldr	r2, [sp, #32]
	.loc 3 191 0
	ldr	r3, [sp, #12]
	.loc 3 189 0
	add	r9, r9, r0
	.loc 3 190 0
	rsb	r2, r0, r2
	.loc 3 191 0
	add	r4, r4, r3
.LVL5051:
	.loc 3 189 0
	str	r9, [r6, #4]
.LVL5052:
	.loc 3 190 0
	str	r2, [sp, #32]
.LVL5053:
	b	.L5614
.LVL5054:
.L5693:
	ldr	r3, [sp, #12]
.LVL5055:
	rsb	fp, r3, #65280
	ldr	r3, .L5694+32
	add	fp, fp, #255
	str	r3, [sp, #52]
	b	.L5644
.L5695:
	.align	2
.L5694:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT32
	.word	R_FlushQuad32
	.word	.LANCHOR0+3140
	.word	R_FlushWhole32
	.word	V_Palette32
	.word	viewheight
.LBE1064:
	.cfi_endproc
.LFE76:
	.size	R_DrawColumn32_LinearUV, .-R_DrawColumn32_LinearUV
	.align	2
	.type	R_DrawFuzzColumn16_RoundedUV_LinearZ, %function
R_DrawFuzzColumn16_RoundedUV_LinearZ:
.LFB180:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5056:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r7, .L5734
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL5057:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	mov	r4, r0
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL5058:
	.loc 3 126 0
	bgt	.L5731
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L5734+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL5059:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL5060:
	bmi	.L5696
.LVL5061:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L5702
.LVL5062:
.L5705:
	.loc 3 215 0
	ldr	r5, .L5734+8
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L5703
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5732
.L5711:
	.loc 3 228 0 is_stmt 1
	ldr	r3, .L5734+12
	.loc 3 224 0
	mov	r8, #4
.LVL5063:
	.loc 3 221 0
	ldr	lr, [r4]
	.loc 3 228 0
	ldr	r9, [r3]
	.loc 3 223 0
	ldmib	r4, {r2, r3}
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	mov	r3, #0
	.loc 3 231 0
	ldr	r0, .L5734+16
	.loc 3 232 0
	ldr	r1, .L5734+20
	.loc 3 224 0
	ldr	r6, .L5734+24
	.loc 3 230 0
	ldr	ip, .L5734+28
	.loc 3 232 0
	stmib	r7, {r0, r1}
.LVL5064:
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r6, #-1204]
	.loc 3 221 0
	str	lr, [r5, #12]
	.loc 3 222 0
	str	r2, [r5, #4]
	str	r2, [r5, #16]
.LVL5065:
	.loc 3 230 0
	str	ip, [r7]
.L5713:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
.L5696:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5066:
.L5702:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5705
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L5706
.LBB1065:
	.loc 3 181 0
	mvn	r0, r10
.LVL5067:
	mov	r1, r8
	str	r3, [sp, #4]
	uxth	r0, r0
.LVL5068:
.L5730:
.LBE1065:
.LBB1066:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL5069:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	fp, r0, fp
.LVL5070:
.L5707:
.LBE1066:
	.loc 3 194 0
	cmp	r5, r9
	beq	.L5708
	.loc 3 195 0
	tst	r3, #4
	beq	.L5709
.LBB1067:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL5071:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	fp, r0, fp
.LVL5072:
.L5708:
.LBE1067:
	.loc 3 208 0
	cmp	fp, #0
	bgt	.L5705
	b	.L5696
.L5732:
	.loc 3 216 0
	ldr	r2, .L5734+24
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L5733
.L5703:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5073:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L5711
.L5712:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L5734+8
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L5734+8
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L5713
.LVL5074:
.L5731:
	.loc 3 127 0
	ldr	r2, [r7, #48]
	mov	r1, #1
	mov	r0, #3
.LVL5075:
	bl	R_GetDrawColumnFunc
.LVL5076:
	mov	r3, r0
	mov	r0, r4
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5077:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5078:
.L5733:
	.cfi_restore_state
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L5703
	b	.L5712
.L5709:
	.loc 3 201 0
	tst	r3, #8
	beq	.L5708
.LBB1068:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv
.LVL5079:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	fp, r0, fp
.LVL5080:
	b	.L5708
.LVL5081:
.L5706:
.LBE1068:
	.loc 3 186 0
	tst	r3, #2
	beq	.L5707
	str	r3, [sp, #4]
.LBB1069:
	.loc 3 188 0
	uxth	r0, r10
.LVL5082:
	mov	r1, r8
	b	.L5730
.L5735:
	.align	2
.L5734:
	.word	.LANCHOR1
	.word	viewheight
	.word	.LANCHOR0
	.word	fullcolormap
	.word	R_FlushHTFuzz16
	.word	R_FlushQuadFuzz16
	.word	.LANCHOR2
	.word	R_FlushWholeFuzz16
.LBE1069:
	.cfi_endproc
.LFE180:
	.size	R_DrawFuzzColumn16_RoundedUV_LinearZ, .-R_DrawFuzzColumn16_RoundedUV_LinearZ
	.align	2
	.type	R_DrawTranslatedColumn16_RoundedUV_LinearZ, %function
R_DrawTranslatedColumn16_RoundedUV_LinearZ:
.LFB144:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5083:
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	mov	r2, r3
	.loc 3 126 0
	ldr	r6, .L5834
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 117 0
	str	r3, [sp, #8]
.LVL5084:
	.loc 3 126 0
	ldr	r3, [r6, #64]
	.loc 3 113 0
	mov	r10, r0
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL5085:
	.loc 3 126 0
	bgt	.L5827
	.loc 3 149 0
	ldmib	r0, {r5, r7}
.LVL5086:
	.loc 3 157 0
	subs	r3, r7, r5
.LVL5087:
	str	r3, [sp, #48]
	bmi	.L5736
	.loc 3 171 0
	ldr	r3, .L5834+4
.LVL5088:
	.loc 3 174 0
	ldr	r2, [r0, #60]
.LVL5089:
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	ldr	r2, [sp, #8]
	rsb	r3, r3, r5
	mla	r4, r2, r3, r4
.LVL5090:
	.loc 3 174 0
	bne	.L5828
.LVL5091:
.L5740:
	.loc 3 215 0
	ldr	r9, .L5834+8
	ldr	r3, [r9]
	cmp	r3, #4
	beq	.L5746
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5829
.LVL5092:
.L5747:
	.loc 3 224 0 is_stmt 1
	mov	ip, #1
	ldr	r2, .L5834+12
	.loc 3 230 0
	ldr	r0, .L5834+16
	.loc 3 224 0
	str	ip, [r2, #-1204]
	.loc 3 231 0
	ldr	r1, .L5834+20
	.loc 3 232 0
	ldr	r2, .L5834+24
	.loc 3 222 0
	ldr	r5, [r10, #4]
	.loc 3 232 0
	stmia	r6, {r0, r1, r2}
	mov	r2, #0
	.loc 3 233 0
	ldr	r7, .L5834+28
	.loc 3 221 0
	ldr	r8, [r10]
	.loc 3 223 0
	ldr	r3, [r10, #8]
	.loc 3 233 0
	add	ip, r7, r5, asl #3
	.loc 3 221 0
	str	r8, [r9, #12]
	.loc 3 222 0
	str	r5, [r9, #4]
	str	r5, [r9, #16]
	.loc 3 233 0
	str	ip, [sp, #52]
.LVL5093:
	.loc 3 223 0
	str	r3, [r9, #8]
	str	r3, [r9, #32]
.LVL5094:
.L5749:
.LBB1070:
	.loc 3 274 0
	ldr	r3, [r10, #40]
	.loc 3 259 0
	ldr	r0, [r10, #12]
	.loc 3 274 0
	mov	ip, r3
	str	r3, [sp, #24]
	.loc 3 260 0
	ldr	r3, [r10, #48]
	.loc 3 251 0
	ldr	r6, [r10, #32]
.LVL5095:
	.loc 3 260 0
	str	r3, [sp, #92]
	.loc 3 253 0
	ldr	r3, [r10, #52]
.LBE1070:
	.loc 3 245 0
	add	r2, r2, #1
.LBB1077:
	.loc 3 260 0
	ldr	r1, [r10, #44]
	.loc 3 259 0
	mov	r0, r0, asr #6
	.loc 3 253 0
	str	r3, [sp, #12]
.LVL5096:
	.loc 3 273 0
	ldr	r3, [r10, #36]
.LVL5097:
.LBE1077:
	.loc 3 245 0
	str	r2, [r9]
.LBB1078:
	.loc 3 275 0
	cmp	r6, ip
	.loc 3 259 0
	uxtb	r2, r0
	str	r2, [sp, #16]
.LVL5098:
	.loc 3 260 0
	str	r1, [sp, #88]
	.loc 3 273 0
	str	r3, [sp, #20]
.LVL5099:
	.loc 3 275 0
	moveq	r9, #0
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r9, [r10, #29]	@ zero_extendqisi2
.L5752:
.LVL5100:
	.loc 3 286 0 is_stmt 1
	ldr	r10, [r10, #24]
.LVL5101:
	cmp	r10, #128
	beq	.L5830
	.loc 3 294 0
	cmp	r10, #0
	bne	.L5757
.LVL5102:
	ldr	r2, [sp, #48]
	ldr	r3, .L5834+32
.LVL5103:
	add	fp, r2, #1
	ldr	r2, .L5834+36
	mov	r9, r9, lsr #2
.LVL5104:
	str	r2, [sp, #28]
	ldr	r2, .L5834+40
	add	fp, fp, r5
	str	r2, [sp, #32]
	and	r2, r8, #3
	str	r2, [sp, #36]
	ldr	r2, [sp, #52]
	.loc 3 297 0
	add	r9, r3, r9, asl #6
	add	r7, r2, #8
.LVL5105:
.L5759:
	ldr	r2, [sp, #36]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #32]
	mov	lr, r4, asr #16
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	ldr	ip, [sp, #20]
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	cmp	lr, #0
	add	r3, r2, r3, asl #2
	movle	r2, #0
	subgt	r2, lr, #1
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	ldr	r10, [r3, #-8]
	ldr	r3, [sp, #28]
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r8, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5106:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [r9, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	mov	r1, #126
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 300 0
	ldr	r2, [sp, #8]
	.loc 3 297 0
	ldrb	r3, [r10, r3]	@ zero_extendqisi2
	.loc 3 300 0
	add	r4, r4, r2
.LVL5107:
	.loc 3 297 0
	mov	r2, #128
	smlabb	r3, r2, r3, r1
	.loc 3 298 0
	add	r5, r5, #1
.LVL5108:
	.loc 3 297 0
	ldrh	r3, [r8, r3]
	.loc 3 296 0
	cmp	r5, fp
	.loc 3 297 0
	strh	r3, [r7, #-8]	@ movhi
	add	r7, r7, #8
.LVL5109:
	.loc 3 296 0
	bne	.L5759
.LVL5110:
.L5736:
.LBE1078:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5111:
.L5828:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5740
	.loc 3 178 0
	cmp	r5, #0
	beq	.L5741
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L5742
.LBB1079:
	.loc 3 181 0
	mvn	r9, r8
	uxth	r9, r9
	mov	r0, r9
.LVL5112:
	mov	r1, r2
.L5823:
.LBE1079:
.LBB1080:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL5113:
	.loc 3 190 0
	ldr	r3, [sp, #48]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r9
.LVL5114:
	.loc 3 189 0
	str	r5, [r10, #4]
.LVL5115:
	.loc 3 190 0
	str	r3, [sp, #48]
.LVL5116:
.L5741:
.LBE1080:
	.loc 3 194 0
	ldr	r3, .L5834+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r7, r3
	beq	.L5743
	.loc 3 195 0
	ldr	r3, [r10, #56]
	tst	r3, #4
	bne	.L5831
	.loc 3 201 0
	tst	r3, #8
	beq	.L5743
.LBB1081:
	.loc 3 203 0
	ldr	r1, [sp, #8]
	uxth	r0, r8
.L5824:
	bl	__aeabi_idiv
.LVL5117:
	.loc 3 205 0
	ldr	r3, [sp, #48]
	.loc 3 204 0
	rsb	r7, r0, r7
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r7, [r10, #8]
.LVL5118:
	.loc 3 205 0
	str	r3, [sp, #48]
.LVL5119:
.L5743:
.LBE1081:
	.loc 3 208 0
	ldr	r3, [sp, #48]
	cmp	r3, #0
	bgt	.L5740
	b	.L5736
.L5829:
	.loc 3 216 0
	ldr	r2, .L5834+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L5832
.LVL5120:
.L5746:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5121:
	.loc 3 219 0
	ldr	r3, [r9]
	cmp	r3, #0
	beq	.L5747
	ldr	r8, [r10]
.L5748:
	.loc 3 235 0
	ldr	r2, [r10, #4]
	.loc 3 238 0
	ldr	r0, [r9, #4]
	.loc 3 236 0
	ldr	r1, [r10, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r9, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L5834+8
	.loc 3 243 0
	ldr	r7, .L5834+28
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r9, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	ldr	ip, .L5834+8
	cmp	r1, r0
	.loc 3 243 0
	add	r3, r7, r3, asl #1
	.loc 3 235 0
	mov	r5, r2
	.loc 3 241 0
	strlt	r1, [ip, #8]
	ldr	r2, [r9]
	.loc 3 243 0
	str	r3, [sp, #52]
.LVL5122:
	b	.L5749
.LVL5123:
.L5757:
.LBB1082:
.LBB1071:
	.loc 3 303 0
	sub	r3, r10, #1
.LVL5124:
	.loc 3 304 0
	tst	r3, r10
	bne	.L5760
.LBB1072:
	.loc 3 305 0
	mov	r3, r3, asl #16
.LVL5125:
	mvn	r3, r3, lsr #16
	.loc 3 306 0
	ldr	r2, [sp, #48]
	.loc 3 305 0
	mvn	ip, r3, asl #16
.LVL5126:
	.loc 3 306 0
	sub	r2, r2, #1
	cmn	r2, #1
	beq	.L5833
	mov	r3, r2, lsr #1
	str	r3, [sp, #64]
	mov	r3, r3, asl #1
	str	r3, [sp, #68]
	add	r3, r3, #2
	add	r3, r3, r5
	mov	fp, r5
	str	r5, [sp, #76]
	mov	r10, r4
.LVL5127:
	mov	r5, ip
.LVL5128:
	ldr	r2, .L5834+32
	mov	r1, r9, lsr #2
.LVL5129:
	ldr	r0, .L5834+36
	str	r3, [sp, #56]
	.loc 3 307 0
	add	r3, r2, r1, asl #6
	str	r0, [sp, #28]
	str	r3, [sp, #40]
	ldr	r0, .L5834+40
	ldr	r3, [sp, #52]
	str	r0, [sp, #32]
	and	r0, r8, #3
	add	r8, r3, #16
.LVL5130:
	ldr	r3, [sp, #8]
	str	r2, [sp, #80]
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	str	r1, [sp, #84]
	str	r0, [sp, #36]
	str	r2, [sp, #44]
	str	r3, [sp, #60]
	str	r4, [sp, #72]
.LVL5131:
.L5764:
	ldr	r2, [sp, #36]
	and	r3, fp, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #32]
	and	r4, r10, r5
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	add	r1, sp, #96
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	add	r3, r1, r3, asl #2
	ldr	r7, [r3, #-8]
	ldr	ip, [sp, #20]
	ldr	r3, [sp, #28]
	subgt	r2, r2, #1
	ldr	r9, [r3]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	add	r3, r10, #65536
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5132:
	.loc 3 311 0
	ldr	r2, [sp, #36]
	add	r3, fp, #1
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #32]
	.loc 3 307 0
	mov	r4, r4, asr #8
	.loc 3 311 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	.loc 3 307 0
	uxtb	r4, r4
	.loc 3 311 0
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	.loc 3 307 0
	ldr	r2, [sp, #40]
	mov	ip, #126
	ldrb	r2, [r2, r4, asr #2]	@ zero_extendqisi2
	ldr	r1, [sp, #8]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	.loc 3 311 0
	add	r0, sp, #96
	add	r3, r0, r3, asl #2
	.loc 3 307 0
	mov	r0, #128
	add	r4, r1, r10
	ldr	r1, [sp, #12]
	.loc 3 311 0
	and	r4, r4, r5
	.loc 3 307 0
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	.loc 3 307 0
	ldrb	r1, [r7, r1]	@ zero_extendqisi2
	.loc 3 311 0
	ldr	r7, [r3, #-8]
	.loc 3 307 0
	smlabb	r1, r0, r1, ip
	.loc 3 311 0
	ldr	r3, [sp, #28]
	.loc 3 307 0
	ldrh	r1, [r9, r1]
	.loc 3 311 0
	ldr	ip, [sp, #20]
	ldr	r9, [r3]
	ldr	r3, [sp, #60]
	.loc 3 307 0
	strh	r1, [r8, #-16]	@ movhi
.LVL5133:
	.loc 3 311 0
	subgt	r2, r2, #1
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r3, r3, r10
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5134:
	mov	r4, r4, asr #8
	ldr	r3, [sp, #40]
	uxtb	r4, r4
	.loc 3 306 0
	ldr	r2, [sp, #56]
	.loc 3 311 0
	ldrb	r3, [r3, r4, asr #2]	@ zero_extendqisi2
	.loc 3 312 0
	add	fp, fp, #2
.LVL5135:
	.loc 3 311 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 306 0
	cmp	fp, r2
	.loc 3 311 0
	ldr	r2, [sp, #12]
	mov	r1, #126
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #44]
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	add	r10, r2, r10
.LVL5136:
	mov	r2, #128
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r9, r3]
	add	r8, r8, #16
.LVL5137:
	strh	r3, [r8, #-24]	@ movhi
	.loc 3 306 0
	bne	.L5764
	.loc 3 316 0
	ldr	r1, [sp, #48]
	mov	ip, r5
	ldr	r5, [sp, #76]
.LVL5138:
	tst	r1, #1
	ldr	r1, [sp, #68]
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #72]
	add	r5, r5, #2
	ldr	r2, [sp, #64]
	add	r5, r5, r1
	ldr	r1, [sp, #44]
	add	r4, r4, r3, asl #1
	mla	r4, r1, r2, r4
	add	r3, r2, #1
	ldr	r2, [sp, #52]
	add	r3, r2, r3, asl #4
	str	r3, [sp, #52]
	bne	.L5736
.LVL5139:
.L5780:
	.loc 3 317 0
	ldr	r3, [sp, #36]
	and	r5, r5, #3
	add	r8, r3, r5, asl #2
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #16]
	ldrb	r3, [r3, r8]	@ zero_extendqisi2
	and	r5, r4, ip
	cmp	r3, r2
	mov	r2, r5, asr #16
	movge	r3, #0
	movlt	r3, #1
	cmp	r2, #0
	movle	r2, #0
	add	r4, r4, #65536
	add	r1, sp, #96
	and	r4, r4, ip
	ldr	ip, [sp, #20]
.LVL5140:
	add	r3, r1, r3, asl #2
	subgt	r2, r2, #1
	ldr	r7, [r3, #-8]
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #24]
	ldrb	ip, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r8, [r3]
	ldrb	r2, [r2, r5, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r5, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL5141:
	ldr	r3, [sp, #80]
	mov	r9, r5, asl #16
	add	r9, r3, r9, lsr #26
	ldr	r3, [sp, #84]
	ldr	r2, [sp, #12]
	ldrb	r3, [r9, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #52]
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	add	r8, r8, r3, asl #7
	ldrh	r3, [r8, #126]
	strh	r3, [r2]	@ movhi
	b	.L5736
.LVL5142:
.L5827:
.LBE1072:
.LBE1071:
.LBE1082:
	.loc 3 127 0
	ldr	r2, [r6, #48]
.LVL5143:
	mov	r1, #1
	mov	r0, #2
.LVL5144:
	bl	R_GetDrawColumnFunc
.LVL5145:
	mov	r3, r0
	mov	r0, r10
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5146:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5147:
.L5760:
	.cfi_restore_state
.LBB1083:
.LBB1075:
.LBB1073:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r10, r10, asl #16
.LVL5148:
	.loc 3 325 0
	blt	.L5769
	.loc 3 328 0
	cmp	r4, r10
	blt	.L5768
.L5770:
	rsb	r4, r10, r4
.LVL5149:
	cmp	r10, r4
	ble	.L5770
.L5768:
	.loc 3 332 0
	add	fp, r4, #65536
.LVL5150:
	.loc 3 333 0
	cmp	fp, r10
	blt	.L5771
.L5772:
	rsb	fp, r10, fp
.LVL5151:
	cmp	fp, r10
	bge	.L5772
.L5771:
	ldr	r2, [sp, #48]
	.loc 3 345 0
	ldr	r3, .L5834+32
	add	r2, r2, #1
	add	r2, r2, r5
	str	r2, [sp, #28]
	ldr	r2, [sp, #52]
	mov	r9, r9, lsr #2
.LVL5152:
	add	r7, r2, #8
	add	r3, r3, r9, asl #6
	and	r2, r8, #3
	str	r2, [sp, #32]
	str	r3, [sp, #36]
	b	.L5773
.LVL5153:
.L5777:
	ldr	r2, .L5834+40
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, .L5834+36
	.loc 3 346 0
	add	r5, r5, #1
.LVL5154:
	.loc 3 345 0
	ldr	r8, [r2]
	ldr	r2, [sp, #16]
	add	r7, r7, #8
.LVL5155:
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	cmp	lr, #0
	ldr	r9, [r3, #-8]
	movle	r3, #0
	subgt	r3, lr, #1
	ldrb	r1, [r6, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldrb	r2, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r3, [r6, fp, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5156:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 348 0
	ldr	r2, [sp, #8]
	.loc 3 345 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r2
.LVL5157:
	.loc 3 350 0
	add	fp, fp, r2
.LVL5158:
	.loc 3 345 0
	ldr	r2, [sp, #12]
	.loc 3 348 0
	cmp	r4, r10
	.loc 3 345 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 348 0
	rsbge	r4, r10, r4
.LVL5159:
	.loc 3 345 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	.loc 3 350 0
	cmp	fp, r10
	.loc 3 345 0
	add	r8, r8, r3, asl #7
	ldrh	r3, [r8, #126]
	.loc 3 350 0
	rsbge	fp, r10, fp
.LVL5160:
	.loc 3 345 0
	strh	r3, [r7, #-16]	@ movhi
.LVL5161:
.L5773:
	ldr	r2, [sp, #32]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	.loc 3 339 0
	ldr	r2, [sp, #28]
	.loc 3 345 0
	mov	lr, r4, asr #16
	.loc 3 339 0
	cmp	r5, r2
	bne	.L5777
.LBE1073:
.LBE1075:
.LBE1083:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5162:
.L5769:
	.cfi_restore_state
.LBB1084:
.LBB1076:
.LBB1074:
	.loc 3 326 0 discriminator 1
	adds	r4, r10, r4
.LVL5163:
	bpl	.L5768
.LVL5164:
	.loc 3 326 0 is_stmt 0
	adds	r4, r10, r4
.LVL5165:
	bmi	.L5769
	b	.L5768
.LVL5166:
.L5832:
.LBE1074:
.LBE1076:
.LBE1084:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r9, #12]
	ldr	r8, [r10]
.LVL5167:
	add	r2, r3, r2
	cmp	r2, r8
	bne	.L5746
	b	.L5748
.LVL5168:
.L5830:
	ldr	r2, [sp, #48]
	ldr	r3, .L5834+32
.LVL5169:
	add	fp, r2, #1
	ldr	r2, .L5834+36
	mov	r9, r9, lsr #2
.LVL5170:
	str	r2, [sp, #28]
	ldr	r2, .L5834+40
.LBB1085:
	.loc 3 289 0
	str	r10, [sp, #44]
	str	r2, [sp, #32]
	add	r2, fp, r5
	str	r2, [sp, #36]
	and	r2, r8, #3
	str	r2, [sp, #40]
	ldr	r2, [sp, #52]
	add	r9, r3, r9, asl #6
	add	r7, r2, #8
.LVL5171:
.L5755:
	ldr	r2, [sp, #40]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #32]
	bic	r8, r4, #-16777216
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	bic	r8, r8, #8388608
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	ldr	fp, [r3, #-8]
	ldr	r3, [sp, #28]
	movs	r2, r8, asr #16
	ldr	ip, [sp, #20]
	ldr	r10, [r3]
	subne	r2, r2, #1
	add	r3, r4, #65536
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r8, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	bic	r3, r3, #-16777216
	bic	r3, r3, #8388608
	ldrb	r2, [r2, r8, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r8, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5172:
	mov	r1, #126
	mov	r8, r8, asr #8
	uxtb	r8, r8
	.loc 3 288 0
	ldr	r2, [sp, #36]
	.loc 3 289 0
	ldrb	r3, [r9, r8, asr #2]	@ zero_extendqisi2
	.loc 3 290 0
	add	r5, r5, #1
.LVL5173:
	.loc 3 289 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	cmp	r5, r2
	.loc 3 289 0
	ldr	r2, [sp, #12]
	add	r7, r7, #8
.LVL5174:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 292 0
	ldr	r2, [sp, #8]
	.loc 3 289 0
	ldrb	r3, [fp, r3]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r2
.LVL5175:
	.loc 3 289 0
	ldrh	r2, [sp, #44]
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r10, r3]
	strh	r3, [r7, #-16]	@ movhi
	.loc 3 288 0
	bne	.L5755
.LBE1085:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5176:
.L5831:
	.cfi_restore_state
.LBB1086:
	.loc 3 197 0
	mvn	r0, r8
	ldr	r1, [sp, #8]
	uxth	r0, r0
	b	.L5824
.LVL5177:
.L5742:
.LBE1086:
	.loc 3 186 0
	tst	r3, #2
	beq	.L5741
.LBB1087:
	.loc 3 188 0
	uxth	r9, r8
	mov	r0, r9
.LVL5178:
	ldr	r1, [sp, #8]
	b	.L5823
.LVL5179:
.L5833:
	and	r3, r8, #3
	str	r3, [sp, #36]
	mov	r3, r9, lsr #2
	str	r3, [sp, #84]
	ldr	r3, .L5834+36
	str	r3, [sp, #28]
	ldr	r3, .L5834+40
	str	r3, [sp, #32]
	ldr	r3, .L5834+32
	str	r3, [sp, #80]
	b	.L5780
.L5835:
	.align	2
.L5834:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushWhole16
	.word	R_FlushHT16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	filter_roundedUVMap
	.word	V_Palette16
	.word	filter_ditherMatrix
	.word	viewheight
.LBE1087:
	.cfi_endproc
.LFE144:
	.size	R_DrawTranslatedColumn16_RoundedUV_LinearZ, .-R_DrawTranslatedColumn16_RoundedUV_LinearZ
	.align	2
	.type	R_DrawTLColumn16_RoundedUV_LinearZ, %function
R_DrawTLColumn16_RoundedUV_LinearZ:
.LFB108:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5180:
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	mov	r2, r3
	.loc 3 126 0
	ldr	r6, .L5934
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 117 0
	str	r3, [sp, #12]
.LVL5181:
	.loc 3 126 0
	ldr	r3, [r6, #64]
	.loc 3 113 0
	mov	r10, r0
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL5182:
	.loc 3 126 0
	bgt	.L5927
	.loc 3 149 0
	ldmib	r0, {r5, r7}
.LVL5183:
	.loc 3 157 0
	subs	r3, r7, r5
.LVL5184:
	str	r3, [sp, #48]
	bmi	.L5836
	.loc 3 171 0
	ldr	r3, .L5934+4
.LVL5185:
	.loc 3 174 0
	ldr	r2, [r0, #60]
.LVL5186:
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	ldr	r2, [sp, #12]
	rsb	r3, r3, r5
	mla	r4, r2, r3, r4
.LVL5187:
	.loc 3 174 0
	bne	.L5928
.LVL5188:
.L5840:
	.loc 3 215 0
	ldr	r8, .L5934+8
.LVL5189:
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L5846
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5929
.L5847:
	.loc 3 224 0 is_stmt 1
	mov	ip, #2
	.loc 3 226 0
	ldr	r3, .L5934+12
	.loc 3 224 0
	ldr	r2, .L5934+16
	.loc 3 226 0
	ldr	r1, [r3]
	.loc 3 224 0
	str	ip, [r2, #-1204]
	.loc 3 230 0
	ldr	r0, .L5934+20
	.loc 3 232 0
	ldr	r2, .L5934+24
	.loc 3 226 0
	str	r1, [r8, #1008]
	.loc 3 231 0
	ldr	r1, .L5934+28
	.loc 3 222 0
	ldr	r5, [r10, #4]
	.loc 3 232 0
	stmia	r6, {r0, r1, r2}
	mov	r2, #0
	.loc 3 233 0
	ldr	r7, .L5934+32
	.loc 3 221 0
	ldr	r9, [r10]
	.loc 3 223 0
	ldr	r3, [r10, #8]
	.loc 3 233 0
	add	ip, r7, r5, asl #3
	.loc 3 221 0
	str	r9, [r8, #12]
	.loc 3 222 0
	str	r5, [r8, #4]
	str	r5, [r8, #16]
	.loc 3 233 0
	str	ip, [sp, #52]
.LVL5190:
	.loc 3 223 0
	str	r3, [r8, #8]
	str	r3, [r8, #32]
.LVL5191:
.L5849:
.LBB1088:
	.loc 3 274 0
	ldr	r3, [r10, #40]
	.loc 3 259 0
	ldr	r0, [r10, #12]
	.loc 3 274 0
	mov	ip, r3
	str	r3, [sp, #24]
	.loc 3 260 0
	ldr	r3, [r10, #48]
	.loc 3 251 0
	ldr	r6, [r10, #32]
.LVL5192:
.LBE1088:
	.loc 3 245 0
	add	r2, r2, #1
.LBB1095:
	.loc 3 260 0
	ldr	r1, [r10, #44]
	.loc 3 259 0
	mov	r0, r0, asr #6
	.loc 3 260 0
	str	r3, [sp, #92]
	.loc 3 273 0
	ldr	r3, [r10, #36]
.LBE1095:
	.loc 3 245 0
	str	r2, [r8]
.LBB1096:
	.loc 3 275 0
	cmp	r6, ip
	.loc 3 259 0
	uxtb	r2, r0
	str	r2, [sp, #16]
.LVL5193:
	.loc 3 260 0
	str	r1, [sp, #88]
	.loc 3 273 0
	str	r3, [sp, #20]
.LVL5194:
	.loc 3 275 0
	moveq	r8, #0
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r8, [r10, #29]	@ zero_extendqisi2
.L5852:
.LVL5195:
	.loc 3 286 0 is_stmt 1
	ldr	r10, [r10, #24]
.LVL5196:
	cmp	r10, #128
	beq	.L5930
	.loc 3 294 0
	cmp	r10, #0
	bne	.L5857
.LVL5197:
	ldr	r2, [sp, #48]
.LVL5198:
	ldr	r3, .L5934+36
.LVL5199:
	add	fp, r2, #1
	ldr	r2, .L5934+40
	mov	r8, r8, lsr #2
.LVL5200:
	str	r2, [sp, #28]
	ldr	r2, .L5934+44
	.loc 3 297 0
	add	r3, r3, r8, asl #6
	str	r2, [sp, #32]
	ldr	r2, [sp, #52]
	add	fp, fp, r5
	and	r9, r9, #3
.LVL5201:
	add	r7, r2, #8
	str	r3, [sp, #36]
.LVL5202:
.L5859:
	ldr	r2, [sp, #32]
	and	r3, r5, #3
	add	r3, r9, r3, asl #2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	mov	lr, r4, asr #16
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	cmp	lr, #0
	add	r3, r2, r3, asl #2
	movle	r2, #0
	subgt	r2, lr, #1
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldr	ip, [sp, #20]
	ldr	r2, [sp, #24]
	ldr	r10, [r3, #-8]
	ldr	r3, [sp, #28]
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r8, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5203:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 300 0
	ldr	r2, [sp, #12]
	.loc 3 297 0
	mov	r1, #126
	.loc 3 300 0
	add	r4, r4, r2
.LVL5204:
	.loc 3 297 0
	mov	r2, #128
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 298 0
	add	r5, r5, #1
.LVL5205:
	.loc 3 297 0
	ldrb	r3, [r10, r3]	@ zero_extendqisi2
	.loc 3 296 0
	cmp	r5, fp
	.loc 3 297 0
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r8, r3]
	add	r7, r7, #8
.LVL5206:
	strh	r3, [r7, #-16]	@ movhi
	.loc 3 296 0
	bne	.L5859
.LVL5207:
.L5836:
.LBE1096:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5208:
.L5928:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5840
	.loc 3 178 0
	cmp	r5, #0
	beq	.L5841
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L5842
.LBB1097:
	.loc 3 181 0
	mvn	r9, r8
	uxth	r9, r9
	mov	r0, r9
.LVL5209:
	mov	r1, r2
.L5923:
.LBE1097:
.LBB1098:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL5210:
	.loc 3 190 0
	ldr	r3, [sp, #48]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r9
.LVL5211:
	.loc 3 189 0
	str	r5, [r10, #4]
.LVL5212:
	.loc 3 190 0
	str	r3, [sp, #48]
.LVL5213:
.L5841:
.LBE1098:
	.loc 3 194 0
	ldr	r3, .L5934+48
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r7, r3
	beq	.L5843
	.loc 3 195 0
	ldr	r3, [r10, #56]
	tst	r3, #4
	bne	.L5931
	.loc 3 201 0
	tst	r3, #8
	beq	.L5843
.LBB1099:
	.loc 3 203 0
	ldr	r1, [sp, #12]
	uxth	r0, r8
.L5924:
	bl	__aeabi_idiv
.LVL5214:
	.loc 3 205 0
	ldr	r3, [sp, #48]
	.loc 3 204 0
	rsb	r7, r0, r7
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r7, [r10, #8]
.LVL5215:
	.loc 3 205 0
	str	r3, [sp, #48]
.LVL5216:
.L5843:
.LBE1099:
	.loc 3 208 0
	ldr	r3, [sp, #48]
	cmp	r3, #0
	bgt	.L5840
	b	.L5836
.LVL5217:
.L5929:
	.loc 3 216 0
	ldr	r2, .L5934+16
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L5932
.L5846:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5218:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L5847
	ldr	r9, [r10]
.L5848:
	.loc 3 235 0
	ldr	r2, [r10, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r10, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L5934+8
	.loc 3 243 0
	ldr	r7, .L5934+32
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	ldr	ip, .L5934+8
	cmp	r1, r0
	.loc 3 243 0
	add	r3, r7, r3, asl #1
	.loc 3 235 0
	mov	r5, r2
	.loc 3 241 0
	strlt	r1, [ip, #8]
	ldr	r2, [r8]
	.loc 3 243 0
	str	r3, [sp, #52]
.LVL5219:
	b	.L5849
.LVL5220:
.L5857:
.LBB1100:
.LBB1089:
	.loc 3 303 0
	sub	r3, r10, #1
.LVL5221:
	.loc 3 304 0
	tst	r3, r10
	bne	.L5860
.LBB1090:
	.loc 3 305 0
	mov	r3, r3, asl #16
.LVL5222:
	mvn	r3, r3, lsr #16
	.loc 3 306 0
	ldr	r2, [sp, #48]
.LVL5223:
	.loc 3 305 0
	mvn	ip, r3, asl #16
.LVL5224:
	.loc 3 306 0
	sub	r2, r2, #1
	cmn	r2, #1
	beq	.L5933
	mov	r3, r2, lsr #1
	str	r3, [sp, #64]
	mov	r3, r3, asl #1
	str	r3, [sp, #68]
	add	r3, r3, #2
	add	r3, r3, r5
	mov	fp, r5
	str	r5, [sp, #76]
	mov	r10, r4
.LVL5225:
	mov	r5, ip
.LVL5226:
	ldr	r2, .L5934+36
	mov	r1, r8, lsr #2
.LVL5227:
	str	r3, [sp, #56]
	.loc 3 307 0
	add	r3, r2, r1, asl #6
	ldr	r0, .L5934+40
	str	r3, [sp, #40]
	ldr	r3, [sp, #52]
	str	r0, [sp, #28]
	add	r8, r3, #16
.LVL5228:
	ldr	r0, .L5934+44
	ldr	r3, [sp, #12]
	str	r2, [sp, #80]
	str	r0, [sp, #32]
	mov	r2, r3, asl #1
	and	r0, r9, #3
	add	r3, r3, #65536
	str	r1, [sp, #84]
	str	r0, [sp, #36]
	str	r2, [sp, #44]
	str	r3, [sp, #60]
	str	r4, [sp, #72]
.LVL5229:
.L5864:
	ldr	r2, [sp, #36]
	and	r3, fp, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #32]
	and	r4, r10, r5
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	add	r1, sp, #96
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	add	r3, r1, r3, asl #2
	ldr	r7, [r3, #-8]
	ldr	ip, [sp, #20]
	ldr	r3, [sp, #28]
	subgt	r2, r2, #1
	ldr	r9, [r3]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	add	r3, r10, #65536
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5230:
	.loc 3 311 0
	ldr	r2, [sp, #36]
	add	r3, fp, #1
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #32]
	.loc 3 307 0
	mov	r4, r4, asr #8
	.loc 3 311 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	.loc 3 307 0
	uxtb	r4, r4
	.loc 3 311 0
	cmp	r3, r2
	.loc 3 307 0
	ldr	r2, [sp, #40]
	mov	ip, #126
	ldrb	r2, [r2, r4, asr #2]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	mov	r0, #128
	.loc 3 311 0
	movge	r3, #0
	movlt	r3, #1
	add	r4, r1, r10
	and	r4, r4, r5
	.loc 3 307 0
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	.loc 3 307 0
	smlabb	r1, r0, r1, ip
	.loc 3 311 0
	add	r0, sp, #96
	add	r3, r0, r3, asl #2
	ldr	r7, [r3, #-8]
	ldr	r3, [sp, #28]
	.loc 3 307 0
	ldrh	r1, [r9, r1]
	.loc 3 311 0
	ldr	ip, [sp, #20]
	ldr	r9, [r3]
	ldr	r3, [sp, #60]
	.loc 3 307 0
	strh	r1, [r8, #-16]	@ movhi
.LVL5231:
	.loc 3 311 0
	subgt	r2, r2, #1
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r3, r3, r10
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5232:
	.loc 3 306 0
	ldr	r2, [sp, #56]
	.loc 3 312 0
	add	fp, fp, #2
.LVL5233:
	.loc 3 306 0
	cmp	fp, r2
	ldr	r2, [sp, #44]
	.loc 3 311 0
	mov	r1, #126
	add	r10, r2, r10
.LVL5234:
	mov	r2, #128
	mov	r4, r4, asr #8
	ldr	r3, [sp, #40]
	uxtb	r4, r4
	ldrb	r3, [r3, r4, asr #2]	@ zero_extendqisi2
	add	r8, r8, #16
.LVL5235:
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r9, r3]
	strh	r3, [r8, #-24]	@ movhi
	.loc 3 306 0
	bne	.L5864
	.loc 3 316 0
	ldr	r1, [sp, #48]
	mov	ip, r5
	ldr	r5, [sp, #76]
.LVL5236:
	tst	r1, #1
	ldr	r1, [sp, #68]
	ldr	r3, [sp, #12]
	ldr	r4, [sp, #72]
	add	r5, r5, #2
	ldr	r2, [sp, #64]
	add	r5, r5, r1
	ldr	r1, [sp, #44]
	add	r4, r4, r3, asl #1
	mla	r4, r1, r2, r4
	add	r3, r2, #1
	ldr	r2, [sp, #52]
	add	r3, r2, r3, asl #4
	str	r3, [sp, #52]
	bne	.L5836
.LVL5237:
.L5880:
	.loc 3 317 0
	ldr	r3, [sp, #36]
	and	r5, r5, #3
	add	r5, r3, r5, asl #2
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #16]
	ldrb	r3, [r3, r5]	@ zero_extendqisi2
	and	r5, r4, ip
	cmp	r3, r2
	mov	r2, r5, asr #16
	movge	r3, #0
	movlt	r3, #1
	cmp	r2, #0
	movle	r2, #0
	add	r4, r4, #65536
	add	r1, sp, #96
	and	r4, r4, ip
	ldr	ip, [sp, #20]
.LVL5238:
	add	r3, r1, r3, asl #2
	subgt	r2, r2, #1
	ldr	r7, [r3, #-8]
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #24]
	ldrb	ip, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r9, [r3]
	ldrb	r2, [r2, r5, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r5, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL5239:
	ldr	r3, [sp, #80]
	mov	r8, r5, asl #16
	add	r8, r3, r8, lsr #26
	ldr	r3, [sp, #84]
	ldr	r2, [sp, #52]
	ldrb	r3, [r8, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	add	r9, r9, r3, asl #7
	ldrh	r3, [r9, #126]
	strh	r3, [r2]	@ movhi
	b	.L5836
.LVL5240:
.L5927:
.LBE1090:
.LBE1089:
.LBE1100:
	.loc 3 127 0
	mov	r0, #1
.LVL5241:
	ldr	r2, [r6, #48]
.LVL5242:
	mov	r1, r0
	bl	R_GetDrawColumnFunc
.LVL5243:
	mov	r3, r0
	mov	r0, r10
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5244:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5245:
.L5860:
	.cfi_restore_state
.LBB1101:
.LBB1093:
.LBB1091:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r10, r10, asl #16
.LVL5246:
	.loc 3 325 0
	blt	.L5869
	.loc 3 328 0
	cmp	r4, r10
	blt	.L5868
.L5870:
	rsb	r4, r10, r4
.LVL5247:
	cmp	r10, r4
	ble	.L5870
.L5868:
	.loc 3 332 0
	add	fp, r4, #65536
.LVL5248:
	.loc 3 333 0
	cmp	fp, r10
	blt	.L5871
.L5872:
	rsb	fp, r10, fp
.LVL5249:
	cmp	fp, r10
	bge	.L5872
.L5871:
	ldr	r2, [sp, #48]
.LVL5250:
	.loc 3 345 0
	ldr	r3, .L5934+36
	add	r2, r2, #1
	add	r2, r2, r5
	str	r2, [sp, #28]
	ldr	r2, [sp, #52]
	mov	r8, r8, lsr #2
.LVL5251:
	add	r7, r2, #8
	add	r3, r3, r8, asl #6
	and	r2, r9, #3
	str	r2, [sp, #32]
	str	r3, [sp, #36]
	b	.L5873
.LVL5252:
.L5877:
	ldr	r2, .L5934+44
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, .L5934+40
	.loc 3 346 0
	add	r5, r5, #1
.LVL5253:
	.loc 3 345 0
	ldr	r8, [r2]
	ldr	r2, [sp, #16]
	add	r7, r7, #8
.LVL5254:
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	cmp	lr, #0
	ldr	r9, [r3, #-8]
	movle	r3, #0
	subgt	r3, lr, #1
	ldrb	r1, [r6, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldrb	r2, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r3, [r6, fp, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5255:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 348 0
	ldr	r2, [sp, #12]
	.loc 3 345 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r2
.LVL5256:
	.loc 3 345 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	.loc 3 350 0
	add	fp, fp, r2
.LVL5257:
	.loc 3 345 0
	add	r8, r8, r3, asl #7
	.loc 3 348 0
	cmp	r4, r10
	.loc 3 345 0
	ldrh	r3, [r8, #126]
	.loc 3 348 0
	rsbge	r4, r10, r4
.LVL5258:
	.loc 3 350 0
	cmp	fp, r10
	.loc 3 345 0
	strh	r3, [r7, #-16]	@ movhi
	.loc 3 350 0
	rsbge	fp, r10, fp
.LVL5259:
.L5873:
	.loc 3 345 0
	ldr	r2, [sp, #32]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	.loc 3 339 0
	ldr	r2, [sp, #28]
	.loc 3 345 0
	mov	lr, r4, asr #16
	.loc 3 339 0
	cmp	r5, r2
	bne	.L5877
.LBE1091:
.LBE1093:
.LBE1101:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5260:
.L5869:
	.cfi_restore_state
.LBB1102:
.LBB1094:
.LBB1092:
	.loc 3 326 0 discriminator 1
	adds	r4, r10, r4
.LVL5261:
	bpl	.L5868
.LVL5262:
	.loc 3 326 0 is_stmt 0
	adds	r4, r10, r4
.LVL5263:
	bmi	.L5869
	b	.L5868
.LVL5264:
.L5932:
.LBE1092:
.LBE1094:
.LBE1102:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r9, [r10]
	add	r2, r3, r2
	cmp	r2, r9
	bne	.L5846
	b	.L5848
.LVL5265:
.L5930:
	ldr	r2, [sp, #48]
.LVL5266:
	ldr	r3, .L5934+36
.LVL5267:
	add	fp, r2, #1
	ldr	r2, .L5934+40
	mov	r8, r8, lsr #2
.LVL5268:
	str	r2, [sp, #28]
	ldr	r2, .L5934+44
.LBB1103:
	.loc 3 289 0
	str	r10, [sp, #44]
	str	r2, [sp, #32]
	add	r2, fp, r5
	str	r2, [sp, #36]
	and	r2, r9, #3
	str	r2, [sp, #40]
	ldr	r2, [sp, #52]
	add	r8, r3, r8, asl #6
	add	r7, r2, #8
.LVL5269:
.L5855:
	ldr	r2, [sp, #40]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #32]
	bic	r9, r4, #-16777216
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	bic	r9, r9, #8388608
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	ldr	fp, [r3, #-8]
	ldr	r3, [sp, #28]
	movs	r2, r9, asr #16
	ldr	ip, [sp, #20]
	ldr	r10, [r3]
	subne	r2, r2, #1
	add	r3, r4, #65536
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r9, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	bic	r3, r3, #-16777216
	bic	r3, r3, #8388608
	ldrb	r2, [r2, r9, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r9, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5270:
	mov	r1, #126
	mov	r9, r9, asr #8
	uxtb	r9, r9
	.loc 3 288 0
	ldr	r2, [sp, #36]
	.loc 3 289 0
	ldrb	r3, [r8, r9, asr #2]	@ zero_extendqisi2
	.loc 3 290 0
	add	r5, r5, #1
.LVL5271:
	.loc 3 289 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	cmp	r5, r2
	.loc 3 292 0
	ldr	r2, [sp, #12]
	.loc 3 289 0
	ldrb	r3, [fp, r3]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r2
.LVL5272:
	.loc 3 289 0
	ldrh	r2, [sp, #44]
	add	r7, r7, #8
.LVL5273:
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r10, r3]
	strh	r3, [r7, #-16]	@ movhi
	.loc 3 288 0
	bne	.L5855
.LBE1103:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5274:
.L5931:
	.cfi_restore_state
.LBB1104:
	.loc 3 197 0
	mvn	r0, r8
	ldr	r1, [sp, #12]
	uxth	r0, r0
	b	.L5924
.LVL5275:
.L5842:
.LBE1104:
	.loc 3 186 0
	tst	r3, #2
	beq	.L5841
.LBB1105:
	.loc 3 188 0
	uxth	r9, r8
	mov	r0, r9
.LVL5276:
	ldr	r1, [sp, #12]
	b	.L5923
.LVL5277:
.L5933:
	and	r3, r9, #3
	str	r3, [sp, #36]
	mov	r3, r8, lsr #2
	str	r3, [sp, #84]
	ldr	r3, .L5934+40
	str	r3, [sp, #28]
	ldr	r3, .L5934+44
	str	r3, [sp, #32]
	ldr	r3, .L5934+36
	str	r3, [sp, #80]
	b	.L5880
.L5935:
	.align	2
.L5934:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushWholeTL16
	.word	R_FlushQuadTL16
	.word	R_FlushHTTL16
	.word	.LANCHOR0+1220
	.word	filter_roundedUVMap
	.word	V_Palette16
	.word	filter_ditherMatrix
	.word	viewheight
.LBE1105:
	.cfi_endproc
.LFE108:
	.size	R_DrawTLColumn16_RoundedUV_LinearZ, .-R_DrawTLColumn16_RoundedUV_LinearZ
	.align	2
	.type	R_DrawColumn16_RoundedUV_LinearZ, %function
R_DrawColumn16_RoundedUV_LinearZ:
.LFB72:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5278:
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	mov	r2, r3
	.loc 3 126 0
	ldr	r6, .L6034
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 117 0
	str	r3, [sp, #12]
.LVL5279:
	.loc 3 126 0
	ldr	r3, [r6, #64]
	.loc 3 113 0
	mov	r10, r0
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 121 0
	ldr	r8, [r0, #28]
.LVL5280:
	.loc 3 126 0
	bgt	.L6027
	.loc 3 149 0
	ldmib	r0, {r5, r7}
.LVL5281:
	.loc 3 157 0
	subs	r3, r7, r5
.LVL5282:
	str	r3, [sp, #48]
	bmi	.L5936
	.loc 3 171 0
	ldr	r3, .L6034+4
.LVL5283:
	.loc 3 174 0
	ldr	r2, [r0, #60]
.LVL5284:
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	ldr	r2, [sp, #12]
	rsb	r3, r3, r5
	mla	r4, r2, r3, r4
.LVL5285:
	.loc 3 174 0
	bne	.L6028
.LVL5286:
.L5940:
	.loc 3 215 0
	ldr	r8, .L6034+8
.LVL5287:
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L5946
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L6029
.L5947:
	.loc 3 224 0 is_stmt 1
	mov	ip, #1
	ldr	r2, .L6034+12
	.loc 3 230 0
	ldr	r0, .L6034+16
	.loc 3 224 0
	str	ip, [r2, #-1204]
	.loc 3 231 0
	ldr	r1, .L6034+20
	.loc 3 232 0
	ldr	r2, .L6034+24
	.loc 3 222 0
	ldr	r5, [r10, #4]
	.loc 3 232 0
	stmia	r6, {r0, r1, r2}
	mov	r2, #0
	.loc 3 233 0
	ldr	r7, .L6034+28
	.loc 3 221 0
	ldr	r9, [r10]
	.loc 3 223 0
	ldr	r3, [r10, #8]
	.loc 3 233 0
	add	ip, r7, r5, asl #3
	.loc 3 221 0
	str	r9, [r8, #12]
	.loc 3 222 0
	str	r5, [r8, #4]
	str	r5, [r8, #16]
	.loc 3 233 0
	str	ip, [sp, #52]
.LVL5288:
	.loc 3 223 0
	str	r3, [r8, #8]
	str	r3, [r8, #32]
.LVL5289:
.L5949:
.LBB1106:
	.loc 3 274 0
	ldr	r3, [r10, #40]
	.loc 3 259 0
	ldr	r0, [r10, #12]
	.loc 3 274 0
	mov	ip, r3
	str	r3, [sp, #24]
	.loc 3 260 0
	ldr	r3, [r10, #48]
	.loc 3 251 0
	ldr	r6, [r10, #32]
.LVL5290:
.LBE1106:
	.loc 3 245 0
	add	r2, r2, #1
.LBB1113:
	.loc 3 260 0
	ldr	r1, [r10, #44]
	.loc 3 259 0
	mov	r0, r0, asr #6
	.loc 3 260 0
	str	r3, [sp, #92]
	.loc 3 273 0
	ldr	r3, [r10, #36]
.LBE1113:
	.loc 3 245 0
	str	r2, [r8]
.LBB1114:
	.loc 3 275 0
	cmp	r6, ip
	.loc 3 259 0
	uxtb	r2, r0
	str	r2, [sp, #16]
.LVL5291:
	.loc 3 260 0
	str	r1, [sp, #88]
	.loc 3 273 0
	str	r3, [sp, #20]
.LVL5292:
	.loc 3 275 0
	moveq	r8, #0
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r8, [r10, #29]	@ zero_extendqisi2
.L5952:
.LVL5293:
	.loc 3 286 0 is_stmt 1
	ldr	r10, [r10, #24]
.LVL5294:
	cmp	r10, #128
	beq	.L6030
	.loc 3 294 0
	cmp	r10, #0
	bne	.L5957
.LVL5295:
	ldr	r2, [sp, #48]
.LVL5296:
	ldr	r3, .L6034+32
.LVL5297:
	add	fp, r2, #1
	ldr	r2, .L6034+36
	mov	r8, r8, lsr #2
.LVL5298:
	str	r2, [sp, #32]
	ldr	r2, .L6034+40
	.loc 3 297 0
	add	r3, r3, r8, asl #6
	str	r2, [sp, #28]
	ldr	r2, [sp, #52]
	add	fp, fp, r5
	and	r9, r9, #3
.LVL5299:
	add	r7, r2, #8
	str	r3, [sp, #36]
.LVL5300:
.L5959:
	ldr	r2, [sp, #28]
	and	r3, r5, #3
	add	r3, r9, r3, asl #2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	mov	lr, r4, asr #16
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	cmp	lr, #0
	add	r3, r2, r3, asl #2
	movle	r2, #0
	subgt	r2, lr, #1
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldr	ip, [sp, #20]
	ldr	r2, [sp, #24]
	ldr	r10, [r3, #-8]
	ldr	r3, [sp, #32]
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	r8, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5301:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 300 0
	ldr	r2, [sp, #12]
	.loc 3 297 0
	mov	r1, #126
	.loc 3 300 0
	add	r4, r4, r2
.LVL5302:
	.loc 3 297 0
	mov	r2, #128
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 298 0
	add	r5, r5, #1
.LVL5303:
	.loc 3 297 0
	ldrb	r3, [r10, r3]	@ zero_extendqisi2
	.loc 3 296 0
	cmp	r5, fp
	.loc 3 297 0
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r8, r3]
	add	r7, r7, #8
.LVL5304:
	strh	r3, [r7, #-16]	@ movhi
	.loc 3 296 0
	bne	.L5959
.LVL5305:
.L5936:
.LBE1114:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5306:
.L6028:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L5940
	.loc 3 178 0
	cmp	r5, #0
	beq	.L5941
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L5942
.LBB1115:
	.loc 3 181 0
	mvn	r9, r8
	uxth	r9, r9
	mov	r0, r9
.LVL5307:
	mov	r1, r2
.L6023:
.LBE1115:
.LBB1116:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL5308:
	.loc 3 190 0
	ldr	r3, [sp, #48]
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, r9
.LVL5309:
	.loc 3 189 0
	str	r5, [r10, #4]
.LVL5310:
	.loc 3 190 0
	str	r3, [sp, #48]
.LVL5311:
.L5941:
.LBE1116:
	.loc 3 194 0
	ldr	r3, .L6034+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r7, r3
	beq	.L5943
	.loc 3 195 0
	ldr	r3, [r10, #56]
	tst	r3, #4
	bne	.L6031
	.loc 3 201 0
	tst	r3, #8
	beq	.L5943
.LBB1117:
	.loc 3 203 0
	ldr	r1, [sp, #12]
	uxth	r0, r8
.L6024:
	bl	__aeabi_idiv
.LVL5312:
	.loc 3 205 0
	ldr	r3, [sp, #48]
	.loc 3 204 0
	rsb	r7, r0, r7
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r7, [r10, #8]
.LVL5313:
	.loc 3 205 0
	str	r3, [sp, #48]
.LVL5314:
.L5943:
.LBE1117:
	.loc 3 208 0
	ldr	r3, [sp, #48]
	cmp	r3, #0
	bgt	.L5940
	b	.L5936
.LVL5315:
.L6029:
	.loc 3 216 0
	ldr	r2, .L6034+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L6032
.L5946:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5316:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L5947
	ldr	r9, [r10]
.L5948:
	.loc 3 235 0
	ldr	r2, [r10, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r10, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L6034+8
	.loc 3 243 0
	ldr	r7, .L6034+28
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	ldr	ip, .L6034+8
	cmp	r1, r0
	.loc 3 243 0
	add	r3, r7, r3, asl #1
	.loc 3 235 0
	mov	r5, r2
	.loc 3 241 0
	strlt	r1, [ip, #8]
	ldr	r2, [r8]
	.loc 3 243 0
	str	r3, [sp, #52]
.LVL5317:
	b	.L5949
.LVL5318:
.L5957:
.LBB1118:
.LBB1107:
	.loc 3 303 0
	sub	r3, r10, #1
.LVL5319:
	.loc 3 304 0
	tst	r3, r10
	bne	.L5960
.LBB1108:
	.loc 3 305 0
	mov	r3, r3, asl #16
.LVL5320:
	mvn	r3, r3, lsr #16
	.loc 3 306 0
	ldr	r2, [sp, #48]
.LVL5321:
	.loc 3 305 0
	mvn	ip, r3, asl #16
.LVL5322:
	.loc 3 306 0
	sub	r2, r2, #1
	cmn	r2, #1
	beq	.L6033
	mov	r3, r2, lsr #1
	str	r3, [sp, #64]
	mov	r3, r3, asl #1
	str	r3, [sp, #68]
	add	r3, r3, #2
	add	r3, r3, r5
	mov	fp, r5
	str	r5, [sp, #76]
	mov	r10, r4
.LVL5323:
	mov	r5, ip
.LVL5324:
	ldr	r2, .L6034+32
	mov	r1, r8, lsr #2
.LVL5325:
	str	r3, [sp, #56]
	.loc 3 307 0
	add	r3, r2, r1, asl #6
	ldr	r0, .L6034+36
	str	r3, [sp, #40]
	ldr	r3, [sp, #52]
	str	r0, [sp, #32]
	add	r8, r3, #16
.LVL5326:
	ldr	r0, .L6034+40
	ldr	r3, [sp, #12]
	str	r2, [sp, #84]
	str	r0, [sp, #28]
	mov	r2, r3, asl #1
	and	r0, r9, #3
	add	r3, r3, #65536
	str	r1, [sp, #80]
	str	r0, [sp, #36]
	str	r2, [sp, #44]
	str	r3, [sp, #60]
	str	r4, [sp, #72]
.LVL5327:
.L5964:
	ldr	r2, [sp, #36]
	and	r3, fp, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	and	r4, r10, r5
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	add	r1, sp, #96
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	add	r3, r1, r3, asl #2
	ldr	r7, [r3, #-8]
	ldr	ip, [sp, #20]
	ldr	r3, [sp, #32]
	subgt	r2, r2, #1
	ldr	r9, [r3]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	add	r3, r10, #65536
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5328:
	.loc 3 311 0
	ldr	r2, [sp, #36]
	add	r3, fp, #1
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	.loc 3 307 0
	mov	r4, r4, asr #8
	.loc 3 311 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	.loc 3 307 0
	uxtb	r4, r4
	.loc 3 311 0
	cmp	r3, r2
	.loc 3 307 0
	ldr	r2, [sp, #40]
	mov	ip, #126
	ldrb	r2, [r2, r4, asr #2]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	mov	r0, #128
	.loc 3 311 0
	movge	r3, #0
	movlt	r3, #1
	add	r4, r1, r10
	and	r4, r4, r5
	.loc 3 307 0
	ldrb	r1, [r7, r2]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r2, r4, asr #16
	cmp	r2, #0
	movle	r2, #0
	.loc 3 307 0
	smlabb	r1, r0, r1, ip
	.loc 3 311 0
	add	r0, sp, #96
	add	r3, r0, r3, asl #2
	ldr	r7, [r3, #-8]
	ldr	r3, [sp, #32]
	.loc 3 307 0
	ldrh	r1, [r9, r1]
	.loc 3 311 0
	ldr	ip, [sp, #20]
	ldr	r9, [r3]
	ldr	r3, [sp, #60]
	.loc 3 307 0
	strh	r1, [r8, #-16]	@ movhi
.LVL5329:
	.loc 3 311 0
	subgt	r2, r2, #1
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r3, r3, r10
	ldr	r2, [sp, #24]
	and	r3, r3, r5
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5330:
	.loc 3 306 0
	ldr	r2, [sp, #56]
	.loc 3 312 0
	add	fp, fp, #2
.LVL5331:
	.loc 3 306 0
	cmp	fp, r2
	ldr	r2, [sp, #44]
	.loc 3 311 0
	mov	r1, #126
	add	r10, r2, r10
.LVL5332:
	mov	r2, #128
	mov	r4, r4, asr #8
	ldr	r3, [sp, #40]
	uxtb	r4, r4
	ldrb	r3, [r3, r4, asr #2]	@ zero_extendqisi2
	add	r8, r8, #16
.LVL5333:
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r9, r3]
	strh	r3, [r8, #-24]	@ movhi
	.loc 3 306 0
	bne	.L5964
	.loc 3 316 0
	ldr	r1, [sp, #48]
	mov	ip, r5
	ldr	r5, [sp, #76]
.LVL5334:
	tst	r1, #1
	ldr	r1, [sp, #68]
	ldr	r3, [sp, #12]
	ldr	r4, [sp, #72]
	add	r5, r5, #2
	ldr	r2, [sp, #64]
	add	r5, r5, r1
	ldr	r1, [sp, #44]
	add	r4, r4, r3, asl #1
	mla	r4, r1, r2, r4
	add	r3, r2, #1
	ldr	r2, [sp, #52]
	add	r3, r2, r3, asl #4
	str	r3, [sp, #52]
	bne	.L5936
.LVL5335:
.L5980:
	.loc 3 317 0
	ldr	r3, [sp, #36]
	and	r5, r5, #3
	add	r5, r3, r5, asl #2
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #16]
	ldrb	r3, [r3, r5]	@ zero_extendqisi2
	and	r5, r4, ip
	cmp	r3, r2
	mov	r2, r5, asr #16
	movge	r3, #0
	movlt	r3, #1
	cmp	r2, #0
	movle	r2, #0
	add	r4, r4, #65536
	add	r1, sp, #96
	and	r4, r4, ip
	ldr	ip, [sp, #20]
.LVL5336:
	add	r3, r1, r3, asl #2
	subgt	r2, r2, #1
	ldr	r7, [r3, #-8]
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #24]
	ldrb	ip, [ip, r5, asr #16]	@ zero_extendqisi2
	ldr	r9, [r3]
	ldrb	r2, [r2, r5, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r5, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL5337:
	ldr	r3, [sp, #84]
	mov	r8, r5, asl #16
	add	r8, r3, r8, lsr #26
	ldr	r3, [sp, #80]
	ldr	r2, [sp, #52]
	ldrb	r3, [r8, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	add	r9, r9, r3, asl #7
	ldrh	r3, [r9, #126]
	strh	r3, [r2]	@ movhi
	b	.L5936
.LVL5338:
.L6027:
.LBE1108:
.LBE1107:
.LBE1118:
	.loc 3 127 0
	ldr	r2, [r6, #48]
.LVL5339:
	mov	r1, #1
	mov	r0, #0
.LVL5340:
	bl	R_GetDrawColumnFunc
.LVL5341:
	mov	r3, r0
	mov	r0, r10
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5342:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5343:
.L5960:
	.cfi_restore_state
.LBB1119:
.LBB1111:
.LBB1109:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r10, r10, asl #16
.LVL5344:
	.loc 3 325 0
	blt	.L5969
	.loc 3 328 0
	cmp	r4, r10
	blt	.L5968
.L5970:
	rsb	r4, r10, r4
.LVL5345:
	cmp	r10, r4
	ble	.L5970
.L5968:
	.loc 3 332 0
	add	fp, r4, #65536
.LVL5346:
	.loc 3 333 0
	cmp	fp, r10
	blt	.L5971
.L5972:
	rsb	fp, r10, fp
.LVL5347:
	cmp	fp, r10
	bge	.L5972
.L5971:
	ldr	r2, [sp, #48]
.LVL5348:
	.loc 3 345 0
	ldr	r3, .L6034+32
	add	r2, r2, #1
	add	r2, r2, r5
	str	r2, [sp, #28]
	ldr	r2, [sp, #52]
	mov	r8, r8, lsr #2
.LVL5349:
	add	r7, r2, #8
	add	r3, r3, r8, asl #6
	and	r2, r9, #3
	str	r2, [sp, #32]
	str	r3, [sp, #36]
	b	.L5973
.LVL5350:
.L5977:
	ldr	r2, .L6034+40
	ldrb	r0, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, .L6034+36
	.loc 3 346 0
	add	r5, r5, #1
.LVL5351:
	.loc 3 345 0
	ldr	r8, [r2]
	ldr	r2, [sp, #16]
	add	r7, r7, #8
.LVL5352:
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	cmp	lr, #0
	ldr	r9, [r3, #-8]
	movle	r3, #0
	subgt	r3, lr, #1
	ldrb	r1, [r6, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldrb	r2, [r3, lr]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r3, [r6, fp, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5353:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #36]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	.loc 3 348 0
	ldr	r2, [sp, #12]
	.loc 3 345 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 348 0
	add	r4, r4, r2
.LVL5354:
	.loc 3 345 0
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	.loc 3 350 0
	add	fp, fp, r2
.LVL5355:
	.loc 3 345 0
	add	r8, r8, r3, asl #7
	.loc 3 348 0
	cmp	r4, r10
	.loc 3 345 0
	ldrh	r3, [r8, #126]
	.loc 3 348 0
	rsbge	r4, r10, r4
.LVL5356:
	.loc 3 350 0
	cmp	fp, r10
	.loc 3 345 0
	strh	r3, [r7, #-16]	@ movhi
	.loc 3 350 0
	rsbge	fp, r10, fp
.LVL5357:
.L5973:
	.loc 3 345 0
	ldr	r2, [sp, #32]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	.loc 3 339 0
	ldr	r2, [sp, #28]
	.loc 3 345 0
	mov	lr, r4, asr #16
	.loc 3 339 0
	cmp	r5, r2
	bne	.L5977
.LBE1109:
.LBE1111:
.LBE1119:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5358:
.L5969:
	.cfi_restore_state
.LBB1120:
.LBB1112:
.LBB1110:
	.loc 3 326 0 discriminator 1
	adds	r4, r10, r4
.LVL5359:
	bpl	.L5968
.LVL5360:
	.loc 3 326 0 is_stmt 0
	adds	r4, r10, r4
.LVL5361:
	bmi	.L5969
	b	.L5968
.LVL5362:
.L6032:
.LBE1110:
.LBE1112:
.LBE1120:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r9, [r10]
	add	r2, r3, r2
	cmp	r2, r9
	bne	.L5946
	b	.L5948
.LVL5363:
.L6030:
	ldr	r2, [sp, #48]
.LVL5364:
	ldr	r3, .L6034+32
.LVL5365:
	add	fp, r2, #1
	ldr	r2, .L6034+36
	mov	r8, r8, lsr #2
.LVL5366:
	str	r2, [sp, #32]
	ldr	r2, .L6034+40
.LBB1121:
	.loc 3 289 0
	str	r10, [sp, #44]
	str	r2, [sp, #28]
	add	r2, fp, r5
	str	r2, [sp, #36]
	and	r2, r9, #3
	str	r2, [sp, #40]
	ldr	r2, [sp, #52]
	add	r8, r3, r8, asl #6
	add	r7, r2, #8
.LVL5367:
.L5955:
	ldr	r2, [sp, #40]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	bic	r9, r4, #-16777216
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	bic	r9, r9, #8388608
	cmp	r3, r2
	movge	r3, #0
	movlt	r3, #1
	add	r2, sp, #96
	add	r3, r2, r3, asl #2
	ldr	fp, [r3, #-8]
	ldr	r3, [sp, #32]
	movs	r2, r9, asr #16
	ldr	ip, [sp, #20]
	ldr	r10, [r3]
	subne	r2, r2, #1
	add	r3, r4, #65536
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r9, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	bic	r3, r3, #-16777216
	bic	r3, r3, #8388608
	ldrb	r2, [r2, r9, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r6, r9, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r6, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5368:
	mov	r1, #126
	mov	r9, r9, asr #8
	uxtb	r9, r9
	.loc 3 288 0
	ldr	r2, [sp, #36]
	.loc 3 289 0
	ldrb	r3, [r8, r9, asr #2]	@ zero_extendqisi2
	.loc 3 290 0
	add	r5, r5, #1
.LVL5369:
	.loc 3 289 0
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	cmp	r5, r2
	.loc 3 292 0
	ldr	r2, [sp, #12]
	.loc 3 289 0
	ldrb	r3, [fp, r3]	@ zero_extendqisi2
	.loc 3 292 0
	add	r4, r4, r2
.LVL5370:
	.loc 3 289 0
	ldrh	r2, [sp, #44]
	add	r7, r7, #8
.LVL5371:
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r10, r3]
	strh	r3, [r7, #-16]	@ movhi
	.loc 3 288 0
	bne	.L5955
.LBE1121:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5372:
.L6031:
	.cfi_restore_state
.LBB1122:
	.loc 3 197 0
	mvn	r0, r8
	ldr	r1, [sp, #12]
	uxth	r0, r0
	b	.L6024
.LVL5373:
.L5942:
.LBE1122:
	.loc 3 186 0
	tst	r3, #2
	beq	.L5941
.LBB1123:
	.loc 3 188 0
	uxth	r9, r8
	mov	r0, r9
.LVL5374:
	ldr	r1, [sp, #12]
	b	.L6023
.LVL5375:
.L6033:
	and	r3, r9, #3
	str	r3, [sp, #36]
	mov	r3, r8, lsr #2
	str	r3, [sp, #80]
	ldr	r3, .L6034+36
	str	r3, [sp, #32]
	ldr	r3, .L6034+40
	str	r3, [sp, #28]
	ldr	r3, .L6034+32
	str	r3, [sp, #84]
	b	.L5980
.L6035:
	.align	2
.L6034:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushWhole16
	.word	R_FlushHT16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	filter_roundedUVMap
	.word	V_Palette16
	.word	filter_ditherMatrix
	.word	viewheight
.LBE1123:
	.cfi_endproc
.LFE72:
	.size	R_DrawColumn16_RoundedUV_LinearZ, .-R_DrawColumn16_RoundedUV_LinearZ
	.align	2
	.type	R_DrawFuzzColumn16_LinearUV_LinearZ, %function
R_DrawFuzzColumn16_LinearUV_LinearZ:
.LFB177:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5376:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 119 0
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #32]
	.loc 3 126 0
	ldr	r7, .L6076
	.loc 3 119 0
	cmp	r2, r3
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL5377:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 119 0
	ldrneh	r10, [r0, #28]
	moveq	r10, #0
.LVL5378:
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 113 0
	mov	r4, r0
	.loc 3 126 0
	bgt	.L6073
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L6076+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL5379:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL5380:
	bmi	.L6036
.LVL5381:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L6043
.LVL5382:
.L6046:
	.loc 3 215 0
	ldr	r5, .L6076+8
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L6044
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L6074
.L6052:
	.loc 3 228 0 is_stmt 1
	ldr	r3, .L6076+12
	.loc 3 224 0
	mov	r8, #4
.LVL5383:
	.loc 3 221 0
	ldr	lr, [r4]
	.loc 3 228 0
	ldr	r9, [r3]
	.loc 3 223 0
	ldmib	r4, {r2, r3}
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	mov	r3, #0
	.loc 3 231 0
	ldr	r0, .L6076+16
	.loc 3 232 0
	ldr	r1, .L6076+20
	.loc 3 224 0
	ldr	r6, .L6076+24
	.loc 3 230 0
	ldr	ip, .L6076+28
	.loc 3 232 0
	stmib	r7, {r0, r1}
.LVL5384:
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r6, #-1204]
	.loc 3 221 0
	str	lr, [r5, #12]
	.loc 3 222 0
	str	r2, [r5, #4]
	str	r2, [r5, #16]
.LVL5385:
	.loc 3 230 0
	str	ip, [r7]
.L6054:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
.L6036:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5386:
.L6043:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L6046
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L6047
.LBB1124:
	.loc 3 181 0
	mvn	r0, r10
.LVL5387:
	mov	r1, r8
	str	r3, [sp, #4]
	uxth	r0, r0
.LVL5388:
.L6072:
.LBE1124:
.LBB1125:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL5389:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	fp, r0, fp
.LVL5390:
.L6048:
.LBE1125:
	.loc 3 194 0
	cmp	r9, r5
	beq	.L6049
	.loc 3 195 0
	tst	r3, #4
	beq	.L6050
.LBB1126:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL5391:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	fp, r0, fp
.LVL5392:
.L6049:
.LBE1126:
	.loc 3 208 0
	cmp	fp, #0
	bgt	.L6046
	b	.L6036
.L6074:
	.loc 3 216 0
	ldr	r2, .L6076+24
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L6075
.L6044:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5393:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L6052
.L6053:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L6076+8
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L6076+8
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L6054
.LVL5394:
.L6073:
	.loc 3 127 0
	ldr	r2, [r7, #48]
	mov	r1, #1
	mov	r0, #3
.LVL5395:
	bl	R_GetDrawColumnFunc
.LVL5396:
	mov	r3, r0
	mov	r0, r4
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5397:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5398:
.L6075:
	.cfi_restore_state
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L6044
	b	.L6053
.L6050:
	.loc 3 201 0
	tst	r3, #8
	beq	.L6049
.LBB1127:
	.loc 3 203 0
	mov	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv
.LVL5399:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	fp, r0, fp
.LVL5400:
	b	.L6049
.LVL5401:
.L6047:
.LBE1127:
	.loc 3 186 0
	tst	r3, #2
	beq	.L6048
	str	r3, [sp, #4]
.LBB1128:
	.loc 3 188 0
	mov	r0, r10
.LVL5402:
	mov	r1, r8
	b	.L6072
.L6077:
	.align	2
.L6076:
	.word	.LANCHOR1
	.word	viewheight
	.word	.LANCHOR0
	.word	fullcolormap
	.word	R_FlushHTFuzz16
	.word	R_FlushQuadFuzz16
	.word	.LANCHOR2
	.word	R_FlushWholeFuzz16
.LBE1128:
	.cfi_endproc
.LFE177:
	.size	R_DrawFuzzColumn16_LinearUV_LinearZ, .-R_DrawFuzzColumn16_LinearUV_LinearZ
	.align	2
	.type	R_DrawTranslatedColumn16_LinearUV_LinearZ, %function
R_DrawTranslatedColumn16_LinearUV_LinearZ:
.LFB141:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5403:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 126 0
	ldr	r10, .L6166
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #8]
.LVL5404:
	.loc 3 126 0
	ldr	r2, [sp, #8]
	ldr	r3, [r10, #64]
.LVL5405:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL5406:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #12]
	str	r6, [sp]
	.loc 3 126 0
	bgt	.L6159
	.loc 3 149 0
	ldmib	r0, {r8, r9}
.LVL5407:
	.loc 3 157 0
	subs	r3, r9, r8
.LVL5408:
	str	r3, [sp, #44]
	bmi	.L6078
	.loc 3 169 0
	ldr	r2, .L6166+4
.LVL5409:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL5410:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #8]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL5411:
	.loc 3 174 0
	bne	.L6160
.LVL5412:
.L6083:
	.loc 3 215 0
	ldr	r8, .L6166+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L6089
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L6161
.L6090:
	.loc 3 222 0 is_stmt 1
	ldmia	r5, {r2, ip}
	.loc 3 224 0
	mov	r0, #1
	.loc 3 223 0
	ldr	r3, [r5, #8]
	.loc 3 224 0
	ldr	r1, .L6166+12
	.loc 3 223 0
	str	r3, [r8, #8]
	.loc 3 224 0
	str	r0, [r1, #-1204]
	.loc 3 223 0
	str	r3, [r8, #32]
	.loc 3 231 0
	ldr	r1, .L6166+16
	.loc 3 230 0
	ldr	r0, .L6166+20
	.loc 3 232 0
	ldr	r3, .L6166+24
	.loc 3 233 0
	ldr	r9, .L6166+28
	.loc 3 232 0
	stmia	r10, {r0, r1, r3}
	mov	r1, #0
	.loc 3 233 0
	add	lr, r9, ip, asl #3
	.loc 3 221 0
	str	r2, [r8, #12]
	.loc 3 222 0
	str	ip, [r8, #4]
	str	ip, [r8, #16]
	.loc 3 233 0
	str	lr, [sp, #48]
.LVL5413:
	str	ip, [sp, #52]
.LVL5414:
.L6092:
.LBB1129:
	.loc 3 259 0
	ldr	ip, [r5, #12]
	.loc 3 269 0
	ldr	lr, [sp, #12]
	ldr	r6, [sp]
	.loc 3 260 0
	ldr	r3, [r5, #48]
.LBE1129:
	.loc 3 245 0
	add	r1, r1, #1
.LBB1136:
	.loc 3 260 0
	ldr	r0, [r5, #44]
	.loc 3 259 0
	mov	ip, ip, asr #6
.LBE1136:
	.loc 3 245 0
	str	r1, [r8]
.LVL5415:
.LBB1137:
	.loc 3 269 0
	cmp	lr, r6
	.loc 3 259 0
	uxtb	r1, ip
	.loc 3 260 0
	str	r3, [sp, #92]
	.loc 3 259 0
	str	r1, [sp, #20]
	.loc 3 260 0
	str	r0, [sp, #88]
	.loc 3 253 0
	ldr	r3, [r5, #52]
.LVL5416:
	.loc 3 269 0
	beq	.L6119
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r1, [r5, #28]
.LVL5417:
	str	r1, [sp, #4]
.L6095:
.LVL5418:
	.loc 3 286 0 is_stmt 1
	ldr	r6, [r5, #24]
.LVL5419:
	cmp	r6, #128
	beq	.L6162
	.loc 3 294 0
	cmp	r6, #0
	bne	.L6099
.LVL5420:
	ldr	ip, .L6166+32
	mvn	r10, r4
	str	ip, [sp, #24]
	ldr	ip, [sp, #52]
	.loc 3 297 0
	mov	r8, #64
	mov	r6, ip
	ldr	r1, .L6166+36
	and	r2, r2, #3
.LVL5421:
	ldr	r0, [sp, #44]
.LVL5422:
	ldr	r7, [r1]
	ldr	r1, [sp, #4]
	str	r2, [sp, #36]
	ldr	r2, [sp, #48]
	add	r0, r0, #1
	rsb	r1, r1, #65280
	add	r9, r2, #8
	add	r0, r0, ip
	add	r2, r1, #255
	str	r0, [sp, #32]
	str	r2, [sp, #40]
	str	r9, [sp, #28]
	str	r10, [sp, #16]
.LVL5423:
.L6100:
	ldr	r1, [sp, #36]
	and	r2, r6, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #24]
	ldr	fp, [sp, #12]
	ldrb	lr, [r1, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrh	r0, [sp, #16]
	cmp	lr, r2
	movge	lr, #0
	movlt	lr, #1
	ldr	r9, [sp, #40]
	ldr	r2, [sp]
	ldrb	ip, [fp, r4, asr #16]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	add	r1, sp, #96
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	add	lr, r1, lr, asl #2
	mul	r1, r9, r0
	mul	r0, r5, r0
	ldr	r5, [lr, #-8]
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	ldrb	ip, [r3, r2]	@ zero_extendqisi2
	ldr	r2, [sp]
	add	r10, r4, #65536
	ldrb	lr, [r5, lr]	@ zero_extendqisi2
	ldrb	r2, [r2, r10, asr #16]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	smlabb	lr, r8, lr, r1
	ldr	r1, [sp, #4]
	ldrb	fp, [fp, r10, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r3, r2]	@ zero_extendqisi2
	uxth	r2, r4
	mul	r1, r1, r2
	ldrb	ip, [r5, ip]	@ zero_extendqisi2
	mul	r2, r9, r2
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	ldrb	r10, [r5, r10]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	smlabb	r0, r8, ip, r0
	mov	r1, r1, lsr #26
	ldrb	ip, [r5, fp]	@ zero_extendqisi2
	smlabb	r1, r8, r10, r1
	mov	r2, r2, lsr #26
	smlabb	r2, r8, ip, r2
	mov	lr, lr, asl #1
	mov	r0, r0, asl #1
	ldrh	lr, [r7, lr]
	ldrh	r0, [r7, r0]
	mov	r1, r1, asl #1
	ldrh	r1, [r7, r1]
	mov	r2, r2, asl #1
	add	lr, r0, lr
	ldrh	r2, [r7, r2]
	add	lr, lr, r1
	.loc 3 296 0
	ldr	r1, [sp, #32]
	.loc 3 298 0
	add	r6, r6, #1
.LVL5424:
	.loc 3 297 0
	add	lr, lr, r2
	.loc 3 296 0
	cmp	r6, r1
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #8]
	rsb	r2, r1, r2
	str	r2, [sp, #16]
	.loc 3 297 0
	ldr	r2, [sp, #28]
	.loc 3 300 0
	add	r4, r4, r1
.LVL5425:
	.loc 3 297 0
	strh	lr, [r2, #-8]	@ movhi
	add	r2, r2, #8
	str	r2, [sp, #28]
.LVL5426:
	.loc 3 296 0
	bne	.L6100
.LVL5427:
.L6078:
.LBE1137:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5428:
.L6160:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L6083
	.loc 3 178 0
	cmp	r8, #0
	beq	.L6084
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L6085
.LBB1138:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL5429:
	str	r3, [sp, #4]
	bl	__aeabi_idiv
.LVL5430:
	.loc 3 184 0
	ldr	r3, [sp, #4]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL5431:
	.loc 3 183 0
	ldr	r3, [sp, #44]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL5432:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL5433:
	str	r3, [sp, #44]
.LVL5434:
.L6084:
.LBE1138:
	.loc 3 194 0
	ldr	r3, .L6166+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r9, r3
	beq	.L6086
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L6163
	.loc 3 201 0
	tst	r3, #8
	beq	.L6086
.LBB1139:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #8]
.L6156:
	bl	__aeabi_idiv
.LVL5435:
	.loc 3 205 0
	ldr	r3, [sp, #44]
	.loc 3 204 0
	rsb	r9, r0, r9
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r9, [r5, #8]
.LVL5436:
	.loc 3 205 0
	str	r3, [sp, #44]
.LVL5437:
.L6086:
.LBE1139:
	.loc 3 208 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bgt	.L6083
	b	.L6078
.L6161:
	.loc 3 216 0
	ldr	r2, .L6166+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L6164
.L6089:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5438:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L6150
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
	ldr	r2, [r5]
.L6091:
	.loc 3 235 0
	ldr	r1, [r5, #4]
	.loc 3 238 0
	ldr	ip, [r8, #4]
	.loc 3 236 0
	ldr	r0, [r5, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, r8, r3, asl #2
	str	r1, [ip, #16]
	.loc 3 236 0
	str	r0, [ip, #32]
	.loc 3 235 0
	ldr	ip, .L6166+8
	.loc 3 243 0
	ldr	r9, .L6166+28
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 240 0
	ldr	ip, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r1, asl #2
	.loc 3 240 0
	ldr	lr, .L6166+8
	cmp	r0, ip
	.loc 3 243 0
	add	r3, r9, r3, asl #1
	.loc 3 235 0
	str	r1, [sp, #52]
	.loc 3 241 0
	strlt	r0, [lr, #8]
	str	r7, [sp, #12]
	str	r6, [sp]
	ldr	r1, [r8]
	.loc 3 243 0
	str	r3, [sp, #48]
.LVL5439:
	b	.L6092
.LVL5440:
.L6099:
.LBB1140:
.LBB1130:
	.loc 3 303 0
	sub	r1, r6, #1
.LVL5441:
	.loc 3 304 0
	tst	r1, r6
	bne	.L6101
.LBB1131:
	.loc 3 305 0
	mov	r1, r1, asl #16
.LVL5442:
	mvn	r0, r1, lsr #16
.LVL5443:
	mvn	r0, r0, asl #16
	.loc 3 306 0
	ldr	r1, [sp, #44]
	.loc 3 305 0
	str	r0, [sp, #32]
.LVL5444:
	.loc 3 306 0
	sub	r1, r1, #1
	cmn	r1, #1
	beq	.L6165
	ldr	r0, .L6166+36
.LVL5445:
	.loc 3 307 0
	mov	r8, #64
	mov	lr, r0
.LVL5446:
	mov	r1, r1, lsr #1
	str	r1, [sp, #72]
	mov	r1, r1, asl #1
	.loc 3 306 0
	ldr	ip, [sp, #52]
	str	r0, [sp, #84]
	str	r1, [sp, #76]
	add	r0, r1, #2
	ldr	r1, [sp, #4]
	and	r2, r2, #3
.LVL5447:
	rsb	r1, r1, #65280
	str	r2, [sp, #60]
	add	r2, r0, ip
	str	r2, [sp, #64]
	add	r2, r1, #255
	str	r2, [sp, #16]
	ldr	r2, [sp, #48]
	ldr	r7, [lr]
	add	r2, r2, #16
	str	r2, [sp, #36]
	ldr	r2, [sp, #8]
	ldr	lr, .L6166+32
	mov	r1, r2, asl #1
	add	r2, r2, #65536
	str	lr, [sp, #24]
	str	r1, [sp, #56]
	str	r2, [sp, #68]
	str	r4, [sp, #80]
	str	ip, [sp, #28]
.LVL5448:
.L6103:
	.loc 3 307 0
	ldr	ip, [sp, #28]
	ldr	lr, [sp, #60]
	ldr	r5, [sp, #24]
	and	r2, ip, #3
	add	ip, ip, #1
	add	r2, lr, r2, asl #2
	.loc 3 311 0
	and	ip, ip, #3
	.loc 3 307 0
	ldrb	r6, [r5, r2]	@ zero_extendqisi2
	ldr	r9, [sp, #20]
	.loc 3 311 0
	add	ip, lr, ip, asl #2
	ldrb	lr, [r5, ip]	@ zero_extendqisi2
	.loc 3 307 0
	cmp	r6, r9
	ldr	fp, [sp, #32]
	movge	r6, #0
	movlt	r6, #1
	.loc 3 311 0
	cmp	lr, r9
	movge	lr, #0
	movlt	lr, #1
	.loc 3 307 0
	and	r1, r4, fp
	mvn	r0, r1
	ldr	r2, [sp, #8]
	ldr	r5, [sp, #12]
	add	r2, r2, r4
	.loc 3 311 0
	and	r2, r2, fp
	str	lr, [sp, #40]
	.loc 3 307 0
	add	lr, sp, #96
	ldr	r9, [sp, #4]
	.loc 3 311 0
	mvn	ip, r2
	.loc 3 307 0
	add	r6, lr, r6, asl #2
	ldr	lr, [sp, #16]
	ldrb	r10, [r5, r1, asr #16]	@ zero_extendqisi2
	uxth	r0, r0
	mul	lr, lr, r0
	mul	r0, r9, r0
	add	r9, r4, #65536
	ldr	r6, [r6, #-8]
	and	r9, r9, fp
	ldrb	fp, [r3, r10]	@ zero_extendqisi2
	mov	lr, lr, lsr #26
	ldrb	fp, [r6, fp]	@ zero_extendqisi2
	ldr	r10, [sp]
	smlabb	lr, r8, fp, lr
	ldr	fp, [sp]
	ldrb	r10, [r10, r1, asr #16]	@ zero_extendqisi2
	ldrb	fp, [fp, r9, asr #16]	@ zero_extendqisi2
	ldrb	r9, [r5, r9, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r3, r10]	@ zero_extendqisi2
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	ldrb	r9, [r3, r9]	@ zero_extendqisi2
	ldrb	r10, [r6, r10]	@ zero_extendqisi2
	ldrb	fp, [r6, fp]	@ zero_extendqisi2
	ldrb	r9, [r6, r9]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	ldr	r6, [sp, #4]
	uxth	r1, r1
	smlabb	r0, r8, r10, r0
	ldr	r10, [sp, #16]
	mul	r6, r6, r1
	mul	r1, r10, r1
	mov	r6, r6, lsr #26
	smlabb	r6, r8, fp, r6
	mov	r1, r1, lsr #26
	smlabb	r1, r8, r9, r1
	mov	lr, lr, asl #1
	mov	r0, r0, asl #1
	ldrh	r0, [r7, r0]
	ldrh	lr, [r7, lr]
	mov	r6, r6, asl #1
	ldrh	r6, [r7, r6]
	mov	r1, r1, asl #1
	add	lr, r0, lr
	ldrh	r1, [r7, r1]
	add	lr, lr, r6
	add	lr, lr, r1
	ldr	r1, [sp, #36]
	ldr	r0, [sp, #68]
	.loc 3 311 0
	ldr	fp, [sp, #32]
	ldr	r9, [sp, #40]
	.loc 3 307 0
	strh	lr, [r1, #-16]	@ movhi
.LVL5449:
	.loc 3 311 0
	add	r6, sp, #96
	add	r1, r0, r4
	ldr	r0, [sp]
	and	r1, r1, fp
	add	r6, r6, r9, asl #2
	ldr	fp, [sp]
	ldr	r9, [sp, #4]
	ldrb	lr, [r0, r2, asr #16]	@ zero_extendqisi2
	uxth	ip, ip
	ldrb	r0, [r5, r2, asr #16]	@ zero_extendqisi2
	mul	r9, r9, ip
	mul	ip, r10, ip
	ldrb	r10, [fp, r1, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r1, asr #16]	@ zero_extendqisi2
	ldr	r6, [r6, #-8]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	ldrb	fp, [r3, r10]	@ zero_extendqisi2
	ldr	r5, [sp, #16]
	ldrb	r10, [r3, r1]	@ zero_extendqisi2
	ldr	r1, [sp, #4]
	ldrb	lr, [r6, lr]	@ zero_extendqisi2
	ldrb	r0, [r6, r0]	@ zero_extendqisi2
	uxth	r2, r2
	mul	r1, r1, r2
	mov	r9, r9, lsr #26
	mul	r2, r5, r2
	mov	ip, ip, lsr #26
	smlabb	r9, r8, lr, r9
	smlabb	ip, r8, r0, ip
	ldrb	r0, [r6, r10]	@ zero_extendqisi2
	mov	r2, r2, lsr #26
	smlabb	r2, r8, r0, r2
	mov	r9, r9, asl #1
	.loc 3 312 0
	ldr	r0, [sp, #28]
	.loc 3 311 0
	mov	ip, ip, asl #1
	ldrh	ip, [r7, ip]
	ldrh	lr, [r7, r9]
	.loc 3 312 0
	add	r0, r0, #2
	add	lr, lr, ip
	mov	ip, r0
	.loc 3 311 0
	ldrb	fp, [r6, fp]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	smlabb	r1, r8, fp, r1
	mov	r1, r1, asl #1
	ldrh	r1, [r7, r1]
	mov	r2, r2, asl #1
	ldrh	r2, [r7, r2]
	add	lr, lr, r1
	.loc 3 312 0
	str	r0, [sp, #28]
.LVL5450:
	.loc 3 311 0
	ldr	r1, [sp, #36]
	.loc 3 306 0
	ldr	r0, [sp, #64]
.LVL5451:
	.loc 3 311 0
	add	lr, lr, r2
	ldr	r2, [sp, #56]
	.loc 3 306 0
	cmp	ip, r0
	add	r4, r2, r4
.LVL5452:
	add	r2, r1, #16
	.loc 3 311 0
	strh	lr, [r1, #-8]	@ movhi
	str	r2, [sp, #36]
.LVL5453:
	.loc 3 306 0
	bne	.L6103
	.loc 3 316 0
	ldr	ip, [sp, #44]
.LVL5454:
	ldr	r2, [sp, #52]
	tst	ip, #1
	ldr	ip, [sp, #76]
	ldr	r0, [sp, #72]
	add	r1, r2, #2
.LVL5455:
	add	r1, r1, ip
	str	r1, [sp, #52]
	mov	r1, r0
	ldr	r2, [sp, #8]
	ldr	r4, [sp, #80]
.LVL5456:
	add	r4, r4, r2, asl #1
	add	r2, r0, #1
	ldr	r0, [sp, #56]
	mla	r4, r0, r1, r4
	ldr	r1, [sp, #48]
	add	r2, r1, r2, asl #4
	str	r2, [sp, #48]
	bne	.L6078
.LVL5457:
.L6117:
	.loc 3 317 0
	ldr	r2, [sp, #52]
	ldr	r1, [sp, #60]
	and	r2, r2, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #24]
	ldr	lr, [sp, #32]
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldr	r1, [sp, #20]
	and	r2, r4, lr
	cmp	ip, r1
	mvn	r0, r2
	movge	ip, #0
	movlt	ip, #1
	mov	r1, #64
	ldr	r7, [sp, #12]
	ldr	r6, [sp]
	ldr	r9, [sp, #4]
	ldr	r10, [sp, #16]
	add	r4, r4, #65536
	and	r4, r4, lr
	ldrb	r5, [r6, r2, asr #16]	@ zero_extendqisi2
	ldrb	lr, [r7, r2, asr #16]	@ zero_extendqisi2
	uxth	r0, r0
	add	r8, sp, #96
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	add	ip, r8, ip, asl #2
	mul	r4, r9, r0
	uxth	r2, r2
	mul	r8, r10, r0
	ldr	ip, [ip, #-8]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	mul	r9, r9, r2
	ldrb	r0, [r3, r6]	@ zero_extendqisi2
	mul	r2, r10, r2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldrb	r5, [ip, r5]	@ zero_extendqisi2
	ldrb	r6, [r3, r7]	@ zero_extendqisi2
	mov	r4, r4, lsr #26
	ldrb	r3, [ip, r0]	@ zero_extendqisi2
.LVL5458:
	mov	r8, r8, lsr #26
	ldrb	ip, [ip, r6]	@ zero_extendqisi2
	smlabb	r8, r1, lr, r8
	smlabb	r4, r1, r5, r4
	mov	r0, r9, lsr #26
	smlabb	r0, r1, r3, r0
	mov	r2, r2, lsr #26
	ldr	r3, [sp, #84]
	smlabb	r1, r1, ip, r2
	ldr	ip, [r3]
	mov	r2, r4, asl #1
	mov	r3, r8, asl #1
	ldrh	lr, [ip, r3]
	ldrh	r2, [ip, r2]
	mov	r0, r0, asl #1
	ldrh	r3, [ip, r0]
	mov	r1, r1, asl #1
	add	r2, r2, lr
	ldrh	r1, [ip, r1]
	add	r3, r2, r3
	ldr	r2, [sp, #48]
	add	r3, r3, r1
	strh	r3, [r2]	@ movhi
	b	.L6078
.LVL5459:
.L6159:
.LBE1131:
.LBE1130:
.LBE1140:
	.loc 3 127 0
	ldr	r2, [r10, #48]
.LVL5460:
	mov	r1, #1
	mov	r0, #2
.LVL5461:
	bl	R_GetDrawColumnFunc
.LVL5462:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5463:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5464:
.L6101:
	.cfi_restore_state
.LBB1141:
.LBB1134:
.LBB1132:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r6, r6, asl #16
.LVL5465:
	.loc 3 325 0
	blt	.L6107
	.loc 3 328 0
	cmp	r4, r6
	blt	.L6106
.L6108:
	rsb	r4, r6, r4
.LVL5466:
	cmp	r6, r4
	ble	.L6108
.L6106:
	.loc 3 332 0
	add	r7, r4, #65536
.LVL5467:
	.loc 3 333 0
	cmp	r7, r6
	blt	.L6109
.L6110:
	rsb	r7, r6, r7
.LVL5468:
	cmp	r7, r6
	bge	.L6110
.L6109:
	ldr	r1, [sp, #44]
	ldr	lr, [sp, #52]
.LVL5469:
	add	r0, r1, #1
.LVL5470:
	add	r0, r0, lr
	.loc 3 345 0
	ldr	r1, [sp, #4]
	str	r0, [sp, #36]
	ldr	r0, [sp, #48]
	and	r2, r2, #3
.LVL5471:
	ldr	ip, .L6166+36
	rsb	r1, r1, #65280
	add	r0, r0, #8
	str	r2, [sp, #40]
	add	r2, r1, #255
	str	r6, [sp, #24]
	str	r0, [sp, #16]
	ldr	r10, [ip]
	str	r2, [sp, #44]
	mov	r9, #64
	mov	r6, lr
.LVL5472:
	b	.L6111
.LVL5473:
.L6114:
	ldr	r0, .L6166+32
	add	ip, sp, #96
	ldrb	r5, [r0, r2]	@ zero_extendqisi2
	ldr	r0, [sp, #20]
	mvn	r2, r4
	cmp	r5, r0
	movge	r5, #0
	movlt	r5, #1
	ldr	r0, [sp]
	ldr	r8, [sp, #12]
	add	r5, ip, r5, asl #2
	ldr	ip, [sp, #4]
	ldrb	lr, [r0, r7, asr #16]	@ zero_extendqisi2
	mul	fp, ip, r1
	ldrb	r0, [r8, r7, asr #16]	@ zero_extendqisi2
	ldr	r5, [r5, #-8]
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	str	fp, [sp, #32]
	ldrb	r0, [r5, r0]	@ zero_extendqisi2
	ldr	fp, [sp, #44]
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	uxth	r2, r2
	str	r0, [sp, #28]
	mul	r0, fp, r2
	mul	r2, ip, r2
	ldr	ip, [sp, #32]
	ldrb	lr, [r5, lr]	@ zero_extendqisi2
	mov	ip, ip, lsr #26
	smlabb	ip, r9, lr, ip
	ldr	lr, [sp]
	ldrb	r8, [r8, r4, asr #16]	@ zero_extendqisi2
	mul	r1, fp, r1
	ldrb	lr, [lr, r4, asr #16]	@ zero_extendqisi2
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrh	fp, [sp, #28]
	ldrb	r8, [r5, r8]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	ldrb	lr, [r5, lr]	@ zero_extendqisi2
	smlabb	r1, r9, fp, r1
	mov	r0, r0, lsr #26
	smlabb	r0, r9, r8, r0
	mov	r2, r2, lsr #26
	smlabb	r2, r9, lr, r2
	mov	ip, ip, asl #1
	mov	r1, r1, asl #1
	ldrh	r1, [r10, r1]
	ldrh	ip, [r10, ip]
	mov	r0, r0, asl #1
	ldrh	r0, [r10, r0]
	mov	r2, r2, asl #1
	ldrh	r2, [r10, r2]
	add	ip, r1, ip
	add	ip, ip, r0
	.loc 3 348 0
	ldr	r1, [sp, #8]
	.loc 3 345 0
	add	ip, ip, r2
	.loc 3 348 0
	ldr	r2, [sp, #24]
	add	r4, r4, r1
.LVL5474:
	cmp	r4, r2
	.loc 3 345 0
	ldr	r2, [sp, #16]
	.loc 3 350 0
	add	r7, r7, r1
.LVL5475:
	.loc 3 345 0
	strh	ip, [r2, #-8]	@ movhi
	.loc 3 348 0
	ldrge	r2, [sp, #24]
	.loc 3 346 0
	add	r6, r6, #1
.LVL5476:
	.loc 3 348 0
	rsbge	r4, r2, r4
.LVL5477:
	.loc 3 350 0
	ldr	r2, [sp, #24]
	cmp	r7, r2
	rsbge	r7, r2, r7
.LVL5478:
	ldr	r2, [sp, #16]
	add	r2, r2, #8
	str	r2, [sp, #16]
.LVL5479:
.L6111:
	.loc 3 339 0
	ldr	r0, [sp, #36]
	.loc 3 345 0
	ldr	r1, [sp, #40]
	and	r2, r6, #3
	.loc 3 339 0
	cmp	r6, r0
	.loc 3 345 0
	add	r2, r1, r2, asl #2
	uxth	r1, r4
	.loc 3 339 0
	bne	.L6114
.LBE1132:
.LBE1134:
.LBE1141:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL5480:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5481:
.L6107:
	.cfi_restore_state
.LBB1142:
.LBB1135:
.LBB1133:
	.loc 3 326 0 discriminator 1
	adds	r4, r6, r4
.LVL5482:
	bpl	.L6106
.LVL5483:
	.loc 3 326 0 is_stmt 0
	adds	r4, r6, r4
.LVL5484:
	bmi	.L6107
	b	.L6106
.LVL5485:
.L6164:
.LBE1133:
.LBE1135:
.LBE1142:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r1, [r8, #12]
	ldr	r2, [r5]
	add	r1, r3, r1
	cmp	r1, r2
	bne	.L6089
	b	.L6091
.LVL5486:
.L6162:
	ldr	ip, .L6166+32
	mvn	r10, r4
	str	ip, [sp, #24]
	ldr	ip, [sp, #52]
.LBB1143:
	.loc 3 289 0
	mov	r8, #64
	mov	r6, ip
	ldr	r1, .L6166+36
	and	r2, r2, #3
.LVL5487:
	ldr	r0, [sp, #44]
.LVL5488:
	ldr	r7, [r1]
	ldr	r1, [sp, #4]
	str	r2, [sp, #36]
	ldr	r2, [sp, #48]
	add	r0, r0, #1
	rsb	r1, r1, #65280
	add	r9, r2, #8
	add	r0, r0, ip
	add	r2, r1, #255
	str	r0, [sp, #32]
	str	r2, [sp, #40]
	str	r10, [sp, #16]
	str	r9, [sp, #28]
.LVL5489:
.L6097:
	ldr	r1, [sp, #36]
	and	r2, r6, #3
	add	r2, r1, r2, asl #2
	ldr	r1, [sp, #24]
	ldr	fp, [sp, #12]
	ldrb	lr, [r1, r2]	@ zero_extendqisi2
	ldr	r1, [sp, #20]
	bic	r2, r4, #-16777216
	cmp	lr, r1
	movge	lr, #0
	movlt	lr, #1
	ldr	r1, [sp]
	add	r5, sp, #96
	ldrh	r0, [sp, #16]
	add	lr, r5, lr, asl #2
	bic	r2, r2, #8388608
	ldr	r5, [sp, #4]
	ldrb	ip, [fp, r2, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r1, r2, asr #16]	@ zero_extendqisi2
	mul	r1, r5, r0
	add	r10, r4, #65536
	ldr	r5, [lr, #-8]
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	bic	r10, r10, #-16777216
	ldr	r2, [sp]
	bic	r10, r10, #8388608
	ldrb	lr, [r5, lr]	@ zero_extendqisi2
	ldr	r9, [sp, #40]
	ldrb	r2, [r2, r10, asr #16]	@ zero_extendqisi2
	mov	r1, r1, lsr #26
	smlabb	lr, r8, lr, r1
	ldr	r1, [sp, #4]
	ldrb	fp, [fp, r10, asr #16]	@ zero_extendqisi2
	mul	r0, r9, r0
	ldrb	r10, [r3, r2]	@ zero_extendqisi2
	uxth	r2, r4
	ldrb	ip, [r3, ip]	@ zero_extendqisi2
	mul	r1, r1, r2
	ldrb	ip, [r5, ip]	@ zero_extendqisi2
	mul	r2, r9, r2
	ldrb	fp, [r3, fp]	@ zero_extendqisi2
	ldrb	r10, [r5, r10]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	smlabb	r0, r8, ip, r0
	mov	r1, r1, lsr #26
	ldrb	ip, [r5, fp]	@ zero_extendqisi2
	smlabb	r1, r8, r10, r1
	mov	r2, r2, lsr #26
	smlabb	r2, r8, ip, r2
	mov	lr, lr, asl #1
	mov	r0, r0, asl #1
	ldrh	lr, [r7, lr]
	ldrh	r0, [r7, r0]
	mov	r1, r1, asl #1
	ldrh	r1, [r7, r1]
	mov	r2, r2, asl #1
	add	lr, lr, r0
	ldrh	r2, [r7, r2]
	add	lr, lr, r1
	.loc 3 288 0
	ldr	r1, [sp, #32]
	.loc 3 290 0
	add	r6, r6, #1
.LVL5490:
	.loc 3 289 0
	add	lr, lr, r2
	.loc 3 288 0
	cmp	r6, r1
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #8]
	rsb	r2, r1, r2
	str	r2, [sp, #16]
	.loc 3 289 0
	ldr	r2, [sp, #28]
	.loc 3 292 0
	add	r4, r4, r1
.LVL5491:
	.loc 3 289 0
	strh	lr, [r2, #-8]	@ movhi
	add	r2, r2, #8
	str	r2, [sp, #28]
.LVL5492:
	.loc 3 288 0
	bne	.L6097
.LBE1143:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL5493:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5494:
.L6119:
	.cfi_restore_state
.LBB1144:
	.loc 3 269 0
	mov	r1, #0
.LVL5495:
	str	r1, [sp, #4]
	b	.L6095
.LVL5496:
.L6163:
.LBE1144:
.LBB1145:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #8]
	uxth	r0, r0
	b	.L6156
.L6150:
	ldr	r3, [r5, #32]
	str	r3, [sp, #12]
	ldr	r3, [r5, #40]
	str	r3, [sp]
	b	.L6090
.LVL5497:
.L6085:
.LBE1145:
	.loc 3 186 0
	tst	r3, #2
	beq	.L6084
.LBB1146:
	.loc 3 188 0
	mov	r0, fp
.LVL5498:
	ldr	r1, [sp, #8]
.LVL5499:
	bl	__aeabi_idiv
.LVL5500:
	.loc 3 190 0
	ldr	r3, [sp, #44]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL5501:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL5502:
	.loc 3 190 0
	str	r3, [sp, #44]
.LVL5503:
	b	.L6084
.LVL5504:
.L6165:
	ldr	r1, [sp, #4]
	and	r2, r2, #3
.LVL5505:
	rsb	r1, r1, #65280
	str	r2, [sp, #60]
	add	r2, r1, #255
	str	r2, [sp, #16]
	ldr	r2, .L6166+36
	str	r2, [sp, #84]
	ldr	r2, .L6166+32
	str	r2, [sp, #24]
	b	.L6117
.L6167:
	.align	2
.L6166:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT16
	.word	R_FlushWhole16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	filter_ditherMatrix
	.word	V_Palette16
	.word	viewheight
.LBE1146:
	.cfi_endproc
.LFE141:
	.size	R_DrawTranslatedColumn16_LinearUV_LinearZ, .-R_DrawTranslatedColumn16_LinearUV_LinearZ
	.align	2
	.type	R_DrawTLColumn16_LinearUV_LinearZ, %function
R_DrawTLColumn16_LinearUV_LinearZ:
.LFB105:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5506:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 126 0
	ldr	r9, .L6256
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #16]
.LVL5507:
	.loc 3 126 0
	ldr	r2, [sp, #16]
	ldr	r3, [r9, #64]
.LVL5508:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL5509:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	.loc 3 126 0
	bgt	.L6249
	.loc 3 149 0
	ldmib	r0, {r8, r10}
.LVL5510:
	.loc 3 157 0
	subs	r3, r10, r8
.LVL5511:
	str	r3, [sp, #44]
	bmi	.L6168
	.loc 3 169 0
	ldr	r2, .L6256+4
.LVL5512:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL5513:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #16]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL5514:
	.loc 3 174 0
	bne	.L6250
.LVL5515:
.L6173:
	.loc 3 215 0
	ldr	fp, .L6256+8
.LVL5516:
	ldr	r2, [fp]
	cmp	r2, #4
	beq	.L6179
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L6251
.L6180:
	.loc 3 224 0 is_stmt 1
	mov	r0, #2
	.loc 3 226 0
	ldr	r3, .L6256+12
	.loc 3 224 0
	ldr	r1, .L6256+16
	.loc 3 226 0
	ldr	r2, [r3]
	.loc 3 224 0
	str	r0, [r1, #-1204]
	.loc 3 226 0
	str	r2, [fp, #1008]
	.loc 3 223 0
	ldr	r2, [r5, #8]
	.loc 3 222 0
	ldmia	r5, {r3, ip}
	.loc 3 231 0
	ldr	r1, .L6256+20
	.loc 3 230 0
	ldr	r0, .L6256+24
	.loc 3 223 0
	str	r2, [fp, #8]
	str	r2, [fp, #32]
	.loc 3 232 0
	ldr	r2, .L6256+28
	.loc 3 233 0
	ldr	r8, .L6256+32
	.loc 3 232 0
	stmia	r9, {r0, r1, r2}
	mov	r1, #0
	.loc 3 233 0
	add	lr, r8, ip, asl #3
	.loc 3 221 0
	str	r3, [fp, #12]
	.loc 3 222 0
	str	ip, [fp, #4]
	str	ip, [fp, #16]
	.loc 3 233 0
	str	lr, [sp, #48]
.LVL5517:
	str	ip, [sp, #52]
.LVL5518:
.L6182:
.LBB1147:
	.loc 3 259 0
	ldr	ip, [r5, #12]
	.loc 3 269 0
	ldr	lr, [sp, #12]
	ldr	r6, [sp, #4]
.LBE1147:
	.loc 3 245 0
	add	r1, r1, #1
.LBB1154:
	.loc 3 260 0
	ldr	r0, [r5, #44]
	ldr	r2, [r5, #48]
	.loc 3 259 0
	mov	ip, ip, asr #6
.LBE1154:
	.loc 3 245 0
	str	r1, [fp]
.LVL5519:
.LBB1155:
	.loc 3 269 0
	cmp	lr, r6
	.loc 3 259 0
	uxtb	r1, ip
	str	r1, [sp, #24]
.LVL5520:
	.loc 3 260 0
	str	r0, [sp, #88]
	str	r2, [sp, #92]
.LVL5521:
	.loc 3 269 0
	beq	.L6209
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r2, [r5, #28]
	str	r2, [sp, #8]
.L6185:
.LVL5522:
	.loc 3 286 0 is_stmt 1
	ldr	lr, [r5, #24]
.LVL5523:
	cmp	lr, #128
	beq	.L6252
	.loc 3 294 0
	cmp	lr, #0
	bne	.L6189
.LVL5524:
	ldr	r1, .L6256+36
.LVL5525:
	mvn	r9, r4
	ldr	r6, [r1]
.LVL5526:
	ldr	r1, [sp, #8]
	.loc 3 297 0
	mov	r7, #64
	rsb	fp, r1, #65280
	ldr	r1, .L6256+40
	ldr	r2, [sp, #44]
	str	r1, [sp, #28]
	ldr	r1, [sp, #52]
	and	r3, r3, #3
.LVL5527:
	mov	lr, r1
	str	r3, [sp, #44]
	ldr	r3, [sp, #48]
	add	r2, r2, #1
	add	r2, r2, r1
	add	r8, r3, #8
	str	r2, [sp, #40]
	add	fp, fp, #255
	str	r8, [sp, #32]
	str	r9, [sp, #20]
.LVL5528:
.L6190:
	ldr	r2, [sp, #44]
	and	r3, lr, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	ldr	r8, [sp, #12]
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldrh	r2, [sp, #20]
	cmp	r1, r3
	movge	r1, #0
	movlt	r1, #1
	add	r3, sp, #96
	add	r1, r3, r1, asl #2
	ldr	r9, [sp, #8]
	ldr	ip, [r1, #-8]
	ldrb	r10, [r8, r4, asr #16]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	mul	r0, fp, r2
	mul	r2, r9, r2
	ldrb	r1, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r10, [ip, r10]	@ zero_extendqisi2
	mov	r2, r2, lsr #26
	str	r10, [sp, #36]
	ldrb	r10, [ip, r1]	@ zero_extendqisi2
	uxth	r3, r4
	smlabb	r2, r7, r10, r2
	ldr	r10, [sp, #4]
	add	r5, r4, #65536
	mul	r1, r9, r3
	ldrb	r10, [r10, r5, asr #16]	@ zero_extendqisi2
	mul	r3, fp, r3
	ldrb	r5, [r8, r5, asr #16]	@ zero_extendqisi2
	ldrh	r9, [sp, #36]
	ldrb	r10, [ip, r10]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	ldrb	ip, [ip, r5]	@ zero_extendqisi2
	smlabb	r0, r7, r9, r0
	mov	r1, r1, lsr #26
	smlabb	r1, r7, r10, r1
	mov	r3, r3, lsr #26
	smlabb	r3, r7, ip, r3
	mov	r0, r0, asl #1
	mov	r2, r2, asl #1
	ldrh	r2, [r6, r2]
	ldrh	r0, [r6, r0]
	mov	r1, r1, asl #1
	ldrh	r1, [r6, r1]
	mov	r3, r3, asl #1
	ldrh	r3, [r6, r3]
	add	r0, r2, r0
	.loc 3 296 0
	ldr	r2, [sp, #40]
	.loc 3 298 0
	add	lr, lr, #1
.LVL5529:
	add	r0, r0, r1
	.loc 3 297 0
	add	r0, r0, r3
	.loc 3 296 0
	cmp	lr, r2
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	.loc 3 300 0
	add	r4, r4, r3
.LVL5530:
	rsb	r2, r3, r2
	.loc 3 297 0
	ldr	r3, [sp, #32]
	str	r2, [sp, #20]
	strh	r0, [r3, #-8]	@ movhi
	add	r3, r3, #8
	str	r3, [sp, #32]
.LVL5531:
	.loc 3 296 0
	bne	.L6190
.LVL5532:
.L6168:
.LBE1155:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5533:
.L6250:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L6173
	.loc 3 178 0
	cmp	r8, #0
	beq	.L6174
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L6175
.LBB1156:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL5534:
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL5535:
	.loc 3 184 0
	ldr	r3, [sp, #8]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL5536:
	.loc 3 183 0
	ldr	r3, [sp, #44]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL5537:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL5538:
	str	r3, [sp, #44]
.LVL5539:
.L6174:
.LBE1156:
	.loc 3 194 0
	ldr	r3, .L6256+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L6176
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L6253
	.loc 3 201 0
	tst	r3, #8
	beq	.L6176
.LBB1157:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #16]
.L6246:
	bl	__aeabi_idiv
.LVL5540:
	.loc 3 205 0
	ldr	r3, [sp, #44]
	.loc 3 204 0
	rsb	r10, r0, r10
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r10, [r5, #8]
.LVL5541:
	.loc 3 205 0
	str	r3, [sp, #44]
.LVL5542:
.L6176:
.LBE1157:
	.loc 3 208 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bgt	.L6173
	b	.L6168
.LVL5543:
.L6251:
	.loc 3 216 0
	ldr	r3, .L6256+16
	ldr	r3, [r3, #-1204]
	cmp	r3, #2
	beq	.L6254
.L6179:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5544:
	.loc 3 219 0
	ldr	r2, [fp]
	cmp	r2, #0
	beq	.L6240
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
	ldr	r3, [r5]
.L6181:
	.loc 3 235 0
	ldr	r1, [r5, #4]
	.loc 3 238 0
	ldr	ip, [fp, #4]
	.loc 3 236 0
	ldr	r0, [r5, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, fp, r2, asl #2
	str	r1, [ip, #16]
	.loc 3 236 0
	str	r0, [ip, #32]
	.loc 3 235 0
	ldr	ip, .L6256+8
	.loc 3 243 0
	ldr	r8, .L6256+32
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 240 0
	ldr	ip, [fp, #8]
	.loc 3 243 0
	add	r2, r2, r1, asl #2
	.loc 3 240 0
	ldr	lr, .L6256+8
	cmp	r0, ip
	.loc 3 243 0
	add	r2, r8, r2, asl #1
	.loc 3 235 0
	str	r1, [sp, #52]
	.loc 3 241 0
	strlt	r0, [lr, #8]
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	ldr	r1, [fp]
	.loc 3 243 0
	str	r2, [sp, #48]
.LVL5545:
	b	.L6182
.LVL5546:
.L6189:
.LBB1158:
.LBB1148:
	.loc 3 303 0
	sub	r2, lr, #1
.LVL5547:
	.loc 3 304 0
	tst	r2, lr
	bne	.L6191
.LBB1149:
	.loc 3 305 0
	mov	r2, r2, asl #16
.LVL5548:
	mvn	r1, r2, lsr #16
.LVL5549:
	mvn	r1, r1, asl #16
	.loc 3 306 0
	ldr	r2, [sp, #44]
	.loc 3 305 0
	str	r1, [sp, #20]
.LVL5550:
	.loc 3 306 0
	sub	r2, r2, #1
	cmn	r2, #1
	beq	.L6255
	ldr	r1, .L6256+36
.LVL5551:
	mov	fp, r4
	mov	ip, r1
	.loc 3 307 0
	mov	r5, #64
.LVL5552:
	mov	r2, r2, lsr #1
	str	r2, [sp, #72]
	mov	r2, r2, asl #1
	.loc 3 306 0
	ldr	r0, [sp, #52]
.LVL5553:
	str	r1, [sp, #84]
	str	r2, [sp, #76]
	add	r1, r2, #2
	ldr	r2, [sp, #8]
	and	r3, r3, #3
.LVL5554:
	rsb	r2, r2, #65280
	str	r3, [sp, #60]
	add	r3, r1, r0
	str	r3, [sp, #64]
	add	r3, r2, #255
	str	r3, [sp, #36]
	ldr	r3, [sp, #48]
	ldr	lr, [ip]
.LVL5555:
	add	r3, r3, #16
	str	r3, [sp, #40]
	ldr	r3, [sp, #16]
	ldr	ip, .L6256+40
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	str	ip, [sp, #28]
	str	r2, [sp, #56]
	str	r3, [sp, #68]
	str	r4, [sp, #80]
	str	r0, [sp, #32]
.LVL5556:
.L6193:
	.loc 3 307 0
	ldr	r7, [sp, #32]
	ldr	r2, [sp, #60]
	ldr	r0, [sp, #28]
	and	r3, r7, #3
	add	r3, r2, r3, asl #2
	ldrb	r1, [r0, r3]	@ zero_extendqisi2
	ldr	r6, [sp, #24]
	ldr	ip, [sp, #20]
	cmp	r1, r6
	and	r10, fp, ip
	movge	r1, #0
	movlt	r1, #1
	mvn	r4, r10
	add	r3, r7, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	cmp	r0, r6
	add	r2, r3, fp
	and	r2, r2, ip
	mvn	r3, r2
	movge	r0, #0
	movlt	r0, #1
	.loc 3 307 0
	add	r6, sp, #96
	add	r1, r6, r1, asl #2
	ldr	r8, [sp, #8]
	ldr	r6, [sp, #36]
	ldr	r7, [sp, #12]
	uxth	r4, r4
	mul	r6, r6, r4
	ldr	ip, [sp, #4]
	mul	r4, r8, r4
	ldrb	r9, [r7, r10, asr #16]	@ zero_extendqisi2
	ldr	r8, [r1, #-8]
	ldrb	ip, [ip, r10, asr #16]	@ zero_extendqisi2
	uxth	r1, r10
	ldrb	r10, [r8, r9]	@ zero_extendqisi2
	mov	r6, r6, lsr #26
	ldrb	r9, [r8, ip]	@ zero_extendqisi2
	mov	ip, r4, lsr #26
	ldr	r4, [sp, #20]
	smlabb	r6, r5, r10, r6
	add	r10, fp, #65536
	and	r10, r10, r4
	smlabb	r4, r5, r9, ip
	ldr	ip, [sp, #36]
	ldr	r9, [sp, #8]
	mov	r6, r6, asl #1
	mul	r9, r9, r1
	mul	r1, ip, r1
	ldr	ip, [sp, #4]
	mov	r9, r9, lsr #26
	ldrb	ip, [ip, r10, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r7, r10, asr #16]	@ zero_extendqisi2
	ldrb	ip, [r8, ip]	@ zero_extendqisi2
	ldrb	r8, [r8, r10]	@ zero_extendqisi2
	smlabb	ip, r5, ip, r9
	mov	r1, r1, lsr #26
	smlabb	r1, r5, r8, r1
	mov	r4, r4, asl #1
	ldrh	r4, [lr, r4]
	ldrh	r6, [lr, r6]
	mov	ip, ip, asl #1
	ldrh	ip, [lr, ip]
	mov	r1, r1, asl #1
	ldrh	r1, [lr, r1]
	add	r6, r4, r6
	add	r6, r6, ip
	add	r1, r6, r1
	ldr	r6, [sp, #40]
	.loc 3 311 0
	ldr	r9, [sp, #36]
	ldr	r10, [sp, #8]
	.loc 3 307 0
	strh	r1, [r6, #-16]	@ movhi
.LVL5557:
	.loc 3 311 0
	ldrb	r6, [r7, r2, asr #16]	@ zero_extendqisi2
	uxth	r3, r3
	add	r1, sp, #96
	ldr	r4, [sp, #4]
	ldr	r8, [sp, #68]
	add	r0, r1, r0, asl #2
	mul	ip, r9, r3
	mul	r3, r10, r3
	ldr	r0, [r0, #-8]
	uxth	r1, r2
	ldrb	r2, [r4, r2, asr #16]	@ zero_extendqisi2
	add	r4, r8, fp
	ldr	r8, [sp, #20]
	mov	ip, ip, lsr #26
	and	r4, r4, r8
	ldrb	r8, [r0, r6]	@ zero_extendqisi2
	ldrb	r6, [r0, r2]	@ zero_extendqisi2
	mov	r3, r3, lsr #26
	smlabb	r3, r5, r6, r3
	smlabb	ip, r5, r8, ip
	ldr	r6, [sp, #4]
	mov	ip, ip, asl #1
	mov	r3, r3, asl #1
	ldrh	r3, [lr, r3]
	mul	r2, r10, r1
	ldrh	ip, [lr, ip]
	mul	r1, r9, r1
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r4, [r7, r4, asr #16]	@ zero_extendqisi2
	add	ip, r3, ip
	.loc 3 312 0
	ldr	r3, [sp, #32]
	.loc 3 311 0
	ldrb	r6, [r0, r6]	@ zero_extendqisi2
	ldrb	r0, [r0, r4]	@ zero_extendqisi2
	.loc 3 312 0
	add	r3, r3, #2
	.loc 3 311 0
	mov	r1, r1, lsr #26
	smlabb	r1, r5, r0, r1
	.loc 3 312 0
	mov	r0, r3
	.loc 3 311 0
	mov	r2, r2, lsr #26
	smlabb	r2, r5, r6, r2
	.loc 3 312 0
	str	r3, [sp, #32]
.LVL5558:
	.loc 3 311 0
	mov	r2, r2, asl #1
	.loc 3 306 0
	ldr	r3, [sp, #64]
	ldrh	r2, [lr, r2]
	.loc 3 311 0
	mov	r1, r1, asl #1
	ldr	r6, [sp, #40]
	ldrh	r1, [lr, r1]
	.loc 3 306 0
	cmp	r0, r3
	ldr	r3, [sp, #56]
	add	ip, ip, r2
	.loc 3 311 0
	add	ip, ip, r1
	add	fp, r3, fp
.LVL5559:
	add	r3, r6, #16
	strh	ip, [r6, #-8]	@ movhi
	str	r3, [sp, #40]
.LVL5560:
	.loc 3 306 0
	bne	.L6193
	.loc 3 316 0
	ldr	r0, [sp, #44]
.LVL5561:
	ldr	r3, [sp, #52]
	tst	r0, #1
	ldr	r0, [sp, #76]
	ldr	r1, [sp, #72]
	add	r2, r3, #2
	add	r2, r2, r0
	str	r2, [sp, #52]
	mov	r2, r1
	ldr	r3, [sp, #16]
	ldr	r4, [sp, #80]
	add	r4, r4, r3, asl #1
	add	r3, r1, #1
	ldr	r1, [sp, #56]
	mla	r4, r1, r2, r4
	ldr	r2, [sp, #48]
	add	r3, r2, r3, asl #4
	str	r3, [sp, #48]
	bne	.L6168
.LVL5562:
.L6207:
	.loc 3 317 0
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #60]
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	ldr	r5, [sp, #20]
	ldrb	lr, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	and	ip, r4, r5
	cmp	lr, r3
	mvn	r2, ip
	movge	lr, #0
	movlt	lr, #1
	mov	r3, #64
	ldr	r9, [sp, #12]
	add	r1, sp, #96
	ldr	r6, [sp, #8]
	ldr	r8, [sp, #36]
	uxth	r2, r2
	add	lr, r1, lr, asl #2
	ldr	r7, [sp, #4]
	add	r4, r4, #65536
	ldr	lr, [lr, #-8]
	uxth	r0, ip
	mul	r1, r6, r2
	and	r4, r4, r5
	mul	r2, r8, r2
	ldrb	r5, [r9, ip, asr #16]	@ zero_extendqisi2
	mul	r6, r6, r0
	ldrb	ip, [r7, ip, asr #16]	@ zero_extendqisi2
	mul	r8, r8, r0
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [lr, r5]	@ zero_extendqisi2
	ldrb	r5, [r9, r4, asr #16]	@ zero_extendqisi2
	ldrb	r9, [lr, ip]	@ zero_extendqisi2
	ldrb	r5, [lr, r5]	@ zero_extendqisi2
	ldrb	ip, [lr, r7]	@ zero_extendqisi2
	mov	r4, r1, lsr #26
	mov	r2, r2, lsr #26
	smlabb	r2, r3, r0, r2
	smlabb	lr, r3, r9, r4
	mov	r0, r8, lsr #26
	mov	r1, r6, lsr #26
	smlabb	r1, r3, ip, r1
	smlabb	r3, r3, r5, r0
	ldr	r0, [sp, #84]
	mov	lr, lr, asl #1
	ldr	ip, [r0]
	mov	r0, r2, asl #1
	mov	r1, r1, asl #1
	ldrh	r2, [ip, lr]
	ldrh	lr, [ip, r0]
	mov	r3, r3, asl #1
	ldrh	r0, [ip, r1]
	add	r2, r2, lr
	ldrh	r1, [ip, r3]
	add	r3, r2, r0
	ldr	r2, [sp, #48]
	add	r3, r3, r1
	strh	r3, [r2]	@ movhi
	b	.L6168
.LVL5563:
.L6249:
.LBE1149:
.LBE1148:
.LBE1158:
	.loc 3 127 0
	mov	r0, #1
.LVL5564:
	ldr	r2, [r9, #48]
.LVL5565:
	mov	r1, r0
	bl	R_GetDrawColumnFunc
.LVL5566:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5567:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5568:
.L6191:
	.cfi_restore_state
.LBB1159:
.LBB1152:
.LBB1150:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	lr, lr, asl #16
.LVL5569:
	.loc 3 325 0
	blt	.L6197
	.loc 3 328 0
	cmp	r4, lr
	blt	.L6196
.L6198:
	rsb	r4, lr, r4
.LVL5570:
	cmp	lr, r4
	ble	.L6198
.L6196:
	.loc 3 332 0
	add	r5, r4, #65536
.LVL5571:
	.loc 3 333 0
	cmp	r5, lr
	blt	.L6199
.L6200:
	rsb	r5, lr, r5
.LVL5572:
	cmp	r5, lr
	bge	.L6200
.L6199:
	.loc 3 345 0
	ldr	r0, [sp, #8]
.LVL5573:
	ldr	r1, [sp, #44]
.LVL5574:
	rsb	fp, r0, #65280
	ldr	r0, [sp, #52]
	add	r1, r1, #1
	add	r1, r1, r0
	ldr	r2, .L6256+36
	str	r1, [sp, #32]
	ldr	r1, [sp, #48]
	and	r3, r3, #3
.LVL5575:
	add	fp, fp, #255
	add	r10, r1, #8
	str	r3, [sp, #36]
	ldr	r8, [r2]
	mov	r7, #64
	mov	r6, r0
.LVL5576:
	str	fp, [sp, #20]
	b	.L6201
.LVL5577:
.L6204:
	ldr	r2, .L6256+40
	ldr	r0, [sp, #24]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	mvn	r3, r4
	cmp	r2, r0
	movge	r2, #0
	movlt	r2, #1
	ldr	r0, [sp, #8]
	ldr	r9, [sp, #4]
	mul	ip, r0, r1
	str	ip, [sp, #28]
	add	ip, sp, #96
	add	r2, ip, r2, asl #2
	ldr	ip, [sp, #20]
	ldrb	r9, [r9, r5, asr #16]	@ zero_extendqisi2
	mul	r1, ip, r1
	ldr	ip, [r2, #-8]
	ldr	r2, [sp, #12]
	uxth	r3, r3
	ldrb	fp, [r2, r5, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	mul	r2, r2, r3
	mul	r3, r0, r3
	ldr	r0, [sp, #28]
	ldrb	fp, [ip, fp]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	smlabb	r0, r7, r9, r0
	ldr	r9, [sp, #12]
	mov	r1, r1, lsr #26
	ldrb	r9, [r9, r4, asr #16]	@ zero_extendqisi2
	smlabb	r1, r7, fp, r1
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	ldr	fp, [sp, #4]
	mov	r2, r2, lsr #26
	ldrb	fp, [fp, r4, asr #16]	@ zero_extendqisi2
	smlabb	r2, r7, r9, r2
	ldrb	ip, [ip, fp]	@ zero_extendqisi2
	mov	r3, r3, lsr #26
	mov	r0, r0, asl #1
	mov	r1, r1, asl #1
	ldrh	r0, [r8, r0]
	ldrh	r1, [r8, r1]
	smlabb	r3, r7, ip, r3
	mov	r2, r2, asl #1
	ldrh	r2, [r8, r2]
	add	r0, r1, r0
	add	r0, r0, r2
	.loc 3 348 0
	ldr	r2, [sp, #16]
	.loc 3 345 0
	mov	r3, r3, asl #1
	ldrh	r3, [r8, r3]
	.loc 3 348 0
	add	r4, r4, r2
.LVL5578:
	.loc 3 350 0
	add	r5, r5, r2
.LVL5579:
	.loc 3 348 0
	cmp	r4, lr
	.loc 3 345 0
	add	r0, r0, r3
	.loc 3 348 0
	rsbge	r4, lr, r4
	.loc 3 350 0
	cmp	r5, lr
	.loc 3 345 0
	strh	r0, [r10, #-8]	@ movhi
	.loc 3 346 0
	add	r6, r6, #1
.LVL5580:
	.loc 3 350 0
	rsbge	r5, lr, r5
.LVL5581:
	add	r10, r10, #8
.LVL5582:
.L6201:
	.loc 3 345 0
	ldr	r2, [sp, #36]
	and	r3, r6, #3
	add	r3, r2, r3, asl #2
	.loc 3 339 0
	ldr	r2, [sp, #32]
	.loc 3 345 0
	uxth	r1, r4
	.loc 3 339 0
	cmp	r6, r2
	bne	.L6204
.LBE1150:
.LBE1152:
.LBE1159:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5583:
.L6197:
	.cfi_restore_state
.LBB1160:
.LBB1153:
.LBB1151:
	.loc 3 326 0 discriminator 1
	adds	r4, lr, r4
.LVL5584:
	bpl	.L6196
.LVL5585:
	.loc 3 326 0 is_stmt 0
	adds	r4, lr, r4
.LVL5586:
	bmi	.L6197
	b	.L6196
.LVL5587:
.L6254:
.LBE1151:
.LBE1153:
.LBE1160:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r1, [fp, #12]
	ldr	r3, [r5]
	add	r1, r2, r1
	cmp	r1, r3
	bne	.L6179
	b	.L6181
.LVL5588:
.L6252:
	ldr	r1, .L6256+36
.LVL5589:
	mvn	r10, r4
	ldr	r7, [r1]
	ldr	r1, [sp, #8]
.LBB1161:
	.loc 3 289 0
	mov	r9, #64
	rsb	fp, r1, #65280
	ldr	r1, .L6256+40
	ldr	r2, [sp, #44]
	str	r1, [sp, #28]
	ldr	r1, [sp, #52]
	and	r3, r3, #3
.LVL5590:
	mov	r5, r1
.LVL5591:
	str	r3, [sp, #44]
	ldr	r3, [sp, #48]
	add	r2, r2, #1
	add	r2, r2, r1
	add	r8, r3, #8
	str	r2, [sp, #40]
	add	fp, fp, #255
	str	r10, [sp, #20]
	str	r8, [sp, #32]
.LVL5592:
.L6187:
	ldr	r2, [sp, #44]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	ldr	r10, [sp, #8]
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r0, sp, #96
	cmp	r1, r2
	movge	r1, #0
	movlt	r1, #1
	ldrh	r2, [sp, #20]
	add	r1, r0, r1, asl #2
	bic	r3, r4, #-16777216
	ldr	r8, [sp, #12]
	ldr	lr, [r1, #-8]
	bic	r3, r3, #8388608
	mul	r0, r10, r2
	ldr	r1, [sp, #4]
	mul	r2, fp, r2
	ldrb	r6, [r8, r3, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r1, r3, asr #16]	@ zero_extendqisi2
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	add	ip, r4, #65536
	mov	r2, r2, lsr #26
	uxth	r3, r4
	smlabb	r2, r9, r6, r2
	bic	ip, ip, #-16777216
	ldr	r6, [sp, #4]
	bic	ip, ip, #8388608
	str	r1, [sp, #36]
	mul	r1, r10, r3
	ldrb	r6, [r6, ip, asr #16]	@ zero_extendqisi2
	mul	r3, fp, r3
	ldrb	ip, [r8, ip, asr #16]	@ zero_extendqisi2
	ldrh	r10, [sp, #36]
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	ldrb	ip, [lr, ip]	@ zero_extendqisi2
	smlabb	r0, r9, r10, r0
	mov	r1, r1, lsr #26
	smlabb	r1, r9, r6, r1
	mov	r3, r3, lsr #26
	smlabb	r3, r9, ip, r3
	mov	r0, r0, asl #1
	mov	r2, r2, asl #1
	ldrh	r2, [r7, r2]
	ldrh	r0, [r7, r0]
	mov	r1, r1, asl #1
	ldrh	r1, [r7, r1]
	mov	r3, r3, asl #1
	ldrh	r3, [r7, r3]
	add	r0, r0, r2
	.loc 3 288 0
	ldr	r2, [sp, #40]
	.loc 3 290 0
	add	r5, r5, #1
.LVL5593:
	add	r0, r0, r1
	.loc 3 289 0
	add	r0, r0, r3
	.loc 3 288 0
	cmp	r5, r2
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	.loc 3 292 0
	add	r4, r4, r3
.LVL5594:
	rsb	r2, r3, r2
	.loc 3 289 0
	ldr	r3, [sp, #32]
	str	r2, [sp, #20]
	strh	r0, [r3, #-8]	@ movhi
	add	r3, r3, #8
	str	r3, [sp, #32]
.LVL5595:
	.loc 3 288 0
	bne	.L6187
.LBE1161:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5596:
.L6209:
	.cfi_restore_state
.LBB1162:
	.loc 3 269 0
	mov	r2, #0
	str	r2, [sp, #8]
	b	.L6185
.LVL5597:
.L6253:
.LBE1162:
.LBB1163:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #16]
	uxth	r0, r0
	b	.L6246
.LVL5598:
.L6240:
	ldr	r3, [r5, #32]
	str	r3, [sp, #12]
	ldr	r3, [r5, #40]
	str	r3, [sp, #4]
	b	.L6180
.LVL5599:
.L6175:
.LBE1163:
	.loc 3 186 0
	tst	r3, #2
	beq	.L6174
.LBB1164:
	.loc 3 188 0
	mov	r0, fp
.LVL5600:
	ldr	r1, [sp, #16]
.LVL5601:
	bl	__aeabi_idiv
.LVL5602:
	.loc 3 190 0
	ldr	r3, [sp, #44]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL5603:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL5604:
	.loc 3 190 0
	str	r3, [sp, #44]
.LVL5605:
	b	.L6174
.LVL5606:
.L6255:
	ldr	r2, [sp, #8]
	and	r3, r3, #3
.LVL5607:
	rsb	r2, r2, #65280
	str	r3, [sp, #60]
	add	r3, r2, #255
	str	r3, [sp, #36]
	ldr	r3, .L6256+36
	str	r3, [sp, #84]
	ldr	r3, .L6256+40
	str	r3, [sp, #28]
	b	.L6207
.L6257:
	.align	2
.L6256:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushHTTL16
	.word	R_FlushWholeTL16
	.word	R_FlushQuadTL16
	.word	.LANCHOR0+1220
	.word	V_Palette16
	.word	filter_ditherMatrix
	.word	viewheight
.LBE1164:
	.cfi_endproc
.LFE105:
	.size	R_DrawTLColumn16_LinearUV_LinearZ, .-R_DrawTLColumn16_LinearUV_LinearZ
	.align	2
	.type	R_DrawColumn16_LinearUV_LinearZ, %function
R_DrawColumn16_LinearUV_LinearZ:
.LFB69:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5608:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	sub	sp, sp, #100
	.cfi_def_cfa_offset 136
	.loc 3 126 0
	ldr	r9, .L6346
	.loc 3 119 0
	ldr	r7, [r0, #32]
	ldr	r6, [r0, #40]
	.loc 3 117 0
	str	r3, [sp, #16]
.LVL5609:
	.loc 3 126 0
	ldr	r2, [sp, #16]
	ldr	r3, [r9, #64]
.LVL5610:
	.loc 3 119 0
	cmp	r7, r6
	ldrneh	fp, [r0, #28]
	moveq	fp, #0
.LVL5611:
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 113 0
	mov	r5, r0
	.loc 3 119 0
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	.loc 3 126 0
	bgt	.L6339
	.loc 3 149 0
	ldmib	r0, {r8, r10}
.LVL5612:
	.loc 3 157 0
	subs	r3, r10, r8
.LVL5613:
	str	r3, [sp, #44]
	bmi	.L6258
	.loc 3 169 0
	ldr	r2, .L6346+4
.LVL5614:
	.loc 3 174 0
	ldr	r1, [r0, #60]
	.loc 3 169 0
	ldr	r4, [r2]
	ldr	r3, [r0, #20]
.LVL5615:
	.loc 3 174 0
	cmp	r1, #0
	.loc 3 169 0
	ldr	r1, [sp, #16]
	rsb	r2, r4, r8
	sub	r3, r3, #32768
	mla	r4, r1, r2, r3
.LVL5616:
	.loc 3 174 0
	bne	.L6340
.LVL5617:
.L6263:
	.loc 3 215 0
	ldr	fp, .L6346+8
.LVL5618:
	ldr	r2, [fp]
	cmp	r2, #4
	beq	.L6269
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r2, #0
	bne	.L6341
.L6270:
	.loc 3 222 0 is_stmt 1
	ldmia	r5, {r3, ip}
	.loc 3 224 0
	mov	r0, #1
	.loc 3 223 0
	ldr	r2, [r5, #8]
	.loc 3 224 0
	ldr	r1, .L6346+12
	.loc 3 223 0
	str	r2, [fp, #8]
	.loc 3 224 0
	str	r0, [r1, #-1204]
	.loc 3 223 0
	str	r2, [fp, #32]
	.loc 3 231 0
	ldr	r1, .L6346+16
	.loc 3 230 0
	ldr	r0, .L6346+20
	.loc 3 232 0
	ldr	r2, .L6346+24
	.loc 3 233 0
	ldr	r8, .L6346+28
	.loc 3 232 0
	stmia	r9, {r0, r1, r2}
	mov	r1, #0
	.loc 3 233 0
	add	lr, r8, ip, asl #3
	.loc 3 221 0
	str	r3, [fp, #12]
	.loc 3 222 0
	str	ip, [fp, #4]
	str	ip, [fp, #16]
	.loc 3 233 0
	str	lr, [sp, #48]
.LVL5619:
	str	ip, [sp, #52]
.LVL5620:
.L6272:
.LBB1165:
	.loc 3 259 0
	ldr	ip, [r5, #12]
	.loc 3 269 0
	ldr	lr, [sp, #12]
	ldr	r6, [sp, #4]
.LBE1165:
	.loc 3 245 0
	add	r1, r1, #1
.LBB1172:
	.loc 3 260 0
	ldr	r0, [r5, #44]
	ldr	r2, [r5, #48]
	.loc 3 259 0
	mov	ip, ip, asr #6
.LBE1172:
	.loc 3 245 0
	str	r1, [fp]
.LVL5621:
.LBB1173:
	.loc 3 269 0
	cmp	lr, r6
	.loc 3 259 0
	uxtb	r1, ip
	str	r1, [sp, #24]
.LVL5622:
	.loc 3 260 0
	str	r0, [sp, #88]
	str	r2, [sp, #92]
.LVL5623:
	.loc 3 269 0
	beq	.L6299
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldrh	r2, [r5, #28]
	str	r2, [sp, #8]
.L6275:
.LVL5624:
	.loc 3 286 0 is_stmt 1
	ldr	lr, [r5, #24]
.LVL5625:
	cmp	lr, #128
	beq	.L6342
	.loc 3 294 0
	cmp	lr, #0
	bne	.L6279
.LVL5626:
	ldr	r1, .L6346+32
.LVL5627:
	mvn	r9, r4
	ldr	r6, [r1]
.LVL5628:
	ldr	r1, [sp, #8]
	.loc 3 297 0
	mov	r7, #64
	rsb	fp, r1, #65280
	ldr	r1, .L6346+36
	ldr	r2, [sp, #44]
	str	r1, [sp, #28]
	ldr	r1, [sp, #52]
	and	r3, r3, #3
.LVL5629:
	mov	lr, r1
	str	r3, [sp, #44]
	ldr	r3, [sp, #48]
	add	r2, r2, #1
	add	r2, r2, r1
	add	r8, r3, #8
	str	r2, [sp, #40]
	add	fp, fp, #255
	str	r8, [sp, #32]
	str	r9, [sp, #20]
.LVL5630:
.L6280:
	ldr	r2, [sp, #44]
	and	r3, lr, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	ldr	r8, [sp, #12]
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldrh	r2, [sp, #20]
	cmp	r1, r3
	movge	r1, #0
	movlt	r1, #1
	add	r3, sp, #96
	add	r1, r3, r1, asl #2
	ldr	r9, [sp, #8]
	ldr	ip, [r1, #-8]
	ldrb	r10, [r8, r4, asr #16]	@ zero_extendqisi2
	ldr	r5, [sp, #4]
	mul	r0, fp, r2
	mul	r2, r9, r2
	ldrb	r1, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r10, [ip, r10]	@ zero_extendqisi2
	mov	r2, r2, lsr #26
	str	r10, [sp, #36]
	ldrb	r10, [ip, r1]	@ zero_extendqisi2
	uxth	r3, r4
	smlabb	r2, r7, r10, r2
	ldr	r10, [sp, #4]
	add	r5, r4, #65536
	mul	r1, r9, r3
	ldrb	r10, [r10, r5, asr #16]	@ zero_extendqisi2
	mul	r3, fp, r3
	ldrb	r5, [r8, r5, asr #16]	@ zero_extendqisi2
	ldrh	r9, [sp, #36]
	ldrb	r10, [ip, r10]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	ldrb	ip, [ip, r5]	@ zero_extendqisi2
	smlabb	r0, r7, r9, r0
	mov	r1, r1, lsr #26
	smlabb	r1, r7, r10, r1
	mov	r3, r3, lsr #26
	smlabb	r3, r7, ip, r3
	mov	r0, r0, asl #1
	mov	r2, r2, asl #1
	ldrh	r2, [r6, r2]
	ldrh	r0, [r6, r0]
	mov	r1, r1, asl #1
	ldrh	r1, [r6, r1]
	mov	r3, r3, asl #1
	ldrh	r3, [r6, r3]
	add	r0, r2, r0
	.loc 3 296 0
	ldr	r2, [sp, #40]
	.loc 3 298 0
	add	lr, lr, #1
.LVL5631:
	add	r0, r0, r1
	.loc 3 297 0
	add	r0, r0, r3
	.loc 3 296 0
	cmp	lr, r2
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	.loc 3 300 0
	add	r4, r4, r3
.LVL5632:
	rsb	r2, r3, r2
	.loc 3 297 0
	ldr	r3, [sp, #32]
	str	r2, [sp, #20]
	strh	r0, [r3, #-8]	@ movhi
	add	r3, r3, #8
	str	r3, [sp, #32]
.LVL5633:
	.loc 3 296 0
	bne	.L6280
.LVL5634:
.L6258:
.LBE1173:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5635:
.L6340:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L6263
	.loc 3 178 0
	cmp	r8, #0
	beq	.L6264
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L6265
.LBB1174:
	.loc 3 181 0
	mvn	r3, fp
	uxth	r3, r3
	mov	r0, r3
.LVL5636:
	str	r3, [sp, #8]
	bl	__aeabi_idiv
.LVL5637:
	.loc 3 184 0
	ldr	r3, [sp, #8]
	.loc 3 182 0
	add	r8, r8, r0
	.loc 3 184 0
	add	r4, r4, r3
.LVL5638:
	.loc 3 183 0
	ldr	r3, [sp, #44]
	.loc 3 182 0
	str	r8, [r5, #4]
.LVL5639:
	.loc 3 183 0
	rsb	r3, r0, r3
.LVL5640:
	str	r3, [sp, #44]
.LVL5641:
.L6264:
.LBE1174:
	.loc 3 194 0
	ldr	r3, .L6346+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r10, r3
	beq	.L6266
	.loc 3 195 0
	ldr	r3, [r5, #56]
	tst	r3, #4
	bne	.L6343
	.loc 3 201 0
	tst	r3, #8
	beq	.L6266
.LBB1175:
	.loc 3 203 0
	mov	r0, fp
	ldr	r1, [sp, #16]
.L6336:
	bl	__aeabi_idiv
.LVL5642:
	.loc 3 205 0
	ldr	r3, [sp, #44]
	.loc 3 204 0
	rsb	r10, r0, r10
	.loc 3 205 0
	rsb	r3, r0, r3
	.loc 3 204 0
	str	r10, [r5, #8]
.LVL5643:
	.loc 3 205 0
	str	r3, [sp, #44]
.LVL5644:
.L6266:
.LBE1175:
	.loc 3 208 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bgt	.L6263
	b	.L6258
.LVL5645:
.L6341:
	.loc 3 216 0
	ldr	r3, .L6346+12
	ldr	r3, [r3, #-1204]
	cmp	r3, #1
	beq	.L6344
.L6269:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5646:
	.loc 3 219 0
	ldr	r2, [fp]
	cmp	r2, #0
	beq	.L6330
	ldr	r7, [r5, #32]
	ldr	r6, [r5, #40]
	ldr	r3, [r5]
.L6271:
	.loc 3 235 0
	ldr	r1, [r5, #4]
	.loc 3 238 0
	ldr	ip, [fp, #4]
	.loc 3 236 0
	ldr	r0, [r5, #8]
	.loc 3 238 0
	cmp	r1, ip
	.loc 3 235 0
	add	ip, fp, r2, asl #2
	str	r1, [ip, #16]
	.loc 3 236 0
	str	r0, [ip, #32]
	.loc 3 235 0
	ldr	ip, .L6346+8
	.loc 3 243 0
	ldr	r8, .L6346+28
	.loc 3 239 0
	strgt	r1, [ip, #4]
	.loc 3 240 0
	ldr	ip, [fp, #8]
	.loc 3 243 0
	add	r2, r2, r1, asl #2
	.loc 3 240 0
	ldr	lr, .L6346+8
	cmp	r0, ip
	.loc 3 243 0
	add	r2, r8, r2, asl #1
	.loc 3 235 0
	str	r1, [sp, #52]
	.loc 3 241 0
	strlt	r0, [lr, #8]
	str	r7, [sp, #12]
	str	r6, [sp, #4]
	ldr	r1, [fp]
	.loc 3 243 0
	str	r2, [sp, #48]
.LVL5647:
	b	.L6272
.LVL5648:
.L6279:
.LBB1176:
.LBB1166:
	.loc 3 303 0
	sub	r2, lr, #1
.LVL5649:
	.loc 3 304 0
	tst	r2, lr
	bne	.L6281
.LBB1167:
	.loc 3 305 0
	mov	r2, r2, asl #16
.LVL5650:
	mvn	r1, r2, lsr #16
.LVL5651:
	mvn	r1, r1, asl #16
	.loc 3 306 0
	ldr	r2, [sp, #44]
	.loc 3 305 0
	str	r1, [sp, #20]
.LVL5652:
	.loc 3 306 0
	sub	r2, r2, #1
	cmn	r2, #1
	beq	.L6345
	ldr	r1, .L6346+32
.LVL5653:
	mov	fp, r4
	mov	ip, r1
	.loc 3 307 0
	mov	r5, #64
.LVL5654:
	mov	r2, r2, lsr #1
	str	r2, [sp, #72]
	mov	r2, r2, asl #1
	.loc 3 306 0
	ldr	r0, [sp, #52]
.LVL5655:
	str	r1, [sp, #84]
	str	r2, [sp, #76]
	add	r1, r2, #2
	ldr	r2, [sp, #8]
	and	r3, r3, #3
.LVL5656:
	rsb	r2, r2, #65280
	str	r3, [sp, #60]
	add	r3, r1, r0
	str	r3, [sp, #64]
	add	r3, r2, #255
	str	r3, [sp, #36]
	ldr	r3, [sp, #48]
	ldr	lr, [ip]
.LVL5657:
	add	r3, r3, #16
	str	r3, [sp, #40]
	ldr	r3, [sp, #16]
	ldr	ip, .L6346+36
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	str	ip, [sp, #28]
	str	r2, [sp, #56]
	str	r3, [sp, #68]
	str	r4, [sp, #80]
	str	r0, [sp, #32]
.LVL5658:
.L6283:
	.loc 3 307 0
	ldr	r7, [sp, #32]
	ldr	r2, [sp, #60]
	ldr	r0, [sp, #28]
	and	r3, r7, #3
	add	r3, r2, r3, asl #2
	ldrb	r1, [r0, r3]	@ zero_extendqisi2
	ldr	r6, [sp, #24]
	ldr	ip, [sp, #20]
	cmp	r1, r6
	and	r10, fp, ip
	movge	r1, #0
	movlt	r1, #1
	mvn	r4, r10
	add	r3, r7, #1
	.loc 3 311 0
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	cmp	r0, r6
	add	r2, r3, fp
	and	r2, r2, ip
	mvn	r3, r2
	movge	r0, #0
	movlt	r0, #1
	.loc 3 307 0
	add	r6, sp, #96
	add	r1, r6, r1, asl #2
	ldr	r8, [sp, #8]
	ldr	r6, [sp, #36]
	ldr	r7, [sp, #12]
	uxth	r4, r4
	mul	r6, r6, r4
	ldr	ip, [sp, #4]
	mul	r4, r8, r4
	ldrb	r9, [r7, r10, asr #16]	@ zero_extendqisi2
	ldr	r8, [r1, #-8]
	ldrb	ip, [ip, r10, asr #16]	@ zero_extendqisi2
	uxth	r1, r10
	ldrb	r10, [r8, r9]	@ zero_extendqisi2
	mov	r6, r6, lsr #26
	ldrb	r9, [r8, ip]	@ zero_extendqisi2
	mov	ip, r4, lsr #26
	ldr	r4, [sp, #20]
	smlabb	r6, r5, r10, r6
	add	r10, fp, #65536
	and	r10, r10, r4
	smlabb	r4, r5, r9, ip
	ldr	ip, [sp, #36]
	ldr	r9, [sp, #8]
	mov	r6, r6, asl #1
	mul	r9, r9, r1
	mul	r1, ip, r1
	ldr	ip, [sp, #4]
	mov	r9, r9, lsr #26
	ldrb	ip, [ip, r10, asr #16]	@ zero_extendqisi2
	ldrb	r10, [r7, r10, asr #16]	@ zero_extendqisi2
	ldrb	ip, [r8, ip]	@ zero_extendqisi2
	ldrb	r8, [r8, r10]	@ zero_extendqisi2
	smlabb	ip, r5, ip, r9
	mov	r1, r1, lsr #26
	smlabb	r1, r5, r8, r1
	mov	r4, r4, asl #1
	ldrh	r4, [lr, r4]
	ldrh	r6, [lr, r6]
	mov	ip, ip, asl #1
	ldrh	ip, [lr, ip]
	mov	r1, r1, asl #1
	ldrh	r1, [lr, r1]
	add	r6, r4, r6
	add	r6, r6, ip
	add	r1, r6, r1
	ldr	r6, [sp, #40]
	.loc 3 311 0
	ldr	r9, [sp, #36]
	ldr	r10, [sp, #8]
	.loc 3 307 0
	strh	r1, [r6, #-16]	@ movhi
.LVL5659:
	.loc 3 311 0
	ldrb	r6, [r7, r2, asr #16]	@ zero_extendqisi2
	uxth	r3, r3
	add	r1, sp, #96
	ldr	r4, [sp, #4]
	ldr	r8, [sp, #68]
	add	r0, r1, r0, asl #2
	mul	ip, r9, r3
	mul	r3, r10, r3
	ldr	r0, [r0, #-8]
	uxth	r1, r2
	ldrb	r2, [r4, r2, asr #16]	@ zero_extendqisi2
	add	r4, r8, fp
	ldr	r8, [sp, #20]
	mov	ip, ip, lsr #26
	and	r4, r4, r8
	ldrb	r8, [r0, r6]	@ zero_extendqisi2
	ldrb	r6, [r0, r2]	@ zero_extendqisi2
	mov	r3, r3, lsr #26
	smlabb	r3, r5, r6, r3
	smlabb	ip, r5, r8, ip
	ldr	r6, [sp, #4]
	mov	ip, ip, asl #1
	mov	r3, r3, asl #1
	ldrh	r3, [lr, r3]
	mul	r2, r10, r1
	ldrh	ip, [lr, ip]
	mul	r1, r9, r1
	ldrb	r6, [r6, r4, asr #16]	@ zero_extendqisi2
	ldrb	r4, [r7, r4, asr #16]	@ zero_extendqisi2
	add	ip, r3, ip
	.loc 3 312 0
	ldr	r3, [sp, #32]
	.loc 3 311 0
	ldrb	r6, [r0, r6]	@ zero_extendqisi2
	ldrb	r0, [r0, r4]	@ zero_extendqisi2
	.loc 3 312 0
	add	r3, r3, #2
	.loc 3 311 0
	mov	r1, r1, lsr #26
	smlabb	r1, r5, r0, r1
	.loc 3 312 0
	mov	r0, r3
	.loc 3 311 0
	mov	r2, r2, lsr #26
	smlabb	r2, r5, r6, r2
	.loc 3 312 0
	str	r3, [sp, #32]
.LVL5660:
	.loc 3 311 0
	mov	r2, r2, asl #1
	.loc 3 306 0
	ldr	r3, [sp, #64]
	ldrh	r2, [lr, r2]
	.loc 3 311 0
	mov	r1, r1, asl #1
	ldr	r6, [sp, #40]
	ldrh	r1, [lr, r1]
	.loc 3 306 0
	cmp	r0, r3
	ldr	r3, [sp, #56]
	add	ip, ip, r2
	.loc 3 311 0
	add	ip, ip, r1
	add	fp, r3, fp
.LVL5661:
	add	r3, r6, #16
	strh	ip, [r6, #-8]	@ movhi
	str	r3, [sp, #40]
.LVL5662:
	.loc 3 306 0
	bne	.L6283
	.loc 3 316 0
	ldr	r0, [sp, #44]
.LVL5663:
	ldr	r3, [sp, #52]
	tst	r0, #1
	ldr	r0, [sp, #76]
	ldr	r1, [sp, #72]
	add	r2, r3, #2
	add	r2, r2, r0
	str	r2, [sp, #52]
	mov	r2, r1
	ldr	r3, [sp, #16]
	ldr	r4, [sp, #80]
	add	r4, r4, r3, asl #1
	add	r3, r1, #1
	ldr	r1, [sp, #56]
	mla	r4, r1, r2, r4
	ldr	r2, [sp, #48]
	add	r3, r2, r3, asl #4
	str	r3, [sp, #48]
	bne	.L6258
.LVL5664:
.L6297:
	.loc 3 317 0
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #60]
	and	r3, r3, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	ldr	r5, [sp, #20]
	ldrb	lr, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	and	ip, r4, r5
	cmp	lr, r3
	mvn	r2, ip
	movge	lr, #0
	movlt	lr, #1
	mov	r3, #64
	ldr	r9, [sp, #12]
	add	r1, sp, #96
	ldr	r6, [sp, #8]
	ldr	r8, [sp, #36]
	uxth	r2, r2
	add	lr, r1, lr, asl #2
	ldr	r7, [sp, #4]
	add	r4, r4, #65536
	ldr	lr, [lr, #-8]
	uxth	r0, ip
	mul	r1, r6, r2
	and	r4, r4, r5
	mul	r2, r8, r2
	ldrb	r5, [r9, ip, asr #16]	@ zero_extendqisi2
	mul	r6, r6, r0
	ldrb	ip, [r7, ip, asr #16]	@ zero_extendqisi2
	mul	r8, r8, r0
	ldrb	r7, [r7, r4, asr #16]	@ zero_extendqisi2
	ldrb	r0, [lr, r5]	@ zero_extendqisi2
	ldrb	r5, [r9, r4, asr #16]	@ zero_extendqisi2
	ldrb	r9, [lr, ip]	@ zero_extendqisi2
	ldrb	r5, [lr, r5]	@ zero_extendqisi2
	ldrb	ip, [lr, r7]	@ zero_extendqisi2
	mov	r4, r1, lsr #26
	mov	r2, r2, lsr #26
	smlabb	r2, r3, r0, r2
	smlabb	lr, r3, r9, r4
	mov	r0, r8, lsr #26
	mov	r1, r6, lsr #26
	smlabb	r1, r3, ip, r1
	smlabb	r3, r3, r5, r0
	ldr	r0, [sp, #84]
	mov	lr, lr, asl #1
	ldr	ip, [r0]
	mov	r0, r2, asl #1
	mov	r1, r1, asl #1
	ldrh	r2, [ip, lr]
	ldrh	lr, [ip, r0]
	mov	r3, r3, asl #1
	ldrh	r0, [ip, r1]
	add	r2, r2, lr
	ldrh	r1, [ip, r3]
	add	r3, r2, r0
	ldr	r2, [sp, #48]
	add	r3, r3, r1
	strh	r3, [r2]	@ movhi
	b	.L6258
.LVL5665:
.L6339:
.LBE1167:
.LBE1166:
.LBE1176:
	.loc 3 127 0
	ldr	r2, [r9, #48]
.LVL5666:
	mov	r1, #1
	mov	r0, #0
.LVL5667:
	bl	R_GetDrawColumnFunc
.LVL5668:
	mov	r3, r0
	mov	r0, r5
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5669:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5670:
.L6281:
	.cfi_restore_state
.LBB1177:
.LBB1170:
.LBB1168:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	lr, lr, asl #16
.LVL5671:
	.loc 3 325 0
	blt	.L6287
	.loc 3 328 0
	cmp	r4, lr
	blt	.L6286
.L6288:
	rsb	r4, lr, r4
.LVL5672:
	cmp	lr, r4
	ble	.L6288
.L6286:
	.loc 3 332 0
	add	r5, r4, #65536
.LVL5673:
	.loc 3 333 0
	cmp	r5, lr
	blt	.L6289
.L6290:
	rsb	r5, lr, r5
.LVL5674:
	cmp	r5, lr
	bge	.L6290
.L6289:
	.loc 3 345 0
	ldr	r0, [sp, #8]
.LVL5675:
	ldr	r1, [sp, #44]
.LVL5676:
	rsb	fp, r0, #65280
	ldr	r0, [sp, #52]
	add	r1, r1, #1
	add	r1, r1, r0
	ldr	r2, .L6346+32
	str	r1, [sp, #32]
	ldr	r1, [sp, #48]
	and	r3, r3, #3
.LVL5677:
	add	fp, fp, #255
	add	r10, r1, #8
	str	r3, [sp, #36]
	ldr	r8, [r2]
	mov	r7, #64
	mov	r6, r0
.LVL5678:
	str	fp, [sp, #20]
	b	.L6291
.LVL5679:
.L6294:
	ldr	r2, .L6346+36
	ldr	r0, [sp, #24]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	mvn	r3, r4
	cmp	r2, r0
	movge	r2, #0
	movlt	r2, #1
	ldr	r0, [sp, #8]
	ldr	r9, [sp, #4]
	mul	ip, r0, r1
	str	ip, [sp, #28]
	add	ip, sp, #96
	add	r2, ip, r2, asl #2
	ldr	ip, [sp, #20]
	ldrb	r9, [r9, r5, asr #16]	@ zero_extendqisi2
	mul	r1, ip, r1
	ldr	ip, [r2, #-8]
	ldr	r2, [sp, #12]
	uxth	r3, r3
	ldrb	fp, [r2, r5, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	mul	r2, r2, r3
	mul	r3, r0, r3
	ldr	r0, [sp, #28]
	ldrb	fp, [ip, fp]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	smlabb	r0, r7, r9, r0
	ldr	r9, [sp, #12]
	mov	r1, r1, lsr #26
	ldrb	r9, [r9, r4, asr #16]	@ zero_extendqisi2
	smlabb	r1, r7, fp, r1
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	ldr	fp, [sp, #4]
	mov	r2, r2, lsr #26
	ldrb	fp, [fp, r4, asr #16]	@ zero_extendqisi2
	smlabb	r2, r7, r9, r2
	ldrb	ip, [ip, fp]	@ zero_extendqisi2
	mov	r3, r3, lsr #26
	mov	r0, r0, asl #1
	mov	r1, r1, asl #1
	ldrh	r0, [r8, r0]
	ldrh	r1, [r8, r1]
	smlabb	r3, r7, ip, r3
	mov	r2, r2, asl #1
	ldrh	r2, [r8, r2]
	add	r0, r1, r0
	add	r0, r0, r2
	.loc 3 348 0
	ldr	r2, [sp, #16]
	.loc 3 345 0
	mov	r3, r3, asl #1
	ldrh	r3, [r8, r3]
	.loc 3 348 0
	add	r4, r4, r2
.LVL5680:
	.loc 3 350 0
	add	r5, r5, r2
.LVL5681:
	.loc 3 348 0
	cmp	r4, lr
	.loc 3 345 0
	add	r0, r0, r3
	.loc 3 348 0
	rsbge	r4, lr, r4
	.loc 3 350 0
	cmp	r5, lr
	.loc 3 345 0
	strh	r0, [r10, #-8]	@ movhi
	.loc 3 346 0
	add	r6, r6, #1
.LVL5682:
	.loc 3 350 0
	rsbge	r5, lr, r5
.LVL5683:
	add	r10, r10, #8
.LVL5684:
.L6291:
	.loc 3 345 0
	ldr	r2, [sp, #36]
	and	r3, r6, #3
	add	r3, r2, r3, asl #2
	.loc 3 339 0
	ldr	r2, [sp, #32]
	.loc 3 345 0
	uxth	r1, r4
	.loc 3 339 0
	cmp	r6, r2
	bne	.L6294
.LBE1168:
.LBE1170:
.LBE1177:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5685:
.L6287:
	.cfi_restore_state
.LBB1178:
.LBB1171:
.LBB1169:
	.loc 3 326 0 discriminator 1
	adds	r4, lr, r4
.LVL5686:
	bpl	.L6286
.LVL5687:
	.loc 3 326 0 is_stmt 0
	adds	r4, lr, r4
.LVL5688:
	bmi	.L6287
	b	.L6286
.LVL5689:
.L6344:
.LBE1169:
.LBE1171:
.LBE1178:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r1, [fp, #12]
	ldr	r3, [r5]
	add	r1, r2, r1
	cmp	r1, r3
	bne	.L6269
	b	.L6271
.LVL5690:
.L6342:
	ldr	r1, .L6346+32
.LVL5691:
	mvn	r10, r4
	ldr	r7, [r1]
	ldr	r1, [sp, #8]
.LBB1179:
	.loc 3 289 0
	mov	r9, #64
	rsb	fp, r1, #65280
	ldr	r1, .L6346+36
	ldr	r2, [sp, #44]
	str	r1, [sp, #28]
	ldr	r1, [sp, #52]
	and	r3, r3, #3
.LVL5692:
	mov	r5, r1
.LVL5693:
	str	r3, [sp, #44]
	ldr	r3, [sp, #48]
	add	r2, r2, #1
	add	r2, r2, r1
	add	r8, r3, #8
	str	r2, [sp, #40]
	add	fp, fp, #255
	str	r10, [sp, #20]
	str	r8, [sp, #32]
.LVL5694:
.L6277:
	ldr	r2, [sp, #44]
	and	r3, r5, #3
	add	r3, r2, r3, asl #2
	ldr	r2, [sp, #28]
	ldr	r10, [sp, #8]
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	add	r0, sp, #96
	cmp	r1, r2
	movge	r1, #0
	movlt	r1, #1
	ldrh	r2, [sp, #20]
	add	r1, r0, r1, asl #2
	bic	r3, r4, #-16777216
	ldr	r8, [sp, #12]
	ldr	lr, [r1, #-8]
	bic	r3, r3, #8388608
	mul	r0, r10, r2
	ldr	r1, [sp, #4]
	mul	r2, fp, r2
	ldrb	r6, [r8, r3, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r1, r3, asr #16]	@ zero_extendqisi2
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	add	ip, r4, #65536
	mov	r2, r2, lsr #26
	uxth	r3, r4
	smlabb	r2, r9, r6, r2
	bic	ip, ip, #-16777216
	ldr	r6, [sp, #4]
	bic	ip, ip, #8388608
	str	r1, [sp, #36]
	mul	r1, r10, r3
	ldrb	r6, [r6, ip, asr #16]	@ zero_extendqisi2
	mul	r3, fp, r3
	ldrb	ip, [r8, ip, asr #16]	@ zero_extendqisi2
	ldrh	r10, [sp, #36]
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	mov	r0, r0, lsr #26
	ldrb	ip, [lr, ip]	@ zero_extendqisi2
	smlabb	r0, r9, r10, r0
	mov	r1, r1, lsr #26
	smlabb	r1, r9, r6, r1
	mov	r3, r3, lsr #26
	smlabb	r3, r9, ip, r3
	mov	r0, r0, asl #1
	mov	r2, r2, asl #1
	ldrh	r2, [r7, r2]
	ldrh	r0, [r7, r0]
	mov	r1, r1, asl #1
	ldrh	r1, [r7, r1]
	mov	r3, r3, asl #1
	ldrh	r3, [r7, r3]
	add	r0, r0, r2
	.loc 3 288 0
	ldr	r2, [sp, #40]
	.loc 3 290 0
	add	r5, r5, #1
.LVL5695:
	add	r0, r0, r1
	.loc 3 289 0
	add	r0, r0, r3
	.loc 3 288 0
	cmp	r5, r2
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	.loc 3 292 0
	add	r4, r4, r3
.LVL5696:
	rsb	r2, r3, r2
	.loc 3 289 0
	ldr	r3, [sp, #32]
	str	r2, [sp, #20]
	strh	r0, [r3, #-8]	@ movhi
	add	r3, r3, #8
	str	r3, [sp, #32]
.LVL5697:
	.loc 3 288 0
	bne	.L6277
.LBE1179:
	.loc 3 357 0
	add	sp, sp, #100
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5698:
.L6299:
	.cfi_restore_state
.LBB1180:
	.loc 3 269 0
	mov	r2, #0
	str	r2, [sp, #8]
	b	.L6275
.LVL5699:
.L6343:
.LBE1180:
.LBB1181:
	.loc 3 197 0
	mvn	r0, fp
	ldr	r1, [sp, #16]
	uxth	r0, r0
	b	.L6336
.LVL5700:
.L6330:
	ldr	r3, [r5, #32]
	str	r3, [sp, #12]
	ldr	r3, [r5, #40]
	str	r3, [sp, #4]
	b	.L6270
.LVL5701:
.L6265:
.LBE1181:
	.loc 3 186 0
	tst	r3, #2
	beq	.L6264
.LBB1182:
	.loc 3 188 0
	mov	r0, fp
.LVL5702:
	ldr	r1, [sp, #16]
.LVL5703:
	bl	__aeabi_idiv
.LVL5704:
	.loc 3 190 0
	ldr	r3, [sp, #44]
	.loc 3 189 0
	add	r8, r8, r0
	.loc 3 190 0
	rsb	r3, r0, r3
	.loc 3 191 0
	add	r4, r4, fp
.LVL5705:
	.loc 3 189 0
	str	r8, [r5, #4]
.LVL5706:
	.loc 3 190 0
	str	r3, [sp, #44]
.LVL5707:
	b	.L6264
.LVL5708:
.L6345:
	ldr	r2, [sp, #8]
	and	r3, r3, #3
.LVL5709:
	rsb	r2, r2, #65280
	str	r3, [sp, #60]
	add	r3, r2, #255
	str	r3, [sp, #36]
	ldr	r3, .L6346+32
	str	r3, [sp, #84]
	ldr	r3, .L6346+36
	str	r3, [sp, #28]
	b	.L6297
.L6347:
	.align	2
.L6346:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT16
	.word	R_FlushWhole16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	V_Palette16
	.word	filter_ditherMatrix
	.word	viewheight
.LBE1182:
	.cfi_endproc
.LFE69:
	.size	R_DrawColumn16_LinearUV_LinearZ, .-R_DrawColumn16_LinearUV_LinearZ
	.align	2
	.type	R_DrawFuzzColumn16_RoundedUV_PointZ, %function
R_DrawFuzzColumn16_RoundedUV_PointZ:
.LFB179:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5710:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 126 0
	ldr	r7, .L6386
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL5711:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	mov	r4, r0
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL5712:
	.loc 3 126 0
	bgt	.L6383
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L6386+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL5713:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL5714:
	bmi	.L6348
.LVL5715:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L6354
.LVL5716:
.L6357:
	.loc 3 215 0
	ldr	r5, .L6386+8
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L6355
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L6384
.L6363:
	.loc 3 228 0 is_stmt 1
	ldr	r3, .L6386+12
	.loc 3 224 0
	mov	r8, #4
.LVL5717:
	.loc 3 221 0
	ldr	lr, [r4]
	.loc 3 228 0
	ldr	r9, [r3]
	.loc 3 223 0
	ldmib	r4, {r2, r3}
	str	r3, [r5, #8]
	str	r3, [r5, #32]
	mov	r3, #0
	.loc 3 231 0
	ldr	r0, .L6386+16
	.loc 3 232 0
	ldr	r1, .L6386+20
	.loc 3 224 0
	ldr	r6, .L6386+24
	.loc 3 230 0
	ldr	ip, .L6386+28
	.loc 3 232 0
	stmib	r7, {r0, r1}
.LVL5718:
	.loc 3 228 0
	str	r9, [r5, #1012]
	.loc 3 224 0
	str	r8, [r6, #-1204]
	.loc 3 221 0
	str	lr, [r5, #12]
	.loc 3 222 0
	str	r2, [r5, #4]
	str	r2, [r5, #16]
.LVL5719:
	.loc 3 230 0
	str	ip, [r7]
.L6365:
	.loc 3 245 0
	add	r3, r3, #1
	str	r3, [r5]
.L6348:
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5720:
.L6354:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L6357
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L6358
.LBB1183:
	.loc 3 181 0
	mvn	r0, r10
.LVL5721:
	mov	r1, r8
	str	r3, [sp, #4]
	uxth	r0, r0
.LVL5722:
.L6382:
.LBE1183:
.LBB1184:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL5723:
	.loc 3 190 0
	ldr	r3, [sp, #4]
	.loc 3 189 0
	add	r6, r0, r6
	str	r6, [r4, #4]
	.loc 3 190 0
	rsb	fp, r0, fp
.LVL5724:
.L6359:
.LBE1184:
	.loc 3 194 0
	cmp	r5, r9
	beq	.L6360
	.loc 3 195 0
	tst	r3, #4
	beq	.L6361
.LBB1185:
	.loc 3 197 0
	mvn	r0, r10
	mov	r1, r8
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL5725:
	.loc 3 198 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 199 0
	rsb	fp, r0, fp
.LVL5726:
.L6360:
.LBE1185:
	.loc 3 208 0
	cmp	fp, #0
	bgt	.L6357
	b	.L6348
.L6384:
	.loc 3 216 0
	ldr	r2, .L6386+24
	ldr	r2, [r2, #-1204]
	cmp	r2, #4
	beq	.L6385
.L6355:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5727:
	.loc 3 219 0
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L6363
.L6364:
	.loc 3 235 0
	ldr	r1, [r4, #4]
	.loc 3 236 0
	ldr	r2, [r4, #8]
	.loc 3 235 0
	add	r3, r5, r3, asl #2
	.loc 3 238 0
	ldr	r0, [r5, #4]
	.loc 3 235 0
	str	r1, [r3, #16]
	.loc 3 236 0
	str	r2, [r3, #32]
	.loc 3 235 0
	ldr	r3, .L6386+8
	.loc 3 238 0
	cmp	r1, r0
	.loc 3 239 0
	strgt	r1, [r3, #4]
	.loc 3 240 0
	ldr	r3, [r5, #8]
	ldr	r1, .L6386+8
	cmp	r2, r3
	.loc 3 241 0
	strlt	r2, [r1, #8]
	ldr	r3, [r1]
	b	.L6365
.LVL5728:
.L6383:
	.loc 3 127 0
	ldr	r2, [r7, #48]
	mov	r1, #1
	mov	r0, #3
.LVL5729:
	bl	R_GetDrawColumnFunc
.LVL5730:
	mov	r3, r0
	mov	r0, r4
	.loc 3 357 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5731:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5732:
.L6385:
	.cfi_restore_state
	.loc 3 216 0 discriminator 1
	ldr	r2, [r5, #12]
	ldr	r1, [r4]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L6355
	b	.L6364
.L6361:
	.loc 3 201 0
	tst	r3, #8
	beq	.L6360
.LBB1186:
	.loc 3 203 0
	uxth	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv
.LVL5733:
	.loc 3 204 0
	rsb	r5, r0, r5
	str	r5, [r4, #8]
	.loc 3 205 0
	rsb	fp, r0, fp
.LVL5734:
	b	.L6360
.LVL5735:
.L6358:
.LBE1186:
	.loc 3 186 0
	tst	r3, #2
	beq	.L6359
	str	r3, [sp, #4]
.LBB1187:
	.loc 3 188 0
	uxth	r0, r10
.LVL5736:
	mov	r1, r8
	b	.L6382
.L6387:
	.align	2
.L6386:
	.word	.LANCHOR1
	.word	viewheight
	.word	.LANCHOR0
	.word	fullcolormap
	.word	R_FlushHTFuzz16
	.word	R_FlushQuadFuzz16
	.word	.LANCHOR2
	.word	R_FlushWholeFuzz16
.LBE1187:
	.cfi_endproc
.LFE179:
	.size	R_DrawFuzzColumn16_RoundedUV_PointZ, .-R_DrawFuzzColumn16_RoundedUV_PointZ
	.align	2
	.type	R_DrawTranslatedColumn16_RoundedUV_PointZ, %function
R_DrawTranslatedColumn16_RoundedUV_PointZ:
.LFB143:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5737:
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	mov	r2, r3
	.loc 3 126 0
	ldr	r9, .L6482
	.loc 3 113 0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	.loc 3 117 0
	str	r3, [sp, #24]
.LVL5738:
	.loc 3 126 0
	ldr	r3, [r9, #64]
	.loc 3 113 0
	mov	r6, r0
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL5739:
	.loc 3 126 0
	bgt	.L6475
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL5740:
	.loc 3 157 0
	subs	r7, r8, r5
.LVL5741:
	bmi	.L6388
	.loc 3 171 0
	ldr	r3, .L6482+4
	.loc 3 174 0
	ldr	r2, [r0, #60]
.LVL5742:
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	ldr	r2, [sp, #24]
	rsb	r3, r3, r5
	mla	r4, r2, r3, r4
.LVL5743:
	.loc 3 174 0
	bne	.L6476
.LVL5744:
.L6392:
	.loc 3 215 0
	ldr	r8, .L6482+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L6398
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L6477
.L6399:
	.loc 3 224 0 is_stmt 1
	mov	r5, #1
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 221 0
	ldr	lr, [r6]
	.loc 3 223 0
	str	r2, [r8, #8]
	str	r2, [r8, #32]
	mov	r2, #0
	.loc 3 224 0
	ldr	r1, .L6482+12
	.loc 3 231 0
	ldr	r0, .L6482+16
	.loc 3 224 0
	str	r5, [r1, #-1204]
	.loc 3 232 0
	ldr	r1, .L6482+20
	.loc 3 233 0
	ldr	r10, .L6482+24
.LVL5745:
	.loc 3 230 0
	ldr	ip, .L6482+28
	.loc 3 232 0
	stmib	r9, {r0, r1}
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, r10, r3, asl #3
	.loc 3 221 0
	str	lr, [r8, #12]
	.loc 3 233 0
	str	r3, [sp, #36]
.LVL5746:
	.loc 3 230 0
	str	ip, [r9]
.L6401:
.LVL5747:
.LBB1188:
	.loc 3 274 0
	ldr	r3, [r6, #40]
	.loc 3 251 0
	ldr	r5, [r6, #32]
.LVL5748:
	.loc 3 274 0
	mov	r1, r3
	str	r3, [sp, #20]
.LBE1188:
	.loc 3 245 0
	add	r3, r2, #1
	str	r3, [r8]
.LBB1195:
	.loc 3 252 0
	ldr	r3, [r6, #44]
	.loc 3 275 0
	cmp	r5, r1
	.loc 3 252 0
	str	r3, [sp, #8]
.LVL5749:
	.loc 3 253 0
	ldr	r3, [r6, #52]
.LVL5750:
	.loc 3 275 0
	moveq	r9, #0
	.loc 3 253 0
	str	r3, [sp, #12]
.LVL5751:
	.loc 3 273 0
	ldr	r3, [r6, #36]
.LVL5752:
	str	r3, [sp, #16]
.LVL5753:
	.loc 3 275 0
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r9, [r6, #29]	@ zero_extendqisi2
.L6404:
.LVL5754:
	.loc 3 286 0 is_stmt 1
	ldr	r8, [r6, #24]
	.loc 3 278 0
	add	fp, r7, #1
.LVL5755:
	.loc 3 286 0
	cmp	r8, #128
	beq	.L6478
	.loc 3 294 0
	cmp	r8, #0
	bne	.L6407
.LVL5756:
	.loc 3 297 0
	mov	r8, #128
	mov	r6, #126
.LVL5757:
	ldr	r2, .L6482+32
	ldr	r3, .L6482+36
.LVL5758:
	str	r2, [sp, #28]
	ldr	r2, [sp, #36]
	mov	r9, r9, lsr #2
.LVL5759:
	add	r10, r2, #8
	add	r9, r3, r9, asl #6
.LVL5760:
.L6409:
	mov	lr, r4, asr #16
	cmp	lr, #0
	movle	r2, #0
	subgt	r2, lr, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldr	ip, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	fp, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5761:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [r9, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r7, r7, #1
.LVL5762:
	.loc 3 297 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 300 0
	ldr	r2, [sp, #24]
	.loc 3 296 0
	cmn	r7, #1
	.loc 3 300 0
	add	r4, r4, r2
.LVL5763:
	.loc 3 297 0
	ldr	r2, [sp, #8]
	add	r10, r10, #8
.LVL5764:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	smlabb	r3, r8, r3, r6
	ldrh	r3, [fp, r3]
	strh	r3, [r10, #-16]	@ movhi
.LVL5765:
	.loc 3 296 0
	bne	.L6409
.LVL5766:
.L6388:
.LBE1195:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5767:
.L6476:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L6392
	.loc 3 178 0
	cmp	r5, #0
	beq	.L6393
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L6394
.LBB1196:
	.loc 3 181 0
	mvn	fp, r10
	uxth	fp, fp
	mov	r0, fp
.LVL5768:
	mov	r1, r2
.L6472:
.LBE1196:
.LBB1197:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL5769:
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL5770:
	.loc 3 189 0
	str	r5, [r6, #4]
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL5771:
.L6393:
.LBE1197:
	.loc 3 194 0
	ldr	r3, .L6482+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L6395
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L6479
	.loc 3 201 0
	tst	r3, #8
	beq	.L6395
.LBB1198:
	.loc 3 203 0
	uxth	r0, r10
	ldr	r1, [sp, #24]
	bl	__aeabi_idiv
.LVL5772:
	.loc 3 204 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL5773:
.L6395:
.LBE1198:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L6392
	b	.L6388
.L6477:
	.loc 3 216 0
	ldr	r2, .L6482+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L6480
.L6398:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5774:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L6399
.L6400:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L6482+8
	.loc 3 243 0
	ldr	r10, .L6482+24
.LVL5775:
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	ldr	ip, .L6482+8
	cmp	r1, r0
	.loc 3 243 0
	add	r3, r10, r3, asl #1
	.loc 3 241 0
	strlt	r1, [ip, #8]
	ldr	r2, [r8]
	.loc 3 243 0
	str	r3, [sp, #36]
.LVL5776:
	b	.L6401
.LVL5777:
.L6407:
.LBB1199:
.LBB1189:
	.loc 3 303 0
	sub	r3, r8, #1
.LVL5778:
	.loc 3 304 0
	tst	r3, r8
	bne	.L6410
.LBB1190:
	.loc 3 305 0
	mov	r10, r3, asl #16
	mvn	r10, r10, lsr #16
	.loc 3 306 0
	sub	r3, r7, #1
.LVL5779:
	cmn	r3, #1
	str	r3, [sp, #44]
	.loc 3 305 0
	mvn	r10, r10, asl #16
.LVL5780:
	.loc 3 306 0
	mov	r0, r3
.LVL5781:
	beq	.L6481
	mov	r8, r4
.LVL5782:
	mov	r6, r0
.LVL5783:
	ldr	r3, .L6482+36
	mov	r2, r9, lsr #2
	str	r3, [sp, #56]
	.loc 3 307 0
	add	r3, r3, r2, asl #6
	mov	fp, r3
	ldr	r3, [sp, #36]
	ldr	r1, .L6482+32
.LVL5784:
	add	r9, r3, #16
.LVL5785:
	ldr	r3, [sp, #24]
	str	r2, [sp, #60]
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	str	r1, [sp, #28]
	str	r2, [sp, #32]
	str	r3, [sp, #40]
	str	r7, [sp, #48]
	str	r4, [sp, #52]
.LVL5786:
.L6414:
	and	r4, r8, r10
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	ldr	r2, [sp, #28]
	ldr	ip, [sp, #16]
	ldr	r7, [r2]
	add	r2, r8, #65536
	subgt	r3, r3, #1
	and	r2, r2, r10
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5787:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, r8
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #8]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	mov	r0, #126
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	mov	r1, #128
	.loc 3 311 0
	and	r4, r4, r10
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	.loc 3 307 0
	smlabb	r2, r1, r2, r0
	ldrh	r2, [r7, r2]
	.loc 3 311 0
	ldr	r1, [sp, #28]
	.loc 3 307 0
	strh	r2, [r9, #-16]	@ movhi
.LVL5788:
	ldr	r2, [sp, #40]
	.loc 3 311 0
	ldr	ip, [sp, #16]
	add	r2, r2, r8
	subgt	r3, r3, #1
	and	r2, r2, r10
	ldr	r7, [r1]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5789:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldr	r2, [sp, #32]
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	add	r8, r2, r8
.LVL5790:
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	mov	r1, #126
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	.loc 3 306 0
	subs	r6, r6, #2
.LVL5791:
	.loc 3 311 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, #128
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r7, r3]
	add	r9, r9, #16
.LVL5792:
	strh	r3, [r9, #-24]	@ movhi
.LVL5793:
	.loc 3 306 0
	bpl	.L6414
	ldr	r2, [sp, #24]
	ldr	r4, [sp, #52]
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #32]
	mov	r3, r3, lsr #1
	add	r4, r4, r2, asl #1
	ldr	r7, [sp, #48]
	add	r2, r3, #1
	mla	r4, r1, r3, r4
	ldr	r3, [sp, #36]
	.loc 3 316 0
	tst	r7, #1
	add	r3, r3, r2, asl #4
	str	r3, [sp, #36]
	bne	.L6388
.LVL5794:
.L6430:
	.loc 3 317 0
	and	r6, r4, r10
	ldr	r2, [sp, #28]
	mov	r3, r6, asr #16
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	ip, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	add	r4, r4, #65536
	and	r10, r10, r4
.LVL5795:
	ldrb	r3, [r5, r10, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL5796:
	ldr	r3, [sp, #56]
	mov	r9, r6, asl #16
	add	r9, r3, r9, lsr #26
	ldr	r3, [sp, #60]
	ldr	r2, [sp, #12]
	ldrb	r3, [r9, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	add	r7, r7, r3, asl #7
	ldrh	r3, [r7, #126]
	strh	r3, [r2]	@ movhi
	b	.L6388
.LVL5797:
.L6475:
.LBE1190:
.LBE1189:
.LBE1199:
	.loc 3 127 0
	ldr	r2, [r9, #48]
.LVL5798:
	mov	r1, #1
	mov	r0, #2
.LVL5799:
	bl	R_GetDrawColumnFunc
.LVL5800:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5801:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5802:
.L6410:
	.cfi_restore_state
.LBB1200:
.LBB1193:
.LBB1191:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r8, r8, asl #16
.LVL5803:
	.loc 3 325 0
	blt	.L6419
	.loc 3 328 0
	cmp	r4, r8
	blt	.L6418
.L6420:
	rsb	r4, r8, r4
.LVL5804:
	cmp	r8, r4
	ble	.L6420
.L6418:
	.loc 3 332 0
	add	r6, r4, #65536
.LVL5805:
	.loc 3 333 0
	cmp	r6, r8
	blt	.L6421
.L6422:
	rsb	r6, r8, r6
.LVL5806:
	cmp	r6, r8
	bge	.L6422
.L6421:
	.loc 3 345 0
	ldr	r3, .L6482+36
	mov	r9, r9, lsr #2
.LVL5807:
	ldr	r2, [sp, #36]
	add	r9, r3, r9, asl #6
	ldr	r7, [sp, #24]
	add	r10, r2, #8
	str	r9, [sp, #24]
.LVL5808:
	b	.L6423
.LVL5809:
.L6427:
	ldr	r2, .L6482+32
	cmp	r3, #0
	ldr	r9, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r6, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5810:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #24]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	mov	r1, #126
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	.loc 3 348 0
	add	r4, r4, r7
.LVL5811:
	.loc 3 345 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, #128
	smlabb	r3, r2, r3, r1
	.loc 3 350 0
	add	r6, r6, r7
.LVL5812:
	.loc 3 348 0
	cmp	r4, r8
	.loc 3 345 0
	ldrh	r3, [r9, r3]
	.loc 3 348 0
	rsbge	r4, r8, r4
	.loc 3 350 0
	cmp	r6, r8
	.loc 3 345 0
	strh	r3, [r10, #-8]	@ movhi
.LVL5813:
	.loc 3 350 0
	rsbge	r6, r8, r6
.LVL5814:
	add	r10, r10, #8
.LVL5815:
.L6423:
	.loc 3 339 0
	sub	fp, fp, #1
.LVL5816:
	cmn	fp, #1
	.loc 3 345 0
	mov	r3, r4, asr #16
	.loc 3 339 0
	bne	.L6427
.LBE1191:
.LBE1193:
.LBE1200:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5817:
.L6419:
	.cfi_restore_state
.LBB1201:
.LBB1194:
.LBB1192:
	.loc 3 326 0 discriminator 1
	adds	r4, r8, r4
.LVL5818:
	bpl	.L6418
.LVL5819:
	.loc 3 326 0 is_stmt 0
	adds	r4, r8, r4
.LVL5820:
	bmi	.L6419
	b	.L6418
.LVL5821:
.L6480:
.LBE1192:
.LBE1194:
.LBE1201:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L6398
	b	.L6400
.LVL5822:
.L6478:
.LBB1202:
	.loc 3 289 0
	mov	fp, #126
	ldr	r2, .L6482+32
	ldr	r3, .L6482+36
.LVL5823:
	str	r2, [sp, #28]
	ldr	r2, [sp, #36]
	mov	r9, r9, lsr #2
.LVL5824:
	str	r8, [sp, #32]
	add	r10, r2, #8
	add	r9, r3, r9, asl #6
.LVL5825:
.L6406:
	bic	r6, r4, #-16777216
	bic	r6, r6, #8388608
	ldr	r3, [sp, #28]
	movs	r2, r6, asr #16
	ldr	ip, [sp, #16]
	ldr	r8, [r3]
	subne	r2, r2, #1
	add	r3, r4, #65536
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	bic	r3, r3, #-16777216
	bic	r3, r3, #8388608
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5826:
	mov	r6, r6, asr #8
	uxtb	r6, r6
	ldrb	r3, [r9, r6, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r7, r7, #1
.LVL5827:
	.loc 3 289 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 292 0
	ldr	r2, [sp, #24]
	.loc 3 288 0
	cmn	r7, #1
	.loc 3 292 0
	add	r4, r4, r2
.LVL5828:
	.loc 3 289 0
	ldr	r2, [sp, #8]
	add	r10, r10, #8
.LVL5829:
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldrh	r2, [sp, #32]
	smlabb	r3, r2, r3, fp
	ldrh	r3, [r8, r3]
	strh	r3, [r10, #-16]	@ movhi
.LVL5830:
	.loc 3 288 0
	bne	.L6406
.LBE1202:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5831:
.L6479:
	.cfi_restore_state
.LBB1203:
	.loc 3 197 0
	mvn	r0, r10
	ldr	r1, [sp, #24]
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL5832:
	.loc 3 198 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL5833:
.LBE1203:
	b	.L6395
.LVL5834:
.L6394:
	.loc 3 186 0
	tst	r3, #2
	beq	.L6393
.LBB1204:
	.loc 3 188 0
	uxth	fp, r10
	mov	r0, fp
.LVL5835:
	ldr	r1, [sp, #24]
	b	.L6472
.LVL5836:
.L6481:
	mov	r3, r9, lsr #2
	str	r3, [sp, #60]
	ldr	r3, .L6482+32
	str	r3, [sp, #28]
	ldr	r3, .L6482+36
	str	r3, [sp, #56]
	b	.L6430
.L6483:
	.align	2
.L6482:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	R_FlushWhole16
	.word	V_Palette16
	.word	filter_roundedUVMap
	.word	viewheight
.LBE1204:
	.cfi_endproc
.LFE143:
	.size	R_DrawTranslatedColumn16_RoundedUV_PointZ, .-R_DrawTranslatedColumn16_RoundedUV_PointZ
	.align	2
	.type	R_DrawTLColumn16_RoundedUV_PointZ, %function
R_DrawTLColumn16_RoundedUV_PointZ:
.LFB107:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5837:
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	mov	r2, r3
	.loc 3 126 0
	ldr	r9, .L6578
	.loc 3 113 0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	.loc 3 117 0
	str	r3, [sp, #24]
.LVL5838:
	.loc 3 126 0
	ldr	r3, [r9, #64]
	.loc 3 113 0
	mov	r6, r0
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL5839:
	.loc 3 126 0
	bgt	.L6571
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL5840:
	.loc 3 157 0
	subs	r7, r8, r5
.LVL5841:
	bmi	.L6484
	.loc 3 171 0
	ldr	r3, .L6578+4
	.loc 3 174 0
	ldr	r2, [r0, #60]
.LVL5842:
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	ldr	r2, [sp, #24]
	rsb	r3, r3, r5
	mla	r4, r2, r3, r4
.LVL5843:
	.loc 3 174 0
	bne	.L6572
.LVL5844:
.L6488:
	.loc 3 215 0
	ldr	r8, .L6578+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L6494
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L6573
.L6495:
	.loc 3 224 0 is_stmt 1
	mov	r5, #2
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 226 0
	ldr	r3, .L6578+12
	.loc 3 221 0
	ldr	lr, [r6]
	.loc 3 226 0
	ldr	r0, [r3]
	.loc 3 223 0
	str	r2, [r8, #8]
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 223 0
	str	r2, [r8, #32]
	mov	r2, #0
	.loc 3 224 0
	ldr	r1, .L6578+16
	.loc 3 226 0
	str	r0, [r8, #1008]
	.loc 3 224 0
	str	r5, [r1, #-1204]
	.loc 3 231 0
	ldr	r0, .L6578+20
	.loc 3 232 0
	ldr	r1, .L6578+24
	.loc 3 233 0
	ldr	r10, .L6578+28
.LVL5845:
	.loc 3 230 0
	ldr	ip, .L6578+32
	.loc 3 232 0
	stmib	r9, {r0, r1}
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, r10, r3, asl #3
	.loc 3 221 0
	str	lr, [r8, #12]
	.loc 3 233 0
	str	r3, [sp, #36]
.LVL5846:
	.loc 3 230 0
	str	ip, [r9]
.L6497:
.LVL5847:
.LBB1205:
	.loc 3 274 0
	ldr	r3, [r6, #40]
	.loc 3 251 0
	ldr	r5, [r6, #32]
.LVL5848:
	.loc 3 274 0
	mov	r1, r3
	str	r3, [sp, #20]
.LBE1205:
	.loc 3 245 0
	add	r3, r2, #1
	str	r3, [r8]
.LBB1212:
	.loc 3 252 0
	ldr	r3, [r6, #44]
	.loc 3 275 0
	cmp	r5, r1
	.loc 3 252 0
	str	r3, [sp, #12]
.LVL5849:
	.loc 3 273 0
	ldr	r3, [r6, #36]
.LVL5850:
	.loc 3 275 0
	moveq	r9, #0
	.loc 3 273 0
	str	r3, [sp, #16]
.LVL5851:
	.loc 3 275 0
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r9, [r6, #29]	@ zero_extendqisi2
.L6500:
.LVL5852:
	.loc 3 286 0 is_stmt 1
	ldr	r8, [r6, #24]
	.loc 3 278 0
	add	fp, r7, #1
.LVL5853:
	.loc 3 286 0
	cmp	r8, #128
	beq	.L6574
	.loc 3 294 0
	cmp	r8, #0
	bne	.L6503
.LVL5854:
	.loc 3 297 0
	mov	r8, #128
	mov	r6, #126
.LVL5855:
	ldr	r2, .L6578+36
	ldr	r3, .L6578+40
.LVL5856:
	str	r2, [sp, #28]
	ldr	r2, [sp, #36]
	mov	r9, r9, lsr #2
.LVL5857:
	add	r10, r2, #8
	add	r9, r3, r9, asl #6
.LVL5858:
.L6505:
	mov	lr, r4, asr #16
	cmp	lr, #0
	movle	r2, #0
	subgt	r2, lr, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldr	ip, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	fp, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5859:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [r9, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r7, r7, #1
.LVL5860:
	.loc 3 297 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 300 0
	ldr	r2, [sp, #24]
	.loc 3 297 0
	smlabb	r3, r8, r3, r6
	ldrh	r3, [fp, r3]
	.loc 3 296 0
	cmn	r7, #1
	.loc 3 297 0
	strh	r3, [r10, #-8]	@ movhi
	.loc 3 300 0
	add	r4, r4, r2
.LVL5861:
	add	r10, r10, #8
.LVL5862:
	.loc 3 296 0
	bne	.L6505
.LVL5863:
.L6484:
.LBE1212:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5864:
.L6572:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L6488
	.loc 3 178 0
	cmp	r5, #0
	beq	.L6489
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L6490
.LBB1213:
	.loc 3 181 0
	mvn	fp, r10
	uxth	fp, fp
	mov	r0, fp
.LVL5865:
	mov	r1, r2
.L6568:
.LBE1213:
.LBB1214:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL5866:
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL5867:
	.loc 3 189 0
	str	r5, [r6, #4]
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL5868:
.L6489:
.LBE1214:
	.loc 3 194 0
	ldr	r3, .L6578+44
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L6491
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L6575
	.loc 3 201 0
	tst	r3, #8
	beq	.L6491
.LBB1215:
	.loc 3 203 0
	uxth	r0, r10
	ldr	r1, [sp, #24]
	bl	__aeabi_idiv
.LVL5869:
	.loc 3 204 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL5870:
.L6491:
.LBE1215:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L6488
	b	.L6484
.L6573:
	.loc 3 216 0
	ldr	r2, .L6578+16
	ldr	r2, [r2, #-1204]
	cmp	r2, #2
	beq	.L6576
.L6494:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5871:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L6495
.L6496:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L6578+8
	.loc 3 243 0
	ldr	r10, .L6578+28
.LVL5872:
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	ldr	ip, .L6578+8
	cmp	r1, r0
	.loc 3 243 0
	add	r3, r10, r3, asl #1
	.loc 3 241 0
	strlt	r1, [ip, #8]
	ldr	r2, [r8]
	.loc 3 243 0
	str	r3, [sp, #36]
.LVL5873:
	b	.L6497
.LVL5874:
.L6503:
.LBB1216:
.LBB1206:
	.loc 3 303 0
	sub	r3, r8, #1
.LVL5875:
	.loc 3 304 0
	tst	r3, r8
	bne	.L6506
.LBB1207:
	.loc 3 305 0
	mov	r10, r3, asl #16
	mvn	r10, r10, lsr #16
	.loc 3 306 0
	sub	r3, r7, #1
.LVL5876:
	cmn	r3, #1
	str	r3, [sp, #44]
	.loc 3 305 0
	mvn	r10, r10, asl #16
.LVL5877:
	.loc 3 306 0
	mov	r0, r3
.LVL5878:
	beq	.L6577
	mov	r8, r4
.LVL5879:
	mov	r6, r0
.LVL5880:
	ldr	r3, .L6578+40
	mov	r2, r9, lsr #2
	str	r3, [sp, #56]
	.loc 3 307 0
	add	r3, r3, r2, asl #6
	mov	fp, r3
	ldr	r3, [sp, #36]
	ldr	r1, .L6578+36
.LVL5881:
	add	r9, r3, #16
.LVL5882:
	ldr	r3, [sp, #24]
	str	r2, [sp, #60]
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	str	r1, [sp, #28]
	str	r2, [sp, #32]
	str	r3, [sp, #40]
	str	r7, [sp, #48]
	str	r4, [sp, #52]
.LVL5883:
.L6510:
	and	r4, r8, r10
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	ldr	r2, [sp, #28]
	ldr	ip, [sp, #16]
	ldr	r7, [r2]
	add	r2, r8, #65536
	subgt	r3, r3, #1
	and	r2, r2, r10
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5884:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	mov	r1, #128
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	mov	r0, #126
	ldr	r2, [sp, #24]
	.loc 3 311 0
	ldr	ip, [sp, #16]
	add	r4, r2, r8
	.loc 3 307 0
	ldr	r2, [sp, #12]
	.loc 3 311 0
	and	r4, r4, r10
	.loc 3 307 0
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	.loc 3 307 0
	smlabb	r2, r1, r2, r0
	ldrh	r2, [r7, r2]
	.loc 3 311 0
	subgt	r3, r3, #1
	.loc 3 307 0
	strh	r2, [r9, #-16]	@ movhi
.LVL5885:
	.loc 3 311 0
	ldr	r2, [sp, #28]
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldr	r7, [r2]
	ldr	r2, [sp, #40]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r2, r2, r8
	and	r2, r2, r10
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5886:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldr	r2, [sp, #32]
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	add	r8, r2, r8
.LVL5887:
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	mov	r1, #126
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, #128
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r7, r3]
	.loc 3 306 0
	subs	r6, r6, #2
.LVL5888:
	.loc 3 311 0
	strh	r3, [r9, #-8]	@ movhi
.LVL5889:
	add	r9, r9, #16
.LVL5890:
	.loc 3 306 0
	bpl	.L6510
	ldr	r2, [sp, #24]
	ldr	r4, [sp, #52]
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #32]
	mov	r3, r3, lsr #1
	add	r4, r4, r2, asl #1
	ldr	r7, [sp, #48]
	add	r2, r3, #1
	mla	r4, r1, r3, r4
	ldr	r3, [sp, #36]
	.loc 3 316 0
	tst	r7, #1
	add	r3, r3, r2, asl #4
	str	r3, [sp, #36]
	bne	.L6484
.LVL5891:
.L6526:
	.loc 3 317 0
	and	r6, r4, r10
	ldr	r2, [sp, #28]
	mov	r3, r6, asr #16
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	ip, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	add	r4, r4, #65536
	and	r10, r10, r4
.LVL5892:
	ldrb	r3, [r5, r10, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL5893:
	ldr	r3, [sp, #56]
	mov	r9, r6, asl #16
	add	r9, r3, r9, lsr #26
	ldr	r3, [sp, #60]
	ldr	r2, [sp, #12]
	ldrb	r3, [r9, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	add	r7, r7, r3, asl #7
	ldrh	r3, [r7, #126]
	strh	r3, [r2]	@ movhi
	b	.L6484
.LVL5894:
.L6571:
.LBE1207:
.LBE1206:
.LBE1216:
	.loc 3 127 0
	mov	r0, #1
.LVL5895:
	ldr	r2, [r9, #48]
.LVL5896:
	mov	r1, r0
	bl	R_GetDrawColumnFunc
.LVL5897:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5898:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5899:
.L6506:
	.cfi_restore_state
.LBB1217:
.LBB1210:
.LBB1208:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r8, r8, asl #16
.LVL5900:
	.loc 3 325 0
	blt	.L6515
	.loc 3 328 0
	cmp	r4, r8
	blt	.L6514
.L6516:
	rsb	r4, r8, r4
.LVL5901:
	cmp	r8, r4
	ble	.L6516
.L6514:
	.loc 3 332 0
	add	r6, r4, #65536
.LVL5902:
	.loc 3 333 0
	cmp	r6, r8
	blt	.L6517
.L6518:
	rsb	r6, r8, r6
.LVL5903:
	cmp	r6, r8
	bge	.L6518
.L6517:
	.loc 3 345 0
	ldr	r3, .L6578+40
	mov	r9, r9, lsr #2
.LVL5904:
	ldr	r2, [sp, #36]
	add	r9, r3, r9, asl #6
	ldr	r7, [sp, #24]
	add	r10, r2, #8
	str	r9, [sp, #24]
.LVL5905:
	b	.L6519
.LVL5906:
.L6523:
	ldr	r2, .L6578+36
	cmp	r3, #0
	ldr	r9, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r6, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5907:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #24]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	mov	r1, #126
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, #128
	smlabb	r3, r2, r3, r1
	.loc 3 348 0
	add	r4, r4, r7
.LVL5908:
	.loc 3 350 0
	add	r6, r6, r7
.LVL5909:
	.loc 3 348 0
	cmp	r4, r8
	.loc 3 345 0
	ldrh	r3, [r9, r3]
	.loc 3 348 0
	rsbge	r4, r8, r4
	.loc 3 350 0
	cmp	r6, r8
	.loc 3 345 0
	strh	r3, [r10, #-8]	@ movhi
.LVL5910:
	.loc 3 350 0
	rsbge	r6, r8, r6
.LVL5911:
	add	r10, r10, #8
.LVL5912:
.L6519:
	.loc 3 339 0
	sub	fp, fp, #1
.LVL5913:
	cmn	fp, #1
	.loc 3 345 0
	mov	r3, r4, asr #16
	.loc 3 339 0
	bne	.L6523
.LBE1208:
.LBE1210:
.LBE1217:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5914:
.L6515:
	.cfi_restore_state
.LBB1218:
.LBB1211:
.LBB1209:
	.loc 3 326 0 discriminator 1
	adds	r4, r8, r4
.LVL5915:
	bpl	.L6514
.LVL5916:
	.loc 3 326 0 is_stmt 0
	adds	r4, r8, r4
.LVL5917:
	bmi	.L6515
	b	.L6514
.LVL5918:
.L6576:
.LBE1209:
.LBE1211:
.LBE1218:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L6494
	b	.L6496
.LVL5919:
.L6574:
.LBB1219:
	.loc 3 289 0
	mov	fp, #126
	ldr	r2, .L6578+36
	ldr	r3, .L6578+40
.LVL5920:
	str	r2, [sp, #28]
	ldr	r2, [sp, #36]
	mov	r9, r9, lsr #2
.LVL5921:
	str	r8, [sp, #32]
	add	r10, r2, #8
	add	r9, r3, r9, asl #6
.LVL5922:
.L6502:
	bic	r6, r4, #-16777216
	bic	r6, r6, #8388608
	ldr	r3, [sp, #28]
	movs	r2, r6, asr #16
	ldr	ip, [sp, #16]
	ldr	r8, [r3]
	subne	r2, r2, #1
	add	r3, r4, #65536
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	bic	r3, r3, #-16777216
	bic	r3, r3, #8388608
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5923:
	mov	r6, r6, asr #8
	uxtb	r6, r6
	ldrb	r3, [r9, r6, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r7, r7, #1
.LVL5924:
	.loc 3 289 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 292 0
	ldr	r2, [sp, #24]
	.loc 3 288 0
	cmn	r7, #1
	.loc 3 292 0
	add	r4, r4, r2
.LVL5925:
	.loc 3 289 0
	ldrh	r2, [sp, #32]
	add	r10, r10, #8
.LVL5926:
	smlabb	r3, r2, r3, fp
	ldrh	r3, [r8, r3]
	strh	r3, [r10, #-16]	@ movhi
.LVL5927:
	.loc 3 288 0
	bne	.L6502
.LBE1219:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5928:
.L6575:
	.cfi_restore_state
.LBB1220:
	.loc 3 197 0
	mvn	r0, r10
	ldr	r1, [sp, #24]
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL5929:
	.loc 3 198 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL5930:
.LBE1220:
	b	.L6491
.LVL5931:
.L6490:
	.loc 3 186 0
	tst	r3, #2
	beq	.L6489
.LBB1221:
	.loc 3 188 0
	uxth	fp, r10
	mov	r0, fp
.LVL5932:
	ldr	r1, [sp, #24]
	b	.L6568
.LVL5933:
.L6577:
	mov	r3, r9, lsr #2
	str	r3, [sp, #60]
	ldr	r3, .L6578+36
	str	r3, [sp, #28]
	ldr	r3, .L6578+40
	str	r3, [sp, #56]
	b	.L6526
.L6579:
	.align	2
.L6578:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	tranmap
	.word	.LANCHOR2
	.word	R_FlushHTTL16
	.word	R_FlushQuadTL16
	.word	.LANCHOR0+1220
	.word	R_FlushWholeTL16
	.word	V_Palette16
	.word	filter_roundedUVMap
	.word	viewheight
.LBE1221:
	.cfi_endproc
.LFE107:
	.size	R_DrawTLColumn16_RoundedUV_PointZ, .-R_DrawTLColumn16_RoundedUV_PointZ
	.align	2
	.type	R_DrawColumn16_RoundedUV_PointZ, %function
R_DrawColumn16_RoundedUV_PointZ:
.LFB71:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5934:
	.loc 3 117 0
	ldr	r3, [r0, #16]
	.loc 3 113 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 117 0
	mov	r2, r3
	.loc 3 126 0
	ldr	r9, .L6674
	.loc 3 113 0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	.loc 3 117 0
	str	r3, [sp, #24]
.LVL5935:
	.loc 3 126 0
	ldr	r3, [r9, #64]
	.loc 3 113 0
	mov	r6, r0
	.loc 3 126 0
	cmp	r2, r3
	.loc 3 121 0
	ldr	r10, [r0, #28]
.LVL5936:
	.loc 3 126 0
	bgt	.L6667
	.loc 3 149 0
	ldmib	r0, {r5, r8}
.LVL5937:
	.loc 3 157 0
	subs	r7, r8, r5
.LVL5938:
	bmi	.L6580
	.loc 3 171 0
	ldr	r3, .L6674+4
	.loc 3 174 0
	ldr	r2, [r0, #60]
.LVL5939:
	.loc 3 171 0
	ldr	r3, [r3]
	ldr	r4, [r0, #20]
	.loc 3 174 0
	cmp	r2, #0
	.loc 3 171 0
	ldr	r2, [sp, #24]
	rsb	r3, r3, r5
	mla	r4, r2, r3, r4
.LVL5940:
	.loc 3 174 0
	bne	.L6668
.LVL5941:
.L6584:
	.loc 3 215 0
	ldr	r8, .L6674+8
	ldr	r3, [r8]
	cmp	r3, #4
	beq	.L6590
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L6669
.L6591:
	.loc 3 224 0 is_stmt 1
	mov	r5, #1
	.loc 3 223 0
	ldr	r2, [r6, #8]
	.loc 3 222 0
	ldr	r3, [r6, #4]
	.loc 3 221 0
	ldr	lr, [r6]
	.loc 3 223 0
	str	r2, [r8, #8]
	str	r2, [r8, #32]
	mov	r2, #0
	.loc 3 224 0
	ldr	r1, .L6674+12
	.loc 3 231 0
	ldr	r0, .L6674+16
	.loc 3 224 0
	str	r5, [r1, #-1204]
	.loc 3 232 0
	ldr	r1, .L6674+20
	.loc 3 233 0
	ldr	r10, .L6674+24
.LVL5942:
	.loc 3 230 0
	ldr	ip, .L6674+28
	.loc 3 232 0
	stmib	r9, {r0, r1}
	.loc 3 222 0
	str	r3, [r8, #4]
	str	r3, [r8, #16]
	.loc 3 233 0
	add	r3, r10, r3, asl #3
	.loc 3 221 0
	str	lr, [r8, #12]
	.loc 3 233 0
	str	r3, [sp, #36]
.LVL5943:
	.loc 3 230 0
	str	ip, [r9]
.L6593:
.LVL5944:
.LBB1222:
	.loc 3 274 0
	ldr	r3, [r6, #40]
	.loc 3 251 0
	ldr	r5, [r6, #32]
.LVL5945:
	.loc 3 274 0
	mov	r1, r3
	str	r3, [sp, #20]
.LBE1222:
	.loc 3 245 0
	add	r3, r2, #1
	str	r3, [r8]
.LBB1229:
	.loc 3 252 0
	ldr	r3, [r6, #44]
	.loc 3 275 0
	cmp	r5, r1
	.loc 3 252 0
	str	r3, [sp, #12]
.LVL5946:
	.loc 3 273 0
	ldr	r3, [r6, #36]
.LVL5947:
	.loc 3 275 0
	moveq	r9, #0
	.loc 3 273 0
	str	r3, [sp, #16]
.LVL5948:
	.loc 3 275 0
	.loc 3 275 0 is_stmt 0 discriminator 1
	ldrneb	r9, [r6, #29]	@ zero_extendqisi2
.L6596:
.LVL5949:
	.loc 3 286 0 is_stmt 1
	ldr	r8, [r6, #24]
	.loc 3 278 0
	add	fp, r7, #1
.LVL5950:
	.loc 3 286 0
	cmp	r8, #128
	beq	.L6670
	.loc 3 294 0
	cmp	r8, #0
	bne	.L6599
.LVL5951:
	.loc 3 297 0
	mov	r8, #128
	mov	r6, #126
.LVL5952:
	ldr	r2, .L6674+32
	ldr	r3, .L6674+36
.LVL5953:
	str	r2, [sp, #28]
	ldr	r2, [sp, #36]
	mov	r9, r9, lsr #2
.LVL5954:
	add	r10, r2, #8
	add	r9, r3, r9, asl #6
.LVL5955:
.L6601:
	mov	lr, r4, asr #16
	cmp	lr, #0
	movle	r2, #0
	subgt	r2, lr, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldr	ip, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	ldr	fp, [r3]
	add	r3, r4, #65536
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5956:
	mov	r3, r4, asr #8
	uxtb	r3, r3
	ldrb	r3, [r9, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 296 0
	sub	r7, r7, #1
.LVL5957:
	.loc 3 297 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 300 0
	ldr	r2, [sp, #24]
	.loc 3 297 0
	smlabb	r3, r8, r3, r6
	ldrh	r3, [fp, r3]
	.loc 3 296 0
	cmn	r7, #1
	.loc 3 297 0
	strh	r3, [r10, #-8]	@ movhi
	.loc 3 300 0
	add	r4, r4, r2
.LVL5958:
	add	r10, r10, #8
.LVL5959:
	.loc 3 296 0
	bne	.L6601
.LVL5960:
.L6580:
.LBE1229:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL5961:
.L6668:
	.cfi_restore_state
	.loc 3 174 0 discriminator 1
	ldr	r3, [r0, #64]
	cmp	r3, #1
	bne	.L6584
	.loc 3 178 0
	cmp	r5, #0
	beq	.L6585
	.loc 3 179 0
	ldr	r3, [r0, #56]
	tst	r3, #1
	beq	.L6586
.LBB1230:
	.loc 3 181 0
	mvn	fp, r10
	uxth	fp, fp
	mov	r0, fp
.LVL5962:
	mov	r1, r2
.L6664:
.LBE1230:
.LBB1231:
	.loc 3 188 0
	bl	__aeabi_idiv
.LVL5963:
	.loc 3 189 0
	add	r5, r5, r0
	.loc 3 191 0
	add	r4, r4, fp
.LVL5964:
	.loc 3 189 0
	str	r5, [r6, #4]
	.loc 3 190 0
	rsb	r7, r0, r7
.LVL5965:
.L6585:
.LBE1231:
	.loc 3 194 0
	ldr	r3, .L6674+40
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r8, r3
	beq	.L6587
	.loc 3 195 0
	ldr	r3, [r6, #56]
	tst	r3, #4
	bne	.L6671
	.loc 3 201 0
	tst	r3, #8
	beq	.L6587
.LBB1232:
	.loc 3 203 0
	uxth	r0, r10
	ldr	r1, [sp, #24]
	bl	__aeabi_idiv
.LVL5966:
	.loc 3 204 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
	.loc 3 205 0
	rsb	r7, r0, r7
.LVL5967:
.L6587:
.LBE1232:
	.loc 3 208 0
	cmp	r7, #0
	bgt	.L6584
	b	.L6580
.L6669:
	.loc 3 216 0
	ldr	r2, .L6674+12
	ldr	r2, [r2, #-1204]
	cmp	r2, #1
	beq	.L6672
.L6590:
	.loc 3 217 0
	bl	R_FlushColumns
.LVL5968:
	.loc 3 219 0
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L6591
.L6592:
	.loc 3 235 0
	ldr	r2, [r6, #4]
	.loc 3 238 0
	ldr	r0, [r8, #4]
	.loc 3 236 0
	ldr	r1, [r6, #8]
	.loc 3 238 0
	cmp	r2, r0
	.loc 3 235 0
	add	r0, r8, r3, asl #2
	str	r2, [r0, #16]
	.loc 3 236 0
	str	r1, [r0, #32]
	.loc 3 235 0
	ldr	r0, .L6674+8
	.loc 3 243 0
	ldr	r10, .L6674+24
.LVL5969:
	.loc 3 239 0
	strgt	r2, [r0, #4]
	.loc 3 240 0
	ldr	r0, [r8, #8]
	.loc 3 243 0
	add	r3, r3, r2, asl #2
	.loc 3 240 0
	ldr	ip, .L6674+8
	cmp	r1, r0
	.loc 3 243 0
	add	r3, r10, r3, asl #1
	.loc 3 241 0
	strlt	r1, [ip, #8]
	ldr	r2, [r8]
	.loc 3 243 0
	str	r3, [sp, #36]
.LVL5970:
	b	.L6593
.LVL5971:
.L6599:
.LBB1233:
.LBB1223:
	.loc 3 303 0
	sub	r3, r8, #1
.LVL5972:
	.loc 3 304 0
	tst	r3, r8
	bne	.L6602
.LBB1224:
	.loc 3 305 0
	mov	r10, r3, asl #16
	mvn	r10, r10, lsr #16
	.loc 3 306 0
	sub	r3, r7, #1
.LVL5973:
	cmn	r3, #1
	str	r3, [sp, #44]
	.loc 3 305 0
	mvn	r10, r10, asl #16
.LVL5974:
	.loc 3 306 0
	mov	r0, r3
.LVL5975:
	beq	.L6673
	mov	r8, r4
.LVL5976:
	mov	r6, r0
.LVL5977:
	ldr	r3, .L6674+36
	mov	r2, r9, lsr #2
	str	r3, [sp, #60]
	.loc 3 307 0
	add	r3, r3, r2, asl #6
	mov	fp, r3
	ldr	r3, [sp, #36]
	ldr	r1, .L6674+32
.LVL5978:
	add	r9, r3, #16
.LVL5979:
	ldr	r3, [sp, #24]
	str	r2, [sp, #56]
	mov	r2, r3, asl #1
	add	r3, r3, #65536
	str	r1, [sp, #28]
	str	r2, [sp, #32]
	str	r3, [sp, #40]
	str	r7, [sp, #48]
	str	r4, [sp, #52]
.LVL5980:
.L6606:
	and	r4, r8, r10
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	ldr	r2, [sp, #28]
	ldr	ip, [sp, #16]
	ldr	r7, [r2]
	add	r2, r8, #65536
	subgt	r3, r3, #1
	and	r2, r2, r10
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5981:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	mov	r1, #128
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	mov	r0, #126
	ldr	r2, [sp, #24]
	.loc 3 311 0
	ldr	ip, [sp, #16]
	add	r4, r2, r8
	.loc 3 307 0
	ldr	r2, [sp, #12]
	.loc 3 311 0
	and	r4, r4, r10
	.loc 3 307 0
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	.loc 3 311 0
	mov	r3, r4, asr #16
	cmp	r3, #0
	movle	r3, #0
	.loc 3 307 0
	smlabb	r2, r1, r2, r0
	ldrh	r2, [r7, r2]
	.loc 3 311 0
	subgt	r3, r3, #1
	.loc 3 307 0
	strh	r2, [r9, #-16]	@ movhi
.LVL5982:
	.loc 3 311 0
	ldr	r2, [sp, #28]
	ldrb	r1, [r5, r3]	@ zero_extendqisi2
	ldr	r7, [r2]
	ldr	r2, [sp, #40]
	ldrb	lr, [ip, r4, asr #16]	@ zero_extendqisi2
	add	r2, r2, r8
	and	r2, r2, r10
	ldrb	r3, [r5, r2, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r4, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL5983:
	mov	r4, r4, asr #8
	uxtb	r4, r4
	ldr	r2, [sp, #32]
	ldrb	r3, [fp, r4, asr #2]	@ zero_extendqisi2
	add	r8, r2, r8
.LVL5984:
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	mov	r1, #126
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, #128
	smlabb	r3, r2, r3, r1
	ldrh	r3, [r7, r3]
	.loc 3 306 0
	subs	r6, r6, #2
.LVL5985:
	.loc 3 311 0
	strh	r3, [r9, #-8]	@ movhi
.LVL5986:
	add	r9, r9, #16
.LVL5987:
	.loc 3 306 0
	bpl	.L6606
	ldr	r2, [sp, #24]
	ldr	r4, [sp, #52]
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #32]
	mov	r3, r3, lsr #1
	add	r4, r4, r2, asl #1
	ldr	r7, [sp, #48]
	add	r2, r3, #1
	mla	r4, r1, r3, r4
	ldr	r3, [sp, #36]
	.loc 3 316 0
	tst	r7, #1
	add	r3, r3, r2, asl #4
	str	r3, [sp, #36]
	bne	.L6580
.LVL5988:
.L6622:
	.loc 3 317 0
	and	r6, r4, r10
	ldr	r2, [sp, #28]
	mov	r3, r6, asr #16
	cmp	r3, #0
	ldr	r7, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	ip, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	add	r4, r4, #65536
	and	r10, r10, r4
.LVL5989:
	ldrb	r3, [r5, r10, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	str	ip, [sp]
	bl	filter_getScale2xQuadColors
.LVL5990:
	ldr	r3, [sp, #60]
	mov	r9, r6, asl #16
	add	r9, r3, r9, lsr #26
	ldr	r3, [sp, #56]
	ldr	r2, [sp, #12]
	ldrb	r3, [r9, r3, asl #6]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #36]
	add	r7, r7, r3, asl #7
	ldrh	r3, [r7, #126]
	strh	r3, [r2]	@ movhi
	b	.L6580
.LVL5991:
.L6667:
.LBE1224:
.LBE1223:
.LBE1233:
	.loc 3 127 0
	ldr	r2, [r9, #48]
.LVL5992:
	mov	r1, #1
	mov	r0, #0
.LVL5993:
	bl	R_GetDrawColumnFunc
.LVL5994:
	mov	r3, r0
	mov	r0, r6
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5995:
	.loc 3 127 0
	bx	r3	@ indirect register sibling call
.LVL5996:
.L6602:
	.cfi_restore_state
.LBB1234:
.LBB1227:
.LBB1225:
	.loc 3 325 0
	cmp	r4, #0
	.loc 3 323 0
	mov	r8, r8, asl #16
.LVL5997:
	.loc 3 325 0
	blt	.L6611
	.loc 3 328 0
	cmp	r4, r8
	blt	.L6610
.L6612:
	rsb	r4, r8, r4
.LVL5998:
	cmp	r8, r4
	ble	.L6612
.L6610:
	.loc 3 332 0
	add	r6, r4, #65536
.LVL5999:
	.loc 3 333 0
	cmp	r6, r8
	blt	.L6613
.L6614:
	rsb	r6, r8, r6
.LVL6000:
	cmp	r6, r8
	bge	.L6614
.L6613:
	.loc 3 345 0
	ldr	r3, .L6674+36
	mov	r9, r9, lsr #2
.LVL6001:
	ldr	r2, [sp, #36]
	add	r9, r3, r9, asl #6
	ldr	r7, [sp, #24]
	add	r10, r2, #8
	str	r9, [sp, #24]
.LVL6002:
	b	.L6615
.LVL6003:
.L6619:
	ldr	r2, .L6674+32
	cmp	r3, #0
	ldr	r9, [r2]
	movle	r2, #0
	ldr	ip, [sp, #16]
	subgt	r2, r3, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r3]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	ldrb	r0, [r5, r4, asr #16]	@ zero_extendqisi2
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldrb	r3, [r5, r6, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL6004:
	mov	r3, r4, asr #8
	ldr	r2, [sp, #24]
	uxtb	r3, r3
	ldrb	r3, [r2, r3, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	mov	r1, #126
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, #128
	smlabb	r3, r2, r3, r1
	.loc 3 348 0
	add	r4, r4, r7
.LVL6005:
	.loc 3 350 0
	add	r6, r6, r7
.LVL6006:
	.loc 3 348 0
	cmp	r4, r8
	.loc 3 345 0
	ldrh	r3, [r9, r3]
	.loc 3 348 0
	rsbge	r4, r8, r4
	.loc 3 350 0
	cmp	r6, r8
	.loc 3 345 0
	strh	r3, [r10, #-8]	@ movhi
.LVL6007:
	.loc 3 350 0
	rsbge	r6, r8, r6
.LVL6008:
	add	r10, r10, #8
.LVL6009:
.L6615:
	.loc 3 339 0
	sub	fp, fp, #1
.LVL6010:
	cmn	fp, #1
	.loc 3 345 0
	mov	r3, r4, asr #16
	.loc 3 339 0
	bne	.L6619
.LBE1225:
.LBE1227:
.LBE1234:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6011:
.L6611:
	.cfi_restore_state
.LBB1235:
.LBB1228:
.LBB1226:
	.loc 3 326 0 discriminator 1
	adds	r4, r8, r4
.LVL6012:
	bpl	.L6610
.LVL6013:
	.loc 3 326 0 is_stmt 0
	adds	r4, r8, r4
.LVL6014:
	bmi	.L6611
	b	.L6610
.LVL6015:
.L6672:
.LBE1226:
.LBE1228:
.LBE1235:
	.loc 3 216 0 is_stmt 1 discriminator 1
	ldr	r2, [r8, #12]
	ldr	r1, [r6]
	add	r2, r3, r2
	cmp	r2, r1
	bne	.L6590
	b	.L6592
.LVL6016:
.L6670:
.LBB1236:
	.loc 3 289 0
	mov	fp, #126
	ldr	r2, .L6674+32
	ldr	r3, .L6674+36
.LVL6017:
	str	r2, [sp, #28]
	ldr	r2, [sp, #36]
	mov	r9, r9, lsr #2
.LVL6018:
	str	r8, [sp, #32]
	add	r10, r2, #8
	add	r9, r3, r9, asl #6
.LVL6019:
.L6598:
	bic	r6, r4, #-16777216
	bic	r6, r6, #8388608
	ldr	r3, [sp, #28]
	movs	r2, r6, asr #16
	ldr	ip, [sp, #16]
	ldr	r8, [r3]
	subne	r2, r2, #1
	add	r3, r4, #65536
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	ldrb	lr, [ip, r6, asr #16]	@ zero_extendqisi2
	ldr	r2, [sp, #20]
	bic	r3, r3, #-16777216
	bic	r3, r3, #8388608
	ldrb	r2, [r2, r6, asr #16]	@ zero_extendqisi2
	ldrb	r0, [r5, r6, asr #16]	@ zero_extendqisi2
	ldrb	r3, [r5, r3, asr #16]	@ zero_extendqisi2
	str	lr, [sp]
	bl	filter_getScale2xQuadColors
.LVL6020:
	mov	r6, r6, asr #8
	uxtb	r6, r6
	ldrb	r3, [r9, r6, asr #2]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	.loc 3 288 0
	sub	r7, r7, #1
.LVL6021:
	.loc 3 289 0
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 3 292 0
	ldr	r2, [sp, #24]
	.loc 3 288 0
	cmn	r7, #1
	.loc 3 292 0
	add	r4, r4, r2
.LVL6022:
	.loc 3 289 0
	ldrh	r2, [sp, #32]
	add	r10, r10, #8
.LVL6023:
	smlabb	r3, r2, r3, fp
	ldrh	r3, [r8, r3]
	strh	r3, [r10, #-16]	@ movhi
.LVL6024:
	.loc 3 288 0
	bne	.L6598
.LBE1236:
	.loc 3 357 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6025:
.L6671:
	.cfi_restore_state
.LBB1237:
	.loc 3 197 0
	mvn	r0, r10
	ldr	r1, [sp, #24]
	uxth	r0, r0
	bl	__aeabi_idiv
.LVL6026:
	.loc 3 198 0
	rsb	r8, r0, r8
	str	r8, [r6, #8]
	.loc 3 199 0
	rsb	r7, r0, r7
.LVL6027:
.LBE1237:
	b	.L6587
.LVL6028:
.L6586:
	.loc 3 186 0
	tst	r3, #2
	beq	.L6585
.LBB1238:
	.loc 3 188 0
	uxth	fp, r10
	mov	r0, fp
.LVL6029:
	ldr	r1, [sp, #24]
	b	.L6664
.LVL6030:
.L6673:
	mov	r3, r9, lsr #2
	str	r3, [sp, #56]
	ldr	r3, .L6674+32
	str	r3, [sp, #28]
	ldr	r3, .L6674+36
	str	r3, [sp, #60]
	b	.L6622
.L6675:
	.align	2
.L6674:
	.word	.LANCHOR1
	.word	centery
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	R_FlushHT16
	.word	R_FlushQuad16
	.word	.LANCHOR0+1220
	.word	R_FlushWhole16
	.word	V_Palette16
	.word	filter_roundedUVMap
	.word	viewheight
.LBE1238:
	.cfi_endproc
.LFE71:
	.size	R_DrawColumn16_RoundedUV_PointZ, .-R_DrawColumn16_RoundedUV_PointZ
	.align	2
	.type	R_DrawFuzzColumn16_LinearUV_PointZ, %function
R_DrawFuzzColumn16_LinearUV_PointZ:
.LFB176:
	.loc 3 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6031:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 3 119 0
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #32]
	.loc 3 126 0
	ldr	r7, .L6716
	.loc 3 119 0
	cmp	r2, r3
	.loc 3 117 0
	ldr	r8, [r0, #16]
.LVL6032:
	.loc 3 126 0
	ldr	r3, [r7, #64]
	.loc 3 119 0
	ldrneh	r10, [r0, #28]
	moveq	r10, #0
.LVL6033:
	.loc 3 126 0
	cmp	r8, r3
	.loc 3 113 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 3 113 0
	mov	r4, r0
	.loc 3 126 0
	bgt	.L6713
	.loc 3 136 0
	ldr	r6, [r0, #4]
	.loc 3 140 0
	ldr	r5, [r0, #8]
	.loc 3 136 0
	cmp	r6, #0
	.loc 3 137 0
	moveq	r3, #1
	moveq	r6, r3
	streq	r3, [r0, #4]
	.loc 3 140 0
	ldr	r3, .L6716+4
	ldr	r3, [r3]
	sub	r9, r3, #1
	cmp	r5, r9
	.loc 3 141 0
	subeq	r5, r3, #2
.LVL6034:
	streq	r5, [r0, #8]
	.loc 3 157 0
	subs	fp, r5, r6
.LVL6035:
	bmi	.L6676
.LVL6036:
	.loc 3 174 0
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bne	.L6683
.LVL6037:
.L6686:
	.loc 3 215 0
	ldr	r5, .L6716+8
	ldr	r3, [r5]
.L6692: