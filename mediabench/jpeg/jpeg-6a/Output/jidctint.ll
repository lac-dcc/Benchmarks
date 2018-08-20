; ModuleID = 'jidctint.c'
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
define void @jpeg_idct_islow(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %z4 = alloca i64, align 8
  %z5 = alloca i64, align 8
  %inptr = alloca i16*, align 8
  %quantptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval174 = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i16* %coef_block, i16** %coef_block.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_col, i32* %output_col.addr, align 4, !tbaa !6
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i64* %z4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i64* %z5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 61
  %19 = load i8*, i8** %sample_range_limit, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 128
  store i8* %add.ptr, i8** %range_limit, align 8, !tbaa !2
  %20 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 256, i8* %21) #2
  %22 = load i16*, i16** %coef_block.addr, align 8, !tbaa !2
  store i16* %22, i16** %inptr, align 8, !tbaa !2
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 20
  %24 = load i8*, i8** %dct_table, align 8, !tbaa !12
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %quantptr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %wsptr, align 8, !tbaa !2
  store i32 8, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %26 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp = icmp sgt i32 %26, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 8
  %28 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv = sext i16 %28 to i32
  %29 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i16, i16* %29, i64 16
  %30 = load i16, i16* %arrayidx1, align 2, !tbaa !14
  %conv2 = sext i16 %30 to i32
  %or = or i32 %conv, %conv2
  %31 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i16, i16* %31, i64 24
  %32 = load i16, i16* %arrayidx3, align 2, !tbaa !14
  %conv4 = sext i16 %32 to i32
  %or5 = or i32 %or, %conv4
  %33 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i16, i16* %33, i64 32
  %34 = load i16, i16* %arrayidx6, align 2, !tbaa !14
  %conv7 = sext i16 %34 to i32
  %or8 = or i32 %or5, %conv7
  %35 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i16, i16* %35, i64 40
  %36 = load i16, i16* %arrayidx9, align 2, !tbaa !14
  %conv10 = sext i16 %36 to i32
  %or11 = or i32 %or8, %conv10
  %37 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i16, i16* %37, i64 48
  %38 = load i16, i16* %arrayidx12, align 2, !tbaa !14
  %conv13 = sext i16 %38 to i32
  %or14 = or i32 %or11, %conv13
  %39 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i16, i16* %39, i64 56
  %40 = load i16, i16* %arrayidx15, align 2, !tbaa !14
  %conv16 = sext i16 %40 to i32
  %or17 = or i32 %or14, %conv16
  %cmp18 = icmp eq i32 %or17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %41 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i16, i16* %42, i64 0
  %43 = load i16, i16* %arrayidx20, align 2, !tbaa !14
  %conv21 = sext i16 %43 to i32
  %44 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i32, i32* %44, i64 0
  %45 = load i32, i32* %arrayidx22, align 4, !tbaa !6
  %mul = mul nsw i32 %conv21, %45
  %shl = shl i32 %mul, 2
  store i32 %shl, i32* %dcval, align 4, !tbaa !6
  %46 = load i32, i32* %dcval, align 4, !tbaa !6
  %47 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %arrayidx23, align 4, !tbaa !6
  %48 = load i32, i32* %dcval, align 4, !tbaa !6
  %49 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i32, i32* %49, i64 8
  store i32 %48, i32* %arrayidx24, align 4, !tbaa !6
  %50 = load i32, i32* %dcval, align 4, !tbaa !6
  %51 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds i32, i32* %51, i64 16
  store i32 %50, i32* %arrayidx25, align 4, !tbaa !6
  %52 = load i32, i32* %dcval, align 4, !tbaa !6
  %53 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i32, i32* %53, i64 24
  store i32 %52, i32* %arrayidx26, align 4, !tbaa !6
  %54 = load i32, i32* %dcval, align 4, !tbaa !6
  %55 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i32, i32* %55, i64 32
  store i32 %54, i32* %arrayidx27, align 4, !tbaa !6
  %56 = load i32, i32* %dcval, align 4, !tbaa !6
  %57 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds i32, i32* %57, i64 40
  store i32 %56, i32* %arrayidx28, align 4, !tbaa !6
  %58 = load i32, i32* %dcval, align 4, !tbaa !6
  %59 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i32, i32* %59, i64 48
  store i32 %58, i32* %arrayidx29, align 4, !tbaa !6
  %60 = load i32, i32* %dcval, align 4, !tbaa !6
  %61 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i32, i32* %61, i64 56
  store i32 %60, i32* %arrayidx30, align 4, !tbaa !6
  %62 = load i16*, i16** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %62, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8, !tbaa !2
  %63 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %incdec.ptr31 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %incdec.ptr31, i32** %quantptr, align 8, !tbaa !2
  %64 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %incdec.ptr32 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %incdec.ptr32, i32** %wsptr, align 8, !tbaa !2
  %65 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  br label %for.inc

