; ModuleID = 'long_term.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@gsm_QLB = external global [4 x i16], align 2
@gsm_DLB = external global [4 x i16], align 2

; Function Attrs: nounwind ssp uwtable
define void @Gsm_Long_Term_Predictor(%struct.gsm_state* %S, i16* %d, i16* %dp, i16* %e, i16* %dpp, i16* %Nc, i16* %bc) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %d.addr = alloca i16*, align 8
  %dp.addr = alloca i16*, align 8
  %e.addr = alloca i16*, align 8
  %dpp.addr = alloca i16*, align 8
  %Nc.addr = alloca i16*, align 8
  %bc.addr = alloca i16*, align 8
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  store i16* %d, i16** %d.addr, align 8, !tbaa !2
  store i16* %dp, i16** %dp.addr, align 8, !tbaa !2
  store i16* %e, i16** %e.addr, align 8, !tbaa !2
  store i16* %dpp, i16** %dpp.addr, align 8, !tbaa !2
  store i16* %Nc, i16** %Nc.addr, align 8, !tbaa !2
  store i16* %bc, i16** %bc.addr, align 8, !tbaa !2
  %0 = load i16*, i16** %d.addr, align 8, !tbaa !2
  %1 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %2 = load i16*, i16** %bc.addr, align 8, !tbaa !2
  %3 = load i16*, i16** %Nc.addr, align 8, !tbaa !2
  call void @Calculation_of_the_LTP_parameters(i16* %0, i16* %1, i16* %2, i16* %3)
  %4 = load i16*, i16** %bc.addr, align 8, !tbaa !2
  %5 = load i16, i16* %4, align 2, !tbaa !6
  %6 = load i16*, i16** %Nc.addr, align 8, !tbaa !2
  %7 = load i16, i16* %6, align 2, !tbaa !6
  %8 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %9 = load i16*, i16** %d.addr, align 8, !tbaa !2
  %10 = load i16*, i16** %dpp.addr, align 8, !tbaa !2
  %11 = load i16*, i16** %e.addr, align 8, !tbaa !2
  call void @Long_term_analysis_filtering(i16 signext %5, i16 signext %7, i16* %8, i16* %9, i16* %10, i16* %11)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Calculation_of_the_LTP_parameters(i16* %d, i16* %dp, i16* %bc_out, i16* %Nc_out) #0 {
entry:
  %d.addr = alloca i16*, align 8
  %dp.addr = alloca i16*, align 8
  %bc_out.addr = alloca i16*, align 8
  %Nc_out.addr = alloca i16*, align 8
  %k = alloca i32, align 4
  %lambda = alloca i32, align 4
  %Nc = alloca i16, align 2
  %bc = alloca i16, align 2
  %wt = alloca [40 x i16], align 16
  %L_max = alloca i64, align 8
  %L_power = alloca i64, align 8
  %R = alloca i16, align 2
  %S = alloca i16, align 2
  %dmax = alloca i16, align 2
  %scal = alloca i16, align 2
  %temp = alloca i16, align 2
  %L_result = alloca i64, align 8
  %L_temp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i16* %d, i16** %d.addr, align 8, !tbaa !2
  store i16* %dp, i16** %dp.addr, align 8, !tbaa !2
  store i16* %bc_out, i16** %bc_out.addr, align 8, !tbaa !2
  store i16* %Nc_out, i16** %Nc_out.addr, align 8, !tbaa !2
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %lambda to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i16* %Nc to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #3
  %3 = bitcast i16* %bc to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #3
  %4 = bitcast [40 x i16]* %wt to i8*
  call void @llvm.lifetime.start(i64 80, i8* %4) #3
  %5 = bitcast i64* %L_max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i64* %L_power to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i16* %R to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #3
  %8 = bitcast i16* %S to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #3
  %9 = bitcast i16* %dmax to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #3
  %10 = bitcast i16* %scal to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #3
  %11 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #3
  store i16 0, i16* %dmax, align 2, !tbaa !6
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %k, align 4, !tbaa !8
  %cmp = icmp sle i32 %12, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom = sext i32 %13 to i64
  %14 = load i16*, i16** %d.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !6
  store i16 %15, i16* %temp, align 2, !tbaa !6
  %16 = load i16, i16* %temp, align 2, !tbaa !6
  %conv = sext i16 %16 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %cond.true, label %cond.false.8

cond.true:                                        ; preds = %for.body
  %17 = load i16, i16* %temp, align 2, !tbaa !6
  %conv3 = sext i16 %17 to i32
  %cmp4 = icmp eq i32 %conv3, -32768
  br i1 %cmp4, label %cond.true.6, label %cond.false

cond.true.6:                                      ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %18 = load i16, i16* %temp, align 2, !tbaa !6
  %conv7 = sext i16 %18 to i32
  %sub = sub nsw i32 0, %conv7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.6
  %cond = phi i32 [ 32767, %cond.true.6 ], [ %sub, %cond.false ]
  br label %cond.end.10

cond.false.8:                                     ; preds = %for.body
  %19 = load i16, i16* %temp, align 2, !tbaa !6
  %conv9 = sext i16 %19 to i32
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.end
  %cond11 = phi i32 [ %cond, %cond.end ], [ %conv9, %cond.false.8 ]
  %conv12 = trunc i32 %cond11 to i16
  store i16 %conv12, i16* %temp, align 2, !tbaa !6
  %20 = load i16, i16* %temp, align 2, !tbaa !6
  %conv13 = sext i16 %20 to i32
  %21 = load i16, i16* %dmax, align 2, !tbaa !6
  %conv14 = sext i16 %21 to i32
  %cmp15 = icmp sgt i32 %conv13, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.10
  %22 = load i16, i16* %temp, align 2, !tbaa !6
  store i16 %22, i16* %dmax, align 2, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %k, align 4, !tbaa !8
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %temp, align 2, !tbaa !6
  %24 = load i16, i16* %dmax, align 2, !tbaa !6
  %conv17 = sext i16 %24 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.end
  store i16 0, i16* %scal, align 2, !tbaa !6
  br label %if.end.22

if.else:                                          ; preds = %for.end
  %25 = load i16, i16* %dmax, align 2, !tbaa !6
  %conv21 = sext i16 %25 to i64
  %shl = shl i64 %conv21, 16
  %call = call signext i16 @gsm_norm(i64 %shl)
  store i16 %call, i16* %temp, align 2, !tbaa !6
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  %26 = load i16, i16* %temp, align 2, !tbaa !6
  %conv23 = sext i16 %26 to i32
  %cmp24 = icmp sgt i32 %conv23, 6
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.22
  store i16 0, i16* %scal, align 2, !tbaa !6
  br label %if.end.31

if.else.27:                                       ; preds = %if.end.22
  %27 = load i16, i16* %temp, align 2, !tbaa !6
  %conv28 = sext i16 %27 to i32
  %sub29 = sub nsw i32 6, %conv28
  %conv30 = trunc i32 %sub29 to i16
  store i16 %conv30, i16* %scal, align 2, !tbaa !6
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.27, %if.then.26
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.43, %if.end.31
  %28 = load i32, i32* %k, align 4, !tbaa !8
  %cmp33 = icmp sle i32 %28, 39
  br i1 %cmp33, label %for.body.35, label %for.end.45

for.body.35:                                      ; preds = %for.cond.32
  %29 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom36 = sext i32 %29 to i64
  %30 = load i16*, i16** %d.addr, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds i16, i16* %30, i64 %idxprom36
  %31 = load i16, i16* %arrayidx37, align 2, !tbaa !6
  %conv38 = sext i16 %31 to i32
  %32 = load i16, i16* %scal, align 2, !tbaa !6
  %conv39 = sext i16 %32 to i32
  %shr = ashr i32 %conv38, %conv39
  %conv40 = trunc i32 %shr to i16
  %33 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom41 = sext i32 %33 to i64
  %arrayidx42 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 %idxprom41
  store i16 %conv40, i16* %arrayidx42, align 2, !tbaa !6
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.35
  %34 = load i32, i32* %k, align 4, !tbaa !8
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %k, align 4, !tbaa !8
  br label %for.cond.32

for.end.45:                                       ; preds = %for.cond.32
  store i64 0, i64* %L_max, align 8, !tbaa !10
  store i16 40, i16* %Nc, align 2, !tbaa !6
  store i32 40, i32* %lambda, align 4, !tbaa !8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.412, %for.end.45
  %35 = load i32, i32* %lambda, align 4, !tbaa !8
  %cmp47 = icmp sle i32 %35, 120
  br i1 %cmp47, label %for.body.49, label %for.end.414

