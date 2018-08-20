; ModuleID = 'jdmaster.c'
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
%struct.my_decomp_master = type { %struct.jpeg_decomp_master, i32, i32, %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer* }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %ssize = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #5
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp ne i32 %3, 202
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !12
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %global_state1, align 4, !tbaa !6
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4, !tbaa !15
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 11
  %16 = load i32, i32* %scale_num, align 4, !tbaa !17
  %mul = mul i32 %16, 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 12
  %18 = load i32, i32* %scale_denom, align 4, !tbaa !18
  %cmp4 = icmp ule i32 %mul, %18
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 6
  %20 = load i32, i32* %image_width, align 4, !tbaa !19
  %conv = zext i32 %20 to i64
  %call = call i64 @jdiv_round_up(i64 %conv, i64 8)
  %conv6 = trunc i64 %call to i32
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 26
  store i32 %conv6, i32* %output_width, align 4, !tbaa !20
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 7
  %23 = load i32, i32* %image_height, align 4, !tbaa !21
  %conv7 = zext i32 %23 to i64
  %call8 = call i64 @jdiv_round_up(i64 %conv7, i64 8)
  %conv9 = trunc i64 %call8 to i32
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 27
  store i32 %conv9, i32* %output_height, align 4, !tbaa !22
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 59
  store i32 1, i32* %min_DCT_scaled_size, align 4, !tbaa !23
  br label %if.end.53

if.else:                                          ; preds = %if.end
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %scale_num10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 11
  %27 = load i32, i32* %scale_num10, align 4, !tbaa !17
  %mul11 = mul i32 %27, 4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %scale_denom12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 12
  %29 = load i32, i32* %scale_denom12, align 4, !tbaa !18
  %cmp13 = icmp ule i32 %mul11, %29
  br i1 %cmp13, label %if.then.15, label %if.else.27

if.then.15:                                       ; preds = %if.else
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 6
  %31 = load i32, i32* %image_width16, align 4, !tbaa !19
  %conv17 = zext i32 %31 to i64
  %call18 = call i64 @jdiv_round_up(i64 %conv17, i64 4)
  %conv19 = trunc i64 %call18 to i32
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 26
  store i32 %conv19, i32* %output_width20, align 4, !tbaa !20
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 7
  %34 = load i32, i32* %image_height21, align 4, !tbaa !21
  %conv22 = zext i32 %34 to i64
  %call23 = call i64 @jdiv_round_up(i64 %conv22, i64 4)
  %conv24 = trunc i64 %call23 to i32
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 27
  store i32 %conv24, i32* %output_height25, align 4, !tbaa !22
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 59
  store i32 2, i32* %min_DCT_scaled_size26, align 4, !tbaa !23
  br label %if.end.52

if.else.27:                                       ; preds = %if.else
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %scale_num28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 11
  %38 = load i32, i32* %scale_num28, align 4, !tbaa !17
  %mul29 = mul i32 %38, 2
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %scale_denom30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 12
  %40 = load i32, i32* %scale_denom30, align 4, !tbaa !18
  %cmp31 = icmp ule i32 %mul29, %40
  br i1 %cmp31, label %if.then.33, label %if.else.45

if.then.33:                                       ; preds = %if.else.27
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 6
  %42 = load i32, i32* %image_width34, align 4, !tbaa !19
  %conv35 = zext i32 %42 to i64
  %call36 = call i64 @jdiv_round_up(i64 %conv35, i64 2)
  %conv37 = trunc i64 %call36 to i32
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 26
  store i32 %conv37, i32* %output_width38, align 4, !tbaa !20
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 7
  %45 = load i32, i32* %image_height39, align 4, !tbaa !21
  %conv40 = zext i32 %45 to i64
  %call41 = call i64 @jdiv_round_up(i64 %conv40, i64 2)
  %conv42 = trunc i64 %call41 to i32
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 27
  store i32 %conv42, i32* %output_height43, align 4, !tbaa !22
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 59
  store i32 4, i32* %min_DCT_scaled_size44, align 4, !tbaa !23
  br label %if.end.51

if.else.45:                                       ; preds = %if.else.27
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 6
  %49 = load i32, i32* %image_width46, align 4, !tbaa !19
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 26
  store i32 %49, i32* %output_width47, align 4, !tbaa !20
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 7
  %52 = load i32, i32* %image_height48, align 4, !tbaa !21
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 27
  store i32 %52, i32* %output_height49, align 4, !tbaa !22
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 59
  store i32 8, i32* %min_DCT_scaled_size50, align 4, !tbaa !23
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.45, %if.then.33
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.15
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.5
  store i32 0, i32* %ci, align 4, !tbaa !15
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 43
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !24
  store %struct.jpeg_component_info* %56, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.53
  %57 = load i32, i32* %ci, align 4, !tbaa !15
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 8
  %59 = load i32, i32* %num_components, align 4, !tbaa !25
  %cmp54 = icmp slt i32 %57, %59
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #5
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 59
  %62 = load i32, i32* %min_DCT_scaled_size56, align 4, !tbaa !23
  store i32 %62, i32* %ssize, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %63 = load i32, i32* %ssize, align 4, !tbaa !15
  %cmp57 = icmp slt i32 %63, 8
  br i1 %cmp57, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i32 0, i32 2
  %65 = load i32, i32* %h_samp_factor, align 4, !tbaa !26
  %66 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul59 = mul nsw i32 %65, %66
  %mul60 = mul nsw i32 %mul59, 2
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 57
  %68 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !28
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 59
  %70 = load i32, i32* %min_DCT_scaled_size61, align 4, !tbaa !23
  %mul62 = mul nsw i32 %68, %70
  %cmp63 = icmp sle i32 %mul60, %mul62
  br i1 %cmp63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 3
  %72 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %73 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul65 = mul nsw i32 %72, %73
  %mul66 = mul nsw i32 %mul65, 2
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 58
  %75 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !30
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 59
  %77 = load i32, i32* %min_DCT_scaled_size67, align 4, !tbaa !23
  %mul68 = mul nsw i32 %75, %77
  %cmp69 = icmp sle i32 %mul66, %mul68
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %78 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp69, %land.rhs ]
  br i1 %78, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %79 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul71 = mul nsw i32 %79, 2
  store i32 %mul71, i32* %ssize, align 4, !tbaa !15
  br label %while.cond

