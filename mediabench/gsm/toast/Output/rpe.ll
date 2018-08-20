; ModuleID = 'rpe.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@gsm_NRFAC = external global [8 x i16], align 16
@gsm_FAC = external global [8 x i16], align 16

; Function Attrs: nounwind ssp uwtable
define void @Gsm_RPE_Encoding(%struct.gsm_state* %S, i16* %e, i16* %xmaxc, i16* %Mc, i16* %xMc) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %e.addr = alloca i16*, align 8
  %xmaxc.addr = alloca i16*, align 8
  %Mc.addr = alloca i16*, align 8
  %xMc.addr = alloca i16*, align 8
  %x = alloca [40 x i16], align 16
  %xM = alloca [13 x i16], align 16
  %xMp = alloca [13 x i16], align 16
  %mant = alloca i16, align 2
  %exp = alloca i16, align 2
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  store i16* %e, i16** %e.addr, align 8, !tbaa !2
  store i16* %xmaxc, i16** %xmaxc.addr, align 8, !tbaa !2
  store i16* %Mc, i16** %Mc.addr, align 8, !tbaa !2
  store i16* %xMc, i16** %xMc.addr, align 8, !tbaa !2
  %0 = bitcast [40 x i16]* %x to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #3
  %1 = bitcast [13 x i16]* %xM to i8*
  call void @llvm.lifetime.start(i64 26, i8* %1) #3
  %2 = bitcast [13 x i16]* %xMp to i8*
  call void @llvm.lifetime.start(i64 26, i8* %2) #3
  %3 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #3
  %4 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #3
  %5 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [40 x i16], [40 x i16]* %x, i32 0, i32 0
  call void @Weighting_filter(i16* %5, i16* %arraydecay)
  %arraydecay1 = getelementptr inbounds [40 x i16], [40 x i16]* %x, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [13 x i16], [13 x i16]* %xM, i32 0, i32 0
  %6 = load i16*, i16** %Mc.addr, align 8, !tbaa !2
  call void @RPE_grid_selection(i16* %arraydecay1, i16* %arraydecay2, i16* %6)
  %arraydecay3 = getelementptr inbounds [13 x i16], [13 x i16]* %xM, i32 0, i32 0
  %7 = load i16*, i16** %xMc.addr, align 8, !tbaa !2
  %8 = load i16*, i16** %xmaxc.addr, align 8, !tbaa !2
  call void @APCM_quantization(i16* %arraydecay3, i16* %7, i16* %mant, i16* %exp, i16* %8)
  %9 = load i16*, i16** %xMc.addr, align 8, !tbaa !2
  %10 = load i16, i16* %mant, align 2, !tbaa !6
  %11 = load i16, i16* %exp, align 2, !tbaa !6
  %arraydecay4 = getelementptr inbounds [13 x i16], [13 x i16]* %xMp, i32 0, i32 0
  call void @APCM_inverse_quantization(i16* %9, i16 signext %10, i16 signext %11, i16* %arraydecay4)
  %12 = load i16*, i16** %Mc.addr, align 8, !tbaa !2
  %13 = load i16, i16* %12, align 2, !tbaa !6
  %arraydecay5 = getelementptr inbounds [13 x i16], [13 x i16]* %xMp, i32 0, i32 0
  %14 = load i16*, i16** %e.addr, align 8, !tbaa !2
  call void @RPE_grid_positioning(i16 signext %13, i16* %arraydecay5, i16* %14)
  %15 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %15) #3
  %16 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #3
  %17 = bitcast [13 x i16]* %xMp to i8*
  call void @llvm.lifetime.end(i64 26, i8* %17) #3
  %18 = bitcast [13 x i16]* %xM to i8*
  call void @llvm.lifetime.end(i64 26, i8* %18) #3
  %19 = bitcast [40 x i16]* %x to i8*
  call void @llvm.lifetime.end(i64 80, i8* %19) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @Weighting_filter(i16* %e, i16* %x) #0 {
entry:
  %e.addr = alloca i16*, align 8
  %x.addr = alloca i16*, align 8
  %L_result = alloca i64, align 8
  %k = alloca i32, align 4
  store i16* %e, i16** %e.addr, align 8, !tbaa !2
  store i16* %x, i16** %x.addr, align 8, !tbaa !2
  %0 = bitcast i64* %L_result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i16, i16* %2, i64 -5
  store i16* %add.ptr, i16** %e.addr, align 8, !tbaa !2
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4, !tbaa !8
  %cmp = icmp sle i32 %3, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 4096, i64* %L_result, align 8, !tbaa !10
  %4 = load i32, i32* %k, align 4, !tbaa !8
  %add = add nsw i32 %4, 0
  %idxprom = sext i32 %add to i64
  %5 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv = sext i16 %6 to i64
  %mul = mul nsw i64 %conv, -134
  %7 = load i32, i32* %k, align 4, !tbaa !8
  %add1 = add nsw i32 %7, 1
  %idxprom2 = sext i32 %add1 to i64
  %8 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i16, i16* %8, i64 %idxprom2
  %9 = load i16, i16* %arrayidx3, align 2, !tbaa !6
  %conv4 = sext i16 %9 to i64
  %mul5 = mul nsw i64 %conv4, -374
  %add6 = add nsw i64 %mul, %mul5
  %10 = load i32, i32* %k, align 4, !tbaa !8
  %add7 = add nsw i32 %10, 3
  %idxprom8 = sext i32 %add7 to i64
  %11 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i16, i16* %11, i64 %idxprom8
  %12 = load i16, i16* %arrayidx9, align 2, !tbaa !6
  %conv10 = sext i16 %12 to i64
  %mul11 = mul nsw i64 %conv10, 2054
  %add12 = add nsw i64 %add6, %mul11
  %13 = load i32, i32* %k, align 4, !tbaa !8
  %add13 = add nsw i32 %13, 4
  %idxprom14 = sext i32 %add13 to i64
  %14 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i16, i16* %14, i64 %idxprom14
  %15 = load i16, i16* %arrayidx15, align 2, !tbaa !6
  %conv16 = sext i16 %15 to i64
  %mul17 = mul nsw i64 %conv16, 5741
  %add18 = add nsw i64 %add12, %mul17
  %16 = load i32, i32* %k, align 4, !tbaa !8
  %add19 = add nsw i32 %16, 5
  %idxprom20 = sext i32 %add19 to i64
  %17 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i16, i16* %17, i64 %idxprom20
  %18 = load i16, i16* %arrayidx21, align 2, !tbaa !6
  %conv22 = sext i16 %18 to i64
  %mul23 = mul nsw i64 %conv22, 8192
  %add24 = add nsw i64 %add18, %mul23
  %19 = load i32, i32* %k, align 4, !tbaa !8
  %add25 = add nsw i32 %19, 6
  %idxprom26 = sext i32 %add25 to i64
  %20 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i16, i16* %20, i64 %idxprom26
  %21 = load i16, i16* %arrayidx27, align 2, !tbaa !6
  %conv28 = sext i16 %21 to i64
  %mul29 = mul nsw i64 %conv28, 5741
  %add30 = add nsw i64 %add24, %mul29
  %22 = load i32, i32* %k, align 4, !tbaa !8
  %add31 = add nsw i32 %22, 7
  %idxprom32 = sext i32 %add31 to i64
  %23 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i16, i16* %23, i64 %idxprom32
  %24 = load i16, i16* %arrayidx33, align 2, !tbaa !6
  %conv34 = sext i16 %24 to i64
  %mul35 = mul nsw i64 %conv34, 2054
  %add36 = add nsw i64 %add30, %mul35
  %25 = load i32, i32* %k, align 4, !tbaa !8
  %add37 = add nsw i32 %25, 9
  %idxprom38 = sext i32 %add37 to i64
  %26 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds i16, i16* %26, i64 %idxprom38
  %27 = load i16, i16* %arrayidx39, align 2, !tbaa !6
  %conv40 = sext i16 %27 to i64
  %mul41 = mul nsw i64 %conv40, -374
  %add42 = add nsw i64 %add36, %mul41
  %28 = load i32, i32* %k, align 4, !tbaa !8
  %add43 = add nsw i32 %28, 10
  %idxprom44 = sext i32 %add43 to i64
  %29 = load i16*, i16** %e.addr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i16, i16* %29, i64 %idxprom44
  %30 = load i16, i16* %arrayidx45, align 2, !tbaa !6
  %conv46 = sext i16 %30 to i64
  %mul47 = mul nsw i64 %conv46, -134
  %add48 = add nsw i64 %add42, %mul47
  %31 = load i64, i64* %L_result, align 8, !tbaa !10
  %add49 = add nsw i64 %31, %add48
  store i64 %add49, i64* %L_result, align 8, !tbaa !10
  %32 = load i64, i64* %L_result, align 8, !tbaa !10
  %shr = ashr i64 %32, 13
  store i64 %shr, i64* %L_result, align 8, !tbaa !10
  %33 = load i64, i64* %L_result, align 8, !tbaa !10
  %cmp50 = icmp slt i64 %33, -32768
  br i1 %cmp50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.56

