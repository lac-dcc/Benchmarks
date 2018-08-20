; ModuleID = 'jddctmgr.c'
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
%struct.my_idct_controller = type { %struct.jpeg_inverse_dct, [10 x i32] }

@start_pass.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 5.411961e-01, double 0x3FD1A855DE72AB5D], align 16

; Function Attrs: nounwind ssp uwtable
define void @jinit_inverse_dct(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %idct = alloca %struct.my_idct_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_idct_controller** %idct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #5
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 128)
  %8 = bitcast i8* %call to %struct.my_idct_controller*
  store %struct.my_idct_controller* %8, %struct.my_idct_controller** %idct, align 8, !tbaa !2
  %9 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !2
  %10 = bitcast %struct.my_idct_controller* %9 to %struct.jpeg_inverse_dct*
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %idct1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 80
  store %struct.jpeg_inverse_dct* %10, %struct.jpeg_inverse_dct** %idct1, align 8, !tbaa !14
  %12 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %12, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8, !tbaa !15
  store i32 0, i32* %ci, align 4, !tbaa !18
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 43
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !19
  store %struct.jpeg_component_info* %14, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %ci, align 4, !tbaa !18
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 8
  %17 = load i32, i32* %num_components, align 4, !tbaa !20
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem3, align 8, !tbaa !6
  %alloc_small4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i32 0, i32 0
  %20 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small4, align 8, !tbaa !11
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  %call5 = call i8* %20(%struct.jpeg_common_struct* %22, i32 1, i64 256)
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 20
  store i8* %call5, i8** %dct_table, align 8, !tbaa !21
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dct_table6 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 20
  %25 = load i8*, i8** %dct_table6, align 8, !tbaa !21
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dct_table7 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 20
  %27 = load i8*, i8** %dct_table7, align 8, !tbaa !21
  %28 = call i64 @llvm.objectsize.i64.p0i8(i8* %27, i1 false)
  %call8 = call i8* @__memset_chk(i8* %25, i32 0, i64 256, i64 %28) #5
  %29 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !2
  %cur_method = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %30, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %cur_method, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #5
  %34 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #5
  %35 = bitcast %struct.my_idct_controller** %idct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #5
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %idct = alloca %struct.my_idct_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %method = alloca i32, align 4
  %method_ptr = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %ismtbl = alloca i32*, align 8
  %ifmtbl = alloca i32*, align 8
  %fmtbl = alloca float*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_idct_controller** %idct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %idct1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 80
  %2 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_inverse_dct* %2 to %struct.my_idct_controller*
  store %struct.my_idct_controller* %3, %struct.my_idct_controller** %idct, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #5
  %6 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #5
  %7 = bitcast i32* %method to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #5
  store i32 0, i32* %method, align 4, !tbaa !18
  %8 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #5
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* null, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !2
  %9 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #5
  store i32 0, i32* %ci, align 4, !tbaa !18
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 43
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !19
  store %struct.jpeg_component_info* %11, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %entry
  %12 = load i32, i32* %ci, align 4, !tbaa !18
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 8
  %14 = load i32, i32* %num_components, align 4, !tbaa !20
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 9
  %16 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !23
  switch i32 %16, label %sw.default.9 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 8, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %for.body
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_1x1, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !2
  store i32 0, i32* %method, align 4, !tbaa !18
  br label %sw.epilog.17

sw.bb.2:                                          ; preds = %for.body
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_2x2, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !2
  store i32 0, i32* %method, align 4, !tbaa !18
  br label %sw.epilog.17

sw.bb.3:                                          ; preds = %for.body
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_4x4, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !2
  store i32 0, i32* %method, align 4, !tbaa !18
  br label %sw.epilog.17

sw.bb.4:                                          ; preds = %for.body
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 16
  %18 = load i32, i32* %dct_method, align 4, !tbaa !24
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb.5
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.7
  ]

sw.bb.5:                                          ; preds = %sw.bb.4
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_islow, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !2
  store i32 0, i32* %method, align 4, !tbaa !18
  br label %sw.epilog

sw.bb.6:                                          ; preds = %sw.bb.4
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_ifast, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !2
  store i32 1, i32* %method, align 4, !tbaa !18
  br label %sw.epilog

sw.bb.7:                                          ; preds = %sw.bb.4
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_float, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !2
  store i32 2, i32* %method, align 4, !tbaa !18
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !25
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 47, i32* %msg_code, align 4, !tbaa !26
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !25
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !28
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb.5
  br label %sw.epilog.17

sw.default.9:                                     ; preds = %for.body
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !25
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 5
  store i32 6, i32* %msg_code11, align 4, !tbaa !26
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 9
  %29 = load i32, i32* %DCT_scaled_size12, align 4, !tbaa !23
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !25
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 %29, i32* %arrayidx, align 4, !tbaa !18
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !25
  %error_exit16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %34 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit16, align 8, !tbaa !28
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* %36)
  br label %sw.epilog.17

