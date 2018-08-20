; ModuleID = 'toast_audio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@in = external global %struct.__sFILE*, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [100 x i8] c"%s: bad (missing?) header in Sun audio file \22%s\22;\0A\09Try one of -u, -a, -l instead (%s -h for help).\0A\00", align 1
@progname = external global i8*, align 8
@inname = external global i8*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@input = external global i32 (i16*)*, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"%s: warning: file format #%lu for %s not implemented, defaulting to u-law.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".snd\00", align 1
@out = external global %struct.__sFILE*, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @audio_init_input() #0 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i64, align 8
  %enc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i64* %enc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call = call i32 @fgetc(%struct.__sFILE* %2)
  %cmp = icmp ne i32 %call, 46
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call1 = call i32 @fgetc(%struct.__sFILE* %3)
  %cmp2 = icmp ne i32 %call1, 115
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call4 = call i32 @fgetc(%struct.__sFILE* %4)
  %cmp5 = icmp ne i32 %call4, 110
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %5 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call7 = call i32 @fgetc(%struct.__sFILE* %5)
  %cmp8 = icmp ne i32 %call7, 100
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %6 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call10 = call i32 @get_u32(%struct.__sFILE* %6, i64* %len)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %7 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call12 = call i32 @get_u32(%struct.__sFILE* %7, i64* %enc)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %8 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call15 = call i32 @get_u32(%struct.__sFILE* %8, i64* %enc)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %9 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %10 = load i64, i64* %len, align 8, !tbaa !6
  %sub = sub i64 %10, 16
  %call18 = call i32 @fseek(%struct.__sFILE* %9, i64 %sub, i32 1)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %12 = load i8*, i8** @progname, align 8, !tbaa !2
  %13 = load i8*, i8** @inname, align 8, !tbaa !2
  %tobool20 = icmp ne i8* %13, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load i8*, i8** @inname, align 8, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  %15 = load i8*, i8** @progname, align 8, !tbaa !2
  %call21 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i32 0, i32 0), i8* %12, i8* %cond, i8* %15)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.17
  %16 = load i64, i64* %enc, align 8, !tbaa !6
  switch i64 %16, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.22
    i64 3, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end
  store i32 (i16*)* @ulaw_input, i32 (i16*)** @input, align 8, !tbaa !2
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end
  store i32 (i16*)* @alaw_input, i32 (i16*)** @input, align 8, !tbaa !2
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  store i32 (i16*)* @linear_input, i32 (i16*)** @input, align 8, !tbaa !2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %18 = load i8*, i8** @progname, align 8, !tbaa !2
  %19 = load i64, i64* %enc, align 8, !tbaa !6
  %20 = load i8*, i8** @inname, align 8, !tbaa !2
  %call24 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i32 0, i32 0), i8* %18, i64 %19, i8* %20)
  store i32 (i16*)* @ulaw_input, i32 (i16*)** @input, align 8, !tbaa !2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.23, %sw.bb.22, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %cond.end
  %21 = bitcast i64* %enc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #3
  %22 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #3
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @fgetc(%struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_u32(%struct.__sFILE* %f, i64* %up) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.__sFILE*, align 8
  %up.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %u = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.__sFILE* %f, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  store i64* %up, i64** %up.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i64* %u to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = load %struct.__sFILE*, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  %call = call i32 @getc(%struct.__sFILE* %2)
  store i32 %call, i32* %i, align 4, !tbaa !8
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %i, align 4, !tbaa !8
  %conv = trunc i32 %3 to i8
  %conv1 = zext i8 %conv to i64
  store i64 %conv1, i64* %u, align 8, !tbaa !6
  %4 = load %struct.__sFILE*, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  %call2 = call i32 @getc(%struct.__sFILE* %4)
  store i32 %call2, i32* %i, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %call2, -1
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %5 = load i64, i64* %u, align 8, !tbaa !6
  %shl = shl i64 %5, 8
  %6 = load i32, i32* %i, align 4, !tbaa !8
  %conv6 = trunc i32 %6 to i8
  %conv7 = zext i8 %conv6 to i64
  %or = or i64 %shl, %conv7
  store i64 %or, i64* %u, align 8, !tbaa !6
  %7 = load %struct.__sFILE*, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  %call8 = call i32 @getc(%struct.__sFILE* %7)
  store i32 %call8, i32* %i, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.5
  %8 = load i64, i64* %u, align 8, !tbaa !6
  %shl12 = shl i64 %8, 8
  %9 = load i32, i32* %i, align 4, !tbaa !8
  %conv13 = trunc i32 %9 to i8
  %conv14 = zext i8 %conv13 to i64
  %or15 = or i64 %shl12, %conv14
  store i64 %or15, i64* %u, align 8, !tbaa !6
  %10 = load %struct.__sFILE*, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  %call16 = call i32 @getc(%struct.__sFILE* %10)
  store i32 %call16, i32* %i, align 4, !tbaa !8
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.11
  %11 = load i64, i64* %u, align 8, !tbaa !6
  %shl19 = shl i64 %11, 8
  %12 = load i32, i32* %i, align 4, !tbaa !8
  %conv20 = trunc i32 %12 to i8
  %conv21 = zext i8 %conv20 to i64
  %or22 = or i64 %shl19, %conv21
  %13 = load i64*, i64** %up.addr, align 8, !tbaa !2
  store i64 %or22, i64* %13, align 8, !tbaa !6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i64* %u to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #3
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #3
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @fseek(%struct.__sFILE*, i64, i32) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

declare i32 @ulaw_input(i16*) #2

declare i32 @alaw_input(i16*) #2

declare i32 @linear_input(i16*) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @audio_init_output() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call = call i32 @"\01_fputs"(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.__sFILE* %0)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call1 = call i32 @put_u32(%struct.__sFILE* %1, i64 32)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call3 = call i32 @put_u32(%struct.__sFILE* %2, i64 -1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.2
  %3 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call6 = call i32 @put_u32(%struct.__sFILE* %3, i64 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %4 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call9 = call i32 @put_u32(%struct.__sFILE* %4, i64 8000)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %5 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call12 = call i32 @put_u32(%struct.__sFILE* %5, i64 1)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %6 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call15 = call i32 @put_u32(%struct.__sFILE* %6, i64 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %7 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call18 = call i32 @put_u32(%struct.__sFILE* %7, i64 0)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @put_u32(%struct.__sFILE* %f, i64 %u) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.__sFILE*, align 8
  %u.addr = alloca i64, align 8
  store %struct.__sFILE* %f, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  store i64 %u, i64* %u.addr, align 8, !tbaa !6
  %0 = load i64, i64* %u.addr, align 8, !tbaa !6
  %shr = lshr i64 %0, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %conv1 = sext i8 %conv to i32
  %1 = load %struct.__sFILE*, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  %call = call i32 @putc(i32 %conv1, %struct.__sFILE* %1)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %u.addr, align 8, !tbaa !6
  %shr3 = lshr i64 %2, 16
  %and4 = and i64 %shr3, 255
  %conv5 = trunc i64 %and4 to i8
  %conv6 = sext i8 %conv5 to i32
  %3 = load %struct.__sFILE*, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  %call7 = call i32 @putc(i32 %conv6, %struct.__sFILE* %3)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %4 = load i64, i64* %u.addr, align 8, !tbaa !6
  %shr11 = lshr i64 %4, 8
  %and12 = and i64 %shr11, 255
  %conv13 = trunc i64 %and12 to i8
  %conv14 = sext i8 %conv13 to i32
  %5 = load %struct.__sFILE*, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  %call15 = call i32 @putc(i32 %conv14, %struct.__sFILE* %5)
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.10
  %6 = load i64, i64* %u.addr, align 8, !tbaa !6
  %and19 = and i64 %6, 255
  %conv20 = trunc i64 %and19 to i8
  %conv21 = sext i8 %conv20 to i32
  %7 = load %struct.__sFILE*, %struct.__sFILE** %f.addr, align 8, !tbaa !2
  %call22 = call i32 @putc(i32 %conv21, %struct.__sFILE* %7)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.18, %lor.lhs.false.10, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @getc(%struct.__sFILE*) #2

declare i32 @putc(i32, %struct.__sFILE*) #2

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
!7 = !{!"long", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !4, i64 0}
