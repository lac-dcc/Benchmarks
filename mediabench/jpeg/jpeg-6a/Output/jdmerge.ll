; ModuleID = 'jdmerge.c'
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
%struct.my_upsampler = type { %struct.jpeg_upsampler, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, i32*, i32*, i64*, i64*, i8*, i32, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_merged_upsampler(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 88)
  %6 = bitcast i8* %call to %struct.my_upsampler*
  store %struct.my_upsampler* %6, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %8 = bitcast %struct.my_upsampler* %7 to %struct.jpeg_upsampler*
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 81
  store %struct.jpeg_upsampler* %8, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %10 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_merged_upsample, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8, !tbaa !15
  %11 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub3, i32 0, i32 2
  store i32 0, i32* %need_context_rows, align 4, !tbaa !18
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 26
  %13 = load i32, i32* %output_width, align 4, !tbaa !19
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 28
  %15 = load i32, i32* %out_color_components, align 4, !tbaa !20
  %mul = mul i32 %13, %15
  %16 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %out_row_width = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %16, i32 0, i32 8
  store i32 %mul, i32* %out_row_width, align 4, !tbaa !21
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 58
  %18 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !22
  %cmp = icmp eq i32 %18, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %pub4 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %19, i32 0, i32 0
  %upsample5 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub4, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @merged_2v_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample5, align 8, !tbaa !23
  %20 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %upmethod = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %20, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)* @h2v2_merged_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %upmethod, align 8, !tbaa !24
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 1
  %22 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem6, align 8, !tbaa !6
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %22, i32 0, i32 1
  %23 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !25
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  %26 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %out_row_width7 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %26, i32 0, i32 8
  %27 = load i32, i32* %out_row_width7, align 4, !tbaa !21
  %conv = zext i32 %27 to i64
  %mul8 = mul i64 %conv, 1
  %call9 = call i8* %23(%struct.jpeg_common_struct* %25, i32 1, i64 %mul8)
  %28 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %spare_row = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %28, i32 0, i32 6
  store i8* %call9, i8** %spare_row, align 8, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %entry
  %29 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %pub10 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %29, i32 0, i32 0
  %upsample11 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub10, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @merged_1v_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample11, align 8, !tbaa !23
  %30 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %upmethod12 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %30, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)* @h2v1_merged_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %upmethod12, align 8, !tbaa !24
  %31 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %spare_row13 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %31, i32 0, i32 6
  store i8* null, i8** %spare_row13, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %32)
  %33 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_merged_upsample(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 81
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %4 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %spare_full = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i32 0, i32 7
  store i32 0, i32* %spare_full, align 4, !tbaa !27
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 27
  %6 = load i32, i32* %output_height, align 4, !tbaa !28
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i32 0, i32 9
  store i32 %6, i32* %rows_to_go, align 4, !tbaa !29
  %8 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @merged_2v_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca %struct.my_upsampler*, align 8
  %work_ptrs = alloca [2 x i8*], align 16
  %num_rows = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4, !tbaa !30
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !2
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !30
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 81
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %4 = bitcast [2 x i8*]* %work_ptrs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #3
  %5 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %spare_full = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %6, i32 0, i32 7
  %7 = load i32, i32* %spare_full, align 4, !tbaa !27
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %spare_row = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %8, i32 0, i32 6
  %9 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %10 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %11 = load i32, i32* %10, align 4, !tbaa !30
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %9, i64 %idx.ext
  %12 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %out_row_width = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %12, i32 0, i32 8
  %13 = load i32, i32* %out_row_width, align 4, !tbaa !21
  call void @jcopy_sample_rows(i8** %spare_row, i32 0, i8** %add.ptr, i32 0, i32 1, i32 %13)
  store i32 1, i32* %num_rows, align 4, !tbaa !30
  %14 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %spare_full2 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %14, i32 0, i32 7
  store i32 0, i32* %spare_full2, align 4, !tbaa !27
  br label %if.end.19

if.else:                                          ; preds = %entry
  store i32 2, i32* %num_rows, align 4, !tbaa !30
  %15 = load i32, i32* %num_rows, align 4, !tbaa !30
  %16 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %16, i32 0, i32 9
  %17 = load i32, i32* %rows_to_go, align 4, !tbaa !29
  %cmp = icmp ugt i32 %15, %17
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %18 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rows_to_go4 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %18, i32 0, i32 9
  %19 = load i32, i32* %rows_to_go4, align 4, !tbaa !29
  store i32 %19, i32* %num_rows, align 4, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %20 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %21 = load i32, i32* %20, align 4, !tbaa !30
  %22 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !30
  %sub = sub i32 %22, %21
  store i32 %sub, i32* %out_rows_avail.addr, align 4, !tbaa !30
  %23 = load i32, i32* %num_rows, align 4, !tbaa !30
  %24 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !30
  %cmp5 = icmp ugt i32 %23, %24
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %25 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !30
  store i32 %25, i32* %num_rows, align 4, !tbaa !30
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %26 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %27 = load i32, i32* %26, align 4, !tbaa !30
  %idxprom = zext i32 %27 to i64
  %28 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %28, i64 %idxprom
  %29 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %work_ptrs, i32 0, i64 0
  store i8* %29, i8** %arrayidx8, align 8, !tbaa !2
  %30 = load i32, i32* %num_rows, align 4, !tbaa !30
  %cmp9 = icmp ugt i32 %30, 1
  br i1 %cmp9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %if.end.7
  %31 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %32 = load i32, i32* %31, align 4, !tbaa !30
  %add = add i32 %32, 1
  %idxprom11 = zext i32 %add to i64
  %33 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i8*, i8** %33, i64 %idxprom11
  %34 = load i8*, i8** %arrayidx12, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %work_ptrs, i32 0, i64 1
  store i8* %34, i8** %arrayidx13, align 8, !tbaa !2
  br label %if.end.18

if.else.14:                                       ; preds = %if.end.7
  %35 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %spare_row15 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %35, i32 0, i32 6
  %36 = load i8*, i8** %spare_row15, align 8, !tbaa !26
  %arrayidx16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %work_ptrs, i32 0, i64 1
  store i8* %36, i8** %arrayidx16, align 8, !tbaa !2
  %37 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %spare_full17 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %37, i32 0, i32 7
  store i32 1, i32* %spare_full17, align 4, !tbaa !27
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.14, %if.then.10
  %38 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %upmethod = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %38, i32 0, i32 1
  %39 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %upmethod, align 8, !tbaa !24
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %41 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %42 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  %43 = load i32, i32* %42, align 4, !tbaa !30
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %work_ptrs, i32 0, i32 0
  call void %39(%struct.jpeg_decompress_struct* %40, i8*** %41, i32 %43, i8** %arraydecay)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  %44 = load i32, i32* %num_rows, align 4, !tbaa !30
  %45 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %46 = load i32, i32* %45, align 4, !tbaa !30
  %add20 = add i32 %46, %44
  store i32 %add20, i32* %45, align 4, !tbaa !30
  %47 = load i32, i32* %num_rows, align 4, !tbaa !30
  %48 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %rows_to_go21 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %48, i32 0, i32 9
  %49 = load i32, i32* %rows_to_go21, align 4, !tbaa !29
  %sub22 = sub i32 %49, %47
  store i32 %sub22, i32* %rows_to_go21, align 4, !tbaa !29
  %50 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %spare_full23 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %50, i32 0, i32 7
  %51 = load i32, i32* %spare_full23, align 4, !tbaa !27
  %tobool24 = icmp ne i32 %51, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.19
  %52 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  %53 = load i32, i32* %52, align 4, !tbaa !30
  %inc = add i32 %53, 1
  store i32 %inc, i32* %52, align 4, !tbaa !30
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.19
  %54 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #3
  %55 = bitcast [2 x i8*]* %work_ptrs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %55) #3
  %56 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v2_merged_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %in_row_group_ctr, i8** %output_buf) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %y = alloca i32, align 4
  %cred = alloca i32, align 4
  %cgreen = alloca i32, align 4
  %cblue = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %inptr00 = alloca i8*, align 8
  %inptr01 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %Crrtab = alloca i32*, align 8
  %Cbbtab = alloca i32*, align 8
  %Crgtab = alloca i64*, align 8
  %Cbgtab = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32 %in_row_group_ctr, i32* %in_row_group_ctr.addr, align 4, !tbaa !30
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 81
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %cred to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %cgreen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %cblue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast i8** %inptr00 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i8** %inptr01 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #3
  %15 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 61
  %19 = load i8*, i8** %sample_range_limit, align 8, !tbaa !31
  store i8* %19, i8** %range_limit, align 8, !tbaa !2
  %20 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #3
  %21 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %21, i32 0, i32 2
  %22 = load i32*, i32** %Cr_r_tab, align 8, !tbaa !32
  store i32* %22, i32** %Crrtab, align 8, !tbaa !2
  %23 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #3
  %24 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %24, i32 0, i32 3
  %25 = load i32*, i32** %Cb_b_tab, align 8, !tbaa !33
  store i32* %25, i32** %Cbbtab, align 8, !tbaa !2
  %26 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #3
  %27 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %27, i32 0, i32 4
  %28 = load i64*, i64** %Cr_g_tab, align 8, !tbaa !34
  store i64* %28, i64** %Crgtab, align 8, !tbaa !2
  %29 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #3
  %30 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %30, i32 0, i32 5
  %31 = load i64*, i64** %Cb_g_tab, align 8, !tbaa !35
  store i64* %31, i64** %Cbgtab, align 8, !tbaa !2
  %32 = load i32, i32* %in_row_group_ctr.addr, align 4, !tbaa !30
  %mul = mul i32 %32, 2
  %idxprom = zext i32 %mul to i64
  %33 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %33, i64 0
  %34 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %35, i8** %inptr00, align 8, !tbaa !2
  %36 = load i32, i32* %in_row_group_ctr.addr, align 4, !tbaa !30
  %mul3 = mul i32 %36, 2
  %add = add i32 %mul3, 1
  %idxprom4 = zext i32 %add to i64
  %37 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8**, i8*** %37, i64 0
  %38 = load i8**, i8*** %arrayidx5, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8*, i8** %38, i64 %idxprom4
  %39 = load i8*, i8** %arrayidx6, align 8, !tbaa !2
  store i8* %39, i8** %inptr01, align 8, !tbaa !2
  %40 = load i32, i32* %in_row_group_ctr.addr, align 4, !tbaa !30
  %idxprom7 = zext i32 %40 to i64
  %41 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8**, i8*** %41, i64 1
  %42 = load i8**, i8*** %arrayidx8, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8*, i8** %42, i64 %idxprom7
  %43 = load i8*, i8** %arrayidx9, align 8, !tbaa !2
  store i8* %43, i8** %inptr1, align 8, !tbaa !2
  %44 = load i32, i32* %in_row_group_ctr.addr, align 4, !tbaa !30
  %idxprom10 = zext i32 %44 to i64
  %45 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8**, i8*** %45, i64 2
  %46 = load i8**, i8*** %arrayidx11, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds i8*, i8** %46, i64 %idxprom10
  %47 = load i8*, i8** %arrayidx12, align 8, !tbaa !2
  store i8* %47, i8** %inptr2, align 8, !tbaa !2
  %48 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8*, i8** %48, i64 0
  %49 = load i8*, i8** %arrayidx13, align 8, !tbaa !2
  store i8* %49, i8** %outptr0, align 8, !tbaa !2
  %50 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx14 = getelementptr inbounds i8*, i8** %50, i64 1
  %51 = load i8*, i8** %arrayidx14, align 8, !tbaa !2
  store i8* %51, i8** %outptr1, align 8, !tbaa !2
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 26
  %53 = load i32, i32* %output_width, align 4, !tbaa !19
  %shr = lshr i32 %53, 1
  store i32 %shr, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %54 = load i32, i32* %col, align 4, !tbaa !30
  %cmp = icmp ugt i32 %54, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %inptr1, align 8, !tbaa !2
  %56 = load i8, i8* %55, align 1, !tbaa !36
  %conv = zext i8 %56 to i32
  store i32 %conv, i32* %cb, align 4, !tbaa !30
  %57 = load i8*, i8** %inptr2, align 8, !tbaa !2
  %incdec.ptr15 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr15, i8** %inptr2, align 8, !tbaa !2
  %58 = load i8, i8* %57, align 1, !tbaa !36
  %conv16 = zext i8 %58 to i32
  store i32 %conv16, i32* %cr, align 4, !tbaa !30
  %59 = load i32, i32* %cr, align 4, !tbaa !30
  %idxprom17 = sext i32 %59 to i64
  %60 = load i32*, i32** %Crrtab, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i32, i32* %60, i64 %idxprom17
  %61 = load i32, i32* %arrayidx18, align 4, !tbaa !30
  store i32 %61, i32* %cred, align 4, !tbaa !30
  %62 = load i32, i32* %cb, align 4, !tbaa !30
  %idxprom19 = sext i32 %62 to i64
  %63 = load i64*, i64** %Cbgtab, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i64, i64* %63, i64 %idxprom19
  %64 = load i64, i64* %arrayidx20, align 8, !tbaa !37
  %65 = load i32, i32* %cr, align 4, !tbaa !30
  %idxprom21 = sext i32 %65 to i64
  %66 = load i64*, i64** %Crgtab, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i64, i64* %66, i64 %idxprom21
  %67 = load i64, i64* %arrayidx22, align 8, !tbaa !37
  %add23 = add nsw i64 %64, %67
  %shr24 = ashr i64 %add23, 16
  %conv25 = trunc i64 %shr24 to i32
  store i32 %conv25, i32* %cgreen, align 4, !tbaa !30
  %68 = load i32, i32* %cb, align 4, !tbaa !30
  %idxprom26 = sext i32 %68 to i64
  %69 = load i32*, i32** %Cbbtab, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i32, i32* %69, i64 %idxprom26
  %70 = load i32, i32* %arrayidx27, align 4, !tbaa !30
  store i32 %70, i32* %cblue, align 4, !tbaa !30
  %71 = load i8*, i8** %inptr00, align 8, !tbaa !2
  %incdec.ptr28 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr28, i8** %inptr00, align 8, !tbaa !2
  %72 = load i8, i8* %71, align 1, !tbaa !36
  %conv29 = zext i8 %72 to i32
  store i32 %conv29, i32* %y, align 4, !tbaa !30
  %73 = load i32, i32* %y, align 4, !tbaa !30
  %74 = load i32, i32* %cred, align 4, !tbaa !30
  %add30 = add nsw i32 %73, %74
  %idxprom31 = sext i32 %add30 to i64
  %75 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx32 = getelementptr inbounds i8, i8* %75, i64 %idxprom31
  %76 = load i8, i8* %arrayidx32, align 1, !tbaa !36
  %77 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx33 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %76, i8* %arrayidx33, align 1, !tbaa !36
  %78 = load i32, i32* %y, align 4, !tbaa !30
  %79 = load i32, i32* %cgreen, align 4, !tbaa !30
  %add34 = add nsw i32 %78, %79
  %idxprom35 = sext i32 %add34 to i64
  %80 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds i8, i8* %80, i64 %idxprom35
  %81 = load i8, i8* %arrayidx36, align 1, !tbaa !36
  %82 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds i8, i8* %82, i64 1
  store i8 %81, i8* %arrayidx37, align 1, !tbaa !36
  %83 = load i32, i32* %y, align 4, !tbaa !30
  %84 = load i32, i32* %cblue, align 4, !tbaa !30
  %add38 = add nsw i32 %83, %84
  %idxprom39 = sext i32 %add38 to i64
  %85 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i8, i8* %85, i64 %idxprom39
  %86 = load i8, i8* %arrayidx40, align 1, !tbaa !36
  %87 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds i8, i8* %87, i64 2
  store i8 %86, i8* %arrayidx41, align 1, !tbaa !36
  %88 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %88, i64 3
  store i8* %add.ptr, i8** %outptr0, align 8, !tbaa !2
  %89 = load i8*, i8** %inptr00, align 8, !tbaa !2
  %incdec.ptr42 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr42, i8** %inptr00, align 8, !tbaa !2
  %90 = load i8, i8* %89, align 1, !tbaa !36
  %conv43 = zext i8 %90 to i32
  store i32 %conv43, i32* %y, align 4, !tbaa !30
  %91 = load i32, i32* %y, align 4, !tbaa !30
  %92 = load i32, i32* %cred, align 4, !tbaa !30
  %add44 = add nsw i32 %91, %92
  %idxprom45 = sext i32 %add44 to i64
  %93 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds i8, i8* %93, i64 %idxprom45
  %94 = load i8, i8* %arrayidx46, align 1, !tbaa !36
  %95 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds i8, i8* %95, i64 0
  store i8 %94, i8* %arrayidx47, align 1, !tbaa !36
  %96 = load i32, i32* %y, align 4, !tbaa !30
  %97 = load i32, i32* %cgreen, align 4, !tbaa !30
  %add48 = add nsw i32 %96, %97
  %idxprom49 = sext i32 %add48 to i64
  %98 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx50 = getelementptr inbounds i8, i8* %98, i64 %idxprom49
  %99 = load i8, i8* %arrayidx50, align 1, !tbaa !36
  %100 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds i8, i8* %100, i64 1
  store i8 %99, i8* %arrayidx51, align 1, !tbaa !36
  %101 = load i32, i32* %y, align 4, !tbaa !30
  %102 = load i32, i32* %cblue, align 4, !tbaa !30
  %add52 = add nsw i32 %101, %102
  %idxprom53 = sext i32 %add52 to i64
  %103 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx54 = getelementptr inbounds i8, i8* %103, i64 %idxprom53
  %104 = load i8, i8* %arrayidx54, align 1, !tbaa !36
  %105 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx55 = getelementptr inbounds i8, i8* %105, i64 2
  store i8 %104, i8* %arrayidx55, align 1, !tbaa !36
  %106 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %add.ptr56 = getelementptr inbounds i8, i8* %106, i64 3
  store i8* %add.ptr56, i8** %outptr0, align 8, !tbaa !2
  %107 = load i8*, i8** %inptr01, align 8, !tbaa !2
  %incdec.ptr57 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr57, i8** %inptr01, align 8, !tbaa !2
  %108 = load i8, i8* %107, align 1, !tbaa !36
  %conv58 = zext i8 %108 to i32
  store i32 %conv58, i32* %y, align 4, !tbaa !30
  %109 = load i32, i32* %y, align 4, !tbaa !30
  %110 = load i32, i32* %cred, align 4, !tbaa !30
  %add59 = add nsw i32 %109, %110
  %idxprom60 = sext i32 %add59 to i64
  %111 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds i8, i8* %111, i64 %idxprom60
  %112 = load i8, i8* %arrayidx61, align 1, !tbaa !36
  %113 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx62 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 %112, i8* %arrayidx62, align 1, !tbaa !36
  %114 = load i32, i32* %y, align 4, !tbaa !30
  %115 = load i32, i32* %cgreen, align 4, !tbaa !30
  %add63 = add nsw i32 %114, %115
  %idxprom64 = sext i32 %add63 to i64
  %116 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx65 = getelementptr inbounds i8, i8* %116, i64 %idxprom64
  %117 = load i8, i8* %arrayidx65, align 1, !tbaa !36
  %118 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx66 = getelementptr inbounds i8, i8* %118, i64 1
  store i8 %117, i8* %arrayidx66, align 1, !tbaa !36
  %119 = load i32, i32* %y, align 4, !tbaa !30
  %120 = load i32, i32* %cblue, align 4, !tbaa !30
  %add67 = add nsw i32 %119, %120
  %idxprom68 = sext i32 %add67 to i64
  %121 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds i8, i8* %121, i64 %idxprom68
  %122 = load i8, i8* %arrayidx69, align 1, !tbaa !36
  %123 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx70 = getelementptr inbounds i8, i8* %123, i64 2
  store i8 %122, i8* %arrayidx70, align 1, !tbaa !36
  %124 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %add.ptr71 = getelementptr inbounds i8, i8* %124, i64 3
  store i8* %add.ptr71, i8** %outptr1, align 8, !tbaa !2
  %125 = load i8*, i8** %inptr01, align 8, !tbaa !2
  %incdec.ptr72 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr72, i8** %inptr01, align 8, !tbaa !2
  %126 = load i8, i8* %125, align 1, !tbaa !36
  %conv73 = zext i8 %126 to i32
  store i32 %conv73, i32* %y, align 4, !tbaa !30
  %127 = load i32, i32* %y, align 4, !tbaa !30
  %128 = load i32, i32* %cred, align 4, !tbaa !30
  %add74 = add nsw i32 %127, %128
  %idxprom75 = sext i32 %add74 to i64
  %129 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds i8, i8* %129, i64 %idxprom75
  %130 = load i8, i8* %arrayidx76, align 1, !tbaa !36
  %131 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds i8, i8* %131, i64 0
  store i8 %130, i8* %arrayidx77, align 1, !tbaa !36
  %132 = load i32, i32* %y, align 4, !tbaa !30
  %133 = load i32, i32* %cgreen, align 4, !tbaa !30
  %add78 = add nsw i32 %132, %133
  %idxprom79 = sext i32 %add78 to i64
  %134 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx80 = getelementptr inbounds i8, i8* %134, i64 %idxprom79
  %135 = load i8, i8* %arrayidx80, align 1, !tbaa !36
  %136 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx81 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 %135, i8* %arrayidx81, align 1, !tbaa !36
  %137 = load i32, i32* %y, align 4, !tbaa !30
  %138 = load i32, i32* %cblue, align 4, !tbaa !30
  %add82 = add nsw i32 %137, %138
  %idxprom83 = sext i32 %add82 to i64
  %139 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx84 = getelementptr inbounds i8, i8* %139, i64 %idxprom83
  %140 = load i8, i8* %arrayidx84, align 1, !tbaa !36
  %141 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds i8, i8* %141, i64 2
  store i8 %140, i8* %arrayidx85, align 1, !tbaa !36
  %142 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %add.ptr86 = getelementptr inbounds i8, i8* %142, i64 3
  store i8* %add.ptr86, i8** %outptr1, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %143 = load i32, i32* %col, align 4, !tbaa !30
  %dec = add i32 %143, -1
  store i32 %dec, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %144 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %144, i32 0, i32 26
  %145 = load i32, i32* %output_width87, align 4, !tbaa !19
  %and = and i32 %145, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %146 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %147 = load i8, i8* %146, align 1, !tbaa !36
  %conv88 = zext i8 %147 to i32
  store i32 %conv88, i32* %cb, align 4, !tbaa !30
  %148 = load i8*, i8** %inptr2, align 8, !tbaa !2
  %149 = load i8, i8* %148, align 1, !tbaa !36
  %conv89 = zext i8 %149 to i32
  store i32 %conv89, i32* %cr, align 4, !tbaa !30
  %150 = load i32, i32* %cr, align 4, !tbaa !30
  %idxprom90 = sext i32 %150 to i64
  %151 = load i32*, i32** %Crrtab, align 8, !tbaa !2
  %arrayidx91 = getelementptr inbounds i32, i32* %151, i64 %idxprom90
  %152 = load i32, i32* %arrayidx91, align 4, !tbaa !30
  store i32 %152, i32* %cred, align 4, !tbaa !30
  %153 = load i32, i32* %cb, align 4, !tbaa !30
  %idxprom92 = sext i32 %153 to i64
  %154 = load i64*, i64** %Cbgtab, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds i64, i64* %154, i64 %idxprom92
  %155 = load i64, i64* %arrayidx93, align 8, !tbaa !37
  %156 = load i32, i32* %cr, align 4, !tbaa !30
  %idxprom94 = sext i32 %156 to i64
  %157 = load i64*, i64** %Crgtab, align 8, !tbaa !2
  %arrayidx95 = getelementptr inbounds i64, i64* %157, i64 %idxprom94
  %158 = load i64, i64* %arrayidx95, align 8, !tbaa !37
  %add96 = add nsw i64 %155, %158
  %shr97 = ashr i64 %add96, 16
  %conv98 = trunc i64 %shr97 to i32
  store i32 %conv98, i32* %cgreen, align 4, !tbaa !30
  %159 = load i32, i32* %cb, align 4, !tbaa !30
  %idxprom99 = sext i32 %159 to i64
  %160 = load i32*, i32** %Cbbtab, align 8, !tbaa !2
  %arrayidx100 = getelementptr inbounds i32, i32* %160, i64 %idxprom99
  %161 = load i32, i32* %arrayidx100, align 4, !tbaa !30
  store i32 %161, i32* %cblue, align 4, !tbaa !30
  %162 = load i8*, i8** %inptr00, align 8, !tbaa !2
  %163 = load i8, i8* %162, align 1, !tbaa !36
  %conv101 = zext i8 %163 to i32
  store i32 %conv101, i32* %y, align 4, !tbaa !30
  %164 = load i32, i32* %y, align 4, !tbaa !30
  %165 = load i32, i32* %cred, align 4, !tbaa !30
  %add102 = add nsw i32 %164, %165
  %idxprom103 = sext i32 %add102 to i64
  %166 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx104 = getelementptr inbounds i8, i8* %166, i64 %idxprom103
  %167 = load i8, i8* %arrayidx104, align 1, !tbaa !36
  %168 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx105 = getelementptr inbounds i8, i8* %168, i64 0
  store i8 %167, i8* %arrayidx105, align 1, !tbaa !36
  %169 = load i32, i32* %y, align 4, !tbaa !30
  %170 = load i32, i32* %cgreen, align 4, !tbaa !30
  %add106 = add nsw i32 %169, %170
  %idxprom107 = sext i32 %add106 to i64
  %171 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx108 = getelementptr inbounds i8, i8* %171, i64 %idxprom107
  %172 = load i8, i8* %arrayidx108, align 1, !tbaa !36
  %173 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds i8, i8* %173, i64 1
  store i8 %172, i8* %arrayidx109, align 1, !tbaa !36
  %174 = load i32, i32* %y, align 4, !tbaa !30
  %175 = load i32, i32* %cblue, align 4, !tbaa !30
  %add110 = add nsw i32 %174, %175
  %idxprom111 = sext i32 %add110 to i64
  %176 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx112 = getelementptr inbounds i8, i8* %176, i64 %idxprom111
  %177 = load i8, i8* %arrayidx112, align 1, !tbaa !36
  %178 = load i8*, i8** %outptr0, align 8, !tbaa !2
  %arrayidx113 = getelementptr inbounds i8, i8* %178, i64 2
  store i8 %177, i8* %arrayidx113, align 1, !tbaa !36
  %179 = load i8*, i8** %inptr01, align 8, !tbaa !2
  %180 = load i8, i8* %179, align 1, !tbaa !36
  %conv114 = zext i8 %180 to i32
  store i32 %conv114, i32* %y, align 4, !tbaa !30
  %181 = load i32, i32* %y, align 4, !tbaa !30
  %182 = load i32, i32* %cred, align 4, !tbaa !30
  %add115 = add nsw i32 %181, %182
  %idxprom116 = sext i32 %add115 to i64
  %183 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds i8, i8* %183, i64 %idxprom116
  %184 = load i8, i8* %arrayidx117, align 1, !tbaa !36
  %185 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx118 = getelementptr inbounds i8, i8* %185, i64 0
  store i8 %184, i8* %arrayidx118, align 1, !tbaa !36
  %186 = load i32, i32* %y, align 4, !tbaa !30
  %187 = load i32, i32* %cgreen, align 4, !tbaa !30
  %add119 = add nsw i32 %186, %187
  %idxprom120 = sext i32 %add119 to i64
  %188 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx121 = getelementptr inbounds i8, i8* %188, i64 %idxprom120
  %189 = load i8, i8* %arrayidx121, align 1, !tbaa !36
  %190 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds i8, i8* %190, i64 1
  store i8 %189, i8* %arrayidx122, align 1, !tbaa !36
  %191 = load i32, i32* %y, align 4, !tbaa !30
  %192 = load i32, i32* %cblue, align 4, !tbaa !30
  %add123 = add nsw i32 %191, %192
  %idxprom124 = sext i32 %add123 to i64
  %193 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx125 = getelementptr inbounds i8, i8* %193, i64 %idxprom124
  %194 = load i8, i8* %arrayidx125, align 1, !tbaa !36
  %195 = load i8*, i8** %outptr1, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds i8, i8* %195, i64 2
  store i8 %194, i8* %arrayidx126, align 1, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %196 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #3
  %197 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #3
  %198 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #3
  %199 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #3
  %200 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #3
  %201 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #3
  %202 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #3
  %203 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #3
  %204 = bitcast i8** %inptr01 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #3
  %205 = bitcast i8** %inptr00 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #3
  %206 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #3
  %207 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #3
  %208 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #3
  %209 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #3
  %210 = bitcast i32* %cblue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #3
  %211 = bitcast i32* %cgreen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #3
  %212 = bitcast i32* %cred to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #3
  %213 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #3
  %214 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @merged_1v_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4, !tbaa !30
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !2
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !30
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 81
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %4 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %upmethod = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i32 0, i32 1
  %5 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %upmethod, align 8, !tbaa !24
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %8 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  %9 = load i32, i32* %8, align 4, !tbaa !30
  %10 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %11 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %12 = load i32, i32* %11, align 4, !tbaa !30
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %10, i64 %idx.ext
  call void %5(%struct.jpeg_decompress_struct* %6, i8*** %7, i32 %9, i8** %add.ptr)
  %13 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !2
  %14 = load i32, i32* %13, align 4, !tbaa !30
  %inc = add i32 %14, 1
  store i32 %inc, i32* %13, align 4, !tbaa !30
  %15 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !2
  %16 = load i32, i32* %15, align 4, !tbaa !30
  %inc2 = add i32 %16, 1
  store i32 %inc2, i32* %15, align 4, !tbaa !30
  %17 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v1_merged_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %in_row_group_ctr, i8** %output_buf) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %y = alloca i32, align 4
  %cred = alloca i32, align 4
  %cgreen = alloca i32, align 4
  %cblue = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %Crrtab = alloca i32*, align 8
  %Cbbtab = alloca i32*, align 8
  %Crgtab = alloca i64*, align 8
  %Cbgtab = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !2
  store i32 %in_row_group_ctr, i32* %in_row_group_ctr.addr, align 4, !tbaa !30
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 81
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %cred to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %cgreen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %cblue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 61
  %17 = load i8*, i8** %sample_range_limit, align 8, !tbaa !31
  store i8* %17, i8** %range_limit, align 8, !tbaa !2
  %18 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %19, i32 0, i32 2
  %20 = load i32*, i32** %Cr_r_tab, align 8, !tbaa !32
  store i32* %20, i32** %Crrtab, align 8, !tbaa !2
  %21 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %22, i32 0, i32 3
  %23 = load i32*, i32** %Cb_b_tab, align 8, !tbaa !33
  store i32* %23, i32** %Cbbtab, align 8, !tbaa !2
  %24 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #3
  %25 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %25, i32 0, i32 4
  %26 = load i64*, i64** %Cr_g_tab, align 8, !tbaa !34
  store i64* %26, i64** %Crgtab, align 8, !tbaa !2
  %27 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #3
  %28 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %28, i32 0, i32 5
  %29 = load i64*, i64** %Cb_g_tab, align 8, !tbaa !35
  store i64* %29, i64** %Cbgtab, align 8, !tbaa !2
  %30 = load i32, i32* %in_row_group_ctr.addr, align 4, !tbaa !30
  %idxprom = zext i32 %30 to i64
  %31 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8**, i8*** %31, i64 0
  %32 = load i8**, i8*** %arrayidx, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8*, i8** %32, i64 %idxprom
  %33 = load i8*, i8** %arrayidx2, align 8, !tbaa !2
  store i8* %33, i8** %inptr0, align 8, !tbaa !2
  %34 = load i32, i32* %in_row_group_ctr.addr, align 4, !tbaa !30
  %idxprom3 = zext i32 %34 to i64
  %35 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i8**, i8*** %35, i64 1
  %36 = load i8**, i8*** %arrayidx4, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8*, i8** %36, i64 %idxprom3
  %37 = load i8*, i8** %arrayidx5, align 8, !tbaa !2
  store i8* %37, i8** %inptr1, align 8, !tbaa !2
  %38 = load i32, i32* %in_row_group_ctr.addr, align 4, !tbaa !30
  %idxprom6 = zext i32 %38 to i64
  %39 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8**, i8*** %39, i64 2
  %40 = load i8**, i8*** %arrayidx7, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %40, i64 %idxprom6
  %41 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  store i8* %41, i8** %inptr2, align 8, !tbaa !2
  %42 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8*, i8** %42, i64 0
  %43 = load i8*, i8** %arrayidx9, align 8, !tbaa !2
  store i8* %43, i8** %outptr, align 8, !tbaa !2
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 26
  %45 = load i32, i32* %output_width, align 4, !tbaa !19
  %shr = lshr i32 %45, 1
  store i32 %shr, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %46 = load i32, i32* %col, align 4, !tbaa !30
  %cmp = icmp ugt i32 %46, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %inptr1, align 8, !tbaa !2
  %48 = load i8, i8* %47, align 1, !tbaa !36
  %conv = zext i8 %48 to i32
  store i32 %conv, i32* %cb, align 4, !tbaa !30
  %49 = load i8*, i8** %inptr2, align 8, !tbaa !2
  %incdec.ptr10 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr10, i8** %inptr2, align 8, !tbaa !2
  %50 = load i8, i8* %49, align 1, !tbaa !36
  %conv11 = zext i8 %50 to i32
  store i32 %conv11, i32* %cr, align 4, !tbaa !30
  %51 = load i32, i32* %cr, align 4, !tbaa !30
  %idxprom12 = sext i32 %51 to i64
  %52 = load i32*, i32** %Crrtab, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i32, i32* %52, i64 %idxprom12
  %53 = load i32, i32* %arrayidx13, align 4, !tbaa !30
  store i32 %53, i32* %cred, align 4, !tbaa !30
  %54 = load i32, i32* %cb, align 4, !tbaa !30
  %idxprom14 = sext i32 %54 to i64
  %55 = load i64*, i64** %Cbgtab, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i64, i64* %55, i64 %idxprom14
  %56 = load i64, i64* %arrayidx15, align 8, !tbaa !37
  %57 = load i32, i32* %cr, align 4, !tbaa !30
  %idxprom16 = sext i32 %57 to i64
  %58 = load i64*, i64** %Crgtab, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds i64, i64* %58, i64 %idxprom16
  %59 = load i64, i64* %arrayidx17, align 8, !tbaa !37
  %add = add nsw i64 %56, %59
  %shr18 = ashr i64 %add, 16
  %conv19 = trunc i64 %shr18 to i32
  store i32 %conv19, i32* %cgreen, align 4, !tbaa !30
  %60 = load i32, i32* %cb, align 4, !tbaa !30
  %idxprom20 = sext i32 %60 to i64
  %61 = load i32*, i32** %Cbbtab, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i32, i32* %61, i64 %idxprom20
  %62 = load i32, i32* %arrayidx21, align 4, !tbaa !30
  store i32 %62, i32* %cblue, align 4, !tbaa !30
  %63 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %incdec.ptr22 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr22, i8** %inptr0, align 8, !tbaa !2
  %64 = load i8, i8* %63, align 1, !tbaa !36
  %conv23 = zext i8 %64 to i32
  store i32 %conv23, i32* %y, align 4, !tbaa !30
  %65 = load i32, i32* %y, align 4, !tbaa !30
  %66 = load i32, i32* %cred, align 4, !tbaa !30
  %add24 = add nsw i32 %65, %66
  %idxprom25 = sext i32 %add24 to i64
  %67 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i8, i8* %67, i64 %idxprom25
  %68 = load i8, i8* %arrayidx26, align 1, !tbaa !36
  %69 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %68, i8* %arrayidx27, align 1, !tbaa !36
  %70 = load i32, i32* %y, align 4, !tbaa !30
  %71 = load i32, i32* %cgreen, align 4, !tbaa !30
  %add28 = add nsw i32 %70, %71
  %idxprom29 = sext i32 %add28 to i64
  %72 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i8, i8* %72, i64 %idxprom29
  %73 = load i8, i8* %arrayidx30, align 1, !tbaa !36
  %74 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %73, i8* %arrayidx31, align 1, !tbaa !36
  %75 = load i32, i32* %y, align 4, !tbaa !30
  %76 = load i32, i32* %cblue, align 4, !tbaa !30
  %add32 = add nsw i32 %75, %76
  %idxprom33 = sext i32 %add32 to i64
  %77 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx34 = getelementptr inbounds i8, i8* %77, i64 %idxprom33
  %78 = load i8, i8* %arrayidx34, align 1, !tbaa !36
  %79 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i8, i8* %79, i64 2
  store i8 %78, i8* %arrayidx35, align 1, !tbaa !36
  %80 = load i8*, i8** %outptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %80, i64 3
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !2
  %81 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %incdec.ptr36 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr36, i8** %inptr0, align 8, !tbaa !2
  %82 = load i8, i8* %81, align 1, !tbaa !36
  %conv37 = zext i8 %82 to i32
  store i32 %conv37, i32* %y, align 4, !tbaa !30
  %83 = load i32, i32* %y, align 4, !tbaa !30
  %84 = load i32, i32* %cred, align 4, !tbaa !30
  %add38 = add nsw i32 %83, %84
  %idxprom39 = sext i32 %add38 to i64
  %85 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i8, i8* %85, i64 %idxprom39
  %86 = load i8, i8* %arrayidx40, align 1, !tbaa !36
  %87 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx41 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 %86, i8* %arrayidx41, align 1, !tbaa !36
  %88 = load i32, i32* %y, align 4, !tbaa !30
  %89 = load i32, i32* %cgreen, align 4, !tbaa !30
  %add42 = add nsw i32 %88, %89
  %idxprom43 = sext i32 %add42 to i64
  %90 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds i8, i8* %90, i64 %idxprom43
  %91 = load i8, i8* %arrayidx44, align 1, !tbaa !36
  %92 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx45 = getelementptr inbounds i8, i8* %92, i64 1
  store i8 %91, i8* %arrayidx45, align 1, !tbaa !36
  %93 = load i32, i32* %y, align 4, !tbaa !30
  %94 = load i32, i32* %cblue, align 4, !tbaa !30
  %add46 = add nsw i32 %93, %94
  %idxprom47 = sext i32 %add46 to i64
  %95 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds i8, i8* %95, i64 %idxprom47
  %96 = load i8, i8* %arrayidx48, align 1, !tbaa !36
  %97 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx49 = getelementptr inbounds i8, i8* %97, i64 2
  store i8 %96, i8* %arrayidx49, align 1, !tbaa !36
  %98 = load i8*, i8** %outptr, align 8, !tbaa !2
  %add.ptr50 = getelementptr inbounds i8, i8* %98, i64 3
  store i8* %add.ptr50, i8** %outptr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %99 = load i32, i32* %col, align 4, !tbaa !30
  %dec = add i32 %99, -1
  store i32 %dec, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %output_width51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 26
  %101 = load i32, i32* %output_width51, align 4, !tbaa !19
  %and = and i32 %101, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %102 = load i8*, i8** %inptr1, align 8, !tbaa !2
  %103 = load i8, i8* %102, align 1, !tbaa !36
  %conv52 = zext i8 %103 to i32
  store i32 %conv52, i32* %cb, align 4, !tbaa !30
  %104 = load i8*, i8** %inptr2, align 8, !tbaa !2
  %105 = load i8, i8* %104, align 1, !tbaa !36
  %conv53 = zext i8 %105 to i32
  store i32 %conv53, i32* %cr, align 4, !tbaa !30
  %106 = load i32, i32* %cr, align 4, !tbaa !30
  %idxprom54 = sext i32 %106 to i64
  %107 = load i32*, i32** %Crrtab, align 8, !tbaa !2
  %arrayidx55 = getelementptr inbounds i32, i32* %107, i64 %idxprom54
  %108 = load i32, i32* %arrayidx55, align 4, !tbaa !30
  store i32 %108, i32* %cred, align 4, !tbaa !30
  %109 = load i32, i32* %cb, align 4, !tbaa !30
  %idxprom56 = sext i32 %109 to i64
  %110 = load i64*, i64** %Cbgtab, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds i64, i64* %110, i64 %idxprom56
  %111 = load i64, i64* %arrayidx57, align 8, !tbaa !37
  %112 = load i32, i32* %cr, align 4, !tbaa !30
  %idxprom58 = sext i32 %112 to i64
  %113 = load i64*, i64** %Crgtab, align 8, !tbaa !2
  %arrayidx59 = getelementptr inbounds i64, i64* %113, i64 %idxprom58
  %114 = load i64, i64* %arrayidx59, align 8, !tbaa !37
  %add60 = add nsw i64 %111, %114
  %shr61 = ashr i64 %add60, 16
  %conv62 = trunc i64 %shr61 to i32
  store i32 %conv62, i32* %cgreen, align 4, !tbaa !30
  %115 = load i32, i32* %cb, align 4, !tbaa !30
  %idxprom63 = sext i32 %115 to i64
  %116 = load i32*, i32** %Cbbtab, align 8, !tbaa !2
  %arrayidx64 = getelementptr inbounds i32, i32* %116, i64 %idxprom63
  %117 = load i32, i32* %arrayidx64, align 4, !tbaa !30
  store i32 %117, i32* %cblue, align 4, !tbaa !30
  %118 = load i8*, i8** %inptr0, align 8, !tbaa !2
  %119 = load i8, i8* %118, align 1, !tbaa !36
  %conv65 = zext i8 %119 to i32
  store i32 %conv65, i32* %y, align 4, !tbaa !30
  %120 = load i32, i32* %y, align 4, !tbaa !30
  %121 = load i32, i32* %cred, align 4, !tbaa !30
  %add66 = add nsw i32 %120, %121
  %idxprom67 = sext i32 %add66 to i64
  %122 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx68 = getelementptr inbounds i8, i8* %122, i64 %idxprom67
  %123 = load i8, i8* %arrayidx68, align 1, !tbaa !36
  %124 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx69 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 %123, i8* %arrayidx69, align 1, !tbaa !36
  %125 = load i32, i32* %y, align 4, !tbaa !30
  %126 = load i32, i32* %cgreen, align 4, !tbaa !30
  %add70 = add nsw i32 %125, %126
  %idxprom71 = sext i32 %add70 to i64
  %127 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds i8, i8* %127, i64 %idxprom71
  %128 = load i8, i8* %arrayidx72, align 1, !tbaa !36
  %129 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds i8, i8* %129, i64 1
  store i8 %128, i8* %arrayidx73, align 1, !tbaa !36
  %130 = load i32, i32* %y, align 4, !tbaa !30
  %131 = load i32, i32* %cblue, align 4, !tbaa !30
  %add74 = add nsw i32 %130, %131
  %idxprom75 = sext i32 %add74 to i64
  %132 = load i8*, i8** %range_limit, align 8, !tbaa !2
  %arrayidx76 = getelementptr inbounds i8, i8* %132, i64 %idxprom75
  %133 = load i8, i8* %arrayidx76, align 1, !tbaa !36
  %134 = load i8*, i8** %outptr, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds i8, i8* %134, i64 2
  store i8 %133, i8* %arrayidx77, align 1, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %135 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #3
  %136 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #3
  %137 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #3
  %138 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #3
  %139 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #3
  %140 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #3
  %141 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #3
  %142 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #3
  %143 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #3
  %144 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #3
  %145 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #3
  %146 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #3
  %147 = bitcast i32* %cblue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #3
  %148 = bitcast i32* %cgreen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #3
  %149 = bitcast i32* %cred to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #3
  %150 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #3
  %151 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 81
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i64* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %call = call i8* %8(%struct.jpeg_common_struct* %10, i32 1, i64 1024)
  %11 = bitcast i8* %call to i32*
  %12 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %12, i32 0, i32 2
  store i32* %11, i32** %Cr_r_tab, align 8, !tbaa !32
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem2, align 8, !tbaa !6
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i32 0, i32 0
  %15 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small3, align 8, !tbaa !11
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  %call4 = call i8* %15(%struct.jpeg_common_struct* %17, i32 1, i64 1024)
  %18 = bitcast i8* %call4 to i32*
  %19 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %19, i32 0, i32 3
  store i32* %18, i32** %Cb_b_tab, align 8, !tbaa !33
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8, !tbaa !6
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 0
  %22 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small6, align 8, !tbaa !11
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  %call7 = call i8* %22(%struct.jpeg_common_struct* %24, i32 1, i64 2048)
  %25 = bitcast i8* %call7 to i64*
  %26 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %26, i32 0, i32 4
  store i64* %25, i64** %Cr_g_tab, align 8, !tbaa !34
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem8, align 8, !tbaa !6
  %alloc_small9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i32 0, i32 0
  %29 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small9, align 8, !tbaa !11
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  %call10 = call i8* %29(%struct.jpeg_common_struct* %31, i32 1, i64 2048)
  %32 = bitcast i8* %call10 to i64*
  %33 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %33, i32 0, i32 5
  store i64* %32, i64** %Cb_g_tab, align 8, !tbaa !35
  store i32 0, i32* %i, align 4, !tbaa !30
  store i64 -128, i64* %x, align 8, !tbaa !37
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %34 = load i32, i32* %i, align 4, !tbaa !30
  %cmp = icmp sle i32 %34, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i64, i64* %x, align 8, !tbaa !37
  %mul = mul nsw i64 91881, %35
  %add = add nsw i64 %mul, 32768
  %shr = ashr i64 %add, 16
  %conv = trunc i64 %shr to i32
  %36 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cr_r_tab11 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %37, i32 0, i32 2
  %38 = load i32*, i32** %Cr_r_tab11, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds i32, i32* %38, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !30
  %39 = load i64, i64* %x, align 8, !tbaa !37
  %mul12 = mul nsw i64 116130, %39
  %add13 = add nsw i64 %mul12, 32768
  %shr14 = ashr i64 %add13, 16
  %conv15 = trunc i64 %shr14 to i32
  %40 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom16 = sext i32 %40 to i64
  %41 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cb_b_tab17 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %41, i32 0, i32 3
  %42 = load i32*, i32** %Cb_b_tab17, align 8, !tbaa !33
  %arrayidx18 = getelementptr inbounds i32, i32* %42, i64 %idxprom16
  store i32 %conv15, i32* %arrayidx18, align 4, !tbaa !30
  %43 = load i64, i64* %x, align 8, !tbaa !37
  %mul19 = mul nsw i64 -46802, %43
  %44 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom20 = sext i32 %44 to i64
  %45 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cr_g_tab21 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %45, i32 0, i32 4
  %46 = load i64*, i64** %Cr_g_tab21, align 8, !tbaa !34
  %arrayidx22 = getelementptr inbounds i64, i64* %46, i64 %idxprom20
  store i64 %mul19, i64* %arrayidx22, align 8, !tbaa !37
  %47 = load i64, i64* %x, align 8, !tbaa !37
  %mul23 = mul nsw i64 -22554, %47
  %add24 = add nsw i64 %mul23, 32768
  %48 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom25 = sext i32 %48 to i64
  %49 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !2
  %Cb_g_tab26 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %49, i32 0, i32 5
  %50 = load i64*, i64** %Cb_g_tab26, align 8, !tbaa !35
  %arrayidx27 = getelementptr inbounds i64, i64* %50, i64 %idxprom25
  store i64 %add24, i64* %arrayidx27, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4, !tbaa !30
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !30
  %52 = load i64, i64* %x, align 8, !tbaa !37
  %inc28 = add nsw i64 %52, 1
  store i64 %inc28, i64* %x, align 8, !tbaa !37
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = bitcast i64* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #3
  %55 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
