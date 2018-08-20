; ModuleID = 'preprocess.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind ssp uwtable
define void @Gsm_Preprocess(%struct.gsm_state* %S, i16* %s, i16* %so) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %s.addr = alloca i16*, align 8
  %so.addr = alloca i16*, align 8
  %z1 = alloca i16, align 2
  %L_z2 = alloca i64, align 8
  %mp = alloca i16, align 2
  %s1 = alloca i16, align 2
  %L_s2 = alloca i64, align 8
  %L_temp = alloca i64, align 8
  %msp = alloca i16, align 2
  %lsp = alloca i16, align 2
  %SO = alloca i16, align 2
  %ltmp = alloca i64, align 8
  %utmp = alloca i64, align 8
  %k = alloca i32, align 4
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  store i16* %s, i16** %s.addr, align 8, !tbaa !2
  store i16* %so, i16** %so.addr, align 8, !tbaa !2
  %0 = bitcast i16* %z1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %z11 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %1, i32 0, i32 1
  %2 = load i16, i16* %z11, align 2, !tbaa !6
  store i16 %2, i16* %z1, align 2, !tbaa !11
  %3 = bitcast i64* %L_z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %L_z22 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %4, i32 0, i32 2
  %5 = load i64, i64* %L_z22, align 8, !tbaa !12
  store i64 %5, i64* %L_z2, align 8, !tbaa !13
  %6 = bitcast i16* %mp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %mp3 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %7, i32 0, i32 3
  %8 = load i32, i32* %mp3, align 4, !tbaa !14
  %conv = trunc i32 %8 to i16
  store i16 %conv, i16* %mp, align 2, !tbaa !11
  %9 = bitcast i16* %s1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #2
  %10 = bitcast i64* %L_s2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i64* %L_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i16* %msp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #2
  %13 = bitcast i16* %lsp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #2
  %14 = bitcast i16* %SO to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #2
  %15 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i64* %utmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  store i32 160, i32* %k, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %cond.end.90, %entry
  %18 = load i32, i32* %k, align 4, !tbaa !15
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %k, align 4, !tbaa !15
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %20 = load i16, i16* %19, align 2, !tbaa !11
  %conv4 = sext i16 %20 to i32
  %shr = ashr i32 %conv4, 3
  %shl = shl i32 %shr, 2
  %conv5 = trunc i32 %shl to i16
  store i16 %conv5, i16* %SO, align 2, !tbaa !11
  %21 = load i16*, i16** %s.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr, i16** %s.addr, align 8, !tbaa !2
  %22 = load i16, i16* %SO, align 2, !tbaa !11
  %conv6 = sext i16 %22 to i32
  %23 = load i16, i16* %z1, align 2, !tbaa !11
  %conv7 = sext i16 %23 to i32
  %sub = sub nsw i32 %conv6, %conv7
  %conv8 = trunc i32 %sub to i16
  store i16 %conv8, i16* %s1, align 2, !tbaa !11
  %24 = load i16, i16* %SO, align 2, !tbaa !11
  store i16 %24, i16* %z1, align 2, !tbaa !11
  %25 = load i16, i16* %s1, align 2, !tbaa !11
  %conv9 = sext i16 %25 to i64
  store i64 %conv9, i64* %L_s2, align 8, !tbaa !13
  %26 = load i64, i64* %L_s2, align 8, !tbaa !13
  %shl10 = shl i64 %26, 15
  store i64 %shl10, i64* %L_s2, align 8, !tbaa !13
  %27 = load i64, i64* %L_z2, align 8, !tbaa !13
  %shr11 = ashr i64 %27, 15
  %conv12 = trunc i64 %shr11 to i16
  store i16 %conv12, i16* %msp, align 2, !tbaa !11
  %28 = load i64, i64* %L_z2, align 8, !tbaa !13
  %29 = load i16, i16* %msp, align 2, !tbaa !11
  %conv13 = sext i16 %29 to i64
  %shl14 = shl i64 %conv13, 15
  %sub15 = sub nsw i64 %28, %shl14
  %conv16 = trunc i64 %sub15 to i16
  store i16 %conv16, i16* %lsp, align 2, !tbaa !11
  %30 = load i16, i16* %lsp, align 2, !tbaa !11
  %conv17 = sext i16 %30 to i64
  %mul = mul nsw i64 %conv17, 32735
  %add = add nsw i64 %mul, 16384
  %shr18 = ashr i64 %add, 15
  %31 = load i64, i64* %L_s2, align 8, !tbaa !13
  %add19 = add nsw i64 %31, %shr18
  store i64 %add19, i64* %L_s2, align 8, !tbaa !13
  %32 = load i16, i16* %msp, align 2, !tbaa !11
  %conv20 = sext i16 %32 to i64
  %mul21 = mul nsw i64 %conv20, 32735
  store i64 %mul21, i64* %L_temp, align 8, !tbaa !13
  %33 = load i64, i64* %L_temp, align 8, !tbaa !13
  %cmp = icmp slt i64 %33, 0
  br i1 %cmp, label %cond.true, label %cond.false.40

