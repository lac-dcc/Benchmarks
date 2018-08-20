; ModuleID = 'jidctfst.c'
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
define void @jpeg_idct_ifast(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
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
  %z5 = alloca i32, align 4
  %z10 = alloca i32, align 4
  %z11 = alloca i32, align 4
  %z12 = alloca i32, align 4
  %z13 = alloca i32, align 4
  %inptr = alloca i16*, align 8
  %quantptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval145 = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i16* %coef_block, i16** %coef_block.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_col, i32* %output_col.addr, align 4, !tbaa !6
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
  %12 = bitcast i32* %z5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %z10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %z11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %z12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %z13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast i32** %wsptr to i8*
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
  %25 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 256, i8* %25) #2
  %26 = load i16*, i16** %coef_block.addr, align 8, !tbaa !2
  store i16* %26, i16** %inptr, align 8, !tbaa !2
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 20
  %28 = load i8*, i8** %dct_table, align 8, !tbaa !12
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %quantptr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %wsptr, align 8, !tbaa !2
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
  %45 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i16, i16* %46, i64 0
  %47 = load i16, i16* %arrayidx20, align 2, !tbaa !14
  %conv21 = sext i16 %47 to i32
  %48 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i32, i32* %48, i64 0
  %49 = load i32, i32* %arrayidx22, align 4, !tbaa !6
  %mul = mul nsw i32 %conv21, %49
  store i32 %mul, i32* %dcval, align 4, !tbaa !6
  %50 = load i32, i32* %dcval, align 4, !tbaa !6
  %51 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %arrayidx23, align 4, !tbaa !6
  %52 = load i32, i32* %dcval, align 4, !tbaa !6
  %53 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i32, i32* %53, i64 8
  store i32 %52, i32* %arrayidx24, align 4, !tbaa !6
  %54 = load i32, i32* %dcval, align 4, !tbaa !6
  %55 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds i32, i32* %55, i64 16
  store i32 %54, i32* %arrayidx25, align 4, !tbaa !6
  %56 = load i32, i32* %dcval, align 4, !tbaa !6
  %57 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i32, i32* %57, i64 24
  store i32 %56, i32* %arrayidx26, align 4, !tbaa !6
  %58 = load i32, i32* %dcval, align 4, !tbaa !6
  %59 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i32, i32* %59, i64 32
  store i32 %58, i32* %arrayidx27, align 4, !tbaa !6
  %60 = load i32, i32* %dcval, align 4, !tbaa !6
  %61 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds i32, i32* %61, i64 40
  store i32 %60, i32* %arrayidx28, align 4, !tbaa !6
  %62 = load i32, i32* %dcval, align 4, !tbaa !6
  %63 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i32, i32* %63, i64 48
  store i32 %62, i32* %arrayidx29, align 4, !tbaa !6
  %64 = load i32, i32* %dcval, align 4, !tbaa !6
  %65 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i32, i32* %65, i64 56
  store i32 %64, i32* %arrayidx30, align 4, !tbaa !6
  %66 = load i16*, i16** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8, !tbaa !2
  %67 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %incdec.ptr31 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %incdec.ptr31, i32** %quantptr, align 8, !tbaa !2
  %68 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %incdec.ptr32 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %incdec.ptr32, i32** %wsptr, align 8, !tbaa !2
  %69 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  br label %for.inc

