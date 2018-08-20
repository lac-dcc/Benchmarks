; ModuleID = 'lpc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind ssp uwtable
define void @Gsm_LPC_Analysis(%struct.gsm_state* %S, i16* %s, i16* %LARc) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %s.addr = alloca i16*, align 8
  %LARc.addr = alloca i16*, align 8
  %L_ACF = alloca [9 x i64], align 16
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  store i16* %s, i16** %s.addr, align 8, !tbaa !2
  store i16* %LARc, i16** %LARc.addr, align 8, !tbaa !2
  %0 = bitcast [9 x i64]* %L_ACF to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #3
  %1 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [9 x i64], [9 x i64]* %L_ACF, i32 0, i32 0
  call void @Autocorrelation(i16* %1, i64* %arraydecay)
  %arraydecay1 = getelementptr inbounds [9 x i64], [9 x i64]* %L_ACF, i32 0, i32 0
  %2 = load i16*, i16** %LARc.addr, align 8, !tbaa !2
  call void @Reflection_coefficients(i64* %arraydecay1, i16* %2)
  %3 = load i16*, i16** %LARc.addr, align 8, !tbaa !2
  call void @Transformation_to_Log_Area_Ratios(i16* %3)
  %4 = load i16*, i16** %LARc.addr, align 8, !tbaa !2
  call void @Quantization_and_coding(i16* %4)
  %5 = bitcast [9 x i64]* %L_ACF to i8*
  call void @llvm.lifetime.end(i64 72, i8* %5) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @Autocorrelation(i16* %s, i64* %L_ACF) #0 {
entry:
  %s.addr = alloca i16*, align 8
  %L_ACF.addr = alloca i64*, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i16, align 2
  %smax = alloca i16, align 2
  %scalauto = alloca i16, align 2
  %sp = alloca i16*, align 8
  %sl = alloca i16, align 2
  store i16* %s, i16** %s.addr, align 8, !tbaa !2
  store i64* %L_ACF, i64** %L_ACF.addr, align 8, !tbaa !2
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #3
  %3 = bitcast i16* %smax to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #3
  %4 = bitcast i16* %scalauto to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #3
  store i16 0, i16* %smax, align 2, !tbaa !6
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %k, align 4, !tbaa !8
  %cmp = icmp sle i32 %5, 159
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom = sext i32 %6 to i64
  %7 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv = sext i16 %8 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %cond.true, label %cond.false.12

cond.true:                                        ; preds = %for.body
  %9 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom3 = sext i32 %9 to i64
  %10 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i16, i16* %10, i64 %idxprom3
  %11 = load i16, i16* %arrayidx4, align 2, !tbaa !6
  %conv5 = sext i16 %11 to i32
  %cmp6 = icmp eq i32 %conv5, -32768
  br i1 %cmp6, label %cond.true.8, label %cond.false

cond.true.8:                                      ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %12 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom9 = sext i32 %12 to i64
  %13 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i16, i16* %13, i64 %idxprom9
  %14 = load i16, i16* %arrayidx10, align 2, !tbaa !6
  %conv11 = sext i16 %14 to i32
  %sub = sub nsw i32 0, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.8
  %cond = phi i32 [ 32767, %cond.true.8 ], [ %sub, %cond.false ]
  br label %cond.end.16

cond.false.12:                                    ; preds = %for.body
  %15 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom13 = sext i32 %15 to i64
  %16 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i16, i16* %16, i64 %idxprom13
  %17 = load i16, i16* %arrayidx14, align 2, !tbaa !6
  %conv15 = sext i16 %17 to i32
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.12, %cond.end
  %cond17 = phi i32 [ %cond, %cond.end ], [ %conv15, %cond.false.12 ]
  %conv18 = trunc i32 %cond17 to i16
  store i16 %conv18, i16* %temp, align 2, !tbaa !6
  %18 = load i16, i16* %temp, align 2, !tbaa !6
  %conv19 = sext i16 %18 to i32
  %19 = load i16, i16* %smax, align 2, !tbaa !6
  %conv20 = sext i16 %19 to i32
  %cmp21 = icmp sgt i32 %conv19, %conv20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.16
  %20 = load i16, i16* %temp, align 2, !tbaa !6
  store i16 %20, i16* %smax, align 2, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %k, align 4, !tbaa !8
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i16, i16* %smax, align 2, !tbaa !6
  %conv23 = sext i16 %22 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %for.end
  store i16 0, i16* %scalauto, align 2, !tbaa !6
  br label %if.end.31

if.else:                                          ; preds = %for.end
  %23 = load i16, i16* %smax, align 2, !tbaa !6
  %conv27 = sext i16 %23 to i64
  %shl = shl i64 %conv27, 16
  %call = call signext i16 @gsm_norm(i64 %shl)
  %conv28 = sext i16 %call to i32
  %sub29 = sub nsw i32 4, %conv28
  %conv30 = trunc i32 %sub29 to i16
  store i16 %conv30, i16* %scalauto, align 2, !tbaa !6
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.26
  %24 = load i16, i16* %scalauto, align 2, !tbaa !6
  %conv32 = sext i16 %24 to i32
  %cmp33 = icmp sgt i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.101

if.then.35:                                       ; preds = %if.end.31
  %25 = load i16, i16* %scalauto, align 2, !tbaa !6
  %conv36 = sext i16 %25 to i32
  switch i32 %conv36, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.50
    i32 3, label %sw.bb.67
    i32 4, label %sw.bb.84
  ]

sw.bb:                                            ; preds = %if.then.35
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.47, %sw.bb
  %26 = load i32, i32* %k, align 4, !tbaa !8
  %cmp38 = icmp sle i32 %26, 159
  br i1 %cmp38, label %for.body.40, label %for.end.49

for.body.40:                                      ; preds = %for.cond.37
  %27 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom41 = sext i32 %27 to i64
  %28 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i16, i16* %28, i64 %idxprom41
  %29 = load i16, i16* %arrayidx42, align 2, !tbaa !6
  %conv43 = sext i16 %29 to i64
  %mul = mul nsw i64 %conv43, 16384
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv44 = trunc i64 %shr to i16
  %30 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom45 = sext i32 %30 to i64
  %31 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds i16, i16* %31, i64 %idxprom45
  store i16 %conv44, i16* %arrayidx46, align 2, !tbaa !6
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.40
  %32 = load i32, i32* %k, align 4, !tbaa !8
  %inc48 = add nsw i32 %32, 1
  store i32 %inc48, i32* %k, align 4, !tbaa !8
  br label %for.cond.37

for.end.49:                                       ; preds = %for.cond.37
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.then.35
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.64, %sw.bb.50
  %33 = load i32, i32* %k, align 4, !tbaa !8
  %cmp52 = icmp sle i32 %33, 159
  br i1 %cmp52, label %for.body.54, label %for.end.66

for.body.54:                                      ; preds = %for.cond.51
  %34 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom55 = sext i32 %34 to i64
  %35 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds i16, i16* %35, i64 %idxprom55
  %36 = load i16, i16* %arrayidx56, align 2, !tbaa !6
  %conv57 = sext i16 %36 to i64
  %mul58 = mul nsw i64 %conv57, 8192
  %add59 = add nsw i64 %mul58, 16384
  %shr60 = ashr i64 %add59, 15
  %conv61 = trunc i64 %shr60 to i16
  %37 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom62 = sext i32 %37 to i64
  %38 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds i16, i16* %38, i64 %idxprom62
  store i16 %conv61, i16* %arrayidx63, align 2, !tbaa !6
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.54
  %39 = load i32, i32* %k, align 4, !tbaa !8
  %inc65 = add nsw i32 %39, 1
  store i32 %inc65, i32* %k, align 4, !tbaa !8
  br label %for.cond.51

for.end.66:                                       ; preds = %for.cond.51
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.then.35
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.81, %sw.bb.67
  %40 = load i32, i32* %k, align 4, !tbaa !8
  %cmp69 = icmp sle i32 %40, 159
  br i1 %cmp69, label %for.body.71, label %for.end.83

for.body.71:                                      ; preds = %for.cond.68
  %41 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom72 = sext i32 %41 to i64
  %42 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds i16, i16* %42, i64 %idxprom72
  %43 = load i16, i16* %arrayidx73, align 2, !tbaa !6
  %conv74 = sext i16 %43 to i64
  %mul75 = mul nsw i64 %conv74, 4096
  %add76 = add nsw i64 %mul75, 16384
  %shr77 = ashr i64 %add76, 15
  %conv78 = trunc i64 %shr77 to i16
  %44 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom79 = sext i32 %44 to i64
  %45 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds i16, i16* %45, i64 %idxprom79
  store i16 %conv78, i16* %arrayidx80, align 2, !tbaa !6
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.71
  %46 = load i32, i32* %k, align 4, !tbaa !8
  %inc82 = add nsw i32 %46, 1
  store i32 %inc82, i32* %k, align 4, !tbaa !8
  br label %for.cond.68

for.end.83:                                       ; preds = %for.cond.68
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.then.35
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.98, %sw.bb.84
  %47 = load i32, i32* %k, align 4, !tbaa !8
  %cmp86 = icmp sle i32 %47, 159
  br i1 %cmp86, label %for.body.88, label %for.end.100

for.body.88:                                      ; preds = %for.cond.85
  %48 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom89 = sext i32 %48 to i64
  %49 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds i16, i16* %49, i64 %idxprom89
  %50 = load i16, i16* %arrayidx90, align 2, !tbaa !6
  %conv91 = sext i16 %50 to i64
  %mul92 = mul nsw i64 %conv91, 2048
  %add93 = add nsw i64 %mul92, 16384
  %shr94 = ashr i64 %add93, 15
  %conv95 = trunc i64 %shr94 to i16
  %51 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom96 = sext i32 %51 to i64
  %52 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arrayidx97 = getelementptr inbounds i16, i16* %52, i64 %idxprom96
  store i16 %conv95, i16* %arrayidx97, align 2, !tbaa !6
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.88
  %53 = load i32, i32* %k, align 4, !tbaa !8
  %inc99 = add nsw i32 %53, 1
  store i32 %inc99, i32* %k, align 4, !tbaa !8
  br label %for.cond.85

for.end.100:                                      ; preds = %for.cond.85
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.35, %for.end.100, %for.end.83, %for.end.66, %for.end.49
  br label %if.end.101

if.end.101:                                       ; preds = %sw.epilog, %if.end.31
  %54 = bitcast i16** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #3
  %55 = load i16*, i16** %s.addr, align 8, !tbaa !2
  store i16* %55, i16** %sp, align 8, !tbaa !2
  %56 = bitcast i16* %sl to i8*
  call void @llvm.lifetime.start(i64 2, i8* %56) #3
  %57 = load i16*, i16** %sp, align 8, !tbaa !2
  %58 = load i16, i16* %57, align 2, !tbaa !6
  store i16 %58, i16* %sl, align 2, !tbaa !6
  store i32 9, i32* %k, align 4, !tbaa !8
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.104, %if.end.101
  %59 = load i32, i32* %k, align 4, !tbaa !8
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %k, align 4, !tbaa !8
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %for.body.103, label %for.end.107

for.body.103:                                     ; preds = %for.cond.102
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.103
  %60 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom105 = sext i32 %60 to i64
  %61 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx106 = getelementptr inbounds i64, i64* %61, i64 %idxprom105
  store i64 0, i64* %arrayidx106, align 8, !tbaa !10
  br label %for.cond.102

