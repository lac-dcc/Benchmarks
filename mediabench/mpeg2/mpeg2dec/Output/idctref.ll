; ModuleID = 'idctref.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

@c = internal global [8 x [8 x double]] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @Initialize_Reference_IDCT() #0 {
entry:
  %freq = alloca i32, align 4
  %time = alloca i32, align 4
  %scale = alloca double, align 8
  %0 = bitcast i32* %freq to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %time to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  store i32 0, i32* %freq, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %3 = load i32, i32* %freq, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, 8
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %freq, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %call = call double @sqrt(double 1.250000e-01) #4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call, %cond.true ], [ 5.000000e-01, %cond.false ]
  store double %cond, double* %scale, align 8, !tbaa !6
  store i32 0, i32* %time, align 4, !tbaa !2
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %cond.end
  %5 = load i32, i32* %time, align 4, !tbaa !2
  %cmp3 = icmp slt i32 %5, 8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %6 = load double, double* %scale, align 8, !tbaa !6
  %7 = load i32, i32* %freq, align 4, !tbaa !2
  %conv = sitofp i32 %7 to double
  %mul = fmul double 0x3FD921FB54442D18, %conv
  %8 = load i32, i32* %time, align 4, !tbaa !2
  %conv5 = sitofp i32 %8 to double
  %add = fadd double %conv5, 5.000000e-01
  %mul6 = fmul double %mul, %add
  %call7 = call double @cos(double %mul6) #4
  %mul8 = fmul double %6, %call7
  %9 = load i32, i32* %time, align 4, !tbaa !2
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %freq, align 4, !tbaa !2
  %idxprom9 = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i32 0, i64 %idxprom9
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %mul8, double* %arrayidx10, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %11 = load i32, i32* %time, align 4, !tbaa !2
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %time, align 4, !tbaa !2
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %12 = load i32, i32* %freq, align 4, !tbaa !2
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %freq, align 4, !tbaa !2
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %13 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #3
  %14 = bitcast i32* %time to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #3
  %15 = bitcast i32* %freq to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare double @sqrt(double) #2

; Function Attrs: nounwind readnone
declare double @cos(double) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @Reference_IDCT(i16* %block) #0 {
entry:
  %block.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %v = alloca i32, align 4
  %partial_product = alloca double, align 8
  %tmp = alloca [64 x double], align 16
  store i16* %block, i16** %block.addr, align 8, !tbaa !8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast double* %partial_product to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast [64 x double]* %tmp to i8*
  call void @llvm.lifetime.start(i64 512, i8* %5) #3
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %cmp = icmp slt i32 %6, 8
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.18, %for.body
  %7 = load i32, i32* %j, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %7, 8
  br i1 %cmp2, label %for.body.3, label %for.end.20

for.body.3:                                       ; preds = %for.cond.1
  store double 0.000000e+00, double* %partial_product, align 8, !tbaa !6
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %8 = load i32, i32* %k, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %8, 8
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %9 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom7 = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i32 0, i64 %idxprom
  %11 = load double, double* %arrayidx8, align 8, !tbaa !6
  %12 = load i32, i32* %i, align 4, !tbaa !2
  %mul = mul nsw i32 8, %12
  %13 = load i32, i32* %k, align 4, !tbaa !2
  %add = add nsw i32 %mul, %13
  %idxprom9 = sext i32 %add to i64
  %14 = load i16*, i16** %block.addr, align 8, !tbaa !8
  %arrayidx10 = getelementptr inbounds i16, i16* %14, i64 %idxprom9
  %15 = load i16, i16* %arrayidx10, align 2, !tbaa !10
  %conv = sext i16 %15 to i32
  %conv11 = sitofp i32 %conv to double
  %mul12 = fmul double %11, %conv11
  %16 = load double, double* %partial_product, align 8, !tbaa !6
  %add13 = fadd double %16, %mul12
  store double %add13, double* %partial_product, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %17 = load i32, i32* %k, align 4, !tbaa !2
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4, !tbaa !2
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %18 = load double, double* %partial_product, align 8, !tbaa !6
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %mul14 = mul nsw i32 8, %19
  %20 = load i32, i32* %j, align 4, !tbaa !2
  %add15 = add nsw i32 %mul14, %20
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [64 x double], [64 x double]* %tmp, i32 0, i64 %idxprom16
  store double %18, double* %arrayidx17, align 8, !tbaa !6
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %21 = load i32, i32* %j, align 4, !tbaa !2
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %j, align 4, !tbaa !2
  br label %for.cond.1