if.end:                                           ; preds = %for.body
  %70 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i16, i16* %70, i64 0
  %71 = load i16, i16* %arrayidx33, align 2, !tbaa !14
  %conv34 = sext i16 %71 to i32
  %72 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx35, align 4, !tbaa !6
  %mul36 = mul nsw i32 %conv34, %73
  store i32 %mul36, i32* %tmp0, align 4, !tbaa !6
  %74 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds i16, i16* %74, i64 16
  %75 = load i16, i16* %arrayidx37, align 2, !tbaa !14
  %conv38 = sext i16 %75 to i32
  %76 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds i32, i32* %76, i64 16
  %77 = load i32, i32* %arrayidx39, align 4, !tbaa !6
  %mul40 = mul nsw i32 %conv38, %77
  store i32 %mul40, i32* %tmp1, align 4, !tbaa !6
  %78 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds i16, i16* %78, i64 32
  %79 = load i16, i16* %arrayidx41, align 2, !tbaa !14
  %conv42 = sext i16 %79 to i32
  %80 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx43 = getelementptr inbounds i32, i32* %80, i64 32
  %81 = load i32, i32* %arrayidx43, align 4, !tbaa !6
  %mul44 = mul nsw i32 %conv42, %81
  store i32 %mul44, i32* %tmp2, align 4, !tbaa !6
  %82 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i16, i16* %82, i64 48
  %83 = load i16, i16* %arrayidx45, align 2, !tbaa !14
  %conv46 = sext i16 %83 to i32
  %84 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds i32, i32* %84, i64 48
  %85 = load i32, i32* %arrayidx47, align 4, !tbaa !6
  %mul48 = mul nsw i32 %conv46, %85
  store i32 %mul48, i32* %tmp3, align 4, !tbaa !6
  %86 = load i32, i32* %tmp0, align 4, !tbaa !6
  %87 = load i32, i32* %tmp2, align 4, !tbaa !6
  %add = add nsw i32 %86, %87
  store i32 %add, i32* %tmp10, align 4, !tbaa !6
  %88 = load i32, i32* %tmp0, align 4, !tbaa !6
  %89 = load i32, i32* %tmp2, align 4, !tbaa !6
  %sub = sub nsw i32 %88, %89
  store i32 %sub, i32* %tmp11, align 4, !tbaa !6
  %90 = load i32, i32* %tmp1, align 4, !tbaa !6
  %91 = load i32, i32* %tmp3, align 4, !tbaa !6
  %add49 = add nsw i32 %90, %91
  store i32 %add49, i32* %tmp13, align 4, !tbaa !6
  %92 = load i32, i32* %tmp1, align 4, !tbaa !6
  %93 = load i32, i32* %tmp3, align 4, !tbaa !6
  %sub50 = sub nsw i32 %92, %93
  %conv51 = sext i32 %sub50 to i64
  %mul52 = mul nsw i64 %conv51, 362
  %shr = ashr i64 %mul52, 8
  %conv53 = trunc i64 %shr to i32
  %94 = load i32, i32* %tmp13, align 4, !tbaa !6
  %sub54 = sub nsw i32 %conv53, %94
  store i32 %sub54, i32* %tmp12, align 4, !tbaa !6
  %95 = load i32, i32* %tmp10, align 4, !tbaa !6
  %96 = load i32, i32* %tmp13, align 4, !tbaa !6
  %add55 = add nsw i32 %95, %96
  store i32 %add55, i32* %tmp0, align 4, !tbaa !6
  %97 = load i32, i32* %tmp10, align 4, !tbaa !6
  %98 = load i32, i32* %tmp13, align 4, !tbaa !6
  %sub56 = sub nsw i32 %97, %98
  store i32 %sub56, i32* %tmp3, align 4, !tbaa !6
  %99 = load i32, i32* %tmp11, align 4, !tbaa !6
  %100 = load i32, i32* %tmp12, align 4, !tbaa !6
  %add57 = add nsw i32 %99, %100
  store i32 %add57, i32* %tmp1, align 4, !tbaa !6
  %101 = load i32, i32* %tmp11, align 4, !tbaa !6
  %102 = load i32, i32* %tmp12, align 4, !tbaa !6
  %sub58 = sub nsw i32 %101, %102
  store i32 %sub58, i32* %tmp2, align 4, !tbaa !6
  %103 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx59 = getelementptr inbounds i16, i16* %103, i64 8
  %104 = load i16, i16* %arrayidx59, align 2, !tbaa !14
  %conv60 = sext i16 %104 to i32
  %105 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds i32, i32* %105, i64 8
  %106 = load i32, i32* %arrayidx61, align 4, !tbaa !6
  %mul62 = mul nsw i32 %conv60, %106
  store i32 %mul62, i32* %tmp4, align 4, !tbaa !6
  %107 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds i16, i16* %107, i64 24
  %108 = load i16, i16* %arrayidx63, align 2, !tbaa !14
  %conv64 = sext i16 %108 to i32
  %109 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds i32, i32* %109, i64 24
  %110 = load i32, i32* %arrayidx65, align 4, !tbaa !6
  %mul66 = mul nsw i32 %conv64, %110
  store i32 %mul66, i32* %tmp5, align 4, !tbaa !6
  %111 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx67 = getelementptr inbounds i16, i16* %111, i64 40
  %112 = load i16, i16* %arrayidx67, align 2, !tbaa !14
  %conv68 = sext i16 %112 to i32
  %113 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds i32, i32* %113, i64 40
  %114 = load i32, i32* %arrayidx69, align 4, !tbaa !6
  %mul70 = mul nsw i32 %conv68, %114
  store i32 %mul70, i32* %tmp6, align 4, !tbaa !6
  %115 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds i16, i16* %115, i64 56
  %116 = load i16, i16* %arrayidx71, align 2, !tbaa !14
  %conv72 = sext i16 %116 to i32
  %117 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds i32, i32* %117, i64 56
  %118 = load i32, i32* %arrayidx73, align 4, !tbaa !6
  %mul74 = mul nsw i32 %conv72, %118
  store i32 %mul74, i32* %tmp7, align 4, !tbaa !6
  %119 = load i32, i32* %tmp6, align 4, !tbaa !6
  %120 = load i32, i32* %tmp5, align 4, !tbaa !6
  %add75 = add nsw i32 %119, %120
  store i32 %add75, i32* %z13, align 4, !tbaa !6
  %121 = load i32, i32* %tmp6, align 4, !tbaa !6
  %122 = load i32, i32* %tmp5, align 4, !tbaa !6
  %sub76 = sub nsw i32 %121, %122
  store i32 %sub76, i32* %z10, align 4, !tbaa !6
  %123 = load i32, i32* %tmp4, align 4, !tbaa !6
  %124 = load i32, i32* %tmp7, align 4, !tbaa !6
  %add77 = add nsw i32 %123, %124
  store i32 %add77, i32* %z11, align 4, !tbaa !6
  %125 = load i32, i32* %tmp4, align 4, !tbaa !6
  %126 = load i32, i32* %tmp7, align 4, !tbaa !6
  %sub78 = sub nsw i32 %125, %126
  store i32 %sub78, i32* %z12, align 4, !tbaa !6
  %127 = load i32, i32* %z11, align 4, !tbaa !6
  %128 = load i32, i32* %z13, align 4, !tbaa !6
  %add79 = add nsw i32 %127, %128
  store i32 %add79, i32* %tmp7, align 4, !tbaa !6
  %129 = load i32, i32* %z11, align 4, !tbaa !6
  %130 = load i32, i32* %z13, align 4, !tbaa !6
  %sub80 = sub nsw i32 %129, %130
  %conv81 = sext i32 %sub80 to i64
  %mul82 = mul nsw i64 %conv81, 362
  %shr83 = ashr i64 %mul82, 8
  %conv84 = trunc i64 %shr83 to i32
  store i32 %conv84, i32* %tmp11, align 4, !tbaa !6
  %131 = load i32, i32* %z10, align 4, !tbaa !6
  %132 = load i32, i32* %z12, align 4, !tbaa !6
  %add85 = add nsw i32 %131, %132
  %conv86 = sext i32 %add85 to i64
  %mul87 = mul nsw i64 %conv86, 473
  %shr88 = ashr i64 %mul87, 8
  %conv89 = trunc i64 %shr88 to i32
  store i32 %conv89, i32* %z5, align 4, !tbaa !6
  %133 = load i32, i32* %z12, align 4, !tbaa !6
  %conv90 = sext i32 %133 to i64
  %mul91 = mul nsw i64 %conv90, 277
  %shr92 = ashr i64 %mul91, 8
  %conv93 = trunc i64 %shr92 to i32
  %134 = load i32, i32* %z5, align 4, !tbaa !6
  %sub94 = sub nsw i32 %conv93, %134
  store i32 %sub94, i32* %tmp10, align 4, !tbaa !6
  %135 = load i32, i32* %z10, align 4, !tbaa !6
  %conv95 = sext i32 %135 to i64
  %mul96 = mul nsw i64 %conv95, -669
  %shr97 = ashr i64 %mul96, 8
  %conv98 = trunc i64 %shr97 to i32
  %136 = load i32, i32* %z5, align 4, !tbaa !6
  %add99 = add nsw i32 %conv98, %136
  store i32 %add99, i32* %tmp12, align 4, !tbaa !6
  %137 = load i32, i32* %tmp12, align 4, !tbaa !6
  %138 = load i32, i32* %tmp7, align 4, !tbaa !6
  %sub100 = sub nsw i32 %137, %138
  store i32 %sub100, i32* %tmp6, align 4, !tbaa !6
  %139 = load i32, i32* %tmp11, align 4, !tbaa !6
  %140 = load i32, i32* %tmp6, align 4, !tbaa !6
  %sub101 = sub nsw i32 %139, %140
  store i32 %sub101, i32* %tmp5, align 4, !tbaa !6
  %141 = load i32, i32* %tmp10, align 4, !tbaa !6
  %142 = load i32, i32* %tmp5, align 4, !tbaa !6
  %add102 = add nsw i32 %141, %142
  store i32 %add102, i32* %tmp4, align 4, !tbaa !6
  %143 = load i32, i32* %tmp0, align 4, !tbaa !6
  %144 = load i32, i32* %tmp7, align 4, !tbaa !6
  %add103 = add nsw i32 %143, %144
  %145 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx104 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %add103, i32* %arrayidx104, align 4, !tbaa !6
  %146 = load i32, i32* %tmp0, align 4, !tbaa !6
  %147 = load i32, i32* %tmp7, align 4, !tbaa !6
  %sub105 = sub nsw i32 %146, %147
  %148 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx106 = getelementptr inbounds i32, i32* %148, i64 56
  store i32 %sub105, i32* %arrayidx106, align 4, !tbaa !6
  %149 = load i32, i32* %tmp1, align 4, !tbaa !6
  %150 = load i32, i32* %tmp6, align 4, !tbaa !6
  %add107 = add nsw i32 %149, %150
  %151 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx108 = getelementptr inbounds i32, i32* %151, i64 8
  store i32 %add107, i32* %arrayidx108, align 4, !tbaa !6
  %152 = load i32, i32* %tmp1, align 4, !tbaa !6
  %153 = load i32, i32* %tmp6, align 4, !tbaa !6
  %sub109 = sub nsw i32 %152, %153
  %154 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx110 = getelementptr inbounds i32, i32* %154, i64 48
  store i32 %sub109, i32* %arrayidx110, align 4, !tbaa !6
  %155 = load i32, i32* %tmp2, align 4, !tbaa !6
  %156 = load i32, i32* %tmp5, align 4, !tbaa !6
  %add111 = add nsw i32 %155, %156
  %157 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds i32, i32* %157, i64 16
  store i32 %add111, i32* %arrayidx112, align 4, !tbaa !6
  %158 = load i32, i32* %tmp2, align 4, !tbaa !6
  %159 = load i32, i32* %tmp5, align 4, !tbaa !6
  %sub113 = sub nsw i32 %158, %159
  %160 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx114 = getelementptr inbounds i32, i32* %160, i64 40
  store i32 %sub113, i32* %arrayidx114, align 4, !tbaa !6
  %161 = load i32, i32* %tmp3, align 4, !tbaa !6
  %162 = load i32, i32* %tmp4, align 4, !tbaa !6
  %add115 = add nsw i32 %161, %162
  %163 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx116 = getelementptr inbounds i32, i32* %163, i64 32
  store i32 %add115, i32* %arrayidx116, align 4, !tbaa !6
  %164 = load i32, i32* %tmp3, align 4, !tbaa !6
  %165 = load i32, i32* %tmp4, align 4, !tbaa !6
  %sub117 = sub nsw i32 %164, %165
  %166 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx118 = getelementptr inbounds i32, i32* %166, i64 24
  store i32 %sub117, i32* %arrayidx118, align 4, !tbaa !6
  %167 = load i16*, i16** %inptr, align 8, !tbaa !2
  %incdec.ptr119 = getelementptr inbounds i16, i16* %167, i32 1
  store i16* %incdec.ptr119, i16** %inptr, align 8, !tbaa !2
  %168 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %incdec.ptr120 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %incdec.ptr120, i32** %quantptr, align 8, !tbaa !2
  %169 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %incdec.ptr121 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %incdec.ptr121, i32** %wsptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %170 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec = add nsw i32 %170, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay122 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay122, i32** %wsptr, align 8, !tbaa !2
  store i32 0, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.266, %for.end
  %171 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp124 = icmp slt i32 %171, 8
  br i1 %cmp124, label %for.body.126, label %for.end.267

