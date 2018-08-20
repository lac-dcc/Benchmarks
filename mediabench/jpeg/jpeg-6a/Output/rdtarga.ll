; ModuleID = 'rdtarga.c'
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
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, %struct.jvirt_sarray_control*, i32, void (%struct._tga_source_struct*)*, [4 x i8], i32, i32, i32, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

@c5to8bits = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16

; Function Attrs: nounwind ssp uwtable
define %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 112)
  %6 = bitcast i8* %call to %struct._tga_source_struct*
  store %struct._tga_source_struct* %6, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %8 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %8, i32 0, i32 1
  store %struct.jpeg_compress_struct* %7, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !14
  %9 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %9, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_tga, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %start_input, align 8, !tbaa !17
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %10, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_tga, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %finish_input, align 8, !tbaa !18
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %12 = bitcast %struct._tga_source_struct* %11 to %struct.cjpeg_source_struct*
  %13 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #3
  ret %struct.cjpeg_source_struct* %12
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_tga(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %targaheader = alloca [18 x i8], align 16
  %idlen = alloca i32, align 4
  %cmaptype = alloca i32, align 4
  %subtype = alloca i32, align 4
  %flags = alloca i32, align 4
  %interlace_type = alloca i32, align 4
  %components = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %maplen = alloca i32, align 4
  %is_bottom_up = alloca i32, align 4
  %progress146 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %2, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast [18 x i8]* %targaheader to i8*
  call void @llvm.lifetime.start(i64 18, i8* %3) #3
  %4 = bitcast i32* %idlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %cmaptype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %subtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %interlace_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %maplen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %is_bottom_up to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i32 0
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %14, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %15 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !19
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 18, %struct.__sFILE* %15)
  %cmp = icmp eq i64 %call, 18
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !21
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = bitcast %struct.jpeg_compress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = zext i8 %23 to i32
  %cmp2 = icmp eq i32 %conv, 15
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  store i8 16, i8* %arrayidx5, align 1, !tbaa !24
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %arrayidx7 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 0
  %24 = load i8, i8* %arrayidx7, align 1, !tbaa !24
  %conv8 = zext i8 %24 to i32
  store i32 %conv8, i32* %idlen, align 4, !tbaa !25
  %arrayidx9 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 1
  %25 = load i8, i8* %arrayidx9, align 1, !tbaa !24
  %conv10 = zext i8 %25 to i32
  store i32 %conv10, i32* %cmaptype, align 4, !tbaa !25
  %arrayidx11 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 2
  %26 = load i8, i8* %arrayidx11, align 1, !tbaa !24
  %conv12 = zext i8 %26 to i32
  store i32 %conv12, i32* %subtype, align 4, !tbaa !25
  %arrayidx13 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 5
  %27 = load i8, i8* %arrayidx13, align 1, !tbaa !24
  %conv14 = zext i8 %27 to i32
  %arrayidx15 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 6
  %28 = load i8, i8* %arrayidx15, align 1, !tbaa !24
  %conv16 = zext i8 %28 to i32
  %shl = shl i32 %conv16, 8
  %add = add i32 %conv14, %shl
  store i32 %add, i32* %maplen, align 4, !tbaa !25
  %arrayidx17 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 12
  %29 = load i8, i8* %arrayidx17, align 1, !tbaa !24
  %conv18 = zext i8 %29 to i32
  %arrayidx19 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 13
  %30 = load i8, i8* %arrayidx19, align 1, !tbaa !24
  %conv20 = zext i8 %30 to i32
  %shl21 = shl i32 %conv20, 8
  %add22 = add i32 %conv18, %shl21
  store i32 %add22, i32* %width, align 4, !tbaa !25
  %arrayidx23 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 14
  %31 = load i8, i8* %arrayidx23, align 1, !tbaa !24
  %conv24 = zext i8 %31 to i32
  %arrayidx25 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 15
  %32 = load i8, i8* %arrayidx25, align 1, !tbaa !24
  %conv26 = zext i8 %32 to i32
  %shl27 = shl i32 %conv26, 8
  %add28 = add i32 %conv24, %shl27
  store i32 %add28, i32* %height, align 4, !tbaa !25
  %arrayidx29 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  %33 = load i8, i8* %arrayidx29, align 1, !tbaa !24
  %conv30 = zext i8 %33 to i32
  %shr = ashr i32 %conv30, 3
  %34 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %34, i32 0, i32 7
  store i32 %shr, i32* %pixel_size, align 4, !tbaa !26
  %arrayidx31 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 17
  %35 = load i8, i8* %arrayidx31, align 1, !tbaa !24
  %conv32 = zext i8 %35 to i32
  store i32 %conv32, i32* %flags, align 4, !tbaa !25
  %36 = load i32, i32* %flags, align 4, !tbaa !25
  %and = and i32 %36, 32
  %cmp33 = icmp eq i32 %and, 0
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %is_bottom_up, align 4, !tbaa !25
  %37 = load i32, i32* %flags, align 4, !tbaa !25
  %shr35 = ashr i32 %37, 6
  store i32 %shr35, i32* %interlace_type, align 4, !tbaa !25
  %38 = load i32, i32* %cmaptype, align 4, !tbaa !25
  %cmp36 = icmp sgt i32 %38, 1
  br i1 %cmp36, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %39 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pixel_size38 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %39, i32 0, i32 7
  %40 = load i32, i32* %pixel_size38, align 4, !tbaa !26
  %cmp39 = icmp slt i32 %40, 1
  br i1 %cmp39, label %if.then.54, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %41 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pixel_size42 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %41, i32 0, i32 7
  %42 = load i32, i32* %pixel_size42, align 4, !tbaa !26
  %cmp43 = icmp sgt i32 %42, 4
  br i1 %cmp43, label %if.then.54, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.41
  %arrayidx46 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  %43 = load i8, i8* %arrayidx46, align 1, !tbaa !24
  %conv47 = zext i8 %43 to i32
  %and48 = and i32 %conv47, 7
  %cmp49 = icmp ne i32 %and48, 0
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.45
  %44 = load i32, i32* %interlace_type, align 4, !tbaa !25
  %cmp52 = icmp ne i32 %44, 0
  br i1 %cmp52, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.45, %lor.lhs.false.41, %lor.lhs.false, %if.end.6
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8, !tbaa !20
  %msg_code56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 5
  store i32 1033, i32* %msg_code56, align 4, !tbaa !21
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !20
  %error_exit58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 0
  %49 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit58, align 8, !tbaa !23
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %51 = bitcast %struct.jpeg_compress_struct* %50 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* %51)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %lor.lhs.false.51
  %52 = load i32, i32* %subtype, align 4, !tbaa !25
  %cmp60 = icmp sgt i32 %52, 8
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.end.59
  %53 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %53, i32 0, i32 5
  store void (%struct._tga_source_struct*)* @read_rle_pixel, void (%struct._tga_source_struct*)** %read_pixel, align 8, !tbaa !27
  %54 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %dup_pixel_count = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %54, i32 0, i32 9
  store i32 0, i32* %dup_pixel_count, align 4, !tbaa !28
  %55 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %block_count = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %55, i32 0, i32 8
  store i32 0, i32* %block_count, align 4, !tbaa !29
  %56 = load i32, i32* %subtype, align 4, !tbaa !25
  %sub = sub nsw i32 %56, 8
  store i32 %sub, i32* %subtype, align 4, !tbaa !25
  br label %if.end.64

