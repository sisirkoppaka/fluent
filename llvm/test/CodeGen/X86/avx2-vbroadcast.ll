; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mattr=+avx2 | FileCheck %s

define <16 x i8> @BB16(i8* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: BB16:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vpbroadcastb (%rdi), %xmm0
; CHECK-NEXT:    retq
entry:
  %q = load i8, i8* %ptr, align 4
  %q0 = insertelement <16 x i8> undef, i8 %q, i32 0
  %q1 = insertelement <16 x i8> %q0, i8 %q, i32 1
  %q2 = insertelement <16 x i8> %q1, i8 %q, i32 2
  %q3 = insertelement <16 x i8> %q2, i8 %q, i32 3
  %q4 = insertelement <16 x i8> %q3, i8 %q, i32 4
  %q5 = insertelement <16 x i8> %q4, i8 %q, i32 5
  %q6 = insertelement <16 x i8> %q5, i8 %q, i32 6
  %q7 = insertelement <16 x i8> %q6, i8 %q, i32 7
  %q8 = insertelement <16 x i8> %q7, i8 %q, i32 8
  %q9 = insertelement <16 x i8> %q8, i8 %q, i32 9
  %qa = insertelement <16 x i8> %q9, i8 %q, i32 10
  %qb = insertelement <16 x i8> %qa, i8 %q, i32 11
  %qc = insertelement <16 x i8> %qb, i8 %q, i32 12
  %qd = insertelement <16 x i8> %qc, i8 %q, i32 13
  %qe = insertelement <16 x i8> %qd, i8 %q, i32 14
  %qf = insertelement <16 x i8> %qe, i8 %q, i32 15
  ret <16 x i8> %qf
}

define <32 x i8> @BB32(i8* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: BB32:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vpbroadcastb (%rdi), %ymm0
; CHECK-NEXT:    retq
entry:
  %q = load i8, i8* %ptr, align 4
  %q0 = insertelement <32 x i8> undef, i8 %q, i32 0
  %q1 = insertelement <32 x i8> %q0, i8 %q, i32 1
  %q2 = insertelement <32 x i8> %q1, i8 %q, i32 2
  %q3 = insertelement <32 x i8> %q2, i8 %q, i32 3
  %q4 = insertelement <32 x i8> %q3, i8 %q, i32 4
  %q5 = insertelement <32 x i8> %q4, i8 %q, i32 5
  %q6 = insertelement <32 x i8> %q5, i8 %q, i32 6
  %q7 = insertelement <32 x i8> %q6, i8 %q, i32 7
  %q8 = insertelement <32 x i8> %q7, i8 %q, i32 8
  %q9 = insertelement <32 x i8> %q8, i8 %q, i32 9
  %qa = insertelement <32 x i8> %q9, i8 %q, i32 10
  %qb = insertelement <32 x i8> %qa, i8 %q, i32 11
  %qc = insertelement <32 x i8> %qb, i8 %q, i32 12
  %qd = insertelement <32 x i8> %qc, i8 %q, i32 13
  %qe = insertelement <32 x i8> %qd, i8 %q, i32 14
  %qf = insertelement <32 x i8> %qe, i8 %q, i32 15

  %q20 = insertelement <32 x i8> %qf, i8 %q,  i32 16
  %q21 = insertelement <32 x i8> %q20, i8 %q, i32 17
  %q22 = insertelement <32 x i8> %q21, i8 %q, i32 18
  %q23 = insertelement <32 x i8> %q22, i8 %q, i32 19
  %q24 = insertelement <32 x i8> %q23, i8 %q, i32 20
  %q25 = insertelement <32 x i8> %q24, i8 %q, i32 21
  %q26 = insertelement <32 x i8> %q25, i8 %q, i32 22
  %q27 = insertelement <32 x i8> %q26, i8 %q, i32 23
  %q28 = insertelement <32 x i8> %q27, i8 %q, i32 24
  %q29 = insertelement <32 x i8> %q28, i8 %q, i32 25
  %q2a = insertelement <32 x i8> %q29, i8 %q, i32 26
  %q2b = insertelement <32 x i8> %q2a, i8 %q, i32 27
  %q2c = insertelement <32 x i8> %q2b, i8 %q, i32 28
  %q2d = insertelement <32 x i8> %q2c, i8 %q, i32 29
  %q2e = insertelement <32 x i8> %q2d, i8 %q, i32 30
  %q2f = insertelement <32 x i8> %q2e, i8 %q, i32 31
  ret <32 x i8> %q2f
}

