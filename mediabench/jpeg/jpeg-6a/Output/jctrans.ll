; ModuleID = 'jctrans.c'
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
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, %struct.jvirt_barray_control**, [10 x [64 x i16]*] }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_write_coefficients(%struct.jpeg_compress_struct* %cinfo, %struct.jvirt_barray_control** %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef_arrays.addr = alloca %struct.jvirt_barray_control**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jvirt_barray_control** %coef_arrays, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !12
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %global_state1, align 4, !tbaa !6
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %5, i32* %arrayidx, align 4, !tbaa !15
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_suppress_tables(%struct.jpeg_compress_struct* %13, i32 0)
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !11
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 4
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %reset_error_mgr, align 8, !tbaa !17
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 5
  %20 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !18
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %20, i32 0, i32 2
  %21 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %init_destination, align 8, !tbaa !19
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %21(%struct.jpeg_compress_struct* %22)
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8, !tbaa !2
  call void @transencode_master_selection(%struct.jpeg_compress_struct* %23, %struct.jvirt_barray_control** %24)
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 36
  store i32 0, i32* %next_scanline, align 4, !tbaa !21
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 4
  store i32 103, i32* %global_state5, align 4, !tbaa !6
  ret void
}

declare void @jpeg_suppress_tables(%struct.jpeg_compress_struct*, i32) #1

; Function Attrs: nounwind ssp uwtable
define internal void @transencode_master_selection(%struct.jpeg_compress_struct* %cinfo, %struct.jvirt_barray_control** %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef_arrays.addr = alloca %struct.jvirt_barray_control**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jvirt_barray_control** %coef_arrays, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 8
  store i32 1, i32* %input_components, align 4, !tbaa !22
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_c_master_control(%struct.jpeg_compress_struct* %1, i32 1)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 24
  %3 = load i32, i32* %arith_code, align 4, !tbaa !23
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 1, i32* %msg_code, align 4, !tbaa !12
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 37
  %12 = load i32, i32* %progressive_mode, align 4, !tbaa !24
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_phuff_encoder(%struct.jpeg_compress_struct* %13)
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_huff_encoder(%struct.jpeg_compress_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8, !tbaa !2
  call void @transencode_coef_controller(%struct.jpeg_compress_struct* %15, %struct.jvirt_barray_control** %16)
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* %17)
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !25
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i32 0, i32 6
  %realize_virt_arrays6 = bitcast {}** %realize_virt_arrays to void (%struct.jpeg_common_struct*)**
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %realize_virt_arrays6, align 8, !tbaa !26
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = bitcast %struct.jpeg_compress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 55
  %24 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !28
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %24, i32 0, i32 1
  %25 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_file_header, align 8, !tbaa !29
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void %25(%struct.jpeg_compress_struct* %26)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct* %srcinfo, %struct.jpeg_compress_struct* %dstinfo) #0 {
entry:
  %srcinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dstinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %qtblptr = alloca %struct.JQUANT_TBL**, align 8
  %incomp = alloca %struct.jpeg_component_info*, align 8
  %outcomp = alloca %struct.jpeg_component_info*, align 8
  %c_quant = alloca %struct.JQUANT_TBL*, align 8
  %slot_quant = alloca %struct.JQUANT_TBL*, align 8
  %tblno = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %srcinfo, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_compress_struct* %dstinfo, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.JQUANT_TBL*** %qtblptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast %struct.jpeg_component_info** %incomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #5
  %2 = bitcast %struct.jpeg_component_info** %outcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #5
  %3 = bitcast %struct.JQUANT_TBL** %c_quant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #5
  %4 = bitcast %struct.JQUANT_TBL** %slot_quant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #5
  %5 = bitcast i32* %tblno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #5
  %6 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #5
  %7 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #5
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 4
  %9 = load i32, i32* %global_state, align 4, !tbaa !6
  %cmp = icmp ne i32 %9, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !12
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 4
  %13 = load i32, i32* %global_state1, align 4, !tbaa !6
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %13, i32* %arrayidx, align 4, !tbaa !15
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 6
  %22 = load i32, i32* %image_width, align 4, !tbaa !31
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %image_width4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 6
  store i32 %22, i32* %image_width4, align 4, !tbaa !33
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 7
  %25 = load i32, i32* %image_height, align 4, !tbaa !34
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %image_height5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 7
  store i32 %25, i32* %image_height5, align 4, !tbaa !35
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 8
  %28 = load i32, i32* %num_components, align 4, !tbaa !36
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 8
  store i32 %28, i32* %input_components, align 4, !tbaa !22
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 9
  %31 = load i32, i32* %jpeg_color_space, align 4, !tbaa !37
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 9
  store i32 %31, i32* %in_color_space, align 4, !tbaa !38
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* %33)
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %jpeg_color_space6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 9
  %36 = load i32, i32* %jpeg_color_space6, align 4, !tbaa !37
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %34, i32 %36)
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 42
  %38 = load i32, i32* %data_precision, align 4, !tbaa !39
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %data_precision7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 11
  store i32 %38, i32* %data_precision7, align 4, !tbaa !40
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 56
  %41 = load i32, i32* %CCIR601_sampling, align 4, !tbaa !41
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %CCIR601_sampling8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 26
  store i32 %41, i32* %CCIR601_sampling8, align 4, !tbaa !42
  store i32 0, i32* %tblno, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %43 = load i32, i32* %tblno, align 4, !tbaa !15
  %cmp9 = icmp slt i32 %43, 4
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %tblno, align 4, !tbaa !15
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 39
  %arrayidx10 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %46 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx10, align 8, !tbaa !2
  %cmp11 = icmp ne %struct.JQUANT_TBL* %46, null
  br i1 %cmp11, label %if.then.12, label %if.end.27

