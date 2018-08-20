; ModuleID = 'jcmainct.c'
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
%struct.my_main_controller = type { %struct.jpeg_c_main_controller, i32, i32, i32, i32, [10 x i8**] }

; Function Attrs: nounwind ssp uwtable
define void @jinit_c_main_controller(%struct.jpeg_compress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = bitcast %struct.jpeg_compress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 112)
  %8 = bitcast i8* %call to %struct.my_main_controller*
  store %struct.my_main_controller* %8, %struct.my_main_controller** %main, align 8, !tbaa !2
  %9 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %10 = bitcast %struct.my_main_controller* %9 to %struct.jpeg_c_main_controller*
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 52
  store %struct.jpeg_c_main_controller* %10, %struct.jpeg_c_main_controller** %main1, align 8, !tbaa !15
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_main, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !16
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 23
  %14 = load i32, i32* %raw_data_in, align 4, !tbaa !19
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %tobool2 = icmp ne i32 %15, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4, !tbaa !21
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = bitcast %struct.jpeg_compress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %if.end.8

if.else:                                          ; preds = %if.end
  store i32 0, i32* %ci, align 4, !tbaa !6
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 14
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !24
  store %struct.jpeg_component_info* %24, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %25 = load i32, i32* %ci, align 4, !tbaa !6
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 12
  %27 = load i32, i32* %num_components, align 4, !tbaa !25
  %cmp = icmp slt i32 %25, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 1
  %29 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8, !tbaa !8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %29, i32 0, i32 2
  %30 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !26
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 7
  %34 = load i32, i32* %width_in_blocks, align 4, !tbaa !27
  %mul = mul i32 %34, 8
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %35, i32 0, i32 3
  %36 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %mul6 = mul nsw i32 %36, 8
  %call7 = call i8** %30(%struct.jpeg_common_struct* %32, i32 1, i32 %mul, i32 %mul6)
  %37 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %38, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i64 %idxprom
  store i8** %call7, i8*** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.then.3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %41 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_main(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !30
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 52
  %2 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %main1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_c_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %main, align 8, !tbaa !2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 23
  %5 = load i32, i32* %raw_data_in, align 4, !tbaa !19
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %cur_iMCU_row = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %6, i32 0, i32 1
  store i32 0, i32* %cur_iMCU_row, align 4, !tbaa !31
  %7 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i32 0, i32 2
  store i32 0, i32* %rowgroup_ctr, align 4, !tbaa !32
  %8 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %suspended = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %8, i32 0, i32 3
  store i32 0, i32* %suspended, align 4, !tbaa !33
  %9 = load i32, i32* %pass_mode.addr, align 4, !tbaa !30
  %10 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %pass_mode2 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %10, i32 0, i32 4
  store i32 %9, i32* %pass_mode2, align 4, !tbaa !34
  %11 = load i32, i32* %pass_mode.addr, align 4, !tbaa !30
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 0
  %process_data = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %pub, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)** %process_data, align 8, !tbaa !35
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4, !tbaa !21
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %20 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @process_data_simple_main(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i32* %in_row_ctr, i32 %in_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %in_row_ctr.addr = alloca i32*, align 8
  %in_rows_avail.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i32* %in_row_ctr, i32** %in_row_ctr.addr, align 8, !tbaa !2
  store i32 %in_rows_avail, i32* %in_rows_avail.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 52
  %2 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %main1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_c_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %main, align 8, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %entry
  %4 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %cur_iMCU_row = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i32 0, i32 1
  %5 = load i32, i32* %cur_iMCU_row, align 4, !tbaa !31
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 40
  %7 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !36
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %8, i32 0, i32 2
  %9 = load i32, i32* %rowgroup_ctr, align 4, !tbaa !32
  %cmp2 = icmp ult i32 %9, 8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 53
  %11 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep, align 8, !tbaa !37
  %pre_process_data = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %11, i32 0, i32 1
  %12 = load void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %pre_process_data, align 8, !tbaa !38
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %14 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %15 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %16 = load i32, i32* %in_rows_avail.addr, align 4, !tbaa !6
  %17 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %17, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i32 0
  %18 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr3 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %18, i32 0, i32 2
  call void %12(%struct.jpeg_compress_struct* %13, i8** %14, i32* %15, i32 %16, i8*** %arraydecay, i32* %rowgroup_ctr3, i32 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr4 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %19, i32 0, i32 2
  %20 = load i32, i32* %rowgroup_ctr4, align 4, !tbaa !32
  %cmp5 = icmp ne i32 %20, 8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 54
  %22 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef, align 8, !tbaa !40
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %22, i32 0, i32 1
  %23 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8, !tbaa !41
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer8 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 5
  %arraydecay9 = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer8, i32 0, i32 0
  %call = call i32 %23(%struct.jpeg_compress_struct* %24, i8*** %arraydecay9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %26 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %suspended = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %26, i32 0, i32 3
  %27 = load i32, i32* %suspended, align 4, !tbaa !33
  %tobool11 = icmp ne i32 %27, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  %28 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %29 = load i32, i32* %28, align 4, !tbaa !6
  %dec = add i32 %29, -1
  store i32 %dec, i32* %28, align 4, !tbaa !6
  %30 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %suspended13 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %30, i32 0, i32 3
  store i32 1, i32* %suspended13, align 4, !tbaa !33
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.10
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.7
  %31 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %suspended16 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %31, i32 0, i32 3
  %32 = load i32, i32* %suspended16, align 4, !tbaa !33
  %tobool17 = icmp ne i32 %32, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %33 = load i32*, i32** %in_row_ctr.addr, align 8, !tbaa !2
  %34 = load i32, i32* %33, align 4, !tbaa !6
  %inc = add i32 %34, 1
  store i32 %inc, i32* %33, align 4, !tbaa !6
  %35 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %suspended19 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %35, i32 0, i32 3
  store i32 0, i32* %suspended19, align 4, !tbaa !33
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %36 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr21 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %36, i32 0, i32 2
  store i32 0, i32* %rowgroup_ctr21, align 4, !tbaa !32
  %37 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %cur_iMCU_row22 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %37, i32 0, i32 1
  %38 = load i32, i32* %cur_iMCU_row22, align 4, !tbaa !31
  %inc23 = add i32 %38, 1
  store i32 %inc23, i32* %cur_iMCU_row22, align 4, !tbaa !31
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.14, %if.then.6
  %39 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
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
!8 = !{!9, !3, i64 8}
!9 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !10, i64 56, !7, i64 64, !7, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !7, i64 232, !3, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !4, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !4, i64 284, !11, i64 286, !11, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !4, i64 320, !7, i64 352, !7, i64 356, !7, i64 360, !4, i64 364, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!10 = !{!"double", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!13, !3, i64 0}
!13 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!14 = !{!"long", !4, i64 0}
!15 = !{!9, !3, i64 432}
!16 = !{!17, !3, i64 0}
!17 = !{!"", !18, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !4, i64 28, !4, i64 32}
!18 = !{!"jpeg_c_main_controller", !3, i64 0, !3, i64 8}
!19 = !{!9, !7, i64 248}
!20 = !{!9, !3, i64 0}
!21 = !{!22, !7, i64 40}
!22 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !4, i64 44, !7, i64 124, !14, i64 128, !3, i64 136, !7, i64 144, !3, i64 152, !7, i64 160, !7, i64 164}
!23 = !{!22, !3, i64 0}
!24 = !{!9, !3, i64 80}
!25 = !{!9, !7, i64 68}
!26 = !{!13, !3, i64 16}
!27 = !{!28, !7, i64 28}
!28 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!29 = !{!28, !7, i64 12}
!30 = !{!4, !4, i64 0}
!31 = !{!17, !7, i64 16}
!32 = !{!17, !7, i64 20}
!33 = !{!17, !7, i64 24}
!34 = !{!17, !4, i64 28}
!35 = !{!17, !3, i64 8}
!36 = !{!9, !7, i64 312}
!37 = !{!9, !3, i64 440}
!38 = !{!39, !3, i64 8}
!39 = !{!"jpeg_c_prep_controller", !3, i64 0, !3, i64 8}
!40 = !{!9, !3, i64 448}
!41 = !{!42, !3, i64 8}
!42 = !{!"jpeg_c_coef_controller", !3, i64 0, !3, i64 8}
