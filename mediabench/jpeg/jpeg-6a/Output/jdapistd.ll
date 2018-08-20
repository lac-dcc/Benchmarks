; ModuleID = 'jdapistd.c'
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, {}*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, {}*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { {}*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, [16 x {}*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %retcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp eq i32 %1, 202
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_master_decompress(%struct.jpeg_decompress_struct* %2)
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 14
  %4 = load i32, i32* %buffered_image, align 4, !tbaa !11
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 4
  store i32 207, i32* %global_state2, align 4, !tbaa !6
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 4
  store i32 203, i32* %global_state3, align 4, !tbaa !6
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %global_state5, align 4, !tbaa !6
  %cmp6 = icmp eq i32 %8, 203
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 77
  %10 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !12
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %10, i32 0, i32 4
  %11 = load i32, i32* %has_multiple_scans, align 4, !tbaa !13
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then.9, label %if.end.36

if.then.9:                                        ; preds = %if.then.7
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.then.9
  %12 = bitcast i32* %retcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 2
  %14 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !15
  %cmp10 = icmp ne %struct.jpeg_progress_mgr* %14, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %for.cond
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 2
  %16 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress12, align 8, !tbaa !15
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %16, i32 0, i32 0
  %progress_monitor13 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor13, align 8, !tbaa !16
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %19 = bitcast %struct.jpeg_decompress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %for.cond
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 77
  %21 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl15, align 8, !tbaa !12
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %21, i32 0, i32 0
  %consume_input16 = bitcast {}** %consume_input to i32 (%struct.jpeg_decompress_struct*)**
  %22 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input16, align 8, !tbaa !19
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %22(%struct.jpeg_decompress_struct* %23)
  store i32 %call, i32* %retcode, align 4, !tbaa !20
  %24 = load i32, i32* %retcode, align 4, !tbaa !20
  %cmp17 = icmp eq i32 %24, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.14
  %25 = load i32, i32* %retcode, align 4, !tbaa !20
  %cmp20 = icmp eq i32 %25, 2
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.19
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 2
  %27 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress23, align 8, !tbaa !15
  %cmp24 = icmp ne %struct.jpeg_progress_mgr* %27, null
  br i1 %cmp24, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.22
  %28 = load i32, i32* %retcode, align 4, !tbaa !20
  %cmp25 = icmp eq i32 %28, 3
  br i1 %cmp25, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %29 = load i32, i32* %retcode, align 4, !tbaa !20
  %cmp26 = icmp eq i32 %29, 1
  br i1 %cmp26, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 2
  %31 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress28, align 8, !tbaa !15
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %31, i32 0, i32 1
  %32 = load i64, i64* %pass_counter, align 8, !tbaa !21
  %inc = add nsw i64 %32, 1
  store i64 %inc, i64* %pass_counter, align 8, !tbaa !21
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 2
  %34 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress29, align 8, !tbaa !15
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %34, i32 0, i32 2
  %35 = load i64, i64* %pass_limit, align 8, !tbaa !22
  %cmp30 = icmp sge i64 %inc, %35
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.then.27
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 60
  %37 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !23
  %conv = zext i32 %37 to i64
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 2
  %39 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress32, align 8, !tbaa !15
  %pass_limit33 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %39, i32 0, i32 2
  %40 = load i64, i64* %pass_limit33, align 8, !tbaa !22
  %add = add nsw i64 %40, %conv
  store i64 %add, i64* %pass_limit33, align 8, !tbaa !22
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.then.27
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %lor.lhs.false, %if.end.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.21, %if.then.18
  %41 = bitcast i32* %retcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  br label %if.end.36

if.end.36:                                        ; preds = %for.end, %if.then.7
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 34
  %43 = load i32, i32* %input_scan_number, align 4, !tbaa !24
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 36
  store i32 %43, i32* %output_scan_number, align 4, !tbaa !25
  br label %if.end.45

if.else:                                          ; preds = %if.end.4
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 4
  %46 = load i32, i32* %global_state37, align 4, !tbaa !6
  %cmp38 = icmp ne i32 %46, 204
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.else
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !26
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !27
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 4
  %50 = load i32, i32* %global_state41, align 4, !tbaa !6
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8, !tbaa !26
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %50, i32* %arrayidx, align 4, !tbaa !20
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8, !tbaa !26
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 0
  %55 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !29
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %57 = bitcast %struct.jpeg_decompress_struct* %56 to %struct.jpeg_common_struct*
  call void %55(%struct.jpeg_common_struct* %57)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.36
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call46 = call i32 @output_pass_setup(%struct.jpeg_decompress_struct* %58)
  store i32 %call46, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %cleanup, %if.then.1
  %59 = load i32, i32* %retval
  ret i32 %59

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @jinit_master_decompress(%struct.jpeg_decompress_struct*) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @output_pass_setup(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %last_scanline = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp ne i32 %1, 204
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 73
  %3 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master, align 8, !tbaa !30
  %prepare_for_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %3, i32 0, i32 0
  %4 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %prepare_for_output_pass, align 8, !tbaa !31
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %4(%struct.jpeg_decompress_struct* %5)
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 33
  store i32 0, i32* %output_scanline, align 4, !tbaa !33
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 4
  store i32 204, i32* %global_state1, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 73
  %9 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master2, align 8, !tbaa !30
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %9, i32 0, i32 2
  %10 = load i32, i32* %is_dummy_pass, align 4, !tbaa !34
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %while.body, label %while.end.28

while.body:                                       ; preds = %while.cond
  br label %while.cond.3

while.cond.3:                                     ; preds = %cleanup.cont, %while.body
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 33
  %12 = load i32, i32* %output_scanline4, align 4, !tbaa !33
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 27
  %14 = load i32, i32* %output_height, align 4, !tbaa !35
  %cmp5 = icmp ult i32 %12, %14
  br i1 %cmp5, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %while.cond.3
  %15 = bitcast i32* %last_scanline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 2
  %17 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !15
  %cmp7 = icmp ne %struct.jpeg_progress_mgr* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %while.body.6
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 33
  %19 = load i32, i32* %output_scanline9, align 4, !tbaa !33
  %conv = zext i32 %19 to i64
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 2
  %21 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress10, align 8, !tbaa !15
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %21, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8, !tbaa !21
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 27
  %23 = load i32, i32* %output_height11, align 4, !tbaa !35
  %conv12 = zext i32 %23 to i64
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 2
  %25 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress13, align 8, !tbaa !15
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %25, i32 0, i32 2
  store i64 %conv12, i64* %pass_limit, align 8, !tbaa !22
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 2
  %27 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress14, align 8, !tbaa !15
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %27, i32 0, i32 0
  %progress_monitor15 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %28 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor15, align 8, !tbaa !16
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %30 = bitcast %struct.jpeg_decompress_struct* %29 to %struct.jpeg_common_struct*
  call void %28(%struct.jpeg_common_struct* %30)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.8, %while.body.6
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 33
  %32 = load i32, i32* %output_scanline17, align 4, !tbaa !33
  store i32 %32, i32* %last_scanline, align 4, !tbaa !20
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 74
  %34 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !36
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %34, i32 0, i32 1
  %35 = load void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data, align 8, !tbaa !37
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 33
  call void %35(%struct.jpeg_decompress_struct* %36, i8** null, i32* %output_scanline18, i32 0)
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 33
  %39 = load i32, i32* %output_scanline19, align 4, !tbaa !33
  %40 = load i32, i32* %last_scanline, align 4, !tbaa !20
  %cmp20 = icmp eq i32 %39, %40
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22
  %41 = bitcast i32* %last_scanline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 73
  %43 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master24, align 8, !tbaa !30
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %43, i32 0, i32 1
  %44 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_output_pass, align 8, !tbaa !39
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %44(%struct.jpeg_decompress_struct* %45)
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 73
  %47 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master25, align 8, !tbaa !30
  %prepare_for_output_pass26 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %47, i32 0, i32 0
  %48 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %prepare_for_output_pass26, align 8, !tbaa !31
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %48(%struct.jpeg_decompress_struct* %49)
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 33
  store i32 0, i32* %output_scanline27, align 4, !tbaa !33
  br label %while.cond

while.end.28:                                     ; preds = %while.cond
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 15
  %52 = load i32, i32* %raw_data_out, align 4, !tbaa !40
  %tobool29 = icmp ne i32 %52, 0
  %cond = select i1 %tobool29, i32 206, i32 205
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 4
  store i32 %cond, i32* %global_state30, align 4, !tbaa !6
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.28, %cleanup
  %54 = load i32, i32* %retval
  ret i32 %54

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %cinfo, i8** %scanlines, i32 %max_lines) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %scanlines.addr = alloca i8**, align 8
  %max_lines.addr = alloca i32, align 4
  %row_ctr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %scanlines, i8*** %scanlines.addr, align 8, !tbaa !2
  store i32 %max_lines, i32* %max_lines.addr, align 4, !tbaa !20
  %0 = bitcast i32* %row_ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp ne i32 %2, 205
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !26
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !27
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 4
  %6 = load i32, i32* %global_state1, align 4, !tbaa !6
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !26
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4, !tbaa !20
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !26
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !29
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %13 = bitcast %struct.jpeg_decompress_struct* %12 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 33
  %15 = load i32, i32* %output_scanline, align 4, !tbaa !33
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 27
  %17 = load i32, i32* %output_height, align 4, !tbaa !35
  %cmp4 = icmp uge i32 %15, %17
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !26
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 119, i32* %msg_code7, align 4, !tbaa !27
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !26
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 1
  %22 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !41
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24, i32 -1)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 2
  %26 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !15
  %cmp10 = icmp ne %struct.jpeg_progress_mgr* %26, null
  br i1 %cmp10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end.9
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 33
  %28 = load i32, i32* %output_scanline12, align 4, !tbaa !33
  %conv = zext i32 %28 to i64
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 2
  %30 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress13, align 8, !tbaa !15
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %30, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8, !tbaa !21
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 27
  %32 = load i32, i32* %output_height14, align 4, !tbaa !35
  %conv15 = zext i32 %32 to i64
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 2
  %34 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress16, align 8, !tbaa !15
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %34, i32 0, i32 2
  store i64 %conv15, i64* %pass_limit, align 8, !tbaa !22
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 2
  %36 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress17, align 8, !tbaa !15
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %36, i32 0, i32 0
  %progress_monitor18 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor18, align 8, !tbaa !16
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %39 = bitcast %struct.jpeg_decompress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* %39)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.11, %if.end.9
  store i32 0, i32* %row_ctr, align 4, !tbaa !20
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 74
  %41 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !36
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %41, i32 0, i32 1
  %42 = load void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data, align 8, !tbaa !37
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %44 = load i8**, i8*** %scanlines.addr, align 8, !tbaa !2
  %45 = load i32, i32* %max_lines.addr, align 4, !tbaa !20
  call void %42(%struct.jpeg_decompress_struct* %43, i8** %44, i32* %row_ctr, i32 %45)
  %46 = load i32, i32* %row_ctr, align 4, !tbaa !20
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 33
  %48 = load i32, i32* %output_scanline20, align 4, !tbaa !33
  %add = add i32 %48, %46
  store i32 %add, i32* %output_scanline20, align 4, !tbaa !33
  %49 = load i32, i32* %row_ctr, align 4, !tbaa !20
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.5
  %50 = bitcast i32* %row_ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_read_raw_data(%struct.jpeg_decompress_struct* %cinfo, i8*** %data, i32 %max_lines) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %data.addr = alloca i8***, align 8
  %max_lines.addr = alloca i32, align 4
  %lines_per_iMCU_row = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %data, i8**** %data.addr, align 8, !tbaa !2
  store i32 %max_lines, i32* %max_lines.addr, align 4, !tbaa !20
  %0 = bitcast i32* %lines_per_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp ne i32 %2, 206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !26
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !27
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 4
  %6 = load i32, i32* %global_state1, align 4, !tbaa !6
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !26
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4, !tbaa !20
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !26
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !29
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %13 = bitcast %struct.jpeg_decompress_struct* %12 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 33
  %15 = load i32, i32* %output_scanline, align 4, !tbaa !33
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 27
  %17 = load i32, i32* %output_height, align 4, !tbaa !35
  %cmp4 = icmp uge i32 %15, %17
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !26
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 119, i32* %msg_code7, align 4, !tbaa !27
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !26
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 1
  %22 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !41
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24, i32 -1)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 2
  %26 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !15
  %cmp10 = icmp ne %struct.jpeg_progress_mgr* %26, null
  br i1 %cmp10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end.9
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 33
  %28 = load i32, i32* %output_scanline12, align 4, !tbaa !33
  %conv = zext i32 %28 to i64
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 2
  %30 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress13, align 8, !tbaa !15
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %30, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8, !tbaa !21
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 27
  %32 = load i32, i32* %output_height14, align 4, !tbaa !35
  %conv15 = zext i32 %32 to i64
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 2
  %34 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress16, align 8, !tbaa !15
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %34, i32 0, i32 2
  store i64 %conv15, i64* %pass_limit, align 8, !tbaa !22
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 2
  %36 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress17, align 8, !tbaa !15
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %36, i32 0, i32 0
  %progress_monitor18 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor18, align 8, !tbaa !16
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %39 = bitcast %struct.jpeg_decompress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* %39)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.11, %if.end.9
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 58
  %41 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !42
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 59
  %43 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !43
  %mul = mul nsw i32 %41, %43
  store i32 %mul, i32* %lines_per_iMCU_row, align 4, !tbaa !20
  %44 = load i32, i32* %max_lines.addr, align 4, !tbaa !20
  %45 = load i32, i32* %lines_per_iMCU_row, align 4, !tbaa !20
  %cmp20 = icmp ult i32 %44, %45
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.19
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8, !tbaa !26
  %msg_code24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 5
  store i32 21, i32* %msg_code24, align 4, !tbaa !27
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err25, align 8, !tbaa !26
  %error_exit26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 0
  %50 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit26, align 8, !tbaa !29
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %52 = bitcast %struct.jpeg_decompress_struct* %51 to %struct.jpeg_common_struct*
  call void %50(%struct.jpeg_common_struct* %52)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end.19
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 75
  %54 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8, !tbaa !44
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %54, i32 0, i32 3
  %55 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8, !tbaa !45
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %57 = load i8***, i8**** %data.addr, align 8, !tbaa !2
  %call = call i32 %55(%struct.jpeg_decompress_struct* %56, i8*** %57)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.27
  %58 = load i32, i32* %lines_per_iMCU_row, align 4, !tbaa !20
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scanline30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 33
  %60 = load i32, i32* %output_scanline30, align 4, !tbaa !33
  %add = add i32 %60, %58
  store i32 %add, i32* %output_scanline30, align 4, !tbaa !33
  %61 = load i32, i32* %lines_per_iMCU_row, align 4, !tbaa !20
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28, %if.then.5
  %62 = bitcast i32* %lines_per_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #3
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_start_output(%struct.jpeg_decompress_struct* %cinfo, i32 %scan_number) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %scan_number.addr = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %scan_number, i32* %scan_number.addr, align 4, !tbaa !20
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp ne i32 %1, 207
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state1, align 4, !tbaa !6
  %cmp2 = icmp ne i32 %3, 204
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !26
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !27
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %global_state3, align 4, !tbaa !6
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !26
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4, !tbaa !20
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !26
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !29
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load i32, i32* %scan_number.addr, align 4, !tbaa !20
  %cmp6 = icmp sle i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 1, i32* %scan_number.addr, align 4, !tbaa !20
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 77
  %17 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !12
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %17, i32 0, i32 5
  %18 = load i32, i32* %eoi_reached, align 4, !tbaa !47
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %if.end.8
  %19 = load i32, i32* %scan_number.addr, align 4, !tbaa !20
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 34
  %21 = load i32, i32* %input_scan_number, align 4, !tbaa !24
  %cmp10 = icmp sgt i32 %19, %21
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true.9
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 34
  %23 = load i32, i32* %input_scan_number12, align 4, !tbaa !24
  store i32 %23, i32* %scan_number.addr, align 4, !tbaa !20
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true.9, %if.end.8
  %24 = load i32, i32* %scan_number.addr, align 4, !tbaa !20
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 36
  store i32 %24, i32* %output_scan_number, align 4, !tbaa !25
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @output_pass_setup(%struct.jpeg_decompress_struct* %26)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_finish_output(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp eq i32 %1, 205
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state1, align 4, !tbaa !6
  %cmp2 = icmp eq i32 %3, 206
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 14
  %5 = load i32, i32* %buffered_image, align 4, !tbaa !11
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 73
  %7 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master, align 8, !tbaa !30
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %7, i32 0, i32 1
  %8 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_output_pass, align 8, !tbaa !39
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %8(%struct.jpeg_decompress_struct* %9)
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 4
  store i32 208, i32* %global_state3, align 4, !tbaa !6
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 4
  %12 = load i32, i32* %global_state4, align 4, !tbaa !6
  %cmp5 = icmp ne i32 %12, 208
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !26
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !27
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 4
  %16 = load i32, i32* %global_state7, align 4, !tbaa !6
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !26
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %16, i32* %arrayidx, align 4, !tbaa !20
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !26
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !29
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end.10
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 34
  %25 = load i32, i32* %input_scan_number, align 4, !tbaa !24
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 36
  %27 = load i32, i32* %output_scan_number, align 4, !tbaa !25
  %cmp11 = icmp sle i32 %25, %27
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 77
  %29 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !12
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %29, i32 0, i32 5
  %30 = load i32, i32* %eoi_reached, align 4, !tbaa !47
  %tobool12 = icmp ne i32 %30, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 77
  %33 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl13, align 8, !tbaa !12
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %33, i32 0, i32 0
  %consume_input14 = bitcast {}** %consume_input to i32 (%struct.jpeg_decompress_struct*)**
  %34 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input14, align 8, !tbaa !19
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %34(%struct.jpeg_decompress_struct* %35)
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 4
  store i32 207, i32* %global_state18, align 4, !tbaa !6
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.16
  %37 = load i32, i32* %retval
  ret i32 %37
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind argmemonly }
attributes #3 = { nounwind }

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
!11 = !{!7, !8, i64 80}
!12 = !{!7, !3, i64 560}
!13 = !{!14, !8, i64 32}
!14 = !{!"jpeg_input_controller", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !8, i64 32, !8, i64 36}
!15 = !{!7, !3, i64 16}
!16 = !{!17, !3, i64 0}
!17 = !{!"jpeg_progress_mgr", !3, i64 0, !18, i64 8, !18, i64 16, !8, i64 24, !8, i64 28}
!18 = !{!"long", !4, i64 0}
!19 = !{!14, !3, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!17, !18, i64 8}
!22 = !{!17, !18, i64 16}
!23 = !{!7, !8, i64 400}
!24 = !{!7, !8, i64 164}
!25 = !{!7, !8, i64 172}
!26 = !{!7, !3, i64 0}
!27 = !{!28, !8, i64 40}
!28 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !18, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!29 = !{!28, !3, i64 0}
!30 = !{!7, !3, i64 528}
!31 = !{!32, !3, i64 0}
!32 = !{!"jpeg_decomp_master", !3, i64 0, !3, i64 8, !8, i64 16}
!33 = !{!7, !8, i64 160}
!34 = !{!32, !8, i64 16}
!35 = !{!7, !8, i64 132}
!36 = !{!7, !3, i64 536}
!37 = !{!38, !3, i64 8}
!38 = !{!"jpeg_d_main_controller", !3, i64 0, !3, i64 8}
!39 = !{!32, !3, i64 8}
!40 = !{!7, !8, i64 84}
!41 = !{!28, !3, i64 8}
!42 = !{!7, !8, i64 392}
!43 = !{!7, !8, i64 396}
!44 = !{!7, !3, i64 544}
!45 = !{!46, !3, i64 24}
!46 = !{!"jpeg_d_coef_controller", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!47 = !{!14, !8, i64 36}
