; RUN: llc < %s -mtriple=x86_64-pc-win32 -mcpu=core-avx2 | FileCheck %s

attributes #0 = { nounwind }

declare <4 x float> @llvm.x86.fma.vfmadd.ss(<4 x float>, <4 x float>, <4 x float>)
declare <4 x float> @llvm.x86.fma.vfmsub.ss(<4 x float>, <4 x float>, <4 x float>)
declare <4 x float> @llvm.x86.fma.vfnmadd.ss(<4 x float>, <4 x float>, <4 x float>)
declare <4 x float> @llvm.x86.fma.vfnmsub.ss(<4 x float>, <4 x float>, <4 x float>)

declare <2 x double> @llvm.x86.fma.vfmadd.sd(<2 x double>, <2 x double>, <2 x double>)
declare <2 x double> @llvm.x86.fma.vfmsub.sd(<2 x double>, <2 x double>, <2 x double>)
declare <2 x double> @llvm.x86.fma.vfnmadd.sd(<2 x double>, <2 x double>, <2 x double>)
declare <2 x double> @llvm.x86.fma.vfnmsub.sd(<2 x double>, <2 x double>, <2 x double>)

define void @fmadd_aab_ss(float* %a, float* %b) #0 {
; CHECK-LABEL: fmadd_aab_ss:
; CHECK:      vmovss (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfmadd213ss (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovss %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load float, float* %a
  %av0 = insertelement <4 x float> undef, float %a.val, i32 0
  %av1 = insertelement <4 x float> %av0, float 0.000000e+00, i32 1
  %av2 = insertelement <4 x float> %av1, float 0.000000e+00, i32 2
  %av  = insertelement <4 x float> %av2, float 0.000000e+00, i32 3

  %b.val = load float, float* %b
  %bv0 = insertelement <4 x float> undef, float %b.val, i32 0
  %bv1 = insertelement <4 x float> %bv0, float 0.000000e+00, i32 1
  %bv2 = insertelement <4 x float> %bv1, float 0.000000e+00, i32 2
  %bv  = insertelement <4 x float> %bv2, float 0.000000e+00, i32 3

  %vr = call <4 x float> @llvm.x86.fma.vfmadd.ss(<4 x float> %av, <4 x float> %av, <4 x float> %bv)

  %sr = extractelement <4 x float> %vr, i32 0
  store float %sr, float* %a
  ret void
}

define void @fmadd_aba_ss(float* %a, float* %b) #0 {
; CHECK-LABEL: fmadd_aba_ss:
; CHECK:      vmovss (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfmadd132ss (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovss %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load float, float* %a
  %av0 = insertelement <4 x float> undef, float %a.val, i32 0
  %av1 = insertelement <4 x float> %av0, float 0.000000e+00, i32 1
  %av2 = insertelement <4 x float> %av1, float 0.000000e+00, i32 2
  %av  = insertelement <4 x float> %av2, float 0.000000e+00, i32 3

  %b.val = load float, float* %b
  %bv0 = insertelement <4 x float> undef, float %b.val, i32 0
  %bv1 = insertelement <4 x float> %bv0, float 0.000000e+00, i32 1
  %bv2 = insertelement <4 x float> %bv1, float 0.000000e+00, i32 2
  %bv  = insertelement <4 x float> %bv2, float 0.000000e+00, i32 3

  %vr = call <4 x float> @llvm.x86.fma.vfmadd.ss(<4 x float> %av, <4 x float> %bv, <4 x float> %av)

  %sr = extractelement <4 x float> %vr, i32 0
  store float %sr, float* %a
  ret void
}

define void @fmsub_aab_ss(float* %a, float* %b) #0 {
; CHECK-LABEL: fmsub_aab_ss:
; CHECK:      vmovss (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfmsub213ss (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovss %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load float, float* %a
  %av0 = insertelement <4 x float> undef, float %a.val, i32 0
  %av1 = insertelement <4 x float> %av0, float 0.000000e+00, i32 1
  %av2 = insertelement <4 x float> %av1, float 0.000000e+00, i32 2
  %av  = insertelement <4 x float> %av2, float 0.000000e+00, i32 3

  %b.val = load float, float* %b
  %bv0 = insertelement <4 x float> undef, float %b.val, i32 0
  %bv1 = insertelement <4 x float> %bv0, float 0.000000e+00, i32 1
  %bv2 = insertelement <4 x float> %bv1, float 0.000000e+00, i32 2
  %bv  = insertelement <4 x float> %bv2, float 0.000000e+00, i32 3

  %vr = call <4 x float> @llvm.x86.fma.vfmsub.ss(<4 x float> %av, <4 x float> %av, <4 x float> %bv)

  %sr = extractelement <4 x float> %vr, i32 0
  store float %sr, float* %a
  ret void
}

define void @fmsub_aba_ss(float* %a, float* %b) #0 {
; CHECK-LABEL: fmsub_aba_ss:
; CHECK:      vmovss (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfmsub132ss (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovss %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load float, float* %a
  %av0 = insertelement <4 x float> undef, float %a.val, i32 0
  %av1 = insertelement <4 x float> %av0, float 0.000000e+00, i32 1
  %av2 = insertelement <4 x float> %av1, float 0.000000e+00, i32 2
  %av  = insertelement <4 x float> %av2, float 0.000000e+00, i32 3

  %b.val = load float, float* %b
  %bv0 = insertelement <4 x float> undef, float %b.val, i32 0
  %bv1 = insertelement <4 x float> %bv0, float 0.000000e+00, i32 1
  %bv2 = insertelement <4 x float> %bv1, float 0.000000e+00, i32 2
  %bv  = insertelement <4 x float> %bv2, float 0.000000e+00, i32 3

  %vr = call <4 x float> @llvm.x86.fma.vfmsub.ss(<4 x float> %av, <4 x float> %bv, <4 x float> %av)

  %sr = extractelement <4 x float> %vr, i32 0
  store float %sr, float* %a
  ret void
}

define void @fnmadd_aab_ss(float* %a, float* %b) #0 {
; CHECK-LABEL: fnmadd_aab_ss:
; CHECK:      vmovss (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfnmadd213ss (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovss %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load float, float* %a
  %av0 = insertelement <4 x float> undef, float %a.val, i32 0
  %av1 = insertelement <4 x float> %av0, float 0.000000e+00, i32 1
  %av2 = insertelement <4 x float> %av1, float 0.000000e+00, i32 2
  %av  = insertelement <4 x float> %av2, float 0.000000e+00, i32 3

  %b.val = load float, float* %b
  %bv0 = insertelement <4 x float> undef, float %b.val, i32 0
  %bv1 = insertelement <4 x float> %bv0, float 0.000000e+00, i32 1
  %bv2 = insertelement <4 x float> %bv1, float 0.000000e+00, i32 2
  %bv  = insertelement <4 x float> %bv2, float 0.000000e+00, i32 3

  %vr = call <4 x float> @llvm.x86.fma.vfnmadd.ss(<4 x float> %av, <4 x float> %av, <4 x float> %bv)

  %sr = extractelement <4 x float> %vr, i32 0
  store float %sr, float* %a
  ret void
}

define void @fnmadd_aba_ss(float* %a, float* %b) #0 {
; CHECK-LABEL: fnmadd_aba_ss:
; CHECK:      vmovss (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfnmadd132ss (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovss %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load float, float* %a
  %av0 = insertelement <4 x float> undef, float %a.val, i32 0
  %av1 = insertelement <4 x float> %av0, float 0.000000e+00, i32 1
  %av2 = insertelement <4 x float> %av1, float 0.000000e+00, i32 2
  %av  = insertelement <4 x float> %av2, float 0.000000e+00, i32 3

  %b.val = load float, float* %b
  %bv0 = insertelement <4 x float> undef, float %b.val, i32 0
  %bv1 = insertelement <4 x float> %bv0, float 0.000000e+00, i32 1
  %bv2 = insertelement <4 x float> %bv1, float 0.000000e+00, i32 2
  %bv  = insertelement <4 x float> %bv2, float 0.000000e+00, i32 3

  %vr = call <4 x float> @llvm.x86.fma.vfnmadd.ss(<4 x float> %av, <4 x float> %bv, <4 x float> %av)

  %sr = extractelement <4 x float> %vr, i32 0
  store float %sr, float* %a
  ret void
}

define void @fnmsub_aab_ss(float* %a, float* %b) #0 {
; CHECK-LABEL: fnmsub_aab_ss:
; CHECK:      vmovss (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfnmsub213ss (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovss %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load float, float* %a
  %av0 = insertelement <4 x float> undef, float %a.val, i32 0
  %av1 = insertelement <4 x float> %av0, float 0.000000e+00, i32 1
  %av2 = insertelement <4 x float> %av1, float 0.000000e+00, i32 2
  %av  = insertelement <4 x float> %av2, float 0.000000e+00, i32 3

  %b.val = load float, float* %b
  %bv0 = insertelement <4 x float> undef, float %b.val, i32 0
  %bv1 = insertelement <4 x float> %bv0, float 0.000000e+00, i32 1
  %bv2 = insertelement <4 x float> %bv1, float 0.000000e+00, i32 2
  %bv  = insertelement <4 x float> %bv2, float 0.000000e+00, i32 3

  %vr = call <4 x float> @llvm.x86.fma.vfnmsub.ss(<4 x float> %av, <4 x float> %av, <4 x float> %bv)

  %sr = extractelement <4 x float> %vr, i32 0
  store float %sr, float* %a
  ret void
}

define void @fnmsub_aba_ss(float* %a, float* %b) #0 {
; CHECK-LABEL: fnmsub_aba_ss:
; CHECK:      vmovss (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfnmsub132ss (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovss %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load float, float* %a
  %av0 = insertelement <4 x float> undef, float %a.val, i32 0
  %av1 = insertelement <4 x float> %av0, float 0.000000e+00, i32 1
  %av2 = insertelement <4 x float> %av1, float 0.000000e+00, i32 2
  %av  = insertelement <4 x float> %av2, float 0.000000e+00, i32 3

  %b.val = load float, float* %b
  %bv0 = insertelement <4 x float> undef, float %b.val, i32 0
  %bv1 = insertelement <4 x float> %bv0, float 0.000000e+00, i32 1
  %bv2 = insertelement <4 x float> %bv1, float 0.000000e+00, i32 2
  %bv  = insertelement <4 x float> %bv2, float 0.000000e+00, i32 3

  %vr = call <4 x float> @llvm.x86.fma.vfnmsub.ss(<4 x float> %av, <4 x float> %bv, <4 x float> %av)

  %sr = extractelement <4 x float> %vr, i32 0
  store float %sr, float* %a
  ret void
}

define void @fmadd_aab_sd(double* %a, double* %b) #0 {
; CHECK-LABEL: fmadd_aab_sd:
; CHECK:      vmovsd (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfmadd213sd (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovlps %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load double, double* %a
  %av0 = insertelement <2 x double> undef, double %a.val, i32 0
  %av  = insertelement <2 x double> %av0, double 0.000000e+00, i32 1

  %b.val = load double, double* %b
  %bv0 = insertelement <2 x double> undef, double %b.val, i32 0
  %bv  = insertelement <2 x double> %bv0, double 0.000000e+00, i32 1

  %vr = call <2 x double> @llvm.x86.fma.vfmadd.sd(<2 x double> %av, <2 x double> %av, <2 x double> %bv)

  %sr = extractelement <2 x double> %vr, i32 0
  store double %sr, double* %a
  ret void
}

define void @fmadd_aba_sd(double* %a, double* %b) #0 {
; CHECK-LABEL: fmadd_aba_sd:
; CHECK:      vmovsd (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfmadd132sd (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovlps %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load double, double* %a
  %av0 = insertelement <2 x double> undef, double %a.val, i32 0
  %av  = insertelement <2 x double> %av0, double 0.000000e+00, i32 1

  %b.val = load double, double* %b
  %bv0 = insertelement <2 x double> undef, double %b.val, i32 0
  %bv  = insertelement <2 x double> %bv0, double 0.000000e+00, i32 1

  %vr = call <2 x double> @llvm.x86.fma.vfmadd.sd(<2 x double> %av, <2 x double> %bv, <2 x double> %av)

  %sr = extractelement <2 x double> %vr, i32 0
  store double %sr, double* %a
  ret void
}

define void @fmsub_aab_sd(double* %a, double* %b) #0 {
; CHECK-LABEL: fmsub_aab_sd:
; CHECK:      vmovsd (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfmsub213sd (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovlps %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load double, double* %a
  %av0 = insertelement <2 x double> undef, double %a.val, i32 0
  %av  = insertelement <2 x double> %av0, double 0.000000e+00, i32 1

  %b.val = load double, double* %b
  %bv0 = insertelement <2 x double> undef, double %b.val, i32 0
  %bv  = insertelement <2 x double> %bv0, double 0.000000e+00, i32 1

  %vr = call <2 x double> @llvm.x86.fma.vfmsub.sd(<2 x double> %av, <2 x double> %av, <2 x double> %bv)

  %sr = extractelement <2 x double> %vr, i32 0
  store double %sr, double* %a
  ret void
}

define void @fmsub_aba_sd(double* %a, double* %b) #0 {
; CHECK-LABEL: fmsub_aba_sd:
; CHECK:      vmovsd (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfmsub132sd (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovlps %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load double, double* %a
  %av0 = insertelement <2 x double> undef, double %a.val, i32 0
  %av  = insertelement <2 x double> %av0, double 0.000000e+00, i32 1

  %b.val = load double, double* %b
  %bv0 = insertelement <2 x double> undef, double %b.val, i32 0
  %bv  = insertelement <2 x double> %bv0, double 0.000000e+00, i32 1

  %vr = call <2 x double> @llvm.x86.fma.vfmsub.sd(<2 x double> %av, <2 x double> %bv, <2 x double> %av)

  %sr = extractelement <2 x double> %vr, i32 0
  store double %sr, double* %a
  ret void
}

define void @fnmadd_aab_sd(double* %a, double* %b) #0 {
; CHECK-LABEL: fnmadd_aab_sd:
; CHECK:      vmovsd (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfnmadd213sd (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovlps %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load double, double* %a
  %av0 = insertelement <2 x double> undef, double %a.val, i32 0
  %av  = insertelement <2 x double> %av0, double 0.000000e+00, i32 1

  %b.val = load double, double* %b
  %bv0 = insertelement <2 x double> undef, double %b.val, i32 0
  %bv  = insertelement <2 x double> %bv0, double 0.000000e+00, i32 1

  %vr = call <2 x double> @llvm.x86.fma.vfnmadd.sd(<2 x double> %av, <2 x double> %av, <2 x double> %bv)

  %sr = extractelement <2 x double> %vr, i32 0
  store double %sr, double* %a
  ret void
}

define void @fnmadd_aba_sd(double* %a, double* %b) #0 {
; CHECK-LABEL: fnmadd_aba_sd:
; CHECK:      vmovsd (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfnmadd132sd (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovlps %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load double, double* %a
  %av0 = insertelement <2 x double> undef, double %a.val, i32 0
  %av  = insertelement <2 x double> %av0, double 0.000000e+00, i32 1

  %b.val = load double, double* %b
  %bv0 = insertelement <2 x double> undef, double %b.val, i32 0
  %bv  = insertelement <2 x double> %bv0, double 0.000000e+00, i32 1

  %vr = call <2 x double> @llvm.x86.fma.vfnmadd.sd(<2 x double> %av, <2 x double> %bv, <2 x double> %av)

  %sr = extractelement <2 x double> %vr, i32 0
  store double %sr, double* %a
  ret void
}

define void @fnmsub_aab_sd(double* %a, double* %b) #0 {
; CHECK-LABEL: fnmsub_aab_sd:
; CHECK:      vmovsd (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfnmsub213sd (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovlps %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load double, double* %a
  %av0 = insertelement <2 x double> undef, double %a.val, i32 0
  %av  = insertelement <2 x double> %av0, double 0.000000e+00, i32 1

  %b.val = load double, double* %b
  %bv0 = insertelement <2 x double> undef, double %b.val, i32 0
  %bv  = insertelement <2 x double> %bv0, double 0.000000e+00, i32 1

  %vr = call <2 x double> @llvm.x86.fma.vfnmsub.sd(<2 x double> %av, <2 x double> %av, <2 x double> %bv)

  %sr = extractelement <2 x double> %vr, i32 0
  store double %sr, double* %a
  ret void
}

define void @fnmsub_aba_sd(double* %a, double* %b) #0 {
; CHECK-LABEL: fnmsub_aba_sd:
; CHECK:      vmovsd (%rcx), %[[XMM:xmm[0-9]+]]
; CHECK-NEXT: vfnmsub132sd (%rdx), %[[XMM]], %[[XMM]]
; CHECK-NEXT: vmovlps %[[XMM]], (%rcx)
; CHECK-NEXT: ret
  %a.val = load double, double* %a
  %av0 = insertelement <2 x double> undef, double %a.val, i32 0
  %av  = insertelement <2 x double> %av0, double 0.000000e+00, i32 1

  %b.val = load double, double* %b
  %bv0 = insertelement <2 x double> undef, double %b.val, i32 0
  %bv  = insertelement <2 x double> %bv0, double 0.000000e+00, i32 1

  %vr = call <2 x double> @llvm.x86.fma.vfnmsub.sd(<2 x double> %av, <2 x double> %bv, <2 x double> %av)

  %sr = extractelement <2 x double> %vr, i32 0
  store double %sr, double* %a
  ret void
}