cond.false:                                       ; preds = %for.body
  %34 = load i64, i64* %L_result, align 8, !tbaa !10
  %cmp52 = icmp sgt i64 %34, 32767
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.false
  br label %cond.end

cond.false.55:                                    ; preds = %cond.false
  %35 = load i64, i64* %L_result, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false.55, %cond.true.54
  %cond = phi i64 [ 32767, %cond.true.54 ], [ %35, %cond.false.55 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end, %cond.true
  %cond57 = phi i64 [ -32768, %cond.true ], [ %cond, %cond.end ]
  %conv58 = trunc i64 %cond57 to i16
  %36 = load i32, i32* %k, align 4, !tbaa !8
  %idxprom59 = sext i32 %36 to i64
  %37 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx60 = getelementptr inbounds i16, i16* %37, i64 %idxprom59
  store i16 %conv58, i16* %arrayidx60, align 2, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %cond.end.56
  %38 = load i32, i32* %k, align 4, !tbaa !8
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #3
  %40 = bitcast i64* %L_result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @RPE_grid_selection(i16* %x, i16* %xM, i16* %Mc_out) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %xM.addr = alloca i16*, align 8
  %Mc_out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %L_result = alloca i64, align 8
  %L_temp = alloca i64, align 8
  %EM = alloca i64, align 8
  %Mc = alloca i16, align 2
  %L_common_0_3 = alloca i64, align 8
  store i16* %x, i16** %x.addr, align 8, !tbaa !2
  store i16* %xM, i16** %xM.addr, align 8, !tbaa !2
  store i16* %Mc_out, i16** %Mc_out.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i64* %L_result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast i64* %L_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast i64* %EM to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i16* %Mc to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #3
  %5 = bitcast i64* %L_common_0_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  store i64 0, i64* %EM, align 8, !tbaa !10
  store i16 0, i16* %Mc, align 2, !tbaa !6
  store i64 0, i64* %L_result, align 8, !tbaa !10
  %6 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 3
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv = sext i16 %7 to i32
  %shr = ashr i32 %conv, 2
  %conv1 = sext i32 %shr to i64
  store i64 %conv1, i64* %L_temp, align 8, !tbaa !10
  %8 = load i64, i64* %L_temp, align 8, !tbaa !10
  %9 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul = mul nsw i64 %8, %9
  %10 = load i64, i64* %L_result, align 8, !tbaa !10
  %add = add nsw i64 %10, %mul
  store i64 %add, i64* %L_result, align 8, !tbaa !10
  %11 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i16, i16* %11, i64 6
  %12 = load i16, i16* %arrayidx2, align 2, !tbaa !6
  %conv3 = sext i16 %12 to i32
  %shr4 = ashr i32 %conv3, 2
  %conv5 = sext i32 %shr4 to i64
  store i64 %conv5, i64* %L_temp, align 8, !tbaa !10
  %13 = load i64, i64* %L_temp, align 8, !tbaa !10
  %14 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul6 = mul nsw i64 %13, %14
  %15 = load i64, i64* %L_result, align 8, !tbaa !10
  %add7 = add nsw i64 %15, %mul6
  store i64 %add7, i64* %L_result, align 8, !tbaa !10
  %16 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i16, i16* %16, i64 9
  %17 = load i16, i16* %arrayidx8, align 2, !tbaa !6
  %conv9 = sext i16 %17 to i32
  %shr10 = ashr i32 %conv9, 2
  %conv11 = sext i32 %shr10 to i64
  store i64 %conv11, i64* %L_temp, align 8, !tbaa !10
  %18 = load i64, i64* %L_temp, align 8, !tbaa !10
  %19 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul12 = mul nsw i64 %18, %19
  %20 = load i64, i64* %L_result, align 8, !tbaa !10
  %add13 = add nsw i64 %20, %mul12
  store i64 %add13, i64* %L_result, align 8, !tbaa !10
  %21 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i16, i16* %21, i64 12
  %22 = load i16, i16* %arrayidx14, align 2, !tbaa !6
  %conv15 = sext i16 %22 to i32
  %shr16 = ashr i32 %conv15, 2
  %conv17 = sext i32 %shr16 to i64
  store i64 %conv17, i64* %L_temp, align 8, !tbaa !10
  %23 = load i64, i64* %L_temp, align 8, !tbaa !10
  %24 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul18 = mul nsw i64 %23, %24
  %25 = load i64, i64* %L_result, align 8, !tbaa !10
  %add19 = add nsw i64 %25, %mul18
  store i64 %add19, i64* %L_result, align 8, !tbaa !10
  %26 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i16, i16* %26, i64 15
  %27 = load i16, i16* %arrayidx20, align 2, !tbaa !6
  %conv21 = sext i16 %27 to i32
  %shr22 = ashr i32 %conv21, 2
  %conv23 = sext i32 %shr22 to i64
  store i64 %conv23, i64* %L_temp, align 8, !tbaa !10
  %28 = load i64, i64* %L_temp, align 8, !tbaa !10
  %29 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul24 = mul nsw i64 %28, %29
  %30 = load i64, i64* %L_result, align 8, !tbaa !10
  %add25 = add nsw i64 %30, %mul24
  store i64 %add25, i64* %L_result, align 8, !tbaa !10
  %31 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i16, i16* %31, i64 18
  %32 = load i16, i16* %arrayidx26, align 2, !tbaa !6
  %conv27 = sext i16 %32 to i32
  %shr28 = ashr i32 %conv27, 2
  %conv29 = sext i32 %shr28 to i64
  store i64 %conv29, i64* %L_temp, align 8, !tbaa !10
  %33 = load i64, i64* %L_temp, align 8, !tbaa !10
  %34 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul30 = mul nsw i64 %33, %34
  %35 = load i64, i64* %L_result, align 8, !tbaa !10
  %add31 = add nsw i64 %35, %mul30
  store i64 %add31, i64* %L_result, align 8, !tbaa !10
  %36 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds i16, i16* %36, i64 21
  %37 = load i16, i16* %arrayidx32, align 2, !tbaa !6
  %conv33 = sext i16 %37 to i32
  %shr34 = ashr i32 %conv33, 2
  %conv35 = sext i32 %shr34 to i64
  store i64 %conv35, i64* %L_temp, align 8, !tbaa !10
  %38 = load i64, i64* %L_temp, align 8, !tbaa !10
  %39 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul36 = mul nsw i64 %38, %39
  %40 = load i64, i64* %L_result, align 8, !tbaa !10
  %add37 = add nsw i64 %40, %mul36
  store i64 %add37, i64* %L_result, align 8, !tbaa !10
  %41 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i16, i16* %41, i64 24
  %42 = load i16, i16* %arrayidx38, align 2, !tbaa !6
  %conv39 = sext i16 %42 to i32
  %shr40 = ashr i32 %conv39, 2
  %conv41 = sext i32 %shr40 to i64
  store i64 %conv41, i64* %L_temp, align 8, !tbaa !10
  %43 = load i64, i64* %L_temp, align 8, !tbaa !10
  %44 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul42 = mul nsw i64 %43, %44
  %45 = load i64, i64* %L_result, align 8, !tbaa !10
  %add43 = add nsw i64 %45, %mul42
  store i64 %add43, i64* %L_result, align 8, !tbaa !10
  %46 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds i16, i16* %46, i64 27
  %47 = load i16, i16* %arrayidx44, align 2, !tbaa !6
  %conv45 = sext i16 %47 to i32
  %shr46 = ashr i32 %conv45, 2
  %conv47 = sext i32 %shr46 to i64
  store i64 %conv47, i64* %L_temp, align 8, !tbaa !10
  %48 = load i64, i64* %L_temp, align 8, !tbaa !10
  %49 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul48 = mul nsw i64 %48, %49
  %50 = load i64, i64* %L_result, align 8, !tbaa !10
  %add49 = add nsw i64 %50, %mul48
  store i64 %add49, i64* %L_result, align 8, !tbaa !10
  %51 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds i16, i16* %51, i64 30
  %52 = load i16, i16* %arrayidx50, align 2, !tbaa !6
  %conv51 = sext i16 %52 to i32
  %shr52 = ashr i32 %conv51, 2
  %conv53 = sext i32 %shr52 to i64
  store i64 %conv53, i64* %L_temp, align 8, !tbaa !10
  %53 = load i64, i64* %L_temp, align 8, !tbaa !10
  %54 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul54 = mul nsw i64 %53, %54
  %55 = load i64, i64* %L_result, align 8, !tbaa !10
  %add55 = add nsw i64 %55, %mul54
  store i64 %add55, i64* %L_result, align 8, !tbaa !10
  %56 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds i16, i16* %56, i64 33
  %57 = load i16, i16* %arrayidx56, align 2, !tbaa !6
  %conv57 = sext i16 %57 to i32
  %shr58 = ashr i32 %conv57, 2
  %conv59 = sext i32 %shr58 to i64
  store i64 %conv59, i64* %L_temp, align 8, !tbaa !10
  %58 = load i64, i64* %L_temp, align 8, !tbaa !10
  %59 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul60 = mul nsw i64 %58, %59
  %60 = load i64, i64* %L_result, align 8, !tbaa !10
  %add61 = add nsw i64 %60, %mul60
  store i64 %add61, i64* %L_result, align 8, !tbaa !10
  %61 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx62 = getelementptr inbounds i16, i16* %61, i64 36
  %62 = load i16, i16* %arrayidx62, align 2, !tbaa !6
  %conv63 = sext i16 %62 to i32
  %shr64 = ashr i32 %conv63, 2
  %conv65 = sext i32 %shr64 to i64
  store i64 %conv65, i64* %L_temp, align 8, !tbaa !10
  %63 = load i64, i64* %L_temp, align 8, !tbaa !10
  %64 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul66 = mul nsw i64 %63, %64
  %65 = load i64, i64* %L_result, align 8, !tbaa !10
  %add67 = add nsw i64 %65, %mul66
  store i64 %add67, i64* %L_result, align 8, !tbaa !10
  %66 = load i64, i64* %L_result, align 8, !tbaa !10
  store i64 %66, i64* %L_common_0_3, align 8, !tbaa !10
  %67 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx68 = getelementptr inbounds i16, i16* %67, i64 0
  %68 = load i16, i16* %arrayidx68, align 2, !tbaa !6
  %conv69 = sext i16 %68 to i32
  %shr70 = ashr i32 %conv69, 2
  %conv71 = sext i32 %shr70 to i64
  store i64 %conv71, i64* %L_temp, align 8, !tbaa !10
  %69 = load i64, i64* %L_temp, align 8, !tbaa !10
  %70 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul72 = mul nsw i64 %69, %70
  %71 = load i64, i64* %L_result, align 8, !tbaa !10
  %add73 = add nsw i64 %71, %mul72
  store i64 %add73, i64* %L_result, align 8, !tbaa !10
  %72 = load i64, i64* %L_result, align 8, !tbaa !10
  %shl = shl i64 %72, 1
  store i64 %shl, i64* %L_result, align 8, !tbaa !10
  %73 = load i64, i64* %L_result, align 8, !tbaa !10
  store i64 %73, i64* %EM, align 8, !tbaa !10
  store i64 0, i64* %L_result, align 8, !tbaa !10
  %74 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx74 = getelementptr inbounds i16, i16* %74, i64 1
  %75 = load i16, i16* %arrayidx74, align 2, !tbaa !6
  %conv75 = sext i16 %75 to i32
  %shr76 = ashr i32 %conv75, 2
  %conv77 = sext i32 %shr76 to i64
  store i64 %conv77, i64* %L_temp, align 8, !tbaa !10
  %76 = load i64, i64* %L_temp, align 8, !tbaa !10
  %77 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul78 = mul nsw i64 %76, %77
  %78 = load i64, i64* %L_result, align 8, !tbaa !10
  %add79 = add nsw i64 %78, %mul78
  store i64 %add79, i64* %L_result, align 8, !tbaa !10
  %79 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds i16, i16* %79, i64 4
  %80 = load i16, i16* %arrayidx80, align 2, !tbaa !6
  %conv81 = sext i16 %80 to i32
  %shr82 = ashr i32 %conv81, 2
  %conv83 = sext i32 %shr82 to i64
  store i64 %conv83, i64* %L_temp, align 8, !tbaa !10
  %81 = load i64, i64* %L_temp, align 8, !tbaa !10
  %82 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul84 = mul nsw i64 %81, %82
  %83 = load i64, i64* %L_result, align 8, !tbaa !10
  %add85 = add nsw i64 %83, %mul84
  store i64 %add85, i64* %L_result, align 8, !tbaa !10
  %84 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx86 = getelementptr inbounds i16, i16* %84, i64 7
  %85 = load i16, i16* %arrayidx86, align 2, !tbaa !6
  %conv87 = sext i16 %85 to i32
  %shr88 = ashr i32 %conv87, 2
  %conv89 = sext i32 %shr88 to i64
  store i64 %conv89, i64* %L_temp, align 8, !tbaa !10
  %86 = load i64, i64* %L_temp, align 8, !tbaa !10
  %87 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul90 = mul nsw i64 %86, %87
  %88 = load i64, i64* %L_result, align 8, !tbaa !10
  %add91 = add nsw i64 %88, %mul90
  store i64 %add91, i64* %L_result, align 8, !tbaa !10
  %89 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx92 = getelementptr inbounds i16, i16* %89, i64 10
  %90 = load i16, i16* %arrayidx92, align 2, !tbaa !6
  %conv93 = sext i16 %90 to i32
  %shr94 = ashr i32 %conv93, 2
  %conv95 = sext i32 %shr94 to i64
  store i64 %conv95, i64* %L_temp, align 8, !tbaa !10
  %91 = load i64, i64* %L_temp, align 8, !tbaa !10
  %92 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul96 = mul nsw i64 %91, %92
  %93 = load i64, i64* %L_result, align 8, !tbaa !10
  %add97 = add nsw i64 %93, %mul96
  store i64 %add97, i64* %L_result, align 8, !tbaa !10
  %94 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx98 = getelementptr inbounds i16, i16* %94, i64 13
  %95 = load i16, i16* %arrayidx98, align 2, !tbaa !6
  %conv99 = sext i16 %95 to i32
  %shr100 = ashr i32 %conv99, 2
  %conv101 = sext i32 %shr100 to i64
  store i64 %conv101, i64* %L_temp, align 8, !tbaa !10
  %96 = load i64, i64* %L_temp, align 8, !tbaa !10
  %97 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul102 = mul nsw i64 %96, %97
  %98 = load i64, i64* %L_result, align 8, !tbaa !10
  %add103 = add nsw i64 %98, %mul102
  store i64 %add103, i64* %L_result, align 8, !tbaa !10
  %99 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx104 = getelementptr inbounds i16, i16* %99, i64 16
  %100 = load i16, i16* %arrayidx104, align 2, !tbaa !6
  %conv105 = sext i16 %100 to i32
  %shr106 = ashr i32 %conv105, 2
  %conv107 = sext i32 %shr106 to i64
  store i64 %conv107, i64* %L_temp, align 8, !tbaa !10
  %101 = load i64, i64* %L_temp, align 8, !tbaa !10
  %102 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul108 = mul nsw i64 %101, %102
  %103 = load i64, i64* %L_result, align 8, !tbaa !10
  %add109 = add nsw i64 %103, %mul108
  store i64 %add109, i64* %L_result, align 8, !tbaa !10
  %104 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx110 = getelementptr inbounds i16, i16* %104, i64 19
  %105 = load i16, i16* %arrayidx110, align 2, !tbaa !6
  %conv111 = sext i16 %105 to i32
  %shr112 = ashr i32 %conv111, 2
  %conv113 = sext i32 %shr112 to i64
  store i64 %conv113, i64* %L_temp, align 8, !tbaa !10
  %106 = load i64, i64* %L_temp, align 8, !tbaa !10
  %107 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul114 = mul nsw i64 %106, %107
  %108 = load i64, i64* %L_result, align 8, !tbaa !10
  %add115 = add nsw i64 %108, %mul114
  store i64 %add115, i64* %L_result, align 8, !tbaa !10
  %109 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx116 = getelementptr inbounds i16, i16* %109, i64 22
  %110 = load i16, i16* %arrayidx116, align 2, !tbaa !6
  %conv117 = sext i16 %110 to i32
  %shr118 = ashr i32 %conv117, 2
  %conv119 = sext i32 %shr118 to i64
  store i64 %conv119, i64* %L_temp, align 8, !tbaa !10
  %111 = load i64, i64* %L_temp, align 8, !tbaa !10
  %112 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul120 = mul nsw i64 %111, %112
  %113 = load i64, i64* %L_result, align 8, !tbaa !10
  %add121 = add nsw i64 %113, %mul120
  store i64 %add121, i64* %L_result, align 8, !tbaa !10
  %114 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds i16, i16* %114, i64 25
  %115 = load i16, i16* %arrayidx122, align 2, !tbaa !6
  %conv123 = sext i16 %115 to i32
  %shr124 = ashr i32 %conv123, 2
  %conv125 = sext i32 %shr124 to i64
  store i64 %conv125, i64* %L_temp, align 8, !tbaa !10
  %116 = load i64, i64* %L_temp, align 8, !tbaa !10
  %117 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul126 = mul nsw i64 %116, %117
  %118 = load i64, i64* %L_result, align 8, !tbaa !10
  %add127 = add nsw i64 %118, %mul126
  store i64 %add127, i64* %L_result, align 8, !tbaa !10
  %119 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx128 = getelementptr inbounds i16, i16* %119, i64 28
  %120 = load i16, i16* %arrayidx128, align 2, !tbaa !6
  %conv129 = sext i16 %120 to i32
  %shr130 = ashr i32 %conv129, 2
  %conv131 = sext i32 %shr130 to i64
  store i64 %conv131, i64* %L_temp, align 8, !tbaa !10
  %121 = load i64, i64* %L_temp, align 8, !tbaa !10
  %122 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul132 = mul nsw i64 %121, %122
  %123 = load i64, i64* %L_result, align 8, !tbaa !10
  %add133 = add nsw i64 %123, %mul132
  store i64 %add133, i64* %L_result, align 8, !tbaa !10
  %124 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx134 = getelementptr inbounds i16, i16* %124, i64 31
  %125 = load i16, i16* %arrayidx134, align 2, !tbaa !6
  %conv135 = sext i16 %125 to i32
  %shr136 = ashr i32 %conv135, 2
  %conv137 = sext i32 %shr136 to i64
  store i64 %conv137, i64* %L_temp, align 8, !tbaa !10
  %126 = load i64, i64* %L_temp, align 8, !tbaa !10
  %127 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul138 = mul nsw i64 %126, %127
  %128 = load i64, i64* %L_result, align 8, !tbaa !10
  %add139 = add nsw i64 %128, %mul138
  store i64 %add139, i64* %L_result, align 8, !tbaa !10
  %129 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx140 = getelementptr inbounds i16, i16* %129, i64 34
  %130 = load i16, i16* %arrayidx140, align 2, !tbaa !6
  %conv141 = sext i16 %130 to i32
  %shr142 = ashr i32 %conv141, 2
  %conv143 = sext i32 %shr142 to i64
  store i64 %conv143, i64* %L_temp, align 8, !tbaa !10
  %131 = load i64, i64* %L_temp, align 8, !tbaa !10
  %132 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul144 = mul nsw i64 %131, %132
  %133 = load i64, i64* %L_result, align 8, !tbaa !10
  %add145 = add nsw i64 %133, %mul144
  store i64 %add145, i64* %L_result, align 8, !tbaa !10
  %134 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx146 = getelementptr inbounds i16, i16* %134, i64 37
  %135 = load i16, i16* %arrayidx146, align 2, !tbaa !6
  %conv147 = sext i16 %135 to i32
  %shr148 = ashr i32 %conv147, 2
  %conv149 = sext i32 %shr148 to i64
  store i64 %conv149, i64* %L_temp, align 8, !tbaa !10
  %136 = load i64, i64* %L_temp, align 8, !tbaa !10
  %137 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul150 = mul nsw i64 %136, %137
  %138 = load i64, i64* %L_result, align 8, !tbaa !10
  %add151 = add nsw i64 %138, %mul150
  store i64 %add151, i64* %L_result, align 8, !tbaa !10
  %139 = load i64, i64* %L_result, align 8, !tbaa !10
  %shl152 = shl i64 %139, 1
  store i64 %shl152, i64* %L_result, align 8, !tbaa !10
  %140 = load i64, i64* %L_result, align 8, !tbaa !10
  %141 = load i64, i64* %EM, align 8, !tbaa !10
  %cmp = icmp sgt i64 %140, %141
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 1, i16* %Mc, align 2, !tbaa !6
  %142 = load i64, i64* %L_result, align 8, !tbaa !10
  store i64 %142, i64* %EM, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %L_result, align 8, !tbaa !10
  %143 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx154 = getelementptr inbounds i16, i16* %143, i64 2
  %144 = load i16, i16* %arrayidx154, align 2, !tbaa !6
  %conv155 = sext i16 %144 to i32
  %shr156 = ashr i32 %conv155, 2
  %conv157 = sext i32 %shr156 to i64
  store i64 %conv157, i64* %L_temp, align 8, !tbaa !10
  %145 = load i64, i64* %L_temp, align 8, !tbaa !10
  %146 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul158 = mul nsw i64 %145, %146
  %147 = load i64, i64* %L_result, align 8, !tbaa !10
  %add159 = add nsw i64 %147, %mul158
  store i64 %add159, i64* %L_result, align 8, !tbaa !10
  %148 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx160 = getelementptr inbounds i16, i16* %148, i64 5
  %149 = load i16, i16* %arrayidx160, align 2, !tbaa !6
  %conv161 = sext i16 %149 to i32
  %shr162 = ashr i32 %conv161, 2
  %conv163 = sext i32 %shr162 to i64
  store i64 %conv163, i64* %L_temp, align 8, !tbaa !10
  %150 = load i64, i64* %L_temp, align 8, !tbaa !10
  %151 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul164 = mul nsw i64 %150, %151
  %152 = load i64, i64* %L_result, align 8, !tbaa !10
  %add165 = add nsw i64 %152, %mul164
  store i64 %add165, i64* %L_result, align 8, !tbaa !10
  %153 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx166 = getelementptr inbounds i16, i16* %153, i64 8
  %154 = load i16, i16* %arrayidx166, align 2, !tbaa !6
  %conv167 = sext i16 %154 to i32
  %shr168 = ashr i32 %conv167, 2
  %conv169 = sext i32 %shr168 to i64
  store i64 %conv169, i64* %L_temp, align 8, !tbaa !10
  %155 = load i64, i64* %L_temp, align 8, !tbaa !10
  %156 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul170 = mul nsw i64 %155, %156
  %157 = load i64, i64* %L_result, align 8, !tbaa !10
  %add171 = add nsw i64 %157, %mul170
  store i64 %add171, i64* %L_result, align 8, !tbaa !10
  %158 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx172 = getelementptr inbounds i16, i16* %158, i64 11
  %159 = load i16, i16* %arrayidx172, align 2, !tbaa !6
  %conv173 = sext i16 %159 to i32
  %shr174 = ashr i32 %conv173, 2
  %conv175 = sext i32 %shr174 to i64
  store i64 %conv175, i64* %L_temp, align 8, !tbaa !10
  %160 = load i64, i64* %L_temp, align 8, !tbaa !10
  %161 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul176 = mul nsw i64 %160, %161
  %162 = load i64, i64* %L_result, align 8, !tbaa !10
  %add177 = add nsw i64 %162, %mul176
  store i64 %add177, i64* %L_result, align 8, !tbaa !10
  %163 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx178 = getelementptr inbounds i16, i16* %163, i64 14
  %164 = load i16, i16* %arrayidx178, align 2, !tbaa !6
  %conv179 = sext i16 %164 to i32
  %shr180 = ashr i32 %conv179, 2
  %conv181 = sext i32 %shr180 to i64
  store i64 %conv181, i64* %L_temp, align 8, !tbaa !10
  %165 = load i64, i64* %L_temp, align 8, !tbaa !10
  %166 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul182 = mul nsw i64 %165, %166
  %167 = load i64, i64* %L_result, align 8, !tbaa !10
  %add183 = add nsw i64 %167, %mul182
  store i64 %add183, i64* %L_result, align 8, !tbaa !10
  %168 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx184 = getelementptr inbounds i16, i16* %168, i64 17
  %169 = load i16, i16* %arrayidx184, align 2, !tbaa !6
  %conv185 = sext i16 %169 to i32
  %shr186 = ashr i32 %conv185, 2
  %conv187 = sext i32 %shr186 to i64
  store i64 %conv187, i64* %L_temp, align 8, !tbaa !10
  %170 = load i64, i64* %L_temp, align 8, !tbaa !10
  %171 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul188 = mul nsw i64 %170, %171
  %172 = load i64, i64* %L_result, align 8, !tbaa !10
  %add189 = add nsw i64 %172, %mul188
  store i64 %add189, i64* %L_result, align 8, !tbaa !10
  %173 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx190 = getelementptr inbounds i16, i16* %173, i64 20
  %174 = load i16, i16* %arrayidx190, align 2, !tbaa !6
  %conv191 = sext i16 %174 to i32
  %shr192 = ashr i32 %conv191, 2
  %conv193 = sext i32 %shr192 to i64
  store i64 %conv193, i64* %L_temp, align 8, !tbaa !10
  %175 = load i64, i64* %L_temp, align 8, !tbaa !10
  %176 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul194 = mul nsw i64 %175, %176
  %177 = load i64, i64* %L_result, align 8, !tbaa !10
  %add195 = add nsw i64 %177, %mul194
  store i64 %add195, i64* %L_result, align 8, !tbaa !10
  %178 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx196 = getelementptr inbounds i16, i16* %178, i64 23
  %179 = load i16, i16* %arrayidx196, align 2, !tbaa !6
  %conv197 = sext i16 %179 to i32
  %shr198 = ashr i32 %conv197, 2
  %conv199 = sext i32 %shr198 to i64
  store i64 %conv199, i64* %L_temp, align 8, !tbaa !10
  %180 = load i64, i64* %L_temp, align 8, !tbaa !10
  %181 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul200 = mul nsw i64 %180, %181
  %182 = load i64, i64* %L_result, align 8, !tbaa !10
  %add201 = add nsw i64 %182, %mul200
  store i64 %add201, i64* %L_result, align 8, !tbaa !10
  %183 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx202 = getelementptr inbounds i16, i16* %183, i64 26
  %184 = load i16, i16* %arrayidx202, align 2, !tbaa !6
  %conv203 = sext i16 %184 to i32
  %shr204 = ashr i32 %conv203, 2
  %conv205 = sext i32 %shr204 to i64
  store i64 %conv205, i64* %L_temp, align 8, !tbaa !10
  %185 = load i64, i64* %L_temp, align 8, !tbaa !10
  %186 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul206 = mul nsw i64 %185, %186
  %187 = load i64, i64* %L_result, align 8, !tbaa !10
  %add207 = add nsw i64 %187, %mul206
  store i64 %add207, i64* %L_result, align 8, !tbaa !10
  %188 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx208 = getelementptr inbounds i16, i16* %188, i64 29
  %189 = load i16, i16* %arrayidx208, align 2, !tbaa !6
  %conv209 = sext i16 %189 to i32
  %shr210 = ashr i32 %conv209, 2
  %conv211 = sext i32 %shr210 to i64
  store i64 %conv211, i64* %L_temp, align 8, !tbaa !10
  %190 = load i64, i64* %L_temp, align 8, !tbaa !10
  %191 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul212 = mul nsw i64 %190, %191
  %192 = load i64, i64* %L_result, align 8, !tbaa !10
  %add213 = add nsw i64 %192, %mul212
  store i64 %add213, i64* %L_result, align 8, !tbaa !10
  %193 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx214 = getelementptr inbounds i16, i16* %193, i64 32
  %194 = load i16, i16* %arrayidx214, align 2, !tbaa !6
  %conv215 = sext i16 %194 to i32
  %shr216 = ashr i32 %conv215, 2
  %conv217 = sext i32 %shr216 to i64
  store i64 %conv217, i64* %L_temp, align 8, !tbaa !10
  %195 = load i64, i64* %L_temp, align 8, !tbaa !10
  %196 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul218 = mul nsw i64 %195, %196
  %197 = load i64, i64* %L_result, align 8, !tbaa !10
  %add219 = add nsw i64 %197, %mul218
  store i64 %add219, i64* %L_result, align 8, !tbaa !10
  %198 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx220 = getelementptr inbounds i16, i16* %198, i64 35
  %199 = load i16, i16* %arrayidx220, align 2, !tbaa !6
  %conv221 = sext i16 %199 to i32
  %shr222 = ashr i32 %conv221, 2
  %conv223 = sext i32 %shr222 to i64
  store i64 %conv223, i64* %L_temp, align 8, !tbaa !10
  %200 = load i64, i64* %L_temp, align 8, !tbaa !10
  %201 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul224 = mul nsw i64 %200, %201
  %202 = load i64, i64* %L_result, align 8, !tbaa !10
  %add225 = add nsw i64 %202, %mul224
  store i64 %add225, i64* %L_result, align 8, !tbaa !10
  %203 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx226 = getelementptr inbounds i16, i16* %203, i64 38
  %204 = load i16, i16* %arrayidx226, align 2, !tbaa !6
  %conv227 = sext i16 %204 to i32
  %shr228 = ashr i32 %conv227, 2
  %conv229 = sext i32 %shr228 to i64
  store i64 %conv229, i64* %L_temp, align 8, !tbaa !10
  %205 = load i64, i64* %L_temp, align 8, !tbaa !10
  %206 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul230 = mul nsw i64 %205, %206
  %207 = load i64, i64* %L_result, align 8, !tbaa !10
  %add231 = add nsw i64 %207, %mul230
  store i64 %add231, i64* %L_result, align 8, !tbaa !10
  %208 = load i64, i64* %L_result, align 8, !tbaa !10
  %shl232 = shl i64 %208, 1
  store i64 %shl232, i64* %L_result, align 8, !tbaa !10
  %209 = load i64, i64* %L_result, align 8, !tbaa !10
  %210 = load i64, i64* %EM, align 8, !tbaa !10
  %cmp233 = icmp sgt i64 %209, %210
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %if.end
  store i16 2, i16* %Mc, align 2, !tbaa !6
  %211 = load i64, i64* %L_result, align 8, !tbaa !10
  store i64 %211, i64* %EM, align 8, !tbaa !10
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.235, %if.end
  %212 = load i64, i64* %L_common_0_3, align 8, !tbaa !10
  store i64 %212, i64* %L_result, align 8, !tbaa !10
  %213 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx237 = getelementptr inbounds i16, i16* %213, i64 39
  %214 = load i16, i16* %arrayidx237, align 2, !tbaa !6
  %conv238 = sext i16 %214 to i32
  %shr239 = ashr i32 %conv238, 2
  %conv240 = sext i32 %shr239 to i64
  store i64 %conv240, i64* %L_temp, align 8, !tbaa !10
  %215 = load i64, i64* %L_temp, align 8, !tbaa !10
  %216 = load i64, i64* %L_temp, align 8, !tbaa !10
  %mul241 = mul nsw i64 %215, %216
  %217 = load i64, i64* %L_result, align 8, !tbaa !10
  %add242 = add nsw i64 %217, %mul241
  store i64 %add242, i64* %L_result, align 8, !tbaa !10
  %218 = load i64, i64* %L_result, align 8, !tbaa !10
  %shl243 = shl i64 %218, 1
  store i64 %shl243, i64* %L_result, align 8, !tbaa !10
  %219 = load i64, i64* %L_result, align 8, !tbaa !10
  %220 = load i64, i64* %EM, align 8, !tbaa !10
  %cmp244 = icmp sgt i64 %219, %220
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.end.236
  store i16 3, i16* %Mc, align 2, !tbaa !6
  %221 = load i64, i64* %L_result, align 8, !tbaa !10
  store i64 %221, i64* %EM, align 8, !tbaa !10
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.246, %if.end.236
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.247
  %222 = load i32, i32* %i, align 4, !tbaa !8
  %cmp248 = icmp sle i32 %222, 12
  br i1 %cmp248, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %223 = load i16, i16* %Mc, align 2, !tbaa !6
  %conv250 = sext i16 %223 to i32
  %224 = load i32, i32* %i, align 4, !tbaa !8
  %mul251 = mul nsw i32 3, %224
  %add252 = add nsw i32 %conv250, %mul251
  %idxprom = sext i32 %add252 to i64
  %225 = load i16*, i16** %x.addr, align 8, !tbaa !2
  %arrayidx253 = getelementptr inbounds i16, i16* %225, i64 %idxprom
  %226 = load i16, i16* %arrayidx253, align 2, !tbaa !6
  %227 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom254 = sext i32 %227 to i64
  %228 = load i16*, i16** %xM.addr, align 8, !tbaa !2
  %arrayidx255 = getelementptr inbounds i16, i16* %228, i64 %idxprom254
  store i16 %226, i16* %arrayidx255, align 2, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %229 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %229, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %230 = load i16, i16* %Mc, align 2, !tbaa !6
  %231 = load i16*, i16** %Mc_out.addr, align 8, !tbaa !2
  store i16 %230, i16* %231, align 2, !tbaa !6
  %232 = bitcast i64* %L_common_0_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #3
  %233 = bitcast i16* %Mc to i8*
  call void @llvm.lifetime.end(i64 2, i8* %233) #3
  %234 = bitcast i64* %EM to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #3
  %235 = bitcast i64* %L_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #3
  %236 = bitcast i64* %L_result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #3
  %237 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @APCM_quantization(i16* %xM, i16* %xMc, i16* %mant_out, i16* %exp_out, i16* %xmaxc_out) #0 {
entry:
  %xM.addr = alloca i16*, align 8
  %xMc.addr = alloca i16*, align 8
  %mant_out.addr = alloca i16*, align 8
  %exp_out.addr = alloca i16*, align 8
  %xmaxc_out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %itest = alloca i32, align 4
  %xmax = alloca i16, align 2
  %xmaxc = alloca i16, align 2
  %temp = alloca i16, align 2
  %temp1 = alloca i16, align 2
  %temp2 = alloca i16, align 2
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  store i16* %xM, i16** %xM.addr, align 8, !tbaa !2
  store i16* %xMc, i16** %xMc.addr, align 8, !tbaa !2
  store i16* %mant_out, i16** %mant_out.addr, align 8, !tbaa !2
  store i16* %exp_out, i16** %exp_out.addr, align 8, !tbaa !2
  store i16* %xmaxc_out, i16** %xmaxc_out.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %itest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i16* %xmax to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #3
  %3 = bitcast i16* %xmaxc to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #3
  %4 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #3
  %5 = bitcast i16* %temp1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #3
  %6 = bitcast i16* %temp2 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #3
  %7 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #3
  %8 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #3
  store i16 0, i16* %xmax, align 2, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !8
  %cmp = icmp sle i32 %9, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %10 to i64
  %11 = load i16*, i16** %xM.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2, !tbaa !6
  store i16 %12, i16* %temp, align 2, !tbaa !6
  %13 = load i16, i16* %temp, align 2, !tbaa !6
  %conv = sext i16 %13 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %cond.true, label %cond.false.8

cond.true:                                        ; preds = %for.body
  %14 = load i16, i16* %temp, align 2, !tbaa !6
  %conv3 = sext i16 %14 to i32
  %cmp4 = icmp eq i32 %conv3, -32768
  br i1 %cmp4, label %cond.true.6, label %cond.false

cond.true.6:                                      ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %15 = load i16, i16* %temp, align 2, !tbaa !6
  %conv7 = sext i16 %15 to i32
  %sub = sub nsw i32 0, %conv7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.6
  %cond = phi i32 [ 32767, %cond.true.6 ], [ %sub, %cond.false ]
  br label %cond.end.10

cond.false.8:                                     ; preds = %for.body
  %16 = load i16, i16* %temp, align 2, !tbaa !6
  %conv9 = sext i16 %16 to i32
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.end
  %cond11 = phi i32 [ %cond, %cond.end ], [ %conv9, %cond.false.8 ]
  %conv12 = trunc i32 %cond11 to i16
  store i16 %conv12, i16* %temp, align 2, !tbaa !6
  %17 = load i16, i16* %temp, align 2, !tbaa !6
  %conv13 = sext i16 %17 to i32
  %18 = load i16, i16* %xmax, align 2, !tbaa !6
  %conv14 = sext i16 %18 to i32
  %cmp15 = icmp sgt i32 %conv13, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.10
  %19 = load i16, i16* %temp, align 2, !tbaa !6
  store i16 %19, i16* %xmax, align 2, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %exp, align 2, !tbaa !6
  %21 = load i16, i16* %xmax, align 2, !tbaa !6
  %conv17 = sext i16 %21 to i32
  %shr = ashr i32 %conv17, 9
  %conv18 = trunc i32 %shr to i16
  store i16 %conv18, i16* %temp, align 2, !tbaa !6
  store i32 0, i32* %itest, align 4, !tbaa !8
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.34, %for.end
  %22 = load i32, i32* %i, align 4, !tbaa !8
  %cmp20 = icmp sle i32 %22, 5
  br i1 %cmp20, label %for.body.22, label %for.end.36

for.body.22:                                      ; preds = %for.cond.19
  %23 = load i16, i16* %temp, align 2, !tbaa !6
  %conv23 = sext i16 %23 to i32
  %cmp24 = icmp sle i32 %conv23, 0
  %conv25 = zext i1 %cmp24 to i32
  %24 = load i32, i32* %itest, align 4, !tbaa !8
  %or = or i32 %24, %conv25
  store i32 %or, i32* %itest, align 4, !tbaa !8
  %25 = load i16, i16* %temp, align 2, !tbaa !6
  %conv26 = sext i16 %25 to i32
  %shr27 = ashr i32 %conv26, 1
  %conv28 = trunc i32 %shr27 to i16
  store i16 %conv28, i16* %temp, align 2, !tbaa !6
  %26 = load i32, i32* %itest, align 4, !tbaa !8
  %cmp29 = icmp eq i32 %26, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %for.body.22
  %27 = load i16, i16* %exp, align 2, !tbaa !6
  %inc32 = add i16 %27, 1
  store i16 %inc32, i16* %exp, align 2, !tbaa !6
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %for.body.22
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %28 = load i32, i32* %i, align 4, !tbaa !8
  %inc35 = add nsw i32 %28, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !8
  br label %for.cond.19

for.end.36:                                       ; preds = %for.cond.19
  %29 = load i16, i16* %exp, align 2, !tbaa !6
  %conv37 = sext i16 %29 to i32
  %add = add nsw i32 %conv37, 5
  %conv38 = trunc i32 %add to i16
  store i16 %conv38, i16* %temp, align 2, !tbaa !6
  %30 = load i16, i16* %xmax, align 2, !tbaa !6
  %conv39 = sext i16 %30 to i32
  %31 = load i16, i16* %temp, align 2, !tbaa !6
  %conv40 = sext i16 %31 to i32
  %shr41 = ashr i32 %conv39, %conv40
  %conv42 = trunc i32 %shr41 to i16
  %32 = load i16, i16* %exp, align 2, !tbaa !6
  %conv43 = sext i16 %32 to i32
  %shl = shl i32 %conv43, 3
  %conv44 = trunc i32 %shl to i16
  %call = call signext i16 @gsm_add(i16 signext %conv42, i16 signext %conv44)
  store i16 %call, i16* %xmaxc, align 2, !tbaa !6
  %33 = load i16, i16* %xmaxc, align 2, !tbaa !6
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 signext %33, i16* %exp, i16* %mant)
  %34 = load i16, i16* %exp, align 2, !tbaa !6
  %conv45 = sext i16 %34 to i32
  %sub46 = sub nsw i32 6, %conv45
  %conv47 = trunc i32 %sub46 to i16
  store i16 %conv47, i16* %temp1, align 2, !tbaa !6
  %35 = load i16, i16* %mant, align 2, !tbaa !6
  %idxprom48 = sext i16 %35 to i64
  %arrayidx49 = getelementptr inbounds [8 x i16], [8 x i16]* @gsm_NRFAC, i32 0, i64 %idxprom48
  %36 = load i16, i16* %arrayidx49, align 2, !tbaa !6
  store i16 %36, i16* %temp2, align 2, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.72, %for.end.36
  %37 = load i32, i32* %i, align 4, !tbaa !8
  %cmp51 = icmp sle i32 %37, 12
  br i1 %cmp51, label %for.body.53, label %for.end.74

