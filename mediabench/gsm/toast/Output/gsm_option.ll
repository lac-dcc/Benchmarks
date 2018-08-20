; ModuleID = 'gsm_option.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind ssp uwtable
define i32 @gsm_option(%struct.gsm_state* %r, i32 %opt, i32* %val) #0 {
entry:
  %r.addr = alloca %struct.gsm_state*, align 8
  %opt.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  store %struct.gsm_state* %r, %struct.gsm_state** %r.addr, align 8, !tbaa !2
  store i32 %opt, i32* %opt.addr, align 4, !tbaa !6
  store i32* %val, i32** %val.addr, align 8, !tbaa !2
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 -1, i32* %result, align 4, !tbaa !6
  %1 = load i32, i32* %opt.addr, align 4, !tbaa !6
  switch i32 %1, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry, %entry
  %2 = load i32, i32* %result, align 4, !tbaa !6
  %3 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #2
  ret i32 %2
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
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
