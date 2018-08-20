; ModuleID = 'jcmaster.c'
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
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_c_master_control(%struct.jpeg_compress_struct* %cinfo, i32 %transcode_only) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %transcode_only.addr = alloca i32, align 4
  %master = alloca %struct.my_comp_master*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %transcode_only, i32* %transcode_only.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 48)
  %6 = bitcast i8* %call to %struct.my_comp_master*
  store %struct.my_comp_master* %6, %struct.my_comp_master** %master, align 8, !tbaa !2
  %7 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %8 = bitcast %struct.my_comp_master* %7 to %struct.jpeg_comp_master*
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 51
  store %struct.jpeg_comp_master* %8, %struct.jpeg_comp_master** %master1, align 8, !tbaa !15
  %10 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %10, i32 0, i32 0
  %prepare_for_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*)* @prepare_for_pass, void (%struct.jpeg_compress_struct*)** %prepare_for_pass, align 8, !tbaa !16
  %11 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %11, i32 0, i32 0
  %pass_startup = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub2, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*)* @pass_startup, void (%struct.jpeg_compress_struct*)** %pass_startup, align 8, !tbaa !19
  %12 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %12, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub3, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @finish_pass_master, void (%struct.jpeg_compress_struct*)** %finish_pass, align 8, !tbaa !20
  %13 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %13, i32 0, i32 0
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub4, i32 0, i32 4
  store i32 0, i32* %is_last_pass, align 4, !tbaa !21
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @initial_setup(%struct.jpeg_compress_struct* %14)
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 22
  %16 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scan_info, align 8, !tbaa !22
  %cmp = icmp ne %struct.jpeg_scan_info* %16, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @validate_script(%struct.jpeg_compress_struct* %17)
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 37
  store i32 0, i32* %progressive_mode, align 4, !tbaa !23
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 21
  store i32 1, i32* %num_scans, align 4, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 37
  %21 = load i32, i32* %progressive_mode5, align 4, !tbaa !23
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 25
  store i32 1, i32* %optimize_coding, align 4, !tbaa !25
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %23 = load i32, i32* %transcode_only.addr, align 4, !tbaa !6
  %tobool8 = icmp ne i32 %23, 0
  br i1 %tobool8, label %if.then.9, label %if.else.16

if.then.9:                                        ; preds = %if.end.7
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 25
  %25 = load i32, i32* %optimize_coding10, align 4, !tbaa !25
  %tobool11 = icmp ne i32 %25, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.9
  %26 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_type = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %26, i32 0, i32 1
  store i32 1, i32* %pass_type, align 4, !tbaa !26
  br label %if.end.15

if.else.13:                                       ; preds = %if.then.9
  %27 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_type14 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %27, i32 0, i32 1
  store i32 2, i32* %pass_type14, align 4, !tbaa !26
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.18

if.else.16:                                       ; preds = %if.end.7
  %28 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_type17 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %28, i32 0, i32 1
  store i32 0, i32* %pass_type17, align 4, !tbaa !26
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.end.15
  %29 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %29, i32 0, i32 4
  store i32 0, i32* %scan_number, align 4, !tbaa !27
  %30 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %30, i32 0, i32 2
  store i32 0, i32* %pass_number, align 4, !tbaa !28
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 25
  %32 = load i32, i32* %optimize_coding19, align 4, !tbaa !25
  %tobool20 = icmp ne i32 %32, 0
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.18
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_scans22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 21
  %34 = load i32, i32* %num_scans22, align 4, !tbaa !24
  %mul = mul nsw i32 %34, 2
  %35 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %total_passes = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %35, i32 0, i32 3
  store i32 %mul, i32* %total_passes, align 4, !tbaa !29
  br label %if.end.26