if.then.12:                                       ; preds = %for.body
  %47 = load i32, i32* %tblno, align 4, !tbaa !15
  %idxprom13 = sext i32 %47 to i64
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 15
  %arrayidx15 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs14, i32 0, i64 %idxprom13
  store %struct.JQUANT_TBL** %arrayidx15, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  %49 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  %50 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %49, align 8, !tbaa !2
  %cmp16 = icmp eq %struct.JQUANT_TBL* %50, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.12
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %52 = bitcast %struct.jpeg_compress_struct* %51 to %struct.jpeg_common_struct*
  %call = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %52)
  %53 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  store %struct.JQUANT_TBL* %call, %struct.JQUANT_TBL** %53, align 8, !tbaa !2
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.12
  %54 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  %55 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %54, align 8, !tbaa !2
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %55, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i32 0
  %56 = bitcast i16* %arraydecay to i8*
  %57 = load i32, i32* %tblno, align 4, !tbaa !15
  %idxprom19 = sext i32 %57 to i64
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 39
  %arrayidx21 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs20, i32 0, i64 %idxprom19
  %59 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx21, align 8, !tbaa !2
  %quantval22 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %59, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval22, i32 0, i32 0
  %60 = bitcast i16* %arraydecay23 to i8*
  %61 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  %62 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %61, align 8, !tbaa !2
  %quantval24 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %62, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval24, i32 0, i32 0
  %63 = bitcast i16* %arraydecay25 to i8*
  %64 = call i64 @llvm.objectsize.i64.p0i8(i8* %63, i1 false)
  %call26 = call i8* @__memcpy_chk(i8* %56, i8* %60, i64 128, i64 %64) #5
  %65 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  %66 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %65, align 8, !tbaa !2
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %66, i32 0, i32 1
  store i32 0, i32* %sent_table, align 4, !tbaa !43
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %67 = load i32, i32* %tblno, align 4, !tbaa !15
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %tblno, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %num_components28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 8
  %69 = load i32, i32* %num_components28, align 4, !tbaa !36
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %num_components29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 12
  store i32 %69, i32* %num_components29, align 4, !tbaa !45
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %num_components30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 12
  %72 = load i32, i32* %num_components30, align 4, !tbaa !45
  %cmp31 = icmp slt i32 %72, 1
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %num_components32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %73, i32 0, i32 12
  %74 = load i32, i32* %num_components32, align 4, !tbaa !45
  %cmp33 = icmp sgt i32 %74, 10
  br i1 %cmp33, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %lor.lhs.false, %for.end
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !11
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 5
  store i32 24, i32* %msg_code36, align 4, !tbaa !12
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %num_components37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 12
  %78 = load i32, i32* %num_components37, align 4, !tbaa !45
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8, !tbaa !11
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 6
  %i40 = bitcast %union.anon* %msg_parm39 to [8 x i32]*
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %i40, i32 0, i64 0
  store i32 %78, i32* %arrayidx41, align 4, !tbaa !15
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %81, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8, !tbaa !11
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 6
  %i44 = bitcast %union.anon* %msg_parm43 to [8 x i32]*
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %i44, i32 0, i64 1
  store i32 10, i32* %arrayidx45, align 4, !tbaa !15
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 0
  %84 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8, !tbaa !11
  %error_exit47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %84, i32 0, i32 0
  %85 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit47, align 8, !tbaa !16
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %87 = bitcast %struct.jpeg_compress_struct* %86 to %struct.jpeg_common_struct*
  call void %85(%struct.jpeg_common_struct* %87)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.34, %lor.lhs.false
  store i32 0, i32* %ci, align 4, !tbaa !15
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 43
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !46
  store %struct.jpeg_component_info* %89, %struct.jpeg_component_info** %incomp, align 8, !tbaa !2
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %comp_info49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 14
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info49, align 8, !tbaa !47
  store %struct.jpeg_component_info* %91, %struct.jpeg_component_info** %outcomp, align 8, !tbaa !2
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.108, %if.end.48
  %92 = load i32, i32* %ci, align 4, !tbaa !15
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %num_components51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %93, i32 0, i32 12
  %94 = load i32, i32* %num_components51, align 4, !tbaa !45
  %cmp52 = icmp slt i32 %92, %94
  br i1 %cmp52, label %for.body.53, label %for.end.111