for.body.126:                                     ; preds = %for.cond.123
  %172 = load i32, i32* %ctr, align 4, !tbaa !6
  %idxprom = sext i32 %172 to i64
  %173 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx127 = getelementptr inbounds i8*, i8** %173, i64 %idxprom
  %174 = load i8*, i8** %arrayidx127, align 8, !tbaa !2
  %175 = load i32, i32* %output_col.addr, align 4, !tbaa !6
  %idx.ext = zext i32 %175 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %174, i64 %idx.ext
  store i8* %add.ptr128, i8** %outptr, align 8, !tbaa !2
  %176 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx129 = getelementptr inbounds i32, i32* %176, i64 1
  %177 = load i32, i32* %arrayidx129, align 4, !tbaa !6
  %178 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx130 = getelementptr inbounds i32, i32* %178, i64 2
  %179 = load i32, i32* %arrayidx130, align 4, !tbaa !6
  %or131 = or i32 %177, %179
  %180 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds i32, i32* %180, i64 3
  %181 = load i32, i32* %arrayidx132, align 4, !tbaa !6
  %or133 = or i32 %or131, %181
  %182 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx134 = getelementptr inbounds i32, i32* %182, i64 4
  %183 = load i32, i32* %arrayidx134, align 4, !tbaa !6
  %or135 = or i32 %or133, %183
  %184 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx136 = getelementptr inbounds i32, i32* %184, i64 5
  %185 = load i32, i32* %arrayidx136, align 4, !tbaa !6
  %or137 = or i32 %or135, %185
  %186 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx138 = getelementptr inbounds i32, i32* %186, i64 6
  %187 = load i32, i32* %arrayidx138, align 4, !tbaa !6
  %or139 = or i32 %or137, %187
  %188 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx140 = getelementptr inbounds i32, i32* %188, i64 7
  %189 = load i32, i32* %arrayidx140, align 4, !tbaa !6
  %or141 = or i32 %or139, %189
  %cmp142 = icmp eq i32 %or141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.159

