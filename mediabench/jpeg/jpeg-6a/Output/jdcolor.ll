; ModuleID = 'jdcolor.c'
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
%struct.my_color_deconverter = type { %struct.jpeg_color_deconverter, i32*, i32*, i64*, i64* }

; Function Attrs: nounwind ssp uwtable
define void @jinit_color_deconverter(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 48)
  %7 = bitcast i8* %call to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %7, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %8 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %9 = bitcast %struct.my_color_deconverter* %8 to %struct.jpeg_color_deconverter*
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 82
  store %struct.jpeg_color_deconverter* %9, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !14
  %11 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %11, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_dcolor, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8, !tbaa !15
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 9
  %13 = load i32, i32* %jpeg_color_space, align 4, !tbaa !18
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.13
    i32 5, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 8
  %15 = load i32, i32* %num_components, align 4, !tbaa !19
  %cmp = icmp ne i32 %15, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 8, i32* %msg_code, align 4, !tbaa !21
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 8
  %24 = load i32, i32* %num_components5, align 4, !tbaa !19
  %cmp6 = icmp ne i32 %24, 3
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %sw.bb.4
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !20
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 8, i32* %msg_code9, align 4, !tbaa !21
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !20
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8, !tbaa !23
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %31)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %sw.bb.4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry, %entry
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 8
  %33 = load i32, i32* %num_components14, align 4, !tbaa !19
  %cmp15 = icmp ne i32 %33, 4
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %sw.bb.13
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !20
  %msg_code18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 5
  store i32 8, i32* %msg_code18, align 4, !tbaa !21
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !20
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 0
  %38 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit20, align 8, !tbaa !23
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %40 = bitcast %struct.jpeg_decompress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* %40)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %sw.bb.13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 8
  %42 = load i32, i32* %num_components22, align 4, !tbaa !19
  %cmp23 = icmp slt i32 %42, 1
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %sw.default
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err25, align 8, !tbaa !20
  %msg_code26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 5
  store i32 8, i32* %msg_code26, align 4, !tbaa !21
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !20
  %error_exit28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 0
  %47 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit28, align 8, !tbaa !23
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* %49)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %if.end.21, %if.end.12, %if.end
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 10
  %51 = load i32, i32* %out_color_space, align 4, !tbaa !24
  switch i32 %51, label %sw.default.84 [
    i32 1, label %sw.bb.30
    i32 2, label %sw.bb.44
    i32 4, label %sw.bb.64
  ]

sw.bb.30:                                         ; preds = %sw.epilog
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 28
  store i32 1, i32* %out_color_components, align 4, !tbaa !25
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 9
  %54 = load i32, i32* %jpeg_color_space31, align 4, !tbaa !18
  %cmp32 = icmp eq i32 %54, 1
  br i1 %cmp32, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.30
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 9
  %56 = load i32, i32* %jpeg_color_space33, align 4, !tbaa !18
  %cmp34 = icmp eq i32 %56, 3
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %lor.lhs.false, %sw.bb.30
  %57 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %pub36 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %57, i32 0, i32 0
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub36, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @grayscale_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert, align 8, !tbaa !26
  store i32 1, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.35
  %58 = load i32, i32* %ci, align 4, !tbaa !27
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 8
  %60 = load i32, i32* %num_components37, align 4, !tbaa !19
  %cmp38 = icmp slt i32 %58, %60
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom = sext i32 %61 to i64
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 43
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i64 %idxprom
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 12
  store i32 0, i32* %component_needed, align 4, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %ci, align 4, !tbaa !27
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.else:                                          ; preds = %lor.lhs.false
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !20
  %msg_code40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 25, i32* %msg_code40, align 4, !tbaa !21
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err41, align 8, !tbaa !20
  %error_exit42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 0
  %69 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit42, align 8, !tbaa !23
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %71 = bitcast %struct.jpeg_decompress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %for.end
  br label %sw.epilog.99