if.else.23:                                       ; preds = %if.end.18
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_scans24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 21
  %37 = load i32, i32* %num_scans24, align 4, !tbaa !24
  %38 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %total_passes25 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %38, i32 0, i32 3
  store i32 %37, i32* %total_passes25, align 4, !tbaa !29
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.21
  %39 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_for_pass(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %master = alloca %struct.my_comp_master*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 51
  %2 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_comp_master* %2 to %struct.my_comp_master*
  store %struct.my_comp_master* %3, %struct.my_comp_master** %master, align 8, !tbaa !2
  %4 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_type = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %4, i32 0, i32 1
  %5 = load i32, i32* %pass_type, align 4, !tbaa !26
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @select_scan_parameters(%struct.jpeg_compress_struct* %6)
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @per_scan_setup(%struct.jpeg_compress_struct* %7)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 23
  %9 = load i32, i32* %raw_data_in, align 4, !tbaa !30
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 56
  %11 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert, align 8, !tbaa !31
  %start_pass = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %start_pass, align 8, !tbaa !32
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %12(%struct.jpeg_compress_struct* %13)
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 57
  %15 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8, !tbaa !34
  %start_pass2 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8, !tbaa !35
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %16(%struct.jpeg_compress_struct* %17)
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 53
  %19 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep, align 8, !tbaa !37
  %start_pass3 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass3, align 8, !tbaa !38
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %20(%struct.jpeg_compress_struct* %21, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 58
  %23 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct, align 8, !tbaa !40
  %start_pass4 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %23, i32 0, i32 0
  %24 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %start_pass4, align 8, !tbaa !41
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %24(%struct.jpeg_compress_struct* %25)
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 59
  %27 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !43
  %start_pass5 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %27, i32 0, i32 0
  %start_pass6 = bitcast {}** %start_pass5 to void (%struct.jpeg_compress_struct*, i32)**
  %28 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass6, align 8, !tbaa !44
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 25
  %31 = load i32, i32* %optimize_coding, align 4, !tbaa !25
  call void %28(%struct.jpeg_compress_struct* %29, i32 %31)
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 54
  %33 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef, align 8, !tbaa !46
  %start_pass7 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %33, i32 0, i32 0
  %34 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass7, align 8, !tbaa !47
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %36 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %total_passes = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %36, i32 0, i32 3
  %37 = load i32, i32* %total_passes, align 4, !tbaa !29
  %cmp = icmp sgt i32 %37, 1
  %cond = select i1 %cmp, i32 3, i32 0
  call void %34(%struct.jpeg_compress_struct* %35, i32 %cond)
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %main = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 52
  %39 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %main, align 8, !tbaa !49
  %start_pass8 = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass8, align 8, !tbaa !50
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %40(%struct.jpeg_compress_struct* %41, i32 0)
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 25
  %43 = load i32, i32* %optimize_coding9, align 4, !tbaa !25
  %tobool10 = icmp ne i32 %43, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %44 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %44, i32 0, i32 0
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub, i32 0, i32 3
  store i32 0, i32* %call_pass_startup, align 4, !tbaa !52
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %45 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pub12 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %45, i32 0, i32 0
  %call_pass_startup13 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub12, i32 0, i32 3
  store i32 1, i32* %call_pass_startup13, align 4, !tbaa !52
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.11
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @select_scan_parameters(%struct.jpeg_compress_struct* %46)
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @per_scan_setup(%struct.jpeg_compress_struct* %47)
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 47
  %49 = load i32, i32* %Ss, align 4, !tbaa !53
  %cmp16 = icmp ne i32 %49, 0
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.15
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 49
  %51 = load i32, i32* %Ah, align 4, !tbaa !54
  %cmp17 = icmp eq i32 %51, 0
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 24
  %53 = load i32, i32* %arith_code, align 4, !tbaa !55
  %tobool19 = icmp ne i32 %53, 0
  br i1 %tobool19, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %sw.bb.15
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 59
  %55 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy21, align 8, !tbaa !43
  %start_pass22 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %55, i32 0, i32 0
  %start_pass23 = bitcast {}** %start_pass22 to void (%struct.jpeg_compress_struct*, i32)**
  %56 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass23, align 8, !tbaa !44
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %56(%struct.jpeg_compress_struct* %57, i32 1)
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 54
  %59 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef24, align 8, !tbaa !46
  %start_pass25 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %59, i32 0, i32 0
  %60 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass25, align 8, !tbaa !47
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %60(%struct.jpeg_compress_struct* %61, i32 2)
  %62 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pub26 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %62, i32 0, i32 0
  %call_pass_startup27 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub26, i32 0, i32 3
  store i32 0, i32* %call_pass_startup27, align 4, !tbaa !52
  br label %sw.epilog

if.end.28:                                        ; preds = %lor.lhs.false.18
  %63 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_type29 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %63, i32 0, i32 1
  store i32 2, i32* %pass_type29, align 4, !tbaa !26
  %64 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %64, i32 0, i32 2
  %65 = load i32, i32* %pass_number, align 4, !tbaa !28
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %pass_number, align 4, !tbaa !28
  br label %sw.bb.30

sw.bb.30:                                         ; preds = %entry, %if.end.28
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 25
  %67 = load i32, i32* %optimize_coding31, align 4, !tbaa !25
  %tobool32 = icmp ne i32 %67, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %sw.bb.30
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @select_scan_parameters(%struct.jpeg_compress_struct* %68)
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @per_scan_setup(%struct.jpeg_compress_struct* %69)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %sw.bb.30
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 59
  %71 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy35, align 8, !tbaa !43
  %start_pass36 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %71, i32 0, i32 0
  %start_pass37 = bitcast {}** %start_pass36 to void (%struct.jpeg_compress_struct*, i32)**
  %72 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass37, align 8, !tbaa !44
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %72(%struct.jpeg_compress_struct* %73, i32 0)
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 54
  %75 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef38, align 8, !tbaa !46
  %start_pass39 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %75, i32 0, i32 0
  %76 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass39, align 8, !tbaa !47
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %76(%struct.jpeg_compress_struct* %77, i32 2)
  %78 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %78, i32 0, i32 4
  %79 = load i32, i32* %scan_number, align 4, !tbaa !27
  %cmp40 = icmp eq i32 %79, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.34
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 55
  %81 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !56
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %81, i32 0, i32 2
  %82 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_frame_header, align 8, !tbaa !57
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %82(%struct.jpeg_compress_struct* %83)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.34
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 55
  %85 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker43, align 8, !tbaa !56
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %85, i32 0, i32 3
  %86 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_scan_header, align 8, !tbaa !59
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %86(%struct.jpeg_compress_struct* %87)
  %88 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pub44 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %88, i32 0, i32 0
  %call_pass_startup45 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub44, i32 0, i32 3
  store i32 0, i32* %call_pass_startup45, align 4, !tbaa !52
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !60
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 5
  store i32 47, i32* %msg_code, align 4, !tbaa !61
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 0
  %92 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8, !tbaa !60
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %92, i32 0, i32 0
  %93 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !63
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %95 = bitcast %struct.jpeg_compress_struct* %94 to %struct.jpeg_common_struct*
  call void %93(%struct.jpeg_common_struct* %95)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.42, %if.then.20, %if.end.14
  %96 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_number47 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %96, i32 0, i32 2
  %97 = load i32, i32* %pass_number47, align 4, !tbaa !28
  %98 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %total_passes48 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %98, i32 0, i32 3
  %99 = load i32, i32* %total_passes48, align 4, !tbaa !29
  %sub = sub nsw i32 %99, 1
  %cmp49 = icmp eq i32 %97, %sub
  %conv = zext i1 %cmp49 to i32
  %100 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pub50 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %100, i32 0, i32 0
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub50, i32 0, i32 4
  store i32 %conv, i32* %is_last_pass, align 4, !tbaa !21
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 2
  %102 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !64
  %cmp51 = icmp ne %struct.jpeg_progress_mgr* %102, null
  br i1 %cmp51, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %sw.epilog
  %103 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_number54 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %103, i32 0, i32 2
  %104 = load i32, i32* %pass_number54, align 4, !tbaa !28
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 2
  %106 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress55, align 8, !tbaa !64
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %106, i32 0, i32 3
  store i32 %104, i32* %completed_passes, align 4, !tbaa !65
  %107 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %total_passes56 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %107, i32 0, i32 3
  %108 = load i32, i32* %total_passes56, align 4, !tbaa !29
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 2
  %110 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress57, align 8, !tbaa !64
  %total_passes58 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %110, i32 0, i32 4
  store i32 %108, i32* %total_passes58, align 4, !tbaa !67
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.53, %sw.epilog
  %111 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pass_startup(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %master = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 51
  %1 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master, align 8, !tbaa !15
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %1, i32 0, i32 3
  store i32 0, i32* %call_pass_startup, align 4, !tbaa !68
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 55
  %3 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !56
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %3, i32 0, i32 2
  %4 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_frame_header, align 8, !tbaa !57
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %4(%struct.jpeg_compress_struct* %5)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 55
  %7 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker1, align 8, !tbaa !56
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %7, i32 0, i32 3
  %8 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_scan_header, align 8, !tbaa !59
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %8(%struct.jpeg_compress_struct* %9)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_master(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %master = alloca %struct.my_comp_master*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 51
  %2 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_comp_master* %2 to %struct.my_comp_master*
  store %struct.my_comp_master* %3, %struct.my_comp_master** %master, align 8, !tbaa !2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 59
  %5 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !43
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %5, i32 0, i32 2
  %6 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %finish_pass, align 8, !tbaa !69
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %6(%struct.jpeg_compress_struct* %7)
  %8 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_type = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %8, i32 0, i32 1
  %9 = load i32, i32* %pass_type, align 4, !tbaa !26
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %10 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_type2 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %10, i32 0, i32 1
  store i32 2, i32* %pass_type2, align 4, !tbaa !26
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 25
  %12 = load i32, i32* %optimize_coding, align 4, !tbaa !25
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %13 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %13, i32 0, i32 4
  %14 = load i32, i32* %scan_number, align 4, !tbaa !27
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %scan_number, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %15 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_type4 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %15, i32 0, i32 1
  store i32 2, i32* %pass_type4, align 4, !tbaa !26
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 25
  %17 = load i32, i32* %optimize_coding6, align 4, !tbaa !25
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %sw.bb.5
  %18 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_type9 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %18, i32 0, i32 1
  store i32 1, i32* %pass_type9, align 4, !tbaa !26
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %sw.bb.5
  %19 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %scan_number11 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %19, i32 0, i32 4
  %20 = load i32, i32* %scan_number11, align 4, !tbaa !27
  %inc12 = add nsw i32 %20, 1
  store i32 %inc12, i32* %scan_number11, align 4, !tbaa !27
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.10, %sw.bb.3, %if.end
  %21 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %pass_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %21, i32 0, i32 2
  %22 = load i32, i32* %pass_number, align 4, !tbaa !28
  %inc13 = add nsw i32 %22, 1
  store i32 %inc13, i32* %pass_number, align 4, !tbaa !28
  %23 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @initial_setup(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %samplesperrow = alloca i64, align 8
  %jd_samplesperrow = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast i64* %samplesperrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast i32* %jd_samplesperrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 7
  %5 = load i32, i32* %image_height, align 4, !tbaa !70
  %cmp = icmp ule i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 6
  %7 = load i32, i32* %image_width, align 4, !tbaa !71
  %cmp1 = icmp ule i32 %7, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 12
  %9 = load i32, i32* %num_components, align 4, !tbaa !72
  %cmp3 = icmp sle i32 %9, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 8
  %11 = load i32, i32* %input_components, align 4, !tbaa !73
  %cmp5 = icmp sle i32 %11, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !60
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 31, i32* %msg_code, align 4, !tbaa !61
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !60
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !63
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.4
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 7
  %20 = load i32, i32* %image_height7, align 4, !tbaa !70
  %conv = zext i32 %20 to i64
  %cmp8 = icmp sgt i64 %conv, 65500
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 6
  %22 = load i32, i32* %image_width11, align 4, !tbaa !71
  %conv12 = zext i32 %22 to i64
  %cmp13 = icmp sgt i64 %conv12, 65500
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %lor.lhs.false.10, %if.end
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8, !tbaa !60
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 40, i32* %msg_code17, align 4, !tbaa !61
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8, !tbaa !60
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 65500, i32* %arrayidx, align 4, !tbaa !6
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !60
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit20, align 8, !tbaa !63
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %31 = bitcast %struct.jpeg_compress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %31)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %lor.lhs.false.10
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 6
  %33 = load i32, i32* %image_width22, align 4, !tbaa !71
  %conv23 = zext i32 %33 to i64
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 8
  %35 = load i32, i32* %input_components24, align 4, !tbaa !73
  %conv25 = sext i32 %35 to i64
  %mul = mul nsw i64 %conv23, %conv25
  store i64 %mul, i64* %samplesperrow, align 8, !tbaa !74
  %36 = load i64, i64* %samplesperrow, align 8, !tbaa !74
  %conv26 = trunc i64 %36 to i32
  store i32 %conv26, i32* %jd_samplesperrow, align 4, !tbaa !6
  %37 = load i32, i32* %jd_samplesperrow, align 4, !tbaa !6
  %conv27 = zext i32 %37 to i64
  %38 = load i64, i64* %samplesperrow, align 8, !tbaa !74
  %cmp28 = icmp ne i64 %conv27, %38
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.21
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !60
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 5
  store i32 69, i32* %msg_code32, align 4, !tbaa !61
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !60
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 0
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8, !tbaa !63
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %45 = bitcast %struct.jpeg_compress_struct* %44 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* %45)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.21
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 11
  %47 = load i32, i32* %data_precision, align 4, !tbaa !75
  %cmp36 = icmp ne i32 %47, 8
  br i1 %cmp36, label %if.then.38, label %if.end.48

if.then.38:                                       ; preds = %if.end.35
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !60
  %msg_code40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 5
  store i32 13, i32* %msg_code40, align 4, !tbaa !61
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 11
  %51 = load i32, i32* %data_precision41, align 4, !tbaa !75
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8, !tbaa !60
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 6
  %i44 = bitcast %union.anon* %msg_parm43 to [8 x i32]*
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %i44, i32 0, i64 0
  store i32 %51, i32* %arrayidx45, align 4, !tbaa !6
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8, !tbaa !60
  %error_exit47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 0
  %56 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit47, align 8, !tbaa !63
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %58 = bitcast %struct.jpeg_compress_struct* %57 to %struct.jpeg_common_struct*
  call void %56(%struct.jpeg_common_struct* %58)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.38, %if.end.35
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 12
  %60 = load i32, i32* %num_components49, align 4, !tbaa !72
  %cmp50 = icmp sgt i32 %60, 10
  br i1 %cmp50, label %if.then.52, label %if.end.66

if.then.52:                                       ; preds = %if.end.48
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8, !tbaa !60
  %msg_code54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 24, i32* %msg_code54, align 4, !tbaa !61
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 12
  %64 = load i32, i32* %num_components55, align 4, !tbaa !72
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err56, align 8, !tbaa !60
  %msg_parm57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 6
  %i58 = bitcast %union.anon* %msg_parm57 to [8 x i32]*
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %i58, i32 0, i64 0
  store i32 %64, i32* %arrayidx59, align 4, !tbaa !6
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8, !tbaa !60
  %msg_parm61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 6
  %i62 = bitcast %union.anon* %msg_parm61 to [8 x i32]*
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %i62, i32 0, i64 1
  store i32 10, i32* %arrayidx63, align 4, !tbaa !6
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err64 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err64, align 8, !tbaa !60
  %error_exit65 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 0
  %71 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit65, align 8, !tbaa !63
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %73 = bitcast %struct.jpeg_compress_struct* %72 to %struct.jpeg_common_struct*
  call void %71(%struct.jpeg_common_struct* %73)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.52, %if.end.48
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 38
  store i32 1, i32* %max_h_samp_factor, align 4, !tbaa !76
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 39
  store i32 1, i32* %max_v_samp_factor, align 4, !tbaa !77
  store i32 0, i32* %ci, align 4, !tbaa !6
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 14
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !78
  store %struct.jpeg_component_info* %77, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.66
  %78 = load i32, i32* %ci, align 4, !tbaa !6
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 12
  %80 = load i32, i32* %num_components67, align 4, !tbaa !72
  %cmp68 = icmp slt i32 %78, %80
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 2
  %82 = load i32, i32* %h_samp_factor, align 4, !tbaa !79
  %cmp70 = icmp sle i32 %82, 0
  br i1 %cmp70, label %if.then.83, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %for.body
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor73 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 2
  %84 = load i32, i32* %h_samp_factor73, align 4, !tbaa !79
  %cmp74 = icmp sgt i32 %84, 4
  br i1 %cmp74, label %if.then.83, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.72
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 3
  %86 = load i32, i32* %v_samp_factor, align 4, !tbaa !81
  %cmp77 = icmp sle i32 %86, 0
  br i1 %cmp77, label %if.then.83, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %lor.lhs.false.76
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i32 0, i32 3
  %88 = load i32, i32* %v_samp_factor80, align 4, !tbaa !81
  %cmp81 = icmp sgt i32 %88, 4
  br i1 %cmp81, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %lor.lhs.false.79, %lor.lhs.false.76, %lor.lhs.false.72, %for.body
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err84, align 8, !tbaa !60
  %msg_code85 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 5
  store i32 16, i32* %msg_code85, align 4, !tbaa !61
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 0
  %92 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err86, align 8, !tbaa !60
  %error_exit87 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %92, i32 0, i32 0
  %93 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit87, align 8, !tbaa !63
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %95 = bitcast %struct.jpeg_compress_struct* %94 to %struct.jpeg_common_struct*
  call void %93(%struct.jpeg_common_struct* %95)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %lor.lhs.false.79
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor89 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %96, i32 0, i32 38
  %97 = load i32, i32* %max_h_samp_factor89, align 4, !tbaa !76
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor90 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %98, i32 0, i32 2
  %99 = load i32, i32* %h_samp_factor90, align 4, !tbaa !79
  %cmp91 = icmp sgt i32 %97, %99
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.88
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 38
  %101 = load i32, i32* %max_h_samp_factor93, align 4, !tbaa !76
  br label %cond.end

cond.false:                                       ; preds = %if.end.88
  %102 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor94 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %102, i32 0, i32 2
  %103 = load i32, i32* %h_samp_factor94, align 4, !tbaa !79
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %101, %cond.true ], [ %103, %cond.false ]
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 38
  store i32 %cond, i32* %max_h_samp_factor95, align 4, !tbaa !76
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 39
  %106 = load i32, i32* %max_v_samp_factor96, align 4, !tbaa !77
  %107 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor97 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %107, i32 0, i32 3
  %108 = load i32, i32* %v_samp_factor97, align 4, !tbaa !81
  %cmp98 = icmp sgt i32 %106, %108
  br i1 %cmp98, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %cond.end
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor101 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 39
  %110 = load i32, i32* %max_v_samp_factor101, align 4, !tbaa !77
  br label %cond.end.104

cond.false.102:                                   ; preds = %cond.end
  %111 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor103 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %111, i32 0, i32 3
  %112 = load i32, i32* %v_samp_factor103, align 4, !tbaa !81
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.100
  %cond105 = phi i32 [ %110, %cond.true.100 ], [ %112, %cond.false.102 ]
  %113 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor106 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %113, i32 0, i32 39
  store i32 %cond105, i32* %max_v_samp_factor106, align 4, !tbaa !77
  br label %for.inc

for.inc:                                          ; preds = %cond.end.104
  %114 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %114, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %115 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %115, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ci, align 4, !tbaa !6
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %116, i32 0, i32 14
  %117 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info107, align 8, !tbaa !78
  store %struct.jpeg_component_info* %117, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.150, %for.end
  %118 = load i32, i32* %ci, align 4, !tbaa !6
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 12
  %120 = load i32, i32* %num_components109, align 4, !tbaa !72
  %cmp110 = icmp slt i32 %118, %120
  br i1 %cmp110, label %for.body.112, label %for.end.153

for.body.112:                                     ; preds = %for.cond.108
  %121 = load i32, i32* %ci, align 4, !tbaa !6
  %122 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %122, i32 0, i32 1
  store i32 %121, i32* %component_index, align 4, !tbaa !82
  %123 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %123, i32 0, i32 9
  store i32 8, i32* %DCT_scaled_size, align 4, !tbaa !83
  %124 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width113 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %124, i32 0, i32 6
  %125 = load i32, i32* %image_width113, align 4, !tbaa !71
  %conv114 = zext i32 %125 to i64
  %126 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor115 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %126, i32 0, i32 2
  %127 = load i32, i32* %h_samp_factor115, align 4, !tbaa !79
  %conv116 = sext i32 %127 to i64
  %mul117 = mul nsw i64 %conv114, %conv116
  %128 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %128, i32 0, i32 38
  %129 = load i32, i32* %max_h_samp_factor118, align 4, !tbaa !76
  %mul119 = mul nsw i32 %129, 8
  %conv120 = sext i32 %mul119 to i64
  %call = call i64 @jdiv_round_up(i64 %mul117, i64 %conv120)
  %conv121 = trunc i64 %call to i32
  %130 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %130, i32 0, i32 7
  store i32 %conv121, i32* %width_in_blocks, align 4, !tbaa !84
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %131, i32 0, i32 7
  %132 = load i32, i32* %image_height122, align 4, !tbaa !70
  %conv123 = zext i32 %132 to i64
  %133 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor124 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %133, i32 0, i32 3
  %134 = load i32, i32* %v_samp_factor124, align 4, !tbaa !81
  %conv125 = sext i32 %134 to i64
  %mul126 = mul nsw i64 %conv123, %conv125
  %135 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor127 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %135, i32 0, i32 39
  %136 = load i32, i32* %max_v_samp_factor127, align 4, !tbaa !77
  %mul128 = mul nsw i32 %136, 8
  %conv129 = sext i32 %mul128 to i64
  %call130 = call i64 @jdiv_round_up(i64 %mul126, i64 %conv129)
  %conv131 = trunc i64 %call130 to i32
  %137 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %137, i32 0, i32 8
  store i32 %conv131, i32* %height_in_blocks, align 4, !tbaa !85
  %138 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %138, i32 0, i32 6
  %139 = load i32, i32* %image_width132, align 4, !tbaa !71
  %conv133 = zext i32 %139 to i64
  %140 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor134 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %140, i32 0, i32 2
  %141 = load i32, i32* %h_samp_factor134, align 4, !tbaa !79
  %conv135 = sext i32 %141 to i64
  %mul136 = mul nsw i64 %conv133, %conv135
  %142 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor137 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %142, i32 0, i32 38
  %143 = load i32, i32* %max_h_samp_factor137, align 4, !tbaa !76
  %conv138 = sext i32 %143 to i64
  %call139 = call i64 @jdiv_round_up(i64 %mul136, i64 %conv138)
  %conv140 = trunc i64 %call139 to i32
  %144 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %144, i32 0, i32 10
  store i32 %conv140, i32* %downsampled_width, align 4, !tbaa !86
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height141 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %145, i32 0, i32 7
  %146 = load i32, i32* %image_height141, align 4, !tbaa !70
  %conv142 = zext i32 %146 to i64
  %147 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor143 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %147, i32 0, i32 3
  %148 = load i32, i32* %v_samp_factor143, align 4, !tbaa !81
  %conv144 = sext i32 %148 to i64
  %mul145 = mul nsw i64 %conv142, %conv144
  %149 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor146 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %149, i32 0, i32 39
  %150 = load i32, i32* %max_v_samp_factor146, align 4, !tbaa !77
  %conv147 = sext i32 %150 to i64
  %call148 = call i64 @jdiv_round_up(i64 %mul145, i64 %conv147)
  %conv149 = trunc i64 %call148 to i32
  %151 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i32 0, i32 11
  store i32 %conv149, i32* %downsampled_height, align 4, !tbaa !87
  %152 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %152, i32 0, i32 12
  store i32 1, i32* %component_needed, align 4, !tbaa !88
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.112
  %153 = load i32, i32* %ci, align 4, !tbaa !6
  %inc151 = add nsw i32 %153, 1
  store i32 %inc151, i32* %ci, align 4, !tbaa !6
  %154 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr152 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %154, i32 1
  store %struct.jpeg_component_info* %incdec.ptr152, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.108

for.end.153:                                      ; preds = %for.cond.108
  %155 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height154 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %155, i32 0, i32 7
  %156 = load i32, i32* %image_height154, align 4, !tbaa !70
  %conv155 = zext i32 %156 to i64
  %157 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor156 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %157, i32 0, i32 39
  %158 = load i32, i32* %max_v_samp_factor156, align 4, !tbaa !77
  %mul157 = mul nsw i32 %158, 8
  %conv158 = sext i32 %mul157 to i64
  %call159 = call i64 @jdiv_round_up(i64 %conv155, i64 %conv158)
  %conv160 = trunc i64 %call159 to i32
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %159, i32 0, i32 40
  store i32 %conv160, i32* %total_iMCU_rows, align 4, !tbaa !89
  %160 = bitcast i32* %jd_samplesperrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #3
  %161 = bitcast i64* %samplesperrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #3
  %162 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #3
  %163 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @validate_script(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %scanptr = alloca %struct.jpeg_scan_info*, align 8
  %scanno = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %thisi = alloca i32, align 4
  %Ss = alloca i32, align 4
  %Se = alloca i32, align 4
  %Ah = alloca i32, align 4
  %Al = alloca i32, align 4
  %component_sent = alloca [10 x i32], align 16
  %last_bitpos_ptr = alloca i32*, align 8
  %last_bitpos = alloca [10 x [64 x i32]], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.jpeg_scan_info** %scanptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %scanno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %thisi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %Ss to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %Ah to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast [10 x i32]* %component_sent to i8*
  call void @llvm.lifetime.start(i64 40, i8* %10) #3
  %11 = bitcast i32** %last_bitpos_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast [10 x [64 x i32]]* %last_bitpos to i8*
  call void @llvm.lifetime.start(i64 2560, i8* %12) #3
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 21
  %14 = load i32, i32* %num_scans, align 4, !tbaa !24
  %cmp = icmp sle i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !60
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 17, i32* %msg_code, align 4, !tbaa !61
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !60
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4, !tbaa !6
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !60
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !63
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 22
  %25 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scan_info, align 8, !tbaa !22
  store %struct.jpeg_scan_info* %25, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %26 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Ss3 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %26, i32 0, i32 2
  %27 = load i32, i32* %Ss3, align 4, !tbaa !90
  %cmp4 = icmp ne i32 %27, 0
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %28 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Se5 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %28, i32 0, i32 3
  %29 = load i32, i32* %Se5, align 4, !tbaa !92
  %cmp6 = icmp ne i32 %29, 63
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 37
  store i32 1, i32* %progressive_mode, align 4, !tbaa !23
  %arrayidx8 = getelementptr inbounds [10 x [64 x i32]], [10 x [64 x i32]]* %last_bitpos, i32 0, i64 0
  %arrayidx9 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx8, i32 0, i64 0
  store i32* %arrayidx9, i32** %last_bitpos_ptr, align 8, !tbaa !2
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.then.7
  %31 = load i32, i32* %ci, align 4, !tbaa !6
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 12
  %33 = load i32, i32* %num_components, align 4, !tbaa !72
  %cmp10 = icmp slt i32 %31, %33
  br i1 %cmp10, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %coefi, align 4, !tbaa !6
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %34 = load i32, i32* %coefi, align 4, !tbaa !6
  %cmp12 = icmp slt i32 %34, 64
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %35 = load i32*, i32** %last_bitpos_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr, i32** %last_bitpos_ptr, align 8, !tbaa !2
  store i32 -1, i32* %35, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %36 = load i32, i32* %coefi, align 4, !tbaa !6
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %coefi, align 4, !tbaa !6
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %37 = load i32, i32* %ci, align 4, !tbaa !6
  %inc15 = add nsw i32 %37, 1
  store i32 %inc15, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  br label %if.end.26

if.else:                                          ; preds = %lor.lhs.false
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 37
  store i32 0, i32* %progressive_mode17, align 4, !tbaa !23
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.23, %if.else
  %39 = load i32, i32* %ci, align 4, !tbaa !6
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 12
  %41 = load i32, i32* %num_components19, align 4, !tbaa !72
  %cmp20 = icmp slt i32 %39, %41
  br i1 %cmp20, label %for.body.21, label %for.end.25

for.body.21:                                      ; preds = %for.cond.18
  %42 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %42 to i64
  %arrayidx22 = getelementptr inbounds [10 x i32], [10 x i32]* %component_sent, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx22, align 4, !tbaa !6
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.21
  %43 = load i32, i32* %ci, align 4, !tbaa !6
  %inc24 = add nsw i32 %43, 1
  store i32 %inc24, i32* %ci, align 4, !tbaa !6
  br label %for.cond.18

for.end.25:                                       ; preds = %for.cond.18
  br label %if.end.26

if.end.26:                                        ; preds = %for.end.25, %for.end.16
  store i32 1, i32* %scanno, align 4, !tbaa !6
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.252, %if.end.26
  %44 = load i32, i32* %scanno, align 4, !tbaa !6
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_scans28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 21
  %46 = load i32, i32* %num_scans28, align 4, !tbaa !24
  %cmp29 = icmp sle i32 %44, %46
  br i1 %cmp29, label %for.body.30, label %for.end.255

for.body.30:                                      ; preds = %for.cond.27
  %47 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %47, i32 0, i32 0
  %48 = load i32, i32* %comps_in_scan, align 4, !tbaa !93
  store i32 %48, i32* %ncomps, align 4, !tbaa !6
  %49 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp31 = icmp sle i32 %49, 0
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %for.body.30
  %50 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp33 = icmp sgt i32 %50, 4
  br i1 %cmp33, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %lor.lhs.false.32, %for.body.30
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !60
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 5
  store i32 24, i32* %msg_code36, align 4, !tbaa !61
  %53 = load i32, i32* %ncomps, align 4, !tbaa !6
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !60
  %msg_parm38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 6
  %i39 = bitcast %union.anon* %msg_parm38 to [8 x i32]*
  %arrayidx40 = getelementptr inbounds [8 x i32], [8 x i32]* %i39, i32 0, i64 0
  store i32 %53, i32* %arrayidx40, align 4, !tbaa !6
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err41, align 8, !tbaa !60
  %msg_parm42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 6
  %i43 = bitcast %union.anon* %msg_parm42 to [8 x i32]*
  %arrayidx44 = getelementptr inbounds [8 x i32], [8 x i32]* %i43, i32 0, i64 1
  store i32 4, i32* %arrayidx44, align 4, !tbaa !6
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err45, align 8, !tbaa !60
  %error_exit46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 0
  %60 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit46, align 8, !tbaa !63
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %62 = bitcast %struct.jpeg_compress_struct* %61 to %struct.jpeg_common_struct*
  call void %60(%struct.jpeg_common_struct* %62)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.34, %lor.lhs.false.32
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.82, %if.end.47
  %63 = load i32, i32* %ci, align 4, !tbaa !6
  %64 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp49 = icmp slt i32 %63, %64
  br i1 %cmp49, label %for.body.50, label %for.end.84

for.body.50:                                      ; preds = %for.cond.48
  %65 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom51 = sext i32 %65 to i64
  %66 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %66, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index, i32 0, i64 %idxprom51
  %67 = load i32, i32* %arrayidx52, align 4, !tbaa !6
  store i32 %67, i32* %thisi, align 4, !tbaa !6
  %68 = load i32, i32* %thisi, align 4, !tbaa !6
  %cmp53 = icmp slt i32 %68, 0
  br i1 %cmp53, label %if.then.57, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %for.body.50
  %69 = load i32, i32* %thisi, align 4, !tbaa !6
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 12
  %71 = load i32, i32* %num_components55, align 4, !tbaa !72
  %cmp56 = icmp sge i32 %69, %71
  br i1 %cmp56, label %if.then.57, label %if.end.66

if.then.57:                                       ; preds = %lor.lhs.false.54, %for.body.50
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8, !tbaa !60
  %msg_code59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 5
  store i32 17, i32* %msg_code59, align 4, !tbaa !61
  %74 = load i32, i32* %scanno, align 4, !tbaa !6
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8, !tbaa !60
  %msg_parm61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 6
  %i62 = bitcast %union.anon* %msg_parm61 to [8 x i32]*
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %i62, i32 0, i64 0
  store i32 %74, i32* %arrayidx63, align 4, !tbaa !6
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err64 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err64, align 8, !tbaa !60
  %error_exit65 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 0
  %79 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit65, align 8, !tbaa !63
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %81 = bitcast %struct.jpeg_compress_struct* %80 to %struct.jpeg_common_struct*
  call void %79(%struct.jpeg_common_struct* %81)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.57, %lor.lhs.false.54
  %82 = load i32, i32* %ci, align 4, !tbaa !6
  %cmp67 = icmp sgt i32 %82, 0
  br i1 %cmp67, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %if.end.66
  %83 = load i32, i32* %thisi, align 4, !tbaa !6
  %84 = load i32, i32* %ci, align 4, !tbaa !6
  %sub = sub nsw i32 %84, 1
  %idxprom68 = sext i32 %sub to i64
  %85 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %component_index69 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %85, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index69, i32 0, i64 %idxprom68
  %86 = load i32, i32* %arrayidx70, align 4, !tbaa !6
  %cmp71 = icmp sle i32 %83, %86
  br i1 %cmp71, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %land.lhs.true
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err73, align 8, !tbaa !60
  %msg_code74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 5
  store i32 17, i32* %msg_code74, align 4, !tbaa !61
  %89 = load i32, i32* %scanno, align 4, !tbaa !6
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err75, align 8, !tbaa !60
  %msg_parm76 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 6
  %i77 = bitcast %union.anon* %msg_parm76 to [8 x i32]*
  %arrayidx78 = getelementptr inbounds [8 x i32], [8 x i32]* %i77, i32 0, i64 0
  store i32 %89, i32* %arrayidx78, align 4, !tbaa !6
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 0
  %93 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8, !tbaa !60
  %error_exit80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %93, i32 0, i32 0
  %94 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit80, align 8, !tbaa !63
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %96 = bitcast %struct.jpeg_compress_struct* %95 to %struct.jpeg_common_struct*
  call void %94(%struct.jpeg_common_struct* %96)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.72, %land.lhs.true, %if.end.66
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %97 = load i32, i32* %ci, align 4, !tbaa !6
  %inc83 = add nsw i32 %97, 1
  store i32 %inc83, i32* %ci, align 4, !tbaa !6
  br label %for.cond.48

for.end.84:                                       ; preds = %for.cond.48
  %98 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Ss85 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %98, i32 0, i32 2
  %99 = load i32, i32* %Ss85, align 4, !tbaa !90
  store i32 %99, i32* %Ss, align 4, !tbaa !6
  %100 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Se86 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %100, i32 0, i32 3
  %101 = load i32, i32* %Se86, align 4, !tbaa !92
  store i32 %101, i32* %Se, align 4, !tbaa !6
  %102 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Ah87 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %102, i32 0, i32 4
  %103 = load i32, i32* %Ah87, align 4, !tbaa !94
  store i32 %103, i32* %Ah, align 4, !tbaa !6
  %104 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Al88 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %104, i32 0, i32 5
  %105 = load i32, i32* %Al88, align 4, !tbaa !95
  store i32 %105, i32* %Al, align 4, !tbaa !6
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode89 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 37
  %107 = load i32, i32* %progressive_mode89, align 4, !tbaa !23
  %tobool = icmp ne i32 %107, 0
  br i1 %tobool, label %if.then.90, label %if.else.209

if.then.90:                                       ; preds = %for.end.84
  %108 = load i32, i32* %Ss, align 4, !tbaa !6
  %cmp91 = icmp slt i32 %108, 0
  br i1 %cmp91, label %if.then.106, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.then.90
  %109 = load i32, i32* %Ss, align 4, !tbaa !6
  %cmp93 = icmp sge i32 %109, 64
  br i1 %cmp93, label %if.then.106, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %lor.lhs.false.92
  %110 = load i32, i32* %Se, align 4, !tbaa !6
  %111 = load i32, i32* %Ss, align 4, !tbaa !6
  %cmp95 = icmp slt i32 %110, %111
  br i1 %cmp95, label %if.then.106, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.94
  %112 = load i32, i32* %Se, align 4, !tbaa !6
  %cmp97 = icmp sge i32 %112, 64
  br i1 %cmp97, label %if.then.106, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %lor.lhs.false.96
  %113 = load i32, i32* %Ah, align 4, !tbaa !6
  %cmp99 = icmp slt i32 %113, 0
  br i1 %cmp99, label %if.then.106, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.98
  %114 = load i32, i32* %Ah, align 4, !tbaa !6
  %cmp101 = icmp sgt i32 %114, 13
  br i1 %cmp101, label %if.then.106, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.100
  %115 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp103 = icmp slt i32 %115, 0
  br i1 %cmp103, label %if.then.106, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.102
  %116 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp105 = icmp sgt i32 %116, 13
  br i1 %cmp105, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %lor.lhs.false.104, %lor.lhs.false.102, %lor.lhs.false.100, %lor.lhs.false.98, %lor.lhs.false.96, %lor.lhs.false.94, %lor.lhs.false.92, %if.then.90
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %117, i32 0, i32 0
  %118 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err107, align 8, !tbaa !60
  %msg_code108 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %118, i32 0, i32 5
  store i32 15, i32* %msg_code108, align 4, !tbaa !61
  %119 = load i32, i32* %scanno, align 4, !tbaa !6
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 0
  %121 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err109, align 8, !tbaa !60
  %msg_parm110 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %121, i32 0, i32 6
  %i111 = bitcast %union.anon* %msg_parm110 to [8 x i32]*
  %arrayidx112 = getelementptr inbounds [8 x i32], [8 x i32]* %i111, i32 0, i64 0
  store i32 %119, i32* %arrayidx112, align 4, !tbaa !6
  %122 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err113 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %122, i32 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err113, align 8, !tbaa !60
  %error_exit114 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i32 0, i32 0
  %124 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit114, align 8, !tbaa !63
  %125 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %126 = bitcast %struct.jpeg_compress_struct* %125 to %struct.jpeg_common_struct*
  call void %124(%struct.jpeg_common_struct* %126)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.106, %lor.lhs.false.104
  %127 = load i32, i32* %Ss, align 4, !tbaa !6
  %cmp116 = icmp eq i32 %127, 0
  br i1 %cmp116, label %if.then.117, label %if.else.129

if.then.117:                                      ; preds = %if.end.115
  %128 = load i32, i32* %Se, align 4, !tbaa !6
  %cmp118 = icmp ne i32 %128, 0
  br i1 %cmp118, label %if.then.119, label %if.end.128

if.then.119:                                      ; preds = %if.then.117
  %129 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %129, i32 0, i32 0
  %130 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err120, align 8, !tbaa !60
  %msg_code121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %130, i32 0, i32 5
  store i32 15, i32* %msg_code121, align 4, !tbaa !61
  %131 = load i32, i32* %scanno, align 4, !tbaa !6
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %132, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err122, align 8, !tbaa !60
  %msg_parm123 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 6
  %i124 = bitcast %union.anon* %msg_parm123 to [8 x i32]*
  %arrayidx125 = getelementptr inbounds [8 x i32], [8 x i32]* %i124, i32 0, i64 0
  store i32 %131, i32* %arrayidx125, align 4, !tbaa !6
  %134 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err126 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %134, i32 0, i32 0
  %135 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err126, align 8, !tbaa !60
  %error_exit127 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %135, i32 0, i32 0
  %136 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit127, align 8, !tbaa !63
  %137 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %138 = bitcast %struct.jpeg_compress_struct* %137 to %struct.jpeg_common_struct*
  call void %136(%struct.jpeg_common_struct* %138)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.119, %if.then.117
  br label %if.end.141

if.else.129:                                      ; preds = %if.end.115
  %139 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp130 = icmp ne i32 %139, 1
  br i1 %cmp130, label %if.then.131, label %if.end.140

if.then.131:                                      ; preds = %if.else.129
  %140 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %140, i32 0, i32 0
  %141 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err132, align 8, !tbaa !60
  %msg_code133 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %141, i32 0, i32 5
  store i32 15, i32* %msg_code133, align 4, !tbaa !61
  %142 = load i32, i32* %scanno, align 4, !tbaa !6
  %143 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err134 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %143, i32 0, i32 0
  %144 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err134, align 8, !tbaa !60
  %msg_parm135 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %144, i32 0, i32 6
  %i136 = bitcast %union.anon* %msg_parm135 to [8 x i32]*
  %arrayidx137 = getelementptr inbounds [8 x i32], [8 x i32]* %i136, i32 0, i64 0
  store i32 %142, i32* %arrayidx137, align 4, !tbaa !6
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %145, i32 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err138, align 8, !tbaa !60
  %error_exit139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 0
  %147 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit139, align 8, !tbaa !63
  %148 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %149 = bitcast %struct.jpeg_compress_struct* %148 to %struct.jpeg_common_struct*
  call void %147(%struct.jpeg_common_struct* %149)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.131, %if.else.129
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.128
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.206, %if.end.141
  %150 = load i32, i32* %ci, align 4, !tbaa !6
  %151 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp143 = icmp slt i32 %150, %151
  br i1 %cmp143, label %for.body.144, label %for.end.208

for.body.144:                                     ; preds = %for.cond.142
  %152 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom145 = sext i32 %152 to i64
  %153 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %component_index146 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %153, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index146, i32 0, i64 %idxprom145
  %154 = load i32, i32* %arrayidx147, align 4, !tbaa !6
  %idxprom148 = sext i32 %154 to i64
  %arrayidx149 = getelementptr inbounds [10 x [64 x i32]], [10 x [64 x i32]]* %last_bitpos, i32 0, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx149, i32 0, i64 0
  store i32* %arrayidx150, i32** %last_bitpos_ptr, align 8, !tbaa !2
  %155 = load i32, i32* %Ss, align 4, !tbaa !6
  %cmp151 = icmp ne i32 %155, 0
  br i1 %cmp151, label %land.lhs.true.152, label %if.end.164

land.lhs.true.152:                                ; preds = %for.body.144
  %156 = load i32*, i32** %last_bitpos_ptr, align 8, !tbaa !2
  %arrayidx153 = getelementptr inbounds i32, i32* %156, i64 0
  %157 = load i32, i32* %arrayidx153, align 4, !tbaa !6
  %cmp154 = icmp slt i32 %157, 0
  br i1 %cmp154, label %if.then.155, label %if.end.164

if.then.155:                                      ; preds = %land.lhs.true.152
  %158 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err156 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %158, i32 0, i32 0
  %159 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err156, align 8, !tbaa !60
  %msg_code157 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %159, i32 0, i32 5
  store i32 15, i32* %msg_code157, align 4, !tbaa !61
  %160 = load i32, i32* %scanno, align 4, !tbaa !6
  %161 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err158 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %161, i32 0, i32 0
  %162 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err158, align 8, !tbaa !60
  %msg_parm159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %162, i32 0, i32 6
  %i160 = bitcast %union.anon* %msg_parm159 to [8 x i32]*
  %arrayidx161 = getelementptr inbounds [8 x i32], [8 x i32]* %i160, i32 0, i64 0
  store i32 %160, i32* %arrayidx161, align 4, !tbaa !6
  %163 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err162 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %163, i32 0, i32 0
  %164 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err162, align 8, !tbaa !60
  %error_exit163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %164, i32 0, i32 0
  %165 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit163, align 8, !tbaa !63
  %166 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %167 = bitcast %struct.jpeg_compress_struct* %166 to %struct.jpeg_common_struct*
  call void %165(%struct.jpeg_common_struct* %167)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.155, %land.lhs.true.152, %for.body.144
  %168 = load i32, i32* %Ss, align 4, !tbaa !6
  store i32 %168, i32* %coefi, align 4, !tbaa !6
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.203, %if.end.164
  %169 = load i32, i32* %coefi, align 4, !tbaa !6
  %170 = load i32, i32* %Se, align 4, !tbaa !6
  %cmp166 = icmp sle i32 %169, %170
  br i1 %cmp166, label %for.body.167, label %for.end.205

for.body.167:                                     ; preds = %for.cond.165
  %171 = load i32, i32* %coefi, align 4, !tbaa !6
  %idxprom168 = sext i32 %171 to i64
  %172 = load i32*, i32** %last_bitpos_ptr, align 8, !tbaa !2
  %arrayidx169 = getelementptr inbounds i32, i32* %172, i64 %idxprom168
  %173 = load i32, i32* %arrayidx169, align 4, !tbaa !6
  %cmp170 = icmp slt i32 %173, 0
  br i1 %cmp170, label %if.then.171, label %if.else.183

if.then.171:                                      ; preds = %for.body.167
  %174 = load i32, i32* %Ah, align 4, !tbaa !6
  %cmp172 = icmp ne i32 %174, 0
  br i1 %cmp172, label %if.then.173, label %if.end.182

if.then.173:                                      ; preds = %if.then.171
  %175 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %175, i32 0, i32 0
  %176 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err174, align 8, !tbaa !60
  %msg_code175 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %176, i32 0, i32 5
  store i32 15, i32* %msg_code175, align 4, !tbaa !61
  %177 = load i32, i32* %scanno, align 4, !tbaa !6
  %178 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err176 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %178, i32 0, i32 0
  %179 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err176, align 8, !tbaa !60
  %msg_parm177 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %179, i32 0, i32 6
  %i178 = bitcast %union.anon* %msg_parm177 to [8 x i32]*
  %arrayidx179 = getelementptr inbounds [8 x i32], [8 x i32]* %i178, i32 0, i64 0
  store i32 %177, i32* %arrayidx179, align 4, !tbaa !6
  %180 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err180 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %180, i32 0, i32 0
  %181 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err180, align 8, !tbaa !60
  %error_exit181 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %181, i32 0, i32 0
  %182 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit181, align 8, !tbaa !63
  %183 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %184 = bitcast %struct.jpeg_compress_struct* %183 to %struct.jpeg_common_struct*
  call void %182(%struct.jpeg_common_struct* %184)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.173, %if.then.171
  br label %if.end.200

if.else.183:                                      ; preds = %for.body.167
  %185 = load i32, i32* %Ah, align 4, !tbaa !6
  %186 = load i32, i32* %coefi, align 4, !tbaa !6
  %idxprom184 = sext i32 %186 to i64
  %187 = load i32*, i32** %last_bitpos_ptr, align 8, !tbaa !2
  %arrayidx185 = getelementptr inbounds i32, i32* %187, i64 %idxprom184
  %188 = load i32, i32* %arrayidx185, align 4, !tbaa !6
  %cmp186 = icmp ne i32 %185, %188
  br i1 %cmp186, label %if.then.190, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %if.else.183
  %189 = load i32, i32* %Al, align 4, !tbaa !6
  %190 = load i32, i32* %Ah, align 4, !tbaa !6
  %sub188 = sub nsw i32 %190, 1
  %cmp189 = icmp ne i32 %189, %sub188
  br i1 %cmp189, label %if.then.190, label %if.end.199

if.then.190:                                      ; preds = %lor.lhs.false.187, %if.else.183
  %191 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err191 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %191, i32 0, i32 0
  %192 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err191, align 8, !tbaa !60
  %msg_code192 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %192, i32 0, i32 5
  store i32 15, i32* %msg_code192, align 4, !tbaa !61
  %193 = load i32, i32* %scanno, align 4, !tbaa !6
  %194 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err193 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %194, i32 0, i32 0
  %195 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err193, align 8, !tbaa !60
  %msg_parm194 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %195, i32 0, i32 6
  %i195 = bitcast %union.anon* %msg_parm194 to [8 x i32]*
  %arrayidx196 = getelementptr inbounds [8 x i32], [8 x i32]* %i195, i32 0, i64 0
  store i32 %193, i32* %arrayidx196, align 4, !tbaa !6
  %196 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err197 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %196, i32 0, i32 0
  %197 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err197, align 8, !tbaa !60
  %error_exit198 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %197, i32 0, i32 0
  %198 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit198, align 8, !tbaa !63
  %199 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %200 = bitcast %struct.jpeg_compress_struct* %199 to %struct.jpeg_common_struct*
  call void %198(%struct.jpeg_common_struct* %200)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.190, %lor.lhs.false.187
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.182
  %201 = load i32, i32* %Al, align 4, !tbaa !6
  %202 = load i32, i32* %coefi, align 4, !tbaa !6
  %idxprom201 = sext i32 %202 to i64
  %203 = load i32*, i32** %last_bitpos_ptr, align 8, !tbaa !2
  %arrayidx202 = getelementptr inbounds i32, i32* %203, i64 %idxprom201
  store i32 %201, i32* %arrayidx202, align 4, !tbaa !6
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.200
  %204 = load i32, i32* %coefi, align 4, !tbaa !6
  %inc204 = add nsw i32 %204, 1
  store i32 %inc204, i32* %coefi, align 4, !tbaa !6
  br label %for.cond.165

for.end.205:                                      ; preds = %for.cond.165
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.end.205
  %205 = load i32, i32* %ci, align 4, !tbaa !6
  %inc207 = add nsw i32 %205, 1
  store i32 %inc207, i32* %ci, align 4, !tbaa !6
  br label %for.cond.142

for.end.208:                                      ; preds = %for.cond.142
  br label %if.end.251

if.else.209:                                      ; preds = %for.end.84
  %206 = load i32, i32* %Ss, align 4, !tbaa !6
  %cmp210 = icmp ne i32 %206, 0
  br i1 %cmp210, label %if.then.217, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %if.else.209
  %207 = load i32, i32* %Se, align 4, !tbaa !6
  %cmp212 = icmp ne i32 %207, 63
  br i1 %cmp212, label %if.then.217, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %lor.lhs.false.211
  %208 = load i32, i32* %Ah, align 4, !tbaa !6
  %cmp214 = icmp ne i32 %208, 0
  br i1 %cmp214, label %if.then.217, label %lor.lhs.false.215

lor.lhs.false.215:                                ; preds = %lor.lhs.false.213
  %209 = load i32, i32* %Al, align 4, !tbaa !6
  %cmp216 = icmp ne i32 %209, 0
  br i1 %cmp216, label %if.then.217, label %if.end.226

if.then.217:                                      ; preds = %lor.lhs.false.215, %lor.lhs.false.213, %lor.lhs.false.211, %if.else.209
  %210 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err218 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %210, i32 0, i32 0
  %211 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err218, align 8, !tbaa !60
  %msg_code219 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %211, i32 0, i32 5
  store i32 15, i32* %msg_code219, align 4, !tbaa !61
  %212 = load i32, i32* %scanno, align 4, !tbaa !6
  %213 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err220 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %213, i32 0, i32 0
  %214 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err220, align 8, !tbaa !60
  %msg_parm221 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %214, i32 0, i32 6
  %i222 = bitcast %union.anon* %msg_parm221 to [8 x i32]*
  %arrayidx223 = getelementptr inbounds [8 x i32], [8 x i32]* %i222, i32 0, i64 0
  store i32 %212, i32* %arrayidx223, align 4, !tbaa !6
  %215 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err224 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %215, i32 0, i32 0
  %216 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err224, align 8, !tbaa !60
  %error_exit225 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %216, i32 0, i32 0
  %217 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit225, align 8, !tbaa !63
  %218 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %219 = bitcast %struct.jpeg_compress_struct* %218 to %struct.jpeg_common_struct*
  call void %217(%struct.jpeg_common_struct* %219)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.217, %lor.lhs.false.215
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.248, %if.end.226
  %220 = load i32, i32* %ci, align 4, !tbaa !6
  %221 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp228 = icmp slt i32 %220, %221
  br i1 %cmp228, label %for.body.229, label %for.end.250

for.body.229:                                     ; preds = %for.cond.227
  %222 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom230 = sext i32 %222 to i64
  %223 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %component_index231 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %223, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index231, i32 0, i64 %idxprom230
  %224 = load i32, i32* %arrayidx232, align 4, !tbaa !6
  store i32 %224, i32* %thisi, align 4, !tbaa !6
  %225 = load i32, i32* %thisi, align 4, !tbaa !6
  %idxprom233 = sext i32 %225 to i64
  %arrayidx234 = getelementptr inbounds [10 x i32], [10 x i32]* %component_sent, i32 0, i64 %idxprom233
  %226 = load i32, i32* %arrayidx234, align 4, !tbaa !6
  %tobool235 = icmp ne i32 %226, 0
  br i1 %tobool235, label %if.then.236, label %if.end.245

if.then.236:                                      ; preds = %for.body.229
  %227 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err237 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %227, i32 0, i32 0
  %228 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err237, align 8, !tbaa !60
  %msg_code238 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %228, i32 0, i32 5
  store i32 17, i32* %msg_code238, align 4, !tbaa !61
  %229 = load i32, i32* %scanno, align 4, !tbaa !6
  %230 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err239 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %230, i32 0, i32 0
  %231 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err239, align 8, !tbaa !60
  %msg_parm240 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %231, i32 0, i32 6
  %i241 = bitcast %union.anon* %msg_parm240 to [8 x i32]*
  %arrayidx242 = getelementptr inbounds [8 x i32], [8 x i32]* %i241, i32 0, i64 0
  store i32 %229, i32* %arrayidx242, align 4, !tbaa !6
  %232 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err243 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %232, i32 0, i32 0
  %233 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err243, align 8, !tbaa !60
  %error_exit244 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %233, i32 0, i32 0
  %234 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit244, align 8, !tbaa !63
  %235 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %236 = bitcast %struct.jpeg_compress_struct* %235 to %struct.jpeg_common_struct*
  call void %234(%struct.jpeg_common_struct* %236)
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.236, %for.body.229
  %237 = load i32, i32* %thisi, align 4, !tbaa !6
  %idxprom246 = sext i32 %237 to i64
  %arrayidx247 = getelementptr inbounds [10 x i32], [10 x i32]* %component_sent, i32 0, i64 %idxprom246
  store i32 1, i32* %arrayidx247, align 4, !tbaa !6
  br label %for.inc.248

for.inc.248:                                      ; preds = %if.end.245
  %238 = load i32, i32* %ci, align 4, !tbaa !6
  %inc249 = add nsw i32 %238, 1
  store i32 %inc249, i32* %ci, align 4, !tbaa !6
  br label %for.cond.227

for.end.250:                                      ; preds = %for.cond.227
  br label %if.end.251

if.end.251:                                       ; preds = %for.end.250, %for.end.208
  br label %for.inc.252

for.inc.252:                                      ; preds = %if.end.251
  %239 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %incdec.ptr253 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %239, i32 1
  store %struct.jpeg_scan_info* %incdec.ptr253, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %240 = load i32, i32* %scanno, align 4, !tbaa !6
  %inc254 = add nsw i32 %240, 1
  store i32 %inc254, i32* %scanno, align 4, !tbaa !6
  br label %for.cond.27

for.end.255:                                      ; preds = %for.cond.27
  %241 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode256 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %241, i32 0, i32 37
  %242 = load i32, i32* %progressive_mode256, align 4, !tbaa !23
  %tobool257 = icmp ne i32 %242, 0
  br i1 %tobool257, label %if.then.258, label %if.else.276

if.then.258:                                      ; preds = %for.end.255
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.259

for.cond.259:                                     ; preds = %for.inc.273, %if.then.258
  %243 = load i32, i32* %ci, align 4, !tbaa !6
  %244 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components260 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %244, i32 0, i32 12
  %245 = load i32, i32* %num_components260, align 4, !tbaa !72
  %cmp261 = icmp slt i32 %243, %245
  br i1 %cmp261, label %for.body.262, label %for.end.275

for.body.262:                                     ; preds = %for.cond.259
  %246 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom263 = sext i32 %246 to i64
  %arrayidx264 = getelementptr inbounds [10 x [64 x i32]], [10 x [64 x i32]]* %last_bitpos, i32 0, i64 %idxprom263
  %arrayidx265 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx264, i32 0, i64 0
  %247 = load i32, i32* %arrayidx265, align 4, !tbaa !6
  %cmp266 = icmp slt i32 %247, 0
  br i1 %cmp266, label %if.then.267, label %if.end.272

if.then.267:                                      ; preds = %for.body.262
  %248 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err268 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %248, i32 0, i32 0
  %249 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err268, align 8, !tbaa !60
  %msg_code269 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %249, i32 0, i32 5
  store i32 44, i32* %msg_code269, align 4, !tbaa !61
  %250 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err270 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %250, i32 0, i32 0
  %251 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err270, align 8, !tbaa !60
  %error_exit271 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %251, i32 0, i32 0
  %252 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit271, align 8, !tbaa !63
  %253 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %254 = bitcast %struct.jpeg_compress_struct* %253 to %struct.jpeg_common_struct*
  call void %252(%struct.jpeg_common_struct* %254)
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.267, %for.body.262
  br label %for.inc.273

for.inc.273:                                      ; preds = %if.end.272
  %255 = load i32, i32* %ci, align 4, !tbaa !6
  %inc274 = add nsw i32 %255, 1
  store i32 %inc274, i32* %ci, align 4, !tbaa !6
  br label %for.cond.259

for.end.275:                                      ; preds = %for.cond.259
  br label %if.end.293

if.else.276:                                      ; preds = %for.end.255
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.277

for.cond.277:                                     ; preds = %for.inc.290, %if.else.276
  %256 = load i32, i32* %ci, align 4, !tbaa !6
  %257 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components278 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %257, i32 0, i32 12
  %258 = load i32, i32* %num_components278, align 4, !tbaa !72
  %cmp279 = icmp slt i32 %256, %258
  br i1 %cmp279, label %for.body.280, label %for.end.292

for.body.280:                                     ; preds = %for.cond.277
  %259 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom281 = sext i32 %259 to i64
  %arrayidx282 = getelementptr inbounds [10 x i32], [10 x i32]* %component_sent, i32 0, i64 %idxprom281
  %260 = load i32, i32* %arrayidx282, align 4, !tbaa !6
  %tobool283 = icmp ne i32 %260, 0
  br i1 %tobool283, label %if.end.289, label %if.then.284

if.then.284:                                      ; preds = %for.body.280
  %261 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err285 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %261, i32 0, i32 0
  %262 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err285, align 8, !tbaa !60
  %msg_code286 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %262, i32 0, i32 5
  store i32 44, i32* %msg_code286, align 4, !tbaa !61
  %263 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err287 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %263, i32 0, i32 0
  %264 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err287, align 8, !tbaa !60
  %error_exit288 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %264, i32 0, i32 0
  %265 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit288, align 8, !tbaa !63
  %266 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %267 = bitcast %struct.jpeg_compress_struct* %266 to %struct.jpeg_common_struct*
  call void %265(%struct.jpeg_common_struct* %267)
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.284, %for.body.280
  br label %for.inc.290

for.inc.290:                                      ; preds = %if.end.289
  %268 = load i32, i32* %ci, align 4, !tbaa !6
  %inc291 = add nsw i32 %268, 1
  store i32 %inc291, i32* %ci, align 4, !tbaa !6
  br label %for.cond.277

for.end.292:                                      ; preds = %for.cond.277
  br label %if.end.293

if.end.293:                                       ; preds = %for.end.292, %for.end.275
  %269 = bitcast [10 x [64 x i32]]* %last_bitpos to i8*
  call void @llvm.lifetime.end(i64 2560, i8* %269) #3
  %270 = bitcast i32** %last_bitpos_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #3
  %271 = bitcast [10 x i32]* %component_sent to i8*
  call void @llvm.lifetime.end(i64 40, i8* %271) #3
  %272 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #3
  %273 = bitcast i32* %Ah to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #3
  %274 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #3
  %275 = bitcast i32* %Ss to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #3
  %276 = bitcast i32* %thisi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #3
  %277 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #3
  %278 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #3
  %279 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #3
  %280 = bitcast i32* %scanno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #3
  %281 = bitcast %struct.jpeg_scan_info** %scanptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @select_scan_parameters(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  %master = alloca %struct.my_comp_master*, align 8
  %scanptr = alloca %struct.jpeg_scan_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 22
  %2 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scan_info, align 8, !tbaa !22
  %cmp = icmp ne %struct.jpeg_scan_info* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 51
  %5 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master1, align 8, !tbaa !15
  %6 = bitcast %struct.jpeg_comp_master* %5 to %struct.my_comp_master*
  store %struct.my_comp_master* %6, %struct.my_comp_master** %master, align 8, !tbaa !2
  %7 = bitcast %struct.jpeg_scan_info** %scanptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %scan_info2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 22
  %9 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scan_info2, align 8, !tbaa !22
  %10 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !2
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %10, i32 0, i32 4
  %11 = load i32, i32* %scan_number, align 4, !tbaa !27
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %9, i64 %idx.ext
  store %struct.jpeg_scan_info* %add.ptr, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %12 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %12, i32 0, i32 0
  %13 = load i32, i32* %comps_in_scan, align 4, !tbaa !93
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 41
  store i32 %13, i32* %comps_in_scan3, align 4, !tbaa !96
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %ci, align 4, !tbaa !6
  %16 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %comps_in_scan4 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %16, i32 0, i32 0
  %17 = load i32, i32* %comps_in_scan4, align 4, !tbaa !93
  %cmp5 = icmp slt i32 %15, %17
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %19, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %component_index, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %idxprom6 = sext i32 %20 to i64
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 14
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !78
  %arrayidx7 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i64 %idxprom6
  %23 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom8 = sext i32 %23 to i64
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 42
  %arrayidx9 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom8
  store %struct.jpeg_component_info* %arrayidx7, %struct.jpeg_component_info** %arrayidx9, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %26, i32 0, i32 2
  %27 = load i32, i32* %Ss, align 4, !tbaa !90
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 47
  store i32 %27, i32* %Ss10, align 4, !tbaa !53
  %29 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Se = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %29, i32 0, i32 3
  %30 = load i32, i32* %Se, align 4, !tbaa !92
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 48
  store i32 %30, i32* %Se11, align 4, !tbaa !97
  %32 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %32, i32 0, i32 4
  %33 = load i32, i32* %Ah, align 4, !tbaa !94
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 49
  store i32 %33, i32* %Ah12, align 4, !tbaa !54
  %35 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Al = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %35, i32 0, i32 5
  %36 = load i32, i32* %Al, align 4, !tbaa !95
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 50
  store i32 %36, i32* %Al13, align 4, !tbaa !98
  %38 = bitcast %struct.jpeg_scan_info** %scanptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #3
  %39 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  br label %if.end.43

if.else:                                          ; preds = %entry
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 12
  %41 = load i32, i32* %num_components, align 4, !tbaa !72
  %cmp14 = icmp sgt i32 %41, 4
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !60
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 24, i32* %msg_code, align 4, !tbaa !61
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 12
  %45 = load i32, i32* %num_components16, align 4, !tbaa !72
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !60
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %45, i32* %arrayidx18, align 4, !tbaa !6
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !60
  %msg_parm20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 6
  %i21 = bitcast %union.anon* %msg_parm20 to [8 x i32]*
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* %i21, i32 0, i64 1
  store i32 4, i32* %arrayidx22, align 4, !tbaa !6
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8, !tbaa !60
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 0
  %52 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !63
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %54 = bitcast %struct.jpeg_compress_struct* %53 to %struct.jpeg_common_struct*
  call void %52(%struct.jpeg_common_struct* %54)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 12
  %56 = load i32, i32* %num_components24, align 4, !tbaa !72
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 41
  store i32 %56, i32* %comps_in_scan25, align 4, !tbaa !96
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.36, %if.end
  %58 = load i32, i32* %ci, align 4, !tbaa !6
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 12
  %60 = load i32, i32* %num_components27, align 4, !tbaa !72
  %cmp28 = icmp slt i32 %58, %60
  br i1 %cmp28, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.26
  %61 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom30 = sext i32 %61 to i64
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 14
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info31, align 8, !tbaa !78
  %arrayidx32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i64 %idxprom30
  %64 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom33 = sext i32 %64 to i64
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 42
  %arrayidx35 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info34, i32 0, i64 %idxprom33
  store %struct.jpeg_component_info* %arrayidx32, %struct.jpeg_component_info** %arrayidx35, align 8, !tbaa !2
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.29
  %66 = load i32, i32* %ci, align 4, !tbaa !6
  %inc37 = add nsw i32 %66, 1
  store i32 %inc37, i32* %ci, align 4, !tbaa !6
  br label %for.cond.26

for.end.38:                                       ; preds = %for.cond.26
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 47
  store i32 0, i32* %Ss39, align 4, !tbaa !53
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 48
  store i32 63, i32* %Se40, align 4, !tbaa !97
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 49
  store i32 0, i32* %Ah41, align 4, !tbaa !54
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 50
  store i32 0, i32* %Al42, align 4, !tbaa !98
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.38, %for.end
  %71 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @per_scan_setup(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  %mcublks = alloca i32, align 4
  %tmp = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %nominal = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %mcublks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 41
  %5 = load i32, i32* %comps_in_scan, align 4, !tbaa !96
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %7 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %7, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 7
  %9 = load i32, i32* %width_in_blocks, align 4, !tbaa !84
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 43
  store i32 %9, i32* %MCUs_per_row, align 4, !tbaa !99
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 8
  %12 = load i32, i32* %height_in_blocks, align 4, !tbaa !85
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 44
  store i32 %12, i32* %MCU_rows_in_scan, align 4, !tbaa !100
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 0, i32 13
  store i32 1, i32* %MCU_width, align 4, !tbaa !101
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 14
  store i32 1, i32* %MCU_height, align 4, !tbaa !102
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 15
  store i32 1, i32* %MCU_blocks, align 4, !tbaa !103
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 16
  store i32 8, i32* %MCU_sample_width, align 4, !tbaa !104
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 17
  store i32 1, i32* %last_col_width, align 4, !tbaa !105
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks2 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 8
  %20 = load i32, i32* %height_in_blocks2, align 4, !tbaa !85
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 3
  %22 = load i32, i32* %v_samp_factor, align 4, !tbaa !81
  %rem = urem i32 %20, %22
  store i32 %rem, i32* %tmp, align 4, !tbaa !6
  %23 = load i32, i32* %tmp, align 4, !tbaa !6
  %cmp3 = icmp eq i32 %23, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 3
  %25 = load i32, i32* %v_samp_factor5, align 4, !tbaa !81
  store i32 %25, i32* %tmp, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %26 = load i32, i32* %tmp, align 4, !tbaa !6
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 18
  store i32 %26, i32* %last_row_height, align 4, !tbaa !106
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 45
  store i32 1, i32* %blocks_in_MCU, align 4, !tbaa !107
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 46
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4, !tbaa !6
  br label %if.end.81

if.else:                                          ; preds = %entry
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 41
  %31 = load i32, i32* %comps_in_scan7, align 4, !tbaa !96
  %cmp8 = icmp sle i32 %31, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 41
  %33 = load i32, i32* %comps_in_scan9, align 4, !tbaa !96
  %cmp10 = icmp sgt i32 %33, 4
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !60
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 5
  store i32 24, i32* %msg_code, align 4, !tbaa !61
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 41
  %37 = load i32, i32* %comps_in_scan12, align 4, !tbaa !96
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !60
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %37, i32* %arrayidx14, align 4, !tbaa !6
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !60
  %msg_parm16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 6
  %i17 = bitcast %union.anon* %msg_parm16 to [8 x i32]*
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %i17, i32 0, i64 1
  store i32 4, i32* %arrayidx18, align 4, !tbaa !6
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !60
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 0
  %44 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !63
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %46 = bitcast %struct.jpeg_compress_struct* %45 to %struct.jpeg_common_struct*
  call void %44(%struct.jpeg_common_struct* %46)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %lor.lhs.false
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 6
  %48 = load i32, i32* %image_width, align 4, !tbaa !71
  %conv = zext i32 %48 to i64
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 38
  %50 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !76
  %mul = mul nsw i32 %50, 8
  %conv21 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 %conv, i64 %conv21)
  %conv22 = trunc i64 %call to i32
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 43
  store i32 %conv22, i32* %MCUs_per_row23, align 4, !tbaa !99
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 7
  %53 = load i32, i32* %image_height, align 4, !tbaa !70
  %conv24 = zext i32 %53 to i64
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 39
  %55 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !77
  %mul25 = mul nsw i32 %55, 8
  %conv26 = sext i32 %mul25 to i64
  %call27 = call i64 @jdiv_round_up(i64 %conv24, i64 %conv26)
  %conv28 = trunc i64 %call27 to i32
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_rows_in_scan29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 44
  store i32 %conv28, i32* %MCU_rows_in_scan29, align 4, !tbaa !100
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 45
  store i32 0, i32* %blocks_in_MCU30, align 4, !tbaa !107
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %58 = load i32, i32* %ci, align 4, !tbaa !6
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 41
  %60 = load i32, i32* %comps_in_scan31, align 4, !tbaa !96
  %cmp32 = icmp slt i32 %58, %60
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %61 to i64
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 42
  %arrayidx35 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info34, i32 0, i64 %idxprom
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx35, align 8, !tbaa !2
  store %struct.jpeg_component_info* %63, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i32 0, i32 2
  %65 = load i32, i32* %h_samp_factor, align 4, !tbaa !79
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 13
  store i32 %65, i32* %MCU_width36, align 4, !tbaa !101
  %67 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %67, i32 0, i32 3
  %68 = load i32, i32* %v_samp_factor37, align 4, !tbaa !81
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 14
  store i32 %68, i32* %MCU_height38, align 4, !tbaa !102
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 0, i32 13
  %71 = load i32, i32* %MCU_width39, align 4, !tbaa !101
  %72 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %72, i32 0, i32 14
  %73 = load i32, i32* %MCU_height40, align 4, !tbaa !102
  %mul41 = mul nsw i32 %71, %73
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_blocks42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 15
  store i32 %mul41, i32* %MCU_blocks42, align 4, !tbaa !103
  %75 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %75, i32 0, i32 13
  %76 = load i32, i32* %MCU_width43, align 4, !tbaa !101
  %mul44 = mul nsw i32 %76, 8
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_sample_width45 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 16
  store i32 %mul44, i32* %MCU_sample_width45, align 4, !tbaa !104
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 7
  %79 = load i32, i32* %width_in_blocks46, align 4, !tbaa !84
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 13
  %81 = load i32, i32* %MCU_width47, align 4, !tbaa !101
  %rem48 = urem i32 %79, %81
  store i32 %rem48, i32* %tmp, align 4, !tbaa !6
  %82 = load i32, i32* %tmp, align 4, !tbaa !6
  %cmp49 = icmp eq i32 %82, 0
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %for.body
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width52 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 13
  %84 = load i32, i32* %MCU_width52, align 4, !tbaa !101
  store i32 %84, i32* %tmp, align 4, !tbaa !6
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %for.body
  %85 = load i32, i32* %tmp, align 4, !tbaa !6
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_col_width54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %86, i32 0, i32 17
  store i32 %85, i32* %last_col_width54, align 4, !tbaa !105
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i32 0, i32 8
  %88 = load i32, i32* %height_in_blocks55, align 4, !tbaa !85
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %89, i32 0, i32 14
  %90 = load i32, i32* %MCU_height56, align 4, !tbaa !102
  %rem57 = urem i32 %88, %90
  store i32 %rem57, i32* %tmp, align 4, !tbaa !6
  %91 = load i32, i32* %tmp, align 4, !tbaa !6
  %cmp58 = icmp eq i32 %91, 0
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.53
  %92 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height61 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i32 0, i32 14
  %93 = load i32, i32* %MCU_height61, align 4, !tbaa !102
  store i32 %93, i32* %tmp, align 4, !tbaa !6
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.53
  %94 = load i32, i32* %tmp, align 4, !tbaa !6
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_row_height63 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 18
  store i32 %94, i32* %last_row_height63, align 4, !tbaa !106
  %96 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_blocks64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %96, i32 0, i32 15
  %97 = load i32, i32* %MCU_blocks64, align 4, !tbaa !103
  store i32 %97, i32* %mcublks, align 4, !tbaa !6
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 45
  %99 = load i32, i32* %blocks_in_MCU65, align 4, !tbaa !107
  %100 = load i32, i32* %mcublks, align 4, !tbaa !6
  %add = add nsw i32 %99, %100
  %cmp66 = icmp sgt i32 %add, 10
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %if.end.62
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err69, align 8, !tbaa !60
  %msg_code70 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 5
  store i32 11, i32* %msg_code70, align 4, !tbaa !61
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8, !tbaa !60
  %error_exit72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 0
  %105 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit72, align 8, !tbaa !63
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %107 = bitcast %struct.jpeg_compress_struct* %106 to %struct.jpeg_common_struct*
  call void %105(%struct.jpeg_common_struct* %107)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %if.end.62
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.73
  %108 = load i32, i32* %mcublks, align 4, !tbaa !6
  %dec = add nsw i32 %108, -1
  store i32 %dec, i32* %mcublks, align 4, !tbaa !6
  %cmp74 = icmp sgt i32 %108, 0
  br i1 %cmp74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %109 = load i32, i32* %ci, align 4, !tbaa !6
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %110, i32 0, i32 45
  %111 = load i32, i32* %blocks_in_MCU76, align 4, !tbaa !107
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %blocks_in_MCU76, align 4, !tbaa !107
  %idxprom77 = sext i32 %111 to i64
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_membership78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 46
  %arrayidx79 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership78, i32 0, i64 %idxprom77
  store i32 %109, i32* %arrayidx79, align 4, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %113 = load i32, i32* %ci, align 4, !tbaa !6
  %inc80 = add nsw i32 %113, 1
  store i32 %inc80, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.81

if.end.81:                                        ; preds = %for.end, %if.end
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 30
  %115 = load i32, i32* %restart_in_rows, align 4, !tbaa !108
  %cmp82 = icmp sgt i32 %115, 0
  br i1 %cmp82, label %if.then.84, label %if.end.94

if.then.84:                                       ; preds = %if.end.81
  %116 = bitcast i64* %nominal to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #3
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_in_rows86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %117, i32 0, i32 30
  %118 = load i32, i32* %restart_in_rows86, align 4, !tbaa !108
  %conv87 = sext i32 %118 to i64
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row88 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 43
  %120 = load i32, i32* %MCUs_per_row88, align 4, !tbaa !99
  %conv89 = zext i32 %120 to i64
  %mul90 = mul nsw i64 %conv87, %conv89
  store i64 %mul90, i64* %nominal, align 8, !tbaa !74
  %121 = load i64, i64* %nominal, align 8, !tbaa !74
  %cmp91 = icmp slt i64 %121, 65535
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.84
  %122 = load i64, i64* %nominal, align 8, !tbaa !74
  br label %cond.end

cond.false:                                       ; preds = %if.then.84
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %122, %cond.true ], [ 65535, %cond.false ]
  %conv93 = trunc i64 %cond to i32
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 29
  store i32 %conv93, i32* %restart_interval, align 4, !tbaa !109
  %124 = bitcast i64* %nominal to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #3
  br label %if.end.94

if.end.94:                                        ; preds = %cond.end, %if.end.81
  %125 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #3
  %126 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #3
  %127 = bitcast i32* %mcublks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #3
  %128 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #3
  ret void
}

declare i64 @jdiv_round_up(i64, i64) #2

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
!15 = !{!9, !3, i64 424}
!16 = !{!17, !3, i64 0}
!17 = !{!"", !18, i64 0, !4, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!18 = !{!"jpeg_comp_master", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28}
!19 = !{!17, !3, i64 8}
!20 = !{!17, !3, i64 16}
!21 = !{!17, !7, i64 28}
!22 = !{!9, !3, i64 240}
!23 = !{!9, !7, i64 300}
!24 = !{!9, !7, i64 232}
!25 = !{!9, !7, i64 256}
!26 = !{!17, !4, i64 32}
!27 = !{!17, !7, i64 44}
!28 = !{!17, !7, i64 36}
!29 = !{!17, !7, i64 40}
!30 = !{!9, !7, i64 248}
!31 = !{!9, !3, i64 464}
!32 = !{!33, !3, i64 0}
!33 = !{!"jpeg_color_converter", !3, i64 0, !3, i64 8}
!34 = !{!9, !3, i64 472}
!35 = !{!36, !3, i64 0}
!36 = !{!"jpeg_downsampler", !3, i64 0, !3, i64 8, !7, i64 16}
!37 = !{!9, !3, i64 440}
!38 = !{!39, !3, i64 0}
!39 = !{!"jpeg_c_prep_controller", !3, i64 0, !3, i64 8}
!40 = !{!9, !3, i64 480}
!41 = !{!42, !3, i64 0}
!42 = !{!"jpeg_forward_dct", !3, i64 0, !3, i64 8}
!43 = !{!9, !3, i64 488}
!44 = !{!45, !3, i64 0}
!45 = !{!"jpeg_entropy_encoder", !3, i64 0, !3, i64 8, !3, i64 16}
!46 = !{!9, !3, i64 448}
!47 = !{!48, !3, i64 0}
!48 = !{!"jpeg_c_coef_controller", !3, i64 0, !3, i64 8}
!49 = !{!9, !3, i64 432}
!50 = !{!51, !3, i64 0}
!51 = !{!"jpeg_c_main_controller", !3, i64 0, !3, i64 8}
!52 = !{!17, !7, i64 24}
!53 = !{!9, !7, i64 404}
!54 = !{!9, !7, i64 412}
!55 = !{!9, !7, i64 252}
!56 = !{!9, !3, i64 456}
!57 = !{!58, !3, i64 16}
!58 = !{!"jpeg_marker_writer", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40}
!59 = !{!58, !3, i64 24}
!60 = !{!9, !3, i64 0}
!61 = !{!62, !7, i64 40}
!62 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !4, i64 44, !7, i64 124, !14, i64 128, !3, i64 136, !7, i64 144, !3, i64 152, !7, i64 160, !7, i64 164}
!63 = !{!62, !3, i64 0}
!64 = !{!9, !3, i64 16}
!65 = !{!66, !7, i64 24}
!66 = !{!"jpeg_progress_mgr", !3, i64 0, !14, i64 8, !14, i64 16, !7, i64 24, !7, i64 28}
!67 = !{!66, !7, i64 28}
!68 = !{!18, !7, i64 24}
!69 = !{!45, !3, i64 16}
!70 = !{!9, !7, i64 44}
!71 = !{!9, !7, i64 40}
!72 = !{!9, !7, i64 68}
!73 = !{!9, !7, i64 48}
!74 = !{!14, !14, i64 0}
!75 = !{!9, !7, i64 64}
!76 = !{!9, !7, i64 304}
!77 = !{!9, !7, i64 308}
!78 = !{!9, !3, i64 80}
!79 = !{!80, !7, i64 8}
!80 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!81 = !{!80, !7, i64 12}
!82 = !{!80, !7, i64 4}
!83 = !{!80, !7, i64 36}
!84 = !{!80, !7, i64 28}
!85 = !{!80, !7, i64 32}
!86 = !{!80, !7, i64 40}
!87 = !{!80, !7, i64 44}
!88 = !{!80, !7, i64 48}
!89 = !{!9, !7, i64 312}
!90 = !{!91, !7, i64 20}
!91 = !{!"", !7, i64 0, !4, i64 4, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!92 = !{!91, !7, i64 24}
!93 = !{!91, !7, i64 0}
!94 = !{!91, !7, i64 28}
!95 = !{!91, !7, i64 32}
!96 = !{!9, !7, i64 316}
!97 = !{!9, !7, i64 408}
!98 = !{!9, !7, i64 416}
!99 = !{!9, !7, i64 352}
!100 = !{!9, !7, i64 356}
!101 = !{!80, !7, i64 52}
!102 = !{!80, !7, i64 56}
!103 = !{!80, !7, i64 60}
!104 = !{!80, !7, i64 64}
!105 = !{!80, !7, i64 68}
!106 = !{!80, !7, i64 72}
!107 = !{!9, !7, i64 360}
!108 = !{!9, !7, i64 276}
!109 = !{!9, !7, i64 272}
