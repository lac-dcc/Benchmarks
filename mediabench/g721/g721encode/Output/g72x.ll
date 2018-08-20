; ModuleID = 'g72x.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@power2 = internal global [15 x i16] [i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384], align 16

; Function Attrs: nounwind ssp uwtable
define void @g72x_init_state(%struct.g72x_state* %state_ptr) #0 {
entry:
  %state_ptr.addr = alloca %struct.g72x_state*, align 8
  %cnta = alloca i32, align 4
  store %struct.g72x_state* %state_ptr, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %0 = bitcast i32* %cnta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yl = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %1, i32 0, i32 0
  store i64 34816, i64* %yl, align 8, !tbaa !6
  %2 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yu = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %2, i32 0, i32 1
  store i16 544, i16* %yu, align 2, !tbaa !10
  %3 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dms = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %3, i32 0, i32 2
  store i16 0, i16* %dms, align 2, !tbaa !11
  %4 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dml = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %4, i32 0, i32 3
  store i16 0, i16* %dml, align 2, !tbaa !12
  %5 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %5, i32 0, i32 4
  store i16 0, i16* %ap, align 2, !tbaa !13
  store i32 0, i32* %cnta, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %cnta, align 4, !tbaa !14
  %cmp = icmp slt i32 %6, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %cnta, align 4, !tbaa !14
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %8, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %a, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !16
  %9 = load i32, i32* %cnta, align 4, !tbaa !14
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %pk = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %10, i32 0, i32 7
  %arrayidx2 = getelementptr inbounds [2 x i16], [2 x i16]* %pk, i32 0, i64 %idxprom1
  store i16 0, i16* %arrayidx2, align 2, !tbaa !16
  %11 = load i32, i32* %cnta, align 4, !tbaa !14
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %sr = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %12, i32 0, i32 9
  %arrayidx4 = getelementptr inbounds [2 x i16], [2 x i16]* %sr, i32 0, i64 %idxprom3
  store i16 32, i16* %arrayidx4, align 2, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %cnta, align 4, !tbaa !14
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %cnta, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cnta, align 4, !tbaa !14
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.12, %for.end
  %14 = load i32, i32* %cnta, align 4, !tbaa !14
  %cmp6 = icmp slt i32 %14, 6
  br i1 %cmp6, label %for.body.7, label %for.end.14

for.body.7:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %cnta, align 4, !tbaa !14
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %16, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [6 x i16], [6 x i16]* %b, i32 0, i64 %idxprom8
  store i16 0, i16* %arrayidx9, align 2, !tbaa !16
  %17 = load i32, i32* %cnta, align 4, !tbaa !14
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dq = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %18, i32 0, i32 8
  %arrayidx11 = getelementptr inbounds [6 x i16], [6 x i16]* %dq, i32 0, i64 %idxprom10
  store i16 32, i16* %arrayidx11, align 2, !tbaa !16
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.7
  %19 = load i32, i32* %cnta, align 4, !tbaa !14
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %cnta, align 4, !tbaa !14
  br label %for.cond.5

for.end.14:                                       ; preds = %for.cond.5
  %20 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %td = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %20, i32 0, i32 10
  store i8 0, i8* %td, align 1, !tbaa !17
  %21 = bitcast i32* %cnta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #4
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @predictor_zero(%struct.g72x_state* %state_ptr) #0 {
entry:
  %state_ptr.addr = alloca %struct.g72x_state*, align 8
  %i = alloca i32, align 4
  %sezi = alloca i32, align 4
  store %struct.g72x_state* %state_ptr, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = bitcast i32* %sezi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  %2 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %2, i32 0, i32 6
  %arrayidx = getelementptr inbounds [6 x i16], [6 x i16]* %b, i32 0, i64 0
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !16
  %conv = sext i16 %3 to i32
  %shr = ashr i32 %conv, 2
  %4 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dq = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %4, i32 0, i32 8
  %arrayidx1 = getelementptr inbounds [6 x i16], [6 x i16]* %dq, i32 0, i64 0
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !16
  %conv2 = sext i16 %5 to i32
  %call = call i32 @fmult(i32 %shr, i32 %conv2)
  store i32 %call, i32* %sezi, align 4, !tbaa !14
  store i32 1, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp slt i32 %6, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b4 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %8, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [6 x i16], [6 x i16]* %b4, i32 0, i64 %idxprom
  %9 = load i16, i16* %arrayidx5, align 2, !tbaa !16
  %conv6 = sext i16 %9 to i32
  %shr7 = ashr i32 %conv6, 2
  %10 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dq9 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %11, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [6 x i16], [6 x i16]* %dq9, i32 0, i64 %idxprom8
  %12 = load i16, i16* %arrayidx10, align 2, !tbaa !16
  %conv11 = sext i16 %12 to i32
  %call12 = call i32 @fmult(i32 %shr7, i32 %conv11)
  %13 = load i32, i32* %sezi, align 4, !tbaa !14
  %add = add nsw i32 %13, %call12
  store i32 %add, i32* %sezi, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %sezi, align 4, !tbaa !14
  %16 = bitcast i32* %sezi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #4
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fmult(i32 %an, i32 %srn) #0 {
entry:
  %an.addr = alloca i32, align 4
  %srn.addr = alloca i32, align 4
  %anmag = alloca i16, align 2
  %anexp = alloca i16, align 2
  %anmant = alloca i16, align 2
  %wanexp = alloca i16, align 2
  %wanmag = alloca i16, align 2
  %wanmant = alloca i16, align 2
  %retval1 = alloca i16, align 2
  store i32 %an, i32* %an.addr, align 4, !tbaa !14
  store i32 %srn, i32* %srn.addr, align 4, !tbaa !14
  %0 = bitcast i16* %anmag to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #4
  %1 = bitcast i16* %anexp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #4
  %2 = bitcast i16* %anmant to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #4
  %3 = bitcast i16* %wanexp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #4
  %4 = bitcast i16* %wanmag to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #4
  %5 = bitcast i16* %wanmant to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #4
  %6 = bitcast i16* %retval1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #4
  %7 = load i32, i32* %an.addr, align 4, !tbaa !14
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %an.addr, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %an.addr, align 4, !tbaa !14
  %sub = sub nsw i32 0, %9
  %and = and i32 %sub, 8191
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %and, %cond.false ]
  %conv = trunc i32 %cond to i16
  store i16 %conv, i16* %anmag, align 2, !tbaa !16
  %10 = load i16, i16* %anmag, align 2, !tbaa !16
  %conv2 = sext i16 %10 to i32
  %call = call i32 @quan(i32 %conv2, i16* getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i32 0, i32 0), i32 15)
  %sub3 = sub nsw i32 %call, 6
  %conv4 = trunc i32 %sub3 to i16
  store i16 %conv4, i16* %anexp, align 2, !tbaa !16
  %11 = load i16, i16* %anmag, align 2, !tbaa !16
  %conv5 = sext i16 %11 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.22

cond.false.9:                                     ; preds = %cond.end
  %12 = load i16, i16* %anexp, align 2, !tbaa !16
  %conv10 = sext i16 %12 to i32
  %cmp11 = icmp sge i32 %conv10, 0
  br i1 %cmp11, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.false.9
  %13 = load i16, i16* %anmag, align 2, !tbaa !16
  %conv14 = sext i16 %13 to i32
  %14 = load i16, i16* %anexp, align 2, !tbaa !16
  %conv15 = sext i16 %14 to i32
  %shr = ashr i32 %conv14, %conv15
  br label %cond.end.20

cond.false.16:                                    ; preds = %cond.false.9
  %15 = load i16, i16* %anmag, align 2, !tbaa !16
  %conv17 = sext i16 %15 to i32
  %16 = load i16, i16* %anexp, align 2, !tbaa !16
  %conv18 = sext i16 %16 to i32
  %sub19 = sub nsw i32 0, %conv18
  %shl = shl i32 %conv17, %sub19
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.16, %cond.true.13
  %cond21 = phi i32 [ %shr, %cond.true.13 ], [ %shl, %cond.false.16 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end.20, %cond.true.8
  %cond23 = phi i32 [ 32, %cond.true.8 ], [ %cond21, %cond.end.20 ]
  %conv24 = trunc i32 %cond23 to i16
  store i16 %conv24, i16* %anmant, align 2, !tbaa !16
  %17 = load i16, i16* %anexp, align 2, !tbaa !16
  %conv25 = sext i16 %17 to i32
  %18 = load i32, i32* %srn.addr, align 4, !tbaa !14
  %shr26 = ashr i32 %18, 6
  %and27 = and i32 %shr26, 15
  %add = add nsw i32 %conv25, %and27
  %sub28 = sub nsw i32 %add, 13
  %conv29 = trunc i32 %sub28 to i16
  store i16 %conv29, i16* %wanexp, align 2, !tbaa !16
  %19 = load i16, i16* %anmant, align 2, !tbaa !16
  %conv30 = sext i16 %19 to i32
  %20 = load i32, i32* %srn.addr, align 4, !tbaa !14
  %and31 = and i32 %20, 63
  %mul = mul nsw i32 %conv30, %and31
  %add32 = add nsw i32 %mul, 48
  %shr33 = ashr i32 %add32, 4
  %conv34 = trunc i32 %shr33 to i16
  store i16 %conv34, i16* %wanmant, align 2, !tbaa !16
  %21 = load i16, i16* %wanexp, align 2, !tbaa !16
  %conv35 = sext i16 %21 to i32
  %cmp36 = icmp sge i32 %conv35, 0
  br i1 %cmp36, label %cond.true.38, label %cond.false.43

cond.true.38:                                     ; preds = %cond.end.22
  %22 = load i16, i16* %wanmant, align 2, !tbaa !16
  %conv39 = sext i16 %22 to i32
  %23 = load i16, i16* %wanexp, align 2, !tbaa !16
  %conv40 = sext i16 %23 to i32
  %shl41 = shl i32 %conv39, %conv40
  %and42 = and i32 %shl41, 32767
  br label %cond.end.48

cond.false.43:                                    ; preds = %cond.end.22
  %24 = load i16, i16* %wanmant, align 2, !tbaa !16
  %conv44 = sext i16 %24 to i32
  %25 = load i16, i16* %wanexp, align 2, !tbaa !16
  %conv45 = sext i16 %25 to i32
  %sub46 = sub nsw i32 0, %conv45
  %shr47 = ashr i32 %conv44, %sub46
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.43, %cond.true.38
  %cond49 = phi i32 [ %and42, %cond.true.38 ], [ %shr47, %cond.false.43 ]
  %conv50 = trunc i32 %cond49 to i16
  store i16 %conv50, i16* %retval1, align 2, !tbaa !16
  %26 = load i32, i32* %an.addr, align 4, !tbaa !14
  %27 = load i32, i32* %srn.addr, align 4, !tbaa !14
  %xor = xor i32 %26, %27
  %cmp51 = icmp slt i32 %xor, 0
  br i1 %cmp51, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %cond.end.48
  %28 = load i16, i16* %retval1, align 2, !tbaa !16
  %conv54 = sext i16 %28 to i32
  %sub55 = sub nsw i32 0, %conv54
  br label %cond.end.58

cond.false.56:                                    ; preds = %cond.end.48
  %29 = load i16, i16* %retval1, align 2, !tbaa !16
  %conv57 = sext i16 %29 to i32
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.56, %cond.true.53
  %cond59 = phi i32 [ %sub55, %cond.true.53 ], [ %conv57, %cond.false.56 ]
  %30 = bitcast i16* %retval1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %30) #4
  %31 = bitcast i16* %wanmant to i8*
  call void @llvm.lifetime.end(i64 2, i8* %31) #4
  %32 = bitcast i16* %wanmag to i8*
  call void @llvm.lifetime.end(i64 2, i8* %32) #4
  %33 = bitcast i16* %wanexp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %33) #4
  %34 = bitcast i16* %anmant to i8*
  call void @llvm.lifetime.end(i64 2, i8* %34) #4
  %35 = bitcast i16* %anexp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %35) #4
  %36 = bitcast i16* %anmag to i8*
  call void @llvm.lifetime.end(i64 2, i8* %36) #4
  ret i32 %cond59
}

