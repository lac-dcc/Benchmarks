; ModuleID = 'jdinput.c'
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
%struct.my_input_controller = type { %struct.jpeg_input_controller, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_input_controller(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %inputctl = alloca %struct.my_input_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 0, i64 48)
  %6 = bitcast i8* %call to %struct.my_input_controller*
  store %struct.my_input_controller* %6, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %7 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %8 = bitcast %struct.my_input_controller* %7 to %struct.jpeg_input_controller*
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 77
  store %struct.jpeg_input_controller* %8, %struct.jpeg_input_controller** %inputctl1, align 8, !tbaa !14
  %10 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %10, i32 0, i32 0
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !15
  %11 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %11, i32 0, i32 0
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub2, i32 0, i32 1
  %reset_input_controller3 = bitcast {}** %reset_input_controller to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @reset_input_controller, void (%struct.jpeg_decompress_struct*)** %reset_input_controller3, align 8, !tbaa !18
  %12 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %12, i32 0, i32 0
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub4, i32 0, i32 2
  %start_input_pass5 = bitcast {}** %start_input_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_input_pass, void (%struct.jpeg_decompress_struct*)** %start_input_pass5, align 8, !tbaa !19
  %13 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub6 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %13, i32 0, i32 0
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub6, i32 0, i32 3
  %finish_input_pass7 = bitcast {}** %finish_input_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_input_pass, void (%struct.jpeg_decompress_struct*)** %finish_input_pass7, align 8, !tbaa !20
  %14 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub8 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %14, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub8, i32 0, i32 4
  store i32 0, i32* %has_multiple_scans, align 4, !tbaa !21
  %15 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub9 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %15, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub9, i32 0, i32 5
  store i32 0, i32* %eoi_reached, align 4, !tbaa !22
  %16 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %inheaders = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %16, i32 0, i32 1
  store i32 1, i32* %inheaders, align 4, !tbaa !23
  %17 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #5
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @consume_markers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %inputctl = alloca %struct.my_input_controller*, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 77
  %2 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_input_controller* %2 to %struct.my_input_controller*
  store %struct.my_input_controller* %3, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %4 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %5, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub, i32 0, i32 5
  %6 = load i32, i32* %eoi_reached, align 4, !tbaa !22
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 78
  %8 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %8, i32 0, i32 1
  %9 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %read_markers, align 8, !tbaa !25
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %9(%struct.jpeg_decompress_struct* %10)
  store i32 %call, i32* %val, align 4, !tbaa !27
  %11 = load i32, i32* %val, align 4, !tbaa !27
  switch i32 %11, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.11
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %inheaders = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %12, i32 0, i32 1
  %13 = load i32, i32* %inheaders, align 4, !tbaa !23
  %tobool2 = icmp ne i32 %13, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %sw.bb
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @initial_setup(%struct.jpeg_decompress_struct* %14)
  %15 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %inheaders4 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %15, i32 0, i32 1
  store i32 0, i32* %inheaders4, align 4, !tbaa !23
  br label %if.end.10

if.else:                                          ; preds = %sw.bb
  %16 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %16, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub5, i32 0, i32 4
  %17 = load i32, i32* %has_multiple_scans, align 4, !tbaa !21
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !28
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 34, i32* %msg_code, align 4, !tbaa !29
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !28
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !31
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.else
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @start_input_pass(%struct.jpeg_decompress_struct* %25)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %26 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub12 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %26, i32 0, i32 0
  %eoi_reached13 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub12, i32 0, i32 5
  store i32 1, i32* %eoi_reached13, align 4, !tbaa !22
  %27 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %inheaders14 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %27, i32 0, i32 1
  %28 = load i32, i32* %inheaders14, align 4, !tbaa !23
  %tobool15 = icmp ne i32 %28, 0
  br i1 %tobool15, label %if.then.16, label %if.else.25

if.then.16:                                       ; preds = %sw.bb.11
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 78
  %30 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker17, align 8, !tbaa !24
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %30, i32 0, i32 6
  %31 = load i32, i32* %saw_SOF, align 4, !tbaa !32
  %tobool18 = icmp ne i32 %31, 0
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.then.16
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !28
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 58, i32* %msg_code21, align 4, !tbaa !29
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !28
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit23, align 8, !tbaa !31
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %38 = bitcast %struct.jpeg_decompress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* %38)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %if.then.16
  br label %if.end.30