for.end.107:                                      ; preds = %for.cond.102
  %62 = load i16, i16* %sl, align 2, !tbaa !6
  %conv108 = sext i16 %62 to i64
  %63 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds i16, i16* %63, i64 0
  %64 = load i16, i16* %arrayidx109, align 2, !tbaa !6
  %conv110 = sext i16 %64 to i64
  %mul111 = mul nsw i64 %conv108, %conv110
  %65 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds i64, i64* %65, i64 0
  %66 = load i64, i64* %arrayidx112, align 8, !tbaa !10
  %add113 = add nsw i64 %66, %mul111
  store i64 %add113, i64* %arrayidx112, align 8, !tbaa !10
  %67 = load i16*, i16** %sp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %67, i32 1
  store i16* %incdec.ptr, i16** %sp, align 8, !tbaa !2
  %68 = load i16, i16* %incdec.ptr, align 2, !tbaa !6
  store i16 %68, i16* %sl, align 2, !tbaa !6
  %69 = load i16, i16* %sl, align 2, !tbaa !6
  %conv114 = sext i16 %69 to i64
  %70 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds i16, i16* %70, i64 0
  %71 = load i16, i16* %arrayidx115, align 2, !tbaa !6
  %conv116 = sext i16 %71 to i64
  %mul117 = mul nsw i64 %conv114, %conv116
  %72 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx118 = getelementptr inbounds i64, i64* %72, i64 0
  %73 = load i64, i64* %arrayidx118, align 8, !tbaa !10
  %add119 = add nsw i64 %73, %mul117
  store i64 %add119, i64* %arrayidx118, align 8, !tbaa !10
  %74 = load i16, i16* %sl, align 2, !tbaa !6
  %conv120 = sext i16 %74 to i64
  %75 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx121 = getelementptr inbounds i16, i16* %75, i64 -1
  %76 = load i16, i16* %arrayidx121, align 2, !tbaa !6
  %conv122 = sext i16 %76 to i64
  %mul123 = mul nsw i64 %conv120, %conv122
  %77 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx124 = getelementptr inbounds i64, i64* %77, i64 1
  %78 = load i64, i64* %arrayidx124, align 8, !tbaa !10
  %add125 = add nsw i64 %78, %mul123
  store i64 %add125, i64* %arrayidx124, align 8, !tbaa !10
  %79 = load i16*, i16** %sp, align 8, !tbaa !2
  %incdec.ptr126 = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %incdec.ptr126, i16** %sp, align 8, !tbaa !2
  %80 = load i16, i16* %incdec.ptr126, align 2, !tbaa !6
  store i16 %80, i16* %sl, align 2, !tbaa !6
  %81 = load i16, i16* %sl, align 2, !tbaa !6
  %conv127 = sext i16 %81 to i64
  %82 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx128 = getelementptr inbounds i16, i16* %82, i64 0
  %83 = load i16, i16* %arrayidx128, align 2, !tbaa !6
  %conv129 = sext i16 %83 to i64
  %mul130 = mul nsw i64 %conv127, %conv129
  %84 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx131 = getelementptr inbounds i64, i64* %84, i64 0
  %85 = load i64, i64* %arrayidx131, align 8, !tbaa !10
  %add132 = add nsw i64 %85, %mul130
  store i64 %add132, i64* %arrayidx131, align 8, !tbaa !10
  %86 = load i16, i16* %sl, align 2, !tbaa !6
  %conv133 = sext i16 %86 to i64
  %87 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx134 = getelementptr inbounds i16, i16* %87, i64 -1
  %88 = load i16, i16* %arrayidx134, align 2, !tbaa !6
  %conv135 = sext i16 %88 to i64
  %mul136 = mul nsw i64 %conv133, %conv135
  %89 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx137 = getelementptr inbounds i64, i64* %89, i64 1
  %90 = load i64, i64* %arrayidx137, align 8, !tbaa !10
  %add138 = add nsw i64 %90, %mul136
  store i64 %add138, i64* %arrayidx137, align 8, !tbaa !10
  %91 = load i16, i16* %sl, align 2, !tbaa !6
  %conv139 = sext i16 %91 to i64
  %92 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx140 = getelementptr inbounds i16, i16* %92, i64 -2
  %93 = load i16, i16* %arrayidx140, align 2, !tbaa !6
  %conv141 = sext i16 %93 to i64
  %mul142 = mul nsw i64 %conv139, %conv141
  %94 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx143 = getelementptr inbounds i64, i64* %94, i64 2
  %95 = load i64, i64* %arrayidx143, align 8, !tbaa !10
  %add144 = add nsw i64 %95, %mul142
  store i64 %add144, i64* %arrayidx143, align 8, !tbaa !10
  %96 = load i16*, i16** %sp, align 8, !tbaa !2
  %incdec.ptr145 = getelementptr inbounds i16, i16* %96, i32 1
  store i16* %incdec.ptr145, i16** %sp, align 8, !tbaa !2
  %97 = load i16, i16* %incdec.ptr145, align 2, !tbaa !6
  store i16 %97, i16* %sl, align 2, !tbaa !6
  %98 = load i16, i16* %sl, align 2, !tbaa !6
  %conv146 = sext i16 %98 to i64
  %99 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx147 = getelementptr inbounds i16, i16* %99, i64 0
  %100 = load i16, i16* %arrayidx147, align 2, !tbaa !6
  %conv148 = sext i16 %100 to i64
  %mul149 = mul nsw i64 %conv146, %conv148
  %101 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx150 = getelementptr inbounds i64, i64* %101, i64 0
  %102 = load i64, i64* %arrayidx150, align 8, !tbaa !10
  %add151 = add nsw i64 %102, %mul149
  store i64 %add151, i64* %arrayidx150, align 8, !tbaa !10
  %103 = load i16, i16* %sl, align 2, !tbaa !6
  %conv152 = sext i16 %103 to i64
  %104 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx153 = getelementptr inbounds i16, i16* %104, i64 -1
  %105 = load i16, i16* %arrayidx153, align 2, !tbaa !6
  %conv154 = sext i16 %105 to i64
  %mul155 = mul nsw i64 %conv152, %conv154
  %106 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx156 = getelementptr inbounds i64, i64* %106, i64 1
  %107 = load i64, i64* %arrayidx156, align 8, !tbaa !10
  %add157 = add nsw i64 %107, %mul155
  store i64 %add157, i64* %arrayidx156, align 8, !tbaa !10
  %108 = load i16, i16* %sl, align 2, !tbaa !6
  %conv158 = sext i16 %108 to i64
  %109 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx159 = getelementptr inbounds i16, i16* %109, i64 -2
  %110 = load i16, i16* %arrayidx159, align 2, !tbaa !6
  %conv160 = sext i16 %110 to i64
  %mul161 = mul nsw i64 %conv158, %conv160
  %111 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx162 = getelementptr inbounds i64, i64* %111, i64 2
  %112 = load i64, i64* %arrayidx162, align 8, !tbaa !10
  %add163 = add nsw i64 %112, %mul161
  store i64 %add163, i64* %arrayidx162, align 8, !tbaa !10
  %113 = load i16, i16* %sl, align 2, !tbaa !6
  %conv164 = sext i16 %113 to i64
  %114 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx165 = getelementptr inbounds i16, i16* %114, i64 -3
  %115 = load i16, i16* %arrayidx165, align 2, !tbaa !6
  %conv166 = sext i16 %115 to i64
  %mul167 = mul nsw i64 %conv164, %conv166
  %116 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx168 = getelementptr inbounds i64, i64* %116, i64 3
  %117 = load i64, i64* %arrayidx168, align 8, !tbaa !10
  %add169 = add nsw i64 %117, %mul167
  store i64 %add169, i64* %arrayidx168, align 8, !tbaa !10
  %118 = load i16*, i16** %sp, align 8, !tbaa !2
  %incdec.ptr170 = getelementptr inbounds i16, i16* %118, i32 1
  store i16* %incdec.ptr170, i16** %sp, align 8, !tbaa !2
  %119 = load i16, i16* %incdec.ptr170, align 2, !tbaa !6
  store i16 %119, i16* %sl, align 2, !tbaa !6
  %120 = load i16, i16* %sl, align 2, !tbaa !6
  %conv171 = sext i16 %120 to i64
  %121 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx172 = getelementptr inbounds i16, i16* %121, i64 0
  %122 = load i16, i16* %arrayidx172, align 2, !tbaa !6
  %conv173 = sext i16 %122 to i64
  %mul174 = mul nsw i64 %conv171, %conv173
  %123 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx175 = getelementptr inbounds i64, i64* %123, i64 0
  %124 = load i64, i64* %arrayidx175, align 8, !tbaa !10
  %add176 = add nsw i64 %124, %mul174
  store i64 %add176, i64* %arrayidx175, align 8, !tbaa !10
  %125 = load i16, i16* %sl, align 2, !tbaa !6
  %conv177 = sext i16 %125 to i64
  %126 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx178 = getelementptr inbounds i16, i16* %126, i64 -1
  %127 = load i16, i16* %arrayidx178, align 2, !tbaa !6
  %conv179 = sext i16 %127 to i64
  %mul180 = mul nsw i64 %conv177, %conv179
  %128 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx181 = getelementptr inbounds i64, i64* %128, i64 1
  %129 = load i64, i64* %arrayidx181, align 8, !tbaa !10
  %add182 = add nsw i64 %129, %mul180
  store i64 %add182, i64* %arrayidx181, align 8, !tbaa !10
  %130 = load i16, i16* %sl, align 2, !tbaa !6
  %conv183 = sext i16 %130 to i64
  %131 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx184 = getelementptr inbounds i16, i16* %131, i64 -2
  %132 = load i16, i16* %arrayidx184, align 2, !tbaa !6
  %conv185 = sext i16 %132 to i64
  %mul186 = mul nsw i64 %conv183, %conv185
  %133 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx187 = getelementptr inbounds i64, i64* %133, i64 2
  %134 = load i64, i64* %arrayidx187, align 8, !tbaa !10
  %add188 = add nsw i64 %134, %mul186
  store i64 %add188, i64* %arrayidx187, align 8, !tbaa !10
  %135 = load i16, i16* %sl, align 2, !tbaa !6
  %conv189 = sext i16 %135 to i64
  %136 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx190 = getelementptr inbounds i16, i16* %136, i64 -3
  %137 = load i16, i16* %arrayidx190, align 2, !tbaa !6
  %conv191 = sext i16 %137 to i64
  %mul192 = mul nsw i64 %conv189, %conv191
  %138 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx193 = getelementptr inbounds i64, i64* %138, i64 3
  %139 = load i64, i64* %arrayidx193, align 8, !tbaa !10
  %add194 = add nsw i64 %139, %mul192
  store i64 %add194, i64* %arrayidx193, align 8, !tbaa !10
  %140 = load i16, i16* %sl, align 2, !tbaa !6
  %conv195 = sext i16 %140 to i64
  %141 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx196 = getelementptr inbounds i16, i16* %141, i64 -4
  %142 = load i16, i16* %arrayidx196, align 2, !tbaa !6
  %conv197 = sext i16 %142 to i64
  %mul198 = mul nsw i64 %conv195, %conv197
  %143 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx199 = getelementptr inbounds i64, i64* %143, i64 4
  %144 = load i64, i64* %arrayidx199, align 8, !tbaa !10
  %add200 = add nsw i64 %144, %mul198
  store i64 %add200, i64* %arrayidx199, align 8, !tbaa !10
  %145 = load i16*, i16** %sp, align 8, !tbaa !2
  %incdec.ptr201 = getelementptr inbounds i16, i16* %145, i32 1
  store i16* %incdec.ptr201, i16** %sp, align 8, !tbaa !2
  %146 = load i16, i16* %incdec.ptr201, align 2, !tbaa !6
  store i16 %146, i16* %sl, align 2, !tbaa !6
  %147 = load i16, i16* %sl, align 2, !tbaa !6
  %conv202 = sext i16 %147 to i64
  %148 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx203 = getelementptr inbounds i16, i16* %148, i64 0
  %149 = load i16, i16* %arrayidx203, align 2, !tbaa !6
  %conv204 = sext i16 %149 to i64
  %mul205 = mul nsw i64 %conv202, %conv204
  %150 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx206 = getelementptr inbounds i64, i64* %150, i64 0
  %151 = load i64, i64* %arrayidx206, align 8, !tbaa !10
  %add207 = add nsw i64 %151, %mul205
  store i64 %add207, i64* %arrayidx206, align 8, !tbaa !10
  %152 = load i16, i16* %sl, align 2, !tbaa !6
  %conv208 = sext i16 %152 to i64
  %153 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx209 = getelementptr inbounds i16, i16* %153, i64 -1
  %154 = load i16, i16* %arrayidx209, align 2, !tbaa !6
  %conv210 = sext i16 %154 to i64
  %mul211 = mul nsw i64 %conv208, %conv210
  %155 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx212 = getelementptr inbounds i64, i64* %155, i64 1
  %156 = load i64, i64* %arrayidx212, align 8, !tbaa !10
  %add213 = add nsw i64 %156, %mul211
  store i64 %add213, i64* %arrayidx212, align 8, !tbaa !10
  %157 = load i16, i16* %sl, align 2, !tbaa !6
  %conv214 = sext i16 %157 to i64
  %158 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx215 = getelementptr inbounds i16, i16* %158, i64 -2
  %159 = load i16, i16* %arrayidx215, align 2, !tbaa !6
  %conv216 = sext i16 %159 to i64
  %mul217 = mul nsw i64 %conv214, %conv216
  %160 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx218 = getelementptr inbounds i64, i64* %160, i64 2
  %161 = load i64, i64* %arrayidx218, align 8, !tbaa !10
  %add219 = add nsw i64 %161, %mul217
  store i64 %add219, i64* %arrayidx218, align 8, !tbaa !10
  %162 = load i16, i16* %sl, align 2, !tbaa !6
  %conv220 = sext i16 %162 to i64
  %163 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx221 = getelementptr inbounds i16, i16* %163, i64 -3
  %164 = load i16, i16* %arrayidx221, align 2, !tbaa !6
  %conv222 = sext i16 %164 to i64
  %mul223 = mul nsw i64 %conv220, %conv222
  %165 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx224 = getelementptr inbounds i64, i64* %165, i64 3
  %166 = load i64, i64* %arrayidx224, align 8, !tbaa !10
  %add225 = add nsw i64 %166, %mul223
  store i64 %add225, i64* %arrayidx224, align 8, !tbaa !10
  %167 = load i16, i16* %sl, align 2, !tbaa !6
  %conv226 = sext i16 %167 to i64
  %168 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx227 = getelementptr inbounds i16, i16* %168, i64 -4
  %169 = load i16, i16* %arrayidx227, align 2, !tbaa !6
  %conv228 = sext i16 %169 to i64
  %mul229 = mul nsw i64 %conv226, %conv228
  %170 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx230 = getelementptr inbounds i64, i64* %170, i64 4
  %171 = load i64, i64* %arrayidx230, align 8, !tbaa !10
  %add231 = add nsw i64 %171, %mul229
  store i64 %add231, i64* %arrayidx230, align 8, !tbaa !10
  %172 = load i16, i16* %sl, align 2, !tbaa !6
  %conv232 = sext i16 %172 to i64
  %173 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx233 = getelementptr inbounds i16, i16* %173, i64 -5
  %174 = load i16, i16* %arrayidx233, align 2, !tbaa !6
  %conv234 = sext i16 %174 to i64
  %mul235 = mul nsw i64 %conv232, %conv234
  %175 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx236 = getelementptr inbounds i64, i64* %175, i64 5
  %176 = load i64, i64* %arrayidx236, align 8, !tbaa !10
  %add237 = add nsw i64 %176, %mul235
  store i64 %add237, i64* %arrayidx236, align 8, !tbaa !10
  %177 = load i16*, i16** %sp, align 8, !tbaa !2
  %incdec.ptr238 = getelementptr inbounds i16, i16* %177, i32 1
  store i16* %incdec.ptr238, i16** %sp, align 8, !tbaa !2
  %178 = load i16, i16* %incdec.ptr238, align 2, !tbaa !6
  store i16 %178, i16* %sl, align 2, !tbaa !6
  %179 = load i16, i16* %sl, align 2, !tbaa !6
  %conv239 = sext i16 %179 to i64
  %180 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx240 = getelementptr inbounds i16, i16* %180, i64 0
  %181 = load i16, i16* %arrayidx240, align 2, !tbaa !6
  %conv241 = sext i16 %181 to i64
  %mul242 = mul nsw i64 %conv239, %conv241
  %182 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx243 = getelementptr inbounds i64, i64* %182, i64 0
  %183 = load i64, i64* %arrayidx243, align 8, !tbaa !10
  %add244 = add nsw i64 %183, %mul242
  store i64 %add244, i64* %arrayidx243, align 8, !tbaa !10
  %184 = load i16, i16* %sl, align 2, !tbaa !6
  %conv245 = sext i16 %184 to i64
  %185 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx246 = getelementptr inbounds i16, i16* %185, i64 -1
  %186 = load i16, i16* %arrayidx246, align 2, !tbaa !6
  %conv247 = sext i16 %186 to i64
  %mul248 = mul nsw i64 %conv245, %conv247
  %187 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx249 = getelementptr inbounds i64, i64* %187, i64 1
  %188 = load i64, i64* %arrayidx249, align 8, !tbaa !10
  %add250 = add nsw i64 %188, %mul248
  store i64 %add250, i64* %arrayidx249, align 8, !tbaa !10
  %189 = load i16, i16* %sl, align 2, !tbaa !6
  %conv251 = sext i16 %189 to i64
  %190 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx252 = getelementptr inbounds i16, i16* %190, i64 -2
  %191 = load i16, i16* %arrayidx252, align 2, !tbaa !6
  %conv253 = sext i16 %191 to i64
  %mul254 = mul nsw i64 %conv251, %conv253
  %192 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx255 = getelementptr inbounds i64, i64* %192, i64 2
  %193 = load i64, i64* %arrayidx255, align 8, !tbaa !10
  %add256 = add nsw i64 %193, %mul254
  store i64 %add256, i64* %arrayidx255, align 8, !tbaa !10
  %194 = load i16, i16* %sl, align 2, !tbaa !6
  %conv257 = sext i16 %194 to i64
  %195 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx258 = getelementptr inbounds i16, i16* %195, i64 -3
  %196 = load i16, i16* %arrayidx258, align 2, !tbaa !6
  %conv259 = sext i16 %196 to i64
  %mul260 = mul nsw i64 %conv257, %conv259
  %197 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx261 = getelementptr inbounds i64, i64* %197, i64 3
  %198 = load i64, i64* %arrayidx261, align 8, !tbaa !10
  %add262 = add nsw i64 %198, %mul260
  store i64 %add262, i64* %arrayidx261, align 8, !tbaa !10
  %199 = load i16, i16* %sl, align 2, !tbaa !6
  %conv263 = sext i16 %199 to i64
  %200 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx264 = getelementptr inbounds i16, i16* %200, i64 -4
  %201 = load i16, i16* %arrayidx264, align 2, !tbaa !6
  %conv265 = sext i16 %201 to i64
  %mul266 = mul nsw i64 %conv263, %conv265
  %202 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx267 = getelementptr inbounds i64, i64* %202, i64 4
  %203 = load i64, i64* %arrayidx267, align 8, !tbaa !10
  %add268 = add nsw i64 %203, %mul266
  store i64 %add268, i64* %arrayidx267, align 8, !tbaa !10
  %204 = load i16, i16* %sl, align 2, !tbaa !6
  %conv269 = sext i16 %204 to i64
  %205 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx270 = getelementptr inbounds i16, i16* %205, i64 -5
  %206 = load i16, i16* %arrayidx270, align 2, !tbaa !6
  %conv271 = sext i16 %206 to i64
  %mul272 = mul nsw i64 %conv269, %conv271
  %207 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx273 = getelementptr inbounds i64, i64* %207, i64 5
  %208 = load i64, i64* %arrayidx273, align 8, !tbaa !10
  %add274 = add nsw i64 %208, %mul272
  store i64 %add274, i64* %arrayidx273, align 8, !tbaa !10
  %209 = load i16, i16* %sl, align 2, !tbaa !6
  %conv275 = sext i16 %209 to i64
  %210 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx276 = getelementptr inbounds i16, i16* %210, i64 -6
  %211 = load i16, i16* %arrayidx276, align 2, !tbaa !6
  %conv277 = sext i16 %211 to i64
  %mul278 = mul nsw i64 %conv275, %conv277
  %212 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx279 = getelementptr inbounds i64, i64* %212, i64 6
  %213 = load i64, i64* %arrayidx279, align 8, !tbaa !10
  %add280 = add nsw i64 %213, %mul278
  store i64 %add280, i64* %arrayidx279, align 8, !tbaa !10
  %214 = load i16*, i16** %sp, align 8, !tbaa !2
  %incdec.ptr281 = getelementptr inbounds i16, i16* %214, i32 1
  store i16* %incdec.ptr281, i16** %sp, align 8, !tbaa !2
  %215 = load i16, i16* %incdec.ptr281, align 2, !tbaa !6
  store i16 %215, i16* %sl, align 2, !tbaa !6
  %216 = load i16, i16* %sl, align 2, !tbaa !6
  %conv282 = sext i16 %216 to i64
  %217 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx283 = getelementptr inbounds i16, i16* %217, i64 0
  %218 = load i16, i16* %arrayidx283, align 2, !tbaa !6
  %conv284 = sext i16 %218 to i64
  %mul285 = mul nsw i64 %conv282, %conv284
  %219 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx286 = getelementptr inbounds i64, i64* %219, i64 0
  %220 = load i64, i64* %arrayidx286, align 8, !tbaa !10
  %add287 = add nsw i64 %220, %mul285
  store i64 %add287, i64* %arrayidx286, align 8, !tbaa !10
  %221 = load i16, i16* %sl, align 2, !tbaa !6
  %conv288 = sext i16 %221 to i64
  %222 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx289 = getelementptr inbounds i16, i16* %222, i64 -1
  %223 = load i16, i16* %arrayidx289, align 2, !tbaa !6
  %conv290 = sext i16 %223 to i64
  %mul291 = mul nsw i64 %conv288, %conv290
  %224 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx292 = getelementptr inbounds i64, i64* %224, i64 1
  %225 = load i64, i64* %arrayidx292, align 8, !tbaa !10
  %add293 = add nsw i64 %225, %mul291
  store i64 %add293, i64* %arrayidx292, align 8, !tbaa !10
  %226 = load i16, i16* %sl, align 2, !tbaa !6
  %conv294 = sext i16 %226 to i64
  %227 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx295 = getelementptr inbounds i16, i16* %227, i64 -2
  %228 = load i16, i16* %arrayidx295, align 2, !tbaa !6
  %conv296 = sext i16 %228 to i64
  %mul297 = mul nsw i64 %conv294, %conv296
  %229 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx298 = getelementptr inbounds i64, i64* %229, i64 2
  %230 = load i64, i64* %arrayidx298, align 8, !tbaa !10
  %add299 = add nsw i64 %230, %mul297
  store i64 %add299, i64* %arrayidx298, align 8, !tbaa !10
  %231 = load i16, i16* %sl, align 2, !tbaa !6
  %conv300 = sext i16 %231 to i64
  %232 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx301 = getelementptr inbounds i16, i16* %232, i64 -3
  %233 = load i16, i16* %arrayidx301, align 2, !tbaa !6
  %conv302 = sext i16 %233 to i64
  %mul303 = mul nsw i64 %conv300, %conv302
  %234 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx304 = getelementptr inbounds i64, i64* %234, i64 3
  %235 = load i64, i64* %arrayidx304, align 8, !tbaa !10
  %add305 = add nsw i64 %235, %mul303
  store i64 %add305, i64* %arrayidx304, align 8, !tbaa !10
  %236 = load i16, i16* %sl, align 2, !tbaa !6
  %conv306 = sext i16 %236 to i64
  %237 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx307 = getelementptr inbounds i16, i16* %237, i64 -4
  %238 = load i16, i16* %arrayidx307, align 2, !tbaa !6
  %conv308 = sext i16 %238 to i64
  %mul309 = mul nsw i64 %conv306, %conv308
  %239 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx310 = getelementptr inbounds i64, i64* %239, i64 4
  %240 = load i64, i64* %arrayidx310, align 8, !tbaa !10
  %add311 = add nsw i64 %240, %mul309
  store i64 %add311, i64* %arrayidx310, align 8, !tbaa !10
  %241 = load i16, i16* %sl, align 2, !tbaa !6
  %conv312 = sext i16 %241 to i64
  %242 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx313 = getelementptr inbounds i16, i16* %242, i64 -5
  %243 = load i16, i16* %arrayidx313, align 2, !tbaa !6
  %conv314 = sext i16 %243 to i64
  %mul315 = mul nsw i64 %conv312, %conv314
  %244 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx316 = getelementptr inbounds i64, i64* %244, i64 5
  %245 = load i64, i64* %arrayidx316, align 8, !tbaa !10
  %add317 = add nsw i64 %245, %mul315
  store i64 %add317, i64* %arrayidx316, align 8, !tbaa !10
  %246 = load i16, i16* %sl, align 2, !tbaa !6
  %conv318 = sext i16 %246 to i64
  %247 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx319 = getelementptr inbounds i16, i16* %247, i64 -6
  %248 = load i16, i16* %arrayidx319, align 2, !tbaa !6
  %conv320 = sext i16 %248 to i64
  %mul321 = mul nsw i64 %conv318, %conv320
  %249 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx322 = getelementptr inbounds i64, i64* %249, i64 6
  %250 = load i64, i64* %arrayidx322, align 8, !tbaa !10
  %add323 = add nsw i64 %250, %mul321
  store i64 %add323, i64* %arrayidx322, align 8, !tbaa !10
  %251 = load i16, i16* %sl, align 2, !tbaa !6
  %conv324 = sext i16 %251 to i64
  %252 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx325 = getelementptr inbounds i16, i16* %252, i64 -7
  %253 = load i16, i16* %arrayidx325, align 2, !tbaa !6
  %conv326 = sext i16 %253 to i64
  %mul327 = mul nsw i64 %conv324, %conv326
  %254 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx328 = getelementptr inbounds i64, i64* %254, i64 7
  %255 = load i64, i64* %arrayidx328, align 8, !tbaa !10
  %add329 = add nsw i64 %255, %mul327
  store i64 %add329, i64* %arrayidx328, align 8, !tbaa !10
  store i32 8, i32* %i, align 4, !tbaa !8
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.389, %for.end.107
  %256 = load i32, i32* %i, align 4, !tbaa !8
  %cmp331 = icmp sle i32 %256, 159
  br i1 %cmp331, label %for.body.333, label %for.end.391