; Function Attrs: nounwind ssp uwtable
define i32 @predictor_pole(%struct.g72x_state* %state_ptr) #0 {
entry:
  %state_ptr.addr = alloca %struct.g72x_state*, align 8
  store %struct.g72x_state* %state_ptr, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %0 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %a, i32 0, i64 1
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !16
  %conv = sext i16 %1 to i32
  %shr = ashr i32 %conv, 2
  %2 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %sr = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %2, i32 0, i32 9
  %arrayidx1 = getelementptr inbounds [2 x i16], [2 x i16]* %sr, i32 0, i64 1
  %3 = load i16, i16* %arrayidx1, align 2, !tbaa !16
  %conv2 = sext i16 %3 to i32
  %call = call i32 @fmult(i32 %shr, i32 %conv2)
  %4 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a3 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %4, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [2 x i16], [2 x i16]* %a3, i32 0, i64 0
  %5 = load i16, i16* %arrayidx4, align 2, !tbaa !16
  %conv5 = sext i16 %5 to i32
  %shr6 = ashr i32 %conv5, 2
  %6 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %sr7 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %6, i32 0, i32 9
  %arrayidx8 = getelementptr inbounds [2 x i16], [2 x i16]* %sr7, i32 0, i64 0
  %7 = load i16, i16* %arrayidx8, align 2, !tbaa !16
  %conv9 = sext i16 %7 to i32
  %call10 = call i32 @fmult(i32 %shr6, i32 %conv9)
  %add = add nsw i32 %call, %call10
  ret i32 %add
}