if.end:                                           ; preds = %for.body
  %66 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i16, i16* %66, i64 16
  %67 = load i16, i16* %arrayidx33, align 2, !tbaa !14
  %conv34 = sext i16 %67 to i32
  %68 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i32, i32* %68, i64 16
  %69 = load i32, i32* %arrayidx35, align 4, !tbaa !6
  %mul36 = mul nsw i32 %conv34, %69
  %conv37 = sext i32 %mul36 to i64
  store i64 %conv37, i64* %z2, align 8, !tbaa !15
  %70 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i16, i16* %70, i64 48
  %71 = load i16, i16* %arrayidx38, align 2, !tbaa !14
  %conv39 = sext i16 %71 to i32
  %72 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i32, i32* %72, i64 48
  %73 = load i32, i32* %arrayidx40, align 4, !tbaa !6
  %mul41 = mul nsw i32 %conv39, %73
  %conv42 = sext i32 %mul41 to i64
  store i64 %conv42, i64* %z3, align 8, !tbaa !15
  %74 = load i64, i64* %z2, align 8, !tbaa !15
  %75 = load i64, i64* %z3, align 8, !tbaa !15
  %add = add nsw i64 %74, %75
  %mul43 = mul nsw i64 %add, 4433
  store i64 %mul43, i64* %z1, align 8, !tbaa !15
  %76 = load i64, i64* %z1, align 8, !tbaa !15
  %77 = load i64, i64* %z3, align 8, !tbaa !15
  %mul44 = mul nsw i64 %77, -15137
  %add45 = add nsw i64 %76, %mul44
  store i64 %add45, i64* %tmp2, align 8, !tbaa !15
  %78 = load i64, i64* %z1, align 8, !tbaa !15
  %79 = load i64, i64* %z2, align 8, !tbaa !15
  %mul46 = mul nsw i64 %79, 6270
  %add47 = add nsw i64 %78, %mul46
  store i64 %add47, i64* %tmp3, align 8, !tbaa !15
  %80 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds i16, i16* %80, i64 0
  %81 = load i16, i16* %arrayidx48, align 2, !tbaa !14
  %conv49 = sext i16 %81 to i32
  %82 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds i32, i32* %82, i64 0
  %83 = load i32, i32* %arrayidx50, align 4, !tbaa !6
  %mul51 = mul nsw i32 %conv49, %83
  %conv52 = sext i32 %mul51 to i64
  store i64 %conv52, i64* %z2, align 8, !tbaa !15
  %84 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds i16, i16* %84, i64 32
  %85 = load i16, i16* %arrayidx53, align 2, !tbaa !14
  %conv54 = sext i16 %85 to i32
  %86 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx55 = getelementptr inbounds i32, i32* %86, i64 32
  %87 = load i32, i32* %arrayidx55, align 4, !tbaa !6
  %mul56 = mul nsw i32 %conv54, %87
  %conv57 = sext i32 %mul56 to i64
  store i64 %conv57, i64* %z3, align 8, !tbaa !15
  %88 = load i64, i64* %z2, align 8, !tbaa !15
  %89 = load i64, i64* %z3, align 8, !tbaa !15
  %add58 = add nsw i64 %88, %89
  %shl59 = shl i64 %add58, 13
  store i64 %shl59, i64* %tmp0, align 8, !tbaa !15
  %90 = load i64, i64* %z2, align 8, !tbaa !15
  %91 = load i64, i64* %z3, align 8, !tbaa !15
  %sub = sub nsw i64 %90, %91
  %shl60 = shl i64 %sub, 13
  store i64 %shl60, i64* %tmp1, align 8, !tbaa !15
  %92 = load i64, i64* %tmp0, align 8, !tbaa !15
  %93 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add61 = add nsw i64 %92, %93
  store i64 %add61, i64* %tmp10, align 8, !tbaa !15
  %94 = load i64, i64* %tmp0, align 8, !tbaa !15
  %95 = load i64, i64* %tmp3, align 8, !tbaa !15
  %sub62 = sub nsw i64 %94, %95
  store i64 %sub62, i64* %tmp13, align 8, !tbaa !15
  %96 = load i64, i64* %tmp1, align 8, !tbaa !15
  %97 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add63 = add nsw i64 %96, %97
  store i64 %add63, i64* %tmp11, align 8, !tbaa !15
  %98 = load i64, i64* %tmp1, align 8, !tbaa !15
  %99 = load i64, i64* %tmp2, align 8, !tbaa !15
  %sub64 = sub nsw i64 %98, %99
  store i64 %sub64, i64* %tmp12, align 8, !tbaa !15
  %100 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds i16, i16* %100, i64 56
  %101 = load i16, i16* %arrayidx65, align 2, !tbaa !14
  %conv66 = sext i16 %101 to i32
  %102 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx67 = getelementptr inbounds i32, i32* %102, i64 56
  %103 = load i32, i32* %arrayidx67, align 4, !tbaa !6
  %mul68 = mul nsw i32 %conv66, %103
  %conv69 = sext i32 %mul68 to i64
  store i64 %conv69, i64* %tmp0, align 8, !tbaa !15
  %104 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx70 = getelementptr inbounds i16, i16* %104, i64 40
  %105 = load i16, i16* %arrayidx70, align 2, !tbaa !14
  %conv71 = sext i16 %105 to i32
  %106 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds i32, i32* %106, i64 40
  %107 = load i32, i32* %arrayidx72, align 4, !tbaa !6
  %mul73 = mul nsw i32 %conv71, %107
  %conv74 = sext i32 %mul73 to i64
  store i64 %conv74, i64* %tmp1, align 8, !tbaa !15
  %108 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx75 = getelementptr inbounds i16, i16* %108, i64 24
  %109 = load i16, i16* %arrayidx75, align 2, !tbaa !14
  %conv76 = sext i16 %109 to i32
  %110 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds i32, i32* %110, i64 24
  %111 = load i32, i32* %arrayidx77, align 4, !tbaa !6
  %mul78 = mul nsw i32 %conv76, %111
  %conv79 = sext i32 %mul78 to i64
  store i64 %conv79, i64* %tmp2, align 8, !tbaa !15
  %112 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds i16, i16* %112, i64 8
  %113 = load i16, i16* %arrayidx80, align 2, !tbaa !14
  %conv81 = sext i16 %113 to i32
  %114 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx82 = getelementptr inbounds i32, i32* %114, i64 8
  %115 = load i32, i32* %arrayidx82, align 4, !tbaa !6
  %mul83 = mul nsw i32 %conv81, %115
  %conv84 = sext i32 %mul83 to i64
  store i64 %conv84, i64* %tmp3, align 8, !tbaa !15
  %116 = load i64, i64* %tmp0, align 8, !tbaa !15
  %117 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add85 = add nsw i64 %116, %117
  store i64 %add85, i64* %z1, align 8, !tbaa !15
  %118 = load i64, i64* %tmp1, align 8, !tbaa !15
  %119 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add86 = add nsw i64 %118, %119
  store i64 %add86, i64* %z2, align 8, !tbaa !15
  %120 = load i64, i64* %tmp0, align 8, !tbaa !15
  %121 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add87 = add nsw i64 %120, %121
  store i64 %add87, i64* %z3, align 8, !tbaa !15
  %122 = load i64, i64* %tmp1, align 8, !tbaa !15
  %123 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add88 = add nsw i64 %122, %123
  store i64 %add88, i64* %z4, align 8, !tbaa !15
  %124 = load i64, i64* %z3, align 8, !tbaa !15
  %125 = load i64, i64* %z4, align 8, !tbaa !15
  %add89 = add nsw i64 %124, %125
  %mul90 = mul nsw i64 %add89, 9633
  store i64 %mul90, i64* %z5, align 8, !tbaa !15
  %126 = load i64, i64* %tmp0, align 8, !tbaa !15
  %mul91 = mul nsw i64 %126, 2446
  store i64 %mul91, i64* %tmp0, align 8, !tbaa !15
  %127 = load i64, i64* %tmp1, align 8, !tbaa !15
  %mul92 = mul nsw i64 %127, 16819
  store i64 %mul92, i64* %tmp1, align 8, !tbaa !15
  %128 = load i64, i64* %tmp2, align 8, !tbaa !15
  %mul93 = mul nsw i64 %128, 25172
  store i64 %mul93, i64* %tmp2, align 8, !tbaa !15
  %129 = load i64, i64* %tmp3, align 8, !tbaa !15
  %mul94 = mul nsw i64 %129, 12299
  store i64 %mul94, i64* %tmp3, align 8, !tbaa !15
  %130 = load i64, i64* %z1, align 8, !tbaa !15
  %mul95 = mul nsw i64 %130, -7373
  store i64 %mul95, i64* %z1, align 8, !tbaa !15
  %131 = load i64, i64* %z2, align 8, !tbaa !15
  %mul96 = mul nsw i64 %131, -20995
  store i64 %mul96, i64* %z2, align 8, !tbaa !15
  %132 = load i64, i64* %z3, align 8, !tbaa !15
  %mul97 = mul nsw i64 %132, -16069
  store i64 %mul97, i64* %z3, align 8, !tbaa !15
  %133 = load i64, i64* %z4, align 8, !tbaa !15
  %mul98 = mul nsw i64 %133, -3196
  store i64 %mul98, i64* %z4, align 8, !tbaa !15
  %134 = load i64, i64* %z5, align 8, !tbaa !15
  %135 = load i64, i64* %z3, align 8, !tbaa !15
  %add99 = add nsw i64 %135, %134
  store i64 %add99, i64* %z3, align 8, !tbaa !15
  %136 = load i64, i64* %z5, align 8, !tbaa !15
  %137 = load i64, i64* %z4, align 8, !tbaa !15
  %add100 = add nsw i64 %137, %136
  store i64 %add100, i64* %z4, align 8, !tbaa !15
  %138 = load i64, i64* %z1, align 8, !tbaa !15
  %139 = load i64, i64* %z3, align 8, !tbaa !15
  %add101 = add nsw i64 %138, %139
  %140 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add102 = add nsw i64 %140, %add101
  store i64 %add102, i64* %tmp0, align 8, !tbaa !15
  %141 = load i64, i64* %z2, align 8, !tbaa !15
  %142 = load i64, i64* %z4, align 8, !tbaa !15
  %add103 = add nsw i64 %141, %142
  %143 = load i64, i64* %tmp1, align 8, !tbaa !15
  %add104 = add nsw i64 %143, %add103
  store i64 %add104, i64* %tmp1, align 8, !tbaa !15
  %144 = load i64, i64* %z2, align 8, !tbaa !15
  %145 = load i64, i64* %z3, align 8, !tbaa !15
  %add105 = add nsw i64 %144, %145
  %146 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add106 = add nsw i64 %146, %add105
  store i64 %add106, i64* %tmp2, align 8, !tbaa !15
  %147 = load i64, i64* %z1, align 8, !tbaa !15
  %148 = load i64, i64* %z4, align 8, !tbaa !15
  %add107 = add nsw i64 %147, %148
  %149 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add108 = add nsw i64 %149, %add107
  store i64 %add108, i64* %tmp3, align 8, !tbaa !15
  %150 = load i64, i64* %tmp10, align 8, !tbaa !15
  %151 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add109 = add nsw i64 %150, %151
  %add110 = add nsw i64 %add109, 1024
  %shr = ashr i64 %add110, 11
  %conv111 = trunc i64 %shr to i32
  %152 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %conv111, i32* %arrayidx112, align 4, !tbaa !6
  %153 = load i64, i64* %tmp10, align 8, !tbaa !15
  %154 = load i64, i64* %tmp3, align 8, !tbaa !15
  %sub113 = sub nsw i64 %153, %154
  %add114 = add nsw i64 %sub113, 1024
  %shr115 = ashr i64 %add114, 11
  %conv116 = trunc i64 %shr115 to i32
  %155 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds i32, i32* %155, i64 56
  store i32 %conv116, i32* %arrayidx117, align 4, !tbaa !6
  %156 = load i64, i64* %tmp11, align 8, !tbaa !15
  %157 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add118 = add nsw i64 %156, %157
  %add119 = add nsw i64 %add118, 1024
  %shr120 = ashr i64 %add119, 11
  %conv121 = trunc i64 %shr120 to i32
  %158 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds i32, i32* %158, i64 8
  store i32 %conv121, i32* %arrayidx122, align 4, !tbaa !6
  %159 = load i64, i64* %tmp11, align 8, !tbaa !15
  %160 = load i64, i64* %tmp2, align 8, !tbaa !15
  %sub123 = sub nsw i64 %159, %160
  %add124 = add nsw i64 %sub123, 1024
  %shr125 = ashr i64 %add124, 11
  %conv126 = trunc i64 %shr125 to i32
  %161 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx127 = getelementptr inbounds i32, i32* %161, i64 48
  store i32 %conv126, i32* %arrayidx127, align 4, !tbaa !6
  %162 = load i64, i64* %tmp12, align 8, !tbaa !15
  %163 = load i64, i64* %tmp1, align 8, !tbaa !15
  %add128 = add nsw i64 %162, %163
  %add129 = add nsw i64 %add128, 1024
  %shr130 = ashr i64 %add129, 11
  %conv131 = trunc i64 %shr130 to i32
  %164 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds i32, i32* %164, i64 16
  store i32 %conv131, i32* %arrayidx132, align 4, !tbaa !6
  %165 = load i64, i64* %tmp12, align 8, !tbaa !15
  %166 = load i64, i64* %tmp1, align 8, !tbaa !15
  %sub133 = sub nsw i64 %165, %166
  %add134 = add nsw i64 %sub133, 1024
  %shr135 = ashr i64 %add134, 11
  %conv136 = trunc i64 %shr135 to i32
  %167 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx137 = getelementptr inbounds i32, i32* %167, i64 40
  store i32 %conv136, i32* %arrayidx137, align 4, !tbaa !6
  %168 = load i64, i64* %tmp13, align 8, !tbaa !15
  %169 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add138 = add nsw i64 %168, %169
  %add139 = add nsw i64 %add138, 1024
  %shr140 = ashr i64 %add139, 11
  %conv141 = trunc i64 %shr140 to i32
  %170 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx142 = getelementptr inbounds i32, i32* %170, i64 24
  store i32 %conv141, i32* %arrayidx142, align 4, !tbaa !6
  %171 = load i64, i64* %tmp13, align 8, !tbaa !15
  %172 = load i64, i64* %tmp0, align 8, !tbaa !15
  %sub143 = sub nsw i64 %171, %172
  %add144 = add nsw i64 %sub143, 1024
  %shr145 = ashr i64 %add144, 11
  %conv146 = trunc i64 %shr145 to i32
  %173 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx147 = getelementptr inbounds i32, i32* %173, i64 32
  store i32 %conv146, i32* %arrayidx147, align 4, !tbaa !6
  %174 = load i16*, i16** %inptr, align 8, !tbaa !2
  %incdec.ptr148 = getelementptr inbounds i16, i16* %174, i32 1
  store i16* %incdec.ptr148, i16** %inptr, align 8, !tbaa !2
  %175 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %incdec.ptr149 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %incdec.ptr149, i32** %quantptr, align 8, !tbaa !2
  %176 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %incdec.ptr150 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %incdec.ptr150, i32** %wsptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %177 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec = add nsw i32 %177, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay151 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay151, i32** %wsptr, align 8, !tbaa !2
  store i32 0, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.315, %for.end
  %178 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp153 = icmp slt i32 %178, 8
  br i1 %cmp153, label %for.body.155, label %for.end.316

