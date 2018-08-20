; ModuleID = 'jcphuff.c'
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
%struct.phuff_entropy_encoder = type { %struct.jpeg_entropy_encoder, i32, i8*, i64, i64, i32, %struct.jpeg_compress_struct*, [4 x i32], i32, i32, i32, i8*, i32, i32, [4 x %struct.c_derived_tbl*], [4 x i64*] }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jinit_phuff_encoder(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = bitcast %struct.jpeg_compress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 184)
  %7 = bitcast i8* %call to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %7, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %8 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %9 = bitcast %struct.phuff_entropy_encoder* %8 to %struct.jpeg_entropy_encoder*
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 59
  store %struct.jpeg_entropy_encoder* %9, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !14
  %11 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %11, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_phuff, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !15
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !18
  %cmp = icmp slt i32 %12, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %14, i32 0, i32 14
  %arrayidx = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom
  store %struct.c_derived_tbl* null, %struct.c_derived_tbl** %arrayidx, align 8, !tbaa !2
  %15 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom2 = sext i32 %15 to i64
  %16 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %16, i32 0, i32 15
  %arrayidx3 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs, i32 0, i64 %idxprom2
  store i64* null, i64** %arrayidx3, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %18, i32 0, i32 11
  store i8* null, i8** %bit_buffer, align 8, !tbaa !19
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #6
  %20 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #6
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_phuff(%struct.jpeg_compress_struct* %cinfo, i32 %gather_statistics) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %gather_statistics.addr = alloca i32, align 4
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %is_DC_band = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %gather_statistics, i32* %gather_statistics.addr, align 4, !tbaa !18
  %0 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %3, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %is_DC_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #6
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %9 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %cinfo2 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %9, i32 0, i32 6
  store %struct.jpeg_compress_struct* %8, %struct.jpeg_compress_struct** %cinfo2, align 8, !tbaa !20
  %10 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !18
  %11 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %gather_statistics3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %11, i32 0, i32 1
  store i32 %10, i32* %gather_statistics3, align 4, !tbaa !21
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 47
  %13 = load i32, i32* %Ss, align 4, !tbaa !22
  %cmp = icmp eq i32 %13, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_DC_band, align 4, !tbaa !18
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 49
  %15 = load i32, i32* %Ah, align 4, !tbaa !23
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %is_DC_band, align 4, !tbaa !18
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %17, i32 0, i32 0
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_DC_first, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub7 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %18, i32 0, i32 0
  %encode_mcu8 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub7, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_AC_first, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu8, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.23

if.else.9:                                        ; preds = %entry
  %19 = load i32, i32* %is_DC_band, align 4, !tbaa !18
  %tobool10 = icmp ne i32 %19, 0
  br i1 %tobool10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else.9
  %20 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub12 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %20, i32 0, i32 0
  %encode_mcu13 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub12, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_DC_refine, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu13, align 8, !tbaa !24
  br label %if.end.22

if.else.14:                                       ; preds = %if.else.9
  %21 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub15 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %21, i32 0, i32 0
  %encode_mcu16 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub15, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_AC_refine, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu16, align 8, !tbaa !24
  %22 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %22, i32 0, i32 11
  %23 = load i8*, i8** %bit_buffer, align 8, !tbaa !19
  %cmp17 = icmp eq i8* %23, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else.14
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 1
  %25 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %25, i32 0, i32 0
  %26 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %28 = bitcast %struct.jpeg_compress_struct* %27 to %struct.jpeg_common_struct*
  %call = call i8* %26(%struct.jpeg_common_struct* %28, i32 1, i64 1000)
  %29 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %bit_buffer20 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %29, i32 0, i32 11
  store i8* %call, i8** %bit_buffer20, align 8, !tbaa !19
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.11
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %30 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !18
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.end.23
  %31 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub26 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %31, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub26, i32 0, i32 2
  %finish_pass27 = bitcast {}** %finish_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @finish_pass_gather_phuff, void (%struct.jpeg_compress_struct*)** %finish_pass27, align 8, !tbaa !25
  br label %if.end.32

if.else.28:                                       ; preds = %if.end.23
  %32 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub29 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %32, i32 0, i32 0
  %finish_pass30 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub29, i32 0, i32 2
  %finish_pass31 = bitcast {}** %finish_pass30 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @finish_pass_phuff, void (%struct.jpeg_compress_struct*)** %finish_pass31, align 8, !tbaa !25
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.then.25
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %33 = load i32, i32* %ci, align 4, !tbaa !18
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 41
  %35 = load i32, i32* %comps_in_scan, align 4, !tbaa !26
  %cmp33 = icmp slt i32 %33, %35
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %38, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %39 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom35 = sext i32 %39 to i64
  %40 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %last_dc_val = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %40, i32 0, i32 7
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom35
  store i32 0, i32* %arrayidx36, align 4, !tbaa !18
  %41 = load i32, i32* %is_DC_band, align 4, !tbaa !18
  %tobool37 = icmp ne i32 %41, 0
  br i1 %tobool37, label %if.then.38, label %if.else.59

if.then.38:                                       ; preds = %for.body
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 49
  %43 = load i32, i32* %Ah39, align 4, !tbaa !23
  %cmp40 = icmp ne i32 %43, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.38
  br label %for.inc

if.end.43:                                        ; preds = %if.then.38
  %44 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %44, i32 0, i32 5
  %45 = load i32, i32* %dc_tbl_no, align 4, !tbaa !27
  store i32 %45, i32* %tbl, align 4, !tbaa !18
  %46 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp44 = icmp slt i32 %46, 0
  br i1 %cmp44, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %47 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp46 = icmp sge i32 %47, 4
  br i1 %cmp46, label %if.then.54, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %48 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom49 = sext i32 %48 to i64
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 16
  %arrayidx50 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom49
  %50 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx50, align 8, !tbaa !2
  %cmp51 = icmp eq %struct.JHUFF_TBL* %50, null
  br i1 %cmp51, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %lor.lhs.false.48
  %51 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !18
  %tobool53 = icmp ne i32 %51, 0
  br i1 %tobool53, label %if.end.58, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end.43
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4, !tbaa !30
  %54 = load i32, i32* %tbl, align 4, !tbaa !18
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8, !tbaa !29
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %54, i32* %arrayidx56, align 4, !tbaa !18
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !29
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 0
  %59 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !32
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %61 = bitcast %struct.jpeg_compress_struct* %60 to %struct.jpeg_common_struct*
  call void %59(%struct.jpeg_common_struct* %61)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %land.lhs.true, %lor.lhs.false.48
  br label %if.end.83

if.else.59:                                       ; preds = %for.body
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i32 0, i32 6
  %63 = load i32, i32* %ac_tbl_no, align 4, !tbaa !33
  store i32 %63, i32* %tbl, align 4, !tbaa !18
  %64 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_tbl_no60 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %64, i32 0, i32 8
  store i32 %63, i32* %ac_tbl_no60, align 4, !tbaa !34
  %65 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp61 = icmp slt i32 %65, 0
  br i1 %cmp61, label %if.then.73, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.else.59
  %66 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp64 = icmp sge i32 %66, 4
  br i1 %cmp64, label %if.then.73, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.63
  %67 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom67 = sext i32 %67 to i64
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 17
  %arrayidx68 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom67
  %69 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx68, align 8, !tbaa !2
  %cmp69 = icmp eq %struct.JHUFF_TBL* %69, null
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.82

land.lhs.true.71:                                 ; preds = %lor.lhs.false.66
  %70 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !18
  %tobool72 = icmp ne i32 %70, 0
  br i1 %tobool72, label %if.end.82, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.71, %lor.lhs.false.63, %if.else.59
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err74 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8, !tbaa !29
  %msg_code75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 5
  store i32 49, i32* %msg_code75, align 4, !tbaa !30
  %73 = load i32, i32* %tbl, align 4, !tbaa !18
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err76, align 8, !tbaa !29
  %msg_parm77 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 6
  %i78 = bitcast %union.anon* %msg_parm77 to [8 x i32]*
  %arrayidx79 = getelementptr inbounds [8 x i32], [8 x i32]* %i78, i32 0, i64 0
  store i32 %73, i32* %arrayidx79, align 4, !tbaa !18
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err80, align 8, !tbaa !29
  %error_exit81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 0
  %78 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit81, align 8, !tbaa !32
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %80 = bitcast %struct.jpeg_compress_struct* %79 to %struct.jpeg_common_struct*
  call void %78(%struct.jpeg_common_struct* %80)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.73, %land.lhs.true.71, %lor.lhs.false.66
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.58
  %81 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !18
  %tobool84 = icmp ne i32 %81, 0
  br i1 %tobool84, label %if.then.85, label %if.else.105