; Function Attrs: nounwind ssp uwtable
define i32 @step_size(%struct.g72x_state* %state_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %state_ptr.addr = alloca %struct.g72x_state*, align 8
  %y = alloca i32, align 4
  %dif = alloca i32, align 4
  %al = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.g72x_state* %state_ptr, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %0 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = bitcast i32* %dif to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  %2 = bitcast i32* %al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  %3 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %3, i32 0, i32 4
  %4 = load i16, i16* %ap, align 2, !tbaa !13
  %conv = sext i16 %4 to i32
  %cmp = icmp sge i32 %conv, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yu = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %5, i32 0, i32 1
  %6 = load i16, i16* %yu, align 2, !tbaa !10
  %conv2 = sext i16 %6 to i32
  store i32 %conv2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yl = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i32 0, i32 0
  %8 = load i64, i64* %yl, align 8, !tbaa !6
  %shr = ashr i64 %8, 6
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, i32* %y, align 4, !tbaa !14
  %9 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yu4 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %9, i32 0, i32 1
  %10 = load i16, i16* %yu4, align 2, !tbaa !10
  %conv5 = sext i16 %10 to i32
  %11 = load i32, i32* %y, align 4, !tbaa !14
  %sub = sub nsw i32 %conv5, %11
  store i32 %sub, i32* %dif, align 4, !tbaa !14
  %12 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap6 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %12, i32 0, i32 4
  %13 = load i16, i16* %ap6, align 2, !tbaa !13
  %conv7 = sext i16 %13 to i32
  %shr8 = ashr i32 %conv7, 2
  store i32 %shr8, i32* %al, align 4, !tbaa !14
  %14 = load i32, i32* %dif, align 4, !tbaa !14
  %cmp9 = icmp sgt i32 %14, 0
  br i1 %cmp9, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else
  %15 = load i32, i32* %dif, align 4, !tbaa !14
  %16 = load i32, i32* %al, align 4, !tbaa !14
  %mul = mul nsw i32 %15, %16
  %shr12 = ashr i32 %mul, 6
  %17 = load i32, i32* %y, align 4, !tbaa !14
  %add = add nsw i32 %17, %shr12
  store i32 %add, i32* %y, align 4, !tbaa !14
  br label %if.end.21

if.else.13:                                       ; preds = %if.else
  %18 = load i32, i32* %dif, align 4, !tbaa !14
  %cmp14 = icmp slt i32 %18, 0
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else.13
  %19 = load i32, i32* %dif, align 4, !tbaa !14
  %20 = load i32, i32* %al, align 4, !tbaa !14
  %mul17 = mul nsw i32 %19, %20
  %add18 = add nsw i32 %mul17, 63
  %shr19 = ashr i32 %add18, 6
  %21 = load i32, i32* %y, align 4, !tbaa !14
  %add20 = add nsw i32 %21, %shr19
  store i32 %add20, i32* %y, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.else.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.11
  %22 = load i32, i32* %y, align 4, !tbaa !14
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then
  %23 = bitcast i32* %al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #4
  %24 = bitcast i32* %dif to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #4
  %25 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #4
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define i32 @quantize(i32 %d, i32 %y, i16* %table, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %table.addr = alloca i16*, align 8
  %size.addr = alloca i32, align 4
  %dqm = alloca i16, align 2
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  %dl = alloca i16, align 2
  %dln = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %d, i32* %d.addr, align 4, !tbaa !14
  store i32 %y, i32* %y.addr, align 4, !tbaa !14
  store i16* %table, i16** %table.addr, align 8, !tbaa !2
  store i32 %size, i32* %size.addr, align 4, !tbaa !14
  %0 = bitcast i16* %dqm to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #4
  %1 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #4
  %2 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #4
  %3 = bitcast i16* %dl to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #4
  %4 = bitcast i16* %dln to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #4
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  %6 = load i32, i32* %d.addr, align 4, !tbaa !14
  %call = call i32 @abs(i32 %6) #5
  %conv = trunc i32 %call to i16
  store i16 %conv, i16* %dqm, align 2, !tbaa !16
  %7 = load i16, i16* %dqm, align 2, !tbaa !16
  %conv1 = sext i16 %7 to i32
  %shr = ashr i32 %conv1, 1
  %call2 = call i32 @quan(i32 %shr, i16* getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i32 0, i32 0), i32 15)
  %conv3 = trunc i32 %call2 to i16
  store i16 %conv3, i16* %exp, align 2, !tbaa !16
  %8 = load i16, i16* %dqm, align 2, !tbaa !16
  %conv4 = sext i16 %8 to i32
  %shl = shl i32 %conv4, 7
  %9 = load i16, i16* %exp, align 2, !tbaa !16
  %conv5 = sext i16 %9 to i32
  %shr6 = ashr i32 %shl, %conv5
  %and = and i32 %shr6, 127
  %conv7 = trunc i32 %and to i16
  store i16 %conv7, i16* %mant, align 2, !tbaa !16
  %10 = load i16, i16* %exp, align 2, !tbaa !16
  %conv8 = sext i16 %10 to i32
  %shl9 = shl i32 %conv8, 7
  %11 = load i16, i16* %mant, align 2, !tbaa !16
  %conv10 = sext i16 %11 to i32
  %add = add nsw i32 %shl9, %conv10
  %conv11 = trunc i32 %add to i16
  store i16 %conv11, i16* %dl, align 2, !tbaa !16
  %12 = load i16, i16* %dl, align 2, !tbaa !16
  %conv12 = sext i16 %12 to i32
  %13 = load i32, i32* %y.addr, align 4, !tbaa !14
  %shr13 = ashr i32 %13, 2
  %sub = sub nsw i32 %conv12, %shr13
  %conv14 = trunc i32 %sub to i16
  store i16 %conv14, i16* %dln, align 2, !tbaa !16
  %14 = load i16, i16* %dln, align 2, !tbaa !16
  %conv15 = sext i16 %14 to i32
  %15 = load i16*, i16** %table.addr, align 8, !tbaa !2
  %16 = load i32, i32* %size.addr, align 4, !tbaa !14
  %call16 = call i32 @quan(i32 %conv15, i16* %15, i32 %16)
  store i32 %call16, i32* %i, align 4, !tbaa !14
  %17 = load i32, i32* %d.addr, align 4, !tbaa !14
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %size.addr, align 4, !tbaa !14
  %shl18 = shl i32 %18, 1
  %add19 = add nsw i32 %shl18, 1
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %sub20 = sub nsw i32 %add19, %19
  store i32 %sub20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %i, align 4, !tbaa !14
  %cmp21 = icmp eq i32 %20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.else
  %21 = load i32, i32* %size.addr, align 4, !tbaa !14
  %shl24 = shl i32 %21, 1
  %add25 = add nsw i32 %shl24, 1
  store i32 %add25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.26:                                       ; preds = %if.else
  %22 = load i32, i32* %i, align 4, !tbaa !14
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.26, %if.then.23, %if.then
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #4
  %24 = bitcast i16* %dln to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #4
  %25 = bitcast i16* %dl to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #4
  %26 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #4
  %27 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #4
  %28 = bitcast i16* %dqm to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #4
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @quan(i32 %val, i16* %table, i32 %size) #0 {
entry:
  %val.addr = alloca i32, align 4
  %table.addr = alloca i16*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4, !tbaa !14
  store i16* %table, i16** %table.addr, align 8, !tbaa !2
  store i32 %size, i32* %size.addr, align 4, !tbaa !14
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !14
  %2 = load i32, i32* %size.addr, align 4, !tbaa !14
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %val.addr, align 4, !tbaa !14
  %4 = load i16*, i16** %table.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr, i16** %table.addr, align 8, !tbaa !2
  %5 = load i16, i16* %4, align 2, !tbaa !16
  %conv = sext i16 %5 to i32
  %cmp1 = icmp slt i32 %3, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !14
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @reconstruct(i32 %sign, i32 %dqln, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %sign.addr = alloca i32, align 4
  %dqln.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dql = alloca i16, align 2
  %dex = alloca i16, align 2
  %dqt = alloca i16, align 2
  %dq = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store i32 %sign, i32* %sign.addr, align 4, !tbaa !14
  store i32 %dqln, i32* %dqln.addr, align 4, !tbaa !14
  store i32 %y, i32* %y.addr, align 4, !tbaa !14
  %0 = bitcast i16* %dql to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #4
  %1 = bitcast i16* %dex to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #4
  %2 = bitcast i16* %dqt to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #4
  %3 = bitcast i16* %dq to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #4
  %4 = load i32, i32* %dqln.addr, align 4, !tbaa !14
  %5 = load i32, i32* %y.addr, align 4, !tbaa !14
  %shr = ashr i32 %5, 2
  %add = add nsw i32 %4, %shr
  %conv = trunc i32 %add to i16
  store i16 %conv, i16* %dql, align 2, !tbaa !16
  %6 = load i16, i16* %dql, align 2, !tbaa !16
  %conv1 = sext i16 %6 to i32
  %cmp = icmp slt i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %sign.addr, align 4, !tbaa !14
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 -32768, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load i16, i16* %dql, align 2, !tbaa !16
  %conv3 = sext i16 %8 to i32
  %shr4 = ashr i32 %conv3, 7
  %and = and i32 %shr4, 15
  %conv5 = trunc i32 %and to i16
  store i16 %conv5, i16* %dex, align 2, !tbaa !16
  %9 = load i16, i16* %dql, align 2, !tbaa !16
  %conv6 = sext i16 %9 to i32
  %and7 = and i32 %conv6, 127
  %add8 = add nsw i32 128, %and7
  %conv9 = trunc i32 %add8 to i16
  store i16 %conv9, i16* %dqt, align 2, !tbaa !16
  %10 = load i16, i16* %dqt, align 2, !tbaa !16
  %conv10 = sext i16 %10 to i32
  %shl = shl i32 %conv10, 7
  %11 = load i16, i16* %dex, align 2, !tbaa !16
  %conv11 = sext i16 %11 to i32
  %sub = sub nsw i32 14, %conv11
  %shr12 = ashr i32 %shl, %sub
  %conv13 = trunc i32 %shr12 to i16
  store i16 %conv13, i16* %dq, align 2, !tbaa !16
  %12 = load i32, i32* %sign.addr, align 4, !tbaa !14
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %13 = load i16, i16* %dq, align 2, !tbaa !16
  %conv15 = sext i16 %13 to i32
  %sub16 = sub nsw i32 %conv15, 32768
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %14 = load i16, i16* %dq, align 2, !tbaa !16
  %conv17 = sext i16 %14 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i32 [ %sub16, %cond.true ], [ %conv17, %cond.false ]
  store i32 %cond18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %15 = bitcast i16* %dq to i8*
  call void @llvm.lifetime.end(i64 2, i8* %15) #4
  %16 = bitcast i16* %dqt to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #4
  %17 = bitcast i16* %dex to i8*
  call void @llvm.lifetime.end(i64 2, i8* %17) #4
  %18 = bitcast i16* %dql to i8*
  call void @llvm.lifetime.end(i64 2, i8* %18) #4
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define void @update(i32 %code_size, i32 %y, i32 %wi, i32 %fi, i32 %dq, i32 %sr, i32 %dqsez, %struct.g72x_state* %state_ptr) #0 {
entry:
  %code_size.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %wi.addr = alloca i32, align 4
  %fi.addr = alloca i32, align 4
  %dq.addr = alloca i32, align 4
  %sr.addr = alloca i32, align 4
  %dqsez.addr = alloca i32, align 4
  %state_ptr.addr = alloca %struct.g72x_state*, align 8
  %cnt = alloca i32, align 4
  %mag = alloca i16, align 2
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  %a2p = alloca i16, align 2
  %a1ul = alloca i16, align 2
  %ua2 = alloca i16, align 2
  %pks1 = alloca i16, align 2
  %uga2a = alloca i16, align 2
  %fa1 = alloca i16, align 2
  %uga2b = alloca i16, align 2
  %tr = alloca i8, align 1
  %ylint = alloca i16, align 2
  %thr2 = alloca i16, align 2
  %dqthr = alloca i16, align 2
  %ylfrac = alloca i16, align 2
  %thr1 = alloca i16, align 2
  %pk0 = alloca i16, align 2
  store i32 %code_size, i32* %code_size.addr, align 4, !tbaa !14
  store i32 %y, i32* %y.addr, align 4, !tbaa !14
  store i32 %wi, i32* %wi.addr, align 4, !tbaa !14
  store i32 %fi, i32* %fi.addr, align 4, !tbaa !14
  store i32 %dq, i32* %dq.addr, align 4, !tbaa !14
  store i32 %sr, i32* %sr.addr, align 4, !tbaa !14
  store i32 %dqsez, i32* %dqsez.addr, align 4, !tbaa !14
  store %struct.g72x_state* %state_ptr, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %0 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = bitcast i16* %mag to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #4
  %2 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #4
  %3 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #4
  %4 = bitcast i16* %a2p to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #4
  %5 = bitcast i16* %a1ul to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #4
  %6 = bitcast i16* %ua2 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #4
  %7 = bitcast i16* %pks1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #4
  %8 = bitcast i16* %uga2a to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #4
  %9 = bitcast i16* %fa1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #4
  %10 = bitcast i16* %uga2b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #4
  call void @llvm.lifetime.start(i64 1, i8* %tr) #4
  %11 = bitcast i16* %ylint to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #4
  %12 = bitcast i16* %thr2 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #4
  %13 = bitcast i16* %dqthr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #4
  %14 = bitcast i16* %ylfrac to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #4
  %15 = bitcast i16* %thr1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #4
  %16 = bitcast i16* %pk0 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #4
  %17 = load i32, i32* %dqsez.addr, align 4, !tbaa !14
  %cmp = icmp slt i32 %17, 0
  %cond = select i1 %cmp, i32 1, i32 0
  %conv = trunc i32 %cond to i16
  store i16 %conv, i16* %pk0, align 2, !tbaa !16
  %18 = load i32, i32* %dq.addr, align 4, !tbaa !14
  %and = and i32 %18, 32767
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %mag, align 2, !tbaa !16
  %19 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yl = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %19, i32 0, i32 0
  %20 = load i64, i64* %yl, align 8, !tbaa !6
  %shr = ashr i64 %20, 15
  %conv2 = trunc i64 %shr to i16
  store i16 %conv2, i16* %ylint, align 2, !tbaa !16
  %21 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yl3 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %21, i32 0, i32 0
  %22 = load i64, i64* %yl3, align 8, !tbaa !6
  %shr4 = ashr i64 %22, 10
  %and5 = and i64 %shr4, 31
  %conv6 = trunc i64 %and5 to i16
  store i16 %conv6, i16* %ylfrac, align 2, !tbaa !16
  %23 = load i16, i16* %ylfrac, align 2, !tbaa !16
  %conv7 = sext i16 %23 to i32
  %add = add nsw i32 32, %conv7
  %24 = load i16, i16* %ylint, align 2, !tbaa !16
  %conv8 = sext i16 %24 to i32
  %shl = shl i32 %add, %conv8
  %conv9 = trunc i32 %shl to i16
  store i16 %conv9, i16* %thr1, align 2, !tbaa !16
  %25 = load i16, i16* %ylint, align 2, !tbaa !16
  %conv10 = sext i16 %25 to i32
  %cmp11 = icmp sgt i32 %conv10, 9
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %26 = load i16, i16* %thr1, align 2, !tbaa !16
  %conv13 = sext i16 %26 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond14 = phi i32 [ 31744, %cond.true ], [ %conv13, %cond.false ]
  %conv15 = trunc i32 %cond14 to i16
  store i16 %conv15, i16* %thr2, align 2, !tbaa !16
  %27 = load i16, i16* %thr2, align 2, !tbaa !16
  %conv16 = sext i16 %27 to i32
  %28 = load i16, i16* %thr2, align 2, !tbaa !16
  %conv17 = sext i16 %28 to i32
  %shr18 = ashr i32 %conv17, 1
  %add19 = add nsw i32 %conv16, %shr18
  %shr20 = ashr i32 %add19, 1
  %conv21 = trunc i32 %shr20 to i16
  store i16 %conv21, i16* %dqthr, align 2, !tbaa !16
  %29 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %td = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %29, i32 0, i32 10
  %30 = load i8, i8* %td, align 1, !tbaa !17
  %conv22 = sext i8 %30 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i8 0, i8* %tr, align 1, !tbaa !18
  br label %if.end.31

if.else:                                          ; preds = %cond.end
  %31 = load i16, i16* %mag, align 2, !tbaa !16
  %conv25 = sext i16 %31 to i32
  %32 = load i16, i16* %dqthr, align 2, !tbaa !16
  %conv26 = sext i16 %32 to i32
  %cmp27 = icmp sle i32 %conv25, %conv26
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else
  store i8 0, i8* %tr, align 1, !tbaa !18
  br label %if.end

if.else.30:                                       ; preds = %if.else
  store i8 1, i8* %tr, align 1, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.else.30, %if.then.29
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then
  %33 = load i32, i32* %y.addr, align 4, !tbaa !14
  %34 = load i32, i32* %wi.addr, align 4, !tbaa !14
  %35 = load i32, i32* %y.addr, align 4, !tbaa !14
  %sub = sub nsw i32 %34, %35
  %shr32 = ashr i32 %sub, 5
  %add33 = add nsw i32 %33, %shr32
  %conv34 = trunc i32 %add33 to i16
  %36 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yu = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %36, i32 0, i32 1
  store i16 %conv34, i16* %yu, align 2, !tbaa !10
  %37 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yu35 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %37, i32 0, i32 1
  %38 = load i16, i16* %yu35, align 2, !tbaa !10
  %conv36 = sext i16 %38 to i32
  %cmp37 = icmp slt i32 %conv36, 544
  br i1 %cmp37, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %if.end.31
  %39 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yu40 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %39, i32 0, i32 1
  store i16 544, i16* %yu40, align 2, !tbaa !10
  br label %if.end.49

if.else.41:                                       ; preds = %if.end.31
  %40 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yu42 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %40, i32 0, i32 1
  %41 = load i16, i16* %yu42, align 2, !tbaa !10
  %conv43 = sext i16 %41 to i32
  %cmp44 = icmp sgt i32 %conv43, 5120
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.else.41
  %42 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yu47 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %42, i32 0, i32 1
  store i16 5120, i16* %yu47, align 2, !tbaa !10
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.else.41
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.39
  %43 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yu50 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %43, i32 0, i32 1
  %44 = load i16, i16* %yu50, align 2, !tbaa !10
  %conv51 = sext i16 %44 to i64
  %45 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yl52 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %45, i32 0, i32 0
  %46 = load i64, i64* %yl52, align 8, !tbaa !6
  %sub53 = sub nsw i64 0, %46
  %shr54 = ashr i64 %sub53, 6
  %add55 = add nsw i64 %conv51, %shr54
  %47 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %yl56 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %47, i32 0, i32 0
  %48 = load i64, i64* %yl56, align 8, !tbaa !6
  %add57 = add nsw i64 %48, %add55
  store i64 %add57, i64* %yl56, align 8, !tbaa !6
  %49 = load i8, i8* %tr, align 1, !tbaa !18
  %conv58 = sext i8 %49 to i32
  %cmp59 = icmp eq i32 %conv58, 1
  br i1 %cmp59, label %if.then.61, label %if.else.75

if.then.61:                                       ; preds = %if.end.49
  %50 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %50, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %a, i32 0, i64 0
  store i16 0, i16* %arrayidx, align 2, !tbaa !16
  %51 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a62 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %51, i32 0, i32 5
  %arrayidx63 = getelementptr inbounds [2 x i16], [2 x i16]* %a62, i32 0, i64 1
  store i16 0, i16* %arrayidx63, align 2, !tbaa !16
  %52 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %52, i32 0, i32 6
  %arrayidx64 = getelementptr inbounds [6 x i16], [6 x i16]* %b, i32 0, i64 0
  store i16 0, i16* %arrayidx64, align 2, !tbaa !16
  %53 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b65 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %53, i32 0, i32 6
  %arrayidx66 = getelementptr inbounds [6 x i16], [6 x i16]* %b65, i32 0, i64 1
  store i16 0, i16* %arrayidx66, align 2, !tbaa !16
  %54 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b67 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %54, i32 0, i32 6
  %arrayidx68 = getelementptr inbounds [6 x i16], [6 x i16]* %b67, i32 0, i64 2
  store i16 0, i16* %arrayidx68, align 2, !tbaa !16
  %55 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b69 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %55, i32 0, i32 6
  %arrayidx70 = getelementptr inbounds [6 x i16], [6 x i16]* %b69, i32 0, i64 3
  store i16 0, i16* %arrayidx70, align 2, !tbaa !16
  %56 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b71 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %56, i32 0, i32 6
  %arrayidx72 = getelementptr inbounds [6 x i16], [6 x i16]* %b71, i32 0, i64 4
  store i16 0, i16* %arrayidx72, align 2, !tbaa !16
  %57 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b73 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %57, i32 0, i32 6
  %arrayidx74 = getelementptr inbounds [6 x i16], [6 x i16]* %b73, i32 0, i64 5
  store i16 0, i16* %arrayidx74, align 2, !tbaa !16
  br label %if.end.281

if.else.75:                                       ; preds = %if.end.49
  %58 = load i16, i16* %pk0, align 2, !tbaa !16
  %conv76 = sext i16 %58 to i32
  %59 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %pk = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %59, i32 0, i32 7
  %arrayidx77 = getelementptr inbounds [2 x i16], [2 x i16]* %pk, i32 0, i64 0
  %60 = load i16, i16* %arrayidx77, align 2, !tbaa !16
  %conv78 = sext i16 %60 to i32
  %xor = xor i32 %conv76, %conv78
  %conv79 = trunc i32 %xor to i16
  store i16 %conv79, i16* %pks1, align 2, !tbaa !16
  %61 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a80 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %61, i32 0, i32 5
  %arrayidx81 = getelementptr inbounds [2 x i16], [2 x i16]* %a80, i32 0, i64 1
  %62 = load i16, i16* %arrayidx81, align 2, !tbaa !16
  %conv82 = sext i16 %62 to i32
  %63 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a83 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %63, i32 0, i32 5
  %arrayidx84 = getelementptr inbounds [2 x i16], [2 x i16]* %a83, i32 0, i64 1
  %64 = load i16, i16* %arrayidx84, align 2, !tbaa !16
  %conv85 = sext i16 %64 to i32
  %shr86 = ashr i32 %conv85, 7
  %sub87 = sub nsw i32 %conv82, %shr86
  %conv88 = trunc i32 %sub87 to i16
  store i16 %conv88, i16* %a2p, align 2, !tbaa !16
  %65 = load i32, i32* %dqsez.addr, align 4, !tbaa !14
  %cmp89 = icmp ne i32 %65, 0
  br i1 %cmp89, label %if.then.91, label %if.end.167

if.then.91:                                       ; preds = %if.else.75
  %66 = load i16, i16* %pks1, align 2, !tbaa !16
  %conv92 = sext i16 %66 to i32
  %tobool = icmp ne i32 %conv92, 0
  br i1 %tobool, label %cond.true.93, label %cond.false.97

cond.true.93:                                     ; preds = %if.then.91
  %67 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a94 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %67, i32 0, i32 5
  %arrayidx95 = getelementptr inbounds [2 x i16], [2 x i16]* %a94, i32 0, i64 0
  %68 = load i16, i16* %arrayidx95, align 2, !tbaa !16
  %conv96 = sext i16 %68 to i32
  br label %cond.end.102

cond.false.97:                                    ; preds = %if.then.91
  %69 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a98 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %69, i32 0, i32 5
  %arrayidx99 = getelementptr inbounds [2 x i16], [2 x i16]* %a98, i32 0, i64 0
  %70 = load i16, i16* %arrayidx99, align 2, !tbaa !16
  %conv100 = sext i16 %70 to i32
  %sub101 = sub nsw i32 0, %conv100
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.97, %cond.true.93
  %cond103 = phi i32 [ %conv96, %cond.true.93 ], [ %sub101, %cond.false.97 ]
  %conv104 = trunc i32 %cond103 to i16
  store i16 %conv104, i16* %fa1, align 2, !tbaa !16
  %71 = load i16, i16* %fa1, align 2, !tbaa !16
  %conv105 = sext i16 %71 to i32
  %cmp106 = icmp slt i32 %conv105, -8191
  br i1 %cmp106, label %if.then.108, label %if.else.112

if.then.108:                                      ; preds = %cond.end.102
  %72 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv109 = sext i16 %72 to i32
  %sub110 = sub nsw i32 %conv109, 256
  %conv111 = trunc i32 %sub110 to i16
  store i16 %conv111, i16* %a2p, align 2, !tbaa !16
  br label %if.end.127

if.else.112:                                      ; preds = %cond.end.102
  %73 = load i16, i16* %fa1, align 2, !tbaa !16
  %conv113 = sext i16 %73 to i32
  %cmp114 = icmp sgt i32 %conv113, 8191
  br i1 %cmp114, label %if.then.116, label %if.else.120

if.then.116:                                      ; preds = %if.else.112
  %74 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv117 = sext i16 %74 to i32
  %add118 = add nsw i32 %conv117, 255
  %conv119 = trunc i32 %add118 to i16
  store i16 %conv119, i16* %a2p, align 2, !tbaa !16
  br label %if.end.126

if.else.120:                                      ; preds = %if.else.112
  %75 = load i16, i16* %fa1, align 2, !tbaa !16
  %conv121 = sext i16 %75 to i32
  %shr122 = ashr i32 %conv121, 5
  %76 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv123 = sext i16 %76 to i32
  %add124 = add nsw i32 %conv123, %shr122
  %conv125 = trunc i32 %add124 to i16
  store i16 %conv125, i16* %a2p, align 2, !tbaa !16
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.120, %if.then.116
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.108
  %77 = load i16, i16* %pk0, align 2, !tbaa !16
  %conv128 = sext i16 %77 to i32
  %78 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %pk129 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %78, i32 0, i32 7
  %arrayidx130 = getelementptr inbounds [2 x i16], [2 x i16]* %pk129, i32 0, i64 1
  %79 = load i16, i16* %arrayidx130, align 2, !tbaa !16
  %conv131 = sext i16 %79 to i32
  %xor132 = xor i32 %conv128, %conv131
  %tobool133 = icmp ne i32 %xor132, 0
  br i1 %tobool133, label %if.then.134, label %if.else.150

if.then.134:                                      ; preds = %if.end.127
  %80 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv135 = sext i16 %80 to i32
  %cmp136 = icmp sle i32 %conv135, -12160
  br i1 %cmp136, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %if.then.134
  store i16 -12288, i16* %a2p, align 2, !tbaa !16
  br label %if.end.149

if.else.139:                                      ; preds = %if.then.134
  %81 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv140 = sext i16 %81 to i32
  %cmp141 = icmp sge i32 %conv140, 12416
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %if.else.139
  store i16 12288, i16* %a2p, align 2, !tbaa !16
  br label %if.end.148

if.else.144:                                      ; preds = %if.else.139
  %82 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv145 = sext i16 %82 to i32
  %sub146 = sub nsw i32 %conv145, 128
  %conv147 = trunc i32 %sub146 to i16
  store i16 %conv147, i16* %a2p, align 2, !tbaa !16
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.144, %if.then.143
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.138
  br label %if.end.166

if.else.150:                                      ; preds = %if.end.127
  %83 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv151 = sext i16 %83 to i32
  %cmp152 = icmp sle i32 %conv151, -12416
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %if.else.150
  store i16 -12288, i16* %a2p, align 2, !tbaa !16
  br label %if.end.165

if.else.155:                                      ; preds = %if.else.150
  %84 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv156 = sext i16 %84 to i32
  %cmp157 = icmp sge i32 %conv156, 12160
  br i1 %cmp157, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %if.else.155
  store i16 12288, i16* %a2p, align 2, !tbaa !16
  br label %if.end.164

if.else.160:                                      ; preds = %if.else.155
  %85 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv161 = sext i16 %85 to i32
  %add162 = add nsw i32 %conv161, 128
  %conv163 = trunc i32 %add162 to i16
  store i16 %conv163, i16* %a2p, align 2, !tbaa !16
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.160, %if.then.159
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.154
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.149
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.else.75
  %86 = load i16, i16* %a2p, align 2, !tbaa !16
  %87 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a168 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %87, i32 0, i32 5
  %arrayidx169 = getelementptr inbounds [2 x i16], [2 x i16]* %a168, i32 0, i64 1
  store i16 %86, i16* %arrayidx169, align 2, !tbaa !16
  %88 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a170 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %88, i32 0, i32 5
  %arrayidx171 = getelementptr inbounds [2 x i16], [2 x i16]* %a170, i32 0, i64 0
  %89 = load i16, i16* %arrayidx171, align 2, !tbaa !16
  %conv172 = sext i16 %89 to i32
  %shr173 = ashr i32 %conv172, 8
  %90 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a174 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %90, i32 0, i32 5
  %arrayidx175 = getelementptr inbounds [2 x i16], [2 x i16]* %a174, i32 0, i64 0
  %91 = load i16, i16* %arrayidx175, align 2, !tbaa !16
  %conv176 = sext i16 %91 to i32
  %sub177 = sub nsw i32 %conv176, %shr173
  %conv178 = trunc i32 %sub177 to i16
  store i16 %conv178, i16* %arrayidx175, align 2, !tbaa !16
  %92 = load i32, i32* %dqsez.addr, align 4, !tbaa !14
  %cmp179 = icmp ne i32 %92, 0
  br i1 %cmp179, label %if.then.181, label %if.end.198

if.then.181:                                      ; preds = %if.end.167
  %93 = load i16, i16* %pks1, align 2, !tbaa !16
  %conv182 = sext i16 %93 to i32
  %cmp183 = icmp eq i32 %conv182, 0
  br i1 %cmp183, label %if.then.185, label %if.else.191

if.then.185:                                      ; preds = %if.then.181
  %94 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a186 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %94, i32 0, i32 5
  %arrayidx187 = getelementptr inbounds [2 x i16], [2 x i16]* %a186, i32 0, i64 0
  %95 = load i16, i16* %arrayidx187, align 2, !tbaa !16
  %conv188 = sext i16 %95 to i32
  %add189 = add nsw i32 %conv188, 192
  %conv190 = trunc i32 %add189 to i16
  store i16 %conv190, i16* %arrayidx187, align 2, !tbaa !16
  br label %if.end.197

if.else.191:                                      ; preds = %if.then.181
  %96 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a192 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %96, i32 0, i32 5
  %arrayidx193 = getelementptr inbounds [2 x i16], [2 x i16]* %a192, i32 0, i64 0
  %97 = load i16, i16* %arrayidx193, align 2, !tbaa !16
  %conv194 = sext i16 %97 to i32
  %sub195 = sub nsw i32 %conv194, 192
  %conv196 = trunc i32 %sub195 to i16
  store i16 %conv196, i16* %arrayidx193, align 2, !tbaa !16
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.191, %if.then.185
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.167
  %98 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv199 = sext i16 %98 to i32
  %sub200 = sub nsw i32 15360, %conv199
  %conv201 = trunc i32 %sub200 to i16
  store i16 %conv201, i16* %a1ul, align 2, !tbaa !16
  %99 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a202 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %99, i32 0, i32 5
  %arrayidx203 = getelementptr inbounds [2 x i16], [2 x i16]* %a202, i32 0, i64 0
  %100 = load i16, i16* %arrayidx203, align 2, !tbaa !16
  %conv204 = sext i16 %100 to i32
  %101 = load i16, i16* %a1ul, align 2, !tbaa !16
  %conv205 = sext i16 %101 to i32
  %sub206 = sub nsw i32 0, %conv205
  %cmp207 = icmp slt i32 %conv204, %sub206
  br i1 %cmp207, label %if.then.209, label %if.else.215

if.then.209:                                      ; preds = %if.end.198
  %102 = load i16, i16* %a1ul, align 2, !tbaa !16
  %conv210 = sext i16 %102 to i32
  %sub211 = sub nsw i32 0, %conv210
  %conv212 = trunc i32 %sub211 to i16
  %103 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a213 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %103, i32 0, i32 5
  %arrayidx214 = getelementptr inbounds [2 x i16], [2 x i16]* %a213, i32 0, i64 0
  store i16 %conv212, i16* %arrayidx214, align 2, !tbaa !16
  br label %if.end.226

if.else.215:                                      ; preds = %if.end.198
  %104 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a216 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %104, i32 0, i32 5
  %arrayidx217 = getelementptr inbounds [2 x i16], [2 x i16]* %a216, i32 0, i64 0
  %105 = load i16, i16* %arrayidx217, align 2, !tbaa !16
  %conv218 = sext i16 %105 to i32
  %106 = load i16, i16* %a1ul, align 2, !tbaa !16
  %conv219 = sext i16 %106 to i32
  %cmp220 = icmp sgt i32 %conv218, %conv219
  br i1 %cmp220, label %if.then.222, label %if.end.225

if.then.222:                                      ; preds = %if.else.215
  %107 = load i16, i16* %a1ul, align 2, !tbaa !16
  %108 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %a223 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %108, i32 0, i32 5
  %arrayidx224 = getelementptr inbounds [2 x i16], [2 x i16]* %a223, i32 0, i64 0
  store i16 %107, i16* %arrayidx224, align 2, !tbaa !16
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.222, %if.else.215
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.then.209
  store i32 0, i32* %cnt, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.226
  %109 = load i32, i32* %cnt, align 4, !tbaa !14
  %cmp227 = icmp slt i32 %109, 6
  br i1 %cmp227, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %110 = load i32, i32* %code_size.addr, align 4, !tbaa !14
  %cmp229 = icmp eq i32 %110, 5
  br i1 %cmp229, label %if.then.231, label %if.else.242

if.then.231:                                      ; preds = %for.body
  %111 = load i32, i32* %cnt, align 4, !tbaa !14
  %idxprom = sext i32 %111 to i64
  %112 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b232 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %112, i32 0, i32 6
  %arrayidx233 = getelementptr inbounds [6 x i16], [6 x i16]* %b232, i32 0, i64 %idxprom
  %113 = load i16, i16* %arrayidx233, align 2, !tbaa !16
  %conv234 = sext i16 %113 to i32
  %shr235 = ashr i32 %conv234, 9
  %114 = load i32, i32* %cnt, align 4, !tbaa !14
  %idxprom236 = sext i32 %114 to i64
  %115 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b237 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %115, i32 0, i32 6
  %arrayidx238 = getelementptr inbounds [6 x i16], [6 x i16]* %b237, i32 0, i64 %idxprom236
  %116 = load i16, i16* %arrayidx238, align 2, !tbaa !16
  %conv239 = sext i16 %116 to i32
  %sub240 = sub nsw i32 %conv239, %shr235
  %conv241 = trunc i32 %sub240 to i16
  store i16 %conv241, i16* %arrayidx238, align 2, !tbaa !16
  br label %if.end.254

if.else.242:                                      ; preds = %for.body
  %117 = load i32, i32* %cnt, align 4, !tbaa !14
  %idxprom243 = sext i32 %117 to i64
  %118 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b244 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %118, i32 0, i32 6
  %arrayidx245 = getelementptr inbounds [6 x i16], [6 x i16]* %b244, i32 0, i64 %idxprom243
  %119 = load i16, i16* %arrayidx245, align 2, !tbaa !16
  %conv246 = sext i16 %119 to i32
  %shr247 = ashr i32 %conv246, 8
  %120 = load i32, i32* %cnt, align 4, !tbaa !14
  %idxprom248 = sext i32 %120 to i64
  %121 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b249 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %121, i32 0, i32 6
  %arrayidx250 = getelementptr inbounds [6 x i16], [6 x i16]* %b249, i32 0, i64 %idxprom248
  %122 = load i16, i16* %arrayidx250, align 2, !tbaa !16
  %conv251 = sext i16 %122 to i32
  %sub252 = sub nsw i32 %conv251, %shr247
  %conv253 = trunc i32 %sub252 to i16
  store i16 %conv253, i16* %arrayidx250, align 2, !tbaa !16
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.242, %if.then.231
  %123 = load i32, i32* %dq.addr, align 4, !tbaa !14
  %and255 = and i32 %123, 32767
  %tobool256 = icmp ne i32 %and255, 0
  br i1 %tobool256, label %if.then.257, label %if.end.280

if.then.257:                                      ; preds = %if.end.254
  %124 = load i32, i32* %dq.addr, align 4, !tbaa !14
  %125 = load i32, i32* %cnt, align 4, !tbaa !14
  %idxprom258 = sext i32 %125 to i64
  %126 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dq259 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %126, i32 0, i32 8
  %arrayidx260 = getelementptr inbounds [6 x i16], [6 x i16]* %dq259, i32 0, i64 %idxprom258
  %127 = load i16, i16* %arrayidx260, align 2, !tbaa !16
  %conv261 = sext i16 %127 to i32
  %xor262 = xor i32 %124, %conv261
  %cmp263 = icmp sge i32 %xor262, 0
  br i1 %cmp263, label %if.then.265, label %if.else.272

if.then.265:                                      ; preds = %if.then.257
  %128 = load i32, i32* %cnt, align 4, !tbaa !14
  %idxprom266 = sext i32 %128 to i64
  %129 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b267 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %129, i32 0, i32 6
  %arrayidx268 = getelementptr inbounds [6 x i16], [6 x i16]* %b267, i32 0, i64 %idxprom266
  %130 = load i16, i16* %arrayidx268, align 2, !tbaa !16
  %conv269 = sext i16 %130 to i32
  %add270 = add nsw i32 %conv269, 128
  %conv271 = trunc i32 %add270 to i16
  store i16 %conv271, i16* %arrayidx268, align 2, !tbaa !16
  br label %if.end.279

if.else.272:                                      ; preds = %if.then.257
  %131 = load i32, i32* %cnt, align 4, !tbaa !14
  %idxprom273 = sext i32 %131 to i64
  %132 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %b274 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %132, i32 0, i32 6
  %arrayidx275 = getelementptr inbounds [6 x i16], [6 x i16]* %b274, i32 0, i64 %idxprom273
  %133 = load i16, i16* %arrayidx275, align 2, !tbaa !16
  %conv276 = sext i16 %133 to i32
  %sub277 = sub nsw i32 %conv276, 128
  %conv278 = trunc i32 %sub277 to i16
  store i16 %conv278, i16* %arrayidx275, align 2, !tbaa !16
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.272, %if.then.265
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.end.254
  br label %for.inc

for.inc:                                          ; preds = %if.end.280
  %134 = load i32, i32* %cnt, align 4, !tbaa !14
  %inc = add nsw i32 %134, 1
  store i32 %inc, i32* %cnt, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.281

if.end.281:                                       ; preds = %for.end, %if.then.61
  store i32 5, i32* %cnt, align 4, !tbaa !14
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.293, %if.end.281
  %135 = load i32, i32* %cnt, align 4, !tbaa !14
  %cmp283 = icmp sgt i32 %135, 0
  br i1 %cmp283, label %for.body.285, label %for.end.294

for.body.285:                                     ; preds = %for.cond.282
  %136 = load i32, i32* %cnt, align 4, !tbaa !14
  %sub286 = sub nsw i32 %136, 1
  %idxprom287 = sext i32 %sub286 to i64
  %137 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dq288 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %137, i32 0, i32 8
  %arrayidx289 = getelementptr inbounds [6 x i16], [6 x i16]* %dq288, i32 0, i64 %idxprom287
  %138 = load i16, i16* %arrayidx289, align 2, !tbaa !16
  %139 = load i32, i32* %cnt, align 4, !tbaa !14
  %idxprom290 = sext i32 %139 to i64
  %140 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dq291 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %140, i32 0, i32 8
  %arrayidx292 = getelementptr inbounds [6 x i16], [6 x i16]* %dq291, i32 0, i64 %idxprom290
  store i16 %138, i16* %arrayidx292, align 2, !tbaa !16
  br label %for.inc.293

for.inc.293:                                      ; preds = %for.body.285
  %141 = load i32, i32* %cnt, align 4, !tbaa !14
  %dec = add nsw i32 %141, -1
  store i32 %dec, i32* %cnt, align 4, !tbaa !14
  br label %for.cond.282

for.end.294:                                      ; preds = %for.cond.282
  %142 = load i16, i16* %mag, align 2, !tbaa !16
  %conv295 = sext i16 %142 to i32
  %cmp296 = icmp eq i32 %conv295, 0
  br i1 %cmp296, label %if.then.298, label %if.else.305

if.then.298:                                      ; preds = %for.end.294
  %143 = load i32, i32* %dq.addr, align 4, !tbaa !14
  %cmp299 = icmp sge i32 %143, 0
  %cond301 = select i1 %cmp299, i32 32, i32 64544
  %conv302 = trunc i32 %cond301 to i16
  %144 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dq303 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %144, i32 0, i32 8
  %arrayidx304 = getelementptr inbounds [6 x i16], [6 x i16]* %dq303, i32 0, i64 0
  store i16 %conv302, i16* %arrayidx304, align 2, !tbaa !16
  br label %if.end.332

if.else.305:                                      ; preds = %for.end.294
  %145 = load i16, i16* %mag, align 2, !tbaa !16
  %conv306 = sext i16 %145 to i32
  %call = call i32 @quan(i32 %conv306, i16* getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i32 0, i32 0), i32 15)
  %conv307 = trunc i32 %call to i16
  store i16 %conv307, i16* %exp, align 2, !tbaa !16
  %146 = load i32, i32* %dq.addr, align 4, !tbaa !14
  %cmp308 = icmp sge i32 %146, 0
  br i1 %cmp308, label %cond.true.310, label %cond.false.318

cond.true.310:                                    ; preds = %if.else.305
  %147 = load i16, i16* %exp, align 2, !tbaa !16
  %conv311 = sext i16 %147 to i32
  %shl312 = shl i32 %conv311, 6
  %148 = load i16, i16* %mag, align 2, !tbaa !16
  %conv313 = sext i16 %148 to i32
  %shl314 = shl i32 %conv313, 6
  %149 = load i16, i16* %exp, align 2, !tbaa !16
  %conv315 = sext i16 %149 to i32
  %shr316 = ashr i32 %shl314, %conv315
  %add317 = add nsw i32 %shl312, %shr316
  br label %cond.end.327

cond.false.318:                                   ; preds = %if.else.305
  %150 = load i16, i16* %exp, align 2, !tbaa !16
  %conv319 = sext i16 %150 to i32
  %shl320 = shl i32 %conv319, 6
  %151 = load i16, i16* %mag, align 2, !tbaa !16
  %conv321 = sext i16 %151 to i32
  %shl322 = shl i32 %conv321, 6
  %152 = load i16, i16* %exp, align 2, !tbaa !16
  %conv323 = sext i16 %152 to i32
  %shr324 = ashr i32 %shl322, %conv323
  %add325 = add nsw i32 %shl320, %shr324
  %sub326 = sub nsw i32 %add325, 1024
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.false.318, %cond.true.310
  %cond328 = phi i32 [ %add317, %cond.true.310 ], [ %sub326, %cond.false.318 ]
  %conv329 = trunc i32 %cond328 to i16
  %153 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dq330 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %153, i32 0, i32 8
  %arrayidx331 = getelementptr inbounds [6 x i16], [6 x i16]* %dq330, i32 0, i64 0
  store i16 %conv329, i16* %arrayidx331, align 2, !tbaa !16
  br label %if.end.332

if.end.332:                                       ; preds = %cond.end.327, %if.then.298
  %154 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %sr333 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %154, i32 0, i32 9
  %arrayidx334 = getelementptr inbounds [2 x i16], [2 x i16]* %sr333, i32 0, i64 0
  %155 = load i16, i16* %arrayidx334, align 2, !tbaa !16
  %156 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %sr335 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %156, i32 0, i32 9
  %arrayidx336 = getelementptr inbounds [2 x i16], [2 x i16]* %sr335, i32 0, i64 1
  store i16 %155, i16* %arrayidx336, align 2, !tbaa !16
  %157 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %cmp337 = icmp eq i32 %157, 0
  br i1 %cmp337, label %if.then.339, label %if.else.342

if.then.339:                                      ; preds = %if.end.332
  %158 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %sr340 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %158, i32 0, i32 9
  %arrayidx341 = getelementptr inbounds [2 x i16], [2 x i16]* %sr340, i32 0, i64 0
  store i16 32, i16* %arrayidx341, align 2, !tbaa !16
  br label %if.end.382

if.else.342:                                      ; preds = %if.end.332
  %159 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %cmp343 = icmp sgt i32 %159, 0
  br i1 %cmp343, label %if.then.345, label %if.else.357

if.then.345:                                      ; preds = %if.else.342
  %160 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %call346 = call i32 @quan(i32 %160, i16* getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i32 0, i32 0), i32 15)
  %conv347 = trunc i32 %call346 to i16
  store i16 %conv347, i16* %exp, align 2, !tbaa !16
  %161 = load i16, i16* %exp, align 2, !tbaa !16
  %conv348 = sext i16 %161 to i32
  %shl349 = shl i32 %conv348, 6
  %162 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %shl350 = shl i32 %162, 6
  %163 = load i16, i16* %exp, align 2, !tbaa !16
  %conv351 = sext i16 %163 to i32
  %shr352 = ashr i32 %shl350, %conv351
  %add353 = add nsw i32 %shl349, %shr352
  %conv354 = trunc i32 %add353 to i16
  %164 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %sr355 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %164, i32 0, i32 9
  %arrayidx356 = getelementptr inbounds [2 x i16], [2 x i16]* %sr355, i32 0, i64 0
  store i16 %conv354, i16* %arrayidx356, align 2, !tbaa !16
  br label %if.end.381