if.else.25:                                       ; preds = %sw.bb.11
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 36
  %40 = load i32, i32* %output_scan_number, align 4, !tbaa !33
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 34
  %42 = load i32, i32* %input_scan_number, align 4, !tbaa !34
  %cmp = icmp sgt i32 %40, %42
  br i1 %cmp, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.else.25
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 34
  %44 = load i32, i32* %input_scan_number27, align 4, !tbaa !34
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_scan_number28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 36
  store i32 %44, i32* %output_scan_number28, align 4, !tbaa !33
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.else.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.24
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end, %if.end.30, %if.end.10
  %46 = load i32, i32* %val, align 4, !tbaa !27
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %47 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #5
  %48 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #5
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind ssp uwtable
define internal void @reset_input_controller(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %inputctl = alloca %struct.my_input_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 77
  %2 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_input_controller* %2 to %struct.my_input_controller*
  store %struct.my_input_controller* %3, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %4 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i32 0, i32 0
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !15
  %5 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %5, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub2, i32 0, i32 4
  store i32 0, i32* %has_multiple_scans, align 4, !tbaa !21
  %6 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %6, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub3, i32 0, i32 5
  store i32 0, i32* %eoi_reached, align 4, !tbaa !22
  %7 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !2
  %inheaders = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %7, i32 0, i32 1
  store i32 1, i32* %inheaders, align 4, !tbaa !23
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !28
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 4
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %reset_error_mgr, align 8, !tbaa !35
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12)
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 78
  %14 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %reset_marker_reader = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %14, i32 0, i32 0
  %reset_marker_reader4 = bitcast {}** %reset_marker_reader to void (%struct.jpeg_decompress_struct*)**
  %15 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %reset_marker_reader4, align 8, !tbaa !36
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %15(%struct.jpeg_decompress_struct* %16)
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 38
  store [64 x i32]* null, [64 x i32]** %coef_bits, align 8, !tbaa !37
  %18 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @per_scan_setup(%struct.jpeg_decompress_struct* %0)
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @latch_quant_tables(%struct.jpeg_decompress_struct* %1)
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 79
  %3 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8, !tbaa !38
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %3, i32 0, i32 0
  %start_pass1 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  %4 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass1, align 8, !tbaa !39
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %4(%struct.jpeg_decompress_struct* %5)
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 75
  %7 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8, !tbaa !41
  %start_input_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %7, i32 0, i32 0
  %start_input_pass2 = bitcast {}** %start_input_pass to void (%struct.jpeg_decompress_struct*)**
  %8 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_input_pass2, align 8, !tbaa !42
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %8(%struct.jpeg_decompress_struct* %9)
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 75
  %11 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef3, align 8, !tbaa !41
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %11, i32 0, i32 1
  %12 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_data, align 8, !tbaa !44
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 77
  %14 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !14
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %14, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* %12, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 77
  %1 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !14
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %1, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @initial_setup(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #5
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 7
  %3 = load i32, i32* %image_height, align 4, !tbaa !46
  %conv = zext i32 %3 to i64
  %cmp = icmp sgt i64 %conv, 65500
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 6
  %5 = load i32, i32* %image_width, align 4, !tbaa !47
  %conv2 = zext i32 %5 to i64
  %cmp3 = icmp sgt i64 %conv2, 65500
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !28
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 40, i32* %msg_code, align 4, !tbaa !29
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !28
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 65500, i32* %arrayidx, align 4, !tbaa !27
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !28
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !31
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 42
  %16 = load i32, i32* %data_precision, align 4, !tbaa !48
  %cmp7 = icmp ne i32 %16, 8
  br i1 %cmp7, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %if.end
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !28
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 13, i32* %msg_code11, align 4, !tbaa !29
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 42
  %20 = load i32, i32* %data_precision12, align 4, !tbaa !48
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !28
  %msg_parm14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 6
  %i15 = bitcast %union.anon* %msg_parm14 to [8 x i32]*
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* %i15, i32 0, i64 0
  store i32 %20, i32* %arrayidx16, align 4, !tbaa !27
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !28
  %error_exit18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit18, align 8, !tbaa !31
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.9, %if.end
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 8
  %29 = load i32, i32* %num_components, align 4, !tbaa !49
  %cmp20 = icmp sgt i32 %29, 10
  br i1 %cmp20, label %if.then.22, label %if.end.36

if.then.22:                                       ; preds = %if.end.19
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8, !tbaa !28
  %msg_code24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 24, i32* %msg_code24, align 4, !tbaa !29
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 8
  %33 = load i32, i32* %num_components25, align 4, !tbaa !49
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err26, align 8, !tbaa !28
  %msg_parm27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 6
  %i28 = bitcast %union.anon* %msg_parm27 to [8 x i32]*
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %i28, i32 0, i64 0
  store i32 %33, i32* %arrayidx29, align 4, !tbaa !27
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8, !tbaa !28
  %msg_parm31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 6
  %i32 = bitcast %union.anon* %msg_parm31 to [8 x i32]*
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %i32, i32 0, i64 1
  store i32 10, i32* %arrayidx33, align 4, !tbaa !27
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err34, align 8, !tbaa !28
  %error_exit35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit35, align 8, !tbaa !31
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %42 = bitcast %struct.jpeg_decompress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.22, %if.end.19
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 57
  store i32 1, i32* %max_h_samp_factor, align 4, !tbaa !50
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 58
  store i32 1, i32* %max_v_samp_factor, align 4, !tbaa !51
  store i32 0, i32* %ci, align 4, !tbaa !27
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 43
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !52
  store %struct.jpeg_component_info* %46, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %47 = load i32, i32* %ci, align 4, !tbaa !27
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 8
  %49 = load i32, i32* %num_components37, align 4, !tbaa !49
  %cmp38 = icmp slt i32 %47, %49
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 2
  %51 = load i32, i32* %h_samp_factor, align 4, !tbaa !53
  %cmp40 = icmp sle i32 %51, 0
  br i1 %cmp40, label %if.then.53, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %for.body
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 2
  %53 = load i32, i32* %h_samp_factor43, align 4, !tbaa !53
  %cmp44 = icmp sgt i32 %53, 4
  br i1 %cmp44, label %if.then.53, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.42
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 3
  %55 = load i32, i32* %v_samp_factor, align 4, !tbaa !55
  %cmp47 = icmp sle i32 %55, 0
  br i1 %cmp47, label %if.then.53, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.46
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 3
  %57 = load i32, i32* %v_samp_factor50, align 4, !tbaa !55
  %cmp51 = icmp sgt i32 %57, 4
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false.46, %lor.lhs.false.42, %for.body
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err54, align 8, !tbaa !28
  %msg_code55 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 5
  store i32 16, i32* %msg_code55, align 4, !tbaa !29
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err56, align 8, !tbaa !28
  %error_exit57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 0
  %62 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit57, align 8, !tbaa !31
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %64 = bitcast %struct.jpeg_decompress_struct* %63 to %struct.jpeg_common_struct*
  call void %62(%struct.jpeg_common_struct* %64)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %lor.lhs.false.49
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 57
  %66 = load i32, i32* %max_h_samp_factor59, align 4, !tbaa !50
  %67 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor60 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %67, i32 0, i32 2
  %68 = load i32, i32* %h_samp_factor60, align 4, !tbaa !53
  %cmp61 = icmp sgt i32 %66, %68
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.58
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 57
  %70 = load i32, i32* %max_h_samp_factor63, align 4, !tbaa !50
  br label %cond.end

cond.false:                                       ; preds = %if.end.58
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 2
  %72 = load i32, i32* %h_samp_factor64, align 4, !tbaa !53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %70, %cond.true ], [ %72, %cond.false ]
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 57
  store i32 %cond, i32* %max_h_samp_factor65, align 4, !tbaa !50
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 58
  %75 = load i32, i32* %max_v_samp_factor66, align 4, !tbaa !51
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %76, i32 0, i32 3
  %77 = load i32, i32* %v_samp_factor67, align 4, !tbaa !55
  %cmp68 = icmp sgt i32 %75, %77
  br i1 %cmp68, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %cond.end
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 58
  %79 = load i32, i32* %max_v_samp_factor71, align 4, !tbaa !51
  br label %cond.end.74