if.then.85:                                       ; preds = %if.end.83
  %82 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom86 = sext i32 %82 to i64
  %83 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %83, i32 0, i32 15
  %arrayidx87 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs, i32 0, i64 %idxprom86
  %84 = load i64*, i64** %arrayidx87, align 8, !tbaa !2
  %cmp88 = icmp eq i64* %84, null
  br i1 %cmp88, label %if.then.90, label %if.end.97

if.then.90:                                       ; preds = %if.then.85
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 1
  %86 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem91, align 8, !tbaa !6
  %alloc_small92 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %86, i32 0, i32 0
  %87 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small92, align 8, !tbaa !11
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %89 = bitcast %struct.jpeg_compress_struct* %88 to %struct.jpeg_common_struct*
  %call93 = call i8* %87(%struct.jpeg_common_struct* %89, i32 1, i64 2056)
  %90 = bitcast i8* %call93 to i64*
  %91 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom94 = sext i32 %91 to i64
  %92 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %count_ptrs95 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %92, i32 0, i32 15
  %arrayidx96 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs95, i32 0, i64 %idxprom94
  store i64* %90, i64** %arrayidx96, align 8, !tbaa !2
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.90, %if.then.85
  %93 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom98 = sext i32 %93 to i64
  %94 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %count_ptrs99 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %94, i32 0, i32 15
  %arrayidx100 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs99, i32 0, i64 %idxprom98
  %95 = load i64*, i64** %arrayidx100, align 8, !tbaa !2
  %96 = bitcast i64* %95 to i8*
  %97 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom101 = sext i32 %97 to i64
  %98 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %count_ptrs102 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %98, i32 0, i32 15
  %arrayidx103 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs102, i32 0, i64 %idxprom101
  %99 = load i64*, i64** %arrayidx103, align 8, !tbaa !2
  %100 = bitcast i64* %99 to i8*
  %101 = call i64 @llvm.objectsize.i64.p0i8(i8* %100, i1 false)
  %call104 = call i8* @__memset_chk(i8* %96, i32 0, i64 2056, i64 %101) #6
  br label %if.end.121

if.else.105:                                      ; preds = %if.end.83
  %102 = load i32, i32* %is_DC_band, align 4, !tbaa !18
  %tobool106 = icmp ne i32 %102, 0
  br i1 %tobool106, label %if.then.107, label %if.else.113

if.then.107:                                      ; preds = %if.else.105
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %104 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom108 = sext i32 %104 to i64
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 16
  %arrayidx110 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs109, i32 0, i64 %idxprom108
  %106 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx110, align 8, !tbaa !2
  %107 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom111 = sext i32 %107 to i64
  %108 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %108, i32 0, i32 14
  %arrayidx112 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom111
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %103, %struct.JHUFF_TBL* %106, %struct.c_derived_tbl** %arrayidx112)
  br label %if.end.120

if.else.113:                                      ; preds = %if.else.105
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %110 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom114 = sext i32 %110 to i64
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs115 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %111, i32 0, i32 17
  %arrayidx116 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs115, i32 0, i64 %idxprom114
  %112 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx116, align 8, !tbaa !2
  %113 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom117 = sext i32 %113 to i64
  %114 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %derived_tbls118 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %114, i32 0, i32 14
  %arrayidx119 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %derived_tbls118, i32 0, i64 %idxprom117
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %109, %struct.JHUFF_TBL* %112, %struct.c_derived_tbl** %arrayidx119)
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.113, %if.then.107
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.97
  br label %for.inc