for.body.49:                                      ; preds = %for.cond.46
  %36 = bitcast i64* %L_result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #3
  %arrayidx50 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 0
  %37 = load i16, i16* %arrayidx50, align 2, !tbaa !6
  %conv51 = sext i16 %37 to i32
  %38 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub52 = sub nsw i32 0, %38
  %idxprom53 = sext i32 %sub52 to i64
  %39 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx54 = getelementptr inbounds i16, i16* %39, i64 %idxprom53
  %40 = load i16, i16* %arrayidx54, align 2, !tbaa !6
  %conv55 = sext i16 %40 to i32
  %mul = mul nsw i32 %conv51, %conv55
  %conv56 = sext i32 %mul to i64
  store i64 %conv56, i64* %L_result, align 8, !tbaa !10
  %arrayidx57 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 1
  %41 = load i16, i16* %arrayidx57, align 2, !tbaa !6
  %conv58 = sext i16 %41 to i32
  %42 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub59 = sub nsw i32 1, %42
  %idxprom60 = sext i32 %sub59 to i64
  %43 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds i16, i16* %43, i64 %idxprom60
  %44 = load i16, i16* %arrayidx61, align 2, !tbaa !6
  %conv62 = sext i16 %44 to i32
  %mul63 = mul nsw i32 %conv58, %conv62
  %conv64 = sext i32 %mul63 to i64
  %45 = load i64, i64* %L_result, align 8, !tbaa !10
  %add = add nsw i64 %45, %conv64
  store i64 %add, i64* %L_result, align 8, !tbaa !10
  %arrayidx65 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 2
  %46 = load i16, i16* %arrayidx65, align 2, !tbaa !6
  %conv66 = sext i16 %46 to i32
  %47 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub67 = sub nsw i32 2, %47
  %idxprom68 = sext i32 %sub67 to i64
  %48 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds i16, i16* %48, i64 %idxprom68
  %49 = load i16, i16* %arrayidx69, align 2, !tbaa !6
  %conv70 = sext i16 %49 to i32
  %mul71 = mul nsw i32 %conv66, %conv70
  %conv72 = sext i32 %mul71 to i64
  %50 = load i64, i64* %L_result, align 8, !tbaa !10
  %add73 = add nsw i64 %50, %conv72
  store i64 %add73, i64* %L_result, align 8, !tbaa !10
  %arrayidx74 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 3
  %51 = load i16, i16* %arrayidx74, align 2, !tbaa !6
  %conv75 = sext i16 %51 to i32
  %52 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub76 = sub nsw i32 3, %52
  %idxprom77 = sext i32 %sub76 to i64
  %53 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx78 = getelementptr inbounds i16, i16* %53, i64 %idxprom77
  %54 = load i16, i16* %arrayidx78, align 2, !tbaa !6
  %conv79 = sext i16 %54 to i32
  %mul80 = mul nsw i32 %conv75, %conv79
  %conv81 = sext i32 %mul80 to i64
  %55 = load i64, i64* %L_result, align 8, !tbaa !10
  %add82 = add nsw i64 %55, %conv81
  store i64 %add82, i64* %L_result, align 8, !tbaa !10
  %arrayidx83 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 4
  %56 = load i16, i16* %arrayidx83, align 2, !tbaa !6
  %conv84 = sext i16 %56 to i32
  %57 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub85 = sub nsw i32 4, %57
  %idxprom86 = sext i32 %sub85 to i64
  %58 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx87 = getelementptr inbounds i16, i16* %58, i64 %idxprom86
  %59 = load i16, i16* %arrayidx87, align 2, !tbaa !6
  %conv88 = sext i16 %59 to i32
  %mul89 = mul nsw i32 %conv84, %conv88
  %conv90 = sext i32 %mul89 to i64
  %60 = load i64, i64* %L_result, align 8, !tbaa !10
  %add91 = add nsw i64 %60, %conv90
  store i64 %add91, i64* %L_result, align 8, !tbaa !10
  %arrayidx92 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 5
  %61 = load i16, i16* %arrayidx92, align 2, !tbaa !6
  %conv93 = sext i16 %61 to i32
  %62 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub94 = sub nsw i32 5, %62
  %idxprom95 = sext i32 %sub94 to i64
  %63 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds i16, i16* %63, i64 %idxprom95
  %64 = load i16, i16* %arrayidx96, align 2, !tbaa !6
  %conv97 = sext i16 %64 to i32
  %mul98 = mul nsw i32 %conv93, %conv97
  %conv99 = sext i32 %mul98 to i64
  %65 = load i64, i64* %L_result, align 8, !tbaa !10
  %add100 = add nsw i64 %65, %conv99
  store i64 %add100, i64* %L_result, align 8, !tbaa !10
  %arrayidx101 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 6
  %66 = load i16, i16* %arrayidx101, align 2, !tbaa !6
  %conv102 = sext i16 %66 to i32
  %67 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub103 = sub nsw i32 6, %67
  %idxprom104 = sext i32 %sub103 to i64
  %68 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx105 = getelementptr inbounds i16, i16* %68, i64 %idxprom104
  %69 = load i16, i16* %arrayidx105, align 2, !tbaa !6
  %conv106 = sext i16 %69 to i32
  %mul107 = mul nsw i32 %conv102, %conv106
  %conv108 = sext i32 %mul107 to i64
  %70 = load i64, i64* %L_result, align 8, !tbaa !10
  %add109 = add nsw i64 %70, %conv108
  store i64 %add109, i64* %L_result, align 8, !tbaa !10
  %arrayidx110 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 7
  %71 = load i16, i16* %arrayidx110, align 2, !tbaa !6
  %conv111 = sext i16 %71 to i32
  %72 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub112 = sub nsw i32 7, %72
  %idxprom113 = sext i32 %sub112 to i64
  %73 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx114 = getelementptr inbounds i16, i16* %73, i64 %idxprom113
  %74 = load i16, i16* %arrayidx114, align 2, !tbaa !6
  %conv115 = sext i16 %74 to i32
  %mul116 = mul nsw i32 %conv111, %conv115
  %conv117 = sext i32 %mul116 to i64
  %75 = load i64, i64* %L_result, align 8, !tbaa !10
  %add118 = add nsw i64 %75, %conv117
  store i64 %add118, i64* %L_result, align 8, !tbaa !10
  %arrayidx119 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 8
  %76 = load i16, i16* %arrayidx119, align 2, !tbaa !6
  %conv120 = sext i16 %76 to i32
  %77 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub121 = sub nsw i32 8, %77
  %idxprom122 = sext i32 %sub121 to i64
  %78 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx123 = getelementptr inbounds i16, i16* %78, i64 %idxprom122
  %79 = load i16, i16* %arrayidx123, align 2, !tbaa !6
  %conv124 = sext i16 %79 to i32
  %mul125 = mul nsw i32 %conv120, %conv124
  %conv126 = sext i32 %mul125 to i64
  %80 = load i64, i64* %L_result, align 8, !tbaa !10
  %add127 = add nsw i64 %80, %conv126
  store i64 %add127, i64* %L_result, align 8, !tbaa !10
  %arrayidx128 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 9
  %81 = load i16, i16* %arrayidx128, align 2, !tbaa !6
  %conv129 = sext i16 %81 to i32
  %82 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub130 = sub nsw i32 9, %82
  %idxprom131 = sext i32 %sub130 to i64
  %83 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds i16, i16* %83, i64 %idxprom131
  %84 = load i16, i16* %arrayidx132, align 2, !tbaa !6
  %conv133 = sext i16 %84 to i32
  %mul134 = mul nsw i32 %conv129, %conv133
  %conv135 = sext i32 %mul134 to i64
  %85 = load i64, i64* %L_result, align 8, !tbaa !10
  %add136 = add nsw i64 %85, %conv135
  store i64 %add136, i64* %L_result, align 8, !tbaa !10
  %arrayidx137 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 10
  %86 = load i16, i16* %arrayidx137, align 2, !tbaa !6
  %conv138 = sext i16 %86 to i32
  %87 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub139 = sub nsw i32 10, %87
  %idxprom140 = sext i32 %sub139 to i64
  %88 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx141 = getelementptr inbounds i16, i16* %88, i64 %idxprom140
  %89 = load i16, i16* %arrayidx141, align 2, !tbaa !6
  %conv142 = sext i16 %89 to i32
  %mul143 = mul nsw i32 %conv138, %conv142
  %conv144 = sext i32 %mul143 to i64
  %90 = load i64, i64* %L_result, align 8, !tbaa !10
  %add145 = add nsw i64 %90, %conv144
  store i64 %add145, i64* %L_result, align 8, !tbaa !10
  %arrayidx146 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 11
  %91 = load i16, i16* %arrayidx146, align 2, !tbaa !6
  %conv147 = sext i16 %91 to i32
  %92 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub148 = sub nsw i32 11, %92
  %idxprom149 = sext i32 %sub148 to i64
  %93 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx150 = getelementptr inbounds i16, i16* %93, i64 %idxprom149
  %94 = load i16, i16* %arrayidx150, align 2, !tbaa !6
  %conv151 = sext i16 %94 to i32
  %mul152 = mul nsw i32 %conv147, %conv151
  %conv153 = sext i32 %mul152 to i64
  %95 = load i64, i64* %L_result, align 8, !tbaa !10
  %add154 = add nsw i64 %95, %conv153
  store i64 %add154, i64* %L_result, align 8, !tbaa !10
  %arrayidx155 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 12
  %96 = load i16, i16* %arrayidx155, align 2, !tbaa !6
  %conv156 = sext i16 %96 to i32
  %97 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub157 = sub nsw i32 12, %97
  %idxprom158 = sext i32 %sub157 to i64
  %98 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx159 = getelementptr inbounds i16, i16* %98, i64 %idxprom158
  %99 = load i16, i16* %arrayidx159, align 2, !tbaa !6
  %conv160 = sext i16 %99 to i32
  %mul161 = mul nsw i32 %conv156, %conv160
  %conv162 = sext i32 %mul161 to i64
  %100 = load i64, i64* %L_result, align 8, !tbaa !10
  %add163 = add nsw i64 %100, %conv162
  store i64 %add163, i64* %L_result, align 8, !tbaa !10
  %arrayidx164 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 13
  %101 = load i16, i16* %arrayidx164, align 2, !tbaa !6
  %conv165 = sext i16 %101 to i32
  %102 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub166 = sub nsw i32 13, %102
  %idxprom167 = sext i32 %sub166 to i64
  %103 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx168 = getelementptr inbounds i16, i16* %103, i64 %idxprom167
  %104 = load i16, i16* %arrayidx168, align 2, !tbaa !6
  %conv169 = sext i16 %104 to i32
  %mul170 = mul nsw i32 %conv165, %conv169
  %conv171 = sext i32 %mul170 to i64
  %105 = load i64, i64* %L_result, align 8, !tbaa !10
  %add172 = add nsw i64 %105, %conv171
  store i64 %add172, i64* %L_result, align 8, !tbaa !10
  %arrayidx173 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 14
  %106 = load i16, i16* %arrayidx173, align 2, !tbaa !6
  %conv174 = sext i16 %106 to i32
  %107 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub175 = sub nsw i32 14, %107
  %idxprom176 = sext i32 %sub175 to i64
  %108 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx177 = getelementptr inbounds i16, i16* %108, i64 %idxprom176
  %109 = load i16, i16* %arrayidx177, align 2, !tbaa !6
  %conv178 = sext i16 %109 to i32
  %mul179 = mul nsw i32 %conv174, %conv178
  %conv180 = sext i32 %mul179 to i64
  %110 = load i64, i64* %L_result, align 8, !tbaa !10
  %add181 = add nsw i64 %110, %conv180
  store i64 %add181, i64* %L_result, align 8, !tbaa !10
  %arrayidx182 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 15
  %111 = load i16, i16* %arrayidx182, align 2, !tbaa !6
  %conv183 = sext i16 %111 to i32
  %112 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub184 = sub nsw i32 15, %112
  %idxprom185 = sext i32 %sub184 to i64
  %113 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx186 = getelementptr inbounds i16, i16* %113, i64 %idxprom185
  %114 = load i16, i16* %arrayidx186, align 2, !tbaa !6
  %conv187 = sext i16 %114 to i32
  %mul188 = mul nsw i32 %conv183, %conv187
  %conv189 = sext i32 %mul188 to i64
  %115 = load i64, i64* %L_result, align 8, !tbaa !10
  %add190 = add nsw i64 %115, %conv189
  store i64 %add190, i64* %L_result, align 8, !tbaa !10
  %arrayidx191 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 16
  %116 = load i16, i16* %arrayidx191, align 2, !tbaa !6
  %conv192 = sext i16 %116 to i32
  %117 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub193 = sub nsw i32 16, %117
  %idxprom194 = sext i32 %sub193 to i64
  %118 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx195 = getelementptr inbounds i16, i16* %118, i64 %idxprom194
  %119 = load i16, i16* %arrayidx195, align 2, !tbaa !6
  %conv196 = sext i16 %119 to i32
  %mul197 = mul nsw i32 %conv192, %conv196
  %conv198 = sext i32 %mul197 to i64
  %120 = load i64, i64* %L_result, align 8, !tbaa !10
  %add199 = add nsw i64 %120, %conv198
  store i64 %add199, i64* %L_result, align 8, !tbaa !10
  %arrayidx200 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 17
  %121 = load i16, i16* %arrayidx200, align 2, !tbaa !6
  %conv201 = sext i16 %121 to i32
  %122 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub202 = sub nsw i32 17, %122
  %idxprom203 = sext i32 %sub202 to i64
  %123 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx204 = getelementptr inbounds i16, i16* %123, i64 %idxprom203
  %124 = load i16, i16* %arrayidx204, align 2, !tbaa !6
  %conv205 = sext i16 %124 to i32
  %mul206 = mul nsw i32 %conv201, %conv205
  %conv207 = sext i32 %mul206 to i64
  %125 = load i64, i64* %L_result, align 8, !tbaa !10
  %add208 = add nsw i64 %125, %conv207
  store i64 %add208, i64* %L_result, align 8, !tbaa !10
  %arrayidx209 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 18
  %126 = load i16, i16* %arrayidx209, align 2, !tbaa !6
  %conv210 = sext i16 %126 to i32
  %127 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub211 = sub nsw i32 18, %127
  %idxprom212 = sext i32 %sub211 to i64
  %128 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx213 = getelementptr inbounds i16, i16* %128, i64 %idxprom212
  %129 = load i16, i16* %arrayidx213, align 2, !tbaa !6
  %conv214 = sext i16 %129 to i32
  %mul215 = mul nsw i32 %conv210, %conv214
  %conv216 = sext i32 %mul215 to i64
  %130 = load i64, i64* %L_result, align 8, !tbaa !10
  %add217 = add nsw i64 %130, %conv216
  store i64 %add217, i64* %L_result, align 8, !tbaa !10
  %arrayidx218 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 19
  %131 = load i16, i16* %arrayidx218, align 2, !tbaa !6
  %conv219 = sext i16 %131 to i32
  %132 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub220 = sub nsw i32 19, %132
  %idxprom221 = sext i32 %sub220 to i64
  %133 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx222 = getelementptr inbounds i16, i16* %133, i64 %idxprom221
  %134 = load i16, i16* %arrayidx222, align 2, !tbaa !6
  %conv223 = sext i16 %134 to i32
  %mul224 = mul nsw i32 %conv219, %conv223
  %conv225 = sext i32 %mul224 to i64
  %135 = load i64, i64* %L_result, align 8, !tbaa !10
  %add226 = add nsw i64 %135, %conv225
  store i64 %add226, i64* %L_result, align 8, !tbaa !10
  %arrayidx227 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 20
  %136 = load i16, i16* %arrayidx227, align 2, !tbaa !6
  %conv228 = sext i16 %136 to i32
  %137 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub229 = sub nsw i32 20, %137
  %idxprom230 = sext i32 %sub229 to i64
  %138 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx231 = getelementptr inbounds i16, i16* %138, i64 %idxprom230
  %139 = load i16, i16* %arrayidx231, align 2, !tbaa !6
  %conv232 = sext i16 %139 to i32
  %mul233 = mul nsw i32 %conv228, %conv232
  %conv234 = sext i32 %mul233 to i64
  %140 = load i64, i64* %L_result, align 8, !tbaa !10
  %add235 = add nsw i64 %140, %conv234
  store i64 %add235, i64* %L_result, align 8, !tbaa !10
  %arrayidx236 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 21
  %141 = load i16, i16* %arrayidx236, align 2, !tbaa !6
  %conv237 = sext i16 %141 to i32
  %142 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub238 = sub nsw i32 21, %142
  %idxprom239 = sext i32 %sub238 to i64
  %143 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx240 = getelementptr inbounds i16, i16* %143, i64 %idxprom239
  %144 = load i16, i16* %arrayidx240, align 2, !tbaa !6
  %conv241 = sext i16 %144 to i32
  %mul242 = mul nsw i32 %conv237, %conv241
  %conv243 = sext i32 %mul242 to i64
  %145 = load i64, i64* %L_result, align 8, !tbaa !10
  %add244 = add nsw i64 %145, %conv243
  store i64 %add244, i64* %L_result, align 8, !tbaa !10
  %arrayidx245 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 22
  %146 = load i16, i16* %arrayidx245, align 2, !tbaa !6
  %conv246 = sext i16 %146 to i32
  %147 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub247 = sub nsw i32 22, %147
  %idxprom248 = sext i32 %sub247 to i64
  %148 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx249 = getelementptr inbounds i16, i16* %148, i64 %idxprom248
  %149 = load i16, i16* %arrayidx249, align 2, !tbaa !6
  %conv250 = sext i16 %149 to i32
  %mul251 = mul nsw i32 %conv246, %conv250
  %conv252 = sext i32 %mul251 to i64
  %150 = load i64, i64* %L_result, align 8, !tbaa !10
  %add253 = add nsw i64 %150, %conv252
  store i64 %add253, i64* %L_result, align 8, !tbaa !10
  %arrayidx254 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 23
  %151 = load i16, i16* %arrayidx254, align 2, !tbaa !6
  %conv255 = sext i16 %151 to i32
  %152 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub256 = sub nsw i32 23, %152
  %idxprom257 = sext i32 %sub256 to i64
  %153 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx258 = getelementptr inbounds i16, i16* %153, i64 %idxprom257
  %154 = load i16, i16* %arrayidx258, align 2, !tbaa !6
  %conv259 = sext i16 %154 to i32
  %mul260 = mul nsw i32 %conv255, %conv259
  %conv261 = sext i32 %mul260 to i64
  %155 = load i64, i64* %L_result, align 8, !tbaa !10
  %add262 = add nsw i64 %155, %conv261
  store i64 %add262, i64* %L_result, align 8, !tbaa !10
  %arrayidx263 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 24
  %156 = load i16, i16* %arrayidx263, align 2, !tbaa !6
  %conv264 = sext i16 %156 to i32
  %157 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub265 = sub nsw i32 24, %157
  %idxprom266 = sext i32 %sub265 to i64
  %158 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx267 = getelementptr inbounds i16, i16* %158, i64 %idxprom266
  %159 = load i16, i16* %arrayidx267, align 2, !tbaa !6
  %conv268 = sext i16 %159 to i32
  %mul269 = mul nsw i32 %conv264, %conv268
  %conv270 = sext i32 %mul269 to i64
  %160 = load i64, i64* %L_result, align 8, !tbaa !10
  %add271 = add nsw i64 %160, %conv270
  store i64 %add271, i64* %L_result, align 8, !tbaa !10
  %arrayidx272 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 25
  %161 = load i16, i16* %arrayidx272, align 2, !tbaa !6
  %conv273 = sext i16 %161 to i32
  %162 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub274 = sub nsw i32 25, %162
  %idxprom275 = sext i32 %sub274 to i64
  %163 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx276 = getelementptr inbounds i16, i16* %163, i64 %idxprom275
  %164 = load i16, i16* %arrayidx276, align 2, !tbaa !6
  %conv277 = sext i16 %164 to i32
  %mul278 = mul nsw i32 %conv273, %conv277
  %conv279 = sext i32 %mul278 to i64
  %165 = load i64, i64* %L_result, align 8, !tbaa !10
  %add280 = add nsw i64 %165, %conv279
  store i64 %add280, i64* %L_result, align 8, !tbaa !10
  %arrayidx281 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 26
  %166 = load i16, i16* %arrayidx281, align 2, !tbaa !6
  %conv282 = sext i16 %166 to i32
  %167 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub283 = sub nsw i32 26, %167
  %idxprom284 = sext i32 %sub283 to i64
  %168 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx285 = getelementptr inbounds i16, i16* %168, i64 %idxprom284
  %169 = load i16, i16* %arrayidx285, align 2, !tbaa !6
  %conv286 = sext i16 %169 to i32
  %mul287 = mul nsw i32 %conv282, %conv286
  %conv288 = sext i32 %mul287 to i64
  %170 = load i64, i64* %L_result, align 8, !tbaa !10
  %add289 = add nsw i64 %170, %conv288
  store i64 %add289, i64* %L_result, align 8, !tbaa !10
  %arrayidx290 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 27
  %171 = load i16, i16* %arrayidx290, align 2, !tbaa !6
  %conv291 = sext i16 %171 to i32
  %172 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub292 = sub nsw i32 27, %172
  %idxprom293 = sext i32 %sub292 to i64
  %173 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx294 = getelementptr inbounds i16, i16* %173, i64 %idxprom293
  %174 = load i16, i16* %arrayidx294, align 2, !tbaa !6
  %conv295 = sext i16 %174 to i32
  %mul296 = mul nsw i32 %conv291, %conv295
  %conv297 = sext i32 %mul296 to i64
  %175 = load i64, i64* %L_result, align 8, !tbaa !10
  %add298 = add nsw i64 %175, %conv297
  store i64 %add298, i64* %L_result, align 8, !tbaa !10
  %arrayidx299 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 28
  %176 = load i16, i16* %arrayidx299, align 2, !tbaa !6
  %conv300 = sext i16 %176 to i32
  %177 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub301 = sub nsw i32 28, %177
  %idxprom302 = sext i32 %sub301 to i64
  %178 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx303 = getelementptr inbounds i16, i16* %178, i64 %idxprom302
  %179 = load i16, i16* %arrayidx303, align 2, !tbaa !6
  %conv304 = sext i16 %179 to i32
  %mul305 = mul nsw i32 %conv300, %conv304
  %conv306 = sext i32 %mul305 to i64
  %180 = load i64, i64* %L_result, align 8, !tbaa !10
  %add307 = add nsw i64 %180, %conv306
  store i64 %add307, i64* %L_result, align 8, !tbaa !10
  %arrayidx308 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 29
  %181 = load i16, i16* %arrayidx308, align 2, !tbaa !6
  %conv309 = sext i16 %181 to i32
  %182 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub310 = sub nsw i32 29, %182
  %idxprom311 = sext i32 %sub310 to i64
  %183 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx312 = getelementptr inbounds i16, i16* %183, i64 %idxprom311
  %184 = load i16, i16* %arrayidx312, align 2, !tbaa !6
  %conv313 = sext i16 %184 to i32
  %mul314 = mul nsw i32 %conv309, %conv313
  %conv315 = sext i32 %mul314 to i64
  %185 = load i64, i64* %L_result, align 8, !tbaa !10
  %add316 = add nsw i64 %185, %conv315
  store i64 %add316, i64* %L_result, align 8, !tbaa !10
  %arrayidx317 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 30
  %186 = load i16, i16* %arrayidx317, align 2, !tbaa !6
  %conv318 = sext i16 %186 to i32
  %187 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub319 = sub nsw i32 30, %187
  %idxprom320 = sext i32 %sub319 to i64
  %188 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx321 = getelementptr inbounds i16, i16* %188, i64 %idxprom320
  %189 = load i16, i16* %arrayidx321, align 2, !tbaa !6
  %conv322 = sext i16 %189 to i32
  %mul323 = mul nsw i32 %conv318, %conv322
  %conv324 = sext i32 %mul323 to i64
  %190 = load i64, i64* %L_result, align 8, !tbaa !10
  %add325 = add nsw i64 %190, %conv324
  store i64 %add325, i64* %L_result, align 8, !tbaa !10
  %arrayidx326 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 31
  %191 = load i16, i16* %arrayidx326, align 2, !tbaa !6
  %conv327 = sext i16 %191 to i32
  %192 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub328 = sub nsw i32 31, %192
  %idxprom329 = sext i32 %sub328 to i64
  %193 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx330 = getelementptr inbounds i16, i16* %193, i64 %idxprom329
  %194 = load i16, i16* %arrayidx330, align 2, !tbaa !6
  %conv331 = sext i16 %194 to i32
  %mul332 = mul nsw i32 %conv327, %conv331
  %conv333 = sext i32 %mul332 to i64
  %195 = load i64, i64* %L_result, align 8, !tbaa !10
  %add334 = add nsw i64 %195, %conv333
  store i64 %add334, i64* %L_result, align 8, !tbaa !10
  %arrayidx335 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 32
  %196 = load i16, i16* %arrayidx335, align 2, !tbaa !6
  %conv336 = sext i16 %196 to i32
  %197 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub337 = sub nsw i32 32, %197
  %idxprom338 = sext i32 %sub337 to i64
  %198 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx339 = getelementptr inbounds i16, i16* %198, i64 %idxprom338
  %199 = load i16, i16* %arrayidx339, align 2, !tbaa !6
  %conv340 = sext i16 %199 to i32
  %mul341 = mul nsw i32 %conv336, %conv340
  %conv342 = sext i32 %mul341 to i64
  %200 = load i64, i64* %L_result, align 8, !tbaa !10
  %add343 = add nsw i64 %200, %conv342
  store i64 %add343, i64* %L_result, align 8, !tbaa !10
  %arrayidx344 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 33
  %201 = load i16, i16* %arrayidx344, align 2, !tbaa !6
  %conv345 = sext i16 %201 to i32
  %202 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub346 = sub nsw i32 33, %202
  %idxprom347 = sext i32 %sub346 to i64
  %203 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx348 = getelementptr inbounds i16, i16* %203, i64 %idxprom347
  %204 = load i16, i16* %arrayidx348, align 2, !tbaa !6
  %conv349 = sext i16 %204 to i32
  %mul350 = mul nsw i32 %conv345, %conv349
  %conv351 = sext i32 %mul350 to i64
  %205 = load i64, i64* %L_result, align 8, !tbaa !10
  %add352 = add nsw i64 %205, %conv351
  store i64 %add352, i64* %L_result, align 8, !tbaa !10
  %arrayidx353 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 34
  %206 = load i16, i16* %arrayidx353, align 2, !tbaa !6
  %conv354 = sext i16 %206 to i32
  %207 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub355 = sub nsw i32 34, %207
  %idxprom356 = sext i32 %sub355 to i64
  %208 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx357 = getelementptr inbounds i16, i16* %208, i64 %idxprom356
  %209 = load i16, i16* %arrayidx357, align 2, !tbaa !6
  %conv358 = sext i16 %209 to i32
  %mul359 = mul nsw i32 %conv354, %conv358
  %conv360 = sext i32 %mul359 to i64
  %210 = load i64, i64* %L_result, align 8, !tbaa !10
  %add361 = add nsw i64 %210, %conv360
  store i64 %add361, i64* %L_result, align 8, !tbaa !10
  %arrayidx362 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 35
  %211 = load i16, i16* %arrayidx362, align 2, !tbaa !6
  %conv363 = sext i16 %211 to i32
  %212 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub364 = sub nsw i32 35, %212
  %idxprom365 = sext i32 %sub364 to i64
  %213 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx366 = getelementptr inbounds i16, i16* %213, i64 %idxprom365
  %214 = load i16, i16* %arrayidx366, align 2, !tbaa !6
  %conv367 = sext i16 %214 to i32
  %mul368 = mul nsw i32 %conv363, %conv367
  %conv369 = sext i32 %mul368 to i64
  %215 = load i64, i64* %L_result, align 8, !tbaa !10
  %add370 = add nsw i64 %215, %conv369
  store i64 %add370, i64* %L_result, align 8, !tbaa !10
  %arrayidx371 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 36
  %216 = load i16, i16* %arrayidx371, align 2, !tbaa !6
  %conv372 = sext i16 %216 to i32
  %217 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub373 = sub nsw i32 36, %217
  %idxprom374 = sext i32 %sub373 to i64
  %218 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx375 = getelementptr inbounds i16, i16* %218, i64 %idxprom374
  %219 = load i16, i16* %arrayidx375, align 2, !tbaa !6
  %conv376 = sext i16 %219 to i32
  %mul377 = mul nsw i32 %conv372, %conv376
  %conv378 = sext i32 %mul377 to i64
  %220 = load i64, i64* %L_result, align 8, !tbaa !10
  %add379 = add nsw i64 %220, %conv378
  store i64 %add379, i64* %L_result, align 8, !tbaa !10
  %arrayidx380 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 37
  %221 = load i16, i16* %arrayidx380, align 2, !tbaa !6
  %conv381 = sext i16 %221 to i32
  %222 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub382 = sub nsw i32 37, %222
  %idxprom383 = sext i32 %sub382 to i64
  %223 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx384 = getelementptr inbounds i16, i16* %223, i64 %idxprom383
  %224 = load i16, i16* %arrayidx384, align 2, !tbaa !6
  %conv385 = sext i16 %224 to i32
  %mul386 = mul nsw i32 %conv381, %conv385
  %conv387 = sext i32 %mul386 to i64
  %225 = load i64, i64* %L_result, align 8, !tbaa !10
  %add388 = add nsw i64 %225, %conv387
  store i64 %add388, i64* %L_result, align 8, !tbaa !10
  %arrayidx389 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 38
  %226 = load i16, i16* %arrayidx389, align 2, !tbaa !6
  %conv390 = sext i16 %226 to i32
  %227 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub391 = sub nsw i32 38, %227
  %idxprom392 = sext i32 %sub391 to i64
  %228 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx393 = getelementptr inbounds i16, i16* %228, i64 %idxprom392
  %229 = load i16, i16* %arrayidx393, align 2, !tbaa !6
  %conv394 = sext i16 %229 to i32
  %mul395 = mul nsw i32 %conv390, %conv394
  %conv396 = sext i32 %mul395 to i64
  %230 = load i64, i64* %L_result, align 8, !tbaa !10
  %add397 = add nsw i64 %230, %conv396
  store i64 %add397, i64* %L_result, align 8, !tbaa !10
  %arrayidx398 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 39
  %231 = load i16, i16* %arrayidx398, align 2, !tbaa !6
  %conv399 = sext i16 %231 to i32
  %232 = load i32, i32* %lambda, align 4, !tbaa !8
  %sub400 = sub nsw i32 39, %232
  %idxprom401 = sext i32 %sub400 to i64
  %233 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx402 = getelementptr inbounds i16, i16* %233, i64 %idxprom401
  %234 = load i16, i16* %arrayidx402, align 2, !tbaa !6
  %conv403 = sext i16 %234 to i32
  %mul404 = mul nsw i32 %conv399, %conv403
  %conv405 = sext i32 %mul404 to i64
  %235 = load i64, i64* %L_result, align 8, !tbaa !10
  %add406 = add nsw i64 %235, %conv405
  store i64 %add406, i64* %L_result, align 8, !tbaa !10
  %236 = load i64, i64* %L_result, align 8, !tbaa !10
  %237 = load i64, i64* %L_max, align 8, !tbaa !10
  %cmp407 = icmp sgt i64 %236, %237
  br i1 %cmp407, label %if.then.409, label %if.end.411

