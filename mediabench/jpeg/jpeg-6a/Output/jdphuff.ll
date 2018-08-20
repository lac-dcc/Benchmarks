; ModuleID = 'jdphuff.c'
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
%struct.phuff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x %struct.d_derived_tbl*], %struct.d_derived_tbl* }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { i32, [4 x i32] }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], %struct.JHUFF_TBL*, [256 x i32], [256 x i8] }
%struct.bitread_working_state = type { i8*, i64, i32, i64, i32, %struct.jpeg_decompress_struct*, i32* }

@extend_test = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 16
@extend_offset = internal constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %coef_bit_ptr = alloca i32*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 1
  %5 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %5, i32 0, i32 0
  %6 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %8 = bitcast %struct.jpeg_decompress_struct* %7 to %struct.jpeg_common_struct*
  %call = call i8* %6(%struct.jpeg_common_struct* %8, i32 1, i64 96)
  %9 = bitcast i8* %call to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %9, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %10 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %11 = bitcast %struct.phuff_entropy_decoder* %10 to %struct.jpeg_entropy_decoder*
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 79
  store %struct.jpeg_entropy_decoder* %11, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !14
  %13 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %13, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_phuff_decoder, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8, !tbaa !15
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !20
  %cmp = icmp slt i32 %14, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %16, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom
  store %struct.d_derived_tbl* null, %struct.d_derived_tbl** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem3, align 8, !tbaa !6
  %alloc_small4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i32 0, i32 0
  %20 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small4, align 8, !tbaa !11
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 8
  %24 = load i32, i32* %num_components, align 4, !tbaa !21
  %mul = mul nsw i32 %24, 64
  %conv = sext i32 %mul to i64
  %mul5 = mul i64 %conv, 4
  %call6 = call i8* %20(%struct.jpeg_common_struct* %22, i32 1, i64 %mul5)
  %25 = bitcast i8* %call6 to [64 x i32]*
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 38
  store [64 x i32]* %25, [64 x i32]** %coef_bits, align 8, !tbaa !22
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef_bits7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 38
  %28 = load [64 x i32]*, [64 x i32]** %coef_bits7, align 8, !tbaa !22
  %arrayidx8 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0
  %arrayidx9 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx8, i32 0, i64 0
  store i32* %arrayidx9, i32** %coef_bit_ptr, align 8, !tbaa !2
  store i32 0, i32* %ci, align 4, !tbaa !20
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.22, %for.end
  %29 = load i32, i32* %ci, align 4, !tbaa !20
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 8
  %31 = load i32, i32* %num_components11, align 4, !tbaa !21
  %cmp12 = icmp slt i32 %29, %31
  br i1 %cmp12, label %for.body.14, label %for.end.24

for.body.14:                                      ; preds = %for.cond.10
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.19, %for.body.14
  %32 = load i32, i32* %i, align 4, !tbaa !20
  %cmp16 = icmp slt i32 %32, 64
  br i1 %cmp16, label %for.body.18, label %for.end.21

for.body.18:                                      ; preds = %for.cond.15
  %33 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %incdec.ptr, i32** %coef_bit_ptr, align 8, !tbaa !2
  store i32 -1, i32* %33, align 4, !tbaa !20
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.18
  %34 = load i32, i32* %i, align 4, !tbaa !20
  %inc20 = add nsw i32 %34, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !20
  br label %for.cond.15

for.end.21:                                       ; preds = %for.cond.15
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.21
  %35 = load i32, i32* %ci, align 4, !tbaa !20
  %inc23 = add nsw i32 %35, 1
  store i32 %inc23, i32* %ci, align 4, !tbaa !20
  br label %for.cond.10

for.end.24:                                       ; preds = %for.cond.10
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #3
  %37 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #3
  %38 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #3
  %39 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_phuff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %is_DC_band = alloca i32, align 4
  %bad = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %tbl = alloca i32, align 4
  %coef_bit_ptr = alloca i32*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cindex = alloca i32, align 4
  %expected = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 79
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %3, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %is_DC_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %bad to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 68
  %12 = load i32, i32* %Ss, align 4, !tbaa !23
  %cmp = icmp eq i32 %12, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_DC_band, align 4, !tbaa !20
  store i32 0, i32* %bad, align 4, !tbaa !20
  %13 = load i32, i32* %is_DC_band, align 4, !tbaa !20
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 69
  %15 = load i32, i32* %Se, align 4, !tbaa !24
  %cmp2 = icmp ne i32 %15, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %bad, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.18

if.else:                                          ; preds = %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 68
  %17 = load i32, i32* %Ss5, align 4, !tbaa !23
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 69
  %19 = load i32, i32* %Se6, align 4, !tbaa !24
  %cmp7 = icmp sgt i32 %17, %19
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 69
  %21 = load i32, i32* %Se9, align 4, !tbaa !24
  %cmp10 = icmp sge i32 %21, 64
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %bad, align 4, !tbaa !20
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %lor.lhs.false
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 62
  %23 = load i32, i32* %comps_in_scan, align 4, !tbaa !25
  %cmp14 = icmp ne i32 %23, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 1, i32* %bad, align 4, !tbaa !20
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 70
  %25 = load i32, i32* %Ah, align 4, !tbaa !26
  %cmp19 = icmp ne i32 %25, 0
  br i1 %cmp19, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end.18
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 71
  %27 = load i32, i32* %Al, align 4, !tbaa !27
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 70
  %29 = load i32, i32* %Ah22, align 4, !tbaa !26
  %sub = sub nsw i32 %29, 1
  %cmp23 = icmp ne i32 %27, %sub
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  store i32 1, i32* %bad, align 4, !tbaa !20
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.18
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 71
  %31 = load i32, i32* %Al28, align 4, !tbaa !27
  %cmp29 = icmp sgt i32 %31, 13
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  store i32 1, i32* %bad, align 4, !tbaa !20
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.27
  %32 = load i32, i32* %bad, align 4, !tbaa !20
  %tobool33 = icmp ne i32 %32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.53

if.then.34:                                       ; preds = %if.end.32
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !28
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 14, i32* %msg_code, align 4, !tbaa !29
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 68
  %36 = load i32, i32* %Ss35, align 4, !tbaa !23
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err36, align 8, !tbaa !28
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %36, i32* %arrayidx, align 4, !tbaa !20
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 69
  %40 = load i32, i32* %Se37, align 4, !tbaa !24
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8, !tbaa !28
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i40 = bitcast %union.anon* %msg_parm39 to [8 x i32]*
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %i40, i32 0, i64 1
  store i32 %40, i32* %arrayidx41, align 4, !tbaa !20
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 70
  %44 = load i32, i32* %Ah42, align 4, !tbaa !26
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8, !tbaa !28
  %msg_parm44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 6
  %i45 = bitcast %union.anon* %msg_parm44 to [8 x i32]*
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %i45, i32 0, i64 2
  store i32 %44, i32* %arrayidx46, align 4, !tbaa !20
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 71
  %48 = load i32, i32* %Al47, align 4, !tbaa !27
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8, !tbaa !28
  %msg_parm49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 6
  %i50 = bitcast %union.anon* %msg_parm49 to [8 x i32]*
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* %i50, i32 0, i64 3
  store i32 %48, i32* %arrayidx51, align 4, !tbaa !20
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err52, align 8, !tbaa !28
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 0
  %53 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !31
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %55 = bitcast %struct.jpeg_decompress_struct* %54 to %struct.jpeg_common_struct*
  call void %53(%struct.jpeg_common_struct* %55)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.34, %if.end.32
  store i32 0, i32* %ci, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc.110, %if.end.53
  %56 = load i32, i32* %ci, align 4, !tbaa !20
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 62
  %58 = load i32, i32* %comps_in_scan54, align 4, !tbaa !25
  %cmp55 = icmp slt i32 %56, %58
  br i1 %cmp55, label %for.body, label %for.end.112

for.body:                                         ; preds = %for.cond
  %59 = bitcast i32* %cindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #3
  %60 = load i32, i32* %ci, align 4, !tbaa !20
  %idxprom = sext i32 %60 to i64
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 63
  %arrayidx57 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx57, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i32 0, i32 1
  %63 = load i32, i32* %component_index, align 4, !tbaa !32
  store i32 %63, i32* %cindex, align 4, !tbaa !20
  %64 = load i32, i32* %cindex, align 4, !tbaa !20
  %idxprom58 = sext i32 %64 to i64
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 38
  %66 = load [64 x i32]*, [64 x i32]** %coef_bits, align 8, !tbaa !22
  %arrayidx59 = getelementptr inbounds [64 x i32], [64 x i32]* %66, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx59, i32 0, i64 0
  store i32* %arrayidx60, i32** %coef_bit_ptr, align 8, !tbaa !2
  %67 = load i32, i32* %is_DC_band, align 4, !tbaa !20
  %tobool61 = icmp ne i32 %67, 0
  br i1 %tobool61, label %if.end.77, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %68 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !2
  %arrayidx62 = getelementptr inbounds i32, i32* %68, i64 0
  %69 = load i32, i32* %arrayidx62, align 4, !tbaa !20
  %cmp63 = icmp slt i32 %69, 0
  br i1 %cmp63, label %if.then.65, label %if.end.77

if.then.65:                                       ; preds = %land.lhs.true
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8, !tbaa !28
  %msg_code67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 5
  store i32 111, i32* %msg_code67, align 4, !tbaa !29
  %72 = load i32, i32* %cindex, align 4, !tbaa !20
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !28
  %msg_parm69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 6
  %i70 = bitcast %union.anon* %msg_parm69 to [8 x i32]*
  %arrayidx71 = getelementptr inbounds [8 x i32], [8 x i32]* %i70, i32 0, i64 0
  store i32 %72, i32* %arrayidx71, align 4, !tbaa !20
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8, !tbaa !28
  %msg_parm73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 6
  %i74 = bitcast %union.anon* %msg_parm73 to [8 x i32]*
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* %i74, i32 0, i64 1
  store i32 0, i32* %arrayidx75, align 4, !tbaa !20
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err76, align 8, !tbaa !28
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 1
  %79 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !34
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %81 = bitcast %struct.jpeg_decompress_struct* %80 to %struct.jpeg_common_struct*
  call void %79(%struct.jpeg_common_struct* %81, i32 -1)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.65, %land.lhs.true, %for.body
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 68
  %83 = load i32, i32* %Ss78, align 4, !tbaa !23
  store i32 %83, i32* %coefi, align 4, !tbaa !20
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc, %if.end.77
  %84 = load i32, i32* %coefi, align 4, !tbaa !20
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 69
  %86 = load i32, i32* %Se80, align 4, !tbaa !24
  %cmp81 = icmp sle i32 %84, %86
  br i1 %cmp81, label %for.body.83, label %for.end

for.body.83:                                      ; preds = %for.cond.79
  %87 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #3
  %88 = load i32, i32* %coefi, align 4, !tbaa !20
  %idxprom84 = sext i32 %88 to i64
  %89 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !2
  %arrayidx85 = getelementptr inbounds i32, i32* %89, i64 %idxprom84
  %90 = load i32, i32* %arrayidx85, align 4, !tbaa !20
  %cmp86 = icmp slt i32 %90, 0
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.83
  br label %cond.end