for.inc:                                          ; preds = %if.end.121, %if.then.42
  %115 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %116 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %116, i32 0, i32 9
  store i32 0, i32* %EOBRUN, align 4, !tbaa !35
  %117 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %117, i32 0, i32 10
  store i32 0, i32* %BE, align 4, !tbaa !36
  %118 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %118, i32 0, i32 4
  store i64 0, i64* %put_buffer, align 8, !tbaa !37
  %119 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %119, i32 0, i32 5
  store i32 0, i32* %put_bits, align 4, !tbaa !38
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 29
  %121 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %122 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %122, i32 0, i32 12
  store i32 %121, i32* %restarts_to_go, align 4, !tbaa !40
  %123 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %123, i32 0, i32 13
  store i32 0, i32* %next_restart_num, align 4, !tbaa !41
  %124 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #6
  %125 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #6
  %126 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #6
  %127 = bitcast i32* %is_DC_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #6
  %128 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #6
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_DC_first(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %3, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #6
  %8 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #6
  %9 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #6
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 50
  %11 = load i32, i32* %Al2, align 4, !tbaa !42
  store i32 %11, i32* %Al, align 4, !tbaa !18
  %12 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #6
  %13 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #6
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 5
  %15 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !43
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %15, i32 0, i32 0
  %16 = load i8*, i8** %next_output_byte, align 8, !tbaa !44
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %17, i32 0, i32 2
  store i8* %16, i8** %next_output_byte3, align 8, !tbaa !46
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 5
  %19 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest4, align 8, !tbaa !43
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %19, i32 0, i32 1
  %20 = load i64, i64* %free_in_buffer, align 8, !tbaa !47
  %21 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %21, i32 0, i32 3
  store i64 %20, i64* %free_in_buffer5, align 8, !tbaa !48
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 29
  %23 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %24 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %24, i32 0, i32 12
  %25 = load i32, i32* %restarts_to_go, align 4, !tbaa !40
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %26 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %27 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %27, i32 0, i32 13
  %28 = load i32, i32* %next_restart_num, align 4, !tbaa !41
  call void @emit_restart(%struct.phuff_entropy_encoder* %26, i32 %28)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %29 = load i32, i32* %blkn, align 4, !tbaa !18
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 45
  %31 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !49
  %cmp8 = icmp slt i32 %29, %31
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %32 to i64
  %33 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %33, i64 %idxprom
  %34 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  store [64 x i16]* %34, [64 x i16]** %block, align 8, !tbaa !2
  %35 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom9 = sext i32 %35 to i64
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 46
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom9
  %37 = load i32, i32* %arrayidx10, align 4, !tbaa !18
  store i32 %37, i32* %ci, align 4, !tbaa !18
  %38 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom11 = sext i32 %38 to i64
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 42
  %arrayidx12 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom11
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx12, align 8, !tbaa !2
  store %struct.jpeg_component_info* %40, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %41 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds [64 x i16], [64 x i16]* %41, i32 0, i64 0
  %42 = load i16, i16* %arrayidx13, align 2, !tbaa !50
  %conv = sext i16 %42 to i32
  %43 = load i32, i32* %Al, align 4, !tbaa !18
  %shr = ashr i32 %conv, %43
  store i32 %shr, i32* %temp2, align 4, !tbaa !18
  %44 = load i32, i32* %temp2, align 4, !tbaa !18
  %45 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom14 = sext i32 %45 to i64
  %46 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %last_dc_val = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %46, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom14
  %47 = load i32, i32* %arrayidx15, align 4, !tbaa !18
  %sub = sub nsw i32 %44, %47
  store i32 %sub, i32* %temp, align 4, !tbaa !18
  %48 = load i32, i32* %temp2, align 4, !tbaa !18
  %49 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom16 = sext i32 %49 to i64
  %50 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %last_dc_val17 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %50, i32 0, i32 7
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val17, i32 0, i64 %idxprom16
  store i32 %48, i32* %arrayidx18, align 4, !tbaa !18
  %51 = load i32, i32* %temp, align 4, !tbaa !18
  store i32 %51, i32* %temp2, align 4, !tbaa !18
  %52 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp19 = icmp slt i32 %52, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.body
  %53 = load i32, i32* %temp, align 4, !tbaa !18
  %sub22 = sub nsw i32 0, %53
  store i32 %sub22, i32* %temp, align 4, !tbaa !18
  %54 = load i32, i32* %temp2, align 4, !tbaa !18
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %temp2, align 4, !tbaa !18
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.body
  store i32 0, i32* %nbits, align 4, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.23
  %55 = load i32, i32* %temp, align 4, !tbaa !18
  %tobool24 = icmp ne i32 %55, 0
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %nbits, align 4, !tbaa !18
  %57 = load i32, i32* %temp, align 4, !tbaa !18
  %shr25 = ashr i32 %57, 1
  store i32 %shr25, i32* %temp, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %58 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i32 0, i32 5
  %60 = load i32, i32* %dc_tbl_no, align 4, !tbaa !27
  %61 = load i32, i32* %nbits, align 4, !tbaa !18
  call void @emit_symbol(%struct.phuff_entropy_encoder* %58, i32 %60, i32 %61)
  %62 = load i32, i32* %nbits, align 4, !tbaa !18
  %tobool26 = icmp ne i32 %62, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.end
  %63 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %64 = load i32, i32* %temp2, align 4, !tbaa !18
  %65 = load i32, i32* %nbits, align 4, !tbaa !18
  call void @emit_bits(%struct.phuff_entropy_encoder* %63, i32 %64, i32 %65)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %66 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc29 = add nsw i32 %66, 1
  store i32 %inc29, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte30 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %67, i32 0, i32 2
  %68 = load i8*, i8** %next_output_byte30, align 8, !tbaa !46
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 5
  %70 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest31, align 8, !tbaa !43
  %next_output_byte32 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %70, i32 0, i32 0
  store i8* %68, i8** %next_output_byte32, align 8, !tbaa !44
  %71 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer33 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %71, i32 0, i32 3
  %72 = load i64, i64* %free_in_buffer33, align 8, !tbaa !48
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %73, i32 0, i32 5
  %74 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest34, align 8, !tbaa !43
  %free_in_buffer35 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %74, i32 0, i32 1
  store i64 %72, i64* %free_in_buffer35, align 8, !tbaa !47
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 29
  %76 = load i32, i32* %restart_interval36, align 4, !tbaa !39
  %tobool37 = icmp ne i32 %76, 0
  br i1 %tobool37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %for.end
  %77 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go39 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %77, i32 0, i32 12
  %78 = load i32, i32* %restarts_to_go39, align 4, !tbaa !40
  %cmp40 = icmp eq i32 %78, 0
  br i1 %cmp40, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %if.then.38
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 29
  %80 = load i32, i32* %restart_interval43, align 4, !tbaa !39
  %81 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go44 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %81, i32 0, i32 12
  store i32 %80, i32* %restarts_to_go44, align 4, !tbaa !40
  %82 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num45 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %82, i32 0, i32 13
  %83 = load i32, i32* %next_restart_num45, align 4, !tbaa !41
  %inc46 = add nsw i32 %83, 1
  store i32 %inc46, i32* %next_restart_num45, align 4, !tbaa !41
  %84 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num47 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %84, i32 0, i32 13
  %85 = load i32, i32* %next_restart_num47, align 4, !tbaa !41
  %and = and i32 %85, 7
  store i32 %and, i32* %next_restart_num47, align 4, !tbaa !41
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %if.then.38
  %86 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go49 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %86, i32 0, i32 12
  %87 = load i32, i32* %restarts_to_go49, align 4, !tbaa !40
  %dec50 = add i32 %87, -1
  store i32 %dec50, i32* %restarts_to_go49, align 4, !tbaa !40
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.48, %for.end
  %88 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #6
  %89 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #6
  %90 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #6
  %91 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #6
  %92 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #6
  %93 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #6
  %94 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #6
  %95 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #6
  %96 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #6
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_AC_first(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %3, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #6
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #6
  %9 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #6
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 48
  %11 = load i32, i32* %Se2, align 4, !tbaa !51
  store i32 %11, i32* %Se, align 4, !tbaa !18
  %12 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #6
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 50
  %14 = load i32, i32* %Al3, align 4, !tbaa !42
  store i32 %14, i32* %Al, align 4, !tbaa !18
  %15 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #6
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 5
  %17 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !43
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %17, i32 0, i32 0
  %18 = load i8*, i8** %next_output_byte, align 8, !tbaa !44
  %19 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %19, i32 0, i32 2
  store i8* %18, i8** %next_output_byte4, align 8, !tbaa !46
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %21 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest5, align 8, !tbaa !43
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %21, i32 0, i32 1
  %22 = load i64, i64* %free_in_buffer, align 8, !tbaa !47
  %23 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer6 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %23, i32 0, i32 3
  store i64 %22, i64* %free_in_buffer6, align 8, !tbaa !48
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 29
  %25 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %26 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %26, i32 0, i32 12
  %27 = load i32, i32* %restarts_to_go, align 4, !tbaa !40
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %28 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %29 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %29, i32 0, i32 13
  %30 = load i32, i32* %next_restart_num, align 4, !tbaa !41
  call void @emit_restart(%struct.phuff_entropy_encoder* %28, i32 %30)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %31 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %31, i64 0
  %32 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  store [64 x i16]* %32, [64 x i16]** %block, align 8, !tbaa !2
  store i32 0, i32* %r, align 4, !tbaa !18
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 47
  %34 = load i32, i32* %Ss, align 4, !tbaa !22
  store i32 %34, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %35 = load i32, i32* %k, align 4, !tbaa !18
  %36 = load i32, i32* %Se, align 4, !tbaa !18
  %cmp9 = icmp sle i32 %35, %36
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom = sext i32 %37 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom
  %38 = load i32, i32* %arrayidx10, align 4, !tbaa !18
  %idxprom11 = sext i32 %38 to i64
  %39 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %39, i32 0, i64 %idxprom11
  %40 = load i16, i16* %arrayidx12, align 2, !tbaa !50
  %conv = sext i16 %40 to i32
  store i32 %conv, i32* %temp, align 4, !tbaa !18
  %cmp13 = icmp eq i32 %conv, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  %41 = load i32, i32* %r, align 4, !tbaa !18
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %r, align 4, !tbaa !18
  br label %for.inc

if.end.16:                                        ; preds = %for.body
  %42 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp17 = icmp slt i32 %42, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  %43 = load i32, i32* %temp, align 4, !tbaa !18
  %sub = sub nsw i32 0, %43
  store i32 %sub, i32* %temp, align 4, !tbaa !18
  %44 = load i32, i32* %Al, align 4, !tbaa !18
  %45 = load i32, i32* %temp, align 4, !tbaa !18
  %shr = ashr i32 %45, %44
  store i32 %shr, i32* %temp, align 4, !tbaa !18
  %46 = load i32, i32* %temp, align 4, !tbaa !18
  %neg = xor i32 %46, -1
  store i32 %neg, i32* %temp2, align 4, !tbaa !18
  br label %if.end.21

if.else:                                          ; preds = %if.end.16
  %47 = load i32, i32* %Al, align 4, !tbaa !18
  %48 = load i32, i32* %temp, align 4, !tbaa !18
  %shr20 = ashr i32 %48, %47
  store i32 %shr20, i32* %temp, align 4, !tbaa !18
  %49 = load i32, i32* %temp, align 4, !tbaa !18
  store i32 %49, i32* %temp2, align 4, !tbaa !18
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.19
  %50 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp22 = icmp eq i32 %50, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %51 = load i32, i32* %r, align 4, !tbaa !18
  %inc25 = add nsw i32 %51, 1
  store i32 %inc25, i32* %r, align 4, !tbaa !18
  br label %for.inc

if.end.26:                                        ; preds = %if.end.21
  %52 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %52, i32 0, i32 9
  %53 = load i32, i32* %EOBRUN, align 4, !tbaa !35
  %cmp27 = icmp ugt i32 %53, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %54 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %54)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.30
  %55 = load i32, i32* %r, align 4, !tbaa !18
  %cmp31 = icmp sgt i32 %55, 15
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %57 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %57, i32 0, i32 8
  %58 = load i32, i32* %ac_tbl_no, align 4, !tbaa !34
  call void @emit_symbol(%struct.phuff_entropy_encoder* %56, i32 %58, i32 240)
  %59 = load i32, i32* %r, align 4, !tbaa !18
  %sub33 = sub nsw i32 %59, 16
  store i32 %sub33, i32* %r, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %nbits, align 4, !tbaa !18
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.37, %while.end
  %60 = load i32, i32* %temp, align 4, !tbaa !18
  %shr35 = ashr i32 %60, 1
  store i32 %shr35, i32* %temp, align 4, !tbaa !18
  %tobool36 = icmp ne i32 %shr35, 0
  br i1 %tobool36, label %while.body.37, label %while.end.39

while.body.37:                                    ; preds = %while.cond.34
  %61 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc38 = add nsw i32 %61, 1
  store i32 %inc38, i32* %nbits, align 4, !tbaa !18
  br label %while.cond.34

while.end.39:                                     ; preds = %while.cond.34
  %62 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %63 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_tbl_no40 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %63, i32 0, i32 8
  %64 = load i32, i32* %ac_tbl_no40, align 4, !tbaa !34
  %65 = load i32, i32* %r, align 4, !tbaa !18
  %shl = shl i32 %65, 4
  %66 = load i32, i32* %nbits, align 4, !tbaa !18
  %add = add nsw i32 %shl, %66
  call void @emit_symbol(%struct.phuff_entropy_encoder* %62, i32 %64, i32 %add)
  %67 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %68 = load i32, i32* %temp2, align 4, !tbaa !18
  %69 = load i32, i32* %nbits, align 4, !tbaa !18
  call void @emit_bits(%struct.phuff_entropy_encoder* %67, i32 %68, i32 %69)
  store i32 0, i32* %r, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %while.end.39, %if.then.24, %if.then.15
  %70 = load i32, i32* %k, align 4, !tbaa !18
  %inc41 = add nsw i32 %70, 1
  store i32 %inc41, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load i32, i32* %r, align 4, !tbaa !18
  %cmp42 = icmp sgt i32 %71, 0
  br i1 %cmp42, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %for.end
  %72 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %EOBRUN45 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %72, i32 0, i32 9
  %73 = load i32, i32* %EOBRUN45, align 4, !tbaa !35
  %inc46 = add i32 %73, 1
  store i32 %inc46, i32* %EOBRUN45, align 4, !tbaa !35
  %74 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %EOBRUN47 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %74, i32 0, i32 9
  %75 = load i32, i32* %EOBRUN47, align 4, !tbaa !35
  %cmp48 = icmp eq i32 %75, 32767
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.44
  %76 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %76)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.then.44
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.end
  %77 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte53 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %77, i32 0, i32 2
  %78 = load i8*, i8** %next_output_byte53, align 8, !tbaa !46
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 5
  %80 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest54, align 8, !tbaa !43
  %next_output_byte55 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %80, i32 0, i32 0
  store i8* %78, i8** %next_output_byte55, align 8, !tbaa !44
  %81 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer56 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %81, i32 0, i32 3
  %82 = load i64, i64* %free_in_buffer56, align 8, !tbaa !48
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 5
  %84 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest57, align 8, !tbaa !43
  %free_in_buffer58 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %84, i32 0, i32 1
  store i64 %82, i64* %free_in_buffer58, align 8, !tbaa !47
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 29
  %86 = load i32, i32* %restart_interval59, align 4, !tbaa !39
  %tobool60 = icmp ne i32 %86, 0
  br i1 %tobool60, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %if.end.52
  %87 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go62 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %87, i32 0, i32 12
  %88 = load i32, i32* %restarts_to_go62, align 4, !tbaa !40
  %cmp63 = icmp eq i32 %88, 0
  br i1 %cmp63, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %if.then.61
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 29
  %90 = load i32, i32* %restart_interval66, align 4, !tbaa !39
  %91 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go67 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %91, i32 0, i32 12
  store i32 %90, i32* %restarts_to_go67, align 4, !tbaa !40
  %92 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num68 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %92, i32 0, i32 13
  %93 = load i32, i32* %next_restart_num68, align 4, !tbaa !41
  %inc69 = add nsw i32 %93, 1
  store i32 %inc69, i32* %next_restart_num68, align 4, !tbaa !41
  %94 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num70 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %94, i32 0, i32 13
  %95 = load i32, i32* %next_restart_num70, align 4, !tbaa !41
  %and = and i32 %95, 7
  store i32 %and, i32* %next_restart_num70, align 4, !tbaa !41
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.65, %if.then.61
  %96 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go72 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %96, i32 0, i32 12
  %97 = load i32, i32* %restarts_to_go72, align 4, !tbaa !40
  %dec = add i32 %97, -1
  store i32 %dec, i32* %restarts_to_go72, align 4, !tbaa !40
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.71, %if.end.52
  %98 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #6
  %99 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #6
  %100 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #6
  %101 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #6
  %102 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #6
  %103 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #6
  %104 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #6
  %105 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #6
  %106 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #6
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_DC_refine(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %blkn = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %3, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 50
  %8 = load i32, i32* %Al2, align 4, !tbaa !42
  store i32 %8, i32* %Al, align 4, !tbaa !18
  %9 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #6
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 5
  %11 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !43
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %11, i32 0, i32 0
  %12 = load i8*, i8** %next_output_byte, align 8, !tbaa !44
  %13 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %13, i32 0, i32 2
  store i8* %12, i8** %next_output_byte3, align 8, !tbaa !46
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 5
  %15 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest4, align 8, !tbaa !43
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %15, i32 0, i32 1
  %16 = load i64, i64* %free_in_buffer, align 8, !tbaa !47
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %17, i32 0, i32 3
  store i64 %16, i64* %free_in_buffer5, align 8, !tbaa !48
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 29
  %19 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %20 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %20, i32 0, i32 12
  %21 = load i32, i32* %restarts_to_go, align 4, !tbaa !40
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %22 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %23 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %23, i32 0, i32 13
  %24 = load i32, i32* %next_restart_num, align 4, !tbaa !41
  call void @emit_restart(%struct.phuff_entropy_encoder* %22, i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %25 = load i32, i32* %blkn, align 4, !tbaa !18
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 45
  %27 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !49
  %cmp8 = icmp slt i32 %25, %27
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %28 to i64
  %29 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %29, i64 %idxprom
  %30 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  store [64 x i16]* %30, [64 x i16]** %block, align 8, !tbaa !2
  %31 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds [64 x i16], [64 x i16]* %31, i32 0, i64 0
  %32 = load i16, i16* %arrayidx9, align 2, !tbaa !50
  %conv = sext i16 %32 to i32
  store i32 %conv, i32* %temp, align 4, !tbaa !18
  %33 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %34 = load i32, i32* %temp, align 4, !tbaa !18
  %35 = load i32, i32* %Al, align 4, !tbaa !18
  %shr = ashr i32 %34, %35
  call void @emit_bits(%struct.phuff_entropy_encoder* %33, i32 %shr, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte10 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %37, i32 0, i32 2
  %38 = load i8*, i8** %next_output_byte10, align 8, !tbaa !46
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 5
  %40 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest11, align 8, !tbaa !43
  %next_output_byte12 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %40, i32 0, i32 0
  store i8* %38, i8** %next_output_byte12, align 8, !tbaa !44
  %41 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer13 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %41, i32 0, i32 3
  %42 = load i64, i64* %free_in_buffer13, align 8, !tbaa !48
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 5
  %44 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest14, align 8, !tbaa !43
  %free_in_buffer15 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %44, i32 0, i32 1
  store i64 %42, i64* %free_in_buffer15, align 8, !tbaa !47
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 29
  %46 = load i32, i32* %restart_interval16, align 4, !tbaa !39
  %tobool17 = icmp ne i32 %46, 0
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %for.end
  %47 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go19 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %47, i32 0, i32 12
  %48 = load i32, i32* %restarts_to_go19, align 4, !tbaa !40
  %cmp20 = icmp eq i32 %48, 0
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.then.18
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 29
  %50 = load i32, i32* %restart_interval23, align 4, !tbaa !39
  %51 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go24 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %51, i32 0, i32 12
  store i32 %50, i32* %restarts_to_go24, align 4, !tbaa !40
  %52 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num25 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %52, i32 0, i32 13
  %53 = load i32, i32* %next_restart_num25, align 4, !tbaa !41
  %inc26 = add nsw i32 %53, 1
  store i32 %inc26, i32* %next_restart_num25, align 4, !tbaa !41
  %54 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num27 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %54, i32 0, i32 13
  %55 = load i32, i32* %next_restart_num27, align 4, !tbaa !41
  %and = and i32 %55, 7
  store i32 %and, i32* %next_restart_num27, align 4, !tbaa !41
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %if.then.18
  %56 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go29 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %56, i32 0, i32 12
  %57 = load i32, i32* %restarts_to_go29, align 4, !tbaa !40
  %dec = add i32 %57, -1
  store i32 %dec, i32* %restarts_to_go29, align 4, !tbaa !40
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %for.end
  %58 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #6
  %59 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #6
  %60 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #6
  %61 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #6
  %62 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #6
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_AC_refine(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %EOB = alloca i32, align 4
  %BR_buffer = alloca i8*, align 8
  %BR = alloca i32, align 4
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %absvalues = alloca [64 x i32], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %3, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = bitcast i32* %EOB to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #6
  %8 = bitcast i8** %BR_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #6
  %9 = bitcast i32* %BR to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #6
  %10 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #6
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 48
  %12 = load i32, i32* %Se2, align 4, !tbaa !51
  store i32 %12, i32* %Se, align 4, !tbaa !18
  %13 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #6
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 50
  %15 = load i32, i32* %Al3, align 4, !tbaa !42
  store i32 %15, i32* %Al, align 4, !tbaa !18
  %16 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #6
  %17 = bitcast [64 x i32]* %absvalues to i8*
  call void @llvm.lifetime.start(i64 256, i8* %17) #6
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 5
  %19 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !43
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %19, i32 0, i32 0
  %20 = load i8*, i8** %next_output_byte, align 8, !tbaa !44
  %21 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %21, i32 0, i32 2
  store i8* %20, i8** %next_output_byte4, align 8, !tbaa !46
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 5
  %23 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest5, align 8, !tbaa !43
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %free_in_buffer, align 8, !tbaa !47
  %25 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer6 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %25, i32 0, i32 3
  store i64 %24, i64* %free_in_buffer6, align 8, !tbaa !48
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 29
  %27 = load i32, i32* %restart_interval, align 4, !tbaa !39
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %28 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %28, i32 0, i32 12
  %29 = load i32, i32* %restarts_to_go, align 4, !tbaa !40
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %30 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %31 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %31, i32 0, i32 13
  %32 = load i32, i32* %next_restart_num, align 4, !tbaa !41
  call void @emit_restart(%struct.phuff_entropy_encoder* %30, i32 %32)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %33 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %33, i64 0
  %34 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  store [64 x i16]* %34, [64 x i16]** %block, align 8, !tbaa !2
  store i32 0, i32* %EOB, align 4, !tbaa !18
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 47
  %36 = load i32, i32* %Ss, align 4, !tbaa !22
  store i32 %36, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %37 = load i32, i32* %k, align 4, !tbaa !18
  %38 = load i32, i32* %Se, align 4, !tbaa !18
  %cmp9 = icmp sle i32 %37, %38
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom = sext i32 %39 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom
  %40 = load i32, i32* %arrayidx10, align 4, !tbaa !18
  %idxprom11 = sext i32 %40 to i64
  %41 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %41, i32 0, i64 %idxprom11
  %42 = load i16, i16* %arrayidx12, align 2, !tbaa !50
  %conv = sext i16 %42 to i32
  store i32 %conv, i32* %temp, align 4, !tbaa !18
  %43 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp13 = icmp slt i32 %43, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  %44 = load i32, i32* %temp, align 4, !tbaa !18
  %sub = sub nsw i32 0, %44
  store i32 %sub, i32* %temp, align 4, !tbaa !18
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.body
  %45 = load i32, i32* %Al, align 4, !tbaa !18
  %46 = load i32, i32* %temp, align 4, !tbaa !18
  %shr = ashr i32 %46, %45
  store i32 %shr, i32* %temp, align 4, !tbaa !18
  %47 = load i32, i32* %temp, align 4, !tbaa !18
  %48 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom17 = sext i32 %48 to i64
  %arrayidx18 = getelementptr inbounds [64 x i32], [64 x i32]* %absvalues, i32 0, i64 %idxprom17
  store i32 %47, i32* %arrayidx18, align 4, !tbaa !18
  %49 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp19 = icmp eq i32 %49, 1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  %50 = load i32, i32* %k, align 4, !tbaa !18
  store i32 %50, i32* %EOB, align 4, !tbaa !18
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %51 = load i32, i32* %k, align 4, !tbaa !18
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %k, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %r, align 4, !tbaa !18
  store i32 0, i32* %BR, align 4, !tbaa !18
  %52 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %52, i32 0, i32 11
  %53 = load i8*, i8** %bit_buffer, align 8, !tbaa !19
  %54 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %54, i32 0, i32 10
  %55 = load i32, i32* %BE, align 4, !tbaa !36
  %idx.ext = zext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr, i8** %BR_buffer, align 8, !tbaa !2
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 47
  %57 = load i32, i32* %Ss23, align 4, !tbaa !22
  store i32 %57, i32* %k, align 4, !tbaa !18
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.58, %for.end
  %58 = load i32, i32* %k, align 4, !tbaa !18
  %59 = load i32, i32* %Se, align 4, !tbaa !18
  %cmp25 = icmp sle i32 %58, %59
  br i1 %cmp25, label %for.body.27, label %for.end.60

for.body.27:                                      ; preds = %for.cond.24
  %60 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom28 = sext i32 %60 to i64
  %arrayidx29 = getelementptr inbounds [64 x i32], [64 x i32]* %absvalues, i32 0, i64 %idxprom28
  %61 = load i32, i32* %arrayidx29, align 4, !tbaa !18
  store i32 %61, i32* %temp, align 4, !tbaa !18
  %cmp30 = icmp eq i32 %61, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.body.27
  %62 = load i32, i32* %r, align 4, !tbaa !18
  %inc33 = add nsw i32 %62, 1
  store i32 %inc33, i32* %r, align 4, !tbaa !18
  br label %for.inc.58

if.end.34:                                        ; preds = %for.body.27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.34
  %63 = load i32, i32* %r, align 4, !tbaa !18
  %cmp35 = icmp sgt i32 %63, 15
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %64 = load i32, i32* %k, align 4, !tbaa !18
  %65 = load i32, i32* %EOB, align 4, !tbaa !18
  %cmp37 = icmp sle i32 %64, %65
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %66 = phi i1 [ false, %while.cond ], [ %cmp37, %land.rhs ]
  br i1 %66, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %67 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %67)
  %68 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %69 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %69, i32 0, i32 8
  %70 = load i32, i32* %ac_tbl_no, align 4, !tbaa !34
  call void @emit_symbol(%struct.phuff_entropy_encoder* %68, i32 %70, i32 240)
  %71 = load i32, i32* %r, align 4, !tbaa !18
  %sub39 = sub nsw i32 %71, 16
  store i32 %sub39, i32* %r, align 4, !tbaa !18
  %72 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %73 = load i8*, i8** %BR_buffer, align 8, !tbaa !2
  %74 = load i32, i32* %BR, align 4, !tbaa !18
  call void @emit_buffered_bits(%struct.phuff_entropy_encoder* %72, i8* %73, i32 %74)
  %75 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %bit_buffer40 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %75, i32 0, i32 11
  %76 = load i8*, i8** %bit_buffer40, align 8, !tbaa !19
  store i8* %76, i8** %BR_buffer, align 8, !tbaa !2
  store i32 0, i32* %BR, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %land.end
  %77 = load i32, i32* %temp, align 4, !tbaa !18
  %cmp41 = icmp sgt i32 %77, 1
  br i1 %cmp41, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %while.end
  %78 = load i32, i32* %temp, align 4, !tbaa !18
  %and = and i32 %78, 1
  %conv44 = trunc i32 %and to i8
  %79 = load i32, i32* %BR, align 4, !tbaa !18
  %inc45 = add i32 %79, 1
  store i32 %inc45, i32* %BR, align 4, !tbaa !18
  %idxprom46 = zext i32 %79 to i64
  %80 = load i8*, i8** %BR_buffer, align 8, !tbaa !2
  %arrayidx47 = getelementptr inbounds i8, i8* %80, i64 %idxprom46
  store i8 %conv44, i8* %arrayidx47, align 1, !tbaa !52
  br label %for.inc.58

if.end.48:                                        ; preds = %while.end
  %81 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %81)
  %82 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %83 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_tbl_no49 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %83, i32 0, i32 8
  %84 = load i32, i32* %ac_tbl_no49, align 4, !tbaa !34
  %85 = load i32, i32* %r, align 4, !tbaa !18
  %shl = shl i32 %85, 4
  %add = add nsw i32 %shl, 1
  call void @emit_symbol(%struct.phuff_entropy_encoder* %82, i32 %84, i32 %add)
  %86 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom50 = sext i32 %86 to i64
  %arrayidx51 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom50
  %87 = load i32, i32* %arrayidx51, align 4, !tbaa !18
  %idxprom52 = sext i32 %87 to i64
  %88 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx53 = getelementptr inbounds [64 x i16], [64 x i16]* %88, i32 0, i64 %idxprom52
  %89 = load i16, i16* %arrayidx53, align 2, !tbaa !50
  %conv54 = sext i16 %89 to i32
  %cmp55 = icmp slt i32 %conv54, 0
  %cond = select i1 %cmp55, i32 0, i32 1
  store i32 %cond, i32* %temp, align 4, !tbaa !18
  %90 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %91 = load i32, i32* %temp, align 4, !tbaa !18
  call void @emit_bits(%struct.phuff_entropy_encoder* %90, i32 %91, i32 1)
  %92 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %93 = load i8*, i8** %BR_buffer, align 8, !tbaa !2
  %94 = load i32, i32* %BR, align 4, !tbaa !18
  call void @emit_buffered_bits(%struct.phuff_entropy_encoder* %92, i8* %93, i32 %94)
  %95 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %bit_buffer57 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %95, i32 0, i32 11
  %96 = load i8*, i8** %bit_buffer57, align 8, !tbaa !19
  store i8* %96, i8** %BR_buffer, align 8, !tbaa !2
  store i32 0, i32* %BR, align 4, !tbaa !18
  store i32 0, i32* %r, align 4, !tbaa !18
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.48, %if.then.43, %if.then.32
  %97 = load i32, i32* %k, align 4, !tbaa !18
  %inc59 = add nsw i32 %97, 1
  store i32 %inc59, i32* %k, align 4, !tbaa !18
  br label %for.cond.24

for.end.60:                                       ; preds = %for.cond.24
  %98 = load i32, i32* %r, align 4, !tbaa !18
  %cmp61 = icmp sgt i32 %98, 0
  br i1 %cmp61, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.60
  %99 = load i32, i32* %BR, align 4, !tbaa !18
  %cmp63 = icmp ugt i32 %99, 0
  br i1 %cmp63, label %if.then.65, label %if.end.78

if.then.65:                                       ; preds = %lor.lhs.false, %for.end.60
  %100 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %100, i32 0, i32 9
  %101 = load i32, i32* %EOBRUN, align 4, !tbaa !35
  %inc66 = add i32 %101, 1
  store i32 %inc66, i32* %EOBRUN, align 4, !tbaa !35
  %102 = load i32, i32* %BR, align 4, !tbaa !18
  %103 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %BE67 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %103, i32 0, i32 10
  %104 = load i32, i32* %BE67, align 4, !tbaa !36
  %add68 = add i32 %104, %102
  store i32 %add68, i32* %BE67, align 4, !tbaa !36
  %105 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %EOBRUN69 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %105, i32 0, i32 9
  %106 = load i32, i32* %EOBRUN69, align 4, !tbaa !35
  %cmp70 = icmp eq i32 %106, 32767
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.then.65
  %107 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %BE73 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %107, i32 0, i32 10
  %108 = load i32, i32* %BE73, align 4, !tbaa !36
  %cmp74 = icmp ugt i32 %108, 937
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %lor.lhs.false.72, %if.then.65
  %109 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %109)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %lor.lhs.false.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %lor.lhs.false
  %110 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte79 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %110, i32 0, i32 2
  %111 = load i8*, i8** %next_output_byte79, align 8, !tbaa !46
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 5
  %113 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest80, align 8, !tbaa !43
  %next_output_byte81 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %113, i32 0, i32 0
  store i8* %111, i8** %next_output_byte81, align 8, !tbaa !44
  %114 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer82 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %114, i32 0, i32 3
  %115 = load i64, i64* %free_in_buffer82, align 8, !tbaa !48
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %116, i32 0, i32 5
  %117 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest83, align 8, !tbaa !43
  %free_in_buffer84 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %117, i32 0, i32 1
  store i64 %115, i64* %free_in_buffer84, align 8, !tbaa !47
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 29
  %119 = load i32, i32* %restart_interval85, align 4, !tbaa !39
  %tobool86 = icmp ne i32 %119, 0
  br i1 %tobool86, label %if.then.87, label %if.end.100

if.then.87:                                       ; preds = %if.end.78
  %120 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go88 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %120, i32 0, i32 12
  %121 = load i32, i32* %restarts_to_go88, align 4, !tbaa !40
  %cmp89 = icmp eq i32 %121, 0
  br i1 %cmp89, label %if.then.91, label %if.end.98

if.then.91:                                       ; preds = %if.then.87
  %122 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval92 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %122, i32 0, i32 29
  %123 = load i32, i32* %restart_interval92, align 4, !tbaa !39
  %124 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go93 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %124, i32 0, i32 12
  store i32 %123, i32* %restarts_to_go93, align 4, !tbaa !40
  %125 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num94 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %125, i32 0, i32 13
  %126 = load i32, i32* %next_restart_num94, align 4, !tbaa !41
  %inc95 = add nsw i32 %126, 1
  store i32 %inc95, i32* %next_restart_num94, align 4, !tbaa !41
  %127 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num96 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %127, i32 0, i32 13
  %128 = load i32, i32* %next_restart_num96, align 4, !tbaa !41
  %and97 = and i32 %128, 7
  store i32 %and97, i32* %next_restart_num96, align 4, !tbaa !41
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.91, %if.then.87
  %129 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go99 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %129, i32 0, i32 12
  %130 = load i32, i32* %restarts_to_go99, align 4, !tbaa !40
  %dec = add i32 %130, -1
  store i32 %dec, i32* %restarts_to_go99, align 4, !tbaa !40
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.98, %if.end.78
  %131 = bitcast [64 x i32]* %absvalues to i8*
  call void @llvm.lifetime.end(i64 256, i8* %131) #6
  %132 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #6
  %133 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #6
  %134 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #6
  %135 = bitcast i32* %BR to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #6
  %136 = bitcast i8** %BR_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #6
  %137 = bitcast i32* %EOB to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #6
  %138 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #6
  %139 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #6
  %140 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #6
  %141 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #6
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_gather_phuff(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %is_DC_band = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %htblptr = alloca %struct.JHUFF_TBL**, align 8
  %did = alloca [4 x i32], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %3, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %is_DC_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #6
  %8 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #6
  %9 = bitcast [4 x i32]* %did to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #6
  %10 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %10)
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 47
  %12 = load i32, i32* %Ss, align 4, !tbaa !22
  %cmp = icmp eq i32 %12, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_DC_band, align 4, !tbaa !18
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %did, i32 0, i32 0
  %13 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i32 1, i1 false)
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %ci, align 4, !tbaa !18
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 41
  %16 = load i32, i32* %comps_in_scan, align 4, !tbaa !26
  %cmp2 = icmp slt i32 %14, %16
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %19, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %20 = load i32, i32* %is_DC_band, align 4, !tbaa !18
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 49
  %22 = load i32, i32* %Ah, align 4, !tbaa !23
  %cmp4 = icmp ne i32 %22, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %for.inc

