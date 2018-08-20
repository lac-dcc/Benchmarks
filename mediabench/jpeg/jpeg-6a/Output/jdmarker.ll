; ModuleID = 'jdmarker.c'
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, {}*, void (%struct.jpeg_decompress_struct*)* }
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
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_resync_to_restart(%struct.jpeg_decompress_struct* %cinfo, i32 %desired) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %desired.addr = alloca i32, align 4
  %marker = alloca i32, align 4
  %action = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %desired, i32* %desired.addr, align 4, !tbaa !6
  %0 = bitcast i32* %marker to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 72
  %2 = load i32, i32* %unread_marker, align 4, !tbaa !8
  store i32 %2, i32* %marker, align 4, !tbaa !6
  %3 = bitcast i32* %action to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #5
  store i32 1, i32* %action, align 4, !tbaa !6
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 117, i32* %msg_code, align 4, !tbaa !13
  %6 = load i32, i32* %marker, align 4, !tbaa !6
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4, !tbaa !6
  %9 = load i32, i32* %desired.addr, align 4, !tbaa !6
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !12
  %msg_parm3 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 6
  %i4 = bitcast %union.anon* %msg_parm3 to [8 x i32]*
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %i4, i32 0, i64 1
  store i32 %9, i32* %arrayidx5, align 4, !tbaa !6
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 1
  %14 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16, i32 -1)
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %17 = load i32, i32* %marker, align 4, !tbaa !6
  %cmp = icmp slt i32 %17, 192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 2, i32* %action, align 4, !tbaa !6
  br label %if.end.32

if.else:                                          ; preds = %for.cond
  %18 = load i32, i32* %marker, align 4, !tbaa !6
  %cmp7 = icmp slt i32 %18, 208
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load i32, i32* %marker, align 4, !tbaa !6
  %cmp8 = icmp sgt i32 %19, 215
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.else
  store i32 3, i32* %action, align 4, !tbaa !6
  br label %if.end.31

if.else.10:                                       ; preds = %lor.lhs.false
  %20 = load i32, i32* %marker, align 4, !tbaa !6
  %21 = load i32, i32* %desired.addr, align 4, !tbaa !6
  %add = add nsw i32 %21, 1
  %and = and i32 %add, 7
  %add11 = add nsw i32 208, %and
  %cmp12 = icmp eq i32 %20, %add11
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.else.10
  %22 = load i32, i32* %marker, align 4, !tbaa !6
  %23 = load i32, i32* %desired.addr, align 4, !tbaa !6
  %add14 = add nsw i32 %23, 2
  %and15 = and i32 %add14, 7
  %add16 = add nsw i32 208, %and15
  %cmp17 = icmp eq i32 %22, %add16
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %lor.lhs.false.13, %if.else.10
  store i32 3, i32* %action, align 4, !tbaa !6
  br label %if.end.30

if.else.19:                                       ; preds = %lor.lhs.false.13
  %24 = load i32, i32* %marker, align 4, !tbaa !6
  %25 = load i32, i32* %desired.addr, align 4, !tbaa !6
  %sub = sub nsw i32 %25, 1
  %and20 = and i32 %sub, 7
  %add21 = add nsw i32 208, %and20
  %cmp22 = icmp eq i32 %24, %add21
  br i1 %cmp22, label %if.then.28, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else.19
  %26 = load i32, i32* %marker, align 4, !tbaa !6
  %27 = load i32, i32* %desired.addr, align 4, !tbaa !6
  %sub24 = sub nsw i32 %27, 2
  %and25 = and i32 %sub24, 7
  %add26 = add nsw i32 208, %and25
  %cmp27 = icmp eq i32 %26, %add26
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %lor.lhs.false.23, %if.else.19
  store i32 2, i32* %action, align 4, !tbaa !6
  br label %if.end

if.else.29:                                       ; preds = %lor.lhs.false.23
  store i32 1, i32* %action, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else.29, %if.then.28
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.18
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.9
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !12
  %msg_code34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 96, i32* %msg_code34, align 4, !tbaa !13
  %30 = load i32, i32* %marker, align 4, !tbaa !6
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !12
  %msg_parm36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 6
  %i37 = bitcast %union.anon* %msg_parm36 to [8 x i32]*
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %i37, i32 0, i64 0
  store i32 %30, i32* %arrayidx38, align 4, !tbaa !6
  %33 = load i32, i32* %action, align 4, !tbaa !6
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !12
  %msg_parm40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 6
  %i41 = bitcast %union.anon* %msg_parm40 to [8 x i32]*
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %i41, i32 0, i64 1
  store i32 %33, i32* %arrayidx42, align 4, !tbaa !6
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8, !tbaa !12
  %emit_message44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 1
  %38 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message44, align 8, !tbaa !16
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %40 = bitcast %struct.jpeg_decompress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* %40, i32 4)
  %41 = load i32, i32* %action, align 4, !tbaa !6
  switch i32 %41, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.46
    i32 3, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end.32
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 72
  store i32 0, i32* %unread_marker45, align 4, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.46:                                         ; preds = %if.end.32
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @next_marker(%struct.jpeg_decompress_struct* %43)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %sw.bb.46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %sw.bb.46
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 72
  %45 = load i32, i32* %unread_marker49, align 4, !tbaa !8
  store i32 %45, i32* %marker, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.32
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.32, %if.end.48
  br label %for.cond

