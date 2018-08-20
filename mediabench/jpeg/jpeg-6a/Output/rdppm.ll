; ModuleID = 'rdppm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.cjpeg_source_struct = type { void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, %struct.__sFILE*, i8**, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct.ppm_source_struct = type { %struct.cjpeg_source_struct, i8*, i8*, i64, i8* }

; Function Attrs: nounwind ssp uwtable
define %struct.cjpeg_source_struct* @jinit_read_ppm(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 80)
  %6 = bitcast i8* %call to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %6, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %7 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %7, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_ppm, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %start_input, align 8, !tbaa !14
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %8, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub1, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_ppm, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %finish_input, align 8, !tbaa !17
  %9 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %10 = bitcast %struct.ppm_source_struct* %9 to %struct.cjpeg_source_struct*
  %11 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #3
  ret %struct.cjpeg_source_struct* %10
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_ppm(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %c = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %maxval = alloca i32, align 4
  %need_iobuffer = alloca i32, align 4
  %use_raw_buffer = alloca i32, align 4
  %need_rescale = alloca i32, align 4
  %val = alloca i64, align 8
  %half_maxval = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %2, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %maxval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %need_iobuffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %use_raw_buffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %need_rescale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %10, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %11 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !18
  %call = call i32 @getc(%struct.__sFILE* %11)
  %cmp = icmp ne i32 %call, 80
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 1027, i32* %msg_code, align 4, !tbaa !20
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 0
  %input_file3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 3
  %20 = load %struct.__sFILE*, %struct.__sFILE** %input_file3, align 8, !tbaa !18
  %call4 = call i32 @getc(%struct.__sFILE* %20)
  store i32 %call4, i32* %c, align 4, !tbaa !23
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %22, i32 0, i32 0
  %input_file6 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub5, i32 0, i32 3
  %23 = load %struct.__sFILE*, %struct.__sFILE** %input_file6, align 8, !tbaa !18
  %call7 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %21, %struct.__sFILE* %23)
  store i32 %call7, i32* %w, align 4, !tbaa !23
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub8 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %25, i32 0, i32 0
  %input_file9 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub8, i32 0, i32 3
  %26 = load %struct.__sFILE*, %struct.__sFILE** %input_file9, align 8, !tbaa !18
  %call10 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %24, %struct.__sFILE* %26)
  store i32 %call10, i32* %h, align 4, !tbaa !23
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %28 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub11 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %28, i32 0, i32 0
  %input_file12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub11, i32 0, i32 3
  %29 = load %struct.__sFILE*, %struct.__sFILE** %input_file12, align 8, !tbaa !18
  %call13 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %27, %struct.__sFILE* %29)
  store i32 %call13, i32* %maxval, align 4, !tbaa !23
  %30 = load i32, i32* %w, align 4, !tbaa !23
  %cmp14 = icmp ule i32 %30, 0
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %31 = load i32, i32* %h, align 4, !tbaa !23
  %cmp15 = icmp ule i32 %31, 0
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %32 = load i32, i32* %maxval, align 4, !tbaa !23
  %cmp17 = icmp ule i32 %32, 0
  br i1 %cmp17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %if.end
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !19
  %msg_code20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 1027, i32* %msg_code20, align 4, !tbaa !20
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err21, align 8, !tbaa !19
  %error_exit22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit22, align 8, !tbaa !22
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %39 = bitcast %struct.jpeg_compress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* %39)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %lor.lhs.false.16
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 11
  store i32 8, i32* %data_precision, align 4, !tbaa !24
  %41 = load i32, i32* %w, align 4, !tbaa !23
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 6
  store i32 %41, i32* %image_width, align 4, !tbaa !25
  %43 = load i32, i32* %h, align 4, !tbaa !23
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 7
  store i32 %43, i32* %image_height, align 4, !tbaa !26
  store i32 1, i32* %need_iobuffer, align 4, !tbaa !23
  store i32 0, i32* %use_raw_buffer, align 4, !tbaa !23
  store i32 1, i32* %need_rescale, align 4, !tbaa !23
  %45 = load i32, i32* %c, align 4, !tbaa !23
  switch i32 %45, label %sw.default [
    i32 50, label %sw.bb
    i32 51, label %sw.bb.33
    i32 53, label %sw.bb.50
    i32 54, label %sw.bb.78
  ]

