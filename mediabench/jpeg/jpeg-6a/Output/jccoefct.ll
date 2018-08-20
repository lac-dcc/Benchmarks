; ModuleID = 'jccoefct.c'
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
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x [64 x i16]*], [10 x %struct.jvirt_barray_control*] }

; Function Attrs: nounwind ssp uwtable
define void @jinit_c_coef_controller(%struct.jpeg_compress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buffer = alloca [64 x i16]*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 192)
  %6 = bitcast i8* %call to %struct.my_coef_controller*
  store %struct.my_coef_controller* %6, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %8 = bitcast %struct.my_coef_controller* %7 to %struct.jpeg_c_coef_controller*
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 54
  store %struct.jpeg_c_coef_controller* %8, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !15
  %10 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_coef, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !16
  %11 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  store i32 0, i32* %ci, align 4, !tbaa !6
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 14
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !19
  store %struct.jpeg_component_info* %15, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load i32, i32* %ci, align 4, !tbaa !6
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 12
  %18 = load i32, i32* %num_components, align 4, !tbaa !20
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 1
  %20 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem2, align 8, !tbaa !8
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %20, i32 0, i32 5
  %21 = load %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_barray, align 8, !tbaa !21
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 7
  %25 = load i32, i32* %width_in_blocks, align 4, !tbaa !22
  %conv = zext i32 %25 to i64
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 2
  %27 = load i32, i32* %h_samp_factor, align 4, !tbaa !24
  %conv3 = sext i32 %27 to i64
  %call4 = call i64 @jround_up(i64 %conv, i64 %conv3)
  %conv5 = trunc i64 %call4 to i32
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 8
  %29 = load i32, i32* %height_in_blocks, align 4, !tbaa !25
  %conv6 = zext i32 %29 to i64
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 3
  %31 = load i32, i32* %v_samp_factor, align 4, !tbaa !26
  %conv7 = sext i32 %31 to i64
  %call8 = call i64 @jround_up(i64 %conv6, i64 %conv7)
  %conv9 = trunc i64 %call8 to i32
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 3
  %33 = load i32, i32* %v_samp_factor10, align 4, !tbaa !26
  %call11 = call %struct.jvirt_barray_control* %21(%struct.jpeg_common_struct* %23, i32 1, i32 0, i32 %conv5, i32 %conv9, i32 %33)
  %34 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %35, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  store %struct.jvirt_barray_control* %call11, %struct.jvirt_barray_control** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #3
  %39 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %40 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #3
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #3
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 1
  %43 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem12, align 8, !tbaa !8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %43, i32 0, i32 1
  %44 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !27
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %46 = bitcast %struct.jpeg_compress_struct* %45 to %struct.jpeg_common_struct*
  %call13 = call i8* %44(%struct.jpeg_common_struct* %46, i32 1, i64 1280)
  %47 = bitcast i8* %call13 to [64 x i16]*
  store [64 x i16]* %47, [64 x i16]** %buffer, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.20, %if.else
  %48 = load i32, i32* %i, align 4, !tbaa !6
  %cmp15 = icmp slt i32 %48, 10
  br i1 %cmp15, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.14
  %49 = load [64 x i16]*, [64 x i16]** %buffer, align 8, !tbaa !2
  %50 = load i32, i32* %i, align 4, !tbaa !6
  %idx.ext = sext i32 %50 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %49, i64 %idx.ext
  %51 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom18 = sext i32 %51 to i64
  %52 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %52, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom18
  store [64 x i16]* %add.ptr, [64 x i16]** %arrayidx19, align 8, !tbaa !2
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %53 = load i32, i32* %i, align 4, !tbaa !6
  %inc21 = add nsw i32 %53, 1
  store i32 %inc21, i32* %i, align 4, !tbaa !6
  br label %for.cond.14

for.end.22:                                       ; preds = %for.cond.14
  %54 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image23 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %54, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image23, i32 0, i64 0
  store %struct.jvirt_barray_control* null, %struct.jvirt_barray_control** %arrayidx24, align 8, !tbaa !2
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #3
  %56 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #3
  br label %if.end

if.end:                                           ; preds = %for.end.22, %for.end
  %57 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_coef(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !28
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 54
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i32 0, i32 1
  store i32 0, i32* %iMCU_row_num, align 4, !tbaa !29
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %5)
  %6 = load i32, i32* %pass_mode.addr, align 4, !tbaa !28
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.3
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 0
  %8 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8, !tbaa !2
  %cmp = icmp ne %struct.jvirt_barray_control* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !30
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4, !tbaa !31
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !30
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !33
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %16 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %16, i32 0, i32 0
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_data, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8, !tbaa !34
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %17 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %17, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image4, i32 0, i64 0
  %18 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx5, align 8, !tbaa !2
  %cmp6 = icmp eq %struct.jvirt_barray_control* %18, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %sw.bb.3
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !30
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 4, i32* %msg_code9, align 4, !tbaa !31
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !30
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8, !tbaa !33
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = bitcast %struct.jpeg_compress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %sw.bb.3
  %26 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub13 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %26, i32 0, i32 0
  %compress_data14 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub13, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_first_pass, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data14, align 8, !tbaa !34
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %27 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image16 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %27, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image16, i32 0, i64 0
  %28 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx17, align 8, !tbaa !2
  %cmp18 = icmp eq %struct.jvirt_barray_control* %28, null
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %sw.bb.15
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !30
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 5
  store i32 4, i32* %msg_code21, align 4, !tbaa !31
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !30
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 0
  %33 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit23, align 8, !tbaa !33
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %35 = bitcast %struct.jpeg_compress_struct* %34 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* %35)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %sw.bb.15
  %36 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub25 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %36, i32 0, i32 0
  %compress_data26 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub25, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_output, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data26, align 8, !tbaa !34
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !30
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 5
  store i32 4, i32* %msg_code28, align 4, !tbaa !31
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8, !tbaa !30
  %error_exit30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 0
  %41 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit30, align 8, !tbaa !33
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %43 = bitcast %struct.jpeg_compress_struct* %42 to %struct.jpeg_common_struct*
  call void %41(%struct.jpeg_common_struct* %43)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.24, %if.end.12, %if.end
  %44 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #3
  ret void
}