cond.false:                                       ; preds = %for.body.83
  %91 = load i32, i32* %coefi, align 4, !tbaa !20
  %idxprom88 = sext i32 %91 to i64
  %92 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !2
  %arrayidx89 = getelementptr inbounds i32, i32* %92, i64 %idxprom88
  %93 = load i32, i32* %arrayidx89, align 4, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %93, %cond.false ]
  store i32 %cond, i32* %expected, align 4, !tbaa !20
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 70
  %95 = load i32, i32* %Ah90, align 4, !tbaa !26
  %96 = load i32, i32* %expected, align 4, !tbaa !20
  %cmp91 = icmp ne i32 %95, %96
  br i1 %cmp91, label %if.then.93, label %if.end.106

if.then.93:                                       ; preds = %cond.end
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err94, align 8, !tbaa !28
  %msg_code95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 5
  store i32 111, i32* %msg_code95, align 4, !tbaa !29
  %99 = load i32, i32* %cindex, align 4, !tbaa !20
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err96, align 8, !tbaa !28
  %msg_parm97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 6
  %i98 = bitcast %union.anon* %msg_parm97 to [8 x i32]*
  %arrayidx99 = getelementptr inbounds [8 x i32], [8 x i32]* %i98, i32 0, i64 0
  store i32 %99, i32* %arrayidx99, align 4, !tbaa !20
  %102 = load i32, i32* %coefi, align 4, !tbaa !20
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err100, align 8, !tbaa !28
  %msg_parm101 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 6
  %i102 = bitcast %union.anon* %msg_parm101 to [8 x i32]*
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* %i102, i32 0, i64 1
  store i32 %102, i32* %arrayidx103, align 4, !tbaa !20
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 0
  %106 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err104, align 8, !tbaa !28
  %emit_message105 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %106, i32 0, i32 1
  %107 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message105, align 8, !tbaa !34
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %109 = bitcast %struct.jpeg_decompress_struct* %108 to %struct.jpeg_common_struct*
  call void %107(%struct.jpeg_common_struct* %109, i32 -1)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.93, %cond.end
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 71
  %111 = load i32, i32* %Al107, align 4, !tbaa !27
  %112 = load i32, i32* %coefi, align 4, !tbaa !20
  %idxprom108 = sext i32 %112 to i64
  %113 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !2
  %arrayidx109 = getelementptr inbounds i32, i32* %113, i64 %idxprom108
  store i32 %111, i32* %arrayidx109, align 4, !tbaa !20
  %114 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %115 = load i32, i32* %coefi, align 4, !tbaa !20
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %coefi, align 4, !tbaa !20
  br label %for.cond.79

for.end:                                          ; preds = %for.cond.79
  %116 = bitcast i32* %cindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #3
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.end
  %117 = load i32, i32* %ci, align 4, !tbaa !20
  %inc111 = add nsw i32 %117, 1
  store i32 %inc111, i32* %ci, align 4, !tbaa !20
  br label %for.cond

for.end.112:                                      ; preds = %for.cond
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 70
  %119 = load i32, i32* %Ah113, align 4, !tbaa !26
  %cmp114 = icmp eq i32 %119, 0
  br i1 %cmp114, label %if.then.116, label %if.else.123

if.then.116:                                      ; preds = %for.end.112
  %120 = load i32, i32* %is_DC_band, align 4, !tbaa !20
  %tobool117 = icmp ne i32 %120, 0
  br i1 %tobool117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %if.then.116
  %121 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %121, i32 0, i32 0
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_DC_first, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8, !tbaa !35
  br label %if.end.122

if.else.119:                                      ; preds = %if.then.116
  %122 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %pub120 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %122, i32 0, i32 0
  %decode_mcu121 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub120, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_AC_first, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu121, align 8, !tbaa !35
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %if.end.132

if.else.123:                                      ; preds = %for.end.112
  %123 = load i32, i32* %is_DC_band, align 4, !tbaa !20
  %tobool124 = icmp ne i32 %123, 0
  br i1 %tobool124, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %if.else.123
  %124 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %pub126 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %124, i32 0, i32 0
  %decode_mcu127 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub126, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_DC_refine, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu127, align 8, !tbaa !35
  br label %if.end.131

if.else.128:                                      ; preds = %if.else.123
  %125 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %pub129 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %125, i32 0, i32 0
  %decode_mcu130 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub129, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_AC_refine, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu130, align 8, !tbaa !35
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.128, %if.then.125
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.122
  store i32 0, i32* %ci, align 4, !tbaa !20
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.206, %if.end.132
  %126 = load i32, i32* %ci, align 4, !tbaa !20
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 62
  %128 = load i32, i32* %comps_in_scan134, align 4, !tbaa !25
  %cmp135 = icmp slt i32 %126, %128
  br i1 %cmp135, label %for.body.137, label %for.end.208

for.body.137:                                     ; preds = %for.cond.133
  %129 = load i32, i32* %ci, align 4, !tbaa !20
  %idxprom138 = sext i32 %129 to i64
  %130 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info139 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %130, i32 0, i32 63
  %arrayidx140 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info139, i32 0, i64 %idxprom138
  %131 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx140, align 8, !tbaa !2
  store %struct.jpeg_component_info* %131, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %132 = load i32, i32* %is_DC_band, align 4, !tbaa !20
  %tobool141 = icmp ne i32 %132, 0
  br i1 %tobool141, label %if.then.142, label %if.else.173

if.then.142:                                      ; preds = %for.body.137
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah143 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 70
  %134 = load i32, i32* %Ah143, align 4, !tbaa !26
  %cmp144 = icmp eq i32 %134, 0
  br i1 %cmp144, label %if.then.146, label %if.end.172

if.then.146:                                      ; preds = %if.then.142
  %135 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %135, i32 0, i32 5
  %136 = load i32, i32* %dc_tbl_no, align 4, !tbaa !36
  store i32 %136, i32* %tbl, align 4, !tbaa !20
  %137 = load i32, i32* %tbl, align 4, !tbaa !20
  %cmp147 = icmp slt i32 %137, 0
  br i1 %cmp147, label %if.then.157, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %if.then.146
  %138 = load i32, i32* %tbl, align 4, !tbaa !20
  %cmp150 = icmp sge i32 %138, 4
  br i1 %cmp150, label %if.then.157, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.149
  %139 = load i32, i32* %tbl, align 4, !tbaa !20
  %idxprom153 = sext i32 %139 to i64
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %140, i32 0, i32 40
  %arrayidx154 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom153
  %141 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx154, align 8, !tbaa !2
  %cmp155 = icmp eq %struct.JHUFF_TBL* %141, null
  br i1 %cmp155, label %if.then.157, label %if.end.166

if.then.157:                                      ; preds = %lor.lhs.false.152, %lor.lhs.false.149, %if.then.146
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err158 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %142, i32 0, i32 0
  %143 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err158, align 8, !tbaa !28
  %msg_code159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %143, i32 0, i32 5
  store i32 49, i32* %msg_code159, align 4, !tbaa !29
  %144 = load i32, i32* %tbl, align 4, !tbaa !20
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err160 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %145, i32 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err160, align 8, !tbaa !28
  %msg_parm161 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 6
  %i162 = bitcast %union.anon* %msg_parm161 to [8 x i32]*
  %arrayidx163 = getelementptr inbounds [8 x i32], [8 x i32]* %i162, i32 0, i64 0
  store i32 %144, i32* %arrayidx163, align 4, !tbaa !20
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err164 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err164, align 8, !tbaa !28
  %error_exit165 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 0
  %149 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit165, align 8, !tbaa !31
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %151 = bitcast %struct.jpeg_decompress_struct* %150 to %struct.jpeg_common_struct*
  call void %149(%struct.jpeg_common_struct* %151)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.157, %lor.lhs.false.152
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %153 = load i32, i32* %tbl, align 4, !tbaa !20
  %idxprom167 = sext i32 %153 to i64
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs168 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %154, i32 0, i32 40
  %arrayidx169 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs168, i32 0, i64 %idxprom167
  %155 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx169, align 8, !tbaa !2
  %156 = load i32, i32* %tbl, align 4, !tbaa !20
  %idxprom170 = sext i32 %156 to i64
  %157 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %157, i32 0, i32 4
  %arrayidx171 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom170
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %152, %struct.JHUFF_TBL* %155, %struct.d_derived_tbl** %arrayidx171)
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.166, %if.then.142
  br label %if.end.203

if.else.173:                                      ; preds = %for.body.137
  %158 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %158, i32 0, i32 6
  %159 = load i32, i32* %ac_tbl_no, align 4, !tbaa !37
  store i32 %159, i32* %tbl, align 4, !tbaa !20
  %160 = load i32, i32* %tbl, align 4, !tbaa !20
  %cmp174 = icmp slt i32 %160, 0
  br i1 %cmp174, label %if.then.184, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %if.else.173
  %161 = load i32, i32* %tbl, align 4, !tbaa !20
  %cmp177 = icmp sge i32 %161, 4
  br i1 %cmp177, label %if.then.184, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %lor.lhs.false.176
  %162 = load i32, i32* %tbl, align 4, !tbaa !20
  %idxprom180 = sext i32 %162 to i64
  %163 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %163, i32 0, i32 41
  %arrayidx181 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom180
  %164 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx181, align 8, !tbaa !2
  %cmp182 = icmp eq %struct.JHUFF_TBL* %164, null
  br i1 %cmp182, label %if.then.184, label %if.end.193

if.then.184:                                      ; preds = %lor.lhs.false.179, %lor.lhs.false.176, %if.else.173
  %165 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %165, i32 0, i32 0
  %166 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err185, align 8, !tbaa !28
  %msg_code186 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %166, i32 0, i32 5
  store i32 49, i32* %msg_code186, align 4, !tbaa !29
  %167 = load i32, i32* %tbl, align 4, !tbaa !20
  %168 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %168, i32 0, i32 0
  %169 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err187, align 8, !tbaa !28
  %msg_parm188 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %169, i32 0, i32 6
  %i189 = bitcast %union.anon* %msg_parm188 to [8 x i32]*
  %arrayidx190 = getelementptr inbounds [8 x i32], [8 x i32]* %i189, i32 0, i64 0
  store i32 %167, i32* %arrayidx190, align 4, !tbaa !20
  %170 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err191 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %170, i32 0, i32 0
  %171 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err191, align 8, !tbaa !28
  %error_exit192 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %171, i32 0, i32 0
  %172 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit192, align 8, !tbaa !31
  %173 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %174 = bitcast %struct.jpeg_decompress_struct* %173 to %struct.jpeg_common_struct*
  call void %172(%struct.jpeg_common_struct* %174)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.184, %lor.lhs.false.179
  %175 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %176 = load i32, i32* %tbl, align 4, !tbaa !20
  %idxprom194 = sext i32 %176 to i64
  %177 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %177, i32 0, i32 41
  %arrayidx196 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs195, i32 0, i64 %idxprom194
  %178 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx196, align 8, !tbaa !2
  %179 = load i32, i32* %tbl, align 4, !tbaa !20
  %idxprom197 = sext i32 %179 to i64
  %180 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %derived_tbls198 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %180, i32 0, i32 4
  %arrayidx199 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls198, i32 0, i64 %idxprom197
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %175, %struct.JHUFF_TBL* %178, %struct.d_derived_tbl** %arrayidx199)
  %181 = load i32, i32* %tbl, align 4, !tbaa !20
  %idxprom200 = sext i32 %181 to i64
  %182 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %derived_tbls201 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %182, i32 0, i32 4
  %arrayidx202 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls201, i32 0, i64 %idxprom200
  %183 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx202, align 8, !tbaa !2
  %184 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %184, i32 0, i32 5
  store %struct.d_derived_tbl* %183, %struct.d_derived_tbl** %ac_derived_tbl, align 8, !tbaa !38
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.193, %if.end.172
  %185 = load i32, i32* %ci, align 4, !tbaa !20
  %idxprom204 = sext i32 %185 to i64
  %186 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %186, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom204
  store i32 0, i32* %arrayidx205, align 4, !tbaa !20
  br label %for.inc.206

