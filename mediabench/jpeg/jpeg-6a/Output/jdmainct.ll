; ModuleID = 'jdmainct.c'
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
%struct.jpeg_color_quantizer = type { {}*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_main_controller = type { %struct.jpeg_d_main_controller, [10 x i8**], i32, i32, [2 x i8***], i32, i32, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_d_main_controller(%struct.jpeg_decompress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %ngroups = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %ngroups to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %7 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %9 = bitcast %struct.jpeg_decompress_struct* %8 to %struct.jpeg_common_struct*
  %call = call i8* %7(%struct.jpeg_common_struct* %9, i32 1, i64 136)
  %10 = bitcast i8* %call to %struct.my_main_controller*
  store %struct.my_main_controller* %10, %struct.my_main_controller** %main, align 8, !tbaa !2
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %12 = bitcast %struct.my_main_controller* %11 to %struct.jpeg_d_main_controller*
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 74
  store %struct.jpeg_d_main_controller* %12, %struct.jpeg_d_main_controller** %main1, align 8, !tbaa !15
  %14 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %14, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_main, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8, !tbaa !16
  %15 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4, !tbaa !20
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 81
  %24 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !23
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %24, i32 0, i32 2
  %25 = load i32, i32* %need_context_rows, align 4, !tbaa !24
  %tobool3 = icmp ne i32 %25, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 59
  %27 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !26
  %cmp = icmp slt i32 %27, 2
  br i1 %cmp, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.then.4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !19
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 46, i32* %msg_code7, align 4, !tbaa !20
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !19
  %error_exit9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit9, align 8, !tbaa !22
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %34 = bitcast %struct.jpeg_decompress_struct* %33 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* %34)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.then.4
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @alloc_funny_pointers(%struct.jpeg_decompress_struct* %35)
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 59
  %37 = load i32, i32* %min_DCT_scaled_size11, align 4, !tbaa !26
  %add = add nsw i32 %37, 2
  store i32 %add, i32* %ngroups, align 4, !tbaa !6
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 59
  %39 = load i32, i32* %min_DCT_scaled_size12, align 4, !tbaa !26
  store i32 %39, i32* %ngroups, align 4, !tbaa !6
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.10
  store i32 0, i32* %ci, align 4, !tbaa !6
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 43
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %41, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %42 = load i32, i32* %ci, align 4, !tbaa !6
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 8
  %44 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp14 = icmp slt i32 %42, %44
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 3
  %46 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %47 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %47, i32 0, i32 9
  %48 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !31
  %mul = mul nsw i32 %46, %48
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 59
  %50 = load i32, i32* %min_DCT_scaled_size15, align 4, !tbaa !26
  %div = sdiv i32 %mul, %50
  store i32 %div, i32* %rgroup, align 4, !tbaa !6
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 1
  %52 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem16, align 8, !tbaa !8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %52, i32 0, i32 2
  %53 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !32
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %55 = bitcast %struct.jpeg_decompress_struct* %54 to %struct.jpeg_common_struct*
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 7
  %57 = load i32, i32* %width_in_blocks, align 4, !tbaa !33
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 0, i32 9
  %59 = load i32, i32* %DCT_scaled_size17, align 4, !tbaa !31
  %mul18 = mul i32 %57, %59
  %60 = load i32, i32* %rgroup, align 4, !tbaa !6
  %61 = load i32, i32* %ngroups, align 4, !tbaa !6
  %mul19 = mul nsw i32 %60, %61
  %call20 = call i8** %53(%struct.jpeg_common_struct* %55, i32 1, i32 %mul18, i32 %mul19)
  %62 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %62 to i64
  %63 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %63, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i64 %idxprom
  store i8** %call20, i8*** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i32* %ngroups to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_main(%struct.jpeg_decompress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !34
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %main, align 8, !tbaa !2
  %4 = load i32, i32* %pass_mode.addr, align 4, !tbaa !34
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 81
  %6 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !23
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %6, i32 0, i32 2
  %7 = load i32, i32* %need_context_rows, align 4, !tbaa !24
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %8 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %8, i32 0, i32 0
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_context_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data, align 8, !tbaa !35
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @make_funny_pointers(%struct.jpeg_decompress_struct* %9)
  %10 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %whichptr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %10, i32 0, i32 5
  store i32 0, i32* %whichptr, align 4, !tbaa !36
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %context_state = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %11, i32 0, i32 6
  store i32 0, i32* %context_state, align 4, !tbaa !37
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 8
  store i32 0, i32* %iMCU_row_ctr, align 4, !tbaa !38
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %13 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %13, i32 0, i32 0
  %process_data3 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub2, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data3, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer_full = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %14, i32 0, i32 2
  store i32 0, i32* %buffer_full, align 4, !tbaa !39
  %15 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %15, i32 0, i32 3
  store i32 0, i32* %rowgroup_ctr, align 4, !tbaa !40
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %16 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %16, i32 0, i32 0
  %process_data6 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub5, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_crank_post, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data6, align 8, !tbaa !35
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4, !tbaa !20
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %if.end
  %24 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @alloc_funny_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %xbuf = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %main, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 59
  %8 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !26
  store i32 %8, i32* %M, align 4, !tbaa !6
  %9 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i8*** %xbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 0
  %13 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %15 = bitcast %struct.jpeg_decompress_struct* %14 to %struct.jpeg_common_struct*
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 8
  %17 = load i32, i32* %num_components, align 4, !tbaa !28
  %mul = mul nsw i32 %17, 2
  %conv = sext i32 %mul to i64
  %mul2 = mul i64 %conv, 8
  %call = call i8* %13(%struct.jpeg_common_struct* %15, i32 1, i64 %mul2)
  %18 = bitcast i8* %call to i8***
  %19 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %19, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 0
  store i8*** %18, i8**** %arrayidx, align 8, !tbaa !2
  %20 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer3 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %20, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer3, i32 0, i64 0
  %21 = load i8***, i8**** %arrayidx4, align 8, !tbaa !2
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 8
  %23 = load i32, i32* %num_components5, align 4, !tbaa !28
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8**, i8*** %21, i64 %idx.ext
  %24 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer6 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %24, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer6, i32 0, i64 1
  store i8*** %add.ptr, i8**** %arrayidx7, align 8, !tbaa !2
  store i32 0, i32* %ci, align 4, !tbaa !6
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 43
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %26, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %27 = load i32, i32* %ci, align 4, !tbaa !6
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 8
  %29 = load i32, i32* %num_components8, align 4, !tbaa !28
  %cmp = icmp slt i32 %27, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 3
  %31 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 9
  %33 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !31
  %mul10 = mul nsw i32 %31, %33
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 59
  %35 = load i32, i32* %min_DCT_scaled_size11, align 4, !tbaa !26
  %div = sdiv i32 %mul10, %35
  store i32 %div, i32* %rgroup, align 4, !tbaa !6
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 1
  %37 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem12, align 8, !tbaa !8
  %alloc_small13 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %37, i32 0, i32 0
  %38 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small13, align 8, !tbaa !12
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %40 = bitcast %struct.jpeg_decompress_struct* %39 to %struct.jpeg_common_struct*
  %41 = load i32, i32* %rgroup, align 4, !tbaa !6
  %42 = load i32, i32* %M, align 4, !tbaa !6
  %add = add nsw i32 %42, 4
  %mul14 = mul nsw i32 %41, %add
  %mul15 = mul nsw i32 2, %mul14
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  %call18 = call i8* %38(%struct.jpeg_common_struct* %40, i32 1, i64 %mul17)
  %43 = bitcast i8* %call18 to i8**
  store i8** %43, i8*** %xbuf, align 8, !tbaa !2
  %44 = load i32, i32* %rgroup, align 4, !tbaa !6
  %45 = load i8**, i8*** %xbuf, align 8, !tbaa !2
  %idx.ext19 = sext i32 %44 to i64
  %add.ptr20 = getelementptr inbounds i8*, i8** %45, i64 %idx.ext19
  store i8** %add.ptr20, i8*** %xbuf, align 8, !tbaa !2
  %46 = load i8**, i8*** %xbuf, align 8, !tbaa !2
  %47 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer21 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %48, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer21, i32 0, i64 0
  %49 = load i8***, i8**** %arrayidx22, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds i8**, i8*** %49, i64 %idxprom
  store i8** %46, i8*** %arrayidx23, align 8, !tbaa !2
  %50 = load i32, i32* %rgroup, align 4, !tbaa !6
  %51 = load i32, i32* %M, align 4, !tbaa !6
  %add24 = add nsw i32 %51, 4
  %mul25 = mul nsw i32 %50, %add24
  %52 = load i8**, i8*** %xbuf, align 8, !tbaa !2
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i8*, i8** %52, i64 %idx.ext26
  store i8** %add.ptr27, i8*** %xbuf, align 8, !tbaa !2
  %53 = load i8**, i8*** %xbuf, align 8, !tbaa !2
  %54 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom28 = sext i32 %54 to i64
  %55 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer29 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %55, i32 0, i32 4
  %arrayidx30 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer29, i32 0, i64 1
  %56 = load i8***, i8**** %arrayidx30, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds i8**, i8*** %56, i64 %idxprom28
  store i8** %53, i8*** %arrayidx31, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = bitcast i8*** %xbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @process_data_context_main(%struct.jpeg_decompress_struct* %cinfo, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !2
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %main, align 8, !tbaa !2
  %4 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer_full = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i32 0, i32 2
  %5 = load i32, i32* %buffer_full, align 4, !tbaa !39
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 75
  %7 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8, !tbaa !41
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %7, i32 0, i32 3
  %8 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8, !tbaa !42
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %10 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %whichptr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %10, i32 0, i32 5
  %11 = load i32, i32* %whichptr, align 4, !tbaa !36
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 %idxprom
  %13 = load i8***, i8**** %arrayidx, align 8, !tbaa !2
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9, i8*** %13)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer_full4 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %14, i32 0, i32 2
  store i32 1, i32* %buffer_full4, align 4, !tbaa !39
  %15 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %15, i32 0, i32 8
  %16 = load i32, i32* %iMCU_row_ctr, align 4, !tbaa !38
  %inc = add i32 %16, 1
  store i32 %inc, i32* %iMCU_row_ctr, align 4, !tbaa !38
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %17 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %context_state = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %17, i32 0, i32 6
  %18 = load i32, i32* %context_state, align 4, !tbaa !37
  switch i32 %18, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.18
    i32 1, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.end.5
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 76
  %20 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8, !tbaa !44
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %20, i32 0, i32 1
  %21 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8, !tbaa !45
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %23 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %whichptr6 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %23, i32 0, i32 5
  %24 = load i32, i32* %whichptr6, align 4, !tbaa !36
  %idxprom7 = sext i32 %24 to i64
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer8 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer8, i32 0, i64 %idxprom7
  %26 = load i8***, i8**** %arrayidx9, align 8, !tbaa !2
  %27 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %27, i32 0, i32 3
  %28 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %28, i32 0, i32 7
  %29 = load i32, i32* %rowgroups_avail, align 4, !tbaa !47
  %30 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %31 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %32 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !6
  call void %21(%struct.jpeg_decompress_struct* %22, i8*** %26, i32* %rowgroup_ctr, i32 %29, i8** %30, i32* %31, i32 %32)
  %33 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr10 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %33, i32 0, i32 3
  %34 = load i32, i32* %rowgroup_ctr10, align 4, !tbaa !40
  %35 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroups_avail11 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %35, i32 0, i32 7
  %36 = load i32, i32* %rowgroups_avail11, align 4, !tbaa !47
  %cmp = icmp ult i32 %34, %36
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %sw.bb
  %37 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %context_state14 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %37, i32 0, i32 6
  store i32 0, i32* %context_state14, align 4, !tbaa !37
  %38 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %39 = load i32, i32* %38, align 4, !tbaa !6
  %40 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !6
  %cmp15 = icmp uge i32 %39, %40
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  br label %sw.bb.18

sw.bb.18:                                         ; preds = %if.end.5, %if.end.17
  %41 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr19 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %41, i32 0, i32 3
  store i32 0, i32* %rowgroup_ctr19, align 4, !tbaa !40
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 59
  %43 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !26
  %sub = sub nsw i32 %43, 1
  %44 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroups_avail20 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %44, i32 0, i32 7
  store i32 %sub, i32* %rowgroups_avail20, align 4, !tbaa !47
  %45 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %iMCU_row_ctr21 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %45, i32 0, i32 8
  %46 = load i32, i32* %iMCU_row_ctr21, align 4, !tbaa !38
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 60
  %48 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !48
  %cmp22 = icmp eq i32 %46, %48
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb.18
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @set_bottom_pointers(%struct.jpeg_decompress_struct* %49)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %sw.bb.18
  %50 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %context_state25 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %50, i32 0, i32 6
  store i32 1, i32* %context_state25, align 4, !tbaa !37
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %if.end.5, %if.end.24
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 76
  %52 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post27, align 8, !tbaa !44
  %post_process_data28 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %52, i32 0, i32 1
  %53 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data28, align 8, !tbaa !45
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %55 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %whichptr29 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %55, i32 0, i32 5
  %56 = load i32, i32* %whichptr29, align 4, !tbaa !36
  %idxprom30 = sext i32 %56 to i64
  %57 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer31 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %57, i32 0, i32 4
  %arrayidx32 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer31, i32 0, i64 %idxprom30
  %58 = load i8***, i8**** %arrayidx32, align 8, !tbaa !2
  %59 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr33 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %59, i32 0, i32 3
  %60 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroups_avail34 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %60, i32 0, i32 7
  %61 = load i32, i32* %rowgroups_avail34, align 4, !tbaa !47
  %62 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %63 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %64 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !6
  call void %53(%struct.jpeg_decompress_struct* %54, i8*** %58, i32* %rowgroup_ctr33, i32 %61, i8** %62, i32* %63, i32 %64)
  %65 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr35 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %65, i32 0, i32 3
  %66 = load i32, i32* %rowgroup_ctr35, align 4, !tbaa !40
  %67 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroups_avail36 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %67, i32 0, i32 7
  %68 = load i32, i32* %rowgroups_avail36, align 4, !tbaa !47
  %cmp37 = icmp ult i32 %66, %68
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.26
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %sw.bb.26
  %69 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %iMCU_row_ctr40 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %69, i32 0, i32 8
  %70 = load i32, i32* %iMCU_row_ctr40, align 4, !tbaa !38
  %cmp41 = icmp eq i32 %70, 1
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @set_wraparound_pointers(%struct.jpeg_decompress_struct* %71)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.39
  %72 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %whichptr44 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %72, i32 0, i32 5
  %73 = load i32, i32* %whichptr44, align 4, !tbaa !36
  %xor = xor i32 %73, 1
  store i32 %xor, i32* %whichptr44, align 4, !tbaa !36
  %74 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer_full45 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %74, i32 0, i32 2
  store i32 0, i32* %buffer_full45, align 4, !tbaa !39
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 59
  %76 = load i32, i32* %min_DCT_scaled_size46, align 4, !tbaa !26
  %add = add nsw i32 %76, 1
  %77 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr47 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %77, i32 0, i32 3
  store i32 %add, i32* %rowgroup_ctr47, align 4, !tbaa !40
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 59
  %79 = load i32, i32* %min_DCT_scaled_size48, align 4, !tbaa !26
  %add49 = add nsw i32 %79, 2
  %80 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroups_avail50 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %80, i32 0, i32 7
  store i32 %add49, i32* %rowgroups_avail50, align 4, !tbaa !47
  %81 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %context_state51 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %81, i32 0, i32 6
  store i32 2, i32* %context_state51, align 4, !tbaa !37
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.43, %if.end.5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.38, %if.then.16, %if.then.12, %if.then.3
  %82 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
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
define internal void @make_funny_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buf = alloca i8**, align 8
  %xbuf0 = alloca i8**, align 8
  %xbuf1 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %main, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 59
  %9 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !26
  store i32 %9, i32* %M, align 4, !tbaa !6
  %10 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i8*** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i8*** %xbuf0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i8*** %xbuf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  store i32 0, i32* %ci, align 4, !tbaa !6
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 43
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %15, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %16 = load i32, i32* %ci, align 4, !tbaa !6
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 8
  %18 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 3
  %20 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 9
  %22 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !31
  %mul = mul nsw i32 %20, %22
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 59
  %24 = load i32, i32* %min_DCT_scaled_size2, align 4, !tbaa !26
  %div = sdiv i32 %mul, %24
  store i32 %div, i32* %rgroup, align 4, !tbaa !6
  %25 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %26, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 0
  %27 = load i8***, i8**** %arrayidx, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8**, i8*** %27, i64 %idxprom
  %28 = load i8**, i8*** %arrayidx3, align 8, !tbaa !2
  store i8** %28, i8*** %xbuf0, align 8, !tbaa !2
  %29 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom4 = sext i32 %29 to i64
  %30 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer5 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %30, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer5, i32 0, i64 1
  %31 = load i8***, i8**** %arrayidx6, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8**, i8*** %31, i64 %idxprom4
  %32 = load i8**, i8*** %arrayidx7, align 8, !tbaa !2
  store i8** %32, i8*** %xbuf1, align 8, !tbaa !2
  %33 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom8 = sext i32 %33 to i64
  %34 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %34, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i64 %idxprom8
  %35 = load i8**, i8*** %arrayidx9, align 8, !tbaa !2
  store i8** %35, i8*** %buf, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !6
  %37 = load i32, i32* %rgroup, align 4, !tbaa !6
  %38 = load i32, i32* %M, align 4, !tbaa !6
  %add = add nsw i32 %38, 2
  %mul11 = mul nsw i32 %37, %add
  %cmp12 = icmp slt i32 %36, %mul11
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %39 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom14 = sext i32 %39 to i64
  %40 = load i8**, i8*** %buf, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i8*, i8** %40, i64 %idxprom14
  %41 = load i8*, i8** %arrayidx15, align 8, !tbaa !2
  %42 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom16 = sext i32 %42 to i64
  %43 = load i8**, i8*** %xbuf1, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i8*, i8** %43, i64 %idxprom16
  store i8* %41, i8** %arrayidx17, align 8, !tbaa !2
  %44 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom18 = sext i32 %44 to i64
  %45 = load i8**, i8*** %xbuf0, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i8*, i8** %45, i64 %idxprom18
  store i8* %41, i8** %arrayidx19, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %46 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.41, %for.end
  %47 = load i32, i32* %i, align 4, !tbaa !6
  %48 = load i32, i32* %rgroup, align 4, !tbaa !6
  %mul21 = mul nsw i32 %48, 2
  %cmp22 = icmp slt i32 %47, %mul21
  br i1 %cmp22, label %for.body.23, label %for.end.43

for.body.23:                                      ; preds = %for.cond.20
  %49 = load i32, i32* %rgroup, align 4, !tbaa !6
  %50 = load i32, i32* %M, align 4, !tbaa !6
  %mul24 = mul nsw i32 %49, %50
  %51 = load i32, i32* %i, align 4, !tbaa !6
  %add25 = add nsw i32 %mul24, %51
  %idxprom26 = sext i32 %add25 to i64
  %52 = load i8**, i8*** %buf, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i8*, i8** %52, i64 %idxprom26
  %53 = load i8*, i8** %arrayidx27, align 8, !tbaa !2
  %54 = load i32, i32* %rgroup, align 4, !tbaa !6
  %55 = load i32, i32* %M, align 4, !tbaa !6
  %sub = sub nsw i32 %55, 2
  %mul28 = mul nsw i32 %54, %sub
  %56 = load i32, i32* %i, align 4, !tbaa !6
  %add29 = add nsw i32 %mul28, %56
  %idxprom30 = sext i32 %add29 to i64
  %57 = load i8**, i8*** %xbuf1, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds i8*, i8** %57, i64 %idxprom30
  store i8* %53, i8** %arrayidx31, align 8, !tbaa !2
  %58 = load i32, i32* %rgroup, align 4, !tbaa !6
  %59 = load i32, i32* %M, align 4, !tbaa !6
  %sub32 = sub nsw i32 %59, 2
  %mul33 = mul nsw i32 %58, %sub32
  %60 = load i32, i32* %i, align 4, !tbaa !6
  %add34 = add nsw i32 %mul33, %60
  %idxprom35 = sext i32 %add34 to i64
  %61 = load i8**, i8*** %buf, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds i8*, i8** %61, i64 %idxprom35
  %62 = load i8*, i8** %arrayidx36, align 8, !tbaa !2
  %63 = load i32, i32* %rgroup, align 4, !tbaa !6
  %64 = load i32, i32* %M, align 4, !tbaa !6
  %mul37 = mul nsw i32 %63, %64
  %65 = load i32, i32* %i, align 4, !tbaa !6
  %add38 = add nsw i32 %mul37, %65
  %idxprom39 = sext i32 %add38 to i64
  %66 = load i8**, i8*** %xbuf1, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i8*, i8** %66, i64 %idxprom39
  store i8* %62, i8** %arrayidx40, align 8, !tbaa !2
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.23
  %67 = load i32, i32* %i, align 4, !tbaa !6
  %inc42 = add nsw i32 %67, 1
  store i32 %inc42, i32* %i, align 4, !tbaa !6
  br label %for.cond.20

for.end.43:                                       ; preds = %for.cond.20
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.51, %for.end.43
  %68 = load i32, i32* %i, align 4, !tbaa !6
  %69 = load i32, i32* %rgroup, align 4, !tbaa !6
  %cmp45 = icmp slt i32 %68, %69
  br i1 %cmp45, label %for.body.46, label %for.end.53

for.body.46:                                      ; preds = %for.cond.44
  %70 = load i8**, i8*** %xbuf0, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds i8*, i8** %70, i64 0
  %71 = load i8*, i8** %arrayidx47, align 8, !tbaa !2
  %72 = load i32, i32* %i, align 4, !tbaa !6
  %73 = load i32, i32* %rgroup, align 4, !tbaa !6
  %sub48 = sub nsw i32 %72, %73
  %idxprom49 = sext i32 %sub48 to i64
  %74 = load i8**, i8*** %xbuf0, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds i8*, i8** %74, i64 %idxprom49
  store i8* %71, i8** %arrayidx50, align 8, !tbaa !2
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.46
  %75 = load i32, i32* %i, align 4, !tbaa !6
  %inc52 = add nsw i32 %75, 1
  store i32 %inc52, i32* %i, align 4, !tbaa !6
  br label %for.cond.44

for.end.53:                                       ; preds = %for.cond.44
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %76 = load i32, i32* %ci, align 4, !tbaa !6
  %inc55 = add nsw i32 %76, 1
  store i32 %inc55, i32* %ci, align 4, !tbaa !6
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  %78 = bitcast i8*** %xbuf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast i8*** %xbuf0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i8*** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @process_data_simple_main(%struct.jpeg_decompress_struct* %cinfo, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  %rowgroups_avail = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !2
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %main, align 8, !tbaa !2
  %4 = bitcast i32* %rowgroups_avail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer_full = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i32 0, i32 2
  %6 = load i32, i32* %buffer_full, align 4, !tbaa !39
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 75
  %8 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8, !tbaa !41
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %8, i32 0, i32 3
  %9 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8, !tbaa !42
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %11, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i32 0
  %call = call i32 %9(%struct.jpeg_decompress_struct* %10, i8*** %arraydecay)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer_full4 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 2
  store i32 1, i32* %buffer_full4, align 4, !tbaa !39
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 59
  %14 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !26
  store i32 %14, i32* %rowgroups_avail, align 4, !tbaa !6
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 76
  %16 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8, !tbaa !44
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %16, i32 0, i32 1
  %17 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8, !tbaa !45
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %19 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer6 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %19, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer6, i32 0, i32 0
  %20 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %20, i32 0, i32 3
  %21 = load i32, i32* %rowgroups_avail, align 4, !tbaa !6
  %22 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %23 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %24 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !6
  call void %17(%struct.jpeg_decompress_struct* %18, i8*** %arraydecay7, i32* %rowgroup_ctr, i32 %21, i8** %22, i32* %23, i32 %24)
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr8 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 3
  %26 = load i32, i32* %rowgroup_ctr8, align 4, !tbaa !40
  %27 = load i32, i32* %rowgroups_avail, align 4, !tbaa !6
  %cmp = icmp uge i32 %26, %27
  br i1 %cmp, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.5
  %28 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %buffer_full10 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %28, i32 0, i32 2
  store i32 0, i32* %buffer_full10, align 4, !tbaa !39
  %29 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroup_ctr11 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %29, i32 0, i32 3
  store i32 0, i32* %rowgroup_ctr11, align 4, !tbaa !40
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.3
  %30 = bitcast i32* %rowgroups_avail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
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
define internal void @process_data_crank_post(%struct.jpeg_decompress_struct* %cinfo, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !2
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !6
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 76
  %1 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8, !tbaa !44
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %1, i32 0, i32 1
  %2 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8, !tbaa !45
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %4 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %5 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %6 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !6
  call void %2(%struct.jpeg_decompress_struct* %3, i8*** null, i32* null, i32 0, i8** %4, i32* %5, i32 %6)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_bottom_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %iMCUheight = alloca i32, align 4
  %rows_left = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %xbuf = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %main, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %iMCUheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %rows_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i8*** %xbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  store i32 0, i32* %ci, align 4, !tbaa !6
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 43
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %12, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %13 = load i32, i32* %ci, align 4, !tbaa !6
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 8
  %15 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 3
  %17 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 9
  %19 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !31
  %mul = mul nsw i32 %17, %19
  store i32 %mul, i32* %iMCUheight, align 4, !tbaa !6
  %20 = load i32, i32* %iMCUheight, align 4, !tbaa !6
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 59
  %22 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !26
  %div = sdiv i32 %20, %22
  store i32 %div, i32* %rgroup, align 4, !tbaa !6
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 11
  %24 = load i32, i32* %downsampled_height, align 4, !tbaa !49
  %25 = load i32, i32* %iMCUheight, align 4, !tbaa !6
  %rem = urem i32 %24, %25
  store i32 %rem, i32* %rows_left, align 4, !tbaa !6
  %26 = load i32, i32* %rows_left, align 4, !tbaa !6
  %cmp2 = icmp eq i32 %26, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %27 = load i32, i32* %iMCUheight, align 4, !tbaa !6
  store i32 %27, i32* %rows_left, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %28 = load i32, i32* %ci, align 4, !tbaa !6
  %cmp3 = icmp eq i32 %28, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %29 = load i32, i32* %rows_left, align 4, !tbaa !6
  %sub = sub nsw i32 %29, 1
  %30 = load i32, i32* %rgroup, align 4, !tbaa !6
  %div5 = sdiv i32 %sub, %30
  %add = add nsw i32 %div5, 1
  %31 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %31, i32 0, i32 7
  store i32 %add, i32* %rowgroups_avail, align 4, !tbaa !47
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %32 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %whichptr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %33, i32 0, i32 5
  %34 = load i32, i32* %whichptr, align 4, !tbaa !36
  %idxprom7 = sext i32 %34 to i64
  %35 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %35, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 %idxprom7
  %36 = load i8***, i8**** %arrayidx, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8**, i8*** %36, i64 %idxprom
  %37 = load i8**, i8*** %arrayidx8, align 8, !tbaa !2
  store i8** %37, i8*** %xbuf, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end.6
  %38 = load i32, i32* %i, align 4, !tbaa !6
  %39 = load i32, i32* %rgroup, align 4, !tbaa !6
  %mul10 = mul nsw i32 %39, 2
  %cmp11 = icmp slt i32 %38, %mul10
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %40 = load i32, i32* %rows_left, align 4, !tbaa !6
  %sub13 = sub nsw i32 %40, 1
  %idxprom14 = sext i32 %sub13 to i64
  %41 = load i8**, i8*** %xbuf, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i8*, i8** %41, i64 %idxprom14
  %42 = load i8*, i8** %arrayidx15, align 8, !tbaa !2
  %43 = load i32, i32* %rows_left, align 4, !tbaa !6
  %44 = load i32, i32* %i, align 4, !tbaa !6
  %add16 = add nsw i32 %43, %44
  %idxprom17 = sext i32 %add16 to i64
  %45 = load i8**, i8*** %xbuf, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i8*, i8** %45, i64 %idxprom17
  store i8* %42, i8** %arrayidx18, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %46 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %47 = load i32, i32* %ci, align 4, !tbaa !6
  %inc20 = add nsw i32 %47, 1
  store i32 %inc20, i32* %ci, align 4, !tbaa !6
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %49 = bitcast i8*** %xbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast i32* %rows_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %iMCUheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_wraparound_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %xbuf0 = alloca i8**, align 8
  %xbuf1 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 74
  %2 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_d_main_controller* %2 to %struct.my_main_controller*
  store %struct.my_main_controller* %3, %struct.my_main_controller** %main, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 59
  %9 = load i32, i32* %min_DCT_scaled_size, align 4, !tbaa !26
  store i32 %9, i32* %M, align 4, !tbaa !6
  %10 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i8*** %xbuf0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i8*** %xbuf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  store i32 0, i32* %ci, align 4, !tbaa !6
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 43
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %14, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %15 = load i32, i32* %ci, align 4, !tbaa !6
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 8
  %17 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 3
  %19 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 9
  %21 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !31
  %mul = mul nsw i32 %19, %21
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %min_DCT_scaled_size2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 59
  %23 = load i32, i32* %min_DCT_scaled_size2, align 4, !tbaa !26
  %div = sdiv i32 %mul, %23
  store i32 %div, i32* %rgroup, align 4, !tbaa !6
  %24 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 0
  %26 = load i8***, i8**** %arrayidx, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8**, i8*** %26, i64 %idxprom
  %27 = load i8**, i8*** %arrayidx3, align 8, !tbaa !2
  store i8** %27, i8*** %xbuf0, align 8, !tbaa !2
  %28 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom4 = sext i32 %28 to i64
  %29 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8, !tbaa !2
  %xbuffer5 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %29, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer5, i32 0, i64 1
  %30 = load i8***, i8**** %arrayidx6, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8**, i8*** %30, i64 %idxprom4
  %31 = load i8**, i8*** %arrayidx7, align 8, !tbaa !2
  store i8** %31, i8*** %xbuf1, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !6
  %33 = load i32, i32* %rgroup, align 4, !tbaa !6
  %cmp9 = icmp slt i32 %32, %33
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %34 = load i32, i32* %rgroup, align 4, !tbaa !6
  %35 = load i32, i32* %M, align 4, !tbaa !6
  %add = add nsw i32 %35, 1
  %mul11 = mul nsw i32 %34, %add
  %36 = load i32, i32* %i, align 4, !tbaa !6
  %add12 = add nsw i32 %mul11, %36
  %idxprom13 = sext i32 %add12 to i64
  %37 = load i8**, i8*** %xbuf0, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8*, i8** %37, i64 %idxprom13
  %38 = load i8*, i8** %arrayidx14, align 8, !tbaa !2
  %39 = load i32, i32* %i, align 4, !tbaa !6
  %40 = load i32, i32* %rgroup, align 4, !tbaa !6
  %sub = sub nsw i32 %39, %40
  %idxprom15 = sext i32 %sub to i64
  %41 = load i8**, i8*** %xbuf0, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds i8*, i8** %41, i64 %idxprom15
  store i8* %38, i8** %arrayidx16, align 8, !tbaa !2
  %42 = load i32, i32* %rgroup, align 4, !tbaa !6
  %43 = load i32, i32* %M, align 4, !tbaa !6
  %add17 = add nsw i32 %43, 1
  %mul18 = mul nsw i32 %42, %add17
  %44 = load i32, i32* %i, align 4, !tbaa !6
  %add19 = add nsw i32 %mul18, %44
  %idxprom20 = sext i32 %add19 to i64
  %45 = load i8**, i8*** %xbuf1, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i8*, i8** %45, i64 %idxprom20
  %46 = load i8*, i8** %arrayidx21, align 8, !tbaa !2
  %47 = load i32, i32* %i, align 4, !tbaa !6
  %48 = load i32, i32* %rgroup, align 4, !tbaa !6
  %sub22 = sub nsw i32 %47, %48
  %idxprom23 = sext i32 %sub22 to i64
  %49 = load i8**, i8*** %xbuf1, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i8*, i8** %49, i64 %idxprom23
  store i8* %46, i8** %arrayidx24, align 8, !tbaa !2
  %50 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom25 = sext i32 %50 to i64
  %51 = load i8**, i8*** %xbuf0, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i8*, i8** %51, i64 %idxprom25
  %52 = load i8*, i8** %arrayidx26, align 8, !tbaa !2
  %53 = load i32, i32* %rgroup, align 4, !tbaa !6
  %54 = load i32, i32* %M, align 4, !tbaa !6
  %add27 = add nsw i32 %54, 2
  %mul28 = mul nsw i32 %53, %add27
  %55 = load i32, i32* %i, align 4, !tbaa !6
  %add29 = add nsw i32 %mul28, %55
  %idxprom30 = sext i32 %add29 to i64
  %56 = load i8**, i8*** %xbuf0, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds i8*, i8** %56, i64 %idxprom30
  store i8* %52, i8** %arrayidx31, align 8, !tbaa !2
  %57 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom32 = sext i32 %57 to i64
  %58 = load i8**, i8*** %xbuf1, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i8*, i8** %58, i64 %idxprom32
  %59 = load i8*, i8** %arrayidx33, align 8, !tbaa !2
  %60 = load i32, i32* %rgroup, align 4, !tbaa !6
  %61 = load i32, i32* %M, align 4, !tbaa !6
  %add34 = add nsw i32 %61, 2
  %mul35 = mul nsw i32 %60, %add34
  %62 = load i32, i32* %i, align 4, !tbaa !6
  %add36 = add nsw i32 %mul35, %62
  %idxprom37 = sext i32 %add36 to i64
  %63 = load i8**, i8*** %xbuf1, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i8*, i8** %63, i64 %idxprom37
  store i8* %59, i8** %arrayidx38, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %64 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end
  %65 = load i32, i32* %ci, align 4, !tbaa !6
  %inc40 = add nsw i32 %65, 1
  store i32 %inc40, i32* %ci, align 4, !tbaa !6
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  %67 = bitcast i8*** %xbuf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast i8*** %xbuf0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %rgroup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast %struct.my_main_controller** %main to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  ret void
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 8}
!9 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !4, i64 56, !7, i64 60, !7, i64 64, !10, i64 72, !7, i64 80, !7, i64 84, !4, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !4, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !3, i64 152, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !7, i64 288, !3, i64 296, !7, i64 304, !7, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !7, i64 360, !7, i64 364, !4, i64 368, !11, i64 370, !11, i64 372, !7, i64 376, !4, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !3, i64 408, !7, i64 416, !4, i64 424, !7, i64 456, !7, i64 460, !7, i64 464, !4, i64 468, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!10 = !{!"double", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!13, !3, i64 0}
!13 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!14 = !{!"long", !4, i64 0}
!15 = !{!9, !3, i64 536}
!16 = !{!17, !3, i64 0}
!17 = !{!"", !18, i64 0, !4, i64 16, !7, i64 96, !7, i64 100, !4, i64 104, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132}
!18 = !{!"jpeg_d_main_controller", !3, i64 0, !3, i64 8}
!19 = !{!9, !3, i64 0}
!20 = !{!21, !7, i64 40}
!21 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !4, i64 44, !7, i64 124, !14, i64 128, !3, i64 136, !7, i64 144, !3, i64 152, !7, i64 160, !7, i64 164}
!22 = !{!21, !3, i64 0}
!23 = !{!9, !3, i64 592}
!24 = !{!25, !7, i64 16}
!25 = !{!"jpeg_upsampler", !3, i64 0, !3, i64 8, !7, i64 16}
!26 = !{!9, !7, i64 396}
!27 = !{!9, !3, i64 296}
!28 = !{!9, !7, i64 48}
!29 = !{!30, !7, i64 12}
!30 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!31 = !{!30, !7, i64 36}
!32 = !{!13, !3, i64 16}
!33 = !{!30, !7, i64 28}
!34 = !{!4, !4, i64 0}
!35 = !{!17, !3, i64 8}
!36 = !{!17, !7, i64 120}
!37 = !{!17, !7, i64 124}
!38 = !{!17, !7, i64 132}
!39 = !{!17, !7, i64 96}
!40 = !{!17, !7, i64 100}
!41 = !{!9, !3, i64 544}
!42 = !{!43, !3, i64 24}
!43 = !{!"jpeg_d_coef_controller", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!44 = !{!9, !3, i64 552}
!45 = !{!46, !3, i64 8}
!46 = !{!"jpeg_d_post_controller", !3, i64 0, !3, i64 8}
!47 = !{!17, !7, i64 128}
!48 = !{!9, !7, i64 400}
!49 = !{!30, !7, i64 44}