for.body.333:                                     ; preds = %for.cond.330
  %257 = load i16*, i16** %sp, align 8, !tbaa !2
  %incdec.ptr334 = getelementptr inbounds i16, i16* %257, i32 1
  store i16* %incdec.ptr334, i16** %sp, align 8, !tbaa !2
  %258 = load i16, i16* %incdec.ptr334, align 2, !tbaa !6
  store i16 %258, i16* %sl, align 2, !tbaa !6
  %259 = load i16, i16* %sl, align 2, !tbaa !6
  %conv335 = sext i16 %259 to i64
  %260 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx336 = getelementptr inbounds i16, i16* %260, i64 0
  %261 = load i16, i16* %arrayidx336, align 2, !tbaa !6
  %conv337 = sext i16 %261 to i64
  %mul338 = mul nsw i64 %conv335, %conv337
  %262 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx339 = getelementptr inbounds i64, i64* %262, i64 0
  %263 = load i64, i64* %arrayidx339, align 8, !tbaa !10
  %add340 = add nsw i64 %263, %mul338
  store i64 %add340, i64* %arrayidx339, align 8, !tbaa !10
  %264 = load i16, i16* %sl, align 2, !tbaa !6
  %conv341 = sext i16 %264 to i64
  %265 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx342 = getelementptr inbounds i16, i16* %265, i64 -1
  %266 = load i16, i16* %arrayidx342, align 2, !tbaa !6
  %conv343 = sext i16 %266 to i64
  %mul344 = mul nsw i64 %conv341, %conv343
  %267 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx345 = getelementptr inbounds i64, i64* %267, i64 1
  %268 = load i64, i64* %arrayidx345, align 8, !tbaa !10
  %add346 = add nsw i64 %268, %mul344
  store i64 %add346, i64* %arrayidx345, align 8, !tbaa !10
  %269 = load i16, i16* %sl, align 2, !tbaa !6
  %conv347 = sext i16 %269 to i64
  %270 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx348 = getelementptr inbounds i16, i16* %270, i64 -2
  %271 = load i16, i16* %arrayidx348, align 2, !tbaa !6
  %conv349 = sext i16 %271 to i64
  %mul350 = mul nsw i64 %conv347, %conv349
  %272 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx351 = getelementptr inbounds i64, i64* %272, i64 2
  %273 = load i64, i64* %arrayidx351, align 8, !tbaa !10
  %add352 = add nsw i64 %273, %mul350
  store i64 %add352, i64* %arrayidx351, align 8, !tbaa !10
  %274 = load i16, i16* %sl, align 2, !tbaa !6
  %conv353 = sext i16 %274 to i64
  %275 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx354 = getelementptr inbounds i16, i16* %275, i64 -3
  %276 = load i16, i16* %arrayidx354, align 2, !tbaa !6
  %conv355 = sext i16 %276 to i64
  %mul356 = mul nsw i64 %conv353, %conv355
  %277 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx357 = getelementptr inbounds i64, i64* %277, i64 3
  %278 = load i64, i64* %arrayidx357, align 8, !tbaa !10
  %add358 = add nsw i64 %278, %mul356
  store i64 %add358, i64* %arrayidx357, align 8, !tbaa !10
  %279 = load i16, i16* %sl, align 2, !tbaa !6
  %conv359 = sext i16 %279 to i64
  %280 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx360 = getelementptr inbounds i16, i16* %280, i64 -4
  %281 = load i16, i16* %arrayidx360, align 2, !tbaa !6
  %conv361 = sext i16 %281 to i64
  %mul362 = mul nsw i64 %conv359, %conv361
  %282 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx363 = getelementptr inbounds i64, i64* %282, i64 4
  %283 = load i64, i64* %arrayidx363, align 8, !tbaa !10
  %add364 = add nsw i64 %283, %mul362
  store i64 %add364, i64* %arrayidx363, align 8, !tbaa !10
  %284 = load i16, i16* %sl, align 2, !tbaa !6
  %conv365 = sext i16 %284 to i64
  %285 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx366 = getelementptr inbounds i16, i16* %285, i64 -5
  %286 = load i16, i16* %arrayidx366, align 2, !tbaa !6
  %conv367 = sext i16 %286 to i64
  %mul368 = mul nsw i64 %conv365, %conv367
  %287 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx369 = getelementptr inbounds i64, i64* %287, i64 5
  %288 = load i64, i64* %arrayidx369, align 8, !tbaa !10
  %add370 = add nsw i64 %288, %mul368
  store i64 %add370, i64* %arrayidx369, align 8, !tbaa !10
  %289 = load i16, i16* %sl, align 2, !tbaa !6
  %conv371 = sext i16 %289 to i64
  %290 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx372 = getelementptr inbounds i16, i16* %290, i64 -6
  %291 = load i16, i16* %arrayidx372, align 2, !tbaa !6
  %conv373 = sext i16 %291 to i64
  %mul374 = mul nsw i64 %conv371, %conv373
  %292 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx375 = getelementptr inbounds i64, i64* %292, i64 6
  %293 = load i64, i64* %arrayidx375, align 8, !tbaa !10
  %add376 = add nsw i64 %293, %mul374
  store i64 %add376, i64* %arrayidx375, align 8, !tbaa !10
  %294 = load i16, i16* %sl, align 2, !tbaa !6
  %conv377 = sext i16 %294 to i64
  %295 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx378 = getelementptr inbounds i16, i16* %295, i64 -7
  %296 = load i16, i16* %arrayidx378, align 2, !tbaa !6
  %conv379 = sext i16 %296 to i64
  %mul380 = mul nsw i64 %conv377, %conv379
  %297 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx381 = getelementptr inbounds i64, i64* %297, i64 7
  %298 = load i64, i64* %arrayidx381, align 8, !tbaa !10
  %add382 = add nsw i64 %298, %mul380
  store i64 %add382, i64* %arrayidx381, align 8, !tbaa !10
  %299 = load i16, i16* %sl, align 2, !tbaa !6
  %conv383 = sext i16 %299 to i64
  %300 = load i16*, i16** %sp, align 8, !tbaa !2
  %arrayidx384 = getelementptr inbounds i16, i16* %300, i64 -8
  %301 = load i16, i16* %arrayidx384, align 2, !tbaa !6
  %conv385 = sext i16 %301 to i64
  %mul386 = mul nsw i64 %conv383, %conv385
  %302 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx387 = getelementptr inbounds i64, i64* %302, i64 8
  %303 = load i64, i64* %arrayidx387, align 8, !tbaa !10
  %add388 = add nsw i64 %303, %mul386
  store i64 %add388, i64* %arrayidx387, align 8, !tbaa !10
  br label %for.inc.389