sw.bb:                                            ; preds = %if.end.23
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 8
  store i32 1, i32* %input_components, align 4, !tbaa !27
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 9
  store i32 1, i32* %in_color_space, align 4, !tbaa !28
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8, !tbaa !19
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 5
  store i32 1029, i32* %msg_code25, align 4, !tbaa !20
  %50 = load i32, i32* %w, align 4, !tbaa !23
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err26, align 8, !tbaa !19
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %50, i32* %arrayidx, align 4, !tbaa !23
  %53 = load i32, i32* %h, align 4, !tbaa !23
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !19
  %msg_parm28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 6
  %i29 = bitcast %union.anon* %msg_parm28 to [8 x i32]*
  %arrayidx30 = getelementptr inbounds [8 x i32], [8 x i32]* %i29, i32 0, i64 1
  store i32 %53, i32* %arrayidx30, align 4, !tbaa !23
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !19
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 1
  %58 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !29
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %60 = bitcast %struct.jpeg_compress_struct* %59 to %struct.jpeg_common_struct*
  call void %58(%struct.jpeg_common_struct* %60, i32 1)
  %61 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub32 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %61, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub32, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_text_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8, !tbaa !30
  store i32 0, i32* %need_iobuffer, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.23
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 8
  store i32 3, i32* %input_components34, align 4, !tbaa !27
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 9
  store i32 2, i32* %in_color_space35, align 4, !tbaa !28
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err36, align 8, !tbaa !19
  %msg_code37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 5
  store i32 1031, i32* %msg_code37, align 4, !tbaa !20
  %66 = load i32, i32* %w, align 4, !tbaa !23
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8, !tbaa !19
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 6
  %i40 = bitcast %union.anon* %msg_parm39 to [8 x i32]*
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %i40, i32 0, i64 0
  store i32 %66, i32* %arrayidx41, align 4, !tbaa !23
  %69 = load i32, i32* %h, align 4, !tbaa !23
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8, !tbaa !19
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 6
  %i44 = bitcast %union.anon* %msg_parm43 to [8 x i32]*
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %i44, i32 0, i64 1
  store i32 %69, i32* %arrayidx45, align 4, !tbaa !23
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8, !tbaa !19
  %emit_message47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 1
  %74 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message47, align 8, !tbaa !29
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %76 = bitcast %struct.jpeg_compress_struct* %75 to %struct.jpeg_common_struct*
  call void %74(%struct.jpeg_common_struct* %76, i32 1)
  %77 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub48 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %77, i32 0, i32 0
  %get_pixel_rows49 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub48, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_text_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows49, align 8, !tbaa !30
  store i32 0, i32* %need_iobuffer, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.23
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 8
  store i32 1, i32* %input_components51, align 4, !tbaa !27
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 9
  store i32 1, i32* %in_color_space52, align 4, !tbaa !28
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8, !tbaa !19
  %msg_code54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 5
  store i32 1028, i32* %msg_code54, align 4, !tbaa !20
  %82 = load i32, i32* %w, align 4, !tbaa !23
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 0
  %84 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8, !tbaa !19
  %msg_parm56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %84, i32 0, i32 6
  %i57 = bitcast %union.anon* %msg_parm56 to [8 x i32]*
  %arrayidx58 = getelementptr inbounds [8 x i32], [8 x i32]* %i57, i32 0, i64 0
  store i32 %82, i32* %arrayidx58, align 4, !tbaa !23
  %85 = load i32, i32* %h, align 4, !tbaa !23
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %86, i32 0, i32 0
  %87 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !19
  %msg_parm60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %87, i32 0, i32 6
  %i61 = bitcast %union.anon* %msg_parm60 to [8 x i32]*
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %i61, i32 0, i64 1
  store i32 %85, i32* %arrayidx62, align 4, !tbaa !23
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err63, align 8, !tbaa !19
  %emit_message64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 1
  %90 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message64, align 8, !tbaa !29
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %92 = bitcast %struct.jpeg_compress_struct* %91 to %struct.jpeg_common_struct*
  call void %90(%struct.jpeg_common_struct* %92, i32 1)
  %93 = load i32, i32* %maxval, align 4, !tbaa !23
  %cmp65 = icmp ugt i32 %93, 255
  br i1 %cmp65, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %sw.bb.50
  %94 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub67 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %94, i32 0, i32 0
  %get_pixel_rows68 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub67, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_word_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows68, align 8, !tbaa !30
  br label %if.end.77

if.else:                                          ; preds = %sw.bb.50
  %95 = load i32, i32* %maxval, align 4, !tbaa !23
  %cmp69 = icmp eq i32 %95, 255
  br i1 %cmp69, label %if.then.70, label %if.else.73

if.then.70:                                       ; preds = %if.else
  %96 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub71 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %96, i32 0, i32 0
  %get_pixel_rows72 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub71, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_raw_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows72, align 8, !tbaa !30
  store i32 1, i32* %use_raw_buffer, align 4, !tbaa !23
  store i32 0, i32* %need_rescale, align 4, !tbaa !23
  br label %if.end.76