cond.false.72:                                    ; preds = %cond.end
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor73 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 3
  %81 = load i32, i32* %v_samp_factor73, align 4, !tbaa !55
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.70
  %cond75 = phi i32 [ %79, %cond.true.70 ], [ %81, %cond.false.72 ]
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 58
  store i32 %cond75, i32* %max_v_samp_factor76, align 4, !tbaa !51
  br label %for.inc

for.inc:                                          ; preds = %cond.end.74
  %83 = load i32, i32* %ci, align 4, !tbaa !27
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !27
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 59
  store i32 8, i32* %min_DCT_scaled_size, align 4, !tbaa !56
  store i32 0, i32* %ci, align 4, !tbaa !27
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 43
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info77, align 8, !tbaa !52
  store %struct.jpeg_component_info* %87, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.119, %for.end
  %88 = load i32, i32* %ci, align 4, !tbaa !27
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 8
  %90 = load i32, i32* %num_components79, align 4, !tbaa !49
  %cmp80 = icmp slt i32 %88, %90
  br i1 %cmp80, label %for.body.82, label %for.end.122

for.body.82:                                      ; preds = %for.cond.78
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 9
  store i32 8, i32* %DCT_scaled_size, align 4, !tbaa !57
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 6
  %93 = load i32, i32* %image_width83, align 4, !tbaa !47
  %conv84 = zext i32 %93 to i64
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor85 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 2
  %95 = load i32, i32* %h_samp_factor85, align 4, !tbaa !53
  %conv86 = sext i32 %95 to i64
  %mul = mul nsw i64 %conv84, %conv86
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 57
  %97 = load i32, i32* %max_h_samp_factor87, align 4, !tbaa !50
  %mul88 = mul nsw i32 %97, 8
  %conv89 = sext i32 %mul88 to i64
  %call = call i64 @jdiv_round_up(i64 %mul, i64 %conv89)
  %conv90 = trunc i64 %call to i32
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %98, i32 0, i32 7
  store i32 %conv90, i32* %width_in_blocks, align 4, !tbaa !58
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 7
  %100 = load i32, i32* %image_height91, align 4, !tbaa !46
  %conv92 = zext i32 %100 to i64
  %101 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor93 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %101, i32 0, i32 3
  %102 = load i32, i32* %v_samp_factor93, align 4, !tbaa !55
  %conv94 = sext i32 %102 to i64
  %mul95 = mul nsw i64 %conv92, %conv94
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 58
  %104 = load i32, i32* %max_v_samp_factor96, align 4, !tbaa !51
  %mul97 = mul nsw i32 %104, 8
  %conv98 = sext i32 %mul97 to i64
  %call99 = call i64 @jdiv_round_up(i64 %mul95, i64 %conv98)
  %conv100 = trunc i64 %call99 to i32
  %105 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %105, i32 0, i32 8
  store i32 %conv100, i32* %height_in_blocks, align 4, !tbaa !59
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 6
  %107 = load i32, i32* %image_width101, align 4, !tbaa !47
  %conv102 = zext i32 %107 to i64
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor103 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i32 0, i32 2
  %109 = load i32, i32* %h_samp_factor103, align 4, !tbaa !53
  %conv104 = sext i32 %109 to i64
  %mul105 = mul nsw i64 %conv102, %conv104
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 57
  %111 = load i32, i32* %max_h_samp_factor106, align 4, !tbaa !50
  %conv107 = sext i32 %111 to i64
  %call108 = call i64 @jdiv_round_up(i64 %mul105, i64 %conv107)
  %conv109 = trunc i64 %call108 to i32
  %112 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %112, i32 0, i32 10
  store i32 %conv109, i32* %downsampled_width, align 4, !tbaa !60
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 7
  %114 = load i32, i32* %image_height110, align 4, !tbaa !46
  %conv111 = zext i32 %114 to i64
  %115 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor112 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %115, i32 0, i32 3
  %116 = load i32, i32* %v_samp_factor112, align 4, !tbaa !55
  %conv113 = sext i32 %116 to i64
  %mul114 = mul nsw i64 %conv111, %conv113
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 58
  %118 = load i32, i32* %max_v_samp_factor115, align 4, !tbaa !51
  %conv116 = sext i32 %118 to i64
  %call117 = call i64 @jdiv_round_up(i64 %mul114, i64 %conv116)
  %conv118 = trunc i64 %call117 to i32
  %119 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %119, i32 0, i32 11
  store i32 %conv118, i32* %downsampled_height, align 4, !tbaa !61
  %120 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %120, i32 0, i32 12
  store i32 1, i32* %component_needed, align 4, !tbaa !62
  %121 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %121, i32 0, i32 19
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %quant_table, align 8, !tbaa !63
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.82
  %122 = load i32, i32* %ci, align 4, !tbaa !27
  %inc120 = add nsw i32 %122, 1
  store i32 %inc120, i32* %ci, align 4, !tbaa !27
  %123 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr121 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %123, i32 1
  store %struct.jpeg_component_info* %incdec.ptr121, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.78