for.inc.389:                                      ; preds = %for.body.333
  %304 = load i32, i32* %i, align 4, !tbaa !8
  %inc390 = add nsw i32 %304, 1
  store i32 %inc390, i32* %i, align 4, !tbaa !8
  br label %for.cond.330

for.end.391:                                      ; preds = %for.cond.330
  store i32 9, i32* %k, align 4, !tbaa !8
  br label %for.cond.392

for.cond.392:                                     ; preds = %for.inc.396, %for.end.391
  %305 = load i32, i32* %k, align 4, !tbaa !8
  %dec393 = add nsw i32 %305, -1
  store i32 %dec393, i32* %k, align 4, !tbaa !8
  %tobool394 = icmp ne i32 %305, 0
  br i1 %tobool394, label %for.body.395, label %for.end.400

for.body.395:                                     ; preds = %for.cond.392
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.body.395
  %306 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom397 = sext i32 %306 to i64
  %307 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx398 = getelementptr inbounds i64, i64* %307, i64 %idxprom397
  %308 = load i64, i64* %arrayidx398, align 8, !tbaa !10
  %shl399 = shl i64 %308, 1
  store i64 %shl399, i64* %arrayidx398, align 8, !tbaa !10
  br label %for.cond.392

for.end.400:                                      ; preds = %for.cond.392
  %309 = bitcast i16* %sl to i8*
  call void @llvm.lifetime.end(i64 2, i8* %309) #3
  %310 = bitcast i16** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #3
  %311 = load i16, i16* %scalauto, align 2, !tbaa !6
  %conv401 = sext i16 %311 to i32
  %cmp402 = icmp sgt i32 %conv401, 0
  br i1 %cmp402, label %if.then.404, label %if.end.416

if.then.404:                                      ; preds = %for.end.400
  store i32 160, i32* %k, align 4, !tbaa !8
  br label %for.cond.405

for.cond.405:                                     ; preds = %for.inc.409, %if.then.404
  %312 = load i32, i32* %k, align 4, !tbaa !8
  %dec406 = add nsw i32 %312, -1
  store i32 %dec406, i32* %k, align 4, !tbaa !8
  %tobool407 = icmp ne i32 %312, 0
  br i1 %tobool407, label %for.body.408, label %for.end.415

for.body.408:                                     ; preds = %for.cond.405
  br label %for.inc.409

for.inc.409:                                      ; preds = %for.body.408
  %313 = load i16, i16* %scalauto, align 2, !tbaa !6
  %conv410 = sext i16 %313 to i32
  %314 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %incdec.ptr411 = getelementptr inbounds i16, i16* %314, i32 1
  store i16* %incdec.ptr411, i16** %s.addr, align 8, !tbaa !2
  %315 = load i16, i16* %314, align 2, !tbaa !6
  %conv412 = sext i16 %315 to i32
  %shl413 = shl i32 %conv412, %conv410
  %conv414 = trunc i32 %shl413 to i16
  store i16 %conv414, i16* %314, align 2, !tbaa !6
  br label %for.cond.405

for.end.415:                                      ; preds = %for.cond.405
  br label %if.end.416

if.end.416:                                       ; preds = %for.end.415, %for.end.400
  %316 = bitcast i16* %scalauto to i8*
  call void @llvm.lifetime.end(i64 2, i8* %316) #3
  %317 = bitcast i16* %smax to i8*
  call void @llvm.lifetime.end(i64 2, i8* %317) #3
  %318 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %318) #3
  %319 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #3
  %320 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Reflection_coefficients(i64* %L_ACF, i16* %r) #0 {
entry:
  %L_ACF.addr = alloca i64*, align 8
  %r.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %temp = alloca i16, align 2
  %ltmp = alloca i64, align 8
  %ACF = alloca [9 x i16], align 16
  %P = alloca [9 x i16], align 16
  %K = alloca [9 x i16], align 16
  %cleanup.dest.slot = alloca i32
  store i64* %L_ACF, i64** %L_ACF.addr, align 8, !tbaa !2
  store i16* %r, i16** %r.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #3
  %4 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast [9 x i16]* %ACF to i8*
  call void @llvm.lifetime.start(i64 18, i8* %5) #3
  %6 = bitcast [9 x i16]* %P to i8*
  call void @llvm.lifetime.start(i64 18, i8* %6) #3
  %7 = bitcast [9 x i16]* %K to i8*
  call void @llvm.lifetime.start(i64 18, i8* %7) #3
  %8 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx, align 8, !tbaa !10
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 8, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4, !tbaa !8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr, i16** %r.addr, align 8, !tbaa !2
  store i16 0, i16* %11, align 2, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i64, i64* %12, i64 0
  %13 = load i64, i64* %arrayidx1, align 8, !tbaa !10
  %call = call signext i16 @gsm_norm(i64 %13)
  store i16 %call, i16* %temp, align 2, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.9, %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !8
  %cmp3 = icmp sle i32 %14, 8
  br i1 %cmp3, label %for.body.4, label %for.end.10

for.body.4:                                       ; preds = %for.cond.2
  %15 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %15 to i64
  %16 = load i64*, i64** %L_ACF.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i64, i64* %16, i64 %idxprom
  %17 = load i64, i64* %arrayidx5, align 8, !tbaa !10
  %18 = load i16, i16* %temp, align 2, !tbaa !6
  %conv = sext i16 %18 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 %17, %sh_prom
  %shr = ashr i64 %shl, 16
  %conv6 = trunc i64 %shr to i16
  %19 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds [9 x i16], [9 x i16]* %ACF, i32 0, i64 %idxprom7
  store i16 %conv6, i16* %arrayidx8, align 2, !tbaa !6
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.4
  %20 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond.2

for.end.10:                                       ; preds = %for.cond.2
  store i32 1, i32* %i, align 4, !tbaa !8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.19, %for.end.10
  %21 = load i32, i32* %i, align 4, !tbaa !8
  %cmp12 = icmp sle i32 %21, 7
  br i1 %cmp12, label %for.body.14, label %for.end.21