if.else.73:                                       ; preds = %if.else
  %97 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub74 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %97, i32 0, i32 0
  %get_pixel_rows75 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub74, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_scaled_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows75, align 8, !tbaa !30
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.66
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.23
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 8
  store i32 3, i32* %input_components79, align 4, !tbaa !27
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 9
  store i32 2, i32* %in_color_space80, align 4, !tbaa !28
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8, !tbaa !19
  %msg_code82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 5
  store i32 1030, i32* %msg_code82, align 4, !tbaa !20
  %102 = load i32, i32* %w, align 4, !tbaa !23
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err83, align 8, !tbaa !19
  %msg_parm84 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 6
  %i85 = bitcast %union.anon* %msg_parm84 to [8 x i32]*
  %arrayidx86 = getelementptr inbounds [8 x i32], [8 x i32]* %i85, i32 0, i64 0
  store i32 %102, i32* %arrayidx86, align 4, !tbaa !23
  %105 = load i32, i32* %h, align 4, !tbaa !23
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err87 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 0
  %107 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err87, align 8, !tbaa !19
  %msg_parm88 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %107, i32 0, i32 6
  %i89 = bitcast %union.anon* %msg_parm88 to [8 x i32]*
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %i89, i32 0, i64 1
  store i32 %105, i32* %arrayidx90, align 4, !tbaa !23
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err91, align 8, !tbaa !19
  %emit_message92 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 1
  %110 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message92, align 8, !tbaa !29
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %112 = bitcast %struct.jpeg_compress_struct* %111 to %struct.jpeg_common_struct*
  call void %110(%struct.jpeg_common_struct* %112, i32 1)
  %113 = load i32, i32* %maxval, align 4, !tbaa !23
  %cmp93 = icmp ugt i32 %113, 255
  br i1 %cmp93, label %if.then.94, label %if.else.97

if.then.94:                                       ; preds = %sw.bb.78
  %114 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub95 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %114, i32 0, i32 0
  %get_pixel_rows96 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub95, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_word_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows96, align 8, !tbaa !30
  br label %if.end.106

if.else.97:                                       ; preds = %sw.bb.78
  %115 = load i32, i32* %maxval, align 4, !tbaa !23
  %cmp98 = icmp eq i32 %115, 255
  br i1 %cmp98, label %if.then.99, label %if.else.102

if.then.99:                                       ; preds = %if.else.97
  %116 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub100 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %116, i32 0, i32 0
  %get_pixel_rows101 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub100, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_raw_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows101, align 8, !tbaa !30
  store i32 1, i32* %use_raw_buffer, align 4, !tbaa !23
  store i32 0, i32* %need_rescale, align 4, !tbaa !23
  br label %if.end.105

if.else.102:                                      ; preds = %if.else.97
  %117 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub103 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %117, i32 0, i32 0
  %get_pixel_rows104 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub103, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_scaled_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows104, align 8, !tbaa !30
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.99
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.94
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.23
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 0
  %119 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err107, align 8, !tbaa !19
  %msg_code108 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %119, i32 0, i32 5
  store i32 1027, i32* %msg_code108, align 4, !tbaa !20
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 0
  %121 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err109, align 8, !tbaa !19
  %error_exit110 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %121, i32 0, i32 0
  %122 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit110, align 8, !tbaa !22
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %124 = bitcast %struct.jpeg_compress_struct* %123 to %struct.jpeg_common_struct*
  call void %122(%struct.jpeg_common_struct* %124)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.106, %if.end.77, %sw.bb.33, %sw.bb
  %125 = load i32, i32* %need_iobuffer, align 4, !tbaa !23
  %tobool = icmp ne i32 %125, 0
  br i1 %tobool, label %if.then.111, label %if.end.119

if.then.111:                                      ; preds = %sw.epilog
  %126 = load i32, i32* %w, align 4, !tbaa !23
  %conv = zext i32 %126 to i64
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 8
  %128 = load i32, i32* %input_components112, align 4, !tbaa !27
  %conv113 = sext i32 %128 to i64
  %mul = mul i64 %conv, %conv113
  %129 = load i32, i32* %maxval, align 4, !tbaa !23
  %cmp114 = icmp ule i32 %129, 255
  %cond = select i1 %cmp114, i64 1, i64 2
  %mul116 = mul i64 %mul, %cond
  %130 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %130, i32 0, i32 3
  store i64 %mul116, i64* %buffer_width, align 8, !tbaa !31
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %131, i32 0, i32 1
  %132 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %132, i32 0, i32 0
  %133 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %134 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %135 = bitcast %struct.jpeg_compress_struct* %134 to %struct.jpeg_common_struct*
  %136 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width117 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %136, i32 0, i32 3
  %137 = load i64, i64* %buffer_width117, align 8, !tbaa !31
  %call118 = call i8* %133(%struct.jpeg_common_struct* %135, i32 1, i64 %137)
  %138 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %138, i32 0, i32 1
  store i8* %call118, i8** %iobuffer, align 8, !tbaa !32
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.111, %sw.epilog
  %139 = load i32, i32* %use_raw_buffer, align 4, !tbaa !23
  %tobool120 = icmp ne i32 %139, 0
  br i1 %tobool120, label %if.then.121, label %if.else.126

if.then.121:                                      ; preds = %if.end.119
  %140 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer122 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %140, i32 0, i32 1
  %141 = load i8*, i8** %iobuffer122, align 8, !tbaa !32
  %142 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pixrow = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %142, i32 0, i32 2
  store i8* %141, i8** %pixrow, align 8, !tbaa !33
  %143 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pixrow123 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %143, i32 0, i32 2
  %144 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub124 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %144, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub124, i32 0, i32 4
  store i8** %pixrow123, i8*** %buffer, align 8, !tbaa !34
  %145 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub125 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %145, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub125, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4, !tbaa !35
  br label %if.end.135

