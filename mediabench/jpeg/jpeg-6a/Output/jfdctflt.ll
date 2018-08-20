; ModuleID = 'jfdctflt.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

; Function Attrs: nounwind ssp uwtable
define void @jpeg_fdct_float(float* %data) #0 {
entry:
  %data.addr = alloca float*, align 8
  %tmp0 = alloca float, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %tmp3 = alloca float, align 4
  %tmp4 = alloca float, align 4
  %tmp5 = alloca float, align 4
  %tmp6 = alloca float, align 4
  %tmp7 = alloca float, align 4
  %tmp10 = alloca float, align 4
  %tmp11 = alloca float, align 4
  %tmp12 = alloca float, align 4
  %tmp13 = alloca float, align 4
  %z1 = alloca float, align 4
  %z2 = alloca float, align 4
  %z3 = alloca float, align 4
  %z4 = alloca float, align 4
  %z5 = alloca float, align 4
  %z11 = alloca float, align 4
  %z13 = alloca float, align 4
  %dataptr = alloca float*, align 8
  %ctr = alloca i32, align 4
  store float* %data, float** %data.addr, align 8, !tbaa !2
  %0 = bitcast float* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast float* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast float* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast float* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast float* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast float* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast float* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast float* %tmp7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast float* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast float* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast float* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast float* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast float* %z1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast float* %z2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast float* %z3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast float* %z4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast float* %z5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast float* %z11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast float* %z13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast float** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load float*, float** %data.addr, align 8, !tbaa !2
  store float* %21, float** %dataptr, align 8, !tbaa !2
  store i32 7, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp = icmp sge i32 %22, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds float, float* %23, i64 0
  %24 = load float, float* %arrayidx, align 4, !tbaa !8
  %25 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds float, float* %25, i64 7
  %26 = load float, float* %arrayidx1, align 4, !tbaa !8
  %add = fadd float %24, %26
  store float %add, float* %tmp0, align 4, !tbaa !8
  %27 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds float, float* %27, i64 0
  %28 = load float, float* %arrayidx2, align 4, !tbaa !8
  %29 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds float, float* %29, i64 7
  %30 = load float, float* %arrayidx3, align 4, !tbaa !8
  %sub = fsub float %28, %30
  store float %sub, float* %tmp7, align 4, !tbaa !8
  %31 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds float, float* %31, i64 1
  %32 = load float, float* %arrayidx4, align 4, !tbaa !8
  %33 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds float, float* %33, i64 6
  %34 = load float, float* %arrayidx5, align 4, !tbaa !8
  %add6 = fadd float %32, %34
  store float %add6, float* %tmp1, align 4, !tbaa !8
  %35 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds float, float* %35, i64 1
  %36 = load float, float* %arrayidx7, align 4, !tbaa !8
  %37 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds float, float* %37, i64 6
  %38 = load float, float* %arrayidx8, align 4, !tbaa !8
  %sub9 = fsub float %36, %38
  store float %sub9, float* %tmp6, align 4, !tbaa !8
  %39 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds float, float* %39, i64 2
  %40 = load float, float* %arrayidx10, align 4, !tbaa !8
  %41 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds float, float* %41, i64 5
  %42 = load float, float* %arrayidx11, align 4, !tbaa !8
  %add12 = fadd float %40, %42
  store float %add12, float* %tmp2, align 4, !tbaa !8
  %43 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds float, float* %43, i64 2
  %44 = load float, float* %arrayidx13, align 4, !tbaa !8
  %45 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds float, float* %45, i64 5
  %46 = load float, float* %arrayidx14, align 4, !tbaa !8
  %sub15 = fsub float %44, %46
  store float %sub15, float* %tmp5, align 4, !tbaa !8
  %47 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds float, float* %47, i64 3
  %48 = load float, float* %arrayidx16, align 4, !tbaa !8
  %49 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds float, float* %49, i64 4
  %50 = load float, float* %arrayidx17, align 4, !tbaa !8
  %add18 = fadd float %48, %50
  store float %add18, float* %tmp3, align 4, !tbaa !8
  %51 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds float, float* %51, i64 3
  %52 = load float, float* %arrayidx19, align 4, !tbaa !8
  %53 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds float, float* %53, i64 4
  %54 = load float, float* %arrayidx20, align 4, !tbaa !8
  %sub21 = fsub float %52, %54
  store float %sub21, float* %tmp4, align 4, !tbaa !8
  %55 = load float, float* %tmp0, align 4, !tbaa !8
  %56 = load float, float* %tmp3, align 4, !tbaa !8
  %add22 = fadd float %55, %56
  store float %add22, float* %tmp10, align 4, !tbaa !8
  %57 = load float, float* %tmp0, align 4, !tbaa !8
  %58 = load float, float* %tmp3, align 4, !tbaa !8
  %sub23 = fsub float %57, %58
  store float %sub23, float* %tmp13, align 4, !tbaa !8
  %59 = load float, float* %tmp1, align 4, !tbaa !8
  %60 = load float, float* %tmp2, align 4, !tbaa !8
  %add24 = fadd float %59, %60
  store float %add24, float* %tmp11, align 4, !tbaa !8
  %61 = load float, float* %tmp1, align 4, !tbaa !8
  %62 = load float, float* %tmp2, align 4, !tbaa !8
  %sub25 = fsub float %61, %62
  store float %sub25, float* %tmp12, align 4, !tbaa !8
  %63 = load float, float* %tmp10, align 4, !tbaa !8
  %64 = load float, float* %tmp11, align 4, !tbaa !8
  %add26 = fadd float %63, %64
  %65 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds float, float* %65, i64 0
  store float %add26, float* %arrayidx27, align 4, !tbaa !8
  %66 = load float, float* %tmp10, align 4, !tbaa !8
  %67 = load float, float* %tmp11, align 4, !tbaa !8
  %sub28 = fsub float %66, %67
  %68 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds float, float* %68, i64 4
  store float %sub28, float* %arrayidx29, align 4, !tbaa !8
  %69 = load float, float* %tmp12, align 4, !tbaa !8
  %70 = load float, float* %tmp13, align 4, !tbaa !8
  %add30 = fadd float %69, %70
  %mul = fmul float %add30, 0x3FE6A09E60000000
  store float %mul, float* %z1, align 4, !tbaa !8
  %71 = load float, float* %tmp13, align 4, !tbaa !8
  %72 = load float, float* %z1, align 4, !tbaa !8
  %add31 = fadd float %71, %72
  %73 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds float, float* %73, i64 2
  store float %add31, float* %arrayidx32, align 4, !tbaa !8
  %74 = load float, float* %tmp13, align 4, !tbaa !8
  %75 = load float, float* %z1, align 4, !tbaa !8
  %sub33 = fsub float %74, %75
  %76 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds float, float* %76, i64 6
  store float %sub33, float* %arrayidx34, align 4, !tbaa !8
  %77 = load float, float* %tmp4, align 4, !tbaa !8
  %78 = load float, float* %tmp5, align 4, !tbaa !8
  %add35 = fadd float %77, %78
  store float %add35, float* %tmp10, align 4, !tbaa !8
  %79 = load float, float* %tmp5, align 4, !tbaa !8
  %80 = load float, float* %tmp6, align 4, !tbaa !8
  %add36 = fadd float %79, %80
  store float %add36, float* %tmp11, align 4, !tbaa !8
  %81 = load float, float* %tmp6, align 4, !tbaa !8
  %82 = load float, float* %tmp7, align 4, !tbaa !8
  %add37 = fadd float %81, %82
  store float %add37, float* %tmp12, align 4, !tbaa !8
  %83 = load float, float* %tmp10, align 4, !tbaa !8
  %84 = load float, float* %tmp12, align 4, !tbaa !8
  %sub38 = fsub float %83, %84
  %mul39 = fmul float %sub38, 0x3FD87DE2A0000000
  store float %mul39, float* %z5, align 4, !tbaa !8
  %85 = load float, float* %tmp10, align 4, !tbaa !8
  %mul40 = fmul float 0x3FE1517A80000000, %85
  %86 = load float, float* %z5, align 4, !tbaa !8
  %add41 = fadd float %mul40, %86
  store float %add41, float* %z2, align 4, !tbaa !8
  %87 = load float, float* %tmp12, align 4, !tbaa !8
  %mul42 = fmul float 0x3FF4E7AEA0000000, %87
  %88 = load float, float* %z5, align 4, !tbaa !8
  %add43 = fadd float %mul42, %88
  store float %add43, float* %z4, align 4, !tbaa !8
  %89 = load float, float* %tmp11, align 4, !tbaa !8
  %mul44 = fmul float %89, 0x3FE6A09E60000000
  store float %mul44, float* %z3, align 4, !tbaa !8
  %90 = load float, float* %tmp7, align 4, !tbaa !8
  %91 = load float, float* %z3, align 4, !tbaa !8
  %add45 = fadd float %90, %91
  store float %add45, float* %z11, align 4, !tbaa !8
  %92 = load float, float* %tmp7, align 4, !tbaa !8
  %93 = load float, float* %z3, align 4, !tbaa !8
  %sub46 = fsub float %92, %93
  store float %sub46, float* %z13, align 4, !tbaa !8
  %94 = load float, float* %z13, align 4, !tbaa !8
  %95 = load float, float* %z2, align 4, !tbaa !8
  %add47 = fadd float %94, %95
  %96 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds float, float* %96, i64 5
  store float %add47, float* %arrayidx48, align 4, !tbaa !8
  %97 = load float, float* %z13, align 4, !tbaa !8
  %98 = load float, float* %z2, align 4, !tbaa !8
  %sub49 = fsub float %97, %98
  %99 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds float, float* %99, i64 3
  store float %sub49, float* %arrayidx50, align 4, !tbaa !8
  %100 = load float, float* %z11, align 4, !tbaa !8
  %101 = load float, float* %z4, align 4, !tbaa !8
  %add51 = fadd float %100, %101
  %102 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx52 = getelementptr inbounds float, float* %102, i64 1
  store float %add51, float* %arrayidx52, align 4, !tbaa !8
  %103 = load float, float* %z11, align 4, !tbaa !8
  %104 = load float, float* %z4, align 4, !tbaa !8
  %sub53 = fsub float %103, %104
  %105 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx54 = getelementptr inbounds float, float* %105, i64 7
  store float %sub53, float* %arrayidx54, align 4, !tbaa !8
  %106 = load float*, float** %dataptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds float, float* %106, i64 8
  store float* %add.ptr, float** %dataptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %107 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec = add nsw i32 %107, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %108 = load float*, float** %data.addr, align 8, !tbaa !2
  store float* %108, float** %dataptr, align 8, !tbaa !2
  store i32 7, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.116, %for.end
  %109 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp56 = icmp sge i32 %109, 0
  br i1 %cmp56, label %for.body.57, label %for.end.118