if.end:                                           ; preds = %if.then
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 5
  %24 = load i32, i32* %dc_tbl_no, align 4, !tbaa !27
  store i32 %24, i32* %tbl, align 4, !tbaa !18
  br label %if.end.7

if.else:                                          ; preds = %for.body
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 6
  %26 = load i32, i32* %ac_tbl_no, align 4, !tbaa !33
  store i32 %26, i32* %tbl, align 4, !tbaa !18
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  %27 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom8 = sext i32 %27 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %did, i32 0, i64 %idxprom8
  %28 = load i32, i32* %arrayidx9, align 4, !tbaa !18
  %tobool10 = icmp ne i32 %28, 0
  br i1 %tobool10, label %if.end.28, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  %29 = load i32, i32* %is_DC_band, align 4, !tbaa !18
  %tobool12 = icmp ne i32 %29, 0
  br i1 %tobool12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.then.11
  %30 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom14 = sext i32 %30 to i64
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 16
  %arrayidx15 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom14
  store %struct.JHUFF_TBL** %arrayidx15, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  br label %if.end.19

if.else.16:                                       ; preds = %if.then.11
  %32 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 17
  %arrayidx18 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom17
  store %struct.JHUFF_TBL** %arrayidx18, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.13
  %34 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %35 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %34, align 8, !tbaa !2
  %cmp20 = icmp eq %struct.JHUFF_TBL* %35, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %37 = bitcast %struct.jpeg_compress_struct* %36 to %struct.jpeg_common_struct*
  %call = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %37)
  %38 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %call, %struct.JHUFF_TBL** %38, align 8, !tbaa !2
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.19
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %40 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %41 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %40, align 8, !tbaa !2
  %42 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom24 = sext i32 %42 to i64
  %43 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %43, i32 0, i32 15
  %arrayidx25 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs, i32 0, i64 %idxprom24
  %44 = load i64*, i64** %arrayidx25, align 8, !tbaa !2
  call void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %39, %struct.JHUFF_TBL* %41, i64* %44)
  %45 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom26 = sext i32 %45 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %did, i32 0, i64 %idxprom26
  store i32 1, i32* %arrayidx27, align 4, !tbaa !18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.23, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.28, %if.then.6
  %46 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = bitcast [4 x i32]* %did to i8*
  call void @llvm.lifetime.end(i64 16, i8* %47) #6
  %48 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #6
  %49 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #6
  %50 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #6
  %51 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #6
  %52 = bitcast i32* %is_DC_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #6
  %53 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_phuff(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %3, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 5
  %5 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !43
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %5, i32 0, i32 0
  %6 = load i8*, i8** %next_output_byte, align 8, !tbaa !44
  %7 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte2 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %7, i32 0, i32 2
  store i8* %6, i8** %next_output_byte2, align 8, !tbaa !46
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 5
  %9 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !43
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %9, i32 0, i32 1
  %10 = load i64, i64* %free_in_buffer, align 8, !tbaa !47
  %11 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %11, i32 0, i32 3
  store i64 %10, i64* %free_in_buffer4, align 8, !tbaa !48
  %12 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %12)
  %13 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  call void @flush_bits(%struct.phuff_entropy_encoder* %13)
  %14 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_output_byte5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %14, i32 0, i32 2
  %15 = load i8*, i8** %next_output_byte5, align 8, !tbaa !46
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 5
  %17 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest6, align 8, !tbaa !43
  %next_output_byte7 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %17, i32 0, i32 0
  store i8* %15, i8** %next_output_byte7, align 8, !tbaa !44
  %18 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8, !tbaa !2
  %free_in_buffer8 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %18, i32 0, i32 3
  %19 = load i64, i64* %free_in_buffer8, align 8, !tbaa !48
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %21 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest9, align 8, !tbaa !43
  %free_in_buffer10 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %21, i32 0, i32 1
  store i64 %19, i64* %free_in_buffer10, align 8, !tbaa !47
  %22 = bitcast %struct.phuff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #6
  ret void
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