for.end.122:                                      ; preds = %for.cond.78
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 7
  %125 = load i32, i32* %image_height123, align 4, !tbaa !46
  %conv124 = zext i32 %125 to i64
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 58
  %127 = load i32, i32* %max_v_samp_factor125, align 4, !tbaa !51
  %mul126 = mul nsw i32 %127, 8
  %conv127 = sext i32 %mul126 to i64
  %call128 = call i64 @jdiv_round_up(i64 %conv124, i64 %conv127)
  %conv129 = trunc i64 %call128 to i32
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %128, i32 0, i32 60
  store i32 %conv129, i32* %total_iMCU_rows, align 4, !tbaa !64
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 62
  %130 = load i32, i32* %comps_in_scan, align 4, !tbaa !65
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %131, i32 0, i32 8
  %132 = load i32, i32* %num_components130, align 4, !tbaa !49
  %cmp131 = icmp slt i32 %130, %132
  br i1 %cmp131, label %if.then.134, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %for.end.122
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 44
  %134 = load i32, i32* %progressive_mode, align 4, !tbaa !66
  %tobool = icmp ne i32 %134, 0
  br i1 %tobool, label %if.then.134, label %if.else

if.then.134:                                      ; preds = %lor.lhs.false.133, %for.end.122
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 77
  %136 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !14
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %136, i32 0, i32 4
  store i32 1, i32* %has_multiple_scans, align 4, !tbaa !67
  br label %if.end.137

