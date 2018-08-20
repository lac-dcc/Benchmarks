; ModuleID = 'jccolor.c'
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
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, {}*, {}*, {}*, {}*, {}* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.my_color_converter = type { %struct.jpeg_color_converter, i64* }

; Function Attrs: nounwind ssp uwtable
define void @jinit_color_converter(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %cconvert = alloca %struct.my_color_converter*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 24)
  %6 = bitcast i8* %call to %struct.my_color_converter*
  store %struct.my_color_converter* %6, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %7 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %8 = bitcast %struct.my_color_converter* %7 to %struct.jpeg_color_converter*
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 56
  store %struct.jpeg_color_converter* %8, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !14
  %10 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @null_method, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8, !tbaa !15
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 9
  %12 = load i32, i32* %in_color_space, align 4, !tbaa !18
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.13
    i32 5, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 8
  %14 = load i32, i32* %input_components, align 4, !tbaa !19
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 7, i32* %msg_code, align 4, !tbaa !21
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %21 = bitcast %struct.jpeg_compress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 8
  %23 = load i32, i32* %input_components5, align 4, !tbaa !19
  %cmp6 = icmp ne i32 %23, 3
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %sw.bb.4
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !20
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 5
  store i32 7, i32* %msg_code9, align 4, !tbaa !21
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !20
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 0
  %28 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8, !tbaa !23
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %30 = bitcast %struct.jpeg_compress_struct* %29 to %struct.jpeg_common_struct*
  call void %28(%struct.jpeg_common_struct* %30)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %sw.bb.4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry, %entry
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 8
  %32 = load i32, i32* %input_components14, align 4, !tbaa !19
  %cmp15 = icmp ne i32 %32, 4
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %sw.bb.13
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !20
  %msg_code18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 7, i32* %msg_code18, align 4, !tbaa !21
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !20
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit20, align 8, !tbaa !23
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %39 = bitcast %struct.jpeg_compress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* %39)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %sw.bb.13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 8
  %41 = load i32, i32* %input_components22, align 4, !tbaa !19
  %cmp23 = icmp slt i32 %41, 1
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %sw.default
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err25, align 8, !tbaa !20
  %msg_code26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 7, i32* %msg_code26, align 4, !tbaa !21
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !20
  %error_exit28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit28, align 8, !tbaa !23
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %48 = bitcast %struct.jpeg_compress_struct* %47 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* %48)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %if.end.21, %if.end.12, %if.end
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 13
  %50 = load i32, i32* %jpeg_color_space, align 4, !tbaa !24
  switch i32 %50, label %sw.default.164 [
    i32 1, label %sw.bb.30
    i32 2, label %sw.bb.64
    i32 3, label %sw.bb.84
    i32 4, label %sw.bb.114
    i32 5, label %sw.bb.134
  ]

sw.bb.30:                                         ; preds = %sw.epilog
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 12
  %52 = load i32, i32* %num_components, align 4, !tbaa !25
  %cmp31 = icmp ne i32 %52, 1
  br i1 %cmp31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %sw.bb.30
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !20
  %msg_code34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 5
  store i32 8, i32* %msg_code34, align 4, !tbaa !21
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !20
  %error_exit36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 0
  %57 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit36, align 8, !tbaa !23
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %59 = bitcast %struct.jpeg_compress_struct* %58 to %struct.jpeg_common_struct*
  call void %57(%struct.jpeg_common_struct* %59)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %sw.bb.30
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 9
  %61 = load i32, i32* %in_color_space38, align 4, !tbaa !18
  %cmp39 = icmp eq i32 %61, 1
  br i1 %cmp39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end.37
  %62 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub41 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %62, i32 0, i32 0
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub41, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @grayscale_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert, align 8, !tbaa !26
  br label %if.end.63

if.else:                                          ; preds = %if.end.37
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 9
  %64 = load i32, i32* %in_color_space42, align 4, !tbaa !18
  %cmp43 = icmp eq i32 %64, 2
  br i1 %cmp43, label %if.then.44, label %if.else.50

if.then.44:                                       ; preds = %if.else
  %65 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub45 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %65, i32 0, i32 0
  %start_pass46 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub45, i32 0, i32 0
  %start_pass47 = bitcast {}** %start_pass46 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass47, align 8, !tbaa !15
  %66 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub48 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %66, i32 0, i32 0
  %color_convert49 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub48, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_gray_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert49, align 8, !tbaa !26
  br label %if.end.62

if.else.50:                                       ; preds = %if.else
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 9
  %68 = load i32, i32* %in_color_space51, align 4, !tbaa !18
  %cmp52 = icmp eq i32 %68, 3
  br i1 %cmp52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.else.50
  %69 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub54 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %69, i32 0, i32 0
  %color_convert55 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub54, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @grayscale_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert55, align 8, !tbaa !26
  br label %if.end.61

if.else.56:                                       ; preds = %if.else.50
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !20
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 5
  store i32 25, i32* %msg_code58, align 4, !tbaa !21
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !20
  %error_exit60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 0
  %74 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit60, align 8, !tbaa !23
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %76 = bitcast %struct.jpeg_compress_struct* %75 to %struct.jpeg_common_struct*
  call void %74(%struct.jpeg_common_struct* %76)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.56, %if.then.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.44
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.40
  br label %sw.epilog.179