for.body.14:                                      ; preds = %for.cond.11
  %22 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [9 x i16], [9 x i16]* %ACF, i32 0, i64 %idxprom15
  %23 = load i16, i16* %arrayidx16, align 2, !tbaa !6
  %24 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i32 0, i64 %idxprom17
  store i16 %23, i16* %arrayidx18, align 2, !tbaa !6
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.14
  %25 = load i32, i32* %i, align 4, !tbaa !8
  %inc20 = add nsw i32 %25, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !8
  br label %for.cond.11

for.end.21:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.30, %for.end.21
  %26 = load i32, i32* %i, align 4, !tbaa !8
  %cmp23 = icmp sle i32 %26, 8
  br i1 %cmp23, label %for.body.25, label %for.end.32

for.body.25:                                      ; preds = %for.cond.22
  %27 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [9 x i16], [9 x i16]* %ACF, i32 0, i64 %idxprom26
  %28 = load i16, i16* %arrayidx27, align 2, !tbaa !6
  %29 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom28 = sext i32 %29 to i64
  %arrayidx29 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 %idxprom28
  store i16 %28, i16* %arrayidx29, align 2, !tbaa !6
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.25
  %30 = load i32, i32* %i, align 4, !tbaa !8
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !8
  br label %for.cond.22

for.end.32:                                       ; preds = %for.cond.22
  store i32 1, i32* %n, align 4, !tbaa !8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.167, %for.end.32
  %31 = load i32, i32* %n, align 4, !tbaa !8
  %cmp34 = icmp sle i32 %31, 8
  br i1 %cmp34, label %for.body.36, label %for.end.170

for.body.36:                                      ; preds = %for.cond.33
  %arrayidx37 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 1
  %32 = load i16, i16* %arrayidx37, align 2, !tbaa !6
  store i16 %32, i16* %temp, align 2, !tbaa !6
  %33 = load i16, i16* %temp, align 2, !tbaa !6
  %conv38 = sext i16 %33 to i32
  %cmp39 = icmp slt i32 %conv38, 0
  br i1 %cmp39, label %cond.true, label %cond.false.46

cond.true:                                        ; preds = %for.body.36
  %34 = load i16, i16* %temp, align 2, !tbaa !6
  %conv41 = sext i16 %34 to i32
  %cmp42 = icmp eq i32 %conv41, -32768
  br i1 %cmp42, label %cond.true.44, label %cond.false

cond.true.44:                                     ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %35 = load i16, i16* %temp, align 2, !tbaa !6
  %conv45 = sext i16 %35 to i32
  %sub = sub nsw i32 0, %conv45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.44
  %cond = phi i32 [ 32767, %cond.true.44 ], [ %sub, %cond.false ]
  br label %cond.end.48

cond.false.46:                                    ; preds = %for.body.36
  %36 = load i16, i16* %temp, align 2, !tbaa !6
  %conv47 = sext i16 %36 to i32
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.end
  %cond49 = phi i32 [ %cond, %cond.end ], [ %conv47, %cond.false.46 ]
  %conv50 = trunc i32 %cond49 to i16
  store i16 %conv50, i16* %temp, align 2, !tbaa !6
  %arrayidx51 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 0
  %37 = load i16, i16* %arrayidx51, align 2, !tbaa !6
  %conv52 = sext i16 %37 to i32
  %38 = load i16, i16* %temp, align 2, !tbaa !6
  %conv53 = sext i16 %38 to i32
  %cmp54 = icmp slt i32 %conv52, %conv53
  br i1 %cmp54, label %if.then.56, label %if.end.65

if.then.56:                                       ; preds = %cond.end.48
  %39 = load i32, i32* %n, align 4, !tbaa !8
  store i32 %39, i32* %i, align 4, !tbaa !8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.62, %if.then.56
  %40 = load i32, i32* %i, align 4, !tbaa !8
  %cmp58 = icmp sle i32 %40, 8
  br i1 %cmp58, label %for.body.60, label %for.end.64

for.body.60:                                      ; preds = %for.cond.57
  %41 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %incdec.ptr61 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr61, i16** %r.addr, align 8, !tbaa !2
  store i16 0, i16* %41, align 2, !tbaa !6
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.60
  %42 = load i32, i32* %i, align 4, !tbaa !8
  %inc63 = add nsw i32 %42, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !8
  br label %for.cond.57

for.end.64:                                       ; preds = %for.cond.57
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %cond.end.48
  %43 = load i16, i16* %temp, align 2, !tbaa !6
  %arrayidx66 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 0
  %44 = load i16, i16* %arrayidx66, align 2, !tbaa !6
  %call67 = call signext i16 @gsm_div(i16 signext %43, i16 signext %44)
  %45 = load i16*, i16** %r.addr, align 8, !tbaa !2
  store i16 %call67, i16* %45, align 2, !tbaa !6
  %arrayidx68 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 1
  %46 = load i16, i16* %arrayidx68, align 2, !tbaa !6
  %conv69 = sext i16 %46 to i32
  %cmp70 = icmp sgt i32 %conv69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.76

if.then.72:                                       ; preds = %if.end.65
  %47 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %48 = load i16, i16* %47, align 2, !tbaa !6
  %conv73 = sext i16 %48 to i32
  %sub74 = sub nsw i32 0, %conv73
  %conv75 = trunc i32 %sub74 to i16
  %49 = load i16*, i16** %r.addr, align 8, !tbaa !2
  store i16 %conv75, i16* %49, align 2, !tbaa !6
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.72, %if.end.65
  %50 = load i32, i32* %n, align 4, !tbaa !8
  %cmp77 = icmp eq i32 %50, 8
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.end.76
  %arrayidx81 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 1
  %51 = load i16, i16* %arrayidx81, align 2, !tbaa !6
  %conv82 = sext i16 %51 to i64
  %52 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %53 = load i16, i16* %52, align 2, !tbaa !6
  %conv83 = sext i16 %53 to i64
  %mul = mul nsw i64 %conv82, %conv83
  %add = add nsw i64 %mul, 16384
  %shr84 = ashr i64 %add, 15
  %conv85 = trunc i64 %shr84 to i16
  store i16 %conv85, i16* %temp, align 2, !tbaa !6
  %arrayidx86 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 0
  %54 = load i16, i16* %arrayidx86, align 2, !tbaa !6
  %conv87 = sext i16 %54 to i64
  %55 = load i16, i16* %temp, align 2, !tbaa !6
  %conv88 = sext i16 %55 to i64
  %add89 = add nsw i64 %conv87, %conv88
  store i64 %add89, i64* %ltmp, align 8, !tbaa !10
  %sub90 = sub nsw i64 %add89, -32768
  %cmp91 = icmp ugt i64 %sub90, 65535
  br i1 %cmp91, label %cond.true.93, label %cond.false.98

cond.true.93:                                     ; preds = %if.end.80
  %56 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp94 = icmp sgt i64 %56, 0
  %cond96 = select i1 %cmp94, i32 32767, i32 -32768
  %conv97 = sext i32 %cond96 to i64
  br label %cond.end.99

cond.false.98:                                    ; preds = %if.end.80
  %57 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.93
  %cond100 = phi i64 [ %conv97, %cond.true.93 ], [ %57, %cond.false.98 ]
  %conv101 = trunc i64 %cond100 to i16
  %arrayidx102 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 0
  store i16 %conv101, i16* %arrayidx102, align 2, !tbaa !6
  store i32 1, i32* %m, align 4, !tbaa !8
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.164, %cond.end.99
  %58 = load i32, i32* %m, align 4, !tbaa !8
  %59 = load i32, i32* %n, align 4, !tbaa !8
  %sub104 = sub nsw i32 8, %59
  %cmp105 = icmp sle i32 %58, %sub104
  br i1 %cmp105, label %for.body.107, label %for.end.166

for.body.107:                                     ; preds = %for.cond.103
  %60 = load i32, i32* %m, align 4, !tbaa !8
  %idxprom108 = sext i32 %60 to i64
  %arrayidx109 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i32 0, i64 %idxprom108
  %61 = load i16, i16* %arrayidx109, align 2, !tbaa !6
  %conv110 = sext i16 %61 to i64
  %62 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %63 = load i16, i16* %62, align 2, !tbaa !6
  %conv111 = sext i16 %63 to i64
  %mul112 = mul nsw i64 %conv110, %conv111
  %add113 = add nsw i64 %mul112, 16384
  %shr114 = ashr i64 %add113, 15
  %conv115 = trunc i64 %shr114 to i16
  store i16 %conv115, i16* %temp, align 2, !tbaa !6
  %64 = load i32, i32* %m, align 4, !tbaa !8
  %add116 = add nsw i32 %64, 1
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 %idxprom117
  %65 = load i16, i16* %arrayidx118, align 2, !tbaa !6
  %conv119 = sext i16 %65 to i64
  %66 = load i16, i16* %temp, align 2, !tbaa !6
  %conv120 = sext i16 %66 to i64
  %add121 = add nsw i64 %conv119, %conv120
  store i64 %add121, i64* %ltmp, align 8, !tbaa !10
  %sub122 = sub nsw i64 %add121, -32768
  %cmp123 = icmp ugt i64 %sub122, 65535
  br i1 %cmp123, label %cond.true.125, label %cond.false.130

cond.true.125:                                    ; preds = %for.body.107
  %67 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp126 = icmp sgt i64 %67, 0
  %cond128 = select i1 %cmp126, i32 32767, i32 -32768
  %conv129 = sext i32 %cond128 to i64
  br label %cond.end.131

cond.false.130:                                   ; preds = %for.body.107
  %68 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.125
  %cond132 = phi i64 [ %conv129, %cond.true.125 ], [ %68, %cond.false.130 ]
  %conv133 = trunc i64 %cond132 to i16
  %69 = load i32, i32* %m, align 4, !tbaa !8
  %idxprom134 = sext i32 %69 to i64
  %arrayidx135 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 %idxprom134
  store i16 %conv133, i16* %arrayidx135, align 2, !tbaa !6
  %70 = load i32, i32* %m, align 4, !tbaa !8
  %add136 = add nsw i32 %70, 1
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i64 %idxprom137
  %71 = load i16, i16* %arrayidx138, align 2, !tbaa !6
  %conv139 = sext i16 %71 to i64
  %72 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %73 = load i16, i16* %72, align 2, !tbaa !6
  %conv140 = sext i16 %73 to i64
  %mul141 = mul nsw i64 %conv139, %conv140
  %add142 = add nsw i64 %mul141, 16384
  %shr143 = ashr i64 %add142, 15
  %conv144 = trunc i64 %shr143 to i16
  store i16 %conv144, i16* %temp, align 2, !tbaa !6
  %74 = load i32, i32* %m, align 4, !tbaa !8
  %idxprom145 = sext i32 %74 to i64
  %arrayidx146 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i32 0, i64 %idxprom145
  %75 = load i16, i16* %arrayidx146, align 2, !tbaa !6
  %conv147 = sext i16 %75 to i64
  %76 = load i16, i16* %temp, align 2, !tbaa !6
  %conv148 = sext i16 %76 to i64
  %add149 = add nsw i64 %conv147, %conv148
  store i64 %add149, i64* %ltmp, align 8, !tbaa !10
  %sub150 = sub nsw i64 %add149, -32768
  %cmp151 = icmp ugt i64 %sub150, 65535
  br i1 %cmp151, label %cond.true.153, label %cond.false.158

cond.true.153:                                    ; preds = %cond.end.131
  %77 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp154 = icmp sgt i64 %77, 0
  %cond156 = select i1 %cmp154, i32 32767, i32 -32768
  %conv157 = sext i32 %cond156 to i64
  br label %cond.end.159

cond.false.158:                                   ; preds = %cond.end.131
  %78 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.158, %cond.true.153
  %cond160 = phi i64 [ %conv157, %cond.true.153 ], [ %78, %cond.false.158 ]
  %conv161 = trunc i64 %cond160 to i16
  %79 = load i32, i32* %m, align 4, !tbaa !8
  %idxprom162 = sext i32 %79 to i64
  %arrayidx163 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i32 0, i64 %idxprom162
  store i16 %conv161, i16* %arrayidx163, align 2, !tbaa !6
  br label %for.inc.164

for.inc.164:                                      ; preds = %cond.end.159
  %80 = load i32, i32* %m, align 4, !tbaa !8
  %inc165 = add nsw i32 %80, 1
  store i32 %inc165, i32* %m, align 4, !tbaa !8
  br label %for.cond.103

for.end.166:                                      ; preds = %for.cond.103
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.end.166
  %81 = load i32, i32* %n, align 4, !tbaa !8
  %inc168 = add nsw i32 %81, 1
  store i32 %inc168, i32* %n, align 4, !tbaa !8
  %82 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %incdec.ptr169 = getelementptr inbounds i16, i16* %82, i32 1
  store i16* %incdec.ptr169, i16** %r.addr, align 8, !tbaa !2
  br label %for.cond.33