while.end:                                        ; preds = %land.end
  %80 = load i32, i32* %ssize, align 4, !tbaa !15
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 9
  store i32 %80, i32* %DCT_scaled_size, align 4, !tbaa !31
  %82 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #5
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %83 = load i32, i32* %ci, align 4, !tbaa !15
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !15
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ci, align 4, !tbaa !15
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 43
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info72, align 8, !tbaa !24
  store %struct.jpeg_component_info* %86, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.102, %for.end
  %87 = load i32, i32* %ci, align 4, !tbaa !15
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 8
  %89 = load i32, i32* %num_components74, align 4, !tbaa !25
  %cmp75 = icmp slt i32 %87, %89
  br i1 %cmp75, label %for.body.77, label %for.end.105

for.body.77:                                      ; preds = %for.cond.73
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 6
  %91 = load i32, i32* %image_width78, align 4, !tbaa !19
  %conv79 = zext i32 %91 to i64
  %92 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i32 0, i32 2
  %93 = load i32, i32* %h_samp_factor80, align 4, !tbaa !26
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size81 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 9
  %95 = load i32, i32* %DCT_scaled_size81, align 4, !tbaa !31
  %mul82 = mul nsw i32 %93, %95
  %conv83 = sext i32 %mul82 to i64
  %mul84 = mul nsw i64 %conv79, %conv83
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 57
  %97 = load i32, i32* %max_h_samp_factor85, align 4, !tbaa !28
  %mul86 = mul nsw i32 %97, 8
  %conv87 = sext i32 %mul86 to i64
  %call88 = call i64 @jdiv_round_up(i64 %mul84, i64 %conv87)
  %conv89 = trunc i64 %call88 to i32
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %98, i32 0, i32 10
  store i32 %conv89, i32* %downsampled_width, align 4, !tbaa !32
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 7
  %100 = load i32, i32* %image_height90, align 4, !tbaa !21
  %conv91 = zext i32 %100 to i64
  %101 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor92 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %101, i32 0, i32 3
  %102 = load i32, i32* %v_samp_factor92, align 4, !tbaa !29
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size93 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 9
  %104 = load i32, i32* %DCT_scaled_size93, align 4, !tbaa !31
  %mul94 = mul nsw i32 %102, %104
  %conv95 = sext i32 %mul94 to i64
  %mul96 = mul nsw i64 %conv91, %conv95
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 58
  %106 = load i32, i32* %max_v_samp_factor97, align 4, !tbaa !30
  %mul98 = mul nsw i32 %106, 8
  %conv99 = sext i32 %mul98 to i64
  %call100 = call i64 @jdiv_round_up(i64 %mul96, i64 %conv99)
  %conv101 = trunc i64 %call100 to i32
  %107 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %107, i32 0, i32 11
  store i32 %conv101, i32* %downsampled_height, align 4, !tbaa !33
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.77
  %108 = load i32, i32* %ci, align 4, !tbaa !15
  %inc103 = add nsw i32 %108, 1
  store i32 %inc103, i32* %ci, align 4, !tbaa !15
  %109 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %109, i32 1
  store %struct.jpeg_component_info* %incdec.ptr104, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.73

for.end.105:                                      ; preds = %for.cond.73
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 10
  %111 = load i32, i32* %out_color_space, align 4, !tbaa !34
  switch i32 %111, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.106
    i32 3, label %sw.bb.106
    i32 4, label %sw.bb.108
    i32 5, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %for.end.105
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 28
  store i32 1, i32* %out_color_components, align 4, !tbaa !35
  br label %sw.epilog

sw.bb.106:                                        ; preds = %for.end.105, %for.end.105
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 28
  store i32 3, i32* %out_color_components107, align 4, !tbaa !35
  br label %sw.epilog

sw.bb.108:                                        ; preds = %for.end.105, %for.end.105
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 28
  store i32 4, i32* %out_color_components109, align 4, !tbaa !35
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.105
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 8
  %116 = load i32, i32* %num_components110, align 4, !tbaa !25
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 28
  store i32 %116, i32* %out_color_components111, align 4, !tbaa !35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.108, %sw.bb.106, %sw.bb
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 19
  %119 = load i32, i32* %quantize_colors, align 4, !tbaa !36
  %tobool = icmp ne i32 %119, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 28
  %121 = load i32, i32* %out_color_components112, align 4, !tbaa !35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %121, %cond.false ]
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 29
  store i32 %cond, i32* %output_components, align 4, !tbaa !37
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call113 = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* %123)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %cond.end
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 58
  %125 = load i32, i32* %max_v_samp_factor116, align 4, !tbaa !30
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %rec_outbuf_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 30
  store i32 %125, i32* %rec_outbuf_height, align 4, !tbaa !38
  br label %if.end.119

