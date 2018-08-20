; ModuleID = 'jquant2.c'
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
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, i8**, i32, [32 x i16]**, i32, i16*, i32, i32* }
%struct.box = type { i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_2pass_quantizer(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %i = alloca i32, align 4
  %desired = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 88)
  %7 = bitcast i8* %call to %struct.my_cquantizer*
  store %struct.my_cquantizer* %7, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %8 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %9 = bitcast %struct.my_cquantizer* %8 to %struct.jpeg_color_quantizer*
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %9, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %11 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %11, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_2_quant, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8, !tbaa !15
  %12 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %12, i32 0, i32 0
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub2, i32 0, i32 3
  %new_color_map3 = bitcast {}** %new_color_map to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @new_color_map_2_quant, void (%struct.jpeg_decompress_struct*)** %new_color_map3, align 8, !tbaa !18
  %13 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %13, i32 0, i32 5
  store i16* null, i16** %fserrors, align 8, !tbaa !19
  %14 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %14, i32 0, i32 7
  store i32* null, i32** %error_limiter, align 8, !tbaa !20
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 28
  %16 = load i32, i32* %out_color_components, align 4, !tbaa !21
  %cmp = icmp ne i32 %16, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 46, i32* %msg_code, align 4, !tbaa !23
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 1
  %25 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8, !tbaa !6
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %25, i32 0, i32 0
  %26 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small6, align 8, !tbaa !11
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %28 = bitcast %struct.jpeg_decompress_struct* %27 to %struct.jpeg_common_struct*
  %call7 = call i8* %26(%struct.jpeg_common_struct* %28, i32 1, i64 256)
  %29 = bitcast i8* %call7 to [32 x i16]**
  %30 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %histogram = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %30, i32 0, i32 3
  store [32 x i16]** %29, [32 x i16]*** %histogram, align 8, !tbaa !26
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %i, align 4, !tbaa !27
  %cmp8 = icmp slt i32 %31, 32
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 1
  %33 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem9, align 8, !tbaa !6
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %33, i32 0, i32 1
  %34 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !28
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  %call10 = call i8* %34(%struct.jpeg_common_struct* %36, i32 1, i64 4096)
  %37 = bitcast i8* %call10 to [32 x i16]*
  %38 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %histogram11 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %39, i32 0, i32 3
  %40 = load [32 x i16]**, [32 x i16]*** %histogram11, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds [32 x i16]*, [32 x i16]** %40, i64 %idxprom
  store [32 x i16]* %37, [32 x i16]** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %42, i32 0, i32 4
  store i32 1, i32* %needs_zeroed, align 4, !tbaa !29
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 25
  %44 = load i32, i32* %enable_2pass_quant, align 4, !tbaa !30
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.end
  %45 = bitcast i32* %desired to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #3
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 22
  %47 = load i32, i32* %desired_number_of_colors, align 4, !tbaa !31
  store i32 %47, i32* %desired, align 4, !tbaa !27
  %48 = load i32, i32* %desired, align 4, !tbaa !27
  %cmp13 = icmp slt i32 %48, 8
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.then.12
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !22
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 5
  store i32 55, i32* %msg_code16, align 4, !tbaa !23
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !22
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 6
  %i18 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* %i18, i32 0, i64 0
  store i32 8, i32* %arrayidx19, align 4, !tbaa !27
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !22
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 0
  %55 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8, !tbaa !25
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %57 = bitcast %struct.jpeg_decompress_struct* %56 to %struct.jpeg_common_struct*
  call void %55(%struct.jpeg_common_struct* %57)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.14, %if.then.12
  %58 = load i32, i32* %desired, align 4, !tbaa !27
  %cmp23 = icmp sgt i32 %58, 256
  br i1 %cmp23, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %if.end.22
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err25, align 8, !tbaa !22
  %msg_code26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 5
  store i32 56, i32* %msg_code26, align 4, !tbaa !23
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !22
  %msg_parm28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 6
  %i29 = bitcast %union.anon* %msg_parm28 to [8 x i32]*
  %arrayidx30 = getelementptr inbounds [8 x i32], [8 x i32]* %i29, i32 0, i64 0
  store i32 256, i32* %arrayidx30, align 4, !tbaa !27
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !22
  %error_exit32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 0
  %65 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit32, align 8, !tbaa !25
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %67 = bitcast %struct.jpeg_decompress_struct* %66 to %struct.jpeg_common_struct*
  call void %65(%struct.jpeg_common_struct* %67)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.24, %if.end.22
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 1
  %69 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem34, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %69, i32 0, i32 2
  %70 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !32
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %72 = bitcast %struct.jpeg_decompress_struct* %71 to %struct.jpeg_common_struct*
  %73 = load i32, i32* %desired, align 4, !tbaa !27
  %call35 = call i8** %70(%struct.jpeg_common_struct* %72, i32 1, i32 %73, i32 3)
  %74 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %74, i32 0, i32 1
  store i8** %call35, i8*** %sv_colormap, align 8, !tbaa !33
  %75 = load i32, i32* %desired, align 4, !tbaa !27
  %76 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %desired36 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %76, i32 0, i32 2
  store i32 %75, i32* %desired36, align 4, !tbaa !34
  %77 = bitcast i32* %desired to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  br label %if.end.38

if.else:                                          ; preds = %for.end
  %78 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %sv_colormap37 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %78, i32 0, i32 1
  store i8** null, i8*** %sv_colormap37, align 8, !tbaa !33
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.end.33
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 20
  %80 = load i32, i32* %dither_mode, align 4, !tbaa !35
  %cmp39 = icmp ne i32 %80, 0
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.38
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 20
  store i32 2, i32* %dither_mode41, align 4, !tbaa !35
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.38
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 20
  %83 = load i32, i32* %dither_mode43, align 4, !tbaa !35
  %cmp44 = icmp eq i32 %83, 2
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.42
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 1
  %85 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem46, align 8, !tbaa !6
  %alloc_large47 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %85, i32 0, i32 1
  %86 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large47, align 8, !tbaa !28
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %88 = bitcast %struct.jpeg_decompress_struct* %87 to %struct.jpeg_common_struct*
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 26
  %90 = load i32, i32* %output_width, align 4, !tbaa !36
  %add = add i32 %90, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 6
  %call48 = call i8* %86(%struct.jpeg_common_struct* %88, i32 1, i64 %mul)
  %91 = bitcast i8* %call48 to i16*
  %92 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors49 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %92, i32 0, i32 5
  store i16* %91, i16** %fserrors49, align 8, !tbaa !19
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @init_error_limit(%struct.jpeg_decompress_struct* %93)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end.42
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #3
  %95 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_2_quant(%struct.jpeg_decompress_struct* %cinfo, i32 %is_pre_scan) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %is_pre_scan.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %i = alloca i32, align 4
  %arraysize = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %is_pre_scan, i32* %is_pre_scan.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %5, i32 0, i32 3
  %6 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8, !tbaa !26
  store [32 x i16]** %6, [32 x i16]*** %histogram, align 8, !tbaa !2
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 20
  %9 = load i32, i32* %dither_mode, align 4, !tbaa !35
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 20
  store i32 2, i32* %dither_mode3, align 4, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %is_pre_scan.addr, align 4, !tbaa !27
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %12 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %12, i32 0, i32 0
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @prescan_quantize, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8, !tbaa !37
  %13 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %13, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub5, i32 0, i32 2
  %finish_pass6 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_pass1, void (%struct.jpeg_decompress_struct*)** %finish_pass6, align 8, !tbaa !38
  %14 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %14, i32 0, i32 4
  store i32 1, i32* %needs_zeroed, align 4, !tbaa !29
  br label %if.end.50

if.else:                                          ; preds = %if.end
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 20
  %16 = load i32, i32* %dither_mode7, align 4, !tbaa !35
  %cmp8 = icmp eq i32 %16, 2
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else
  %17 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub10 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %17, i32 0, i32 0
  %color_quantize11 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub10, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @pass2_fs_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize11, align 8, !tbaa !37
  br label %if.end.15

if.else.12:                                       ; preds = %if.else
  %18 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub13 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %18, i32 0, i32 0
  %color_quantize14 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub13, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @pass2_no_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize14, align 8, !tbaa !37
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %if.then.9
  %19 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %pub16 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %19, i32 0, i32 0
  %finish_pass17 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub16, i32 0, i32 2
  %finish_pass18 = bitcast {}** %finish_pass17 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_pass2, void (%struct.jpeg_decompress_struct*)** %finish_pass18, align 8, !tbaa !38
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 31
  %21 = load i32, i32* %actual_number_of_colors, align 4, !tbaa !39
  store i32 %21, i32* %i, align 4, !tbaa !27
  %22 = load i32, i32* %i, align 4, !tbaa !27
  %cmp19 = icmp slt i32 %22, 1
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.15
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 55, i32* %msg_code, align 4, !tbaa !23
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err21, align 8, !tbaa !22
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 6
  %i22 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i22, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4, !tbaa !27
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %31)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.15
  %32 = load i32, i32* %i, align 4, !tbaa !27
  %cmp25 = icmp sgt i32 %32, 256
  br i1 %cmp25, label %if.then.26, label %if.end.35