sw.bb.64:                                         ; preds = %sw.epilog
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 12
  %78 = load i32, i32* %num_components65, align 4, !tbaa !25
  %cmp66 = icmp ne i32 %78, 3
  br i1 %cmp66, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %sw.bb.64
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !20
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 5
  store i32 8, i32* %msg_code69, align 4, !tbaa !21
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %81, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !20
  %error_exit71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 0
  %83 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit71, align 8, !tbaa !23
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %85 = bitcast %struct.jpeg_compress_struct* %84 to %struct.jpeg_common_struct*
  call void %83(%struct.jpeg_common_struct* %85)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %sw.bb.64
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %86, i32 0, i32 9
  %87 = load i32, i32* %in_color_space73, align 4, !tbaa !18
  %cmp74 = icmp eq i32 %87, 2
  br i1 %cmp74, label %if.then.75, label %if.else.78

if.then.75:                                       ; preds = %if.end.72
  %88 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub76 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %88, i32 0, i32 0
  %color_convert77 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub76, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert77, align 8, !tbaa !26
  br label %if.end.83

if.else.78:                                       ; preds = %if.end.72
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8, !tbaa !20
  %msg_code80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 5
  store i32 25, i32* %msg_code80, align 4, !tbaa !21
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 0
  %92 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8, !tbaa !20
  %error_exit82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %92, i32 0, i32 0
  %93 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit82, align 8, !tbaa !23
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %95 = bitcast %struct.jpeg_compress_struct* %94 to %struct.jpeg_common_struct*
  call void %93(%struct.jpeg_common_struct* %95)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.78, %if.then.75
  br label %sw.epilog.179

sw.bb.84:                                         ; preds = %sw.epilog
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %96, i32 0, i32 12
  %97 = load i32, i32* %num_components85, align 4, !tbaa !25
  %cmp86 = icmp ne i32 %97, 3
  br i1 %cmp86, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %sw.bb.84
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err88 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 0
  %99 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err88, align 8, !tbaa !20
  %msg_code89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %99, i32 0, i32 5
  store i32 8, i32* %msg_code89, align 4, !tbaa !21
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err90 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err90, align 8, !tbaa !20
  %error_exit91 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 0
  %102 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit91, align 8, !tbaa !23
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %104 = bitcast %struct.jpeg_compress_struct* %103 to %struct.jpeg_common_struct*
  call void %102(%struct.jpeg_common_struct* %104)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %sw.bb.84
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 9
  %106 = load i32, i32* %in_color_space93, align 4, !tbaa !18
  %cmp94 = icmp eq i32 %106, 2
  br i1 %cmp94, label %if.then.95, label %if.else.101

if.then.95:                                       ; preds = %if.end.92
  %107 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub96 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %107, i32 0, i32 0
  %start_pass97 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub96, i32 0, i32 0
  %start_pass98 = bitcast {}** %start_pass97 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass98, align 8, !tbaa !15
  %108 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub99 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %108, i32 0, i32 0
  %color_convert100 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub99, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_ycc_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert100, align 8, !tbaa !26
  br label %if.end.113

if.else.101:                                      ; preds = %if.end.92
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 9
  %110 = load i32, i32* %in_color_space102, align 4, !tbaa !18
  %cmp103 = icmp eq i32 %110, 3
  br i1 %cmp103, label %if.then.104, label %if.else.107

if.then.104:                                      ; preds = %if.else.101
  %111 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub105 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %111, i32 0, i32 0
  %color_convert106 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub105, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert106, align 8, !tbaa !26
  br label %if.end.112

if.else.107:                                      ; preds = %if.else.101
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err108 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err108, align 8, !tbaa !20
  %msg_code109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 5
  store i32 25, i32* %msg_code109, align 4, !tbaa !21
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 0
  %115 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err110, align 8, !tbaa !20
  %error_exit111 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %115, i32 0, i32 0
  %116 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit111, align 8, !tbaa !23
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %118 = bitcast %struct.jpeg_compress_struct* %117 to %struct.jpeg_common_struct*
  call void %116(%struct.jpeg_common_struct* %118)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.107, %if.then.104
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.95
  br label %sw.epilog.179

sw.bb.114:                                        ; preds = %sw.epilog
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components115 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 12
  %120 = load i32, i32* %num_components115, align 4, !tbaa !25
  %cmp116 = icmp ne i32 %120, 4
  br i1 %cmp116, label %if.then.117, label %if.end.122

if.then.117:                                      ; preds = %sw.bb.114
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %121, i32 0, i32 0
  %122 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err118, align 8, !tbaa !20
  %msg_code119 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %122, i32 0, i32 5
  store i32 8, i32* %msg_code119, align 4, !tbaa !21
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 0
  %124 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err120, align 8, !tbaa !20
  %error_exit121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %124, i32 0, i32 0
  %125 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit121, align 8, !tbaa !23
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %127 = bitcast %struct.jpeg_compress_struct* %126 to %struct.jpeg_common_struct*
  call void %125(%struct.jpeg_common_struct* %127)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.117, %sw.bb.114
  %128 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space123 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %128, i32 0, i32 9
  %129 = load i32, i32* %in_color_space123, align 4, !tbaa !18
  %cmp124 = icmp eq i32 %129, 4
  br i1 %cmp124, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %if.end.122
  %130 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub126 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %130, i32 0, i32 0
  %color_convert127 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub126, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert127, align 8, !tbaa !26
  br label %if.end.133