if.then.144:                                      ; preds = %for.body.126
  call void @llvm.lifetime.start(i64 1, i8* %dcval145) #2
  %190 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx146 = getelementptr inbounds i32, i32* %190, i64 0
  %191 = load i32, i32* %arrayidx146, align 4, !tbaa !6
  %shr147 = ashr i32 %191, 5
  %and = and i32 %shr147, 1023
  %idxprom148 = sext i32 %and to i64
  %192 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx149 = getelementptr inbounds i8, i8* %192, i64 %idxprom148
  %193 = load i8, i8* %arrayidx149, align 1, !tbaa !15
  store i8 %193, i8* %dcval145, align 1, !tbaa !15
  %194 = load i8, i8* %dcval145, align 1, !tbaa !15
  %195 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx150 = getelementptr inbounds i8, i8* %195, i64 0
  store i8 %194, i8* %arrayidx150, align 1, !tbaa !15
  %196 = load i8, i8* %dcval145, align 1, !tbaa !15
  %197 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx151 = getelementptr inbounds i8, i8* %197, i64 1
  store i8 %196, i8* %arrayidx151, align 1, !tbaa !15
  %198 = load i8, i8* %dcval145, align 1, !tbaa !15
  %199 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx152 = getelementptr inbounds i8, i8* %199, i64 2
  store i8 %198, i8* %arrayidx152, align 1, !tbaa !15
  %200 = load i8, i8* %dcval145, align 1, !tbaa !15
  %201 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx153 = getelementptr inbounds i8, i8* %201, i64 3
  store i8 %200, i8* %arrayidx153, align 1, !tbaa !15
  %202 = load i8, i8* %dcval145, align 1, !tbaa !15
  %203 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx154 = getelementptr inbounds i8, i8* %203, i64 4
  store i8 %202, i8* %arrayidx154, align 1, !tbaa !15
  %204 = load i8, i8* %dcval145, align 1, !tbaa !15
  %205 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx155 = getelementptr inbounds i8, i8* %205, i64 5
  store i8 %204, i8* %arrayidx155, align 1, !tbaa !15
  %206 = load i8, i8* %dcval145, align 1, !tbaa !15
  %207 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx156 = getelementptr inbounds i8, i8* %207, i64 6
  store i8 %206, i8* %arrayidx156, align 1, !tbaa !15
  %208 = load i8, i8* %dcval145, align 1, !tbaa !15
  %209 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx157 = getelementptr inbounds i8, i8* %209, i64 7
  store i8 %208, i8* %arrayidx157, align 1, !tbaa !15
  %210 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %add.ptr158 = getelementptr inbounds i32, i32* %210, i64 8
  store i32* %add.ptr158, i32** %wsptr, align 8, !tbaa !2
  call void @llvm.lifetime.end(i64 1, i8* %dcval145) #2
  br label %for.inc.266