if.else.357:                                      ; preds = %if.else.342
  %165 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %cmp358 = icmp sgt i32 %165, -32768
  br i1 %cmp358, label %if.then.360, label %if.else.377

if.then.360:                                      ; preds = %if.else.357
  %166 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %sub361 = sub nsw i32 0, %166
  %conv362 = trunc i32 %sub361 to i16
  store i16 %conv362, i16* %mag, align 2, !tbaa !16
  %167 = load i16, i16* %mag, align 2, !tbaa !16
  %conv363 = sext i16 %167 to i32
  %call364 = call i32 @quan(i32 %conv363, i16* getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i32 0, i32 0), i32 15)
  %conv365 = trunc i32 %call364 to i16
  store i16 %conv365, i16* %exp, align 2, !tbaa !16
  %168 = load i16, i16* %exp, align 2, !tbaa !16
  %conv366 = sext i16 %168 to i32
  %shl367 = shl i32 %conv366, 6
  %169 = load i16, i16* %mag, align 2, !tbaa !16
  %conv368 = sext i16 %169 to i32
  %shl369 = shl i32 %conv368, 6
  %170 = load i16, i16* %exp, align 2, !tbaa !16
  %conv370 = sext i16 %170 to i32
  %shr371 = ashr i32 %shl369, %conv370
  %add372 = add nsw i32 %shl367, %shr371
  %sub373 = sub nsw i32 %add372, 1024
  %conv374 = trunc i32 %sub373 to i16
  %171 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %sr375 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %171, i32 0, i32 9
  %arrayidx376 = getelementptr inbounds [2 x i16], [2 x i16]* %sr375, i32 0, i64 0
  store i16 %conv374, i16* %arrayidx376, align 2, !tbaa !16
  br label %if.end.380

