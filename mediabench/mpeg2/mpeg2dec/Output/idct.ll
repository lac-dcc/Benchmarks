; ModuleID = 'idct.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

@iclip = internal global [1024 x i16] zeroinitializer, align 16
@iclp = internal global i16* null, align 8

; Function Attrs: nounwind ssp uwtable
define void @Fast_IDCT(i16* %block) #0 {
entry:
  %block.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %block, i16** %block.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %block.addr, align 8, !tbaa !2
  %3 = load i32, i32* %i, align 4, !tbaa !6
  %mul = mul nsw i32 8, %3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %2, i64 %idx.ext
  call void @idctrow(i16* %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %cmp2 = icmp slt i32 %5, 8
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i16*, i16** %block.addr, align 8, !tbaa !2
  %7 = load i32, i32* %i, align 4, !tbaa !6
  %idx.ext4 = sext i32 %7 to i64
  %add.ptr5 = getelementptr inbounds i16, i16* %6, i64 %idx.ext4
  call void @idctcol(i16* %add.ptr5)
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4, !tbaa !6
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* %i, align 4, !tbaa !6
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @idctrow(i16* %blk) #0 {
entry:
  %blk.addr = alloca i16*, align 8
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i16* %blk, i16** %blk.addr, align 8, !tbaa !2
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %x4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %x5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %x6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %x8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 4
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv = sext i16 %10 to i32
  %shl = shl i32 %conv, 11
  store i32 %shl, i32* %x1, align 4, !tbaa !6
  %11 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i16, i16* %11, i64 6
  %12 = load i16, i16* %arrayidx1, align 2, !tbaa !8
  %conv2 = sext i16 %12 to i32
  store i32 %conv2, i32* %x2, align 4, !tbaa !6
  %or = or i32 %shl, %conv2
  %13 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 2
  %14 = load i16, i16* %arrayidx3, align 2, !tbaa !8
  %conv4 = sext i16 %14 to i32
  store i32 %conv4, i32* %x3, align 4, !tbaa !6
  %or5 = or i32 %or, %conv4
  %15 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i16, i16* %15, i64 1
  %16 = load i16, i16* %arrayidx6, align 2, !tbaa !8
  %conv7 = sext i16 %16 to i32
  store i32 %conv7, i32* %x4, align 4, !tbaa !6
  %or8 = or i32 %or5, %conv7
  %17 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i16, i16* %17, i64 7
  %18 = load i16, i16* %arrayidx9, align 2, !tbaa !8
  %conv10 = sext i16 %18 to i32
  store i32 %conv10, i32* %x5, align 4, !tbaa !6
  %or11 = or i32 %or8, %conv10
  %19 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i16, i16* %19, i64 5
  %20 = load i16, i16* %arrayidx12, align 2, !tbaa !8
  %conv13 = sext i16 %20 to i32
  store i32 %conv13, i32* %x6, align 4, !tbaa !6
  %or14 = or i32 %or11, %conv13
  %21 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i16, i16* %21, i64 3
  %22 = load i16, i16* %arrayidx15, align 2, !tbaa !8
  %conv16 = sext i16 %22 to i32
  store i32 %conv16, i32* %x7, align 4, !tbaa !6
  %or17 = or i32 %or14, %conv16
  %tobool = icmp ne i32 %or17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %23 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i16, i16* %23, i64 0
  %24 = load i16, i16* %arrayidx18, align 2, !tbaa !8
  %conv19 = sext i16 %24 to i32
  %shl20 = shl i32 %conv19, 3
  %conv21 = trunc i32 %shl20 to i16
  %25 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i16, i16* %25, i64 7
  store i16 %conv21, i16* %arrayidx22, align 2, !tbaa !8
  %26 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i16, i16* %26, i64 6
  store i16 %conv21, i16* %arrayidx23, align 2, !tbaa !8
  %27 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i16, i16* %27, i64 5
  store i16 %conv21, i16* %arrayidx24, align 2, !tbaa !8
  %28 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds i16, i16* %28, i64 4
  store i16 %conv21, i16* %arrayidx25, align 2, !tbaa !8
  %29 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i16, i16* %29, i64 3
  store i16 %conv21, i16* %arrayidx26, align 2, !tbaa !8
  %30 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i16, i16* %30, i64 2
  store i16 %conv21, i16* %arrayidx27, align 2, !tbaa !8
  %31 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds i16, i16* %31, i64 1
  store i16 %conv21, i16* %arrayidx28, align 2, !tbaa !8
  %32 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i16, i16* %32, i64 0
  store i16 %conv21, i16* %arrayidx29, align 2, !tbaa !8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %33 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i16, i16* %33, i64 0
  %34 = load i16, i16* %arrayidx30, align 2, !tbaa !8
  %conv31 = sext i16 %34 to i32
  %shl32 = shl i32 %conv31, 11
  %add = add nsw i32 %shl32, 128
  store i32 %add, i32* %x0, align 4, !tbaa !6
  %35 = load i32, i32* %x4, align 4, !tbaa !6
  %36 = load i32, i32* %x5, align 4, !tbaa !6
  %add33 = add nsw i32 %35, %36
  %mul = mul nsw i32 565, %add33
  store i32 %mul, i32* %x8, align 4, !tbaa !6
  %37 = load i32, i32* %x8, align 4, !tbaa !6
  %38 = load i32, i32* %x4, align 4, !tbaa !6
  %mul34 = mul nsw i32 2276, %38
  %add35 = add nsw i32 %37, %mul34
  store i32 %add35, i32* %x4, align 4, !tbaa !6
  %39 = load i32, i32* %x8, align 4, !tbaa !6
  %40 = load i32, i32* %x5, align 4, !tbaa !6
  %mul36 = mul nsw i32 3406, %40
  %sub = sub nsw i32 %39, %mul36
  store i32 %sub, i32* %x5, align 4, !tbaa !6
  %41 = load i32, i32* %x6, align 4, !tbaa !6
  %42 = load i32, i32* %x7, align 4, !tbaa !6
  %add37 = add nsw i32 %41, %42
  %mul38 = mul nsw i32 2408, %add37
  store i32 %mul38, i32* %x8, align 4, !tbaa !6
  %43 = load i32, i32* %x8, align 4, !tbaa !6
  %44 = load i32, i32* %x6, align 4, !tbaa !6
  %mul39 = mul nsw i32 799, %44
  %sub40 = sub nsw i32 %43, %mul39
  store i32 %sub40, i32* %x6, align 4, !tbaa !6
  %45 = load i32, i32* %x8, align 4, !tbaa !6
  %46 = load i32, i32* %x7, align 4, !tbaa !6
  %mul41 = mul nsw i32 4017, %46
  %sub42 = sub nsw i32 %45, %mul41
  store i32 %sub42, i32* %x7, align 4, !tbaa !6
  %47 = load i32, i32* %x0, align 4, !tbaa !6
  %48 = load i32, i32* %x1, align 4, !tbaa !6
  %add43 = add nsw i32 %47, %48
  store i32 %add43, i32* %x8, align 4, !tbaa !6
  %49 = load i32, i32* %x1, align 4, !tbaa !6
  %50 = load i32, i32* %x0, align 4, !tbaa !6
  %sub44 = sub nsw i32 %50, %49
  store i32 %sub44, i32* %x0, align 4, !tbaa !6
  %51 = load i32, i32* %x3, align 4, !tbaa !6
  %52 = load i32, i32* %x2, align 4, !tbaa !6
  %add45 = add nsw i32 %51, %52
  %mul46 = mul nsw i32 1108, %add45
  store i32 %mul46, i32* %x1, align 4, !tbaa !6
  %53 = load i32, i32* %x1, align 4, !tbaa !6
  %54 = load i32, i32* %x2, align 4, !tbaa !6
  %mul47 = mul nsw i32 3784, %54
  %sub48 = sub nsw i32 %53, %mul47
  store i32 %sub48, i32* %x2, align 4, !tbaa !6
  %55 = load i32, i32* %x1, align 4, !tbaa !6
  %56 = load i32, i32* %x3, align 4, !tbaa !6
  %mul49 = mul nsw i32 1568, %56
  %add50 = add nsw i32 %55, %mul49
  store i32 %add50, i32* %x3, align 4, !tbaa !6
  %57 = load i32, i32* %x4, align 4, !tbaa !6
  %58 = load i32, i32* %x6, align 4, !tbaa !6
  %add51 = add nsw i32 %57, %58
  store i32 %add51, i32* %x1, align 4, !tbaa !6
  %59 = load i32, i32* %x6, align 4, !tbaa !6
  %60 = load i32, i32* %x4, align 4, !tbaa !6
  %sub52 = sub nsw i32 %60, %59
  store i32 %sub52, i32* %x4, align 4, !tbaa !6
  %61 = load i32, i32* %x5, align 4, !tbaa !6
  %62 = load i32, i32* %x7, align 4, !tbaa !6
  %add53 = add nsw i32 %61, %62
  store i32 %add53, i32* %x6, align 4, !tbaa !6
  %63 = load i32, i32* %x7, align 4, !tbaa !6
  %64 = load i32, i32* %x5, align 4, !tbaa !6
  %sub54 = sub nsw i32 %64, %63
  store i32 %sub54, i32* %x5, align 4, !tbaa !6
  %65 = load i32, i32* %x8, align 4, !tbaa !6
  %66 = load i32, i32* %x3, align 4, !tbaa !6
  %add55 = add nsw i32 %65, %66
  store i32 %add55, i32* %x7, align 4, !tbaa !6
  %67 = load i32, i32* %x3, align 4, !tbaa !6
  %68 = load i32, i32* %x8, align 4, !tbaa !6
  %sub56 = sub nsw i32 %68, %67
  store i32 %sub56, i32* %x8, align 4, !tbaa !6
  %69 = load i32, i32* %x0, align 4, !tbaa !6
  %70 = load i32, i32* %x2, align 4, !tbaa !6
  %add57 = add nsw i32 %69, %70
  store i32 %add57, i32* %x3, align 4, !tbaa !6
  %71 = load i32, i32* %x2, align 4, !tbaa !6
  %72 = load i32, i32* %x0, align 4, !tbaa !6
  %sub58 = sub nsw i32 %72, %71
  store i32 %sub58, i32* %x0, align 4, !tbaa !6
  %73 = load i32, i32* %x4, align 4, !tbaa !6
  %74 = load i32, i32* %x5, align 4, !tbaa !6
  %add59 = add nsw i32 %73, %74
  %mul60 = mul nsw i32 181, %add59
  %add61 = add nsw i32 %mul60, 128
  %shr = ashr i32 %add61, 8
  store i32 %shr, i32* %x2, align 4, !tbaa !6
  %75 = load i32, i32* %x4, align 4, !tbaa !6
  %76 = load i32, i32* %x5, align 4, !tbaa !6
  %sub62 = sub nsw i32 %75, %76
  %mul63 = mul nsw i32 181, %sub62
  %add64 = add nsw i32 %mul63, 128
  %shr65 = ashr i32 %add64, 8
  store i32 %shr65, i32* %x4, align 4, !tbaa !6
  %77 = load i32, i32* %x7, align 4, !tbaa !6
  %78 = load i32, i32* %x1, align 4, !tbaa !6
  %add66 = add nsw i32 %77, %78
  %shr67 = ashr i32 %add66, 8
  %conv68 = trunc i32 %shr67 to i16
  %79 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds i16, i16* %79, i64 0
  store i16 %conv68, i16* %arrayidx69, align 2, !tbaa !8
  %80 = load i32, i32* %x3, align 4, !tbaa !6
  %81 = load i32, i32* %x2, align 4, !tbaa !6
  %add70 = add nsw i32 %80, %81
  %shr71 = ashr i32 %add70, 8
  %conv72 = trunc i32 %shr71 to i16
  %82 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds i16, i16* %82, i64 1
  store i16 %conv72, i16* %arrayidx73, align 2, !tbaa !8
  %83 = load i32, i32* %x0, align 4, !tbaa !6
  %84 = load i32, i32* %x4, align 4, !tbaa !6
  %add74 = add nsw i32 %83, %84
  %shr75 = ashr i32 %add74, 8
  %conv76 = trunc i32 %shr75 to i16
  %85 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds i16, i16* %85, i64 2
  store i16 %conv76, i16* %arrayidx77, align 2, !tbaa !8
  %86 = load i32, i32* %x8, align 4, !tbaa !6
  %87 = load i32, i32* %x6, align 4, !tbaa !6
  %add78 = add nsw i32 %86, %87
  %shr79 = ashr i32 %add78, 8
  %conv80 = trunc i32 %shr79 to i16
  %88 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx81 = getelementptr inbounds i16, i16* %88, i64 3
  store i16 %conv80, i16* %arrayidx81, align 2, !tbaa !8
  %89 = load i32, i32* %x8, align 4, !tbaa !6
  %90 = load i32, i32* %x6, align 4, !tbaa !6
  %sub82 = sub nsw i32 %89, %90
  %shr83 = ashr i32 %sub82, 8
  %conv84 = trunc i32 %shr83 to i16
  %91 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds i16, i16* %91, i64 4
  store i16 %conv84, i16* %arrayidx85, align 2, !tbaa !8
  %92 = load i32, i32* %x0, align 4, !tbaa !6
  %93 = load i32, i32* %x4, align 4, !tbaa !6
  %sub86 = sub nsw i32 %92, %93
  %shr87 = ashr i32 %sub86, 8
  %conv88 = trunc i32 %shr87 to i16
  %94 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds i16, i16* %94, i64 5
  store i16 %conv88, i16* %arrayidx89, align 2, !tbaa !8
  %95 = load i32, i32* %x3, align 4, !tbaa !6
  %96 = load i32, i32* %x2, align 4, !tbaa !6
  %sub90 = sub nsw i32 %95, %96
  %shr91 = ashr i32 %sub90, 8
  %conv92 = trunc i32 %shr91 to i16
  %97 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds i16, i16* %97, i64 6
  store i16 %conv92, i16* %arrayidx93, align 2, !tbaa !8
  %98 = load i32, i32* %x7, align 4, !tbaa !6
  %99 = load i32, i32* %x1, align 4, !tbaa !6
  %sub94 = sub nsw i32 %98, %99
  %shr95 = ashr i32 %sub94, 8
  %conv96 = trunc i32 %shr95 to i16
  %100 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx97 = getelementptr inbounds i16, i16* %100, i64 7
  store i16 %conv96, i16* %arrayidx97, align 2, !tbaa !8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %101 = bitcast i32* %x8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #2
  %102 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32* %x6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %x5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %x4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @idctcol(i16* %blk) #0 {
entry:
  %blk.addr = alloca i16*, align 8
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i16* %blk, i16** %blk.addr, align 8, !tbaa !2
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %x4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %x5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %x6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %x8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 32
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv = sext i16 %10 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, i32* %x1, align 4, !tbaa !6
  %11 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i16, i16* %11, i64 48
  %12 = load i16, i16* %arrayidx1, align 2, !tbaa !8
  %conv2 = sext i16 %12 to i32
  store i32 %conv2, i32* %x2, align 4, !tbaa !6
  %or = or i32 %shl, %conv2
  %13 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 16
  %14 = load i16, i16* %arrayidx3, align 2, !tbaa !8
  %conv4 = sext i16 %14 to i32
  store i32 %conv4, i32* %x3, align 4, !tbaa !6
  %or5 = or i32 %or, %conv4
  %15 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i16, i16* %15, i64 8
  %16 = load i16, i16* %arrayidx6, align 2, !tbaa !8
  %conv7 = sext i16 %16 to i32
  store i32 %conv7, i32* %x4, align 4, !tbaa !6
  %or8 = or i32 %or5, %conv7
  %17 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i16, i16* %17, i64 56
  %18 = load i16, i16* %arrayidx9, align 2, !tbaa !8
  %conv10 = sext i16 %18 to i32
  store i32 %conv10, i32* %x5, align 4, !tbaa !6
  %or11 = or i32 %or8, %conv10
  %19 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i16, i16* %19, i64 40
  %20 = load i16, i16* %arrayidx12, align 2, !tbaa !8
  %conv13 = sext i16 %20 to i32
  store i32 %conv13, i32* %x6, align 4, !tbaa !6
  %or14 = or i32 %or11, %conv13
  %21 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i16, i16* %21, i64 24
  %22 = load i16, i16* %arrayidx15, align 2, !tbaa !8
  %conv16 = sext i16 %22 to i32
  store i32 %conv16, i32* %x7, align 4, !tbaa !6
  %or17 = or i32 %or14, %conv16
  %tobool = icmp ne i32 %or17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %23 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i16, i16* %23, i64 0
  %24 = load i16, i16* %arrayidx18, align 2, !tbaa !8
  %conv19 = sext i16 %24 to i32
  %add = add nsw i32 %conv19, 32
  %shr = ashr i32 %add, 6
  %idxprom = sext i32 %shr to i64
  %25 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i16, i16* %25, i64 %idxprom
  %26 = load i16, i16* %arrayidx20, align 2, !tbaa !8
  %27 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i16, i16* %27, i64 56
  store i16 %26, i16* %arrayidx21, align 2, !tbaa !8
  %28 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i16, i16* %28, i64 48
  store i16 %26, i16* %arrayidx22, align 2, !tbaa !8
  %29 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i16, i16* %29, i64 40
  store i16 %26, i16* %arrayidx23, align 2, !tbaa !8
  %30 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i16, i16* %30, i64 32
  store i16 %26, i16* %arrayidx24, align 2, !tbaa !8
  %31 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds i16, i16* %31, i64 24
  store i16 %26, i16* %arrayidx25, align 2, !tbaa !8
  %32 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i16, i16* %32, i64 16
  store i16 %26, i16* %arrayidx26, align 2, !tbaa !8
  %33 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i16, i16* %33, i64 8
  store i16 %26, i16* %arrayidx27, align 2, !tbaa !8
  %34 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds i16, i16* %34, i64 0
  store i16 %26, i16* %arrayidx28, align 2, !tbaa !8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %35 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i16, i16* %35, i64 0
  %36 = load i16, i16* %arrayidx29, align 2, !tbaa !8
  %conv30 = sext i16 %36 to i32
  %shl31 = shl i32 %conv30, 8
  %add32 = add nsw i32 %shl31, 8192
  store i32 %add32, i32* %x0, align 4, !tbaa !6
  %37 = load i32, i32* %x4, align 4, !tbaa !6
  %38 = load i32, i32* %x5, align 4, !tbaa !6
  %add33 = add nsw i32 %37, %38
  %mul = mul nsw i32 565, %add33
  %add34 = add nsw i32 %mul, 4
  store i32 %add34, i32* %x8, align 4, !tbaa !6
  %39 = load i32, i32* %x8, align 4, !tbaa !6
  %40 = load i32, i32* %x4, align 4, !tbaa !6
  %mul35 = mul nsw i32 2276, %40
  %add36 = add nsw i32 %39, %mul35
  %shr37 = ashr i32 %add36, 3
  store i32 %shr37, i32* %x4, align 4, !tbaa !6
  %41 = load i32, i32* %x8, align 4, !tbaa !6
  %42 = load i32, i32* %x5, align 4, !tbaa !6
  %mul38 = mul nsw i32 3406, %42
  %sub = sub nsw i32 %41, %mul38
  %shr39 = ashr i32 %sub, 3
  store i32 %shr39, i32* %x5, align 4, !tbaa !6
  %43 = load i32, i32* %x6, align 4, !tbaa !6
  %44 = load i32, i32* %x7, align 4, !tbaa !6
  %add40 = add nsw i32 %43, %44
  %mul41 = mul nsw i32 2408, %add40
  %add42 = add nsw i32 %mul41, 4
  store i32 %add42, i32* %x8, align 4, !tbaa !6
  %45 = load i32, i32* %x8, align 4, !tbaa !6
  %46 = load i32, i32* %x6, align 4, !tbaa !6
  %mul43 = mul nsw i32 799, %46
  %sub44 = sub nsw i32 %45, %mul43
  %shr45 = ashr i32 %sub44, 3
  store i32 %shr45, i32* %x6, align 4, !tbaa !6
  %47 = load i32, i32* %x8, align 4, !tbaa !6
  %48 = load i32, i32* %x7, align 4, !tbaa !6
  %mul46 = mul nsw i32 4017, %48
  %sub47 = sub nsw i32 %47, %mul46
  %shr48 = ashr i32 %sub47, 3
  store i32 %shr48, i32* %x7, align 4, !tbaa !6
  %49 = load i32, i32* %x0, align 4, !tbaa !6
  %50 = load i32, i32* %x1, align 4, !tbaa !6
  %add49 = add nsw i32 %49, %50
  store i32 %add49, i32* %x8, align 4, !tbaa !6
  %51 = load i32, i32* %x1, align 4, !tbaa !6
  %52 = load i32, i32* %x0, align 4, !tbaa !6
  %sub50 = sub nsw i32 %52, %51
  store i32 %sub50, i32* %x0, align 4, !tbaa !6
  %53 = load i32, i32* %x3, align 4, !tbaa !6
  %54 = load i32, i32* %x2, align 4, !tbaa !6
  %add51 = add nsw i32 %53, %54
  %mul52 = mul nsw i32 1108, %add51
  %add53 = add nsw i32 %mul52, 4
  store i32 %add53, i32* %x1, align 4, !tbaa !6
  %55 = load i32, i32* %x1, align 4, !tbaa !6
  %56 = load i32, i32* %x2, align 4, !tbaa !6
  %mul54 = mul nsw i32 3784, %56
  %sub55 = sub nsw i32 %55, %mul54
  %shr56 = ashr i32 %sub55, 3
  store i32 %shr56, i32* %x2, align 4, !tbaa !6
  %57 = load i32, i32* %x1, align 4, !tbaa !6
  %58 = load i32, i32* %x3, align 4, !tbaa !6
  %mul57 = mul nsw i32 1568, %58
  %add58 = add nsw i32 %57, %mul57
  %shr59 = ashr i32 %add58, 3
  store i32 %shr59, i32* %x3, align 4, !tbaa !6
  %59 = load i32, i32* %x4, align 4, !tbaa !6
  %60 = load i32, i32* %x6, align 4, !tbaa !6
  %add60 = add nsw i32 %59, %60
  store i32 %add60, i32* %x1, align 4, !tbaa !6
  %61 = load i32, i32* %x6, align 4, !tbaa !6
  %62 = load i32, i32* %x4, align 4, !tbaa !6
  %sub61 = sub nsw i32 %62, %61
  store i32 %sub61, i32* %x4, align 4, !tbaa !6
  %63 = load i32, i32* %x5, align 4, !tbaa !6
  %64 = load i32, i32* %x7, align 4, !tbaa !6
  %add62 = add nsw i32 %63, %64
  store i32 %add62, i32* %x6, align 4, !tbaa !6
  %65 = load i32, i32* %x7, align 4, !tbaa !6
  %66 = load i32, i32* %x5, align 4, !tbaa !6
  %sub63 = sub nsw i32 %66, %65
  store i32 %sub63, i32* %x5, align 4, !tbaa !6
  %67 = load i32, i32* %x8, align 4, !tbaa !6
  %68 = load i32, i32* %x3, align 4, !tbaa !6
  %add64 = add nsw i32 %67, %68
  store i32 %add64, i32* %x7, align 4, !tbaa !6
  %69 = load i32, i32* %x3, align 4, !tbaa !6
  %70 = load i32, i32* %x8, align 4, !tbaa !6
  %sub65 = sub nsw i32 %70, %69
  store i32 %sub65, i32* %x8, align 4, !tbaa !6
  %71 = load i32, i32* %x0, align 4, !tbaa !6
  %72 = load i32, i32* %x2, align 4, !tbaa !6
  %add66 = add nsw i32 %71, %72
  store i32 %add66, i32* %x3, align 4, !tbaa !6
  %73 = load i32, i32* %x2, align 4, !tbaa !6
  %74 = load i32, i32* %x0, align 4, !tbaa !6
  %sub67 = sub nsw i32 %74, %73
  store i32 %sub67, i32* %x0, align 4, !tbaa !6
  %75 = load i32, i32* %x4, align 4, !tbaa !6
  %76 = load i32, i32* %x5, align 4, !tbaa !6
  %add68 = add nsw i32 %75, %76
  %mul69 = mul nsw i32 181, %add68
  %add70 = add nsw i32 %mul69, 128
  %shr71 = ashr i32 %add70, 8
  store i32 %shr71, i32* %x2, align 4, !tbaa !6
  %77 = load i32, i32* %x4, align 4, !tbaa !6
  %78 = load i32, i32* %x5, align 4, !tbaa !6
  %sub72 = sub nsw i32 %77, %78
  %mul73 = mul nsw i32 181, %sub72
  %add74 = add nsw i32 %mul73, 128
  %shr75 = ashr i32 %add74, 8
  store i32 %shr75, i32* %x4, align 4, !tbaa !6
  %79 = load i32, i32* %x7, align 4, !tbaa !6
  %80 = load i32, i32* %x1, align 4, !tbaa !6
  %add76 = add nsw i32 %79, %80
  %shr77 = ashr i32 %add76, 14
  %idxprom78 = sext i32 %shr77 to i64
  %81 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx79 = getelementptr inbounds i16, i16* %81, i64 %idxprom78
  %82 = load i16, i16* %arrayidx79, align 2, !tbaa !8
  %83 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds i16, i16* %83, i64 0
  store i16 %82, i16* %arrayidx80, align 2, !tbaa !8
  %84 = load i32, i32* %x3, align 4, !tbaa !6
  %85 = load i32, i32* %x2, align 4, !tbaa !6
  %add81 = add nsw i32 %84, %85
  %shr82 = ashr i32 %add81, 14
  %idxprom83 = sext i32 %shr82 to i64
  %86 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx84 = getelementptr inbounds i16, i16* %86, i64 %idxprom83
  %87 = load i16, i16* %arrayidx84, align 2, !tbaa !8
  %88 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds i16, i16* %88, i64 8
  store i16 %87, i16* %arrayidx85, align 2, !tbaa !8
  %89 = load i32, i32* %x0, align 4, !tbaa !6
  %90 = load i32, i32* %x4, align 4, !tbaa !6
  %add86 = add nsw i32 %89, %90
  %shr87 = ashr i32 %add86, 14
  %idxprom88 = sext i32 %shr87 to i64
  %91 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds i16, i16* %91, i64 %idxprom88
  %92 = load i16, i16* %arrayidx89, align 2, !tbaa !8
  %93 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds i16, i16* %93, i64 16
  store i16 %92, i16* %arrayidx90, align 2, !tbaa !8
  %94 = load i32, i32* %x8, align 4, !tbaa !6
  %95 = load i32, i32* %x6, align 4, !tbaa !6
  %add91 = add nsw i32 %94, %95
  %shr92 = ashr i32 %add91, 14
  %idxprom93 = sext i32 %shr92 to i64
  %96 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx94 = getelementptr inbounds i16, i16* %96, i64 %idxprom93
  %97 = load i16, i16* %arrayidx94, align 2, !tbaa !8
  %98 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx95 = getelementptr inbounds i16, i16* %98, i64 24
  store i16 %97, i16* %arrayidx95, align 2, !tbaa !8
  %99 = load i32, i32* %x8, align 4, !tbaa !6
  %100 = load i32, i32* %x6, align 4, !tbaa !6
  %sub96 = sub nsw i32 %99, %100
  %shr97 = ashr i32 %sub96, 14
  %idxprom98 = sext i32 %shr97 to i64
  %101 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx99 = getelementptr inbounds i16, i16* %101, i64 %idxprom98
  %102 = load i16, i16* %arrayidx99, align 2, !tbaa !8
  %103 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx100 = getelementptr inbounds i16, i16* %103, i64 32
  store i16 %102, i16* %arrayidx100, align 2, !tbaa !8
  %104 = load i32, i32* %x0, align 4, !tbaa !6
  %105 = load i32, i32* %x4, align 4, !tbaa !6
  %sub101 = sub nsw i32 %104, %105
  %shr102 = ashr i32 %sub101, 14
  %idxprom103 = sext i32 %shr102 to i64
  %106 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx104 = getelementptr inbounds i16, i16* %106, i64 %idxprom103
  %107 = load i16, i16* %arrayidx104, align 2, !tbaa !8
  %108 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx105 = getelementptr inbounds i16, i16* %108, i64 40
  store i16 %107, i16* %arrayidx105, align 2, !tbaa !8
  %109 = load i32, i32* %x3, align 4, !tbaa !6
  %110 = load i32, i32* %x2, align 4, !tbaa !6
  %sub106 = sub nsw i32 %109, %110
  %shr107 = ashr i32 %sub106, 14
  %idxprom108 = sext i32 %shr107 to i64
  %111 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds i16, i16* %111, i64 %idxprom108
  %112 = load i16, i16* %arrayidx109, align 2, !tbaa !8
  %113 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx110 = getelementptr inbounds i16, i16* %113, i64 48
  store i16 %112, i16* %arrayidx110, align 2, !tbaa !8
  %114 = load i32, i32* %x7, align 4, !tbaa !6
  %115 = load i32, i32* %x1, align 4, !tbaa !6
  %sub111 = sub nsw i32 %114, %115
  %shr112 = ashr i32 %sub111, 14
  %idxprom113 = sext i32 %shr112 to i64
  %116 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx114 = getelementptr inbounds i16, i16* %116, i64 %idxprom113
  %117 = load i16, i16* %arrayidx114, align 2, !tbaa !8
  %118 = load i16*, i16** %blk.addr, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds i16, i16* %118, i64 56
  store i16 %117, i16* %arrayidx115, align 2, !tbaa !8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %119 = bitcast i32* %x8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %x6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i32* %x5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %x4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @Initialize_Fast_IDCT() #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i16* getelementptr inbounds ([1024 x i16], [1024 x i16]* @iclip, i32 0, i64 512), i16** @iclp, align 8, !tbaa !2
  store i32 -512, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %1, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !6
  %cmp1 = icmp slt i32 %2, -256
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.5

cond.false:                                       ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !tbaa !6
  %cmp2 = icmp sgt i32 %3, 255
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %4 = load i32, i32* %i, align 4, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i32 [ 255, %cond.true.3 ], [ %4, %cond.false.4 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ -256, %cond.true ], [ %cond, %cond.end ]
  %conv = trunc i32 %cond6 to i16
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %5 to i64
  %6 = load i16*, i16** @iclp, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.5
  %7 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
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
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !4, i64 0}
