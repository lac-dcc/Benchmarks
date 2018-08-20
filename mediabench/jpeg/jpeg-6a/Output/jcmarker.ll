; ModuleID = 'jcmarker.c'
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

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jinit_marker_writer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 48)
  %5 = bitcast i8* %call to %struct.jpeg_marker_writer*
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 55
  store %struct.jpeg_marker_writer* %5, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !14
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 55
  %8 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker1, align 8, !tbaa !14
  %write_any_marker = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %8, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32, i8*, i32)* @write_any_marker, void (%struct.jpeg_compress_struct*, i32, i8*, i32)** %write_any_marker, align 8, !tbaa !15
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 55
  %10 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker2, align 8, !tbaa !14
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %10, i32 0, i32 1
  %write_file_header3 = bitcast {}** %write_file_header to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_header, void (%struct.jpeg_compress_struct*)** %write_file_header3, align 8, !tbaa !17
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 55
  %12 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker4, align 8, !tbaa !14
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %12, i32 0, i32 2
  %write_frame_header5 = bitcast {}** %write_frame_header to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_frame_header, void (%struct.jpeg_compress_struct*)** %write_frame_header5, align 8, !tbaa !18
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 55
  %14 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker6, align 8, !tbaa !14
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %14, i32 0, i32 3
  %write_scan_header7 = bitcast {}** %write_scan_header to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_scan_header, void (%struct.jpeg_compress_struct*)** %write_scan_header7, align 8, !tbaa !19
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 55
  %16 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker8, align 8, !tbaa !14
  %write_file_trailer = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %16, i32 0, i32 4
  %write_file_trailer9 = bitcast {}** %write_file_trailer to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_trailer, void (%struct.jpeg_compress_struct*)** %write_file_trailer9, align 8, !tbaa !20
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 55
  %18 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker10, align 8, !tbaa !14
  %write_tables_only = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %18, i32 0, i32 5
  %write_tables_only11 = bitcast {}** %write_tables_only to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_tables_only, void (%struct.jpeg_compress_struct*)** %write_tables_only11, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_any_marker(%struct.jpeg_compress_struct* %cinfo, i32 %marker, i8* %dataptr, i32 %datalen) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %marker.addr = alloca i32, align 4
  %dataptr.addr = alloca i8*, align 8
  %datalen.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %marker, i32* %marker.addr, align 4, !tbaa !22
  store i8* %dataptr, i8** %dataptr.addr, align 8, !tbaa !2
  store i32 %datalen, i32* %datalen.addr, align 4, !tbaa !22
  %0 = load i32, i32* %datalen.addr, align 4, !tbaa !22
  %cmp = icmp ule i32 %0, 65533
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %2 = load i32, i32* %marker.addr, align 4, !tbaa !22
  call void @emit_marker(%struct.jpeg_compress_struct* %1, i32 %2)
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %4 = load i32, i32* %datalen.addr, align 4, !tbaa !22
  %add = add i32 %4, 2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %3, i32 %add)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load i32, i32* %datalen.addr, align 4, !tbaa !22
  %dec = add i32 %5, -1
  store i32 %dec, i32* %datalen.addr, align 4, !tbaa !22
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = load i8*, i8** %dataptr.addr, align 8, !tbaa !2
  %8 = load i8, i8* %7, align 1, !tbaa !23
  %conv = zext i8 %8 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %6, i32 %conv)
  %9 = load i8*, i8** %dataptr.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %dataptr.addr, align 8, !tbaa !2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_file_header(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 216)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 31
  %2 = load i32, i32* %write_JFIF_header, align 4, !tbaa !24
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_jfif_app0(%struct.jpeg_compress_struct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 35
  %5 = load i32, i32* %write_Adobe_marker, align 4, !tbaa !25
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_adobe_app14(%struct.jpeg_compress_struct* %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_frame_header(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  %prec = alloca i32, align 4
  %is_baseline = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %is_baseline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store i32 0, i32* %prec, align 4, !tbaa !22
  store i32 0, i32* %ci, align 4, !tbaa !22
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 14
  %5 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !26
  store %struct.jpeg_component_info* %5, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %ci, align 4, !tbaa !22
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 12
  %8 = load i32, i32* %num_components, align 4, !tbaa !27
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 0, i32 4
  %11 = load i32, i32* %quant_tbl_no, align 4, !tbaa !28
  %call = call i32 @emit_dqt(%struct.jpeg_compress_struct* %9, i32 %11)
  %12 = load i32, i32* %prec, align 4, !tbaa !22
  %add = add nsw i32 %12, %call
  store i32 %add, i32* %prec, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %ci, align 4, !tbaa !22
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !22
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 24
  %16 = load i32, i32* %arith_code, align 4, !tbaa !30
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 37
  %18 = load i32, i32* %progressive_mode, align 4, !tbaa !31
  %tobool1 = icmp ne i32 %18, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 11
  %20 = load i32, i32* %data_precision, align 4, !tbaa !32
  %cmp3 = icmp ne i32 %20, 8
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %for.end
  store i32 0, i32* %is_baseline, align 4, !tbaa !22
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false.2
  store i32 1, i32* %is_baseline, align 4, !tbaa !22
  store i32 0, i32* %ci, align 4, !tbaa !22
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 14
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info4, align 8, !tbaa !26
  store %struct.jpeg_component_info* %22, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.13, %if.else
  %23 = load i32, i32* %ci, align 4, !tbaa !22
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 12
  %25 = load i32, i32* %num_components6, align 4, !tbaa !27
  %cmp7 = icmp slt i32 %23, %25
  br i1 %cmp7, label %for.body.8, label %for.end.16

for.body.8:                                       ; preds = %for.cond.5
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 5
  %27 = load i32, i32* %dc_tbl_no, align 4, !tbaa !33
  %cmp9 = icmp sgt i32 %27, 1
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %for.body.8
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 6
  %29 = load i32, i32* %ac_tbl_no, align 4, !tbaa !34
  %cmp11 = icmp sgt i32 %29, 1
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false.10, %for.body.8
  store i32 0, i32* %is_baseline, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false.10
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end
  %30 = load i32, i32* %ci, align 4, !tbaa !22
  %inc14 = add nsw i32 %30, 1
  store i32 %inc14, i32* %ci, align 4, !tbaa !22
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr15 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 1
  store %struct.jpeg_component_info* %incdec.ptr15, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.5

for.end.16:                                       ; preds = %for.cond.5
  %32 = load i32, i32* %prec, align 4, !tbaa !22
  %tobool17 = icmp ne i32 %32, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %for.end.16
  %33 = load i32, i32* %is_baseline, align 4, !tbaa !22
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true
  store i32 0, i32* %is_baseline, align 4, !tbaa !22
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 5
  store i32 74, i32* %msg_code, align 4, !tbaa !36
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !35
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 1
  %38 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !38
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %40 = bitcast %struct.jpeg_compress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* %40, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true, %for.end.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 24
  %42 = load i32, i32* %arith_code23, align 4, !tbaa !30
  %tobool24 = icmp ne i32 %42, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.22
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_sof(%struct.jpeg_compress_struct* %43, i32 201)
  br label %if.end.36

if.else.26:                                       ; preds = %if.end.22
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 37
  %45 = load i32, i32* %progressive_mode27, align 4, !tbaa !31
  %tobool28 = icmp ne i32 %45, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.26
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_sof(%struct.jpeg_compress_struct* %46, i32 194)
  br label %if.end.35

if.else.30:                                       ; preds = %if.else.26
  %47 = load i32, i32* %is_baseline, align 4, !tbaa !22
  %tobool31 = icmp ne i32 %47, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.30
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_sof(%struct.jpeg_compress_struct* %48, i32 192)
  br label %if.end.34

if.else.33:                                       ; preds = %if.else.30
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_sof(%struct.jpeg_compress_struct* %49, i32 193)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  %50 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast i32* %is_baseline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_scan_header(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 24
  %3 = load i32, i32* %arith_code, align 4, !tbaa !30
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_dac(%struct.jpeg_compress_struct* %4)
  br label %if.end.13

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load i32, i32* %i, align 4, !tbaa !22
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 41
  %7 = load i32, i32* %comps_in_scan, align 4, !tbaa !39
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %10, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 37
  %12 = load i32, i32* %progressive_mode, align 4, !tbaa !31
  %tobool1 = icmp ne i32 %12, 0
  br i1 %tobool1, label %if.then.2, label %if.else.9

if.then.2:                                        ; preds = %for.body
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 47
  %14 = load i32, i32* %Ss, align 4, !tbaa !40
  %cmp3 = icmp eq i32 %14, 0
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.then.2
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 49
  %16 = load i32, i32* %Ah, align 4, !tbaa !41
  %cmp5 = icmp eq i32 %16, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 5
  %19 = load i32, i32* %dc_tbl_no, align 4, !tbaa !33
  call void @emit_dht(%struct.jpeg_compress_struct* %17, i32 %19, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.then.2
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 6
  %22 = load i32, i32* %ac_tbl_no, align 4, !tbaa !34
  call void @emit_dht(%struct.jpeg_compress_struct* %20, i32 %22, i32 1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.end
  br label %if.end.12

if.else.9:                                        ; preds = %for.body
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 5
  %25 = load i32, i32* %dc_tbl_no10, align 4, !tbaa !33
  call void @emit_dht(%struct.jpeg_compress_struct* %23, i32 %25, i32 0)
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 6
  %28 = load i32, i32* %ac_tbl_no11, align 4, !tbaa !34
  call void @emit_dht(%struct.jpeg_compress_struct* %26, i32 %28, i32 1)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.9, %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %29 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %if.then
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 29
  %31 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool14 = icmp ne i32 %31, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_dri(%struct.jpeg_compress_struct* %32)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_sos(%struct.jpeg_compress_struct* %33)
  %34 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_file_trailer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 217)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_tables_only(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %1, i32 216)
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !22
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %5 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8, !tbaa !2
  %cmp1 = icmp ne %struct.JQUANT_TBL* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = load i32, i32* %i, align 4, !tbaa !22
  %call = call i32 @emit_dqt(%struct.jpeg_compress_struct* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 24
  %10 = load i32, i32* %arith_code, align 4, !tbaa !30
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.19, label %if.then.2

if.then.2:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.16, %if.then.2
  %11 = load i32, i32* %i, align 4, !tbaa !22
  %cmp4 = icmp slt i32 %11, 4
  br i1 %cmp4, label %for.body.5, label %for.end.18

for.body.5:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 16
  %arrayidx7 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom6
  %14 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx7, align 8, !tbaa !2
  %cmp8 = icmp ne %struct.JHUFF_TBL* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.5
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = load i32, i32* %i, align 4, !tbaa !22
  call void @emit_dht(%struct.jpeg_compress_struct* %15, i32 %16, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.body.5
  %17 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 17
  %arrayidx12 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom11
  %19 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx12, align 8, !tbaa !2
  %cmp13 = icmp ne %struct.JHUFF_TBL* %19, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %21 = load i32, i32* %i, align 4, !tbaa !22
  call void @emit_dht(%struct.jpeg_compress_struct* %20, i32 %21, i32 1)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %22 = load i32, i32* %i, align 4, !tbaa !22
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !22
  br label %for.cond.3

for.end.18:                                       ; preds = %for.cond.3
  br label %if.end.19

if.end.19:                                        ; preds = %for.end.18, %for.end
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %23, i32 217)
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_marker(%struct.jpeg_compress_struct* %cinfo, i32 %mark) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %mark.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %mark, i32* %mark.addr, align 4, !tbaa !23
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %0, i32 255)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %2 = load i32, i32* %mark.addr, align 4, !tbaa !23
  call void @emit_byte(%struct.jpeg_compress_struct* %1, i32 %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_2bytes(%struct.jpeg_compress_struct* %cinfo, i32 %value) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %value.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %value, i32* %value.addr, align 4, !tbaa !22
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %1 = load i32, i32* %value.addr, align 4, !tbaa !22
  %shr = ashr i32 %1, 8
  %and = and i32 %shr, 255
  call void @emit_byte(%struct.jpeg_compress_struct* %0, i32 %and)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %3 = load i32, i32* %value.addr, align 4, !tbaa !22
  %and1 = and i32 %3, 255
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 %and1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_byte(%struct.jpeg_compress_struct* %cinfo, i32 %val) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %val.addr = alloca i32, align 4
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %val, i32* %val.addr, align 4, !tbaa !22
  %0 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !43
  store %struct.jpeg_destination_mgr* %2, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %3 = load i32, i32* %val.addr, align 4, !tbaa !22
  %conv = trunc i32 %3 to i8
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 0
  %5 = load i8*, i8** %next_output_byte, align 8, !tbaa !44
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !44
  store i8 %conv, i8* %5, align 1, !tbaa !23
  %6 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %6, i32 0, i32 1
  %7 = load i64, i64* %free_in_buffer, align 8, !tbaa !46
  %dec = add i64 %7, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !46
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 3
  %9 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8, !tbaa !47
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %9(%struct.jpeg_compress_struct* %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 22, i32* %msg_code, align 4, !tbaa !36
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %18 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @emit_jfif_app0(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 224)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 16)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 74)
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %3, i32 70)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %4, i32 73)
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %5, i32 70)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %6, i32 0)
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %7, i32 1)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %8, i32 1)
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 32
  %11 = load i8, i8* %density_unit, align 1, !tbaa !49
  %conv = zext i8 %11 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %9, i32 %conv)
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 33
  %14 = load i16, i16* %X_density, align 2, !tbaa !50
  %conv1 = zext i16 %14 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* %12, i32 %conv1)
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 34
  %17 = load i16, i16* %Y_density, align 2, !tbaa !51
  %conv2 = zext i16 %17 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* %15, i32 %conv2)
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %18, i32 0)
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %19, i32 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_adobe_app14(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 238)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 14)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %2, i32 65)
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %3, i32 100)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %4, i32 111)
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %5, i32 98)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %6, i32 101)
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %7, i32 100)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %8, i32 0)
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %9, i32 0)
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 13
  %11 = load i32, i32* %jpeg_color_space, align 4, !tbaa !52
  switch i32 %11, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %12, i32 1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %13, i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_byte(%struct.jpeg_compress_struct* %14, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @emit_dqt(%struct.jpeg_compress_struct* %cinfo, i32 %index) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %index.addr = alloca i32, align 4
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %prec = alloca i32, align 4
  %i = alloca i32, align 4
  %qval = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %index, i32* %index.addr, align 4, !tbaa !22
  %0 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %index.addr, align 4, !tbaa !22
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %3 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8, !tbaa !2
  store %struct.JQUANT_TBL* %3, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %4 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %cmp = icmp eq %struct.JQUANT_TBL* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 5
  store i32 51, i32* %msg_code, align 4, !tbaa !36
  %9 = load i32, i32* %index.addr, align 4, !tbaa !22
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !35
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 6
  %i2 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* %i2, i32 0, i64 0
  store i32 %9, i32* %arrayidx3, align 4, !tbaa !22
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = bitcast %struct.jpeg_compress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %prec, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !22
  %cmp5 = icmp slt i32 %17, 64
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom6 = sext i32 %18 to i64
  %19 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %19, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom6
  %20 = load i16, i16* %arrayidx7, align 2, !tbaa !53
  %conv = zext i16 %20 to i32
  %cmp8 = icmp sgt i32 %conv, 255
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  store i32 1, i32* %prec, align 4, !tbaa !22
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %21 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %22, i32 0, i32 1
  %23 = load i32, i32* %sent_table, align 4, !tbaa !54
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.end.31, label %if.then.12

if.then.12:                                       ; preds = %for.end
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %24, i32 219)
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %26 = load i32, i32* %prec, align 4, !tbaa !22
  %tobool13 = icmp ne i32 %26, 0
  %cond = select i1 %tobool13, i32 131, i32 67
  call void @emit_2bytes(%struct.jpeg_compress_struct* %25, i32 %cond)
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %28 = load i32, i32* %index.addr, align 4, !tbaa !22
  %29 = load i32, i32* %prec, align 4, !tbaa !22
  %shl = shl i32 %29, 4
  %add = add nsw i32 %28, %shl
  call void @emit_byte(%struct.jpeg_compress_struct* %27, i32 %add)
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %if.then.12
  %30 = load i32, i32* %i, align 4, !tbaa !22
  %cmp15 = icmp slt i32 %30, 64
  br i1 %cmp15, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.14
  %31 = bitcast i32* %qval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom18 = sext i32 %32 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom18
  %33 = load i32, i32* %arrayidx19, align 4, !tbaa !22
  %idxprom20 = sext i32 %33 to i64
  %34 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %quantval21 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %34, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval21, i32 0, i64 %idxprom20
  %35 = load i16, i16* %arrayidx22, align 2, !tbaa !53
  %conv23 = zext i16 %35 to i32
  store i32 %conv23, i32* %qval, align 4, !tbaa !22
  %36 = load i32, i32* %prec, align 4, !tbaa !22
  %tobool24 = icmp ne i32 %36, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body.17
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %38 = load i32, i32* %qval, align 4, !tbaa !22
  %shr = lshr i32 %38, 8
  call void @emit_byte(%struct.jpeg_compress_struct* %37, i32 %shr)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %for.body.17
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %40 = load i32, i32* %qval, align 4, !tbaa !22
  %and = and i32 %40, 255
  call void @emit_byte(%struct.jpeg_compress_struct* %39, i32 %and)
  %41 = bitcast i32* %qval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %42 = load i32, i32* %i, align 4, !tbaa !22
  %inc28 = add nsw i32 %42, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !22
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  %43 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %sent_table30 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %43, i32 0, i32 1
  store i32 1, i32* %sent_table30, align 4, !tbaa !54
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.29, %for.end
  %44 = load i32, i32* %prec, align 4, !tbaa !22
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  ret i32 %44
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_sof(%struct.jpeg_compress_struct* %cinfo, i32 %code) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %code.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %code, i32* %code.addr, align 4, !tbaa !23
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %3 = load i32, i32* %code.addr, align 4, !tbaa !23
  call void @emit_marker(%struct.jpeg_compress_struct* %2, i32 %3)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 12
  %6 = load i32, i32* %num_components, align 4, !tbaa !27
  %mul = mul nsw i32 3, %6
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 5
  %add2 = add nsw i32 %add1, 1
  call void @emit_2bytes(%struct.jpeg_compress_struct* %4, i32 %add2)
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 7
  %8 = load i32, i32* %image_height, align 4, !tbaa !56
  %conv = zext i32 %8 to i64
  %cmp = icmp sgt i64 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 6
  %10 = load i32, i32* %image_width, align 4, !tbaa !57
  %conv4 = zext i32 %10 to i64
  %cmp5 = icmp sgt i64 %conv4, 65535
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 40, i32* %msg_code, align 4, !tbaa !36
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !35
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 65535, i32* %arrayidx, align 4, !tbaa !22
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 11
  %22 = load i32, i32* %data_precision, align 4, !tbaa !32
  call void @emit_byte(%struct.jpeg_compress_struct* %20, i32 %22)
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 7
  %25 = load i32, i32* %image_height9, align 4, !tbaa !56
  call void @emit_2bytes(%struct.jpeg_compress_struct* %23, i32 %25)
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 6
  %28 = load i32, i32* %image_width10, align 4, !tbaa !57
  call void @emit_2bytes(%struct.jpeg_compress_struct* %26, i32 %28)
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 12
  %31 = load i32, i32* %num_components11, align 4, !tbaa !27
  call void @emit_byte(%struct.jpeg_compress_struct* %29, i32 %31)
  store i32 0, i32* %ci, align 4, !tbaa !22
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 14
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !26
  store %struct.jpeg_component_info* %33, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %34 = load i32, i32* %ci, align 4, !tbaa !22
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 12
  %36 = load i32, i32* %num_components12, align 4, !tbaa !27
  %cmp13 = icmp slt i32 %34, %36
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 0
  %39 = load i32, i32* %component_id, align 4, !tbaa !58
  call void @emit_byte(%struct.jpeg_compress_struct* %37, i32 %39)
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 2
  %42 = load i32, i32* %h_samp_factor, align 4, !tbaa !59
  %shl = shl i32 %42, 4
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 0, i32 3
  %44 = load i32, i32* %v_samp_factor, align 4, !tbaa !60
  %add15 = add nsw i32 %shl, %44
  call void @emit_byte(%struct.jpeg_compress_struct* %40, i32 %add15)
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 4
  %47 = load i32, i32* %quant_tbl_no, align 4, !tbaa !28
  call void @emit_byte(%struct.jpeg_compress_struct* %45, i32 %47)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %ci, align 4, !tbaa !22
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !22
  %49 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %49, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_dac(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_dht(%struct.jpeg_compress_struct* %cinfo, i32 %index, i32 %is_ac) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %index.addr = alloca i32, align 4
  %is_ac.addr = alloca i32, align 4
  %htbl = alloca %struct.JHUFF_TBL*, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %index, i32* %index.addr, align 4, !tbaa !22
  store i32 %is_ac, i32* %is_ac.addr, align 4, !tbaa !22
  %0 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %is_ac.addr, align 4, !tbaa !22
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !22
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 17
  %arrayidx = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom
  %6 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %6, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !2
  %7 = load i32, i32* %index.addr, align 4, !tbaa !22
  %add = add nsw i32 %7, 16
  store i32 %add, i32* %index.addr, align 4, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %index.addr, align 4, !tbaa !22
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 16
  %arrayidx2 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom1
  %10 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx2, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %10, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !2
  %cmp = icmp eq %struct.JHUFF_TBL* %11, null
  br i1 %cmp, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !35
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4, !tbaa !36
  %14 = load i32, i32* %index.addr, align 4, !tbaa !22
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !35
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 6
  %i5 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %i5, i32 0, i64 0
  store i32 %14, i32* %arrayidx6, align 4, !tbaa !22
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !35
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !48
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %21 = bitcast %struct.jpeg_compress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  %22 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !2
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %22, i32 0, i32 2
  %23 = load i32, i32* %sent_table, align 4, !tbaa !61
  %tobool9 = icmp ne i32 %23, 0
  br i1 %tobool9, label %if.end.40, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %24, i32 196)
  store i32 0, i32* %length, align 4, !tbaa !22
  store i32 1, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %25 = load i32, i32* %i, align 4, !tbaa !22
  %cmp11 = icmp sle i32 %25, 16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom12 = sext i32 %26 to i64
  %27 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !2
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %27, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom12
  %28 = load i8, i8* %arrayidx13, align 1, !tbaa !23
  %conv = zext i8 %28 to i32
  %29 = load i32, i32* %length, align 4, !tbaa !22
  %add14 = add nsw i32 %29, %conv
  store i32 %add14, i32* %length, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %32 = load i32, i32* %length, align 4, !tbaa !22
  %add15 = add nsw i32 %32, 2
  %add16 = add nsw i32 %add15, 1
  %add17 = add nsw i32 %add16, 16
  call void @emit_2bytes(%struct.jpeg_compress_struct* %31, i32 %add17)
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %34 = load i32, i32* %index.addr, align 4, !tbaa !22
  call void @emit_byte(%struct.jpeg_compress_struct* %33, i32 %34)
  store i32 1, i32* %i, align 4, !tbaa !22
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !22
  %cmp19 = icmp sle i32 %35, 16
  br i1 %cmp19, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.18
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %37 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom22 = sext i32 %37 to i64
  %38 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !2
  %bits23 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %38, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [17 x i8], [17 x i8]* %bits23, i32 0, i64 %idxprom22
  %39 = load i8, i8* %arrayidx24, align 1, !tbaa !23
  %conv25 = zext i8 %39 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %36, i32 %conv25)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.21
  %40 = load i32, i32* %i, align 4, !tbaa !22
  %inc27 = add nsw i32 %40, 1
  store i32 %inc27, i32* %i, align 4, !tbaa !22
  br label %for.cond.18

