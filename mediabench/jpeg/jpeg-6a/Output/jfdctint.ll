; ModuleID = 'jfdctint.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

; Function Attrs: nounwind ssp uwtable
define void @jpeg_fdct_islow(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %z4 = alloca i64, align 8
  %z5 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !2
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i64* %z4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i64* %z5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32*, i32** %data.addr, align 8, !tbaa !2
  store i32* %19, i32** %dataptr, align 8, !tbaa !2
  store i32 7, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp = icmp sge i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %23 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i32, i32* %23, i64 7
  %24 = load i32, i32* %arrayidx1, align 4, !tbaa !6
  %add = add nsw i32 %22, %24
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %tmp0, align 8, !tbaa !8
  %25 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i32, i32* %25, i64 0
  %26 = load i32, i32* %arrayidx2, align 4, !tbaa !6
  %27 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i32, i32* %27, i64 7
  %28 = load i32, i32* %arrayidx3, align 4, !tbaa !6
  %sub = sub nsw i32 %26, %28
  %conv4 = sext i32 %sub to i64
  store i64 %conv4, i64* %tmp7, align 8, !tbaa !8
  %29 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i32, i32* %29, i64 1
  %30 = load i32, i32* %arrayidx5, align 4, !tbaa !6
  %31 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i32, i32* %31, i64 6
  %32 = load i32, i32* %arrayidx6, align 4, !tbaa !6
  %add7 = add nsw i32 %30, %32
  %conv8 = sext i32 %add7 to i64
  store i64 %conv8, i64* %tmp1, align 8, !tbaa !8
  %33 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i32, i32* %33, i64 1
  %34 = load i32, i32* %arrayidx9, align 4, !tbaa !6
  %35 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i32, i32* %35, i64 6
  %36 = load i32, i32* %arrayidx10, align 4, !tbaa !6
  %sub11 = sub nsw i32 %34, %36
  %conv12 = sext i32 %sub11 to i64
  store i64 %conv12, i64* %tmp6, align 8, !tbaa !8
  %37 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i32, i32* %37, i64 2
  %38 = load i32, i32* %arrayidx13, align 4, !tbaa !6
  %39 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i32, i32* %39, i64 5
  %40 = load i32, i32* %arrayidx14, align 4, !tbaa !6
  %add15 = add nsw i32 %38, %40
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %41 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i32, i32* %41, i64 2
  %42 = load i32, i32* %arrayidx17, align 4, !tbaa !6
  %43 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i32, i32* %43, i64 5
  %44 = load i32, i32* %arrayidx18, align 4, !tbaa !6
  %sub19 = sub nsw i32 %42, %44
  %conv20 = sext i32 %sub19 to i64
  store i64 %conv20, i64* %tmp5, align 8, !tbaa !8
  %45 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i32, i32* %45, i64 3
  %46 = load i32, i32* %arrayidx21, align 4, !tbaa !6
  %47 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i32, i32* %47, i64 4
  %48 = load i32, i32* %arrayidx22, align 4, !tbaa !6
  %add23 = add nsw i32 %46, %48
  %conv24 = sext i32 %add23 to i64
  store i64 %conv24, i64* %tmp3, align 8, !tbaa !8
  %49 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds i32, i32* %49, i64 3
  %50 = load i32, i32* %arrayidx25, align 4, !tbaa !6
  %51 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i32, i32* %51, i64 4
  %52 = load i32, i32* %arrayidx26, align 4, !tbaa !6
  %sub27 = sub nsw i32 %50, %52
  %conv28 = sext i32 %sub27 to i64
  store i64 %conv28, i64* %tmp4, align 8, !tbaa !8
  %53 = load i64, i64* %tmp0, align 8, !tbaa !8
  %54 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add29 = add nsw i64 %53, %54
  store i64 %add29, i64* %tmp10, align 8, !tbaa !8
  %55 = load i64, i64* %tmp0, align 8, !tbaa !8
  %56 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub30 = sub nsw i64 %55, %56
  store i64 %sub30, i64* %tmp13, align 8, !tbaa !8
  %57 = load i64, i64* %tmp1, align 8, !tbaa !8
  %58 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add31 = add nsw i64 %57, %58
  store i64 %add31, i64* %tmp11, align 8, !tbaa !8
  %59 = load i64, i64* %tmp1, align 8, !tbaa !8
  %60 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub32 = sub nsw i64 %59, %60
  store i64 %sub32, i64* %tmp12, align 8, !tbaa !8
  %61 = load i64, i64* %tmp10, align 8, !tbaa !8
  %62 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add33 = add nsw i64 %61, %62
  %shl = shl i64 %add33, 2
  %conv34 = trunc i64 %shl to i32
  %63 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %conv34, i32* %arrayidx35, align 4, !tbaa !6
  %64 = load i64, i64* %tmp10, align 8, !tbaa !8
  %65 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub36 = sub nsw i64 %64, %65
  %shl37 = shl i64 %sub36, 2
  %conv38 = trunc i64 %shl37 to i32
  %66 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds i32, i32* %66, i64 4
  store i32 %conv38, i32* %arrayidx39, align 4, !tbaa !6
  %67 = load i64, i64* %tmp12, align 8, !tbaa !8
  %68 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add40 = add nsw i64 %67, %68
  %mul = mul nsw i64 %add40, 4433
  store i64 %mul, i64* %z1, align 8, !tbaa !8
  %69 = load i64, i64* %z1, align 8, !tbaa !8
  %70 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul41 = mul nsw i64 %70, 6270
  %add42 = add nsw i64 %69, %mul41
  %add43 = add nsw i64 %add42, 1024
  %shr = ashr i64 %add43, 11
  %conv44 = trunc i64 %shr to i32
  %71 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %conv44, i32* %arrayidx45, align 4, !tbaa !6
  %72 = load i64, i64* %z1, align 8, !tbaa !8
  %73 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul46 = mul nsw i64 %73, -15137
  %add47 = add nsw i64 %72, %mul46
  %add48 = add nsw i64 %add47, 1024
  %shr49 = ashr i64 %add48, 11
  %conv50 = trunc i64 %shr49 to i32
  %74 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds i32, i32* %74, i64 6
  store i32 %conv50, i32* %arrayidx51, align 4, !tbaa !6
  %75 = load i64, i64* %tmp4, align 8, !tbaa !8
  %76 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add52 = add nsw i64 %75, %76
  store i64 %add52, i64* %z1, align 8, !tbaa !8
  %77 = load i64, i64* %tmp5, align 8, !tbaa !8
  %78 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add53 = add nsw i64 %77, %78
  store i64 %add53, i64* %z2, align 8, !tbaa !8
  %79 = load i64, i64* %tmp4, align 8, !tbaa !8
  %80 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add54 = add nsw i64 %79, %80
  store i64 %add54, i64* %z3, align 8, !tbaa !8
  %81 = load i64, i64* %tmp5, align 8, !tbaa !8
  %82 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add55 = add nsw i64 %81, %82
  store i64 %add55, i64* %z4, align 8, !tbaa !8
  %83 = load i64, i64* %z3, align 8, !tbaa !8
  %84 = load i64, i64* %z4, align 8, !tbaa !8
  %add56 = add nsw i64 %83, %84
  %mul57 = mul nsw i64 %add56, 9633
  store i64 %mul57, i64* %z5, align 8, !tbaa !8
  %85 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul58 = mul nsw i64 %85, 2446
  store i64 %mul58, i64* %tmp4, align 8, !tbaa !8
  %86 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul59 = mul nsw i64 %86, 16819
  store i64 %mul59, i64* %tmp5, align 8, !tbaa !8
  %87 = load i64, i64* %tmp6, align 8, !tbaa !8
  %mul60 = mul nsw i64 %87, 25172
  store i64 %mul60, i64* %tmp6, align 8, !tbaa !8
  %88 = load i64, i64* %tmp7, align 8, !tbaa !8
  %mul61 = mul nsw i64 %88, 12299
  store i64 %mul61, i64* %tmp7, align 8, !tbaa !8
  %89 = load i64, i64* %z1, align 8, !tbaa !8
  %mul62 = mul nsw i64 %89, -7373
  store i64 %mul62, i64* %z1, align 8, !tbaa !8
  %90 = load i64, i64* %z2, align 8, !tbaa !8
  %mul63 = mul nsw i64 %90, -20995
  store i64 %mul63, i64* %z2, align 8, !tbaa !8
  %91 = load i64, i64* %z3, align 8, !tbaa !8
  %mul64 = mul nsw i64 %91, -16069
  store i64 %mul64, i64* %z3, align 8, !tbaa !8
  %92 = load i64, i64* %z4, align 8, !tbaa !8
  %mul65 = mul nsw i64 %92, -3196
  store i64 %mul65, i64* %z4, align 8, !tbaa !8
  %93 = load i64, i64* %z5, align 8, !tbaa !8
  %94 = load i64, i64* %z3, align 8, !tbaa !8
  %add66 = add nsw i64 %94, %93
  store i64 %add66, i64* %z3, align 8, !tbaa !8
  %95 = load i64, i64* %z5, align 8, !tbaa !8
  %96 = load i64, i64* %z4, align 8, !tbaa !8
  %add67 = add nsw i64 %96, %95
  store i64 %add67, i64* %z4, align 8, !tbaa !8
  %97 = load i64, i64* %tmp4, align 8, !tbaa !8
  %98 = load i64, i64* %z1, align 8, !tbaa !8
  %add68 = add nsw i64 %97, %98
  %99 = load i64, i64* %z3, align 8, !tbaa !8
  %add69 = add nsw i64 %add68, %99
  %add70 = add nsw i64 %add69, 1024
  %shr71 = ashr i64 %add70, 11
  %conv72 = trunc i64 %shr71 to i32
  %100 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds i32, i32* %100, i64 7
  store i32 %conv72, i32* %arrayidx73, align 4, !tbaa !6
  %101 = load i64, i64* %tmp5, align 8, !tbaa !8
  %102 = load i64, i64* %z2, align 8, !tbaa !8
  %add74 = add nsw i64 %101, %102
  %103 = load i64, i64* %z4, align 8, !tbaa !8
  %add75 = add nsw i64 %add74, %103
  %add76 = add nsw i64 %add75, 1024
  %shr77 = ashr i64 %add76, 11
  %conv78 = trunc i64 %shr77 to i32
  %104 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx79 = getelementptr inbounds i32, i32* %104, i64 5
  store i32 %conv78, i32* %arrayidx79, align 4, !tbaa !6
  %105 = load i64, i64* %tmp6, align 8, !tbaa !8
  %106 = load i64, i64* %z2, align 8, !tbaa !8
  %add80 = add nsw i64 %105, %106
  %107 = load i64, i64* %z3, align 8, !tbaa !8
  %add81 = add nsw i64 %add80, %107
  %add82 = add nsw i64 %add81, 1024
  %shr83 = ashr i64 %add82, 11
  %conv84 = trunc i64 %shr83 to i32
  %108 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds i32, i32* %108, i64 3
  store i32 %conv84, i32* %arrayidx85, align 4, !tbaa !6
  %109 = load i64, i64* %tmp7, align 8, !tbaa !8
  %110 = load i64, i64* %z1, align 8, !tbaa !8
  %add86 = add nsw i64 %109, %110
  %111 = load i64, i64* %z4, align 8, !tbaa !8
  %add87 = add nsw i64 %add86, %111
  %add88 = add nsw i64 %add87, 1024
  %shr89 = ashr i64 %add88, 11
  %conv90 = trunc i64 %shr89 to i32
  %112 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx91 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %conv90, i32* %arrayidx91, align 4, !tbaa !6
  %113 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i32, i32* %113, i64 8
  store i32* %add.ptr, i32** %dataptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %114 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec = add nsw i32 %114, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %115 = load i32*, i32** %data.addr, align 8, !tbaa !2
  store i32* %115, i32** %dataptr, align 8, !tbaa !2
  store i32 7, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.196, %for.end
  %116 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp93 = icmp sge i32 %116, 0
  br i1 %cmp93, label %for.body.95, label %for.end.198

for.body.95:                                      ; preds = %for.cond.92
  %117 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds i32, i32* %117, i64 0
  %118 = load i32, i32* %arrayidx96, align 4, !tbaa !6
  %119 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx97 = getelementptr inbounds i32, i32* %119, i64 56
  %120 = load i32, i32* %arrayidx97, align 4, !tbaa !6
  %add98 = add nsw i32 %118, %120
  %conv99 = sext i32 %add98 to i64
  store i64 %conv99, i64* %tmp0, align 8, !tbaa !8
  %121 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx100 = getelementptr inbounds i32, i32* %121, i64 0
  %122 = load i32, i32* %arrayidx100, align 4, !tbaa !6
  %123 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx101 = getelementptr inbounds i32, i32* %123, i64 56
  %124 = load i32, i32* %arrayidx101, align 4, !tbaa !6
  %sub102 = sub nsw i32 %122, %124
  %conv103 = sext i32 %sub102 to i64
  store i64 %conv103, i64* %tmp7, align 8, !tbaa !8
  %125 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx104 = getelementptr inbounds i32, i32* %125, i64 8
  %126 = load i32, i32* %arrayidx104, align 4, !tbaa !6
  %127 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx105 = getelementptr inbounds i32, i32* %127, i64 48
  %128 = load i32, i32* %arrayidx105, align 4, !tbaa !6
  %add106 = add nsw i32 %126, %128
  %conv107 = sext i32 %add106 to i64
  store i64 %conv107, i64* %tmp1, align 8, !tbaa !8
  %129 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx108 = getelementptr inbounds i32, i32* %129, i64 8
  %130 = load i32, i32* %arrayidx108, align 4, !tbaa !6
  %131 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds i32, i32* %131, i64 48
  %132 = load i32, i32* %arrayidx109, align 4, !tbaa !6
  %sub110 = sub nsw i32 %130, %132
  %conv111 = sext i32 %sub110 to i64
  store i64 %conv111, i64* %tmp6, align 8, !tbaa !8
  %133 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds i32, i32* %133, i64 16
  %134 = load i32, i32* %arrayidx112, align 4, !tbaa !6
  %135 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx113 = getelementptr inbounds i32, i32* %135, i64 40
  %136 = load i32, i32* %arrayidx113, align 4, !tbaa !6
  %add114 = add nsw i32 %134, %136
  %conv115 = sext i32 %add114 to i64
  store i64 %conv115, i64* %tmp2, align 8, !tbaa !8
  %137 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx116 = getelementptr inbounds i32, i32* %137, i64 16
  %138 = load i32, i32* %arrayidx116, align 4, !tbaa !6
  %139 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds i32, i32* %139, i64 40
  %140 = load i32, i32* %arrayidx117, align 4, !tbaa !6
  %sub118 = sub nsw i32 %138, %140
  %conv119 = sext i32 %sub118 to i64
  store i64 %conv119, i64* %tmp5, align 8, !tbaa !8
  %141 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx120 = getelementptr inbounds i32, i32* %141, i64 24
  %142 = load i32, i32* %arrayidx120, align 4, !tbaa !6
  %143 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx121 = getelementptr inbounds i32, i32* %143, i64 32
  %144 = load i32, i32* %arrayidx121, align 4, !tbaa !6
  %add122 = add nsw i32 %142, %144
  %conv123 = sext i32 %add122 to i64
  store i64 %conv123, i64* %tmp3, align 8, !tbaa !8
  %145 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx124 = getelementptr inbounds i32, i32* %145, i64 24
  %146 = load i32, i32* %arrayidx124, align 4, !tbaa !6
  %147 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx125 = getelementptr inbounds i32, i32* %147, i64 32
  %148 = load i32, i32* %arrayidx125, align 4, !tbaa !6
  %sub126 = sub nsw i32 %146, %148
  %conv127 = sext i32 %sub126 to i64
  store i64 %conv127, i64* %tmp4, align 8, !tbaa !8
  %149 = load i64, i64* %tmp0, align 8, !tbaa !8
  %150 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add128 = add nsw i64 %149, %150
  store i64 %add128, i64* %tmp10, align 8, !tbaa !8
  %151 = load i64, i64* %tmp0, align 8, !tbaa !8
  %152 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub129 = sub nsw i64 %151, %152
  store i64 %sub129, i64* %tmp13, align 8, !tbaa !8
  %153 = load i64, i64* %tmp1, align 8, !tbaa !8
  %154 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add130 = add nsw i64 %153, %154
  store i64 %add130, i64* %tmp11, align 8, !tbaa !8
  %155 = load i64, i64* %tmp1, align 8, !tbaa !8
  %156 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub131 = sub nsw i64 %155, %156
  store i64 %sub131, i64* %tmp12, align 8, !tbaa !8
  %157 = load i64, i64* %tmp10, align 8, !tbaa !8
  %158 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add132 = add nsw i64 %157, %158
  %add133 = add nsw i64 %add132, 2
  %shr134 = ashr i64 %add133, 2
  %conv135 = trunc i64 %shr134 to i32
  %159 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx136 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %conv135, i32* %arrayidx136, align 4, !tbaa !6
  %160 = load i64, i64* %tmp10, align 8, !tbaa !8
  %161 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub137 = sub nsw i64 %160, %161
  %add138 = add nsw i64 %sub137, 2
  %shr139 = ashr i64 %add138, 2
  %conv140 = trunc i64 %shr139 to i32
  %162 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx141 = getelementptr inbounds i32, i32* %162, i64 32
  store i32 %conv140, i32* %arrayidx141, align 4, !tbaa !6
  %163 = load i64, i64* %tmp12, align 8, !tbaa !8
  %164 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add142 = add nsw i64 %163, %164
  %mul143 = mul nsw i64 %add142, 4433
  store i64 %mul143, i64* %z1, align 8, !tbaa !8
  %165 = load i64, i64* %z1, align 8, !tbaa !8
  %166 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul144 = mul nsw i64 %166, 6270
  %add145 = add nsw i64 %165, %mul144
  %add146 = add nsw i64 %add145, 16384
  %shr147 = ashr i64 %add146, 15
  %conv148 = trunc i64 %shr147 to i32
  %167 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx149 = getelementptr inbounds i32, i32* %167, i64 16
  store i32 %conv148, i32* %arrayidx149, align 4, !tbaa !6
  %168 = load i64, i64* %z1, align 8, !tbaa !8
  %169 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul150 = mul nsw i64 %169, -15137
  %add151 = add nsw i64 %168, %mul150
  %add152 = add nsw i64 %add151, 16384
  %shr153 = ashr i64 %add152, 15
  %conv154 = trunc i64 %shr153 to i32
  %170 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx155 = getelementptr inbounds i32, i32* %170, i64 48
  store i32 %conv154, i32* %arrayidx155, align 4, !tbaa !6
  %171 = load i64, i64* %tmp4, align 8, !tbaa !8
  %172 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add156 = add nsw i64 %171, %172
  store i64 %add156, i64* %z1, align 8, !tbaa !8
  %173 = load i64, i64* %tmp5, align 8, !tbaa !8
  %174 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add157 = add nsw i64 %173, %174
  store i64 %add157, i64* %z2, align 8, !tbaa !8
  %175 = load i64, i64* %tmp4, align 8, !tbaa !8
  %176 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add158 = add nsw i64 %175, %176
  store i64 %add158, i64* %z3, align 8, !tbaa !8
  %177 = load i64, i64* %tmp5, align 8, !tbaa !8
  %178 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add159 = add nsw i64 %177, %178
  store i64 %add159, i64* %z4, align 8, !tbaa !8
  %179 = load i64, i64* %z3, align 8, !tbaa !8
  %180 = load i64, i64* %z4, align 8, !tbaa !8
  %add160 = add nsw i64 %179, %180
  %mul161 = mul nsw i64 %add160, 9633
  store i64 %mul161, i64* %z5, align 8, !tbaa !8
  %181 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul162 = mul nsw i64 %181, 2446
  store i64 %mul162, i64* %tmp4, align 8, !tbaa !8
  %182 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul163 = mul nsw i64 %182, 16819
  store i64 %mul163, i64* %tmp5, align 8, !tbaa !8
  %183 = load i64, i64* %tmp6, align 8, !tbaa !8
  %mul164 = mul nsw i64 %183, 25172
  store i64 %mul164, i64* %tmp6, align 8, !tbaa !8
  %184 = load i64, i64* %tmp7, align 8, !tbaa !8
  %mul165 = mul nsw i64 %184, 12299
  store i64 %mul165, i64* %tmp7, align 8, !tbaa !8
  %185 = load i64, i64* %z1, align 8, !tbaa !8
  %mul166 = mul nsw i64 %185, -7373
  store i64 %mul166, i64* %z1, align 8, !tbaa !8
  %186 = load i64, i64* %z2, align 8, !tbaa !8
  %mul167 = mul nsw i64 %186, -20995
  store i64 %mul167, i64* %z2, align 8, !tbaa !8
  %187 = load i64, i64* %z3, align 8, !tbaa !8
  %mul168 = mul nsw i64 %187, -16069
  store i64 %mul168, i64* %z3, align 8, !tbaa !8
  %188 = load i64, i64* %z4, align 8, !tbaa !8
  %mul169 = mul nsw i64 %188, -3196
  store i64 %mul169, i64* %z4, align 8, !tbaa !8
  %189 = load i64, i64* %z5, align 8, !tbaa !8
  %190 = load i64, i64* %z3, align 8, !tbaa !8
  %add170 = add nsw i64 %190, %189
  store i64 %add170, i64* %z3, align 8, !tbaa !8
  %191 = load i64, i64* %z5, align 8, !tbaa !8
  %192 = load i64, i64* %z4, align 8, !tbaa !8
  %add171 = add nsw i64 %192, %191
  store i64 %add171, i64* %z4, align 8, !tbaa !8
  %193 = load i64, i64* %tmp4, align 8, !tbaa !8
  %194 = load i64, i64* %z1, align 8, !tbaa !8
  %add172 = add nsw i64 %193, %194
  %195 = load i64, i64* %z3, align 8, !tbaa !8
  %add173 = add nsw i64 %add172, %195
  %add174 = add nsw i64 %add173, 16384
  %shr175 = ashr i64 %add174, 15
  %conv176 = trunc i64 %shr175 to i32
  %196 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx177 = getelementptr inbounds i32, i32* %196, i64 56
  store i32 %conv176, i32* %arrayidx177, align 4, !tbaa !6
  %197 = load i64, i64* %tmp5, align 8, !tbaa !8
  %198 = load i64, i64* %z2, align 8, !tbaa !8
  %add178 = add nsw i64 %197, %198
  %199 = load i64, i64* %z4, align 8, !tbaa !8
  %add179 = add nsw i64 %add178, %199
  %add180 = add nsw i64 %add179, 16384
  %shr181 = ashr i64 %add180, 15
  %conv182 = trunc i64 %shr181 to i32
  %200 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx183 = getelementptr inbounds i32, i32* %200, i64 40
  store i32 %conv182, i32* %arrayidx183, align 4, !tbaa !6
  %201 = load i64, i64* %tmp6, align 8, !tbaa !8
  %202 = load i64, i64* %z2, align 8, !tbaa !8
  %add184 = add nsw i64 %201, %202
  %203 = load i64, i64* %z3, align 8, !tbaa !8
  %add185 = add nsw i64 %add184, %203
  %add186 = add nsw i64 %add185, 16384
  %shr187 = ashr i64 %add186, 15
  %conv188 = trunc i64 %shr187 to i32
  %204 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx189 = getelementptr inbounds i32, i32* %204, i64 24
  store i32 %conv188, i32* %arrayidx189, align 4, !tbaa !6
  %205 = load i64, i64* %tmp7, align 8, !tbaa !8
  %206 = load i64, i64* %z1, align 8, !tbaa !8
  %add190 = add nsw i64 %205, %206
  %207 = load i64, i64* %z4, align 8, !tbaa !8
  %add191 = add nsw i64 %add190, %207
  %add192 = add nsw i64 %add191, 16384
  %shr193 = ashr i64 %add192, 15
  %conv194 = trunc i64 %shr193 to i32
  %208 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx195 = getelementptr inbounds i32, i32* %208, i64 8
  store i32 %conv194, i32* %arrayidx195, align 4, !tbaa !6
  %209 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !2
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.95
  %210 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec197 = add nsw i32 %210, -1
  store i32 %dec197, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.92

for.end.198:                                      ; preds = %for.cond.92
  %211 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #2
  %212 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #2
  %213 = bitcast i64* %z5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #2
  %214 = bitcast i64* %z4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #2
  %215 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #2
  %216 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #2
  %217 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #2
  %218 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #2
  %219 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #2
  %220 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #2
  %221 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #2
  %222 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #2
  %223 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #2
  %224 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #2
  %225 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #2
  %226 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #2
  %227 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #2
  %228 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #2
  %229 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #2
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
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !4, i64 0}