for.body.53:                                      ; preds = %for.cond.50
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8, !tbaa !2
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 0
  %96 = load i32, i32* %component_id, align 4, !tbaa !48
  %97 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8, !tbaa !2
  %component_id54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %97, i32 0, i32 0
  store i32 %96, i32* %component_id54, align 4, !tbaa !48
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %98, i32 0, i32 2
  %99 = load i32, i32* %h_samp_factor, align 4, !tbaa !50
  %100 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8, !tbaa !2
  %h_samp_factor55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i32 0, i32 2
  store i32 %99, i32* %h_samp_factor55, align 4, !tbaa !50
  %101 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %101, i32 0, i32 3
  %102 = load i32, i32* %v_samp_factor, align 4, !tbaa !51
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8, !tbaa !2
  %v_samp_factor56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 3
  store i32 %102, i32* %v_samp_factor56, align 4, !tbaa !51
  %104 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8, !tbaa !2
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %104, i32 0, i32 4
  %105 = load i32, i32* %quant_tbl_no, align 4, !tbaa !52
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8, !tbaa !2
  %quant_tbl_no57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 0, i32 4
  store i32 %105, i32* %quant_tbl_no57, align 4, !tbaa !52
  %107 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8, !tbaa !2
  %quant_tbl_no58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %107, i32 0, i32 4
  %108 = load i32, i32* %quant_tbl_no58, align 4, !tbaa !52
  store i32 %108, i32* %tblno, align 4, !tbaa !15
  %109 = load i32, i32* %tblno, align 4, !tbaa !15
  %cmp59 = icmp slt i32 %109, 0
  br i1 %cmp59, label %if.then.67, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %for.body.53
  %110 = load i32, i32* %tblno, align 4, !tbaa !15
  %cmp61 = icmp sge i32 %110, 4
  br i1 %cmp61, label %if.then.67, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.60
  %111 = load i32, i32* %tblno, align 4, !tbaa !15
  %idxprom63 = sext i32 %111 to i64
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 39
  %arrayidx65 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs64, i32 0, i64 %idxprom63
  %113 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx65, align 8, !tbaa !2
  %cmp66 = icmp eq %struct.JQUANT_TBL* %113, null
  br i1 %cmp66, label %if.then.67, label %if.end.76

if.then.67:                                       ; preds = %lor.lhs.false.62, %lor.lhs.false.60, %for.body.53
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 0
  %115 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !11
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %115, i32 0, i32 5
  store i32 51, i32* %msg_code69, align 4, !tbaa !12
  %116 = load i32, i32* %tblno, align 4, !tbaa !15
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %117, i32 0, i32 0
  %118 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !11
  %msg_parm71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %118, i32 0, i32 6
  %i72 = bitcast %union.anon* %msg_parm71 to [8 x i32]*
  %arrayidx73 = getelementptr inbounds [8 x i32], [8 x i32]* %i72, i32 0, i64 0
  store i32 %116, i32* %arrayidx73, align 4, !tbaa !15
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err74 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8, !tbaa !11
  %error_exit75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i32 0, i32 0
  %121 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit75, align 8, !tbaa !16
  %122 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %123 = bitcast %struct.jpeg_compress_struct* %122 to %struct.jpeg_common_struct*
  call void %121(%struct.jpeg_common_struct* %123)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.67, %lor.lhs.false.62
  %124 = load i32, i32* %tblno, align 4, !tbaa !15
  %idxprom77 = sext i32 %124 to i64
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %125, i32 0, i32 39
  %arrayidx79 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs78, i32 0, i64 %idxprom77
  %126 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx79, align 8, !tbaa !2
  store %struct.JQUANT_TBL* %126, %struct.JQUANT_TBL** %slot_quant, align 8, !tbaa !2
  %127 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8, !tbaa !2
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i32 0, i32 19
  %128 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8, !tbaa !53
  store %struct.JQUANT_TBL* %128, %struct.JQUANT_TBL** %c_quant, align 8, !tbaa !2
  %129 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %c_quant, align 8, !tbaa !2
  %cmp80 = icmp ne %struct.JQUANT_TBL* %129, null
  br i1 %cmp80, label %if.then.81, label %if.end.107

if.then.81:                                       ; preds = %if.end.76
  store i32 0, i32* %coefi, align 4, !tbaa !15
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.104, %if.then.81
  %130 = load i32, i32* %coefi, align 4, !tbaa !15
  %cmp83 = icmp slt i32 %130, 64
  br i1 %cmp83, label %for.body.84, label %for.end.106

