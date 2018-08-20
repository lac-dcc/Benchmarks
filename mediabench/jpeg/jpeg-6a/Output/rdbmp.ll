; ModuleID = 'rdbmp.c'
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
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, %struct.jvirt_sarray_control*, i32, i32, i32 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define %struct.cjpeg_source_struct* @jinit_read_bmp(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 88)
  %6 = bitcast i8* %call to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %6, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %8 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %cinfo1 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %8, i32 0, i32 1
  store %struct.jpeg_compress_struct* %7, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !14
  %9 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %9, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_bmp, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %start_input, align 8, !tbaa !17
  %10 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %10, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_bmp, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %finish_input, align 8, !tbaa !18
  %11 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %12 = bitcast %struct._bmp_source_struct* %11 to %struct.cjpeg_source_struct*
  %13 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #3
  ret %struct.cjpeg_source_struct* %12
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_bmp(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  %bmpfileheader = alloca [14 x i8], align 1
  %bmpinfoheader = alloca [64 x i8], align 16
  %bfOffBits = alloca i64, align 8
  %headerSize = alloca i64, align 8
  %biWidth = alloca i64, align 8
  %biHeight = alloca i64, align 8
  %biPlanes = alloca i32, align 4
  %biCompression = alloca i64, align 8
  %biXPelsPerMeter = alloca i64, align 8
  %biYPelsPerMeter = alloca i64, align 8
  %biClrUsed = alloca i64, align 8
  %mapentrysize = alloca i32, align 4
  %bPad = alloca i64, align 8
  %row_width = alloca i32, align 4
  %progress396 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %2, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast [14 x i8]* %bmpfileheader to i8*
  call void @llvm.lifetime.start(i64 14, i8* %3) #3
  %4 = bitcast [64 x i8]* %bmpinfoheader to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #3
  %5 = bitcast i64* %bfOffBits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i64* %headerSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i64* %biWidth to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  store i64 0, i64* %biWidth, align 8, !tbaa !19
  %8 = bitcast i64* %biHeight to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  store i64 0, i64* %biHeight, align 8, !tbaa !19
  %9 = bitcast i32* %biPlanes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i64* %biCompression to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i64* %biXPelsPerMeter to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast i64* %biYPelsPerMeter to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i64* %biClrUsed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  store i64 0, i64* %biClrUsed, align 8, !tbaa !19
  %14 = bitcast i32* %mapentrysize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  store i32 0, i32* %mapentrysize, align 4, !tbaa !20
  %15 = bitcast i64* %bPad to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = bitcast i32* %row_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i32 0
  %17 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %17, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %18 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !21
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 14, %struct.__sFILE* %18)
  %cmp = icmp eq i64 %call, 14
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !23
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = bitcast %struct.jpeg_compress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 0
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !26
  %conv = zext i8 %26 to i32
  %arrayidx2 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 1
  %27 = load i8, i8* %arrayidx2, align 1, !tbaa !26
  %conv3 = zext i8 %27 to i32
  %shl = shl i32 %conv3, 8
  %add = add i32 %conv, %shl
  %cmp4 = icmp ne i32 %add, 19778
  br i1 %cmp4, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !22
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 1007, i32* %msg_code8, align 4, !tbaa !23
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !22
  %error_exit10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit10, align 8, !tbaa !25
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %34 = bitcast %struct.jpeg_compress_struct* %33 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* %34)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %if.end
  %arrayidx12 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 10
  %35 = load i8, i8* %arrayidx12, align 1, !tbaa !26
  %conv13 = zext i8 %35 to i32
  %conv14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 11
  %36 = load i8, i8* %arrayidx15, align 1, !tbaa !26
  %conv16 = zext i8 %36 to i32
  %conv17 = sext i32 %conv16 to i64
  %shl18 = shl i64 %conv17, 8
  %add19 = add nsw i64 %conv14, %shl18
  %arrayidx20 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 12
  %37 = load i8, i8* %arrayidx20, align 1, !tbaa !26
  %conv21 = zext i8 %37 to i32
  %conv22 = sext i32 %conv21 to i64
  %shl23 = shl i64 %conv22, 16
  %add24 = add nsw i64 %add19, %shl23
  %arrayidx25 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 13
  %38 = load i8, i8* %arrayidx25, align 1, !tbaa !26
  %conv26 = zext i8 %38 to i32
  %conv27 = sext i32 %conv26 to i64
  %shl28 = shl i64 %conv27, 24
  %add29 = add nsw i64 %add24, %shl28
  store i64 %add29, i64* %bfOffBits, align 8, !tbaa !19
  %arraydecay30 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i32 0
  %39 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub31 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %39, i32 0, i32 0
  %input_file32 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub31, i32 0, i32 3
  %40 = load %struct.__sFILE*, %struct.__sFILE** %input_file32, align 8, !tbaa !21
  %call33 = call i64 @fread(i8* %arraydecay30, i64 1, i64 4, %struct.__sFILE* %40)
  %cmp34 = icmp eq i64 %call33, 4
  br i1 %cmp34, label %if.end.41, label %if.then.36

if.then.36:                                       ; preds = %if.end.11
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !22
  %msg_code38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 42, i32* %msg_code38, align 4, !tbaa !23
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !22
  %error_exit40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit40, align 8, !tbaa !25
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %47 = bitcast %struct.jpeg_compress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.end.11
  %arrayidx42 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 0
  %48 = load i8, i8* %arrayidx42, align 1, !tbaa !26
  %conv43 = zext i8 %48 to i32
  %conv44 = sext i32 %conv43 to i64
  %arrayidx45 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 1
  %49 = load i8, i8* %arrayidx45, align 1, !tbaa !26
  %conv46 = zext i8 %49 to i32
  %conv47 = sext i32 %conv46 to i64
  %shl48 = shl i64 %conv47, 8
  %add49 = add nsw i64 %conv44, %shl48
  %arrayidx50 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 2
  %50 = load i8, i8* %arrayidx50, align 1, !tbaa !26
  %conv51 = zext i8 %50 to i32
  %conv52 = sext i32 %conv51 to i64
  %shl53 = shl i64 %conv52, 16
  %add54 = add nsw i64 %add49, %shl53
  %arrayidx55 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 3
  %51 = load i8, i8* %arrayidx55, align 1, !tbaa !26
  %conv56 = zext i8 %51 to i32
  %conv57 = sext i32 %conv56 to i64
  %shl58 = shl i64 %conv57, 24
  %add59 = add nsw i64 %add54, %shl58
  store i64 %add59, i64* %headerSize, align 8, !tbaa !19
  %52 = load i64, i64* %headerSize, align 8, !tbaa !19
  %cmp60 = icmp slt i64 %52, 12
  br i1 %cmp60, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.41
  %53 = load i64, i64* %headerSize, align 8, !tbaa !19
  %cmp62 = icmp sgt i64 %53, 64
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %lor.lhs.false, %if.end.41
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8, !tbaa !22
  %msg_code66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 5
  store i32 1003, i32* %msg_code66, align 4, !tbaa !23
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err67, align 8, !tbaa !22
  %error_exit68 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 0
  %58 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit68, align 8, !tbaa !25
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %60 = bitcast %struct.jpeg_compress_struct* %59 to %struct.jpeg_common_struct*
  call void %58(%struct.jpeg_common_struct* %60)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %lor.lhs.false
  %arraydecay70 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay70, i64 4
  %61 = load i64, i64* %headerSize, align 8, !tbaa !19
  %sub = sub nsw i64 %61, 4
  %62 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub71 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %62, i32 0, i32 0
  %input_file72 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub71, i32 0, i32 3
  %63 = load %struct.__sFILE*, %struct.__sFILE** %input_file72, align 8, !tbaa !21
  %call73 = call i64 @fread(i8* %add.ptr, i64 1, i64 %sub, %struct.__sFILE* %63)
  %64 = load i64, i64* %headerSize, align 8, !tbaa !19
  %sub74 = sub nsw i64 %64, 4
  %cmp75 = icmp eq i64 %call73, %sub74
  br i1 %cmp75, label %if.end.82, label %if.then.77