sw.bb.44:                                         ; preds = %sw.epilog
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 28
  store i32 3, i32* %out_color_components45, align 4, !tbaa !25
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 9
  %74 = load i32, i32* %jpeg_color_space46, align 4, !tbaa !18
  %cmp47 = icmp eq i32 %74, 3
  br i1 %cmp47, label %if.then.48, label %if.else.51

if.then.48:                                       ; preds = %sw.bb.44
  %75 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %pub49 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %75, i32 0, i32 0
  %color_convert50 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub49, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycc_rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert50, align 8, !tbaa !26
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %76)
  br label %if.end.63

if.else.51:                                       ; preds = %sw.bb.44
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 9
  %78 = load i32, i32* %jpeg_color_space52, align 4, !tbaa !18
  %cmp53 = icmp eq i32 %78, 2
  br i1 %cmp53, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %if.else.51
  %79 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %pub55 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %79, i32 0, i32 0
  %color_convert56 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub55, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert56, align 8, !tbaa !26
  br label %if.end.62

if.else.57:                                       ; preds = %if.else.51
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8, !tbaa !20
  %msg_code59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 5
  store i32 25, i32* %msg_code59, align 4, !tbaa !21
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 0
  %83 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8, !tbaa !20
  %error_exit61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %83, i32 0, i32 0
  %84 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit61, align 8, !tbaa !23
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %86 = bitcast %struct.jpeg_decompress_struct* %85 to %struct.jpeg_common_struct*
  call void %84(%struct.jpeg_common_struct* %86)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.57, %if.then.54
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.48
  br label %sw.epilog.99

sw.bb.64:                                         ; preds = %sw.epilog
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 28
  store i32 4, i32* %out_color_components65, align 4, !tbaa !25
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 9
  %89 = load i32, i32* %jpeg_color_space66, align 4, !tbaa !18
  %cmp67 = icmp eq i32 %89, 5
  br i1 %cmp67, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %sw.bb.64
  %90 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %pub69 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %90, i32 0, i32 0
  %color_convert70 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub69, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycck_cmyk_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert70, align 8, !tbaa !26
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %91)
  br label %if.end.83

if.else.71:                                       ; preds = %sw.bb.64
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 9
  %93 = load i32, i32* %jpeg_color_space72, align 4, !tbaa !18
  %cmp73 = icmp eq i32 %93, 4
  br i1 %cmp73, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %if.else.71
  %94 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %pub75 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %94, i32 0, i32 0
  %color_convert76 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub75, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert76, align 8, !tbaa !26
  br label %if.end.82

if.else.77:                                       ; preds = %if.else.71
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err78, align 8, !tbaa !20
  %msg_code79 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 5
  store i32 25, i32* %msg_code79, align 4, !tbaa !21
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err80, align 8, !tbaa !20
  %error_exit81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 0
  %99 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit81, align 8, !tbaa !23
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %101 = bitcast %struct.jpeg_decompress_struct* %100 to %struct.jpeg_common_struct*
  call void %99(%struct.jpeg_common_struct* %101)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.77, %if.then.74
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.68
  br label %sw.epilog.99

sw.default.84:                                    ; preds = %sw.epilog
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_space85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 10
  %103 = load i32, i32* %out_color_space85, align 4, !tbaa !24
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 9
  %105 = load i32, i32* %jpeg_color_space86, align 4, !tbaa !18
  %cmp87 = icmp eq i32 %103, %105
  br i1 %cmp87, label %if.then.88, label %if.else.93

if.then.88:                                       ; preds = %sw.default.84
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 8
  %107 = load i32, i32* %num_components89, align 4, !tbaa !19
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 28
  store i32 %107, i32* %out_color_components90, align 4, !tbaa !25
  %109 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %pub91 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %109, i32 0, i32 0
  %color_convert92 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub91, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert92, align 8, !tbaa !26
  br label %if.end.98