sw.epilog.17:                                     ; preds = %sw.default.9, %sw.epilog, %sw.bb.3, %sw.bb.2, %sw.bb
  %37 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !2
  %38 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %39, i32 0, i32 0
  %inverse_DCT = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %pub, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT, i32 0, i64 %idxprom
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %37, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx18, align 8, !tbaa !2
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 12
  %41 = load i32, i32* %component_needed, align 4, !tbaa !29
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog.17
  %42 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom19 = sext i32 %42 to i64
  %43 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !2
  %cur_method = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %43, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %cur_method, i32 0, i64 %idxprom19
  %44 = load i32, i32* %arrayidx20, align 4, !tbaa !18
  %45 = load i32, i32* %method, align 4, !tbaa !18
  %cmp21 = icmp eq i32 %44, %45
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog.17
  br label %for.inc.91

if.end:                                           ; preds = %lor.lhs.false
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 19
  %47 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8, !tbaa !30
  store %struct.JQUANT_TBL* %47, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %48 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %cmp22 = icmp eq %struct.JQUANT_TBL* %48, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  br label %for.inc.91

if.end.24:                                        ; preds = %if.end
  %49 = load i32, i32* %method, align 4, !tbaa !18
  %50 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom25 = sext i32 %50 to i64
  %51 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !2
  %cur_method26 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %51, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %cur_method26, i32 0, i64 %idxprom25
  store i32 %49, i32* %arrayidx27, align 4, !tbaa !18
  %52 = load i32, i32* %method, align 4, !tbaa !18
  switch i32 %52, label %sw.default.85 [
    i32 0, label %sw.bb.28
    i32 1, label %sw.bb.36
    i32 2, label %sw.bb.55
  ]

sw.bb.28:                                         ; preds = %if.end.24
  %53 = bitcast i32** %ismtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #5
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 20
  %55 = load i8*, i8** %dct_table, align 8, !tbaa !21
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %ismtbl, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %sw.bb.28
  %57 = load i32, i32* %i, align 4, !tbaa !18
  %cmp30 = icmp slt i32 %57, 64
  br i1 %cmp30, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.29
  %58 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom32 = sext i32 %58 to i64
  %59 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %59, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom32
  %60 = load i16, i16* %arrayidx33, align 2, !tbaa !31
  %conv = zext i16 %60 to i32
  %61 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom34 = sext i32 %61 to i64
  %62 = load i32*, i32** %ismtbl, align 8, !tbaa !2
  %arrayidx35 = getelementptr inbounds i32, i32* %62, i64 %idxprom34
  store i32 %conv, i32* %arrayidx35, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %63 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  %64 = bitcast i32** %ismtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #5
  br label %sw.epilog.90

sw.bb.36:                                         ; preds = %if.end.24
  %65 = bitcast i32** %ifmtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #5
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dct_table37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 20
  %67 = load i8*, i8** %dct_table37, align 8, !tbaa !21
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** %ifmtbl, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.52, %sw.bb.36
  %69 = load i32, i32* %i, align 4, !tbaa !18
  %cmp39 = icmp slt i32 %69, 64
  br i1 %cmp39, label %for.body.41, label %for.end.54

for.body.41:                                      ; preds = %for.cond.38
  %70 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom42 = sext i32 %70 to i64
  %71 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %quantval43 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %71, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval43, i32 0, i64 %idxprom42
  %72 = load i16, i16* %arrayidx44, align 2, !tbaa !31
  %conv45 = zext i16 %72 to i64
  %73 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom46 = sext i32 %73 to i64
  %arrayidx47 = getelementptr inbounds [64 x i16], [64 x i16]* @start_pass.aanscales, i32 0, i64 %idxprom46
  %74 = load i16, i16* %arrayidx47, align 2, !tbaa !31
  %conv48 = sext i16 %74 to i64
  %mul = mul nsw i64 %conv45, %conv48
  %add = add nsw i64 %mul, 2048
  %shr = ashr i64 %add, 12
  %conv49 = trunc i64 %shr to i32
  %75 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom50 = sext i32 %75 to i64
  %76 = load i32*, i32** %ifmtbl, align 8, !tbaa !2
  %arrayidx51 = getelementptr inbounds i32, i32* %76, i64 %idxprom50
  store i32 %conv49, i32* %arrayidx51, align 4, !tbaa !18
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.41
  %77 = load i32, i32* %i, align 4, !tbaa !18
  %inc53 = add nsw i32 %77, 1
  store i32 %inc53, i32* %i, align 4, !tbaa !18
  br label %for.cond.38

for.end.54:                                       ; preds = %for.cond.38
  %78 = bitcast i32** %ifmtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #5
  br label %sw.epilog.90

sw.bb.55:                                         ; preds = %if.end.24
  %79 = bitcast float** %fmtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #5
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dct_table56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 20
  %81 = load i8*, i8** %dct_table56, align 8, !tbaa !21
  %82 = bitcast i8* %81 to float*
  store float* %82, float** %fmtbl, align 8, !tbaa !2
  %83 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #5
  %84 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #5
  store i32 0, i32* %i, align 4, !tbaa !18
  store i32 0, i32* %row, align 4, !tbaa !18
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.82, %sw.bb.55
  %85 = load i32, i32* %row, align 4, !tbaa !18
  %cmp58 = icmp slt i32 %85, 8
  br i1 %cmp58, label %for.body.60, label %for.end.84

