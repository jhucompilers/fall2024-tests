
/* Allocating storage for function 'main' */
/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'c' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* Function 'main' uses 88 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -88 from %rbp */
/* Function 'main': 96 bytes of local storage allocated in stack frame */

	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $96, %rsp
	movl     $2, -64(%rbp)       /* mov_l    vr13, $2 */
	movl     -64(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -88(%rbp)
	movl     $3, -56(%rbp)       /* mov_l    vr14, $3 */
	movl     -56(%rbp), %r10d    /* mov_l    vr11, vr14 */
	movl     %r10d, -80(%rbp)
	movl     $0, -48(%rbp)       /* mov_l    vr15, $0 */
	movl     -48(%rbp), %r10d    /* mov_l    vr12, vr15 */
	movl     %r10d, -72(%rbp)
	movl     $1, -40(%rbp)       /* mov_l    vr16, $1 */
	movl     -88(%rbp), %r10d    /* add_l    vr17, vr10, vr16 */
	addl     -40(%rbp), %r10d
	movl     %r10d, -32(%rbp)
	movl     -32(%rbp), %r10d    /* cmpeq_l  vr18, vr17, vr11 */
	cmpl     -80(%rbp), %r10d
	sete     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -24(%rbp)
	cmpl     $0, -24(%rbp)       /* cjmp_f   vr18, .L1 */
	je       .L1
	movl     $1, -16(%rbp)       /* mov_l    vr19, $1 */
	movl     -16(%rbp), %r10d    /* mov_l    vr12, vr19 */
	movl     %r10d, -72(%rbp)
	jmp      .L0                 /* jmp      .L0 */
.L1:
	movl     $2, -8(%rbp)        /* mov_l    vr20, $2 */
	movl     -8(%rbp), %r10d     /* mov_l    vr12, vr20 */
	movl     %r10d, -72(%rbp)
.L0:
	movl     -72(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $96, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