for.body.84:                                      ; preds = %for.cond.82
  %131 = load i32, i32* %coefi, align 4, !tbaa !15
  %idxprom85 = sext i32 %131 to i64
  %132 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %c_quant, align 8, !tbaa !2
  %quantval86 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %132, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval86, i32 0, i64 %idxprom85
  %133 = load i16, i16* %arrayidx87, align 2, !tbaa !54
  %conv = zext i16 %133 to i32
  %134 = load i32, i32* %coefi, align 4, !tbaa !15
  %idxprom88 = sext i32 %134 to i64
  %135 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %slot_quant, align 8, !tbaa !2
  %quantval89 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %135, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval89, i32 0, i64 %idxprom88
  %136 = load i16, i16* %arrayidx90, align 2, !tbaa !54
  %conv91 = zext i16 %136 to i32
  %cmp92 = icmp ne i32 %conv, %conv91
  br i1 %cmp92, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %for.body.84
  %137 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %137, i32 0, i32 0
  %138 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err95, align 8, !tbaa !11
  %msg_code96 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %138, i32 0, i32 5
  store i32 43, i32* %msg_code96, align 4, !tbaa !12
  %139 = load i32, i32* %tblno, align 4, !tbaa !15
  %140 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err97 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %140, i32 0, i32 0
  %141 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err97, align 8, !tbaa !11
  %msg_parm98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %141, i32 0, i32 6
  %i99 = bitcast %union.anon* %msg_parm98 to [8 x i32]*
  %arrayidx100 = getelementptr inbounds [8 x i32], [8 x i32]* %i99, i32 0, i64 0
  store i32 %139, i32* %arrayidx100, align 4, !tbaa !15
  %142 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %err101 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %142, i32 0, i32 0
  %143 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err101, align 8, !tbaa !11
  %error_exit102 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %143, i32 0, i32 0
  %144 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit102, align 8, !tbaa !16
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8, !tbaa !2
  %146 = bitcast %struct.jpeg_compress_struct* %145 to %struct.jpeg_common_struct*
  call void %144(%struct.jpeg_common_struct* %146)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.94, %for.body.84
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %147 = load i32, i32* %coefi, align 4, !tbaa !15
  %inc105 = add nsw i32 %147, 1
  store i32 %inc105, i32* %coefi, align 4, !tbaa !15
  br label %for.cond.82

for.end.106:                                      ; preds = %for.cond.82
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.106, %if.end.76
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %148 = load i32, i32* %ci, align 4, !tbaa !15
  %inc109 = add nsw i32 %148, 1
  store i32 %inc109, i32* %ci, align 4, !tbaa !15
  %149 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %149, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %incomp, align 8, !tbaa !2
  %150 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8, !tbaa !2
  %incdec.ptr110 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %150, i32 1
  store %struct.jpeg_component_info* %incdec.ptr110, %struct.jpeg_component_info** %outcomp, align 8, !tbaa !2
  br label %for.cond.50

for.end.111:                                      ; preds = %for.cond.50
  %151 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #5
  %152 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #5
  %153 = bitcast i32* %tblno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #5
  %154 = bitcast %struct.JQUANT_TBL** %slot_quant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #5
  %155 = bitcast %struct.JQUANT_TBL** %c_quant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #5
  %156 = bitcast %struct.jpeg_component_info** %outcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #5
  %157 = bitcast %struct.jpeg_component_info** %incomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #5
  %158 = bitcast %struct.JQUANT_TBL*** %qtblptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #5
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

declare void @jpeg_set_colorspace(%struct.jpeg_compress_struct*, i32) #1

declare %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct*) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @jinit_c_master_control(%struct.jpeg_compress_struct*, i32) #1

declare void @jinit_phuff_encoder(%struct.jpeg_compress_struct*) #1

declare void @jinit_huff_encoder(%struct.jpeg_compress_struct*) #1

; Function Attrs: nounwind ssp uwtable
define internal void @transencode_coef_controller(%struct.jpeg_compress_struct* %cinfo, %struct.jvirt_barray_control** %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef_arrays.addr = alloca %struct.jvirt_barray_control**, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %buffer = alloca [64 x i16]*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jvirt_barray_control** %coef_arrays, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #5
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !25
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !55
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = bitcast %struct.jpeg_compress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 120)
  %8 = bitcast i8* %call to %struct.my_coef_controller*
  store %struct.my_coef_controller* %8, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %9 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %10 = bitcast %struct.my_coef_controller* %9 to %struct.jpeg_c_coef_controller*
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 54
  store %struct.jpeg_c_coef_controller* %10, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !56
  %12 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %12, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_coef, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !57
  %13 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %13, i32 0, i32 0
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub2, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_output, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8, !tbaa !60
  %14 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8, !tbaa !2
  %15 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %15, i32 0, i32 5
  store %struct.jvirt_barray_control** %14, %struct.jvirt_barray_control*** %whole_image, align 8, !tbaa !61
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem3, align 8, !tbaa !25
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i32 0, i32 1
  %18 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !62
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  %call4 = call i8* %18(%struct.jpeg_common_struct* %20, i32 1, i64 1280)
  %21 = bitcast i8* %call4 to [64 x i16]*
  store [64 x i16]* %21, [64 x i16]** %buffer, align 8, !tbaa !2
  %22 = load [64 x i16]*, [64 x i16]** %buffer, align 8, !tbaa !2
  %23 = bitcast [64 x i16]* %22 to i8*
  call void @jzero_far(i8* %23, i64 1280)
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, i32* %i, align 4, !tbaa !15
  %cmp = icmp slt i32 %24, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load [64 x i16]*, [64 x i16]** %buffer, align 8, !tbaa !2
  %26 = load i32, i32* %i, align 4, !tbaa !15
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %25, i64 %idx.ext
  %27 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %dummy_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %28, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %dummy_buffer, i32 0, i64 %idxprom
  store [64 x i16]* %add.ptr, [64 x i16]** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #5
  %31 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #5
  %32 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #5
  ret void
}