if.else.117:                                      ; preds = %cond.end
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %rec_outbuf_height118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 30
  store i32 1, i32* %rec_outbuf_height118, align 4, !tbaa !38
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.then.115
  %128 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #5
  %129 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #5
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @jdiv_round_up(i64, i64) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @use_merged_upsample(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 17
  %1 = load i32, i32* %do_fancy_upsampling, align 4, !tbaa !39
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 56
  %3 = load i32, i32* %CCIR601_sampling, align 4, !tbaa !40
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 9
  %5 = load i32, i32* %jpeg_color_space, align 4, !tbaa !41
  %cmp = icmp ne i32 %5, 3
  br i1 %cmp, label %if.then.8, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %if.end
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 8
  %7 = load i32, i32* %num_components, align 4, !tbaa !25
  %cmp3 = icmp ne i32 %7, 3
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 10
  %9 = load i32, i32* %out_color_space, align 4, !tbaa !34
  %cmp5 = icmp ne i32 %9, 2
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 28
  %11 = load i32, i32* %out_color_components, align 4, !tbaa !35
  %cmp7 = icmp ne i32 %11, 3
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false.6
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 43
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i64 0
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 2
  %14 = load i32, i32* %h_samp_factor, align 4, !tbaa !26
  %cmp10 = icmp ne i32 %14, 2
  br i1 %cmp10, label %if.then.35, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.9
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 43
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info12, align 8, !tbaa !24
  %arrayidx13 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i64 1
  %h_samp_factor14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx13, i32 0, i32 2
  %17 = load i32, i32* %h_samp_factor14, align 4, !tbaa !26
  %cmp15 = icmp ne i32 %17, 1
  br i1 %cmp15, label %if.then.35, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.11
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 43
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info17, align 8, !tbaa !24
  %arrayidx18 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i64 2
  %h_samp_factor19 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx18, i32 0, i32 2
  %20 = load i32, i32* %h_samp_factor19, align 4, !tbaa !26
  %cmp20 = icmp ne i32 %20, 1
  br i1 %cmp20, label %if.then.35, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.16
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 43
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info22, align 8, !tbaa !24
  %arrayidx23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i64 0
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx23, i32 0, i32 3
  %23 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %cmp24 = icmp sgt i32 %23, 2
  br i1 %cmp24, label %if.then.35, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 43
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info26, align 8, !tbaa !24
  %arrayidx27 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i64 1
  %v_samp_factor28 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx27, i32 0, i32 3
  %26 = load i32, i32* %v_samp_factor28, align 4, !tbaa !29
  %cmp29 = icmp ne i32 %26, 1
  br i1 %cmp29, label %if.then.35, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.25
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 43
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info31, align 8, !tbaa !24
  %arrayidx32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i64 2
  %v_samp_factor33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx32, i32 0, i32 3
  %29 = load i32, i32* %v_samp_factor33, align 4, !tbaa !29
  %cmp34 = icmp ne i32 %29, 1
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.25, %lor.lhs.false.21, %lor.lhs.false.16, %lor.lhs.false.11, %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %lor.lhs.false.30
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 43
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info37, align 8, !tbaa !24
  %arrayidx38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i64 0
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx38, i32 0, i32 9
  %32 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !31
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 59
  %34 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !23
  %cmp39 = icmp ne i32 %32, %34
  br i1 %cmp39, label %if.then.52, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.36
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 43
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info41, align 8, !tbaa !24
  %arrayidx42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i64 1
  %DCT_scaled_size43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx42, i32 0, i32 9
  %37 = load i32, i32* %DCT_scaled_size43, align 4, !tbaa !31
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 59
  %39 = load i32, i32* %min_DCT_scaled_size44, align 4, !tbaa !23
  %cmp45 = icmp ne i32 %37, %39
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.40
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 43
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info47, align 8, !tbaa !24
  %arrayidx48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i64 2
  %DCT_scaled_size49 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx48, i32 0, i32 9
  %42 = load i32, i32* %DCT_scaled_size49, align 4, !tbaa !31
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 59
  %44 = load i32, i32* %min_DCT_scaled_size50, align 4, !tbaa !23
  %cmp51 = icmp ne i32 %42, %44
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.46, %lor.lhs.false.40, %if.end.36
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false.46
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.52, %if.then.35, %if.then.8, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_new_colormap(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 73
  %2 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !42
  %3 = bitcast %struct.jpeg_decomp_master* %2 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %3, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp ne i32 %5, 207
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !12
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 4
  %9 = load i32, i32* %global_state2, align 4, !tbaa !6
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %9, i32* %arrayidx, align 4, !tbaa !15
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 19
  %18 = load i32, i32* %quantize_colors, align 4, !tbaa !36
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 24
  %20 = load i32, i32* %enable_external_quant, align 4, !tbaa !43
  %tobool5 = icmp ne i32 %20, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 32
  %22 = load i8**, i8*** %colormap, align 8, !tbaa !44
  %cmp7 = icmp ne i8** %22, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true.6
  %23 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %23, i32 0, i32 4
  %24 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %quantizer_2pass, align 8, !tbaa !45
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %24, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !48
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 83
  %27 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize9, align 8, !tbaa !48
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %27, i32 0, i32 3
  %new_color_map10 = bitcast {}** %new_color_map to void (%struct.jpeg_decompress_struct*)**
  %28 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %new_color_map10, align 8, !tbaa !49
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %28(%struct.jpeg_decompress_struct* %29)
  %30 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %30, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub, i32 0, i32 2
  store i32 0, i32* %is_dummy_pass, align 4, !tbaa !51
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %if.end
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !11
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 5
  store i32 45, i32* %msg_code12, align 4, !tbaa !12
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !11
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8, !tbaa !16
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %37 = bitcast %struct.jpeg_decompress_struct* %36 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* %37)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.8
  %38 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jinit_master_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !52
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !53
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 48)
  %6 = bitcast i8* %call to %struct.my_decomp_master*
  store %struct.my_decomp_master* %6, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %7 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %8 = bitcast %struct.my_decomp_master* %7 to %struct.jpeg_decomp_master*
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 73
  store %struct.jpeg_decomp_master* %8, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !42
  %10 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %10, i32 0, i32 0
  %prepare_for_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub, i32 0, i32 0
  %prepare_for_output_pass2 = bitcast {}** %prepare_for_output_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @prepare_for_output_pass, void (%struct.jpeg_decompress_struct*)** %prepare_for_output_pass2, align 8, !tbaa !55
  %11 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %11, i32 0, i32 0
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub3, i32 0, i32 1
  %finish_output_pass4 = bitcast {}** %finish_output_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_output_pass, void (%struct.jpeg_decompress_struct*)** %finish_output_pass4, align 8, !tbaa !56
  %12 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %12, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub5, i32 0, i32 2
  store i32 0, i32* %is_dummy_pass, align 4, !tbaa !51
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @master_selection(%struct.jpeg_decompress_struct* %13)
  %14 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_for_output_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 73
  %2 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !42
  %3 = bitcast %struct.jpeg_decomp_master* %2 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %3, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %4 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub, i32 0, i32 2
  %5 = load i32, i32* %is_dummy_pass, align 4, !tbaa !51
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %6, i32 0, i32 0
  %is_dummy_pass3 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub2, i32 0, i32 2
  store i32 0, i32* %is_dummy_pass3, align 4, !tbaa !51
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 83
  %8 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !48
  %start_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %8, i32 0, i32 0
  %9 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8, !tbaa !57
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %9(%struct.jpeg_decompress_struct* %10, i32 0)
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 76
  %12 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8, !tbaa !58
  %start_pass4 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass4, align 8, !tbaa !59
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %13(%struct.jpeg_decompress_struct* %14, i32 2)
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 74
  %16 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !61
  %start_pass5 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass5, align 8, !tbaa !62
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %17(%struct.jpeg_decompress_struct* %18, i32 2)
  br label %if.end.51