declare i64 @jround_up(i64, i64) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_iMCU_row(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 54
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 41
  %5 = load i32, i32* %comps_in_scan, align 4, !tbaa !35
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i32 0, i32 4
  store i32 1, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !36
  br label %if.end.9

if.else:                                          ; preds = %entry
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i32 0, i32 1
  %8 = load i32, i32* %iMCU_row_num, align 4, !tbaa !29
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 40
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !37
  %sub = sub i32 %10, 1
  %cmp2 = icmp ult i32 %8, %sub
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 3
  %13 = load i32, i32* %v_samp_factor, align 4, !tbaa !26
  %14 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %14, i32 0, i32 4
  store i32 %13, i32* %MCU_rows_per_iMCU_row4, align 4, !tbaa !36
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 42
  %arrayidx7 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info6, i32 0, i64 0
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx7, align 8, !tbaa !2
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 18
  %17 = load i32, i32* %last_row_height, align 4, !tbaa !38
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 4
  store i32 %17, i32* %MCU_rows_per_iMCU_row8, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %19 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %19, i32 0, i32 2
  store i32 0, i32* %mcu_ctr, align 4, !tbaa !39
  %20 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %20, i32 0, i32 3
  store i32 0, i32* %MCU_vert_offset, align 4, !tbaa !40
  %21 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_data(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %bi = alloca i32, align 4
  %ci = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %blockcnt = alloca i32, align 4
  %ypos = alloca i32, align 4
  %xpos = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 54
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 43
  %7 = load i32, i32* %MCUs_per_row, align 4, !tbaa !41
  %sub = sub i32 %7, 1
  store i32 %sub, i32* %last_MCU_col, align 4, !tbaa !6
  %8 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 40
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !37
  %sub2 = sub i32 %10, 1
  store i32 %sub2, i32* %last_iMCU_row, align 4, !tbaa !6
  %11 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = bitcast i32* %blockcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = bitcast i32* %ypos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #3
  %18 = bitcast i32* %xpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %20, i32 0, i32 3
  %21 = load i32, i32* %MCU_vert_offset, align 4, !tbaa !40
  store i32 %21, i32* %yoffset, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %entry
  %22 = load i32, i32* %yoffset, align 4, !tbaa !6
  %23 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %23, i32 0, i32 4
  %24 = load i32, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !36
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %25 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %25, i32 0, i32 2
  %26 = load i32, i32* %mcu_ctr, align 4, !tbaa !39
  store i32 %26, i32* %MCU_col_num, align 4, !tbaa !6
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.89, %for.body
  %27 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %28 = load i32, i32* %last_MCU_col, align 4, !tbaa !6
  %cmp4 = icmp ule i32 %27, %28
  br i1 %cmp4, label %for.body.5, label %for.end.91

for.body.5:                                       ; preds = %for.cond.3
  store i32 0, i32* %blkn, align 4, !tbaa !6
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.81, %for.body.5
  %29 = load i32, i32* %ci, align 4, !tbaa !6
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 41
  %31 = load i32, i32* %comps_in_scan, align 4, !tbaa !35
  %cmp7 = icmp slt i32 %29, %31
  br i1 %cmp7, label %for.body.8, label %for.end.83

for.body.8:                                       ; preds = %for.cond.6
  %32 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %34, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %35 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %36 = load i32, i32* %last_MCU_col, align 4, !tbaa !6
  %cmp9 = icmp ult i32 %35, %36
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.8
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 13
  %38 = load i32, i32* %MCU_width, align 4, !tbaa !42
  br label %cond.end

cond.false:                                       ; preds = %for.body.8
  %39 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i32 0, i32 17
  %40 = load i32, i32* %last_col_width, align 4, !tbaa !43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %40, %cond.false ]
  store i32 %cond, i32* %blockcnt, align 4, !tbaa !6
  %41 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 16
  %43 = load i32, i32* %MCU_sample_width, align 4, !tbaa !44
  %mul = mul i32 %41, %43
  store i32 %mul, i32* %xpos, align 4, !tbaa !6
  %44 = load i32, i32* %yoffset, align 4, !tbaa !6
  %mul10 = mul nsw i32 %44, 8
  store i32 %mul10, i32* %ypos, align 4, !tbaa !6
  store i32 0, i32* %yindex, align 4, !tbaa !6
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.78, %cond.end
  %45 = load i32, i32* %yindex, align 4, !tbaa !6
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 14
  %47 = load i32, i32* %MCU_height, align 4, !tbaa !45
  %cmp12 = icmp slt i32 %45, %47
  br i1 %cmp12, label %for.body.13, label %for.end.80

for.body.13:                                      ; preds = %for.cond.11
  %48 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %48, i32 0, i32 1
  %49 = load i32, i32* %iMCU_row_num, align 4, !tbaa !29
  %50 = load i32, i32* %last_iMCU_row, align 4, !tbaa !6
  %cmp14 = icmp ult i32 %49, %50
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.13
  %51 = load i32, i32* %yoffset, align 4, !tbaa !6
  %52 = load i32, i32* %yindex, align 4, !tbaa !6
  %add = add nsw i32 %51, %52
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i32 0, i32 18
  %54 = load i32, i32* %last_row_height, align 4, !tbaa !38
  %cmp15 = icmp slt i32 %add, %54
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body.13
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 58
  %56 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct, align 8, !tbaa !46
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %56, i32 0, i32 1
  %57 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT, align 8, !tbaa !47
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %60 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom16 = sext i32 %60 to i64
  %61 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i8**, i8*** %61, i64 %idxprom16
  %62 = load i8**, i8*** %arrayidx17, align 8, !tbaa !2
  %63 = load i32, i32* %blkn, align 4, !tbaa !6
  %idxprom18 = sext i32 %63 to i64
  %64 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %64, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom18
  %65 = load [64 x i16]*, [64 x i16]** %arrayidx19, align 8, !tbaa !2
  %66 = load i32, i32* %ypos, align 4, !tbaa !6
  %67 = load i32, i32* %xpos, align 4, !tbaa !6
  %68 = load i32, i32* %blockcnt, align 4, !tbaa !6
  call void %57(%struct.jpeg_compress_struct* %58, %struct.jpeg_component_info* %59, i8** %62, [64 x i16]* %65, i32 %66, i32 %67, i32 %68)
  %69 = load i32, i32* %blockcnt, align 4, !tbaa !6
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 0, i32 13
  %71 = load i32, i32* %MCU_width20, align 4, !tbaa !42
  %cmp21 = icmp slt i32 %69, %71
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  %72 = load i32, i32* %blkn, align 4, !tbaa !6
  %73 = load i32, i32* %blockcnt, align 4, !tbaa !6
  %add23 = add nsw i32 %72, %73
  %idxprom24 = sext i32 %add23 to i64
  %74 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer25 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %74, i32 0, i32 5
  %arrayidx26 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer25, i32 0, i64 %idxprom24
  %75 = load [64 x i16]*, [64 x i16]** %arrayidx26, align 8, !tbaa !2
  %76 = bitcast [64 x i16]* %75 to i8*
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width27 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 13
  %78 = load i32, i32* %MCU_width27, align 4, !tbaa !42
  %79 = load i32, i32* %blockcnt, align 4, !tbaa !6
  %sub28 = sub nsw i32 %78, %79
  %conv = sext i32 %sub28 to i64
  %mul29 = mul i64 %conv, 128
  call void @jzero_far(i8* %76, i64 %mul29)
  %80 = load i32, i32* %blockcnt, align 4, !tbaa !6
  store i32 %80, i32* %bi, align 4, !tbaa !6
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.22
  %81 = load i32, i32* %bi, align 4, !tbaa !6
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %82, i32 0, i32 13
  %83 = load i32, i32* %MCU_width31, align 4, !tbaa !42
  %cmp32 = icmp slt i32 %81, %83
  br i1 %cmp32, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.30
  %84 = load i32, i32* %blkn, align 4, !tbaa !6
  %85 = load i32, i32* %bi, align 4, !tbaa !6
  %add35 = add nsw i32 %84, %85
  %sub36 = sub nsw i32 %add35, 1
  %idxprom37 = sext i32 %sub36 to i64
  %86 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer38 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %86, i32 0, i32 5
  %arrayidx39 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer38, i32 0, i64 %idxprom37
  %87 = load [64 x i16]*, [64 x i16]** %arrayidx39, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds [64 x i16], [64 x i16]* %87, i64 0
  %arrayidx41 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx40, i32 0, i64 0
  %88 = load i16, i16* %arrayidx41, align 2, !tbaa !49
  %89 = load i32, i32* %blkn, align 4, !tbaa !6
  %90 = load i32, i32* %bi, align 4, !tbaa !6
  %add42 = add nsw i32 %89, %90
  %idxprom43 = sext i32 %add42 to i64
  %91 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %91, i32 0, i32 5
  %arrayidx45 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer44, i32 0, i64 %idxprom43
  %92 = load [64 x i16]*, [64 x i16]** %arrayidx45, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds [64 x i16], [64 x i16]* %92, i64 0
  %arrayidx47 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx46, i32 0, i64 0
  store i16 %88, i16* %arrayidx47, align 2, !tbaa !49
  br label %for.inc

for.inc:                                          ; preds = %for.body.34
  %93 = load i32, i32* %bi, align 4, !tbaa !6
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %bi, align 4, !tbaa !6
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.74

if.else:                                          ; preds = %lor.lhs.false
  %94 = load i32, i32* %blkn, align 4, !tbaa !6
  %idxprom48 = sext i32 %94 to i64
  %95 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer49 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %95, i32 0, i32 5
  %arrayidx50 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer49, i32 0, i64 %idxprom48
  %96 = load [64 x i16]*, [64 x i16]** %arrayidx50, align 8, !tbaa !2
  %97 = bitcast [64 x i16]* %96 to i8*
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %98, i32 0, i32 13
  %99 = load i32, i32* %MCU_width51, align 4, !tbaa !42
  %conv52 = sext i32 %99 to i64
  %mul53 = mul i64 %conv52, 128
  call void @jzero_far(i8* %97, i64 %mul53)
  store i32 0, i32* %bi, align 4, !tbaa !6
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.71, %if.else
  %100 = load i32, i32* %bi, align 4, !tbaa !6
  %101 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %101, i32 0, i32 13
  %102 = load i32, i32* %MCU_width55, align 4, !tbaa !42
  %cmp56 = icmp slt i32 %100, %102
  br i1 %cmp56, label %for.body.58, label %for.end.73

for.body.58:                                      ; preds = %for.cond.54
  %103 = load i32, i32* %blkn, align 4, !tbaa !6
  %sub59 = sub nsw i32 %103, 1
  %idxprom60 = sext i32 %sub59 to i64
  %104 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer61 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %104, i32 0, i32 5
  %arrayidx62 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer61, i32 0, i64 %idxprom60
  %105 = load [64 x i16]*, [64 x i16]** %arrayidx62, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds [64 x i16], [64 x i16]* %105, i64 0
  %arrayidx64 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx63, i32 0, i64 0
  %106 = load i16, i16* %arrayidx64, align 2, !tbaa !49
  %107 = load i32, i32* %blkn, align 4, !tbaa !6
  %108 = load i32, i32* %bi, align 4, !tbaa !6
  %add65 = add nsw i32 %107, %108
  %idxprom66 = sext i32 %add65 to i64
  %109 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer67 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %109, i32 0, i32 5
  %arrayidx68 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer67, i32 0, i64 %idxprom66
  %110 = load [64 x i16]*, [64 x i16]** %arrayidx68, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds [64 x i16], [64 x i16]* %110, i64 0
  %arrayidx70 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx69, i32 0, i64 0
  store i16 %106, i16* %arrayidx70, align 2, !tbaa !49
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.58
  %111 = load i32, i32* %bi, align 4, !tbaa !6
  %inc72 = add nsw i32 %111, 1
  store i32 %inc72, i32* %bi, align 4, !tbaa !6
  br label %for.cond.54

for.end.73:                                       ; preds = %for.cond.54
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %if.end
  %112 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width75 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %112, i32 0, i32 13
  %113 = load i32, i32* %MCU_width75, align 4, !tbaa !42
  %114 = load i32, i32* %blkn, align 4, !tbaa !6
  %add76 = add nsw i32 %114, %113
  store i32 %add76, i32* %blkn, align 4, !tbaa !6
  %115 = load i32, i32* %ypos, align 4, !tbaa !6
  %add77 = add i32 %115, 8
  store i32 %add77, i32* %ypos, align 4, !tbaa !6
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.74
  %116 = load i32, i32* %yindex, align 4, !tbaa !6
  %inc79 = add nsw i32 %116, 1
  store i32 %inc79, i32* %yindex, align 4, !tbaa !6
  br label %for.cond.11

for.end.80:                                       ; preds = %for.cond.11
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.80
  %117 = load i32, i32* %ci, align 4, !tbaa !6
  %inc82 = add nsw i32 %117, 1
  store i32 %inc82, i32* %ci, align 4, !tbaa !6
  br label %for.cond.6

for.end.83:                                       ; preds = %for.cond.6
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 59
  %119 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !50
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %119, i32 0, i32 1
  %120 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8, !tbaa !51
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %122 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer84 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %122, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer84, i32 0, i32 0
  %call = call i32 %120(%struct.jpeg_compress_struct* %121, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.88, label %if.then.85

if.then.85:                                       ; preds = %for.end.83
  %123 = load i32, i32* %yoffset, align 4, !tbaa !6
  %124 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset86 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %124, i32 0, i32 3
  store i32 %123, i32* %MCU_vert_offset86, align 4, !tbaa !40
  %125 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %126 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr87 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %126, i32 0, i32 2
  store i32 %125, i32* %mcu_ctr87, align 4, !tbaa !39
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.88:                                        ; preds = %for.end.83
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %127 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %inc90 = add i32 %127, 1
  store i32 %inc90, i32* %MCU_col_num, align 4, !tbaa !6
  br label %for.cond.3

for.end.91:                                       ; preds = %for.cond.3
  %128 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr92 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %128, i32 0, i32 2
  store i32 0, i32* %mcu_ctr92, align 4, !tbaa !39
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.91
  %129 = load i32, i32* %yoffset, align 4, !tbaa !6
  %inc94 = add nsw i32 %129, 1
  store i32 %inc94, i32* %yoffset, align 4, !tbaa !6
  br label %for.cond

for.end.95:                                       ; preds = %for.cond
  %130 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num96 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %130, i32 0, i32 1
  %131 = load i32, i32* %iMCU_row_num96, align 4, !tbaa !29
  %inc97 = add i32 %131, 1
  store i32 %inc97, i32* %iMCU_row_num96, align 4, !tbaa !29
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %132)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.95, %if.then.85
  %133 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #3
  %134 = bitcast i32* %xpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #3
  %135 = bitcast i32* %ypos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #3
  %136 = bitcast i32* %blockcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #3
  %137 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #3
  %138 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #3
  %139 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #3
  %140 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #3
  %141 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #3
  %142 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #3
  %143 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #3
  %144 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #3
  %145 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #3
  %146 = load i32, i32* %retval
  ret i32 %146
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_first_pass(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %last_iMCU_row = alloca i32, align 4
  %blocks_across = alloca i32, align 4
  %MCUs_across = alloca i32, align 4
  %MCUindex = alloca i32, align 4
  %bi = alloca i32, align 4
  %ci = alloca i32, align 4
  %h_samp_factor = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %ndummy = alloca i32, align 4
  %lastDC = alloca i16, align 2
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buffer = alloca [64 x i16]**, align 8
  %thisblockrow = alloca [64 x i16]*, align 8
  %lastblockrow = alloca [64 x i16]*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 54
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 40
  %6 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !37
  %sub = sub i32 %6, 1
  store i32 %sub, i32* %last_iMCU_row, align 4, !tbaa !6
  %7 = bitcast i32* %blocks_across to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %MCUs_across to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %MCUindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %h_samp_factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %block_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %block_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %ndummy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = bitcast i16* %lastDC to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #3
  %17 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = bitcast [64 x i16]*** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = bitcast [64 x i16]** %thisblockrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = bitcast [64 x i16]** %lastblockrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #3
  store i32 0, i32* %ci, align 4, !tbaa !6
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 14
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !19
  store %struct.jpeg_component_info* %22, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %entry
  %23 = load i32, i32* %ci, align 4, !tbaa !6
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 12
  %25 = load i32, i32* %num_components, align 4, !tbaa !20
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end.88

for.body:                                         ; preds = %for.cond
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 1
  %27 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %27, i32 0, i32 8
  %28 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8, !tbaa !53
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %30 = bitcast %struct.jpeg_compress_struct* %29 to %struct.jpeg_common_struct*
  %31 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %32, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  %33 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8, !tbaa !2
  %34 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %34, i32 0, i32 1
  %35 = load i32, i32* %iMCU_row_num, align 4, !tbaa !29
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 3
  %37 = load i32, i32* %v_samp_factor, align 4, !tbaa !26
  %mul = mul i32 %35, %37
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor2 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 3
  %39 = load i32, i32* %v_samp_factor2, align 4, !tbaa !26
  %call = call [64 x i16]** %28(%struct.jpeg_common_struct* %30, %struct.jvirt_barray_control* %33, i32 %mul, i32 %39, i32 1)
  store [64 x i16]** %call, [64 x i16]*** %buffer, align 8, !tbaa !2
  %40 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num3 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %40, i32 0, i32 1
  %41 = load i32, i32* %iMCU_row_num3, align 4, !tbaa !29
  %42 = load i32, i32* %last_iMCU_row, align 4, !tbaa !6
  %cmp4 = icmp ult i32 %41, %42
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 0, i32 3
  %44 = load i32, i32* %v_samp_factor5, align 4, !tbaa !26
  store i32 %44, i32* %block_rows, align 4, !tbaa !6
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 8
  %46 = load i32, i32* %height_in_blocks, align 4, !tbaa !25
  %47 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor6 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %47, i32 0, i32 3
  %48 = load i32, i32* %v_samp_factor6, align 4, !tbaa !26
  %rem = urem i32 %46, %48
  store i32 %rem, i32* %block_rows, align 4, !tbaa !6
  %49 = load i32, i32* %block_rows, align 4, !tbaa !6
  %cmp7 = icmp eq i32 %49, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor9 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 3
  %51 = load i32, i32* %v_samp_factor9, align 4, !tbaa !26
  store i32 %51, i32* %block_rows, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 7
  %53 = load i32, i32* %width_in_blocks, align 4, !tbaa !22
  store i32 %53, i32* %blocks_across, align 4, !tbaa !6
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 2
  %55 = load i32, i32* %h_samp_factor11, align 4, !tbaa !24
  store i32 %55, i32* %h_samp_factor, align 4, !tbaa !6
  %56 = load i32, i32* %blocks_across, align 4, !tbaa !6
  %57 = load i32, i32* %h_samp_factor, align 4, !tbaa !6
  %rem12 = urem i32 %56, %57
  store i32 %rem12, i32* %ndummy, align 4, !tbaa !6
  %58 = load i32, i32* %ndummy, align 4, !tbaa !6
  %cmp13 = icmp sgt i32 %58, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %59 = load i32, i32* %h_samp_factor, align 4, !tbaa !6
  %60 = load i32, i32* %ndummy, align 4, !tbaa !6
  %sub15 = sub nsw i32 %59, %60
  store i32 %sub15, i32* %ndummy, align 4, !tbaa !6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  store i32 0, i32* %block_row, align 4, !tbaa !6
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.38, %if.end.16
  %61 = load i32, i32* %block_row, align 4, !tbaa !6
  %62 = load i32, i32* %block_rows, align 4, !tbaa !6
  %cmp18 = icmp slt i32 %61, %62
  br i1 %cmp18, label %for.body.19, label %for.end.40

for.body.19:                                      ; preds = %for.cond.17
  %63 = load i32, i32* %block_row, align 4, !tbaa !6
  %idxprom20 = sext i32 %63 to i64
  %64 = load [64 x i16]**, [64 x i16]*** %buffer, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds [64 x i16]*, [64 x i16]** %64, i64 %idxprom20
  %65 = load [64 x i16]*, [64 x i16]** %arrayidx21, align 8, !tbaa !2
  store [64 x i16]* %65, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 58
  %67 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct, align 8, !tbaa !46
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %67, i32 0, i32 1
  %68 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT, align 8, !tbaa !47
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %71 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom22 = sext i32 %71 to i64
  %72 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i8**, i8*** %72, i64 %idxprom22
  %73 = load i8**, i8*** %arrayidx23, align 8, !tbaa !2
  %74 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %75 = load i32, i32* %block_row, align 4, !tbaa !6
  %mul24 = mul nsw i32 %75, 8
  %76 = load i32, i32* %blocks_across, align 4, !tbaa !6
  call void %68(%struct.jpeg_compress_struct* %69, %struct.jpeg_component_info* %70, i8** %73, [64 x i16]* %74, i32 %mul24, i32 0, i32 %76)
  %77 = load i32, i32* %ndummy, align 4, !tbaa !6
  %cmp25 = icmp sgt i32 %77, 0
  br i1 %cmp25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %for.body.19
  %78 = load i32, i32* %blocks_across, align 4, !tbaa !6
  %79 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %idx.ext = zext i32 %78 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %79, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %80 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %81 = bitcast [64 x i16]* %80 to i8*
  %82 = load i32, i32* %ndummy, align 4, !tbaa !6
  %conv = sext i32 %82 to i64
  %mul27 = mul i64 %conv, 128
  call void @jzero_far(i8* %81, i64 %mul27)
  %83 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %83, i64 -1
  %arrayidx29 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx28, i32 0, i64 0
  %84 = load i16, i16* %arrayidx29, align 2, !tbaa !49
  store i16 %84, i16* %lastDC, align 2, !tbaa !49
  store i32 0, i32* %bi, align 4, !tbaa !6
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.26
  %85 = load i32, i32* %bi, align 4, !tbaa !6
  %86 = load i32, i32* %ndummy, align 4, !tbaa !6
  %cmp31 = icmp slt i32 %85, %86
  br i1 %cmp31, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.30
  %87 = load i16, i16* %lastDC, align 2, !tbaa !49
  %88 = load i32, i32* %bi, align 4, !tbaa !6
  %idxprom34 = sext i32 %88 to i64
  %89 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds [64 x i16], [64 x i16]* %89, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx35, i32 0, i64 0
  store i16 %87, i16* %arrayidx36, align 2, !tbaa !49
  br label %for.inc

for.inc:                                          ; preds = %for.body.33
  %90 = load i32, i32* %bi, align 4, !tbaa !6
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %bi, align 4, !tbaa !6
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %for.body.19
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %91 = load i32, i32* %block_row, align 4, !tbaa !6
  %inc39 = add nsw i32 %91, 1
  store i32 %inc39, i32* %block_row, align 4, !tbaa !6
  br label %for.cond.17

for.end.40:                                       ; preds = %for.cond.17
  %92 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num41 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %92, i32 0, i32 1
  %93 = load i32, i32* %iMCU_row_num41, align 4, !tbaa !29
  %94 = load i32, i32* %last_iMCU_row, align 4, !tbaa !6
  %cmp42 = icmp eq i32 %93, %94
  br i1 %cmp42, label %if.then.44, label %if.end.85

if.then.44:                                       ; preds = %for.end.40
  %95 = load i32, i32* %ndummy, align 4, !tbaa !6
  %96 = load i32, i32* %blocks_across, align 4, !tbaa !6
  %add = add i32 %96, %95
  store i32 %add, i32* %blocks_across, align 4, !tbaa !6
  %97 = load i32, i32* %blocks_across, align 4, !tbaa !6
  %98 = load i32, i32* %h_samp_factor, align 4, !tbaa !6
  %div = udiv i32 %97, %98
  store i32 %div, i32* %MCUs_across, align 4, !tbaa !6
  %99 = load i32, i32* %block_rows, align 4, !tbaa !6
  store i32 %99, i32* %block_row, align 4, !tbaa !6
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.82, %if.then.44
  %100 = load i32, i32* %block_row, align 4, !tbaa !6
  %101 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %101, i32 0, i32 3
  %102 = load i32, i32* %v_samp_factor46, align 4, !tbaa !26
  %cmp47 = icmp slt i32 %100, %102
  br i1 %cmp47, label %for.body.49, label %for.end.84

for.body.49:                                      ; preds = %for.cond.45
  %103 = load i32, i32* %block_row, align 4, !tbaa !6
  %idxprom50 = sext i32 %103 to i64
  %104 = load [64 x i16]**, [64 x i16]*** %buffer, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds [64 x i16]*, [64 x i16]** %104, i64 %idxprom50
  %105 = load [64 x i16]*, [64 x i16]** %arrayidx51, align 8, !tbaa !2
  store [64 x i16]* %105, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %106 = load i32, i32* %block_row, align 4, !tbaa !6
  %sub52 = sub nsw i32 %106, 1
  %idxprom53 = sext i32 %sub52 to i64
  %107 = load [64 x i16]**, [64 x i16]*** %buffer, align 8, !tbaa !2
  %arrayidx54 = getelementptr inbounds [64 x i16]*, [64 x i16]** %107, i64 %idxprom53
  %108 = load [64 x i16]*, [64 x i16]** %arrayidx54, align 8, !tbaa !2
  store [64 x i16]* %108, [64 x i16]** %lastblockrow, align 8, !tbaa !2
  %109 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %110 = bitcast [64 x i16]* %109 to i8*
  %111 = load i32, i32* %blocks_across, align 4, !tbaa !6
  %conv55 = zext i32 %111 to i64
  %mul56 = mul i64 %conv55, 128
  call void @jzero_far(i8* %110, i64 %mul56)
  store i32 0, i32* %MCUindex, align 4, !tbaa !6
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.79, %for.body.49
  %112 = load i32, i32* %MCUindex, align 4, !tbaa !6
  %113 = load i32, i32* %MCUs_across, align 4, !tbaa !6
  %cmp58 = icmp ult i32 %112, %113
  br i1 %cmp58, label %for.body.60, label %for.end.81

for.body.60:                                      ; preds = %for.cond.57
  %114 = load i32, i32* %h_samp_factor, align 4, !tbaa !6
  %sub61 = sub nsw i32 %114, 1
  %idxprom62 = sext i32 %sub61 to i64
  %115 = load [64 x i16]*, [64 x i16]** %lastblockrow, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds [64 x i16], [64 x i16]* %115, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx63, i32 0, i64 0
  %116 = load i16, i16* %arrayidx64, align 2, !tbaa !49
  store i16 %116, i16* %lastDC, align 2, !tbaa !49
  store i32 0, i32* %bi, align 4, !tbaa !6
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.72, %for.body.60
  %117 = load i32, i32* %bi, align 4, !tbaa !6
  %118 = load i32, i32* %h_samp_factor, align 4, !tbaa !6
  %cmp66 = icmp slt i32 %117, %118
  br i1 %cmp66, label %for.body.68, label %for.end.74

for.body.68:                                      ; preds = %for.cond.65
  %119 = load i16, i16* %lastDC, align 2, !tbaa !49
  %120 = load i32, i32* %bi, align 4, !tbaa !6
  %idxprom69 = sext i32 %120 to i64
  %121 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %arrayidx70 = getelementptr inbounds [64 x i16], [64 x i16]* %121, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx70, i32 0, i64 0
  store i16 %119, i16* %arrayidx71, align 2, !tbaa !49
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.68
  %122 = load i32, i32* %bi, align 4, !tbaa !6
  %inc73 = add nsw i32 %122, 1
  store i32 %inc73, i32* %bi, align 4, !tbaa !6
  br label %for.cond.65

for.end.74:                                       ; preds = %for.cond.65
  %123 = load i32, i32* %h_samp_factor, align 4, !tbaa !6
  %124 = load [64 x i16]*, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %idx.ext75 = sext i32 %123 to i64
  %add.ptr76 = getelementptr inbounds [64 x i16], [64 x i16]* %124, i64 %idx.ext75
  store [64 x i16]* %add.ptr76, [64 x i16]** %thisblockrow, align 8, !tbaa !2
  %125 = load i32, i32* %h_samp_factor, align 4, !tbaa !6
  %126 = load [64 x i16]*, [64 x i16]** %lastblockrow, align 8, !tbaa !2
  %idx.ext77 = sext i32 %125 to i64
  %add.ptr78 = getelementptr inbounds [64 x i16], [64 x i16]* %126, i64 %idx.ext77
  store [64 x i16]* %add.ptr78, [64 x i16]** %lastblockrow, align 8, !tbaa !2
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.74
  %127 = load i32, i32* %MCUindex, align 4, !tbaa !6
  %inc80 = add i32 %127, 1
  store i32 %inc80, i32* %MCUindex, align 4, !tbaa !6
  br label %for.cond.57

for.end.81:                                       ; preds = %for.cond.57
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.81
  %128 = load i32, i32* %block_row, align 4, !tbaa !6
  %inc83 = add nsw i32 %128, 1
  store i32 %inc83, i32* %block_row, align 4, !tbaa !6
  br label %for.cond.45

for.end.84:                                       ; preds = %for.cond.45
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.84, %for.end.40
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %129 = load i32, i32* %ci, align 4, !tbaa !6
  %inc87 = add nsw i32 %129, 1
  store i32 %inc87, i32* %ci, align 4, !tbaa !6
  %130 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %130, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.88:                                       ; preds = %for.cond
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %132 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %call89 = call i32 @compress_output(%struct.jpeg_compress_struct* %131, i8*** %132)
  %133 = bitcast [64 x i16]** %lastblockrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #3
  %134 = bitcast [64 x i16]** %thisblockrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #3
  %135 = bitcast [64 x i16]*** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #3
  %136 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #3
  %137 = bitcast i16* %lastDC to i8*
  call void @llvm.lifetime.end(i64 2, i8* %137) #3
  %138 = bitcast i32* %ndummy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #3
  %139 = bitcast i32* %block_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #3
  %140 = bitcast i32* %block_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #3
  %141 = bitcast i32* %h_samp_factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #3
  %142 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #3
  %143 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #3
  %144 = bitcast i32* %MCUindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #3
  %145 = bitcast i32* %MCUs_across to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #3
  %146 = bitcast i32* %blocks_across to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #3
  %147 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #3
  %148 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #3
  ret i32 %call89
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_output(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
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
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 54
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
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
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 41
  %16 = load i32, i32* %comps_in_scan, align 4, !tbaa !35
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %19, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 8
  %22 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8, !tbaa !53
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 1
  %26 = load i32, i32* %component_index, align 4, !tbaa !54
  %idxprom2 = sext i32 %26 to i64
  %27 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %27, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom2
  %28 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx3, align 8, !tbaa !2
  %29 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %29, i32 0, i32 1
  %30 = load i32, i32* %iMCU_row_num, align 4, !tbaa !29
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 0, i32 3
  %32 = load i32, i32* %v_samp_factor, align 4, !tbaa !26
  %mul = mul i32 %30, %32
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 3
  %34 = load i32, i32* %v_samp_factor4, align 4, !tbaa !26
  %call = call [64 x i16]** %22(%struct.jpeg_common_struct* %24, %struct.jvirt_barray_control* %28, i32 %mul, i32 %34, i32 0)
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
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %37, i32 0, i32 3
  %38 = load i32, i32* %MCU_vert_offset, align 4, !tbaa !40
  store i32 %38, i32* %yoffset, align 4, !tbaa !6
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.52, %for.end
  %39 = load i32, i32* %yoffset, align 4, !tbaa !6
  %40 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %40, i32 0, i32 4
  %41 = load i32, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !36
  %cmp8 = icmp slt i32 %39, %41
  br i1 %cmp8, label %for.body.9, label %for.end.54

for.body.9:                                       ; preds = %for.cond.7
  %42 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %42, i32 0, i32 2
  %43 = load i32, i32* %mcu_ctr, align 4, !tbaa !39
  store i32 %43, i32* %MCU_col_num, align 4, !tbaa !6
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.48, %for.body.9
  %44 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 43
  %46 = load i32, i32* %MCUs_per_row, align 4, !tbaa !41
  %cmp11 = icmp ult i32 %44, %46
  br i1 %cmp11, label %for.body.12, label %for.end.50

for.body.12:                                      ; preds = %for.cond.10
  store i32 0, i32* %blkn, align 4, !tbaa !6
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.41, %for.body.12
  %47 = load i32, i32* %ci, align 4, !tbaa !6
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 41
  %49 = load i32, i32* %comps_in_scan14, align 4, !tbaa !35
  %cmp15 = icmp slt i32 %47, %49
  br i1 %cmp15, label %for.body.16, label %for.end.43

for.body.16:                                      ; preds = %for.cond.13
  %50 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom17 = sext i32 %50 to i64
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 42
  %arrayidx19 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info18, i32 0, i64 %idxprom17
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx19, align 8, !tbaa !2
  store %struct.jpeg_component_info* %52, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %53 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 13
  %55 = load i32, i32* %MCU_width, align 4, !tbaa !42
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
  %67 = load i32, i32* %MCU_width29, align 4, !tbaa !42
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
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %70, i32 0, i32 5
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
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 59
  %75 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !50
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %75, i32 0, i32 1
  %76 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8, !tbaa !51
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %78 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %78, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer44, i32 0, i32 0
  %call45 = call i32 %76(%struct.jpeg_compress_struct* %77, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end.43
  %79 = load i32, i32* %yoffset, align 4, !tbaa !6
  %80 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset46 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %80, i32 0, i32 3
  store i32 %79, i32* %MCU_vert_offset46, align 4, !tbaa !40
  %81 = load i32, i32* %MCU_col_num, align 4, !tbaa !6
  %82 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr47 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %82, i32 0, i32 2
  store i32 %81, i32* %mcu_ctr47, align 4, !tbaa !39
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
  %mcu_ctr51 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %84, i32 0, i32 2
  store i32 0, i32* %mcu_ctr51, align 4, !tbaa !39
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.50
  %85 = load i32, i32* %yoffset, align 4, !tbaa !6
  %inc53 = add nsw i32 %85, 1
  store i32 %inc53, i32* %yoffset, align 4, !tbaa !6
  br label %for.cond.7

for.end.54:                                       ; preds = %for.cond.7
  %86 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num55 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %86, i32 0, i32 1
  %87 = load i32, i32* %iMCU_row_num55, align 4, !tbaa !29
  %inc56 = add i32 %87, 1
  store i32 %inc56, i32* %iMCU_row_num55, align 4, !tbaa !29
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %88)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.54, %if.then
  %89 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #3
  %90 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #3
  %91 = bitcast [4 x [64 x i16]**]* %buffer to i8*
  call void @llvm.lifetime.end(i64 32, i8* %91) #3
  %92 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #3
  %93 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #3
  %94 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #3
  %95 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #3
  %96 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #3
  %97 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #3
  %98 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #3
  %99 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #3
  %100 = load i32, i32* %retval
  ret i32 %100
}

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
!9 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !10, i64 56, !7, i64 64, !7, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !7, i64 232, !3, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !4, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !4, i64 284, !11, i64 286, !11, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !4, i64 320, !7, i64 352, !7, i64 356, !7, i64 360, !4, i64 364, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!10 = !{!"double", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!13, !3, i64 0}
!13 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!14 = !{!"long", !4, i64 0}
!15 = !{!9, !3, i64 448}
!16 = !{!17, !3, i64 0}
!17 = !{!"", !18, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !4, i64 32, !4, i64 112}
!18 = !{!"jpeg_c_coef_controller", !3, i64 0, !3, i64 8}
!19 = !{!9, !3, i64 80}
!20 = !{!9, !7, i64 68}
!21 = !{!13, !3, i64 40}
!22 = !{!23, !7, i64 28}
!23 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!24 = !{!23, !7, i64 8}
!25 = !{!23, !7, i64 32}
!26 = !{!23, !7, i64 12}
!27 = !{!13, !3, i64 8}
!28 = !{!4, !4, i64 0}
!29 = !{!17, !7, i64 16}
!30 = !{!9, !3, i64 0}
!31 = !{!32, !7, i64 40}
!32 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !4, i64 44, !7, i64 124, !14, i64 128, !3, i64 136, !7, i64 144, !3, i64 152, !7, i64 160, !7, i64 164}
!33 = !{!32, !3, i64 0}
!34 = !{!17, !3, i64 8}
!35 = !{!9, !7, i64 316}
!36 = !{!17, !7, i64 28}
!37 = !{!9, !7, i64 312}
!38 = !{!23, !7, i64 72}
!39 = !{!17, !7, i64 20}
!40 = !{!17, !7, i64 24}
!41 = !{!9, !7, i64 352}
!42 = !{!23, !7, i64 52}
!43 = !{!23, !7, i64 68}
!44 = !{!23, !7, i64 64}
!45 = !{!23, !7, i64 56}
!46 = !{!9, !3, i64 480}
!47 = !{!48, !3, i64 8}
!48 = !{!"jpeg_forward_dct", !3, i64 0, !3, i64 8}
!49 = !{!11, !11, i64 0}
!50 = !{!9, !3, i64 488}
!51 = !{!52, !3, i64 8}
!52 = !{!"jpeg_entropy_encoder", !3, i64 0, !3, i64 8, !3, i64 16}
!53 = !{!13, !3, i64 64}
!54 = !{!23, !7, i64 4}