if.then.26:                                       ; preds = %if.end.24
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !22
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 56, i32* %msg_code28, align 4, !tbaa !23
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8, !tbaa !22
  %msg_parm30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 6
  %i31 = bitcast %union.anon* %msg_parm30 to [8 x i32]*
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %i31, i32 0, i64 0
  store i32 256, i32* %arrayidx32, align 4, !tbaa !27
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !22
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8, !tbaa !25
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.26, %if.end.24
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dither_mode36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 20
  %43 = load i32, i32* %dither_mode36, align 4, !tbaa !35
  %cmp37 = icmp eq i32 %43, 2
  br i1 %cmp37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %if.end.35
  %44 = bitcast i64* %arraysize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #3
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 26
  %46 = load i32, i32* %output_width, align 4, !tbaa !36
  %add = add i32 %46, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 6
  store i64 %mul, i64* %arraysize, align 8, !tbaa !40
  %47 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %47, i32 0, i32 5
  %48 = load i16*, i16** %fserrors, align 8, !tbaa !19
  %cmp39 = icmp eq i16* %48, null
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.38
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 1
  %50 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %50, i32 0, i32 1
  %51 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !28
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %53 = bitcast %struct.jpeg_decompress_struct* %52 to %struct.jpeg_common_struct*
  %54 = load i64, i64* %arraysize, align 8, !tbaa !40
  %call = call i8* %51(%struct.jpeg_common_struct* %53, i32 1, i64 %54)
  %55 = bitcast i8* %call to i16*
  %56 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors42 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %56, i32 0, i32 5
  store i16* %55, i16** %fserrors42, align 8, !tbaa !19
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.38
  %57 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors44 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %57, i32 0, i32 5
  %58 = load i16*, i16** %fserrors44, align 8, !tbaa !19
  %59 = bitcast i16* %58 to i8*
  %60 = load i64, i64* %arraysize, align 8, !tbaa !40
  call void @jzero_far(i8* %59, i64 %60)
  %61 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %61, i32 0, i32 7
  %62 = load i32*, i32** %error_limiter, align 8, !tbaa !20
  %cmp45 = icmp eq i32* %62, null
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.43
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @init_error_limit(%struct.jpeg_decompress_struct* %63)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.43
  %64 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %64, i32 0, i32 6
  store i32 0, i32* %on_odd_row, align 4, !tbaa !41
  %65 = bitcast i64* %arraysize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #3
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.35
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.4
  %66 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %needs_zeroed51 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %66, i32 0, i32 4
  %67 = load i32, i32* %needs_zeroed51, align 4, !tbaa !29
  %tobool52 = icmp ne i32 %67, 0
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.end.50
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.53
  %68 = load i32, i32* %i, align 4, !tbaa !27
  %cmp54 = icmp slt i32 %68, 32
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %69 to i64
  %70 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds [32 x i16]*, [32 x i16]** %70, i64 %idxprom
  %71 = load [32 x i16]*, [32 x i16]** %arrayidx56, align 8, !tbaa !2
  %72 = bitcast [32 x i16]* %71 to i8*
  call void @jzero_far(i8* %72, i64 4096)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %73 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %needs_zeroed57 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %74, i32 0, i32 4
  store i32 0, i32* %needs_zeroed57, align 4, !tbaa !29
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.end.50
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #3
  %76 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #3
  %77 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @new_color_map_2_quant(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %4, i32 0, i32 4
  store i32 1, i32* %needs_zeroed, align 4, !tbaa !29
  %5 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @init_error_limit(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %table = alloca i32*, align 8
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i32** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i32 0, i32 0
  %9 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %11 = bitcast %struct.jpeg_decompress_struct* %10 to %struct.jpeg_common_struct*
  %call = call i8* %9(%struct.jpeg_common_struct* %11, i32 1, i64 2044)
  %12 = bitcast i8* %call to i32*
  store i32* %12, i32** %table, align 8, !tbaa !2
  %13 = load i32*, i32** %table, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 255
  store i32* %add.ptr, i32** %table, align 8, !tbaa !2
  %14 = load i32*, i32** %table, align 8, !tbaa !2
  %15 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %15, i32 0, i32 7
  store i32* %14, i32** %error_limiter, align 8, !tbaa !20
  store i32 0, i32* %out, align 4, !tbaa !27
  store i32 0, i32* %in, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %in, align 4, !tbaa !27
  %cmp = icmp slt i32 %16, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %out, align 4, !tbaa !27
  %18 = load i32, i32* %in, align 4, !tbaa !27
  %idxprom = sext i32 %18 to i64
  %19 = load i32*, i32** %table, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 %17, i32* %arrayidx, align 4, !tbaa !27
  %20 = load i32, i32* %out, align 4, !tbaa !27
  %sub = sub nsw i32 0, %20
  %21 = load i32, i32* %in, align 4, !tbaa !27
  %sub2 = sub nsw i32 0, %21
  %idxprom3 = sext i32 %sub2 to i64
  %22 = load i32*, i32** %table, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i32, i32* %22, i64 %idxprom3
  store i32 %sub, i32* %arrayidx4, align 4, !tbaa !27
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %in, align 4, !tbaa !27
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %in, align 4, !tbaa !27
  %24 = load i32, i32* %out, align 4, !tbaa !27
  %inc5 = add nsw i32 %24, 1
  store i32 %inc5, i32* %out, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.15, %for.end
  %25 = load i32, i32* %in, align 4, !tbaa !27
  %cmp7 = icmp slt i32 %25, 48
  br i1 %cmp7, label %for.body.8, label %for.end.17

for.body.8:                                       ; preds = %for.cond.6
  %26 = load i32, i32* %out, align 4, !tbaa !27
  %27 = load i32, i32* %in, align 4, !tbaa !27
  %idxprom9 = sext i32 %27 to i64
  %28 = load i32*, i32** %table, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i32, i32* %28, i64 %idxprom9
  store i32 %26, i32* %arrayidx10, align 4, !tbaa !27
  %29 = load i32, i32* %out, align 4, !tbaa !27
  %sub11 = sub nsw i32 0, %29
  %30 = load i32, i32* %in, align 4, !tbaa !27
  %sub12 = sub nsw i32 0, %30
  %idxprom13 = sext i32 %sub12 to i64
  %31 = load i32*, i32** %table, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i32, i32* %31, i64 %idxprom13
  store i32 %sub11, i32* %arrayidx14, align 4, !tbaa !27
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.8
  %32 = load i32, i32* %in, align 4, !tbaa !27
  %inc16 = add nsw i32 %32, 1
  store i32 %inc16, i32* %in, align 4, !tbaa !27
  %33 = load i32, i32* %in, align 4, !tbaa !27
  %and = and i32 %33, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %34 = load i32, i32* %out, align 4, !tbaa !27
  %add = add nsw i32 %34, %cond
  store i32 %add, i32* %out, align 4, !tbaa !27
  br label %for.cond.6

for.end.17:                                       ; preds = %for.cond.6
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.27, %for.end.17
  %35 = load i32, i32* %in, align 4, !tbaa !27
  %cmp19 = icmp sle i32 %35, 255
  br i1 %cmp19, label %for.body.20, label %for.end.29

for.body.20:                                      ; preds = %for.cond.18
  %36 = load i32, i32* %out, align 4, !tbaa !27
  %37 = load i32, i32* %in, align 4, !tbaa !27
  %idxprom21 = sext i32 %37 to i64
  %38 = load i32*, i32** %table, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i32, i32* %38, i64 %idxprom21
  store i32 %36, i32* %arrayidx22, align 4, !tbaa !27
  %39 = load i32, i32* %out, align 4, !tbaa !27
  %sub23 = sub nsw i32 0, %39
  %40 = load i32, i32* %in, align 4, !tbaa !27
  %sub24 = sub nsw i32 0, %40
  %idxprom25 = sext i32 %sub24 to i64
  %41 = load i32*, i32** %table, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i32, i32* %41, i64 %idxprom25
  store i32 %sub23, i32* %arrayidx26, align 4, !tbaa !27
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.20
  %42 = load i32, i32* %in, align 4, !tbaa !27
  %inc28 = add nsw i32 %42, 1
  store i32 %inc28, i32* %in, align 4, !tbaa !27
  br label %for.cond.18

for.end.29:                                       ; preds = %for.cond.18
  %43 = bitcast i32* %out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #3
  %44 = bitcast i32* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #3
  %45 = bitcast i32** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #3
  %46 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @prescan_quantize(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %ptr = alloca i8*, align 8
  %histp = alloca i16*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i16** %histp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %7, i32 0, i32 3
  %8 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8, !tbaa !26
  store [32 x i16]** %8, [32 x i16]*** %histogram, align 8, !tbaa !2
  %9 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 26
  %13 = load i32, i32* %output_width, align 4, !tbaa !36
  store i32 %13, i32* %width, align 4, !tbaa !27
  store i32 0, i32* %row, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %14 = load i32, i32* %row, align 4, !tbaa !27
  %15 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %row, align 4, !tbaa !27
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %18, i8** %ptr, align 8, !tbaa !2
  %19 = load i32, i32* %width, align 4, !tbaa !27
  store i32 %19, i32* %col, align 4, !tbaa !27
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %col, align 4, !tbaa !27
  %cmp4 = icmp ugt i32 %20, 0
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %21 = load i8*, i8** %ptr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx6, align 1, !tbaa !42
  %conv = zext i8 %22 to i32
  %shr = ashr i32 %conv, 3
  %idxprom7 = sext i32 %shr to i64
  %23 = load i8*, i8** %ptr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx8, align 1, !tbaa !42
  %conv9 = zext i8 %24 to i32
  %shr10 = ashr i32 %conv9, 2
  %idxprom11 = sext i32 %shr10 to i64
  %25 = load i8*, i8** %ptr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx12, align 1, !tbaa !42
  %conv13 = zext i8 %26 to i32
  %shr14 = ashr i32 %conv13, 3
  %idxprom15 = sext i32 %shr14 to i64
  %27 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds [32 x i16]*, [32 x i16]** %27, i64 %idxprom15
  %28 = load [32 x i16]*, [32 x i16]** %arrayidx16, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds [32 x i16], [32 x i16]* %28, i64 %idxprom11
  %arrayidx18 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx17, i32 0, i64 %idxprom7
  store i16* %arrayidx18, i16** %histp, align 8, !tbaa !2
  %29 = load i16*, i16** %histp, align 8, !tbaa !2
  %30 = load i16, i16* %29, align 2, !tbaa !43
  %inc = add i16 %30, 1
  store i16 %inc, i16* %29, align 2, !tbaa !43
  %conv19 = zext i16 %inc to i32
  %cmp20 = icmp sle i32 %conv19, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %31 = load i16*, i16** %histp, align 8, !tbaa !2
  %32 = load i16, i16* %31, align 2, !tbaa !43
  %dec = add i16 %32, -1
  store i16 %dec, i16* %31, align 2, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  %33 = load i8*, i8** %ptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 3
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %col, align 4, !tbaa !27
  %dec22 = add i32 %34, -1
  store i32 %dec22, i32* %col, align 4, !tbaa !27
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %35 = load i32, i32* %row, align 4, !tbaa !27
  %inc24 = add nsw i32 %35, 1
  store i32 %inc24, i32* %row, align 4, !tbaa !27
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  %36 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #3
  %37 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #3
  %38 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #3
  %39 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  %40 = bitcast i16** %histp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  %41 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #3
  %42 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass1(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %4, i32 0, i32 1
  %5 = load i8**, i8*** %sv_colormap, align 8, !tbaa !33
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 32
  store i8** %5, i8*** %colormap, align 8, !tbaa !44
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %8 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %desired = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %8, i32 0, i32 2
  %9 = load i32, i32* %desired, align 4, !tbaa !34
  call void @select_colors(%struct.jpeg_decompress_struct* %7, i32 %9)
  %10 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %10, i32 0, i32 4
  store i32 1, i32* %needs_zeroed, align 4, !tbaa !29
  %11 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pass2_fs_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %cur0 = alloca i32, align 4
  %cur1 = alloca i32, align 4
  %cur2 = alloca i32, align 4
  %belowerr0 = alloca i32, align 4
  %belowerr1 = alloca i32, align 4
  %belowerr2 = alloca i32, align 4
  %bpreverr0 = alloca i32, align 4
  %bpreverr1 = alloca i32, align 4
  %bpreverr2 = alloca i32, align 4
  %errorptr = alloca i16*, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %cachep = alloca i16*, align 8
  %dir = alloca i32, align 4
  %dir3 = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %error_limit = alloca i32*, align 8
  %colormap0 = alloca i8*, align 8
  %colormap1 = alloca i8*, align 8
  %colormap2 = alloca i8*, align 8
  %pixcode = alloca i32, align 4
  %bnexterr = alloca i32, align 4
  %delta = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %5, i32 0, i32 3
  %6 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8, !tbaa !26
  store [32 x i16]** %6, [32 x i16]*** %histogram, align 8, !tbaa !2
  %7 = bitcast i32* %cur0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %cur1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %cur2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %belowerr0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %belowerr1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %belowerr2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %bpreverr0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %bpreverr1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %bpreverr2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = bitcast i16** %errorptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #3
  %17 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = bitcast i16** %cachep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = bitcast i32* %dir to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #3
  %21 = bitcast i32* %dir3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #3
  %23 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #3
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 26
  %26 = load i32, i32* %output_width, align 4, !tbaa !36
  store i32 %26, i32* %width, align 4, !tbaa !27
  %27 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #3
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 61
  %29 = load i8*, i8** %sample_range_limit, align 8, !tbaa !45
  store i8* %29, i8** %range_limit, align 8, !tbaa !2
  %30 = bitcast i32** %error_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #3
  %31 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %31, i32 0, i32 7
  %32 = load i32*, i32** %error_limiter, align 8, !tbaa !20
  store i32* %32, i32** %error_limit, align 8, !tbaa !2
  %33 = bitcast i8** %colormap0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #3
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 32
  %35 = load i8**, i8*** %colormap, align 8, !tbaa !44
  %arrayidx = getelementptr inbounds i8*, i8** %35, i64 0
  %36 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %36, i8** %colormap0, align 8, !tbaa !2
  %37 = bitcast i8** %colormap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #3
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 32
  %39 = load i8**, i8*** %colormap3, align 8, !tbaa !44
  %arrayidx4 = getelementptr inbounds i8*, i8** %39, i64 1
  %40 = load i8*, i8** %arrayidx4, align 8, !tbaa !2
  store i8* %40, i8** %colormap1, align 8, !tbaa !2
  %41 = bitcast i8** %colormap2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #3
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 32
  %43 = load i8**, i8*** %colormap5, align 8, !tbaa !44
  %arrayidx6 = getelementptr inbounds i8*, i8** %43, i64 2
  %44 = load i8*, i8** %arrayidx6, align 8, !tbaa !2
  store i8* %44, i8** %colormap2, align 8, !tbaa !2
  store i32 0, i32* %row, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.133, %entry
  %45 = load i32, i32* %row, align 4, !tbaa !27
  %46 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp slt i32 %45, %46
  br i1 %cmp, label %for.body, label %for.end.134

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %row, align 4, !tbaa !27
  %idxprom = sext i32 %47 to i64
  %48 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8*, i8** %48, i64 %idxprom
  %49 = load i8*, i8** %arrayidx7, align 8, !tbaa !2
  store i8* %49, i8** %inptr, align 8, !tbaa !2
  %50 = load i32, i32* %row, align 4, !tbaa !27
  %idxprom8 = sext i32 %50 to i64
  %51 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8*, i8** %51, i64 %idxprom8
  %52 = load i8*, i8** %arrayidx9, align 8, !tbaa !2
  store i8* %52, i8** %outptr, align 8, !tbaa !2
  %53 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %53, i32 0, i32 6
  %54 = load i32, i32* %on_odd_row, align 4, !tbaa !41
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %55 = load i32, i32* %width, align 4, !tbaa !27
  %sub = sub i32 %55, 1
  %mul = mul i32 %sub, 3
  %56 = load i8*, i8** %inptr, align 8, !tbaa !2
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !2
  %57 = load i32, i32* %width, align 4, !tbaa !27
  %sub10 = sub i32 %57, 1
  %58 = load i8*, i8** %outptr, align 8, !tbaa !2
  %idx.ext11 = zext i32 %sub10 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %58, i64 %idx.ext11
  store i8* %add.ptr12, i8** %outptr, align 8, !tbaa !2
  store i32 -1, i32* %dir, align 4, !tbaa !27
  store i32 -3, i32* %dir3, align 4, !tbaa !27
  %59 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %59, i32 0, i32 5
  %60 = load i16*, i16** %fserrors, align 8, !tbaa !19
  %61 = load i32, i32* %width, align 4, !tbaa !27
  %add = add i32 %61, 1
  %mul13 = mul i32 %add, 3
  %idx.ext14 = zext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds i16, i16* %60, i64 %idx.ext14
  store i16* %add.ptr15, i16** %errorptr, align 8, !tbaa !2
  %62 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %on_odd_row16 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %62, i32 0, i32 6
  store i32 0, i32* %on_odd_row16, align 4, !tbaa !41
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 1, i32* %dir, align 4, !tbaa !27
  store i32 3, i32* %dir3, align 4, !tbaa !27
  %63 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %fserrors17 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %63, i32 0, i32 5
  %64 = load i16*, i16** %fserrors17, align 8, !tbaa !19
  store i16* %64, i16** %errorptr, align 8, !tbaa !2
  %65 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %on_odd_row18 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %65, i32 0, i32 6
  store i32 1, i32* %on_odd_row18, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %cur2, align 4, !tbaa !27
  store i32 0, i32* %cur1, align 4, !tbaa !27
  store i32 0, i32* %cur0, align 4, !tbaa !27
  store i32 0, i32* %belowerr2, align 4, !tbaa !27
  store i32 0, i32* %belowerr1, align 4, !tbaa !27
  store i32 0, i32* %belowerr0, align 4, !tbaa !27
  store i32 0, i32* %bpreverr2, align 4, !tbaa !27
  store i32 0, i32* %bpreverr1, align 4, !tbaa !27
  store i32 0, i32* %bpreverr0, align 4, !tbaa !27
  %66 = load i32, i32* %width, align 4, !tbaa !27
  store i32 %66, i32* %col, align 4, !tbaa !27
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end
  %67 = load i32, i32* %col, align 4, !tbaa !27
  %cmp20 = icmp ugt i32 %67, 0
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %68 = load i32, i32* %cur0, align 4, !tbaa !27
  %69 = load i32, i32* %dir3, align 4, !tbaa !27
  %add22 = add nsw i32 %69, 0
  %idxprom23 = sext i32 %add22 to i64
  %70 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i16, i16* %70, i64 %idxprom23
  %71 = load i16, i16* %arrayidx24, align 2, !tbaa !43
  %conv = sext i16 %71 to i32
  %add25 = add nsw i32 %68, %conv
  %add26 = add nsw i32 %add25, 8
  %shr = ashr i32 %add26, 4
  store i32 %shr, i32* %cur0, align 4, !tbaa !27
  %72 = load i32, i32* %cur1, align 4, !tbaa !27
  %73 = load i32, i32* %dir3, align 4, !tbaa !27
  %add27 = add nsw i32 %73, 1
  %idxprom28 = sext i32 %add27 to i64
  %74 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i16, i16* %74, i64 %idxprom28
  %75 = load i16, i16* %arrayidx29, align 2, !tbaa !43
  %conv30 = sext i16 %75 to i32
  %add31 = add nsw i32 %72, %conv30
  %add32 = add nsw i32 %add31, 8
  %shr33 = ashr i32 %add32, 4
  store i32 %shr33, i32* %cur1, align 4, !tbaa !27
  %76 = load i32, i32* %cur2, align 4, !tbaa !27
  %77 = load i32, i32* %dir3, align 4, !tbaa !27
  %add34 = add nsw i32 %77, 2
  %idxprom35 = sext i32 %add34 to i64
  %78 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds i16, i16* %78, i64 %idxprom35
  %79 = load i16, i16* %arrayidx36, align 2, !tbaa !43
  %conv37 = sext i16 %79 to i32
  %add38 = add nsw i32 %76, %conv37
  %add39 = add nsw i32 %add38, 8
  %shr40 = ashr i32 %add39, 4
  store i32 %shr40, i32* %cur2, align 4, !tbaa !27
  %80 = load i32, i32* %cur0, align 4, !tbaa !27
  %idxprom41 = sext i32 %80 to i64
  %81 = load i32*, i32** %error_limit, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i32, i32* %81, i64 %idxprom41
  %82 = load i32, i32* %arrayidx42, align 4, !tbaa !27
  store i32 %82, i32* %cur0, align 4, !tbaa !27
  %83 = load i32, i32* %cur1, align 4, !tbaa !27
  %idxprom43 = sext i32 %83 to i64
  %84 = load i32*, i32** %error_limit, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds i32, i32* %84, i64 %idxprom43
  %85 = load i32, i32* %arrayidx44, align 4, !tbaa !27
  store i32 %85, i32* %cur1, align 4, !tbaa !27
  %86 = load i32, i32* %cur2, align 4, !tbaa !27
  %idxprom45 = sext i32 %86 to i64
  %87 = load i32*, i32** %error_limit, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds i32, i32* %87, i64 %idxprom45
  %88 = load i32, i32* %arrayidx46, align 4, !tbaa !27
  store i32 %88, i32* %cur2, align 4, !tbaa !27
  %89 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds i8, i8* %89, i64 0
  %90 = load i8, i8* %arrayidx47, align 1, !tbaa !42
  %conv48 = zext i8 %90 to i32
  %91 = load i32, i32* %cur0, align 4, !tbaa !27
  %add49 = add nsw i32 %91, %conv48
  store i32 %add49, i32* %cur0, align 4, !tbaa !27
  %92 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx50, align 1, !tbaa !42
  %conv51 = zext i8 %93 to i32
  %94 = load i32, i32* %cur1, align 4, !tbaa !27
  %add52 = add nsw i32 %94, %conv51
  store i32 %add52, i32* %cur1, align 4, !tbaa !27
  %95 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds i8, i8* %95, i64 2
  %96 = load i8, i8* %arrayidx53, align 1, !tbaa !42
  %conv54 = zext i8 %96 to i32
  %97 = load i32, i32* %cur2, align 4, !tbaa !27
  %add55 = add nsw i32 %97, %conv54
  store i32 %add55, i32* %cur2, align 4, !tbaa !27
  %98 = load i32, i32* %cur0, align 4, !tbaa !27
  %idxprom56 = sext i32 %98 to i64
  %99 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds i8, i8* %99, i64 %idxprom56
  %100 = load i8, i8* %arrayidx57, align 1, !tbaa !42
  %conv58 = zext i8 %100 to i32
  store i32 %conv58, i32* %cur0, align 4, !tbaa !27
  %101 = load i32, i32* %cur1, align 4, !tbaa !27
  %idxprom59 = sext i32 %101 to i64
  %102 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx60 = getelementptr inbounds i8, i8* %102, i64 %idxprom59
  %103 = load i8, i8* %arrayidx60, align 1, !tbaa !42
  %conv61 = zext i8 %103 to i32
  store i32 %conv61, i32* %cur1, align 4, !tbaa !27
  %104 = load i32, i32* %cur2, align 4, !tbaa !27
  %idxprom62 = sext i32 %104 to i64
  %105 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds i8, i8* %105, i64 %idxprom62
  %106 = load i8, i8* %arrayidx63, align 1, !tbaa !42
  %conv64 = zext i8 %106 to i32
  store i32 %conv64, i32* %cur2, align 4, !tbaa !27
  %107 = load i32, i32* %cur2, align 4, !tbaa !27
  %shr65 = ashr i32 %107, 3
  %idxprom66 = sext i32 %shr65 to i64
  %108 = load i32, i32* %cur1, align 4, !tbaa !27
  %shr67 = ashr i32 %108, 2
  %idxprom68 = sext i32 %shr67 to i64
  %109 = load i32, i32* %cur0, align 4, !tbaa !27
  %shr69 = ashr i32 %109, 3
  %idxprom70 = sext i32 %shr69 to i64
  %110 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds [32 x i16]*, [32 x i16]** %110, i64 %idxprom70
  %111 = load [32 x i16]*, [32 x i16]** %arrayidx71, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds [32 x i16], [32 x i16]* %111, i64 %idxprom68
  %arrayidx73 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx72, i32 0, i64 %idxprom66
  store i16* %arrayidx73, i16** %cachep, align 8, !tbaa !2
  %112 = load i16*, i16** %cachep, align 8, !tbaa !2
  %113 = load i16, i16* %112, align 2, !tbaa !43
  %conv74 = zext i16 %113 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %for.body.21
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %115 = load i32, i32* %cur0, align 4, !tbaa !27
  %shr78 = ashr i32 %115, 3
  %116 = load i32, i32* %cur1, align 4, !tbaa !27
  %shr79 = ashr i32 %116, 2
  %117 = load i32, i32* %cur2, align 4, !tbaa !27
  %shr80 = ashr i32 %117, 3
  call void @fill_inverse_cmap(%struct.jpeg_decompress_struct* %114, i32 %shr78, i32 %shr79, i32 %shr80)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %for.body.21
  %118 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #3
  %119 = load i16*, i16** %cachep, align 8, !tbaa !2
  %120 = load i16, i16* %119, align 2, !tbaa !43
  %conv82 = zext i16 %120 to i32
  %sub83 = sub nsw i32 %conv82, 1
  store i32 %sub83, i32* %pixcode, align 4, !tbaa !27
  %121 = load i32, i32* %pixcode, align 4, !tbaa !27
  %conv84 = trunc i32 %121 to i8
  %122 = load i8*, i8** %outptr, align 8, !tbaa !2
  store i8 %conv84, i8* %122, align 1, !tbaa !42
  %123 = load i32, i32* %pixcode, align 4, !tbaa !27
  %idxprom85 = sext i32 %123 to i64
  %124 = load i8*, i8** %colormap0, align 8, !tbaa !2
  %arrayidx86 = getelementptr inbounds i8, i8* %124, i64 %idxprom85
  %125 = load i8, i8* %arrayidx86, align 1, !tbaa !42
  %conv87 = zext i8 %125 to i32
  %126 = load i32, i32* %cur0, align 4, !tbaa !27
  %sub88 = sub nsw i32 %126, %conv87
  store i32 %sub88, i32* %cur0, align 4, !tbaa !27
  %127 = load i32, i32* %pixcode, align 4, !tbaa !27
  %idxprom89 = sext i32 %127 to i64
  %128 = load i8*, i8** %colormap1, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds i8, i8* %128, i64 %idxprom89
  %129 = load i8, i8* %arrayidx90, align 1, !tbaa !42
  %conv91 = zext i8 %129 to i32
  %130 = load i32, i32* %cur1, align 4, !tbaa !27
  %sub92 = sub nsw i32 %130, %conv91
  store i32 %sub92, i32* %cur1, align 4, !tbaa !27
  %131 = load i32, i32* %pixcode, align 4, !tbaa !27
  %idxprom93 = sext i32 %131 to i64
  %132 = load i8*, i8** %colormap2, align 8, !tbaa !2
  %arrayidx94 = getelementptr inbounds i8, i8* %132, i64 %idxprom93
  %133 = load i8, i8* %arrayidx94, align 1, !tbaa !42
  %conv95 = zext i8 %133 to i32
  %134 = load i32, i32* %cur2, align 4, !tbaa !27
  %sub96 = sub nsw i32 %134, %conv95
  store i32 %sub96, i32* %cur2, align 4, !tbaa !27
  %135 = bitcast i32* %pixcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #3
  %136 = bitcast i32* %bnexterr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #3
  %137 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #3
  %138 = load i32, i32* %cur0, align 4, !tbaa !27
  store i32 %138, i32* %bnexterr, align 4, !tbaa !27
  %139 = load i32, i32* %cur0, align 4, !tbaa !27
  %mul97 = mul nsw i32 %139, 2
  store i32 %mul97, i32* %delta, align 4, !tbaa !27
  %140 = load i32, i32* %delta, align 4, !tbaa !27
  %141 = load i32, i32* %cur0, align 4, !tbaa !27
  %add98 = add nsw i32 %141, %140
  store i32 %add98, i32* %cur0, align 4, !tbaa !27
  %142 = load i32, i32* %bpreverr0, align 4, !tbaa !27
  %143 = load i32, i32* %cur0, align 4, !tbaa !27
  %add99 = add nsw i32 %142, %143
  %conv100 = trunc i32 %add99 to i16
  %144 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx101 = getelementptr inbounds i16, i16* %144, i64 0
  store i16 %conv100, i16* %arrayidx101, align 2, !tbaa !43
  %145 = load i32, i32* %delta, align 4, !tbaa !27
  %146 = load i32, i32* %cur0, align 4, !tbaa !27
  %add102 = add nsw i32 %146, %145
  store i32 %add102, i32* %cur0, align 4, !tbaa !27
  %147 = load i32, i32* %belowerr0, align 4, !tbaa !27
  %148 = load i32, i32* %cur0, align 4, !tbaa !27
  %add103 = add nsw i32 %147, %148
  store i32 %add103, i32* %bpreverr0, align 4, !tbaa !27
  %149 = load i32, i32* %bnexterr, align 4, !tbaa !27
  store i32 %149, i32* %belowerr0, align 4, !tbaa !27
  %150 = load i32, i32* %delta, align 4, !tbaa !27
  %151 = load i32, i32* %cur0, align 4, !tbaa !27
  %add104 = add nsw i32 %151, %150
  store i32 %add104, i32* %cur0, align 4, !tbaa !27
  %152 = load i32, i32* %cur1, align 4, !tbaa !27
  store i32 %152, i32* %bnexterr, align 4, !tbaa !27
  %153 = load i32, i32* %cur1, align 4, !tbaa !27
  %mul105 = mul nsw i32 %153, 2
  store i32 %mul105, i32* %delta, align 4, !tbaa !27
  %154 = load i32, i32* %delta, align 4, !tbaa !27
  %155 = load i32, i32* %cur1, align 4, !tbaa !27
  %add106 = add nsw i32 %155, %154
  store i32 %add106, i32* %cur1, align 4, !tbaa !27
  %156 = load i32, i32* %bpreverr1, align 4, !tbaa !27
  %157 = load i32, i32* %cur1, align 4, !tbaa !27
  %add107 = add nsw i32 %156, %157
  %conv108 = trunc i32 %add107 to i16
  %158 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds i16, i16* %158, i64 1
  store i16 %conv108, i16* %arrayidx109, align 2, !tbaa !43
  %159 = load i32, i32* %delta, align 4, !tbaa !27
  %160 = load i32, i32* %cur1, align 4, !tbaa !27
  %add110 = add nsw i32 %160, %159
  store i32 %add110, i32* %cur1, align 4, !tbaa !27
  %161 = load i32, i32* %belowerr1, align 4, !tbaa !27
  %162 = load i32, i32* %cur1, align 4, !tbaa !27
  %add111 = add nsw i32 %161, %162
  store i32 %add111, i32* %bpreverr1, align 4, !tbaa !27
  %163 = load i32, i32* %bnexterr, align 4, !tbaa !27
  store i32 %163, i32* %belowerr1, align 4, !tbaa !27
  %164 = load i32, i32* %delta, align 4, !tbaa !27
  %165 = load i32, i32* %cur1, align 4, !tbaa !27
  %add112 = add nsw i32 %165, %164
  store i32 %add112, i32* %cur1, align 4, !tbaa !27
  %166 = load i32, i32* %cur2, align 4, !tbaa !27
  store i32 %166, i32* %bnexterr, align 4, !tbaa !27
  %167 = load i32, i32* %cur2, align 4, !tbaa !27
  %mul113 = mul nsw i32 %167, 2
  store i32 %mul113, i32* %delta, align 4, !tbaa !27
  %168 = load i32, i32* %delta, align 4, !tbaa !27
  %169 = load i32, i32* %cur2, align 4, !tbaa !27
  %add114 = add nsw i32 %169, %168
  store i32 %add114, i32* %cur2, align 4, !tbaa !27
  %170 = load i32, i32* %bpreverr2, align 4, !tbaa !27
  %171 = load i32, i32* %cur2, align 4, !tbaa !27
  %add115 = add nsw i32 %170, %171
  %conv116 = trunc i32 %add115 to i16
  %172 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds i16, i16* %172, i64 2
  store i16 %conv116, i16* %arrayidx117, align 2, !tbaa !43
  %173 = load i32, i32* %delta, align 4, !tbaa !27
  %174 = load i32, i32* %cur2, align 4, !tbaa !27
  %add118 = add nsw i32 %174, %173
  store i32 %add118, i32* %cur2, align 4, !tbaa !27
  %175 = load i32, i32* %belowerr2, align 4, !tbaa !27
  %176 = load i32, i32* %cur2, align 4, !tbaa !27
  %add119 = add nsw i32 %175, %176
  store i32 %add119, i32* %bpreverr2, align 4, !tbaa !27
  %177 = load i32, i32* %bnexterr, align 4, !tbaa !27
  store i32 %177, i32* %belowerr2, align 4, !tbaa !27
  %178 = load i32, i32* %delta, align 4, !tbaa !27
  %179 = load i32, i32* %cur2, align 4, !tbaa !27
  %add120 = add nsw i32 %179, %178
  store i32 %add120, i32* %cur2, align 4, !tbaa !27
  %180 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #3
  %181 = bitcast i32* %bnexterr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #3
  %182 = load i32, i32* %dir3, align 4, !tbaa !27
  %183 = load i8*, i8** %inptr, align 8, !tbaa !2
  %idx.ext121 = sext i32 %182 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %183, i64 %idx.ext121
  store i8* %add.ptr122, i8** %inptr, align 8, !tbaa !2
  %184 = load i32, i32* %dir, align 4, !tbaa !27
  %185 = load i8*, i8** %outptr, align 8, !tbaa !2
  %idx.ext123 = sext i32 %184 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %185, i64 %idx.ext123
  store i8* %add.ptr124, i8** %outptr, align 8, !tbaa !2
  %186 = load i32, i32* %dir3, align 4, !tbaa !27
  %187 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %idx.ext125 = sext i32 %186 to i64
  %add.ptr126 = getelementptr inbounds i16, i16* %187, i64 %idx.ext125
  store i16* %add.ptr126, i16** %errorptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %188 = load i32, i32* %col, align 4, !tbaa !27
  %dec = add i32 %188, -1
  store i32 %dec, i32* %col, align 4, !tbaa !27
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %189 = load i32, i32* %bpreverr0, align 4, !tbaa !27
  %conv127 = trunc i32 %189 to i16
  %190 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx128 = getelementptr inbounds i16, i16* %190, i64 0
  store i16 %conv127, i16* %arrayidx128, align 2, !tbaa !43
  %191 = load i32, i32* %bpreverr1, align 4, !tbaa !27
  %conv129 = trunc i32 %191 to i16
  %192 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx130 = getelementptr inbounds i16, i16* %192, i64 1
  store i16 %conv129, i16* %arrayidx130, align 2, !tbaa !43
  %193 = load i32, i32* %bpreverr2, align 4, !tbaa !27
  %conv131 = trunc i32 %193 to i16
  %194 = load i16*, i16** %errorptr, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds i16, i16* %194, i64 2
  store i16 %conv131, i16* %arrayidx132, align 2, !tbaa !43
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.end
  %195 = load i32, i32* %row, align 4, !tbaa !27
  %inc = add nsw i32 %195, 1
  store i32 %inc, i32* %row, align 4, !tbaa !27
  br label %for.cond

for.end.134:                                      ; preds = %for.cond
  %196 = bitcast i8** %colormap2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #3
  %197 = bitcast i8** %colormap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #3
  %198 = bitcast i8** %colormap0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #3
  %199 = bitcast i32** %error_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #3
  %200 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #3
  %201 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #3
  %202 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #3
  %203 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #3
  %204 = bitcast i32* %dir3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #3
  %205 = bitcast i32* %dir to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #3
  %206 = bitcast i16** %cachep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #3
  %207 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #3
  %208 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #3
  %209 = bitcast i16** %errorptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #3
  %210 = bitcast i32* %bpreverr2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #3
  %211 = bitcast i32* %bpreverr1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #3
  %212 = bitcast i32* %bpreverr0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #3
  %213 = bitcast i32* %belowerr2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #3
  %214 = bitcast i32* %belowerr1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #3
  %215 = bitcast i32* %belowerr0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #3
  %216 = bitcast i32* %cur2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #3
  %217 = bitcast i32* %cur1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #3
  %218 = bitcast i32* %cur0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #3
  %219 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #3
  %220 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pass2_no_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %cachep = alloca i16*, align 8
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %5, i32 0, i32 3
  %6 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8, !tbaa !26
  store [32 x i16]** %6, [32 x i16]*** %histogram, align 8, !tbaa !2
  %7 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i16** %cachep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 26
  %17 = load i32, i32* %output_width, align 4, !tbaa !36
  store i32 %17, i32* %width, align 4, !tbaa !27
  store i32 0, i32* %row, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %18 = load i32, i32* %row, align 4, !tbaa !27
  %19 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %row, align 4, !tbaa !27
  %idxprom = sext i32 %20 to i64
  %21 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %22, i8** %inptr, align 8, !tbaa !2
  %23 = load i32, i32* %row, align 4, !tbaa !27
  %idxprom3 = sext i32 %23 to i64
  %24 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8*, i8** %24, i64 %idxprom3
  %25 = load i8*, i8** %arrayidx4, align 8, !tbaa !2
  store i8* %25, i8** %outptr, align 8, !tbaa !2
  %26 = load i32, i32* %width, align 4, !tbaa !27
  store i32 %26, i32* %col, align 4, !tbaa !27
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %col, align 4, !tbaa !27
  %cmp6 = icmp ugt i32 %27, 0
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %28 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !2
  %29 = load i8, i8* %28, align 1, !tbaa !42
  %conv = zext i8 %29 to i32
  %shr = ashr i32 %conv, 3
  store i32 %shr, i32* %c0, align 4, !tbaa !27
  %30 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr8 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr8, i8** %inptr, align 8, !tbaa !2
  %31 = load i8, i8* %30, align 1, !tbaa !42
  %conv9 = zext i8 %31 to i32
  %shr10 = ashr i32 %conv9, 2
  store i32 %shr10, i32* %c1, align 4, !tbaa !27
  %32 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr11, i8** %inptr, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !42
  %conv12 = zext i8 %33 to i32
  %shr13 = ashr i32 %conv12, 3
  store i32 %shr13, i32* %c2, align 4, !tbaa !27
  %34 = load i32, i32* %c2, align 4, !tbaa !27
  %idxprom14 = sext i32 %34 to i64
  %35 = load i32, i32* %c1, align 4, !tbaa !27
  %idxprom15 = sext i32 %35 to i64
  %36 = load i32, i32* %c0, align 4, !tbaa !27
  %idxprom16 = sext i32 %36 to i64
  %37 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds [32 x i16]*, [32 x i16]** %37, i64 %idxprom16
  %38 = load [32 x i16]*, [32 x i16]** %arrayidx17, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds [32 x i16], [32 x i16]* %38, i64 %idxprom15
  %arrayidx19 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx18, i32 0, i64 %idxprom14
  store i16* %arrayidx19, i16** %cachep, align 8, !tbaa !2
  %39 = load i16*, i16** %cachep, align 8, !tbaa !2
  %40 = load i16, i16* %39, align 2, !tbaa !43
  %conv20 = zext i16 %40 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %42 = load i32, i32* %c0, align 4, !tbaa !27
  %43 = load i32, i32* %c1, align 4, !tbaa !27
  %44 = load i32, i32* %c2, align 4, !tbaa !27
  call void @fill_inverse_cmap(%struct.jpeg_decompress_struct* %41, i32 %42, i32 %43, i32 %44)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.7
  %45 = load i16*, i16** %cachep, align 8, !tbaa !2
  %46 = load i16, i16* %45, align 2, !tbaa !43
  %conv23 = zext i16 %46 to i32
  %sub = sub nsw i32 %conv23, 1
  %conv24 = trunc i32 %sub to i8
  %47 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr25 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr25, i8** %outptr, align 8, !tbaa !2
  store i8 %conv24, i8* %47, align 1, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %48 = load i32, i32* %col, align 4, !tbaa !27
  %dec = add i32 %48, -1
  store i32 %dec, i32* %col, align 4, !tbaa !27
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %49 = load i32, i32* %row, align 4, !tbaa !27
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %row, align 4, !tbaa !27
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %50 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  %51 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  %52 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #3
  %53 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #3
  %54 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #3
  %55 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #3
  %56 = bitcast i16** %cachep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #3
  %57 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #3
  %58 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #3
  %59 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #3
  %60 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass2(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  ret void
}

declare void @jzero_far(i8*, i64) #2

; Function Attrs: nounwind ssp uwtable
define internal void @select_colors(%struct.jpeg_decompress_struct* %cinfo, i32 %desired_colors) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %desired_colors.addr = alloca i32, align 4
  %boxlist = alloca %struct.box*, align 8
  %numboxes = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %desired_colors, i32* %desired_colors.addr, align 4, !tbaa !27
  %0 = bitcast %struct.box** %boxlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %numboxes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  %8 = load i32, i32* %desired_colors.addr, align 4, !tbaa !27
  %conv = sext i32 %8 to i64
  %mul = mul i64 %conv, 40
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 %mul)
  %9 = bitcast i8* %call to %struct.box*
  store %struct.box* %9, %struct.box** %boxlist, align 8, !tbaa !2
  store i32 1, i32* %numboxes, align 4, !tbaa !27
  %10 = load %struct.box*, %struct.box** %boxlist, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.box, %struct.box* %10, i64 0
  %c0min = getelementptr inbounds %struct.box, %struct.box* %arrayidx, i32 0, i32 0
  store i32 0, i32* %c0min, align 4, !tbaa !46
  %11 = load %struct.box*, %struct.box** %boxlist, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds %struct.box, %struct.box* %11, i64 0
  %c0max = getelementptr inbounds %struct.box, %struct.box* %arrayidx1, i32 0, i32 1
  store i32 31, i32* %c0max, align 4, !tbaa !48
  %12 = load %struct.box*, %struct.box** %boxlist, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds %struct.box, %struct.box* %12, i64 0
  %c1min = getelementptr inbounds %struct.box, %struct.box* %arrayidx2, i32 0, i32 2
  store i32 0, i32* %c1min, align 4, !tbaa !49
  %13 = load %struct.box*, %struct.box** %boxlist, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds %struct.box, %struct.box* %13, i64 0
  %c1max = getelementptr inbounds %struct.box, %struct.box* %arrayidx3, i32 0, i32 3
  store i32 63, i32* %c1max, align 4, !tbaa !50
  %14 = load %struct.box*, %struct.box** %boxlist, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds %struct.box, %struct.box* %14, i64 0
  %c2min = getelementptr inbounds %struct.box, %struct.box* %arrayidx4, i32 0, i32 4
  store i32 0, i32* %c2min, align 4, !tbaa !51
  %15 = load %struct.box*, %struct.box** %boxlist, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds %struct.box, %struct.box* %15, i64 0
  %c2max = getelementptr inbounds %struct.box, %struct.box* %arrayidx5, i32 0, i32 5
  store i32 31, i32* %c2max, align 4, !tbaa !52
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = load %struct.box*, %struct.box** %boxlist, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds %struct.box, %struct.box* %17, i64 0
  call void @update_box(%struct.jpeg_decompress_struct* %16, %struct.box* %arrayidx6)
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %19 = load %struct.box*, %struct.box** %boxlist, align 8, !tbaa !2
  %20 = load i32, i32* %numboxes, align 4, !tbaa !27
  %21 = load i32, i32* %desired_colors.addr, align 4, !tbaa !27
  %call7 = call i32 @median_cut(%struct.jpeg_decompress_struct* %18, %struct.box* %19, i32 %20, i32 %21)
  store i32 %call7, i32* %numboxes, align 4, !tbaa !27
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %i, align 4, !tbaa !27
  %23 = load i32, i32* %numboxes, align 4, !tbaa !27
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.box*, %struct.box** %boxlist, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds %struct.box, %struct.box* %26, i64 %idxprom
  %27 = load i32, i32* %i, align 4, !tbaa !27
  call void @compute_color(%struct.jpeg_decompress_struct* %24, %struct.box* %arrayidx9, i32 %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %numboxes, align 4, !tbaa !27
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 31
  store i32 %29, i32* %actual_number_of_colors, align 4, !tbaa !39
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 5
  store i32 95, i32* %msg_code, align 4, !tbaa !23
  %33 = load i32, i32* %numboxes, align 4, !tbaa !27
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !22
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 6
  %i11 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %i11, i32 0, i64 0
  store i32 %33, i32* %arrayidx12, align 4, !tbaa !27
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !22
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 1
  %38 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !53
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %40 = bitcast %struct.jpeg_decompress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* %40, i32 1)
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  %42 = bitcast i32* %numboxes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #3
  %43 = bitcast %struct.box** %boxlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @update_box(%struct.jpeg_decompress_struct* %cinfo, %struct.box* %boxp) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %boxp.addr = alloca %struct.box*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %histp = alloca i16*, align 8
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c0min = alloca i32, align 4
  %c0max = alloca i32, align 4
  %c1min = alloca i32, align 4
  %c1max = alloca i32, align 4
  %c2min = alloca i32, align 4
  %c2max = alloca i32, align 4
  %dist0 = alloca i64, align 8
  %dist1 = alloca i64, align 8
  %dist2 = alloca i64, align 8
  %ccount = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.box* %boxp, %struct.box** %boxp.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %5, i32 0, i32 3
  %6 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8, !tbaa !26
  store [32 x i16]** %6, [32 x i16]*** %histogram, align 8, !tbaa !2
  %7 = bitcast i16** %histp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %c0min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %c0max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %c1min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %c1max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %c2min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = bitcast i32* %c2max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = bitcast i64* %dist0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = bitcast i64* %dist1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = bitcast i64* %dist2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = bitcast i64* %ccount to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #3
  %21 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c0min3 = getelementptr inbounds %struct.box, %struct.box* %21, i32 0, i32 0
  %22 = load i32, i32* %c0min3, align 4, !tbaa !46
  store i32 %22, i32* %c0min, align 4, !tbaa !27
  %23 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c0max4 = getelementptr inbounds %struct.box, %struct.box* %23, i32 0, i32 1
  %24 = load i32, i32* %c0max4, align 4, !tbaa !48
  store i32 %24, i32* %c0max, align 4, !tbaa !27
  %25 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c1min5 = getelementptr inbounds %struct.box, %struct.box* %25, i32 0, i32 2
  %26 = load i32, i32* %c1min5, align 4, !tbaa !49
  store i32 %26, i32* %c1min, align 4, !tbaa !27
  %27 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c1max6 = getelementptr inbounds %struct.box, %struct.box* %27, i32 0, i32 3
  %28 = load i32, i32* %c1max6, align 4, !tbaa !50
  store i32 %28, i32* %c1max, align 4, !tbaa !27
  %29 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c2min7 = getelementptr inbounds %struct.box, %struct.box* %29, i32 0, i32 4
  %30 = load i32, i32* %c2min7, align 4, !tbaa !51
  store i32 %30, i32* %c2min, align 4, !tbaa !27
  %31 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c2max8 = getelementptr inbounds %struct.box, %struct.box* %31, i32 0, i32 5
  %32 = load i32, i32* %c2max8, align 4, !tbaa !52
  store i32 %32, i32* %c2max, align 4, !tbaa !27
  %33 = load i32, i32* %c0max, align 4, !tbaa !27
  %34 = load i32, i32* %c0min, align 4, !tbaa !27
  %cmp = icmp sgt i32 %33, %34
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %35 = load i32, i32* %c0min, align 4, !tbaa !27
  store i32 %35, i32* %c0, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.then
  %36 = load i32, i32* %c0, align 4, !tbaa !27
  %37 = load i32, i32* %c0max, align 4, !tbaa !27
  %cmp9 = icmp sle i32 %36, %37
  br i1 %cmp9, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %c1min, align 4, !tbaa !27
  store i32 %38, i32* %c1, align 4, !tbaa !27
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.24, %for.body
  %39 = load i32, i32* %c1, align 4, !tbaa !27
  %40 = load i32, i32* %c1max, align 4, !tbaa !27
  %cmp11 = icmp sle i32 %39, %40
  br i1 %cmp11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  %41 = load i32, i32* %c2min, align 4, !tbaa !27
  %idxprom = sext i32 %41 to i64
  %42 = load i32, i32* %c1, align 4, !tbaa !27
  %idxprom13 = sext i32 %42 to i64
  %43 = load i32, i32* %c0, align 4, !tbaa !27
  %idxprom14 = sext i32 %43 to i64
  %44 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [32 x i16]*, [32 x i16]** %44, i64 %idxprom14
  %45 = load [32 x i16]*, [32 x i16]** %arrayidx, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds [32 x i16], [32 x i16]* %45, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx15, i32 0, i64 %idxprom
  store i16* %arrayidx16, i16** %histp, align 8, !tbaa !2
  %46 = load i32, i32* %c2min, align 4, !tbaa !27
  store i32 %46, i32* %c2, align 4, !tbaa !27
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.12
  %47 = load i32, i32* %c2, align 4, !tbaa !27
  %48 = load i32, i32* %c2max, align 4, !tbaa !27
  %cmp18 = icmp sle i32 %47, %48
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %49 = load i16*, i16** %histp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %incdec.ptr, i16** %histp, align 8, !tbaa !2
  %50 = load i16, i16* %49, align 2, !tbaa !43
  %conv = zext i16 %50 to i32
  %cmp20 = icmp ne i32 %conv, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %for.body.19
  %51 = load i32, i32* %c0, align 4, !tbaa !27
  store i32 %51, i32* %c0min, align 4, !tbaa !27
  %52 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c0min23 = getelementptr inbounds %struct.box, %struct.box* %52, i32 0, i32 0
  store i32 %51, i32* %c0min23, align 4, !tbaa !46
  br label %have_c0min

if.end:                                           ; preds = %for.body.19
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %53 = load i32, i32* %c2, align 4, !tbaa !27
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %c2, align 4, !tbaa !27
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %54 = load i32, i32* %c1, align 4, !tbaa !27
  %inc25 = add nsw i32 %54, 1
  store i32 %inc25, i32* %c1, align 4, !tbaa !27
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %55 = load i32, i32* %c0, align 4, !tbaa !27
  %inc28 = add nsw i32 %55, 1
  store i32 %inc28, i32* %c0, align 4, !tbaa !27
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %entry
  br label %have_c0min

have_c0min:                                       ; preds = %if.end.30, %if.then.22
  %56 = load i32, i32* %c0max, align 4, !tbaa !27
  %57 = load i32, i32* %c0min, align 4, !tbaa !27
  %cmp31 = icmp sgt i32 %56, %57
  br i1 %cmp31, label %if.then.33, label %if.end.67

if.then.33:                                       ; preds = %have_c0min
  %58 = load i32, i32* %c0max, align 4, !tbaa !27
  store i32 %58, i32* %c0, align 4, !tbaa !27
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.65, %if.then.33
  %59 = load i32, i32* %c0, align 4, !tbaa !27
  %60 = load i32, i32* %c0min, align 4, !tbaa !27
  %cmp35 = icmp sge i32 %59, %60
  br i1 %cmp35, label %for.body.37, label %for.end.66

for.body.37:                                      ; preds = %for.cond.34
  %61 = load i32, i32* %c1min, align 4, !tbaa !27
  store i32 %61, i32* %c1, align 4, !tbaa !27
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.62, %for.body.37
  %62 = load i32, i32* %c1, align 4, !tbaa !27
  %63 = load i32, i32* %c1max, align 4, !tbaa !27
  %cmp39 = icmp sle i32 %62, %63
  br i1 %cmp39, label %for.body.41, label %for.end.64

for.body.41:                                      ; preds = %for.cond.38
  %64 = load i32, i32* %c2min, align 4, !tbaa !27
  %idxprom42 = sext i32 %64 to i64
  %65 = load i32, i32* %c1, align 4, !tbaa !27
  %idxprom43 = sext i32 %65 to i64
  %66 = load i32, i32* %c0, align 4, !tbaa !27
  %idxprom44 = sext i32 %66 to i64
  %67 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds [32 x i16]*, [32 x i16]** %67, i64 %idxprom44
  %68 = load [32 x i16]*, [32 x i16]** %arrayidx45, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds [32 x i16], [32 x i16]* %68, i64 %idxprom43
  %arrayidx47 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx46, i32 0, i64 %idxprom42
  store i16* %arrayidx47, i16** %histp, align 8, !tbaa !2
  %69 = load i32, i32* %c2min, align 4, !tbaa !27
  store i32 %69, i32* %c2, align 4, !tbaa !27
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.59, %for.body.41
  %70 = load i32, i32* %c2, align 4, !tbaa !27
  %71 = load i32, i32* %c2max, align 4, !tbaa !27
  %cmp49 = icmp sle i32 %70, %71
  br i1 %cmp49, label %for.body.51, label %for.end.61

for.body.51:                                      ; preds = %for.cond.48
  %72 = load i16*, i16** %histp, align 8, !tbaa !2
  %incdec.ptr52 = getelementptr inbounds i16, i16* %72, i32 1
  store i16* %incdec.ptr52, i16** %histp, align 8, !tbaa !2
  %73 = load i16, i16* %72, align 2, !tbaa !43
  %conv53 = zext i16 %73 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %for.body.51
  %74 = load i32, i32* %c0, align 4, !tbaa !27
  store i32 %74, i32* %c0max, align 4, !tbaa !27
  %75 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c0max57 = getelementptr inbounds %struct.box, %struct.box* %75, i32 0, i32 1
  store i32 %74, i32* %c0max57, align 4, !tbaa !48
  br label %have_c0max

if.end.58:                                        ; preds = %for.body.51
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %76 = load i32, i32* %c2, align 4, !tbaa !27
  %inc60 = add nsw i32 %76, 1
  store i32 %inc60, i32* %c2, align 4, !tbaa !27
  br label %for.cond.48

for.end.61:                                       ; preds = %for.cond.48
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %77 = load i32, i32* %c1, align 4, !tbaa !27
  %inc63 = add nsw i32 %77, 1
  store i32 %inc63, i32* %c1, align 4, !tbaa !27
  br label %for.cond.38

for.end.64:                                       ; preds = %for.cond.38
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %78 = load i32, i32* %c0, align 4, !tbaa !27
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %c0, align 4, !tbaa !27
  br label %for.cond.34

for.end.66:                                       ; preds = %for.cond.34
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.66, %have_c0min
  br label %have_c0max

have_c0max:                                       ; preds = %if.end.67, %if.then.56
  %79 = load i32, i32* %c1max, align 4, !tbaa !27
  %80 = load i32, i32* %c1min, align 4, !tbaa !27
  %cmp68 = icmp sgt i32 %79, %80
  br i1 %cmp68, label %if.then.70, label %if.end.105

if.then.70:                                       ; preds = %have_c0max
  %81 = load i32, i32* %c1min, align 4, !tbaa !27
  store i32 %81, i32* %c1, align 4, !tbaa !27
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.102, %if.then.70
  %82 = load i32, i32* %c1, align 4, !tbaa !27
  %83 = load i32, i32* %c1max, align 4, !tbaa !27
  %cmp72 = icmp sle i32 %82, %83
  br i1 %cmp72, label %for.body.74, label %for.end.104

for.body.74:                                      ; preds = %for.cond.71
  %84 = load i32, i32* %c0min, align 4, !tbaa !27
  store i32 %84, i32* %c0, align 4, !tbaa !27
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.99, %for.body.74
  %85 = load i32, i32* %c0, align 4, !tbaa !27
  %86 = load i32, i32* %c0max, align 4, !tbaa !27
  %cmp76 = icmp sle i32 %85, %86
  br i1 %cmp76, label %for.body.78, label %for.end.101

for.body.78:                                      ; preds = %for.cond.75
  %87 = load i32, i32* %c2min, align 4, !tbaa !27
  %idxprom79 = sext i32 %87 to i64
  %88 = load i32, i32* %c1, align 4, !tbaa !27
  %idxprom80 = sext i32 %88 to i64
  %89 = load i32, i32* %c0, align 4, !tbaa !27
  %idxprom81 = sext i32 %89 to i64
  %90 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx82 = getelementptr inbounds [32 x i16]*, [32 x i16]** %90, i64 %idxprom81
  %91 = load [32 x i16]*, [32 x i16]** %arrayidx82, align 8, !tbaa !2
  %arrayidx83 = getelementptr inbounds [32 x i16], [32 x i16]* %91, i64 %idxprom80
  %arrayidx84 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx83, i32 0, i64 %idxprom79
  store i16* %arrayidx84, i16** %histp, align 8, !tbaa !2
  %92 = load i32, i32* %c2min, align 4, !tbaa !27
  store i32 %92, i32* %c2, align 4, !tbaa !27
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.96, %for.body.78
  %93 = load i32, i32* %c2, align 4, !tbaa !27
  %94 = load i32, i32* %c2max, align 4, !tbaa !27
  %cmp86 = icmp sle i32 %93, %94
  br i1 %cmp86, label %for.body.88, label %for.end.98

for.body.88:                                      ; preds = %for.cond.85
  %95 = load i16*, i16** %histp, align 8, !tbaa !2
  %incdec.ptr89 = getelementptr inbounds i16, i16* %95, i32 1
  store i16* %incdec.ptr89, i16** %histp, align 8, !tbaa !2
  %96 = load i16, i16* %95, align 2, !tbaa !43
  %conv90 = zext i16 %96 to i32
  %cmp91 = icmp ne i32 %conv90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %for.body.88
  %97 = load i32, i32* %c1, align 4, !tbaa !27
  store i32 %97, i32* %c1min, align 4, !tbaa !27
  %98 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c1min94 = getelementptr inbounds %struct.box, %struct.box* %98, i32 0, i32 2
  store i32 %97, i32* %c1min94, align 4, !tbaa !49
  br label %have_c1min

if.end.95:                                        ; preds = %for.body.88
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %99 = load i32, i32* %c2, align 4, !tbaa !27
  %inc97 = add nsw i32 %99, 1
  store i32 %inc97, i32* %c2, align 4, !tbaa !27
  br label %for.cond.85

for.end.98:                                       ; preds = %for.cond.85
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.end.98
  %100 = load i32, i32* %c0, align 4, !tbaa !27
  %inc100 = add nsw i32 %100, 1
  store i32 %inc100, i32* %c0, align 4, !tbaa !27
  br label %for.cond.75

for.end.101:                                      ; preds = %for.cond.75
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %101 = load i32, i32* %c1, align 4, !tbaa !27
  %inc103 = add nsw i32 %101, 1
  store i32 %inc103, i32* %c1, align 4, !tbaa !27
  br label %for.cond.71

for.end.104:                                      ; preds = %for.cond.71
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %have_c0max
  br label %have_c1min

have_c1min:                                       ; preds = %if.end.105, %if.then.93
  %102 = load i32, i32* %c1max, align 4, !tbaa !27
  %103 = load i32, i32* %c1min, align 4, !tbaa !27
  %cmp106 = icmp sgt i32 %102, %103
  br i1 %cmp106, label %if.then.108, label %if.end.143

if.then.108:                                      ; preds = %have_c1min
  %104 = load i32, i32* %c1max, align 4, !tbaa !27
  store i32 %104, i32* %c1, align 4, !tbaa !27
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.140, %if.then.108
  %105 = load i32, i32* %c1, align 4, !tbaa !27
  %106 = load i32, i32* %c1min, align 4, !tbaa !27
  %cmp110 = icmp sge i32 %105, %106
  br i1 %cmp110, label %for.body.112, label %for.end.142

for.body.112:                                     ; preds = %for.cond.109
  %107 = load i32, i32* %c0min, align 4, !tbaa !27
  store i32 %107, i32* %c0, align 4, !tbaa !27
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.137, %for.body.112
  %108 = load i32, i32* %c0, align 4, !tbaa !27
  %109 = load i32, i32* %c0max, align 4, !tbaa !27
  %cmp114 = icmp sle i32 %108, %109
  br i1 %cmp114, label %for.body.116, label %for.end.139

for.body.116:                                     ; preds = %for.cond.113
  %110 = load i32, i32* %c2min, align 4, !tbaa !27
  %idxprom117 = sext i32 %110 to i64
  %111 = load i32, i32* %c1, align 4, !tbaa !27
  %idxprom118 = sext i32 %111 to i64
  %112 = load i32, i32* %c0, align 4, !tbaa !27
  %idxprom119 = sext i32 %112 to i64
  %113 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx120 = getelementptr inbounds [32 x i16]*, [32 x i16]** %113, i64 %idxprom119
  %114 = load [32 x i16]*, [32 x i16]** %arrayidx120, align 8, !tbaa !2
  %arrayidx121 = getelementptr inbounds [32 x i16], [32 x i16]* %114, i64 %idxprom118
  %arrayidx122 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx121, i32 0, i64 %idxprom117
  store i16* %arrayidx122, i16** %histp, align 8, !tbaa !2
  %115 = load i32, i32* %c2min, align 4, !tbaa !27
  store i32 %115, i32* %c2, align 4, !tbaa !27
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.134, %for.body.116
  %116 = load i32, i32* %c2, align 4, !tbaa !27
  %117 = load i32, i32* %c2max, align 4, !tbaa !27
  %cmp124 = icmp sle i32 %116, %117
  br i1 %cmp124, label %for.body.126, label %for.end.136

for.body.126:                                     ; preds = %for.cond.123
  %118 = load i16*, i16** %histp, align 8, !tbaa !2
  %incdec.ptr127 = getelementptr inbounds i16, i16* %118, i32 1
  store i16* %incdec.ptr127, i16** %histp, align 8, !tbaa !2
  %119 = load i16, i16* %118, align 2, !tbaa !43
  %conv128 = zext i16 %119 to i32
  %cmp129 = icmp ne i32 %conv128, 0
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %for.body.126
  %120 = load i32, i32* %c1, align 4, !tbaa !27
  store i32 %120, i32* %c1max, align 4, !tbaa !27
  %121 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c1max132 = getelementptr inbounds %struct.box, %struct.box* %121, i32 0, i32 3
  store i32 %120, i32* %c1max132, align 4, !tbaa !50
  br label %have_c1max

if.end.133:                                       ; preds = %for.body.126
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %122 = load i32, i32* %c2, align 4, !tbaa !27
  %inc135 = add nsw i32 %122, 1
  store i32 %inc135, i32* %c2, align 4, !tbaa !27
  br label %for.cond.123

for.end.136:                                      ; preds = %for.cond.123
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.end.136
  %123 = load i32, i32* %c0, align 4, !tbaa !27
  %inc138 = add nsw i32 %123, 1
  store i32 %inc138, i32* %c0, align 4, !tbaa !27
  br label %for.cond.113

for.end.139:                                      ; preds = %for.cond.113
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.end.139
  %124 = load i32, i32* %c1, align 4, !tbaa !27
  %dec141 = add nsw i32 %124, -1
  store i32 %dec141, i32* %c1, align 4, !tbaa !27
  br label %for.cond.109

for.end.142:                                      ; preds = %for.cond.109
  br label %if.end.143

if.end.143:                                       ; preds = %for.end.142, %have_c1min
  br label %have_c1max

have_c1max:                                       ; preds = %if.end.143, %if.then.131
  %125 = load i32, i32* %c2max, align 4, !tbaa !27
  %126 = load i32, i32* %c2min, align 4, !tbaa !27
  %cmp144 = icmp sgt i32 %125, %126
  br i1 %cmp144, label %if.then.146, label %if.end.180

if.then.146:                                      ; preds = %have_c1max
  %127 = load i32, i32* %c2min, align 4, !tbaa !27
  store i32 %127, i32* %c2, align 4, !tbaa !27
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.177, %if.then.146
  %128 = load i32, i32* %c2, align 4, !tbaa !27
  %129 = load i32, i32* %c2max, align 4, !tbaa !27
  %cmp148 = icmp sle i32 %128, %129
  br i1 %cmp148, label %for.body.150, label %for.end.179

for.body.150:                                     ; preds = %for.cond.147
  %130 = load i32, i32* %c0min, align 4, !tbaa !27
  store i32 %130, i32* %c0, align 4, !tbaa !27
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.174, %for.body.150
  %131 = load i32, i32* %c0, align 4, !tbaa !27
  %132 = load i32, i32* %c0max, align 4, !tbaa !27
  %cmp152 = icmp sle i32 %131, %132
  br i1 %cmp152, label %for.body.154, label %for.end.176

for.body.154:                                     ; preds = %for.cond.151
  %133 = load i32, i32* %c2, align 4, !tbaa !27
  %idxprom155 = sext i32 %133 to i64
  %134 = load i32, i32* %c1min, align 4, !tbaa !27
  %idxprom156 = sext i32 %134 to i64
  %135 = load i32, i32* %c0, align 4, !tbaa !27
  %idxprom157 = sext i32 %135 to i64
  %136 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx158 = getelementptr inbounds [32 x i16]*, [32 x i16]** %136, i64 %idxprom157
  %137 = load [32 x i16]*, [32 x i16]** %arrayidx158, align 8, !tbaa !2
  %arrayidx159 = getelementptr inbounds [32 x i16], [32 x i16]* %137, i64 %idxprom156
  %arrayidx160 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx159, i32 0, i64 %idxprom155
  store i16* %arrayidx160, i16** %histp, align 8, !tbaa !2
  %138 = load i32, i32* %c1min, align 4, !tbaa !27
  store i32 %138, i32* %c1, align 4, !tbaa !27
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.171, %for.body.154
  %139 = load i32, i32* %c1, align 4, !tbaa !27
  %140 = load i32, i32* %c1max, align 4, !tbaa !27
  %cmp162 = icmp sle i32 %139, %140
  br i1 %cmp162, label %for.body.164, label %for.end.173

for.body.164:                                     ; preds = %for.cond.161
  %141 = load i16*, i16** %histp, align 8, !tbaa !2
  %142 = load i16, i16* %141, align 2, !tbaa !43
  %conv165 = zext i16 %142 to i32
  %cmp166 = icmp ne i32 %conv165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %for.body.164
  %143 = load i32, i32* %c2, align 4, !tbaa !27
  store i32 %143, i32* %c2min, align 4, !tbaa !27
  %144 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c2min169 = getelementptr inbounds %struct.box, %struct.box* %144, i32 0, i32 4
  store i32 %143, i32* %c2min169, align 4, !tbaa !51
  br label %have_c2min

if.end.170:                                       ; preds = %for.body.164
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.170
  %145 = load i32, i32* %c1, align 4, !tbaa !27
  %inc172 = add nsw i32 %145, 1
  store i32 %inc172, i32* %c1, align 4, !tbaa !27
  %146 = load i16*, i16** %histp, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i16, i16* %146, i64 32
  store i16* %add.ptr, i16** %histp, align 8, !tbaa !2
  br label %for.cond.161

for.end.173:                                      ; preds = %for.cond.161
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.end.173
  %147 = load i32, i32* %c0, align 4, !tbaa !27
  %inc175 = add nsw i32 %147, 1
  store i32 %inc175, i32* %c0, align 4, !tbaa !27
  br label %for.cond.151

for.end.176:                                      ; preds = %for.cond.151
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end.176
  %148 = load i32, i32* %c2, align 4, !tbaa !27
  %inc178 = add nsw i32 %148, 1
  store i32 %inc178, i32* %c2, align 4, !tbaa !27
  br label %for.cond.147

for.end.179:                                      ; preds = %for.cond.147
  br label %if.end.180

if.end.180:                                       ; preds = %for.end.179, %have_c1max
  br label %have_c2min

have_c2min:                                       ; preds = %if.end.180, %if.then.168
  %149 = load i32, i32* %c2max, align 4, !tbaa !27
  %150 = load i32, i32* %c2min, align 4, !tbaa !27
  %cmp181 = icmp sgt i32 %149, %150
  br i1 %cmp181, label %if.then.183, label %if.end.218

if.then.183:                                      ; preds = %have_c2min
  %151 = load i32, i32* %c2max, align 4, !tbaa !27
  store i32 %151, i32* %c2, align 4, !tbaa !27
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.215, %if.then.183
  %152 = load i32, i32* %c2, align 4, !tbaa !27
  %153 = load i32, i32* %c2min, align 4, !tbaa !27
  %cmp185 = icmp sge i32 %152, %153
  br i1 %cmp185, label %for.body.187, label %for.end.217

for.body.187:                                     ; preds = %for.cond.184
  %154 = load i32, i32* %c0min, align 4, !tbaa !27
  store i32 %154, i32* %c0, align 4, !tbaa !27
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.212, %for.body.187
  %155 = load i32, i32* %c0, align 4, !tbaa !27
  %156 = load i32, i32* %c0max, align 4, !tbaa !27
  %cmp189 = icmp sle i32 %155, %156
  br i1 %cmp189, label %for.body.191, label %for.end.214

for.body.191:                                     ; preds = %for.cond.188
  %157 = load i32, i32* %c2, align 4, !tbaa !27
  %idxprom192 = sext i32 %157 to i64
  %158 = load i32, i32* %c1min, align 4, !tbaa !27
  %idxprom193 = sext i32 %158 to i64
  %159 = load i32, i32* %c0, align 4, !tbaa !27
  %idxprom194 = sext i32 %159 to i64
  %160 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx195 = getelementptr inbounds [32 x i16]*, [32 x i16]** %160, i64 %idxprom194
  %161 = load [32 x i16]*, [32 x i16]** %arrayidx195, align 8, !tbaa !2
  %arrayidx196 = getelementptr inbounds [32 x i16], [32 x i16]* %161, i64 %idxprom193
  %arrayidx197 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx196, i32 0, i64 %idxprom192
  store i16* %arrayidx197, i16** %histp, align 8, !tbaa !2
  %162 = load i32, i32* %c1min, align 4, !tbaa !27
  store i32 %162, i32* %c1, align 4, !tbaa !27
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.208, %for.body.191
  %163 = load i32, i32* %c1, align 4, !tbaa !27
  %164 = load i32, i32* %c1max, align 4, !tbaa !27
  %cmp199 = icmp sle i32 %163, %164
  br i1 %cmp199, label %for.body.201, label %for.end.211

for.body.201:                                     ; preds = %for.cond.198
  %165 = load i16*, i16** %histp, align 8, !tbaa !2
  %166 = load i16, i16* %165, align 2, !tbaa !43
  %conv202 = zext i16 %166 to i32
  %cmp203 = icmp ne i32 %conv202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %for.body.201
  %167 = load i32, i32* %c2, align 4, !tbaa !27
  store i32 %167, i32* %c2max, align 4, !tbaa !27
  %168 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c2max206 = getelementptr inbounds %struct.box, %struct.box* %168, i32 0, i32 5
  store i32 %167, i32* %c2max206, align 4, !tbaa !52
  br label %have_c2max

if.end.207:                                       ; preds = %for.body.201
  br label %for.inc.208

for.inc.208:                                      ; preds = %if.end.207
  %169 = load i32, i32* %c1, align 4, !tbaa !27
  %inc209 = add nsw i32 %169, 1
  store i32 %inc209, i32* %c1, align 4, !tbaa !27
  %170 = load i16*, i16** %histp, align 8, !tbaa !2
  %add.ptr210 = getelementptr inbounds i16, i16* %170, i64 32
  store i16* %add.ptr210, i16** %histp, align 8, !tbaa !2
  br label %for.cond.198

for.end.211:                                      ; preds = %for.cond.198
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.end.211
  %171 = load i32, i32* %c0, align 4, !tbaa !27
  %inc213 = add nsw i32 %171, 1
  store i32 %inc213, i32* %c0, align 4, !tbaa !27
  br label %for.cond.188

for.end.214:                                      ; preds = %for.cond.188
  br label %for.inc.215

for.inc.215:                                      ; preds = %for.end.214
  %172 = load i32, i32* %c2, align 4, !tbaa !27
  %dec216 = add nsw i32 %172, -1
  store i32 %dec216, i32* %c2, align 4, !tbaa !27
  br label %for.cond.184

for.end.217:                                      ; preds = %for.cond.184
  br label %if.end.218

if.end.218:                                       ; preds = %for.end.217, %have_c2min
  br label %have_c2max

have_c2max:                                       ; preds = %if.end.218, %if.then.205
  %173 = load i32, i32* %c0max, align 4, !tbaa !27
  %174 = load i32, i32* %c0min, align 4, !tbaa !27
  %sub = sub nsw i32 %173, %174
  %shl = shl i32 %sub, 3
  %mul = mul nsw i32 %shl, 2
  %conv219 = sext i32 %mul to i64
  store i64 %conv219, i64* %dist0, align 8, !tbaa !40
  %175 = load i32, i32* %c1max, align 4, !tbaa !27
  %176 = load i32, i32* %c1min, align 4, !tbaa !27
  %sub220 = sub nsw i32 %175, %176
  %shl221 = shl i32 %sub220, 2
  %mul222 = mul nsw i32 %shl221, 3
  %conv223 = sext i32 %mul222 to i64
  store i64 %conv223, i64* %dist1, align 8, !tbaa !40
  %177 = load i32, i32* %c2max, align 4, !tbaa !27
  %178 = load i32, i32* %c2min, align 4, !tbaa !27
  %sub224 = sub nsw i32 %177, %178
  %shl225 = shl i32 %sub224, 3
  %mul226 = mul nsw i32 %shl225, 1
  %conv227 = sext i32 %mul226 to i64
  store i64 %conv227, i64* %dist2, align 8, !tbaa !40
  %179 = load i64, i64* %dist0, align 8, !tbaa !40
  %180 = load i64, i64* %dist0, align 8, !tbaa !40
  %mul228 = mul nsw i64 %179, %180
  %181 = load i64, i64* %dist1, align 8, !tbaa !40
  %182 = load i64, i64* %dist1, align 8, !tbaa !40
  %mul229 = mul nsw i64 %181, %182
  %add = add nsw i64 %mul228, %mul229
  %183 = load i64, i64* %dist2, align 8, !tbaa !40
  %184 = load i64, i64* %dist2, align 8, !tbaa !40
  %mul230 = mul nsw i64 %183, %184
  %add231 = add nsw i64 %add, %mul230
  %185 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %volume = getelementptr inbounds %struct.box, %struct.box* %185, i32 0, i32 6
  store i64 %add231, i64* %volume, align 8, !tbaa !54
  store i64 0, i64* %ccount, align 8, !tbaa !40
  %186 = load i32, i32* %c0min, align 4, !tbaa !27
  store i32 %186, i32* %c0, align 4, !tbaa !27
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.263, %have_c2max
  %187 = load i32, i32* %c0, align 4, !tbaa !27
  %188 = load i32, i32* %c0max, align 4, !tbaa !27
  %cmp233 = icmp sle i32 %187, %188
  br i1 %cmp233, label %for.body.235, label %for.end.265

for.body.235:                                     ; preds = %for.cond.232
  %189 = load i32, i32* %c1min, align 4, !tbaa !27
  store i32 %189, i32* %c1, align 4, !tbaa !27
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.260, %for.body.235
  %190 = load i32, i32* %c1, align 4, !tbaa !27
  %191 = load i32, i32* %c1max, align 4, !tbaa !27
  %cmp237 = icmp sle i32 %190, %191
  br i1 %cmp237, label %for.body.239, label %for.end.262

for.body.239:                                     ; preds = %for.cond.236
  %192 = load i32, i32* %c2min, align 4, !tbaa !27
  %idxprom240 = sext i32 %192 to i64
  %193 = load i32, i32* %c1, align 4, !tbaa !27
  %idxprom241 = sext i32 %193 to i64
  %194 = load i32, i32* %c0, align 4, !tbaa !27
  %idxprom242 = sext i32 %194 to i64
  %195 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx243 = getelementptr inbounds [32 x i16]*, [32 x i16]** %195, i64 %idxprom242
  %196 = load [32 x i16]*, [32 x i16]** %arrayidx243, align 8, !tbaa !2
  %arrayidx244 = getelementptr inbounds [32 x i16], [32 x i16]* %196, i64 %idxprom241
  %arrayidx245 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx244, i32 0, i64 %idxprom240
  store i16* %arrayidx245, i16** %histp, align 8, !tbaa !2
  %197 = load i32, i32* %c2min, align 4, !tbaa !27
  store i32 %197, i32* %c2, align 4, !tbaa !27
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.256, %for.body.239
  %198 = load i32, i32* %c2, align 4, !tbaa !27
  %199 = load i32, i32* %c2max, align 4, !tbaa !27
  %cmp247 = icmp sle i32 %198, %199
  br i1 %cmp247, label %for.body.249, label %for.end.259

for.body.249:                                     ; preds = %for.cond.246
  %200 = load i16*, i16** %histp, align 8, !tbaa !2
  %201 = load i16, i16* %200, align 2, !tbaa !43
  %conv250 = zext i16 %201 to i32
  %cmp251 = icmp ne i32 %conv250, 0
  br i1 %cmp251, label %if.then.253, label %if.end.255

if.then.253:                                      ; preds = %for.body.249
  %202 = load i64, i64* %ccount, align 8, !tbaa !40
  %inc254 = add nsw i64 %202, 1
  store i64 %inc254, i64* %ccount, align 8, !tbaa !40
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.253, %for.body.249
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.255
  %203 = load i32, i32* %c2, align 4, !tbaa !27
  %inc257 = add nsw i32 %203, 1
  store i32 %inc257, i32* %c2, align 4, !tbaa !27
  %204 = load i16*, i16** %histp, align 8, !tbaa !2
  %incdec.ptr258 = getelementptr inbounds i16, i16* %204, i32 1
  store i16* %incdec.ptr258, i16** %histp, align 8, !tbaa !2
  br label %for.cond.246

for.end.259:                                      ; preds = %for.cond.246
  br label %for.inc.260

for.inc.260:                                      ; preds = %for.end.259
  %205 = load i32, i32* %c1, align 4, !tbaa !27
  %inc261 = add nsw i32 %205, 1
  store i32 %inc261, i32* %c1, align 4, !tbaa !27
  br label %for.cond.236

for.end.262:                                      ; preds = %for.cond.236
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.end.262
  %206 = load i32, i32* %c0, align 4, !tbaa !27
  %inc264 = add nsw i32 %206, 1
  store i32 %inc264, i32* %c0, align 4, !tbaa !27
  br label %for.cond.232

for.end.265:                                      ; preds = %for.cond.232
  %207 = load i64, i64* %ccount, align 8, !tbaa !40
  %208 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %colorcount = getelementptr inbounds %struct.box, %struct.box* %208, i32 0, i32 7
  store i64 %207, i64* %colorcount, align 8, !tbaa !55
  %209 = bitcast i64* %ccount to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #3
  %210 = bitcast i64* %dist2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #3
  %211 = bitcast i64* %dist1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #3
  %212 = bitcast i64* %dist0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #3
  %213 = bitcast i32* %c2max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #3
  %214 = bitcast i32* %c2min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #3
  %215 = bitcast i32* %c1max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #3
  %216 = bitcast i32* %c1min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #3
  %217 = bitcast i32* %c0max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #3
  %218 = bitcast i32* %c0min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #3
  %219 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #3
  %220 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #3
  %221 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #3
  %222 = bitcast i16** %histp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #3
  %223 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #3
  %224 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @median_cut(%struct.jpeg_decompress_struct* %cinfo, %struct.box* %boxlist, i32 %numboxes, i32 %desired_colors) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %desired_colors.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %lb = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %cmax = alloca i32, align 4
  %b1 = alloca %struct.box*, align 8
  %b2 = alloca %struct.box*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8, !tbaa !2
  store i32 %numboxes, i32* %numboxes.addr, align 4, !tbaa !27
  store i32 %desired_colors, i32* %desired_colors.addr, align 4, !tbaa !27
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %cmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast %struct.box** %b1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast %struct.box** %b2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %8 = load i32, i32* %numboxes.addr, align 4, !tbaa !27
  %9 = load i32, i32* %desired_colors.addr, align 4, !tbaa !27
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %numboxes.addr, align 4, !tbaa !27
  %mul = mul nsw i32 %10, 2
  %11 = load i32, i32* %desired_colors.addr, align 4, !tbaa !27
  %cmp1 = icmp sle i32 %mul, %11
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load %struct.box*, %struct.box** %boxlist.addr, align 8, !tbaa !2
  %13 = load i32, i32* %numboxes.addr, align 4, !tbaa !27
  %call = call %struct.box* @find_biggest_color_pop(%struct.box* %12, i32 %13)
  store %struct.box* %call, %struct.box** %b1, align 8, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load %struct.box*, %struct.box** %boxlist.addr, align 8, !tbaa !2
  %15 = load i32, i32* %numboxes.addr, align 4, !tbaa !27
  %call2 = call %struct.box* @find_biggest_volume(%struct.box* %14, i32 %15)
  store %struct.box* %call2, %struct.box** %b1, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %cmp3 = icmp eq %struct.box* %16, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %while.end

if.end.5:                                         ; preds = %if.end
  %17 = load i32, i32* %numboxes.addr, align 4, !tbaa !27
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.box*, %struct.box** %boxlist.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.box, %struct.box* %18, i64 %idxprom
  store %struct.box* %arrayidx, %struct.box** %b2, align 8, !tbaa !2
  %19 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c0max = getelementptr inbounds %struct.box, %struct.box* %19, i32 0, i32 1
  %20 = load i32, i32* %c0max, align 4, !tbaa !48
  %21 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  %c0max6 = getelementptr inbounds %struct.box, %struct.box* %21, i32 0, i32 1
  store i32 %20, i32* %c0max6, align 4, !tbaa !48
  %22 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c1max = getelementptr inbounds %struct.box, %struct.box* %22, i32 0, i32 3
  %23 = load i32, i32* %c1max, align 4, !tbaa !50
  %24 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  %c1max7 = getelementptr inbounds %struct.box, %struct.box* %24, i32 0, i32 3
  store i32 %23, i32* %c1max7, align 4, !tbaa !50
  %25 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c2max = getelementptr inbounds %struct.box, %struct.box* %25, i32 0, i32 5
  %26 = load i32, i32* %c2max, align 4, !tbaa !52
  %27 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  %c2max8 = getelementptr inbounds %struct.box, %struct.box* %27, i32 0, i32 5
  store i32 %26, i32* %c2max8, align 4, !tbaa !52
  %28 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c0min = getelementptr inbounds %struct.box, %struct.box* %28, i32 0, i32 0
  %29 = load i32, i32* %c0min, align 4, !tbaa !46
  %30 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  %c0min9 = getelementptr inbounds %struct.box, %struct.box* %30, i32 0, i32 0
  store i32 %29, i32* %c0min9, align 4, !tbaa !46
  %31 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c1min = getelementptr inbounds %struct.box, %struct.box* %31, i32 0, i32 2
  %32 = load i32, i32* %c1min, align 4, !tbaa !49
  %33 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  %c1min10 = getelementptr inbounds %struct.box, %struct.box* %33, i32 0, i32 2
  store i32 %32, i32* %c1min10, align 4, !tbaa !49
  %34 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c2min = getelementptr inbounds %struct.box, %struct.box* %34, i32 0, i32 4
  %35 = load i32, i32* %c2min, align 4, !tbaa !51
  %36 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  %c2min11 = getelementptr inbounds %struct.box, %struct.box* %36, i32 0, i32 4
  store i32 %35, i32* %c2min11, align 4, !tbaa !51
  %37 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c0max12 = getelementptr inbounds %struct.box, %struct.box* %37, i32 0, i32 1
  %38 = load i32, i32* %c0max12, align 4, !tbaa !48
  %39 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c0min13 = getelementptr inbounds %struct.box, %struct.box* %39, i32 0, i32 0
  %40 = load i32, i32* %c0min13, align 4, !tbaa !46
  %sub = sub nsw i32 %38, %40
  %shl = shl i32 %sub, 3
  %mul14 = mul nsw i32 %shl, 2
  store i32 %mul14, i32* %c0, align 4, !tbaa !27
  %41 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c1max15 = getelementptr inbounds %struct.box, %struct.box* %41, i32 0, i32 3
  %42 = load i32, i32* %c1max15, align 4, !tbaa !50
  %43 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c1min16 = getelementptr inbounds %struct.box, %struct.box* %43, i32 0, i32 2
  %44 = load i32, i32* %c1min16, align 4, !tbaa !49
  %sub17 = sub nsw i32 %42, %44
  %shl18 = shl i32 %sub17, 2
  %mul19 = mul nsw i32 %shl18, 3
  store i32 %mul19, i32* %c1, align 4, !tbaa !27
  %45 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c2max20 = getelementptr inbounds %struct.box, %struct.box* %45, i32 0, i32 5
  %46 = load i32, i32* %c2max20, align 4, !tbaa !52
  %47 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c2min21 = getelementptr inbounds %struct.box, %struct.box* %47, i32 0, i32 4
  %48 = load i32, i32* %c2min21, align 4, !tbaa !51
  %sub22 = sub nsw i32 %46, %48
  %shl23 = shl i32 %sub22, 3
  %mul24 = mul nsw i32 %shl23, 1
  store i32 %mul24, i32* %c2, align 4, !tbaa !27
  %49 = load i32, i32* %c1, align 4, !tbaa !27
  store i32 %49, i32* %cmax, align 4, !tbaa !27
  store i32 1, i32* %n, align 4, !tbaa !27
  %50 = load i32, i32* %c0, align 4, !tbaa !27
  %51 = load i32, i32* %cmax, align 4, !tbaa !27
  %cmp25 = icmp sgt i32 %50, %51
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.5
  %52 = load i32, i32* %c0, align 4, !tbaa !27
  store i32 %52, i32* %cmax, align 4, !tbaa !27
  store i32 0, i32* %n, align 4, !tbaa !27
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.5
  %53 = load i32, i32* %c2, align 4, !tbaa !27
  %54 = load i32, i32* %cmax, align 4, !tbaa !27
  %cmp28 = icmp sgt i32 %53, %54
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  store i32 2, i32* %n, align 4, !tbaa !27
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  %55 = load i32, i32* %n, align 4, !tbaa !27
  switch i32 %55, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.36
    i32 2, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.end.30
  %56 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c0max31 = getelementptr inbounds %struct.box, %struct.box* %56, i32 0, i32 1
  %57 = load i32, i32* %c0max31, align 4, !tbaa !48
  %58 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c0min32 = getelementptr inbounds %struct.box, %struct.box* %58, i32 0, i32 0
  %59 = load i32, i32* %c0min32, align 4, !tbaa !46
  %add = add nsw i32 %57, %59
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %lb, align 4, !tbaa !27
  %60 = load i32, i32* %lb, align 4, !tbaa !27
  %61 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c0max33 = getelementptr inbounds %struct.box, %struct.box* %61, i32 0, i32 1
  store i32 %60, i32* %c0max33, align 4, !tbaa !48
  %62 = load i32, i32* %lb, align 4, !tbaa !27
  %add34 = add nsw i32 %62, 1
  %63 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  %c0min35 = getelementptr inbounds %struct.box, %struct.box* %63, i32 0, i32 0
  store i32 %add34, i32* %c0min35, align 4, !tbaa !46
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.30
  %64 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c1max37 = getelementptr inbounds %struct.box, %struct.box* %64, i32 0, i32 3
  %65 = load i32, i32* %c1max37, align 4, !tbaa !50
  %66 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c1min38 = getelementptr inbounds %struct.box, %struct.box* %66, i32 0, i32 2
  %67 = load i32, i32* %c1min38, align 4, !tbaa !49
  %add39 = add nsw i32 %65, %67
  %div40 = sdiv i32 %add39, 2
  store i32 %div40, i32* %lb, align 4, !tbaa !27
  %68 = load i32, i32* %lb, align 4, !tbaa !27
  %69 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c1max41 = getelementptr inbounds %struct.box, %struct.box* %69, i32 0, i32 3
  store i32 %68, i32* %c1max41, align 4, !tbaa !50
  %70 = load i32, i32* %lb, align 4, !tbaa !27
  %add42 = add nsw i32 %70, 1
  %71 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  %c1min43 = getelementptr inbounds %struct.box, %struct.box* %71, i32 0, i32 2
  store i32 %add42, i32* %c1min43, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.30
  %72 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c2max45 = getelementptr inbounds %struct.box, %struct.box* %72, i32 0, i32 5
  %73 = load i32, i32* %c2max45, align 4, !tbaa !52
  %74 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c2min46 = getelementptr inbounds %struct.box, %struct.box* %74, i32 0, i32 4
  %75 = load i32, i32* %c2min46, align 4, !tbaa !51
  %add47 = add nsw i32 %73, %75
  %div48 = sdiv i32 %add47, 2
  store i32 %div48, i32* %lb, align 4, !tbaa !27
  %76 = load i32, i32* %lb, align 4, !tbaa !27
  %77 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  %c2max49 = getelementptr inbounds %struct.box, %struct.box* %77, i32 0, i32 5
  store i32 %76, i32* %c2max49, align 4, !tbaa !52
  %78 = load i32, i32* %lb, align 4, !tbaa !27
  %add50 = add nsw i32 %78, 1
  %79 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  %c2min51 = getelementptr inbounds %struct.box, %struct.box* %79, i32 0, i32 4
  store i32 %add50, i32* %c2min51, align 4, !tbaa !51
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.30, %sw.bb.44, %sw.bb.36, %sw.bb
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %81 = load %struct.box*, %struct.box** %b1, align 8, !tbaa !2
  call void @update_box(%struct.jpeg_decompress_struct* %80, %struct.box* %81)
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %83 = load %struct.box*, %struct.box** %b2, align 8, !tbaa !2
  call void @update_box(%struct.jpeg_decompress_struct* %82, %struct.box* %83)
  %84 = load i32, i32* %numboxes.addr, align 4, !tbaa !27
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %numboxes.addr, align 4, !tbaa !27
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %85 = load i32, i32* %numboxes.addr, align 4, !tbaa !27
  %86 = bitcast %struct.box** %b2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #3
  %87 = bitcast %struct.box** %b1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #3
  %88 = bitcast i32* %cmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #3
  %90 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #3
  %91 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #3
  %92 = bitcast i32* %lb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #3
  %93 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #3
  ret i32 %85
}

; Function Attrs: nounwind ssp uwtable
define internal void @compute_color(%struct.jpeg_decompress_struct* %cinfo, %struct.box* %boxp, i32 %icolor) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %boxp.addr = alloca %struct.box*, align 8
  %icolor.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %histp = alloca i16*, align 8
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c0min = alloca i32, align 4
  %c0max = alloca i32, align 4
  %c1min = alloca i32, align 4
  %c1max = alloca i32, align 4
  %c2min = alloca i32, align 4
  %c2max = alloca i32, align 4
  %count = alloca i64, align 8
  %total = alloca i64, align 8
  %c0total = alloca i64, align 8
  %c1total = alloca i64, align 8
  %c2total = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.box* %boxp, %struct.box** %boxp.addr, align 8, !tbaa !2
  store i32 %icolor, i32* %icolor.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %5, i32 0, i32 3
  %6 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8, !tbaa !26
  store [32 x i16]** %6, [32 x i16]*** %histogram, align 8, !tbaa !2
  %7 = bitcast i16** %histp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %c0min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %c0max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %c1min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %c1max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %c2min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = bitcast i32* %c2max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = bitcast i64* %total to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  store i64 0, i64* %total, align 8, !tbaa !40
  %19 = bitcast i64* %c0total to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  store i64 0, i64* %c0total, align 8, !tbaa !40
  %20 = bitcast i64* %c1total to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #3
  store i64 0, i64* %c1total, align 8, !tbaa !40
  %21 = bitcast i64* %c2total to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  store i64 0, i64* %c2total, align 8, !tbaa !40
  %22 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c0min3 = getelementptr inbounds %struct.box, %struct.box* %22, i32 0, i32 0
  %23 = load i32, i32* %c0min3, align 4, !tbaa !46
  store i32 %23, i32* %c0min, align 4, !tbaa !27
  %24 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c0max4 = getelementptr inbounds %struct.box, %struct.box* %24, i32 0, i32 1
  %25 = load i32, i32* %c0max4, align 4, !tbaa !48
  store i32 %25, i32* %c0max, align 4, !tbaa !27
  %26 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c1min5 = getelementptr inbounds %struct.box, %struct.box* %26, i32 0, i32 2
  %27 = load i32, i32* %c1min5, align 4, !tbaa !49
  store i32 %27, i32* %c1min, align 4, !tbaa !27
  %28 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c1max6 = getelementptr inbounds %struct.box, %struct.box* %28, i32 0, i32 3
  %29 = load i32, i32* %c1max6, align 4, !tbaa !50
  store i32 %29, i32* %c1max, align 4, !tbaa !27
  %30 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c2min7 = getelementptr inbounds %struct.box, %struct.box* %30, i32 0, i32 4
  %31 = load i32, i32* %c2min7, align 4, !tbaa !51
  store i32 %31, i32* %c2min, align 4, !tbaa !27
  %32 = load %struct.box*, %struct.box** %boxp.addr, align 8, !tbaa !2
  %c2max8 = getelementptr inbounds %struct.box, %struct.box* %32, i32 0, i32 5
  %33 = load i32, i32* %c2max8, align 4, !tbaa !52
  store i32 %33, i32* %c2max, align 4, !tbaa !27
  %34 = load i32, i32* %c0min, align 4, !tbaa !27
  store i32 %34, i32* %c0, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %35 = load i32, i32* %c0, align 4, !tbaa !27
  %36 = load i32, i32* %c0max, align 4, !tbaa !27
  %cmp = icmp sle i32 %35, %36
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %c1min, align 4, !tbaa !27
  store i32 %37, i32* %c1, align 4, !tbaa !27
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.34, %for.body
  %38 = load i32, i32* %c1, align 4, !tbaa !27
  %39 = load i32, i32* %c1max, align 4, !tbaa !27
  %cmp10 = icmp sle i32 %38, %39
  br i1 %cmp10, label %for.body.11, label %for.end.36

for.body.11:                                      ; preds = %for.cond.9
  %40 = load i32, i32* %c2min, align 4, !tbaa !27
  %idxprom = sext i32 %40 to i64
  %41 = load i32, i32* %c1, align 4, !tbaa !27
  %idxprom12 = sext i32 %41 to i64
  %42 = load i32, i32* %c0, align 4, !tbaa !27
  %idxprom13 = sext i32 %42 to i64
  %43 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [32 x i16]*, [32 x i16]** %43, i64 %idxprom13
  %44 = load [32 x i16]*, [32 x i16]** %arrayidx, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds [32 x i16], [32 x i16]* %44, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx14, i32 0, i64 %idxprom
  store i16* %arrayidx15, i16** %histp, align 8, !tbaa !2
  %45 = load i32, i32* %c2min, align 4, !tbaa !27
  store i32 %45, i32* %c2, align 4, !tbaa !27
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body.11
  %46 = load i32, i32* %c2, align 4, !tbaa !27
  %47 = load i32, i32* %c2max, align 4, !tbaa !27
  %cmp17 = icmp sle i32 %46, %47
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %48 = load i16*, i16** %histp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %incdec.ptr, i16** %histp, align 8, !tbaa !2
  %49 = load i16, i16* %48, align 2, !tbaa !43
  %conv = zext i16 %49 to i64
  store i64 %conv, i64* %count, align 8, !tbaa !40
  %cmp19 = icmp ne i64 %conv, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.18
  %50 = load i64, i64* %count, align 8, !tbaa !40
  %51 = load i64, i64* %total, align 8, !tbaa !40
  %add = add nsw i64 %51, %50
  store i64 %add, i64* %total, align 8, !tbaa !40
  %52 = load i32, i32* %c0, align 4, !tbaa !27
  %shl = shl i32 %52, 3
  %add21 = add nsw i32 %shl, 4
  %conv22 = sext i32 %add21 to i64
  %53 = load i64, i64* %count, align 8, !tbaa !40
  %mul = mul nsw i64 %conv22, %53
  %54 = load i64, i64* %c0total, align 8, !tbaa !40
  %add23 = add nsw i64 %54, %mul
  store i64 %add23, i64* %c0total, align 8, !tbaa !40
  %55 = load i32, i32* %c1, align 4, !tbaa !27
  %shl24 = shl i32 %55, 2
  %add25 = add nsw i32 %shl24, 2
  %conv26 = sext i32 %add25 to i64
  %56 = load i64, i64* %count, align 8, !tbaa !40
  %mul27 = mul nsw i64 %conv26, %56
  %57 = load i64, i64* %c1total, align 8, !tbaa !40
  %add28 = add nsw i64 %57, %mul27
  store i64 %add28, i64* %c1total, align 8, !tbaa !40
  %58 = load i32, i32* %c2, align 4, !tbaa !27
  %shl29 = shl i32 %58, 3
  %add30 = add nsw i32 %shl29, 4
  %conv31 = sext i32 %add30 to i64
  %59 = load i64, i64* %count, align 8, !tbaa !40
  %mul32 = mul nsw i64 %conv31, %59
  %60 = load i64, i64* %c2total, align 8, !tbaa !40
  %add33 = add nsw i64 %60, %mul32
  store i64 %add33, i64* %c2total, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %61 = load i32, i32* %c2, align 4, !tbaa !27
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %c2, align 4, !tbaa !27
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %62 = load i32, i32* %c1, align 4, !tbaa !27
  %inc35 = add nsw i32 %62, 1
  store i32 %inc35, i32* %c1, align 4, !tbaa !27
  br label %for.cond.9

for.end.36:                                       ; preds = %for.cond.9
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %63 = load i32, i32* %c0, align 4, !tbaa !27
  %inc38 = add nsw i32 %63, 1
  store i32 %inc38, i32* %c0, align 4, !tbaa !27
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %64 = load i64, i64* %c0total, align 8, !tbaa !40
  %65 = load i64, i64* %total, align 8, !tbaa !40
  %shr = ashr i64 %65, 1
  %add40 = add nsw i64 %64, %shr
  %66 = load i64, i64* %total, align 8, !tbaa !40
  %div = sdiv i64 %add40, %66
  %conv41 = trunc i64 %div to i8
  %67 = load i32, i32* %icolor.addr, align 4, !tbaa !27
  %idxprom42 = sext i32 %67 to i64
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 32
  %69 = load i8**, i8*** %colormap, align 8, !tbaa !44
  %arrayidx43 = getelementptr inbounds i8*, i8** %69, i64 0
  %70 = load i8*, i8** %arrayidx43, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds i8, i8* %70, i64 %idxprom42
  store i8 %conv41, i8* %arrayidx44, align 1, !tbaa !42
  %71 = load i64, i64* %c1total, align 8, !tbaa !40
  %72 = load i64, i64* %total, align 8, !tbaa !40
  %shr45 = ashr i64 %72, 1
  %add46 = add nsw i64 %71, %shr45
  %73 = load i64, i64* %total, align 8, !tbaa !40
  %div47 = sdiv i64 %add46, %73
  %conv48 = trunc i64 %div47 to i8
  %74 = load i32, i32* %icolor.addr, align 4, !tbaa !27
  %idxprom49 = sext i32 %74 to i64
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 32
  %76 = load i8**, i8*** %colormap50, align 8, !tbaa !44
  %arrayidx51 = getelementptr inbounds i8*, i8** %76, i64 1
  %77 = load i8*, i8** %arrayidx51, align 8, !tbaa !2
  %arrayidx52 = getelementptr inbounds i8, i8* %77, i64 %idxprom49
  store i8 %conv48, i8* %arrayidx52, align 1, !tbaa !42
  %78 = load i64, i64* %c2total, align 8, !tbaa !40
  %79 = load i64, i64* %total, align 8, !tbaa !40
  %shr53 = ashr i64 %79, 1
  %add54 = add nsw i64 %78, %shr53
  %80 = load i64, i64* %total, align 8, !tbaa !40
  %div55 = sdiv i64 %add54, %80
  %conv56 = trunc i64 %div55 to i8
  %81 = load i32, i32* %icolor.addr, align 4, !tbaa !27
  %idxprom57 = sext i32 %81 to i64
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 32
  %83 = load i8**, i8*** %colormap58, align 8, !tbaa !44
  %arrayidx59 = getelementptr inbounds i8*, i8** %83, i64 2
  %84 = load i8*, i8** %arrayidx59, align 8, !tbaa !2
  %arrayidx60 = getelementptr inbounds i8, i8* %84, i64 %idxprom57
  store i8 %conv56, i8* %arrayidx60, align 1, !tbaa !42
  %85 = bitcast i64* %c2total to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #3
  %86 = bitcast i64* %c1total to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #3
  %87 = bitcast i64* %c0total to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #3
  %88 = bitcast i64* %total to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #3
  %89 = bitcast i64* %count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #3
  %90 = bitcast i32* %c2max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #3
  %91 = bitcast i32* %c2min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #3
  %92 = bitcast i32* %c1max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #3
  %93 = bitcast i32* %c1min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #3
  %94 = bitcast i32* %c0max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #3
  %95 = bitcast i32* %c0min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #3
  %96 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #3
  %97 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #3
  %98 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #3
  %99 = bitcast i16** %histp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #3
  %100 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #3
  %101 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.box* @find_biggest_color_pop(%struct.box* %boxlist, i32 %numboxes) #0 {
entry:
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %boxp = alloca %struct.box*, align 8
  %i = alloca i32, align 4
  %maxc = alloca i64, align 8
  %which = alloca %struct.box*, align 8
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8, !tbaa !2
  store i32 %numboxes, i32* %numboxes.addr, align 4, !tbaa !27
  %0 = bitcast %struct.box** %boxp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i64* %maxc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  store i64 0, i64* %maxc, align 8, !tbaa !40
  %3 = bitcast %struct.box** %which to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  store %struct.box* null, %struct.box** %which, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !27
  %4 = load %struct.box*, %struct.box** %boxlist.addr, align 8, !tbaa !2
  store %struct.box* %4, %struct.box** %boxp, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !27
  %6 = load i32, i32* %numboxes.addr, align 4, !tbaa !27
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.box*, %struct.box** %boxp, align 8, !tbaa !2
  %colorcount = getelementptr inbounds %struct.box, %struct.box* %7, i32 0, i32 7
  %8 = load i64, i64* %colorcount, align 8, !tbaa !55
  %9 = load i64, i64* %maxc, align 8, !tbaa !40
  %cmp1 = icmp sgt i64 %8, %9
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.box*, %struct.box** %boxp, align 8, !tbaa !2
  %volume = getelementptr inbounds %struct.box, %struct.box* %10, i32 0, i32 6
  %11 = load i64, i64* %volume, align 8, !tbaa !54
  %cmp2 = icmp sgt i64 %11, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.box*, %struct.box** %boxp, align 8, !tbaa !2
  store %struct.box* %12, %struct.box** %which, align 8, !tbaa !2
  %13 = load %struct.box*, %struct.box** %boxp, align 8, !tbaa !2
  %colorcount3 = getelementptr inbounds %struct.box, %struct.box* %13, i32 0, i32 7
  %14 = load i64, i64* %colorcount3, align 8, !tbaa !55
  store i64 %14, i64* %maxc, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  %16 = load %struct.box*, %struct.box** %boxp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.box, %struct.box* %16, i32 1
  store %struct.box* %incdec.ptr, %struct.box** %boxp, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.box*, %struct.box** %which, align 8, !tbaa !2
  %18 = bitcast %struct.box** %which to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #3
  %19 = bitcast i64* %maxc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #3
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #3
  %21 = bitcast %struct.box** %boxp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #3
  ret %struct.box* %17
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.box* @find_biggest_volume(%struct.box* %boxlist, i32 %numboxes) #0 {
entry:
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %boxp = alloca %struct.box*, align 8
  %i = alloca i32, align 4
  %maxv = alloca i64, align 8
  %which = alloca %struct.box*, align 8
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8, !tbaa !2
  store i32 %numboxes, i32* %numboxes.addr, align 4, !tbaa !27
  %0 = bitcast %struct.box** %boxp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i64* %maxv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  store i64 0, i64* %maxv, align 8, !tbaa !40
  %3 = bitcast %struct.box** %which to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  store %struct.box* null, %struct.box** %which, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !27
  %4 = load %struct.box*, %struct.box** %boxlist.addr, align 8, !tbaa !2
  store %struct.box* %4, %struct.box** %boxp, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !27
  %6 = load i32, i32* %numboxes.addr, align 4, !tbaa !27
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.box*, %struct.box** %boxp, align 8, !tbaa !2
  %volume = getelementptr inbounds %struct.box, %struct.box* %7, i32 0, i32 6
  %8 = load i64, i64* %volume, align 8, !tbaa !54
  %9 = load i64, i64* %maxv, align 8, !tbaa !40
  %cmp1 = icmp sgt i64 %8, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.box*, %struct.box** %boxp, align 8, !tbaa !2
  store %struct.box* %10, %struct.box** %which, align 8, !tbaa !2
  %11 = load %struct.box*, %struct.box** %boxp, align 8, !tbaa !2
  %volume2 = getelementptr inbounds %struct.box, %struct.box* %11, i32 0, i32 6
  %12 = load i64, i64* %volume2, align 8, !tbaa !54
  store i64 %12, i64* %maxv, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  %14 = load %struct.box*, %struct.box** %boxp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.box, %struct.box* %14, i32 1
  store %struct.box* %incdec.ptr, %struct.box** %boxp, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.box*, %struct.box** %which, align 8, !tbaa !2
  %16 = bitcast %struct.box** %which to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #3
  %17 = bitcast i64* %maxv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #3
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #3
  %19 = bitcast %struct.box** %boxp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #3
  ret %struct.box* %15
}

; Function Attrs: nounwind ssp uwtable
define internal void @fill_inverse_cmap(%struct.jpeg_decompress_struct* %cinfo, i32 %c0, i32 %c1, i32 %c2) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %c0.addr = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %minc0 = alloca i32, align 4
  %minc1 = alloca i32, align 4
  %minc2 = alloca i32, align 4
  %ic0 = alloca i32, align 4
  %ic1 = alloca i32, align 4
  %ic2 = alloca i32, align 4
  %cptr = alloca i8*, align 8
  %cachep = alloca i16*, align 8
  %colorlist = alloca [256 x i8], align 16
  %numcolors = alloca i32, align 4
  %bestcolor = alloca [128 x i8], align 16
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %c0, i32* %c0.addr, align 4, !tbaa !27
  store i32 %c1, i32* %c1.addr, align 4, !tbaa !27
  store i32 %c2, i32* %c2.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_color_quantizer* %2 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %3, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %4 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8, !tbaa !2
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %5, i32 0, i32 3
  %6 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8, !tbaa !26
  store [32 x i16]** %6, [32 x i16]*** %histogram, align 8, !tbaa !2
  %7 = bitcast i32* %minc0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %minc1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %minc2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %ic0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %ic1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %ic2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i16** %cachep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #3
  %15 = bitcast [256 x i8]* %colorlist to i8*
  call void @llvm.lifetime.start(i64 256, i8* %15) #3
  %16 = bitcast i32* %numcolors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = bitcast [128 x i8]* %bestcolor to i8*
  call void @llvm.lifetime.start(i64 128, i8* %17) #3
  %18 = load i32, i32* %c0.addr, align 4, !tbaa !27
  %shr = ashr i32 %18, 2
  store i32 %shr, i32* %c0.addr, align 4, !tbaa !27
  %19 = load i32, i32* %c1.addr, align 4, !tbaa !27
  %shr3 = ashr i32 %19, 3
  store i32 %shr3, i32* %c1.addr, align 4, !tbaa !27
  %20 = load i32, i32* %c2.addr, align 4, !tbaa !27
  %shr4 = ashr i32 %20, 2
  store i32 %shr4, i32* %c2.addr, align 4, !tbaa !27
  %21 = load i32, i32* %c0.addr, align 4, !tbaa !27
  %shl = shl i32 %21, 5
  %add = add nsw i32 %shl, 4
  store i32 %add, i32* %minc0, align 4, !tbaa !27
  %22 = load i32, i32* %c1.addr, align 4, !tbaa !27
  %shl5 = shl i32 %22, 5
  %add6 = add nsw i32 %shl5, 2
  store i32 %add6, i32* %minc1, align 4, !tbaa !27
  %23 = load i32, i32* %c2.addr, align 4, !tbaa !27
  %shl7 = shl i32 %23, 5
  %add8 = add nsw i32 %shl7, 4
  store i32 %add8, i32* %minc2, align 4, !tbaa !27
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = load i32, i32* %minc0, align 4, !tbaa !27
  %26 = load i32, i32* %minc1, align 4, !tbaa !27
  %27 = load i32, i32* %minc2, align 4, !tbaa !27
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %colorlist, i32 0, i32 0
  %call = call i32 @find_nearby_colors(%struct.jpeg_decompress_struct* %24, i32 %25, i32 %26, i32 %27, i8* %arraydecay)
  store i32 %call, i32* %numcolors, align 4, !tbaa !27
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %29 = load i32, i32* %minc0, align 4, !tbaa !27
  %30 = load i32, i32* %minc1, align 4, !tbaa !27
  %31 = load i32, i32* %minc2, align 4, !tbaa !27
  %32 = load i32, i32* %numcolors, align 4, !tbaa !27
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %colorlist, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [128 x i8], [128 x i8]* %bestcolor, i32 0, i32 0
  call void @find_best_colors(%struct.jpeg_decompress_struct* %28, i32 %29, i32 %30, i32 %31, i32 %32, i8* %arraydecay9, i8* %arraydecay10)
  %33 = load i32, i32* %c0.addr, align 4, !tbaa !27
  %shl11 = shl i32 %33, 2
  store i32 %shl11, i32* %c0.addr, align 4, !tbaa !27
  %34 = load i32, i32* %c1.addr, align 4, !tbaa !27
  %shl12 = shl i32 %34, 3
  store i32 %shl12, i32* %c1.addr, align 4, !tbaa !27
  %35 = load i32, i32* %c2.addr, align 4, !tbaa !27
  %shl13 = shl i32 %35, 2
  store i32 %shl13, i32* %c2.addr, align 4, !tbaa !27
  %arraydecay14 = getelementptr inbounds [128 x i8], [128 x i8]* %bestcolor, i32 0, i32 0
  store i8* %arraydecay14, i8** %cptr, align 8, !tbaa !2
  store i32 0, i32* %ic0, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %36 = load i32, i32* %ic0, align 4, !tbaa !27
  %cmp = icmp slt i32 %36, 4
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ic1, align 4, !tbaa !27
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.30, %for.body
  %37 = load i32, i32* %ic1, align 4, !tbaa !27
  %cmp16 = icmp slt i32 %37, 8
  br i1 %cmp16, label %for.body.17, label %for.end.32

for.body.17:                                      ; preds = %for.cond.15
  %38 = load i32, i32* %c2.addr, align 4, !tbaa !27
  %idxprom = sext i32 %38 to i64
  %39 = load i32, i32* %c1.addr, align 4, !tbaa !27
  %40 = load i32, i32* %ic1, align 4, !tbaa !27
  %add18 = add nsw i32 %39, %40
  %idxprom19 = sext i32 %add18 to i64
  %41 = load i32, i32* %c0.addr, align 4, !tbaa !27
  %42 = load i32, i32* %ic0, align 4, !tbaa !27
  %add20 = add nsw i32 %41, %42
  %idxprom21 = sext i32 %add20 to i64
  %43 = load [32 x i16]**, [32 x i16]*** %histogram, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [32 x i16]*, [32 x i16]** %43, i64 %idxprom21
  %44 = load [32 x i16]*, [32 x i16]** %arrayidx, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds [32 x i16], [32 x i16]* %44, i64 %idxprom19
  %arrayidx23 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx22, i32 0, i64 %idxprom
  store i16* %arrayidx23, i16** %cachep, align 8, !tbaa !2
  store i32 0, i32* %ic2, align 4, !tbaa !27
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %for.body.17
  %45 = load i32, i32* %ic2, align 4, !tbaa !27
  %cmp25 = icmp slt i32 %45, 4
  br i1 %cmp25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %46 = load i8*, i8** %cptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %cptr, align 8, !tbaa !2
  %47 = load i8, i8* %46, align 1, !tbaa !42
  %conv = zext i8 %47 to i32
  %add27 = add nsw i32 %conv, 1
  %conv28 = trunc i32 %add27 to i16
  %48 = load i16*, i16** %cachep, align 8, !tbaa !2
  %incdec.ptr29 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %incdec.ptr29, i16** %cachep, align 8, !tbaa !2
  store i16 %conv28, i16* %48, align 2, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %49 = load i32, i32* %ic2, align 4, !tbaa !27
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %ic2, align 4, !tbaa !27
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %50 = load i32, i32* %ic1, align 4, !tbaa !27
  %inc31 = add nsw i32 %50, 1
  store i32 %inc31, i32* %ic1, align 4, !tbaa !27
  br label %for.cond.15

for.end.32:                                       ; preds = %for.cond.15
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %51 = load i32, i32* %ic0, align 4, !tbaa !27
  %inc34 = add nsw i32 %51, 1
  store i32 %inc34, i32* %ic0, align 4, !tbaa !27
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %52 = bitcast [128 x i8]* %bestcolor to i8*
  call void @llvm.lifetime.end(i64 128, i8* %52) #3
  %53 = bitcast i32* %numcolors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #3
  %54 = bitcast [256 x i8]* %colorlist to i8*
  call void @llvm.lifetime.end(i64 256, i8* %54) #3
  %55 = bitcast i16** %cachep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #3
  %56 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #3
  %57 = bitcast i32* %ic2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #3
  %58 = bitcast i32* %ic1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  %59 = bitcast i32* %ic0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #3
  %60 = bitcast i32* %minc2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #3
  %61 = bitcast i32* %minc1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #3
  %62 = bitcast i32* %minc0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #3
  %63 = bitcast [32 x i16]*** %histogram to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #3
  %64 = bitcast %struct.my_cquantizer** %cquantize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @find_nearby_colors(%struct.jpeg_decompress_struct* %cinfo, i32 %minc0, i32 %minc1, i32 %minc2, i8* %colorlist) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %minc0.addr = alloca i32, align 4
  %minc1.addr = alloca i32, align 4
  %minc2.addr = alloca i32, align 4
  %colorlist.addr = alloca i8*, align 8
  %numcolors = alloca i32, align 4
  %maxc0 = alloca i32, align 4
  %maxc1 = alloca i32, align 4
  %maxc2 = alloca i32, align 4
  %centerc0 = alloca i32, align 4
  %centerc1 = alloca i32, align 4
  %centerc2 = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %ncolors = alloca i32, align 4
  %minmaxdist = alloca i64, align 8
  %min_dist = alloca i64, align 8
  %max_dist = alloca i64, align 8
  %tdist = alloca i64, align 8
  %mindist = alloca [256 x i64], align 16
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %minc0, i32* %minc0.addr, align 4, !tbaa !27
  store i32 %minc1, i32* %minc1.addr, align 4, !tbaa !27
  store i32 %minc2, i32* %minc2.addr, align 4, !tbaa !27
  store i8* %colorlist, i8** %colorlist.addr, align 8, !tbaa !2
  %0 = bitcast i32* %numcolors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 31
  %2 = load i32, i32* %actual_number_of_colors, align 4, !tbaa !39
  store i32 %2, i32* %numcolors, align 4, !tbaa !27
  %3 = bitcast i32* %maxc0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %maxc1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %maxc2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %centerc0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %centerc1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %centerc2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %ncolors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i64* %minmaxdist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i64* %min_dist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i64* %max_dist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #3
  %15 = bitcast i64* %tdist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = bitcast [256 x i64]* %mindist to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %16) #3
  %17 = load i32, i32* %minc0.addr, align 4, !tbaa !27
  %add = add nsw i32 %17, 24
  store i32 %add, i32* %maxc0, align 4, !tbaa !27
  %18 = load i32, i32* %minc0.addr, align 4, !tbaa !27
  %19 = load i32, i32* %maxc0, align 4, !tbaa !27
  %add1 = add nsw i32 %18, %19
  %shr = ashr i32 %add1, 1
  store i32 %shr, i32* %centerc0, align 4, !tbaa !27
  %20 = load i32, i32* %minc1.addr, align 4, !tbaa !27
  %add2 = add nsw i32 %20, 28
  store i32 %add2, i32* %maxc1, align 4, !tbaa !27
  %21 = load i32, i32* %minc1.addr, align 4, !tbaa !27
  %22 = load i32, i32* %maxc1, align 4, !tbaa !27
  %add3 = add nsw i32 %21, %22
  %shr4 = ashr i32 %add3, 1
  store i32 %shr4, i32* %centerc1, align 4, !tbaa !27
  %23 = load i32, i32* %minc2.addr, align 4, !tbaa !27
  %add5 = add nsw i32 %23, 24
  store i32 %add5, i32* %maxc2, align 4, !tbaa !27
  %24 = load i32, i32* %minc2.addr, align 4, !tbaa !27
  %25 = load i32, i32* %maxc2, align 4, !tbaa !27
  %add6 = add nsw i32 %24, %25
  %shr7 = ashr i32 %add6, 1
  store i32 %shr7, i32* %centerc2, align 4, !tbaa !27
  store i64 2147483647, i64* %minmaxdist, align 8, !tbaa !40
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %26 = load i32, i32* %i, align 4, !tbaa !27
  %27 = load i32, i32* %numcolors, align 4, !tbaa !27
  %cmp = icmp slt i32 %26, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 32
  %30 = load i8**, i8*** %colormap, align 8, !tbaa !44
  %arrayidx = getelementptr inbounds i8*, i8** %30, i64 0
  %31 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %32 = load i8, i8* %arrayidx8, align 1, !tbaa !42
  %conv = zext i8 %32 to i32
  store i32 %conv, i32* %x, align 4, !tbaa !27
  %33 = load i32, i32* %x, align 4, !tbaa !27
  %34 = load i32, i32* %minc0.addr, align 4, !tbaa !27
  %cmp9 = icmp slt i32 %33, %34
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %35 = load i32, i32* %x, align 4, !tbaa !27
  %36 = load i32, i32* %minc0.addr, align 4, !tbaa !27
  %sub = sub nsw i32 %35, %36
  %mul = mul nsw i32 %sub, 2
  %conv11 = sext i32 %mul to i64
  store i64 %conv11, i64* %tdist, align 8, !tbaa !40
  %37 = load i64, i64* %tdist, align 8, !tbaa !40
  %38 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul12 = mul nsw i64 %37, %38
  store i64 %mul12, i64* %min_dist, align 8, !tbaa !40
  %39 = load i32, i32* %x, align 4, !tbaa !27
  %40 = load i32, i32* %maxc0, align 4, !tbaa !27
  %sub13 = sub nsw i32 %39, %40
  %mul14 = mul nsw i32 %sub13, 2
  %conv15 = sext i32 %mul14 to i64
  store i64 %conv15, i64* %tdist, align 8, !tbaa !40
  %41 = load i64, i64* %tdist, align 8, !tbaa !40
  %42 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul16 = mul nsw i64 %41, %42
  store i64 %mul16, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.42