!6 = !{!7, !3, i64 8}
!7 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !4, i64 56, !8, i64 60, !8, i64 64, !9, i64 72, !8, i64 80, !8, i64 84, !4, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !4, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !3, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !8, i64 288, !3, i64 296, !8, i64 304, !8, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !8, i64 360, !8, i64 364, !4, i64 368, !10, i64 370, !10, i64 372, !8, i64 376, !4, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !3, i64 408, !8, i64 416, !4, i64 424, !8, i64 456, !8, i64 460, !8, i64 464, !4, i64 468, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!12, !3, i64 0}
!12 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !13, i64 88}
!13 = !{!"long", !4, i64 0}
!14 = !{!7, !3, i64 592}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !8, i64 72, !8, i64 76, !8, i64 80}
!17 = !{!"jpeg_upsampler", !3, i64 0, !3, i64 8, !8, i64 16}
!18 = !{!16, !8, i64 16}
!19 = !{!7, !8, i64 128}
!20 = !{!7, !8, i64 136}
!21 = !{!16, !8, i64 76}
!22 = !{!7, !8, i64 392}
!23 = !{!16, !3, i64 8}
!24 = !{!16, !3, i64 24}
!25 = !{!12, !3, i64 8}
!26 = !{!16, !3, i64 64}
!27 = !{!16, !8, i64 72}
!28 = !{!7, !8, i64 132}
!29 = !{!16, !8, i64 80}
!30 = !{!8, !8, i64 0}
!31 = !{!7, !3, i64 408}
!32 = !{!16, !3, i64 32}
!33 = !{!16, !3, i64 40}
!34 = !{!16, !3, i64 48}
!35 = !{!16, !3, i64 56}
!36 = !{!4, !4, i64 0}
!37 = !{!13, !13, i64 0}