if.end.159:                                       ; preds = %for.body.126
  %211 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx160 = getelementptr inbounds i32, i32* %211, i64 0
  %212 = load i32, i32* %arrayidx160, align 4, !tbaa !6
  %213 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx161 = getelementptr inbounds i32, i32* %213, i64 4
  %214 = load i32, i32* %arrayidx161, align 4, !tbaa !6
  %add162 = add nsw i32 %212, %214
  store i32 %add162, i32* %tmp10, align 4, !tbaa !6
  %215 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx163 = getelementptr inbounds i32, i32* %215, i64 0
  %216 = load i32, i32* %arrayidx163, align 4, !tbaa !6
  %217 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx164 = getelementptr inbounds i32, i32* %217, i64 4
  %218 = load i32, i32* %arrayidx164, align 4, !tbaa !6
  %sub165 = sub nsw i32 %216, %218
  store i32 %sub165, i32* %tmp11, align 4, !tbaa !6
  %219 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx166 = getelementptr inbounds i32, i32* %219, i64 2
  %220 = load i32, i32* %arrayidx166, align 4, !tbaa !6
  %221 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx167 = getelementptr inbounds i32, i32* %221, i64 6
  %222 = load i32, i32* %arrayidx167, align 4, !tbaa !6
  %add168 = add nsw i32 %220, %222
  store i32 %add168, i32* %tmp13, align 4, !tbaa !6
  %223 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx169 = getelementptr inbounds i32, i32* %223, i64 2
  %224 = load i32, i32* %arrayidx169, align 4, !tbaa !6
  %225 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx170 = getelementptr inbounds i32, i32* %225, i64 6
  %226 = load i32, i32* %arrayidx170, align 4, !tbaa !6
  %sub171 = sub nsw i32 %224, %226
  %conv172 = sext i32 %sub171 to i64
  %mul173 = mul nsw i64 %conv172, 362
  %shr174 = ashr i64 %mul173, 8
  %conv175 = trunc i64 %shr174 to i32
  %227 = load i32, i32* %tmp13, align 4, !tbaa !6
  %sub176 = sub nsw i32 %conv175, %227
  store i32 %sub176, i32* %tmp12, align 4, !tbaa !6
  %228 = load i32, i32* %tmp10, align 4, !tbaa !6
  %229 = load i32, i32* %tmp13, align 4, !tbaa !6
  %add177 = add nsw i32 %228, %229
  store i32 %add177, i32* %tmp0, align 4, !tbaa !6
  %230 = load i32, i32* %tmp10, align 4, !tbaa !6
  %231 = load i32, i32* %tmp13, align 4, !tbaa !6
  %sub178 = sub nsw i32 %230, %231
  store i32 %sub178, i32* %tmp3, align 4, !tbaa !6
  %232 = load i32, i32* %tmp11, align 4, !tbaa !6
  %233 = load i32, i32* %tmp12, align 4, !tbaa !6
  %add179 = add nsw i32 %232, %233
  store i32 %add179, i32* %tmp1, align 4, !tbaa !6
  %234 = load i32, i32* %tmp11, align 4, !tbaa !6
  %235 = load i32, i32* %tmp12, align 4, !tbaa !6
  %sub180 = sub nsw i32 %234, %235
  store i32 %sub180, i32* %tmp2, align 4, !tbaa !6
  %236 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx181 = getelementptr inbounds i32, i32* %236, i64 5
  %237 = load i32, i32* %arrayidx181, align 4, !tbaa !6
  %238 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx182 = getelementptr inbounds i32, i32* %238, i64 3
  %239 = load i32, i32* %arrayidx182, align 4, !tbaa !6
  %add183 = add nsw i32 %237, %239
  store i32 %add183, i32* %z13, align 4, !tbaa !6
  %240 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx184 = getelementptr inbounds i32, i32* %240, i64 5
  %241 = load i32, i32* %arrayidx184, align 4, !tbaa !6
  %242 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx185 = getelementptr inbounds i32, i32* %242, i64 3
  %243 = load i32, i32* %arrayidx185, align 4, !tbaa !6
  %sub186 = sub nsw i32 %241, %243
  store i32 %sub186, i32* %z10, align 4, !tbaa !6
  %244 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx187 = getelementptr inbounds i32, i32* %244, i64 1
  %245 = load i32, i32* %arrayidx187, align 4, !tbaa !6
  %246 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx188 = getelementptr inbounds i32, i32* %246, i64 7
  %247 = load i32, i32* %arrayidx188, align 4, !tbaa !6
  %add189 = add nsw i32 %245, %247
  store i32 %add189, i32* %z11, align 4, !tbaa !6
  %248 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx190 = getelementptr inbounds i32, i32* %248, i64 1
  %249 = load i32, i32* %arrayidx190, align 4, !tbaa !6
  %250 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx191 = getelementptr inbounds i32, i32* %250, i64 7
  %251 = load i32, i32* %arrayidx191, align 4, !tbaa !6
  %sub192 = sub nsw i32 %249, %251
  store i32 %sub192, i32* %z12, align 4, !tbaa !6
  %252 = load i32, i32* %z11, align 4, !tbaa !6
  %253 = load i32, i32* %z13, align 4, !tbaa !6
  %add193 = add nsw i32 %252, %253
  store i32 %add193, i32* %tmp7, align 4, !tbaa !6
  %254 = load i32, i32* %z11, align 4, !tbaa !6
  %255 = load i32, i32* %z13, align 4, !tbaa !6
  %sub194 = sub nsw i32 %254, %255
  %conv195 = sext i32 %sub194 to i64
  %mul196 = mul nsw i64 %conv195, 362
  %shr197 = ashr i64 %mul196, 8
  %conv198 = trunc i64 %shr197 to i32
  store i32 %conv198, i32* %tmp11, align 4, !tbaa !6
  %256 = load i32, i32* %z10, align 4, !tbaa !6
  %257 = load i32, i32* %z12, align 4, !tbaa !6
  %add199 = add nsw i32 %256, %257
  %conv200 = sext i32 %add199 to i64
  %mul201 = mul nsw i64 %conv200, 473
  %shr202 = ashr i64 %mul201, 8
  %conv203 = trunc i64 %shr202 to i32
  store i32 %conv203, i32* %z5, align 4, !tbaa !6
  %258 = load i32, i32* %z12, align 4, !tbaa !6
  %conv204 = sext i32 %258 to i64
  %mul205 = mul nsw i64 %conv204, 277
  %shr206 = ashr i64 %mul205, 8
  %conv207 = trunc i64 %shr206 to i32
  %259 = load i32, i32* %z5, align 4, !tbaa !6
  %sub208 = sub nsw i32 %conv207, %259
  store i32 %sub208, i32* %tmp10, align 4, !tbaa !6
  %260 = load i32, i32* %z10, align 4, !tbaa !6
  %conv209 = sext i32 %260 to i64
  %mul210 = mul nsw i64 %conv209, -669
  %shr211 = ashr i64 %mul210, 8
  %conv212 = trunc i64 %shr211 to i32
  %261 = load i32, i32* %z5, align 4, !tbaa !6
  %add213 = add nsw i32 %conv212, %261
  store i32 %add213, i32* %tmp12, align 4, !tbaa !6
  %262 = load i32, i32* %tmp12, align 4, !tbaa !6
  %263 = load i32, i32* %tmp7, align 4, !tbaa !6
  %sub214 = sub nsw i32 %262, %263
  store i32 %sub214, i32* %tmp6, align 4, !tbaa !6
  %264 = load i32, i32* %tmp11, align 4, !tbaa !6
  %265 = load i32, i32* %tmp6, align 4, !tbaa !6
  %sub215 = sub nsw i32 %264, %265
  store i32 %sub215, i32* %tmp5, align 4, !tbaa !6
  %266 = load i32, i32* %tmp10, align 4, !tbaa !6
  %267 = load i32, i32* %tmp5, align 4, !tbaa !6
  %add216 = add nsw i32 %266, %267
  store i32 %add216, i32* %tmp4, align 4, !tbaa !6
  %268 = load i32, i32* %tmp0, align 4, !tbaa !6
  %269 = load i32, i32* %tmp7, align 4, !tbaa !6
  %add217 = add nsw i32 %268, %269
  %shr218 = ashr i32 %add217, 5
  %and219 = and i32 %shr218, 1023
  %idxprom220 = sext i32 %and219 to i64
  %270 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx221 = getelementptr inbounds i8, i8* %270, i64 %idxprom220
  %271 = load i8, i8* %arrayidx221, align 1, !tbaa !15
  %272 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx222 = getelementptr inbounds i8, i8* %272, i64 0
  store i8 %271, i8* %arrayidx222, align 1, !tbaa !15
  %273 = load i32, i32* %tmp0, align 4, !tbaa !6
  %274 = load i32, i32* %tmp7, align 4, !tbaa !6
  %sub223 = sub nsw i32 %273, %274
  %shr224 = ashr i32 %sub223, 5
  %and225 = and i32 %shr224, 1023
  %idxprom226 = sext i32 %and225 to i64
  %275 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx227 = getelementptr inbounds i8, i8* %275, i64 %idxprom226
  %276 = load i8, i8* %arrayidx227, align 1, !tbaa !15
  %277 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx228 = getelementptr inbounds i8, i8* %277, i64 7
  store i8 %276, i8* %arrayidx228, align 1, !tbaa !15
  %278 = load i32, i32* %tmp1, align 4, !tbaa !6
  %279 = load i32, i32* %tmp6, align 4, !tbaa !6
  %add229 = add nsw i32 %278, %279
  %shr230 = ashr i32 %add229, 5
  %and231 = and i32 %shr230, 1023
  %idxprom232 = sext i32 %and231 to i64
  %280 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx233 = getelementptr inbounds i8, i8* %280, i64 %idxprom232
  %281 = load i8, i8* %arrayidx233, align 1, !tbaa !15
  %282 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx234 = getelementptr inbounds i8, i8* %282, i64 1
  store i8 %281, i8* %arrayidx234, align 1, !tbaa !15
  %283 = load i32, i32* %tmp1, align 4, !tbaa !6
  %284 = load i32, i32* %tmp6, align 4, !tbaa !6
  %sub235 = sub nsw i32 %283, %284
  %shr236 = ashr i32 %sub235, 5
  %and237 = and i32 %shr236, 1023
  %idxprom238 = sext i32 %and237 to i64
  %285 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx239 = getelementptr inbounds i8, i8* %285, i64 %idxprom238
  %286 = load i8, i8* %arrayidx239, align 1, !tbaa !15
  %287 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx240 = getelementptr inbounds i8, i8* %287, i64 6
  store i8 %286, i8* %arrayidx240, align 1, !tbaa !15
  %288 = load i32, i32* %tmp2, align 4, !tbaa !6
  %289 = load i32, i32* %tmp5, align 4, !tbaa !6
  %add241 = add nsw i32 %288, %289
  %shr242 = ashr i32 %add241, 5
  %and243 = and i32 %shr242, 1023
  %idxprom244 = sext i32 %and243 to i64
  %290 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx245 = getelementptr inbounds i8, i8* %290, i64 %idxprom244
  %291 = load i8, i8* %arrayidx245, align 1, !tbaa !15
  %292 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx246 = getelementptr inbounds i8, i8* %292, i64 2
  store i8 %291, i8* %arrayidx246, align 1, !tbaa !15
  %293 = load i32, i32* %tmp2, align 4, !tbaa !6
  %294 = load i32, i32* %tmp5, align 4, !tbaa !6
  %sub247 = sub nsw i32 %293, %294
  %shr248 = ashr i32 %sub247, 5
  %and249 = and i32 %shr248, 1023
  %idxprom250 = sext i32 %and249 to i64
  %295 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx251 = getelementptr inbounds i8, i8* %295, i64 %idxprom250
  %296 = load i8, i8* %arrayidx251, align 1, !tbaa !15
  %297 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx252 = getelementptr inbounds i8, i8* %297, i64 5
  store i8 %296, i8* %arrayidx252, align 1, !tbaa !15
  %298 = load i32, i32* %tmp3, align 4, !tbaa !6
  %299 = load i32, i32* %tmp4, align 4, !tbaa !6
  %add253 = add nsw i32 %298, %299
  %shr254 = ashr i32 %add253, 5
  %and255 = and i32 %shr254, 1023
  %idxprom256 = sext i32 %and255 to i64
  %300 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx257 = getelementptr inbounds i8, i8* %300, i64 %idxprom256
  %301 = load i8, i8* %arrayidx257, align 1, !tbaa !15
  %302 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx258 = getelementptr inbounds i8, i8* %302, i64 4
  store i8 %301, i8* %arrayidx258, align 1, !tbaa !15
  %303 = load i32, i32* %tmp3, align 4, !tbaa !6
  %304 = load i32, i32* %tmp4, align 4, !tbaa !6
  %sub259 = sub nsw i32 %303, %304
  %shr260 = ashr i32 %sub259, 5
  %and261 = and i32 %shr260, 1023
  %idxprom262 = sext i32 %and261 to i64
  %305 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx263 = getelementptr inbounds i8, i8* %305, i64 %idxprom262
  %306 = load i8, i8* %arrayidx263, align 1, !tbaa !15
  %307 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx264 = getelementptr inbounds i8, i8* %307, i64 3
  store i8 %306, i8* %arrayidx264, align 1, !tbaa !15
  %308 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %add.ptr265 = getelementptr inbounds i32, i32* %308, i64 8
  store i32* %add.ptr265, i32** %wsptr, align 8, !tbaa !2
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.159, %if.then.144
  %309 = load i32, i32* %ctr, align 4, !tbaa !6
  %inc = add nsw i32 %309, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.123

for.end.267:                                      ; preds = %for.cond.123
  %310 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 256, i8* %310) #2
  %311 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #2
  %312 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #2
  %313 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #2
  %314 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #2
  %315 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #2
  %316 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #2
  %317 = bitcast i32* %z13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #2
  %318 = bitcast i32* %z12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #2
  %319 = bitcast i32* %z11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #2
  %320 = bitcast i32* %z10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #2
  %321 = bitcast i32* %z5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #2
  %322 = bitcast i32* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #2
  %323 = bitcast i32* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #2
  %324 = bitcast i32* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #2
  %325 = bitcast i32* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #2
  %326 = bitcast i32* %tmp7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #2
  %327 = bitcast i32* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #2
  %328 = bitcast i32* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #2
  %329 = bitcast i32* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #2
  %330 = bitcast i32* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #2
  %331 = bitcast i32* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #2
  %332 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #2
  %333 = bitcast i32* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #2
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
!15 = !{!4, !4, i64 0}