if.then.409:                                      ; preds = %for.body.49
  %238 = load i32, i32* %lambda, align 4, !tbaa !8
  %conv410 = trunc i32 %238 to i16
  store i16 %conv410, i16* %Nc, align 2, !tbaa !6
  %239 = load i64, i64* %L_result, align 8, !tbaa !10
  store i64 %239, i64* %L_max, align 8, !tbaa !10
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.409, %for.body.49
  %240 = bitcast i64* %L_result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #3
  br label %for.inc.412

for.inc.412:                                      ; preds = %if.end.411
  %241 = load i32, i32* %lambda, align 4, !tbaa !8
  %inc413 = add nsw i32 %241, 1
  store i32 %inc413, i32* %lambda, align 4, !tbaa !8
  br label %for.cond.46

for.end.414:                                      ; preds = %for.cond.46
  %242 = load i16, i16* %Nc, align 2, !tbaa !6
  %243 = load i16*, i16** %Nc_out.addr, align 8, !tbaa !2
  store i16 %242, i16* %243, align 2, !tbaa !6
  %244 = load i64, i64* %L_max, align 8, !tbaa !10
  %shl415 = shl i64 %244, 1
  store i64 %shl415, i64* %L_max, align 8, !tbaa !10
  %245 = load i64, i64* %L_max, align 8, !tbaa !10
  %246 = load i16, i16* %scal, align 2, !tbaa !6
  %conv416 = sext i16 %246 to i32
  %sub417 = sub nsw i32 6, %conv416
  %sh_prom = zext i32 %sub417 to i64
  %shr418 = ashr i64 %245, %sh_prom
  store i64 %shr418, i64* %L_max, align 8, !tbaa !10
  store i64 0, i64* %L_power, align 8, !tbaa !10
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.432, %for.end.414
  %247 = load i32, i32* %k, align 4, !tbaa !8
  %cmp420 = icmp sle i32 %247, 39
  br i1 %cmp420, label %for.body.422, label %for.end.434