for.inc.206:                                      ; preds = %if.end.203
  %187 = load i32, i32* %ci, align 4, !tbaa !20
  %inc207 = add nsw i32 %187, 1
  store i32 %inc207, i32* %ci, align 4, !tbaa !20
  br label %for.cond.133

for.end.208:                                      ; preds = %for.cond.133
  %188 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %188, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  store i32 0, i32* %bits_left, align 4, !tbaa !39
  %189 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate209 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %189, i32 0, i32 1
  %get_buffer = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate209, i32 0, i32 0
  store i64 0, i64* %get_buffer, align 8, !tbaa !40
  %190 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate210 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %190, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate210, i32 0, i32 2
  store i32 0, i32* %printed_eod, align 4, !tbaa !41
  %191 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved211 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %191, i32 0, i32 2
  %EOBRUN = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved211, i32 0, i32 0
  store i32 0, i32* %EOBRUN, align 4, !tbaa !42
  %192 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %192, i32 0, i32 49
  %193 = load i32, i32* %restart_interval, align 4, !tbaa !43
  %194 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %194, i32 0, i32 3
  store i32 %193, i32* %restarts_to_go, align 4, !tbaa !44
  %195 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #3
  %196 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #3
  %197 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #3
  %198 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #3
  %199 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #3
  %200 = bitcast i32* %bad to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #3
  %201 = bitcast i32* %is_DC_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #3
  %202 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu_DC_first(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %Al = alloca i32, align 4
  %s = alloca i32, align 4
  %r = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %state = alloca %struct.savable_state, align 4
  %tbl = alloca %struct.d_derived_tbl*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 79
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %3, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 71
  %6 = load i32, i32* %Al2, align 4, !tbaa !27
  store i32 %6, i32* %Al, align 4, !tbaa !20
  %7 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  %13 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %14) #3
  %15 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.start(i64 20, i8* %15) #3
  %16 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #3
  %17 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 49
  %19 = load i32, i32* %restart_interval, align 4, !tbaa !43
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %20 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %20, i32 0, i32 3
  %21 = load i32, i32* %restarts_to_go, align 4, !tbaa !44
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.then
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %22)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end:                                           ; preds = %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cinfo8 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %23, %struct.jpeg_decompress_struct** %cinfo8, align 8, !tbaa !45
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 5
  %25 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !47
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %25, i32 0, i32 0
  %26 = load i8*, i8** %next_input_byte, align 8, !tbaa !48
  %next_input_byte9 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %26, i8** %next_input_byte9, align 8, !tbaa !50
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 5
  %28 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src10, align 8, !tbaa !47
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %28, i32 0, i32 1
  %29 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !51
  %bytes_in_buffer11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %29, i64* %bytes_in_buffer11, align 8, !tbaa !52
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 72
  %31 = load i32, i32* %unread_marker, align 4, !tbaa !53
  %unread_marker12 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %31, i32* %unread_marker12, align 4, !tbaa !54
  %32 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %32, i32 0, i32 1
  %get_buffer13 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %33 = load i64, i64* %get_buffer13, align 8, !tbaa !40
  store i64 %33, i64* %get_buffer, align 8, !tbaa !55
  %34 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate14 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %34, i32 0, i32 1
  %bits_left15 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate14, i32 0, i32 1
  %35 = load i32, i32* %bits_left15, align 4, !tbaa !39
  store i32 %35, i32* %bits_left, align 4, !tbaa !20
  %36 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate16 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %36, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate16, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8, !tbaa !56
  %37 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %37, i32 0, i32 2
  %38 = bitcast %struct.savable_state* %state to i8*
  %39 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 20, i32 4, i1 false), !tbaa.struct !57
  store i32 0, i32* %blkn, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %40 = load i32, i32* %blkn, align 4, !tbaa !20
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 66
  %42 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !59
  %cmp17 = icmp slt i32 %40, %42
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %blkn, align 4, !tbaa !20
  %idxprom = sext i32 %43 to i64
  %44 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %44, i64 %idxprom
  %45 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  store [64 x i16]* %45, [64 x i16]** %block, align 8, !tbaa !2
  %46 = load i32, i32* %blkn, align 4, !tbaa !20
  %idxprom18 = sext i32 %46 to i64
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 67
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom18
  %48 = load i32, i32* %arrayidx19, align 4, !tbaa !20
  store i32 %48, i32* %ci, align 4, !tbaa !20
  %49 = load i32, i32* %ci, align 4, !tbaa !20
  %idxprom20 = sext i32 %49 to i64
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 63
  %arrayidx21 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom20
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx21, align 8, !tbaa !2
  store %struct.jpeg_component_info* %51, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 5
  %53 = load i32, i32* %dc_tbl_no, align 4, !tbaa !36
  %idxprom22 = sext i32 %53 to i64
  %54 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %54, i32 0, i32 4
  %arrayidx23 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom22
  %55 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx23, align 8, !tbaa !2
  store %struct.d_derived_tbl* %55, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %56 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #3
  %57 = bitcast i32* %look to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #3
  %58 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp24 = icmp slt i32 %58, 8
  br i1 %cmp24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %for.body
  %59 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %60 = load i32, i32* %bits_left, align 4, !tbaa !20
  %call26 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %59, i32 %60, i32 0)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.then.25
  %get_buffer30 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %61 = load i64, i64* %get_buffer30, align 8, !tbaa !60
  store i64 %61, i64* %get_buffer, align 8, !tbaa !55
  %bits_left31 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %62 = load i32, i32* %bits_left31, align 4, !tbaa !61
  store i32 %62, i32* %bits_left, align 4, !tbaa !20
  %63 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp32 = icmp slt i32 %63, 8
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  store i32 1, i32* %nb, align 4, !tbaa !20
  br label %label1

if.end.34:                                        ; preds = %if.end.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %for.body
  %64 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %65 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub = sub nsw i32 %65, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %64, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %look, align 4, !tbaa !20
  %66 = load i32, i32* %look, align 4, !tbaa !20
  %idxprom36 = sext i32 %66 to i64
  %67 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %67, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom36
  %68 = load i32, i32* %arrayidx37, align 4, !tbaa !20
  store i32 %68, i32* %nb, align 4, !tbaa !20
  %cmp38 = icmp ne i32 %68, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end.35
  %69 = load i32, i32* %nb, align 4, !tbaa !20
  %70 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub41 = sub nsw i32 %70, %69
  store i32 %sub41, i32* %bits_left, align 4, !tbaa !20
  %71 = load i32, i32* %look, align 4, !tbaa !20
  %idxprom42 = sext i32 %71 to i64
  %72 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %72, i32 0, i32 5
  %arrayidx43 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom42
  %73 = load i8, i8* %arrayidx43, align 1, !tbaa !58
  %conv44 = zext i8 %73 to i32
  store i32 %conv44, i32* %s, align 4, !tbaa !20
  br label %if.end.52

if.else:                                          ; preds = %if.end.35
  store i32 9, i32* %nb, align 4, !tbaa !20
  br label %label1

label1:                                           ; preds = %if.else, %if.then.33
  %74 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %75 = load i32, i32* %bits_left, align 4, !tbaa !20
  %76 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %77 = load i32, i32* %nb, align 4, !tbaa !20
  %call45 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %74, i32 %75, %struct.d_derived_tbl* %76, i32 %77)
  store i32 %call45, i32* %s, align 4, !tbaa !20
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %label1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %label1
  %get_buffer50 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %78 = load i64, i64* %get_buffer50, align 8, !tbaa !60
  store i64 %78, i64* %get_buffer, align 8, !tbaa !55
  %bits_left51 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %79 = load i32, i32* %bits_left51, align 4, !tbaa !61
  store i32 %79, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.49, %if.then.40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.48, %if.then.28
  %80 = bitcast i32* %look to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #3
  %81 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.102 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %82 = load i32, i32* %s, align 4, !tbaa !20
  %tobool54 = icmp ne i32 %82, 0
  br i1 %tobool54, label %if.then.55, label %if.end.78

if.then.55:                                       ; preds = %cleanup.cont
  %83 = load i32, i32* %bits_left, align 4, !tbaa !20
  %84 = load i32, i32* %s, align 4, !tbaa !20
  %cmp56 = icmp slt i32 %83, %84
  br i1 %cmp56, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.then.55
  %85 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %86 = load i32, i32* %bits_left, align 4, !tbaa !20
  %87 = load i32, i32* %s, align 4, !tbaa !20
  %call59 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %85, i32 %86, i32 %87)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.then.58
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end.62:                                        ; preds = %if.then.58
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %88 = load i64, i64* %get_buffer63, align 8, !tbaa !60
  store i64 %88, i64* %get_buffer, align 8, !tbaa !55
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %89 = load i32, i32* %bits_left64, align 4, !tbaa !61
  store i32 %89, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.62, %if.then.55
  %90 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %91 = load i32, i32* %s, align 4, !tbaa !20
  %92 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub66 = sub nsw i32 %92, %91
  store i32 %sub66, i32* %bits_left, align 4, !tbaa !20
  %sh_prom67 = zext i32 %sub66 to i64
  %shr68 = ashr i64 %90, %sh_prom67
  %conv69 = trunc i64 %shr68 to i32
  %93 = load i32, i32* %s, align 4, !tbaa !20
  %shl = shl i32 1, %93
  %sub70 = sub nsw i32 %shl, 1
  %and71 = and i32 %conv69, %sub70
  store i32 %and71, i32* %r, align 4, !tbaa !20
  %94 = load i32, i32* %r, align 4, !tbaa !20
  %95 = load i32, i32* %s, align 4, !tbaa !20
  %idxprom72 = sext i32 %95 to i64
  %arrayidx73 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_test, i32 0, i64 %idxprom72
  %96 = load i32, i32* %arrayidx73, align 4, !tbaa !20
  %cmp74 = icmp slt i32 %94, %96
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.65
  %97 = load i32, i32* %r, align 4, !tbaa !20
  %98 = load i32, i32* %s, align 4, !tbaa !20
  %idxprom76 = sext i32 %98 to i64
  %arrayidx77 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_offset, i32 0, i64 %idxprom76
  %99 = load i32, i32* %arrayidx77, align 4, !tbaa !20
  %add = add nsw i32 %97, %99
  br label %cond.end