if.else:                                          ; preds = %if.end.59
  %57 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %read_pixel63 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %57, i32 0, i32 5
  store void (%struct._tga_source_struct*)* @read_non_rle_pixel, void (%struct._tga_source_struct*)** %read_pixel63, align 8, !tbaa !27
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.then.62
  store i32 3, i32* %components, align 4, !tbaa !25
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 9
  store i32 2, i32* %in_color_space, align 4, !tbaa !30
  %59 = load i32, i32* %subtype, align 4, !tbaa !25
  switch i32 %59, label %sw.default.135 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.86
    i32 3, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %if.end.64
  %60 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pixel_size65 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %60, i32 0, i32 7
  %61 = load i32, i32* %pixel_size65, align 4, !tbaa !26
  %cmp66 = icmp eq i32 %61, 1
  br i1 %cmp66, label %land.lhs.true, label %if.else.71

land.lhs.true:                                    ; preds = %sw.bb
  %62 = load i32, i32* %cmaptype, align 4, !tbaa !25
  %cmp68 = icmp eq i32 %62, 1
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %land.lhs.true
  %63 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %get_pixel_rows = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %63, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8, !tbaa !31
  br label %if.end.76

if.else.71:                                       ; preds = %land.lhs.true, %sw.bb
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8, !tbaa !20
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 5
  store i32 1033, i32* %msg_code73, align 4, !tbaa !21
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err74 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8, !tbaa !20
  %error_exit75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 0
  %68 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit75, align 8, !tbaa !23
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %70 = bitcast %struct.jpeg_compress_struct* %69 to %struct.jpeg_common_struct*
  call void %68(%struct.jpeg_common_struct* %70)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.71, %if.then.70
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err77, align 8, !tbaa !20
  %msg_code78 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 5
  store i32 1037, i32* %msg_code78, align 4, !tbaa !21
  %73 = load i32, i32* %width, align 4, !tbaa !25
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8, !tbaa !20
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx80 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %73, i32* %arrayidx80, align 4, !tbaa !25
  %76 = load i32, i32* %height, align 4, !tbaa !25
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8, !tbaa !20
  %msg_parm82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 6
  %i83 = bitcast %union.anon* %msg_parm82 to [8 x i32]*
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* %i83, i32 0, i64 1
  store i32 %76, i32* %arrayidx84, align 4, !tbaa !25
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err85, align 8, !tbaa !20
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 1
  %81 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !32
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %83 = bitcast %struct.jpeg_compress_struct* %82 to %struct.jpeg_common_struct*
  call void %81(%struct.jpeg_common_struct* %83, i32 1)
  br label %sw.epilog.140

sw.bb.86:                                         ; preds = %if.end.64
  %84 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pixel_size87 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %84, i32 0, i32 7
  %85 = load i32, i32* %pixel_size87, align 4, !tbaa !26
  switch i32 %85, label %sw.default [
    i32 2, label %sw.bb.88
    i32 3, label %sw.bb.90
    i32 4, label %sw.bb.92
  ]

sw.bb.88:                                         ; preds = %sw.bb.86
  %86 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %get_pixel_rows89 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %86, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_16bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows89, align 8, !tbaa !31
  br label %sw.epilog

sw.bb.90:                                         ; preds = %sw.bb.86
  %87 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %get_pixel_rows91 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %87, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows91, align 8, !tbaa !31
  br label %sw.epilog

