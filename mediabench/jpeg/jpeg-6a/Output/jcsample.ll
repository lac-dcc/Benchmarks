; ModuleID = 'jcsample.c'
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
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, {}*, {}*, {}*, {}*, {}* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*] }

; Function Attrs: nounwind ssp uwtable
define void @jinit_downsampler(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %downsample = alloca %struct.my_downsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %smoothok = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast i32* %smoothok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  store i32 1, i32* %smoothok, align 4, !tbaa !6
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 1
  %5 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %5, i32 0, i32 0
  %6 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !12
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %8 = bitcast %struct.jpeg_compress_struct* %7 to %struct.jpeg_common_struct*
  %call = call i8* %6(%struct.jpeg_common_struct* %8, i32 1, i64 104)
  %9 = bitcast i8* %call to %struct.my_downsampler*
  store %struct.my_downsampler* %9, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %10 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %11 = bitcast %struct.my_downsampler* %10 to %struct.jpeg_downsampler*
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 57
  store %struct.jpeg_downsampler* %11, %struct.jpeg_downsampler** %downsample1, align 8, !tbaa !15
  %13 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %13, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_downsample, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8, !tbaa !16
  %14 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %14, i32 0, i32 0
  %downsample4 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub3, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)* @sep_downsample, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %downsample4, align 8, !tbaa !19
  %15 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %15, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub5, i32 0, i32 2
  store i32 0, i32* %need_context_rows, align 4, !tbaa !20
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 26
  %17 = load i32, i32* %CCIR601_sampling, align 4, !tbaa !21
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 23, i32* %msg_code, align 4, !tbaa !23
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %ci, align 4, !tbaa !6
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 14
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !26
  store %struct.jpeg_component_info* %26, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %27 = load i32, i32* %ci, align 4, !tbaa !6
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 12
  %29 = load i32, i32* %num_components, align 4, !tbaa !27
  %cmp = icmp slt i32 %27, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 2
  %31 = load i32, i32* %h_samp_factor, align 4, !tbaa !28
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 38
  %33 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !30
  %cmp7 = icmp eq i32 %31, %33
  br i1 %cmp7, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %for.body
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 3
  %35 = load i32, i32* %v_samp_factor, align 4, !tbaa !31
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 39
  %37 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !32
  %cmp8 = icmp eq i32 %35, %37
  br i1 %cmp8, label %if.then.9, label %if.else.18

if.then.9:                                        ; preds = %land.lhs.true
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 27
  %39 = load i32, i32* %smoothing_factor, align 4, !tbaa !33
  %tobool10 = icmp ne i32 %39, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.9
  %40 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %methods = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %41, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods, i32 0, i64 %idxprom
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @fullsize_smooth_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx, align 8, !tbaa !2
  %42 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %pub12 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %42, i32 0, i32 0
  %need_context_rows13 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub12, i32 0, i32 2
  store i32 1, i32* %need_context_rows13, align 4, !tbaa !20
  br label %if.end.17

if.else:                                          ; preds = %if.then.9
  %43 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom14 = sext i32 %43 to i64
  %44 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %methods15 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %44, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods15, i32 0, i64 %idxprom14
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @fullsize_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx16, align 8, !tbaa !2
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  br label %if.end.75

if.else.18:                                       ; preds = %land.lhs.true, %for.body
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor19 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 2
  %46 = load i32, i32* %h_samp_factor19, align 4, !tbaa !28
  %mul = mul nsw i32 %46, 2
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 38
  %48 = load i32, i32* %max_h_samp_factor20, align 4, !tbaa !30
  %cmp21 = icmp eq i32 %mul, %48
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.30

land.lhs.true.22:                                 ; preds = %if.else.18
  %49 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %49, i32 0, i32 3
  %50 = load i32, i32* %v_samp_factor23, align 4, !tbaa !31
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 39
  %52 = load i32, i32* %max_v_samp_factor24, align 4, !tbaa !32
  %cmp25 = icmp eq i32 %50, %52
  br i1 %cmp25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %land.lhs.true.22
  store i32 0, i32* %smoothok, align 4, !tbaa !6
  %53 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom27 = sext i32 %53 to i64
  %54 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %methods28 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %54, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods28, i32 0, i64 %idxprom27
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v1_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx29, align 8, !tbaa !2
  br label %if.end.74

if.else.30:                                       ; preds = %land.lhs.true.22, %if.else.18
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 0, i32 2
  %56 = load i32, i32* %h_samp_factor31, align 4, !tbaa !28
  %mul32 = mul nsw i32 %56, 2
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 38
  %58 = load i32, i32* %max_h_samp_factor33, align 4, !tbaa !30
  %cmp34 = icmp eq i32 %mul32, %58
  br i1 %cmp34, label %land.lhs.true.35, label %if.else.54

land.lhs.true.35:                                 ; preds = %if.else.30
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i32 0, i32 3
  %60 = load i32, i32* %v_samp_factor36, align 4, !tbaa !31
  %mul37 = mul nsw i32 %60, 2
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 39
  %62 = load i32, i32* %max_v_samp_factor38, align 4, !tbaa !32
  %cmp39 = icmp eq i32 %mul37, %62
  br i1 %cmp39, label %if.then.40, label %if.else.54

if.then.40:                                       ; preds = %land.lhs.true.35
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %smoothing_factor41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 27
  %64 = load i32, i32* %smoothing_factor41, align 4, !tbaa !33
  %tobool42 = icmp ne i32 %64, 0
  br i1 %tobool42, label %if.then.43, label %if.else.49

if.then.43:                                       ; preds = %if.then.40
  %65 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom44 = sext i32 %65 to i64
  %66 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %methods45 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %66, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods45, i32 0, i64 %idxprom44
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v2_smooth_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx46, align 8, !tbaa !2
  %67 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %pub47 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %67, i32 0, i32 0
  %need_context_rows48 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub47, i32 0, i32 2
  store i32 1, i32* %need_context_rows48, align 4, !tbaa !20
  br label %if.end.53

if.else.49:                                       ; preds = %if.then.40
  %68 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom50 = sext i32 %68 to i64
  %69 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %methods51 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %69, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods51, i32 0, i64 %idxprom50
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v2_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx52, align 8, !tbaa !2
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.then.43
  br label %if.end.73

if.else.54:                                       ; preds = %land.lhs.true.35, %if.else.30
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 38
  %71 = load i32, i32* %max_h_samp_factor55, align 4, !tbaa !30
  %72 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %72, i32 0, i32 2
  %73 = load i32, i32* %h_samp_factor56, align 4, !tbaa !28
  %rem = srem i32 %71, %73
  %cmp57 = icmp eq i32 %rem, 0
  br i1 %cmp57, label %land.lhs.true.58, label %if.else.67

land.lhs.true.58:                                 ; preds = %if.else.54
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 39
  %75 = load i32, i32* %max_v_samp_factor59, align 4, !tbaa !32
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor60 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %76, i32 0, i32 3
  %77 = load i32, i32* %v_samp_factor60, align 4, !tbaa !31
  %rem61 = srem i32 %75, %77
  %cmp62 = icmp eq i32 %rem61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.67

if.then.63:                                       ; preds = %land.lhs.true.58
  store i32 0, i32* %smoothok, align 4, !tbaa !6
  %78 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom64 = sext i32 %78 to i64
  %79 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %methods65 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %79, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods65, i32 0, i64 %idxprom64
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @int_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx66, align 8, !tbaa !2
  br label %if.end.72

if.else.67:                                       ; preds = %land.lhs.true.58, %if.else.54
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !22
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 5
  store i32 37, i32* %msg_code69, align 4, !tbaa !23
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 0
  %83 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !22
  %error_exit71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %83, i32 0, i32 0
  %84 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit71, align 8, !tbaa !25
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %86 = bitcast %struct.jpeg_compress_struct* %85 to %struct.jpeg_common_struct*
  call void %84(%struct.jpeg_common_struct* %86)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.67, %if.then.63
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.53
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.26
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %87 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %smoothing_factor76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 27
  %90 = load i32, i32* %smoothing_factor76, align 4, !tbaa !33
  %tobool77 = icmp ne i32 %90, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.84

