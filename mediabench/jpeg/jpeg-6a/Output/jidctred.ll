; ModuleID = 'jidctred.c'
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
define void @jpeg_idct_4x4(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %z4 = alloca i64, align 8
  %inptr = alloca i16*, align 8
  %quantptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [32 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval122 = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i16* %coef_block, i16** %coef_block.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_col, i32* %output_col.addr, align 4, !tbaa !6
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i64* %z4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 61
  %14 = load i8*, i8** %sample_range_limit, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 128
  store i8* %add.ptr, i8** %range_limit, align 8, !tbaa !2
  %15 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast [32 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 128, i8* %16) #2
  %17 = load i16*, i16** %coef_block.addr, align 8, !tbaa !2
  store i16* %17, i16** %inptr, align 8, !tbaa !2
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 20
  %19 = load i8*, i8** %dct_table, align 8, !tbaa !12
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %quantptr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %wsptr, align 8, !tbaa !2
  store i32 8, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp = icmp sgt i32 %21, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp1 = icmp eq i32 %22, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %23 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %23, i64 8
  %24 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv = sext i16 %24 to i32
  %25 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i16, i16* %25, i64 16
  %26 = load i16, i16* %arrayidx2, align 2, !tbaa !14
  %conv3 = sext i16 %26 to i32
  %or = or i32 %conv, %conv3
  %27 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i16, i16* %27, i64 24
  %28 = load i16, i16* %arrayidx4, align 2, !tbaa !14
  %conv5 = sext i16 %28 to i32
  %or6 = or i32 %or, %conv5
  %29 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i16, i16* %29, i64 40
  %30 = load i16, i16* %arrayidx7, align 2, !tbaa !14
  %conv8 = sext i16 %30 to i32
  %or9 = or i32 %or6, %conv8
  %31 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i16, i16* %31, i64 48
  %32 = load i16, i16* %arrayidx10, align 2, !tbaa !14
  %conv11 = sext i16 %32 to i32
  %or12 = or i32 %or9, %conv11
  %33 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i16, i16* %33, i64 56
  %34 = load i16, i16* %arrayidx13, align 2, !tbaa !14
  %conv14 = sext i16 %34 to i32
  %or15 = or i32 %or12, %conv14
  %cmp16 = icmp eq i32 %or15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %if.end
  %35 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i16, i16* %36, i64 0
  %37 = load i16, i16* %arrayidx19, align 2, !tbaa !14
  %conv20 = sext i16 %37 to i32
  %38 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i32, i32* %38, i64 0
  %39 = load i32, i32* %arrayidx21, align 4, !tbaa !6
  %mul = mul nsw i32 %conv20, %39
  %shl = shl i32 %mul, 2
  store i32 %shl, i32* %dcval, align 4, !tbaa !6
  %40 = load i32, i32* %dcval, align 4, !tbaa !6
  %41 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %40, i32* %arrayidx22, align 4, !tbaa !6
  %42 = load i32, i32* %dcval, align 4, !tbaa !6
  %43 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i32, i32* %43, i64 8
  store i32 %42, i32* %arrayidx23, align 4, !tbaa !6
  %44 = load i32, i32* %dcval, align 4, !tbaa !6
  %45 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i32, i32* %45, i64 16
  store i32 %44, i32* %arrayidx24, align 4, !tbaa !6
  %46 = load i32, i32* %dcval, align 4, !tbaa !6
  %47 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds i32, i32* %47, i64 24
  store i32 %46, i32* %arrayidx25, align 4, !tbaa !6
  %48 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  br label %for.inc

if.end.26:                                        ; preds = %if.end
  %49 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i16, i16* %49, i64 0
  %50 = load i16, i16* %arrayidx27, align 2, !tbaa !14
  %conv28 = sext i16 %50 to i32
  %51 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i32, i32* %51, i64 0
  %52 = load i32, i32* %arrayidx29, align 4, !tbaa !6
  %mul30 = mul nsw i32 %conv28, %52
  %conv31 = sext i32 %mul30 to i64
  store i64 %conv31, i64* %tmp0, align 8, !tbaa !15
  %53 = load i64, i64* %tmp0, align 8, !tbaa !15
  %shl32 = shl i64 %53, 14
  store i64 %shl32, i64* %tmp0, align 8, !tbaa !15
  %54 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i16, i16* %54, i64 16
  %55 = load i16, i16* %arrayidx33, align 2, !tbaa !14
  %conv34 = sext i16 %55 to i32
  %56 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i32, i32* %56, i64 16
  %57 = load i32, i32* %arrayidx35, align 4, !tbaa !6
  %mul36 = mul nsw i32 %conv34, %57
  %conv37 = sext i32 %mul36 to i64
  store i64 %conv37, i64* %z2, align 8, !tbaa !15
  %58 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i16, i16* %58, i64 48
  %59 = load i16, i16* %arrayidx38, align 2, !tbaa !14
  %conv39 = sext i16 %59 to i32
  %60 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i32, i32* %60, i64 48
  %61 = load i32, i32* %arrayidx40, align 4, !tbaa !6
  %mul41 = mul nsw i32 %conv39, %61
  %conv42 = sext i32 %mul41 to i64
  store i64 %conv42, i64* %z3, align 8, !tbaa !15
  %62 = load i64, i64* %z2, align 8, !tbaa !15
  %mul43 = mul nsw i64 %62, 15137
  %63 = load i64, i64* %z3, align 8, !tbaa !15
  %mul44 = mul nsw i64 %63, -6270
  %add = add nsw i64 %mul43, %mul44
  store i64 %add, i64* %tmp2, align 8, !tbaa !15
  %64 = load i64, i64* %tmp0, align 8, !tbaa !15
  %65 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add45 = add nsw i64 %64, %65
  store i64 %add45, i64* %tmp10, align 8, !tbaa !15
  %66 = load i64, i64* %tmp0, align 8, !tbaa !15
  %67 = load i64, i64* %tmp2, align 8, !tbaa !15
  %sub = sub nsw i64 %66, %67
  store i64 %sub, i64* %tmp12, align 8, !tbaa !15
  %68 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds i16, i16* %68, i64 56
  %69 = load i16, i16* %arrayidx46, align 2, !tbaa !14
  %conv47 = sext i16 %69 to i32
  %70 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds i32, i32* %70, i64 56
  %71 = load i32, i32* %arrayidx48, align 4, !tbaa !6
  %mul49 = mul nsw i32 %conv47, %71
  %conv50 = sext i32 %mul49 to i64
  store i64 %conv50, i64* %z1, align 8, !tbaa !15
  %72 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds i16, i16* %72, i64 40
  %73 = load i16, i16* %arrayidx51, align 2, !tbaa !14
  %conv52 = sext i16 %73 to i32
  %74 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds i32, i32* %74, i64 40
  %75 = load i32, i32* %arrayidx53, align 4, !tbaa !6
  %mul54 = mul nsw i32 %conv52, %75
  %conv55 = sext i32 %mul54 to i64
  store i64 %conv55, i64* %z2, align 8, !tbaa !15
  %76 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds i16, i16* %76, i64 24
  %77 = load i16, i16* %arrayidx56, align 2, !tbaa !14
  %conv57 = sext i16 %77 to i32
  %78 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx58 = getelementptr inbounds i32, i32* %78, i64 24
  %79 = load i32, i32* %arrayidx58, align 4, !tbaa !6
  %mul59 = mul nsw i32 %conv57, %79
  %conv60 = sext i32 %mul59 to i64
  store i64 %conv60, i64* %z3, align 8, !tbaa !15
  %80 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds i16, i16* %80, i64 8
  %81 = load i16, i16* %arrayidx61, align 2, !tbaa !14
  %conv62 = sext i16 %81 to i32
  %82 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds i32, i32* %82, i64 8
  %83 = load i32, i32* %arrayidx63, align 4, !tbaa !6
  %mul64 = mul nsw i32 %conv62, %83
  %conv65 = sext i32 %mul64 to i64
  store i64 %conv65, i64* %z4, align 8, !tbaa !15
  %84 = load i64, i64* %z1, align 8, !tbaa !15
  %mul66 = mul nsw i64 %84, -1730
  %85 = load i64, i64* %z2, align 8, !tbaa !15
  %mul67 = mul nsw i64 %85, 11893
  %add68 = add nsw i64 %mul66, %mul67
  %86 = load i64, i64* %z3, align 8, !tbaa !15
  %mul69 = mul nsw i64 %86, -17799
  %add70 = add nsw i64 %add68, %mul69
  %87 = load i64, i64* %z4, align 8, !tbaa !15
  %mul71 = mul nsw i64 %87, 8697
  %add72 = add nsw i64 %add70, %mul71
  store i64 %add72, i64* %tmp0, align 8, !tbaa !15
  %88 = load i64, i64* %z1, align 8, !tbaa !15
  %mul73 = mul nsw i64 %88, -4176
  %89 = load i64, i64* %z2, align 8, !tbaa !15
  %mul74 = mul nsw i64 %89, -4926
  %add75 = add nsw i64 %mul73, %mul74
  %90 = load i64, i64* %z3, align 8, !tbaa !15
  %mul76 = mul nsw i64 %90, 7373
  %add77 = add nsw i64 %add75, %mul76
  %91 = load i64, i64* %z4, align 8, !tbaa !15
  %mul78 = mul nsw i64 %91, 20995
  %add79 = add nsw i64 %add77, %mul78
  store i64 %add79, i64* %tmp2, align 8, !tbaa !15
  %92 = load i64, i64* %tmp10, align 8, !tbaa !15
  %93 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add80 = add nsw i64 %92, %93
  %add81 = add nsw i64 %add80, 2048
  %shr = ashr i64 %add81, 12
  %conv82 = trunc i64 %shr to i32
  %94 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx83 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %conv82, i32* %arrayidx83, align 4, !tbaa !6
  %95 = load i64, i64* %tmp10, align 8, !tbaa !15
  %96 = load i64, i64* %tmp2, align 8, !tbaa !15
  %sub84 = sub nsw i64 %95, %96
  %add85 = add nsw i64 %sub84, 2048
  %shr86 = ashr i64 %add85, 12
  %conv87 = trunc i64 %shr86 to i32
  %97 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx88 = getelementptr inbounds i32, i32* %97, i64 24
  store i32 %conv87, i32* %arrayidx88, align 4, !tbaa !6
  %98 = load i64, i64* %tmp12, align 8, !tbaa !15
  %99 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add89 = add nsw i64 %98, %99
  %add90 = add nsw i64 %add89, 2048
  %shr91 = ashr i64 %add90, 12
  %conv92 = trunc i64 %shr91 to i32
  %100 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds i32, i32* %100, i64 8
  store i32 %conv92, i32* %arrayidx93, align 4, !tbaa !6
  %101 = load i64, i64* %tmp12, align 8, !tbaa !15
  %102 = load i64, i64* %tmp0, align 8, !tbaa !15
  %sub94 = sub nsw i64 %101, %102
  %add95 = add nsw i64 %sub94, 2048
  %shr96 = ashr i64 %add95, 12
  %conv97 = trunc i64 %shr96 to i32
  %103 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx98 = getelementptr inbounds i32, i32* %103, i64 16
  store i32 %conv97, i32* %arrayidx98, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.18, %if.then
  %104 = load i16*, i16** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %104, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8, !tbaa !2
  %105 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %incdec.ptr99 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %incdec.ptr99, i32** %quantptr, align 8, !tbaa !2
  %106 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %incdec.ptr100 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %incdec.ptr100, i32** %wsptr, align 8, !tbaa !2
  %107 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec = add nsw i32 %107, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay101 = getelementptr inbounds [32 x i32], [32 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay101, i32** %wsptr, align 8, !tbaa !2
  store i32 0, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.203, %for.end
  %108 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp103 = icmp slt i32 %108, 4
  br i1 %cmp103, label %for.body.105, label %for.end.204

for.body.105:                                     ; preds = %for.cond.102
  %109 = load i32, i32* %ctr, align 4, !tbaa !6
  %idxprom = sext i32 %109 to i64
  %110 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx106 = getelementptr inbounds i8*, i8** %110, i64 %idxprom
  %111 = load i8*, i8** %arrayidx106, align 8, !tbaa !2
  %112 = load i32, i32* %output_col.addr, align 4, !tbaa !6
  %idx.ext = zext i32 %112 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %111, i64 %idx.ext
  store i8* %add.ptr107, i8** %outptr, align 8, !tbaa !2
  %113 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx108 = getelementptr inbounds i32, i32* %113, i64 1
  %114 = load i32, i32* %arrayidx108, align 4, !tbaa !6
  %115 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds i32, i32* %115, i64 2
  %116 = load i32, i32* %arrayidx109, align 4, !tbaa !6
  %or110 = or i32 %114, %116
  %117 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx111 = getelementptr inbounds i32, i32* %117, i64 3
  %118 = load i32, i32* %arrayidx111, align 4, !tbaa !6
  %or112 = or i32 %or110, %118
  %119 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx113 = getelementptr inbounds i32, i32* %119, i64 5
  %120 = load i32, i32* %arrayidx113, align 4, !tbaa !6
  %or114 = or i32 %or112, %120
  %121 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds i32, i32* %121, i64 6
  %122 = load i32, i32* %arrayidx115, align 4, !tbaa !6
  %or116 = or i32 %or114, %122
  %123 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds i32, i32* %123, i64 7
  %124 = load i32, i32* %arrayidx117, align 4, !tbaa !6
  %or118 = or i32 %or116, %124
  %cmp119 = icmp eq i32 %or118, 0
  br i1 %cmp119, label %if.then.121, label %if.end.135

if.then.121:                                      ; preds = %for.body.105
  call void @llvm.lifetime.start(i64 1, i8* %dcval122) #2
  %125 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx123 = getelementptr inbounds i32, i32* %125, i64 0
  %126 = load i32, i32* %arrayidx123, align 4, !tbaa !6
  %conv124 = sext i32 %126 to i64
  %add125 = add nsw i64 %conv124, 16
  %shr126 = ashr i64 %add125, 5
  %conv127 = trunc i64 %shr126 to i32
  %and = and i32 %conv127, 1023
  %idxprom128 = sext i32 %and to i64
  %127 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx129 = getelementptr inbounds i8, i8* %127, i64 %idxprom128
  %128 = load i8, i8* %arrayidx129, align 1, !tbaa !17
  store i8 %128, i8* %dcval122, align 1, !tbaa !17
  %129 = load i8, i8* %dcval122, align 1, !tbaa !17
  %130 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx130 = getelementptr inbounds i8, i8* %130, i64 0
  store i8 %129, i8* %arrayidx130, align 1, !tbaa !17
  %131 = load i8, i8* %dcval122, align 1, !tbaa !17
  %132 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx131 = getelementptr inbounds i8, i8* %132, i64 1
  store i8 %131, i8* %arrayidx131, align 1, !tbaa !17
  %133 = load i8, i8* %dcval122, align 1, !tbaa !17
  %134 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds i8, i8* %134, i64 2
  store i8 %133, i8* %arrayidx132, align 1, !tbaa !17
  %135 = load i8, i8* %dcval122, align 1, !tbaa !17
  %136 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx133 = getelementptr inbounds i8, i8* %136, i64 3
  store i8 %135, i8* %arrayidx133, align 1, !tbaa !17
  %137 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %add.ptr134 = getelementptr inbounds i32, i32* %137, i64 8
  store i32* %add.ptr134, i32** %wsptr, align 8, !tbaa !2
  call void @llvm.lifetime.end(i64 1, i8* %dcval122) #2
  br label %for.inc.203

if.end.135:                                       ; preds = %for.body.105
  %138 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx136 = getelementptr inbounds i32, i32* %138, i64 0
  %139 = load i32, i32* %arrayidx136, align 4, !tbaa !6
  %conv137 = sext i32 %139 to i64
  %shl138 = shl i64 %conv137, 14
  store i64 %shl138, i64* %tmp0, align 8, !tbaa !15
  %140 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx139 = getelementptr inbounds i32, i32* %140, i64 2
  %141 = load i32, i32* %arrayidx139, align 4, !tbaa !6
  %conv140 = sext i32 %141 to i64
  %mul141 = mul nsw i64 %conv140, 15137
  %142 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx142 = getelementptr inbounds i32, i32* %142, i64 6
  %143 = load i32, i32* %arrayidx142, align 4, !tbaa !6
  %conv143 = sext i32 %143 to i64
  %mul144 = mul nsw i64 %conv143, -6270
  %add145 = add nsw i64 %mul141, %mul144
  store i64 %add145, i64* %tmp2, align 8, !tbaa !15
  %144 = load i64, i64* %tmp0, align 8, !tbaa !15
  %145 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add146 = add nsw i64 %144, %145
  store i64 %add146, i64* %tmp10, align 8, !tbaa !15
  %146 = load i64, i64* %tmp0, align 8, !tbaa !15
  %147 = load i64, i64* %tmp2, align 8, !tbaa !15
  %sub147 = sub nsw i64 %146, %147
  store i64 %sub147, i64* %tmp12, align 8, !tbaa !15
  %148 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx148 = getelementptr inbounds i32, i32* %148, i64 7
  %149 = load i32, i32* %arrayidx148, align 4, !tbaa !6
  %conv149 = sext i32 %149 to i64
  store i64 %conv149, i64* %z1, align 8, !tbaa !15
  %150 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx150 = getelementptr inbounds i32, i32* %150, i64 5
  %151 = load i32, i32* %arrayidx150, align 4, !tbaa !6
  %conv151 = sext i32 %151 to i64
  store i64 %conv151, i64* %z2, align 8, !tbaa !15
  %152 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx152 = getelementptr inbounds i32, i32* %152, i64 3
  %153 = load i32, i32* %arrayidx152, align 4, !tbaa !6
  %conv153 = sext i32 %153 to i64
  store i64 %conv153, i64* %z3, align 8, !tbaa !15
  %154 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx154 = getelementptr inbounds i32, i32* %154, i64 1
  %155 = load i32, i32* %arrayidx154, align 4, !tbaa !6
  %conv155 = sext i32 %155 to i64
  store i64 %conv155, i64* %z4, align 8, !tbaa !15
  %156 = load i64, i64* %z1, align 8, !tbaa !15
  %mul156 = mul nsw i64 %156, -1730
  %157 = load i64, i64* %z2, align 8, !tbaa !15
  %mul157 = mul nsw i64 %157, 11893
  %add158 = add nsw i64 %mul156, %mul157
  %158 = load i64, i64* %z3, align 8, !tbaa !15
  %mul159 = mul nsw i64 %158, -17799
  %add160 = add nsw i64 %add158, %mul159
  %159 = load i64, i64* %z4, align 8, !tbaa !15
  %mul161 = mul nsw i64 %159, 8697
  %add162 = add nsw i64 %add160, %mul161
  store i64 %add162, i64* %tmp0, align 8, !tbaa !15
  %160 = load i64, i64* %z1, align 8, !tbaa !15
  %mul163 = mul nsw i64 %160, -4176
  %161 = load i64, i64* %z2, align 8, !tbaa !15
  %mul164 = mul nsw i64 %161, -4926
  %add165 = add nsw i64 %mul163, %mul164
  %162 = load i64, i64* %z3, align 8, !tbaa !15
  %mul166 = mul nsw i64 %162, 7373
  %add167 = add nsw i64 %add165, %mul166
  %163 = load i64, i64* %z4, align 8, !tbaa !15
  %mul168 = mul nsw i64 %163, 20995
  %add169 = add nsw i64 %add167, %mul168
  store i64 %add169, i64* %tmp2, align 8, !tbaa !15
  %164 = load i64, i64* %tmp10, align 8, !tbaa !15
  %165 = load i64, i64* %tmp2, align 8, !tbaa !15
  %add170 = add nsw i64 %164, %165
  %add171 = add nsw i64 %add170, 262144
  %shr172 = ashr i64 %add171, 19
  %conv173 = trunc i64 %shr172 to i32
  %and174 = and i32 %conv173, 1023
  %idxprom175 = sext i32 %and174 to i64
  %166 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx176 = getelementptr inbounds i8, i8* %166, i64 %idxprom175
  %167 = load i8, i8* %arrayidx176, align 1, !tbaa !17
  %168 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx177 = getelementptr inbounds i8, i8* %168, i64 0
  store i8 %167, i8* %arrayidx177, align 1, !tbaa !17
  %169 = load i64, i64* %tmp10, align 8, !tbaa !15
  %170 = load i64, i64* %tmp2, align 8, !tbaa !15
  %sub178 = sub nsw i64 %169, %170
  %add179 = add nsw i64 %sub178, 262144
  %shr180 = ashr i64 %add179, 19
  %conv181 = trunc i64 %shr180 to i32
  %and182 = and i32 %conv181, 1023
  %idxprom183 = sext i32 %and182 to i64
  %171 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx184 = getelementptr inbounds i8, i8* %171, i64 %idxprom183
  %172 = load i8, i8* %arrayidx184, align 1, !tbaa !17
  %173 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx185 = getelementptr inbounds i8, i8* %173, i64 3
  store i8 %172, i8* %arrayidx185, align 1, !tbaa !17
  %174 = load i64, i64* %tmp12, align 8, !tbaa !15
  %175 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add186 = add nsw i64 %174, %175
  %add187 = add nsw i64 %add186, 262144
  %shr188 = ashr i64 %add187, 19
  %conv189 = trunc i64 %shr188 to i32
  %and190 = and i32 %conv189, 1023
  %idxprom191 = sext i32 %and190 to i64
  %176 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx192 = getelementptr inbounds i8, i8* %176, i64 %idxprom191
  %177 = load i8, i8* %arrayidx192, align 1, !tbaa !17
  %178 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx193 = getelementptr inbounds i8, i8* %178, i64 1
  store i8 %177, i8* %arrayidx193, align 1, !tbaa !17
  %179 = load i64, i64* %tmp12, align 8, !tbaa !15
  %180 = load i64, i64* %tmp0, align 8, !tbaa !15
  %sub194 = sub nsw i64 %179, %180
  %add195 = add nsw i64 %sub194, 262144
  %shr196 = ashr i64 %add195, 19
  %conv197 = trunc i64 %shr196 to i32
  %and198 = and i32 %conv197, 1023
  %idxprom199 = sext i32 %and198 to i64
  %181 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx200 = getelementptr inbounds i8, i8* %181, i64 %idxprom199
  %182 = load i8, i8* %arrayidx200, align 1, !tbaa !17
  %183 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx201 = getelementptr inbounds i8, i8* %183, i64 2
  store i8 %182, i8* %arrayidx201, align 1, !tbaa !17
  %184 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %add.ptr202 = getelementptr inbounds i32, i32* %184, i64 8
  store i32* %add.ptr202, i32** %wsptr, align 8, !tbaa !2
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.135, %if.then.121
  %185 = load i32, i32* %ctr, align 4, !tbaa !6
  %inc = add nsw i32 %185, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.102

for.end.204:                                      ; preds = %for.cond.102
  %186 = bitcast [32 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 128, i8* %186) #2
  %187 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %188 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #2
  %189 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  %190 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #2
  %191 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #2
  %192 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #2
  %193 = bitcast i64* %z4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #2
  %194 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %195 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  %196 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #2
  %197 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #2
  %198 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #2
  %199 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #2
  %200 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @jpeg_idct_2x2(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %inptr = alloca i16*, align 8
  %quantptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [16 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval81 = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i16* %coef_block, i16** %coef_block.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_col, i32* %output_col.addr, align 4, !tbaa !6
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 61
  %9 = load i8*, i8** %sample_range_limit, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 128
  store i8* %add.ptr, i8** %range_limit, align 8, !tbaa !2
  %10 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast [16 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 64, i8* %11) #2
  %12 = load i16*, i16** %coef_block.addr, align 8, !tbaa !2
  store i16* %12, i16** %inptr, align 8, !tbaa !2
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i32 0, i32 20
  %14 = load i8*, i8** %dct_table, align 8, !tbaa !12
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %quantptr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %wsptr, align 8, !tbaa !2
  store i32 8, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp1 = icmp eq i32 %17, 6
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp2 = icmp eq i32 %18, 4
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %19 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp4 = icmp eq i32 %19, 2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.3
  %20 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %20, i64 8
  %21 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv = sext i16 %21 to i32
  %22 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i16, i16* %22, i64 24
  %23 = load i16, i16* %arrayidx5, align 2, !tbaa !14
  %conv6 = sext i16 %23 to i32
  %or = or i32 %conv, %conv6
  %24 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i16, i16* %24, i64 40
  %25 = load i16, i16* %arrayidx7, align 2, !tbaa !14
  %conv8 = sext i16 %25 to i32
  %or9 = or i32 %or, %conv8
  %26 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i16, i16* %26, i64 56
  %27 = load i16, i16* %arrayidx10, align 2, !tbaa !14
  %conv11 = sext i16 %27 to i32
  %or12 = or i32 %or9, %conv11
  %cmp13 = icmp eq i32 %or12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end
  %28 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds i16, i16* %29, i64 0
  %30 = load i16, i16* %arrayidx16, align 2, !tbaa !14
  %conv17 = sext i16 %30 to i32
  %31 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx18, align 4, !tbaa !6
  %mul = mul nsw i32 %conv17, %32
  %shl = shl i32 %mul, 2
  store i32 %shl, i32* %dcval, align 4, !tbaa !6
  %33 = load i32, i32* %dcval, align 4, !tbaa !6
  %34 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %arrayidx19, align 4, !tbaa !6
  %35 = load i32, i32* %dcval, align 4, !tbaa !6
  %36 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i32, i32* %36, i64 8
  store i32 %35, i32* %arrayidx20, align 4, !tbaa !6
  %37 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  br label %for.inc

if.end.21:                                        ; preds = %if.end
  %38 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i16, i16* %38, i64 0
  %39 = load i16, i16* %arrayidx22, align 2, !tbaa !14
  %conv23 = sext i16 %39 to i32
  %40 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i32, i32* %40, i64 0
  %41 = load i32, i32* %arrayidx24, align 4, !tbaa !6
  %mul25 = mul nsw i32 %conv23, %41
  %conv26 = sext i32 %mul25 to i64
  store i64 %conv26, i64* %z1, align 8, !tbaa !15
  %42 = load i64, i64* %z1, align 8, !tbaa !15
  %shl27 = shl i64 %42, 15
  store i64 %shl27, i64* %tmp10, align 8, !tbaa !15
  %43 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds i16, i16* %43, i64 56
  %44 = load i16, i16* %arrayidx28, align 2, !tbaa !14
  %conv29 = sext i16 %44 to i32
  %45 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i32, i32* %45, i64 56
  %46 = load i32, i32* %arrayidx30, align 4, !tbaa !6
  %mul31 = mul nsw i32 %conv29, %46
  %conv32 = sext i32 %mul31 to i64
  store i64 %conv32, i64* %z1, align 8, !tbaa !15
  %47 = load i64, i64* %z1, align 8, !tbaa !15
  %mul33 = mul nsw i64 %47, -5906
  store i64 %mul33, i64* %tmp0, align 8, !tbaa !15
  %48 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds i16, i16* %48, i64 40
  %49 = load i16, i16* %arrayidx34, align 2, !tbaa !14
  %conv35 = sext i16 %49 to i32
  %50 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds i32, i32* %50, i64 40
  %51 = load i32, i32* %arrayidx36, align 4, !tbaa !6
  %mul37 = mul nsw i32 %conv35, %51
  %conv38 = sext i32 %mul37 to i64
  store i64 %conv38, i64* %z1, align 8, !tbaa !15
  %52 = load i64, i64* %z1, align 8, !tbaa !15
  %mul39 = mul nsw i64 %52, 6967
  %53 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add = add nsw i64 %53, %mul39
  store i64 %add, i64* %tmp0, align 8, !tbaa !15
  %54 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i16, i16* %54, i64 24
  %55 = load i16, i16* %arrayidx40, align 2, !tbaa !14
  %conv41 = sext i16 %55 to i32
  %56 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i32, i32* %56, i64 24
  %57 = load i32, i32* %arrayidx42, align 4, !tbaa !6
  %mul43 = mul nsw i32 %conv41, %57
  %conv44 = sext i32 %mul43 to i64
  store i64 %conv44, i64* %z1, align 8, !tbaa !15
  %58 = load i64, i64* %z1, align 8, !tbaa !15
  %mul45 = mul nsw i64 %58, -10426
  %59 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add46 = add nsw i64 %59, %mul45
  store i64 %add46, i64* %tmp0, align 8, !tbaa !15
  %60 = load i16*, i16** %inptr, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds i16, i16* %60, i64 8
  %61 = load i16, i16* %arrayidx47, align 2, !tbaa !14
  %conv48 = sext i16 %61 to i32
  %62 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx49 = getelementptr inbounds i32, i32* %62, i64 8
  %63 = load i32, i32* %arrayidx49, align 4, !tbaa !6
  %mul50 = mul nsw i32 %conv48, %63
  %conv51 = sext i32 %mul50 to i64
  store i64 %conv51, i64* %z1, align 8, !tbaa !15
  %64 = load i64, i64* %z1, align 8, !tbaa !15
  %mul52 = mul nsw i64 %64, 29692
  %65 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add53 = add nsw i64 %65, %mul52
  store i64 %add53, i64* %tmp0, align 8, !tbaa !15
  %66 = load i64, i64* %tmp10, align 8, !tbaa !15
  %67 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add54 = add nsw i64 %66, %67
  %add55 = add nsw i64 %add54, 4096
  %shr = ashr i64 %add55, 13
  %conv56 = trunc i64 %shr to i32
  %68 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %conv56, i32* %arrayidx57, align 4, !tbaa !6
  %69 = load i64, i64* %tmp10, align 8, !tbaa !15
  %70 = load i64, i64* %tmp0, align 8, !tbaa !15
  %sub = sub nsw i64 %69, %70
  %add58 = add nsw i64 %sub, 4096
  %shr59 = ashr i64 %add58, 13
  %conv60 = trunc i64 %shr59 to i32
  %71 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds i32, i32* %71, i64 8
  store i32 %conv60, i32* %arrayidx61, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %if.end.21, %if.then.15, %if.then
  %72 = load i16*, i16** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %72, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8, !tbaa !2
  %73 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %incdec.ptr62 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %incdec.ptr62, i32** %quantptr, align 8, !tbaa !2
  %74 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %incdec.ptr63 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %incdec.ptr63, i32** %wsptr, align 8, !tbaa !2
  %75 = load i32, i32* %ctr, align 4, !tbaa !6
  %dec = add nsw i32 %75, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay64 = getelementptr inbounds [16 x i32], [16 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay64, i32** %wsptr, align 8, !tbaa !2
  store i32 0, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.128, %for.end
  %76 = load i32, i32* %ctr, align 4, !tbaa !6
  %cmp66 = icmp slt i32 %76, 2
  br i1 %cmp66, label %for.body.68, label %for.end.129

for.body.68:                                      ; preds = %for.cond.65
  %77 = load i32, i32* %ctr, align 4, !tbaa !6
  %idxprom = sext i32 %77 to i64
  %78 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds i8*, i8** %78, i64 %idxprom
  %79 = load i8*, i8** %arrayidx69, align 8, !tbaa !2
  %80 = load i32, i32* %output_col.addr, align 4, !tbaa !6
  %idx.ext = zext i32 %80 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %79, i64 %idx.ext
  store i8* %add.ptr70, i8** %outptr, align 8, !tbaa !2
  %81 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds i32, i32* %81, i64 1
  %82 = load i32, i32* %arrayidx71, align 4, !tbaa !6
  %83 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds i32, i32* %83, i64 3
  %84 = load i32, i32* %arrayidx72, align 4, !tbaa !6
  %or73 = or i32 %82, %84
  %85 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx74 = getelementptr inbounds i32, i32* %85, i64 5
  %86 = load i32, i32* %arrayidx74, align 4, !tbaa !6
  %or75 = or i32 %or73, %86
  %87 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds i32, i32* %87, i64 7
  %88 = load i32, i32* %arrayidx76, align 4, !tbaa !6
  %or77 = or i32 %or75, %88
  %cmp78 = icmp eq i32 %or77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.92

if.then.80:                                       ; preds = %for.body.68
  call void @llvm.lifetime.start(i64 1, i8* %dcval81) #2
  %89 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx82 = getelementptr inbounds i32, i32* %89, i64 0
  %90 = load i32, i32* %arrayidx82, align 4, !tbaa !6
  %conv83 = sext i32 %90 to i64
  %add84 = add nsw i64 %conv83, 16
  %shr85 = ashr i64 %add84, 5
  %conv86 = trunc i64 %shr85 to i32
  %and = and i32 %conv86, 1023
  %idxprom87 = sext i32 %and to i64
  %91 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx88 = getelementptr inbounds i8, i8* %91, i64 %idxprom87
  %92 = load i8, i8* %arrayidx88, align 1, !tbaa !17
  store i8 %92, i8* %dcval81, align 1, !tbaa !17
  %93 = load i8, i8* %dcval81, align 1, !tbaa !17
  %94 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 %93, i8* %arrayidx89, align 1, !tbaa !17
  %95 = load i8, i8* %dcval81, align 1, !tbaa !17
  %96 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds i8, i8* %96, i64 1
  store i8 %95, i8* %arrayidx90, align 1, !tbaa !17
  %97 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %add.ptr91 = getelementptr inbounds i32, i32* %97, i64 8
  store i32* %add.ptr91, i32** %wsptr, align 8, !tbaa !2
  call void @llvm.lifetime.end(i64 1, i8* %dcval81) #2
  br label %for.inc.128

if.end.92:                                        ; preds = %for.body.68
  %98 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds i32, i32* %98, i64 0
  %99 = load i32, i32* %arrayidx93, align 4, !tbaa !6
  %conv94 = sext i32 %99 to i64
  %shl95 = shl i64 %conv94, 15
  store i64 %shl95, i64* %tmp10, align 8, !tbaa !15
  %100 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds i32, i32* %100, i64 7
  %101 = load i32, i32* %arrayidx96, align 4, !tbaa !6
  %conv97 = sext i32 %101 to i64
  %mul98 = mul nsw i64 %conv97, -5906
  %102 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx99 = getelementptr inbounds i32, i32* %102, i64 5
  %103 = load i32, i32* %arrayidx99, align 4, !tbaa !6
  %conv100 = sext i32 %103 to i64
  %mul101 = mul nsw i64 %conv100, 6967
  %add102 = add nsw i64 %mul98, %mul101
  %104 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx103 = getelementptr inbounds i32, i32* %104, i64 3
  %105 = load i32, i32* %arrayidx103, align 4, !tbaa !6
  %conv104 = sext i32 %105 to i64
  %mul105 = mul nsw i64 %conv104, -10426
  %add106 = add nsw i64 %add102, %mul105
  %106 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %arrayidx107 = getelementptr inbounds i32, i32* %106, i64 1
  %107 = load i32, i32* %arrayidx107, align 4, !tbaa !6
  %conv108 = sext i32 %107 to i64
  %mul109 = mul nsw i64 %conv108, 29692
  %add110 = add nsw i64 %add106, %mul109
  store i64 %add110, i64* %tmp0, align 8, !tbaa !15
  %108 = load i64, i64* %tmp10, align 8, !tbaa !15
  %109 = load i64, i64* %tmp0, align 8, !tbaa !15
  %add111 = add nsw i64 %108, %109
  %add112 = add nsw i64 %add111, 524288
  %shr113 = ashr i64 %add112, 20
  %conv114 = trunc i64 %shr113 to i32
  %and115 = and i32 %conv114, 1023
  %idxprom116 = sext i32 %and115 to i64
  %110 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds i8, i8* %110, i64 %idxprom116
  %111 = load i8, i8* %arrayidx117, align 1, !tbaa !17
  %112 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx118 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 %111, i8* %arrayidx118, align 1, !tbaa !17
  %113 = load i64, i64* %tmp10, align 8, !tbaa !15
  %114 = load i64, i64* %tmp0, align 8, !tbaa !15
  %sub119 = sub nsw i64 %113, %114
  %add120 = add nsw i64 %sub119, 524288
  %shr121 = ashr i64 %add120, 20
  %conv122 = trunc i64 %shr121 to i32
  %and123 = and i32 %conv122, 1023
  %idxprom124 = sext i32 %and123 to i64
  %115 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx125 = getelementptr inbounds i8, i8* %115, i64 %idxprom124
  %116 = load i8, i8* %arrayidx125, align 1, !tbaa !17
  %117 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds i8, i8* %117, i64 1
  store i8 %116, i8* %arrayidx126, align 1, !tbaa !17
  %118 = load i32*, i32** %wsptr, align 8, !tbaa !2
  %add.ptr127 = getelementptr inbounds i32, i32* %118, i64 8
  store i32* %add.ptr127, i32** %wsptr, align 8, !tbaa !2
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.92, %if.then.80
  %119 = load i32, i32* %ctr, align 4, !tbaa !6
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !6
  br label %for.cond.65

for.end.129:                                      ; preds = %for.cond.65
  %120 = bitcast [16 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 64, i8* %120) #2
  %121 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #2
  %123 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  %126 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %127 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %129 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_idct_1x1(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %dcval = alloca i32, align 4
  %quantptr = alloca i32*, align 8
  %range_limit = alloca i8*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i16* %coef_block, i16** %coef_block.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_col, i32* %output_col.addr, align 4, !tbaa !6
  %0 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 61
  %4 = load i8*, i8** %sample_range_limit, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 128
  store i8* %add.ptr, i8** %range_limit, align 8, !tbaa !2
  %5 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %5, i32 0, i32 20
  %6 = load i8*, i8** %dct_table, align 8, !tbaa !12
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %quantptr, align 8, !tbaa !2
  %8 = load i16*, i16** %coef_block.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv = sext i16 %9 to i32
  %10 = load i32*, i32** %quantptr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx1, align 4, !tbaa !6
  %mul = mul nsw i32 %conv, %11
  store i32 %mul, i32* %dcval, align 4, !tbaa !6
  %12 = load i32, i32* %dcval, align 4, !tbaa !6
  %conv2 = sext i32 %12 to i64
  %add = add nsw i64 %conv2, 4
  %shr = ashr i64 %add, 3
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, i32* %dcval, align 4, !tbaa !6
  %13 = load i32, i32* %dcval, align 4, !tbaa !6
  %and = and i32 %13, 1023
  %idxprom = sext i32 %and to i64
  %14 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx4, align 1, !tbaa !17
  %16 = load i32, i32* %output_col.addr, align 4, !tbaa !6
  %idxprom5 = zext i32 %16 to i64
  %17 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx6, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8, i8* %18, i64 %idxprom5
  store i8 %15, i8* %arrayidx7, align 1, !tbaa !17
  %19 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
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
