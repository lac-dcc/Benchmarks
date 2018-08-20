; ModuleID = 'jdatadst.c'
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
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.my_destination_mgr = type { %struct.jpeg_destination_mgr, %struct.__sFILE*, i8* }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_stdio_dest(%struct.jpeg_compress_struct* %cinfo, %struct.__sFILE* %outfile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %outfile.addr = alloca %struct.__sFILE*, align 8
  %dest = alloca %struct.my_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.__sFILE* %outfile, %struct.__sFILE** %outfile.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !6
  %cmp = icmp eq %struct.jpeg_destination_mgr* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !11
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = bitcast %struct.jpeg_compress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 0, i64 56)
  %8 = bitcast i8* %call to %struct.jpeg_destination_mgr*
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 5
  store %struct.jpeg_destination_mgr* %8, %struct.jpeg_destination_mgr** %dest2, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 5
  %11 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !6
  %12 = bitcast %struct.jpeg_destination_mgr* %11 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %12, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %13 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %13, i32 0, i32 0
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @init_destination, void (%struct.jpeg_compress_struct*)** %init_destination, align 8, !tbaa !15
  %14 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %14, i32 0, i32 0
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub4, i32 0, i32 3
  store i32 (%struct.jpeg_compress_struct*)* @empty_output_buffer, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8, !tbaa !18
  %15 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %15, i32 0, i32 0
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub5, i32 0, i32 4
  store void (%struct.jpeg_compress_struct*)* @term_destination, void (%struct.jpeg_compress_struct*)** %term_destination, align 8, !tbaa !19
  %16 = load %struct.__sFILE*, %struct.__sFILE** %outfile.addr, align 8, !tbaa !2
  %17 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %outfile6 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %17, i32 0, i32 1
  store %struct.__sFILE* %16, %struct.__sFILE** %outfile6, align 8, !tbaa !20
  %18 = bitcast %struct.my_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @init_destination(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %dest = alloca %struct.my_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_destination_mgr* %2 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %3, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 1
  %5 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !11
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %5, i32 0, i32 0
  %6 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %8 = bitcast %struct.jpeg_compress_struct* %7 to %struct.jpeg_common_struct*
  %call = call i8* %6(%struct.jpeg_common_struct* %8, i32 1, i64 4096)
  %9 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %9, i32 0, i32 2
  store i8* %call, i8** %buffer, align 8, !tbaa !21
  %10 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %buffer2 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer2, align 8, !tbaa !21
  %12 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %12, i32 0, i32 0
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub, i32 0, i32 0
  store i8* %11, i8** %next_output_byte, align 8, !tbaa !22
  %13 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %13, i32 0, i32 0
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub3, i32 0, i32 1
  store i64 4096, i64* %free_in_buffer, align 8, !tbaa !23
  %14 = bitcast %struct.my_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @empty_output_buffer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %dest = alloca %struct.my_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_destination_mgr* %2 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %3, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %4 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8, !tbaa !21
  %6 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %outfile = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %6, i32 0, i32 1
  %7 = load %struct.__sFILE*, %struct.__sFILE** %outfile, align 8, !tbaa !20
  %call = call i64 @"\01_fwrite"(i8* %5, i64 1, i64 4096, %struct.__sFILE* %7)
  %cmp = icmp ne i64 %call, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !24
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4, !tbaa !25
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !24
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !27
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %buffer3 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer3, align 8, !tbaa !21
  %17 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %17, i32 0, i32 0
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub, i32 0, i32 0
  store i8* %16, i8** %next_output_byte, align 8, !tbaa !22
  %18 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %18, i32 0, i32 0
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub4, i32 0, i32 1
  store i64 4096, i64* %free_in_buffer, align 8, !tbaa !23
  %19 = bitcast %struct.my_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #3
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal void @term_destination(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %dest = alloca %struct.my_destination_mgr*, align 8
  %datacount = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_destination_mgr* %2 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %3, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %4 = bitcast i64* %datacount to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %5, i32 0, i32 0
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub, i32 0, i32 1
  %6 = load i64, i64* %free_in_buffer, align 8, !tbaa !23
  %sub = sub i64 4096, %6
  store i64 %sub, i64* %datacount, align 8, !tbaa !28
  %7 = load i64, i64* %datacount, align 8, !tbaa !28
  %cmp = icmp ugt i64 %7, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8, !tbaa !21
  %10 = load i64, i64* %datacount, align 8, !tbaa !28
  %11 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %outfile = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %11, i32 0, i32 1
  %12 = load %struct.__sFILE*, %struct.__sFILE** %outfile, align 8, !tbaa !20
  %call = call i64 @"\01_fwrite"(i8* %9, i64 1, i64 %10, %struct.__sFILE* %12)
  %13 = load i64, i64* %datacount, align 8, !tbaa !28
  %cmp2 = icmp ne i64 %call, %13
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !24
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4, !tbaa !25
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !24
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !27
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %21 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %outfile6 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %21, i32 0, i32 1
  %22 = load %struct.__sFILE*, %struct.__sFILE** %outfile6, align 8, !tbaa !20
  %call7 = call i32 @fflush(%struct.__sFILE* %22)
  %23 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8, !tbaa !2
  %outfile8 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %23, i32 0, i32 1
  %24 = load %struct.__sFILE*, %struct.__sFILE** %outfile8, align 8, !tbaa !20
  %call9 = call i32 @ferror(%struct.__sFILE* %24)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.5
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !24
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 36, i32* %msg_code12, align 4, !tbaa !25
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !24
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8, !tbaa !27
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %31 = bitcast %struct.jpeg_compress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %31)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end.5
  %32 = bitcast i64* %datacount to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #3
  %33 = bitcast %struct.my_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #2

declare i32 @fflush(%struct.__sFILE*) #2

declare i32 @ferror(%struct.__sFILE*) #2

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
!7 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !9, i64 56, !8, i64 64, !8, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !8, i64 232, !3, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !4, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !4, i64 284, !10, i64 286, !10, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !4, i64 320, !8, i64 352, !8, i64 356, !8, i64 360, !4, i64 364, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!7, !3, i64 8}
!12 = !{!13, !3, i64 0}
!13 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!14 = !{!"long", !4, i64 0}
!15 = !{!16, !3, i64 16}
!16 = !{!"", !17, i64 0, !3, i64 40, !3, i64 48}
!17 = !{!"jpeg_destination_mgr", !3, i64 0, !14, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!18 = !{!16, !3, i64 24}
!19 = !{!16, !3, i64 32}
!20 = !{!16, !3, i64 40}
!21 = !{!16, !3, i64 48}
!22 = !{!16, !3, i64 0}
!23 = !{!16, !14, i64 8}
!24 = !{!7, !3, i64 0}
!25 = !{!26, !8, i64 40}
!26 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !14, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!27 = !{!26, !3, i64 0}
!28 = !{!14, !14, i64 0}
