; ModuleID = 'adpcm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal global [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16

; Function Attrs: nounwind ssp uwtable
define void @adpcm_coder(i16* %indata, i8* %outdata, i32 %len, %struct.adpcm_state* %state) #0 {
entry:
  %indata.addr = alloca i16*, align 8
  %outdata.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %state.addr = alloca %struct.adpcm_state*, align 8
  %inp = alloca i16*, align 8
  %outp = alloca i8*, align 8
  %val = alloca i32, align 4
  %sign = alloca i32, align 4
  %delta = alloca i32, align 4
  %diff = alloca i32, align 4
  %step = alloca i32, align 4
  %valpred = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %index = alloca i32, align 4
  %outputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  store i16* %indata, i16** %indata.addr, align 8, !tbaa !2
  store i8* %outdata, i8** %outdata.addr, align 8, !tbaa !2
  store i32 %len, i32* %len.addr, align 4, !tbaa !6
  store %struct.adpcm_state* %state, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %0 = bitcast i16** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %valpred to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %vpdiff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %outputbuffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %bufferstep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i8*, i8** %outdata.addr, align 8, !tbaa !2
  store i8* %12, i8** %outp, align 8, !tbaa !2
  %13 = load i16*, i16** %indata.addr, align 8, !tbaa !2
  store i16* %13, i16** %inp, align 8, !tbaa !2
  %14 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %valprev = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %14, i32 0, i32 0
  %15 = load i16, i16* %valprev, align 2, !tbaa !8
  %conv = sext i16 %15 to i32
  store i32 %conv, i32* %valpred, align 4, !tbaa !6
  %16 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %index1 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %16, i32 0, i32 1
  %17 = load i8, i8* %index1, align 1, !tbaa !11
  %conv2 = sext i8 %17 to i32
  store i32 %conv2, i32* %index, align 4, !tbaa !6
  %18 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4, !tbaa !6
  store i32 %19, i32* %step, align 4, !tbaa !6
  store i32 1, i32* %bufferstep, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %len.addr, align 4, !tbaa !6
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i16*, i16** %inp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr, i16** %inp, align 8, !tbaa !2
  %22 = load i16, i16* %21, align 2, !tbaa !12
  %conv4 = sext i16 %22 to i32
  store i32 %conv4, i32* %val, align 4, !tbaa !6
  %23 = load i32, i32* %val, align 4, !tbaa !6
  %24 = load i32, i32* %valpred, align 4, !tbaa !6
  %sub = sub nsw i32 %23, %24
  store i32 %sub, i32* %diff, align 4, !tbaa !6
  %25 = load i32, i32* %diff, align 4, !tbaa !6
  %cmp5 = icmp slt i32 %25, 0
  %cond = select i1 %cmp5, i32 8, i32 0
  store i32 %cond, i32* %sign, align 4, !tbaa !6
  %26 = load i32, i32* %sign, align 4, !tbaa !6
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %27 = load i32, i32* %diff, align 4, !tbaa !6
  %sub7 = sub nsw i32 0, %27
  store i32 %sub7, i32* %diff, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %delta, align 4, !tbaa !6
  %28 = load i32, i32* %step, align 4, !tbaa !6
  %shr = ashr i32 %28, 3
  store i32 %shr, i32* %vpdiff, align 4, !tbaa !6
  %29 = load i32, i32* %diff, align 4, !tbaa !6
  %30 = load i32, i32* %step, align 4, !tbaa !6
  %cmp8 = icmp sge i32 %29, %30
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  store i32 4, i32* %delta, align 4, !tbaa !6
  %31 = load i32, i32* %step, align 4, !tbaa !6
  %32 = load i32, i32* %diff, align 4, !tbaa !6
  %sub11 = sub nsw i32 %32, %31
  store i32 %sub11, i32* %diff, align 4, !tbaa !6
  %33 = load i32, i32* %step, align 4, !tbaa !6
  %34 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %add = add nsw i32 %34, %33
  store i32 %add, i32* %vpdiff, align 4, !tbaa !6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %35 = load i32, i32* %step, align 4, !tbaa !6
  %shr13 = ashr i32 %35, 1
  store i32 %shr13, i32* %step, align 4, !tbaa !6
  %36 = load i32, i32* %diff, align 4, !tbaa !6
  %37 = load i32, i32* %step, align 4, !tbaa !6
  %cmp14 = icmp sge i32 %36, %37
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.12
  %38 = load i32, i32* %delta, align 4, !tbaa !6
  %or = or i32 %38, 2
  store i32 %or, i32* %delta, align 4, !tbaa !6
  %39 = load i32, i32* %step, align 4, !tbaa !6
  %40 = load i32, i32* %diff, align 4, !tbaa !6
  %sub17 = sub nsw i32 %40, %39
  store i32 %sub17, i32* %diff, align 4, !tbaa !6
  %41 = load i32, i32* %step, align 4, !tbaa !6
  %42 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %add18 = add nsw i32 %42, %41
  store i32 %add18, i32* %vpdiff, align 4, !tbaa !6
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.12
  %43 = load i32, i32* %step, align 4, !tbaa !6
  %shr20 = ashr i32 %43, 1
  store i32 %shr20, i32* %step, align 4, !tbaa !6
  %44 = load i32, i32* %diff, align 4, !tbaa !6
  %45 = load i32, i32* %step, align 4, !tbaa !6
  %cmp21 = icmp sge i32 %44, %45
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.19
  %46 = load i32, i32* %delta, align 4, !tbaa !6
  %or24 = or i32 %46, 1
  store i32 %or24, i32* %delta, align 4, !tbaa !6
  %47 = load i32, i32* %step, align 4, !tbaa !6
  %48 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %add25 = add nsw i32 %48, %47
  store i32 %add25, i32* %vpdiff, align 4, !tbaa !6
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.19
  %49 = load i32, i32* %sign, align 4, !tbaa !6
  %tobool27 = icmp ne i32 %49, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.26
  %50 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %51 = load i32, i32* %valpred, align 4, !tbaa !6
  %sub29 = sub nsw i32 %51, %50
  store i32 %sub29, i32* %valpred, align 4, !tbaa !6
  br label %if.end.31