if.else:                                          ; preds = %entry
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 19
  %20 = load i32, i32* %quantize_colors, align 4, !tbaa !36
  %tobool6 = icmp ne i32 %20, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 32
  %22 = load i8**, i8*** %colormap, align 8, !tbaa !44
  %cmp = icmp eq i8** %22, null
  br i1 %cmp, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %land.lhs.true
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 21
  %24 = load i32, i32* %two_pass_quantize, align 4, !tbaa !64
  %tobool8 = icmp ne i32 %24, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.else.15

land.lhs.true.9:                                  ; preds = %if.then.7
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 25
  %26 = load i32, i32* %enable_2pass_quant, align 4, !tbaa !65
  %tobool10 = icmp ne i32 %26, 0
  br i1 %tobool10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %land.lhs.true.9
  %27 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %27, i32 0, i32 4
  %28 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %quantizer_2pass, align 8, !tbaa !45
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %28, %struct.jpeg_color_quantizer** %cquantize12, align 8, !tbaa !48
  %30 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub13 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %30, i32 0, i32 0
  %is_dummy_pass14 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub13, i32 0, i32 2
  store i32 1, i32* %is_dummy_pass14, align 4, !tbaa !51
  br label %if.end.21

if.else.15:                                       ; preds = %land.lhs.true.9, %if.then.7
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 23
  %32 = load i32, i32* %enable_1pass_quant, align 4, !tbaa !66
  %tobool16 = icmp ne i32 %32, 0
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.15
  %33 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %33, i32 0, i32 3
  %34 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %quantizer_1pass, align 8, !tbaa !67
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %34, %struct.jpeg_color_quantizer** %cquantize18, align 8, !tbaa !48
  br label %if.end

if.else.19:                                       ; preds = %if.else.15
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 5
  store i32 45, i32* %msg_code, align 4, !tbaa !12
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %42 = bitcast %struct.jpeg_decompress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42)
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true, %if.else
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 80
  %44 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8, !tbaa !68
  %start_pass23 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %44, i32 0, i32 0
  %start_pass24 = bitcast {}** %start_pass23 to void (%struct.jpeg_decompress_struct*)**
  %45 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass24, align 8, !tbaa !69
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %45(%struct.jpeg_decompress_struct* %46)
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 75
  %48 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8, !tbaa !71
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %48, i32 0, i32 2
  %start_output_pass25 = bitcast {}** %start_output_pass to void (%struct.jpeg_decompress_struct*)**
  %49 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_output_pass25, align 8, !tbaa !72
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %49(%struct.jpeg_decompress_struct* %50)
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 15
  %52 = load i32, i32* %raw_data_out, align 4, !tbaa !74
  %tobool26 = icmp ne i32 %52, 0
  br i1 %tobool26, label %if.end.50, label %if.then.27

if.then.27:                                       ; preds = %if.end.22
  %53 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %53, i32 0, i32 2
  %54 = load i32, i32* %using_merged_upsample, align 4, !tbaa !75
  %tobool28 = icmp ne i32 %54, 0
  br i1 %tobool28, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %if.then.27
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 82
  %56 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert, align 8, !tbaa !76
  %start_pass30 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %56, i32 0, i32 0
  %start_pass31 = bitcast {}** %start_pass30 to void (%struct.jpeg_decompress_struct*)**
  %57 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass31, align 8, !tbaa !77
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %57(%struct.jpeg_decompress_struct* %58)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.then.27
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 81
  %60 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !79
  %start_pass33 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %60, i32 0, i32 0
  %start_pass34 = bitcast {}** %start_pass33 to void (%struct.jpeg_decompress_struct*)**
  %61 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass34, align 8, !tbaa !80
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %61(%struct.jpeg_decompress_struct* %62)
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 19
  %64 = load i32, i32* %quantize_colors35, align 4, !tbaa !36
  %tobool36 = icmp ne i32 %64, 0
  br i1 %tobool36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.end.32
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 83
  %66 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize38, align 8, !tbaa !48
  %start_pass39 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %66, i32 0, i32 0
  %67 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass39, align 8, !tbaa !57
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %69 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub40 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %69, i32 0, i32 0
  %is_dummy_pass41 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub40, i32 0, i32 2
  %70 = load i32, i32* %is_dummy_pass41, align 4, !tbaa !51
  call void %67(%struct.jpeg_decompress_struct* %68, i32 %70)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %if.end.32
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 76
  %72 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post43, align 8, !tbaa !58
  %start_pass44 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %72, i32 0, i32 0
  %73 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass44, align 8, !tbaa !59
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %75 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub45 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %75, i32 0, i32 0
  %is_dummy_pass46 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub45, i32 0, i32 2
  %76 = load i32, i32* %is_dummy_pass46, align 4, !tbaa !51
  %tobool47 = icmp ne i32 %76, 0
  %cond = select i1 %tobool47, i32 3, i32 0
  call void %73(%struct.jpeg_decompress_struct* %74, i32 %cond)
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 74
  %78 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main48, align 8, !tbaa !61
  %start_pass49 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %78, i32 0, i32 0
  %79 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass49, align 8, !tbaa !62
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %79(%struct.jpeg_decompress_struct* %80, i32 0)
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.42, %if.end.22
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 2
  %82 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !82
  %cmp52 = icmp ne %struct.jpeg_progress_mgr* %82, null
  br i1 %cmp52, label %if.then.53, label %if.end.72