for.body.53:                                      ; preds = %for.cond.50
  %38 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom54 = sext i32 %38 to i64
  %39 = load i16*, i16** %xM.addr, align 8, !tbaa !2
  %arrayidx55 = getelementptr inbounds i16, i16* %39, i64 %idxprom54
  %40 = load i16, i16* %arrayidx55, align 2, !tbaa !6
  %conv56 = sext i16 %40 to i32
  %41 = load i16, i16* %temp1, align 2, !tbaa !6
  %conv57 = sext i16 %41 to i32
  %shl58 = shl i32 %conv56, %conv57
  %conv59 = trunc i32 %shl58 to i16
  store i16 %conv59, i16* %temp, align 2, !tbaa !6
  %42 = load i16, i16* %temp, align 2, !tbaa !6
  %conv60 = sext i16 %42 to i64
  %43 = load i16, i16* %temp2, align 2, !tbaa !6
  %conv61 = sext i16 %43 to i64
  %mul = mul nsw i64 %conv60, %conv61
  %shr62 = ashr i64 %mul, 15
  %conv63 = trunc i64 %shr62 to i16
  store i16 %conv63, i16* %temp, align 2, !tbaa !6
  %44 = load i16, i16* %temp, align 2, !tbaa !6
  %conv64 = sext i16 %44 to i32
  %shr65 = ashr i32 %conv64, 12
  %conv66 = trunc i32 %shr65 to i16
  store i16 %conv66, i16* %temp, align 2, !tbaa !6
  %45 = load i16, i16* %temp, align 2, !tbaa !6
  %conv67 = sext i16 %45 to i32
  %add68 = add nsw i32 %conv67, 4
  %conv69 = trunc i32 %add68 to i16
  %46 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom70 = sext i32 %46 to i64
  %47 = load i16*, i16** %xMc.addr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds i16, i16* %47, i64 %idxprom70
  store i16 %conv69, i16* %arrayidx71, align 2, !tbaa !6
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.53
  %48 = load i32, i32* %i, align 4, !tbaa !8
  %inc73 = add nsw i32 %48, 1
  store i32 %inc73, i32* %i, align 4, !tbaa !8
  br label %for.cond.50