declare void @jinit_marker_writer(%struct.jpeg_compress_struct*) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_coef(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !63
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 54
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !56
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = load i32, i32* %pass_mode.addr, align 4, !tbaa !63
  %cmp = icmp ne i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4, !tbaa !12
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %11 = bitcast %struct.jpeg_compress_struct* %10 to %struct.jpeg_common_struct*
  call void %9(%struct.jpeg_common_struct* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %12, i32 0, i32 1
  store i32 0, i32* %iMCU_row_num, align 4, !tbaa !64
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %13)
  %14 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_output(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %blockcnt = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x [64 x i16]**], align 16
  %MCU_buffer = alloca [10 x [64 x i16]*], align 16
  %buffer_ptr = alloca [64 x i16]*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 54
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !56
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #5
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 43
  %7 = load i32, i32* %MCUs_per_row, align 4, !tbaa !65
  %sub = sub i32 %7, 1
  store i32 %sub, i32* %last_MCU_col, align 4, !tbaa !15
  %8 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #5
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 40
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !66
  %sub2 = sub i32 %10, 1
  store i32 %sub2, i32* %last_iMCU_row, align 4, !tbaa !15
  %11 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #5
  %12 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #5
  %13 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #5
  %14 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #5
  %15 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #5
  %16 = bitcast i32* %blockcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #5
  %17 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #5
  %18 = bitcast [4 x [64 x i16]**]* %buffer to i8*
  call void @llvm.lifetime.start(i64 32, i8* %18) #5
  %19 = bitcast [10 x [64 x i16]*]* %MCU_buffer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %19) #5
  %20 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #5
  %21 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #5
  store i32 0, i32* %ci, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %ci, align 4, !tbaa !15
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 41
  %24 = load i32, i32* %comps_in_scan, align 4, !tbaa !67
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %ci, align 4, !tbaa !15
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %27, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 1
  %29 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !25
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %29, i32 0, i32 8
  %30 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8, !tbaa !68
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 1
  %34 = load i32, i32* %component_index, align 4, !tbaa !69
  %idxprom3 = sext i32 %34 to i64
  %35 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %35, i32 0, i32 5
  %36 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %whole_image, align 8, !tbaa !61
  %arrayidx4 = getelementptr inbounds %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %36, i64 %idxprom3
  %37 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx4, align 8, !tbaa !2
  %38 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %38, i32 0, i32 1
  %39 = load i32, i32* %iMCU_row_num, align 4, !tbaa !64
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 3
  %41 = load i32, i32* %v_samp_factor, align 4, !tbaa !51
  %mul = mul i32 %39, %41
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 3
  %43 = load i32, i32* %v_samp_factor5, align 4, !tbaa !51
  %call = call [64 x i16]** %30(%struct.jpeg_common_struct* %32, %struct.jvirt_barray_control* %37, i32 %mul, i32 %43, i32 0)
  %44 = load i32, i32* %ci, align 4, !tbaa !15
  %idxprom6 = sext i32 %44 to i64
  %arrayidx7 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom6
  store [64 x i16]** %call, [64 x i16]*** %arrayidx7, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %ci, align 4, !tbaa !15
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %46, i32 0, i32 3
  %47 = load i32, i32* %MCU_vert_offset, align 4, !tbaa !70
  store i32 %47, i32* %yoffset, align 4, !tbaa !15
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.81, %for.end
  %48 = load i32, i32* %yoffset, align 4, !tbaa !15
  %49 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %49, i32 0, i32 4
  %50 = load i32, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !71
  %cmp9 = icmp slt i32 %48, %50
  br i1 %cmp9, label %for.body.10, label %for.end.83

for.body.10:                                      ; preds = %for.cond.8
  %51 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %51, i32 0, i32 2
  %52 = load i32, i32* %mcu_ctr, align 4, !tbaa !72
  store i32 %52, i32* %MCU_col_num, align 4, !tbaa !15
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.77, %for.body.10
  %53 = load i32, i32* %MCU_col_num, align 4, !tbaa !15
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCUs_per_row12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 43
  %55 = load i32, i32* %MCUs_per_row12, align 4, !tbaa !65
  %cmp13 = icmp ult i32 %53, %55
  br i1 %cmp13, label %for.body.14, label %for.end.79

for.body.14:                                      ; preds = %for.cond.11
  store i32 0, i32* %blkn, align 4, !tbaa !15
  store i32 0, i32* %ci, align 4, !tbaa !15
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.69, %for.body.14
  %56 = load i32, i32* %ci, align 4, !tbaa !15
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 41
  %58 = load i32, i32* %comps_in_scan16, align 4, !tbaa !67
  %cmp17 = icmp slt i32 %56, %58
  br i1 %cmp17, label %for.body.18, label %for.end.71