if.else:                                          ; preds = %for.body
  %43 = load i32, i32* %x, align 4, !tbaa !27
  %44 = load i32, i32* %maxc0, align 4, !tbaa !27
  %cmp17 = icmp sgt i32 %43, %44
  br i1 %cmp17, label %if.then.19, label %if.else.28

if.then.19:                                       ; preds = %if.else
  %45 = load i32, i32* %x, align 4, !tbaa !27
  %46 = load i32, i32* %maxc0, align 4, !tbaa !27
  %sub20 = sub nsw i32 %45, %46
  %mul21 = mul nsw i32 %sub20, 2
  %conv22 = sext i32 %mul21 to i64
  store i64 %conv22, i64* %tdist, align 8, !tbaa !40
  %47 = load i64, i64* %tdist, align 8, !tbaa !40
  %48 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul23 = mul nsw i64 %47, %48
  store i64 %mul23, i64* %min_dist, align 8, !tbaa !40
  %49 = load i32, i32* %x, align 4, !tbaa !27
  %50 = load i32, i32* %minc0.addr, align 4, !tbaa !27
  %sub24 = sub nsw i32 %49, %50
  %mul25 = mul nsw i32 %sub24, 2
  %conv26 = sext i32 %mul25 to i64
  store i64 %conv26, i64* %tdist, align 8, !tbaa !40
  %51 = load i64, i64* %tdist, align 8, !tbaa !40
  %52 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul27 = mul nsw i64 %51, %52
  store i64 %mul27, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.41

