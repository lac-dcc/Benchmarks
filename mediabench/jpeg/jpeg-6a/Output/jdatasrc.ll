; ModuleID = 'jdatasrc.c'
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type opaque
%struct.jpeg_d_main_controller = type opaque
%struct.jpeg_d_coef_controller = type opaque
%struct.jpeg_d_post_controller = type opaque
%struct.jpeg_input_controller = type opaque
%struct.jpeg_marker_reader = type opaque
%struct.jpeg_entropy_decoder = type opaque
%struct.jpeg_inverse_dct = type opaque
%struct.jpeg_upsampler = type opaque
%struct.jpeg_color_deconverter = type opaque
%struct.jpeg_color_quantizer = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.my_source_mgr = type { %struct.jpeg_source_mgr, %struct.__sFILE*, i8*, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_stdio_src(%struct.jpeg_decompress_struct* %cinfo, %struct.__sFILE* %infile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %infile.addr = alloca %struct.__sFILE*, align 8
  %src = alloca %struct.my_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.__sFILE* %infile, %struct.__sFILE** %infile.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_source_mgr** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8, !tbaa !6
  %cmp = icmp eq %struct.jpeg_source_mgr* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !11
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 0, i64 80)
  %8 = bitcast i8* %call to %struct.jpeg_source_mgr*
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 5
  store %struct.jpeg_source_mgr* %8, %struct.jpeg_source_mgr** %src2, align 8, !tbaa !6
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 5
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src3, align 8, !tbaa !6
  %12 = bitcast %struct.jpeg_source_mgr* %11 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %12, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem4, align 8, !tbaa !11
  %alloc_small5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i32 0, i32 0
  %15 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small5, align 8, !tbaa !12
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  %call6 = call i8* %15(%struct.jpeg_common_struct* %17, i32 0, i64 4096)
  %18 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %18, i32 0, i32 2
  store i8* %call6, i8** %buffer, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 5
  %20 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src7, align 8, !tbaa !6
  %21 = bitcast %struct.jpeg_source_mgr* %20 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %21, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %22 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %22, i32 0, i32 0
  %init_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*)* @init_source, void (%struct.jpeg_decompress_struct*)** %init_source, align 8, !tbaa !18
  %23 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub8 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %23, i32 0, i32 0
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub8, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* @fill_input_buffer, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !19
  %24 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub9 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %24, i32 0, i32 0
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub9, i32 0, i32 4
  store void (%struct.jpeg_decompress_struct*, i64)* @skip_input_data, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8, !tbaa !20
  %25 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub10 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %25, i32 0, i32 0
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub10, i32 0, i32 5
  store i32 (%struct.jpeg_decompress_struct*, i32)* @jpeg_resync_to_restart, i32 (%struct.jpeg_decompress_struct*, i32)** %resync_to_restart, align 8, !tbaa !21
  %26 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub11 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i32 0, i32 0
  %term_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub11, i32 0, i32 6
  store void (%struct.jpeg_decompress_struct*)* @term_source, void (%struct.jpeg_decompress_struct*)** %term_source, align 8, !tbaa !22
  %27 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8, !tbaa !2
  %28 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %infile12 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %28, i32 0, i32 1
  store %struct.__sFILE* %27, %struct.__sFILE** %infile12, align 8, !tbaa !23
  %29 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub13 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %29, i32 0, i32 0
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub13, i32 0, i32 1
  store i64 0, i64* %bytes_in_buffer, align 8, !tbaa !24
  %30 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub14 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %30, i32 0, i32 0
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub14, i32 0, i32 0
  store i8* null, i8** %next_input_byte, align 8, !tbaa !25
  %31 = bitcast %struct.my_source_mgr** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @init_source(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %src = alloca %struct.my_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_source_mgr** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_source_mgr* %2 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %3, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %4 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %start_of_file = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i32 0, i32 3
  store i32 1, i32* %start_of_file, align 4, !tbaa !26
  %5 = bitcast %struct.my_source_mgr** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fill_input_buffer(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %src = alloca %struct.my_source_mgr*, align 8
  %nbytes = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_source_mgr** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_source_mgr* %2 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %3, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %4 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8, !tbaa !15
  %7 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %infile = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %7, i32 0, i32 1
  %8 = load %struct.__sFILE*, %struct.__sFILE** %infile, align 8, !tbaa !23
  %call = call i64 @fread(i8* %6, i64 1, i64 4096, %struct.__sFILE* %8)
  store i64 %call, i64* %nbytes, align 8, !tbaa !27
  %9 = load i64, i64* %nbytes, align 8, !tbaa !27
  %cmp = icmp ule i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %10 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %start_of_file = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %10, i32 0, i32 3
  %11 = load i32, i32* %start_of_file, align 4, !tbaa !26
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !28
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 41, i32* %msg_code, align 4, !tbaa !29
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !28
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !31
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %18 = bitcast %struct.jpeg_decompress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !28
  %msg_code5 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 116, i32* %msg_code5, align 4, !tbaa !29
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !28
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 1
  %23 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !32
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25, i32 -1)
  %26 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %buffer7 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer7, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 0
  store i8 -1, i8* %arrayidx, align 1, !tbaa !33
  %28 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %buffer8 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %28, i32 0, i32 2
  %29 = load i8*, i8** %buffer8, align 8, !tbaa !15
  %arrayidx9 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 -39, i8* %arrayidx9, align 1, !tbaa !33
  store i64 2, i64* %nbytes, align 8, !tbaa !27
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %30 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %buffer11 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %30, i32 0, i32 2
  %31 = load i8*, i8** %buffer11, align 8, !tbaa !15
  %32 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %32, i32 0, i32 0
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub, i32 0, i32 0
  store i8* %31, i8** %next_input_byte, align 8, !tbaa !25
  %33 = load i64, i64* %nbytes, align 8, !tbaa !27
  %34 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub12 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %34, i32 0, i32 0
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub12, i32 0, i32 1
  store i64 %33, i64* %bytes_in_buffer, align 8, !tbaa !24
  %35 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %start_of_file13 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %35, i32 0, i32 3
  store i32 0, i32* %start_of_file13, align 4, !tbaa !26
  %36 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  %37 = bitcast %struct.my_source_mgr** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal void @skip_input_data(%struct.jpeg_decompress_struct* %cinfo, i64 %num_bytes) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %num_bytes.addr = alloca i64, align 8
  %src = alloca %struct.my_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i64 %num_bytes, i64* %num_bytes.addr, align 8, !tbaa !27
  %0 = bitcast %struct.my_source_mgr** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_source_mgr* %2 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %3, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %4 = load i64, i64* %num_bytes.addr, align 8, !tbaa !27
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load i64, i64* %num_bytes.addr, align 8, !tbaa !27
  %6 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %6, i32 0, i32 0
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub, i32 0, i32 1
  %7 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !24
  %cmp2 = icmp sgt i64 %5, %7
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %8, i32 0, i32 0
  %bytes_in_buffer4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub3, i32 0, i32 1
  %9 = load i64, i64* %bytes_in_buffer4, align 8, !tbaa !24
  %10 = load i64, i64* %num_bytes.addr, align 8, !tbaa !27
  %sub = sub nsw i64 %10, %9
  store i64 %sub, i64* %num_bytes.addr, align 8, !tbaa !27
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @fill_input_buffer(%struct.jpeg_decompress_struct* %11)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i64, i64* %num_bytes.addr, align 8, !tbaa !27
  %13 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %13, i32 0, i32 0
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub5, i32 0, i32 0
  %14 = load i8*, i8** %next_input_byte, align 8, !tbaa !25
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %12
  store i8* %add.ptr, i8** %next_input_byte, align 8, !tbaa !25
  %15 = load i64, i64* %num_bytes.addr, align 8, !tbaa !27
  %16 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8, !tbaa !2
  %pub6 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %16, i32 0, i32 0
  %bytes_in_buffer7 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub6, i32 0, i32 1
  %17 = load i64, i64* %bytes_in_buffer7, align 8, !tbaa !24
  %sub8 = sub i64 %17, %15
  store i64 %sub8, i64* %bytes_in_buffer7, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %18 = bitcast %struct.my_source_mgr** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #3
  ret void
}