for.end.74:                                       ; preds = %for.cond.50
  %49 = load i16, i16* %mant, align 2, !tbaa !6
  %50 = load i16*, i16** %mant_out.addr, align 8, !tbaa !2
  store i16 %49, i16* %50, align 2, !tbaa !6
  %51 = load i16, i16* %exp, align 2, !tbaa !6
  %52 = load i16*, i16** %exp_out.addr, align 8, !tbaa !2
  store i16 %51, i16* %52, align 2, !tbaa !6
  %53 = load i16, i16* %xmaxc, align 2, !tbaa !6
  %54 = load i16*, i16** %xmaxc_out.addr, align 8, !tbaa !2
  store i16 %53, i16* %54, align 2, !tbaa !6
  %55 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.end(i64 2, i8* %55) #3
  %56 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %56) #3
  %57 = bitcast i16* %temp2 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %57) #3
  %58 = bitcast i16* %temp1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %58) #3
  %59 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %59) #3
  %60 = bitcast i16* %xmaxc to i8*
  call void @llvm.lifetime.end(i64 2, i8* %60) #3
  %61 = bitcast i16* %xmax to i8*
  call void @llvm.lifetime.end(i64 2, i8* %61) #3
  %62 = bitcast i32* %itest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #3
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @APCM_inverse_quantization(i16* %xMc, i16 signext %mant, i16 signext %exp, i16* %xMp) #0 {
entry:
  %xMc.addr = alloca i16*, align 8
  %mant.addr = alloca i16, align 2
  %exp.addr = alloca i16, align 2
  %xMp.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %temp = alloca i16, align 2
  %temp1 = alloca i16, align 2
  %temp2 = alloca i16, align 2
  %temp3 = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store i16* %xMc, i16** %xMc.addr, align 8, !tbaa !2
  store i16 %mant, i16* %mant.addr, align 2, !tbaa !6
  store i16 %exp, i16* %exp.addr, align 2, !tbaa !6
  store i16* %xMp, i16** %xMp.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #3
  %2 = bitcast i16* %temp1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #3
  %3 = bitcast i16* %temp2 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #3
  %4 = bitcast i16* %temp3 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #3
  %5 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load i16, i16* %mant.addr, align 2, !tbaa !6
  %idxprom = sext i16 %6 to i64
  %arrayidx = getelementptr inbounds [8 x i16], [8 x i16]* @gsm_FAC, i32 0, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !6
  store i16 %7, i16* %temp1, align 2, !tbaa !6
  %8 = load i16, i16* %exp.addr, align 2, !tbaa !6
  %call = call signext i16 @gsm_sub(i16 signext 6, i16 signext %8)
  store i16 %call, i16* %temp2, align 2, !tbaa !6
  %9 = load i16, i16* %temp2, align 2, !tbaa !6
  %call1 = call signext i16 @gsm_sub(i16 signext %9, i16 signext 1)
  %conv = sext i16 %call1 to i32
  %call2 = call signext i16 @gsm_asl(i16 signext 1, i32 %conv)
  store i16 %call2, i16* %temp3, align 2, !tbaa !6
  store i32 13, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4, !tbaa !8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i16*, i16** %xMc.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr, i16** %xMc.addr, align 8, !tbaa !2
  %12 = load i16, i16* %11, align 2, !tbaa !6
  %conv3 = sext i16 %12 to i32
  %shl = shl i32 %conv3, 1
  %sub = sub nsw i32 %shl, 7
  %conv4 = trunc i32 %sub to i16
  store i16 %conv4, i16* %temp, align 2, !tbaa !6
  %13 = load i16, i16* %temp, align 2, !tbaa !6
  %conv5 = sext i16 %13 to i32
  %shl6 = shl i32 %conv5, 12
  %conv7 = trunc i32 %shl6 to i16
  store i16 %conv7, i16* %temp, align 2, !tbaa !6
  %14 = load i16, i16* %temp1, align 2, !tbaa !6
  %conv8 = sext i16 %14 to i64
  %15 = load i16, i16* %temp, align 2, !tbaa !6
  %conv9 = sext i16 %15 to i64
  %mul = mul nsw i64 %conv8, %conv9
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv10 = trunc i64 %shr to i16
  store i16 %conv10, i16* %temp, align 2, !tbaa !6
  %16 = load i16, i16* %temp, align 2, !tbaa !6
  %conv11 = sext i16 %16 to i64
  %17 = load i16, i16* %temp3, align 2, !tbaa !6
  %conv12 = sext i16 %17 to i64
  %add13 = add nsw i64 %conv11, %conv12
  store i64 %add13, i64* %ltmp, align 8, !tbaa !10
  %sub14 = sub nsw i64 %add13, -32768
  %cmp = icmp ugt i64 %sub14, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %18 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp16 = icmp sgt i64 %18, 0
  %cond = select i1 %cmp16, i32 32767, i32 -32768
  %conv18 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %19 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i64 [ %conv18, %cond.true ], [ %19, %cond.false ]
  %conv20 = trunc i64 %cond19 to i16
  store i16 %conv20, i16* %temp, align 2, !tbaa !6
  %20 = load i16, i16* %temp, align 2, !tbaa !6
  %21 = load i16, i16* %temp2, align 2, !tbaa !6
  %conv21 = sext i16 %21 to i32
  %call22 = call signext i16 @gsm_asr(i16 signext %20, i32 %conv21)
  %22 = load i16*, i16** %xMp.addr, align 8, !tbaa !2
  %incdec.ptr23 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %incdec.ptr23, i16** %xMp.addr, align 8, !tbaa !2
  store i16 %call22, i16* %22, align 2, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #3
  %24 = bitcast i16* %temp3 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #3
  %25 = bitcast i16* %temp2 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #3
  %26 = bitcast i16* %temp1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #3
  %27 = bitcast i16* %temp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #3
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @RPE_grid_positioning(i16 signext %Mc, i16* %xMp, i16* %ep) #0 {
entry:
  %Mc.addr = alloca i16, align 2
  %xMp.addr = alloca i16*, align 8
  %ep.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16 %Mc, i16* %Mc.addr, align 2, !tbaa !6
  store i16* %xMp, i16** %xMp.addr, align 8, !tbaa !2
  store i16* %ep, i16** %ep.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  store i32 13, i32* %i, align 4, !tbaa !8
  %1 = load i16, i16* %Mc.addr, align 2, !tbaa !6
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1
    i32 1, label %sw.bb.3
    i32 0, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i16*, i16** %ep.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr, i16** %ep.addr, align 8, !tbaa !2
  store i16 0, i16* %2, align 2, !tbaa !6
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.1
  %3 = load i16*, i16** %ep.addr, align 8, !tbaa !2
  %incdec.ptr2 = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr2, i16** %ep.addr, align 8, !tbaa !2
  store i16 0, i16* %3, align 2, !tbaa !6
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %entry, %do.body
  %4 = load i16*, i16** %ep.addr, align 8, !tbaa !2
  %incdec.ptr4 = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr4, i16** %ep.addr, align 8, !tbaa !2
  store i16 0, i16* %4, align 2, !tbaa !6
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %sw.bb.3
  %5 = load i16*, i16** %xMp.addr, align 8, !tbaa !2
  %incdec.ptr6 = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr6, i16** %xMp.addr, align 8, !tbaa !2
  %6 = load i16, i16* %5, align 2, !tbaa !6
  %7 = load i16*, i16** %ep.addr, align 8, !tbaa !2
  %incdec.ptr7 = getelementptr inbounds i16, i16* %7, i32 1
  store i16* %incdec.ptr7, i16** %ep.addr, align 8, !tbaa !2
  store i16 %6, i16* %7, align 2, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %sw.bb.5
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4, !tbaa !8
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %9 = load i16, i16* %Mc.addr, align 2, !tbaa !6
  %inc = add i16 %9, 1
  store i16 %inc, i16* %Mc.addr, align 2, !tbaa !6
  %conv8 = sext i16 %inc to i32
  %cmp = icmp slt i32 %conv8, 4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i16*, i16** %ep.addr, align 8, !tbaa !2
  %incdec.ptr10 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %incdec.ptr10, i16** %ep.addr, align 8, !tbaa !2
  store i16 0, i16* %10, align 2, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @Gsm_RPE_Decoding(%struct.gsm_state* %S, i16 signext %xmaxcr, i16 signext %Mcr, i16* %xMcr, i16* %erp) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %xmaxcr.addr = alloca i16, align 2
  %Mcr.addr = alloca i16, align 2
  %xMcr.addr = alloca i16*, align 8
  %erp.addr = alloca i16*, align 8
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  %xMp = alloca [13 x i16], align 16
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  store i16 %xmaxcr, i16* %xmaxcr.addr, align 2, !tbaa !6
  store i16 %Mcr, i16* %Mcr.addr, align 2, !tbaa !6
  store i16* %xMcr, i16** %xMcr.addr, align 8, !tbaa !2
  store i16* %erp, i16** %erp.addr, align 8, !tbaa !2
  %0 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #3
  %1 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #3
  %2 = bitcast [13 x i16]* %xMp to i8*
  call void @llvm.lifetime.start(i64 26, i8* %2) #3
  %3 = load i16, i16* %xmaxcr.addr, align 2, !tbaa !6
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 signext %3, i16* %exp, i16* %mant)
  %4 = load i16*, i16** %xMcr.addr, align 8, !tbaa !2
  %5 = load i16, i16* %mant, align 2, !tbaa !6
  %6 = load i16, i16* %exp, align 2, !tbaa !6
  %arraydecay = getelementptr inbounds [13 x i16], [13 x i16]* %xMp, i32 0, i32 0
  call void @APCM_inverse_quantization(i16* %4, i16 signext %5, i16 signext %6, i16* %arraydecay)
  %7 = load i16, i16* %Mcr.addr, align 2, !tbaa !6
  %arraydecay1 = getelementptr inbounds [13 x i16], [13 x i16]* %xMp, i32 0, i32 0
  %8 = load i16*, i16** %erp.addr, align 8, !tbaa !2
  call void @RPE_grid_positioning(i16 signext %7, i16* %arraydecay1, i16* %8)
  %9 = bitcast [13 x i16]* %xMp to i8*
  call void @llvm.lifetime.end(i64 26, i8* %9) #3
  %10 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.end(i64 2, i8* %10) #3
  %11 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %11) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @APCM_quantization_xmaxc_to_exp_mant(i16 signext %xmaxc, i16* %exp_out, i16* %mant_out) #0 {