if.else.377:                                      ; preds = %if.else.357
  %172 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %sr378 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %172, i32 0, i32 9
  %arrayidx379 = getelementptr inbounds [2 x i16], [2 x i16]* %sr378, i32 0, i64 0
  store i16 -992, i16* %arrayidx379, align 2, !tbaa !16
  br label %if.end.380

if.end.380:                                       ; preds = %if.else.377, %if.then.360
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.then.345
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.then.339
  %173 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %pk383 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %173, i32 0, i32 7
  %arrayidx384 = getelementptr inbounds [2 x i16], [2 x i16]* %pk383, i32 0, i64 0
  %174 = load i16, i16* %arrayidx384, align 2, !tbaa !16
  %175 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %pk385 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %175, i32 0, i32 7
  %arrayidx386 = getelementptr inbounds [2 x i16], [2 x i16]* %pk385, i32 0, i64 1
  store i16 %174, i16* %arrayidx386, align 2, !tbaa !16
  %176 = load i16, i16* %pk0, align 2, !tbaa !16
  %177 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %pk387 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %177, i32 0, i32 7
  %arrayidx388 = getelementptr inbounds [2 x i16], [2 x i16]* %pk387, i32 0, i64 0
  store i16 %176, i16* %arrayidx388, align 2, !tbaa !16
  %178 = load i8, i8* %tr, align 1, !tbaa !18
  %conv389 = sext i8 %178 to i32
  %cmp390 = icmp eq i32 %conv389, 1
  br i1 %cmp390, label %if.then.392, label %if.else.394

