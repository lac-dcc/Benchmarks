; ModuleID = 'rdgif.c'
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
%struct.gif_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, [260 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16*, i8*, i8*, i8*, i32, %struct.jvirt_sarray_control*, i32, i32, i32, i32 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define %struct.cjpeg_source_struct* @jinit_read_gif(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 440)
  %6 = bitcast i8* %call to %struct.gif_source_struct*
  store %struct.gif_source_struct* %6, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 1
  store %struct.jpeg_compress_struct* %7, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !14
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_gif, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %start_input, align 8, !tbaa !17
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %10, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_gif, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %finish_input, align 8, !tbaa !18
  %11 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %12 = bitcast %struct.gif_source_struct* %11 to %struct.cjpeg_source_struct*
  %13 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #3
  ret %struct.cjpeg_source_struct* %12
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_gif(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  %hdrbuf = alloca [10 x i8], align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %colormaplen = alloca i32, align 4
  %aspectRatio = alloca i32, align 4
  %c = alloca i32, align 4
  %_mp = alloca i32*, align 8
  %progress215 = alloca %struct.cdjpeg_progress_mgr*, align 8
  %_mp228 = alloca i32*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.gif_source_struct*
  store %struct.gif_source_struct* %2, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast [10 x i8]* %hdrbuf to i8*
  call void @llvm.lifetime.start(i64 10, i8* %3) #3
  %4 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %colormaplen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %aspectRatio to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 2
  %11 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !19
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  %call = call i8** %11(%struct.jpeg_common_struct* %13, i32 1, i32 256, i32 3)
  %14 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %14, i32 0, i32 2
  store i8** %call, i8*** %colormap, align 8, !tbaa !20
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i32 0
  %15 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %15, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %16 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !21
  %call1 = call i64 @fread(i8* %arraydecay, i64 1, i64 6, %struct.__sFILE* %16)
  %cmp = icmp eq i64 %call1, 6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 1016, i32* %msg_code, align 4, !tbaa !23
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 0
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !26
  %conv = sext i8 %24 to i32
  %cmp3 = icmp ne i32 %conv, 71
  br i1 %cmp3, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 1
  %25 = load i8, i8* %arrayidx5, align 1, !tbaa !26
  %conv6 = sext i8 %25 to i32
  %cmp7 = icmp ne i32 %conv6, 73
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 2
  %26 = load i8, i8* %arrayidx10, align 1, !tbaa !26
  %conv11 = sext i8 %26 to i32
  %cmp12 = icmp ne i32 %conv11, 70
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %if.end
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !22
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 1016, i32* %msg_code16, align 4, !tbaa !23
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !22
  %error_exit18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit18, align 8, !tbaa !25
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %33 = bitcast %struct.jpeg_compress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* %33)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %lor.lhs.false.9
  %arrayidx20 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 3
  %34 = load i8, i8* %arrayidx20, align 1, !tbaa !26
  %conv21 = sext i8 %34 to i32
  %cmp22 = icmp ne i32 %conv21, 56
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.19
  %arrayidx25 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %35 = load i8, i8* %arrayidx25, align 1, !tbaa !26
  %conv26 = sext i8 %35 to i32
  %cmp27 = icmp ne i32 %conv26, 55
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.24
  %arrayidx30 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 5
  %36 = load i8, i8* %arrayidx30, align 1, !tbaa !26
  %conv31 = sext i8 %36 to i32
  %cmp32 = icmp ne i32 %conv31, 97
  br i1 %cmp32, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %lor.lhs.false.29, %lor.lhs.false.24, %if.end.19
  %arrayidx34 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 3
  %37 = load i8, i8* %arrayidx34, align 1, !tbaa !26
  %conv35 = sext i8 %37 to i32
  %cmp36 = icmp ne i32 %conv35, 56
  br i1 %cmp36, label %if.then.48, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %land.lhs.true
  %arrayidx39 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %38 = load i8, i8* %arrayidx39, align 1, !tbaa !26
  %conv40 = sext i8 %38 to i32
  %cmp41 = icmp ne i32 %conv40, 57
  br i1 %cmp41, label %if.then.48, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.38
  %arrayidx44 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 5
  %39 = load i8, i8* %arrayidx44, align 1, !tbaa !26
  %conv45 = sext i8 %39 to i32
  %cmp46 = icmp ne i32 %conv45, 97
  br i1 %cmp46, label %if.then.48, label %if.end.63

if.then.48:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.38, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.48
  %40 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #3
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err49, align 8, !tbaa !22
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay50 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i32 0
  store i32* %arraydecay50, i32** %_mp, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 3
  %43 = load i8, i8* %arrayidx51, align 1, !tbaa !26
  %conv52 = sext i8 %43 to i32
  %44 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %conv52, i32* %arrayidx53, align 4, !tbaa !27
  %arrayidx54 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %45 = load i8, i8* %arrayidx54, align 1, !tbaa !26
  %conv55 = sext i8 %45 to i32
  %46 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %conv55, i32* %arrayidx56, align 4, !tbaa !27
  %arrayidx57 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 5
  %47 = load i8, i8* %arrayidx57, align 1, !tbaa !26
  %conv58 = sext i8 %47 to i32
  %48 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx59 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %conv58, i32* %arrayidx59, align 4, !tbaa !27
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8, !tbaa !22
  %msg_code61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 5
  store i32 1018, i32* %msg_code61, align 4, !tbaa !23
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err62, align 8, !tbaa !22
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 1
  %53 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !28
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %55 = bitcast %struct.jpeg_compress_struct* %54 to %struct.jpeg_common_struct*
  call void %53(%struct.jpeg_common_struct* %55, i32 1)
  %56 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.63

if.end.63:                                        ; preds = %do.end, %lor.lhs.false.43, %lor.lhs.false.29
  %arraydecay64 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i32 0
  %57 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub65 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %57, i32 0, i32 0
  %input_file66 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub65, i32 0, i32 3
  %58 = load %struct.__sFILE*, %struct.__sFILE** %input_file66, align 8, !tbaa !21
  %call67 = call i64 @fread(i8* %arraydecay64, i64 1, i64 7, %struct.__sFILE* %58)
  %cmp68 = icmp eq i64 %call67, 7
  br i1 %cmp68, label %if.end.75, label %if.then.70

if.then.70:                                       ; preds = %if.end.63
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8, !tbaa !22
  %msg_code72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 5
  store i32 42, i32* %msg_code72, align 4, !tbaa !23
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err73, align 8, !tbaa !22
  %error_exit74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 0
  %63 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit74, align 8, !tbaa !25
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %65 = bitcast %struct.jpeg_compress_struct* %64 to %struct.jpeg_common_struct*
  call void %63(%struct.jpeg_common_struct* %65)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %if.end.63
  %arrayidx76 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 1
  %66 = load i8, i8* %arrayidx76, align 1, !tbaa !26
  %conv77 = sext i8 %66 to i32
  %and = and i32 %conv77, 255
  %shl = shl i32 %and, 8
  %arrayidx78 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 0
  %67 = load i8, i8* %arrayidx78, align 1, !tbaa !26
  %conv79 = sext i8 %67 to i32
  %and80 = and i32 %conv79, 255
  %or = or i32 %shl, %and80
  store i32 %or, i32* %width, align 4, !tbaa !27
  %arrayidx81 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 3
  %68 = load i8, i8* %arrayidx81, align 1, !tbaa !26
  %conv82 = sext i8 %68 to i32
  %and83 = and i32 %conv82, 255
  %shl84 = shl i32 %and83, 8
  %arrayidx85 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 2
  %69 = load i8, i8* %arrayidx85, align 1, !tbaa !26
  %conv86 = sext i8 %69 to i32
  %and87 = and i32 %conv86, 255
  %or88 = or i32 %shl84, %and87
  store i32 %or88, i32* %height, align 4, !tbaa !27
  %arrayidx89 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %70 = load i8, i8* %arrayidx89, align 1, !tbaa !26
  %conv90 = sext i8 %70 to i32
  %and91 = and i32 %conv90, 7
  %shl92 = shl i32 2, %and91
  store i32 %shl92, i32* %colormaplen, align 4, !tbaa !27
  %arrayidx93 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 6
  %71 = load i8, i8* %arrayidx93, align 1, !tbaa !26
  %conv94 = sext i8 %71 to i32
  %and95 = and i32 %conv94, 255
  store i32 %and95, i32* %aspectRatio, align 4, !tbaa !27
  %72 = load i32, i32* %aspectRatio, align 4, !tbaa !27
  %cmp96 = icmp ne i32 %72, 0
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.106

land.lhs.true.98:                                 ; preds = %if.end.75
  %73 = load i32, i32* %aspectRatio, align 4, !tbaa !27
  %cmp99 = icmp ne i32 %73, 49
  br i1 %cmp99, label %if.then.101, label %if.end.106

if.then.101:                                      ; preds = %land.lhs.true.98
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err102, align 8, !tbaa !22
  %msg_code103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 5
  store i32 1020, i32* %msg_code103, align 4, !tbaa !23
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err104 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err104, align 8, !tbaa !22
  %emit_message105 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 1
  %78 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message105, align 8, !tbaa !28
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %80 = bitcast %struct.jpeg_compress_struct* %79 to %struct.jpeg_common_struct*
  call void %78(%struct.jpeg_common_struct* %80, i32 1)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.101, %land.lhs.true.98, %if.end.75
  %arrayidx107 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %81 = load i8, i8* %arrayidx107, align 1, !tbaa !26
  %conv108 = sext i8 %81 to i32
  %and109 = and i32 %conv108, 128
  %tobool = icmp ne i32 %and109, 0
  br i1 %tobool, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.106
  %82 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %83 = load i32, i32* %colormaplen, align 4, !tbaa !27
  %84 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %colormap111 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %84, i32 0, i32 2
  %85 = load i8**, i8*** %colormap111, align 8, !tbaa !20
  call void @ReadColorMap(%struct.gif_source_struct* %82, i32 %83, i8** %85)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.106
  br label %for.cond

for.cond:                                         ; preds = %if.then.128, %if.then.124, %if.end.112
  %86 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %call113 = call i32 @ReadByte(%struct.gif_source_struct* %86)
  store i32 %call113, i32* %c, align 4, !tbaa !27
  %87 = load i32, i32* %c, align 4, !tbaa !27
  %cmp114 = icmp eq i32 %87, 59
  br i1 %cmp114, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %for.cond
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err117 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err117, align 8, !tbaa !22
  %msg_code118 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 5
  store i32 1015, i32* %msg_code118, align 4, !tbaa !23
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err119, align 8, !tbaa !22
  %error_exit120 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 0
  %92 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit120, align 8, !tbaa !25
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %94 = bitcast %struct.jpeg_compress_struct* %93 to %struct.jpeg_common_struct*
  call void %92(%struct.jpeg_common_struct* %94)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.116, %for.cond
  %95 = load i32, i32* %c, align 4, !tbaa !27
  %cmp122 = icmp eq i32 %95, 33
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.121
  %96 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  call void @DoExtension(%struct.gif_source_struct* %96)
  br label %for.cond

if.end.125:                                       ; preds = %if.end.121
  %97 = load i32, i32* %c, align 4, !tbaa !27
  %cmp126 = icmp ne i32 %97, 44
  br i1 %cmp126, label %if.then.128, label %if.end.137

if.then.128:                                      ; preds = %if.end.125
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 0
  %99 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err129, align 8, !tbaa !22
  %msg_code130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %99, i32 0, i32 5
  store i32 1022, i32* %msg_code130, align 4, !tbaa !23
  %100 = load i32, i32* %c, align 4, !tbaa !27
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err131, align 8, !tbaa !22
  %msg_parm132 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 6
  %i133 = bitcast %union.anon* %msg_parm132 to [8 x i32]*
  %arrayidx134 = getelementptr inbounds [8 x i32], [8 x i32]* %i133, i32 0, i64 0
  store i32 %100, i32* %arrayidx134, align 4, !tbaa !27
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err135 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err135, align 8, !tbaa !22
  %emit_message136 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 1
  %105 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message136, align 8, !tbaa !28
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %107 = bitcast %struct.jpeg_compress_struct* %106 to %struct.jpeg_common_struct*
  call void %105(%struct.jpeg_common_struct* %107, i32 -1)
  br label %for.cond

if.end.137:                                       ; preds = %if.end.125
  %arraydecay138 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i32 0
  %108 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub139 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %108, i32 0, i32 0
  %input_file140 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub139, i32 0, i32 3
  %109 = load %struct.__sFILE*, %struct.__sFILE** %input_file140, align 8, !tbaa !21
  %call141 = call i64 @fread(i8* %arraydecay138, i64 1, i64 9, %struct.__sFILE* %109)
  %cmp142 = icmp eq i64 %call141, 9
  br i1 %cmp142, label %if.end.149, label %if.then.144

if.then.144:                                      ; preds = %if.end.137
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err145 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %110, i32 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err145, align 8, !tbaa !22
  %msg_code146 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i32 0, i32 5
  store i32 42, i32* %msg_code146, align 4, !tbaa !23
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err147 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err147, align 8, !tbaa !22
  %error_exit148 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 0
  %114 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit148, align 8, !tbaa !25
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %116 = bitcast %struct.jpeg_compress_struct* %115 to %struct.jpeg_common_struct*
  call void %114(%struct.jpeg_common_struct* %116)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.144, %if.end.137
  %arrayidx150 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 5
  %117 = load i8, i8* %arrayidx150, align 1, !tbaa !26
  %conv151 = sext i8 %117 to i32
  %and152 = and i32 %conv151, 255
  %shl153 = shl i32 %and152, 8
  %arrayidx154 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %118 = load i8, i8* %arrayidx154, align 1, !tbaa !26
  %conv155 = sext i8 %118 to i32
  %and156 = and i32 %conv155, 255
  %or157 = or i32 %shl153, %and156
  store i32 %or157, i32* %width, align 4, !tbaa !27
  %arrayidx158 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 7
  %119 = load i8, i8* %arrayidx158, align 1, !tbaa !26
  %conv159 = sext i8 %119 to i32
  %and160 = and i32 %conv159, 255
  %shl161 = shl i32 %and160, 8
  %arrayidx162 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 6
  %120 = load i8, i8* %arrayidx162, align 1, !tbaa !26
  %conv163 = sext i8 %120 to i32
  %and164 = and i32 %conv163, 255
  %or165 = or i32 %shl161, %and164
  store i32 %or165, i32* %height, align 4, !tbaa !27
  %arrayidx166 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 8
  %121 = load i8, i8* %arrayidx166, align 1, !tbaa !26
  %conv167 = sext i8 %121 to i32
  %and168 = and i32 %conv167, 64
  %122 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %is_interlaced = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %122, i32 0, i32 21
  store i32 %and168, i32* %is_interlaced, align 4, !tbaa !29
  %arrayidx169 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 8
  %123 = load i8, i8* %arrayidx169, align 1, !tbaa !26
  %conv170 = sext i8 %123 to i32
  %and171 = and i32 %conv170, 128
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.179

if.then.173:                                      ; preds = %if.end.149
  %arrayidx174 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 8
  %124 = load i8, i8* %arrayidx174, align 1, !tbaa !26
  %conv175 = sext i8 %124 to i32
  %and176 = and i32 %conv175, 7
  %shl177 = shl i32 2, %and176
  store i32 %shl177, i32* %colormaplen, align 4, !tbaa !27
  %125 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %126 = load i32, i32* %colormaplen, align 4, !tbaa !27
  %127 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %colormap178 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %127, i32 0, i32 2
  %128 = load i8**, i8*** %colormap178, align 8, !tbaa !20
  call void @ReadColorMap(%struct.gif_source_struct* %125, i32 %126, i8** %128)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.173, %if.end.149
  %129 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %call180 = call i32 @ReadByte(%struct.gif_source_struct* %129)
  %130 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %130, i32 0, i32 8
  store i32 %call180, i32* %input_code_size, align 4, !tbaa !30
  %131 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %input_code_size181 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %131, i32 0, i32 8
  %132 = load i32, i32* %input_code_size181, align 4, !tbaa !30
  %cmp182 = icmp slt i32 %132, 2
  br i1 %cmp182, label %if.then.188, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %if.end.179
  %133 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %input_code_size185 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %133, i32 0, i32 8
  %134 = load i32, i32* %input_code_size185, align 4, !tbaa !30
  %cmp186 = icmp sge i32 %134, 12
  br i1 %cmp186, label %if.then.188, label %if.end.198

if.then.188:                                      ; preds = %lor.lhs.false.184, %if.end.179
  %135 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err189 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %135, i32 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err189, align 8, !tbaa !22
  %msg_code190 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i32 0, i32 5
  store i32 1013, i32* %msg_code190, align 4, !tbaa !23
  %137 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %input_code_size191 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %137, i32 0, i32 8
  %138 = load i32, i32* %input_code_size191, align 4, !tbaa !30
  %139 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err192 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %139, i32 0, i32 0
  %140 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err192, align 8, !tbaa !22
  %msg_parm193 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %140, i32 0, i32 6
  %i194 = bitcast %union.anon* %msg_parm193 to [8 x i32]*
  %arrayidx195 = getelementptr inbounds [8 x i32], [8 x i32]* %i194, i32 0, i64 0
  store i32 %138, i32* %arrayidx195, align 4, !tbaa !27
  %141 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err196 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %141, i32 0, i32 0
  %142 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err196, align 8, !tbaa !22
  %error_exit197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %142, i32 0, i32 0
  %143 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit197, align 8, !tbaa !25
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %145 = bitcast %struct.jpeg_compress_struct* %144 to %struct.jpeg_common_struct*
  call void %143(%struct.jpeg_common_struct* %145)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.188, %lor.lhs.false.184
  br label %for.end

for.end:                                          ; preds = %if.end.198
  %146 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem199 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %146, i32 0, i32 1
  %147 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem199, align 8, !tbaa !6
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %147, i32 0, i32 1
  %148 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !31
  %149 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %150 = bitcast %struct.jpeg_compress_struct* %149 to %struct.jpeg_common_struct*
  %call200 = call i8* %148(%struct.jpeg_common_struct* %150, i32 1, i64 8192)
  %151 = bitcast i8* %call200 to i16*
  %152 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %symbol_head = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %152, i32 0, i32 17
  store i16* %151, i16** %symbol_head, align 8, !tbaa !32
  %153 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem201 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %153, i32 0, i32 1
  %154 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem201, align 8, !tbaa !6
  %alloc_large202 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %154, i32 0, i32 1
  %155 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large202, align 8, !tbaa !31
  %156 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %157 = bitcast %struct.jpeg_compress_struct* %156 to %struct.jpeg_common_struct*
  %call203 = call i8* %155(%struct.jpeg_common_struct* %157, i32 1, i64 4096)
  %158 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %symbol_tail = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %158, i32 0, i32 18
  store i8* %call203, i8** %symbol_tail, align 8, !tbaa !33
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem204 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %159, i32 0, i32 1
  %160 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem204, align 8, !tbaa !6
  %alloc_large205 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %160, i32 0, i32 1
  %161 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large205, align 8, !tbaa !31
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %163 = bitcast %struct.jpeg_compress_struct* %162 to %struct.jpeg_common_struct*
  %call206 = call i8* %161(%struct.jpeg_common_struct* %163, i32 1, i64 4096)
  %164 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %164, i32 0, i32 19
  store i8* %call206, i8** %symbol_stack, align 8, !tbaa !34
  %165 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  call void @InitLZWCode(%struct.gif_source_struct* %165)
  %166 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %is_interlaced207 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %166, i32 0, i32 21
  %167 = load i32, i32* %is_interlaced207, align 4, !tbaa !29
  %tobool208 = icmp ne i32 %167, 0
  br i1 %tobool208, label %if.then.209, label %if.else

if.then.209:                                      ; preds = %for.end
  %168 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem210 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %168, i32 0, i32 1
  %169 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem210, align 8, !tbaa !6
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %169, i32 0, i32 4
  %170 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8, !tbaa !35
  %171 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %172 = bitcast %struct.jpeg_compress_struct* %171 to %struct.jpeg_common_struct*
  %173 = load i32, i32* %width, align 4, !tbaa !27
  %174 = load i32, i32* %height, align 4, !tbaa !27
  %call211 = call %struct.jvirt_sarray_control* %170(%struct.jpeg_common_struct* %172, i32 1, i32 0, i32 %173, i32 %174, i32 1)
  %175 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %175, i32 0, i32 22
  store %struct.jvirt_sarray_control* %call211, %struct.jvirt_sarray_control** %interlaced_image, align 8, !tbaa !36
  %176 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %176, i32 0, i32 2
  %177 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !37
  %cmp212 = icmp ne %struct.jpeg_progress_mgr* %177, null
  br i1 %cmp212, label %if.then.214, label %if.end.217

if.then.214:                                      ; preds = %if.then.209
  %178 = bitcast %struct.cdjpeg_progress_mgr** %progress215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #3
  %179 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress216 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %179, i32 0, i32 2
  %180 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress216, align 8, !tbaa !37
  %181 = bitcast %struct.jpeg_progress_mgr* %180 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %181, %struct.cdjpeg_progress_mgr** %progress215, align 8, !tbaa !2
  %182 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress215, align 8, !tbaa !2
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %182, i32 0, i32 2
  %183 = load i32, i32* %total_extra_passes, align 4, !tbaa !38
  %inc = add nsw i32 %183, 1
  store i32 %inc, i32* %total_extra_passes, align 4, !tbaa !38
  %184 = bitcast %struct.cdjpeg_progress_mgr** %progress215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #3
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.214, %if.then.209
  %185 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub218 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %185, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub218, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @load_interlaced_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8, !tbaa !41
  br label %if.end.221

if.else:                                          ; preds = %for.end
  %186 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub219 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %186, i32 0, i32 0
  %get_pixel_rows220 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub219, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_pixel_rows, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows220, align 8, !tbaa !41
  br label %if.end.221

if.end.221:                                       ; preds = %if.else, %if.end.217
  %187 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem222 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %187, i32 0, i32 1
  %188 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem222, align 8, !tbaa !6
  %alloc_sarray223 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %188, i32 0, i32 2
  %189 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray223, align 8, !tbaa !19
  %190 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %191 = bitcast %struct.jpeg_compress_struct* %190 to %struct.jpeg_common_struct*
  %192 = load i32, i32* %width, align 4, !tbaa !27
  %mul = mul i32 %192, 3
  %call224 = call i8** %189(%struct.jpeg_common_struct* %191, i32 1, i32 %mul, i32 1)
  %193 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub225 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %193, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub225, i32 0, i32 4
  store i8** %call224, i8*** %buffer, align 8, !tbaa !42
  %194 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub226 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %194, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub226, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4, !tbaa !43
  %195 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %195, i32 0, i32 9
  store i32 2, i32* %in_color_space, align 4, !tbaa !44
  %196 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %196, i32 0, i32 8
  store i32 3, i32* %input_components, align 4, !tbaa !45
  %197 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %197, i32 0, i32 11
  store i32 8, i32* %data_precision, align 4, !tbaa !46
  %198 = load i32, i32* %width, align 4, !tbaa !27
  %199 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %199, i32 0, i32 6
  store i32 %198, i32* %image_width, align 4, !tbaa !47
  %200 = load i32, i32* %height, align 4, !tbaa !27
  %201 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %201, i32 0, i32 7
  store i32 %200, i32* %image_height, align 4, !tbaa !48
  br label %do.body.227

do.body.227:                                      ; preds = %if.end.221
  %202 = bitcast i32** %_mp228 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #3
  %203 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err229 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %203, i32 0, i32 0
  %204 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err229, align 8, !tbaa !22
  %msg_parm230 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %204, i32 0, i32 6
  %i231 = bitcast %union.anon* %msg_parm230 to [8 x i32]*
  %arraydecay232 = getelementptr inbounds [8 x i32], [8 x i32]* %i231, i32 0, i32 0
  store i32* %arraydecay232, i32** %_mp228, align 8, !tbaa !2
  %205 = load i32, i32* %width, align 4, !tbaa !27
  %206 = load i32*, i32** %_mp228, align 8, !tbaa !2
  %arrayidx233 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 %205, i32* %arrayidx233, align 4, !tbaa !27
  %207 = load i32, i32* %height, align 4, !tbaa !27
  %208 = load i32*, i32** %_mp228, align 8, !tbaa !2
  %arrayidx234 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 %207, i32* %arrayidx234, align 4, !tbaa !27
  %209 = load i32, i32* %colormaplen, align 4, !tbaa !27
  %210 = load i32*, i32** %_mp228, align 8, !tbaa !2
  %arrayidx235 = getelementptr inbounds i32, i32* %210, i64 2
  store i32 %209, i32* %arrayidx235, align 4, !tbaa !27
  %211 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err236 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %211, i32 0, i32 0
  %212 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err236, align 8, !tbaa !22
  %msg_code237 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %212, i32 0, i32 5
  store i32 1017, i32* %msg_code237, align 4, !tbaa !23
  %213 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err238 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %213, i32 0, i32 0
  %214 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err238, align 8, !tbaa !22
  %emit_message239 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %214, i32 0, i32 1
  %215 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message239, align 8, !tbaa !28
  %216 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %217 = bitcast %struct.jpeg_compress_struct* %216 to %struct.jpeg_common_struct*
  call void %215(%struct.jpeg_common_struct* %217, i32 1)
  %218 = bitcast i32** %_mp228 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #3
  br label %do.cond.240

do.cond.240:                                      ; preds = %do.body.227
  br label %do.end.241

do.end.241:                                       ; preds = %do.cond.240
  %219 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #3
  %220 = bitcast i32* %aspectRatio to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #3
  %221 = bitcast i32* %colormaplen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #3
  %222 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #3
  %223 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #3
  %224 = bitcast [10 x i8]* %hdrbuf to i8*
  call void @llvm.lifetime.end(i64 10, i8* %224) #3
  %225 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_gif(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
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
define internal void @ReadColorMap(%struct.gif_source_struct* %sinfo, i32 %cmaplen, i8** %cmap) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %cmaplen.addr = alloca i32, align 4
  %cmap.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  store i32 %cmaplen, i32* %cmaplen.addr, align 4, !tbaa !27
  store i8** %cmap, i8*** %cmap.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !27
  %2 = load i32, i32* %cmaplen.addr, align 4, !tbaa !27
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call = call i32 @ReadByte(%struct.gif_source_struct* %3)
  %conv = trunc i32 %call to i8
  %4 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %cmap.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %conv, i8* %arrayidx1, align 1, !tbaa !26
  %7 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call2 = call i32 @ReadByte(%struct.gif_source_struct* %7)
  %conv3 = trunc i32 %call2 to i8
  %8 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom4 = sext i32 %8 to i64
  %9 = load i8**, i8*** %cmap.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  store i8 %conv3, i8* %arrayidx6, align 1, !tbaa !26
  %11 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call7 = call i32 @ReadByte(%struct.gif_source_struct* %11)
  %conv8 = trunc i32 %call7 to i8
  %12 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom9 = sext i32 %12 to i64
  %13 = load i8**, i8*** %cmap.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8*, i8** %13, i64 2
  %14 = load i8*, i8** %arrayidx10, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx11, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ReadByte(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %infile = alloca %struct.__sFILE*, align 8
  %c = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %2 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !21
  store %struct.__sFILE* %2, %struct.__sFILE** %infile, align 8, !tbaa !2
  %3 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !2
  %call = call i32 @getc(%struct.__sFILE* %4)
  store i32 %call, i32* %c, align 4, !tbaa !27
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !14
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !23
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !14
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %12 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %12, i32 0, i32 1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !14
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %c, align 4, !tbaa !27
  %16 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #3
  %17 = bitcast %struct.__sFILE** %infile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #3
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define internal void @DoExtension(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %extlabel = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %extlabel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call = call i32 @ReadByte(%struct.gif_source_struct* %1)
  store i32 %call, i32* %extlabel, align 4, !tbaa !27
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !14
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 1019, i32* %msg_code, align 4, !tbaa !23
  %5 = load i32, i32* %extlabel, align 4, !tbaa !27
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !14
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !22
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %5, i32* %arrayidx, align 4, !tbaa !27
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 1
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !14
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !22
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 1
  %12 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !28
  %13 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo5 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %13, i32 0, i32 1
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo5, align 8, !tbaa !14
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %15, i32 1)
  %16 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  call void @SkipDataBlocks(%struct.gif_source_struct* %16)
  %17 = bitcast i32* %extlabel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @InitLZWCode(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %last_byte = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %0, i32 0, i32 4
  store i32 2, i32* %last_byte, align 4, !tbaa !49
  %1 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %last_bit = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %1, i32 0, i32 5
  store i32 0, i32* %last_bit, align 4, !tbaa !50
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cur_bit = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 6
  store i32 0, i32* %cur_bit, align 4, !tbaa !51
  %3 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %3, i32 0, i32 7
  store i32 0, i32* %out_of_blocks, align 4, !tbaa !52
  %4 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %4, i32 0, i32 8
  %5 = load i32, i32* %input_code_size, align 4, !tbaa !30
  %shl = shl i32 1, %5
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %clear_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %6, i32 0, i32 9
  store i32 %shl, i32* %clear_code, align 4, !tbaa !53
  %7 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %7, i32 0, i32 9
  %8 = load i32, i32* %clear_code1, align 4, !tbaa !53
  %add = add nsw i32 %8, 1
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %end_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 10
  store i32 %add, i32* %end_code, align 4, !tbaa !54
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %first_time = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %10, i32 0, i32 14
  store i32 1, i32* %first_time, align 4, !tbaa !55
  %11 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  call void @ReInitLZW(%struct.gif_source_struct* %11)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @load_interlaced_image(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  %image_ptr = alloca i8**, align 8
  %sptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %progress = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.gif_source_struct*
  store %struct.gif_source_struct* %2, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast %struct.cdjpeg_progress_mgr** %progress to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 2
  %9 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress1, align 8, !tbaa !37
  %10 = bitcast %struct.jpeg_progress_mgr* %9 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %10, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  store i32 0, i32* %row, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %11 = load i32, i32* %row, align 4, !tbaa !27
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 7
  %13 = load i32, i32* %image_height, align 4, !tbaa !48
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %14 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %cmp2 = icmp ne %struct.cdjpeg_progress_mgr* %14, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %row, align 4, !tbaa !27
  %conv = zext i32 %15 to i64
  %16 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %16, i32 0, i32 0
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8, !tbaa !56
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 7
  %18 = load i32, i32* %image_height3, align 4, !tbaa !48
  %conv4 = zext i32 %18 to i64
  %19 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %19, i32 0, i32 0
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub5, i32 0, i32 2
  store i64 %conv4, i64* %pass_limit, align 8, !tbaa !57
  %20 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %pub6 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %20, i32 0, i32 0
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub6, i32 0, i32 0
  %progress_monitor7 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor7, align 8, !tbaa !58
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 1
  %25 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %25, i32 0, i32 7
  %26 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !59
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %28 = bitcast %struct.jpeg_compress_struct* %27 to %struct.jpeg_common_struct*
  %29 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %29, i32 0, i32 22
  %30 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %interlaced_image, align 8, !tbaa !36
  %31 = load i32, i32* %row, align 4, !tbaa !27
  %call = call i8** %26(%struct.jpeg_common_struct* %28, %struct.jvirt_sarray_control* %30, i32 %31, i32 1, i32 1)
  store i8** %call, i8*** %image_ptr, align 8, !tbaa !2
  %32 = load i8**, i8*** %image_ptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %32, i64 0
  %33 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %33, i8** %sptr, align 8, !tbaa !2
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 6
  %35 = load i32, i32* %image_width, align 4, !tbaa !47
  store i32 %35, i32* %col, align 4, !tbaa !27
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %36 = load i32, i32* %col, align 4, !tbaa !27
  %cmp9 = icmp ugt i32 %36, 0
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %37 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %call12 = call i32 @LZWReadByte(%struct.gif_source_struct* %37)
  %conv13 = trunc i32 %call12 to i8
  %38 = load i8*, i8** %sptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !2
  store i8 %conv13, i8* %38, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %39 = load i32, i32* %col, align 4, !tbaa !27
  %dec = add i32 %39, -1
  store i32 %dec, i32* %col, align 4, !tbaa !27
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %40 = load i32, i32* %row, align 4, !tbaa !27
  %inc = add i32 %40, 1
  store i32 %inc, i32* %row, align 4, !tbaa !27
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %41 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %cmp16 = icmp ne %struct.cdjpeg_progress_mgr* %41, null
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.end.15
  %42 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8, !tbaa !2
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %42, i32 0, i32 1
  %43 = load i32, i32* %completed_extra_passes, align 4, !tbaa !60
  %inc19 = add nsw i32 %43, 1
  store i32 %inc19, i32* %completed_extra_passes, align 4, !tbaa !60
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.end.15
  %44 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub21 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %44, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub21, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_interlaced_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8, !tbaa !41
  %45 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %cur_row_number = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %45, i32 0, i32 23
  store i32 0, i32* %cur_row_number, align 4, !tbaa !61
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 7
  %47 = load i32, i32* %image_height22, align 4, !tbaa !48
  %add = add i32 %47, 7
  %div = udiv i32 %add, 8
  %48 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pass2_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %48, i32 0, i32 24
  store i32 %div, i32* %pass2_offset, align 4, !tbaa !62
  %49 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pass2_offset23 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %49, i32 0, i32 24
  %50 = load i32, i32* %pass2_offset23, align 4, !tbaa !62
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 7
  %52 = load i32, i32* %image_height24, align 4, !tbaa !48
  %add25 = add i32 %52, 3
  %div26 = udiv i32 %add25, 8
  %add27 = add i32 %50, %div26
  %53 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pass3_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %53, i32 0, i32 25
  store i32 %add27, i32* %pass3_offset, align 4, !tbaa !63
  %54 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pass3_offset28 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %54, i32 0, i32 25
  %55 = load i32, i32* %pass3_offset28, align 4, !tbaa !63
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 7
  %57 = load i32, i32* %image_height29, align 4, !tbaa !48
  %add30 = add i32 %57, 1
  %div31 = udiv i32 %add30, 4
  %add32 = add i32 %55, %div31
  %58 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pass4_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %58, i32 0, i32 26
  store i32 %add32, i32* %pass4_offset, align 4, !tbaa !64
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %60 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call33 = call i32 @get_interlaced_row(%struct.jpeg_compress_struct* %59, %struct.cjpeg_source_struct* %60)
  %61 = bitcast %struct.cdjpeg_progress_mgr** %progress to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #3
  %62 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #3
  %63 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #3
  %64 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #3
  %65 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #3
  %66 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #3
  ret i32 %call33
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_pixel_rows(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  %c = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %colormap = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.gif_source_struct*
  store %struct.gif_source_struct* %2, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %colormap1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %7, i32 0, i32 2
  %8 = load i8**, i8*** %colormap1, align 8, !tbaa !20
  store i8** %8, i8*** %colormap, align 8, !tbaa !2
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %10 = load i8**, i8*** %buffer, align 8, !tbaa !42
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %11, i8** %ptr, align 8, !tbaa !2
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 6
  %13 = load i32, i32* %image_width, align 4, !tbaa !47
  store i32 %13, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %col, align 4, !tbaa !27
  %cmp = icmp ugt i32 %14, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %call = call i32 @LZWReadByte(%struct.gif_source_struct* %15)
  store i32 %call, i32* %c, align 4, !tbaa !27
  %16 = load i32, i32* %c, align 4, !tbaa !27
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx3, align 1, !tbaa !26
  %20 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !2
  store i8 %19, i8* %20, align 1, !tbaa !26
  %21 = load i32, i32* %c, align 4, !tbaa !27
  %idxprom4 = sext i32 %21 to i64
  %22 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8*, i8** %22, i64 1
  %23 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8, i8* %23, i64 %idxprom4
  %24 = load i8, i8* %arrayidx6, align 1, !tbaa !26
  %25 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr7 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr7, i8** %ptr, align 8, !tbaa !2
  store i8 %24, i8* %25, align 1, !tbaa !26
  %26 = load i32, i32* %c, align 4, !tbaa !27
  %idxprom8 = sext i32 %26 to i64
  %27 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8*, i8** %27, i64 2
  %28 = load i8*, i8** %arrayidx9, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8, i8* %28, i64 %idxprom8
  %29 = load i8, i8* %arrayidx10, align 1, !tbaa !26
  %30 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr11, i8** %ptr, align 8, !tbaa !2
  store i8 %29, i8* %30, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %col, align 4, !tbaa !27
  %dec = add i32 %31, -1
  store i32 %dec, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #3
  %33 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %34 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #3
  %36 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  ret i32 1
}

declare i32 @getc(%struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define internal void @SkipDataBlocks(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %buf = alloca [256 x i8], align 16
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call = call i32 @GetDataBlock(%struct.gif_source_struct* %1, i8* %arraydecay)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %2) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @GetDataBlock(%struct.gif_source_struct* %sinfo, i8* %buf) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %buf.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !2
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call = call i32 @ReadByte(%struct.gif_source_struct* %1)
  store i32 %call, i32* %count, align 4, !tbaa !27
  %2 = load i32, i32* %count, align 4, !tbaa !27
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !2
  %4 = load i32, i32* %count, align 4, !tbaa !27
  %conv = sext i32 %4 to i64
  %5 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %5, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %6 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !21
  %call1 = call i64 @fread(i8* %3, i64 1, i64 %conv, %struct.__sFILE* %6)
  %7 = load i32, i32* %count, align 4, !tbaa !27
  %conv2 = sext i32 %7 to i64
  %cmp3 = icmp eq i64 %call1, %conv2
  br i1 %cmp3, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !14
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !23
  %11 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo6 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %11, i32 0, i32 1
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo6, align 8, !tbaa !14
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %15 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo8 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %15, i32 0, i32 1
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo8, align 8, !tbaa !14
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %18 = load i32, i32* %count, align 4, !tbaa !27
  %19 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #3
  ret i32 %18
}

; Function Attrs: nounwind ssp uwtable
define internal void @ReInitLZW(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %0, i32 0, i32 8
  %1 = load i32, i32* %input_code_size, align 4, !tbaa !30
  %add = add nsw i32 %1, 1
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 11
  store i32 %add, i32* %code_size, align 4, !tbaa !65
  %3 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %clear_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %3, i32 0, i32 9
  %4 = load i32, i32* %clear_code, align 4, !tbaa !53
  %shl = shl i32 %4, 1
  %5 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %limit_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %5, i32 0, i32 12
  store i32 %shl, i32* %limit_code, align 4, !tbaa !66
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %6, i32 0, i32 9
  %7 = load i32, i32* %clear_code1, align 4, !tbaa !53
  %add2 = add nsw i32 %7, 2
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %max_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 13
  store i32 %add2, i32* %max_code, align 4, !tbaa !67
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 19
  %10 = load i8*, i8** %symbol_stack, align 8, !tbaa !34
  %11 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %sp = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %11, i32 0, i32 20
  store i8* %10, i8** %sp, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZWReadByte(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %code = alloca i32, align 4
  %incode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %incode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %first_time = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 14
  %3 = load i32, i32* %first_time, align 4, !tbaa !55
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %first_time1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %4, i32 0, i32 14
  store i32 0, i32* %first_time1, align 4, !tbaa !55
  %5 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %clear_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %5, i32 0, i32 9
  %6 = load i32, i32* %clear_code, align 4, !tbaa !53
  store i32 %6, i32* %code, align 4, !tbaa !27
  br label %if.end.4

if.else:                                          ; preds = %entry
  %7 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %sp = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %7, i32 0, i32 20
  %8 = load i8*, i8** %sp, align 8, !tbaa !68
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 19
  %10 = load i8*, i8** %symbol_stack, align 8, !tbaa !34
  %cmp = icmp ugt i8* %8, %10
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %11 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %sp3 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %11, i32 0, i32 20
  %12 = load i8*, i8** %sp3, align 8, !tbaa !68
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr, i8** %sp3, align 8, !tbaa !68
  %13 = load i8, i8* %incdec.ptr, align 1, !tbaa !26
  %conv = zext i8 %13 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %14 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call = call i32 @GetCode(%struct.gif_source_struct* %14)
  store i32 %call, i32* %code, align 4, !tbaa !27
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !27
  %16 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %clear_code5 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %16, i32 0, i32 9
  %17 = load i32, i32* %clear_code5, align 4, !tbaa !53
  %cmp6 = icmp eq i32 %15, %17
  br i1 %cmp6, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %if.end.4
  %18 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  call void @ReInitLZW(%struct.gif_source_struct* %18)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.8
  %19 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %call9 = call i32 @GetCode(%struct.gif_source_struct* %19)
  store i32 %call9, i32* %code, align 4, !tbaa !27
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i32, i32* %code, align 4, !tbaa !27
  %21 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %clear_code10 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %21, i32 0, i32 9
  %22 = load i32, i32* %clear_code10, align 4, !tbaa !53
  %cmp11 = icmp eq i32 %20, %22
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %code, align 4, !tbaa !27
  %24 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %clear_code13 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %24, i32 0, i32 9
  %25 = load i32, i32* %clear_code13, align 4, !tbaa !53
  %cmp14 = icmp sgt i32 %23, %25
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %do.end
  %26 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %26, i32 0, i32 1
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !14
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 1021, i32* %msg_code, align 4, !tbaa !23
  %29 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo17 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %29, i32 0, i32 1
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo17, align 8, !tbaa !14
  %err18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8, !tbaa !22
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 1
  %32 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !28
  %33 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo19 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %33, i32 0, i32 1
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo19, align 8, !tbaa !14
  %35 = bitcast %struct.jpeg_compress_struct* %34 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* %35, i32 -1)
  store i32 0, i32* %code, align 4, !tbaa !27
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %do.end
  %36 = load i32, i32* %code, align 4, !tbaa !27
  %37 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %oldcode = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %37, i32 0, i32 15
  store i32 %36, i32* %oldcode, align 4, !tbaa !69
  %38 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %firstcode = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %38, i32 0, i32 16
  store i32 %36, i32* %firstcode, align 4, !tbaa !70
  %39 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.4
  %40 = load i32, i32* %code, align 4, !tbaa !27
  %41 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %end_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %41, i32 0, i32 10
  %42 = load i32, i32* %end_code, align 4, !tbaa !54
  %cmp22 = icmp eq i32 %40, %42
  br i1 %cmp22, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.end.21
  %43 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %43, i32 0, i32 7
  %44 = load i32, i32* %out_of_blocks, align 4, !tbaa !52
  %tobool25 = icmp ne i32 %44, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.then.24
  %45 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  call void @SkipDataBlocks(%struct.gif_source_struct* %45)
  %46 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %out_of_blocks27 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %46, i32 0, i32 7
  store i32 1, i32* %out_of_blocks27, align 4, !tbaa !52
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.24
  %47 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo29 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %47, i32 0, i32 1
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo29, align 8, !tbaa !14
  %err30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8, !tbaa !22
  %msg_code31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 5
  store i32 1023, i32* %msg_code31, align 4, !tbaa !23
  %50 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo32 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %50, i32 0, i32 1
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo32, align 8, !tbaa !14
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !22
  %emit_message34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 1
  %53 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message34, align 8, !tbaa !28
  %54 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo35 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %54, i32 0, i32 1
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo35, align 8, !tbaa !14
  %56 = bitcast %struct.jpeg_compress_struct* %55 to %struct.jpeg_common_struct*
  call void %53(%struct.jpeg_common_struct* %56, i32 -1)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.21
  %57 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %57, i32* %incode, align 4, !tbaa !27
  %58 = load i32, i32* %code, align 4, !tbaa !27
  %59 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %max_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %59, i32 0, i32 13
  %60 = load i32, i32* %max_code, align 4, !tbaa !67
  %cmp37 = icmp sge i32 %58, %60
  br i1 %cmp37, label %if.then.39, label %if.end.57

if.then.39:                                       ; preds = %if.end.36
  %61 = load i32, i32* %code, align 4, !tbaa !27
  %62 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %max_code40 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %62, i32 0, i32 13
  %63 = load i32, i32* %max_code40, align 4, !tbaa !67
  %cmp41 = icmp sgt i32 %61, %63
  br i1 %cmp41, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %if.then.39
  %64 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo44 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %64, i32 0, i32 1
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo44, align 8, !tbaa !14
  %err45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err45, align 8, !tbaa !22
  %msg_code46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 1021, i32* %msg_code46, align 4, !tbaa !23
  %67 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo47 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %67, i32 0, i32 1
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo47, align 8, !tbaa !14
  %err48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8, !tbaa !22
  %emit_message49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 1
  %70 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message49, align 8, !tbaa !28
  %71 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo50 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %71, i32 0, i32 1
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo50, align 8, !tbaa !14
  %73 = bitcast %struct.jpeg_compress_struct* %72 to %struct.jpeg_common_struct*
  call void %70(%struct.jpeg_common_struct* %73, i32 -1)
  store i32 0, i32* %incode, align 4, !tbaa !27
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.43, %if.then.39
  %74 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %firstcode52 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %74, i32 0, i32 16
  %75 = load i32, i32* %firstcode52, align 4, !tbaa !70
  %conv53 = trunc i32 %75 to i8
  %76 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %sp54 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %76, i32 0, i32 20
  %77 = load i8*, i8** %sp54, align 8, !tbaa !68
  %incdec.ptr55 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr55, i8** %sp54, align 8, !tbaa !68
  store i8 %conv53, i8* %77, align 1, !tbaa !26
  %78 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %oldcode56 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %78, i32 0, i32 15
  %79 = load i32, i32* %oldcode56, align 4, !tbaa !69
  store i32 %79, i32* %code, align 4, !tbaa !27
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.51, %if.end.36
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.57
  %80 = load i32, i32* %code, align 4, !tbaa !27
  %81 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %clear_code58 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %81, i32 0, i32 9
  %82 = load i32, i32* %clear_code58, align 4, !tbaa !53
  %cmp59 = icmp sge i32 %80, %82
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %83 = load i32, i32* %code, align 4, !tbaa !27
  %idxprom = sext i32 %83 to i64
  %84 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %symbol_tail = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %84, i32 0, i32 18
  %85 = load i8*, i8** %symbol_tail, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8, i8* %85, i64 %idxprom
  %86 = load i8, i8* %arrayidx, align 1, !tbaa !26
  %87 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %sp61 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %87, i32 0, i32 20
  %88 = load i8*, i8** %sp61, align 8, !tbaa !68
  %incdec.ptr62 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr62, i8** %sp61, align 8, !tbaa !68
  store i8 %86, i8* %88, align 1, !tbaa !26
  %89 = load i32, i32* %code, align 4, !tbaa !27
  %idxprom63 = sext i32 %89 to i64
  %90 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %symbol_head = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %90, i32 0, i32 17
  %91 = load i16*, i16** %symbol_head, align 8, !tbaa !32
  %arrayidx64 = getelementptr inbounds i16, i16* %91, i64 %idxprom63
  %92 = load i16, i16* %arrayidx64, align 2, !tbaa !71
  %conv65 = zext i16 %92 to i32
  store i32 %conv65, i32* %code, align 4, !tbaa !27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %93 = load i32, i32* %code, align 4, !tbaa !27
  %94 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %firstcode66 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %94, i32 0, i32 16
  store i32 %93, i32* %firstcode66, align 4, !tbaa !70
  %95 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %max_code67 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %95, i32 0, i32 13
  %96 = load i32, i32* %max_code67, align 4, !tbaa !67
  store i32 %96, i32* %code, align 4, !tbaa !27
  %cmp68 = icmp slt i32 %96, 4096
  br i1 %cmp68, label %if.then.70, label %if.end.92

if.then.70:                                       ; preds = %while.end
  %97 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %oldcode71 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %97, i32 0, i32 15
  %98 = load i32, i32* %oldcode71, align 4, !tbaa !69
  %conv72 = trunc i32 %98 to i16
  %99 = load i32, i32* %code, align 4, !tbaa !27
  %idxprom73 = sext i32 %99 to i64
  %100 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %symbol_head74 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %100, i32 0, i32 17
  %101 = load i16*, i16** %symbol_head74, align 8, !tbaa !32
  %arrayidx75 = getelementptr inbounds i16, i16* %101, i64 %idxprom73
  store i16 %conv72, i16* %arrayidx75, align 2, !tbaa !71
  %102 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %firstcode76 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %102, i32 0, i32 16
  %103 = load i32, i32* %firstcode76, align 4, !tbaa !70
  %conv77 = trunc i32 %103 to i8
  %104 = load i32, i32* %code, align 4, !tbaa !27
  %idxprom78 = sext i32 %104 to i64
  %105 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %symbol_tail79 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %105, i32 0, i32 18
  %106 = load i8*, i8** %symbol_tail79, align 8, !tbaa !33
  %arrayidx80 = getelementptr inbounds i8, i8* %106, i64 %idxprom78
  store i8 %conv77, i8* %arrayidx80, align 1, !tbaa !26
  %107 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %max_code81 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %107, i32 0, i32 13
  %108 = load i32, i32* %max_code81, align 4, !tbaa !67
  %inc = add nsw i32 %108, 1
  store i32 %inc, i32* %max_code81, align 4, !tbaa !67
  %109 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %max_code82 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %109, i32 0, i32 13
  %110 = load i32, i32* %max_code82, align 4, !tbaa !67
  %111 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %limit_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %111, i32 0, i32 12
  %112 = load i32, i32* %limit_code, align 4, !tbaa !66
  %cmp83 = icmp sge i32 %110, %112
  br i1 %cmp83, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %if.then.70
  %113 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %113, i32 0, i32 11
  %114 = load i32, i32* %code_size, align 4, !tbaa !65
  %cmp85 = icmp slt i32 %114, 12
  br i1 %cmp85, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %land.lhs.true
  %115 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_size88 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %115, i32 0, i32 11
  %116 = load i32, i32* %code_size88, align 4, !tbaa !65
  %inc89 = add nsw i32 %116, 1
  store i32 %inc89, i32* %code_size88, align 4, !tbaa !65
  %117 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %limit_code90 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %117, i32 0, i32 12
  %118 = load i32, i32* %limit_code90, align 4, !tbaa !66
  %shl = shl i32 %118, 1
  store i32 %shl, i32* %limit_code90, align 4, !tbaa !66
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %land.lhs.true, %if.then.70
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %while.end
  %119 = load i32, i32* %incode, align 4, !tbaa !27
  %120 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %oldcode93 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %120, i32 0, i32 15
  store i32 %119, i32* %oldcode93, align 4, !tbaa !69
  %121 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %firstcode94 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %121, i32 0, i32 16
  %122 = load i32, i32* %firstcode94, align 4, !tbaa !70
  store i32 %122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.92, %if.end.28, %if.end.20, %if.then.2
  %123 = bitcast i32* %incode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #3
  %124 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #3
  %125 = load i32, i32* %retval
  ret i32 %125
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_interlaced_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  %image_ptr = alloca i8**, align 8
  %c = alloca i32, align 4
  %sptr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %colormap = alloca i8**, align 8
  %irow = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8, !tbaa !2
  %2 = bitcast %struct.cjpeg_source_struct* %1 to %struct.gif_source_struct*
  store %struct.gif_source_struct* %2, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %3 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %colormap1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 2
  %10 = load i8**, i8*** %colormap1, align 8, !tbaa !20
  store i8** %10, i8*** %colormap, align 8, !tbaa !2
  %11 = bitcast i32* %irow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %cur_row_number = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %12, i32 0, i32 23
  %13 = load i32, i32* %cur_row_number, align 4, !tbaa !61
  %and = and i32 %13, 7
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.3
    i32 2, label %sw.bb.6
    i32 6, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %14 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %cur_row_number2 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %14, i32 0, i32 23
  %15 = load i32, i32* %cur_row_number2, align 4, !tbaa !61
  %shr = lshr i32 %15, 3
  store i32 %shr, i32* %irow, align 4, !tbaa !27
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %16 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %cur_row_number4 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %16, i32 0, i32 23
  %17 = load i32, i32* %cur_row_number4, align 4, !tbaa !61
  %shr5 = lshr i32 %17, 3
  %18 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pass2_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %18, i32 0, i32 24
  %19 = load i32, i32* %pass2_offset, align 4, !tbaa !62
  %add = add i32 %shr5, %19
  store i32 %add, i32* %irow, align 4, !tbaa !27
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry, %entry
  %20 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %cur_row_number7 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %20, i32 0, i32 23
  %21 = load i32, i32* %cur_row_number7, align 4, !tbaa !61
  %shr8 = lshr i32 %21, 2
  %22 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pass3_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %22, i32 0, i32 25
  %23 = load i32, i32* %pass3_offset, align 4, !tbaa !63
  %add9 = add i32 %shr8, %23
  store i32 %add9, i32* %irow, align 4, !tbaa !27
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %24 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %cur_row_number10 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %24, i32 0, i32 23
  %25 = load i32, i32* %cur_row_number10, align 4, !tbaa !61
  %shr11 = lshr i32 %25, 1
  %26 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pass4_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %26, i32 0, i32 26
  %27 = load i32, i32* %pass4_offset, align 4, !tbaa !64
  %add12 = add i32 %shr11, %27
  store i32 %add12, i32* %irow, align 4, !tbaa !27
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.3, %sw.bb
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 1
  %29 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %29, i32 0, i32 7
  %30 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !59
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  %33 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %33, i32 0, i32 22
  %34 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %interlaced_image, align 8, !tbaa !36
  %35 = load i32, i32* %irow, align 4, !tbaa !27
  %call = call i8** %30(%struct.jpeg_common_struct* %32, %struct.jvirt_sarray_control* %34, i32 %35, i32 1, i32 0)
  store i8** %call, i8*** %image_ptr, align 8, !tbaa !2
  %36 = load i8**, i8*** %image_ptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 0
  %37 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %37, i8** %sptr, align 8, !tbaa !2
  %38 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %38, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %39 = load i8**, i8*** %buffer, align 8, !tbaa !42
  %arrayidx13 = getelementptr inbounds i8*, i8** %39, i64 0
  %40 = load i8*, i8** %arrayidx13, align 8, !tbaa !2
  store i8* %40, i8** %ptr, align 8, !tbaa !2
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 6
  %42 = load i32, i32* %image_width, align 4, !tbaa !47
  store i32 %42, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %43 = load i32, i32* %col, align 4, !tbaa !27
  %cmp = icmp ugt i32 %43, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i8*, i8** %sptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !2
  %45 = load i8, i8* %44, align 1, !tbaa !26
  %conv = zext i8 %45 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !27
  %46 = load i32, i32* %c, align 4, !tbaa !27
  %idxprom = sext i32 %46 to i64
  %47 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8*, i8** %47, i64 0
  %48 = load i8*, i8** %arrayidx14, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i8, i8* %48, i64 %idxprom
  %49 = load i8, i8* %arrayidx15, align 1, !tbaa !26
  %50 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr16 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr16, i8** %ptr, align 8, !tbaa !2
  store i8 %49, i8* %50, align 1, !tbaa !26
  %51 = load i32, i32* %c, align 4, !tbaa !27
  %idxprom17 = sext i32 %51 to i64
  %52 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i8*, i8** %52, i64 1
  %53 = load i8*, i8** %arrayidx18, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i8, i8* %53, i64 %idxprom17
  %54 = load i8, i8* %arrayidx19, align 1, !tbaa !26
  %55 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr20, i8** %ptr, align 8, !tbaa !2
  store i8 %54, i8* %55, align 1, !tbaa !26
  %56 = load i32, i32* %c, align 4, !tbaa !27
  %idxprom21 = sext i32 %56 to i64
  %57 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i8*, i8** %57, i64 2
  %58 = load i8*, i8** %arrayidx22, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i8, i8* %58, i64 %idxprom21
  %59 = load i8, i8* %arrayidx23, align 1, !tbaa !26
  %60 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr24 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr24, i8** %ptr, align 8, !tbaa !2
  store i8 %59, i8* %60, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %col, align 4, !tbaa !27
  %dec = add i32 %61, -1
  store i32 %dec, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8, !tbaa !2
  %cur_row_number25 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %62, i32 0, i32 23
  %63 = load i32, i32* %cur_row_number25, align 4, !tbaa !61
  %inc = add i32 %63, 1
  store i32 %inc, i32* %cur_row_number25, align 4, !tbaa !61
  %64 = bitcast i32* %irow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #3
  %65 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #3
  %66 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #3
  %67 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #3
  %68 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #3
  %69 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #3
  %70 = bitcast i8*** %image_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #3
  %71 = bitcast %struct.gif_source_struct** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @GetCode(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %accum = alloca i64, align 8
  %offs = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %0 = bitcast i64* %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %offs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %entry
  %4 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cur_bit = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %4, i32 0, i32 6
  %5 = load i32, i32* %cur_bit, align 4, !tbaa !51
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %6, i32 0, i32 11
  %7 = load i32, i32* %code_size, align 4, !tbaa !65
  %add = add nsw i32 %5, %7
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %last_bit = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 5
  %9 = load i32, i32* %last_bit, align 4, !tbaa !50
  %cmp = icmp sgt i32 %add, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %10, i32 0, i32 7
  %11 = load i32, i32* %out_of_blocks, align 4, !tbaa !52
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %12, i32 0, i32 1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !14
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 1024, i32* %msg_code, align 4, !tbaa !23
  %15 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %15, i32 0, i32 1
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8, !tbaa !14
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !22
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 1
  %18 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !28
  %19 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %19, i32 0, i32 1
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !14
  %21 = bitcast %struct.jpeg_compress_struct* %20 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %21, i32 -1)
  %22 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %end_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %22, i32 0, i32 10
  %23 = load i32, i32* %end_code, align 4, !tbaa !54
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %24 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %last_byte = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %24, i32 0, i32 4
  %25 = load i32, i32* %last_byte, align 4, !tbaa !49
  %sub = sub nsw i32 %25, 2
  %idxprom = sext i32 %sub to i64
  %26 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_buf = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %26, i32 0, i32 3
  %arrayidx = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf, i32 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !26
  %28 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_buf4 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %28, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf4, i32 0, i64 0
  store i8 %27, i8* %arrayidx5, align 1, !tbaa !26
  %29 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %last_byte6 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %29, i32 0, i32 4
  %30 = load i32, i32* %last_byte6, align 4, !tbaa !49
  %sub7 = sub nsw i32 %30, 1
  %idxprom8 = sext i32 %sub7 to i64
  %31 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_buf9 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %31, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf9, i32 0, i64 %idxprom8
  %32 = load i8, i8* %arrayidx10, align 1, !tbaa !26
  %33 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_buf11 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %33, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf11, i32 0, i64 1
  store i8 %32, i8* %arrayidx12, align 1, !tbaa !26
  %34 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %35 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_buf13 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %35, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf13, i32 0, i64 2
  %call = call i32 @GetDataBlock(%struct.gif_source_struct* %34, i8* %arrayidx14)
  store i32 %call, i32* %count, align 4, !tbaa !27
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %if.end
  %36 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %out_of_blocks17 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %36, i32 0, i32 7
  store i32 1, i32* %out_of_blocks17, align 4, !tbaa !52
  %37 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo18 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %37, i32 0, i32 1
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo18, align 8, !tbaa !14
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !22
  %msg_code20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 5
  store i32 1024, i32* %msg_code20, align 4, !tbaa !23
  %40 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo21 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %40, i32 0, i32 1
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo21, align 8, !tbaa !14
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !22
  %emit_message23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 1
  %43 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message23, align 8, !tbaa !28
  %44 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cinfo24 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %44, i32 0, i32 1
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo24, align 8, !tbaa !14
  %46 = bitcast %struct.jpeg_compress_struct* %45 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* %46, i32 -1)
  %47 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %end_code25 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %47, i32 0, i32 10
  %48 = load i32, i32* %end_code25, align 4, !tbaa !54
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end
  %49 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cur_bit27 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %49, i32 0, i32 6
  %50 = load i32, i32* %cur_bit27, align 4, !tbaa !51
  %51 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %last_bit28 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %51, i32 0, i32 5
  %52 = load i32, i32* %last_bit28, align 4, !tbaa !50
  %sub29 = sub nsw i32 %50, %52
  %add30 = add nsw i32 %sub29, 16
  %53 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cur_bit31 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %53, i32 0, i32 6
  store i32 %add30, i32* %cur_bit31, align 4, !tbaa !51
  %54 = load i32, i32* %count, align 4, !tbaa !27
  %add32 = add nsw i32 2, %54
  %55 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %last_byte33 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %55, i32 0, i32 4
  store i32 %add32, i32* %last_byte33, align 4, !tbaa !49
  %56 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %last_byte34 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %56, i32 0, i32 4
  %57 = load i32, i32* %last_byte34, align 4, !tbaa !49
  %mul = mul nsw i32 %57, 8
  %58 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %last_bit35 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %58, i32 0, i32 5
  store i32 %mul, i32* %last_bit35, align 4, !tbaa !50
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %59 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cur_bit36 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %59, i32 0, i32 6
  %60 = load i32, i32* %cur_bit36, align 4, !tbaa !51
  %shr = ashr i32 %60, 3
  store i32 %shr, i32* %offs, align 4, !tbaa !27
  %61 = load i32, i32* %offs, align 4, !tbaa !27
  %add37 = add nsw i32 %61, 2
  %idxprom38 = sext i32 %add37 to i64
  %62 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_buf39 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %62, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf39, i32 0, i64 %idxprom38
  %63 = load i8, i8* %arrayidx40, align 1, !tbaa !26
  %conv = sext i8 %63 to i32
  %and = and i32 %conv, 255
  %conv41 = sext i32 %and to i64
  store i64 %conv41, i64* %accum, align 8, !tbaa !72
  %64 = load i64, i64* %accum, align 8, !tbaa !72
  %shl = shl i64 %64, 8
  store i64 %shl, i64* %accum, align 8, !tbaa !72
  %65 = load i32, i32* %offs, align 4, !tbaa !27
  %add42 = add nsw i32 %65, 1
  %idxprom43 = sext i32 %add42 to i64
  %66 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_buf44 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %66, i32 0, i32 3
  %arrayidx45 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf44, i32 0, i64 %idxprom43
  %67 = load i8, i8* %arrayidx45, align 1, !tbaa !26
  %conv46 = sext i8 %67 to i32
  %and47 = and i32 %conv46, 255
  %conv48 = sext i32 %and47 to i64
  %68 = load i64, i64* %accum, align 8, !tbaa !72
  %or = or i64 %68, %conv48
  store i64 %or, i64* %accum, align 8, !tbaa !72
  %69 = load i64, i64* %accum, align 8, !tbaa !72
  %shl49 = shl i64 %69, 8
  store i64 %shl49, i64* %accum, align 8, !tbaa !72
  %70 = load i32, i32* %offs, align 4, !tbaa !27
  %idxprom50 = sext i32 %70 to i64
  %71 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_buf51 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %71, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf51, i32 0, i64 %idxprom50
  %72 = load i8, i8* %arrayidx52, align 1, !tbaa !26
  %conv53 = sext i8 %72 to i32
  %and54 = and i32 %conv53, 255
  %conv55 = sext i32 %and54 to i64
  %73 = load i64, i64* %accum, align 8, !tbaa !72
  %or56 = or i64 %73, %conv55
  store i64 %or56, i64* %accum, align 8, !tbaa !72
  %74 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cur_bit57 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %74, i32 0, i32 6
  %75 = load i32, i32* %cur_bit57, align 4, !tbaa !51
  %and58 = and i32 %75, 7
  %76 = load i64, i64* %accum, align 8, !tbaa !72
  %sh_prom = zext i32 %and58 to i64
  %shr59 = ashr i64 %76, %sh_prom
  store i64 %shr59, i64* %accum, align 8, !tbaa !72
  %77 = load i64, i64* %accum, align 8, !tbaa !72
  %conv60 = trunc i64 %77 to i32
  %78 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_size61 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %78, i32 0, i32 11
  %79 = load i32, i32* %code_size61, align 4, !tbaa !65
  %shl62 = shl i32 1, %79
  %sub63 = sub nsw i32 %shl62, 1
  %and64 = and i32 %conv60, %sub63
  store i32 %and64, i32* %ret, align 4, !tbaa !27
  %80 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %code_size65 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %80, i32 0, i32 11
  %81 = load i32, i32* %code_size65, align 4, !tbaa !65
  %82 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8, !tbaa !2
  %cur_bit66 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %82, i32 0, i32 6
  %83 = load i32, i32* %cur_bit66, align 4, !tbaa !51
  %add67 = add nsw i32 %83, %81
  store i32 %add67, i32* %cur_bit66, align 4, !tbaa !51
  %84 = load i32, i32* %ret, align 4, !tbaa !27
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.16, %if.then
  %85 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %offs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i64* %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #3
  %89 = load i32, i32* %retval
  ret i32 %89
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
!15 = !{!"", !16, i64 0, !3, i64 48, !3, i64 56, !4, i64 64, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !3, i64 376, !3, i64 384, !3, i64 392, !3, i64 400, !8, i64 408, !3, i64 416, !8, i64 424, !8, i64 428, !8, i64 432, !8, i64 436}
!16 = !{!"cjpeg_source_struct", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40}
!17 = !{!15, !3, i64 0}
!18 = !{!15, !3, i64 16}
!19 = !{!12, !3, i64 16}
!20 = !{!15, !3, i64 56}
!21 = !{!15, !3, i64 24}
!22 = !{!7, !3, i64 0}
!23 = !{!24, !8, i64 40}
!24 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!25 = !{!24, !3, i64 0}
!26 = !{!4, !4, i64 0}
!27 = !{!8, !8, i64 0}
!28 = !{!24, !3, i64 8}
!29 = !{!15, !8, i64 408}
!30 = !{!15, !8, i64 340}
!31 = !{!12, !3, i64 8}
!32 = !{!15, !3, i64 376}
!33 = !{!15, !3, i64 384}
!34 = !{!15, !3, i64 392}
!35 = !{!12, !3, i64 32}
!36 = !{!15, !3, i64 416}
!37 = !{!7, !3, i64 16}
!38 = !{!39, !8, i64 36}
!39 = !{!"cdjpeg_progress_mgr", !40, i64 0, !8, i64 32, !8, i64 36, !8, i64 40}
!40 = !{!"jpeg_progress_mgr", !3, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28}
!41 = !{!15, !3, i64 8}
!42 = !{!15, !3, i64 32}
!43 = !{!15, !8, i64 40}
!44 = !{!7, !4, i64 52}
!45 = !{!7, !8, i64 48}
!46 = !{!7, !8, i64 64}
!47 = !{!7, !8, i64 40}
!48 = !{!7, !8, i64 44}
!49 = !{!15, !8, i64 324}
!50 = !{!15, !8, i64 328}
!51 = !{!15, !8, i64 332}
!52 = !{!15, !8, i64 336}
!53 = !{!15, !8, i64 344}
!54 = !{!15, !8, i64 348}
!55 = !{!15, !8, i64 364}
!56 = !{!39, !13, i64 8}
!57 = !{!39, !13, i64 16}
!58 = !{!39, !3, i64 0}
!59 = !{!12, !3, i64 56}
!60 = !{!39, !8, i64 32}
!61 = !{!15, !8, i64 424}
!62 = !{!15, !8, i64 428}
!63 = !{!15, !8, i64 432}
!64 = !{!15, !8, i64 436}
!65 = !{!15, !8, i64 352}
!66 = !{!15, !8, i64 356}
!67 = !{!15, !8, i64 360}
!68 = !{!15, !3, i64 400}
!69 = !{!15, !8, i64 368}
!70 = !{!15, !8, i64 372}
!71 = !{!10, !10, i64 0}
!72 = !{!13, !13, i64 0}