for.body.155:                                     ; preds = %for.cond.152
  %179 = load i32, i32* %ctr, align 4, !tbaa !6
  %idxprom = sext i32 %179 to i64
  %180 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx156 = getelementptr inbounds i8*, i8** %180, i64 %idxprom
  %181 = load i8*, i8** %arrayidx156, align 8, !tbaa !2
  %182 = load i32, i32* %output_col.addr, align 4, !tbaa !6
  %idx.ext = zext i32 %182 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %181, i64 %idx.ext
  store i8* %add.ptr157, i8** %outptr, align 8, !tbaa !2
  %183 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx158 = getelementptr inbounds i32, i32* %183, i64 1
  %184 = load i32, i32* %arrayidx158, align 4, !tbaa !6
  %185 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx159 = getelementptr inbounds i32, i32* %185, i64 2
  %186 = load i32, i32* %arrayidx159, align 4, !tbaa !6
  %or160 = or i32 %184, %186
  %187 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx161 = getelementptr inbounds i32, i32* %187, i64 3
  %188 = load i32, i32* %arrayidx161, align 4, !tbaa !6
  %or162 = or i32 %or160, %188
  %189 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx163 = getelementptr inbounds i32, i32* %189, i64 4
  %190 = load i32, i32* %arrayidx163, align 4, !tbaa !6
  %or164 = or i32 %or162, %190
  %191 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx165 = getelementptr inbounds i32, i32* %191, i64 5
  %192 = load i32, i32* %arrayidx165, align 4, !tbaa !6
  %or166 = or i32 %or164, %192
  %193 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx167 = getelementptr inbounds i32, i32* %193, i64 6
  %194 = load i32, i32* %arrayidx167, align 4, !tbaa !6
  %or168 = or i32 %or166, %194
  %195 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx169 = getelementptr inbounds i32, i32* %195, i64 7
  %196 = load i32, i32* %arrayidx169, align 4, !tbaa !6
  %or170 = or i32 %or168, %196
  %cmp171 = icmp eq i32 %or170, 0
  br i1 %cmp171, label %if.then.173, label %if.end.191