for.body.422:                                     ; preds = %for.cond.419
  %248 = bitcast i64* %L_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %248) #3
  %249 = load i32, i32* %k, align 4, !tbaa !8
  %250 = load i16, i16* %Nc, align 2, !tbaa !6
  %conv423 = sext i16 %250 to i32
  %sub424 = sub nsw i32 %249, %conv423
  %idxprom425 = sext i32 %sub424 to i64
  %251 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx426 = getelementptr inbounds i16, i16* %251, i64 %idxprom425
  %252 = load i16, i16* %arrayidx426, align 2, !tbaa !6
  %conv427 = sext i16 %252 to i32
  %shr428 = ashr i32 %conv427, 3
  %conv429 = sext i32 %shr428 to i64
  store i64 %conv429, i64* %L_temp, align 8, !tbaa !10
  %253 = load i64, i64* %L_temp, align 8, !tbaa !10
  %254 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul430 = mul nsw i64 %253, %254
  %255 = load i64, i64* %L_power, align 8, !tbaa !10
  %add431 = add nsw i64 %255, %mul430
  store i64 %add431, i64* %L_power, align 8, !tbaa !10
  %256 = bitcast i64* %L_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #3
  br label %for.inc.432

for.inc.432:                                      ; preds = %for.body.422
  %257 = load i32, i32* %k, align 4, !tbaa !8
  %inc433 = add nsw i32 %257, 1
  store i32 %inc433, i32* %k, align 4, !tbaa !8
  br label %for.cond.419

