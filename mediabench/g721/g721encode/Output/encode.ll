; ModuleID = 'encode.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@pack_output.out_buffer = internal global i32 0, align 4
@pack_output.out_bits = internal global i32 0, align 4
@__stdoutp = external global %struct.__sFILE*, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"CCITT ADPCM Encoder -- usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\09encode [-3|4|5] [-a|u|l] < infile > outfile\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"where:\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\09-3\09Generate G.723 24kbps (3-bit) data\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\09-4\09Generate G.721 32kbps (4-bit) data [default]\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\09-5\09Generate G.723 40kbps (5-bit) data\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\09-a\09Process 8-bit A-law input data\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\09-u\09Process 8-bit u-law input data [default]\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\09-l\09Process 16-bit linear PCM input data\0A\00", align 1
@__stdinp = external global %struct.__sFILE*, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @pack_output(i32 %code, i32 %bits) #0 {
entry:
  %code.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %out_byte = alloca i8, align 1
  store i32 %code, i32* %code.addr, align 4, !tbaa !2
  store i32 %bits, i32* %bits.addr, align 4, !tbaa !2
  call void @llvm.lifetime.start(i64 1, i8* %out_byte) #4
  %0 = load i32, i32* %code.addr, align 4, !tbaa !2
  %1 = load i32, i32* @pack_output.out_bits, align 4, !tbaa !2
  %shl = shl i32 %0, %1
  %2 = load i32, i32* @pack_output.out_buffer, align 4, !tbaa !2
  %or = or i32 %2, %shl
  store i32 %or, i32* @pack_output.out_buffer, align 4, !tbaa !2
  %3 = load i32, i32* %bits.addr, align 4, !tbaa !2
  %4 = load i32, i32* @pack_output.out_bits, align 4, !tbaa !2
  %add = add nsw i32 %4, %3
  store i32 %add, i32* @pack_output.out_bits, align 4, !tbaa !2
  %5 = load i32, i32* @pack_output.out_bits, align 4, !tbaa !2
  %cmp = icmp sge i32 %5, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @pack_output.out_buffer, align 4, !tbaa !2
  %and = and i32 %6, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %out_byte, align 1, !tbaa !6
  %7 = load i32, i32* @pack_output.out_bits, align 4, !tbaa !2
  %sub = sub nsw i32 %7, 8
  store i32 %sub, i32* @pack_output.out_bits, align 4, !tbaa !2
  %8 = load i32, i32* @pack_output.out_buffer, align 4, !tbaa !2
  %shr = lshr i32 %8, 8
  store i32 %shr, i32* @pack_output.out_buffer, align 4, !tbaa !2
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %call = call i64 @"\01_fwrite"(i8* %out_byte, i64 1, i64 1, %struct.__sFILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* @pack_output.out_bits, align 4, !tbaa !2
  %cmp1 = icmp sgt i32 %10, 0
  %conv2 = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end(i64 1, i8* %out_byte) #4
  ret i32 %conv2
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %state = alloca %struct.g72x_state, align 8
  %sample_char = alloca i8, align 1
  %sample_short = alloca i16, align 2
  %code = alloca i8, align 1
  %resid = alloca i32, align 4
  %in_coding = alloca i32, align 4
  %in_size = alloca i32, align 4
  %in_buf = alloca i32*, align 8
  %enc_routine = alloca i32 (...)*, align 8
  %enc_bits = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !7
  %0 = bitcast %struct.g72x_state* %state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #4
  call void @llvm.lifetime.start(i64 1, i8* %sample_char) #4
  %1 = bitcast i16* %sample_short to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #4
  call void @llvm.lifetime.start(i64 1, i8* %code) #4
  %2 = bitcast i32* %resid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  %3 = bitcast i32* %in_coding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #4
  %4 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #4
  %5 = bitcast i32** %in_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #4
  %6 = bitcast i32 (...)** %enc_routine to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #4
  %7 = bitcast i32* %enc_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #4
  call void @g72x_init_state(%struct.g72x_state* %state)
  store i32 1, i32* %in_coding, align 4, !tbaa !2
  store i32 1, i32* %in_size, align 4, !tbaa !2
  %8 = bitcast i8* %sample_char to i32*
  store i32* %8, i32** %in_buf, align 8, !tbaa !7
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (...)*), i32 (...)** %enc_routine, align 8, !tbaa !7
  store i32 4, i32* %enc_bits, align 4, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %9 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i8**, i8*** %argv.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !7
  %arrayidx1 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx1, align 1, !tbaa !6
  %conv = sext i8 %12 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i8**, i8*** %argv.addr, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds i8*, i8** %14, i64 1
  %15 = load i8*, i8** %arrayidx4, align 8, !tbaa !7
  %arrayidx5 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx5, align 1, !tbaa !6
  %conv6 = sext i8 %16 to i32
  switch i32 %conv6, label %sw.default [
    i32 51, label %sw.bb
    i32 52, label %sw.bb.7
    i32 53, label %sw.bb.8
    i32 117, label %sw.bb.9
    i32 97, label %sw.bb.10
    i32 108, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %while.body
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_24_encoder to i32 (...)*), i32 (...)** %enc_routine, align 8, !tbaa !7
  store i32 3, i32* %enc_bits, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (...)*), i32 (...)** %enc_routine, align 8, !tbaa !7
  store i32 4, i32* %enc_bits, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_40_encoder to i32 (...)*), i32 (...)** %enc_routine, align 8, !tbaa !7
  store i32 5, i32* %enc_bits, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  store i32 1, i32* %in_coding, align 4, !tbaa !2
  store i32 1, i32* %in_size, align 4, !tbaa !2
  %17 = bitcast i8* %sample_char to i32*
  store i32* %17, i32** %in_buf, align 8, !tbaa !7
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  store i32 2, i32* %in_coding, align 4, !tbaa !2
  store i32 1, i32* %in_size, align 4, !tbaa !2
  %18 = bitcast i8* %sample_char to i32*
  store i32* %18, i32** %in_buf, align 8, !tbaa !7
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body
  store i32 3, i32* %in_coding, align 4, !tbaa !2
  store i32 2, i32* %in_size, align 4, !tbaa !2
  %19 = bitcast i16* %sample_short to i32*
  store i32* %19, i32** %in_buf, align 8, !tbaa !7
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %call12 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %call13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %23 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %call14 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0))
  %24 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %call15 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0))
  %25 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %call16 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0))
  %26 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %call17 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %call18 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0))
  %28 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %call19 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb
  %29 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %argc.addr, align 4, !tbaa !2
  %30 = load i8**, i8*** %argv.addr, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8, !tbaa !7
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.20