if.then.392:                                      ; preds = %if.end.382
  %179 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %td393 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %179, i32 0, i32 10
  store i8 0, i8* %td393, align 1, !tbaa !17
  br label %if.end.403

if.else.394:                                      ; preds = %if.end.382
  %180 = load i16, i16* %a2p, align 2, !tbaa !16
  %conv395 = sext i16 %180 to i32
  %cmp396 = icmp slt i32 %conv395, -11776
  br i1 %cmp396, label %if.then.398, label %if.else.400

if.then.398:                                      ; preds = %if.else.394
  %181 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %td399 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %181, i32 0, i32 10
  store i8 1, i8* %td399, align 1, !tbaa !17
  br label %if.end.402

if.else.400:                                      ; preds = %if.else.394
  %182 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %td401 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %182, i32 0, i32 10
  store i8 0, i8* %td401, align 1, !tbaa !17
  br label %if.end.402

if.end.402:                                       ; preds = %if.else.400, %if.then.398
  br label %if.end.403

if.end.403:                                       ; preds = %if.end.402, %if.then.392
  %183 = load i32, i32* %fi.addr, align 4, !tbaa !14
  %184 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dms = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %184, i32 0, i32 2
  %185 = load i16, i16* %dms, align 2, !tbaa !11
  %conv404 = sext i16 %185 to i32
  %sub405 = sub nsw i32 %183, %conv404
  %shr406 = ashr i32 %sub405, 5
  %186 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dms407 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %186, i32 0, i32 2
  %187 = load i16, i16* %dms407, align 2, !tbaa !11
  %conv408 = sext i16 %187 to i32
  %add409 = add nsw i32 %conv408, %shr406
  %conv410 = trunc i32 %add409 to i16
  store i16 %conv410, i16* %dms407, align 2, !tbaa !11
  %188 = load i32, i32* %fi.addr, align 4, !tbaa !14
  %shl411 = shl i32 %188, 2
  %189 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dml = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %189, i32 0, i32 3
  %190 = load i16, i16* %dml, align 2, !tbaa !12
  %conv412 = sext i16 %190 to i32
  %sub413 = sub nsw i32 %shl411, %conv412
  %shr414 = ashr i32 %sub413, 7
  %191 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dml415 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %191, i32 0, i32 3
  %192 = load i16, i16* %dml415, align 2, !tbaa !12
  %conv416 = sext i16 %192 to i32
  %add417 = add nsw i32 %conv416, %shr414
  %conv418 = trunc i32 %add417 to i16
  store i16 %conv418, i16* %dml415, align 2, !tbaa !12
  %193 = load i8, i8* %tr, align 1, !tbaa !18
  %conv419 = sext i8 %193 to i32
  %cmp420 = icmp eq i32 %conv419, 1
  br i1 %cmp420, label %if.then.422, label %if.else.423

if.then.422:                                      ; preds = %if.end.403
  %194 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %194, i32 0, i32 4
  store i16 256, i16* %ap, align 2, !tbaa !13
  br label %if.end.483

if.else.423:                                      ; preds = %if.end.403
  %195 = load i32, i32* %y.addr, align 4, !tbaa !14
  %cmp424 = icmp slt i32 %195, 1536
  br i1 %cmp424, label %if.then.426, label %if.else.435