for.end.434:                                      ; preds = %for.cond.419
  %258 = load i64, i64* %L_power, align 8, !tbaa !10
  %shl435 = shl i64 %258, 1
  store i64 %shl435, i64* %L_power, align 8, !tbaa !10
  %259 = load i64, i64* %L_max, align 8, !tbaa !10
  %cmp436 = icmp sle i64 %259, 0
  br i1 %cmp436, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %for.end.434
  %260 = load i16*, i16** %bc_out.addr, align 8, !tbaa !2
  store i16 0, i16* %260, align 2, !tbaa !6
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.439:                                       ; preds = %for.end.434
  %261 = load i64, i64* %L_max, align 8, !tbaa !10
  %262 = load i64, i64* %L_power, align 8, !tbaa !10
  %cmp440 = icmp sge i64 %261, %262
  br i1 %cmp440, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %if.end.439
  %263 = load i16*, i16** %bc_out.addr, align 8, !tbaa !2
  store i16 3, i16* %263, align 2, !tbaa !6
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.443:                                       ; preds = %if.end.439
  %264 = load i64, i64* %L_power, align 8, !tbaa !10
  %call444 = call signext i16 @gsm_norm(i64 %264)
  store i16 %call444, i16* %temp, align 2, !tbaa !6
  %265 = load i64, i64* %L_max, align 8, !tbaa !10
  %266 = load i16, i16* %temp, align 2, !tbaa !6
  %conv445 = sext i16 %266 to i32
  %sh_prom446 = zext i32 %conv445 to i64
  %shl447 = shl i64 %265, %sh_prom446
  %shr448 = ashr i64 %shl447, 16
  %conv449 = trunc i64 %shr448 to i16
  store i16 %conv449, i16* %R, align 2, !tbaa !6
  %267 = load i64, i64* %L_power, align 8, !tbaa !10
  %268 = load i16, i16* %temp, align 2, !tbaa !6
  %conv450 = sext i16 %268 to i32
  %sh_prom451 = zext i32 %conv450 to i64
  %shl452 = shl i64 %267, %sh_prom451
  %shr453 = ashr i64 %shl452, 16
  %conv454 = trunc i64 %shr453 to i16
  store i16 %conv454, i16* %S, align 2, !tbaa !6
  store i16 0, i16* %bc, align 2, !tbaa !6
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.469, %if.end.443
  %269 = load i16, i16* %bc, align 2, !tbaa !6
  %conv456 = sext i16 %269 to i32
  %cmp457 = icmp sle i32 %conv456, 2
  br i1 %cmp457, label %for.body.459, label %for.end.471