while.cond.20:                                    ; preds = %cond.end, %while.end
  %31 = load i32*, i32** %in_buf, align 8, !tbaa !7
  %32 = bitcast i32* %31 to i8*
  %33 = load i32, i32* %in_size, align 4, !tbaa !2
  %conv21 = sext i32 %33 to i64
  %34 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !7
  %call22 = call i64 @fread(i8* %32, i64 %conv21, i64 1, %struct.__sFILE* %34)
  %cmp23 = icmp eq i64 %call22, 1
  br i1 %cmp23, label %while.body.25, label %while.end.34

while.body.25:                                    ; preds = %while.cond.20
  %35 = load i32 (...)*, i32 (...)** %enc_routine, align 8, !tbaa !7
  %36 = load i32, i32* %in_size, align 4, !tbaa !2
  %cmp26 = icmp eq i32 %36, 2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.25
  %37 = load i16, i16* %sample_short, align 2, !tbaa !9
  %conv28 = sext i16 %37 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body.25
  %38 = load i8, i8* %sample_char, align 1, !tbaa !6
  %conv29 = zext i8 %38 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv28, %cond.true ], [ %conv29, %cond.false ]
  %39 = load i32, i32* %in_coding, align 4, !tbaa !2
  %callee.knr.cast = bitcast i32 (...)* %35 to i32 (i32, i32, %struct.g72x_state*, ...)*
  %call30 = call i32 (i32, i32, %struct.g72x_state*, ...) %callee.knr.cast(i32 %cond, i32 %39, %struct.g72x_state* %state)
  %conv31 = trunc i32 %call30 to i8
  store i8 %conv31, i8* %code, align 1, !tbaa !6
  %40 = load i8, i8* %code, align 1, !tbaa !6
  %conv32 = zext i8 %40 to i32
  %41 = load i32, i32* %enc_bits, align 4, !tbaa !2
  %call33 = call i32 @pack_output(i32 %conv32, i32 %41)
  store i32 %call33, i32* %resid, align 4, !tbaa !2
  br label %while.cond.20

while.end.34:                                     ; preds = %while.cond.20
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.36, %while.end.34
  %42 = load i32, i32* %resid, align 4, !tbaa !2
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %while.body.36, label %while.end.38

while.body.36:                                    ; preds = %while.cond.35
  %43 = load i32, i32* %enc_bits, align 4, !tbaa !2
  %call37 = call i32 @pack_output(i32 0, i32 %43)
  store i32 %call37, i32* %resid, align 4, !tbaa !2
  br label %while.cond.35

while.end.38:                                     ; preds = %while.cond.35
  %44 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !7
  %call39 = call i32 @fclose(%struct.__sFILE* %44)
  store i32 0, i32* %retval
  %45 = bitcast i32* %enc_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #4
  %46 = bitcast i32 (...)** %enc_routine to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #4
  %47 = bitcast i32** %in_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #4
  %48 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #4
  %49 = bitcast i32* %in_coding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #4
  %50 = bitcast i32* %resid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #4
  call void @llvm.lifetime.end(i64 1, i8* %code) #4
  %51 = bitcast i16* %sample_short to i8*
  call void @llvm.lifetime.end(i64 2, i8* %51) #4
  call void @llvm.lifetime.end(i64 1, i8* %sample_char) #4
  %52 = bitcast %struct.g72x_state* %state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %52) #4
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare void @g72x_init_state(%struct.g72x_state*) #2

declare i32 @g721_encoder(i32, i32, %struct.g72x_state*) #2

declare i32 @g723_24_encoder(i32, i32, %struct.g72x_state*) #2

declare i32 @g723_40_encoder(i32, i32, %struct.g72x_state*) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare i64 @fread(i8*, i64, i64, %struct.__sFILE*) #2

declare i32 @fclose(%struct.__sFILE*) #2

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
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !4, i64 0}