cond.true:                                        ; preds = %while.body
  %34 = load i64, i64* %L_s2, align 8, !tbaa !13
  %cmp23 = icmp sge i64 %34, 0
  br i1 %cmp23, label %cond.true.25, label %cond.false

cond.true.25:                                     ; preds = %cond.true
  %35 = load i64, i64* %L_temp, align 8, !tbaa !13
  %36 = load i64, i64* %L_s2, align 8, !tbaa !13
  %add26 = add nsw i64 %35, %36
  br label %cond.end.38

cond.false:                                       ; preds = %cond.true
  %37 = load i64, i64* %L_temp, align 8, !tbaa !13
  %add27 = add nsw i64 %37, 1
  %sub28 = sub nsw i64 0, %add27
  %38 = load i64, i64* %L_s2, align 8, !tbaa !13
  %add29 = add nsw i64 %38, 1
  %sub30 = sub nsw i64 0, %add29
  %add31 = add i64 %sub28, %sub30
  store i64 %add31, i64* %utmp, align 8, !tbaa !13
  %cmp32 = icmp uge i64 %add31, 2147483647
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.false
  br label %cond.end

cond.false.35:                                    ; preds = %cond.false
  %39 = load i64, i64* %utmp, align 8, !tbaa !13
  %sub36 = sub nsw i64 0, %39
  %sub37 = sub nsw i64 %sub36, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false.35, %cond.true.34
  %cond = phi i64 [ -2147483648, %cond.true.34 ], [ %sub37, %cond.false.35 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end, %cond.true.25
  %cond39 = phi i64 [ %add26, %cond.true.25 ], [ %cond, %cond.end ]
  br label %cond.end.55

cond.false.40:                                    ; preds = %while.body
  %40 = load i64, i64* %L_s2, align 8, !tbaa !13
  %cmp41 = icmp sle i64 %40, 0
  br i1 %cmp41, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.false.40
  %41 = load i64, i64* %L_temp, align 8, !tbaa !13
  %42 = load i64, i64* %L_s2, align 8, !tbaa !13
  %add44 = add nsw i64 %41, %42
  br label %cond.end.53

cond.false.45:                                    ; preds = %cond.false.40
  %43 = load i64, i64* %L_temp, align 8, !tbaa !13
  %44 = load i64, i64* %L_s2, align 8, !tbaa !13
  %add46 = add i64 %43, %44
  store i64 %add46, i64* %utmp, align 8, !tbaa !13
  %cmp47 = icmp uge i64 %add46, 2147483647
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.false.45
  br label %cond.end.51

cond.false.50:                                    ; preds = %cond.false.45
  %45 = load i64, i64* %utmp, align 8, !tbaa !13
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.49
  %cond52 = phi i64 [ 2147483647, %cond.true.49 ], [ %45, %cond.false.50 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.43
  %cond54 = phi i64 [ %add44, %cond.true.43 ], [ %cond52, %cond.end.51 ]
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.end.53, %cond.end.38
  %cond56 = phi i64 [ %cond39, %cond.end.38 ], [ %cond54, %cond.end.53 ]
  store i64 %cond56, i64* %L_z2, align 8, !tbaa !13
  %46 = load i64, i64* %L_z2, align 8, !tbaa !13
  %cmp57 = icmp slt i64 %46, 0
  br i1 %cmp57, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %cond.end.55
  %47 = load i64, i64* %L_z2, align 8, !tbaa !13
  %add60 = add nsw i64 %47, 16384
  br label %cond.end.69

cond.false.61:                                    ; preds = %cond.end.55
  %48 = load i64, i64* %L_z2, align 8, !tbaa !13
  %add62 = add i64 %48, 16384
  store i64 %add62, i64* %utmp, align 8, !tbaa !13
  %cmp63 = icmp uge i64 %add62, 2147483647
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.false.61
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.false.61
  %49 = load i64, i64* %utmp, align 8, !tbaa !13
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i64 [ 2147483647, %cond.true.65 ], [ %49, %cond.false.66 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.59
  %cond70 = phi i64 [ %add60, %cond.true.59 ], [ %cond68, %cond.end.67 ]
  store i64 %cond70, i64* %L_temp, align 8, !tbaa !13
  %50 = load i16, i16* %mp, align 2, !tbaa !11
  %conv71 = sext i16 %50 to i64
  %mul72 = mul nsw i64 %conv71, -28180
  %add73 = add nsw i64 %mul72, 16384
  %shr74 = ashr i64 %add73, 15
  %conv75 = trunc i64 %shr74 to i16
  store i16 %conv75, i16* %msp, align 2, !tbaa !11
  %51 = load i64, i64* %L_temp, align 8, !tbaa !13
  %shr76 = ashr i64 %51, 15
  %conv77 = trunc i64 %shr76 to i16
  store i16 %conv77, i16* %mp, align 2, !tbaa !11
  %52 = load i16, i16* %mp, align 2, !tbaa !11
  %conv78 = sext i16 %52 to i64
  %53 = load i16, i16* %msp, align 2, !tbaa !11
  %conv79 = sext i16 %53 to i64
  %add80 = add nsw i64 %conv78, %conv79
  store i64 %add80, i64* %ltmp, align 8, !tbaa !13
  %sub81 = sub nsw i64 %add80, -32768
  %cmp82 = icmp ugt i64 %sub81, 65535
  br i1 %cmp82, label %cond.true.84, label %cond.false.89

cond.true.84:                                     ; preds = %cond.end.69
  %54 = load i64, i64* %ltmp, align 8, !tbaa !13
  %cmp85 = icmp sgt i64 %54, 0
  %cond87 = select i1 %cmp85, i32 32767, i32 -32768
  %conv88 = sext i32 %cond87 to i64
  br label %cond.end.90

cond.false.89:                                    ; preds = %cond.end.69
  %55 = load i64, i64* %ltmp, align 8, !tbaa !13
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.84
  %cond91 = phi i64 [ %conv88, %cond.true.84 ], [ %55, %cond.false.89 ]
  %conv92 = trunc i64 %cond91 to i16
  %56 = load i16*, i16** %so.addr, align 8, !tbaa !2
  %incdec.ptr93 = getelementptr inbounds i16, i16* %56, i32 1
  store i16* %incdec.ptr93, i16** %so.addr, align 8, !tbaa !2
  store i16 %conv92, i16* %56, align 2, !tbaa !11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %57 = load i16, i16* %z1, align 2, !tbaa !11
  %58 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %z194 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %58, i32 0, i32 1
  store i16 %57, i16* %z194, align 2, !tbaa !6
  %59 = load i64, i64* %L_z2, align 8, !tbaa !13
  %60 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %L_z295 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %60, i32 0, i32 2
  store i64 %59, i64* %L_z295, align 8, !tbaa !12
  %61 = load i16, i16* %mp, align 2, !tbaa !11
  %conv96 = sext i16 %61 to i32
  %62 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8, !tbaa !2
  %mp97 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %62, i32 0, i32 3
  store i32 %conv96, i32* %mp97, align 4, !tbaa !14
  %63 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i64* %utmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast i64* %ltmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast i16* %SO to i8*
  call void @llvm.lifetime.end(i64 2, i8* %66) #2
  %67 = bitcast i16* %lsp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %67) #2
  %68 = bitcast i16* %msp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %68) #2
  %69 = bitcast i64* %L_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i64* %L_s2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast i16* %s1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %71) #2
  %72 = bitcast i16* %mp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %72) #2
  %73 = bitcast i64* %L_z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast i16* %z1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %74) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 560}
!7 = !{!"gsm_state", !4, i64 0, !8, i64 560, !9, i64 568, !10, i64 576, !4, i64 580, !4, i64 596, !8, i64 628, !8, i64 630, !4, i64 632, !8, i64 650, !4, i64 652, !4, i64 653}
!8 = !{!"short", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"int", !4, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!7, !9, i64 568}
!13 = !{!9, !9, i64 0}
!14 = !{!7, !10, i64 576}
!15 = !{!10, !10, i64 0}