cond.false:                                       ; preds = %if.end.65
  %100 = load i32, i32* %r, align 4, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %100, %cond.false ]
  store i32 %cond, i32* %s, align 4, !tbaa !20
  br label %if.end.78

if.end.78:                                        ; preds = %cond.end, %cleanup.cont
  %101 = load i32, i32* %ci, align 4, !tbaa !20
  %idxprom79 = sext i32 %101 to i64
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom79
  %102 = load i32, i32* %arrayidx80, align 4, !tbaa !20
  %103 = load i32, i32* %s, align 4, !tbaa !20
  %add81 = add nsw i32 %103, %102
  store i32 %add81, i32* %s, align 4, !tbaa !20
  %104 = load i32, i32* %s, align 4, !tbaa !20
  %105 = load i32, i32* %ci, align 4, !tbaa !20
  %idxprom82 = sext i32 %105 to i64
  %last_dc_val83 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val83, i32 0, i64 %idxprom82
  store i32 %104, i32* %arrayidx84, align 4, !tbaa !20
  %106 = load i32, i32* %s, align 4, !tbaa !20
  %107 = load i32, i32* %Al, align 4, !tbaa !20
  %shl85 = shl i32 %106, %107
  %conv86 = trunc i32 %shl85 to i16
  %108 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx87 = getelementptr inbounds [64 x i16], [64 x i16]* %108, i32 0, i64 0
  store i16 %conv86, i16* %arrayidx87, align 2, !tbaa !62
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %109 = load i32, i32* %blkn, align 4, !tbaa !20
  %inc = add nsw i32 %109, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %next_input_byte88 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %110 = load i8*, i8** %next_input_byte88, align 8, !tbaa !50
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 5
  %112 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src89, align 8, !tbaa !47
  %next_input_byte90 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %112, i32 0, i32 0
  store i8* %110, i8** %next_input_byte90, align 8, !tbaa !48
  %bytes_in_buffer91 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %113 = load i64, i64* %bytes_in_buffer91, align 8, !tbaa !52
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 5
  %115 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src92, align 8, !tbaa !47
  %bytes_in_buffer93 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %115, i32 0, i32 1
  store i64 %113, i64* %bytes_in_buffer93, align 8, !tbaa !51
  %unread_marker94 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %116 = load i32, i32* %unread_marker94, align 4, !tbaa !54
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 72
  store i32 %116, i32* %unread_marker95, align 4, !tbaa !53
  %118 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %119 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate96 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %119, i32 0, i32 1
  %get_buffer97 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate96, i32 0, i32 0
  store i64 %118, i64* %get_buffer97, align 8, !tbaa !40
  %120 = load i32, i32* %bits_left, align 4, !tbaa !20
  %121 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate98 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %121, i32 0, i32 1
  %bits_left99 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate98, i32 0, i32 1
  store i32 %120, i32* %bits_left99, align 4, !tbaa !39
  %122 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved100 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %122, i32 0, i32 2
  %123 = bitcast %struct.savable_state* %saved100 to i8*
  %124 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 20, i32 4, i1 false), !tbaa.struct !57
  %125 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go101 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %125, i32 0, i32 3
  %126 = load i32, i32* %restarts_to_go101, align 4, !tbaa !44
  %dec = add i32 %126, -1
  store i32 %dec, i32* %restarts_to_go101, align 4, !tbaa !44
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

cleanup.102:                                      ; preds = %for.end, %if.then.61, %cleanup, %if.then.5
  %127 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #3
  %128 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #3
  %129 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.end(i64 20, i8* %129) #3
  %130 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %130) #3
  %131 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #3
  %132 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #3
  %133 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #3
  %134 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #3
  %135 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #3
  %136 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #3
  %137 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #3
  %138 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #3
  %139 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #3
  %140 = load i32, i32* %retval
  ret i32 %140
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu_AC_first(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %EOBRUN = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %tbl = alloca %struct.d_derived_tbl*, align 8
  %cleanup.dest.slot = alloca i32
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 79
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %3, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 69
  %6 = load i32, i32* %Se2, align 4, !tbaa !24
  store i32 %6, i32* %Se, align 4, !tbaa !20
  %7 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 71
  %9 = load i32, i32* %Al3, align 4, !tbaa !27
  store i32 %9, i32* %Al, align 4, !tbaa !20
  %10 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %EOBRUN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #3
  %15 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %17) #3
  %18 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 49
  %20 = load i32, i32* %restart_interval, align 4, !tbaa !43
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %21 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %21, i32 0, i32 3
  %22 = load i32, i32* %restarts_to_go, align 4, !tbaa !44
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %23)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end:                                           ; preds = %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %24 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %24, i32 0, i32 2
  %EOBRUN9 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %25 = load i32, i32* %EOBRUN9, align 4, !tbaa !42
  store i32 %25, i32* %EOBRUN, align 4, !tbaa !20
  %26 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %cmp10 = icmp ugt i32 %26, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.8
  %27 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %dec = add i32 %27, -1
  store i32 %dec, i32* %EOBRUN, align 4, !tbaa !20
  br label %if.end.128

if.else:                                          ; preds = %if.end.8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cinfo12 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %28, %struct.jpeg_decompress_struct** %cinfo12, align 8, !tbaa !45
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 5
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !47
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 0
  %31 = load i8*, i8** %next_input_byte, align 8, !tbaa !48
  %next_input_byte13 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %31, i8** %next_input_byte13, align 8, !tbaa !50
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 5
  %33 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src14, align 8, !tbaa !47
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %33, i32 0, i32 1
  %34 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !51
  %bytes_in_buffer15 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %34, i64* %bytes_in_buffer15, align 8, !tbaa !52
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 72
  %36 = load i32, i32* %unread_marker, align 4, !tbaa !53
  %unread_marker16 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %36, i32* %unread_marker16, align 4, !tbaa !54
  %37 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %37, i32 0, i32 1
  %get_buffer17 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %38 = load i64, i64* %get_buffer17, align 8, !tbaa !40
  store i64 %38, i64* %get_buffer, align 8, !tbaa !55
  %39 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate18 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %39, i32 0, i32 1
  %bits_left19 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate18, i32 0, i32 1
  %40 = load i32, i32* %bits_left19, align 4, !tbaa !39
  store i32 %40, i32* %bits_left, align 4, !tbaa !20
  %41 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate20 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %41, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate20, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8, !tbaa !56
  %42 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %42, i64 0
  %43 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  store [64 x i16]* %43, [64 x i16]** %block, align 8, !tbaa !2
  %44 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %44, i32 0, i32 5
  %45 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %ac_derived_tbl, align 8, !tbaa !38
  store %struct.d_derived_tbl* %45, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 68
  %47 = load i32, i32* %Ss, align 4, !tbaa !23
  store i32 %47, i32* %k, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %48 = load i32, i32* %k, align 4, !tbaa !20
  %49 = load i32, i32* %Se, align 4, !tbaa !20
  %cmp21 = icmp sle i32 %48, %49
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #3
  %51 = bitcast i32* %look to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #3
  %52 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp22 = icmp slt i32 %52, 8
  br i1 %cmp22, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %for.body
  %53 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %54 = load i32, i32* %bits_left, align 4, !tbaa !20
  %call24 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %53, i32 %54, i32 0)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.23
  %get_buffer28 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %55 = load i64, i64* %get_buffer28, align 8, !tbaa !60
  store i64 %55, i64* %get_buffer, align 8, !tbaa !55
  %bits_left29 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %56 = load i32, i32* %bits_left29, align 4, !tbaa !61
  store i32 %56, i32* %bits_left, align 4, !tbaa !20
  %57 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp30 = icmp slt i32 %57, 8
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  store i32 1, i32* %nb, align 4, !tbaa !20
  br label %label2

if.end.32:                                        ; preds = %if.end.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body
  %58 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %59 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub = sub nsw i32 %59, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %58, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %look, align 4, !tbaa !20
  %60 = load i32, i32* %look, align 4, !tbaa !20
  %idxprom = sext i32 %60 to i64
  %61 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %61, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom
  %62 = load i32, i32* %arrayidx34, align 4, !tbaa !20
  store i32 %62, i32* %nb, align 4, !tbaa !20
  %cmp35 = icmp ne i32 %62, 0
  br i1 %cmp35, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %if.end.33
  %63 = load i32, i32* %nb, align 4, !tbaa !20
  %64 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub38 = sub nsw i32 %64, %63
  store i32 %sub38, i32* %bits_left, align 4, !tbaa !20
  %65 = load i32, i32* %look, align 4, !tbaa !20
  %idxprom39 = sext i32 %65 to i64
  %66 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %66, i32 0, i32 5
  %arrayidx40 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom39
  %67 = load i8, i8* %arrayidx40, align 1, !tbaa !58
  %conv41 = zext i8 %67 to i32
  store i32 %conv41, i32* %s, align 4, !tbaa !20
  br label %if.end.50

if.else.42:                                       ; preds = %if.end.33
  store i32 9, i32* %nb, align 4, !tbaa !20
  br label %label2

label2:                                           ; preds = %if.else.42, %if.then.31
  %68 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %69 = load i32, i32* %bits_left, align 4, !tbaa !20
  %70 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %71 = load i32, i32* %nb, align 4, !tbaa !20
  %call43 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %68, i32 %69, %struct.d_derived_tbl* %70, i32 %71)
  store i32 %call43, i32* %s, align 4, !tbaa !20
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %label2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %label2
  %get_buffer48 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %72 = load i64, i64* %get_buffer48, align 8, !tbaa !60
  store i64 %72, i64* %get_buffer, align 8, !tbaa !55
  %bits_left49 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %73 = load i32, i32* %bits_left49, align 4, !tbaa !61
  store i32 %73, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.47, %if.then.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.then.46, %if.then.26
  %74 = bitcast i32* %look to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #3
  %75 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.133 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %76 = load i32, i32* %s, align 4, !tbaa !20
  %shr52 = ashr i32 %76, 4
  store i32 %shr52, i32* %r, align 4, !tbaa !20
  %77 = load i32, i32* %s, align 4, !tbaa !20
  %and53 = and i32 %77, 15
  store i32 %and53, i32* %s, align 4, !tbaa !20
  %78 = load i32, i32* %s, align 4, !tbaa !20
  %tobool54 = icmp ne i32 %78, 0
  br i1 %tobool54, label %if.then.55, label %if.else.85

