; ModuleID = 'g721.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@qtab_721 = internal global [7 x i16] [i16 -124, i16 80, i16 178, i16 246, i16 300, i16 349, i16 400], align 2
@_dqlntab = internal global [16 x i16] [i16 -2048, i16 4, i16 135, i16 213, i16 273, i16 323, i16 373, i16 425, i16 425, i16 373, i16 323, i16 273, i16 213, i16 135, i16 4, i16 -2048], align 16
@_witab = internal global [16 x i16] [i16 -12, i16 18, i16 41, i16 64, i16 112, i16 198, i16 355, i16 1122, i16 1122, i16 355, i16 198, i16 112, i16 64, i16 41, i16 18, i16 -12], align 16
@_fitab = internal global [16 x i16] [i16 0, i16 0, i16 0, i16 512, i16 512, i16 512, i16 1536, i16 3584, i16 3584, i16 1536, i16 512, i16 512, i16 512, i16 0, i16 0, i16 0], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @g721_encoder(i32 %sl, i32 %in_coding, %struct.g72x_state* %state_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %sl.addr = alloca i32, align 4
  %in_coding.addr = alloca i32, align 4
  %state_ptr.addr = alloca %struct.g72x_state*, align 8
  %sezi = alloca i16, align 2
  %se = alloca i16, align 2
  %sez = alloca i16, align 2
  %d = alloca i16, align 2
  %sr = alloca i16, align 2
  %y = alloca i16, align 2
  %dqsez = alloca i16, align 2
  %dq = alloca i16, align 2
  %i = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store i32 %sl, i32* %sl.addr, align 4, !tbaa !2
  store i32 %in_coding, i32* %in_coding.addr, align 4, !tbaa !2
  store %struct.g72x_state* %state_ptr, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  %0 = bitcast i16* %sezi to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #3
  %1 = bitcast i16* %se to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #3
  %2 = bitcast i16* %sez to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #3
  %3 = bitcast i16* %d to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #3
  %4 = bitcast i16* %sr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #3
  %5 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #3
  %6 = bitcast i16* %dqsez to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #3
  %7 = bitcast i16* %dq to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #3
  %8 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #3
  %9 = load i32, i32* %in_coding.addr, align 4, !tbaa !2
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %10 = load i32, i32* %sl.addr, align 4, !tbaa !2
  %call = call i32 (i32, ...) bitcast (i32 (...)* @alaw2linear to i32 (i32, ...)*)(i32 %10)
  %shr = ashr i32 %call, 2
  store i32 %shr, i32* %sl.addr, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %11 = load i32, i32* %sl.addr, align 4, !tbaa !2
  %call2 = call i32 (i32, ...) bitcast (i32 (...)* @ulaw2linear to i32 (i32, ...)*)(i32 %11)
  %shr3 = ashr i32 %call2, 2
  store i32 %shr3, i32* %sl.addr, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %12 = load i32, i32* %sl.addr, align 4, !tbaa !2
  %shr5 = ashr i32 %12, 2
  store i32 %shr5, i32* %sl.addr, align 4, !tbaa !2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.4, %sw.bb.1, %sw.bb
  %13 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  %call6 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* %13)
  %conv = trunc i32 %call6 to i16
  store i16 %conv, i16* %sezi, align 2, !tbaa !8
  %14 = load i16, i16* %sezi, align 2, !tbaa !8
  %conv7 = sext i16 %14 to i32
  %shr8 = ashr i32 %conv7, 1
  %conv9 = trunc i32 %shr8 to i16
  store i16 %conv9, i16* %sez, align 2, !tbaa !8
  %15 = load i16, i16* %sezi, align 2, !tbaa !8
  %conv10 = sext i16 %15 to i32
  %16 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  %call11 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* %16)
  %add = add nsw i32 %conv10, %call11
  %shr12 = ashr i32 %add, 1
  %conv13 = trunc i32 %shr12 to i16
  store i16 %conv13, i16* %se, align 2, !tbaa !8
  %17 = load i32, i32* %sl.addr, align 4, !tbaa !2
  %18 = load i16, i16* %se, align 2, !tbaa !8
  %conv14 = sext i16 %18 to i32
  %sub = sub nsw i32 %17, %conv14
  %conv15 = trunc i32 %sub to i16
  store i16 %conv15, i16* %d, align 2, !tbaa !8
  %19 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  %call16 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* %19)
  %conv17 = trunc i32 %call16 to i16
  store i16 %conv17, i16* %y, align 2, !tbaa !8
  %20 = load i16, i16* %d, align 2, !tbaa !8
  %conv18 = sext i16 %20 to i32
  %21 = load i16, i16* %y, align 2, !tbaa !8
  %conv19 = sext i16 %21 to i32
  %call20 = call i32 (i32, i32, i16*, i32, ...) bitcast (i32 (...)* @quantize to i32 (i32, i32, i16*, i32, ...)*)(i32 %conv18, i32 %conv19, i16* getelementptr inbounds ([7 x i16], [7 x i16]* @qtab_721, i32 0, i32 0), i32 7)
  %conv21 = trunc i32 %call20 to i16
  store i16 %conv21, i16* %i, align 2, !tbaa !8
  %22 = load i16, i16* %i, align 2, !tbaa !8
  %conv22 = sext i16 %22 to i32
  %and = and i32 %conv22, 8
  %23 = load i16, i16* %i, align 2, !tbaa !8
  %idxprom = sext i16 %23 to i64
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* @_dqlntab, i32 0, i64 %idxprom
  %24 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv23 = sext i16 %24 to i32
  %25 = load i16, i16* %y, align 2, !tbaa !8
  %conv24 = sext i16 %25 to i32
  %call25 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 %and, i32 %conv23, i32 %conv24)
  %conv26 = trunc i32 %call25 to i16
  store i16 %conv26, i16* %dq, align 2, !tbaa !8
  %26 = load i16, i16* %dq, align 2, !tbaa !8
  %conv27 = sext i16 %26 to i32
  %cmp = icmp slt i32 %conv27, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %27 = load i16, i16* %se, align 2, !tbaa !8
  %conv29 = sext i16 %27 to i32
  %28 = load i16, i16* %dq, align 2, !tbaa !8
  %conv30 = sext i16 %28 to i32
  %and31 = and i32 %conv30, 16383
  %sub32 = sub nsw i32 %conv29, %and31
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %29 = load i16, i16* %se, align 2, !tbaa !8
  %conv33 = sext i16 %29 to i32
  %30 = load i16, i16* %dq, align 2, !tbaa !8
  %conv34 = sext i16 %30 to i32
  %add35 = add nsw i32 %conv33, %conv34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub32, %cond.true ], [ %add35, %cond.false ]
  %conv36 = trunc i32 %cond to i16
  store i16 %conv36, i16* %sr, align 2, !tbaa !8
  %31 = load i16, i16* %sr, align 2, !tbaa !8
  %conv37 = sext i16 %31 to i32
  %32 = load i16, i16* %sez, align 2, !tbaa !8
  %conv38 = sext i16 %32 to i32
  %add39 = add nsw i32 %conv37, %conv38
  %33 = load i16, i16* %se, align 2, !tbaa !8
  %conv40 = sext i16 %33 to i32
  %sub41 = sub nsw i32 %add39, %conv40
  %conv42 = trunc i32 %sub41 to i16
  store i16 %conv42, i16* %dqsez, align 2, !tbaa !8
  %34 = load i16, i16* %y, align 2, !tbaa !8
  %conv43 = sext i16 %34 to i32
  %35 = load i16, i16* %i, align 2, !tbaa !8
  %idxprom44 = sext i16 %35 to i64
  %arrayidx45 = getelementptr inbounds [16 x i16], [16 x i16]* @_witab, i32 0, i64 %idxprom44
  %36 = load i16, i16* %arrayidx45, align 2, !tbaa !8
  %conv46 = sext i16 %36 to i32
  %shl = shl i32 %conv46, 5
  %37 = load i16, i16* %i, align 2, !tbaa !8
  %idxprom47 = sext i16 %37 to i64
  %arrayidx48 = getelementptr inbounds [16 x i16], [16 x i16]* @_fitab, i32 0, i64 %idxprom47
  %38 = load i16, i16* %arrayidx48, align 2, !tbaa !8
  %conv49 = sext i16 %38 to i32
  %39 = load i16, i16* %dq, align 2, !tbaa !8
  %conv50 = sext i16 %39 to i32
  %40 = load i16, i16* %sr, align 2, !tbaa !8
  %conv51 = sext i16 %40 to i32
  %41 = load i16, i16* %dqsez, align 2, !tbaa !8
  %conv52 = sext i16 %41 to i32
  %42 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 4, i32 %conv43, i32 %shl, i32 %conv49, i32 %conv50, i32 %conv51, i32 %conv52, %struct.g72x_state* %42)
  %43 = load i16, i16* %i, align 2, !tbaa !8
  %conv53 = sext i16 %43 to i32
  store i32 %conv53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.default
  %44 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %44) #3
  %45 = bitcast i16* %dq to i8*
  call void @llvm.lifetime.end(i64 2, i8* %45) #3
  %46 = bitcast i16* %dqsez to i8*
  call void @llvm.lifetime.end(i64 2, i8* %46) #3
  %47 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %47) #3
  %48 = bitcast i16* %sr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %48) #3
  %49 = bitcast i16* %d to i8*
  call void @llvm.lifetime.end(i64 2, i8* %49) #3
  %50 = bitcast i16* %sez to i8*
  call void @llvm.lifetime.end(i64 2, i8* %50) #3
  %51 = bitcast i16* %se to i8*
  call void @llvm.lifetime.end(i64 2, i8* %51) #3
  %52 = bitcast i16* %sezi to i8*
  call void @llvm.lifetime.end(i64 2, i8* %52) #3
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @alaw2linear(...) #2

