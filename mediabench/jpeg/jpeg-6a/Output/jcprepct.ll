; ModuleID = 'jcprepct.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { {}*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x i8**], i32, i32, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_c_prep_controller(%struct.jpeg_compress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %prep = alloca %struct.my_prep_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #5
  %3 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4, !tbaa !12
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !15
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !16
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 0
  %13 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !17
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  %call = call i8* %13(%struct.jpeg_common_struct* %15, i32 1, i64 112)
  %16 = bitcast i8* %call to %struct.my_prep_controller*
  store %struct.my_prep_controller* %16, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %17 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %18 = bitcast %struct.my_prep_controller* %17 to %struct.jpeg_c_prep_controller*
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %prep2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 53
  store %struct.jpeg_c_prep_controller* %18, %struct.jpeg_c_prep_controller** %prep2, align 8, !tbaa !19
  %20 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %20, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_prep, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !20
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 57
  %22 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8, !tbaa !23
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %22, i32 0, i32 2
  %23 = load i32, i32* %need_context_rows, align 4, !tbaa !24
  %tobool3 = icmp ne i32 %23, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %24 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %24, i32 0, i32 0
  %pre_process_data = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %pub5, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* @pre_process_context, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %pre_process_data, align 8, !tbaa !26
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @create_context_buffer(%struct.jpeg_compress_struct* %25)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %26 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %pub6 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %26, i32 0, i32 0
  %pre_process_data7 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %pub6, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* @pre_process_data, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %pre_process_data7, align 8, !tbaa !26
  store i32 0, i32* %ci, align 4, !tbaa !6
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 14
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %28, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %29 = load i32, i32* %ci, align 4, !tbaa !6
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 12
  %31 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %29, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 1
  %33 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem8, align 8, !tbaa !16
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %33, i32 0, i32 2
  %34 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !29
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %36 = bitcast %struct.jpeg_compress_struct* %35 to %struct.jpeg_common_struct*
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 7
  %38 = load i32, i32* %width_in_blocks, align 4, !tbaa !30
  %conv = zext i32 %38 to i64
  %mul = mul nsw i64 %conv, 8
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 38
  %40 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !32
  %conv9 = sext i32 %40 to i64
  %mul10 = mul nsw i64 %mul, %conv9
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 2
  %42 = load i32, i32* %h_samp_factor, align 4, !tbaa !33
  %conv11 = sext i32 %42 to i64
  %div = sdiv i64 %mul10, %conv11
  %conv12 = trunc i64 %div to i32
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 39
  %44 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !34
  %call13 = call i8** %34(%struct.jpeg_common_struct* %36, i32 1, i32 %conv12, i32 %44)
  %45 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %45 to i64
  %46 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %46, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i64 %idxprom
  store i8** %call13, i8*** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.then.4
  %49 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #5
  %50 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #5
  %51 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #5
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_prep(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %prep = alloca %struct.my_prep_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !35
  %0 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 53
  %2 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8, !tbaa !19
  %3 = bitcast %struct.jpeg_c_prep_controller* %2 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %3, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %4 = load i32, i32* %pass_mode.addr, align 4, !tbaa !35
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4, !tbaa !12
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !15
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %11 = bitcast %struct.jpeg_compress_struct* %10 to %struct.jpeg_common_struct*
  call void %9(%struct.jpeg_common_struct* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 7
  %13 = load i32, i32* %image_height, align 4, !tbaa !36
  %14 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %14, i32 0, i32 2
  store i32 %13, i32* %rows_to_go, align 4, !tbaa !37
  %15 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %15, i32 0, i32 3
  store i32 0, i32* %next_buf_row, align 4, !tbaa !38
  %16 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %this_row_group = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %16, i32 0, i32 4
  store i32 0, i32* %this_row_group, align 4, !tbaa !39
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 39
  %18 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !34
  %mul = mul nsw i32 2, %18
  %19 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_stop = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %19, i32 0, i32 5
  store i32 %mul, i32* %next_buf_stop, align 4, !tbaa !40
  %20 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pre_process_context(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i32* %in_row_ctr, i32 %in_rows_avail, i8*** %output_buf, i32* %out_row_group_ctr, i32 %out_row_groups_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %in_row_ctr.addr = alloca i32*, align 8
  %in_rows_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8***, align 8
  %out_row_group_ctr.addr = alloca i32*, align 8
  %out_row_groups_avail.addr = alloca i32, align 4
  %prep = alloca %struct.my_prep_controller*, align 8
  %numrows = alloca i32, align 4
  %ci = alloca i32, align 4
  %buf_height = alloca i32, align 4
  %inrows = alloca i32, align 4
  %row = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i32* %in_row_ctr, i32** %in_row_ctr.addr, align 8, !tbaa !2
  store i32 %in_rows_avail, i32* %in_rows_avail.addr, align 4, !tbaa !6
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_group_ctr, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  store i32 %out_row_groups_avail, i32* %out_row_groups_avail.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 53
  %2 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8, !tbaa !19
  %3 = bitcast %struct.jpeg_c_prep_controller* %2 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %3, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %4 = bitcast i32* %numrows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #5
  %6 = bitcast i32* %buf_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #5
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 39
  %8 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !34
  %mul = mul nsw i32 %8, 3
  store i32 %mul, i32* %buf_height, align 4, !tbaa !6
  %9 = bitcast i32* %inrows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.75, %entry
  %10 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  %11 = load i32, i32* %10, align 4, !tbaa !6
  %12 = load i32, i32* %out_row_groups_avail.addr, align 4, !tbaa !6
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %14 = load i32, i32* %13, align 4, !tbaa !6
  %15 = load i32, i32* %in_rows_avail.addr, align 4, !tbaa !6
  %cmp2 = icmp ult i32 %14, %15
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %16 = load i32, i32* %in_rows_avail.addr, align 4, !tbaa !6
  %17 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %18 = load i32, i32* %17, align 4, !tbaa !6
  %sub = sub i32 %16, %18
  store i32 %sub, i32* %inrows, align 4, !tbaa !6
  %19 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_stop = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %19, i32 0, i32 5
  %20 = load i32, i32* %next_buf_stop, align 4, !tbaa !40
  %21 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %21, i32 0, i32 3
  %22 = load i32, i32* %next_buf_row, align 4, !tbaa !38
  %sub3 = sub nsw i32 %20, %22
  store i32 %sub3, i32* %numrows, align 4, !tbaa !6
  %23 = load i32, i32* %numrows, align 4, !tbaa !6
  %24 = load i32, i32* %inrows, align 4, !tbaa !6
  %cmp4 = icmp ult i32 %23, %24
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %25 = load i32, i32* %numrows, align 4, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %26 = load i32, i32* %inrows, align 4, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ]
  store i32 %cond, i32* %numrows, align 4, !tbaa !6
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 56
  %28 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert, align 8, !tbaa !41
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %28, i32 0, i32 1
  %29 = load void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert, align 8, !tbaa !42
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %31 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %32 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %33 = load i32, i32* %32, align 4, !tbaa !6
  %idx.ext = zext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %31, i64 %idx.ext
  %34 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %34, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i32 0
  %35 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row5 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %35, i32 0, i32 3
  %36 = load i32, i32* %next_buf_row5, align 4, !tbaa !38
  %37 = load i32, i32* %numrows, align 4, !tbaa !6
  call void %29(%struct.jpeg_compress_struct* %30, i8** %add.ptr, i8*** %arraydecay, i32 %36, i32 %37)
  %38 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %38, i32 0, i32 2
  %39 = load i32, i32* %rows_to_go, align 4, !tbaa !37
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 7
  %41 = load i32, i32* %image_height, align 4, !tbaa !36
  %cmp6 = icmp eq i32 %39, %41
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %cond.end
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.then.7
  %42 = load i32, i32* %ci, align 4, !tbaa !6
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 12
  %44 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp8 = icmp slt i32 %42, %44
  br i1 %cmp8, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %45 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #5
  store i32 1, i32* %row, align 4, !tbaa !6
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %46 = load i32, i32* %row, align 4, !tbaa !6
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 39
  %48 = load i32, i32* %max_v_samp_factor10, align 4, !tbaa !34
  %cmp11 = icmp sle i32 %46, %48
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %49 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf13 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %50, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf13, i32 0, i64 %idxprom
  %51 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %52 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom14 = sext i32 %52 to i64
  %53 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf15 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %53, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf15, i32 0, i64 %idxprom14
  %54 = load i8**, i8*** %arrayidx16, align 8, !tbaa !2
  %55 = load i32, i32* %row, align 4, !tbaa !6
  %sub17 = sub nsw i32 0, %55
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 6
  %57 = load i32, i32* %image_width, align 4, !tbaa !44
  call void @jcopy_sample_rows(i8** %51, i32 0, i8** %54, i32 %sub17, i32 1, i32 %57)
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %58 = load i32, i32* %row, align 4, !tbaa !6
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %row, align 4, !tbaa !6
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %59 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #5
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %60 = load i32, i32* %ci, align 4, !tbaa !6
  %inc19 = add nsw i32 %60, 1
  store i32 %inc19, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.20, %cond.end
  %61 = load i32, i32* %numrows, align 4, !tbaa !6
  %62 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %63 = load i32, i32* %62, align 4, !tbaa !6
  %add = add i32 %63, %61
  store i32 %add, i32* %62, align 4, !tbaa !6
  %64 = load i32, i32* %numrows, align 4, !tbaa !6
  %65 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row21 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %65, i32 0, i32 3
  %66 = load i32, i32* %next_buf_row21, align 4, !tbaa !38
  %add22 = add nsw i32 %66, %64
  store i32 %add22, i32* %next_buf_row21, align 4, !tbaa !38
  %67 = load i32, i32* %numrows, align 4, !tbaa !6
  %68 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %rows_to_go23 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %68, i32 0, i32 2
  %69 = load i32, i32* %rows_to_go23, align 4, !tbaa !37
  %sub24 = sub i32 %69, %67
  store i32 %sub24, i32* %rows_to_go23, align 4, !tbaa !37
  br label %if.end.49

if.else:                                          ; preds = %while.body
  %70 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %rows_to_go25 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %70, i32 0, i32 2
  %71 = load i32, i32* %rows_to_go25, align 4, !tbaa !37
  %cmp26 = icmp ne i32 %71, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  br label %while.end

if.end.28:                                        ; preds = %if.else
  %72 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row29 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %72, i32 0, i32 3
  %73 = load i32, i32* %next_buf_row29, align 4, !tbaa !38
  %74 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_stop30 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %74, i32 0, i32 5
  %75 = load i32, i32* %next_buf_stop30, align 4, !tbaa !40
  %cmp31 = icmp slt i32 %73, %75
  br i1 %cmp31, label %if.then.32, label %if.end.48

if.then.32:                                       ; preds = %if.end.28
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.43, %if.then.32
  %76 = load i32, i32* %ci, align 4, !tbaa !6
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 12
  %78 = load i32, i32* %num_components34, align 4, !tbaa !28
  %cmp35 = icmp slt i32 %76, %78
  br i1 %cmp35, label %for.body.36, label %for.end.45

for.body.36:                                      ; preds = %for.cond.33
  %79 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom37 = sext i32 %79 to i64
  %80 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf38 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %80, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf38, i32 0, i64 %idxprom37
  %81 = load i8**, i8*** %arrayidx39, align 8, !tbaa !2
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 6
  %83 = load i32, i32* %image_width40, align 4, !tbaa !44
  %84 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row41 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %84, i32 0, i32 3
  %85 = load i32, i32* %next_buf_row41, align 4, !tbaa !38
  %86 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_stop42 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %86, i32 0, i32 5
  %87 = load i32, i32* %next_buf_stop42, align 4, !tbaa !40
  call void @expand_bottom_edge(i8** %81, i32 %83, i32 %85, i32 %87)
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.36
  %88 = load i32, i32* %ci, align 4, !tbaa !6
  %inc44 = add nsw i32 %88, 1
  store i32 %inc44, i32* %ci, align 4, !tbaa !6
  br label %for.cond.33

for.end.45:                                       ; preds = %for.cond.33
  %89 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_stop46 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %89, i32 0, i32 5
  %90 = load i32, i32* %next_buf_stop46, align 4, !tbaa !40
  %91 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row47 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %91, i32 0, i32 3
  store i32 %90, i32* %next_buf_row47, align 4, !tbaa !38
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.45, %if.end.28
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end
  %92 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row50 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %92, i32 0, i32 3
  %93 = load i32, i32* %next_buf_row50, align 4, !tbaa !38
  %94 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_stop51 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %94, i32 0, i32 5
  %95 = load i32, i32* %next_buf_stop51, align 4, !tbaa !40
  %cmp52 = icmp eq i32 %93, %95
  br i1 %cmp52, label %if.then.53, label %if.end.75

if.then.53:                                       ; preds = %if.end.49
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %96, i32 0, i32 57
  %97 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8, !tbaa !23
  %downsample54 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %97, i32 0, i32 1
  %98 = load void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %downsample54, align 8, !tbaa !45
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %100 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf55 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %100, i32 0, i32 1
  %arraydecay56 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf55, i32 0, i32 0
  %101 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %this_row_group = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %101, i32 0, i32 4
  %102 = load i32, i32* %this_row_group, align 4, !tbaa !39
  %103 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %104 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  %105 = load i32, i32* %104, align 4, !tbaa !6
  call void %98(%struct.jpeg_compress_struct* %99, i8*** %arraydecay56, i32 %102, i8*** %103, i32 %105)
  %106 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  %107 = load i32, i32* %106, align 4, !tbaa !6
  %inc57 = add i32 %107, 1
  store i32 %inc57, i32* %106, align 4, !tbaa !6
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 39
  %109 = load i32, i32* %max_v_samp_factor58, align 4, !tbaa !34
  %110 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %this_row_group59 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %110, i32 0, i32 4
  %111 = load i32, i32* %this_row_group59, align 4, !tbaa !39
  %add60 = add nsw i32 %111, %109
  store i32 %add60, i32* %this_row_group59, align 4, !tbaa !39
  %112 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %this_row_group61 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %112, i32 0, i32 4
  %113 = load i32, i32* %this_row_group61, align 4, !tbaa !39
  %114 = load i32, i32* %buf_height, align 4, !tbaa !6
  %cmp62 = icmp sge i32 %113, %114
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.then.53
  %115 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %this_row_group64 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %115, i32 0, i32 4
  store i32 0, i32* %this_row_group64, align 4, !tbaa !39
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.then.53
  %116 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row66 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %116, i32 0, i32 3
  %117 = load i32, i32* %next_buf_row66, align 4, !tbaa !38
  %118 = load i32, i32* %buf_height, align 4, !tbaa !6
  %cmp67 = icmp sge i32 %117, %118
  br i1 %cmp67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.65
  %119 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row69 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %119, i32 0, i32 3
  store i32 0, i32* %next_buf_row69, align 4, !tbaa !38
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.65
  %120 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row71 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %120, i32 0, i32 3
  %121 = load i32, i32* %next_buf_row71, align 4, !tbaa !38
  %122 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %122, i32 0, i32 39
  %123 = load i32, i32* %max_v_samp_factor72, align 4, !tbaa !34
  %add73 = add nsw i32 %121, %123
  %124 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_stop74 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %124, i32 0, i32 5
  store i32 %add73, i32* %next_buf_stop74, align 4, !tbaa !40
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.70, %if.end.49
  br label %while.cond

while.end:                                        ; preds = %if.then.27, %while.cond
  %125 = bitcast i32* %inrows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #5
  %126 = bitcast i32* %buf_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #5
  %127 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #5
  %128 = bitcast i32* %numrows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #5
  %129 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @create_context_buffer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %prep = alloca %struct.my_prep_controller*, align 8
  %rgroup_height = alloca i32, align 4
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %true_buffer = alloca i8**, align 8
  %fake_buffer = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 53
  %2 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8, !tbaa !19
  %3 = bitcast %struct.jpeg_c_prep_controller* %2 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %3, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %4 = bitcast i32* %rgroup_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 39
  %6 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !34
  store i32 %6, i32* %rgroup_height, align 4, !tbaa !6
  %7 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #5
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #5
  %9 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #5
  %10 = bitcast i8*** %true_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #5
  %11 = bitcast i8*** %fake_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #5
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 1
  %13 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !16
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %13, i32 0, i32 0
  %14 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !17
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = bitcast %struct.jpeg_compress_struct* %15 to %struct.jpeg_common_struct*
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 12
  %18 = load i32, i32* %num_components, align 4, !tbaa !28
  %mul = mul nsw i32 %18, 5
  %19 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %mul2 = mul nsw i32 %mul, %19
  %conv = sext i32 %mul2 to i64
  %mul3 = mul i64 %conv, 8
  %call = call i8* %14(%struct.jpeg_common_struct* %16, i32 1, i64 %mul3)
  %20 = bitcast i8* %call to i8**
  store i8** %20, i8*** %fake_buffer, align 8, !tbaa !2
  store i32 0, i32* %ci, align 4, !tbaa !6
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 14
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %22, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %entry
  %23 = load i32, i32* %ci, align 4, !tbaa !6
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 12
  %25 = load i32, i32* %num_components4, align 4, !tbaa !28
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 1
  %27 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem6, align 8, !tbaa !16
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %27, i32 0, i32 2
  %28 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !29
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %30 = bitcast %struct.jpeg_compress_struct* %29 to %struct.jpeg_common_struct*
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 0, i32 7
  %32 = load i32, i32* %width_in_blocks, align 4, !tbaa !30
  %conv7 = zext i32 %32 to i64
  %mul8 = mul nsw i64 %conv7, 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 38
  %34 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !32
  %conv9 = sext i32 %34 to i64
  %mul10 = mul nsw i64 %mul8, %conv9
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %35, i32 0, i32 2
  %36 = load i32, i32* %h_samp_factor, align 4, !tbaa !33
  %conv11 = sext i32 %36 to i64
  %div = sdiv i64 %mul10, %conv11
  %conv12 = trunc i64 %div to i32
  %37 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %mul13 = mul nsw i32 3, %37
  %call14 = call i8** %28(%struct.jpeg_common_struct* %30, i32 1, i32 %conv12, i32 %mul13)
  store i8** %call14, i8*** %true_buffer, align 8, !tbaa !2
  %38 = load i8**, i8*** %fake_buffer, align 8, !tbaa !2
  %39 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %38, i64 %idx.ext
  %40 = bitcast i8** %add.ptr to i8*
  %41 = load i8**, i8*** %true_buffer, align 8, !tbaa !2
  %42 = bitcast i8** %41 to i8*
  %43 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %mul15 = mul nsw i32 3, %43
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  %44 = load i8**, i8*** %fake_buffer, align 8, !tbaa !2
  %45 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %idx.ext18 = sext i32 %45 to i64
  %add.ptr19 = getelementptr inbounds i8*, i8** %44, i64 %idx.ext18
  %46 = bitcast i8** %add.ptr19 to i8*
  %47 = call i64 @llvm.objectsize.i64.p0i8(i8* %46, i1 false)
  %call20 = call i8* @__memcpy_chk(i8* %40, i8* %42, i64 %mul17, i64 %47) #5
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body
  %48 = load i32, i32* %i, align 4, !tbaa !6
  %49 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %cmp22 = icmp slt i32 %48, %49
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %50 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %mul25 = mul nsw i32 2, %50
  %51 = load i32, i32* %i, align 4, !tbaa !6
  %add = add nsw i32 %mul25, %51
  %idxprom = sext i32 %add to i64
  %52 = load i8**, i8*** %true_buffer, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %52, i64 %idxprom
  %53 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %54 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom26 = sext i32 %54 to i64
  %55 = load i8**, i8*** %fake_buffer, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i8*, i8** %55, i64 %idxprom26
  store i8* %53, i8** %arrayidx27, align 8, !tbaa !2
  %56 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom28 = sext i32 %56 to i64
  %57 = load i8**, i8*** %true_buffer, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i8*, i8** %57, i64 %idxprom28
  %58 = load i8*, i8** %arrayidx29, align 8, !tbaa !2
  %59 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %mul30 = mul nsw i32 4, %59
  %60 = load i32, i32* %i, align 4, !tbaa !6
  %add31 = add nsw i32 %mul30, %60
  %idxprom32 = sext i32 %add31 to i64
  %61 = load i8**, i8*** %fake_buffer, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i8*, i8** %61, i64 %idxprom32
  store i8* %58, i8** %arrayidx33, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %62 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  %63 = load i8**, i8*** %fake_buffer, align 8, !tbaa !2
  %64 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %idx.ext34 = sext i32 %64 to i64
  %add.ptr35 = getelementptr inbounds i8*, i8** %63, i64 %idx.ext34
  %65 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom36 = sext i32 %65 to i64
  %66 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %66, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i64 %idxprom36
  store i8** %add.ptr35, i8*** %arrayidx37, align 8, !tbaa !2
  %67 = load i32, i32* %rgroup_height, align 4, !tbaa !6
  %mul38 = mul nsw i32 5, %67
  %68 = load i8**, i8*** %fake_buffer, align 8, !tbaa !2
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds i8*, i8** %68, i64 %idx.ext39
  store i8** %add.ptr40, i8*** %fake_buffer, align 8, !tbaa !2
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %69 = load i32, i32* %ci, align 4, !tbaa !6
  %inc42 = add nsw i32 %69, 1
  store i32 %inc42, i32* %ci, align 4, !tbaa !6
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %71 = bitcast i8*** %fake_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #5
  %72 = bitcast i8*** %true_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #5
  %73 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #5
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #5
  %75 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #5
  %76 = bitcast i32* %rgroup_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #5
  %77 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pre_process_data(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i32* %in_row_ctr, i32 %in_rows_avail, i8*** %output_buf, i32* %out_row_group_ctr, i32 %out_row_groups_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %in_row_ctr.addr = alloca i32*, align 8
  %in_rows_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8***, align 8
  %out_row_group_ctr.addr = alloca i32*, align 8
  %out_row_groups_avail.addr = alloca i32, align 4
  %prep = alloca %struct.my_prep_controller*, align 8
  %numrows = alloca i32, align 4
  %ci = alloca i32, align 4
  %inrows = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i32* %in_row_ctr, i32** %in_row_ctr.addr, align 8, !tbaa !2
  store i32 %in_rows_avail, i32* %in_rows_avail.addr, align 4, !tbaa !6
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_group_ctr, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  store i32 %out_row_groups_avail, i32* %out_row_groups_avail.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 53
  %2 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep1, align 8, !tbaa !19
  %3 = bitcast %struct.jpeg_c_prep_controller* %2 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %3, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %4 = bitcast i32* %numrows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #5
  %6 = bitcast i32* %inrows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #5
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %entry
  %8 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %9 = load i32, i32* %8, align 4, !tbaa !6
  %10 = load i32, i32* %in_rows_avail.addr, align 4, !tbaa !6
  %cmp = icmp ult i32 %9, %10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  %12 = load i32, i32* %11, align 4, !tbaa !6
  %13 = load i32, i32* %out_row_groups_avail.addr, align 4, !tbaa !6
  %cmp2 = icmp ult i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %in_rows_avail.addr, align 4, !tbaa !6
  %16 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %17 = load i32, i32* %16, align 4, !tbaa !6
  %sub = sub i32 %15, %17
  store i32 %sub, i32* %inrows, align 4, !tbaa !6
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 39
  %19 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !34
  %20 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %20, i32 0, i32 3
  %21 = load i32, i32* %next_buf_row, align 4, !tbaa !38
  %sub3 = sub nsw i32 %19, %21
  store i32 %sub3, i32* %numrows, align 4, !tbaa !6
  %22 = load i32, i32* %numrows, align 4, !tbaa !6
  %23 = load i32, i32* %inrows, align 4, !tbaa !6
  %cmp4 = icmp ult i32 %22, %23
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %24 = load i32, i32* %numrows, align 4, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %25 = load i32, i32* %inrows, align 4, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, i32* %numrows, align 4, !tbaa !6
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 56
  %27 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert, align 8, !tbaa !41
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %27, i32 0, i32 1
  %28 = load void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert, align 8, !tbaa !42
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %30 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %31 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %32 = load i32, i32* %31, align 4, !tbaa !6
  %idx.ext = zext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %30, i64 %idx.ext
  %33 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %33, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i32 0
  %34 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row5 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %34, i32 0, i32 3
  %35 = load i32, i32* %next_buf_row5, align 4, !tbaa !38
  %36 = load i32, i32* %numrows, align 4, !tbaa !6
  call void %28(%struct.jpeg_compress_struct* %29, i8** %add.ptr, i8*** %arraydecay, i32 %35, i32 %36)
  %37 = load i32, i32* %numrows, align 4, !tbaa !6
  %38 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %39 = load i32, i32* %38, align 4, !tbaa !6
  %add = add i32 %39, %37
  store i32 %add, i32* %38, align 4, !tbaa !6
  %40 = load i32, i32* %numrows, align 4, !tbaa !6
  %41 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row6 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %41, i32 0, i32 3
  %42 = load i32, i32* %next_buf_row6, align 4, !tbaa !38
  %add7 = add nsw i32 %42, %40
  store i32 %add7, i32* %next_buf_row6, align 4, !tbaa !38
  %43 = load i32, i32* %numrows, align 4, !tbaa !6
  %44 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %44, i32 0, i32 2
  %45 = load i32, i32* %rows_to_go, align 4, !tbaa !37
  %sub8 = sub i32 %45, %43
  store i32 %sub8, i32* %rows_to_go, align 4, !tbaa !37
  %46 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %rows_to_go9 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %46, i32 0, i32 2
  %47 = load i32, i32* %rows_to_go9, align 4, !tbaa !37
  %cmp10 = icmp eq i32 %47, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %48 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row11 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %48, i32 0, i32 3
  %49 = load i32, i32* %next_buf_row11, align 4, !tbaa !38
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 39
  %51 = load i32, i32* %max_v_samp_factor12, align 4, !tbaa !34
  %cmp13 = icmp slt i32 %49, %51
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %52 = load i32, i32* %ci, align 4, !tbaa !6
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 12
  %54 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp14 = icmp slt i32 %52, %54
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %55 to i64
  %56 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf15 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %56, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf15, i32 0, i64 %idxprom
  %57 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 6
  %59 = load i32, i32* %image_width, align 4, !tbaa !44
  %60 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row16 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %60, i32 0, i32 3
  %61 = load i32, i32* %next_buf_row16, align 4, !tbaa !38
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 39
  %63 = load i32, i32* %max_v_samp_factor17, align 4, !tbaa !34
  call void @expand_bottom_edge(i8** %57, i32 %59, i32 %61, i32 %63)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 39
  %66 = load i32, i32* %max_v_samp_factor18, align 4, !tbaa !34
  %67 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row19 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %67, i32 0, i32 3
  store i32 %66, i32* %next_buf_row19, align 4, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %cond.end
  %68 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row20 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %68, i32 0, i32 3
  %69 = load i32, i32* %next_buf_row20, align 4, !tbaa !38
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 39
  %71 = load i32, i32* %max_v_samp_factor21, align 4, !tbaa !34
  %cmp22 = icmp eq i32 %69, %71
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 57
  %73 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8, !tbaa !23
  %downsample24 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %73, i32 0, i32 1
  %74 = load void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %downsample24, align 8, !tbaa !45
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %76 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %color_buf25 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %76, i32 0, i32 1
  %arraydecay26 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf25, i32 0, i32 0
  %77 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %78 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  %79 = load i32, i32* %78, align 4, !tbaa !6
  call void %74(%struct.jpeg_compress_struct* %75, i8*** %arraydecay26, i32 0, i8*** %77, i32 %79)
  %80 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %next_buf_row27 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %80, i32 0, i32 3
  store i32 0, i32* %next_buf_row27, align 4, !tbaa !38
  %81 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  %82 = load i32, i32* %81, align 4, !tbaa !6
  %inc28 = add i32 %82, 1
  store i32 %inc28, i32* %81, align 4, !tbaa !6
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %if.end
  %83 = load %struct.my_prep_controller*, %struct.my_prep_controller** %prep, align 8, !tbaa !2
  %rows_to_go30 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %83, i32 0, i32 2
  %84 = load i32, i32* %rows_to_go30, align 4, !tbaa !37
  %cmp31 = icmp eq i32 %84, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.47

land.lhs.true.32:                                 ; preds = %if.end.29
  %85 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  %86 = load i32, i32* %85, align 4, !tbaa !6
  %87 = load i32, i32* %out_row_groups_avail.addr, align 4, !tbaa !6
  %cmp33 = icmp ult i32 %86, %87
  br i1 %cmp33, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %land.lhs.true.32
  store i32 0, i32* %ci, align 4, !tbaa !6
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 14
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %89, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %if.then.34
  %90 = load i32, i32* %ci, align 4, !tbaa !6
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 12
  %92 = load i32, i32* %num_components36, align 4, !tbaa !28
  %cmp37 = icmp slt i32 %90, %92
  br i1 %cmp37, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.35
  %93 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom39 = sext i32 %93 to i64
  %94 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i8**, i8*** %94, i64 %idxprom39
  %95 = load i8**, i8*** %arrayidx40, align 8, !tbaa !2
  %96 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %96, i32 0, i32 7
  %97 = load i32, i32* %width_in_blocks, align 4, !tbaa !30
  %mul = mul i32 %97, 8
  %98 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  %99 = load i32, i32* %98, align 4, !tbaa !6
  %100 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i32 0, i32 3
  %101 = load i32, i32* %v_samp_factor, align 4, !tbaa !46
  %mul41 = mul i32 %99, %101
  %102 = load i32, i32* %out_row_groups_avail.addr, align 4, !tbaa !6
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 3
  %104 = load i32, i32* %v_samp_factor42, align 4, !tbaa !46
  %mul43 = mul i32 %102, %104
  call void @expand_bottom_edge(i8** %95, i32 %mul, i32 %mul41, i32 %mul43)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.38
  %105 = load i32, i32* %ci, align 4, !tbaa !6
  %inc45 = add nsw i32 %105, 1
  store i32 %inc45, i32* %ci, align 4, !tbaa !6
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  %107 = load i32, i32* %out_row_groups_avail.addr, align 4, !tbaa !6
  %108 = load i32*, i32** %out_row_group_ctr.addr, align 8, !tbaa !2
  store i32 %107, i32* %108, align 4, !tbaa !6
  br label %while.end

if.end.47:                                        ; preds = %land.lhs.true.32, %if.end.29
  br label %while.cond

while.end:                                        ; preds = %for.end.46, %land.end
  %109 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #5
  %110 = bitcast i32* %inrows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #5
  %111 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #5
  %112 = bitcast i32* %numrows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #5
  %113 = bitcast %struct.my_prep_controller** %prep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #5
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #2

; Function Attrs: nounwind ssp uwtable
define internal void @expand_bottom_edge(i8** %image_data, i32 %num_cols, i32 %input_rows, i32 %output_rows) #0 {
entry:
  %image_data.addr = alloca i8**, align 8
  %num_cols.addr = alloca i32, align 4
  %input_rows.addr = alloca i32, align 4
  %output_rows.addr = alloca i32, align 4
  %row = alloca i32, align 4
  store i8** %image_data, i8*** %image_data.addr, align 8, !tbaa !2
  store i32 %num_cols, i32* %num_cols.addr, align 4, !tbaa !6
  store i32 %input_rows, i32* %input_rows.addr, align 4, !tbaa !6
  store i32 %output_rows, i32* %output_rows.addr, align 4, !tbaa !6
  %0 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = load i32, i32* %input_rows.addr, align 4, !tbaa !6
  store i32 %1, i32* %row, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %row, align 4, !tbaa !6
  %3 = load i32, i32* %output_rows.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %image_data.addr, align 8, !tbaa !2
  %5 = load i32, i32* %input_rows.addr, align 4, !tbaa !6
  %sub = sub nsw i32 %5, 1
  %6 = load i8**, i8*** %image_data.addr, align 8, !tbaa !2
  %7 = load i32, i32* %row, align 4, !tbaa !6
  %8 = load i32, i32* %num_cols.addr, align 4, !tbaa !6
  call void @jcopy_sample_rows(i8** %4, i32 %sub, i8** %6, i32 %7, i32 1, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %row, align 4, !tbaa !6
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %row, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #5
  ret void
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

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
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 0}
!9 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !10, i64 56, !7, i64 64, !7, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !7, i64 232, !3, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !4, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !4, i64 284, !11, i64 286, !11, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !4, i64 320, !7, i64 352, !7, i64 356, !7, i64 360, !4, i64 364, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!10 = !{!"double", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!13, !7, i64 40}
!13 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !4, i64 44, !7, i64 124, !14, i64 128, !3, i64 136, !7, i64 144, !3, i64 152, !7, i64 160, !7, i64 164}
!14 = !{!"long", !4, i64 0}
!15 = !{!13, !3, i64 0}
!16 = !{!9, !3, i64 8}
!17 = !{!18, !3, i64 0}
!18 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!19 = !{!9, !3, i64 440}
!20 = !{!21, !3, i64 0}
!21 = !{!"", !22, i64 0, !4, i64 16, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108}
!22 = !{!"jpeg_c_prep_controller", !3, i64 0, !3, i64 8}
!23 = !{!9, !3, i64 472}
!24 = !{!25, !7, i64 16}
!25 = !{!"jpeg_downsampler", !3, i64 0, !3, i64 8, !7, i64 16}
!26 = !{!21, !3, i64 8}
!27 = !{!9, !3, i64 80}
!28 = !{!9, !7, i64 68}
!29 = !{!18, !3, i64 16}
!30 = !{!31, !7, i64 28}
!31 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!32 = !{!9, !7, i64 304}
!33 = !{!31, !7, i64 8}
!34 = !{!9, !7, i64 308}
!35 = !{!4, !4, i64 0}
!36 = !{!9, !7, i64 44}
!37 = !{!21, !7, i64 96}
!38 = !{!21, !7, i64 100}
!39 = !{!21, !7, i64 104}
!40 = !{!21, !7, i64 108}
!41 = !{!9, !3, i64 464}
!42 = !{!43, !3, i64 8}
!43 = !{!"jpeg_color_converter", !3, i64 0, !3, i64 8}
!44 = !{!9, !7, i64 40}
!45 = !{!25, !3, i64 8}
!46 = !{!31, !7, i64 12}