if.else:                                          ; preds = %if.end.26
  %52 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %53 = load i32, i32* %valpred, align 4, !tbaa !6
  %add30 = add nsw i32 %53, %52
  store i32 %add30, i32* %valpred, align 4, !tbaa !6
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.28
  %54 = load i32, i32* %valpred, align 4, !tbaa !6
  %cmp32 = icmp sgt i32 %54, 32767
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.end.31
  store i32 32767, i32* %valpred, align 4, !tbaa !6
  br label %if.end.40

if.else.35:                                       ; preds = %if.end.31
  %55 = load i32, i32* %valpred, align 4, !tbaa !6
  %cmp36 = icmp slt i32 %55, -32768
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else.35
  store i32 -32768, i32* %valpred, align 4, !tbaa !6
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.else.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.34
  %56 = load i32, i32* %sign, align 4, !tbaa !6
  %57 = load i32, i32* %delta, align 4, !tbaa !6
  %or41 = or i32 %57, %56
  store i32 %or41, i32* %delta, align 4, !tbaa !6
  %58 = load i32, i32* %delta, align 4, !tbaa !6
  %idxprom42 = sext i32 %58 to i64
  %arrayidx43 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i32 0, i64 %idxprom42
  %59 = load i32, i32* %arrayidx43, align 4, !tbaa !6
  %60 = load i32, i32* %index, align 4, !tbaa !6
  %add44 = add nsw i32 %60, %59
  store i32 %add44, i32* %index, align 4, !tbaa !6
  %61 = load i32, i32* %index, align 4, !tbaa !6
  %cmp45 = icmp slt i32 %61, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.40
  store i32 0, i32* %index, align 4, !tbaa !6
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.40
  %62 = load i32, i32* %index, align 4, !tbaa !6
  %cmp49 = icmp sgt i32 %62, 88
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  store i32 88, i32* %index, align 4, !tbaa !6
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.48
  %63 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom53 = sext i32 %63 to i64
  %arrayidx54 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom53
  %64 = load i32, i32* %arrayidx54, align 4, !tbaa !6
  store i32 %64, i32* %step, align 4, !tbaa !6
  %65 = load i32, i32* %bufferstep, align 4, !tbaa !6
  %tobool55 = icmp ne i32 %65, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.52
  %66 = load i32, i32* %delta, align 4, !tbaa !6
  %shl = shl i32 %66, 4
  %and = and i32 %shl, 240
  store i32 %and, i32* %outputbuffer, align 4, !tbaa !6
  br label %if.end.62

if.else.57:                                       ; preds = %if.end.52
  %67 = load i32, i32* %delta, align 4, !tbaa !6
  %and58 = and i32 %67, 15
  %68 = load i32, i32* %outputbuffer, align 4, !tbaa !6
  %or59 = or i32 %and58, %68
  %conv60 = trunc i32 %or59 to i8
  %69 = load i8*, i8** %outp, align 8, !tbaa !2
  %incdec.ptr61 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr61, i8** %outp, align 8, !tbaa !2
  store i8 %conv60, i8* %69, align 1, !tbaa !13
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.57, %if.then.56
  %70 = load i32, i32* %bufferstep, align 4, !tbaa !6
  %tobool63 = icmp ne i32 %70, 0
  %lnot = xor i1 %tobool63, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %bufferstep, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %71 = load i32, i32* %len.addr, align 4, !tbaa !6
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load i32, i32* %bufferstep, align 4, !tbaa !6
  %tobool64 = icmp ne i32 %72, 0
  br i1 %tobool64, label %if.end.68, label %if.then.65