for.body.18:                                      ; preds = %for.cond.15
  %59 = load i32, i32* %ci, align 4, !tbaa !15
  %idxprom19 = sext i32 %59 to i64
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 42
  %arrayidx21 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info20, i32 0, i64 %idxprom19
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx21, align 8, !tbaa !2
  store %struct.jpeg_component_info* %61, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %62 = load i32, i32* %MCU_col_num, align 4, !tbaa !15
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 0, i32 13
  %64 = load i32, i32* %MCU_width, align 4, !tbaa !73
  %mul22 = mul i32 %62, %64
  store i32 %mul22, i32* %start_col, align 4, !tbaa !15
  %65 = load i32, i32* %MCU_col_num, align 4, !tbaa !15
  %66 = load i32, i32* %last_MCU_col, align 4, !tbaa !15
  %cmp23 = icmp ult i32 %65, %66
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.18
  %67 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width24 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %67, i32 0, i32 13
  %68 = load i32, i32* %MCU_width24, align 4, !tbaa !73
  br label %cond.end

cond.false:                                       ; preds = %for.body.18
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 17
  %70 = load i32, i32* %last_col_width, align 4, !tbaa !74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %68, %cond.true ], [ %70, %cond.false ]
  store i32 %cond, i32* %blockcnt, align 4, !tbaa !15
  store i32 0, i32* %yindex, align 4, !tbaa !15
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.66, %cond.end
  %71 = load i32, i32* %yindex, align 4, !tbaa !15
  %72 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %72, i32 0, i32 14
  %73 = load i32, i32* %MCU_height, align 4, !tbaa !75
  %cmp26 = icmp slt i32 %71, %73
  br i1 %cmp26, label %for.body.27, label %for.end.68

for.body.27:                                      ; preds = %for.cond.25
  %74 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num28 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %74, i32 0, i32 1
  %75 = load i32, i32* %iMCU_row_num28, align 4, !tbaa !64
  %76 = load i32, i32* %last_iMCU_row, align 4, !tbaa !15
  %cmp29 = icmp ult i32 %75, %76
  br i1 %cmp29, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.27
  %77 = load i32, i32* %yindex, align 4, !tbaa !15
  %78 = load i32, i32* %yoffset, align 4, !tbaa !15
  %add = add nsw i32 %77, %78
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 0, i32 18
  %80 = load i32, i32* %last_row_height, align 4, !tbaa !76
  %cmp30 = icmp slt i32 %add, %80
  br i1 %cmp30, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body.27
  %81 = load i32, i32* %yindex, align 4, !tbaa !15
  %82 = load i32, i32* %yoffset, align 4, !tbaa !15
  %add31 = add nsw i32 %81, %82
  %idxprom32 = sext i32 %add31 to i64
  %83 = load i32, i32* %ci, align 4, !tbaa !15
  %idxprom33 = sext i32 %83 to i64
  %arrayidx34 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom33
  %84 = load [64 x i16]**, [64 x i16]*** %arrayidx34, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds [64 x i16]*, [64 x i16]** %84, i64 %idxprom32
  %85 = load [64 x i16]*, [64 x i16]** %arrayidx35, align 8, !tbaa !2
  %86 = load i32, i32* %start_col, align 4, !tbaa !15
  %idx.ext = zext i32 %86 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %85, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  store i32 0, i32* %xindex, align 4, !tbaa !15
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.42, %if.then
  %87 = load i32, i32* %xindex, align 4, !tbaa !15
  %88 = load i32, i32* %blockcnt, align 4, !tbaa !15
  %cmp37 = icmp slt i32 %87, %88
  br i1 %cmp37, label %for.body.38, label %for.end.44

for.body.38:                                      ; preds = %for.cond.36
  %89 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %89, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8, !tbaa !2
  %90 = load i32, i32* %blkn, align 4, !tbaa !15
  %inc39 = add nsw i32 %90, 1
  store i32 %inc39, i32* %blkn, align 4, !tbaa !15
  %idxprom40 = sext i32 %90 to i64
  %arrayidx41 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom40
  store [64 x i16]* %89, [64 x i16]** %arrayidx41, align 8, !tbaa !2
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.38
  %91 = load i32, i32* %xindex, align 4, !tbaa !15
  %inc43 = add nsw i32 %91, 1
  store i32 %inc43, i32* %xindex, align 4, !tbaa !15
  br label %for.cond.36

for.end.44:                                       ; preds = %for.cond.36
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %xindex, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.44
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.63, %if.end
  %92 = load i32, i32* %xindex, align 4, !tbaa !15
  %93 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %MCU_width46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %93, i32 0, i32 13
  %94 = load i32, i32* %MCU_width46, align 4, !tbaa !73
  %cmp47 = icmp slt i32 %92, %94
  br i1 %cmp47, label %for.body.48, label %for.end.65