if.else.93:                                       ; preds = %sw.default.84
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err94, align 8, !tbaa !20
  %msg_code95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i32 0, i32 5
  store i32 25, i32* %msg_code95, align 4, !tbaa !21
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err96, align 8, !tbaa !20
  %error_exit97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 0
  %114 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit97, align 8, !tbaa !23
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %116 = bitcast %struct.jpeg_decompress_struct* %115 to %struct.jpeg_common_struct*
  call void %114(%struct.jpeg_common_struct* %116)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.93, %if.then.88
  br label %sw.epilog.99

sw.epilog.99:                                     ; preds = %if.end.98, %if.end.83, %if.end.63, %if.end.43
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 19
  %118 = load i32, i32* %quantize_colors, align 4, !tbaa !31
  %tobool = icmp ne i32 %118, 0
  br i1 %tobool, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %sw.epilog.99
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 29
  store i32 1, i32* %output_components, align 4, !tbaa !32
  br label %if.end.104

if.else.101:                                      ; preds = %sw.epilog.99
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 28
  %121 = load i32, i32* %out_color_components102, align 4, !tbaa !25
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_components103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 29
  store i32 %121, i32* %output_components103, align 4, !tbaa !32
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  %123 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #3
  %124 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_dcolor(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @grayscale_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %0, i64 0
  %1 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %2 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %3 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %4 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4, !tbaa !33
  call void @jcopy_sample_rows(i8** %1, i32 %2, i8** %3, i32 0, i32 %4, i32 %6)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @ycc_rgb_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %Crrtab = alloca i32*, align 8
  %Cbbtab = alloca i32*, align 8
  %Crgtab = alloca i64*, align 8
  %Cbgtab = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 82
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 26
  %14 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %14, i32* %num_cols, align 4, !tbaa !27
  %15 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 61
  %17 = load i8*, i8** %sample_range_limit, align 8, !tbaa !34
  store i8* %17, i8** %range_limit, align 8, !tbaa !2
  %18 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %19, i32 0, i32 1
  %20 = load i32*, i32** %Cr_r_tab, align 8, !tbaa !35
  store i32* %20, i32** %Crrtab, align 8, !tbaa !2
  %21 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %22, i32 0, i32 2
  %23 = load i32*, i32** %Cb_b_tab, align 8, !tbaa !36
  store i32* %23, i32** %Cbbtab, align 8, !tbaa !2
  %24 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #3
  %25 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %25, i32 0, i32 3
  %26 = load i64*, i64** %Cr_g_tab, align 8, !tbaa !37
  store i64* %26, i64** %Crgtab, align 8, !tbaa !2
  %27 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #3
  %28 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %28, i32 0, i32 4
  %29 = load i64*, i64** %Cb_g_tab, align 8, !tbaa !38
  store i64* %29, i64** %Cbgtab, align 8, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %30 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %31 to i64
  %32 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %32, i64 0
  %33 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %33, i64 %idxprom
  %34 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %34, i8** %inptr0, align 8, !tbaa !2
  %35 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom3 = zext i32 %35 to i64
  %36 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8**, i8*** %36, i64 1
  %37 = load i8**, i8*** %arrayidx4, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8*, i8** %37, i64 %idxprom3
  %38 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  store i8* %38, i8** %inptr1, align 8, !tbaa !2
  %39 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom6 = zext i32 %39 to i64
  %40 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8**, i8*** %40, i64 2
  %41 = load i8**, i8*** %arrayidx7, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %41, i64 %idxprom6
  %42 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  store i8* %42, i8** %inptr2, align 8, !tbaa !2
  %43 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc = add i32 %43, 1
  store i32 %inc, i32* %input_row.addr, align 4, !tbaa !27
  %44 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8, !tbaa !2
  %45 = load i8*, i8** %44, align 8, !tbaa !2
  store i8* %45, i8** %outptr, align 8, !tbaa !2
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %46 = load i32, i32* %col, align 4, !tbaa !27
  %47 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp9 = icmp ult i32 %46, %47
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom10 = zext i32 %48 to i64
  %49 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8, i8* %49, i64 %idxprom10
  %50 = load i8, i8* %arrayidx11, align 1, !tbaa !39
  %conv = zext i8 %50 to i32
  store i32 %conv, i32* %y, align 4, !tbaa !27
  %51 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom12 = zext i32 %51 to i64
  %52 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8, i8* %52, i64 %idxprom12
  %53 = load i8, i8* %arrayidx13, align 1, !tbaa !39
  %conv14 = zext i8 %53 to i32
  store i32 %conv14, i32* %cb, align 4, !tbaa !27
  %54 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom15 = zext i32 %54 to i64
  %55 = load i8*, i8** %inptr2, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds i8, i8* %55, i64 %idxprom15
  %56 = load i8, i8* %arrayidx16, align 1, !tbaa !39
  %conv17 = zext i8 %56 to i32
  store i32 %conv17, i32* %cr, align 4, !tbaa !27
  %57 = load i32, i32* %y, align 4, !tbaa !27
  %58 = load i32, i32* %cr, align 4, !tbaa !27
  %idxprom18 = sext i32 %58 to i64
  %59 = load i32*, i32** %Crrtab, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i32, i32* %59, i64 %idxprom18
  %60 = load i32, i32* %arrayidx19, align 4, !tbaa !27
  %add = add nsw i32 %57, %60
  %idxprom20 = sext i32 %add to i64
  %61 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i8, i8* %61, i64 %idxprom20
  %62 = load i8, i8* %arrayidx21, align 1, !tbaa !39
  %63 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %62, i8* %arrayidx22, align 1, !tbaa !39
  %64 = load i32, i32* %y, align 4, !tbaa !27
  %65 = load i32, i32* %cb, align 4, !tbaa !27
  %idxprom23 = sext i32 %65 to i64
  %66 = load i64*, i64** %Cbgtab, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i64, i64* %66, i64 %idxprom23
  %67 = load i64, i64* %arrayidx24, align 8, !tbaa !40
  %68 = load i32, i32* %cr, align 4, !tbaa !27
  %idxprom25 = sext i32 %68 to i64
  %69 = load i64*, i64** %Crgtab, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i64, i64* %69, i64 %idxprom25
  %70 = load i64, i64* %arrayidx26, align 8, !tbaa !40
  %add27 = add nsw i64 %67, %70
  %shr = ashr i64 %add27, 16
  %conv28 = trunc i64 %shr to i32
  %add29 = add nsw i32 %64, %conv28
  %idxprom30 = sext i32 %add29 to i64
  %71 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds i8, i8* %71, i64 %idxprom30
  %72 = load i8, i8* %arrayidx31, align 1, !tbaa !39
  %73 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %arrayidx32, align 1, !tbaa !39
  %74 = load i32, i32* %y, align 4, !tbaa !27
  %75 = load i32, i32* %cb, align 4, !tbaa !27
  %idxprom33 = sext i32 %75 to i64
  %76 = load i32*, i32** %Cbbtab, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds i32, i32* %76, i64 %idxprom33
  %77 = load i32, i32* %arrayidx34, align 4, !tbaa !27
  %add35 = add nsw i32 %74, %77
  %idxprom36 = sext i32 %add35 to i64
  %78 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds i8, i8* %78, i64 %idxprom36
  %79 = load i8, i8* %arrayidx37, align 1, !tbaa !39
  %80 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i8, i8* %80, i64 2
  store i8 %79, i8* %arrayidx38, align 1, !tbaa !39
  %81 = load i8*, i8** %outptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %81, i64 3
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load i32, i32* %col, align 4, !tbaa !27
  %inc39 = add i32 %82, 1
  store i32 %inc39, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %83 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #3
  %84 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #3
  %85 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #3
  %86 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #3
  %87 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #3
  %88 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #3
  %90 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #3
  %91 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #3
  %92 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #3
  %93 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #3
  %94 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #3
  %95 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #3
  %96 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #3
  %97 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 82
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i64* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %call = call i8* %8(%struct.jpeg_common_struct* %10, i32 1, i64 1024)
  %11 = bitcast i8* %call to i32*
  %12 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %12, i32 0, i32 1
  store i32* %11, i32** %Cr_r_tab, align 8, !tbaa !35
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem2, align 8, !tbaa !6
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i32 0, i32 0
  %15 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small3, align 8, !tbaa !11
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  %call4 = call i8* %15(%struct.jpeg_common_struct* %17, i32 1, i64 1024)
  %18 = bitcast i8* %call4 to i32*
  %19 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %19, i32 0, i32 2
  store i32* %18, i32** %Cb_b_tab, align 8, !tbaa !36
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8, !tbaa !6
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 0
  %22 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small6, align 8, !tbaa !11
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  %call7 = call i8* %22(%struct.jpeg_common_struct* %24, i32 1, i64 2048)
  %25 = bitcast i8* %call7 to i64*
  %26 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %26, i32 0, i32 3
  store i64* %25, i64** %Cr_g_tab, align 8, !tbaa !37
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem8, align 8, !tbaa !6
  %alloc_small9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i32 0, i32 0
  %29 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small9, align 8, !tbaa !11
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  %call10 = call i8* %29(%struct.jpeg_common_struct* %31, i32 1, i64 2048)
  %32 = bitcast i8* %call10 to i64*
  %33 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %33, i32 0, i32 4
  store i64* %32, i64** %Cb_g_tab, align 8, !tbaa !38
  store i32 0, i32* %i, align 4, !tbaa !27
  store i64 -128, i64* %x, align 8, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %34 = load i32, i32* %i, align 4, !tbaa !27
  %cmp = icmp sle i32 %34, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i64, i64* %x, align 8, !tbaa !40
  %mul = mul nsw i64 91881, %35
  %add = add nsw i64 %mul, 32768
  %shr = ashr i64 %add, 16
  %conv = trunc i64 %shr to i32
  %36 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cr_r_tab11 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %37, i32 0, i32 1
  %38 = load i32*, i32** %Cr_r_tab11, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds i32, i32* %38, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !27
  %39 = load i64, i64* %x, align 8, !tbaa !40
  %mul12 = mul nsw i64 116130, %39
  %add13 = add nsw i64 %mul12, 32768
  %shr14 = ashr i64 %add13, 16
  %conv15 = trunc i64 %shr14 to i32
  %40 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom16 = sext i32 %40 to i64
  %41 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cb_b_tab17 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %41, i32 0, i32 2
  %42 = load i32*, i32** %Cb_b_tab17, align 8, !tbaa !36
  %arrayidx18 = getelementptr inbounds i32, i32* %42, i64 %idxprom16
  store i32 %conv15, i32* %arrayidx18, align 4, !tbaa !27
  %43 = load i64, i64* %x, align 8, !tbaa !40
  %mul19 = mul nsw i64 -46802, %43
  %44 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom20 = sext i32 %44 to i64
  %45 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cr_g_tab21 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %45, i32 0, i32 3
  %46 = load i64*, i64** %Cr_g_tab21, align 8, !tbaa !37
  %arrayidx22 = getelementptr inbounds i64, i64* %46, i64 %idxprom20
  store i64 %mul19, i64* %arrayidx22, align 8, !tbaa !40
  %47 = load i64, i64* %x, align 8, !tbaa !40
  %mul23 = mul nsw i64 -22554, %47
  %add24 = add nsw i64 %mul23, 32768
  %48 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom25 = sext i32 %48 to i64
  %49 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cb_g_tab26 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %49, i32 0, i32 4
  %50 = load i64*, i64** %Cb_g_tab26, align 8, !tbaa !38
  %arrayidx27 = getelementptr inbounds i64, i64* %50, i64 %idxprom25
  store i64 %add24, i64* %arrayidx27, align 8, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  %52 = load i64, i64* %x, align 8, !tbaa !40
  %inc28 = add nsw i64 %52, 1
  store i64 %inc28, i64* %x, align 8, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = bitcast i64* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #3
  %55 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @null_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %count = alloca i32, align 4
  %num_components = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %ci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 8
  %5 = load i32, i32* %num_components1, align 4, !tbaa !19
  store i32 %5, i32* %num_components, align 4, !tbaa !27
  %6 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 26
  %8 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %8, i32* %num_cols, align 4, !tbaa !27
  %9 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
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

for.cond:                                         ; preds = %for.inc.12, %while.body
  %11 = load i32, i32* %ci, align 4, !tbaa !27
  %12 = load i32, i32* %num_components, align 4, !tbaa !27
  %cmp2 = icmp slt i32 %11, %12
  br i1 %cmp2, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %13 to i64
  %14 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom3 = sext i32 %14 to i64
  %15 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %15, i64 %idxprom3
  %16 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8*, i8** %16, i64 %idxprom
  %17 = load i8*, i8** %arrayidx4, align 8, !tbaa !2
  store i8* %17, i8** %inptr, align 8, !tbaa !2
  %18 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8*, i8** %18, i64 0
  %19 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  %20 = load i32, i32* %ci, align 4, !tbaa !27
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !2
  %21 = load i32, i32* %num_cols, align 4, !tbaa !27
  store i32 %21, i32* %count, align 4, !tbaa !27
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %22 = load i32, i32* %count, align 4, !tbaa !27
  %cmp7 = icmp ugt i32 %22, 0
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %23 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !2
  %24 = load i8, i8* %23, align 1, !tbaa !39
  %25 = load i8*, i8** %outptr, align 8, !tbaa !2
  store i8 %24, i8* %25, align 1, !tbaa !39
  %26 = load i32, i32* %num_components, align 4, !tbaa !27
  %27 = load i8*, i8** %outptr, align 8, !tbaa !2
  %idx.ext9 = sext i32 %26 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %27, i64 %idx.ext9
  store i8* %add.ptr10, i8** %outptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %28 = load i32, i32* %count, align 4, !tbaa !27
  %dec11 = add i32 %28, -1
  store i32 %dec11, i32* %count, align 4, !tbaa !27
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %29 = load i32, i32* %ci, align 4, !tbaa !27
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %30 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc14 = add i32 %30, 1
  store i32 %inc14, i32* %input_row.addr, align 4, !tbaa !27
  %31 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %incdec.ptr15 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %incdec.ptr15, i8*** %output_buf.addr, align 8, !tbaa !2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #3
  %33 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %34 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #3
  %35 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #3
  %36 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  %37 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @ycck_cmyk_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %inptr3 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %Crrtab = alloca i32*, align 8
  %Cbbtab = alloca i32*, align 8
  %Crgtab = alloca i64*, align 8
  %Cbgtab = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 82
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i8** %inptr3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 26
  %15 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %15, i32* %num_cols, align 4, !tbaa !27
  %16 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #3
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 61
  %18 = load i8*, i8** %sample_range_limit, align 8, !tbaa !34
  store i8* %18, i8** %range_limit, align 8, !tbaa !2
  %19 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %20, i32 0, i32 1
  %21 = load i32*, i32** %Cr_r_tab, align 8, !tbaa !35
  store i32* %21, i32** %Crrtab, align 8, !tbaa !2
  %22 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #3
  %23 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %23, i32 0, i32 2
  %24 = load i32*, i32** %Cb_b_tab, align 8, !tbaa !36
  store i32* %24, i32** %Cbbtab, align 8, !tbaa !2
  %25 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #3
  %26 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %26, i32 0, i32 3
  %27 = load i64*, i64** %Cr_g_tab, align 8, !tbaa !37
  store i64* %27, i64** %Crgtab, align 8, !tbaa !2
  %28 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #3
  %29 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !2
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %29, i32 0, i32 4
  %30 = load i64*, i64** %Cb_g_tab, align 8, !tbaa !38
  store i64* %30, i64** %Cbgtab, align 8, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %31 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %32 to i64
  %33 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %33, i64 0
  %34 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %35, i8** %inptr0, align 8, !tbaa !2
  %36 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom3 = zext i32 %36 to i64
  %37 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8**, i8*** %37, i64 1
  %38 = load i8**, i8*** %arrayidx4, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8*, i8** %38, i64 %idxprom3
  %39 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  store i8* %39, i8** %inptr1, align 8, !tbaa !2
  %40 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom6 = zext i32 %40 to i64
  %41 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8**, i8*** %41, i64 2
  %42 = load i8**, i8*** %arrayidx7, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %42, i64 %idxprom6
  %43 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  store i8* %43, i8** %inptr2, align 8, !tbaa !2
  %44 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom9 = zext i32 %44 to i64
  %45 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8**, i8*** %45, i64 3
  %46 = load i8**, i8*** %arrayidx10, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8*, i8** %46, i64 %idxprom9
  %47 = load i8*, i8** %arrayidx11, align 8, !tbaa !2
  store i8* %47, i8** %inptr3, align 8, !tbaa !2
  %48 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc = add i32 %48, 1
  store i32 %inc, i32* %input_row.addr, align 4, !tbaa !27
  %49 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8, !tbaa !2
  %50 = load i8*, i8** %49, align 8, !tbaa !2
  store i8* %50, i8** %outptr, align 8, !tbaa !2
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %51 = load i32, i32* %col, align 4, !tbaa !27
  %52 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp12 = icmp ult i32 %51, %52
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom13 = zext i32 %53 to i64
  %54 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8, i8* %54, i64 %idxprom13
  %55 = load i8, i8* %arrayidx14, align 1, !tbaa !39
  %conv = zext i8 %55 to i32
  store i32 %conv, i32* %y, align 4, !tbaa !27
  %56 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom15 = zext i32 %56 to i64
  %57 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds i8, i8* %57, i64 %idxprom15
  %58 = load i8, i8* %arrayidx16, align 1, !tbaa !39
  %conv17 = zext i8 %58 to i32
  store i32 %conv17, i32* %cb, align 4, !tbaa !27
  %59 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom18 = zext i32 %59 to i64
  %60 = load i8*, i8** %inptr2, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i8, i8* %60, i64 %idxprom18
  %61 = load i8, i8* %arrayidx19, align 1, !tbaa !39
  %conv20 = zext i8 %61 to i32
  store i32 %conv20, i32* %cr, align 4, !tbaa !27
  %62 = load i32, i32* %y, align 4, !tbaa !27
  %63 = load i32, i32* %cr, align 4, !tbaa !27
  %idxprom21 = sext i32 %63 to i64
  %64 = load i32*, i32** %Crrtab, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i32, i32* %64, i64 %idxprom21
  %65 = load i32, i32* %arrayidx22, align 4, !tbaa !27
  %add = add nsw i32 %62, %65
  %sub = sub nsw i32 255, %add
  %idxprom23 = sext i32 %sub to i64
  %66 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i8, i8* %66, i64 %idxprom23
  %67 = load i8, i8* %arrayidx24, align 1, !tbaa !39
  %68 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 %67, i8* %arrayidx25, align 1, !tbaa !39
  %69 = load i32, i32* %y, align 4, !tbaa !27
  %70 = load i32, i32* %cb, align 4, !tbaa !27
  %idxprom26 = sext i32 %70 to i64
  %71 = load i64*, i64** %Cbgtab, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i64, i64* %71, i64 %idxprom26
  %72 = load i64, i64* %arrayidx27, align 8, !tbaa !40
  %73 = load i32, i32* %cr, align 4, !tbaa !27
  %idxprom28 = sext i32 %73 to i64
  %74 = load i64*, i64** %Crgtab, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i64, i64* %74, i64 %idxprom28
  %75 = load i64, i64* %arrayidx29, align 8, !tbaa !40
  %add30 = add nsw i64 %72, %75
  %shr = ashr i64 %add30, 16
  %conv31 = trunc i64 %shr to i32
  %add32 = add nsw i32 %69, %conv31
  %sub33 = sub nsw i32 255, %add32
  %idxprom34 = sext i32 %sub33 to i64
  %76 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i8, i8* %76, i64 %idxprom34
  %77 = load i8, i8* %arrayidx35, align 1, !tbaa !39
  %78 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds i8, i8* %78, i64 1
  store i8 %77, i8* %arrayidx36, align 1, !tbaa !39
  %79 = load i32, i32* %y, align 4, !tbaa !27
  %80 = load i32, i32* %cb, align 4, !tbaa !27
  %idxprom37 = sext i32 %80 to i64
  %81 = load i32*, i32** %Cbbtab, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i32, i32* %81, i64 %idxprom37
  %82 = load i32, i32* %arrayidx38, align 4, !tbaa !27
  %add39 = add nsw i32 %79, %82
  %sub40 = sub nsw i32 255, %add39
  %idxprom41 = sext i32 %sub40 to i64
  %83 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i8, i8* %83, i64 %idxprom41
  %84 = load i8, i8* %arrayidx42, align 1, !tbaa !39
  %85 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx43 = getelementptr inbounds i8, i8* %85, i64 2
  store i8 %84, i8* %arrayidx43, align 1, !tbaa !39
  %86 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom44 = zext i32 %86 to i64
  %87 = load i8*, i8** %inptr3, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i8, i8* %87, i64 %idxprom44
  %88 = load i8, i8* %arrayidx45, align 1, !tbaa !39
  %89 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds i8, i8* %89, i64 3
  store i8 %88, i8* %arrayidx46, align 1, !tbaa !39
  %90 = load i8*, i8** %outptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %90, i64 4
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %91 = load i32, i32* %col, align 4, !tbaa !27
  %inc47 = add i32 %91, 1
  store i32 %inc47, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %92 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #3
  %93 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #3
  %94 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #3
  %95 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #3
  %96 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #3
  %97 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #3
  %98 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #3
  %99 = bitcast i8** %inptr3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #3
  %100 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #3
  %101 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #3
  %102 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #3
  %103 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #3
  %104 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #3
  %105 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #3
  %106 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #3
  %107 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #2

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
!6 = !{!7, !3, i64 8}
!7 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !4, i64 56, !8, i64 60, !8, i64 64, !9, i64 72, !8, i64 80, !8, i64 84, !4, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !4, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !3, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !8, i64 288, !3, i64 296, !8, i64 304, !8, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !8, i64 360, !8, i64 364, !4, i64 368, !10, i64 370, !10, i64 372, !8, i64 376, !4, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !3, i64 408, !8, i64 416, !4, i64 424, !8, i64 456, !8, i64 460, !8, i64 464, !4, i64 468, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!12, !3, i64 0}
!12 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !13, i64 88}
!13 = !{!"long", !4, i64 0}
!14 = !{!7, !3, i64 600}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40}
!17 = !{!"jpeg_color_deconverter", !3, i64 0, !3, i64 8}
!18 = !{!7, !4, i64 52}
!19 = !{!7, !8, i64 48}
!20 = !{!7, !3, i64 0}
!21 = !{!22, !8, i64 40}
!22 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!23 = !{!22, !3, i64 0}
!24 = !{!7, !4, i64 56}
!25 = !{!7, !8, i64 136}
!26 = !{!16, !3, i64 8}
!27 = !{!8, !8, i64 0}
!28 = !{!7, !3, i64 296}
!29 = !{!30, !8, i64 48}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!31 = !{!7, !8, i64 100}
!32 = !{!7, !8, i64 140}
!33 = !{!7, !8, i64 128}
!34 = !{!7, !3, i64 408}
!35 = !{!16, !3, i64 16}
!36 = !{!16, !3, i64 24}
!37 = !{!16, !3, i64 32}
!38 = !{!16, !3, i64 40}
!39 = !{!4, !4, i64 0}
!40 = !{!13, !13, i64 0}