for.body.459:                                     ; preds = %for.cond.455
  %270 = load i16, i16* %R, align 2, !tbaa !6
  %conv460 = sext i16 %270 to i32
  %271 = load i16, i16* %S, align 2, !tbaa !6
  %272 = load i16, i16* %bc, align 2, !tbaa !6
  %idxprom461 = sext i16 %272 to i64
  %arrayidx462 = getelementptr inbounds [4 x i16], [4 x i16]* @gsm_DLB, i32 0, i64 %idxprom461
  %273 = load i16, i16* %arrayidx462, align 2, !tbaa !6
  %call463 = call signext i16 @gsm_mult(i16 signext %271, i16 signext %273)
  %conv464 = sext i16 %call463 to i32
  %cmp465 = icmp sle i32 %conv460, %conv464
  br i1 %cmp465, label %if.then.467, label %if.end.468

if.then.467:                                      ; preds = %for.body.459
  br label %for.end.471

if.end.468:                                       ; preds = %for.body.459
  br label %for.inc.469

for.inc.469:                                      ; preds = %if.end.468
  %274 = load i16, i16* %bc, align 2, !tbaa !6
  %inc470 = add i16 %274, 1
  store i16 %inc470, i16* %bc, align 2, !tbaa !6
  br label %for.cond.455

for.end.471:                                      ; preds = %if.then.467, %for.cond.455
  %275 = load i16, i16* %bc, align 2, !tbaa !6
  %276 = load i16*, i16** %bc_out.addr, align 8, !tbaa !2
  store i16 %275, i16* %276, align 2, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.471, %if.then.442, %if.then.438
  %277 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %277) #3
  %278 = bitcast i16* %scal to i8*
  call void @llvm.lifetime.end(i64 2, i8* %278) #3
  %279 = bitcast i16* %dmax to i8*
  call void @llvm.lifetime.end(i64 2, i8* %279) #3
  %280 = bitcast i16* %S to i8*
  call void @llvm.lifetime.end(i64 2, i8* %280) #3
  %281 = bitcast i16* %R to i8*
  call void @llvm.lifetime.end(i64 2, i8* %281) #3
  %282 = bitcast i64* %L_power to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #3
  %283 = bitcast i64* %L_max to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #3
  %284 = bitcast [40 x i16]* %wt to i8*
  call void @llvm.lifetime.end(i64 80, i8* %284) #3
  %285 = bitcast i16* %bc to i8*
  call void @llvm.lifetime.end(i64 2, i8* %285) #3
  %286 = bitcast i16* %Nc to i8*
  call void @llvm.lifetime.end(i64 2, i8* %286) #3
  %287 = bitcast i32* %lambda to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #3
  %288 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #3
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
define internal void @Long_term_analysis_filtering(i16 signext %bc, i16 signext %Nc, i16* %dp, i16* %d, i16* %dpp, i16* %e) #0 {
entry:
  %bc.addr = alloca i16, align 2
  %Nc.addr = alloca i16, align 2
  %dp.addr = alloca i16*, align 8
  %d.addr = alloca i16*, align 8
  %dpp.addr = alloca i16*, align 8
  %e.addr = alloca i16*, align 8
  %k = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store i16 %bc, i16* %bc.addr, align 2, !tbaa !6
  store i16 %Nc, i16* %Nc.addr, align 2, !tbaa !6
  store i16* %dp, i16** %dp.addr, align 8, !tbaa !2
  store i16* %d, i16** %d.addr, align 8, !tbaa !2
  store i16* %dpp, i16** %dpp.addr, align 8, !tbaa !2
  store i16* %e, i16** %e.addr, align 8, !tbaa !2
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = load i16, i16* %bc.addr, align 2, !tbaa !6
  %conv = sext i16 %2 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
    i32 2, label %sw.bb.66
    i32 3, label %sw.bb.107
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load i32, i32* %k, align 4, !tbaa !8
  %cmp = icmp sle i32 %3, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4, !tbaa !8
  %5 = load i16, i16* %Nc.addr, align 2, !tbaa !6
  %conv2 = sext i16 %5 to i32
  %sub = sub nsw i32 %4, %conv2
  %idxprom = sext i32 %sub to i64
  %6 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv3 = sext i16 %7 to i64
  %mul = mul nsw i64 3277, %conv3
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv4 = trunc i64 %shr to i16
  %8 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom5 = sext i32 %8 to i64
  %9 = load i16*, i16** %dpp.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i16, i16* %9, i64 %idxprom5
  store i16 %conv4, i16* %arrayidx6, align 2, !tbaa !6
  %10 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom7 = sext i32 %10 to i64
  %11 = load i16*, i16** %d.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i16, i16* %11, i64 %idxprom7
  %12 = load i16, i16* %arrayidx8, align 2, !tbaa !6
  %conv9 = sext i16 %12 to i64
  %13 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom10 = sext i32 %13 to i64
  %14 = load i16*, i16** %dpp.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i16, i16* %14, i64 %idxprom10
  %15 = load i16, i16* %arrayidx11, align 2, !tbaa !6
  %conv12 = sext i16 %15 to i64
  %sub13 = sub nsw i64 %conv9, %conv12
  store i64 %sub13, i64* %ltmp, align 8, !tbaa !10
  %cmp14 = icmp sge i64 %sub13, 32767
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.20

