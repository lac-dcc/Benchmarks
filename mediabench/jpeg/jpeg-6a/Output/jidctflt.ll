; ModuleID = 'jidctflt.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x {}*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_idct_float(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
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
  %z5 = alloca float, align 4
  %z10 = alloca float, align 4
  %z11 = alloca float, align 4
  %z12 = alloca float, align 4
  %z13 = alloca float, align 4
  %inptr = alloca i16*, align 8
  %quantptr = alloca float*, align 8
  %wsptr = alloca float*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x float], align 16
  %dcval = alloca float, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i16* %coef_block, i16** %coef_block.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_col, i32* %output_col.addr, align 4, !tbaa !6
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
  %12 = bitcast float* %z5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast float* %z10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast float* %z11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast float* %z12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast float* %z13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast float** %quantptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast float** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 61
  %23 = load i8*, i8** %sample_range_limit, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 128
  store i8* %add.ptr, i8** %range_limit, align 8, !tbaa !2
  %24 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast [64 x float]* %workspace to i8*
  call void @llvm.lifetime.start(i64 256, i8* %25) #2
  %26 = load i16*, i16** %coef_block.addr, align 8, !tbaa !2
  store i16* %26, i16** %inptr, align 8, !tbaa !2
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 20
  %28 = load i8*, i8** %dct_table, align 8, !tbaa !12
  %29 = bitcast i8* %28 to float*
  store float* %29, float** %quantptr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i32 0
  store float* %arraydecay, float** %wsptr, align 8, !tbaa !2
  store i32 8, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %30 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp = icmp sgt i32 %30, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %31, i64 8
  %32 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv = sext i16 %32 to i32
  %33 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i16, i16* %33, i64 16
  %34 = load i16, i16* %arrayidx1, align 2, !tbaa !14
  %conv2 = sext i16 %34 to i32
  %or = or i32 %conv, %conv2
  %35 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i16, i16* %35, i64 24
  %36 = load i16, i16* %arrayidx3, align 2, !tbaa !14
  %conv4 = sext i16 %36 to i32
  %or5 = or i32 %or, %conv4
  %37 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i16, i16* %37, i64 32
  %38 = load i16, i16* %arrayidx6, align 2, !tbaa !14
  %conv7 = sext i16 %38 to i32
  %or8 = or i32 %or5, %conv7
  %39 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i16, i16* %39, i64 40
  %40 = load i16, i16* %arrayidx9, align 2, !tbaa !14
  %conv10 = sext i16 %40 to i32
  %or11 = or i32 %or8, %conv10
  %41 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i16, i16* %41, i64 48
  %42 = load i16, i16* %arrayidx12, align 2, !tbaa !14
  %conv13 = sext i16 %42 to i32
  %or14 = or i32 %or11, %conv13
  %43 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i16, i16* %43, i64 56
  %44 = load i16, i16* %arrayidx15, align 2, !tbaa !14
  %conv16 = sext i16 %44 to i32
  %or17 = or i32 %or14, %conv16
  %cmp18 = icmp eq i32 %or17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %45 = bitcast float* %dcval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i16, i16* %46, i64 0
  %47 = load i16, i16* %arrayidx20, align 2, !tbaa !14
  %conv21 = sitofp i16 %47 to float
  %48 = load float*, float** %quantptr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds float, float* %48, i64 0
  %49 = load float, float* %arrayidx22, align 4, !tbaa !15
  %mul = fmul float %conv21, %49
  store float %mul, float* %dcval, align 4, !tbaa !15
  %50 = load float, float* %dcval, align 4, !tbaa !15
  %51 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds float, float* %51, i64 0
  store float %50, float* %arrayidx23, align 4, !tbaa !15
  %52 = load float, float* %dcval, align 4, !tbaa !15
  %53 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds float, float* %53, i64 8
  store float %52, float* %arrayidx24, align 4, !tbaa !15
  %54 = load float, float* %dcval, align 4, !tbaa !15
  %55 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds float, float* %55, i64 16
  store float %54, float* %arrayidx25, align 4, !tbaa !15
  %56 = load float, float* %dcval, align 4, !tbaa !15
  %57 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds float, float* %57, i64 24
  store float %56, float* %arrayidx26, align 4, !tbaa !15
  %58 = load float, float* %dcval, align 4, !tbaa !15
  %59 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds float, float* %59, i64 32
  store float %58, float* %arrayidx27, align 4, !tbaa !15
  %60 = load float, float* %dcval, align 4, !tbaa !15
  %61 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds float, float* %61, i64 40
  store float %60, float* %arrayidx28, align 4, !tbaa !15
  %62 = load float, float* %dcval, align 4, !tbaa !15
  %63 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds float, float* %63, i64 48
  store float %62, float* %arrayidx29, align 4, !tbaa !15
  %64 = load float, float* %dcval, align 4, !tbaa !15
  %65 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds float, float* %65, i64 56
  store float %64, float* %arrayidx30, align 4, !tbaa !15
  %66 = load i16*, i16** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8, !tbaa !2
  %67 = load float*, float** %quantptr, align 8, !tbaa !2
  %incdec.ptr31 = getelementptr inbounds float, float* %67, i32 1
  store float* %incdec.ptr31, float** %quantptr, align 8, !tbaa !2
  %68 = load float*, float** %wsptr, align 8, !tbaa !2
  %incdec.ptr32 = getelementptr inbounds float, float* %68, i32 1
  store float* %incdec.ptr32, float** %wsptr, align 8, !tbaa !2
  %69 = bitcast float* %dcval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  br label %for.inc