if.then.55:                                       ; preds = %cleanup.cont
  %79 = load i32, i32* %r, align 4, !tbaa !20
  %80 = load i32, i32* %k, align 4, !tbaa !20
  %add = add nsw i32 %80, %79
  store i32 %add, i32* %k, align 4, !tbaa !20
  %81 = load i32, i32* %bits_left, align 4, !tbaa !20
  %82 = load i32, i32* %s, align 4, !tbaa !20
  %cmp56 = icmp slt i32 %81, %82
  br i1 %cmp56, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.then.55
  %83 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %84 = load i32, i32* %bits_left, align 4, !tbaa !20
  %85 = load i32, i32* %s, align 4, !tbaa !20
  %call59 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %83, i32 %84, i32 %85)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.then.58
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end.62:                                        ; preds = %if.then.58
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %86 = load i64, i64* %get_buffer63, align 8, !tbaa !60
  store i64 %86, i64* %get_buffer, align 8, !tbaa !55
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %87 = load i32, i32* %bits_left64, align 4, !tbaa !61
  store i32 %87, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.62, %if.then.55
  %88 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %89 = load i32, i32* %s, align 4, !tbaa !20
  %90 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub66 = sub nsw i32 %90, %89
  store i32 %sub66, i32* %bits_left, align 4, !tbaa !20
  %sh_prom67 = zext i32 %sub66 to i64
  %shr68 = ashr i64 %88, %sh_prom67
  %conv69 = trunc i64 %shr68 to i32
  %91 = load i32, i32* %s, align 4, !tbaa !20
  %shl = shl i32 1, %91
  %sub70 = sub nsw i32 %shl, 1
  %and71 = and i32 %conv69, %sub70
  store i32 %and71, i32* %r, align 4, !tbaa !20
  %92 = load i32, i32* %r, align 4, !tbaa !20
  %93 = load i32, i32* %s, align 4, !tbaa !20
  %idxprom72 = sext i32 %93 to i64
  %arrayidx73 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_test, i32 0, i64 %idxprom72
  %94 = load i32, i32* %arrayidx73, align 4, !tbaa !20
  %cmp74 = icmp slt i32 %92, %94
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.65
  %95 = load i32, i32* %r, align 4, !tbaa !20
  %96 = load i32, i32* %s, align 4, !tbaa !20
  %idxprom76 = sext i32 %96 to i64
  %arrayidx77 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_offset, i32 0, i64 %idxprom76
  %97 = load i32, i32* %arrayidx77, align 4, !tbaa !20
  %add78 = add nsw i32 %95, %97
  br label %cond.end

cond.false:                                       ; preds = %if.end.65
  %98 = load i32, i32* %r, align 4, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add78, %cond.true ], [ %98, %cond.false ]
  store i32 %cond, i32* %s, align 4, !tbaa !20
  %99 = load i32, i32* %s, align 4, !tbaa !20
  %100 = load i32, i32* %Al, align 4, !tbaa !20
  %shl79 = shl i32 %99, %100
  %conv80 = trunc i32 %shl79 to i16
  %101 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom81 = sext i32 %101 to i64
  %arrayidx82 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom81
  %102 = load i32, i32* %arrayidx82, align 4, !tbaa !20
  %idxprom83 = sext i32 %102 to i64
  %103 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx84 = getelementptr inbounds [64 x i16], [64 x i16]* %103, i32 0, i64 %idxprom83
  store i16 %conv80, i16* %arrayidx84, align 2, !tbaa !62
  br label %if.end.115

if.else.85:                                       ; preds = %cleanup.cont
  %104 = load i32, i32* %r, align 4, !tbaa !20
  %cmp86 = icmp eq i32 %104, 15
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.else.85
  %105 = load i32, i32* %k, align 4, !tbaa !20
  %add89 = add nsw i32 %105, 15
  store i32 %add89, i32* %k, align 4, !tbaa !20
  br label %if.end.114

if.else.90:                                       ; preds = %if.else.85
  %106 = load i32, i32* %r, align 4, !tbaa !20
  %shl91 = shl i32 1, %106
  store i32 %shl91, i32* %EOBRUN, align 4, !tbaa !20
  %107 = load i32, i32* %r, align 4, !tbaa !20
  %tobool92 = icmp ne i32 %107, 0
  br i1 %tobool92, label %if.then.93, label %if.end.112

if.then.93:                                       ; preds = %if.else.90
  %108 = load i32, i32* %bits_left, align 4, !tbaa !20
  %109 = load i32, i32* %r, align 4, !tbaa !20
  %cmp94 = icmp slt i32 %108, %109
  br i1 %cmp94, label %if.then.96, label %if.end.103

if.then.96:                                       ; preds = %if.then.93
  %110 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %111 = load i32, i32* %bits_left, align 4, !tbaa !20
  %112 = load i32, i32* %r, align 4, !tbaa !20
  %call97 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %110, i32 %111, i32 %112)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.then.96
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end.100:                                       ; preds = %if.then.96
  %get_buffer101 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %113 = load i64, i64* %get_buffer101, align 8, !tbaa !60
  store i64 %113, i64* %get_buffer, align 8, !tbaa !55
  %bits_left102 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %114 = load i32, i32* %bits_left102, align 4, !tbaa !61
  store i32 %114, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.100, %if.then.93
  %115 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %116 = load i32, i32* %r, align 4, !tbaa !20
  %117 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub104 = sub nsw i32 %117, %116
  store i32 %sub104, i32* %bits_left, align 4, !tbaa !20
  %sh_prom105 = zext i32 %sub104 to i64
  %shr106 = ashr i64 %115, %sh_prom105
  %conv107 = trunc i64 %shr106 to i32
  %118 = load i32, i32* %r, align 4, !tbaa !20
  %shl108 = shl i32 1, %118
  %sub109 = sub nsw i32 %shl108, 1
  %and110 = and i32 %conv107, %sub109
  store i32 %and110, i32* %r, align 4, !tbaa !20
  %119 = load i32, i32* %r, align 4, !tbaa !20
  %120 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %add111 = add i32 %120, %119
  store i32 %add111, i32* %EOBRUN, align 4, !tbaa !20
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.103, %if.else.90
  %121 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %dec113 = add i32 %121, -1
  store i32 %dec113, i32* %EOBRUN, align 4, !tbaa !20
  br label %for.end

if.end.114:                                       ; preds = %if.then.88
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.115
  %122 = load i32, i32* %k, align 4, !tbaa !20
  %inc = add nsw i32 %122, 1
  store i32 %inc, i32* %k, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %if.end.112, %for.cond
  %next_input_byte116 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %123 = load i8*, i8** %next_input_byte116, align 8, !tbaa !50
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 5
  %125 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src117, align 8, !tbaa !47
  %next_input_byte118 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %125, i32 0, i32 0
  store i8* %123, i8** %next_input_byte118, align 8, !tbaa !48
  %bytes_in_buffer119 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %126 = load i64, i64* %bytes_in_buffer119, align 8, !tbaa !52
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src120 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 5
  %128 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src120, align 8, !tbaa !47
  %bytes_in_buffer121 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %128, i32 0, i32 1
  store i64 %126, i64* %bytes_in_buffer121, align 8, !tbaa !51
  %unread_marker122 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %129 = load i32, i32* %unread_marker122, align 4, !tbaa !54
  %130 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %130, i32 0, i32 72
  store i32 %129, i32* %unread_marker123, align 4, !tbaa !53
  %131 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %132 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate124 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %132, i32 0, i32 1
  %get_buffer125 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate124, i32 0, i32 0
  store i64 %131, i64* %get_buffer125, align 8, !tbaa !40
  %133 = load i32, i32* %bits_left, align 4, !tbaa !20
  %134 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate126 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %134, i32 0, i32 1
  %bits_left127 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate126, i32 0, i32 1
  store i32 %133, i32* %bits_left127, align 4, !tbaa !39
  br label %if.end.128

if.end.128:                                       ; preds = %for.end, %if.then.11
  %135 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %136 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved129 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %136, i32 0, i32 2
  %EOBRUN130 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved129, i32 0, i32 0
  store i32 %135, i32* %EOBRUN130, align 4, !tbaa !42
  %137 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go131 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %137, i32 0, i32 3
  %138 = load i32, i32* %restarts_to_go131, align 4, !tbaa !44
  %dec132 = add i32 %138, -1
  store i32 %dec132, i32* %restarts_to_go131, align 4, !tbaa !44
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