cond.false:                                       ; preds = %for.body
  %16 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp16 = icmp sle i64 %16, -32768
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false
  br label %cond.end

cond.false.19:                                    ; preds = %cond.false
  %17 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false.19, %cond.true.18
  %cond = phi i64 [ -32768, %cond.true.18 ], [ %17, %cond.false.19 ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end, %cond.true
  %cond21 = phi i64 [ 32767, %cond.true ], [ %cond, %cond.end ]
  %conv22 = trunc i64 %cond21 to i16
  %18 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom23 = sext i32 %18 to i64
  %19 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i16, i16* %19, i64 %idxprom23
  store i16 %conv22, i16* %arrayidx24, align 2, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %cond.end.20
  %20 = load i32, i32* %k, align 4, !tbaa !8
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.63, %sw.bb.25
  %21 = load i32, i32* %k, align 4, !tbaa !8
  %cmp27 = icmp sle i32 %21, 39
  br i1 %cmp27, label %for.body.29, label %for.end.65

for.body.29:                                      ; preds = %for.cond.26
  %22 = load i32, i32* %k, align 4, !tbaa !8
  %23 = load i16, i16* %Nc.addr, align 2, !tbaa !6
  %conv30 = sext i16 %23 to i32
  %sub31 = sub nsw i32 %22, %conv30
  %idxprom32 = sext i32 %sub31 to i64
  %24 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i16, i16* %24, i64 %idxprom32
  %25 = load i16, i16* %arrayidx33, align 2, !tbaa !6
  %conv34 = sext i16 %25 to i64
  %mul35 = mul nsw i64 11469, %conv34
  %add36 = add nsw i64 %mul35, 16384
  %shr37 = ashr i64 %add36, 15
  %conv38 = trunc i64 %shr37 to i16
  %26 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom39 = sext i32 %26 to i64
  %27 = load i16*, i16** %dpp.addr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i16, i16* %27, i64 %idxprom39
  store i16 %conv38, i16* %arrayidx40, align 2, !tbaa !6
  %28 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom41 = sext i32 %28 to i64
  %29 = load i16*, i16** %d.addr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i16, i16* %29, i64 %idxprom41
  %30 = load i16, i16* %arrayidx42, align 2, !tbaa !6
  %conv43 = sext i16 %30 to i64
  %31 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom44 = sext i32 %31 to i64
  %32 = load i16*, i16** %dpp.addr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i16, i16* %32, i64 %idxprom44
  %33 = load i16, i16* %arrayidx45, align 2, !tbaa !6
  %conv46 = sext i16 %33 to i64
  %sub47 = sub nsw i64 %conv43, %conv46
  store i64 %sub47, i64* %ltmp, align 8, !tbaa !10
  %cmp48 = icmp sge i64 %sub47, 32767
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %for.body.29
  br label %cond.end.58

cond.false.51:                                    ; preds = %for.body.29
  %34 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp52 = icmp sle i64 %34, -32768
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.false.51
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.false.51
  %35 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi i64 [ -32768, %cond.true.54 ], [ %35, %cond.false.55 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.true.50
  %cond59 = phi i64 [ 32767, %cond.true.50 ], [ %cond57, %cond.end.56 ]
  %conv60 = trunc i64 %cond59 to i16
  %36 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom61 = sext i32 %36 to i64
  %37 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx62 = getelementptr inbounds i16, i16* %37, i64 %idxprom61
  store i16 %conv60, i16* %arrayidx62, align 2, !tbaa !6
  br label %for.inc.63

for.inc.63:                                       ; preds = %cond.end.58
  %38 = load i32, i32* %k, align 4, !tbaa !8
  %inc64 = add nsw i32 %38, 1
  store i32 %inc64, i32* %k, align 4, !tbaa !8
  br label %for.cond.26

for.end.65:                                       ; preds = %for.cond.26
  br label %sw.epilog

sw.bb.66:                                         ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.104, %sw.bb.66
  %39 = load i32, i32* %k, align 4, !tbaa !8
  %cmp68 = icmp sle i32 %39, 39
  br i1 %cmp68, label %for.body.70, label %for.end.106

for.body.70:                                      ; preds = %for.cond.67
  %40 = load i32, i32* %k, align 4, !tbaa !8
  %41 = load i16, i16* %Nc.addr, align 2, !tbaa !6
  %conv71 = sext i16 %41 to i32
  %sub72 = sub nsw i32 %40, %conv71
  %idxprom73 = sext i32 %sub72 to i64
  %42 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx74 = getelementptr inbounds i16, i16* %42, i64 %idxprom73
  %43 = load i16, i16* %arrayidx74, align 2, !tbaa !6
  %conv75 = sext i16 %43 to i64
  %mul76 = mul nsw i64 21299, %conv75
  %add77 = add nsw i64 %mul76, 16384
  %shr78 = ashr i64 %add77, 15
  %conv79 = trunc i64 %shr78 to i16
  %44 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom80 = sext i32 %44 to i64
  %45 = load i16*, i16** %dpp.addr, align 8, !tbaa !2
  %arrayidx81 = getelementptr inbounds i16, i16* %45, i64 %idxprom80
  store i16 %conv79, i16* %arrayidx81, align 2, !tbaa !6
  %46 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom82 = sext i32 %46 to i64
  %47 = load i16*, i16** %d.addr, align 8, !tbaa !2
  %arrayidx83 = getelementptr inbounds i16, i16* %47, i64 %idxprom82
  %48 = load i16, i16* %arrayidx83, align 2, !tbaa !6
  %conv84 = sext i16 %48 to i64
  %49 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom85 = sext i32 %49 to i64
  %50 = load i16*, i16** %dpp.addr, align 8, !tbaa !2
  %arrayidx86 = getelementptr inbounds i16, i16* %50, i64 %idxprom85
  %51 = load i16, i16* %arrayidx86, align 2, !tbaa !6
  %conv87 = sext i16 %51 to i64
  %sub88 = sub nsw i64 %conv84, %conv87
  store i64 %sub88, i64* %ltmp, align 8, !tbaa !10
  %cmp89 = icmp sge i64 %sub88, 32767
  br i1 %cmp89, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %for.body.70
  br label %cond.end.99

cond.false.92:                                    ; preds = %for.body.70
  %52 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp93 = icmp sle i64 %52, -32768
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.false.92
  br label %cond.end.97

cond.false.96:                                    ; preds = %cond.false.92
  %53 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.95
  %cond98 = phi i64 [ -32768, %cond.true.95 ], [ %53, %cond.false.96 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.true.91
  %cond100 = phi i64 [ 32767, %cond.true.91 ], [ %cond98, %cond.end.97 ]
  %conv101 = trunc i64 %cond100 to i16
  %54 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom102 = sext i32 %54 to i64
  %55 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx103 = getelementptr inbounds i16, i16* %55, i64 %idxprom102
  store i16 %conv101, i16* %arrayidx103, align 2, !tbaa !6
  br label %for.inc.104

for.inc.104:                                      ; preds = %cond.end.99
  %56 = load i32, i32* %k, align 4, !tbaa !8
  %inc105 = add nsw i32 %56, 1
  store i32 %inc105, i32* %k, align 4, !tbaa !8
  br label %for.cond.67

for.end.106:                                      ; preds = %for.cond.67
  br label %sw.epilog

sw.bb.107:                                        ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.145, %sw.bb.107
  %57 = load i32, i32* %k, align 4, !tbaa !8
  %cmp109 = icmp sle i32 %57, 39
  br i1 %cmp109, label %for.body.111, label %for.end.147

for.body.111:                                     ; preds = %for.cond.108
  %58 = load i32, i32* %k, align 4, !tbaa !8
  %59 = load i16, i16* %Nc.addr, align 2, !tbaa !6
  %conv112 = sext i16 %59 to i32
  %sub113 = sub nsw i32 %58, %conv112
  %idxprom114 = sext i32 %sub113 to i64
  %60 = load i16*, i16** %dp.addr, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds i16, i16* %60, i64 %idxprom114
  %61 = load i16, i16* %arrayidx115, align 2, !tbaa !6
  %conv116 = sext i16 %61 to i64
  %mul117 = mul nsw i64 32767, %conv116
  %add118 = add nsw i64 %mul117, 16384
  %shr119 = ashr i64 %add118, 15
  %conv120 = trunc i64 %shr119 to i16
  %62 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom121 = sext i32 %62 to i64
  %63 = load i16*, i16** %dpp.addr, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds i16, i16* %63, i64 %idxprom121
  store i16 %conv120, i16* %arrayidx122, align 2, !tbaa !6
  %64 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom123 = sext i32 %64 to i64
  %65 = load i16*, i16** %d.addr, align 8, !tbaa !2
  %arrayidx124 = getelementptr inbounds i16, i16* %65, i64 %idxprom123
  %66 = load i16, i16* %arrayidx124, align 2, !tbaa !6
  %conv125 = sext i16 %66 to i64
  %67 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom126 = sext i32 %67 to i64
  %68 = load i16*, i16** %dpp.addr, align 8, !tbaa !2
  %arrayidx127 = getelementptr inbounds i16, i16* %68, i64 %idxprom126
  %69 = load i16, i16* %arrayidx127, align 2, !tbaa !6
  %conv128 = sext i16 %69 to i64
  %sub129 = sub nsw i64 %conv125, %conv128
  store i64 %sub129, i64* %ltmp, align 8, !tbaa !10
  %cmp130 = icmp sge i64 %sub129, 32767
  br i1 %cmp130, label %cond.true.132, label %cond.false.133

cond.true.132:                                    ; preds = %for.body.111
  br label %cond.end.140

cond.false.133:                                   ; preds = %for.body.111
  %70 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp134 = icmp sle i64 %70, -32768
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %cond.false.133
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.false.133
  %71 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi i64 [ -32768, %cond.true.136 ], [ %71, %cond.false.137 ]
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.138, %cond.true.132
  %cond141 = phi i64 [ 32767, %cond.true.132 ], [ %cond139, %cond.end.138 ]
  %conv142 = trunc i64 %cond141 to i16
  %72 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom143 = sext i32 %72 to i64
  %73 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx144 = getelementptr inbounds i16, i16* %73, i64 %idxprom143
  store i16 %conv142, i16* %arrayidx144, align 2, !tbaa !6
  br label %for.inc.145

for.inc.145:                                      ; preds = %cond.end.140
  %74 = load i32, i32* %k, align 4, !tbaa !8
  %inc146 = add nsw i32 %74, 1
  store i32 %inc146, i32* %k, align 4, !tbaa !8
  br label %for.cond.108

for.end.147:                                      ; preds = %for.cond.108
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.147, %for.end.106, %for.end.65, %for.end
  %75 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #3
  %76 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* %S, i16 signext %Ncr, i16 signext %bcr, i16* %erp, i16* %drp) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %Ncr.addr = alloca i16, align 2
  %bcr.addr = alloca i16, align 2
  %erp.addr = alloca i16*, align 8
  %drp.addr = alloca i16*, align 8
  %ltmp = alloca i64, align 8
  %k = alloca i32, align 4
  %brp = alloca i16, align 2
  %drpp = alloca i16, align 2
  %Nr = alloca i16, align 2
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  store i16 %Ncr, i16* %Ncr.addr, align 2, !tbaa !6
  store i16 %bcr, i16* %bcr.addr, align 2, !tbaa !6
  store i16* %erp, i16** %erp.addr, align 8, !tbaa !2
  store i16* %drp, i16** %drp.addr, align 8, !tbaa !2
  %0 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i16* %brp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #3
  %3 = bitcast i16* %drpp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #3
  %4 = bitcast i16* %Nr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #3
  %5 = load i16, i16* %Ncr.addr, align 2, !tbaa !6
  %conv = sext i16 %5 to i32
  %cmp = icmp slt i32 %conv, 40
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i16, i16* %Ncr.addr, align 2, !tbaa !6
  %conv2 = sext i16 %6 to i32
  %cmp3 = icmp sgt i32 %conv2, 120
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %nrp = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %7, i32 0, i32 7
  %8 = load i16, i16* %nrp, align 2, !tbaa !12
  %conv5 = sext i16 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load i16, i16* %Ncr.addr, align 2, !tbaa !6
  %conv6 = sext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i16
  store i16 %conv7, i16* %Nr, align 2, !tbaa !6
  %10 = load i16, i16* %Nr, align 2, !tbaa !6
  %11 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %nrp8 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %11, i32 0, i32 7
  store i16 %10, i16* %nrp8, align 2, !tbaa !12
  %12 = load i16, i16* %bcr.addr, align 2, !tbaa !6
  %idxprom = sext i16 %12 to i64
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* @gsm_QLB, i32 0, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !6
  store i16 %13, i16* %brp, align 2, !tbaa !6
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32, i32* %k, align 4, !tbaa !8
  %cmp9 = icmp sle i32 %14, 39
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i16, i16* %brp, align 2, !tbaa !6
  %conv11 = sext i16 %15 to i64
  %16 = load i32, i32* %k, align 4, !tbaa !8
  %17 = load i16, i16* %Nr, align 2, !tbaa !6
  %conv12 = sext i16 %17 to i32
  %sub = sub nsw i32 %16, %conv12
  %idxprom13 = sext i32 %sub to i64
  %18 = load i16*, i16** %drp.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i16, i16* %18, i64 %idxprom13
  %19 = load i16, i16* %arrayidx14, align 2, !tbaa !6
  %conv15 = sext i16 %19 to i64
  %mul = mul nsw i64 %conv11, %conv15
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv16 = trunc i64 %shr to i16
  store i16 %conv16, i16* %drpp, align 2, !tbaa !6
  %20 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom17 = sext i32 %20 to i64
  %21 = load i16*, i16** %erp.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i16, i16* %21, i64 %idxprom17
  %22 = load i16, i16* %arrayidx18, align 2, !tbaa !6
  %conv19 = sext i16 %22 to i64
  %23 = load i16, i16* %drpp, align 2, !tbaa !6
  %conv20 = sext i16 %23 to i64
  %add21 = add nsw i64 %conv19, %conv20
  store i64 %add21, i64* %ltmp, align 8, !tbaa !10
  %sub22 = sub nsw i64 %add21, -32768
  %cmp23 = icmp ugt i64 %sub22, 65535
  br i1 %cmp23, label %cond.true.25, label %cond.false.30

cond.true.25:                                     ; preds = %for.body
  %24 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp26 = icmp sgt i64 %24, 0
  %cond28 = select i1 %cmp26, i32 32767, i32 -32768
  %conv29 = sext i32 %cond28 to i64
  br label %cond.end.31

cond.false.30:                                    ; preds = %for.body
  %25 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.25
  %cond32 = phi i64 [ %conv29, %cond.true.25 ], [ %25, %cond.false.30 ]
  %conv33 = trunc i64 %cond32 to i16
  %26 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom34 = sext i32 %26 to i64
  %27 = load i16*, i16** %drp.addr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i16, i16* %27, i64 %idxprom34
  store i16 %conv33, i16* %arrayidx35, align 2, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %cond.end.31
  %28 = load i32, i32* %k, align 4, !tbaa !8
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.46, %for.end
  %29 = load i32, i32* %k, align 4, !tbaa !8
  %cmp37 = icmp sle i32 %29, 119
  br i1 %cmp37, label %for.body.39, label %for.end.48

for.body.39:                                      ; preds = %for.cond.36
  %30 = load i32, i32* %k, align 4, !tbaa !8
  %add40 = add nsw i32 -80, %30
  %idxprom41 = sext i32 %add40 to i64
  %31 = load i16*, i16** %drp.addr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i16, i16* %31, i64 %idxprom41
  %32 = load i16, i16* %arrayidx42, align 2, !tbaa !6
  %33 = load i32, i32* %k, align 4, !tbaa !8
  %add43 = add nsw i32 -120, %33
  %idxprom44 = sext i32 %add43 to i64
  %34 = load i16*, i16** %drp.addr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i16, i16* %34, i64 %idxprom44
  store i16 %32, i16* %arrayidx45, align 2, !tbaa !6
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.39
  %35 = load i32, i32* %k, align 4, !tbaa !8
  %inc47 = add nsw i32 %35, 1
  store i32 %inc47, i32* %k, align 4, !tbaa !8
  br label %for.cond.36

for.end.48:                                       ; preds = %for.cond.36
  %36 = bitcast i16* %Nr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %36) #3
  %37 = bitcast i16* %drpp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %37) #3
  %38 = bitcast i16* %brp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %38) #3
  %39 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #3
  %40 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare signext i16 @gsm_norm(i64) #2

declare signext i16 @gsm_mult(i16 signext, i16 signext) #2

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
!12 = !{!13, !7, i64 630}
!13 = !{!"gsm_state", !4, i64 0, !7, i64 560, !11, i64 568, !9, i64 576, !4, i64 580, !4, i64 596, !7, i64 628, !7, i64 630, !4, i64 632, !7, i64 650, !4, i64 652, !4, i64 653}