if.else:                                          ; preds = %lor.lhs.false.133
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %inputctl135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 77
  %138 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl135, align 8, !tbaa !14
  %has_multiple_scans136 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %138, i32 0, i32 4
  store i32 0, i32* %has_multiple_scans136, align 4, !tbaa !67
  br label %if.end.137

if.end.137:                                       ; preds = %if.else, %if.then.134
  %139 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #5
  %140 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #5
  ret void
}

declare i64 @jdiv_round_up(i64, i64) #2

; Function Attrs: nounwind ssp uwtable
define internal void @per_scan_setup(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %mcublks = alloca i32, align 4
  %tmp = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast i32* %mcublks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #5
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 62
  %5 = load i32, i32* %comps_in_scan, align 4, !tbaa !65
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %7 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %7, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 7
  %9 = load i32, i32* %width_in_blocks, align 4, !tbaa !58
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 64
  store i32 %9, i32* %MCUs_per_row, align 4, !tbaa !68
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 8
  %12 = load i32, i32* %height_in_blocks, align 4, !tbaa !59
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 65
  store i32 %12, i32* %MCU_rows_in_scan, align 4, !tbaa !69
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 0, i32 13
  store i32 1, i32* %MCU_width, align 4, !tbaa !70
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 14
  store i32 1, i32* %MCU_height, align 4, !tbaa !71
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 15
  store i32 1, i32* %MCU_blocks, align 4, !tbaa !72
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 9
  %18 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !57
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 16
  store i32 %18, i32* %MCU_sample_width, align 4, !tbaa !73
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 17
  store i32 1, i32* %last_col_width, align 4, !tbaa !74
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks2 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 8
  %22 = load i32, i32* %height_in_blocks2, align 4, !tbaa !59
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 3
  %24 = load i32, i32* %v_samp_factor, align 4, !tbaa !55
  %rem = urem i32 %22, %24
  store i32 %rem, i32* %tmp, align 4, !tbaa !27
  %25 = load i32, i32* %tmp, align 4, !tbaa !27
  %cmp3 = icmp eq i32 %25, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 3
  %27 = load i32, i32* %v_samp_factor5, align 4, !tbaa !55
  store i32 %27, i32* %tmp, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %28 = load i32, i32* %tmp, align 4, !tbaa !27
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 18
  store i32 %28, i32* %last_row_height, align 4, !tbaa !75
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 66
  store i32 1, i32* %blocks_in_MCU, align 4, !tbaa !76
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 67
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4, !tbaa !27
  br label %if.end.82

if.else:                                          ; preds = %entry
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 62
  %33 = load i32, i32* %comps_in_scan7, align 4, !tbaa !65
  %cmp8 = icmp sle i32 %33, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 62
  %35 = load i32, i32* %comps_in_scan9, align 4, !tbaa !65
  %cmp10 = icmp sgt i32 %35, 4
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !28
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 5
  store i32 24, i32* %msg_code, align 4, !tbaa !29
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 62
  %39 = load i32, i32* %comps_in_scan12, align 4, !tbaa !65
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !28
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %39, i32* %arrayidx14, align 4, !tbaa !27
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !28
  %msg_parm16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 6
  %i17 = bitcast %union.anon* %msg_parm16 to [8 x i32]*
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %i17, i32 0, i64 1
  store i32 4, i32* %arrayidx18, align 4, !tbaa !27
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !28
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !31
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %48 = bitcast %struct.jpeg_decompress_struct* %47 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* %48)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %lor.lhs.false
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 6
  %50 = load i32, i32* %image_width, align 4, !tbaa !47
  %conv = zext i32 %50 to i64
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 57
  %52 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !50
  %mul = mul nsw i32 %52, 8
  %conv21 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 %conv, i64 %conv21)
  %conv22 = trunc i64 %call to i32
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 64
  store i32 %conv22, i32* %MCUs_per_row23, align 4, !tbaa !68
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 7
  %55 = load i32, i32* %image_height, align 4, !tbaa !46
  %conv24 = zext i32 %55 to i64
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 58
  %57 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !51
  %mul25 = mul nsw i32 %57, 8
  %conv26 = sext i32 %mul25 to i64
  %call27 = call i64 @jdiv_round_up(i64 %conv24, i64 %conv26)
  %conv28 = trunc i64 %call27 to i32
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_rows_in_scan29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 65
  store i32 %conv28, i32* %MCU_rows_in_scan29, align 4, !tbaa !69
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 66
  store i32 0, i32* %blocks_in_MCU30, align 4, !tbaa !76
  store i32 0, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %60 = load i32, i32* %ci, align 4, !tbaa !27
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 62
  %62 = load i32, i32* %comps_in_scan31, align 4, !tbaa !65
  %cmp32 = icmp slt i32 %60, %62
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom = sext i32 %63 to i64
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 63
  %arrayidx35 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info34, i32 0, i64 %idxprom
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx35, align 8, !tbaa !2
  store %struct.jpeg_component_info* %65, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 2
  %67 = load i32, i32* %h_samp_factor, align 4, !tbaa !53
  %68 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 0, i32 13
  store i32 %67, i32* %MCU_width36, align 4, !tbaa !70
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 3
  %70 = load i32, i32* %v_samp_factor37, align 4, !tbaa !55
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 14
  store i32 %70, i32* %MCU_height38, align 4, !tbaa !71
  %72 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %72, i32 0, i32 13
  %73 = load i32, i32* %MCU_width39, align 4, !tbaa !70
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 14
  %75 = load i32, i32* %MCU_height40, align 4, !tbaa !71
  %mul41 = mul nsw i32 %73, %75
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_blocks42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %76, i32 0, i32 15
  store i32 %mul41, i32* %MCU_blocks42, align 4, !tbaa !72
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 13
  %78 = load i32, i32* %MCU_width43, align 4, !tbaa !70
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 0, i32 9
  %80 = load i32, i32* %DCT_scaled_size44, align 4, !tbaa !57
  %mul45 = mul nsw i32 %78, %80
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_sample_width46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 16
  store i32 %mul45, i32* %MCU_sample_width46, align 4, !tbaa !73
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %82, i32 0, i32 7
  %83 = load i32, i32* %width_in_blocks47, align 4, !tbaa !58
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 0, i32 13
  %85 = load i32, i32* %MCU_width48, align 4, !tbaa !70
  %rem49 = urem i32 %83, %85
  store i32 %rem49, i32* %tmp, align 4, !tbaa !27
  %86 = load i32, i32* %tmp, align 4, !tbaa !27
  %cmp50 = icmp eq i32 %86, 0
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %for.body
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width53 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i32 0, i32 13
  %88 = load i32, i32* %MCU_width53, align 4, !tbaa !70
  store i32 %88, i32* %tmp, align 4, !tbaa !27
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %for.body
  %89 = load i32, i32* %tmp, align 4, !tbaa !27
  %90 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_col_width55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %90, i32 0, i32 17
  store i32 %89, i32* %last_col_width55, align 4, !tbaa !74
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %height_in_blocks56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 8
  %92 = load i32, i32* %height_in_blocks56, align 4, !tbaa !59
  %93 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %93, i32 0, i32 14
  %94 = load i32, i32* %MCU_height57, align 4, !tbaa !71
  %rem58 = urem i32 %92, %94
  store i32 %rem58, i32* %tmp, align 4, !tbaa !27
  %95 = load i32, i32* %tmp, align 4, !tbaa !27
  %cmp59 = icmp eq i32 %95, 0
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.54
  %96 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height62 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %96, i32 0, i32 14
  %97 = load i32, i32* %MCU_height62, align 4, !tbaa !71
  store i32 %97, i32* %tmp, align 4, !tbaa !27
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.54
  %98 = load i32, i32* %tmp, align 4, !tbaa !27
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_row_height64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 18
  store i32 %98, i32* %last_row_height64, align 4, !tbaa !75
  %100 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_blocks65 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i32 0, i32 15
  %101 = load i32, i32* %MCU_blocks65, align 4, !tbaa !72
  store i32 %101, i32* %mcublks, align 4, !tbaa !27
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 66
  %103 = load i32, i32* %blocks_in_MCU66, align 4, !tbaa !76
  %104 = load i32, i32* %mcublks, align 4, !tbaa !27
  %add = add nsw i32 %103, %104
  %cmp67 = icmp sgt i32 %add, 10
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.end.63
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 0
  %106 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !28
  %msg_code71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %106, i32 0, i32 5
  store i32 11, i32* %msg_code71, align 4, !tbaa !29
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %107, i32 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8, !tbaa !28
  %error_exit73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i32 0, i32 0
  %109 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit73, align 8, !tbaa !31
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %111 = bitcast %struct.jpeg_decompress_struct* %110 to %struct.jpeg_common_struct*
  call void %109(%struct.jpeg_common_struct* %111)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %if.end.63
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.74
  %112 = load i32, i32* %mcublks, align 4, !tbaa !27
  %dec = add nsw i32 %112, -1
  store i32 %dec, i32* %mcublks, align 4, !tbaa !27
  %cmp75 = icmp sgt i32 %112, 0
  br i1 %cmp75, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %113 = load i32, i32* %ci, align 4, !tbaa !27
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 66
  %115 = load i32, i32* %blocks_in_MCU77, align 4, !tbaa !76
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %blocks_in_MCU77, align 4, !tbaa !76
  %idxprom78 = sext i32 %115 to i64
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_membership79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 67
  %arrayidx80 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership79, i32 0, i64 %idxprom78
  store i32 %113, i32* %arrayidx80, align 4, !tbaa !27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %117 = load i32, i32* %ci, align 4, !tbaa !27
  %inc81 = add nsw i32 %117, 1
  store i32 %inc81, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.82

