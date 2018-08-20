; ModuleID = 'jquant1.c'
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
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, i8**, i32, i8**, i32, [4 x i32], i32, [4 x [16 x i32]*], [4 x i16*], i32 }

@base_dither_matrix = internal constant [16 x [16 x i8]] [[16 x i8] c"\00\C00\F0\0C\CC<\FC\03\C33\F3\0F\CF?\FF", [16 x i8] c"\80@\B0p\8CL\BC|\83C\B3s\8FO\BF\7F", [16 x i8] c" \E0\10\D0,\EC\1C\DC#\E3\13\D3/\EF\1F\DF", [16 x i8] c"\A0`\90P\ACl\9C\5C\A3c\93S\AFo\9F_", [16 x i8] c"\08\C88\F8\04\C44\F4\0B\CB;\FB\07\C77\F7", [16 x i8] c"\88H\B8x\84D\B4t\8BK\BB{\87G\B7w", [16 x i8] c"(\E8\18\D8$\E4\14\D4+\EB\1B\DB'\E7\17\D7", [16 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [16 x i8] c"\02\C22\F2\0E\CE>\FE\01\C11\F1\0D\CD=\FD", [16 x i8] c"\82B\B2r\8EN\BE~\81A\B1q\8DM\BD}", [16 x i8] c"\22\E2\12\D2.\EE\1E\DE!\E1\11\D1-\ED\1D\DD", [16 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [16 x i8] c"\0A\CA:\FA\06\C66\F6\09\C99\F9\05\C55\F5", [16 x i8] c"\8AJ\BAz\86F\B6v\89I\B9y\85E\B5u", [16 x i8] c"*\EA\1A\DA&\E6\16\D6)\E9\19\D9%\E5\15\D5", [16 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 16
@select_ncolors.RGB_order = internal constant [3 x i32] [i32 1, i32 0, i32 2], align 4

; Function Attrs: nounwind ssp uwtable
define void @jinit_1pass_quantizer(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 152)
  %6 = bitcast i8* %call to %struct.my_cquantizer*
  store %struct.my_cquantizer* %6, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %7 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %8 = bitcast %struct.my_cquantizer* %7 to %struct.jpeg_color_quantizer*
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %8, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %10 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_1_quant, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8, !tbaa !15
  %11 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %11, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub2, i32 0, i32 2
  %finish_pass3 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_pass_1_quant, void (%struct.jpeg_decompress_struct*)** %finish_pass3, align 8, !tbaa !18
  %12 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %12, i32 0, i32 0
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub4, i32 0, i32 3
  %new_color_map5 = bitcast {}** %new_color_map to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @new_color_map_1_quant, void (%struct.jpeg_decompress_struct*)** %new_color_map5, align 8, !tbaa !19
  %13 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %13, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors, i32 0, i64 0
  store i16* null, i16** %arrayidx, align 8, !tbaa !2
  %14 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %odither = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %14, i32 0, i32 7
  %arrayidx6 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither, i32 0, i64 0
  store [16 x i32]* null, [16 x i32]** %arrayidx6, align 8, !tbaa !2
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 28
  %16 = load i32, i32* %out_color_components, align 4, !tbaa !20
  %cmp = icmp sgt i32 %16, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !21
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 54, i32* %msg_code, align 4, !tbaa !22
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !21
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 4, i32* %arrayidx8, align 4, !tbaa !24
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !21
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 22
  %27 = load i32, i32* %desired_number_of_colors, align 4, !tbaa !26
  %cmp10 = icmp sgt i32 %27, 256
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !21
  %msg_code13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 56, i32* %msg_code13, align 4, !tbaa !22
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err14, align 8, !tbaa !21
  %msg_parm15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 6
  %i16 = bitcast %union.anon* %msg_parm15 to [8 x i32]*
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %i16, i32 0, i64 0
  store i32 256, i32* %arrayidx17, align 4, !tbaa !24
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8, !tbaa !21
  %error_exit19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %34 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit19, align 8, !tbaa !25
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* %36)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %if.end
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @create_colormap(%struct.jpeg_decompress_struct* %37)
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @create_colorindex(%struct.jpeg_decompress_struct* %38)
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 20
  %40 = load i32, i32* %dither_mode, align 4, !tbaa !27
  %cmp21 = icmp eq i32 %40, 2
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @alloc_fs_workspace(%struct.jpeg_decompress_struct* %41)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %42 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_1_quant(%struct.jpeg_decompress_struct* %cinfo, i32 %is_pre_scan) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %is_pre_scan.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %is_pre_scan, i32* %is_pre_scan.addr, align 4, !tbaa !24
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i64* %arraysize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %6, i32 0, i32 1
  %7 = load i8**, i8*** %sv_colormap, align 8, !tbaa !28
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 32
  store i8** %7, i8*** %colormap, align 8, !tbaa !29
  %9 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_actual, align 4, !tbaa !30
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 31
  store i32 %10, i32* %actual_number_of_colors, align 4, !tbaa !31
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 20
  %13 = load i32, i32* %dither_mode, align 4, !tbaa !27
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 28
  %15 = load i32, i32* %out_color_components, align 4, !tbaa !20
  %cmp = icmp eq i32 %15, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %16 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %16, i32 0, i32 0
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @color_quantize3, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8, !tbaa !32
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %17 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %17, i32 0, i32 0
  %color_quantize3 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub2, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @color_quantize, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize3, align 8, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 28
  %19 = load i32, i32* %out_color_components5, align 4, !tbaa !20
  %cmp6 = icmp eq i32 %19, 3
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %sw.bb.4
  %20 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub8 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %20, i32 0, i32 0
  %color_quantize9 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub8, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @quantize3_ord_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize9, align 8, !tbaa !32
  br label %if.end.13

if.else.10:                                       ; preds = %sw.bb.4
  %21 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub11 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %21, i32 0, i32 0
  %color_quantize12 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub11, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @quantize_ord_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize12, align 8, !tbaa !32
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.7
  %22 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %row_index = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %22, i32 0, i32 6
  store i32 0, i32* %row_index, align 4, !tbaa !33
  %23 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %is_padded = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %23, i32 0, i32 4
  %24 = load i32, i32* %is_padded, align 4, !tbaa !34
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.13
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @create_colorindex(%struct.jpeg_decompress_struct* %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.13
  %26 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %odither = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %26, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither, i32 0, i64 0
  %27 = load [16 x i32]*, [16 x i32]** %arrayidx, align 8, !tbaa !2
  %cmp16 = icmp eq [16 x i32]* %27, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @create_odither_tables(%struct.jpeg_decompress_struct* %28)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %29 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub20 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %29, i32 0, i32 0
  %color_quantize21 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub20, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @quantize_fs_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize21, align 8, !tbaa !32
  %30 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %30, i32 0, i32 9
  store i32 0, i32* %on_odd_row, align 4, !tbaa !35
  %31 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %31, i32 0, i32 8
  %arrayidx22 = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors, i32 0, i64 0
  %32 = load i16*, i16** %arrayidx22, align 8, !tbaa !2
  %cmp23 = icmp eq i16* %32, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.19
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @alloc_fs_workspace(%struct.jpeg_decompress_struct* %33)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %sw.bb.19
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 26
  %35 = load i32, i32* %output_width, align 4, !tbaa !36
  %add = add i32 %35, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 2
  store i64 %mul, i64* %arraysize, align 8, !tbaa !37
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %36 = load i32, i32* %i, align 4, !tbaa !24
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 28
  %38 = load i32, i32* %out_color_components26, align 4, !tbaa !20
  %cmp27 = icmp slt i32 %36, %38
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors29 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %40, i32 0, i32 8
  %arrayidx30 = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors29, i32 0, i64 %idxprom
  %41 = load i16*, i16** %arrayidx30, align 8, !tbaa !2
  %42 = bitcast i16* %41 to i8*
  %43 = load i64, i64* %arraysize, align 8, !tbaa !37
  call void @jzero_far(i8* %42, i64 %43)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !21
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 5
  store i32 47, i32* %msg_code, align 4, !tbaa !22
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !21
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 0
  %49 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %51 = bitcast %struct.jpeg_decompress_struct* %50 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* %51)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %if.end.18, %if.end
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #3
  %53 = bitcast i64* %arraysize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  %54 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_1_quant(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @new_color_map_1_quant(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !21
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 5
  store i32 45, i32* %msg_code, align 4, !tbaa !22
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !21
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 0
  %4 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  call void %4(%struct.jpeg_common_struct* %6)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @create_colormap(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %colormap = alloca i8**, align 8
  %total_colors = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nci = alloca i32, align 4
  %blksize = alloca i32, align 4
  %blkdist = alloca i32, align 4
  %ptr = alloca i32, align 4
  %val = alloca i32, align 4
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %total_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %nci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %blksize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %blkdist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %ptr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %15 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %15, i32 0, i32 5
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors, i32 0, i32 0
  %call = call i32 @select_ncolors(%struct.jpeg_decompress_struct* %14, i32* %arraydecay)
  store i32 %call, i32* %total_colors, align 4, !tbaa !24
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 28
  %17 = load i32, i32* %out_color_components, align 4, !tbaa !20
  %cmp = icmp eq i32 %17, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %18 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !21
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 6
  %i2 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay3 = getelementptr inbounds [8 x i32], [8 x i32]* %i2, i32 0, i32 0
  store i32* %arraydecay3, i32** %_mp, align 8, !tbaa !2
  %21 = load i32, i32* %total_colors, align 4, !tbaa !24
  %22 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %arrayidx, align 4, !tbaa !24
  %23 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %Ncolors4 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %23, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors4, i32 0, i64 0
  %24 = load i32, i32* %arrayidx5, align 4, !tbaa !24
  %25 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %arrayidx6, align 4, !tbaa !24
  %26 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %Ncolors7 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %26, i32 0, i32 5
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors7, i32 0, i64 1
  %27 = load i32, i32* %arrayidx8, align 4, !tbaa !24
  %28 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %27, i32* %arrayidx9, align 4, !tbaa !24
  %29 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %Ncolors10 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %29, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors10, i32 0, i64 2
  %30 = load i32, i32* %arrayidx11, align 4, !tbaa !24
  %31 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %30, i32* %arrayidx12, align 4, !tbaa !24
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !21
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 93, i32* %msg_code, align 4, !tbaa !22
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err14, align 8, !tbaa !21
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 1
  %36 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !38
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %38 = bitcast %struct.jpeg_decompress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* %38, i32 1)
  %39 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !21
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 5
  store i32 94, i32* %msg_code16, align 4, !tbaa !22
  %42 = load i32, i32* %total_colors, align 4, !tbaa !24
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !21
  %msg_parm18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 6
  %i19 = bitcast %union.anon* %msg_parm18 to [8 x i32]*
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* %i19, i32 0, i64 0
  store i32 %42, i32* %arrayidx20, align 4, !tbaa !24
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err21, align 8, !tbaa !21
  %emit_message22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 1
  %47 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message22, align 8, !tbaa !38
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* %49, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 1
  %51 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %51, i32 0, i32 2
  %52 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !39
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %54 = bitcast %struct.jpeg_decompress_struct* %53 to %struct.jpeg_common_struct*
  %55 = load i32, i32* %total_colors, align 4, !tbaa !24
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 28
  %57 = load i32, i32* %out_color_components23, align 4, !tbaa !20
  %call24 = call i8** %52(%struct.jpeg_common_struct* %54, i32 1, i32 %55, i32 %57)
  store i8** %call24, i8*** %colormap, align 8, !tbaa !2
  %58 = load i32, i32* %total_colors, align 4, !tbaa !24
  store i32 %58, i32* %blkdist, align 4, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %if.end
  %59 = load i32, i32* %i, align 4, !tbaa !24
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 28
  %61 = load i32, i32* %out_color_components25, align 4, !tbaa !20
  %cmp26 = icmp slt i32 %59, %61
  br i1 %cmp26, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %62 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %62 to i64
  %63 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %Ncolors27 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %63, i32 0, i32 5
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors27, i32 0, i64 %idxprom
  %64 = load i32, i32* %arrayidx28, align 4, !tbaa !24
  store i32 %64, i32* %nci, align 4, !tbaa !24
  %65 = load i32, i32* %blkdist, align 4, !tbaa !24
  %66 = load i32, i32* %nci, align 4, !tbaa !24
  %div = sdiv i32 %65, %66
  store i32 %div, i32* %blksize, align 4, !tbaa !24
  store i32 0, i32* %j, align 4, !tbaa !24
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.46, %for.body
  %67 = load i32, i32* %j, align 4, !tbaa !24
  %68 = load i32, i32* %nci, align 4, !tbaa !24
  %cmp30 = icmp slt i32 %67, %68
  br i1 %cmp30, label %for.body.31, label %for.end.48

for.body.31:                                      ; preds = %for.cond.29
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %70 = load i32, i32* %i, align 4, !tbaa !24
  %71 = load i32, i32* %j, align 4, !tbaa !24
  %72 = load i32, i32* %nci, align 4, !tbaa !24
  %sub = sub nsw i32 %72, 1
  %call32 = call i32 @output_value(%struct.jpeg_decompress_struct* %69, i32 %70, i32 %71, i32 %sub)
  store i32 %call32, i32* %val, align 4, !tbaa !24
  %73 = load i32, i32* %j, align 4, !tbaa !24
  %74 = load i32, i32* %blksize, align 4, !tbaa !24
  %mul = mul nsw i32 %73, %74
  store i32 %mul, i32* %ptr, align 4, !tbaa !24
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.43, %for.body.31
  %75 = load i32, i32* %ptr, align 4, !tbaa !24
  %76 = load i32, i32* %total_colors, align 4, !tbaa !24
  %cmp34 = icmp slt i32 %75, %76
  br i1 %cmp34, label %for.body.35, label %for.end.45

for.body.35:                                      ; preds = %for.cond.33
  store i32 0, i32* %k, align 4, !tbaa !24
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body.35
  %77 = load i32, i32* %k, align 4, !tbaa !24
  %78 = load i32, i32* %blksize, align 4, !tbaa !24
  %cmp37 = icmp slt i32 %77, %78
  br i1 %cmp37, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.36
  %79 = load i32, i32* %val, align 4, !tbaa !24
  %conv = trunc i32 %79 to i8
  %80 = load i32, i32* %ptr, align 4, !tbaa !24
  %81 = load i32, i32* %k, align 4, !tbaa !24
  %add = add nsw i32 %80, %81
  %idxprom39 = sext i32 %add to i64
  %82 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom40 = sext i32 %82 to i64
  %83 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds i8*, i8** %83, i64 %idxprom40
  %84 = load i8*, i8** %arrayidx41, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i8, i8* %84, i64 %idxprom39
  store i8 %conv, i8* %arrayidx42, align 1, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body.38
  %85 = load i32, i32* %k, align 4, !tbaa !24
  %inc = add nsw i32 %85, 1
  store i32 %inc, i32* %k, align 4, !tbaa !24
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end
  %86 = load i32, i32* %blkdist, align 4, !tbaa !24
  %87 = load i32, i32* %ptr, align 4, !tbaa !24
  %add44 = add nsw i32 %87, %86
  store i32 %add44, i32* %ptr, align 4, !tbaa !24
  br label %for.cond.33

for.end.45:                                       ; preds = %for.cond.33
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %88 = load i32, i32* %j, align 4, !tbaa !24
  %inc47 = add nsw i32 %88, 1
  store i32 %inc47, i32* %j, align 4, !tbaa !24
  br label %for.cond.29

for.end.48:                                       ; preds = %for.cond.29
  %89 = load i32, i32* %blksize, align 4, !tbaa !24
  store i32 %89, i32* %blkdist, align 4, !tbaa !24
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %90 = load i32, i32* %i, align 4, !tbaa !24
  %inc50 = add nsw i32 %90, 1
  store i32 %inc50, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  %91 = load i8**, i8*** %colormap, align 8, !tbaa !2
  %92 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %92, i32 0, i32 1
  store i8** %91, i8*** %sv_colormap, align 8, !tbaa !28
  %93 = load i32, i32* %total_colors, align 4, !tbaa !24
  %94 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %94, i32 0, i32 2
  store i32 %93, i32* %sv_actual, align 4, !tbaa !30
  %95 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #3
  %96 = bitcast i32* %ptr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #3
  %97 = bitcast i32* %blkdist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #3
  %98 = bitcast i32* %blksize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #3
  %99 = bitcast i32* %nci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #3
  %100 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #3
  %101 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #3
  %102 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #3
  %103 = bitcast i32* %total_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #3
  %104 = bitcast i8*** %colormap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #3
  %105 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @create_colorindex(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %indexptr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nci = alloca i32, align 4
  %blksize = alloca i32, align 4
  %val = alloca i32, align 4
  %pad = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i8** %indexptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %nci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %blksize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 20
  %13 = load i32, i32* %dither_mode, align 4, !tbaa !27
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 510, i32* %pad, align 4, !tbaa !24
  %14 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %is_padded = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %14, i32 0, i32 4
  store i32 1, i32* %is_padded, align 4, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %pad, align 4, !tbaa !24
  %15 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %is_padded2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %15, i32 0, i32 4
  store i32 0, i32* %is_padded2, align 4, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i32 0, i32 2
  %18 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !39
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %20 = bitcast %struct.jpeg_decompress_struct* %19 to %struct.jpeg_common_struct*
  %21 = load i32, i32* %pad, align 4, !tbaa !24
  %add = add nsw i32 256, %21
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 28
  %23 = load i32, i32* %out_color_components, align 4, !tbaa !20
  %call = call i8** %18(%struct.jpeg_common_struct* %20, i32 1, i32 %add, i32 %23)
  %24 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %24, i32 0, i32 3
  store i8** %call, i8*** %colorindex, align 8, !tbaa !41
  %25 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_actual, align 4, !tbaa !30
  store i32 %26, i32* %blksize, align 4, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %if.end
  %27 = load i32, i32* %i, align 4, !tbaa !24
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 28
  %29 = load i32, i32* %out_color_components3, align 4, !tbaa !20
  %cmp4 = icmp slt i32 %27, %29
  br i1 %cmp4, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %31, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors, i32 0, i64 %idxprom
  %32 = load i32, i32* %arrayidx, align 4, !tbaa !24
  store i32 %32, i32* %nci, align 4, !tbaa !24
  %33 = load i32, i32* %blksize, align 4, !tbaa !24
  %34 = load i32, i32* %nci, align 4, !tbaa !24
  %div = sdiv i32 %33, %34
  store i32 %div, i32* %blksize, align 4, !tbaa !24
  %35 = load i32, i32* %pad, align 4, !tbaa !24
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom6 = sext i32 %36 to i64
  %37 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex7 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %37, i32 0, i32 3
  %38 = load i8**, i8*** %colorindex7, align 8, !tbaa !41
  %arrayidx8 = getelementptr inbounds i8*, i8** %38, i64 %idxprom6
  %39 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 255
  store i8* %add.ptr, i8** %arrayidx8, align 8, !tbaa !2
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom10 = sext i32 %40 to i64
  %41 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex11 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %41, i32 0, i32 3
  %42 = load i8**, i8*** %colorindex11, align 8, !tbaa !41
  %arrayidx12 = getelementptr inbounds i8*, i8** %42, i64 %idxprom10
  %43 = load i8*, i8** %arrayidx12, align 8, !tbaa !2
  store i8* %43, i8** %indexptr, align 8, !tbaa !2
  store i32 0, i32* %val, align 4, !tbaa !24
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %45 = load i32, i32* %i, align 4, !tbaa !24
  %46 = load i32, i32* %nci, align 4, !tbaa !24
  %sub = sub nsw i32 %46, 1
  %call13 = call i32 @largest_input_value(%struct.jpeg_decompress_struct* %44, i32 %45, i32 0, i32 %sub)
  store i32 %call13, i32* %k, align 4, !tbaa !24
  store i32 0, i32* %j, align 4, !tbaa !24
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.end.9
  %47 = load i32, i32* %j, align 4, !tbaa !24
  %cmp15 = icmp sle i32 %47, 255
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.16
  %48 = load i32, i32* %j, align 4, !tbaa !24
  %49 = load i32, i32* %k, align 4, !tbaa !24
  %cmp17 = icmp sgt i32 %48, %49
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %51 = load i32, i32* %i, align 4, !tbaa !24
  %52 = load i32, i32* %val, align 4, !tbaa !24
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %val, align 4, !tbaa !24
  %53 = load i32, i32* %nci, align 4, !tbaa !24
  %sub18 = sub nsw i32 %53, 1
  %call19 = call i32 @largest_input_value(%struct.jpeg_decompress_struct* %50, i32 %51, i32 %inc, i32 %sub18)
  store i32 %call19, i32* %k, align 4, !tbaa !24
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load i32, i32* %val, align 4, !tbaa !24
  %55 = load i32, i32* %blksize, align 4, !tbaa !24
  %mul = mul nsw i32 %54, %55
  %conv = trunc i32 %mul to i8
  %56 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom20 = sext i32 %56 to i64
  %57 = load i8*, i8** %indexptr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i8, i8* %57, i64 %idxprom20
  store i8 %conv, i8* %arrayidx21, align 1, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %58 = load i32, i32* %j, align 4, !tbaa !24
  %inc22 = add nsw i32 %58, 1
  store i32 %inc22, i32* %j, align 4, !tbaa !24
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %59 = load i32, i32* %pad, align 4, !tbaa !24
  %tobool23 = icmp ne i32 %59, 0
  br i1 %tobool23, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %for.end
  store i32 1, i32* %j, align 4, !tbaa !24
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.37, %if.then.24
  %60 = load i32, i32* %j, align 4, !tbaa !24
  %cmp26 = icmp sle i32 %60, 255
  br i1 %cmp26, label %for.body.28, label %for.end.39

for.body.28:                                      ; preds = %for.cond.25
  %61 = load i8*, i8** %indexptr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx29, align 1, !tbaa !40
  %63 = load i32, i32* %j, align 4, !tbaa !24
  %sub30 = sub nsw i32 0, %63
  %idxprom31 = sext i32 %sub30 to i64
  %64 = load i8*, i8** %indexptr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds i8, i8* %64, i64 %idxprom31
  store i8 %62, i8* %arrayidx32, align 1, !tbaa !40
  %65 = load i8*, i8** %indexptr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i8, i8* %65, i64 255
  %66 = load i8, i8* %arrayidx33, align 1, !tbaa !40
  %67 = load i32, i32* %j, align 4, !tbaa !24
  %add34 = add nsw i32 255, %67
  %idxprom35 = sext i32 %add34 to i64
  %68 = load i8*, i8** %indexptr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds i8, i8* %68, i64 %idxprom35
  store i8 %66, i8* %arrayidx36, align 1, !tbaa !40
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.28
  %69 = load i32, i32* %j, align 4, !tbaa !24
  %inc38 = add nsw i32 %69, 1
  store i32 %inc38, i32* %j, align 4, !tbaa !24
  br label %for.cond.25

for.end.39:                                       ; preds = %for.cond.25
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.39, %for.end
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %70 = load i32, i32* %i, align 4, !tbaa !24
  %inc42 = add nsw i32 %70, 1
  store i32 %inc42, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %71 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  %73 = bitcast i32* %blksize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #3
  %74 = bitcast i32* %nci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #3
  %75 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #3
  %76 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #3
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i8** %indexptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #3
  %79 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @alloc_fs_workspace(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i64* %arraysize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 26
  %7 = load i32, i32* %output_width, align 4, !tbaa !36
  %add = add i32 %7, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 2
  store i64 %mul, i64* %arraysize, align 8, !tbaa !37
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !24
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 28
  %10 = load i32, i32* %out_color_components, align 4, !tbaa !20
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 1
  %13 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !42
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %15 = bitcast %struct.jpeg_decompress_struct* %14 to %struct.jpeg_common_struct*
  %16 = load i64, i64* %arraysize, align 8, !tbaa !37
  %call = call i8* %13(%struct.jpeg_common_struct* %15, i32 1, i64 %16)
  %17 = bitcast i8* %call to i16*
  %18 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %19, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors, i32 0, i64 %idxprom
  store i16* %17, i16** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #3
  %22 = bitcast i64* %arraysize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #3
  %23 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @color_quantize3(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %pixcode = alloca i32, align 4
  %ptrin = alloca i8*, align 8
  %ptrout = alloca i8*, align 8
  %colorindex0 = alloca i8*, align 8
  %colorindex1 = alloca i8*, align 8
  %colorindex24 = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !24
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i8** %ptrin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i8** %ptrout to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i8** %colorindex0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %8, i32 0, i32 3
  %9 = load i8**, i8*** %colorindex, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %10, i8** %colorindex0, align 8, !tbaa !2
  %11 = bitcast i8** %colorindex1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %12, i32 0, i32 3
  %13 = load i8**, i8*** %colorindex2, align 8, !tbaa !41
  %arrayidx3 = getelementptr inbounds i8*, i8** %13, i64 1
  %14 = load i8*, i8** %arrayidx3, align 8, !tbaa !2
  store i8* %14, i8** %colorindex1, align 8, !tbaa !2
  %15 = bitcast i8** %colorindex24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %16, i32 0, i32 3
  %17 = load i8**, i8*** %colorindex5, align 8, !tbaa !41
  %arrayidx6 = getelementptr inbounds i8*, i8** %17, i64 2
  %18 = load i8*, i8** %arrayidx6, align 8, !tbaa !2
  store i8* %18, i8** %colorindex24, align 8, !tbaa !2
  %19 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #3
  %20 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #3
  %21 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 26
  %23 = load i32, i32* %output_width, align 4, !tbaa !36
  store i32 %23, i32* %width, align 4, !tbaa !24
  store i32 0, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %24 = load i32, i32* %row, align 4, !tbaa !24
  %25 = load i32, i32* %num_rows.addr, align 4, !tbaa !24
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom = sext i32 %26 to i64
  %27 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8*, i8** %27, i64 %idxprom
  %28 = load i8*, i8** %arrayidx7, align 8, !tbaa !2
  store i8* %28, i8** %ptrin, align 8, !tbaa !2
  %29 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom8 = sext i32 %29 to i64
  %30 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8*, i8** %30, i64 %idxprom8
  %31 = load i8*, i8** %arrayidx9, align 8, !tbaa !2
  store i8* %31, i8** %ptrout, align 8, !tbaa !2
  %32 = load i32, i32* %width, align 4, !tbaa !24
  store i32 %32, i32* %col, align 4, !tbaa !24
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %col, align 4, !tbaa !24
  %cmp11 = icmp ugt i32 %33, 0
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %34 = load i8*, i8** %ptrin, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %ptrin, align 8, !tbaa !2
  %35 = load i8, i8* %34, align 1, !tbaa !40
  %conv = zext i8 %35 to i32
  %idxprom13 = sext i32 %conv to i64
  %36 = load i8*, i8** %colorindex0, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8, i8* %36, i64 %idxprom13
  %37 = load i8, i8* %arrayidx14, align 1, !tbaa !40
  %conv15 = zext i8 %37 to i32
  store i32 %conv15, i32* %pixcode, align 4, !tbaa !24
  %38 = load i8*, i8** %ptrin, align 8, !tbaa !2
  %incdec.ptr16 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr16, i8** %ptrin, align 8, !tbaa !2
  %39 = load i8, i8* %38, align 1, !tbaa !40
  %conv17 = zext i8 %39 to i32
  %idxprom18 = sext i32 %conv17 to i64
  %40 = load i8*, i8** %colorindex1, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i8, i8* %40, i64 %idxprom18
  %41 = load i8, i8* %arrayidx19, align 1, !tbaa !40
  %conv20 = zext i8 %41 to i32
  %42 = load i32, i32* %pixcode, align 4, !tbaa !24
  %add = add nsw i32 %42, %conv20
  store i32 %add, i32* %pixcode, align 4, !tbaa !24
  %43 = load i8*, i8** %ptrin, align 8, !tbaa !2
  %incdec.ptr21 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr21, i8** %ptrin, align 8, !tbaa !2
  %44 = load i8, i8* %43, align 1, !tbaa !40
  %conv22 = zext i8 %44 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %45 = load i8*, i8** %colorindex24, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i8, i8* %45, i64 %idxprom23
  %46 = load i8, i8* %arrayidx24, align 1, !tbaa !40
  %conv25 = zext i8 %46 to i32
  %47 = load i32, i32* %pixcode, align 4, !tbaa !24
  %add26 = add nsw i32 %47, %conv25
  store i32 %add26, i32* %pixcode, align 4, !tbaa !24
  %48 = load i32, i32* %pixcode, align 4, !tbaa !24
  %conv27 = trunc i32 %48 to i8
  %49 = load i8*, i8** %ptrout, align 8, !tbaa !2
  %incdec.ptr28 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr28, i8** %ptrout, align 8, !tbaa !2
  store i8 %conv27, i8* %49, align 1, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %50 = load i32, i32* %col, align 4, !tbaa !24
  %dec = add i32 %50, -1
  store i32 %dec, i32* %col, align 4, !tbaa !24
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %51 = load i32, i32* %row, align 4, !tbaa !24
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  %52 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #3
  %53 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #3
  %54 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #3
  %55 = bitcast i8** %colorindex24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #3
  %56 = bitcast i8** %colorindex1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #3
  %57 = bitcast i8** %colorindex0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #3
  %58 = bitcast i8** %ptrout to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #3
  %59 = bitcast i8** %ptrin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #3
  %60 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #3
  %61 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @color_quantize(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %colorindex = alloca i8**, align 8
  %pixcode = alloca i32, align 4
  %ci = alloca i32, align 4
  %ptrin = alloca i8*, align 8
  %ptrout = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %nc = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !24
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i8*** %colorindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %5, i32 0, i32 3
  %6 = load i8**, i8*** %colorindex2, align 8, !tbaa !41
  store i8** %6, i8*** %colorindex, align 8, !tbaa !2
  %7 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i8** %ptrin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i8** %ptrout to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 26
  %15 = load i32, i32* %output_width, align 4, !tbaa !36
  store i32 %15, i32* %width, align 4, !tbaa !24
  %16 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 28
  %18 = load i32, i32* %out_color_components, align 4, !tbaa !20
  store i32 %18, i32* %nc, align 4, !tbaa !24
  store i32 0, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %19 = load i32, i32* %row, align 4, !tbaa !24
  %20 = load i32, i32* %num_rows.addr, align 4, !tbaa !24
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %23, i8** %ptrin, align 8, !tbaa !2
  %24 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom3 = sext i32 %24 to i64
  %25 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8*, i8** %25, i64 %idxprom3
  %26 = load i8*, i8** %arrayidx4, align 8, !tbaa !2
  store i8* %26, i8** %ptrout, align 8, !tbaa !2
  %27 = load i32, i32* %width, align 4, !tbaa !24
  store i32 %27, i32* %col, align 4, !tbaa !24
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.18, %for.body
  %28 = load i32, i32* %col, align 4, !tbaa !24
  %cmp6 = icmp ugt i32 %28, 0
  br i1 %cmp6, label %for.body.7, label %for.end.19

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %pixcode, align 4, !tbaa !24
  store i32 0, i32* %ci, align 4, !tbaa !24
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %29 = load i32, i32* %ci, align 4, !tbaa !24
  %30 = load i32, i32* %nc, align 4, !tbaa !24
  %cmp9 = icmp slt i32 %29, %30
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %31 = load i8*, i8** %ptrin, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %ptrin, align 8, !tbaa !2
  %32 = load i8, i8* %31, align 1, !tbaa !40
  %conv = zext i8 %32 to i32
  %idxprom11 = sext i32 %conv to i64
  %33 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom12 = sext i32 %33 to i64
  %34 = load i8**, i8*** %colorindex, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8*, i8** %34, i64 %idxprom12
  %35 = load i8*, i8** %arrayidx13, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8, i8* %35, i64 %idxprom11
  %36 = load i8, i8* %arrayidx14, align 1, !tbaa !40
  %conv15 = zext i8 %36 to i32
  %37 = load i32, i32* %pixcode, align 4, !tbaa !24
  %add = add nsw i32 %37, %conv15
  store i32 %add, i32* %pixcode, align 4, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %38 = load i32, i32* %ci, align 4, !tbaa !24
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !24
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %39 = load i32, i32* %pixcode, align 4, !tbaa !24
  %conv16 = trunc i32 %39 to i8
  %40 = load i8*, i8** %ptrout, align 8, !tbaa !2
  %incdec.ptr17 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr17, i8** %ptrout, align 8, !tbaa !2
  store i8 %conv16, i8* %40, align 1, !tbaa !40
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %41 = load i32, i32* %col, align 4, !tbaa !24
  %dec = add i32 %41, -1
  store i32 %dec, i32* %col, align 4, !tbaa !24
  br label %for.cond.5

for.end.19:                                       ; preds = %for.cond.5
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.19
  %42 = load i32, i32* %row, align 4, !tbaa !24
  %inc21 = add nsw i32 %42, 1
  store i32 %inc21, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %43 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #3
  %44 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #3
  %45 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #3
  %46 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  %47 = bitcast i8** %ptrout to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #3
  %48 = bitcast i8** %ptrin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #3
  %49 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #3
  %50 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  %51 = bitcast i8*** %colorindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #3
  %52 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @quantize3_ord_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %pixcode = alloca i32, align 4
  %input_ptr = alloca i8*, align 8
  %output_ptr = alloca i8*, align 8
  %colorindex0 = alloca i8*, align 8
  %colorindex1 = alloca i8*, align 8
  %colorindex24 = alloca i8*, align 8
  %dither0 = alloca i32*, align 8
  %dither1 = alloca i32*, align 8
  %dither2 = alloca i32*, align 8
  %row_index = alloca i32, align 4
  %col_index = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !24
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i8** %input_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i8** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i8** %colorindex0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %8, i32 0, i32 3
  %9 = load i8**, i8*** %colorindex, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %10, i8** %colorindex0, align 8, !tbaa !2
  %11 = bitcast i8** %colorindex1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %12, i32 0, i32 3
  %13 = load i8**, i8*** %colorindex2, align 8, !tbaa !41
  %arrayidx3 = getelementptr inbounds i8*, i8** %13, i64 1
  %14 = load i8*, i8** %arrayidx3, align 8, !tbaa !2
  store i8* %14, i8** %colorindex1, align 8, !tbaa !2
  %15 = bitcast i8** %colorindex24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %16, i32 0, i32 3
  %17 = load i8**, i8*** %colorindex5, align 8, !tbaa !41
  %arrayidx6 = getelementptr inbounds i8*, i8** %17, i64 2
  %18 = load i8*, i8** %arrayidx6, align 8, !tbaa !2
  store i8* %18, i8** %colorindex24, align 8, !tbaa !2
  %19 = bitcast i32** %dither0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = bitcast i32** %dither1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #3
  %21 = bitcast i32** %dither2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = bitcast i32* %row_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #3
  %23 = bitcast i32* %col_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #3
  %25 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #3
  %26 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #3
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 26
  %28 = load i32, i32* %output_width, align 4, !tbaa !36
  store i32 %28, i32* %width, align 4, !tbaa !24
  store i32 0, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %29 = load i32, i32* %row, align 4, !tbaa !24
  %30 = load i32, i32* %num_rows.addr, align 4, !tbaa !24
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %31 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %row_index7 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %31, i32 0, i32 6
  %32 = load i32, i32* %row_index7, align 4, !tbaa !33
  store i32 %32, i32* %row_index, align 4, !tbaa !24
  %33 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom = sext i32 %33 to i64
  %34 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  store i8* %35, i8** %input_ptr, align 8, !tbaa !2
  %36 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom9 = sext i32 %36 to i64
  %37 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8*, i8** %37, i64 %idxprom9
  %38 = load i8*, i8** %arrayidx10, align 8, !tbaa !2
  store i8* %38, i8** %output_ptr, align 8, !tbaa !2
  %39 = load i32, i32* %row_index, align 4, !tbaa !24
  %idxprom11 = sext i32 %39 to i64
  %40 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %odither = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %40, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither, i32 0, i64 0
  %41 = load [16 x i32]*, [16 x i32]** %arrayidx12, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds [16 x i32], [16 x i32]* %41, i64 %idxprom11
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13, i32 0, i32 0
  store i32* %arraydecay, i32** %dither0, align 8, !tbaa !2
  %42 = load i32, i32* %row_index, align 4, !tbaa !24
  %idxprom14 = sext i32 %42 to i64
  %43 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %odither15 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %43, i32 0, i32 7
  %arrayidx16 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither15, i32 0, i64 1
  %44 = load [16 x i32]*, [16 x i32]** %arrayidx16, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 %idxprom14
  %arraydecay18 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx17, i32 0, i32 0
  store i32* %arraydecay18, i32** %dither1, align 8, !tbaa !2
  %45 = load i32, i32* %row_index, align 4, !tbaa !24
  %idxprom19 = sext i32 %45 to i64
  %46 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %odither20 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %46, i32 0, i32 7
  %arrayidx21 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither20, i32 0, i64 2
  %47 = load [16 x i32]*, [16 x i32]** %arrayidx21, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* %47, i64 %idxprom19
  %arraydecay23 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22, i32 0, i32 0
  store i32* %arraydecay23, i32** %dither2, align 8, !tbaa !2
  store i32 0, i32* %col_index, align 4, !tbaa !24
  %48 = load i32, i32* %width, align 4, !tbaa !24
  store i32 %48, i32* %col, align 4, !tbaa !24
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %for.body
  %49 = load i32, i32* %col, align 4, !tbaa !24
  %cmp25 = icmp ugt i32 %49, 0
  br i1 %cmp25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %50 = load i8*, i8** %input_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %input_ptr, align 8, !tbaa !2
  %51 = load i8, i8* %50, align 1, !tbaa !40
  %conv = zext i8 %51 to i32
  %52 = load i32, i32* %col_index, align 4, !tbaa !24
  %idxprom27 = sext i32 %52 to i64
  %53 = load i32*, i32** %dither0, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds i32, i32* %53, i64 %idxprom27
  %54 = load i32, i32* %arrayidx28, align 4, !tbaa !24
  %add = add nsw i32 %conv, %54
  %idxprom29 = sext i32 %add to i64
  %55 = load i8*, i8** %colorindex0, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i8, i8* %55, i64 %idxprom29
  %56 = load i8, i8* %arrayidx30, align 1, !tbaa !40
  %conv31 = zext i8 %56 to i32
  store i32 %conv31, i32* %pixcode, align 4, !tbaa !24
  %57 = load i8*, i8** %input_ptr, align 8, !tbaa !2
  %incdec.ptr32 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr32, i8** %input_ptr, align 8, !tbaa !2
  %58 = load i8, i8* %57, align 1, !tbaa !40
  %conv33 = zext i8 %58 to i32
  %59 = load i32, i32* %col_index, align 4, !tbaa !24
  %idxprom34 = sext i32 %59 to i64
  %60 = load i32*, i32** %dither1, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i32, i32* %60, i64 %idxprom34
  %61 = load i32, i32* %arrayidx35, align 4, !tbaa !24
  %add36 = add nsw i32 %conv33, %61
  %idxprom37 = sext i32 %add36 to i64
  %62 = load i8*, i8** %colorindex1, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i8, i8* %62, i64 %idxprom37
  %63 = load i8, i8* %arrayidx38, align 1, !tbaa !40
  %conv39 = zext i8 %63 to i32
  %64 = load i32, i32* %pixcode, align 4, !tbaa !24
  %add40 = add nsw i32 %64, %conv39
  store i32 %add40, i32* %pixcode, align 4, !tbaa !24
  %65 = load i8*, i8** %input_ptr, align 8, !tbaa !2
  %incdec.ptr41 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr41, i8** %input_ptr, align 8, !tbaa !2
  %66 = load i8, i8* %65, align 1, !tbaa !40
  %conv42 = zext i8 %66 to i32
  %67 = load i32, i32* %col_index, align 4, !tbaa !24
  %idxprom43 = sext i32 %67 to i64
  %68 = load i32*, i32** %dither2, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds i32, i32* %68, i64 %idxprom43
  %69 = load i32, i32* %arrayidx44, align 4, !tbaa !24
  %add45 = add nsw i32 %conv42, %69
  %idxprom46 = sext i32 %add45 to i64
  %70 = load i8*, i8** %colorindex24, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds i8, i8* %70, i64 %idxprom46
  %71 = load i8, i8* %arrayidx47, align 1, !tbaa !40
  %conv48 = zext i8 %71 to i32
  %72 = load i32, i32* %pixcode, align 4, !tbaa !24
  %add49 = add nsw i32 %72, %conv48
  store i32 %add49, i32* %pixcode, align 4, !tbaa !24
  %73 = load i32, i32* %pixcode, align 4, !tbaa !24
  %conv50 = trunc i32 %73 to i8
  %74 = load i8*, i8** %output_ptr, align 8, !tbaa !2
  %incdec.ptr51 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr51, i8** %output_ptr, align 8, !tbaa !2
  store i8 %conv50, i8* %74, align 1, !tbaa !40
  %75 = load i32, i32* %col_index, align 4, !tbaa !24
  %add52 = add nsw i32 %75, 1
  %and = and i32 %add52, 15
  store i32 %and, i32* %col_index, align 4, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %76 = load i32, i32* %col, align 4, !tbaa !24
  %dec = add i32 %76, -1
  store i32 %dec, i32* %col, align 4, !tbaa !24
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  %77 = load i32, i32* %row_index, align 4, !tbaa !24
  %add53 = add nsw i32 %77, 1
  %and54 = and i32 %add53, 15
  store i32 %and54, i32* %row_index, align 4, !tbaa !24
  %78 = load i32, i32* %row_index, align 4, !tbaa !24
  %79 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %row_index55 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %79, i32 0, i32 6
  store i32 %78, i32* %row_index55, align 4, !tbaa !33
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %80 = load i32, i32* %row, align 4, !tbaa !24
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  %81 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #3
  %82 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %col_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %row_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32** %dither2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #3
  %87 = bitcast i32** %dither1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #3
  %88 = bitcast i32** %dither0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #3
  %89 = bitcast i8** %colorindex24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #3
  %90 = bitcast i8** %colorindex1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #3
  %91 = bitcast i8** %colorindex0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #3
  %92 = bitcast i8** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #3
  %93 = bitcast i8** %input_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #3
  %94 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #3
  %95 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @quantize_ord_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %input_ptr = alloca i8*, align 8
  %output_ptr = alloca i8*, align 8
  %colorindex_ci = alloca i8*, align 8
  %dither = alloca i32*, align 8
  %row_index = alloca i32, align 4
  %col_index = alloca i32, align 4
  %nc = alloca i32, align 4
  %ci = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !24
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i8** %input_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i8** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i8** %colorindex_ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i32** %dither to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i32* %row_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %col_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 28
  %12 = load i32, i32* %out_color_components, align 4, !tbaa !20
  store i32 %12, i32* %nc, align 4, !tbaa !24
  %13 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 26
  %18 = load i32, i32* %output_width, align 4, !tbaa !36
  store i32 %18, i32* %width, align 4, !tbaa !24
  store i32 0, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %19 = load i32, i32* %row, align 4, !tbaa !24
  %20 = load i32, i32* %num_rows.addr, align 4, !tbaa !24
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %24 = load i32, i32* %width, align 4, !tbaa !24
  %conv = zext i32 %24 to i64
  %mul = mul i64 %conv, 1
  call void @jzero_far(i8* %23, i64 %mul)
  %25 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %row_index2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %25, i32 0, i32 6
  %26 = load i32, i32* %row_index2, align 4, !tbaa !33
  store i32 %26, i32* %row_index, align 4, !tbaa !24
  store i32 0, i32* %ci, align 4, !tbaa !24
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.33, %for.body
  %27 = load i32, i32* %ci, align 4, !tbaa !24
  %28 = load i32, i32* %nc, align 4, !tbaa !24
  %cmp4 = icmp slt i32 %27, %28
  br i1 %cmp4, label %for.body.6, label %for.end.34

for.body.6:                                       ; preds = %for.cond.3
  %29 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom7 = sext i32 %29 to i64
  %30 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %30, i64 %idxprom7
  %31 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  %32 = load i32, i32* %ci, align 4, !tbaa !24
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %input_ptr, align 8, !tbaa !2
  %33 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom9 = sext i32 %33 to i64
  %34 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8*, i8** %34, i64 %idxprom9
  %35 = load i8*, i8** %arrayidx10, align 8, !tbaa !2
  store i8* %35, i8** %output_ptr, align 8, !tbaa !2
  %36 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom11 = sext i32 %36 to i64
  %37 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %37, i32 0, i32 3
  %38 = load i8**, i8*** %colorindex, align 8, !tbaa !41
  %arrayidx12 = getelementptr inbounds i8*, i8** %38, i64 %idxprom11
  %39 = load i8*, i8** %arrayidx12, align 8, !tbaa !2
  store i8* %39, i8** %colorindex_ci, align 8, !tbaa !2
  %40 = load i32, i32* %row_index, align 4, !tbaa !24
  %idxprom13 = sext i32 %40 to i64
  %41 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom14 = sext i32 %41 to i64
  %42 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %odither = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %42, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither, i32 0, i64 %idxprom14
  %43 = load [16 x i32]*, [16 x i32]** %arrayidx15, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* %43, i64 %idxprom13
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx16, i32 0, i32 0
  store i32* %arraydecay, i32** %dither, align 8, !tbaa !2
  store i32 0, i32* %col_index, align 4, !tbaa !24
  %44 = load i32, i32* %width, align 4, !tbaa !24
  store i32 %44, i32* %col, align 4, !tbaa !24
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.6
  %45 = load i32, i32* %col, align 4, !tbaa !24
  %cmp18 = icmp ugt i32 %45, 0
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %46 = load i8*, i8** %input_ptr, align 8, !tbaa !2
  %47 = load i8, i8* %46, align 1, !tbaa !40
  %conv21 = zext i8 %47 to i32
  %48 = load i32, i32* %col_index, align 4, !tbaa !24
  %idxprom22 = sext i32 %48 to i64
  %49 = load i32*, i32** %dither, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i32, i32* %49, i64 %idxprom22
  %50 = load i32, i32* %arrayidx23, align 4, !tbaa !24
  %add = add nsw i32 %conv21, %50
  %idxprom24 = sext i32 %add to i64
  %51 = load i8*, i8** %colorindex_ci, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds i8, i8* %51, i64 %idxprom24
  %52 = load i8, i8* %arrayidx25, align 1, !tbaa !40
  %conv26 = zext i8 %52 to i32
  %53 = load i8*, i8** %output_ptr, align 8, !tbaa !2
  %54 = load i8, i8* %53, align 1, !tbaa !40
  %conv27 = zext i8 %54 to i32
  %add28 = add nsw i32 %conv27, %conv26
  %conv29 = trunc i32 %add28 to i8
  store i8 %conv29, i8* %53, align 1, !tbaa !40
  %55 = load i32, i32* %nc, align 4, !tbaa !24
  %56 = load i8*, i8** %input_ptr, align 8, !tbaa !2
  %idx.ext30 = sext i32 %55 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %56, i64 %idx.ext30
  store i8* %add.ptr31, i8** %input_ptr, align 8, !tbaa !2
  %57 = load i8*, i8** %output_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr, i8** %output_ptr, align 8, !tbaa !2
  %58 = load i32, i32* %col_index, align 4, !tbaa !24
  %add32 = add nsw i32 %58, 1
  %and = and i32 %add32, 15
  store i32 %and, i32* %col_index, align 4, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %59 = load i32, i32* %col, align 4, !tbaa !24
  %dec = add i32 %59, -1
  store i32 %dec, i32* %col, align 4, !tbaa !24
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %60 = load i32, i32* %ci, align 4, !tbaa !24
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !24
  br label %for.cond.3

for.end.34:                                       ; preds = %for.cond.3
  %61 = load i32, i32* %row_index, align 4, !tbaa !24
  %add35 = add nsw i32 %61, 1
  %and36 = and i32 %add35, 15
  store i32 %and36, i32* %row_index, align 4, !tbaa !24
  %62 = load i32, i32* %row_index, align 4, !tbaa !24
  %63 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %row_index37 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %63, i32 0, i32 6
  store i32 %62, i32* %row_index37, align 4, !tbaa !33
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.34
  %64 = load i32, i32* %row, align 4, !tbaa !24
  %inc39 = add nsw i32 %64, 1
  store i32 %inc39, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %65 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #3
  %66 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #3
  %67 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #3
  %68 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #3
  %69 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #3
  %70 = bitcast i32* %col_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  %71 = bitcast i32* %row_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32** %dither to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #3
  %73 = bitcast i8** %colorindex_ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #3
  %74 = bitcast i8** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #3
  %75 = bitcast i8** %input_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #3
  %76 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @create_odither_tables(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %odither = alloca [16 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast [16 x i32]** %odither to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %nci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !24
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 28
  %10 = load i32, i32* %out_color_components, align 4, !tbaa !20
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %12, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !24
  store i32 %13, i32* %nci, align 4, !tbaa !24
  store [16 x i32]* null, [16 x i32]** %odither, align 8, !tbaa !2
  store i32 0, i32* %j, align 4, !tbaa !24
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4, !tbaa !24
  %15 = load i32, i32* %i, align 4, !tbaa !24
  %cmp3 = icmp slt i32 %14, %15
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %16 = load i32, i32* %nci, align 4, !tbaa !24
  %17 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom5 = sext i32 %17 to i64
  %18 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %Ncolors6 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %18, i32 0, i32 5
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors6, i32 0, i64 %idxprom5
  %19 = load i32, i32* %arrayidx7, align 4, !tbaa !24
  %cmp8 = icmp eq i32 %16, %19
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %20 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom9 = sext i32 %20 to i64
  %21 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %odither10 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %21, i32 0, i32 7
  %arrayidx11 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither10, i32 0, i64 %idxprom9
  %22 = load [16 x i32]*, [16 x i32]** %arrayidx11, align 8, !tbaa !2
  store [16 x i32]* %22, [16 x i32]** %odither, align 8, !tbaa !2
  br label %for.end

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %j, align 4, !tbaa !24
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4, !tbaa !24
  br label %for.cond.2

for.end:                                          ; preds = %if.then, %for.cond.2
  %24 = load [16 x i32]*, [16 x i32]** %odither, align 8, !tbaa !2
  %cmp12 = icmp eq [16 x i32]* %24, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %26 = load i32, i32* %nci, align 4, !tbaa !24
  %call = call [16 x i32]* @make_odither_array(%struct.jpeg_decompress_struct* %25, i32 %26)
  store [16 x i32]* %call, [16 x i32]** %odither, align 8, !tbaa !2
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.end
  %27 = load [16 x i32]*, [16 x i32]** %odither, align 8, !tbaa !2
  %28 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom15 = sext i32 %28 to i64
  %29 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %odither16 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %29, i32 0, i32 7
  %arrayidx17 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither16, i32 0, i64 %idxprom15
  store [16 x i32]* %27, [16 x i32]** %arrayidx17, align 8, !tbaa !2
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end.14
  %30 = load i32, i32* %i, align 4, !tbaa !24
  %inc19 = add nsw i32 %30, 1
  store i32 %inc19, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %31 = bitcast i32* %nci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #3
  %32 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #3
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %34 = bitcast [16 x i32]** %odither to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @quantize_fs_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %cur = alloca i32, align 4
  %belowerr = alloca i32, align 4
  %bpreverr = alloca i32, align 4
  %bnexterr = alloca i32, align 4
  %delta = alloca i32, align 4
  %errorptr = alloca i16*, align 8
  %input_ptr = alloca i8*, align 8
  %output_ptr = alloca i8*, align 8
  %colorindex_ci = alloca i8*, align 8
  %colormap_ci = alloca i8*, align 8
  %pixcode = alloca i32, align 4
  %nc = alloca i32, align 4
  %dir = alloca i32, align 4
  %dirnc = alloca i32, align 4
  %ci = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !24
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i32* %cur to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %belowerr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %bpreverr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %bnexterr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i16** %errorptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i8** %input_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i8** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast i8** %colorindex_ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i8** %colormap_ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 28
  %17 = load i32, i32* %out_color_components, align 4, !tbaa !20
  store i32 %17, i32* %nc, align 4, !tbaa !24
  %18 = bitcast i32* %dir to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = bitcast i32* %dirnc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #3
  %20 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #3
  %21 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #3
  %23 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 26
  %25 = load i32, i32* %output_width, align 4, !tbaa !36
  store i32 %25, i32* %width, align 4, !tbaa !24
  %26 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #3
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 61
  %28 = load i8*, i8** %sample_range_limit, align 8, !tbaa !43
  store i8* %28, i8** %range_limit, align 8, !tbaa !2
  store i32 0, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %entry
  %29 = load i32, i32* %row, align 4, !tbaa !24
  %30 = load i32, i32* %num_rows.addr, align 4, !tbaa !24
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom = sext i32 %31 to i64
  %32 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %32, i64 %idxprom
  %33 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %34 = load i32, i32* %width, align 4, !tbaa !24
  %conv = zext i32 %34 to i64
  %mul = mul i64 %conv, 1
  call void @jzero_far(i8* %33, i64 %mul)
  store i32 0, i32* %ci, align 4, !tbaa !24
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.70, %for.body
  %35 = load i32, i32* %ci, align 4, !tbaa !24
  %36 = load i32, i32* %nc, align 4, !tbaa !24
  %cmp3 = icmp slt i32 %35, %36
  br i1 %cmp3, label %for.body.5, label %for.end.71

for.body.5:                                       ; preds = %for.cond.2
  %37 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom6 = sext i32 %37 to i64
  %38 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8*, i8** %38, i64 %idxprom6
  %39 = load i8*, i8** %arrayidx7, align 8, !tbaa !2
  %40 = load i32, i32* %ci, align 4, !tbaa !24
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr, i8** %input_ptr, align 8, !tbaa !2
  %41 = load i32, i32* %row, align 4, !tbaa !24
  %idxprom8 = sext i32 %41 to i64
  %42 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8*, i8** %42, i64 %idxprom8
  %43 = load i8*, i8** %arrayidx9, align 8, !tbaa !2
  store i8* %43, i8** %output_ptr, align 8, !tbaa !2
  %44 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %44, i32 0, i32 9
  %45 = load i32, i32* %on_odd_row, align 4, !tbaa !35
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.5
  %46 = load i32, i32* %width, align 4, !tbaa !24
  %sub = sub i32 %46, 1
  %47 = load i32, i32* %nc, align 4, !tbaa !24
  %mul10 = mul i32 %sub, %47
  %48 = load i8*, i8** %input_ptr, align 8, !tbaa !2
  %idx.ext11 = zext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %48, i64 %idx.ext11
  store i8* %add.ptr12, i8** %input_ptr, align 8, !tbaa !2
  %49 = load i32, i32* %width, align 4, !tbaa !24
  %sub13 = sub i32 %49, 1
  %50 = load i8*, i8** %output_ptr, align 8, !tbaa !2
  %idx.ext14 = zext i32 %sub13 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %50, i64 %idx.ext14
  store i8* %add.ptr15, i8** %output_ptr, align 8, !tbaa !2
  store i32 -1, i32* %dir, align 4, !tbaa !24
  %51 = load i32, i32* %nc, align 4, !tbaa !24
  %sub16 = sub nsw i32 0, %51
  store i32 %sub16, i32* %dirnc, align 4, !tbaa !24
  %52 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom17 = sext i32 %52 to i64
  %53 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %53, i32 0, i32 8
  %arrayidx18 = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors, i32 0, i64 %idxprom17
  %54 = load i16*, i16** %arrayidx18, align 8, !tbaa !2
  %55 = load i32, i32* %width, align 4, !tbaa !24
  %add = add i32 %55, 1
  %idx.ext19 = zext i32 %add to i64
  %add.ptr20 = getelementptr inbounds i16, i16* %54, i64 %idx.ext19
  store i16* %add.ptr20, i16** %errorptr, align 8, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %for.body.5
  store i32 1, i32* %dir, align 4, !tbaa !24
  %56 = load i32, i32* %nc, align 4, !tbaa !24
  store i32 %56, i32* %dirnc, align 4, !tbaa !24
  %57 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom21 = sext i32 %57 to i64
  %58 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors22 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %58, i32 0, i32 8
  %arrayidx23 = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors22, i32 0, i64 %idxprom21
  %59 = load i16*, i16** %arrayidx23, align 8, !tbaa !2
  store i16* %59, i16** %errorptr, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %60 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom24 = sext i32 %60 to i64
  %61 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %61, i32 0, i32 3
  %62 = load i8**, i8*** %colorindex, align 8, !tbaa !41
  %arrayidx25 = getelementptr inbounds i8*, i8** %62, i64 %idxprom24
  %63 = load i8*, i8** %arrayidx25, align 8, !tbaa !2
  store i8* %63, i8** %colorindex_ci, align 8, !tbaa !2
  %64 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom26 = sext i32 %64 to i64
  %65 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %65, i32 0, i32 1
  %66 = load i8**, i8*** %sv_colormap, align 8, !tbaa !28
  %arrayidx27 = getelementptr inbounds i8*, i8** %66, i64 %idxprom26
  %67 = load i8*, i8** %arrayidx27, align 8, !tbaa !2
  store i8* %67, i8** %colormap_ci, align 8, !tbaa !2
  store i32 0, i32* %cur, align 4, !tbaa !24
  store i32 0, i32* %bpreverr, align 4, !tbaa !24
  store i32 0, i32* %belowerr, align 4, !tbaa !24
  %68 = load i32, i32* %width, align 4, !tbaa !24
  store i32 %68, i32* %col, align 4, !tbaa !24
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.end
  %69 = load i32, i32* %col, align 4, !tbaa !24
  %cmp29 = icmp ugt i32 %69, 0
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %70 = load i32, i32* %cur, align 4, !tbaa !24
  %71 = load i32, i32* %dir, align 4, !tbaa !24
  %idxprom32 = sext i32 %71 to i64
  %72 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i16, i16* %72, i64 %idxprom32
  %73 = load i16, i16* %arrayidx33, align 2, !tbaa !44
  %conv34 = sext i16 %73 to i32
  %add35 = add nsw i32 %70, %conv34
  %add36 = add nsw i32 %add35, 8
  %shr = ashr i32 %add36, 4
  store i32 %shr, i32* %cur, align 4, !tbaa !24
  %74 = load i8*, i8** %input_ptr, align 8, !tbaa !2
  %75 = load i8, i8* %74, align 1, !tbaa !40
  %conv37 = zext i8 %75 to i32
  %76 = load i32, i32* %cur, align 4, !tbaa !24
  %add38 = add nsw i32 %76, %conv37
  store i32 %add38, i32* %cur, align 4, !tbaa !24
  %77 = load i32, i32* %cur, align 4, !tbaa !24
  %idxprom39 = sext i32 %77 to i64
  %78 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i8, i8* %78, i64 %idxprom39
  %79 = load i8, i8* %arrayidx40, align 1, !tbaa !40
  %conv41 = zext i8 %79 to i32
  store i32 %conv41, i32* %cur, align 4, !tbaa !24
  %80 = load i32, i32* %cur, align 4, !tbaa !24
  %idxprom42 = sext i32 %80 to i64
  %81 = load i8*, i8** %colorindex_ci, align 8, !tbaa !2
  %arrayidx43 = getelementptr inbounds i8, i8* %81, i64 %idxprom42
  %82 = load i8, i8* %arrayidx43, align 1, !tbaa !40
  %conv44 = zext i8 %82 to i32
  store i32 %conv44, i32* %pixcode, align 4, !tbaa !24
  %83 = load i32, i32* %pixcode, align 4, !tbaa !24
  %conv45 = trunc i32 %83 to i8
  %conv46 = zext i8 %conv45 to i32
  %84 = load i8*, i8** %output_ptr, align 8, !tbaa !2
  %85 = load i8, i8* %84, align 1, !tbaa !40
  %conv47 = zext i8 %85 to i32
  %add48 = add nsw i32 %conv47, %conv46
  %conv49 = trunc i32 %add48 to i8
  store i8 %conv49, i8* %84, align 1, !tbaa !40
  %86 = load i32, i32* %pixcode, align 4, !tbaa !24
  %idxprom50 = sext i32 %86 to i64
  %87 = load i8*, i8** %colormap_ci, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds i8, i8* %87, i64 %idxprom50
  %88 = load i8, i8* %arrayidx51, align 1, !tbaa !40
  %conv52 = zext i8 %88 to i32
  %89 = load i32, i32* %cur, align 4, !tbaa !24
  %sub53 = sub nsw i32 %89, %conv52
  store i32 %sub53, i32* %cur, align 4, !tbaa !24
  %90 = load i32, i32* %cur, align 4, !tbaa !24
  store i32 %90, i32* %bnexterr, align 4, !tbaa !24
  %91 = load i32, i32* %cur, align 4, !tbaa !24
  %mul54 = mul nsw i32 %91, 2
  store i32 %mul54, i32* %delta, align 4, !tbaa !24
  %92 = load i32, i32* %delta, align 4, !tbaa !24
  %93 = load i32, i32* %cur, align 4, !tbaa !24
  %add55 = add nsw i32 %93, %92
  store i32 %add55, i32* %cur, align 4, !tbaa !24
  %94 = load i32, i32* %bpreverr, align 4, !tbaa !24
  %95 = load i32, i32* %cur, align 4, !tbaa !24
  %add56 = add nsw i32 %94, %95
  %conv57 = trunc i32 %add56 to i16
  %96 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx58 = getelementptr inbounds i16, i16* %96, i64 0
  store i16 %conv57, i16* %arrayidx58, align 2, !tbaa !44
  %97 = load i32, i32* %delta, align 4, !tbaa !24
  %98 = load i32, i32* %cur, align 4, !tbaa !24
  %add59 = add nsw i32 %98, %97
  store i32 %add59, i32* %cur, align 4, !tbaa !24
  %99 = load i32, i32* %belowerr, align 4, !tbaa !24
  %100 = load i32, i32* %cur, align 4, !tbaa !24
  %add60 = add nsw i32 %99, %100
  store i32 %add60, i32* %bpreverr, align 4, !tbaa !24
  %101 = load i32, i32* %bnexterr, align 4, !tbaa !24
  store i32 %101, i32* %belowerr, align 4, !tbaa !24
  %102 = load i32, i32* %delta, align 4, !tbaa !24
  %103 = load i32, i32* %cur, align 4, !tbaa !24
  %add61 = add nsw i32 %103, %102
  store i32 %add61, i32* %cur, align 4, !tbaa !24
  %104 = load i32, i32* %dirnc, align 4, !tbaa !24
  %105 = load i8*, i8** %input_ptr, align 8, !tbaa !2
  %idx.ext62 = sext i32 %104 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %105, i64 %idx.ext62
  store i8* %add.ptr63, i8** %input_ptr, align 8, !tbaa !2
  %106 = load i32, i32* %dir, align 4, !tbaa !24
  %107 = load i8*, i8** %output_ptr, align 8, !tbaa !2
  %idx.ext64 = sext i32 %106 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %107, i64 %idx.ext64
  store i8* %add.ptr65, i8** %output_ptr, align 8, !tbaa !2
  %108 = load i32, i32* %dir, align 4, !tbaa !24
  %109 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %idx.ext66 = sext i32 %108 to i64
  %add.ptr67 = getelementptr inbounds i16, i16* %109, i64 %idx.ext66
  store i16* %add.ptr67, i16** %errorptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %110 = load i32, i32* %col, align 4, !tbaa !24
  %dec = add i32 %110, -1
  store i32 %dec, i32* %col, align 4, !tbaa !24
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %111 = load i32, i32* %bpreverr, align 4, !tbaa !24
  %conv68 = trunc i32 %111 to i16
  %112 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds i16, i16* %112, i64 0
  store i16 %conv68, i16* %arrayidx69, align 2, !tbaa !44
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end
  %113 = load i32, i32* %ci, align 4, !tbaa !24
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !24
  br label %for.cond.2

for.end.71:                                       ; preds = %for.cond.2
  %114 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %on_odd_row72 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %114, i32 0, i32 9
  %115 = load i32, i32* %on_odd_row72, align 4, !tbaa !35
  %tobool73 = icmp ne i32 %115, 0
  %cond = select i1 %tobool73, i32 0, i32 1
  %116 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %on_odd_row74 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %116, i32 0, i32 9
  store i32 %cond, i32* %on_odd_row74, align 4, !tbaa !35
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.71
  %117 = load i32, i32* %row, align 4, !tbaa !24
  %inc76 = add nsw i32 %117, 1
  store i32 %inc76, i32* %row, align 4, !tbaa !24
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  %118 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #3
  %119 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #3
  %120 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #3
  %121 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #3
  %122 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #3
  %123 = bitcast i32* %dirnc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #3
  %124 = bitcast i32* %dir to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #3
  %125 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #3
  %126 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #3
  %127 = bitcast i8** %colormap_ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #3
  %128 = bitcast i8** %colorindex_ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #3
  %129 = bitcast i8** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #3
  %130 = bitcast i8** %input_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #3
  %131 = bitcast i16** %errorptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #3
  %132 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #3
  %133 = bitcast i32* %bnexterr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #3
  %134 = bitcast i32* %bpreverr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #3
  %135 = bitcast i32* %belowerr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #3
  %136 = bitcast i32* %cur to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #3
  %137 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #3
  ret void
}

declare void @jzero_far(i8*, i64) #2

; Function Attrs: nounwind ssp uwtable
define internal [16 x i32]* @make_odither_array(%struct.jpeg_decompress_struct* %cinfo, i32 %ncolors) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ncolors.addr = alloca i32, align 4
  %odither = alloca [16 x i32]*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca i64, align 8
  %den = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %ncolors, i32* %ncolors.addr, align 4, !tbaa !24
  %0 = bitcast [16 x i32]** %odither to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i64* %num to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i64* %den to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %7 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %9 = bitcast %struct.jpeg_decompress_struct* %8 to %struct.jpeg_common_struct*
  %call = call i8* %7(%struct.jpeg_common_struct* %9, i32 1, i64 1024)
  %10 = bitcast i8* %call to [16 x i32]*
  store [16 x i32]* %10, [16 x i32]** %odither, align 8, !tbaa !2
  %11 = load i32, i32* %ncolors.addr, align 4, !tbaa !24
  %sub = sub nsw i32 %11, 1
  %conv = sext i32 %sub to i64
  %mul = mul nsw i64 512, %conv
  store i64 %mul, i64* %den, align 8, !tbaa !37
  store i32 0, i32* %j, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %12 = load i32, i32* %j, align 4, !tbaa !24
  %cmp = icmp slt i32 %12, 16
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !24
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %k, align 4, !tbaa !24
  %cmp3 = icmp slt i32 %13, 16
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %14 = load i32, i32* %k, align 4, !tbaa !24
  %idxprom = sext i32 %14 to i64
  %15 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom6 = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* @base_dither_matrix, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx7, align 1, !tbaa !40
  %conv8 = zext i8 %16 to i32
  %mul9 = mul nsw i32 2, %conv8
  %sub10 = sub nsw i32 255, %mul9
  %conv11 = sext i32 %sub10 to i64
  %mul12 = mul nsw i64 %conv11, 255
  store i64 %mul12, i64* %num, align 8, !tbaa !37
  %17 = load i64, i64* %num, align 8, !tbaa !37
  %cmp13 = icmp slt i64 %17, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.5
  %18 = load i64, i64* %num, align 8, !tbaa !37
  %sub15 = sub nsw i64 0, %18
  %19 = load i64, i64* %den, align 8, !tbaa !37
  %div = sdiv i64 %sub15, %19
  %sub16 = sub nsw i64 0, %div
  br label %cond.end

cond.false:                                       ; preds = %for.body.5
  %20 = load i64, i64* %num, align 8, !tbaa !37
  %21 = load i64, i64* %den, align 8, !tbaa !37
  %div17 = sdiv i64 %20, %21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub16, %cond.true ], [ %div17, %cond.false ]
  %conv18 = trunc i64 %cond to i32
  %22 = load i32, i32* %k, align 4, !tbaa !24
  %idxprom19 = sext i32 %22 to i64
  %23 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom20 = sext i32 %23 to i64
  %24 = load [16 x i32]*, [16 x i32]** %odither, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx21, i32 0, i64 %idxprom19
  store i32 %conv18, i32* %arrayidx22, align 4, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %25 = load i32, i32* %k, align 4, !tbaa !24
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4, !tbaa !24
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %26 = load i32, i32* %j, align 4, !tbaa !24
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* %j, align 4, !tbaa !24
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  %27 = load [16 x i32]*, [16 x i32]** %odither, align 8, !tbaa !2
  %28 = bitcast i64* %den to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #3
  %29 = bitcast i64* %num to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #3
  %30 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #3
  %31 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #3
  %32 = bitcast [16 x i32]** %odither to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #3
  ret [16 x i32]* %27
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @select_ncolors(%struct.jpeg_decompress_struct* %cinfo, i32* %Ncolors) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %Ncolors.addr = alloca i32*, align 8
  %nc = alloca i32, align 4
  %max_colors = alloca i32, align 4
  %total_colors = alloca i32, align 4
  %iroot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %changed = alloca i32, align 4
  %temp = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32* %Ncolors, i32** %Ncolors.addr, align 8, !tbaa !2
  %0 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 28
  %2 = load i32, i32* %out_color_components, align 4, !tbaa !20
  store i32 %2, i32* %nc, align 4, !tbaa !24
  %3 = bitcast i32* %max_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 22
  %5 = load i32, i32* %desired_number_of_colors, align 4, !tbaa !26
  store i32 %5, i32* %max_colors, align 4, !tbaa !24
  %6 = bitcast i32* %total_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %iroot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %changed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  store i32 1, i32* %iroot, align 4, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %12 = load i32, i32* %iroot, align 4, !tbaa !24
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %iroot, align 4, !tbaa !24
  %13 = load i32, i32* %iroot, align 4, !tbaa !24
  %conv = sext i32 %13 to i64
  store i64 %conv, i64* %temp, align 8, !tbaa !37
  store i32 1, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %14 = load i32, i32* %i, align 4, !tbaa !24
  %15 = load i32, i32* %nc, align 4, !tbaa !24
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %iroot, align 4, !tbaa !24
  %conv2 = sext i32 %16 to i64
  %17 = load i64, i64* %temp, align 8, !tbaa !37
  %mul = mul nsw i64 %17, %conv2
  store i64 %mul, i64* %temp, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !24
  %inc3 = add nsw i32 %18, 1
  store i32 %inc3, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %19 = load i64, i64* %temp, align 8, !tbaa !37
  %20 = load i32, i32* %max_colors, align 4, !tbaa !24
  %conv4 = sext i32 %20 to i64
  %cmp5 = icmp sle i64 %19, %conv4
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load i32, i32* %iroot, align 4, !tbaa !24
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %iroot, align 4, !tbaa !24
  %22 = load i32, i32* %iroot, align 4, !tbaa !24
  %cmp7 = icmp slt i32 %22, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !21
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 55, i32* %msg_code, align 4, !tbaa !22
  %25 = load i64, i64* %temp, align 8, !tbaa !37
  %conv9 = trunc i64 %25 to i32
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !21
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 6
  %i11 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i11, i32 0, i64 0
  store i32 %conv9, i32* %arrayidx, align 4, !tbaa !24
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !21
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %32 = bitcast %struct.jpeg_decompress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  store i32 1, i32* %total_colors, align 4, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %if.end
  %33 = load i32, i32* %i, align 4, !tbaa !24
  %34 = load i32, i32* %nc, align 4, !tbaa !24
  %cmp14 = icmp slt i32 %33, %34
  br i1 %cmp14, label %for.body.16, label %for.end.21

for.body.16:                                      ; preds = %for.cond.13
  %35 = load i32, i32* %iroot, align 4, !tbaa !24
  %36 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %36 to i64
  %37 = load i32*, i32** %Ncolors.addr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i32, i32* %37, i64 %idxprom
  store i32 %35, i32* %arrayidx17, align 4, !tbaa !24
  %38 = load i32, i32* %iroot, align 4, !tbaa !24
  %39 = load i32, i32* %total_colors, align 4, !tbaa !24
  %mul18 = mul nsw i32 %39, %38
  store i32 %mul18, i32* %total_colors, align 4, !tbaa !24
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.16
  %40 = load i32, i32* %i, align 4, !tbaa !24
  %inc20 = add nsw i32 %40, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !24
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  br label %do.body.22

do.body.22:                                       ; preds = %do.cond.50, %for.end.21
  store i32 0, i32* %changed, align 4, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.47, %do.body.22
  %41 = load i32, i32* %i, align 4, !tbaa !24
  %42 = load i32, i32* %nc, align 4, !tbaa !24
  %cmp24 = icmp slt i32 %41, %42
  br i1 %cmp24, label %for.body.26, label %for.end.49

for.body.26:                                      ; preds = %for.cond.23
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 10
  %44 = load i32, i32* %out_color_space, align 4, !tbaa !45
  %cmp27 = icmp eq i32 %44, 2
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.26
  %45 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom29 = sext i32 %45 to i64
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* @select_ncolors.RGB_order, i32 0, i64 %idxprom29
  %46 = load i32, i32* %arrayidx30, align 4, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %for.body.26
  %47 = load i32, i32* %i, align 4, !tbaa !24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ %47, %cond.false ]
  store i32 %cond, i32* %j, align 4, !tbaa !24
  %48 = load i32, i32* %total_colors, align 4, !tbaa !24
  %49 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom31 = sext i32 %49 to i64
  %50 = load i32*, i32** %Ncolors.addr, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds i32, i32* %50, i64 %idxprom31
  %51 = load i32, i32* %arrayidx32, align 4, !tbaa !24
  %div = sdiv i32 %48, %51
  %conv33 = sext i32 %div to i64
  store i64 %conv33, i64* %temp, align 8, !tbaa !37
  %52 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom34 = sext i32 %52 to i64
  %53 = load i32*, i32** %Ncolors.addr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i32, i32* %53, i64 %idxprom34
  %54 = load i32, i32* %arrayidx35, align 4, !tbaa !24
  %add = add nsw i32 %54, 1
  %conv36 = sext i32 %add to i64
  %55 = load i64, i64* %temp, align 8, !tbaa !37
  %mul37 = mul nsw i64 %55, %conv36
  store i64 %mul37, i64* %temp, align 8, !tbaa !37
  %56 = load i64, i64* %temp, align 8, !tbaa !37
  %57 = load i32, i32* %max_colors, align 4, !tbaa !24
  %conv38 = sext i32 %57 to i64
  %cmp39 = icmp sgt i64 %56, %conv38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %cond.end
  br label %for.end.49

if.end.42:                                        ; preds = %cond.end
  %58 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom43 = sext i32 %58 to i64
  %59 = load i32*, i32** %Ncolors.addr, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds i32, i32* %59, i64 %idxprom43
  %60 = load i32, i32* %arrayidx44, align 4, !tbaa !24
  %inc45 = add nsw i32 %60, 1
  store i32 %inc45, i32* %arrayidx44, align 4, !tbaa !24
  %61 = load i64, i64* %temp, align 8, !tbaa !37
  %conv46 = trunc i64 %61 to i32
  store i32 %conv46, i32* %total_colors, align 4, !tbaa !24
  store i32 1, i32* %changed, align 4, !tbaa !24
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.42
  %62 = load i32, i32* %i, align 4, !tbaa !24
  %inc48 = add nsw i32 %62, 1
  store i32 %inc48, i32* %i, align 4, !tbaa !24
  br label %for.cond.23

for.end.49:                                       ; preds = %if.then.41, %for.cond.23
  br label %do.cond.50

do.cond.50:                                       ; preds = %for.end.49
  %63 = load i32, i32* %changed, align 4, !tbaa !24
  %tobool = icmp ne i32 %63, 0
  br i1 %tobool, label %do.body.22, label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  %64 = load i32, i32* %total_colors, align 4, !tbaa !24
  %65 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #3
  %66 = bitcast i32* %changed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #3
  %67 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #3
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #3
  %69 = bitcast i32* %iroot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #3
  %70 = bitcast i32* %total_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  %71 = bitcast i32* %max_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  ret i32 %64
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @output_value(%struct.jpeg_decompress_struct* %cinfo, i32 %ci, i32 %j, i32 %maxj) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %ci, i32* %ci.addr, align 4, !tbaa !24
  store i32 %j, i32* %j.addr, align 4, !tbaa !24
  store i32 %maxj, i32* %maxj.addr, align 4, !tbaa !24
  %0 = load i32, i32* %j.addr, align 4, !tbaa !24
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 255
  %1 = load i32, i32* %maxj.addr, align 4, !tbaa !24
  %div = sdiv i32 %1, 2
  %conv1 = sext i32 %div to i64
  %add = add nsw i64 %mul, %conv1
  %2 = load i32, i32* %maxj.addr, align 4, !tbaa !24
  %conv2 = sext i32 %2 to i64
  %div3 = sdiv i64 %add, %conv2
  %conv4 = trunc i64 %div3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @largest_input_value(%struct.jpeg_decompress_struct* %cinfo, i32 %ci, i32 %j, i32 %maxj) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %ci, i32* %ci.addr, align 4, !tbaa !24
  store i32 %j, i32* %j.addr, align 4, !tbaa !24
  store i32 %maxj, i32* %maxj.addr, align 4, !tbaa !24
  %0 = load i32, i32* %j.addr, align 4, !tbaa !24
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %mul1 = mul nsw i64 %conv, 255
  %1 = load i32, i32* %maxj.addr, align 4, !tbaa !24
  %conv2 = sext i32 %1 to i64
  %add3 = add nsw i64 %mul1, %conv2
  %2 = load i32, i32* %maxj.addr, align 4, !tbaa !24
  %mul4 = mul nsw i32 2, %2
  %conv5 = sext i32 %mul4 to i64
  %div = sdiv i64 %add3, %conv5
  %conv6 = trunc i64 %div to i32
  ret i32 %conv6
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
!7 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !4, i64 56, !8, i64 60, !8, i64 64, !9, i64 72, !8, i64 80, !8, i64 84, !4, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !4, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !3, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !8, i64 288, !3, i64 296, !8, i64 304, !8, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !8, i64 360, !8, i64 364, !4, i64 368, !10, i64 370, !10, i64 372, !8, i64 376, !4, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !3, i64 408, !8, i64 416, !4, i64 424, !8, i64 456, !8, i64 460, !8, i64 464, !4, i64 468, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!12, !3, i64 0}
!12 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !13, i64 88}
!13 = !{!"long", !4, i64 0}
!14 = !{!7, !3, i64 608}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !3, i64 32, !8, i64 40, !3, i64 48, !8, i64 56, !4, i64 60, !8, i64 76, !4, i64 80, !4, i64 112, !8, i64 144}
!17 = !{!"jpeg_color_quantizer", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
!18 = !{!16, !3, i64 16}
!19 = !{!16, !3, i64 24}
!20 = !{!7, !8, i64 136}
!21 = !{!7, !3, i64 0}
!22 = !{!23, !8, i64 40}
!23 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!24 = !{!8, !8, i64 0}
!25 = !{!23, !3, i64 0}
!26 = !{!7, !8, i64 112}
!27 = !{!7, !4, i64 104}
!28 = !{!16, !3, i64 32}
!29 = !{!7, !3, i64 152}
!30 = !{!16, !8, i64 40}
!31 = !{!7, !8, i64 148}
!32 = !{!16, !3, i64 8}
!33 = !{!16, !8, i64 76}
!34 = !{!16, !8, i64 56}
!35 = !{!16, !8, i64 144}
!36 = !{!7, !8, i64 128}
!37 = !{!13, !13, i64 0}
!38 = !{!23, !3, i64 8}
!39 = !{!12, !3, i64 16}
!40 = !{!4, !4, i64 0}
!41 = !{!16, !3, i64 48}
!42 = !{!12, !3, i64 8}
!43 = !{!7, !3, i64 408}
!44 = !{!10, !10, i64 0}
!45 = !{!7, !4, i64 56}