if.else.126:                                      ; preds = %if.end.119
  %146 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem127 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %146, i32 0, i32 1
  %147 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem127, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %147, i32 0, i32 2
  %148 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !36
  %149 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %150 = bitcast %struct.jpeg_compress_struct* %149 to %struct.jpeg_common_struct*
  %151 = load i32, i32* %w, align 4, !tbaa !23
  %152 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %152, i32 0, i32 8
  %153 = load i32, i32* %input_components128, align 4, !tbaa !27
  %mul129 = mul i32 %151, %153
  %call130 = call i8** %148(%struct.jpeg_common_struct* %150, i32 1, i32 %mul129, i32 1)
  %154 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub131 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %154, i32 0, i32 0
  %buffer132 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub131, i32 0, i32 4
  store i8** %call130, i8*** %buffer132, align 8, !tbaa !34
  %155 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub133 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %155, i32 0, i32 0
  %buffer_height134 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub133, i32 0, i32 5
  store i32 1, i32* %buffer_height134, align 4, !tbaa !35
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.126, %if.then.121
  %156 = load i32, i32* %need_rescale, align 4, !tbaa !23
  %tobool136 = icmp ne i32 %156, 0
  br i1 %tobool136, label %if.then.137, label %if.end.154

if.then.137:                                      ; preds = %if.end.135
  %157 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #3
  %158 = bitcast i64* %half_maxval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #3
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %159, i32 0, i32 1
  %160 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem138, align 8, !tbaa !6
  %alloc_small139 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %160, i32 0, i32 0
  %161 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small139, align 8, !tbaa !11
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %163 = bitcast %struct.jpeg_compress_struct* %162 to %struct.jpeg_common_struct*
  %164 = load i32, i32* %maxval, align 4, !tbaa !23
  %conv140 = zext i32 %164 to i64
  %add = add nsw i64 %conv140, 1
  %mul141 = mul i64 %add, 1
  %call142 = call i8* %161(%struct.jpeg_common_struct* %163, i32 1, i64 %mul141)
  %165 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %rescale = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %165, i32 0, i32 4
  store i8* %call142, i8** %rescale, align 8, !tbaa !37
  %166 = load i32, i32* %maxval, align 4, !tbaa !23
  %div = udiv i32 %166, 2
  %conv143 = zext i32 %div to i64
  store i64 %conv143, i64* %half_maxval, align 8, !tbaa !38
  store i64 0, i64* %val, align 8, !tbaa !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.137
  %167 = load i64, i64* %val, align 8, !tbaa !38
  %168 = load i32, i32* %maxval, align 4, !tbaa !23
  %conv144 = zext i32 %168 to i64
  %cmp145 = icmp sle i64 %167, %conv144
  br i1 %cmp145, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %169 = load i64, i64* %val, align 8, !tbaa !38
  %mul147 = mul nsw i64 %169, 255
  %170 = load i64, i64* %half_maxval, align 8, !tbaa !38
  %add148 = add nsw i64 %mul147, %170
  %171 = load i32, i32* %maxval, align 4, !tbaa !23
  %conv149 = zext i32 %171 to i64
  %div150 = sdiv i64 %add148, %conv149
  %conv151 = trunc i64 %div150 to i8
  %172 = load i64, i64* %val, align 8, !tbaa !38
  %173 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %rescale152 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %173, i32 0, i32 4
  %174 = load i8*, i8** %rescale152, align 8, !tbaa !37
  %arrayidx153 = getelementptr inbounds i8, i8* %174, i64 %172
  store i8 %conv151, i8* %arrayidx153, align 1, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %175 = load i64, i64* %val, align 8, !tbaa !38
  %inc = add nsw i64 %175, 1
  store i64 %inc, i64* %val, align 8, !tbaa !38
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %176 = bitcast i64* %half_maxval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #3
  %177 = bitcast i64* %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #3
  br label %if.end.154