if.end.82:                                        ; preds = %for.end, %if.end
  %118 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #5
  %119 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #5
  %120 = bitcast i32* %mcublks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #5
  %121 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @latch_quant_tables(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %qtblno = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast i32* %qtblno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #5
  %3 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #5
  store i32 0, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %ci, align 4, !tbaa !27
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 62
  %6 = load i32, i32* %comps_in_scan, align 4, !tbaa !65
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %9 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %9, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 0, i32 19
  %11 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8, !tbaa !63
  %cmp1 = icmp ne %struct.JQUANT_TBL* %11, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 4
  %13 = load i32, i32* %quant_tbl_no, align 4, !tbaa !77
  store i32 %13, i32* %qtblno, align 4, !tbaa !27
  %14 = load i32, i32* %qtblno, align 4, !tbaa !27
  %cmp2 = icmp slt i32 %14, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i32, i32* %qtblno, align 4, !tbaa !27
  %cmp3 = icmp sge i32 %15, 4
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %16 = load i32, i32* %qtblno, align 4, !tbaa !27
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 39
  %arrayidx6 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom5
  %18 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx6, align 8, !tbaa !2
  %cmp7 = icmp eq %struct.JQUANT_TBL* %18, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.end
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !28
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 51, i32* %msg_code, align 4, !tbaa !29
  %21 = load i32, i32* %qtblno, align 4, !tbaa !27
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !28
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %21, i32* %arrayidx10, align 4, !tbaa !27
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !28
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !31
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %28 = bitcast %struct.jpeg_decompress_struct* %27 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* %28)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %lor.lhs.false.4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 1
  %30 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %30, i32 0, i32 0
  %31 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  %call = call i8* %31(%struct.jpeg_common_struct* %33, i32 1, i64 132)
  %34 = bitcast i8* %call to %struct.JQUANT_TBL*
  store %struct.JQUANT_TBL* %34, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %35 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %36 = bitcast %struct.JQUANT_TBL* %35 to i8*
  %37 = load i32, i32* %qtblno, align 4, !tbaa !27
  %idxprom13 = sext i32 %37 to i64
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 39
  %arrayidx15 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs14, i32 0, i64 %idxprom13
  %39 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx15, align 8, !tbaa !2
  %40 = bitcast %struct.JQUANT_TBL* %39 to i8*
  %41 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %42 = bitcast %struct.JQUANT_TBL* %41 to i8*
  %43 = call i64 @llvm.objectsize.i64.p0i8(i8* %42, i1 false)
  %call16 = call i8* @__memcpy_chk(i8* %36, i8* %40, i64 132, i64 %43) #5
  %44 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_table17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 19
  store %struct.JQUANT_TBL* %44, %struct.JQUANT_TBL** %quant_table17, align 8, !tbaa !63
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then
  %46 = load i32, i32* %ci, align 4, !tbaa !27
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #5
  %48 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #5
  %49 = bitcast i32* %qtblno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #5
  %50 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #5
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
!6 = !{!7, !3, i64 8}
!7 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !4, i64 56, !8, i64 60, !8, i64 64, !9, i64 72, !8, i64 80, !8, i64 84, !4, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !4, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !3, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !8, i64 288, !3, i64 296, !8, i64 304, !8, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !8, i64 360, !8, i64 364, !4, i64 368, !10, i64 370, !10, i64 372, !8, i64 376, !4, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !3, i64 408, !8, i64 416, !4, i64 424, !8, i64 456, !8, i64 460, !8, i64 464, !4, i64 468, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!12, !3, i64 0}
!12 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !13, i64 88}
!13 = !{!"long", !4, i64 0}
!14 = !{!7, !3, i64 560}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !8, i64 40}
!17 = !{!"jpeg_input_controller", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !8, i64 32, !8, i64 36}
!18 = !{!16, !3, i64 8}
!19 = !{!16, !3, i64 16}
!20 = !{!16, !3, i64 24}
!21 = !{!16, !8, i64 32}
!22 = !{!16, !8, i64 36}
!23 = !{!16, !8, i64 40}
!24 = !{!7, !3, i64 568}
!25 = !{!26, !3, i64 8}
!26 = !{!"jpeg_marker_reader", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !4, i64 32, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172}
!27 = !{!8, !8, i64 0}
!28 = !{!7, !3, i64 0}
!29 = !{!30, !8, i64 40}
!30 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!31 = !{!30, !3, i64 0}
!32 = !{!26, !8, i64 164}
!33 = !{!7, !8, i64 172}
!34 = !{!7, !8, i64 164}
!35 = !{!30, !3, i64 32}
!36 = !{!26, !3, i64 0}
!37 = !{!7, !3, i64 184}
!38 = !{!7, !3, i64 576}
!39 = !{!40, !3, i64 0}
!40 = !{!"jpeg_entropy_decoder", !3, i64 0, !3, i64 8}
!41 = !{!7, !3, i64 544}
!42 = !{!43, !3, i64 0}
!43 = !{!"jpeg_d_coef_controller", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!44 = !{!43, !3, i64 8}
!45 = !{!17, !3, i64 0}
!46 = !{!7, !8, i64 44}
!47 = !{!7, !8, i64 40}
!48 = !{!7, !8, i64 288}
!49 = !{!7, !8, i64 48}
!50 = !{!7, !8, i64 388}
!51 = !{!7, !8, i64 392}
!52 = !{!7, !3, i64 296}
!53 = !{!54, !8, i64 8}
!54 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!55 = !{!54, !8, i64 12}
!56 = !{!7, !8, i64 396}
!57 = !{!54, !8, i64 36}
!58 = !{!54, !8, i64 28}
!59 = !{!54, !8, i64 32}
!60 = !{!54, !8, i64 40}
!61 = !{!54, !8, i64 44}
!62 = !{!54, !8, i64 48}
!63 = !{!54, !3, i64 80}
!64 = !{!7, !8, i64 400}
!65 = !{!7, !8, i64 416}
!66 = !{!7, !8, i64 304}
!67 = !{!17, !8, i64 32}
!68 = !{!7, !8, i64 456}
!69 = !{!7, !8, i64 460}
!70 = !{!54, !8, i64 52}
!71 = !{!54, !8, i64 56}
!72 = !{!54, !8, i64 60}
!73 = !{!54, !8, i64 64}
!74 = !{!54, !8, i64 68}
!75 = !{!54, !8, i64 72}
!76 = !{!7, !8, i64 464}
!77 = !{!54, !8, i64 16}