if.end:                                           ; preds = %for.body
  %70 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i16, i16* %70, i64 0
  %71 = load i16, i16* %arrayidx33, align 2, !tbaa !14
  %conv34 = sitofp i16 %71 to float
  %72 = load float*, float** %quantptr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds float, float* %72, i64 0
  %73 = load float, float* %arrayidx35, align 4, !tbaa !15
  %mul36 = fmul float %conv34, %73
  store float %mul36, float* %tmp0, align 4, !tbaa !15
  %74 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds i16, i16* %74, i64 16
  %75 = load i16, i16* %arrayidx37, align 2, !tbaa !14
  %conv38 = sitofp i16 %75 to float
  %76 = load float*, float** %quantptr, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds float, float* %76, i64 16
  %77 = load float, float* %arrayidx39, align 4, !tbaa !15
  %mul40 = fmul float %conv38, %77
  store float %mul40, float* %tmp1, align 4, !tbaa !15
  %78 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds i16, i16* %78, i64 32
  %79 = load i16, i16* %arrayidx41, align 2, !tbaa !14
  %conv42 = sitofp i16 %79 to float
  %80 = load float*, float** %quantptr, align 8, !tbaa !2
  %arrayidx43 = getelementptr inbounds float, float* %80, i64 32
  %81 = load float, float* %arrayidx43, align 4, !tbaa !15
  %mul44 = fmul float %conv42, %81
  store float %mul44, float* %tmp2, align 4, !tbaa !15
  %82 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i16, i16* %82, i64 48
  %83 = load i16, i16* %arrayidx45, align 2, !tbaa !14
  %conv46 = sitofp i16 %83 to float
  %84 = load float*, float** %quantptr, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds float, float* %84, i64 48
  %85 = load float, float* %arrayidx47, align 4, !tbaa !15
  %mul48 = fmul float %conv46, %85
  store float %mul48, float* %tmp3, align 4, !tbaa !15
  %86 = load float, float* %tmp0, align 4, !tbaa !15
  %87 = load float, float* %tmp2, align 4, !tbaa !15
  %add = fadd float %86, %87
  store float %add, float* %tmp10, align 4, !tbaa !15
  %88 = load float, float* %tmp0, align 4, !tbaa !15
  %89 = load float, float* %tmp2, align 4, !tbaa !15
  %sub = fsub float %88, %89
  store float %sub, float* %tmp11, align 4, !tbaa !15
  %90 = load float, float* %tmp1, align 4, !tbaa !15
  %91 = load float, float* %tmp3, align 4, !tbaa !15
  %add49 = fadd float %90, %91
  store float %add49, float* %tmp13, align 4, !tbaa !15
  %92 = load float, float* %tmp1, align 4, !tbaa !15
  %93 = load float, float* %tmp3, align 4, !tbaa !15
  %sub50 = fsub float %92, %93
  %mul51 = fmul float %sub50, 0x3FF6A09E60000000
  %94 = load float, float* %tmp13, align 4, !tbaa !15
  %sub52 = fsub float %mul51, %94
  store float %sub52, float* %tmp12, align 4, !tbaa !15
  %95 = load float, float* %tmp10, align 4, !tbaa !15
  %96 = load float, float* %tmp13, align 4, !tbaa !15
  %add53 = fadd float %95, %96
  store float %add53, float* %tmp0, align 4, !tbaa !15
  %97 = load float, float* %tmp10, align 4, !tbaa !15
  %98 = load float, float* %tmp13, align 4, !tbaa !15
  %sub54 = fsub float %97, %98
  store float %sub54, float* %tmp3, align 4, !tbaa !15
  %99 = load float, float* %tmp11, align 4, !tbaa !15
  %100 = load float, float* %tmp12, align 4, !tbaa !15
  %add55 = fadd float %99, %100
  store float %add55, float* %tmp1, align 4, !tbaa !15
  %101 = load float, float* %tmp11, align 4, !tbaa !15
  %102 = load float, float* %tmp12, align 4, !tbaa !15
  %sub56 = fsub float %101, %102
  store float %sub56, float* %tmp2, align 4, !tbaa !15
  %103 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds i16, i16* %103, i64 8
  %104 = load i16, i16* %arrayidx57, align 2, !tbaa !14
  %conv58 = sitofp i16 %104 to float
  %105 = load float*, float** %quantptr, align 8, !tbaa !2
  %arrayidx59 = getelementptr inbounds float, float* %105, i64 8
  %106 = load float, float* %arrayidx59, align 4, !tbaa !15
  %mul60 = fmul float %conv58, %106
  store float %mul60, float* %tmp4, align 4, !tbaa !15
  %107 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds i16, i16* %107, i64 24
  %108 = load i16, i16* %arrayidx61, align 2, !tbaa !14
  %conv62 = sitofp i16 %108 to float
  %109 = load float*, float** %quantptr, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds float, float* %109, i64 24
  %110 = load float, float* %arrayidx63, align 4, !tbaa !15
  %mul64 = fmul float %conv62, %110
  store float %mul64, float* %tmp5, align 4, !tbaa !15
  %111 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds i16, i16* %111, i64 40
  %112 = load i16, i16* %arrayidx65, align 2, !tbaa !14
  %conv66 = sitofp i16 %112 to float
  %113 = load float*, float** %quantptr, align 8, !tbaa !2
  %arrayidx67 = getelementptr inbounds float, float* %113, i64 40
  %114 = load float, float* %arrayidx67, align 4, !tbaa !15
  %mul68 = fmul float %conv66, %114
  store float %mul68, float* %tmp6, align 4, !tbaa !15
  %115 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds i16, i16* %115, i64 56
  %116 = load i16, i16* %arrayidx69, align 2, !tbaa !14
  %conv70 = sitofp i16 %116 to float
  %117 = load float*, float** %quantptr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds float, float* %117, i64 56
  %118 = load float, float* %arrayidx71, align 4, !tbaa !15
  %mul72 = fmul float %conv70, %118
  store float %mul72, float* %tmp7, align 4, !tbaa !15
  %119 = load float, float* %tmp6, align 4, !tbaa !15
  %120 = load float, float* %tmp5, align 4, !tbaa !15
  %add73 = fadd float %119, %120
  store float %add73, float* %z13, align 4, !tbaa !15
  %121 = load float, float* %tmp6, align 4, !tbaa !15
  %122 = load float, float* %tmp5, align 4, !tbaa !15
  %sub74 = fsub float %121, %122
  store float %sub74, float* %z10, align 4, !tbaa !15
  %123 = load float, float* %tmp4, align 4, !tbaa !15
  %124 = load float, float* %tmp7, align 4, !tbaa !15
  %add75 = fadd float %123, %124
  store float %add75, float* %z11, align 4, !tbaa !15
  %125 = load float, float* %tmp4, align 4, !tbaa !15
  %126 = load float, float* %tmp7, align 4, !tbaa !15
  %sub76 = fsub float %125, %126
  store float %sub76, float* %z12, align 4, !tbaa !15
  %127 = load float, float* %z11, align 4, !tbaa !15
  %128 = load float, float* %z13, align 4, !tbaa !15
  %add77 = fadd float %127, %128
  store float %add77, float* %tmp7, align 4, !tbaa !15
  %129 = load float, float* %z11, align 4, !tbaa !15
  %130 = load float, float* %z13, align 4, !tbaa !15
  %sub78 = fsub float %129, %130
  %mul79 = fmul float %sub78, 0x3FF6A09E60000000
  store float %mul79, float* %tmp11, align 4, !tbaa !15
  %131 = load float, float* %z10, align 4, !tbaa !15
  %132 = load float, float* %z12, align 4, !tbaa !15
  %add80 = fadd float %131, %132
  %mul81 = fmul float %add80, 0x3FFD906BC0000000
  store float %mul81, float* %z5, align 4, !tbaa !15
  %133 = load float, float* %z12, align 4, !tbaa !15
  %mul82 = fmul float 0x3FF1517A80000000, %133
  %134 = load float, float* %z5, align 4, !tbaa !15
  %sub83 = fsub float %mul82, %134
  store float %sub83, float* %tmp10, align 4, !tbaa !15
  %135 = load float, float* %z10, align 4, !tbaa !15
  %mul84 = fmul float 0xC004E7AEA0000000, %135
  %136 = load float, float* %z5, align 4, !tbaa !15
  %add85 = fadd float %mul84, %136
  store float %add85, float* %tmp12, align 4, !tbaa !15
  %137 = load float, float* %tmp12, align 4, !tbaa !15
  %138 = load float, float* %tmp7, align 4, !tbaa !15
  %sub86 = fsub float %137, %138
  store float %sub86, float* %tmp6, align 4, !tbaa !15
  %139 = load float, float* %tmp11, align 4, !tbaa !15
  %140 = load float, float* %tmp6, align 4, !tbaa !15
  %sub87 = fsub float %139, %140
  store float %sub87, float* %tmp5, align 4, !tbaa !15
  %141 = load float, float* %tmp10, align 4, !tbaa !15
  %142 = load float, float* %tmp5, align 4, !tbaa !15
  %add88 = fadd float %141, %142
  store float %add88, float* %tmp4, align 4, !tbaa !15
  %143 = load float, float* %tmp0, align 4, !tbaa !15
  %144 = load float, float* %tmp7, align 4, !tbaa !15
  %add89 = fadd float %143, %144
  %145 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds float, float* %145, i64 0
  store float %add89, float* %arrayidx90, align 4, !tbaa !15
  %146 = load float, float* %tmp0, align 4, !tbaa !15
  %147 = load float, float* %tmp7, align 4, !tbaa !15
  %sub91 = fsub float %146, %147
  %148 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx92 = getelementptr inbounds float, float* %148, i64 56
  store float %sub91, float* %arrayidx92, align 4, !tbaa !15
  %149 = load float, float* %tmp1, align 4, !tbaa !15
  %150 = load float, float* %tmp6, align 4, !tbaa !15
  %add93 = fadd float %149, %150
  %151 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx94 = getelementptr inbounds float, float* %151, i64 8
  store float %add93, float* %arrayidx94, align 4, !tbaa !15
  %152 = load float, float* %tmp1, align 4, !tbaa !15
  %153 = load float, float* %tmp6, align 4, !tbaa !15
  %sub95 = fsub float %152, %153
  %154 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds float, float* %154, i64 48
  store float %sub95, float* %arrayidx96, align 4, !tbaa !15
  %155 = load float, float* %tmp2, align 4, !tbaa !15
  %156 = load float, float* %tmp5, align 4, !tbaa !15
  %add97 = fadd float %155, %156
  %157 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx98 = getelementptr inbounds float, float* %157, i64 16
  store float %add97, float* %arrayidx98, align 4, !tbaa !15
  %158 = load float, float* %tmp2, align 4, !tbaa !15
  %159 = load float, float* %tmp5, align 4, !tbaa !15
  %sub99 = fsub float %158, %159
  %160 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx100 = getelementptr inbounds float, float* %160, i64 40
  store float %sub99, float* %arrayidx100, align 4, !tbaa !15
  %161 = load float, float* %tmp3, align 4, !tbaa !15
  %162 = load float, float* %tmp4, align 4, !tbaa !15
  %add101 = fadd float %161, %162
  %163 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx102 = getelementptr inbounds float, float* %163, i64 32
  store float %add101, float* %arrayidx102, align 4, !tbaa !15
  %164 = load float, float* %tmp3, align 4, !tbaa !15
  %165 = load float, float* %tmp4, align 4, !tbaa !15
  %sub103 = fsub float %164, %165
  %166 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx104 = getelementptr inbounds float, float* %166, i64 24
  store float %sub103, float* %arrayidx104, align 4, !tbaa !15
  %167 = load i16*, i16** %inptr, align 8, !tbaa !2
  %incdec.ptr105 = getelementptr inbounds i16, i16* %167, i32 1
  store i16* %incdec.ptr105, i16** %inptr, align 8, !tbaa !2
  %168 = load float*, float** %quantptr, align 8, !tbaa !2
  %incdec.ptr106 = getelementptr inbounds float, float* %168, i32 1
  store float* %incdec.ptr106, float** %quantptr, align 8, !tbaa !2
  %169 = load float*, float** %wsptr, align 8, !tbaa !2
  %incdec.ptr107 = getelementptr inbounds float, float* %169, i32 1
  store float* %incdec.ptr107, float** %wsptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %170 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec = add nsw i32 %170, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay108 = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i32 0
  store float* %arraydecay108, float** %wsptr, align 8, !tbaa !2
  store i32 0, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.228, %for.end
  %171 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp110 = icmp slt i32 %171, 8
  br i1 %cmp110, label %for.body.112, label %for.end.229