sw.bb.92:                                         ; preds = %sw.bb.86
  %88 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %get_pixel_rows93 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %88, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows93, align 8, !tbaa !31
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.86
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err94 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err94, align 8, !tbaa !20
  %msg_code95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 5
  store i32 1033, i32* %msg_code95, align 4, !tbaa !21
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 0
  %92 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err96, align 8, !tbaa !20
  %error_exit97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %92, i32 0, i32 0
  %93 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit97, align 8, !tbaa !23
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %95 = bitcast %struct.jpeg_compress_struct* %94 to %struct.jpeg_common_struct*
  call void %93(%struct.jpeg_common_struct* %95)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.92, %sw.bb.90, %sw.bb.88
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %96, i32 0, i32 0
  %97 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err98, align 8, !tbaa !20
  %msg_code99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %97, i32 0, i32 5
  store i32 1035, i32* %msg_code99, align 4, !tbaa !21
  %98 = load i32, i32* %width, align 4, !tbaa !25
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err100, align 8, !tbaa !20
  %msg_parm101 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i32 0, i32 6
  %i102 = bitcast %union.anon* %msg_parm101 to [8 x i32]*
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* %i102, i32 0, i64 0
  store i32 %98, i32* %arrayidx103, align 4, !tbaa !25
  %101 = load i32, i32* %height, align 4, !tbaa !25
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err104 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %102, i32 0, i32 0
  %103 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err104, align 8, !tbaa !20
  %msg_parm105 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %103, i32 0, i32 6
  %i106 = bitcast %union.anon* %msg_parm105 to [8 x i32]*
  %arrayidx107 = getelementptr inbounds [8 x i32], [8 x i32]* %i106, i32 0, i64 1
  store i32 %101, i32* %arrayidx107, align 4, !tbaa !25
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err108 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err108, align 8, !tbaa !20
  %emit_message109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i32 0, i32 1
  %106 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message109, align 8, !tbaa !32
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %108 = bitcast %struct.jpeg_compress_struct* %107 to %struct.jpeg_common_struct*
  call void %106(%struct.jpeg_common_struct* %108, i32 1)
  br label %sw.epilog.140

sw.bb.110:                                        ; preds = %if.end.64
  store i32 1, i32* %components, align 4, !tbaa !25
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space111 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 9
  store i32 1, i32* %in_color_space111, align 4, !tbaa !30
  %110 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pixel_size112 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %110, i32 0, i32 7
  %111 = load i32, i32* %pixel_size112, align 4, !tbaa !26
  %cmp113 = icmp eq i32 %111, 1
  br i1 %cmp113, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %sw.bb.110
  %112 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %get_pixel_rows116 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %112, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows116, align 8, !tbaa !31
  br label %if.end.122

if.else.117:                                      ; preds = %sw.bb.110
  %113 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %113, i32 0, i32 0
  %114 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err118, align 8, !tbaa !20
  %msg_code119 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %114, i32 0, i32 5
  store i32 1033, i32* %msg_code119, align 4, !tbaa !21
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %115, i32 0, i32 0
  %116 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err120, align 8, !tbaa !20
  %error_exit121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %116, i32 0, i32 0
  %117 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit121, align 8, !tbaa !23
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %119 = bitcast %struct.jpeg_compress_struct* %118 to %struct.jpeg_common_struct*
  call void %117(%struct.jpeg_common_struct* %119)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.117, %if.then.115
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err123 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 0
  %121 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err123, align 8, !tbaa !20
  %msg_code124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %121, i32 0, i32 5
  store i32 1036, i32* %msg_code124, align 4, !tbaa !21
  %122 = load i32, i32* %width, align 4, !tbaa !25
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err125 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 0
  %124 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err125, align 8, !tbaa !20
  %msg_parm126 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %124, i32 0, i32 6
  %i127 = bitcast %union.anon* %msg_parm126 to [8 x i32]*
  %arrayidx128 = getelementptr inbounds [8 x i32], [8 x i32]* %i127, i32 0, i64 0
  store i32 %122, i32* %arrayidx128, align 4, !tbaa !25
  %125 = load i32, i32* %height, align 4, !tbaa !25
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %126, i32 0, i32 0
  %127 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err129, align 8, !tbaa !20
  %msg_parm130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %127, i32 0, i32 6
  %i131 = bitcast %union.anon* %msg_parm130 to [8 x i32]*
  %arrayidx132 = getelementptr inbounds [8 x i32], [8 x i32]* %i131, i32 0, i64 1
  store i32 %125, i32* %arrayidx132, align 4, !tbaa !25
  %128 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err133 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %128, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err133, align 8, !tbaa !20
  %emit_message134 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 1
  %130 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message134, align 8, !tbaa !32
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %132 = bitcast %struct.jpeg_compress_struct* %131 to %struct.jpeg_common_struct*
  call void %130(%struct.jpeg_common_struct* %132, i32 1)
  br label %sw.epilog.140

sw.default.135:                                   ; preds = %if.end.64
  %133 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %133, i32 0, i32 0
  %134 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err136, align 8, !tbaa !20
  %msg_code137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %134, i32 0, i32 5
  store i32 1033, i32* %msg_code137, align 4, !tbaa !21
  %135 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %135, i32 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err138, align 8, !tbaa !20
  %error_exit139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i32 0, i32 0
  %137 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit139, align 8, !tbaa !23
  %138 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %139 = bitcast %struct.jpeg_compress_struct* %138 to %struct.jpeg_common_struct*
  call void %137(%struct.jpeg_common_struct* %139)
  br label %sw.epilog.140

sw.epilog.140:                                    ; preds = %sw.default.135, %if.end.122, %sw.epilog, %if.end.76
  %140 = load i32, i32* %is_bottom_up, align 4, !tbaa !25
  %tobool = icmp ne i32 %140, 0
  br i1 %tobool, label %if.then.141, label %if.else.152