if.end.154:                                       ; preds = %for.end, %if.end.135
  %178 = bitcast i32* %need_rescale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #3
  %179 = bitcast i32* %use_raw_buffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #3
  %180 = bitcast i32* %need_iobuffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #3
  %181 = bitcast i32* %maxval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #3
  %182 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #3
  %183 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #3
  %184 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #3
  %185 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_ppm(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @getc(%struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_pbm_integer(%struct.jpeg_compress_struct* %cinfo, %struct.__sFILE* %infile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %infile.addr = alloca %struct.__sFILE*, align 8
  %ch = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.__sFILE* %infile, %struct.__sFILE** %infile.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %2 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8, !tbaa !2
  %call = call i32 @pbm_getc(%struct.__sFILE* %2)
  store i32 %call, i32* %ch, align 4, !tbaa !23
  %3 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !20
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %11 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp2 = icmp eq i32 %11, 32
  br i1 %cmp2, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %12 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp3 = icmp eq i32 %12, 9
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp5 = icmp eq i32 %13, 10
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %14 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp6 = icmp eq i32 %14, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.4, %lor.lhs.false, %do.cond
  %15 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp6, %lor.rhs ]
  br i1 %15, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %16 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp7 = icmp slt i32 %16, 48
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %do.end
  %17 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp9 = icmp sgt i32 %17, 57
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %lor.lhs.false.8, %do.end
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !19
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 1026, i32* %msg_code12, align 4, !tbaa !20
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !19
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8, !tbaa !22
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %lor.lhs.false.8
  %25 = load i32, i32* %ch, align 4, !tbaa !23
  %sub = sub nsw i32 %25, 48
  store i32 %sub, i32* %val, align 4, !tbaa !23
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.15
  %26 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8, !tbaa !2
  %call16 = call i32 @pbm_getc(%struct.__sFILE* %26)
  store i32 %call16, i32* %ch, align 4, !tbaa !23
  %cmp17 = icmp sge i32 %call16, 48
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp18 = icmp sle i32 %27, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load i32, i32* %val, align 4, !tbaa !23
  %mul = mul i32 %29, 10
  store i32 %mul, i32* %val, align 4, !tbaa !23
  %30 = load i32, i32* %ch, align 4, !tbaa !23
  %sub19 = sub nsw i32 %30, 48
  %31 = load i32, i32* %val, align 4, !tbaa !23
  %add = add i32 %31, %sub19
  store i32 %add, i32* %val, align 4, !tbaa !23
  br label %while.cond

while.end:                                        ; preds = %land.end
  %32 = load i32, i32* %val, align 4, !tbaa !23
  %33 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %34 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #3
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_text_gray_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %infile = alloca %struct.__sFILE*, align 8
  %ptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %2, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %4, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %5 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !18
  store %struct.__sFILE* %5, %struct.__sFILE** %infile, align 8, !tbaa !2
  %6 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %8, i32 0, i32 4
  %9 = load i8*, i8** %rescale1, align 8, !tbaa !37
  store i8* %9, i8** %rescale, align 8, !tbaa !2
  %10 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %11, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 4
  %12 = load i8**, i8*** %buffer, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %13, i8** %ptr, align 8, !tbaa !2
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 6
  %15 = load i32, i32* %image_width, align 4, !tbaa !25
  store i32 %15, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %col, align 4, !tbaa !23
  %cmp = icmp ugt i32 %16, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %18 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %17, %struct.__sFILE* %18)
  %idxprom = zext i32 %call to i64
  %19 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx3, align 1, !tbaa !39
  %21 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !2
  store i8 %20, i8* %21, align 1, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %col, align 4, !tbaa !23
  %dec = add i32 %22, -1
  store i32 %dec, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #3
  %24 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #3
  %25 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #3
  %26 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #3
  %27 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_text_rgb_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %infile = alloca %struct.__sFILE*, align 8
  %ptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %2, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %4, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %5 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !18
  store %struct.__sFILE* %5, %struct.__sFILE** %infile, align 8, !tbaa !2
  %6 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %8, i32 0, i32 4
  %9 = load i8*, i8** %rescale1, align 8, !tbaa !37
  store i8* %9, i8** %rescale, align 8, !tbaa !2
  %10 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %11, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 4
  %12 = load i8**, i8*** %buffer, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %13, i8** %ptr, align 8, !tbaa !2
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 6
  %15 = load i32, i32* %image_width, align 4, !tbaa !25
  store i32 %15, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %col, align 4, !tbaa !23
  %cmp = icmp ugt i32 %16, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %18 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %17, %struct.__sFILE* %18)
  %idxprom = zext i32 %call to i64
  %19 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx3, align 1, !tbaa !39
  %21 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !2
  store i8 %20, i8* %21, align 1, !tbaa !39
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call4 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %22, %struct.__sFILE* %23)
  %idxprom5 = zext i32 %call4 to i64
  %24 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8, i8* %24, i64 %idxprom5
  %25 = load i8, i8* %arrayidx6, align 1, !tbaa !39
  %26 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr7 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr7, i8** %ptr, align 8, !tbaa !2
  store i8 %25, i8* %26, align 1, !tbaa !39
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %28 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call8 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %27, %struct.__sFILE* %28)
  %idxprom9 = zext i32 %call8 to i64
  %29 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8, i8* %29, i64 %idxprom9
  %30 = load i8, i8* %arrayidx10, align 1, !tbaa !39
  %31 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr11, i8** %ptr, align 8, !tbaa !2
  store i8 %30, i8* %31, align 1, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %col, align 4, !tbaa !23
  %dec = add i32 %32, -1
  store i32 %dec, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %34 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #3
  %36 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  %37 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_word_gray_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %bufferptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %2, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %bufferptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 4
  %7 = load i8*, i8** %rescale1, align 8, !tbaa !37
  store i8* %7, i8** %rescale, align 8, !tbaa !2
  %8 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %9, i32 0, i32 1
  %10 = load i8*, i8** %iobuffer, align 8, !tbaa !32
  %11 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %11, i32 0, i32 3
  %12 = load i64, i64* %buffer_width, align 8, !tbaa !31
  %13 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %13, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %14 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !18
  %call = call i64 @fread(i8* %10, i64 1, i64 %12, %struct.__sFILE* %14)
  %15 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %15, i32 0, i32 3
  %16 = load i64, i64* %buffer_width2, align 8, !tbaa !31
  %cmp = icmp eq i64 %call, %16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !20
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %24, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub4, i32 0, i32 4
  %25 = load i8**, i8*** %buffer, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %26, i8** %ptr, align 8, !tbaa !2
  %27 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %27, i32 0, i32 1
  %28 = load i8*, i8** %iobuffer5, align 8, !tbaa !32
  store i8* %28, i8** %bufferptr, align 8, !tbaa !2
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 6
  %30 = load i32, i32* %image_width, align 4, !tbaa !25
  store i32 %30, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %col, align 4, !tbaa !23
  %cmp6 = icmp ugt i32 %31, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #3
  %33 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %bufferptr, align 8, !tbaa !2
  %34 = load i8, i8* %33, align 1, !tbaa !39
  %conv = zext i8 %34 to i32
  store i32 %conv, i32* %temp, align 4, !tbaa !23
  %35 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr7 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr7, i8** %bufferptr, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !39
  %conv8 = zext i8 %36 to i32
  %shl = shl i32 %conv8, 8
  %37 = load i32, i32* %temp, align 4, !tbaa !23
  %or = or i32 %37, %shl
  store i32 %or, i32* %temp, align 4, !tbaa !23
  %38 = load i32, i32* %temp, align 4, !tbaa !23
  %idxprom = sext i32 %38 to i64
  %39 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8, i8* %39, i64 %idxprom
  %40 = load i8, i8* %arrayidx9, align 1, !tbaa !39
  %41 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr10 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr10, i8** %ptr, align 8, !tbaa !2
  store i8 %40, i8* %41, align 1, !tbaa !39
  %42 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %col, align 4, !tbaa !23
  %dec = add i32 %43, -1
  store i32 %dec, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #3
  %45 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #3
  %46 = bitcast i8** %bufferptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #3
  %47 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #3
  %48 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_raw_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %2, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %3 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %3, i32 0, i32 1
  %4 = load i8*, i8** %iobuffer, align 8, !tbaa !32
  %5 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %5, i32 0, i32 3
  %6 = load i64, i64* %buffer_width, align 8, !tbaa !31
  %7 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %7, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %8 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !18
  %call = call i64 @fread(i8* %4, i64 1, i64 %6, %struct.__sFILE* %8)
  %9 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %9, i32 0, i32 3
  %10 = load i64, i64* %buffer_width1, align 8, !tbaa !31
  %cmp = icmp eq i64 %call, %10
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !20
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_scaled_gray_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %bufferptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %2, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %bufferptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 4
  %7 = load i8*, i8** %rescale1, align 8, !tbaa !37
  store i8* %7, i8** %rescale, align 8, !tbaa !2
  %8 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %9, i32 0, i32 1
  %10 = load i8*, i8** %iobuffer, align 8, !tbaa !32
  %11 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %11, i32 0, i32 3
  %12 = load i64, i64* %buffer_width, align 8, !tbaa !31
  %13 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %13, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %14 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !18
  %call = call i64 @fread(i8* %10, i64 1, i64 %12, %struct.__sFILE* %14)
  %15 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %15, i32 0, i32 3
  %16 = load i64, i64* %buffer_width2, align 8, !tbaa !31
  %cmp = icmp eq i64 %call, %16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !20
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %24, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub4, i32 0, i32 4
  %25 = load i8**, i8*** %buffer, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %26, i8** %ptr, align 8, !tbaa !2
  %27 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %27, i32 0, i32 1
  %28 = load i8*, i8** %iobuffer5, align 8, !tbaa !32
  store i8* %28, i8** %bufferptr, align 8, !tbaa !2
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 6
  %30 = load i32, i32* %image_width, align 4, !tbaa !25
  store i32 %30, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %col, align 4, !tbaa !23
  %cmp6 = icmp ugt i32 %31, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %bufferptr, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !39
  %conv = zext i8 %33 to i32
  %idxprom = sext i32 %conv to i64
  %34 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8, i8* %34, i64 %idxprom
  %35 = load i8, i8* %arrayidx7, align 1, !tbaa !39
  %36 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr8 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr8, i8** %ptr, align 8, !tbaa !2
  store i8 %35, i8* %36, align 1, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %col, align 4, !tbaa !23
  %dec = add i32 %37, -1
  store i32 %dec, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #3
  %39 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  %40 = bitcast i8** %bufferptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  %41 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #3
  %42 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_word_rgb_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %bufferptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %2, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %bufferptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 4
  %7 = load i8*, i8** %rescale1, align 8, !tbaa !37
  store i8* %7, i8** %rescale, align 8, !tbaa !2
  %8 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %9, i32 0, i32 1
  %10 = load i8*, i8** %iobuffer, align 8, !tbaa !32
  %11 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %11, i32 0, i32 3
  %12 = load i64, i64* %buffer_width, align 8, !tbaa !31
  %13 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %13, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %14 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !18
  %call = call i64 @fread(i8* %10, i64 1, i64 %12, %struct.__sFILE* %14)
  %15 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %15, i32 0, i32 3
  %16 = load i64, i64* %buffer_width2, align 8, !tbaa !31
  %cmp = icmp eq i64 %call, %16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !20
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %24, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub4, i32 0, i32 4
  %25 = load i8**, i8*** %buffer, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %26, i8** %ptr, align 8, !tbaa !2
  %27 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %27, i32 0, i32 1
  %28 = load i8*, i8** %iobuffer5, align 8, !tbaa !32
  store i8* %28, i8** %bufferptr, align 8, !tbaa !2
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 6
  %30 = load i32, i32* %image_width, align 4, !tbaa !25
  store i32 %30, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %col, align 4, !tbaa !23
  %cmp6 = icmp ugt i32 %31, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #3
  %33 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %bufferptr, align 8, !tbaa !2
  %34 = load i8, i8* %33, align 1, !tbaa !39
  %conv = zext i8 %34 to i32
  store i32 %conv, i32* %temp, align 4, !tbaa !23
  %35 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr7 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr7, i8** %bufferptr, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !39
  %conv8 = zext i8 %36 to i32
  %shl = shl i32 %conv8, 8
  %37 = load i32, i32* %temp, align 4, !tbaa !23
  %or = or i32 %37, %shl
  store i32 %or, i32* %temp, align 4, !tbaa !23
  %38 = load i32, i32* %temp, align 4, !tbaa !23
  %idxprom = sext i32 %38 to i64
  %39 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8, i8* %39, i64 %idxprom
  %40 = load i8, i8* %arrayidx9, align 1, !tbaa !39
  %41 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr10 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr10, i8** %ptr, align 8, !tbaa !2
  store i8 %40, i8* %41, align 1, !tbaa !39
  %42 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr11, i8** %bufferptr, align 8, !tbaa !2
  %43 = load i8, i8* %42, align 1, !tbaa !39
  %conv12 = zext i8 %43 to i32
  store i32 %conv12, i32* %temp, align 4, !tbaa !23
  %44 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr13 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr13, i8** %bufferptr, align 8, !tbaa !2
  %45 = load i8, i8* %44, align 1, !tbaa !39
  %conv14 = zext i8 %45 to i32
  %shl15 = shl i32 %conv14, 8
  %46 = load i32, i32* %temp, align 4, !tbaa !23
  %or16 = or i32 %46, %shl15
  store i32 %or16, i32* %temp, align 4, !tbaa !23
  %47 = load i32, i32* %temp, align 4, !tbaa !23
  %idxprom17 = sext i32 %47 to i64
  %48 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i8, i8* %48, i64 %idxprom17
  %49 = load i8, i8* %arrayidx18, align 1, !tbaa !39
  %50 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr19 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr19, i8** %ptr, align 8, !tbaa !2
  store i8 %49, i8* %50, align 1, !tbaa !39
  %51 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr20, i8** %bufferptr, align 8, !tbaa !2
  %52 = load i8, i8* %51, align 1, !tbaa !39
  %conv21 = zext i8 %52 to i32
  store i32 %conv21, i32* %temp, align 4, !tbaa !23
  %53 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr22 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr22, i8** %bufferptr, align 8, !tbaa !2
  %54 = load i8, i8* %53, align 1, !tbaa !39
  %conv23 = zext i8 %54 to i32
  %shl24 = shl i32 %conv23, 8
  %55 = load i32, i32* %temp, align 4, !tbaa !23
  %or25 = or i32 %55, %shl24
  store i32 %or25, i32* %temp, align 4, !tbaa !23
  %56 = load i32, i32* %temp, align 4, !tbaa !23
  %idxprom26 = sext i32 %56 to i64
  %57 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i8, i8* %57, i64 %idxprom26
  %58 = load i8, i8* %arrayidx27, align 1, !tbaa !39
  %59 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr28 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr28, i8** %ptr, align 8, !tbaa !2
  store i8 %58, i8* %59, align 1, !tbaa !39
  %60 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %col, align 4, !tbaa !23
  %dec = add i32 %61, -1
  store i32 %dec, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #3
  %63 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #3
  %64 = bitcast i8** %bufferptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #3
  %65 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #3
  %66 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_scaled_rgb_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %bufferptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %2, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %bufferptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 4
  %7 = load i8*, i8** %rescale1, align 8, !tbaa !37
  store i8* %7, i8** %rescale, align 8, !tbaa !2
  %8 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %9, i32 0, i32 1
  %10 = load i8*, i8** %iobuffer, align 8, !tbaa !32
  %11 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %11, i32 0, i32 3
  %12 = load i64, i64* %buffer_width, align 8, !tbaa !31
  %13 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %13, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %14 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !18
  %call = call i64 @fread(i8* %10, i64 1, i64 %12, %struct.__sFILE* %14)
  %15 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %15, i32 0, i32 3
  %16 = load i64, i64* %buffer_width2, align 8, !tbaa !31
  %cmp = icmp eq i64 %call, %16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !20
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %24, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub4, i32 0, i32 4
  %25 = load i8**, i8*** %buffer, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %26, i8** %ptr, align 8, !tbaa !2
  %27 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8, !tbaa !2
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %27, i32 0, i32 1
  %28 = load i8*, i8** %iobuffer5, align 8, !tbaa !32
  store i8* %28, i8** %bufferptr, align 8, !tbaa !2
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 6
  %30 = load i32, i32* %image_width, align 4, !tbaa !25
  store i32 %30, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %col, align 4, !tbaa !23
  %cmp6 = icmp ugt i32 %31, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %bufferptr, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !39
  %conv = zext i8 %33 to i32
  %idxprom = sext i32 %conv to i64
  %34 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8, i8* %34, i64 %idxprom
  %35 = load i8, i8* %arrayidx7, align 1, !tbaa !39
  %36 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr8 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr8, i8** %ptr, align 8, !tbaa !2
  store i8 %35, i8* %36, align 1, !tbaa !39
  %37 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr9 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr9, i8** %bufferptr, align 8, !tbaa !2
  %38 = load i8, i8* %37, align 1, !tbaa !39
  %conv10 = zext i8 %38 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %39 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i8, i8* %39, i64 %idxprom11
  %40 = load i8, i8* %arrayidx12, align 1, !tbaa !39
  %41 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr13 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr13, i8** %ptr, align 8, !tbaa !2
  store i8 %40, i8* %41, align 1, !tbaa !39
  %42 = load i8*, i8** %bufferptr, align 8, !tbaa !2
  %incdec.ptr14 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr14, i8** %bufferptr, align 8, !tbaa !2
  %43 = load i8, i8* %42, align 1, !tbaa !39
  %conv15 = zext i8 %43 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %44 = load i8*, i8** %rescale, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i8, i8* %44, i64 %idxprom16
  %45 = load i8, i8* %arrayidx17, align 1, !tbaa !39
  %46 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr18 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr18, i8** %ptr, align 8, !tbaa !2
  store i8 %45, i8* %46, align 1, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %col, align 4, !tbaa !23
  %dec = add i32 %47, -1
  store i32 %dec, i32* %col, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #3
  %49 = bitcast i8** %rescale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #3
  %50 = bitcast i8** %bufferptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #3
  %51 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #3
  %52 = bitcast %struct.ppm_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @pbm_getc(%struct.__sFILE* %infile) #0 {