if.then.53:                                       ; preds = %if.end.51
  %83 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pass_number = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %83, i32 0, i32 1
  %84 = load i32, i32* %pass_number, align 4, !tbaa !83
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 2
  %86 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress54, align 8, !tbaa !82
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %86, i32 0, i32 3
  store i32 %84, i32* %completed_passes, align 4, !tbaa !84
  %87 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pass_number55 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %87, i32 0, i32 1
  %88 = load i32, i32* %pass_number55, align 4, !tbaa !83
  %89 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pub56 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %89, i32 0, i32 0
  %is_dummy_pass57 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub56, i32 0, i32 2
  %90 = load i32, i32* %is_dummy_pass57, align 4, !tbaa !51
  %tobool58 = icmp ne i32 %90, 0
  %cond59 = select i1 %tobool58, i32 2, i32 1
  %add = add nsw i32 %88, %cond59
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 2
  %92 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress60, align 8, !tbaa !82
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %92, i32 0, i32 4
  store i32 %add, i32* %total_passes, align 4, !tbaa !86
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 14
  %94 = load i32, i32* %buffered_image, align 4, !tbaa !87
  %tobool61 = icmp ne i32 %94, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.71

land.lhs.true.62:                                 ; preds = %if.then.53
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 77
  %96 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !88
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %96, i32 0, i32 5
  %97 = load i32, i32* %eoi_reached, align 4, !tbaa !89
  %tobool63 = icmp ne i32 %97, 0
  br i1 %tobool63, label %if.end.71, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.62
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_2pass_quant65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %98, i32 0, i32 25
  %99 = load i32, i32* %enable_2pass_quant65, align 4, !tbaa !65
  %tobool66 = icmp ne i32 %99, 0
  %cond67 = select i1 %tobool66, i32 2, i32 1
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 2
  %101 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress68, align 8, !tbaa !82
  %total_passes69 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %101, i32 0, i32 4
  %102 = load i32, i32* %total_passes69, align 4, !tbaa !86
  %add70 = add nsw i32 %102, %cond67
  store i32 %add70, i32* %total_passes69, align 4, !tbaa !86
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.64, %land.lhs.true.62, %if.then.53
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.51
  %103 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_output_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 73
  %2 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !42
  %3 = bitcast %struct.jpeg_decomp_master* %2 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %3, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 19
  %5 = load i32, i32* %quantize_colors, align 4, !tbaa !36
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 83
  %7 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !48
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %7, i32 0, i32 2
  %finish_pass2 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  %8 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_pass2, align 8, !tbaa !91
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %8(%struct.jpeg_decompress_struct* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pass_number = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %10, i32 0, i32 1
  %11 = load i32, i32* %pass_number, align 4, !tbaa !83
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %pass_number, align 4, !tbaa !83
  %12 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @master_selection(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  %use_c_buffer = alloca i32, align 4
  %samplesperrow = alloca i64, align 8
  %jd_samplesperrow = alloca i32, align 4
  %nscans = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 73
  %2 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !42
  %3 = bitcast %struct.jpeg_decomp_master* %2 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %3, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %4 = bitcast i32* %use_c_buffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast i64* %samplesperrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #5
  %6 = bitcast i32* %jd_samplesperrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #5
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %7)
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @prepare_range_limit_table(%struct.jpeg_decompress_struct* %8)
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 26
  %10 = load i32, i32* %output_width, align 4, !tbaa !20
  %conv = zext i32 %10 to i64
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 28
  %12 = load i32, i32* %out_color_components, align 4, !tbaa !35
  %conv2 = sext i32 %12 to i64
  %mul = mul nsw i64 %conv, %conv2
  store i64 %mul, i64* %samplesperrow, align 8, !tbaa !92
  %13 = load i64, i64* %samplesperrow, align 8, !tbaa !92
  %conv3 = trunc i64 %13 to i32
  store i32 %conv3, i32* %jd_samplesperrow, align 4, !tbaa !15
  %14 = load i32, i32* %jd_samplesperrow, align 4, !tbaa !15
  %conv4 = zext i32 %14 to i64
  %15 = load i64, i64* %samplesperrow, align 8, !tbaa !92
  %cmp = icmp ne i64 %conv4, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 69, i32* %msg_code, align 4, !tbaa !12
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pass_number = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %23, i32 0, i32 1
  store i32 0, i32* %pass_number, align 4, !tbaa !83
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* %24)
  %25 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %25, i32 0, i32 2
  store i32 %call, i32* %using_merged_upsample, align 4, !tbaa !75
  %26 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %26, i32 0, i32 3
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %quantizer_1pass, align 8, !tbaa !67
  %27 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %27, i32 0, i32 4
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %quantizer_2pass, align 8, !tbaa !45
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 19
  %29 = load i32, i32* %quantize_colors, align 4, !tbaa !36
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %if.end
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 14
  %31 = load i32, i32* %buffered_image, align 4, !tbaa !87
  %tobool7 = icmp ne i32 %31, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 23
  store i32 0, i32* %enable_1pass_quant, align 4, !tbaa !66
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 24
  store i32 0, i32* %enable_external_quant, align 4, !tbaa !43
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 25
  store i32 0, i32* %enable_2pass_quant, align 4, !tbaa !65
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 19
  %36 = load i32, i32* %quantize_colors10, align 4, !tbaa !36
  %tobool11 = icmp ne i32 %36, 0
  br i1 %tobool11, label %if.then.12, label %if.end.55

if.then.12:                                       ; preds = %if.end.9
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 15
  %38 = load i32, i32* %raw_data_out, align 4, !tbaa !74
  %tobool13 = icmp ne i32 %38, 0
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.then.12
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !11
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 5
  store i32 46, i32* %msg_code16, align 4, !tbaa !12
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !11
  %error_exit18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 0
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit18, align 8, !tbaa !16
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %45 = bitcast %struct.jpeg_decompress_struct* %44 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* %45)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.then.12
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 28
  %47 = load i32, i32* %out_color_components20, align 4, !tbaa !35
  %cmp21 = icmp ne i32 %47, 3
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.19
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_1pass_quant24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 23
  store i32 1, i32* %enable_1pass_quant24, align 4, !tbaa !66
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_external_quant25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 24
  store i32 0, i32* %enable_external_quant25, align 4, !tbaa !43
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_2pass_quant26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 25
  store i32 0, i32* %enable_2pass_quant26, align 4, !tbaa !65
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 32
  store i8** null, i8*** %colormap, align 8, !tbaa !44
  br label %if.end.40