declare void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct*, %struct.JHUFF_TBL*, %struct.c_derived_tbl**) #4

; Function Attrs: nounwind ssp uwtable
define internal void @emit_restart(%struct.phuff_entropy_encoder* %entropy, i32 %restart_num) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %restart_num.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  store i32 %restart_num, i32* %restart_num.addr, align 4, !tbaa !18
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %1)
  %2 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %2, i32 0, i32 1
  %3 = load i32, i32* %gather_statistics, align 4, !tbaa !21
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.10, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  call void @flush_bits(%struct.phuff_entropy_encoder* %4)
  %5 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %next_output_byte = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %5, i32 0, i32 2
  %6 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !46
  store i8 -1, i8* %6, align 1, !tbaa !52
  %7 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %free_in_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %7, i32 0, i32 3
  %8 = load i64, i64* %free_in_buffer, align 8, !tbaa !48
  %dec = add i64 %8, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !48
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %9 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  call void @dump_buffer(%struct.phuff_entropy_encoder* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %10 = load i32, i32* %restart_num.addr, align 4, !tbaa !18
  %add = add nsw i32 208, %10
  %conv = trunc i32 %add to i8
  %11 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %next_output_byte2 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %11, i32 0, i32 2
  %12 = load i8*, i8** %next_output_byte2, align 8, !tbaa !46
  %incdec.ptr3 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr3, i8** %next_output_byte2, align 8, !tbaa !46
  store i8 %conv, i8* %12, align 1, !tbaa !52
  %13 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %free_in_buffer4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %13, i32 0, i32 3
  %14 = load i64, i64* %free_in_buffer4, align 8, !tbaa !48
  %dec5 = add i64 %14, -1
  store i64 %dec5, i64* %free_in_buffer4, align 8, !tbaa !48
  %cmp6 = icmp eq i64 %dec5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %15 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  call void @dump_buffer(%struct.phuff_entropy_encoder* %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %16 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %16, i32 0, i32 6
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !20
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 47
  %18 = load i32, i32* %Ss, align 4, !tbaa !22
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %19 = load i32, i32* %ci, align 4, !tbaa !18
  %20 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo14 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %20, i32 0, i32 6
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo14, align 8, !tbaa !20
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 41
  %22 = load i32, i32* %comps_in_scan, align 4, !tbaa !26
  %cmp15 = icmp slt i32 %19, %22
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %last_dc_val = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %24, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.17

if.else:                                          ; preds = %if.end.10
  %26 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %26, i32 0, i32 9
  store i32 0, i32* %EOBRUN, align 4, !tbaa !35
  %27 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %27, i32 0, i32 10
  store i32 0, i32* %BE, align 4, !tbaa !36
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %for.end
  %28 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #6
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_symbol(%struct.phuff_entropy_encoder* %entropy, i32 %tbl_no, i32 %symbol) #5 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %tbl_no.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %tbl = alloca %struct.c_derived_tbl*, align 8
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  store i32 %tbl_no, i32* %tbl_no.addr, align 4, !tbaa !18
  store i32 %symbol, i32* %symbol.addr, align 4, !tbaa !18
  %0 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %0, i32 0, i32 1
  %1 = load i32, i32* %gather_statistics, align 4, !tbaa !21
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %symbol.addr, align 4, !tbaa !18
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %tbl_no.addr, align 4, !tbaa !18
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %4, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs, i32 0, i64 %idxprom1
  %5 = load i64*, i64** %arrayidx, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx2, align 8, !tbaa !53
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %arrayidx2, align 8, !tbaa !53
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = bitcast %struct.c_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #6
  %8 = load i32, i32* %tbl_no.addr, align 4, !tbaa !18
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %9, i32 0, i32 14
  %arrayidx4 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom3
  %10 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx4, align 8, !tbaa !2
  store %struct.c_derived_tbl* %10, %struct.c_derived_tbl** %tbl, align 8, !tbaa !2
  %11 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %12 = load i32, i32* %symbol.addr, align 4, !tbaa !18
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %tbl, align 8, !tbaa !2
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %13, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4, !tbaa !18
  %15 = load i32, i32* %symbol.addr, align 4, !tbaa !18
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %tbl, align 8, !tbaa !2
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %16, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i64 %idxprom7
  %17 = load i8, i8* %arrayidx8, align 1, !tbaa !52
  %conv = sext i8 %17 to i32
  call void @emit_bits(%struct.phuff_entropy_encoder* %11, i32 %14, i32 %conv)
  %18 = bitcast %struct.c_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_bits(%struct.phuff_entropy_encoder* %entropy, i32 %code, i32 %size) #5 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %code.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca i32, align 4
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  store i32 %code, i32* %code.addr, align 4, !tbaa !18
  store i32 %size, i32* %size.addr, align 4, !tbaa !18
  %0 = bitcast i64* %put_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load i32, i32* %code.addr, align 4, !tbaa !18
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %put_buffer, align 8, !tbaa !53
  %2 = bitcast i32* %put_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #6
  %3 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %put_bits1 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %3, i32 0, i32 5
  %4 = load i32, i32* %put_bits1, align 4, !tbaa !38
  store i32 %4, i32* %put_bits, align 4, !tbaa !18
  %5 = load i32, i32* %size.addr, align 4, !tbaa !18
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %6, i32 0, i32 6
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !20
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 5
  store i32 39, i32* %msg_code, align 4, !tbaa !30
  %9 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %9, i32 0, i32 6
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !20
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !29
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !32
  %13 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %13, i32 0, i32 6
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo5, align 8, !tbaa !20
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %16, i32 0, i32 1
  %17 = load i32, i32* %gather_statistics, align 4, !tbaa !21
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %18 = load i32, i32* %size.addr, align 4, !tbaa !18
  %sh_prom = zext i32 %18 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %19 = load i64, i64* %put_buffer, align 8, !tbaa !53
  %and = and i64 %19, %sub
  store i64 %and, i64* %put_buffer, align 8, !tbaa !53
  %20 = load i32, i32* %size.addr, align 4, !tbaa !18
  %21 = load i32, i32* %put_bits, align 4, !tbaa !18
  %add = add nsw i32 %21, %20
  store i32 %add, i32* %put_bits, align 4, !tbaa !18
  %22 = load i32, i32* %put_bits, align 4, !tbaa !18
  %sub8 = sub nsw i32 24, %22
  %23 = load i64, i64* %put_buffer, align 8, !tbaa !53
  %sh_prom9 = zext i32 %sub8 to i64
  %shl10 = shl i64 %23, %sh_prom9
  store i64 %shl10, i64* %put_buffer, align 8, !tbaa !53
  %24 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %put_buffer11 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %24, i32 0, i32 4
  %25 = load i64, i64* %put_buffer11, align 8, !tbaa !37
  %26 = load i64, i64* %put_buffer, align 8, !tbaa !53
  %or = or i64 %26, %25
  store i64 %or, i64* %put_buffer, align 8, !tbaa !53
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end.7
  %27 = load i32, i32* %put_bits, align 4, !tbaa !18
  %cmp12 = icmp sge i32 %27, 8
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #6
  %29 = load i64, i64* %put_buffer, align 8, !tbaa !53
  %shr = ashr i64 %29, 16
  %and14 = and i64 %shr, 255
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* %c, align 4, !tbaa !18
  %30 = load i32, i32* %c, align 4, !tbaa !18
  %conv16 = trunc i32 %30 to i8
  %31 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %next_output_byte = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %31, i32 0, i32 2
  %32 = load i8*, i8** %next_output_byte, align 8, !tbaa !46
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !46
  store i8 %conv16, i8* %32, align 1, !tbaa !52
  %33 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %free_in_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %33, i32 0, i32 3
  %34 = load i64, i64* %free_in_buffer, align 8, !tbaa !48
  %dec = add i64 %34, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !48
  %cmp17 = icmp eq i64 %dec, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body
  %35 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  call void @dump_buffer(%struct.phuff_entropy_encoder* %35)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %while.body
  %36 = load i32, i32* %c, align 4, !tbaa !18
  %cmp21 = icmp eq i32 %36, 255
  br i1 %cmp21, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.end.20
  %37 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %next_output_byte24 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %37, i32 0, i32 2
  %38 = load i8*, i8** %next_output_byte24, align 8, !tbaa !46
  %incdec.ptr25 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr25, i8** %next_output_byte24, align 8, !tbaa !46
  store i8 0, i8* %38, align 1, !tbaa !52
  %39 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %free_in_buffer26 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %39, i32 0, i32 3
  %40 = load i64, i64* %free_in_buffer26, align 8, !tbaa !48
  %dec27 = add i64 %40, -1
  store i64 %dec27, i64* %free_in_buffer26, align 8, !tbaa !48
  %cmp28 = icmp eq i64 %dec27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.23
  %41 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  call void @dump_buffer(%struct.phuff_entropy_encoder* %41)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.20
  %42 = load i64, i64* %put_buffer, align 8, !tbaa !53
  %shl33 = shl i64 %42, 8
  store i64 %shl33, i64* %put_buffer, align 8, !tbaa !53
  %43 = load i32, i32* %put_bits, align 4, !tbaa !18
  %sub34 = sub nsw i32 %43, 8
  store i32 %sub34, i32* %put_bits, align 4, !tbaa !18
  %44 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i64, i64* %put_buffer, align 8, !tbaa !53
  %46 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %put_buffer35 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %46, i32 0, i32 4
  store i64 %45, i64* %put_buffer35, align 8, !tbaa !37
  %47 = load i32, i32* %put_bits, align 4, !tbaa !18
  %48 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %put_bits36 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %48, i32 0, i32 5
  store i32 %47, i32* %put_bits36, align 4, !tbaa !38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.6
  %49 = bitcast i32* %put_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #6
  %50 = bitcast i64* %put_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #6
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
define internal void @emit_eobrun(%struct.phuff_entropy_encoder* %entropy) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %0 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  %2 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %2, i32 0, i32 9
  %3 = load i32, i32* %EOBRUN, align 4, !tbaa !35
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %EOBRUN1 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %4, i32 0, i32 9
  %5 = load i32, i32* %EOBRUN1, align 4, !tbaa !35
  store i32 %5, i32* %temp, align 4, !tbaa !18
  store i32 0, i32* %nbits, align 4, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load i32, i32* %temp, align 4, !tbaa !18
  %shr = ashr i32 %6, 1
  store i32 %shr, i32* %temp, align 4, !tbaa !18
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %nbits, align 4, !tbaa !18
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %nbits, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %9 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %9, i32 0, i32 8
  %10 = load i32, i32* %ac_tbl_no, align 4, !tbaa !34
  %11 = load i32, i32* %nbits, align 4, !tbaa !18
  %shl = shl i32 %11, 4
  call void @emit_symbol(%struct.phuff_entropy_encoder* %8, i32 %10, i32 %shl)
  %12 = load i32, i32* %nbits, align 4, !tbaa !18
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.end
  %13 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %14 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %EOBRUN4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %14, i32 0, i32 9
  %15 = load i32, i32* %EOBRUN4, align 4, !tbaa !35
  %16 = load i32, i32* %nbits, align 4, !tbaa !18
  call void @emit_bits(%struct.phuff_entropy_encoder* %13, i32 %15, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.end
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %EOBRUN5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %17, i32 0, i32 9
  store i32 0, i32* %EOBRUN5, align 4, !tbaa !35
  %18 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %19 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %19, i32 0, i32 11
  %20 = load i8*, i8** %bit_buffer, align 8, !tbaa !19
  %21 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %21, i32 0, i32 10
  %22 = load i32, i32* %BE, align 4, !tbaa !36
  call void @emit_buffered_bits(%struct.phuff_entropy_encoder* %18, i8* %20, i32 %22)
  %23 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %BE6 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %23, i32 0, i32 10
  store i32 0, i32* %BE6, align 4, !tbaa !36
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %24 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #6
  %25 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @flush_bits(%struct.phuff_entropy_encoder* %entropy) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %0 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  call void @emit_bits(%struct.phuff_entropy_encoder* %0, i32 127, i32 7)
  %1 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %1, i32 0, i32 4
  store i64 0, i64* %put_buffer, align 8, !tbaa !37
  %2 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %2, i32 0, i32 5
  store i32 0, i32* %put_bits, align 4, !tbaa !38
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @dump_buffer(%struct.phuff_entropy_encoder* %entropy) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %0 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %1, i32 0, i32 6
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !20
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 5
  %3 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !43
  store %struct.jpeg_destination_mgr* %3, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 3
  %5 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8, !tbaa !54
  %6 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo2 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %6, i32 0, i32 6
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo2, align 8, !tbaa !20
  %call = call i32 %5(%struct.jpeg_compress_struct* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %8, i32 0, i32 6
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !20
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 22, i32* %msg_code, align 4, !tbaa !30
  %11 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %11, i32 0, i32 6
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo4, align 8, !tbaa !20
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !29
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !32
  %15 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %cinfo6 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %15, i32 0, i32 6
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo6, align 8, !tbaa !20
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %18, i32 0, i32 0
  %19 = load i8*, i8** %next_output_byte, align 8, !tbaa !44
  %20 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %next_output_byte7 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %20, i32 0, i32 2
  store i8* %19, i8** %next_output_byte7, align 8, !tbaa !46
  %21 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %21, i32 0, i32 1
  %22 = load i64, i64* %free_in_buffer, align 8, !tbaa !47
  %23 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %free_in_buffer8 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %23, i32 0, i32 3
  store i64 %22, i64* %free_in_buffer8, align 8, !tbaa !48
  %24 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_buffered_bits(%struct.phuff_entropy_encoder* %entropy, i8* %bufstart, i32 %nbits) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %bufstart.addr = alloca i8*, align 8
  %nbits.addr = alloca i32, align 4
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  store i8* %bufstart, i8** %bufstart.addr, align 8, !tbaa !2
  store i32 %nbits, i32* %nbits.addr, align 4, !tbaa !18
  %0 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %0, i32 0, i32 1
  %1 = load i32, i32* %gather_statistics, align 4, !tbaa !21
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %nbits.addr, align 4, !tbaa !18
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8, !tbaa !2
  %4 = load i8*, i8** %bufstart.addr, align 8, !tbaa !2
  %5 = load i8, i8* %4, align 1, !tbaa !52
  %conv = sext i8 %5 to i32
  call void @emit_bits(%struct.phuff_entropy_encoder* %3, i32 %conv, i32 1)
  %6 = load i8*, i8** %bufstart.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %bufstart.addr, align 8, !tbaa !2
  %7 = load i32, i32* %nbits.addr, align 4, !tbaa !18
  %dec = add i32 %7, -1
  store i32 %dec, i32* %nbits.addr, align 4, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #4

declare void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct*, %struct.JHUFF_TBL*, i64*) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

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
!14 = !{!7, !3, i64 488}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !8, i64 24, !3, i64 32, !13, i64 40, !13, i64 48, !8, i64 56, !3, i64 64, !4, i64 72, !8, i64 88, !8, i64 92, !8, i64 96, !3, i64 104, !8, i64 112, !8, i64 116, !4, i64 120, !4, i64 152}
!17 = !{!"jpeg_entropy_encoder", !3, i64 0, !3, i64 8, !3, i64 16}
!18 = !{!8, !8, i64 0}
!19 = !{!16, !3, i64 104}
!20 = !{!16, !3, i64 64}
!21 = !{!16, !8, i64 24}
!22 = !{!7, !8, i64 404}
!23 = !{!7, !8, i64 412}
!24 = !{!16, !3, i64 8}
!25 = !{!16, !3, i64 16}
!26 = !{!7, !8, i64 316}
!27 = !{!28, !8, i64 20}
!28 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!29 = !{!7, !3, i64 0}
!30 = !{!31, !8, i64 40}
!31 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!32 = !{!31, !3, i64 0}
!33 = !{!28, !8, i64 24}
!34 = !{!16, !8, i64 88}
!35 = !{!16, !8, i64 92}
!36 = !{!16, !8, i64 96}
!37 = !{!16, !13, i64 48}
!38 = !{!16, !8, i64 56}
!39 = !{!7, !8, i64 272}
!40 = !{!16, !8, i64 112}
!41 = !{!16, !8, i64 116}
!42 = !{!7, !8, i64 416}
!43 = !{!7, !3, i64 32}
!44 = !{!45, !3, i64 0}
!45 = !{!"jpeg_destination_mgr", !3, i64 0, !13, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!46 = !{!16, !3, i64 32}
!47 = !{!45, !13, i64 8}
!48 = !{!16, !13, i64 40}
!49 = !{!7, !8, i64 360}
!50 = !{!10, !10, i64 0}
!51 = !{!7, !8, i64 408}
!52 = !{!4, !4, i64 0}
!53 = !{!13, !13, i64 0}
!54 = !{!45, !3, i64 24}