declare i32 @ulaw2linear(...) #2

declare i32 @predictor_zero(...) #2

declare i32 @predictor_pole(...) #2

declare i32 @step_size(...) #2

declare i32 @quantize(...) #2

declare i32 @reconstruct(...) #2

declare void @update(...) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @g721_decoder(i32 %i, i32 %out_coding, %struct.g72x_state* %state_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %out_coding.addr = alloca i32, align 4
  %state_ptr.addr = alloca %struct.g72x_state*, align 8
  %sezi = alloca i16, align 2
  %sei = alloca i16, align 2
  %sez = alloca i16, align 2
  %se = alloca i16, align 2
  %y = alloca i16, align 2
  %sr = alloca i16, align 2
  %dq = alloca i16, align 2
  %dqsez = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store i32 %i, i32* %i.addr, align 4, !tbaa !2
  store i32 %out_coding, i32* %out_coding.addr, align 4, !tbaa !2
  store %struct.g72x_state* %state_ptr, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  %0 = bitcast i16* %sezi to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #3
  %1 = bitcast i16* %sei to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #3
  %2 = bitcast i16* %sez to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #3
  %3 = bitcast i16* %se to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #3
  %4 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #3
  %5 = bitcast i16* %sr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #3
  %6 = bitcast i16* %dq to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #3
  %7 = bitcast i16* %dqsez to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #3
  %8 = load i32, i32* %i.addr, align 4, !tbaa !2
  %and = and i32 %8, 15
  store i32 %and, i32* %i.addr, align 4, !tbaa !2
  %9 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  %call = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_zero to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* %9)
  %conv = trunc i32 %call to i16
  store i16 %conv, i16* %sezi, align 2, !tbaa !8
  %10 = load i16, i16* %sezi, align 2, !tbaa !8
  %conv1 = sext i16 %10 to i32
  %shr = ashr i32 %conv1, 1
  %conv2 = trunc i32 %shr to i16
  store i16 %conv2, i16* %sez, align 2, !tbaa !8
  %11 = load i16, i16* %sezi, align 2, !tbaa !8
  %conv3 = sext i16 %11 to i32
  %12 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  %call4 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @predictor_pole to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* %12)
  %add = add nsw i32 %conv3, %call4
  %conv5 = trunc i32 %add to i16
  store i16 %conv5, i16* %sei, align 2, !tbaa !8
  %13 = load i16, i16* %sei, align 2, !tbaa !8
  %conv6 = sext i16 %13 to i32
  %shr7 = ashr i32 %conv6, 1
  %conv8 = trunc i32 %shr7 to i16
  store i16 %conv8, i16* %se, align 2, !tbaa !8
  %14 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  %call9 = call i32 (%struct.g72x_state*, ...) bitcast (i32 (...)* @step_size to i32 (%struct.g72x_state*, ...)*)(%struct.g72x_state* %14)
  %conv10 = trunc i32 %call9 to i16
  store i16 %conv10, i16* %y, align 2, !tbaa !8
  %15 = load i32, i32* %i.addr, align 4, !tbaa !2
  %and11 = and i32 %15, 8
  %16 = load i32, i32* %i.addr, align 4, !tbaa !2
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* @_dqlntab, i32 0, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv12 = sext i16 %17 to i32
  %18 = load i16, i16* %y, align 2, !tbaa !8
  %conv13 = sext i16 %18 to i32
  %call14 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @reconstruct to i32 (i32, i32, i32, ...)*)(i32 %and11, i32 %conv12, i32 %conv13)
  %conv15 = trunc i32 %call14 to i16
  store i16 %conv15, i16* %dq, align 2, !tbaa !8
  %19 = load i16, i16* %dq, align 2, !tbaa !8
  %conv16 = sext i16 %19 to i32
  %cmp = icmp slt i32 %conv16, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %20 = load i16, i16* %se, align 2, !tbaa !8
  %conv18 = sext i16 %20 to i32
  %21 = load i16, i16* %dq, align 2, !tbaa !8
  %conv19 = sext i16 %21 to i32
  %and20 = and i32 %conv19, 16383
  %sub = sub nsw i32 %conv18, %and20
  br label %cond.end