for.body.112:                                     ; preds = %for.cond.109
  %172 = load i32, i32* %ctr, align 4, !tbaa !6
  %idxprom = sext i32 %172 to i64
  %173 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx113 = getelementptr inbounds i8*, i8** %173, i64 %idxprom
  %174 = load i8*, i8** %arrayidx113, align 8, !tbaa !2
  %175 = load i32, i32* %output_col.addr, align 4, !tbaa !6
  %idx.ext = zext i32 %175 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %174, i64 %idx.ext
  store i8* %add.ptr114, i8** %outptr, align 8, !tbaa !2
  %176 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds float, float* %176, i64 0
  %177 = load float, float* %arrayidx115, align 4, !tbaa !15
  %178 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx116 = getelementptr inbounds float, float* %178, i64 4
  %179 = load float, float* %arrayidx116, align 4, !tbaa !15
  %add117 = fadd float %177, %179
  store float %add117, float* %tmp10, align 4, !tbaa !15
  %180 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx118 = getelementptr inbounds float, float* %180, i64 0
  %181 = load float, float* %arrayidx118, align 4, !tbaa !15
  %182 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx119 = getelementptr inbounds float, float* %182, i64 4
  %183 = load float, float* %arrayidx119, align 4, !tbaa !15
  %sub120 = fsub float %181, %183
  store float %sub120, float* %tmp11, align 4, !tbaa !15
  %184 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx121 = getelementptr inbounds float, float* %184, i64 2
  %185 = load float, float* %arrayidx121, align 4, !tbaa !15
  %186 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds float, float* %186, i64 6
  %187 = load float, float* %arrayidx122, align 4, !tbaa !15
  %add123 = fadd float %185, %187
  store float %add123, float* %tmp13, align 4, !tbaa !15
  %188 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx124 = getelementptr inbounds float, float* %188, i64 2
  %189 = load float, float* %arrayidx124, align 4, !tbaa !15
  %190 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx125 = getelementptr inbounds float, float* %190, i64 6
  %191 = load float, float* %arrayidx125, align 4, !tbaa !15
  %sub126 = fsub float %189, %191
  %mul127 = fmul float %sub126, 0x3FF6A09E60000000
  %192 = load float, float* %tmp13, align 4, !tbaa !15
  %sub128 = fsub float %mul127, %192
  store float %sub128, float* %tmp12, align 4, !tbaa !15
  %193 = load float, float* %tmp10, align 4, !tbaa !15
  %194 = load float, float* %tmp13, align 4, !tbaa !15
  %add129 = fadd float %193, %194
  store float %add129, float* %tmp0, align 4, !tbaa !15
  %195 = load float, float* %tmp10, align 4, !tbaa !15
  %196 = load float, float* %tmp13, align 4, !tbaa !15
  %sub130 = fsub float %195, %196
  store float %sub130, float* %tmp3, align 4, !tbaa !15
  %197 = load float, float* %tmp11, align 4, !tbaa !15
  %198 = load float, float* %tmp12, align 4, !tbaa !15
  %add131 = fadd float %197, %198
  store float %add131, float* %tmp1, align 4, !tbaa !15
  %199 = load float, float* %tmp11, align 4, !tbaa !15
  %200 = load float, float* %tmp12, align 4, !tbaa !15
  %sub132 = fsub float %199, %200
  store float %sub132, float* %tmp2, align 4, !tbaa !15
  %201 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx133 = getelementptr inbounds float, float* %201, i64 5
  %202 = load float, float* %arrayidx133, align 4, !tbaa !15
  %203 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx134 = getelementptr inbounds float, float* %203, i64 3
  %204 = load float, float* %arrayidx134, align 4, !tbaa !15
  %add135 = fadd float %202, %204
  store float %add135, float* %z13, align 4, !tbaa !15
  %205 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx136 = getelementptr inbounds float, float* %205, i64 5
  %206 = load float, float* %arrayidx136, align 4, !tbaa !15
  %207 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx137 = getelementptr inbounds float, float* %207, i64 3
  %208 = load float, float* %arrayidx137, align 4, !tbaa !15
  %sub138 = fsub float %206, %208
  store float %sub138, float* %z10, align 4, !tbaa !15
  %209 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx139 = getelementptr inbounds float, float* %209, i64 1
  %210 = load float, float* %arrayidx139, align 4, !tbaa !15
  %211 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx140 = getelementptr inbounds float, float* %211, i64 7
  %212 = load float, float* %arrayidx140, align 4, !tbaa !15
  %add141 = fadd float %210, %212
  store float %add141, float* %z11, align 4, !tbaa !15
  %213 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx142 = getelementptr inbounds float, float* %213, i64 1
  %214 = load float, float* %arrayidx142, align 4, !tbaa !15
  %215 = load float*, float** %wsptr, align 8, !tbaa !2
  %arrayidx143 = getelementptr inbounds float, float* %215, i64 7
  %216 = load float, float* %arrayidx143, align 4, !tbaa !15
  %sub144 = fsub float %214, %216
  store float %sub144, float* %z12, align 4, !tbaa !15
  %217 = load float, float* %z11, align 4, !tbaa !15
  %218 = load float, float* %z13, align 4, !tbaa !15
  %add145 = fadd float %217, %218
  store float %add145, float* %tmp7, align 4, !tbaa !15
  %219 = load float, float* %z11, align 4, !tbaa !15
  %220 = load float, float* %z13, align 4, !tbaa !15
  %sub146 = fsub float %219, %220
  %mul147 = fmul float %sub146, 0x3FF6A09E60000000
  store float %mul147, float* %tmp11, align 4, !tbaa !15
  %221 = load float, float* %z10, align 4, !tbaa !15
  %222 = load float, float* %z12, align 4, !tbaa !15
  %add148 = fadd float %221, %222
  %mul149 = fmul float %add148, 0x3FFD906BC0000000
  store float %mul149, float* %z5, align 4, !tbaa !15
  %223 = load float, float* %z12, align 4, !tbaa !15
  %mul150 = fmul float 0x3FF1517A80000000, %223
  %224 = load float, float* %z5, align 4, !tbaa !15
  %sub151 = fsub float %mul150, %224
  store float %sub151, float* %tmp10, align 4, !tbaa !15
  %225 = load float, float* %z10, align 4, !tbaa !15
  %mul152 = fmul float 0xC004E7AEA0000000, %225
  %226 = load float, float* %z5, align 4, !tbaa !15
  %add153 = fadd float %mul152, %226
  store float %add153, float* %tmp12, align 4, !tbaa !15
  %227 = load float, float* %tmp12, align 4, !tbaa !15
  %228 = load float, float* %tmp7, align 4, !tbaa !15
  %sub154 = fsub float %227, %228
  store float %sub154, float* %tmp6, align 4, !tbaa !15
  %229 = load float, float* %tmp11, align 4, !tbaa !15
  %230 = load float, float* %tmp6, align 4, !tbaa !15
  %sub155 = fsub float %229, %230
  store float %sub155, float* %tmp5, align 4, !tbaa !15
  %231 = load float, float* %tmp10, align 4, !tbaa !15
  %232 = load float, float* %tmp5, align 4, !tbaa !15
  %add156 = fadd float %231, %232
  store float %add156, float* %tmp4, align 4, !tbaa !15
  %233 = load float, float* %tmp0, align 4, !tbaa !15
  %234 = load float, float* %tmp7, align 4, !tbaa !15
  %add157 = fadd float %233, %234
  %conv158 = fptosi float %add157 to i64
  %add159 = add nsw i64 %conv158, 4
  %shr = ashr i64 %add159, 3
  %conv160 = trunc i64 %shr to i32
  %and = and i32 %conv160, 1023
  %idxprom161 = sext i32 %and to i64
  %235 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx162 = getelementptr inbounds i8, i8* %235, i64 %idxprom161
  %236 = load i8, i8* %arrayidx162, align 1, !tbaa !17
  %237 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx163 = getelementptr inbounds i8, i8* %237, i64 0
  store i8 %236, i8* %arrayidx163, align 1, !tbaa !17
  %238 = load float, float* %tmp0, align 4, !tbaa !15
  %239 = load float, float* %tmp7, align 4, !tbaa !15
  %sub164 = fsub float %238, %239
  %conv165 = fptosi float %sub164 to i64
  %add166 = add nsw i64 %conv165, 4
  %shr167 = ashr i64 %add166, 3
  %conv168 = trunc i64 %shr167 to i32
  %and169 = and i32 %conv168, 1023
  %idxprom170 = sext i32 %and169 to i64
  %240 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx171 = getelementptr inbounds i8, i8* %240, i64 %idxprom170
  %241 = load i8, i8* %arrayidx171, align 1, !tbaa !17
  %242 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx172 = getelementptr inbounds i8, i8* %242, i64 7
  store i8 %241, i8* %arrayidx172, align 1, !tbaa !17
  %243 = load float, float* %tmp1, align 4, !tbaa !15
  %244 = load float, float* %tmp6, align 4, !tbaa !15
  %add173 = fadd float %243, %244
  %conv174 = fptosi float %add173 to i64
  %add175 = add nsw i64 %conv174, 4
  %shr176 = ashr i64 %add175, 3
  %conv177 = trunc i64 %shr176 to i32
  %and178 = and i32 %conv177, 1023
  %idxprom179 = sext i32 %and178 to i64
  %245 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx180 = getelementptr inbounds i8, i8* %245, i64 %idxprom179
  %246 = load i8, i8* %arrayidx180, align 1, !tbaa !17
  %247 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx181 = getelementptr inbounds i8, i8* %247, i64 1
  store i8 %246, i8* %arrayidx181, align 1, !tbaa !17
  %248 = load float, float* %tmp1, align 4, !tbaa !15
  %249 = load float, float* %tmp6, align 4, !tbaa !15
  %sub182 = fsub float %248, %249
  %conv183 = fptosi float %sub182 to i64
  %add184 = add nsw i64 %conv183, 4
  %shr185 = ashr i64 %add184, 3
  %conv186 = trunc i64 %shr185 to i32
  %and187 = and i32 %conv186, 1023
  %idxprom188 = sext i32 %and187 to i64
  %250 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx189 = getelementptr inbounds i8, i8* %250, i64 %idxprom188
  %251 = load i8, i8* %arrayidx189, align 1, !tbaa !17
  %252 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx190 = getelementptr inbounds i8, i8* %252, i64 6
  store i8 %251, i8* %arrayidx190, align 1, !tbaa !17
  %253 = load float, float* %tmp2, align 4, !tbaa !15
  %254 = load float, float* %tmp5, align 4, !tbaa !15
  %add191 = fadd float %253, %254
  %conv192 = fptosi float %add191 to i64
  %add193 = add nsw i64 %conv192, 4
  %shr194 = ashr i64 %add193, 3
  %conv195 = trunc i64 %shr194 to i32
  %and196 = and i32 %conv195, 1023
  %idxprom197 = sext i32 %and196 to i64
  %255 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx198 = getelementptr inbounds i8, i8* %255, i64 %idxprom197
  %256 = load i8, i8* %arrayidx198, align 1, !tbaa !17
  %257 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx199 = getelementptr inbounds i8, i8* %257, i64 2
  store i8 %256, i8* %arrayidx199, align 1, !tbaa !17
  %258 = load float, float* %tmp2, align 4, !tbaa !15
  %259 = load float, float* %tmp5, align 4, !tbaa !15
  %sub200 = fsub float %258, %259
  %conv201 = fptosi float %sub200 to i64
  %add202 = add nsw i64 %conv201, 4
  %shr203 = ashr i64 %add202, 3
  %conv204 = trunc i64 %shr203 to i32
  %and205 = and i32 %conv204, 1023
  %idxprom206 = sext i32 %and205 to i64
  %260 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx207 = getelementptr inbounds i8, i8* %260, i64 %idxprom206
  %261 = load i8, i8* %arrayidx207, align 1, !tbaa !17
  %262 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx208 = getelementptr inbounds i8, i8* %262, i64 5
  store i8 %261, i8* %arrayidx208, align 1, !tbaa !17
  %263 = load float, float* %tmp3, align 4, !tbaa !15
  %264 = load float, float* %tmp4, align 4, !tbaa !15
  %add209 = fadd float %263, %264
  %conv210 = fptosi float %add209 to i64
  %add211 = add nsw i64 %conv210, 4
  %shr212 = ashr i64 %add211, 3
  %conv213 = trunc i64 %shr212 to i32
  %and214 = and i32 %conv213, 1023
  %idxprom215 = sext i32 %and214 to i64
  %265 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx216 = getelementptr inbounds i8, i8* %265, i64 %idxprom215
  %266 = load i8, i8* %arrayidx216, align 1, !tbaa !17
  %267 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx217 = getelementptr inbounds i8, i8* %267, i64 4
  store i8 %266, i8* %arrayidx217, align 1, !tbaa !17
  %268 = load float, float* %tmp3, align 4, !tbaa !15
  %269 = load float, float* %tmp4, align 4, !tbaa !15
  %sub218 = fsub float %268, %269
  %conv219 = fptosi float %sub218 to i64
  %add220 = add nsw i64 %conv219, 4
  %shr221 = ashr i64 %add220, 3
  %conv222 = trunc i64 %shr221 to i32
  %and223 = and i32 %conv222, 1023
  %idxprom224 = sext i32 %and223 to i64
  %270 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx225 = getelementptr inbounds i8, i8* %270, i64 %idxprom224
  %271 = load i8, i8* %arrayidx225, align 1, !tbaa !17
  %272 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx226 = getelementptr inbounds i8, i8* %272, i64 3
  store i8 %271, i8* %arrayidx226, align 1, !tbaa !17
  %273 = load float*, float** %wsptr, align 8, !tbaa !2
  %add.ptr227 = getelementptr inbounds float, float* %273, i64 8
  store float* %add.ptr227, float** %wsptr, align 8, !tbaa !2
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.body.112
  %274 = load i32, i32* %ctr, align 4, !tbaa !6
  %inc = add nsw i32 %274, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.109