for.body.60:                                      ; preds = %for.cond.57
  store i32 0, i32* %col, align 4, !tbaa !18
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.79, %for.body.60
  %86 = load i32, i32* %col, align 4, !tbaa !18
  %cmp62 = icmp slt i32 %86, 8
  br i1 %cmp62, label %for.body.64, label %for.end.81

for.body.64:                                      ; preds = %for.cond.61
  %87 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom65 = sext i32 %87 to i64
  %88 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %quantval66 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %88, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval66, i32 0, i64 %idxprom65
  %89 = load i16, i16* %arrayidx67, align 2, !tbaa !31
  %conv68 = uitofp i16 %89 to double
  %90 = load i32, i32* %row, align 4, !tbaa !18
  %idxprom69 = sext i32 %90 to i64
  %arrayidx70 = getelementptr inbounds [8 x double], [8 x double]* @start_pass.aanscalefactor, i32 0, i64 %idxprom69
  %91 = load double, double* %arrayidx70, align 8, !tbaa !32
  %mul71 = fmul double %conv68, %91
  %92 = load i32, i32* %col, align 4, !tbaa !18
  %idxprom72 = sext i32 %92 to i64
  %arrayidx73 = getelementptr inbounds [8 x double], [8 x double]* @start_pass.aanscalefactor, i32 0, i64 %idxprom72
  %93 = load double, double* %arrayidx73, align 8, !tbaa !32
  %mul74 = fmul double %mul71, %93
  %conv75 = fptrunc double %mul74 to float
  %94 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom76 = sext i32 %94 to i64
  %95 = load float*, float** %fmtbl, align 8, !tbaa !2
  %arrayidx77 = getelementptr inbounds float, float* %95, i64 %idxprom76
  store float %conv75, float* %arrayidx77, align 4, !tbaa !33
  %96 = load i32, i32* %i, align 4, !tbaa !18
  %inc78 = add nsw i32 %96, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !18
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.64
  %97 = load i32, i32* %col, align 4, !tbaa !18
  %inc80 = add nsw i32 %97, 1
  store i32 %inc80, i32* %col, align 4, !tbaa !18
  br label %for.cond.61

for.end.81:                                       ; preds = %for.cond.61
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.81
  %98 = load i32, i32* %row, align 4, !tbaa !18
  %inc83 = add nsw i32 %98, 1
  store i32 %inc83, i32* %row, align 4, !tbaa !18
  br label %for.cond.57

for.end.84:                                       ; preds = %for.cond.57
  %99 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #5
  %100 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #5
  %101 = bitcast float** %fmtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #5
  br label %sw.epilog.90

sw.default.85:                                    ; preds = %if.end.24
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 0
  %103 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err86, align 8, !tbaa !25
  %msg_code87 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %103, i32 0, i32 5
  store i32 47, i32* %msg_code87, align 4, !tbaa !26
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err88, align 8, !tbaa !25
  %error_exit89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i32 0, i32 0
  %106 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit89, align 8, !tbaa !28
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %108 = bitcast %struct.jpeg_decompress_struct* %107 to %struct.jpeg_common_struct*
  call void %106(%struct.jpeg_common_struct* %108)
  br label %sw.epilog.90

sw.epilog.90:                                     ; preds = %sw.default.85, %for.end.84, %for.end.54, %for.end
  br label %for.inc.91

for.inc.91:                                       ; preds = %sw.epilog.90, %if.then.23, %if.then
  %109 = load i32, i32* %ci, align 4, !tbaa !18
  %inc92 = add nsw i32 %109, 1
  store i32 %inc92, i32* %ci, align 4, !tbaa !18
  %110 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %110, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  %111 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #5
  %112 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #5
  %113 = bitcast i32* %method to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #5
  %114 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #5
  %115 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #5
  %116 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #5
  %117 = bitcast %struct.my_idct_controller** %idct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #5
  ret void
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jpeg_idct_1x1(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #4

declare void @jpeg_idct_2x2(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #4

declare void @jpeg_idct_4x4(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #4

declare void @jpeg_idct_islow(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #4

declare void @jpeg_idct_ifast(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #4

declare void @jpeg_idct_float(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

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
!14 = !{!7, !3, i64 584}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !4, i64 88}
!17 = !{!"jpeg_inverse_dct", !3, i64 0, !4, i64 8}
!18 = !{!8, !8, i64 0}
!19 = !{!7, !3, i64 296}
!20 = !{!7, !8, i64 48}
!21 = !{!22, !3, i64 88}
!22 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!23 = !{!22, !8, i64 36}
!24 = !{!7, !4, i64 88}
!25 = !{!7, !3, i64 0}
!26 = !{!27, !8, i64 40}
!27 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!28 = !{!27, !3, i64 0}
!29 = !{!22, !8, i64 48}
!30 = !{!22, !3, i64 80}
!31 = !{!10, !10, i64 0}
!32 = !{!9, !9, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !4, i64 0}
