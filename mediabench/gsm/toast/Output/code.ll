; ModuleID = 'code.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@Gsm_Coder.e = internal global [50 x i16] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @Gsm_Coder(%struct.gsm_state* %S, i16* %s, i16* %LARc, i16* %Nc, i16* %bc, i16* %Mc, i16* %xmaxc, i16* %xMc) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %s.addr = alloca i16*, align 8
  %LARc.addr = alloca i16*, align 8
  %Nc.addr = alloca i16*, align 8
  %bc.addr = alloca i16*, align 8
  %Mc.addr = alloca i16*, align 8
  %xmaxc.addr = alloca i16*, align 8
  %xMc.addr = alloca i16*, align 8
  %k = alloca i32, align 4
  %dp = alloca i16*, align 8
  %dpp = alloca i16*, align 8
  %so = alloca [160 x i16], align 16
  %i = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  store i16* %s, i16** %s.addr, align 8, !tbaa !2
  store i16* %LARc, i16** %LARc.addr, align 8, !tbaa !2
  store i16* %Nc, i16** %Nc.addr, align 8, !tbaa !2
  store i16* %bc, i16** %bc.addr, align 8, !tbaa !2
  store i16* %Mc, i16** %Mc.addr, align 8, !tbaa !2
  store i16* %xmaxc, i16** %xmaxc.addr, align 8, !tbaa !2
  store i16* %xMc, i16** %xMc.addr, align 8, !tbaa !2
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast i16** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #5
  %2 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %dp0 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [280 x i16], [280 x i16]* %dp0, i32 0, i32 0
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 120
  store i16* %add.ptr, i16** %dp, align 8, !tbaa !2
  %3 = bitcast i16** %dpp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #5
  %4 = load i16*, i16** %dp, align 8, !tbaa !2
  store i16* %4, i16** %dpp, align 8, !tbaa !2
  %5 = bitcast [160 x i16]* %so to i8*
  call void @llvm.lifetime.start(i64 320, i8* %5) #5
  %6 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %7 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %arraydecay1 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  call void @Gsm_Preprocess(%struct.gsm_state* %6, i16* %7, i16* %arraydecay1)
  %8 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %arraydecay2 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  %9 = load i16*, i16** %LARc.addr, align 8, !tbaa !2
  call void @Gsm_LPC_Analysis(%struct.gsm_state* %8, i16* %arraydecay2, i16* %9)
  %10 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %11 = load i16*, i16** %LARc.addr, align 8, !tbaa !2
  %arraydecay3 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  call void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state* %10, i16* %11, i16* %arraydecay3)
  store i32 0, i32* %k, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %12 = load i32, i32* %k, align 4, !tbaa !6
  %cmp = icmp sle i32 %12, 3
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %13 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %arraydecay4 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  %14 = load i32, i32* %k, align 4, !tbaa !6
  %mul = mul nsw i32 %14, 40
  %idx.ext = sext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds i16, i16* %arraydecay4, i64 %idx.ext
  %15 = load i16*, i16** %dp, align 8, !tbaa !2
  %16 = load i16*, i16** %dpp, align 8, !tbaa !2
  %17 = load i16*, i16** %Nc.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr, i16** %Nc.addr, align 8, !tbaa !2
  %18 = load i16*, i16** %bc.addr, align 8, !tbaa !2
  %incdec.ptr6 = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr6, i16** %bc.addr, align 8, !tbaa !2
  call void @Gsm_Long_Term_Predictor(%struct.gsm_state* %13, i16* %add.ptr5, i16* %15, i16* getelementptr inbounds ([50 x i16], [50 x i16]* @Gsm_Coder.e, i32 0, i64 5), i16* %16, i16* %17, i16* %18)
  %19 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %20 = load i16*, i16** %xmaxc.addr, align 8, !tbaa !2
  %incdec.ptr7 = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr7, i16** %xmaxc.addr, align 8, !tbaa !2
  %21 = load i16*, i16** %Mc.addr, align 8, !tbaa !2
  %incdec.ptr8 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr8, i16** %Mc.addr, align 8, !tbaa !2
  %22 = load i16*, i16** %xMc.addr, align 8, !tbaa !2
  call void @Gsm_RPE_Encoding(%struct.gsm_state* %19, i16* getelementptr inbounds ([50 x i16], [50 x i16]* @Gsm_Coder.e, i32 0, i64 5), i16* %20, i16* %21, i16* %22)
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #5
  %24 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #5
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !6
  %cmp10 = icmp sle i32 %25, 39
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %26 = load i32, i32* %i, align 4, !tbaa !6
  %add = add nsw i32 5, %26
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [50 x i16], [50 x i16]* @Gsm_Coder.e, i32 0, i64 %idxprom
  %27 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv = sext i16 %27 to i64
  %28 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom12 = sext i32 %28 to i64
  %29 = load i16*, i16** %dpp, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i16, i16* %29, i64 %idxprom12
  %30 = load i16, i16* %arrayidx13, align 2, !tbaa !8
  %conv14 = sext i16 %30 to i64
  %add15 = add nsw i64 %conv, %conv14
  store i64 %add15, i64* %ltmp, align 8, !tbaa !10
  %sub = sub nsw i64 %add15, -32768
  %cmp16 = icmp ugt i64 %sub, 65535
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.11
  %31 = load i64, i64* %ltmp, align 8, !tbaa !10
  %cmp18 = icmp sgt i64 %31, 0
  %cond = select i1 %cmp18, i32 32767, i32 -32768
  %conv20 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body.11
  %32 = load i64, i64* %ltmp, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond21 = phi i64 [ %conv20, %cond.true ], [ %32, %cond.false ]
  %conv22 = trunc i64 %cond21 to i16
  %33 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom23 = sext i32 %33 to i64
  %34 = load i16*, i16** %dp, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i16, i16* %34, i64 %idxprom23
  store i16 %conv22, i16* %arrayidx24, align 2, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %35 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %36 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #5
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #5
  %38 = load i16*, i16** %dp, align 8, !tbaa !2
  %add.ptr25 = getelementptr inbounds i16, i16* %38, i64 40
  store i16* %add.ptr25, i16** %dp, align 8, !tbaa !2
  %39 = load i16*, i16** %dpp, align 8, !tbaa !2
  %add.ptr26 = getelementptr inbounds i16, i16* %39, i64 40
  store i16* %add.ptr26, i16** %dpp, align 8, !tbaa !2
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %40 = load i32, i32* %k, align 4, !tbaa !6
  %inc28 = add nsw i32 %40, 1
  store i32 %inc28, i32* %k, align 4, !tbaa !6
  %41 = load i16*, i16** %xMc.addr, align 8, !tbaa !2
  %add.ptr29 = getelementptr inbounds i16, i16* %41, i64 13
  store i16* %add.ptr29, i16** %xMc.addr, align 8, !tbaa !2
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  %42 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %dp031 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %42, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [280 x i16], [280 x i16]* %dp031, i32 0, i32 0
  %43 = bitcast i16* %arraydecay32 to i8*
  %44 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %dp033 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %44, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [280 x i16], [280 x i16]* %dp033, i32 0, i32 0
  %add.ptr35 = getelementptr inbounds i16, i16* %arraydecay34, i64 160
  %45 = bitcast i16* %add.ptr35 to i8*
  %46 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %dp036 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %46, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [280 x i16], [280 x i16]* %dp036, i32 0, i32 0
  %47 = bitcast i16* %arraydecay37 to i8*
  %48 = call i64 @llvm.objectsize.i64.p0i8(i8* %47, i1 false)
  %call = call i8* @__memcpy_chk(i8* %43, i8* %45, i64 240, i64 %48) #5
  %49 = bitcast [160 x i16]* %so to i8*
  call void @llvm.lifetime.end(i64 320, i8* %49) #5
  %50 = bitcast i16** %dpp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #5
  %51 = bitcast i16** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #5
  %52 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #5
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @Gsm_Preprocess(%struct.gsm_state*, i16*, i16*) #2

declare void @Gsm_LPC_Analysis(%struct.gsm_state*, i16*, i16*) #2

declare void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state*, i16*, i16*) #2

declare void @Gsm_Long_Term_Predictor(%struct.gsm_state*, i16*, i16*, i16*, i16*, i16*, i16*) #2

declare void @Gsm_RPE_Encoding(%struct.gsm_state*, i16*, i16*, i16*, i16*) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !4, i64 0}