if.then.141:                                      ; preds = %sw.epilog.140
  %141 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %141, i32 0, i32 1
  %142 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %142, i32 0, i32 4
  %143 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8, !tbaa !33
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %145 = bitcast %struct.jpeg_compress_struct* %144 to %struct.jpeg_common_struct*
  %146 = load i32, i32* %width, align 4, !tbaa !25
  %147 = load i32, i32* %components, align 4, !tbaa !25
  %mul = mul i32 %146, %147
  %148 = load i32, i32* %height, align 4, !tbaa !25
  %call142 = call %struct.jvirt_sarray_control* %143(%struct.jpeg_common_struct* %145, i32 1, i32 0, i32 %mul, i32 %148, i32 1)
  %149 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %149, i32 0, i32 3
  store %struct.jvirt_sarray_control* %call142, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !34
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %150, i32 0, i32 2
  %151 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !35
  %cmp143 = icmp ne %struct.jpeg_progress_mgr* %151, null
  br i1 %cmp143, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %if.then.141
  %152 = bitcast %struct.cdjpeg_progress_mgr** %progress146 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %152) #3
  %153 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress147 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %153, i32 0, i32 2
  %154 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress147, align 8, !tbaa !35
  %155 = bitcast %struct.jpeg_progress_mgr* %154 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %155, %struct.cdjpeg_progress_mgr** %progress146, align 8, !tbaa !2
  %156 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress146, align 8, !tbaa !2
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %156, i32 0, i32 2
  %157 = load i32, i32* %total_extra_passes, align 4, !tbaa !36
  %inc = add nsw i32 %157, 1
  store i32 %inc, i32* %total_extra_passes, align 4, !tbaa !36
  %158 = bitcast %struct.cdjpeg_progress_mgr** %progress146 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #3
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %if.then.141
  %159 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub149 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %159, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub149, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4, !tbaa !39
  %160 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub150 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %160, i32 0, i32 0
  %get_pixel_rows151 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub150, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @preload_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows151, align 8, !tbaa !40
  br label %if.end.163

if.else.152:                                      ; preds = %sw.epilog.140
  %161 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %whole_image153 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %161, i32 0, i32 3
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %whole_image153, align 8, !tbaa !34
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem154 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %162, i32 0, i32 1
  %163 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem154, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %163, i32 0, i32 2
  %164 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !41
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %166 = bitcast %struct.jpeg_compress_struct* %165 to %struct.jpeg_common_struct*
  %167 = load i32, i32* %width, align 4, !tbaa !25
  %168 = load i32, i32* %components, align 4, !tbaa !25
  %mul155 = mul i32 %167, %168
  %call156 = call i8** %164(%struct.jpeg_common_struct* %166, i32 1, i32 %mul155, i32 1)
  %169 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub157 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %169, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub157, i32 0, i32 4
  store i8** %call156, i8*** %buffer, align 8, !tbaa !42
  %170 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub158 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %170, i32 0, i32 0
  %buffer_height159 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub158, i32 0, i32 5
  store i32 1, i32* %buffer_height159, align 4, !tbaa !39
  %171 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %get_pixel_rows160 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %171, i32 0, i32 10
  %172 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows160, align 8, !tbaa !31
  %173 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub161 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %173, i32 0, i32 0
  %get_pixel_rows162 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub161, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* %172, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows162, align 8, !tbaa !40
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.152, %if.end.148
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.163
  %174 = load i32, i32* %idlen, align 4, !tbaa !25
  %dec = add nsw i32 %174, -1
  store i32 %dec, i32* %idlen, align 4, !tbaa !25
  %tobool164 = icmp ne i32 %174, 0
  br i1 %tobool164, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %175 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %call165 = call i32 @read_byte(%struct._tga_source_struct* %175)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %176 = load i32, i32* %maplen, align 4, !tbaa !25
  %cmp166 = icmp ugt i32 %176, 0
  br i1 %cmp166, label %if.then.168, label %if.else.191

if.then.168:                                      ; preds = %while.end
  %177 = load i32, i32* %maplen, align 4, !tbaa !25
  %cmp169 = icmp ugt i32 %177, 256
  br i1 %cmp169, label %if.then.180, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %if.then.168
  %arrayidx172 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 3
  %178 = load i8, i8* %arrayidx172, align 1, !tbaa !24
  %conv173 = zext i8 %178 to i32
  %arrayidx174 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 4
  %179 = load i8, i8* %arrayidx174, align 1, !tbaa !24
  %conv175 = zext i8 %179 to i32
  %shl176 = shl i32 %conv175, 8
  %add177 = add i32 %conv173, %shl176
  %cmp178 = icmp ne i32 %add177, 0
  br i1 %cmp178, label %if.then.180, label %if.end.185

if.then.180:                                      ; preds = %lor.lhs.false.171, %if.then.168
  %180 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err181 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %180, i32 0, i32 0
  %181 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err181, align 8, !tbaa !20
  %msg_code182 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %181, i32 0, i32 5
  store i32 1032, i32* %msg_code182, align 4, !tbaa !21
  %182 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err183 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %182, i32 0, i32 0
  %183 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err183, align 8, !tbaa !20
  %error_exit184 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %183, i32 0, i32 0
  %184 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit184, align 8, !tbaa !23
  %185 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %186 = bitcast %struct.jpeg_compress_struct* %185 to %struct.jpeg_common_struct*
  call void %184(%struct.jpeg_common_struct* %186)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.180, %lor.lhs.false.171
  %187 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem186 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %187, i32 0, i32 1
  %188 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem186, align 8, !tbaa !6
  %alloc_sarray187 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %188, i32 0, i32 2
  %189 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray187, align 8, !tbaa !41
  %190 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %191 = bitcast %struct.jpeg_compress_struct* %190 to %struct.jpeg_common_struct*
  %192 = load i32, i32* %maplen, align 4, !tbaa !25
  %call188 = call i8** %189(%struct.jpeg_common_struct* %191, i32 1, i32 %192, i32 3)
  %193 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %193, i32 0, i32 2
  store i8** %call188, i8*** %colormap, align 8, !tbaa !43
  %194 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %195 = load i32, i32* %maplen, align 4, !tbaa !25
  %arrayidx189 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 7
  %196 = load i8, i8* %arrayidx189, align 1, !tbaa !24
  %conv190 = zext i8 %196 to i32
  call void @read_colormap(%struct._tga_source_struct* %194, i32 %195, i32 %conv190)
  br label %if.end.200

