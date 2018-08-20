; ModuleID = 'decode.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind ssp uwtable
define void @Gsm_Decoder(%struct.gsm_state* %S, i16* %LARcr, i16* %Ncr, i16* %bcr, i16* %Mcr, i16* %xmaxcr, i16* %xMcr, i16* %s) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %LARcr.addr = alloca i16*, align 8
  %Ncr.addr = alloca i16*, align 8
  %bcr.addr = alloca i16*, align 8
  %Mcr.addr = alloca i16*, align 8
  %xmaxcr.addr = alloca i16*, align 8
  %xMcr.addr = alloca i16*, align 8
  %s.addr = alloca i16*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %erp = alloca [40 x i16], align 16
  %wt = alloca [160 x i16], align 16
  %drp = alloca i16*, align 8
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  store i16* %LARcr, i16** %LARcr.addr, align 8, !tbaa !2
  store i16* %Ncr, i16** %Ncr.addr, align 8, !tbaa !2
  store i16* %bcr, i16** %bcr.addr, align 8, !tbaa !2
  store i16* %Mcr, i16** %Mcr.addr, align 8, !tbaa !2
  store i16* %xmaxcr, i16** %xmaxcr.addr, align 8, !tbaa !2
  store i16* %xMcr, i16** %xMcr.addr, align 8, !tbaa !2
  store i16* %s, i16** %s.addr, align 8, !tbaa !2
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast [40 x i16]* %erp to i8*
  call void @llvm.lifetime.start(i64 80, i8* %2) #3
  %3 = bitcast [160 x i16]* %wt to i8*
  call void @llvm.lifetime.start(i64 320, i8* %3) #3
  %4 = bitcast i16** %drp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %dp0 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [280 x i16], [280 x i16]* %dp0, i32 0, i32 0
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 120
  store i16* %add.ptr, i16** %drp, align 8, !tbaa !2
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %6 = load i32, i32* %j, align 4, !tbaa !6
  %cmp = icmp sle i32 %6, 3
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %8 = load i16*, i16** %xmaxcr.addr, align 8, !tbaa !2
  %9 = load i16, i16* %8, align 2, !tbaa !8
  %10 = load i16*, i16** %Mcr.addr, align 8, !tbaa !2
  %11 = load i16, i16* %10, align 2, !tbaa !8
  %12 = load i16*, i16** %xMcr.addr, align 8, !tbaa !2
  %arraydecay1 = getelementptr inbounds [40 x i16], [40 x i16]* %erp, i32 0, i32 0
  call void @Gsm_RPE_Decoding(%struct.gsm_state* %7, i16 signext %9, i16 signext %11, i16* %12, i16* %arraydecay1)
  %13 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %14 = load i16*, i16** %Ncr.addr, align 8, !tbaa !2
  %15 = load i16, i16* %14, align 2, !tbaa !8
  %16 = load i16*, i16** %bcr.addr, align 8, !tbaa !2
  %17 = load i16, i16* %16, align 2, !tbaa !8
  %arraydecay2 = getelementptr inbounds [40 x i16], [40 x i16]* %erp, i32 0, i32 0
  %18 = load i16*, i16** %drp, align 8, !tbaa !2
  call void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* %13, i16 signext %15, i16 signext %17, i16* %arraydecay2, i16* %18)
  store i32 0, i32* %k, align 4, !tbaa !6
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %19 = load i32, i32* %k, align 4, !tbaa !6
  %cmp4 = icmp sle i32 %19, 39
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %20 = load i32, i32* %k, align 4, !tbaa !6
  %idxprom = sext i32 %20 to i64
  %21 = load i16*, i16** %drp, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %21, i64 %idxprom
  %22 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %23 = load i32, i32* %j, align 4, !tbaa !6
  %mul = mul nsw i32 %23, 40
  %24 = load i32, i32* %k, align 4, !tbaa !6
  %add = add nsw i32 %mul, %24
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [160 x i16], [160 x i16]* %wt, i32 0, i64 %idxprom6
  store i16 %22, i16* %arrayidx7, align 2, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %25 = load i32, i32* %k, align 4, !tbaa !6
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4, !tbaa !6
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %26 = load i32, i32* %j, align 4, !tbaa !6
  %inc9 = add nsw i32 %26, 1
  store i32 %inc9, i32* %j, align 4, !tbaa !6
  %27 = load i16*, i16** %xmaxcr.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %incdec.ptr, i16** %xmaxcr.addr, align 8, !tbaa !2
  %28 = load i16*, i16** %bcr.addr, align 8, !tbaa !2
  %incdec.ptr10 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr10, i16** %bcr.addr, align 8, !tbaa !2
  %29 = load i16*, i16** %Ncr.addr, align 8, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr11, i16** %Ncr.addr, align 8, !tbaa !2
  %30 = load i16*, i16** %Mcr.addr, align 8, !tbaa !2
  %incdec.ptr12 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %incdec.ptr12, i16** %Mcr.addr, align 8, !tbaa !2
  %31 = load i16*, i16** %xMcr.addr, align 8, !tbaa !2
  %add.ptr13 = getelementptr inbounds i16, i16* %31, i64 13
  store i16* %add.ptr13, i16** %xMcr.addr, align 8, !tbaa !2
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %32 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %33 = load i16*, i16** %LARcr.addr, align 8, !tbaa !2
  %arraydecay15 = getelementptr inbounds [160 x i16], [160 x i16]* %wt, i32 0, i32 0
  %34 = load i16*, i16** %s.addr, align 8, !tbaa !2
  call void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state* %32, i16* %33, i16* %arraydecay15, i16* %34)
  %35 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %36 = load i16*, i16** %s.addr, align 8, !tbaa !2
  call void @Postprocessing(%struct.gsm_state* %35, i16* %36)
  %37 = bitcast i16** %drp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #3
  %38 = bitcast [160 x i16]* %wt to i8*
  call void @llvm.lifetime.end(i64 320, i8* %38) #3
  %39 = bitcast [40 x i16]* %erp to i8*
  call void @llvm.lifetime.end(i64 80, i8* %39) #3
  %40 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #3
  %41 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @Gsm_RPE_Decoding(%struct.gsm_state*, i16 signext, i16 signext, i16*, i16*) #2