entry:
  %xmaxc.addr = alloca i16, align 2
  %exp_out.addr = alloca i16*, align 8
  %mant_out.addr = alloca i16*, align 8
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  store i16 %xmaxc, i16* %xmaxc.addr, align 2, !tbaa !6
  store i16* %exp_out, i16** %exp_out.addr, align 8, !tbaa !2
  store i16* %mant_out, i16** %mant_out.addr, align 8, !tbaa !2
  %0 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #3
  %1 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #3
  store i16 0, i16* %exp, align 2, !tbaa !6
  %2 = load i16, i16* %xmaxc.addr, align 2, !tbaa !6
  %conv = sext i16 %2 to i32
  %cmp = icmp sgt i32 %conv, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i16, i16* %xmaxc.addr, align 2, !tbaa !6
  %conv2 = sext i16 %3 to i32
  %shr = ashr i32 %conv2, 3
  %sub = sub nsw i32 %shr, 1
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, i16* %exp, align 2, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i16, i16* %xmaxc.addr, align 2, !tbaa !6
  %conv4 = sext i16 %4 to i32
  %5 = load i16, i16* %exp, align 2, !tbaa !6
  %conv5 = sext i16 %5 to i32
  %shl = shl i32 %conv5, 3
  %sub6 = sub nsw i32 %conv4, %shl
  %conv7 = trunc i32 %sub6 to i16
  store i16 %conv7, i16* %mant, align 2, !tbaa !6
  %6 = load i16, i16* %mant, align 2, !tbaa !6
  %conv8 = sext i16 %6 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  store i16 -4, i16* %exp, align 2, !tbaa !6
  store i16 7, i16* %mant, align 2, !tbaa !6
  br label %if.end.21

