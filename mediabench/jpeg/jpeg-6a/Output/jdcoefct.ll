; ModuleID = 'jdcoefct.c'
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
%struct.my_coef_controller = type { %struct.jpeg_d_coef_controller, i32, i32, i32, [10 x [64 x i16]*], [10 x %struct.jvirt_barray_control*], i32* }

; Function Attrs: nounwind ssp uwtable
define void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  %ci = alloca i32, align 4
  %access_rows = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buffer = alloca [64 x i16]*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 224)
  %6 = bitcast i8* %call to %struct.my_coef_controller*
  store %struct.my_coef_controller* %6, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %8 = bitcast %struct.my_coef_controller* %7 to %struct.jpeg_d_coef_controller*
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 75
  store %struct.jpeg_d_coef_controller* %8, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !15
  %10 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %10, i32 0, i32 0
  %start_input_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*)* @start_input_pass, void (%struct.jpeg_decompress_struct*)** %start_input_pass, align 8, !tbaa !16
  %11 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %11, i32 0, i32 0
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub2, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*)* @start_output_pass, void (%struct.jpeg_decompress_struct*)** %start_output_pass, align 8, !tbaa !19
  %12 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %coef_bits_latch = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %12, i32 0, i32 6
  store i32* null, i32** %coef_bits_latch, align 8, !tbaa !20
  %13 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %access_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #3
  store i32 0, i32* %ci, align 4, !tbaa !6
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 43
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !21
  store %struct.jpeg_component_info* %18, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %19 = load i32, i32* %ci, align 4, !tbaa !6
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 8
  %21 = load i32, i32* %num_components, align 4, !tbaa !22
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 3
  %23 = load i32, i32* %v_samp_factor, align 4, !tbaa !23
  store i32 %23, i32* %access_rows, align 4, !tbaa !6
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 44
  %25 = load i32, i32* %progressive_mode, align 4, !tbaa !25
  %tobool3 = icmp ne i32 %25, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %26 = load i32, i32* %access_rows, align 4, !tbaa !6
  %mul = mul nsw i32 %26, 3
  store i32 %mul, i32* %access_rows, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8, !tbaa !8
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i32 0, i32 5
  %29 = load %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_barray, align 8, !tbaa !26
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 7
  %33 = load i32, i32* %width_in_blocks, align 4, !tbaa !27
  %conv = zext i32 %33 to i64
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 2
  %35 = load i32, i32* %h_samp_factor, align 4, !tbaa !28
  %conv6 = sext i32 %35 to i64
  %call7 = call i64 @jround_up(i64 %conv, i64 %conv6)
  %conv8 = trunc i64 %call7 to i32
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 8
  %37 = load i32, i32* %height_in_blocks, align 4, !tbaa !29
  %conv9 = zext i32 %37 to i64
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 3
  %39 = load i32, i32* %v_samp_factor10, align 4, !tbaa !23
  %conv11 = sext i32 %39 to i64
  %call12 = call i64 @jround_up(i64 %conv9, i64 %conv11)
  %conv13 = trunc i64 %call12 to i32
  %40 = load i32, i32* %access_rows, align 4, !tbaa !6
  %call14 = call %struct.jvirt_barray_control* %29(%struct.jpeg_common_struct* %31, i32 1, i32 1, i32 %conv8, i32 %conv13, i32 %40)
  %41 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %42, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  store %struct.jvirt_barray_control* %call14, %struct.jvirt_barray_control** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %44 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %44, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub15 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %45, i32 0, i32 0
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub15, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @consume_data, i32 (%struct.jpeg_decompress_struct*)** %consume_data, align 8, !tbaa !30
  %46 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub16 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %46, i32 0, i32 0
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub16, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_data, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8, !tbaa !31
  %47 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image17 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %47, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image17, i32 0, i32 0
  %48 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub18 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %48, i32 0, i32 0
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub18, i32 0, i32 4
  store %struct.jvirt_barray_control** %arraydecay, %struct.jvirt_barray_control*** %coef_arrays, align 8, !tbaa !32
  %49 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #3
  %50 = bitcast i32* %access_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  %51 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  br label %if.end.36

if.else:                                          ; preds = %entry
  %52 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #3
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #3
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 1
  %55 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem19, align 8, !tbaa !8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %55, i32 0, i32 1
  %56 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !33
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %58 = bitcast %struct.jpeg_decompress_struct* %57 to %struct.jpeg_common_struct*
  %call20 = call i8* %56(%struct.jpeg_common_struct* %58, i32 1, i64 1280)
  %59 = bitcast i8* %call20 to [64 x i16]*
  store [64 x i16]* %59, [64 x i16]** %buffer, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.27, %if.else
  %60 = load i32, i32* %i, align 4, !tbaa !6
  %cmp22 = icmp slt i32 %60, 10
  br i1 %cmp22, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %for.cond.21
  %61 = load [64 x i16]*, [64 x i16]** %buffer, align 8, !tbaa !2
  %62 = load i32, i32* %i, align 4, !tbaa !6
  %idx.ext = sext i32 %62 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %61, i64 %idx.ext
  %63 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom25 = sext i32 %63 to i64
  %64 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %64, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom25
  store [64 x i16]* %add.ptr, [64 x i16]** %arrayidx26, align 8, !tbaa !2
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %65 = load i32, i32* %i, align 4, !tbaa !6
  %inc28 = add nsw i32 %65, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !6
  br label %for.cond.21

for.end.29:                                       ; preds = %for.cond.21
  %66 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub30 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %66, i32 0, i32 0
  %consume_data31 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub30, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @dummy_consume_data, i32 (%struct.jpeg_decompress_struct*)** %consume_data31, align 8, !tbaa !30
  %67 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub32 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %67, i32 0, i32 0
  %decompress_data33 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub32, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_onepass, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data33, align 8, !tbaa !31
  %68 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub34 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %68, i32 0, i32 0
  %coef_arrays35 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub34, i32 0, i32 4
  store %struct.jvirt_barray_control** null, %struct.jvirt_barray_control*** %coef_arrays35, align 8, !tbaa !32
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #3
  %70 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #3
  br label %if.end.36

if.end.36:                                        ; preds = %for.end.29, %for.end
  %71 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 35
  store i32 0, i32* %input_iMCU_row, align 4, !tbaa !34
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @start_iMCU_row(%struct.jpeg_decompress_struct* %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_output_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 75
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i32 0, i32 0
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub, i32 0, i32 4
  %5 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %coef_arrays, align 8, !tbaa !32
  %cmp = icmp ne %struct.jvirt_barray_control** %5, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %do_block_smoothing = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 18
  %7 = load i32, i32* %do_block_smoothing, align 4, !tbaa !35
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @smoothing_ok(%struct.jpeg_decompress_struct* %8)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %9 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %9, i32 0, i32 0
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub4, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_smooth_data, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8, !tbaa !31
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %10 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %10, i32 0, i32 0
  %decompress_data6 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub5, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_data, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data6, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 37
  store i32 0, i32* %output_iMCU_row, align 4, !tbaa !36
  %12 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #3
  ret void
}

declare i64 @jround_up(i64, i64) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @consume_data(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x [64 x i16]**], align 16
  %buffer_ptr = alloca [64 x i16]*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 75
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast [4 x [64 x i16]**]* %buffer to i8*
  call void @llvm.lifetime.start(i64 32, i8* %11) #3
  %12 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %ci, align 4, !tbaa !6
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 62
  %16 = load i32, i32* %comps_in_scan, align 4, !tbaa !37
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %19, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 8
  %22 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8, !tbaa !38
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 1
  %26 = load i32, i32* %component_index, align 4, !tbaa !39
  %idxprom2 = sext i32 %26 to i64
  %27 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %27, i32 0, i32 5
  %arrayidx3 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom2
  %28 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx3, align 8, !tbaa !2
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 35
  %30 = load i32, i32* %input_iMCU_row, align 4, !tbaa !34
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 0, i32 3
  %32 = load i32, i32* %v_samp_factor, align 4, !tbaa !23
  %mul = mul i32 %30, %32
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 3
  %34 = load i32, i32* %v_samp_factor4, align 4, !tbaa !23
  %call = call [64 x i16]** %22(%struct.jpeg_common_struct* %24, %struct.jvirt_barray_control* %28, i32 %mul, i32 %34, i32 1)
  %35 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom5 = sext i32 %35 to i64
  %arrayidx6 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom5
  store [64 x i16]** %call, [64 x i16]*** %arrayidx6, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %37, i32 0, i32 2
  %38 = load i32, i32* %MCU_vert_offset, align 4, !tbaa !40
  store i32 %38, i32* %yoffset, align 4, !tbaa !6
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.52, %for.end
  %39 = load i32, i32* %yoffset, align 4, !tbaa !6
  %40 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %40, i32 0, i32 3
  %41 = load i32, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !41
  %cmp8 = icmp slt i32 %39, %41
  br i1 %cmp8, label %for.body.9, label %for.end.54

for.body.9:                                       ; preds = %for.cond.7
  %42 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %42, i32 0, i32 1
  %43 = load i32, i32* %MCU_ctr, align 4, !tbaa !42
  store i32 %43, i32* %MCU_col_num, align 4, !tbaa !6
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.48, %for.body.9
  %44 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 64
  %46 = load i32, i32* %MCUs_per_row, align 4, !tbaa !43
  %cmp11 = icmp ult i32 %44, %46
  br i1 %cmp11, label %for.body.12, label %for.end.50

for.body.12:                                      ; preds = %for.cond.10
  store i32 0, i32* %blkn, align 4, !tbaa !6
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.41, %for.body.12
  %47 = load i32, i32* %ci, align 4, !tbaa !6
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 62
  %49 = load i32, i32* %comps_in_scan14, align 4, !tbaa !37
  %cmp15 = icmp slt i32 %47, %49
  br i1 %cmp15, label %for.body.16, label %for.end.43

for.body.16:                                      ; preds = %for.cond.13
  %50 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom17 = sext i32 %50 to i64
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 63
  %arrayidx19 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info18, i32 0, i64 %idxprom17
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx19, align 8, !tbaa !2
  store %struct.jpeg_component_info* %52, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %53 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 13
  %55 = load i32, i32* %MCU_width, align 4, !tbaa !44
  %mul20 = mul i32 %53, %55
  store i32 %mul20, i32* %start_col, align 4, !tbaa !6
  store i32 0, i32* %yindex, align 4, !tbaa !6
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.38, %for.body.16
  %56 = load i32, i32* %yindex, align 4, !tbaa !6
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i32 0, i32 14
  %58 = load i32, i32* %MCU_height, align 4, !tbaa !45
  %cmp22 = icmp slt i32 %56, %58
  br i1 %cmp22, label %for.body.23, label %for.end.40

for.body.23:                                      ; preds = %for.cond.21
  %59 = load i32, i32* %yindex, align 4, !tbaa !6
  %60 = load i32, i32* %yoffset, align 4, !tbaa !6
  %add = add nsw i32 %59, %60
  %idxprom24 = sext i32 %add to i64
  %61 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom25 = sext i32 %61 to i64
  %arrayidx26 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom25
  %62 = load [64 x i16]**, [64 x i16]*** %arrayidx26, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds [64 x i16]*, [64 x i16]** %62, i64 %idxprom24
  %63 = load [64 x i16]*, [64 x i16]** %arrayidx27, align 8, !tbaa !2
  %64 = load i32, i32* %start_col, align 4, !tbaa !6
  %idx.ext = zext i32 %64 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %63, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  store i32 0, i32* %xindex, align 4, !tbaa !6
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %for.body.23
  %65 = load i32, i32* %xindex, align 4, !tbaa !6
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 13
  %67 = load i32, i32* %MCU_width29, align 4, !tbaa !44
  %cmp30 = icmp slt i32 %65, %67
  br i1 %cmp30, label %for.body.31, label %for.end.37

for.body.31:                                      ; preds = %for.cond.28
  %68 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %68, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %69 = load i32, i32* %blkn, align 4, !tbaa !6
  %inc32 = add nsw i32 %69, 1
  store i32 %inc32, i32* %blkn, align 4, !tbaa !6
  %idxprom33 = sext i32 %69 to i64
  %70 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %70, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom33
  store [64 x i16]* %68, [64 x i16]** %arrayidx34, align 8, !tbaa !2
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.31
  %71 = load i32, i32* %xindex, align 4, !tbaa !6
  %inc36 = add nsw i32 %71, 1
  store i32 %inc36, i32* %xindex, align 4, !tbaa !6
  br label %for.cond.28