for.end.170:                                      ; preds = %for.cond.33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.170, %if.then.79, %for.end.64, %for.end
  %83 = bitcast [9 x i16]* %K to i8*
  call void @llvm.lifetime.end(i64 18, i8* %83) #3
  %84 = bitcast [9 x i16]* %P to i8*
  call void @llvm.lifetime.end(i64 18, i8* %84) #3
  %85 = bitcast [9 x i16]* %ACF to i8*
  call void @llvm.lifetime.end(i64 18, i8* %85) #3
  %86 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #3
  %87 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %87) #3
  %88 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #3
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @Transformation_to_Log_Area_Ratios(i16* %r) #0 {
entry:
  %r.addr = alloca i16*, align 8
  %temp = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %r, i16** %r.addr, align 8, !tbaa !2
  %0 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  store i32 1, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !8
  %cmp = icmp sle i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %4 = load i16, i16* %3, align 2, !tbaa !6
  store i16 %4, i16* %temp, align 2, !tbaa !6
  %5 = load i16, i16* %temp, align 2, !tbaa !6
  %conv = sext i16 %5 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %cond.true, label %cond.false.8

cond.true:                                        ; preds = %for.body
  %6 = load i16, i16* %temp, align 2, !tbaa !6
  %conv3 = sext i16 %6 to i32
  %cmp4 = icmp eq i32 %conv3, -32768
  br i1 %cmp4, label %cond.true.6, label %cond.false

cond.true.6:                                      ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %7 = load i16, i16* %temp, align 2, !tbaa !6
  %conv7 = sext i16 %7 to i32
  %sub = sub nsw i32 0, %conv7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.6
  %cond = phi i32 [ 32767, %cond.true.6 ], [ %sub, %cond.false ]
  br label %cond.end.10

cond.false.8:                                     ; preds = %for.body
  %8 = load i16, i16* %temp, align 2, !tbaa !6
  %conv9 = sext i16 %8 to i32
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.end
  %cond11 = phi i32 [ %cond, %cond.end ], [ %conv9, %cond.false.8 ]
  %conv12 = trunc i32 %cond11 to i16
  store i16 %conv12, i16* %temp, align 2, !tbaa !6
  %9 = load i16, i16* %temp, align 2, !tbaa !6
  %conv13 = sext i16 %9 to i32
  %cmp14 = icmp slt i32 %conv13, 22118
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.10
  %10 = load i16, i16* %temp, align 2, !tbaa !6
  %conv16 = sext i16 %10 to i32
  %shr = ashr i32 %conv16, 1
  %conv17 = trunc i32 %shr to i16
  store i16 %conv17, i16* %temp, align 2, !tbaa !6
  br label %if.end.31

if.else:                                          ; preds = %cond.end.10
  %11 = load i16, i16* %temp, align 2, !tbaa !6
  %conv18 = sext i16 %11 to i32
  %cmp19 = icmp slt i32 %conv18, 31130
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.else
  %12 = load i16, i16* %temp, align 2, !tbaa !6
  %conv22 = sext i16 %12 to i32
  %sub23 = sub nsw i32 %conv22, 11059
  %conv24 = trunc i32 %sub23 to i16
  store i16 %conv24, i16* %temp, align 2, !tbaa !6
  br label %if.end

if.else.25:                                       ; preds = %if.else
  %13 = load i16, i16* %temp, align 2, !tbaa !6
  %conv26 = sext i16 %13 to i32
  %sub27 = sub nsw i32 %conv26, 26112
  %conv28 = trunc i32 %sub27 to i16
  store i16 %conv28, i16* %temp, align 2, !tbaa !6
  %14 = load i16, i16* %temp, align 2, !tbaa !6
  %conv29 = sext i16 %14 to i32
  %shl = shl i32 %conv29, 2
  %conv30 = trunc i32 %shl to i16
  store i16 %conv30, i16* %temp, align 2, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.21
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then
  %15 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %16 = load i16, i16* %15, align 2, !tbaa !6
  %conv32 = sext i16 %16 to i32
  %cmp33 = icmp slt i32 %conv32, 0
  br i1 %cmp33, label %cond.true.35, label %cond.false.38

cond.true.35:                                     ; preds = %if.end.31
  %17 = load i16, i16* %temp, align 2, !tbaa !6
  %conv36 = sext i16 %17 to i32
  %sub37 = sub nsw i32 0, %conv36
  br label %cond.end.40

cond.false.38:                                    ; preds = %if.end.31
  %18 = load i16, i16* %temp, align 2, !tbaa !6
  %conv39 = sext i16 %18 to i32
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.35
  %cond41 = phi i32 [ %sub37, %cond.true.35 ], [ %conv39, %cond.false.38 ]
  %conv42 = trunc i32 %cond41 to i16
  %19 = load i16*, i16** %r.addr, align 8, !tbaa !2
  store i16 %conv42, i16* %19, align 2, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %cond.end.40
  %20 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  %21 = load i16*, i16** %r.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr, i16** %r.addr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #3
  %23 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Quantization_and_coding(i16* %LAR) #0 {
entry:
  %LAR.addr = alloca i16*, align 8
  %temp = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store i16* %LAR, i16** %LAR.addr, align 8, !tbaa !2
  %0 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #3
  %1 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %3 = load i16, i16* %2, align 2, !tbaa !6
  %conv = sext i16 %3 to i64
  %mul = mul nsw i64 20480, %conv
  %shr = ashr i64 %mul, 15
  %conv1 = trunc i64 %shr to i16
  store i16 %conv1, i16* %temp, align 2, !tbaa !6
  %4 = load i16, i16* %temp, align 2, !tbaa !6
  %conv2 = sext i16 %4 to i64
  %add = add nsw i64 %conv2, 0
  store i64 %add, i64* %ltmp, align 8, !tbaa !10
  %sub = sub nsw i64 %add, -32768
  %cmp = icmp ugt i64 %sub, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp4 = icmp sgt i64 %5, 0
  %cond = select i1 %cmp4, i32 32767, i32 -32768
  %conv6 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i64 [ %conv6, %cond.true ], [ %6, %cond.false ]
  %conv8 = trunc i64 %cond7 to i16
  store i16 %conv8, i16* %temp, align 2, !tbaa !6
  %7 = load i16, i16* %temp, align 2, !tbaa !6
  %conv9 = sext i16 %7 to i64
  %add10 = add nsw i64 %conv9, 256
  store i64 %add10, i64* %ltmp, align 8, !tbaa !10
  %sub11 = sub nsw i64 %add10, -32768
  %cmp12 = icmp ugt i64 %sub11, 65535
  br i1 %cmp12, label %cond.true.14, label %cond.false.19

cond.true.14:                                     ; preds = %cond.end
  %8 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp15 = icmp sgt i64 %8, 0
  %cond17 = select i1 %cmp15, i32 32767, i32 -32768
  %conv18 = sext i32 %cond17 to i64
  br label %cond.end.20

cond.false.19:                                    ; preds = %cond.end
  %9 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.14
  %cond21 = phi i64 [ %conv18, %cond.true.14 ], [ %9, %cond.false.19 ]
  %conv22 = trunc i64 %cond21 to i16
  store i16 %conv22, i16* %temp, align 2, !tbaa !6
  %10 = load i16, i16* %temp, align 2, !tbaa !6
  %conv23 = sext i16 %10 to i32
  %shr24 = ashr i32 %conv23, 9
  %conv25 = trunc i32 %shr24 to i16
  store i16 %conv25, i16* %temp, align 2, !tbaa !6
  %11 = load i16, i16* %temp, align 2, !tbaa !6
  %conv26 = sext i16 %11 to i32
  %cmp27 = icmp sgt i32 %conv26, 31
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end.20
  br label %cond.end.40

cond.false.30:                                    ; preds = %cond.end.20
  %12 = load i16, i16* %temp, align 2, !tbaa !6
  %conv31 = sext i16 %12 to i32
  %cmp32 = icmp slt i32 %conv31, -32
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.false.30
  br label %cond.end.38