if.else:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %7 = load i16, i16* %mant, align 2, !tbaa !6
  %conv12 = sext i16 %7 to i32
  %cmp13 = icmp sle i32 %conv12, 7
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i16, i16* %mant, align 2, !tbaa !6
  %conv15 = sext i16 %8 to i32
  %shl16 = shl i32 %conv15, 1
  %or = or i32 %shl16, 1
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, i16* %mant, align 2, !tbaa !6
  %9 = load i16, i16* %exp, align 2, !tbaa !6
  %dec = add i16 %9, -1
  store i16 %dec, i16* %exp, align 2, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i16, i16* %mant, align 2, !tbaa !6
  %conv18 = sext i16 %10 to i32
  %sub19 = sub nsw i32 %conv18, 8
  %conv20 = trunc i32 %sub19 to i16
  store i16 %conv20, i16* %mant, align 2, !tbaa !6
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %if.then.11
  %11 = load i16, i16* %exp, align 2, !tbaa !6
  %12 = load i16*, i16** %exp_out.addr, align 8, !tbaa !2
  store i16 %11, i16* %12, align 2, !tbaa !6
  %13 = load i16, i16* %mant, align 2, !tbaa !6
  %14 = load i16*, i16** %mant_out.addr, align 8, !tbaa !2
  store i16 %13, i16* %14, align 2, !tbaa !6
  %15 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.end(i64 2, i8* %15) #3
  %16 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #3
  ret void
}

declare signext i16 @gsm_add(i16 signext, i16 signext) #2

declare signext i16 @gsm_sub(i16 signext, i16 signext) #2

declare signext i16 @gsm_asl(i16 signext, i32) #2

declare signext i16 @gsm_asr(i16 signext, i32) #2

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