if.else:                                          ; preds = %if.end.19
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 32
  %53 = load i8**, i8*** %colormap27, align 8, !tbaa !44
  %cmp28 = icmp ne i8** %53, null
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.else
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_external_quant31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 24
  store i32 1, i32* %enable_external_quant31, align 4, !tbaa !43
  br label %if.end.39

if.else.32:                                       ; preds = %if.else
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 21
  %56 = load i32, i32* %two_pass_quantize, align 4, !tbaa !64
  %tobool33 = icmp ne i32 %56, 0
  br i1 %tobool33, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else.32
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_2pass_quant35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 25
  store i32 1, i32* %enable_2pass_quant35, align 4, !tbaa !65
  br label %if.end.38

if.else.36:                                       ; preds = %if.else.32
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_1pass_quant37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 23
  store i32 1, i32* %enable_1pass_quant37, align 4, !tbaa !66
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.30
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.23
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_1pass_quant41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 23
  %60 = load i32, i32* %enable_1pass_quant41, align 4, !tbaa !66
  %tobool42 = icmp ne i32 %60, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.40
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_1pass_quantizer(%struct.jpeg_decompress_struct* %61)
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 83
  %63 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !48
  %64 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %quantizer_1pass44 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %64, i32 0, i32 3
  store %struct.jpeg_color_quantizer* %63, %struct.jpeg_color_quantizer** %quantizer_1pass44, align 8, !tbaa !67
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.40
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_2pass_quant46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 25
  %66 = load i32, i32* %enable_2pass_quant46, align 4, !tbaa !65
  %tobool47 = icmp ne i32 %66, 0
  br i1 %tobool47, label %if.then.51, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.end.45
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_external_quant49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 24
  %68 = load i32, i32* %enable_external_quant49, align 4, !tbaa !43
  %tobool50 = icmp ne i32 %68, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %lor.lhs.false.48, %if.end.45
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_2pass_quantizer(%struct.jpeg_decompress_struct* %69)
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 83
  %71 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize52, align 8, !tbaa !48
  %72 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %quantizer_2pass53 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %72, i32 0, i32 4
  store %struct.jpeg_color_quantizer* %71, %struct.jpeg_color_quantizer** %quantizer_2pass53, align 8, !tbaa !45
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %lor.lhs.false.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.9
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %raw_data_out56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 15
  %74 = load i32, i32* %raw_data_out56, align 4, !tbaa !74
  %tobool57 = icmp ne i32 %74, 0
  br i1 %tobool57, label %if.end.65, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  %75 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %using_merged_upsample59 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %75, i32 0, i32 2
  %76 = load i32, i32* %using_merged_upsample59, align 4, !tbaa !75
  %tobool60 = icmp ne i32 %76, 0
  br i1 %tobool60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.then.58
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_merged_upsampler(%struct.jpeg_decompress_struct* %77)
  br label %if.end.63

if.else.62:                                       ; preds = %if.then.58
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_color_deconverter(%struct.jpeg_decompress_struct* %78)
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_upsampler(%struct.jpeg_decompress_struct* %79)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_2pass_quant64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 25
  %82 = load i32, i32* %enable_2pass_quant64, align 4, !tbaa !65
  call void @jinit_d_post_controller(%struct.jpeg_decompress_struct* %80, i32 %82)
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.63, %if.end.55
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_inverse_dct(%struct.jpeg_decompress_struct* %83)
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 45
  %85 = load i32, i32* %arith_code, align 4, !tbaa !93
  %tobool66 = icmp ne i32 %85, 0
  br i1 %tobool66, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.end.65
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 0
  %87 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !11
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %87, i32 0, i32 5
  store i32 1, i32* %msg_code69, align 4, !tbaa !12
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !11
  %error_exit71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 0
  %90 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit71, align 8, !tbaa !16
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %92 = bitcast %struct.jpeg_decompress_struct* %91 to %struct.jpeg_common_struct*
  call void %90(%struct.jpeg_common_struct* %92)
  br label %if.end.77

if.else.72:                                       ; preds = %if.end.65
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 44
  %94 = load i32, i32* %progressive_mode, align 4, !tbaa !94
  %tobool73 = icmp ne i32 %94, 0
  br i1 %tobool73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.else.72
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* %95)
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.72
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_huff_decoder(%struct.jpeg_decompress_struct* %96)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.67
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 77
  %98 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !88
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %98, i32 0, i32 4
  %99 = load i32, i32* %has_multiple_scans, align 4, !tbaa !95
  %tobool78 = icmp ne i32 %99, 0
  br i1 %tobool78, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.77
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %buffered_image79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 14
  %101 = load i32, i32* %buffered_image79, align 4, !tbaa !87
  %tobool80 = icmp ne i32 %101, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.77
  %102 = phi i1 [ true, %if.end.77 ], [ %tobool80, %lor.rhs ]
  %lor.ext = zext i1 %102 to i32
  store i32 %lor.ext, i32* %use_c_buffer, align 4, !tbaa !15
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %104 = load i32, i32* %use_c_buffer, align 4, !tbaa !15
  call void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* %103, i32 %104)
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %raw_data_out81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 15
  %106 = load i32, i32* %raw_data_out81, align 4, !tbaa !74
  %tobool82 = icmp ne i32 %106, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %lor.end
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_d_main_controller(%struct.jpeg_decompress_struct* %107, i32 0)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %lor.end
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 1
  %109 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !52
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %109, i32 0, i32 6
  %realize_virt_arrays85 = bitcast {}** %realize_virt_arrays to void (%struct.jpeg_common_struct*)**
  %110 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %realize_virt_arrays85, align 8, !tbaa !96
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %112 = bitcast %struct.jpeg_decompress_struct* %111 to %struct.jpeg_common_struct*
  call void %110(%struct.jpeg_common_struct* %112)
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 77
  %114 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl86, align 8, !tbaa !88
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %114, i32 0, i32 2
  %start_input_pass87 = bitcast {}** %start_input_pass to void (%struct.jpeg_decompress_struct*)**
  %115 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_input_pass87, align 8, !tbaa !97
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %115(%struct.jpeg_decompress_struct* %116)
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 2
  %118 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !82
  %cmp88 = icmp ne %struct.jpeg_progress_mgr* %118, null
  br i1 %cmp88, label %land.lhs.true, label %if.end.114