cleanup.133:                                      ; preds = %if.end.128, %if.then.99, %if.then.61, %cleanup, %if.then.6
  %139 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #3
  %140 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %140) #3
  %141 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #3
  %142 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #3
  %143 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #3
  %144 = bitcast i32* %EOBRUN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #3
  %145 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #3
  %146 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #3
  %147 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #3
  %148 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #3
  %149 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #3
  %150 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #3
  %151 = load i32, i32* %retval
  ret i32 %151
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu_DC_refine(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %p1 = alloca i32, align 4
  %blkn = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 79
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %3, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 71
  %6 = load i32, i32* %Al, align 4, !tbaa !27
  %shl = shl i32 1, %6
  store i32 %shl, i32* %p1, align 4, !tbaa !20
  %7 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %11) #3
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 49
  %13 = load i32, i32* %restart_interval, align 4, !tbaa !43
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %14 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %14, i32 0, i32 3
  %15 = load i32, i32* %restarts_to_go, align 4, !tbaa !44
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %16)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cinfo7 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %17, %struct.jpeg_decompress_struct** %cinfo7, align 8, !tbaa !45
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 5
  %19 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !47
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %19, i32 0, i32 0
  %20 = load i8*, i8** %next_input_byte, align 8, !tbaa !48
  %next_input_byte8 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %20, i8** %next_input_byte8, align 8, !tbaa !50
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 5
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src9, align 8, !tbaa !47
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 1
  %23 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !51
  %bytes_in_buffer10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %23, i64* %bytes_in_buffer10, align 8, !tbaa !52
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 72
  %25 = load i32, i32* %unread_marker, align 4, !tbaa !53
  %unread_marker11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %25, i32* %unread_marker11, align 4, !tbaa !54
  %26 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %26, i32 0, i32 1
  %get_buffer12 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %27 = load i64, i64* %get_buffer12, align 8, !tbaa !40
  store i64 %27, i64* %get_buffer, align 8, !tbaa !55
  %28 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate13 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %28, i32 0, i32 1
  %bits_left14 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate13, i32 0, i32 1
  %29 = load i32, i32* %bits_left14, align 4, !tbaa !39
  store i32 %29, i32* %bits_left, align 4, !tbaa !20
  %30 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate15 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %30, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate15, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8, !tbaa !56
  store i32 0, i32* %blkn, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %31 = load i32, i32* %blkn, align 4, !tbaa !20
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 66
  %33 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !59
  %cmp16 = icmp slt i32 %31, %33
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %blkn, align 4, !tbaa !20
  %idxprom = sext i32 %34 to i64
  %35 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %35, i64 %idxprom
  %36 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  store [64 x i16]* %36, [64 x i16]** %block, align 8, !tbaa !2
  %37 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp17 = icmp slt i32 %37, 1
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %for.body
  %38 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %39 = load i32, i32* %bits_left, align 4, !tbaa !20
  %call19 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %38, i32 %39, i32 1)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.18
  %get_buffer23 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %40 = load i64, i64* %get_buffer23, align 8, !tbaa !60
  store i64 %40, i64* %get_buffer, align 8, !tbaa !55
  %bits_left24 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %41 = load i32, i32* %bits_left24, align 4, !tbaa !61
  store i32 %41, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.22, %for.body
  %42 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %43 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub = sub nsw i32 %43, 1
  store i32 %sub, i32* %bits_left, align 4, !tbaa !20
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %42, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 1
  %tobool26 = icmp ne i32 %and, 0
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end.25
  %44 = load i32, i32* %p1, align 4, !tbaa !20
  %45 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %45, i32 0, i64 0
  %46 = load i16, i16* %arrayidx28, align 2, !tbaa !62
  %conv29 = sext i16 %46 to i32
  %or = or i32 %conv29, %44
  %conv30 = trunc i32 %or to i16
  store i16 %conv30, i16* %arrayidx28, align 2, !tbaa !62
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %47 = load i32, i32* %blkn, align 4, !tbaa !20
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %next_input_byte32 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %48 = load i8*, i8** %next_input_byte32, align 8, !tbaa !50
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 5
  %50 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src33, align 8, !tbaa !47
  %next_input_byte34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %50, i32 0, i32 0
  store i8* %48, i8** %next_input_byte34, align 8, !tbaa !48
  %bytes_in_buffer35 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %51 = load i64, i64* %bytes_in_buffer35, align 8, !tbaa !52
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 5
  %53 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src36, align 8, !tbaa !47
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %53, i32 0, i32 1
  store i64 %51, i64* %bytes_in_buffer37, align 8, !tbaa !51
  %unread_marker38 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %54 = load i32, i32* %unread_marker38, align 4, !tbaa !54
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 72
  store i32 %54, i32* %unread_marker39, align 4, !tbaa !53
  %56 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %57 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate40 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %57, i32 0, i32 1
  %get_buffer41 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate40, i32 0, i32 0
  store i64 %56, i64* %get_buffer41, align 8, !tbaa !40
  %58 = load i32, i32* %bits_left, align 4, !tbaa !20
  %59 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate42 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %59, i32 0, i32 1
  %bits_left43 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate42, i32 0, i32 1
  store i32 %58, i32* %bits_left43, align 4, !tbaa !39
  %60 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go44 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %60, i32 0, i32 3
  %61 = load i32, i32* %restarts_to_go44, align 4, !tbaa !44
  %dec = add i32 %61, -1
  store i32 %dec, i32* %restarts_to_go44, align 4, !tbaa !44
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.21, %if.then.4
  %62 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %62) #3
  %63 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #3
  %64 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #3
  %65 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #3
  %66 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #3
  %67 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #3
  %68 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #3
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu_AC_refine(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %Se = alloca i32, align 4
  %p1 = alloca i32, align 4
  %m1 = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %EOBRUN = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %thiscoef = alloca i16*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %tbl = alloca %struct.d_derived_tbl*, align 8
  %num_newnz = alloca i32, align 4
  %newnz_pos = alloca [64 x i32], align 16
  %cleanup.dest.slot = alloca i32
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 79
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %3, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 69
  %6 = load i32, i32* %Se2, align 4, !tbaa !24
  store i32 %6, i32* %Se, align 4, !tbaa !20
  %7 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 71
  %9 = load i32, i32* %Al, align 4, !tbaa !27
  %shl = shl i32 1, %9
  store i32 %shl, i32* %p1, align 4, !tbaa !20
  %10 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 71
  %12 = load i32, i32* %Al3, align 4, !tbaa !27
  %shl4 = shl i32 -1, %12
  store i32 %shl4, i32* %m1, align 4, !tbaa !20
  %13 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #3
  %15 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = bitcast i32* %EOBRUN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #3
  %17 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = bitcast i16** %thiscoef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #3
  %21 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %21) #3
  %22 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #3
  %23 = bitcast i32* %num_newnz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = bitcast [64 x i32]* %newnz_pos to i8*
  call void @llvm.lifetime.start(i64 256, i8* %24) #3
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 49
  %26 = load i32, i32* %restart_interval, align 4, !tbaa !43
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %27 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %27, i32 0, i32 3
  %28 = load i32, i32* %restarts_to_go, align 4, !tbaa !44
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.then
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %29)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.251

if.end:                                           ; preds = %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cinfo10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %30, %struct.jpeg_decompress_struct** %cinfo10, align 8, !tbaa !45
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 5
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !47
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 0
  %33 = load i8*, i8** %next_input_byte, align 8, !tbaa !48
  %next_input_byte11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %33, i8** %next_input_byte11, align 8, !tbaa !50
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 5
  %35 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src12, align 8, !tbaa !47
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %35, i32 0, i32 1
  %36 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !51
  %bytes_in_buffer13 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %36, i64* %bytes_in_buffer13, align 8, !tbaa !52
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 72
  %38 = load i32, i32* %unread_marker, align 4, !tbaa !53
  %unread_marker14 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %38, i32* %unread_marker14, align 4, !tbaa !54
  %39 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %39, i32 0, i32 1
  %get_buffer15 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %40 = load i64, i64* %get_buffer15, align 8, !tbaa !40
  store i64 %40, i64* %get_buffer, align 8, !tbaa !55
  %41 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate16 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %41, i32 0, i32 1
  %bits_left17 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate16, i32 0, i32 1
  %42 = load i32, i32* %bits_left17, align 4, !tbaa !39
  store i32 %42, i32* %bits_left, align 4, !tbaa !20
  %43 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate18 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %43, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate18, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8, !tbaa !56
  %44 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %44, i32 0, i32 2
  %EOBRUN19 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %45 = load i32, i32* %EOBRUN19, align 4, !tbaa !42
  store i32 %45, i32* %EOBRUN, align 4, !tbaa !20
  %46 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %46, i64 0
  %47 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  store [64 x i16]* %47, [64 x i16]** %block, align 8, !tbaa !2
  %48 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %48, i32 0, i32 5
  %49 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %ac_derived_tbl, align 8, !tbaa !38
  store %struct.d_derived_tbl* %49, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  store i32 0, i32* %num_newnz, align 4, !tbaa !20
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 68
  %51 = load i32, i32* %Ss, align 4, !tbaa !23
  store i32 %51, i32* %k, align 4, !tbaa !20
  %52 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %cmp20 = icmp eq i32 %52, 0
  br i1 %cmp20, label %if.then.21, label %if.end.169

if.then.21:                                       ; preds = %if.end.9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %53 = load i32, i32* %k, align 4, !tbaa !20
  %54 = load i32, i32* %Se, align 4, !tbaa !20
  %cmp22 = icmp sle i32 %53, %54
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #3
  %56 = bitcast i32* %look to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #3
  %57 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp23 = icmp slt i32 %57, 8
  br i1 %cmp23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %for.body
  %58 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %59 = load i32, i32* %bits_left, align 4, !tbaa !20
  %call25 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %58, i32 %59, i32 0)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.24
  %get_buffer29 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %60 = load i64, i64* %get_buffer29, align 8, !tbaa !60
  store i64 %60, i64* %get_buffer, align 8, !tbaa !55
  %bits_left30 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %61 = load i32, i32* %bits_left30, align 4, !tbaa !61
  store i32 %61, i32* %bits_left, align 4, !tbaa !20
  %62 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp31 = icmp slt i32 %62, 8
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  store i32 1, i32* %nb, align 4, !tbaa !20
  br label %label3

if.end.33:                                        ; preds = %if.end.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %for.body
  %63 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %64 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub = sub nsw i32 %64, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %63, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %look, align 4, !tbaa !20
  %65 = load i32, i32* %look, align 4, !tbaa !20
  %idxprom = sext i32 %65 to i64
  %66 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %66, i32 0, i32 4
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom
  %67 = load i32, i32* %arrayidx35, align 4, !tbaa !20
  store i32 %67, i32* %nb, align 4, !tbaa !20
  %cmp36 = icmp ne i32 %67, 0
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.34
  %68 = load i32, i32* %nb, align 4, !tbaa !20
  %69 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub39 = sub nsw i32 %69, %68
  store i32 %sub39, i32* %bits_left, align 4, !tbaa !20
  %70 = load i32, i32* %look, align 4, !tbaa !20
  %idxprom40 = sext i32 %70 to i64
  %71 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %71, i32 0, i32 5
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom40
  %72 = load i8, i8* %arrayidx41, align 1, !tbaa !58
  %conv42 = zext i8 %72 to i32
  store i32 %conv42, i32* %s, align 4, !tbaa !20
  br label %if.end.50

if.else:                                          ; preds = %if.end.34
  store i32 9, i32* %nb, align 4, !tbaa !20
  br label %label3

label3:                                           ; preds = %if.else, %if.then.32
  %73 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %74 = load i32, i32* %bits_left, align 4, !tbaa !20
  %75 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !2
  %76 = load i32, i32* %nb, align 4, !tbaa !20
  %call43 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %73, i32 %74, %struct.d_derived_tbl* %75, i32 %76)
  store i32 %call43, i32* %s, align 4, !tbaa !20
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %label3
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %label3
  %get_buffer48 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %77 = load i64, i64* %get_buffer48, align 8, !tbaa !60
  store i64 %77, i64* %get_buffer, align 8, !tbaa !55
  %bits_left49 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %78 = load i32, i32* %bits_left49, align 4, !tbaa !61
  store i32 %78, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.47, %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.46, %if.then.27, %if.end.50
  %79 = bitcast i32* %look to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.251 [
    i32 0, label %cleanup.cont
    i32 5, label %undoit
  ]

cleanup.cont:                                     ; preds = %cleanup
  %81 = load i32, i32* %s, align 4, !tbaa !20
  %shr52 = ashr i32 %81, 4
  store i32 %shr52, i32* %r, align 4, !tbaa !20
  %82 = load i32, i32* %s, align 4, !tbaa !20
  %and53 = and i32 %82, 15
  store i32 %and53, i32* %s, align 4, !tbaa !20
  %83 = load i32, i32* %s, align 4, !tbaa !20
  %tobool54 = icmp ne i32 %83, 0
  br i1 %tobool54, label %if.then.55, label %if.else.80

if.then.55:                                       ; preds = %cleanup.cont
  %84 = load i32, i32* %s, align 4, !tbaa !20
  %cmp56 = icmp ne i32 %84, 1
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.55
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 0
  %86 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !28
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %86, i32 0, i32 5
  store i32 114, i32* %msg_code, align 4, !tbaa !29
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !28
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 1
  %89 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !34
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %91 = bitcast %struct.jpeg_decompress_struct* %90 to %struct.jpeg_common_struct*
  call void %89(%struct.jpeg_common_struct* %91, i32 -1)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.then.55
  %92 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp61 = icmp slt i32 %92, 1
  br i1 %cmp61, label %if.then.63, label %if.end.70

if.then.63:                                       ; preds = %if.end.60
  %93 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %94 = load i32, i32* %bits_left, align 4, !tbaa !20
  %call64 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %93, i32 %94, i32 1)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %if.then.63
  br label %undoit

if.end.67:                                        ; preds = %if.then.63
  %get_buffer68 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %95 = load i64, i64* %get_buffer68, align 8, !tbaa !60
  store i64 %95, i64* %get_buffer, align 8, !tbaa !55
  %bits_left69 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %96 = load i32, i32* %bits_left69, align 4, !tbaa !61
  store i32 %96, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.67, %if.end.60
  %97 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %98 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub71 = sub nsw i32 %98, 1
  store i32 %sub71, i32* %bits_left, align 4, !tbaa !20
  %sh_prom72 = zext i32 %sub71 to i64
  %shr73 = ashr i64 %97, %sh_prom72
  %conv74 = trunc i64 %shr73 to i32
  %and75 = and i32 %conv74, 1
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.end.70
  %99 = load i32, i32* %p1, align 4, !tbaa !20
  store i32 %99, i32* %s, align 4, !tbaa !20
  br label %if.end.79