cond.false.35:                                    ; preds = %cond.false.30
  %13 = load i16, i16* %temp, align 2, !tbaa !6
  %conv36 = sext i16 %13 to i32
  %sub37 = sub nsw i32 %conv36, -32
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.35, %cond.true.34
  %cond39 = phi i32 [ 0, %cond.true.34 ], [ %sub37, %cond.false.35 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true.29
  %cond41 = phi i32 [ 63, %cond.true.29 ], [ %cond39, %cond.end.38 ]
  %conv42 = trunc i32 %cond41 to i16
  %14 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  store i16 %conv42, i16* %14, align 2, !tbaa !6
  %15 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %incdec.ptr, i16** %LAR.addr, align 8, !tbaa !2
  %16 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %17 = load i16, i16* %16, align 2, !tbaa !6
  %conv43 = sext i16 %17 to i64
  %mul44 = mul nsw i64 20480, %conv43
  %shr45 = ashr i64 %mul44, 15
  %conv46 = trunc i64 %shr45 to i16
  store i16 %conv46, i16* %temp, align 2, !tbaa !6
  %18 = load i16, i16* %temp, align 2, !tbaa !6
  %conv47 = sext i16 %18 to i64
  %add48 = add nsw i64 %conv47, 0
  store i64 %add48, i64* %ltmp, align 8, !tbaa !10
  %sub49 = sub nsw i64 %add48, -32768
  %cmp50 = icmp ugt i64 %sub49, 65535
  br i1 %cmp50, label %cond.true.52, label %cond.false.57

cond.true.52:                                     ; preds = %cond.end.40
  %19 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp53 = icmp sgt i64 %19, 0
  %cond55 = select i1 %cmp53, i32 32767, i32 -32768
  %conv56 = sext i32 %cond55 to i64
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.end.40
  %20 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.52
  %cond59 = phi i64 [ %conv56, %cond.true.52 ], [ %20, %cond.false.57 ]
  %conv60 = trunc i64 %cond59 to i16
  store i16 %conv60, i16* %temp, align 2, !tbaa !6
  %21 = load i16, i16* %temp, align 2, !tbaa !6
  %conv61 = sext i16 %21 to i64
  %add62 = add nsw i64 %conv61, 256
  store i64 %add62, i64* %ltmp, align 8, !tbaa !10
  %sub63 = sub nsw i64 %add62, -32768
  %cmp64 = icmp ugt i64 %sub63, 65535
  br i1 %cmp64, label %cond.true.66, label %cond.false.71

cond.true.66:                                     ; preds = %cond.end.58
  %22 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp67 = icmp sgt i64 %22, 0
  %cond69 = select i1 %cmp67, i32 32767, i32 -32768
  %conv70 = sext i32 %cond69 to i64
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.58
  %23 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.66
  %cond73 = phi i64 [ %conv70, %cond.true.66 ], [ %23, %cond.false.71 ]
  %conv74 = trunc i64 %cond73 to i16
  store i16 %conv74, i16* %temp, align 2, !tbaa !6
  %24 = load i16, i16* %temp, align 2, !tbaa !6
  %conv75 = sext i16 %24 to i32
  %shr76 = ashr i32 %conv75, 9
  %conv77 = trunc i32 %shr76 to i16
  store i16 %conv77, i16* %temp, align 2, !tbaa !6
  %25 = load i16, i16* %temp, align 2, !tbaa !6
  %conv78 = sext i16 %25 to i32
  %cmp79 = icmp sgt i32 %conv78, 31
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %cond.end.72
  br label %cond.end.92

cond.false.82:                                    ; preds = %cond.end.72
  %26 = load i16, i16* %temp, align 2, !tbaa !6
  %conv83 = sext i16 %26 to i32
  %cmp84 = icmp slt i32 %conv83, -32
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %cond.false.82
  br label %cond.end.90

cond.false.87:                                    ; preds = %cond.false.82
  %27 = load i16, i16* %temp, align 2, !tbaa !6
  %conv88 = sext i16 %27 to i32
  %sub89 = sub nsw i32 %conv88, -32
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.87, %cond.true.86
  %cond91 = phi i32 [ 0, %cond.true.86 ], [ %sub89, %cond.false.87 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.81
  %cond93 = phi i32 [ 63, %cond.true.81 ], [ %cond91, %cond.end.90 ]
  %conv94 = trunc i32 %cond93 to i16
  %28 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  store i16 %conv94, i16* %28, align 2, !tbaa !6
  %29 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %incdec.ptr95 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr95, i16** %LAR.addr, align 8, !tbaa !2
  %30 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %31 = load i16, i16* %30, align 2, !tbaa !6
  %conv96 = sext i16 %31 to i64
  %mul97 = mul nsw i64 20480, %conv96
  %shr98 = ashr i64 %mul97, 15
  %conv99 = trunc i64 %shr98 to i16
  store i16 %conv99, i16* %temp, align 2, !tbaa !6
  %32 = load i16, i16* %temp, align 2, !tbaa !6
  %conv100 = sext i16 %32 to i64
  %add101 = add nsw i64 %conv100, 2048
  store i64 %add101, i64* %ltmp, align 8, !tbaa !10
  %sub102 = sub nsw i64 %add101, -32768
  %cmp103 = icmp ugt i64 %sub102, 65535
  br i1 %cmp103, label %cond.true.105, label %cond.false.110

cond.true.105:                                    ; preds = %cond.end.92
  %33 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp106 = icmp sgt i64 %33, 0
  %cond108 = select i1 %cmp106, i32 32767, i32 -32768
  %conv109 = sext i32 %cond108 to i64
  br label %cond.end.111

cond.false.110:                                   ; preds = %cond.end.92
  %34 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.105
  %cond112 = phi i64 [ %conv109, %cond.true.105 ], [ %34, %cond.false.110 ]
  %conv113 = trunc i64 %cond112 to i16
  store i16 %conv113, i16* %temp, align 2, !tbaa !6
  %35 = load i16, i16* %temp, align 2, !tbaa !6
  %conv114 = sext i16 %35 to i64
  %add115 = add nsw i64 %conv114, 256
  store i64 %add115, i64* %ltmp, align 8, !tbaa !10
  %sub116 = sub nsw i64 %add115, -32768
  %cmp117 = icmp ugt i64 %sub116, 65535
  br i1 %cmp117, label %cond.true.119, label %cond.false.124

cond.true.119:                                    ; preds = %cond.end.111
  %36 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp120 = icmp sgt i64 %36, 0
  %cond122 = select i1 %cmp120, i32 32767, i32 -32768
  %conv123 = sext i32 %cond122 to i64
  br label %cond.end.125

cond.false.124:                                   ; preds = %cond.end.111
  %37 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.119
  %cond126 = phi i64 [ %conv123, %cond.true.119 ], [ %37, %cond.false.124 ]
  %conv127 = trunc i64 %cond126 to i16
  store i16 %conv127, i16* %temp, align 2, !tbaa !6
  %38 = load i16, i16* %temp, align 2, !tbaa !6
  %conv128 = sext i16 %38 to i32
  %shr129 = ashr i32 %conv128, 9
  %conv130 = trunc i32 %shr129 to i16
  store i16 %conv130, i16* %temp, align 2, !tbaa !6
  %39 = load i16, i16* %temp, align 2, !tbaa !6
  %conv131 = sext i16 %39 to i32
  %cmp132 = icmp sgt i32 %conv131, 15
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.end.125
  br label %cond.end.145

cond.false.135:                                   ; preds = %cond.end.125
  %40 = load i16, i16* %temp, align 2, !tbaa !6
  %conv136 = sext i16 %40 to i32
  %cmp137 = icmp slt i32 %conv136, -16
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.false.135
  br label %cond.end.143

cond.false.140:                                   ; preds = %cond.false.135
  %41 = load i16, i16* %temp, align 2, !tbaa !6
  %conv141 = sext i16 %41 to i32
  %sub142 = sub nsw i32 %conv141, -16
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.140, %cond.true.139
  %cond144 = phi i32 [ 0, %cond.true.139 ], [ %sub142, %cond.false.140 ]
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.end.143, %cond.true.134
  %cond146 = phi i32 [ 31, %cond.true.134 ], [ %cond144, %cond.end.143 ]
  %conv147 = trunc i32 %cond146 to i16
  %42 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  store i16 %conv147, i16* %42, align 2, !tbaa !6
  %43 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %incdec.ptr148 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %incdec.ptr148, i16** %LAR.addr, align 8, !tbaa !2
  %44 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %45 = load i16, i16* %44, align 2, !tbaa !6
  %conv149 = sext i16 %45 to i64
  %mul150 = mul nsw i64 20480, %conv149
  %shr151 = ashr i64 %mul150, 15
  %conv152 = trunc i64 %shr151 to i16
  store i16 %conv152, i16* %temp, align 2, !tbaa !6
  %46 = load i16, i16* %temp, align 2, !tbaa !6
  %conv153 = sext i16 %46 to i64
  %add154 = add nsw i64 %conv153, -2560
  store i64 %add154, i64* %ltmp, align 8, !tbaa !10
  %sub155 = sub nsw i64 %add154, -32768
  %cmp156 = icmp ugt i64 %sub155, 65535
  br i1 %cmp156, label %cond.true.158, label %cond.false.163

cond.true.158:                                    ; preds = %cond.end.145
  %47 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp159 = icmp sgt i64 %47, 0
  %cond161 = select i1 %cmp159, i32 32767, i32 -32768
  %conv162 = sext i32 %cond161 to i64
  br label %cond.end.164

cond.false.163:                                   ; preds = %cond.end.145
  %48 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.163, %cond.true.158
  %cond165 = phi i64 [ %conv162, %cond.true.158 ], [ %48, %cond.false.163 ]
  %conv166 = trunc i64 %cond165 to i16
  store i16 %conv166, i16* %temp, align 2, !tbaa !6
  %49 = load i16, i16* %temp, align 2, !tbaa !6
  %conv167 = sext i16 %49 to i64
  %add168 = add nsw i64 %conv167, 256
  store i64 %add168, i64* %ltmp, align 8, !tbaa !10
  %sub169 = sub nsw i64 %add168, -32768
  %cmp170 = icmp ugt i64 %sub169, 65535
  br i1 %cmp170, label %cond.true.172, label %cond.false.177

cond.true.172:                                    ; preds = %cond.end.164
  %50 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp173 = icmp sgt i64 %50, 0
  %cond175 = select i1 %cmp173, i32 32767, i32 -32768
  %conv176 = sext i32 %cond175 to i64
  br label %cond.end.178

cond.false.177:                                   ; preds = %cond.end.164
  %51 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.177, %cond.true.172
  %cond179 = phi i64 [ %conv176, %cond.true.172 ], [ %51, %cond.false.177 ]
  %conv180 = trunc i64 %cond179 to i16
  store i16 %conv180, i16* %temp, align 2, !tbaa !6
  %52 = load i16, i16* %temp, align 2, !tbaa !6
  %conv181 = sext i16 %52 to i32
  %shr182 = ashr i32 %conv181, 9
  %conv183 = trunc i32 %shr182 to i16
  store i16 %conv183, i16* %temp, align 2, !tbaa !6
  %53 = load i16, i16* %temp, align 2, !tbaa !6
  %conv184 = sext i16 %53 to i32
  %cmp185 = icmp sgt i32 %conv184, 15
  br i1 %cmp185, label %cond.true.187, label %cond.false.188

cond.true.187:                                    ; preds = %cond.end.178
  br label %cond.end.198

cond.false.188:                                   ; preds = %cond.end.178
  %54 = load i16, i16* %temp, align 2, !tbaa !6
  %conv189 = sext i16 %54 to i32
  %cmp190 = icmp slt i32 %conv189, -16
  br i1 %cmp190, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %cond.false.188
  br label %cond.end.196

cond.false.193:                                   ; preds = %cond.false.188
  %55 = load i16, i16* %temp, align 2, !tbaa !6
  %conv194 = sext i16 %55 to i32
  %sub195 = sub nsw i32 %conv194, -16
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.193, %cond.true.192
  %cond197 = phi i32 [ 0, %cond.true.192 ], [ %sub195, %cond.false.193 ]
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.end.196, %cond.true.187
  %cond199 = phi i32 [ 31, %cond.true.187 ], [ %cond197, %cond.end.196 ]
  %conv200 = trunc i32 %cond199 to i16
  %56 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  store i16 %conv200, i16* %56, align 2, !tbaa !6
  %57 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %incdec.ptr201 = getelementptr inbounds i16, i16* %57, i32 1
  store i16* %incdec.ptr201, i16** %LAR.addr, align 8, !tbaa !2
  %58 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %59 = load i16, i16* %58, align 2, !tbaa !6
  %conv202 = sext i16 %59 to i64
  %mul203 = mul nsw i64 13964, %conv202
  %shr204 = ashr i64 %mul203, 15
  %conv205 = trunc i64 %shr204 to i16
  store i16 %conv205, i16* %temp, align 2, !tbaa !6
  %60 = load i16, i16* %temp, align 2, !tbaa !6
  %conv206 = sext i16 %60 to i64
  %add207 = add nsw i64 %conv206, 94
  store i64 %add207, i64* %ltmp, align 8, !tbaa !10
  %sub208 = sub nsw i64 %add207, -32768
  %cmp209 = icmp ugt i64 %sub208, 65535
  br i1 %cmp209, label %cond.true.211, label %cond.false.216

cond.true.211:                                    ; preds = %cond.end.198
  %61 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp212 = icmp sgt i64 %61, 0
  %cond214 = select i1 %cmp212, i32 32767, i32 -32768
  %conv215 = sext i32 %cond214 to i64
  br label %cond.end.217

cond.false.216:                                   ; preds = %cond.end.198
  %62 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.216, %cond.true.211
  %cond218 = phi i64 [ %conv215, %cond.true.211 ], [ %62, %cond.false.216 ]
  %conv219 = trunc i64 %cond218 to i16
  store i16 %conv219, i16* %temp, align 2, !tbaa !6
  %63 = load i16, i16* %temp, align 2, !tbaa !6
  %conv220 = sext i16 %63 to i64
  %add221 = add nsw i64 %conv220, 256
  store i64 %add221, i64* %ltmp, align 8, !tbaa !10
  %sub222 = sub nsw i64 %add221, -32768
  %cmp223 = icmp ugt i64 %sub222, 65535
  br i1 %cmp223, label %cond.true.225, label %cond.false.230

cond.true.225:                                    ; preds = %cond.end.217
  %64 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp226 = icmp sgt i64 %64, 0
  %cond228 = select i1 %cmp226, i32 32767, i32 -32768
  %conv229 = sext i32 %cond228 to i64
  br label %cond.end.231

cond.false.230:                                   ; preds = %cond.end.217
  %65 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.230, %cond.true.225
  %cond232 = phi i64 [ %conv229, %cond.true.225 ], [ %65, %cond.false.230 ]
  %conv233 = trunc i64 %cond232 to i16
  store i16 %conv233, i16* %temp, align 2, !tbaa !6
  %66 = load i16, i16* %temp, align 2, !tbaa !6
  %conv234 = sext i16 %66 to i32
  %shr235 = ashr i32 %conv234, 9
  %conv236 = trunc i32 %shr235 to i16
  store i16 %conv236, i16* %temp, align 2, !tbaa !6
  %67 = load i16, i16* %temp, align 2, !tbaa !6
  %conv237 = sext i16 %67 to i32
  %cmp238 = icmp sgt i32 %conv237, 7
  br i1 %cmp238, label %cond.true.240, label %cond.false.241

cond.true.240:                                    ; preds = %cond.end.231
  br label %cond.end.251

cond.false.241:                                   ; preds = %cond.end.231
  %68 = load i16, i16* %temp, align 2, !tbaa !6
  %conv242 = sext i16 %68 to i32
  %cmp243 = icmp slt i32 %conv242, -8
  br i1 %cmp243, label %cond.true.245, label %cond.false.246

cond.true.245:                                    ; preds = %cond.false.241
  br label %cond.end.249

cond.false.246:                                   ; preds = %cond.false.241
  %69 = load i16, i16* %temp, align 2, !tbaa !6
  %conv247 = sext i16 %69 to i32
  %sub248 = sub nsw i32 %conv247, -8
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.246, %cond.true.245
  %cond250 = phi i32 [ 0, %cond.true.245 ], [ %sub248, %cond.false.246 ]
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.end.249, %cond.true.240
  %cond252 = phi i32 [ 15, %cond.true.240 ], [ %cond250, %cond.end.249 ]
  %conv253 = trunc i32 %cond252 to i16
  %70 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  store i16 %conv253, i16* %70, align 2, !tbaa !6
  %71 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %incdec.ptr254 = getelementptr inbounds i16, i16* %71, i32 1
  store i16* %incdec.ptr254, i16** %LAR.addr, align 8, !tbaa !2
  %72 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %73 = load i16, i16* %72, align 2, !tbaa !6
  %conv255 = sext i16 %73 to i64
  %mul256 = mul nsw i64 15360, %conv255
  %shr257 = ashr i64 %mul256, 15
  %conv258 = trunc i64 %shr257 to i16
  store i16 %conv258, i16* %temp, align 2, !tbaa !6
  %74 = load i16, i16* %temp, align 2, !tbaa !6
  %conv259 = sext i16 %74 to i64
  %add260 = add nsw i64 %conv259, -1792
  store i64 %add260, i64* %ltmp, align 8, !tbaa !10
  %sub261 = sub nsw i64 %add260, -32768
  %cmp262 = icmp ugt i64 %sub261, 65535
  br i1 %cmp262, label %cond.true.264, label %cond.false.269

cond.true.264:                                    ; preds = %cond.end.251
  %75 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp265 = icmp sgt i64 %75, 0
  %cond267 = select i1 %cmp265, i32 32767, i32 -32768
  %conv268 = sext i32 %cond267 to i64
  br label %cond.end.270

cond.false.269:                                   ; preds = %cond.end.251
  %76 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.false.269, %cond.true.264
  %cond271 = phi i64 [ %conv268, %cond.true.264 ], [ %76, %cond.false.269 ]
  %conv272 = trunc i64 %cond271 to i16
  store i16 %conv272, i16* %temp, align 2, !tbaa !6
  %77 = load i16, i16* %temp, align 2, !tbaa !6
  %conv273 = sext i16 %77 to i64
  %add274 = add nsw i64 %conv273, 256
  store i64 %add274, i64* %ltmp, align 8, !tbaa !10
  %sub275 = sub nsw i64 %add274, -32768
  %cmp276 = icmp ugt i64 %sub275, 65535
  br i1 %cmp276, label %cond.true.278, label %cond.false.283

cond.true.278:                                    ; preds = %cond.end.270
  %78 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp279 = icmp sgt i64 %78, 0
  %cond281 = select i1 %cmp279, i32 32767, i32 -32768
  %conv282 = sext i32 %cond281 to i64
  br label %cond.end.284

cond.false.283:                                   ; preds = %cond.end.270
  %79 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.283, %cond.true.278
  %cond285 = phi i64 [ %conv282, %cond.true.278 ], [ %79, %cond.false.283 ]
  %conv286 = trunc i64 %cond285 to i16
  store i16 %conv286, i16* %temp, align 2, !tbaa !6
  %80 = load i16, i16* %temp, align 2, !tbaa !6
  %conv287 = sext i16 %80 to i32
  %shr288 = ashr i32 %conv287, 9
  %conv289 = trunc i32 %shr288 to i16
  store i16 %conv289, i16* %temp, align 2, !tbaa !6
  %81 = load i16, i16* %temp, align 2, !tbaa !6
  %conv290 = sext i16 %81 to i32
  %cmp291 = icmp sgt i32 %conv290, 7
  br i1 %cmp291, label %cond.true.293, label %cond.false.294

cond.true.293:                                    ; preds = %cond.end.284
  br label %cond.end.304

cond.false.294:                                   ; preds = %cond.end.284
  %82 = load i16, i16* %temp, align 2, !tbaa !6
  %conv295 = sext i16 %82 to i32
  %cmp296 = icmp slt i32 %conv295, -8
  br i1 %cmp296, label %cond.true.298, label %cond.false.299

cond.true.298:                                    ; preds = %cond.false.294
  br label %cond.end.302

cond.false.299:                                   ; preds = %cond.false.294
  %83 = load i16, i16* %temp, align 2, !tbaa !6
  %conv300 = sext i16 %83 to i32
  %sub301 = sub nsw i32 %conv300, -8
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.299, %cond.true.298
  %cond303 = phi i32 [ 0, %cond.true.298 ], [ %sub301, %cond.false.299 ]
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.end.302, %cond.true.293
  %cond305 = phi i32 [ 15, %cond.true.293 ], [ %cond303, %cond.end.302 ]
  %conv306 = trunc i32 %cond305 to i16
  %84 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  store i16 %conv306, i16* %84, align 2, !tbaa !6
  %85 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %incdec.ptr307 = getelementptr inbounds i16, i16* %85, i32 1
  store i16* %incdec.ptr307, i16** %LAR.addr, align 8, !tbaa !2
  %86 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %87 = load i16, i16* %86, align 2, !tbaa !6
  %conv308 = sext i16 %87 to i64
  %mul309 = mul nsw i64 8534, %conv308
  %shr310 = ashr i64 %mul309, 15
  %conv311 = trunc i64 %shr310 to i16
  store i16 %conv311, i16* %temp, align 2, !tbaa !6
  %88 = load i16, i16* %temp, align 2, !tbaa !6
  %conv312 = sext i16 %88 to i64
  %add313 = add nsw i64 %conv312, -341
  store i64 %add313, i64* %ltmp, align 8, !tbaa !10
  %sub314 = sub nsw i64 %add313, -32768
  %cmp315 = icmp ugt i64 %sub314, 65535
  br i1 %cmp315, label %cond.true.317, label %cond.false.322

cond.true.317:                                    ; preds = %cond.end.304
  %89 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp318 = icmp sgt i64 %89, 0
  %cond320 = select i1 %cmp318, i32 32767, i32 -32768
  %conv321 = sext i32 %cond320 to i64
  br label %cond.end.323

cond.false.322:                                   ; preds = %cond.end.304
  %90 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.322, %cond.true.317
  %cond324 = phi i64 [ %conv321, %cond.true.317 ], [ %90, %cond.false.322 ]
  %conv325 = trunc i64 %cond324 to i16
  store i16 %conv325, i16* %temp, align 2, !tbaa !6
  %91 = load i16, i16* %temp, align 2, !tbaa !6
  %conv326 = sext i16 %91 to i64
  %add327 = add nsw i64 %conv326, 256
  store i64 %add327, i64* %ltmp, align 8, !tbaa !10
  %sub328 = sub nsw i64 %add327, -32768
  %cmp329 = icmp ugt i64 %sub328, 65535
  br i1 %cmp329, label %cond.true.331, label %cond.false.336

cond.true.331:                                    ; preds = %cond.end.323
  %92 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp332 = icmp sgt i64 %92, 0
  %cond334 = select i1 %cmp332, i32 32767, i32 -32768
  %conv335 = sext i32 %cond334 to i64
  br label %cond.end.337

cond.false.336:                                   ; preds = %cond.end.323
  %93 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.337

cond.end.337:                                     ; preds = %cond.false.336, %cond.true.331
  %cond338 = phi i64 [ %conv335, %cond.true.331 ], [ %93, %cond.false.336 ]
  %conv339 = trunc i64 %cond338 to i16
  store i16 %conv339, i16* %temp, align 2, !tbaa !6
  %94 = load i16, i16* %temp, align 2, !tbaa !6
  %conv340 = sext i16 %94 to i32
  %shr341 = ashr i32 %conv340, 9
  %conv342 = trunc i32 %shr341 to i16
  store i16 %conv342, i16* %temp, align 2, !tbaa !6
  %95 = load i16, i16* %temp, align 2, !tbaa !6
  %conv343 = sext i16 %95 to i32
  %cmp344 = icmp sgt i32 %conv343, 3
  br i1 %cmp344, label %cond.true.346, label %cond.false.347

cond.true.346:                                    ; preds = %cond.end.337
  br label %cond.end.357

cond.false.347:                                   ; preds = %cond.end.337
  %96 = load i16, i16* %temp, align 2, !tbaa !6
  %conv348 = sext i16 %96 to i32
  %cmp349 = icmp slt i32 %conv348, -4
  br i1 %cmp349, label %cond.true.351, label %cond.false.352

cond.true.351:                                    ; preds = %cond.false.347
  br label %cond.end.355

cond.false.352:                                   ; preds = %cond.false.347
  %97 = load i16, i16* %temp, align 2, !tbaa !6
  %conv353 = sext i16 %97 to i32
  %sub354 = sub nsw i32 %conv353, -4
  br label %cond.end.355

cond.end.355:                                     ; preds = %cond.false.352, %cond.true.351
  %cond356 = phi i32 [ 0, %cond.true.351 ], [ %sub354, %cond.false.352 ]
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.end.355, %cond.true.346
  %cond358 = phi i32 [ 7, %cond.true.346 ], [ %cond356, %cond.end.355 ]
  %conv359 = trunc i32 %cond358 to i16
  %98 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  store i16 %conv359, i16* %98, align 2, !tbaa !6
  %99 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %incdec.ptr360 = getelementptr inbounds i16, i16* %99, i32 1
  store i16* %incdec.ptr360, i16** %LAR.addr, align 8, !tbaa !2
  %100 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %101 = load i16, i16* %100, align 2, !tbaa !6
  %conv361 = sext i16 %101 to i64
  %mul362 = mul nsw i64 9036, %conv361
  %shr363 = ashr i64 %mul362, 15
  %conv364 = trunc i64 %shr363 to i16
  store i16 %conv364, i16* %temp, align 2, !tbaa !6
  %102 = load i16, i16* %temp, align 2, !tbaa !6
  %conv365 = sext i16 %102 to i64
  %add366 = add nsw i64 %conv365, -1144
  store i64 %add366, i64* %ltmp, align 8, !tbaa !10
  %sub367 = sub nsw i64 %add366, -32768
  %cmp368 = icmp ugt i64 %sub367, 65535
  br i1 %cmp368, label %cond.true.370, label %cond.false.375

cond.true.370:                                    ; preds = %cond.end.357
  %103 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp371 = icmp sgt i64 %103, 0
  %cond373 = select i1 %cmp371, i32 32767, i32 -32768
  %conv374 = sext i32 %cond373 to i64
  br label %cond.end.376

cond.false.375:                                   ; preds = %cond.end.357
  %104 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.375, %cond.true.370
  %cond377 = phi i64 [ %conv374, %cond.true.370 ], [ %104, %cond.false.375 ]
  %conv378 = trunc i64 %cond377 to i16
  store i16 %conv378, i16* %temp, align 2, !tbaa !6
  %105 = load i16, i16* %temp, align 2, !tbaa !6
  %conv379 = sext i16 %105 to i64
  %add380 = add nsw i64 %conv379, 256
  store i64 %add380, i64* %ltmp, align 8, !tbaa !10
  %sub381 = sub nsw i64 %add380, -32768
  %cmp382 = icmp ugt i64 %sub381, 65535
  br i1 %cmp382, label %cond.true.384, label %cond.false.389

cond.true.384:                                    ; preds = %cond.end.376
  %106 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp385 = icmp sgt i64 %106, 0
  %cond387 = select i1 %cmp385, i32 32767, i32 -32768
  %conv388 = sext i32 %cond387 to i64
  br label %cond.end.390

cond.false.389:                                   ; preds = %cond.end.376
  %107 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.false.389, %cond.true.384
  %cond391 = phi i64 [ %conv388, %cond.true.384 ], [ %107, %cond.false.389 ]
  %conv392 = trunc i64 %cond391 to i16
  store i16 %conv392, i16* %temp, align 2, !tbaa !6
  %108 = load i16, i16* %temp, align 2, !tbaa !6
  %conv393 = sext i16 %108 to i32
  %shr394 = ashr i32 %conv393, 9
  %conv395 = trunc i32 %shr394 to i16
  store i16 %conv395, i16* %temp, align 2, !tbaa !6
  %109 = load i16, i16* %temp, align 2, !tbaa !6
  %conv396 = sext i16 %109 to i32
  %cmp397 = icmp sgt i32 %conv396, 3
  br i1 %cmp397, label %cond.true.399, label %cond.false.400

cond.true.399:                                    ; preds = %cond.end.390
  br label %cond.end.410

cond.false.400:                                   ; preds = %cond.end.390
  %110 = load i16, i16* %temp, align 2, !tbaa !6
  %conv401 = sext i16 %110 to i32
  %cmp402 = icmp slt i32 %conv401, -4
  br i1 %cmp402, label %cond.true.404, label %cond.false.405

cond.true.404:                                    ; preds = %cond.false.400
  br label %cond.end.408

cond.false.405:                                   ; preds = %cond.false.400
  %111 = load i16, i16* %temp, align 2, !tbaa !6
  %conv406 = sext i16 %111 to i32
  %sub407 = sub nsw i32 %conv406, -4
  br label %cond.end.408

cond.end.408:                                     ; preds = %cond.false.405, %cond.true.404
  %cond409 = phi i32 [ 0, %cond.true.404 ], [ %sub407, %cond.false.405 ]
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.end.408, %cond.true.399
  %cond411 = phi i32 [ 7, %cond.true.399 ], [ %cond409, %cond.end.408 ]
  %conv412 = trunc i32 %cond411 to i16
  %112 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  store i16 %conv412, i16* %112, align 2, !tbaa !6
  %113 = load i16*, i16** %LAR.addr, align 8, !tbaa !2
  %incdec.ptr413 = getelementptr inbounds i16, i16* %113, i32 1
  store i16* %incdec.ptr413, i16** %LAR.addr, align 8, !tbaa !2
  %114 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #3
  %115 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %115) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare signext i16 @gsm_norm(i64) #2

declare signext i16 @gsm_div(i16 signext, i16 signext) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !4, i64 0}