land.lhs.true:                                    ; preds = %if.end.84
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %buffered_image90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 14
  %120 = load i32, i32* %buffered_image90, align 4, !tbaa !87
  %tobool91 = icmp ne i32 %120, 0
  br i1 %tobool91, label %if.end.114, label %land.lhs.true.92

land.lhs.true.92:                                 ; preds = %land.lhs.true
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 77
  %122 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl93, align 8, !tbaa !88
  %has_multiple_scans94 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %122, i32 0, i32 4
  %123 = load i32, i32* %has_multiple_scans94, align 4, !tbaa !95
  %tobool95 = icmp ne i32 %123, 0
  br i1 %tobool95, label %if.then.96, label %if.end.114

if.then.96:                                       ; preds = %land.lhs.true.92
  %124 = bitcast i32* %nscans to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #5
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %125, i32 0, i32 44
  %126 = load i32, i32* %progressive_mode97, align 4, !tbaa !94
  %tobool98 = icmp ne i32 %126, 0
  br i1 %tobool98, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.then.96
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 8
  %128 = load i32, i32* %num_components, align 4, !tbaa !25
  %mul100 = mul nsw i32 3, %128
  %add = add nsw i32 2, %mul100
  store i32 %add, i32* %nscans, align 4, !tbaa !15
  br label %if.end.103

if.else.101:                                      ; preds = %if.then.96
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 8
  %130 = load i32, i32* %num_components102, align 4, !tbaa !25
  store i32 %130, i32* %nscans, align 4, !tbaa !15
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.99
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %131, i32 0, i32 2
  %132 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress104, align 8, !tbaa !82
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %132, i32 0, i32 1
  store i64 0, i64* %pass_counter, align 8, !tbaa !98
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 60
  %134 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !99
  %conv105 = zext i32 %134 to i64
  %135 = load i32, i32* %nscans, align 4, !tbaa !15
  %conv106 = sext i32 %135 to i64
  %mul107 = mul nsw i64 %conv105, %conv106
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %136, i32 0, i32 2
  %137 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress108, align 8, !tbaa !82
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %137, i32 0, i32 2
  store i64 %mul107, i64* %pass_limit, align 8, !tbaa !100
  %138 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %138, i32 0, i32 2
  %139 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress109, align 8, !tbaa !82
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %139, i32 0, i32 3
  store i32 0, i32* %completed_passes, align 4, !tbaa !84
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_2pass_quant110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %140, i32 0, i32 25
  %141 = load i32, i32* %enable_2pass_quant110, align 4, !tbaa !65
  %tobool111 = icmp ne i32 %141, 0
  %cond = select i1 %tobool111, i32 3, i32 2
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %142, i32 0, i32 2
  %143 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress112, align 8, !tbaa !82
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %143, i32 0, i32 4
  store i32 %cond, i32* %total_passes, align 4, !tbaa !86
  %144 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !2
  %pass_number113 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %144, i32 0, i32 1
  %145 = load i32, i32* %pass_number113, align 4, !tbaa !83
  %inc = add nsw i32 %145, 1
  store i32 %inc, i32* %pass_number113, align 4, !tbaa !83
  %146 = bitcast i32* %nscans to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #5
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.103, %land.lhs.true.92, %land.lhs.true, %if.end.84
  %147 = bitcast i32* %jd_samplesperrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #5
  %148 = bitcast i64* %samplesperrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #5
  %149 = bitcast i32* %use_c_buffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #5
  %150 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_range_limit_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %table = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i8** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !52
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !53
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 1408)
  store i8* %call, i8** %table, align 8, !tbaa !2
  %7 = load i8*, i8** %table, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 256
  store i8* %add.ptr, i8** %table, align 8, !tbaa !2
  %8 = load i8*, i8** %table, align 8, !tbaa !2
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 61
  store i8* %8, i8** %sample_range_limit, align 8, !tbaa !101
  %10 = load i8*, i8** %table, align 8, !tbaa !2
  %add.ptr1 = getelementptr inbounds i8, i8* %10, i64 -256
  %11 = load i8*, i8** %table, align 8, !tbaa !2
  %add.ptr2 = getelementptr inbounds i8, i8* %11, i64 -256
  %12 = call i64 @llvm.objectsize.i64.p0i8(i8* %add.ptr2, i1 false)
  %call3 = call i8* @__memset_chk(i8* %add.ptr1, i32 0, i64 256, i64 %12) #5
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !15
  %cmp = icmp sle i32 %13, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !15
  %conv = trunc i32 %14 to i8
  %15 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %table, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %table, align 8, !tbaa !2
  %add.ptr4 = getelementptr inbounds i8, i8* %18, i64 128
  store i8* %add.ptr4, i8** %table, align 8, !tbaa !2
  store i32 128, i32* %i, align 4, !tbaa !15
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %19 = load i32, i32* %i, align 4, !tbaa !15
  %cmp6 = icmp slt i32 %19, 512
  br i1 %cmp6, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.5
  %20 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom9 = sext i32 %20 to i64
  %21 = load i8*, i8** %table, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i64 %idxprom9
  store i8 -1, i8* %arrayidx10, align 1, !tbaa !102
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %22 = load i32, i32* %i, align 4, !tbaa !15
  %inc12 = add nsw i32 %22, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !15
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  %23 = load i8*, i8** %table, align 8, !tbaa !2
  %add.ptr14 = getelementptr inbounds i8, i8* %23, i64 512
  %24 = load i8*, i8** %table, align 8, !tbaa !2
  %add.ptr15 = getelementptr inbounds i8, i8* %24, i64 512
  %25 = call i64 @llvm.objectsize.i64.p0i8(i8* %add.ptr15, i1 false)
  %call16 = call i8* @__memset_chk(i8* %add.ptr14, i32 0, i64 384, i64 %25) #5
  %26 = load i8*, i8** %table, align 8, !tbaa !2
  %add.ptr17 = getelementptr inbounds i8, i8* %26, i64 896
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 61
  %28 = load i8*, i8** %sample_range_limit18, align 8, !tbaa !101
  %29 = load i8*, i8** %table, align 8, !tbaa !2
  %add.ptr19 = getelementptr inbounds i8, i8* %29, i64 896
  %30 = call i64 @llvm.objectsize.i64.p0i8(i8* %add.ptr19, i1 false)
  %call20 = call i8* @__memcpy_chk(i8* %add.ptr17, i8* %28, i64 128, i64 %30) #5
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #5
  %32 = bitcast i8** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #5
  ret void
}