if.else.28:                                       ; preds = %if.else
  store i64 0, i64* %min_dist, align 8, !tbaa !40
  %53 = load i32, i32* %x, align 4, !tbaa !27
  %54 = load i32, i32* %centerc0, align 4, !tbaa !27
  %cmp29 = icmp sle i32 %53, %54
  br i1 %cmp29, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %if.else.28
  %55 = load i32, i32* %x, align 4, !tbaa !27
  %56 = load i32, i32* %maxc0, align 4, !tbaa !27
  %sub32 = sub nsw i32 %55, %56
  %mul33 = mul nsw i32 %sub32, 2
  %conv34 = sext i32 %mul33 to i64
  store i64 %conv34, i64* %tdist, align 8, !tbaa !40
  %57 = load i64, i64* %tdist, align 8, !tbaa !40
  %58 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul35 = mul nsw i64 %57, %58
  store i64 %mul35, i64* %max_dist, align 8, !tbaa !40
  br label %if.end

if.else.36:                                       ; preds = %if.else.28
  %59 = load i32, i32* %x, align 4, !tbaa !27
  %60 = load i32, i32* %minc0.addr, align 4, !tbaa !27
  %sub37 = sub nsw i32 %59, %60
  %mul38 = mul nsw i32 %sub37, 2
  %conv39 = sext i32 %mul38 to i64
  store i64 %conv39, i64* %tdist, align 8, !tbaa !40
  %61 = load i64, i64* %tdist, align 8, !tbaa !40
  %62 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul40 = mul nsw i64 %61, %62
  store i64 %mul40, i64* %max_dist, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.else.36, %if.then.31
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %if.then.19
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then
  %63 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom43 = sext i32 %63 to i64
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 32
  %65 = load i8**, i8*** %colormap44, align 8, !tbaa !44
  %arrayidx45 = getelementptr inbounds i8*, i8** %65, i64 1
  %66 = load i8*, i8** %arrayidx45, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds i8, i8* %66, i64 %idxprom43
  %67 = load i8, i8* %arrayidx46, align 1, !tbaa !42
  %conv47 = zext i8 %67 to i32
  store i32 %conv47, i32* %x, align 4, !tbaa !27
  %68 = load i32, i32* %x, align 4, !tbaa !27
  %69 = load i32, i32* %minc1.addr, align 4, !tbaa !27
  %cmp48 = icmp slt i32 %68, %69
  br i1 %cmp48, label %if.then.50, label %if.else.61