for.body.57:                                      ; preds = %for.cond.55
  %110 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx58 = getelementptr inbounds float, float* %110, i64 0
  %111 = load float, float* %arrayidx58, align 4, !tbaa !8
  %112 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx59 = getelementptr inbounds float, float* %112, i64 56
  %113 = load float, float* %arrayidx59, align 4, !tbaa !8
  %add60 = fadd float %111, %113
  store float %add60, float* %tmp0, align 4, !tbaa !8
  %114 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds float, float* %114, i64 0
  %115 = load float, float* %arrayidx61, align 4, !tbaa !8
  %116 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx62 = getelementptr inbounds float, float* %116, i64 56
  %117 = load float, float* %arrayidx62, align 4, !tbaa !8
  %sub63 = fsub float %115, %117
  store float %sub63, float* %tmp7, align 4, !tbaa !8
  %118 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx64 = getelementptr inbounds float, float* %118, i64 8
  %119 = load float, float* %arrayidx64, align 4, !tbaa !8
  %120 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds float, float* %120, i64 48
  %121 = load float, float* %arrayidx65, align 4, !tbaa !8
  %add66 = fadd float %119, %121
  store float %add66, float* %tmp1, align 4, !tbaa !8
  %122 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx67 = getelementptr inbounds float, float* %122, i64 8
  %123 = load float, float* %arrayidx67, align 4, !tbaa !8
  %124 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx68 = getelementptr inbounds float, float* %124, i64 48
  %125 = load float, float* %arrayidx68, align 4, !tbaa !8
  %sub69 = fsub float %123, %125
  store float %sub69, float* %tmp6, align 4, !tbaa !8
  %126 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx70 = getelementptr inbounds float, float* %126, i64 16
  %127 = load float, float* %arrayidx70, align 4, !tbaa !8
  %128 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds float, float* %128, i64 40
  %129 = load float, float* %arrayidx71, align 4, !tbaa !8
  %add72 = fadd float %127, %129
  store float %add72, float* %tmp2, align 4, !tbaa !8
  %130 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds float, float* %130, i64 16
  %131 = load float, float* %arrayidx73, align 4, !tbaa !8
  %132 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx74 = getelementptr inbounds float, float* %132, i64 40
  %133 = load float, float* %arrayidx74, align 4, !tbaa !8
  %sub75 = fsub float %131, %133
  store float %sub75, float* %tmp5, align 4, !tbaa !8
  %134 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds float, float* %134, i64 24
  %135 = load float, float* %arrayidx76, align 4, !tbaa !8
  %136 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds float, float* %136, i64 32
  %137 = load float, float* %arrayidx77, align 4, !tbaa !8
  %add78 = fadd float %135, %137
  store float %add78, float* %tmp3, align 4, !tbaa !8
  %138 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx79 = getelementptr inbounds float, float* %138, i64 24
  %139 = load float, float* %arrayidx79, align 4, !tbaa !8
  %140 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds float, float* %140, i64 32
  %141 = load float, float* %arrayidx80, align 4, !tbaa !8
  %sub81 = fsub float %139, %141
  store float %sub81, float* %tmp4, align 4, !tbaa !8
  %142 = load float, float* %tmp0, align 4, !tbaa !8
  %143 = load float, float* %tmp3, align 4, !tbaa !8
  %add82 = fadd float %142, %143
  store float %add82, float* %tmp10, align 4, !tbaa !8
  %144 = load float, float* %tmp0, align 4, !tbaa !8
  %145 = load float, float* %tmp3, align 4, !tbaa !8
  %sub83 = fsub float %144, %145
  store float %sub83, float* %tmp13, align 4, !tbaa !8
  %146 = load float, float* %tmp1, align 4, !tbaa !8
  %147 = load float, float* %tmp2, align 4, !tbaa !8
  %add84 = fadd float %146, %147
  store float %add84, float* %tmp11, align 4, !tbaa !8
  %148 = load float, float* %tmp1, align 4, !tbaa !8
  %149 = load float, float* %tmp2, align 4, !tbaa !8
  %sub85 = fsub float %148, %149
  store float %sub85, float* %tmp12, align 4, !tbaa !8
  %150 = load float, float* %tmp10, align 4, !tbaa !8
  %151 = load float, float* %tmp11, align 4, !tbaa !8
  %add86 = fadd float %150, %151
  %152 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx87 = getelementptr inbounds float, float* %152, i64 0
  store float %add86, float* %arrayidx87, align 4, !tbaa !8
  %153 = load float, float* %tmp10, align 4, !tbaa !8
  %154 = load float, float* %tmp11, align 4, !tbaa !8
  %sub88 = fsub float %153, %154
  %155 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds float, float* %155, i64 32
  store float %sub88, float* %arrayidx89, align 4, !tbaa !8
  %156 = load float, float* %tmp12, align 4, !tbaa !8
  %157 = load float, float* %tmp13, align 4, !tbaa !8
  %add90 = fadd float %156, %157
  %mul91 = fmul float %add90, 0x3FE6A09E60000000
  store float %mul91, float* %z1, align 4, !tbaa !8
  %158 = load float, float* %tmp13, align 4, !tbaa !8
  %159 = load float, float* %z1, align 4, !tbaa !8
  %add92 = fadd float %158, %159
  %160 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds float, float* %160, i64 16
  store float %add92, float* %arrayidx93, align 4, !tbaa !8
  %161 = load float, float* %tmp13, align 4, !tbaa !8
  %162 = load float, float* %z1, align 4, !tbaa !8
  %sub94 = fsub float %161, %162
  %163 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx95 = getelementptr inbounds float, float* %163, i64 48
  store float %sub94, float* %arrayidx95, align 4, !tbaa !8
  %164 = load float, float* %tmp4, align 4, !tbaa !8
  %165 = load float, float* %tmp5, align 4, !tbaa !8
  %add96 = fadd float %164, %165
  store float %add96, float* %tmp10, align 4, !tbaa !8
  %166 = load float, float* %tmp5, align 4, !tbaa !8
  %167 = load float, float* %tmp6, align 4, !tbaa !8
  %add97 = fadd float %166, %167
  store float %add97, float* %tmp11, align 4, !tbaa !8
  %168 = load float, float* %tmp6, align 4, !tbaa !8
  %169 = load float, float* %tmp7, align 4, !tbaa !8
  %add98 = fadd float %168, %169
  store float %add98, float* %tmp12, align 4, !tbaa !8
  %170 = load float, float* %tmp10, align 4, !tbaa !8
  %171 = load float, float* %tmp12, align 4, !tbaa !8
  %sub99 = fsub float %170, %171
  %mul100 = fmul float %sub99, 0x3FD87DE2A0000000
  store float %mul100, float* %z5, align 4, !tbaa !8
  %172 = load float, float* %tmp10, align 4, !tbaa !8
  %mul101 = fmul float 0x3FE1517A80000000, %172
  %173 = load float, float* %z5, align 4, !tbaa !8
  %add102 = fadd float %mul101, %173
  store float %add102, float* %z2, align 4, !tbaa !8
  %174 = load float, float* %tmp12, align 4, !tbaa !8
  %mul103 = fmul float 0x3FF4E7AEA0000000, %174
  %175 = load float, float* %z5, align 4, !tbaa !8
  %add104 = fadd float %mul103, %175
  store float %add104, float* %z4, align 4, !tbaa !8
  %176 = load float, float* %tmp11, align 4, !tbaa !8
  %mul105 = fmul float %176, 0x3FE6A09E60000000
  store float %mul105, float* %z3, align 4, !tbaa !8
  %177 = load float, float* %tmp7, align 4, !tbaa !8
  %178 = load float, float* %z3, align 4, !tbaa !8
  %add106 = fadd float %177, %178
  store float %add106, float* %z11, align 4, !tbaa !8
  %179 = load float, float* %tmp7, align 4, !tbaa !8
  %180 = load float, float* %z3, align 4, !tbaa !8
  %sub107 = fsub float %179, %180
  store float %sub107, float* %z13, align 4, !tbaa !8
  %181 = load float, float* %z13, align 4, !tbaa !8
  %182 = load float, float* %z2, align 4, !tbaa !8
  %add108 = fadd float %181, %182
  %183 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds float, float* %183, i64 40
  store float %add108, float* %arrayidx109, align 4, !tbaa !8
  %184 = load float, float* %z13, align 4, !tbaa !8
  %185 = load float, float* %z2, align 4, !tbaa !8
  %sub110 = fsub float %184, %185
  %186 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx111 = getelementptr inbounds float, float* %186, i64 24
  store float %sub110, float* %arrayidx111, align 4, !tbaa !8
  %187 = load float, float* %z11, align 4, !tbaa !8
  %188 = load float, float* %z4, align 4, !tbaa !8
  %add112 = fadd float %187, %188
  %189 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx113 = getelementptr inbounds float, float* %189, i64 8
  store float %add112, float* %arrayidx113, align 4, !tbaa !8
  %190 = load float, float* %z11, align 4, !tbaa !8
  %191 = load float, float* %z4, align 4, !tbaa !8
  %sub114 = fsub float %190, %191
  %192 = load float*, float** %dataptr, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds float, float* %192, i64 56
  store float %sub114, float* %arrayidx115, align 4, !tbaa !8
  %193 = load float*, float** %dataptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds float, float* %193, i32 1
  store float* %incdec.ptr, float** %dataptr, align 8, !tbaa !2
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.57
  %194 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec117 = add nsw i32 %194, -1
  store i32 %dec117, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.55

for.end.118:                                      ; preds = %for.cond.55
  %195 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #2
  %196 = bitcast float** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #2
  %197 = bitcast float* %z13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  %198 = bitcast float* %z11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #2
  %199 = bitcast float* %z5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #2
  %200 = bitcast float* %z4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #2
  %201 = bitcast float* %z3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #2
  %202 = bitcast float* %z2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #2
  %203 = bitcast float* %z1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #2
  %204 = bitcast float* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #2
  %205 = bitcast float* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #2
  %206 = bitcast float* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #2
  %207 = bitcast float* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #2
  %208 = bitcast float* %tmp7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #2
  %209 = bitcast float* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #2
  %210 = bitcast float* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #2
  %211 = bitcast float* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #2
  %212 = bitcast float* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #2
  %213 = bitcast float* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #2
  %214 = bitcast float* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #2
  %215 = bitcast float* %tmp0 to i8*
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
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !4, i64 0}