if.then.65:                                       ; preds = %for.end
  %73 = load i32, i32* %outputbuffer, align 4, !tbaa !6
  %conv66 = trunc i32 %73 to i8
  %74 = load i8*, i8** %outp, align 8, !tbaa !2
  %incdec.ptr67 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr67, i8** %outp, align 8, !tbaa !2
  store i8 %conv66, i8* %74, align 1, !tbaa !13
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %for.end
  %75 = load i32, i32* %valpred, align 4, !tbaa !6
  %conv69 = trunc i32 %75 to i16
  %76 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %valprev70 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %76, i32 0, i32 0
  store i16 %conv69, i16* %valprev70, align 2, !tbaa !8
  %77 = load i32, i32* %index, align 4, !tbaa !6
  %conv71 = trunc i32 %77 to i8
  %78 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %index72 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %78, i32 0, i32 1
  store i8 %conv71, i8* %index72, align 1, !tbaa !11
  %79 = bitcast i32* %bufferstep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %outputbuffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %vpdiff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %valpred to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i16** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @adpcm_decoder(i8* %indata, i16* %outdata, i32 %len, %struct.adpcm_state* %state) #0 {
entry:
  %indata.addr = alloca i8*, align 8
  %outdata.addr = alloca i16*, align 8
  %len.addr = alloca i32, align 4
  %state.addr = alloca %struct.adpcm_state*, align 8
  %inp = alloca i8*, align 8
  %outp = alloca i16*, align 8
  %sign = alloca i32, align 4
  %delta = alloca i32, align 4
  %step = alloca i32, align 4
  %valpred = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %index = alloca i32, align 4
  %inputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  store i8* %indata, i8** %indata.addr, align 8, !tbaa !2
  store i16* %outdata, i16** %outdata.addr, align 8, !tbaa !2
  store i32 %len, i32* %len.addr, align 4, !tbaa !6
  store %struct.adpcm_state* %state, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %0 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %valpred to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %vpdiff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %inputbuffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %bufferstep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i16*, i16** %outdata.addr, align 8, !tbaa !2
  store i16* %10, i16** %outp, align 8, !tbaa !2
  %11 = load i8*, i8** %indata.addr, align 8, !tbaa !2
  store i8* %11, i8** %inp, align 8, !tbaa !2
  %12 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %valprev = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %12, i32 0, i32 0
  %13 = load i16, i16* %valprev, align 2, !tbaa !8
  %conv = sext i16 %13 to i32
  store i32 %conv, i32* %valpred, align 4, !tbaa !6
  %14 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %index1 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %14, i32 0, i32 1
  %15 = load i8, i8* %index1, align 1, !tbaa !11
  %conv2 = sext i8 %15 to i32
  store i32 %conv2, i32* %index, align 4, !tbaa !6
  %16 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4, !tbaa !6
  store i32 %17, i32* %step, align 4, !tbaa !6
  store i32 0, i32* %bufferstep, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %len.addr, align 4, !tbaa !6
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %bufferstep, align 4, !tbaa !6
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load i32, i32* %inputbuffer, align 4, !tbaa !6
  %and = and i32 %20, 15
  store i32 %and, i32* %delta, align 4, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %for.body
  %21 = load i8*, i8** %inp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !2
  %22 = load i8, i8* %21, align 1, !tbaa !13
  %conv4 = sext i8 %22 to i32
  store i32 %conv4, i32* %inputbuffer, align 4, !tbaa !6
  %23 = load i32, i32* %inputbuffer, align 4, !tbaa !6
  %shr = ashr i32 %23, 4
  %and5 = and i32 %shr, 15
  store i32 %and5, i32* %delta, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load i32, i32* %bufferstep, align 4, !tbaa !6
  %tobool6 = icmp ne i32 %24, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %bufferstep, align 4, !tbaa !6
  %25 = load i32, i32* %delta, align 4, !tbaa !6
  %idxprom7 = sext i32 %25 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i32 0, i64 %idxprom7
  %26 = load i32, i32* %arrayidx8, align 4, !tbaa !6
  %27 = load i32, i32* %index, align 4, !tbaa !6
  %add = add nsw i32 %27, %26
  store i32 %add, i32* %index, align 4, !tbaa !6
  %28 = load i32, i32* %index, align 4, !tbaa !6
  %cmp9 = icmp slt i32 %28, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %index, align 4, !tbaa !6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %29 = load i32, i32* %index, align 4, !tbaa !6
  %cmp13 = icmp sgt i32 %29, 88
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 88, i32* %index, align 4, !tbaa !6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %30 = load i32, i32* %delta, align 4, !tbaa !6
  %and17 = and i32 %30, 8
  store i32 %and17, i32* %sign, align 4, !tbaa !6
  %31 = load i32, i32* %delta, align 4, !tbaa !6
  %and18 = and i32 %31, 7
  store i32 %and18, i32* %delta, align 4, !tbaa !6
  %32 = load i32, i32* %step, align 4, !tbaa !6
  %shr19 = ashr i32 %32, 3
  store i32 %shr19, i32* %vpdiff, align 4, !tbaa !6
  %33 = load i32, i32* %delta, align 4, !tbaa !6
  %and20 = and i32 %33, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.16
  %34 = load i32, i32* %step, align 4, !tbaa !6
  %35 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %add23 = add nsw i32 %35, %34
  store i32 %add23, i32* %vpdiff, align 4, !tbaa !6
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.16
  %36 = load i32, i32* %delta, align 4, !tbaa !6
  %and25 = and i32 %36, 2
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.24
  %37 = load i32, i32* %step, align 4, !tbaa !6
  %shr28 = ashr i32 %37, 1
  %38 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %add29 = add nsw i32 %38, %shr28
  store i32 %add29, i32* %vpdiff, align 4, !tbaa !6
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.24
  %39 = load i32, i32* %delta, align 4, !tbaa !6
  %and31 = and i32 %39, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.30
  %40 = load i32, i32* %step, align 4, !tbaa !6
  %shr34 = ashr i32 %40, 2
  %41 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %add35 = add nsw i32 %41, %shr34
  store i32 %add35, i32* %vpdiff, align 4, !tbaa !6
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.30
  %42 = load i32, i32* %sign, align 4, !tbaa !6
  %tobool37 = icmp ne i32 %42, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.36
  %43 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %44 = load i32, i32* %valpred, align 4, !tbaa !6
  %sub = sub nsw i32 %44, %43
  store i32 %sub, i32* %valpred, align 4, !tbaa !6
  br label %if.end.41