if.then.50:                                       ; preds = %if.end.42
  %70 = load i32, i32* %x, align 4, !tbaa !27
  %71 = load i32, i32* %minc1.addr, align 4, !tbaa !27
  %sub51 = sub nsw i32 %70, %71
  %mul52 = mul nsw i32 %sub51, 3
  %conv53 = sext i32 %mul52 to i64
  store i64 %conv53, i64* %tdist, align 8, !tbaa !40
  %72 = load i64, i64* %tdist, align 8, !tbaa !40
  %73 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul54 = mul nsw i64 %72, %73
  %74 = load i64, i64* %min_dist, align 8, !tbaa !40
  %add55 = add nsw i64 %74, %mul54
  store i64 %add55, i64* %min_dist, align 8, !tbaa !40
  %75 = load i32, i32* %x, align 4, !tbaa !27
  %76 = load i32, i32* %maxc1, align 4, !tbaa !27
  %sub56 = sub nsw i32 %75, %76
  %mul57 = mul nsw i32 %sub56, 3
  %conv58 = sext i32 %mul57 to i64
  store i64 %conv58, i64* %tdist, align 8, !tbaa !40
  %77 = load i64, i64* %tdist, align 8, !tbaa !40
  %78 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul59 = mul nsw i64 %77, %78
  %79 = load i64, i64* %max_dist, align 8, !tbaa !40
  %add60 = add nsw i64 %79, %mul59
  store i64 %add60, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.92

