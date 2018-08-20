; ModuleID = 'rawcaudio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.adpcm_state = type { i16, i8 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@sbuf = common global [1000 x i16] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@abuf = common global [500 x i8] zeroinitializer, align 16
@state = common global %struct.adpcm_state zeroinitializer, align 2
@__stderrp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Final valprev=%d, index=%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %call = call i64 @"\01_read"(i32 0, i8* bitcast ([1000 x i16]* @sbuf to i8*), i64 2000)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4, !tbaa !2
  %1 = load i32, i32* %n, align 4, !tbaa !2
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %while.body
  %2 = load i32, i32* %n, align 4, !tbaa !2
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %while.end

if.end.5:                                         ; preds = %if.end
  %3 = load i32, i32* %n, align 4, !tbaa !2
  %div = sdiv i32 %3, 2
  call void @adpcm_coder(i16* getelementptr inbounds ([1000 x i16], [1000 x i16]* @sbuf, i32 0, i32 0), i8* getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i32 0, i32 0), i32 %div, %struct.adpcm_state* @state)
  %4 = load i32, i32* %n, align 4, !tbaa !2
  %div6 = sdiv i32 %4, 4
  %conv7 = sext i32 %div6 to i64
  %call8 = call i64 @"\01_write"(i32 1, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i32 0, i32 0), i64 %conv7)
  br label %while.cond

while.end:                                        ; preds = %if.then.4
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %6 = load i16, i16* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 0), align 2, !tbaa !8
  %conv9 = sext i16 %6 to i32
  %7 = load i8, i8* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 1), align 1, !tbaa !11
  %conv10 = sext i8 %7 to i32
  %call11 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 %conv9, i32 %conv10)
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @"\01_read"(i32, i8*, i64) #2

declare void @perror(i8*) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare void @adpcm_coder(i16*, i8*, i32, %struct.adpcm_state*) #2

declare i64 @"\01_write"(i32, i8*, i64) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"adpcm_state", !10, i64 0, !4, i64 2}
!10 = !{!"short", !4, i64 0}
!11 = !{!9, !4, i64 2}