if.else.78:                                       ; preds = %if.end.70
  %100 = load i32, i32* %m1, align 4, !tbaa !20
  store i32 %100, i32* %s, align 4, !tbaa !20
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  br label %if.end.106

if.else.80:                                       ; preds = %cleanup.cont
  %101 = load i32, i32* %r, align 4, !tbaa !20
  %cmp81 = icmp ne i32 %101, 15
  br i1 %cmp81, label %if.then.83, label %if.end.105

if.then.83:                                       ; preds = %if.else.80
  %102 = load i32, i32* %r, align 4, !tbaa !20
  %shl84 = shl i32 1, %102
  store i32 %shl84, i32* %EOBRUN, align 4, !tbaa !20
  %103 = load i32, i32* %r, align 4, !tbaa !20
  %tobool85 = icmp ne i32 %103, 0
  br i1 %tobool85, label %if.then.86, label %if.end.104

if.then.86:                                       ; preds = %if.then.83
  %104 = load i32, i32* %bits_left, align 4, !tbaa !20
  %105 = load i32, i32* %r, align 4, !tbaa !20
  %cmp87 = icmp slt i32 %104, %105
  br i1 %cmp87, label %if.then.89, label %if.end.96

if.then.89:                                       ; preds = %if.then.86
  %106 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %107 = load i32, i32* %bits_left, align 4, !tbaa !20
  %108 = load i32, i32* %r, align 4, !tbaa !20
  %call90 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %106, i32 %107, i32 %108)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %if.then.89
  br label %undoit

if.end.93:                                        ; preds = %if.then.89
  %get_buffer94 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %109 = load i64, i64* %get_buffer94, align 8, !tbaa !60
  store i64 %109, i64* %get_buffer, align 8, !tbaa !55
  %bits_left95 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %110 = load i32, i32* %bits_left95, align 4, !tbaa !61
  store i32 %110, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.93, %if.then.86
  %111 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %112 = load i32, i32* %r, align 4, !tbaa !20
  %113 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub97 = sub nsw i32 %113, %112
  store i32 %sub97, i32* %bits_left, align 4, !tbaa !20
  %sh_prom98 = zext i32 %sub97 to i64
  %shr99 = ashr i64 %111, %sh_prom98
  %conv100 = trunc i64 %shr99 to i32
  %114 = load i32, i32* %r, align 4, !tbaa !20
  %shl101 = shl i32 1, %114
  %sub102 = sub nsw i32 %shl101, 1
  %and103 = and i32 %conv100, %sub102
  store i32 %and103, i32* %r, align 4, !tbaa !20
  %115 = load i32, i32* %r, align 4, !tbaa !20
  %116 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %add = add i32 %116, %115
  store i32 %add, i32* %EOBRUN, align 4, !tbaa !20
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.96, %if.then.83
  br label %for.end

if.end.105:                                       ; preds = %if.else.80
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.79
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.106
  %117 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %117, i32 0, i32 0
  %118 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom107 = sext i32 %118 to i64
  %arrayidx108 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom107
  %119 = load i32, i32* %arrayidx108, align 4, !tbaa !20
  %idx.ext = sext i32 %119 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  store i16* %add.ptr, i16** %thiscoef, align 8, !tbaa !2
  %120 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %121 = load i16, i16* %120, align 2, !tbaa !62
  %conv109 = sext i16 %121 to i32
  %cmp110 = icmp ne i32 %conv109, 0
  br i1 %cmp110, label %if.then.112, label %if.else.149

if.then.112:                                      ; preds = %do.body
  %122 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp113 = icmp slt i32 %122, 1
  br i1 %cmp113, label %if.then.115, label %if.end.122

if.then.115:                                      ; preds = %if.then.112
  %123 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %124 = load i32, i32* %bits_left, align 4, !tbaa !20
  %call116 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %123, i32 %124, i32 1)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %if.then.115
  br label %undoit

if.end.119:                                       ; preds = %if.then.115
  %get_buffer120 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %125 = load i64, i64* %get_buffer120, align 8, !tbaa !60
  store i64 %125, i64* %get_buffer, align 8, !tbaa !55
  %bits_left121 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %126 = load i32, i32* %bits_left121, align 4, !tbaa !61
  store i32 %126, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.119, %if.then.112
  %127 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %128 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub123 = sub nsw i32 %128, 1
  store i32 %sub123, i32* %bits_left, align 4, !tbaa !20
  %sh_prom124 = zext i32 %sub123 to i64
  %shr125 = ashr i64 %127, %sh_prom124
  %conv126 = trunc i64 %shr125 to i32
  %and127 = and i32 %conv126, 1
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.148

if.then.129:                                      ; preds = %if.end.122
  %129 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %130 = load i16, i16* %129, align 2, !tbaa !62
  %conv130 = sext i16 %130 to i32
  %131 = load i32, i32* %p1, align 4, !tbaa !20
  %and131 = and i32 %conv130, %131
  %cmp132 = icmp eq i32 %and131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.147

if.then.134:                                      ; preds = %if.then.129
  %132 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %133 = load i16, i16* %132, align 2, !tbaa !62
  %conv135 = sext i16 %133 to i32
  %cmp136 = icmp sge i32 %conv135, 0
  br i1 %cmp136, label %if.then.138, label %if.else.142

if.then.138:                                      ; preds = %if.then.134
  %134 = load i32, i32* %p1, align 4, !tbaa !20
  %135 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %136 = load i16, i16* %135, align 2, !tbaa !62
  %conv139 = sext i16 %136 to i32
  %add140 = add nsw i32 %conv139, %134
  %conv141 = trunc i32 %add140 to i16
  store i16 %conv141, i16* %135, align 2, !tbaa !62
  br label %if.end.146

if.else.142:                                      ; preds = %if.then.134
  %137 = load i32, i32* %m1, align 4, !tbaa !20
  %138 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %139 = load i16, i16* %138, align 2, !tbaa !62
  %conv143 = sext i16 %139 to i32
  %add144 = add nsw i32 %conv143, %137
  %conv145 = trunc i32 %add144 to i16
  store i16 %conv145, i16* %138, align 2, !tbaa !62
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.142, %if.then.138
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.129
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.122
  br label %if.end.154

if.else.149:                                      ; preds = %do.body
  %140 = load i32, i32* %r, align 4, !tbaa !20
  %dec = add nsw i32 %140, -1
  store i32 %dec, i32* %r, align 4, !tbaa !20
  %cmp150 = icmp slt i32 %dec, 0
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.else.149
  br label %do.end

if.end.153:                                       ; preds = %if.else.149
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.148
  %141 = load i32, i32* %k, align 4, !tbaa !20
  %inc = add nsw i32 %141, 1
  store i32 %inc, i32* %k, align 4, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %if.end.154
  %142 = load i32, i32* %k, align 4, !tbaa !20
  %143 = load i32, i32* %Se, align 4, !tbaa !20
  %cmp155 = icmp sle i32 %142, %143
  br i1 %cmp155, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.152
  %144 = load i32, i32* %s, align 4, !tbaa !20
  %tobool157 = icmp ne i32 %144, 0
  br i1 %tobool157, label %if.then.158, label %if.end.167

if.then.158:                                      ; preds = %do.end
  %145 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #3
  %146 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom159 = sext i32 %146 to i64
  %arrayidx160 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom159
  %147 = load i32, i32* %arrayidx160, align 4, !tbaa !20
  store i32 %147, i32* %pos, align 4, !tbaa !20
  %148 = load i32, i32* %s, align 4, !tbaa !20
  %conv161 = trunc i32 %148 to i16
  %149 = load i32, i32* %pos, align 4, !tbaa !20
  %idxprom162 = sext i32 %149 to i64
  %150 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx163 = getelementptr inbounds [64 x i16], [64 x i16]* %150, i32 0, i64 %idxprom162
  store i16 %conv161, i16* %arrayidx163, align 2, !tbaa !62
  %151 = load i32, i32* %pos, align 4, !tbaa !20
  %152 = load i32, i32* %num_newnz, align 4, !tbaa !20
  %inc164 = add nsw i32 %152, 1
  store i32 %inc164, i32* %num_newnz, align 4, !tbaa !20
  %idxprom165 = sext i32 %152 to i64
  %arrayidx166 = getelementptr inbounds [64 x i32], [64 x i32]* %newnz_pos, i32 0, i64 %idxprom165
  store i32 %151, i32* %arrayidx166, align 4, !tbaa !20
  %153 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #3
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.158, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.167
  %154 = load i32, i32* %k, align 4, !tbaa !20
  %inc168 = add nsw i32 %154, 1
  store i32 %inc168, i32* %k, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %if.end.104, %for.cond
  br label %if.end.169

if.end.169:                                       ; preds = %for.end, %if.end.9
  %155 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %cmp170 = icmp ugt i32 %155, 0
  br i1 %cmp170, label %if.then.172, label %if.end.227

if.then.172:                                      ; preds = %if.end.169
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.223, %if.then.172
  %156 = load i32, i32* %k, align 4, !tbaa !20
  %157 = load i32, i32* %Se, align 4, !tbaa !20
  %cmp174 = icmp sle i32 %156, %157
  br i1 %cmp174, label %for.body.176, label %for.end.225

for.body.176:                                     ; preds = %for.cond.173
  %158 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arraydecay177 = getelementptr inbounds [64 x i16], [64 x i16]* %158, i32 0, i32 0
  %159 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom178 = sext i32 %159 to i64
  %arrayidx179 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom178
  %160 = load i32, i32* %arrayidx179, align 4, !tbaa !20
  %idx.ext180 = sext i32 %160 to i64
  %add.ptr181 = getelementptr inbounds i16, i16* %arraydecay177, i64 %idx.ext180
  store i16* %add.ptr181, i16** %thiscoef, align 8, !tbaa !2
  %161 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %162 = load i16, i16* %161, align 2, !tbaa !62
  %conv182 = sext i16 %162 to i32
  %cmp183 = icmp ne i32 %conv182, 0
  br i1 %cmp183, label %if.then.185, label %if.end.222

if.then.185:                                      ; preds = %for.body.176
  %163 = load i32, i32* %bits_left, align 4, !tbaa !20
  %cmp186 = icmp slt i32 %163, 1
  br i1 %cmp186, label %if.then.188, label %if.end.195

if.then.188:                                      ; preds = %if.then.185
  %164 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %165 = load i32, i32* %bits_left, align 4, !tbaa !20
  %call189 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %164, i32 %165, i32 1)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.end.192, label %if.then.191

if.then.191:                                      ; preds = %if.then.188
  br label %undoit