if.else.61:                                       ; preds = %if.end.42
  %80 = load i32, i32* %x, align 4, !tbaa !27
  %81 = load i32, i32* %maxc1, align 4, !tbaa !27
  %cmp62 = icmp sgt i32 %80, %81
  br i1 %cmp62, label %if.then.64, label %if.else.75

if.then.64:                                       ; preds = %if.else.61
  %82 = load i32, i32* %x, align 4, !tbaa !27
  %83 = load i32, i32* %maxc1, align 4, !tbaa !27
  %sub65 = sub nsw i32 %82, %83
  %mul66 = mul nsw i32 %sub65, 3
  %conv67 = sext i32 %mul66 to i64
  store i64 %conv67, i64* %tdist, align 8, !tbaa !40
  %84 = load i64, i64* %tdist, align 8, !tbaa !40
  %85 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul68 = mul nsw i64 %84, %85
  %86 = load i64, i64* %min_dist, align 8, !tbaa !40
  %add69 = add nsw i64 %86, %mul68
  store i64 %add69, i64* %min_dist, align 8, !tbaa !40
  %87 = load i32, i32* %x, align 4, !tbaa !27
  %88 = load i32, i32* %minc1.addr, align 4, !tbaa !27
  %sub70 = sub nsw i32 %87, %88
  %mul71 = mul nsw i32 %sub70, 3
  %conv72 = sext i32 %mul71 to i64
  store i64 %conv72, i64* %tdist, align 8, !tbaa !40
  %89 = load i64, i64* %tdist, align 8, !tbaa !40
  %90 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul73 = mul nsw i64 %89, %90
  %91 = load i64, i64* %max_dist, align 8, !tbaa !40
  %add74 = add nsw i64 %91, %mul73
  store i64 %add74, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.91