if.else.39:                                       ; preds = %if.end.36
  %45 = load i32, i32* %vpdiff, align 4, !tbaa !6
  %46 = load i32, i32* %valpred, align 4, !tbaa !6
  %add40 = add nsw i32 %46, %45
  store i32 %add40, i32* %valpred, align 4, !tbaa !6
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  %47 = load i32, i32* %valpred, align 4, !tbaa !6
  %cmp42 = icmp sgt i32 %47, 32767
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  store i32 32767, i32* %valpred, align 4, !tbaa !6
  br label %if.end.50

if.else.45:                                       ; preds = %if.end.41
  %48 = load i32, i32* %valpred, align 4, !tbaa !6
  %cmp46 = icmp slt i32 %48, -32768
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else.45
  store i32 -32768, i32* %valpred, align 4, !tbaa !6
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.else.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.44
  %49 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom51 = sext i32 %49 to i64
  %arrayidx52 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom51
  %50 = load i32, i32* %arrayidx52, align 4, !tbaa !6
  store i32 %50, i32* %step, align 4, !tbaa !6
  %51 = load i32, i32* %valpred, align 4, !tbaa !6
  %conv53 = trunc i32 %51 to i16
  %52 = load i16*, i16** %outp, align 8, !tbaa !2
  %incdec.ptr54 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %incdec.ptr54, i16** %outp, align 8, !tbaa !2
  store i16 %conv53, i16* %52, align 2, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %53 = load i32, i32* %len.addr, align 4, !tbaa !6
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load i32, i32* %valpred, align 4, !tbaa !6
  %conv55 = trunc i32 %54 to i16
  %55 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %valprev56 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %55, i32 0, i32 0
  store i16 %conv55, i16* %valprev56, align 2, !tbaa !8
  %56 = load i32, i32* %index, align 4, !tbaa !6
  %conv57 = trunc i32 %56 to i8
  %57 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8, !tbaa !2
  %index58 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %57, i32 0, i32 1
  store i8 %conv57, i8* %index58, align 1, !tbaa !11
  %58 = bitcast i32* %bufferstep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %inputbuffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %vpdiff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %valpred to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i16** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  ret void
}

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
!8 = !{!9, !10, i64 0}
!9 = !{!"adpcm_state", !10, i64 0, !4, i64 2}
!10 = !{!"short", !4, i64 0}
!11 = !{!9, !4, i64 2}
!12 = !{!10, !10, i64 0}
!13 = !{!4, !4, i64 0}