cleanup:                                          ; preds = %sw.bb.50, %if.then.47, %sw.bb
  %46 = bitcast i32* %action to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #5
  %47 = bitcast i32* %marker to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #5
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @next_marker(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %c = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #5
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 5
  %3 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %3, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %4 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #5
  %5 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %5, i32 0, i32 0
  %6 = load i8*, i8** %next_input_byte1, align 8, !tbaa !18
  store i8* %6, i8** %next_input_byte, align 8, !tbaa !2
  %7 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #5
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %8, i32 0, i32 1
  %9 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !20
  store i64 %9, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end.53, %entry
  br label %do.body

do.body:                                          ; preds = %for.cond
  %10 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 3
  %12 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %12(%struct.jpeg_decompress_struct* %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 0
  %15 = load i8*, i8** %next_input_byte4, align 8, !tbaa !18
  store i8* %15, i8** %next_input_byte, align 8, !tbaa !2
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 1
  %17 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !20
  store i64 %17, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %18 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %18, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %19 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %20 = load i8, i8* %19, align 1, !tbaa !23
  %conv = zext i8 %20 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %do.end.27, %do.end
  %21 = load i32, i32* %c, align 4, !tbaa !6
  %cmp7 = icmp ne i32 %21, 255
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 78
  %23 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %23, i32 0, i32 8
  %24 = load i32, i32* %discarded_bytes, align 4, !tbaa !25
  %inc = add i32 %24, 1
  store i32 %inc, i32* %discarded_bytes, align 4, !tbaa !25
  %25 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %26 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %26, i32 0, i32 0
  store i8* %25, i8** %next_input_byte9, align 8, !tbaa !18
  %27 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer10 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 1
  store i64 %27, i64* %bytes_in_buffer10, align 8, !tbaa !20
  br label %do.body.11

do.body.11:                                       ; preds = %while.body
  %29 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp12 = icmp eq i64 %29, 0
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %do.body.11
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 3
  %31 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer15, align 8, !tbaa !22
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call16 = call i32 %31(%struct.jpeg_decompress_struct* %32)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.14
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 0
  %34 = load i8*, i8** %next_input_byte20, align 8, !tbaa !18
  store i8* %34, i8** %next_input_byte, align 8, !tbaa !2
  %35 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %35, i32 0, i32 1
  %36 = load i64, i64* %bytes_in_buffer21, align 8, !tbaa !20
  store i64 %36, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %do.body.11
  %37 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec23 = add i64 %37, -1
  store i64 %dec23, i64* %bytes_in_buffer, align 8, !tbaa !21
  %38 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr24 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr24, i8** %next_input_byte, align 8, !tbaa !2
  %39 = load i8, i8* %38, align 1, !tbaa !23
  %conv25 = zext i8 %39 to i32
  store i32 %conv25, i32* %c, align 4, !tbaa !6
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.22
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.28

do.body.28:                                       ; preds = %do.cond.46, %while.end
  br label %do.body.29

do.body.29:                                       ; preds = %do.body.28
  %40 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp30 = icmp eq i64 %40, 0
  br i1 %cmp30, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %do.body.29
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 3
  %42 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer33, align 8, !tbaa !22
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call34 = call i32 %42(%struct.jpeg_decompress_struct* %43)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.32
  %44 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte38 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %44, i32 0, i32 0
  %45 = load i8*, i8** %next_input_byte38, align 8, !tbaa !18
  store i8* %45, i8** %next_input_byte, align 8, !tbaa !2
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer39 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 1
  %47 = load i64, i64* %bytes_in_buffer39, align 8, !tbaa !20
  store i64 %47, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.37, %do.body.29
  %48 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec41 = add i64 %48, -1
  store i64 %dec41, i64* %bytes_in_buffer, align 8, !tbaa !21
  %49 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr42 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr42, i8** %next_input_byte, align 8, !tbaa !2
  %50 = load i8, i8* %49, align 1, !tbaa !23
  %conv43 = zext i8 %50 to i32
  store i32 %conv43, i32* %c, align 4, !tbaa !6
  br label %do.cond.44

do.cond.44:                                       ; preds = %if.end.40
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.45
  %51 = load i32, i32* %c, align 4, !tbaa !6
  %cmp47 = icmp eq i32 %51, 255
  br i1 %cmp47, label %do.body.28, label %do.end.49

do.end.49:                                        ; preds = %do.cond.46
  %52 = load i32, i32* %c, align 4, !tbaa !6
  %cmp50 = icmp ne i32 %52, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end.49
  br label %for.end

if.end.53:                                        ; preds = %do.end.49
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 78
  %54 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker54, align 8, !tbaa !24
  %discarded_bytes55 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %54, i32 0, i32 8
  %55 = load i32, i32* %discarded_bytes55, align 4, !tbaa !25
  %add = add i32 %55, 2
  store i32 %add, i32* %discarded_bytes55, align 4, !tbaa !25
  %56 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %57 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte56 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %57, i32 0, i32 0
  store i8* %56, i8** %next_input_byte56, align 8, !tbaa !18
  %58 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %59 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer57 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %59, i32 0, i32 1
  store i64 %58, i64* %bytes_in_buffer57, align 8, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %if.then.52
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 78
  %61 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker58, align 8, !tbaa !24
  %discarded_bytes59 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %61, i32 0, i32 8
  %62 = load i32, i32* %discarded_bytes59, align 4, !tbaa !25
  %cmp60 = icmp ne i32 %62, 0
  br i1 %cmp60, label %if.then.62, label %if.end.73

if.then.62:                                       ; preds = %for.end
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 5
  store i32 112, i32* %msg_code, align 4, !tbaa !13
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 78
  %66 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker63, align 8, !tbaa !24
  %discarded_bytes64 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %66, i32 0, i32 8
  %67 = load i32, i32* %discarded_bytes64, align 4, !tbaa !25
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %67, i32* %arrayidx, align 4, !tbaa !6
  %70 = load i32, i32* %c, align 4, !tbaa !6
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8, !tbaa !12
  %msg_parm67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 6
  %i68 = bitcast %union.anon* %msg_parm67 to [8 x i32]*
  %arrayidx69 = getelementptr inbounds [8 x i32], [8 x i32]* %i68, i32 0, i64 1
  store i32 %70, i32* %arrayidx69, align 4, !tbaa !6
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 1
  %75 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %77 = bitcast %struct.jpeg_decompress_struct* %76 to %struct.jpeg_common_struct*
  call void %75(%struct.jpeg_common_struct* %77, i32 -1)
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 78
  %79 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker71, align 8, !tbaa !24
  %discarded_bytes72 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %79, i32 0, i32 8
  store i32 0, i32* %discarded_bytes72, align 4, !tbaa !25
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.62, %for.end
  %80 = load i32, i32* %c, align 4, !tbaa !6
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 72
  store i32 %80, i32* %unread_marker, align 4, !tbaa !8
  %82 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %83 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte74 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %83, i32 0, i32 0
  store i8* %82, i8** %next_input_byte74, align 8, !tbaa !18
  %84 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %85 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer75 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %85, i32 0, i32 1
  store i64 %84, i64* %bytes_in_buffer75, align 8, !tbaa !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.36, %if.then.18, %if.then.3
  %86 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #5
  %87 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #5
  %88 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #5
  %89 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #5
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @jinit_marker_reader(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !27
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !28
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 0, i64 176)
  %6 = bitcast i8* %call to %struct.jpeg_marker_reader*
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 78
  store %struct.jpeg_marker_reader* %6, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 78
  %9 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker1, align 8, !tbaa !24
  %reset_marker_reader = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %9, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*)* @reset_marker_reader, void (%struct.jpeg_decompress_struct*)** %reset_marker_reader, align 8, !tbaa !30
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 78
  %11 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker2, align 8, !tbaa !24
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %11, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @read_markers, i32 (%struct.jpeg_decompress_struct*)** %read_markers, align 8, !tbaa !31
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 78
  %13 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker3, align 8, !tbaa !24
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %13, i32 0, i32 2
  store i32 (%struct.jpeg_decompress_struct*)* @read_restart_marker, i32 (%struct.jpeg_decompress_struct*)** %read_restart_marker, align 8, !tbaa !32
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 78
  %15 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker4, align 8, !tbaa !24
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %15, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* @skip_variable, i32 (%struct.jpeg_decompress_struct*)** %process_COM, align 8, !tbaa !33
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %16, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 78
  %19 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker5, align 8, !tbaa !24
  %process_APPn = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %19, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn, i32 0, i64 %idxprom
  store i32 (%struct.jpeg_decompress_struct*)* @skip_variable, i32 (%struct.jpeg_decompress_struct*)** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 78
  %22 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker6, align 8, !tbaa !24
  %process_APPn7 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %22, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn7, i32 0, i64 0
  store i32 (%struct.jpeg_decompress_struct*)* @get_app0, i32 (%struct.jpeg_decompress_struct*)** %arrayidx8, align 8, !tbaa !2
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 78
  %24 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker9, align 8, !tbaa !24
  %process_APPn10 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %24, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn10, i32 0, i64 14
  store i32 (%struct.jpeg_decompress_struct*)* @get_app14, i32 (%struct.jpeg_decompress_struct*)** %arrayidx11, align 8, !tbaa !2
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @reset_marker_reader(%struct.jpeg_decompress_struct* %25)
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @reset_marker_reader(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 43
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !34
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 34
  store i32 0, i32* %input_scan_number, align 4, !tbaa !35
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 72
  store i32 0, i32* %unread_marker, align 4, !tbaa !8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 78
  %4 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %4, i32 0, i32 5
  store i32 0, i32* %saw_SOI, align 4, !tbaa !36
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 78
  %6 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker1, align 8, !tbaa !24
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %6, i32 0, i32 6
  store i32 0, i32* %saw_SOF, align 4, !tbaa !37
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 78
  %8 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker2, align 8, !tbaa !24
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %8, i32 0, i32 8
  store i32 0, i32* %discarded_bytes, align 4, !tbaa !25
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_markers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 72
  %1 = load i32, i32* %unread_marker, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.cond
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 78
  %3 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %3, i32 0, i32 5
  %4 = load i32, i32* %saw_SOI, align 4, !tbaa !36
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @first_marker(%struct.jpeg_decompress_struct* %5)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.1
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call4 = call i32 @next_marker(%struct.jpeg_decompress_struct* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %for.cond
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 72
  %8 = load i32, i32* %unread_marker10, align 4, !tbaa !8
  switch i32 %8, label %sw.default [
    i32 216, label %sw.bb
    i32 192, label %sw.bb.15
    i32 193, label %sw.bb.15
    i32 194, label %sw.bb.20
    i32 201, label %sw.bb.25
    i32 202, label %sw.bb.30
    i32 195, label %sw.bb.35
    i32 197, label %sw.bb.35
    i32 198, label %sw.bb.35
    i32 199, label %sw.bb.35
    i32 200, label %sw.bb.35
    i32 203, label %sw.bb.35
    i32 205, label %sw.bb.35
    i32 206, label %sw.bb.35
    i32 207, label %sw.bb.35
    i32 218, label %sw.bb.39
    i32 217, label %sw.bb.45
    i32 204, label %sw.bb.50
    i32 196, label %sw.bb.55
    i32 219, label %sw.bb.60
    i32 221, label %sw.bb.65
    i32 224, label %sw.bb.70
    i32 225, label %sw.bb.70
    i32 226, label %sw.bb.70
    i32 227, label %sw.bb.70
    i32 228, label %sw.bb.70
    i32 229, label %sw.bb.70
    i32 230, label %sw.bb.70
    i32 231, label %sw.bb.70
    i32 232, label %sw.bb.70
    i32 233, label %sw.bb.70
    i32 234, label %sw.bb.70
    i32 235, label %sw.bb.70
    i32 236, label %sw.bb.70
    i32 237, label %sw.bb.70
    i32 238, label %sw.bb.70
    i32 239, label %sw.bb.70
    i32 254, label %sw.bb.78
    i32 208, label %sw.bb.84
    i32 209, label %sw.bb.84
    i32 210, label %sw.bb.84
    i32 211, label %sw.bb.84
    i32 212, label %sw.bb.84
    i32 213, label %sw.bb.84
    i32 214, label %sw.bb.84
    i32 215, label %sw.bb.84
    i32 1, label %sw.bb.84
    i32 220, label %sw.bb.94
  ]

sw.bb:                                            ; preds = %if.end.9
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call11 = call i32 @get_soi(%struct.jpeg_decompress_struct* %9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end.9, %if.end.9
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call16 = call i32 @get_sof(%struct.jpeg_decompress_struct* %10, i32 0, i32 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.15
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %sw.bb.15
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.9
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call21 = call i32 @get_sof(%struct.jpeg_decompress_struct* %11, i32 1, i32 0)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %sw.bb.20
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %sw.bb.20
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.9
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call26 = call i32 @get_sof(%struct.jpeg_decompress_struct* %12, i32 0, i32 1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %sw.bb.25
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %sw.bb.25
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.9
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call31 = call i32 @get_sof(%struct.jpeg_decompress_struct* %13, i32 1, i32 1)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %sw.bb.30
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %sw.bb.30
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 59, i32* %msg_code, align 4, !tbaa !13
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 72
  %17 = load i32, i32* %unread_marker36, align 4, !tbaa !8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %17, i32* %arrayidx, align 4, !tbaa !6
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.9
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call40 = call i32 @get_sos(%struct.jpeg_decompress_struct* %25)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %sw.bb.39
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %sw.bb.39
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 72
  store i32 0, i32* %unread_marker44, align 4, !tbaa !8
  store i32 1, i32* %retval
  br label %return

sw.bb.45:                                         ; preds = %if.end.9
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8, !tbaa !12
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 84, i32* %msg_code47, align 4, !tbaa !13
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 1
  %31 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* %33, i32 1)
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 72
  store i32 0, i32* %unread_marker49, align 4, !tbaa !8
  store i32 2, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %if.end.9
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call51 = call i32 @get_dac(%struct.jpeg_decompress_struct* %35)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %sw.bb.50
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %sw.bb.50
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.9
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call56 = call i32 @get_dht(%struct.jpeg_decompress_struct* %36)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %sw.bb.55
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %sw.bb.55
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.9
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call61 = call i32 @get_dqt(%struct.jpeg_decompress_struct* %37)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %sw.bb.60
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %sw.bb.60
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.9
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call66 = call i32 @get_dri(%struct.jpeg_decompress_struct* %38)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %sw.bb.65
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %sw.bb.65
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 72
  %40 = load i32, i32* %unread_marker71, align 4, !tbaa !8
  %sub = sub nsw i32 %40, 224
  %idxprom = sext i32 %sub to i64
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 78
  %42 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker72, align 8, !tbaa !24
  %process_APPn = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %42, i32 0, i32 4
  %arrayidx73 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %process_APPn, i32 0, i64 %idxprom
  %43 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %arrayidx73, align 8, !tbaa !2
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call74 = call i32 %43(%struct.jpeg_decompress_struct* %44)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %sw.bb.70
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %sw.bb.70
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.9
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 78
  %46 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker79, align 8, !tbaa !24
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %46, i32 0, i32 3
  %47 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %process_COM, align 8, !tbaa !33
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call80 = call i32 %47(%struct.jpeg_decompress_struct* %48)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %sw.bb.78
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %sw.bb.78
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err85, align 8, !tbaa !12
  %msg_code86 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 5
  store i32 91, i32* %msg_code86, align 4, !tbaa !13
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 72
  %52 = load i32, i32* %unread_marker87, align 4, !tbaa !8
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err88, align 8, !tbaa !12
  %msg_parm89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 6
  %i90 = bitcast %union.anon* %msg_parm89 to [8 x i32]*
  %arrayidx91 = getelementptr inbounds [8 x i32], [8 x i32]* %i90, i32 0, i64 0
  store i32 %52, i32* %arrayidx91, align 4, !tbaa !6
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err92, align 8, !tbaa !12
  %emit_message93 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 1
  %57 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message93, align 8, !tbaa !16
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %59 = bitcast %struct.jpeg_decompress_struct* %58 to %struct.jpeg_common_struct*
  call void %57(%struct.jpeg_common_struct* %59, i32 1)
  br label %sw.epilog

sw.bb.94:                                         ; preds = %if.end.9
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call95 = call i32 @skip_variable(%struct.jpeg_decompress_struct* %60)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %sw.bb.94
  store i32 0, i32* %retval
  br label %return

if.end.98:                                        ; preds = %sw.bb.94
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.9
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err99, align 8, !tbaa !12
  %msg_code100 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 67, i32* %msg_code100, align 4, !tbaa !13
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 72
  %64 = load i32, i32* %unread_marker101, align 4, !tbaa !8
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err102, align 8, !tbaa !12
  %msg_parm103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 6
  %i104 = bitcast %union.anon* %msg_parm103 to [8 x i32]*
  %arrayidx105 = getelementptr inbounds [8 x i32], [8 x i32]* %i104, i32 0, i64 0
  store i32 %64, i32* %arrayidx105, align 4, !tbaa !6
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err106, align 8, !tbaa !12
  %error_exit107 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 0
  %69 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit107, align 8, !tbaa !38
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %71 = bitcast %struct.jpeg_decompress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.98, %sw.bb.84, %if.end.83, %if.end.77, %if.end.69, %if.end.64, %if.end.59, %if.end.54, %sw.bb.35, %if.end.34, %if.end.29, %if.end.24, %if.end.19, %if.end.14
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 72
  store i32 0, i32* %unread_marker108, align 4, !tbaa !8
  br label %for.cond

return:                                           ; preds = %if.then.97, %if.then.82, %if.then.76, %if.then.68, %if.then.63, %if.then.58, %if.then.53, %sw.bb.45, %if.end.43, %if.then.42, %if.then.33, %if.then.28, %if.then.23, %if.then.18, %if.then.13, %if.then.6, %if.then.3
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_restart_marker(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 72
  %1 = load i32, i32* %unread_marker, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @next_marker(%struct.jpeg_decompress_struct* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 72
  %4 = load i32, i32* %unread_marker3, align 4, !tbaa !8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 78
  %6 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %6, i32 0, i32 7
  %7 = load i32, i32* %next_restart_num, align 4, !tbaa !39
  %add = add nsw i32 208, %7
  %cmp4 = icmp eq i32 %4, %add
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 97, i32* %msg_code, align 4, !tbaa !13
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 78
  %11 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker6, align 8, !tbaa !24
  %next_restart_num7 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %11, i32 0, i32 7
  %12 = load i32, i32* %next_restart_num7, align 4, !tbaa !39
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %12, i32* %arrayidx, align 4, !tbaa !6
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 1
  %17 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %19 = bitcast %struct.jpeg_decompress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19, i32 3)
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 72
  store i32 0, i32* %unread_marker10, align 4, !tbaa !8
  br label %if.end.18

if.else:                                          ; preds = %if.end.2
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 5
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 5
  %resync_to_restart11 = bitcast {}** %resync_to_restart to i32 (%struct.jpeg_decompress_struct*, i32)**
  %23 = load i32 (%struct.jpeg_decompress_struct*, i32)*, i32 (%struct.jpeg_decompress_struct*, i32)** %resync_to_restart11, align 8, !tbaa !40
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 78
  %26 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker12, align 8, !tbaa !24
  %next_restart_num13 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %26, i32 0, i32 7
  %27 = load i32, i32* %next_restart_num13, align 4, !tbaa !39
  %call14 = call i32 %23(%struct.jpeg_decompress_struct* %24, i32 %27)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.5
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 78
  %29 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker19, align 8, !tbaa !24
  %next_restart_num20 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %29, i32 0, i32 7
  %30 = load i32, i32* %next_restart_num20, align 4, !tbaa !39
  %add21 = add nsw i32 %30, 1
  %and = and i32 %add21, 7
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 78
  %32 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker22, align 8, !tbaa !24
  %next_restart_num23 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %32, i32 0, i32 7
  store i32 %and, i32* %next_restart_num23, align 4, !tbaa !39
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.16, %if.then.1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @skip_variable(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #5
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 5
  %3 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %3, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %4 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #5
  %5 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %5, i32 0, i32 0
  %6 = load i8*, i8** %next_input_byte1, align 8, !tbaa !18
  store i8* %6, i8** %next_input_byte, align 8, !tbaa !2
  %7 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #5
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %8, i32 0, i32 1
  %9 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !20
  store i64 %9, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 3
  %12 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %12(%struct.jpeg_decompress_struct* %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 0
  %15 = load i8*, i8** %next_input_byte4, align 8, !tbaa !18
  store i8* %15, i8** %next_input_byte, align 8, !tbaa !2
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 1
  %17 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !20
  store i64 %17, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %18 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %18, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %19 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %20 = load i8, i8* %19, align 1, !tbaa !23
  %conv = zext i8 %20 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !21
  %21 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp8 = icmp eq i64 %21, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 3
  %23 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !22
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call12 = call i32 %23(%struct.jpeg_decompress_struct* %24)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %25 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %25, i32 0, i32 0
  %26 = load i8*, i8** %next_input_byte16, align 8, !tbaa !18
  store i8* %26, i8** %next_input_byte, align 8, !tbaa !2
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 1
  %28 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !20
  store i64 %28, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %29 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec19 = add i64 %29, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !21
  %30 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !2
  %31 = load i8, i8* %30, align 1, !tbaa !23
  %conv21 = zext i8 %31 to i64
  %32 = load i64, i64* %length, align 8, !tbaa !21
  %add = add nsw i64 %32, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 90, i32* %msg_code, align 4, !tbaa !13
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 72
  %36 = load i32, i32* %unread_marker, align 4, !tbaa !8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %36, i32* %arrayidx, align 4, !tbaa !6
  %39 = load i64, i64* %length, align 8, !tbaa !21
  %conv23 = trunc i64 %39 to i32
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8, !tbaa !12
  %msg_parm25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 6
  %i26 = bitcast %union.anon* %msg_parm25 to [8 x i32]*
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %i26, i32 0, i64 1
  store i32 %conv23, i32* %arrayidx27, align 4, !tbaa !6
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err28, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 1
  %44 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %46 = bitcast %struct.jpeg_decompress_struct* %45 to %struct.jpeg_common_struct*
  call void %44(%struct.jpeg_common_struct* %46, i32 1)
  %47 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %48 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte29 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %48, i32 0, i32 0
  store i8* %47, i8** %next_input_byte29, align 8, !tbaa !18
  %49 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %50 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer30 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %50, i32 0, i32 1
  store i64 %49, i64* %bytes_in_buffer30, align 8, !tbaa !20
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 5
  %52 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src31, align 8, !tbaa !17
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %52, i32 0, i32 4
  %53 = load void (%struct.jpeg_decompress_struct*, i64)*, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8, !tbaa !41
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %55 = load i64, i64* %length, align 8, !tbaa !21
  %sub = sub nsw i64 %55, 2
  call void %53(%struct.jpeg_decompress_struct* %54, i64 %sub)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.14, %if.then.3
  %56 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #5
  %57 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #5
  %58 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #5
  %59 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #5
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_app0(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %b = alloca [14 x i8], align 1
  %buffp = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast [14 x i8]* %b to i8*
  call void @llvm.lifetime.start(i64 14, i8* %1) #5
  %2 = bitcast i32* %buffp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #5
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 5
  %5 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %5, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %6 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #5
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 0
  %8 = load i8*, i8** %next_input_byte1, align 8, !tbaa !18
  store i8* %8, i8** %next_input_byte, align 8, !tbaa !2
  %9 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #5
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 1
  %11 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !20
  store i64 %11, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %13 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %13, i32 0, i32 3
  %14 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %14(%struct.jpeg_decompress_struct* %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 0
  %17 = load i8*, i8** %next_input_byte4, align 8, !tbaa !18
  store i8* %17, i8** %next_input_byte, align 8, !tbaa !2
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 1
  %19 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !20
  store i64 %19, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %20 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %20, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %21 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %22 = load i8, i8* %21, align 1, !tbaa !23
  %conv = zext i8 %22 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !21
  %23 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp8 = icmp eq i64 %23, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %24 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %24, i32 0, i32 3
  %25 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !22
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call12 = call i32 %25(%struct.jpeg_decompress_struct* %26)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 0
  %28 = load i8*, i8** %next_input_byte16, align 8, !tbaa !18
  store i8* %28, i8** %next_input_byte, align 8, !tbaa !2
  %29 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %29, i32 0, i32 1
  %30 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !20
  store i64 %30, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %31 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec19 = add i64 %31, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !21
  %32 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !23
  %conv21 = zext i8 %33 to i64
  %34 = load i64, i64* %length, align 8, !tbaa !21
  %add = add nsw i64 %34, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load i64, i64* %length, align 8, !tbaa !21
  %sub = sub nsw i64 %35, 2
  store i64 %sub, i64* %length, align 8, !tbaa !21
  %36 = load i64, i64* %length, align 8, !tbaa !21
  %cmp22 = icmp sge i64 %36, 14
  br i1 %cmp22, label %if.then.24, label %if.else.194

if.then.24:                                       ; preds = %do.end
  store i32 0, i32* %buffp, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %37 = load i32, i32* %buffp, align 4, !tbaa !6
  %cmp25 = icmp slt i32 %37, 14
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.27

do.body.27:                                       ; preds = %for.body
  %38 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp28 = icmp eq i64 %38, 0
  br i1 %cmp28, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %do.body.27
  %39 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %39, i32 0, i32 3
  %40 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer31, align 8, !tbaa !22
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call32 = call i32 %40(%struct.jpeg_decompress_struct* %41)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.30
  %42 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %42, i32 0, i32 0
  %43 = load i8*, i8** %next_input_byte36, align 8, !tbaa !18
  store i8* %43, i8** %next_input_byte, align 8, !tbaa !2
  %44 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %44, i32 0, i32 1
  %45 = load i64, i64* %bytes_in_buffer37, align 8, !tbaa !20
  store i64 %45, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.35, %do.body.27
  %46 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec39 = add i64 %46, -1
  store i64 %dec39, i64* %bytes_in_buffer, align 8, !tbaa !21
  %47 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr40 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr40, i8** %next_input_byte, align 8, !tbaa !2
  %48 = load i8, i8* %47, align 1, !tbaa !23
  %49 = load i32, i32* %buffp, align 4, !tbaa !6
  %idxprom = sext i32 %49 to i64
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 %idxprom
  store i8 %48, i8* %arrayidx, align 1, !tbaa !23
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.38
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  br label %for.inc

for.inc:                                          ; preds = %do.end.42
  %50 = load i32, i32* %buffp, align 4, !tbaa !6
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %buffp, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i64, i64* %length, align 8, !tbaa !21
  %sub43 = sub nsw i64 %51, 14
  store i64 %sub43, i64* %length, align 8, !tbaa !21
  %arrayidx44 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 0
  %52 = load i8, i8* %arrayidx44, align 1, !tbaa !23
  %conv45 = zext i8 %52 to i32
  %cmp46 = icmp eq i32 %conv45, 74
  br i1 %cmp46, label %land.lhs.true, label %if.else.182

land.lhs.true:                                    ; preds = %for.end
  %arrayidx48 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 1
  %53 = load i8, i8* %arrayidx48, align 1, !tbaa !23
  %conv49 = zext i8 %53 to i32
  %cmp50 = icmp eq i32 %conv49, 70
  br i1 %cmp50, label %land.lhs.true.52, label %if.else.182

land.lhs.true.52:                                 ; preds = %land.lhs.true
  %arrayidx53 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 2
  %54 = load i8, i8* %arrayidx53, align 1, !tbaa !23
  %conv54 = zext i8 %54 to i32
  %cmp55 = icmp eq i32 %conv54, 73
  br i1 %cmp55, label %land.lhs.true.57, label %if.else.182

land.lhs.true.57:                                 ; preds = %land.lhs.true.52
  %arrayidx58 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 3
  %55 = load i8, i8* %arrayidx58, align 1, !tbaa !23
  %conv59 = zext i8 %55 to i32
  %cmp60 = icmp eq i32 %conv59, 70
  br i1 %cmp60, label %land.lhs.true.62, label %if.else.182

land.lhs.true.62:                                 ; preds = %land.lhs.true.57
  %arrayidx63 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 4
  %56 = load i8, i8* %arrayidx63, align 1, !tbaa !23
  %conv64 = zext i8 %56 to i32
  %cmp65 = icmp eq i32 %conv64, 0
  br i1 %cmp65, label %if.then.67, label %if.else.182

if.then.67:                                       ; preds = %land.lhs.true.62
  %arrayidx68 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 5
  %57 = load i8, i8* %arrayidx68, align 1, !tbaa !23
  %conv69 = zext i8 %57 to i32
  %cmp70 = icmp ne i32 %conv69, 1
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.then.67
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 5
  store i32 115, i32* %msg_code, align 4, !tbaa !13
  %arrayidx73 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 5
  %60 = load i8, i8* %arrayidx73, align 1, !tbaa !23
  %conv74 = zext i8 %60 to i32
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err75, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx76 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %conv74, i32* %arrayidx76, align 4, !tbaa !6
  %arrayidx77 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 6
  %63 = load i8, i8* %arrayidx77, align 1, !tbaa !23
  %conv78 = zext i8 %63 to i32
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8, !tbaa !12
  %msg_parm80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 6
  %i81 = bitcast %union.anon* %msg_parm80 to [8 x i32]*
  %arrayidx82 = getelementptr inbounds [8 x i32], [8 x i32]* %i81, i32 0, i64 1
  store i32 %conv78, i32* %arrayidx82, align 4, !tbaa !6
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err83, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 1
  %68 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %70 = bitcast %struct.jpeg_decompress_struct* %69 to %struct.jpeg_common_struct*
  call void %68(%struct.jpeg_common_struct* %70, i32 -1)
  br label %if.end.106

if.else:                                          ; preds = %if.then.67
  %arrayidx84 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 6
  %71 = load i8, i8* %arrayidx84, align 1, !tbaa !23
  %conv85 = zext i8 %71 to i32
  %cmp86 = icmp sgt i32 %conv85, 2
  br i1 %cmp86, label %if.then.88, label %if.end.105

if.then.88:                                       ; preds = %if.else
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err89, align 8, !tbaa !12
  %msg_code90 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 5
  store i32 88, i32* %msg_code90, align 4, !tbaa !13
  %arrayidx91 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 5
  %74 = load i8, i8* %arrayidx91, align 1, !tbaa !23
  %conv92 = zext i8 %74 to i32
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err93, align 8, !tbaa !12
  %msg_parm94 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 6
  %i95 = bitcast %union.anon* %msg_parm94 to [8 x i32]*
  %arrayidx96 = getelementptr inbounds [8 x i32], [8 x i32]* %i95, i32 0, i64 0
  store i32 %conv92, i32* %arrayidx96, align 4, !tbaa !6
  %arrayidx97 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 6
  %77 = load i8, i8* %arrayidx97, align 1, !tbaa !23
  %conv98 = zext i8 %77 to i32
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err99, align 8, !tbaa !12
  %msg_parm100 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 6
  %i101 = bitcast %union.anon* %msg_parm100 to [8 x i32]*
  %arrayidx102 = getelementptr inbounds [8 x i32], [8 x i32]* %i101, i32 0, i64 1
  store i32 %conv98, i32* %arrayidx102, align 4, !tbaa !6
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err103, align 8, !tbaa !12
  %emit_message104 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 1
  %82 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message104, align 8, !tbaa !16
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %84 = bitcast %struct.jpeg_decompress_struct* %83 to %struct.jpeg_common_struct*
  call void %82(%struct.jpeg_common_struct* %84, i32 1)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.88, %if.else
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.72
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 50
  store i32 1, i32* %saw_JFIF_marker, align 4, !tbaa !42
  %arrayidx107 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 7
  %86 = load i8, i8* %arrayidx107, align 1, !tbaa !23
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 51
  store i8 %86, i8* %density_unit, align 1, !tbaa !43
  %arrayidx108 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 8
  %88 = load i8, i8* %arrayidx108, align 1, !tbaa !23
  %conv109 = zext i8 %88 to i32
  %shl110 = shl i32 %conv109, 8
  %arrayidx111 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 9
  %89 = load i8, i8* %arrayidx111, align 1, !tbaa !23
  %conv112 = zext i8 %89 to i32
  %add113 = add nsw i32 %shl110, %conv112
  %conv114 = trunc i32 %add113 to i16
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 52
  store i16 %conv114, i16* %X_density, align 2, !tbaa !44
  %arrayidx115 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 10
  %91 = load i8, i8* %arrayidx115, align 1, !tbaa !23
  %conv116 = zext i8 %91 to i32
  %shl117 = shl i32 %conv116, 8
  %arrayidx118 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 11
  %92 = load i8, i8* %arrayidx118, align 1, !tbaa !23
  %conv119 = zext i8 %92 to i32
  %add120 = add nsw i32 %shl117, %conv119
  %conv121 = trunc i32 %add120 to i16
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 53
  store i16 %conv121, i16* %Y_density, align 2, !tbaa !45
  br label %do.body.122

do.body.122:                                      ; preds = %if.end.106
  %94 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #5
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err123, align 8, !tbaa !12
  %msg_parm124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 6
  %i125 = bitcast %union.anon* %msg_parm124 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i125, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !2
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %X_density126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 52
  %98 = load i16, i16* %X_density126, align 2, !tbaa !44
  %conv127 = zext i16 %98 to i32
  %99 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx128 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %conv127, i32* %arrayidx128, align 4, !tbaa !6
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Y_density129 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 53
  %101 = load i16, i16* %Y_density129, align 2, !tbaa !45
  %conv130 = zext i16 %101 to i32
  %102 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx131 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %conv130, i32* %arrayidx131, align 4, !tbaa !6
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %density_unit132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 51
  %104 = load i8, i8* %density_unit132, align 1, !tbaa !43
  %conv133 = zext i8 %104 to i32
  %105 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx134 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %conv133, i32* %arrayidx134, align 4, !tbaa !6
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 0
  %107 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err135, align 8, !tbaa !12
  %msg_code136 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %107, i32 0, i32 5
  store i32 86, i32* %msg_code136, align 4, !tbaa !13
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err137 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err137, align 8, !tbaa !12
  %emit_message138 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 1
  %110 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message138, align 8, !tbaa !16
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %112 = bitcast %struct.jpeg_decompress_struct* %111 to %struct.jpeg_common_struct*
  call void %110(%struct.jpeg_common_struct* %112, i32 1)
  %113 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #5
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.body.122
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  %arrayidx141 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 12
  %114 = load i8, i8* %arrayidx141, align 1, !tbaa !23
  %conv142 = zext i8 %114 to i32
  %arrayidx143 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 13
  %115 = load i8, i8* %arrayidx143, align 1, !tbaa !23
  %conv144 = zext i8 %115 to i32
  %or = or i32 %conv142, %conv144
  %tobool145 = icmp ne i32 %or, 0
  br i1 %tobool145, label %if.then.146, label %if.end.163

if.then.146:                                      ; preds = %do.end.140
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err147 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 0
  %117 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err147, align 8, !tbaa !12
  %msg_code148 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %117, i32 0, i32 5
  store i32 89, i32* %msg_code148, align 4, !tbaa !13
  %arrayidx149 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 12
  %118 = load i8, i8* %arrayidx149, align 1, !tbaa !23
  %conv150 = zext i8 %118 to i32
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err151 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err151, align 8, !tbaa !12
  %msg_parm152 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i32 0, i32 6
  %i153 = bitcast %union.anon* %msg_parm152 to [8 x i32]*
  %arrayidx154 = getelementptr inbounds [8 x i32], [8 x i32]* %i153, i32 0, i64 0
  store i32 %conv150, i32* %arrayidx154, align 4, !tbaa !6
  %arrayidx155 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 13
  %121 = load i8, i8* %arrayidx155, align 1, !tbaa !23
  %conv156 = zext i8 %121 to i32
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err157 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err157, align 8, !tbaa !12
  %msg_parm158 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i32 0, i32 6
  %i159 = bitcast %union.anon* %msg_parm158 to [8 x i32]*
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* %i159, i32 0, i64 1
  store i32 %conv156, i32* %arrayidx160, align 4, !tbaa !6
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err161 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 0
  %125 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err161, align 8, !tbaa !12
  %emit_message162 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %125, i32 0, i32 1
  %126 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message162, align 8, !tbaa !16
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %128 = bitcast %struct.jpeg_decompress_struct* %127 to %struct.jpeg_common_struct*
  call void %126(%struct.jpeg_common_struct* %128, i32 1)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.146, %do.end.140
  %129 = load i64, i64* %length, align 8, !tbaa !21
  %arrayidx164 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 12
  %130 = load i8, i8* %arrayidx164, align 1, !tbaa !23
  %conv165 = zext i8 %130 to i64
  %arrayidx166 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 13
  %131 = load i8, i8* %arrayidx166, align 1, !tbaa !23
  %conv167 = zext i8 %131 to i64
  %mul = mul nsw i64 %conv165, %conv167
  %mul168 = mul nsw i64 %mul, 3
  %cmp169 = icmp ne i64 %129, %mul168
  br i1 %cmp169, label %if.then.171, label %if.end.181

if.then.171:                                      ; preds = %if.end.163
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err172 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %132, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err172, align 8, !tbaa !12
  %msg_code173 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 5
  store i32 87, i32* %msg_code173, align 4, !tbaa !13
  %134 = load i64, i64* %length, align 8, !tbaa !21
  %conv174 = trunc i64 %134 to i32
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err175 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err175, align 8, !tbaa !12
  %msg_parm176 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i32 0, i32 6
  %i177 = bitcast %union.anon* %msg_parm176 to [8 x i32]*
  %arrayidx178 = getelementptr inbounds [8 x i32], [8 x i32]* %i177, i32 0, i64 0
  store i32 %conv174, i32* %arrayidx178, align 4, !tbaa !6
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err179 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 0
  %138 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err179, align 8, !tbaa !12
  %emit_message180 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %138, i32 0, i32 1
  %139 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message180, align 8, !tbaa !16
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %141 = bitcast %struct.jpeg_decompress_struct* %140 to %struct.jpeg_common_struct*
  call void %139(%struct.jpeg_common_struct* %141, i32 1)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.171, %if.end.163
  br label %if.end.193

if.else.182:                                      ; preds = %land.lhs.true.62, %land.lhs.true.57, %land.lhs.true.52, %land.lhs.true, %for.end
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err183 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %142, i32 0, i32 0
  %143 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err183, align 8, !tbaa !12
  %msg_code184 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %143, i32 0, i32 5
  store i32 76, i32* %msg_code184, align 4, !tbaa !13
  %144 = load i64, i64* %length, align 8, !tbaa !21
  %conv185 = trunc i64 %144 to i32
  %add186 = add nsw i32 %conv185, 14
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %145, i32 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err187, align 8, !tbaa !12
  %msg_parm188 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 6
  %i189 = bitcast %union.anon* %msg_parm188 to [8 x i32]*
  %arrayidx190 = getelementptr inbounds [8 x i32], [8 x i32]* %i189, i32 0, i64 0
  store i32 %add186, i32* %arrayidx190, align 4, !tbaa !6
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err191 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err191, align 8, !tbaa !12
  %emit_message192 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 1
  %149 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message192, align 8, !tbaa !16
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %151 = bitcast %struct.jpeg_decompress_struct* %150 to %struct.jpeg_common_struct*
  call void %149(%struct.jpeg_common_struct* %151, i32 1)
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.182, %if.end.181
  br label %if.end.204

if.else.194:                                      ; preds = %do.end
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 0
  %153 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err195, align 8, !tbaa !12
  %msg_code196 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %153, i32 0, i32 5
  store i32 76, i32* %msg_code196, align 4, !tbaa !13
  %154 = load i64, i64* %length, align 8, !tbaa !21
  %conv197 = trunc i64 %154 to i32
  %155 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err198 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %155, i32 0, i32 0
  %156 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err198, align 8, !tbaa !12
  %msg_parm199 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %156, i32 0, i32 6
  %i200 = bitcast %union.anon* %msg_parm199 to [8 x i32]*
  %arrayidx201 = getelementptr inbounds [8 x i32], [8 x i32]* %i200, i32 0, i64 0
  store i32 %conv197, i32* %arrayidx201, align 4, !tbaa !6
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err202 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err202, align 8, !tbaa !12
  %emit_message203 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i32 0, i32 1
  %159 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message203, align 8, !tbaa !16
  %160 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %161 = bitcast %struct.jpeg_decompress_struct* %160 to %struct.jpeg_common_struct*
  call void %159(%struct.jpeg_common_struct* %161, i32 1)
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.194, %if.end.193
  %162 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %163 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte205 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %163, i32 0, i32 0
  store i8* %162, i8** %next_input_byte205, align 8, !tbaa !18
  %164 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %165 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer206 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %165, i32 0, i32 1
  store i64 %164, i64* %bytes_in_buffer206, align 8, !tbaa !20
  %166 = load i64, i64* %length, align 8, !tbaa !21
  %cmp207 = icmp sgt i64 %166, 0
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %if.end.204
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src210 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %167, i32 0, i32 5
  %168 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src210, align 8, !tbaa !17
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %168, i32 0, i32 4
  %169 = load void (%struct.jpeg_decompress_struct*, i64)*, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8, !tbaa !41
  %170 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %171 = load i64, i64* %length, align 8, !tbaa !21
  call void %169(%struct.jpeg_decompress_struct* %170, i64 %171)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %if.end.204
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.211, %if.then.34, %if.then.14, %if.then.3
  %172 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #5
  %173 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #5
  %174 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #5
  %175 = bitcast i32* %buffp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #5
  %176 = bitcast [14 x i8]* %b to i8*
  call void @llvm.lifetime.end(i64 14, i8* %176) #5
  %177 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #5
  %178 = load i32, i32* %retval
  ret i32 %178
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_app14(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %b = alloca [12 x i8], align 1
  %buffp = alloca i32, align 4
  %version = alloca i32, align 4
  %flags0 = alloca i32, align 4
  %flags1 = alloca i32, align 4
  %transform = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast [12 x i8]* %b to i8*
  call void @llvm.lifetime.start(i64 12, i8* %1) #5
  %2 = bitcast i32* %buffp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #5
  %4 = bitcast i32* %flags0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast i32* %flags1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #5
  %6 = bitcast i32* %transform to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #5
  %7 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #5
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 5
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %9, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %10 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #5
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 0
  %12 = load i8*, i8** %next_input_byte1, align 8, !tbaa !18
  store i8* %12, i8** %next_input_byte, align 8, !tbaa !2
  %13 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #5
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 1
  %15 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !20
  store i64 %15, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %16, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 3
  %18 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %18(%struct.jpeg_decompress_struct* %19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %20 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %20, i32 0, i32 0
  %21 = load i8*, i8** %next_input_byte4, align 8, !tbaa !18
  store i8* %21, i8** %next_input_byte, align 8, !tbaa !2
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 1
  %23 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !20
  store i64 %23, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %24 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %24, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %25 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %26 = load i8, i8* %25, align 1, !tbaa !23
  %conv = zext i8 %26 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !21
  %27 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp8 = icmp eq i64 %27, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 3
  %29 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !22
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call12 = call i32 %29(%struct.jpeg_decompress_struct* %30)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %31 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %31, i32 0, i32 0
  %32 = load i8*, i8** %next_input_byte16, align 8, !tbaa !18
  store i8* %32, i8** %next_input_byte, align 8, !tbaa !2
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 1
  %34 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !20
  store i64 %34, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %35 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec19 = add i64 %35, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !21
  %36 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !2
  %37 = load i8, i8* %36, align 1, !tbaa !23
  %conv21 = zext i8 %37 to i64
  %38 = load i64, i64* %length, align 8, !tbaa !21
  %add = add nsw i64 %38, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load i64, i64* %length, align 8, !tbaa !21
  %sub = sub nsw i64 %39, 2
  store i64 %sub, i64* %length, align 8, !tbaa !21
  %40 = load i64, i64* %length, align 8, !tbaa !21
  %cmp22 = icmp sge i64 %40, 12
  br i1 %cmp22, label %if.then.24, label %if.else.109

if.then.24:                                       ; preds = %do.end
  store i32 0, i32* %buffp, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %41 = load i32, i32* %buffp, align 4, !tbaa !6
  %cmp25 = icmp slt i32 %41, 12
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.27

do.body.27:                                       ; preds = %for.body
  %42 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp28 = icmp eq i64 %42, 0
  br i1 %cmp28, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %do.body.27
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 3
  %44 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer31, align 8, !tbaa !22
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call32 = call i32 %44(%struct.jpeg_decompress_struct* %45)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.30
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 0
  %47 = load i8*, i8** %next_input_byte36, align 8, !tbaa !18
  store i8* %47, i8** %next_input_byte, align 8, !tbaa !2
  %48 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %48, i32 0, i32 1
  %49 = load i64, i64* %bytes_in_buffer37, align 8, !tbaa !20
  store i64 %49, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.35, %do.body.27
  %50 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec39 = add i64 %50, -1
  store i64 %dec39, i64* %bytes_in_buffer, align 8, !tbaa !21
  %51 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr40 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr40, i8** %next_input_byte, align 8, !tbaa !2
  %52 = load i8, i8* %51, align 1, !tbaa !23
  %53 = load i32, i32* %buffp, align 4, !tbaa !6
  %idxprom = sext i32 %53 to i64
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 %idxprom
  store i8 %52, i8* %arrayidx, align 1, !tbaa !23
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.38
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  br label %for.inc

for.inc:                                          ; preds = %do.end.42
  %54 = load i32, i32* %buffp, align 4, !tbaa !6
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %buffp, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i64, i64* %length, align 8, !tbaa !21
  %sub43 = sub nsw i64 %55, 12
  store i64 %sub43, i64* %length, align 8, !tbaa !21
  %arrayidx44 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 0
  %56 = load i8, i8* %arrayidx44, align 1, !tbaa !23
  %conv45 = zext i8 %56 to i32
  %cmp46 = icmp eq i32 %conv45, 65
  br i1 %cmp46, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %arrayidx48 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 1
  %57 = load i8, i8* %arrayidx48, align 1, !tbaa !23
  %conv49 = zext i8 %57 to i32
  %cmp50 = icmp eq i32 %conv49, 100
  br i1 %cmp50, label %land.lhs.true.52, label %if.else

land.lhs.true.52:                                 ; preds = %land.lhs.true
  %arrayidx53 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 2
  %58 = load i8, i8* %arrayidx53, align 1, !tbaa !23
  %conv54 = zext i8 %58 to i32
  %cmp55 = icmp eq i32 %conv54, 111
  br i1 %cmp55, label %land.lhs.true.57, label %if.else

land.lhs.true.57:                                 ; preds = %land.lhs.true.52
  %arrayidx58 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 3
  %59 = load i8, i8* %arrayidx58, align 1, !tbaa !23
  %conv59 = zext i8 %59 to i32
  %cmp60 = icmp eq i32 %conv59, 98
  br i1 %cmp60, label %land.lhs.true.62, label %if.else

land.lhs.true.62:                                 ; preds = %land.lhs.true.57
  %arrayidx63 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 4
  %60 = load i8, i8* %arrayidx63, align 1, !tbaa !23
  %conv64 = zext i8 %60 to i32
  %cmp65 = icmp eq i32 %conv64, 101
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %land.lhs.true.62
  %arrayidx68 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 5
  %61 = load i8, i8* %arrayidx68, align 1, !tbaa !23
  %conv69 = zext i8 %61 to i32
  %shl70 = shl i32 %conv69, 8
  %arrayidx71 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 6
  %62 = load i8, i8* %arrayidx71, align 1, !tbaa !23
  %conv72 = zext i8 %62 to i32
  %add73 = add nsw i32 %shl70, %conv72
  store i32 %add73, i32* %version, align 4, !tbaa !6
  %arrayidx74 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 7
  %63 = load i8, i8* %arrayidx74, align 1, !tbaa !23
  %conv75 = zext i8 %63 to i32
  %shl76 = shl i32 %conv75, 8
  %arrayidx77 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 8
  %64 = load i8, i8* %arrayidx77, align 1, !tbaa !23
  %conv78 = zext i8 %64 to i32
  %add79 = add nsw i32 %shl76, %conv78
  store i32 %add79, i32* %flags0, align 4, !tbaa !6
  %arrayidx80 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 9
  %65 = load i8, i8* %arrayidx80, align 1, !tbaa !23
  %conv81 = zext i8 %65 to i32
  %shl82 = shl i32 %conv81, 8
  %arrayidx83 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 10
  %66 = load i8, i8* %arrayidx83, align 1, !tbaa !23
  %conv84 = zext i8 %66 to i32
  %add85 = add nsw i32 %shl82, %conv84
  store i32 %add85, i32* %flags1, align 4, !tbaa !6
  %arrayidx86 = getelementptr inbounds [12 x i8], [12 x i8]* %b, i32 0, i64 11
  %67 = load i8, i8* %arrayidx86, align 1, !tbaa !23
  %conv87 = zext i8 %67 to i32
  store i32 %conv87, i32* %transform, align 4, !tbaa !6
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.67
  %68 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #5
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !2
  %71 = load i32, i32* %version, align 4, !tbaa !6
  %72 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %arrayidx89, align 4, !tbaa !6
  %73 = load i32, i32* %flags0, align 4, !tbaa !6
  %74 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %73, i32* %arrayidx90, align 4, !tbaa !6
  %75 = load i32, i32* %flags1, align 4, !tbaa !6
  %76 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx91 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %75, i32* %arrayidx91, align 4, !tbaa !6
  %77 = load i32, i32* %transform, align 4, !tbaa !6
  %78 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx92 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %77, i32* %arrayidx92, align 4, !tbaa !6
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err93, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 5
  store i32 75, i32* %msg_code, align 4, !tbaa !13
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err94, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 1
  %83 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %85 = bitcast %struct.jpeg_decompress_struct* %84 to %struct.jpeg_common_struct*
  call void %83(%struct.jpeg_common_struct* %85, i32 1)
  %86 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #5
  br label %do.cond.95

do.cond.95:                                       ; preds = %do.body.88
  br label %do.end.96

do.end.96:                                        ; preds = %do.cond.95
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 54
  store i32 1, i32* %saw_Adobe_marker, align 4, !tbaa !46
  %88 = load i32, i32* %transform, align 4, !tbaa !6
  %conv97 = trunc i32 %88 to i8
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 55
  store i8 %conv97, i8* %Adobe_transform, align 1, !tbaa !47
  br label %if.end.108

if.else:                                          ; preds = %land.lhs.true.62, %land.lhs.true.57, %land.lhs.true.52, %land.lhs.true, %for.end
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err98, align 8, !tbaa !12
  %msg_code99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 5
  store i32 77, i32* %msg_code99, align 4, !tbaa !13
  %92 = load i64, i64* %length, align 8, !tbaa !21
  %conv100 = trunc i64 %92 to i32
  %add101 = add nsw i32 %conv100, 12
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 0
  %94 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err102, align 8, !tbaa !12
  %msg_parm103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %94, i32 0, i32 6
  %i104 = bitcast %union.anon* %msg_parm103 to [8 x i32]*
  %arrayidx105 = getelementptr inbounds [8 x i32], [8 x i32]* %i104, i32 0, i64 0
  store i32 %add101, i32* %arrayidx105, align 4, !tbaa !6
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err106, align 8, !tbaa !12
  %emit_message107 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 1
  %97 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message107, align 8, !tbaa !16
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %99 = bitcast %struct.jpeg_decompress_struct* %98 to %struct.jpeg_common_struct*
  call void %97(%struct.jpeg_common_struct* %99, i32 1)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else, %do.end.96
  br label %if.end.119

if.else.109:                                      ; preds = %do.end
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err110, align 8, !tbaa !12
  %msg_code111 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 5
  store i32 77, i32* %msg_code111, align 4, !tbaa !13
  %102 = load i64, i64* %length, align 8, !tbaa !21
  %conv112 = trunc i64 %102 to i32
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err113, align 8, !tbaa !12
  %msg_parm114 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 6
  %i115 = bitcast %union.anon* %msg_parm114 to [8 x i32]*
  %arrayidx116 = getelementptr inbounds [8 x i32], [8 x i32]* %i115, i32 0, i64 0
  store i32 %conv112, i32* %arrayidx116, align 4, !tbaa !6
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 0
  %106 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err117, align 8, !tbaa !12
  %emit_message118 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %106, i32 0, i32 1
  %107 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message118, align 8, !tbaa !16
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %109 = bitcast %struct.jpeg_decompress_struct* %108 to %struct.jpeg_common_struct*
  call void %107(%struct.jpeg_common_struct* %109, i32 1)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.109, %if.end.108
  %110 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %111 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte120 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %111, i32 0, i32 0
  store i8* %110, i8** %next_input_byte120, align 8, !tbaa !18
  %112 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %113 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer121 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %113, i32 0, i32 1
  store i64 %112, i64* %bytes_in_buffer121, align 8, !tbaa !20
  %114 = load i64, i64* %length, align 8, !tbaa !21
  %cmp122 = icmp sgt i64 %114, 0
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.119
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 5
  %116 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src125, align 8, !tbaa !17
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %116, i32 0, i32 4
  %117 = load void (%struct.jpeg_decompress_struct*, i64)*, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8, !tbaa !41
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %119 = load i64, i64* %length, align 8, !tbaa !21
  call void %117(%struct.jpeg_decompress_struct* %118, i64 %119)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.end.119
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.126, %if.then.34, %if.then.14, %if.then.3
  %120 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #5
  %121 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #5
  %122 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #5
  %123 = bitcast i32* %transform to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #5
  %124 = bitcast i32* %flags1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #5
  %125 = bitcast i32* %flags0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #5
  %126 = bitcast i32* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #5
  %127 = bitcast i32* %buffp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #5
  %128 = bitcast [12 x i8]* %b to i8*
  call void @llvm.lifetime.end(i64 12, i8* %128) #5
  %129 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #5
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @first_marker(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #5
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 5
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %4, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %5 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #5
  %6 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %6, i32 0, i32 0
  %7 = load i8*, i8** %next_input_byte1, align 8, !tbaa !18
  store i8* %7, i8** %next_input_byte, align 8, !tbaa !2
  %8 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #5
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %9, i32 0, i32 1
  %10 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !20
  store i64 %10, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 3
  %13 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %13(%struct.jpeg_decompress_struct* %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 0
  %16 = load i8*, i8** %next_input_byte4, align 8, !tbaa !18
  store i8* %16, i8** %next_input_byte, align 8, !tbaa !2
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 1
  %18 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !20
  store i64 %18, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %19 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %19, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %20 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %21 = load i8, i8* %20, align 1, !tbaa !23
  %conv = zext i8 %21 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %22 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp8 = icmp eq i64 %22, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %do.body.7
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 3
  %24 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !22
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call12 = call i32 %24(%struct.jpeg_decompress_struct* %25)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %26 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %26, i32 0, i32 0
  %27 = load i8*, i8** %next_input_byte16, align 8, !tbaa !18
  store i8* %27, i8** %next_input_byte, align 8, !tbaa !2
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 1
  %29 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !20
  store i64 %29, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %do.body.7
  %30 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec19 = add i64 %30, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !21
  %31 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !2
  %32 = load i8, i8* %31, align 1, !tbaa !23
  %conv21 = zext i8 %32 to i32
  store i32 %conv21, i32* %c2, align 4, !tbaa !6
  br label %do.cond.22

do.cond.22:                                       ; preds = %if.end.18
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %33 = load i32, i32* %c, align 4, !tbaa !6
  %cmp24 = icmp ne i32 %33, 255
  br i1 %cmp24, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.23
  %34 = load i32, i32* %c2, align 4, !tbaa !6
  %cmp26 = icmp ne i32 %34, 216
  br i1 %cmp26, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %lor.lhs.false, %do.end.23
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 52, i32* %msg_code, align 4, !tbaa !13
  %37 = load i32, i32* %c, align 4, !tbaa !6
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %37, i32* %arrayidx, align 4, !tbaa !6
  %40 = load i32, i32* %c2, align 4, !tbaa !6
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8, !tbaa !12
  %msg_parm31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i32 = bitcast %union.anon* %msg_parm31 to [8 x i32]*
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %i32, i32 0, i64 1
  store i32 %40, i32* %arrayidx33, align 4, !tbaa !6
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err34, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %47 = bitcast %struct.jpeg_decompress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.28, %lor.lhs.false
  %48 = load i32, i32* %c2, align 4, !tbaa !6
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 72
  store i32 %48, i32* %unread_marker, align 4, !tbaa !8
  %50 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %51 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %51, i32 0, i32 0
  store i8* %50, i8** %next_input_byte36, align 8, !tbaa !18
  %52 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %53 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %53, i32 0, i32 1
  store i64 %52, i64* %bytes_in_buffer37, align 8, !tbaa !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.14, %if.then.3
  %54 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #5
  %55 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #5
  %56 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #5
  %57 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #5
  %58 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #5
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_soi(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 0
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %2, i32 0, i32 5
  store i32 101, i32* %msg_code, align 4, !tbaa !13
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 1
  %5 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  call void %5(%struct.jpeg_common_struct* %7, i32 1)
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 78
  %9 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %9, i32 0, i32 5
  %10 = load i32, i32* %saw_SOI, align 4, !tbaa !36
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !12
  %msg_code3 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 60, i32* %msg_code3, align 4, !tbaa !13
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %18, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 46
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !23
  %21 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom5 = sext i32 %21 to i64
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 47
  %arrayidx6 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom5
  store i8 1, i8* %arrayidx6, align 1, !tbaa !23
  %23 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom7 = sext i32 %23 to i64
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 48
  %arrayidx8 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom7
  store i8 5, i8* %arrayidx8, align 1, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 49
  store i32 0, i32* %restart_interval, align 4, !tbaa !48
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 9
  store i32 0, i32* %jpeg_color_space, align 4, !tbaa !49
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 56
  store i32 0, i32* %CCIR601_sampling, align 4, !tbaa !50
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 50
  store i32 0, i32* %saw_JFIF_marker, align 4, !tbaa !42
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 51
  store i8 0, i8* %density_unit, align 1, !tbaa !43
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 52
  store i16 1, i16* %X_density, align 2, !tbaa !44
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 53
  store i16 1, i16* %Y_density, align 2, !tbaa !45
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 54
  store i32 0, i32* %saw_Adobe_marker, align 4, !tbaa !46
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 55
  store i8 0, i8* %Adobe_transform, align 1, !tbaa !47
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 78
  %36 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker9, align 8, !tbaa !24
  %saw_SOI10 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %36, i32 0, i32 5
  store i32 1, i32* %saw_SOI10, align 4, !tbaa !36
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #5
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_sof(%struct.jpeg_decompress_struct* %cinfo, i32 %is_prog, i32 %is_arith) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %is_prog.addr = alloca i32, align 4
  %is_arith.addr = alloca i32, align 4
  %length = alloca i64, align 8
  %c = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  %_mp233 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %is_prog, i32* %is_prog.addr, align 4, !tbaa !6
  store i32 %is_arith, i32* %is_arith.addr, align 4, !tbaa !6
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #5
  %4 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #5
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 5
  %6 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %6, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %7 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #5
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %8, i32 0, i32 0
  %9 = load i8*, i8** %next_input_byte1, align 8, !tbaa !18
  store i8* %9, i8** %next_input_byte, align 8, !tbaa !2
  %10 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #5
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 1
  %12 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !20
  store i64 %12, i64* %bytes_in_buffer, align 8, !tbaa !21
  %13 = load i32, i32* %is_prog.addr, align 4, !tbaa !6
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 44
  store i32 %13, i32* %progressive_mode, align 4, !tbaa !51
  %15 = load i32, i32* %is_arith.addr, align 4, !tbaa !6
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 45
  store i32 %15, i32* %arith_code, align 4, !tbaa !52
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %17, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 3
  %19 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %19(%struct.jpeg_decompress_struct* %20)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 0
  %22 = load i8*, i8** %next_input_byte4, align 8, !tbaa !18
  store i8* %22, i8** %next_input_byte, align 8, !tbaa !2
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !20
  store i64 %24, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %25 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %25, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %26 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %27 = load i8, i8* %26, align 1, !tbaa !23
  %conv = zext i8 %27 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !21
  %28 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp8 = icmp eq i64 %28, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %29 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %29, i32 0, i32 3
  %30 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !22
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call12 = call i32 %30(%struct.jpeg_decompress_struct* %31)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 0
  %33 = load i8*, i8** %next_input_byte16, align 8, !tbaa !18
  store i8* %33, i8** %next_input_byte, align 8, !tbaa !2
  %34 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %34, i32 0, i32 1
  %35 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !20
  store i64 %35, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %36 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec19 = add i64 %36, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !21
  %37 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !2
  %38 = load i8, i8* %37, align 1, !tbaa !23
  %conv21 = zext i8 %38 to i64
  %39 = load i64, i64* %length, align 8, !tbaa !21
  %add = add nsw i64 %39, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.22

do.body.22:                                       ; preds = %do.end
  %40 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp23 = icmp eq i64 %40, 0
  br i1 %cmp23, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %do.body.22
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer26 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 3
  %42 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer26, align 8, !tbaa !22
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call27 = call i32 %42(%struct.jpeg_decompress_struct* %43)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.25
  %44 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte31 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %44, i32 0, i32 0
  %45 = load i8*, i8** %next_input_byte31, align 8, !tbaa !18
  store i8* %45, i8** %next_input_byte, align 8, !tbaa !2
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 1
  %47 = load i64, i64* %bytes_in_buffer32, align 8, !tbaa !20
  store i64 %47, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.30, %do.body.22
  %48 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec34 = add i64 %48, -1
  store i64 %dec34, i64* %bytes_in_buffer, align 8, !tbaa !21
  %49 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr35 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr35, i8** %next_input_byte, align 8, !tbaa !2
  %50 = load i8, i8* %49, align 1, !tbaa !23
  %conv36 = zext i8 %50 to i32
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 42
  store i32 %conv36, i32* %data_precision, align 4, !tbaa !53
  br label %do.cond.37

do.cond.37:                                       ; preds = %if.end.33
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %52 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp40 = icmp eq i64 %52, 0
  br i1 %cmp40, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %do.body.39
  %53 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer43 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %53, i32 0, i32 3
  %54 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer43, align 8, !tbaa !22
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call44 = call i32 %54(%struct.jpeg_decompress_struct* %55)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.then.42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.then.42
  %56 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte48 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %56, i32 0, i32 0
  %57 = load i8*, i8** %next_input_byte48, align 8, !tbaa !18
  store i8* %57, i8** %next_input_byte, align 8, !tbaa !2
  %58 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer49 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %58, i32 0, i32 1
  %59 = load i64, i64* %bytes_in_buffer49, align 8, !tbaa !20
  store i64 %59, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.47, %do.body.39
  %60 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec51 = add i64 %60, -1
  store i64 %dec51, i64* %bytes_in_buffer, align 8, !tbaa !21
  %61 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr52 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr52, i8** %next_input_byte, align 8, !tbaa !2
  %62 = load i8, i8* %61, align 1, !tbaa !23
  %conv53 = zext i8 %62 to i32
  %shl54 = shl i32 %conv53, 8
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 7
  store i32 %shl54, i32* %image_height, align 4, !tbaa !54
  %64 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp55 = icmp eq i64 %64, 0
  br i1 %cmp55, label %if.then.57, label %if.end.65

if.then.57:                                       ; preds = %if.end.50
  %65 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer58 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %65, i32 0, i32 3
  %66 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer58, align 8, !tbaa !22
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call59 = call i32 %66(%struct.jpeg_decompress_struct* %67)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.then.57
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.then.57
  %68 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte63 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %68, i32 0, i32 0
  %69 = load i8*, i8** %next_input_byte63, align 8, !tbaa !18
  store i8* %69, i8** %next_input_byte, align 8, !tbaa !2
  %70 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer64 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %70, i32 0, i32 1
  %71 = load i64, i64* %bytes_in_buffer64, align 8, !tbaa !20
  store i64 %71, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.62, %if.end.50
  %72 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec66 = add i64 %72, -1
  store i64 %dec66, i64* %bytes_in_buffer, align 8, !tbaa !21
  %73 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr67 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr67, i8** %next_input_byte, align 8, !tbaa !2
  %74 = load i8, i8* %73, align 1, !tbaa !23
  %conv68 = zext i8 %74 to i32
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 7
  %76 = load i32, i32* %image_height69, align 4, !tbaa !54
  %add70 = add i32 %76, %conv68
  store i32 %add70, i32* %image_height69, align 4, !tbaa !54
  br label %do.cond.71

do.cond.71:                                       ; preds = %if.end.65
  br label %do.end.72

do.end.72:                                        ; preds = %do.cond.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.72
  %77 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp74 = icmp eq i64 %77, 0
  br i1 %cmp74, label %if.then.76, label %if.end.84

if.then.76:                                       ; preds = %do.body.73
  %78 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer77 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %78, i32 0, i32 3
  %79 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer77, align 8, !tbaa !22
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call78 = call i32 %79(%struct.jpeg_decompress_struct* %80)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.then.76
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.then.76
  %81 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte82 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %81, i32 0, i32 0
  %82 = load i8*, i8** %next_input_byte82, align 8, !tbaa !18
  store i8* %82, i8** %next_input_byte, align 8, !tbaa !2
  %83 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer83 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %83, i32 0, i32 1
  %84 = load i64, i64* %bytes_in_buffer83, align 8, !tbaa !20
  store i64 %84, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.81, %do.body.73
  %85 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec85 = add i64 %85, -1
  store i64 %dec85, i64* %bytes_in_buffer, align 8, !tbaa !21
  %86 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr86 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr86, i8** %next_input_byte, align 8, !tbaa !2
  %87 = load i8, i8* %86, align 1, !tbaa !23
  %conv87 = zext i8 %87 to i32
  %shl88 = shl i32 %conv87, 8
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 6
  store i32 %shl88, i32* %image_width, align 4, !tbaa !55
  %89 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp89 = icmp eq i64 %89, 0
  br i1 %cmp89, label %if.then.91, label %if.end.99

if.then.91:                                       ; preds = %if.end.84
  %90 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer92 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %90, i32 0, i32 3
  %91 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer92, align 8, !tbaa !22
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call93 = call i32 %91(%struct.jpeg_decompress_struct* %92)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.then.91
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.then.91
  %93 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte97 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %93, i32 0, i32 0
  %94 = load i8*, i8** %next_input_byte97, align 8, !tbaa !18
  store i8* %94, i8** %next_input_byte, align 8, !tbaa !2
  %95 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer98 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %95, i32 0, i32 1
  %96 = load i64, i64* %bytes_in_buffer98, align 8, !tbaa !20
  store i64 %96, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.96, %if.end.84
  %97 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec100 = add i64 %97, -1
  store i64 %dec100, i64* %bytes_in_buffer, align 8, !tbaa !21
  %98 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr101 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr101, i8** %next_input_byte, align 8, !tbaa !2
  %99 = load i8, i8* %98, align 1, !tbaa !23
  %conv102 = zext i8 %99 to i32
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 6
  %101 = load i32, i32* %image_width103, align 4, !tbaa !55
  %add104 = add i32 %101, %conv102
  store i32 %add104, i32* %image_width103, align 4, !tbaa !55
  br label %do.cond.105

do.cond.105:                                      ; preds = %if.end.99
  br label %do.end.106

do.end.106:                                       ; preds = %do.cond.105
  br label %do.body.107

do.body.107:                                      ; preds = %do.end.106
  %102 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp108 = icmp eq i64 %102, 0
  br i1 %cmp108, label %if.then.110, label %if.end.118

if.then.110:                                      ; preds = %do.body.107
  %103 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer111 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %103, i32 0, i32 3
  %104 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer111, align 8, !tbaa !22
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call112 = call i32 %104(%struct.jpeg_decompress_struct* %105)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %if.then.110
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.115:                                       ; preds = %if.then.110
  %106 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte116 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %106, i32 0, i32 0
  %107 = load i8*, i8** %next_input_byte116, align 8, !tbaa !18
  store i8* %107, i8** %next_input_byte, align 8, !tbaa !2
  %108 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer117 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %108, i32 0, i32 1
  %109 = load i64, i64* %bytes_in_buffer117, align 8, !tbaa !20
  store i64 %109, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.115, %do.body.107
  %110 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec119 = add i64 %110, -1
  store i64 %dec119, i64* %bytes_in_buffer, align 8, !tbaa !21
  %111 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr120 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr120, i8** %next_input_byte, align 8, !tbaa !2
  %112 = load i8, i8* %111, align 1, !tbaa !23
  %conv121 = zext i8 %112 to i32
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 8
  store i32 %conv121, i32* %num_components, align 4, !tbaa !56
  br label %do.cond.122

do.cond.122:                                      ; preds = %if.end.118
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %114 = load i64, i64* %length, align 8, !tbaa !21
  %sub = sub nsw i64 %114, 8
  store i64 %sub, i64* %length, align 8, !tbaa !21
  br label %do.body.124

do.body.124:                                      ; preds = %do.end.123
  %115 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #5
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 0
  %117 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %117, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !2
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 72
  %119 = load i32, i32* %unread_marker, align 4, !tbaa !8
  %120 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %119, i32* %arrayidx, align 4, !tbaa !6
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 6
  %122 = load i32, i32* %image_width125, align 4, !tbaa !55
  %123 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %122, i32* %arrayidx126, align 4, !tbaa !6
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 7
  %125 = load i32, i32* %image_height127, align 4, !tbaa !54
  %126 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx128 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %125, i32* %arrayidx128, align 4, !tbaa !6
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components129 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 8
  %128 = load i32, i32* %num_components129, align 4, !tbaa !56
  %129 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx130 = getelementptr inbounds i32, i32* %129, i64 3
  store i32 %128, i32* %arrayidx130, align 4, !tbaa !6
  %130 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %130, i32 0, i32 0
  %131 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err131, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %131, i32 0, i32 5
  store i32 99, i32* %msg_code, align 4, !tbaa !13
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %132, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err132, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 1
  %134 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %136 = bitcast %struct.jpeg_decompress_struct* %135 to %struct.jpeg_common_struct*
  call void %134(%struct.jpeg_common_struct* %136, i32 1)
  %137 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #5
  br label %do.cond.133

do.cond.133:                                      ; preds = %do.body.124
  br label %do.end.134

do.end.134:                                       ; preds = %do.cond.133
  %138 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %138, i32 0, i32 78
  %139 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %139, i32 0, i32 6
  %140 = load i32, i32* %saw_SOF, align 4, !tbaa !37
  %tobool135 = icmp ne i32 %140, 0
  br i1 %tobool135, label %if.then.136, label %if.end.140

if.then.136:                                      ; preds = %do.end.134
  %141 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err137 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %141, i32 0, i32 0
  %142 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err137, align 8, !tbaa !12
  %msg_code138 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %142, i32 0, i32 5
  store i32 57, i32* %msg_code138, align 4, !tbaa !13
  %143 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err139 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %143, i32 0, i32 0
  %144 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err139, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %144, i32 0, i32 0
  %145 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %146 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %147 = bitcast %struct.jpeg_decompress_struct* %146 to %struct.jpeg_common_struct*
  call void %145(%struct.jpeg_common_struct* %147)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.136, %do.end.134
  %148 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_height141 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %148, i32 0, i32 7
  %149 = load i32, i32* %image_height141, align 4, !tbaa !54
  %cmp142 = icmp ule i32 %149, 0
  br i1 %cmp142, label %if.then.151, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.140
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %image_width144 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %150, i32 0, i32 6
  %151 = load i32, i32* %image_width144, align 4, !tbaa !55
  %cmp145 = icmp ule i32 %151, 0
  br i1 %cmp145, label %if.then.151, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components148 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 8
  %153 = load i32, i32* %num_components148, align 4, !tbaa !56
  %cmp149 = icmp sle i32 %153, 0
  br i1 %cmp149, label %if.then.151, label %if.end.156

if.then.151:                                      ; preds = %lor.lhs.false.147, %lor.lhs.false, %if.end.140
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err152 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %154, i32 0, i32 0
  %155 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err152, align 8, !tbaa !12
  %msg_code153 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %155, i32 0, i32 5
  store i32 31, i32* %msg_code153, align 4, !tbaa !13
  %156 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err154 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %156, i32 0, i32 0
  %157 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err154, align 8, !tbaa !12
  %error_exit155 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %157, i32 0, i32 0
  %158 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit155, align 8, !tbaa !38
  %159 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %160 = bitcast %struct.jpeg_decompress_struct* %159 to %struct.jpeg_common_struct*
  call void %158(%struct.jpeg_common_struct* %160)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.151, %lor.lhs.false.147
  %161 = load i64, i64* %length, align 8, !tbaa !21
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components157 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %162, i32 0, i32 8
  %163 = load i32, i32* %num_components157, align 4, !tbaa !56
  %mul = mul nsw i32 %163, 3
  %conv158 = sext i32 %mul to i64
  %cmp159 = icmp ne i64 %161, %conv158
  br i1 %cmp159, label %if.then.161, label %if.end.166

if.then.161:                                      ; preds = %if.end.156
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err162 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 0
  %165 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err162, align 8, !tbaa !12
  %msg_code163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %165, i32 0, i32 5
  store i32 9, i32* %msg_code163, align 4, !tbaa !13
  %166 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err164 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %166, i32 0, i32 0
  %167 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err164, align 8, !tbaa !12
  %error_exit165 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %167, i32 0, i32 0
  %168 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit165, align 8, !tbaa !38
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %170 = bitcast %struct.jpeg_decompress_struct* %169 to %struct.jpeg_common_struct*
  call void %168(%struct.jpeg_common_struct* %170)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.161, %if.end.156
  %171 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %171, i32 0, i32 43
  %172 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !34
  %cmp167 = icmp eq %struct.jpeg_component_info* %172, null
  br i1 %cmp167, label %if.then.169, label %if.end.175

if.then.169:                                      ; preds = %if.end.166
  %173 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %173, i32 0, i32 1
  %174 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !27
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %174, i32 0, i32 0
  %175 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !28
  %176 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %177 = bitcast %struct.jpeg_decompress_struct* %176 to %struct.jpeg_common_struct*
  %178 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components170 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %178, i32 0, i32 8
  %179 = load i32, i32* %num_components170, align 4, !tbaa !56
  %conv171 = sext i32 %179 to i64
  %mul172 = mul i64 %conv171, 96
  %call173 = call i8* %175(%struct.jpeg_common_struct* %177, i32 1, i64 %mul172)
  %180 = bitcast i8* %call173 to %struct.jpeg_component_info*
  %181 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info174 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %181, i32 0, i32 43
  store %struct.jpeg_component_info* %180, %struct.jpeg_component_info** %comp_info174, align 8, !tbaa !34
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.169, %if.end.166
  store i32 0, i32* %ci, align 4, !tbaa !6
  %182 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info176 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %182, i32 0, i32 43
  %183 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info176, align 8, !tbaa !34
  store %struct.jpeg_component_info* %183, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.175
  %184 = load i32, i32* %ci, align 4, !tbaa !6
  %185 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components177 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %185, i32 0, i32 8
  %186 = load i32, i32* %num_components177, align 4, !tbaa !56
  %cmp178 = icmp slt i32 %184, %186
  br i1 %cmp178, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %187 = load i32, i32* %ci, align 4, !tbaa !6
  %188 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %188, i32 0, i32 1
  store i32 %187, i32* %component_index, align 4, !tbaa !57
  br label %do.body.180

do.body.180:                                      ; preds = %for.body
  %189 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp181 = icmp eq i64 %189, 0
  br i1 %cmp181, label %if.then.183, label %if.end.191

if.then.183:                                      ; preds = %do.body.180
  %190 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer184 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %190, i32 0, i32 3
  %191 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer184, align 8, !tbaa !22
  %192 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call185 = call i32 %191(%struct.jpeg_decompress_struct* %192)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.end.188, label %if.then.187

if.then.187:                                      ; preds = %if.then.183
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.188:                                       ; preds = %if.then.183
  %193 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte189 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %193, i32 0, i32 0
  %194 = load i8*, i8** %next_input_byte189, align 8, !tbaa !18
  store i8* %194, i8** %next_input_byte, align 8, !tbaa !2
  %195 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer190 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %195, i32 0, i32 1
  %196 = load i64, i64* %bytes_in_buffer190, align 8, !tbaa !20
  store i64 %196, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.188, %do.body.180
  %197 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec192 = add i64 %197, -1
  store i64 %dec192, i64* %bytes_in_buffer, align 8, !tbaa !21
  %198 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr193 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %incdec.ptr193, i8** %next_input_byte, align 8, !tbaa !2
  %199 = load i8, i8* %198, align 1, !tbaa !23
  %conv194 = zext i8 %199 to i32
  %200 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %200, i32 0, i32 0
  store i32 %conv194, i32* %component_id, align 4, !tbaa !59
  br label %do.cond.195

do.cond.195:                                      ; preds = %if.end.191
  br label %do.end.196

do.end.196:                                       ; preds = %do.cond.195
  br label %do.body.197

do.body.197:                                      ; preds = %do.end.196
  %201 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp198 = icmp eq i64 %201, 0
  br i1 %cmp198, label %if.then.200, label %if.end.208

if.then.200:                                      ; preds = %do.body.197
  %202 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer201 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %202, i32 0, i32 3
  %203 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer201, align 8, !tbaa !22
  %204 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call202 = call i32 %203(%struct.jpeg_decompress_struct* %204)
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.end.205, label %if.then.204

if.then.204:                                      ; preds = %if.then.200
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.205:                                       ; preds = %if.then.200
  %205 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte206 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %205, i32 0, i32 0
  %206 = load i8*, i8** %next_input_byte206, align 8, !tbaa !18
  store i8* %206, i8** %next_input_byte, align 8, !tbaa !2
  %207 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer207 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %207, i32 0, i32 1
  %208 = load i64, i64* %bytes_in_buffer207, align 8, !tbaa !20
  store i64 %208, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.205, %do.body.197
  %209 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec209 = add i64 %209, -1
  store i64 %dec209, i64* %bytes_in_buffer, align 8, !tbaa !21
  %210 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr210 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr210, i8** %next_input_byte, align 8, !tbaa !2
  %211 = load i8, i8* %210, align 1, !tbaa !23
  %conv211 = zext i8 %211 to i32
  store i32 %conv211, i32* %c, align 4, !tbaa !6
  br label %do.cond.212

do.cond.212:                                      ; preds = %if.end.208
  br label %do.end.213

do.end.213:                                       ; preds = %do.cond.212
  %212 = load i32, i32* %c, align 4, !tbaa !6
  %shr = ashr i32 %212, 4
  %and = and i32 %shr, 15
  %213 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %213, i32 0, i32 2
  store i32 %and, i32* %h_samp_factor, align 4, !tbaa !60
  %214 = load i32, i32* %c, align 4, !tbaa !6
  %and214 = and i32 %214, 15
  %215 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %215, i32 0, i32 3
  store i32 %and214, i32* %v_samp_factor, align 4, !tbaa !61
  br label %do.body.215

do.body.215:                                      ; preds = %do.end.213
  %216 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp216 = icmp eq i64 %216, 0
  br i1 %cmp216, label %if.then.218, label %if.end.226

if.then.218:                                      ; preds = %do.body.215
  %217 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer219 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %217, i32 0, i32 3
  %218 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer219, align 8, !tbaa !22
  %219 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call220 = call i32 %218(%struct.jpeg_decompress_struct* %219)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.end.223, label %if.then.222

if.then.222:                                      ; preds = %if.then.218
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.223:                                       ; preds = %if.then.218
  %220 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte224 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %220, i32 0, i32 0
  %221 = load i8*, i8** %next_input_byte224, align 8, !tbaa !18
  store i8* %221, i8** %next_input_byte, align 8, !tbaa !2
  %222 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer225 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %222, i32 0, i32 1
  %223 = load i64, i64* %bytes_in_buffer225, align 8, !tbaa !20
  store i64 %223, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.223, %do.body.215
  %224 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec227 = add i64 %224, -1
  store i64 %dec227, i64* %bytes_in_buffer, align 8, !tbaa !21
  %225 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr228 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr228, i8** %next_input_byte, align 8, !tbaa !2
  %226 = load i8, i8* %225, align 1, !tbaa !23
  %conv229 = zext i8 %226 to i32
  %227 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %227, i32 0, i32 4
  store i32 %conv229, i32* %quant_tbl_no, align 4, !tbaa !62
  br label %do.cond.230

do.cond.230:                                      ; preds = %if.end.226
  br label %do.end.231

do.end.231:                                       ; preds = %do.cond.230
  br label %do.body.232

do.body.232:                                      ; preds = %do.end.231
  %228 = bitcast i32** %_mp233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %228) #5
  %229 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err234 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %229, i32 0, i32 0
  %230 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err234, align 8, !tbaa !12
  %msg_parm235 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %230, i32 0, i32 6
  %i236 = bitcast %union.anon* %msg_parm235 to [8 x i32]*
  %arraydecay237 = getelementptr inbounds [8 x i32], [8 x i32]* %i236, i32 0, i32 0
  store i32* %arraydecay237, i32** %_mp233, align 8, !tbaa !2
  %231 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id238 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %231, i32 0, i32 0
  %232 = load i32, i32* %component_id238, align 4, !tbaa !59
  %233 = load i32*, i32** %_mp233, align 8, !tbaa !2
  %arrayidx239 = getelementptr inbounds i32, i32* %233, i64 0
  store i32 %232, i32* %arrayidx239, align 4, !tbaa !6
  %234 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor240 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %234, i32 0, i32 2
  %235 = load i32, i32* %h_samp_factor240, align 4, !tbaa !60
  %236 = load i32*, i32** %_mp233, align 8, !tbaa !2
  %arrayidx241 = getelementptr inbounds i32, i32* %236, i64 1
  store i32 %235, i32* %arrayidx241, align 4, !tbaa !6
  %237 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor242 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %237, i32 0, i32 3
  %238 = load i32, i32* %v_samp_factor242, align 4, !tbaa !61
  %239 = load i32*, i32** %_mp233, align 8, !tbaa !2
  %arrayidx243 = getelementptr inbounds i32, i32* %239, i64 2
  store i32 %238, i32* %arrayidx243, align 4, !tbaa !6
  %240 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no244 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %240, i32 0, i32 4
  %241 = load i32, i32* %quant_tbl_no244, align 4, !tbaa !62
  %242 = load i32*, i32** %_mp233, align 8, !tbaa !2
  %arrayidx245 = getelementptr inbounds i32, i32* %242, i64 3
  store i32 %241, i32* %arrayidx245, align 4, !tbaa !6
  %243 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err246 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %243, i32 0, i32 0
  %244 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err246, align 8, !tbaa !12
  %msg_code247 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %244, i32 0, i32 5
  store i32 100, i32* %msg_code247, align 4, !tbaa !13
  %245 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err248 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %245, i32 0, i32 0
  %246 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err248, align 8, !tbaa !12
  %emit_message249 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %246, i32 0, i32 1
  %247 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message249, align 8, !tbaa !16
  %248 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %249 = bitcast %struct.jpeg_decompress_struct* %248 to %struct.jpeg_common_struct*
  call void %247(%struct.jpeg_common_struct* %249, i32 1)
  %250 = bitcast i32** %_mp233 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #5
  br label %do.cond.250

do.cond.250:                                      ; preds = %do.body.232
  br label %do.end.251

do.end.251:                                       ; preds = %do.cond.250
  br label %for.inc

for.inc:                                          ; preds = %do.end.251
  %251 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %251, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %252 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr252 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %252, i32 1
  store %struct.jpeg_component_info* %incdec.ptr252, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %253 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker253 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %253, i32 0, i32 78
  %254 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker253, align 8, !tbaa !24
  %saw_SOF254 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %254, i32 0, i32 6
  store i32 1, i32* %saw_SOF254, align 4, !tbaa !37
  %255 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %256 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte255 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %256, i32 0, i32 0
  store i8* %255, i8** %next_input_byte255, align 8, !tbaa !18
  %257 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %258 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer256 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %258, i32 0, i32 1
  store i64 %257, i64* %bytes_in_buffer256, align 8, !tbaa !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.222, %if.then.204, %if.then.187, %if.then.114, %if.then.95, %if.then.80, %if.then.61, %if.then.46, %if.then.29, %if.then.14, %if.then.3
  %259 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #5
  %260 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #5
  %261 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #5
  %262 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #5
  %263 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #5
  %264 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #5
  %265 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #5
  %266 = load i32, i32* %retval
  ret i32 %266
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_sos(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %i = alloca i32, align 4
  %ci = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %cc = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  %_mp191 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #5
  %4 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #5
  %6 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #5
  %7 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #5
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 5
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %9, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %10 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #5
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 0
  %12 = load i8*, i8** %next_input_byte1, align 8, !tbaa !18
  store i8* %12, i8** %next_input_byte, align 8, !tbaa !2
  %13 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #5
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 1
  %15 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !20
  store i64 %15, i64* %bytes_in_buffer, align 8, !tbaa !21
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 78
  %17 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !24
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %17, i32 0, i32 6
  %18 = load i32, i32* %saw_SOF, align 4, !tbaa !37
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 61, i32* %msg_code, align 4, !tbaa !13
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %26 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %26, 0
  br i1 %cmp, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %do.body
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 3
  %28 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %28(%struct.jpeg_decompress_struct* %29)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.then.4
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 0
  %31 = load i8*, i8** %next_input_byte8, align 8, !tbaa !18
  store i8* %31, i8** %next_input_byte, align 8, !tbaa !2
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 1
  %33 = load i64, i64* %bytes_in_buffer9, align 8, !tbaa !20
  store i64 %33, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.7, %do.body
  %34 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %34, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %35 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !23
  %conv = zext i8 %36 to i32
  %shl = shl i32 %conv, 8
  %conv11 = zext i32 %shl to i64
  store i64 %conv11, i64* %length, align 8, !tbaa !21
  %37 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp12 = icmp eq i64 %37, 0
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.10
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 3
  %39 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer15, align 8, !tbaa !22
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call16 = call i32 %39(%struct.jpeg_decompress_struct* %40)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.14
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 0
  %42 = load i8*, i8** %next_input_byte20, align 8, !tbaa !18
  store i8* %42, i8** %next_input_byte, align 8, !tbaa !2
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 1
  %44 = load i64, i64* %bytes_in_buffer21, align 8, !tbaa !20
  store i64 %44, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end.10
  %45 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec23 = add i64 %45, -1
  store i64 %dec23, i64* %bytes_in_buffer, align 8, !tbaa !21
  %46 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr24 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr24, i8** %next_input_byte, align 8, !tbaa !2
  %47 = load i8, i8* %46, align 1, !tbaa !23
  %conv25 = zext i8 %47 to i64
  %48 = load i64, i64* %length, align 8, !tbaa !21
  %add = add nsw i64 %48, %conv25
  store i64 %add, i64* %length, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.26

do.body.26:                                       ; preds = %do.end
  %49 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp27 = icmp eq i64 %49, 0
  br i1 %cmp27, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %do.body.26
  %50 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer30 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %50, i32 0, i32 3
  %51 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer30, align 8, !tbaa !22
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call31 = call i32 %51(%struct.jpeg_decompress_struct* %52)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.then.29
  %53 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte35 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %53, i32 0, i32 0
  %54 = load i8*, i8** %next_input_byte35, align 8, !tbaa !18
  store i8* %54, i8** %next_input_byte, align 8, !tbaa !2
  %55 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %55, i32 0, i32 1
  %56 = load i64, i64* %bytes_in_buffer36, align 8, !tbaa !20
  store i64 %56, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.34, %do.body.26
  %57 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec38 = add i64 %57, -1
  store i64 %dec38, i64* %bytes_in_buffer, align 8, !tbaa !21
  %58 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr39 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr39, i8** %next_input_byte, align 8, !tbaa !2
  %59 = load i8, i8* %58, align 1, !tbaa !23
  %conv40 = zext i8 %59 to i32
  store i32 %conv40, i32* %n, align 4, !tbaa !6
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.37
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %60 = load i64, i64* %length, align 8, !tbaa !21
  %61 = load i32, i32* %n, align 4, !tbaa !6
  %mul = mul nsw i32 %61, 2
  %add43 = add nsw i32 %mul, 6
  %conv44 = sext i32 %add43 to i64
  %cmp45 = icmp ne i64 %60, %conv44
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.42
  %62 = load i32, i32* %n, align 4, !tbaa !6
  %cmp47 = icmp slt i32 %62, 1
  br i1 %cmp47, label %if.then.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false
  %63 = load i32, i32* %n, align 4, !tbaa !6
  %cmp50 = icmp sgt i32 %63, 4
  br i1 %cmp50, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false, %do.end.42
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8, !tbaa !12
  %msg_code54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 5
  store i32 9, i32* %msg_code54, align 4, !tbaa !13
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8, !tbaa !12
  %error_exit56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 0
  %68 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit56, align 8, !tbaa !38
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %70 = bitcast %struct.jpeg_decompress_struct* %69 to %struct.jpeg_common_struct*
  call void %68(%struct.jpeg_common_struct* %70)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %lor.lhs.false.49
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8, !tbaa !12
  %msg_code59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 5
  store i32 102, i32* %msg_code59, align 4, !tbaa !13
  %73 = load i32, i32* %n, align 4, !tbaa !6
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 6
  %i61 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i61, i32 0, i64 0
  store i32 %73, i32* %arrayidx, align 4, !tbaa !6
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err62, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 1
  %78 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %80 = bitcast %struct.jpeg_decompress_struct* %79 to %struct.jpeg_common_struct*
  call void %78(%struct.jpeg_common_struct* %80, i32 1)
  %81 = load i32, i32* %n, align 4, !tbaa !6
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 62
  store i32 %81, i32* %comps_in_scan, align 4, !tbaa !63
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.133, %if.end.57
  %83 = load i32, i32* %i, align 4, !tbaa !6
  %84 = load i32, i32* %n, align 4, !tbaa !6
  %cmp63 = icmp slt i32 %83, %84
  br i1 %cmp63, label %for.body, label %for.end.135

for.body:                                         ; preds = %for.cond
  br label %do.body.65

do.body.65:                                       ; preds = %for.body
  %85 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp66 = icmp eq i64 %85, 0
  br i1 %cmp66, label %if.then.68, label %if.end.76

if.then.68:                                       ; preds = %do.body.65
  %86 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer69 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %86, i32 0, i32 3
  %87 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer69, align 8, !tbaa !22
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call70 = call i32 %87(%struct.jpeg_decompress_struct* %88)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.then.68
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.then.68
  %89 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte74 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %89, i32 0, i32 0
  %90 = load i8*, i8** %next_input_byte74, align 8, !tbaa !18
  store i8* %90, i8** %next_input_byte, align 8, !tbaa !2
  %91 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer75 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %91, i32 0, i32 1
  %92 = load i64, i64* %bytes_in_buffer75, align 8, !tbaa !20
  store i64 %92, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.73, %do.body.65
  %93 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec77 = add i64 %93, -1
  store i64 %dec77, i64* %bytes_in_buffer, align 8, !tbaa !21
  %94 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr78 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr78, i8** %next_input_byte, align 8, !tbaa !2
  %95 = load i8, i8* %94, align 1, !tbaa !23
  %conv79 = zext i8 %95 to i32
  store i32 %conv79, i32* %cc, align 4, !tbaa !6
  br label %do.cond.80

do.cond.80:                                       ; preds = %if.end.76
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %96 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp83 = icmp eq i64 %96, 0
  br i1 %cmp83, label %if.then.85, label %if.end.93

if.then.85:                                       ; preds = %do.body.82
  %97 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer86 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %97, i32 0, i32 3
  %98 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer86, align 8, !tbaa !22
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call87 = call i32 %98(%struct.jpeg_decompress_struct* %99)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.then.85
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.then.85
  %100 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte91 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %100, i32 0, i32 0
  %101 = load i8*, i8** %next_input_byte91, align 8, !tbaa !18
  store i8* %101, i8** %next_input_byte, align 8, !tbaa !2
  %102 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer92 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %102, i32 0, i32 1
  %103 = load i64, i64* %bytes_in_buffer92, align 8, !tbaa !20
  store i64 %103, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.90, %do.body.82
  %104 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec94 = add i64 %104, -1
  store i64 %dec94, i64* %bytes_in_buffer, align 8, !tbaa !21
  %105 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr95 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr95, i8** %next_input_byte, align 8, !tbaa !2
  %106 = load i8, i8* %105, align 1, !tbaa !23
  %conv96 = zext i8 %106 to i32
  store i32 %conv96, i32* %c, align 4, !tbaa !6
  br label %do.cond.97

do.cond.97:                                       ; preds = %if.end.93
  br label %do.end.98

do.end.98:                                        ; preds = %do.cond.97
  store i32 0, i32* %ci, align 4, !tbaa !6
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %107, i32 0, i32 43
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !34
  store %struct.jpeg_component_info* %108, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc, %do.end.98
  %109 = load i32, i32* %ci, align 4, !tbaa !6
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 8
  %111 = load i32, i32* %num_components, align 4, !tbaa !56
  %cmp100 = icmp slt i32 %109, %111
  br i1 %cmp100, label %for.body.102, label %for.end

for.body.102:                                     ; preds = %for.cond.99
  %112 = load i32, i32* %cc, align 4, !tbaa !6
  %113 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %113, i32 0, i32 0
  %114 = load i32, i32* %component_id, align 4, !tbaa !59
  %cmp103 = icmp eq i32 %112, %114
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.body.102
  br label %id_found

if.end.106:                                       ; preds = %for.body.102
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %115 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  %116 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr107 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %116, i32 1
  store %struct.jpeg_component_info* %incdec.ptr107, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond.99

for.end:                                          ; preds = %for.cond.99
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 0
  %118 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err108, align 8, !tbaa !12
  %msg_code109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %118, i32 0, i32 5
  store i32 5, i32* %msg_code109, align 4, !tbaa !13
  %119 = load i32, i32* %cc, align 4, !tbaa !6
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 0
  %121 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err110, align 8, !tbaa !12
  %msg_parm111 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %121, i32 0, i32 6
  %i112 = bitcast %union.anon* %msg_parm111 to [8 x i32]*
  %arrayidx113 = getelementptr inbounds [8 x i32], [8 x i32]* %i112, i32 0, i64 0
  store i32 %119, i32* %arrayidx113, align 4, !tbaa !6
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err114 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err114, align 8, !tbaa !12
  %error_exit115 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i32 0, i32 0
  %124 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit115, align 8, !tbaa !38
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %126 = bitcast %struct.jpeg_decompress_struct* %125 to %struct.jpeg_common_struct*
  call void %124(%struct.jpeg_common_struct* %126)
  br label %id_found

id_found:                                         ; preds = %for.end, %if.then.105
  %127 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %128 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %128 to i64
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 63
  %arrayidx116 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  store %struct.jpeg_component_info* %127, %struct.jpeg_component_info** %arrayidx116, align 8, !tbaa !2
  %130 = load i32, i32* %c, align 4, !tbaa !6
  %shr = ashr i32 %130, 4
  %and = and i32 %shr, 15
  %131 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %131, i32 0, i32 5
  store i32 %and, i32* %dc_tbl_no, align 4, !tbaa !64
  %132 = load i32, i32* %c, align 4, !tbaa !6
  %and117 = and i32 %132, 15
  %133 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %133, i32 0, i32 6
  store i32 %and117, i32* %ac_tbl_no, align 4, !tbaa !65
  br label %do.body.118

do.body.118:                                      ; preds = %id_found
  %134 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #5
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err119 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err119, align 8, !tbaa !12
  %msg_parm120 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i32 0, i32 6
  %i121 = bitcast %union.anon* %msg_parm120 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i121, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !2
  %137 = load i32, i32* %cc, align 4, !tbaa !6
  %138 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx122 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %137, i32* %arrayidx122, align 4, !tbaa !6
  %139 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no123 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %139, i32 0, i32 5
  %140 = load i32, i32* %dc_tbl_no123, align 4, !tbaa !64
  %141 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx124 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %140, i32* %arrayidx124, align 4, !tbaa !6
  %142 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no125 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %142, i32 0, i32 6
  %143 = load i32, i32* %ac_tbl_no125, align 4, !tbaa !65
  %144 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds i32, i32* %144, i64 2
  store i32 %143, i32* %arrayidx126, align 4, !tbaa !6
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %145, i32 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err127, align 8, !tbaa !12
  %msg_code128 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 5
  store i32 103, i32* %msg_code128, align 4, !tbaa !13
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err129 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err129, align 8, !tbaa !12
  %emit_message130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 1
  %149 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message130, align 8, !tbaa !16
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %151 = bitcast %struct.jpeg_decompress_struct* %150 to %struct.jpeg_common_struct*
  call void %149(%struct.jpeg_common_struct* %151, i32 1)
  %152 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #5
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.118
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  br label %for.inc.133

for.inc.133:                                      ; preds = %do.end.132
  %153 = load i32, i32* %i, align 4, !tbaa !6
  %inc134 = add nsw i32 %153, 1
  store i32 %inc134, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end.135:                                      ; preds = %for.cond
  br label %do.body.136

do.body.136:                                      ; preds = %for.end.135
  %154 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp137 = icmp eq i64 %154, 0
  br i1 %cmp137, label %if.then.139, label %if.end.147

if.then.139:                                      ; preds = %do.body.136
  %155 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer140 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %155, i32 0, i32 3
  %156 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer140, align 8, !tbaa !22
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call141 = call i32 %156(%struct.jpeg_decompress_struct* %157)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %if.then.139
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.144:                                       ; preds = %if.then.139
  %158 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte145 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %158, i32 0, i32 0
  %159 = load i8*, i8** %next_input_byte145, align 8, !tbaa !18
  store i8* %159, i8** %next_input_byte, align 8, !tbaa !2
  %160 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer146 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %160, i32 0, i32 1
  %161 = load i64, i64* %bytes_in_buffer146, align 8, !tbaa !20
  store i64 %161, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.144, %do.body.136
  %162 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec148 = add i64 %162, -1
  store i64 %dec148, i64* %bytes_in_buffer, align 8, !tbaa !21
  %163 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr149 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr149, i8** %next_input_byte, align 8, !tbaa !2
  %164 = load i8, i8* %163, align 1, !tbaa !23
  %conv150 = zext i8 %164 to i32
  store i32 %conv150, i32* %c, align 4, !tbaa !6
  br label %do.cond.151

do.cond.151:                                      ; preds = %if.end.147
  br label %do.end.152

do.end.152:                                       ; preds = %do.cond.151
  %165 = load i32, i32* %c, align 4, !tbaa !6
  %166 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %166, i32 0, i32 68
  store i32 %165, i32* %Ss, align 4, !tbaa !66
  br label %do.body.153

do.body.153:                                      ; preds = %do.end.152
  %167 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp154 = icmp eq i64 %167, 0
  br i1 %cmp154, label %if.then.156, label %if.end.164

if.then.156:                                      ; preds = %do.body.153
  %168 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer157 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %168, i32 0, i32 3
  %169 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer157, align 8, !tbaa !22
  %170 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call158 = call i32 %169(%struct.jpeg_decompress_struct* %170)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.end.161, label %if.then.160

if.then.160:                                      ; preds = %if.then.156
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.161:                                       ; preds = %if.then.156
  %171 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte162 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %171, i32 0, i32 0
  %172 = load i8*, i8** %next_input_byte162, align 8, !tbaa !18
  store i8* %172, i8** %next_input_byte, align 8, !tbaa !2
  %173 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer163 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %173, i32 0, i32 1
  %174 = load i64, i64* %bytes_in_buffer163, align 8, !tbaa !20
  store i64 %174, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.161, %do.body.153
  %175 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec165 = add i64 %175, -1
  store i64 %dec165, i64* %bytes_in_buffer, align 8, !tbaa !21
  %176 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr166 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %incdec.ptr166, i8** %next_input_byte, align 8, !tbaa !2
  %177 = load i8, i8* %176, align 1, !tbaa !23
  %conv167 = zext i8 %177 to i32
  store i32 %conv167, i32* %c, align 4, !tbaa !6
  br label %do.cond.168

do.cond.168:                                      ; preds = %if.end.164
  br label %do.end.169

do.end.169:                                       ; preds = %do.cond.168
  %178 = load i32, i32* %c, align 4, !tbaa !6
  %179 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %179, i32 0, i32 69
  store i32 %178, i32* %Se, align 4, !tbaa !67
  br label %do.body.170

do.body.170:                                      ; preds = %do.end.169
  %180 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp171 = icmp eq i64 %180, 0
  br i1 %cmp171, label %if.then.173, label %if.end.181

if.then.173:                                      ; preds = %do.body.170
  %181 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer174 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %181, i32 0, i32 3
  %182 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer174, align 8, !tbaa !22
  %183 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call175 = call i32 %182(%struct.jpeg_decompress_struct* %183)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.end.178, label %if.then.177

if.then.177:                                      ; preds = %if.then.173
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.178:                                       ; preds = %if.then.173
  %184 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte179 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %184, i32 0, i32 0
  %185 = load i8*, i8** %next_input_byte179, align 8, !tbaa !18
  store i8* %185, i8** %next_input_byte, align 8, !tbaa !2
  %186 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer180 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %186, i32 0, i32 1
  %187 = load i64, i64* %bytes_in_buffer180, align 8, !tbaa !20
  store i64 %187, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.178, %do.body.170
  %188 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec182 = add i64 %188, -1
  store i64 %dec182, i64* %bytes_in_buffer, align 8, !tbaa !21
  %189 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr183 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr183, i8** %next_input_byte, align 8, !tbaa !2
  %190 = load i8, i8* %189, align 1, !tbaa !23
  %conv184 = zext i8 %190 to i32
  store i32 %conv184, i32* %c, align 4, !tbaa !6
  br label %do.cond.185

do.cond.185:                                      ; preds = %if.end.181
  br label %do.end.186

do.end.186:                                       ; preds = %do.cond.185
  %191 = load i32, i32* %c, align 4, !tbaa !6
  %shr187 = ashr i32 %191, 4
  %and188 = and i32 %shr187, 15
  %192 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %192, i32 0, i32 70
  store i32 %and188, i32* %Ah, align 4, !tbaa !68
  %193 = load i32, i32* %c, align 4, !tbaa !6
  %and189 = and i32 %193, 15
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %194, i32 0, i32 71
  store i32 %and189, i32* %Al, align 4, !tbaa !69
  br label %do.body.190

do.body.190:                                      ; preds = %do.end.186
  %195 = bitcast i32** %_mp191 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %195) #5
  %196 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err192 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %196, i32 0, i32 0
  %197 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err192, align 8, !tbaa !12
  %msg_parm193 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %197, i32 0, i32 6
  %i194 = bitcast %union.anon* %msg_parm193 to [8 x i32]*
  %arraydecay195 = getelementptr inbounds [8 x i32], [8 x i32]* %i194, i32 0, i32 0
  store i32* %arraydecay195, i32** %_mp191, align 8, !tbaa !2
  %198 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss196 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %198, i32 0, i32 68
  %199 = load i32, i32* %Ss196, align 4, !tbaa !66
  %200 = load i32*, i32** %_mp191, align 8, !tbaa !2
  %arrayidx197 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 %199, i32* %arrayidx197, align 4, !tbaa !6
  %201 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se198 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %201, i32 0, i32 69
  %202 = load i32, i32* %Se198, align 4, !tbaa !67
  %203 = load i32*, i32** %_mp191, align 8, !tbaa !2
  %arrayidx199 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %202, i32* %arrayidx199, align 4, !tbaa !6
  %204 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah200 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %204, i32 0, i32 70
  %205 = load i32, i32* %Ah200, align 4, !tbaa !68
  %206 = load i32*, i32** %_mp191, align 8, !tbaa !2
  %arrayidx201 = getelementptr inbounds i32, i32* %206, i64 2
  store i32 %205, i32* %arrayidx201, align 4, !tbaa !6
  %207 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al202 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %207, i32 0, i32 71
  %208 = load i32, i32* %Al202, align 4, !tbaa !69
  %209 = load i32*, i32** %_mp191, align 8, !tbaa !2
  %arrayidx203 = getelementptr inbounds i32, i32* %209, i64 3
  store i32 %208, i32* %arrayidx203, align 4, !tbaa !6
  %210 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err204 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %210, i32 0, i32 0
  %211 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err204, align 8, !tbaa !12
  %msg_code205 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %211, i32 0, i32 5
  store i32 104, i32* %msg_code205, align 4, !tbaa !13
  %212 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err206 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %212, i32 0, i32 0
  %213 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err206, align 8, !tbaa !12
  %emit_message207 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %213, i32 0, i32 1
  %214 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message207, align 8, !tbaa !16
  %215 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %216 = bitcast %struct.jpeg_decompress_struct* %215 to %struct.jpeg_common_struct*
  call void %214(%struct.jpeg_common_struct* %216, i32 1)
  %217 = bitcast i32** %_mp191 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #5
  br label %do.cond.208

do.cond.208:                                      ; preds = %do.body.190
  br label %do.end.209

do.end.209:                                       ; preds = %do.cond.208
  %218 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker210 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %218, i32 0, i32 78
  %219 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker210, align 8, !tbaa !24
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %219, i32 0, i32 7
  store i32 0, i32* %next_restart_num, align 4, !tbaa !39
  %220 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %220, i32 0, i32 34
  %221 = load i32, i32* %input_scan_number, align 4, !tbaa !35
  %inc211 = add nsw i32 %221, 1
  store i32 %inc211, i32* %input_scan_number, align 4, !tbaa !35
  %222 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %223 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte212 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %223, i32 0, i32 0
  store i8* %222, i8** %next_input_byte212, align 8, !tbaa !18
  %224 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %225 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer213 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %225, i32 0, i32 1
  store i64 %224, i64* %bytes_in_buffer213, align 8, !tbaa !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.209, %if.then.177, %if.then.160, %if.then.143, %if.then.89, %if.then.72, %if.then.33, %if.then.18, %if.then.6
  %226 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #5
  %227 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #5
  %228 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #5
  %229 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #5
  %230 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #5
  %231 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #5
  %232 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #5
  %233 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #5
  %234 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #5
  %235 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #5
  %236 = load i32, i32* %retval
  ret i32 %236
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_dac(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %index = alloca i32, align 4
  %val = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #5
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 5
  %5 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %5, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %6 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #5
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 0
  %8 = load i8*, i8** %next_input_byte1, align 8, !tbaa !18
  store i8* %8, i8** %next_input_byte, align 8, !tbaa !2
  %9 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #5
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 1
  %11 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !20
  store i64 %11, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %13 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %13, i32 0, i32 3
  %14 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %14(%struct.jpeg_decompress_struct* %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 0
  %17 = load i8*, i8** %next_input_byte4, align 8, !tbaa !18
  store i8* %17, i8** %next_input_byte, align 8, !tbaa !2
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 1
  %19 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !20
  store i64 %19, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %20 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %20, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %21 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %22 = load i8, i8* %21, align 1, !tbaa !23
  %conv = zext i8 %22 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !21
  %23 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp8 = icmp eq i64 %23, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %24 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %24, i32 0, i32 3
  %25 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !22
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call12 = call i32 %25(%struct.jpeg_decompress_struct* %26)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 0
  %28 = load i8*, i8** %next_input_byte16, align 8, !tbaa !18
  store i8* %28, i8** %next_input_byte, align 8, !tbaa !2
  %29 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %29, i32 0, i32 1
  %30 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !20
  store i64 %30, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %31 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec19 = add i64 %31, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !21
  %32 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !23
  %conv21 = zext i8 %33 to i64
  %34 = load i64, i64* %length, align 8, !tbaa !21
  %add = add nsw i64 %34, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load i64, i64* %length, align 8, !tbaa !21
  %sub = sub nsw i64 %35, 2
  store i64 %sub, i64* %length, align 8, !tbaa !21
  br label %while.cond

while.cond:                                       ; preds = %if.end.110, %do.end
  %36 = load i64, i64* %length, align 8, !tbaa !21
  %cmp22 = icmp sgt i64 %36, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.24

do.body.24:                                       ; preds = %while.body
  %37 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp25 = icmp eq i64 %37, 0
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %do.body.24
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 3
  %39 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer28, align 8, !tbaa !22
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call29 = call i32 %39(%struct.jpeg_decompress_struct* %40)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.27
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 0
  %42 = load i8*, i8** %next_input_byte33, align 8, !tbaa !18
  store i8* %42, i8** %next_input_byte, align 8, !tbaa !2
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 1
  %44 = load i64, i64* %bytes_in_buffer34, align 8, !tbaa !20
  store i64 %44, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %do.body.24
  %45 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec36 = add i64 %45, -1
  store i64 %dec36, i64* %bytes_in_buffer, align 8, !tbaa !21
  %46 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr37 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr37, i8** %next_input_byte, align 8, !tbaa !2
  %47 = load i8, i8* %46, align 1, !tbaa !23
  %conv38 = zext i8 %47 to i32
  store i32 %conv38, i32* %index, align 4, !tbaa !6
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.35
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %48 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp42 = icmp eq i64 %48, 0
  br i1 %cmp42, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %do.body.41
  %49 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer45 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %49, i32 0, i32 3
  %50 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer45, align 8, !tbaa !22
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call46 = call i32 %50(%struct.jpeg_decompress_struct* %51)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.then.44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.then.44
  %52 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte50 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %52, i32 0, i32 0
  %53 = load i8*, i8** %next_input_byte50, align 8, !tbaa !18
  store i8* %53, i8** %next_input_byte, align 8, !tbaa !2
  %54 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer51 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %54, i32 0, i32 1
  %55 = load i64, i64* %bytes_in_buffer51, align 8, !tbaa !20
  store i64 %55, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.49, %do.body.41
  %56 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec53 = add i64 %56, -1
  store i64 %dec53, i64* %bytes_in_buffer, align 8, !tbaa !21
  %57 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr54 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr54, i8** %next_input_byte, align 8, !tbaa !2
  %58 = load i8, i8* %57, align 1, !tbaa !23
  %conv55 = zext i8 %58 to i32
  store i32 %conv55, i32* %val, align 4, !tbaa !6
  br label %do.cond.56

do.cond.56:                                       ; preds = %if.end.52
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %59 = load i64, i64* %length, align 8, !tbaa !21
  %sub58 = sub nsw i64 %59, 2
  store i64 %sub58, i64* %length, align 8, !tbaa !21
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 5
  store i32 78, i32* %msg_code, align 4, !tbaa !13
  %62 = load i32, i32* %index, align 4, !tbaa !6
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %62, i32* %arrayidx, align 4, !tbaa !6
  %65 = load i32, i32* %val, align 4, !tbaa !6
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8, !tbaa !12
  %msg_parm61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 6
  %i62 = bitcast %union.anon* %msg_parm61 to [8 x i32]*
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %i62, i32 0, i64 1
  store i32 %65, i32* %arrayidx63, align 4, !tbaa !6
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err64, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 1
  %70 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %72 = bitcast %struct.jpeg_decompress_struct* %71 to %struct.jpeg_common_struct*
  call void %70(%struct.jpeg_common_struct* %72, i32 1)
  %73 = load i32, i32* %index, align 4, !tbaa !6
  %cmp65 = icmp slt i32 %73, 0
  br i1 %cmp65, label %if.then.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.57
  %74 = load i32, i32* %index, align 4, !tbaa !6
  %cmp67 = icmp sge i32 %74, 32
  br i1 %cmp67, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %lor.lhs.false, %do.end.57
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !12
  %msg_code71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 5
  store i32 26, i32* %msg_code71, align 4, !tbaa !13
  %77 = load i32, i32* %index, align 4, !tbaa !6
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8, !tbaa !12
  %msg_parm73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 6
  %i74 = bitcast %union.anon* %msg_parm73 to [8 x i32]*
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* %i74, i32 0, i64 0
  store i32 %77, i32* %arrayidx75, align 4, !tbaa !6
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err76, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 0
  %82 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %84 = bitcast %struct.jpeg_decompress_struct* %83 to %struct.jpeg_common_struct*
  call void %82(%struct.jpeg_common_struct* %84)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.69, %lor.lhs.false
  %85 = load i32, i32* %index, align 4, !tbaa !6
  %cmp78 = icmp sge i32 %85, 16
  br i1 %cmp78, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %if.end.77
  %86 = load i32, i32* %val, align 4, !tbaa !6
  %conv81 = trunc i32 %86 to i8
  %87 = load i32, i32* %index, align 4, !tbaa !6
  %sub82 = sub nsw i32 %87, 16
  %idxprom = sext i32 %sub82 to i64
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 48
  %arrayidx83 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom
  store i8 %conv81, i8* %arrayidx83, align 1, !tbaa !23
  br label %if.end.110

if.else:                                          ; preds = %if.end.77
  %89 = load i32, i32* %val, align 4, !tbaa !6
  %and = and i32 %89, 15
  %conv84 = trunc i32 %and to i8
  %90 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom85 = sext i32 %90 to i64
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 46
  %arrayidx86 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom85
  store i8 %conv84, i8* %arrayidx86, align 1, !tbaa !23
  %92 = load i32, i32* %val, align 4, !tbaa !6
  %shr = ashr i32 %92, 4
  %conv87 = trunc i32 %shr to i8
  %93 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom88 = sext i32 %93 to i64
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 47
  %arrayidx89 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom88
  store i8 %conv87, i8* %arrayidx89, align 1, !tbaa !23
  %95 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom90 = sext i32 %95 to i64
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_dc_L91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 46
  %arrayidx92 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L91, i32 0, i64 %idxprom90
  %97 = load i8, i8* %arrayidx92, align 1, !tbaa !23
  %conv93 = zext i8 %97 to i32
  %98 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom94 = sext i32 %98 to i64
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_dc_U95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 47
  %arrayidx96 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U95, i32 0, i64 %idxprom94
  %100 = load i8, i8* %arrayidx96, align 1, !tbaa !23
  %conv97 = zext i8 %100 to i32
  %cmp98 = icmp sgt i32 %conv93, %conv97
  br i1 %cmp98, label %if.then.100, label %if.end.109

if.then.100:                                      ; preds = %if.else
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err101, align 8, !tbaa !12
  %msg_code102 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 5
  store i32 27, i32* %msg_code102, align 4, !tbaa !13
  %103 = load i32, i32* %val, align 4, !tbaa !6
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err103, align 8, !tbaa !12
  %msg_parm104 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i32 0, i32 6
  %i105 = bitcast %union.anon* %msg_parm104 to [8 x i32]*
  %arrayidx106 = getelementptr inbounds [8 x i32], [8 x i32]* %i105, i32 0, i64 0
  store i32 %103, i32* %arrayidx106, align 4, !tbaa !6
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 0
  %107 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err107, align 8, !tbaa !12
  %error_exit108 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %107, i32 0, i32 0
  %108 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit108, align 8, !tbaa !38
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %110 = bitcast %struct.jpeg_decompress_struct* %109 to %struct.jpeg_common_struct*
  call void %108(%struct.jpeg_common_struct* %110)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.100, %if.else
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.80
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %111 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %112 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte111 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %112, i32 0, i32 0
  store i8* %111, i8** %next_input_byte111, align 8, !tbaa !18
  %113 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %114 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer112 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %114, i32 0, i32 1
  store i64 %113, i64* %bytes_in_buffer112, align 8, !tbaa !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.48, %if.then.31, %if.then.14, %if.then.3
  %115 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #5
  %116 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #5
  %117 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #5
  %118 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #5
  %119 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #5
  %120 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #5
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_dht(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %bits = alloca [17 x i8], align 16
  %huffval = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %htblptr = alloca %struct.JHUFF_TBL**, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  %_mp104 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast [17 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 17, i8* %1) #5
  %2 = bitcast [256 x i8]* %huffval to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #5
  %4 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #5
  %6 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #5
  %7 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #5
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 5
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %9, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %10 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #5
  %11 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %11, i32 0, i32 0
  %12 = load i8*, i8** %next_input_byte1, align 8, !tbaa !18
  store i8* %12, i8** %next_input_byte, align 8, !tbaa !2
  %13 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #5
  %14 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %14, i32 0, i32 1
  %15 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !20
  store i64 %15, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %16, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 3
  %18 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %18(%struct.jpeg_decompress_struct* %19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %20 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %20, i32 0, i32 0
  %21 = load i8*, i8** %next_input_byte4, align 8, !tbaa !18
  store i8* %21, i8** %next_input_byte, align 8, !tbaa !2
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 1
  %23 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !20
  store i64 %23, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  %24 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %24, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %25 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %26 = load i8, i8* %25, align 1, !tbaa !23
  %conv = zext i8 %26 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !21
  %27 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp8 = icmp eq i64 %27, 0
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 3
  %29 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer11, align 8, !tbaa !22
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call12 = call i32 %29(%struct.jpeg_decompress_struct* %30)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %31 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %31, i32 0, i32 0
  %32 = load i8*, i8** %next_input_byte16, align 8, !tbaa !18
  store i8* %32, i8** %next_input_byte, align 8, !tbaa !2
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 1
  %34 = load i64, i64* %bytes_in_buffer17, align 8, !tbaa !20
  store i64 %34, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.6
  %35 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec19 = add i64 %35, -1
  store i64 %dec19, i64* %bytes_in_buffer, align 8, !tbaa !21
  %36 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr20, i8** %next_input_byte, align 8, !tbaa !2
  %37 = load i8, i8* %36, align 1, !tbaa !23
  %conv21 = zext i8 %37 to i64
  %38 = load i64, i64* %length, align 8, !tbaa !21
  %add = add nsw i64 %38, %conv21
  store i64 %add, i64* %length, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load i64, i64* %length, align 8, !tbaa !21
  %sub = sub nsw i64 %39, 2
  store i64 %sub, i64* %length, align 8, !tbaa !21
  br label %while.cond

while.cond:                                       ; preds = %if.end.203, %do.end
  %40 = load i64, i64* %length, align 8, !tbaa !21
  %cmp22 = icmp sgt i64 %40, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.24

do.body.24:                                       ; preds = %while.body
  %41 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp25 = icmp eq i64 %41, 0
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %do.body.24
  %42 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %42, i32 0, i32 3
  %43 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer28, align 8, !tbaa !22
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call29 = call i32 %43(%struct.jpeg_decompress_struct* %44)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.27
  %45 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %45, i32 0, i32 0
  %46 = load i8*, i8** %next_input_byte33, align 8, !tbaa !18
  store i8* %46, i8** %next_input_byte, align 8, !tbaa !2
  %47 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %47, i32 0, i32 1
  %48 = load i64, i64* %bytes_in_buffer34, align 8, !tbaa !20
  store i64 %48, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %do.body.24
  %49 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec36 = add i64 %49, -1
  store i64 %dec36, i64* %bytes_in_buffer, align 8, !tbaa !21
  %50 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr37 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr37, i8** %next_input_byte, align 8, !tbaa !2
  %51 = load i8, i8* %50, align 1, !tbaa !23
  %conv38 = zext i8 %51 to i32
  store i32 %conv38, i32* %index, align 4, !tbaa !6
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.35
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 79, i32* %msg_code, align 4, !tbaa !13
  %54 = load i32, i32* %index, align 4, !tbaa !6
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err41, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 6
  %i42 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i42, i32 0, i64 0
  store i32 %54, i32* %arrayidx, align 4, !tbaa !6
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 1
  %59 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %61 = bitcast %struct.jpeg_decompress_struct* %60 to %struct.jpeg_common_struct*
  call void %59(%struct.jpeg_common_struct* %61, i32 1)
  %arrayidx44 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 0
  store i8 0, i8* %arrayidx44, align 1, !tbaa !23
  store i32 0, i32* %count, align 4, !tbaa !6
  store i32 1, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.40
  %62 = load i32, i32* %i, align 4, !tbaa !6
  %cmp45 = icmp sle i32 %62, 16
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.47

do.body.47:                                       ; preds = %for.body
  %63 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp48 = icmp eq i64 %63, 0
  br i1 %cmp48, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %do.body.47
  %64 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer51 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %64, i32 0, i32 3
  %65 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer51, align 8, !tbaa !22
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call52 = call i32 %65(%struct.jpeg_decompress_struct* %66)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.then.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.then.50
  %67 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte56 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %67, i32 0, i32 0
  %68 = load i8*, i8** %next_input_byte56, align 8, !tbaa !18
  store i8* %68, i8** %next_input_byte, align 8, !tbaa !2
  %69 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer57 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %69, i32 0, i32 1
  %70 = load i64, i64* %bytes_in_buffer57, align 8, !tbaa !20
  store i64 %70, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.55, %do.body.47
  %71 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec59 = add i64 %71, -1
  store i64 %dec59, i64* %bytes_in_buffer, align 8, !tbaa !21
  %72 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr60 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr60, i8** %next_input_byte, align 8, !tbaa !2
  %73 = load i8, i8* %72, align 1, !tbaa !23
  %74 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %74 to i64
  %arrayidx61 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom
  store i8 %73, i8* %arrayidx61, align 1, !tbaa !23
  br label %do.cond.62

do.cond.62:                                       ; preds = %if.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  %75 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom64 = sext i32 %75 to i64
  %arrayidx65 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom64
  %76 = load i8, i8* %arrayidx65, align 1, !tbaa !23
  %conv66 = zext i8 %76 to i32
  %77 = load i32, i32* %count, align 4, !tbaa !6
  %add67 = add nsw i32 %77, %conv66
  store i32 %add67, i32* %count, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %do.end.63
  %78 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i64, i64* %length, align 8, !tbaa !21
  %sub68 = sub nsw i64 %79, 17
  store i64 %sub68, i64* %length, align 8, !tbaa !21
  br label %do.body.69

do.body.69:                                       ; preds = %for.end
  %80 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #5
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8, !tbaa !12
  %msg_parm71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 6
  %i72 = bitcast %union.anon* %msg_parm71 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i72, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 1
  %83 = load i8, i8* %arrayidx73, align 1, !tbaa !23
  %conv74 = zext i8 %83 to i32
  %84 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx75 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %conv74, i32* %arrayidx75, align 4, !tbaa !6
  %arrayidx76 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 2
  %85 = load i8, i8* %arrayidx76, align 1, !tbaa !23
  %conv77 = zext i8 %85 to i32
  %86 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx78 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %conv77, i32* %arrayidx78, align 4, !tbaa !6
  %arrayidx79 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 3
  %87 = load i8, i8* %arrayidx79, align 1, !tbaa !23
  %conv80 = zext i8 %87 to i32
  %88 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx81 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 %conv80, i32* %arrayidx81, align 4, !tbaa !6
  %arrayidx82 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 4
  %89 = load i8, i8* %arrayidx82, align 1, !tbaa !23
  %conv83 = zext i8 %89 to i32
  %90 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx84 = getelementptr inbounds i32, i32* %90, i64 3
  store i32 %conv83, i32* %arrayidx84, align 4, !tbaa !6
  %arrayidx85 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 5
  %91 = load i8, i8* %arrayidx85, align 1, !tbaa !23
  %conv86 = zext i8 %91 to i32
  %92 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx87 = getelementptr inbounds i32, i32* %92, i64 4
  store i32 %conv86, i32* %arrayidx87, align 4, !tbaa !6
  %arrayidx88 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 6
  %93 = load i8, i8* %arrayidx88, align 1, !tbaa !23
  %conv89 = zext i8 %93 to i32
  %94 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds i32, i32* %94, i64 5
  store i32 %conv89, i32* %arrayidx90, align 4, !tbaa !6
  %arrayidx91 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 7
  %95 = load i8, i8* %arrayidx91, align 1, !tbaa !23
  %conv92 = zext i8 %95 to i32
  %96 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx93 = getelementptr inbounds i32, i32* %96, i64 6
  store i32 %conv92, i32* %arrayidx93, align 4, !tbaa !6
  %arrayidx94 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 8
  %97 = load i8, i8* %arrayidx94, align 1, !tbaa !23
  %conv95 = zext i8 %97 to i32
  %98 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx96 = getelementptr inbounds i32, i32* %98, i64 7
  store i32 %conv95, i32* %arrayidx96, align 4, !tbaa !6
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err97, align 8, !tbaa !12
  %msg_code98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i32 0, i32 5
  store i32 85, i32* %msg_code98, align 4, !tbaa !13
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err99, align 8, !tbaa !12
  %emit_message100 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 1
  %103 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message100, align 8, !tbaa !16
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %105 = bitcast %struct.jpeg_decompress_struct* %104 to %struct.jpeg_common_struct*
  call void %103(%struct.jpeg_common_struct* %105, i32 2)
  %106 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #5
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.69
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  br label %do.body.103

do.body.103:                                      ; preds = %do.end.102
  %107 = bitcast i32** %_mp104 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #5
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err105, align 8, !tbaa !12
  %msg_parm106 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 6
  %i107 = bitcast %union.anon* %msg_parm106 to [8 x i32]*
  %arraydecay108 = getelementptr inbounds [8 x i32], [8 x i32]* %i107, i32 0, i32 0
  store i32* %arraydecay108, i32** %_mp104, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 9
  %110 = load i8, i8* %arrayidx109, align 1, !tbaa !23
  %conv110 = zext i8 %110 to i32
  %111 = load i32*, i32** %_mp104, align 8, !tbaa !2
  %arrayidx111 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %conv110, i32* %arrayidx111, align 4, !tbaa !6
  %arrayidx112 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 10
  %112 = load i8, i8* %arrayidx112, align 1, !tbaa !23
  %conv113 = zext i8 %112 to i32
  %113 = load i32*, i32** %_mp104, align 8, !tbaa !2
  %arrayidx114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %conv113, i32* %arrayidx114, align 4, !tbaa !6
  %arrayidx115 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 11
  %114 = load i8, i8* %arrayidx115, align 1, !tbaa !23
  %conv116 = zext i8 %114 to i32
  %115 = load i32*, i32** %_mp104, align 8, !tbaa !2
  %arrayidx117 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 %conv116, i32* %arrayidx117, align 4, !tbaa !6
  %arrayidx118 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 12
  %116 = load i8, i8* %arrayidx118, align 1, !tbaa !23
  %conv119 = zext i8 %116 to i32
  %117 = load i32*, i32** %_mp104, align 8, !tbaa !2
  %arrayidx120 = getelementptr inbounds i32, i32* %117, i64 3
  store i32 %conv119, i32* %arrayidx120, align 4, !tbaa !6
  %arrayidx121 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 13
  %118 = load i8, i8* %arrayidx121, align 1, !tbaa !23
  %conv122 = zext i8 %118 to i32
  %119 = load i32*, i32** %_mp104, align 8, !tbaa !2
  %arrayidx123 = getelementptr inbounds i32, i32* %119, i64 4
  store i32 %conv122, i32* %arrayidx123, align 4, !tbaa !6
  %arrayidx124 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 14
  %120 = load i8, i8* %arrayidx124, align 1, !tbaa !23
  %conv125 = zext i8 %120 to i32
  %121 = load i32*, i32** %_mp104, align 8, !tbaa !2
  %arrayidx126 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 %conv125, i32* %arrayidx126, align 4, !tbaa !6
  %arrayidx127 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 15
  %122 = load i8, i8* %arrayidx127, align 1, !tbaa !23
  %conv128 = zext i8 %122 to i32
  %123 = load i32*, i32** %_mp104, align 8, !tbaa !2
  %arrayidx129 = getelementptr inbounds i32, i32* %123, i64 6
  store i32 %conv128, i32* %arrayidx129, align 4, !tbaa !6
  %arrayidx130 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 16
  %124 = load i8, i8* %arrayidx130, align 1, !tbaa !23
  %conv131 = zext i8 %124 to i32
  %125 = load i32*, i32** %_mp104, align 8, !tbaa !2
  %arrayidx132 = getelementptr inbounds i32, i32* %125, i64 7
  store i32 %conv131, i32* %arrayidx132, align 4, !tbaa !6
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err133 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 0
  %127 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err133, align 8, !tbaa !12
  %msg_code134 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %127, i32 0, i32 5
  store i32 85, i32* %msg_code134, align 4, !tbaa !13
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %128, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err135, align 8, !tbaa !12
  %emit_message136 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 1
  %130 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message136, align 8, !tbaa !16
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %132 = bitcast %struct.jpeg_decompress_struct* %131 to %struct.jpeg_common_struct*
  call void %130(%struct.jpeg_common_struct* %132, i32 2)
  %133 = bitcast i32** %_mp104 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #5
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.body.103
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  %134 = load i32, i32* %count, align 4, !tbaa !6
  %cmp139 = icmp sgt i32 %134, 256
  br i1 %cmp139, label %if.then.144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.138
  %135 = load i32, i32* %count, align 4, !tbaa !6
  %conv141 = sext i32 %135 to i64
  %136 = load i64, i64* %length, align 8, !tbaa !21
  %cmp142 = icmp sgt i64 %conv141, %136
  br i1 %cmp142, label %if.then.144, label %if.end.148

if.then.144:                                      ; preds = %lor.lhs.false, %do.end.138
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err145 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 0
  %138 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err145, align 8, !tbaa !12
  %msg_code146 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %138, i32 0, i32 5
  store i32 28, i32* %msg_code146, align 4, !tbaa !13
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err147 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %139, i32 0, i32 0
  %140 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err147, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %140, i32 0, i32 0
  %141 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %143 = bitcast %struct.jpeg_decompress_struct* %142 to %struct.jpeg_common_struct*
  call void %141(%struct.jpeg_common_struct* %143)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.144, %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.171, %if.end.148
  %144 = load i32, i32* %i, align 4, !tbaa !6
  %145 = load i32, i32* %count, align 4, !tbaa !6
  %cmp150 = icmp slt i32 %144, %145
  br i1 %cmp150, label %for.body.152, label %for.end.173

for.body.152:                                     ; preds = %for.cond.149
  br label %do.body.153

do.body.153:                                      ; preds = %for.body.152
  %146 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp154 = icmp eq i64 %146, 0
  br i1 %cmp154, label %if.then.156, label %if.end.164

if.then.156:                                      ; preds = %do.body.153
  %147 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer157 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %147, i32 0, i32 3
  %148 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer157, align 8, !tbaa !22
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call158 = call i32 %148(%struct.jpeg_decompress_struct* %149)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.end.161, label %if.then.160

if.then.160:                                      ; preds = %if.then.156
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.161:                                       ; preds = %if.then.156
  %150 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte162 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %150, i32 0, i32 0
  %151 = load i8*, i8** %next_input_byte162, align 8, !tbaa !18
  store i8* %151, i8** %next_input_byte, align 8, !tbaa !2
  %152 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer163 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %152, i32 0, i32 1
  %153 = load i64, i64* %bytes_in_buffer163, align 8, !tbaa !20
  store i64 %153, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.161, %do.body.153
  %154 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec165 = add i64 %154, -1
  store i64 %dec165, i64* %bytes_in_buffer, align 8, !tbaa !21
  %155 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr166 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr166, i8** %next_input_byte, align 8, !tbaa !2
  %156 = load i8, i8* %155, align 1, !tbaa !23
  %157 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom167 = sext i32 %157 to i64
  %arrayidx168 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom167
  store i8 %156, i8* %arrayidx168, align 1, !tbaa !23
  br label %do.cond.169

do.cond.169:                                      ; preds = %if.end.164
  br label %do.end.170

do.end.170:                                       ; preds = %do.cond.169
  br label %for.inc.171

for.inc.171:                                      ; preds = %do.end.170
  %158 = load i32, i32* %i, align 4, !tbaa !6
  %inc172 = add nsw i32 %158, 1
  store i32 %inc172, i32* %i, align 4, !tbaa !6
  br label %for.cond.149

for.end.173:                                      ; preds = %for.cond.149
  %159 = load i32, i32* %count, align 4, !tbaa !6
  %conv174 = sext i32 %159 to i64
  %160 = load i64, i64* %length, align 8, !tbaa !21
  %sub175 = sub nsw i64 %160, %conv174
  store i64 %sub175, i64* %length, align 8, !tbaa !21
  %161 = load i32, i32* %index, align 4, !tbaa !6
  %and = and i32 %161, 16
  %tobool176 = icmp ne i32 %and, 0
  br i1 %tobool176, label %if.then.177, label %if.else

if.then.177:                                      ; preds = %for.end.173
  %162 = load i32, i32* %index, align 4, !tbaa !6
  %sub178 = sub nsw i32 %162, 16
  store i32 %sub178, i32* %index, align 4, !tbaa !6
  %163 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom179 = sext i32 %163 to i64
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 41
  %arrayidx180 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom179
  store %struct.JHUFF_TBL** %arrayidx180, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  br label %if.end.183

if.else:                                          ; preds = %for.end.173
  %165 = load i32, i32* %index, align 4, !tbaa !6
  %idxprom181 = sext i32 %165 to i64
  %166 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %166, i32 0, i32 40
  %arrayidx182 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom181
  store %struct.JHUFF_TBL** %arrayidx182, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  br label %if.end.183

if.end.183:                                       ; preds = %if.else, %if.then.177
  %167 = load i32, i32* %index, align 4, !tbaa !6
  %cmp184 = icmp slt i32 %167, 0
  br i1 %cmp184, label %if.then.189, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %if.end.183
  %168 = load i32, i32* %index, align 4, !tbaa !6
  %cmp187 = icmp sge i32 %168, 4
  br i1 %cmp187, label %if.then.189, label %if.end.198

if.then.189:                                      ; preds = %lor.lhs.false.186, %if.end.183
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err190 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %169, i32 0, i32 0
  %170 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err190, align 8, !tbaa !12
  %msg_code191 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %170, i32 0, i32 5
  store i32 29, i32* %msg_code191, align 4, !tbaa !13
  %171 = load i32, i32* %index, align 4, !tbaa !6
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err192 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %172, i32 0, i32 0
  %173 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err192, align 8, !tbaa !12
  %msg_parm193 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %173, i32 0, i32 6
  %i194 = bitcast %union.anon* %msg_parm193 to [8 x i32]*
  %arrayidx195 = getelementptr inbounds [8 x i32], [8 x i32]* %i194, i32 0, i64 0
  store i32 %171, i32* %arrayidx195, align 4, !tbaa !6
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err196 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 0
  %175 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err196, align 8, !tbaa !12
  %error_exit197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %175, i32 0, i32 0
  %176 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit197, align 8, !tbaa !38
  %177 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %178 = bitcast %struct.jpeg_decompress_struct* %177 to %struct.jpeg_common_struct*
  call void %176(%struct.jpeg_common_struct* %178)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.189, %lor.lhs.false.186
  %179 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %180 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %179, align 8, !tbaa !2
  %cmp199 = icmp eq %struct.JHUFF_TBL* %180, null
  br i1 %cmp199, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %if.end.198
  %181 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %182 = bitcast %struct.jpeg_decompress_struct* %181 to %struct.jpeg_common_struct*
  %call202 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %182)
  %183 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %call202, %struct.JHUFF_TBL** %183, align 8, !tbaa !2
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.201, %if.end.198
  %184 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %185 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %184, align 8, !tbaa !2
  %bits204 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %185, i32 0, i32 0
  %arraydecay205 = getelementptr inbounds [17 x i8], [17 x i8]* %bits204, i32 0, i32 0
  %arraydecay206 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i32 0
  %186 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %187 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %186, align 8, !tbaa !2
  %bits207 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %187, i32 0, i32 0
  %arraydecay208 = getelementptr inbounds [17 x i8], [17 x i8]* %bits207, i32 0, i32 0
  %188 = call i64 @llvm.objectsize.i64.p0i8(i8* %arraydecay208, i1 false)
  %call209 = call i8* @__memcpy_chk(i8* %arraydecay205, i8* %arraydecay206, i64 17, i64 %188) #5
  %189 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %190 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %189, align 8, !tbaa !2
  %huffval210 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %190, i32 0, i32 1
  %arraydecay211 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval210, i32 0, i32 0
  %arraydecay212 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i32 0
  %191 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %192 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %191, align 8, !tbaa !2
  %huffval213 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %192, i32 0, i32 1
  %arraydecay214 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval213, i32 0, i32 0
  %193 = call i64 @llvm.objectsize.i64.p0i8(i8* %arraydecay214, i1 false)
  %call215 = call i8* @__memcpy_chk(i8* %arraydecay211, i8* %arraydecay212, i64 256, i64 %193) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %194 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %195 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte216 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %195, i32 0, i32 0
  store i8* %194, i8** %next_input_byte216, align 8, !tbaa !18
  %196 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %197 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer217 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %197, i32 0, i32 1
  store i64 %196, i64* %bytes_in_buffer217, align 8, !tbaa !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.160, %if.then.54, %if.then.31, %if.then.14, %if.then.3
  %198 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #5
  %199 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #5
  %200 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #5
  %201 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #5
  %202 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #5
  %203 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #5
  %204 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #5
  %205 = bitcast [256 x i8]* %huffval to i8*
  call void @llvm.lifetime.end(i64 256, i8* %205) #5
  %206 = bitcast [17 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 17, i8* %206) #5
  %207 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #5
  %208 = load i32, i32* %retval
  ret i32 %208
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_dqt(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %prec = alloca i32, align 4
  %tmp = alloca i32, align 4
  %quant_ptr = alloca %struct.JQUANT_TBL*, align 8
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #5
  %4 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast %struct.JQUANT_TBL** %quant_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #5
  %6 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #5
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 5
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %8, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %9 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #5
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte4, align 8, !tbaa !18
  store i8* %11, i8** %next_input_byte, align 8, !tbaa !2
  %12 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #5
  %13 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer6 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %13, i32 0, i32 1
  %14 = load i64, i64* %bytes_in_buffer6, align 8, !tbaa !20
  store i64 %14, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %15 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %15, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %do.body
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 3
  %17 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %17(%struct.jpeg_decompress_struct* %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %19, i32 0, i32 0
  %20 = load i8*, i8** %next_input_byte8, align 8, !tbaa !18
  store i8* %20, i8** %next_input_byte, align 8, !tbaa !2
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 1
  %22 = load i64, i64* %bytes_in_buffer9, align 8, !tbaa !20
  store i64 %22, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %do.body
  %23 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %23, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %24 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %25 = load i8, i8* %24, align 1, !tbaa !23
  %conv = zext i8 %25 to i32
  %shl = shl i32 %conv, 8
  %conv11 = zext i32 %shl to i64
  store i64 %conv11, i64* %length, align 8, !tbaa !21
  %26 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp12 = icmp eq i64 %26, 0
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.10
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 3
  %28 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer15, align 8, !tbaa !22
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call16 = call i32 %28(%struct.jpeg_decompress_struct* %29)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.14
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 0
  %31 = load i8*, i8** %next_input_byte20, align 8, !tbaa !18
  store i8* %31, i8** %next_input_byte, align 8, !tbaa !2
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 1
  %33 = load i64, i64* %bytes_in_buffer21, align 8, !tbaa !20
  store i64 %33, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end.10
  %34 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec23 = add i64 %34, -1
  store i64 %dec23, i64* %bytes_in_buffer, align 8, !tbaa !21
  %35 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr24 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr24, i8** %next_input_byte, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !23
  %conv25 = zext i8 %36 to i64
  %37 = load i64, i64* %length, align 8, !tbaa !21
  %add = add nsw i64 %37, %conv25
  store i64 %add, i64* %length, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load i64, i64* %length, align 8, !tbaa !21
  %sub = sub nsw i64 %38, 2
  store i64 %sub, i64* %length, align 8, !tbaa !21
  br label %while.cond

while.cond:                                       ; preds = %if.end.209, %do.end
  %39 = load i64, i64* %length, align 8, !tbaa !21
  %cmp26 = icmp sgt i64 %39, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.28

do.body.28:                                       ; preds = %while.body
  %40 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp29 = icmp eq i64 %40, 0
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %do.body.28
  %41 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %41, i32 0, i32 3
  %42 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer32, align 8, !tbaa !22
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call33 = call i32 %42(%struct.jpeg_decompress_struct* %43)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.31
  %44 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %44, i32 0, i32 0
  %45 = load i8*, i8** %next_input_byte37, align 8, !tbaa !18
  store i8* %45, i8** %next_input_byte, align 8, !tbaa !2
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer38 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 1
  %47 = load i64, i64* %bytes_in_buffer38, align 8, !tbaa !20
  store i64 %47, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %do.body.28
  %48 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec40 = add i64 %48, -1
  store i64 %dec40, i64* %bytes_in_buffer, align 8, !tbaa !21
  %49 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr41 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr41, i8** %next_input_byte, align 8, !tbaa !2
  %50 = load i8, i8* %49, align 1, !tbaa !23
  %conv42 = zext i8 %50 to i32
  store i32 %conv42, i32* %n, align 4, !tbaa !6
  br label %do.cond.43

do.cond.43:                                       ; preds = %if.end.39
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  %51 = load i32, i32* %n, align 4, !tbaa !6
  %shr = ashr i32 %51, 4
  store i32 %shr, i32* %prec, align 4, !tbaa !6
  %52 = load i32, i32* %n, align 4, !tbaa !6
  %and = and i32 %52, 15
  store i32 %and, i32* %n, align 4, !tbaa !6
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 5
  store i32 80, i32* %msg_code, align 4, !tbaa !13
  %55 = load i32, i32* %n, align 4, !tbaa !6
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err45, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 6
  %i46 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i46, i32 0, i64 0
  store i32 %55, i32* %arrayidx, align 4, !tbaa !6
  %58 = load i32, i32* %prec, align 4, !tbaa !6
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err47, align 8, !tbaa !12
  %msg_parm48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 6
  %i49 = bitcast %union.anon* %msg_parm48 to [8 x i32]*
  %arrayidx50 = getelementptr inbounds [8 x i32], [8 x i32]* %i49, i32 0, i64 1
  store i32 %58, i32* %arrayidx50, align 4, !tbaa !6
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err51, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 1
  %63 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %65 = bitcast %struct.jpeg_decompress_struct* %64 to %struct.jpeg_common_struct*
  call void %63(%struct.jpeg_common_struct* %65, i32 1)
  %66 = load i32, i32* %n, align 4, !tbaa !6
  %cmp52 = icmp sge i32 %66, 4
  br i1 %cmp52, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %do.end.44
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8, !tbaa !12
  %msg_code56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 5
  store i32 30, i32* %msg_code56, align 4, !tbaa !13
  %69 = load i32, i32* %n, align 4, !tbaa !6
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !12
  %msg_parm58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 6
  %i59 = bitcast %union.anon* %msg_parm58 to [8 x i32]*
  %arrayidx60 = getelementptr inbounds [8 x i32], [8 x i32]* %i59, i32 0, i64 0
  store i32 %69, i32* %arrayidx60, align 4, !tbaa !6
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err61, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 0
  %74 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %76 = bitcast %struct.jpeg_decompress_struct* %75 to %struct.jpeg_common_struct*
  call void %74(%struct.jpeg_common_struct* %76)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.54, %do.end.44
  %77 = load i32, i32* %n, align 4, !tbaa !6
  %idxprom = sext i32 %77 to i64
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 39
  %arrayidx63 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %79 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx63, align 8, !tbaa !2
  %cmp64 = icmp eq %struct.JQUANT_TBL* %79, null
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %if.end.62
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %81 = bitcast %struct.jpeg_decompress_struct* %80 to %struct.jpeg_common_struct*
  %call67 = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %81)
  %82 = load i32, i32* %n, align 4, !tbaa !6
  %idxprom68 = sext i32 %82 to i64
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 39
  %arrayidx70 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs69, i32 0, i64 %idxprom68
  store %struct.JQUANT_TBL* %call67, %struct.JQUANT_TBL** %arrayidx70, align 8, !tbaa !2
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.end.62
  %84 = load i32, i32* %n, align 4, !tbaa !6
  %idxprom72 = sext i32 %84 to i64
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 39
  %arrayidx74 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs73, i32 0, i64 %idxprom72
  %86 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx74, align 8, !tbaa !2
  store %struct.JQUANT_TBL* %86, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.71
  %87 = load i32, i32* %i, align 4, !tbaa !6
  %cmp75 = icmp slt i32 %87, 64
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load i32, i32* %prec, align 4, !tbaa !6
  %tobool77 = icmp ne i32 %88, 0
  br i1 %tobool77, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %for.body
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %89 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp80 = icmp eq i64 %89, 0
  br i1 %cmp80, label %if.then.82, label %if.end.90

if.then.82:                                       ; preds = %do.body.79
  %90 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer83 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %90, i32 0, i32 3
  %91 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer83, align 8, !tbaa !22
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call84 = call i32 %91(%struct.jpeg_decompress_struct* %92)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %if.then.82
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.then.82
  %93 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte88 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %93, i32 0, i32 0
  %94 = load i8*, i8** %next_input_byte88, align 8, !tbaa !18
  store i8* %94, i8** %next_input_byte, align 8, !tbaa !2
  %95 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer89 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %95, i32 0, i32 1
  %96 = load i64, i64* %bytes_in_buffer89, align 8, !tbaa !20
  store i64 %96, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.87, %do.body.79
  %97 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec91 = add i64 %97, -1
  store i64 %dec91, i64* %bytes_in_buffer, align 8, !tbaa !21
  %98 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr92 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr92, i8** %next_input_byte, align 8, !tbaa !2
  %99 = load i8, i8* %98, align 1, !tbaa !23
  %conv93 = zext i8 %99 to i32
  %shl94 = shl i32 %conv93, 8
  store i32 %shl94, i32* %tmp, align 4, !tbaa !6
  %100 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp95 = icmp eq i64 %100, 0
  br i1 %cmp95, label %if.then.97, label %if.end.105

if.then.97:                                       ; preds = %if.end.90
  %101 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer98 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %101, i32 0, i32 3
  %102 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer98, align 8, !tbaa !22
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call99 = call i32 %102(%struct.jpeg_decompress_struct* %103)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %if.then.97
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.then.97
  %104 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte103 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %104, i32 0, i32 0
  %105 = load i8*, i8** %next_input_byte103, align 8, !tbaa !18
  store i8* %105, i8** %next_input_byte, align 8, !tbaa !2
  %106 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer104 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %106, i32 0, i32 1
  %107 = load i64, i64* %bytes_in_buffer104, align 8, !tbaa !20
  store i64 %107, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.102, %if.end.90
  %108 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec106 = add i64 %108, -1
  store i64 %dec106, i64* %bytes_in_buffer, align 8, !tbaa !21
  %109 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr107 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr107, i8** %next_input_byte, align 8, !tbaa !2
  %110 = load i8, i8* %109, align 1, !tbaa !23
  %conv108 = zext i8 %110 to i32
  %111 = load i32, i32* %tmp, align 4, !tbaa !6
  %add109 = add i32 %111, %conv108
  store i32 %add109, i32* %tmp, align 4, !tbaa !6
  br label %do.cond.110

do.cond.110:                                      ; preds = %if.end.105
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  br label %if.end.129

if.else:                                          ; preds = %for.body
  br label %do.body.112

do.body.112:                                      ; preds = %if.else
  %112 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp113 = icmp eq i64 %112, 0
  br i1 %cmp113, label %if.then.115, label %if.end.123

if.then.115:                                      ; preds = %do.body.112
  %113 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer116 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %113, i32 0, i32 3
  %114 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer116, align 8, !tbaa !22
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call117 = call i32 %114(%struct.jpeg_decompress_struct* %115)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %if.then.115
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.120:                                       ; preds = %if.then.115
  %116 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte121 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %116, i32 0, i32 0
  %117 = load i8*, i8** %next_input_byte121, align 8, !tbaa !18
  store i8* %117, i8** %next_input_byte, align 8, !tbaa !2
  %118 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer122 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %118, i32 0, i32 1
  %119 = load i64, i64* %bytes_in_buffer122, align 8, !tbaa !20
  store i64 %119, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.120, %do.body.112
  %120 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec124 = add i64 %120, -1
  store i64 %dec124, i64* %bytes_in_buffer, align 8, !tbaa !21
  %121 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr125 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr125, i8** %next_input_byte, align 8, !tbaa !2
  %122 = load i8, i8* %121, align 1, !tbaa !23
  %conv126 = zext i8 %122 to i32
  store i32 %conv126, i32* %tmp, align 4, !tbaa !6
  br label %do.cond.127

do.cond.127:                                      ; preds = %if.end.123
  br label %do.end.128

do.end.128:                                       ; preds = %do.cond.127
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %do.end.111
  %123 = load i32, i32* %tmp, align 4, !tbaa !6
  %conv130 = trunc i32 %123 to i16
  %124 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom131 = sext i32 %124 to i64
  %arrayidx132 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom131
  %125 = load i32, i32* %arrayidx132, align 4, !tbaa !6
  %idxprom133 = sext i32 %125 to i64
  %126 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %126, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom133
  store i16 %conv130, i16* %arrayidx134, align 2, !tbaa !70
  br label %for.inc

for.inc:                                          ; preds = %if.end.129
  %127 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %127, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %128, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err135, align 8, !tbaa !12
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 7
  %130 = load i32, i32* %trace_level, align 4, !tbaa !71
  %cmp136 = icmp sge i32 %130, 2
  br i1 %cmp136, label %if.then.138, label %if.end.204

if.then.138:                                      ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.201, %if.then.138
  %131 = load i32, i32* %i, align 4, !tbaa !6
  %cmp140 = icmp slt i32 %131, 64
  br i1 %cmp140, label %for.body.142, label %for.end.203

for.body.142:                                     ; preds = %for.cond.139
  br label %do.body.143

do.body.143:                                      ; preds = %for.body.142
  %132 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #5
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err145 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 0
  %134 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err145, align 8, !tbaa !12
  %msg_parm146 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %134, i32 0, i32 6
  %i147 = bitcast %union.anon* %msg_parm146 to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %i147, i32 0, i32 0
  store i32* %arraydecay, i32** %_mp, align 8, !tbaa !2
  %135 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom148 = sext i32 %135 to i64
  %136 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  %quantval149 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %136, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval149, i32 0, i64 %idxprom148
  %137 = load i16, i16* %arrayidx150, align 2, !tbaa !70
  %conv151 = zext i16 %137 to i32
  %138 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx152 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %conv151, i32* %arrayidx152, align 4, !tbaa !6
  %139 = load i32, i32* %i, align 4, !tbaa !6
  %add153 = add nsw i32 %139, 1
  %idxprom154 = sext i32 %add153 to i64
  %140 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  %quantval155 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %140, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval155, i32 0, i64 %idxprom154
  %141 = load i16, i16* %arrayidx156, align 2, !tbaa !70
  %conv157 = zext i16 %141 to i32
  %142 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx158 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %conv157, i32* %arrayidx158, align 4, !tbaa !6
  %143 = load i32, i32* %i, align 4, !tbaa !6
  %add159 = add nsw i32 %143, 2
  %idxprom160 = sext i32 %add159 to i64
  %144 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  %quantval161 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %144, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval161, i32 0, i64 %idxprom160
  %145 = load i16, i16* %arrayidx162, align 2, !tbaa !70
  %conv163 = zext i16 %145 to i32
  %146 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx164 = getelementptr inbounds i32, i32* %146, i64 2
  store i32 %conv163, i32* %arrayidx164, align 4, !tbaa !6
  %147 = load i32, i32* %i, align 4, !tbaa !6
  %add165 = add nsw i32 %147, 3
  %idxprom166 = sext i32 %add165 to i64
  %148 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  %quantval167 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %148, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval167, i32 0, i64 %idxprom166
  %149 = load i16, i16* %arrayidx168, align 2, !tbaa !70
  %conv169 = zext i16 %149 to i32
  %150 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx170 = getelementptr inbounds i32, i32* %150, i64 3
  store i32 %conv169, i32* %arrayidx170, align 4, !tbaa !6
  %151 = load i32, i32* %i, align 4, !tbaa !6
  %add171 = add nsw i32 %151, 4
  %idxprom172 = sext i32 %add171 to i64
  %152 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  %quantval173 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %152, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval173, i32 0, i64 %idxprom172
  %153 = load i16, i16* %arrayidx174, align 2, !tbaa !70
  %conv175 = zext i16 %153 to i32
  %154 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx176 = getelementptr inbounds i32, i32* %154, i64 4
  store i32 %conv175, i32* %arrayidx176, align 4, !tbaa !6
  %155 = load i32, i32* %i, align 4, !tbaa !6
  %add177 = add nsw i32 %155, 5
  %idxprom178 = sext i32 %add177 to i64
  %156 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  %quantval179 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %156, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval179, i32 0, i64 %idxprom178
  %157 = load i16, i16* %arrayidx180, align 2, !tbaa !70
  %conv181 = zext i16 %157 to i32
  %158 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx182 = getelementptr inbounds i32, i32* %158, i64 5
  store i32 %conv181, i32* %arrayidx182, align 4, !tbaa !6
  %159 = load i32, i32* %i, align 4, !tbaa !6
  %add183 = add nsw i32 %159, 6
  %idxprom184 = sext i32 %add183 to i64
  %160 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  %quantval185 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %160, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval185, i32 0, i64 %idxprom184
  %161 = load i16, i16* %arrayidx186, align 2, !tbaa !70
  %conv187 = zext i16 %161 to i32
  %162 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx188 = getelementptr inbounds i32, i32* %162, i64 6
  store i32 %conv187, i32* %arrayidx188, align 4, !tbaa !6
  %163 = load i32, i32* %i, align 4, !tbaa !6
  %add189 = add nsw i32 %163, 7
  %idxprom190 = sext i32 %add189 to i64
  %164 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_ptr, align 8, !tbaa !2
  %quantval191 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %164, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval191, i32 0, i64 %idxprom190
  %165 = load i16, i16* %arrayidx192, align 2, !tbaa !70
  %conv193 = zext i16 %165 to i32
  %166 = load i32*, i32** %_mp, align 8, !tbaa !2
  %arrayidx194 = getelementptr inbounds i32, i32* %166, i64 7
  store i32 %conv193, i32* %arrayidx194, align 4, !tbaa !6
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %167, i32 0, i32 0
  %168 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err195, align 8, !tbaa !12
  %msg_code196 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %168, i32 0, i32 5
  store i32 92, i32* %msg_code196, align 4, !tbaa !13
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err197 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %169, i32 0, i32 0
  %170 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err197, align 8, !tbaa !12
  %emit_message198 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %170, i32 0, i32 1
  %171 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message198, align 8, !tbaa !16
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %173 = bitcast %struct.jpeg_decompress_struct* %172 to %struct.jpeg_common_struct*
  call void %171(%struct.jpeg_common_struct* %173, i32 2)
  %174 = bitcast i32** %_mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #5
  br label %do.cond.199

do.cond.199:                                      ; preds = %do.body.143
  br label %do.end.200

do.end.200:                                       ; preds = %do.cond.199
  br label %for.inc.201

for.inc.201:                                      ; preds = %do.end.200
  %175 = load i32, i32* %i, align 4, !tbaa !6
  %add202 = add nsw i32 %175, 8
  store i32 %add202, i32* %i, align 4, !tbaa !6
  br label %for.cond.139

for.end.203:                                      ; preds = %for.cond.139
  br label %if.end.204

if.end.204:                                       ; preds = %for.end.203, %for.end
  %176 = load i64, i64* %length, align 8, !tbaa !21
  %sub205 = sub nsw i64 %176, 65
  store i64 %sub205, i64* %length, align 8, !tbaa !21
  %177 = load i32, i32* %prec, align 4, !tbaa !6
  %tobool206 = icmp ne i32 %177, 0
  br i1 %tobool206, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %if.end.204
  %178 = load i64, i64* %length, align 8, !tbaa !21
  %sub208 = sub nsw i64 %178, 64
  store i64 %sub208, i64* %length, align 8, !tbaa !21
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %if.end.204
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %179 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %180 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte210 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %180, i32 0, i32 0
  store i8* %179, i8** %next_input_byte210, align 8, !tbaa !18
  %181 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %182 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer211 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %182, i32 0, i32 1
  store i64 %181, i64* %bytes_in_buffer211, align 8, !tbaa !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.119, %if.then.101, %if.then.86, %if.then.35, %if.then.18, %if.then.7
  %183 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #5
  %184 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #5
  %185 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #5
  %186 = bitcast %struct.JQUANT_TBL** %quant_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #5
  %187 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #5
  %188 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #5
  %189 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #5
  %190 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #5
  %191 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #5
  %192 = load i32, i32* %retval
  ret i32 %192
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_dri(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %length = alloca i64, align 8
  %tmp = alloca i32, align 4
  %datasrc = alloca %struct.jpeg_source_mgr*, align 8
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #5
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 5
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !17
  store %struct.jpeg_source_mgr* %4, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %5 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #5
  %6 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte3 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %6, i32 0, i32 0
  %7 = load i8*, i8** %next_input_byte3, align 8, !tbaa !18
  store i8* %7, i8** %next_input_byte, align 8, !tbaa !2
  %8 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #5
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %9, i32 0, i32 1
  %10 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !20
  store i64 %10, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp = icmp eq i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.body
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 3
  %13 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !22
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %13(%struct.jpeg_decompress_struct* %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte7 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 0
  %16 = load i8*, i8** %next_input_byte7, align 8, !tbaa !18
  store i8* %16, i8** %next_input_byte, align 8, !tbaa !2
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 1
  %18 = load i64, i64* %bytes_in_buffer8, align 8, !tbaa !20
  store i64 %18, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %do.body
  %19 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec = add i64 %19, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !21
  %20 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %21 = load i8, i8* %20, align 1, !tbaa !23
  %conv = zext i8 %21 to i32
  %shl = shl i32 %conv, 8
  %conv10 = zext i32 %shl to i64
  store i64 %conv10, i64* %length, align 8, !tbaa !21
  %22 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp11 = icmp eq i64 %22, 0
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.9
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer14 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 3
  %24 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer14, align 8, !tbaa !22
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call15 = call i32 %24(%struct.jpeg_decompress_struct* %25)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.13
  %26 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte19 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %26, i32 0, i32 0
  %27 = load i8*, i8** %next_input_byte19, align 8, !tbaa !18
  store i8* %27, i8** %next_input_byte, align 8, !tbaa !2
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 1
  %29 = load i64, i64* %bytes_in_buffer20, align 8, !tbaa !20
  store i64 %29, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.18, %if.end.9
  %30 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec22 = add i64 %30, -1
  store i64 %dec22, i64* %bytes_in_buffer, align 8, !tbaa !21
  %31 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr23 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr23, i8** %next_input_byte, align 8, !tbaa !2
  %32 = load i8, i8* %31, align 1, !tbaa !23
  %conv24 = zext i8 %32 to i64
  %33 = load i64, i64* %length, align 8, !tbaa !21
  %add = add nsw i64 %33, %conv24
  store i64 %add, i64* %length, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i64, i64* %length, align 8, !tbaa !21
  %cmp25 = icmp ne i64 %34, 4
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 9, i32* %msg_code, align 4, !tbaa !13
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err28, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !38
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %do.end
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %42 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp31 = icmp eq i64 %42, 0
  br i1 %cmp31, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %do.body.30
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 3
  %44 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer34, align 8, !tbaa !22
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call35 = call i32 %44(%struct.jpeg_decompress_struct* %45)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.then.33
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte39 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 0
  %47 = load i8*, i8** %next_input_byte39, align 8, !tbaa !18
  store i8* %47, i8** %next_input_byte, align 8, !tbaa !2
  %48 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer40 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %48, i32 0, i32 1
  %49 = load i64, i64* %bytes_in_buffer40, align 8, !tbaa !20
  store i64 %49, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.38, %do.body.30
  %50 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec42 = add i64 %50, -1
  store i64 %dec42, i64* %bytes_in_buffer, align 8, !tbaa !21
  %51 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr43 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr43, i8** %next_input_byte, align 8, !tbaa !2
  %52 = load i8, i8* %51, align 1, !tbaa !23
  %conv44 = zext i8 %52 to i32
  %shl45 = shl i32 %conv44, 8
  store i32 %shl45, i32* %tmp, align 4, !tbaa !6
  %53 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %cmp46 = icmp eq i64 %53, 0
  br i1 %cmp46, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %if.end.41
  %54 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %fill_input_buffer49 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %54, i32 0, i32 3
  %55 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer49, align 8, !tbaa !22
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call50 = call i32 %55(%struct.jpeg_decompress_struct* %56)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.then.48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.48
  %57 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte54 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %57, i32 0, i32 0
  %58 = load i8*, i8** %next_input_byte54, align 8, !tbaa !18
  store i8* %58, i8** %next_input_byte, align 8, !tbaa !2
  %59 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer55 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %59, i32 0, i32 1
  %60 = load i64, i64* %bytes_in_buffer55, align 8, !tbaa !20
  store i64 %60, i64* %bytes_in_buffer, align 8, !tbaa !21
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.53, %if.end.41
  %61 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %dec57 = add i64 %61, -1
  store i64 %dec57, i64* %bytes_in_buffer, align 8, !tbaa !21
  %62 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr58 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr58, i8** %next_input_byte, align 8, !tbaa !2
  %63 = load i8, i8* %62, align 1, !tbaa !23
  %conv59 = zext i8 %63 to i32
  %64 = load i32, i32* %tmp, align 4, !tbaa !6
  %add60 = add i32 %64, %conv59
  store i32 %add60, i32* %tmp, align 4, !tbaa !6
  br label %do.cond.61

do.cond.61:                                       ; preds = %if.end.56
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err63, align 8, !tbaa !12
  %msg_code64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 81, i32* %msg_code64, align 4, !tbaa !13
  %67 = load i32, i32* %tmp, align 4, !tbaa !6
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %67, i32* %arrayidx, align 4, !tbaa !6
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8, !tbaa !12
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 1
  %72 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !16
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %74 = bitcast %struct.jpeg_decompress_struct* %73 to %struct.jpeg_common_struct*
  call void %72(%struct.jpeg_common_struct* %74, i32 1)
  %75 = load i32, i32* %tmp, align 4, !tbaa !6
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 49
  store i32 %75, i32* %restart_interval, align 4, !tbaa !48
  %77 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %78 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %next_input_byte67 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %78, i32 0, i32 0
  store i8* %77, i8** %next_input_byte67, align 8, !tbaa !18
  %79 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !21
  %80 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %datasrc, align 8, !tbaa !2
  %bytes_in_buffer68 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %80, i32 0, i32 1
  store i64 %79, i64* %bytes_in_buffer68, align 8, !tbaa !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.62, %if.then.52, %if.then.37, %if.then.17, %if.then.6
  %81 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #5
  %82 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #5
  %83 = bitcast %struct.jpeg_source_mgr** %datasrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #5
  %84 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #5
  %85 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #5
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

declare %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct*) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !7, i64 524}
!9 = !{!"jpeg_decompress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !4, i64 56, !7, i64 60, !7, i64 64, !10, i64 72, !7, i64 80, !7, i64 84, !4, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !4, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !3, i64 152, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !3, i64 184, !4, i64 192, !4, i64 224, !4, i64 256, !7, i64 288, !3, i64 296, !7, i64 304, !7, i64 308, !4, i64 312, !4, i64 328, !4, i64 344, !7, i64 360, !7, i64 364, !4, i64 368, !11, i64 370, !11, i64 372, !7, i64 376, !4, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !3, i64 408, !7, i64 416, !4, i64 424, !7, i64 456, !7, i64 460, !7, i64 464, !4, i64 468, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576, !3, i64 584, !3, i64 592, !3, i64 600, !3, i64 608}
!10 = !{!"double", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!9, !3, i64 0}
!13 = !{!14, !7, i64 40}
!14 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !4, i64 44, !7, i64 124, !15, i64 128, !3, i64 136, !7, i64 144, !3, i64 152, !7, i64 160, !7, i64 164}
!15 = !{!"long", !4, i64 0}
!16 = !{!14, !3, i64 8}
!17 = !{!9, !3, i64 32}
!18 = !{!19, !3, i64 0}
!19 = !{!"jpeg_source_mgr", !3, i64 0, !15, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48}
!20 = !{!19, !15, i64 8}
!21 = !{!15, !15, i64 0}
!22 = !{!19, !3, i64 24}
!23 = !{!4, !4, i64 0}
!24 = !{!9, !3, i64 568}
!25 = !{!26, !7, i64 172}
!26 = !{!"jpeg_marker_reader", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !4, i64 32, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172}
!27 = !{!9, !3, i64 8}
!28 = !{!29, !3, i64 0}
!29 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !15, i64 88}
!30 = !{!26, !3, i64 0}
!31 = !{!26, !3, i64 8}
!32 = !{!26, !3, i64 16}
!33 = !{!26, !3, i64 24}
!34 = !{!9, !3, i64 296}
!35 = !{!9, !7, i64 164}
!36 = !{!26, !7, i64 160}
!37 = !{!26, !7, i64 164}
!38 = !{!14, !3, i64 0}
!39 = !{!26, !7, i64 168}
!40 = !{!19, !3, i64 40}
!41 = !{!19, !3, i64 32}
!42 = !{!9, !7, i64 364}
!43 = !{!9, !4, i64 368}
!44 = !{!9, !11, i64 370}
!45 = !{!9, !11, i64 372}
!46 = !{!9, !7, i64 376}
!47 = !{!9, !4, i64 380}
!48 = !{!9, !7, i64 360}
!49 = !{!9, !4, i64 52}
!50 = !{!9, !7, i64 384}
!51 = !{!9, !7, i64 304}
!52 = !{!9, !7, i64 308}
!53 = !{!9, !7, i64 288}
!54 = !{!9, !7, i64 44}
!55 = !{!9, !7, i64 40}
!56 = !{!9, !7, i64 48}
!57 = !{!58, !7, i64 4}
!58 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!59 = !{!58, !7, i64 0}
!60 = !{!58, !7, i64 8}
!61 = !{!58, !7, i64 12}
!62 = !{!58, !7, i64 16}
!63 = !{!9, !7, i64 416}
!64 = !{!58, !7, i64 20}
!65 = !{!58, !7, i64 24}
!66 = !{!9, !7, i64 508}
!67 = !{!9, !7, i64 512}
!68 = !{!9, !7, i64 516}
!69 = !{!9, !7, i64 520}
!70 = !{!11, !11, i64 0}
!71 = !{!14, !7, i64 124}