cond.false:                                       ; preds = %entry
  %22 = load i16, i16* %se, align 2, !tbaa !8
  %conv21 = sext i16 %22 to i32
  %23 = load i16, i16* %dq, align 2, !tbaa !8
  %conv22 = sext i16 %23 to i32
  %add23 = add nsw i32 %conv21, %conv22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add23, %cond.false ]
  %conv24 = trunc i32 %cond to i16
  store i16 %conv24, i16* %sr, align 2, !tbaa !8
  %24 = load i16, i16* %sr, align 2, !tbaa !8
  %conv25 = sext i16 %24 to i32
  %25 = load i16, i16* %se, align 2, !tbaa !8
  %conv26 = sext i16 %25 to i32
  %sub27 = sub nsw i32 %conv25, %conv26
  %26 = load i16, i16* %sez, align 2, !tbaa !8
  %conv28 = sext i16 %26 to i32
  %add29 = add nsw i32 %sub27, %conv28
  %conv30 = trunc i32 %add29 to i16
  store i16 %conv30, i16* %dqsez, align 2, !tbaa !8
  %27 = load i16, i16* %y, align 2, !tbaa !8
  %conv31 = sext i16 %27 to i32
  %28 = load i32, i32* %i.addr, align 4, !tbaa !2
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [16 x i16], [16 x i16]* @_witab, i32 0, i64 %idxprom32
  %29 = load i16, i16* %arrayidx33, align 2, !tbaa !8
  %conv34 = sext i16 %29 to i32
  %shl = shl i32 %conv34, 5
  %30 = load i32, i32* %i.addr, align 4, !tbaa !2
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds [16 x i16], [16 x i16]* @_fitab, i32 0, i64 %idxprom35
  %31 = load i16, i16* %arrayidx36, align 2, !tbaa !8
  %conv37 = sext i16 %31 to i32
  %32 = load i16, i16* %dq, align 2, !tbaa !8
  %conv38 = sext i16 %32 to i32
  %33 = load i16, i16* %sr, align 2, !tbaa !8
  %conv39 = sext i16 %33 to i32
  %34 = load i16, i16* %dqsez, align 2, !tbaa !8
  %conv40 = sext i16 %34 to i32
  %35 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !6
  call void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...) bitcast (void (...)* @update to void (i32, i32, i32, i32, i32, i32, i32, %struct.g72x_state*, ...)*)(i32 4, i32 %conv31, i32 %shl, i32 %conv37, i32 %conv38, i32 %conv39, i32 %conv40, %struct.g72x_state* %35)
  %36 = load i32, i32* %out_coding.addr, align 4, !tbaa !2
  switch i32 %36, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.45
    i32 3, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %cond.end
  %37 = load i16, i16* %sr, align 2, !tbaa !8
  %conv41 = sext i16 %37 to i32
  %38 = load i16, i16* %se, align 2, !tbaa !8
  %conv42 = sext i16 %38 to i32
  %39 = load i16, i16* %y, align 2, !tbaa !8
  %conv43 = sext i16 %39 to i32
  %40 = load i32, i32* %i.addr, align 4, !tbaa !2
  %call44 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_alaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 %conv41, i32 %conv42, i32 %conv43, i32 %40, i32 8, i16* getelementptr inbounds ([7 x i16], [7 x i16]* @qtab_721, i32 0, i32 0))
  store i32 %call44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.45:                                         ; preds = %cond.end
  %41 = load i16, i16* %sr, align 2, !tbaa !8
  %conv46 = sext i16 %41 to i32
  %42 = load i16, i16* %se, align 2, !tbaa !8
  %conv47 = sext i16 %42 to i32
  %43 = load i16, i16* %y, align 2, !tbaa !8
  %conv48 = sext i16 %43 to i32
  %44 = load i32, i32* %i.addr, align 4, !tbaa !2
  %call49 = call i32 (i32, i32, i32, i32, i32, i16*, ...) bitcast (i32 (...)* @tandem_adjust_ulaw to i32 (i32, i32, i32, i32, i32, i16*, ...)*)(i32 %conv46, i32 %conv47, i32 %conv48, i32 %44, i32 8, i16* getelementptr inbounds ([7 x i16], [7 x i16]* @qtab_721, i32 0, i32 0))
  store i32 %call49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.50:                                         ; preds = %cond.end
  %45 = load i16, i16* %sr, align 2, !tbaa !8
  %conv51 = sext i16 %45 to i32
  %shl52 = shl i32 %conv51, 2
  store i32 %shl52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %cond.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.50, %sw.bb.45, %sw.bb
  %46 = bitcast i16* %dqsez to i8*
  call void @llvm.lifetime.end(i64 2, i8* %46) #3
  %47 = bitcast i16* %dq to i8*
  call void @llvm.lifetime.end(i64 2, i8* %47) #3
  %48 = bitcast i16* %sr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %48) #3
  %49 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %49) #3
  %50 = bitcast i16* %se to i8*
  call void @llvm.lifetime.end(i64 2, i8* %50) #3
  %51 = bitcast i16* %sez to i8*
  call void @llvm.lifetime.end(i64 2, i8* %51) #3
  %52 = bitcast i16* %sei to i8*
  call void @llvm.lifetime.end(i64 2, i8* %52) #3
  %53 = bitcast i16* %sezi to i8*
  call void @llvm.lifetime.end(i64 2, i8* %53) #3
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i32 @tandem_adjust_alaw(...) #2

declare i32 @tandem_adjust_ulaw(...) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !4, i64 0}
