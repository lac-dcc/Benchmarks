; ModuleID = 'toast_lin.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@in = external global %struct.__sFILE*, align 8
@out = external global %struct.__sFILE*, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @linear_input(i16* %buf) #0 {
entry:
  %buf.addr = alloca i16*, align 8
  store i16* %buf, i16** %buf.addr, align 8, !tbaa !2
  %0 = load i16*, i16** %buf.addr, align 8, !tbaa !2
  %1 = bitcast i16* %0 to i8*
  %2 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call = call i64 @fread(i8* %1, i64 2, i64 160, %struct.__sFILE* %2)
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i64 @fread(i8*, i64, i64, %struct.__sFILE*) #1

; Function Attrs: nounwind ssp uwtable
define i32 @linear_output(i16* %buf) #0 {
entry:
  %buf.addr = alloca i16*, align 8
  store i16* %buf, i16** %buf.addr, align 8, !tbaa !2
  %0 = load i16*, i16** %buf.addr, align 8, !tbaa !2
  %1 = bitcast i16* %0 to i8*
  %2 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call = call i64 @"\01_fwrite"(i8* %1, i64 2, i64 160, %struct.__sFILE* %2)
  %cmp = icmp ne i64 %call, 160
  %conv = zext i1 %cmp to i32
  %sub = sub nsw i32 0, %conv
  ret i32 %sub
}

declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