entry:
  %infile.addr = alloca %struct.__sFILE*, align 8
  %ch = alloca i32, align 4
  store %struct.__sFILE* %infile, %struct.__sFILE** %infile.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8, !tbaa !2
  %call = call i32 @getc(%struct.__sFILE* %1)
  store i32 %call, i32* %ch, align 4, !tbaa !23
  %2 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp = icmp eq i32 %2, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %3 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8, !tbaa !2
  %call1 = call i32 @getc(%struct.__sFILE* %3)
  store i32 %call1, i32* %ch, align 4, !tbaa !23
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp2 = icmp ne i32 %4, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %5 = load i32, i32* %ch, align 4, !tbaa !23
  %cmp3 = icmp ne i32 %5, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %6 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %7 = load i32, i32* %ch, align 4, !tbaa !23
  %8 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #3
  ret i32 %7
}

declare i64 @fread(i8*, i64, i64, %struct.__sFILE*) #2

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
!7 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !9, i64 56, !8, i64 64, !8, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !8, i64 232, !3, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !4, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !4, i64 284, !10, i64 286, !10, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !4, i64 320, !8, i64 352, !8, i64 356, !8, i64 360, !4, i64 364, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!12, !3, i64 0}
!12 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !13, i64 88}
!13 = !{!"long", !4, i64 0}
!14 = !{!15, !3, i64 0}
!15 = !{!"", !16, i64 0, !3, i64 48, !3, i64 56, !13, i64 64, !3, i64 72}
!16 = !{!"cjpeg_source_struct", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40}
!17 = !{!15, !3, i64 16}
!18 = !{!15, !3, i64 24}
!19 = !{!7, !3, i64 0}
!20 = !{!21, !8, i64 40}
!21 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!22 = !{!21, !3, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!7, !8, i64 64}
!25 = !{!7, !8, i64 40}
!26 = !{!7, !8, i64 44}
!27 = !{!7, !8, i64 48}
!28 = !{!7, !4, i64 52}
!29 = !{!21, !3, i64 8}
!30 = !{!15, !3, i64 8}
!31 = !{!15, !13, i64 64}
!32 = !{!15, !3, i64 48}
!33 = !{!15, !3, i64 56}
!34 = !{!15, !3, i64 32}
!35 = !{!15, !8, i64 40}
!36 = !{!12, !3, i64 16}
!37 = !{!15, !3, i64 72}
!38 = !{!13, !13, i64 0}
!39 = !{!4, !4, i64 0}