declare i32 @jpeg_resync_to_restart(%struct.jpeg_decompress_struct*, i32) #2

; Function Attrs: nounwind ssp uwtable
define internal void @term_source(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
!6 = !{!7, !3, i64 32}
!7 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !4, i64 56, !8, i64 60, !8, i64 64, !9, i64 72, !8, i64 80, !8, i64 84, !4, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !4, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !3, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !8, i64 288, !3, i64 296, !8, i64 304, !8, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !8, i64 360, !8, i64 364, !4, i64 368, !10, i64 370, !10, i64 372, !8, i64 376, !4, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !3, i64 408, !8, i64 416, !4, i64 424, !8, i64 456, !8, i64 460, !8, i64 464, !4, i64 468, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!7, !3, i64 8}
!12 = !{!13, !3, i64 0}
!13 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!14 = !{!"long", !4, i64 0}
!15 = !{!16, !3, i64 64}
!16 = !{!"", !17, i64 0, !3, i64 56, !3, i64 64, !8, i64 72}
!17 = !{!"jpeg_source_mgr", !3, i64 0, !14, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48}
!18 = !{!16, !3, i64 16}
!19 = !{!16, !3, i64 24}
!20 = !{!16, !3, i64 32}
!21 = !{!16, !3, i64 40}
!22 = !{!16, !3, i64 48}
!23 = !{!16, !3, i64 56}
!24 = !{!16, !14, i64 8}
!25 = !{!16, !3, i64 0}
!26 = !{!16, !8, i64 72}
!27 = !{!14, !14, i64 0}
!28 = !{!7, !3, i64 0}
!29 = !{!30, !8, i64 40}
!30 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !14, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!31 = !{!30, !3, i64 0}
!32 = !{!30, !3, i64 8}
!33 = !{!4, !4, i64 0}