if.then.173:                                      ; preds = %for.body.155
  call void @llvm.lifetime.start(i64 1, i8* %dcval174) #2
  %197 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx175 = getelementptr inbounds i32, i32* %197, i64 0
  %198 = load i32, i32* %arrayidx175, align 4, !tbaa !6
  %conv176 = sext i32 %198 to i64
  %add177 = add nsw i64 %conv176, 16
  %shr178 = ashr i64 %add177, 5
  %conv179 = trunc i64 %shr178 to i32
  %and = and i32 %conv179, 1023
  %idxprom180 = sext i32 %and to i64
  %199 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx181 = getelementptr inbounds i8, i8* %199, i64 %idxprom180
  %200 = load i8, i8* %arrayidx181, align 1, !tbaa !17
  store i8 %200, i8* %dcval174, align 1, !tbaa !17
  %201 = load i8, i8* %dcval174, align 1, !tbaa !17
  %202 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx182 = getelementptr inbounds i8, i8* %202, i64 0
  store i8 %201, i8* %arrayidx182, align 1, !tbaa !17
  %203 = load i8, i8* %dcval174, align 1, !tbaa !17
  %204 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx183 = getelementptr inbounds i8, i8* %204, i64 1
  store i8 %203, i8* %arrayidx183, align 1, !tbaa !17
  %205 = load i8, i8* %dcval174, align 1, !tbaa !17
  %206 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx184 = getelementptr inbounds i8, i8* %206, i64 2
  store i8 %205, i8* %arrayidx184, align 1, !tbaa !17
  %207 = load i8, i8* %dcval174, align 1, !tbaa !17
  %208 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx185 = getelementptr inbounds i8, i8* %208, i64 3
  store i8 %207, i8* %arrayidx185, align 1, !tbaa !17
  %209 = load i8, i8* %dcval174, align 1, !tbaa !17
  %210 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx186 = getelementptr inbounds i8, i8* %210, i64 4
  store i8 %209, i8* %arrayidx186, align 1, !tbaa !17
  %211 = load i8, i8* %dcval174, align 1, !tbaa !17
  %212 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx187 = getelementptr inbounds i8, i8* %212, i64 5
  store i8 %211, i8* %arrayidx187, align 1, !tbaa !17
  %213 = load i8, i8* %dcval174, align 1, !tbaa !17
  %214 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx188 = getelementptr inbounds i8, i8* %214, i64 6
  store i8 %213, i8* %arrayidx188, align 1, !tbaa !17
  %215 = load i8, i8* %dcval174, align 1, !tbaa !17
  %216 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx189 = getelementptr inbounds i8, i8* %216, i64 7
  store i8 %215, i8* %arrayidx189, align 1, !tbaa !17
  %217 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %add.ptr190 = getelementptr inbounds i32, i32* %217, i64 8
  store i32* %add.ptr190, i32** %wsptr, align 8, !tbaa !2
  call void @llvm.lifetime.end(i64 1, i8* %dcval174) #2
  br label %for.inc.315