if.else.191:                                      ; preds = %while.end
  %197 = load i32, i32* %cmaptype, align 4, !tbaa !25
  %tobool192 = icmp ne i32 %197, 0
  br i1 %tobool192, label %if.then.193, label %if.end.198

if.then.193:                                      ; preds = %if.else.191
  %198 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err194 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %198, i32 0, i32 0
  %199 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err194, align 8, !tbaa !20
  %msg_code195 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %199, i32 0, i32 5
  store i32 1033, i32* %msg_code195, align 4, !tbaa !21
  %200 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err196 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %200, i32 0, i32 0
  %201 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err196, align 8, !tbaa !20
  %error_exit197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %201, i32 0, i32 0
  %202 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit197, align 8, !tbaa !23
  %203 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %204 = bitcast %struct.jpeg_compress_struct* %203 to %struct.jpeg_common_struct*
  call void %202(%struct.jpeg_common_struct* %204)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.193, %if.else.191
  %205 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %colormap199 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %205, i32 0, i32 2
  store i8** null, i8*** %colormap199, align 8, !tbaa !43
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.198, %if.end.185
  %206 = load i32, i32* %components, align 4, !tbaa !25
  %207 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %207, i32 0, i32 8
  store i32 %206, i32* %input_components, align 4, !tbaa !44
  %208 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %208, i32 0, i32 11
  store i32 8, i32* %data_precision, align 4, !tbaa !45
  %209 = load i32, i32* %width, align 4, !tbaa !25
  %210 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %210, i32 0, i32 6
  store i32 %209, i32* %image_width, align 4, !tbaa !46
  %211 = load i32, i32* %height, align 4, !tbaa !25
  %212 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %212, i32 0, i32 7
  store i32 %211, i32* %image_height, align 4, !tbaa !47
  %213 = bitcast i32* %is_bottom_up to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #3
  %214 = bitcast i32* %maplen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #3
  %215 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #3
  %216 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #3
  %217 = bitcast i32* %components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #3
  %218 = bitcast i32* %interlace_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #3
  %219 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #3
  %220 = bitcast i32* %subtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #3
  %221 = bitcast i32* %cmaptype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #3
  %222 = bitcast i32* %idlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #3
  %223 = bitcast [18 x i8]* %targaheader to i8*
  call void @llvm.lifetime.end(i64 18, i8* %223) #3
  %224 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_tga(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
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
define internal void @read_rle_pixel(%struct._tga_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct._tga_source_struct*, align 8
  %infile = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._tga_source_struct* %sinfo, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %2 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !19
  store %struct.__sFILE* %2, %struct.__sFILE** %infile, align 8, !tbaa !2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %dup_pixel_count = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %4, i32 0, i32 9
  %5 = load i32, i32* %dup_pixel_count, align 4, !tbaa !28
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %dup_pixel_count1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %6, i32 0, i32 9
  %7 = load i32, i32* %dup_pixel_count1, align 4, !tbaa !28
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %dup_pixel_count1, align 4, !tbaa !28
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %block_count = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %8, i32 0, i32 8
  %9 = load i32, i32* %block_count, align 4, !tbaa !29
  %dec2 = add nsw i32 %9, -1
  store i32 %dec2, i32* %block_count, align 4, !tbaa !29
  %cmp3 = icmp slt i32 %dec2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call = call i32 @read_byte(%struct._tga_source_struct* %10)
  store i32 %call, i32* %i, align 4, !tbaa !25
  %11 = load i32, i32* %i, align 4, !tbaa !25
  %and = and i32 %11, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.4
  %12 = load i32, i32* %i, align 4, !tbaa !25
  %and6 = and i32 %12, 127
  %13 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %dup_pixel_count7 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %13, i32 0, i32 9
  store i32 %and6, i32* %dup_pixel_count7, align 4, !tbaa !28
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %block_count8 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %14, i32 0, i32 8
  store i32 0, i32* %block_count8, align 4, !tbaa !29
  br label %if.end.11

if.else:                                          ; preds = %if.then.4
  %15 = load i32, i32* %i, align 4, !tbaa !25
  %and9 = and i32 %15, 127
  %16 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %block_count10 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %16, i32 0, i32 8
  store i32 %and9, i32* %block_count10, align 4, !tbaa !29
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %17 = load i32, i32* %i, align 4, !tbaa !25
  %18 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %18, i32 0, i32 7
  %19 = load i32, i32* %pixel_size, align 4, !tbaa !26
  %cmp13 = icmp slt i32 %17, %19
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call14 = call i32 @getc(%struct.__sFILE* %20)
  %conv = trunc i32 %call14 to i8
  %21 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %22, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #3
  %25 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #3
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

; Function Attrs: nounwind ssp uwtable
define internal void @read_non_rle_pixel(%struct._tga_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct._tga_source_struct*, align 8
  %infile = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  store %struct._tga_source_struct* %sinfo, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %2 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !19
  store %struct.__sFILE* %2, %struct.__sFILE** %infile, align 8, !tbaa !2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !25
  %5 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %5, i32 0, i32 7
  %6 = load i32, i32* %pixel_size, align 4, !tbaa !26
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call = call i32 @getc(%struct.__sFILE* %7)
  %conv = trunc i32 %call to i8
  %8 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #3
  %12 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_8bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %t = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %colormap = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %2, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %colormap1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %7, i32 0, i32 2
  %8 = load i8**, i8*** %colormap1, align 8, !tbaa !43
  store i8** %8, i8*** %colormap, align 8, !tbaa !2
  %9 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %9, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %10 = load i8**, i8*** %buffer, align 8, !tbaa !42
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %11, i8** %ptr, align 8, !tbaa !2
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 6
  %13 = load i32, i32* %image_width, align 4, !tbaa !46
  store i32 %13, i32* %col, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %col, align 4, !tbaa !25
  %cmp = icmp ugt i32 %14, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %15, i32 0, i32 5
  %16 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %read_pixel, align 8, !tbaa !27
  %17 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  call void %16(%struct._tga_source_struct* %17)
  %18 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %18, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 0
  %19 = load i8, i8* %arrayidx2, align 1, !tbaa !24
  %conv = zext i8 %19 to i32
  store i32 %conv, i32* %t, align 4, !tbaa !25
  %20 = load i32, i32* %t, align 4, !tbaa !25
  %idxprom = sext i32 %20 to i64
  %21 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx3, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx4, align 1, !tbaa !24
  %24 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !2
  store i8 %23, i8* %24, align 1, !tbaa !24
  %25 = load i32, i32* %t, align 4, !tbaa !25
  %idxprom5 = sext i32 %25 to i64
  %26 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8*, i8** %26, i64 1
  %27 = load i8*, i8** %arrayidx6, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8, i8* %27, i64 %idxprom5
  %28 = load i8, i8* %arrayidx7, align 1, !tbaa !24
  %29 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr8 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr8, i8** %ptr, align 8, !tbaa !2
  store i8 %28, i8* %29, align 1, !tbaa !24
  %30 = load i32, i32* %t, align 4, !tbaa !25
  %idxprom9 = sext i32 %30 to i64
  %31 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8*, i8** %31, i64 2
  %32 = load i8*, i8** %arrayidx10, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8, i8* %32, i64 %idxprom9
  %33 = load i8, i8* %arrayidx11, align 1, !tbaa !24
  %34 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr12 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr12, i8** %ptr, align 8, !tbaa !2
  store i8 %33, i8* %34, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %col, align 4, !tbaa !25
  %dec = add i32 %35, -1
  store i32 %dec, i32* %col, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  %37 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #3
  %38 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #3
  %39 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #3
  %40 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_16bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %t = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %2, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %6, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %7 = load i8**, i8*** %buffer, align 8, !tbaa !42
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %8, i8** %ptr, align 8, !tbaa !2
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 6
  %10 = load i32, i32* %image_width, align 4, !tbaa !46
  store i32 %10, i32* %col, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %col, align 4, !tbaa !25
  %cmp = icmp ugt i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %12, i32 0, i32 5
  %13 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %read_pixel, align 8, !tbaa !27
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  call void %13(%struct._tga_source_struct* %14)
  %15 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %15, i32 0, i32 6
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 0
  %16 = load i8, i8* %arrayidx1, align 1, !tbaa !24
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %t, align 4, !tbaa !25
  %17 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %tga_pixel2 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %17, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel2, i32 0, i64 1
  %18 = load i8, i8* %arrayidx3, align 1, !tbaa !24
  %conv4 = zext i8 %18 to i32
  %shl = shl i32 %conv4, 8
  %19 = load i32, i32* %t, align 4, !tbaa !25
  %add = add nsw i32 %19, %shl
  store i32 %add, i32* %t, align 4, !tbaa !25
  %20 = load i32, i32* %t, align 4, !tbaa !25
  %and = and i32 %20, 31
  %idxprom = sext i32 %and to i64
  %arrayidx5 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i32 0, i64 %idxprom
  %21 = load i8, i8* %arrayidx5, align 1, !tbaa !24
  %22 = load i8*, i8** %ptr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 %21, i8* %arrayidx6, align 1, !tbaa !24
  %23 = load i32, i32* %t, align 4, !tbaa !25
  %shr = ashr i32 %23, 5
  store i32 %shr, i32* %t, align 4, !tbaa !25
  %24 = load i32, i32* %t, align 4, !tbaa !25
  %and7 = and i32 %24, 31
  %idxprom8 = sext i32 %and7 to i64
  %arrayidx9 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i32 0, i64 %idxprom8
  %25 = load i8, i8* %arrayidx9, align 1, !tbaa !24
  %26 = load i8*, i8** %ptr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %arrayidx10, align 1, !tbaa !24
  %27 = load i32, i32* %t, align 4, !tbaa !25
  %shr11 = ashr i32 %27, 5
  store i32 %shr11, i32* %t, align 4, !tbaa !25
  %28 = load i32, i32* %t, align 4, !tbaa !25
  %and12 = and i32 %28, 31
  %idxprom13 = sext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i32 0, i64 %idxprom13
  %29 = load i8, i8* %arrayidx14, align 1, !tbaa !24
  %30 = load i8*, i8** %ptr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %29, i8* %arrayidx15, align 1, !tbaa !24
  %31 = load i8*, i8** %ptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 3
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %col, align 4, !tbaa !25
  %dec = add i32 %32, -1
  store i32 %dec, i32* %col, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %34 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #3
  %36 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_24bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %2, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %5, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %6 = load i8**, i8*** %buffer, align 8, !tbaa !42
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %7, i8** %ptr, align 8, !tbaa !2
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 6
  %9 = load i32, i32* %image_width, align 4, !tbaa !46
  store i32 %9, i32* %col, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %col, align 4, !tbaa !25
  %cmp = icmp ugt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 5
  %12 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %read_pixel, align 8, !tbaa !27
  %13 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  call void %12(%struct._tga_source_struct* %13)
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %14, i32 0, i32 6
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 2
  %15 = load i8, i8* %arrayidx1, align 1, !tbaa !24
  %conv = zext i8 %15 to i32
  %conv2 = trunc i32 %conv to i8
  %16 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !2
  store i8 %conv2, i8* %16, align 1, !tbaa !24
  %17 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %tga_pixel3 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %17, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel3, i32 0, i64 1
  %18 = load i8, i8* %arrayidx4, align 1, !tbaa !24
  %conv5 = zext i8 %18 to i32
  %conv6 = trunc i32 %conv5 to i8
  %19 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr7 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr7, i8** %ptr, align 8, !tbaa !2
  store i8 %conv6, i8* %19, align 1, !tbaa !24
  %20 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %tga_pixel8 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %20, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel8, i32 0, i64 0
  %21 = load i8, i8* %arrayidx9, align 1, !tbaa !24
  %conv10 = zext i8 %21 to i32
  %conv11 = trunc i32 %conv10 to i8
  %22 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr12 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr12, i8** %ptr, align 8, !tbaa !2
  store i8 %conv11, i8* %22, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %col, align 4, !tbaa !25
  %dec = add i32 %23, -1
  store i32 %dec, i32* %col, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #3
  %25 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #3
  %26 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_8bit_gray_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %2, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %5, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %6 = load i8**, i8*** %buffer, align 8, !tbaa !42
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %7, i8** %ptr, align 8, !tbaa !2
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 6
  %9 = load i32, i32* %image_width, align 4, !tbaa !46
  store i32 %9, i32* %col, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %col, align 4, !tbaa !25
  %cmp = icmp ugt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 5
  %12 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %read_pixel, align 8, !tbaa !27
  %13 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  call void %12(%struct._tga_source_struct* %13)
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %14, i32 0, i32 6
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 0
  %15 = load i8, i8* %arrayidx1, align 1, !tbaa !24
  %conv = zext i8 %15 to i32
  %conv2 = trunc i32 %conv to i8
  %16 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !2
  store i8 %conv2, i8* %16, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %col, align 4, !tbaa !25
  %dec = add i32 %17, -1
  store i32 %dec, i32* %col, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #3
  %19 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #3
  %20 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @preload_image(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %row = alloca i32, align 4
  %progress = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %2, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast %struct.cdjpeg_progress_mgr** %progress to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 2
  %6 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress1, align 8, !tbaa !35
  %7 = bitcast %struct.jpeg_progress_mgr* %6 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %7, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  store i32 0, i32* %row, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %row, align 4, !tbaa !25
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 7
  %10 = load i32, i32* %image_height, align 4, !tbaa !47
  %cmp = icmp ult i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %cmp2 = icmp ne %struct.cdjpeg_progress_mgr* %11, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %row, align 4, !tbaa !25
  %conv = zext i32 %12 to i64
  %13 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %13, i32 0, i32 0
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8, !tbaa !48
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 7
  %15 = load i32, i32* %image_height3, align 4, !tbaa !47
  %conv4 = zext i32 %15 to i64
  %16 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %16, i32 0, i32 0
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub5, i32 0, i32 2
  store i64 %conv4, i64* %pass_limit, align 8, !tbaa !49
  %17 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %pub6 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %17, i32 0, i32 0
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub6, i32 0, i32 0
  %progress_monitor7 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor7, align 8, !tbaa !50
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 1
  %22 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %22, i32 0, i32 7
  %23 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !51
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = bitcast %struct.jpeg_compress_struct* %24 to %struct.jpeg_common_struct*
  %26 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %26, i32 0, i32 3
  %27 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !34
  %28 = load i32, i32* %row, align 4, !tbaa !25
  %call = call i8** %23(%struct.jpeg_common_struct* %25, %struct.jvirt_sarray_control* %27, i32 %28, i32 1, i32 1)
  %29 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub8 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %29, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub8, i32 0, i32 4
  store i8** %call, i8*** %buffer, align 8, !tbaa !42
  %30 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %get_pixel_rows = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %30, i32 0, i32 10
  %31 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8, !tbaa !31
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %33 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call9 = call i32 %31(%struct.jpeg_compress_struct* %32, %struct.cjpeg_source_struct* %33)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %row, align 4, !tbaa !25
  %inc = add i32 %34, 1
  store i32 %inc, i32* %row, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %cmp10 = icmp ne %struct.cdjpeg_progress_mgr* %35, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.end
  %36 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %36, i32 0, i32 1
  %37 = load i32, i32* %completed_extra_passes, align 4, !tbaa !52
  %inc13 = add nsw i32 %37, 1
  store i32 %inc13, i32* %completed_extra_passes, align 4, !tbaa !52
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %for.end
  %38 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub15 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %38, i32 0, i32 0
  %get_pixel_rows16 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub15, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_memory_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows16, align 8, !tbaa !40
  %39 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %current_row = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %39, i32 0, i32 4
  store i32 0, i32* %current_row, align 4, !tbaa !53
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %41 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call17 = call i32 @get_memory_row(%struct.jpeg_compress_struct* %40, %struct.cjpeg_source_struct* %41)
  %42 = bitcast %struct.cdjpeg_progress_mgr** %progress to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #3
  %43 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #3
  %44 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #3
  ret i32 %call17
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_byte(%struct._tga_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct._tga_source_struct*, align 8
  %infile = alloca %struct.__sFILE*, align 8
  %c = alloca i32, align 4
  store %struct._tga_source_struct* %sinfo, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %2 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !19
  store %struct.__sFILE* %2, %struct.__sFILE** %infile, align 8, !tbaa !2
  %3 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call = call i32 @getc(%struct.__sFILE* %4)
  store i32 %call, i32* %c, align 4, !tbaa !25
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !14
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !21
  %8 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !14
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %12 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo3 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %12, i32 0, i32 1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !14
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %c, align 4, !tbaa !25
  %16 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #3
  %17 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #3
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define internal void @read_colormap(%struct._tga_source_struct* %sinfo, i32 %cmaplen, i32 %mapentrysize) #0 {
entry:
  %sinfo.addr = alloca %struct._tga_source_struct*, align 8
  %cmaplen.addr = alloca i32, align 4
  %mapentrysize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._tga_source_struct* %sinfo, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  store i32 %cmaplen, i32* %cmaplen.addr, align 4, !tbaa !25
  store i32 %mapentrysize, i32* %mapentrysize.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i32, i32* %mapentrysize.addr, align 4, !tbaa !25
  %cmp = icmp ne i32 %1, 24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !14
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 1032, i32* %msg_code, align 4, !tbaa !21
  %5 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !14
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %9 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo3 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %9, i32 0, i32 1
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !14
  %11 = bitcast %struct.jpeg_compress_struct* %10 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !25
  %13 = load i32, i32* %cmaplen.addr, align 4, !tbaa !25
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call = call i32 @read_byte(%struct._tga_source_struct* %14)
  %conv = trunc i32 %call to i8
  %15 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %16, i32 0, i32 2
  %17 = load i8**, i8*** %colormap, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 2
  %18 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 %conv, i8* %arrayidx5, align 1, !tbaa !24
  %19 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call6 = call i32 @read_byte(%struct._tga_source_struct* %19)
  %conv7 = trunc i32 %call6 to i8
  %20 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %colormap9 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %21, i32 0, i32 2
  %22 = load i8**, i8*** %colormap9, align 8, !tbaa !43
  %arrayidx10 = getelementptr inbounds i8*, i8** %22, i64 1
  %23 = load i8*, i8** %arrayidx10, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx11, align 1, !tbaa !24
  %24 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call12 = call i32 @read_byte(%struct._tga_source_struct* %24)
  %conv13 = trunc i32 %call12 to i8
  %25 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom14 = sext i32 %25 to i64
  %26 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8, !tbaa !2
  %colormap15 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %26, i32 0, i32 2
  %27 = load i8**, i8*** %colormap15, align 8, !tbaa !43
  %arrayidx16 = getelementptr inbounds i8*, i8** %27, i64 0
  %28 = load i8*, i8** %arrayidx16, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i8, i8* %28, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx17, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #3
  ret void
}

declare i32 @getc(%struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_memory_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %source_row = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %2, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i32* %source_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 7
  %5 = load i32, i32* %image_height, align 4, !tbaa !47
  %6 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %current_row = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %current_row, align 4, !tbaa !53
  %sub = sub i32 %5, %7
  %sub1 = sub i32 %sub, 1
  store i32 %sub1, i32* %source_row, align 4, !tbaa !25
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %9, i32 0, i32 7
  %10 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !51
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  %13 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %13, i32 0, i32 3
  %14 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !34
  %15 = load i32, i32* %source_row, align 4, !tbaa !25
  %call = call i8** %10(%struct.jpeg_common_struct* %12, %struct.jvirt_sarray_control* %14, i32 %15, i32 1, i32 0)
  %16 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %16, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  store i8** %call, i8*** %buffer, align 8, !tbaa !42
  %17 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8, !tbaa !2
  %current_row2 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %17, i32 0, i32 4
  %18 = load i32, i32* %current_row2, align 4, !tbaa !53
  %inc = add i32 %18, 1
  store i32 %inc, i32* %current_row2, align 4, !tbaa !53
  %19 = bitcast i32* %source_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #3
  %20 = bitcast %struct._tga_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #3
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
!15 = !{!"_tga_source_struct", !16, i64 0, !3, i64 48, !3, i64 56, !3, i64 64, !8, i64 72, !3, i64 80, !4, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !3, i64 104}
!16 = !{!"cjpeg_source_struct", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40}
!17 = !{!15, !3, i64 0}
!18 = !{!15, !3, i64 16}
!19 = !{!15, !3, i64 24}
!20 = !{!7, !3, i64 0}
!21 = !{!22, !8, i64 40}
!22 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!23 = !{!22, !3, i64 0}
!24 = !{!4, !4, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!15, !8, i64 92}
!27 = !{!15, !3, i64 80}
!28 = !{!15, !8, i64 100}
!29 = !{!15, !8, i64 96}
!30 = !{!7, !4, i64 52}
!31 = !{!15, !3, i64 104}
!32 = !{!22, !3, i64 8}
!33 = !{!12, !3, i64 32}
!34 = !{!15, !3, i64 64}
!35 = !{!7, !3, i64 16}
!36 = !{!37, !8, i64 36}
!37 = !{!"cdjpeg_progress_mgr", !38, i64 0, !8, i64 32, !8, i64 36, !8, i64 40}
!38 = !{!"jpeg_progress_mgr", !3, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28}
!39 = !{!15, !8, i64 40}
!40 = !{!15, !3, i64 8}
!41 = !{!12, !3, i64 16}
!42 = !{!15, !3, i64 32}
!43 = !{!15, !3, i64 56}
!44 = !{!7, !8, i64 48}
!45 = !{!7, !8, i64 64}
!46 = !{!7, !8, i64 40}
!47 = !{!7, !8, i64 44}
!48 = !{!37, !13, i64 8}
!49 = !{!37, !13, i64 16}
!50 = !{!37, !3, i64 0}
!51 = !{!12, !3, i64 56}
!52 = !{!37, !8, i64 32}
!53 = !{!15, !8, i64 72}