declare void @jinit_1pass_quantizer(%struct.jpeg_decompress_struct*) #2

declare void @jinit_2pass_quantizer(%struct.jpeg_decompress_struct*) #2

declare void @jinit_merged_upsampler(%struct.jpeg_decompress_struct*) #2

declare void @jinit_color_deconverter(%struct.jpeg_decompress_struct*) #2

declare void @jinit_upsampler(%struct.jpeg_decompress_struct*) #2

declare void @jinit_d_post_controller(%struct.jpeg_decompress_struct*, i32) #2

declare void @jinit_inverse_dct(%struct.jpeg_decompress_struct*) #2

declare void @jinit_phuff_decoder(%struct.jpeg_decompress_struct*) #2

declare void @jinit_huff_decoder(%struct.jpeg_decompress_struct*) #2

declare void @jinit_d_coef_controller(%struct.jpeg_decompress_struct*, i32) #2

declare void @jinit_d_main_controller(%struct.jpeg_decompress_struct*, i32) #2

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 28}
!7 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !4, i64 56, !8, i64 60, !8, i64 64, !9, i64 72, !8, i64 80, !8, i64 84, !4, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !4, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !3, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !8, i64 288, !3, i64 296, !8, i64 304, !8, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !8, i64 360, !8, i64 364, !4, i64 368, !10, i64 370, !10, i64 372, !8, i64 376, !4, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !3, i64 408, !8, i64 416, !4, i64 424, !8, i64 456, !8, i64 460, !8, i64 464, !4, i64 468, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!7, !3, i64 0}
!12 = !{!13, !8, i64 40}
!13 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !14, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!14 = !{!"long", !4, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!13, !3, i64 0}
!17 = !{!7, !8, i64 60}
!18 = !{!7, !8, i64 64}
!19 = !{!7, !8, i64 40}
!20 = !{!7, !8, i64 128}
!21 = !{!7, !8, i64 44}
!22 = !{!7, !8, i64 132}
!23 = !{!7, !8, i64 396}
!24 = !{!7, !3, i64 296}
!25 = !{!7, !8, i64 48}
!26 = !{!27, !8, i64 8}
!27 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!28 = !{!7, !8, i64 388}
!29 = !{!27, !8, i64 12}
!30 = !{!7, !8, i64 392}
!31 = !{!27, !8, i64 36}
!32 = !{!27, !8, i64 40}
!33 = !{!27, !8, i64 44}
!34 = !{!7, !4, i64 56}
!35 = !{!7, !8, i64 136}
!36 = !{!7, !8, i64 100}
!37 = !{!7, !8, i64 140}
!38 = !{!7, !8, i64 144}
!39 = !{!7, !8, i64 92}
!40 = !{!7, !8, i64 384}
!41 = !{!7, !4, i64 52}
!42 = !{!7, !3, i64 528}
!43 = !{!7, !8, i64 120}
!44 = !{!7, !3, i64 152}
!45 = !{!46, !3, i64 40}
!46 = !{!"", !47, i64 0, !8, i64 24, !8, i64 28, !3, i64 32, !3, i64 40}
!47 = !{!"jpeg_decomp_master", !3, i64 0, !3, i64 8, !8, i64 16}
!48 = !{!7, !3, i64 608}
!49 = !{!50, !3, i64 24}
!50 = !{!"jpeg_color_quantizer", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
!51 = !{!46, !8, i64 16}
!52 = !{!7, !3, i64 8}
!53 = !{!54, !3, i64 0}
!54 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!55 = !{!46, !3, i64 0}
!56 = !{!46, !3, i64 8}
!57 = !{!50, !3, i64 0}
!58 = !{!7, !3, i64 552}
!59 = !{!60, !3, i64 0}
!60 = !{!"jpeg_d_post_controller", !3, i64 0, !3, i64 8}
!61 = !{!7, !3, i64 536}
!62 = !{!63, !3, i64 0}
!63 = !{!"jpeg_d_main_controller", !3, i64 0, !3, i64 8}
!64 = !{!7, !8, i64 108}
!65 = !{!7, !8, i64 124}
!66 = !{!7, !8, i64 116}
!67 = !{!46, !3, i64 32}
!68 = !{!7, !3, i64 584}
!69 = !{!70, !3, i64 0}
!70 = !{!"jpeg_inverse_dct", !3, i64 0, !4, i64 8}
!71 = !{!7, !3, i64 544}
!72 = !{!73, !3, i64 16}
!73 = !{!"jpeg_d_coef_controller", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!74 = !{!7, !8, i64 84}
!75 = !{!46, !8, i64 28}
!76 = !{!7, !3, i64 600}
!77 = !{!78, !3, i64 0}
!78 = !{!"jpeg_color_deconverter", !3, i64 0, !3, i64 8}
!79 = !{!7, !3, i64 592}
!80 = !{!81, !3, i64 0}
!81 = !{!"jpeg_upsampler", !3, i64 0, !3, i64 8, !8, i64 16}
!82 = !{!7, !3, i64 16}
!83 = !{!46, !8, i64 24}
!84 = !{!85, !8, i64 24}
!85 = !{!"jpeg_progress_mgr", !3, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28}
!86 = !{!85, !8, i64 28}
!87 = !{!7, !8, i64 80}
!88 = !{!7, !3, i64 560}
!89 = !{!90, !8, i64 36}
!90 = !{!"jpeg_input_controller", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !8, i64 32, !8, i64 36}
!91 = !{!50, !3, i64 16}
!92 = !{!14, !14, i64 0}
!93 = !{!7, !8, i64 308}
!94 = !{!7, !8, i64 304}
!95 = !{!90, !8, i64 32}
!96 = !{!54, !3, i64 48}
!97 = !{!90, !3, i64 16}
!98 = !{!85, !14, i64 8}
!99 = !{!7, !8, i64 400}
!100 = !{!85, !14, i64 16}
!101 = !{!7, !3, i64 408}
!102 = !{!4, !4, i64 0}