define <8 x i16> @W16(i16* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: W16:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vpbroadcastw (%rdi), %xmm0
; CHECK-NEXT:    retq
entry:
  %q = load i16, i16* %ptr, align 4
  %q0 = insertelement <8 x i16> undef, i16 %q, i32 0
  %q1 = insertelement <8 x i16> %q0, i16 %q, i32 1
  %q2 = insertelement <8 x i16> %q1, i16 %q, i32 2
  %q3 = insertelement <8 x i16> %q2, i16 %q, i32 3
  %q4 = insertelement <8 x i16> %q3, i16 %q, i32 4
  %q5 = insertelement <8 x i16> %q4, i16 %q, i32 5
  %q6 = insertelement <8 x i16> %q5, i16 %q, i32 6
  %q7 = insertelement <8 x i16> %q6, i16 %q, i32 7
  ret <8 x i16> %q7
}

define <16 x i16> @WW16(i16* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: WW16:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vpbroadcastw (%rdi), %ymm0
; CHECK-NEXT:    retq
entry:
  %q = load i16, i16* %ptr, align 4
  %q0 = insertelement <16 x i16> undef, i16 %q, i32 0
  %q1 = insertelement <16 x i16> %q0, i16 %q, i32 1
  %q2 = insertelement <16 x i16> %q1, i16 %q, i32 2
  %q3 = insertelement <16 x i16> %q2, i16 %q, i32 3
  %q4 = insertelement <16 x i16> %q3, i16 %q, i32 4
  %q5 = insertelement <16 x i16> %q4, i16 %q, i32 5
  %q6 = insertelement <16 x i16> %q5, i16 %q, i32 6
  %q7 = insertelement <16 x i16> %q6, i16 %q, i32 7
  %q8 = insertelement <16 x i16> %q7, i16 %q, i32 8
  %q9 = insertelement <16 x i16> %q8, i16 %q, i32 9
  %qa = insertelement <16 x i16> %q9, i16 %q, i32 10
  %qb = insertelement <16 x i16> %qa, i16 %q, i32 11
  %qc = insertelement <16 x i16> %qb, i16 %q, i32 12
  %qd = insertelement <16 x i16> %qc, i16 %q, i32 13
  %qe = insertelement <16 x i16> %qd, i16 %q, i32 14
  %qf = insertelement <16 x i16> %qe, i16 %q, i32 15
  ret <16 x i16> %qf
}

define <4 x i32> @D32(i32* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: D32:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vbroadcastss (%rdi), %xmm0
; CHECK-NEXT:    retq
entry:
  %q = load i32, i32* %ptr, align 4
  %q0 = insertelement <4 x i32> undef, i32 %q, i32 0
  %q1 = insertelement <4 x i32> %q0, i32 %q, i32 1
  %q2 = insertelement <4 x i32> %q1, i32 %q, i32 2
  %q3 = insertelement <4 x i32> %q2, i32 %q, i32 3
  ret <4 x i32> %q3
}

define <8 x i32> @DD32(i32* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: DD32:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vbroadcastss (%rdi), %ymm0
; CHECK-NEXT:    retq
entry:
  %q = load i32, i32* %ptr, align 4
  %q0 = insertelement <8 x i32> undef, i32 %q, i32 0
  %q1 = insertelement <8 x i32> %q0, i32 %q, i32 1
  %q2 = insertelement <8 x i32> %q1, i32 %q, i32 2
  %q3 = insertelement <8 x i32> %q2, i32 %q, i32 3
  %q4 = insertelement <8 x i32> %q3, i32 %q, i32 4
  %q5 = insertelement <8 x i32> %q4, i32 %q, i32 5
  %q6 = insertelement <8 x i32> %q5, i32 %q, i32 6
  %q7 = insertelement <8 x i32> %q6, i32 %q, i32 7
  ret <8 x i32> %q7
}