for.end.229:                                      ; preds = %for.cond.109
  %275 = bitcast [64 x float]* %workspace to i8*
  call void @llvm.lifetime.end(i64 256, i8* %275) #2
  %276 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #2
  %277 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #2
  %278 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #2
  %279 = bitcast float** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #2
  %280 = bitcast float** %quantptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #2
  %281 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #2
  %282 = bitcast float* %z13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #2
  %283 = bitcast float* %z12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #2
  %284 = bitcast float* %z11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #2
  %285 = bitcast float* %z10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #2
  %286 = bitcast float* %z5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #2
  %287 = bitcast float* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #2
  %288 = bitcast float* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #2
  %289 = bitcast float* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #2
  %290 = bitcast float* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #2
  %291 = bitcast float* %tmp7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #2
  %292 = bitcast float* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #2
  %293 = bitcast float* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #2
  %294 = bitcast float* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #2
  %295 = bitcast float* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #2
  %296 = bitcast float* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #2
  %297 = bitcast float* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #2
  %298 = bitcast float* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #2
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
!8 = !{!9, !3, i64 408}
!9 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !4, i64 56, !7, i64 60, !7, i64 64, !10, i64 72, !7, i64 80, !7, i64 84, !4, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !4, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !3, i64 152, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !7, i64 288, !3, i64 296, !7, i64 304, !7, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !7, i64 360, !7, i64 364, !4, i64 368, !11, i64 370, !11, i64 372, !7, i64 376, !4, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !3, i64 408, !7, i64 416, !4, i64 424, !7, i64 456, !7, i64 460, !7, i64 464, !4, i64 468, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!10 = !{!"double", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!13, !3, i64 88}
!13 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!14 = !{!11, !11, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !4, i64 0}
!17 = !{!4, !4, i64 0}