for.end.28:                                       ; preds = %for.cond.18
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.36, %for.end.28
  %41 = load i32, i32* %i, align 4, !tbaa !22
  %42 = load i32, i32* %length, align 4, !tbaa !22
  %cmp30 = icmp slt i32 %41, %42
  br i1 %cmp30, label %for.body.32, label %for.end.38

for.body.32:                                      ; preds = %for.cond.29
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %44 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !2
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %45, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom33
  %46 = load i8, i8* %arrayidx34, align 1, !tbaa !23
  %conv35 = zext i8 %46 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* %43, i32 %conv35)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.32
  %47 = load i32, i32* %i, align 4, !tbaa !22
  %inc37 = add nsw i32 %47, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !22
  br label %for.cond.29

for.end.38:                                       ; preds = %for.cond.29
  %48 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !2
  %sent_table39 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %48, i32 0, i32 2
  store i32 1, i32* %sent_table39, align 4, !tbaa !61
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.38, %if.end.8
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_dri(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %0, i32 221)
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_2bytes(%struct.jpeg_compress_struct* %1, i32 4)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 29
  %4 = load i32, i32* %restart_interval, align 4, !tbaa !42
  call void @emit_2bytes(%struct.jpeg_compress_struct* %2, i32 %4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_sos(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %i = alloca i32, align 4
  %td = alloca i32, align 4
  %ta = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %td to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %ta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @emit_marker(%struct.jpeg_compress_struct* %4, i32 218)
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 41
  %7 = load i32, i32* %comps_in_scan, align 4, !tbaa !39
  %mul = mul nsw i32 2, %7
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 1
  %add2 = add nsw i32 %add1, 3
  call void @emit_2bytes(%struct.jpeg_compress_struct* %5, i32 %add2)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 41
  %10 = load i32, i32* %comps_in_scan3, align 4, !tbaa !39
  call void @emit_byte(%struct.jpeg_compress_struct* %8, i32 %10)
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !22
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 41
  %13 = load i32, i32* %comps_in_scan4, align 4, !tbaa !39
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %16, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 0
  %19 = load i32, i32* %component_id, align 4, !tbaa !58
  call void @emit_byte(%struct.jpeg_compress_struct* %17, i32 %19)
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 5
  %21 = load i32, i32* %dc_tbl_no, align 4, !tbaa !33
  store i32 %21, i32* %td, align 4, !tbaa !22
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 6
  %23 = load i32, i32* %ac_tbl_no, align 4, !tbaa !34
  store i32 %23, i32* %ta, align 4, !tbaa !22
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 37
  %25 = load i32, i32* %progressive_mode, align 4, !tbaa !31
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 47
  %27 = load i32, i32* %Ss, align 4, !tbaa !40
  %cmp5 = icmp eq i32 %27, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %ta, align 4, !tbaa !22
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 49
  %29 = load i32, i32* %Ah, align 4, !tbaa !41
  %cmp7 = icmp ne i32 %29, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.6
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 24
  %31 = load i32, i32* %arith_code, align 4, !tbaa !30
  %tobool8 = icmp ne i32 %31, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  store i32 0, i32* %td, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then.6
  br label %if.end.10

if.else:                                          ; preds = %if.then
  store i32 0, i32* %td, align 4, !tbaa !22
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %for.body
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %33 = load i32, i32* %td, align 4, !tbaa !22
  %shl = shl i32 %33, 4
  %34 = load i32, i32* %ta, align 4, !tbaa !22
  %add12 = add nsw i32 %shl, %34
  call void @emit_byte(%struct.jpeg_compress_struct* %32, i32 %add12)
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %35 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 47
  %38 = load i32, i32* %Ss13, align 4, !tbaa !40
  call void @emit_byte(%struct.jpeg_compress_struct* %36, i32 %38)
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 48
  %41 = load i32, i32* %Se, align 4, !tbaa !63
  call void @emit_byte(%struct.jpeg_compress_struct* %39, i32 %41)
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 49
  %44 = load i32, i32* %Ah14, align 4, !tbaa !41
  %shl15 = shl i32 %44, 4
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 50
  %46 = load i32, i32* %Al, align 4, !tbaa !64
  %add16 = add nsw i32 %shl15, %46
  call void @emit_byte(%struct.jpeg_compress_struct* %42, i32 %add16)
  %47 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast i32* %ta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %td to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
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
!6 = !{!7, !3, i64 8}
!7 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !9, i64 56, !8, i64 64, !8, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !8, i64 232, !3, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !4, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !4, i64 284, !10, i64 286, !10, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !4, i64 320, !8, i64 352, !8, i64 356, !8, i64 360, !4, i64 364, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!12, !3, i64 0}
!12 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !13, i64 88}
!13 = !{!"long", !4, i64 0}
!14 = !{!7, !3, i64 456}
!15 = !{!16, !3, i64 0}
!16 = !{!"jpeg_marker_writer", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40}
!17 = !{!16, !3, i64 8}
!18 = !{!16, !3, i64 16}
!19 = !{!16, !3, i64 24}
!20 = !{!16, !3, i64 32}
!21 = !{!16, !3, i64 40}
!22 = !{!8, !8, i64 0}
!23 = !{!4, !4, i64 0}
!24 = !{!7, !8, i64 280}
!25 = !{!7, !8, i64 292}
!26 = !{!7, !3, i64 80}
!27 = !{!7, !8, i64 68}
!28 = !{!29, !8, i64 16}
!29 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!30 = !{!7, !8, i64 252}
!31 = !{!7, !8, i64 300}
!32 = !{!7, !8, i64 64}
!33 = !{!29, !8, i64 20}
!34 = !{!29, !8, i64 24}
!35 = !{!7, !3, i64 0}
!36 = !{!37, !8, i64 40}
!37 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!38 = !{!37, !3, i64 8}
!39 = !{!7, !8, i64 316}
!40 = !{!7, !8, i64 404}
!41 = !{!7, !8, i64 412}
!42 = !{!7, !8, i64 272}
!43 = !{!7, !3, i64 32}
!44 = !{!45, !3, i64 0}
!45 = !{!"jpeg_destination_mgr", !3, i64 0, !13, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!46 = !{!45, !13, i64 8}
!47 = !{!45, !3, i64 24}
!48 = !{!37, !3, i64 0}
!49 = !{!7, !4, i64 284}
!50 = !{!7, !10, i64 286}
!51 = !{!7, !10, i64 288}
!52 = !{!7, !4, i64 72}
!53 = !{!10, !10, i64 0}
!54 = !{!55, !8, i64 128}
!55 = !{!"", !4, i64 0, !8, i64 128}
!56 = !{!7, !8, i64 44}
!57 = !{!7, !8, i64 40}
!58 = !{!29, !8, i64 0}
!59 = !{!29, !8, i64 8}
!60 = !{!29, !8, i64 12}
!61 = !{!62, !8, i64 276}
!62 = !{!"", !4, i64 0, !4, i64 17, !8, i64 276}
!63 = !{!7, !8, i64 408}
!64 = !{!7, !8, i64 416}
