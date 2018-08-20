; ModuleID = 'cdjpeg.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@__stdinp = external global %struct.__sFILE*, align 8
@__stdoutp = external global %struct.__sFILE*, align 8
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @keymatch(i8* %arg, i8* %keyword, i32 %minchars) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %keyword.addr = alloca i8*, align 8
  %minchars.addr = alloca i32, align 4
  %ca = alloca i32, align 4
  %ck = alloca i32, align 4
  %nmatched = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !2
  store i8* %keyword, i8** %keyword.addr, align 8, !tbaa !2
  store i32 %minchars, i32* %minchars.addr, align 4, !tbaa !6
  %0 = bitcast i32* %ca to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = bitcast i32* %ck to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  %2 = bitcast i32* %nmatched to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  store i32 0, i32* %nmatched, align 4, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %3 = load i8*, i8** %arg.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 8, !tbaa !2
  %4 = load i8, i8* %3, align 1, !tbaa !8
  %conv = sext i8 %4 to i32
  store i32 %conv, i32* %ca, align 4, !tbaa !6
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %keyword.addr, align 8, !tbaa !2
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %keyword.addr, align 8, !tbaa !2
  %6 = load i8, i8* %5, align 1, !tbaa !8
  %conv3 = sext i8 %6 to i32
  store i32 %conv3, i32* %ck, align 4, !tbaa !6
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %7 = load i32, i32* %ca, align 4, !tbaa !6
  %call = call i32 @isupper(i32 %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %8 = load i32, i32* %ca, align 4, !tbaa !6
  %call7 = call i32 @tolower(i32 %8)
  store i32 %call7, i32* %ca, align 4, !tbaa !6
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %9 = load i32, i32* %ca, align 4, !tbaa !6
  %10 = load i32, i32* %ck, align 4, !tbaa !6
  %cmp9 = icmp ne i32 %9, %10
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %11 = load i32, i32* %nmatched, align 4, !tbaa !6
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %nmatched, align 4, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %nmatched, align 4, !tbaa !6
  %13 = load i32, i32* %minchars.addr, align 4, !tbaa !6
  %cmp13 = icmp slt i32 %12, %13
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %while.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.11, %if.then
  %14 = bitcast i32* %nmatched to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #4
  %15 = bitcast i32* %ck to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #4
  %16 = bitcast i32* %ca to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #4
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isupper(i32 %_c) #2 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !6
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %call = call i32 @__istype(i32 %0, i64 32768)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @tolower(i32 %_c) #2 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !6
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %call = call i32 @__tolower(i32 %0)
  ret i32 %call
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define %struct.__sFILE* @read_stdin() #0 {
entry:
  %input_file = alloca %struct.__sFILE*, align 8
  %0 = bitcast %struct.__sFILE** %input_file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  store %struct.__sFILE* %1, %struct.__sFILE** %input_file, align 8, !tbaa !2
  %2 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !2
  %3 = bitcast %struct.__sFILE** %input_file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #4
  ret %struct.__sFILE* %2
}

; Function Attrs: nounwind ssp uwtable
define %struct.__sFILE* @write_stdout() #0 {
entry:
  %output_file = alloca %struct.__sFILE*, align 8
  %0 = bitcast %struct.__sFILE** %output_file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  store %struct.__sFILE* %1, %struct.__sFILE** %output_file, align 8, !tbaa !2
  %2 = load %struct.__sFILE*, %struct.__sFILE** %output_file, align 8, !tbaa !2
  %3 = bitcast %struct.__sFILE** %output_file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #4
  ret %struct.__sFILE* %2
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__istype(i32 %_c, i64 %_f) #2 {
entry:
  %_c.addr = alloca i32, align 4
  %_f.addr = alloca i64, align 8
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !6
  store i64 %_f, i64* %_f.addr, align 8, !tbaa !9
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %call = call i32 @isascii(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %conv = zext i32 %2 to i64
  %3 = load i64, i64* %_f.addr, align 8, !tbaa !9
  %and = and i64 %conv, %3
  %tobool1 = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool1, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %5 = load i64, i64* %_f.addr, align 8, !tbaa !9
  %call3 = call i32 @__maskrune(i32 %4, i64 %5)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ %lnot.ext8, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isascii(i32 %_c) #2 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !6
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %and = and i32 %0, -128
  %cmp = icmp eq i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @__maskrune(i32, i64) #3

declare i32 @__tolower(i32) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { inlinehint nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

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
!8 = !{!4, !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !4, i64 0}