land.lhs.true.78:                                 ; preds = %for.end
  %91 = load i32, i32* %smoothok, align 4, !tbaa !6
  %tobool79 = icmp ne i32 %91, 0
  br i1 %tobool79, label %if.end.84, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.78
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 0
  %93 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8, !tbaa !22
  %msg_code82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %93, i32 0, i32 5
  store i32 98, i32* %msg_code82, align 4, !tbaa !23
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %94, i32 0, i32 0
  %95 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err83, align 8, !tbaa !22
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %95, i32 0, i32 1
  %96 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !34
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %98 = bitcast %struct.jpeg_compress_struct* %97 to %struct.jpeg_common_struct*
  call void %96(%struct.jpeg_common_struct* %98, i32 0)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %land.lhs.true.78, %for.end
  %99 = bitcast i32* %smoothok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #3
  %100 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #3
  %101 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #3
  %102 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_downsample(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @sep_downsample(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf, i32 %in_row_index, i8*** %output_buf, i32 %out_row_group_index) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_index.addr = alloca i32, align 4
  %output_buf.addr = alloca i8***, align 8
  %out_row_group_index.addr = alloca i32, align 4
  %downsample = alloca %struct.my_downsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %in_ptr = alloca i8**, align 8
  %out_ptr = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32 %in_row_index, i32* %in_row_index.addr, align 4, !tbaa !6
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !2
  store i32 %out_row_group_index, i32* %out_row_group_index.addr, align 4, !tbaa !6
  %0 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 57
  %2 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample1, align 8, !tbaa !15
  %3 = bitcast %struct.jpeg_downsampler* %2 to %struct.my_downsampler*
  store %struct.my_downsampler* %3, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i8*** %in_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i8*** %out_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  store i32 0, i32* %ci, align 4, !tbaa !6
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 14
  %9 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !26
  store %struct.jpeg_component_info* %9, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %ci, align 4, !tbaa !6
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 12
  %12 = load i32, i32* %num_components, align 4, !tbaa !27
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %13 to i64
  %14 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %14, i64 %idxprom
  %15 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %16 = load i32, i32* %in_row_index.addr, align 4, !tbaa !6
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %15, i64 %idx.ext
  store i8** %add.ptr, i8*** %in_ptr, align 8, !tbaa !2
  %17 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom2 = sext i32 %17 to i64
  %18 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8**, i8*** %18, i64 %idxprom2
  %19 = load i8**, i8*** %arrayidx3, align 8, !tbaa !2
  %20 = load i32, i32* %out_row_group_index.addr, align 4, !tbaa !6
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 3
  %22 = load i32, i32* %v_samp_factor, align 4, !tbaa !31
  %mul = mul i32 %20, %22
  %idx.ext4 = zext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds i8*, i8** %19, i64 %idx.ext4
  store i8** %add.ptr5, i8*** %out_ptr, align 8, !tbaa !2
  %23 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom6 = sext i32 %23 to i64
  %24 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !2
  %methods = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %24, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods, i32 0, i64 %idxprom6
  %25 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx7, align 8, !tbaa !2
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %28 = load i8**, i8*** %in_ptr, align 8, !tbaa !2
  %29 = load i8**, i8*** %out_ptr, align 8, !tbaa !2
  call void %25(%struct.jpeg_compress_struct* %26, %struct.jpeg_component_info* %27, i8** %28, i8** %29)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = bitcast i8*** %out_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #3
  %33 = bitcast i8*** %in_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #3
  %34 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #3
  %36 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fullsize_smooth_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %outrow = alloca i32, align 4
  %colctr = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %above_ptr = alloca i8*, align 8
  %below_ptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %membersum = alloca i64, align 8
  %neighsum = alloca i64, align 8
  %memberscale = alloca i64, align 8
  %neighscale = alloca i64, align 8
  %colsum = alloca i32, align 4
  %lastcolsum = alloca i32, align 4
  %nextcolsum = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !2
  %0 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %colctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %3, i32 0, i32 7
  %4 = load i32, i32* %width_in_blocks, align 4, !tbaa !35
  %mul = mul i32 %4, 8
  store i32 %mul, i32* %output_cols, align 4, !tbaa !6
  %5 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i8** %above_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i8** %below_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i64* %membersum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i64* %neighsum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i64* %memberscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast i64* %neighscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i32* %colsum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %lastcolsum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %nextcolsum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8*, i8** %16, i64 -1
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 39
  %18 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !32
  %add = add nsw i32 %18, 2
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 6
  %20 = load i32, i32* %image_width, align 4, !tbaa !36
  %21 = load i32, i32* %output_cols, align 4, !tbaa !6
  call void @expand_right_edge(i8** %add.ptr, i32 %add, i32 %20, i32 %21)
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 27
  %23 = load i32, i32* %smoothing_factor, align 4, !tbaa !33
  %conv = sext i32 %23 to i64
  %mul1 = mul nsw i64 %conv, 512
  %sub = sub nsw i64 65536, %mul1
  store i64 %sub, i64* %memberscale, align 8, !tbaa !37
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %smoothing_factor2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 27
  %25 = load i32, i32* %smoothing_factor2, align 4, !tbaa !33
  %mul3 = mul nsw i32 %25, 64
  %conv4 = sext i32 %mul3 to i64
  store i64 %conv4, i64* %neighscale, align 8, !tbaa !37
  store i32 0, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.82, %entry
  %26 = load i32, i32* %outrow, align 4, !tbaa !6
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 3
  %28 = load i32, i32* %v_samp_factor, align 4, !tbaa !31
  %cmp = icmp slt i32 %26, %28
  br i1 %cmp, label %for.body, label %for.end.83

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %outrow, align 4, !tbaa !6
  %idxprom = sext i32 %29 to i64
  %30 = load i8**, i8*** %output_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %30, i64 %idxprom
  %31 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %31, i8** %outptr, align 8, !tbaa !2
  %32 = load i32, i32* %outrow, align 4, !tbaa !6
  %idxprom6 = sext i32 %32 to i64
  %33 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8*, i8** %33, i64 %idxprom6
  %34 = load i8*, i8** %arrayidx7, align 8, !tbaa !2
  store i8* %34, i8** %inptr, align 8, !tbaa !2
  %35 = load i32, i32* %outrow, align 4, !tbaa !6
  %sub8 = sub nsw i32 %35, 1
  %idxprom9 = sext i32 %sub8 to i64
  %36 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i8*, i8** %36, i64 %idxprom9
  %37 = load i8*, i8** %arrayidx10, align 8, !tbaa !2
  store i8* %37, i8** %above_ptr, align 8, !tbaa !2
  %38 = load i32, i32* %outrow, align 4, !tbaa !6
  %add11 = add nsw i32 %38, 1
  %idxprom12 = sext i32 %add11 to i64
  %39 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8*, i8** %39, i64 %idxprom12
  %40 = load i8*, i8** %arrayidx13, align 8, !tbaa !2
  store i8* %40, i8** %below_ptr, align 8, !tbaa !2
  %41 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %above_ptr, align 8, !tbaa !2
  %42 = load i8, i8* %41, align 1, !tbaa !38
  %conv14 = zext i8 %42 to i32
  %43 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %incdec.ptr15 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr15, i8** %below_ptr, align 8, !tbaa !2
  %44 = load i8, i8* %43, align 1, !tbaa !38
  %conv16 = zext i8 %44 to i32
  %add17 = add nsw i32 %conv14, %conv16
  %45 = load i8*, i8** %inptr, align 8, !tbaa !2
  %46 = load i8, i8* %45, align 1, !tbaa !38
  %conv18 = zext i8 %46 to i32
  %add19 = add nsw i32 %add17, %conv18
  store i32 %add19, i32* %colsum, align 4, !tbaa !6
  %47 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr20, i8** %inptr, align 8, !tbaa !2
  %48 = load i8, i8* %47, align 1, !tbaa !38
  %conv21 = zext i8 %48 to i32
  %conv22 = sext i32 %conv21 to i64
  store i64 %conv22, i64* %membersum, align 8, !tbaa !37
  %49 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %50 = load i8, i8* %49, align 1, !tbaa !38
  %conv23 = zext i8 %50 to i32
  %51 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %52 = load i8, i8* %51, align 1, !tbaa !38
  %conv24 = zext i8 %52 to i32
  %add25 = add nsw i32 %conv23, %conv24
  %53 = load i8*, i8** %inptr, align 8, !tbaa !2
  %54 = load i8, i8* %53, align 1, !tbaa !38
  %conv26 = zext i8 %54 to i32
  %add27 = add nsw i32 %add25, %conv26
  store i32 %add27, i32* %nextcolsum, align 4, !tbaa !6
  %55 = load i32, i32* %colsum, align 4, !tbaa !6
  %conv28 = sext i32 %55 to i64
  %56 = load i32, i32* %colsum, align 4, !tbaa !6
  %conv29 = sext i32 %56 to i64
  %57 = load i64, i64* %membersum, align 8, !tbaa !37
  %sub30 = sub nsw i64 %conv29, %57
  %add31 = add nsw i64 %conv28, %sub30
  %58 = load i32, i32* %nextcolsum, align 4, !tbaa !6
  %conv32 = sext i32 %58 to i64
  %add33 = add nsw i64 %add31, %conv32
  store i64 %add33, i64* %neighsum, align 8, !tbaa !37
  %59 = load i64, i64* %membersum, align 8, !tbaa !37
  %60 = load i64, i64* %memberscale, align 8, !tbaa !37
  %mul34 = mul nsw i64 %59, %60
  %61 = load i64, i64* %neighsum, align 8, !tbaa !37
  %62 = load i64, i64* %neighscale, align 8, !tbaa !37
  %mul35 = mul nsw i64 %61, %62
  %add36 = add nsw i64 %mul34, %mul35
  store i64 %add36, i64* %membersum, align 8, !tbaa !37
  %63 = load i64, i64* %membersum, align 8, !tbaa !37
  %add37 = add nsw i64 %63, 32768
  %shr = ashr i64 %add37, 16
  %conv38 = trunc i64 %shr to i8
  %64 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr39 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr39, i8** %outptr, align 8, !tbaa !2
  store i8 %conv38, i8* %64, align 1, !tbaa !38
  %65 = load i32, i32* %colsum, align 4, !tbaa !6
  store i32 %65, i32* %lastcolsum, align 4, !tbaa !6
  %66 = load i32, i32* %nextcolsum, align 4, !tbaa !6
  store i32 %66, i32* %colsum, align 4, !tbaa !6
  %67 = load i32, i32* %output_cols, align 4, !tbaa !6
  %sub40 = sub i32 %67, 2
  store i32 %sub40, i32* %colctr, align 4, !tbaa !6
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %for.body
  %68 = load i32, i32* %colctr, align 4, !tbaa !6
  %cmp42 = icmp ugt i32 %68, 0
  br i1 %cmp42, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.41
  %69 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr45 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr45, i8** %inptr, align 8, !tbaa !2
  %70 = load i8, i8* %69, align 1, !tbaa !38
  %conv46 = zext i8 %70 to i32
  %conv47 = sext i32 %conv46 to i64
  store i64 %conv47, i64* %membersum, align 8, !tbaa !37
  %71 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %incdec.ptr48 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr48, i8** %above_ptr, align 8, !tbaa !2
  %72 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %incdec.ptr49 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr49, i8** %below_ptr, align 8, !tbaa !2
  %73 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %74 = load i8, i8* %73, align 1, !tbaa !38
  %conv50 = zext i8 %74 to i32
  %75 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %76 = load i8, i8* %75, align 1, !tbaa !38
  %conv51 = zext i8 %76 to i32
  %add52 = add nsw i32 %conv50, %conv51
  %77 = load i8*, i8** %inptr, align 8, !tbaa !2
  %78 = load i8, i8* %77, align 1, !tbaa !38
  %conv53 = zext i8 %78 to i32
  %add54 = add nsw i32 %add52, %conv53
  store i32 %add54, i32* %nextcolsum, align 4, !tbaa !6
  %79 = load i32, i32* %lastcolsum, align 4, !tbaa !6
  %conv55 = sext i32 %79 to i64
  %80 = load i32, i32* %colsum, align 4, !tbaa !6
  %conv56 = sext i32 %80 to i64
  %81 = load i64, i64* %membersum, align 8, !tbaa !37
  %sub57 = sub nsw i64 %conv56, %81
  %add58 = add nsw i64 %conv55, %sub57
  %82 = load i32, i32* %nextcolsum, align 4, !tbaa !6
  %conv59 = sext i32 %82 to i64
  %add60 = add nsw i64 %add58, %conv59
  store i64 %add60, i64* %neighsum, align 8, !tbaa !37
  %83 = load i64, i64* %membersum, align 8, !tbaa !37
  %84 = load i64, i64* %memberscale, align 8, !tbaa !37
  %mul61 = mul nsw i64 %83, %84
  %85 = load i64, i64* %neighsum, align 8, !tbaa !37
  %86 = load i64, i64* %neighscale, align 8, !tbaa !37
  %mul62 = mul nsw i64 %85, %86
  %add63 = add nsw i64 %mul61, %mul62
  store i64 %add63, i64* %membersum, align 8, !tbaa !37
  %87 = load i64, i64* %membersum, align 8, !tbaa !37
  %add64 = add nsw i64 %87, 32768
  %shr65 = ashr i64 %add64, 16
  %conv66 = trunc i64 %shr65 to i8
  %88 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr67 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr67, i8** %outptr, align 8, !tbaa !2
  store i8 %conv66, i8* %88, align 1, !tbaa !38
  %89 = load i32, i32* %colsum, align 4, !tbaa !6
  store i32 %89, i32* %lastcolsum, align 4, !tbaa !6
  %90 = load i32, i32* %nextcolsum, align 4, !tbaa !6
  store i32 %90, i32* %colsum, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body.44
  %91 = load i32, i32* %colctr, align 4, !tbaa !6
  %dec = add i32 %91, -1
  store i32 %dec, i32* %colctr, align 4, !tbaa !6
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  %92 = load i8*, i8** %inptr, align 8, !tbaa !2
  %93 = load i8, i8* %92, align 1, !tbaa !38
  %conv68 = zext i8 %93 to i32
  %conv69 = sext i32 %conv68 to i64
  store i64 %conv69, i64* %membersum, align 8, !tbaa !37
  %94 = load i32, i32* %lastcolsum, align 4, !tbaa !6
  %conv70 = sext i32 %94 to i64
  %95 = load i32, i32* %colsum, align 4, !tbaa !6
  %conv71 = sext i32 %95 to i64
  %96 = load i64, i64* %membersum, align 8, !tbaa !37
  %sub72 = sub nsw i64 %conv71, %96
  %add73 = add nsw i64 %conv70, %sub72
  %97 = load i32, i32* %colsum, align 4, !tbaa !6
  %conv74 = sext i32 %97 to i64
  %add75 = add nsw i64 %add73, %conv74
  store i64 %add75, i64* %neighsum, align 8, !tbaa !37
  %98 = load i64, i64* %membersum, align 8, !tbaa !37
  %99 = load i64, i64* %memberscale, align 8, !tbaa !37
  %mul76 = mul nsw i64 %98, %99
  %100 = load i64, i64* %neighsum, align 8, !tbaa !37
  %101 = load i64, i64* %neighscale, align 8, !tbaa !37
  %mul77 = mul nsw i64 %100, %101
  %add78 = add nsw i64 %mul76, %mul77
  store i64 %add78, i64* %membersum, align 8, !tbaa !37
  %102 = load i64, i64* %membersum, align 8, !tbaa !37
  %add79 = add nsw i64 %102, 32768
  %shr80 = ashr i64 %add79, 16
  %conv81 = trunc i64 %shr80 to i8
  %103 = load i8*, i8** %outptr, align 8, !tbaa !2
  store i8 %conv81, i8* %103, align 1, !tbaa !38
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end
  %104 = load i32, i32* %outrow, align 4, !tbaa !6
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.end.83:                                       ; preds = %for.cond
  %105 = bitcast i32* %nextcolsum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #3
  %106 = bitcast i32* %lastcolsum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #3
  %107 = bitcast i32* %colsum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #3
  %108 = bitcast i64* %neighscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #3
  %109 = bitcast i64* %memberscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #3
  %110 = bitcast i64* %neighsum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #3
  %111 = bitcast i64* %membersum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #3
  %112 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #3
  %113 = bitcast i8** %below_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #3
  %114 = bitcast i8** %above_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #3
  %115 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #3
  %116 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #3
  %117 = bitcast i32* %colctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #3
  %118 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fullsize_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !2
  %0 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %1 = load i8**, i8*** %output_data.addr, align 8, !tbaa !2
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 39
  %3 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !32
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 6
  %5 = load i32, i32* %image_width, align 4, !tbaa !36
  call void @jcopy_sample_rows(i8** %0, i32 0, i8** %1, i32 0, i32 %3, i32 %5)
  %6 = load i8**, i8*** %output_data.addr, align 8, !tbaa !2
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 39
  %8 = load i32, i32* %max_v_samp_factor1, align 4, !tbaa !32
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 6
  %10 = load i32, i32* %image_width2, align 4, !tbaa !36
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 7
  %12 = load i32, i32* %width_in_blocks, align 4, !tbaa !35
  %mul = mul i32 %12, 8
  call void @expand_right_edge(i8** %6, i32 %8, i32 %10, i32 %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v1_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %outrow = alloca i32, align 4
  %outcol = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %bias = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !2
  %0 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %3, i32 0, i32 7
  %4 = load i32, i32* %width_in_blocks, align 4, !tbaa !35
  %mul = mul i32 %4, 8
  store i32 %mul, i32* %output_cols, align 4, !tbaa !6
  %5 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i32* %bias to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 39
  %10 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !32
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 6
  %12 = load i32, i32* %image_width, align 4, !tbaa !36
  %13 = load i32, i32* %output_cols, align 4, !tbaa !6
  %mul1 = mul i32 %13, 2
  call void @expand_right_edge(i8** %8, i32 %10, i32 %12, i32 %mul1)
  store i32 0, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %14 = load i32, i32* %outrow, align 4, !tbaa !6
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 3
  %16 = load i32, i32* %v_samp_factor, align 4, !tbaa !31
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %outrow, align 4, !tbaa !6
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** %output_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %19, i8** %outptr, align 8, !tbaa !2
  %20 = load i32, i32* %outrow, align 4, !tbaa !6
  %idxprom2 = sext i32 %20 to i64
  %21 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8*, i8** %21, i64 %idxprom2
  %22 = load i8*, i8** %arrayidx3, align 8, !tbaa !2
  store i8* %22, i8** %inptr, align 8, !tbaa !2
  store i32 0, i32* %bias, align 4, !tbaa !6
  store i32 0, i32* %outcol, align 4, !tbaa !6
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %outcol, align 4, !tbaa !6
  %24 = load i32, i32* %output_cols, align 4, !tbaa !6
  %cmp5 = icmp ult i32 %23, %24
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %25 = load i8*, i8** %inptr, align 8, !tbaa !2
  %26 = load i8, i8* %25, align 1, !tbaa !38
  %conv = zext i8 %26 to i32
  %27 = load i8*, i8** %inptr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx7, align 1, !tbaa !38
  %conv8 = zext i8 %28 to i32
  %add = add nsw i32 %conv, %conv8
  %29 = load i32, i32* %bias, align 4, !tbaa !6
  %add9 = add nsw i32 %add, %29
  %shr = ashr i32 %add9, 1
  %conv10 = trunc i32 %shr to i8
  %30 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %outptr, align 8, !tbaa !2
  store i8 %conv10, i8* %30, align 1, !tbaa !38
  %31 = load i32, i32* %bias, align 4, !tbaa !6
  %xor = xor i32 %31, 1
  store i32 %xor, i32* %bias, align 4, !tbaa !6
  %32 = load i8*, i8** %inptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %33 = load i32, i32* %outcol, align 4, !tbaa !6
  %inc = add i32 %33, 1
  store i32 %inc, i32* %outcol, align 4, !tbaa !6
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %34 = load i32, i32* %outrow, align 4, !tbaa !6
  %inc12 = add nsw i32 %34, 1
  store i32 %inc12, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %35 = bitcast i32* %bias to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #3
  %36 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  %37 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #3
  %38 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #3
  %39 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #3
  %40 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v2_smooth_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %colctr = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %above_ptr = alloca i8*, align 8
  %below_ptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %membersum = alloca i64, align 8
  %neighsum = alloca i64, align 8
  %memberscale = alloca i64, align 8
  %neighscale = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !2
  %0 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %colctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %4, i32 0, i32 7
  %5 = load i32, i32* %width_in_blocks, align 4, !tbaa !35
  %mul = mul i32 %5, 8
  store i32 %mul, i32* %output_cols, align 4, !tbaa !6
  %6 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i8** %above_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i8** %below_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i64* %membersum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast i64* %neighsum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i64* %memberscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i64* %neighscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #3
  %15 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8*, i8** %15, i64 -1
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 39
  %17 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !32
  %add = add nsw i32 %17, 2
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 6
  %19 = load i32, i32* %image_width, align 4, !tbaa !36
  %20 = load i32, i32* %output_cols, align 4, !tbaa !6
  %mul1 = mul i32 %20, 2
  call void @expand_right_edge(i8** %add.ptr, i32 %add, i32 %19, i32 %mul1)
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 27
  %22 = load i32, i32* %smoothing_factor, align 4, !tbaa !33
  %mul2 = mul nsw i32 %22, 80
  %sub = sub nsw i32 16384, %mul2
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %memberscale, align 8, !tbaa !37
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %smoothing_factor3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 27
  %24 = load i32, i32* %smoothing_factor3, align 4, !tbaa !33
  %mul4 = mul nsw i32 %24, 16
  %conv5 = sext i32 %mul4 to i64
  store i64 %conv5, i64* %neighscale, align 8, !tbaa !37
  store i32 0, i32* %inrow, align 4, !tbaa !6
  store i32 0, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.184, %entry
  %25 = load i32, i32* %outrow, align 4, !tbaa !6
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 3
  %27 = load i32, i32* %v_samp_factor, align 4, !tbaa !31
  %cmp = icmp slt i32 %25, %27
  br i1 %cmp, label %for.body, label %for.end.185

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %outrow, align 4, !tbaa !6
  %idxprom = sext i32 %28 to i64
  %29 = load i8**, i8*** %output_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %29, i64 %idxprom
  %30 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %30, i8** %outptr, align 8, !tbaa !2
  %31 = load i32, i32* %inrow, align 4, !tbaa !6
  %idxprom7 = sext i32 %31 to i64
  %32 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %32, i64 %idxprom7
  %33 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  store i8* %33, i8** %inptr0, align 8, !tbaa !2
  %34 = load i32, i32* %inrow, align 4, !tbaa !6
  %add9 = add nsw i32 %34, 1
  %idxprom10 = sext i32 %add9 to i64
  %35 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8*, i8** %35, i64 %idxprom10
  %36 = load i8*, i8** %arrayidx11, align 8, !tbaa !2
  store i8* %36, i8** %inptr1, align 8, !tbaa !2
  %37 = load i32, i32* %inrow, align 4, !tbaa !6
  %sub12 = sub nsw i32 %37, 1
  %idxprom13 = sext i32 %sub12 to i64
  %38 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8*, i8** %38, i64 %idxprom13
  %39 = load i8*, i8** %arrayidx14, align 8, !tbaa !2
  store i8* %39, i8** %above_ptr, align 8, !tbaa !2
  %40 = load i32, i32* %inrow, align 4, !tbaa !6
  %add15 = add nsw i32 %40, 2
  %idxprom16 = sext i32 %add15 to i64
  %41 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i8*, i8** %41, i64 %idxprom16
  %42 = load i8*, i8** %arrayidx17, align 8, !tbaa !2
  store i8* %42, i8** %below_ptr, align 8, !tbaa !2
  %43 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %44 = load i8, i8* %43, align 1, !tbaa !38
  %conv18 = zext i8 %44 to i32
  %45 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx19, align 1, !tbaa !38
  %conv20 = zext i8 %46 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %47 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %48 = load i8, i8* %47, align 1, !tbaa !38
  %conv22 = zext i8 %48 to i32
  %add23 = add nsw i32 %add21, %conv22
  %49 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx24, align 1, !tbaa !38
  %conv25 = zext i8 %50 to i32
  %add26 = add nsw i32 %add23, %conv25
  %conv27 = sext i32 %add26 to i64
  store i64 %conv27, i64* %membersum, align 8, !tbaa !37
  %51 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %52 = load i8, i8* %51, align 1, !tbaa !38
  %conv28 = zext i8 %52 to i32
  %53 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx29, align 1, !tbaa !38
  %conv30 = zext i8 %54 to i32
  %add31 = add nsw i32 %conv28, %conv30
  %55 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %56 = load i8, i8* %55, align 1, !tbaa !38
  %conv32 = zext i8 %56 to i32
  %add33 = add nsw i32 %add31, %conv32
  %57 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx34, align 1, !tbaa !38
  %conv35 = zext i8 %58 to i32
  %add36 = add nsw i32 %add33, %conv35
  %59 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %60 = load i8, i8* %59, align 1, !tbaa !38
  %conv37 = zext i8 %60 to i32
  %add38 = add nsw i32 %add36, %conv37
  %61 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds i8, i8* %61, i64 2
  %62 = load i8, i8* %arrayidx39, align 1, !tbaa !38
  %conv40 = zext i8 %62 to i32
  %add41 = add nsw i32 %add38, %conv40
  %63 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %64 = load i8, i8* %63, align 1, !tbaa !38
  %conv42 = zext i8 %64 to i32
  %add43 = add nsw i32 %add41, %conv42
  %65 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds i8, i8* %65, i64 2
  %66 = load i8, i8* %arrayidx44, align 1, !tbaa !38
  %conv45 = zext i8 %66 to i32
  %add46 = add nsw i32 %add43, %conv45
  %conv47 = sext i32 %add46 to i64
  store i64 %conv47, i64* %neighsum, align 8, !tbaa !37
  %67 = load i64, i64* %neighsum, align 8, !tbaa !37
  %68 = load i64, i64* %neighsum, align 8, !tbaa !37
  %add48 = add nsw i64 %68, %67
  store i64 %add48, i64* %neighsum, align 8, !tbaa !37
  %69 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %70 = load i8, i8* %69, align 1, !tbaa !38
  %conv49 = zext i8 %70 to i32
  %71 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds i8, i8* %71, i64 2
  %72 = load i8, i8* %arrayidx50, align 1, !tbaa !38
  %conv51 = zext i8 %72 to i32
  %add52 = add nsw i32 %conv49, %conv51
  %73 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %74 = load i8, i8* %73, align 1, !tbaa !38
  %conv53 = zext i8 %74 to i32
  %add54 = add nsw i32 %add52, %conv53
  %75 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %arrayidx55 = getelementptr inbounds i8, i8* %75, i64 2
  %76 = load i8, i8* %arrayidx55, align 1, !tbaa !38
  %conv56 = zext i8 %76 to i32
  %add57 = add nsw i32 %add54, %conv56
  %conv58 = sext i32 %add57 to i64
  %77 = load i64, i64* %neighsum, align 8, !tbaa !37
  %add59 = add nsw i64 %77, %conv58
  store i64 %add59, i64* %neighsum, align 8, !tbaa !37
  %78 = load i64, i64* %membersum, align 8, !tbaa !37
  %79 = load i64, i64* %memberscale, align 8, !tbaa !37
  %mul60 = mul nsw i64 %78, %79
  %80 = load i64, i64* %neighsum, align 8, !tbaa !37
  %81 = load i64, i64* %neighscale, align 8, !tbaa !37
  %mul61 = mul nsw i64 %80, %81
  %add62 = add nsw i64 %mul60, %mul61
  store i64 %add62, i64* %membersum, align 8, !tbaa !37
  %82 = load i64, i64* %membersum, align 8, !tbaa !37
  %add63 = add nsw i64 %82, 32768
  %shr = ashr i64 %add63, 16
  %conv64 = trunc i64 %shr to i8
  %83 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr, i8** %outptr, align 8, !tbaa !2
  store i8 %conv64, i8* %83, align 1, !tbaa !38
  %84 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %add.ptr65 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %add.ptr65, i8** %inptr0, align 8, !tbaa !2
  %85 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %add.ptr66 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %add.ptr66, i8** %inptr1, align 8, !tbaa !2
  %86 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %add.ptr67 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %add.ptr67, i8** %above_ptr, align 8, !tbaa !2
  %87 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %add.ptr68 = getelementptr inbounds i8, i8* %87, i64 2
  store i8* %add.ptr68, i8** %below_ptr, align 8, !tbaa !2
  %88 = load i32, i32* %output_cols, align 4, !tbaa !6
  %sub69 = sub i32 %88, 2
  store i32 %sub69, i32* %colctr, align 4, !tbaa !6
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %for.body
  %89 = load i32, i32* %colctr, align 4, !tbaa !6
  %cmp71 = icmp ugt i32 %89, 0
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %90 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %91 = load i8, i8* %90, align 1, !tbaa !38
  %conv74 = zext i8 %91 to i32
  %92 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx75 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx75, align 1, !tbaa !38
  %conv76 = zext i8 %93 to i32
  %add77 = add nsw i32 %conv74, %conv76
  %94 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %95 = load i8, i8* %94, align 1, !tbaa !38
  %conv78 = zext i8 %95 to i32
  %add79 = add nsw i32 %add77, %conv78
  %96 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx80, align 1, !tbaa !38
  %conv81 = zext i8 %97 to i32
  %add82 = add nsw i32 %add79, %conv81
  %conv83 = sext i32 %add82 to i64
  store i64 %conv83, i64* %membersum, align 8, !tbaa !37
  %98 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %99 = load i8, i8* %98, align 1, !tbaa !38
  %conv84 = zext i8 %99 to i32
  %100 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds i8, i8* %100, i64 1
  %101 = load i8, i8* %arrayidx85, align 1, !tbaa !38
  %conv86 = zext i8 %101 to i32
  %add87 = add nsw i32 %conv84, %conv86
  %102 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %103 = load i8, i8* %102, align 1, !tbaa !38
  %conv88 = zext i8 %103 to i32
  %add89 = add nsw i32 %add87, %conv88
  %104 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds i8, i8* %104, i64 1
  %105 = load i8, i8* %arrayidx90, align 1, !tbaa !38
  %conv91 = zext i8 %105 to i32
  %add92 = add nsw i32 %add89, %conv91
  %106 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds i8, i8* %106, i64 -1
  %107 = load i8, i8* %arrayidx93, align 1, !tbaa !38
  %conv94 = zext i8 %107 to i32
  %add95 = add nsw i32 %add92, %conv94
  %108 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds i8, i8* %108, i64 2
  %109 = load i8, i8* %arrayidx96, align 1, !tbaa !38
  %conv97 = zext i8 %109 to i32
  %add98 = add nsw i32 %add95, %conv97
  %110 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx99 = getelementptr inbounds i8, i8* %110, i64 -1
  %111 = load i8, i8* %arrayidx99, align 1, !tbaa !38
  %conv100 = zext i8 %111 to i32
  %add101 = add nsw i32 %add98, %conv100
  %112 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx102 = getelementptr inbounds i8, i8* %112, i64 2
  %113 = load i8, i8* %arrayidx102, align 1, !tbaa !38
  %conv103 = zext i8 %113 to i32
  %add104 = add nsw i32 %add101, %conv103
  %conv105 = sext i32 %add104 to i64
  store i64 %conv105, i64* %neighsum, align 8, !tbaa !37
  %114 = load i64, i64* %neighsum, align 8, !tbaa !37
  %115 = load i64, i64* %neighsum, align 8, !tbaa !37
  %add106 = add nsw i64 %115, %114
  store i64 %add106, i64* %neighsum, align 8, !tbaa !37
  %116 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %arrayidx107 = getelementptr inbounds i8, i8* %116, i64 -1
  %117 = load i8, i8* %arrayidx107, align 1, !tbaa !38
  %conv108 = zext i8 %117 to i32
  %118 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds i8, i8* %118, i64 2
  %119 = load i8, i8* %arrayidx109, align 1, !tbaa !38
  %conv110 = zext i8 %119 to i32
  %add111 = add nsw i32 %conv108, %conv110
  %120 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds i8, i8* %120, i64 -1
  %121 = load i8, i8* %arrayidx112, align 1, !tbaa !38
  %conv113 = zext i8 %121 to i32
  %add114 = add nsw i32 %add111, %conv113
  %122 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %arrayidx115 = getelementptr inbounds i8, i8* %122, i64 2
  %123 = load i8, i8* %arrayidx115, align 1, !tbaa !38
  %conv116 = zext i8 %123 to i32
  %add117 = add nsw i32 %add114, %conv116
  %conv118 = sext i32 %add117 to i64
  %124 = load i64, i64* %neighsum, align 8, !tbaa !37
  %add119 = add nsw i64 %124, %conv118
  store i64 %add119, i64* %neighsum, align 8, !tbaa !37
  %125 = load i64, i64* %membersum, align 8, !tbaa !37
  %126 = load i64, i64* %memberscale, align 8, !tbaa !37
  %mul120 = mul nsw i64 %125, %126
  %127 = load i64, i64* %neighsum, align 8, !tbaa !37
  %128 = load i64, i64* %neighscale, align 8, !tbaa !37
  %mul121 = mul nsw i64 %127, %128
  %add122 = add nsw i64 %mul120, %mul121
  store i64 %add122, i64* %membersum, align 8, !tbaa !37
  %129 = load i64, i64* %membersum, align 8, !tbaa !37
  %add123 = add nsw i64 %129, 32768
  %shr124 = ashr i64 %add123, 16
  %conv125 = trunc i64 %shr124 to i8
  %130 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr126 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr126, i8** %outptr, align 8, !tbaa !2
  store i8 %conv125, i8* %130, align 1, !tbaa !38
  %131 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %add.ptr127 = getelementptr inbounds i8, i8* %131, i64 2
  store i8* %add.ptr127, i8** %inptr0, align 8, !tbaa !2
  %132 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %add.ptr128 = getelementptr inbounds i8, i8* %132, i64 2
  store i8* %add.ptr128, i8** %inptr1, align 8, !tbaa !2
  %133 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %add.ptr129 = getelementptr inbounds i8, i8* %133, i64 2
  store i8* %add.ptr129, i8** %above_ptr, align 8, !tbaa !2
  %134 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %add.ptr130 = getelementptr inbounds i8, i8* %134, i64 2
  store i8* %add.ptr130, i8** %below_ptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.73
  %135 = load i32, i32* %colctr, align 4, !tbaa !6
  %dec = add i32 %135, -1
  store i32 %dec, i32* %colctr, align 4, !tbaa !6
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  %136 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %137 = load i8, i8* %136, align 1, !tbaa !38
  %conv131 = zext i8 %137 to i32
  %138 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds i8, i8* %138, i64 1
  %139 = load i8, i8* %arrayidx132, align 1, !tbaa !38
  %conv133 = zext i8 %139 to i32
  %add134 = add nsw i32 %conv131, %conv133
  %140 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %141 = load i8, i8* %140, align 1, !tbaa !38
  %conv135 = zext i8 %141 to i32
  %add136 = add nsw i32 %add134, %conv135
  %142 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx137 = getelementptr inbounds i8, i8* %142, i64 1
  %143 = load i8, i8* %arrayidx137, align 1, !tbaa !38
  %conv138 = zext i8 %143 to i32
  %add139 = add nsw i32 %add136, %conv138
  %conv140 = sext i32 %add139 to i64
  store i64 %conv140, i64* %membersum, align 8, !tbaa !37
  %144 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %145 = load i8, i8* %144, align 1, !tbaa !38
  %conv141 = zext i8 %145 to i32
  %146 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %arrayidx142 = getelementptr inbounds i8, i8* %146, i64 1
  %147 = load i8, i8* %arrayidx142, align 1, !tbaa !38
  %conv143 = zext i8 %147 to i32
  %add144 = add nsw i32 %conv141, %conv143
  %148 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %149 = load i8, i8* %148, align 1, !tbaa !38
  %conv145 = zext i8 %149 to i32
  %add146 = add nsw i32 %add144, %conv145
  %150 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %arrayidx147 = getelementptr inbounds i8, i8* %150, i64 1
  %151 = load i8, i8* %arrayidx147, align 1, !tbaa !38
  %conv148 = zext i8 %151 to i32
  %add149 = add nsw i32 %add146, %conv148
  %152 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx150 = getelementptr inbounds i8, i8* %152, i64 -1
  %153 = load i8, i8* %arrayidx150, align 1, !tbaa !38
  %conv151 = zext i8 %153 to i32
  %add152 = add nsw i32 %add149, %conv151
  %154 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx153 = getelementptr inbounds i8, i8* %154, i64 1
  %155 = load i8, i8* %arrayidx153, align 1, !tbaa !38
  %conv154 = zext i8 %155 to i32
  %add155 = add nsw i32 %add152, %conv154
  %156 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx156 = getelementptr inbounds i8, i8* %156, i64 -1
  %157 = load i8, i8* %arrayidx156, align 1, !tbaa !38
  %conv157 = zext i8 %157 to i32
  %add158 = add nsw i32 %add155, %conv157
  %158 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx159 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = load i8, i8* %arrayidx159, align 1, !tbaa !38
  %conv160 = zext i8 %159 to i32
  %add161 = add nsw i32 %add158, %conv160
  %conv162 = sext i32 %add161 to i64
  store i64 %conv162, i64* %neighsum, align 8, !tbaa !37
  %160 = load i64, i64* %neighsum, align 8, !tbaa !37
  %161 = load i64, i64* %neighsum, align 8, !tbaa !37
  %add163 = add nsw i64 %161, %160
  store i64 %add163, i64* %neighsum, align 8, !tbaa !37
  %162 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %arrayidx164 = getelementptr inbounds i8, i8* %162, i64 -1
  %163 = load i8, i8* %arrayidx164, align 1, !tbaa !38
  %conv165 = zext i8 %163 to i32
  %164 = load i8*, i8** %above_ptr, align 8, !tbaa !2
  %arrayidx166 = getelementptr inbounds i8, i8* %164, i64 1
  %165 = load i8, i8* %arrayidx166, align 1, !tbaa !38
  %conv167 = zext i8 %165 to i32
  %add168 = add nsw i32 %conv165, %conv167
  %166 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %arrayidx169 = getelementptr inbounds i8, i8* %166, i64 -1
  %167 = load i8, i8* %arrayidx169, align 1, !tbaa !38
  %conv170 = zext i8 %167 to i32
  %add171 = add nsw i32 %add168, %conv170
  %168 = load i8*, i8** %below_ptr, align 8, !tbaa !2
  %arrayidx172 = getelementptr inbounds i8, i8* %168, i64 1
  %169 = load i8, i8* %arrayidx172, align 1, !tbaa !38
  %conv173 = zext i8 %169 to i32
  %add174 = add nsw i32 %add171, %conv173
  %conv175 = sext i32 %add174 to i64
  %170 = load i64, i64* %neighsum, align 8, !tbaa !37
  %add176 = add nsw i64 %170, %conv175
  store i64 %add176, i64* %neighsum, align 8, !tbaa !37
  %171 = load i64, i64* %membersum, align 8, !tbaa !37
  %172 = load i64, i64* %memberscale, align 8, !tbaa !37
  %mul177 = mul nsw i64 %171, %172
  %173 = load i64, i64* %neighsum, align 8, !tbaa !37
  %174 = load i64, i64* %neighscale, align 8, !tbaa !37
  %mul178 = mul nsw i64 %173, %174
  %add179 = add nsw i64 %mul177, %mul178
  store i64 %add179, i64* %membersum, align 8, !tbaa !37
  %175 = load i64, i64* %membersum, align 8, !tbaa !37
  %add180 = add nsw i64 %175, 32768
  %shr181 = ashr i64 %add180, 16
  %conv182 = trunc i64 %shr181 to i8
  %176 = load i8*, i8** %outptr, align 8, !tbaa !2
  store i8 %conv182, i8* %176, align 1, !tbaa !38
  %177 = load i32, i32* %inrow, align 4, !tbaa !6
  %add183 = add nsw i32 %177, 2
  store i32 %add183, i32* %inrow, align 4, !tbaa !6
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end
  %178 = load i32, i32* %outrow, align 4, !tbaa !6
  %inc = add nsw i32 %178, 1
  store i32 %inc, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.end.185:                                      ; preds = %for.cond
  %179 = bitcast i64* %neighscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #3
  %180 = bitcast i64* %memberscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #3
  %181 = bitcast i64* %neighsum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #3
  %182 = bitcast i64* %membersum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #3
  %183 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #3
  %184 = bitcast i8** %below_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #3
  %185 = bitcast i8** %above_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #3
  %186 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #3
  %187 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #3
  %188 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #3
  %189 = bitcast i32* %colctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #3
  %190 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #3
  %191 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v2_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %outcol = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %bias = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !2
  %0 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %4, i32 0, i32 7
  %5 = load i32, i32* %width_in_blocks, align 4, !tbaa !35
  %mul = mul i32 %5, 8
  store i32 %mul, i32* %output_cols, align 4, !tbaa !6
  %6 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i32* %bias to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 39
  %12 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !32
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 6
  %14 = load i32, i32* %image_width, align 4, !tbaa !36
  %15 = load i32, i32* %output_cols, align 4, !tbaa !6
  %mul1 = mul i32 %15, 2
  call void @expand_right_edge(i8** %10, i32 %12, i32 %14, i32 %mul1)
  store i32 0, i32* %inrow, align 4, !tbaa !6
  store i32 0, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %16 = load i32, i32* %outrow, align 4, !tbaa !6
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 3
  %18 = load i32, i32* %v_samp_factor, align 4, !tbaa !31
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %outrow, align 4, !tbaa !6
  %idxprom = sext i32 %19 to i64
  %20 = load i8**, i8*** %output_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %21, i8** %outptr, align 8, !tbaa !2
  %22 = load i32, i32* %inrow, align 4, !tbaa !6
  %idxprom2 = sext i32 %22 to i64
  %23 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8*, i8** %23, i64 %idxprom2
  %24 = load i8*, i8** %arrayidx3, align 8, !tbaa !2
  store i8* %24, i8** %inptr0, align 8, !tbaa !2
  %25 = load i32, i32* %inrow, align 4, !tbaa !6
  %add = add nsw i32 %25, 1
  %idxprom4 = sext i32 %add to i64
  %26 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8*, i8** %26, i64 %idxprom4
  %27 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  store i8* %27, i8** %inptr1, align 8, !tbaa !2
  store i32 1, i32* %bias, align 4, !tbaa !6
  store i32 0, i32* %outcol, align 4, !tbaa !6
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %28 = load i32, i32* %outcol, align 4, !tbaa !6
  %29 = load i32, i32* %output_cols, align 4, !tbaa !6
  %cmp7 = icmp ult i32 %28, %29
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %30 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %31 = load i8, i8* %30, align 1, !tbaa !38
  %conv = zext i8 %31 to i32
  %32 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx9, align 1, !tbaa !38
  %conv10 = zext i8 %33 to i32
  %add11 = add nsw i32 %conv, %conv10
  %34 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %35 = load i8, i8* %34, align 1, !tbaa !38
  %conv12 = zext i8 %35 to i32
  %add13 = add nsw i32 %add11, %conv12
  %36 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx14, align 1, !tbaa !38
  %conv15 = zext i8 %37 to i32
  %add16 = add nsw i32 %add13, %conv15
  %38 = load i32, i32* %bias, align 4, !tbaa !6
  %add17 = add nsw i32 %add16, %38
  %shr = ashr i32 %add17, 2
  %conv18 = trunc i32 %shr to i8
  %39 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %outptr, align 8, !tbaa !2
  store i8 %conv18, i8* %39, align 1, !tbaa !38
  %40 = load i32, i32* %bias, align 4, !tbaa !6
  %xor = xor i32 %40, 3
  store i32 %xor, i32* %bias, align 4, !tbaa !6
  %41 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %add.ptr, i8** %inptr0, align 8, !tbaa !2
  %42 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %add.ptr19 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %add.ptr19, i8** %inptr1, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %43 = load i32, i32* %outcol, align 4, !tbaa !6
  %inc = add i32 %43, 1
  store i32 %inc, i32* %outcol, align 4, !tbaa !6
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %44 = load i32, i32* %inrow, align 4, !tbaa !6
  %add20 = add nsw i32 %44, 2
  store i32 %add20, i32* %inrow, align 4, !tbaa !6
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %45 = load i32, i32* %outrow, align 4, !tbaa !6
  %inc22 = add nsw i32 %45, 1
  store i32 %inc22, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %46 = bitcast i32* %bias to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  %47 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #3
  %48 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #3
  %49 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #3
  %50 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  %51 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  %52 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #3
  %53 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @int_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %h_expand = alloca i32, align 4
  %v_expand = alloca i32, align 4
  %numpix = alloca i32, align 4
  %numpix2 = alloca i32, align 4
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  %outcol = alloca i32, align 4
  %outcol_h = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %outvalue = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !2
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !2
  %0 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %h_expand to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %v_expand to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %numpix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %numpix2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %outcol_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 7
  %12 = load i32, i32* %width_in_blocks, align 4, !tbaa !35
  %mul = mul i32 %12, 8
  store i32 %mul, i32* %output_cols, align 4, !tbaa !6
  %13 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #3
  %15 = bitcast i64* %outvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 38
  %17 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !30
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 2
  %19 = load i32, i32* %h_samp_factor, align 4, !tbaa !28
  %div = sdiv i32 %17, %19
  store i32 %div, i32* %h_expand, align 4, !tbaa !6
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 39
  %21 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !32
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 3
  %23 = load i32, i32* %v_samp_factor, align 4, !tbaa !31
  %div1 = sdiv i32 %21, %23
  store i32 %div1, i32* %v_expand, align 4, !tbaa !6
  %24 = load i32, i32* %h_expand, align 4, !tbaa !6
  %25 = load i32, i32* %v_expand, align 4, !tbaa !6
  %mul2 = mul nsw i32 %24, %25
  store i32 %mul2, i32* %numpix, align 4, !tbaa !6
  %26 = load i32, i32* %numpix, align 4, !tbaa !6
  %div3 = sdiv i32 %26, 2
  store i32 %div3, i32* %numpix2, align 4, !tbaa !6
  %27 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 39
  %29 = load i32, i32* %max_v_samp_factor4, align 4, !tbaa !32
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 6
  %31 = load i32, i32* %image_width, align 4, !tbaa !36
  %32 = load i32, i32* %output_cols, align 4, !tbaa !6
  %33 = load i32, i32* %h_expand, align 4, !tbaa !6
  %mul5 = mul i32 %32, %33
  call void @expand_right_edge(i8** %27, i32 %29, i32 %31, i32 %mul5)
  store i32 0, i32* %inrow, align 4, !tbaa !6
  store i32 0, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %34 = load i32, i32* %outrow, align 4, !tbaa !6
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %v_samp_factor6 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %35, i32 0, i32 3
  %36 = load i32, i32* %v_samp_factor6, align 4, !tbaa !31
  %cmp = icmp slt i32 %34, %36
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %outrow, align 4, !tbaa !6
  %idxprom = sext i32 %37 to i64
  %38 = load i8**, i8*** %output_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %38, i64 %idxprom
  %39 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %39, i8** %outptr, align 8, !tbaa !2
  store i32 0, i32* %outcol, align 4, !tbaa !6
  store i32 0, i32* %outcol_h, align 4, !tbaa !6
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %40 = load i32, i32* %outcol, align 4, !tbaa !6
  %41 = load i32, i32* %output_cols, align 4, !tbaa !6
  %cmp8 = icmp ult i32 %40, %41
  br i1 %cmp8, label %for.body.9, label %for.end.32

for.body.9:                                       ; preds = %for.cond.7
  store i64 0, i64* %outvalue, align 8, !tbaa !37
  store i32 0, i32* %v, align 4, !tbaa !6
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.20, %for.body.9
  %42 = load i32, i32* %v, align 4, !tbaa !6
  %43 = load i32, i32* %v_expand, align 4, !tbaa !6
  %cmp11 = icmp slt i32 %42, %43
  br i1 %cmp11, label %for.body.12, label %for.end.22

for.body.12:                                      ; preds = %for.cond.10
  %44 = load i32, i32* %inrow, align 4, !tbaa !6
  %45 = load i32, i32* %v, align 4, !tbaa !6
  %add = add nsw i32 %44, %45
  %idxprom13 = sext i32 %add to i64
  %46 = load i8**, i8*** %input_data.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8*, i8** %46, i64 %idxprom13
  %47 = load i8*, i8** %arrayidx14, align 8, !tbaa !2
  %48 = load i32, i32* %outcol_h, align 4, !tbaa !6
  %idx.ext = zext i32 %48 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !2
  store i32 0, i32* %h, align 4, !tbaa !6
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body.12
  %49 = load i32, i32* %h, align 4, !tbaa !6
  %50 = load i32, i32* %h_expand, align 4, !tbaa !6
  %cmp16 = icmp slt i32 %49, %50
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %51 = load i8*, i8** %inptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !2
  %52 = load i8, i8* %51, align 1, !tbaa !38
  %conv = zext i8 %52 to i32
  %conv18 = sext i32 %conv to i64
  %53 = load i64, i64* %outvalue, align 8, !tbaa !37
  %add19 = add nsw i64 %53, %conv18
  store i64 %add19, i64* %outvalue, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %54 = load i32, i32* %h, align 4, !tbaa !6
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %h, align 4, !tbaa !6
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %55 = load i32, i32* %v, align 4, !tbaa !6
  %inc21 = add nsw i32 %55, 1
  store i32 %inc21, i32* %v, align 4, !tbaa !6
  br label %for.cond.10

for.end.22:                                       ; preds = %for.cond.10
  %56 = load i64, i64* %outvalue, align 8, !tbaa !37
  %57 = load i32, i32* %numpix2, align 4, !tbaa !6
  %conv23 = sext i32 %57 to i64
  %add24 = add nsw i64 %56, %conv23
  %58 = load i32, i32* %numpix, align 4, !tbaa !6
  %conv25 = sext i32 %58 to i64
  %div26 = sdiv i64 %add24, %conv25
  %conv27 = trunc i64 %div26 to i8
  %59 = load i8*, i8** %outptr, align 8, !tbaa !2
  %incdec.ptr28 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr28, i8** %outptr, align 8, !tbaa !2
  store i8 %conv27, i8* %59, align 1, !tbaa !38
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.22
  %60 = load i32, i32* %outcol, align 4, !tbaa !6
  %inc30 = add i32 %60, 1
  store i32 %inc30, i32* %outcol, align 4, !tbaa !6
  %61 = load i32, i32* %h_expand, align 4, !tbaa !6
  %62 = load i32, i32* %outcol_h, align 4, !tbaa !6
  %add31 = add i32 %62, %61
  store i32 %add31, i32* %outcol_h, align 4, !tbaa !6
  br label %for.cond.7

for.end.32:                                       ; preds = %for.cond.7
  %63 = load i32, i32* %v_expand, align 4, !tbaa !6
  %64 = load i32, i32* %inrow, align 4, !tbaa !6
  %add33 = add nsw i32 %64, %63
  store i32 %add33, i32* %inrow, align 4, !tbaa !6
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.32
  %65 = load i32, i32* %outrow, align 4, !tbaa !6
  %inc35 = add nsw i32 %65, 1
  store i32 %inc35, i32* %outrow, align 4, !tbaa !6
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %66 = bitcast i64* %outvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #3
  %67 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #3
  %68 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #3
  %69 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #3
  %70 = bitcast i32* %outcol_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  %71 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  %73 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #3
  %74 = bitcast i32* %numpix2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #3
  %75 = bitcast i32* %numpix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #3
  %76 = bitcast i32* %v_expand to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #3
  %77 = bitcast i32* %h_expand to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @expand_right_edge(i8** %image_data, i32 %num_rows, i32 %input_cols, i32 %output_cols) #0 {
entry:
  %image_data.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %input_cols.addr = alloca i32, align 4
  %output_cols.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %pixval = alloca i8, align 1
  %count = alloca i32, align 4
  %row = alloca i32, align 4
  %numcols = alloca i32, align 4
  store i8** %image_data, i8*** %image_data.addr, align 8, !tbaa !2
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !6
  store i32 %input_cols, i32* %input_cols.addr, align 4, !tbaa !6
  store i32 %output_cols, i32* %output_cols.addr, align 4, !tbaa !6
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  call void @llvm.lifetime.start(i64 1, i8* %pixval) #3
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %numcols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load i32, i32* %output_cols.addr, align 4, !tbaa !6
  %5 = load i32, i32* %input_cols.addr, align 4, !tbaa !6
  %sub = sub i32 %4, %5
  store i32 %sub, i32* %numcols, align 4, !tbaa !6
  %6 = load i32, i32* %numcols, align 4, !tbaa !6
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %row, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %if.then
  %7 = load i32, i32* %row, align 4, !tbaa !6
  %8 = load i32, i32* %num_rows.addr, align 4, !tbaa !6
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %row, align 4, !tbaa !6
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %image_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %12 = load i32, i32* %input_cols.addr, align 4, !tbaa !6
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !2
  %13 = load i8*, i8** %ptr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8, i8* %13, i64 -1
  %14 = load i8, i8* %arrayidx2, align 1, !tbaa !38
  store i8 %14, i8* %pixval, align 1, !tbaa !38
  %15 = load i32, i32* %numcols, align 4, !tbaa !6
  store i32 %15, i32* %count, align 4, !tbaa !6
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %count, align 4, !tbaa !6
  %cmp4 = icmp sgt i32 %16, 0
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %17 = load i8, i8* %pixval, align 1, !tbaa !38
  %18 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !2
  store i8 %17, i8* %18, align 1, !tbaa !38
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %19 = load i32, i32* %count, align 4, !tbaa !6
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %count, align 4, !tbaa !6
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %20 = load i32, i32* %row, align 4, !tbaa !6
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %row, align 4, !tbaa !6
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.7, %entry
  %21 = bitcast i32* %numcols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #3
  %22 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #3
  %23 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #3
  call void @llvm.lifetime.end(i64 1, i8* %pixval) #3
  %24 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #3
  ret void
}

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #2

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
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 8}
!9 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !10, i64 56, !7, i64 64, !7, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !7, i64 232, !3, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !4, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !4, i64 284, !11, i64 286, !11, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !4, i64 320, !7, i64 352, !7, i64 356, !7, i64 360, !4, i64 364, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!10 = !{!"double", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!13, !3, i64 0}
!13 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !14, i64 88}
!14 = !{!"long", !4, i64 0}
!15 = !{!9, !3, i64 472}
!16 = !{!17, !3, i64 0}
!17 = !{!"", !18, i64 0, !4, i64 24}
!18 = !{!"jpeg_downsampler", !3, i64 0, !3, i64 8, !7, i64 16}
!19 = !{!17, !3, i64 8}
!20 = !{!17, !7, i64 16}
!21 = !{!9, !7, i64 260}
!22 = !{!9, !3, i64 0}
!23 = !{!24, !7, i64 40}
!24 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !4, i64 44, !7, i64 124, !14, i64 128, !3, i64 136, !7, i64 144, !3, i64 152, !7, i64 160, !7, i64 164}
!25 = !{!24, !3, i64 0}
!26 = !{!9, !3, i64 80}
!27 = !{!9, !7, i64 68}
!28 = !{!29, !7, i64 8}
!29 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!30 = !{!9, !7, i64 304}
!31 = !{!29, !7, i64 12}
!32 = !{!9, !7, i64 308}
!33 = !{!9, !7, i64 264}
!34 = !{!24, !3, i64 8}
!35 = !{!29, !7, i64 28}
!36 = !{!9, !7, i64 40}
!37 = !{!14, !14, i64 0}
!38 = !{!4, !4, i64 0}