if.then.426:                                      ; preds = %if.else.423
  %196 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap427 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %196, i32 0, i32 4
  %197 = load i16, i16* %ap427, align 2, !tbaa !13
  %conv428 = sext i16 %197 to i32
  %sub429 = sub nsw i32 512, %conv428
  %shr430 = ashr i32 %sub429, 4
  %198 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap431 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %198, i32 0, i32 4
  %199 = load i16, i16* %ap431, align 2, !tbaa !13
  %conv432 = sext i16 %199 to i32
  %add433 = add nsw i32 %conv432, %shr430
  %conv434 = trunc i32 %add433 to i16
  store i16 %conv434, i16* %ap431, align 2, !tbaa !13
  br label %if.end.482

if.else.435:                                      ; preds = %if.else.423
  %200 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %td436 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %200, i32 0, i32 10
  %201 = load i8, i8* %td436, align 1, !tbaa !17
  %conv437 = sext i8 %201 to i32
  %cmp438 = icmp eq i32 %conv437, 1
  br i1 %cmp438, label %if.then.440, label %if.else.449

if.then.440:                                      ; preds = %if.else.435
  %202 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap441 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %202, i32 0, i32 4
  %203 = load i16, i16* %ap441, align 2, !tbaa !13
  %conv442 = sext i16 %203 to i32
  %sub443 = sub nsw i32 512, %conv442
  %shr444 = ashr i32 %sub443, 4
  %204 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap445 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %204, i32 0, i32 4
  %205 = load i16, i16* %ap445, align 2, !tbaa !13
  %conv446 = sext i16 %205 to i32
  %add447 = add nsw i32 %conv446, %shr444
  %conv448 = trunc i32 %add447 to i16
  store i16 %conv448, i16* %ap445, align 2, !tbaa !13
  br label %if.end.481

if.else.449:                                      ; preds = %if.else.435
  %206 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dms450 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %206, i32 0, i32 2
  %207 = load i16, i16* %dms450, align 2, !tbaa !11
  %conv451 = sext i16 %207 to i32
  %shl452 = shl i32 %conv451, 2
  %208 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dml453 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %208, i32 0, i32 3
  %209 = load i16, i16* %dml453, align 2, !tbaa !12
  %conv454 = sext i16 %209 to i32
  %sub455 = sub nsw i32 %shl452, %conv454
  %call456 = call i32 @abs(i32 %sub455) #5
  %210 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %dml457 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %210, i32 0, i32 3
  %211 = load i16, i16* %dml457, align 2, !tbaa !12
  %conv458 = sext i16 %211 to i32
  %shr459 = ashr i32 %conv458, 3
  %cmp460 = icmp sge i32 %call456, %shr459
  br i1 %cmp460, label %if.then.462, label %if.else.471

if.then.462:                                      ; preds = %if.else.449
  %212 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap463 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %212, i32 0, i32 4
  %213 = load i16, i16* %ap463, align 2, !tbaa !13
  %conv464 = sext i16 %213 to i32
  %sub465 = sub nsw i32 512, %conv464
  %shr466 = ashr i32 %sub465, 4
  %214 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap467 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %214, i32 0, i32 4
  %215 = load i16, i16* %ap467, align 2, !tbaa !13
  %conv468 = sext i16 %215 to i32
  %add469 = add nsw i32 %conv468, %shr466
  %conv470 = trunc i32 %add469 to i16
  store i16 %conv470, i16* %ap467, align 2, !tbaa !13
  br label %if.end.480

if.else.471:                                      ; preds = %if.else.449
  %216 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap472 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %216, i32 0, i32 4
  %217 = load i16, i16* %ap472, align 2, !tbaa !13
  %conv473 = sext i16 %217 to i32
  %sub474 = sub nsw i32 0, %conv473
  %shr475 = ashr i32 %sub474, 4
  %218 = load %struct.g72x_state*, %struct.g72x_state** %state_ptr.addr, align 8, !tbaa !2
  %ap476 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %218, i32 0, i32 4
  %219 = load i16, i16* %ap476, align 2, !tbaa !13
  %conv477 = sext i16 %219 to i32
  %add478 = add nsw i32 %conv477, %shr475
  %conv479 = trunc i32 %add478 to i16
  store i16 %conv479, i16* %ap476, align 2, !tbaa !13
  br label %if.end.480

if.end.480:                                       ; preds = %if.else.471, %if.then.462
  br label %if.end.481

if.end.481:                                       ; preds = %if.end.480, %if.then.440
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.481, %if.then.426
  br label %if.end.483

if.end.483:                                       ; preds = %if.end.482, %if.then.422
  %220 = bitcast i16* %pk0 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %220) #4
  %221 = bitcast i16* %thr1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %221) #4
  %222 = bitcast i16* %ylfrac to i8*
  call void @llvm.lifetime.end(i64 2, i8* %222) #4
  %223 = bitcast i16* %dqthr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %223) #4
  %224 = bitcast i16* %thr2 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %224) #4
  %225 = bitcast i16* %ylint to i8*
  call void @llvm.lifetime.end(i64 2, i8* %225) #4
  call void @llvm.lifetime.end(i64 1, i8* %tr) #4
  %226 = bitcast i16* %uga2b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %226) #4
  %227 = bitcast i16* %fa1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %227) #4
  %228 = bitcast i16* %uga2a to i8*
  call void @llvm.lifetime.end(i64 2, i8* %228) #4
  %229 = bitcast i16* %pks1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %229) #4
  %230 = bitcast i16* %ua2 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %230) #4
  %231 = bitcast i16* %a1ul to i8*
  call void @llvm.lifetime.end(i64 2, i8* %231) #4
  %232 = bitcast i16* %a2p to i8*
  call void @llvm.lifetime.end(i64 2, i8* %232) #4
  %233 = bitcast i16* %mant to i8*
  call void @llvm.lifetime.end(i64 2, i8* %233) #4
  %234 = bitcast i16* %exp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %234) #4
  %235 = bitcast i16* %mag to i8*
  call void @llvm.lifetime.end(i64 2, i8* %235) #4
  %236 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @tandem_adjust_alaw(i32 %sr, i32 %se, i32 %y, i32 %i, i32 %sign, i16* %qtab) #0 {
entry:
  %retval = alloca i32, align 4
  %sr.addr = alloca i32, align 4
  %se.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %sign.addr = alloca i32, align 4
  %qtab.addr = alloca i16*, align 8
  %sp = alloca i8, align 1
  %dx = alloca i16, align 2
  %id = alloca i8, align 1
  %sd = alloca i32, align 4
  %im = alloca i32, align 4
  %imx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %sr, i32* %sr.addr, align 4, !tbaa !14
  store i32 %se, i32* %se.addr, align 4, !tbaa !14
  store i32 %y, i32* %y.addr, align 4, !tbaa !14
  store i32 %i, i32* %i.addr, align 4, !tbaa !14
  store i32 %sign, i32* %sign.addr, align 4, !tbaa !14
  store i16* %qtab, i16** %qtab.addr, align 8, !tbaa !2
  call void @llvm.lifetime.start(i64 1, i8* %sp) #4
  %0 = bitcast i16* %dx to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #4
  call void @llvm.lifetime.start(i64 1, i8* %id) #4
  %1 = bitcast i32* %sd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  %2 = bitcast i32* %im to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  %3 = bitcast i32* %imx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #4
  %4 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %cmp = icmp sle i32 %4, -32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %sr.addr, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %shr = ashr i32 %5, 1
  %shl = shl i32 %shr, 3
  %call = call i32 (i32, ...) bitcast (i32 (...)* @linear2alaw to i32 (i32, ...)*)(i32 %shl)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %sp, align 1, !tbaa !18
  %6 = load i8, i8* %sp, align 1, !tbaa !18
  %conv1 = zext i8 %6 to i32
  %call2 = call i32 (i32, ...) bitcast (i32 (...)* @alaw2linear to i32 (i32, ...)*)(i32 %conv1)
  %shr3 = ashr i32 %call2, 2
  %7 = load i32, i32* %se.addr, align 4, !tbaa !14
  %sub = sub nsw i32 %shr3, %7
  %conv4 = trunc i32 %sub to i16
  store i16 %conv4, i16* %dx, align 2, !tbaa !16
  %8 = load i16, i16* %dx, align 2, !tbaa !16
  %conv5 = sext i16 %8 to i32
  %9 = load i32, i32* %y.addr, align 4, !tbaa !14
  %10 = load i16*, i16** %qtab.addr, align 8, !tbaa !2
  %11 = load i32, i32* %sign.addr, align 4, !tbaa !14
  %sub6 = sub nsw i32 %11, 1
  %call7 = call i32 @quantize(i32 %conv5, i32 %9, i16* %10, i32 %sub6)
  %conv8 = trunc i32 %call7 to i8
  store i8 %conv8, i8* %id, align 1, !tbaa !18
  %12 = load i8, i8* %id, align 1, !tbaa !18
  %conv9 = sext i8 %12 to i32
  %13 = load i32, i32* %i.addr, align 4, !tbaa !14
  %cmp10 = icmp eq i32 %conv9, %13
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %14 = load i8, i8* %sp, align 1, !tbaa !18
  %conv13 = zext i8 %14 to i32
  store i32 %conv13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %15 = load i32, i32* %i.addr, align 4, !tbaa !14
  %16 = load i32, i32* %sign.addr, align 4, !tbaa !14
  %xor = xor i32 %15, %16
  store i32 %xor, i32* %im, align 4, !tbaa !14
  %17 = load i8, i8* %id, align 1, !tbaa !18
  %conv14 = sext i8 %17 to i32
  %18 = load i32, i32* %sign.addr, align 4, !tbaa !14
  %xor15 = xor i32 %conv14, %18
  store i32 %xor15, i32* %imx, align 4, !tbaa !14
  %19 = load i32, i32* %imx, align 4, !tbaa !14
  %20 = load i32, i32* %im, align 4, !tbaa !14
  %cmp16 = icmp sgt i32 %19, %20
  br i1 %cmp16, label %if.then.18, label %if.else.40

if.then.18:                                       ; preds = %if.else
  %21 = load i8, i8* %sp, align 1, !tbaa !18
  %conv19 = zext i8 %21 to i32
  %and = and i32 %conv19, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.20, label %if.else.28

if.then.20:                                       ; preds = %if.then.18
  %22 = load i8, i8* %sp, align 1, !tbaa !18
  %conv21 = zext i8 %22 to i32
  %cmp22 = icmp eq i32 %conv21, 213
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %23 = load i8, i8* %sp, align 1, !tbaa !18
  %conv24 = zext i8 %23 to i32
  %xor25 = xor i32 %conv24, 85
  %sub26 = sub nsw i32 %xor25, 1
  %xor27 = xor i32 %sub26, 85
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 85, %cond.true ], [ %xor27, %cond.false ]
  store i32 %cond, i32* %sd, align 4, !tbaa !14
  br label %if.end.39

if.else.28:                                       ; preds = %if.then.18
  %24 = load i8, i8* %sp, align 1, !tbaa !18
  %conv29 = zext i8 %24 to i32
  %cmp30 = icmp eq i32 %conv29, 42
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %if.else.28
  br label %cond.end.37

