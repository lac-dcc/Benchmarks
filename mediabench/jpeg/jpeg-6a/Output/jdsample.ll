; ModuleID = 'jdsample.c'
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
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.my_upsampler = type { %struct.jpeg_upsampler, [10 x i8**], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], i32, i32, [10 x i32], [10 x i8], [10 x i8] }

; Function Attrs: nounwind ssp uwtable
define void @jinit_upsampler(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %need_buffer = alloca i32, align 4
  %do_fancy = alloca i32, align 4
  %h_in_group = alloca i32, align 4
  %v_in_group = alloca i32, align 4
  %h_out_group = alloca i32, align 4
  %v_out_group = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast i32* %need_buffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %do_fancy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %h_in_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %v_in_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %h_out_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %v_out_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 0
  %11 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %13 = bitcast %struct.jpeg_decompress_struct* %12 to %struct.jpeg_common_struct*
  %call = call i8* %11(%struct.jpeg_common_struct* %13, i32 1, i64 256)
  %14 = bitcast i8* %call to %struct.my_upsampler*
  store %struct.my_upsampler* %14, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %15 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %16 = bitcast %struct.my_upsampler* %15 to %struct.jpeg_upsampler*
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 81
  store %struct.jpeg_upsampler* %16, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %18 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %18, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_upsample, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8, !tbaa !15
  %19 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %19, i32 0, i32 0
  %upsample4 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub3, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @sep_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample4, align 8, !tbaa !18
  %20 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %20, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub5, i32 0, i32 2
  store i32 0, i32* %need_context_rows, align 4, !tbaa !19
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 56
  %22 = load i32, i32* %CCIR601_sampling, align 4, !tbaa !20
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !21
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 23, i32* %msg_code, align 4, !tbaa !22
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !21
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !24
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %29 = bitcast %struct.jpeg_decompress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* %29)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 17
  %31 = load i32, i32* %do_fancy_upsampling, align 4, !tbaa !25
  %tobool7 = icmp ne i32 %31, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 59
  %33 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !26
  %cmp = icmp sgt i32 %33, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %34 = phi i1 [ false, %if.end ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  store i32 %land.ext, i32* %do_fancy, align 4, !tbaa !27
  store i32 0, i32* %ci, align 4, !tbaa !27
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 43
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !28
  store %struct.jpeg_component_info* %36, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %37 = load i32, i32* %ci, align 4, !tbaa !27
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 8
  %39 = load i32, i32* %num_components, align 4, !tbaa !29
  %cmp8 = icmp slt i32 %37, %39
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 2
  %41 = load i32, i32* %h_samp_factor, align 4, !tbaa !30
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 9
  %43 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !32
  %mul = mul nsw i32 %41, %43
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 59
  %45 = load i32, i32* %min_DCT_scaled_size9, align 4, !tbaa !26
  %div = sdiv i32 %mul, %45
  store i32 %div, i32* %h_in_group, align 4, !tbaa !27
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 3
  %47 = load i32, i32* %v_samp_factor, align 4, !tbaa !33
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 0, i32 9
  %49 = load i32, i32* %DCT_scaled_size10, align 4, !tbaa !32
  %mul11 = mul nsw i32 %47, %49
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 59
  %51 = load i32, i32* %min_DCT_scaled_size12, align 4, !tbaa !26
  %div13 = sdiv i32 %mul11, %51
  store i32 %div13, i32* %v_in_group, align 4, !tbaa !27
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 57
  %53 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !34
  store i32 %53, i32* %h_out_group, align 4, !tbaa !27
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 58
  %55 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  store i32 %55, i32* %v_out_group, align 4, !tbaa !27
  %56 = load i32, i32* %v_in_group, align 4, !tbaa !27
  %57 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom = sext i32 %57 to i64
  %58 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rowgroup_height = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %58, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %rowgroup_height, i32 0, i64 %idxprom
  store i32 %56, i32* %arrayidx, align 4, !tbaa !27
  store i32 1, i32* %need_buffer, align 4, !tbaa !27
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i32 0, i32 12
  %60 = load i32, i32* %component_needed, align 4, !tbaa !36
  %tobool14 = icmp ne i32 %60, 0
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %for.body
  %61 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom16 = sext i32 %61 to i64
  %62 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %methods = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %62, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods, i32 0, i64 %idxprom16
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @noop_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx17, align 8, !tbaa !2
  store i32 0, i32* %need_buffer, align 4, !tbaa !27
  br label %if.end.89

if.else:                                          ; preds = %for.body
  %63 = load i32, i32* %h_in_group, align 4, !tbaa !27
  %64 = load i32, i32* %h_out_group, align 4, !tbaa !27
  %cmp18 = icmp eq i32 %63, %64
  br i1 %cmp18, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else
  %65 = load i32, i32* %v_in_group, align 4, !tbaa !27
  %66 = load i32, i32* %v_out_group, align 4, !tbaa !27
  %cmp19 = icmp eq i32 %65, %66
  br i1 %cmp19, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %land.lhs.true
  %67 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom21 = sext i32 %67 to i64
  %68 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %methods22 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %68, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods22, i32 0, i64 %idxprom21
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @fullsize_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx23, align 8, !tbaa !2
  store i32 0, i32* %need_buffer, align 4, !tbaa !27
  br label %if.end.88

if.else.24:                                       ; preds = %land.lhs.true, %if.else
  %69 = load i32, i32* %h_in_group, align 4, !tbaa !27
  %mul25 = mul nsw i32 %69, 2
  %70 = load i32, i32* %h_out_group, align 4, !tbaa !27
  %cmp26 = icmp eq i32 %mul25, %70
  br i1 %cmp26, label %land.lhs.true.27, label %if.else.42

land.lhs.true.27:                                 ; preds = %if.else.24
  %71 = load i32, i32* %v_in_group, align 4, !tbaa !27
  %72 = load i32, i32* %v_out_group, align 4, !tbaa !27
  %cmp28 = icmp eq i32 %71, %72
  br i1 %cmp28, label %if.then.29, label %if.else.42

if.then.29:                                       ; preds = %land.lhs.true.27
  %73 = load i32, i32* %do_fancy, align 4, !tbaa !27
  %tobool30 = icmp ne i32 %73, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.37

land.lhs.true.31:                                 ; preds = %if.then.29
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 10
  %75 = load i32, i32* %downsampled_width, align 4, !tbaa !37
  %cmp32 = icmp ugt i32 %75, 2
  br i1 %cmp32, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %land.lhs.true.31
  %76 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom34 = sext i32 %76 to i64
  %77 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %methods35 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %77, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods35, i32 0, i64 %idxprom34
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v1_fancy_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx36, align 8, !tbaa !2
  br label %if.end.41

if.else.37:                                       ; preds = %land.lhs.true.31, %if.then.29
  %78 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom38 = sext i32 %78 to i64
  %79 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %methods39 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %79, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods39, i32 0, i64 %idxprom38
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v1_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx40, align 8, !tbaa !2
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %if.then.33
  br label %if.end.87

if.else.42:                                       ; preds = %land.lhs.true.27, %if.else.24
  %80 = load i32, i32* %h_in_group, align 4, !tbaa !27
  %mul43 = mul nsw i32 %80, 2
  %81 = load i32, i32* %h_out_group, align 4, !tbaa !27
  %cmp44 = icmp eq i32 %mul43, %81
  br i1 %cmp44, label %land.lhs.true.45, label %if.else.64

land.lhs.true.45:                                 ; preds = %if.else.42
  %82 = load i32, i32* %v_in_group, align 4, !tbaa !27
  %mul46 = mul nsw i32 %82, 2
  %83 = load i32, i32* %v_out_group, align 4, !tbaa !27
  %cmp47 = icmp eq i32 %mul46, %83
  br i1 %cmp47, label %if.then.48, label %if.else.64

if.then.48:                                       ; preds = %land.lhs.true.45
  %84 = load i32, i32* %do_fancy, align 4, !tbaa !27
  %tobool49 = icmp ne i32 %84, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.else.59

land.lhs.true.50:                                 ; preds = %if.then.48
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %downsampled_width51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 10
  %86 = load i32, i32* %downsampled_width51, align 4, !tbaa !37
  %cmp52 = icmp ugt i32 %86, 2
  br i1 %cmp52, label %if.then.53, label %if.else.59

if.then.53:                                       ; preds = %land.lhs.true.50
  %87 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom54 = sext i32 %87 to i64
  %88 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %methods55 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %88, i32 0, i32 2
  %arrayidx56 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods55, i32 0, i64 %idxprom54
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v2_fancy_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx56, align 8, !tbaa !2
  %89 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %pub57 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %89, i32 0, i32 0
  %need_context_rows58 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub57, i32 0, i32 2
  store i32 1, i32* %need_context_rows58, align 4, !tbaa !19
  br label %if.end.63

if.else.59:                                       ; preds = %land.lhs.true.50, %if.then.48
  %90 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom60 = sext i32 %90 to i64
  %91 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %methods61 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %91, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods61, i32 0, i64 %idxprom60
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v2_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx62, align 8, !tbaa !2
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.59, %if.then.53
  br label %if.end.86

if.else.64:                                       ; preds = %land.lhs.true.45, %if.else.42
  %92 = load i32, i32* %h_out_group, align 4, !tbaa !27
  %93 = load i32, i32* %h_in_group, align 4, !tbaa !27
  %rem = srem i32 %92, %93
  %cmp65 = icmp eq i32 %rem, 0
  br i1 %cmp65, label %land.lhs.true.66, label %if.else.80

land.lhs.true.66:                                 ; preds = %if.else.64
  %94 = load i32, i32* %v_out_group, align 4, !tbaa !27
  %95 = load i32, i32* %v_in_group, align 4, !tbaa !27
  %rem67 = srem i32 %94, %95
  %cmp68 = icmp eq i32 %rem67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.80

if.then.69:                                       ; preds = %land.lhs.true.66
  %96 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom70 = sext i32 %96 to i64
  %97 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %methods71 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %97, i32 0, i32 2
  %arrayidx72 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods71, i32 0, i64 %idxprom70
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @int_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx72, align 8, !tbaa !2
  %98 = load i32, i32* %h_out_group, align 4, !tbaa !27
  %99 = load i32, i32* %h_in_group, align 4, !tbaa !27
  %div73 = sdiv i32 %98, %99
  %conv = trunc i32 %div73 to i8
  %100 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom74 = sext i32 %100 to i64
  %101 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %h_expand = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %101, i32 0, i32 6
  %arrayidx75 = getelementptr inbounds [10 x i8], [10 x i8]* %h_expand, i32 0, i64 %idxprom74
  store i8 %conv, i8* %arrayidx75, align 1, !tbaa !38
  %102 = load i32, i32* %v_out_group, align 4, !tbaa !27
  %103 = load i32, i32* %v_in_group, align 4, !tbaa !27
  %div76 = sdiv i32 %102, %103
  %conv77 = trunc i32 %div76 to i8
  %104 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom78 = sext i32 %104 to i64
  %105 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %v_expand = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %105, i32 0, i32 7
  %arrayidx79 = getelementptr inbounds [10 x i8], [10 x i8]* %v_expand, i32 0, i64 %idxprom78
  store i8 %conv77, i8* %arrayidx79, align 1, !tbaa !38
  br label %if.end.85

if.else.80:                                       ; preds = %land.lhs.true.66, %if.else.64
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 0
  %107 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8, !tbaa !21
  %msg_code82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %107, i32 0, i32 5
  store i32 37, i32* %msg_code82, align 4, !tbaa !22
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err83, align 8, !tbaa !21
  %error_exit84 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 0
  %110 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit84, align 8, !tbaa !24
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %112 = bitcast %struct.jpeg_decompress_struct* %111 to %struct.jpeg_common_struct*
  call void %110(%struct.jpeg_common_struct* %112)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.80, %if.then.69
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.63
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.41
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.20
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.15
  %113 = load i32, i32* %need_buffer, align 4, !tbaa !27
  %tobool90 = icmp ne i32 %113, 0
  br i1 %tobool90, label %if.then.91, label %if.end.102

if.then.91:                                       ; preds = %if.end.89
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 1
  %115 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem92, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %115, i32 0, i32 2
  %116 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !39
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %118 = bitcast %struct.jpeg_decompress_struct* %117 to %struct.jpeg_common_struct*
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 26
  %120 = load i32, i32* %output_width, align 4, !tbaa !40
  %conv93 = zext i32 %120 to i64
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 57
  %122 = load i32, i32* %max_h_samp_factor94, align 4, !tbaa !34
  %conv95 = sext i32 %122 to i64
  %call96 = call i64 @jround_up(i64 %conv93, i64 %conv95)
  %conv97 = trunc i64 %call96 to i32
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 58
  %124 = load i32, i32* %max_v_samp_factor98, align 4, !tbaa !35
  %call99 = call i8** %116(%struct.jpeg_common_struct* %118, i32 1, i32 %conv97, i32 %124)
  %125 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom100 = sext i32 %125 to i64
  %126 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %color_buf = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %126, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i64 %idxprom100
  store i8** %call99, i8*** %arrayidx101, align 8, !tbaa !2
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.91, %if.end.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %127 = load i32, i32* %ci, align 4, !tbaa !27
  %inc = add nsw i32 %127, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !27
  %128 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %128, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %129 = bitcast i32* %v_out_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #3
  %130 = bitcast i32* %h_out_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #3
  %131 = bitcast i32* %v_in_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #3
  %132 = bitcast i32* %h_in_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #3
  %133 = bitcast i32* %do_fancy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #3
  %134 = bitcast i32* %need_buffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #3
  %135 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #3
  %136 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #3
  %137 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_upsample(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 81
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 58
  %5 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %6 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %next_row_out = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %6, i32 0, i32 3
  store i32 %5, i32* %next_row_out, align 4, !tbaa !41
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 27
  %8 = load i32, i32* %output_height, align 4, !tbaa !42
  %9 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %9, i32 0, i32 4
  store i32 %8, i32* %rows_to_go, align 4, !tbaa !43
  %10 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @sep_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca %struct.my_upsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %num_rows = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !2
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 81
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %next_row_out = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i32 0, i32 3
  %8 = load i32, i32* %next_row_out, align 4, !tbaa !41
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 58
  %10 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp sge i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %ci, align 4, !tbaa !27
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 43
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !28
  store %struct.jpeg_component_info* %12, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %ci, align 4, !tbaa !27
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 8
  %15 = load i32, i32* %num_components, align 4, !tbaa !29
  %cmp2 = icmp slt i32 %13, %15
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %methods = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %17, i32 0, i32 2
  %arrayidx = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods, i32 0, i64 %idxprom
  %18 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx, align 8, !tbaa !2
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %21 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom3 = sext i32 %21 to i64
  %22 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8**, i8*** %22, i64 %idxprom3
  %23 = load i8**, i8*** %arrayidx4, align 8, !tbaa !2
  %24 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  %25 = load i32, i32* %24, align 4, !tbaa !27
  %26 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom5 = sext i32 %26 to i64
  %27 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rowgroup_height = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %27, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %rowgroup_height, i32 0, i64 %idxprom5
  %28 = load i32, i32* %arrayidx6, align 4, !tbaa !27
  %mul = mul i32 %25, %28
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8*, i8** %23, i64 %idx.ext
  %29 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %color_buf = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %29, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i32 0
  %30 = load i32, i32* %ci, align 4, !tbaa !27
  %idx.ext7 = sext i32 %30 to i64
  %add.ptr8 = getelementptr inbounds i8**, i8*** %arraydecay, i64 %idx.ext7
  call void %18(%struct.jpeg_decompress_struct* %19, %struct.jpeg_component_info* %20, i8** %add.ptr, i8*** %add.ptr8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %ci, align 4, !tbaa !27
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !27
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %next_row_out9 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %33, i32 0, i32 3
  store i32 0, i32* %next_row_out9, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 58
  %35 = load i32, i32* %max_v_samp_factor10, align 4, !tbaa !35
  %36 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %next_row_out11 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %36, i32 0, i32 3
  %37 = load i32, i32* %next_row_out11, align 4, !tbaa !41
  %sub = sub nsw i32 %35, %37
  store i32 %sub, i32* %num_rows, align 4, !tbaa !27
  %38 = load i32, i32* %num_rows, align 4, !tbaa !27
  %39 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %39, i32 0, i32 4
  %40 = load i32, i32* %rows_to_go, align 4, !tbaa !43
  %cmp12 = icmp ugt i32 %38, %40
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %41 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rows_to_go14 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %41, i32 0, i32 4
  %42 = load i32, i32* %rows_to_go14, align 4, !tbaa !43
  store i32 %42, i32* %num_rows, align 4, !tbaa !27
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  %43 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %44 = load i32, i32* %43, align 4, !tbaa !27
  %45 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !27
  %sub16 = sub i32 %45, %44
  store i32 %sub16, i32* %out_rows_avail.addr, align 4, !tbaa !27
  %46 = load i32, i32* %num_rows, align 4, !tbaa !27
  %47 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !27
  %cmp17 = icmp ugt i32 %46, %47
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  %48 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !27
  store i32 %48, i32* %num_rows, align 4, !tbaa !27
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.15
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 82
  %50 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert, align 8, !tbaa !44
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %50, i32 0, i32 1
  %51 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert, align 8, !tbaa !45
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %53 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %color_buf20 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %53, i32 0, i32 1
  %arraydecay21 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf20, i32 0, i32 0
  %54 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %next_row_out22 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %54, i32 0, i32 3
  %55 = load i32, i32* %next_row_out22, align 4, !tbaa !41
  %56 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %57 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %58 = load i32, i32* %57, align 4, !tbaa !27
  %idx.ext23 = zext i32 %58 to i64
  %add.ptr24 = getelementptr inbounds i8*, i8** %56, i64 %idx.ext23
  %59 = load i32, i32* %num_rows, align 4, !tbaa !27
  call void %51(%struct.jpeg_decompress_struct* %52, i8*** %arraydecay21, i32 %55, i8** %add.ptr24, i32 %59)
  %60 = load i32, i32* %num_rows, align 4, !tbaa !27
  %61 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %62 = load i32, i32* %61, align 4, !tbaa !27
  %add = add i32 %62, %60
  store i32 %add, i32* %61, align 4, !tbaa !27
  %63 = load i32, i32* %num_rows, align 4, !tbaa !27
  %64 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rows_to_go25 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %64, i32 0, i32 4
  %65 = load i32, i32* %rows_to_go25, align 4, !tbaa !43
  %sub26 = sub i32 %65, %63
  store i32 %sub26, i32* %rows_to_go25, align 4, !tbaa !43
  %66 = load i32, i32* %num_rows, align 4, !tbaa !27
  %67 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %next_row_out27 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %67, i32 0, i32 3
  %68 = load i32, i32* %next_row_out27, align 4, !tbaa !41
  %add28 = add i32 %68, %66
  store i32 %add28, i32* %next_row_out27, align 4, !tbaa !41
  %69 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %next_row_out29 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %69, i32 0, i32 3
  %70 = load i32, i32* %next_row_out29, align 4, !tbaa !41
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 58
  %72 = load i32, i32* %max_v_samp_factor30, align 4, !tbaa !35
  %cmp31 = icmp sge i32 %70, %72
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.19
  %73 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  %74 = load i32, i32* %73, align 4, !tbaa !27
  %inc33 = add i32 %74, 1
  store i32 %inc33, i32* %73, align 4, !tbaa !27
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.19
  %75 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #3
  %76 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #3
  %77 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @noop_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %0 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  store i8** null, i8*** %0, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fullsize_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %0 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %1 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  store i8** %0, i8*** %1, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v1_fancy_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %output_data = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %invalue = alloca i32, align 4
  %colctr = alloca i32, align 4
  %inrow = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %0 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %2 = load i8**, i8*** %1, align 8, !tbaa !2
  store i8** %2, i8*** %output_data, align 8, !tbaa !2
  %3 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %invalue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %colctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  store i32 0, i32* %inrow, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %8 = load i32, i32* %inrow, align 4, !tbaa !27
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 58
  %10 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %inrow, align 4, !tbaa !27
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %13, i8** %inptr, align 8, !tbaa !2
  %14 = load i32, i32* %inrow, align 4, !tbaa !27
  %idxprom1 = sext i32 %14 to i64
  %15 = load i8**, i8*** %output_data, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %15, i64 %idxprom1
  %16 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %16, i8** %outptr, align 8, !tbaa !2
  %17 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !2
  %18 = load i8, i8* %17, align 1, !tbaa !38
  %conv = zext i8 %18 to i32
  store i32 %conv, i32* %invalue, align 4, !tbaa !27
  %19 = load i32, i32* %invalue, align 4, !tbaa !27
  %conv3 = trunc i32 %19 to i8
  %20 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr4 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr4, i8** %outptr, align 8, !tbaa !2
  store i8 %conv3, i8* %20, align 1, !tbaa !38
  %21 = load i32, i32* %invalue, align 4, !tbaa !27
  %mul = mul nsw i32 %21, 3
  %22 = load i8*, i8** %inptr, align 8, !tbaa !2
  %23 = load i8, i8* %22, align 1, !tbaa !38
  %conv5 = zext i8 %23 to i32
  %add = add nsw i32 %mul, %conv5
  %add6 = add nsw i32 %add, 2
  %shr = ashr i32 %add6, 2
  %conv7 = trunc i32 %shr to i8
  %24 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr8 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr8, i8** %outptr, align 8, !tbaa !2
  store i8 %conv7, i8* %24, align 1, !tbaa !38
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 10
  %26 = load i32, i32* %downsampled_width, align 4, !tbaa !37
  %sub = sub i32 %26, 2
  store i32 %sub, i32* %colctr, align 4, !tbaa !27
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %colctr, align 4, !tbaa !27
  %cmp10 = icmp ugt i32 %27, 0
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %28 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr13 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr13, i8** %inptr, align 8, !tbaa !2
  %29 = load i8, i8* %28, align 1, !tbaa !38
  %conv14 = zext i8 %29 to i32
  %mul15 = mul nsw i32 %conv14, 3
  store i32 %mul15, i32* %invalue, align 4, !tbaa !27
  %30 = load i32, i32* %invalue, align 4, !tbaa !27
  %31 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds i8, i8* %31, i64 -2
  %32 = load i8, i8* %arrayidx16, align 1, !tbaa !38
  %conv17 = zext i8 %32 to i32
  %add18 = add nsw i32 %30, %conv17
  %add19 = add nsw i32 %add18, 1
  %shr20 = ashr i32 %add19, 2
  %conv21 = trunc i32 %shr20 to i8
  %33 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr22 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr22, i8** %outptr, align 8, !tbaa !2
  store i8 %conv21, i8* %33, align 1, !tbaa !38
  %34 = load i32, i32* %invalue, align 4, !tbaa !27
  %35 = load i8*, i8** %inptr, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !38
  %conv23 = zext i8 %36 to i32
  %add24 = add nsw i32 %34, %conv23
  %add25 = add nsw i32 %add24, 2
  %shr26 = ashr i32 %add25, 2
  %conv27 = trunc i32 %shr26 to i8
  %37 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr28 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr28, i8** %outptr, align 8, !tbaa !2
  store i8 %conv27, i8* %37, align 1, !tbaa !38
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %38 = load i32, i32* %colctr, align 4, !tbaa !27
  %dec = add i32 %38, -1
  store i32 %dec, i32* %colctr, align 4, !tbaa !27
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %39 = load i8*, i8** %inptr, align 8, !tbaa !2
  %40 = load i8, i8* %39, align 1, !tbaa !38
  %conv29 = zext i8 %40 to i32
  store i32 %conv29, i32* %invalue, align 4, !tbaa !27
  %41 = load i32, i32* %invalue, align 4, !tbaa !27
  %mul30 = mul nsw i32 %41, 3
  %42 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds i8, i8* %42, i64 -1
  %43 = load i8, i8* %arrayidx31, align 1, !tbaa !38
  %conv32 = zext i8 %43 to i32
  %add33 = add nsw i32 %mul30, %conv32
  %add34 = add nsw i32 %add33, 1
  %shr35 = ashr i32 %add34, 2
  %conv36 = trunc i32 %shr35 to i8
  %44 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr37 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr37, i8** %outptr, align 8, !tbaa !2
  store i8 %conv36, i8* %44, align 1, !tbaa !38
  %45 = load i32, i32* %invalue, align 4, !tbaa !27
  %conv38 = trunc i32 %45 to i8
  %46 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr39 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr39, i8** %outptr, align 8, !tbaa !2
  store i8 %conv38, i8* %46, align 1, !tbaa !38
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %47 = load i32, i32* %inrow, align 4, !tbaa !27
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %inrow, align 4, !tbaa !27
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  %48 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #3
  %49 = bitcast i32* %colctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #3
  %50 = bitcast i32* %invalue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  %51 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #3
  %52 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #3
  %53 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v1_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %output_data = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %invalue = alloca i8, align 1
  %outend = alloca i8*, align 8
  %inrow = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %0 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %2 = load i8**, i8*** %1, align 8, !tbaa !2
  store i8** %2, i8*** %output_data, align 8, !tbaa !2
  %3 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  call void @llvm.lifetime.start(i64 1, i8* %invalue) #3
  %5 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  store i32 0, i32* %inrow, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %inrow, align 4, !tbaa !27
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 58
  %9 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %inrow, align 4, !tbaa !27
  %idxprom = sext i32 %10 to i64
  %11 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %12, i8** %inptr, align 8, !tbaa !2
  %13 = load i32, i32* %inrow, align 4, !tbaa !27
  %idxprom1 = sext i32 %13 to i64
  %14 = load i8**, i8*** %output_data, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %14, i64 %idxprom1
  %15 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %15, i8** %outptr, align 8, !tbaa !2
  %16 = load i8*, i8** %outptr, align 8, !tbaa !2
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 26
  %18 = load i32, i32* %output_width, align 4, !tbaa !40
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %outend, align 8, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %19 = load i8*, i8** %outptr, align 8, !tbaa !2
  %20 = load i8*, i8** %outend, align 8, !tbaa !2
  %cmp3 = icmp ult i8* %19, %20
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !2
  %22 = load i8, i8* %21, align 1, !tbaa !38
  store i8 %22, i8* %invalue, align 1, !tbaa !38
  %23 = load i8, i8* %invalue, align 1, !tbaa !38
  %24 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr4 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr4, i8** %outptr, align 8, !tbaa !2
  store i8 %23, i8* %24, align 1, !tbaa !38
  %25 = load i8, i8* %invalue, align 1, !tbaa !38
  %26 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr5 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr5, i8** %outptr, align 8, !tbaa !2
  store i8 %25, i8* %26, align 1, !tbaa !38
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %27 = load i32, i32* %inrow, align 4, !tbaa !27
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %inrow, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #3
  %29 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #3
  call void @llvm.lifetime.end(i64 1, i8* %invalue) #3
  %30 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #3
  %31 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #3
  %32 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v2_fancy_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %output_data = alloca i8**, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %thiscolsum = alloca i32, align 4
  %lastcolsum = alloca i32, align 4
  %nextcolsum = alloca i32, align 4
  %colctr = alloca i32, align 4
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %0 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %2 = load i8**, i8*** %1, align 8, !tbaa !2
  store i8** %2, i8*** %output_data, align 8, !tbaa !2
  %3 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i32* %thiscolsum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %lastcolsum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %nextcolsum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %colctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  store i32 0, i32* %outrow, align 4, !tbaa !27
  store i32 0, i32* %inrow, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end.64, %entry
  %13 = load i32, i32* %outrow, align 4, !tbaa !27
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 58
  %15 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %v, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %while.body
  %16 = load i32, i32* %v, align 4, !tbaa !27
  %cmp1 = icmp slt i32 %16, 2
  br i1 %cmp1, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %inrow, align 4, !tbaa !27
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %19, i8** %inptr0, align 8, !tbaa !2
  %20 = load i32, i32* %v, align 4, !tbaa !27
  %cmp2 = icmp eq i32 %20, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %21 = load i32, i32* %inrow, align 4, !tbaa !27
  %sub = sub nsw i32 %21, 1
  %idxprom3 = sext i32 %sub to i64
  %22 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8*, i8** %22, i64 %idxprom3
  %23 = load i8*, i8** %arrayidx4, align 8, !tbaa !2
  store i8* %23, i8** %inptr1, align 8, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %for.body
  %24 = load i32, i32* %inrow, align 4, !tbaa !27
  %add = add nsw i32 %24, 1
  %idxprom5 = sext i32 %add to i64
  %25 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8*, i8** %25, i64 %idxprom5
  %26 = load i8*, i8** %arrayidx6, align 8, !tbaa !2
  store i8* %26, i8** %inptr1, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load i32, i32* %outrow, align 4, !tbaa !27
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %outrow, align 4, !tbaa !27
  %idxprom7 = sext i32 %27 to i64
  %28 = load i8**, i8*** %output_data, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %28, i64 %idxprom7
  %29 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  store i8* %29, i8** %outptr, align 8, !tbaa !2
  %30 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %inptr0, align 8, !tbaa !2
  %31 = load i8, i8* %30, align 1, !tbaa !38
  %conv = zext i8 %31 to i32
  %mul = mul nsw i32 %conv, 3
  %32 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %incdec.ptr9 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr9, i8** %inptr1, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !38
  %conv10 = zext i8 %33 to i32
  %add11 = add nsw i32 %mul, %conv10
  store i32 %add11, i32* %thiscolsum, align 4, !tbaa !27
  %34 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %incdec.ptr12 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr12, i8** %inptr0, align 8, !tbaa !2
  %35 = load i8, i8* %34, align 1, !tbaa !38
  %conv13 = zext i8 %35 to i32
  %mul14 = mul nsw i32 %conv13, 3
  %36 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %incdec.ptr15 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr15, i8** %inptr1, align 8, !tbaa !2
  %37 = load i8, i8* %36, align 1, !tbaa !38
  %conv16 = zext i8 %37 to i32
  %add17 = add nsw i32 %mul14, %conv16
  store i32 %add17, i32* %nextcolsum, align 4, !tbaa !27
  %38 = load i32, i32* %thiscolsum, align 4, !tbaa !27
  %mul18 = mul nsw i32 %38, 4
  %add19 = add nsw i32 %mul18, 8
  %shr = ashr i32 %add19, 4
  %conv20 = trunc i32 %shr to i8
  %39 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr21 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr21, i8** %outptr, align 8, !tbaa !2
  store i8 %conv20, i8* %39, align 1, !tbaa !38
  %40 = load i32, i32* %thiscolsum, align 4, !tbaa !27
  %mul22 = mul nsw i32 %40, 3
  %41 = load i32, i32* %nextcolsum, align 4, !tbaa !27
  %add23 = add nsw i32 %mul22, %41
  %add24 = add nsw i32 %add23, 7
  %shr25 = ashr i32 %add24, 4
  %conv26 = trunc i32 %shr25 to i8
  %42 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr27 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr27, i8** %outptr, align 8, !tbaa !2
  store i8 %conv26, i8* %42, align 1, !tbaa !38
  %43 = load i32, i32* %thiscolsum, align 4, !tbaa !27
  store i32 %43, i32* %lastcolsum, align 4, !tbaa !27
  %44 = load i32, i32* %nextcolsum, align 4, !tbaa !27
  store i32 %44, i32* %thiscolsum, align 4, !tbaa !27
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 10
  %46 = load i32, i32* %downsampled_width, align 4, !tbaa !37
  %sub28 = sub i32 %46, 2
  store i32 %sub28, i32* %colctr, align 4, !tbaa !27
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %if.end
  %47 = load i32, i32* %colctr, align 4, !tbaa !27
  %cmp30 = icmp ugt i32 %47, 0
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.29
  %48 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %incdec.ptr33 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr33, i8** %inptr0, align 8, !tbaa !2
  %49 = load i8, i8* %48, align 1, !tbaa !38
  %conv34 = zext i8 %49 to i32
  %mul35 = mul nsw i32 %conv34, 3
  %50 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %incdec.ptr36 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr36, i8** %inptr1, align 8, !tbaa !2
  %51 = load i8, i8* %50, align 1, !tbaa !38
  %conv37 = zext i8 %51 to i32
  %add38 = add nsw i32 %mul35, %conv37
  store i32 %add38, i32* %nextcolsum, align 4, !tbaa !27
  %52 = load i32, i32* %thiscolsum, align 4, !tbaa !27
  %mul39 = mul nsw i32 %52, 3
  %53 = load i32, i32* %lastcolsum, align 4, !tbaa !27
  %add40 = add nsw i32 %mul39, %53
  %add41 = add nsw i32 %add40, 8
  %shr42 = ashr i32 %add41, 4
  %conv43 = trunc i32 %shr42 to i8
  %54 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr44 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr44, i8** %outptr, align 8, !tbaa !2
  store i8 %conv43, i8* %54, align 1, !tbaa !38
  %55 = load i32, i32* %thiscolsum, align 4, !tbaa !27
  %mul45 = mul nsw i32 %55, 3
  %56 = load i32, i32* %nextcolsum, align 4, !tbaa !27
  %add46 = add nsw i32 %mul45, %56
  %add47 = add nsw i32 %add46, 7
  %shr48 = ashr i32 %add47, 4
  %conv49 = trunc i32 %shr48 to i8
  %57 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr50 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr50, i8** %outptr, align 8, !tbaa !2
  store i8 %conv49, i8* %57, align 1, !tbaa !38
  %58 = load i32, i32* %thiscolsum, align 4, !tbaa !27
  store i32 %58, i32* %lastcolsum, align 4, !tbaa !27
  %59 = load i32, i32* %nextcolsum, align 4, !tbaa !27
  store i32 %59, i32* %thiscolsum, align 4, !tbaa !27
  br label %for.inc

for.inc:                                          ; preds = %for.body.32
  %60 = load i32, i32* %colctr, align 4, !tbaa !27
  %dec = add i32 %60, -1
  store i32 %dec, i32* %colctr, align 4, !tbaa !27
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  %61 = load i32, i32* %thiscolsum, align 4, !tbaa !27
  %mul51 = mul nsw i32 %61, 3
  %62 = load i32, i32* %lastcolsum, align 4, !tbaa !27
  %add52 = add nsw i32 %mul51, %62
  %add53 = add nsw i32 %add52, 8
  %shr54 = ashr i32 %add53, 4
  %conv55 = trunc i32 %shr54 to i8
  %63 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr56 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr56, i8** %outptr, align 8, !tbaa !2
  store i8 %conv55, i8* %63, align 1, !tbaa !38
  %64 = load i32, i32* %thiscolsum, align 4, !tbaa !27
  %mul57 = mul nsw i32 %64, 4
  %add58 = add nsw i32 %mul57, 7
  %shr59 = ashr i32 %add58, 4
  %conv60 = trunc i32 %shr59 to i8
  %65 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr61 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr61, i8** %outptr, align 8, !tbaa !2
  store i8 %conv60, i8* %65, align 1, !tbaa !38
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end
  %66 = load i32, i32* %v, align 4, !tbaa !27
  %inc63 = add nsw i32 %66, 1
  store i32 %inc63, i32* %v, align 4, !tbaa !27
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %67 = load i32, i32* %inrow, align 4, !tbaa !27
  %inc65 = add nsw i32 %67, 1
  store i32 %inc65, i32* %inrow, align 4, !tbaa !27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %68 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #3
  %69 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #3
  %70 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  %71 = bitcast i32* %colctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32* %nextcolsum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  %73 = bitcast i32* %lastcolsum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #3
  %74 = bitcast i32* %thiscolsum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #3
  %75 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #3
  %76 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #3
  %77 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #3
  %78 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v2_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %output_data = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %invalue = alloca i8, align 1
  %outend = alloca i8*, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %0 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %2 = load i8**, i8*** %1, align 8, !tbaa !2
  store i8** %2, i8*** %output_data, align 8, !tbaa !2
  %3 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  call void @llvm.lifetime.start(i64 1, i8* %invalue) #3
  %5 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  store i32 0, i32* %outrow, align 4, !tbaa !27
  store i32 0, i32* %inrow, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %8 = load i32, i32* %outrow, align 4, !tbaa !27
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 58
  %10 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %while.body, label %while.end.10

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %inrow, align 4, !tbaa !27
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %13, i8** %inptr, align 8, !tbaa !2
  %14 = load i32, i32* %outrow, align 4, !tbaa !27
  %idxprom1 = sext i32 %14 to i64
  %15 = load i8**, i8*** %output_data, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %15, i64 %idxprom1
  %16 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %16, i8** %outptr, align 8, !tbaa !2
  %17 = load i8*, i8** %outptr, align 8, !tbaa !2
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 26
  %19 = load i32, i32* %output_width, align 4, !tbaa !40
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %outend, align 8, !tbaa !2
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.5, %while.body
  %20 = load i8*, i8** %outptr, align 8, !tbaa !2
  %21 = load i8*, i8** %outend, align 8, !tbaa !2
  %cmp4 = icmp ult i8* %20, %21
  br i1 %cmp4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.3
  %22 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !2
  %23 = load i8, i8* %22, align 1, !tbaa !38
  store i8 %23, i8* %invalue, align 1, !tbaa !38
  %24 = load i8, i8* %invalue, align 1, !tbaa !38
  %25 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr6 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr6, i8** %outptr, align 8, !tbaa !2
  store i8 %24, i8* %25, align 1, !tbaa !38
  %26 = load i8, i8* %invalue, align 1, !tbaa !38
  %27 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr7 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr7, i8** %outptr, align 8, !tbaa !2
  store i8 %26, i8* %27, align 1, !tbaa !38
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %28 = load i8**, i8*** %output_data, align 8, !tbaa !2
  %29 = load i32, i32* %outrow, align 4, !tbaa !27
  %30 = load i8**, i8*** %output_data, align 8, !tbaa !2
  %31 = load i32, i32* %outrow, align 4, !tbaa !27
  %add = add nsw i32 %31, 1
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 26
  %33 = load i32, i32* %output_width8, align 4, !tbaa !40
  call void @jcopy_sample_rows(i8** %28, i32 %29, i8** %30, i32 %add, i32 1, i32 %33)
  %34 = load i32, i32* %inrow, align 4, !tbaa !27
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %inrow, align 4, !tbaa !27
  %35 = load i32, i32* %outrow, align 4, !tbaa !27
  %add9 = add nsw i32 %35, 2
  store i32 %add9, i32* %outrow, align 4, !tbaa !27
  br label %while.cond

while.end.10:                                     ; preds = %while.cond
  %36 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #3
  %37 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #3
  %38 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #3
  call void @llvm.lifetime.end(i64 1, i8* %invalue) #3
  %39 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  %40 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  %41 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @int_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %output_data = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %invalue = alloca i8, align 1
  %h = alloca i32, align 4
  %outend = alloca i8*, align 8
  %h_expand = alloca i32, align 4
  %v_expand = alloca i32, align 4
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 81
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %4 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !2
  %6 = load i8**, i8*** %5, align 8, !tbaa !2
  store i8** %6, i8*** %output_data, align 8, !tbaa !2
  %7 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  call void @llvm.lifetime.start(i64 1, i8* %invalue) #3
  %9 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i32* %h_expand to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %v_expand to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 1
  %16 = load i32, i32* %component_index, align 4, !tbaa !47
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %h_expand2 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %17, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %h_expand2, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !38
  %conv = zext i8 %18 to i32
  store i32 %conv, i32* %h_expand, align 4, !tbaa !27
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %component_index3 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 1
  %20 = load i32, i32* %component_index3, align 4, !tbaa !47
  %idxprom4 = sext i32 %20 to i64
  %21 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %v_expand5 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %21, i32 0, i32 7
  %arrayidx6 = getelementptr inbounds [10 x i8], [10 x i8]* %v_expand5, i32 0, i64 %idxprom4
  %22 = load i8, i8* %arrayidx6, align 1, !tbaa !38
  %conv7 = zext i8 %22 to i32
  store i32 %conv7, i32* %v_expand, align 4, !tbaa !27
  store i32 0, i32* %outrow, align 4, !tbaa !27
  store i32 0, i32* %inrow, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %23 = load i32, i32* %outrow, align 4, !tbaa !27
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 58
  %25 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %while.body, label %while.end.24

while.body:                                       ; preds = %while.cond
  %26 = load i32, i32* %inrow, align 4, !tbaa !27
  %idxprom9 = sext i32 %26 to i64
  %27 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8*, i8** %27, i64 %idxprom9
  %28 = load i8*, i8** %arrayidx10, align 8, !tbaa !2
  store i8* %28, i8** %inptr, align 8, !tbaa !2
  %29 = load i32, i32* %outrow, align 4, !tbaa !27
  %idxprom11 = sext i32 %29 to i64
  %30 = load i8**, i8*** %output_data, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i8*, i8** %30, i64 %idxprom11
  %31 = load i8*, i8** %arrayidx12, align 8, !tbaa !2
  store i8* %31, i8** %outptr, align 8, !tbaa !2
  %32 = load i8*, i8** %outptr, align 8, !tbaa !2
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 26
  %34 = load i32, i32* %output_width, align 4, !tbaa !40
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %outend, align 8, !tbaa !2
  br label %while.cond.13

while.cond.13:                                    ; preds = %for.end, %while.body
  %35 = load i8*, i8** %outptr, align 8, !tbaa !2
  %36 = load i8*, i8** %outend, align 8, !tbaa !2
  %cmp14 = icmp ult i8* %35, %36
  br i1 %cmp14, label %while.body.16, label %while.end

while.body.16:                                    ; preds = %while.cond.13
  %37 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !2
  %38 = load i8, i8* %37, align 1, !tbaa !38
  store i8 %38, i8* %invalue, align 1, !tbaa !38
  %39 = load i32, i32* %h_expand, align 4, !tbaa !27
  store i32 %39, i32* %h, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.16
  %40 = load i32, i32* %h, align 4, !tbaa !27
  %cmp17 = icmp sgt i32 %40, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i8, i8* %invalue, align 1, !tbaa !38
  %42 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr19 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr19, i8** %outptr, align 8, !tbaa !2
  store i8 %41, i8* %42, align 1, !tbaa !38
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %h, align 4, !tbaa !27
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %h, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.13

while.end:                                        ; preds = %while.cond.13
  %44 = load i32, i32* %v_expand, align 4, !tbaa !27
  %cmp20 = icmp sgt i32 %44, 1
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %45 = load i8**, i8*** %output_data, align 8, !tbaa !2
  %46 = load i32, i32* %outrow, align 4, !tbaa !27
  %47 = load i8**, i8*** %output_data, align 8, !tbaa !2
  %48 = load i32, i32* %outrow, align 4, !tbaa !27
  %add = add nsw i32 %48, 1
  %49 = load i32, i32* %v_expand, align 4, !tbaa !27
  %sub = sub nsw i32 %49, 1
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 26
  %51 = load i32, i32* %output_width22, align 4, !tbaa !40
  call void @jcopy_sample_rows(i8** %45, i32 %46, i8** %47, i32 %add, i32 %sub, i32 %51)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %52 = load i32, i32* %inrow, align 4, !tbaa !27
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %inrow, align 4, !tbaa !27
  %53 = load i32, i32* %v_expand, align 4, !tbaa !27
  %54 = load i32, i32* %outrow, align 4, !tbaa !27
  %add23 = add nsw i32 %54, %53
  store i32 %add23, i32* %outrow, align 4, !tbaa !27
  br label %while.cond

while.end.24:                                     ; preds = %while.cond
  %55 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #3
  %56 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #3
  %57 = bitcast i32* %v_expand to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #3
  %58 = bitcast i32* %h_expand to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  %59 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #3
  %60 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #3
  call void @llvm.lifetime.end(i64 1, i8* %invalue) #3
  %61 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #3
  %62 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #3
  %63 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #3
  %64 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #3
  ret void
}

declare i64 @jround_up(i64, i64) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 8}
!7 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !4, i64 56, !8, i64 60, !8, i64 64, !9, i64 72, !8, i64 80, !8, i64 84, !4, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !4, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !3, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !8, i64 288, !3, i64 296, !8, i64 304, !8, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !8, i64 360, !8, i64 364, !4, i64 368, !10, i64 370, !10, i64 372, !8, i64 376, !4, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !3, i64 408, !8, i64 416, !4, i64 424, !8, i64 456, !8, i64 460, !8, i64 464, !4, i64 468, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!12, !3, i64 0}
!12 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !13, i64 88}
!13 = !{!"long", !4, i64 0}
!14 = !{!7, !3, i64 592}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !4, i64 24, !4, i64 104, !8, i64 184, !8, i64 188, !4, i64 192, !4, i64 232, !4, i64 242}
!17 = !{!"jpeg_upsampler", !3, i64 0, !3, i64 8, !8, i64 16}
!18 = !{!16, !3, i64 8}
!19 = !{!16, !8, i64 16}
!20 = !{!7, !8, i64 384}
!21 = !{!7, !3, i64 0}
!22 = !{!23, !8, i64 40}
!23 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!24 = !{!23, !3, i64 0}
!25 = !{!7, !8, i64 92}
!26 = !{!7, !8, i64 396}
!27 = !{!8, !8, i64 0}
!28 = !{!7, !3, i64 296}
!29 = !{!7, !8, i64 48}
!30 = !{!31, !8, i64 8}
!31 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!32 = !{!31, !8, i64 36}
!33 = !{!31, !8, i64 12}
!34 = !{!7, !8, i64 388}
!35 = !{!7, !8, i64 392}
!36 = !{!31, !8, i64 48}
!37 = !{!31, !8, i64 40}
!38 = !{!4, !4, i64 0}
!39 = !{!12, !3, i64 16}
!40 = !{!7, !8, i64 128}
!41 = !{!16, !8, i64 184}
!42 = !{!7, !8, i64 132}
!43 = !{!16, !8, i64 188}
!44 = !{!7, !3, i64 600}
!45 = !{!46, !3, i64 8}
!46 = !{!"jpeg_color_deconverter", !3, i64 0, !3, i64 8}
!47 = !{!31, !8, i64 4}