if.end.191:                                       ; preds = %for.body.155
  %218 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx192 = getelementptr inbounds i32, i32* %218, i64 2
  %219 = load i32, i32* %arrayidx192, align 4, !tbaa !6
  %conv193 = sext i32 %219 to i64
  store i64 %conv193, i64* %z2, align 8, !tbaa !15
  %220 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx194 = getelementptr inbounds i32, i32* %220, i64 6
  %221 = load i32, i32* %arrayidx194, align 4, !tbaa !6
  %conv195 = sext i32 %221 to i64
  store i64 %conv195, i64* %z3, align 8, !tbaa !15
  %222 = load i64, i64* %z2, align 8, !tbaa !15
  %223 = load i64, i64* %z3, align 8, !tbaa !15
  %add196 = add nsw i64 %222, %223
  %mul197 = mul nsw i64 %add196, 4433
  store i64 %mul197, i64* %z1, align 8, !tbaa !15
  %224 = load i64, i64* %z1, align 8, !tbaa !15
  %225 = load i64, i64* %z3, align 8, !tbaa !15
  %mul198 = mul nsw i64 %225, -15137
  %add199 = add nsw i64 %224, %mul198
  store i64 %add199, i64* %tmp2, align 8, !tbaa !15
  %226 = load i64, i64* %z1, align 8, !tbaa !15
  %227 = load i64, i64* %z2, align 8, !tbaa !15
  %mul200 = mul nsw i64 %227, 6270
  %add201 = add nsw i64 %226, %mul200
  store i64 %add201, i64* %tmp3, align 8, !tbaa !15
  %228 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx202 = getelementptr inbounds i32, i32* %228, i64 0
  %229 = load i32, i32* %arrayidx202, align 4, !tbaa !6
  %conv203 = sext i32 %229 to i64
  %230 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx204 = getelementptr inbounds i32, i32* %230, i64 4
  %231 = load i32, i32* %arrayidx204, align 4, !tbaa !6
  %conv205 = sext i32 %231 to i64
  %add206 = add nsw i64 %conv203, %conv205
  %shl207 = shl i64 %add206, 13
  store i64 %shl207, i64* %tmp0, align 8, !tbaa !15
  %232 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx208 = getelementptr inbounds i32, i32* %232, i64 0
  %233 = load i32, i32* %arrayidx208, align 4, !tbaa !6
  %conv209 = sext i32 %233 to i64
  %234 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx210 = getelementptr inbounds i32, i32* %234, i64 4
  %235 = load i32, i32* %arrayidx210, align 4, !tbaa !6
  %conv211 = sext i32 %235 to i64
  %sub212 = sub nsw i64 %conv209, %conv211
  %shl213 = shl i64 %sub212, 13
  store i64 %shl213, i64* %tmp1, align 8, !tbaa !15
  %236 = load i64, i64* %tmp0, align 8, !tbaa !15
  %237 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add214 = add nsw i64 %236, %237
  store i64 %add214, i64* %tmp10, align 8, !tbaa !15
  %238 = load i64, i64* %tmp0, align 8, !tbaa !15
  %239 = load i64, i64* %tmp3, align 8, !tbaa !15
  %sub215 = sub nsw i64 %238, %239
  store i64 %sub215, i64* %tmp13, align 8, !tbaa !15
  %240 = load i64, i64* %tmp1, align 8, !tbaa !15
  %241 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add216 = add nsw i64 %240, %241
  store i64 %add216, i64* %tmp11, align 8, !tbaa !15
  %242 = load i64, i64* %tmp1, align 8, !tbaa !15
  %243 = load i64, i64* %tmp2, align 8, !tbaa !15
  %sub217 = sub nsw i64 %242, %243
  store i64 %sub217, i64* %tmp12, align 8, !tbaa !15
  %244 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx218 = getelementptr inbounds i32, i32* %244, i64 7
  %245 = load i32, i32* %arrayidx218, align 4, !tbaa !6
  %conv219 = sext i32 %245 to i64
  store i64 %conv219, i64* %tmp0, align 8, !tbaa !15
  %246 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx220 = getelementptr inbounds i32, i32* %246, i64 5
  %247 = load i32, i32* %arrayidx220, align 4, !tbaa !6
  %conv221 = sext i32 %247 to i64
  store i64 %conv221, i64* %tmp1, align 8, !tbaa !15
  %248 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx222 = getelementptr inbounds i32, i32* %248, i64 3
  %249 = load i32, i32* %arrayidx222, align 4, !tbaa !6
  %conv223 = sext i32 %249 to i64
  store i64 %conv223, i64* %tmp2, align 8, !tbaa !15
  %250 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx224 = getelementptr inbounds i32, i32* %250, i64 1
  %251 = load i32, i32* %arrayidx224, align 4, !tbaa !6
  %conv225 = sext i32 %251 to i64
  store i64 %conv225, i64* %tmp3, align 8, !tbaa !15
  %252 = load i64, i64* %tmp0, align 8, !tbaa !15
  %253 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add226 = add nsw i64 %252, %253
  store i64 %add226, i64* %z1, align 8, !tbaa !15
  %254 = load i64, i64* %tmp1, align 8, !tbaa !15
  %255 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add227 = add nsw i64 %254, %255
  store i64 %add227, i64* %z2, align 8, !tbaa !15
  %256 = load i64, i64* %tmp0, align 8, !tbaa !15
  %257 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add228 = add nsw i64 %256, %257
  store i64 %add228, i64* %z3, align 8, !tbaa !15
  %258 = load i64, i64* %tmp1, align 8, !tbaa !15
  %259 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add229 = add nsw i64 %258, %259
  store i64 %add229, i64* %z4, align 8, !tbaa !15
  %260 = load i64, i64* %z3, align 8, !tbaa !15
  %261 = load i64, i64* %z4, align 8, !tbaa !15
  %add230 = add nsw i64 %260, %261
  %mul231 = mul nsw i64 %add230, 9633
  store i64 %mul231, i64* %z5, align 8, !tbaa !15
  %262 = load i64, i64* %tmp0, align 8, !tbaa !15
  %mul232 = mul nsw i64 %262, 2446
  store i64 %mul232, i64* %tmp0, align 8, !tbaa !15
  %263 = load i64, i64* %tmp1, align 8, !tbaa !15
  %mul233 = mul nsw i64 %263, 16819
  store i64 %mul233, i64* %tmp1, align 8, !tbaa !15
  %264 = load i64, i64* %tmp2, align 8, !tbaa !15
  %mul234 = mul nsw i64 %264, 25172
  store i64 %mul234, i64* %tmp2, align 8, !tbaa !15
  %265 = load i64, i64* %tmp3, align 8, !tbaa !15
  %mul235 = mul nsw i64 %265, 12299
  store i64 %mul235, i64* %tmp3, align 8, !tbaa !15
  %266 = load i64, i64* %z1, align 8, !tbaa !15
  %mul236 = mul nsw i64 %266, -7373
  store i64 %mul236, i64* %z1, align 8, !tbaa !15
  %267 = load i64, i64* %z2, align 8, !tbaa !15
  %mul237 = mul nsw i64 %267, -20995
  store i64 %mul237, i64* %z2, align 8, !tbaa !15
  %268 = load i64, i64* %z3, align 8, !tbaa !15
  %mul238 = mul nsw i64 %268, -16069
  store i64 %mul238, i64* %z3, align 8, !tbaa !15
  %269 = load i64, i64* %z4, align 8, !tbaa !15
  %mul239 = mul nsw i64 %269, -3196
  store i64 %mul239, i64* %z4, align 8, !tbaa !15
  %270 = load i64, i64* %z5, align 8, !tbaa !15
  %271 = load i64, i64* %z3, align 8, !tbaa !15
  %add240 = add nsw i64 %271, %270
  store i64 %add240, i64* %z3, align 8, !tbaa !15
  %272 = load i64, i64* %z5, align 8, !tbaa !15
  %273 = load i64, i64* %z4, align 8, !tbaa !15
  %add241 = add nsw i64 %273, %272
  store i64 %add241, i64* %z4, align 8, !tbaa !15
  %274 = load i64, i64* %z1, align 8, !tbaa !15
  %275 = load i64, i64* %z3, align 8, !tbaa !15
  %add242 = add nsw i64 %274, %275
  %276 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add243 = add nsw i64 %276, %add242
  store i64 %add243, i64* %tmp0, align 8, !tbaa !15
  %277 = load i64, i64* %z2, align 8, !tbaa !15
  %278 = load i64, i64* %z4, align 8, !tbaa !15
  %add244 = add nsw i64 %277, %278
  %279 = load i64, i64* %tmp1, align 8, !tbaa !15
  %add245 = add nsw i64 %279, %add244
  store i64 %add245, i64* %tmp1, align 8, !tbaa !15
  %280 = load i64, i64* %z2, align 8, !tbaa !15
  %281 = load i64, i64* %z3, align 8, !tbaa !15
  %add246 = add nsw i64 %280, %281
  %282 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add247 = add nsw i64 %282, %add246
  store i64 %add247, i64* %tmp2, align 8, !tbaa !15
  %283 = load i64, i64* %z1, align 8, !tbaa !15
  %284 = load i64, i64* %z4, align 8, !tbaa !15
  %add248 = add nsw i64 %283, %284
  %285 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add249 = add nsw i64 %285, %add248
  store i64 %add249, i64* %tmp3, align 8, !tbaa !15
  %286 = load i64, i64* %tmp10, align 8, !tbaa !15
  %287 = load i64, i64* %tmp3, align 8, !tbaa !15
  %add250 = add nsw i64 %286, %287
  %add251 = add nsw i64 %add250, 131072
  %shr252 = ashr i64 %add251, 18
  %conv253 = trunc i64 %shr252 to i32
  %and254 = and i32 %conv253, 1023
  %idxprom255 = sext i32 %and254 to i64
  %288 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx256 = getelementptr inbounds i8, i8* %288, i64 %idxprom255
  %289 = load i8, i8* %arrayidx256, align 1, !tbaa !17
  %290 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx257 = getelementptr inbounds i8, i8* %290, i64 0
  store i8 %289, i8* %arrayidx257, align 1, !tbaa !17
  %291 = load i64, i64* %tmp10, align 8, !tbaa !15
  %292 = load i64, i64* %tmp3, align 8, !tbaa !15
  %sub258 = sub nsw i64 %291, %292
  %add259 = add nsw i64 %sub258, 131072
  %shr260 = ashr i64 %add259, 18
  %conv261 = trunc i64 %shr260 to i32
  %and262 = and i32 %conv261, 1023
  %idxprom263 = sext i32 %and262 to i64
  %293 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx264 = getelementptr inbounds i8, i8* %293, i64 %idxprom263
  %294 = load i8, i8* %arrayidx264, align 1, !tbaa !17
  %295 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx265 = getelementptr inbounds i8, i8* %295, i64 7
  store i8 %294, i8* %arrayidx265, align 1, !tbaa !17
  %296 = load i64, i64* %tmp11, align 8, !tbaa !15
  %297 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add266 = add nsw i64 %296, %297
  %add267 = add nsw i64 %add266, 131072
  %shr268 = ashr i64 %add267, 18
  %conv269 = trunc i64 %shr268 to i32
  %and270 = and i32 %conv269, 1023
  %idxprom271 = sext i32 %and270 to i64
  %298 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx272 = getelementptr inbounds i8, i8* %298, i64 %idxprom271
  %299 = load i8, i8* %arrayidx272, align 1, !tbaa !17
  %300 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx273 = getelementptr inbounds i8, i8* %300, i64 1
  store i8 %299, i8* %arrayidx273, align 1, !tbaa !17
  %301 = load i64, i64* %tmp11, align 8, !tbaa !15
  %302 = load i64, i64* %tmp2, align 8, !tbaa !15
  %sub274 = sub nsw i64 %301, %302
  %add275 = add nsw i64 %sub274, 131072
  %shr276 = ashr i64 %add275, 18
  %conv277 = trunc i64 %shr276 to i32
  %and278 = and i32 %conv277, 1023
  %idxprom279 = sext i32 %and278 to i64
  %303 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx280 = getelementptr inbounds i8, i8* %303, i64 %idxprom279
  %304 = load i8, i8* %arrayidx280, align 1, !tbaa !17
  %305 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx281 = getelementptr inbounds i8, i8* %305, i64 6
  store i8 %304, i8* %arrayidx281, align 1, !tbaa !17
  %306 = load i64, i64* %tmp12, align 8, !tbaa !15
  %307 = load i64, i64* %tmp1, align 8, !tbaa !15
  %add282 = add nsw i64 %306, %307
  %add283 = add nsw i64 %add282, 131072
  %shr284 = ashr i64 %add283, 18
  %conv285 = trunc i64 %shr284 to i32
  %and286 = and i32 %conv285, 1023
  %idxprom287 = sext i32 %and286 to i64
  %308 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx288 = getelementptr inbounds i8, i8* %308, i64 %idxprom287
  %309 = load i8, i8* %arrayidx288, align 1, !tbaa !17
  %310 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx289 = getelementptr inbounds i8, i8* %310, i64 2
  store i8 %309, i8* %arrayidx289, align 1, !tbaa !17
  %311 = load i64, i64* %tmp12, align 8, !tbaa !15
  %312 = load i64, i64* %tmp1, align 8, !tbaa !15
  %sub290 = sub nsw i64 %311, %312
  %add291 = add nsw i64 %sub290, 131072
  %shr292 = ashr i64 %add291, 18
  %conv293 = trunc i64 %shr292 to i32
  %and294 = and i32 %conv293, 1023
  %idxprom295 = sext i32 %and294 to i64
  %313 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx296 = getelementptr inbounds i8, i8* %313, i64 %idxprom295
  %314 = load i8, i8* %arrayidx296, align 1, !tbaa !17
  %315 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx297 = getelementptr inbounds i8, i8* %315, i64 5
  store i8 %314, i8* %arrayidx297, align 1, !tbaa !17
  %316 = load i64, i64* %tmp13, align 8, !tbaa !15
  %317 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add298 = add nsw i64 %316, %317
  %add299 = add nsw i64 %add298, 131072
  %shr300 = ashr i64 %add299, 18
  %conv301 = trunc i64 %shr300 to i32
  %and302 = and i32 %conv301, 1023
  %idxprom303 = sext i32 %and302 to i64
  %318 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx304 = getelementptr inbounds i8, i8* %318, i64 %idxprom303
  %319 = load i8, i8* %arrayidx304, align 1, !tbaa !17
  %320 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx305 = getelementptr inbounds i8, i8* %320, i64 3
  store i8 %319, i8* %arrayidx305, align 1, !tbaa !17
  %321 = load i64, i64* %tmp13, align 8, !tbaa !15
  %322 = load i64, i64* %tmp0, align 8, !tbaa !15
  %sub306 = sub nsw i64 %321, %322
  %add307 = add nsw i64 %sub306, 131072
  %shr308 = ashr i64 %add307, 18
  %conv309 = trunc i64 %shr308 to i32
  %and310 = and i32 %conv309, 1023
  %idxprom311 = sext i32 %and310 to i64
  %323 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx312 = getelementptr inbounds i8, i8* %323, i64 %idxprom311
  %324 = load i8, i8* %arrayidx312, align 1, !tbaa !17
  %325 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx313 = getelementptr inbounds i8, i8* %325, i64 4
  store i8 %324, i8* %arrayidx313, align 1, !tbaa !17
  %326 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %add.ptr314 = getelementptr inbounds i32, i32* %326, i64 8
  store i32* %add.ptr314, i32** %wsptr, align 8, !tbaa !2
  br label %for.inc.315

for.inc.315:                                      ; preds = %if.end.191, %if.then.173
  %327 = load i32, i32* %ctr, align 4, !tbaa !6
  %inc = add nsw i32 %327, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.152

for.end.316:                                      ; preds = %for.cond.152
  %328 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 256, i8* %328) #2
  %329 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #2
  %330 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #2
  %331 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %331) #2
  %332 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #2
  %333 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #2
  %334 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #2
  %335 = bitcast i64* %z5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #2
  %336 = bitcast i64* %z4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #2
  %337 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %337) #2
  %338 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #2
  %339 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %339) #2
  %340 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %340) #2
  %341 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #2
  %342 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #2
  %343 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #2
  %344 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #2
  %345 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #2
  %346 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #2
  %347 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #2
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
!16 = !{!"long", !4, i64 0}
!17 = !{!4, !4, i64 0}