define <2 x i64> @Q64(i64* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: Q64:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vpbroadcastq (%rdi), %xmm0
; CHECK-NEXT:    retq
entry:
  %q = load i64, i64* %ptr, align 4
  %q0 = insertelement <2 x i64> undef, i64 %q, i32 0
  %q1 = insertelement <2 x i64> %q0, i64 %q, i32 1
  ret <2 x i64> %q1
}

define <4 x i64> @QQ64(i64* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: QQ64:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vbroadcastsd (%rdi), %ymm0
; CHECK-NEXT:    retq
entry:
  %q = load i64, i64* %ptr, align 4
  %q0 = insertelement <4 x i64> undef, i64 %q, i32 0
  %q1 = insertelement <4 x i64> %q0, i64 %q, i32 1
  %q2 = insertelement <4 x i64> %q1, i64 %q, i32 2
  %q3 = insertelement <4 x i64> %q2, i64 %q, i32 3
  ret <4 x i64> %q3
}

; make sure that we still don't support broadcast double into 128-bit vector
; this used to crash
define <2 x double> @I(double* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: I:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vmovddup {{.*#+}} xmm0 = mem[0,0]
; CHECK-NEXT:    retq
entry:
  %q = load double, double* %ptr, align 4
  %vecinit.i = insertelement <2 x double> undef, double %q, i32 0
  %vecinit2.i = insertelement <2 x double> %vecinit.i, double %q, i32 1
  ret <2 x double> %vecinit2.i
}

define <8 x i32> @V111(<8 x i32> %in) nounwind uwtable readnone ssp {
; CHECK-LABEL: V111:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vpbroadcastd {{.*}}(%rip), %ymm1
; CHECK-NEXT:    vpaddd %ymm1, %ymm0, %ymm0
; CHECK-NEXT:    retq
entry:
  %g = add <8 x i32> %in, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %g
}

define <8 x float> @V113(<8 x float> %in) nounwind uwtable readnone ssp {
; CHECK-LABEL: V113:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vbroadcastss {{.*}}(%rip), %ymm1
; CHECK-NEXT:    vaddps %ymm1, %ymm0, %ymm0
; CHECK-NEXT:    retq
entry:
  %g = fadd <8 x float> %in, <float 0xbf80000000000000, float 0xbf80000000000000, float 0xbf80000000000000, float 0xbf80000000000000, float 0xbf80000000000000, float 0xbf80000000000000, float 0xbf80000000000000, float 0xbf80000000000000>
  ret <8 x float> %g
}

define <4 x float> @_e2(float* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: _e2:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastss {{.*}}(%rip), %xmm0
; CHECK-NEXT:    retq
  %vecinit.i = insertelement <4 x float> undef, float        0xbf80000000000000, i32 0
  %vecinit2.i = insertelement <4 x float> %vecinit.i, float  0xbf80000000000000, i32 1
  %vecinit4.i = insertelement <4 x float> %vecinit2.i, float 0xbf80000000000000, i32 2
  %vecinit6.i = insertelement <4 x float> %vecinit4.i, float 0xbf80000000000000, i32 3
  ret <4 x float> %vecinit6.i
}

define <8 x i8> @_e4(i8* %ptr) nounwind uwtable readnone ssp {
; CHECK-LABEL: _e4:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vmovaps {{.*#+}} xmm0 = [52,52,52,52,52,52,52,52]
; CHECK-NEXT:    retq
  %vecinit0.i = insertelement <8 x i8> undef, i8       52, i32 0
  %vecinit1.i = insertelement <8 x i8> %vecinit0.i, i8 52, i32 1
  %vecinit2.i = insertelement <8 x i8> %vecinit1.i, i8 52, i32 2
  %vecinit3.i = insertelement <8 x i8> %vecinit2.i, i8 52, i32 3
  %vecinit4.i = insertelement <8 x i8> %vecinit3.i, i8 52, i32 4
  %vecinit5.i = insertelement <8 x i8> %vecinit4.i, i8 52, i32 5
  %vecinit6.i = insertelement <8 x i8> %vecinit5.i, i8 52, i32 6
  %vecinit7.i = insertelement <8 x i8> %vecinit6.i, i8 52, i32 7
  ret <8 x i8> %vecinit7.i
}


define void @crash() nounwind alwaysinline {
; CHECK-LABEL: crash:
; CHECK:       ## BB#0: ## %WGLoopsEntry
; CHECK-NEXT:    xorl %eax, %eax
; CHECK-NEXT:    testb %al, %al
; CHECK-NEXT:    je LBB13_1
; CHECK-NEXT:  ## BB#2: ## %ret
; CHECK-NEXT:    retq
; CHECK-NEXT:    .align 4, 0x90
; CHECK-NEXT:  LBB13_1: ## %footer349VF
; CHECK-NEXT:    ## =>This Inner Loop Header: Depth=1
; CHECK-NEXT:    jmp LBB13_1
WGLoopsEntry:
  br i1 undef, label %ret, label %footer329VF

footer329VF:
  %A.0.inVF = fmul float undef, 6.553600e+04
  %B.0.in407VF = fmul <8 x float> undef, <float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04>
  %A.0VF = fptosi float %A.0.inVF to i32
  %B.0408VF = fptosi <8 x float> %B.0.in407VF to <8 x i32>
  %0 = and <8 x i32> %B.0408VF, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %1 = and i32 %A.0VF, 65535
  %temp1098VF = insertelement <8 x i32> undef, i32 %1, i32 0
  %vector1099VF = shufflevector <8 x i32> %temp1098VF, <8 x i32> undef, <8 x i32> zeroinitializer
  br i1 undef, label %preload1201VF, label %footer349VF

preload1201VF:
  br label %footer349VF

footer349VF:
  %2 = mul nsw <8 x i32> undef, %0
  %3 = mul nsw <8 x i32> undef, %vector1099VF
  br label %footer329VF

ret:
  ret void
}

define <8 x i32> @_inreg0(i32 %scalar) nounwind uwtable readnone ssp {
; CHECK-LABEL: _inreg0:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vmovd %edi, %xmm0
; CHECK-NEXT:    vbroadcastss %xmm0, %ymm0
; CHECK-NEXT:    retq
  %in = insertelement <8 x i32> undef, i32 %scalar, i32 0
  %wide = shufflevector <8 x i32> %in, <8 x i32> undef, <8 x i32> zeroinitializer
  ret <8 x i32> %wide
}

define <8 x float> @_inreg1(float %scalar) nounwind uwtable readnone ssp {
; CHECK-LABEL: _inreg1:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastss %xmm0, %ymm0
; CHECK-NEXT:    retq
  %in = insertelement <8 x float> undef, float %scalar, i32 0
  %wide = shufflevector <8 x float> %in, <8 x float> undef, <8 x i32> zeroinitializer
  ret <8 x float> %wide
}

define <4 x float> @_inreg2(float %scalar) nounwind uwtable readnone ssp {
; CHECK-LABEL: _inreg2:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastss %xmm0, %xmm0
; CHECK-NEXT:    retq
  %in = insertelement <4 x float> undef, float %scalar, i32 0
  %wide = shufflevector <4 x float> %in, <4 x float> undef, <4 x i32> zeroinitializer
  ret <4 x float> %wide
}

define <4 x double> @_inreg3(double %scalar) nounwind uwtable readnone ssp {
; CHECK-LABEL: _inreg3:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastsd %xmm0, %ymm0
; CHECK-NEXT:    retq
  %in = insertelement <4 x double> undef, double %scalar, i32 0
  %wide = shufflevector <4 x double> %in, <4 x double> undef, <4 x i32> zeroinitializer
  ret <4 x double> %wide
}

define   <8 x float> @_inreg8xfloat(<8 x float> %a) {
; CHECK-LABEL: _inreg8xfloat:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastss %xmm0, %ymm0
; CHECK-NEXT:    retq
  %b = shufflevector <8 x float> %a, <8 x float> undef, <8 x i32> zeroinitializer
  ret <8 x float> %b
}

define   <4 x float> @_inreg4xfloat(<4 x float> %a) {
; CHECK-LABEL: _inreg4xfloat:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastss %xmm0, %xmm0
; CHECK-NEXT:    retq
  %b = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> zeroinitializer
  ret <4 x float> %b
}

define   <16 x i16> @_inreg16xi16(<16 x i16> %a) {
; CHECK-LABEL: _inreg16xi16:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vpbroadcastw %xmm0, %ymm0
; CHECK-NEXT:    retq
  %b = shufflevector <16 x i16> %a, <16 x i16> undef, <16 x i32> zeroinitializer
  ret <16 x i16> %b
}

define   <8 x i16> @_inreg8xi16(<8 x i16> %a) {
; CHECK-LABEL: _inreg8xi16:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vpbroadcastw %xmm0, %xmm0
; CHECK-NEXT:    retq
  %b = shufflevector <8 x i16> %a, <8 x i16> undef, <8 x i32> zeroinitializer
  ret <8 x i16> %b
}

define   <4 x i64> @_inreg4xi64(<4 x i64> %a) {
; CHECK-LABEL: _inreg4xi64:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastsd %xmm0, %ymm0
; CHECK-NEXT:    retq
  %b = shufflevector <4 x i64> %a, <4 x i64> undef, <4 x i32> zeroinitializer
  ret <4 x i64> %b
}

define   <2 x i64> @_inreg2xi64(<2 x i64> %a) {
; CHECK-LABEL: _inreg2xi64:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vpbroadcastq %xmm0, %xmm0
; CHECK-NEXT:    retq
  %b = shufflevector <2 x i64> %a, <2 x i64> undef, <2 x i32> zeroinitializer
  ret <2 x i64> %b
}

define   <4 x double> @_inreg4xdouble(<4 x double> %a) {
; CHECK-LABEL: _inreg4xdouble:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastsd %xmm0, %ymm0
; CHECK-NEXT:    retq
  %b = shufflevector <4 x double> %a, <4 x double> undef, <4 x i32> zeroinitializer
  ret <4 x double> %b
}

define   <2 x double> @_inreg2xdouble(<2 x double> %a) {
; CHECK-LABEL: _inreg2xdouble:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vmovddup {{.*#+}} xmm0 = xmm0[0,0]
; CHECK-NEXT:    retq
  %b = shufflevector <2 x double> %a, <2 x double> undef, <2 x i32> zeroinitializer
  ret <2 x double> %b
}

define   <8 x i32> @_inreg8xi32(<8 x i32> %a) {
; CHECK-LABEL: _inreg8xi32:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastss %xmm0, %ymm0
; CHECK-NEXT:    retq
  %b = shufflevector <8 x i32> %a, <8 x i32> undef, <8 x i32> zeroinitializer
  ret <8 x i32> %b
}

define   <4 x i32> @_inreg4xi32(<4 x i32> %a) {
; CHECK-LABEL: _inreg4xi32:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastss %xmm0, %xmm0
; CHECK-NEXT:    retq
  %b = shufflevector <4 x i32> %a, <4 x i32> undef, <4 x i32> zeroinitializer
  ret <4 x i32> %b
}

define   <32 x i8> @_inreg32xi8(<32 x i8> %a) {
; CHECK-LABEL: _inreg32xi8:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vpbroadcastb %xmm0, %ymm0
; CHECK-NEXT:    retq
  %b = shufflevector <32 x i8> %a, <32 x i8> undef, <32 x i32> zeroinitializer
  ret <32 x i8> %b
}

define   <16 x i8> @_inreg16xi8(<16 x i8> %a) {
; CHECK-LABEL: _inreg16xi8:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vpbroadcastb %xmm0, %xmm0
; CHECK-NEXT:    retq
  %b = shufflevector <16 x i8> %a, <16 x i8> undef, <16 x i32> zeroinitializer
  ret <16 x i8> %b
}

; These tests check that a vbroadcast instruction is used when we have a splat
; formed from a concat_vectors (via the shufflevector) of two BUILD_VECTORs
; (via the insertelements).

define <8 x float> @splat_concat1(float %f) {
; CHECK-LABEL: splat_concat1:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastss %xmm0, %ymm0
; CHECK-NEXT:    retq
  %1 = insertelement <4 x float> undef, float %f, i32 0
  %2 = insertelement <4 x float> %1, float %f, i32 1
  %3 = insertelement <4 x float> %2, float %f, i32 2
  %4 = insertelement <4 x float> %3, float %f, i32 3
  %5 = shufflevector <4 x float> %4, <4 x float> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  ret <8 x float> %5
}

define <8 x float> @splat_concat2(float %f) {
; CHECK-LABEL: splat_concat2:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastss %xmm0, %ymm0
; CHECK-NEXT:    retq
  %1 = insertelement <4 x float> undef, float %f, i32 0
  %2 = insertelement <4 x float> %1, float %f, i32 1
  %3 = insertelement <4 x float> %2, float %f, i32 2
  %4 = insertelement <4 x float> %3, float %f, i32 3
  %5 = insertelement <4 x float> undef, float %f, i32 0
  %6 = insertelement <4 x float> %5, float %f, i32 1
  %7 = insertelement <4 x float> %6, float %f, i32 2
  %8 = insertelement <4 x float> %7, float %f, i32 3
  %9 = shufflevector <4 x float> %4, <4 x float> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x float> %9
}

define <4 x double> @splat_concat3(double %d) {
; CHECK-LABEL: splat_concat3:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastsd %xmm0, %ymm0
; CHECK-NEXT:    retq
  %1 = insertelement <2 x double> undef, double %d, i32 0
  %2 = insertelement <2 x double> %1, double %d, i32 1
  %3 = shufflevector <2 x double> %2, <2 x double> undef, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  ret <4 x double> %3
}

define <4 x double> @splat_concat4(double %d) {
; CHECK-LABEL: splat_concat4:
; CHECK:       ## BB#0:
; CHECK-NEXT:    vbroadcastsd %xmm0, %ymm0
; CHECK-NEXT:    retq
  %1 = insertelement <2 x double> undef, double %d, i32 0
  %2 = insertelement <2 x double> %1, double %d, i32 1
  %3 = insertelement <2 x double> undef, double %d, i32 0
  %4 = insertelement <2 x double> %3, double %d, i32 1
  %5 = shufflevector <2 x double> %2, <2 x double> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x double> %5
}

; Test cases for <rdar://problem/16074331>.
; Instruction selection for broacast instruction fails if
; the load cannot be folded into the broadcast.
; This happens if the load has initial one use but other uses are
; created later, or if selection DAG cannot prove that folding the
; load will not create a cycle in the DAG.
; Those test cases exerce the latter.

; CHECK-LABEL: isel_crash_16b
; CHECK: vpbroadcastb {{[^,]+}}, %xmm{{[0-9]+}}
; CHECK: ret
define void @isel_crash_16b(i8* %cV_R.addr) {
eintry:
  %__a.addr.i = alloca <2 x i64>, align 16
  %__b.addr.i = alloca <2 x i64>, align 16
  %vCr = alloca <2 x i64>, align 16
  store <2 x i64> zeroinitializer, <2 x i64>* %vCr, align 16
  %tmp = load <2 x i64>, <2 x i64>* %vCr, align 16
  %tmp2 = load i8, i8* %cV_R.addr, align 4
  %splat.splatinsert = insertelement <16 x i8> undef, i8 %tmp2, i32 0
  %splat.splat = shufflevector <16 x i8> %splat.splatinsert, <16 x i8> undef, <16 x i32> zeroinitializer
  %tmp3 = bitcast <16 x i8> %splat.splat to <2 x i64>
  store <2 x i64> %tmp, <2 x i64>* %__a.addr.i, align 16
  store <2 x i64> %tmp3, <2 x i64>* %__b.addr.i, align 16
  ret void
}

; CHECK-LABEL: isel_crash_32b
; CHECK: vpbroadcastb {{[^,]+}}, %ymm{{[0-9]+}}
; CHECK: ret
define void @isel_crash_32b(i8* %cV_R.addr) {
eintry:
  %__a.addr.i = alloca <4 x i64>, align 16
  %__b.addr.i = alloca <4 x i64>, align 16
  %vCr = alloca <4 x i64>, align 16
  store <4 x i64> zeroinitializer, <4 x i64>* %vCr, align 16
  %tmp = load <4 x i64>, <4 x i64>* %vCr, align 16
  %tmp2 = load i8, i8* %cV_R.addr, align 4
  %splat.splatinsert = insertelement <32 x i8> undef, i8 %tmp2, i32 0
  %splat.splat = shufflevector <32 x i8> %splat.splatinsert, <32 x i8> undef, <32 x i32> zeroinitializer
  %tmp3 = bitcast <32 x i8> %splat.splat to <4 x i64>
  store <4 x i64> %tmp, <4 x i64>* %__a.addr.i, align 16
  store <4 x i64> %tmp3, <4 x i64>* %__b.addr.i, align 16
  ret void
}

; CHECK-LABEL: isel_crash_8w
; CHECK: vpbroadcastw {{[^,]+}}, %xmm{{[0-9]+}}
; CHECK: ret
define void @isel_crash_8w(i16* %cV_R.addr) {
entry:
  %__a.addr.i = alloca <2 x i64>, align 16
  %__b.addr.i = alloca <2 x i64>, align 16
  %vCr = alloca <2 x i64>, align 16
  store <2 x i64> zeroinitializer, <2 x i64>* %vCr, align 16
  %tmp = load <2 x i64>, <2 x i64>* %vCr, align 16
  %tmp2 = load i16, i16* %cV_R.addr, align 4
  %splat.splatinsert = insertelement <8 x i16> undef, i16 %tmp2, i32 0
  %splat.splat = shufflevector <8 x i16> %splat.splatinsert, <8 x i16> undef, <8 x i32> zeroinitializer
  %tmp3 = bitcast <8 x i16> %splat.splat to <2 x i64>
  store <2 x i64> %tmp, <2 x i64>* %__a.addr.i, align 16
  store <2 x i64> %tmp3, <2 x i64>* %__b.addr.i, align 16
  ret void
}

; CHECK-LABEL: isel_crash_16w
; CHECK: vpbroadcastw {{[^,]+}}, %ymm{{[0-9]+}}
; CHECK: ret
define void @isel_crash_16w(i16* %cV_R.addr) {
eintry:
  %__a.addr.i = alloca <4 x i64>, align 16
  %__b.addr.i = alloca <4 x i64>, align 16
  %vCr = alloca <4 x i64>, align 16
  store <4 x i64> zeroinitializer, <4 x i64>* %vCr, align 16
  %tmp = load <4 x i64>, <4 x i64>* %vCr, align 16
  %tmp2 = load i16, i16* %cV_R.addr, align 4
  %splat.splatinsert = insertelement <16 x i16> undef, i16 %tmp2, i32 0
  %splat.splat = shufflevector <16 x i16> %splat.splatinsert, <16 x i16> undef, <16 x i32> zeroinitializer
  %tmp3 = bitcast <16 x i16> %splat.splat to <4 x i64>
  store <4 x i64> %tmp, <4 x i64>* %__a.addr.i, align 16
  store <4 x i64> %tmp3, <4 x i64>* %__b.addr.i, align 16
  ret void
}

; CHECK-LABEL: isel_crash_4d
; CHECK: vbroadcastss {{[^,]+}}, %xmm{{[0-9]+}}
; CHECK: ret
define void @isel_crash_4d(i32* %cV_R.addr) {
entry:
  %__a.addr.i = alloca <2 x i64>, align 16
  %__b.addr.i = alloca <2 x i64>, align 16
  %vCr = alloca <2 x i64>, align 16
  store <2 x i64> zeroinitializer, <2 x i64>* %vCr, align 16
  %tmp = load <2 x i64>, <2 x i64>* %vCr, align 16
  %tmp2 = load i32, i32* %cV_R.addr, align 4
  %splat.splatinsert = insertelement <4 x i32> undef, i32 %tmp2, i32 0
  %splat.splat = shufflevector <4 x i32> %splat.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer
  %tmp3 = bitcast <4 x i32> %splat.splat to <2 x i64>
  store <2 x i64> %tmp, <2 x i64>* %__a.addr.i, align 16
  store <2 x i64> %tmp3, <2 x i64>* %__b.addr.i, align 16
  ret void
}

; CHECK-LABEL: isel_crash_8d
; CHECK: vbroadcastss {{[^,]+}}, %ymm{{[0-9]+}}
; CHECK: ret
define void @isel_crash_8d(i32* %cV_R.addr) {
eintry:
  %__a.addr.i = alloca <4 x i64>, align 16
  %__b.addr.i = alloca <4 x i64>, align 16
  %vCr = alloca <4 x i64>, align 16
  store <4 x i64> zeroinitializer, <4 x i64>* %vCr, align 16
  %tmp = load <4 x i64>, <4 x i64>* %vCr, align 16
  %tmp2 = load i32, i32* %cV_R.addr, align 4
  %splat.splatinsert = insertelement <8 x i32> undef, i32 %tmp2, i32 0
  %splat.splat = shufflevector <8 x i32> %splat.splatinsert, <8 x i32> undef, <8 x i32> zeroinitializer
  %tmp3 = bitcast <8 x i32> %splat.splat to <4 x i64>
  store <4 x i64> %tmp, <4 x i64>* %__a.addr.i, align 16
  store <4 x i64> %tmp3, <4 x i64>* %__b.addr.i, align 16
  ret void
}

; CHECK-LABEL: isel_crash_2q
; CHECK: vpbroadcastq {{[^,]+}}, %xmm{{[0-9]+}}
; CHECK: ret
define void @isel_crash_2q(i64* %cV_R.addr) {
entry:
  %__a.addr.i = alloca <2 x i64>, align 16
  %__b.addr.i = alloca <2 x i64>, align 16
  %vCr = alloca <2 x i64>, align 16
  store <2 x i64> zeroinitializer, <2 x i64>* %vCr, align 16
  %tmp = load <2 x i64>, <2 x i64>* %vCr, align 16
  %tmp2 = load i64, i64* %cV_R.addr, align 4
  %splat.splatinsert = insertelement <2 x i64> undef, i64 %tmp2, i32 0
  %splat.splat = shufflevector <2 x i64> %splat.splatinsert, <2 x i64> undef, <2 x i32> zeroinitializer
  store <2 x i64> %tmp, <2 x i64>* %__a.addr.i, align 16
  store <2 x i64> %splat.splat, <2 x i64>* %__b.addr.i, align 16
  ret void
}

; CHECK-LABEL: isel_crash_4q
; CHECK: vbroadcastsd {{[^,]+}}, %ymm{{[0-9]+}}
; CHECK: ret
define void @isel_crash_4q(i64* %cV_R.addr) {
eintry:
  %__a.addr.i = alloca <4 x i64>, align 16
  %__b.addr.i = alloca <4 x i64>, align 16
  %vCr = alloca <4 x i64>, align 16
  store <4 x i64> zeroinitializer, <4 x i64>* %vCr, align 16
  %tmp = load <4 x i64>, <4 x i64>* %vCr, align 16
  %tmp2 = load i64, i64* %cV_R.addr, align 4
  %splat.splatinsert = insertelement <4 x i64> undef, i64 %tmp2, i32 0
  %splat.splat = shufflevector <4 x i64> %splat.splatinsert, <4 x i64> undef, <4 x i32> zeroinitializer
  store <4 x i64> %tmp, <4 x i64>* %__a.addr.i, align 16
  store <4 x i64> %splat.splat, <4 x i64>* %__b.addr.i, align 16
  ret void
}