for.end.20:                                       ; preds = %for.cond.1
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end.20
  %22 = load i32, i32* %i, align 4, !tbaa !2
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.67, %for.end.23
  %23 = load i32, i32* %j, align 4, !tbaa !2
  %cmp25 = icmp slt i32 %23, 8
  br i1 %cmp25, label %for.body.27, label %for.end.69

for.body.27:                                      ; preds = %for.cond.24
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.64, %for.body.27
  %24 = load i32, i32* %i, align 4, !tbaa !2
  %cmp29 = icmp slt i32 %24, 8
  br i1 %cmp29, label %for.body.31, label %for.end.66

for.body.31:                                      ; preds = %for.cond.28
  store double 0.000000e+00, double* %partial_product, align 8, !tbaa !6
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.46, %for.body.31
  %25 = load i32, i32* %k, align 4, !tbaa !2
  %cmp33 = icmp slt i32 %25, 8
  br i1 %cmp33, label %for.body.35, label %for.end.48

for.body.35:                                      ; preds = %for.cond.32
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom36 = sext i32 %26 to i64
  %27 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom37 = sext i32 %27 to i64
  %arrayidx38 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx38, i32 0, i64 %idxprom36
  %28 = load double, double* %arrayidx39, align 8, !tbaa !6
  %29 = load i32, i32* %k, align 4, !tbaa !2
  %mul40 = mul nsw i32 8, %29
  %30 = load i32, i32* %j, align 4, !tbaa !2
  %add41 = add nsw i32 %mul40, %30
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [64 x double], [64 x double]* %tmp, i32 0, i64 %idxprom42
  %31 = load double, double* %arrayidx43, align 8, !tbaa !6
  %mul44 = fmul double %28, %31
  %32 = load double, double* %partial_product, align 8, !tbaa !6
  %add45 = fadd double %32, %mul44
  store double %add45, double* %partial_product, align 8, !tbaa !6
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.35
  %33 = load i32, i32* %k, align 4, !tbaa !2
  %inc47 = add nsw i32 %33, 1
  store i32 %inc47, i32* %k, align 4, !tbaa !2
  br label %for.cond.32

for.end.48:                                       ; preds = %for.cond.32
  %34 = load double, double* %partial_product, align 8, !tbaa !6
  %add49 = fadd double %34, 5.000000e-01
  %call = call double @floor(double %add49) #4
  %conv50 = fptosi double %call to i32
  store i32 %conv50, i32* %v, align 4, !tbaa !2
  %35 = load i32, i32* %v, align 4, !tbaa !2
  %cmp51 = icmp slt i32 %35, -256
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.48
  br label %cond.end.57

cond.false:                                       ; preds = %for.end.48
  %36 = load i32, i32* %v, align 4, !tbaa !2
  %cmp53 = icmp sgt i32 %36, 255
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.false
  br label %cond.end

cond.false.56:                                    ; preds = %cond.false
  %37 = load i32, i32* %v, align 4, !tbaa !2
  br label %cond.end

cond.end:                                         ; preds = %cond.false.56, %cond.true.55
  %cond = phi i32 [ 255, %cond.true.55 ], [ %37, %cond.false.56 ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end, %cond.true
  %cond58 = phi i32 [ -256, %cond.true ], [ %cond, %cond.end ]
  %conv59 = trunc i32 %cond58 to i16
  %38 = load i32, i32* %i, align 4, !tbaa !2
  %mul60 = mul nsw i32 8, %38
  %39 = load i32, i32* %j, align 4, !tbaa !2
  %add61 = add nsw i32 %mul60, %39
  %idxprom62 = sext i32 %add61 to i64
  %40 = load i16*, i16** %block.addr, align 8, !tbaa !8
  %arrayidx63 = getelementptr inbounds i16, i16* %40, i64 %idxprom62
  store i16 %conv59, i16* %arrayidx63, align 2, !tbaa !10
  br label %for.inc.64

for.inc.64:                                       ; preds = %cond.end.57
  %41 = load i32, i32* %i, align 4, !tbaa !2
  %inc65 = add nsw i32 %41, 1
  store i32 %inc65, i32* %i, align 4, !tbaa !2
  br label %for.cond.28

for.end.66:                                       ; preds = %for.cond.28
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.66
  %42 = load i32, i32* %j, align 4, !tbaa !2
  %inc68 = add nsw i32 %42, 1
  store i32 %inc68, i32* %j, align 4, !tbaa !2
  br label %for.cond.24

for.end.69:                                       ; preds = %for.cond.24
  %43 = bitcast [64 x double]* %tmp to i8*
  call void @llvm.lifetime.end(i64 512, i8* %43) #3
  %44 = bitcast double* %partial_product to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #3
  %45 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #3
  %46 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  %47 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #3
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #3
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !4, i64 0}