if.else.75:                                       ; preds = %if.else.61
  %92 = load i32, i32* %x, align 4, !tbaa !27
  %93 = load i32, i32* %centerc1, align 4, !tbaa !27
  %cmp76 = icmp sle i32 %92, %93
  br i1 %cmp76, label %if.then.78, label %if.else.84

if.then.78:                                       ; preds = %if.else.75
  %94 = load i32, i32* %x, align 4, !tbaa !27
  %95 = load i32, i32* %maxc1, align 4, !tbaa !27
  %sub79 = sub nsw i32 %94, %95
  %mul80 = mul nsw i32 %sub79, 3
  %conv81 = sext i32 %mul80 to i64
  store i64 %conv81, i64* %tdist, align 8, !tbaa !40
  %96 = load i64, i64* %tdist, align 8, !tbaa !40
  %97 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul82 = mul nsw i64 %96, %97
  %98 = load i64, i64* %max_dist, align 8, !tbaa !40
  %add83 = add nsw i64 %98, %mul82
  store i64 %add83, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.90

if.else.84:                                       ; preds = %if.else.75
  %99 = load i32, i32* %x, align 4, !tbaa !27
  %100 = load i32, i32* %minc1.addr, align 4, !tbaa !27
  %sub85 = sub nsw i32 %99, %100
  %mul86 = mul nsw i32 %sub85, 3
  %conv87 = sext i32 %mul86 to i64
  store i64 %conv87, i64* %tdist, align 8, !tbaa !40
  %101 = load i64, i64* %tdist, align 8, !tbaa !40
  %102 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul88 = mul nsw i64 %101, %102
  %103 = load i64, i64* %max_dist, align 8, !tbaa !40
  %add89 = add nsw i64 %103, %mul88
  store i64 %add89, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.84, %if.then.78
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.64
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.50
  %104 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom93 = sext i32 %104 to i64
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 32
  %106 = load i8**, i8*** %colormap94, align 8, !tbaa !44
  %arrayidx95 = getelementptr inbounds i8*, i8** %106, i64 2
  %107 = load i8*, i8** %arrayidx95, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds i8, i8* %107, i64 %idxprom93
  %108 = load i8, i8* %arrayidx96, align 1, !tbaa !42
  %conv97 = zext i8 %108 to i32
  store i32 %conv97, i32* %x, align 4, !tbaa !27
  %109 = load i32, i32* %x, align 4, !tbaa !27
  %110 = load i32, i32* %minc2.addr, align 4, !tbaa !27
  %cmp98 = icmp slt i32 %109, %110
  br i1 %cmp98, label %if.then.100, label %if.else.111

if.then.100:                                      ; preds = %if.end.92
  %111 = load i32, i32* %x, align 4, !tbaa !27
  %112 = load i32, i32* %minc2.addr, align 4, !tbaa !27
  %sub101 = sub nsw i32 %111, %112
  %mul102 = mul nsw i32 %sub101, 1
  %conv103 = sext i32 %mul102 to i64
  store i64 %conv103, i64* %tdist, align 8, !tbaa !40
  %113 = load i64, i64* %tdist, align 8, !tbaa !40
  %114 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul104 = mul nsw i64 %113, %114
  %115 = load i64, i64* %min_dist, align 8, !tbaa !40
  %add105 = add nsw i64 %115, %mul104
  store i64 %add105, i64* %min_dist, align 8, !tbaa !40
  %116 = load i32, i32* %x, align 4, !tbaa !27
  %117 = load i32, i32* %maxc2, align 4, !tbaa !27
  %sub106 = sub nsw i32 %116, %117
  %mul107 = mul nsw i32 %sub106, 1
  %conv108 = sext i32 %mul107 to i64
  store i64 %conv108, i64* %tdist, align 8, !tbaa !40
  %118 = load i64, i64* %tdist, align 8, !tbaa !40
  %119 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul109 = mul nsw i64 %118, %119
  %120 = load i64, i64* %max_dist, align 8, !tbaa !40
  %add110 = add nsw i64 %120, %mul109
  store i64 %add110, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.142

if.else.111:                                      ; preds = %if.end.92
  %121 = load i32, i32* %x, align 4, !tbaa !27
  %122 = load i32, i32* %maxc2, align 4, !tbaa !27
  %cmp112 = icmp sgt i32 %121, %122
  br i1 %cmp112, label %if.then.114, label %if.else.125

if.then.114:                                      ; preds = %if.else.111
  %123 = load i32, i32* %x, align 4, !tbaa !27
  %124 = load i32, i32* %maxc2, align 4, !tbaa !27
  %sub115 = sub nsw i32 %123, %124
  %mul116 = mul nsw i32 %sub115, 1
  %conv117 = sext i32 %mul116 to i64
  store i64 %conv117, i64* %tdist, align 8, !tbaa !40
  %125 = load i64, i64* %tdist, align 8, !tbaa !40
  %126 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul118 = mul nsw i64 %125, %126
  %127 = load i64, i64* %min_dist, align 8, !tbaa !40
  %add119 = add nsw i64 %127, %mul118
  store i64 %add119, i64* %min_dist, align 8, !tbaa !40
  %128 = load i32, i32* %x, align 4, !tbaa !27
  %129 = load i32, i32* %minc2.addr, align 4, !tbaa !27
  %sub120 = sub nsw i32 %128, %129
  %mul121 = mul nsw i32 %sub120, 1
  %conv122 = sext i32 %mul121 to i64
  store i64 %conv122, i64* %tdist, align 8, !tbaa !40
  %130 = load i64, i64* %tdist, align 8, !tbaa !40
  %131 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul123 = mul nsw i64 %130, %131
  %132 = load i64, i64* %max_dist, align 8, !tbaa !40
  %add124 = add nsw i64 %132, %mul123
  store i64 %add124, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.141

if.else.125:                                      ; preds = %if.else.111
  %133 = load i32, i32* %x, align 4, !tbaa !27
  %134 = load i32, i32* %centerc2, align 4, !tbaa !27
  %cmp126 = icmp sle i32 %133, %134
  br i1 %cmp126, label %if.then.128, label %if.else.134