for.end.37:                                       ; preds = %for.cond.28
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %72 = load i32, i32* %yindex, align 4, !tbaa !6
  %inc39 = add nsw i32 %72, 1
  store i32 %inc39, i32* %yindex, align 4, !tbaa !6
  br label %for.cond.21

for.end.40:                                       ; preds = %for.cond.21
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.40
  %73 = load i32, i32* %ci, align 4, !tbaa !6
  %inc42 = add nsw i32 %73, 1
  store i32 %inc42, i32* %ci, align 4, !tbaa !6
  br label %for.cond.13

for.end.43:                                       ; preds = %for.cond.13
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 79
  %75 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8, !tbaa !46
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %75, i32 0, i32 1
  %76 = load i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8, !tbaa !47
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %78 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %78, i32 0, i32 4
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer44, i32 0, i32 0
  %call45 = call i32 %76(%struct.jpeg_decompress_struct* %77, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end.43
  %79 = load i32, i32* %yoffset, align 4, !tbaa !6
  %80 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset46 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %80, i32 0, i32 2
  store i32 %79, i32* %MCU_vert_offset46, align 4, !tbaa !40
  %81 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %82 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_ctr47 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %82, i32 0, i32 1
  store i32 %81, i32* %MCU_ctr47, align 4, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end.43
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end
  %83 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %inc49 = add i32 %83, 1
  store i32 %inc49, i32* %MCU_col_num, align 4, !tbaa !6
  br label %for.cond.10

for.end.50:                                       ; preds = %for.cond.10
  %84 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_ctr51 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %84, i32 0, i32 1
  store i32 0, i32* %MCU_ctr51, align 4, !tbaa !42
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.50
  %85 = load i32, i32* %yoffset, align 4, !tbaa !6
  %inc53 = add nsw i32 %85, 1
  store i32 %inc53, i32* %yoffset, align 4, !tbaa !6
  br label %for.cond.7

for.end.54:                                       ; preds = %for.cond.7
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_iMCU_row55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 35
  %87 = load i32, i32* %input_iMCU_row55, align 4, !tbaa !34
  %inc56 = add i32 %87, 1
  store i32 %inc56, i32* %input_iMCU_row55, align 4, !tbaa !34
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 60
  %89 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !49
  %cmp57 = icmp ult i32 %inc56, %89
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.end.54
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @start_iMCU_row(%struct.jpeg_decompress_struct* %90)
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %for.end.54
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 77
  %92 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !50
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %92, i32 0, i32 3
  %93 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_input_pass, align 8, !tbaa !51
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %93(%struct.jpeg_decompress_struct* %94)
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.then.58, %if.then
  %95 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #3
  %96 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #3
  %97 = bitcast [4 x [64 x i16]**]* %buffer to i8*
  call void @llvm.lifetime.end(i64 32, i8* %97) #3
  %98 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #3
  %99 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #3
  %100 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #3
  %101 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #3
  %102 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #3
  %103 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #3
  %104 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #3
  %105 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #3
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decompress_data(%struct.jpeg_decompress_struct* %cinfo, i8*** %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %last_iMCU_row = alloca i32, align 4
  %block_num = alloca i32, align 4
  %ci = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %buffer = alloca [64 x i16]**, align 8
  %buffer_ptr = alloca [64 x i16]*, align 8
  %output_ptr = alloca i8**, align 8
  %output_col = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %inverse_DCT = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 75
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 60
  %6 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !49
  %sub = sub i32 %6, 1
  store i32 %sub, i32* %last_iMCU_row, align 4, !tbaa !6
  %7 = bitcast i32* %block_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %block_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %block_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast [64 x i16]*** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 34
  %18 = load i32, i32* %input_scan_number, align 4, !tbaa !53
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 36
  %20 = load i32, i32* %output_scan_number, align 4, !tbaa !54
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 34
  %22 = load i32, i32* %input_scan_number2, align 4, !tbaa !53
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scan_number3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 36
  %24 = load i32, i32* %output_scan_number3, align 4, !tbaa !54
  %cmp4 = icmp eq i32 %22, %24
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 35
  %26 = load i32, i32* %input_iMCU_row, align 4, !tbaa !34
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 37
  %28 = load i32, i32* %output_iMCU_row, align 4, !tbaa !36
  %cmp5 = icmp ule i32 %26, %28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %29 = phi i1 [ false, %lor.rhs ], [ %cmp5, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %30 = phi i1 [ true, %while.cond ], [ %29, %land.end ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 77
  %32 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !50
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %32, i32 0, i32 0
  %33 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !55
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %33(%struct.jpeg_decompress_struct* %34)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %lor.end
  store i32 0, i32* %ci, align 4, !tbaa !6
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 43
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !21
  store %struct.jpeg_component_info* %36, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %while.end
  %37 = load i32, i32* %ci, align 4, !tbaa !6
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 8
  %39 = load i32, i32* %num_components, align 4, !tbaa !22
  %cmp7 = icmp slt i32 %37, %39
  br i1 %cmp7, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 12
  %41 = load i32, i32* %component_needed, align 4, !tbaa !56
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body
  br label %for.inc.40

if.end.9:                                         ; preds = %for.body
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 1
  %43 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %43, i32 0, i32 8
  %44 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8, !tbaa !38
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %46 = bitcast %struct.jpeg_decompress_struct* %45 to %struct.jpeg_common_struct*
  %47 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %48, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  %49 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8, !tbaa !2
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 37
  %51 = load i32, i32* %output_iMCU_row10, align 4, !tbaa !36
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 3
  %53 = load i32, i32* %v_samp_factor, align 4, !tbaa !23
  %mul = mul i32 %51, %53
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 3
  %55 = load i32, i32* %v_samp_factor11, align 4, !tbaa !23
  %call12 = call [64 x i16]** %44(%struct.jpeg_common_struct* %46, %struct.jvirt_barray_control* %49, i32 %mul, i32 %55, i32 0)
  store [64 x i16]** %call12, [64 x i16]*** %buffer, align 8, !tbaa !2
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 37
  %57 = load i32, i32* %output_iMCU_row13, align 4, !tbaa !36
  %58 = load i32, i32* %last_iMCU_row, align 4, !tbaa !6
  %cmp14 = icmp ult i32 %57, %58
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.9
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i32 0, i32 3
  %60 = load i32, i32* %v_samp_factor16, align 4, !tbaa !23
  store i32 %60, i32* %block_rows, align 4, !tbaa !6
  br label %if.end.22

if.else:                                          ; preds = %if.end.9
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i32 0, i32 8
  %62 = load i32, i32* %height_in_blocks, align 4, !tbaa !29
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 0, i32 3
  %64 = load i32, i32* %v_samp_factor17, align 4, !tbaa !23
  %rem = urem i32 %62, %64
  store i32 %rem, i32* %block_rows, align 4, !tbaa !6
  %65 = load i32, i32* %block_rows, align 4, !tbaa !6
  %cmp18 = icmp eq i32 %65, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 3
  %67 = load i32, i32* %v_samp_factor20, align 4, !tbaa !23
  store i32 %67, i32* %block_rows, align 4, !tbaa !6
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %68 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom23 = sext i32 %68 to i64
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 80
  %70 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8, !tbaa !57
  %inverse_DCT24 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %70, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT24, i32 0, i64 %idxprom23
  %71 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx25, align 8, !tbaa !2
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %71, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !2
  %72 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom26 = sext i32 %72 to i64
  %73 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i8**, i8*** %73, i64 %idxprom26
  %74 = load i8**, i8*** %arrayidx27, align 8, !tbaa !2
  store i8** %74, i8*** %output_ptr, align 8, !tbaa !2
  store i32 0, i32* %block_row, align 4, !tbaa !6
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %if.end.22
  %75 = load i32, i32* %block_row, align 4, !tbaa !6
  %76 = load i32, i32* %block_rows, align 4, !tbaa !6
  %cmp29 = icmp slt i32 %75, %76
  br i1 %cmp29, label %for.body.30, label %for.end.39

for.body.30:                                      ; preds = %for.cond.28
  %77 = load i32, i32* %block_row, align 4, !tbaa !6
  %idxprom31 = sext i32 %77 to i64
  %78 = load [64 x i16]**, [64 x i16]*** %buffer, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds [64 x i16]*, [64 x i16]** %78, i64 %idxprom31
  %79 = load [64 x i16]*, [64 x i16]** %arrayidx32, align 8, !tbaa !2
  store [64 x i16]* %79, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  store i32 0, i32* %output_col, align 4, !tbaa !6
  store i32 0, i32* %block_num, align 4, !tbaa !6
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %for.body.30
  %80 = load i32, i32* %block_num, align 4, !tbaa !6
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 7
  %82 = load i32, i32* %width_in_blocks, align 4, !tbaa !27
  %cmp34 = icmp ult i32 %80, %82
  br i1 %cmp34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.33
  %83 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !2
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %86 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %87 = bitcast [64 x i16]* %86 to i16*
  %88 = load i8**, i8*** %output_ptr, align 8, !tbaa !2
  %89 = load i32, i32* %output_col, align 4, !tbaa !6
  call void %83(%struct.jpeg_decompress_struct* %84, %struct.jpeg_component_info* %85, i16* %87, i8** %88, i32 %89)
  %90 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %90, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 9
  %92 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !58
  %93 = load i32, i32* %output_col, align 4, !tbaa !6
  %add = add i32 %93, %92
  store i32 %add, i32* %output_col, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body.35
  %94 = load i32, i32* %block_num, align 4, !tbaa !6
  %inc = add i32 %94, 1
  store i32 %inc, i32* %block_num, align 4, !tbaa !6
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 9
  %96 = load i32, i32* %DCT_scaled_size36, align 4, !tbaa !58
  %97 = load i8**, i8*** %output_ptr, align 8, !tbaa !2
  %idx.ext = sext i32 %96 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %97, i64 %idx.ext
  store i8** %add.ptr, i8*** %output_ptr, align 8, !tbaa !2
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %98 = load i32, i32* %block_row, align 4, !tbaa !6
  %inc38 = add nsw i32 %98, 1
  store i32 %inc38, i32* %block_row, align 4, !tbaa !6
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39, %if.then.8
  %99 = load i32, i32* %ci, align 4, !tbaa !6
  %inc41 = add nsw i32 %99, 1
  store i32 %inc41, i32* %ci, align 4, !tbaa !6
  %100 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i32 1
  store %struct.jpeg_component_info* %incdec.ptr42, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 37
  %102 = load i32, i32* %output_iMCU_row44, align 4, !tbaa !36
  %inc45 = add i32 %102, 1
  store i32 %inc45, i32* %output_iMCU_row44, align 4, !tbaa !36
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 60
  %104 = load i32, i32* %total_iMCU_rows46, align 4, !tbaa !49
  %cmp47 = icmp ult i32 %inc45, %104
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end.43
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %for.end.43
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.48, %if.then
  %105 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #3
  %106 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #3
  %107 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #3
  %108 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #3
  %109 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #3
  %110 = bitcast [64 x i16]*** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #3
  %111 = bitcast i32* %block_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #3
  %112 = bitcast i32* %block_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #3
  %113 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #3
  %114 = bitcast i32* %block_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #3
  %115 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #3
  %116 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #3
  %117 = load i32, i32* %retval
  ret i32 %117
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @dummy_consume_data(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decompress_onepass(%struct.jpeg_decompress_struct* %cinfo, i8*** %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %useful_width = alloca i32, align 4
  %output_ptr = alloca i8**, align 8
  %start_col = alloca i32, align 4
  %output_col = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %inverse_DCT = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 75
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 64
  %7 = load i32, i32* %MCUs_per_row, align 4, !tbaa !43
  %sub = sub i32 %7, 1
  store i32 %sub, i32* %last_MCU_col, align 4, !tbaa !6
  %8 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 60
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !49
  %sub2 = sub i32 %10, 1
  store i32 %sub2, i32* %last_iMCU_row, align 4, !tbaa !6
  %11 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = bitcast i32* %useful_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #3
  %20 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #3
  %21 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %22, i32 0, i32 2
  %23 = load i32, i32* %MCU_vert_offset, align 4, !tbaa !40
  store i32 %23, i32* %yoffset, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %entry
  %24 = load i32, i32* %yoffset, align 4, !tbaa !6
  %25 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %25, i32 0, i32 3
  %26 = load i32, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !41
  %cmp = icmp slt i32 %24, %26
  br i1 %cmp, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  %27 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %27, i32 0, i32 1
  %28 = load i32, i32* %MCU_ctr, align 4, !tbaa !42
  store i32 %28, i32* %MCU_col_num, align 4, !tbaa !6
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.58, %for.body
  %29 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %30 = load i32, i32* %last_MCU_col, align 4, !tbaa !6
  %cmp4 = icmp ule i32 %29, %30
  br i1 %cmp4, label %for.body.5, label %for.end.60

for.body.5:                                       ; preds = %for.cond.3
  %31 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %31, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 0
  %32 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  %33 = bitcast [64 x i16]* %32 to i8*
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 66
  %35 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !59
  %conv = sext i32 %35 to i64
  %mul = mul i64 %conv, 128
  call void @jzero_far(i8* %33, i64 %mul)
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 79
  %37 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8, !tbaa !46
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %37, i32 0, i32 1
  %38 = load i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8, !tbaa !47
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %40 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer6 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %40, i32 0, i32 4
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer6, i32 0, i32 0
  %call = call i32 %38(%struct.jpeg_decompress_struct* %39, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.5
  %41 = load i32, i32* %yoffset, align 4, !tbaa !6
  %42 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset7 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %42, i32 0, i32 2
  store i32 %41, i32* %MCU_vert_offset7, align 4, !tbaa !40
  %43 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %44 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_ctr8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %44, i32 0, i32 1
  store i32 %43, i32* %MCU_ctr8, align 4, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.5
  store i32 0, i32* %blkn, align 4, !tbaa !6
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.55, %if.end
  %45 = load i32, i32* %ci, align 4, !tbaa !6
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 62
  %47 = load i32, i32* %comps_in_scan, align 4, !tbaa !37
  %cmp10 = icmp slt i32 %45, %47
  br i1 %cmp10, label %for.body.12, label %for.end.57

for.body.12:                                      ; preds = %for.cond.9
  %48 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %48 to i64
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 63
  %arrayidx13 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx13, align 8, !tbaa !2
  store %struct.jpeg_component_info* %50, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 12
  %52 = load i32, i32* %component_needed, align 4, !tbaa !56
  %tobool14 = icmp ne i32 %52, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %for.body.12
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i32 0, i32 15
  %54 = load i32, i32* %MCU_blocks, align 4, !tbaa !60
  %55 = load i32, i32* %blkn, align 4, !tbaa !6
  %add = add nsw i32 %55, %54
  store i32 %add, i32* %blkn, align 4, !tbaa !6
  br label %for.inc.55

if.end.16:                                        ; preds = %for.body.12
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 1
  %57 = load i32, i32* %component_index, align 4, !tbaa !39
  %idxprom17 = sext i32 %57 to i64
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 80
  %59 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8, !tbaa !57
  %inverse_DCT18 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %59, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT18, i32 0, i64 %idxprom17
  %60 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx19, align 8, !tbaa !2
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %60, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !2
  %61 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %62 = load i32, i32* %last_MCU_col, align 4, !tbaa !6
  %cmp20 = icmp ult i32 %61, %62
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 0, i32 13
  %64 = load i32, i32* %MCU_width, align 4, !tbaa !44
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 0, i32 17
  %66 = load i32, i32* %last_col_width, align 4, !tbaa !61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %64, %cond.true ], [ %66, %cond.false ]
  store i32 %cond, i32* %useful_width, align 4, !tbaa !6
  %67 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom22 = sext i32 %67 to i64
  %68 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i8**, i8*** %68, i64 %idxprom22
  %69 = load i8**, i8*** %arrayidx23, align 8, !tbaa !2
  %70 = load i32, i32* %yoffset, align 4, !tbaa !6
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 9
  %72 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !58
  %mul24 = mul nsw i32 %70, %72
  %idx.ext = sext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %69, i64 %idx.ext
  store i8** %add.ptr, i8*** %output_ptr, align 8, !tbaa !2
  %73 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 16
  %75 = load i32, i32* %MCU_sample_width, align 4, !tbaa !62
  %mul25 = mul i32 %73, %75
  store i32 %mul25, i32* %start_col, align 4, !tbaa !6
  store i32 0, i32* %yindex, align 4, !tbaa !6
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.52, %cond.end
  %76 = load i32, i32* %yindex, align 4, !tbaa !6
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 14
  %78 = load i32, i32* %MCU_height, align 4, !tbaa !45
  %cmp27 = icmp slt i32 %76, %78
  br i1 %cmp27, label %for.body.29, label %for.end.54

for.body.29:                                      ; preds = %for.cond.26
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 35
  %80 = load i32, i32* %input_iMCU_row, align 4, !tbaa !34
  %81 = load i32, i32* %last_iMCU_row, align 4, !tbaa !6
  %cmp30 = icmp ult i32 %80, %81
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.29
  %82 = load i32, i32* %yoffset, align 4, !tbaa !6
  %83 = load i32, i32* %yindex, align 4, !tbaa !6
  %add32 = add nsw i32 %82, %83
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 0, i32 18
  %85 = load i32, i32* %last_row_height, align 4, !tbaa !63
  %cmp33 = icmp slt i32 %add32, %85
  br i1 %cmp33, label %if.then.35, label %if.end.46

if.then.35:                                       ; preds = %lor.lhs.false, %for.body.29
  %86 = load i32, i32* %start_col, align 4, !tbaa !6
  store i32 %86, i32* %output_col, align 4, !tbaa !6
  store i32 0, i32* %xindex, align 4, !tbaa !6
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %if.then.35
  %87 = load i32, i32* %xindex, align 4, !tbaa !6
  %88 = load i32, i32* %useful_width, align 4, !tbaa !6
  %cmp37 = icmp slt i32 %87, %88
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %89 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !2
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %92 = load i32, i32* %blkn, align 4, !tbaa !6
  %93 = load i32, i32* %xindex, align 4, !tbaa !6
  %add40 = add nsw i32 %92, %93
  %idxprom41 = sext i32 %add40 to i64
  %94 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer42 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %94, i32 0, i32 4
  %arrayidx43 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer42, i32 0, i64 %idxprom41
  %95 = load [64 x i16]*, [64 x i16]** %arrayidx43, align 8, !tbaa !2
  %96 = bitcast [64 x i16]* %95 to i16*
  %97 = load i8**, i8*** %output_ptr, align 8, !tbaa !2
  %98 = load i32, i32* %output_col, align 4, !tbaa !6
  call void %89(%struct.jpeg_decompress_struct* %90, %struct.jpeg_component_info* %91, i16* %96, i8** %97, i32 %98)
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 9
  %100 = load i32, i32* %DCT_scaled_size44, align 4, !tbaa !58
  %101 = load i32, i32* %output_col, align 4, !tbaa !6
  %add45 = add i32 %101, %100
  store i32 %add45, i32* %output_col, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body.39
  %102 = load i32, i32* %xindex, align 4, !tbaa !6
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %xindex, align 4, !tbaa !6
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %if.end.46

if.end.46:                                        ; preds = %for.end, %lor.lhs.false
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 13
  %104 = load i32, i32* %MCU_width47, align 4, !tbaa !44
  %105 = load i32, i32* %blkn, align 4, !tbaa !6
  %add48 = add nsw i32 %105, %104
  store i32 %add48, i32* %blkn, align 4, !tbaa !6
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size49 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 0, i32 9
  %107 = load i32, i32* %DCT_scaled_size49, align 4, !tbaa !58
  %108 = load i8**, i8*** %output_ptr, align 8, !tbaa !2
  %idx.ext50 = sext i32 %107 to i64
  %add.ptr51 = getelementptr inbounds i8*, i8** %108, i64 %idx.ext50
  store i8** %add.ptr51, i8*** %output_ptr, align 8, !tbaa !2
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.46
  %109 = load i32, i32* %yindex, align 4, !tbaa !6
  %inc53 = add nsw i32 %109, 1
  store i32 %inc53, i32* %yindex, align 4, !tbaa !6
  br label %for.cond.26

for.end.54:                                       ; preds = %for.cond.26
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54, %if.then.15
  %110 = load i32, i32* %ci, align 4, !tbaa !6
  %inc56 = add nsw i32 %110, 1
  store i32 %inc56, i32* %ci, align 4, !tbaa !6
  br label %for.cond.9

for.end.57:                                       ; preds = %for.cond.9
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %111 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %inc59 = add i32 %111, 1
  store i32 %inc59, i32* %MCU_col_num, align 4, !tbaa !6
  br label %for.cond.3

for.end.60:                                       ; preds = %for.cond.3
  %112 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_ctr61 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %112, i32 0, i32 1
  store i32 0, i32* %MCU_ctr61, align 4, !tbaa !42
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.60
  %113 = load i32, i32* %yoffset, align 4, !tbaa !6
  %inc63 = add nsw i32 %113, 1
  store i32 %inc63, i32* %yoffset, align 4, !tbaa !6
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 37
  %115 = load i32, i32* %output_iMCU_row, align 4, !tbaa !36
  %inc65 = add i32 %115, 1
  store i32 %inc65, i32* %output_iMCU_row, align 4, !tbaa !36
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_iMCU_row66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 35
  %117 = load i32, i32* %input_iMCU_row66, align 4, !tbaa !34
  %inc67 = add i32 %117, 1
  store i32 %inc67, i32* %input_iMCU_row66, align 4, !tbaa !34
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 60
  %119 = load i32, i32* %total_iMCU_rows68, align 4, !tbaa !49
  %cmp69 = icmp ult i32 %inc67, %119
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.end.64
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @start_iMCU_row(%struct.jpeg_decompress_struct* %120)
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %for.end.64
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 77
  %122 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !50
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %122, i32 0, i32 3
  %123 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_input_pass, align 8, !tbaa !51
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %123(%struct.jpeg_decompress_struct* %124)
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %if.then.71, %if.then
  %125 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #3
  %126 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #3
  %127 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #3
  %128 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #3
  %129 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #3
  %130 = bitcast i32* %useful_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #3
  %131 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #3
  %132 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #3
  %133 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #3
  %134 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #3
  %135 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #3
  %136 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #3
  %137 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #3
  %138 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #3
  %139 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #3
  %140 = load i32, i32* %retval
  ret i32 %140
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_iMCU_row(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 75
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 62
  %5 = load i32, i32* %comps_in_scan, align 4, !tbaa !37
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i32 0, i32 3
  store i32 1, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !41
  br label %if.end.9

if.else:                                          ; preds = %entry
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 35
  %8 = load i32, i32* %input_iMCU_row, align 4, !tbaa !34
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 60
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !49
  %sub = sub i32 %10, 1
  %cmp2 = icmp ult i32 %8, %sub
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 3
  %13 = load i32, i32* %v_samp_factor, align 4, !tbaa !23
  %14 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %14, i32 0, i32 3
  store i32 %13, i32* %MCU_rows_per_iMCU_row4, align 4, !tbaa !41
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 63
  %arrayidx7 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info6, i32 0, i64 0
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx7, align 8, !tbaa !2
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 18
  %17 = load i32, i32* %last_row_height, align 4, !tbaa !63
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 3
  store i32 %17, i32* %MCU_rows_per_iMCU_row8, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %19 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %19, i32 0, i32 1
  store i32 0, i32* %MCU_ctr, align 4, !tbaa !42
  %20 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %20, i32 0, i32 2
  store i32 0, i32* %MCU_vert_offset, align 4, !tbaa !40
  %21 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @smoothing_ok(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %smoothing_useful = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %qtable = alloca %struct.JQUANT_TBL*, align 8
  %coef_bits = alloca i32*, align 8
  %coef_bits_latch = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 75
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = bitcast i32* %smoothing_useful to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  store i32 0, i32* %smoothing_useful, align 4, !tbaa !6
  %5 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast %struct.JQUANT_TBL** %qtable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i32** %coef_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i32** %coef_bits_latch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 44
  %12 = load i32, i32* %progressive_mode, align 4, !tbaa !25
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef_bits2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 38
  %14 = load [64 x i32]*, [64 x i32]** %coef_bits2, align 8, !tbaa !64
  %cmp = icmp eq [64 x i32]* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %coef_bits_latch3 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %15, i32 0, i32 6
  %16 = load i32*, i32** %coef_bits_latch3, align 8, !tbaa !20
  %cmp4 = icmp eq i32* %16, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 1
  %18 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %18, i32 0, i32 0
  %19 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 8
  %23 = load i32, i32* %num_components, align 4, !tbaa !22
  %conv = sext i32 %23 to i64
  %mul = mul i64 %conv, 24
  %call = call i8* %19(%struct.jpeg_common_struct* %21, i32 1, i64 %mul)
  %24 = bitcast i8* %call to i32*
  %25 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %coef_bits_latch6 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %25, i32 0, i32 6
  store i32* %24, i32** %coef_bits_latch6, align 8, !tbaa !20
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %26 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %coef_bits_latch8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %26, i32 0, i32 6
  %27 = load i32*, i32** %coef_bits_latch8, align 8, !tbaa !20
  store i32* %27, i32** %coef_bits_latch, align 8, !tbaa !2
  store i32 0, i32* %ci, align 4, !tbaa !6
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 43
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !21
  store %struct.jpeg_component_info* %29, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %if.end.7
  %30 = load i32, i32* %ci, align 4, !tbaa !6
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 8
  %32 = load i32, i32* %num_components9, align 4, !tbaa !22
  %cmp10 = icmp slt i32 %30, %32
  br i1 %cmp10, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 19
  %34 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8, !tbaa !65
  store %struct.JQUANT_TBL* %34, %struct.JQUANT_TBL** %qtable, align 8, !tbaa !2
  %cmp12 = icmp eq %struct.JQUANT_TBL* %34, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %for.body
  %35 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8, !tbaa !2
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %35, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 0
  %36 = load i16, i16* %arrayidx, align 2, !tbaa !66
  %conv16 = zext i16 %36 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.49, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.15
  %37 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8, !tbaa !2
  %quantval20 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %37, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval20, i32 0, i64 1
  %38 = load i16, i16* %arrayidx21, align 2, !tbaa !66
  %conv22 = zext i16 %38 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.49, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.19
  %39 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8, !tbaa !2
  %quantval26 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %39, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval26, i32 0, i64 8
  %40 = load i16, i16* %arrayidx27, align 2, !tbaa !66
  %conv28 = zext i16 %40 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then.49, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.25
  %41 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8, !tbaa !2
  %quantval32 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %41, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval32, i32 0, i64 16
  %42 = load i16, i16* %arrayidx33, align 2, !tbaa !66
  %conv34 = zext i16 %42 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.49, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.31
  %43 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8, !tbaa !2
  %quantval38 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %43, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval38, i32 0, i64 9
  %44 = load i16, i16* %arrayidx39, align 2, !tbaa !66
  %conv40 = zext i16 %44 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.then.49, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.37
  %45 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8, !tbaa !2
  %quantval44 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %45, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval44, i32 0, i64 2
  %46 = load i16, i16* %arrayidx45, align 2, !tbaa !66
  %conv46 = zext i16 %46 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.37, %lor.lhs.false.31, %lor.lhs.false.25, %lor.lhs.false.19, %if.end.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %lor.lhs.false.43
  %47 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef_bits51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 38
  %49 = load [64 x i32]*, [64 x i32]** %coef_bits51, align 8, !tbaa !64
  %arrayidx52 = getelementptr inbounds [64 x i32], [64 x i32]* %49, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx52, i32 0, i32 0
  store i32* %arraydecay, i32** %coef_bits, align 8, !tbaa !2
  %50 = load i32*, i32** %coef_bits, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds i32, i32* %50, i64 0
  %51 = load i32, i32* %arrayidx53, align 4, !tbaa !6
  %cmp54 = icmp slt i32 %51, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.50
  store i32 1, i32* %coefi, align 4, !tbaa !6
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc, %if.end.57
  %52 = load i32, i32* %coefi, align 4, !tbaa !6
  %cmp59 = icmp sle i32 %52, 5
  br i1 %cmp59, label %for.body.61, label %for.end

for.body.61:                                      ; preds = %for.cond.58
  %53 = load i32, i32* %coefi, align 4, !tbaa !6
  %idxprom62 = sext i32 %53 to i64
  %54 = load i32*, i32** %coef_bits, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds i32, i32* %54, i64 %idxprom62
  %55 = load i32, i32* %arrayidx63, align 4, !tbaa !6
  %56 = load i32, i32* %coefi, align 4, !tbaa !6
  %idxprom64 = sext i32 %56 to i64
  %57 = load i32*, i32** %coef_bits_latch, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds i32, i32* %57, i64 %idxprom64
  store i32 %55, i32* %arrayidx65, align 4, !tbaa !6
  %58 = load i32, i32* %coefi, align 4, !tbaa !6
  %idxprom66 = sext i32 %58 to i64
  %59 = load i32*, i32** %coef_bits, align 8, !tbaa !2
  %arrayidx67 = getelementptr inbounds i32, i32* %59, i64 %idxprom66
  %60 = load i32, i32* %arrayidx67, align 4, !tbaa !6
  %cmp68 = icmp ne i32 %60, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.body.61
  store i32 1, i32* %smoothing_useful, align 4, !tbaa !6
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %for.body.61
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %61 = load i32, i32* %coefi, align 4, !tbaa !6
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %coefi, align 4, !tbaa !6
  br label %for.cond.58

for.end:                                          ; preds = %for.cond.58
  %62 = load i32*, i32** %coef_bits_latch, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i32, i32* %62, i64 6
  store i32* %add.ptr, i32** %coef_bits_latch, align 8, !tbaa !2
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end
  %63 = load i32, i32* %ci, align 4, !tbaa !6
  %inc73 = add nsw i32 %63, 1
  store i32 %inc73, i32* %ci, align 4, !tbaa !6
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  %65 = load i32, i32* %smoothing_useful, align 4, !tbaa !6
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.74, %if.then.56, %if.then.49, %if.then.14, %if.then
  %66 = bitcast i32** %coef_bits_latch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #3
  %67 = bitcast i32** %coef_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #3
  %68 = bitcast %struct.JQUANT_TBL** %qtable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #3
  %69 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #3
  %70 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  %71 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32* %smoothing_useful to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  %73 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #3
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decompress_smooth_data(%struct.jpeg_decompress_struct* %cinfo, i8*** %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %last_iMCU_row = alloca i32, align 4
  %block_num = alloca i32, align 4
  %last_block_column = alloca i32, align 4
  %ci = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %access_rows = alloca i32, align 4
  %buffer = alloca [64 x i16]**, align 8
  %buffer_ptr = alloca [64 x i16]*, align 8
  %prev_block_row = alloca [64 x i16]*, align 8
  %next_block_row = alloca [64 x i16]*, align 8
  %output_ptr = alloca i8**, align 8
  %output_col = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %inverse_DCT = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %first_row = alloca i32, align 4
  %last_row = alloca i32, align 4
  %workspace = alloca [64 x i16], align 16
  %coef_bits = alloca i32*, align 8
  %quanttbl = alloca %struct.JQUANT_TBL*, align 8
  %Q00 = alloca i64, align 8
  %Q01 = alloca i64, align 8
  %Q02 = alloca i64, align 8
  %Q10 = alloca i64, align 8
  %Q11 = alloca i64, align 8
  %Q20 = alloca i64, align 8
  %num = alloca i64, align 8
  %DC1 = alloca i32, align 4
  %DC2 = alloca i32, align 4
  %DC3 = alloca i32, align 4
  %DC4 = alloca i32, align 4
  %DC5 = alloca i32, align 4
  %DC6 = alloca i32, align 4
  %DC7 = alloca i32, align 4
  %DC8 = alloca i32, align 4
  %DC9 = alloca i32, align 4
  %Al = alloca i32, align 4
  %pred = alloca i32, align 4
  %delta = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 75
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 60
  %6 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !49
  %sub = sub i32 %6, 1
  store i32 %sub, i32* %last_iMCU_row, align 4, !tbaa !6
  %7 = bitcast i32* %block_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %last_block_column to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %block_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %block_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %access_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast [64 x i16]*** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #3
  %15 = bitcast [64 x i16]** %prev_block_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = bitcast [64 x i16]** %next_block_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #3
  %17 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #3
  %21 = bitcast i32* %first_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = bitcast i32* %last_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #3
  %23 = bitcast [64 x i16]* %workspace to i8*
  call void @llvm.lifetime.start(i64 128, i8* %23) #3
  %24 = bitcast i32** %coef_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #3
  %25 = bitcast %struct.JQUANT_TBL** %quanttbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #3
  %26 = bitcast i64* %Q00 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #3
  %27 = bitcast i64* %Q01 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #3
  %28 = bitcast i64* %Q02 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #3
  %29 = bitcast i64* %Q10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #3
  %30 = bitcast i64* %Q11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #3
  %31 = bitcast i64* %Q20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #3
  %32 = bitcast i64* %num to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #3
  %33 = bitcast i32* %DC1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #3
  %34 = bitcast i32* %DC2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #3
  %35 = bitcast i32* %DC3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #3
  %36 = bitcast i32* %DC4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #3
  %37 = bitcast i32* %DC5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #3
  %38 = bitcast i32* %DC6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #3
  %39 = bitcast i32* %DC7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #3
  %40 = bitcast i32* %DC8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #3
  %41 = bitcast i32* %DC9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #3
  %42 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #3
  %43 = bitcast i32* %pred to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 34
  %45 = load i32, i32* %input_scan_number, align 4, !tbaa !53
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 36
  %47 = load i32, i32* %output_scan_number, align 4, !tbaa !54
  %cmp = icmp sle i32 %45, %47
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 77
  %49 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !50
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %49, i32 0, i32 5
  %50 = load i32, i32* %eoi_reached, align 4, !tbaa !67
  %tobool = icmp ne i32 %50, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %51 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %51, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 34
  %53 = load i32, i32* %input_scan_number2, align 4, !tbaa !53
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scan_number3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 36
  %55 = load i32, i32* %output_scan_number3, align 4, !tbaa !54
  %cmp4 = icmp eq i32 %53, %55
  br i1 %cmp4, label %if.then, label %if.end.8

if.then:                                          ; preds = %while.body
  %56 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #3
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 68
  %58 = load i32, i32* %Ss, align 4, !tbaa !68
  %cmp5 = icmp eq i32 %58, 0
  %cond = select i1 %cmp5, i32 1, i32 0
  store i32 %cond, i32* %delta, align 4, !tbaa !6
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 35
  %60 = load i32, i32* %input_iMCU_row, align 4, !tbaa !34
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 37
  %62 = load i32, i32* %output_iMCU_row, align 4, !tbaa !36
  %63 = load i32, i32* %delta, align 4, !tbaa !6
  %add = add i32 %62, %63
  %cmp6 = icmp ugt i32 %60, %add
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.7
  %64 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.8

if.end.8:                                         ; preds = %cleanup.cont, %while.body
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 77
  %66 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl9, align 8, !tbaa !50
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %66, i32 0, i32 0
  %67 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !55
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %67(%struct.jpeg_decompress_struct* %68)
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.407

if.end.12:                                        ; preds = %if.end.8
  br label %while.cond

while.end:                                        ; preds = %cleanup, %land.end
  store i32 0, i32* %ci, align 4, !tbaa !6
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 43
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !21
  store %struct.jpeg_component_info* %70, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.396, %while.end
  %71 = load i32, i32* %ci, align 4, !tbaa !6
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 8
  %73 = load i32, i32* %num_components, align 4, !tbaa !22
  %cmp13 = icmp slt i32 %71, %73
  br i1 %cmp13, label %for.body, label %for.end.399

for.body:                                         ; preds = %for.cond
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 12
  %75 = load i32, i32* %component_needed, align 4, !tbaa !56
  %tobool14 = icmp ne i32 %75, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %for.body
  br label %for.inc.396

if.end.16:                                        ; preds = %for.body
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 37
  %77 = load i32, i32* %output_iMCU_row17, align 4, !tbaa !36
  %78 = load i32, i32* %last_iMCU_row, align 4, !tbaa !6
  %cmp18 = icmp ult i32 %77, %78
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 0, i32 3
  %80 = load i32, i32* %v_samp_factor, align 4, !tbaa !23
  store i32 %80, i32* %block_rows, align 4, !tbaa !6
  %81 = load i32, i32* %block_rows, align 4, !tbaa !6
  %mul = mul nsw i32 %81, 2
  store i32 %mul, i32* %access_rows, align 4, !tbaa !6
  store i32 0, i32* %last_row, align 4, !tbaa !6
  br label %if.end.25

if.else:                                          ; preds = %if.end.16
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %82, i32 0, i32 8
  %83 = load i32, i32* %height_in_blocks, align 4, !tbaa !29
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 0, i32 3
  %85 = load i32, i32* %v_samp_factor20, align 4, !tbaa !23
  %rem = urem i32 %83, %85
  store i32 %rem, i32* %block_rows, align 4, !tbaa !6
  %86 = load i32, i32* %block_rows, align 4, !tbaa !6
  %cmp21 = icmp eq i32 %86, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.else
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i32 0, i32 3
  %88 = load i32, i32* %v_samp_factor23, align 4, !tbaa !23
  store i32 %88, i32* %block_rows, align 4, !tbaa !6
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.else
  %89 = load i32, i32* %block_rows, align 4, !tbaa !6
  store i32 %89, i32* %access_rows, align 4, !tbaa !6
  store i32 1, i32* %last_row, align 4, !tbaa !6
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.19
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 37
  %91 = load i32, i32* %output_iMCU_row26, align 4, !tbaa !36
  %cmp27 = icmp ugt i32 %91, 0
  br i1 %cmp27, label %if.then.28, label %if.else.37

if.then.28:                                       ; preds = %if.end.25
  %92 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i32 0, i32 3
  %93 = load i32, i32* %v_samp_factor29, align 4, !tbaa !23
  %94 = load i32, i32* %access_rows, align 4, !tbaa !6
  %add30 = add nsw i32 %94, %93
  store i32 %add30, i32* %access_rows, align 4, !tbaa !6
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 1
  %96 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %96, i32 0, i32 8
  %97 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8, !tbaa !38
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %99 = bitcast %struct.jpeg_decompress_struct* %98 to %struct.jpeg_common_struct*
  %100 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %100 to i64
  %101 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %101, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  %102 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8, !tbaa !2
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 37
  %104 = load i32, i32* %output_iMCU_row31, align 4, !tbaa !36
  %sub32 = sub i32 %104, 1
  %105 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %105, i32 0, i32 3
  %106 = load i32, i32* %v_samp_factor33, align 4, !tbaa !23
  %mul34 = mul i32 %sub32, %106
  %107 = load i32, i32* %access_rows, align 4, !tbaa !6
  %call35 = call [64 x i16]** %97(%struct.jpeg_common_struct* %99, %struct.jvirt_barray_control* %102, i32 %mul34, i32 %107, i32 0)
  store [64 x i16]** %call35, [64 x i16]*** %buffer, align 8, !tbaa !2
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i32 0, i32 3
  %109 = load i32, i32* %v_samp_factor36, align 4, !tbaa !23
  %110 = load [64 x i16]**, [64 x i16]*** %buffer, align 8, !tbaa !2
  %idx.ext = sext i32 %109 to i64
  %add.ptr = getelementptr inbounds [64 x i16]*, [64 x i16]** %110, i64 %idx.ext
  store [64 x i16]** %add.ptr, [64 x i16]*** %buffer, align 8, !tbaa !2
  store i32 0, i32* %first_row, align 4, !tbaa !6
  br label %if.end.44

if.else.37:                                       ; preds = %if.end.25
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 1
  %112 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem38, align 8, !tbaa !8
  %access_virt_barray39 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %112, i32 0, i32 8
  %113 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray39, align 8, !tbaa !38
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %115 = bitcast %struct.jpeg_decompress_struct* %114 to %struct.jpeg_common_struct*
  %116 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom40 = sext i32 %116 to i64
  %117 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image41 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %117, i32 0, i32 5
  %arrayidx42 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image41, i32 0, i64 %idxprom40
  %118 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx42, align 8, !tbaa !2
  %119 = load i32, i32* %access_rows, align 4, !tbaa !6
  %call43 = call [64 x i16]** %113(%struct.jpeg_common_struct* %115, %struct.jvirt_barray_control* %118, i32 0, i32 %119, i32 0)
  store [64 x i16]** %call43, [64 x i16]*** %buffer, align 8, !tbaa !2
  store i32 1, i32* %first_row, align 4, !tbaa !6
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.37, %if.then.28
  %120 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %coef_bits_latch = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %120, i32 0, i32 6
  %121 = load i32*, i32** %coef_bits_latch, align 8, !tbaa !20
  %122 = load i32, i32* %ci, align 4, !tbaa !6
  %mul45 = mul nsw i32 %122, 6
  %idx.ext46 = sext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds i32, i32* %121, i64 %idx.ext46
  store i32* %add.ptr47, i32** %coef_bits, align 8, !tbaa !2
  %123 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %123, i32 0, i32 19
  %124 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8, !tbaa !65
  store %struct.JQUANT_TBL* %124, %struct.JQUANT_TBL** %quanttbl, align 8, !tbaa !2
  %125 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8, !tbaa !2
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %125, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 0
  %126 = load i16, i16* %arrayidx48, align 2, !tbaa !66
  %conv = zext i16 %126 to i64
  store i64 %conv, i64* %Q00, align 8, !tbaa !69
  %127 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8, !tbaa !2
  %quantval49 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %127, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval49, i32 0, i64 1
  %128 = load i16, i16* %arrayidx50, align 2, !tbaa !66
  %conv51 = zext i16 %128 to i64
  store i64 %conv51, i64* %Q01, align 8, !tbaa !69
  %129 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8, !tbaa !2
  %quantval52 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %129, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval52, i32 0, i64 8
  %130 = load i16, i16* %arrayidx53, align 2, !tbaa !66
  %conv54 = zext i16 %130 to i64
  store i64 %conv54, i64* %Q10, align 8, !tbaa !69
  %131 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8, !tbaa !2
  %quantval55 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %131, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval55, i32 0, i64 16
  %132 = load i16, i16* %arrayidx56, align 2, !tbaa !66
  %conv57 = zext i16 %132 to i64
  store i64 %conv57, i64* %Q20, align 8, !tbaa !69
  %133 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8, !tbaa !2
  %quantval58 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %133, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval58, i32 0, i64 9
  %134 = load i16, i16* %arrayidx59, align 2, !tbaa !66
  %conv60 = zext i16 %134 to i64
  store i64 %conv60, i64* %Q11, align 8, !tbaa !69
  %135 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8, !tbaa !2
  %quantval61 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %135, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval61, i32 0, i64 2
  %136 = load i16, i16* %arrayidx62, align 2, !tbaa !66
  %conv63 = zext i16 %136 to i64
  store i64 %conv63, i64* %Q02, align 8, !tbaa !69
  %137 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom64 = sext i32 %137 to i64
  %138 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %138, i32 0, i32 80
  %139 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8, !tbaa !57
  %inverse_DCT65 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %139, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT65, i32 0, i64 %idxprom64
  %140 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx66, align 8, !tbaa !2
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %140, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !2
  %141 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom67 = sext i32 %141 to i64
  %142 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx68 = getelementptr inbounds i8**, i8*** %142, i64 %idxprom67
  %143 = load i8**, i8*** %arrayidx68, align 8, !tbaa !2
  store i8** %143, i8*** %output_ptr, align 8, !tbaa !2
  store i32 0, i32* %block_row, align 4, !tbaa !6
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.393, %if.end.44
  %144 = load i32, i32* %block_row, align 4, !tbaa !6
  %145 = load i32, i32* %block_rows, align 4, !tbaa !6
  %cmp70 = icmp slt i32 %144, %145
  br i1 %cmp70, label %for.body.72, label %for.end.395

for.body.72:                                      ; preds = %for.cond.69
  %146 = load i32, i32* %block_row, align 4, !tbaa !6
  %idxprom73 = sext i32 %146 to i64
  %147 = load [64 x i16]**, [64 x i16]*** %buffer, align 8, !tbaa !2
  %arrayidx74 = getelementptr inbounds [64 x i16]*, [64 x i16]** %147, i64 %idxprom73
  %148 = load [64 x i16]*, [64 x i16]** %arrayidx74, align 8, !tbaa !2
  store [64 x i16]* %148, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %149 = load i32, i32* %first_row, align 4, !tbaa !6
  %tobool75 = icmp ne i32 %149, 0
  br i1 %tobool75, label %land.lhs.true, label %if.else.79

land.lhs.true:                                    ; preds = %for.body.72
  %150 = load i32, i32* %block_row, align 4, !tbaa !6
  %cmp76 = icmp eq i32 %150, 0
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %land.lhs.true
  %151 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  store [64 x i16]* %151, [64 x i16]** %prev_block_row, align 8, !tbaa !2
  br label %if.end.83

if.else.79:                                       ; preds = %land.lhs.true, %for.body.72
  %152 = load i32, i32* %block_row, align 4, !tbaa !6
  %sub80 = sub nsw i32 %152, 1
  %idxprom81 = sext i32 %sub80 to i64
  %153 = load [64 x i16]**, [64 x i16]*** %buffer, align 8, !tbaa !2
  %arrayidx82 = getelementptr inbounds [64 x i16]*, [64 x i16]** %153, i64 %idxprom81
  %154 = load [64 x i16]*, [64 x i16]** %arrayidx82, align 8, !tbaa !2
  store [64 x i16]* %154, [64 x i16]** %prev_block_row, align 8, !tbaa !2
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.79, %if.then.78
  %155 = load i32, i32* %last_row, align 4, !tbaa !6
  %tobool84 = icmp ne i32 %155, 0
  br i1 %tobool84, label %land.lhs.true.85, label %if.else.90

land.lhs.true.85:                                 ; preds = %if.end.83
  %156 = load i32, i32* %block_row, align 4, !tbaa !6
  %157 = load i32, i32* %block_rows, align 4, !tbaa !6
  %sub86 = sub nsw i32 %157, 1
  %cmp87 = icmp eq i32 %156, %sub86
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %land.lhs.true.85
  %158 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  store [64 x i16]* %158, [64 x i16]** %next_block_row, align 8, !tbaa !2
  br label %if.end.94

if.else.90:                                       ; preds = %land.lhs.true.85, %if.end.83
  %159 = load i32, i32* %block_row, align 4, !tbaa !6
  %add91 = add nsw i32 %159, 1
  %idxprom92 = sext i32 %add91 to i64
  %160 = load [64 x i16]**, [64 x i16]*** %buffer, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds [64 x i16]*, [64 x i16]** %160, i64 %idxprom92
  %161 = load [64 x i16]*, [64 x i16]** %arrayidx93, align 8, !tbaa !2
  store [64 x i16]* %161, [64 x i16]** %next_block_row, align 8, !tbaa !2
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.90, %if.then.89
  %162 = load [64 x i16]*, [64 x i16]** %prev_block_row, align 8, !tbaa !2
  %arrayidx95 = getelementptr inbounds [64 x i16], [64 x i16]* %162, i64 0
  %arrayidx96 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx95, i32 0, i64 0
  %163 = load i16, i16* %arrayidx96, align 2, !tbaa !66
  %conv97 = sext i16 %163 to i32
  store i32 %conv97, i32* %DC3, align 4, !tbaa !6
  store i32 %conv97, i32* %DC2, align 4, !tbaa !6
  store i32 %conv97, i32* %DC1, align 4, !tbaa !6
  %164 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %arrayidx98 = getelementptr inbounds [64 x i16], [64 x i16]* %164, i64 0
  %arrayidx99 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx98, i32 0, i64 0
  %165 = load i16, i16* %arrayidx99, align 2, !tbaa !66
  %conv100 = sext i16 %165 to i32
  store i32 %conv100, i32* %DC6, align 4, !tbaa !6
  store i32 %conv100, i32* %DC5, align 4, !tbaa !6
  store i32 %conv100, i32* %DC4, align 4, !tbaa !6
  %166 = load [64 x i16]*, [64 x i16]** %next_block_row, align 8, !tbaa !2
  %arrayidx101 = getelementptr inbounds [64 x i16], [64 x i16]* %166, i64 0
  %arrayidx102 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx101, i32 0, i64 0
  %167 = load i16, i16* %arrayidx102, align 2, !tbaa !66
  %conv103 = sext i16 %167 to i32
  store i32 %conv103, i32* %DC9, align 4, !tbaa !6
  store i32 %conv103, i32* %DC8, align 4, !tbaa !6
  store i32 %conv103, i32* %DC7, align 4, !tbaa !6
  store i32 0, i32* %output_col, align 4, !tbaa !6
  %168 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %168, i32 0, i32 7
  %169 = load i32, i32* %width_in_blocks, align 4, !tbaa !27
  %sub104 = sub i32 %169, 1
  store i32 %sub104, i32* %last_block_column, align 4, !tbaa !6
  store i32 0, i32* %block_num, align 4, !tbaa !6
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc, %if.end.94
  %170 = load i32, i32* %block_num, align 4, !tbaa !6
  %171 = load i32, i32* %last_block_column, align 4, !tbaa !6
  %cmp106 = icmp ule i32 %170, %171
  br i1 %cmp106, label %for.body.108, label %for.end

for.body.108:                                     ; preds = %for.cond.105
  %172 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i32 0
  %173 = bitcast i16* %arraydecay to [64 x i16]*
  call void @jcopy_block_row([64 x i16]* %172, [64 x i16]* %173, i32 1)
  %174 = load i32, i32* %block_num, align 4, !tbaa !6
  %175 = load i32, i32* %last_block_column, align 4, !tbaa !6
  %cmp109 = icmp ult i32 %174, %175
  br i1 %cmp109, label %if.then.111, label %if.end.121

if.then.111:                                      ; preds = %for.body.108
  %176 = load [64 x i16]*, [64 x i16]** %prev_block_row, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds [64 x i16], [64 x i16]* %176, i64 1
  %arrayidx113 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx112, i32 0, i64 0
  %177 = load i16, i16* %arrayidx113, align 2, !tbaa !66
  %conv114 = sext i16 %177 to i32
  store i32 %conv114, i32* %DC3, align 4, !tbaa !6
  %178 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds [64 x i16], [64 x i16]* %178, i64 1
  %arrayidx116 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx115, i32 0, i64 0
  %179 = load i16, i16* %arrayidx116, align 2, !tbaa !66
  %conv117 = sext i16 %179 to i32
  store i32 %conv117, i32* %DC6, align 4, !tbaa !6
  %180 = load [64 x i16]*, [64 x i16]** %next_block_row, align 8, !tbaa !2
  %arrayidx118 = getelementptr inbounds [64 x i16], [64 x i16]* %180, i64 1
  %arrayidx119 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx118, i32 0, i64 0
  %181 = load i16, i16* %arrayidx119, align 2, !tbaa !66
  %conv120 = sext i16 %181 to i32
  store i32 %conv120, i32* %DC9, align 4, !tbaa !6
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.111, %for.body.108
  %182 = load i32*, i32** %coef_bits, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds i32, i32* %182, i64 1
  %183 = load i32, i32* %arrayidx122, align 4, !tbaa !6
  store i32 %183, i32* %Al, align 4, !tbaa !6
  %cmp123 = icmp ne i32 %183, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.171

land.lhs.true.125:                                ; preds = %if.end.121
  %arrayidx126 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 1
  %184 = load i16, i16* %arrayidx126, align 2, !tbaa !66
  %conv127 = sext i16 %184 to i32
  %cmp128 = icmp eq i32 %conv127, 0
  br i1 %cmp128, label %if.then.130, label %if.end.171

if.then.130:                                      ; preds = %land.lhs.true.125
  %185 = load i64, i64* %Q00, align 8, !tbaa !69
  %mul131 = mul nsw i64 36, %185
  %186 = load i32, i32* %DC4, align 4, !tbaa !6
  %187 = load i32, i32* %DC6, align 4, !tbaa !6
  %sub132 = sub nsw i32 %186, %187
  %conv133 = sext i32 %sub132 to i64
  %mul134 = mul nsw i64 %mul131, %conv133
  store i64 %mul134, i64* %num, align 8, !tbaa !69
  %188 = load i64, i64* %num, align 8, !tbaa !69
  %cmp135 = icmp sge i64 %188, 0
  br i1 %cmp135, label %if.then.137, label %if.else.151

if.then.137:                                      ; preds = %if.then.130
  %189 = load i64, i64* %Q01, align 8, !tbaa !69
  %shl = shl i64 %189, 7
  %190 = load i64, i64* %num, align 8, !tbaa !69
  %add138 = add nsw i64 %shl, %190
  %191 = load i64, i64* %Q01, align 8, !tbaa !69
  %shl139 = shl i64 %191, 8
  %div = sdiv i64 %add138, %shl139
  %conv140 = trunc i64 %div to i32
  store i32 %conv140, i32* %pred, align 4, !tbaa !6
  %192 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp141 = icmp sgt i32 %192, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.150

land.lhs.true.143:                                ; preds = %if.then.137
  %193 = load i32, i32* %pred, align 4, !tbaa !6
  %194 = load i32, i32* %Al, align 4, !tbaa !6
  %shl144 = shl i32 1, %194
  %cmp145 = icmp sge i32 %193, %shl144
  br i1 %cmp145, label %if.then.147, label %if.end.150

if.then.147:                                      ; preds = %land.lhs.true.143
  %195 = load i32, i32* %Al, align 4, !tbaa !6
  %shl148 = shl i32 1, %195
  %sub149 = sub nsw i32 %shl148, 1
  store i32 %sub149, i32* %pred, align 4, !tbaa !6
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.147, %land.lhs.true.143, %if.then.137
  br label %if.end.168

if.else.151:                                      ; preds = %if.then.130
  %196 = load i64, i64* %Q01, align 8, !tbaa !69
  %shl152 = shl i64 %196, 7
  %197 = load i64, i64* %num, align 8, !tbaa !69
  %sub153 = sub nsw i64 %shl152, %197
  %198 = load i64, i64* %Q01, align 8, !tbaa !69
  %shl154 = shl i64 %198, 8
  %div155 = sdiv i64 %sub153, %shl154
  %conv156 = trunc i64 %div155 to i32
  store i32 %conv156, i32* %pred, align 4, !tbaa !6
  %199 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp157 = icmp sgt i32 %199, 0
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.166

land.lhs.true.159:                                ; preds = %if.else.151
  %200 = load i32, i32* %pred, align 4, !tbaa !6
  %201 = load i32, i32* %Al, align 4, !tbaa !6
  %shl160 = shl i32 1, %201
  %cmp161 = icmp sge i32 %200, %shl160
  br i1 %cmp161, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %land.lhs.true.159
  %202 = load i32, i32* %Al, align 4, !tbaa !6
  %shl164 = shl i32 1, %202
  %sub165 = sub nsw i32 %shl164, 1
  store i32 %sub165, i32* %pred, align 4, !tbaa !6
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %land.lhs.true.159, %if.else.151
  %203 = load i32, i32* %pred, align 4, !tbaa !6
  %sub167 = sub nsw i32 0, %203
  store i32 %sub167, i32* %pred, align 4, !tbaa !6
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.166, %if.end.150
  %204 = load i32, i32* %pred, align 4, !tbaa !6
  %conv169 = trunc i32 %204 to i16
  %arrayidx170 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 1
  store i16 %conv169, i16* %arrayidx170, align 2, !tbaa !66
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.168, %land.lhs.true.125, %if.end.121
  %205 = load i32*, i32** %coef_bits, align 8, !tbaa !2
  %arrayidx172 = getelementptr inbounds i32, i32* %205, i64 2
  %206 = load i32, i32* %arrayidx172, align 4, !tbaa !6
  store i32 %206, i32* %Al, align 4, !tbaa !6
  %cmp173 = icmp ne i32 %206, 0
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.223

land.lhs.true.175:                                ; preds = %if.end.171
  %arrayidx176 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 8
  %207 = load i16, i16* %arrayidx176, align 2, !tbaa !66
  %conv177 = sext i16 %207 to i32
  %cmp178 = icmp eq i32 %conv177, 0
  br i1 %cmp178, label %if.then.180, label %if.end.223

if.then.180:                                      ; preds = %land.lhs.true.175
  %208 = load i64, i64* %Q00, align 8, !tbaa !69
  %mul181 = mul nsw i64 36, %208
  %209 = load i32, i32* %DC2, align 4, !tbaa !6
  %210 = load i32, i32* %DC8, align 4, !tbaa !6
  %sub182 = sub nsw i32 %209, %210
  %conv183 = sext i32 %sub182 to i64
  %mul184 = mul nsw i64 %mul181, %conv183
  store i64 %mul184, i64* %num, align 8, !tbaa !69
  %211 = load i64, i64* %num, align 8, !tbaa !69
  %cmp185 = icmp sge i64 %211, 0
  br i1 %cmp185, label %if.then.187, label %if.else.203

if.then.187:                                      ; preds = %if.then.180
  %212 = load i64, i64* %Q10, align 8, !tbaa !69
  %shl188 = shl i64 %212, 7
  %213 = load i64, i64* %num, align 8, !tbaa !69
  %add189 = add nsw i64 %shl188, %213
  %214 = load i64, i64* %Q10, align 8, !tbaa !69
  %shl190 = shl i64 %214, 8
  %div191 = sdiv i64 %add189, %shl190
  %conv192 = trunc i64 %div191 to i32
  store i32 %conv192, i32* %pred, align 4, !tbaa !6
  %215 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp193 = icmp sgt i32 %215, 0
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.202

land.lhs.true.195:                                ; preds = %if.then.187
  %216 = load i32, i32* %pred, align 4, !tbaa !6
  %217 = load i32, i32* %Al, align 4, !tbaa !6
  %shl196 = shl i32 1, %217
  %cmp197 = icmp sge i32 %216, %shl196
  br i1 %cmp197, label %if.then.199, label %if.end.202

if.then.199:                                      ; preds = %land.lhs.true.195
  %218 = load i32, i32* %Al, align 4, !tbaa !6
  %shl200 = shl i32 1, %218
  %sub201 = sub nsw i32 %shl200, 1
  store i32 %sub201, i32* %pred, align 4, !tbaa !6
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.199, %land.lhs.true.195, %if.then.187
  br label %if.end.220

if.else.203:                                      ; preds = %if.then.180
  %219 = load i64, i64* %Q10, align 8, !tbaa !69
  %shl204 = shl i64 %219, 7
  %220 = load i64, i64* %num, align 8, !tbaa !69
  %sub205 = sub nsw i64 %shl204, %220
  %221 = load i64, i64* %Q10, align 8, !tbaa !69
  %shl206 = shl i64 %221, 8
  %div207 = sdiv i64 %sub205, %shl206
  %conv208 = trunc i64 %div207 to i32
  store i32 %conv208, i32* %pred, align 4, !tbaa !6
  %222 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp209 = icmp sgt i32 %222, 0
  br i1 %cmp209, label %land.lhs.true.211, label %if.end.218

land.lhs.true.211:                                ; preds = %if.else.203
  %223 = load i32, i32* %pred, align 4, !tbaa !6
  %224 = load i32, i32* %Al, align 4, !tbaa !6
  %shl212 = shl i32 1, %224
  %cmp213 = icmp sge i32 %223, %shl212
  br i1 %cmp213, label %if.then.215, label %if.end.218

if.then.215:                                      ; preds = %land.lhs.true.211
  %225 = load i32, i32* %Al, align 4, !tbaa !6
  %shl216 = shl i32 1, %225
  %sub217 = sub nsw i32 %shl216, 1
  store i32 %sub217, i32* %pred, align 4, !tbaa !6
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.215, %land.lhs.true.211, %if.else.203
  %226 = load i32, i32* %pred, align 4, !tbaa !6
  %sub219 = sub nsw i32 0, %226
  store i32 %sub219, i32* %pred, align 4, !tbaa !6
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.218, %if.end.202
  %227 = load i32, i32* %pred, align 4, !tbaa !6
  %conv221 = trunc i32 %227 to i16
  %arrayidx222 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 8
  store i16 %conv221, i16* %arrayidx222, align 2, !tbaa !66
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.220, %land.lhs.true.175, %if.end.171
  %228 = load i32*, i32** %coef_bits, align 8, !tbaa !2
  %arrayidx224 = getelementptr inbounds i32, i32* %228, i64 3
  %229 = load i32, i32* %arrayidx224, align 4, !tbaa !6
  store i32 %229, i32* %Al, align 4, !tbaa !6
  %cmp225 = icmp ne i32 %229, 0
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.277

land.lhs.true.227:                                ; preds = %if.end.223
  %arrayidx228 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 16
  %230 = load i16, i16* %arrayidx228, align 2, !tbaa !66
  %conv229 = sext i16 %230 to i32
  %cmp230 = icmp eq i32 %conv229, 0
  br i1 %cmp230, label %if.then.232, label %if.end.277

if.then.232:                                      ; preds = %land.lhs.true.227
  %231 = load i64, i64* %Q00, align 8, !tbaa !69
  %mul233 = mul nsw i64 9, %231
  %232 = load i32, i32* %DC2, align 4, !tbaa !6
  %233 = load i32, i32* %DC8, align 4, !tbaa !6
  %add234 = add nsw i32 %232, %233
  %234 = load i32, i32* %DC5, align 4, !tbaa !6
  %mul235 = mul nsw i32 2, %234
  %sub236 = sub nsw i32 %add234, %mul235
  %conv237 = sext i32 %sub236 to i64
  %mul238 = mul nsw i64 %mul233, %conv237
  store i64 %mul238, i64* %num, align 8, !tbaa !69
  %235 = load i64, i64* %num, align 8, !tbaa !69
  %cmp239 = icmp sge i64 %235, 0
  br i1 %cmp239, label %if.then.241, label %if.else.257

if.then.241:                                      ; preds = %if.then.232
  %236 = load i64, i64* %Q20, align 8, !tbaa !69
  %shl242 = shl i64 %236, 7
  %237 = load i64, i64* %num, align 8, !tbaa !69
  %add243 = add nsw i64 %shl242, %237
  %238 = load i64, i64* %Q20, align 8, !tbaa !69
  %shl244 = shl i64 %238, 8
  %div245 = sdiv i64 %add243, %shl244
  %conv246 = trunc i64 %div245 to i32
  store i32 %conv246, i32* %pred, align 4, !tbaa !6
  %239 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp247 = icmp sgt i32 %239, 0
  br i1 %cmp247, label %land.lhs.true.249, label %if.end.256

land.lhs.true.249:                                ; preds = %if.then.241
  %240 = load i32, i32* %pred, align 4, !tbaa !6
  %241 = load i32, i32* %Al, align 4, !tbaa !6
  %shl250 = shl i32 1, %241
  %cmp251 = icmp sge i32 %240, %shl250
  br i1 %cmp251, label %if.then.253, label %if.end.256

if.then.253:                                      ; preds = %land.lhs.true.249
  %242 = load i32, i32* %Al, align 4, !tbaa !6
  %shl254 = shl i32 1, %242
  %sub255 = sub nsw i32 %shl254, 1
  store i32 %sub255, i32* %pred, align 4, !tbaa !6
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.253, %land.lhs.true.249, %if.then.241
  br label %if.end.274

if.else.257:                                      ; preds = %if.then.232
  %243 = load i64, i64* %Q20, align 8, !tbaa !69
  %shl258 = shl i64 %243, 7
  %244 = load i64, i64* %num, align 8, !tbaa !69
  %sub259 = sub nsw i64 %shl258, %244
  %245 = load i64, i64* %Q20, align 8, !tbaa !69
  %shl260 = shl i64 %245, 8
  %div261 = sdiv i64 %sub259, %shl260
  %conv262 = trunc i64 %div261 to i32
  store i32 %conv262, i32* %pred, align 4, !tbaa !6
  %246 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp263 = icmp sgt i32 %246, 0
  br i1 %cmp263, label %land.lhs.true.265, label %if.end.272

land.lhs.true.265:                                ; preds = %if.else.257
  %247 = load i32, i32* %pred, align 4, !tbaa !6
  %248 = load i32, i32* %Al, align 4, !tbaa !6
  %shl266 = shl i32 1, %248
  %cmp267 = icmp sge i32 %247, %shl266
  br i1 %cmp267, label %if.then.269, label %if.end.272

if.then.269:                                      ; preds = %land.lhs.true.265
  %249 = load i32, i32* %Al, align 4, !tbaa !6
  %shl270 = shl i32 1, %249
  %sub271 = sub nsw i32 %shl270, 1
  store i32 %sub271, i32* %pred, align 4, !tbaa !6
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.269, %land.lhs.true.265, %if.else.257
  %250 = load i32, i32* %pred, align 4, !tbaa !6
  %sub273 = sub nsw i32 0, %250
  store i32 %sub273, i32* %pred, align 4, !tbaa !6
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.272, %if.end.256
  %251 = load i32, i32* %pred, align 4, !tbaa !6
  %conv275 = trunc i32 %251 to i16
  %arrayidx276 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 16
  store i16 %conv275, i16* %arrayidx276, align 2, !tbaa !66
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.274, %land.lhs.true.227, %if.end.223
  %252 = load i32*, i32** %coef_bits, align 8, !tbaa !2
  %arrayidx278 = getelementptr inbounds i32, i32* %252, i64 4
  %253 = load i32, i32* %arrayidx278, align 4, !tbaa !6
  store i32 %253, i32* %Al, align 4, !tbaa !6
  %cmp279 = icmp ne i32 %253, 0
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.331

land.lhs.true.281:                                ; preds = %if.end.277
  %arrayidx282 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 9
  %254 = load i16, i16* %arrayidx282, align 2, !tbaa !66
  %conv283 = sext i16 %254 to i32
  %cmp284 = icmp eq i32 %conv283, 0
  br i1 %cmp284, label %if.then.286, label %if.end.331

if.then.286:                                      ; preds = %land.lhs.true.281
  %255 = load i64, i64* %Q00, align 8, !tbaa !69
  %mul287 = mul nsw i64 5, %255
  %256 = load i32, i32* %DC1, align 4, !tbaa !6
  %257 = load i32, i32* %DC3, align 4, !tbaa !6
  %sub288 = sub nsw i32 %256, %257
  %258 = load i32, i32* %DC7, align 4, !tbaa !6
  %sub289 = sub nsw i32 %sub288, %258
  %259 = load i32, i32* %DC9, align 4, !tbaa !6
  %add290 = add nsw i32 %sub289, %259
  %conv291 = sext i32 %add290 to i64
  %mul292 = mul nsw i64 %mul287, %conv291
  store i64 %mul292, i64* %num, align 8, !tbaa !69
  %260 = load i64, i64* %num, align 8, !tbaa !69
  %cmp293 = icmp sge i64 %260, 0
  br i1 %cmp293, label %if.then.295, label %if.else.311

if.then.295:                                      ; preds = %if.then.286
  %261 = load i64, i64* %Q11, align 8, !tbaa !69
  %shl296 = shl i64 %261, 7
  %262 = load i64, i64* %num, align 8, !tbaa !69
  %add297 = add nsw i64 %shl296, %262
  %263 = load i64, i64* %Q11, align 8, !tbaa !69
  %shl298 = shl i64 %263, 8
  %div299 = sdiv i64 %add297, %shl298
  %conv300 = trunc i64 %div299 to i32
  store i32 %conv300, i32* %pred, align 4, !tbaa !6
  %264 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp301 = icmp sgt i32 %264, 0
  br i1 %cmp301, label %land.lhs.true.303, label %if.end.310

land.lhs.true.303:                                ; preds = %if.then.295
  %265 = load i32, i32* %pred, align 4, !tbaa !6
  %266 = load i32, i32* %Al, align 4, !tbaa !6
  %shl304 = shl i32 1, %266
  %cmp305 = icmp sge i32 %265, %shl304
  br i1 %cmp305, label %if.then.307, label %if.end.310

if.then.307:                                      ; preds = %land.lhs.true.303
  %267 = load i32, i32* %Al, align 4, !tbaa !6
  %shl308 = shl i32 1, %267
  %sub309 = sub nsw i32 %shl308, 1
  store i32 %sub309, i32* %pred, align 4, !tbaa !6
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.307, %land.lhs.true.303, %if.then.295
  br label %if.end.328

if.else.311:                                      ; preds = %if.then.286
  %268 = load i64, i64* %Q11, align 8, !tbaa !69
  %shl312 = shl i64 %268, 7
  %269 = load i64, i64* %num, align 8, !tbaa !69
  %sub313 = sub nsw i64 %shl312, %269
  %270 = load i64, i64* %Q11, align 8, !tbaa !69
  %shl314 = shl i64 %270, 8
  %div315 = sdiv i64 %sub313, %shl314
  %conv316 = trunc i64 %div315 to i32
  store i32 %conv316, i32* %pred, align 4, !tbaa !6
  %271 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp317 = icmp sgt i32 %271, 0
  br i1 %cmp317, label %land.lhs.true.319, label %if.end.326

land.lhs.true.319:                                ; preds = %if.else.311
  %272 = load i32, i32* %pred, align 4, !tbaa !6
  %273 = load i32, i32* %Al, align 4, !tbaa !6
  %shl320 = shl i32 1, %273
  %cmp321 = icmp sge i32 %272, %shl320
  br i1 %cmp321, label %if.then.323, label %if.end.326

if.then.323:                                      ; preds = %land.lhs.true.319
  %274 = load i32, i32* %Al, align 4, !tbaa !6
  %shl324 = shl i32 1, %274
  %sub325 = sub nsw i32 %shl324, 1
  store i32 %sub325, i32* %pred, align 4, !tbaa !6
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.323, %land.lhs.true.319, %if.else.311
  %275 = load i32, i32* %pred, align 4, !tbaa !6
  %sub327 = sub nsw i32 0, %275
  store i32 %sub327, i32* %pred, align 4, !tbaa !6
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.326, %if.end.310
  %276 = load i32, i32* %pred, align 4, !tbaa !6
  %conv329 = trunc i32 %276 to i16
  %arrayidx330 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 9
  store i16 %conv329, i16* %arrayidx330, align 2, !tbaa !66
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.328, %land.lhs.true.281, %if.end.277
  %277 = load i32*, i32** %coef_bits, align 8, !tbaa !2
  %arrayidx332 = getelementptr inbounds i32, i32* %277, i64 5
  %278 = load i32, i32* %arrayidx332, align 4, !tbaa !6
  store i32 %278, i32* %Al, align 4, !tbaa !6
  %cmp333 = icmp ne i32 %278, 0
  br i1 %cmp333, label %land.lhs.true.335, label %if.end.385

land.lhs.true.335:                                ; preds = %if.end.331
  %arrayidx336 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 2
  %279 = load i16, i16* %arrayidx336, align 2, !tbaa !66
  %conv337 = sext i16 %279 to i32
  %cmp338 = icmp eq i32 %conv337, 0
  br i1 %cmp338, label %if.then.340, label %if.end.385

if.then.340:                                      ; preds = %land.lhs.true.335
  %280 = load i64, i64* %Q00, align 8, !tbaa !69
  %mul341 = mul nsw i64 9, %280
  %281 = load i32, i32* %DC4, align 4, !tbaa !6
  %282 = load i32, i32* %DC6, align 4, !tbaa !6
  %add342 = add nsw i32 %281, %282
  %283 = load i32, i32* %DC5, align 4, !tbaa !6
  %mul343 = mul nsw i32 2, %283
  %sub344 = sub nsw i32 %add342, %mul343
  %conv345 = sext i32 %sub344 to i64
  %mul346 = mul nsw i64 %mul341, %conv345
  store i64 %mul346, i64* %num, align 8, !tbaa !69
  %284 = load i64, i64* %num, align 8, !tbaa !69
  %cmp347 = icmp sge i64 %284, 0
  br i1 %cmp347, label %if.then.349, label %if.else.365

if.then.349:                                      ; preds = %if.then.340
  %285 = load i64, i64* %Q02, align 8, !tbaa !69
  %shl350 = shl i64 %285, 7
  %286 = load i64, i64* %num, align 8, !tbaa !69
  %add351 = add nsw i64 %shl350, %286
  %287 = load i64, i64* %Q02, align 8, !tbaa !69
  %shl352 = shl i64 %287, 8
  %div353 = sdiv i64 %add351, %shl352
  %conv354 = trunc i64 %div353 to i32
  store i32 %conv354, i32* %pred, align 4, !tbaa !6
  %288 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp355 = icmp sgt i32 %288, 0
  br i1 %cmp355, label %land.lhs.true.357, label %if.end.364

land.lhs.true.357:                                ; preds = %if.then.349
  %289 = load i32, i32* %pred, align 4, !tbaa !6
  %290 = load i32, i32* %Al, align 4, !tbaa !6
  %shl358 = shl i32 1, %290
  %cmp359 = icmp sge i32 %289, %shl358
  br i1 %cmp359, label %if.then.361, label %if.end.364

if.then.361:                                      ; preds = %land.lhs.true.357
  %291 = load i32, i32* %Al, align 4, !tbaa !6
  %shl362 = shl i32 1, %291
  %sub363 = sub nsw i32 %shl362, 1
  store i32 %sub363, i32* %pred, align 4, !tbaa !6
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.361, %land.lhs.true.357, %if.then.349
  br label %if.end.382

if.else.365:                                      ; preds = %if.then.340
  %292 = load i64, i64* %Q02, align 8, !tbaa !69
  %shl366 = shl i64 %292, 7
  %293 = load i64, i64* %num, align 8, !tbaa !69
  %sub367 = sub nsw i64 %shl366, %293
  %294 = load i64, i64* %Q02, align 8, !tbaa !69
  %shl368 = shl i64 %294, 8
  %div369 = sdiv i64 %sub367, %shl368
  %conv370 = trunc i64 %div369 to i32
  store i32 %conv370, i32* %pred, align 4, !tbaa !6
  %295 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp371 = icmp sgt i32 %295, 0
  br i1 %cmp371, label %land.lhs.true.373, label %if.end.380

land.lhs.true.373:                                ; preds = %if.else.365
  %296 = load i32, i32* %pred, align 4, !tbaa !6
  %297 = load i32, i32* %Al, align 4, !tbaa !6
  %shl374 = shl i32 1, %297
  %cmp375 = icmp sge i32 %296, %shl374
  br i1 %cmp375, label %if.then.377, label %if.end.380

if.then.377:                                      ; preds = %land.lhs.true.373
  %298 = load i32, i32* %Al, align 4, !tbaa !6
  %shl378 = shl i32 1, %298
  %sub379 = sub nsw i32 %shl378, 1
  store i32 %sub379, i32* %pred, align 4, !tbaa !6
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.377, %land.lhs.true.373, %if.else.365
  %299 = load i32, i32* %pred, align 4, !tbaa !6
  %sub381 = sub nsw i32 0, %299
  store i32 %sub381, i32* %pred, align 4, !tbaa !6
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.380, %if.end.364
  %300 = load i32, i32* %pred, align 4, !tbaa !6
  %conv383 = trunc i32 %300 to i16
  %arrayidx384 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 2
  store i16 %conv383, i16* %arrayidx384, align 2, !tbaa !66
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.382, %land.lhs.true.335, %if.end.331
  %301 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !2
  %302 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %303 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %arraydecay386 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i32 0
  %304 = load i8**, i8*** %output_ptr, align 8, !tbaa !2
  %305 = load i32, i32* %output_col, align 4, !tbaa !6
  call void %301(%struct.jpeg_decompress_struct* %302, %struct.jpeg_component_info* %303, i16* %arraydecay386, i8** %304, i32 %305)
  %306 = load i32, i32* %DC2, align 4, !tbaa !6
  store i32 %306, i32* %DC1, align 4, !tbaa !6
  %307 = load i32, i32* %DC3, align 4, !tbaa !6
  store i32 %307, i32* %DC2, align 4, !tbaa !6
  %308 = load i32, i32* %DC5, align 4, !tbaa !6
  store i32 %308, i32* %DC4, align 4, !tbaa !6
  %309 = load i32, i32* %DC6, align 4, !tbaa !6
  store i32 %309, i32* %DC5, align 4, !tbaa !6
  %310 = load i32, i32* %DC8, align 4, !tbaa !6
  store i32 %310, i32* %DC7, align 4, !tbaa !6
  %311 = load i32, i32* %DC9, align 4, !tbaa !6
  store i32 %311, i32* %DC8, align 4, !tbaa !6
  %312 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %312, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %313 = load [64 x i16]*, [64 x i16]** %prev_block_row, align 8, !tbaa !2
  %incdec.ptr387 = getelementptr inbounds [64 x i16], [64 x i16]* %313, i32 1
  store [64 x i16]* %incdec.ptr387, [64 x i16]** %prev_block_row, align 8, !tbaa !2
  %314 = load [64 x i16]*, [64 x i16]** %next_block_row, align 8, !tbaa !2
  %incdec.ptr388 = getelementptr inbounds [64 x i16], [64 x i16]* %314, i32 1
  store [64 x i16]* %incdec.ptr388, [64 x i16]** %next_block_row, align 8, !tbaa !2
  %315 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %315, i32 0, i32 9
  %316 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !58
  %317 = load i32, i32* %output_col, align 4, !tbaa !6
  %add389 = add i32 %317, %316
  store i32 %add389, i32* %output_col, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %if.end.385
  %318 = load i32, i32* %block_num, align 4, !tbaa !6
  %inc = add i32 %318, 1
  store i32 %inc, i32* %block_num, align 4, !tbaa !6
  br label %for.cond.105

for.end:                                          ; preds = %for.cond.105
  %319 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size390 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %319, i32 0, i32 9
  %320 = load i32, i32* %DCT_scaled_size390, align 4, !tbaa !58
  %321 = load i8**, i8*** %output_ptr, align 8, !tbaa !2
  %idx.ext391 = sext i32 %320 to i64
  %add.ptr392 = getelementptr inbounds i8*, i8** %321, i64 %idx.ext391
  store i8** %add.ptr392, i8*** %output_ptr, align 8, !tbaa !2
  br label %for.inc.393

for.inc.393:                                      ; preds = %for.end
  %322 = load i32, i32* %block_row, align 4, !tbaa !6
  %inc394 = add nsw i32 %322, 1
  store i32 %inc394, i32* %block_row, align 4, !tbaa !6
  br label %for.cond.69

for.end.395:                                      ; preds = %for.cond.69
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.end.395, %if.then.15
  %323 = load i32, i32* %ci, align 4, !tbaa !6
  %inc397 = add nsw i32 %323, 1
  store i32 %inc397, i32* %ci, align 4, !tbaa !6
  %324 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr398 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %324, i32 1
  store %struct.jpeg_component_info* %incdec.ptr398, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.399:                                      ; preds = %for.cond
  %325 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_iMCU_row400 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %325, i32 0, i32 37
  %326 = load i32, i32* %output_iMCU_row400, align 4, !tbaa !36
  %inc401 = add i32 %326, 1
  store i32 %inc401, i32* %output_iMCU_row400, align 4, !tbaa !36
  %327 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows402 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %327, i32 0, i32 60
  %328 = load i32, i32* %total_iMCU_rows402, align 4, !tbaa !49
  %cmp403 = icmp ult i32 %inc401, %328
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %for.end.399
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.407

if.end.406:                                       ; preds = %for.end.399
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.407

cleanup.407:                                      ; preds = %if.end.406, %if.then.405, %if.then.11
  %329 = bitcast i32* %pred to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #3
  %330 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #3
  %331 = bitcast i32* %DC9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #3
  %332 = bitcast i32* %DC8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #3
  %333 = bitcast i32* %DC7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #3
  %334 = bitcast i32* %DC6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #3
  %335 = bitcast i32* %DC5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #3
  %336 = bitcast i32* %DC4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #3
  %337 = bitcast i32* %DC3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #3
  %338 = bitcast i32* %DC2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %338) #3
  %339 = bitcast i32* %DC1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #3
  %340 = bitcast i64* %num to i8*
  call void @llvm.lifetime.end(i64 8, i8* %340) #3
  %341 = bitcast i64* %Q20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #3
  %342 = bitcast i64* %Q11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #3
  %343 = bitcast i64* %Q10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #3
  %344 = bitcast i64* %Q02 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #3
  %345 = bitcast i64* %Q01 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #3
  %346 = bitcast i64* %Q00 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #3
  %347 = bitcast %struct.JQUANT_TBL** %quanttbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #3
  %348 = bitcast i32** %coef_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #3
  %349 = bitcast [64 x i16]* %workspace to i8*
  call void @llvm.lifetime.end(i64 128, i8* %349) #3
  %350 = bitcast i32* %last_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #3
  %351 = bitcast i32* %first_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #3
  %352 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %352) #3
  %353 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #3
  %354 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #3
  %355 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %355) #3
  %356 = bitcast [64 x i16]** %next_block_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %356) #3
  %357 = bitcast [64 x i16]** %prev_block_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #3
  %358 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #3
  %359 = bitcast [64 x i16]*** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #3
  %360 = bitcast i32* %access_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #3
  %361 = bitcast i32* %block_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #3
  %362 = bitcast i32* %block_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %362) #3
  %363 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #3
  %364 = bitcast i32* %last_block_column to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #3
  %365 = bitcast i32* %block_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #3
  %366 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #3
  %367 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %367) #3
  %368 = load i32, i32* %retval
  ret i32 %368

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @jcopy_block_row([64 x i16]*, [64 x i16]*, i32) #2

declare void @jzero_far(i8*, i64) #2

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
!15 = !{!9, !3, i64 544}
!16 = !{!17, !3, i64 0}
!17 = !{!"", !18, i64 0, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 56, !4, i64 136, !3, i64 216}
!18 = !{!"jpeg_d_coef_controller", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!19 = !{!17, !3, i64 16}
!20 = !{!17, !3, i64 216}
!21 = !{!9, !3, i64 296}
!22 = !{!9, !7, i64 48}
!23 = !{!24, !7, i64 12}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!25 = !{!9, !7, i64 304}
!26 = !{!13, !3, i64 40}
!27 = !{!24, !7, i64 28}
!28 = !{!24, !7, i64 8}
!29 = !{!24, !7, i64 32}
!30 = !{!17, !3, i64 8}
!31 = !{!17, !3, i64 24}
!32 = !{!17, !3, i64 32}
!33 = !{!13, !3, i64 8}
!34 = !{!9, !7, i64 168}
!35 = !{!9, !7, i64 96}
!36 = !{!9, !7, i64 176}
!37 = !{!9, !7, i64 416}
!38 = !{!13, !3, i64 64}
!39 = !{!24, !7, i64 4}
!40 = !{!17, !7, i64 44}
!41 = !{!17, !7, i64 48}
!42 = !{!17, !7, i64 40}
!43 = !{!9, !7, i64 456}
!44 = !{!24, !7, i64 52}
!45 = !{!24, !7, i64 56}
!46 = !{!9, !3, i64 576}
!47 = !{!48, !3, i64 8}
!48 = !{!"jpeg_entropy_decoder", !3, i64 0, !3, i64 8}
!49 = !{!9, !7, i64 400}
!50 = !{!9, !3, i64 560}
!51 = !{!52, !3, i64 24}
!52 = !{!"jpeg_input_controller", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !7, i64 32, !7, i64 36}
!53 = !{!9, !7, i64 164}
!54 = !{!9, !7, i64 172}
!55 = !{!52, !3, i64 0}
!56 = !{!24, !7, i64 48}
!57 = !{!9, !3, i64 584}
!58 = !{!24, !7, i64 36}
!59 = !{!9, !7, i64 464}
!60 = !{!24, !7, i64 60}
!61 = !{!24, !7, i64 68}
!62 = !{!24, !7, i64 64}
!63 = !{!24, !7, i64 72}
!64 = !{!9, !3, i64 184}
!65 = !{!24, !3, i64 80}
!66 = !{!11, !11, i64 0}
!67 = !{!52, !7, i64 36}
!68 = !{!9, !7, i64 508}
!69 = !{!14, !14, i64 0}