if.then.77:                                       ; preds = %if.end.69
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err78, align 8, !tbaa !22
  %msg_code79 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 42, i32* %msg_code79, align 4, !tbaa !23
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err80, align 8, !tbaa !22
  %error_exit81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 0
  %69 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit81, align 8, !tbaa !25
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %71 = bitcast %struct.jpeg_compress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %if.end.69
  %72 = load i64, i64* %headerSize, align 8, !tbaa !19
  %conv83 = trunc i64 %72 to i32
  switch i32 %conv83, label %sw.default.334 [
    i32 12, label %sw.bb
    i32 40, label %sw.bb.150
    i32 64, label %sw.bb.150
  ]

sw.bb:                                            ; preds = %if.end.82
  %arrayidx84 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 4
  %73 = load i8, i8* %arrayidx84, align 1, !tbaa !26
  %conv85 = zext i8 %73 to i32
  %arrayidx86 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 5
  %74 = load i8, i8* %arrayidx86, align 1, !tbaa !26
  %conv87 = zext i8 %74 to i32
  %shl88 = shl i32 %conv87, 8
  %add89 = add i32 %conv85, %shl88
  %conv90 = zext i32 %add89 to i64
  store i64 %conv90, i64* %biWidth, align 8, !tbaa !19
  %arrayidx91 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 6
  %75 = load i8, i8* %arrayidx91, align 1, !tbaa !26
  %conv92 = zext i8 %75 to i32
  %arrayidx93 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 7
  %76 = load i8, i8* %arrayidx93, align 1, !tbaa !26
  %conv94 = zext i8 %76 to i32
  %shl95 = shl i32 %conv94, 8
  %add96 = add i32 %conv92, %shl95
  %conv97 = zext i32 %add96 to i64
  store i64 %conv97, i64* %biHeight, align 8, !tbaa !19
  %arrayidx98 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 8
  %77 = load i8, i8* %arrayidx98, align 1, !tbaa !26
  %conv99 = zext i8 %77 to i32
  %arrayidx100 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 9
  %78 = load i8, i8* %arrayidx100, align 1, !tbaa !26
  %conv101 = zext i8 %78 to i32
  %shl102 = shl i32 %conv101, 8
  %add103 = add i32 %conv99, %shl102
  store i32 %add103, i32* %biPlanes, align 4, !tbaa !20
  %arrayidx104 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 10
  %79 = load i8, i8* %arrayidx104, align 1, !tbaa !26
  %conv105 = zext i8 %79 to i32
  %arrayidx106 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 11
  %80 = load i8, i8* %arrayidx106, align 1, !tbaa !26
  %conv107 = zext i8 %80 to i32
  %shl108 = shl i32 %conv107, 8
  %add109 = add i32 %conv105, %shl108
  %81 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %81, i32 0, i32 6
  store i32 %add109, i32* %bits_per_pixel, align 4, !tbaa !27
  %82 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %bits_per_pixel110 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %82, i32 0, i32 6
  %83 = load i32, i32* %bits_per_pixel110, align 4, !tbaa !27
  switch i32 %83, label %sw.default [
    i32 8, label %sw.bb.111
    i32 24, label %sw.bb.123
  ]

sw.bb.111:                                        ; preds = %sw.bb
  store i32 3, i32* %mapentrysize, align 4, !tbaa !20
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err112, align 8, !tbaa !22
  %msg_code113 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i32 0, i32 5
  store i32 1011, i32* %msg_code113, align 4, !tbaa !23
  %86 = load i64, i64* %biWidth, align 8, !tbaa !19
  %conv114 = trunc i64 %86 to i32
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err115 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err115, align 8, !tbaa !22
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx116 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %conv114, i32* %arrayidx116, align 4, !tbaa !20
  %89 = load i64, i64* %biHeight, align 8, !tbaa !19
  %conv117 = trunc i64 %89 to i32
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err118, align 8, !tbaa !22
  %msg_parm119 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 6
  %i120 = bitcast %union.anon* %msg_parm119 to [8 x i32]*
  %arrayidx121 = getelementptr inbounds [8 x i32], [8 x i32]* %i120, i32 0, i64 1
  store i32 %conv117, i32* %arrayidx121, align 4, !tbaa !20
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 0
  %93 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err122, align 8, !tbaa !22
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %93, i32 0, i32 1
  %94 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !28
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %96 = bitcast %struct.jpeg_compress_struct* %95 to %struct.jpeg_common_struct*
  call void %94(%struct.jpeg_common_struct* %96, i32 1)
  br label %sw.epilog

