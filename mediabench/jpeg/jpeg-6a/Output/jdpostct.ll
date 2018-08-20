; ModuleID = 'jdpostct.c'
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
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { {}*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_post_controller = type { %struct.jpeg_d_post_controller, %struct.jvirt_sarray_control*, i8**, i32, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_d_post_controller(%struct.jpeg_decompress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 48)
  %6 = bitcast i8* %call to %struct.my_post_controller*
  store %struct.my_post_controller* %6, %struct.my_post_controller** %post, align 8, !tbaa !2
  %7 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %8 = bitcast %struct.my_post_controller* %7 to %struct.jpeg_d_post_controller*
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 76
  store %struct.jpeg_d_post_controller* %8, %struct.jpeg_d_post_controller** %post1, align 8, !tbaa !15
  %10 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_dpost, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8, !tbaa !16
  %11 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %11, i32 0, i32 1
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !19
  %12 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %12, i32 0, i32 2
  store i8** null, i8*** %buffer, align 8, !tbaa !20
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 19
  %14 = load i32, i32* %quantize_colors, align 4, !tbaa !21
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 58
  %16 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !22
  %17 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %17, i32 0, i32 3
  store i32 %16, i32* %strip_height, align 4, !tbaa !23
  %18 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %tobool2 = icmp ne i32 %18, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 1
  %20 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem4, align 8, !tbaa !8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %20, i32 0, i32 4
  %21 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8, !tbaa !24
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 26
  %25 = load i32, i32* %output_width, align 4, !tbaa !25
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 28
  %27 = load i32, i32* %out_color_components, align 4, !tbaa !26
  %mul = mul i32 %25, %27
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 27
  %29 = load i32, i32* %output_height, align 4, !tbaa !27
  %conv = zext i32 %29 to i64
  %30 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height5 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %30, i32 0, i32 3
  %31 = load i32, i32* %strip_height5, align 4, !tbaa !23
  %conv6 = zext i32 %31 to i64
  %call7 = call i64 @jround_up(i64 %conv, i64 %conv6)
  %conv8 = trunc i64 %call7 to i32
  %32 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height9 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %32, i32 0, i32 3
  %33 = load i32, i32* %strip_height9, align 4, !tbaa !23
  %call10 = call %struct.jvirt_sarray_control* %21(%struct.jpeg_common_struct* %23, i32 1, i32 0, i32 %mul, i32 %conv8, i32 %33)
  %34 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %whole_image11 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %34, i32 0, i32 1
  store %struct.jvirt_sarray_control* %call10, %struct.jvirt_sarray_control** %whole_image11, align 8, !tbaa !19
  br label %if.end

if.else:                                          ; preds = %if.then
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 1
  %36 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem12, align 8, !tbaa !8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %36, i32 0, i32 2
  %37 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !28
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %39 = bitcast %struct.jpeg_decompress_struct* %38 to %struct.jpeg_common_struct*
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 26
  %41 = load i32, i32* %output_width13, align 4, !tbaa !25
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 28
  %43 = load i32, i32* %out_color_components14, align 4, !tbaa !26
  %mul15 = mul i32 %41, %43
  %44 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height16 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %44, i32 0, i32 3
  %45 = load i32, i32* %strip_height16, align 4, !tbaa !23
  %call17 = call i8** %37(%struct.jpeg_common_struct* %39, i32 1, i32 %mul15, i32 %45)
  %46 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer18 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %46, i32 0, i32 2
  store i8** %call17, i8*** %buffer18, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  %47 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_dpost(%struct.jpeg_decompress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !29
  %0 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 76
  %2 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_post_controller* %2 to %struct.my_post_controller*
  store %struct.my_post_controller* %3, %struct.my_post_controller** %post, align 8, !tbaa !2
  %4 = load i32, i32* %pass_mode.addr, align 4, !tbaa !29
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.8
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 19
  %6 = load i32, i32* %quantize_colors, align 4, !tbaa !21
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %7 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %7, i32 0, i32 0
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_1pass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8, !tbaa !30
  %8 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %8, i32 0, i32 2
  %9 = load i8**, i8*** %buffer, align 8, !tbaa !20
  %cmp = icmp eq i8** %9, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 1
  %11 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %11, i32 0, i32 7
  %12 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !31
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  %15 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %15, i32 0, i32 1
  %16 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !19
  %17 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %17, i32 0, i32 3
  %18 = load i32, i32* %strip_height, align 4, !tbaa !23
  %call = call i8** %12(%struct.jpeg_common_struct* %14, %struct.jvirt_sarray_control* %16, i32 0, i32 %18, i32 1)
  %19 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer3 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %19, i32 0, i32 2
  store i8** %call, i8*** %buffer3, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.7

if.else:                                          ; preds = %sw.bb
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 81
  %21 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !32
  %upsample4 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %21, i32 0, i32 1
  %22 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample4, align 8, !tbaa !33
  %23 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %23, i32 0, i32 0
  %post_process_data6 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub5, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* %22, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data6, align 8, !tbaa !30
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %24 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %whole_image9 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %24, i32 0, i32 1
  %25 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image9, align 8, !tbaa !19
  %cmp10 = icmp eq %struct.jvirt_sarray_control* %25, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %sw.bb.8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4, !tbaa !36
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %32 = bitcast %struct.jpeg_decompress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* %32)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %sw.bb.8
  %33 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %pub14 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %33, i32 0, i32 0
  %post_process_data15 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub14, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_prepass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data15, align 8, !tbaa !30
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %34 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %whole_image17 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %34, i32 0, i32 1
  %35 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image17, align 8, !tbaa !19
  %cmp18 = icmp eq %struct.jvirt_sarray_control* %35, null
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %sw.bb.16
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !35
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 5
  store i32 4, i32* %msg_code21, align 4, !tbaa !36
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !35
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit23, align 8, !tbaa !38
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %42 = bitcast %struct.jpeg_decompress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %sw.bb.16
  %43 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %pub25 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %43, i32 0, i32 0
  %post_process_data26 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub25, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_2pass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data26, align 8, !tbaa !30
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !35
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 4, i32* %msg_code28, align 4, !tbaa !36
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8, !tbaa !35
  %error_exit30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 0
  %48 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit30, align 8, !tbaa !38
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %50 = bitcast %struct.jpeg_decompress_struct* %49 to %struct.jpeg_common_struct*
  call void %48(%struct.jpeg_common_struct* %50)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.24, %if.end.13, %if.end.7
  %51 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %51, i32 0, i32 5
  store i32 0, i32* %next_row, align 4, !tbaa !39
  %52 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %starting_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %52, i32 0, i32 4
  store i32 0, i32* %starting_row, align 4, !tbaa !40
  %53 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  ret void
}

declare i64 @jround_up(i64, i64) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @post_process_1pass(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  %num_rows = alloca i32, align 4
  %max_rows = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4, !tbaa !6
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !2
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 76
  %2 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_post_controller* %2 to %struct.my_post_controller*
  store %struct.my_post_controller* %3, %struct.my_post_controller** %post, align 8, !tbaa !2
  %4 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %max_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !6
  %7 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %8 = load i32, i32* %7, align 4, !tbaa !6
  %sub = sub i32 %6, %8
  store i32 %sub, i32* %max_rows, align 4, !tbaa !6
  %9 = load i32, i32* %max_rows, align 4, !tbaa !6
  %10 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i32 0, i32 3
  %11 = load i32, i32* %strip_height, align 4, !tbaa !23
  %cmp = icmp ugt i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height2 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %12, i32 0, i32 3
  %13 = load i32, i32* %strip_height2, align 4, !tbaa !23
  store i32 %13, i32* %max_rows, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %num_rows, align 4, !tbaa !6
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 81
  %15 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !32
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %15, i32 0, i32 1
  %16 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample3, align 8, !tbaa !33
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %18 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %19 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  %20 = load i32, i32* %in_row_groups_avail.addr, align 4, !tbaa !6
  %21 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %21, i32 0, i32 2
  %22 = load i8**, i8*** %buffer, align 8, !tbaa !20
  %23 = load i32, i32* %max_rows, align 4, !tbaa !6
  call void %16(%struct.jpeg_decompress_struct* %17, i8*** %18, i32* %19, i32 %20, i8** %22, i32* %num_rows, i32 %23)
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 83
  %25 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !41
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %25, i32 0, i32 1
  %26 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8, !tbaa !42
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %28 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer4 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %28, i32 0, i32 2
  %29 = load i8**, i8*** %buffer4, align 8, !tbaa !20
  %30 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %31 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %32 = load i32, i32* %31, align 4, !tbaa !6
  %idx.ext = zext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %30, i64 %idx.ext
  %33 = load i32, i32* %num_rows, align 4, !tbaa !6
  call void %26(%struct.jpeg_decompress_struct* %27, i8** %29, i8** %add.ptr, i32 %33)
  %34 = load i32, i32* %num_rows, align 4, !tbaa !6
  %35 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %36 = load i32, i32* %35, align 4, !tbaa !6
  %add = add i32 %36, %34
  store i32 %add, i32* %35, align 4, !tbaa !6
  %37 = bitcast i32* %max_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #3
  %38 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #3
  %39 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @post_process_prepass(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  %old_next_row = alloca i32, align 4
  %num_rows = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4, !tbaa !6
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !2
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 76
  %2 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_post_controller* %2 to %struct.my_post_controller*
  store %struct.my_post_controller* %3, %struct.my_post_controller** %post, align 8, !tbaa !2
  %4 = bitcast i32* %old_next_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %6, i32 0, i32 5
  %7 = load i32, i32* %next_row, align 4, !tbaa !39
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %9, i32 0, i32 7
  %10 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !31
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  %13 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %13, i32 0, i32 1
  %14 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !19
  %15 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %starting_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %15, i32 0, i32 4
  %16 = load i32, i32* %starting_row, align 4, !tbaa !40
  %17 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %17, i32 0, i32 3
  %18 = load i32, i32* %strip_height, align 4, !tbaa !23
  %call = call i8** %10(%struct.jpeg_common_struct* %12, %struct.jvirt_sarray_control* %14, i32 %16, i32 %18, i32 1)
  %19 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %19, i32 0, i32 2
  store i8** %call, i8*** %buffer, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row2 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %20, i32 0, i32 5
  %21 = load i32, i32* %next_row2, align 4, !tbaa !39
  store i32 %21, i32* %old_next_row, align 4, !tbaa !6
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 81
  %23 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !32
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %23, i32 0, i32 1
  %24 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample3, align 8, !tbaa !33
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %26 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %27 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  %28 = load i32, i32* %in_row_groups_avail.addr, align 4, !tbaa !6
  %29 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer4 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %29, i32 0, i32 2
  %30 = load i8**, i8*** %buffer4, align 8, !tbaa !20
  %31 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row5 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %31, i32 0, i32 5
  %32 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height6 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %32, i32 0, i32 3
  %33 = load i32, i32* %strip_height6, align 4, !tbaa !23
  call void %24(%struct.jpeg_decompress_struct* %25, i8*** %26, i32* %27, i32 %28, i8** %30, i32* %next_row5, i32 %33)
  %34 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row7 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %34, i32 0, i32 5
  %35 = load i32, i32* %next_row7, align 4, !tbaa !39
  %36 = load i32, i32* %old_next_row, align 4, !tbaa !6
  %cmp8 = icmp ugt i32 %35, %36
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %37 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row10 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %37, i32 0, i32 5
  %38 = load i32, i32* %next_row10, align 4, !tbaa !39
  %39 = load i32, i32* %old_next_row, align 4, !tbaa !6
  %sub = sub i32 %38, %39
  store i32 %sub, i32* %num_rows, align 4, !tbaa !6
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 83
  %41 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !41
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %41, i32 0, i32 1
  %42 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8, !tbaa !42
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %44 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer11 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %44, i32 0, i32 2
  %45 = load i8**, i8*** %buffer11, align 8, !tbaa !20
  %46 = load i32, i32* %old_next_row, align 4, !tbaa !6
  %idx.ext = zext i32 %46 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %45, i64 %idx.ext
  %47 = load i32, i32* %num_rows, align 4, !tbaa !6
  call void %42(%struct.jpeg_decompress_struct* %43, i8** %add.ptr, i8** null, i32 %47)
  %48 = load i32, i32* %num_rows, align 4, !tbaa !6
  %49 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %50 = load i32, i32* %49, align 4, !tbaa !6
  %add = add i32 %50, %48
  store i32 %add, i32* %49, align 4, !tbaa !6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %51 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row13 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %51, i32 0, i32 5
  %52 = load i32, i32* %next_row13, align 4, !tbaa !39
  %53 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height14 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %53, i32 0, i32 3
  %54 = load i32, i32* %strip_height14, align 4, !tbaa !23
  %cmp15 = icmp uge i32 %52, %54
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.12
  %55 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height17 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %55, i32 0, i32 3
  %56 = load i32, i32* %strip_height17, align 4, !tbaa !23
  %57 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %starting_row18 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %57, i32 0, i32 4
  %58 = load i32, i32* %starting_row18, align 4, !tbaa !40
  %add19 = add i32 %58, %56
  store i32 %add19, i32* %starting_row18, align 4, !tbaa !40
  %59 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row20 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %59, i32 0, i32 5
  store i32 0, i32* %next_row20, align 4, !tbaa !39
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.12
  %60 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #3
  %61 = bitcast i32* %old_next_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #3
  %62 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @post_process_2pass(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  %num_rows = alloca i32, align 4
  %max_rows = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4, !tbaa !6
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !2
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 76
  %2 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_post_controller* %2 to %struct.my_post_controller*
  store %struct.my_post_controller* %3, %struct.my_post_controller** %post, align 8, !tbaa !2
  %4 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %max_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %6, i32 0, i32 5
  %7 = load i32, i32* %next_row, align 4, !tbaa !39
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %9, i32 0, i32 7
  %10 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !31
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  %13 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %13, i32 0, i32 1
  %14 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !19
  %15 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %starting_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %15, i32 0, i32 4
  %16 = load i32, i32* %starting_row, align 4, !tbaa !40
  %17 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %17, i32 0, i32 3
  %18 = load i32, i32* %strip_height, align 4, !tbaa !23
  %call = call i8** %10(%struct.jpeg_common_struct* %12, %struct.jvirt_sarray_control* %14, i32 %16, i32 %18, i32 0)
  %19 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %19, i32 0, i32 2
  store i8** %call, i8*** %buffer, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height2 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %20, i32 0, i32 3
  %21 = load i32, i32* %strip_height2, align 4, !tbaa !23
  %22 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row3 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %22, i32 0, i32 5
  %23 = load i32, i32* %next_row3, align 4, !tbaa !39
  %sub = sub i32 %21, %23
  store i32 %sub, i32* %num_rows, align 4, !tbaa !6
  %24 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !6
  %25 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %26 = load i32, i32* %25, align 4, !tbaa !6
  %sub4 = sub i32 %24, %26
  store i32 %sub4, i32* %max_rows, align 4, !tbaa !6
  %27 = load i32, i32* %num_rows, align 4, !tbaa !6
  %28 = load i32, i32* %max_rows, align 4, !tbaa !6
  %cmp5 = icmp ugt i32 %27, %28
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %29 = load i32, i32* %max_rows, align 4, !tbaa !6
  store i32 %29, i32* %num_rows, align 4, !tbaa !6
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 27
  %31 = load i32, i32* %output_height, align 4, !tbaa !27
  %32 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %starting_row8 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %32, i32 0, i32 4
  %33 = load i32, i32* %starting_row8, align 4, !tbaa !40
  %sub9 = sub i32 %31, %33
  store i32 %sub9, i32* %max_rows, align 4, !tbaa !6
  %34 = load i32, i32* %num_rows, align 4, !tbaa !6
  %35 = load i32, i32* %max_rows, align 4, !tbaa !6
  %cmp10 = icmp ugt i32 %34, %35
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %36 = load i32, i32* %max_rows, align 4, !tbaa !6
  store i32 %36, i32* %num_rows, align 4, !tbaa !6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.7
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 83
  %38 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !41
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %38, i32 0, i32 1
  %39 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8, !tbaa !42
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %41 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %buffer13 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %41, i32 0, i32 2
  %42 = load i8**, i8*** %buffer13, align 8, !tbaa !20
  %43 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row14 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %43, i32 0, i32 5
  %44 = load i32, i32* %next_row14, align 4, !tbaa !39
  %idx.ext = zext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %42, i64 %idx.ext
  %45 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %46 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %47 = load i32, i32* %46, align 4, !tbaa !6
  %idx.ext15 = zext i32 %47 to i64
  %add.ptr16 = getelementptr inbounds i8*, i8** %45, i64 %idx.ext15
  %48 = load i32, i32* %num_rows, align 4, !tbaa !6
  call void %39(%struct.jpeg_decompress_struct* %40, i8** %add.ptr, i8** %add.ptr16, i32 %48)
  %49 = load i32, i32* %num_rows, align 4, !tbaa !6
  %50 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %51 = load i32, i32* %50, align 4, !tbaa !6
  %add = add i32 %51, %49
  store i32 %add, i32* %50, align 4, !tbaa !6
  %52 = load i32, i32* %num_rows, align 4, !tbaa !6
  %53 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row17 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %53, i32 0, i32 5
  %54 = load i32, i32* %next_row17, align 4, !tbaa !39
  %add18 = add i32 %54, %52
  store i32 %add18, i32* %next_row17, align 4, !tbaa !39
  %55 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row19 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %55, i32 0, i32 5
  %56 = load i32, i32* %next_row19, align 4, !tbaa !39
  %57 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height20 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %57, i32 0, i32 3
  %58 = load i32, i32* %strip_height20, align 4, !tbaa !23
  %cmp21 = icmp uge i32 %56, %58
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.12
  %59 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %strip_height23 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %59, i32 0, i32 3
  %60 = load i32, i32* %strip_height23, align 4, !tbaa !23
  %61 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %starting_row24 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %61, i32 0, i32 4
  %62 = load i32, i32* %starting_row24, align 4, !tbaa !40
  %add25 = add i32 %62, %60
  store i32 %add25, i32* %starting_row24, align 4, !tbaa !40
  %63 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !2
  %next_row26 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %63, i32 0, i32 5
  store i32 0, i32* %next_row26, align 4, !tbaa !39
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end.12
  %64 = bitcast i32* %max_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #3
  %65 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #3
  %66 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #3
  ret void
}

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
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 8}
!9 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !4, i64 56, !7, i64 60, !7, i64 64, !10, i64 72, !7, i64 80, !7, i64 84, !4, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !4, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !3, i64 152, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !7, i64 288, !3, i64 296, !7, i64 304, !7, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !7, i64 360, !7, i64 364, !4, i64 368, !11, i64 370, !11, i64 372, !7, i64 376, !4, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !3, i64 408, !7, i64 416, !4, i64 424, !7, i64 456, !7, i64 460, !7, i64 464, !4, i64 468, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!10 = !{!"double", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!13, !3, i64 0}
!13 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!14 = !{!"long", !4, i64 0}
!15 = !{!9, !3, i64 552}
!16 = !{!17, !3, i64 0}
!17 = !{!"", !18, i64 0, !3, i64 16, !3, i64 24, !7, i64 32, !7, i64 36, !7, i64 40}
!18 = !{!"jpeg_d_post_controller", !3, i64 0, !3, i64 8}
!19 = !{!17, !3, i64 16}
!20 = !{!17, !3, i64 24}
!21 = !{!9, !7, i64 100}
!22 = !{!9, !7, i64 392}
!23 = !{!17, !7, i64 32}
!24 = !{!13, !3, i64 32}
!25 = !{!9, !7, i64 128}
!26 = !{!9, !7, i64 136}
!27 = !{!9, !7, i64 132}
!28 = !{!13, !3, i64 16}
!29 = !{!4, !4, i64 0}
!30 = !{!17, !3, i64 8}
!31 = !{!13, !3, i64 56}
!32 = !{!9, !3, i64 592}
!33 = !{!34, !3, i64 8}
!34 = !{!"jpeg_upsampler", !3, i64 0, !3, i64 8, !7, i64 16}
!35 = !{!9, !3, i64 0}
!36 = !{!37, !7, i64 40}
!37 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !4, i64 44, !7, i64 124, !14, i64 128, !3, i64 136, !7, i64 144, !3, i64 152, !7, i64 160, !7, i64 164}
!38 = !{!37, !3, i64 0}
!39 = !{!17, !7, i64 40}
!40 = !{!17, !7, i64 36}
!41 = !{!9, !3, i64 608}
!42 = !{!43, !3, i64 8}
!43 = !{!"jpeg_color_quantizer", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