for.body.48:                                      ; preds = %for.cond.45
  %95 = load i32, i32* %blkn, align 4, !tbaa !15
  %idxprom49 = sext i32 %95 to i64
  %96 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %dummy_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %96, i32 0, i32 6
  %arrayidx50 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %dummy_buffer, i32 0, i64 %idxprom49
  %97 = load [64 x i16]*, [64 x i16]** %arrayidx50, align 8, !tbaa !2
  %98 = load i32, i32* %blkn, align 4, !tbaa !15
  %idxprom51 = sext i32 %98 to i64
  %arrayidx52 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom51
  store [64 x i16]* %97, [64 x i16]** %arrayidx52, align 8, !tbaa !2
  %99 = load i32, i32* %blkn, align 4, !tbaa !15
  %sub53 = sub nsw i32 %99, 1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom54
  %100 = load [64 x i16]*, [64 x i16]** %arrayidx55, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds [64 x i16], [64 x i16]* %100, i64 0
  %arrayidx57 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx56, i32 0, i64 0
  %101 = load i16, i16* %arrayidx57, align 2, !tbaa !54
  %102 = load i32, i32* %blkn, align 4, !tbaa !15
  %idxprom58 = sext i32 %102 to i64
  %arrayidx59 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom58
  %103 = load [64 x i16]*, [64 x i16]** %arrayidx59, align 8, !tbaa !2
  %arrayidx60 = getelementptr inbounds [64 x i16], [64 x i16]* %103, i64 0
  %arrayidx61 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx60, i32 0, i64 0
  store i16 %101, i16* %arrayidx61, align 2, !tbaa !54
  %104 = load i32, i32* %blkn, align 4, !tbaa !15
  %inc62 = add nsw i32 %104, 1
  store i32 %inc62, i32* %blkn, align 4, !tbaa !15
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.48
  %105 = load i32, i32* %xindex, align 4, !tbaa !15
  %inc64 = add nsw i32 %105, 1
  store i32 %inc64, i32* %xindex, align 4, !tbaa !15
  br label %for.cond.45

for.end.65:                                       ; preds = %for.cond.45
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %106 = load i32, i32* %yindex, align 4, !tbaa !15
  %inc67 = add nsw i32 %106, 1
  store i32 %inc67, i32* %yindex, align 4, !tbaa !15
  br label %for.cond.25

for.end.68:                                       ; preds = %for.cond.25
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.68
  %107 = load i32, i32* %ci, align 4, !tbaa !15
  %inc70 = add nsw i32 %107, 1
  store i32 %inc70, i32* %ci, align 4, !tbaa !15
  br label %for.cond.15

for.end.71:                                       ; preds = %for.cond.15
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 59
  %109 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !77
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %109, i32 0, i32 1
  %110 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8, !tbaa !78
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i32 0
  %call72 = call i32 %110(%struct.jpeg_compress_struct* %111, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call72, 0
  br i1 %tobool, label %if.end.76, label %if.then.73

if.then.73:                                       ; preds = %for.end.71
  %112 = load i32, i32* %yoffset, align 4, !tbaa !15
  %113 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset74 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %113, i32 0, i32 3
  store i32 %112, i32* %MCU_vert_offset74, align 4, !tbaa !70
  %114 = load i32, i32* %MCU_col_num, align 4, !tbaa !15
  %115 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr75 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %115, i32 0, i32 2
  store i32 %114, i32* %mcu_ctr75, align 4, !tbaa !72
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %for.end.71
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %116 = load i32, i32* %MCU_col_num, align 4, !tbaa !15
  %inc78 = add i32 %116, 1
  store i32 %inc78, i32* %MCU_col_num, align 4, !tbaa !15
  br label %for.cond.11

for.end.79:                                       ; preds = %for.cond.11
  %117 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr80 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %117, i32 0, i32 2
  store i32 0, i32* %mcu_ctr80, align 4, !tbaa !72
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.79
  %118 = load i32, i32* %yoffset, align 4, !tbaa !15
  %inc82 = add nsw i32 %118, 1
  store i32 %inc82, i32* %yoffset, align 4, !tbaa !15
  br label %for.cond.8

for.end.83:                                       ; preds = %for.cond.8
  %119 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num84 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %119, i32 0, i32 1
  %120 = load i32, i32* %iMCU_row_num84, align 4, !tbaa !64
  %inc85 = add i32 %120, 1
  store i32 %inc85, i32* %iMCU_row_num84, align 4, !tbaa !64
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %121)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.83, %if.then.73
  %122 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #5
  %123 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #5
  %124 = bitcast [10 x [64 x i16]*]* %MCU_buffer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %124) #5
  %125 = bitcast [4 x [64 x i16]**]* %buffer to i8*
  call void @llvm.lifetime.end(i64 32, i8* %125) #5
  %126 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #5
  %127 = bitcast i32* %blockcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #5
  %128 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #5
  %129 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #5
  %130 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #5
  %131 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #5
  %132 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #5
  %133 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #5
  %134 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #5
  %135 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #5
  %136 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #5
  %137 = load i32, i32* %retval
  ret i32 %137
}