if.end.192:                                       ; preds = %if.then.188
  %get_buffer193 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %166 = load i64, i64* %get_buffer193, align 8, !tbaa !60
  store i64 %166, i64* %get_buffer, align 8, !tbaa !55
  %bits_left194 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %167 = load i32, i32* %bits_left194, align 4, !tbaa !61
  store i32 %167, i32* %bits_left, align 4, !tbaa !20
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.192, %if.then.185
  %168 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %169 = load i32, i32* %bits_left, align 4, !tbaa !20
  %sub196 = sub nsw i32 %169, 1
  store i32 %sub196, i32* %bits_left, align 4, !tbaa !20
  %sh_prom197 = zext i32 %sub196 to i64
  %shr198 = ashr i64 %168, %sh_prom197
  %conv199 = trunc i64 %shr198 to i32
  %and200 = and i32 %conv199, 1
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then.202, label %if.end.221

if.then.202:                                      ; preds = %if.end.195
  %170 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %171 = load i16, i16* %170, align 2, !tbaa !62
  %conv203 = sext i16 %171 to i32
  %172 = load i32, i32* %p1, align 4, !tbaa !20
  %and204 = and i32 %conv203, %172
  %cmp205 = icmp eq i32 %and204, 0
  br i1 %cmp205, label %if.then.207, label %if.end.220

if.then.207:                                      ; preds = %if.then.202
  %173 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %174 = load i16, i16* %173, align 2, !tbaa !62
  %conv208 = sext i16 %174 to i32
  %cmp209 = icmp sge i32 %conv208, 0
  br i1 %cmp209, label %if.then.211, label %if.else.215

if.then.211:                                      ; preds = %if.then.207
  %175 = load i32, i32* %p1, align 4, !tbaa !20
  %176 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %177 = load i16, i16* %176, align 2, !tbaa !62
  %conv212 = sext i16 %177 to i32
  %add213 = add nsw i32 %conv212, %175
  %conv214 = trunc i32 %add213 to i16
  store i16 %conv214, i16* %176, align 2, !tbaa !62
  br label %if.end.219

if.else.215:                                      ; preds = %if.then.207
  %178 = load i32, i32* %m1, align 4, !tbaa !20
  %179 = load i16*, i16** %thiscoef, align 8, !tbaa !2
  %180 = load i16, i16* %179, align 2, !tbaa !62
  %conv216 = sext i16 %180 to i32
  %add217 = add nsw i32 %conv216, %178
  %conv218 = trunc i32 %add217 to i16
  store i16 %conv218, i16* %179, align 2, !tbaa !62
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.215, %if.then.211
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.202
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.195
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %for.body.176
  br label %for.inc.223

for.inc.223:                                      ; preds = %if.end.222
  %181 = load i32, i32* %k, align 4, !tbaa !20
  %inc224 = add nsw i32 %181, 1
  store i32 %inc224, i32* %k, align 4, !tbaa !20
  br label %for.cond.173

for.end.225:                                      ; preds = %for.cond.173
  %182 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %dec226 = add i32 %182, -1
  store i32 %dec226, i32* %EOBRUN, align 4, !tbaa !20
  br label %if.end.227

if.end.227:                                       ; preds = %for.end.225, %if.end.169
  %next_input_byte228 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %183 = load i8*, i8** %next_input_byte228, align 8, !tbaa !50
  %184 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src229 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %184, i32 0, i32 5
  %185 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src229, align 8, !tbaa !47
  %next_input_byte230 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %185, i32 0, i32 0
  store i8* %183, i8** %next_input_byte230, align 8, !tbaa !48
  %bytes_in_buffer231 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %186 = load i64, i64* %bytes_in_buffer231, align 8, !tbaa !52
  %187 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src232 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %187, i32 0, i32 5
  %188 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src232, align 8, !tbaa !47
  %bytes_in_buffer233 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %188, i32 0, i32 1
  store i64 %186, i64* %bytes_in_buffer233, align 8, !tbaa !51
  %unread_marker234 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %189 = load i32, i32* %unread_marker234, align 4, !tbaa !54
  %190 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker235 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %190, i32 0, i32 72
  store i32 %189, i32* %unread_marker235, align 4, !tbaa !53
  %191 = load i64, i64* %get_buffer, align 8, !tbaa !55
  %192 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate236 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %192, i32 0, i32 1
  %get_buffer237 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate236, i32 0, i32 0
  store i64 %191, i64* %get_buffer237, align 8, !tbaa !40
  %193 = load i32, i32* %bits_left, align 4, !tbaa !20
  %194 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate238 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %194, i32 0, i32 1
  %bits_left239 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate238, i32 0, i32 1
  store i32 %193, i32* %bits_left239, align 4, !tbaa !39
  %195 = load i32, i32* %EOBRUN, align 4, !tbaa !20
  %196 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved240 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %196, i32 0, i32 2
  %EOBRUN241 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved240, i32 0, i32 0
  store i32 %195, i32* %EOBRUN241, align 4, !tbaa !42
  %197 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go242 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %197, i32 0, i32 3
  %198 = load i32, i32* %restarts_to_go242, align 4, !tbaa !44
  %dec243 = add i32 %198, -1
  store i32 %dec243, i32* %restarts_to_go242, align 4, !tbaa !44
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.251

undoit:                                           ; preds = %cleanup, %if.then.191, %if.then.118, %if.then.92, %if.then.66
  br label %while.cond

while.cond:                                       ; preds = %while.body, %undoit
  %199 = load i32, i32* %num_newnz, align 4, !tbaa !20
  %cmp244 = icmp sgt i32 %199, 0
  br i1 %cmp244, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %200 = load i32, i32* %num_newnz, align 4, !tbaa !20
  %dec246 = add nsw i32 %200, -1
  store i32 %dec246, i32* %num_newnz, align 4, !tbaa !20
  %idxprom247 = sext i32 %dec246 to i64
  %arrayidx248 = getelementptr inbounds [64 x i32], [64 x i32]* %newnz_pos, i32 0, i64 %idxprom247
  %201 = load i32, i32* %arrayidx248, align 4, !tbaa !20
  %idxprom249 = sext i32 %201 to i64
  %202 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx250 = getelementptr inbounds [64 x i16], [64 x i16]* %202, i32 0, i64 %idxprom249
  store i16 0, i16* %arrayidx250, align 2, !tbaa !62
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.251

cleanup.251:                                      ; preds = %while.end, %if.end.227, %cleanup, %if.then.7
  %203 = bitcast [64 x i32]* %newnz_pos to i8*
  call void @llvm.lifetime.end(i64 256, i8* %203) #3
  %204 = bitcast i32* %num_newnz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #3
  %205 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #3
  %206 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %206) #3
  %207 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #3
  %208 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #3
  %209 = bitcast i16** %thiscoef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #3
  %210 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #3
  %211 = bitcast i32* %EOBRUN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #3
  %212 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #3
  %213 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #3
  %214 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #3
  %215 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #3
  %216 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #3
  %217 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #3
  %218 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #3
  %219 = load i32, i32* %retval
  ret i32 %219
}

declare void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct*, %struct.JHUFF_TBL*, %struct.d_derived_tbl**) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_restart(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 79
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %3, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %5, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  %6 = load i32, i32* %bits_left, align 4, !tbaa !39
  %div = sdiv i32 %6, 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 78
  %8 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !63
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %8, i32 0, i32 8
  %9 = load i32, i32* %discarded_bytes, align 4, !tbaa !64
  %add = add i32 %9, %div
  store i32 %add, i32* %discarded_bytes, align 4, !tbaa !64
  %10 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate2 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %10, i32 0, i32 1
  %bits_left3 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate2, i32 0, i32 1
  store i32 0, i32* %bits_left3, align 4, !tbaa !39
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 78
  %12 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker4, align 8, !tbaa !63
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %12, i32 0, i32 2
  %13 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %read_restart_marker, align 8, !tbaa !66
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 %13(%struct.jpeg_decompress_struct* %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %ci, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %ci, align 4, !tbaa !20
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 62
  %17 = load i32, i32* %comps_in_scan, align 4, !tbaa !25
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %ci, align 4, !tbaa !20
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %19, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %ci, align 4, !tbaa !20
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved5 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %21, i32 0, i32 2
  %EOBRUN = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved5, i32 0, i32 0
  store i32 0, i32* %EOBRUN, align 4, !tbaa !42
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 49
  %23 = load i32, i32* %restart_interval, align 4, !tbaa !43
  %24 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %24, i32 0, i32 3
  store i32 %23, i32* %restarts_to_go, align 4, !tbaa !44
  %25 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate6 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %25, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate6, i32 0, i32 2
  store i32 0, i32* %printed_eod, align 4, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %26 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #3
  %27 = bitcast %struct.phuff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #3
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind argmemonly
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state*, i64, i32, i32) #2

declare i32 @jpeg_huff_decode(%struct.bitread_working_state*, i64, i32, %struct.d_derived_tbl*, i32) #2

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
!14 = !{!7, !3, i64 576}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !18, i64 16, !19, i64 32, !8, i64 52, !4, i64 56, !3, i64 88}
!17 = !{!"jpeg_entropy_decoder", !3, i64 0, !3, i64 8}
!18 = !{!"", !13, i64 0, !8, i64 8, !8, i64 12}
!19 = !{!"", !8, i64 0, !4, i64 4}
!20 = !{!8, !8, i64 0}
!21 = !{!7, !8, i64 48}
!22 = !{!7, !3, i64 184}
!23 = !{!7, !8, i64 508}
!24 = !{!7, !8, i64 512}
!25 = !{!7, !8, i64 416}
!26 = !{!7, !8, i64 516}
!27 = !{!7, !8, i64 520}
!28 = !{!7, !3, i64 0}
!29 = !{!30, !8, i64 40}
!30 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!31 = !{!30, !3, i64 0}
!32 = !{!33, !8, i64 4}
!33 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!34 = !{!30, !3, i64 8}
!35 = !{!16, !3, i64 8}
!36 = !{!33, !8, i64 20}
!37 = !{!33, !8, i64 24}
!38 = !{!16, !3, i64 88}
!39 = !{!16, !8, i64 24}
!40 = !{!16, !13, i64 16}
!41 = !{!16, !8, i64 28}
!42 = !{!16, !8, i64 32}
!43 = !{!7, !8, i64 360}
!44 = !{!16, !8, i64 52}
!45 = !{!46, !3, i64 40}
!46 = !{!"", !3, i64 0, !13, i64 8, !8, i64 16, !13, i64 24, !8, i64 32, !3, i64 40, !3, i64 48}
!47 = !{!7, !3, i64 32}
!48 = !{!49, !3, i64 0}
!49 = !{!"jpeg_source_mgr", !3, i64 0, !13, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48}
!50 = !{!46, !3, i64 0}
!51 = !{!49, !13, i64 8}
!52 = !{!46, !13, i64 8}
!53 = !{!7, !8, i64 524}
!54 = !{!46, !8, i64 16}
!55 = !{!13, !13, i64 0}
!56 = !{!46, !3, i64 48}
!57 = !{i64 0, i64 4, !20, i64 4, i64 16, !58}
!58 = !{!4, !4, i64 0}
!59 = !{!7, !8, i64 464}
!60 = !{!46, !13, i64 24}
!61 = !{!46, !8, i64 32}
!62 = !{!10, !10, i64 0}
!63 = !{!7, !3, i64 568}
!64 = !{!65, !8, i64 172}
!65 = !{!"jpeg_marker_reader", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !4, i64 32, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172}
!66 = !{!65, !3, i64 16}