if.then.128:                                      ; preds = %if.else.125
  %135 = load i32, i32* %x, align 4, !tbaa !27
  %136 = load i32, i32* %maxc2, align 4, !tbaa !27
  %sub129 = sub nsw i32 %135, %136
  %mul130 = mul nsw i32 %sub129, 1
  %conv131 = sext i32 %mul130 to i64
  store i64 %conv131, i64* %tdist, align 8, !tbaa !40
  %137 = load i64, i64* %tdist, align 8, !tbaa !40
  %138 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul132 = mul nsw i64 %137, %138
  %139 = load i64, i64* %max_dist, align 8, !tbaa !40
  %add133 = add nsw i64 %139, %mul132
  store i64 %add133, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.140

if.else.134:                                      ; preds = %if.else.125
  %140 = load i32, i32* %x, align 4, !tbaa !27
  %141 = load i32, i32* %minc2.addr, align 4, !tbaa !27
  %sub135 = sub nsw i32 %140, %141
  %mul136 = mul nsw i32 %sub135, 1
  %conv137 = sext i32 %mul136 to i64
  store i64 %conv137, i64* %tdist, align 8, !tbaa !40
  %142 = load i64, i64* %tdist, align 8, !tbaa !40
  %143 = load i64, i64* %tdist, align 8, !tbaa !40
  %mul138 = mul nsw i64 %142, %143
  %144 = load i64, i64* %max_dist, align 8, !tbaa !40
  %add139 = add nsw i64 %144, %mul138
  store i64 %add139, i64* %max_dist, align 8, !tbaa !40
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.134, %if.then.128
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.114
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.100
  %145 = load i64, i64* %min_dist, align 8, !tbaa !40
  %146 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom143 = sext i32 %146 to i64
  %arrayidx144 = getelementptr inbounds [256 x i64], [256 x i64]* %mindist, i32 0, i64 %idxprom143
  store i64 %145, i64* %arrayidx144, align 8, !tbaa !40
  %147 = load i64, i64* %max_dist, align 8, !tbaa !40
  %148 = load i64, i64* %minmaxdist, align 8, !tbaa !40
  %cmp145 = icmp slt i64 %147, %148
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.142
  %149 = load i64, i64* %max_dist, align 8, !tbaa !40
  store i64 %149, i64* %minmaxdist, align 8, !tbaa !40
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.end.142
  br label %for.inc

for.inc:                                          ; preds = %if.end.148
  %150 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %150, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ncolors, align 4, !tbaa !27
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.163, %for.end
  %151 = load i32, i32* %i, align 4, !tbaa !27
  %152 = load i32, i32* %numcolors, align 4, !tbaa !27
  %cmp150 = icmp slt i32 %151, %152
  br i1 %cmp150, label %for.body.152, label %for.end.165

for.body.152:                                     ; preds = %for.cond.149
  %153 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom153 = sext i32 %153 to i64
  %arrayidx154 = getelementptr inbounds [256 x i64], [256 x i64]* %mindist, i32 0, i64 %idxprom153
  %154 = load i64, i64* %arrayidx154, align 8, !tbaa !40
  %155 = load i64, i64* %minmaxdist, align 8, !tbaa !40
  %cmp155 = icmp sle i64 %154, %155
  br i1 %cmp155, label %if.then.157, label %if.end.162

if.then.157:                                      ; preds = %for.body.152
  %156 = load i32, i32* %i, align 4, !tbaa !27
  %conv158 = trunc i32 %156 to i8
  %157 = load i32, i32* %ncolors, align 4, !tbaa !27
  %inc159 = add nsw i32 %157, 1
  store i32 %inc159, i32* %ncolors, align 4, !tbaa !27
  %idxprom160 = sext i32 %157 to i64
  %158 = load i8*, i8** %colorlist.addr, align 8, !tbaa !2
  %arrayidx161 = getelementptr inbounds i8, i8* %158, i64 %idxprom160
  store i8 %conv158, i8* %arrayidx161, align 1, !tbaa !42
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.157, %for.body.152
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %159 = load i32, i32* %i, align 4, !tbaa !27
  %inc164 = add nsw i32 %159, 1
  store i32 %inc164, i32* %i, align 4, !tbaa !27
  br label %for.cond.149

for.end.165:                                      ; preds = %for.cond.149
  %160 = load i32, i32* %ncolors, align 4, !tbaa !27
  %161 = bitcast [256 x i64]* %mindist to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %161) #3
  %162 = bitcast i64* %tdist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #3
  %163 = bitcast i64* %max_dist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #3
  %164 = bitcast i64* %min_dist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #3
  %165 = bitcast i64* %minmaxdist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #3
  %166 = bitcast i32* %ncolors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #3
  %167 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #3
  %168 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #3
  %169 = bitcast i32* %centerc2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #3
  %170 = bitcast i32* %centerc1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #3
  %171 = bitcast i32* %centerc0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #3
  %172 = bitcast i32* %maxc2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #3
  %173 = bitcast i32* %maxc1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #3
  %174 = bitcast i32* %maxc0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #3
  %175 = bitcast i32* %numcolors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #3
  ret i32 %160
}

; Function Attrs: nounwind ssp uwtable
define internal void @find_best_colors(%struct.jpeg_decompress_struct* %cinfo, i32 %minc0, i32 %minc1, i32 %minc2, i32 %numcolors, i8* %colorlist, i8* %bestcolor) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %minc0.addr = alloca i32, align 4
  %minc1.addr = alloca i32, align 4
  %minc2.addr = alloca i32, align 4
  %numcolors.addr = alloca i32, align 4
  %colorlist.addr = alloca i8*, align 8
  %bestcolor.addr = alloca i8*, align 8
  %ic0 = alloca i32, align 4
  %ic1 = alloca i32, align 4
  %ic2 = alloca i32, align 4
  %i = alloca i32, align 4
  %icolor = alloca i32, align 4
  %bptr = alloca i64*, align 8
  %cptr = alloca i8*, align 8
  %dist0 = alloca i64, align 8
  %dist1 = alloca i64, align 8
  %dist2 = alloca i64, align 8
  %xx0 = alloca i64, align 8
  %xx1 = alloca i64, align 8
  %xx2 = alloca i64, align 8
  %inc0 = alloca i64, align 8
  %inc1 = alloca i64, align 8
  %inc2 = alloca i64, align 8
  %bestdist = alloca [128 x i64], align 16
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %minc0, i32* %minc0.addr, align 4, !tbaa !27
  store i32 %minc1, i32* %minc1.addr, align 4, !tbaa !27
  store i32 %minc2, i32* %minc2.addr, align 4, !tbaa !27
  store i32 %numcolors, i32* %numcolors.addr, align 4, !tbaa !27
  store i8* %colorlist, i8** %colorlist.addr, align 8, !tbaa !2
  store i8* %bestcolor, i8** %bestcolor.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ic0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %ic1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %ic2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %icolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i64** %bptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i64* %dist0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i64* %dist1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i64* %dist2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i64* %xx0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i64* %xx1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast i64* %xx2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i64* %inc0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i64* %inc1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #3
  %15 = bitcast i64* %inc2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = bitcast [128 x i64]* %bestdist to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %16) #3
  %arraydecay = getelementptr inbounds [128 x i64], [128 x i64]* %bestdist, i32 0, i32 0
  store i64* %arraydecay, i64** %bptr, align 8, !tbaa !2
  store i32 127, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4, !tbaa !27
  %cmp = icmp sge i32 %17, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64*, i64** %bptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %incdec.ptr, i64** %bptr, align 8, !tbaa !2
  store i64 2147483647, i64* %18, align 8, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !27
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.68, %for.end
  %20 = load i32, i32* %i, align 4, !tbaa !27
  %21 = load i32, i32* %numcolors.addr, align 4, !tbaa !27
  %cmp2 = icmp slt i32 %20, %21
  br i1 %cmp2, label %for.body.3, label %for.end.69

for.body.3:                                       ; preds = %for.cond.1
  %22 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %22 to i64
  %23 = load i8*, i8** %colorlist.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !42
  %conv = zext i8 %24 to i32
  store i32 %conv, i32* %icolor, align 4, !tbaa !27
  %25 = load i32, i32* %minc0.addr, align 4, !tbaa !27
  %26 = load i32, i32* %icolor, align 4, !tbaa !27
  %idxprom4 = sext i32 %26 to i64
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 32
  %28 = load i8**, i8*** %colormap, align 8, !tbaa !44
  %arrayidx5 = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8, i8* %29, i64 %idxprom4
  %30 = load i8, i8* %arrayidx6, align 1, !tbaa !42
  %conv7 = zext i8 %30 to i32
  %sub = sub nsw i32 %25, %conv7
  %mul = mul nsw i32 %sub, 2
  %conv8 = sext i32 %mul to i64
  store i64 %conv8, i64* %inc0, align 8, !tbaa !40
  %31 = load i64, i64* %inc0, align 8, !tbaa !40
  %32 = load i64, i64* %inc0, align 8, !tbaa !40
  %mul9 = mul nsw i64 %31, %32
  store i64 %mul9, i64* %dist0, align 8, !tbaa !40
  %33 = load i32, i32* %minc1.addr, align 4, !tbaa !27
  %34 = load i32, i32* %icolor, align 4, !tbaa !27
  %idxprom10 = sext i32 %34 to i64
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 32
  %36 = load i8**, i8*** %colormap11, align 8, !tbaa !44
  %arrayidx12 = getelementptr inbounds i8*, i8** %36, i64 1
  %37 = load i8*, i8** %arrayidx12, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8, i8* %37, i64 %idxprom10
  %38 = load i8, i8* %arrayidx13, align 1, !tbaa !42
  %conv14 = zext i8 %38 to i32
  %sub15 = sub nsw i32 %33, %conv14
  %mul16 = mul nsw i32 %sub15, 3
  %conv17 = sext i32 %mul16 to i64
  store i64 %conv17, i64* %inc1, align 8, !tbaa !40
  %39 = load i64, i64* %inc1, align 8, !tbaa !40
  %40 = load i64, i64* %inc1, align 8, !tbaa !40
  %mul18 = mul nsw i64 %39, %40
  %41 = load i64, i64* %dist0, align 8, !tbaa !40
  %add = add nsw i64 %41, %mul18
  store i64 %add, i64* %dist0, align 8, !tbaa !40
  %42 = load i32, i32* %minc2.addr, align 4, !tbaa !27
  %43 = load i32, i32* %icolor, align 4, !tbaa !27
  %idxprom19 = sext i32 %43 to i64
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %colormap20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 32
  %45 = load i8**, i8*** %colormap20, align 8, !tbaa !44
  %arrayidx21 = getelementptr inbounds i8*, i8** %45, i64 2
  %46 = load i8*, i8** %arrayidx21, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i8, i8* %46, i64 %idxprom19
  %47 = load i8, i8* %arrayidx22, align 1, !tbaa !42
  %conv23 = zext i8 %47 to i32
  %sub24 = sub nsw i32 %42, %conv23
  %mul25 = mul nsw i32 %sub24, 1
  %conv26 = sext i32 %mul25 to i64
  store i64 %conv26, i64* %inc2, align 8, !tbaa !40
  %48 = load i64, i64* %inc2, align 8, !tbaa !40
  %49 = load i64, i64* %inc2, align 8, !tbaa !40
  %mul27 = mul nsw i64 %48, %49
  %50 = load i64, i64* %dist0, align 8, !tbaa !40
  %add28 = add nsw i64 %50, %mul27
  store i64 %add28, i64* %dist0, align 8, !tbaa !40
  %51 = load i64, i64* %inc0, align 8, !tbaa !40
  %mul29 = mul nsw i64 %51, 32
  %add30 = add nsw i64 %mul29, 256
  store i64 %add30, i64* %inc0, align 8, !tbaa !40
  %52 = load i64, i64* %inc1, align 8, !tbaa !40
  %mul31 = mul nsw i64 %52, 24
  %add32 = add nsw i64 %mul31, 144
  store i64 %add32, i64* %inc1, align 8, !tbaa !40
  %53 = load i64, i64* %inc2, align 8, !tbaa !40
  %mul33 = mul nsw i64 %53, 16
  %add34 = add nsw i64 %mul33, 64
  store i64 %add34, i64* %inc2, align 8, !tbaa !40
  %arraydecay35 = getelementptr inbounds [128 x i64], [128 x i64]* %bestdist, i32 0, i32 0
  store i64* %arraydecay35, i64** %bptr, align 8, !tbaa !2
  %54 = load i8*, i8** %bestcolor.addr, align 8, !tbaa !2
  store i8* %54, i8** %cptr, align 8, !tbaa !2
  %55 = load i64, i64* %inc0, align 8, !tbaa !40
  store i64 %55, i64* %xx0, align 8, !tbaa !40
  store i32 3, i32* %ic0, align 4, !tbaa !27
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.65, %for.body.3
  %56 = load i32, i32* %ic0, align 4, !tbaa !27
  %cmp37 = icmp sge i32 %56, 0
  br i1 %cmp37, label %for.body.39, label %for.end.67

for.body.39:                                      ; preds = %for.cond.36
  %57 = load i64, i64* %dist0, align 8, !tbaa !40
  store i64 %57, i64* %dist1, align 8, !tbaa !40
  %58 = load i64, i64* %inc1, align 8, !tbaa !40
  store i64 %58, i64* %xx1, align 8, !tbaa !40
  store i32 7, i32* %ic1, align 4, !tbaa !27
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.60, %for.body.39
  %59 = load i32, i32* %ic1, align 4, !tbaa !27
  %cmp41 = icmp sge i32 %59, 0
  br i1 %cmp41, label %for.body.43, label %for.end.62

for.body.43:                                      ; preds = %for.cond.40
  %60 = load i64, i64* %dist1, align 8, !tbaa !40
  store i64 %60, i64* %dist2, align 8, !tbaa !40
  %61 = load i64, i64* %inc2, align 8, !tbaa !40
  store i64 %61, i64* %xx2, align 8, !tbaa !40
  store i32 3, i32* %ic2, align 4, !tbaa !27
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.55, %for.body.43
  %62 = load i32, i32* %ic2, align 4, !tbaa !27
  %cmp45 = icmp sge i32 %62, 0
  br i1 %cmp45, label %for.body.47, label %for.end.57

for.body.47:                                      ; preds = %for.cond.44
  %63 = load i64, i64* %dist2, align 8, !tbaa !40
  %64 = load i64*, i64** %bptr, align 8, !tbaa !2
  %65 = load i64, i64* %64, align 8, !tbaa !40
  %cmp48 = icmp slt i64 %63, %65
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.47
  %66 = load i64, i64* %dist2, align 8, !tbaa !40
  %67 = load i64*, i64** %bptr, align 8, !tbaa !2
  store i64 %66, i64* %67, align 8, !tbaa !40
  %68 = load i32, i32* %icolor, align 4, !tbaa !27
  %conv50 = trunc i32 %68 to i8
  %69 = load i8*, i8** %cptr, align 8, !tbaa !2
  store i8 %conv50, i8* %69, align 1, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.47
  %70 = load i64, i64* %xx2, align 8, !tbaa !40
  %71 = load i64, i64* %dist2, align 8, !tbaa !40
  %add51 = add nsw i64 %71, %70
  store i64 %add51, i64* %dist2, align 8, !tbaa !40
  %72 = load i64, i64* %xx2, align 8, !tbaa !40
  %add52 = add nsw i64 %72, 128
  store i64 %add52, i64* %xx2, align 8, !tbaa !40
  %73 = load i64*, i64** %bptr, align 8, !tbaa !2
  %incdec.ptr53 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %incdec.ptr53, i64** %bptr, align 8, !tbaa !2
  %74 = load i8*, i8** %cptr, align 8, !tbaa !2
  %incdec.ptr54 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr54, i8** %cptr, align 8, !tbaa !2
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end
  %75 = load i32, i32* %ic2, align 4, !tbaa !27
  %dec56 = add nsw i32 %75, -1
  store i32 %dec56, i32* %ic2, align 4, !tbaa !27
  br label %for.cond.44

for.end.57:                                       ; preds = %for.cond.44
  %76 = load i64, i64* %xx1, align 8, !tbaa !40
  %77 = load i64, i64* %dist1, align 8, !tbaa !40
  %add58 = add nsw i64 %77, %76
  store i64 %add58, i64* %dist1, align 8, !tbaa !40
  %78 = load i64, i64* %xx1, align 8, !tbaa !40
  %add59 = add nsw i64 %78, 288
  store i64 %add59, i64* %xx1, align 8, !tbaa !40
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.57
  %79 = load i32, i32* %ic1, align 4, !tbaa !27
  %dec61 = add nsw i32 %79, -1
  store i32 %dec61, i32* %ic1, align 4, !tbaa !27
  br label %for.cond.40

for.end.62:                                       ; preds = %for.cond.40
  %80 = load i64, i64* %xx0, align 8, !tbaa !40
  %81 = load i64, i64* %dist0, align 8, !tbaa !40
  %add63 = add nsw i64 %81, %80
  store i64 %add63, i64* %dist0, align 8, !tbaa !40
  %82 = load i64, i64* %xx0, align 8, !tbaa !40
  %add64 = add nsw i64 %82, 512
  store i64 %add64, i64* %xx0, align 8, !tbaa !40
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.62
  %83 = load i32, i32* %ic0, align 4, !tbaa !27
  %dec66 = add nsw i32 %83, -1
  store i32 %dec66, i32* %ic0, align 4, !tbaa !27
  br label %for.cond.36

for.end.67:                                       ; preds = %for.cond.36
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %84 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond.1

for.end.69:                                       ; preds = %for.cond.1
  %85 = bitcast [128 x i64]* %bestdist to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %85) #3
  %86 = bitcast i64* %inc2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #3
  %87 = bitcast i64* %inc1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #3
  %88 = bitcast i64* %inc0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #3
  %89 = bitcast i64* %xx2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #3
  %90 = bitcast i64* %xx1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #3
  %91 = bitcast i64* %xx0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #3
  %92 = bitcast i64* %dist2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #3
  %93 = bitcast i64* %dist1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #3
  %94 = bitcast i64* %dist0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #3
  %95 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #3
  %96 = bitcast i64** %bptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #3
  %97 = bitcast i32* %icolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #3
  %98 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #3
  %99 = bitcast i32* %ic2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #3
  %100 = bitcast i32* %ic1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #3
  %101 = bitcast i32* %ic0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #3
  ret void
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
!16 = !{!"", !17, i64 0, !3, i64 32, !8, i64 40, !3, i64 48, !8, i64 56, !3, i64 64, !8, i64 72, !3, i64 80}
!17 = !{!"jpeg_color_quantizer", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
!18 = !{!16, !3, i64 24}
!19 = !{!16, !3, i64 64}
!20 = !{!16, !3, i64 80}
!21 = !{!7, !8, i64 136}
!22 = !{!7, !3, i64 0}
!23 = !{!24, !8, i64 40}
!24 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!25 = !{!24, !3, i64 0}
!26 = !{!16, !3, i64 48}
!27 = !{!8, !8, i64 0}
!28 = !{!12, !3, i64 8}
!29 = !{!16, !8, i64 56}
!30 = !{!7, !8, i64 124}
!31 = !{!7, !8, i64 112}
!32 = !{!12, !3, i64 16}
!33 = !{!16, !3, i64 32}
!34 = !{!16, !8, i64 40}
!35 = !{!7, !4, i64 104}
!36 = !{!7, !8, i64 128}
!37 = !{!16, !3, i64 8}
!38 = !{!16, !3, i64 16}
!39 = !{!7, !8, i64 148}
!40 = !{!13, !13, i64 0}
!41 = !{!16, !8, i64 72}
!42 = !{!4, !4, i64 0}
!43 = !{!10, !10, i64 0}
!44 = !{!7, !3, i64 152}
!45 = !{!7, !3, i64 408}
!46 = !{!47, !8, i64 0}
!47 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !13, i64 24, !13, i64 32}
!48 = !{!47, !8, i64 4}
!49 = !{!47, !8, i64 8}
!50 = !{!47, !8, i64 12}
!51 = !{!47, !8, i64 16}
!52 = !{!47, !8, i64 20}
!53 = !{!24, !3, i64 8}
!54 = !{!47, !13, i64 24}
!55 = !{!47, !13, i64 32}
