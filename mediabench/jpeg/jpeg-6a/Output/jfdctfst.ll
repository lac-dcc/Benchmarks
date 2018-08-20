; ModuleID = 'jfdctfst.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

; Function Attrs: nounwind ssp uwtable
define void @jpeg_fdct_ifast(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %tmp0 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %z1 = alloca i32, align 4
  %z2 = alloca i32, align 4
  %z3 = alloca i32, align 4
  %z4 = alloca i32, align 4
  %z5 = alloca i32, align 4
  %z11 = alloca i32, align 4
  %z13 = alloca i32, align 4
  %dataptr = alloca i32*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !2
  %0 = bitcast i32* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %tmp7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %z1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %z2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %z3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %z4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %z5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %z11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %z13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32*, i32** %data.addr, align 8, !tbaa !2
  store i32* %21, i32** %dataptr, align 8, !tbaa !2
  store i32 7, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp = icmp sge i32 %22, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %25 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i32, i32* %25, i64 7
  %26 = load i32, i32* %arrayidx1, align 4, !tbaa !6
  %add = add nsw i32 %24, %26
  store i32 %add, i32* %tmp0, align 4, !tbaa !6
  %27 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx2, align 4, !tbaa !6
  %29 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i32, i32* %29, i64 7
  %30 = load i32, i32* %arrayidx3, align 4, !tbaa !6
  %sub = sub nsw i32 %28, %30
  store i32 %sub, i32* %tmp7, align 4, !tbaa !6
  %31 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i32, i32* %31, i64 1
  %32 = load i32, i32* %arrayidx4, align 4, !tbaa !6
  %33 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i32, i32* %33, i64 6
  %34 = load i32, i32* %arrayidx5, align 4, !tbaa !6
  %add6 = add nsw i32 %32, %34
  store i32 %add6, i32* %tmp1, align 4, !tbaa !6
  %35 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i32, i32* %35, i64 1
  %36 = load i32, i32* %arrayidx7, align 4, !tbaa !6
  %37 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i32, i32* %37, i64 6
  %38 = load i32, i32* %arrayidx8, align 4, !tbaa !6
  %sub9 = sub nsw i32 %36, %38
  store i32 %sub9, i32* %tmp6, align 4, !tbaa !6
  %39 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i32, i32* %39, i64 2
  %40 = load i32, i32* %arrayidx10, align 4, !tbaa !6
  %41 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i32, i32* %41, i64 5
  %42 = load i32, i32* %arrayidx11, align 4, !tbaa !6
  %add12 = add nsw i32 %40, %42
  store i32 %add12, i32* %tmp2, align 4, !tbaa !6
  %43 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i32, i32* %43, i64 2
  %44 = load i32, i32* %arrayidx13, align 4, !tbaa !6
  %45 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i32, i32* %45, i64 5
  %46 = load i32, i32* %arrayidx14, align 4, !tbaa !6
  %sub15 = sub nsw i32 %44, %46
  store i32 %sub15, i32* %tmp5, align 4, !tbaa !6
  %47 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds i32, i32* %47, i64 3
  %48 = load i32, i32* %arrayidx16, align 4, !tbaa !6
  %49 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i32, i32* %49, i64 4
  %50 = load i32, i32* %arrayidx17, align 4, !tbaa !6
  %add18 = add nsw i32 %48, %50
  store i32 %add18, i32* %tmp3, align 4, !tbaa !6
  %51 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i32, i32* %51, i64 3
  %52 = load i32, i32* %arrayidx19, align 4, !tbaa !6
  %53 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i32, i32* %53, i64 4
  %54 = load i32, i32* %arrayidx20, align 4, !tbaa !6
  %sub21 = sub nsw i32 %52, %54
  store i32 %sub21, i32* %tmp4, align 4, !tbaa !6
  %55 = load i32, i32* %tmp0, align 4, !tbaa !6
  %56 = load i32, i32* %tmp3, align 4, !tbaa !6
  %add22 = add nsw i32 %55, %56
  store i32 %add22, i32* %tmp10, align 4, !tbaa !6
  %57 = load i32, i32* %tmp0, align 4, !tbaa !6
  %58 = load i32, i32* %tmp3, align 4, !tbaa !6
  %sub23 = sub nsw i32 %57, %58
  store i32 %sub23, i32* %tmp13, align 4, !tbaa !6
  %59 = load i32, i32* %tmp1, align 4, !tbaa !6
  %60 = load i32, i32* %tmp2, align 4, !tbaa !6
  %add24 = add nsw i32 %59, %60
  store i32 %add24, i32* %tmp11, align 4, !tbaa !6
  %61 = load i32, i32* %tmp1, align 4, !tbaa !6
  %62 = load i32, i32* %tmp2, align 4, !tbaa !6
  %sub25 = sub nsw i32 %61, %62
  store i32 %sub25, i32* %tmp12, align 4, !tbaa !6
  %63 = load i32, i32* %tmp10, align 4, !tbaa !6
  %64 = load i32, i32* %tmp11, align 4, !tbaa !6
  %add26 = add nsw i32 %63, %64
  %65 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %add26, i32* %arrayidx27, align 4, !tbaa !6
  %66 = load i32, i32* %tmp10, align 4, !tbaa !6
  %67 = load i32, i32* %tmp11, align 4, !tbaa !6
  %sub28 = sub nsw i32 %66, %67
  %68 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i32, i32* %68, i64 4
  store i32 %sub28, i32* %arrayidx29, align 4, !tbaa !6
  %69 = load i32, i32* %tmp12, align 4, !tbaa !6
  %70 = load i32, i32* %tmp13, align 4, !tbaa !6
  %add30 = add nsw i32 %69, %70
  %conv = sext i32 %add30 to i64
  %mul = mul nsw i64 %conv, 181
  %shr = ashr i64 %mul, 8
  %conv31 = trunc i64 %shr to i32
  store i32 %conv31, i32* %z1, align 4, !tbaa !6
  %71 = load i32, i32* %tmp13, align 4, !tbaa !6
  %72 = load i32, i32* %z1, align 4, !tbaa !6
  %add32 = add nsw i32 %71, %72
  %73 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %add32, i32* %arrayidx33, align 4, !tbaa !6
  %74 = load i32, i32* %tmp13, align 4, !tbaa !6
  %75 = load i32, i32* %z1, align 4, !tbaa !6
  %sub34 = sub nsw i32 %74, %75
  %76 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i32, i32* %76, i64 6
  store i32 %sub34, i32* %arrayidx35, align 4, !tbaa !6
  %77 = load i32, i32* %tmp4, align 4, !tbaa !6
  %78 = load i32, i32* %tmp5, align 4, !tbaa !6
  %add36 = add nsw i32 %77, %78
  store i32 %add36, i32* %tmp10, align 4, !tbaa !6
  %79 = load i32, i32* %tmp5, align 4, !tbaa !6
  %80 = load i32, i32* %tmp6, align 4, !tbaa !6
  %add37 = add nsw i32 %79, %80
  store i32 %add37, i32* %tmp11, align 4, !tbaa !6
  %81 = load i32, i32* %tmp6, align 4, !tbaa !6
  %82 = load i32, i32* %tmp7, align 4, !tbaa !6
  %add38 = add nsw i32 %81, %82
  store i32 %add38, i32* %tmp12, align 4, !tbaa !6
  %83 = load i32, i32* %tmp10, align 4, !tbaa !6
  %84 = load i32, i32* %tmp12, align 4, !tbaa !6
  %sub39 = sub nsw i32 %83, %84
  %conv40 = sext i32 %sub39 to i64
  %mul41 = mul nsw i64 %conv40, 98
  %shr42 = ashr i64 %mul41, 8
  %conv43 = trunc i64 %shr42 to i32
  store i32 %conv43, i32* %z5, align 4, !tbaa !6
  %85 = load i32, i32* %tmp10, align 4, !tbaa !6
  %conv44 = sext i32 %85 to i64
  %mul45 = mul nsw i64 %conv44, 139
  %shr46 = ashr i64 %mul45, 8
  %conv47 = trunc i64 %shr46 to i32
  %86 = load i32, i32* %z5, align 4, !tbaa !6
  %add48 = add nsw i32 %conv47, %86
  store i32 %add48, i32* %z2, align 4, !tbaa !6
  %87 = load i32, i32* %tmp12, align 4, !tbaa !6
  %conv49 = sext i32 %87 to i64
  %mul50 = mul nsw i64 %conv49, 334
  %shr51 = ashr i64 %mul50, 8
  %conv52 = trunc i64 %shr51 to i32
  %88 = load i32, i32* %z5, align 4, !tbaa !6
  %add53 = add nsw i32 %conv52, %88
  store i32 %add53, i32* %z4, align 4, !tbaa !6
  %89 = load i32, i32* %tmp11, align 4, !tbaa !6
  %conv54 = sext i32 %89 to i64
  %mul55 = mul nsw i64 %conv54, 181
  %shr56 = ashr i64 %mul55, 8
  %conv57 = trunc i64 %shr56 to i32
  store i32 %conv57, i32* %z3, align 4, !tbaa !6
  %90 = load i32, i32* %tmp7, align 4, !tbaa !6
  %91 = load i32, i32* %z3, align 4, !tbaa !6
  %add58 = add nsw i32 %90, %91
  store i32 %add58, i32* %z11, align 4, !tbaa !6
  %92 = load i32, i32* %tmp7, align 4, !tbaa !6
  %93 = load i32, i32* %z3, align 4, !tbaa !6
  %sub59 = sub nsw i32 %92, %93
  store i32 %sub59, i32* %z13, align 4, !tbaa !6
  %94 = load i32, i32* %z13, align 4, !tbaa !6
  %95 = load i32, i32* %z2, align 4, !tbaa !6
  %add60 = add nsw i32 %94, %95
  %96 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds i32, i32* %96, i64 5
  store i32 %add60, i32* %arrayidx61, align 4, !tbaa !6
  %97 = load i32, i32* %z13, align 4, !tbaa !6
  %98 = load i32, i32* %z2, align 4, !tbaa !6
  %sub62 = sub nsw i32 %97, %98
  %99 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds i32, i32* %99, i64 3
  store i32 %sub62, i32* %arrayidx63, align 4, !tbaa !6
  %100 = load i32, i32* %z11, align 4, !tbaa !6
  %101 = load i32, i32* %z4, align 4, !tbaa !6
  %add64 = add nsw i32 %100, %101
  %102 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %add64, i32* %arrayidx65, align 4, !tbaa !6
  %103 = load i32, i32* %z11, align 4, !tbaa !6
  %104 = load i32, i32* %z4, align 4, !tbaa !6
  %sub66 = sub nsw i32 %103, %104
  %105 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx67 = getelementptr inbounds i32, i32* %105, i64 7
  store i32 %sub66, i32* %arrayidx67, align 4, !tbaa !6
  %106 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i32, i32* %106, i64 8
  store i32* %add.ptr, i32** %dataptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %107 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec = add nsw i32 %107, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %108 = load i32*, i32** %data.addr, align 8, !tbaa !2
  store i32* %108, i32** %dataptr, align 8, !tbaa !2
  store i32 7, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.145, %for.end
  %109 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp69 = icmp sge i32 %109, 0
  br i1 %cmp69, label %for.body.71, label %for.end.147

for.body.71:                                      ; preds = %for.cond.68
  %110 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds i32, i32* %110, i64 0
  %111 = load i32, i32* %arrayidx72, align 4, !tbaa !6
  %112 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds i32, i32* %112, i64 56
  %113 = load i32, i32* %arrayidx73, align 4, !tbaa !6
  %add74 = add nsw i32 %111, %113
  store i32 %add74, i32* %tmp0, align 4, !tbaa !6
  %114 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx75 = getelementptr inbounds i32, i32* %114, i64 0
  %115 = load i32, i32* %arrayidx75, align 4, !tbaa !6
  %116 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds i32, i32* %116, i64 56
  %117 = load i32, i32* %arrayidx76, align 4, !tbaa !6
  %sub77 = sub nsw i32 %115, %117
  store i32 %sub77, i32* %tmp7, align 4, !tbaa !6
  %118 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx78 = getelementptr inbounds i32, i32* %118, i64 8
  %119 = load i32, i32* %arrayidx78, align 4, !tbaa !6
  %120 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx79 = getelementptr inbounds i32, i32* %120, i64 48
  %121 = load i32, i32* %arrayidx79, align 4, !tbaa !6
  %add80 = add nsw i32 %119, %121
  store i32 %add80, i32* %tmp1, align 4, !tbaa !6
  %122 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx81 = getelementptr inbounds i32, i32* %122, i64 8
  %123 = load i32, i32* %arrayidx81, align 4, !tbaa !6
  %124 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx82 = getelementptr inbounds i32, i32* %124, i64 48
  %125 = load i32, i32* %arrayidx82, align 4, !tbaa !6
  %sub83 = sub nsw i32 %123, %125
  store i32 %sub83, i32* %tmp6, align 4, !tbaa !6
  %126 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx84 = getelementptr inbounds i32, i32* %126, i64 16
  %127 = load i32, i32* %arrayidx84, align 4, !tbaa !6
  %128 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds i32, i32* %128, i64 40
  %129 = load i32, i32* %arrayidx85, align 4, !tbaa !6
  %add86 = add nsw i32 %127, %129
  store i32 %add86, i32* %tmp2, align 4, !tbaa !6
  %130 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx87 = getelementptr inbounds i32, i32* %130, i64 16
  %131 = load i32, i32* %arrayidx87, align 4, !tbaa !6
  %132 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx88 = getelementptr inbounds i32, i32* %132, i64 40
  %133 = load i32, i32* %arrayidx88, align 4, !tbaa !6
  %sub89 = sub nsw i32 %131, %133
  store i32 %sub89, i32* %tmp5, align 4, !tbaa !6
  %134 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds i32, i32* %134, i64 24
  %135 = load i32, i32* %arrayidx90, align 4, !tbaa !6
  %136 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx91 = getelementptr inbounds i32, i32* %136, i64 32
  %137 = load i32, i32* %arrayidx91, align 4, !tbaa !6
  %add92 = add nsw i32 %135, %137
  store i32 %add92, i32* %tmp3, align 4, !tbaa !6
  %138 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds i32, i32* %138, i64 24
  %139 = load i32, i32* %arrayidx93, align 4, !tbaa !6
  %140 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx94 = getelementptr inbounds i32, i32* %140, i64 32
  %141 = load i32, i32* %arrayidx94, align 4, !tbaa !6
  %sub95 = sub nsw i32 %139, %141
  store i32 %sub95, i32* %tmp4, align 4, !tbaa !6
  %142 = load i32, i32* %tmp0, align 4, !tbaa !6
  %143 = load i32, i32* %tmp3, align 4, !tbaa !6
  %add96 = add nsw i32 %142, %143
  store i32 %add96, i32* %tmp10, align 4, !tbaa !6
  %144 = load i32, i32* %tmp0, align 4, !tbaa !6
  %145 = load i32, i32* %tmp3, align 4, !tbaa !6
  %sub97 = sub nsw i32 %144, %145
  store i32 %sub97, i32* %tmp13, align 4, !tbaa !6
  %146 = load i32, i32* %tmp1, align 4, !tbaa !6
  %147 = load i32, i32* %tmp2, align 4, !tbaa !6
  %add98 = add nsw i32 %146, %147
  store i32 %add98, i32* %tmp11, align 4, !tbaa !6
  %148 = load i32, i32* %tmp1, align 4, !tbaa !6
  %149 = load i32, i32* %tmp2, align 4, !tbaa !6
  %sub99 = sub nsw i32 %148, %149
  store i32 %sub99, i32* %tmp12, align 4, !tbaa !6
  %150 = load i32, i32* %tmp10, align 4, !tbaa !6
  %151 = load i32, i32* %tmp11, align 4, !tbaa !6
  %add100 = add nsw i32 %150, %151
  %152 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx101 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %add100, i32* %arrayidx101, align 4, !tbaa !6
  %153 = load i32, i32* %tmp10, align 4, !tbaa !6
  %154 = load i32, i32* %tmp11, align 4, !tbaa !6
  %sub102 = sub nsw i32 %153, %154
  %155 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx103 = getelementptr inbounds i32, i32* %155, i64 32
  store i32 %sub102, i32* %arrayidx103, align 4, !tbaa !6
  %156 = load i32, i32* %tmp12, align 4, !tbaa !6
  %157 = load i32, i32* %tmp13, align 4, !tbaa !6
  %add104 = add nsw i32 %156, %157
  %conv105 = sext i32 %add104 to i64
  %mul106 = mul nsw i64 %conv105, 181
  %shr107 = ashr i64 %mul106, 8
  %conv108 = trunc i64 %shr107 to i32
  store i32 %conv108, i32* %z1, align 4, !tbaa !6
  %158 = load i32, i32* %tmp13, align 4, !tbaa !6
  %159 = load i32, i32* %z1, align 4, !tbaa !6
  %add109 = add nsw i32 %158, %159
  %160 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx110 = getelementptr inbounds i32, i32* %160, i64 16
  store i32 %add109, i32* %arrayidx110, align 4, !tbaa !6
  %161 = load i32, i32* %tmp13, align 4, !tbaa !6
  %162 = load i32, i32* %z1, align 4, !tbaa !6
  %sub111 = sub nsw i32 %161, %162
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds i32, i32* %163, i64 48
  store i32 %sub111, i32* %arrayidx112, align 4, !tbaa !6
  %164 = load i32, i32* %tmp4, align 4, !tbaa !6
  %165 = load i32, i32* %tmp5, align 4, !tbaa !6
  %add113 = add nsw i32 %164, %165
  store i32 %add113, i32* %tmp10, align 4, !tbaa !6
  %166 = load i32, i32* %tmp5, align 4, !tbaa !6
  %167 = load i32, i32* %tmp6, align 4, !tbaa !6
  %add114 = add nsw i32 %166, %167
  store i32 %add114, i32* %tmp11, align 4, !tbaa !6
  %168 = load i32, i32* %tmp6, align 4, !tbaa !6
  %169 = load i32, i32* %tmp7, align 4, !tbaa !6
  %add115 = add nsw i32 %168, %169
  store i32 %add115, i32* %tmp12, align 4, !tbaa !6
  %170 = load i32, i32* %tmp10, align 4, !tbaa !6
  %171 = load i32, i32* %tmp12, align 4, !tbaa !6
  %sub116 = sub nsw i32 %170, %171
  %conv117 = sext i32 %sub116 to i64
  %mul118 = mul nsw i64 %conv117, 98
  %shr119 = ashr i64 %mul118, 8
  %conv120 = trunc i64 %shr119 to i32
  store i32 %conv120, i32* %z5, align 4, !tbaa !6
  %172 = load i32, i32* %tmp10, align 4, !tbaa !6
  %conv121 = sext i32 %172 to i64
  %mul122 = mul nsw i64 %conv121, 139
  %shr123 = ashr i64 %mul122, 8
  %conv124 = trunc i64 %shr123 to i32
  %173 = load i32, i32* %z5, align 4, !tbaa !6
  %add125 = add nsw i32 %conv124, %173
  store i32 %add125, i32* %z2, align 4, !tbaa !6
  %174 = load i32, i32* %tmp12, align 4, !tbaa !6
  %conv126 = sext i32 %174 to i64
  %mul127 = mul nsw i64 %conv126, 334
  %shr128 = ashr i64 %mul127, 8
  %conv129 = trunc i64 %shr128 to i32
  %175 = load i32, i32* %z5, align 4, !tbaa !6
  %add130 = add nsw i32 %conv129, %175
  store i32 %add130, i32* %z4, align 4, !tbaa !6
  %176 = load i32, i32* %tmp11, align 4, !tbaa !6
  %conv131 = sext i32 %176 to i64
  %mul132 = mul nsw i64 %conv131, 181
  %shr133 = ashr i64 %mul132, 8
  %conv134 = trunc i64 %shr133 to i32
  store i32 %conv134, i32* %z3, align 4, !tbaa !6
  %177 = load i32, i32* %tmp7, align 4, !tbaa !6
  %178 = load i32, i32* %z3, align 4, !tbaa !6
  %add135 = add nsw i32 %177, %178
  store i32 %add135, i32* %z11, align 4, !tbaa !6
  %179 = load i32, i32* %tmp7, align 4, !tbaa !6
  %180 = load i32, i32* %z3, align 4, !tbaa !6
  %sub136 = sub nsw i32 %179, %180
  store i32 %sub136, i32* %z13, align 4, !tbaa !6
  %181 = load i32, i32* %z13, align 4, !tbaa !6
  %182 = load i32, i32* %z2, align 4, !tbaa !6
  %add137 = add nsw i32 %181, %182
  %183 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx138 = getelementptr inbounds i32, i32* %183, i64 40
  store i32 %add137, i32* %arrayidx138, align 4, !tbaa !6
  %184 = load i32, i32* %z13, align 4, !tbaa !6
  %185 = load i32, i32* %z2, align 4, !tbaa !6
  %sub139 = sub nsw i32 %184, %185
  %186 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx140 = getelementptr inbounds i32, i32* %186, i64 24
  store i32 %sub139, i32* %arrayidx140, align 4, !tbaa !6
  %187 = load i32, i32* %z11, align 4, !tbaa !6
  %188 = load i32, i32* %z4, align 4, !tbaa !6
  %add141 = add nsw i32 %187, %188
  %189 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx142 = getelementptr inbounds i32, i32* %189, i64 8
  store i32 %add141, i32* %arrayidx142, align 4, !tbaa !6
  %190 = load i32, i32* %z11, align 4, !tbaa !6
  %191 = load i32, i32* %z4, align 4, !tbaa !6
  %sub143 = sub nsw i32 %190, %191
  %192 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %arrayidx144 = getelementptr inbounds i32, i32* %192, i64 56
  store i32 %sub143, i32* %arrayidx144, align 4, !tbaa !6
  %193 = load i32*, i32** %dataptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !2
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.71
  %194 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec146 = add nsw i32 %194, -1
  store i32 %dec146, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.68

for.end.147:                                      ; preds = %for.cond.68
  %195 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #2
  %196 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #2
  %197 = bitcast i32* %z13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  %198 = bitcast i32* %z11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #2
  %199 = bitcast i32* %z5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #2
  %200 = bitcast i32* %z4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #2
  %201 = bitcast i32* %z3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #2
  %202 = bitcast i32* %z2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #2
  %203 = bitcast i32* %z1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #2
  %204 = bitcast i32* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #2
  %205 = bitcast i32* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #2
  %206 = bitcast i32* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #2
  %207 = bitcast i32* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #2
  %208 = bitcast i32* %tmp7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #2
  %209 = bitcast i32* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #2
  %210 = bitcast i32* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #2
  %211 = bitcast i32* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #2
  %212 = bitcast i32* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #2
  %213 = bitcast i32* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #2
  %214 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #2
  %215 = bitcast i32* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #2
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