declare void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state*, i16 signext, i16 signext, i16*, i16*) #2

declare void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state*, i16*, i16*, i16*) #2

; Function Attrs: nounwind ssp uwtable
define internal void @Postprocessing(%struct.gsm_state* %S, i16* %s) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %s.addr = alloca i16*, align 8
  %k = alloca i32, align 4
  %msr = alloca i16, align 2
  %ltmp = alloca i64, align 8
  %tmp = alloca i16, align 2
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  store i16* %s, i16** %s.addr, align 8, !tbaa !2
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i16* %msr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #3
  %2 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %msr1 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %2, i32 0, i32 9
  %3 = load i16, i16* %msr1, align 2, !tbaa !10
  store i16 %3, i16* %msr, align 2, !tbaa !8
  %4 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #3
  store i32 160, i32* %k, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %k, align 4, !tbaa !6
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %k, align 4, !tbaa !6
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i16, i16* %msr, align 2, !tbaa !8
  %conv = sext i16 %7 to i64
  %mul = mul nsw i64 %conv, 28180
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv2 = trunc i64 %shr to i16
  store i16 %conv2, i16* %tmp, align 2, !tbaa !8
  %8 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %9 = load i16, i16* %8, align 2, !tbaa !8
  %conv3 = sext i16 %9 to i64
  %10 = load i16, i16* %tmp, align 2, !tbaa !8
  %conv4 = sext i16 %10 to i64
  %add5 = add nsw i64 %conv3, %conv4
  store i64 %add5, i64* %ltmp, align 8, !tbaa !13
  %sub = sub nsw i64 %add5, -32768
  %cmp = icmp ugt i64 %sub, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load i64, i64* %ltmp, align 8, !tbaa !13
  %cmp7 = icmp sgt i64 %11, 0
  %cond = select i1 %cmp7, i32 32767, i32 -32768
  %conv9 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i64, i64* %ltmp, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %conv9, %cond.true ], [ %12, %cond.false ]
  %conv11 = trunc i64 %cond10 to i16
  store i16 %conv11, i16* %msr, align 2, !tbaa !8
  %13 = load i16, i16* %msr, align 2, !tbaa !8
  %conv12 = sext i16 %13 to i64
  %14 = load i16, i16* %msr, align 2, !tbaa !8
  %conv13 = sext i16 %14 to i64
  %add14 = add nsw i64 %conv12, %conv13
  store i64 %add14, i64* %ltmp, align 8, !tbaa !13
  %sub15 = sub nsw i64 %add14, -32768
  %cmp16 = icmp ugt i64 %sub15, 65535
  br i1 %cmp16, label %cond.true.18, label %cond.false.23

cond.true.18:                                     ; preds = %cond.end
  %15 = load i64, i64* %ltmp, align 8, !tbaa !13
  %cmp19 = icmp sgt i64 %15, 0
  %cond21 = select i1 %cmp19, i32 32767, i32 -32768
  %conv22 = sext i32 %cond21 to i64
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  %16 = load i64, i64* %ltmp, align 8, !tbaa !13
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.18
  %cond25 = phi i64 [ %conv22, %cond.true.18 ], [ %16, %cond.false.23 ]
  %and = and i64 %cond25, 65528
  %conv26 = trunc i64 %and to i16
  %17 = load i16*, i16** %s.addr, align 8, !tbaa !2
  store i16 %conv26, i16* %17, align 2, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.24
  %18 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr, i16** %s.addr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i16, i16* %msr, align 2, !tbaa !8
  %20 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %msr27 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %20, i32 0, i32 9
  store i16 %19, i16* %msr27, align 2, !tbaa !10
  %21 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %21) #3
  %22 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #3
  %23 = bitcast i16* %msr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #3
  %24 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!11, !9, i64 650}
!11 = !{!"gsm_state", !4, i64 0, !9, i64 560, !12, i64 568, !7, i64 576, !4, i64 580, !4, i64 596, !9, i64 628, !9, i64 630, !4, i64 632, !9, i64 650, !4, i64 652, !4, i64 653}
!12 = !{!"long", !4, i64 0}
!13 = !{!12, !12, i64 0}