cond.false.33:                                    ; preds = %if.else.28
  %25 = load i8, i8* %sp, align 1, !tbaa !18
  %conv34 = zext i8 %25 to i32
  %xor35 = xor i32 %conv34, 85
  %add = add nsw i32 %xor35, 1
  %xor36 = xor i32 %add, 85
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.32
  %cond38 = phi i32 [ 42, %cond.true.32 ], [ %xor36, %cond.false.33 ]
  store i32 %cond38, i32* %sd, align 4, !tbaa !14
  br label %if.end.39

if.end.39:                                        ; preds = %cond.end.37, %cond.end
  br label %if.end.69

if.else.40:                                       ; preds = %if.else
  %26 = load i8, i8* %sp, align 1, !tbaa !18
  %conv41 = zext i8 %26 to i32
  %and42 = and i32 %conv41, 128
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.56

if.then.44:                                       ; preds = %if.else.40
  %27 = load i8, i8* %sp, align 1, !tbaa !18
  %conv45 = zext i8 %27 to i32
  %cmp46 = icmp eq i32 %conv45, 170
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.then.44
  br label %cond.end.54

cond.false.49:                                    ; preds = %if.then.44
  %28 = load i8, i8* %sp, align 1, !tbaa !18
  %conv50 = zext i8 %28 to i32
  %xor51 = xor i32 %conv50, 85
  %add52 = add nsw i32 %xor51, 1
  %xor53 = xor i32 %add52, 85
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.49, %cond.true.48
  %cond55 = phi i32 [ 170, %cond.true.48 ], [ %xor53, %cond.false.49 ]
  store i32 %cond55, i32* %sd, align 4, !tbaa !14
  br label %if.end.68

if.else.56:                                       ; preds = %if.else.40
  %29 = load i8, i8* %sp, align 1, !tbaa !18
  %conv57 = zext i8 %29 to i32
  %cmp58 = icmp eq i32 %conv57, 85
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %if.else.56
  br label %cond.end.66

cond.false.61:                                    ; preds = %if.else.56
  %30 = load i8, i8* %sp, align 1, !tbaa !18
  %conv62 = zext i8 %30 to i32
  %xor63 = xor i32 %conv62, 85
  %sub64 = sub nsw i32 %xor63, 1
  %xor65 = xor i32 %sub64, 85
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.61, %cond.true.60
  %cond67 = phi i32 [ 213, %cond.true.60 ], [ %xor65, %cond.false.61 ]
  store i32 %cond67, i32* %sd, align 4, !tbaa !14
  br label %if.end.68

if.end.68:                                        ; preds = %cond.end.66, %cond.end.54
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.39
  %31 = load i32, i32* %sd, align 4, !tbaa !14
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.69, %if.then.12
  %32 = bitcast i32* %imx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #4
  %33 = bitcast i32* %im to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #4
  %34 = bitcast i32* %sd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #4
  call void @llvm.lifetime.end(i64 1, i8* %id) #4
  %35 = bitcast i16* %dx to i8*
  call void @llvm.lifetime.end(i64 2, i8* %35) #4
  call void @llvm.lifetime.end(i64 1, i8* %sp) #4
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @linear2alaw(...) #3

declare i32 @alaw2linear(...) #3

; Function Attrs: nounwind ssp uwtable
define i32 @tandem_adjust_ulaw(i32 %sr, i32 %se, i32 %y, i32 %i, i32 %sign, i16* %qtab) #0 {
entry:
  %retval = alloca i32, align 4
  %sr.addr = alloca i32, align 4
  %se.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %sign.addr = alloca i32, align 4
  %qtab.addr = alloca i16*, align 8
  %sp = alloca i8, align 1
  %dx = alloca i16, align 2
  %id = alloca i8, align 1
  %sd = alloca i32, align 4
  %im = alloca i32, align 4
  %imx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %sr, i32* %sr.addr, align 4, !tbaa !14
  store i32 %se, i32* %se.addr, align 4, !tbaa !14
  store i32 %y, i32* %y.addr, align 4, !tbaa !14
  store i32 %i, i32* %i.addr, align 4, !tbaa !14
  store i32 %sign, i32* %sign.addr, align 4, !tbaa !14
  store i16* %qtab, i16** %qtab.addr, align 8, !tbaa !2
  call void @llvm.lifetime.start(i64 1, i8* %sp) #4
  %0 = bitcast i16* %dx to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #4
  call void @llvm.lifetime.start(i64 1, i8* %id) #4
  %1 = bitcast i32* %sd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  %2 = bitcast i32* %im to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  %3 = bitcast i32* %imx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #4
  %4 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %cmp = icmp sle i32 %4, -32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %sr.addr, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %sr.addr, align 4, !tbaa !14
  %shl = shl i32 %5, 2
  %call = call i32 (i32, ...) bitcast (i32 (...)* @linear2ulaw to i32 (i32, ...)*)(i32 %shl)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %sp, align 1, !tbaa !18
  %6 = load i8, i8* %sp, align 1, !tbaa !18
  %conv1 = zext i8 %6 to i32
  %call2 = call i32 (i32, ...) bitcast (i32 (...)* @ulaw2linear to i32 (i32, ...)*)(i32 %conv1)
  %shr = ashr i32 %call2, 2
  %7 = load i32, i32* %se.addr, align 4, !tbaa !14
  %sub = sub nsw i32 %shr, %7
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, i16* %dx, align 2, !tbaa !16
  %8 = load i16, i16* %dx, align 2, !tbaa !16
  %conv4 = sext i16 %8 to i32
  %9 = load i32, i32* %y.addr, align 4, !tbaa !14
  %10 = load i16*, i16** %qtab.addr, align 8, !tbaa !2
  %11 = load i32, i32* %sign.addr, align 4, !tbaa !14
  %sub5 = sub nsw i32 %11, 1
  %call6 = call i32 @quantize(i32 %conv4, i32 %9, i16* %10, i32 %sub5)
  %conv7 = trunc i32 %call6 to i8
  store i8 %conv7, i8* %id, align 1, !tbaa !18
  %12 = load i8, i8* %id, align 1, !tbaa !18
  %conv8 = sext i8 %12 to i32
  %13 = load i32, i32* %i.addr, align 4, !tbaa !14
  %cmp9 = icmp eq i32 %conv8, %13
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %14 = load i8, i8* %sp, align 1, !tbaa !18
  %conv12 = zext i8 %14 to i32
  store i32 %conv12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %15 = load i32, i32* %i.addr, align 4, !tbaa !14
  %16 = load i32, i32* %sign.addr, align 4, !tbaa !14
  %xor = xor i32 %15, %16
  store i32 %xor, i32* %im, align 4, !tbaa !14
  %17 = load i8, i8* %id, align 1, !tbaa !18
  %conv13 = sext i8 %17 to i32
  %18 = load i32, i32* %sign.addr, align 4, !tbaa !14
  %xor14 = xor i32 %conv13, %18
  store i32 %xor14, i32* %imx, align 4, !tbaa !14
  %19 = load i32, i32* %imx, align 4, !tbaa !14
  %20 = load i32, i32* %im, align 4, !tbaa !14
  %cmp15 = icmp sgt i32 %19, %20
  br i1 %cmp15, label %if.then.17, label %if.else.35

if.then.17:                                       ; preds = %if.else
  %21 = load i8, i8* %sp, align 1, !tbaa !18
  %conv18 = zext i8 %21 to i32
  %and = and i32 %conv18, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %if.then.17
  %22 = load i8, i8* %sp, align 1, !tbaa !18
  %conv20 = zext i8 %22 to i32
  %cmp21 = icmp eq i32 %conv20, 255
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  %23 = load i8, i8* %sp, align 1, !tbaa !18
  %conv23 = zext i8 %23 to i32
  %add = add nsw i32 %conv23, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 126, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %sd, align 4, !tbaa !14
  br label %if.end.34

if.else.24:                                       ; preds = %if.then.17
  %24 = load i8, i8* %sp, align 1, !tbaa !18
  %conv25 = zext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.else.24
  br label %cond.end.32

cond.false.29:                                    ; preds = %if.else.24
  %25 = load i8, i8* %sp, align 1, !tbaa !18
  %conv30 = zext i8 %25 to i32
  %sub31 = sub nsw i32 %conv30, 1
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.29, %cond.true.28
  %cond33 = phi i32 [ 0, %cond.true.28 ], [ %sub31, %cond.false.29 ]
  store i32 %cond33, i32* %sd, align 4, !tbaa !14
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.32, %cond.end
  br label %if.end.60

if.else.35:                                       ; preds = %if.else
  %26 = load i8, i8* %sp, align 1, !tbaa !18
  %conv36 = zext i8 %26 to i32
  %and37 = and i32 %conv36, 128
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.49

if.then.39:                                       ; preds = %if.else.35
  %27 = load i8, i8* %sp, align 1, !tbaa !18
  %conv40 = zext i8 %27 to i32
  %cmp41 = icmp eq i32 %conv40, 128
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %if.then.39
  br label %cond.end.47

cond.false.44:                                    ; preds = %if.then.39
  %28 = load i8, i8* %sp, align 1, !tbaa !18
  %conv45 = zext i8 %28 to i32
  %sub46 = sub nsw i32 %conv45, 1
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.true.43
  %cond48 = phi i32 [ 128, %cond.true.43 ], [ %sub46, %cond.false.44 ]
  store i32 %cond48, i32* %sd, align 4, !tbaa !14
  br label %if.end.59

if.else.49:                                       ; preds = %if.else.35
  %29 = load i8, i8* %sp, align 1, !tbaa !18
  %conv50 = zext i8 %29 to i32
  %cmp51 = icmp eq i32 %conv50, 127
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %if.else.49
  br label %cond.end.57

cond.false.54:                                    ; preds = %if.else.49
  %30 = load i8, i8* %sp, align 1, !tbaa !18
  %conv55 = zext i8 %30 to i32
  %add56 = add nsw i32 %conv55, 1
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.53
  %cond58 = phi i32 [ 254, %cond.true.53 ], [ %add56, %cond.false.54 ]
  store i32 %cond58, i32* %sd, align 4, !tbaa !14
  br label %if.end.59

if.end.59:                                        ; preds = %cond.end.57, %cond.end.47
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.34
  %31 = load i32, i32* %sd, align 4, !tbaa !14
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.11
  %32 = bitcast i32* %imx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #4
  %33 = bitcast i32* %im to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #4
  %34 = bitcast i32* %sd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #4
  call void @llvm.lifetime.end(i64 1, i8* %id) #4
  %35 = bitcast i16* %dx to i8*
  call void @llvm.lifetime.end(i64 2, i8* %35) #4
  call void @llvm.lifetime.end(i64 1, i8* %sp) #4
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @linear2ulaw(...) #3

declare i32 @ulaw2linear(...) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 0}
!7 = !{!"g72x_state", !8, i64 0, !9, i64 8, !9, i64 10, !9, i64 12, !9, i64 14, !4, i64 16, !4, i64 20, !4, i64 32, !4, i64 36, !4, i64 48, !4, i64 52}
!8 = !{!"long", !4, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!7, !9, i64 8}
!11 = !{!7, !9, i64 10}
!12 = !{!7, !9, i64 12}
!13 = !{!7, !9, i64 14}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !4, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!7, !4, i64 52}
!18 = !{!4, !4, i64 0}