declare void @jzero_far(i8*, i64) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_iMCU_row(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 54
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !56
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 41
  %5 = load i32, i32* %comps_in_scan, align 4, !tbaa !67
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i32 0, i32 4
  store i32 1, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !71
  br label %if.end.9

if.else:                                          ; preds = %entry
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i32 0, i32 1
  %8 = load i32, i32* %iMCU_row_num, align 4, !tbaa !64
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 40
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !66
  %sub = sub i32 %10, 1
  %cmp2 = icmp ult i32 %8, %sub
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 3
  %13 = load i32, i32* %v_samp_factor, align 4, !tbaa !51
  %14 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %14, i32 0, i32 4
  store i32 %13, i32* %MCU_rows_per_iMCU_row4, align 4, !tbaa !71
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 42
  %arrayidx7 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info6, i32 0, i64 0
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx7, align 8, !tbaa !2
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 18
  %17 = load i32, i32* %last_row_height, align 4, !tbaa !76
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 4
  store i32 %17, i32* %MCU_rows_per_iMCU_row8, align 4, !tbaa !71
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %19 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %19, i32 0, i32 2
  store i32 0, i32* %mcu_ctr, align 4, !tbaa !72
  %20 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !2
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %20, i32 0, i32 3
  store i32 0, i32* %MCU_vert_offset, align 4, !tbaa !70
  %21 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #5
  ret void
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind argmemonly }
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
!6 = !{!7, !8, i64 28}
!7 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !9, i64 56, !8, i64 64, !8, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !8, i64 232, !3, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !4, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !4, i64 284, !10, i64 286, !10, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !4, i64 320, !8, i64 352, !8, i64 356, !8, i64 360, !4, i64 364, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!7, !3, i64 0}
!12 = !{!13, !8, i64 40}
!13 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !14, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!14 = !{!"long", !4, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!13, !3, i64 0}
!17 = !{!13, !3, i64 32}
!18 = !{!7, !3, i64 32}
!19 = !{!20, !3, i64 16}
!20 = !{!"jpeg_destination_mgr", !3, i64 0, !14, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!21 = !{!7, !8, i64 296}
!22 = !{!7, !8, i64 48}
!23 = !{!7, !8, i64 252}
!24 = !{!7, !8, i64 300}
!25 = !{!7, !3, i64 8}
!26 = !{!27, !3, i64 48}
!27 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!28 = !{!7, !3, i64 456}
!29 = !{!30, !3, i64 8}
!30 = !{!"jpeg_marker_writer", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40}
!31 = !{!32, !8, i64 40}
!32 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !4, i64 56, !8, i64 60, !8, i64 64, !9, i64 72, !8, i64 80, !8, i64 84, !4, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !4, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !3, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !8, i64 288, !3, i64 296, !8, i64 304, !8, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !8, i64 360, !8, i64 364, !4, i64 368, !10, i64 370, !10, i64 372, !8, i64 376, !4, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !3, i64 408, !8, i64 416, !4, i64 424, !8, i64 456, !8, i64 460, !8, i64 464, !4, i64 468, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!33 = !{!7, !8, i64 40}
!34 = !{!32, !8, i64 44}
!35 = !{!7, !8, i64 44}
!36 = !{!32, !8, i64 48}
!37 = !{!32, !4, i64 52}
!38 = !{!7, !4, i64 52}
!39 = !{!32, !8, i64 288}
!40 = !{!7, !8, i64 64}
!41 = !{!32, !8, i64 384}
!42 = !{!7, !8, i64 260}
!43 = !{!44, !8, i64 128}
!44 = !{!"", !4, i64 0, !8, i64 128}
!45 = !{!7, !8, i64 68}
!46 = !{!32, !3, i64 296}
!47 = !{!7, !3, i64 80}
!48 = !{!49, !8, i64 0}
!49 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!50 = !{!49, !8, i64 8}
!51 = !{!49, !8, i64 12}
!52 = !{!49, !8, i64 16}
!53 = !{!49, !3, i64 80}
!54 = !{!10, !10, i64 0}
!55 = !{!27, !3, i64 0}
!56 = !{!7, !3, i64 448}
!57 = !{!58, !3, i64 0}
!58 = !{!"", !59, i64 0, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !3, i64 32, !4, i64 40}
!59 = !{!"jpeg_c_coef_controller", !3, i64 0, !3, i64 8}
!60 = !{!58, !3, i64 8}
!61 = !{!58, !3, i64 32}
!62 = !{!27, !3, i64 8}
!63 = !{!4, !4, i64 0}
!64 = !{!58, !8, i64 16}
!65 = !{!7, !8, i64 352}
!66 = !{!7, !8, i64 312}
!67 = !{!7, !8, i64 316}
!68 = !{!27, !3, i64 64}
!69 = !{!49, !8, i64 4}
!70 = !{!58, !8, i64 24}
!71 = !{!58, !8, i64 28}
!72 = !{!58, !8, i64 20}
!73 = !{!49, !8, i64 52}
!74 = !{!49, !8, i64 68}
!75 = !{!49, !8, i64 56}
!76 = !{!49, !8, i64 72}
!77 = !{!7, !3, i64 488}
!78 = !{!79, !3, i64 8}
!79 = !{!"jpeg_entropy_encoder", !3, i64 0, !3, i64 8, !3, i64 16}