sw.bb.123:                                        ; preds = %sw.bb
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err124 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err124, align 8, !tbaa !22
  %msg_code125 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 5
  store i32 1010, i32* %msg_code125, align 4, !tbaa !23
  %99 = load i64, i64* %biWidth, align 8, !tbaa !19
  %conv126 = trunc i64 %99 to i32
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err127 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err127, align 8, !tbaa !22
  %msg_parm128 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 6
  %i129 = bitcast %union.anon* %msg_parm128 to [8 x i32]*
  %arrayidx130 = getelementptr inbounds [8 x i32], [8 x i32]* %i129, i32 0, i64 0
  store i32 %conv126, i32* %arrayidx130, align 4, !tbaa !20
  %102 = load i64, i64* %biHeight, align 8, !tbaa !19
  %conv131 = trunc i64 %102 to i32
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err132, align 8, !tbaa !22
  %msg_parm133 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 6
  %i134 = bitcast %union.anon* %msg_parm133 to [8 x i32]*
  %arrayidx135 = getelementptr inbounds [8 x i32], [8 x i32]* %i134, i32 0, i64 1
  store i32 %conv131, i32* %arrayidx135, align 4, !tbaa !20
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 0
  %106 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err136, align 8, !tbaa !22
  %emit_message137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %106, i32 0, i32 1
  %107 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message137, align 8, !tbaa !28
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %109 = bitcast %struct.jpeg_compress_struct* %108 to %struct.jpeg_common_struct*
  call void %107(%struct.jpeg_common_struct* %109, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %110, i32 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err138, align 8, !tbaa !22
  %msg_code139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i32 0, i32 5
  store i32 1002, i32* %msg_code139, align 4, !tbaa !23
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err140, align 8, !tbaa !22
  %error_exit141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 0
  %114 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit141, align 8, !tbaa !25
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %116 = bitcast %struct.jpeg_compress_struct* %115 to %struct.jpeg_common_struct*
  call void %114(%struct.jpeg_common_struct* %116)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.123, %sw.bb.111
  %117 = load i32, i32* %biPlanes, align 4, !tbaa !20
  %cmp142 = icmp ne i32 %117, 1
  br i1 %cmp142, label %if.then.144, label %if.end.149

if.then.144:                                      ; preds = %sw.epilog
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err145 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 0
  %119 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err145, align 8, !tbaa !22
  %msg_code146 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %119, i32 0, i32 5
  store i32 1004, i32* %msg_code146, align 4, !tbaa !23
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err147 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 0
  %121 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err147, align 8, !tbaa !22
  %error_exit148 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %121, i32 0, i32 0
  %122 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit148, align 8, !tbaa !25
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %124 = bitcast %struct.jpeg_compress_struct* %123 to %struct.jpeg_common_struct*
  call void %122(%struct.jpeg_common_struct* %124)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.144, %sw.epilog
  br label %sw.epilog.339

sw.bb.150:                                        ; preds = %if.end.82, %if.end.82
  %arrayidx151 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 4
  %125 = load i8, i8* %arrayidx151, align 1, !tbaa !26
  %conv152 = zext i8 %125 to i32
  %conv153 = sext i32 %conv152 to i64
  %arrayidx154 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 5
  %126 = load i8, i8* %arrayidx154, align 1, !tbaa !26
  %conv155 = zext i8 %126 to i32
  %conv156 = sext i32 %conv155 to i64
  %shl157 = shl i64 %conv156, 8
  %add158 = add nsw i64 %conv153, %shl157
  %arrayidx159 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 6
  %127 = load i8, i8* %arrayidx159, align 1, !tbaa !26
  %conv160 = zext i8 %127 to i32
  %conv161 = sext i32 %conv160 to i64
  %shl162 = shl i64 %conv161, 16
  %add163 = add nsw i64 %add158, %shl162
  %arrayidx164 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 7
  %128 = load i8, i8* %arrayidx164, align 1, !tbaa !26
  %conv165 = zext i8 %128 to i32
  %conv166 = sext i32 %conv165 to i64
  %shl167 = shl i64 %conv166, 24
  %add168 = add nsw i64 %add163, %shl167
  store i64 %add168, i64* %biWidth, align 8, !tbaa !19
  %arrayidx169 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 8
  %129 = load i8, i8* %arrayidx169, align 1, !tbaa !26
  %conv170 = zext i8 %129 to i32
  %conv171 = sext i32 %conv170 to i64
  %arrayidx172 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 9
  %130 = load i8, i8* %arrayidx172, align 1, !tbaa !26
  %conv173 = zext i8 %130 to i32
  %conv174 = sext i32 %conv173 to i64
  %shl175 = shl i64 %conv174, 8
  %add176 = add nsw i64 %conv171, %shl175
  %arrayidx177 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 10
  %131 = load i8, i8* %arrayidx177, align 1, !tbaa !26
  %conv178 = zext i8 %131 to i32
  %conv179 = sext i32 %conv178 to i64
  %shl180 = shl i64 %conv179, 16
  %add181 = add nsw i64 %add176, %shl180
  %arrayidx182 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 11
  %132 = load i8, i8* %arrayidx182, align 1, !tbaa !26
  %conv183 = zext i8 %132 to i32
  %conv184 = sext i32 %conv183 to i64
  %shl185 = shl i64 %conv184, 24
  %add186 = add nsw i64 %add181, %shl185
  store i64 %add186, i64* %biHeight, align 8, !tbaa !19
  %arrayidx187 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 12
  %133 = load i8, i8* %arrayidx187, align 1, !tbaa !26
  %conv188 = zext i8 %133 to i32
  %arrayidx189 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 13
  %134 = load i8, i8* %arrayidx189, align 1, !tbaa !26
  %conv190 = zext i8 %134 to i32
  %shl191 = shl i32 %conv190, 8
  %add192 = add i32 %conv188, %shl191
  store i32 %add192, i32* %biPlanes, align 4, !tbaa !20
  %arrayidx193 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 14
  %135 = load i8, i8* %arrayidx193, align 1, !tbaa !26
  %conv194 = zext i8 %135 to i32
  %arrayidx195 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 15
  %136 = load i8, i8* %arrayidx195, align 1, !tbaa !26
  %conv196 = zext i8 %136 to i32
  %shl197 = shl i32 %conv196, 8
  %add198 = add i32 %conv194, %shl197
  %137 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %bits_per_pixel199 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %137, i32 0, i32 6
  store i32 %add198, i32* %bits_per_pixel199, align 4, !tbaa !27
  %arrayidx200 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 16
  %138 = load i8, i8* %arrayidx200, align 1, !tbaa !26
  %conv201 = zext i8 %138 to i32
  %conv202 = sext i32 %conv201 to i64
  %arrayidx203 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 17
  %139 = load i8, i8* %arrayidx203, align 1, !tbaa !26
  %conv204 = zext i8 %139 to i32
  %conv205 = sext i32 %conv204 to i64
  %shl206 = shl i64 %conv205, 8
  %add207 = add nsw i64 %conv202, %shl206
  %arrayidx208 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 18
  %140 = load i8, i8* %arrayidx208, align 1, !tbaa !26
  %conv209 = zext i8 %140 to i32
  %conv210 = sext i32 %conv209 to i64
  %shl211 = shl i64 %conv210, 16
  %add212 = add nsw i64 %add207, %shl211
  %arrayidx213 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 19
  %141 = load i8, i8* %arrayidx213, align 1, !tbaa !26
  %conv214 = zext i8 %141 to i32
  %conv215 = sext i32 %conv214 to i64
  %shl216 = shl i64 %conv215, 24
  %add217 = add nsw i64 %add212, %shl216
  store i64 %add217, i64* %biCompression, align 8, !tbaa !19
  %arrayidx218 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 24
  %142 = load i8, i8* %arrayidx218, align 1, !tbaa !26
  %conv219 = zext i8 %142 to i32
  %conv220 = sext i32 %conv219 to i64
  %arrayidx221 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 25
  %143 = load i8, i8* %arrayidx221, align 1, !tbaa !26
  %conv222 = zext i8 %143 to i32
  %conv223 = sext i32 %conv222 to i64
  %shl224 = shl i64 %conv223, 8
  %add225 = add nsw i64 %conv220, %shl224
  %arrayidx226 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 26
  %144 = load i8, i8* %arrayidx226, align 1, !tbaa !26
  %conv227 = zext i8 %144 to i32
  %conv228 = sext i32 %conv227 to i64
  %shl229 = shl i64 %conv228, 16
  %add230 = add nsw i64 %add225, %shl229
  %arrayidx231 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 27
  %145 = load i8, i8* %arrayidx231, align 1, !tbaa !26
  %conv232 = zext i8 %145 to i32
  %conv233 = sext i32 %conv232 to i64
  %shl234 = shl i64 %conv233, 24
  %add235 = add nsw i64 %add230, %shl234
  store i64 %add235, i64* %biXPelsPerMeter, align 8, !tbaa !19
  %arrayidx236 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 28
  %146 = load i8, i8* %arrayidx236, align 1, !tbaa !26
  %conv237 = zext i8 %146 to i32
  %conv238 = sext i32 %conv237 to i64
  %arrayidx239 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 29
  %147 = load i8, i8* %arrayidx239, align 1, !tbaa !26
  %conv240 = zext i8 %147 to i32
  %conv241 = sext i32 %conv240 to i64
  %shl242 = shl i64 %conv241, 8
  %add243 = add nsw i64 %conv238, %shl242
  %arrayidx244 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 30
  %148 = load i8, i8* %arrayidx244, align 1, !tbaa !26
  %conv245 = zext i8 %148 to i32
  %conv246 = sext i32 %conv245 to i64
  %shl247 = shl i64 %conv246, 16
  %add248 = add nsw i64 %add243, %shl247
  %arrayidx249 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 31
  %149 = load i8, i8* %arrayidx249, align 1, !tbaa !26
  %conv250 = zext i8 %149 to i32
  %conv251 = sext i32 %conv250 to i64
  %shl252 = shl i64 %conv251, 24
  %add253 = add nsw i64 %add248, %shl252
  store i64 %add253, i64* %biYPelsPerMeter, align 8, !tbaa !19
  %arrayidx254 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 32
  %150 = load i8, i8* %arrayidx254, align 1, !tbaa !26
  %conv255 = zext i8 %150 to i32
  %conv256 = sext i32 %conv255 to i64
  %arrayidx257 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 33
  %151 = load i8, i8* %arrayidx257, align 1, !tbaa !26
  %conv258 = zext i8 %151 to i32
  %conv259 = sext i32 %conv258 to i64
  %shl260 = shl i64 %conv259, 8
  %add261 = add nsw i64 %conv256, %shl260
  %arrayidx262 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 34
  %152 = load i8, i8* %arrayidx262, align 1, !tbaa !26
  %conv263 = zext i8 %152 to i32
  %conv264 = sext i32 %conv263 to i64
  %shl265 = shl i64 %conv264, 16
  %add266 = add nsw i64 %add261, %shl265
  %arrayidx267 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 35
  %153 = load i8, i8* %arrayidx267, align 1, !tbaa !26
  %conv268 = zext i8 %153 to i32
  %conv269 = sext i32 %conv268 to i64
  %shl270 = shl i64 %conv269, 24
  %add271 = add nsw i64 %add266, %shl270
  store i64 %add271, i64* %biClrUsed, align 8, !tbaa !19
  %154 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %bits_per_pixel272 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %154, i32 0, i32 6
  %155 = load i32, i32* %bits_per_pixel272, align 4, !tbaa !27
  switch i32 %155, label %sw.default.303 [
    i32 8, label %sw.bb.273
    i32 24, label %sw.bb.288
  ]

sw.bb.273:                                        ; preds = %sw.bb.150
  store i32 4, i32* %mapentrysize, align 4, !tbaa !20
  %156 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err274 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %156, i32 0, i32 0
  %157 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err274, align 8, !tbaa !22
  %msg_code275 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %157, i32 0, i32 5
  store i32 1009, i32* %msg_code275, align 4, !tbaa !23
  %158 = load i64, i64* %biWidth, align 8, !tbaa !19
  %conv276 = trunc i64 %158 to i32
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err277 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %159, i32 0, i32 0
  %160 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err277, align 8, !tbaa !22
  %msg_parm278 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %160, i32 0, i32 6
  %i279 = bitcast %union.anon* %msg_parm278 to [8 x i32]*
  %arrayidx280 = getelementptr inbounds [8 x i32], [8 x i32]* %i279, i32 0, i64 0
  store i32 %conv276, i32* %arrayidx280, align 4, !tbaa !20
  %161 = load i64, i64* %biHeight, align 8, !tbaa !19
  %conv281 = trunc i64 %161 to i32
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err282 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %162, i32 0, i32 0
  %163 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err282, align 8, !tbaa !22
  %msg_parm283 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %163, i32 0, i32 6
  %i284 = bitcast %union.anon* %msg_parm283 to [8 x i32]*
  %arrayidx285 = getelementptr inbounds [8 x i32], [8 x i32]* %i284, i32 0, i64 1
  store i32 %conv281, i32* %arrayidx285, align 4, !tbaa !20
  %164 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err286 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %164, i32 0, i32 0
  %165 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err286, align 8, !tbaa !22
  %emit_message287 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %165, i32 0, i32 1
  %166 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message287, align 8, !tbaa !28
  %167 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %168 = bitcast %struct.jpeg_compress_struct* %167 to %struct.jpeg_common_struct*
  call void %166(%struct.jpeg_common_struct* %168, i32 1)
  br label %sw.epilog.308

sw.bb.288:                                        ; preds = %sw.bb.150
  %169 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err289 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %169, i32 0, i32 0
  %170 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err289, align 8, !tbaa !22
  %msg_code290 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %170, i32 0, i32 5
  store i32 1008, i32* %msg_code290, align 4, !tbaa !23
  %171 = load i64, i64* %biWidth, align 8, !tbaa !19
  %conv291 = trunc i64 %171 to i32
  %172 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err292 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %172, i32 0, i32 0
  %173 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err292, align 8, !tbaa !22
  %msg_parm293 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %173, i32 0, i32 6
  %i294 = bitcast %union.anon* %msg_parm293 to [8 x i32]*
  %arrayidx295 = getelementptr inbounds [8 x i32], [8 x i32]* %i294, i32 0, i64 0
  store i32 %conv291, i32* %arrayidx295, align 4, !tbaa !20
  %174 = load i64, i64* %biHeight, align 8, !tbaa !19
  %conv296 = trunc i64 %174 to i32
  %175 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err297 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %175, i32 0, i32 0
  %176 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err297, align 8, !tbaa !22
  %msg_parm298 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %176, i32 0, i32 6
  %i299 = bitcast %union.anon* %msg_parm298 to [8 x i32]*
  %arrayidx300 = getelementptr inbounds [8 x i32], [8 x i32]* %i299, i32 0, i64 1
  store i32 %conv296, i32* %arrayidx300, align 4, !tbaa !20
  %177 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err301 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %177, i32 0, i32 0
  %178 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err301, align 8, !tbaa !22
  %emit_message302 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %178, i32 0, i32 1
  %179 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message302, align 8, !tbaa !28
  %180 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %181 = bitcast %struct.jpeg_compress_struct* %180 to %struct.jpeg_common_struct*
  call void %179(%struct.jpeg_common_struct* %181, i32 1)
  br label %sw.epilog.308

sw.default.303:                                   ; preds = %sw.bb.150
  %182 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err304 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %182, i32 0, i32 0
  %183 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err304, align 8, !tbaa !22
  %msg_code305 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %183, i32 0, i32 5
  store i32 1002, i32* %msg_code305, align 4, !tbaa !23
  %184 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err306 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %184, i32 0, i32 0
  %185 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err306, align 8, !tbaa !22
  %error_exit307 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %185, i32 0, i32 0
  %186 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit307, align 8, !tbaa !25
  %187 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %188 = bitcast %struct.jpeg_compress_struct* %187 to %struct.jpeg_common_struct*
  call void %186(%struct.jpeg_common_struct* %188)
  br label %sw.epilog.308

sw.epilog.308:                                    ; preds = %sw.default.303, %sw.bb.288, %sw.bb.273
  %189 = load i32, i32* %biPlanes, align 4, !tbaa !20
  %cmp309 = icmp ne i32 %189, 1
  br i1 %cmp309, label %if.then.311, label %if.end.316

if.then.311:                                      ; preds = %sw.epilog.308
  %190 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err312 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %190, i32 0, i32 0
  %191 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err312, align 8, !tbaa !22
  %msg_code313 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %191, i32 0, i32 5
  store i32 1004, i32* %msg_code313, align 4, !tbaa !23
  %192 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err314 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %192, i32 0, i32 0
  %193 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err314, align 8, !tbaa !22
  %error_exit315 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %193, i32 0, i32 0
  %194 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit315, align 8, !tbaa !25
  %195 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %196 = bitcast %struct.jpeg_compress_struct* %195 to %struct.jpeg_common_struct*
  call void %194(%struct.jpeg_common_struct* %196)
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.311, %sw.epilog.308
  %197 = load i64, i64* %biCompression, align 8, !tbaa !19
  %cmp317 = icmp ne i64 %197, 0
  br i1 %cmp317, label %if.then.319, label %if.end.324

if.then.319:                                      ; preds = %if.end.316
  %198 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err320 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %198, i32 0, i32 0
  %199 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err320, align 8, !tbaa !22
  %msg_code321 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %199, i32 0, i32 5
  store i32 1006, i32* %msg_code321, align 4, !tbaa !23
  %200 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err322 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %200, i32 0, i32 0
  %201 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err322, align 8, !tbaa !22
  %error_exit323 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %201, i32 0, i32 0
  %202 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit323, align 8, !tbaa !25
  %203 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %204 = bitcast %struct.jpeg_compress_struct* %203 to %struct.jpeg_common_struct*
  call void %202(%struct.jpeg_common_struct* %204)
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.319, %if.end.316
  %205 = load i64, i64* %biXPelsPerMeter, align 8, !tbaa !19
  %cmp325 = icmp sgt i64 %205, 0
  br i1 %cmp325, label %land.lhs.true, label %if.end.333

land.lhs.true:                                    ; preds = %if.end.324
  %206 = load i64, i64* %biYPelsPerMeter, align 8, !tbaa !19
  %cmp327 = icmp sgt i64 %206, 0
  br i1 %cmp327, label %if.then.329, label %if.end.333

if.then.329:                                      ; preds = %land.lhs.true
  %207 = load i64, i64* %biXPelsPerMeter, align 8, !tbaa !19
  %div = sdiv i64 %207, 100
  %conv330 = trunc i64 %div to i16
  %208 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %208, i32 0, i32 33
  store i16 %conv330, i16* %X_density, align 2, !tbaa !29
  %209 = load i64, i64* %biYPelsPerMeter, align 8, !tbaa !19
  %div331 = sdiv i64 %209, 100
  %conv332 = trunc i64 %div331 to i16
  %210 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %210, i32 0, i32 34
  store i16 %conv332, i16* %Y_density, align 2, !tbaa !30
  %211 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %211, i32 0, i32 32
  store i8 2, i8* %density_unit, align 1, !tbaa !31
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.329, %land.lhs.true, %if.end.324
  br label %sw.epilog.339

sw.default.334:                                   ; preds = %if.end.82
  %212 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err335 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %212, i32 0, i32 0
  %213 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err335, align 8, !tbaa !22
  %msg_code336 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %213, i32 0, i32 5
  store i32 1003, i32* %msg_code336, align 4, !tbaa !23
  %214 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err337 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %214, i32 0, i32 0
  %215 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err337, align 8, !tbaa !22
  %error_exit338 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %215, i32 0, i32 0
  %216 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit338, align 8, !tbaa !25
  %217 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %218 = bitcast %struct.jpeg_compress_struct* %217 to %struct.jpeg_common_struct*
  call void %216(%struct.jpeg_common_struct* %218)
  br label %sw.epilog.339

sw.epilog.339:                                    ; preds = %sw.default.334, %if.end.333, %if.end.149
  %219 = load i64, i64* %bfOffBits, align 8, !tbaa !19
  %220 = load i64, i64* %headerSize, align 8, !tbaa !19
  %add340 = add nsw i64 %220, 14
  %sub341 = sub nsw i64 %219, %add340
  store i64 %sub341, i64* %bPad, align 8, !tbaa !19
  %221 = load i32, i32* %mapentrysize, align 4, !tbaa !20
  %cmp342 = icmp sgt i32 %221, 0
  br i1 %cmp342, label %if.then.344, label %if.end.362

if.then.344:                                      ; preds = %sw.epilog.339
  %222 = load i64, i64* %biClrUsed, align 8, !tbaa !19
  %cmp345 = icmp sle i64 %222, 0
  br i1 %cmp345, label %if.then.347, label %if.else

if.then.347:                                      ; preds = %if.then.344
  store i64 256, i64* %biClrUsed, align 8, !tbaa !19
  br label %if.end.356

if.else:                                          ; preds = %if.then.344
  %223 = load i64, i64* %biClrUsed, align 8, !tbaa !19
  %cmp348 = icmp sgt i64 %223, 256
  br i1 %cmp348, label %if.then.350, label %if.end.355

if.then.350:                                      ; preds = %if.else
  %224 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err351 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %224, i32 0, i32 0
  %225 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err351, align 8, !tbaa !22
  %msg_code352 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %225, i32 0, i32 5
  store i32 1001, i32* %msg_code352, align 4, !tbaa !23
  %226 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err353 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %226, i32 0, i32 0
  %227 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err353, align 8, !tbaa !22
  %error_exit354 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %227, i32 0, i32 0
  %228 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit354, align 8, !tbaa !25
  %229 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %230 = bitcast %struct.jpeg_compress_struct* %229 to %struct.jpeg_common_struct*
  call void %228(%struct.jpeg_common_struct* %230)
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.350, %if.else
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.then.347
  %231 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %231, i32 0, i32 1
  %232 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %232, i32 0, i32 2
  %233 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !32
  %234 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %235 = bitcast %struct.jpeg_compress_struct* %234 to %struct.jpeg_common_struct*
  %236 = load i64, i64* %biClrUsed, align 8, !tbaa !19
  %conv357 = trunc i64 %236 to i32
  %call358 = call i8** %233(%struct.jpeg_common_struct* %235, i32 1, i32 %conv357, i32 3)
  %237 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %237, i32 0, i32 2
  store i8** %call358, i8*** %colormap, align 8, !tbaa !33
  %238 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %239 = load i64, i64* %biClrUsed, align 8, !tbaa !19
  %conv359 = trunc i64 %239 to i32
  %240 = load i32, i32* %mapentrysize, align 4, !tbaa !20
  call void @read_colormap(%struct._bmp_source_struct* %238, i32 %conv359, i32 %240)
  %241 = load i64, i64* %biClrUsed, align 8, !tbaa !19
  %242 = load i32, i32* %mapentrysize, align 4, !tbaa !20
  %conv360 = sext i32 %242 to i64
  %mul = mul nsw i64 %241, %conv360
  %243 = load i64, i64* %bPad, align 8, !tbaa !19
  %sub361 = sub nsw i64 %243, %mul
  store i64 %sub361, i64* %bPad, align 8, !tbaa !19
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.356, %sw.epilog.339
  %244 = load i64, i64* %bPad, align 8, !tbaa !19
  %cmp363 = icmp slt i64 %244, 0
  br i1 %cmp363, label %if.then.365, label %if.end.370

if.then.365:                                      ; preds = %if.end.362
  %245 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err366 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %245, i32 0, i32 0
  %246 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err366, align 8, !tbaa !22
  %msg_code367 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %246, i32 0, i32 5
  store i32 1003, i32* %msg_code367, align 4, !tbaa !23
  %247 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err368 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %247, i32 0, i32 0
  %248 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err368, align 8, !tbaa !22
  %error_exit369 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %248, i32 0, i32 0
  %249 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit369, align 8, !tbaa !25
  %250 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %251 = bitcast %struct.jpeg_compress_struct* %250 to %struct.jpeg_common_struct*
  call void %249(%struct.jpeg_common_struct* %251)
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.365, %if.end.362
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.370
  %252 = load i64, i64* %bPad, align 8, !tbaa !19
  %dec = add nsw i64 %252, -1
  store i64 %dec, i64* %bPad, align 8, !tbaa !19
  %cmp371 = icmp sge i64 %dec, 0
  br i1 %cmp371, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %253 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %call373 = call i32 @read_byte(%struct._bmp_source_struct* %253)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %254 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %bits_per_pixel374 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %254, i32 0, i32 6
  %255 = load i32, i32* %bits_per_pixel374, align 4, !tbaa !27
  %cmp375 = icmp eq i32 %255, 24
  br i1 %cmp375, label %if.then.377, label %if.else.380

if.then.377:                                      ; preds = %while.end
  %256 = load i64, i64* %biWidth, align 8, !tbaa !19
  %mul378 = mul nsw i64 %256, 3
  %conv379 = trunc i64 %mul378 to i32
  store i32 %conv379, i32* %row_width, align 4, !tbaa !20
  br label %if.end.382

if.else.380:                                      ; preds = %while.end
  %257 = load i64, i64* %biWidth, align 8, !tbaa !19
  %conv381 = trunc i64 %257 to i32
  store i32 %conv381, i32* %row_width, align 4, !tbaa !20
  br label %if.end.382

if.end.382:                                       ; preds = %if.else.380, %if.then.377
  br label %while.cond.383

while.cond.383:                                   ; preds = %while.body.386, %if.end.382
  %258 = load i32, i32* %row_width, align 4, !tbaa !20
  %and = and i32 %258, 3
  %cmp384 = icmp ne i32 %and, 0
  br i1 %cmp384, label %while.body.386, label %while.end.387

while.body.386:                                   ; preds = %while.cond.383
  %259 = load i32, i32* %row_width, align 4, !tbaa !20
  %inc = add i32 %259, 1
  store i32 %inc, i32* %row_width, align 4, !tbaa !20
  br label %while.cond.383

while.end.387:                                    ; preds = %while.cond.383
  %260 = load i32, i32* %row_width, align 4, !tbaa !20
  %261 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %row_width388 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %261, i32 0, i32 5
  store i32 %260, i32* %row_width388, align 4, !tbaa !34
  %262 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem389 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %262, i32 0, i32 1
  %263 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem389, align 8, !tbaa !6
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %263, i32 0, i32 4
  %264 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8, !tbaa !35
  %265 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %266 = bitcast %struct.jpeg_compress_struct* %265 to %struct.jpeg_common_struct*
  %267 = load i32, i32* %row_width, align 4, !tbaa !20
  %268 = load i64, i64* %biHeight, align 8, !tbaa !19
  %conv390 = trunc i64 %268 to i32
  %call391 = call %struct.jvirt_sarray_control* %264(%struct.jpeg_common_struct* %266, i32 1, i32 0, i32 %267, i32 %conv390, i32 1)
  %269 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %269, i32 0, i32 3
  store %struct.jvirt_sarray_control* %call391, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !36
  %270 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub392 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %270, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub392, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @preload_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8, !tbaa !37
  %271 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %271, i32 0, i32 2
  %272 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !38
  %cmp393 = icmp ne %struct.jpeg_progress_mgr* %272, null
  br i1 %cmp393, label %if.then.395, label %if.end.399

if.then.395:                                      ; preds = %while.end.387
  %273 = bitcast %struct.cdjpeg_progress_mgr** %progress396 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %273) #3
  %274 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress397 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %274, i32 0, i32 2
  %275 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress397, align 8, !tbaa !38
  %276 = bitcast %struct.jpeg_progress_mgr* %275 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %276, %struct.cdjpeg_progress_mgr** %progress396, align 8, !tbaa !2
  %277 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress396, align 8, !tbaa !2
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %277, i32 0, i32 2
  %278 = load i32, i32* %total_extra_passes, align 4, !tbaa !39
  %inc398 = add nsw i32 %278, 1
  store i32 %inc398, i32* %total_extra_passes, align 4, !tbaa !39
  %279 = bitcast %struct.cdjpeg_progress_mgr** %progress396 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #3
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.395, %while.end.387
  %280 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem400 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %280, i32 0, i32 1
  %281 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem400, align 8, !tbaa !6
  %alloc_sarray401 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %281, i32 0, i32 2
  %282 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray401, align 8, !tbaa !32
  %283 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %284 = bitcast %struct.jpeg_compress_struct* %283 to %struct.jpeg_common_struct*
  %285 = load i64, i64* %biWidth, align 8, !tbaa !19
  %mul402 = mul nsw i64 %285, 3
  %conv403 = trunc i64 %mul402 to i32
  %call404 = call i8** %282(%struct.jpeg_common_struct* %284, i32 1, i32 %conv403, i32 1)
  %286 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub405 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %286, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub405, i32 0, i32 4
  store i8** %call404, i8*** %buffer, align 8, !tbaa !42
  %287 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub406 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %287, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub406, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4, !tbaa !43
  %288 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %288, i32 0, i32 9
  store i32 2, i32* %in_color_space, align 4, !tbaa !44
  %289 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %289, i32 0, i32 8
  store i32 3, i32* %input_components, align 4, !tbaa !45
  %290 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %290, i32 0, i32 11
  store i32 8, i32* %data_precision, align 4, !tbaa !46
  %291 = load i64, i64* %biWidth, align 8, !tbaa !19
  %conv407 = trunc i64 %291 to i32
  %292 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %292, i32 0, i32 6
  store i32 %conv407, i32* %image_width, align 4, !tbaa !47
  %293 = load i64, i64* %biHeight, align 8, !tbaa !19
  %conv408 = trunc i64 %293 to i32
  %294 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %294, i32 0, i32 7
  store i32 %conv408, i32* %image_height, align 4, !tbaa !48
  %295 = bitcast i32* %row_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #3
  %296 = bitcast i64* %bPad to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #3
  %297 = bitcast i32* %mapentrysize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #3
  %298 = bitcast i64* %biClrUsed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #3
  %299 = bitcast i64* %biYPelsPerMeter to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #3
  %300 = bitcast i64* %biXPelsPerMeter to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #3
  %301 = bitcast i64* %biCompression to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #3
  %302 = bitcast i32* %biPlanes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #3
  %303 = bitcast i64* %biHeight to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #3
  %304 = bitcast i64* %biWidth to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #3
  %305 = bitcast i64* %headerSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #3
  %306 = bitcast i64* %bfOffBits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #3
  %307 = bitcast [64 x i8]* %bmpinfoheader to i8*
  call void @llvm.lifetime.end(i64 64, i8* %307) #3
  %308 = bitcast [14 x i8]* %bmpfileheader to i8*
  call void @llvm.lifetime.end(i64 14, i8* %308) #3
  %309 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_bmp(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i64 @fread(i8*, i64, i64, %struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define internal void @read_colormap(%struct._bmp_source_struct* %sinfo, i32 %cmaplen, i32 %mapentrysize) #0 {
entry:
  %sinfo.addr = alloca %struct._bmp_source_struct*, align 8
  %cmaplen.addr = alloca i32, align 4
  %mapentrysize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._bmp_source_struct* %sinfo, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  store i32 %cmaplen, i32* %cmaplen.addr, align 4, !tbaa !20
  store i32 %mapentrysize, i32* %mapentrysize.addr, align 4, !tbaa !20
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i32, i32* %mapentrysize.addr, align 4, !tbaa !20
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load i32, i32* %i, align 4, !tbaa !20
  %3 = load i32, i32* %cmaplen.addr, align 4, !tbaa !20
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call = call i32 @read_byte(%struct._bmp_source_struct* %4)
  %conv = trunc i32 %call to i8
  %5 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %6, i32 0, i32 2
  %7 = load i8**, i8*** %colormap, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 2
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 %conv, i8* %arrayidx1, align 1, !tbaa !26
  %9 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call2 = call i32 @read_byte(%struct._bmp_source_struct* %9)
  %conv3 = trunc i32 %call2 to i8
  %10 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %colormap5 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %11, i32 0, i32 2
  %12 = load i8**, i8*** %colormap5, align 8, !tbaa !33
  %arrayidx6 = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx6, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %idxprom4
  store i8 %conv3, i8* %arrayidx7, align 1, !tbaa !26
  %14 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call8 = call i32 @read_byte(%struct._bmp_source_struct* %14)
  %conv9 = trunc i32 %call8 to i8
  %15 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %colormap11 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %16, i32 0, i32 2
  %17 = load i8**, i8*** %colormap11, align 8, !tbaa !33
  %arrayidx12 = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx12, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx13, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.38, %sw.bb.14
  %20 = load i32, i32* %i, align 4, !tbaa !20
  %21 = load i32, i32* %cmaplen.addr, align 4, !tbaa !20
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %for.body.18, label %for.end.40

for.body.18:                                      ; preds = %for.cond.15
  %22 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call19 = call i32 @read_byte(%struct._bmp_source_struct* %22)
  %conv20 = trunc i32 %call19 to i8
  %23 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %colormap22 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %24, i32 0, i32 2
  %25 = load i8**, i8*** %colormap22, align 8, !tbaa !33
  %arrayidx23 = getelementptr inbounds i8*, i8** %25, i64 2
  %26 = load i8*, i8** %arrayidx23, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 %idxprom21
  store i8 %conv20, i8* %arrayidx24, align 1, !tbaa !26
  %27 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call25 = call i32 @read_byte(%struct._bmp_source_struct* %27)
  %conv26 = trunc i32 %call25 to i8
  %28 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom27 = sext i32 %28 to i64
  %29 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %colormap28 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %29, i32 0, i32 2
  %30 = load i8**, i8*** %colormap28, align 8, !tbaa !33
  %arrayidx29 = getelementptr inbounds i8*, i8** %30, i64 1
  %31 = load i8*, i8** %arrayidx29, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i8, i8* %31, i64 %idxprom27
  store i8 %conv26, i8* %arrayidx30, align 1, !tbaa !26
  %32 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call31 = call i32 @read_byte(%struct._bmp_source_struct* %32)
  %conv32 = trunc i32 %call31 to i8
  %33 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom33 = sext i32 %33 to i64
  %34 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %colormap34 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %34, i32 0, i32 2
  %35 = load i8**, i8*** %colormap34, align 8, !tbaa !33
  %arrayidx35 = getelementptr inbounds i8*, i8** %35, i64 0
  %36 = load i8*, i8** %arrayidx35, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds i8, i8* %36, i64 %idxprom33
  store i8 %conv32, i8* %arrayidx36, align 1, !tbaa !26
  %37 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call37 = call i32 @read_byte(%struct._bmp_source_struct* %37)
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.18
  %38 = load i32, i32* %i, align 4, !tbaa !20
  %inc39 = add nsw i32 %38, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !20
  br label %for.cond.15

for.end.40:                                       ; preds = %for.cond.15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %39 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %39, i32 0, i32 1
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !14
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 5
  store i32 1001, i32* %msg_code, align 4, !tbaa !23
  %42 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo41 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %42, i32 0, i32 1
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo41, align 8, !tbaa !14
  %err42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %46 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo43 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %46, i32 0, i32 1
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo43, align 8, !tbaa !14
  %48 = bitcast %struct.jpeg_compress_struct* %47 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %48)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.40, %for.end
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_byte(%struct._bmp_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct._bmp_source_struct*, align 8
  %infile = alloca %struct.__sFILE*, align 8
  %c = alloca i32, align 4
  store %struct._bmp_source_struct* %sinfo, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %2 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !21
  store %struct.__sFILE* %2, %struct.__sFILE** %infile, align 8, !tbaa !2
  %3 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call = call i32 @getc(%struct.__sFILE* %4)
  store i32 %call, i32* %c, align 4, !tbaa !20
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !14
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !23
  %8 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo1 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !14
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %12 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo3 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %12, i32 0, i32 1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !14
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %c, align 4, !tbaa !20
  %16 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #3
  %17 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #3
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @preload_image(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  %infile = alloca %struct.__sFILE*, align 8
  %c = alloca i32, align 4
  %out_ptr = alloca i8*, align 8
  %image_ptr = alloca i8**, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %progress = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %2, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %4, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %5 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !21
  store %struct.__sFILE* %5, %struct.__sFILE** %infile, align 8, !tbaa !2
  %6 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast %struct.cdjpeg_progress_mgr** %progress to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 2
  %13 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress1, align 8, !tbaa !38
  %14 = bitcast %struct.jpeg_progress_mgr* %13 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %14, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  store i32 0, i32* %row, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %15 = load i32, i32* %row, align 4, !tbaa !20
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 7
  %17 = load i32, i32* %image_height, align 4, !tbaa !48
  %cmp = icmp ult i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %18 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %cmp2 = icmp ne %struct.cdjpeg_progress_mgr* %18, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load i32, i32* %row, align 4, !tbaa !20
  %conv = zext i32 %19 to i64
  %20 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %20, i32 0, i32 0
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub3, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8, !tbaa !49
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 7
  %22 = load i32, i32* %image_height4, align 4, !tbaa !48
  %conv5 = zext i32 %22 to i64
  %23 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %pub6 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %23, i32 0, i32 0
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub6, i32 0, i32 2
  store i64 %conv5, i64* %pass_limit, align 8, !tbaa !50
  %24 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %pub7 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %24, i32 0, i32 0
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub7, i32 0, i32 0
  %progress_monitor8 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor8, align 8, !tbaa !51
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 1
  %29 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %29, i32 0, i32 7
  %30 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !52
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  %33 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %33, i32 0, i32 3
  %34 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !36
  %35 = load i32, i32* %row, align 4, !tbaa !20
  %call = call i8** %30(%struct.jpeg_common_struct* %32, %struct.jvirt_sarray_control* %34, i32 %35, i32 1, i32 1)
  store i8** %call, i8*** %image_ptr, align 8, !tbaa !2
  %36 = load i8**, i8*** %image_ptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 0
  %37 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %37, i8** %out_ptr, align 8, !tbaa !2
  %38 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %row_width = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %38, i32 0, i32 5
  %39 = load i32, i32* %row_width, align 4, !tbaa !34
  store i32 %39, i32* %col, align 4, !tbaa !20
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end
  %40 = load i32, i32* %col, align 4, !tbaa !20
  %cmp10 = icmp ugt i32 %40, 0
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %41 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call13 = call i32 @getc(%struct.__sFILE* %41)
  store i32 %call13, i32* %c, align 4, !tbaa !20
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body.12
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !23
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %48 = bitcast %struct.jpeg_compress_struct* %47 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* %48)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.body.12
  %49 = load i32, i32* %c, align 4, !tbaa !20
  %conv19 = trunc i32 %49 to i8
  %50 = load i8*, i8** %out_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %out_ptr, align 8, !tbaa !2
  store i8 %conv19, i8* %50, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %51 = load i32, i32* %col, align 4, !tbaa !20
  %dec = add i32 %51, -1
  store i32 %dec, i32* %col, align 4, !tbaa !20
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %52 = load i32, i32* %row, align 4, !tbaa !20
  %inc = add i32 %52, 1
  store i32 %inc, i32* %row, align 4, !tbaa !20
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %53 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %cmp22 = icmp ne %struct.cdjpeg_progress_mgr* %53, null
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.end.21
  %54 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %54, i32 0, i32 1
  %55 = load i32, i32* %completed_extra_passes, align 4, !tbaa !53
  %inc25 = add nsw i32 %55, 1
  store i32 %inc25, i32* %completed_extra_passes, align 4, !tbaa !53
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.end.21
  %56 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %56, i32 0, i32 6
  %57 = load i32, i32* %bits_per_pixel, align 4, !tbaa !27
  switch i32 %57, label %sw.default [
    i32 8, label %sw.bb
    i32 24, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.end.26
  %58 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub27 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %58, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub27, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8, !tbaa !37
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.26
  %59 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub29 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %59, i32 0, i32 0
  %get_pixel_rows30 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub29, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows30, align 8, !tbaa !37
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.26
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !22
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 5
  store i32 1002, i32* %msg_code32, align 4, !tbaa !23
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !22
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 0
  %64 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8, !tbaa !25
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %66 = bitcast %struct.jpeg_compress_struct* %65 to %struct.jpeg_common_struct*
  call void %64(%struct.jpeg_common_struct* %66)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 7
  %68 = load i32, i32* %image_height35, align 4, !tbaa !48
  %69 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %source_row = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %69, i32 0, i32 4
  store i32 %68, i32* %source_row, align 4, !tbaa !54
  %70 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub36 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %70, i32 0, i32 0
  %get_pixel_rows37 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub36, i32 0, i32 1
  %71 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows37, align 8, !tbaa !37
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %73 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call38 = call i32 %71(%struct.jpeg_compress_struct* %72, %struct.cjpeg_source_struct* %73)
  %74 = bitcast %struct.cdjpeg_progress_mgr** %progress to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #3
  %75 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #3
  %76 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #3
  %77 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #3
  %78 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #3
  %79 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #3
  %81 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #3
  ret i32 %call38
}

declare i32 @getc(%struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_8bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  %colormap = alloca i8**, align 8
  %image_ptr = alloca i8**, align 8
  %t = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %2, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %colormap1 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %4, i32 0, i32 2
  %5 = load i8**, i8*** %colormap1, align 8, !tbaa !33
  store i8** %5, i8*** %colormap, align 8, !tbaa !2
  %6 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %source_row = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %11, i32 0, i32 4
  %12 = load i32, i32* %source_row, align 4, !tbaa !54
  %dec = add i32 %12, -1
  store i32 %dec, i32* %source_row, align 4, !tbaa !54
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i32 0, i32 7
  %15 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !52
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  %18 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %18, i32 0, i32 3
  %19 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !36
  %20 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %source_row2 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %20, i32 0, i32 4
  %21 = load i32, i32* %source_row2, align 4, !tbaa !54
  %call = call i8** %15(%struct.jpeg_common_struct* %17, %struct.jvirt_sarray_control* %19, i32 %21, i32 1, i32 0)
  store i8** %call, i8*** %image_ptr, align 8, !tbaa !2
  %22 = load i8**, i8*** %image_ptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 0
  %23 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %23, i8** %inptr, align 8, !tbaa !2
  %24 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %24, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %25 = load i8**, i8*** %buffer, align 8, !tbaa !42
  %arrayidx3 = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx3, align 8, !tbaa !2
  store i8* %26, i8** %outptr, align 8, !tbaa !2
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 6
  %28 = load i32, i32* %image_width, align 4, !tbaa !47
  store i32 %28, i32* %col, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %29 = load i32, i32* %col, align 4, !tbaa !20
  %cmp = icmp ugt i32 %29, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !2
  %31 = load i8, i8* %30, align 1, !tbaa !26
  %conv = zext i8 %31 to i32
  store i32 %conv, i32* %t, align 4, !tbaa !20
  %32 = load i32, i32* %t, align 4, !tbaa !20
  %idxprom = sext i32 %32 to i64
  %33 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8*, i8** %33, i64 0
  %34 = load i8*, i8** %arrayidx4, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8, i8* %34, i64 %idxprom
  %35 = load i8, i8* %arrayidx5, align 1, !tbaa !26
  %36 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr6 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr6, i8** %outptr, align 8, !tbaa !2
  store i8 %35, i8* %36, align 1, !tbaa !26
  %37 = load i32, i32* %t, align 4, !tbaa !20
  %idxprom7 = sext i32 %37 to i64
  %38 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %38, i64 1
  %39 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8, i8* %39, i64 %idxprom7
  %40 = load i8, i8* %arrayidx9, align 1, !tbaa !26
  %41 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr10 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr10, i8** %outptr, align 8, !tbaa !2
  store i8 %40, i8* %41, align 1, !tbaa !26
  %42 = load i32, i32* %t, align 4, !tbaa !20
  %idxprom11 = sext i32 %42 to i64
  %43 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i8*, i8** %43, i64 2
  %44 = load i8*, i8** %arrayidx12, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8, i8* %44, i64 %idxprom11
  %45 = load i8, i8* %arrayidx13, align 1, !tbaa !26
  %46 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr14 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr14, i8** %outptr, align 8, !tbaa !2
  store i8 %45, i8* %46, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %col, align 4, !tbaa !20
  %dec15 = add i32 %47, -1
  store i32 %dec15, i32* %col, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #3
  %49 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #3
  %50 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #3
  %51 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  %52 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #3
  %53 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  %54 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_24bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  %image_ptr = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %2, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %source_row = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %source_row, align 4, !tbaa !54
  %dec = add i32 %8, -1
  store i32 %dec, i32* %source_row, align 4, !tbaa !54
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 7
  %11 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !52
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  %14 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %14, i32 0, i32 3
  %15 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !36
  %16 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %source_row1 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %16, i32 0, i32 4
  %17 = load i32, i32* %source_row1, align 4, !tbaa !54
  %call = call i8** %11(%struct.jpeg_common_struct* %13, %struct.jvirt_sarray_control* %15, i32 %17, i32 1, i32 0)
  store i8** %call, i8*** %image_ptr, align 8, !tbaa !2
  %18 = load i8**, i8*** %image_ptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 0
  %19 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %19, i8** %inptr, align 8, !tbaa !2
  %20 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %20, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %21 = load i8**, i8*** %buffer, align 8, !tbaa !42
  %arrayidx2 = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %22, i8** %outptr, align 8, !tbaa !2
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 6
  %24 = load i32, i32* %image_width, align 4, !tbaa !47
  store i32 %24, i32* %col, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %25 = load i32, i32* %col, align 4, !tbaa !20
  %cmp = icmp ugt i32 %25, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !2
  %27 = load i8, i8* %26, align 1, !tbaa !26
  %28 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8, i8* %28, i64 2
  store i8 %27, i8* %arrayidx3, align 1, !tbaa !26
  %29 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr4 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr4, i8** %inptr, align 8, !tbaa !2
  %30 = load i8, i8* %29, align 1, !tbaa !26
  %31 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %30, i8* %arrayidx5, align 1, !tbaa !26
  %32 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr6 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr6, i8** %inptr, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !26
  %34 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %33, i8* %arrayidx7, align 1, !tbaa !26
  %35 = load i8*, i8** %outptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 3
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %col, align 4, !tbaa !20
  %dec8 = add i32 %36, -1
  store i32 %dec8, i32* %col, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #3
  %38 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #3
  %39 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  %40 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  %41 = bitcast %struct._bmp_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #3
  ret i32 1
}

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
!14 = !{!15, !3, i64 48}
!15 = !{!"_bmp_source_struct", !16, i64 0, !3, i64 48, !3, i64 56, !3, i64 64, !8, i64 72, !8, i64 76, !8, i64 80}
!16 = !{!"cjpeg_source_struct", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40}
!17 = !{!15, !3, i64 0}
!18 = !{!15, !3, i64 16}
!19 = !{!13, !13, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!15, !3, i64 24}
!22 = !{!7, !3, i64 0}
!23 = !{!24, !8, i64 40}
!24 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!25 = !{!24, !3, i64 0}
!26 = !{!4, !4, i64 0}
!27 = !{!15, !8, i64 80}
!28 = !{!24, !3, i64 8}
!29 = !{!7, !10, i64 286}
!30 = !{!7, !10, i64 288}
!31 = !{!7, !4, i64 284}
!32 = !{!12, !3, i64 16}
!33 = !{!15, !3, i64 56}
!34 = !{!15, !8, i64 76}
!35 = !{!12, !3, i64 32}
!36 = !{!15, !3, i64 64}
!37 = !{!15, !3, i64 8}
!38 = !{!7, !3, i64 16}
!39 = !{!40, !8, i64 36}
!40 = !{!"cdjpeg_progress_mgr", !41, i64 0, !8, i64 32, !8, i64 36, !8, i64 40}
!41 = !{!"jpeg_progress_mgr", !3, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28}
!42 = !{!15, !3, i64 32}
!43 = !{!15, !8, i64 40}
!44 = !{!7, !4, i64 52}
!45 = !{!7, !8, i64 48}
!46 = !{!7, !8, i64 64}
!47 = !{!7, !8, i64 40}
!48 = !{!7, !8, i64 44}
!49 = !{!40, !13, i64 8}
!50 = !{!40, !13, i64 16}
!51 = !{!40, !3, i64 0}
!52 = !{!12, !3, i64 56}
!53 = !{!40, !8, i64 32}
!54 = !{!15, !8, i64 72}