if.else.128:                                      ; preds = %if.end.122
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %131, i32 0, i32 0
  %132 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err129, align 8, !tbaa !20
  %msg_code130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %132, i32 0, i32 5
  store i32 25, i32* %msg_code130, align 4, !tbaa !21
  %133 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %133, i32 0, i32 0
  %134 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err131, align 8, !tbaa !20
  %error_exit132 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %134, i32 0, i32 0
  %135 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit132, align 8, !tbaa !23
  %136 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %137 = bitcast %struct.jpeg_compress_struct* %136 to %struct.jpeg_common_struct*
  call void %135(%struct.jpeg_common_struct* %137)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.128, %if.then.125
  br label %sw.epilog.179

sw.bb.134:                                        ; preds = %sw.epilog
  %138 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components135 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %138, i32 0, i32 12
  %139 = load i32, i32* %num_components135, align 4, !tbaa !25
  %cmp136 = icmp ne i32 %139, 4
  br i1 %cmp136, label %if.then.137, label %if.end.142

if.then.137:                                      ; preds = %sw.bb.134
  %140 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %140, i32 0, i32 0
  %141 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err138, align 8, !tbaa !20
  %msg_code139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %141, i32 0, i32 5
  store i32 8, i32* %msg_code139, align 4, !tbaa !21
  %142 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %142, i32 0, i32 0
  %143 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err140, align 8, !tbaa !20
  %error_exit141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %143, i32 0, i32 0
  %144 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit141, align 8, !tbaa !23
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %146 = bitcast %struct.jpeg_compress_struct* %145 to %struct.jpeg_common_struct*
  call void %144(%struct.jpeg_common_struct* %146)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.137, %sw.bb.134
  %147 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space143 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %147, i32 0, i32 9
  %148 = load i32, i32* %in_color_space143, align 4, !tbaa !18
  %cmp144 = icmp eq i32 %148, 4
  br i1 %cmp144, label %if.then.145, label %if.else.151

if.then.145:                                      ; preds = %if.end.142
  %149 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub146 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %149, i32 0, i32 0
  %start_pass147 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub146, i32 0, i32 0
  %start_pass148 = bitcast {}** %start_pass147 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass148, align 8, !tbaa !15
  %150 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub149 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %150, i32 0, i32 0
  %color_convert150 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub149, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @cmyk_ycck_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert150, align 8, !tbaa !26
  br label %if.end.163

if.else.151:                                      ; preds = %if.end.142
  %151 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space152 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %151, i32 0, i32 9
  %152 = load i32, i32* %in_color_space152, align 4, !tbaa !18
  %cmp153 = icmp eq i32 %152, 5
  br i1 %cmp153, label %if.then.154, label %if.else.157

if.then.154:                                      ; preds = %if.else.151
  %153 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub155 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %153, i32 0, i32 0
  %color_convert156 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub155, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert156, align 8, !tbaa !26
  br label %if.end.162

if.else.157:                                      ; preds = %if.else.151
  %154 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err158 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %154, i32 0, i32 0
  %155 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err158, align 8, !tbaa !20
  %msg_code159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %155, i32 0, i32 5
  store i32 25, i32* %msg_code159, align 4, !tbaa !21
  %156 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err160 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %156, i32 0, i32 0
  %157 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err160, align 8, !tbaa !20
  %error_exit161 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %157, i32 0, i32 0
  %158 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit161, align 8, !tbaa !23
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %160 = bitcast %struct.jpeg_compress_struct* %159 to %struct.jpeg_common_struct*
  call void %158(%struct.jpeg_common_struct* %160)
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.157, %if.then.154
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.145
  br label %sw.epilog.179

sw.default.164:                                   ; preds = %sw.epilog
  %161 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space165 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %161, i32 0, i32 13
  %162 = load i32, i32* %jpeg_color_space165, align 4, !tbaa !24
  %163 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space166 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %163, i32 0, i32 9
  %164 = load i32, i32* %in_color_space166, align 4, !tbaa !18
  %cmp167 = icmp ne i32 %162, %164
  br i1 %cmp167, label %if.then.171, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default.164
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components168 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %165, i32 0, i32 12
  %166 = load i32, i32* %num_components168, align 4, !tbaa !25
  %167 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components169 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %167, i32 0, i32 8
  %168 = load i32, i32* %input_components169, align 4, !tbaa !19
  %cmp170 = icmp ne i32 %166, %168
  br i1 %cmp170, label %if.then.171, label %if.end.176

