; ModuleID = 'gsm_create.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind ssp uwtable
define %struct.gsm_state* @gsm_create() #0 {
entry:
  %retval = alloca %struct.gsm_state*, align 8
  %r = alloca %struct.gsm_state*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.gsm_state** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %call = call i8* @malloc(i64 656)
  %1 = bitcast i8* %call to %struct.gsm_state*
  store %struct.gsm_state* %1, %struct.gsm_state** %r, align 8, !tbaa !2
  %2 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !2
  %tobool = icmp ne %struct.gsm_state* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !2
  store %struct.gsm_state* %3, %struct.gsm_state** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !2
  %5 = bitcast %struct.gsm_state* %4 to i8*
  %6 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !2
  %7 = bitcast %struct.gsm_state* %6 to i8*
  %8 = call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false)
  %call1 = call i8* @__memset_chk(i8* %5, i32 0, i64 656, i64 %8) #5
  %9 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !2
  %nrp = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %9, i32 0, i32 7
  store i16 40, i16* %nrp, align 2, !tbaa !6
  %10 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !2
  store %struct.gsm_state* %10, %struct.gsm_state** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.gsm_state** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #5
  %12 = load %struct.gsm_state*, %struct.gsm_state** %retval
  ret %struct.gsm_state* %12
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
!6 = !{!7, !8, i64 630}
!7 = !{!"gsm_state", !4, i64 0, !8, i64 560, !9, i64 568, !10, i64 576, !4, i64 580, !4, i64 596, !8, i64 628, !8, i64 630, !4, i64 632, !8, i64 650, !4, i64 652, !4, i64 653}
!8 = !{!"short", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"int", !4, i64 0}