if.then.171:                                      ; preds = %lor.lhs.false, %sw.default.164
  %169 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err172 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %169, i32 0, i32 0
  %170 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err172, align 8, !tbaa !20
  %msg_code173 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %170, i32 0, i32 5
  store i32 25, i32* %msg_code173, align 4, !tbaa !21
  %171 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %171, i32 0, i32 0
  %172 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err174, align 8, !tbaa !20
  %error_exit175 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %172, i32 0, i32 0
  %173 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit175, align 8, !tbaa !23
  %174 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %175 = bitcast %struct.jpeg_compress_struct* %174 to %struct.jpeg_common_struct*
  call void %173(%struct.jpeg_common_struct* %175)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.171, %lor.lhs.false
  %176 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %pub177 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %176, i32 0, i32 0
  %color_convert178 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub177, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert178, align 8, !tbaa !26
  br label %sw.epilog.179

sw.epilog.179:                                    ; preds = %if.end.176, %if.end.163, %if.end.133, %if.end.113, %if.end.83, %if.end.63
  %177 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @null_method(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @grayscale_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %instride = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !27
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 6
  %5 = load i32, i32* %image_width, align 4, !tbaa !28
  store i32 %5, i32* %num_cols, align 4, !tbaa !27
  %6 = bitcast i32* %instride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 8
  %8 = load i32, i32* %input_components, align 4, !tbaa !19
  store i32 %8, i32* %instride, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %9 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !2
  %11 = load i8*, i8** %10, align 8, !tbaa !2
  store i8* %11, i8** %inptr, align 8, !tbaa !2
  %12 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %12 to i64
  %13 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %13, i64 0
  %14 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx1, align 8, !tbaa !2
  store i8* %15, i8** %outptr, align 8, !tbaa !2
  %16 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %inc = add i32 %16, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !27
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %17 = load i32, i32* %col, align 4, !tbaa !27
  %18 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp2 = icmp ult i32 %17, %18
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx3, align 1, !tbaa !29
  %21 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom4 = zext i32 %21 to i64
  %22 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8, i8* %22, i64 %idxprom4
  store i8 %20, i8* %arrayidx5, align 1, !tbaa !29
  %23 = load i32, i32* %instride, align 4, !tbaa !27
  %24 = load i8*, i8** %inptr, align 8, !tbaa !2
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %col, align 4, !tbaa !27
  %inc6 = add i32 %25, 1
  store i32 %inc6, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = bitcast i32* %instride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @rgb_ycc_start(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %cconvert = alloca %struct.my_color_converter*, align 8
  %rgb_ycc_tab = alloca i64*, align 8
  %i = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 56
  %2 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_converter* %2 to %struct.my_color_converter*
  store %struct.my_color_converter* %3, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %4 = bitcast i64** %rgb_ycc_tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  %call = call i8* %8(%struct.jpeg_common_struct* %10, i32 1, i64 16384)
  %11 = bitcast i8* %call to i64*
  store i64* %11, i64** %rgb_ycc_tab, align 8, !tbaa !2
  %12 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %rgb_ycc_tab2 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %12, i32 0, i32 1
  store i64* %11, i64** %rgb_ycc_tab2, align 8, !tbaa !30
  store i64 0, i64* %i, align 8, !tbaa !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i64, i64* %i, align 8, !tbaa !31
  %cmp = icmp sle i64 %13, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8, !tbaa !31
  %mul = mul nsw i64 19595, %14
  %15 = load i64, i64* %i, align 8, !tbaa !31
  %add = add nsw i64 %15, 0
  %16 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 %add
  store i64 %mul, i64* %arrayidx, align 8, !tbaa !31
  %17 = load i64, i64* %i, align 8, !tbaa !31
  %mul3 = mul nsw i64 38470, %17
  %18 = load i64, i64* %i, align 8, !tbaa !31
  %add4 = add nsw i64 %18, 256
  %19 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i64, i64* %19, i64 %add4
  store i64 %mul3, i64* %arrayidx5, align 8, !tbaa !31
  %20 = load i64, i64* %i, align 8, !tbaa !31
  %mul6 = mul nsw i64 7471, %20
  %add7 = add nsw i64 %mul6, 32768
  %21 = load i64, i64* %i, align 8, !tbaa !31
  %add8 = add nsw i64 %21, 512
  %22 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i64, i64* %22, i64 %add8
  store i64 %add7, i64* %arrayidx9, align 8, !tbaa !31
  %23 = load i64, i64* %i, align 8, !tbaa !31
  %mul10 = mul nsw i64 -11059, %23
  %24 = load i64, i64* %i, align 8, !tbaa !31
  %add11 = add nsw i64 %24, 768
  %25 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i64, i64* %25, i64 %add11
  store i64 %mul10, i64* %arrayidx12, align 8, !tbaa !31
  %26 = load i64, i64* %i, align 8, !tbaa !31
  %mul13 = mul nsw i64 -21709, %26
  %27 = load i64, i64* %i, align 8, !tbaa !31
  %add14 = add nsw i64 %27, 1024
  %28 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i64, i64* %28, i64 %add14
  store i64 %mul13, i64* %arrayidx15, align 8, !tbaa !31
  %29 = load i64, i64* %i, align 8, !tbaa !31
  %mul16 = mul nsw i64 32768, %29
  %add17 = add nsw i64 %mul16, 8388608
  %add18 = add nsw i64 %add17, 32768
  %sub = sub nsw i64 %add18, 1
  %30 = load i64, i64* %i, align 8, !tbaa !31
  %add19 = add nsw i64 %30, 1280
  %31 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i64, i64* %31, i64 %add19
  store i64 %sub, i64* %arrayidx20, align 8, !tbaa !31
  %32 = load i64, i64* %i, align 8, !tbaa !31
  %mul21 = mul nsw i64 -27439, %32
  %33 = load i64, i64* %i, align 8, !tbaa !31
  %add22 = add nsw i64 %33, 1536
  %34 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i64, i64* %34, i64 %add22
  store i64 %mul21, i64* %arrayidx23, align 8, !tbaa !31
  %35 = load i64, i64* %i, align 8, !tbaa !31
  %mul24 = mul nsw i64 -5329, %35
  %36 = load i64, i64* %i, align 8, !tbaa !31
  %add25 = add nsw i64 %36, 1792
  %37 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i64, i64* %37, i64 %add25
  store i64 %mul24, i64* %arrayidx26, align 8, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i64, i64* %i, align 8, !tbaa !31
  %inc = add nsw i64 %38, 1
  store i64 %inc, i64* %i, align 8, !tbaa !31
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast i64** %rgb_ycc_tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @rgb_gray_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_converter*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ctab = alloca i64*, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !27
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 56
  %2 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_converter* %2 to %struct.my_color_converter*
  store %struct.my_color_converter* %3, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %4 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %8, i32 0, i32 1
  %9 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !30
  store i64* %9, i64** %ctab, align 8, !tbaa !2
  %10 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 6
  %15 = load i32, i32* %image_width, align 4, !tbaa !28
  store i32 %15, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %16 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !2
  %18 = load i8*, i8** %17, align 8, !tbaa !2
  store i8* %18, i8** %inptr, align 8, !tbaa !2
  %19 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %19 to i64
  %20 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %20, i64 0
  %21 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %22, i8** %outptr, align 8, !tbaa !2
  %23 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %inc = add i32 %23, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !27
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %col, align 4, !tbaa !27
  %25 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp3 = icmp ult i32 %24, %25
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx4, align 1, !tbaa !29
  %conv = zext i8 %27 to i32
  store i32 %conv, i32* %r, align 4, !tbaa !27
  %28 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx5, align 1, !tbaa !29
  %conv6 = zext i8 %29 to i32
  store i32 %conv6, i32* %g, align 4, !tbaa !27
  %30 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx7, align 1, !tbaa !29
  %conv8 = zext i8 %31 to i32
  store i32 %conv8, i32* %b, align 4, !tbaa !27
  %32 = load i8*, i8** %inptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 3
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !2
  %33 = load i32, i32* %r, align 4, !tbaa !27
  %add = add nsw i32 %33, 0
  %idxprom9 = sext i32 %add to i64
  %34 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i64, i64* %34, i64 %idxprom9
  %35 = load i64, i64* %arrayidx10, align 8, !tbaa !31
  %36 = load i32, i32* %g, align 4, !tbaa !27
  %add11 = add nsw i32 %36, 256
  %idxprom12 = sext i32 %add11 to i64
  %37 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i64, i64* %37, i64 %idxprom12
  %38 = load i64, i64* %arrayidx13, align 8, !tbaa !31
  %add14 = add nsw i64 %35, %38
  %39 = load i32, i32* %b, align 4, !tbaa !27
  %add15 = add nsw i32 %39, 512
  %idxprom16 = sext i32 %add15 to i64
  %40 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i64, i64* %40, i64 %idxprom16
  %41 = load i64, i64* %arrayidx17, align 8, !tbaa !31
  %add18 = add nsw i64 %add14, %41
  %shr = ashr i64 %add18, 16
  %conv19 = trunc i64 %shr to i8
  %42 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom20 = zext i32 %42 to i64
  %43 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i8, i8* %43, i64 %idxprom20
  store i8 %conv19, i8* %arrayidx21, align 1, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %col, align 4, !tbaa !27
  %inc22 = add i32 %44, 1
  store i32 %inc22, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @null_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %ci = alloca i32, align 4
  %nc = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !27
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 12
  %6 = load i32, i32* %num_components, align 4, !tbaa !25
  store i32 %6, i32* %nc, align 4, !tbaa !27
  %7 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 6
  %9 = load i32, i32* %image_width, align 4, !tbaa !28
  store i32 %9, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end.13, %entry
  %10 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %while.body
  %11 = load i32, i32* %ci, align 4, !tbaa !27
  %12 = load i32, i32* %nc, align 4, !tbaa !27
  %cmp1 = icmp slt i32 %11, %12
  br i1 %cmp1, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %13 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %14 = load i8*, i8** %13, align 8, !tbaa !2
  store i8* %14, i8** %inptr, align 8, !tbaa !2
  %15 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %15 to i64
  %16 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom2 = sext i32 %16 to i64
  %17 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %17, i64 %idxprom2
  %18 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx3, align 8, !tbaa !2
  store i8* %19, i8** %outptr, align 8, !tbaa !2
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %col, align 4, !tbaa !27
  %21 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp5 = icmp ult i32 %20, %21
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %22 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom7 = sext i32 %22 to i64
  %23 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8, i8* %23, i64 %idxprom7
  %24 = load i8, i8* %arrayidx8, align 1, !tbaa !29
  %25 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom9 = zext i32 %25 to i64
  %26 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8, i8* %26, i64 %idxprom9
  store i8 %24, i8* %arrayidx10, align 1, !tbaa !29
  %27 = load i32, i32* %nc, align 4, !tbaa !27
  %28 = load i8*, i8** %inptr, align 8, !tbaa !2
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %29 = load i32, i32* %col, align 4, !tbaa !27
  %inc = add i32 %29, 1
  store i32 %inc, i32* %col, align 4, !tbaa !27
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %30 = load i32, i32* %ci, align 4, !tbaa !27
  %inc12 = add nsw i32 %30, 1
  store i32 %inc12, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %31 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !2
  %32 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %inc14 = add i32 %32, 1
  store i32 %inc14, i32* %output_row.addr, align 4, !tbaa !27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @rgb_ycc_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_converter*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ctab = alloca i64*, align 8
  %inptr = alloca i8*, align 8
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %outptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !27
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 56
  %2 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_converter* %2 to %struct.my_color_converter*
  store %struct.my_color_converter* %3, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %4 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %8, i32 0, i32 1
  %9 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !30
  store i64* %9, i64** %ctab, align 8, !tbaa !2
  %10 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 6
  %17 = load i32, i32* %image_width, align 4, !tbaa !28
  store i32 %17, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %18 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !2
  %20 = load i8*, i8** %19, align 8, !tbaa !2
  store i8* %20, i8** %inptr, align 8, !tbaa !2
  %21 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %21 to i64
  %22 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %22, i64 0
  %23 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %24, i8** %outptr0, align 8, !tbaa !2
  %25 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom3 = zext i32 %25 to i64
  %26 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8**, i8*** %26, i64 1
  %27 = load i8**, i8*** %arrayidx4, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8*, i8** %27, i64 %idxprom3
  %28 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  store i8* %28, i8** %outptr1, align 8, !tbaa !2
  %29 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom6 = zext i32 %29 to i64
  %30 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8**, i8*** %30, i64 2
  %31 = load i8**, i8*** %arrayidx7, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %31, i64 %idxprom6
  %32 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  store i8* %32, i8** %outptr2, align 8, !tbaa !2
  %33 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %inc = add i32 %33, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !27
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %34 = load i32, i32* %col, align 4, !tbaa !27
  %35 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp9 = icmp ult i32 %34, %35
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx10, align 1, !tbaa !29
  %conv = zext i8 %37 to i32
  store i32 %conv, i32* %r, align 4, !tbaa !27
  %38 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx11, align 1, !tbaa !29
  %conv12 = zext i8 %39 to i32
  store i32 %conv12, i32* %g, align 4, !tbaa !27
  %40 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8, i8* %40, i64 2
  %41 = load i8, i8* %arrayidx13, align 1, !tbaa !29
  %conv14 = zext i8 %41 to i32
  store i32 %conv14, i32* %b, align 4, !tbaa !27
  %42 = load i8*, i8** %inptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 3
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !2
  %43 = load i32, i32* %r, align 4, !tbaa !27
  %add = add nsw i32 %43, 0
  %idxprom15 = sext i32 %add to i64
  %44 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds i64, i64* %44, i64 %idxprom15
  %45 = load i64, i64* %arrayidx16, align 8, !tbaa !31
  %46 = load i32, i32* %g, align 4, !tbaa !27
  %add17 = add nsw i32 %46, 256
  %idxprom18 = sext i32 %add17 to i64
  %47 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i64, i64* %47, i64 %idxprom18
  %48 = load i64, i64* %arrayidx19, align 8, !tbaa !31
  %add20 = add nsw i64 %45, %48
  %49 = load i32, i32* %b, align 4, !tbaa !27
  %add21 = add nsw i32 %49, 512
  %idxprom22 = sext i32 %add21 to i64
  %50 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i64, i64* %50, i64 %idxprom22
  %51 = load i64, i64* %arrayidx23, align 8, !tbaa !31
  %add24 = add nsw i64 %add20, %51
  %shr = ashr i64 %add24, 16
  %conv25 = trunc i64 %shr to i8
  %52 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom26 = zext i32 %52 to i64
  %53 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i8, i8* %53, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1, !tbaa !29
  %54 = load i32, i32* %r, align 4, !tbaa !27
  %add28 = add nsw i32 %54, 768
  %idxprom29 = sext i32 %add28 to i64
  %55 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i64, i64* %55, i64 %idxprom29
  %56 = load i64, i64* %arrayidx30, align 8, !tbaa !31
  %57 = load i32, i32* %g, align 4, !tbaa !27
  %add31 = add nsw i32 %57, 1024
  %idxprom32 = sext i32 %add31 to i64
  %58 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i64, i64* %58, i64 %idxprom32
  %59 = load i64, i64* %arrayidx33, align 8, !tbaa !31
  %add34 = add nsw i64 %56, %59
  %60 = load i32, i32* %b, align 4, !tbaa !27
  %add35 = add nsw i32 %60, 1280
  %idxprom36 = sext i32 %add35 to i64
  %61 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds i64, i64* %61, i64 %idxprom36
  %62 = load i64, i64* %arrayidx37, align 8, !tbaa !31
  %add38 = add nsw i64 %add34, %62
  %shr39 = ashr i64 %add38, 16
  %conv40 = trunc i64 %shr39 to i8
  %63 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom41 = zext i32 %63 to i64
  %64 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i8, i8* %64, i64 %idxprom41
  store i8 %conv40, i8* %arrayidx42, align 1, !tbaa !29
  %65 = load i32, i32* %r, align 4, !tbaa !27
  %add43 = add nsw i32 %65, 1280
  %idxprom44 = sext i32 %add43 to i64
  %66 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i64, i64* %66, i64 %idxprom44
  %67 = load i64, i64* %arrayidx45, align 8, !tbaa !31
  %68 = load i32, i32* %g, align 4, !tbaa !27
  %add46 = add nsw i32 %68, 1536
  %idxprom47 = sext i32 %add46 to i64
  %69 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds i64, i64* %69, i64 %idxprom47
  %70 = load i64, i64* %arrayidx48, align 8, !tbaa !31
  %add49 = add nsw i64 %67, %70
  %71 = load i32, i32* %b, align 4, !tbaa !27
  %add50 = add nsw i32 %71, 1792
  %idxprom51 = sext i32 %add50 to i64
  %72 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx52 = getelementptr inbounds i64, i64* %72, i64 %idxprom51
  %73 = load i64, i64* %arrayidx52, align 8, !tbaa !31
  %add53 = add nsw i64 %add49, %73
  %shr54 = ashr i64 %add53, 16
  %conv55 = trunc i64 %shr54 to i8
  %74 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom56 = zext i32 %74 to i64
  %75 = load i8*, i8** %outptr2, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds i8, i8* %75, i64 %idxprom56
  store i8 %conv55, i8* %arrayidx57, align 1, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i32, i32* %col, align 4, !tbaa !27
  %inc58 = add i32 %76, 1
  store i32 %inc58, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @cmyk_ycck_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_converter*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ctab = alloca i64*, align 8
  %inptr = alloca i8*, align 8
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %outptr2 = alloca i8*, align 8
  %outptr3 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !27
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 56
  %2 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_converter* %2 to %struct.my_color_converter*
  store %struct.my_color_converter* %3, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %4 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !2
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %8, i32 0, i32 1
  %9 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !30
  store i64* %9, i64** %ctab, align 8, !tbaa !2
  %10 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i8** %outptr3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 6
  %18 = load i32, i32* %image_width, align 4, !tbaa !28
  store i32 %18, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %19 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !2
  %21 = load i8*, i8** %20, align 8, !tbaa !2
  store i8* %21, i8** %inptr, align 8, !tbaa !2
  %22 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %22 to i64
  %23 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %23, i64 0
  %24 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %24, i64 %idxprom
  %25 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %25, i8** %outptr0, align 8, !tbaa !2
  %26 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom3 = zext i32 %26 to i64
  %27 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8**, i8*** %27, i64 1
  %28 = load i8**, i8*** %arrayidx4, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8*, i8** %28, i64 %idxprom3
  %29 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  store i8* %29, i8** %outptr1, align 8, !tbaa !2
  %30 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom6 = zext i32 %30 to i64
  %31 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8**, i8*** %31, i64 2
  %32 = load i8**, i8*** %arrayidx7, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %32, i64 %idxprom6
  %33 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  store i8* %33, i8** %outptr2, align 8, !tbaa !2
  %34 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %idxprom9 = zext i32 %34 to i64
  %35 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8**, i8*** %35, i64 3
  %36 = load i8**, i8*** %arrayidx10, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8*, i8** %36, i64 %idxprom9
  %37 = load i8*, i8** %arrayidx11, align 8, !tbaa !2
  store i8* %37, i8** %outptr3, align 8, !tbaa !2
  %38 = load i32, i32* %output_row.addr, align 4, !tbaa !27
  %inc = add i32 %38, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !27
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %39 = load i32, i32* %col, align 4, !tbaa !27
  %40 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp12 = icmp ult i32 %39, %40
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx13, align 1, !tbaa !29
  %conv = zext i8 %42 to i32
  %sub = sub nsw i32 255, %conv
  store i32 %sub, i32* %r, align 4, !tbaa !27
  %43 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx14, align 1, !tbaa !29
  %conv15 = zext i8 %44 to i32
  %sub16 = sub nsw i32 255, %conv15
  store i32 %sub16, i32* %g, align 4, !tbaa !27
  %45 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i8, i8* %45, i64 2
  %46 = load i8, i8* %arrayidx17, align 1, !tbaa !29
  %conv18 = zext i8 %46 to i32
  %sub19 = sub nsw i32 255, %conv18
  store i32 %sub19, i32* %b, align 4, !tbaa !27
  %47 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i8, i8* %47, i64 3
  %48 = load i8, i8* %arrayidx20, align 1, !tbaa !29
  %49 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom21 = zext i32 %49 to i64
  %50 = load i8*, i8** %outptr3, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i8, i8* %50, i64 %idxprom21
  store i8 %48, i8* %arrayidx22, align 1, !tbaa !29
  %51 = load i8*, i8** %inptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !2
  %52 = load i32, i32* %r, align 4, !tbaa !27
  %add = add nsw i32 %52, 0
  %idxprom23 = sext i32 %add to i64
  %53 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i64, i64* %53, i64 %idxprom23
  %54 = load i64, i64* %arrayidx24, align 8, !tbaa !31
  %55 = load i32, i32* %g, align 4, !tbaa !27
  %add25 = add nsw i32 %55, 256
  %idxprom26 = sext i32 %add25 to i64
  %56 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i64, i64* %56, i64 %idxprom26
  %57 = load i64, i64* %arrayidx27, align 8, !tbaa !31
  %add28 = add nsw i64 %54, %57
  %58 = load i32, i32* %b, align 4, !tbaa !27
  %add29 = add nsw i32 %58, 512
  %idxprom30 = sext i32 %add29 to i64
  %59 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds i64, i64* %59, i64 %idxprom30
  %60 = load i64, i64* %arrayidx31, align 8, !tbaa !31
  %add32 = add nsw i64 %add28, %60
  %shr = ashr i64 %add32, 16
  %conv33 = trunc i64 %shr to i8
  %61 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom34 = zext i32 %61 to i64
  %62 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i8, i8* %62, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx35, align 1, !tbaa !29
  %63 = load i32, i32* %r, align 4, !tbaa !27
  %add36 = add nsw i32 %63, 768
  %idxprom37 = sext i32 %add36 to i64
  %64 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i64, i64* %64, i64 %idxprom37
  %65 = load i64, i64* %arrayidx38, align 8, !tbaa !31
  %66 = load i32, i32* %g, align 4, !tbaa !27
  %add39 = add nsw i32 %66, 1024
  %idxprom40 = sext i32 %add39 to i64
  %67 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds i64, i64* %67, i64 %idxprom40
  %68 = load i64, i64* %arrayidx41, align 8, !tbaa !31
  %add42 = add nsw i64 %65, %68
  %69 = load i32, i32* %b, align 4, !tbaa !27
  %add43 = add nsw i32 %69, 1280
  %idxprom44 = sext i32 %add43 to i64
  %70 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i64, i64* %70, i64 %idxprom44
  %71 = load i64, i64* %arrayidx45, align 8, !tbaa !31
  %add46 = add nsw i64 %add42, %71
  %shr47 = ashr i64 %add46, 16
  %conv48 = trunc i64 %shr47 to i8
  %72 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom49 = zext i32 %72 to i64
  %73 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds i8, i8* %73, i64 %idxprom49
  store i8 %conv48, i8* %arrayidx50, align 1, !tbaa !29
  %74 = load i32, i32* %r, align 4, !tbaa !27
  %add51 = add nsw i32 %74, 1280
  %idxprom52 = sext i32 %add51 to i64
  %75 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds i64, i64* %75, i64 %idxprom52
  %76 = load i64, i64* %arrayidx53, align 8, !tbaa !31
  %77 = load i32, i32* %g, align 4, !tbaa !27
  %add54 = add nsw i32 %77, 1536
  %idxprom55 = sext i32 %add54 to i64
  %78 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds i64, i64* %78, i64 %idxprom55
  %79 = load i64, i64* %arrayidx56, align 8, !tbaa !31
  %add57 = add nsw i64 %76, %79
  %80 = load i32, i32* %b, align 4, !tbaa !27
  %add58 = add nsw i32 %80, 1792
  %idxprom59 = sext i32 %add58 to i64
  %81 = load i64*, i64** %ctab, align 8, !tbaa !2
  %arrayidx60 = getelementptr inbounds i64, i64* %81, i64 %idxprom59
  %82 = load i64, i64* %arrayidx60, align 8, !tbaa !31
  %add61 = add nsw i64 %add57, %82
  %shr62 = ashr i64 %add61, 16
  %conv63 = trunc i64 %shr62 to i8
  %83 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom64 = zext i32 %83 to i64
  %84 = load i8*, i8** %outptr2, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds i8, i8* %84, i64 %idxprom64
  store i8 %conv63, i8* %arrayidx65, align 1, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %85 = load i32, i32* %col, align 4, !tbaa !27
  %inc66 = add i32 %85, 1
  store i32 %inc66, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %86 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i8** %outptr3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
!6 = !{!7, !3, i64 8}
!7 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !9, i64 56, !8, i64 64, !8, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !8, i64 232, !3, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !4, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !4, i64 284, !10, i64 286, !10, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !4, i64 320, !8, i64 352, !8, i64 356, !8, i64 360, !4, i64 364, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!12, !3, i64 0}
!12 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !13, i64 88}
!13 = !{!"long", !4, i64 0}
!14 = !{!7, !3, i64 464}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !3, i64 16}
!17 = !{!"jpeg_color_converter", !3, i64 0, !3, i64 8}
!18 = !{!7, !4, i64 52}
!19 = !{!7, !8, i64 48}
!20 = !{!7, !3, i64 0}
!21 = !{!22, !8, i64 40}
!22 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!23 = !{!22, !3, i64 0}
!24 = !{!7, !4, i64 72}
!25 = !{!7, !8, i64 68}
!26 = !{!16, !3, i64 8}
!27 = !{!8, !8, i64 0}
!28 = !{!7, !8, i64 40}
!29 = !{!4, !4, i64 0}
!30 = !{!16, !3, i64 16}
!31 = !{!13, !13, i64 0}
